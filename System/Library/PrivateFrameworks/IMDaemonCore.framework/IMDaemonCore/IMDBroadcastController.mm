@interface IMDBroadcastController
+ (IMDBroadcasterProviding)sharedProvider;
+ (void)registerSharedProvider:(id)a3;
@end

@implementation IMDBroadcastController

+ (IMDBroadcasterProviding)sharedProvider
{
  os_unfair_lock_lock(&unk_2814212B0);
  v2 = qword_281421238;
  os_unfair_lock_unlock(&unk_2814212B0);

  return v2;
}

+ (void)registerSharedProvider:(id)a3
{
  v3 = a3;
  os_unfair_lock_lock(&unk_2814212B0);
  if (qword_281421238)
  {
    sub_22B7CF420();
  }

  v4 = qword_281421238;
  qword_281421238 = v3;

  os_unfair_lock_unlock(&unk_2814212B0);
}

@end