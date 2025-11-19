@interface ICPDFUtilities
+ (id)renderedImageForPage:(CGPDFPage *)a3 scale:(double)a4 size:(CGSize)a5 colorSpace:(CGColorSpace *)a6;
@end

@implementation ICPDFUtilities

+ (id)renderedImageForPage:(CGPDFPage *)a3 scale:(double)a4 size:(CGSize)a5 colorSpace:(CGColorSpace *)a6
{
  v6 = a3;
  if (a3)
  {
    height = a5.height;
    width = a5.width;
    v14 = *MEMORY[0x277CBF348];
    v10 = [MEMORY[0x277D75568] defaultFormat];
    [v10 setScale:a4];
    v11 = [objc_alloc(MEMORY[0x277D75560]) initWithSize:v10 format:{width, height}];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __61__ICPDFUtilities_renderedImageForPage_scale_size_colorSpace___block_invoke;
    v13[3] = &__block_descriptor_72_e40_v16__0__UIGraphicsImageRendererContext_8l;
    v15 = width;
    v16 = height;
    v17 = v6;
    v6 = [v11 imageWithActions:v13];
  }

  return v6;
}

uint64_t __61__ICPDFUtilities_renderedImageForPage_scale_size_colorSpace___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = [a2 CGContext];
  DeviceGray = CGColorSpaceCreateDeviceGray();
  *components = xmmword_2150C05E0;
  v5 = CGColorCreate(DeviceGray, components);
  CGContextSetFillColorWithColor(v3, v5);
  CGContextFillRect(v3, *(a1 + 32));
  CGColorRelease(v5);
  CGColorSpaceRelease(DeviceGray);
  CGContextGetCTM(&v20, v3);
  CGContextScaleCTM(v3, 1.0, -1.0);
  CGContextTranslateCTM(v3, 0.0, -*(a1 + 56));
  BoxRect = CGPDFPageGetBoxRect(*(a1 + 64), kCGPDFCropBox);
  x = BoxRect.origin.x;
  y = BoxRect.origin.y;
  width = BoxRect.size.width;
  height = BoxRect.size.height;
  memset(&v20, 0, sizeof(v20));
  v10 = *(a1 + 48);
  v11 = CGRectGetWidth(BoxRect);
  v12 = *(a1 + 56);
  v13 = v10 / v11;
  v24.origin.x = x;
  v24.origin.y = y;
  v24.size.width = width;
  v24.size.height = height;
  v14 = CGRectGetHeight(v24);
  CGAffineTransformMakeScale(&v20, v13, v12 / v14);
  transform = v20;
  CGContextConcatCTM(v3, &transform);
  memset(&transform, 0, sizeof(transform));
  v25.origin.x = x;
  v25.origin.y = y;
  v25.size.width = width;
  v25.size.height = height;
  v15 = -CGRectGetMinX(v25);
  v26.origin.x = x;
  v26.origin.y = y;
  v26.size.width = width;
  v26.size.height = height;
  MinY = CGRectGetMinY(v26);
  CGAffineTransformMakeTranslation(&transform, v15, -MinY);
  v18 = transform;
  CGContextConcatCTM(v3, &v18);
  return CGContextDrawPDFPageWithAnnotations();
}

@end