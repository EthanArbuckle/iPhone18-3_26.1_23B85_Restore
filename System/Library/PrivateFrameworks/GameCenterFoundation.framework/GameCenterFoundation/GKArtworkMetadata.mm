@interface GKArtworkMetadata
+ (id)secureCodedPropertyKeys;
- (GKArtworkMetadata)initWithTemplateURL:(id)l width:(id)width height:(id)height textColor1:(id)color1 textColor2:(id)color2 textColor3:(id)color3 textColor4:(id)color4 backgroundColor:(id)self0;
@end

@implementation GKArtworkMetadata

- (GKArtworkMetadata)initWithTemplateURL:(id)l width:(id)width height:(id)height textColor1:(id)color1 textColor2:(id)color2 textColor3:(id)color3 textColor4:(id)color4 backgroundColor:(id)self0
{
  lCopy = l;
  widthCopy = width;
  heightCopy = height;
  color1Copy = color1;
  color2Copy = color2;
  color3Copy = color3;
  color4Copy = color4;
  colorCopy = color;
  v28.receiver = self;
  v28.super_class = GKArtworkMetadata;
  v18 = [(GKArtworkMetadata *)&v28 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_templateURL, l);
    objc_storeStrong(&v19->_width, width);
    objc_storeStrong(&v19->_height, height);
    objc_storeStrong(&v19->_textColor1, color1);
    objc_storeStrong(&v19->_textColor2, color2);
    objc_storeStrong(&v19->_textColor3, color3);
    objc_storeStrong(&v19->_textColor4, color4);
    objc_storeStrong(&v19->_backgroundColor, color);
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