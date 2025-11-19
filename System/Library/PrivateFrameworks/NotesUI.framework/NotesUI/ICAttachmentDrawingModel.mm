@interface ICAttachmentDrawingModel
@end

@implementation ICAttachmentDrawingModel

void __75__ICAttachmentDrawingModel_PreviewGeneration__generatePreviewsInOperation___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) attachment];
  v3 = [v2 drawingModel];
  v8 = [v3 drawing];

  [v8 unrotatedBoundsInCommandSpace];
  if (CGRectIsNull(v10))
  {
    [v8 bounds];
    [v8 setUnrotatedBoundsInCommandSpace:?];
  }

  [v8 setOrientation:0];
  v4 = [v8 serializeWithPathData:1];
  v5 = [objc_alloc(MEMORY[0x1E6978410]) initWithLegacyData:v4];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  [v8 fullBounds];
  [*(*(*(a1 + 40) + 8) + 40) set_canvasBounds:?];
}

void __70__ICAttachmentDrawingModel_UI__saveDrawing_withImage_forImageDrawing___block_invoke(uint64_t a1)
{
  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  v2 = *MEMORY[0x1E69B73E0];
  v3 = [*(a1 + 32) attachment];
  v4 = [v3 objectID];
  [v5 postNotificationName:v2 object:v4];
}

@end