@interface IRSessionAnalyticsMetric
- (IRSessionAnalyticsMetric)initWithClientIdentifier:(id)identifier internalAppName:(id)name eventType:(id)type miloAvailable:(id)available bannerCandidateType:(id)candidateType bannerCandidateModelType:(id)modelType chosenCandidateType:(id)chosenCandidateType chosenCandidateModelType:(id)self0 postBannerInteraction:(id)self1 isOutsideApp:(id)self2;
- (NSDictionary)dictionaryRepresentation;
@end

@implementation IRSessionAnalyticsMetric

- (IRSessionAnalyticsMetric)initWithClientIdentifier:(id)identifier internalAppName:(id)name eventType:(id)type miloAvailable:(id)available bannerCandidateType:(id)candidateType bannerCandidateModelType:(id)modelType chosenCandidateType:(id)chosenCandidateType chosenCandidateModelType:(id)self0 postBannerInteraction:(id)self1 isOutsideApp:(id)self2
{
  identifierCopy = identifier;
  nameCopy = name;
  typeCopy = type;
  availableCopy = available;
  candidateTypeCopy = candidateType;
  modelTypeCopy = modelType;
  chosenCandidateTypeCopy = chosenCandidateType;
  candidateModelTypeCopy = candidateModelType;
  interactionCopy = interaction;
  appCopy = app;
  v31.receiver = self;
  v31.super_class = IRSessionAnalyticsMetric;
  v26 = [(IRSessionAnalyticsMetric *)&v31 init];
  v27 = v26;
  if (v26)
  {
    [(IRSessionAnalyticsMetric *)v26 setClientIdentifier:identifierCopy];
    [(IRSessionAnalyticsMetric *)v27 setInternalAppName:nameCopy];
    [(IRSessionAnalyticsMetric *)v27 setEventType:typeCopy];
    [(IRSessionAnalyticsMetric *)v27 setMiloAvailable:availableCopy];
    [(IRSessionAnalyticsMetric *)v27 setBannerCandidateType:candidateTypeCopy];
    [(IRSessionAnalyticsMetric *)v27 setBannerCandidateModelType:modelTypeCopy];
    [(IRSessionAnalyticsMetric *)v27 setChosenCandidateType:chosenCandidateTypeCopy];
    [(IRSessionAnalyticsMetric *)v27 setChosenCandidateModelType:candidateModelTypeCopy];
    [(IRSessionAnalyticsMetric *)v27 setPostBannerInteraction:interactionCopy];
    [(IRSessionAnalyticsMetric *)v27 setIsOutsideApp:appCopy];
  }

  return v27;
}

- (NSDictionary)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  clientIdentifier = [(IRSessionAnalyticsMetric *)self clientIdentifier];

  if (clientIdentifier)
  {
    clientIdentifier2 = [(IRSessionAnalyticsMetric *)self clientIdentifier];
    [dictionary setObject:clientIdentifier2 forKey:@"ClientIdentifier"];
  }

  internalAppName = [(IRSessionAnalyticsMetric *)self internalAppName];

  if (internalAppName)
  {
    internalAppName2 = [(IRSessionAnalyticsMetric *)self internalAppName];
    [dictionary setObject:internalAppName2 forKey:@"InternalAppName"];
  }

  eventType = [(IRSessionAnalyticsMetric *)self eventType];

  if (eventType)
  {
    eventType2 = [(IRSessionAnalyticsMetric *)self eventType];
    [dictionary setObject:eventType2 forKey:@"EventType"];
  }

  miloAvailable = [(IRSessionAnalyticsMetric *)self miloAvailable];

  if (miloAvailable)
  {
    miloAvailable2 = [(IRSessionAnalyticsMetric *)self miloAvailable];
    [dictionary setObject:miloAvailable2 forKey:@"MiLoAvailable"];
  }

  bannerCandidateType = [(IRSessionAnalyticsMetric *)self bannerCandidateType];

  if (bannerCandidateType)
  {
    bannerCandidateType2 = [(IRSessionAnalyticsMetric *)self bannerCandidateType];
    [dictionary setObject:bannerCandidateType2 forKey:@"BannerCandidateType"];
  }

  bannerCandidateModelType = [(IRSessionAnalyticsMetric *)self bannerCandidateModelType];

  if (bannerCandidateModelType)
  {
    bannerCandidateModelType2 = [(IRSessionAnalyticsMetric *)self bannerCandidateModelType];
    [dictionary setObject:bannerCandidateModelType2 forKey:@"BannerCandidateModelType"];
  }

  chosenCandidateType = [(IRSessionAnalyticsMetric *)self chosenCandidateType];

  if (chosenCandidateType)
  {
    chosenCandidateType2 = [(IRSessionAnalyticsMetric *)self chosenCandidateType];
    [dictionary setObject:chosenCandidateType2 forKey:@"ChosenCandidateType"];
  }

  chosenCandidateModelType = [(IRSessionAnalyticsMetric *)self chosenCandidateModelType];

  if (chosenCandidateModelType)
  {
    chosenCandidateModelType2 = [(IRSessionAnalyticsMetric *)self chosenCandidateModelType];
    [dictionary setObject:chosenCandidateModelType2 forKey:@"ChosenCandidateModelType"];
  }

  postBannerInteraction = [(IRSessionAnalyticsMetric *)self postBannerInteraction];

  if (postBannerInteraction)
  {
    postBannerInteraction2 = [(IRSessionAnalyticsMetric *)self postBannerInteraction];
    [dictionary setObject:postBannerInteraction2 forKey:@"PostBannerInteraction"];
  }

  isOutsideApp = [(IRSessionAnalyticsMetric *)self isOutsideApp];

  if (isOutsideApp)
  {
    isOutsideApp2 = [(IRSessionAnalyticsMetric *)self isOutsideApp];
    [dictionary setObject:isOutsideApp2 forKey:@"StartingEventIsWidget"];
  }

  return dictionary;
}

@end