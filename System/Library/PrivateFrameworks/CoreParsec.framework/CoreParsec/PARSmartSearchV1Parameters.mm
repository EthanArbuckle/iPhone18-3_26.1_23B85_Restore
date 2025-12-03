@interface PARSmartSearchV1Parameters
- (PARSmartSearchV1Parameters)init;
- (PARSmartSearchV1Parameters)initWithCoder:(id)coder;
- (id)initFromBag:(id)bag;
- (id)initFromLast1hour:(double)last1hour last1day:(double)last1day last1week:(double)last1week last1month:(double)last1month all:(double)all mostRecent:(double)recent minThresholdToSend:(double)send;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PARSmartSearchV1Parameters

- (void)encodeWithCoder:(id)coder
{
  weightLast1hour = self->_weightLast1hour;
  coderCopy = coder;
  [coderCopy encodeDouble:@"_weightLast1hour" forKey:weightLast1hour];
  [coderCopy encodeDouble:@"_weightLast1day" forKey:self->_weightLast1day];
  [coderCopy encodeDouble:@"_weightLast1week" forKey:self->_weightLast1week];
  [coderCopy encodeDouble:@"_weightLast1month" forKey:self->_weightLast1month];
  [coderCopy encodeDouble:@"_weightAll" forKey:self->_weightAll];
  [coderCopy encodeDouble:@"_weightMostRecent" forKey:self->_weightMostRecent];
  [coderCopy encodeDouble:@"_weightMinThresholdToSend" forKey:self->_weightMinThresholdToSend];
}

- (PARSmartSearchV1Parameters)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(PARSmartSearchV1Parameters *)self init];
  if (v5)
  {
    [coderCopy decodeDoubleForKey:@"_weightLast1hour"];
    v5->_weightLast1hour = v6;
    [coderCopy decodeDoubleForKey:@"_weightLast1day"];
    v5->_weightLast1day = v7;
    [coderCopy decodeDoubleForKey:@"_weightLast1week"];
    v5->_weightLast1week = v8;
    [coderCopy decodeDoubleForKey:@"_weightLast1month"];
    v5->_weightLast1month = v9;
    [coderCopy decodeDoubleForKey:@"_weightAll"];
    v5->_weightAll = v10;
    [coderCopy decodeDoubleForKey:@"_weightMostRecent"];
    v5->_weightMostRecent = v11;
    [coderCopy decodeDoubleForKey:@"_weightMinThresholdToSend"];
    v5->_weightMinThresholdToSend = v12;
  }

  return v5;
}

- (id)initFromLast1hour:(double)last1hour last1day:(double)last1day last1week:(double)last1week last1month:(double)last1month all:(double)all mostRecent:(double)recent minThresholdToSend:(double)send
{
  result = [(PARSmartSearchV1Parameters *)self init];
  if (result)
  {
    *(result + 1) = last1hour;
    *(result + 2) = last1day;
    *(result + 3) = last1week;
    *(result + 4) = last1month;
    *(result + 5) = all;
    *(result + 6) = recent;
    *(result + 7) = send;
  }

  return result;
}

- (id)initFromBag:(id)bag
{
  bagCopy = bag;
  v5 = [(PARSmartSearchV1Parameters *)self init];
  if (v5)
  {
    [bagCopy safariLast1hour];
    v5->_weightLast1hour = v6;
    [bagCopy safariLast1day];
    v5->_weightLast1day = v7;
    [bagCopy safariLast1week];
    v5->_weightLast1week = v8;
    [bagCopy safariLast1month];
    v5->_weightLast1month = v9;
    [bagCopy safariAll];
    v5->_weightAll = v10;
    [bagCopy safariMostRecent];
    v5->_weightMostRecent = v11;
    [bagCopy safariDecay];
    v5->_weightMinThresholdToSend = v12;
  }

  return v5;
}

- (PARSmartSearchV1Parameters)init
{
  v3.receiver = self;
  v3.super_class = PARSmartSearchV1Parameters;
  result = [(PARSmartSearchV1Parameters *)&v3 init];
  if (result)
  {
    *&result->_weightLast1hour = xmmword_1B11352D0;
    *&result->_weightLast1week = xmmword_1B11352E0;
    *&result->_weightAll = xmmword_1B11352F0;
    result->_weightMinThresholdToSend = 0.0;
  }

  return result;
}

@end