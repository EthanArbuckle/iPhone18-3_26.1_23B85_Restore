@interface PKPassLegalAgreement
- (PKPassLegalAgreement)initWithCoder:(id)a3;
- (PKPassLegalAgreement)initWithDictionary:(id)a3;
- (PKPassLegalAgreement)initWithIdentifier:(id)a3 type:(unint64_t)a4 agreementUpdated:(BOOL)a5 removePassOnDecline:(BOOL)a6;
- (id)_initForDatabase;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPassLegalAgreement

- (id)_initForDatabase
{
  v3.receiver = self;
  v3.super_class = PKPassLegalAgreement;
  return [(PKPassLegalAgreement *)&v3 init];
}

- (PKPassLegalAgreement)initWithDictionary:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 PKStringForKey:@"identifier"];
    if (v6)
    {
      v7 = [v5 PKStringForKey:@"type"];
      v8 = PKUserLegalAgreementTypeFromString(v7);

      if (v8)
      {
        self = -[PKPassLegalAgreement initWithIdentifier:type:agreementUpdated:removePassOnDecline:](self, "initWithIdentifier:type:agreementUpdated:removePassOnDecline:", v6, v8, [v5 PKBoolForKey:@"agreementUpdated"], objc_msgSend(v5, "PKBoolForKey:", @"removePassOnDecline"));
        v8 = self;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (PKPassLegalAgreement)initWithIdentifier:(id)a3 type:(unint64_t)a4 agreementUpdated:(BOOL)a5 removePassOnDecline:(BOOL)a6
{
  v11 = a3;
  v15.receiver = self;
  v15.super_class = PKPassLegalAgreement;
  v12 = [(PKPassLegalAgreement *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_identifier, a3);
    v13->_type = a4;
    v13->_agreementUpdated = a5;
    v13->_removePassOnDecline = a6;
  }

  return v13;
}

- (PKPassLegalAgreement)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = PKPassLegalAgreement;
  v5 = [(PKPassLegalAgreement *)&v10 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"type"];
    v5->_type = PKUserLegalAgreementTypeFromString(v8);
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"identifier"];
  v6 = PKUserLegalAgreementTypeToString(self->_type);
  [v5 encodeObject:v6 forKey:@"type"];
}

@end