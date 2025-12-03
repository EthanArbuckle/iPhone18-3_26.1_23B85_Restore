@interface ICASDrawingSnapshotItemData
- (ICASDrawingSnapshotItemData)initWithCountOfInlineDrawingV1PencilStrokes:(id)strokes countOfInlineDrawingV1FingerStrokes:(id)fingerStrokes countOfInlineDrawingV2PencilStrokes:(id)pencilStrokes countOfInlineDrawingV2FingerStrokes:(id)v2FingerStrokes countOfFullscreenDrawingStrokes:(id)drawingStrokes;
- (id)toDict;
@end

@implementation ICASDrawingSnapshotItemData

- (ICASDrawingSnapshotItemData)initWithCountOfInlineDrawingV1PencilStrokes:(id)strokes countOfInlineDrawingV1FingerStrokes:(id)fingerStrokes countOfInlineDrawingV2PencilStrokes:(id)pencilStrokes countOfInlineDrawingV2FingerStrokes:(id)v2FingerStrokes countOfFullscreenDrawingStrokes:(id)drawingStrokes
{
  strokesCopy = strokes;
  fingerStrokesCopy = fingerStrokes;
  pencilStrokesCopy = pencilStrokes;
  v2FingerStrokesCopy = v2FingerStrokes;
  drawingStrokesCopy = drawingStrokes;
  v21.receiver = self;
  v21.super_class = ICASDrawingSnapshotItemData;
  v17 = [(ICASDrawingSnapshotItemData *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_countOfInlineDrawingV1PencilStrokes, strokes);
    objc_storeStrong(&v18->_countOfInlineDrawingV1FingerStrokes, fingerStrokes);
    objc_storeStrong(&v18->_countOfInlineDrawingV2PencilStrokes, pencilStrokes);
    objc_storeStrong(&v18->_countOfInlineDrawingV2FingerStrokes, v2FingerStrokes);
    objc_storeStrong(&v18->_countOfFullscreenDrawingStrokes, drawingStrokes);
  }

  return v18;
}

- (id)toDict
{
  v23[5] = *MEMORY[0x277D85DE8];
  v22[0] = @"countOfInlineDrawingV1PencilStrokes";
  countOfInlineDrawingV1PencilStrokes = [(ICASDrawingSnapshotItemData *)self countOfInlineDrawingV1PencilStrokes];
  if (countOfInlineDrawingV1PencilStrokes)
  {
    countOfInlineDrawingV1PencilStrokes2 = [(ICASDrawingSnapshotItemData *)self countOfInlineDrawingV1PencilStrokes];
  }

  else
  {
    countOfInlineDrawingV1PencilStrokes2 = objc_opt_new();
  }

  v4 = countOfInlineDrawingV1PencilStrokes2;
  v23[0] = countOfInlineDrawingV1PencilStrokes2;
  v22[1] = @"countOfInlineDrawingV1FingerStrokes";
  countOfInlineDrawingV1FingerStrokes = [(ICASDrawingSnapshotItemData *)self countOfInlineDrawingV1FingerStrokes];
  if (countOfInlineDrawingV1FingerStrokes)
  {
    countOfInlineDrawingV1FingerStrokes2 = [(ICASDrawingSnapshotItemData *)self countOfInlineDrawingV1FingerStrokes];
  }

  else
  {
    countOfInlineDrawingV1FingerStrokes2 = objc_opt_new();
  }

  v7 = countOfInlineDrawingV1FingerStrokes2;
  v23[1] = countOfInlineDrawingV1FingerStrokes2;
  v22[2] = @"countOfInlineDrawingV2PencilStrokes";
  countOfInlineDrawingV2PencilStrokes = [(ICASDrawingSnapshotItemData *)self countOfInlineDrawingV2PencilStrokes];
  if (countOfInlineDrawingV2PencilStrokes)
  {
    countOfInlineDrawingV2PencilStrokes2 = [(ICASDrawingSnapshotItemData *)self countOfInlineDrawingV2PencilStrokes];
  }

  else
  {
    countOfInlineDrawingV2PencilStrokes2 = objc_opt_new();
  }

  v10 = countOfInlineDrawingV2PencilStrokes2;
  v23[2] = countOfInlineDrawingV2PencilStrokes2;
  v22[3] = @"countOfInlineDrawingV2FingerStrokes";
  countOfInlineDrawingV2FingerStrokes = [(ICASDrawingSnapshotItemData *)self countOfInlineDrawingV2FingerStrokes];
  if (countOfInlineDrawingV2FingerStrokes)
  {
    countOfInlineDrawingV2FingerStrokes2 = [(ICASDrawingSnapshotItemData *)self countOfInlineDrawingV2FingerStrokes];
  }

  else
  {
    countOfInlineDrawingV2FingerStrokes2 = objc_opt_new();
  }

  v13 = countOfInlineDrawingV2FingerStrokes2;
  v23[3] = countOfInlineDrawingV2FingerStrokes2;
  v22[4] = @"countOfFullscreenDrawingStrokes";
  countOfFullscreenDrawingStrokes = [(ICASDrawingSnapshotItemData *)self countOfFullscreenDrawingStrokes];
  if (countOfFullscreenDrawingStrokes)
  {
    countOfFullscreenDrawingStrokes2 = [(ICASDrawingSnapshotItemData *)self countOfFullscreenDrawingStrokes];
  }

  else
  {
    countOfFullscreenDrawingStrokes2 = objc_opt_new();
  }

  v16 = countOfFullscreenDrawingStrokes2;
  v23[4] = countOfFullscreenDrawingStrokes2;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:5];

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

@end