@interface PBUIWallpaperOptions
+ (id)optionsWithName:(id)name parallaxFactor:(double)factor zoomScale:(double)scale supportsCropping:(BOOL)cropping cropRect:(CGRect)rect portrait:(BOOL)portrait;
+ (id)optionsWithName:(id)name parallaxFactor:(double)factor zoomScale:(double)scale supportsCropping:(BOOL)cropping cropRect:(CGRect)rect portrait:(BOOL)portrait hasVideo:(BOOL)video stillTimeInVideo:(double)self0;
+ (id)optionsWithName:(id)name parallaxFactor:(double)factor zoomScale:(double)scale supportsCropping:(BOOL)cropping cropRect:(CGRect)rect portrait:(BOOL)portrait hasVideo:(BOOL)video stillTimeInVideo:(double)self0 wallpaperKitData:(id)self1;
+ (id)optionsWithName:(id)name parallaxFactor:(double)factor zoomScale:(double)scale supportsCropping:(BOOL)cropping cropRect:(CGRect)rect portrait:(BOOL)portrait hasVideo:(BOOL)video stillTimeInVideo:(double)self0 wallpaperMode:(int64_t)self1 wallpaperStatus:(int64_t)self2;
+ (id)optionsWithName:(id)name parallaxFactor:(double)factor zoomScale:(double)scale supportsCropping:(BOOL)cropping cropRect:(CGRect)rect portrait:(BOOL)portrait hasVideo:(BOOL)video stillTimeInVideo:(double)self0 wallpaperMode:(int64_t)self1 wallpaperStatus:(int64_t)self2 wallpaperKitData:(id)self3;
+ (id)optionsWithName:(id)name parallaxFactor:(double)factor zoomScale:(double)scale supportsCropping:(BOOL)cropping cropRect:(CGRect)rect supportsRotation:(BOOL)rotation rotationAngle:(double)angle portrait:(BOOL)self0 hasVideo:(BOOL)self1 stillTimeInVideo:(double)self2 wallpaperMode:(int64_t)self3 wallpaperStatus:(int64_t)self4;
- (BOOL)isEqual:(id)equal;
- (BOOL)isLooselyEqualToWallpaperOptions:(id)options;
- (BOOL)writeToURL:(id)l error:(id *)error;
- (CGRect)cropRect;
- (CGSize)bestWallpaperSizeForWallpaperSize:(CGSize)size wallpaperScale:(double)scale deviceType:(int64_t)type imageScale:(double)imageScale;
- (NSData)persistentDataRepresentation;
- (PBUIWallpaperOptions)init;
- (PBUIWallpaperOptions)initWithCoder:(id)coder;
- (PBUIWallpaperOptions)initWithContentsOfURL:(id)l;
- (PBUIWallpaperOptions)initWithName:(id)name parallaxFactor:(double)factor zoomScale:(double)scale supportsCropping:(BOOL)cropping cropRect:(CGRect)rect supportsRotation:(BOOL)rotation rotationAngle:(double)angle portrait:(BOOL)self0 hasVideo:(BOOL)self1 stillTimeInVideo:(double)self2 wallpaperMode:(int64_t)self3 wallpaperStatus:(int64_t)self4 wallpaperKitData:(id)self5;
- (PBUIWallpaperOptions)initWithPersistentDataRepresentation:(id)representation;
- (PBUIWallpaperOptions)initWithStream:(id)stream;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)persistentPropertyList;
- (id)succinctDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PBUIWallpaperOptions

+ (id)optionsWithName:(id)name parallaxFactor:(double)factor zoomScale:(double)scale supportsCropping:(BOOL)cropping cropRect:(CGRect)rect portrait:(BOOL)portrait
{
  portraitCopy = portrait;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  croppingCopy = cropping;
  nameCopy = name;
  v18 = [[self alloc] initWithName:nameCopy parallaxFactor:croppingCopy zoomScale:0 supportsCropping:portraitCopy cropRect:0 supportsRotation:0 rotationAngle:factor portrait:scale hasVideo:x stillTimeInVideo:y wallpaperMode:width wallpaperStatus:height wallpaperKitData:{0.0, 0.0, 0, 0}];

  return v18;
}

