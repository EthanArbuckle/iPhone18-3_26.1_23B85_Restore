@interface PKLongTermPrivacyKey
- (PKLongTermPrivacyKey)initWithSESPrivacyKey:(id)key;
- (id)description;
@end

@implementation PKLongTermPrivacyKey

- (PKLongTermPrivacyKey)initWithSESPrivacyKey:(id)key
{
  keyCopy = key;
  v15.receiver = self;
  v15.super_class = PKLongTermPrivacyKey;
  v5 = [(PKLongTermPrivacyKey *)&v15 init];
  if (v5)
  {
    keyIdentifier = [keyCopy keyIdentifier];
    keyIdentifier = v5->_keyIdentifier;
    v5->_keyIdentifier = keyIdentifier;

    publicKey = [keyCopy publicKey];
    publicKey = v5->_publicKey;
    v5->_publicKey = publicKey;

    creationDate = [keyCopy creationDate];
    creationDate = v5->_creationDate;
    v5->_creationDate = creationDate;

    groupIdentifier = [keyCopy groupIdentifier];
    groupIdentifier = v5->_groupIdentifier;
    v5->_groupIdentifier = groupIdentifier;
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