@interface BiometricOperation
- (BiometricOperation)init;
- (id)description;
@end

@implementation BiometricOperation

- (BiometricOperation)init
{
  v3.receiver = self;
  v3.super_class = BiometricOperation;
  result = [(BiometricOperation *)&v3 init];
  if (result)
  {
    result->_status = 0;
  }

  return result;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = BiometricOperation;
  v4 = [(BiometricOperation *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@: client=<%p>, status=%d, priority=%ld", v4, self->_client, self->_status, self->_priority];

  return v5;
}

@end