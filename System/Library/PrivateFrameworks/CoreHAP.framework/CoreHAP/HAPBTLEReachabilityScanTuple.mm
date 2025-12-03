@interface HAPBTLEReachabilityScanTuple
+ (id)reachabilityScanTupleWithCompletion:(id)completion workQueue:(id)queue identifier:(id)identifier;
@end

@implementation HAPBTLEReachabilityScanTuple

+ (id)reachabilityScanTupleWithCompletion:(id)completion workQueue:(id)queue identifier:(id)identifier
{
  queueCopy = queue;
  identifierCopy = identifier;
  completionCopy = completion;
  v10 = objc_alloc_init(HAPBTLEReachabilityScanTuple);
  v11 = MEMORY[0x231885210](completionCopy);

  completion = v10->_completion;
  v10->_completion = v11;

  queue = v10->_queue;
  v10->_queue = queueCopy;
  v14 = queueCopy;

  identifier = v10->_identifier;
  v10->_identifier = identifierCopy;

  return v10;
}

@end