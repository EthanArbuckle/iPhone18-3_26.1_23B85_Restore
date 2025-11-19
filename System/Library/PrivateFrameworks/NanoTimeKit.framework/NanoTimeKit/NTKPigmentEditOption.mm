@interface NTKPigmentEditOption
+ (id)fullnameWithCollectionName:(id)a3 optionName:(id)a4;
+ (id)multitoneColorNames:(id)a3;
+ (id)multitonePigmentAtIndex:(unint64_t)a3 forColorName:(id)a4 groupName:(id)a5;
+ (id)pigmentNamed:(id)a3;
+ (void)effectiveNamesFromName:(id)a3 effectiveCollectionName:(id *)a4 effectiveOptionName:(id *)a5;
+ (void)parseFullname:(id)a3 collectionName:(id *)a4 optionName:(id *)a5 fraction:(double *)a6;
+ (void)parserIdentifier:(id)a3 collectionName:(id *)a4 optionName:(id *)a5 colorFraction:(double *)a6 separator:(id)a7;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualIgnoringFraction:(id)a3;
- (BOOL)isEquivalentToOption:(id)a3;
- (BOOL)isMultiColor;
- (BOOL)isMultitoneOption;
- (BOOL)isRainbowColor;
- (BOOL)isVisible;
- (BOOL)isWhiteColor;
- (NSBundle)sourceBundle;
- (NTKPigmentEditOption)initWithCoder:(id)a3;
- (NTKPigmentEditOption)initWithFullname:(id)a3 fraction:(double)a4;
- (NTKPigmentEditOption)initWithJSONObjectRepresentation:(id)a3 forDevice:(id)a4;
- (NTKPigmentEditOption)initWithOptionName:(id)a3 collectionName:(id)a4 colorFraction:(double)a5;
- (NTKPigmentEditOption)initWithProtoBuffer:(id)a3;
- (id)JSONObjectRepresentationForFace:(id)a3;
- (id)_buildFullname;
- (id)_resolveBundleWithBundlePrincipalClassName:(id)a3;
- (id)copyWithCollectionOverride:(id)a3;
- (id)copyWithColorFraction:(double)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)fullnameIncludingFraction;
- (id)json;
- (id)legacyJSONRepresentationForFace:(id)a3;
- (id)localizationTableNames;
- (id)localizedCollectionName;
- (id)localizedName;
- (id)localizedNameForKey:(id)a3;
- (id)localizedNameForKey:(id)a3 fromTable:(id)a4 separatorString:(id)a5;
- (id)localizedNameForKey:(id)a3 table:(id)a4;
- (id)multitoneNamesWithoutCollection;
- (id)protoBuffer;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)extractEffectiveCollectionName:(id *)a3 effectiveOptionName:(id *)a4;
- (void)loadEffectiveNames;
@end

@implementation NTKPigmentEditOption

+ (id)pigmentNamed:(id)a3
{
  v3 = a3;
  v4 = [[NTKPigmentEditOption alloc] initWithFullname:v3];

  return v4;
}

- (NTKPigmentEditOption)initWithFullname:(id)a3 fraction:(double)a4
{
  v12 = a4;
  v5 = a3;
  v10 = 0;
  v11 = 0;
  [objc_opt_class() parseFullname:v5 collectionName:&v11 optionName:&v10 fraction:&v12];

  v6 = v11;
  v7 = v10;
  v8 = [(NTKPigmentEditOption *)self initWithOptionName:v7 collectionName:v6 colorFraction:v12];

  return v8;
}

