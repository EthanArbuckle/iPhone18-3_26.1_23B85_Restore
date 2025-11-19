@interface PKPassPersonalizationImageSet
- (BOOL)isEqual:(id)a3;
- (PKPassPersonalizationImageSet)initWithCoder:(id)a3;
- (PKPassPersonalizationImageSet)initWithDisplayProfile:(id)a3 fileURL:(id)a4 screenScale:(double)a5 suffix:(id)a6;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPassPersonalizationImageSet

- (PKPassPersonalizationImageSet)initWithDisplayProfile:(id)a3 fileURL:(id)a4 screenScale:(double)a5 suffix:(id)a6
{
  v10 = a4;
  v11 = a6;
  v17.receiver = self;
  v17.super_class = PKPassPersonalizationImageSet;
  v12 = [(PKImageSet *)&v17 initWithDisplayProfile:a3 fileURL:v10 screenScale:v11 suffix:a5];
  if (v12)
  {
    v13 = [MEMORY[0x1E696AAE8] bundleWithURL:v10];
    v14 = [PKImage imageNamed:@"personalizationLogo" inBundle:v13 screenScale:v11 suffix:a5];
    logoImage = v12->_logoImage;
    v12->_logoImage = v14;
  }

  return v12;
}

- (PKPassPersonalizationImageSet)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = PKPassPersonalizationImageSet;
  v5 = [(PKImageSet *)&v10 initWithCoder:v4];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"logoImage"];
    logoImage = v5->_logoImage;
    v5->_logoImage = v7;

    objc_autoreleasePoolPop(v6);
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = PKPassPersonalizationImageSet;
  [(PKImageSet *)&v6 encodeWithCoder:v4];
  v5 = objc_autoreleasePoolPush();
  [v4 encodeObject:self->_logoImage forKey:@"logoImage"];
  objc_autoreleasePoolPop(v5);
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(PKImageSet *)self _isSetImage:self->_logoImage equalToImage:v4[3]];

  return v5;
}

- (unint64_t)hash
{
  v2 = [(PKImage *)self->_logoImage imageHash];
  v3 = [v2 hash];

  return v3;
}

@end