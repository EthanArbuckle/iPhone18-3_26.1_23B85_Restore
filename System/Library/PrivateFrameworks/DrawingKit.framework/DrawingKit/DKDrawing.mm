@interface DKDrawing
+ (id)copyOfDrawing:(id)a3 toFitInBounds:(CGRect)a4;
+ (void)resizeDrawing:(id)a3 toFitInBounds:(CGRect)a4;
- (CGRect)canvasBounds;
- (CGRect)strokesFrame;
- (DKDrawing)init;
- (DKDrawing)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)decodedBrushStrokesWithArchiverEncodedBrushStrokes:(id)a3;
- (id)encodeBrushStrokesForArchiving;
- (int64_t)totalPoints;
- (void)encodeWithCoder:(id)a3;
- (void)reset;
@end

@implementation DKDrawing

- (DKDrawing)init
{
  v7.receiver = self;
  v7.super_class = DKDrawing;
  v2 = [(DKDrawing *)&v7 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB18] array];
    strokes = v2->_strokes;
    v2->_strokes = v3;

    v5 = *(MEMORY[0x277CBF3A0] + 16);
    v2->_strokesFrame.origin = *MEMORY[0x277CBF3A0];
    v2->_strokesFrame.size = v5;
  }

  return v2;
}

- (void)reset
{
  v3 = [MEMORY[0x277CBEB18] array];
  strokes = self->_strokes;
  self->_strokes = v3;

  v5 = *(MEMORY[0x277CBF3A0] + 16);
  self->_strokesFrame.origin = *MEMORY[0x277CBF3A0];
  self->_strokesFrame.size = v5;
}

- (int64_t)totalPoints
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [(DKDrawing *)self strokes];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v11;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = [*(*(&v10 + 1) + 8 * i) strokePoints];
        v5 += [v8 count];
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(DKDrawing);
  v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:self->_strokes copyItems:1];
  strokes = v4->_strokes;
  v4->_strokes = v5;

  size = self->_strokesFrame.size;
  v4->_strokesFrame.origin = self->_strokesFrame.origin;
  v4->_strokesFrame.size = size;
  v8 = self->_canvasBounds.size;
  v4->_canvasBounds.origin = self->_canvasBounds.origin;
  v4->_canvasBounds.size = v8;
  return v4;
}

- (DKDrawing)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(DKDrawing *)self init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [v6 setWithObjects:{v7, v8, objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"sb1"];

    CGRectMakeWithDictionaryRepresentation(v10, &v5->_strokesFrame);
    v11 = MEMORY[0x277CBEB98];
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = [v11 setWithObjects:{v12, v13, objc_opt_class(), 0}];
    v15 = [v4 decodeObjectOfClasses:v14 forKey:@"cb1"];

    CGRectMakeWithDictionaryRepresentation(v15, &v5->_canvasBounds);
    v16 = MEMORY[0x277CBEB98];
    v17 = objc_opt_class();
    v18 = objc_opt_class();
    v19 = objc_opt_class();
    v20 = [v16 setWithObjects:{v17, v18, v19, objc_opt_class(), 0}];
    v21 = [v4 decodeObjectOfClasses:v20 forKey:@"st1"];

    v22 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v21, "count")}];
    strokes = v5->_strokes;
    v5->_strokes = v22;

    v24 = [(DKDrawing *)v5 decodedBrushStrokesWithArchiverEncodedBrushStrokes:v21];
    v25 = v5->_strokes;
    v5->_strokes = v24;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v7 = [(DKDrawing *)self encodeBrushStrokesForArchiving];
  [v4 encodeObject:v7 forKey:@"st1"];
  DictionaryRepresentation = CGRectCreateDictionaryRepresentation(self->_strokesFrame);
  [v4 encodeObject:DictionaryRepresentation forKey:@"sb1"];
  v6 = CGRectCreateDictionaryRepresentation(self->_canvasBounds);

  [v4 encodeObject:v6 forKey:@"cb1"];
}

- (id)encodeBrushStrokesForArchiving
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[NSMutableArray count](self->_strokes, "count")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = self->_strokes;
  v4 = [(NSMutableArray *)obj countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v16 + 1) + 8 * i);
        v9 = [v8 encodedBrushStroke];
        v10 = [v8 strokePoints];
        v11 = [v10 count];

        v20[1] = @"ct1";
        v21[0] = v9;
        v20[0] = @"bt1";
        v12 = [MEMORY[0x277CCABB0] numberWithInt:v11];
        v21[1] = v12;
        v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];
        [v3 addObject:v13];
      }

      v5 = [(NSMutableArray *)obj countByEnumeratingWithState:&v16 objects:v22 count:16];
    }

    while (v5);
  }

  return v3;
}

