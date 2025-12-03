@interface GTCaptureArchiveOverrideKey
- (BOOL)isEqual:(id)equal;
- (GTCaptureArchiveOverrideKey)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GTCaptureArchiveOverrideKey

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = equalCopy;
    platform = [v6 platform];
    platform = self->_platform;
    if (platform == platform || ([v6 platform], v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "isEqualToString:", self->_platform)))
    {
      riaGeneration = [v6 riaGeneration];
      if (riaGeneration == self->_riaGeneration)
      {
        v9 = 1;
      }

      else
      {
        riaGeneration2 = [v6 riaGeneration];
        v9 = [riaGeneration2 isEqualToNumber:self->_riaGeneration];
      }

      if (platform == platform)
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(GTCaptureArchiveOverrideKey);
  [(GTCaptureArchiveOverrideKey *)v4 setPlatform:self->_platform];
  [(GTCaptureArchiveOverrideKey *)v4 setRiaGeneration:self->_riaGeneration];
  return v4;
}

- (GTCaptureArchiveOverrideKey)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = GTCaptureArchiveOverrideKey;
  v5 = [(GTCaptureArchiveOverrideKey *)&v12 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"platform"];
    platform = v5->_platform;
    v5->_platform = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"riaGeneration"];
    riaGeneration = v5->_riaGeneration;
    v5->_riaGeneration = v8;

    v10 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  platform = self->_platform;
  coderCopy = coder;
  [coderCopy encodeObject:platform forKey:@"platform"];
  [coderCopy encodeObject:self->_riaGeneration forKey:@"riaGeneration"];
}

@end