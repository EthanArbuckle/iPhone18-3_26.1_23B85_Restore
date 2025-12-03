@interface IMDBroadcastController
+ (IMDBroadcasterProviding)sharedProvider;
+ (void)registerSharedProvider:(id)provider;
@end

@implementation IMDBroadcastController

+ (IMDBroadcasterProviding)sharedProvider
{
  os_unfair_lock_lock(&unk_2814212B0);
  v2 = qword_281421238;
  os_unfair_lock_unlock(&unk_2814212B0);

  return v2;
}

+ (void)registerSharedProvider:(id)provider
{
  providerCopy = provider;
  os_unfair_lock_lock(&unk_2814212B0);
  if (qword_281421238)
  {
    sub_22B7CF420();
  }

  v4 = qword_281421238;
  qword_281421238 = providerCopy;

  os_unfair_lock_unlock(&unk_2814212B0);
}

@end