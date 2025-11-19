@interface HAPCharacteristicReadCompletionTuple
+ (id)readCompletionTupleWithHandler:(id)a3 queue:(id)a4;
@end

@implementation HAPCharacteristicReadCompletionTuple

+ (id)readCompletionTupleWithHandler:(id)a3 queue:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(HAPCharacteristicReadCompletionTuple);
  [(HAPCharacteristicReadCompletionTuple *)v7 setHandler:v6];

  [(HAPCharacteristicReadCompletionTuple *)v7 setCompletionQueue:v5];

  return v7;
}

@end