@interface ISIconLayer
- (ISIconLayer)initWithImages:(id)images;
@end

@implementation ISIconLayer

- (ISIconLayer)initWithImages:(id)images
{
  imagesCopy = images;
  v11.receiver = self;
  v11.super_class = ISIconLayer;
  v6 = [(ISIconLayer *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_images, images);
    v8 = [objc_alloc(MEMORY[0x1E69A8990]) initWithImages:imagesCopy];
    imageBag = v7->_imageBag;
    v7->_imageBag = v8;
  }

  return v7;
}

@end