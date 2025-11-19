@interface CKOperationGroup(IC)
- (id)ic_loggingValues;
@end

@implementation CKOperationGroup(IC)

- (id)ic_loggingValues
{
  v2 = [MEMORY[0x277CBEB38] dictionary];
  v3 = [a1 name];
  if (v3)
  {
    [v2 setObject:v3 forKeyedSubscript:@"name"];
  }

  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(a1, "quantity")}];
  [v2 setObject:v4 forKeyedSubscript:@"quantity"];

  v5 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(a1, "expectedSendSize")}];
  [v2 setObject:v5 forKeyedSubscript:@"expectedSendSize"];

  v6 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(a1, "expectedReceiveSize")}];
  [v2 setObject:v6 forKeyedSubscript:@"expectedReceiveSize"];

  return v2;
}

@end