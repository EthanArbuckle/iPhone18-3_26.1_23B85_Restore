@interface HAP2AccessoryServerDiscoveryBonjourBrowseResultTuple
- (HAP2AccessoryServerDiscoveryBonjourBrowseResultTuple)initWithPreviousResult:(id)result currentResult:(id)currentResult changes:(unint64_t)changes;
@end

@implementation HAP2AccessoryServerDiscoveryBonjourBrowseResultTuple

- (HAP2AccessoryServerDiscoveryBonjourBrowseResultTuple)initWithPreviousResult:(id)result currentResult:(id)currentResult changes:(unint64_t)changes
{
  resultCopy = result;
  currentResultCopy = currentResult;
  v14.receiver = self;
  v14.super_class = HAP2AccessoryServerDiscoveryBonjourBrowseResultTuple;
  v11 = [(HAP2AccessoryServerDiscoveryBonjourBrowseResultTuple *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_previousResult, result);
    objc_storeStrong(&v12->_currentResult, currentResult);
    v12->_changes = changes;
  }

  return v12;
}

@end