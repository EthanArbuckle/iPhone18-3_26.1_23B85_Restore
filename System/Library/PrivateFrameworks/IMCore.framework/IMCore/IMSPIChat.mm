@interface IMSPIChat
+ (void)enumerateAllChatsWithBlock:(id)a3;
- (IMSPIChat)initWithChatRecord:(_IMDChatRecordStruct *)a3;
- (id)description;
- (void)enumerateAllAttachmentsWithBlock:(id)a3;
- (void)enumerateAllMessagesWithBlock:(id)a3;
@end

@implementation IMSPIChat

+ (void)enumerateAllChatsWithBlock:(id)a3
{
  v3 = a3;
  if (qword_1EB2EA310 != -1)
  {
    sub_1A84E10A0();
  }

  v4 = off_1EB2EA308();
  if (v4)
  {
    v5 = v4;
    v13 = 0;
    if (CFArrayGetCount(v4) >= 1)
    {
      v6 = 0;
      do
      {
        v7 = objc_autoreleasePoolPush();
        ValueAtIndex = CFArrayGetValueAtIndex(v5, v6);
        v9 = [IMSPIChat alloc];
        v11 = objc_msgSend_initWithChatRecord_(v9, v10, ValueAtIndex);
        if (v11)
        {
          v3[2](v3, v11, &v13);
        }

        v12 = v13;

        objc_autoreleasePoolPop(v7);
        if (v12 == 1)
        {
          break;
        }

        ++v6;
      }

      while (v6 < CFArrayGetCount(v5));
    }

    CFRelease(v5);
  }
}

- (void)enumerateAllAttachmentsWithBlock:(id)a3
{
  v56[1] = *MEMORY[0x1E69E9840];
  v42 = a3;
  v6 = objc_msgSend_chatIdentifier(self, v4, v5);
  v56[0] = v6;
  v8 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v7, v56, 1);

  v11 = objc_msgSend_serviceName(self, v9, v10);
  v55 = v11;
  v13 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v12, &v55, 1);

  if (qword_1EB2EA320 != -1)
  {
    sub_1A84E10B4();
  }

  v14 = off_1EB2EA318(v8, v13);
  if (v14)
  {
    v15 = v14;
    v39 = v13;
    v40 = v8;
    v54 = 0;
    if (CFArrayGetCount(v14) >= 1)
    {
      v16 = 0;
      v41 = v15;
      while (1)
      {
        v17 = objc_autoreleasePoolPush();
        v18 = CFArrayGetValueAtIndex(v15, v16);
        v20 = objc_msgSend_objectForKeyedSubscript_(v18, v19, @"guid");
        if (objc_msgSend_length(v20, v21, v22))
        {
          v23 = IMDAttachmentRecordCopyAttachmentForGUID();
          v52 = 0;
          v53 = 0;
          v50 = 0;
          v51 = 0;
          v49 = 0;
          v48 = 0;
          v47 = 0;
          v45 = v17;
          cf = 0;
          v44 = v18;
          if (qword_1EB2EA330 != -1)
          {
            sub_1A84E10DC();
          }

          v43 = v23;
          off_1EB2EA328(v23, 0, &v52, 0, 0, &v53, &v50, 0, &v51, &v48, 0, 0, &v48 + 1, 0, &v49, 0, 0, 0, 0, 0, 0, &v47, &cf);
          v25 = objc_msgSend_URLWithString_(MEMORY[0x1E695DFF8], v24, v53);
          v26 = [IMSPIAttachment alloc];
          v27 = v50;
          v28 = v51;
          v29 = HIBYTE(v48) != 0;
          v30 = v48 != 0;
          v31 = v49;
          v34 = objc_msgSend___im_dateWithNanosecondTimeIntervalSinceReferenceDate_(MEMORY[0x1E695DF00], v32, v33, v52);
          isOutgoing_attributionInfo_creationDate_adaptiveImageGlyphContentIdentifier_adaptiveImageGlyphContentDescription = objc_msgSend_initWithGuid_fileUrl_transferState_uti_isSticker_isOutgoing_attributionInfo_creationDate_adaptiveImageGlyphContentIdentifier_adaptiveImageGlyphContentDescription_(v26, v35, v20, v25, v28, v27, v29, v30, v31, v34, v47, cf);

          if (v47)
          {
            CFRelease(v47);
            v47 = 0;
          }

          if (cf)
          {
            CFRelease(cf);
            cf = 0;
          }

          v18 = v44;
          if (v53)
          {
            CFRelease(v53);
            v53 = 0;
          }

          if (v50)
          {
            CFRelease(v50);
            v50 = 0;
          }

          if (v49)
          {
            CFRelease(v49);
            v49 = 0;
          }

          CFRelease(v43);
          v42[2](v42, isOutgoing_attributionInfo_creationDate_adaptiveImageGlyphContentIdentifier_adaptiveImageGlyphContentDescription, &v54);
          v37 = v54;

          v15 = v41;
          v17 = v45;
          if (v37)
          {
            break;
          }
        }

        objc_autoreleasePoolPop(v17);
        if (++v16 >= CFArrayGetCount(v15))
        {
          goto LABEL_23;
        }
      }

      objc_autoreleasePoolPop(v45);
    }

LABEL_23:
    CFRelease(v15);
    v13 = v39;
    v8 = v40;
  }

  v38 = *MEMORY[0x1E69E9840];
}

