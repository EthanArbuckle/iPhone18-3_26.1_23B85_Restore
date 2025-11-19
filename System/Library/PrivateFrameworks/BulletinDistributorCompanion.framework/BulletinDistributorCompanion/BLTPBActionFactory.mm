@interface BLTPBActionFactory
+ (id)bltVersionToFactories;
+ (id)sharedInstance;
- (id)actionWithBBAction:(id)a3;
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
  v3 = [MEMORY[0x277D2BCF8] blt_boundedWaitForActivePairedDevice];
  v4 = [v3 bltVersion];

  if (v4 >= 2)
  {
    v5 = 2;
  }

  else
  {
    v5 = v4;
  }

  if (v5 != gCurrentVersion)
  {
    v6 = [a1 bltVersionToFactories];
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v5];
    v8 = [v6 objectForKeyedSubscript:v7];
    v9 = gCurrentFactory;
    gCurrentFactory = v8;

    gCurrentVersion = v5;
  }

  v10 = gCurrentFactory;

  return v10;
}

- (id)actionWithBBAction:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 appearance];
    v6 = objc_alloc_init(BLTPBImage);
    v7 = [v5 image];
    v8 = [v7 data];
    [(BLTPBImage *)v6 setData:v8];

    v9 = [v5 style] == 1;
    v10 = objc_alloc_init(BLTPBAppearance);
    v11 = [v5 title];
    [(BLTPBAppearance *)v10 setTitle:v11];

    [(BLTPBAppearance *)v10 setDestructive:v9];
    v12 = objc_alloc_init(BLTPBAction);
    v13 = [v4 identifier];
    [(BLTPBAction *)v12 setIdentifier:v13];

    -[BLTPBAction setActivationMode:](v12, "setActivationMode:", [v4 activationMode]);
    [(BLTPBAction *)v12 setAppearance:v10];
    v14 = [v4 launchURL];
    v15 = [v14 absoluteString];
    [(BLTPBAction *)v12 setLaunchURL:v15];

    -[BLTPBAction setBehavior:](v12, "setBehavior:", [v4 behavior]);
    v16 = [v4 behaviorParameters];
    v17 = [MEMORY[0x277D2BCC8] activePairedDeviceSupportsNSNullPListExtenion];
    v18 = v17;
    if (v17)
    {
      v19 = &v27;
    }

    else
    {
      v19 = 0;
    }

    if (v17)
    {
      v27 = 0;
    }

    v26 = 0;
    v20 = [BLTObjectSerializer serializeObject:v16 nulls:v19 error:&v26];
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