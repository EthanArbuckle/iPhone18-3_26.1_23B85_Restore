@interface HDMirroredWorkoutPendingData
- (HDMirroredWorkoutPendingData)initWithData:(id)data completion:(id)completion;
@end

@implementation HDMirroredWorkoutPendingData

- (HDMirroredWorkoutPendingData)initWithData:(id)data completion:(id)completion
{
  dataCopy = data;
  completionCopy = completion;
  v14.receiver = self;
  v14.super_class = HDMirroredWorkoutPendingData;
  v8 = [(HDMirroredWorkoutPendingData *)&v14 init];
  if (v8)
  {
    v9 = [dataCopy copy];
    data = v8->_data;
    v8->_data = v9;

    v11 = [completionCopy copy];
    completion = v8->_completion;
    v8->_completion = v11;
  }

  return v8;
}

@end