@interface HDMirroredWorkoutPendingData
- (HDMirroredWorkoutPendingData)initWithData:(id)a3 completion:(id)a4;
@end

@implementation HDMirroredWorkoutPendingData

- (HDMirroredWorkoutPendingData)initWithData:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = HDMirroredWorkoutPendingData;
  v8 = [(HDMirroredWorkoutPendingData *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    data = v8->_data;
    v8->_data = v9;

    v11 = [v7 copy];
    completion = v8->_completion;
    v8->_completion = v11;
  }

  return v8;
}

@end