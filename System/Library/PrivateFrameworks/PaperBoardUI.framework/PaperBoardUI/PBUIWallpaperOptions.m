@interface PBUIWallpaperOptions
+ (id)optionsWithName:(id)a3 parallaxFactor:(double)a4 zoomScale:(double)a5 supportsCropping:(BOOL)a6 cropRect:(CGRect)a7 portrait:(BOOL)a8;
+ (id)optionsWithName:(id)a3 parallaxFactor:(double)a4 zoomScale:(double)a5 supportsCropping:(BOOL)a6 cropRect:(CGRect)a7 portrait:(BOOL)a8 hasVideo:(BOOL)a9 stillTimeInVideo:(double)a10;
+ (id)optionsWithName:(id)a3 parallaxFactor:(double)a4 zoomScale:(double)a5 supportsCropping:(BOOL)a6 cropRect:(CGRect)a7 portrait:(BOOL)a8 hasVideo:(BOOL)a9 stillTimeInVideo:(double)a10 wallpaperKitData:(id)a11;
+ (id)optionsWithName:(id)a3 parallaxFactor:(double)a4 zoomScale:(double)a5 supportsCropping:(BOOL)a6 cropRect:(CGRect)a7 portrait:(BOOL)a8 hasVideo:(BOOL)a9 stillTimeInVideo:(double)a10 wallpaperMode:(int64_t)a11 wallpaperStatus:(int64_t)a12;
+ (id)optionsWithName:(id)a3 parallaxFactor:(double)a4 zoomScale:(double)a5 supportsCropping:(BOOL)a6 cropRect:(CGRect)a7 portrait:(BOOL)a8 hasVideo:(BOOL)a9 stillTimeInVideo:(double)a10 wallpaperMode:(int64_t)a11 wallpaperStatus:(int64_t)a12 wallpaperKitData:(id)a13;
+ (id)optionsWithName:(id)a3 parallaxFactor:(double)a4 zoomScale:(double)a5 supportsCropping:(BOOL)a6 cropRect:(CGRect)a7 supportsRotation:(BOOL)a8 rotationAngle:(double)a9 portrait:(BOOL)a10 hasVideo:(BOOL)a11 stillTimeInVideo:(double)a12 wallpaperMode:(int64_t)a13 wallpaperStatus:(int64_t)a14;
- (BOOL)isEqual:(id)a3;
- (BOOL)isLooselyEqualToWallpaperOptions:(id)a3;
- (BOOL)writeToURL:(id)a3 error:(id *)a4;
- (CGRect)cropRect;
- (CGSize)bestWallpaperSizeForWallpaperSize:(CGSize)a3 wallpaperScale:(double)a4 deviceType:(int64_t)a5 imageScale:(double)a6;
- (NSData)persistentDataRepresentation;
- (PBUIWallpaperOptions)init;
- (PBUIWallpaperOptions)initWithCoder:(id)a3;
- (PBUIWallpaperOptions)initWithContentsOfURL:(id)a3;
- (PBUIWallpaperOptions)initWithName:(id)a3 parallaxFactor:(double)a4 zoomScale:(double)a5 supportsCropping:(BOOL)a6 cropRect:(CGRect)a7 supportsRotation:(BOOL)a8 rotationAngle:(double)a9 portrait:(BOOL)a10 hasVideo:(BOOL)a11 stillTimeInVideo:(double)a12 wallpaperMode:(int64_t)a13 wallpaperStatus:(int64_t)a14 wallpaperKitData:(id)a15;
- (PBUIWallpaperOptions)initWithPersistentDataRepresentation:(id)a3;
- (PBUIWallpaperOptions)initWithStream:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)persistentPropertyList;
- (id)succinctDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PBUIWallpaperOptions

+ (id)optionsWithName:(id)a3 parallaxFactor:(double)a4 zoomScale:(double)a5 supportsCropping:(BOOL)a6 cropRect:(CGRect)a7 portrait:(BOOL)a8
{
  v8 = a8;
  height = a7.size.height;
  width = a7.size.width;
  y = a7.origin.y;
  x = a7.origin.x;
  v13 = a6;
  v17 = a3;
  v18 = [[a1 alloc] initWithName:v17 parallaxFactor:v13 zoomScale:0 supportsCropping:v8 cropRect:0 supportsRotation:0 rotationAngle:a4 portrait:a5 hasVideo:x stillTimeInVideo:y wallpaperMode:width wallpaperStatus:height wallpaperKitData:{0.0, 0.0, 0, 0}];

  return v18;
}

