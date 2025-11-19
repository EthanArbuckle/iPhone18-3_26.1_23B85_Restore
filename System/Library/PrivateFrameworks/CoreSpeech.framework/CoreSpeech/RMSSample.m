@interface RMSSample
- (RMSSample)initWithRMSScore:(double)a3 lastSampleCount:(unint64_t)a4;
- (int64_t)compareScoresDesc:(id)a3;
@end

@implementation RMSSample

- (int64_t)compareScoresDesc:(id)a3
{
  v4 = a3;
  [(RMSSample *)self RMSScore];
  v6 = v5;
  [v4 RMSScore];
  v8 = v7;

  return v6 < v8;
}

- (RMSSample)initWithRMSScore:(double)a3 lastSampleCount:(unint64_t)a4
{
  v7.receiver = self;
  v7.super_class = RMSSample;
  result = [(RMSSample *)&v7 init];
  if (result)
  {
    result->_RMSScore = a3;
    result->_lastSampleCount = a4;
  }

  return result;
}

@end