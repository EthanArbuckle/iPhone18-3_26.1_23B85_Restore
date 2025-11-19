@interface DAWaiterWrapper
- (DAWaiterWrapper)init;
- (id)description;
@end

@implementation DAWaiterWrapper

- (DAWaiterWrapper)init
{
  v4.receiver = self;
  v4.super_class = DAWaiterWrapper;
  result = [(DAWaiterWrapper *)&v4 init];
  if (result)
  {
    v3 = init___curWaiterNum;
    result->_waiterNum = init___curWaiterNum;
    init___curWaiterNum = v3 + 1;
  }

  return result;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = DAWaiterWrapper;
  v4 = [(DAWaiterWrapper *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@: waiter %@ wants dataclasses %lx", v4, self->_waiter, self->_dataclasses];

  return v5;
}

@end