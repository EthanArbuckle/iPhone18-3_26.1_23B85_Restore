@interface IMUserNotification
+ (id)userNotificationWithIdentifier:(id)identifier timeout:(double)timeout alertLevel:(unint64_t)level displayFlags:(unint64_t)flags displayInformation:(id)information;
+ (id)userNotificationWithIdentifier:(id)identifier title:(id)title message:(id)message defaultButton:(id)button alternateButton:(id)alternateButton otherButton:(id)otherButton;
+ (id)userNotificationWithIdentifier:(id)identifier title:(id)title message:(id)message defaultButton:(id)button defaultButtonStyle:(unint64_t)style alternateButton:(id)alternateButton alternateButtonStyle:(unint64_t)buttonStyle otherButton:(id)self0 otherButtonStyle:(unint64_t)self1;
- (BOOL)showInLockScreen;
- (BOOL)usesNotificationCenter;
- (NSString)representedApplicationBundle;
- (double)timeout;
- (id)_initWithIdentifier:(id)identifier timeout:(double)timeout displayFlags:(unint64_t)flags displayInformation:(id)information;
- (unint64_t)displayFlags;
- (unint64_t)responseFlags;
- (void)_setResponseFlags:(unint64_t)flags responseInformation:(id)information;
- (void)setUserInfo:(id)info;
@end

@implementation IMUserNotification

- (id)_initWithIdentifier:(id)identifier timeout:(double)timeout displayFlags:(unint64_t)flags displayInformation:(id)information
{
  identifierCopy = identifier;
  informationCopy = information;
  v33.receiver = self;
  v33.super_class = IMUserNotification;
  v12 = [(IMUserNotification *)&v33 init];
  if (v12)
  {
    v13 = objc_alloc(MEMORY[0x1E696AD98]);
    v16 = objc_msgSend_initWithDouble_(v13, v14, v15, timeout);
    v17 = objc_alloc(MEMORY[0x1E696AD98]);
    v19 = objc_msgSend_initWithUnsignedInteger_(v17, v18, flags);
    v20 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v22 = v20;
    if (identifierCopy)
    {
      objc_msgSend_setObject_forKey_(v20, v21, identifierCopy, @"Identifier");
    }

    if (v16)
    {
      objc_msgSend_setObject_forKey_(v22, v21, v16, @"Timeout");
    }

    if (v19)
    {
      objc_msgSend_setObject_forKey_(v22, v21, v19, @"DisplayFlags");
    }

    if (informationCopy)
    {
      v24 = objc_msgSend_objectForKey_(informationCopy, v21, @"IconURL");
      if (v24 && (v25 = *MEMORY[0x1E695EE80], objc_msgSend_objectForKey_(informationCopy, v23, *MEMORY[0x1E695EE80]), v26 = objc_claimAutoreleasedReturnValue(), v26, !v26))
      {
        v28 = objc_msgSend_mutableCopy(informationCopy, v23, v27);
        objc_msgSend_setObject_forKey_(v28, v29, v24, v25);
        objc_msgSend_setObject_forKey_(v22, v30, v28, @"DisplayInformation");
      }

      else
      {
        objc_msgSend_setObject_forKey_(v22, v23, informationCopy, @"DisplayInformation");
      }
    }

    reserved = v12->_reserved;
    v12->_reserved = v22;
  }

  return v12;
}

+ (id)userNotificationWithIdentifier:(id)identifier timeout:(double)timeout alertLevel:(unint64_t)level displayFlags:(unint64_t)flags displayInformation:(id)information
{
  informationCopy = information;
  identifierCopy = identifier;
  v14 = [self alloc];
  v16 = objc_msgSend__initWithIdentifier_timeout_displayFlags_displayInformation_(v14, v15, identifierCopy, flags | level, informationCopy, timeout);

  return v16;
}

