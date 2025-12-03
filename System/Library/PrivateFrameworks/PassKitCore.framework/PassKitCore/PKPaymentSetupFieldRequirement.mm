@interface PKPaymentSetupFieldRequirement
- (PKPaymentSetupFieldRequirement)initWithDictionary:(id)dictionary;
@end

@implementation PKPaymentSetupFieldRequirement

- (PKPaymentSetupFieldRequirement)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v18.receiver = self;
  v18.super_class = PKPaymentSetupFieldRequirement;
  v5 = [(PKPaymentSetupFieldRequirement *)&v18 init];
  if (!v5)
  {
    goto LABEL_10;
  }

  v6 = [dictionaryCopy PKStringForKey:@"type"];
  v7 = v6;
  v9 = 1;
  if (v6 != @"field")
  {
    if (!v6 || (v8 = [(__CFString *)v6 isEqualToString:@"field"], v7, !v8))
    {
      v9 = 0;
    }
  }

  v5->_type = v9;
  v10 = [dictionaryCopy PKStringForKey:@"field"];
  fieldIdentifier = v5->_fieldIdentifier;
  v5->_fieldIdentifier = v10;

  v12 = [dictionaryCopy PKStringForKey:@"value"];
  value = v5->_value;
  v5->_value = v12;

  if (!v5->_value)
  {
    v14 = [dictionaryCopy PKDateForKey:@"value"];
    v15 = v5->_value;
    v5->_value = v14;
  }

  if (!v5->_type)
  {
    v16 = 0;
  }

  else
  {
LABEL_10:
    v16 = v5;
  }

  return v16;
}

@end