- (NTKPigmentEditOption)initWithOptionName:(id)a3 collectionName:(id)a4 colorFraction:(double)a5
{
  v9 = a3;
  v10 = a4;
  v11 = v10;
  v12 = 0;
  if (v9 && v10)
  {
    v13 = [MEMORY[0x277CBBB68] sharedRenderingContext];
    v14 = [v13 device];

    v20.receiver = self;
    v20.super_class = NTKPigmentEditOption;
    v15 = [(NTKEditOption *)&v20 initWithDevice:v14];
    v16 = v15;
    if (v15)
    {
      objc_storeStrong(&v15->_optionName, a3);
      objc_storeStrong(&v16->_collectionName, a4);
      v16->_colorFraction = a5;
      v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      mainBundle = v16->_mainBundle;
      v16->_mainBundle = v17;

      [(NTKPigmentEditOption *)v16 loadEffectiveNames];
      v16->_lock._os_unfair_lock_opaque = 0;
    }

    self = v16;

    v12 = self;
  }

  return v12;
}

- (NTKPigmentEditOption)initWithJSONObjectRepresentation:(id)a3 forDevice:(id)a4
{
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"NTKPigmentEditOption json value must be a string - invalid value: %@", v5}];
  }

  v12 = 0.5;
  v10 = 0;
  v11 = 0;
  [objc_opt_class() parseFullname:v5 collectionName:&v11 optionName:&v10 fraction:&v12];
  v6 = v11;
  v7 = v10;
  v8 = [(NTKPigmentEditOption *)self initWithOptionName:v7 collectionName:v6 colorFraction:v12];

  return v8;
}

- (BOOL)isVisible
{
  v3 = +[NTKPigmentEditOptionStore sharedInstance];
  LOBYTE(self) = [v3 isOptionVisible:self];

  return self;
}

- (BOOL)isRainbowColor
{
  v2 = [(NTKPigmentEditOption *)self fullname];
  v3 = [v2 isEqualToString:@"special.rainbow"];

  return v3;
}

- (BOOL)isMultiColor
{
  v2 = [(NTKPigmentEditOption *)self fullname];
  v3 = [v2 isEqualToString:@"special.multicolor"];

  return v3;
}

- (BOOL)isWhiteColor
{
  v2 = [(NTKPigmentEditOption *)self fullname];
  v3 = [v2 isEqualToString:@"seasons.spring2015.white"];

  return v3;
}

- (id)fullnameIncludingFraction
{
  if (vabdd_f64(0.5, self->_colorFraction) >= 0.00000011920929)
  {
    v4 = MEMORY[0x277CCACA8];
    v5 = [(NTKPigmentEditOption *)self fullname];
    v3 = [v4 stringWithFormat:@"%@%@%0.2f", v5, @":", *&self->_colorFraction];
  }

  else
  {
    v3 = [(NTKPigmentEditOption *)self fullname];
  }

  return v3;
}

- (id)_buildFullname
{
  if ([(NTKPigmentEditOption *)self isMultitoneOption])
  {
    v3 = [(NTKPigmentEditOption *)self collectionName];
    v4 = objc_opt_class();
    v5 = [(NTKPigmentEditOption *)self optionName];
    v6 = [v4 multitoneColorNames:v5];

    v7 = objc_alloc_init(MEMORY[0x277CCAB68]);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __38__NTKPigmentEditOption__buildFullname__block_invoke;
    v15[3] = &unk_27877DEA8;
    v8 = v7;
    v16 = v8;
    v17 = v3;
    v9 = v3;
    [v6 enumerateObjectsUsingBlock:v15];
    v10 = v17;
    v11 = v8;
  }

  else
  {
    v12 = [(NTKPigmentEditOption *)self effectiveCollectionName];
    v13 = [(NTKPigmentEditOption *)self effectiveOptionName];
    v11 = [NTKPigmentEditOption fullnameWithCollectionName:v12 optionName:v13];
  }

  return v11;
}

void __38__NTKPigmentEditOption__buildFullname__block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  if ([*(a1 + 32) length])
  {
    [*(a1 + 32) appendFormat:@" %@ ", @"&"];
  }

  v3 = [v6 containsString:@"."];
  v4 = *(a1 + 32);
  if (v3)
  {
    [*(a1 + 32) appendString:v6];
  }

  else
  {
    v5 = [NTKPigmentEditOption fullnameWithCollectionName:*(a1 + 40) optionName:v6];
    [v4 appendString:v5];
  }
}

