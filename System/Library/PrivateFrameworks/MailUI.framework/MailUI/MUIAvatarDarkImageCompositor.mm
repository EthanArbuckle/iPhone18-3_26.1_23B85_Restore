@interface MUIAvatarDarkImageCompositor
+ (id)compositedDarkImageWithImage:(id)a3;
@end

@implementation MUIAvatarDarkImageCompositor

+ (id)compositedDarkImageWithImage:(id)a3
{
  v20[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  [v3 size];
  v5 = v4;
  v7 = v6;
  [v3 scale];
  v9 = v8;
  v10 = [v3 CGImage];

  v11 = [objc_alloc(MEMORY[0x277D1B160]) initWithCGImage:v10 scale:v9];
  v12 = objc_alloc(MEMORY[0x277D1B1A8]);
  v20[0] = v11;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
  v14 = [v12 initWithImages:v13];

  v15 = [objc_alloc(MEMORY[0x277D1B1C8]) initWithSize:v5 scale:{v7, v9}];
  [v15 setAppearance:1];
  v16 = [v14 prepareImageForDescriptor:v15];
  v17 = [v16 CGImage];
  if (v17)
  {
    v18 = [MEMORY[0x277D755B8] imageWithCGImage:v17];
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

@end