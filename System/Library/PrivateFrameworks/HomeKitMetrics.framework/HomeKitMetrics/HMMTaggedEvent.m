@interface HMMTaggedEvent
- (HMMTaggedEvent)initWithTag:(id)a3 data:(id)a4;
- (HMMTaggedEvent)initWithTag:(id)a3 time:(int64_t)a4 data:(id)a5;
- (id)description;
@end

@implementation HMMTaggedEvent

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(HMMTaggedEvent *)self tagName];
  v5 = [(HMMTaggedEvent *)self tagTime];
  v6 = [(HMMTaggedEvent *)self tagData];
  v7 = [v3 stringWithFormat:@"%@/%lu/%@", v4, v5, v6];

  return v7;
}

- (HMMTaggedEvent)initWithTag:(id)a3 time:(int64_t)a4 data:(id)a5
{
  v9 = a3;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = HMMTaggedEvent;
  v11 = [(HMMTaggedEvent *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_tagName, a3);
    v12->_tagTime = a4;
    objc_storeStrong(&v12->_tagData, a5);
  }

  return v12;
}

- (HMMTaggedEvent)initWithTag:(id)a3 data:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(HMMTaggedEvent *)self initWithTag:v7 time:clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW) / 0xF4240 data:v6];

  return v8;
}

@end