+ (id)multitonePigmentAtIndex:(unint64_t)a3 forColorName:(id)a4 groupName:(id)a5
{
  v7 = a5;
  v8 = [NTKPigmentEditOption multitoneColorNames:a4];
  if ([v8 count] < 2 || objc_msgSend(v8, "count") <= a3)
  {
    v13 = 0;
  }

  else
  {
    v9 = [v8 objectAtIndexedSubscript:a3];
    v16 = v7;
    v17 = 0;
    v15 = 0;
    v10 = v7;
    [NTKPigmentEditOption parseFullname:v9 collectionName:&v16 optionName:&v15 fraction:&v17];
    v11 = v16;

    v12 = v15;
    v13 = [[NTKPigmentEditOption alloc] initWithOptionName:v12 collectionName:v11];
  }

  return v13;
}

+ (void)parseFullname:(id)a3 collectionName:(id *)a4 optionName:(id *)a5 fraction:(double *)a6
{
  v9 = a3;
  if (a6)
  {
    *a6 = 0.5;
  }

  v10 = v9;
  v11 = v10;
  if ([v10 containsString:@":"])
  {
    v12 = [v10 componentsSeparatedByString:@":"];
    v13 = [v12 mutableCopy];

    v14 = [v13 lastObject];
    v15 = objc_alloc_init(MEMORY[0x277CCABB8]);
    v16 = [objc_alloc(MEMORY[0x277CBEAF8]) initWithLocaleIdentifier:@"en_US"];
    [v15 setLocale:v16];

    v17 = [v15 numberFromString:v14];
    v11 = v10;
    if (v17)
    {
      v11 = [v13 firstObject];

      if (a6)
      {
        [v17 floatValue];
        *a6 = v18;
      }
    }
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __73__NTKPigmentEditOption_parseFullname_collectionName_optionName_fraction___block_invoke;
  aBlock[3] = &unk_278786740;
  v19 = v11;
  v23 = v19;
  v20 = _Block_copy(aBlock);
  if ([v19 containsString:@":"])
  {
    v20[2](v20, @":", a4, a5);
  }

  else if ([v19 containsString:@"."])
  {
    v20[2](v20, @".", a4, a5);
  }

  else if (a5)
  {
    v21 = v19;
    *a5 = v19;
  }
}

void __73__NTKPigmentEditOption_parseFullname_collectionName_optionName_fraction___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v9 = a2;
  v7 = [*(a1 + 32) componentsSeparatedByString:?];
  v8 = [v7 mutableCopy];

  if (a4)
  {
    *a4 = [v8 lastObject];
  }

  if (a3)
  {
    [v8 removeLastObject];
    if ([v8 count])
    {
      *a3 = [v8 componentsJoinedByString:v9];
    }
  }
}

- (void)loadEffectiveNames
{
  v11 = 0;
  v12 = 0;
  [(NTKPigmentEditOption *)self extractEffectiveCollectionName:&v12 effectiveOptionName:&v11];
  v3 = v12;
  v4 = v11;
  effectiveOptionName = self->_effectiveOptionName;
  self->_effectiveOptionName = v4;
  v6 = v4;

  effectiveCollectionName = self->_effectiveCollectionName;
  self->_effectiveCollectionName = v3;
  v8 = v3;

  v9 = [(NTKPigmentEditOption *)self _buildFullname];
  fullname = self->_fullname;
  self->_fullname = v9;
}

