@interface CUINamedVectorPDFImage
- (CGImage)rasterizeImageUsingScaleFactor:(double)factor forTargetSize:(CGSize)size;
- (CGPDFDocument)pdfDocument;
@end

@implementation CUINamedVectorPDFImage

- (CGPDFDocument)pdfDocument
{
  _rendition = [(CUINamedLookup *)self _rendition];

  return [(CUIThemeRendition *)_rendition pdfDocument];
}

- (CGImage)rasterizeImageUsingScaleFactor:(double)factor forTargetSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  if (factor == 0.0)
  {
    [CUINamedVectorPDFImage rasterizeImageUsingScaleFactor:forTargetSize:];
  }

  if (width <= 0.0 || height <= 0.0)
  {
    [CUINamedVectorPDFImage rasterizeImageUsingScaleFactor:forTargetSize:];
  }

  Page = CGPDFDocumentGetPage([(CUINamedVectorPDFImage *)self pdfDocument], 1uLL);
  BoxRect = CGPDFPageGetBoxRect(Page, kCGPDFCropBox);
  v9 = BoxRect.size.width;
  v10 = BoxRect.size.height;
  v11 = width * factor;
  v12 = height * factor;
  if ([(CUIRenditionKey *)[(CUINamedLookup *)self renditionKey:BoxRect.origin.x] themeDisplayGamut]&& CGPDFPageContainsWideGamutContent())
  {
    v13 = 4097;
    v14 = 8;
    v15 = 16;
    DisplayP3 = _CUIColorSpaceGetDisplayP3();
  }

  else
  {
    v13 = 8193;
    v14 = 4;
    v15 = 8;
    DisplayP3 = _CUIColorSpaceGetSRGB();
  }

  v19 = CUICGBitmapContextCreate(v11, v12, v15, (v11 * v14), DisplayP3, v13, v17, v18);
  if (v19)
  {
    v26 = v19;
    v31.origin.x = 0.0;
    v31.origin.y = 0.0;
    v31.size.width = v9;
    v31.size.height = v10;
    CGPDFPageGetDrawingTransform(&transform, Page, kCGPDFCropBox, v31, 0, 1);
    CGContextConcatCTM(v26, &transform);
    CGContextScaleCTM(v26, v11 / v9, v12 / v10);
    CGContextDrawPDFPage(v26, Page);
    Image = CGBitmapContextCreateImage(v26);
    CFRelease(v26);
  }

  else
  {
    _CUILog(4, "CoreUI: %s couldn't create bitmapContext for (%fx%f) colorSpace:'%@' [pdfsize:%fx%f scale:%f bpc:%zd bpp:%zd bitmapInfo:%d]", v20, v21, v22, v23, v24, v25, "[CUINamedVectorPDFImage rasterizeImageUsingScaleFactor:forTargetSize:]");
    return 0;
  }

  return Image;
}

- (id)rasterizeImageUsingScaleFactor:forTargetSize:.cold.1()
{
  OUTLINED_FUNCTION_35();
  +[NSAssertionHandler currentHandler];
  OUTLINED_FUNCTION_33();
  return [v0 handleFailureInMethod:@"scale" object:? file:? lineNumber:? description:?];
}

- (id)rasterizeImageUsingScaleFactor:forTargetSize:.cold.2()
{
  OUTLINED_FUNCTION_35();
  +[NSAssertionHandler currentHandler];
  OUTLINED_FUNCTION_33();
  return [v0 handleFailureInMethod:@"targetSizeInPoints.width>0 && targetSizeInPoints.height>0" object:? file:? lineNumber:? description:?];
}

@end