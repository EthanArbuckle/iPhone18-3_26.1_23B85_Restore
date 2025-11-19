@interface CTKABHelper
+ (id)refId;
+ (unint64_t)_computeIndex;
+ (void)initialize;
@end

@implementation CTKABHelper

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v3 = +[NSUserDefaults standardUserDefaults];
    [v3 removeObjectForKey:@"com.apple.proactive.refId"];

    v4 = [[NSUUID alloc] initWithUUIDString:@"00000000-0000-0000-0000-000000000000"];
    v5 = qword_100557220;
    qword_100557220 = v4;

    v6 = [a1 refId];
    qword_100557228 = [a1 _computeIndex];
  }
}

+ (id)refId
{
  v2 = qword_100557230;
  if (!qword_100557230)
  {
    v3 = a1;
    objc_sync_enter(v3);
    objc_storeStrong(&qword_100557230, qword_100557220);
    objc_sync_exit(v3);

    v2 = qword_100557230;
  }

  v4 = v2;

  return v4;
}

+ (unint64_t)_computeIndex
{
  v2 = [a1 refId];
  v3 = v2;
  if (v2)
  {
    [v2 getUUIDBytes:v6];
    v4 = v6[1] ^ v6[0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end