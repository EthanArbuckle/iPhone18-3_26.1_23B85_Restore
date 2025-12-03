@interface PKPaymentOfferCapability
- (BOOL)isEqual:(id)equal;
- (PKPaymentOfferCapability)initWithCoder:(id)coder;
- (PKPaymentOfferCapability)initWithDictionary:(id)dictionary;
- (id)_init;
- (id)associatedPassUniqueID;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPaymentOfferCapability

- (id)_init
{
  v3.receiver = self;
  v3.super_class = PKPaymentOfferCapability;
  return [(PKPaymentOfferCapability *)&v3 init];
}

- (PKPaymentOfferCapability)initWithDictionary:(id)dictionary
{
  v33 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  if ([dictionaryCopy count])
  {
    v31.receiver = self;
    v31.super_class = PKPaymentOfferCapability;
    v5 = [(PKPaymentOfferCapability *)&v31 init];
    if (v5)
    {
      v6 = [dictionaryCopy PKStringForKey:@"fpanIdentifier"];
      fpanIdentifier = v5->_fpanIdentifier;
      v5->_fpanIdentifier = v6;

      v8 = [dictionaryCopy PKStringForKey:@"passSerialNumber"];
      passSerialNumber = v5->_passSerialNumber;
      v5->_passSerialNumber = v8;

      v10 = [dictionaryCopy PKStringForKey:@"passTypeIdentifier"];
      passTypeIdentifier = v5->_passTypeIdentifier;
      v5->_passTypeIdentifier = v10;

      v12 = [dictionaryCopy PKStringForKey:@"merchandisingIdentifier"];
      merchandisingIdentifier = v5->_merchandisingIdentifier;
      v5->_merchandisingIdentifier = v12;

      v14 = [dictionaryCopy PKSetContaining:objc_opt_class() forKey:@"features"];
      if ([v14 count])
      {
        v15 = objc_alloc_init(MEMORY[0x1E695DFA8]);
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v16 = v14;
        v17 = [v16 countByEnumeratingWithState:&v27 objects:v32 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v28;
          do
          {
            v20 = 0;
            do
            {
              if (*v28 != v19)
              {
                objc_enumerationMutation(v16);
              }

              v21 = PKPaymentOfferCapabilityFeatureFromString(*(*(&v27 + 1) + 8 * v20));
              if (v21)
              {
                v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{v21, v27}];
                [v15 addObject:v22];
              }

              ++v20;
            }

            while (v18 != v20);
            v18 = [v16 countByEnumeratingWithState:&v27 objects:v32 count:16];
          }

          while (v18);
        }

        v23 = [v15 count];
        if (v23)
        {
          v23 = [v15 copy];
        }

        features = v5->_features;
        v5->_features = v23;
      }
    }

    self = v5;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v3 setObject:self->_fpanIdentifier forKeyedSubscript:@"fpanIdentifier"];
  [v3 setObject:self->_passSerialNumber forKeyedSubscript:@"passSerialNumber"];
  [v3 setObject:self->_passTypeIdentifier forKeyedSubscript:@"passTypeIdentifier"];
  [v3 setObject:self->_merchandisingIdentifier forKeyedSubscript:@"merchandisingIdentifier"];
  allObjects = [(NSSet *)self->_features allObjects];
  v5 = [allObjects pk_arrayByApplyingBlock:&__block_literal_global_215];
  [v3 setObject:v5 forKeyedSubscript:@"features"];

  v6 = [v3 copy];

  return v6;
}

__CFString *__52__PKPaymentOfferCapability_dictionaryRepresentation__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 integerValue];
  if (v2 > 4)
  {
    return @"unknown";
  }

  else
  {
    return off_1E79E2540[v2];
  }
}

