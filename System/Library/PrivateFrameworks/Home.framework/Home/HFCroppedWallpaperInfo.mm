@interface HFCroppedWallpaperInfo
- (BOOL)isEqual:(id)equal;
- (CGPoint)center;
- (HFCroppedWallpaperInfo)initWithDictionary:(id)dictionary;
- (HFCroppedWallpaperInfo)initWithSource:(int64_t)source center:(CGPoint)center scale:(double)scale;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
@end

@implementation HFCroppedWallpaperInfo

- (HFCroppedWallpaperInfo)initWithSource:(int64_t)source center:(CGPoint)center scale:(double)scale
{
  y = center.y;
  x = center.x;
  v10.receiver = self;
  v10.super_class = HFCroppedWallpaperInfo;
  result = [(HFCroppedWallpaperInfo *)&v10 init];
  if (result)
  {
    result->_source = source;
    result->_center.x = x;
    result->_center.y = y;
    result->_scale = scale;
  }

  return result;
}

- (HFCroppedWallpaperInfo)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKeyedSubscript:@"Source"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (v5)
    {
      NSLog(&cfstr_CropSourceMiss.isa, v5);
    }

    goto LABEL_10;
  }

  integerValue = [v5 integerValue];
  if (integerValue >= 2)
  {
    if (v5)
    {
      NSLog(&cfstr_CropSourceUnkn.isa, [v5 integerValue]);
    }

LABEL_10:
    selfCopy = 0;
    goto LABEL_19;
  }

  v7 = integerValue;
  v8 = [dictionaryCopy objectForKeyedSubscript:@"Center"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [dictionaryCopy objectForKeyedSubscript:@"Scale"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = CGPointFromString(v8);
      [v9 doubleValue];
      self = [(HFCroppedWallpaperInfo *)self initWithSource:v7 center:v10.x scale:v10.y, v11];
      selfCopy = self;
    }

    else
    {
      if (v9)
      {
        NSLog(&cfstr_CropScaleMissi.isa, v9);
      }

      selfCopy = 0;
    }
  }

  else
  {
    if (v8)
    {
      NSLog(&cfstr_CropCenterMiss.isa, v8);
    }

    selfCopy = 0;
  }

LABEL_19:
  return selfCopy;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  source = [(HFCroppedWallpaperInfo *)self source];
  [(HFCroppedWallpaperInfo *)self center];
  v7 = v6;
  v9 = v8;
  [(HFCroppedWallpaperInfo *)self scale];

  return [v4 initWithSource:source center:v7 scale:{v9, v10}];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    v7 = equalCopy;
    [v7 center];
    v9 = v8;
    v11 = v10;
    [(HFCroppedWallpaperInfo *)self center];
    if (v9 == v13 && v11 == v12)
    {
      [v7 scale];
      v16 = v15;
      [(HFCroppedWallpaperInfo *)self scale];
      v6 = v16 == v17;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  if ([(HFCroppedWallpaperInfo *)self source])
  {
    v4 = @"extrapolated";
  }

  else
  {
    v4 = @"user";
  }

  [(HFCroppedWallpaperInfo *)self center];
  v5 = NSStringFromCGPoint(v10);
  [(HFCroppedWallpaperInfo *)self scale];
  v7 = [v3 stringWithFormat:@"source = %@, center = %@, scale = %f", v4, v5, v6];

  return v7;
}

- (id)dictionaryRepresentation
{
  v11[3] = *MEMORY[0x277D85DE8];
  v10[0] = @"Source";
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HFCroppedWallpaperInfo source](self, "source")}];
  v11[0] = v3;
  v10[1] = @"Center";
  [(HFCroppedWallpaperInfo *)self center];
  v4 = NSStringFromCGPoint(v13);
  v11[1] = v4;
  v10[2] = @"Scale";
  v5 = MEMORY[0x277CCABB0];
  [(HFCroppedWallpaperInfo *)self scale];
  v6 = [v5 numberWithDouble:?];
  v11[2] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:3];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (CGPoint)center
{
  x = self->_center.x;
  y = self->_center.y;
  result.y = y;
  result.x = x;
  return result;
}

@end