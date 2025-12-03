@interface NTKFaceColorPalette
+ (BOOL)resolveInstanceMethod:(SEL)method;
+ (id)colorWithName:(id)name inDomain:(id)domain;
- (BOOL)hasPrimaryColorRange;
- (BOOL)isBlackColor;
- (BOOL)isCompositePalette;
- (BOOL)isEqual:(id)equal;
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
- (NTKFaceColorPalette)initWithDomainName:(id)name inBundle:(id)bundle;
- (NTKFaceColorPalette)initWithFaceClass:(Class)class;
- (NTKFaceColorPalette)tritiumPalette;
- (NTKPigmentEditOption)pigmentEditOption;
- (UIColor)swatch;
- (id)_loadColorFromAssetCatalogForKey:(id)key namespace:(id)namespace collectionName:(id)name bundle:(id)bundle colorFraction:(double)fraction ignoringOptionAndCollection:(BOOL)collection inspector:(id)inspector;
- (id)_notFoundColor;
- (id)_primaryShiftedColor;
- (id)_seasonalDarkColor;
- (id)_seasonalLightColor;
- (id)_secondaryColor;
- (id)_secondaryShiftedColor;
- (id)_unitySwatchImageForSize:(CGSize)size;
- (id)_unitySwatchImageForSize:(CGSize)size redColor:(id)color blackColor:(id)blackColor greenColor:(id)greenColor;
- (id)copyWithOption:(id)option;
- (id)copyWithZone:(_NSZone *)zone;
- (id)entryNameForKey:(id)key;
- (id)identifier;
- (id)multitoneColorNames;
- (id)paletteAtIndex:(unint64_t)index;
- (id)primaryColorWithFraction:(double)fraction;
- (id)swatchImageForSize:(CGSize)size;
- (id)swatchPrimaryColor;
- (id)tritiumPaletteWithProgress:(double)progress;
- (id)valueForKey:(id)key;
- (void)colorBundleContentChanged;
- (void)configurationDidChange:(id)change;
- (void)executeWithOption:(id)option block:(id)block;
- (void)resetColorCache;
- (void)setConfiguration:(id)configuration;
- (void)setPigmentEditOption:(id)option;
@end

@implementation NTKFaceColorPalette

- (BOOL)isWhite
{
  pigmentEditOption = [(NTKFaceColorPalette *)self pigmentEditOption];
  identifier = [pigmentEditOption identifier];
  v4 = [identifier isEqual:@"seasons.spring2015.white"];

  return v4;
}

- (BOOL)isZeus
{
  pigmentEditOption = [(NTKFaceColorPalette *)self pigmentEditOption];
  identifier = [pigmentEditOption identifier];
  v4 = [identifier isEqual:@"zeus.orange"];

  return v4;
}

- (BOOL)isVictory
{
  pigmentEditOption = [(NTKFaceColorPalette *)self pigmentEditOption];
  identifier = [pigmentEditOption identifier];
  v4 = [identifier isEqual:@"victory.volt"];

  return v4;
}

- (NTKFaceColorPalette)initWithFaceClass:(Class)class
{
  pigmentFaceDomain = [(objc_class *)class pigmentFaceDomain];
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:class];
  v7 = [(NTKFaceColorPalette *)self initWithDomainName:pigmentFaceDomain inBundle:v6];

  return v7;
}

