@interface NTKFaceColorPalette
+ (BOOL)resolveInstanceMethod:(SEL)a3;
+ (id)colorWithName:(id)a3 inDomain:(id)a4;
- (BOOL)hasPrimaryColorRange;
- (BOOL)isBlackColor;
- (BOOL)isCompositePalette;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEvergreenCollection;
- (BOOL)isMulticolor;
- (BOOL)isRainbowColor;
- (BOOL)isSeasonalCollection;
- (BOOL)isUnityColor;
- (BOOL)isVictory;
- (BOOL)isWhite;
- (BOOL)isWhiteColor;
- (BOOL)isZeus;
- (NSMutableArray)bundleList;
- (NSString)description;
- (NTKFaceColorPalette)initWithDomainName:(id)a3 inBundle:(id)a4;
- (NTKFaceColorPalette)initWithFaceClass:(Class)a3;
- (NTKFaceColorPalette)tritiumPalette;
- (NTKPigmentEditOption)pigmentEditOption;
- (UIColor)swatch;
- (id)_loadColorFromAssetCatalogForKey:(id)a3 namespace:(id)a4 collectionName:(id)a5 bundle:(id)a6 colorFraction:(double)a7 ignoringOptionAndCollection:(BOOL)a8 inspector:(id)a9;
- (id)_notFoundColor;
- (id)_primaryShiftedColor;
- (id)_seasonalDarkColor;
- (id)_seasonalLightColor;
- (id)_secondaryColor;
- (id)_secondaryShiftedColor;
- (id)_unitySwatchImageForSize:(CGSize)a3;
- (id)_unitySwatchImageForSize:(CGSize)a3 redColor:(id)a4 blackColor:(id)a5 greenColor:(id)a6;
- (id)copyWithOption:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)entryNameForKey:(id)a3;
- (id)identifier;
- (id)multitoneColorNames;
- (id)paletteAtIndex:(unint64_t)a3;
- (id)primaryColorWithFraction:(double)a3;
- (id)swatchImageForSize:(CGSize)a3;
- (id)swatchPrimaryColor;
- (id)tritiumPaletteWithProgress:(double)a3;
- (id)valueForKey:(id)a3;
- (void)colorBundleContentChanged;
- (void)configurationDidChange:(id)a3;
- (void)executeWithOption:(id)a3 block:(id)a4;
- (void)resetColorCache;
- (void)setConfiguration:(id)a3;
- (void)setPigmentEditOption:(id)a3;
@end

@implementation NTKFaceColorPalette

- (BOOL)isWhite
{
  v2 = [(NTKFaceColorPalette *)self pigmentEditOption];
  v3 = [v2 identifier];
  v4 = [v3 isEqual:@"seasons.spring2015.white"];

  return v4;
}

- (BOOL)isZeus
{
  v2 = [(NTKFaceColorPalette *)self pigmentEditOption];
  v3 = [v2 identifier];
  v4 = [v3 isEqual:@"zeus.orange"];

  return v4;
}

- (BOOL)isVictory
{
  v2 = [(NTKFaceColorPalette *)self pigmentEditOption];
  v3 = [v2 identifier];
  v4 = [v3 isEqual:@"victory.volt"];

  return v4;
}

- (NTKFaceColorPalette)initWithFaceClass:(Class)a3
{
  v5 = [(objc_class *)a3 pigmentFaceDomain];
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:a3];
  v7 = [(NTKFaceColorPalette *)self initWithDomainName:v5 inBundle:v6];

  return v7;
}

- (NTKFaceColorPalette)initWithDomainName:(id)a3 inBundle:(id)a4
{
  v7 = a3;
  v8 = a4;
  v17.receiver = self;
  v17.super_class = NTKFaceColorPalette;
  v9 = [(NTKFaceColorPalette *)&v17 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_faceSpecificNamespace, a3);
    objc_storeStrong(&v10->_domainBundle, a4);
    v11 = objc_alloc_init(MEMORY[0x277CBEA78]);
    colorCache = v10->_colorCache;
    v10->_colorCache = v11;

    v13 = objc_alloc_init(MEMORY[0x277CBEA78]);
    swatchImageCache = v10->_swatchImageCache;
    v10->_swatchImageCache = v13;

    if (initWithDomainName_inBundle__onceToken != -1)
    {
      [NTKFaceColorPalette initWithDomainName:inBundle:];
    }

    v15 = [MEMORY[0x277CCAB98] defaultCenter];
    [v15 addObserver:v10 selector:sel_colorBundleContentChanged name:@"NTKColorBundleContentChangedNotificationName" object:0];
  }

  return v10;
}

