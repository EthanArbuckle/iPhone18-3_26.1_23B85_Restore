@interface HMIVideoTimelineProfiler
- (HMIVideoTimelineProfiler)initWithMaxCapacity:(int64_t)a3;
- (void)endedAtTime:(id *)a3;
- (void)startedAtTime:(id *)a3;
@end

@implementation HMIVideoTimelineProfiler

- (HMIVideoTimelineProfiler)initWithMaxCapacity:(int64_t)a3
{
  v10.receiver = self;
  v10.super_class = HMIVideoTimelineProfiler;
  v4 = [(HMIVideoTimelineProfiler *)&v10 init];
  if (v4)
  {
    v5 = [[HMIVideoTimeline alloc] initWithMaxCapacity:a3];
    timeline = v4->_timeline;
    v4->_timeline = v5;

    v7 = [[HMITimeIntervalAverage alloc] initWithMaxCapacity:32];
    average = v4->_average;
    v4->_average = v7;
  }

  return v4;
}

- (void)startedAtTime:(id *)a3
{
  timeline = self->_timeline;
  v5 = [MEMORY[0x277CBEAA8] now];
  v6 = *a3;
  [(HMIVideoTimeline *)timeline addDate:v5 atTime:&v6];
}

- (void)endedAtTime:(id *)a3
{
  timeline = self->_timeline;
  v8 = *a3;
  v5 = [(HMIVideoTimeline *)timeline dateAtTime:&v8];
  average = self->_average;
  v7 = [MEMORY[0x277CBEAA8] date];
  [v7 timeIntervalSinceDate:v5];
  [(HMITimeIntervalAverage *)average addValue:?];
}

@end