@interface HFWallpaper
+ (CGSize)contentSizeForWallpaper;
+ (CGSize)size;
+ (id)customWallpaperWithAssetIdentifier:(id)a3;
- (BOOL)isCustomType;
- (BOOL)isEqual:(id)a3;
- (HFWallpaper)initWithDictionary:(id)a3;
- (HFWallpaper)initWithType:(int64_t)a3 assetIdentifier:(id)a4 cropInfo:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)sliceIdentifierForVariant:(int64_t)a3;
- (id)wallpaperIdentifier;
@end

@implementation HFWallpaper

+ (CGSize)size
{
  v2 = [MEMORY[0x277D759A0] mainScreen];
  [v2 bounds];
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
  v2 = [MEMORY[0x277D759A0] mainScreen];
  [v2 bounds];
  v4 = v3;
  v6 = v5;

  v7 = [MEMORY[0x277D75418] currentDevice];
  if ([v7 userInterfaceIdiom] == 1)
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

- (HFWallpaper)initWithType:(int64_t)a3 assetIdentifier:(id)a4 cropInfo:(id)a5
{
  v8 = a4;
  v9 = a5;
  v17.receiver = self;
  v17.super_class = HFWallpaper;
  v10 = [(HFWallpaper *)&v17 init];
  v11 = v10;
  if (v10)
  {
    v10->_type = a3;
    v12 = [v9 copy];
    cropInfo = v11->_cropInfo;
    v11->_cropInfo = v12;

    if (qword_280E039A0 != -1)
    {
      dispatch_once(&qword_280E039A0, &__block_literal_global_185);
    }

    v14 = [v8 stringByAddingPercentEncodingWithAllowedCharacters:_MergedGlobals_296];
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

- (HFWallpaper)initWithDictionary:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"Type"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    NSLog(&cfstr_WallpaperTypeM.isa, v5);
    goto LABEL_10;
  }

  v6 = [v5 integerValue];
  if (v6 > 6)
  {
LABEL_10:
    v13 = 0;
    goto LABEL_19;
  }

  v7 = v6;
  v8 = [v4 objectForKeyedSubscript:@"Identifier"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [v4 objectForKeyedSubscript:@"AllCropInfo"];
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

    v14 = [v4 objectForKeyedSubscript:@"LastUserSelectedWallpaper"];
    if (v14)
    {
      v15 = [[HFWallpaper alloc] initWithDictionary:v14];
      lastUserSelectedWallpaper = self->_lastUserSelectedWallpaper;
      self->_lastUserSelectedWallpaper = v15;
    }

    self = [(HFWallpaper *)self initWithType:v7 assetIdentifier:v8 cropInfo:v12];

    v13 = self;
  }

  else
  {
    NSLog(&cfstr_WallpaperIdent.isa, v8);
    v13 = 0;
  }

LABEL_19:
  return v13;
}

+ (id)customWallpaperWithAssetIdentifier:(id)a3
{
  v3 = a3;
  v4 = [[HFWallpaper alloc] initWithType:1 assetIdentifier:v3 cropInfo:0];

  return v4;
}

- (id)description
{
  v3 = [(HFWallpaper *)self type];
  if (v3 > 6)
  {
    v4 = 0;
  }

  else
  {
    v4 = off_277DFF4F8[v3];
  }

  v5 = MEMORY[0x277CCACA8];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [(HFWallpaper *)self assetIdentifier];
  v9 = [(HFWallpaper *)self cropInfo];
  v10 = [v5 stringWithFormat:@"<%@: %p, type = %@, assetIdentifier = %@, crop info = [ %@ ]>", v7, self, v4, v8, v9];

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = [(HFWallpaper *)self type], v5 == [(HFWallpaper *)v4 type]))
    {
      v6 = [(HFWallpaper *)self wallpaperIdentifier];
      v7 = [(HFWallpaper *)v4 wallpaperIdentifier];
      v8 = [v6 isEqual:v7];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [HFWallpaper alloc];
  v5 = [(HFWallpaper *)self type];
  v6 = [(HFWallpaper *)self assetIdentifier];
  v7 = [(HFWallpaper *)self cropInfo];
  v8 = [(HFWallpaper *)v4 initWithType:v5 assetIdentifier:v6 cropInfo:v7];

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
  v5 = [(HFWallpaper *)self assetIdentifier];
  v21[1] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];
  v7 = [v3 dictionaryWithDictionary:v6];

  v8 = [(HFWallpaper *)self cropInfo];

  if (v8)
  {
    +[HFWallpaper size];
    v9 = NSStringFromCGSize(v23);
    v18 = v9;
    v10 = [(HFWallpaper *)self cropInfo];
    v11 = [v10 dictionaryRepresentation];
    v19 = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    [v7 setObject:v12 forKeyedSubscript:@"AllCropInfo"];
  }

  v13 = [(HFWallpaper *)self lastUserSelectedWallpaper];

  if (v13)
  {
    v14 = [(HFWallpaper *)self lastUserSelectedWallpaper];
    v15 = [v14 dictionaryRepresentation];
    [v7 setObject:v15 forKeyedSubscript:@"LastUserSelectedWallpaper"];
  }

  v16 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)wallpaperIdentifier
{
  v3 = [(HFWallpaper *)self cropInfo];

  if (v3)
  {
    v4 = MEMORY[0x277CCACA8];
    v5 = [(HFWallpaper *)self assetIdentifier];
    v6 = [(HFWallpaper *)self cropInfo];
    [v6 center];
    v7 = NSStringFromCGPoint(v15);
    v8 = MEMORY[0x277CCABB0];
    v9 = [(HFWallpaper *)self cropInfo];
    [v9 scale];
    v10 = [v8 numberWithDouble:?];
    v11 = [v10 stringValue];
    v12 = [v4 stringWithFormat:@"%@_%@_%@", v5, v7, v11];
  }

  else
  {
    v12 = [(HFWallpaper *)self assetIdentifier];
  }

  return v12;
}

- (id)sliceIdentifierForVariant:(int64_t)a3
{
  v4 = MEMORY[0x277CCACA8];
  v5 = [(HFWallpaper *)self wallpaperIdentifier];
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v7 = [v4 stringWithFormat:@"%@_%@", v5, v6];

  return v7;
}

- (BOOL)isCustomType
{
  v3 = [(HFWallpaper *)self type];
  if (v3 != 1)
  {
    LOBYTE(v3) = [(HFWallpaper *)self type]== 6;
  }

  return v3;
}

@end