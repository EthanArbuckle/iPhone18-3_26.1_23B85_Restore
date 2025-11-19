@interface MADVideoSafetyClassificationResult
- (BOOL)isSensitive;
- (MADVideoSafetyClassificationResult)initWithCoder:(id)a3;
- (MADVideoSafetyClassificationResult)initWithIsSensitiveNudity:(id)a3 isSensitiveGoreViolence:(id)a4 scoresForLabels:(id)a5;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MADVideoSafetyClassificationResult

- (MADVideoSafetyClassificationResult)initWithIsSensitiveNudity:(id)a3 isSensitiveGoreViolence:(id)a4 scoresForLabels:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = MADVideoSafetyClassificationResult;
  v12 = [(MADVideoSafetyClassificationResult *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_isSensitiveNudity, a3);
    objc_storeStrong(&v13->_isSensitiveGoreViolence, a4);
    objc_storeStrong(&v13->_scoresForLabels, a5);
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

- (MADVideoSafetyClassificationResult)initWithCoder:(id)a3
{
  v17[3] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v16.receiver = self;
  v16.super_class = MADVideoSafetyClassificationResult;
  v5 = [(MADVideoResult *)&v16 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"IsSensitiveNudity"];
    isSensitiveNudity = v5->_isSensitiveNudity;
    v5->_isSensitiveNudity = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"IsSensitiveGoreViolence"];
    isSensitiveGoreViolence = v5->_isSensitiveGoreViolence;
    v5->_isSensitiveGoreViolence = v8;

    v10 = MEMORY[0x1E695DFD8];
    v17[0] = objc_opt_class();
    v17[1] = objc_opt_class();
    v17[2] = objc_opt_class();
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:3];
    v12 = [v10 setWithArray:v11];

    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"ScoresForLabels"];
    scoresForLabels = v5->_scoresForLabels;
    v5->_scoresForLabels = v13;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = MADVideoSafetyClassificationResult;
  v4 = a3;
  [(MADVideoResult *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_isSensitiveNudity forKey:{@"IsSensitiveNudity", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_isSensitiveGoreViolence forKey:@"IsSensitiveGoreViolence"];
  [v4 encodeObject:self->_scoresForLabels forKey:@"ScoresForLabels"];
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v3 appendFormat:@"<%@ %p", v5, self];

  [v3 appendFormat:@", isSensitiveNudity: %@", self->_isSensitiveNudity];
  [v3 appendFormat:@", isSensitiveGoreViolence: %@", self->_isSensitiveGoreViolence];
  v6 = [(NSDictionary *)self->_scoresForLabels description];
  [v3 appendFormat:@", scoresForLabels: %@", v6];

  [v3 appendString:@">"];

  return v3;
}

@end