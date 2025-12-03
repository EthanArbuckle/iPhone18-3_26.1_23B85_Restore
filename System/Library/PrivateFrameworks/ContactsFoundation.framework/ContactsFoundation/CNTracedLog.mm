@interface CNTracedLog
+ (id)logWithDomain:(id)domain;
+ (int64_t)roundNumber:(int64_t)number usingSignificantDigits:(unint64_t)digits;
- (CNTracedLog)initWithDomain:(id)domain message:(id)message;
@end

@implementation CNTracedLog

+ (id)logWithDomain:(id)domain
{
  domainCopy = domain;
  v5 = [[self alloc] initWithDomain:domainCopy message:&stru_1EF441028];

  return v5;
}

- (CNTracedLog)initWithDomain:(id)domain message:(id)message
{
  v5.receiver = self;
  v5.super_class = CNTracedLog;
  return [(CNTracedLog *)&v5 init:domain];
}

+ (int64_t)roundNumber:(int64_t)number usingSignificantDigits:(unint64_t)digits
{
  if (!number)
  {
    return 0;
  }

  if (number >= 0)
  {
    numberCopy = number;
  }

  else
  {
    numberCopy = -number;
  }

  v7 = log10(numberCopy);
  v8 = __exp10((digits - vcvtpd_u64_f64(v7)));
  return llround(round(v8 * number) / v8);
}

@end