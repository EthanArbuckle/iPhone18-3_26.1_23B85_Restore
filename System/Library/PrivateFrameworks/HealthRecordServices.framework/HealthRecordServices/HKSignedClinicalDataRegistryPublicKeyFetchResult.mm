@interface HKSignedClinicalDataRegistryPublicKeyFetchResult
- (BOOL)isEqual:(id)equal;
- (HKSignedClinicalDataRegistryPublicKeyFetchResult)initWithCoder:(id)coder;
- (HKSignedClinicalDataRegistryPublicKeyFetchResult)initWithKeyID:(id)d outcome:(unint64_t)outcome jwkData:(id)data;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKSignedClinicalDataRegistryPublicKeyFetchResult

- (HKSignedClinicalDataRegistryPublicKeyFetchResult)initWithKeyID:(id)d outcome:(unint64_t)outcome jwkData:(id)data
{
  dCopy = d;
  dataCopy = data;
  v16.receiver = self;
  v16.super_class = HKSignedClinicalDataRegistryPublicKeyFetchResult;
  v10 = [(HKSignedClinicalDataRegistryPublicKeyFetchResult *)&v16 init];
  if (v10)
  {
    v11 = [dCopy copy];
    kid = v10->_kid;
    v10->_kid = v11;

    v10->_outcome = outcome;
    v13 = [dataCopy copy];
    jwkData = v10->_jwkData;
    v10->_jwkData = v13;
  }

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v7 = equalCopy;
  if (self != equalCopy)
  {
    v8 = equalCopy;
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
        jwkData = [(HKSignedClinicalDataRegistryPublicKeyFetchResult *)v8 jwkData];
        v18 = jwkData;
        if (jwkData == jwkData)
        {

          v14 = 1;
        }

        else
        {
          jwkData2 = [(HKSignedClinicalDataRegistryPublicKeyFetchResult *)v8 jwkData];
          if (jwkData2)
          {
            v20 = jwkData2;
            v21 = self->_jwkData;
            jwkData3 = [(HKSignedClinicalDataRegistryPublicKeyFetchResult *)v8 jwkData];
            v14 = [(NSData *)v21 isEqual:jwkData3];
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

- (void)encodeWithCoder:(id)coder
{
  kid = self->_kid;
  coderCopy = coder;
  [coderCopy encodeObject:kid forKey:@"kid"];
  [coderCopy encodeInteger:self->_outcome forKey:@"outcome"];
  [coderCopy encodeObject:self->_jwkData forKey:@"jwkData"];
}

- (HKSignedClinicalDataRegistryPublicKeyFetchResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kid"];
  if (v5 && ([coderCopy containsValueForKey:@"outcome"] & 1) != 0)
  {
    v6 = [coderCopy decodeIntegerForKey:@"outcome"];
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"jwkData"];
    self = [(HKSignedClinicalDataRegistryPublicKeyFetchResult *)self initWithKeyID:v5 outcome:v6 jwkData:v7];

    selfCopy = self;
  }

  else
  {
    [coderCopy hrs_failWithCocoaValueNotFoundError];
    selfCopy = 0;
  }

  return selfCopy;
}

@end