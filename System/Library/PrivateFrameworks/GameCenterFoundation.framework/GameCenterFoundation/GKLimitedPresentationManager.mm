@interface GKLimitedPresentationManager
- (GKLimitedPresentationManager)initWithDefaultsKey:(id)key;
- (void)presentationDisabledWithConfig:(GKLimitedPresentationConfig *)config completionHandler:(id)handler;
- (void)presentationDisabledWithConfig:(GKLimitedPresentationConfig *)config context:(GKLimitedPresentationContext *)context completionHandler:(id)handler;
@end

@implementation GKLimitedPresentationManager

- (GKLimitedPresentationManager)initWithDefaultsKey:(id)key
{
  if (key)
  {
    v3 = sub_227A724EC();
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  return LimitedPresentationManager.init(defaultsKey:)(v3, v4);
}

- (void)presentationDisabledWithConfig:(GKLimitedPresentationConfig *)config context:(GKLimitedPresentationContext *)context completionHandler:(id)handler
{
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  v9[2] = config;
  v9[3] = context;
  v9[4] = v8;
  v9[5] = self;
  configCopy = config;
  contextCopy = context;

  sub_227A62CD4(&unk_227AA6160, v9);
}

- (void)presentationDisabledWithConfig:(GKLimitedPresentationConfig *)config completionHandler:(id)handler
{
  v6 = _Block_copy(handler);
  v7 = swift_allocObject();
  v7[2] = config;
  v7[3] = v6;
  v7[4] = self;
  configCopy = config;

  sub_227A62CD4(&unk_227AA6150, v7);
}

@end