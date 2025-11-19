@interface NTKRoundedCornerMaskView
+ (id)_maskForDevice:(id)a3;
+ (id)_maskWithSize:(CGSize)a3 screenScale:(double)a4 cornerRadius:(double)a5;
- (NTKRoundedCornerMaskView)initWithDevice:(id)a3;
- (NTKRoundedCornerMaskView)initWithFrame:(CGRect)a3 screenScale:(double)a4 cornerRadius:(double)a5;
- (id)_initWithFrame:(CGRect)a3 mask:(id)a4;
@end

@implementation NTKRoundedCornerMaskView

- (NTKRoundedCornerMaskView)initWithDevice:(id)a3
{
  v4 = a3;
  v5 = [NTKRoundedCornerMaskView _maskForDevice:v4];
  [v4 screenBounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = [(NTKRoundedCornerMaskView *)self _initWithFrame:v5 mask:v7, v9, v11, v13];
  return v14;
}

- (NTKRoundedCornerMaskView)initWithFrame:(CGRect)a3 screenScale:(double)a4 cornerRadius:(double)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = [NTKRoundedCornerMaskView _maskWithSize:a3.size.width screenScale:a3.size.height cornerRadius:a4, a5];
  v11 = [(NTKRoundedCornerMaskView *)self _initWithFrame:v10 mask:x, y, width, height];

  return v11;
}

- (id)_initWithFrame:(CGRect)a3 mask:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  v16.receiver = self;
  v16.super_class = NTKRoundedCornerMaskView;
  v10 = [(NTKRoundedCornerMaskView *)&v16 initWithFrame:x, y, width, height];
  if (v10)
  {
    v11 = [MEMORY[0x277CD9ED0] layer];
    maskLayer = v10->_maskLayer;
    v10->_maskLayer = v11;

    [(NTKRoundedCornerMaskView *)v10 bounds];
    [(CALayer *)v10->_maskLayer setFrame:?];
    -[CALayer setContents:](v10->_maskLayer, "setContents:", [v9 CGImage]);
    v13 = v10->_maskLayer;
    v14 = [(NTKRoundedCornerMaskView *)v10 layer];
    [v14 setMask:v13];
  }

  return v10;
}

+ (id)_maskForDevice:(id)a3
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __43__NTKRoundedCornerMaskView__maskForDevice___block_invoke;
  v5[3] = &__block_descriptor_40_e28___UIImage_16__0__CLKDevice_8l;
  v5[4] = a1;
  v3 = __43__NTKRoundedCornerMaskView__maskForDevice___block_invoke(v5, a3);

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

+ (id)_maskWithSize:(CGSize)a3 screenScale:(double)a4 cornerRadius:(double)a5
{
  height = a3.height;
  width = a3.width;
  v8 = *MEMORY[0x277CBF348];
  v9 = *(MEMORY[0x277CBF348] + 8);
  v10 = [[NTKRoundedCornerOverlayView alloc] initWithFrame:*MEMORY[0x277CBF348] screenScale:v9 cornerRadius:a3.width, a3.height, a4, a5];
  v17.width = width;
  v17.height = height;
  UIGraphicsBeginImageContextWithOptions(v17, 0, a4);
  CurrentContext = UIGraphicsGetCurrentContext();
  v12 = [MEMORY[0x277D75348] whiteColor];
  CGContextSetFillColorWithColor(CurrentContext, [v12 CGColor]);

  v18.origin.x = v8;
  v18.origin.y = v9;
  v18.size.width = width;
  v18.size.height = height;
  CGContextFillRect(CurrentContext, v18);
  CGContextSetBlendMode(CurrentContext, kCGBlendModeDestinationOut);
  v13 = [(NTKRoundedCornerOverlayView *)v10 layer];
  [v13 renderInContext:CurrentContext];

  v14 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v14;
}

@end