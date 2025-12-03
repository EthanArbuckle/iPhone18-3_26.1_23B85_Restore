@interface MADImageSafetyClassificationResult
- (BOOL)isSensitive;
- (MADImageSafetyClassificationResult)initWithCoder:(id)coder;
- (MADImageSafetyClassificationResult)initWithIsSensitiveNudity:(id)nudity isSensitiveGoreViolence:(id)violence;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MADImageSafetyClassificationResult

- (MADImageSafetyClassificationResult)initWithIsSensitiveNudity:(id)nudity isSensitiveGoreViolence:(id)violence
{
  nudityCopy = nudity;
  violenceCopy = violence;
  v12.receiver = self;
  v12.super_class = MADImageSafetyClassificationResult;
  v9 = [(MADResult *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_isSensitiveNudity, nudity);
    objc_storeStrong(&v10->_isSensitiveGoreViolence, violence);
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

- (MADImageSafetyClassificationResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = MADImageSafetyClassificationResult;
  v5 = [(MADResult *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"IsSensitiveNudity"];
    isSensitiveNudity = v5->_isSensitiveNudity;
    v5->_isSensitiveNudity = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"IsSensitiveGoreViolence"];
    isSensitiveGoreViolence = v5->_isSensitiveGoreViolence;
    v5->_isSensitiveGoreViolence = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  isSensitiveNudity = self->_isSensitiveNudity;
  coderCopy = coder;
  [coderCopy encodeObject:isSensitiveNudity forKey:@"IsSensitiveNudity"];
  [coderCopy encodeObject:self->_isSensitiveGoreViolence forKey:@"IsSensitiveGoreViolence"];
}

- (id)description
{
  string = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [string appendFormat:@"<%@ %p, ", v5, self];

  [string appendFormat:@"isSensitiveNudity : %@, ", self->_isSensitiveNudity];
  [string appendFormat:@"isSensitiveGoreViolence: %@>", self->_isSensitiveGoreViolence];

  return string;
}

@end