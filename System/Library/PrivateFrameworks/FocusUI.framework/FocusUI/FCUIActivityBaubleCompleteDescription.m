@interface FCUIActivityBaubleCompleteDescription
- (FCUIActivityBaubleCompleteDescription)initWithActivityDescription:(id)a3 referencePointSize:(double)a4 maximumPointSize:(double)a5 referenceDimension:(double)a6;
- (FCUIActivityBaubleCompleteDescription)initWithSystemImageName:(id)a3 tintColor:(id)a4 referencePointSize:(double)a5 maximumPointSize:(double)a6 referenceDimension:(double)a7;
@end

@implementation FCUIActivityBaubleCompleteDescription

- (FCUIActivityBaubleCompleteDescription)initWithSystemImageName:(id)a3 tintColor:(id)a4 referencePointSize:(double)a5 maximumPointSize:(double)a6 referenceDimension:(double)a7
{
  v11.receiver = self;
  v11.super_class = FCUIActivityBaubleCompleteDescription;
  result = [(FCUIActivityBaubleDescription *)&v11 initWithSystemImageName:a3 tintColor:a4];
  if (result)
  {
    result->_referencePointSize = a5;
    result->_maximumPointSize = a6;
    result->_referenceDimension = a7;
  }

  return result;
}

- (FCUIActivityBaubleCompleteDescription)initWithActivityDescription:(id)a3 referencePointSize:(double)a4 maximumPointSize:(double)a5 referenceDimension:(double)a6
{
  v10.receiver = self;
  v10.super_class = FCUIActivityBaubleCompleteDescription;
  result = [(FCUIActivityBaubleDescription *)&v10 initWithActivityDescription:a3];
  if (result)
  {
    result->_referencePointSize = a4;
    result->_maximumPointSize = a5;
    result->_referenceDimension = a6;
  }

  return result;
}

@end