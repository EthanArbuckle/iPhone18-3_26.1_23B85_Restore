@interface HMIVideoTimeline
- (HMIVideoTimeline)initWithMaxCapacity:(int64_t)capacity;
- (double)timeIntervalSinceDateAtTime:(id *)time;
- (id)dateAtTime:(id *)time;
- (void)addDate:(id)date atTime:(id *)time;
@end

@implementation HMIVideoTimeline

- (HMIVideoTimeline)initWithMaxCapacity:(int64_t)capacity
{
  v8.receiver = self;
  v8.super_class = HMIVideoTimeline;
  v4 = [(HMIVideoTimeline *)&v8 init];
  if (v4)
  {
    v5 = [[HMIVideoEventBuffer alloc] initWithMaxCapacity:capacity];
    buffer = v4->_buffer;
    v4->_buffer = v5;
  }

  return v4;
}

- (void)addDate:(id)date atTime:(id *)time
{
  buffer = self->_buffer;
  dateCopy = date;
  v7 = [HMIVideoTimelineEntry alloc];
  v9 = *time;
  v8 = [(HMIVideoTimelineEntry *)v7 initWithTime:&v9 date:dateCopy];

  [(HMIVideoEventBuffer *)buffer addObject:v8];
}

- (id)dateAtTime:(id *)time
{
  v5 = [HMIVideoTimelineEntry alloc];
  date = [MEMORY[0x277CBEAA8] date];
  v12 = *time;
  v7 = [(HMIVideoTimelineEntry *)v5 initWithTime:&v12 date:date];

  v8 = [(HMIVideoEventBuffer *)self->_buffer neighborsOfObject:v7];
  lastObject = [v8 lastObject];

  if (lastObject)
  {
    lastObject2 = [v8 lastObject];
    lastObject = [lastObject2 date];
  }

  return lastObject;
}

- (double)timeIntervalSinceDateAtTime:(id *)time
{
  v8 = *time;
  v3 = [(HMIVideoTimeline *)self dateAtTime:&v8];
  date = [MEMORY[0x277CBEAA8] date];
  [date timeIntervalSinceDate:v3];
  v6 = v5;

  return v6;
}

@end