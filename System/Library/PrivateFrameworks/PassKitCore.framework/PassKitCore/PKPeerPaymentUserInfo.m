@interface PKPeerPaymentUserInfo
+ (id)userInfoFromContact:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isOutOfDate;
- (PKPeerPaymentUserInfo)initWithCoder:(id)a3;
- (PKPeerPaymentUserInfo)initWithDictionary:(id)a3;
- (id)contact;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPeerPaymentUserInfo

+ (id)userInfoFromContact:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(PKPeerPaymentUserInfo);
  v5 = [v3 postalAddresses];

  v6 = [v5 firstObject];
  v7 = [v6 value];

  if (v7)
  {
    v8 = [PKPeerPaymentAddress addressFromPostalAddress:v7];
    [(PKPeerPaymentUserInfo *)v4 setBillingAddress:v8];
  }

  return v4;
}

- (PKPeerPaymentUserInfo)initWithDictionary:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = PKPeerPaymentUserInfo;
  v5 = [(PKPeerPaymentUserInfo *)&v14 init];
  if (v5)
  {
    v6 = [PKPeerPaymentAddress alloc];
    v7 = [v4 PKDictionaryForKey:@"billingAddress"];
    v8 = [(PKPeerPaymentAddress *)v6 initWithDictionary:v7];
    billingAddress = v5->_billingAddress;
    v5->_billingAddress = v8;

    v10 = [v4 PKDateForKey:@"lastUpdated"];
    lastUpdated = v5->_lastUpdated;
    v5->_lastUpdated = v10;

    [v4 PKDoubleForKey:@"proactiveFetchPeriod"];
    v5->_proactiveFetchPeriod = v12;
  }

  return v5;
}

- (id)contact
{
  v9[1] = *MEMORY[0x1E69E9840];
  if (self->_billingAddress)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695CF18]);
    v4 = [(PKPeerPaymentAddress *)self->_billingAddress postalAddress];
    v5 = objc_alloc(MEMORY[0x1E695CEE0]);
    v6 = [v5 initWithLabel:*MEMORY[0x1E695CB60] value:v4];
    v9[0] = v6;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
    [v3 setPostalAddresses:v7];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)isOutOfDate
{
  if (!self->_lastUpdated)
  {
    return 1;
  }

  if (self->_proactiveFetchPeriod <= 0.0)
  {
    proactiveFetchPeriod = *&PKPeerPaymentUserInfoDefaultProactiveFetchPeriod;
  }

  else
  {
    proactiveFetchPeriod = self->_proactiveFetchPeriod;
  }

  v4 = [MEMORY[0x1E695DF00] date];
  [v4 timeIntervalSinceDate:self->_lastUpdated];
  v6 = v5 >= proactiveFetchPeriod;

  return v6;
}

- (PKPeerPaymentUserInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = PKPeerPaymentUserInfo;
  v5 = [(PKPeerPaymentUserInfo *)&v12 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"billingAddress"];
    billingAddress = v5->_billingAddress;
    v5->_billingAddress = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lastUpdated"];
    lastUpdated = v5->_lastUpdated;
    v5->_lastUpdated = v8;

    [v4 decodeDoubleForKey:@"proactiveFetchPeriod"];
    v5->_proactiveFetchPeriod = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  billingAddress = self->_billingAddress;
  v5 = a3;
  [v5 encodeObject:billingAddress forKey:@"billingAddress"];
  [v5 encodeObject:self->_lastUpdated forKey:@"lastUpdated"];
  [v5 encodeDouble:@"proactiveFetchPeriod" forKey:self->_proactiveFetchPeriod];
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E695DF70] array];
  [v3 safelyAddObject:self->_billingAddress];
  [v3 safelyAddObject:self->_lastUpdated];
  v4 = PKCombinedHash(17, v3);
  v5 = self->_proactiveFetchPeriod - v4 + 32 * v4;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_12;
  }

  billingAddress = self->_billingAddress;
  v6 = *(v4 + 1);
  if (billingAddress && v6)
  {
    if (![(PKPeerPaymentAddress *)billingAddress isEqual:?])
    {
      goto LABEL_12;
    }
  }

  else if (billingAddress != v6)
  {
    goto LABEL_12;
  }

  lastUpdated = self->_lastUpdated;
  v8 = *(v4 + 2);
  if (!lastUpdated || !v8)
  {
    if (lastUpdated == v8)
    {
      goto LABEL_10;
    }

LABEL_12:
    v9 = 0;
    goto LABEL_13;
  }

  if (([(NSDate *)lastUpdated isEqual:?]& 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_10:
  v9 = self->_proactiveFetchPeriod == v4[3];
LABEL_13:

  return v9;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [v3 appendFormat:@"billingAddress: '%@'; ", self->_billingAddress];
  [v3 appendFormat:@"lastUpdated: '%@'; ", self->_lastUpdated];
  [v3 appendFormat:@"proactiveFetchPeriod: '%lf'; ", *&self->_proactiveFetchPeriod];
  [v3 appendFormat:@">"];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[PKPeerPaymentUserInfo allocWithZone:](PKPeerPaymentUserInfo init];
  v6 = [(PKPeerPaymentAddress *)self->_billingAddress copyWithZone:a3];
  billingAddress = v5->_billingAddress;
  v5->_billingAddress = v6;

  v8 = [(NSDate *)self->_lastUpdated copyWithZone:a3];
  lastUpdated = v5->_lastUpdated;
  v5->_lastUpdated = v8;

  v5->_proactiveFetchPeriod = self->_proactiveFetchPeriod;
  return v5;
}

@end