@interface HMDMemoryLogEvent
- (HMDMemoryLogEvent)init;
- (HMDMemoryLogEvent)initWithReason:(int64_t)reason currentMemoryUsage:(unint64_t)usage intervalMaxMemoryUsage:(unint64_t)memoryUsage;
- (void)updateDiagnosticReportSignature:(id)signature;
@end

@implementation HMDMemoryLogEvent

- (HMDMemoryLogEvent)initWithReason:(int64_t)reason currentMemoryUsage:(unint64_t)usage intervalMaxMemoryUsage:(unint64_t)memoryUsage
{
  v9.receiver = self;
  v9.super_class = HMDMemoryLogEvent;
  result = [(HMMLogEvent *)&v9 init];
  if (result)
  {
    result->_reason = reason;
    result->_currentMemoryUsage = usage;
    result->_intervalMaxMemoryUsage = memoryUsage;
  }

  return result;
}

- (HMDMemoryLogEvent)init
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"%@ is unavailable", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (void)updateDiagnosticReportSignature:(id)signature
{
  signatureCopy = signature;
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  [standardUserDefaults setDouble:@"HMDDiagnosticReporterMemoryEventReportTime" forKey:?];

  if ([(HMDMemoryLogEvent *)self currentMemoryUsage]<= 0x5000000)
  {
    v5 = @"Memory Usage Warning Threshold";
  }

  else
  {
    v5 = @"Memory Usage Critical Threshold";
  }

  [signatureCopy setObject:v5 forKeyedSubscript:*MEMORY[0x277D6B1F0]];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lld, %lld", -[HMDMemoryLogEvent currentMemoryUsage](self, "currentMemoryUsage"), -[HMDMemoryLogEvent intervalMaxMemoryUsage](self, "intervalMaxMemoryUsage")];
  [signatureCopy setObject:v6 forKeyedSubscript:*MEMORY[0x277D6B200]];
}

@end