@interface PKPassLegalAgreement
- (PKPassLegalAgreement)initWithCoder:(id)coder;
- (PKPassLegalAgreement)initWithDictionary:(id)dictionary;
- (PKPassLegalAgreement)initWithIdentifier:(id)identifier type:(unint64_t)type agreementUpdated:(BOOL)updated removePassOnDecline:(BOOL)decline;
- (id)_initForDatabase;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPassLegalAgreement

- (id)_initForDatabase
{
  v3.receiver = self;
  v3.super_class = PKPassLegalAgreement;
  return [(PKPassLegalAgreement *)&v3 init];
}

- (PKPassLegalAgreement)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = dictionaryCopy;
  if (dictionaryCopy)
  {
    v6 = [dictionaryCopy PKStringForKey:@"identifier"];
    if (v6)
    {
      v7 = [v5 PKStringForKey:@"type"];
      selfCopy = PKUserLegalAgreementTypeFromString(v7);

      if (selfCopy)
      {
        self = -[PKPassLegalAgreement initWithIdentifier:type:agreementUpdated:removePassOnDecline:](self, "initWithIdentifier:type:agreementUpdated:removePassOnDecline:", v6, selfCopy, [v5 PKBoolForKey:@"agreementUpdated"], objc_msgSend(v5, "PKBoolForKey:", @"removePassOnDecline"));
        selfCopy = self;
      }
    }

    else
    {
      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (PKPassLegalAgreement)initWithIdentifier:(id)identifier type:(unint64_t)type agreementUpdated:(BOOL)updated removePassOnDecline:(BOOL)decline
{
  identifierCopy = identifier;
  v15.receiver = self;
  v15.super_class = PKPassLegalAgreement;
  v12 = [(PKPassLegalAgreement *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_identifier, identifier);
    v13->_type = type;
    v13->_agreementUpdated = updated;
    v13->_removePassOnDecline = decline;
  }

  return v13;
}

- (PKPassLegalAgreement)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = PKPassLegalAgreement;
  v5 = [(PKPassLegalAgreement *)&v10 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"type"];
    v5->_type = PKUserLegalAgreementTypeFromString(v8);
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"identifier"];
  v6 = PKUserLegalAgreementTypeToString(self->_type);
  [coderCopy encodeObject:v6 forKey:@"type"];
}

@end