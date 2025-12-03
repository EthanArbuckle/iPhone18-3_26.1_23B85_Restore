@interface CSSQuartzBackedScreenshotter
- (CATransform3D)transformForFinalScreenshotSize:(SEL)size;
- (CGImage)makeRawQuartzCGImageScreenshotWithIsSecure:(BOOL)secure size:(id)size error:(id *)error;
- (CSSQuartzBackedScreenshotter)init;
- (CSSQuartzBackedScreenshotter)initWithDisplay:(id)display;
- (double)displayScale;
- (id)displaySize;
- (id)makeRawQuartzScreenshotWithSize:(id)size error:(id *)error;
- (id)screenshotWithMaximumSizeInPixels:(CGSize)pixels error:(id *)error;
@end

@implementation CSSQuartzBackedScreenshotter

- (CSSQuartzBackedScreenshotter)init
{
  v3 = +[CADisplay mainDisplay];
  v4 = [(CSSQuartzBackedScreenshotter *)self initWithDisplay:v3];

  return v4;
}

- (CSSQuartzBackedScreenshotter)initWithDisplay:(id)display
{
  displayCopy = display;
  v9.receiver = self;
  v9.super_class = CSSQuartzBackedScreenshotter;
  v6 = [(CSSQuartzBackedScreenshotter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_display, display);
  }

  return v7;
}

- (id)screenshotWithMaximumSizeInPixels:(CGSize)pixels error:(id *)error
{
  height = pixels.height;
  width = pixels.width;
  v8 = objc_opt_new();
  displaySize = [(CSSQuartzBackedScreenshotter *)self displaySize];
  v10 = [v8 screenshotSizeWithMaximumSize:displaySize displaySize:{width, height}];

  v11 = [(CSSQuartzBackedScreenshotter *)self makeRawQuartzScreenshotWithSize:v10 error:error];

  return v11;
}

- (id)displaySize
{
  display = [(CSSQuartzBackedScreenshotter *)self display];
  [display css_sizeInCurrentOrientation];
  v4 = v3;
  v6 = v5;

  v7 = [[CSSIntegralSize alloc] initWithFloatingPointSize:v4, v6];

  return v7;
}

- (double)displayScale
{
  display = [(CSSQuartzBackedScreenshotter *)self display];
  currentMode = [display currentMode];
  preferredScale = [currentMode preferredScale];

  return preferredScale;
}

