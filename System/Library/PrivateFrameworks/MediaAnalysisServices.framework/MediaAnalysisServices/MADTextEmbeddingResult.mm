@interface MADTextEmbeddingResult
- (MADTextEmbeddingResult)initWithCoder:(id)coder;
- (MADTextEmbeddingResult)initWithEmbedding:(id)embedding calibrationVersion:(id)version mean:(id)mean standardDeviation:(id)deviation bias:(id)bias scale:(id)scale threshold:(id)threshold;
- (id)description;
- (unint64_t)elementCount;
- (void)encodeWithCoder:(id)coder;
- (void)setSafetyScore:(id)score isSafe:(id)safe;
@end

@implementation MADTextEmbeddingResult

- (MADTextEmbeddingResult)initWithEmbedding:(id)embedding calibrationVersion:(id)version mean:(id)mean standardDeviation:(id)deviation bias:(id)bias scale:(id)scale threshold:(id)threshold
{
  embeddingCopy = embedding;
  versionCopy = version;
  meanCopy = mean;
  deviationCopy = deviation;
  biasCopy = bias;
  scaleCopy = scale;
  thresholdCopy = threshold;
  v26.receiver = self;
  v26.super_class = MADTextEmbeddingResult;
  v18 = [(MADTextEmbeddingResult *)&v26 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_embedding, embedding);
    objc_storeStrong(&v19->_calibrationVersion, version);
    objc_storeStrong(&v19->_mean, mean);
    objc_storeStrong(&v19->_standardDeviation, deviation);
    objc_storeStrong(&v19->_bias, bias);
    objc_storeStrong(&v19->_scale, scale);
    objc_storeStrong(&v19->_threshold, threshold);
  }

  return v19;
}

- (MADTextEmbeddingResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v25.receiver = self;
  v25.super_class = MADTextEmbeddingResult;
  v5 = [(MADTextResult *)&v25 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Embedding"];
    embedding = v5->_embedding;
    v5->_embedding = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CalibrationVersion"];
    calibrationVersion = v5->_calibrationVersion;
    v5->_calibrationVersion = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Mean"];
    mean = v5->_mean;
    v5->_mean = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"StandardDeviation"];
    standardDeviation = v5->_standardDeviation;
    v5->_standardDeviation = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Bias"];
    bias = v5->_bias;
    v5->_bias = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Scale"];
    scale = v5->_scale;
    v5->_scale = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Threshold"];
    threshold = v5->_threshold;
    v5->_threshold = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SafetyScore"];
    safetyScore = v5->_safetyScore;
    v5->_safetyScore = v20;

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"IsSafe"];
    isSafe = v5->_isSafe;
    v5->_isSafe = v22;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = MADTextEmbeddingResult;
  coderCopy = coder;
  [(MADTextResult *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_embedding forKey:{@"Embedding", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_calibrationVersion forKey:@"CalibrationVersion"];
  [coderCopy encodeObject:self->_mean forKey:@"Mean"];
  [coderCopy encodeObject:self->_standardDeviation forKey:@"StandardDeviation"];
  [coderCopy encodeObject:self->_bias forKey:@"Bias"];
  [coderCopy encodeObject:self->_scale forKey:@"Scale"];
  [coderCopy encodeObject:self->_threshold forKey:@"Threshold"];
  [coderCopy encodeObject:self->_safetyScore forKey:@"SafetyScore"];
  [coderCopy encodeObject:self->_isSafe forKey:@"IsSafe"];
}

- (void)setSafetyScore:(id)score isSafe:(id)safe
{
  scoreCopy = score;
  safeCopy = safe;
  safetyScore = self->_safetyScore;
  self->_safetyScore = scoreCopy;
  v10 = scoreCopy;

  isSafe = self->_isSafe;
  self->_isSafe = safeCopy;
}

- (unint64_t)elementCount
{
  v9 = *MEMORY[0x1E69E9840];
  type = [(MADEmbeddingResult *)self->_embedding type];
  if (type == 2)
  {
    data = [(MADEmbeddingResult *)self->_embedding data];
    v5 = [data length] >> 2;
    goto LABEL_5;
  }

  if (type == 1)
  {
    data = [(MADEmbeddingResult *)self->_embedding data];
    v5 = [data length] >> 1;
LABEL_5:

    return v5;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    type2 = [(MADEmbeddingResult *)self->_embedding type];
    v8[0] = 67109120;
    v8[1] = type2;
    _os_log_impl(&dword_1C972C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Embedding has unknown element type (%d); cannot derive count", v8, 8u);
  }

  return 0;
}

- (id)description
{
  string = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [string appendFormat:@"<%@ %p, ", v5, self];

  [string appendFormat:@"embedding: %@", self->_embedding];
  if (self->_calibrationVersion)
  {
    [string appendFormat:@", calibrationVersion: %@", self->_calibrationVersion];
  }

  if (self->_mean)
  {
    [string appendFormat:@", mean: %@", self->_mean];
  }

  if (self->_standardDeviation)
  {
    [string appendFormat:@", standardDeviation: %@", self->_standardDeviation];
  }

  if (self->_bias)
  {
    [string appendFormat:@", bias: %@", self->_bias];
  }

  if (self->_scale)
  {
    [string appendFormat:@", scale: %@", self->_scale];
  }

  if (self->_threshold)
  {
    [string appendFormat:@", threshold: %@", self->_threshold];
  }

  if (self->_safetyScore)
  {
    [string appendFormat:@", safetyScore: %@", self->_safetyScore];
  }

  if (self->_isSafe)
  {
    [string appendFormat:@", isSafe: %@", self->_isSafe];
  }

  [string appendFormat:@">"];

  return string;
}

@end