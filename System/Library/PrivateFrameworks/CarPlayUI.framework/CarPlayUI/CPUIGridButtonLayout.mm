@interface CPUIGridButtonLayout
- (CGSize)imageSize;
- (CGSize)maxImageSize;
- (CGSize)preferredSize;
- (CGSize)size;
- (CPUIGridButtonLayout)initWithSize:(CGSize)a3 style:(unint64_t)a4 imageSize:(CGSize)a5;
- (UIEdgeInsets)insets;
- (double)itemSpacing;
- (id)fontForTraitCollection:(id)a3;
- (unint64_t)maxRowCount;
@end

@implementation CPUIGridButtonLayout

- (CPUIGridButtonLayout)initWithSize:(CGSize)a3 style:(unint64_t)a4 imageSize:(CGSize)a5
{
  height = a5.height;
  width = a5.width;
  v8 = a3.height;
  v9 = a3.width;
  v15.receiver = self;
  v15.super_class = CPUIGridButtonLayout;
  v10 = [(CPUIGridButtonLayout *)&v15 init];
  v11 = v10;
  if (v10)
  {
    v10->_size.width = v9;
    v10->_size.height = v8;
    v10->_style = a4;
    v10->_maxImageSize.width = width;
    v10->_maxImageSize.height = height;
    if (v9 <= 400.0)
    {
      v13 = 1;
    }

    else
    {
      [(CPUIGridButtonLayout *)v10 size];
      v13 = v12 <= 300.0;
    }

    v11->_isCompact = v13;
    v11->_isPortrait = v8 / v9 > 1.2;
  }

  return v11;
}

- (CGSize)imageSize
{
  if ([(CPUIGridButtonLayout *)self style]== 2 && [(CPUIGridButtonLayout *)self isCompact])
  {
    __asm { FMOV            V1.2D, #0.75 }

    maxImageSize = vmulq_f64(self->_maxImageSize, _Q1);
  }

  else
  {
    maxImageSize = self->_maxImageSize;
  }

  height = maxImageSize.height;
  result.width = maxImageSize.width;
  result.height = height;
  return result;
}

- (CGSize)preferredSize
{
  if ([(CPUIGridButtonLayout *)self style]== 2)
  {
    v3 = [(CPUIGridButtonLayout *)self isCompact];
    v4 = 50.0;
    if (!v3)
    {
      v4 = 60.0;
    }

    v5 = 64.0;
    if (v3)
    {
      v5 = 52.0;
    }
  }

  else
  {
    v5 = 60.0;
    v4 = 60.0;
  }

  result.height = v4;
  result.width = v5;
  return result;
}

- (id)fontForTraitCollection:(id)a3
{
  v4 = MEMORY[0x277D74300];
  v5 = a3;
  v6 = [(CPUIGridButtonLayout *)self isCompact];
  v7 = MEMORY[0x277D76940];
  if (!v6)
  {
    v7 = MEMORY[0x277D76938];
  }

  v8 = [v4 preferredFontForTextStyle:*v7 compatibleWithTraitCollection:v5];

  return v8;
}

- (double)itemSpacing
{
  v2 = [(CPUIGridButtonLayout *)self isCompact];
  result = 4.0;
  if (v2)
  {
    return 0.0;
  }

  return result;
}

- (UIEdgeInsets)insets
{
  if ([(CPUIGridButtonLayout *)self isCompact])
  {
    v2 = 8.0;
  }

  else
  {
    v2 = 16.0;
  }

  v3 = 4.0;
  v4 = 0.0;
  v5 = 0.0;
  result.right = v5;
  result.bottom = v2;
  result.left = v4;
  result.top = v3;
  return result;
}

- (unint64_t)maxRowCount
{
  if (self->_isPortrait)
  {
    return 3;
  }

  else
  {
    return 2;
  }
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)maxImageSize
{
  width = self->_maxImageSize.width;
  height = self->_maxImageSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end