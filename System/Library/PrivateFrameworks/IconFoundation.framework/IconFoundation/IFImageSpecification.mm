@interface IFImageSpecification
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToImageSpecification:(id)specification;
- (CGSize)minimumSize;
- (CGSize)pixelSize;
- (CGSize)pixelsSize;
- (CGSize)size;
- (IFImageSpecification)initWithSize:(CGSize)size scale:(double)scale tags:(id)tags;
- (double)dimension;
- (id)description;
- (unint64_t)hash;
@end

@implementation IFImageSpecification

- (CGSize)size
{
  objc_copyStruct(v4, &self->_size, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.height = v3;
  result.width = v2;
  return result;
}

- (double)dimension
{
  [(IFImageSpecification *)self size];
  v4 = v3;
  [(IFImageSpecification *)self size];
  if (v4 >= v5)
  {
    return v5;
  }

  else
  {
    return v4;
  }
}

- (IFImageSpecification)initWithSize:(CGSize)size scale:(double)scale tags:(id)tags
{
  height = size.height;
  width = size.width;
  tagsCopy = tags;
  v15.receiver = self;
  v15.super_class = IFImageSpecification;
  v10 = [(IFImageSpecification *)&v15 init];
  v11 = v10;
  if (v10)
  {
    v10->_size.width = width;
    v10->_size.height = height;
    v10->_scale = scale;
    v12 = [MEMORY[0x1E695DFD8] setWithArray:tagsCopy];
    tags = v11->_tags;
    v11->_tags = v12;
  }

  return v11;
}

- (BOOL)isEqualToImageSpecification:(id)specification
{
  specificationCopy = specification;
  [(IFImageSpecification *)self size];
  v6 = v5;
  v8 = v7;
  [specificationCopy size];
  if (v6 == v10 && v8 == v9)
  {
    [(IFImageSpecification *)self scale];
    v14 = v13;
    [specificationCopy scale];
    v12 = v14 == v15;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = IFImageSpecification;
    v5 = [(IFImageSpecification *)&v7 isEqual:equalCopy]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(IFImageSpecification *)self isEqualToImageSpecification:equalCopy];
  }

  return v5;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_size.width];
  v4 = [v3 hash];
  v5 = [MEMORY[0x1E696AD98] numberWithDouble:self->_size.height];
  v6 = [v5 hash] ^ v4;
  v7 = [MEMORY[0x1E696AD98] numberWithDouble:self->_scale];
  v8 = [v7 hash];

  return v6 ^ v8;
}

- (id)description
{
  smallerSpecification = self->_smallerSpecification;
  if (smallerSpecification)
  {
    v4 = MEMORY[0x1E696AEC0];
    [(IFImageSpecification *)smallerSpecification dimension];
    v6 = v5;
    [(IFImageSpecification *)self->_smallerSpecification scale];
    v8 = [v4 stringWithFormat:@"smaller: %.1lf@%.0lfx", v6, v7];
  }

  else
  {
    v8 = &stru_1F37DEE28;
  }

  largerSpecification = self->_largerSpecification;
  if (largerSpecification)
  {
    v10 = MEMORY[0x1E696AEC0];
    [(IFImageSpecification *)largerSpecification dimension];
    v12 = v11;
    [(IFImageSpecification *)self->_largerSpecification scale];
    v14 = [v10 stringWithFormat:@"larger: %.1lf@%.0lfx", v12, v13];
  }

  else
  {
    v14 = &stru_1F37DEE28;
  }

  v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Image {%.1lf, %.1lf} @%.0lfx %@ %@", *&self->_size.width, *&self->_size.height, *&self->_scale, v8, v14];

  return v15;
}

- (CGSize)pixelSize
{
  [(IFImageSpecification *)self size];
  v4 = v3;
  v6 = v5;
  [(IFImageSpecification *)self scale];
  v8 = v6 * v7;
  v9 = v4 * v7;
  result.height = v8;
  result.width = v9;
  return result;
}

- (CGSize)pixelsSize
{
  objc_copyStruct(v4, &self->_pixelsSize, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)minimumSize
{
  smallerSpecification = [(IFImageSpecification *)self smallerSpecification];
  [smallerSpecification scale];
  v5 = v4;
  [(IFImageSpecification *)self scale];
  v7 = v6;

  if (v5 == v7)
  {
    smallerSpecification2 = [(IFImageSpecification *)self smallerSpecification];
    [smallerSpecification2 size];
    v10 = v9;
    v12 = v11;

    v13 = floor(v10 + 1.0);
    v14 = floor(v12 + 1.0);
  }

  else
  {
    v13 = *MEMORY[0x1E695F060];
    v14 = *(MEMORY[0x1E695F060] + 8);
  }

  result.height = v14;
  result.width = v13;
  return result;
}

@end