+ (id)optionsWithName:(id)a3 parallaxFactor:(double)a4 zoomScale:(double)a5 supportsCropping:(BOOL)a6 cropRect:(CGRect)a7 portrait:(BOOL)a8 hasVideo:(BOOL)a9 stillTimeInVideo:(double)a10
{
  v11 = a9;
  v12 = a8;
  height = a7.size.height;
  width = a7.size.width;
  y = a7.origin.y;
  x = a7.origin.x;
  v17 = a6;
  v21 = a3;
  v22 = [[a1 alloc] initWithName:v21 parallaxFactor:v17 zoomScale:0 supportsCropping:v12 cropRect:v11 supportsRotation:0 rotationAngle:a4 portrait:a5 hasVideo:x stillTimeInVideo:y wallpaperMode:width wallpaperStatus:height wallpaperKitData:{0.0, a10, 0, 0}];

  return v22;
}

+ (id)optionsWithName:(id)a3 parallaxFactor:(double)a4 zoomScale:(double)a5 supportsCropping:(BOOL)a6 cropRect:(CGRect)a7 portrait:(BOOL)a8 hasVideo:(BOOL)a9 stillTimeInVideo:(double)a10 wallpaperKitData:(id)a11
{
  v12 = a9;
  v13 = a8;
  height = a7.size.height;
  width = a7.size.width;
  y = a7.origin.y;
  x = a7.origin.x;
  v18 = a6;
  v23 = a11;
  v24 = a3;
  v25 = [[a1 alloc] initWithName:v24 parallaxFactor:v18 zoomScale:0 supportsCropping:v13 cropRect:v12 supportsRotation:0 rotationAngle:a4 portrait:a5 hasVideo:x stillTimeInVideo:y wallpaperMode:width wallpaperStatus:height wallpaperKitData:{0.0, a10, 0, v23}];

  return v25;
}

+ (id)optionsWithName:(id)a3 parallaxFactor:(double)a4 zoomScale:(double)a5 supportsCropping:(BOOL)a6 cropRect:(CGRect)a7 portrait:(BOOL)a8 hasVideo:(BOOL)a9 stillTimeInVideo:(double)a10 wallpaperMode:(int64_t)a11 wallpaperStatus:(int64_t)a12
{
  v15 = a9;
  v16 = a8;
  height = a7.size.height;
  width = a7.size.width;
  y = a7.origin.y;
  x = a7.origin.x;
  v21 = a6;
  v25 = a3;
  v26 = [[a1 alloc] initWithName:v25 parallaxFactor:v21 zoomScale:0 supportsCropping:v16 cropRect:v15 supportsRotation:a11 rotationAngle:a4 portrait:a5 hasVideo:x stillTimeInVideo:y wallpaperMode:width wallpaperStatus:height wallpaperKitData:{0.0, a10, a12, 0}];

  return v26;
}

+ (id)optionsWithName:(id)a3 parallaxFactor:(double)a4 zoomScale:(double)a5 supportsCropping:(BOOL)a6 cropRect:(CGRect)a7 supportsRotation:(BOOL)a8 rotationAngle:(double)a9 portrait:(BOOL)a10 hasVideo:(BOOL)a11 stillTimeInVideo:(double)a12 wallpaperMode:(int64_t)a13 wallpaperStatus:(int64_t)a14
{
  v15 = a11;
  v16 = a10;
  v17 = a8;
  v18 = a6;
  height = a7.size.height;
  width = a7.size.width;
  y = a7.origin.y;
  x = a7.origin.x;
  v28 = a3;
  v29 = [[a1 alloc] initWithName:v28 parallaxFactor:v18 zoomScale:v17 supportsCropping:v16 cropRect:v15 supportsRotation:a13 rotationAngle:a4 portrait:a5 hasVideo:x stillTimeInVideo:y wallpaperMode:width wallpaperStatus:height wallpaperKitData:{a9, a12, a14, 0}];

  return v29;
}

+ (id)optionsWithName:(id)a3 parallaxFactor:(double)a4 zoomScale:(double)a5 supportsCropping:(BOOL)a6 cropRect:(CGRect)a7 portrait:(BOOL)a8 hasVideo:(BOOL)a9 stillTimeInVideo:(double)a10 wallpaperMode:(int64_t)a11 wallpaperStatus:(int64_t)a12 wallpaperKitData:(id)a13
{
  v15 = a9;
  v16 = a8;
  v17 = a6;
  height = a7.size.height;
  width = a7.size.width;
  y = a7.origin.y;
  x = a7.origin.x;
  v27 = a13;
  v28 = a3;
  v29 = [[a1 alloc] initWithName:v28 parallaxFactor:v17 zoomScale:0 supportsCropping:v16 cropRect:v15 supportsRotation:a11 rotationAngle:a4 portrait:a5 hasVideo:x stillTimeInVideo:y wallpaperMode:width wallpaperStatus:height wallpaperKitData:{0.0, a10, a12, v27}];

  return v29;
}

