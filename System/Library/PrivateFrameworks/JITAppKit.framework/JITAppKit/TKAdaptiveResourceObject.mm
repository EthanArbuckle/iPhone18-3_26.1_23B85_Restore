@interface TKAdaptiveResourceObject
- (TKAdaptiveResourceObject)init;
- (void)dealloc;
- (void)tmlDispose;
@end

@implementation TKAdaptiveResourceObject

- (TKAdaptiveResourceObject)init
{
  v5 = a2;
  v6 = 0;
  v4.receiver = self;
  v4.super_class = TKAdaptiveResourceObject;
  v6 = [(TKAdaptiveResourceObject *)&v4 init];
  objc_storeStrong(&v6, v6);
  if (v6)
  {
    [TKAdaptiveResourceManager addObject:v6];
  }

  v3 = MEMORY[0x277D82BE0](v6);
  objc_storeStrong(&v6, 0);
  return v3;
}

- (void)dealloc
{
  v4 = self;
  v3 = a2;
  [TKAdaptiveResourceManager removeObject:self];
  v2.receiver = v4;
  v2.super_class = TKAdaptiveResourceObject;
  [(TKAdaptiveResourceObject *)&v2 dealloc];
}

- (void)tmlDispose
{
  v4 = self;
  v3 = a2;
  [TKAdaptiveResourceManager removeObject:self];
  v2.receiver = v4;
  v2.super_class = TKAdaptiveResourceObject;
  [(TKAdaptiveResourceObject *)&v2 tmlDispose];
}

@end