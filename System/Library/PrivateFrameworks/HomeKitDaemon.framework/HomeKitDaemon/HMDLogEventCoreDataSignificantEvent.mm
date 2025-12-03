@interface HMDLogEventCoreDataSignificantEvent
- (HMDLogEventCoreDataSignificantEvent)initWithReason:(unint64_t)reason;
- (HMDLogEventCoreDataSignificantEvent)initWithReason:(unint64_t)reason author:(unint64_t)author;
- (void)updateDiagnosticReportSignature:(id)signature;
@end

@implementation HMDLogEventCoreDataSignificantEvent

- (HMDLogEventCoreDataSignificantEvent)initWithReason:(unint64_t)reason author:(unint64_t)author
{
  v5 = [(HMDLogEventCoreDataSignificantEvent *)self initWithReason:reason];
  v6 = v5;
  if (author - 2 > 9)
  {
    v7 = @"HMD.Unknown";
  }

  else
  {
    v7 = off_278681C50[author - 2];
  }

  objc_storeStrong(&v5->_context, v7);

  return v6;
}

- (HMDLogEventCoreDataSignificantEvent)initWithReason:(unint64_t)reason
{
  v5.receiver = self;
  v5.super_class = HMDLogEventCoreDataSignificantEvent;
  result = [(HMMLogEvent *)&v5 init];
  if (result)
  {
    result->_reason = reason;
  }

  return result;
}

- (void)updateDiagnosticReportSignature:(id)signature
{
  signatureCopy = signature;
  reason = [(HMDLogEventCoreDataSignificantEvent *)self reason];
  if (reason > 4)
  {
    v5 = @"Unknown";
  }

  else
  {
    v5 = off_278689F40[reason];
  }

  [signatureCopy setObject:v5 forKeyedSubscript:*MEMORY[0x277D6B1E8]];
  context = [(HMDLogEventCoreDataSignificantEvent *)self context];
  if (context)
  {
    [signatureCopy setObject:context forKeyedSubscript:*MEMORY[0x277D6B1F0]];
  }

  extraContext = [(HMDLogEventCoreDataSignificantEvent *)self extraContext];
  if (extraContext)
  {
    [signatureCopy setObject:extraContext forKeyedSubscript:*MEMORY[0x277D6B1B8]];
  }
}

@end