+ (id)userNotificationWithIdentifier:(id)identifier title:(id)title message:(id)message defaultButton:(id)button alternateButton:(id)alternateButton otherButton:(id)otherButton
{
  otherButtonCopy = otherButton;
  alternateButtonCopy = alternateButton;
  buttonCopy = button;
  messageCopy = message;
  titleCopy = title;
  identifierCopy = identifier;
  v19 = objc_opt_class();
  v21 = objc_msgSend_userNotificationWithIdentifier_title_message_defaultButton_defaultButtonStyle_alternateButton_alternateButtonStyle_otherButton_otherButtonStyle_(v19, v20, identifierCopy, titleCopy, messageCopy, buttonCopy, 0, alternateButtonCopy, 0, otherButtonCopy, 0);

  return v21;
}

+ (id)userNotificationWithIdentifier:(id)identifier title:(id)title message:(id)message defaultButton:(id)button defaultButtonStyle:(unint64_t)style alternateButton:(id)alternateButton alternateButtonStyle:(unint64_t)buttonStyle otherButton:(id)self0 otherButtonStyle:(unint64_t)self1
{
  selfCopy = self;
  identifierCopy = identifier;
  titleCopy = title;
  messageCopy = message;
  buttonCopy = button;
  alternateButtonCopy = alternateButton;
  otherButtonCopy = otherButton;
  v21 = objc_alloc(MEMORY[0x1E695DF90]);
  v23 = objc_msgSend_initWithCapacity_(v21, v22, 5);
  if (!objc_msgSend_length(otherButtonCopy, v24, v25) || objc_msgSend_length(buttonCopy, v26, v27))
  {
    v28 = otherButtonCopy;
    otherButtonCopy = buttonCopy;
    if (!titleCopy)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v28 = 0;
  if (titleCopy)
  {
LABEL_4:
    objc_msgSend_setObject_forKey_(v23, v26, titleCopy, @"AlertHeader", selfCopy);
  }

LABEL_5:
  if (messageCopy)
  {
    objc_msgSend_setObject_forKey_(v23, v26, messageCopy, @"AlertMessage");
  }

  if (otherButtonCopy)
  {
    objc_msgSend_setObject_forKey_(v23, v26, otherButtonCopy, @"DefaultButtonTitle");
  }

  if (alternateButtonCopy)
  {
    objc_msgSend_setObject_forKey_(v23, v26, alternateButtonCopy, @"AlternateButtonTitle");
  }

  if (v28)
  {
    objc_msgSend_setObject_forKey_(v23, v26, v28, @"OtherButtonTitle");
  }

  if (style)
  {
    v29 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v26, style);
    objc_msgSend_setObject_forKey_(v23, v30, v29, @"SBUserNotificationDefaultButtonPresentationStyle");
  }

  if (buttonStyle)
  {
    v31 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v26, buttonStyle);
    objc_msgSend_setObject_forKey_(v23, v32, v31, @"SBUserNotificationAlternateButtonPresentationStyle");
  }

  if (otherButtonStyle)
  {
    v33 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v26, otherButtonStyle);
    objc_msgSend_setObject_forKey_(v23, v34, v33, @"SBUserNotificationOtherButtonPresentationStyle");
  }

  v35 = objc_msgSend_userNotificationWithIdentifier_timeout_alertLevel_displayFlags_displayInformation_(selfCopy, v26, identifierCopy, 3, 0, v23, 0.0, selfCopy);

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

- (void)setUserInfo:(id)info
{
  reserved = self->_reserved;
  if (info)
  {
    objc_msgSend_setObject_forKey_(reserved, a2, info, @"UserInfo");
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

- (void)_setResponseFlags:(unint64_t)flags responseInformation:(id)information
{
  informationCopy = information;
  v6 = objc_alloc(MEMORY[0x1E696AD98]);
  v9 = objc_msgSend_initWithUnsignedInteger_(v6, v7, flags);
  if (v9)
  {
    objc_msgSend_setObject_forKey_(self->_reserved, v8, v9, @"ResponseFlags");
  }

  if (informationCopy)
  {
    objc_msgSend_setObject_forKey_(self->_reserved, v8, informationCopy, @"ResponseInformation");
  }
}

@end