@interface PKPeerPaymentUserInfo
+ (id)userInfoFromContact:(id)contact;
- (BOOL)isEqual:(id)equal;
- (BOOL)isOutOfDate;
- (PKPeerPaymentUserInfo)initWithCoder:(id)coder;
- (PKPeerPaymentUserInfo)initWithDictionary:(id)dictionary;
- (id)contact;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPeerPaymentUserInfo

+ (id)userInfoFromContact:(id)contact
{
  contactCopy = contact;
  v4 = objc_alloc_init(PKPeerPaymentUserInfo);
  postalAddresses = [contactCopy postalAddresses];

  firstObject = [postalAddresses firstObject];
  value = [firstObject value];

  if (value)
  {
    v8 = [PKPeerPaymentAddress addressFromPostalAddress:value];
    [(PKPeerPaymentUserInfo *)v4 setBillingAddress:v8];
  }

  return v4;
}

- (PKPeerPaymentUserInfo)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = PKPeerPaymentUserInfo;
  v5 = [(PKPeerPaymentUserInfo *)&v14 init];
  if (v5)
  {
    v6 = [PKPeerPaymentAddress alloc];
    v7 = [dictionaryCopy PKDictionaryForKey:@"billingAddress"];
    v8 = [(PKPeerPaymentAddress *)v6 initWithDictionary:v7];
    billingAddress = v5->_billingAddress;
    v5->_billingAddress = v8;

    v10 = [dictionaryCopy PKDateForKey:@"lastUpdated"];
    lastUpdated = v5->_lastUpdated;
    v5->_lastUpdated = v10;

    [dictionaryCopy PKDoubleForKey:@"proactiveFetchPeriod"];
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
    postalAddress = [(PKPeerPaymentAddress *)self->_billingAddress postalAddress];
    v5 = objc_alloc(MEMORY[0x1E695CEE0]);
    v6 = [v5 initWithLabel:*MEMORY[0x1E695CB60] value:postalAddress];
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

  date = [MEMORY[0x1E695DF00] date];
  [date timeIntervalSinceDate:self->_lastUpdated];
  v6 = v5 >= proactiveFetchPeriod;

  return v6;
}

- (PKPeerPaymentUserInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = PKPeerPaymentUserInfo;
  v5 = [(PKPeerPaymentUserInfo *)&v12 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"billingAddress"];
    billingAddress = v5->_billingAddress;
    v5->_billingAddress = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastUpdated"];
    lastUpdated = v5->_lastUpdated;
    v5->_lastUpdated = v8;

    [coderCopy decodeDoubleForKey:@"proactiveFetchPeriod"];
    v5->_proactiveFetchPeriod = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  billingAddress = self->_billingAddress;
  coderCopy = coder;
  [coderCopy encodeObject:billingAddress forKey:@"billingAddress"];
  [coderCopy encodeObject:self->_lastUpdated forKey:@"lastUpdated"];
  [coderCopy encodeDouble:@"proactiveFetchPeriod" forKey:self->_proactiveFetchPeriod];
}

- (unint64_t)hash
{
  array = [MEMORY[0x1E695DF70] array];
  [array safelyAddObject:self->_billingAddress];
  [array safelyAddObject:self->_lastUpdated];
  v4 = PKCombinedHash(17, array);
  v5 = self->_proactiveFetchPeriod - v4 + 32 * v4;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_12;
  }

  billingAddress = self->_billingAddress;
  v6 = *(equalCopy + 1);
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
  v8 = *(equalCopy + 2);
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
  v9 = self->_proactiveFetchPeriod == equalCopy[3];
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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[PKPeerPaymentUserInfo allocWithZone:](PKPeerPaymentUserInfo init];
  v6 = [(PKPeerPaymentAddress *)self->_billingAddress copyWithZone:zone];
  billingAddress = v5->_billingAddress;
  v5->_billingAddress = v6;

  v8 = [(NSDate *)self->_lastUpdated copyWithZone:zone];
  lastUpdated = v5->_lastUpdated;
  v5->_lastUpdated = v8;

  v5->_proactiveFetchPeriod = self->_proactiveFetchPeriod;
  return v5;
}

@end