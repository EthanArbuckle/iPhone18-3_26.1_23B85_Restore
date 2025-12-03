@interface PKPeerPaymentAdditionalPushTopics
- (BOOL)isEqual:(id)equal;
- (PKPeerPaymentAdditionalPushTopics)initWithCoder:(id)coder;
- (PKPeerPaymentAdditionalPushTopics)initWithDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPeerPaymentAdditionalPushTopics

- (PKPeerPaymentAdditionalPushTopics)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v15.receiver = self;
  v15.super_class = PKPeerPaymentAdditionalPushTopics;
  v5 = [(PKPeerPaymentAdditionalPushTopics *)&v15 init];
  if (v5)
  {
    v6 = [dictionaryCopy PKStringForKey:@"preferences"];
    preferences = v5->_preferences;
    v5->_preferences = v6;

    v8 = [dictionaryCopy PKStringForKey:@"associatedAccounts"];
    associatedAccounts = v5->_associatedAccounts;
    v5->_associatedAccounts = v8;

    v10 = [dictionaryCopy PKStringForKey:@"requests"];
    requests = v5->_requests;
    v5->_requests = v10;

    v12 = [dictionaryCopy PKStringForKey:@"endpoint"];
    endpoint = v5->_endpoint;
    v5->_endpoint = v12;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_19;
  }

  preferences = self->_preferences;
  v6 = equalCopy[1];
  if (preferences && v6)
  {
    if (([(NSString *)preferences isEqual:?]& 1) == 0)
    {
      goto LABEL_19;
    }
  }

  else if (preferences != v6)
  {
    goto LABEL_19;
  }

  associatedAccounts = self->_associatedAccounts;
  v8 = equalCopy[2];
  if (associatedAccounts && v8)
  {
    if (([(NSString *)associatedAccounts isEqual:?]& 1) == 0)
    {
      goto LABEL_19;
    }
  }

  else if (associatedAccounts != v8)
  {
    goto LABEL_19;
  }

  requests = self->_requests;
  v10 = equalCopy[3];
  if (!requests || !v10)
  {
    if (requests == v10)
    {
      goto LABEL_15;
    }

LABEL_19:
    v13 = 0;
    goto LABEL_20;
  }

  if (([(NSString *)requests isEqual:?]& 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_15:
  endpoint = self->_endpoint;
  v12 = equalCopy[4];
  if (endpoint && v12)
  {
    v13 = [(NSString *)endpoint isEqual:?];
  }

  else
  {
    v13 = endpoint == v12;
  }

LABEL_20:

  return v13;
}

- (unint64_t)hash
{
  array = [MEMORY[0x1E695DF70] array];
  [array safelyAddObject:self->_preferences];
  [array safelyAddObject:self->_associatedAccounts];
  [array safelyAddObject:self->_requests];
  [array safelyAddObject:self->_endpoint];
  v4 = PKCombinedHash(17, array);

  return v4;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [v3 appendFormat:@"preferences: '%@'; ", self->_preferences];
  [v3 appendFormat:@"associatedAccounts: '%@'; ", self->_associatedAccounts];
  [v3 appendFormat:@"requests: '%@'; ", self->_requests];
  [v3 appendFormat:@"endpoint: '%@'; ", self->_endpoint];
  [v3 appendFormat:@">"];

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[PKPeerPaymentAdditionalPushTopics allocWithZone:](PKPeerPaymentAdditionalPushTopics init];
  v6 = [(NSString *)self->_preferences copyWithZone:zone];
  preferences = v5->_preferences;
  v5->_preferences = v6;

  v8 = [(NSString *)self->_associatedAccounts copyWithZone:zone];
  associatedAccounts = v5->_associatedAccounts;
  v5->_associatedAccounts = v8;

  v10 = [(NSString *)self->_requests copyWithZone:zone];
  requests = v5->_requests;
  v5->_requests = v10;

  v12 = [(NSString *)self->_endpoint copyWithZone:zone];
  endpoint = v5->_endpoint;
  v5->_endpoint = v12;

  return v5;
}

- (PKPeerPaymentAdditionalPushTopics)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = PKPeerPaymentAdditionalPushTopics;
  v5 = [(PKPeerPaymentAdditionalPushTopics *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"preferences"];
    preferences = v5->_preferences;
    v5->_preferences = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"associatedAccounts"];
    associatedAccounts = v5->_associatedAccounts;
    v5->_associatedAccounts = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"requests"];
    requests = v5->_requests;
    v5->_requests = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"endpoint"];
    endpoint = v5->_endpoint;
    v5->_endpoint = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  preferences = self->_preferences;
  coderCopy = coder;
  [coderCopy encodeObject:preferences forKey:@"preferences"];
  [coderCopy encodeObject:self->_associatedAccounts forKey:@"associatedAccounts"];
  [coderCopy encodeObject:self->_requests forKey:@"requests"];
  [coderCopy encodeObject:self->_endpoint forKey:@"endpoint"];
}

@end