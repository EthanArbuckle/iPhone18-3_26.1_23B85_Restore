@interface EditCollectionParameters
- (EditCollectionParameters)initWithDistanceThreshold:(unint64_t)threshold uttLengthThreshold:(unint64_t)lengthThreshold punctuationInsensitive:(BOOL)insensitive caseInsensitive:(BOOL)caseInsensitive skipClassification:(BOOL)classification nbestAlignmentSourceBound:(unint64_t)bound nbestAlignmentTargetBound:(unint64_t)targetBound;
- (id)description;
@end

@implementation EditCollectionParameters

- (id)description
{
  v10.receiver = self;
  v10.super_class = EditCollectionParameters;
  v3 = [(EditCollectionParameters *)&v10 description];
  v4 = v3;
  v5 = @"NO";
  if (self->_punctuationInsensitive)
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  if (self->_caseInsensitive)
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  if (self->_skipClassification)
  {
    v5 = @"YES";
  }

  v8 = [NSString stringWithFormat:@"%@, distanceThreshold=%lu, uttLengthThreshold=%lu, punctuationInsensitive=%@, caseInsensitive=%@, skipClassification=%@", v3, self->_distanceThreshold, self->_uttLengthThreshold, v6, v7, v5];

  return v8;
}

- (EditCollectionParameters)initWithDistanceThreshold:(unint64_t)threshold uttLengthThreshold:(unint64_t)lengthThreshold punctuationInsensitive:(BOOL)insensitive caseInsensitive:(BOOL)caseInsensitive skipClassification:(BOOL)classification nbestAlignmentSourceBound:(unint64_t)bound nbestAlignmentTargetBound:(unint64_t)targetBound
{
  v16.receiver = self;
  v16.super_class = EditCollectionParameters;
  result = [(EditCollectionParameters *)&v16 init];
  if (result)
  {
    result->_distanceThreshold = threshold;
    result->_uttLengthThreshold = lengthThreshold;
    result->_punctuationInsensitive = insensitive;
    result->_caseInsensitive = caseInsensitive;
    result->_skipClassification = classification;
    result->_nbestAlignmentSourceBound = bound;
    result->_nbestAlignmentTargetBound = targetBound;
  }

  return result;
}

@end