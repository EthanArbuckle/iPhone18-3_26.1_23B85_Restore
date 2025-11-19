@interface GTCaptureArchiveOverrideKey
- (BOOL)isEqual:(id)a3;
- (GTCaptureArchiveOverrideKey)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation GTCaptureArchiveOverrideKey

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    v7 = [v6 platform];
    platform = self->_platform;
    if (v7 == platform || ([v6 platform], v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "isEqualToString:", self->_platform)))
    {
      v10 = [v6 riaGeneration];
      if (v10 == self->_riaGeneration)
      {
        v9 = 1;
      }

      else
      {
        v11 = [v6 riaGeneration];
        v9 = [v11 isEqualToNumber:self->_riaGeneration];
      }

      if (v7 == platform)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v9 = 0;
    }

LABEL_11:
    goto LABEL_12;
  }

  v9 = 0;
LABEL_12:

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(GTCaptureArchiveOverrideKey);
  [(GTCaptureArchiveOverrideKey *)v4 setPlatform:self->_platform];
  [(GTCaptureArchiveOverrideKey *)v4 setRiaGeneration:self->_riaGeneration];
  return v4;
}

- (GTCaptureArchiveOverrideKey)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = GTCaptureArchiveOverrideKey;
  v5 = [(GTCaptureArchiveOverrideKey *)&v12 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"platform"];
    platform = v5->_platform;
    v5->_platform = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"riaGeneration"];
    riaGeneration = v5->_riaGeneration;
    v5->_riaGeneration = v8;

    v10 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  platform = self->_platform;
  v5 = a3;
  [v5 encodeObject:platform forKey:@"platform"];
  [v5 encodeObject:self->_riaGeneration forKey:@"riaGeneration"];
}

@end