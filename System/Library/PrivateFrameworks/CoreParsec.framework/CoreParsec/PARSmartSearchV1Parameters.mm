@interface PARSmartSearchV1Parameters
- (PARSmartSearchV1Parameters)init;
- (PARSmartSearchV1Parameters)initWithCoder:(id)a3;
- (id)initFromBag:(id)a3;
- (id)initFromLast1hour:(double)a3 last1day:(double)a4 last1week:(double)a5 last1month:(double)a6 all:(double)a7 mostRecent:(double)a8 minThresholdToSend:(double)a9;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PARSmartSearchV1Parameters

- (void)encodeWithCoder:(id)a3
{
  weightLast1hour = self->_weightLast1hour;
  v5 = a3;
  [v5 encodeDouble:@"_weightLast1hour" forKey:weightLast1hour];
  [v5 encodeDouble:@"_weightLast1day" forKey:self->_weightLast1day];
  [v5 encodeDouble:@"_weightLast1week" forKey:self->_weightLast1week];
  [v5 encodeDouble:@"_weightLast1month" forKey:self->_weightLast1month];
  [v5 encodeDouble:@"_weightAll" forKey:self->_weightAll];
  [v5 encodeDouble:@"_weightMostRecent" forKey:self->_weightMostRecent];
  [v5 encodeDouble:@"_weightMinThresholdToSend" forKey:self->_weightMinThresholdToSend];
}

- (PARSmartSearchV1Parameters)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(PARSmartSearchV1Parameters *)self init];
  if (v5)
  {
    [v4 decodeDoubleForKey:@"_weightLast1hour"];
    v5->_weightLast1hour = v6;
    [v4 decodeDoubleForKey:@"_weightLast1day"];
    v5->_weightLast1day = v7;
    [v4 decodeDoubleForKey:@"_weightLast1week"];
    v5->_weightLast1week = v8;
    [v4 decodeDoubleForKey:@"_weightLast1month"];
    v5->_weightLast1month = v9;
    [v4 decodeDoubleForKey:@"_weightAll"];
    v5->_weightAll = v10;
    [v4 decodeDoubleForKey:@"_weightMostRecent"];
    v5->_weightMostRecent = v11;
    [v4 decodeDoubleForKey:@"_weightMinThresholdToSend"];
    v5->_weightMinThresholdToSend = v12;
  }

  return v5;
}

- (id)initFromLast1hour:(double)a3 last1day:(double)a4 last1week:(double)a5 last1month:(double)a6 all:(double)a7 mostRecent:(double)a8 minThresholdToSend:(double)a9
{
  result = [(PARSmartSearchV1Parameters *)self init];
  if (result)
  {
    *(result + 1) = a3;
    *(result + 2) = a4;
    *(result + 3) = a5;
    *(result + 4) = a6;
    *(result + 5) = a7;
    *(result + 6) = a8;
    *(result + 7) = a9;
  }

  return result;
}

- (id)initFromBag:(id)a3
{
  v4 = a3;
  v5 = [(PARSmartSearchV1Parameters *)self init];
  if (v5)
  {
    [v4 safariLast1hour];
    v5->_weightLast1hour = v6;
    [v4 safariLast1day];
    v5->_weightLast1day = v7;
    [v4 safariLast1week];
    v5->_weightLast1week = v8;
    [v4 safariLast1month];
    v5->_weightLast1month = v9;
    [v4 safariAll];
    v5->_weightAll = v10;
    [v4 safariMostRecent];
    v5->_weightMostRecent = v11;
    [v4 safariDecay];
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