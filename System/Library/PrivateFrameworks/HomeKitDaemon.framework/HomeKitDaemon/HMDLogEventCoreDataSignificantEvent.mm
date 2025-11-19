@interface HMDLogEventCoreDataSignificantEvent
- (HMDLogEventCoreDataSignificantEvent)initWithReason:(unint64_t)a3;
- (HMDLogEventCoreDataSignificantEvent)initWithReason:(unint64_t)a3 author:(unint64_t)a4;
- (void)updateDiagnosticReportSignature:(id)a3;
@end

@implementation HMDLogEventCoreDataSignificantEvent

- (HMDLogEventCoreDataSignificantEvent)initWithReason:(unint64_t)a3 author:(unint64_t)a4
{
  v5 = [(HMDLogEventCoreDataSignificantEvent *)self initWithReason:a3];
  v6 = v5;
  if (a4 - 2 > 9)
  {
    v7 = @"HMD.Unknown";
  }

  else
  {
    v7 = off_278681C50[a4 - 2];
  }

  objc_storeStrong(&v5->_context, v7);

  return v6;
}

- (HMDLogEventCoreDataSignificantEvent)initWithReason:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = HMDLogEventCoreDataSignificantEvent;
  result = [(HMMLogEvent *)&v5 init];
  if (result)
  {
    result->_reason = a3;
  }

  return result;
}

- (void)updateDiagnosticReportSignature:(id)a3
{
  v8 = a3;
  v4 = [(HMDLogEventCoreDataSignificantEvent *)self reason];
  if (v4 > 4)
  {
    v5 = @"Unknown";
  }

  else
  {
    v5 = off_278689F40[v4];
  }

  [v8 setObject:v5 forKeyedSubscript:*MEMORY[0x277D6B1E8]];
  v6 = [(HMDLogEventCoreDataSignificantEvent *)self context];
  if (v6)
  {
    [v8 setObject:v6 forKeyedSubscript:*MEMORY[0x277D6B1F0]];
  }

  v7 = [(HMDLogEventCoreDataSignificantEvent *)self extraContext];
  if (v7)
  {
    [v8 setObject:v7 forKeyedSubscript:*MEMORY[0x277D6B1B8]];
  }
}

@end