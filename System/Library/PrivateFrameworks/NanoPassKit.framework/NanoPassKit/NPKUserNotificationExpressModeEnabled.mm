@interface NPKUserNotificationExpressModeEnabled
- (BOOL)wantsBadgedIcon;
- (NPKUserNotificationExpressModeEnabled)initWithPass:(id)pass expressNotificationType:(unint64_t)type;
- (id)body;
- (id)title;
- (id)userInfo;
@end

@implementation NPKUserNotificationExpressModeEnabled

- (NPKUserNotificationExpressModeEnabled)initWithPass:(id)pass expressNotificationType:(unint64_t)type
{
  v22 = *MEMORY[0x277D85DE8];
  passCopy = pass;
  v17.receiver = self;
  v17.super_class = NPKUserNotificationExpressModeEnabled;
  v7 = [(NPKPassUserNotification *)&v17 initWithPass:passCopy];
  if (v7)
  {
    paymentPass = [passCopy paymentPass];
    isHomeKeyPass = [paymentPass isHomeKeyPass];

    if (isHomeKeyPass)
    {
      v7->_expressNotificationType = type;
    }

    else
    {
      v10 = pk_General_log();
      v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);

      if (v11)
      {
        v12 = pk_General_log();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = objc_opt_class();
          uniqueID = [passCopy uniqueID];
          *buf = 138412546;
          v19 = v13;
          v20 = 2112;
          v21 = uniqueID;
          _os_log_impl(&dword_25B300000, v12, OS_LOG_TYPE_DEFAULT, "Warning: %@ only supports notifications for Home Key passes. Pass with uniqueID: %@", buf, 0x16u);
        }
      }

      v7 = 0;
    }
  }

  v15 = *MEMORY[0x277D85DE8];
  return v7;
}

- (id)title
{
  expressNotificationType = self->_expressNotificationType;
  if (expressNotificationType <= 2)
  {
    v4 = off_279948568[expressNotificationType];
    v5 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.NanoPassKit"];
    v2 = [v5 localizedStringForKey:v4 value:&stru_286C934F8 table:@"NanoPassKit-HomeKey"];
  }

  return v2;
}

- (id)body
{
  p_isa = &self->super.super.super.isa;
  pass = [(NPKPassUserNotification *)self pass];
  localizedDescription = [pass localizedDescription];

  v5 = p_isa[2];
  if (v5 <= 2)
  {
    v6 = off_279948580[v5];
    v7 = MEMORY[0x277CCACA8];
    v8 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.NanoPassKit"];
    v9 = [v8 localizedStringForKey:v6 value:&stru_286C934F8 table:@"NanoPassKit-HomeKey"];
    p_isa = [v7 stringWithFormat:v9, localizedDescription];
  }

  return p_isa;
}

- (id)userInfo
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7[0] = *MEMORY[0x277D38848];
  pass = [(NPKPassUserNotification *)self pass];
  uniqueID = [pass uniqueID];
  v7[1] = *MEMORY[0x277D38AE0];
  v8[0] = uniqueID;
  v8[1] = @"false";
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (BOOL)wantsBadgedIcon
{
  pass = [(NPKPassUserNotification *)self pass];
  secureElementPass = [pass secureElementPass];

  pass2 = [(NPKPassUserNotification *)self pass];
  rawIcon = [pass2 rawIcon];
  if (rawIcon && secureElementPass && ([secureElementPass isAppleCardPass] & 1) == 0)
  {
    isPeerPaymentPass = [secureElementPass isPeerPaymentPass];

    if ((isPeerPaymentPass & 1) == 0)
    {
      v7 = 1;
      goto LABEL_6;
    }
  }

  else
  {
  }

  v7 = 0;
LABEL_6:

  return v7;
}

@end