- (PBUIWallpaperOptions)initWithName:(id)a3 parallaxFactor:(double)a4 zoomScale:(double)a5 supportsCropping:(BOOL)a6 cropRect:(CGRect)a7 supportsRotation:(BOOL)a8 rotationAngle:(double)a9 portrait:(BOOL)a10 hasVideo:(BOOL)a11 stillTimeInVideo:(double)a12 wallpaperMode:(int64_t)a13 wallpaperStatus:(int64_t)a14 wallpaperKitData:(id)a15
{
  height = a7.size.height;
  width = a7.size.width;
  y = a7.origin.y;
  x = a7.origin.x;
  v29 = a3;
  v30 = a15;
  v38.receiver = self;
  v38.super_class = PBUIWallpaperOptions;
  v31 = [(PBUIWallpaperOptions *)&v38 init];
  if (v31)
  {
    v32 = [v29 copy];
    name = v31->_name;
    v31->_name = v32;

    v31->_cropRect.origin.x = x;
    v31->_cropRect.origin.y = y;
    v31->_cropRect.size.width = width;
    v31->_cropRect.size.height = height;
    v31->_supportsCropping = a6;
    v31->_supportsRotation = a8;
    v31->_parallaxFactor = a4;
    v31->_zoomScale = a5;
    v31->_portrait = a10;
    v31->_hasVideo = a11;
    v31->_rotationAngle = a9;
    v31->_stillTimeInVideo = a12;
    v31->_wallpaperMode = a13;
    v31->_wallpaperStatus = a14;
    v34 = [v30 copy];
    wallpaperKitData = v31->_wallpaperKitData;
    v31->_wallpaperKitData = v34;

    v36 = v31;
  }

  return v31;
}

- (PBUIWallpaperOptions)init
{
  v8.receiver = self;
  v8.super_class = PBUIWallpaperOptions;
  result = [(PBUIWallpaperOptions *)&v8 init];
  if (result)
  {
    __asm { FMOV            V0.2D, #1.0 }

    *&result->_parallaxFactor = _Q0;
    result->_rotationAngle = 0.0;
    result->_portrait = 1;
  }

  return result;
}

- (PBUIWallpaperOptions)initWithContentsOfURL:(id)a3
{
  v4 = MEMORY[0x277CBEAE0];
  v5 = a3;
  v6 = [[v4 alloc] initWithURL:v5];

  [v6 open];
  v7 = [(PBUIWallpaperOptions *)self initWithStream:v6];
  [v6 close];

  return v7;
}

- (PBUIWallpaperOptions)initWithPersistentDataRepresentation:(id)a3
{
  v4 = MEMORY[0x277CBEAE0];
  v5 = a3;
  v6 = [[v4 alloc] initWithData:v5];

  [v6 open];
  v7 = [(PBUIWallpaperOptions *)self initWithStream:v6];
  [v6 close];

  return v7;
}

- (PBUIWallpaperOptions)initWithStream:(id)a3
{
  v4 = [MEMORY[0x277CCAC58] propertyListWithStream:a3 options:0 format:0 error:0];
  if (v4)
  {
    v5 = [(PBUIWallpaperOptions *)self init];
    if (v5)
    {
      v6 = [v4 objectForKey:@"Name"];
      v7 = objc_opt_self();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v9 = [v6 copy];
        name = v5->_name;
        v5->_name = v9;
      }

      v11 = [v4 objectForKey:@"CropRect"];
      v12 = objc_opt_self();
      v13 = objc_opt_isKindOfClass();

      if (v13)
      {
        v5->_cropRect = CGRectFromString(v11);
      }

      v14 = [v4 objectForKey:@"RotationAngle"];
      if (objc_opt_respondsToSelector())
      {
        [v14 doubleValue];
        v5->_rotationAngle = v15;
      }

      v16 = [v4 objectForKey:@"ParallaxFactor"];
      if (objc_opt_respondsToSelector())
      {
        [v16 doubleValue];
        v5->_parallaxFactor = v17;
      }

      v18 = [v4 objectForKey:@"SupportsCropping"];
      if (objc_opt_respondsToSelector())
      {
        v5->_supportsCropping = [v18 BOOLValue];
      }

      v19 = [v4 objectForKey:@"SupportsRotation"];
      if (objc_opt_respondsToSelector())
      {
        v5->_supportsRotation = [v19 BOOLValue];
      }

      v38 = v14;
      v20 = [v4 objectForKey:@"MagnifyEnabled"];
      if (objc_opt_respondsToSelector())
      {
        v5->_magnifyEnabled = [v20 BOOLValue];
      }

      v34 = v20;
      v37 = v16;
      v21 = [v4 objectForKey:@"ZoomScale"];
      if (objc_opt_respondsToSelector())
      {
        [v21 doubleValue];
        v5->_zoomScale = v22;
      }

      v40 = v6;
      v23 = [v4 objectForKey:@"Portrait"];
      if (objc_opt_respondsToSelector())
      {
        v5->_portrait = [v23 BOOLValue];
      }

      v24 = [v4 objectForKey:@"HasVideo"];
      if (objc_opt_respondsToSelector())
      {
        v5->_hasVideo = [v24 BOOLValue];
      }

      v39 = v11;
      v25 = [v4 objectForKey:@"StillTimeInVideo"];
      if (objc_opt_respondsToSelector())
      {
        [v25 doubleValue];
        v5->_stillTimeInVideo = v26;
      }

      v35 = v19;
      v36 = v18;
      v27 = [v4 objectForKey:@"WallpaperMode"];
      if (objc_opt_respondsToSelector())
      {
        [v27 doubleValue];
        v5->_wallpaperMode = v28;
      }

      v29 = [v4 objectForKey:@"WallpaperKitData"];
      v30 = objc_opt_self();
      v31 = objc_opt_isKindOfClass();

      if (v31)
      {
        objc_storeStrong(&v5->_wallpaperKitData, v29);
      }
    }

    self = v5;
    v32 = self;
  }

  else
  {
    v32 = 0;
  }

  return v32;
}

