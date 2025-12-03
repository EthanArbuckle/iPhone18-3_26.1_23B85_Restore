@interface BLTPBActionFactory
+ (id)bltVersionToFactories;
+ (id)sharedInstance;
- (id)actionWithBBAction:(id)action;
@end

@implementation BLTPBActionFactory

+ (id)bltVersionToFactories
{
  if (bltVersionToFactories_onceToken != -1)
  {
    +[BLTPBActionFactory bltVersionToFactories];
  }

  v3 = bltVersionToFactories___bltVersionToFeatureDictionary;

  return v3;
}

void __43__BLTPBActionFactory_bltVersionToFactories__block_invoke()
{
  v6[2] = *MEMORY[0x277D85DE8];
  v5[0] = &unk_28544B580;
  v0 = objc_alloc_init(BLTPBActionFactoryVersion1);
  v5[1] = &unk_28544B598;
  v6[0] = v0;
  v1 = objc_alloc_init(BLTPBActionFactory);
  v6[1] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:2];
  v3 = bltVersionToFactories___bltVersionToFeatureDictionary;
  bltVersionToFactories___bltVersionToFeatureDictionary = v2;

  v4 = *MEMORY[0x277D85DE8];
}

+ (id)sharedInstance
{
  blt_boundedWaitForActivePairedDevice = [MEMORY[0x277D2BCF8] blt_boundedWaitForActivePairedDevice];
  bltVersion = [blt_boundedWaitForActivePairedDevice bltVersion];

  if (bltVersion >= 2)
  {
    v5 = 2;
  }

  else
  {
    v5 = bltVersion;
  }

  if (v5 != gCurrentVersion)
  {
    bltVersionToFactories = [self bltVersionToFactories];
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v5];
    v8 = [bltVersionToFactories objectForKeyedSubscript:v7];
    v9 = gCurrentFactory;
    gCurrentFactory = v8;

    gCurrentVersion = v5;
  }

  v10 = gCurrentFactory;

  return v10;
}

- (id)actionWithBBAction:(id)action
{
  v34 = *MEMORY[0x277D85DE8];
  actionCopy = action;
  v4 = actionCopy;
  if (actionCopy)
  {
    appearance = [actionCopy appearance];
    v6 = objc_alloc_init(BLTPBImage);
    image = [appearance image];
    data = [image data];
    [(BLTPBImage *)v6 setData:data];

    v9 = [appearance style] == 1;
    v10 = objc_alloc_init(BLTPBAppearance);
    title = [appearance title];
    [(BLTPBAppearance *)v10 setTitle:title];

    [(BLTPBAppearance *)v10 setDestructive:v9];
    v12 = objc_alloc_init(BLTPBAction);
    identifier = [v4 identifier];
    [(BLTPBAction *)v12 setIdentifier:identifier];

    -[BLTPBAction setActivationMode:](v12, "setActivationMode:", [v4 activationMode]);
    [(BLTPBAction *)v12 setAppearance:v10];
    launchURL = [v4 launchURL];
    absoluteString = [launchURL absoluteString];
    [(BLTPBAction *)v12 setLaunchURL:absoluteString];

    -[BLTPBAction setBehavior:](v12, "setBehavior:", [v4 behavior]);
    behaviorParameters = [v4 behaviorParameters];
    activePairedDeviceSupportsNSNullPListExtenion = [MEMORY[0x277D2BCC8] activePairedDeviceSupportsNSNullPListExtenion];
    v18 = activePairedDeviceSupportsNSNullPListExtenion;
    if (activePairedDeviceSupportsNSNullPListExtenion)
    {
      v19 = &v27;
    }

    else
    {
      v19 = 0;
    }

    if (activePairedDeviceSupportsNSNullPListExtenion)
    {
      v27 = 0;
    }

    v26 = 0;
    v20 = [BLTObjectSerializer serializeObject:behaviorParameters nulls:v19 error:&v26];
    v21 = 0;
    if (v18)
    {
      v21 = v27;
    }

    v22 = v26;

    if (v22)
    {
      v23 = blt_ids_log();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412802;
        v29 = v22;
        v30 = 2112;
        v31 = v20;
        v32 = 2112;
        v33 = v4;
        _os_log_error_impl(&dword_241FB3000, v23, OS_LOG_TYPE_ERROR, "Error serializing action behaviorParameters: %@, %@, %@", buf, 0x20u);
      }
    }

    else
    {
      [(BLTPBAction *)v12 setBehaviorParameters:v20];
      [(BLTPBAction *)v12 setBehaviorParametersNulls:v21];
    }
  }

  else
  {
    v12 = 0;
  }

  v24 = *MEMORY[0x277D85DE8];

  return v12;
}

@end