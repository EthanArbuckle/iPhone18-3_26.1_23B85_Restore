@interface PKLongTermPrivacyKey
- (PKLongTermPrivacyKey)initWithSESPrivacyKey:(id)a3;
- (id)description;
@end

@implementation PKLongTermPrivacyKey

- (PKLongTermPrivacyKey)initWithSESPrivacyKey:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = PKLongTermPrivacyKey;
  v5 = [(PKLongTermPrivacyKey *)&v15 init];
  if (v5)
  {
    v6 = [v4 keyIdentifier];
    keyIdentifier = v5->_keyIdentifier;
    v5->_keyIdentifier = v6;

    v8 = [v4 publicKey];
    publicKey = v5->_publicKey;
    v5->_publicKey = v8;

    v10 = [v4 creationDate];
    creationDate = v5->_creationDate;
    v5->_creationDate = v10;

    v12 = [v4 groupIdentifier];
    groupIdentifier = v5->_groupIdentifier;
    v5->_groupIdentifier = v12;
  }

  return v5;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [v3 appendFormat:@"keyIdentifier: '%@'; ", self->_keyIdentifier];
  [v3 appendFormat:@"publicKey: '%@'; ", self->_publicKey];
  [v3 appendFormat:@"creationDate: '%@'; ", self->_creationDate];
  [v3 appendFormat:@"groupIdentifier: '%@'; ", self->_groupIdentifier];
  [v3 appendFormat:@">"];

  return v3;
}

@end