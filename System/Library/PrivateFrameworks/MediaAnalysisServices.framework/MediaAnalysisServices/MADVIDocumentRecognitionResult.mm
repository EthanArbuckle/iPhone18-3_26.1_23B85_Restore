@interface MADVIDocumentRecognitionResult
- (MADVIDocumentRecognitionResult)initWithCoder:(id)a3;
- (MADVIDocumentRecognitionResult)initWithObservations:(id)a3;
- (double)executionTimeInterval;
- (id)description;
- (unint64_t)executionNanoseconds;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MADVIDocumentRecognitionResult

- (MADVIDocumentRecognitionResult)initWithObservations:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MADVIDocumentRecognitionResult;
  v6 = [(MADResult *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_observations, a3);
  }

  return v7;
}

- (MADVIDocumentRecognitionResult)initWithCoder:(id)a3
{
  v20[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v14.receiver = self;
  v14.super_class = MADVIDocumentRecognitionResult;
  v5 = [(MADResult *)&v14 initWithCoder:v4];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v20[0] = objc_opt_class();
    v16 = 0;
    v17 = &v16;
    v18 = 0x2050000000;
    v7 = getVNDocumentObservationClass_softClass_0;
    v19 = getVNDocumentObservationClass_softClass_0;
    if (!getVNDocumentObservationClass_softClass_0)
    {
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __getVNDocumentObservationClass_block_invoke_0;
      v15[3] = &unk_1E8342DE0;
      v15[4] = &v16;
      __getVNDocumentObservationClass_block_invoke_0(v15);
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
  v5.super_class = MADVIDocumentRecognitionResult;
  v4 = a3;
  [(MADResult *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_observations forKey:{@"Observations", v5.receiver, v5.super_class}];
}

- (unint64_t)executionNanoseconds
{
  v3.receiver = self;
  v3.super_class = MADVIDocumentRecognitionResult;
  return [(MADResult *)&v3 executionNanoseconds];
}

- (double)executionTimeInterval
{
  v3.receiver = self;
  v3.super_class = MADVIDocumentRecognitionResult;
  [(MADResult *)&v3 executionTimeInterval];
  return result;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v3 appendFormat:@"<%@ %p, ", v5, self];

  [v3 appendFormat:@"observations: "];
  if ([(NSArray *)self->_observations count])
  {
    v6 = 0;
    do
    {
      v7 = [(NSArray *)self->_observations objectAtIndexedSubscript:v6];
      v8 = [v7 getTranscript];
      v9 = [MEMORY[0x1E696AB08] newlineCharacterSet];
      v10 = [v8 componentsSeparatedByCharactersInSet:v9];
      v11 = [v10 componentsJoinedByString:@" "];

      if (v6)
      {
        v12 = ",";
      }

      else
      {
        v12 = &unk_1C9770416;
      }

      v13 = [(NSArray *)self->_observations objectAtIndexedSubscript:v6];
      [v3 appendFormat:@"%s%@ transcript=%@", v12, v13, v11];

      ++v6;
    }

    while (v6 < [(NSArray *)self->_observations count]);
  }

  [v3 appendFormat:@">"];

  return v3;
}

@end