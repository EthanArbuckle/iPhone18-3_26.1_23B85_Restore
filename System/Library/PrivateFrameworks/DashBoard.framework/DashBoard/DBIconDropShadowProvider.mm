@interface DBIconDropShadowProvider
+ (void)invalidate;
- (DBIconDropShadowProvider)init;
- (void)_cleanupImages;
- (void)_shadow_drawing_queue_generateDarkStyleShadow;
- (void)_shadow_drawing_queue_generateLightStyleShadow;
- (void)dealloc;
- (void)imageForTraitCollection:(id)collection completion:(id)completion;
- (void)setIconImage:(id)image;
@end

@implementation DBIconDropShadowProvider

- (void)dealloc
{
  [(DBIconDropShadowProvider *)self _cleanupImages];
  v3.receiver = self;
  v3.super_class = DBIconDropShadowProvider;
  [(DBIconDropShadowProvider *)&v3 dealloc];
}

- (void)_cleanupImages
{
  lightStyleShadowImage = self->_lightStyleShadowImage;
  if (lightStyleShadowImage)
  {
    CGImageRelease(lightStyleShadowImage);
    self->_lightStyleShadowImage = 0;
  }
}

- (DBIconDropShadowProvider)init
{
  v4.receiver = self;
  v4.super_class = DBIconDropShadowProvider;
  v2 = [(DBIconDropShadowProvider *)&v4 init];
  if (v2 && init_onceToken != -1)
  {
    [DBIconDropShadowProvider init];
  }

  return v2;
}

+ (void)invalidate
{
  if (_darkStyleShadowImage)
  {
    CGImageRelease(_darkStyleShadowImage);
    _darkStyleShadowImage = 0;
  }
}

void __32__DBIconDropShadowProvider_init__block_invoke()
{
  v0 = [MEMORY[0x277CBF740] context];
  v1 = _ciContext;
  _ciContext = v0;

  v4 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, -1);
  v2 = dispatch_queue_create("com.apple.carplayapp.shadowdrawing", v4);
  v3 = _shadowDrawingQueue;
  _shadowDrawingQueue = v2;
}

- (void)imageForTraitCollection:(id)collection completion:(id)completion
{
  collectionCopy = collection;
  completionCopy = completion;
  userInterfaceStyle = [collectionCopy userInterfaceStyle];
  if (userInterfaceStyle && (v9 = userInterfaceStyle, [collectionCopy userInterfaceIdiom] == 3))
  {
    if (v9 == 1)
    {
      lightStyleShadowImage = self->_lightStyleShadowImage;
      if (!lightStyleShadowImage)
      {
        objc_initWeak(&location, self);
        v11 = _shadowDrawingQueue;
        v12 = block;
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __63__DBIconDropShadowProvider_imageForTraitCollection_completion___block_invoke;
        block[3] = &unk_278F02AE0;
        objc_copyWeak(&v20, &location);
        v19 = completionCopy;
        dispatch_async(v11, block);
        v13 = v19;
LABEL_11:

        objc_destroyWeak(v12 + 5);
        objc_destroyWeak(&location);
        goto LABEL_9;
      }
    }

    else
    {
      lightStyleShadowImage = _darkStyleShadowImage;
      if (!_darkStyleShadowImage)
      {
        objc_initWeak(&location, self);
        v14 = _shadowDrawingQueue;
        v12 = v15;
        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = __63__DBIconDropShadowProvider_imageForTraitCollection_completion___block_invoke_2;
        v15[3] = &unk_278F02AE0;
        objc_copyWeak(&v17, &location);
        v16 = completionCopy;
        dispatch_async(v14, v15);
        v13 = v16;
        goto LABEL_11;
      }
    }

    (*(completionCopy + 2))(completionCopy, lightStyleShadowImage);
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }

LABEL_9:
}

void __63__DBIconDropShadowProvider_imageForTraitCollection_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _shadow_drawing_queue_generateLightStyleShadow];

  v3 = *(a1 + 32);
  v4 = objc_loadWeakRetained((a1 + 40));
  (*(v3 + 16))(v3, [v4 lightStyleShadowImage]);
}

uint64_t __63__DBIconDropShadowProvider_imageForTraitCollection_completion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _shadow_drawing_queue_generateDarkStyleShadow];

  v3 = *(*(a1 + 32) + 16);

  return v3();
}

- (void)setIconImage:(id)image
{
  imageCopy = image;
  p_iconImage = &self->_iconImage;
  if (self->_iconImage != imageCopy)
  {
    v7 = imageCopy;
    objc_storeStrong(p_iconImage, image);
    p_iconImage = [(DBIconDropShadowProvider *)self _cleanupImages];
    imageCopy = v7;
  }

  MEMORY[0x2821F96F8](p_iconImage, imageCopy);
}

