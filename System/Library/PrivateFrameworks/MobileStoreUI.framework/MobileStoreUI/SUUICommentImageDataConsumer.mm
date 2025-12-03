@interface SUUICommentImageDataConsumer
- (id)_scaledImageWithBounds:(CGSize)bounds contentRect:(CGRect)rect drawBlock:(id)block;
- (id)imageForImage:(id)image;
@end

@implementation SUUICommentImageDataConsumer

- (id)imageForImage:(id)image
{
  imageCopy = image;
  [(SUUIStyledImageDataConsumer *)self imageSize];
  v6 = v5;
  v8 = v7;
  [(SUUIStyledImageDataConsumer *)self imageSize];
  v10 = v9;
  [(SUUIStyledImageDataConsumer *)self imageSize];
  v12 = v11;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __46__SUUICommentImageDataConsumer_imageForImage___block_invoke;
  v18[3] = &unk_2798F6690;
  v13 = imageCopy;
  v19 = v13;
  v14 = [(SUUICommentImageDataConsumer *)self _scaledImageWithBounds:v18 contentRect:v6 drawBlock:v8, 0.0, 0.0, v10, v12];
  v15 = [v14 imageWithRenderingMode:1];

  completionBlock = self->_completionBlock;
  if (completionBlock)
  {
    completionBlock[2](completionBlock, v15, 0);
  }

  return v15;
}

- (id)_scaledImageWithBounds:(CGSize)bounds contentRect:(CGRect)rect drawBlock:(id)block
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v9 = bounds.height;
  v10 = bounds.width;
  v11 = MEMORY[0x277D759A0];
  blockCopy = block;
  mainScreen = [v11 mainScreen];
  [mainScreen scale];
  v15 = v14;
  v19.width = v10;
  v19.height = v9;
  UIGraphicsBeginImageContextWithOptions(v19, 1, v15);

  blockCopy[2](blockCopy, x, y, width, height);
  v16 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v16;
}

@end