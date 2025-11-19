@interface GKGameHighlightInternal
+ (id)secureCodedPropertyKeys;
@end

@implementation GKGameHighlightInternal

+ (id)secureCodedPropertyKeys
{
  if (secureCodedPropertyKeys_onceToken_350 != -1)
  {
    +[GKGameHighlightInternal secureCodedPropertyKeys];
  }

  v3 = secureCodedPropertyKeys_sSecureCodedKeys_349;

  return v3;
}

void __50__GKGameHighlightInternal_secureCodedPropertyKeys__block_invoke()
{
  v11[4] = *MEMORY[0x277D85DE8];
  v10[0] = @"adamID";
  v11[0] = objc_opt_class();
  v10[1] = @"artwork";
  v6 = 0;
  v7 = &v6;
  v8 = 0x2050000000;
  v0 = getASCArtworkClass_softClass;
  v9 = getASCArtworkClass_softClass;
  if (!getASCArtworkClass_softClass)
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __getASCArtworkClass_block_invoke;
    v5[3] = &unk_2785DF380;
    v5[4] = &v6;
    __getASCArtworkClass_block_invoke(v5);
    v0 = v7[3];
  }

  v1 = v0;
  _Block_object_dispose(&v6, 8);
  v11[1] = objc_opt_class();
  v10[2] = @"title";
  v11[2] = objc_opt_class();
  v10[3] = @"subtitle";
  v11[3] = objc_opt_class();
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:4];
  v3 = secureCodedPropertyKeys_sSecureCodedKeys_349;
  secureCodedPropertyKeys_sSecureCodedKeys_349 = v2;

  v4 = *MEMORY[0x277D85DE8];
}

@end