- (void)enumerateAllMessagesWithBlock:(id)a3
{
  v48[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v7 = objc_msgSend_chatIdentifier(self, v5, v6);
  v48[0] = v7;
  v9 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v8, v48, 1);

  v12 = objc_msgSend_serviceName(self, v10, v11);
  v47 = v12;
  v14 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v13, &v47, 1);

  v15 = objc_alloc_init(MEMORY[0x1E695DEE0]);
  v16 = IMDMessageRecordCopyMessagesWithChatIdentifiersOnServicesWithOnlyUnreadAndLimit();
  if (v16)
  {
    v17 = v16;
    if (CFArrayGetCount(v16) >= 1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v17, 0);
      v19 = _IMSPIMessageFromRecord(ValueAtIndex, 0, 0, v15, QOS_CLASS_DEFAULT);
      if (v19)
      {
        v41 = v19;
        v42 = v17;
        v22 = objc_msgSend_guid(v19, v20, v21);
        v23 = 0;
        v46 = 0;
        v43 = v14;
        v44 = v9;
        while (1)
        {
          v24 = objc_autoreleasePoolPush();
          v25 = IMDMessageRecordCopyMessagesWithChatIdentifiersOnServicesBeforeAndAfterGUIDWithOptionalThreadIdentifier();
          if (!v25)
          {
            goto LABEL_19;
          }

          v26 = v25;
          Count = CFArrayGetCount(v25);
          if (CFArrayGetCount(v26) < 1)
          {
            goto LABEL_18;
          }

          v27 = 0;
          while (1)
          {
            v28 = objc_autoreleasePoolPush();
            v29 = CFArrayGetValueAtIndex(v26, v27);
            v30 = _IMSPIMessageFromRecord(v29, 0, 0, v15, QOS_CLASS_DEFAULT);
            v33 = v30;
            if (!v30)
            {
              goto LABEL_13;
            }

            v34 = objc_msgSend_text(v30, v31, v32);
            if (v34)
            {
              break;
            }

            v37 = objc_msgSend_attributedText(v33, v35, v36);

            if (v37)
            {
              goto LABEL_12;
            }

LABEL_13:
            if (!v27)
            {
              v38 = objc_msgSend_guid(v33, v31, v32);

              v22 = v38;
            }

            objc_autoreleasePoolPop(v28);
            if (++v27 >= CFArrayGetCount(v26))
            {
              goto LABEL_18;
            }
          }

LABEL_12:
          v4[2](v4, v33, &v46);
          if ((v46 & 1) == 0)
          {
            goto LABEL_13;
          }

          objc_autoreleasePoolPop(v28);
LABEL_18:
          CFRelease(v26);
          v14 = v43;
          v9 = v44;
          v23 = Count;
LABEL_19:
          v39 = v46;
          objc_autoreleasePoolPop(v24);
          if ((v39 & 1) != 0 || v23 <= 999)
          {

            v17 = v42;
            break;
          }
        }
      }
    }

    CFRelease(v17);
  }

  v40 = *MEMORY[0x1E69E9840];
}

