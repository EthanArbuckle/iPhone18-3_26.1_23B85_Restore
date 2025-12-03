@interface MUIAvatarDarkImageCompositor
+ (id)compositedDarkImageWithImage:(id)image;
@end

@implementation MUIAvatarDarkImageCompositor

+ (id)compositedDarkImageWithImage:(id)image
{
  v20[1] = *MEMORY[0x277D85DE8];
  imageCopy = image;
  [imageCopy size];
  v5 = v4;
  v7 = v6;
  [imageCopy scale];
  v9 = v8;
  cGImage = [imageCopy CGImage];

  v11 = [objc_alloc(MEMORY[0x277D1B160]) initWithCGImage:cGImage scale:v9];
  v12 = objc_alloc(MEMORY[0x277D1B1A8]);
  v20[0] = v11;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
  v14 = [v12 initWithImages:v13];

  v15 = [objc_alloc(MEMORY[0x277D1B1C8]) initWithSize:v5 scale:{v7, v9}];
  [v15 setAppearance:1];
  v16 = [v14 prepareImageForDescriptor:v15];
  cGImage2 = [v16 CGImage];
  if (cGImage2)
  {
    v18 = [MEMORY[0x277D755B8] imageWithCGImage:cGImage2];
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

@end