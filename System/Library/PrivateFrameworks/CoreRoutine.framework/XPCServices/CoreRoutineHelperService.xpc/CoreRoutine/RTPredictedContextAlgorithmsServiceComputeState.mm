@interface RTPredictedContextAlgorithmsServiceComputeState
- (RTPredictedContextAlgorithmsServiceComputeState)init;
@end

@implementation RTPredictedContextAlgorithmsServiceComputeState

- (RTPredictedContextAlgorithmsServiceComputeState)init
{
  v7.receiver = self;
  v7.super_class = RTPredictedContextAlgorithmsServiceComputeState;
  v2 = [(RTPredictedContextAlgorithmsServiceComputeState *)&v7 init];
  v3 = v2;
  if (v2)
  {
    *&v2->_receivedInterruptRequest = 0;
    v4 = +[NSMutableArray array];
    interactionRecords = v3->_interactionRecords;
    v3->_interactionRecords = v4;
  }

  return v3;
}

@end