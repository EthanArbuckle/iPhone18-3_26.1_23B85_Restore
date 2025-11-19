@interface HMDWidgetTimelineRefresherDailyTotalLogEvent
- (HMDWidgetTimelineRefresherDailyTotalLogEvent)initWithKind:(id)a3 reason:(id)a4 count:(unint64_t)a5;
- (NSDictionary)coreAnalyticsEventDictionary;
@end

@implementation HMDWidgetTimelineRefresherDailyTotalLogEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  v10[3] = *MEMORY[0x277D85DE8];
  v9[0] = @"widgetKind";
  v3 = [(HMDWidgetTimelineRefresherDailyTotalLogEvent *)self kind];
  v10[0] = v3;
  v9[1] = @"refreshReason";
  v4 = [(HMDWidgetTimelineRefresherDailyTotalLogEvent *)self reason];
  v10[1] = v4;
  v9[2] = @"refreshCount";
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDWidgetTimelineRefresherDailyTotalLogEvent count](self, "count")}];
  v10[2] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:3];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (HMDWidgetTimelineRefresherDailyTotalLogEvent)initWithKind:(id)a3 reason:(id)a4 count:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  if (!v8)
  {
    _HMFPreconditionFailure();
    goto LABEL_7;
  }

  v10 = v9;
  if (!v9)
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
    v12 = [v8 copy];
    kind = v11->_kind;
    v11->_kind = v12;

    v14 = [v10 copy];
    reason = v11->_reason;
    v11->_reason = v14;

    v11->_count = a5;
  }

  return v11;
}

@end