+ (void)parserIdentifier:(id)a3 collectionName:(id *)a4 optionName:(id *)a5 colorFraction:(double *)a6 separator:(id)a7
{
  v10 = [a3 componentsSeparatedByString:a7];
  if (a6)
  {
    *a6 = 0.5;
  }

  v21 = v10;
  if ([v10 count] != 3)
  {
    if ([v21 count] == 2)
    {
      if (a4)
      {
        v17 = [v21 firstObject];
        v18 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
        *a4 = [v17 stringByTrimmingCharactersInSet:v18];
      }

      if (!a5)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v19 = [v21 count];
      if (!a5 || v19 != 1)
      {
        goto LABEL_19;
      }
    }

    v15 = [v21 lastObject];
    v20 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
    *a5 = [v15 stringByTrimmingCharactersInSet:v20];

    goto LABEL_18;
  }

  if (a4)
  {
    v11 = [v21 firstObject];
    v12 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
    *a4 = [v11 stringByTrimmingCharactersInSet:v12];
  }

  if (a5)
  {
    v13 = [v21 objectAtIndexedSubscript:1];
    v14 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
    *a5 = [v13 stringByTrimmingCharactersInSet:v14];
  }

  if (a6)
  {
    v15 = [v21 lastObject];
    [v15 floatValue];
    *a6 = v16;
LABEL_18:
  }

LABEL_19:
}

- (void)extractEffectiveCollectionName:(id *)a3 effectiveOptionName:(id *)a4
{
  v7 = [(NTKPigmentEditOption *)self collectionName];
  v8 = [(NTKPigmentEditOption *)self optionName];
  v9 = objc_opt_class();
  v10 = [(NTKPigmentEditOption *)self optionName];
  v15 = v8;
  v16 = v7;
  [v9 effectiveNamesFromName:v10 effectiveCollectionName:&v16 effectiveOptionName:&v15];
  v11 = v16;

  v12 = v15;
  if (a3)
  {
    v13 = v11;
    *a3 = v11;
  }

  if (a4)
  {
    v14 = v12;
    *a4 = v12;
  }
}

- (id)multitoneNamesWithoutCollection
{
  v22 = *MEMORY[0x277D85DE8];
  if ([(NTKPigmentEditOption *)self isMultitoneOption])
  {
    v3 = objc_opt_class();
    v4 = [(NTKPigmentEditOption *)self optionName];
    v5 = [v3 multitoneColorNames:v4];

    v6 = objc_alloc_init(MEMORY[0x277CCAB68]);
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v18;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v17 + 1) + 8 * i);
          v13 = objc_opt_class();
          v16 = 0;
          [v13 effectiveNamesFromName:v12 effectiveCollectionName:0 effectiveOptionName:&v16];
          v14 = v16;
          if (v14)
          {
            if ([v6 length])
            {
              [v6 appendFormat:@" %@ ", @"&"];
            }

            [v6 appendString:v14];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v9);
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (void)effectiveNamesFromName:(id)a3 effectiveCollectionName:(id *)a4 effectiveOptionName:(id *)a5
{
  v8 = a3;
  if ([a1 hasInlineCollectionInOptionName:v8] && (objc_msgSend(a1, "isMultitoneOptionWithOptionName:", v8) & 1) == 0)
  {
    v13 = v8;
    v14 = 0;
    [NTKPigmentEditOption parseFullname:v8 collectionName:&v14 optionName:&v13 fraction:0];
    v9 = v14;
    v10 = v13;

    if (a4 && v9)
    {
      v12 = v9;
      *a4 = v9;
    }
  }

  else
  {
    v9 = 0;
    v10 = v8;
  }

  if (a5 && v10)
  {
    v11 = v10;
    *a5 = v10;
  }
}

+ (id)fullnameWithCollectionName:(id)a3 optionName:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 length])
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@%@", v5, @".", v6];
  }

  else
  {
    v7 = v6;
  }

  v8 = v7;

  return v8;
}

- (id)JSONObjectRepresentationForFace:(id)a3
{
  v4 = [(NTKPigmentEditOption *)self legacyJSONRepresentationForFace:a3];
  if (!v4)
  {
    v4 = [(NTKPigmentEditOption *)self json];
  }

  return v4;
}

