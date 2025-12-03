@interface IMDaemonCoreBridgeImpl
+ (BOOL)hasFinishedAssetDownloadSync;
+ (BOOL)isBackwardCompatibilityForItem:(id)item parentChatID:(id)d;
+ (BOOL)isExpectedChatIDForItem:(id)item chatID:(id)d;
+ (BOOL)isRecoverablyDeletedMessageGUID:(id)d;
+ (BOOL)registerGuid:(id)guid forLocalURL:(id)l;
+ (BOOL)storeAttachmentWithTransfer:(id)transfer withChatGUID:(id)d;
+ (id)ckRecordWithT1Info:(id)info;
+ (id)ckRecordWithT2Info:(id)info;
+ (id)ckRecordWithT3Info:(id)info;
+ (id)createMessageItemWithRecordRef:(_IMDMessageRecordStruct *)ref handle:(id)handle;
+ (id)fileTransferForGUID:(id)d;
+ (id)fileTransferWithGUID:(id)d;
+ (id)primaryAccountCountryCode;
+ (void)addItem:(id)item toParentChatID:(id)d updatedLastMessageCount:(unint64_t)count;
+ (void)addParentChatID:(id)d toChat:(id)chat service:(id)service;
+ (void)addTransfer:(id)transfer forGUID:(id)d;
+ (void)generatePreviewForTransfer:(id)transfer;
+ (void)handleMessageUpdateWithCKRecord:(id)record;
+ (void)moveMessagePartForGUID:(id)d deleteDate:(id)date partBody:(id)body;
+ (void)reloadDatabase;
+ (void)removeTransferFromBackup:(id)backup;
+ (void)setSortIDForItem:(id)item parentChatID:(id)d;
+ (void)storeAttachmentWithTransfer:(id)transfer withMessageGUID:(id)d;
+ (void)storeAttachmentsForMessage:(id)message;
+ (void)updateChatUsingSyncData:(id)data;
+ (void)updateStamp;
+ (void)updateTemporaryTransferGUIDsIfNeeded:(id)needed;
+ (void)updateTransfer:(id)transfer;
@end

@implementation IMDaemonCoreBridgeImpl

+ (void)updateChatUsingSyncData:(id)data
{
  dataCopy = data;
  v4 = +[IMDChatRegistry sharedInstance];
  [v4 updateChatUsingSyncData:dataCopy];
}

+ (BOOL)isBackwardCompatibilityForItem:(id)item parentChatID:(id)d
{
  v18 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  dCopy = d;
  v9 = +[IMDChatRegistry sharedInstance];
  service = [itemCopy service];
  v8 = [v9 _lookupChatUsingParentChatID:dCopy service:service];

  objc_opt_class();
  LOBYTE(v9) = 0;
  if ((objc_opt_isKindOfClass() & 1) != 0 && v8)
  {
    v10 = itemCopy;
    v11 = +[IMDBackwardCompatibilityMessageIdentifier sharedIdentifier];
    LODWORD(v9) = [v11 isIgnorableBackwardCompatibilityMessage:v10 inChat:v8];
    if (v9)
    {
      v12 = IMLogHandleForCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        guid = [v10 guid];
        v16 = 138412290;
        v17 = guid;
        _os_log_impl(&dword_22B4CC000, v12, OS_LOG_TYPE_INFO, "Message %@ is an ignorable backward compatibility message, ignoring.", &v16, 0xCu);
      }
    }
  }

  v14 = *MEMORY[0x277D85DE8];
  return v9;
}

