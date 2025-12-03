@interface BlastDoorDrawing
+ (id)createDrawing:(id)drawing frame:(CGRect)frame bound:(CGRect)bound;
+ (id)decodeDrawingStrokes:(id)strokes;
@end

@implementation BlastDoorDrawing

+ (id)createDrawing:(id)drawing frame:(CGRect)frame bound:(CGRect)bound
{
  height = bound.size.height;
  width = bound.size.width;
  y = bound.origin.y;
  x = bound.origin.x;
  v9 = frame.size.height;
  v10 = frame.size.width;
  v11 = frame.origin.y;
  v12 = frame.origin.x;
  v36 = *MEMORY[0x277D85DE8];
  drawingCopy = drawing;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2050000000;
  v14 = getDKDrawingClass_softClass;
  v30 = getDKDrawingClass_softClass;
  if (!getDKDrawingClass_softClass)
  {
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __getDKDrawingClass_block_invoke;
    v26[3] = &unk_2781764E8;
    v26[4] = &v27;
    __getDKDrawingClass_block_invoke(v26);
    v14 = v28[3];
  }

  v15 = v14;
  _Block_object_dispose(&v27, 8);
  v16 = [[v14 alloc] init];
  [v16 setStrokesFrame:{v12, v11, v10, v9}];
  [v16 setCanvasBounds:{x, y, width, height}];
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v17 = drawingCopy;
  v18 = [v17 countByEnumeratingWithState:&v32 objects:v31 count:16];
  if (v18)
  {
    v19 = *v33;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v33 != v19)
        {
          objc_enumerationMutation(v17);
        }

        v21 = *(*(&v32 + 1) + 8 * i);
        strokePoints = [v21 strokePoints];
        v23 = [v21 createDKStroke:strokePoints];

        [v16 addBrushStroke:v23];
      }

      v18 = [v17 countByEnumeratingWithState:&v32 objects:v31 count:16];
    }

    while (v18);
  }

  v24 = *MEMORY[0x277D85DE8];

  return v16;
}

+ (id)decodeDrawingStrokes:(id)strokes
{
  v18 = *MEMORY[0x277D85DE8];
  strokesCopy = strokes;
  array = [MEMORY[0x277CBEB18] array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  strokes = [strokesCopy strokes];
  v6 = [strokes countByEnumeratingWithState:&v14 objects:v13 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(strokes);
        }

        v10 = [BlastDoorDrawingStroke createBDStroke:*(*(&v14 + 1) + 8 * i)];
        [array addObject:v10];
      }

      v7 = [strokes countByEnumeratingWithState:&v14 objects:v13 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x277D85DE8];

  return array;
}

@end