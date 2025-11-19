@interface IRSessionAnalyticsMetric
- (IRSessionAnalyticsMetric)initWithClientIdentifier:(id)a3 internalAppName:(id)a4 eventType:(id)a5 miloAvailable:(id)a6 bannerCandidateType:(id)a7 bannerCandidateModelType:(id)a8 chosenCandidateType:(id)a9 chosenCandidateModelType:(id)a10 postBannerInteraction:(id)a11 isOutsideApp:(id)a12;
- (NSDictionary)dictionaryRepresentation;
@end

@implementation IRSessionAnalyticsMetric

- (IRSessionAnalyticsMetric)initWithClientIdentifier:(id)a3 internalAppName:(id)a4 eventType:(id)a5 miloAvailable:(id)a6 bannerCandidateType:(id)a7 bannerCandidateModelType:(id)a8 chosenCandidateType:(id)a9 chosenCandidateModelType:(id)a10 postBannerInteraction:(id)a11 isOutsideApp:(id)a12
{
  v17 = a3;
  v30 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = a9;
  v23 = a10;
  v24 = a11;
  v25 = a12;
  v31.receiver = self;
  v31.super_class = IRSessionAnalyticsMetric;
  v26 = [(IRSessionAnalyticsMetric *)&v31 init];
  v27 = v26;
  if (v26)
  {
    [(IRSessionAnalyticsMetric *)v26 setClientIdentifier:v17];
    [(IRSessionAnalyticsMetric *)v27 setInternalAppName:v30];
    [(IRSessionAnalyticsMetric *)v27 setEventType:v18];
    [(IRSessionAnalyticsMetric *)v27 setMiloAvailable:v19];
    [(IRSessionAnalyticsMetric *)v27 setBannerCandidateType:v20];
    [(IRSessionAnalyticsMetric *)v27 setBannerCandidateModelType:v21];
    [(IRSessionAnalyticsMetric *)v27 setChosenCandidateType:v22];
    [(IRSessionAnalyticsMetric *)v27 setChosenCandidateModelType:v23];
    [(IRSessionAnalyticsMetric *)v27 setPostBannerInteraction:v24];
    [(IRSessionAnalyticsMetric *)v27 setIsOutsideApp:v25];
  }

  return v27;
}

- (NSDictionary)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [(IRSessionAnalyticsMetric *)self clientIdentifier];

  if (v4)
  {
    v5 = [(IRSessionAnalyticsMetric *)self clientIdentifier];
    [v3 setObject:v5 forKey:@"ClientIdentifier"];
  }

  v6 = [(IRSessionAnalyticsMetric *)self internalAppName];

  if (v6)
  {
    v7 = [(IRSessionAnalyticsMetric *)self internalAppName];
    [v3 setObject:v7 forKey:@"InternalAppName"];
  }

  v8 = [(IRSessionAnalyticsMetric *)self eventType];

  if (v8)
  {
    v9 = [(IRSessionAnalyticsMetric *)self eventType];
    [v3 setObject:v9 forKey:@"EventType"];
  }

  v10 = [(IRSessionAnalyticsMetric *)self miloAvailable];

  if (v10)
  {
    v11 = [(IRSessionAnalyticsMetric *)self miloAvailable];
    [v3 setObject:v11 forKey:@"MiLoAvailable"];
  }

  v12 = [(IRSessionAnalyticsMetric *)self bannerCandidateType];

  if (v12)
  {
    v13 = [(IRSessionAnalyticsMetric *)self bannerCandidateType];
    [v3 setObject:v13 forKey:@"BannerCandidateType"];
  }

  v14 = [(IRSessionAnalyticsMetric *)self bannerCandidateModelType];

  if (v14)
  {
    v15 = [(IRSessionAnalyticsMetric *)self bannerCandidateModelType];
    [v3 setObject:v15 forKey:@"BannerCandidateModelType"];
  }

  v16 = [(IRSessionAnalyticsMetric *)self chosenCandidateType];

  if (v16)
  {
    v17 = [(IRSessionAnalyticsMetric *)self chosenCandidateType];
    [v3 setObject:v17 forKey:@"ChosenCandidateType"];
  }

  v18 = [(IRSessionAnalyticsMetric *)self chosenCandidateModelType];

  if (v18)
  {
    v19 = [(IRSessionAnalyticsMetric *)self chosenCandidateModelType];
    [v3 setObject:v19 forKey:@"ChosenCandidateModelType"];
  }

  v20 = [(IRSessionAnalyticsMetric *)self postBannerInteraction];

  if (v20)
  {
    v21 = [(IRSessionAnalyticsMetric *)self postBannerInteraction];
    [v3 setObject:v21 forKey:@"PostBannerInteraction"];
  }

  v22 = [(IRSessionAnalyticsMetric *)self isOutsideApp];

  if (v22)
  {
    v23 = [(IRSessionAnalyticsMetric *)self isOutsideApp];
    [v3 setObject:v23 forKey:@"StartingEventIsWidget"];
  }

  return v3;
}

@end