void __51__NTKFaceColorPalette_initWithDomainName_inBundle___block_invoke()
{
  v0 = NSStringFromSelector(sel_primaryColor);
  v1 = kPrimaryColorSelectorName;
  kPrimaryColorSelectorName = v0;

  v2 = NSStringFromSelector(sel_primaryShiftedColor);
  v3 = kPrimaryShiftedColorSelectorName;
  kPrimaryShiftedColorSelectorName = v2;

  v4 = NSStringFromSelector(sel_secondaryColor);
  v5 = kSecondaryColorSelectorName;
  kSecondaryColorSelectorName = v4;

  v6 = NSStringFromSelector(sel_secondaryShiftedColor);
  v7 = kSecondaryShiftedColorSelectorName;
  kSecondaryShiftedColorSelectorName = v6;

  v8 = NSStringFromSelector(sel_seasonalLightColor);
  v9 = kSeasonalLightColorSelectorName;
  kSeasonalLightColorSelectorName = v8;

  v10 = NSStringFromSelector(sel_seasonalDarkColor);
  v11 = kSeasonalDarkColorSelectorName;
  kSeasonalDarkColorSelectorName = v10;
}

- (NSMutableArray)bundleList
{
  bundleList = self->_bundleList;
  if (!bundleList)
  {
    v4 = self->_domainBundle;
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v5, 0}];
    v7 = self->_bundleList;
    self->_bundleList = v6;

    if (v4)
    {
      v8 = [(NSBundle *)v4 bundlePath];
      v9 = [v5 bundlePath];
      v10 = [v8 isEqual:v9];

      if ((v10 & 1) == 0)
      {
        [(NSMutableArray *)self->_bundleList addObject:v4];
      }
    }

    v11 = +[NTKColorBundleLoader sharedInstance];
    v12 = [v11 loadColorBundles];

    if (v12)
    {
      [(NSMutableArray *)self->_bundleList addObjectsFromArray:v12];
    }

    bundleList = self->_bundleList;
  }

  return bundleList;
}

- (void)colorBundleContentChanged
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__NTKFaceColorPalette_colorBundleContentChanged__block_invoke;
  block[3] = &unk_27877DB10;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __48__NTKFaceColorPalette_colorBundleContentChanged__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;

  v4 = *(a1 + 32);

  return [v4 resetColorCache];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  v5 = [(NTKFaceColorPalette *)self configuration];
  v6 = [v5 copy];
  [v4 setConfiguration:v6];

  objc_storeStrong(v4 + 7, self->_domainBundle);
  objc_storeStrong(v4 + 4, self->_faceSpecificNamespace);
  v7 = [(NTKFaceColorPalette *)self colorCache];
  [v4 setColorCache:v7];

  v8 = [(NTKFaceColorPalette *)self swatchImageCache];
  [v4 setSwatchImageCache:v8];

  v9 = [(NTKFaceColorPalette *)self configuration];
  v10 = [v9 copy];
  [v4 setConfiguration:v10];

  tritium = self->_tritium;
  if (*(v4 + 8) != tritium)
  {
    *(v4 + 8) = tritium;
    v12 = v4[9];
    v4[9] = 0;
  }

  return v4;
}

- (id)copyWithOption:(id)a3
{
  v4 = a3;
  v5 = [(NTKFaceColorPalette *)self copy];
  [v5 setPigmentEditOption:v4];

  return v5;
}

- (id)tritiumPaletteWithProgress:(double)a3
{
  interpolatedTritiumPalette = self->_interpolatedTritiumPalette;
  if (!interpolatedTritiumPalette)
  {
    v6 = [NTKInterpolatedColorPalette alloc];
    v7 = [(NTKFaceColorPalette *)self tritiumPalette];
    v8 = [(NTKInterpolatedColorPalette *)v6 initWithFromPalette:self toPalette:v7];
    v9 = self->_interpolatedTritiumPalette;
    self->_interpolatedTritiumPalette = v8;

    interpolatedTritiumPalette = self->_interpolatedTritiumPalette;
  }

  v10 = [(NTKInterpolatedColorPalette *)interpolatedTritiumPalette fromPalette];
  v11 = [v10 identifier];
  v12 = [(NTKFaceColorPalette *)self identifier];
  v13 = [v11 isEqualToString:v12];

  if ((v13 & 1) == 0)
  {
    [(NTKInterpolatedColorPalette *)self->_interpolatedTritiumPalette setFromPalette:self];
    v14 = [(NTKFaceColorPalette *)self tritiumPalette];
    [(NTKInterpolatedColorPalette *)self->_interpolatedTritiumPalette setToPalette:v14];
  }

  [(NTKInterpolatedColorPalette *)self->_interpolatedTritiumPalette setTransitionFraction:a3];
  v15 = self->_interpolatedTritiumPalette;

  return v15;
}

- (void)executeWithOption:(id)a3 block:(id)a4
{
  if (a4)
  {
    v6 = a4;
    v7 = a3;
    v8 = [(NTKFaceColorPalette *)self configuration];
    v9 = [v8 copy];

    [(NTKFaceColorPalette *)self setPigmentEditOption:v7];
    v6[2](v6, self);

    [(NTKFaceColorPalette *)self setConfiguration:v9];
  }
}

