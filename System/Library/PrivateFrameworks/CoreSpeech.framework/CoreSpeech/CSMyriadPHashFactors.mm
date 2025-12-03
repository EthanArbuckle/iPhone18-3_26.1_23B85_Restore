@interface CSMyriadPHashFactors
- (CSMyriadPHashFactors)initWithHash:(unsigned __int16)hash goodness:(unsigned __int8)goodness confidence:(unsigned __int8)confidence absTime:(unint64_t)time frac:(unsigned __int8)frac;
@end

@implementation CSMyriadPHashFactors

- (CSMyriadPHashFactors)initWithHash:(unsigned __int16)hash goodness:(unsigned __int8)goodness confidence:(unsigned __int8)confidence absTime:(unint64_t)time frac:(unsigned __int8)frac
{
  v13.receiver = self;
  v13.super_class = CSMyriadPHashFactors;
  result = [(CSMyriadPHashFactors *)&v13 init];
  if (result)
  {
    result->_hashValue = hash;
    result->_goodness = goodness;
    result->_confidence = confidence;
    result->_absTime = time;
    result->_frac = frac;
  }

  return result;
}

@end