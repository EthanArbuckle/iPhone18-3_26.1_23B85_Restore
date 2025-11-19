@interface FCCoverArtImage
- (CGSize)dimensions;
- (FCCoverArtImage)initWithDimensions:(CGSize)a3 URL:(id)a4;
@end

@implementation FCCoverArtImage

- (FCCoverArtImage)initWithDimensions:(CGSize)a3 URL:(id)a4
{
  height = a3.height;
  width = a3.width;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = FCCoverArtImage;
  v9 = [(FCCoverArtImage *)&v12 init];
  v10 = v9;
  if (v9)
  {
    v9->_dimensions.width = width;
    v9->_dimensions.height = height;
    objc_storeStrong(&v9->_URL, a4);
  }

  return v10;
}

- (CGSize)dimensions
{
  width = self->_dimensions.width;
  height = self->_dimensions.height;
  result.height = height;
  result.width = width;
  return result;
}

@end