@interface PKPayment
+ (PKPayment)paymentWithProtobuf:(id)protobuf;
- (ABRecordRef)billingAddress;
- (ABRecordRef)shippingAddress;
- (PKPayment)initWithCoder:(id)coder;
- (PKPayment)initWithToken:(id)token;
- (id)description;
- (id)dictionaryRepresentation;
- (id)protobuf;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPayment

+ (PKPayment)paymentWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v4 = objc_alloc_init(PKPayment);
  token = [protobufCopy token];
  v6 = [PKPaymentToken paymentTokenWithProtobuf:token];
  [(PKPayment *)v4 setToken:v6];

  billingContact = [protobufCopy billingContact];

  if (billingContact)
  {
    v8 = MEMORY[0x1E696ACD0];
    v9 = objc_opt_class();
    billingContact2 = [protobufCopy billingContact];
    v11 = [v8 unarchivedObjectOfClass:v9 fromData:billingContact2 error:0];
    [(PKPayment *)v4 setBillingContact:v11];
  }

  shippingContact = [protobufCopy shippingContact];

  if (shippingContact)
  {
    v13 = MEMORY[0x1E696ACD0];
    v14 = objc_opt_class();
    shippingContact2 = [protobufCopy shippingContact];
    v16 = [v13 unarchivedObjectOfClass:v14 fromData:shippingContact2 error:0];
    [(PKPayment *)v4 setShippingContact:v16];
  }

  shippingMethod = [protobufCopy shippingMethod];

  if (shippingMethod)
  {
    shippingMethod2 = [protobufCopy shippingMethod];
    v19 = [PKShippingMethod shippingMethodWithProtobuf:shippingMethod2];
    [(PKPayment *)v4 setShippingMethod:v19];
  }

  return v4;
}

- (id)protobuf
{
  v3 = objc_alloc_init(PKProtobufPayment);
  token = [(PKPayment *)self token];
  protobuf = [token protobuf];
  [(PKProtobufPayment *)v3 setToken:protobuf];

  billingContact = [(PKPayment *)self billingContact];

  if (billingContact)
  {
    v7 = MEMORY[0x1E696ACC8];
    billingContact2 = [(PKPayment *)self billingContact];
    v9 = [v7 archivedDataWithRootObject:billingContact2 requiringSecureCoding:1 error:0];
    [(PKProtobufPayment *)v3 setBillingContact:v9];
  }

  shippingContact = [(PKPayment *)self shippingContact];

  if (shippingContact)
  {
    v11 = MEMORY[0x1E696ACC8];
    shippingContact2 = [(PKPayment *)self shippingContact];
    v13 = [v11 archivedDataWithRootObject:shippingContact2 requiringSecureCoding:1 error:0];
    [(PKProtobufPayment *)v3 setShippingContact:v13];
  }

  shippingMethod = [(PKPayment *)self shippingMethod];

  if (shippingMethod)
  {
    shippingMethod2 = [(PKPayment *)self shippingMethod];
    shippingMethodProtobuf = [shippingMethod2 shippingMethodProtobuf];
    [(PKProtobufPayment *)v3 setShippingMethod:shippingMethodProtobuf];
  }

  return v3;
}

- (PKPayment)initWithToken:(id)token
{
  tokenCopy = token;
  v9.receiver = self;
  v9.super_class = PKPayment;
  v6 = [(PKPayment *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_token, token);
  }

  return v7;
}

- (ABRecordRef)shippingAddress
{
  cnMutableContact = [(PKContact *)self->_shippingContact cnMutableContact];
  aBPerson = [cnMutableContact ABPerson];

  return aBPerson;
}

- (ABRecordRef)billingAddress
{
  cnMutableContact = [(PKContact *)self->_billingContact cnMutableContact];
  aBPerson = [cnMutableContact ABPerson];

  return aBPerson;
}

- (PKPayment)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = PKPayment;
  v5 = [(PKPayment *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"token"];
    [(PKPayment *)v5 setToken:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"shippingContact"];
    [(PKPayment *)v5 setShippingContact:v7];

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"billingContact"];
    [(PKPayment *)v5 setBillingContact:v8];

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"shippingMethod"];
    [(PKPayment *)v5 setShippingMethod:v9];

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"credential"];
    [(PKPayment *)v5 setCredential:v10];

    v11 = [coderCopy decodePropertyListForKey:@"authKitAuthenticationResults"];
    v12 = [v11 mutableCopy];
    [(PKPayment *)v5 setAuthKitAuthenticationResults:v12];

    -[PKPayment setBiometricAuthorizationAttempts:](v5, "setBiometricAuthorizationAttempts:", [coderCopy decodeIntegerForKey:@"biometryAttempts"]);
    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"installmentAuthorizationToken"];
    [(PKPayment *)v5 setInstallmentAuthorizationToken:v13];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  token = [(PKPayment *)self token];
  [coderCopy encodeObject:token forKey:@"token"];

  shippingContact = [(PKPayment *)self shippingContact];
  [coderCopy encodeObject:shippingContact forKey:@"shippingContact"];

  billingContact = [(PKPayment *)self billingContact];
  [coderCopy encodeObject:billingContact forKey:@"billingContact"];

  shippingMethod = [(PKPayment *)self shippingMethod];
  [coderCopy encodeObject:shippingMethod forKey:@"shippingMethod"];

  credential = [(PKPayment *)self credential];
  [coderCopy encodeObject:credential forKey:@"credential"];

  authKitAuthenticationResults = [(PKPayment *)self authKitAuthenticationResults];
  v11 = [authKitAuthenticationResults copy];
  [coderCopy encodeObject:v11 forKey:@"authKitAuthenticationResults"];

  [coderCopy encodeInteger:-[PKPayment biometricAuthorizationAttempts](self forKey:{"biometricAuthorizationAttempts"), @"biometryAttempts"}];
  installmentAuthorizationToken = [(PKPayment *)self installmentAuthorizationToken];
  [coderCopy encodeObject:installmentAuthorizationToken forKey:@"installmentAuthorizationToken"];
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  v4 = v3;
  if (self->_token)
  {
    [v3 appendFormat:@"token: %@", self->_token];
  }

  [v4 appendFormat:@">"];
  v5 = [v4 copy];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  shippingContact = self->_shippingContact;
  if (shippingContact)
  {
    dictionaryRepresentation = [(PKContact *)shippingContact dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation forKeyedSubscript:@"shippingContact"];
  }

  billingContact = self->_billingContact;
  if (billingContact)
  {
    dictionaryRepresentation2 = [(PKContact *)billingContact dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation2 forKeyedSubscript:@"billingContact"];
  }

  shippingMethod = self->_shippingMethod;
  if (shippingMethod)
  {
    dictionaryRepresentation3 = [(PKShippingMethod *)shippingMethod dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation3 forKeyedSubscript:@"shippingMethod"];
  }

  token = self->_token;
  if (token)
  {
    dictionaryRepresentation4 = [(PKPaymentToken *)token dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation4 forKeyedSubscript:@"paymentToken"];
  }

  v12 = [v3 copy];

  return v12;
}

@end