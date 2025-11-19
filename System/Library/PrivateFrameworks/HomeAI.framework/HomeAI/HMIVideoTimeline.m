@interface HMIVideoTimeline
- (HMIVideoTimeline)initWithMaxCapacity:(int64_t)a3;
- (double)timeIntervalSinceDateAtTime:(id *)a3;
- (id)dateAtTime:(id *)a3;
- (void)addDate:(id)a3 atTime:(id *)a4;
@end

@implementation HMIVideoTimeline

- (HMIVideoTimeline)initWithMaxCapacity:(int64_t)a3
{
  v8.receiver = self;
  v8.super_class = HMIVideoTimeline;
  v4 = [(HMIVideoTimeline *)&v8 init];
  if (v4)
  {
    v5 = [[HMIVideoEventBuffer alloc] initWithMaxCapacity:a3];
    buffer = v4->_buffer;
    v4->_buffer = v5;
  }

  return v4;
}

- (void)addDate:(id)a3 atTime:(id *)a4
{
  buffer = self->_buffer;
  v6 = a3;
  v7 = [HMIVideoTimelineEntry alloc];
  v9 = *a4;
  v8 = [(HMIVideoTimelineEntry *)v7 initWithTime:&v9 date:v6];

  [(HMIVideoEventBuffer *)buffer addObject:v8];
}

- (id)dateAtTime:(id *)a3
{
  v5 = [HMIVideoTimelineEntry alloc];
  v6 = [MEMORY[0x277CBEAA8] date];
  v12 = *a3;
  v7 = [(HMIVideoTimelineEntry *)v5 initWithTime:&v12 date:v6];

  v8 = [(HMIVideoEventBuffer *)self->_buffer neighborsOfObject:v7];
  v9 = [v8 lastObject];

  if (v9)
  {
    v10 = [v8 lastObject];
    v9 = [v10 date];
  }

  return v9;
}

- (double)timeIntervalSinceDateAtTime:(id *)a3
{
  v8 = *a3;
  v3 = [(HMIVideoTimeline *)self dateAtTime:&v8];
  v4 = [MEMORY[0x277CBEAA8] date];
  [v4 timeIntervalSinceDate:v3];
  v6 = v5;

  return v6;
}

@end