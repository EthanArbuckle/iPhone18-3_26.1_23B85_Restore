@interface HAP2AccessoryServerBrowserOperation
- (HAP2AccessoryServerBrowserOperation)initWithType:(unint64_t)a3;
@end

@implementation HAP2AccessoryServerBrowserOperation

- (HAP2AccessoryServerBrowserOperation)initWithType:(unint64_t)a3
{
  v9.receiver = self;
  v9.super_class = HAP2AccessoryServerBrowserOperation;
  v4 = [(HAP2AccessoryServerBrowserOperation *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_type = a3;
    v6 = [MEMORY[0x277CBEB58] set];
    pendingCoordinators = v5->_pendingCoordinators;
    v5->_pendingCoordinators = v6;
  }

  return v5;
}

@end