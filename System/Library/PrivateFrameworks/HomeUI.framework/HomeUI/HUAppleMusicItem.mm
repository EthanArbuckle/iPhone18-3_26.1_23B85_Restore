@interface HUAppleMusicItem
- (HUAppleMusicItem)init;
- (HUAppleMusicItem)initWithMediaProfileContainer:(id)a3;
- (id)_subclass_updateWithOptions:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation HUAppleMusicItem

- (HUAppleMusicItem)initWithMediaProfileContainer:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v10 = [MEMORY[0x277CCA890] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"HUAppleMusicItem.m" lineNumber:22 description:{@"Invalid parameter not satisfying: %@", @"mediaProfileContainer"}];
  }

  v11.receiver = self;
  v11.super_class = HUAppleMusicItem;
  v7 = [(HUAppleMusicItem *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_mediaProfileContainer, a3);
  }

  return v8;
}

- (HUAppleMusicItem)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithMediaProfileContainer_);
  [v4 handleFailureInMethod:a2 object:self file:@"HUAppleMusicItem.m" lineNumber:33 description:{@"%s is unavailable; use %@ instead", "-[HUAppleMusicItem init]", v5}];

  return 0;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(HUAppleMusicItem *)self mediaProfileContainer];
  v6 = [v4 initWithMediaProfileContainer:v5];

  [v6 copyLatestResultsFromItem:self];
  return v6;
}

- (id)_subclass_updateWithOptions:(id)a3
{
  v4 = [(HUAppleMusicItem *)self mediaProfileContainer];
  v5 = [v4 hf_appleMusicCurrentLoggedInAccount];

  v6 = objc_opt_new();
  if (v5)
  {
    v7 = [v5 username];
    [v6 setObject:v7 forKeyedSubscript:*MEMORY[0x277D13F60]];

    [v6 setObject:v5 forKeyedSubscript:@"HOAppleMusicAccountKey"];
  }

  v8 = MEMORY[0x277CCABB0];
  v9 = [(HUAppleMusicItem *)self mediaProfileContainer];
  v10 = [v9 settings];
  v11 = [v8 numberWithInt:{objc_msgSend(v10, "isControllable") ^ 1}];
  [v6 setObject:v11 forKeyedSubscript:*MEMORY[0x277D13EA8]];

  v12 = [(HUAppleMusicItem *)self mediaProfileContainer];
  v13 = [v12 hf_dependentHomeKitObjectsForDownstreamItems];
  [v6 setObject:v13 forKeyedSubscript:*MEMORY[0x277D13DA8]];

  v14 = [MEMORY[0x277D2C900] futureWithResult:v6];

  return v14;
}

@end