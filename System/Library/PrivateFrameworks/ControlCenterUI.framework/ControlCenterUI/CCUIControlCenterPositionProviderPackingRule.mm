@interface CCUIControlCenterPositionProviderPackingRule
- (CCUIControlCenterPositionProviderPackingRule)initWithPackFrom:(unint64_t)from packingOrder:(unint64_t)order sizeLimit:(CCUILayoutSize)limit;
- (CCUILayoutSize)sizeLimit;
@end

@implementation CCUIControlCenterPositionProviderPackingRule

- (CCUIControlCenterPositionProviderPackingRule)initWithPackFrom:(unint64_t)from packingOrder:(unint64_t)order sizeLimit:(CCUILayoutSize)limit
{
  height = limit.height;
  width = limit.width;
  v10.receiver = self;
  v10.super_class = CCUIControlCenterPositionProviderPackingRule;
  result = [(CCUIControlCenterPositionProviderPackingRule *)&v10 init];
  if (result)
  {
    result->_packFrom = from;
    result->_packingOrder = order;
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