- (CGSize)bestWallpaperSizeForWallpaperSize:(CGSize)a3 wallpaperScale:(double)a4 deviceType:(int64_t)a5 imageScale:(double)a6
{
  height = a3.height;
  width = a3.width;
  [(PBUIWallpaperOptions *)self cropRect];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  [(PBUIWallpaperOptions *)self zoomScale];
  memset(&v50, 0, sizeof(v50));
  CGAffineTransformMakeScale(&v50, v19, v19);
  memset(&v49, 0, sizeof(v49));
  CGAffineTransformMakeScale(&v49, a6, a6);
  v48 = v50;
  v52.origin.x = v12;
  v52.origin.y = v14;
  v52.size.width = v16;
  v52.size.height = v18;
  v53 = CGRectApplyAffineTransform(v52, &v48);
  v20 = v53.size.height;
  v48 = v49;
  v42 = v53.size.width;
  v54 = CGRectApplyAffineTransform(v53, &v48);
  x = v54.origin.x;
  y = v54.origin.y;
  v22 = v54.size.width;
  v23 = v54.size.height;
  [(PBUIWallpaperOptions *)self parallaxFactor];
  [PBUIWallpaperParallaxSettings bestWallpaperSizeForWallpaperSize:a5 deviceType:[(PBUIWallpaperOptions *)self isPortrait] parallaxFactor:width portrait:height, v24];
  v26 = v25;
  v28 = v27;
  memset(&v48, 0, sizeof(v48));
  CGAffineTransformMakeScale(&v48, a4, a4);
  v29 = v28 * v48.c + v48.a * v26;
  v30 = v28 * v48.d + v48.b * v26;
  if (v29 < v22 && v30 < v23)
  {
    v55.origin.x = x;
    v55.origin.y = y;
    v55.size.width = v22;
    v55.size.height = v23;
    v33 = CGRectGetWidth(v55);
    v56.origin.x = x;
    v56.origin.y = y;
    v56.size.width = v22;
    v56.size.height = v23;
    v34 = v33 / CGRectGetHeight(v56);
    v57.origin.x = x;
    v57.origin.y = y;
    v57.size.width = v22;
    v57.size.height = v23;
    v35 = CGRectGetWidth(v57);
    v58.origin.x = x;
    v58.origin.y = y;
    v58.size.width = v22;
    v58.size.height = v23;
    v36 = CGRectGetHeight(v58);
    v37 = v35 <= v36;
    if (v35 <= v36)
    {
      v38 = v30 * v34;
    }

    else
    {
      v38 = v29;
    }

    v45 = v38;
    if (v37)
    {
      v39 = v30;
    }

    else
    {
      v39 = v29 * v34;
    }

    v43 = v39;
    v46 = v49;
    CGAffineTransformInvert(&v47, &v46);
    v32 = vmlaq_n_f64(vmulq_n_f64(*&v47.c, v43), *&v47.a, v45);
    v20 = v32.f64[1];
  }

  else
  {
    v32.f64[0] = v42;
  }

  v40 = v20;
  result.width = v32.f64[0];
  result.height = v40;
  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(PBUIWallpaperOptions);
  if (v4)
  {
    v5 = [(NSString *)self->_name copy];
    name = v4->_name;
    v4->_name = v5;

    size = self->_cropRect.size;
    v4->_cropRect.origin = self->_cropRect.origin;
    v4->_cropRect.size = size;
    v4->_rotationAngle = self->_rotationAngle;
    v4->_parallaxFactor = self->_parallaxFactor;
    v4->_supportsCropping = self->_supportsCropping;
    v4->_supportsRotation = self->_supportsRotation;
    v4->_magnifyEnabled = self->_magnifyEnabled;
    v4->_zoomScale = self->_zoomScale;
    v4->_portrait = self->_portrait;
    v4->_hasVideo = self->_hasVideo;
    v4->_stillTimeInVideo = self->_stillTimeInVideo;
    v4->_wallpaperMode = self->_wallpaperMode;
    v8 = [(NSDictionary *)self->_wallpaperKitData copy];
    wallpaperKitData = v4->_wallpaperKitData;
    v4->_wallpaperKitData = v8;

    v10 = v4;
  }

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v45 = 1;
  }

  else
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = v4;
      v8 = [(PBUIWallpaperOptions *)self name];
      v9 = [(PBUIWallpaperOptions *)v7 name];
      v10 = BSEqualObjects();

      if (v10 && ([(PBUIWallpaperOptions *)self cropRect], v12 = v11, v14 = v13, v16 = v15, v18 = v17, [(PBUIWallpaperOptions *)v7 cropRect], v48.origin.x = v19, v48.origin.y = v20, v48.size.width = v21, v48.size.height = v22, v47.origin.x = v12, v47.origin.y = v14, v47.size.width = v16, v47.size.height = v18, CGRectEqualToRect(v47, v48)) && ([(PBUIWallpaperOptions *)self rotationAngle], v24 = v23, [(PBUIWallpaperOptions *)v7 rotationAngle], v24 == v25) && ([(PBUIWallpaperOptions *)self parallaxFactor], v27 = v26, [(PBUIWallpaperOptions *)v7 parallaxFactor], v27 == v28) && (v29 = [(PBUIWallpaperOptions *)self supportsCropping], v29 == [(PBUIWallpaperOptions *)v7 supportsCropping]) && (v30 = [(PBUIWallpaperOptions *)self supportsRotation], v30 == [(PBUIWallpaperOptions *)v7 supportsRotation]) && (v31 = [(PBUIWallpaperOptions *)self isMagnifyEnabled], v31 == [(PBUIWallpaperOptions *)v7 isMagnifyEnabled]) && ([(PBUIWallpaperOptions *)self zoomScale], v33 = v32, [(PBUIWallpaperOptions *)v7 zoomScale], v33 == v34) && (v35 = [(PBUIWallpaperOptions *)self isPortrait], v35 == [(PBUIWallpaperOptions *)v7 isPortrait]) && (v36 = [(PBUIWallpaperOptions *)self hasVideo], v36 == [(PBUIWallpaperOptions *)v7 hasVideo]) && ([(PBUIWallpaperOptions *)self stillTimeInVideo], v38 = v37, [(PBUIWallpaperOptions *)v7 stillTimeInVideo], v38 == v39) && (v40 = [(PBUIWallpaperOptions *)self wallpaperMode], v40 == [(PBUIWallpaperOptions *)v7 wallpaperMode]))
      {
        v41 = [(PBUIWallpaperOptions *)self wallpaperKitData];
        if (v41)
        {
          v42 = v41;
          v43 = [(PBUIWallpaperOptions *)self wallpaperKitData];
          v44 = [(PBUIWallpaperOptions *)v7 wallpaperKitData];
          v45 = [v43 isEqual:v44];
        }

        else
        {
          v45 = 1;
        }
      }

      else
      {
        v45 = 0;
      }
    }

    else
    {
      v45 = 0;
    }
  }

  return v45 & 1;
}

