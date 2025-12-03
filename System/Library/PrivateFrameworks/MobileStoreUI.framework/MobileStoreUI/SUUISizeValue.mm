@interface SUUISizeValue
- (BOOL)isEqual:(id)equal;
- (CGSize)size;
- (SUUISizeValue)initWithSize:(CGSize)size;
- (id)description;
- (void)unionWithSize:(CGSize)size;
@end

@implementation SUUISizeValue

- (SUUISizeValue)initWithSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v6.receiver = self;
  v6.super_class = SUUISizeValue;
  result = [(SUUISizeValue *)&v6 init];
  if (result)
  {
    result->_height = height;
    result->_width = width;
  }

  return result;
}

- (CGSize)size
{
  width = self->_width;
  height = self->_height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)unionWithSize:(CGSize)size
{
  v3 = vcvtq_f64_s64(*&self->_height);
  width = size.width;
  *&self->_height = vcvtq_s64_f64(vbslq_s8(vcgtq_f64(*&size.height, v3), *&size.height, v3));
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = SUUISizeValue;
  v4 = [(SUUISizeValue *)&v8 description];
  [(SUUISizeValue *)self size];
  v5 = NSStringFromCGSize(v10);
  v6 = [v3 stringWithFormat:@"%@: %@", v4, v5];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  v6 = v5 == objc_opt_class() && self->_width == equalCopy[2] && self->_height == equalCopy[1];

  return v6;
}

@end