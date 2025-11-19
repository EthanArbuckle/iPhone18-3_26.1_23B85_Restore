@interface GKLimitedPresentationManager
- (GKLimitedPresentationManager)initWithDefaultsKey:(id)a3;
- (void)presentationDisabledWithConfig:(GKLimitedPresentationConfig *)a3 completionHandler:(id)a4;
- (void)presentationDisabledWithConfig:(GKLimitedPresentationConfig *)a3 context:(GKLimitedPresentationContext *)a4 completionHandler:(id)a5;
@end

@implementation GKLimitedPresentationManager

- (GKLimitedPresentationManager)initWithDefaultsKey:(id)a3
{
  if (a3)
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

- (void)presentationDisabledWithConfig:(GKLimitedPresentationConfig *)a3 context:(GKLimitedPresentationContext *)a4 completionHandler:(id)a5
{
  v8 = _Block_copy(a5);
  v9 = swift_allocObject();
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = v8;
  v9[5] = self;
  v10 = a3;
  v11 = a4;

  sub_227A62CD4(&unk_227AA6160, v9);
}

- (void)presentationDisabledWithConfig:(GKLimitedPresentationConfig *)a3 completionHandler:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = v6;
  v7[4] = self;
  v8 = a3;

  sub_227A62CD4(&unk_227AA6150, v7);
}

@end