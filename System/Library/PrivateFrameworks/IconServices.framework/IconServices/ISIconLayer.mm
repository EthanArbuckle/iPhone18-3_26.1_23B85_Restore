@interface ISIconLayer
- (ISIconLayer)initWithImages:(id)a3;
@end

@implementation ISIconLayer

- (ISIconLayer)initWithImages:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = ISIconLayer;
  v6 = [(ISIconLayer *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_images, a3);
    v8 = [objc_alloc(MEMORY[0x1E69A8990]) initWithImages:v5];
    imageBag = v7->_imageBag;
    v7->_imageBag = v8;
  }

  return v7;
}

@end