- (BOOL)isLooselyEqualToWallpaperOptions:(id)a3
{
  v4 = a3;
  if ([(PBUIWallpaperOptions *)self isEqual:v4])
  {
    goto LABEL_2;
  }

  [(PBUIWallpaperOptions *)self cropRect];
  v8 = v7;
  v41.origin.x = v9;
  v11 = v10;
  v13 = v12;
  [v4 cropRect];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  [(PBUIWallpaperOptions *)self zoomScale];
  rect_24 = v22;
  [v4 zoomScale];
  v24 = v23;
  rect_8 = v21;
  v42.origin.x = v8;
  v42.origin.y = v41.origin.x;
  v42.size.width = v11;
  v42.size.height = v13;
  rect_16 = v15;
  v55.origin.x = v15;
  v25 = v17;
  v55.origin.y = v17;
  v55.size.width = v19;
  v55.size.height = v21;
  v5 = 0;
  if (!CGRectEqualToRect(v42, v55) && rect_24 == v24)
  {
    CGAffineTransformMakeScale(&v41.origin.y, rect_24, rect_24);
    v43.origin.x = v8;
    v43.origin.y = v41.origin.x;
    v43.size.width = v11;
    v43.size.height = v13;
    v44 = CGRectApplyAffineTransform(v43, &v41.origin.y);
    x = v44.origin.x;
    y = v44.origin.y;
    width = v44.size.width;
    height = v44.size.height;
    CGAffineTransformMakeScale(&v41.origin.y, v24, v24);
    v45.size.height = rect_8;
    v45.origin.x = rect_16;
    v45.origin.y = v25;
    v45.size.width = v19;
    v46 = CGRectApplyAffineTransform(v45, &v41.origin.y);
    v30 = v46.origin.x;
    v31 = v46.origin.y;
    v32 = v46.size.width;
    v33 = v46.size.height;
    v46.origin.x = x;
    v46.origin.y = y;
    v46.size.width = width;
    v46.size.height = height;
    v56.origin.x = v30;
    v56.origin.y = v31;
    v56.size.width = v32;
    v56.size.height = v33;
    if (CGRectEqualToRect(v46, v56))
    {
LABEL_2:
      v5 = 1;
      goto LABEL_3;
    }

    v41.origin.x = x;
    v47.origin.x = x;
    v47.origin.y = y;
    v47.size.width = width;
    v47.size.height = height;
    MinX = CGRectGetMinX(v47);
    v48.origin.x = v30;
    v48.origin.y = v31;
    v48.size.width = v32;
    v48.size.height = v33;
    if (vabdd_f64(MinX, CGRectGetMinX(v48)) >= 1.0 || (v49.origin.x = v41.origin.x, v49.origin.y = y, v49.size.width = width, v49.size.height = height, MinY = CGRectGetMinY(v49), v50.origin.x = v30, v50.origin.y = v31, v50.size.width = v32, v50.size.height = v33, vabdd_f64(MinY, CGRectGetMinY(v50)) >= 1.0) || (v51.origin.x = v41.origin.x, v51.origin.y = y, v51.size.width = width, v51.size.height = height, v36 = CGRectGetWidth(v51), v52.origin.x = v30, v52.origin.y = v31, v52.size.width = v32, v52.size.height = v33, vabdd_f64(v36, CGRectGetWidth(v52)) >= 1.0))
    {
      v5 = 0;
    }

    else
    {
      v53.origin.x = v41.origin.x;
      v53.origin.y = y;
      v53.size.width = width;
      v53.size.height = height;
      v37 = CGRectGetHeight(v53);
      v54.origin.x = v30;
      v54.origin.y = v31;
      v54.size.width = v32;
      v54.size.height = v33;
      v5 = vabdd_f64(v37, CGRectGetHeight(v54)) < 1.0;
    }
  }

LABEL_3:

  return v5;
}

