@interface DSMe
- (DSMe)init;
- (DSMe)initWithMeIdentifier:(id)a3 emails:(id)a4 phoneNumbers:(id)a5;
@end

@implementation DSMe

- (DSMe)init
{
  v8.receiver = self;
  v8.super_class = DSMe;
  v2 = [(DSMe *)&v8 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBDAB8] ds_meContactIdentifier];
    [(DSMe *)v2 setMeCardIdentifier:v3];

    v4 = objc_opt_new();
    v5 = [v4 ds_deviceOwnerEmails];
    [(DSMe *)v2 setEmails:v5];

    v6 = [v4 ds_deviceOwnerPhoneNumbers];
    [(DSMe *)v2 setPhoneNumbers:v6];
  }

  return v2;
}

- (DSMe)initWithMeIdentifier:(id)a3 emails:(id)a4 phoneNumbers:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = DSMe;
  v11 = [(DSMe *)&v19 init];
  v12 = v11;
  if (v11)
  {
    [(DSMe *)v11 setMeCardIdentifier:v8];
    v13 = MEMORY[0x277CBEBF8];
    if (v9)
    {
      v14 = v9;
    }

    else
    {
      v14 = MEMORY[0x277CBEBF8];
    }

    v15 = [MEMORY[0x277CBEB98] setWithArray:v14];
    [(DSMe *)v12 setEmails:v15];

    if (v10)
    {
      v16 = v10;
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