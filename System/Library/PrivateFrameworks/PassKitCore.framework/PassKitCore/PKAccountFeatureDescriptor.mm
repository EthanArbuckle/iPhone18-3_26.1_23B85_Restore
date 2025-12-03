@interface PKAccountFeatureDescriptor
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToAccountFeatureDescriptor:(id)descriptor;
- (PKAccountFeatureDescriptor)initWithCoder:(id)coder;
- (PKAccountFeatureDescriptor)initWithDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKAccountFeatureDescriptor

- (unint64_t)hash
{
  array = [MEMORY[0x1E695DF70] array];
  v4 = array;
  if (self->_identifier)
  {
    [array addObject:?];
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

- (PKAccountFeatureDescriptor)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v16.receiver = self;
  v16.super_class = PKAccountFeatureDescriptor;
  v5 = [(PKAccountFeatureDescriptor *)&v16 init];
  if (v5)
  {
    v6 = [dictionaryCopy PKStringForKey:@"identifier"];
    [(PKAccountFeatureDescriptor *)v5 setIdentifier:v6];

    v7 = [dictionaryCopy PKDecimalNumberFromStringForKey:@"minimumAmount"];
    [(PKAccountFeatureDescriptor *)v5 setMinimumAmount:v7];

    v8 = [dictionaryCopy PKDecimalNumberFromStringForKey:@"maximumAmount"];
    [(PKAccountFeatureDescriptor *)v5 setMaximumAmount:v8];

    v9 = [dictionaryCopy PKStringForKey:@"merchantIdentifier"];
    [(PKAccountFeatureDescriptor *)v5 setMerchantIdentifier:v9];

    v10 = [dictionaryCopy PKArrayContaining:objc_opt_class() forKey:@"supportedNetworks"];
    [(PKAccountFeatureDescriptor *)v5 setSupportedNetworks:v10];

    v11 = [dictionaryCopy PKArrayContaining:objc_opt_class() forKey:@"merchantCapabilities"];
    [(PKAccountFeatureDescriptor *)v5 setMerchantCapabilities:PKMerchantCapabilityFromStrings(v11)];

    v12 = [dictionaryCopy PKDictionaryForKey:@"osVersionRange"];
    if (v12)
    {
      v13 = [[PKOSVersionRequirementRange alloc] initWithDictionary:v12];
      [(PKAccountFeatureDescriptor *)v5 setOsVersionRange:v13];
    }

    v14 = [dictionaryCopy PKStringForKey:@"fundingSourceTermsIdentifier"];
    [(PKAccountFeatureDescriptor *)v5 setFundingSourceTermsIdentifier:v14];
  }

  return v5;
}

- (PKAccountFeatureDescriptor)initWithCoder:(id)coder
{
  v19[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v18.receiver = self;
  v18.super_class = PKAccountFeatureDescriptor;
  v5 = [(PKAccountFeatureDescriptor *)&v18 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    [(PKAccountFeatureDescriptor *)v5 setIdentifier:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"minimumAmount"];
    [(PKAccountFeatureDescriptor *)v5 setMinimumAmount:v7];

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"maximumAmount"];
    [(PKAccountFeatureDescriptor *)v5 setMaximumAmount:v8];

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"merchantIdentifier"];
    [(PKAccountFeatureDescriptor *)v5 setMerchantIdentifier:v9];

    v10 = MEMORY[0x1E695DFD8];
    v19[0] = objc_opt_class();
    v19[1] = objc_opt_class();
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
    v12 = [v10 setWithArray:v11];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"supportedNetworks"];
    [(PKAccountFeatureDescriptor *)v5 setSupportedNetworks:v13];

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"merchantCapabilities"];
    -[PKAccountFeatureDescriptor setMerchantCapabilities:](v5, "setMerchantCapabilities:", [v14 unsignedIntegerValue]);

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"osVersionRange"];
    [(PKAccountFeatureDescriptor *)v5 setOsVersionRange:v15];

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"fundingSourceTermsIdentifier"];
    [(PKAccountFeatureDescriptor *)v5 setFundingSourceTermsIdentifier:v16];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(PKAccountFeatureDescriptor *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  minimumAmount = [(PKAccountFeatureDescriptor *)self minimumAmount];
  [coderCopy encodeObject:minimumAmount forKey:@"minimumAmount"];

  maximumAmount = [(PKAccountFeatureDescriptor *)self maximumAmount];
  [coderCopy encodeObject:maximumAmount forKey:@"maximumAmount"];

  merchantIdentifier = [(PKAccountFeatureDescriptor *)self merchantIdentifier];
  [coderCopy encodeObject:merchantIdentifier forKey:@"merchantIdentifier"];

  supportedNetworks = [(PKAccountFeatureDescriptor *)self supportedNetworks];
  [coderCopy encodeObject:supportedNetworks forKey:@"supportedNetworks"];

  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[PKAccountFeatureDescriptor merchantCapabilities](self, "merchantCapabilities")}];
  [coderCopy encodeObject:v10 forKey:@"merchantCapabilities"];

  osVersionRange = [(PKAccountFeatureDescriptor *)self osVersionRange];
  [coderCopy encodeObject:osVersionRange forKey:@"osVersionRange"];

  fundingSourceTermsIdentifier = [(PKAccountFeatureDescriptor *)self fundingSourceTermsIdentifier];
  [coderCopy encodeObject:fundingSourceTermsIdentifier forKey:@"fundingSourceTermsIdentifier"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKAccountFeatureDescriptor *)self isEqualToAccountFeatureDescriptor:v5];
  }

  return v6;
}

- (BOOL)isEqualToAccountFeatureDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  identifier = self->_identifier;
  v6 = descriptorCopy[1];
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
  v9 = descriptorCopy[2];
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
  v11 = descriptorCopy[3];
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
  v13 = descriptorCopy[4];
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
  v15 = descriptorCopy[5];
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
  v17 = descriptorCopy[7];
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
  v19 = descriptorCopy[8];
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
  v20 = self->_merchantCapabilities == descriptorCopy[6];
LABEL_40:

  return v20;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_opt_class() allocWithZone:zone];
  v6 = [(NSString *)self->_identifier copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSDecimalNumber *)self->_minimumAmount copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(NSDecimalNumber *)self->_maximumAmount copyWithZone:zone];
  v11 = v5[3];
  v5[3] = v10;

  v12 = [(NSString *)self->_merchantIdentifier copyWithZone:zone];
  v13 = v5[4];
  v5[4] = v12;

  v14 = [(NSArray *)self->_supportedNetworks copyWithZone:zone];
  v15 = v5[5];
  v5[5] = v14;

  v16 = [(PKOSVersionRequirementRange *)self->_osVersionRange copyWithZone:zone];
  v17 = v5[7];
  v5[7] = v16;

  v18 = [(NSString *)self->_fundingSourceTermsIdentifier copyWithZone:zone];
  v19 = v5[8];
  v5[8] = v18;

  v5[6] = self->_merchantCapabilities;
  return v5;
}

@end