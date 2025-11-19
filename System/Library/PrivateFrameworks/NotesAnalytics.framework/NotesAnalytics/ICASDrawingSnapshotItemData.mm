@interface ICASDrawingSnapshotItemData
- (ICASDrawingSnapshotItemData)initWithCountOfInlineDrawingV1PencilStrokes:(id)a3 countOfInlineDrawingV1FingerStrokes:(id)a4 countOfInlineDrawingV2PencilStrokes:(id)a5 countOfInlineDrawingV2FingerStrokes:(id)a6 countOfFullscreenDrawingStrokes:(id)a7;
- (id)toDict;
@end

@implementation ICASDrawingSnapshotItemData

- (ICASDrawingSnapshotItemData)initWithCountOfInlineDrawingV1PencilStrokes:(id)a3 countOfInlineDrawingV1FingerStrokes:(id)a4 countOfInlineDrawingV2PencilStrokes:(id)a5 countOfInlineDrawingV2FingerStrokes:(id)a6 countOfFullscreenDrawingStrokes:(id)a7
{
  v20 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v21.receiver = self;
  v21.super_class = ICASDrawingSnapshotItemData;
  v17 = [(ICASDrawingSnapshotItemData *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_countOfInlineDrawingV1PencilStrokes, a3);
    objc_storeStrong(&v18->_countOfInlineDrawingV1FingerStrokes, a4);
    objc_storeStrong(&v18->_countOfInlineDrawingV2PencilStrokes, a5);
    objc_storeStrong(&v18->_countOfInlineDrawingV2FingerStrokes, a6);
    objc_storeStrong(&v18->_countOfFullscreenDrawingStrokes, a7);
  }

  return v18;
}

- (id)toDict
{
  v23[5] = *MEMORY[0x277D85DE8];
  v22[0] = @"countOfInlineDrawingV1PencilStrokes";
  v20 = [(ICASDrawingSnapshotItemData *)self countOfInlineDrawingV1PencilStrokes];
  if (v20)
  {
    v3 = [(ICASDrawingSnapshotItemData *)self countOfInlineDrawingV1PencilStrokes];
  }

  else
  {
    v3 = objc_opt_new();
  }

  v4 = v3;
  v23[0] = v3;
  v22[1] = @"countOfInlineDrawingV1FingerStrokes";
  v5 = [(ICASDrawingSnapshotItemData *)self countOfInlineDrawingV1FingerStrokes];
  if (v5)
  {
    v6 = [(ICASDrawingSnapshotItemData *)self countOfInlineDrawingV1FingerStrokes];
  }

  else
  {
    v6 = objc_opt_new();
  }

  v7 = v6;
  v23[1] = v6;
  v22[2] = @"countOfInlineDrawingV2PencilStrokes";
  v8 = [(ICASDrawingSnapshotItemData *)self countOfInlineDrawingV2PencilStrokes];
  if (v8)
  {
    v9 = [(ICASDrawingSnapshotItemData *)self countOfInlineDrawingV2PencilStrokes];
  }

  else
  {
    v9 = objc_opt_new();
  }

  v10 = v9;
  v23[2] = v9;
  v22[3] = @"countOfInlineDrawingV2FingerStrokes";
  v11 = [(ICASDrawingSnapshotItemData *)self countOfInlineDrawingV2FingerStrokes];
  if (v11)
  {
    v12 = [(ICASDrawingSnapshotItemData *)self countOfInlineDrawingV2FingerStrokes];
  }

  else
  {
    v12 = objc_opt_new();
  }

  v13 = v12;
  v23[3] = v12;
  v22[4] = @"countOfFullscreenDrawingStrokes";
  v14 = [(ICASDrawingSnapshotItemData *)self countOfFullscreenDrawingStrokes];
  if (v14)
  {
    v15 = [(ICASDrawingSnapshotItemData *)self countOfFullscreenDrawingStrokes];
  }

  else
  {
    v15 = objc_opt_new();
  }

  v16 = v15;
  v23[4] = v15;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:5];

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

@end