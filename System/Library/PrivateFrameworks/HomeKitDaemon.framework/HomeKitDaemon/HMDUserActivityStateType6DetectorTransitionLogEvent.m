@interface HMDUserActivityStateType6DetectorTransitionLogEvent
- (HMDUserActivityStateType6DetectorTransitionLogEvent)initWithTrackerType:(unint64_t)a3 reason:(unint64_t)a4 timeInEvent:(int64_t)a5 secondaryOffset:(int64_t)a6;
@end

@implementation HMDUserActivityStateType6DetectorTransitionLogEvent

- (HMDUserActivityStateType6DetectorTransitionLogEvent)initWithTrackerType:(unint64_t)a3 reason:(unint64_t)a4 timeInEvent:(int64_t)a5 secondaryOffset:(int64_t)a6
{
  v15.receiver = self;
  v15.super_class = HMDUserActivityStateType6DetectorTransitionLogEvent;
  v10 = [(HMMLogEvent *)&v15 init];
  v11 = v10;
  if (v10)
  {
    v10->_trackerType = a3;
    v10->_reason = a4;
    v10->_timeInEvent = a5;
    v10->_secondaryOffset = a6;
    v12 = HMDUserActivityType6StateEventAsString(a3, a4);
    eventString = v11->_eventString;
    v11->_eventString = v12;
  }

  return v11;
}

@end