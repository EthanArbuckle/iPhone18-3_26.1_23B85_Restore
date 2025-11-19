@interface ACAccountStore
+ (id)ch_sharedAccountStore;
@end

@implementation ACAccountStore

+ (id)ch_sharedAccountStore
{
  if (qword_10005C0F8 != -1)
  {
    sub_100032814();
  }

  v3 = qword_10005C0F0;

  return v3;
}

@end