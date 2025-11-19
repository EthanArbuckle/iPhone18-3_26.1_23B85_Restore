@interface IMDaemonCoreBridgeImpl
+ (BOOL)hasFinishedAssetDownloadSync;
+ (BOOL)isBackwardCompatibilityForItem:(id)a3 parentChatID:(id)a4;
+ (BOOL)isExpectedChatIDForItem:(id)a3 chatID:(id)a4;
+ (BOOL)isRecoverablyDeletedMessageGUID:(id)a3;
+ (BOOL)registerGuid:(id)a3 forLocalURL:(id)a4;
+ (BOOL)storeAttachmentWithTransfer:(id)a3 withChatGUID:(id)a4;
+ (id)ckRecordWithT1Info:(id)a3;
+ (id)ckRecordWithT2Info:(id)a3;
+ (id)ckRecordWithT3Info:(id)a3;
+ (id)createMessageItemWithRecordRef:(_IMDMessageRecordStruct *)a3 handle:(id)a4;
+ (id)fileTransferForGUID:(id)a3;
+ (id)fileTransferWithGUID:(id)a3;
+ (id)primaryAccountCountryCode;
+ (void)addItem:(id)a3 toParentChatID:(id)a4 updatedLastMessageCount:(unint64_t)a5;
+ (void)addParentChatID:(id)a3 toChat:(id)a4 service:(id)a5;
+ (void)addTransfer:(id)a3 forGUID:(id)a4;
+ (void)generatePreviewForTransfer:(id)a3;
+ (void)handleMessageUpdateWithCKRecord:(id)a3;
+ (void)moveMessagePartForGUID:(id)a3 deleteDate:(id)a4 partBody:(id)a5;
+ (void)reloadDatabase;
+ (void)removeTransferFromBackup:(id)a3;
+ (void)setSortIDForItem:(id)a3 parentChatID:(id)a4;
+ (void)storeAttachmentWithTransfer:(id)a3 withMessageGUID:(id)a4;
+ (void)storeAttachmentsForMessage:(id)a3;
+ (void)updateChatUsingSyncData:(id)a3;
+ (void)updateStamp;
+ (void)updateTemporaryTransferGUIDsIfNeeded:(id)a3;
+ (void)updateTransfer:(id)a3;
@end

@implementation IMDaemonCoreBridgeImpl

+ (void)updateChatUsingSyncData:(id)a3
{
  v3 = a3;
  v4 = +[IMDChatRegistry sharedInstance];
  [v4 updateChatUsingSyncData:v3];
}

+ (BOOL)isBackwardCompatibilityForItem:(id)a3 parentChatID:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v9 = +[IMDChatRegistry sharedInstance];
  v7 = [v5 service];
  v8 = [v9 _lookupChatUsingParentChatID:v6 service:v7];

  objc_opt_class();
  LOBYTE(v9) = 0;
  if ((objc_opt_isKindOfClass() & 1) != 0 && v8)
  {
    v10 = v5;
    v11 = +[IMDBackwardCompatibilityMessageIdentifier sharedIdentifier];
    LODWORD(v9) = [v11 isIgnorableBackwardCompatibilityMessage:v10 inChat:v8];
    if (v9)
    {
      v12 = IMLogHandleForCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = [v10 guid];
        v16 = 138412290;
        v17 = v13;
        _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "Message %@ is an ignorable backward compatibility message, ignoring.", &v16, 0xCu);
      }
    }
  }

  v14 = *MEMORY[0x277D85DE8];
  return v9;
}

+ (BOOL)isExpectedChatIDForItem:(id)a3 chatID:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if ([v6 length])
  {
    v7 = +[IMDMessageStore sharedInstance];
    v8 = [v5 guid];
    v9 = [v7 chatsForMessageGUID:v8];

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v10 = v9;
    v11 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v11)
    {
      v12 = *v21;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v21 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v14 = *(*(&v20 + 1) + 8 * i);
          v15 = [v5 service];
          v16 = [v14 cloudKitChatIDForServiceName:v15];
          v17 = [v6 isEqualToString:v16];

          if (v17)
          {
            LOBYTE(v11) = 1;
            goto LABEL_12;
          }
        }

        v11 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v11;
}

