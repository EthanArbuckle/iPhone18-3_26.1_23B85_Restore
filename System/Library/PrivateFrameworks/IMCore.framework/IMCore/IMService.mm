@interface IMService
+ (BOOL)isEmailAddress:(id)address inDomains:(id)domains;
+ (NSDate)myIdleTime;
- (id)_displayName;
@end

@implementation IMService

+ (NSDate)myIdleTime
{
  v3 = MEMORY[0x1E695DF00];
  v4 = objc_msgSend_sharedController(IMDaemonController, a2, v2);
  v7 = objc_msgSend_listener(v4, v5, v6);
  v10 = objc_msgSend_myIdleTime(v7, v8, v9);
  v13 = objc_msgSend_dateWithTimeIntervalSinceNow_(v3, v11, v12, v10);

  return v13;
}

+ (BOOL)isEmailAddress:(id)address inDomains:(id)domains
{
  addressCopy = address;
  domainsCopy = domains;
  v10 = objc_msgSend_count(domainsCopy, v7, v8);
  if (!v10)
  {
    goto LABEL_16;
  }

  v11 = 0;
  while (1)
  {
    v12 = objc_msgSend_objectAtIndex_(domainsCopy, v9, v11);
    if (objc_msgSend_isEqualToString_(v12, v13, @"*"))
    {
LABEL_11:
      LOBYTE(v10) = 1;
      goto LABEL_15;
    }

    if (objc_msgSend_hasSuffix_(addressCopy, v14, v12))
    {
      break;
    }

LABEL_9:

    if (v10 == ++v11)
    {
      LOBYTE(v10) = 0;
      goto LABEL_16;
    }
  }

  v17 = objc_msgSend_length(addressCopy, v15, v16);
  v20 = v17 + ~objc_msgSend_length(v12, v18, v19);
  if (v20 < objc_msgSend_length(addressCopy, v21, v22))
  {
    if (v20 && v20 < objc_msgSend_length(addressCopy, v23, v24) && objc_msgSend_characterAtIndex_(addressCopy, v25, v20) == 64)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v10 = IMLogHandleForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    sub_1A84DEF40(addressCopy, v12, v10);
  }

  LOBYTE(v10) = 0;
LABEL_15:

LABEL_16:
  return v10;
}

- (id)_displayName
{
  v4 = objc_msgSend_name(self, a2, v2);
  isEqualToString = objc_msgSend_isEqualToString_(v4, v5, *MEMORY[0x1E69A7AF8]);

  if (isEqualToString)
  {
    v9 = sub_1A8361964();
    v10 = @"iMessage • Satellite";
    objc_msgSend_localizedStringForKey_value_table_(v9, v11, @"PLACEHOLDER_TEXT_VIEW_SATELLITE_MESSAGE", @"iMessage • Satellite", @"IMCoreLocalizable");
    v35 = LABEL_16:;
    v36 = v35;
    if (v35)
    {
      v37 = v35;
    }

    else
    {
      v37 = v10;
    }

    v27 = v37;

    goto LABEL_20;
  }

  v12 = objc_msgSend_name(self, v7, v8);
  v14 = objc_msgSend_isEqualToString_(v12, v13, *MEMORY[0x1E69A7AE8]);

  if (v14)
  {
    v9 = sub_1A8361964();
    v10 = @"Text Message • Satellite";
    objc_msgSend_localizedStringForKey_value_table_(v9, v17, @"PLACEHOLDER_TEXT_VIEW_SATELLITE_MESSAGE_SMS", @"Text Message • Satellite", @"IMCoreLocalizable");
    goto LABEL_16;
  }

  v18 = objc_msgSend_smsService(IMServiceImpl, v15, v16);

  if (v18 == self)
  {
    v9 = sub_1A8361964();
    v10 = @"Text Message • SMS";
    objc_msgSend_localizedStringForKey_value_table_(v9, v28, @"TEXT_MESSAGE_SMS", @"Text Message • SMS", @"IMCoreLocalizable");
    goto LABEL_16;
  }

  v21 = objc_msgSend_iMessageService(IMServiceImpl, v19, v20);

  if (v21 == self)
  {
    v9 = sub_1A8361964();
    v10 = @"iMessage";
    objc_msgSend_localizedStringForKey_value_table_(v9, v29, @"MADRID", @"iMessage", @"IMCoreLocalizable");
    goto LABEL_16;
  }

  v24 = objc_msgSend_rcsService(IMServiceImpl, v22, v23);

  if (v24 == self)
  {
    if ((IMDeviceIsGreenTea() & 1) != 0 || objc_msgSend_IMDeviceIsChinaRegion(MEMORY[0x1E69A8020], v30, v31))
    {
      v32 = sub_1A8361964();
      v9 = v32;
      v34 = @"5G_MESSAGING";
    }

    else
    {
      v32 = sub_1A8361964();
      v9 = v32;
      v34 = @"TEXT_MESSAGE_RCS";
    }

    v10 = @"Text Message • RCS";
    objc_msgSend_localizedStringForKey_value_table_(v32, v33, v34, @"Text Message • RCS", @"IMCoreLocalizable");
    goto LABEL_16;
  }

  v27 = objc_msgSend_name(self, v25, v26);
LABEL_20:

  return v27;
}

@end