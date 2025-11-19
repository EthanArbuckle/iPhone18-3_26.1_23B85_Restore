@interface PKAccountFeatureDescriptor
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToAccountFeatureDescriptor:(id)a3;
- (PKAccountFeatureDescriptor)initWithCoder:(id)a3;
- (PKAccountFeatureDescriptor)initWithDictionary:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKAccountFeatureDescriptor

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = v3;
  if (self->_identifier)
  {
    [v3 addObject:?];
  }

  if (self->_minimumAmount)
  {
    [v4 addObject:?];
  }

  if (self->_maximumAmount)
  {
    [v4 addObject:?];
  }

  if (self->_merchantIdentifier)
  {
    [v4 addObject:?];
  }

  if (self->_supportedNetworks)
  {
    [v4 addObject:?];
  }

  if (self->_osVersionRange)
  {
    [v4 addObject:?];
  }

  if (self->_fundingSourceTermsIdentifier)
  {
    [v4 addObject:?];
  }

  v5 = PKCombinedHash(17, v4);
  v6 = self->_merchantCapabilities - v5 + 32 * v5;

  return v6;
}

- (PKAccountFeatureDescriptor)initWithDictionary:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = PKAccountFeatureDescriptor;
  v5 = [(PKAccountFeatureDescriptor *)&v16 init];
  if (v5)
  {
    v6 = [v4 PKStringForKey:@"identifier"];
    [(PKAccountFeatureDescriptor *)v5 setIdentifier:v6];

    v7 = [v4 PKDecimalNumberFromStringForKey:@"minimumAmount"];
    [(PKAccountFeatureDescriptor *)v5 setMinimumAmount:v7];

    v8 = [v4 PKDecimalNumberFromStringForKey:@"maximumAmount"];
    [(PKAccountFeatureDescriptor *)v5 setMaximumAmount:v8];

    v9 = [v4 PKStringForKey:@"merchantIdentifier"];
    [(PKAccountFeatureDescriptor *)v5 setMerchantIdentifier:v9];

    v10 = [v4 PKArrayContaining:objc_opt_class() forKey:@"supportedNetworks"];
    [(PKAccountFeatureDescriptor *)v5 setSupportedNetworks:v10];

    v11 = [v4 PKArrayContaining:objc_opt_class() forKey:@"merchantCapabilities"];
    [(PKAccountFeatureDescriptor *)v5 setMerchantCapabilities:PKMerchantCapabilityFromStrings(v11)];

    v12 = [v4 PKDictionaryForKey:@"osVersionRange"];
    if (v12)
    {
      v13 = [[PKOSVersionRequirementRange alloc] initWithDictionary:v12];
      [(PKAccountFeatureDescriptor *)v5 setOsVersionRange:v13];
    }

    v14 = [v4 PKStringForKey:@"fundingSourceTermsIdentifier"];
    [(PKAccountFeatureDescriptor *)v5 setFundingSourceTermsIdentifier:v14];
  }

  return v5;
}

- (PKAccountFeatureDescriptor)initWithCoder:(id)a3
{
  v19[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v18.receiver = self;
  v18.super_class = PKAccountFeatureDescriptor;
  v5 = [(PKAccountFeatureDescriptor *)&v18 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    [(PKAccountFeatureDescriptor *)v5 setIdentifier:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"minimumAmount"];
    [(PKAccountFeatureDescriptor *)v5 setMinimumAmount:v7];

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"maximumAmount"];
    [(PKAccountFeatureDescriptor *)v5 setMaximumAmount:v8];

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"merchantIdentifier"];
    [(PKAccountFeatureDescriptor *)v5 setMerchantIdentifier:v9];

    v10 = MEMORY[0x1E695DFD8];
    v19[0] = objc_opt_class();
    v19[1] = objc_opt_class();
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
    v12 = [v10 setWithArray:v11];
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"supportedNetworks"];
    [(PKAccountFeatureDescriptor *)v5 setSupportedNetworks:v13];

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"merchantCapabilities"];
    -[PKAccountFeatureDescriptor setMerchantCapabilities:](v5, "setMerchantCapabilities:", [v14 unsignedIntegerValue]);

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"osVersionRange"];
    [(PKAccountFeatureDescriptor *)v5 setOsVersionRange:v15];

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"fundingSourceTermsIdentifier"];
    [(PKAccountFeatureDescriptor *)v5 setFundingSourceTermsIdentifier:v16];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(PKAccountFeatureDescriptor *)self identifier];
  [v4 encodeObject:v5 forKey:@"identifier"];

  v6 = [(PKAccountFeatureDescriptor *)self minimumAmount];
  [v4 encodeObject:v6 forKey:@"minimumAmount"];

  v7 = [(PKAccountFeatureDescriptor *)self maximumAmount];
  [v4 encodeObject:v7 forKey:@"maximumAmount"];

  v8 = [(PKAccountFeatureDescriptor *)self merchantIdentifier];
  [v4 encodeObject:v8 forKey:@"merchantIdentifier"];

  v9 = [(PKAccountFeatureDescriptor *)self supportedNetworks];
  [v4 encodeObject:v9 forKey:@"supportedNetworks"];

  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PKAccountFeatureDescriptor merchantCapabilities](self, "merchantCapabilities")}];
  [v4 encodeObject:v10 forKey:@"merchantCapabilities"];

  v11 = [(PKAccountFeatureDescriptor *)self osVersionRange];
  [v4 encodeObject:v11 forKey:@"osVersionRange"];

  v12 = [(PKAccountFeatureDescriptor *)self fundingSourceTermsIdentifier];
  [v4 encodeObject:v12 forKey:@"fundingSourceTermsIdentifier"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKAccountFeatureDescriptor *)self isEqualToAccountFeatureDescriptor:v5];
  }

  return v6;
}