+ (void)setSortIDForItem:(id)a3 parentChatID:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[IMDChatRegistry sharedInstance];
  v8 = [v6 service];
  v10 = [v7 _lookupChatUsingParentChatID:v5 service:v8];

  v9 = +[IMDChatRegistry sharedInstance];
  [v9 _setSortIDOnIncomingMessage:v6 forChat:v10];
}

+ (void)addItem:(id)a3 toParentChatID:(id)a4 updatedLastMessageCount:(unint64_t)a5
{
  v15 = a3;
  v8 = a4;
  v9 = +[IMDMessageStore sharedInstance];
  v10 = [v15 guid];
  v11 = [v9 chatForMessageGUID:v10];

  if (v11)
  {
    v12 = [v15 service];
    [a1 addParentChatID:v8 toChat:v11 service:v12];
  }

  else
  {
    v13 = +[IMDChatRegistry sharedInstance];
    v14 = [v15 service];
    v11 = [v13 _lookupChatUsingParentChatID:v8 service:v14];

    if (!v11)
    {
      goto LABEL_6;
    }

    v12 = +[IMDChatRegistry sharedInstance];
    [v12 _addItemToParentChatIfNotLocationItem:v15 parentChat:v11 updatedLastMessageCount:a5 reason:1001];
  }

LABEL_6:
}

+ (void)addParentChatID:(id)a3 toChat:(id)a4 service:(id)a5
{
  v15 = a3;
  v7 = a4;
  v8 = a5;
  v9 = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  v10 = [v9 isMissingMessagesEnabled];

  if (v10 && [v7 style] == 43)
  {
    v11 = IMChatLookupDomainForServiceName();
    if (v11)
    {
      v12 = [v7 identifiersForDomain:v11];
      v13 = [v12 containsObject:v15];

      if ((v13 & 1) == 0)
      {
        [v7 assignIdentifier:v15 forDomain:v11 isHistoricalIdentifier:1];
        [v7 setCloudKitSyncState:0];
        v14 = +[IMDChatStore sharedInstance];
        [v14 storeChat:v7];
      }
    }
  }
}

+ (void)removeTransferFromBackup:(id)a3
{
  v3 = a3;
  v4 = +[IMDCKAttachmentSyncController sharedInstance];
  [v4 _removeTransferFromiCloudBackupWithGuid:v3];
}

+ (void)updateTemporaryTransferGUIDsIfNeeded:(id)a3
{
  v3 = a3;
  v4 = +[IMDAttachmentStore sharedInstance];
  [v4 updateTemporaryTransferGUIDsOnMessageIfNeeded:v3];
}

+ (id)fileTransferWithGUID:(id)a3
{
  v3 = a3;
  v4 = +[IMDAttachmentStore sharedInstance];
  v5 = [v4 attachmentWithGUID:v3];

  return v5;
}

+ (void)storeAttachmentWithTransfer:(id)a3 withMessageGUID:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[IMDAttachmentStore sharedInstance];
  [v7 storeAttachment:v6 associateWithMessageWithGUID:v5];
}

+ (BOOL)storeAttachmentWithTransfer:(id)a3 withChatGUID:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[IMDAttachmentStore sharedInstance];
  v8 = [v7 storeAttachment:v6 associateWithMessageWithGUID:0 chatGUID:v5 storeAtExternalLocation:1];

  return v8;
}

+ (void)reloadDatabase
{
  v2 = +[IMDChatRegistry sharedInstance];
  [v2 _forceReloadChats:1];
}

+ (void)storeAttachmentsForMessage:(id)a3
{
  v3 = a3;
  v4 = +[IMDMessageStore sharedInstance];
  [v4 _storeAttachmentsForMessage:v3];
}

+ (id)createMessageItemWithRecordRef:(_IMDMessageRecordStruct *)a3 handle:(id)a4
{
  v4 = IMDCreateIMMessageItemFromIMDMessageRecordRef(a3, a4);

  return v4;
}

+ (void)updateStamp
{
  v2 = +[IMDMessageStore sharedInstance];
  [v2 updateStamp];
}

+ (id)fileTransferForGUID:(id)a3
{
  v3 = a3;
  v4 = +[IMDFileTransferCenter sharedInstance];
  v5 = [v4 transferForGUID:v3];

  return v5;
}

