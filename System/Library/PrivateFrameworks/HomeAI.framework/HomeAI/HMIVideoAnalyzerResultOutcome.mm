@interface HMIVideoAnalyzerResultOutcome
+ (HMIVideoAnalyzerResultOutcome)skipped;
+ (HMIVideoAnalyzerResultOutcome)success;
- (HMIVideoAnalyzerResultOutcome)initWithCode:(unint64_t)code analysisFPS:(double)s message:(id)message;
- (HMIVideoAnalyzerResultOutcome)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMIVideoAnalyzerResultOutcome

- (HMIVideoAnalyzerResultOutcome)initWithCode:(unint64_t)code analysisFPS:(double)s message:(id)message
{
  messageCopy = message;
  v13.receiver = self;
  v13.super_class = HMIVideoAnalyzerResultOutcome;
  v10 = [(HMIVideoAnalyzerResultOutcome *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_code = code;
    v10->_analysisFPS = s;
    objc_storeStrong(&v10->_message, message);
  }

  return v11;
}

+ (HMIVideoAnalyzerResultOutcome)success
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__HMIVideoAnalyzerResultOutcome_success__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (success_onceToken != -1)
  {
    dispatch_once(&success_onceToken, block);
  }

  v2 = success_outcome;

  return v2;
}

uint64_t __40__HMIVideoAnalyzerResultOutcome_success__block_invoke(uint64_t a1)
{
  success_outcome = [objc_alloc(*(a1 + 32)) initWithCode:1 analysisFPS:0 message:1.0];

  return MEMORY[0x2821F96F8]();
}

+ (HMIVideoAnalyzerResultOutcome)skipped
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__HMIVideoAnalyzerResultOutcome_skipped__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (skipped_onceToken != -1)
  {
    dispatch_once(&skipped_onceToken, block);
  }

  v2 = skipped_outcome;

  return v2;
}

uint64_t __40__HMIVideoAnalyzerResultOutcome_skipped__block_invoke(uint64_t a1)
{
  skipped_outcome = [objc_alloc(*(a1 + 32)) initWithCode:0 analysisFPS:@"Unknown reason." message:0.0];

  return MEMORY[0x2821F96F8]();
}

- (id)description
{
  code = [(HMIVideoAnalyzerResultOutcome *)self code];
  v4 = @"Unknown";
  if (!code)
  {
    v4 = @"Skipped";
  }

  if (code == 1)
  {
    v5 = @"Success";
  }

  else
  {
    v5 = v4;
  }

  message = [(HMIVideoAnalyzerResultOutcome *)self message];

  v7 = MEMORY[0x277CCACA8];
  [(HMIVideoAnalyzerResultOutcome *)self analysisFPS];
  v9 = v8;
  if (message)
  {
    message2 = [(HMIVideoAnalyzerResultOutcome *)self message];
    v11 = [v7 stringWithFormat:@"{code: %@, analysisFPS: %f, message: %@}", v5, v9, message2];
  }

  else
  {
    v11 = [v7 stringWithFormat:@"{code: %@, analysisFPS: %f}", v5, v8];
  }

  return v11;
}

- (HMIVideoAnalyzerResultOutcome)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_code);
  v6 = [coderCopy decodeIntegerForKey:v5];

  v7 = NSStringFromSelector(sel_analysisFPS);
  [coderCopy decodeDoubleForKey:v7];
  v9 = v8;

  v10 = objc_opt_class();
  v11 = NSStringFromSelector(sel_message);
  v12 = [coderCopy decodeObjectOfClass:v10 forKey:v11];

  v13 = [(HMIVideoAnalyzerResultOutcome *)self initWithCode:v6 analysisFPS:v12 message:v9];
  return v13;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  code = [(HMIVideoAnalyzerResultOutcome *)self code];
  v6 = NSStringFromSelector(sel_code);
  [coderCopy encodeInteger:code forKey:v6];

  [(HMIVideoAnalyzerResultOutcome *)self analysisFPS];
  v8 = v7;
  v9 = NSStringFromSelector(sel_analysisFPS);
  [coderCopy encodeDouble:v9 forKey:v8];

  message = [(HMIVideoAnalyzerResultOutcome *)self message];
  v10 = NSStringFromSelector(sel_message);
  [coderCopy encodeObject:message forKey:v10];
}

@end