- (void)configurationDidChange:(id)a3
{
  v9 = a3;
  identifier = self->_identifier;
  self->_identifier = 0;

  tritiumPalette = self->_tritiumPalette;
  self->_tritiumPalette = 0;

  interpolatedTritiumPalette = self->_interpolatedTritiumPalette;
  if (interpolatedTritiumPalette)
  {
    v7 = [(NTKInterpolatedColorPalette *)interpolatedTritiumPalette fromPalette];
    [v7 configurationDidChange:v9];

    v8 = [(NTKInterpolatedColorPalette *)self->_interpolatedTritiumPalette toPalette];
    [v8 configurationDidChange:v9];
  }
}

+ (id)colorWithName:(id)a3 inDomain:(id)a4
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/%@", a4, a3];
  v5 = MEMORY[0x277D75348];
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v5 colorNamed:v4 inBundle:v6 compatibleWithTraitCollection:0];

  return v7;
}

- (void)setPigmentEditOption:(id)a3
{
  v4 = a3;
  v5 = [(NTKFaceColorPalette *)self configuration];

  if (v5)
  {
    v6 = [(NTKFaceColorPalette *)self configuration];
    [(NTKFaceColorPaletteConfiguration *)v6 setPigmentEditOption:v4];
  }

  else
  {
    v6 = [[NTKFaceColorPaletteConfiguration alloc] initWithPigmentEditOption:v4];

    [(NTKFaceColorPalette *)self setConfiguration:v6];
  }
}

- (NTKPigmentEditOption)pigmentEditOption
{
  v2 = [(NTKFaceColorPalette *)self configuration];
  v3 = [v2 pigmentEditOption];

  return v3;
}

- (void)setConfiguration:(id)a3
{
  v8 = a3;
  objc_storeStrong(&self->_configuration, a3);
  [(NTKFaceColorPaletteConfiguration *)self->_configuration setDelegate:self];
  interpolatedTritiumPalette = self->_interpolatedTritiumPalette;
  if (interpolatedTritiumPalette)
  {
    v6 = [(NTKInterpolatedColorPalette *)interpolatedTritiumPalette fromPalette];
    objc_storeStrong(v6 + 2, a3);

    v7 = [(NTKInterpolatedColorPalette *)self->_interpolatedTritiumPalette toPalette];
    objc_storeStrong(v7 + 2, a3);
  }

  [(NTKFaceColorPalette *)self configurationDidChange:v8];
}

- (void)resetColorCache
{
  [(NSCache *)self->_colorCache removeAllObjects];
  swatchImageCache = self->_swatchImageCache;

  [(NSCache *)swatchImageCache removeAllObjects];
}

- (BOOL)isEvergreenCollection
{
  v2 = [(NTKFaceColorPalette *)self configuration];
  v3 = [v2 collectionName];
  v4 = [v3 hasPrefix:@"evergreen"];

  return v4;
}

- (BOOL)isSeasonalCollection
{
  v2 = [(NTKFaceColorPalette *)self configuration];
  v3 = [v2 collectionName];
  v4 = [v3 hasPrefix:@"seasons"];

  return v4;
}

- (BOOL)isMulticolor
{
  v2 = [(NTKFaceColorPalette *)self pigmentEditOption];
  v3 = [v2 identifier];
  v4 = [v3 isEqual:@"special.multicolor"];

  return v4;
}

- (BOOL)isRainbowColor
{
  v2 = [(NTKFaceColorPalette *)self pigmentEditOption];
  v3 = [v2 identifier];
  v4 = [v3 isEqual:@"special.rainbow"];

  return v4;
}

- (BOOL)isWhiteColor
{
  v6 = 0.0;
  v7 = 0.0;
  v5 = 0.0;
  v2 = [(NTKFaceColorPalette *)self primaryColor];
  [v2 getRed:&v7 green:&v6 blue:&v5 alpha:0];

  return v7 == 1.0 && v6 == 1.0 && v5 == 1.0;
}

- (BOOL)isBlackColor
{
  if ([(NTKFaceColorPalette *)self isEvergreenCollection])
  {
    v3 = [(NTKFaceColorPalette *)self pigmentEditOption];
    v4 = [v3 identifier];
    v5 = [v4 isEqual:@"evergreen.black"];
  }

  else
  {
    v3 = [(NTKFaceColorPalette *)self primaryColor];
    v5 = CLKIsBlackColor();
  }

  return v5;
}

