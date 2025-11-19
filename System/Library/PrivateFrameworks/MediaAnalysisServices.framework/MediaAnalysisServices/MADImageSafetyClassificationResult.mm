@interface MADImageSafetyClassificationResult
- (BOOL)isSensitive;
- (MADImageSafetyClassificationResult)initWithCoder:(id)a3;
- (MADImageSafetyClassificationResult)initWithIsSensitiveNudity:(id)a3 isSensitiveGoreViolence:(id)a4;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MADImageSafetyClassificationResult

- (MADImageSafetyClassificationResult)initWithIsSensitiveNudity:(id)a3 isSensitiveGoreViolence:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = MADImageSafetyClassificationResult;
  v9 = [(MADResult *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_isSensitiveNudity, a3);
    objc_storeStrong(&v10->_isSensitiveGoreViolence, a4);
  }

  return v10;
}

- (BOOL)isSensitive
{
  if ([(NSNumber *)self->_isSensitiveNudity BOOLValue])
  {
    return 1;
  }

  isSensitiveGoreViolence = self->_isSensitiveGoreViolence;

  return [(NSNumber *)isSensitiveGoreViolence BOOLValue];
}

- (MADImageSafetyClassificationResult)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = MADImageSafetyClassificationResult;
  v5 = [(MADResult *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"IsSensitiveNudity"];
    isSensitiveNudity = v5->_isSensitiveNudity;
    v5->_isSensitiveNudity = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"IsSensitiveGoreViolence"];
    isSensitiveGoreViolence = v5->_isSensitiveGoreViolence;
    v5->_isSensitiveGoreViolence = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  isSensitiveNudity = self->_isSensitiveNudity;
  v5 = a3;
  [v5 encodeObject:isSensitiveNudity forKey:@"IsSensitiveNudity"];
  [v5 encodeObject:self->_isSensitiveGoreViolence forKey:@"IsSensitiveGoreViolence"];
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v3 appendFormat:@"<%@ %p, ", v5, self];

  [v3 appendFormat:@"isSensitiveNudity : %@, ", self->_isSensitiveNudity];
  [v3 appendFormat:@"isSensitiveGoreViolence: %@>", self->_isSensitiveGoreViolence];

  return v3;
}

@end