- (unint64_t)hash
{
  v3 = [(PBUIWallpaperOptions *)self supportsCropping];
  v4 = [(PBUIWallpaperOptions *)self isMagnifyEnabled];
  v5 = 2;
  if (!v4)
  {
    v5 = 0;
  }

  v6 = v5 | v3;
  if ([(PBUIWallpaperOptions *)self isPortrait])
  {
    v7 = 4;
  }

  else
  {
    v7 = 0;
  }

  v8 = [(PBUIWallpaperOptions *)self hasVideo];
  v9 = 8;
  if (!v8)
  {
    v9 = 0;
  }

  v10 = v6 | v7 | v9;
  v11 = [(PBUIWallpaperOptions *)self supportsRotation];
  v12 = 16;
  if (!v11)
  {
    v12 = 0;
  }

  v13 = v10 | v12;
  v14 = [(PBUIWallpaperOptions *)self name];
  v15 = (v13 + [v14 hash]);
  [(PBUIWallpaperOptions *)self parallaxFactor];
  v17 = v16 + v15;
  [(PBUIWallpaperOptions *)self zoomScale];
  v19 = v18 + v17;
  [(PBUIWallpaperOptions *)self stillTimeInVideo];
  v21 = v20 + v19 + [(PBUIWallpaperOptions *)self wallpaperMode];
  [(PBUIWallpaperOptions *)self rotationAngle];
  v23 = v22 + v21;
  v24 = [(PBUIWallpaperOptions *)self wallpaperKitData];
  v25 = (v23 + [v24 hash]);

  return v25;
}

