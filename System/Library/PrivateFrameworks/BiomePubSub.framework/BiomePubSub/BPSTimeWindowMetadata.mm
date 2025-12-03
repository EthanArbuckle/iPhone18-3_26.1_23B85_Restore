@interface BPSTimeWindowMetadata
- (BPSTimeWindowMetadata)initWithDateInterval:(id)interval;
@end

@implementation BPSTimeWindowMetadata

- (BPSTimeWindowMetadata)initWithDateInterval:(id)interval
{
  intervalCopy = interval;
  v9.receiver = self;
  v9.super_class = BPSTimeWindowMetadata;
  v5 = [(BPSTimeWindowMetadata *)&v9 init];
  if (v5)
  {
    v6 = [intervalCopy copy];
    dateInterval = v5->_dateInterval;
    v5->_dateInterval = v6;
  }

  return v5;
}

@end