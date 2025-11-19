@interface HMDAssertionLogEvent
- (HMDAssertionLogEvent)initWithReason:(id)a3;
- (void)updateDiagnosticReportSignature:(id)a3;
@end

@implementation HMDAssertionLogEvent

- (HMDAssertionLogEvent)initWithReason:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = HMDAssertionLogEvent;
  v5 = [(HMMLogEvent *)&v11 init];
  if (v5)
  {
    v6 = [v4 copy];
    reason = v5->_reason;
    v5->_reason = v6;

    v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:v4 arguments:&v12];
    description = v5->_description;
    v5->_description = v8;
  }

  return v5;
}

- (void)updateDiagnosticReportSignature:(id)a3
{
  v4 = a3;
  v5 = [(HMDAssertionLogEvent *)self reason];
  [v4 setObject:v5 forKeyedSubscript:*MEMORY[0x277D6B1F0]];

  v6 = [(HMDAssertionLogEvent *)self description];
  [v4 setObject:v6 forKeyedSubscript:*MEMORY[0x277D6B1B8]];
}

@end