- (id)persistentPropertyList
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [(PBUIWallpaperOptions *)self name];
  if (v4)
  {
    [v3 setObject:v4 forKeyedSubscript:@"Name"];
  }

  v5 = MEMORY[0x277CCABB0];
  [(PBUIWallpaperOptions *)self parallaxFactor];
  v6 = [v5 numberWithDouble:?];
  [v3 setObject:v6 forKeyedSubscript:@"ParallaxFactor"];

  v7 = [MEMORY[0x277CCABB0] numberWithBool:{-[PBUIWallpaperOptions isMagnifyEnabled](self, "isMagnifyEnabled")}];
  [v3 setObject:v7 forKeyedSubscript:@"MagnifyEnabled"];

  v8 = MEMORY[0x277CCABB0];
  [(PBUIWallpaperOptions *)self zoomScale];
  v9 = [v8 numberWithDouble:?];
  [v3 setObject:v9 forKeyedSubscript:@"ZoomScale"];

  v10 = [MEMORY[0x277CCABB0] numberWithBool:{-[PBUIWallpaperOptions supportsCropping](self, "supportsCropping")}];
  [v3 setObject:v10 forKeyedSubscript:@"SupportsCropping"];

  v11 = [MEMORY[0x277CCABB0] numberWithBool:{-[PBUIWallpaperOptions supportsRotation](self, "supportsRotation")}];
  [v3 setObject:v11 forKeyedSubscript:@"SupportsRotation"];

  [(PBUIWallpaperOptions *)self cropRect];
  v12 = NSStringFromCGRect(v23);
  [v3 setObject:v12 forKeyedSubscript:@"CropRect"];

  v13 = MEMORY[0x277CCABB0];
  [(PBUIWallpaperOptions *)self rotationAngle];
  v14 = [v13 numberWithDouble:?];
  [v3 setObject:v14 forKeyedSubscript:@"RotationAngle"];

  v15 = [MEMORY[0x277CCABB0] numberWithBool:{-[PBUIWallpaperOptions isPortrait](self, "isPortrait")}];
  [v3 setObject:v15 forKeyedSubscript:@"Portrait"];

  v16 = [MEMORY[0x277CCABB0] numberWithBool:{-[PBUIWallpaperOptions hasVideo](self, "hasVideo")}];
  [v3 setObject:v16 forKeyedSubscript:@"HasVideo"];

  v17 = MEMORY[0x277CCABB0];
  [(PBUIWallpaperOptions *)self stillTimeInVideo];
  v18 = [v17 numberWithDouble:?];
  [v3 setObject:v18 forKeyedSubscript:@"StillTimeInVideo"];

  v19 = [MEMORY[0x277CCABB0] numberWithInteger:{-[PBUIWallpaperOptions wallpaperMode](self, "wallpaperMode")}];
  [v3 setObject:v19 forKeyedSubscript:@"WallpaperMode"];

  v20 = [(PBUIWallpaperOptions *)self wallpaperKitData];
  [v3 setObject:v20 forKeyedSubscript:@"WallpaperKitData"];

  return v3;
}

- (BOOL)writeToURL:(id)a3 error:(id *)a4
{
  v6 = MEMORY[0x277CBEB78];
  v7 = a3;
  v8 = [[v6 alloc] initWithURL:v7 append:0];

  [v8 open];
  v9 = [(PBUIWallpaperOptions *)self persistentPropertyList];
  LOBYTE(a4) = [MEMORY[0x277CCAC58] writePropertyList:v9 toStream:v8 format:200 options:0 error:a4] != 0;
  [v8 close];

  return a4;
}

