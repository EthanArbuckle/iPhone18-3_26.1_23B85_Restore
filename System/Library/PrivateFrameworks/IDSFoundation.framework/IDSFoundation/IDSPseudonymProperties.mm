@interface IDSPseudonymProperties
- (BOOL)hasBeenExpiredForAtLeast:(double)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToPseudonymProperties:(id)a3;
- (BOOL)willBeExpiredIn:(double)a3;
- (IDSPseudonymProperties)initWithCoder:(id)a3;
- (IDSPseudonymProperties)initWithDictionaryRepresentation:(id)a3;
- (IDSPseudonymProperties)initWithFeatureID:(id)a3 scopeID:(id)a4 expiryEpoch:(double)a5 allowedServices:(id)a6;
- (NSDictionary)dictionaryRepresentation;
- (id)description;
- (id)withUpdatedAllowedServices:(id)a3;
- (id)withUpdatedExpiryEpoch:(double)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IDSPseudonymProperties

- (IDSPseudonymProperties)initWithFeatureID:(id)a3 scopeID:(id)a4 expiryEpoch:(double)a5 allowedServices:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  if (!v10)
  {
    sub_1A7E205EC();
  }

  if (![v12 count])
  {
    sub_1A7E20660();
  }

  v21.receiver = self;
  v21.super_class = IDSPseudonymProperties;
  v13 = [(IDSPseudonymProperties *)&v21 init];
  if (v13)
  {
    v14 = [v10 copy];
    featureID = v13->_featureID;
    v13->_featureID = v14;

    v16 = [v11 copy];
    scopeID = v13->_scopeID;
    v13->_scopeID = v16;

    v13->_expiryEpoch = a5;
    v18 = [v12 copy];
    allowedServices = v13->_allowedServices;
    v13->_allowedServices = v18;
  }

  return v13;
}

- (id)withUpdatedExpiryEpoch:(double)a3
{
  v3 = [[IDSPseudonymProperties alloc] initWithFeatureID:self->_featureID scopeID:self->_scopeID expiryEpoch:self->_allowedServices allowedServices:a3];

  return v3;
}

- (id)withUpdatedAllowedServices:(id)a3
{
  v4 = a3;
  v5 = [[IDSPseudonymProperties alloc] initWithFeatureID:self->_featureID scopeID:self->_scopeID expiryEpoch:v4 allowedServices:self->_expiryEpoch];

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
  v8 = [(IDSPseudonymProperties *)self expirationDate];
  v9 = [MEMORY[0x1E695DF58] currentLocale];
  v10 = [v8 descriptionWithLocale:v9];
  v11 = [v3 stringWithFormat:@"<%@: %p featureID: %@, scopeID: %@, allowedServices: %@, expiryEpoch: %fll, expirationDate: %@>", v5, self, v13, allowedServices, *&expiryEpoch, v10];

  return v11;
}

- (BOOL)hasBeenExpiredForAtLeast:(double)a3
{
  v4 = [(IDSPseudonymProperties *)self expirationDate];
  [v4 timeIntervalSinceNow];
  v6 = v5 < -a3;

  return v6;
}

- (BOOL)willBeExpiredIn:(double)a3
{
  v4 = [(IDSPseudonymProperties *)self expirationDate];
  [v4 timeIntervalSinceNow];
  v6 = v5 < a3;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(IDSPseudonymProperties *)self isEqualToPseudonymProperties:v4];

  return v5;
}

- (BOOL)isEqualToPseudonymProperties:(id)a3
{
  v4 = a3;
  if (self != v4)
  {
    v5 = [(IDSPseudonymProperties *)self featureID];
    v6 = [(IDSPseudonymProperties *)v4 featureID];
    if (![v5 isEqualToString:v6])
    {
      goto LABEL_6;
    }

    [(IDSPseudonymProperties *)self expiryEpoch];
    v8 = v7;
    [(IDSPseudonymProperties *)v4 expiryEpoch];
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

    v12 = [(IDSPseudonymProperties *)self allowedServices];
    v13 = [v12 __imSetFromArray];
    v14 = [(IDSPseudonymProperties *)v4 allowedServices];
    v15 = [v14 __imSetFromArray];
    if (![v13 isEqualToSet:v15])
    {
      v11 = 0;
LABEL_22:

      goto LABEL_23;
    }

    v16 = [(IDSPseudonymProperties *)self scopeID];
    if (!v16)
    {
      v25 = [(IDSPseudonymProperties *)v4 scopeID];
      if (!v25)
      {
        v25 = 0;
        v11 = 1;
LABEL_20:

        goto LABEL_21;
      }
    }

    v17 = [(IDSPseudonymProperties *)self scopeID];
    if (v17)
    {
      v18 = v17;
      v19 = [(IDSPseudonymProperties *)v4 scopeID];
      if (v19)
      {
        v23 = v19;
        v22 = [(IDSPseudonymProperties *)self scopeID];
        [(IDSPseudonymProperties *)v4 scopeID];
        v20 = v24 = v16;
        v11 = [v22 isEqualToString:v20];

        v16 = v24;
        if (!v24)
        {
          goto LABEL_20;
        }

LABEL_21:

        goto LABEL_22;
      }
    }

    v11 = 0;
    if (!v16)
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
  v3 = [(IDSPseudonymProperties *)self featureID];
  v4 = [v3 hash] + 31;

  v5 = [(IDSPseudonymProperties *)self scopeID];

  if (v5)
  {
    v6 = [(IDSPseudonymProperties *)self scopeID];
    v4 = [v6 hash] - v4 + 32 * v4;
  }

  v7 = [(IDSPseudonymProperties *)self allowedServices];
  v8 = [v7 __imSetFromArray];
  v9 = [v8 hash] - v4 + 32 * v4;

  [(IDSPseudonymProperties *)self expiryEpoch];
  return (v10 + (31 * v9));
}

- (IDSPseudonymProperties)initWithDictionaryRepresentation:(id)a3
{
  v4 = a3;
  v5 = [v4 _stringForKey:@"f"];
  v6 = [v4 _stringForKey:@"s"];
  v7 = [v4 _numberForKey:@"p"];
  [v7 doubleValue];
  v9 = v8;

  v10 = [v4 _arrayForKey:@"a"];

  if (v5 && [v10 count])
  {
    self = [(IDSPseudonymProperties *)self initWithFeatureID:v5 scopeID:v6 expiryEpoch:v10 allowedServices:v9];
    v11 = self;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (IDSPseudonymProperties)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"f"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"s"];
  [v4 decodeDoubleForKey:@"p"];
  v8 = v7;
  v9 = MEMORY[0x1E695DFD8];
  v10 = objc_opt_class();
  v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
  v12 = [v4 decodeObjectOfClasses:v11 forKey:@"a"];

  if (v5 && [v12 count])
  {
    self = [(IDSPseudonymProperties *)self initWithFeatureID:v5 scopeID:v6 expiryEpoch:v12 allowedServices:v8];
    v13 = self;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  featureID = self->_featureID;
  v5 = a3;
  [v5 encodeObject:featureID forKey:@"f"];
  [v5 encodeObject:self->_scopeID forKey:@"s"];
  [v5 encodeDouble:@"p" forKey:self->_expiryEpoch];
  [v5 encodeObject:self->_allowedServices forKey:@"a"];
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