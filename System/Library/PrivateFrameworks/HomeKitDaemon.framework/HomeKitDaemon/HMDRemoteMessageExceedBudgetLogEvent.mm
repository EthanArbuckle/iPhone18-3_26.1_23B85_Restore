@interface HMDRemoteMessageExceedBudgetLogEvent
+ (id)eventWithBudgetRate:(_HMFRate)a3;
- (HMDRemoteMessageExceedBudgetLogEvent)initWithBudgetRate:(_HMFRate)a3;
- (_HMFRate)budgetRate;
- (void)updateDiagnosticReportSignature:(id)a3;
@end

@implementation HMDRemoteMessageExceedBudgetLogEvent

- (_HMFRate)budgetRate
{
  p_budgetRate = &self->_budgetRate;
  value = self->_budgetRate.value;
  period = p_budgetRate->period;
  result.period = period;
  result.value = value;
  return result;
}

- (HMDRemoteMessageExceedBudgetLogEvent)initWithBudgetRate:(_HMFRate)a3
{
  period = a3.period;
  value = a3.value;
  v6.receiver = self;
  v6.super_class = HMDRemoteMessageExceedBudgetLogEvent;
  result = [(HMMLogEvent *)&v6 init];
  if (result)
  {
    result->_budgetRate.value = value;
    result->_budgetRate.period = period;
  }

  return result;
}

+ (id)eventWithBudgetRate:(_HMFRate)a3
{
  v3 = [[a1 alloc] initWithBudgetRate:{a3.value, *&a3.period}];

  return v3;
}

- (void)updateDiagnosticReportSignature:(id)a3
{
  v4 = *MEMORY[0x277D6B1F0];
  v5 = a3;
  [v5 setObject:@"Remote Send Threshold" forKeyedSubscript:v4];
  v6 = MEMORY[0x277CCACA8];
  v7 = [(HMDRemoteMessageExceedBudgetLogEvent *)self budgetRate];
  [(HMDRemoteMessageExceedBudgetLogEvent *)self budgetRate];
  v9 = [v6 stringWithFormat:@"%tu, %u", v7, v8];
  [v5 setObject:v9 forKeyedSubscript:*MEMORY[0x277D6B200]];
}

@end