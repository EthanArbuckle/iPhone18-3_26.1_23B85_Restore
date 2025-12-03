@interface HMDUserActivityStateType6DetectorTransitionLogEvent
- (HMDUserActivityStateType6DetectorTransitionLogEvent)initWithTrackerType:(unint64_t)type reason:(unint64_t)reason timeInEvent:(int64_t)event secondaryOffset:(int64_t)offset;
@end

@implementation HMDUserActivityStateType6DetectorTransitionLogEvent

- (HMDUserActivityStateType6DetectorTransitionLogEvent)initWithTrackerType:(unint64_t)type reason:(unint64_t)reason timeInEvent:(int64_t)event secondaryOffset:(int64_t)offset
{
  v15.receiver = self;
  v15.super_class = HMDUserActivityStateType6DetectorTransitionLogEvent;
  v10 = [(HMMLogEvent *)&v15 init];
  v11 = v10;
  if (v10)
  {
    v10->_trackerType = type;
    v10->_reason = reason;
    v10->_timeInEvent = event;
    v10->_secondaryOffset = offset;
    v12 = HMDUserActivityType6StateEventAsString(type, reason);
    eventString = v11->_eventString;
    v11->_eventString = v12;
  }

  return v11;
}

@end