- (NSData)persistentDataRepresentation
{
  v3 = [objc_alloc(MEMORY[0x277CBEB78]) initToMemory];
  [v3 open];
  v4 = [(PBUIWallpaperOptions *)self persistentPropertyList];
  v5 = [MEMORY[0x277CCAC58] writePropertyList:v4 toStream:v3 format:200 options:0 error:0];
  [v3 close];
  if (!v5 || ([v3 propertyForKey:*MEMORY[0x277CBE740]], (v6 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v9 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"Failed to make persistentDataRepresentation" userInfo:0];
    objc_exception_throw(v9);
  }

  v7 = v6;

  return v7;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(PBUIWallpaperOptions *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v5 = [(PBUIWallpaperOptions *)self name];
  v6 = [v4 appendObject:v5 withName:@"name"];

  [(PBUIWallpaperOptions *)self cropRect];
  v7 = [v4 appendRect:@"cropRect" withName:?];
  [(PBUIWallpaperOptions *)self rotationAngle];
  v8 = [v4 appendFloat:@"rotationAngle" withName:?];
  [(PBUIWallpaperOptions *)self parallaxFactor];
  v9 = [v4 appendFloat:@"parallaxFactor" withName:?];
  v10 = [v4 appendBool:-[PBUIWallpaperOptions supportsCropping](self withName:{"supportsCropping"), @"supportsCropping"}];
  v11 = [v4 appendBool:-[PBUIWallpaperOptions supportsRotation](self withName:{"supportsRotation"), @"supportsRotation"}];
  v12 = [v4 appendBool:-[PBUIWallpaperOptions isMagnifyEnabled](self withName:{"isMagnifyEnabled"), @"magnifyEnabled"}];
  [(PBUIWallpaperOptions *)self zoomScale];
  v13 = [v4 appendFloat:@"zoomScale" withName:?];
  v14 = [v4 appendBool:-[PBUIWallpaperOptions isPortrait](self withName:{"isPortrait"), @"portrait"}];
  v15 = [v4 appendBool:-[PBUIWallpaperOptions hasVideo](self withName:{"hasVideo"), @"hasVideo"}];
  [(PBUIWallpaperOptions *)self stillTimeInVideo];
  v16 = [v4 appendFloat:@"stillTimeInVideo" withName:?];
  v17 = PBUIStringForWallpaperMode([(PBUIWallpaperOptions *)self wallpaperMode]);
  [v4 appendString:v17 withName:@"wallpaperMode"];

  v18 = [(PBUIWallpaperOptions *)self wallpaperKitData];
  v19 = [v4 appendObject:v18 withName:@"wallpaperKitData"];

  return v4;
}

- (id)succinctDescription
{
  v2 = [(PBUIWallpaperOptions *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v9 = a3;
  v4 = [(PBUIWallpaperOptions *)self name];
  [v9 encodeObject:v4 forKey:@"name"];

  [(PBUIWallpaperOptions *)self cropRect];
  [v9 encodeCGRect:@"cropRect" forKey:?];
  [(PBUIWallpaperOptions *)self rotationAngle];
  [v9 encodeDouble:@"rotationAngle" forKey:?];
  [(PBUIWallpaperOptions *)self parallaxFactor];
  [v9 encodeDouble:@"parallaxFactor" forKey:?];
  [v9 encodeBool:-[PBUIWallpaperOptions supportsCropping](self forKey:{"supportsCropping"), @"supportsCropping"}];
  [v9 encodeBool:-[PBUIWallpaperOptions supportsRotation](self forKey:{"supportsRotation"), @"supportsRotation"}];
  [v9 encodeBool:-[PBUIWallpaperOptions isMagnifyEnabled](self forKey:{"isMagnifyEnabled"), @"magnifyEnabled"}];
  [(PBUIWallpaperOptions *)self zoomScale];
  [v9 encodeDouble:@"zoomScale" forKey:?];
  [v9 encodeBool:-[PBUIWallpaperOptions isPortrait](self forKey:{"isPortrait"), @"portrait"}];
  [v9 encodeBool:-[PBUIWallpaperOptions hasVideo](self forKey:{"hasVideo"), @"hasVideo"}];
  [(PBUIWallpaperOptions *)self stillTimeInVideo];
  [v9 encodeDouble:@"stillTimeInVideo" forKey:?];
  [v9 encodeInteger:-[PBUIWallpaperOptions wallpaperMode](self forKey:{"wallpaperMode"), @"wallpaperMode"}];
  [v9 encodeInteger:-[PBUIWallpaperOptions wallpaperStatus](self forKey:{"wallpaperStatus"), @"wallpaperStatus"}];
  v5 = [(PBUIWallpaperOptions *)self wallpaperKitData];

  if (v5)
  {
    v6 = MEMORY[0x277CCAC58];
    v7 = [(PBUIWallpaperOptions *)self wallpaperKitData];
    v8 = [v6 dataWithPropertyList:v7 format:200 options:0 error:0];

    [v9 encodeObject:v8 forKey:@"wallpaperKitData"];
  }
}

- (PBUIWallpaperOptions)initWithCoder:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = PBUIWallpaperOptions;
  v5 = [(PBUIWallpaperOptions *)&v23 init];
  if (v5)
  {
    v6 = objc_opt_self();
    v7 = [v4 decodeObjectOfClass:v6 forKey:@"name"];
    v8 = [v7 copy];
    name = v5->_name;
    v5->_name = v8;

    [v4 decodeCGRectForKey:@"cropRect"];
    v5->_cropRect.origin.x = v10;
    v5->_cropRect.origin.y = v11;
    v5->_cropRect.size.width = v12;
    v5->_cropRect.size.height = v13;
    [v4 decodeDoubleForKey:@"rotationAngle"];
    v5->_rotationAngle = v14;
    [v4 decodeDoubleForKey:@"parallaxFactor"];
    v5->_parallaxFactor = v15;
    v5->_supportsCropping = [v4 decodeBoolForKey:@"supportsCropping"];
    v5->_supportsRotation = [v4 decodeBoolForKey:@"supportsRotation"];
    v5->_magnifyEnabled = [v4 decodeBoolForKey:@"magnifyEnabled"];
    [v4 decodeDoubleForKey:@"zoomScale"];
    v5->_zoomScale = v16;
    v5->_portrait = [v4 decodeBoolForKey:@"portrait"];
    v5->_hasVideo = [v4 decodeBoolForKey:@"hasVideo"];
    [v4 decodeDoubleForKey:@"stillTimeInVideo"];
    v5->_stillTimeInVideo = v17;
    v5->_wallpaperMode = [v4 decodeIntegerForKey:@"wallpaperMode"];
    v5->_wallpaperStatus = [v4 decodeIntegerForKey:@"wallpaperStatus"];
    v18 = objc_opt_self();
    v19 = [v4 decodeObjectOfClass:v18 forKey:@"wallpaperKitData"];

    if (v19)
    {
      v20 = [MEMORY[0x277CCAC58] propertyListWithData:v19 options:0 format:0 error:0];
      wallpaperKitData = v5->_wallpaperKitData;
      v5->_wallpaperKitData = v20;
    }
  }

  return v5;
}

- (CGRect)cropRect
{
  x = self->_cropRect.origin.x;
  y = self->_cropRect.origin.y;
  width = self->_cropRect.size.width;
  height = self->_cropRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end