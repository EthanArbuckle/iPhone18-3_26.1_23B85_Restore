@interface GKPlayerPickerContext
+ (id)secureCodedPropertyKeys;
@end

@implementation GKPlayerPickerContext

+ (id)secureCodedPropertyKeys
{
  if (secureCodedPropertyKeys_onceToken != -1)
  {
    +[GKPlayerPickerContext secureCodedPropertyKeys];
  }

  v3 = secureCodedPropertyKeys_sSecureCodedKeys;

  return v3;
}

void __48__GKPlayerPickerContext_secureCodedPropertyKeys__block_invoke()
{
  v6[3] = *MEMORY[0x277D85DE8];
  v5[0] = @"maxPlayers";
  v6[0] = objc_opt_class();
  v5[1] = @"excludedPlayers";
  v0 = MEMORY[0x277CBEB98];
  v1 = objc_opt_class();
  v2 = [v0 setWithObjects:{v1, objc_opt_class(), 0}];
  v6[1] = v2;
  v5[2] = @"pickerOrigin";
  v6[2] = objc_opt_class();
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:3];

  v4 = secureCodedPropertyKeys_sSecureCodedKeys;
  secureCodedPropertyKeys_sSecureCodedKeys = v3;
}

@end