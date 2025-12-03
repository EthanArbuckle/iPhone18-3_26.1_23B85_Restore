@interface HUAppleMusicItem
- (HUAppleMusicItem)init;
- (HUAppleMusicItem)initWithMediaProfileContainer:(id)container;
- (id)_subclass_updateWithOptions:(id)options;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation HUAppleMusicItem

- (HUAppleMusicItem)initWithMediaProfileContainer:(id)container
{
  containerCopy = container;
  if (!containerCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HUAppleMusicItem.m" lineNumber:22 description:{@"Invalid parameter not satisfying: %@", @"mediaProfileContainer"}];
  }

  v11.receiver = self;
  v11.super_class = HUAppleMusicItem;
  v7 = [(HUAppleMusicItem *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_mediaProfileContainer, container);
  }

  return v8;
}

- (HUAppleMusicItem)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithMediaProfileContainer_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HUAppleMusicItem.m" lineNumber:33 description:{@"%s is unavailable; use %@ instead", "-[HUAppleMusicItem init]", v5}];

  return 0;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  mediaProfileContainer = [(HUAppleMusicItem *)self mediaProfileContainer];
  v6 = [v4 initWithMediaProfileContainer:mediaProfileContainer];

  [v6 copyLatestResultsFromItem:self];
  return v6;
}

- (id)_subclass_updateWithOptions:(id)options
{
  mediaProfileContainer = [(HUAppleMusicItem *)self mediaProfileContainer];
  hf_appleMusicCurrentLoggedInAccount = [mediaProfileContainer hf_appleMusicCurrentLoggedInAccount];

  v6 = objc_opt_new();
  if (hf_appleMusicCurrentLoggedInAccount)
  {
    username = [hf_appleMusicCurrentLoggedInAccount username];
    [v6 setObject:username forKeyedSubscript:*MEMORY[0x277D13F60]];

    [v6 setObject:hf_appleMusicCurrentLoggedInAccount forKeyedSubscript:@"HOAppleMusicAccountKey"];
  }

  v8 = MEMORY[0x277CCABB0];
  mediaProfileContainer2 = [(HUAppleMusicItem *)self mediaProfileContainer];
  settings = [mediaProfileContainer2 settings];
  v11 = [v8 numberWithInt:{objc_msgSend(settings, "isControllable") ^ 1}];
  [v6 setObject:v11 forKeyedSubscript:*MEMORY[0x277D13EA8]];

  mediaProfileContainer3 = [(HUAppleMusicItem *)self mediaProfileContainer];
  hf_dependentHomeKitObjectsForDownstreamItems = [mediaProfileContainer3 hf_dependentHomeKitObjectsForDownstreamItems];
  [v6 setObject:hf_dependentHomeKitObjectsForDownstreamItems forKeyedSubscript:*MEMORY[0x277D13DA8]];

  v14 = [MEMORY[0x277D2C900] futureWithResult:v6];

  return v14;
}

@end