@interface CAMPanoramaUtilities
+ (CGSize)bufferSize;
+ (CGSize)defaultPreviewSize;
+ (CGSize)panoramaViewSizeForCaptureSize:(CGSize)size referenceBounds:(CGRect)bounds chromeSidebarFrame:(CGRect)frame layoutStyle:(int64_t)style;
+ (CGSize)previewStripSizeForCaptureSize:(CGSize)size referenceBounds:(CGRect)bounds chromeSidebarFrame:(CGRect)frame layoutStyle:(int64_t)style;
+ (UIEdgeInsets)panoramaViewLayoutInsetsForLayoutStyle:(int64_t)style referenceBounds:(CGRect)bounds chromeSidebarFrame:(CGRect)frame;
+ (UIEdgeInsets)panoramaViewPreviewStripInsetsForLayoutStyle:(int64_t)style;
@end

@implementation CAMPanoramaUtilities

+ (CGSize)defaultPreviewSize
{
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen _referenceBounds];

  currentDevice = [MEMORY[0x1E69DC938] currentDevice];
  cam_initialLayoutStyle = [currentDevice cam_initialLayoutStyle];

  [self bufferSize];
  [self previewStripSizeForCaptureSize:cam_initialLayoutStyle referenceBounds:*MEMORY[0x1E695F058] chromeSidebarFrame:*(MEMORY[0x1E695F058] + 8) layoutStyle:{*(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  result.height = v7;
  result.width = v6;
  return result;
}

+ (CGSize)previewStripSizeForCaptureSize:(CGSize)size referenceBounds:(CGRect)bounds chromeSidebarFrame:(CGRect)frame layoutStyle:(int64_t)style
{
  y = bounds.origin.y;
  height = bounds.size.height;
  width = bounds.size.width;
  x = bounds.origin.x;
  [self panoramaViewPreviewStripInsetsForLayoutStyle:?];
  v11 = v10;
  v13 = v12;
  [self panoramaViewLayoutInsetsForLayoutStyle:style referenceBounds:x chromeSidebarFrame:{y, width, height, frame.origin.x, frame.origin.y, frame.size.width, frame.size.height}];
  v16 = width - v11 - v13 - v14 - v15;
  v17 = floor(size.height / size.width * v16);
  result.height = v17;
  result.width = v16;
  return result;
}

+ (CGSize)panoramaViewSizeForCaptureSize:(CGSize)size referenceBounds:(CGRect)bounds chromeSidebarFrame:(CGRect)frame layoutStyle:(int64_t)style
{
  height = size.height;
  width = size.width;
  [self panoramaViewPreviewStripInsetsForLayoutStyle:?];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  [self previewStripSizeForCaptureSize:style referenceBounds:width chromeSidebarFrame:height layoutStyle:{bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height, *&frame.origin.x, *&frame.origin.y, *&frame.size.width, *&frame.size.height}];
  v19 = v17 + v13 + v18;
  v21 = v15 + v11 + v20;
  result.height = v21;
  result.width = v19;
  return result;
}

+ (UIEdgeInsets)panoramaViewLayoutInsetsForLayoutStyle:(int64_t)style referenceBounds:(CGRect)bounds chromeSidebarFrame:(CGRect)frame
{
  if (style != 3)
  {
    if (style == 1)
    {
      width = frame.size.width;
      goto LABEL_6;
    }

    if (style)
    {
      v8 = *MEMORY[0x1E69DDCE0];
      v7 = *(MEMORY[0x1E69DDCE0] + 8);
      v6 = *(MEMORY[0x1E69DDCE0] + 16);
      width = *(MEMORY[0x1E69DDCE0] + 24);
      goto LABEL_8;
    }
  }

  width = 10.0;
LABEL_6:
  v6 = 10.0;
  v7 = 10.0;
  v8 = 10.0;
LABEL_8:
  result.right = width;
  result.bottom = v6;
  result.left = v7;
  result.top = v8;
  return result;
}

+ (UIEdgeInsets)panoramaViewPreviewStripInsetsForLayoutStyle:(int64_t)style
{
  if (style == 3 || style <= 1)
  {
    v3 = 4.0;
    v4 = 4.0;
    v5 = 4.0;
    v6 = 4.0;
  }

  else
  {
    v6 = *MEMORY[0x1E69DDCE0];
    v5 = *(MEMORY[0x1E69DDCE0] + 8);
    v4 = *(MEMORY[0x1E69DDCE0] + 16);
    v3 = *(MEMORY[0x1E69DDCE0] + 24);
  }

  result.right = v3;
  result.bottom = v4;
  result.left = v5;
  result.top = v6;
  return result;
}

+ (CGSize)bufferSize
{
  v2 = +[CAMPanoramaConfiguration sharedInstance];
  maxWidth = [v2 maxWidth];
  sampleBufferWidth = [v2 sampleBufferWidth];

  v5 = maxWidth;
  v6 = sampleBufferWidth;
  result.height = v6;
  result.width = v5;
  return result;
}

@end