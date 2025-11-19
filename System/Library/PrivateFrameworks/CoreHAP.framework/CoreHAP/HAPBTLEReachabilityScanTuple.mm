@interface HAPBTLEReachabilityScanTuple
+ (id)reachabilityScanTupleWithCompletion:(id)a3 workQueue:(id)a4 identifier:(id)a5;
@end

@implementation HAPBTLEReachabilityScanTuple

+ (id)reachabilityScanTupleWithCompletion:(id)a3 workQueue:(id)a4 identifier:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = a3;
  v10 = objc_alloc_init(HAPBTLEReachabilityScanTuple);
  v11 = MEMORY[0x231885210](v9);

  completion = v10->_completion;
  v10->_completion = v11;

  queue = v10->_queue;
  v10->_queue = v7;
  v14 = v7;

  identifier = v10->_identifier;
  v10->_identifier = v8;

  return v10;
}

@end