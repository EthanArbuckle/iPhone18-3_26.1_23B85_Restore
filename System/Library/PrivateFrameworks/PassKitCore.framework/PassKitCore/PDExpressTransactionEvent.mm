@interface PDExpressTransactionEvent
- (id)_initWithType:(int64_t)type;
@end

@implementation PDExpressTransactionEvent

- (id)_initWithType:(int64_t)type
{
  v5.receiver = self;
  v5.super_class = PDExpressTransactionEvent;
  result = [(PDExpressTransactionEvent *)&v5 init];
  if (result)
  {
    *(result + 1) = type;
  }

  return result;
}

@end