- (BOOL)isUnityColor
{
  if ([(NTKFaceColorPalette *)self isCompositePalette])
  {
    v3 = [(NTKFaceColorPalette *)self paletteAtIndex:0];
    v4 = [v3 configuration];
    v5 = [v4 collectionName];
    if ([v5 isEqualToString:@"unity"])
    {
      v6 = [(NTKFaceColorPalette *)self paletteAtIndex:1];
      v7 = [v6 configuration];
      v8 = [v7 collectionName];
      v9 = [v8 isEqualToString:@"unity"];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v3 = [(NTKFaceColorPalette *)self configuration];
    v4 = [v3 collectionName];
    v9 = [v4 isEqualToString:@"unity"];
  }

  return v9;
}

- (BOOL)hasPrimaryColorRange
{
  v3 = [(NTKFaceColorPalette *)self primaryColorWithFraction:0.0];
  if (v3 == NTKFaceColorPaletteNotFoundColor)
  {
    v5 = 0;
  }

  else
  {
    v4 = [(NTKFaceColorPalette *)self primaryColorWithFraction:1.0];
    v5 = v4 != NTKFaceColorPaletteNotFoundColor;
  }

  return v5;
}

- (id)primaryColorWithFraction:(double)a3
{
  v5 = [(NTKFaceColorPalette *)self configuration];
  [v5 colorFraction];
  v7 = v6;

  v8 = [(NTKFaceColorPalette *)self configuration];
  [v8 setColorFraction:a3];

  v9 = [(NTKFaceColorPalette *)self valueForKey:kPrimaryColorSelectorName];
  v10 = [(NTKFaceColorPalette *)self configuration];
  [v10 setColorFraction:v7];

  return v9;
}

- (BOOL)isCompositePalette
{
  v2 = [(NTKFaceColorPalette *)self multitoneColorNames];
  v3 = [v2 count] > 1;

  return v3;
}

- (id)paletteAtIndex:(unint64_t)a3
{
  if ([(NTKFaceColorPalette *)self isCompositePalette])
  {
    v5 = [(NTKFaceColorPalette *)self multitoneColorNames];
    if ([v5 count] > a3)
    {
      v6 = [(NTKFaceColorPalette *)self configuration];
      v7 = [v6 colorOption];
      v8 = [(NTKFaceColorPalette *)self configuration];
      v9 = [v8 collectionName];
      v10 = [NTKPigmentEditOption multitonePigmentAtIndex:a3 forColorName:v7 groupName:v9];

      v11 = [(NTKFaceColorPalette *)self copyWithOption:v10];
      [(NTKFaceColorPalette *)v11 setColorCache:0];

      goto LABEL_8;
    }
  }

  else if (!a3)
  {
    v11 = self;
    goto LABEL_8;
  }

  v11 = 0;
LABEL_8:

  return v11;
}

- (id)multitoneColorNames
{
  v2 = [(NTKFaceColorPalette *)self configuration];
  v3 = [v2 colorOption];
  v4 = [NTKPigmentEditOption multitoneColorNames:v3];

  return v4;
}

- (id)identifier
{
  identifier = self->_identifier;
  if (!identifier)
  {
    v4 = MEMORY[0x277CCACA8];
    v5 = [(NTKFaceColorPaletteConfiguration *)self->_configuration uniqueId];
    v6 = [v4 stringWithFormat:@"%@-%lu", v5, -[NTKFaceColorPalette isTritium](self, "isTritium")];
    v7 = self->_identifier;
    self->_identifier = v6;

    identifier = self->_identifier;
  }

  return identifier;
}

- (id)valueForKey:(id)a3
{
  v4 = a3;
  if ([v4 hasPrefix:@"tritium_"])
  {
    v5 = 0;
    goto LABEL_17;
  }

  v6 = MEMORY[0x277CCACA8];
  v7 = [(NTKFaceColorPalette *)self identifier];
  v8 = [v6 stringWithFormat:@"%@-%@", v7, v4];

  v9 = [(NSCache *)self->_colorCache objectForKey:v8];
  if (v9)
  {
    v10 = v9;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [(NTKFaceColorPalette *)self _notFoundColor];
    }

    else
    {
      v11 = v10;
      v10 = v11;
    }

    v5 = v11;
    goto LABEL_16;
  }

  v12 = _NTKLoggingObjectForDomain(46, "NTKLoggingDomainPigment");
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG);

  if (v13)
  {
    v14 = objc_alloc_init(NTKFaceColorPaletteInspector);
    v15 = [(NTKFaceColorPalette *)self faceSpecificNamespace];
    [(NTKFaceColorPaletteInspector *)v14 setDomain:v15];

    [(NTKFaceColorPaletteInspector *)v14 setPropertyName:v4];
    v16 = [(NTKFaceColorPalette *)self configuration];
    v17 = [v16 colorOption];
    [(NTKFaceColorPaletteInspector *)v14 setPigmentName:v17];

    [(NTKFaceColorPaletteInspector *)v14 setIsTritium:[(NTKFaceColorPalette *)self isTritium]];
  }

  else
  {
    v14 = 0;
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __35__NTKFaceColorPalette_valueForKey___block_invoke;
  aBlock[3] = &unk_2787890B0;
  aBlock[4] = self;
  v18 = v4;
  v34 = v18;
  v19 = v14;
  v35 = v19;
  v20 = _Block_copy(aBlock);
  v21 = [(NTKFaceColorPaletteConfiguration *)self->_configuration formattedCollectionName];
  v22 = v20[2](v20, v21, 0);

  if (!v22)
  {
    v25 = NTKFaceColorPalette_PerformFallbackPropertyAccessor(self, v18, v19);
    if (v25)
    {
      v22 = v25;
    }

    else if (![v18 isEqualToString:kPrimaryColorSelectorName] || (-[NTKFaceColorPaletteConfiguration colorOption](self->_configuration, "colorOption"), v32 = objc_claimAutoreleasedReturnValue(), NTKFaceColorPalette_PerformFallbackPropertyAccessor(self, v32, v19), v22 = objc_claimAutoreleasedReturnValue(), v32, !v22))
    {
      v26 = [(NTKFaceColorPaletteConfiguration *)self->_configuration formattedCollectionName];
      v22 = v20[2](v20, v26, 1);

      if (!v22)
      {
        if (![(NTKFaceColorPalette *)self isTritium])
        {
          goto LABEL_30;
        }

        if (self->_tritium)
        {
          self->_tritium = 0;
          identifier = self->_identifier;
          self->_identifier = 0;
        }

        v22 = [(NTKFaceColorPalette *)self valueForKey:v18];
        if (!self->_tritium)
        {
          self->_tritium = 1;
          v28 = self->_identifier;
          self->_identifier = 0;
        }

        if (!v22)
        {
LABEL_30:
          v29 = _NTKLoggingObjectForDomain(46, "NTKLoggingDomainPigment");
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
          {
            [(NTKFaceColorPalette *)v19 valueForKey:v29];
          }

          colorCache = self->_colorCache;
          v31 = [MEMORY[0x277CBEB68] null];
          [(NSCache *)colorCache setObject:v31 forKey:v8];

          v5 = [(NTKFaceColorPalette *)self _notFoundColor];
          v10 = 0;
          goto LABEL_15;
        }
      }
    }
  }

  v23 = _NTKLoggingObjectForDomain(46, "NTKLoggingDomainPigment");
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    [(NTKFaceColorPalette *)v19 valueForKey:v23];
  }

  [(NSCache *)self->_colorCache setObject:v22 forKey:v8];
  v10 = v22;
  v5 = v10;
