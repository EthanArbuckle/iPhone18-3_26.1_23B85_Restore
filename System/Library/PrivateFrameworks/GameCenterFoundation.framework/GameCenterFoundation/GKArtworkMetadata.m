@interface GKArtworkMetadata
+ (id)secureCodedPropertyKeys;
- (GKArtworkMetadata)initWithTemplateURL:(id)a3 width:(id)a4 height:(id)a5 textColor1:(id)a6 textColor2:(id)a7 textColor3:(id)a8 textColor4:(id)a9 backgroundColor:(id)a10;
@end

@implementation GKArtworkMetadata

- (GKArtworkMetadata)initWithTemplateURL:(id)a3 width:(id)a4 height:(id)a5 textColor1:(id)a6 textColor2:(id)a7 textColor3:(id)a8 textColor4:(id)a9 backgroundColor:(id)a10
{
  v27 = a3;
  v26 = a4;
  v25 = a5;
  v24 = a6;
  v23 = a7;
  v22 = a8;
  v21 = a9;
  v17 = a10;
  v28.receiver = self;
  v28.super_class = GKArtworkMetadata;
  v18 = [(GKArtworkMetadata *)&v28 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_templateURL, a3);
    objc_storeStrong(&v19->_width, a4);
    objc_storeStrong(&v19->_height, a5);
    objc_storeStrong(&v19->_textColor1, a6);
    objc_storeStrong(&v19->_textColor2, a7);
    objc_storeStrong(&v19->_textColor3, a8);
    objc_storeStrong(&v19->_textColor4, a9);
    objc_storeStrong(&v19->_backgroundColor, a10);
  }

  return v19;
}

+ (id)secureCodedPropertyKeys
{
  if (secureCodedPropertyKeys_onceToken_24 != -1)
  {
    +[GKArtworkMetadata secureCodedPropertyKeys];
  }

  v3 = secureCodedPropertyKeys_sSecureCodedKeys_24;

  return v3;
}

void __44__GKArtworkMetadata_secureCodedPropertyKeys__block_invoke()
{
  v4[8] = *MEMORY[0x277D85DE8];
  v3[0] = @"templateURL";
  v4[0] = objc_opt_class();
  v3[1] = @"textColor1";
  v4[1] = objc_opt_class();
  v3[2] = @"textColor2";
  v4[2] = objc_opt_class();
  v3[3] = @"textColor3";
  v4[3] = objc_opt_class();
  v3[4] = @"textColor4";
  v4[4] = objc_opt_class();
  v3[5] = @"backgroundColor";
  v4[5] = objc_opt_class();
  v3[6] = @"width";
  v4[6] = objc_opt_class();
  v3[7] = @"height";
  v4[7] = objc_opt_class();
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:v3 count:8];
  v1 = secureCodedPropertyKeys_sSecureCodedKeys_24;
  secureCodedPropertyKeys_sSecureCodedKeys_24 = v0;

  v2 = *MEMORY[0x277D85DE8];
}

@end