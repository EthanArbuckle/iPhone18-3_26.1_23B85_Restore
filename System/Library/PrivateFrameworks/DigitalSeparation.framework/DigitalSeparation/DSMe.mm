@interface DSMe
- (DSMe)init;
- (DSMe)initWithMeIdentifier:(id)identifier emails:(id)emails phoneNumbers:(id)numbers;
@end

@implementation DSMe

- (DSMe)init
{
  v8.receiver = self;
  v8.super_class = DSMe;
  v2 = [(DSMe *)&v8 init];
  if (v2)
  {
    ds_meContactIdentifier = [MEMORY[0x277CBDAB8] ds_meContactIdentifier];
    [(DSMe *)v2 setMeCardIdentifier:ds_meContactIdentifier];

    v4 = objc_opt_new();
    ds_deviceOwnerEmails = [v4 ds_deviceOwnerEmails];
    [(DSMe *)v2 setEmails:ds_deviceOwnerEmails];

    ds_deviceOwnerPhoneNumbers = [v4 ds_deviceOwnerPhoneNumbers];
    [(DSMe *)v2 setPhoneNumbers:ds_deviceOwnerPhoneNumbers];
  }

  return v2;
}

- (DSMe)initWithMeIdentifier:(id)identifier emails:(id)emails phoneNumbers:(id)numbers
{
  identifierCopy = identifier;
  emailsCopy = emails;
  numbersCopy = numbers;
  v19.receiver = self;
  v19.super_class = DSMe;
  v11 = [(DSMe *)&v19 init];
  v12 = v11;
  if (v11)
  {
    [(DSMe *)v11 setMeCardIdentifier:identifierCopy];
    v13 = MEMORY[0x277CBEBF8];
    if (emailsCopy)
    {
      v14 = emailsCopy;
    }

    else
    {
      v14 = MEMORY[0x277CBEBF8];
    }

    v15 = [MEMORY[0x277CBEB98] setWithArray:v14];
    [(DSMe *)v12 setEmails:v15];

    if (numbersCopy)
    {
      v16 = numbersCopy;
    }

    else
    {
      v16 = v13;
    }

    v17 = [MEMORY[0x277CBEB98] setWithArray:v16];
    [(DSMe *)v12 setPhoneNumbers:v17];
  }

  return v12;
}

@end