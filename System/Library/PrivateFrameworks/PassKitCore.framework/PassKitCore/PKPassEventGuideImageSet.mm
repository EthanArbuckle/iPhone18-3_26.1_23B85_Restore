@interface PKPassEventGuideImageSet
- (BOOL)isEqual:(id)a3;
- (PKPassEventGuideImageSet)initWithCoder:(id)a3;
- (PKPassEventGuideImageSet)initWithDisplayProfile:(id)a3 fileURL:(id)a4 screenScale:(double)a5 suffix:(id)a6;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPassEventGuideImageSet

- (PKPassEventGuideImageSet)initWithDisplayProfile:(id)a3 fileURL:(id)a4 screenScale:(double)a5 suffix:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v19.receiver = self;
  v19.super_class = PKPassEventGuideImageSet;
  v13 = [(PKImageSet *)&v19 initWithDisplayProfile:v10 fileURL:v11 screenScale:v12 suffix:a5];
  if (v13)
  {
    v14 = objc_autoreleasePoolPush();
    v15 = [MEMORY[0x1E696AAE8] bundleWithURL:v11];
    v16 = [PKImage imageNamed:@"venueMap" inBundle:v15 screenScale:v12 suffix:a5];
    venueMapImage = v13->_venueMapImage;
    v13->_venueMapImage = v16;

    objc_autoreleasePoolPop(v14);
  }

  return v13;
}

- (PKPassEventGuideImageSet)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = PKPassEventGuideImageSet;
  v5 = [(PKImageSet *)&v10 initWithCoder:v4];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"venueMapImage"];
    venueMapImage = v5->_venueMapImage;
    v5->_venueMapImage = v7;

    objc_autoreleasePoolPop(v6);
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = PKPassEventGuideImageSet;
  [(PKImageSet *)&v6 encodeWithCoder:v4];
  v5 = objc_autoreleasePoolPush();
  [v4 encodeObject:self->_venueMapImage forKey:@"venueMapImage"];
  objc_autoreleasePoolPop(v5);
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(PKImageSet *)self _isSetImage:self->_venueMapImage equalToImage:v4[3]];

  return v5;
}

- (unint64_t)hash
{
  v2 = [(PKImage *)self->_venueMapImage imageHash];
  v3 = [v2 hash];

  return v3;
}

@end