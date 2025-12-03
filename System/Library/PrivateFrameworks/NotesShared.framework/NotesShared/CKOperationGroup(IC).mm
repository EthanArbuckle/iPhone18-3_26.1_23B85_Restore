@interface CKOperationGroup(IC)
- (id)ic_loggingValues;
@end

@implementation CKOperationGroup(IC)

- (id)ic_loggingValues
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  name = [self name];
  if (name)
  {
    [dictionary setObject:name forKeyedSubscript:@"name"];
  }

  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(self, "quantity")}];
  [dictionary setObject:v4 forKeyedSubscript:@"quantity"];

  v5 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(self, "expectedSendSize")}];
  [dictionary setObject:v5 forKeyedSubscript:@"expectedSendSize"];

  v6 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(self, "expectedReceiveSize")}];
  [dictionary setObject:v6 forKeyedSubscript:@"expectedReceiveSize"];

  return dictionary;
}

@end