+ (id)optionsWithName:(id)name parallaxFactor:(double)factor zoomScale:(double)scale supportsCropping:(BOOL)cropping cropRect:(CGRect)rect portrait:(BOOL)portrait hasVideo:(BOOL)video stillTimeInVideo:(double)self0
{
  videoCopy = video;
  portraitCopy = portrait;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  croppingCopy = cropping;
  nameCopy = name;
  v22 = [[self alloc] initWithName:nameCopy parallaxFactor:croppingCopy zoomScale:0 supportsCropping:portraitCopy cropRect:videoCopy supportsRotation:0 rotationAngle:factor portrait:scale hasVideo:x stillTimeInVideo:y wallpaperMode:width wallpaperStatus:height wallpaperKitData:{0.0, inVideo, 0, 0}];

  return v22;
}

+ (id)optionsWithName:(id)name parallaxFactor:(double)factor zoomScale:(double)scale supportsCropping:(BOOL)cropping cropRect:(CGRect)rect portrait:(BOOL)portrait hasVideo:(BOOL)video stillTimeInVideo:(double)self0 wallpaperKitData:(id)self1
{
  videoCopy = video;
  portraitCopy = portrait;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  croppingCopy = cropping;
  dataCopy = data;
  nameCopy = name;
  v25 = [[self alloc] initWithName:nameCopy parallaxFactor:croppingCopy zoomScale:0 supportsCropping:portraitCopy cropRect:videoCopy supportsRotation:0 rotationAngle:factor portrait:scale hasVideo:x stillTimeInVideo:y wallpaperMode:width wallpaperStatus:height wallpaperKitData:{0.0, inVideo, 0, dataCopy}];

  return v25;
}

+ (id)optionsWithName:(id)name parallaxFactor:(double)factor zoomScale:(double)scale supportsCropping:(BOOL)cropping cropRect:(CGRect)rect portrait:(BOOL)portrait hasVideo:(BOOL)video stillTimeInVideo:(double)self0 wallpaperMode:(int64_t)self1 wallpaperStatus:(int64_t)self2
{
  videoCopy = video;
  portraitCopy = portrait;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  croppingCopy = cropping;
  nameCopy = name;
  v26 = [[self alloc] initWithName:nameCopy parallaxFactor:croppingCopy zoomScale:0 supportsCropping:portraitCopy cropRect:videoCopy supportsRotation:mode rotationAngle:factor portrait:scale hasVideo:x stillTimeInVideo:y wallpaperMode:width wallpaperStatus:height wallpaperKitData:{0.0, inVideo, status, 0}];

  return v26;
}

+ (id)optionsWithName:(id)name parallaxFactor:(double)factor zoomScale:(double)scale supportsCropping:(BOOL)cropping cropRect:(CGRect)rect supportsRotation:(BOOL)rotation rotationAngle:(double)angle portrait:(BOOL)self0 hasVideo:(BOOL)self1 stillTimeInVideo:(double)self2 wallpaperMode:(int64_t)self3 wallpaperStatus:(int64_t)self4
{
  videoCopy = video;
  portraitCopy = portrait;
  rotationCopy = rotation;
  croppingCopy = cropping;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  nameCopy = name;
  v29 = [[self alloc] initWithName:nameCopy parallaxFactor:croppingCopy zoomScale:rotationCopy supportsCropping:portraitCopy cropRect:videoCopy supportsRotation:mode rotationAngle:factor portrait:scale hasVideo:x stillTimeInVideo:y wallpaperMode:width wallpaperStatus:height wallpaperKitData:{angle, inVideo, status, 0}];

  return v29;
}

+ (id)optionsWithName:(id)name parallaxFactor:(double)factor zoomScale:(double)scale supportsCropping:(BOOL)cropping cropRect:(CGRect)rect portrait:(BOOL)portrait hasVideo:(BOOL)video stillTimeInVideo:(double)self0 wallpaperMode:(int64_t)self1 wallpaperStatus:(int64_t)self2 wallpaperKitData:(id)self3
{
  videoCopy = video;
  portraitCopy = portrait;
  croppingCopy = cropping;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  dataCopy = data;
  nameCopy = name;
  v29 = [[self alloc] initWithName:nameCopy parallaxFactor:croppingCopy zoomScale:0 supportsCropping:portraitCopy cropRect:videoCopy supportsRotation:mode rotationAngle:factor portrait:scale hasVideo:x stillTimeInVideo:y wallpaperMode:width wallpaperStatus:height wallpaperKitData:{0.0, inVideo, status, dataCopy}];

  return v29;
}

