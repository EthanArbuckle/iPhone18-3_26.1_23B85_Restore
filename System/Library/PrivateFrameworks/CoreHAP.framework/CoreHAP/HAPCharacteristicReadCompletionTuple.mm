@interface HAPCharacteristicReadCompletionTuple
+ (id)readCompletionTupleWithHandler:(id)handler queue:(id)queue;
@end

@implementation HAPCharacteristicReadCompletionTuple

+ (id)readCompletionTupleWithHandler:(id)handler queue:(id)queue
{
  queueCopy = queue;
  handlerCopy = handler;
  v7 = objc_alloc_init(HAPCharacteristicReadCompletionTuple);
  [(HAPCharacteristicReadCompletionTuple *)v7 setHandler:handlerCopy];

  [(HAPCharacteristicReadCompletionTuple *)v7 setCompletionQueue:queueCopy];

  return v7;
}

@end