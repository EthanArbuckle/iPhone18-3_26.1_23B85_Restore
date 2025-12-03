@interface CSInterval
- (CSInterval)initWithStartTime:(id)time endTime:(id)endTime value:(double)value label:(id)label;
@end

@implementation CSInterval

- (CSInterval)initWithStartTime:(id)time endTime:(id)endTime value:(double)value label:(id)label
{
  timeCopy = time;
  endTimeCopy = endTime;
  labelCopy = label;
  v17.receiver = self;
  v17.super_class = CSInterval;
  v14 = [(CSInterval *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_startTime, time);
    objc_storeStrong(&v15->_endTime, endTime);
    v15->_value = value;
    objc_storeStrong(&v15->_label, label);
  }

  return v15;
}

@end