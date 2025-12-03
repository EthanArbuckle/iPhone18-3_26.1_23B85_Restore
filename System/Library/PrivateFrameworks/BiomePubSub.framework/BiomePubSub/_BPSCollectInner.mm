@interface _BPSCollectInner
- (id)receiveNewValue:(id)value;
@end

@implementation _BPSCollectInner

- (id)receiveNewValue:(id)value
{
  valueCopy = value;
  result = [(BPSReduceProducer *)self result];
  [result addObject:valueCopy];

  return [BPSPartialCompletion withState:1];
}

@end