+ (BOOL)isExpectedChatIDForItem:(id)item chatID:(id)d
{
  v25 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  dCopy = d;
  if ([dCopy length])
  {
    v7 = +[IMDMessageStore sharedInstance];
    guid = [itemCopy guid];
    v9 = [v7 chatsForMessageGUID:guid];

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
          service = [itemCopy service];
          v16 = [v14 cloudKitChatIDForServiceName:service];
          v17 = [dCopy isEqualToString:v16];

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

+ (void)setSortIDForItem:(id)item parentChatID:(id)d
{
  dCopy = d;
  itemCopy = item;
  v7 = +[IMDChatRegistry sharedInstance];
  service = [itemCopy service];
  v10 = [v7 _lookupChatUsingParentChatID:dCopy service:service];

  v9 = +[IMDChatRegistry sharedInstance];
  [v9 _setSortIDOnIncomingMessage:itemCopy forChat:v10];
}

+ (void)addItem:(id)item toParentChatID:(id)d updatedLastMessageCount:(unint64_t)count
{
  itemCopy = item;
  dCopy = d;
  v9 = +[IMDMessageStore sharedInstance];
  guid = [itemCopy guid];
  v11 = [v9 chatForMessageGUID:guid];

  if (v11)
  {
    service = [itemCopy service];
    [self addParentChatID:dCopy toChat:v11 service:service];
  }

  else
  {
    v13 = +[IMDChatRegistry sharedInstance];
    service2 = [itemCopy service];
    v11 = [v13 _lookupChatUsingParentChatID:dCopy service:service2];

    if (!v11)
    {
      goto LABEL_6;
    }

    service = +[IMDChatRegistry sharedInstance];
    [service _addItemToParentChatIfNotLocationItem:itemCopy parentChat:v11 updatedLastMessageCount:count reason:1001];
  }

LABEL_6:
}

+ (void)addParentChatID:(id)d toChat:(id)chat service:(id)service
{
  dCopy = d;
  chatCopy = chat;
  serviceCopy = service;
  mEMORY[0x277D1A9B8] = [MEMORY[0x277D1A9B8] sharedFeatureFlags];
  isMissingMessagesEnabled = [mEMORY[0x277D1A9B8] isMissingMessagesEnabled];

  if (isMissingMessagesEnabled && [chatCopy style] == 43)
  {
    v11 = IMChatLookupDomainForServiceName();
    if (v11)
    {
      v12 = [chatCopy identifiersForDomain:v11];
      v13 = [v12 containsObject:dCopy];

      if ((v13 & 1) == 0)
      {
        [chatCopy assignIdentifier:dCopy forDomain:v11 isHistoricalIdentifier:1];
        [chatCopy setCloudKitSyncState:0];
        v14 = +[IMDChatStore sharedInstance];
        [v14 storeChat:chatCopy];
      }
    }
  }
}

+ (void)removeTransferFromBackup:(id)backup
{
  backupCopy = backup;
  v4 = +[IMDCKAttachmentSyncController sharedInstance];
  [v4 _removeTransferFromiCloudBackupWithGuid:backupCopy];
}

+ (void)updateTemporaryTransferGUIDsIfNeeded:(id)needed
{
  neededCopy = needed;
  v4 = +[IMDAttachmentStore sharedInstance];
  [v4 updateTemporaryTransferGUIDsOnMessageIfNeeded:neededCopy];
}

+ (id)fileTransferWithGUID:(id)d
{
  dCopy = d;
  v4 = +[IMDAttachmentStore sharedInstance];
  v5 = [v4 attachmentWithGUID:dCopy];

  return v5;
}

+ (void)storeAttachmentWithTransfer:(id)transfer withMessageGUID:(id)d
{
  dCopy = d;
  transferCopy = transfer;
  v7 = +[IMDAttachmentStore sharedInstance];
  [v7 storeAttachment:transferCopy associateWithMessageWithGUID:dCopy];
}

+ (BOOL)storeAttachmentWithTransfer:(id)transfer withChatGUID:(id)d
{
  dCopy = d;
  transferCopy = transfer;
  v7 = +[IMDAttachmentStore sharedInstance];
  v8 = [v7 storeAttachment:transferCopy associateWithMessageWithGUID:0 chatGUID:dCopy storeAtExternalLocation:1];

  return v8;
}

+ (void)reloadDatabase
{
  v2 = +[IMDChatRegistry sharedInstance];
  [v2 _forceReloadChats:1];
}

+ (void)storeAttachmentsForMessage:(id)message
{
  messageCopy = message;
  v4 = +[IMDMessageStore sharedInstance];
  [v4 _storeAttachmentsForMessage:messageCopy];
}

+ (id)createMessageItemWithRecordRef:(_IMDMessageRecordStruct *)ref handle:(id)handle
{
  v4 = IMDCreateIMMessageItemFromIMDMessageRecordRef(ref, handle);

  return v4;
}

+ (void)updateStamp
{
  v2 = +[IMDMessageStore sharedInstance];
  [v2 updateStamp];
}

+ (id)fileTransferForGUID:(id)d
{
  dCopy = d;
  v4 = +[IMDFileTransferCenter sharedInstance];
  v5 = [v4 transferForGUID:dCopy];

  return v5;
}

+ (void)addTransfer:(id)transfer forGUID:(id)d
{
  dCopy = d;
  transferCopy = transfer;
  v7 = +[IMDFileTransferCenter sharedInstance];
  [v7 addTransfer:transferCopy forGUID:dCopy];
}

+ (BOOL)registerGuid:(id)guid forLocalURL:(id)l
{
  lCopy = l;
  guidCopy = guid;
  v7 = +[IMDFileTransferCenter sharedInstance];
  v8 = [v7 registerGUID:guidCopy forNewOutgoingTransferWithLocalURL:lCopy];

  return v8;
}

+ (void)updateTransfer:(id)transfer
{
  transferCopy = transfer;
  v4 = +[IMDFileTransferCenter sharedInstance];
  [v4 updateTransfer:transferCopy];
}

+ (BOOL)isRecoverablyDeletedMessageGUID:(id)d
{
  dCopy = d;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  synchronousDatabase = [MEMORY[0x277D18EB0] synchronousDatabase];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_22B676BFC;
  v6[3] = &unk_278705308;
  v6[4] = &v7;
  [synchronousDatabase isRecoverablyDeletedMessageGUID:dCopy completionHandler:v6];

  LOBYTE(synchronousDatabase) = *(v8 + 24);
  _Block_object_dispose(&v7, 8);

  return synchronousDatabase;
}

+ (void)moveMessagePartForGUID:(id)d deleteDate:(id)date partBody:(id)body
{
  bodyCopy = body;
  dateCopy = date;
  dCopy = d;
  v10 = +[IMDCKRecoverableMessageSyncController sharedInstance];
  [v10 _onRecoverableMessagePartRecordReadWithDeleteDate:dateCopy messageGUID:dCopy partBody:bodyCopy];
}

+ (BOOL)hasFinishedAssetDownloadSync
{
  v2 = +[IMDCKSyncController sharedInstance];
  syncState = [v2 syncState];
  v4 = [syncState getAnalyticSyncDatesObjectForKey:*MEMORY[0x277D199C8]];

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
  _primaryAccountCountryCode = [v2 _primaryAccountCountryCode];

  return _primaryAccountCountryCode;
}

+ (id)ckRecordWithT1Info:(id)info
{
  v3 = MEMORY[0x277D1AA28];
  infoCopy = info;
  v5 = +[IMDRecordZoneManager sharedInstance];
  updateRecordZoneID = [v5 updateRecordZoneID];
  v7 = +[IMDCKRecordSaltManager sharedInstance];
  cachedSalt = [v7 cachedSalt];
  v9 = [v3 createCKRecordForUpdateT1:infoCopy zoneID:updateRecordZoneID salt:cachedSalt];

  return v9;
}

+ (id)ckRecordWithT2Info:(id)info
{
  v3 = MEMORY[0x277D1AA28];
  infoCopy = info;
  v5 = +[IMDRecordZoneManager sharedInstance];
  updateRecordZoneID = [v5 updateRecordZoneID];
  v7 = +[IMDCKRecordSaltManager sharedInstance];
  cachedSalt = [v7 cachedSalt];
  v9 = [v3 createCKRecordForUpdateT2:infoCopy zoneID:updateRecordZoneID salt:cachedSalt];

  return v9;
}

+ (id)ckRecordWithT3Info:(id)info
{
  v3 = MEMORY[0x277D1AA28];
  infoCopy = info;
  v5 = +[IMDRecordZoneManager sharedInstance];
  updateRecordZoneID = [v5 updateRecordZoneID];
  v7 = +[IMDCKRecordSaltManager sharedInstance];
  cachedSalt = [v7 cachedSalt];
  v9 = [v3 createCKRecordForUpdateT3:infoCopy zoneID:updateRecordZoneID salt:cachedSalt];

  return v9;
}

+ (void)handleMessageUpdateWithCKRecord:(id)record
{
  recordCopy = record;
  v4 = +[IMDChatRegistry sharedInstance];
  [v4 handleMessageUpdate:recordCopy];
}

+ (void)generatePreviewForTransfer:(id)transfer
{
  transferCopy = transfer;
  localPath = [transferCopy localPath];
  if ([localPath length])
  {
    mEMORY[0x277D1ADF8] = [MEMORY[0x277D1ADF8] sharedInstance];
    v5 = [MEMORY[0x277D1AB80] contextWithKnownSender:1 serviceName:*MEMORY[0x277D1A608]];
    [mEMORY[0x277D1ADF8] generatePreviewForTransfer:transferCopy attachmentPath:localPath balloonBundleID:0 senderContext:v5 completionBlock:0];
  }
}

@end