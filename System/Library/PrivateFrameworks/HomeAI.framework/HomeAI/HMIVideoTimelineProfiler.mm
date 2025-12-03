@interface HMIVideoTimelineProfiler
- (HMIVideoTimelineProfiler)initWithMaxCapacity:(int64_t)capacity;
- (void)endedAtTime:(id *)time;
- (void)startedAtTime:(id *)time;
@end

@implementation HMIVideoTimelineProfiler

- (HMIVideoTimelineProfiler)initWithMaxCapacity:(int64_t)capacity
{
  v10.receiver = self;
  v10.super_class = HMIVideoTimelineProfiler;
  v4 = [(HMIVideoTimelineProfiler *)&v10 init];
  if (v4)
  {
    v5 = [[HMIVideoTimeline alloc] initWithMaxCapacity:capacity];
    timeline = v4->_timeline;
    v4->_timeline = v5;

    v7 = [[HMITimeIntervalAverage alloc] initWithMaxCapacity:32];
    average = v4->_average;
    v4->_average = v7;
  }

  return v4;
}

- (void)startedAtTime:(id *)time
{
  timeline = self->_timeline;
  v5 = [MEMORY[0x277CBEAA8] now];
  v6 = *time;
  [(HMIVideoTimeline *)timeline addDate:v5 atTime:&v6];
}

- (void)endedAtTime:(id *)time
{
  timeline = self->_timeline;
  v8 = *time;
  v5 = [(HMIVideoTimeline *)timeline dateAtTime:&v8];
  average = self->_average;
  date = [MEMORY[0x277CBEAA8] date];
  [date timeIntervalSinceDate:v5];
  [(HMITimeIntervalAverage *)average addValue:?];
}

@end