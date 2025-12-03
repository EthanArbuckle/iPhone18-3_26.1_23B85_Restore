@interface HMDWidgetTimelineRefresherDailyTotalLogEvent
- (HMDWidgetTimelineRefresherDailyTotalLogEvent)initWithKind:(id)kind reason:(id)reason count:(unint64_t)count;
- (NSDictionary)coreAnalyticsEventDictionary;
@end

@implementation HMDWidgetTimelineRefresherDailyTotalLogEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  v10[3] = *MEMORY[0x277D85DE8];
  v9[0] = @"widgetKind";
  kind = [(HMDWidgetTimelineRefresherDailyTotalLogEvent *)self kind];
  v10[0] = kind;
  v9[1] = @"refreshReason";
  reason = [(HMDWidgetTimelineRefresherDailyTotalLogEvent *)self reason];
  v10[1] = reason;
  v9[2] = @"refreshCount";
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDWidgetTimelineRefresherDailyTotalLogEvent count](self, "count")}];
  v10[2] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:3];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (HMDWidgetTimelineRefresherDailyTotalLogEvent)initWithKind:(id)kind reason:(id)reason count:(unint64_t)count
{
  kindCopy = kind;
  reasonCopy = reason;
  if (!kindCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_7;
  }

  v10 = reasonCopy;
  if (!reasonCopy)
  {
LABEL_7:
    v17 = _HMFPreconditionFailure();
    [(HMDCameraAnalysisStatePublisher *)v17 .cxx_destruct];
    return result;
  }

  v19.receiver = self;
  v19.super_class = HMDWidgetTimelineRefresherDailyTotalLogEvent;
  v11 = [(HMMLogEvent *)&v19 init];
  if (v11)
  {
    v12 = [kindCopy copy];
    kind = v11->_kind;
    v11->_kind = v12;

    v14 = [v10 copy];
    reason = v11->_reason;
    v11->_reason = v14;

    v11->_count = count;
  }

  return v11;
}

@end