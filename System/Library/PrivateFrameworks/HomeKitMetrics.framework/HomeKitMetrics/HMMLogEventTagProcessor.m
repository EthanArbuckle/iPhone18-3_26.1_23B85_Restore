@interface HMMLogEventTagProcessor
- (HMMLogEventTagProcessor)initWithSubmitter:(id)a3;
- (NSDictionary)tagProcessingBlocks;
- (void)closeForReason:(unint64_t)a3;
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

- (void)closeForReason:(unint64_t)a3
{
  [(HMMLogEventTagProcessor *)self setLogEventCloseReason:a3];
  v4 = [(HMMLogEventTagProcessor *)self submitter];
  v5 = [(HMMLogEventTagProcessor *)self logEvent];
  [v4 submitLogEvent:v5];

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

- (HMMLogEventTagProcessor)initWithSubmitter:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HMMLogEventTagProcessor;
  v6 = [(HMMLogEventTagProcessor *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_submitter, a3);
    v7->_active = 1;
  }

  return v7;
}

@end