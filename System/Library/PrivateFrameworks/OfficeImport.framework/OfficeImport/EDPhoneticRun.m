@interface EDPhoneticRun
- (EDPhoneticRun)init;
- (id)description;
@end

@implementation EDPhoneticRun

- (EDPhoneticRun)init
{
  v3.receiver = self;
  v3.super_class = EDPhoneticRun;
  result = [(EDPhoneticRun *)&v3 init];
  if (result)
  {
    *&result->mCharIndex = -1;
    result->mBaseCharCount = 0;
  }

  return result;
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = EDPhoneticRun;
  v2 = [(EDPhoneticRun *)&v4 description];

  return v2;
}

@end