- (id)json
{
  v3 = [(NTKPigmentEditOption *)self optionName];
  if ([v3 containsString:@"."])
  {

LABEL_4:
    v5 = [(NTKPigmentEditOption *)self identifier];
    goto LABEL_6;
  }

  v4 = [(NTKPigmentEditOption *)self isMultitoneOption];

  if (v4)
  {
    goto LABEL_4;
  }

  v5 = [(NTKPigmentEditOption *)self fullnameIncludingFraction];
LABEL_6:
  v6 = v5;
  v7 = [v5 copy];

  return v7;
}

- (NTKPigmentEditOption)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"optionName"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"collectionName"];
  [v4 decodeFloatForKey:@"colorFraction"];
  v8 = [(NTKPigmentEditOption *)self initWithOptionName:v5 collectionName:v6 colorFraction:v7];
  if (v8)
  {
    v8->_isAddable = [v4 decodeBoolForKey:@"isAddable"];
    v8->_supportsSlider = [v4 decodeBoolForKey:@"supportsSlider"];
    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"alternativeLocalizedStringTableName"];
    alternativeLocalizedStringTableName = v8->_alternativeLocalizedStringTableName;
    v8->_alternativeLocalizedStringTableName = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundlePrincipalClassName"];
    bundlePrincipalClassName = v8->_bundlePrincipalClassName;
    v8->_bundlePrincipalClassName = v11;
  }

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  optionName = self->_optionName;
  v6 = a3;
  [v6 encodeObject:optionName forKey:@"optionName"];
  [v6 encodeObject:self->_collectionName forKey:@"collectionName"];
  colorFraction = self->_colorFraction;
  *&colorFraction = colorFraction;
  [v6 encodeFloat:@"colorFraction" forKey:colorFraction];
  [v6 encodeBool:self->_isAddable forKey:@"isAddable"];
  [v6 encodeBool:self->_supportsSlider forKey:@"supportsSlider"];
  [v6 encodeObject:self->_alternativeLocalizedStringTableName forKey:@"alternativeLocalizedStringTableName"];
  [v6 encodeObject:self->_bundlePrincipalClassName forKey:@"bundlePrincipalClassName"];
}

- (NTKPigmentEditOption)initWithProtoBuffer:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [NTKPigmentEditOption alloc];
    v6 = [v4 optionName];
    v7 = [v4 collectionName];
    v8 = [(NTKPigmentEditOption *)v5 initWithOptionName:v6 collectionName:v7];

    if (v8)
    {
      [v4 colorFraction];
      v8->_colorFraction = v9;
      v8->_isAddable = [v4 isAddable];
      v8->_supportsSlider = [v4 supportsSlider];
      v10 = [v4 alternativeLocalizedStringTableName];
      alternativeLocalizedStringTableName = v8->_alternativeLocalizedStringTableName;
      v8->_alternativeLocalizedStringTableName = v10;

      v12 = [v4 bundlePrincipalClassName];
      bundlePrincipalClassName = v8->_bundlePrincipalClassName;
      v8->_bundlePrincipalClassName = v12;

      -[NTKPigmentEditOption setFromStore:](v8, "setFromStore:", [v4 fromStore]);
      v14 = v8;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)protoBuffer
{
  v3 = objc_alloc_init(NTKProtoPigment);
  [(NTKProtoPigment *)v3 setOptionName:self->_optionName];
  [(NTKProtoPigment *)v3 setCollectionName:self->_collectionName];
  colorFraction = self->_colorFraction;
  *&colorFraction = colorFraction;
  [(NTKProtoPigment *)v3 setColorFraction:colorFraction];
  [(NTKProtoPigment *)v3 setIsAddable:self->_isAddable];
  [(NTKProtoPigment *)v3 setSupportsSlider:self->_supportsSlider];
  [(NTKProtoPigment *)v3 setBundlePrincipalClassName:self->_bundlePrincipalClassName];
  [(NTKProtoPigment *)v3 setAlternativeLocalizedStringTableName:self->_alternativeLocalizedStringTableName];
  [(NTKProtoPigment *)v3 setFromStore:self->_fromStore];

  return v3;
}

