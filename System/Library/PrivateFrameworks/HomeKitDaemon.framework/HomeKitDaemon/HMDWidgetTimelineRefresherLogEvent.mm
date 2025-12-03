@interface HMDWidgetTimelineRefresherLogEvent
- (HMDWidgetTimelineRefresherLogEvent)initWithKind:(id)kind reason:(id)reason;
@end

@implementation HMDWidgetTimelineRefresherLogEvent

- (HMDWidgetTimelineRefresherLogEvent)initWithKind:(id)kind reason:(id)reason
{
  kindCopy = kind;
  reasonCopy = reason;
  if (!kindCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_7;
  }

  v8 = reasonCopy;
  if (!reasonCopy)
  {
LABEL_7:
    v15 = _HMFPreconditionFailure();
    [(HMDWidgetTimelineRefresherDailyTotalLogEvent *)v15 .cxx_destruct];
    return result;
  }

  v17.receiver = self;
  v17.super_class = HMDWidgetTimelineRefresherLogEvent;
  v9 = [(HMMLogEvent *)&v17 init];
  if (v9)
  {
    v10 = [kindCopy copy];
    kind = v9->_kind;
    v9->_kind = v10;

    v12 = [v8 copy];
    reason = v9->_reason;
    v9->_reason = v12;
  }

  return v9;
}

@end