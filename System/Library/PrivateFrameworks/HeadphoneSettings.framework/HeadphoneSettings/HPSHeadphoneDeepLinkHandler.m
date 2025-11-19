@interface HPSHeadphoneDeepLinkHandler
+ (id)shared;
- (HPSHeadphoneDeepLinkHandler)init;
- (id)hpsDevices;
- (id)initPrivate;
- (id)pairedDevices;
- (id)specifierFor:(id)a3 btsDevice:(id)a4;
@end

@implementation HPSHeadphoneDeepLinkHandler

+ (id)shared
{
  v2 = _os_feature_enabled_impl();
  v3 = shared_shared;
  if (v2)
  {
    v4 = shared_shared == 0;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    if (shared_oncePredicate != -1)
    {
      +[HPSHeadphoneDeepLinkHandler shared];
    }

    v3 = shared_shared;
  }

  return v3;
}

uint64_t __37__HPSHeadphoneDeepLinkHandler_shared__block_invoke()
{
  shared_shared = [[HPSHeadphoneDeepLinkHandler alloc] initPrivate];

  return MEMORY[0x2821F96F8]();
}

- (HPSHeadphoneDeepLinkHandler)init
{
  v3 = +[HPSHeadphoneDeepLinkHandler shared];

  return v3;
}

- (id)initPrivate
{
  v3.receiver = self;
  v3.super_class = HPSHeadphoneDeepLinkHandler;
  return [(HPSHeadphoneDeepLinkHandler *)&v3 init];
}

- (id)pairedDevices
{
  v2 = +[HPSConnectedHeadphonesController shared];
  v3 = [v2 _BTMPairedDevices];

  return v3;
}

- (id)specifierFor:(id)a3 btsDevice:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = +[HPSConnectedHeadphonesController shared];
  v8 = [v7 specifierFor:v6 btsDevice:v5];

  return v8;
}

- (id)hpsDevices
{
  v2 = +[HPSConnectedHeadphonesController shared];
  v3 = [v2 devices];

  return v3;
}

@end