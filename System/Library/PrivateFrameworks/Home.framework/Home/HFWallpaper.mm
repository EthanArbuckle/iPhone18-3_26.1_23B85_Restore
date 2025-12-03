@interface HFWallpaper
+ (CGSize)contentSizeForWallpaper;
+ (CGSize)size;
+ (id)customWallpaperWithAssetIdentifier:(id)identifier;
- (BOOL)isCustomType;
- (BOOL)isEqual:(id)equal;
- (HFWallpaper)initWithDictionary:(id)dictionary;
- (HFWallpaper)initWithType:(int64_t)type assetIdentifier:(id)identifier cropInfo:(id)info;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)sliceIdentifierForVariant:(int64_t)variant;
- (id)wallpaperIdentifier;
@end

@implementation HFWallpaper

+ (CGSize)size
{
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen bounds];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

+ (CGSize)contentSizeForWallpaper
{
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen bounds];
  v4 = v3;
  v6 = v5;

  currentDevice = [MEMORY[0x277D75418] currentDevice];
  if ([currentDevice userInterfaceIdiom] == 1)
  {
    v8 = +[HFUtilities isAMac];

    if (v4 >= v6)
    {
      v9 = v4;
    }

    else
    {
      v9 = v6;
    }

    if (!v8)
    {
      v4 = v9;
      v6 = v9;
    }
  }

  else
  {
  }

  v10 = v4;
  v11 = v6;
  result.height = v11;
  result.width = v10;
  return result;
}

- (HFWallpaper)initWithType:(int64_t)type assetIdentifier:(id)identifier cropInfo:(id)info
{
  identifierCopy = identifier;
  infoCopy = info;
  v17.receiver = self;
  v17.super_class = HFWallpaper;
  v10 = [(HFWallpaper *)&v17 init];
  v11 = v10;
  if (v10)
  {
    v10->_type = type;
    v12 = [infoCopy copy];
    cropInfo = v11->_cropInfo;
    v11->_cropInfo = v12;

    if (qword_280E039A0 != -1)
    {
      dispatch_once(&qword_280E039A0, &__block_literal_global_185);
    }

    v14 = [identifierCopy stringByAddingPercentEncodingWithAllowedCharacters:_MergedGlobals_296];
    assetIdentifier = v11->_assetIdentifier;
    v11->_assetIdentifier = v14;
  }

  return v11;
}

void __53__HFWallpaper_initWithType_assetIdentifier_cropInfo___block_invoke()
{
  v2 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"|/\\<>*?"];
  v0 = [v2 invertedSet];
  v1 = _MergedGlobals_296;
  _MergedGlobals_296 = v0;
}

- (HFWallpaper)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKeyedSubscript:@"Type"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    NSLog(&cfstr_WallpaperTypeM.isa, v5);
    goto LABEL_10;
  }

  integerValue = [v5 integerValue];
  if (integerValue > 6)
  {
LABEL_10:
    selfCopy = 0;
    goto LABEL_19;
  }

  v7 = integerValue;
  v8 = [dictionaryCopy objectForKeyedSubscript:@"Identifier"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [dictionaryCopy objectForKeyedSubscript:@"AllCropInfo"];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      NSLog(&cfstr_WallpaperCropI.isa, v9);
      v12 = 0;
    }

    else
    {
      +[HFWallpaper size];
      v10 = NSStringFromCGSize(v18);
      v11 = [v9 objectForKeyedSubscript:v10];

      if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v12 = [[HFCroppedWallpaperInfo alloc] initWithDictionary:v11];
      }

      else
      {
        v12 = 0;
      }
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"LastUserSelectedWallpaper"];
    if (v14)
    {
      v15 = [[HFWallpaper alloc] initWithDictionary:v14];
      lastUserSelectedWallpaper = self->_lastUserSelectedWallpaper;
      self->_lastUserSelectedWallpaper = v15;
    }

    self = [(HFWallpaper *)self initWithType:v7 assetIdentifier:v8 cropInfo:v12];

    selfCopy = self;
  }

  else
  {
    NSLog(&cfstr_WallpaperIdent.isa, v8);
    selfCopy = 0;
  }

LABEL_19:
  return selfCopy;
}

+ (id)customWallpaperWithAssetIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [[HFWallpaper alloc] initWithType:1 assetIdentifier:identifierCopy cropInfo:0];

  return v4;
}

