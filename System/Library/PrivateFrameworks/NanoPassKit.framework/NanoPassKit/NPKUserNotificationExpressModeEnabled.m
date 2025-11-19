@interface NPKUserNotificationExpressModeEnabled
- (BOOL)wantsBadgedIcon;
- (NPKUserNotificationExpressModeEnabled)initWithPass:(id)a3 expressNotificationType:(unint64_t)a4;
- (id)body;
- (id)title;
- (id)userInfo;
@end

@implementation NPKUserNotificationExpressModeEnabled

- (NPKUserNotificationExpressModeEnabled)initWithPass:(id)a3 expressNotificationType:(unint64_t)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v17.receiver = self;
  v17.super_class = NPKUserNotificationExpressModeEnabled;
  v7 = [(NPKPassUserNotification *)&v17 initWithPass:v6];
  if (v7)
  {
    v8 = [v6 paymentPass];
    v9 = [v8 isHomeKeyPass];

    if (v9)
    {
      v7->_expressNotificationType = a4;
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
          v14 = [v6 uniqueID];
          *buf = 138412546;
          v19 = v13;
          v20 = 2112;
          v21 = v14;
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
  v3 = [(NPKPassUserNotification *)self pass];
  v4 = [v3 localizedDescription];

  v5 = p_isa[2];
  if (v5 <= 2)
  {
    v6 = off_279948580[v5];
    v7 = MEMORY[0x277CCACA8];
    v8 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.NanoPassKit"];
    v9 = [v8 localizedStringForKey:v6 value:&stru_286C934F8 table:@"NanoPassKit-HomeKey"];
    p_isa = [v7 stringWithFormat:v9, v4];
  }

  return p_isa;
}

- (id)userInfo
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7[0] = *MEMORY[0x277D38848];
  v2 = [(NPKPassUserNotification *)self pass];
  v3 = [v2 uniqueID];
  v7[1] = *MEMORY[0x277D38AE0];
  v8[0] = v3;
  v8[1] = @"false";
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (BOOL)wantsBadgedIcon
{
  v3 = [(NPKPassUserNotification *)self pass];
  v4 = [v3 secureElementPass];

  v5 = [(NPKPassUserNotification *)self pass];
  v6 = [v5 rawIcon];
  if (v6 && v4 && ([v4 isAppleCardPass] & 1) == 0)
  {
    v9 = [v4 isPeerPaymentPass];

    if ((v9 & 1) == 0)
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