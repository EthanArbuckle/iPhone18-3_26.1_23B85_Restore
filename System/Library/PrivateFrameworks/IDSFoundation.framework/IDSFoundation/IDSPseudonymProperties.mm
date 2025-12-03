@interface IDSPseudonymProperties
- (BOOL)hasBeenExpiredForAtLeast:(double)least;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToPseudonymProperties:(id)properties;
- (BOOL)willBeExpiredIn:(double)in;
- (IDSPseudonymProperties)initWithCoder:(id)coder;
- (IDSPseudonymProperties)initWithDictionaryRepresentation:(id)representation;
- (IDSPseudonymProperties)initWithFeatureID:(id)d scopeID:(id)iD expiryEpoch:(double)epoch allowedServices:(id)services;
- (NSDictionary)dictionaryRepresentation;
- (id)description;
- (id)withUpdatedAllowedServices:(id)services;
- (id)withUpdatedExpiryEpoch:(double)epoch;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IDSPseudonymProperties

- (IDSPseudonymProperties)initWithFeatureID:(id)d scopeID:(id)iD expiryEpoch:(double)epoch allowedServices:(id)services
{
  dCopy = d;
  iDCopy = iD;
  servicesCopy = services;
  if (!dCopy)
  {
    sub_1A7E205EC();
  }

  if (![servicesCopy count])
  {
    sub_1A7E20660();
  }

  v21.receiver = self;
  v21.super_class = IDSPseudonymProperties;
  v13 = [(IDSPseudonymProperties *)&v21 init];
  if (v13)
  {
    v14 = [dCopy copy];
    featureID = v13->_featureID;
    v13->_featureID = v14;

    v16 = [iDCopy copy];
    scopeID = v13->_scopeID;
    v13->_scopeID = v16;

    v13->_expiryEpoch = epoch;
    v18 = [servicesCopy copy];
    allowedServices = v13->_allowedServices;
    v13->_allowedServices = v18;
  }

  return v13;
}

- (id)withUpdatedExpiryEpoch:(double)epoch
{
  v3 = [[IDSPseudonymProperties alloc] initWithFeatureID:self->_featureID scopeID:self->_scopeID expiryEpoch:self->_allowedServices allowedServices:epoch];

  return v3;
}

- (id)withUpdatedAllowedServices:(id)services
{
  servicesCopy = services;
  v5 = [[IDSPseudonymProperties alloc] initWithFeatureID:self->_featureID scopeID:self->_scopeID expiryEpoch:servicesCopy allowedServices:self->_expiryEpoch];

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v13 = *&self->_featureID;
  allowedServices = self->_allowedServices;
  expiryEpoch = self->_expiryEpoch;
  expirationDate = [(IDSPseudonymProperties *)self expirationDate];
  currentLocale = [MEMORY[0x1E695DF58] currentLocale];
  v10 = [expirationDate descriptionWithLocale:currentLocale];
  v11 = [v3 stringWithFormat:@"<%@: %p featureID: %@, scopeID: %@, allowedServices: %@, expiryEpoch: %fll, expirationDate: %@>", v5, self, v13, allowedServices, *&expiryEpoch, v10];

  return v11;
}

- (BOOL)hasBeenExpiredForAtLeast:(double)least
{
  expirationDate = [(IDSPseudonymProperties *)self expirationDate];
  [expirationDate timeIntervalSinceNow];
  v6 = v5 < -least;

  return v6;
}

- (BOOL)willBeExpiredIn:(double)in
{
  expirationDate = [(IDSPseudonymProperties *)self expirationDate];
  [expirationDate timeIntervalSinceNow];
  v6 = v5 < in;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(IDSPseudonymProperties *)self isEqualToPseudonymProperties:equalCopy];

  return v5;
}

