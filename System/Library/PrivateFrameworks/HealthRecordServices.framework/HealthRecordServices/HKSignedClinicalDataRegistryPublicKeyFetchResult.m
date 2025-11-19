@interface HKSignedClinicalDataRegistryPublicKeyFetchResult
- (BOOL)isEqual:(id)a3;
- (HKSignedClinicalDataRegistryPublicKeyFetchResult)initWithCoder:(id)a3;
- (HKSignedClinicalDataRegistryPublicKeyFetchResult)initWithKeyID:(id)a3 outcome:(unint64_t)a4 jwkData:(id)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKSignedClinicalDataRegistryPublicKeyFetchResult

- (HKSignedClinicalDataRegistryPublicKeyFetchResult)initWithKeyID:(id)a3 outcome:(unint64_t)a4 jwkData:(id)a5
{
  v8 = a3;
  v9 = a5;
  v16.receiver = self;
  v16.super_class = HKSignedClinicalDataRegistryPublicKeyFetchResult;
  v10 = [(HKSignedClinicalDataRegistryPublicKeyFetchResult *)&v16 init];
  if (v10)
  {
    v11 = [v8 copy];
    kid = v10->_kid;
    v10->_kid = v11;

    v10->_outcome = a4;
    v13 = [v9 copy];
    jwkData = v10->_jwkData;
    v10->_jwkData = v13;
  }

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v6 = a3;
  v7 = v6;
  if (self != v6)
  {
    v8 = v6;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v14 = 0;
LABEL_20:

      goto LABEL_21;
    }

    kid = self->_kid;
    v10 = [(HKSignedClinicalDataRegistryPublicKeyFetchResult *)v8 kid];
    if (kid == v10)
    {
      outcome = self->_outcome;
      if (outcome == [(HKSignedClinicalDataRegistryPublicKeyFetchResult *)v8 outcome])
      {
        goto LABEL_11;
      }
    }

    else
    {
      v11 = [(HKSignedClinicalDataRegistryPublicKeyFetchResult *)v8 kid];
      if (v11)
      {
        v3 = v11;
        v12 = self->_kid;
        v4 = [(HKSignedClinicalDataRegistryPublicKeyFetchResult *)v8 kid];
        if (![(NSString *)v12 isEqualToString:v4]|| (v13 = self->_outcome, v13 != [(HKSignedClinicalDataRegistryPublicKeyFetchResult *)v8 outcome]))
        {
          v14 = 0;
LABEL_18:

          goto LABEL_19;
        }

LABEL_11:
        jwkData = self->_jwkData;
        v17 = [(HKSignedClinicalDataRegistryPublicKeyFetchResult *)v8 jwkData];
        v18 = v17;
        if (jwkData == v17)
        {

          v14 = 1;
        }

        else
        {
          v19 = [(HKSignedClinicalDataRegistryPublicKeyFetchResult *)v8 jwkData];
          if (v19)
          {
            v20 = v19;
            v21 = self->_jwkData;
            v22 = [(HKSignedClinicalDataRegistryPublicKeyFetchResult *)v8 jwkData];
            v14 = [(NSData *)v21 isEqual:v22];
          }

          else
          {

            v14 = 0;
          }
        }

        if (kid == v10)
        {
          goto LABEL_19;
        }

        goto LABEL_18;
      }
    }

    v14 = 0;
LABEL_19:

    goto LABEL_20;
  }

  v14 = 1;
LABEL_21:

  return v14;
}

- (void)encodeWithCoder:(id)a3
{
  kid = self->_kid;
  v5 = a3;
  [v5 encodeObject:kid forKey:@"kid"];
  [v5 encodeInteger:self->_outcome forKey:@"outcome"];
  [v5 encodeObject:self->_jwkData forKey:@"jwkData"];
}

- (HKSignedClinicalDataRegistryPublicKeyFetchResult)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kid"];
  if (v5 && ([v4 containsValueForKey:@"outcome"] & 1) != 0)
  {
    v6 = [v4 decodeIntegerForKey:@"outcome"];
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"jwkData"];
    self = [(HKSignedClinicalDataRegistryPublicKeyFetchResult *)self initWithKeyID:v5 outcome:v6 jwkData:v7];

    v8 = self;
  }

  else
  {
    [v4 hrs_failWithCocoaValueNotFoundError];
    v8 = 0;
  }

  return v8;
}

@end