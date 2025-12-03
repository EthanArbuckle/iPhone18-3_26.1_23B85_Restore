@interface IDSCurrentServerTimePair
- (IDSCurrentServerTimePair)initWithInitialProcessMonotonicTimeInNanoSeconds:(unint64_t)seconds initialServerTimeInNanoSeconds:(unint64_t)nanoSeconds isAccurate:(BOOL)accurate;
@end

@implementation IDSCurrentServerTimePair

- (IDSCurrentServerTimePair)initWithInitialProcessMonotonicTimeInNanoSeconds:(unint64_t)seconds initialServerTimeInNanoSeconds:(unint64_t)nanoSeconds isAccurate:(BOOL)accurate
{
  v9.receiver = self;
  v9.super_class = IDSCurrentServerTimePair;
  result = [(IDSCurrentServerTimePair *)&v9 init];
  if (result)
  {
    result->_initialProcessMonotonicTimeInNanoSeconds = seconds;
    result->_initialServerTimeInNanoSeconds = nanoSeconds;
    result->_isAccurate = accurate;
  }

  return result;
}

@end