LABEL_15:

LABEL_16:
LABEL_17:

  return v5;
}

id __35__NTKFaceColorPalette_valueForKey___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = [*(a1 + 32) bundleList];
  v7 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v22;
    obj = v6;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v21 + 1) + 8 * i);
        v12 = *(a1 + 32);
        v13 = *(a1 + 40);
        v14 = *(v12 + 32);
        [*(v12 + 16) colorFraction];
        v15 = [v12 _loadColorFromAssetCatalogForKey:v13 namespace:v14 collectionName:v5 bundle:v11 colorFraction:a3 ignoringOptionAndCollection:*(a1 + 48) inspector:?];
        if (!v15)
        {
          v16 = *(a1 + 32);
          v17 = *(a1 + 40);
          [v16[2] colorFraction];
          v15 = [v16 _loadColorFromAssetCatalogForKey:v17 namespace:0 collectionName:v5 bundle:v11 colorFraction:a3 ignoringOptionAndCollection:*(a1 + 48) inspector:?];
          if (!v15)
          {
            continue;
          }
        }

        v18 = v15;

        v6 = v18;
        goto LABEL_12;
      }

      v6 = obj;
      v8 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v18 = 0;
LABEL_12:

  return v18;
}

- (id)_notFoundColor
{
  if ([(NTKFaceColorPalette *)self isTritium])
  {
    v2 = 0;
  }

  else
  {
    v3 = NTKFaceColorPaletteNotFoundColor;
    if (!NTKFaceColorPaletteNotFoundColor)
    {
      v4 = [MEMORY[0x277D75348] colorWithRed:1.0 green:1.0 blue:1.0 alpha:1.0];
      v5 = NTKFaceColorPaletteNotFoundColor;
      NTKFaceColorPaletteNotFoundColor = v4;

      v3 = NTKFaceColorPaletteNotFoundColor;
    }

    v2 = v3;
  }

  return v2;
}

