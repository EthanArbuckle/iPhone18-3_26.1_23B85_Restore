@interface HMMTaggedEvent
- (HMMTaggedEvent)initWithTag:(id)tag data:(id)data;
- (HMMTaggedEvent)initWithTag:(id)tag time:(int64_t)time data:(id)data;
- (id)description;
@end

@implementation HMMTaggedEvent

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  tagName = [(HMMTaggedEvent *)self tagName];
  tagTime = [(HMMTaggedEvent *)self tagTime];
  tagData = [(HMMTaggedEvent *)self tagData];
  v7 = [v3 stringWithFormat:@"%@/%lu/%@", tagName, tagTime, tagData];

  return v7;
}

- (HMMTaggedEvent)initWithTag:(id)tag time:(int64_t)time data:(id)data
{
  tagCopy = tag;
  dataCopy = data;
  v14.receiver = self;
  v14.super_class = HMMTaggedEvent;
  v11 = [(HMMTaggedEvent *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_tagName, tag);
    v12->_tagTime = time;
    objc_storeStrong(&v12->_tagData, data);
  }

  return v12;
}

- (HMMTaggedEvent)initWithTag:(id)tag data:(id)data
{
  dataCopy = data;
  tagCopy = tag;
  v8 = [(HMMTaggedEvent *)self initWithTag:tagCopy time:clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW) / 0xF4240 data:dataCopy];

  return v8;
}

@end