- (id)localizationTableNames
{
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = [(NTKPigmentEditOption *)self alternativeLocalizedStringTableName];

  if (v4)
  {
    v5 = MEMORY[0x277CCACA8];
    v6 = [(NTKPigmentEditOption *)self alternativeLocalizedStringTableName];
    v7 = [v5 stringWithFormat:@"%@-%@", @"FaceColors", v6];
    [v3 addObject:v7];
  }

  [v3 addObject:@"FaceColors"];

  return v3;
}

- (id)localizedName
{
  v22 = *MEMORY[0x277D85DE8];
  localizedName = self->_localizedName;
  if (!localizedName)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v4 = [(NTKPigmentEditOption *)self localizationTableNames];
    v5 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v18;
LABEL_4:
      v8 = 0;
      while (1)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v17 + 1) + 8 * v8);
        v10 = [(NTKPigmentEditOption *)self identifier];
        v11 = [(NTKPigmentEditOption *)self localizedNameForKey:v10 table:v9];
        v12 = self->_localizedName;
        self->_localizedName = v11;

        if (self->_localizedName)
        {
          break;
        }

        if (v6 == ++v8)
        {
          v6 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
          if (v6)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    localizedName = self->_localizedName;
    if (!localizedName)
    {
      v13 = [(NTKPigmentEditOption *)self fullname];
      v14 = [(NTKPigmentEditOption *)self localizedNameForKey:v13];
      v15 = self->_localizedName;
      self->_localizedName = v14;

      localizedName = self->_localizedName;
    }
  }

  return localizedName;
}

- (id)localizedNameForKey:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(NSBundle *)self->_mainBundle localizedStringForKey:@"MULTITONE_NAMES_SEPARATOR" value:&stru_284110E98 table:@"FaceColors"];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [(NTKPigmentEditOption *)self localizationTableNames];
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(NTKPigmentEditOption *)self localizedNameForKey:v4 fromTable:*(*(&v14 + 1) + 8 * i) separatorString:v5];
        if (v11)
        {
          v12 = v11;

          goto LABEL_11;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v12 = v4;
LABEL_11:

  return v12;
}

- (id)localizedCollectionName
{
  v22 = *MEMORY[0x277D85DE8];
  localizedCollectionName = self->_localizedCollectionName;
  if (!localizedCollectionName)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v4 = [(NTKPigmentEditOption *)self localizationTableNames];
    v5 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v18;
      while (2)
      {
        v8 = 0;
        do
        {
          if (*v18 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v17 + 1) + 8 * v8);
          v10 = [(NTKPigmentEditOption *)self collectionName];
          v11 = [(NTKPigmentEditOption *)self localizedNameForKey:v10 table:v9];

          if (v11 || (-[NTKPigmentEditOption collectionName](self, "collectionName"), v12 = objc_claimAutoreleasedReturnValue(), [v12 componentsSeparatedByString:@"."], v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "lastObject"), v14 = objc_claimAutoreleasedReturnValue(), v13, v12, -[NTKPigmentEditOption localizedNameForKey:table:](self, "localizedNameForKey:table:", v14, v9), v11 = objc_claimAutoreleasedReturnValue(), v14, v11))
          {

            goto LABEL_13;
          }

          ++v8;
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    v11 = [(NTKPigmentEditOption *)self collectionName];
LABEL_13:
    v15 = self->_localizedCollectionName;
    self->_localizedCollectionName = v11;

    localizedCollectionName = self->_localizedCollectionName;
  }

  return localizedCollectionName;
}

