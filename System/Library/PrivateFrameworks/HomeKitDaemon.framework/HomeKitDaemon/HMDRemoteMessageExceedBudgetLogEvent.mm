@interface HMDRemoteMessageExceedBudgetLogEvent
+ (id)eventWithBudgetRate:(_HMFRate)rate;
- (HMDRemoteMessageExceedBudgetLogEvent)initWithBudgetRate:(_HMFRate)rate;
- (_HMFRate)budgetRate;
- (void)updateDiagnosticReportSignature:(id)signature;
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

- (HMDRemoteMessageExceedBudgetLogEvent)initWithBudgetRate:(_HMFRate)rate
{
  period = rate.period;
  value = rate.value;
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

+ (id)eventWithBudgetRate:(_HMFRate)rate
{
  v3 = [[self alloc] initWithBudgetRate:{rate.value, *&rate.period}];

  return v3;
}

- (void)updateDiagnosticReportSignature:(id)signature
{
  v4 = *MEMORY[0x277D6B1F0];
  signatureCopy = signature;
  [signatureCopy setObject:@"Remote Send Threshold" forKeyedSubscript:v4];
  v6 = MEMORY[0x277CCACA8];
  budgetRate = [(HMDRemoteMessageExceedBudgetLogEvent *)self budgetRate];
  [(HMDRemoteMessageExceedBudgetLogEvent *)self budgetRate];
  v9 = [v6 stringWithFormat:@"%tu, %u", budgetRate, v8];
  [signatureCopy setObject:v9 forKeyedSubscript:*MEMORY[0x277D6B200]];
}

@end