- (id)associatedPassUniqueID
{
  passSerialNumber = self->_passSerialNumber;
  if (passSerialNumber)
  {
    passTypeIdentifier = self->_passTypeIdentifier;
    if (passTypeIdentifier)
    {
      passTypeIdentifier = PKGeneratePassUniqueID(passTypeIdentifier, passSerialNumber);
      v2 = vars8;
    }
  }

  else
  {
    passTypeIdentifier = 0;
  }

  return passTypeIdentifier;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v12 = 1;
  }

  else
  {
    if (equalCopy)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
        fpanIdentifier = v6->_fpanIdentifier;
        v8 = self->_fpanIdentifier;
        v9 = fpanIdentifier;
        v10 = v9;
        if (v8 == v9)
        {
        }

        else
        {
          if (!v8 || !v9)
          {
            goto LABEL_29;
          }

          v11 = [(NSString *)v8 isEqualToString:v9];

          if (!v11)
          {
            goto LABEL_30;
          }
        }

        passSerialNumber = v6->_passSerialNumber;
        v8 = self->_passSerialNumber;
        v14 = passSerialNumber;
        v10 = v14;
        if (v8 == v14)
        {
        }

        else
        {
          if (!v8 || !v14)
          {
            goto LABEL_29;
          }

          v15 = [(NSString *)v8 isEqualToString:v14];

          if (!v15)
          {
            goto LABEL_30;
          }
        }

        passTypeIdentifier = v6->_passTypeIdentifier;
        v8 = self->_passTypeIdentifier;
        v17 = passTypeIdentifier;
        v10 = v17;
        if (v8 == v17)
        {
        }

        else
        {
          if (!v8 || !v17)
          {
            goto LABEL_29;
          }

          v18 = [(NSString *)v8 isEqualToString:v17];

          if (!v18)
          {
            goto LABEL_30;
          }
        }

        merchandisingIdentifier = v6->_merchandisingIdentifier;
        v8 = self->_merchandisingIdentifier;
        v20 = merchandisingIdentifier;
        v10 = v20;
        if (v8 == v20)
        {

LABEL_34:
          features = self->_features;
          v24 = v6->_features;
          if (features && v24)
          {
            v12 = [(NSSet *)features isEqual:?];
          }

          else
          {
            v12 = features == v24;
          }

          goto LABEL_31;
        }

        if (v8 && v20)
        {
          v21 = [(NSString *)v8 isEqualToString:v20];

          if (v21)
          {
            goto LABEL_34;
          }

LABEL_30:
          v12 = 0;
LABEL_31:

          goto LABEL_32;
        }

LABEL_29:

        goto LABEL_30;
      }
    }

    v12 = 0;
  }

LABEL_32:

  return v12;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_fpanIdentifier];
  [v3 safelyAddObject:self->_passSerialNumber];
  [v3 safelyAddObject:self->_passTypeIdentifier];
  [v3 safelyAddObject:self->_features];
  [v3 safelyAddObject:self->_merchandisingIdentifier];
  v4 = PKCombinedHash(17, v3);

  return v4;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [v3 appendFormat:@"fpanIdentifier: '%@'; ", self->_fpanIdentifier];
  [v3 appendFormat:@"passSerialNumber: '%@'; ", self->_passSerialNumber];
  [v3 appendFormat:@"passTypeIdentifier: '%@'; ", self->_passTypeIdentifier];
  [v3 appendFormat:@"merchandisingIdentifier: '%@'; ", self->_merchandisingIdentifier];
  v4 = [(NSSet *)self->_features pk_setByApplyingBlock:&__block_literal_global_69_0];
  [v3 appendFormat:@"features: '%@'; ", v4];

  [v3 appendFormat:@">"];

  return v3;
}

__CFString *__39__PKPaymentOfferCapability_description__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 integerValue];
  if (v2 > 4)
  {
    return @"unknown";
  }

  else
  {
    return off_1E79E2540[v2];
  }
}

- (PKPaymentOfferCapability)initWithCoder:(id)coder
{
  coderCopy = coder;
  v20.receiver = self;
  v20.super_class = PKPaymentOfferCapability;
  v5 = [(PKPaymentOfferCapability *)&v20 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"fpanIdentifier"];
    fpanIdentifier = v5->_fpanIdentifier;
    v5->_fpanIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"passSerialNumber"];
    passSerialNumber = v5->_passSerialNumber;
    v5->_passSerialNumber = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"passTypeIdentifier"];
    passTypeIdentifier = v5->_passTypeIdentifier;
    v5->_passTypeIdentifier = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"merchandisingIdentifier"];
    merchandisingIdentifier = v5->_merchandisingIdentifier;
    v5->_merchandisingIdentifier = v12;

    v14 = MEMORY[0x1E695DFD8];
    v15 = objc_opt_class();
    v16 = [v14 setWithObjects:{v15, objc_opt_class(), 0}];
    v17 = [coderCopy decodeObjectOfClasses:v16 forKey:@"features"];
    features = v5->_features;
    v5->_features = v17;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  fpanIdentifier = self->_fpanIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:fpanIdentifier forKey:@"fpanIdentifier"];
  [coderCopy encodeObject:self->_passSerialNumber forKey:@"passSerialNumber"];
  [coderCopy encodeObject:self->_passTypeIdentifier forKey:@"passTypeIdentifier"];
  [coderCopy encodeObject:self->_features forKey:@"features"];
  [coderCopy encodeObject:self->_merchandisingIdentifier forKey:@"merchandisingIdentifier"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_fpanIdentifier copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_passSerialNumber copyWithZone:zone];
  v9 = v5[3];
  v5[3] = v8;

  v10 = [(NSString *)self->_passTypeIdentifier copyWithZone:zone];
  v11 = v5[2];
  v5[2] = v10;

  v12 = [(NSSet *)self->_features copyWithZone:zone];
  v13 = v5[4];
  v5[4] = v12;

  v14 = [(NSString *)self->_merchandisingIdentifier copyWithZone:zone];
  v15 = v5[5];
  v5[5] = v14;

  return v5;
}

@end