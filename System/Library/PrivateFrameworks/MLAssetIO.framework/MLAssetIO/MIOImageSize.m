@interface MIOImageSize
- (BOOL)isEqual:(id)a3;
- (MIOImageSize)initWithSpecification:(const void *)a3;
- (int64_t)compare:(id)a3;
@end

@implementation MIOImageSize

- (MIOImageSize)initWithSpecification:(const void *)a3
{
  v7.receiver = self;
  v7.super_class = MIOImageSize;
  v4 = [(MIOImageSize *)&v7 init];
  v5 = v4;
  if (v4)
  {
    CoreML::Specification::ImageFeatureType_ImageSize::CopyFrom((v4 + 8), a3);
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(MIOImageSize *)self pixelsWide];
      if (v6 == [(MIOImageSize *)v5 pixelsWide])
      {
        v7 = [(MIOImageSize *)self pixelsHigh];
        v8 = v7 == [(MIOImageSize *)v5 pixelsHigh];
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

- (int64_t)compare:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:{-[MIOImageSize pixelsWide](self, "pixelsWide")}];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v4, "pixelsWide")}];
  v7 = [v5 compare:v6];

  if (!v7)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithInteger:{-[MIOImageSize pixelsHigh](self, "pixelsHigh")}];
    v9 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v4, "pixelsHigh")}];
    v7 = [v8 compare:v9];
  }

  return v7;
}

@end