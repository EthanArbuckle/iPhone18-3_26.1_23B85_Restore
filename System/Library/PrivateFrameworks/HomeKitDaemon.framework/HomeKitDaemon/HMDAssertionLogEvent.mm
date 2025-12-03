@interface HMDAssertionLogEvent
- (HMDAssertionLogEvent)initWithReason:(id)reason;
- (void)updateDiagnosticReportSignature:(id)signature;
@end

@implementation HMDAssertionLogEvent

- (HMDAssertionLogEvent)initWithReason:(id)reason
{
  reasonCopy = reason;
  v11.receiver = self;
  v11.super_class = HMDAssertionLogEvent;
  v5 = [(HMMLogEvent *)&v11 init];
  if (v5)
  {
    v6 = [reasonCopy copy];
    reason = v5->_reason;
    v5->_reason = v6;

    v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:reasonCopy arguments:&v12];
    description = v5->_description;
    v5->_description = v8;
  }

  return v5;
}

- (void)updateDiagnosticReportSignature:(id)signature
{
  signatureCopy = signature;
  reason = [(HMDAssertionLogEvent *)self reason];
  [signatureCopy setObject:reason forKeyedSubscript:*MEMORY[0x277D6B1F0]];

  v6 = [(HMDAssertionLogEvent *)self description];
  [signatureCopy setObject:v6 forKeyedSubscript:*MEMORY[0x277D6B1B8]];
}

@end