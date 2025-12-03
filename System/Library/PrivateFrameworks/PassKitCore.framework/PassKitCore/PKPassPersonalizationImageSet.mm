@interface PKPassPersonalizationImageSet
- (BOOL)isEqual:(id)equal;
- (PKPassPersonalizationImageSet)initWithCoder:(id)coder;
- (PKPassPersonalizationImageSet)initWithDisplayProfile:(id)profile fileURL:(id)l screenScale:(double)scale suffix:(id)suffix;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPassPersonalizationImageSet

- (PKPassPersonalizationImageSet)initWithDisplayProfile:(id)profile fileURL:(id)l screenScale:(double)scale suffix:(id)suffix
{
  lCopy = l;
  suffixCopy = suffix;
  v17.receiver = self;
  v17.super_class = PKPassPersonalizationImageSet;
  v12 = [(PKImageSet *)&v17 initWithDisplayProfile:profile fileURL:lCopy screenScale:suffixCopy suffix:scale];
  if (v12)
  {
    v13 = [MEMORY[0x1E696AAE8] bundleWithURL:lCopy];
    v14 = [PKImage imageNamed:@"personalizationLogo" inBundle:v13 screenScale:suffixCopy suffix:scale];
    logoImage = v12->_logoImage;
    v12->_logoImage = v14;
  }

  return v12;
}

- (PKPassPersonalizationImageSet)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = PKPassPersonalizationImageSet;
  v5 = [(PKImageSet *)&v10 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"logoImage"];
    logoImage = v5->_logoImage;
    v5->_logoImage = v7;

    objc_autoreleasePoolPop(v6);
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6.receiver = self;
  v6.super_class = PKPassPersonalizationImageSet;
  [(PKImageSet *)&v6 encodeWithCoder:coderCopy];
  v5 = objc_autoreleasePoolPush();
  [coderCopy encodeObject:self->_logoImage forKey:@"logoImage"];
  objc_autoreleasePoolPop(v5);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(PKImageSet *)self _isSetImage:self->_logoImage equalToImage:equalCopy[3]];

  return v5;
}

- (unint64_t)hash
{
  imageHash = [(PKImage *)self->_logoImage imageHash];
  v3 = [imageHash hash];

  return v3;
}

@end