- (id)localizedNameForKey:(id)a3 fromTable:(id)a4 separatorString:(id)a5
{
  v28 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(NTKPigmentEditOption *)self localizedNameForKey:v8 table:v9];
  if (v11)
  {
    v12 = v11;
  }

  else if (([objc_opt_class() isMultitoneOptionWithOptionName:v8] & 1) != 0 || (v26 = 0, +[NTKPigmentEditOption parseFullname:collectionName:optionName:fraction:](NTKPigmentEditOption, "parseFullname:collectionName:optionName:fraction:", v8, 0, &v26, 0), v14 = v26, -[NTKPigmentEditOption localizedNameForKey:table:](self, "localizedNameForKey:table:", v14, v9), v12 = objc_claimAutoreleasedReturnValue(), v14, !v12))
  {
    if ([objc_opt_class() isMultitoneOptionWithOptionName:v8])
    {
      [objc_opt_class() multitoneColorNames:v8];
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v15 = v25 = 0u;
      v16 = [v15 countByEnumeratingWithState:&v22 objects:v27 count:16];
      if (v16)
      {
        v17 = v16;
        v12 = 0;
        v18 = *v23;
        while (2)
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v23 != v18)
            {
              objc_enumerationMutation(v15);
            }

            v20 = [(NTKPigmentEditOption *)self localizedNameForKey:*(*(&v22 + 1) + 8 * i), v22];
            if (!v20)
            {

              goto LABEL_23;
            }

            v21 = v20;
            if (v12)
            {
              [v12 appendString:v10];
            }

            else
            {
              v12 = [MEMORY[0x277CCAB68] string];
            }

            [v12 appendString:v21];
          }

          v17 = [v15 countByEnumeratingWithState:&v22 objects:v27 count:16];
          if (v17)
          {
            continue;
          }

          break;
        }
      }

      else
      {
LABEL_23:
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (BOOL)isMultitoneOption
{
  v3 = objc_opt_class();
  v4 = [(NTKPigmentEditOption *)self optionName];
  LOBYTE(v3) = [v3 isMultitoneOptionWithOptionName:v4];

  return v3;
}

+ (id)multitoneColorNames:(id)a3
{
  v3 = [a3 componentsSeparatedByString:@"&"];
  v4 = [v3 mutableCopy];

  if ([v4 count])
  {
    v5 = 0;
    do
    {
      v6 = [v4 objectAtIndexedSubscript:v5];
      v7 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
      v8 = [v6 stringByTrimmingCharactersInSet:v7];
      [v4 setObject:v8 atIndexedSubscript:v5];

      ++v5;
    }

    while (v5 < [v4 count]);
  }

  return v4;
}

- (id)localizedNameForKey:(id)a3 table:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v9 = v8;
  if (self->_mainBundle)
  {
    [v8 addObject:?];
  }

  v10 = [(NTKPigmentEditOption *)self sourceBundle];

  if (v10)
  {
    v11 = [(NTKPigmentEditOption *)self sourceBundle];
    [v9 addObject:v11];
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v12 = v9;
  v13 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v20;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v20 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [*(*(&v19 + 1) + 8 * i) localizedStringForKey:v6 value:0 table:{v7, v19}];
        if ([v17 isEqualToString:v6])
        {
        }

        else if (v17)
        {
          goto LABEL_16;
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v14);
  }

  v17 = 0;
LABEL_16:

  return v17;
}

- (NSBundle)sourceBundle
{
  v2 = self;
  objc_sync_enter(v2);
  sourceBundle = v2->_sourceBundle;
  if (!sourceBundle)
  {
    if (v2->_loadedBundleFromClass || !v2->_bundlePrincipalClassName)
    {
      sourceBundle = 0;
    }

    else
    {
      v4 = [(NTKPigmentEditOption *)v2 _resolveBundleWithBundlePrincipalClassName:?];
      v5 = v2->_sourceBundle;
      v2->_sourceBundle = v4;

      v2->_loadedBundleFromClass = 1;
      sourceBundle = v2->_sourceBundle;
    }
  }

  v6 = sourceBundle;
  objc_sync_exit(v2);

  return v6;
}

- (id)_resolveBundleWithBundlePrincipalClassName:(id)a3
{
  v3 = NSClassFromString(a3);
  if (v3)
  {
    v3 = [MEMORY[0x277CCA8D8] bundleForClass:v3];
  }

  return v3;
}

