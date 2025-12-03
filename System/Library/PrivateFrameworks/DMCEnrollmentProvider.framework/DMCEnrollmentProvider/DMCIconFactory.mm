@interface DMCIconFactory
+ (id)_imageForIcon:(id)icon descriptorName:(id)name;
+ (id)_imageNamed:(id)named;
+ (id)appIconForBundleID:(id)d;
+ (id)iconForTypeID:(id)d large:(BOOL)large;
+ (void)_setIcon:(id)icon forSpecifier:(id)specifier;
+ (void)setAppIcon:(id)icon forSpecifier:(id)specifier;
@end

@implementation DMCIconFactory

+ (void)_setIcon:(id)icon forSpecifier:(id)specifier
{
  v5 = *MEMORY[0x277D40020];
  specifierCopy = specifier;
  iconCopy = icon;
  [specifierCopy setObject:MEMORY[0x277CBEC38] forKeyedSubscript:v5];
  [specifierCopy setObject:iconCopy forKeyedSubscript:*MEMORY[0x277D3FFD8]];
}

+ (void)setAppIcon:(id)icon forSpecifier:(id)specifier
{
  v5 = *MEMORY[0x277D40020];
  specifierCopy = specifier;
  iconCopy = icon;
  [specifierCopy setObject:MEMORY[0x277CBEC38] forKeyedSubscript:v5];
  [specifierCopy setObject:iconCopy forKeyedSubscript:*MEMORY[0x277D40008]];
}

+ (id)appIconForBundleID:(id)d
{
  v4 = MEMORY[0x277D1B1A8];
  dCopy = d;
  v6 = [[v4 alloc] initWithBundleIdentifier:dCopy];

  v7 = [self _imageForIcon:v6 descriptorName:*MEMORY[0x277D1B240]];

  return v7;
}

+ (id)iconForTypeID:(id)d large:(BOOL)large
{
  largeCopy = large;
  v6 = MEMORY[0x277D1B1A8];
  dCopy = d;
  v8 = [[v6 alloc] initWithType:dCopy];

  v9 = MEMORY[0x277D1B238];
  if (!largeCopy)
  {
    v9 = MEMORY[0x277D1B240];
  }

  v10 = [self _imageForIcon:v8 descriptorName:*v9];

  return v10;
}

+ (id)_imageForIcon:(id)icon descriptorName:(id)name
{
  v5 = MEMORY[0x277D1B1C8];
  iconCopy = icon;
  v7 = [v5 imageDescriptorNamed:name];
  [v7 setDrawBorder:1];
  currentTraitCollection = [MEMORY[0x277D75C80] currentTraitCollection];
  [v7 setAppearance:{objc_msgSend(currentTraitCollection, "userInterfaceStyle") != 1}];

  currentTraitCollection2 = [MEMORY[0x277D75C80] currentTraitCollection];
  if ([currentTraitCollection2 layoutDirection])
  {
    v10 = 2;
  }

  else
  {
    v10 = 1;
  }

  [v7 setLanguageDirection:v10];

  currentTraitCollection3 = [MEMORY[0x277D75C80] currentTraitCollection];
  [v7 setContrast:{objc_msgSend(currentTraitCollection3, "accessibilityContrast") == 1}];

  v12 = [iconCopy prepareImageForDescriptor:v7];

  v13 = MEMORY[0x277D755B8];
  cGImage = [v12 CGImage];
  [v12 scale];
  v15 = [v13 imageWithCGImage:cGImage scale:0 orientation:?];
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

+ (id)_imageNamed:(id)named
{
  v3 = MEMORY[0x277D755B8];
  v4 = MEMORY[0x277CCA8D8];
  namedCopy = named;
  v6 = [v4 bundleForClass:objc_opt_class()];
  v7 = [v3 imageNamed:namedCopy inBundle:v6];

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