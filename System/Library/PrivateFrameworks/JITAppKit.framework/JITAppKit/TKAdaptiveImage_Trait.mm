@interface TKAdaptiveImage_Trait
- (BOOL)compatibleWithTrait:(id)trait;
- (CGRect)crop;
- (CGSize)maxSize;
- (CGSize)minSize;
- (CGSize)relativeSize;
- (CGSize)size;
- (TKAdaptiveImage_Trait)init;
- (void)setCrop:(CGRect)crop;
- (void)setQuality:(double)quality;
@end

@implementation TKAdaptiveImage_Trait

- (TKAdaptiveImage_Trait)init
{
  v6 = a2;
  v7 = 0;
  v5.receiver = self;
  v5.super_class = TKAdaptiveImage_Trait;
  v7 = [(TKAdaptiveImage_Trait *)&v5 init];
  objc_storeStrong(&v7, v7);
  if (v7)
  {
    v7->_horizontalSizeClass = 0;
    v7->_verticalSizeClass = 0;
    v7->_useReadableWidth = 1;
    v2 = v7;
    v7->_crop.origin = TKAdaptiveImageFullCrop;
    v2->_crop.size = xmmword_255603CE8;
  }

  v4 = MEMORY[0x277D82BE0](v7);
  objc_storeStrong(&v7, 0);
  return v4;
}

- (void)setQuality:(double)quality
{
  qualityCopy = quality;
  if (quality > 1.0 || quality <= 0.0)
  {
    qualityCopy = 0.850000024;
  }

  self->_quality = qualityCopy;
}

- (void)setCrop:(CGRect)crop
{
  cropCopy = crop;
  if (crop.origin.x < 0.0 || crop.origin.x >= 1.0)
  {
    cropCopy.origin.x = 0.0;
  }

  if (crop.origin.y < 0.0 || crop.origin.y >= 1.0)
  {
    cropCopy.origin.y = 0.0;
  }

  if (crop.size.width <= 0.0 || crop.size.width > 1.0)
  {
    cropCopy.size.width = 1.0;
  }

  if (crop.size.height <= 0.0 || crop.size.height > 1.0)
  {
    cropCopy.size.height = 1.0;
  }

  self->_crop = cropCopy;
}

- (BOOL)compatibleWithTrait:(id)trait
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, trait);
  url = selfCopy->_url;
  v10 = [location[0] url];
  v11 = 0;
  if (([(NSURL *)url isEqual:?]& 1) != 0)
  {
    v8 = selfCopy;
    [location[0] crop];
    rect2.origin.x = v3;
    rect2.origin.y = v4;
    rect2.size.width = v5;
    rect2.size.height = v6;
    v11 = CGRectEqualToRect(v8->_crop, rect2);
  }

  MEMORY[0x277D82BD8](v10);
  objc_storeStrong(location, 0);
  return v11;
}

- (CGSize)size
{
  height = self->_size.height;
  width = self->_size.width;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)relativeSize
{
  height = self->_relativeSize.height;
  width = self->_relativeSize.width;
  result.height = height;
  result.width = width;
  return result;
}

- (CGRect)crop
{
  y = self->_crop.origin.y;
  x = self->_crop.origin.x;
  height = self->_crop.size.height;
  width = self->_crop.size.width;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGSize)minSize
{
  height = self->_minSize.height;
  width = self->_minSize.width;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)maxSize
{
  height = self->_maxSize.height;
  width = self->_maxSize.width;
  result.height = height;
  result.width = width;
  return result;
}

@end