@interface MADVISceneClassificationRequest
- (MADVISceneClassificationRequest)init;
- (MADVISceneClassificationRequest)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MADVISceneClassificationRequest

- (MADVISceneClassificationRequest)init
{
  v3.receiver = self;
  v3.super_class = MADVISceneClassificationRequest;
  result = [(MADVISceneClassificationRequest *)&v3 init];
  if (result)
  {
    result->_maximumLeafObservations = 15;
    result->_maximumHierarchicalObservations = 15;
    result->_classificationRevision = 3737841665;
    result->_significantEventRevision = 2;
    result->_nsfwRevision = 1;
    result->_recognizeObjectsRevision = 3737841667;
    result->_saliencyRevision = 3737841667;
  }

  return result;
}

- (MADVISceneClassificationRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = MADVISceneClassificationRequest;
  v5 = [(MADRequest *)&v7 initWithCoder:v4];
  if (v5)
  {
    v5->_maximumLeafObservations = [v4 decodeIntegerForKey:@"MaximumLeafObservations"];
    v5->_maximumHierarchicalObservations = [v4 decodeIntegerForKey:@"MaximumHierarchicalObservations"];
    v5->_classificationRevision = [v4 decodeIntegerForKey:@"ClassificationRevision"];
    v5->_nsfwRevision = [v4 decodeIntegerForKey:@"NSFWRevision"];
    v5->_significantEventRevision = [v4 decodeIntegerForKey:@"SignificantEventRevision"];
    v5->_recognizeObjectsRevision = [v4 decodeIntegerForKey:@"RecognizeObjectsRevision"];
    v5->_saliencyRevision = [v4 decodeIntegerForKey:@"SaliencyRevision"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = MADVISceneClassificationRequest;
  v4 = a3;
  [(MADRequest *)&v5 encodeWithCoder:v4];
  [v4 encodeInteger:self->_maximumLeafObservations forKey:{@"MaximumLeafObservations", v5.receiver, v5.super_class}];
  [v4 encodeInteger:self->_maximumHierarchicalObservations forKey:@"MaximumHierarchicalObservations"];
  [v4 encodeInteger:self->_classificationRevision forKey:@"ClassificationRevision"];
  [v4 encodeInteger:self->_nsfwRevision forKey:@"NSFWRevision"];
  [v4 encodeInteger:self->_significantEventRevision forKey:@"SignificantEventRevision"];
  [v4 encodeInteger:self->_recognizeObjectsRevision forKey:@"RecognizeObjectsRevision"];
  [v4 encodeInteger:self->_saliencyRevision forKey:@"SaliencyRevision"];
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v3 appendFormat:@"<%@ %p, ", v5, self];

  [v3 appendFormat:@"classificationRevision: %lu, ", self->_classificationRevision];
  [v3 appendFormat:@"maximumLeafObservations: %lu, ", self->_maximumLeafObservations];
  [v3 appendFormat:@"maximumHierarchicalObservations: %lu, ", self->_maximumHierarchicalObservations];
  [v3 appendFormat:@"nsfwRevision: %lu, ", self->_nsfwRevision];
  [v3 appendFormat:@"significantEventRevision: %lu, ", self->_significantEventRevision];
  [v3 appendFormat:@"recognizeObjectsRevision: %lu, ", self->_recognizeObjectsRevision];
  [v3 appendFormat:@"saliencyRevision: %lu, ", self->_saliencyRevision];
  v6 = [(MADRequest *)self results];
  [v3 appendFormat:@"results: %@, ", v6];

  v7 = [(MADRequest *)self error];
  [v3 appendFormat:@"error: %@>", v7];

  return v3;
}

@end