- (id)_loadColorFromAssetCatalogForKey:(id)a3 namespace:(id)a4 collectionName:(id)a5 bundle:(id)a6 colorFraction:(double)a7 ignoringOptionAndCollection:(BOOL)a8 inspector:(id)a9
{
  v10 = a8;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a9;
  v59 = self;
  v20 = [(NTKFaceColorPalette *)self entryNameForKey:v15];
  v58 = v16;
  if (v16)
  {
    v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/", v16];
    if (v10)
    {
      v22 = v17;
      v23 = MEMORY[0x277CCACA8];
      v24 = colorEntryName(0, v20, [(NTKFaceColorPalette *)self isTritium]);
      v25 = [v23 stringWithFormat:@"%@%@", v21, v24];
      v26 = colorWithName(v25, v18, v19);
LABEL_19:

      v17 = v22;
      goto LABEL_20;
    }
  }

  else
  {
    v21 = &stru_284110E98;
    if (v10)
    {
      v26 = 0;
      goto LABEL_20;
    }
  }

  if (!v17)
  {
LABEL_18:
    v22 = v17;
    v44 = MEMORY[0x277CCACA8];
    v24 = [(NTKFaceColorPaletteConfiguration *)v59->_configuration colorOption];
    v25 = colorEntryName(v24, v20, [(NTKFaceColorPalette *)v59 isTritium]);
    v45 = [v44 stringWithFormat:@"%@%@", v21, v25];
    v26 = colorWithName(v45, v18, v19);

    goto LABEL_19;
  }

  v57 = v15;
  v27 = MEMORY[0x277CCACA8];
  [(NTKFaceColorPaletteConfiguration *)self->_configuration colorOption];
  v28 = v20;
  v29 = v21;
  v30 = v19;
  v32 = v31 = v17;
  v33 = colorEntryName(v32, v28, [(NTKFaceColorPalette *)self isTritium]);
  v55 = v31;
  v56 = v31;
  v19 = v30;
  v21 = v29;
  v34 = [v27 stringWithFormat:@"%@%@/%@", v29, v55, v33];
  v26 = colorWithName(v34, v18, v19);

  v20 = v28;
  if (!v26)
  {
    v15 = v57;
    if (!v20)
    {
      goto LABEL_17;
    }

    v35 = MEMORY[0x277CCACA8];
    v17 = v56;
    v36 = colorEntryName(v56, v20, [(NTKFaceColorPalette *)v59 isTritium]);
    v37 = [v35 stringWithFormat:@"%@%@", v21, v36];
    v26 = colorWithName(v37, v18, v19);

    if (v26)
    {
      goto LABEL_20;
    }

    v38 = [v56 componentsSeparatedByString:@"/"];
    v39 = [v38 mutableCopy];

    [v39 removeLastObject];
    while ([v39 count])
    {
      v40 = [v39 componentsJoinedByString:@"/"];
      v41 = MEMORY[0x277CCACA8];
      v42 = colorEntryName(v40, v20, [(NTKFaceColorPalette *)v59 isTritium]);
      v43 = [v41 stringWithFormat:@"%@%@", v21, v42];
      v26 = colorWithName(v43, v18, v19);

      [v39 removeLastObject];
      if (v26)
      {
        goto LABEL_15;
      }
    }

    v26 = 0;
LABEL_15:
  }

  v15 = v57;
LABEL_17:
  v17 = v56;
  if (!v26)
  {
    goto LABEL_18;
  }

LABEL_20:
  if ([v15 isEqualToString:kPrimaryColorSelectorName] && (CLKFloatEqualsFloat() & 1) == 0)
  {
    v47 = v15;
    v48 = [(NTKFaceColorPalette *)v59 _loadColorFromAssetCatalogForKey:@"from" namespace:v58 collectionName:v17 bundle:v18 colorFraction:0 ignoringOptionAndCollection:0 inspector:0.5];
    v49 = v17;
    v50 = v48;
    v51 = v49;
    v52 = [NTKFaceColorPalette _loadColorFromAssetCatalogForKey:v59 namespace:"_loadColorFromAssetCatalogForKey:namespace:collectionName:bundle:colorFraction:ignoringOptionAndCollection:inspector:" collectionName:@"to" bundle:v58 colorFraction:0.5 ignoringOptionAndCollection:? inspector:?];
    v53 = v52;
    v46 = 0;
    if (v50 && v52)
    {
      if (v26)
      {
        CLKCompressFraction();
      }

      v46 = NTKInterpolateBetweenColors();
    }

    v17 = v51;
    v15 = v47;
  }

  else
  {
    v46 = v26;
  }

  return v46;
}

- (id)entryNameForKey:(id)a3
{
  v3 = a3;
  if (([(__CFString *)v3 isEqualToString:kPrimaryColorSelectorName]& 1) != 0)
  {
    v4 = 0;
  }

  else if (([(__CFString *)v3 isEqualToString:kPrimaryShiftedColorSelectorName]& 1) != 0)
  {
    v4 = @"shifted";
  }

  else if (([(__CFString *)v3 isEqualToString:kSecondaryColorSelectorName]& 1) != 0)
  {
    v4 = @"secondary";
  }

  else if (([(__CFString *)v3 isEqualToString:kSecondaryShiftedColorSelectorName]& 1) != 0)
  {
    v4 = @"secondaryShifted";
  }

  else if (([(__CFString *)v3 isEqualToString:kSeasonalLightColorSelectorName]& 1) != 0)
  {
    v4 = @"seasonalLight";
  }

  else
  {
    if (![(__CFString *)v3 isEqualToString:kSeasonalDarkColorSelectorName])
    {
      goto LABEL_14;
    }

    v4 = @"seasonalDark";
  }

  v3 = v4;
LABEL_14:

  return v3;
}

