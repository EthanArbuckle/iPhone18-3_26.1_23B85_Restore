@interface ICPDFPreviewHelper
+ (BOOL)drawPreviewOfPDFDocument:(id)document inRect:(CGRect)rect;
@end

@implementation ICPDFPreviewHelper

+ (BOOL)drawPreviewOfPDFDocument:(id)document inRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v8 = [document pageAtIndex:0];
  if (!v8)
  {
    v11 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [ICPDFPreviewHelper drawPreviewOfPDFDocument:v11 inRect:?];
    }

    goto LABEL_13;
  }

  CurrentContext = UIGraphicsGetCurrentContext();
  v10 = [v8 thumbnailOfSize:1 forBox:{width, height}];
  v11 = v10;
  if (!v10 || ([v10 size], v12 <= 0.0) || ([v11 size], v13 <= 0.0) || width <= 0.0 || height <= 0.0)
  {
    v22 = os_log_create("com.apple.notes", "SystemPaper");
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [ICPDFPreviewHelper drawPreviewOfPDFDocument:v22 inRect:?];
    }

LABEL_13:
    v21 = 0;
    goto LABEL_14;
  }

  [v11 size];
  v15 = v14;
  [v11 size];
  v24.size.height = width / (v15 / v16);
  v24.origin.x = 0.0;
  v24.origin.y = 0.0;
  v24.size.width = width;
  v25 = CGRectOffset(v24, x, y);
  v17 = v25.origin.x;
  v18 = v25.origin.y;
  v19 = v25.size.width;
  v20 = v25.size.height;
  CGContextSaveGState(CurrentContext);
  v26.origin.x = x;
  v26.origin.y = y;
  v26.size.width = width;
  v26.size.height = height;
  CGContextClipToRect(CurrentContext, v26);
  [v11 drawInRect:v17, v18, v19, v20];
  CGContextRestoreGState(CurrentContext);
  v21 = 1;
LABEL_14:

  return v21;
}

@end