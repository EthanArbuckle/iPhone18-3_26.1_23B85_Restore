@interface CNTracedLog
+ (id)logWithDomain:(id)a3;
+ (int64_t)roundNumber:(int64_t)a3 usingSignificantDigits:(unint64_t)a4;
- (CNTracedLog)initWithDomain:(id)a3 message:(id)a4;
@end

@implementation CNTracedLog

+ (id)logWithDomain:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithDomain:v4 message:&stru_1EF441028];

  return v5;
}

- (CNTracedLog)initWithDomain:(id)a3 message:(id)a4
{
  v5.receiver = self;
  v5.super_class = CNTracedLog;
  return [(CNTracedLog *)&v5 init:a3];
}

+ (int64_t)roundNumber:(int64_t)a3 usingSignificantDigits:(unint64_t)a4
{
  if (!a3)
  {
    return 0;
  }

  if (a3 >= 0)
  {
    v6 = a3;
  }

  else
  {
    v6 = -a3;
  }

  v7 = log10(v6);
  v8 = __exp10((a4 - vcvtpd_u64_f64(v7)));
  return llround(round(v8 * a3) / v8);
}

@end