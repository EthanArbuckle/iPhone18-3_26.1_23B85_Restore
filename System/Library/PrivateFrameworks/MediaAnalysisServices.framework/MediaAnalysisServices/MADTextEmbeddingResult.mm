@interface MADTextEmbeddingResult
- (MADTextEmbeddingResult)initWithCoder:(id)a3;
- (MADTextEmbeddingResult)initWithEmbedding:(id)a3 calibrationVersion:(id)a4 mean:(id)a5 standardDeviation:(id)a6 bias:(id)a7 scale:(id)a8 threshold:(id)a9;
- (id)description;
- (unint64_t)elementCount;
- (void)encodeWithCoder:(id)a3;
- (void)setSafetyScore:(id)a3 isSafe:(id)a4;
@end

@implementation MADTextEmbeddingResult

- (MADTextEmbeddingResult)initWithEmbedding:(id)a3 calibrationVersion:(id)a4 mean:(id)a5 standardDeviation:(id)a6 bias:(id)a7 scale:(id)a8 threshold:(id)a9
{
  v25 = a3;
  v24 = a4;
  v23 = a5;
  v22 = a6;
  v21 = a7;
  v16 = a8;
  v17 = a9;
  v26.receiver = self;
  v26.super_class = MADTextEmbeddingResult;
  v18 = [(MADTextEmbeddingResult *)&v26 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_embedding, a3);
    objc_storeStrong(&v19->_calibrationVersion, a4);
    objc_storeStrong(&v19->_mean, a5);
    objc_storeStrong(&v19->_standardDeviation, a6);
    objc_storeStrong(&v19->_bias, a7);
    objc_storeStrong(&v19->_scale, a8);
    objc_storeStrong(&v19->_threshold, a9);
  }

  return v19;
}

- (MADTextEmbeddingResult)initWithCoder:(id)a3
{
  v4 = a3;
  v25.receiver = self;
  v25.super_class = MADTextEmbeddingResult;
  v5 = [(MADTextResult *)&v25 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Embedding"];
    embedding = v5->_embedding;
    v5->_embedding = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CalibrationVersion"];
    calibrationVersion = v5->_calibrationVersion;
    v5->_calibrationVersion = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Mean"];
    mean = v5->_mean;
    v5->_mean = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"StandardDeviation"];
    standardDeviation = v5->_standardDeviation;
    v5->_standardDeviation = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Bias"];
    bias = v5->_bias;
    v5->_bias = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Scale"];
    scale = v5->_scale;
    v5->_scale = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Threshold"];
    threshold = v5->_threshold;
    v5->_threshold = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SafetyScore"];
    safetyScore = v5->_safetyScore;
    v5->_safetyScore = v20;

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"IsSafe"];
    isSafe = v5->_isSafe;
    v5->_isSafe = v22;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = MADTextEmbeddingResult;
  v4 = a3;
  [(MADTextResult *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_embedding forKey:{@"Embedding", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_calibrationVersion forKey:@"CalibrationVersion"];
  [v4 encodeObject:self->_mean forKey:@"Mean"];
  [v4 encodeObject:self->_standardDeviation forKey:@"StandardDeviation"];
  [v4 encodeObject:self->_bias forKey:@"Bias"];
  [v4 encodeObject:self->_scale forKey:@"Scale"];
  [v4 encodeObject:self->_threshold forKey:@"Threshold"];
  [v4 encodeObject:self->_safetyScore forKey:@"SafetyScore"];
  [v4 encodeObject:self->_isSafe forKey:@"IsSafe"];
}

- (void)setSafetyScore:(id)a3 isSafe:(id)a4
{
  v6 = a3;
  v7 = a4;
  safetyScore = self->_safetyScore;
  self->_safetyScore = v6;
  v10 = v6;

  isSafe = self->_isSafe;
  self->_isSafe = v7;
}

- (unint64_t)elementCount
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = [(MADEmbeddingResult *)self->_embedding type];
  if (v3 == 2)
  {
    v4 = [(MADEmbeddingResult *)self->_embedding data];
    v5 = [v4 length] >> 2;
    goto LABEL_5;
  }

  if (v3 == 1)
  {
    v4 = [(MADEmbeddingResult *)self->_embedding data];
    v5 = [v4 length] >> 1;
LABEL_5:

    return v5;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(MADEmbeddingResult *)self->_embedding type];
    v8[0] = 67109120;
    v8[1] = v6;
    _os_log_impl(&dword_1C972C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Embedding has unknown element type (%d); cannot derive count", v8, 8u);
  }

  return 0;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v3 appendFormat:@"<%@ %p, ", v5, self];

  [v3 appendFormat:@"embedding: %@", self->_embedding];
  if (self->_calibrationVersion)
  {
    [v3 appendFormat:@", calibrationVersion: %@", self->_calibrationVersion];
  }

  if (self->_mean)
  {
    [v3 appendFormat:@", mean: %@", self->_mean];
  }

  if (self->_standardDeviation)
  {
    [v3 appendFormat:@", standardDeviation: %@", self->_standardDeviation];
  }

  if (self->_bias)
  {
    [v3 appendFormat:@", bias: %@", self->_bias];
  }

  if (self->_scale)
  {
    [v3 appendFormat:@", scale: %@", self->_scale];
  }

  if (self->_threshold)
  {
    [v3 appendFormat:@", threshold: %@", self->_threshold];
  }

  if (self->_safetyScore)
  {
    [v3 appendFormat:@", safetyScore: %@", self->_safetyScore];
  }

  if (self->_isSafe)
  {
    [v3 appendFormat:@", isSafe: %@", self->_isSafe];
  }

  [v3 appendFormat:@">"];

  return v3;
}

@end