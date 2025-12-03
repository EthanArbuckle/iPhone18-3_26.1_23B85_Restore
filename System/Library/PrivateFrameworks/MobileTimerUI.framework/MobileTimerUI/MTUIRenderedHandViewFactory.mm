@interface MTUIRenderedHandViewFactory
+ (id)keyForBundle:(id)bundle imagePath:(id)path offset:(CGPoint)offset scale:(CGSize)scale;
+ (id)registerForFactoryWithBundle:(id)bundle imagePath:(id)path offset:(CGPoint)offset scale:(CGSize)scale allowCaching:(BOOL)caching;
+ (void)flushAllCaches;
+ (void)unregisterForFactory:(id)factory;
- (MTUIRenderedHandViewFactory)initWithBundle:(id)bundle imagePath:(id)path offset:(CGPoint)offset scale:(CGSize)scale allowCaching:(BOOL)caching;
- (id)imageForAngle:(double)angle viewSize:(CGSize)size;
- (id)renderImageForAngle:(double)angle viewSize:(CGSize)size;
- (void)dealloc;
@end

@implementation MTUIRenderedHandViewFactory

+ (id)keyForBundle:(id)bundle imagePath:(id)path offset:(CGPoint)offset scale:(CGSize)scale
{
  height = scale.height;
  width = scale.width;
  y = offset.y;
  x = offset.x;
  pathCopy = path;
  bundleIdentifier = [bundle bundleIdentifier];
  v23.x = x;
  v23.y = y;
  v13 = NSStringFromCGPoint(v23);
  v24.width = width;
  v24.height = height;
  v14 = NSStringFromCGSize(v24);
  v15 = [bundleIdentifier length];
  v16 = [pathCopy length] + v15;
  v17 = [v13 length];
  v18 = v17 + [v14 length];
  v19 = [objc_alloc(MEMORY[0x277CCAB68]) initWithCapacity:v16 + v18];
  [v19 appendString:bundleIdentifier];
  [v19 appendString:pathCopy];

  [v19 appendString:v13];
  [v19 appendString:v14];
  v20 = [objc_alloc(MEMORY[0x277CCACA8]) initWithString:v19];

  return v20;
}

+ (id)registerForFactoryWithBundle:(id)bundle imagePath:(id)path offset:(CGPoint)offset scale:(CGSize)scale allowCaching:(BOOL)caching
{
  cachingCopy = caching;
  height = scale.height;
  width = scale.width;
  y = offset.y;
  x = offset.x;
  bundleCopy = bundle;
  pathCopy = path;
  if (!__factories)
  {
    v16 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v17 = __factories;
    __factories = v16;

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v19 = [defaultCenter addObserverForName:*MEMORY[0x277D76670] object:0 queue:0 usingBlock:&__block_literal_global];
    v20 = __lowMemoryObserver;
    __lowMemoryObserver = v19;
  }

  v21 = [self keyForBundle:bundleCopy imagePath:pathCopy offset:x scale:{y, width, height}];
  height = [__factories objectForKey:v21];
  if (!height)
  {
    height = [[MTUIRenderedHandViewFactory alloc] initWithBundle:bundleCopy imagePath:pathCopy offset:cachingCopy scale:x allowCaching:y, width, height];
    if (!height)
    {
      goto LABEL_7;
    }

    [__factories setObject:height forKey:v21];
  }

  [(MTUIRenderedHandViewFactory *)height setRegisteredClientsCount:[(MTUIRenderedHandViewFactory *)height registeredClientsCount]+ 1];
LABEL_7:

  return height;
}

+ (void)unregisterForFactory:(id)factory
{
  factoryCopy = factory;
  [factoryCopy setRegisteredClientsCount:{objc_msgSend(factoryCopy, "registeredClientsCount") - 1}];
  if (![factoryCopy registeredClientsCount])
  {
    v3 = __factories;
    v4 = [factoryCopy key];
    [v3 removeObjectForKey:v4];
  }

  if (![__factories count])
  {
    v5 = __factories;
    __factories = 0;

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter removeObserver:__lowMemoryObserver];

    v7 = __lowMemoryObserver;
    __lowMemoryObserver = 0;

    __lowMemory = 0;
  }
}

+ (void)flushAllCaches
{
  allValues = [__factories allValues];
  [allValues makeObjectsPerformSelector:sel_flushCache];
}

