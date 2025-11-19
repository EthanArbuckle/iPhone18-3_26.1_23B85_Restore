@interface EditCollectionParameters
- (EditCollectionParameters)initWithDistanceThreshold:(unint64_t)a3 uttLengthThreshold:(unint64_t)a4 punctuationInsensitive:(BOOL)a5 caseInsensitive:(BOOL)a6 skipClassification:(BOOL)a7 nbestAlignmentSourceBound:(unint64_t)a8 nbestAlignmentTargetBound:(unint64_t)a9;
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

- (EditCollectionParameters)initWithDistanceThreshold:(unint64_t)a3 uttLengthThreshold:(unint64_t)a4 punctuationInsensitive:(BOOL)a5 caseInsensitive:(BOOL)a6 skipClassification:(BOOL)a7 nbestAlignmentSourceBound:(unint64_t)a8 nbestAlignmentTargetBound:(unint64_t)a9
{
  v16.receiver = self;
  v16.super_class = EditCollectionParameters;
  result = [(EditCollectionParameters *)&v16 init];
  if (result)
  {
    result->_distanceThreshold = a3;
    result->_uttLengthThreshold = a4;
    result->_punctuationInsensitive = a5;
    result->_caseInsensitive = a6;
    result->_skipClassification = a7;
    result->_nbestAlignmentSourceBound = a8;
    result->_nbestAlignmentTargetBound = a9;
  }

  return result;
}

@end