- (id)description
{
  type = [(HFWallpaper *)self type];
  if (type > 6)
  {
    v4 = 0;
  }

  else
  {
    v4 = off_277DFF4F8[type];
  }

  v5 = MEMORY[0x277CCACA8];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  assetIdentifier = [(HFWallpaper *)self assetIdentifier];
  cropInfo = [(HFWallpaper *)self cropInfo];
  v10 = [v5 stringWithFormat:@"<%@: %p, type = %@, assetIdentifier = %@, crop info = [ %@ ]>", v7, self, v4, assetIdentifier, cropInfo];

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = [(HFWallpaper *)self type], v5 == [(HFWallpaper *)equalCopy type]))
    {
      wallpaperIdentifier = [(HFWallpaper *)self wallpaperIdentifier];
      wallpaperIdentifier2 = [(HFWallpaper *)equalCopy wallpaperIdentifier];
      v8 = [wallpaperIdentifier isEqual:wallpaperIdentifier2];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [HFWallpaper alloc];
  type = [(HFWallpaper *)self type];
  assetIdentifier = [(HFWallpaper *)self assetIdentifier];
  cropInfo = [(HFWallpaper *)self cropInfo];
  v8 = [(HFWallpaper *)v4 initWithType:type assetIdentifier:assetIdentifier cropInfo:cropInfo];

  return v8;
}

- (id)dictionaryRepresentation
{
  v21[2] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEB38];
  v20[0] = @"Type";
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HFWallpaper type](self, "type")}];
  v20[1] = @"Identifier";
  v21[0] = v4;
  assetIdentifier = [(HFWallpaper *)self assetIdentifier];
  v21[1] = assetIdentifier;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];
  v7 = [v3 dictionaryWithDictionary:v6];

  cropInfo = [(HFWallpaper *)self cropInfo];

  if (cropInfo)
  {
    +[HFWallpaper size];
    v9 = NSStringFromCGSize(v23);
    v18 = v9;
    cropInfo2 = [(HFWallpaper *)self cropInfo];
    dictionaryRepresentation = [cropInfo2 dictionaryRepresentation];
    v19 = dictionaryRepresentation;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    [v7 setObject:v12 forKeyedSubscript:@"AllCropInfo"];
  }

  lastUserSelectedWallpaper = [(HFWallpaper *)self lastUserSelectedWallpaper];

  if (lastUserSelectedWallpaper)
  {
    lastUserSelectedWallpaper2 = [(HFWallpaper *)self lastUserSelectedWallpaper];
    dictionaryRepresentation2 = [lastUserSelectedWallpaper2 dictionaryRepresentation];
    [v7 setObject:dictionaryRepresentation2 forKeyedSubscript:@"LastUserSelectedWallpaper"];
  }

  v16 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)wallpaperIdentifier
{
  cropInfo = [(HFWallpaper *)self cropInfo];

  if (cropInfo)
  {
    v4 = MEMORY[0x277CCACA8];
    assetIdentifier = [(HFWallpaper *)self assetIdentifier];
    cropInfo2 = [(HFWallpaper *)self cropInfo];
    [cropInfo2 center];
    v7 = NSStringFromCGPoint(v15);
    v8 = MEMORY[0x277CCABB0];
    cropInfo3 = [(HFWallpaper *)self cropInfo];
    [cropInfo3 scale];
    v10 = [v8 numberWithDouble:?];
    stringValue = [v10 stringValue];
    assetIdentifier2 = [v4 stringWithFormat:@"%@_%@_%@", assetIdentifier, v7, stringValue];
  }

  else
  {
    assetIdentifier2 = [(HFWallpaper *)self assetIdentifier];
  }

  return assetIdentifier2;
}

- (id)sliceIdentifierForVariant:(int64_t)variant
{
  v4 = MEMORY[0x277CCACA8];
  wallpaperIdentifier = [(HFWallpaper *)self wallpaperIdentifier];
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:variant];
  v7 = [v4 stringWithFormat:@"%@_%@", wallpaperIdentifier, v6];

  return v7;
}

- (BOOL)isCustomType
{
  type = [(HFWallpaper *)self type];
  if (type != 1)
  {
    LOBYTE(type) = [(HFWallpaper *)self type]== 6;
  }

  return type;
}

@end