- (IMSPIChat)initWithChatRecord:(_IMDChatRecordStruct *)a3
{
  v39 = *MEMORY[0x1E69E9840];
  v34.receiver = self;
  v34.super_class = IMSPIChat;
  v4 = [(IMSPIChat *)&v34 init];
  if (!v4)
  {
LABEL_14:
    v20 = v4;
    goto LABEL_20;
  }

  v32 = 0;
  v33 = 0;
  v30 = 0;
  v31 = 0;
  v28 = 0;
  v29 = 0;
  v26 = 0;
  v27 = 0;
  if (qword_1EB2EA4D0 != -1)
  {
    sub_1A84E440C();
  }

  off_1EB2EA4C8(a3, &v29, 0, 0, 0, &v31, &v33, &v32, 0, &v30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, &v28, 0, 0, &v27, &v26);
  serviceName = v4->_serviceName;
  v4->_serviceName = v33;

  guid = v4->_guid;
  v4->_guid = v32;

  chatIdentifier = v4->_chatIdentifier;
  v4->_chatIdentifier = v31;

  displayName = v4->_displayName;
  v4->_displayName = v30;

  v4->_isGroup = v29 != 45;
  v4->_isBlackholed = v28 != 0;
  if (v4->_guid && v4->_serviceName)
  {
    if (qword_1EB2EA4E0 != -1)
    {
      sub_1A84E4434();
    }

    v9 = off_1EB2EA4D8(a3);
    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if (objc_msgSend_count(v9, v11, v12))
    {
      v14 = 0;
      do
      {
        v15 = objc_msgSend_objectAtIndex_(v9, v13, v14);
        v17 = sub_1A8262D14(v15);
        if (v17)
        {
          objc_msgSend_addObject_(v10, v16, v17);
        }

        ++v14;
      }

      while (v14 < objc_msgSend_count(v9, v18, v19));
    }

    objc_msgSend_setHandles_(v4, v13, v10);

    goto LABEL_14;
  }

  if (IMOSLoggingEnabled())
  {
    v21 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = v4->_guid;
      v23 = v4->_serviceName;
      *buf = 138412546;
      v36 = v22;
      v37 = 2112;
      v38 = v23;
      _os_log_impl(&dword_1A823F000, v21, OS_LOG_TYPE_INFO, "Cannot initialize chat with record: guid: %@ service: %@.", buf, 0x16u);
    }
  }

  v20 = 0;
LABEL_20:

  v24 = *MEMORY[0x1E69E9840];
  return v20;
}

- (id)description
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_msgSend_chatIdentifier(self, a2, v2);
  v8 = objc_msgSend_guid(self, v6, v7);
  v11 = objc_msgSend_serviceName(self, v9, v10);
  v14 = objc_msgSend_displayName(self, v12, v13);
  if (objc_msgSend_isGroup(self, v15, v16))
  {
    objc_msgSend_stringWithFormat_(v4, v17, @"IMSPIChat: %p [ChatIdentifier: %@  guid: %@, serviceName: %@, displayName: %@, isGroup: %@]", self, v5, v8, v11, v14, @"YES");
  }

  else
  {
    objc_msgSend_stringWithFormat_(v4, v17, @"IMSPIChat: %p [ChatIdentifier: %@  guid: %@, serviceName: %@, displayName: %@, isGroup: %@]", self, v5, v8, v11, v14, @"NO");
  }
  v18 = ;

  return v18;
}

@end