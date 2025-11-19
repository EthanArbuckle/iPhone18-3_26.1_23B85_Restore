@interface MADVIRectangleDetectionResult
- (MADVIRectangleDetectionResult)initWithCoder:(id)a3;
- (MADVIRectangleDetectionResult)initWithObservations:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MADVIRectangleDetectionResult

- (MADVIRectangleDetectionResult)initWithObservations:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MADVIRectangleDetectionResult;
  v6 = [(MADResult *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_observations, a3);
  }

  return v7;
}

- (MADVIRectangleDetectionResult)initWithCoder:(id)a3
{
  v20[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v14.receiver = self;
  v14.super_class = MADVIRectangleDetectionResult;
  v5 = [(MADResult *)&v14 initWithCoder:v4];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v20[0] = objc_opt_class();
    v16 = 0;
    v17 = &v16;
    v18 = 0x2050000000;
    v7 = getVNRectangleObservationClass_softClass;
    v19 = getVNRectangleObservationClass_softClass;
    if (!getVNRectangleObservationClass_softClass)
    {
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __getVNRectangleObservationClass_block_invoke;
      v15[3] = &unk_1E8342DE0;
      v15[4] = &v16;
      __getVNRectangleObservationClass_block_invoke(v15);
      v7 = v17[3];
    }

    v8 = v7;
    _Block_object_dispose(&v16, 8);
    v20[1] = objc_opt_class();
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:2];
    v10 = [v6 setWithArray:v9];

    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"Observations"];
    observations = v5->_observations;
    v5->_observations = v11;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = MADVIRectangleDetectionResult;
  v4 = a3;
  [(MADResult *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_observations forKey:{@"Observations", v5.receiver, v5.super_class}];
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v3 appendFormat:@"<%@ %p, ", v5, self];

  [v3 appendFormat:@"observations: %@>", self->_observations];

  return v3;
}

@end