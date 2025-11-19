@interface CKSettingsCriticalMessagesAppRecipient
- (CKSettingsCriticalMessagesAppRecipient)initWithRecipient:(id)a3 isActive:(BOOL)a4;
- (id)_formattedPhoneNumberForNumber:(id)a3;
- (id)number;
@end

@implementation CKSettingsCriticalMessagesAppRecipient

- (CKSettingsCriticalMessagesAppRecipient)initWithRecipient:(id)a3 isActive:(BOOL)a4
{
  v7 = a3;
  v14.receiver = self;
  v14.super_class = CKSettingsCriticalMessagesAppRecipient;
  v8 = [(CKSettingsCriticalMessagesAppRecipient *)&v14 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_recipient, a3);
    v9->_isActive = a4;
    v10 = [v7 phoneNumber];
    v11 = [(CKSettingsCriticalMessagesAppRecipient *)v9 _formattedPhoneNumberForNumber:v10];
    formattedPhoneNumber = v9->_formattedPhoneNumber;
    v9->_formattedPhoneNumber = v11;
  }

  return v9;
}

- (id)_formattedPhoneNumberForNumber:(id)a3
{
  v3 = a3;
  if (!sCountryCode)
  {
    v4 = [MEMORY[0x277CBEAF8] currentLocale];
    v5 = [v4 objectForKey:*MEMORY[0x277CBE690]];
    v6 = [v5 lowercaseString];
    v7 = sCountryCode;
    sCountryCode = v6;
  }

  v8 = *MEMORY[0x277CBECE8];
  v9 = CFPhoneNumberCreate();
  if (v9)
  {
    v10 = v9;
    String = CFPhoneNumberCreateString();
    if (String)
    {
      v12 = String;
      CFRelease(v10);
LABEL_7:
      v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"+%@", v12];

      goto LABEL_9;
    }

    v12 = CFPhoneNumberCreateString();
    CFRelease(v10);
    if (v12)
    {
      goto LABEL_7;
    }
  }

  v13 = v3;
LABEL_9:

  return v13;
}

- (id)number
{
  literalNumber = self->_literalNumber;
  if (!literalNumber)
  {
    v4 = objc_alloc_init(MEMORY[0x277CCABB8]);
    [v4 setNumberStyle:1];
    v5 = [(IMBackgroundMessageRecipient *)self->_recipient phoneNumber];
    v6 = [v4 numberFromString:v5];
    v7 = self->_literalNumber;
    self->_literalNumber = v6;

    literalNumber = self->_literalNumber;
  }

  return literalNumber;
}

@end