- (BOOL)isEqualToPseudonymProperties:(id)properties
{
  propertiesCopy = properties;
  if (self != propertiesCopy)
  {
    featureID = [(IDSPseudonymProperties *)self featureID];
    featureID2 = [(IDSPseudonymProperties *)propertiesCopy featureID];
    if (![featureID isEqualToString:featureID2])
    {
      goto LABEL_6;
    }

    [(IDSPseudonymProperties *)self expiryEpoch];
    v8 = v7;
    [(IDSPseudonymProperties *)propertiesCopy expiryEpoch];
    v10 = v8 - v9;
    if (v10 < 0.0)
    {
      v10 = -v10;
    }

    if (v10 > 0.5)
    {
LABEL_6:
      v11 = 0;
LABEL_23:

      goto LABEL_24;
    }

    allowedServices = [(IDSPseudonymProperties *)self allowedServices];
    __imSetFromArray = [allowedServices __imSetFromArray];
    allowedServices2 = [(IDSPseudonymProperties *)propertiesCopy allowedServices];
    __imSetFromArray2 = [allowedServices2 __imSetFromArray];
    if (![__imSetFromArray isEqualToSet:__imSetFromArray2])
    {
      v11 = 0;
LABEL_22:

      goto LABEL_23;
    }

    scopeID = [(IDSPseudonymProperties *)self scopeID];
    if (!scopeID)
    {
      scopeID2 = [(IDSPseudonymProperties *)propertiesCopy scopeID];
      if (!scopeID2)
      {
        scopeID2 = 0;
        v11 = 1;
LABEL_20:

        goto LABEL_21;
      }
    }

    scopeID3 = [(IDSPseudonymProperties *)self scopeID];
    if (scopeID3)
    {
      v18 = scopeID3;
      scopeID4 = [(IDSPseudonymProperties *)propertiesCopy scopeID];
      if (scopeID4)
      {
        v23 = scopeID4;
        scopeID5 = [(IDSPseudonymProperties *)self scopeID];
        [(IDSPseudonymProperties *)propertiesCopy scopeID];
        v20 = v24 = scopeID;
        v11 = [scopeID5 isEqualToString:v20];

        scopeID = v24;
        if (!v24)
        {
          goto LABEL_20;
        }

LABEL_21:

        goto LABEL_22;
      }
    }

    v11 = 0;
    if (!scopeID)
    {
      goto LABEL_20;
    }

    goto LABEL_21;
  }

  v11 = 1;
LABEL_24:

  return v11;
}

- (unint64_t)hash
{
  featureID = [(IDSPseudonymProperties *)self featureID];
  v4 = [featureID hash] + 31;

  scopeID = [(IDSPseudonymProperties *)self scopeID];

  if (scopeID)
  {
    scopeID2 = [(IDSPseudonymProperties *)self scopeID];
    v4 = [scopeID2 hash] - v4 + 32 * v4;
  }

  allowedServices = [(IDSPseudonymProperties *)self allowedServices];
  __imSetFromArray = [allowedServices __imSetFromArray];
  v9 = [__imSetFromArray hash] - v4 + 32 * v4;

  [(IDSPseudonymProperties *)self expiryEpoch];
  return (v10 + (31 * v9));
}

- (IDSPseudonymProperties)initWithDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v5 = [representationCopy _stringForKey:@"f"];
  v6 = [representationCopy _stringForKey:@"s"];
  v7 = [representationCopy _numberForKey:@"p"];
  [v7 doubleValue];
  v9 = v8;

  v10 = [representationCopy _arrayForKey:@"a"];

  if (v5 && [v10 count])
  {
    self = [(IDSPseudonymProperties *)self initWithFeatureID:v5 scopeID:v6 expiryEpoch:v10 allowedServices:v9];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (IDSPseudonymProperties)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"f"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"s"];
  [coderCopy decodeDoubleForKey:@"p"];
  v8 = v7;
  v9 = MEMORY[0x1E695DFD8];
  v10 = objc_opt_class();
  v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
  v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"a"];

  if (v5 && [v12 count])
  {
    self = [(IDSPseudonymProperties *)self initWithFeatureID:v5 scopeID:v6 expiryEpoch:v12 allowedServices:v8];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  featureID = self->_featureID;
  coderCopy = coder;
  [coderCopy encodeObject:featureID forKey:@"f"];
  [coderCopy encodeObject:self->_scopeID forKey:@"s"];
  [coderCopy encodeDouble:@"p" forKey:self->_expiryEpoch];
  [coderCopy encodeObject:self->_allowedServices forKey:@"a"];
}

- (NSDictionary)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = self->_featureID;
  if (v4)
  {
    CFDictionarySetValue(v3, @"f", v4);
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    sub_1A7E206D4();
  }

  scopeID = self->_scopeID;
  if (scopeID)
  {
    CFDictionarySetValue(v3, @"s", scopeID);
  }

  v6 = [MEMORY[0x1E696AD98] numberWithDouble:self->_expiryEpoch];
  if (v6)
  {
    CFDictionarySetValue(v3, @"p", v6);
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    sub_1A7E2075C();
  }

  v7 = self->_allowedServices;
  if (v7)
  {
    CFDictionarySetValue(v3, @"a", v7);
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    sub_1A7E207E4();
  }

  v8 = [(__CFDictionary *)v3 copy];

  return v8;
}

@end