@interface IMUserNotification
+ (id)userNotificationWithIdentifier:(id)a3 timeout:(double)a4 alertLevel:(unint64_t)a5 displayFlags:(unint64_t)a6 displayInformation:(id)a7;
+ (id)userNotificationWithIdentifier:(id)a3 title:(id)a4 message:(id)a5 defaultButton:(id)a6 alternateButton:(id)a7 otherButton:(id)a8;
+ (id)userNotificationWithIdentifier:(id)a3 title:(id)a4 message:(id)a5 defaultButton:(id)a6 defaultButtonStyle:(unint64_t)a7 alternateButton:(id)a8 alternateButtonStyle:(unint64_t)a9 otherButton:(id)a10 otherButtonStyle:(unint64_t)a11;
- (BOOL)showInLockScreen;
- (BOOL)usesNotificationCenter;
- (NSString)representedApplicationBundle;
- (double)timeout;
- (id)_initWithIdentifier:(id)a3 timeout:(double)a4 displayFlags:(unint64_t)a5 displayInformation:(id)a6;
- (unint64_t)displayFlags;
- (unint64_t)responseFlags;
- (void)_setResponseFlags:(unint64_t)a3 responseInformation:(id)a4;
- (void)setUserInfo:(id)a3;
@end

@implementation IMUserNotification

- (id)_initWithIdentifier:(id)a3 timeout:(double)a4 displayFlags:(unint64_t)a5 displayInformation:(id)a6
{
  v10 = a3;
  v11 = a6;
  v33.receiver = self;
  v33.super_class = IMUserNotification;
  v12 = [(IMUserNotification *)&v33 init];
  if (v12)
  {
    v13 = objc_alloc(MEMORY[0x1E696AD98]);
    v16 = objc_msgSend_initWithDouble_(v13, v14, v15, a4);
    v17 = objc_alloc(MEMORY[0x1E696AD98]);
    v19 = objc_msgSend_initWithUnsignedInteger_(v17, v18, a5);
    v20 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v22 = v20;
    if (v10)
    {
      objc_msgSend_setObject_forKey_(v20, v21, v10, @"Identifier");
    }

    if (v16)
    {
      objc_msgSend_setObject_forKey_(v22, v21, v16, @"Timeout");
    }

    if (v19)
    {
      objc_msgSend_setObject_forKey_(v22, v21, v19, @"DisplayFlags");
    }

    if (v11)
    {
      v24 = objc_msgSend_objectForKey_(v11, v21, @"IconURL");
      if (v24 && (v25 = *MEMORY[0x1E695EE80], objc_msgSend_objectForKey_(v11, v23, *MEMORY[0x1E695EE80]), v26 = objc_claimAutoreleasedReturnValue(), v26, !v26))
      {
        v28 = objc_msgSend_mutableCopy(v11, v23, v27);
        objc_msgSend_setObject_forKey_(v28, v29, v24, v25);
        objc_msgSend_setObject_forKey_(v22, v30, v28, @"DisplayInformation");
      }

      else
      {
        objc_msgSend_setObject_forKey_(v22, v23, v11, @"DisplayInformation");
      }
    }

    reserved = v12->_reserved;
    v12->_reserved = v22;
  }

  return v12;
}

+ (id)userNotificationWithIdentifier:(id)a3 timeout:(double)a4 alertLevel:(unint64_t)a5 displayFlags:(unint64_t)a6 displayInformation:(id)a7
{
  v12 = a7;
  v13 = a3;
  v14 = [a1 alloc];
  v16 = objc_msgSend__initWithIdentifier_timeout_displayFlags_displayInformation_(v14, v15, v13, a6 | a5, v12, a4);

  return v16;
}

+ (id)userNotificationWithIdentifier:(id)a3 title:(id)a4 message:(id)a5 defaultButton:(id)a6 alternateButton:(id)a7 otherButton:(id)a8
{
  v13 = a8;
  v14 = a7;
  v15 = a6;
  v16 = a5;
  v17 = a4;
  v18 = a3;
  v19 = objc_opt_class();
  v21 = objc_msgSend_userNotificationWithIdentifier_title_message_defaultButton_defaultButtonStyle_alternateButton_alternateButtonStyle_otherButton_otherButtonStyle_(v19, v20, v18, v17, v16, v15, 0, v14, 0, v13, 0);

  return v21;
}