- (id)decodedBrushStrokesWithArchiverEncodedBrushStrokes:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v17 = [MEMORY[0x277CBEB18] array];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        v10 = [v9 objectForKey:@"bt1"];
        v11 = [v9 objectForKey:@"ct1"];
        v12 = [v11 intValue];

        if ([v10 length])
        {
          v13 = v12 == 0;
        }

        else
        {
          v13 = 1;
        }

        if (v13)
        {
          NSLog(&cfstr_EncodedStrokeH.isa, [v10 length], v12);
        }

        else
        {
          v14 = [DKDrawingStroke drawingStrokeWithData:v10 count:v12];
          v15 = v14;
          if (v14)
          {
            [v17 addObject:v14];
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }

  return v17;
}

+ (id)copyOfDrawing:(id)a3 toFitInBounds:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v8 = [a3 copy];
  [objc_opt_class() resizeDrawing:v8 toFitInBounds:{x, y, width, height}];
  return v8;
}

+ (void)resizeDrawing:(id)a3 toFitInBounds:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  v67 = *MEMORY[0x277D85DE8];
  v6 = a3;
  [v6 strokesFrame];
  v8 = v7;
  [v6 strokesFrame];
  v10 = v9;
  [v6 strokesFrame];
  v12 = width / v11;
  [v6 strokesFrame];
  v59 = 0u;
  v60 = 0u;
  if (v12 >= height / v13)
  {
    v12 = height / v13;
  }

  v61 = 0uLL;
  v62 = 0uLL;
  v14 = [v6 strokes];
  v15 = [v14 countByEnumeratingWithState:&v59 objects:v66 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v60;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v60 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v59 + 1) + 8 * i);
        v55 = 0u;
        v56 = 0u;
        v57 = 0u;
        v58 = 0u;
        v20 = [v19 strokePoints];
        v21 = [v20 countByEnumeratingWithState:&v55 objects:v65 count:16];
        if (v21)
        {
          v22 = v21;
          v23 = *v56;
          do
          {
            for (j = 0; j != v22; ++j)
            {
              if (*v56 != v23)
              {
                objc_enumerationMutation(v20);
              }

              v25 = *(*(&v55 + 1) + 8 * j);
              [v25 location];
              v27 = v26 - v8;
              [v25 location];
              [v25 setLocation:{v27, v28 - v10}];
            }

            v22 = [v20 countByEnumeratingWithState:&v55 objects:v65 count:16];
          }

          while (v22);
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v59 objects:v66 count:16];
    }

    while (v16);
  }

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v29 = [v6 strokes];
  v30 = [v29 countByEnumeratingWithState:&v51 objects:v64 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v52;
    do
    {
      for (k = 0; k != v31; ++k)
      {
        if (*v52 != v32)
        {
          objc_enumerationMutation(v29);
        }

        v34 = *(*(&v51 + 1) + 8 * k);
        v47 = 0u;
        v48 = 0u;
        v49 = 0u;
        v50 = 0u;
        v35 = [v34 strokePoints];
        v36 = [v35 countByEnumeratingWithState:&v47 objects:v63 count:16];
        if (v36)
        {
          v37 = v36;
          v38 = *v48;
          do
          {
            for (m = 0; m != v37; ++m)
            {
              if (*v48 != v38)
              {
                objc_enumerationMutation(v35);
              }

              v40 = *(*(&v47 + 1) + 8 * m);
              [v40 location];
              v42 = v12 * v41;
              [v40 location];
              [v40 setLocation:{v42, v12 * v43}];
            }

            v37 = [v35 countByEnumeratingWithState:&v47 objects:v63 count:16];
          }

          while (v37);
        }
      }

      v31 = [v29 countByEnumeratingWithState:&v51 objects:v64 count:16];
    }

    while (v31);
  }

  [v6 strokesFrame];
  v45 = v12 * v44;
  [v6 strokesFrame];
  [v6 setStrokesFrame:{0.0, 0.0, v45, v12 * v46}];
}

- (CGRect)canvasBounds
{
  x = self->_canvasBounds.origin.x;
  y = self->_canvasBounds.origin.y;
  width = self->_canvasBounds.size.width;
  height = self->_canvasBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)strokesFrame
{
  x = self->_strokesFrame.origin.x;
  y = self->_strokesFrame.origin.y;
  width = self->_strokesFrame.size.width;
  height = self->_strokesFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end