+ (void)addTransfer:(id)a3 forGUID:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[IMDFileTransferCenter sharedInstance];
  [v7 addTransfer:v6 forGUID:v5];
}

+ (BOOL)registerGuid:(id)a3 forLocalURL:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[IMDFileTransferCenter sharedInstance];
  v8 = [v7 registerGUID:v6 forNewOutgoingTransferWithLocalURL:v5];

  return v8;
}

+ (void)updateTransfer:(id)a3
{
  v3 = a3;
  v4 = +[IMDFileTransferCenter sharedInstance];
  [v4 updateTransfer:v3];
}

+ (BOOL)isRecoverablyDeletedMessageGUID:(id)a3
{
  v3 = a3;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v4 = [MEMORY[0x277D18EB0] synchronousDatabase];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_22B676BFC;
  v6[3] = &unk_278705308;
  v6[4] = &v7;
  [v4 isRecoverablyDeletedMessageGUID:v3 completionHandler:v6];

  LOBYTE(v4) = *(v8 + 24);
  _Block_object_dispose(&v7, 8);

  return v4;
}

+ (void)moveMessagePartForGUID:(id)a3 deleteDate:(id)a4 partBody:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = +[IMDCKRecoverableMessageSyncController sharedInstance];
  [v10 _onRecoverableMessagePartRecordReadWithDeleteDate:v8 messageGUID:v9 partBody:v7];
}

+ (BOOL)hasFinishedAssetDownloadSync
{
  v2 = +[IMDCKSyncController sharedInstance];
  v3 = [v2 syncState];
  v4 = [v3 getAnalyticSyncDatesObjectForKey:*MEMORY[0x277D199C8]];

  if ([v4 intValue])
  {
    v5 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSince1970:{objc_msgSend(v4, "longLongValue")}];

    v6 = v5 != 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)primaryAccountCountryCode
{
  v2 = +[IMDCKUtilities sharedInstance];
  v3 = [v2 _primaryAccountCountryCode];

  return v3;
}

+ (id)ckRecordWithT1Info:(id)a3
{
  v3 = MEMORY[0x277D1AA28];
  v4 = a3;
  v5 = +[IMDRecordZoneManager sharedInstance];
  v6 = [v5 updateRecordZoneID];
  v7 = +[IMDCKRecordSaltManager sharedInstance];
  v8 = [v7 cachedSalt];
  v9 = [v3 createCKRecordForUpdateT1:v4 zoneID:v6 salt:v8];

  return v9;
}

+ (id)ckRecordWithT2Info:(id)a3
{
  v3 = MEMORY[0x277D1AA28];
  v4 = a3;
  v5 = +[IMDRecordZoneManager sharedInstance];
  v6 = [v5 updateRecordZoneID];
  v7 = +[IMDCKRecordSaltManager sharedInstance];
  v8 = [v7 cachedSalt];
  v9 = [v3 createCKRecordForUpdateT2:v4 zoneID:v6 salt:v8];

  return v9;
}

+ (id)ckRecordWithT3Info:(id)a3
{
  v3 = MEMORY[0x277D1AA28];
  v4 = a3;
  v5 = +[IMDRecordZoneManager sharedInstance];
  v6 = [v5 updateRecordZoneID];
  v7 = +[IMDCKRecordSaltManager sharedInstance];
  v8 = [v7 cachedSalt];
  v9 = [v3 createCKRecordForUpdateT3:v4 zoneID:v6 salt:v8];

  return v9;
}

+ (void)handleMessageUpdateWithCKRecord:(id)a3
{
  v3 = a3;
  v4 = +[IMDChatRegistry sharedInstance];
  [v4 handleMessageUpdate:v3];
}

+ (void)generatePreviewForTransfer:(id)a3
{
  v6 = a3;
  v3 = [v6 localPath];
  if ([v3 length])
  {
    v4 = [MEMORY[0x277D1ADF8] sharedInstance];
    v5 = [MEMORY[0x277D1AB80] contextWithKnownSender:1 serviceName:*MEMORY[0x277D1A608]];
    [v4 generatePreviewForTransfer:v6 attachmentPath:v3 balloonBundleID:0 senderContext:v5 completionBlock:0];
  }
}

@end