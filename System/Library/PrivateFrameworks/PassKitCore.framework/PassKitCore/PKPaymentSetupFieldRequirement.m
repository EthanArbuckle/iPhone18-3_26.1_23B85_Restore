@interface PKPaymentSetupFieldRequirement
- (PKPaymentSetupFieldRequirement)initWithDictionary:(id)a3;
@end

@implementation PKPaymentSetupFieldRequirement

- (PKPaymentSetupFieldRequirement)initWithDictionary:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = PKPaymentSetupFieldRequirement;
  v5 = [(PKPaymentSetupFieldRequirement *)&v18 init];
  if (!v5)
  {
    goto LABEL_10;
  }

  v6 = [v4 PKStringForKey:@"type"];
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
  v10 = [v4 PKStringForKey:@"field"];
  fieldIdentifier = v5->_fieldIdentifier;
  v5->_fieldIdentifier = v10;

  v12 = [v4 PKStringForKey:@"value"];
  value = v5->_value;
  v5->_value = v12;

  if (!v5->_value)
  {
    v14 = [v4 PKDateForKey:@"value"];
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