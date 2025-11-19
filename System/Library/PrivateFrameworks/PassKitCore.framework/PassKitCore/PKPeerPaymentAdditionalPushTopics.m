@interface PKPeerPaymentAdditionalPushTopics
- (BOOL)isEqual:(id)a3;
- (PKPeerPaymentAdditionalPushTopics)initWithCoder:(id)a3;
- (PKPeerPaymentAdditionalPushTopics)initWithDictionary:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPeerPaymentAdditionalPushTopics

- (PKPeerPaymentAdditionalPushTopics)initWithDictionary:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = PKPeerPaymentAdditionalPushTopics;
  v5 = [(PKPeerPaymentAdditionalPushTopics *)&v15 init];
  if (v5)
  {
    v6 = [v4 PKStringForKey:@"preferences"];
    preferences = v5->_preferences;
    v5->_preferences = v6;

    v8 = [v4 PKStringForKey:@"associatedAccounts"];
    associatedAccounts = v5->_associatedAccounts;
    v5->_associatedAccounts = v8;

    v10 = [v4 PKStringForKey:@"requests"];
    requests = v5->_requests;
    v5->_requests = v10;

    v12 = [v4 PKStringForKey:@"endpoint"];
    endpoint = v5->_endpoint;
    v5->_endpoint = v12;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_19;
  }

  preferences = self->_preferences;
  v6 = v4[1];
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
  v8 = v4[2];
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
  v10 = v4[3];
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
  v12 = v4[4];
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
  v3 = [MEMORY[0x1E695DF70] array];
  [v3 safelyAddObject:self->_preferences];
  [v3 safelyAddObject:self->_associatedAccounts];
  [v3 safelyAddObject:self->_requests];
  [v3 safelyAddObject:self->_endpoint];
  v4 = PKCombinedHash(17, v3);

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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[PKPeerPaymentAdditionalPushTopics allocWithZone:](PKPeerPaymentAdditionalPushTopics init];
  v6 = [(NSString *)self->_preferences copyWithZone:a3];
  preferences = v5->_preferences;
  v5->_preferences = v6;

  v8 = [(NSString *)self->_associatedAccounts copyWithZone:a3];
  associatedAccounts = v5->_associatedAccounts;
  v5->_associatedAccounts = v8;

  v10 = [(NSString *)self->_requests copyWithZone:a3];
  requests = v5->_requests;
  v5->_requests = v10;

  v12 = [(NSString *)self->_endpoint copyWithZone:a3];
  endpoint = v5->_endpoint;
  v5->_endpoint = v12;

  return v5;
}

- (PKPeerPaymentAdditionalPushTopics)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = PKPeerPaymentAdditionalPushTopics;
  v5 = [(PKPeerPaymentAdditionalPushTopics *)&v15 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"preferences"];
    preferences = v5->_preferences;
    v5->_preferences = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"associatedAccounts"];
    associatedAccounts = v5->_associatedAccounts;
    v5->_associatedAccounts = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"requests"];
    requests = v5->_requests;
    v5->_requests = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"endpoint"];
    endpoint = v5->_endpoint;
    v5->_endpoint = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  preferences = self->_preferences;
  v5 = a3;
  [v5 encodeObject:preferences forKey:@"preferences"];
  [v5 encodeObject:self->_associatedAccounts forKey:@"associatedAccounts"];
  [v5 encodeObject:self->_requests forKey:@"requests"];
  [v5 encodeObject:self->_endpoint forKey:@"endpoint"];
}

@end