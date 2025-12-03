@interface MADVISceneClassificationRequest
- (MADVISceneClassificationRequest)init;
- (MADVISceneClassificationRequest)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
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

- (MADVISceneClassificationRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = MADVISceneClassificationRequest;
  v5 = [(MADRequest *)&v7 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_maximumLeafObservations = [coderCopy decodeIntegerForKey:@"MaximumLeafObservations"];
    v5->_maximumHierarchicalObservations = [coderCopy decodeIntegerForKey:@"MaximumHierarchicalObservations"];
    v5->_classificationRevision = [coderCopy decodeIntegerForKey:@"ClassificationRevision"];
    v5->_nsfwRevision = [coderCopy decodeIntegerForKey:@"NSFWRevision"];
    v5->_significantEventRevision = [coderCopy decodeIntegerForKey:@"SignificantEventRevision"];
    v5->_recognizeObjectsRevision = [coderCopy decodeIntegerForKey:@"RecognizeObjectsRevision"];
    v5->_saliencyRevision = [coderCopy decodeIntegerForKey:@"SaliencyRevision"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = MADVISceneClassificationRequest;
  coderCopy = coder;
  [(MADRequest *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:self->_maximumLeafObservations forKey:{@"MaximumLeafObservations", v5.receiver, v5.super_class}];
  [coderCopy encodeInteger:self->_maximumHierarchicalObservations forKey:@"MaximumHierarchicalObservations"];
  [coderCopy encodeInteger:self->_classificationRevision forKey:@"ClassificationRevision"];
  [coderCopy encodeInteger:self->_nsfwRevision forKey:@"NSFWRevision"];
  [coderCopy encodeInteger:self->_significantEventRevision forKey:@"SignificantEventRevision"];
  [coderCopy encodeInteger:self->_recognizeObjectsRevision forKey:@"RecognizeObjectsRevision"];
  [coderCopy encodeInteger:self->_saliencyRevision forKey:@"SaliencyRevision"];
}

- (id)description
{
  string = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [string appendFormat:@"<%@ %p, ", v5, self];

  [string appendFormat:@"classificationRevision: %lu, ", self->_classificationRevision];
  [string appendFormat:@"maximumLeafObservations: %lu, ", self->_maximumLeafObservations];
  [string appendFormat:@"maximumHierarchicalObservations: %lu, ", self->_maximumHierarchicalObservations];
  [string appendFormat:@"nsfwRevision: %lu, ", self->_nsfwRevision];
  [string appendFormat:@"significantEventRevision: %lu, ", self->_significantEventRevision];
  [string appendFormat:@"recognizeObjectsRevision: %lu, ", self->_recognizeObjectsRevision];
  [string appendFormat:@"saliencyRevision: %lu, ", self->_saliencyRevision];
  results = [(MADRequest *)self results];
  [string appendFormat:@"results: %@, ", results];

  error = [(MADRequest *)self error];
  [string appendFormat:@"error: %@>", error];

  return string;
}

@end