+ (id)userNotificationWithIdentifier:(id)a3 title:(id)a4 message:(id)a5 defaultButton:(id)a6 defaultButtonStyle:(unint64_t)a7 alternateButton:(id)a8 alternateButtonStyle:(unint64_t)a9 otherButton:(id)a10 otherButtonStyle:(unint64_t)a11
{
  v37 = a1;
  v38 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a8;
  v20 = a10;
  v21 = objc_alloc(MEMORY[0x1E695DF90]);
  v23 = objc_msgSend_initWithCapacity_(v21, v22, 5);
  if (!objc_msgSend_length(v20, v24, v25) || objc_msgSend_length(v18, v26, v27))
  {
    v28 = v20;
    v20 = v18;
    if (!v16)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v28 = 0;
  if (v16)
  {
LABEL_4:
    objc_msgSend_setObject_forKey_(v23, v26, v16, @"AlertHeader", v37);
  }

LABEL_5:
  if (v17)
  {
    objc_msgSend_setObject_forKey_(v23, v26, v17, @"AlertMessage");
  }

  if (v20)
  {
    objc_msgSend_setObject_forKey_(v23, v26, v20, @"DefaultButtonTitle");
  }

  if (v19)
  {
    objc_msgSend_setObject_forKey_(v23, v26, v19, @"AlternateButtonTitle");
  }

  if (v28)
  {
    objc_msgSend_setObject_forKey_(v23, v26, v28, @"OtherButtonTitle");
  }

  if (a7)
  {
    v29 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v26, a7);
    objc_msgSend_setObject_forKey_(v23, v30, v29, @"SBUserNotificationDefaultButtonPresentationStyle");
  }

  if (a9)
  {
    v31 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v26, a9);
    objc_msgSend_setObject_forKey_(v23, v32, v31, @"SBUserNotificationAlternateButtonPresentationStyle");
  }

  if (a11)
  {
    v33 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v26, a11);
    objc_msgSend_setObject_forKey_(v23, v34, v33, @"SBUserNotificationOtherButtonPresentationStyle");
  }

  v35 = objc_msgSend_userNotificationWithIdentifier_timeout_alertLevel_displayFlags_displayInformation_(v37, v26, v38, 3, 0, v23, 0.0, v37);

  return v35;
}

- (double)timeout
{
  v2 = objc_msgSend_objectForKey_(self->_reserved, a2, @"Timeout");
  objc_msgSend_doubleValue(v2, v3, v4);
  v6 = v5;

  return v6;
}

- (unint64_t)displayFlags
{
  v2 = objc_msgSend_objectForKey_(self->_reserved, a2, @"DisplayFlags");
  v5 = objc_msgSend_unsignedIntegerValue(v2, v3, v4);

  return v5;
}

- (NSString)representedApplicationBundle
{
  v3 = objc_msgSend_displayInformation(self, a2, v2);
  v5 = objc_msgSend_objectForKey_(v3, v4, @"ApplicationIdentifier");

  return v5;
}

- (BOOL)showInLockScreen
{
  v3 = objc_msgSend_displayInformation(self, a2, v2);
  v5 = objc_msgSend_objectForKey_(v3, v4, *MEMORY[0x1E695EE68]);
  v8 = objc_msgSend_intValue(v5, v6, v7) != 0;

  return v8;
}

- (BOOL)usesNotificationCenter
{
  v2 = objc_msgSend_objectForKey_(self->_reserved, a2, @"UsesNotificationCenter");
  v5 = objc_msgSend_intValue(v2, v3, v4) != 0;

  return v5;
}

- (void)setUserInfo:(id)a3
{
  reserved = self->_reserved;
  if (a3)
  {
    objc_msgSend_setObject_forKey_(reserved, a2, a3, @"UserInfo");
  }

  else
  {
    objc_msgSend_removeObjectForKey_(reserved, a2, @"UserInfo");
  }
}

- (unint64_t)responseFlags
{
  v2 = objc_msgSend_objectForKey_(self->_reserved, a2, @"ResponseFlags");
  v5 = objc_msgSend_unsignedIntegerValue(v2, v3, v4);

  return v5;
}

- (void)_setResponseFlags:(unint64_t)a3 responseInformation:(id)a4
{
  v10 = a4;
  v6 = objc_alloc(MEMORY[0x1E696AD98]);
  v9 = objc_msgSend_initWithUnsignedInteger_(v6, v7, a3);
  if (v9)
  {
    objc_msgSend_setObject_forKey_(self->_reserved, v8, v9, @"ResponseFlags");
  }

  if (v10)
  {
    objc_msgSend_setObject_forKey_(self->_reserved, v8, v10, @"ResponseInformation");
  }
}

@end