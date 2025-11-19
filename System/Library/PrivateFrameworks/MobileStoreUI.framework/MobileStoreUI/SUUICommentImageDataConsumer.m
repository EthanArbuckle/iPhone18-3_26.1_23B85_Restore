@interface SUUICommentImageDataConsumer
- (id)_scaledImageWithBounds:(CGSize)a3 contentRect:(CGRect)a4 drawBlock:(id)a5;
- (id)imageForImage:(id)a3;
@end

@implementation SUUICommentImageDataConsumer

- (id)imageForImage:(id)a3
{
  v4 = a3;
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
  v13 = v4;
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

- (id)_scaledImageWithBounds:(CGSize)a3 contentRect:(CGRect)a4 drawBlock:(id)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = a3.height;
  v10 = a3.width;
  v11 = MEMORY[0x277D759A0];
  v12 = a5;
  v13 = [v11 mainScreen];
  [v13 scale];
  v15 = v14;
  v19.width = v10;
  v19.height = v9;
  UIGraphicsBeginImageContextWithOptions(v19, 1, v15);

  v12[2](v12, x, y, width, height);
  v16 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v16;
}

@end