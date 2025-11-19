@interface PDExpressTransactionEvent
- (id)_initWithType:(int64_t)a3;
@end

@implementation PDExpressTransactionEvent

- (id)_initWithType:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = PDExpressTransactionEvent;
  result = [(PDExpressTransactionEvent *)&v5 init];
  if (result)
  {
    *(result + 1) = a3;
  }

  return result;
}

@end