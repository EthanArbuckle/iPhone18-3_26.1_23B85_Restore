@interface _BPSCollectInner
- (id)receiveNewValue:(id)a3;
@end

@implementation _BPSCollectInner

- (id)receiveNewValue:(id)a3
{
  v4 = a3;
  v5 = [(BPSReduceProducer *)self result];
  [v5 addObject:v4];

  return [BPSPartialCompletion withState:1];
}

@end