@interface SUUIScreenshotDataConsumer
+ (SUUIScreenshotDataConsumer)consumerWithScreenshotSize:(CGSize)size;
+ (id)consumer;
- (id)imageForColor:(id)color size:(CGSize)size;
- (id)imageForImage:(id)image;
@end

@implementation SUUIScreenshotDataConsumer

+ (id)consumer
{
  v4.receiver = self;
  v4.super_class = &OBJC_METACLASS___SUUIScreenshotDataConsumer;
  v2 = objc_msgSendSuper2(&v4, sel_consumer);

  return v2;
}

+ (SUUIScreenshotDataConsumer)consumerWithScreenshotSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  consumer = [self consumer];
  [consumer setImageSize:{width, height}];
  v6 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.2];
  [consumer setBorderColor:v6];

  [consumer setBorderWidths:{1.0, 1.0, 1.0, 1.0}];

  return consumer;
}

- (id)imageForColor:(id)color size:(CGSize)size
{
  forcesPortrait = self->_forcesPortrait;
  v5 = size.width > size.height;
  if (forcesPortrait && v5)
  {
    height = size.height;
  }

  else
  {
    height = size.width;
  }

  if (forcesPortrait && v5)
  {
    size.height = size.width;
  }

  v9.receiver = self;
  v9.super_class = SUUIScreenshotDataConsumer;
  v7 = [(SUUIStyledImageDataConsumer *)&v9 imageForColor:color size:height, size.height];

  return v7;
}

- (id)imageForImage:(id)image
{
  imageCopy = image;
  v5 = imageCopy;
  if (self->_forcesPortrait)
  {
    [imageCopy size];
    v7 = v6;
    [v5 size];
    if (v7 > v8)
    {
      v9 = objc_alloc(MEMORY[0x277D755B8]);
      cGImage = [v5 CGImage];
      [v5 scale];
      v11 = [v9 initWithCGImage:cGImage scale:2 orientation:?];

      v5 = v11;
    }
  }

  v14.receiver = self;
  v14.super_class = SUUIScreenshotDataConsumer;
  v12 = [(SUUIStyledImageDataConsumer *)&v14 imageForImage:v5];

  return v12;
}

@end