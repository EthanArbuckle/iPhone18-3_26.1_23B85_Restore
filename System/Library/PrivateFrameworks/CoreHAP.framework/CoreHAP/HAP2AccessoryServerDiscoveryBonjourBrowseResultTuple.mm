@interface HAP2AccessoryServerDiscoveryBonjourBrowseResultTuple
- (HAP2AccessoryServerDiscoveryBonjourBrowseResultTuple)initWithPreviousResult:(id)a3 currentResult:(id)a4 changes:(unint64_t)a5;
@end

@implementation HAP2AccessoryServerDiscoveryBonjourBrowseResultTuple

- (HAP2AccessoryServerDiscoveryBonjourBrowseResultTuple)initWithPreviousResult:(id)a3 currentResult:(id)a4 changes:(unint64_t)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = HAP2AccessoryServerDiscoveryBonjourBrowseResultTuple;
  v11 = [(HAP2AccessoryServerDiscoveryBonjourBrowseResultTuple *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_previousResult, a3);
    objc_storeStrong(&v12->_currentResult, a4);
    v12->_changes = a5;
  }

  return v12;
}

@end