- (id)_primaryShiftedColor
{
  v2 = [(NTKFaceColorPalette *)self primaryColor];
  v3 = [v2 ntk_colorByBoostingSaturation:0.2 lightness:0.5];

  return v3;
}

- (id)_secondaryColor
{
  v2 = [(NTKFaceColorPalette *)self primaryColor];
  v3 = NTKColorByPremultiplyingAlpha(v2, 0.18);

  return v3;
}

- (id)_secondaryShiftedColor
{
  v2 = [(NTKFaceColorPalette *)self primaryColor];
  v3 = NTKColorByPremultiplyingAlpha(v2, 0.15);

  return v3;
}

- (id)_seasonalLightColor
{
  v2 = [(NTKFaceColorPalette *)self primaryColor];
  v3 = [v2 ntk_colorWithSaturationDelta:-0.1 brightnessDelta:0.2];

  return v3;
}

- (id)_seasonalDarkColor
{
  v2 = [(NTKFaceColorPalette *)self primaryColor];
  v3 = [v2 ntk_colorWithSaturationDelta:0.1 brightnessDelta:-0.2];

  return v3;
}

+ (BOOL)resolveInstanceMethod:(SEL)a3
{
  v10.receiver = a1;
  v10.super_class = &OBJC_METACLASS___NTKFaceColorPalette;
  if (objc_msgSendSuper2(&v10, sel_resolveInstanceMethod_))
  {
    return 1;
  }

  v6 = NSStringFromSelector(a3);
  v7 = [v6 componentsSeparatedByString:@":"];
  v8 = [v7 count];

  if ([v6 hasPrefix:@"_"])
  {
    v5 = 0;
  }

  else
  {
    v5 = 0;
    if (([v6 hasPrefix:@"tritium_"] & 1) == 0 && v8 == 1)
    {
      v5 = class_addMethod(a1, a3, NTKFaceColorPalette_DefaultPropertAccessor, "@@:");
    }
  }

  return v5;
}

