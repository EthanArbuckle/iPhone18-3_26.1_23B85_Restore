@interface PKPeerPaymentRecurringPaymentFundingSource
+ (id)fundingSourceWithDictionary:(id)dictionary;
+ (id)fundingSourceWithPass:(id)pass;
- (BOOL)isEqual:(id)equal;
- (PKPeerPaymentRecurringPaymentFundingSource)initWithCoder:(id)coder;
- (PKPeerPaymentRecurringPaymentFundingSource)initWithDictionary:(id)dictionary;
- (PKPeerPaymentRecurringPaymentFundingSource)initWithPass:(id)pass;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPeerPaymentRecurringPaymentFundingSource

+ (id)fundingSourceWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [[self alloc] initWithDictionary:dictionaryCopy];

  return v5;
}

- (PKPeerPaymentRecurringPaymentFundingSource)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v22.receiver = self;
  v22.super_class = PKPeerPaymentRecurringPaymentFundingSource;
  v5 = [(PKPeerPaymentRecurringPaymentFundingSource *)&v22 init];
  if (v5)
  {
    v6 = [dictionaryCopy PKStringForKey:@"dpanIdentifier"];
    v7 = [v6 copy];
    dpanIdentifier = v5->_dpanIdentifier;
    v5->_dpanIdentifier = v7;

    v9 = [dictionaryCopy PKStringForKey:@"fpanIdentifier"];
    v10 = [v9 copy];
    fpanIdentifier = v5->_fpanIdentifier;
    v5->_fpanIdentifier = v10;

    v12 = [dictionaryCopy PKStringForKey:@"mpanIdentifier"];
    v13 = [v12 copy];
    mpanIdentifier = v5->_mpanIdentifier;
    v5->_mpanIdentifier = v13;

    v15 = [dictionaryCopy PKStringForKey:@"name"];
    v16 = [v15 copy];
    name = v5->_name;
    v5->_name = v16;

    v5->_type = [dictionaryCopy PKIntegerForKey:@"type"];
    v5->_network = [dictionaryCopy PKIntegerForKey:@"network"];
    v18 = [dictionaryCopy PKStringForKey:@"suffix"];
    v19 = [v18 copy];
    suffix = v5->_suffix;
    v5->_suffix = v19;
  }

  return v5;
}

+ (id)fundingSourceWithPass:(id)pass
{
  passCopy = pass;
  v5 = [[self alloc] initWithPass:passCopy];

  return v5;
}

- (PKPeerPaymentRecurringPaymentFundingSource)initWithPass:(id)pass
{
  passCopy = pass;
  v16.receiver = self;
  v16.super_class = PKPeerPaymentRecurringPaymentFundingSource;
  v5 = [(PKPeerPaymentRecurringPaymentFundingSource *)&v16 init];
  if (v5)
  {
    devicePrimaryInAppPaymentApplication = [passCopy devicePrimaryInAppPaymentApplication];
    dpanIdentifier = [devicePrimaryInAppPaymentApplication dpanIdentifier];
    dpanIdentifier = v5->_dpanIdentifier;
    v5->_dpanIdentifier = dpanIdentifier;

    primaryAccountIdentifier = [passCopy primaryAccountIdentifier];
    fpanIdentifier = v5->_fpanIdentifier;
    v5->_fpanIdentifier = primaryAccountIdentifier;

    localizedDescription = [passCopy localizedDescription];
    name = v5->_name;
    v5->_name = localizedDescription;

    v5->_type = [devicePrimaryInAppPaymentApplication paymentType];
    v5->_network = [devicePrimaryInAppPaymentApplication paymentNetworkIdentifier];
    primaryAccountNumberSuffix = [passCopy primaryAccountNumberSuffix];
    suffix = v5->_suffix;
    v5->_suffix = primaryAccountNumberSuffix;
  }

  return v5;
}

