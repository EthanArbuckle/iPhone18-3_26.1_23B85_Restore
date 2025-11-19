@interface HMDWidgetTimelineRefresherLogEvent
- (HMDWidgetTimelineRefresherLogEvent)initWithKind:(id)a3 reason:(id)a4;
@end

@implementation HMDWidgetTimelineRefresherLogEvent

- (HMDWidgetTimelineRefresherLogEvent)initWithKind:(id)a3 reason:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    _HMFPreconditionFailure();
    goto LABEL_7;
  }

  v8 = v7;
  if (!v7)
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
    v10 = [v6 copy];
    kind = v9->_kind;
    v9->_kind = v10;

    v12 = [v8 copy];
    reason = v9->_reason;
    v9->_reason = v12;
  }

  return v9;
}

@end