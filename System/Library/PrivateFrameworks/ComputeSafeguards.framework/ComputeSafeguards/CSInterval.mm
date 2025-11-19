@interface CSInterval
- (CSInterval)initWithStartTime:(id)a3 endTime:(id)a4 value:(double)a5 label:(id)a6;
@end

@implementation CSInterval

- (CSInterval)initWithStartTime:(id)a3 endTime:(id)a4 value:(double)a5 label:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = CSInterval;
  v14 = [(CSInterval *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_startTime, a3);
    objc_storeStrong(&v15->_endTime, a4);
    v15->_value = a5;
    objc_storeStrong(&v15->_label, a6);
  }

  return v15;
}

@end