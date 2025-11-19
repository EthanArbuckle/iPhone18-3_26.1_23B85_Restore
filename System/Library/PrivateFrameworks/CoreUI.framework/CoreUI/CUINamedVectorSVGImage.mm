@interface CUINamedVectorSVGImage
- (CGImage)rasterizeImageUsingScaleFactor:(double)a3 forTargetSize:(CGSize)a4;
- (CGSVGDocument)svgDocument;
@end

@implementation CUINamedVectorSVGImage

- (CGSVGDocument)svgDocument
{
  v2 = [(CUINamedLookup *)self _rendition];

  return [(CUIThemeRendition *)v2 svgDocument];
}

- (CGImage)rasterizeImageUsingScaleFactor:(double)a3 forTargetSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  if (a3 == 0.0)
  {
    [CUINamedVectorSVGImage rasterizeImageUsingScaleFactor:forTargetSize:];
  }

  if (width <= 0.0 || height <= 0.0)
  {
    [CUINamedVectorSVGImage rasterizeImageUsingScaleFactor:forTargetSize:];
  }

  v8 = [(CUINamedLookup *)self name];
  _CUILog(3, "[CUINamedVectorImage (%@)]", v9, v10, v11, v12, v13, v14, v8);
  [(CUINamedVectorSVGImage *)self svgDocument];
  CGSVGDocumentGetCanvasSize();
  v16 = v15;
  v18 = v17;
  v19 = floor(width * a3);
  v20 = floor(height * a3);
  if ([(CUIRenditionKey *)[(CUINamedLookup *)self renditionKey] themeDisplayGamut]&& CGSVGDocumentContainsWideGamutContent())
  {
    v21 = 4097;
    v22 = 8;
    v23 = 16;
    DisplayP3 = _CUIColorSpaceGetDisplayP3();
  }

  else
  {
    v21 = 8193;
    v22 = 4;
    v23 = 8;
    DisplayP3 = _CUIColorSpaceGetSRGB();
  }

  v27 = CUICGBitmapContextCreate(v19, v20, v23, (v19 * v22), DisplayP3, v21, v25, v26);
  if (v27)
  {
    v34 = v27;
    CGContextScaleCTM(v27, v19 / v16, v20 / v18);
    CGContextDrawSVGDocument();
    Image = CGBitmapContextCreateImage(v34);
    CFRelease(v34);
    return Image;
  }

  else
  {
    _CUILog(4, "CoreUI: %s couldn't create bitmapContext for %s (%fx%f) colorSpace:'%@' [pdfsize:%fx%f scale:%f bpc:%zd bpp:%zd bitmapInfo:%zd]", v28, v29, v30, v31, v32, v33, "[CUINamedVectorSVGImage rasterizeImageUsingScaleFactor:forTargetSize:]");
    return 0;
  }
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