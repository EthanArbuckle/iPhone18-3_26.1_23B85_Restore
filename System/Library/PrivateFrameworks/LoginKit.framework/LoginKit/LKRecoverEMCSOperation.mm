@interface LKRecoverEMCSOperation
- (LKRecoverEMCSOperation)init;
- (id)dictionary;
- (void)setRecoveredKeychainItemCount:(int64_t)a3;
@end

@implementation LKRecoverEMCSOperation

- (LKRecoverEMCSOperation)init
{
  v3.receiver = self;
  v3.super_class = LKRecoverEMCSOperation;
  result = [(LKOperation *)&v3 init];
  if (result)
  {
    result->_recoveredKeychainItemCount = 0;
  }

  return result;
}

- (void)setRecoveredKeychainItemCount:(int64_t)a3
{
  if (self->_recoveredKeychainItemCount != a3)
  {
    self->_recoveredKeychainItemCount = a3;
  }
}

- (id)dictionary
{
  v8.receiver = self;
  v8.super_class = LKRecoverEMCSOperation;
  v3 = [(LKOperation *)&v8 dictionary];
  v4 = [v3 mutableCopy];

  v5 = [MEMORY[0x277CCABB0] numberWithDouble:{-[LKRecoverEMCSOperation recoveredKeychainItemCount](self, "recoveredKeychainItemCount")}];
  [v4 setObject:v5 forKeyedSubscript:@"recoveredKeychainItemCount"];

  v6 = [v4 copy];

  return v6;
}

@end