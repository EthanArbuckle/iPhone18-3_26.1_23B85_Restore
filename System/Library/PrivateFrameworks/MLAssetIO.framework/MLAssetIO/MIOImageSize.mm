@interface MIOImageSize
- (BOOL)isEqual:(id)equal;
- (MIOImageSize)initWithSpecification:(const void *)specification;
- (int64_t)compare:(id)compare;
@end

@implementation MIOImageSize

- (MIOImageSize)initWithSpecification:(const void *)specification
{
  v7.receiver = self;
  v7.super_class = MIOImageSize;
  v4 = [(MIOImageSize *)&v7 init];
  v5 = v4;
  if (v4)
  {
    CoreML::Specification::ImageFeatureType_ImageSize::CopyFrom((v4 + 8), specification);
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      pixelsWide = [(MIOImageSize *)self pixelsWide];
      if (pixelsWide == [(MIOImageSize *)v5 pixelsWide])
      {
        pixelsHigh = [(MIOImageSize *)self pixelsHigh];
        v8 = pixelsHigh == [(MIOImageSize *)v5 pixelsHigh];
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:{-[MIOImageSize pixelsWide](self, "pixelsWide")}];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(compareCopy, "pixelsWide")}];
  v7 = [v5 compare:v6];

  if (!v7)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithInteger:{-[MIOImageSize pixelsHigh](self, "pixelsHigh")}];
    v9 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(compareCopy, "pixelsHigh")}];
    v7 = [v8 compare:v9];
  }

  return v7;
}

@end