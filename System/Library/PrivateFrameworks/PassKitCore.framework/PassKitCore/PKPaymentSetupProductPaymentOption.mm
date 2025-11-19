@interface PKPaymentSetupProductPaymentOption
- (PKPaymentSetupProductPaymentOption)initWithCoder:(id)a3;
- (PKPaymentSetupProductPaymentOption)initWithPaymentOptionDictionary:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPaymentSetupProductPaymentOption

- (PKPaymentSetupProductPaymentOption)initWithPaymentOptionDictionary:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v19.receiver = self;
  v19.super_class = PKPaymentSetupProductPaymentOption;
  v5 = [(PKPaymentSetupProductPaymentOption *)&v19 init];
  if (v5)
  {
    v5->_priority = [v4 PKIntegerForKey:@"priority"];
    v5->_cardType = [v4 PKIntegerForKey:@"cardTypeCode"];
    v14 = [v4 PKStringForKey:@"protocols"];
    v6 = [v14 componentsSeparatedByString:{@", "}];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = [v6 countByEnumeratingWithState:&v15 objects:v20 count:16];
    if (!v7)
    {
      goto LABEL_16;
    }

    v8 = v7;
    v9 = *v16;
    while (1)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        if ([v11 caseInsensitiveCompare:@"a"])
        {
          if ([v11 caseInsensitiveCompare:@"b"])
          {
            if ([v11 caseInsensitiveCompare:@"f"])
            {
              continue;
            }

            v12 = 4;
          }

          else
          {
            v12 = 2;
          }
        }

        else
        {
          v12 = 1;
        }

        v5->_supportedProtocols |= v12;
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v20 count:16];
      if (!v8)
      {
LABEL_16:

        break;
      }
    }
  }

  return v5;
}

- (PKPaymentSetupProductPaymentOption)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = PKPaymentSetupProductPaymentOption;
  v5 = [(PKPaymentSetupProductPaymentOption *)&v7 init];
  if (v5)
  {
    v5->_priority = [v4 decodeIntegerForKey:@"priority"];
    v5->_cardType = [v4 decodeIntegerForKey:@"cardTypeCode"];
    v5->_supportedProtocols = [v4 decodeIntegerForKey:@"protocols"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  priority = self->_priority;
  v5 = a3;
  [v5 encodeInteger:priority forKey:@"priority"];
  [v5 encodeInteger:self->_cardType forKey:@"cardTypeCode"];
  [v5 encodeInteger:self->_supportedProtocols forKey:@"protocols"];
}

@end