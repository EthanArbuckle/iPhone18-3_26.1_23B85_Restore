@interface MCLImageView
+ (id)bitmapImage:(id)a3;
- (void)backgroundDecompressImage;
- (void)didMoveToWindow;
- (void)setImage:(id)a3;
- (void)setImageDelayed:(id)a3;
@end

@implementation MCLImageView

- (void)didMoveToWindow
{
  v6 = self;
  v5 = a2;
  v4.receiver = self;
  v4.super_class = MCLImageView;
  [(MCLImageView *)&v4 didMoveToWindow];
  v2 = [(MCLImageView *)v6 window];
  v3 = 0;
  if (v2)
  {
    v3 = v6->_image != 0;
  }

  MEMORY[0x277D82BD8](v2);
  if (v3)
  {
    [(MCLImageView *)v6 setImageDelayed:v6->_image];
  }
}

- (void)setImageDelayed:(id)a3
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_initWeak(&v10, v12);
  queue = dispatch_get_global_queue(-2, 0);
  v4 = MEMORY[0x277D85DD0];
  v5 = -1073741824;
  v6 = 0;
  v7 = __32__MCLImageView_setImageDelayed___block_invoke;
  v8 = &unk_2797EE450;
  objc_copyWeak(&v9, &v10);
  dispatch_async(queue, &v4);
  MEMORY[0x277D82BD8](queue);
  objc_destroyWeak(&v9);
  objc_destroyWeak(&v10);
  objc_storeStrong(location, 0);
}

uint64_t __32__MCLImageView_setImageDelayed___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained backgroundDecompressImage];
  return MEMORY[0x277D82BD8](WeakRetained);
}

- (void)backgroundDecompressImage
{
  v15 = self;
  v14[1] = a2;
  v14[0] = MEMORY[0x277D82BE0](self->_image);
  if (v14[0])
  {
    CGSizeMake();
    v12 = v16;
    UIGraphicsBeginImageContext(v16);
    [v14[0] drawAtPoint:{*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8)}];
    UIGraphicsEndImageContext();
    v3 = MEMORY[0x277D85CD0];
    v2 = MEMORY[0x277D85CD0];
    queue = v3;
    v5 = MEMORY[0x277D85DD0];
    v6 = -1073741824;
    v7 = 0;
    v8 = __41__MCLImageView_backgroundDecompressImage__block_invoke;
    v9 = &unk_2797EE270;
    v10 = MEMORY[0x277D82BE0](v14[0]);
    v11 = MEMORY[0x277D82BE0](v15);
    dispatch_async(queue, &v5);
    MEMORY[0x277D82BD8](queue);
    objc_storeStrong(&v11, 0);
    objc_storeStrong(&v10, 0);
    v13 = 0;
  }

  else
  {
    v13 = 1;
  }

  objc_storeStrong(v14, 0);
}

uint64_t __41__MCLImageView_backgroundDecompressImage__block_invoke(uint64_t result)
{
  v2 = result;
  v5 = result;
  v4 = result;
  if (*(result + 32) == *(*(result + 40) + 512))
  {
    objc_storeStrong((*(result + 40) + 512), 0);
    [*(v2 + 40) willChangeValueForKey:?];
    v1 = *(v2 + 32);
    v3.receiver = *(v2 + 40);
    v3.super_class = MCLImageView;
    objc_msgSendSuper2(&v3, sel_setImage_, v1);
    [*(v2 + 40) didChangeValueForKey:@"image"];
    return [*(v2 + 40) setNeedsLayout];
  }

  return result;
}

- (void)setImage:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(&v6->_image, location[0]);
  if (location[0])
  {
    v3 = [(MCLImageView *)v6 window];
    MEMORY[0x277D82BD8](v3);
    if (v3)
    {
      [(MCLImageView *)v6 setImageDelayed:location[0]];
    }
  }

  else
  {
    v4.receiver = v6;
    v4.super_class = MCLImageView;
    [(MCLImageView *)&v4 setImage:0];
  }

  objc_storeStrong(location, 0);
}

+ (id)bitmapImage:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v21 = &bitmapImage__onceToken;
  v20 = 0;
  objc_storeStrong(&v20, &__block_literal_global_4);
  if (*v21 != -1)
  {
    dispatch_once(v21, v20);
  }

  objc_storeStrong(&v20, 0);
  v7 = location[0];
  v3 = location[0];
  v18 = [v7 CGImage];
  v17 = CGImageGetBitmapInfo(v18) & 0x1F;
  v8 = 1;
  if (v17 != 4)
  {
    v8 = 1;
    if (v17 != 3)
    {
      v8 = 1;
      if (v17 != 2)
      {
        v8 = v17 == 1;
      }
    }
  }

  v16 = v8;
  Width = CGImageGetWidth(v18);
  Height = CGImageGetHeight(v18);
  v13 = 8;
  if (v8)
  {
    v4 = 2;
  }

  else
  {
    v4 = 6;
  }

  v12 = CGBitmapContextCreate(0, Width, Height, 8uLL, 0, bitmapImage__rgbColorSpaceRef, v4 | 0x2000u);
  CGRectMake();
  rect = v23;
  CGContextDrawImage(v12, v23, v18);
  image = CGBitmapContextCreateImage(v12);
  CGContextRelease(v12);
  v9 = [objc_alloc(MEMORY[0x277D755B8]) initWithCGImage:image];
  CGImageRelease(image);
  v6 = MEMORY[0x277D82BE0](v9);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);

  return v6;
}

CGColorSpaceRef __28__MCLImageView_bitmapImage___block_invoke()
{
  result = CGColorSpaceCreateDeviceRGB();
  bitmapImage__rgbColorSpaceRef = result;
  return result;
}

@end