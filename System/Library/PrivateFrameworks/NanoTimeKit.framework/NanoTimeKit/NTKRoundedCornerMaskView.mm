@interface NTKRoundedCornerMaskView
+ (id)_maskForDevice:(id)device;
+ (id)_maskWithSize:(CGSize)size screenScale:(double)scale cornerRadius:(double)radius;
- (NTKRoundedCornerMaskView)initWithDevice:(id)device;
- (NTKRoundedCornerMaskView)initWithFrame:(CGRect)frame screenScale:(double)scale cornerRadius:(double)radius;
- (id)_initWithFrame:(CGRect)frame mask:(id)mask;
@end

@implementation NTKRoundedCornerMaskView

- (NTKRoundedCornerMaskView)initWithDevice:(id)device
{
  deviceCopy = device;
  v5 = [NTKRoundedCornerMaskView _maskForDevice:deviceCopy];
  [deviceCopy screenBounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = [(NTKRoundedCornerMaskView *)self _initWithFrame:v5 mask:v7, v9, v11, v13];
  return v14;
}

- (NTKRoundedCornerMaskView)initWithFrame:(CGRect)frame screenScale:(double)scale cornerRadius:(double)radius
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  radius = [NTKRoundedCornerMaskView _maskWithSize:frame.size.width screenScale:frame.size.height cornerRadius:scale, radius];
  height = [(NTKRoundedCornerMaskView *)self _initWithFrame:radius mask:x, y, width, height];

  return height;
}

- (id)_initWithFrame:(CGRect)frame mask:(id)mask
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  maskCopy = mask;
  v16.receiver = self;
  v16.super_class = NTKRoundedCornerMaskView;
  height = [(NTKRoundedCornerMaskView *)&v16 initWithFrame:x, y, width, height];
  if (height)
  {
    layer = [MEMORY[0x277CD9ED0] layer];
    maskLayer = height->_maskLayer;
    height->_maskLayer = layer;

    [(NTKRoundedCornerMaskView *)height bounds];
    [(CALayer *)height->_maskLayer setFrame:?];
    -[CALayer setContents:](height->_maskLayer, "setContents:", [maskCopy CGImage]);
    v13 = height->_maskLayer;
    layer2 = [(NTKRoundedCornerMaskView *)height layer];
    [layer2 setMask:v13];
  }

  return height;
}

+ (id)_maskForDevice:(id)device
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __43__NTKRoundedCornerMaskView__maskForDevice___block_invoke;
  v5[3] = &__block_descriptor_40_e28___UIImage_16__0__CLKDevice_8l;
  v5[4] = self;
  v3 = __43__NTKRoundedCornerMaskView__maskForDevice___block_invoke(v5, device);

  return v3;
}

id __43__NTKRoundedCornerMaskView__maskForDevice___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  os_unfair_lock_lock(&_block_invoke_lock_62);
  if (_block_invoke___cachedDevice_62)
  {
    v4 = _block_invoke___cachedDevice_62 == v3;
  }

  else
  {
    v4 = 0;
  }

  if (!v4 || (v5 = [v3 version], v5 != _block_invoke___previousCLKDeviceVersion_62))
  {
    _block_invoke___cachedDevice_62 = v3;
    _block_invoke___previousCLKDeviceVersion_62 = [v3 version];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __43__NTKRoundedCornerMaskView__maskForDevice___block_invoke_2;
    v10[3] = &__block_descriptor_40_e28___UIImage_16__0__CLKDevice_8l;
    v10[4] = *(a1 + 32);
    v6 = __43__NTKRoundedCornerMaskView__maskForDevice___block_invoke_2(v10, v3);
    v7 = _block_invoke_value_45;
    _block_invoke_value_45 = v6;
  }

  v8 = _block_invoke_value_45;
  os_unfair_lock_unlock(&_block_invoke_lock_62);

  return v8;
}

uint64_t __43__NTKRoundedCornerMaskView__maskForDevice___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 screenBounds];
  v5 = v4;
  v7 = v6;
  [v3 screenScale];
  v9 = v8;
  [v3 screenCornerRadius];
  v11 = v10;

  return [v2 _maskWithSize:v5 screenScale:v7 cornerRadius:{v9, v11}];
}

+ (id)_maskWithSize:(CGSize)size screenScale:(double)scale cornerRadius:(double)radius
{
  height = size.height;
  width = size.width;
  v8 = *MEMORY[0x277CBF348];
  v9 = *(MEMORY[0x277CBF348] + 8);
  radius = [[NTKRoundedCornerOverlayView alloc] initWithFrame:*MEMORY[0x277CBF348] screenScale:v9 cornerRadius:size.width, size.height, scale, radius];
  v17.width = width;
  v17.height = height;
  UIGraphicsBeginImageContextWithOptions(v17, 0, scale);
  CurrentContext = UIGraphicsGetCurrentContext();
  whiteColor = [MEMORY[0x277D75348] whiteColor];
  CGContextSetFillColorWithColor(CurrentContext, [whiteColor CGColor]);

  v18.origin.x = v8;
  v18.origin.y = v9;
  v18.size.width = width;
  v18.size.height = height;
  CGContextFillRect(CurrentContext, v18);
  CGContextSetBlendMode(CurrentContext, kCGBlendModeDestinationOut);
  layer = [(NTKRoundedCornerOverlayView *)radius layer];
  [layer renderInContext:CurrentContext];

  v14 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v14;
}

@end