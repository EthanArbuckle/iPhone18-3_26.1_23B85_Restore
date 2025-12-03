@interface FCUIActivityBaubleCompleteDescription
- (FCUIActivityBaubleCompleteDescription)initWithActivityDescription:(id)description referencePointSize:(double)size maximumPointSize:(double)pointSize referenceDimension:(double)dimension;
- (FCUIActivityBaubleCompleteDescription)initWithSystemImageName:(id)name tintColor:(id)color referencePointSize:(double)size maximumPointSize:(double)pointSize referenceDimension:(double)dimension;
@end

@implementation FCUIActivityBaubleCompleteDescription

- (FCUIActivityBaubleCompleteDescription)initWithSystemImageName:(id)name tintColor:(id)color referencePointSize:(double)size maximumPointSize:(double)pointSize referenceDimension:(double)dimension
{
  v11.receiver = self;
  v11.super_class = FCUIActivityBaubleCompleteDescription;
  result = [(FCUIActivityBaubleDescription *)&v11 initWithSystemImageName:name tintColor:color];
  if (result)
  {
    result->_referencePointSize = size;
    result->_maximumPointSize = pointSize;
    result->_referenceDimension = dimension;
  }

  return result;
}

- (FCUIActivityBaubleCompleteDescription)initWithActivityDescription:(id)description referencePointSize:(double)size maximumPointSize:(double)pointSize referenceDimension:(double)dimension
{
  v10.receiver = self;
  v10.super_class = FCUIActivityBaubleCompleteDescription;
  result = [(FCUIActivityBaubleDescription *)&v10 initWithActivityDescription:description];
  if (result)
  {
    result->_referencePointSize = size;
    result->_maximumPointSize = pointSize;
    result->_referenceDimension = dimension;
  }

  return result;
}

@end