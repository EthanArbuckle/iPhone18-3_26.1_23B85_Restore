@interface CAMPanoramaUtilities
+ (CGSize)bufferSize;
+ (CGSize)defaultPreviewSize;
+ (CGSize)panoramaViewSizeForCaptureSize:(CGSize)a3 referenceBounds:(CGRect)a4 chromeSidebarFrame:(CGRect)a5 layoutStyle:(int64_t)a6;
+ (CGSize)previewStripSizeForCaptureSize:(CGSize)a3 referenceBounds:(CGRect)a4 chromeSidebarFrame:(CGRect)a5 layoutStyle:(int64_t)a6;
+ (UIEdgeInsets)panoramaViewLayoutInsetsForLayoutStyle:(int64_t)a3 referenceBounds:(CGRect)a4 chromeSidebarFrame:(CGRect)a5;
+ (UIEdgeInsets)panoramaViewPreviewStripInsetsForLayoutStyle:(int64_t)a3;
@end

@implementation CAMPanoramaUtilities

+ (CGSize)defaultPreviewSize
{
  v3 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v3 _referenceBounds];

  v4 = [MEMORY[0x1E69DC938] currentDevice];
  v5 = [v4 cam_initialLayoutStyle];

  [a1 bufferSize];
  [a1 previewStripSizeForCaptureSize:v5 referenceBounds:*MEMORY[0x1E695F058] chromeSidebarFrame:*(MEMORY[0x1E695F058] + 8) layoutStyle:{*(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  result.height = v7;
  result.width = v6;
  return result;
}

+ (CGSize)previewStripSizeForCaptureSize:(CGSize)a3 referenceBounds:(CGRect)a4 chromeSidebarFrame:(CGRect)a5 layoutStyle:(int64_t)a6
{
  y = a4.origin.y;
  height = a4.size.height;
  width = a4.size.width;
  x = a4.origin.x;
  [a1 panoramaViewPreviewStripInsetsForLayoutStyle:?];
  v11 = v10;
  v13 = v12;
  [a1 panoramaViewLayoutInsetsForLayoutStyle:a6 referenceBounds:x chromeSidebarFrame:{y, width, height, a5.origin.x, a5.origin.y, a5.size.width, a5.size.height}];
  v16 = width - v11 - v13 - v14 - v15;
  v17 = floor(a3.height / a3.width * v16);
  result.height = v17;
  result.width = v16;
  return result;
}

+ (CGSize)panoramaViewSizeForCaptureSize:(CGSize)a3 referenceBounds:(CGRect)a4 chromeSidebarFrame:(CGRect)a5 layoutStyle:(int64_t)a6
{
  height = a3.height;
  width = a3.width;
  [a1 panoramaViewPreviewStripInsetsForLayoutStyle:?];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  [a1 previewStripSizeForCaptureSize:a6 referenceBounds:width chromeSidebarFrame:height layoutStyle:{a4.origin.x, a4.origin.y, a4.size.width, a4.size.height, *&a5.origin.x, *&a5.origin.y, *&a5.size.width, *&a5.size.height}];
  v19 = v17 + v13 + v18;
  v21 = v15 + v11 + v20;
  result.height = v21;
  result.width = v19;
  return result;
}

+ (UIEdgeInsets)panoramaViewLayoutInsetsForLayoutStyle:(int64_t)a3 referenceBounds:(CGRect)a4 chromeSidebarFrame:(CGRect)a5
{
  if (a3 != 3)
  {
    if (a3 == 1)
    {
      width = a5.size.width;
      goto LABEL_6;
    }

    if (a3)
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

+ (UIEdgeInsets)panoramaViewPreviewStripInsetsForLayoutStyle:(int64_t)a3
{
  if (a3 == 3 || a3 <= 1)
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
  v3 = [v2 maxWidth];
  v4 = [v2 sampleBufferWidth];

  v5 = v3;
  v6 = v4;
  result.height = v6;
  result.width = v5;
  return result;
}

@end