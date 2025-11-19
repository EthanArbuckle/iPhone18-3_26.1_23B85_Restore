@interface NTKFirstUnlockQueue
+ (id)photosFacesCuratorQueue;
@end

@implementation NTKFirstUnlockQueue

+ (id)photosFacesCuratorQueue
{
  if (qword_100066BC0 != -1)
  {
    sub_10003DF3C();
  }

  v3 = qword_100066BC8;

  return v3;
}

@end