- (void)_shadow_drawing_queue_generateLightStyleShadow
{
  dispatch_assert_queue_V2(_shadowDrawingQueue);
  iconImage = [(DBIconDropShadowProvider *)self iconImage];
  if (iconImage && !self->_lightStyleShadowImage)
  {
    v42 = iconImage;
    [iconImage size];
    v5 = v4;
    [v42 size];
    v7 = v6;
    [v42 size];
    v9 = v8;
    [v42 scale];
    v11 = v9 * v10;
    [v42 size];
    v13 = v12;
    [v42 scale];
    v15 = v13 * v14;
    if (v5 >= v7)
    {
      v16 = v7;
    }

    else
    {
      v16 = v5;
    }

    v17 = v16 * 0.26;
    [v42 size];
    v19 = v18;
    v21 = v20;
    [v42 scale];
    v23 = v22;
    v44.width = v19;
    v44.height = v21;
    UIGraphicsBeginImageContextWithOptions(v44, 0, v23);
    CurrentContext = UIGraphicsGetCurrentContext();
    v25 = [MEMORY[0x277D75208] bezierPathWithRoundedRect:0.0 cornerRadius:{0.0, v5, v7, v17}];
    [v25 addClip];

    [v42 drawInRect:0 blendMode:0.0 alpha:{0.0, v5, v7, 0.25}];
    blackColor = [MEMORY[0x277D75348] blackColor];
    v27 = [blackColor colorWithAlphaComponent:0.100000001];
    [v27 set];

    v45.origin.x = 0.0;
    v45.origin.y = 0.0;
    v45.size.width = v5;
    v45.size.height = v7;
    CGContextFillRect(CurrentContext, v45);
    Data = CGBitmapContextGetData(CurrentContext);
    BytesPerRow = CGBitmapContextGetBytesPerRow(CurrentContext);
    bytesPerRow = [MEMORY[0x277CBEA90] dataWithBytes:Data length:CGBitmapContextGetHeight(CurrentContext) * BytesPerRow];
    ColorSpace = CGBitmapContextGetColorSpace(CurrentContext);
    v32 = objc_alloc(MEMORY[0x277CBF758]);
    v33 = *MEMORY[0x277CBF970];
    v34 = [v32 initWithBitmapData:bytesPerRow bytesPerRow:BytesPerRow size:v33 format:ColorSpace colorSpace:{v11, v15}];
    v35 = [MEMORY[0x277CBF750] filterWithName:@"CIGaussianBlur"];
    [v35 setDefaults];
    [v35 setValue:v34 forKey:*MEMORY[0x277CBFAF0]];
    v36 = MEMORY[0x277CCABB0];
    [v42 scale];
    v38 = v37 * 4.0;
    *&v38 = v38;
    v39 = [v36 numberWithFloat:v38];
    [v35 setValue:v39 forKey:@"inputRadius"];

    v40 = [v35 valueForKey:*MEMORY[0x277CBFB50]];

    v41 = _ciContext;
    [v40 extent];
    self->_lightStyleShadowImage = [v41 createCGImage:v40 fromRect:v33 format:ColorSpace colorSpace:?];

    iconImage = v42;
  }
}

- (void)_shadow_drawing_queue_generateDarkStyleShadow
{
  dispatch_assert_queue_V2(_shadowDrawingQueue);
  layer = [MEMORY[0x277CD9ED0] layer];
  iconImage = [(DBIconDropShadowProvider *)self iconImage];
  v4 = iconImage;
  if (iconImage && !_darkStyleShadowImage)
  {
    [iconImage scale];
    [layer setContentsScale:?];
    [v4 size];
    v7 = v5 * 1.5;
    v8 = v6 * 1.5;
    if (v5 >= v6)
    {
      v5 = v6;
    }

    v9 = v5 * 0.26;
    [v4 size];
    v11 = v10;
    [v4 size];
    v13 = v12;
    [layer setFrame:{0.0, 0.0, v7, v8}];
    layer2 = [MEMORY[0x277CD9ED0] layer];
    v15 = [MEMORY[0x277D75348] colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.2];
    [layer2 setBackgroundColor:{objc_msgSend(v15, "CGColor")}];
    [layer2 setShadowColor:{objc_msgSend(v15, "CGColor")}];
    [layer2 setShadowRadius:4.0];
    LODWORD(v16) = 1.0;
    [layer2 setShadowOpacity:v16];
    [layer2 setCornerRadius:v9];
    [layer2 setCornerCurve:*MEMORY[0x277CDA138]];
    [layer2 setShadowPathIsBounds:1];
    [layer2 setFrame:{1015.0, 0.0, v11, v13}];
    [layer2 setShadowOffset:{-1000.0, 12.0}];
    [layer addSublayer:layer2];
    [v4 scale];
    v18 = v17;
    v22.width = v7;
    v22.height = v8;
    UIGraphicsBeginImageContextWithOptions(v22, 0, v18);
    CurrentContext = UIGraphicsGetCurrentContext();
    [layer renderInContext:CurrentContext];
    _darkStyleShadowImage = CGBitmapContextCreateImage(CurrentContext);
  }
}

@end