- (PBUIWallpaperOptions)initWithName:(id)name parallaxFactor:(double)factor zoomScale:(double)scale supportsCropping:(BOOL)cropping cropRect:(CGRect)rect supportsRotation:(BOOL)rotation rotationAngle:(double)angle portrait:(BOOL)self0 hasVideo:(BOOL)self1 stillTimeInVideo:(double)self2 wallpaperMode:(int64_t)self3 wallpaperStatus:(int64_t)self4 wallpaperKitData:(id)self5
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  nameCopy = name;
  dataCopy = data;
  v38.receiver = self;
  v38.super_class = PBUIWallpaperOptions;
  v31 = [(PBUIWallpaperOptions *)&v38 init];
  if (v31)
  {
    v32 = [nameCopy copy];
    name = v31->_name;
    v31->_name = v32;

    v31->_cropRect.origin.x = x;
    v31->_cropRect.origin.y = y;
    v31->_cropRect.size.width = width;
    v31->_cropRect.size.height = height;
    v31->_supportsCropping = cropping;
    v31->_supportsRotation = rotation;
    v31->_parallaxFactor = factor;
    v31->_zoomScale = scale;
    v31->_portrait = portrait;
    v31->_hasVideo = video;
    v31->_rotationAngle = angle;
    v31->_stillTimeInVideo = inVideo;
    v31->_wallpaperMode = mode;
    v31->_wallpaperStatus = status;
    v34 = [dataCopy copy];
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

- (PBUIWallpaperOptions)initWithContentsOfURL:(id)l
{
  v4 = MEMORY[0x277CBEAE0];
  lCopy = l;
  v6 = [[v4 alloc] initWithURL:lCopy];

  [v6 open];
  v7 = [(PBUIWallpaperOptions *)self initWithStream:v6];
  [v6 close];

  return v7;
}

- (PBUIWallpaperOptions)initWithPersistentDataRepresentation:(id)representation
{
  v4 = MEMORY[0x277CBEAE0];
  representationCopy = representation;
  v6 = [[v4 alloc] initWithData:representationCopy];

  [v6 open];
  v7 = [(PBUIWallpaperOptions *)self initWithStream:v6];
  [v6 close];

  return v7;
}

- (PBUIWallpaperOptions)initWithStream:(id)stream
{
  v4 = [MEMORY[0x277CCAC58] propertyListWithStream:stream options:0 format:0 error:0];
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
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (CGSize)bestWallpaperSizeForWallpaperSize:(CGSize)size wallpaperScale:(double)scale deviceType:(int64_t)type imageScale:(double)imageScale
{
  height = size.height;
  width = size.width;
  [(PBUIWallpaperOptions *)self cropRect];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  [(PBUIWallpaperOptions *)self zoomScale];
  memset(&v50, 0, sizeof(v50));
  CGAffineTransformMakeScale(&v50, v19, v19);
  memset(&v49, 0, sizeof(v49));
  CGAffineTransformMakeScale(&v49, imageScale, imageScale);
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
  [PBUIWallpaperParallaxSettings bestWallpaperSizeForWallpaperSize:type deviceType:[(PBUIWallpaperOptions *)self isPortrait] parallaxFactor:width portrait:height, v24];
  v26 = v25;
  v28 = v27;
  memset(&v48, 0, sizeof(v48));
  CGAffineTransformMakeScale(&v48, scale, scale);
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

- (id)copyWithZone:(_NSZone *)zone
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v45 = 1;
  }

  else
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = equalCopy;
      name = [(PBUIWallpaperOptions *)self name];
      name2 = [(PBUIWallpaperOptions *)v7 name];
      v10 = BSEqualObjects();

      if (v10 && ([(PBUIWallpaperOptions *)self cropRect], v12 = v11, v14 = v13, v16 = v15, v18 = v17, [(PBUIWallpaperOptions *)v7 cropRect], v48.origin.x = v19, v48.origin.y = v20, v48.size.width = v21, v48.size.height = v22, v47.origin.x = v12, v47.origin.y = v14, v47.size.width = v16, v47.size.height = v18, CGRectEqualToRect(v47, v48)) && ([(PBUIWallpaperOptions *)self rotationAngle], v24 = v23, [(PBUIWallpaperOptions *)v7 rotationAngle], v24 == v25) && ([(PBUIWallpaperOptions *)self parallaxFactor], v27 = v26, [(PBUIWallpaperOptions *)v7 parallaxFactor], v27 == v28) && (v29 = [(PBUIWallpaperOptions *)self supportsCropping], v29 == [(PBUIWallpaperOptions *)v7 supportsCropping]) && (v30 = [(PBUIWallpaperOptions *)self supportsRotation], v30 == [(PBUIWallpaperOptions *)v7 supportsRotation]) && (v31 = [(PBUIWallpaperOptions *)self isMagnifyEnabled], v31 == [(PBUIWallpaperOptions *)v7 isMagnifyEnabled]) && ([(PBUIWallpaperOptions *)self zoomScale], v33 = v32, [(PBUIWallpaperOptions *)v7 zoomScale], v33 == v34) && (v35 = [(PBUIWallpaperOptions *)self isPortrait], v35 == [(PBUIWallpaperOptions *)v7 isPortrait]) && (v36 = [(PBUIWallpaperOptions *)self hasVideo], v36 == [(PBUIWallpaperOptions *)v7 hasVideo]) && ([(PBUIWallpaperOptions *)self stillTimeInVideo], v38 = v37, [(PBUIWallpaperOptions *)v7 stillTimeInVideo], v38 == v39) && (v40 = [(PBUIWallpaperOptions *)self wallpaperMode], v40 == [(PBUIWallpaperOptions *)v7 wallpaperMode]))
      {
        wallpaperKitData = [(PBUIWallpaperOptions *)self wallpaperKitData];
        if (wallpaperKitData)
        {
          v42 = wallpaperKitData;
          wallpaperKitData2 = [(PBUIWallpaperOptions *)self wallpaperKitData];
          wallpaperKitData3 = [(PBUIWallpaperOptions *)v7 wallpaperKitData];
          v45 = [wallpaperKitData2 isEqual:wallpaperKitData3];
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

- (BOOL)isLooselyEqualToWallpaperOptions:(id)options
{
  optionsCopy = options;
  if ([(PBUIWallpaperOptions *)self isEqual:optionsCopy])
  {
    goto LABEL_2;
  }

  [(PBUIWallpaperOptions *)self cropRect];
  v8 = v7;
  v41.origin.x = v9;
  v11 = v10;
  v13 = v12;
  [optionsCopy cropRect];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  [(PBUIWallpaperOptions *)self zoomScale];
  rect_24 = v22;
  [optionsCopy zoomScale];
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
  supportsCropping = [(PBUIWallpaperOptions *)self supportsCropping];
  isMagnifyEnabled = [(PBUIWallpaperOptions *)self isMagnifyEnabled];
  v5 = 2;
  if (!isMagnifyEnabled)
  {
    v5 = 0;
  }

  v6 = v5 | supportsCropping;
  if ([(PBUIWallpaperOptions *)self isPortrait])
  {
    v7 = 4;
  }

  else
  {
    v7 = 0;
  }

  hasVideo = [(PBUIWallpaperOptions *)self hasVideo];
  v9 = 8;
  if (!hasVideo)
  {
    v9 = 0;
  }

  v10 = v6 | v7 | v9;
  supportsRotation = [(PBUIWallpaperOptions *)self supportsRotation];
  v12 = 16;
  if (!supportsRotation)
  {
    v12 = 0;
  }

  v13 = v10 | v12;
  name = [(PBUIWallpaperOptions *)self name];
  v15 = (v13 + [name hash]);
  [(PBUIWallpaperOptions *)self parallaxFactor];
  v17 = v16 + v15;
  [(PBUIWallpaperOptions *)self zoomScale];
  v19 = v18 + v17;
  [(PBUIWallpaperOptions *)self stillTimeInVideo];
  v21 = v20 + v19 + [(PBUIWallpaperOptions *)self wallpaperMode];
  [(PBUIWallpaperOptions *)self rotationAngle];
  v23 = v22 + v21;
  wallpaperKitData = [(PBUIWallpaperOptions *)self wallpaperKitData];
  v25 = (v23 + [wallpaperKitData hash]);

  return v25;
}

- (id)persistentPropertyList
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  name = [(PBUIWallpaperOptions *)self name];
  if (name)
  {
    [dictionary setObject:name forKeyedSubscript:@"Name"];
  }

  v5 = MEMORY[0x277CCABB0];
  [(PBUIWallpaperOptions *)self parallaxFactor];
  v6 = [v5 numberWithDouble:?];
  [dictionary setObject:v6 forKeyedSubscript:@"ParallaxFactor"];

  v7 = [MEMORY[0x277CCABB0] numberWithBool:{-[PBUIWallpaperOptions isMagnifyEnabled](self, "isMagnifyEnabled")}];
  [dictionary setObject:v7 forKeyedSubscript:@"MagnifyEnabled"];

  v8 = MEMORY[0x277CCABB0];
  [(PBUIWallpaperOptions *)self zoomScale];
  v9 = [v8 numberWithDouble:?];
  [dictionary setObject:v9 forKeyedSubscript:@"ZoomScale"];

  v10 = [MEMORY[0x277CCABB0] numberWithBool:{-[PBUIWallpaperOptions supportsCropping](self, "supportsCropping")}];
  [dictionary setObject:v10 forKeyedSubscript:@"SupportsCropping"];

  v11 = [MEMORY[0x277CCABB0] numberWithBool:{-[PBUIWallpaperOptions supportsRotation](self, "supportsRotation")}];
  [dictionary setObject:v11 forKeyedSubscript:@"SupportsRotation"];

  [(PBUIWallpaperOptions *)self cropRect];
  v12 = NSStringFromCGRect(v23);
  [dictionary setObject:v12 forKeyedSubscript:@"CropRect"];

  v13 = MEMORY[0x277CCABB0];
  [(PBUIWallpaperOptions *)self rotationAngle];
  v14 = [v13 numberWithDouble:?];
  [dictionary setObject:v14 forKeyedSubscript:@"RotationAngle"];

  v15 = [MEMORY[0x277CCABB0] numberWithBool:{-[PBUIWallpaperOptions isPortrait](self, "isPortrait")}];
  [dictionary setObject:v15 forKeyedSubscript:@"Portrait"];

  v16 = [MEMORY[0x277CCABB0] numberWithBool:{-[PBUIWallpaperOptions hasVideo](self, "hasVideo")}];
  [dictionary setObject:v16 forKeyedSubscript:@"HasVideo"];

  v17 = MEMORY[0x277CCABB0];
  [(PBUIWallpaperOptions *)self stillTimeInVideo];
  v18 = [v17 numberWithDouble:?];
  [dictionary setObject:v18 forKeyedSubscript:@"StillTimeInVideo"];

  v19 = [MEMORY[0x277CCABB0] numberWithInteger:{-[PBUIWallpaperOptions wallpaperMode](self, "wallpaperMode")}];
  [dictionary setObject:v19 forKeyedSubscript:@"WallpaperMode"];

  wallpaperKitData = [(PBUIWallpaperOptions *)self wallpaperKitData];
  [dictionary setObject:wallpaperKitData forKeyedSubscript:@"WallpaperKitData"];

  return dictionary;
}

- (BOOL)writeToURL:(id)l error:(id *)error
{
  v6 = MEMORY[0x277CBEB78];
  lCopy = l;
  v8 = [[v6 alloc] initWithURL:lCopy append:0];

  [v8 open];
  persistentPropertyList = [(PBUIWallpaperOptions *)self persistentPropertyList];
  LOBYTE(error) = [MEMORY[0x277CCAC58] writePropertyList:persistentPropertyList toStream:v8 format:200 options:0 error:error] != 0;
  [v8 close];

  return error;
}

- (NSData)persistentDataRepresentation
{
  initToMemory = [objc_alloc(MEMORY[0x277CBEB78]) initToMemory];
  [initToMemory open];
  persistentPropertyList = [(PBUIWallpaperOptions *)self persistentPropertyList];
  v5 = [MEMORY[0x277CCAC58] writePropertyList:persistentPropertyList toStream:initToMemory format:200 options:0 error:0];
  [initToMemory close];
  if (!v5 || ([initToMemory propertyForKey:*MEMORY[0x277CBE740]], (v6 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v9 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"Failed to make persistentDataRepresentation" userInfo:0];
    objc_exception_throw(v9);
  }

  v7 = v6;

  return v7;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(PBUIWallpaperOptions *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v4 = [MEMORY[0x277CF0C00] builderWithObject:self];
  name = [(PBUIWallpaperOptions *)self name];
  v6 = [v4 appendObject:name withName:@"name"];

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

  wallpaperKitData = [(PBUIWallpaperOptions *)self wallpaperKitData];
  v19 = [v4 appendObject:wallpaperKitData withName:@"wallpaperKitData"];

  return v4;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(PBUIWallpaperOptions *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  name = [(PBUIWallpaperOptions *)self name];
  [coderCopy encodeObject:name forKey:@"name"];

  [(PBUIWallpaperOptions *)self cropRect];
  [coderCopy encodeCGRect:@"cropRect" forKey:?];
  [(PBUIWallpaperOptions *)self rotationAngle];
  [coderCopy encodeDouble:@"rotationAngle" forKey:?];
  [(PBUIWallpaperOptions *)self parallaxFactor];
  [coderCopy encodeDouble:@"parallaxFactor" forKey:?];
  [coderCopy encodeBool:-[PBUIWallpaperOptions supportsCropping](self forKey:{"supportsCropping"), @"supportsCropping"}];
  [coderCopy encodeBool:-[PBUIWallpaperOptions supportsRotation](self forKey:{"supportsRotation"), @"supportsRotation"}];
  [coderCopy encodeBool:-[PBUIWallpaperOptions isMagnifyEnabled](self forKey:{"isMagnifyEnabled"), @"magnifyEnabled"}];
  [(PBUIWallpaperOptions *)self zoomScale];
  [coderCopy encodeDouble:@"zoomScale" forKey:?];
  [coderCopy encodeBool:-[PBUIWallpaperOptions isPortrait](self forKey:{"isPortrait"), @"portrait"}];
  [coderCopy encodeBool:-[PBUIWallpaperOptions hasVideo](self forKey:{"hasVideo"), @"hasVideo"}];
  [(PBUIWallpaperOptions *)self stillTimeInVideo];
  [coderCopy encodeDouble:@"stillTimeInVideo" forKey:?];
  [coderCopy encodeInteger:-[PBUIWallpaperOptions wallpaperMode](self forKey:{"wallpaperMode"), @"wallpaperMode"}];
  [coderCopy encodeInteger:-[PBUIWallpaperOptions wallpaperStatus](self forKey:{"wallpaperStatus"), @"wallpaperStatus"}];
  wallpaperKitData = [(PBUIWallpaperOptions *)self wallpaperKitData];

  if (wallpaperKitData)
  {
    v6 = MEMORY[0x277CCAC58];
    wallpaperKitData2 = [(PBUIWallpaperOptions *)self wallpaperKitData];
    v8 = [v6 dataWithPropertyList:wallpaperKitData2 format:200 options:0 error:0];

    [coderCopy encodeObject:v8 forKey:@"wallpaperKitData"];
  }
}

- (PBUIWallpaperOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v23.receiver = self;
  v23.super_class = PBUIWallpaperOptions;
  v5 = [(PBUIWallpaperOptions *)&v23 init];
  if (v5)
  {
    v6 = objc_opt_self();
    v7 = [coderCopy decodeObjectOfClass:v6 forKey:@"name"];
    v8 = [v7 copy];
    name = v5->_name;
    v5->_name = v8;

    [coderCopy decodeCGRectForKey:@"cropRect"];
    v5->_cropRect.origin.x = v10;
    v5->_cropRect.origin.y = v11;
    v5->_cropRect.size.width = v12;
    v5->_cropRect.size.height = v13;
    [coderCopy decodeDoubleForKey:@"rotationAngle"];
    v5->_rotationAngle = v14;
    [coderCopy decodeDoubleForKey:@"parallaxFactor"];
    v5->_parallaxFactor = v15;
    v5->_supportsCropping = [coderCopy decodeBoolForKey:@"supportsCropping"];
    v5->_supportsRotation = [coderCopy decodeBoolForKey:@"supportsRotation"];
    v5->_magnifyEnabled = [coderCopy decodeBoolForKey:@"magnifyEnabled"];
    [coderCopy decodeDoubleForKey:@"zoomScale"];
    v5->_zoomScale = v16;
    v5->_portrait = [coderCopy decodeBoolForKey:@"portrait"];
    v5->_hasVideo = [coderCopy decodeBoolForKey:@"hasVideo"];
    [coderCopy decodeDoubleForKey:@"stillTimeInVideo"];
    v5->_stillTimeInVideo = v17;
    v5->_wallpaperMode = [coderCopy decodeIntegerForKey:@"wallpaperMode"];
    v5->_wallpaperStatus = [coderCopy decodeIntegerForKey:@"wallpaperStatus"];
    v18 = objc_opt_self();
    v19 = [coderCopy decodeObjectOfClass:v18 forKey:@"wallpaperKitData"];

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