@interface HMMLogEventTagProcessor
- (HMMLogEventTagProcessor)initWithSubmitter:(id)submitter;
- (NSDictionary)tagProcessingBlocks;
- (void)closeForReason:(unint64_t)reason;
- (void)dealloc;
@end

@implementation HMMLogEventTagProcessor

- (void)dealloc
{
  if (self->_active)
  {
    [(HMMLogEventTagProcessor *)self closeForReason:1];
  }

  v3.receiver = self;
  v3.super_class = HMMLogEventTagProcessor;
  [(HMMLogEventTagProcessor *)&v3 dealloc];
}

- (void)closeForReason:(unint64_t)reason
{
  [(HMMLogEventTagProcessor *)self setLogEventCloseReason:reason];
  submitter = [(HMMLogEventTagProcessor *)self submitter];
  logEvent = [(HMMLogEventTagProcessor *)self logEvent];
  [submitter submitLogEvent:logEvent];

  self->_active = 0;
}

- (NSDictionary)tagProcessingBlocks
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"You must override %@ in a subclass", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (HMMLogEventTagProcessor)initWithSubmitter:(id)submitter
{
  submitterCopy = submitter;
  v9.receiver = self;
  v9.super_class = HMMLogEventTagProcessor;
  v6 = [(HMMLogEventTagProcessor *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_submitter, submitter);
    v7->_active = 1;
  }

  return v7;
}

@end