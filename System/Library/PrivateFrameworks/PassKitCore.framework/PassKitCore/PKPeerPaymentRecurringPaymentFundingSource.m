@interface PKPeerPaymentRecurringPaymentFundingSource
+ (id)fundingSourceWithDictionary:(id)a3;
+ (id)fundingSourceWithPass:(id)a3;
- (BOOL)isEqual:(id)a3;
- (PKPeerPaymentRecurringPaymentFundingSource)initWithCoder:(id)a3;
- (PKPeerPaymentRecurringPaymentFundingSource)initWithDictionary:(id)a3;
- (PKPeerPaymentRecurringPaymentFundingSource)initWithPass:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPeerPaymentRecurringPaymentFundingSource

+ (id)fundingSourceWithDictionary:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithDictionary:v4];

  return v5;
}

- (PKPeerPaymentRecurringPaymentFundingSource)initWithDictionary:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = PKPeerPaymentRecurringPaymentFundingSource;
  v5 = [(PKPeerPaymentRecurringPaymentFundingSource *)&v22 init];
  if (v5)
  {
    v6 = [v4 PKStringForKey:@"dpanIdentifier"];
    v7 = [v6 copy];
    dpanIdentifier = v5->_dpanIdentifier;
    v5->_dpanIdentifier = v7;

    v9 = [v4 PKStringForKey:@"fpanIdentifier"];
    v10 = [v9 copy];
    fpanIdentifier = v5->_fpanIdentifier;
    v5->_fpanIdentifier = v10;

    v12 = [v4 PKStringForKey:@"mpanIdentifier"];
    v13 = [v12 copy];
    mpanIdentifier = v5->_mpanIdentifier;
    v5->_mpanIdentifier = v13;

    v15 = [v4 PKStringForKey:@"name"];
    v16 = [v15 copy];
    name = v5->_name;
    v5->_name = v16;

    v5->_type = [v4 PKIntegerForKey:@"type"];
    v5->_network = [v4 PKIntegerForKey:@"network"];
    v18 = [v4 PKStringForKey:@"suffix"];
    v19 = [v18 copy];
    suffix = v5->_suffix;
    v5->_suffix = v19;
  }

  return v5;
}

+ (id)fundingSourceWithPass:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithPass:v4];

  return v5;
}

- (PKPeerPaymentRecurringPaymentFundingSource)initWithPass:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = PKPeerPaymentRecurringPaymentFundingSource;
  v5 = [(PKPeerPaymentRecurringPaymentFundingSource *)&v16 init];
  if (v5)
  {
    v6 = [v4 devicePrimaryInAppPaymentApplication];
    v7 = [v6 dpanIdentifier];
    dpanIdentifier = v5->_dpanIdentifier;
    v5->_dpanIdentifier = v7;

    v9 = [v4 primaryAccountIdentifier];
    fpanIdentifier = v5->_fpanIdentifier;
    v5->_fpanIdentifier = v9;

    v11 = [v4 localizedDescription];
    name = v5->_name;
    v5->_name = v11;

    v5->_type = [v6 paymentType];
    v5->_network = [v6 paymentNetworkIdentifier];
    v13 = [v4 primaryAccountNumberSuffix];
    suffix = v5->_suffix;
    v5->_suffix = v13;
  }

  return v5;
}

- (PKPeerPaymentRecurringPaymentFundingSource)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = PKPeerPaymentRecurringPaymentFundingSource;
  v5 = [(PKPeerPaymentRecurringPaymentFundingSource *)&v17 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dpanIdentifier"];
    dpanIdentifier = v5->_dpanIdentifier;
    v5->_dpanIdentifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"fpanIdentifier"];
    fpanIdentifier = v5->_fpanIdentifier;
    v5->_fpanIdentifier = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"mpanIdentifier"];
    mpanIdentifier = v5->_mpanIdentifier;
    v5->_mpanIdentifier = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v12;

    v5->_type = [v4 decodeIntegerForKey:@"type"];
    v5->_network = [v4 decodeIntegerForKey:@"network"];
    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"suffix"];
    suffix = v5->_suffix;
    v5->_suffix = v14;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  dpanIdentifier = self->_dpanIdentifier;
  v5 = a3;
  [v5 encodeObject:dpanIdentifier forKey:@"dpanIdentifier"];
  [v5 encodeObject:self->_fpanIdentifier forKey:@"fpanIdentifier"];
  [v5 encodeObject:self->_mpanIdentifier forKey:@"mpanIdentifier"];
  [v5 encodeObject:self->_name forKey:@"name"];
  [v5 encodeInteger:self->_type forKey:@"type"];
  [v5 encodeInteger:self->_network forKey:@"network"];
  [v5 encodeObject:self->_suffix forKey:@"suffix"];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_29;
  }

  dpanIdentifier = self->_dpanIdentifier;
  v6 = v4[1];
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
  v8 = v4[2];
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
  v10 = v4[3];
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
  v12 = v4[4];
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
  v14 = v4[7];
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
  if (self->_type != v4[5])
  {
    goto LABEL_29;
  }

  v15 = self->_network == v4[6];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[PKPeerPaymentRecurringPaymentFundingSource allocWithZone:](PKPeerPaymentRecurringPaymentFundingSource init];
  v6 = [(NSString *)self->_dpanIdentifier copyWithZone:a3];
  dpanIdentifier = v5->_dpanIdentifier;
  v5->_dpanIdentifier = v6;

  v8 = [(NSString *)self->_fpanIdentifier copyWithZone:a3];
  fpanIdentifier = v5->_fpanIdentifier;
  v5->_fpanIdentifier = v8;

  v10 = [(NSString *)self->_mpanIdentifier copyWithZone:a3];
  mpanIdentifier = v5->_mpanIdentifier;
  v5->_mpanIdentifier = v10;

  v12 = [(NSString *)self->_name copyWithZone:a3];
  name = v5->_name;
  v5->_name = v12;

  v5->_type = self->_type;
  v5->_network = self->_network;
  v14 = [(NSString *)self->_suffix copyWithZone:a3];
  suffix = v5->_suffix;
  v5->_suffix = v14;

  return v5;
}

@end