@interface HKCVGaussianBlurKey
- (BOOL)isEqual:(id)equal;
- (HKCVGaussianBlurKey)initWithIdentifier:(unint64_t)identifier textureSize:(id *)size;
@end

@implementation HKCVGaussianBlurKey

- (HKCVGaussianBlurKey)initWithIdentifier:(unint64_t)identifier textureSize:(id *)size
{
  v8.receiver = self;
  v8.super_class = HKCVGaussianBlurKey;
  result = [(HKCVGaussianBlurKey *)&v8 init];
  if (result)
  {
    result->_identifier = identifier;
    v7 = *&size->var0;
    result->_textureSize.depth = size->var2;
    *&result->_textureSize.width = v7;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    LOBYTE(v5) = 1;
  }

  else
  {
    if (!equal)
    {
      goto LABEL_8;
    }

    v5 = [equal isMemberOfClass:objc_opt_class()];
    if (!v5)
    {
      return v5;
    }

    if (self->_identifier != *(equal + 1) || self->_textureSize.width != *(equal + 2) || self->_textureSize.height != *(equal + 3))
    {
LABEL_8:
      LOBYTE(v5) = 0;
      return v5;
    }

    LOBYTE(v5) = self->_textureSize.depth == *(equal + 4);
  }

  return v5;
}

@end