- (MTUIRenderedHandViewFactory)initWithBundle:(id)bundle imagePath:(id)path offset:(CGPoint)offset scale:(CGSize)scale allowCaching:(BOOL)caching
{
  height = scale.height;
  width = scale.width;
  y = offset.y;
  x = offset.x;
  bundleCopy = bundle;
  pathCopy = path;
  v31.receiver = self;
  v31.super_class = MTUIRenderedHandViewFactory;
  v17 = [(MTUIRenderedHandViewFactory *)&v31 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_resourcesBundle, bundle);
    objc_storeStrong(&v18->_imagePath, path);
    v18->_offset.x = x;
    v18->_offset.y = y;
    v19 = MEMORY[0x277CBF3A8];
    v18->_scale.width = width;
    v18->_scale.height = height;
    v18->_viewSize = *v19;
    v18->_allowCaching = caching;
    v20 = objc_alloc_init(MEMORY[0x277CBEB38]);
    angleCache = v18->_angleCache;
    v18->_angleCache = v20;

    v22 = [(NSBundle *)v18->_resourcesBundle pathForResource:v18->_imagePath ofType:@"pdf"];
    if (v22)
    {
      v23 = CFURLCreateWithFileSystemPath(*MEMORY[0x277CBECE8], v22, kCFURLPOSIXPathStyle, 0);
      v24 = v18;
      if (v23)
      {
        v25 = v23;
        v26 = CGPDFDocumentCreateWithURL(v23);
        if (v26)
        {
          v27 = v26;
          Page = CGPDFDocumentGetPage(v26, 1uLL);
          v18->_page = CGPDFPageRetain(Page);
          CFRelease(v27);
        }

        CFRelease(v25);
        v24 = v18;
      }
    }

    else
    {
      v24 = 0;
    }

    v29 = v24;
  }

  else
  {
    v29 = 0;
  }

  return v29;
}

- (void)dealloc
{
  CGPDFPageRelease(self->_page);
  v3.receiver = self;
  v3.super_class = MTUIRenderedHandViewFactory;
  [(MTUIRenderedHandViewFactory *)&v3 dealloc];
}

- (id)renderImageForAngle:(double)angle viewSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  v10 = v9;
  v22.width = width;
  v22.height = height;
  UIGraphicsBeginImageContextWithOptions(v22, 0, v10);

  CurrentContext = UIGraphicsGetCurrentContext();
  v12 = MTUIRoundToPixel(width * 0.5);
  v13 = MTUIRoundToPixel(height * 0.5);
  CGContextTranslateCTM(CurrentContext, v12, v13);
  CGContextRotateCTM(CurrentContext, angle + 3.14159265);
  BoxRect = CGPDFPageGetBoxRect(self->_page, kCGPDFMediaBox);
  v14 = BoxRect.size.width;
  v15 = self->_scale.width;
  v16 = self->_scale.height;
  if (v15 != *MEMORY[0x277CBF3A8] || v16 != *(MEMORY[0x277CBF3A8] + 8))
  {
    v14 = v15 * BoxRect.size.width;
    CGContextScaleCTM(CurrentContext, v15, v16);
  }

  v18 = MTUIRoundToPixel(v14 * -0.5);
  CGContextTranslateCTM(CurrentContext, v18 + self->_offset.x, self->_offset.y);
  CGContextDrawPDFPage(CurrentContext, self->_page);
  v19 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v19;
}

- (id)imageForAngle:(double)angle viewSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v8 = self->_allowCaching & (__lowMemory ^ 1);
  if (v8)
  {
    v10 = self->_viewSize.width;
    v9 = self->_viewSize.height;
    if (v10 == *MEMORY[0x277CBF3A8] && v9 == *(MEMORY[0x277CBF3A8] + 8))
    {
      self->_viewSize.width = width;
      self->_viewSize.height = size.height;
      v9 = size.height;
      v10 = width;
    }

    if (v10 == width && v9 == size.height)
    {
      *&v9 = angle;
      v13 = [MEMORY[0x277CCABB0] numberWithFloat:v9];
      height = [(NSMutableDictionary *)self->_angleCache objectForKey:v13];
      if (height)
      {
        goto LABEL_18;
      }
    }

    else
    {
      [(MTUIRenderedHandViewFactory *)self flushCache];
      v13 = 0;
      self->_allowCaching = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  height = [(MTUIRenderedHandViewFactory *)self renderImageForAngle:angle viewSize:width, height];
  if (v8)
  {
    [(NSMutableDictionary *)self->_angleCache removeAllObjects];
    if (height)
    {
      [(NSMutableDictionary *)self->_angleCache setObject:height forKey:v13];
    }
  }

LABEL_18:

  return height;
}

@end