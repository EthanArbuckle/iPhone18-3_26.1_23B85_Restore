@interface HFAnalyticsSceneIconEditEvent
- (HFAnalyticsSceneIconEditEvent)initWithData:(id)a3;
- (id)payload;
@end

@implementation HFAnalyticsSceneIconEditEvent

- (HFAnalyticsSceneIconEditEvent)initWithData:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = HFAnalyticsSceneIconEditEvent;
  v5 = [(HFAnalyticsEvent *)&v15 initWithEventType:38];
  if (v5)
  {
    objc_opt_class();
    v6 = [v4 objectForKeyedSubscript:@"sceneIconDidChange"];
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    objc_storeStrong(&v5->_didChange, v7);

    objc_opt_class();
    v8 = [v4 objectForKeyedSubscript:@"sceneIconColorDescription"];
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    objc_storeStrong(&v5->_colorStr, v9);

    objc_opt_class();
    v10 = [v4 objectForKeyedSubscript:@"sceneIconIdentifier"];
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    objc_storeStrong(&v5->_sfSymbolStr, v11);

    objc_opt_class();
    v12 = [v4 objectForKeyedSubscript:@"isNewScene"];
    if (objc_opt_isKindOfClass())
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    objc_storeStrong(&v5->_isNewScene, v13);
  }

  return v5;
}

- (id)payload
{
  v10.receiver = self;
  v10.super_class = HFAnalyticsSceneIconEditEvent;
  v3 = [(HFAnalyticsEvent *)&v10 payload];
  v4 = [v3 mutableCopy];

  v5 = [(HFAnalyticsSceneIconEditEvent *)self didChange];
  [v4 na_safeSetObject:v5 forKey:@"sceneIconEditDidChange"];

  v6 = [(HFAnalyticsSceneIconEditEvent *)self colorStr];
  [v4 na_safeSetObject:v6 forKey:@"sceneIconEditColorString"];

  v7 = [(HFAnalyticsSceneIconEditEvent *)self sfSymbolStr];
  [v4 na_safeSetObject:v7 forKey:@"sceneIconEditSFSymbolString"];

  v8 = [(HFAnalyticsSceneIconEditEvent *)self isNewScene];
  [v4 na_safeSetObject:v8 forKey:@"isNewScene"];

  [v4 setObject:&unk_2825250B0 forKeyedSubscript:@"homeAppEventCount"];

  return v4;
}

@end