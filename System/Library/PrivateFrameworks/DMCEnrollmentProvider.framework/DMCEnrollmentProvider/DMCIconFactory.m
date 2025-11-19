@interface DMCIconFactory
+ (id)_imageForIcon:(id)a3 descriptorName:(id)a4;
+ (id)_imageNamed:(id)a3;
+ (id)appIconForBundleID:(id)a3;
+ (id)iconForTypeID:(id)a3 large:(BOOL)a4;
+ (void)_setIcon:(id)a3 forSpecifier:(id)a4;
+ (void)setAppIcon:(id)a3 forSpecifier:(id)a4;
@end

@implementation DMCIconFactory

+ (void)_setIcon:(id)a3 forSpecifier:(id)a4
{
  v5 = *MEMORY[0x277D40020];
  v6 = a4;
  v7 = a3;
  [v6 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:v5];
  [v6 setObject:v7 forKeyedSubscript:*MEMORY[0x277D3FFD8]];
}

+ (void)setAppIcon:(id)a3 forSpecifier:(id)a4
{
  v5 = *MEMORY[0x277D40020];
  v6 = a4;
  v7 = a3;
  [v6 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:v5];
  [v6 setObject:v7 forKeyedSubscript:*MEMORY[0x277D40008]];
}

+ (id)appIconForBundleID:(id)a3
{
  v4 = MEMORY[0x277D1B1A8];
  v5 = a3;
  v6 = [[v4 alloc] initWithBundleIdentifier:v5];

  v7 = [a1 _imageForIcon:v6 descriptorName:*MEMORY[0x277D1B240]];

  return v7;
}

+ (id)iconForTypeID:(id)a3 large:(BOOL)a4
{
  v4 = a4;
  v6 = MEMORY[0x277D1B1A8];
  v7 = a3;
  v8 = [[v6 alloc] initWithType:v7];

  v9 = MEMORY[0x277D1B238];
  if (!v4)
  {
    v9 = MEMORY[0x277D1B240];
  }

  v10 = [a1 _imageForIcon:v8 descriptorName:*v9];

  return v10;
}

+ (id)_imageForIcon:(id)a3 descriptorName:(id)a4
{
  v5 = MEMORY[0x277D1B1C8];
  v6 = a3;
  v7 = [v5 imageDescriptorNamed:a4];
  [v7 setDrawBorder:1];
  v8 = [MEMORY[0x277D75C80] currentTraitCollection];
  [v7 setAppearance:{objc_msgSend(v8, "userInterfaceStyle") != 1}];

  v9 = [MEMORY[0x277D75C80] currentTraitCollection];
  if ([v9 layoutDirection])
  {
    v10 = 2;
  }

  else
  {
    v10 = 1;
  }

  [v7 setLanguageDirection:v10];

  v11 = [MEMORY[0x277D75C80] currentTraitCollection];
  [v7 setContrast:{objc_msgSend(v11, "accessibilityContrast") == 1}];

  v12 = [v6 prepareImageForDescriptor:v7];

  v13 = MEMORY[0x277D755B8];
  v14 = [v12 CGImage];
  [v12 scale];
  v15 = [v13 imageWithCGImage:v14 scale:0 orientation:?];
  v16 = v15;
  if (v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = PSBlankIconImage();
  }

  v18 = v17;

  return v18;
}

+ (id)_imageNamed:(id)a3
{
  v3 = MEMORY[0x277D755B8];
  v4 = MEMORY[0x277CCA8D8];
  v5 = a3;
  v6 = [v4 bundleForClass:objc_opt_class()];
  v7 = [v3 imageNamed:v5 inBundle:v6];

  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = PSBlankIconImage();
  }

  v9 = v8;

  return v9;
}

@end