- (PKPeerPaymentRecurringPaymentFundingSource)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = PKPeerPaymentRecurringPaymentFundingSource;
  v5 = [(PKPeerPaymentRecurringPaymentFundingSource *)&v17 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dpanIdentifier"];
    dpanIdentifier = v5->_dpanIdentifier;
    v5->_dpanIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"fpanIdentifier"];
    fpanIdentifier = v5->_fpanIdentifier;
    v5->_fpanIdentifier = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mpanIdentifier"];
    mpanIdentifier = v5->_mpanIdentifier;
    v5->_mpanIdentifier = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v12;

    v5->_type = [coderCopy decodeIntegerForKey:@"type"];
    v5->_network = [coderCopy decodeIntegerForKey:@"network"];
    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"suffix"];
    suffix = v5->_suffix;
    v5->_suffix = v14;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  dpanIdentifier = self->_dpanIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:dpanIdentifier forKey:@"dpanIdentifier"];
  [coderCopy encodeObject:self->_fpanIdentifier forKey:@"fpanIdentifier"];
  [coderCopy encodeObject:self->_mpanIdentifier forKey:@"mpanIdentifier"];
  [coderCopy encodeObject:self->_name forKey:@"name"];
  [coderCopy encodeInteger:self->_type forKey:@"type"];
  [coderCopy encodeInteger:self->_network forKey:@"network"];
  [coderCopy encodeObject:self->_suffix forKey:@"suffix"];
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_dpanIdentifier];
  [v3 safelyAddObject:self->_fpanIdentifier];
  [v3 safelyAddObject:self->_mpanIdentifier];
  [v3 safelyAddObject:self->_name];
  [v3 safelyAddObject:self->_suffix];
  v4 = PKCombinedHash(17, v3);
  v5 = self->_type - v4 + 32 * v4;
  v6 = self->_network - v5 + 32 * v5;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_29;
  }

  dpanIdentifier = self->_dpanIdentifier;
  v6 = equalCopy[1];
  if (dpanIdentifier && v6)
  {
    if (([(NSString *)dpanIdentifier isEqual:?]& 1) == 0)
    {
      goto LABEL_29;
    }
  }

  else if (dpanIdentifier != v6)
  {
    goto LABEL_29;
  }

  fpanIdentifier = self->_fpanIdentifier;
  v8 = equalCopy[2];
  if (fpanIdentifier && v8)
  {
    if (([(NSString *)fpanIdentifier isEqual:?]& 1) == 0)
    {
      goto LABEL_29;
    }
  }

  else if (fpanIdentifier != v8)
  {
    goto LABEL_29;
  }

  mpanIdentifier = self->_mpanIdentifier;
  v10 = equalCopy[3];
  if (mpanIdentifier && v10)
  {
    if (([(NSString *)mpanIdentifier isEqual:?]& 1) == 0)
    {
      goto LABEL_29;
    }
  }

  else if (mpanIdentifier != v10)
  {
    goto LABEL_29;
  }

  name = self->_name;
  v12 = equalCopy[4];
  if (name && v12)
  {
    if (([(NSString *)name isEqual:?]& 1) == 0)
    {
      goto LABEL_29;
    }
  }

  else if (name != v12)
  {
    goto LABEL_29;
  }

  suffix = self->_suffix;
  v14 = equalCopy[7];
  if (!suffix || !v14)
  {
    if (suffix == v14)
    {
      goto LABEL_27;
    }

LABEL_29:
    v15 = 0;
    goto LABEL_30;
  }

  if (([(NSString *)suffix isEqual:?]& 1) == 0)
  {
    goto LABEL_29;
  }

LABEL_27:
  if (self->_type != equalCopy[5])
  {
    goto LABEL_29;
  }

  v15 = self->_network == equalCopy[6];
LABEL_30:

  return v15;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [v3 appendFormat:@"dpanIdentifier: '%@'; ", self->_dpanIdentifier];
  [v3 appendFormat:@"fpanIdentifier: '%@'; ", self->_fpanIdentifier];
  [v3 appendFormat:@"mpanIdentifier: '%@'; ", self->_mpanIdentifier];
  [v3 appendFormat:@"cardName: '%@'; ", self->_name];
  [v3 appendFormat:@"cardType: '%ld'; ", self->_type];
  [v3 appendFormat:@"cardNetwork: '%ld'; ", self->_network];
  [v3 appendFormat:@"cardSuffix: '%@'; ", self->_suffix];
  [v3 appendFormat:@">"];

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[PKPeerPaymentRecurringPaymentFundingSource allocWithZone:](PKPeerPaymentRecurringPaymentFundingSource init];
  v6 = [(NSString *)self->_dpanIdentifier copyWithZone:zone];
  dpanIdentifier = v5->_dpanIdentifier;
  v5->_dpanIdentifier = v6;

  v8 = [(NSString *)self->_fpanIdentifier copyWithZone:zone];
  fpanIdentifier = v5->_fpanIdentifier;
  v5->_fpanIdentifier = v8;

  v10 = [(NSString *)self->_mpanIdentifier copyWithZone:zone];
  mpanIdentifier = v5->_mpanIdentifier;
  v5->_mpanIdentifier = v10;

  v12 = [(NSString *)self->_name copyWithZone:zone];
  name = v5->_name;
  v5->_name = v12;

  v5->_type = self->_type;
  v5->_network = self->_network;
  v14 = [(NSString *)self->_suffix copyWithZone:zone];
  suffix = v5->_suffix;
  v5->_suffix = v14;

  return v5;
}

@end