- (BOOL)isEqualToAccountFeatureDescriptor:(id)a3
{
  v4 = a3;
  identifier = self->_identifier;
  v6 = v4[1];
  if (identifier)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    if (identifier != v6)
    {
      goto LABEL_39;
    }
  }

  else if (([(NSString *)identifier isEqual:?]& 1) == 0)
  {
    goto LABEL_39;
  }

  minimumAmount = self->_minimumAmount;
  v9 = v4[2];
  if (minimumAmount && v9)
  {
    if (([(NSDecimalNumber *)minimumAmount isEqual:?]& 1) == 0)
    {
      goto LABEL_39;
    }
  }

  else if (minimumAmount != v9)
  {
    goto LABEL_39;
  }

  maximumAmount = self->_maximumAmount;
  v11 = v4[3];
  if (maximumAmount && v11)
  {
    if (([(NSDecimalNumber *)maximumAmount isEqual:?]& 1) == 0)
    {
      goto LABEL_39;
    }
  }

  else if (maximumAmount != v11)
  {
    goto LABEL_39;
  }

  merchantIdentifier = self->_merchantIdentifier;
  v13 = v4[4];
  if (merchantIdentifier && v13)
  {
    if (([(NSString *)merchantIdentifier isEqual:?]& 1) == 0)
    {
      goto LABEL_39;
    }
  }

  else if (merchantIdentifier != v13)
  {
    goto LABEL_39;
  }

  supportedNetworks = self->_supportedNetworks;
  v15 = v4[5];
  if (supportedNetworks && v15)
  {
    if (([(NSArray *)supportedNetworks isEqual:?]& 1) == 0)
    {
      goto LABEL_39;
    }
  }

  else if (supportedNetworks != v15)
  {
    goto LABEL_39;
  }

  osVersionRange = self->_osVersionRange;
  v17 = v4[7];
  if (osVersionRange && v17)
  {
    if (![(PKOSVersionRequirementRange *)osVersionRange isEqual:?])
    {
      goto LABEL_39;
    }
  }

  else if (osVersionRange != v17)
  {
    goto LABEL_39;
  }

  fundingSourceTermsIdentifier = self->_fundingSourceTermsIdentifier;
  v19 = v4[8];
  if (!fundingSourceTermsIdentifier || !v19)
  {
    if (fundingSourceTermsIdentifier == v19)
    {
      goto LABEL_37;
    }

LABEL_39:
    v20 = 0;
    goto LABEL_40;
  }

  if (([(NSString *)fundingSourceTermsIdentifier isEqual:?]& 1) == 0)
  {
    goto LABEL_39;
  }

LABEL_37:
  v20 = self->_merchantCapabilities == v4[6];
LABEL_40:

  return v20;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_opt_class() allocWithZone:a3];
  v6 = [(NSString *)self->_identifier copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSDecimalNumber *)self->_minimumAmount copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(NSDecimalNumber *)self->_maximumAmount copyWithZone:a3];
  v11 = v5[3];
  v5[3] = v10;

  v12 = [(NSString *)self->_merchantIdentifier copyWithZone:a3];
  v13 = v5[4];
  v5[4] = v12;

  v14 = [(NSArray *)self->_supportedNetworks copyWithZone:a3];
  v15 = v5[5];
  v5[5] = v14;

  v16 = [(PKOSVersionRequirementRange *)self->_osVersionRange copyWithZone:a3];
  v17 = v5[7];
  v5[7] = v16;

  v18 = [(NSString *)self->_fundingSourceTermsIdentifier copyWithZone:a3];
  v19 = v5[8];
  v5[8] = v18;

  v5[6] = self->_merchantCapabilities;
  return v5;
}

@end