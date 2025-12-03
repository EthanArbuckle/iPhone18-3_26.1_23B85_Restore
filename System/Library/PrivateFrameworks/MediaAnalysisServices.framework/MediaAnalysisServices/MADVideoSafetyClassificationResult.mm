@interface MADVideoSafetyClassificationResult
- (BOOL)isSensitive;
- (MADVideoSafetyClassificationResult)initWithCoder:(id)coder;
- (MADVideoSafetyClassificationResult)initWithIsSensitiveNudity:(id)nudity isSensitiveGoreViolence:(id)violence scoresForLabels:(id)labels;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MADVideoSafetyClassificationResult

- (MADVideoSafetyClassificationResult)initWithIsSensitiveNudity:(id)nudity isSensitiveGoreViolence:(id)violence scoresForLabels:(id)labels
{
  nudityCopy = nudity;
  violenceCopy = violence;
  labelsCopy = labels;
  v15.receiver = self;
  v15.super_class = MADVideoSafetyClassificationResult;
  v12 = [(MADVideoSafetyClassificationResult *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_isSensitiveNudity, nudity);
    objc_storeStrong(&v13->_isSensitiveGoreViolence, violence);
    objc_storeStrong(&v13->_scoresForLabels, labels);
  }

  return v13;
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

- (MADVideoSafetyClassificationResult)initWithCoder:(id)coder
{
  v17[3] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = MADVideoSafetyClassificationResult;
  v5 = [(MADVideoResult *)&v16 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"IsSensitiveNudity"];
    isSensitiveNudity = v5->_isSensitiveNudity;
    v5->_isSensitiveNudity = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"IsSensitiveGoreViolence"];
    isSensitiveGoreViolence = v5->_isSensitiveGoreViolence;
    v5->_isSensitiveGoreViolence = v8;

    v10 = MEMORY[0x1E695DFD8];
    v17[0] = objc_opt_class();
    v17[1] = objc_opt_class();
    v17[2] = objc_opt_class();
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:3];
    v12 = [v10 setWithArray:v11];

    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"ScoresForLabels"];
    scoresForLabels = v5->_scoresForLabels;
    v5->_scoresForLabels = v13;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = MADVideoSafetyClassificationResult;
  coderCopy = coder;
  [(MADVideoResult *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_isSensitiveNudity forKey:{@"IsSensitiveNudity", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_isSensitiveGoreViolence forKey:@"IsSensitiveGoreViolence"];
  [coderCopy encodeObject:self->_scoresForLabels forKey:@"ScoresForLabels"];
}

- (id)description
{
  string = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [string appendFormat:@"<%@ %p", v5, self];

  [string appendFormat:@", isSensitiveNudity: %@", self->_isSensitiveNudity];
  [string appendFormat:@", isSensitiveGoreViolence: %@", self->_isSensitiveGoreViolence];
  v6 = [(NSDictionary *)self->_scoresForLabels description];
  [string appendFormat:@", scoresForLabels: %@", v6];

  [string appendString:@">"];

  return string;
}

@end