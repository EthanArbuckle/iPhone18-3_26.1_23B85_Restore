@interface IMDMSAMessage
- (IMDMSAMessage)initWithMessage:(_IMDMessageRecordStruct *)a3 inChat:(_IMDChatRecordStruct *)a4;
- (double)timeSinceSent;
- (void)dealloc;
@end

@implementation IMDMSAMessage

- (IMDMSAMessage)initWithMessage:(_IMDMessageRecordStruct *)a3 inChat:(_IMDChatRecordStruct *)a4
{
  v61.receiver = self;
  v61.super_class = IMDMSAMessage;
  v6 = [(IMDMSAMessage *)&v61 init];
  v7 = v6;
  if (v6)
  {
    if (!a3)
    {
      goto LABEL_5;
    }

    if (!a4)
    {
      goto LABEL_5;
    }

    v59 = 0;
    v60 = 0;
    v57 = 0;
    v58 = 0;
    v56 = 0;
    v48 = 0u;
    v43 = 0u;
    v46 = 0u;
    v39 = 0u;
    v41 = 0u;
    p_subject = &v6->_subject;
    p_error = &v6->_error;
    v34 = 0u;
    p_service = &v6->_service;
    p_senderLogin = &v6->_senderLogin;
    v27 = 0;
    v29 = &v57;
    v25 = 0u;
    IMDMessageRecordBulkCopy();
    if (!v7->_itemType)
    {
      if (v60 >= 1)
      {
        v7->_date = [NSDate __im_dateWithNanosecondTimeIntervalSinceReferenceDate:v60, 0, 0, 0, &v57, p_service, p_senderLogin, 0, 0, p_subject, p_error, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, &v58, 0, &v56, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0];
      }

      if (v59 >= 1)
      {
        v7->_dateDelivered = [NSDate __im_dateWithNanosecondTimeIntervalSinceReferenceDate:v59];
      }

      v7->_flags = [v57 unsignedLongLongValue];
      v55 = 0;
      v49 = 0;
      v47 = 0u;
      v45 = 0u;
      v42 = 0;
      p_lastAddressedSIMID = &v7->_lastAddressedSIMID;
      v40 = 0u;
      v38 = 0u;
      v35 = 0u;
      v33 = 0u;
      v30 = 0u;
      p_lastAddressedHandle = &v7->_lastAddressedHandle;
      v26 = 0u;
      _IMDChatRecordBulkCopy();
      v7->_chatProperties = JWDecodeDictionary();

      v55 = 0;
      v9 = IMDChatRecordCopyHandles();
      if (v9)
      {
        v10 = v9;
        Count = CFArrayGetCount(v9);
        v12 = [[NSMutableArray alloc] initWithCapacity:{Count, 0, 0, p_lastAddressedHandle, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, p_lastAddressedSIMID, 0, 0, 0, 0, 0}];
        if (Count >= 1)
        {
          do
          {
            CFArrayGetValueAtIndex(v10, 0);
            v13 = IMDHandleRecordCopyID();
            [v12 addObject:v13];

            --Count;
          }

          while (Count);
        }

        v7->_participants = [v12 copy];

        CFRelease(v10);
      }

      v14 = IMDMessageRecordCopyAttachments();
      if (v14)
      {
        v15 = v14;
        v16 = objc_alloc_init(NSMutableDictionary);
        if (CFArrayGetCount(v15) >= 1)
        {
          v17 = 0;
          do
          {
            v18 = [[IMDMSAAttachment alloc] initWithAttachment:CFArrayGetValueAtIndex(v15, v17)];
            if ([(IMDMSAAttachment *)v18 GUID])
            {
              [v16 setObject:v18 forKey:{-[IMDMSAAttachment GUID](v18, "GUID")}];
            }

            ++v17;
          }

          while (v17 < CFArrayGetCount(v15));
        }

        v7->_attachments = [v16 copy];

        CFRelease(v15);
      }

      v19 = &v51;
      v51 = 0;
      v52 = &v51;
      v53 = 0x2020000000;
      flags = v7->_flags;
      v54 = (flags & 0x200000) != 0;
      if (((flags >> 21) & 1) == 0)
      {
        if (v58)
        {
          v54 = 1;
          v19 = &v51;
        }

        else if ([v56 length])
        {
          v24 = [v56 isEqualToString:IMBalloonPluginIdentifierRichLinks];
          v19 = v52;
          if ((v24 & 1) == 0)
          {
            *(v52 + 24) = 1;
          }
        }

        else
        {
          v19 = v52;
        }
      }

      if ((v19[3] & 1) == 0 && [v56 isEqualToString:IMBalloonExtensionIDWithSuffix()])
      {
        v7->_checkInMessage = 1;
      }

      v21 = *(v52 + 24);
      if ((v21 & 1) == 0)
      {
        attachments = v7->_attachments;
        v50[0] = _NSConcreteStackBlock;
        v50[1] = 3221225472;
        v50[2] = sub_100004F60;
        v50[3] = &unk_100010738;
        v50[4] = &v51;
        [(NSDictionary *)attachments enumerateKeysAndObjectsUsingBlock:v50];
        v21 = *(v52 + 24);
      }

      v7->_iMessageOnly = v21;
      v7->_keyTransparencyVerifiedMessage = (v7->_flags & 0x2000000000) != 0;

      v57 = 0;
      v56 = 0;
      v23 = [(_IMDMessageRecordStruct *)a3 messageSummaryInfo];
      v7->_encrypted = [objc_msgSend(v23 objectForKey:{IMMessageSummaryInfoEncrypted), "BOOLValue"}];
      _Block_object_dispose(&v51, 8);
    }

    else
    {
LABEL_5:

      return 0;
    }
  }

  return v7;
}

- (double)timeSinceSent
{
  [+[NSDate date](NSDate timeIntervalSince1970];
  v4 = v3;
  [(NSDate *)[(IMDMSAMessage *)self date] timeIntervalSince1970];
  return v4 - v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = IMDMSAMessage;
  [(IMDMSAMessage *)&v3 dealloc];
}

@end