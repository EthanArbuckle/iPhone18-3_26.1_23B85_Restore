@interface BPSTimeWindowMetadata
- (BPSTimeWindowMetadata)initWithDateInterval:(id)a3;
@end

@implementation BPSTimeWindowMetadata

- (BPSTimeWindowMetadata)initWithDateInterval:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = BPSTimeWindowMetadata;
  v5 = [(BPSTimeWindowMetadata *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    dateInterval = v5->_dateInterval;
    v5->_dateInterval = v6;
  }

  return v5;
}

@end