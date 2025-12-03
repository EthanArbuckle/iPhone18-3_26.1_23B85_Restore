@interface RMSSample
- (RMSSample)initWithRMSScore:(double)score lastSampleCount:(unint64_t)count;
- (int64_t)compareScoresDesc:(id)desc;
@end

@implementation RMSSample

- (int64_t)compareScoresDesc:(id)desc
{
  descCopy = desc;
  [(RMSSample *)self RMSScore];
  v6 = v5;
  [descCopy RMSScore];
  v8 = v7;

  return v6 < v8;
}

- (RMSSample)initWithRMSScore:(double)score lastSampleCount:(unint64_t)count
{
  v7.receiver = self;
  v7.super_class = RMSSample;
  result = [(RMSSample *)&v7 init];
  if (result)
  {
    result->_RMSScore = score;
    result->_lastSampleCount = count;
  }

  return result;
}

@end