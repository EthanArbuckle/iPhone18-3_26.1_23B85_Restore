@interface CCUIControlCenterPositionProviderPackingRule
- (CCUIControlCenterPositionProviderPackingRule)initWithPackFrom:(unint64_t)a3 packingOrder:(unint64_t)a4 sizeLimit:(CCUILayoutSize)a5;
- (CCUILayoutSize)sizeLimit;
@end

@implementation CCUIControlCenterPositionProviderPackingRule

- (CCUIControlCenterPositionProviderPackingRule)initWithPackFrom:(unint64_t)a3 packingOrder:(unint64_t)a4 sizeLimit:(CCUILayoutSize)a5
{
  height = a5.height;
  width = a5.width;
  v10.receiver = self;
  v10.super_class = CCUIControlCenterPositionProviderPackingRule;
  result = [(CCUIControlCenterPositionProviderPackingRule *)&v10 init];
  if (result)
  {
    result->_packFrom = a3;
    result->_packingOrder = a4;
    result->_sizeLimit.width = width;
    result->_sizeLimit.height = height;
  }

  return result;
}

- (CCUILayoutSize)sizeLimit
{
  height = self->_sizeLimit.height;
  width = self->_sizeLimit.width;
  result.height = height;
  result.width = width;
  return result;
}

@end