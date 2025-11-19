@interface BURestrictionsProvider
+ (BURestrictionsProviding)sharedInstance;
@end

@implementation BURestrictionsProvider

+ (BURestrictionsProviding)sharedInstance
{
  if (qword_280BC5EB8 != -1)
  {
    sub_241DA79D4();
  }

  v3 = qword_280BC5EB0;

  return v3;
}

@end