@interface SUUIScreenshotDataConsumer
+ (SUUIScreenshotDataConsumer)consumerWithScreenshotSize:(CGSize)a3;
+ (id)consumer;
- (id)imageForColor:(id)a3 size:(CGSize)a4;
- (id)imageForImage:(id)a3;
@end

@implementation SUUIScreenshotDataConsumer

+ (id)consumer
{
  v4.receiver = a1;
  v4.super_class = &OBJC_METACLASS___SUUIScreenshotDataConsumer;
  v2 = objc_msgSendSuper2(&v4, sel_consumer);

  return v2;
}

+ (SUUIScreenshotDataConsumer)consumerWithScreenshotSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = [a1 consumer];
  [v5 setImageSize:{width, height}];
  v6 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.2];
  [v5 setBorderColor:v6];

  [v5 setBorderWidths:{1.0, 1.0, 1.0, 1.0}];

  return v5;
}

- (id)imageForColor:(id)a3 size:(CGSize)a4
{
  forcesPortrait = self->_forcesPortrait;
  v5 = a4.width > a4.height;
  if (forcesPortrait && v5)
  {
    height = a4.height;
  }

  else
  {
    height = a4.width;
  }

  if (forcesPortrait && v5)
  {
    a4.height = a4.width;
  }

  v9.receiver = self;
  v9.super_class = SUUIScreenshotDataConsumer;
  v7 = [(SUUIStyledImageDataConsumer *)&v9 imageForColor:a3 size:height, a4.height];

  return v7;
}

- (id)imageForImage:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_forcesPortrait)
  {
    [v4 size];
    v7 = v6;
    [v5 size];
    if (v7 > v8)
    {
      v9 = objc_alloc(MEMORY[0x277D755B8]);
      v10 = [v5 CGImage];
      [v5 scale];
      v11 = [v9 initWithCGImage:v10 scale:2 orientation:?];

      v5 = v11;
    }
  }

  v14.receiver = self;
  v14.super_class = SUUIScreenshotDataConsumer;
  v12 = [(SUUIStyledImageDataConsumer *)&v14 imageForImage:v5];

  return v12;
}

@end