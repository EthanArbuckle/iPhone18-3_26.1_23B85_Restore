@interface GKAvatarArtwork
+ (id)secureCodedPropertyKeys;
- (GKAvatarArtwork)initWithType:(id)a3 metadata:(id)a4;
@end

@implementation GKAvatarArtwork

- (GKAvatarArtwork)initWithType:(id)a3 metadata:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = GKAvatarArtwork;
  v9 = [(GKAvatarArtwork *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_type, a3);
    objc_storeStrong(&v10->_metadata, a4);
  }

  return v10;
}

+ (id)secureCodedPropertyKeys
{
  if (secureCodedPropertyKeys_onceToken_14 != -1)
  {
    +[GKAvatarArtwork secureCodedPropertyKeys];
  }

  v3 = secureCodedPropertyKeys_sSecureCodedKeys_14;

  return v3;
}

void __42__GKAvatarArtwork_secureCodedPropertyKeys__block_invoke()
{
  v4[2] = *MEMORY[0x277D85DE8];
  v3[0] = @"type";
  v3[1] = @"metadata";
  v4[0] = objc_opt_class();
  v4[1] = objc_opt_class();
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:v3 count:2];
  v1 = secureCodedPropertyKeys_sSecureCodedKeys_14;
  secureCodedPropertyKeys_sSecureCodedKeys_14 = v0;

  v2 = *MEMORY[0x277D85DE8];
}

@end