- (BOOL)isEquivalentToOption:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(NTKPigmentEditOption *)self effectiveCollectionName];
    v6 = [v4 effectiveCollectionName];
    if ([v5 isEqual:v6])
    {
      v7 = [(NTKPigmentEditOption *)self effectiveOptionName];
      v8 = [v4 effectiveOptionName];
      v9 = [v7 isEqual:v8];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)isEqualIgnoringFraction:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(NTKPigmentEditOption *)self collectionName];
    v6 = [v4 collectionName];
    if ([v5 isEqual:v6])
    {
      v7 = [(NTKPigmentEditOption *)self optionName];
      v8 = [v4 optionName];
      v9 = [v7 isEqual:v8];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(NTKPigmentEditOption *)self identifier];
    v6 = [v4 identifier];
    v7 = [v5 isEqual:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  v2 = [(NTKPigmentEditOption *)self identifier];
  v3 = [v2 hash];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_alloc(objc_opt_class()) initWithOptionName:self->_optionName collectionName:self->_collectionName colorFraction:self->_colorFraction];
  *(v4 + 32) = self->_isSensitiveUI;
  *(v4 + 33) = self->_isAddable;
  *(v4 + 34) = self->_supportsSlider;
  objc_storeStrong((v4 + 88), self->_bundlePrincipalClassName);
  objc_storeStrong((v4 + 104), self->_alternativeLocalizedStringTableName);
  objc_storeStrong((v4 + 80), self->_mainBundle);
  *(v4 + 36) = self->_sortedByHue;
  objc_storeStrong((v4 + 72), self->_desiredPosition);
  [v4 setFromStore:{-[NTKPigmentEditOption isFromStore](self, "isFromStore")}];
  return v4;
}

- (id)copyWithColorFraction:(double)a3
{
  result = [(NTKPigmentEditOption *)self copy];
  *(result + 8) = a3;
  return result;
}

- (id)copyWithCollectionOverride:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(NTKPigmentEditOption *)self copy];
  v6 = [v5 isMultitoneOption];
  v7 = objc_opt_class();
  if (v6)
  {
    v26 = v5;
    v8 = [v5 optionName];
    v9 = [v7 multitoneColorNames:v8];

    v10 = [MEMORY[0x277CCAB68] string];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v11 = v9;
    v12 = [v11 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v28;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v28 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = MEMORY[0x277CCA900];
          v17 = *(*(&v27 + 1) + 8 * i);
          v18 = [v16 whitespaceCharacterSet];
          v19 = [v17 stringByTrimmingCharactersInSet:v18];

          if ([v10 length])
          {
            [v10 appendFormat:@" %@ ", @"&"];
          }

          if ([objc_opt_class() hasInlineCollectionInOptionName:v19])
          {
            [v10 appendString:v19];
          }

          else
          {
            v20 = [objc_opt_class() fullnameWithCollectionName:v4 optionName:v19];
            [v10 appendString:v20];
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v13);
    }

    v5 = v26;
    v21 = v26[6];
    v26[6] = v10;
  }

  else
  {
    v22 = [(NTKPigmentEditOption *)self optionName];
    v23 = [v7 fullnameWithCollectionName:v4 optionName:v22];
    v24 = v5[6];
    v5[6] = v23;
  }

  [v5 loadEffectiveNames];

  return v5;
}

- (id)legacyJSONRepresentationForFace:(id)a3
{
  v4 = a3;
  if ([v4 requiresPigmentEditOption])
  {
    v5 = 0;
  }

  else
  {
    v6 = [MEMORY[0x277CBBB68] sharedRenderingContext];
    v7 = [v6 device];

    v8 = [objc_msgSend(v4 _optionClassForCustomEditMode:{10), "legacyOptionWithPigmentEditOption:forDevice:", self, v7}];
    if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v5 = [v8 JSONObjectRepresentation];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

@end