- (UIColor)swatch
{
  if ([(NTKFaceColorPalette *)self isCompositePalette]|| [(NTKFaceColorPalette *)self isUnityColor])
  {
    v3 = 0;
  }

  else if (![(NTKFaceColorPalette *)self isBlackColor]|| ([(NTKFaceColorPalette *)self valueForKey:@"softBlack"], (v3 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v3 = [(NTKFaceColorPalette *)self primaryColor];
  }

  return v3;
}

- (id)swatchImageForSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = MEMORY[0x277CCACA8];
  v7 = [(NTKFaceColorPalette *)self configuration];
  v8 = [v7 uniqueId];
  v19.width = width;
  v19.height = height;
  v9 = NSStringFromCGSize(v19);
  v10 = [v6 stringWithFormat:@"%@-%@", v8, v9];

  v11 = [(NSCache *)self->_swatchImageCache objectForKey:v10];
  if (!v11)
  {
    if ([(NTKFaceColorPalette *)self isRainbowColor])
    {
      v12 = @"Swatch-Multicolor-Pride";
      goto LABEL_6;
    }

    if ([(NTKFaceColorPalette *)self isMulticolor])
    {
      v12 = @"Swatch-Multicolor";
LABEL_6:
      NTKImageNamed(v12);
    }

    if ([(NTKFaceColorPalette *)self isUnityColor])
    {
      v11 = [(NTKFaceColorPalette *)self _unitySwatchImageForSize:width, height];
      if (!v11)
      {
        goto LABEL_7;
      }
    }

    else
    {
      if (![(NTKFaceColorPalette *)self isCompositePalette])
      {
        v11 = 0;
        goto LABEL_7;
      }

      v14 = [(NTKFaceColorPalette *)self paletteAtIndex:0];
      v15 = [v14 swatch];

      v16 = [(NTKFaceColorPalette *)self paletteAtIndex:1];
      v17 = [v16 swatch];

      v11 = NTKSwatchTwoColorImage(v15, v17, width, height);

      if (!v11)
      {
        goto LABEL_7;
      }
    }

    [(NSCache *)self->_swatchImageCache setObject:v11 forKey:v10];
  }

LABEL_7:

  return v11;
}

- (id)swatchPrimaryColor
{
  if ([(NTKFaceColorPalette *)self isRainbowColor]|| [(NTKFaceColorPalette *)self isMulticolor])
  {
    v3 = 0;
  }

  else
  {
    if ([(NTKFaceColorPalette *)self isUnityColor])
    {
      v5 = [(NTKFaceColorPalette *)self _unityMiddleColor];
    }

    else
    {
      if ([(NTKFaceColorPalette *)self isCompositePalette])
      {
        v6 = [(NTKFaceColorPalette *)self paletteAtIndex:0];
        [v6 swatch];
        objc_claimAutoreleasedReturnValue();

        v7 = [(NTKFaceColorPalette *)self paletteAtIndex:1];
        [v7 swatch];
        objc_claimAutoreleasedReturnValue();

        CLKUICompareColorsByLightness();
      }

      v5 = [(NTKFaceColorPalette *)self primaryColor];
    }

    v3 = v5;
  }

  return v3;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  faceSpecificNamespace = self->_faceSpecificNamespace;
  configuration = self->_configuration;
  v7 = [(NTKFaceColorPalette *)self isTritium];
  v8 = &stru_284110E98;
  if (v7)
  {
    v8 = @"(tritium)";
  }

  return [v3 stringWithFormat:@"%@ [domain:%@, configuration: %@] %@", v4, faceSpecificNamespace, configuration, v8];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v10 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    if ([v5 isEqual:objc_opt_class()])
    {
      v6 = [(NTKFaceColorPalette *)self faceSpecificNamespace];
      v7 = [(NTKFaceColorPalette *)v4 faceSpecificNamespace];
      if ([v6 isEqualToString:v7])
      {
        v8 = [(NTKFaceColorPalette *)self configuration];
        v9 = [(NTKFaceColorPalette *)v4 configuration];
        v10 = [v8 isEqual:v9];
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (id)_unitySwatchImageForSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(NTKFaceColorPalette *)self paletteAtIndex:0];
  v7 = [v6 primaryColor];

  v8 = [(NTKFaceColorPalette *)self _unityMiddleColor];
  v9 = [(NTKFaceColorPalette *)self paletteAtIndex:1];
  v10 = [v9 primaryColor];

  v11 = [(NTKFaceColorPalette *)self _unitySwatchImageForSize:v7 redColor:v8 blackColor:v10 greenColor:width, height];

  return v11;
}

- (id)_unitySwatchImageForSize:(CGSize)a3 redColor:(id)a4 blackColor:(id)a5 greenColor:(id)a6
{
  height = a3.height;
  width = a3.width;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if (width == *MEMORY[0x277CBF3A8] && height == *(MEMORY[0x277CBF3A8] + 8))
  {
    [NTKEditOption sizeForSwatchStyle:0];
    width = v14;
    height = v15;
  }

  v16 = [objc_alloc(MEMORY[0x277D75560]) initWithSize:{width, height}];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __103__NTKFaceColorPalette_NTKUnityColorUtilities___unitySwatchImageForSize_redColor_blackColor_greenColor___block_invoke;
  v22[3] = &unk_2787895D8;
  v26 = width;
  v27 = height;
  v23 = v10;
  v24 = v11;
  v25 = v12;
  v17 = v12;
  v18 = v11;
  v19 = v10;
  v20 = [v16 imageWithActions:v22];

  return v20;
}

void __103__NTKFaceColorPalette_NTKUnityColorUtilities___unitySwatchImageForSize_redColor_blackColor_greenColor___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 format];
  [v4 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = [v3 CGContext];
  CGContextTranslateCTM(v13, v10 * 0.5, v12 * 0.5);
  CGContextRotateCTM(v13, -0.785398163);
  CGContextTranslateCTM(v13, -(v10 * 0.5), -(v12 * 0.5));
  v20.origin.x = v6;
  v20.origin.y = v8;
  v20.size.width = v10;
  v20.size.height = v12;
  CGContextAddEllipseInRect(v13, v20);
  CGContextClip(v13);
  v14 = *(a1 + 56) / 2.52;
  [*(a1 + 32) setFill];
  v21.origin.x = 0.0;
  v21.origin.y = 0.0;
  v21.size.width = v10;
  v21.size.height = v14 * 0.76;
  CGContextFillRect(v13, v21);
  [*(a1 + 40) setFill];
  v22.origin.x = 0.0;
  v22.origin.y = v14 * 0.76 + 0.0;
  v22.size.width = v10;
  v22.size.height = v14;
  CGContextFillRect(v13, v22);
  [*(a1 + 48) setFill];
  v15 = 0;
  v17 = v10;

  v16 = v14 + v14 * 0.76 + 0.0;
  v18 = v14 * 0.76;
  CGContextFillRect(v13, *&v15);
}

- (NTKFaceColorPalette)tritiumPalette
{
  tritiumPalette = self->_tritiumPalette;
  if (!tritiumPalette)
  {
    v4 = [(NTKFaceColorPalette *)self copy];
    v5 = self->_tritiumPalette;
    self->_tritiumPalette = v4;

    tritiumPalette = self->_tritiumPalette;
    if (tritiumPalette)
    {
      if (!tritiumPalette->_tritium)
      {
        tritiumPalette->_tritium = 1;
        identifier = tritiumPalette->_identifier;
        tritiumPalette->_identifier = 0;

        tritiumPalette = self->_tritiumPalette;
      }
    }
  }

  return tritiumPalette;
}

- (void)valueForKey:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_debug_impl(&dword_22D9C5000, a2, OS_LOG_TYPE_DEBUG, "#palette %{public}@", &v2, 0xCu);
}

@end