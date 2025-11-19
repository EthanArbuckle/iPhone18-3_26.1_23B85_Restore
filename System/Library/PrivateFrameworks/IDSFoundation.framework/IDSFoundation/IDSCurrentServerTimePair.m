@interface IDSCurrentServerTimePair
- (IDSCurrentServerTimePair)initWithInitialProcessMonotonicTimeInNanoSeconds:(unint64_t)a3 initialServerTimeInNanoSeconds:(unint64_t)a4 isAccurate:(BOOL)a5;
@end

@implementation IDSCurrentServerTimePair

- (IDSCurrentServerTimePair)initWithInitialProcessMonotonicTimeInNanoSeconds:(unint64_t)a3 initialServerTimeInNanoSeconds:(unint64_t)a4 isAccurate:(BOOL)a5
{
  v9.receiver = self;
  v9.super_class = IDSCurrentServerTimePair;
  result = [(IDSCurrentServerTimePair *)&v9 init];
  if (result)
  {
    result->_initialProcessMonotonicTimeInNanoSeconds = a3;
    result->_initialServerTimeInNanoSeconds = a4;
    result->_isAccurate = a5;
  }

  return result;
}

@end