- (NTKFaceColorPalette)initWithDomainName:(id)name inBundle:(id)bundle
{
  nameCopy = name;
  bundleCopy = bundle;
  v17.receiver = self;
  v17.super_class = NTKFaceColorPalette;
  v9 = [(NTKFaceColorPalette *)&v17 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_faceSpecificNamespace, name);
    objc_storeStrong(&v10->_domainBundle, bundle);
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

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v10 selector:sel_colorBundleContentChanged name:@"NTKColorBundleContentChangedNotificationName" object:0];
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
      bundlePath = [(NSBundle *)v4 bundlePath];
      bundlePath2 = [v5 bundlePath];
      v10 = [bundlePath isEqual:bundlePath2];

      if ((v10 & 1) == 0)
      {
        [(NSMutableArray *)self->_bundleList addObject:v4];
      }
    }

    v11 = +[NTKColorBundleLoader sharedInstance];
    loadColorBundles = [v11 loadColorBundles];

    if (loadColorBundles)
    {
      [(NSMutableArray *)self->_bundleList addObjectsFromArray:loadColorBundles];
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  configuration = [(NTKFaceColorPalette *)self configuration];
  v6 = [configuration copy];
  [v4 setConfiguration:v6];

  objc_storeStrong(v4 + 7, self->_domainBundle);
  objc_storeStrong(v4 + 4, self->_faceSpecificNamespace);
  colorCache = [(NTKFaceColorPalette *)self colorCache];
  [v4 setColorCache:colorCache];

  swatchImageCache = [(NTKFaceColorPalette *)self swatchImageCache];
  [v4 setSwatchImageCache:swatchImageCache];

  configuration2 = [(NTKFaceColorPalette *)self configuration];
  v10 = [configuration2 copy];
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

- (id)copyWithOption:(id)option
{
  optionCopy = option;
  v5 = [(NTKFaceColorPalette *)self copy];
  [v5 setPigmentEditOption:optionCopy];

  return v5;
}

- (id)tritiumPaletteWithProgress:(double)progress
{
  interpolatedTritiumPalette = self->_interpolatedTritiumPalette;
  if (!interpolatedTritiumPalette)
  {
    v6 = [NTKInterpolatedColorPalette alloc];
    tritiumPalette = [(NTKFaceColorPalette *)self tritiumPalette];
    v8 = [(NTKInterpolatedColorPalette *)v6 initWithFromPalette:self toPalette:tritiumPalette];
    v9 = self->_interpolatedTritiumPalette;
    self->_interpolatedTritiumPalette = v8;

    interpolatedTritiumPalette = self->_interpolatedTritiumPalette;
  }

  fromPalette = [(NTKInterpolatedColorPalette *)interpolatedTritiumPalette fromPalette];
  identifier = [fromPalette identifier];
  identifier2 = [(NTKFaceColorPalette *)self identifier];
  v13 = [identifier isEqualToString:identifier2];

  if ((v13 & 1) == 0)
  {
    [(NTKInterpolatedColorPalette *)self->_interpolatedTritiumPalette setFromPalette:self];
    tritiumPalette2 = [(NTKFaceColorPalette *)self tritiumPalette];
    [(NTKInterpolatedColorPalette *)self->_interpolatedTritiumPalette setToPalette:tritiumPalette2];
  }

  [(NTKInterpolatedColorPalette *)self->_interpolatedTritiumPalette setTransitionFraction:progress];
  v15 = self->_interpolatedTritiumPalette;

  return v15;
}

- (void)executeWithOption:(id)option block:(id)block
{
  if (block)
  {
    blockCopy = block;
    optionCopy = option;
    configuration = [(NTKFaceColorPalette *)self configuration];
    v9 = [configuration copy];

    [(NTKFaceColorPalette *)self setPigmentEditOption:optionCopy];
    blockCopy[2](blockCopy, self);

    [(NTKFaceColorPalette *)self setConfiguration:v9];
  }
}

- (void)configurationDidChange:(id)change
{
  changeCopy = change;
  identifier = self->_identifier;
  self->_identifier = 0;

  tritiumPalette = self->_tritiumPalette;
  self->_tritiumPalette = 0;

  interpolatedTritiumPalette = self->_interpolatedTritiumPalette;
  if (interpolatedTritiumPalette)
  {
    fromPalette = [(NTKInterpolatedColorPalette *)interpolatedTritiumPalette fromPalette];
    [fromPalette configurationDidChange:changeCopy];

    toPalette = [(NTKInterpolatedColorPalette *)self->_interpolatedTritiumPalette toPalette];
    [toPalette configurationDidChange:changeCopy];
  }
}

+ (id)colorWithName:(id)name inDomain:(id)domain
{
  name = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/%@", domain, name];
  v5 = MEMORY[0x277D75348];
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = [v5 colorNamed:name inBundle:v6 compatibleWithTraitCollection:0];

  return v7;
}

- (void)setPigmentEditOption:(id)option
{
  optionCopy = option;
  configuration = [(NTKFaceColorPalette *)self configuration];

  if (configuration)
  {
    configuration2 = [(NTKFaceColorPalette *)self configuration];
    [(NTKFaceColorPaletteConfiguration *)configuration2 setPigmentEditOption:optionCopy];
  }

  else
  {
    configuration2 = [[NTKFaceColorPaletteConfiguration alloc] initWithPigmentEditOption:optionCopy];

    [(NTKFaceColorPalette *)self setConfiguration:configuration2];
  }
}

- (NTKPigmentEditOption)pigmentEditOption
{
  configuration = [(NTKFaceColorPalette *)self configuration];
  pigmentEditOption = [configuration pigmentEditOption];

  return pigmentEditOption;
}

- (void)setConfiguration:(id)configuration
{
  configurationCopy = configuration;
  objc_storeStrong(&self->_configuration, configuration);
  [(NTKFaceColorPaletteConfiguration *)self->_configuration setDelegate:self];
  interpolatedTritiumPalette = self->_interpolatedTritiumPalette;
  if (interpolatedTritiumPalette)
  {
    fromPalette = [(NTKInterpolatedColorPalette *)interpolatedTritiumPalette fromPalette];
    objc_storeStrong(fromPalette + 2, configuration);

    toPalette = [(NTKInterpolatedColorPalette *)self->_interpolatedTritiumPalette toPalette];
    objc_storeStrong(toPalette + 2, configuration);
  }

  [(NTKFaceColorPalette *)self configurationDidChange:configurationCopy];
}

- (void)resetColorCache
{
  [(NSCache *)self->_colorCache removeAllObjects];
  swatchImageCache = self->_swatchImageCache;

  [(NSCache *)swatchImageCache removeAllObjects];
}

- (BOOL)isEvergreenCollection
{
  configuration = [(NTKFaceColorPalette *)self configuration];
  collectionName = [configuration collectionName];
  v4 = [collectionName hasPrefix:@"evergreen"];

  return v4;
}

- (BOOL)isSeasonalCollection
{
  configuration = [(NTKFaceColorPalette *)self configuration];
  collectionName = [configuration collectionName];
  v4 = [collectionName hasPrefix:@"seasons"];

  return v4;
}

- (BOOL)isMulticolor
{
  pigmentEditOption = [(NTKFaceColorPalette *)self pigmentEditOption];
  identifier = [pigmentEditOption identifier];
  v4 = [identifier isEqual:@"special.multicolor"];

  return v4;
}

- (BOOL)isRainbowColor
{
  pigmentEditOption = [(NTKFaceColorPalette *)self pigmentEditOption];
  identifier = [pigmentEditOption identifier];
  v4 = [identifier isEqual:@"special.rainbow"];

  return v4;
}

- (BOOL)isWhiteColor
{
  v6 = 0.0;
  v7 = 0.0;
  v5 = 0.0;
  primaryColor = [(NTKFaceColorPalette *)self primaryColor];
  [primaryColor getRed:&v7 green:&v6 blue:&v5 alpha:0];

  return v7 == 1.0 && v6 == 1.0 && v5 == 1.0;
}

- (BOOL)isBlackColor
{
  if ([(NTKFaceColorPalette *)self isEvergreenCollection])
  {
    pigmentEditOption = [(NTKFaceColorPalette *)self pigmentEditOption];
    identifier = [pigmentEditOption identifier];
    v5 = [identifier isEqual:@"evergreen.black"];
  }

  else
  {
    pigmentEditOption = [(NTKFaceColorPalette *)self primaryColor];
    v5 = CLKIsBlackColor();
  }

  return v5;
}

- (BOOL)isUnityColor
{
  if ([(NTKFaceColorPalette *)self isCompositePalette])
  {
    configuration3 = [(NTKFaceColorPalette *)self paletteAtIndex:0];
    configuration = [configuration3 configuration];
    collectionName = [configuration collectionName];
    if ([collectionName isEqualToString:@"unity"])
    {
      v6 = [(NTKFaceColorPalette *)self paletteAtIndex:1];
      configuration2 = [v6 configuration];
      collectionName2 = [configuration2 collectionName];
      v9 = [collectionName2 isEqualToString:@"unity"];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    configuration3 = [(NTKFaceColorPalette *)self configuration];
    configuration = [configuration3 collectionName];
    v9 = [configuration isEqualToString:@"unity"];
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

- (id)primaryColorWithFraction:(double)fraction
{
  configuration = [(NTKFaceColorPalette *)self configuration];
  [configuration colorFraction];
  v7 = v6;

  configuration2 = [(NTKFaceColorPalette *)self configuration];
  [configuration2 setColorFraction:fraction];

  v9 = [(NTKFaceColorPalette *)self valueForKey:kPrimaryColorSelectorName];
  configuration3 = [(NTKFaceColorPalette *)self configuration];
  [configuration3 setColorFraction:v7];

  return v9;
}

- (BOOL)isCompositePalette
{
  multitoneColorNames = [(NTKFaceColorPalette *)self multitoneColorNames];
  v3 = [multitoneColorNames count] > 1;

  return v3;
}

- (id)paletteAtIndex:(unint64_t)index
{
  if ([(NTKFaceColorPalette *)self isCompositePalette])
  {
    multitoneColorNames = [(NTKFaceColorPalette *)self multitoneColorNames];
    if ([multitoneColorNames count] > index)
    {
      configuration = [(NTKFaceColorPalette *)self configuration];
      colorOption = [configuration colorOption];
      configuration2 = [(NTKFaceColorPalette *)self configuration];
      collectionName = [configuration2 collectionName];
      v10 = [NTKPigmentEditOption multitonePigmentAtIndex:index forColorName:colorOption groupName:collectionName];

      selfCopy = [(NTKFaceColorPalette *)self copyWithOption:v10];
      [(NTKFaceColorPalette *)selfCopy setColorCache:0];

      goto LABEL_8;
    }
  }

  else if (!index)
  {
    selfCopy = self;
    goto LABEL_8;
  }

  selfCopy = 0;
LABEL_8:

  return selfCopy;
}

- (id)multitoneColorNames
{
  configuration = [(NTKFaceColorPalette *)self configuration];
  colorOption = [configuration colorOption];
  v4 = [NTKPigmentEditOption multitoneColorNames:colorOption];

  return v4;
}

- (id)identifier
{
  identifier = self->_identifier;
  if (!identifier)
  {
    v4 = MEMORY[0x277CCACA8];
    uniqueId = [(NTKFaceColorPaletteConfiguration *)self->_configuration uniqueId];
    v6 = [v4 stringWithFormat:@"%@-%lu", uniqueId, -[NTKFaceColorPalette isTritium](self, "isTritium")];
    v7 = self->_identifier;
    self->_identifier = v6;

    identifier = self->_identifier;
  }

  return identifier;
}

- (id)valueForKey:(id)key
{
  keyCopy = key;
  if ([keyCopy hasPrefix:@"tritium_"])
  {
    _notFoundColor2 = 0;
    goto LABEL_17;
  }

  v6 = MEMORY[0x277CCACA8];
  identifier = [(NTKFaceColorPalette *)self identifier];
  keyCopy = [v6 stringWithFormat:@"%@-%@", identifier, keyCopy];

  v9 = [(NSCache *)self->_colorCache objectForKey:keyCopy];
  if (v9)
  {
    v10 = v9;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      _notFoundColor = [(NTKFaceColorPalette *)self _notFoundColor];
    }

    else
    {
      _notFoundColor = v10;
      v10 = _notFoundColor;
    }

    _notFoundColor2 = _notFoundColor;
    goto LABEL_16;
  }

  v12 = _NTKLoggingObjectForDomain(46, "NTKLoggingDomainPigment");
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG);

  if (v13)
  {
    v14 = objc_alloc_init(NTKFaceColorPaletteInspector);
    faceSpecificNamespace = [(NTKFaceColorPalette *)self faceSpecificNamespace];
    [(NTKFaceColorPaletteInspector *)v14 setDomain:faceSpecificNamespace];

    [(NTKFaceColorPaletteInspector *)v14 setPropertyName:keyCopy];
    configuration = [(NTKFaceColorPalette *)self configuration];
    colorOption = [configuration colorOption];
    [(NTKFaceColorPaletteInspector *)v14 setPigmentName:colorOption];

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
  v18 = keyCopy;
  v34 = v18;
  v19 = v14;
  v35 = v19;
  v20 = _Block_copy(aBlock);
  formattedCollectionName = [(NTKFaceColorPaletteConfiguration *)self->_configuration formattedCollectionName];
  v22 = v20[2](v20, formattedCollectionName, 0);

  if (!v22)
  {
    v25 = NTKFaceColorPalette_PerformFallbackPropertyAccessor(self, v18, v19);
    if (v25)
    {
      v22 = v25;
    }

    else if (![v18 isEqualToString:kPrimaryColorSelectorName] || (-[NTKFaceColorPaletteConfiguration colorOption](self->_configuration, "colorOption"), v32 = objc_claimAutoreleasedReturnValue(), NTKFaceColorPalette_PerformFallbackPropertyAccessor(self, v32, v19), v22 = objc_claimAutoreleasedReturnValue(), v32, !v22))
    {
      formattedCollectionName2 = [(NTKFaceColorPaletteConfiguration *)self->_configuration formattedCollectionName];
      v22 = v20[2](v20, formattedCollectionName2, 1);

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
          null = [MEMORY[0x277CBEB68] null];
          [(NSCache *)colorCache setObject:null forKey:keyCopy];

          _notFoundColor2 = [(NTKFaceColorPalette *)self _notFoundColor];
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

  [(NSCache *)self->_colorCache setObject:v22 forKey:keyCopy];
  v10 = v22;
  _notFoundColor2 = v10;
LABEL_15:

LABEL_16:
LABEL_17:

  return _notFoundColor2;
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

- (id)_loadColorFromAssetCatalogForKey:(id)key namespace:(id)namespace collectionName:(id)name bundle:(id)bundle colorFraction:(double)fraction ignoringOptionAndCollection:(BOOL)collection inspector:(id)inspector
{
  collectionCopy = collection;
  keyCopy = key;
  namespaceCopy = namespace;
  nameCopy = name;
  bundleCopy = bundle;
  inspectorCopy = inspector;
  selfCopy = self;
  v20 = [(NTKFaceColorPalette *)self entryNameForKey:keyCopy];
  v58 = namespaceCopy;
  if (namespaceCopy)
  {
    namespaceCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/", namespaceCopy];
    if (collectionCopy)
    {
      v22 = nameCopy;
      v23 = MEMORY[0x277CCACA8];
      colorOption = colorEntryName(0, v20, [(NTKFaceColorPalette *)self isTritium]);
      v25 = [v23 stringWithFormat:@"%@%@", namespaceCopy, colorOption];
      v26 = colorWithName(v25, bundleCopy, inspectorCopy);
LABEL_19:

      nameCopy = v22;
      goto LABEL_20;
    }
  }

  else
  {
    namespaceCopy = &stru_284110E98;
    if (collectionCopy)
    {
      v26 = 0;
      goto LABEL_20;
    }
  }

  if (!nameCopy)
  {
LABEL_18:
    v22 = nameCopy;
    v44 = MEMORY[0x277CCACA8];
    colorOption = [(NTKFaceColorPaletteConfiguration *)selfCopy->_configuration colorOption];
    v25 = colorEntryName(colorOption, v20, [(NTKFaceColorPalette *)selfCopy isTritium]);
    v45 = [v44 stringWithFormat:@"%@%@", namespaceCopy, v25];
    v26 = colorWithName(v45, bundleCopy, inspectorCopy);

    goto LABEL_19;
  }

  v57 = keyCopy;
  v27 = MEMORY[0x277CCACA8];
  [(NTKFaceColorPaletteConfiguration *)self->_configuration colorOption];
  v28 = v20;
  v29 = namespaceCopy;
  v30 = inspectorCopy;
  v32 = v31 = nameCopy;
  v33 = colorEntryName(v32, v28, [(NTKFaceColorPalette *)self isTritium]);
  v55 = v31;
  v56 = v31;
  inspectorCopy = v30;
  namespaceCopy = v29;
  v34 = [v27 stringWithFormat:@"%@%@/%@", v29, v55, v33];
  v26 = colorWithName(v34, bundleCopy, inspectorCopy);

  v20 = v28;
  if (!v26)
  {
    keyCopy = v57;
    if (!v20)
    {
      goto LABEL_17;
    }

    v35 = MEMORY[0x277CCACA8];
    nameCopy = v56;
    v36 = colorEntryName(v56, v20, [(NTKFaceColorPalette *)selfCopy isTritium]);
    v37 = [v35 stringWithFormat:@"%@%@", namespaceCopy, v36];
    v26 = colorWithName(v37, bundleCopy, inspectorCopy);

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
      v42 = colorEntryName(v40, v20, [(NTKFaceColorPalette *)selfCopy isTritium]);
      v43 = [v41 stringWithFormat:@"%@%@", namespaceCopy, v42];
      v26 = colorWithName(v43, bundleCopy, inspectorCopy);

      [v39 removeLastObject];
      if (v26)
      {
        goto LABEL_15;
      }
    }

    v26 = 0;
LABEL_15:
  }

  keyCopy = v57;
LABEL_17:
  nameCopy = v56;
  if (!v26)
  {
    goto LABEL_18;
  }

LABEL_20:
  if ([keyCopy isEqualToString:kPrimaryColorSelectorName] && (CLKFloatEqualsFloat() & 1) == 0)
  {
    v47 = keyCopy;
    v48 = [(NTKFaceColorPalette *)selfCopy _loadColorFromAssetCatalogForKey:@"from" namespace:v58 collectionName:nameCopy bundle:bundleCopy colorFraction:0 ignoringOptionAndCollection:0 inspector:0.5];
    v49 = nameCopy;
    v50 = v48;
    v51 = v49;
    v52 = [NTKFaceColorPalette _loadColorFromAssetCatalogForKey:selfCopy namespace:"_loadColorFromAssetCatalogForKey:namespace:collectionName:bundle:colorFraction:ignoringOptionAndCollection:inspector:" collectionName:@"to" bundle:v58 colorFraction:0.5 ignoringOptionAndCollection:? inspector:?];
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

    nameCopy = v51;
    keyCopy = v47;
  }

  else
  {
    v46 = v26;
  }

  return v46;
}

- (id)entryNameForKey:(id)key
{
  keyCopy = key;
  if (([(__CFString *)keyCopy isEqualToString:kPrimaryColorSelectorName]& 1) != 0)
  {
    v4 = 0;
  }

  else if (([(__CFString *)keyCopy isEqualToString:kPrimaryShiftedColorSelectorName]& 1) != 0)
  {
    v4 = @"shifted";
  }

  else if (([(__CFString *)keyCopy isEqualToString:kSecondaryColorSelectorName]& 1) != 0)
  {
    v4 = @"secondary";
  }

  else if (([(__CFString *)keyCopy isEqualToString:kSecondaryShiftedColorSelectorName]& 1) != 0)
  {
    v4 = @"secondaryShifted";
  }

  else if (([(__CFString *)keyCopy isEqualToString:kSeasonalLightColorSelectorName]& 1) != 0)
  {
    v4 = @"seasonalLight";
  }

  else
  {
    if (![(__CFString *)keyCopy isEqualToString:kSeasonalDarkColorSelectorName])
    {
      goto LABEL_14;
    }

    v4 = @"seasonalDark";
  }

  keyCopy = v4;
LABEL_14:

  return keyCopy;
}

- (id)_primaryShiftedColor
{
  primaryColor = [(NTKFaceColorPalette *)self primaryColor];
  v3 = [primaryColor ntk_colorByBoostingSaturation:0.2 lightness:0.5];

  return v3;
}

- (id)_secondaryColor
{
  primaryColor = [(NTKFaceColorPalette *)self primaryColor];
  v3 = NTKColorByPremultiplyingAlpha(primaryColor, 0.18);

  return v3;
}

- (id)_secondaryShiftedColor
{
  primaryColor = [(NTKFaceColorPalette *)self primaryColor];
  v3 = NTKColorByPremultiplyingAlpha(primaryColor, 0.15);

  return v3;
}

- (id)_seasonalLightColor
{
  primaryColor = [(NTKFaceColorPalette *)self primaryColor];
  v3 = [primaryColor ntk_colorWithSaturationDelta:-0.1 brightnessDelta:0.2];

  return v3;
}

- (id)_seasonalDarkColor
{
  primaryColor = [(NTKFaceColorPalette *)self primaryColor];
  v3 = [primaryColor ntk_colorWithSaturationDelta:0.1 brightnessDelta:-0.2];

  return v3;
}

+ (BOOL)resolveInstanceMethod:(SEL)method
{
  v10.receiver = self;
  v10.super_class = &OBJC_METACLASS___NTKFaceColorPalette;
  if (objc_msgSendSuper2(&v10, sel_resolveInstanceMethod_))
  {
    return 1;
  }

  v6 = NSStringFromSelector(method);
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
      v5 = class_addMethod(self, method, NTKFaceColorPalette_DefaultPropertAccessor, "@@:");
    }
  }

  return v5;
}

- (UIColor)swatch
{
  if ([(NTKFaceColorPalette *)self isCompositePalette]|| [(NTKFaceColorPalette *)self isUnityColor])
  {
    primaryColor = 0;
  }

  else if (![(NTKFaceColorPalette *)self isBlackColor]|| ([(NTKFaceColorPalette *)self valueForKey:@"softBlack"], (primaryColor = objc_claimAutoreleasedReturnValue()) == 0))
  {
    primaryColor = [(NTKFaceColorPalette *)self primaryColor];
  }

  return primaryColor;
}

- (id)swatchImageForSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v6 = MEMORY[0x277CCACA8];
  configuration = [(NTKFaceColorPalette *)self configuration];
  uniqueId = [configuration uniqueId];
  v19.width = width;
  v19.height = height;
  v9 = NSStringFromCGSize(v19);
  v10 = [v6 stringWithFormat:@"%@-%@", uniqueId, v9];

  height = [(NSCache *)self->_swatchImageCache objectForKey:v10];
  if (!height)
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
      height = [(NTKFaceColorPalette *)self _unitySwatchImageForSize:width, height];
      if (!height)
      {
        goto LABEL_7;
      }
    }

    else
    {
      if (![(NTKFaceColorPalette *)self isCompositePalette])
      {
        height = 0;
        goto LABEL_7;
      }

      v14 = [(NTKFaceColorPalette *)self paletteAtIndex:0];
      swatch = [v14 swatch];

      v16 = [(NTKFaceColorPalette *)self paletteAtIndex:1];
      swatch2 = [v16 swatch];

      height = NTKSwatchTwoColorImage(swatch, swatch2, width, height);

      if (!height)
      {
        goto LABEL_7;
      }
    }

    [(NSCache *)self->_swatchImageCache setObject:height forKey:v10];
  }

LABEL_7:

  return height;
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
      _unityMiddleColor = [(NTKFaceColorPalette *)self _unityMiddleColor];
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

      _unityMiddleColor = [(NTKFaceColorPalette *)self primaryColor];
    }

    v3 = _unityMiddleColor;
  }

  return v3;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  faceSpecificNamespace = self->_faceSpecificNamespace;
  configuration = self->_configuration;
  isTritium = [(NTKFaceColorPalette *)self isTritium];
  v8 = &stru_284110E98;
  if (isTritium)
  {
    v8 = @"(tritium)";
  }

  return [v3 stringWithFormat:@"%@ [domain:%@, configuration: %@] %@", v4, faceSpecificNamespace, configuration, v8];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v10 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    if ([v5 isEqual:objc_opt_class()])
    {
      faceSpecificNamespace = [(NTKFaceColorPalette *)self faceSpecificNamespace];
      faceSpecificNamespace2 = [(NTKFaceColorPalette *)equalCopy faceSpecificNamespace];
      if ([faceSpecificNamespace isEqualToString:faceSpecificNamespace2])
      {
        configuration = [(NTKFaceColorPalette *)self configuration];
        configuration2 = [(NTKFaceColorPalette *)equalCopy configuration];
        v10 = [configuration isEqual:configuration2];
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

- (id)_unitySwatchImageForSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v6 = [(NTKFaceColorPalette *)self paletteAtIndex:0];
  primaryColor = [v6 primaryColor];

  _unityMiddleColor = [(NTKFaceColorPalette *)self _unityMiddleColor];
  v9 = [(NTKFaceColorPalette *)self paletteAtIndex:1];
  primaryColor2 = [v9 primaryColor];

  height = [(NTKFaceColorPalette *)self _unitySwatchImageForSize:primaryColor redColor:_unityMiddleColor blackColor:primaryColor2 greenColor:width, height];

  return height;
}

- (id)_unitySwatchImageForSize:(CGSize)size redColor:(id)color blackColor:(id)blackColor greenColor:(id)greenColor
{
  height = size.height;
  width = size.width;
  colorCopy = color;
  blackColorCopy = blackColor;
  greenColorCopy = greenColor;
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
  v23 = colorCopy;
  v24 = blackColorCopy;
  v25 = greenColorCopy;
  v17 = greenColorCopy;
  v18 = blackColorCopy;
  v19 = colorCopy;
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