- (id)makeRawQuartzScreenshotWithSize:(id)size error:(id *)error
{
  v4 = [(CSSQuartzBackedScreenshotter *)self makeRawQuartzCGImageScreenshotWithIsSecure:1 size:size error:error];
  if (v4)
  {
    v5 = v4;
    v6 = [UIImage imageWithCGImage:v4 scale:0 orientation:1.0];
    CFRelease(v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (CGImage)makeRawQuartzCGImageScreenshotWithIsSecure:(BOOL)secure size:(id)size error:(id *)error
{
  secureCopy = secure;
  sizeCopy = size;
  display = [(CSSQuartzBackedScreenshotter *)self display];
  v10 = display;
  if (!display)
  {
    v33 = sub_100003634();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      sub_100005EF8(v33, v34, v35, v36, v37, v38, v39, v40);
    }

    if (error)
    {
      goto LABEL_16;
    }

    goto LABEL_8;
  }

  v62 = secureCopy;
  v64 = display;
  height = [sizeCopy height];
  width = [sizeCopy width];
  v13 = (4 * width + 63) & 0xFFFFFFFFFFFFFFC0;
  v14 = vm_page_mask;
  v15 = vm_page_mask + v13 * height;
  v76[0] = kIOSurfaceWidth;
  v58 = width;
  v16 = [NSNumber numberWithUnsignedLong:?];
  v77[0] = v16;
  v76[1] = kIOSurfaceHeight;
  height = height;
  v17 = [NSNumber numberWithUnsignedLong:height];
  v77[1] = v17;
  v76[2] = kIOSurfacePixelFormat;
  v18 = [NSNumber numberWithInt:1111970369];
  v77[2] = v18;
  v77[3] = &off_10000CBB8;
  v76[3] = kIOSurfaceBytesPerElement;
  v76[4] = kIOSurfaceBytesPerRow;
  v59 = v13;
  v19 = [NSNumber numberWithUnsignedLong:v13];
  v77[4] = v19;
  v76[5] = kIOSurfaceAllocSize;
  v63 = v15;
  v61 = v14;
  v20 = [NSNumber numberWithUnsignedLong:v15 & ~v14];
  v76[6] = kIOSurfaceCacheMode;
  v77[5] = v20;
  v77[6] = &off_10000CBD0;
  [NSDictionary dictionaryWithObjects:v77 forKeys:v76 count:7];
  v22 = v21 = sizeCopy;
  v23 = IOSurfaceCreate(v22);

  if (!v23)
  {
    v41 = sub_100003634();
    v10 = v64;
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      sub_100005EC0(v41, v42, v43, v44, v45, v46, v47, v48);
    }

    sizeCopy = v21;
LABEL_15:
    if (error)
    {
LABEL_16:
      CRKErrorWithCodeAndUserInfo();
      *error = v32 = 0;
      goto LABEL_17;
    }

LABEL_8:
    v32 = 0;
    goto LABEL_17;
  }

  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  [(CSSQuartzBackedScreenshotter *)self transformForFinalScreenshotSize:v21];
  v74[0] = kCASnapshotMode;
  v74[1] = kCASnapshotDestination;
  v75[0] = kCASnapshotModeDisplay;
  v75[1] = v23;
  v74[2] = kCASnapshotDisplayName;
  v10 = v64;
  name = [v64 name];
  v75[2] = name;
  v75[3] = &off_10000CBE8;
  v74[3] = kCASnapshotOriginX;
  v74[4] = kCASnapshotOriginY;
  v75[4] = &off_10000CBE8;
  v74[5] = kCASnapshotEnforceSecureMode;
  v25 = [NSNumber numberWithBool:v62];
  v75[5] = v25;
  v74[6] = kCASnapshotTransform;
  v65[4] = v70;
  v65[5] = v71;
  v65[6] = v72;
  v65[7] = v73;
  v65[0] = v66;
  v65[1] = v67;
  v65[2] = v68;
  v65[3] = v69;
  v26 = [NSValue valueWithCATransform3D:v65];
  v75[6] = v26;
  v27 = [NSDictionary dictionaryWithObjects:v75 forKeys:v74 count:7];
  CARenderServerSnapshot();

  IOSurfaceLock(v23, 1u, 0);
  BaseAddress = IOSurfaceGetBaseAddress(v23);
  v29 = CGDataProviderCreateWithData(v23, BaseAddress, v63 & ~v61, sub_100003678);
  sizeCopy = v21;
  if (!v29)
  {
    IOSurfaceUnlock(v23, 1u, 0);
    CFRelease(v23);
    v49 = sub_100003634();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      sub_100005E88(v49, v50, v51, v52, v53, v54, v55, v56);
    }

    goto LABEL_15;
  }

  v30 = v29;
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v32 = CGImageCreate(v58, height, 8uLL, 0x20uLL, v59, DeviceRGB, 0x2002u, v30, 0, 1, kCGRenderingIntentDefault);
  CGColorSpaceRelease(DeviceRGB);
  CGDataProviderRelease(v30);
LABEL_17:

  return v32;
}

- (CATransform3D)transformForFinalScreenshotSize:(SEL)size
{
  v6 = a4;
  v7 = objc_opt_new();
  [(CSSQuartzBackedScreenshotter *)self displayScale];
  v9 = v8;
  displaySize = [(CSSQuartzBackedScreenshotter *)self displaySize];
  CGAffineTransformMakeScale(&v16, v9 / fmin([displaySize height], objc_msgSend(displaySize, "width")), v9 / fmax(objc_msgSend(displaySize, "height"), objc_msgSend(displaySize, "width")));
  [v7 appendTransform:&v16];
  CGAffineTransformMakeTranslation(&v16, -0.5, -0.5);
  [v7 appendTransform:&v16];
  display = [(CSSQuartzBackedScreenshotter *)self display];
  css_interfaceOrientation = [display css_interfaceOrientation];

  if ((css_interfaceOrientation - 2) <= 2)
  {
    CGAffineTransformMakeRotation(&v16, dbl_100008738[(css_interfaceOrientation - 2)]);
    [v7 appendTransform:&v16];
  }

  CGAffineTransformMakeTranslation(&v16, 0.5, 0.5);
  [v7 appendTransform:&v16];
  width = [v6 width];
  height = [v6 height];

  CGAffineTransformMakeScale(&v16, width, height);
  [v7 appendTransform:&v16];
  if (v7)
  {
    [v7 composedTransform];
  }

  else
  {
    memset(&v16, 0, sizeof(v16));
  }

  CATransform3DMakeAffineTransform(retstr, &v16);

  return result;
}

@end