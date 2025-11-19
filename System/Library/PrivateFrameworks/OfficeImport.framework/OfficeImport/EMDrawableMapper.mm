@interface EMDrawableMapper
+ (BOOL)isAnchorRelative:(id)a3;
- (CGPoint)anchorMarkerToPosition:(EDCellAnchorMarker)a3 rowGrid:(double *)a4 columnGrid:(double *)a5 start:(BOOL)a6 relative:(BOOL)a7;
- (CGRect)getImageRect;
- (CGRect)mapAnchorToRect:(id)a3 rowGrid:(double *)a4 columnGrid:(double *)a5;
- (EMDrawableMapper)initWithChartDrawable:(id)a3 box:(CGRect)a4 parent:(id)a5;
- (EMDrawableMapper)initWithOADDrawable:(id)a3 parent:(id)a4;
- (EMDrawableMapper)initWithOADDrawable:(id)a3 rowGrid:(double *)a4 columnGrid:(double *)a5;
- (id)getImageBounds;
- (id)worksheetMapper;
- (void)mapAt:(id)a3 withState:(id)a4;
- (void)mapBounds;
- (void)mapChartAt:(id)a3 withState:(id)a4;
- (void)mapDiagramAt:(id)a3 withState:(id)a4;
- (void)mapOfficeArtGroupAt:(id)a3 withState:(id)a4;
- (void)mapOfficeArtShapeAt:(id)a3 withState:(id)a4;
- (void)mapTextBoxAt:(id)a3 withState:(id)a4;
- (void)setBoundingBox;
@end

@implementation EMDrawableMapper

- (id)worksheetMapper
{
  WeakRetained = objc_loadWeakRetained(&self->super.super.mParent);
  if (WeakRetained)
  {
    do
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      v3 = [WeakRetained parent];

      WeakRetained = v3;
    }

    while (v3);
  }

  return WeakRetained;
}

- (void)mapBounds
{
  if (!self->super.mOrientedBounds)
  {
    v3 = [(EMDrawableMapper *)self getImageBounds];
    mOrientedBounds = self->super.mOrientedBounds;
    self->super.mOrientedBounds = v3;

    v5 = self->super.mOrientedBounds;
    if (v5)
    {
      [(OADOrientedBounds *)v5 bounds];
      self->super.mBox.origin.x = v6;
      self->super.mBox.origin.y = v7;
      self->super.mBox.size.width = v8;
      self->super.mBox.size.height = v9;
    }

    else
    {
      v10 = *(MEMORY[0x277CBF3A0] + 16);
      self->super.mBox.origin = *MEMORY[0x277CBF3A0];
      self->super.mBox.size = v10;
    }
  }
}

- (CGRect)getImageRect
{
  v2 = [(EMDrawableMapper *)self getImageBounds];
  v3 = v2;
  if (v2)
  {
    [v2 bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
  }

  else
  {
    v5 = *MEMORY[0x277CBF3A0];
    v7 = *(MEMORY[0x277CBF3A0] + 8);
    v9 = *(MEMORY[0x277CBF3A0] + 16);
    v11 = *(MEMORY[0x277CBF3A0] + 24);
  }

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (EMDrawableMapper)initWithOADDrawable:(id)a3 parent:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = EMDrawableMapper;
  v8 = [(CMDrawableMapper *)&v13 initWithOadDrawable:v6 parent:v7];
  v9 = v8;
  if (v8)
  {
    v10 = [(EMDrawableMapper *)v8 worksheetMapper];
    v9->mRowGrid = [v10 rowGrid];

    v11 = [(EMDrawableMapper *)v9 worksheetMapper];
    v9->mColumnGrid = [v11 columnGrid];
  }

  return v9;
}

- (EMDrawableMapper)initWithChartDrawable:(id)a3 box:(CGRect)a4 parent:(id)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v11 = a3;
  v12 = a5;
  v18.receiver = self;
  v18.super_class = EMDrawableMapper;
  v13 = [(CMDrawableMapper *)&v18 initWithOadDrawable:v11 parent:v12];
  v14 = v13;
  if (v13)
  {
    v13->mRowGrid = 0;
    v13->mColumnGrid = 0;
    v13->super.mBox.origin.x = x;
    v13->super.mBox.origin.y = y;
    v13->super.mBox.size.width = width;
    v13->super.mBox.size.height = height;
    v15 = [OADOrientedBounds orientedBoundsWithBounds:x, y, width, height];
    mOrientedBounds = v14->super.mOrientedBounds;
    v14->super.mOrientedBounds = v15;
  }

  return v14;
}

- (EMDrawableMapper)initWithOADDrawable:(id)a3 rowGrid:(double *)a4 columnGrid:(double *)a5
{
  v8.receiver = self;
  v8.super_class = EMDrawableMapper;
  result = [(CMDrawableMapper *)&v8 initWithOadDrawable:a3 parent:0];
  if (result)
  {
    result->mRowGrid = a4;
    result->mColumnGrid = a5;
  }

  return result;
}

- (void)mapAt:(id)a3 withState:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (![(OADDrawable *)self->super.mDrawable hidden])
  {
    [(EMDrawableMapper *)self mapBounds];
    [(CMDrawableStyle *)self->super.mStyle addPositionProperties:self->super.mBox.origin.x, self->super.mBox.origin.y, self->super.mBox.size.width, self->super.mBox.size.height];
    if (self->super.mOrientedBounds)
    {
      [(CMDrawableStyle *)self->super.mStyle addRotationFromBounds:?];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(EMDrawableMapper *)self mapOfficeArtShapeAt:v6 withState:v7];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(EMDrawableMapper *)self mapOfficeArtGroupAt:v6 withState:v7];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [(EMDrawableMapper *)self mapChartAt:v6 withState:v7];
        }

        else
        {
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();
          mDrawable = self->super.mDrawable;
          if (isKindOfClass)
          {
            v17.receiver = self;
            v17.super_class = EMDrawableMapper;
            [(CMDrawableMapper *)&v17 setWithOadImage:mDrawable];
            if (!self->super.mImageBinaryData)
            {
              goto LABEL_18;
            }

            v10 = [OIXMLElement elementWithType:9];
            mImageBinaryData = self->super.mImageBinaryData;
            mResourceType = self->super.mResourceType;
            v16.receiver = self;
            v16.super_class = EMDrawableMapper;
            v13 = [(CMDrawableMapper *)&v16 saveResourceAndReturnPath:mImageBinaryData withType:mResourceType];
            [(CMMapper *)self addAttribute:0x286F07DB0 toNode:v10 value:v13];

            v14 = v10;
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [(EMDrawableMapper *)self mapDiagramAt:v6 withState:v7];
              goto LABEL_18;
            }

            v14 = [OIXMLElement elementWithType:3];
            [(CMStyle *)self->super.mStyle appendPropertyForName:0x286F07E30 stringWithColons:@": 1px solid black;"];
          }

          if (v14)
          {
            [v6 addChild:v14];
            v15 = [(CMStyle *)self->super.mStyle cssStyleString];
            [(CMMapper *)self addAttribute:0x286EEA590 toNode:v14 value:v15];
          }
        }
      }
    }
  }

LABEL_18:
}

- (void)setBoundingBox
{
  [(EMDrawableMapper *)self getImageRect];
  self->super.mBox.origin.x = v3;
  self->super.mBox.origin.y = v4;
  self->super.mBox.size.width = v5;
  self->super.mBox.size.height = v6;
}

- (id)getImageBounds
{
  v3 = [(OADDrawable *)self->super.mDrawable clientData];
  if ([v3 hasBounds])
  {
    [v3 bounds];
    v4 = [OADOrientedBounds orientedBoundsWithBounds:?];
    goto LABEL_8;
  }

  v5 = [(OADDrawable *)self->super.mDrawable drawableProperties];
  v6 = [v5 hasOrientedBounds];

  if (v6)
  {
    v7 = [(OADDrawable *)self->super.mDrawable drawableProperties];
    v8 = [v7 orientedBounds];
LABEL_7:
    v4 = v8;

    goto LABEL_8;
  }

  v9 = [v3 anchor];

  if (v9)
  {
    v7 = [v3 anchor];
    [(EMDrawableMapper *)self mapAnchorToRect:v7 rowGrid:self->mRowGrid columnGrid:self->mColumnGrid];
    v8 = [OADOrientedBounds orientedBoundsWithBounds:?];
    goto LABEL_7;
  }

  v4 = 0;
LABEL_8:

  return v4;
}

- (CGPoint)anchorMarkerToPosition:(EDCellAnchorMarker)a3 rowGrid:(double *)a4 columnGrid:(double *)a5 start:(BOOL)a6 relative:(BOOL)a7
{
  v7 = a7;
  v10 = *&a3.rowIndex;
  v11 = *&a3.columnIndex;
  v13 = [(EMDrawableMapper *)self worksheetMapper:*&a3.columnIndex];
  v14 = [v13 columnCount];

  v15 = [(EMDrawableMapper *)self worksheetMapper];
  v16 = [v15 maxRowNumber];

  v17 = 0;
  v18 = 0.0;
  while (v14 != v17)
  {
    if (a5)
    {
      v19 = a5[v17];
      v18 = v18 + v19;
    }

    else
    {
      v20 = [(EMDrawableMapper *)self worksheetMapper];
      [v20 defaultColumnWidth];
      v19 = v21;
    }

    if (++v17 > v11)
    {
      goto LABEL_9;
    }
  }

  v22 = [(EMDrawableMapper *)self worksheetMapper];
  [v22 defaultColumnWidth];
  v24 = v23;

  v25 = [(EMDrawableMapper *)self worksheetMapper];
  [v25 defaultColumnWidth];
  v19 = v26;
  v18 = v18 + (v11 - v14 + 1) * v24;

LABEL_9:
  v27 = 0;
  if (v7)
  {
    v28 = v18 + v19 * (*(&v11 + 1) + -1.0);
  }

  else
  {
    v28 = v18 + *(&v11 + 1) - v19;
  }

  v29 = 0.0;
  while (v27 <= v16)
  {
    v30 = a4[v27] / 20.0;
    v29 = v29 + v30;
    if (++v27 > v10)
    {
      goto LABEL_17;
    }
  }

  v31 = [(EMDrawableMapper *)self worksheetMapper];
  [v31 defaultRowHeight];
  v33 = v32;

  v34 = [(EMDrawableMapper *)self worksheetMapper];
  [v34 defaultRowHeight];
  v29 = v29 + v33 * (v10 - v16) / 20.0;
  v30 = v35 / 20.0;

LABEL_17:
  v36 = v29 + v30 * (*(&v10 + 1) + -1.0);
  if (!v7)
  {
    v36 = v29 + *(&v10 + 1) - v30;
  }

  v37 = v28 + 5.0;
  v38 = v36 + 11.0;
  result.y = v38;
  result.x = v37;
  return result;
}

- (CGRect)mapAnchorToRect:(id)a3 rowGrid:(double *)a4 columnGrid:(double *)a5
{
  v9 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v9 position];
    v11 = v10;
    [v9 size];
    v13 = v12;
    v15 = v14;
    v16 = 0.0;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [v9 from];
      -[EMDrawableMapper anchorMarkerToPosition:rowGrid:columnGrid:start:relative:](self, "anchorMarkerToPosition:rowGrid:columnGrid:start:relative:", v17, v18, a4, a5, 1, [v9 isRelative]);
      v16 = v19;
      v11 = v20;
      [v9 size];
      v13 = v21;
      v15 = v22;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v23 = [v9 from];
        -[EMDrawableMapper anchorMarkerToPosition:rowGrid:columnGrid:start:relative:](self, "anchorMarkerToPosition:rowGrid:columnGrid:start:relative:", v23, v24, a4, a5, 1, [v9 isRelative]);
        v16 = v25;
        v11 = v26;
        v27 = [v9 to];
        -[EMDrawableMapper anchorMarkerToPosition:rowGrid:columnGrid:start:relative:](self, "anchorMarkerToPosition:rowGrid:columnGrid:start:relative:", v27, v28, a4, a5, 0, [v9 isRelative]);
        v13 = v29 - v16;
        v15 = v30 - v11;
      }

      else
      {
        v31 = [MEMORY[0x277CCA890] currentHandler];
        [v31 handleFailureInMethod:a2 object:self file:@"EMDrawableMapper.mm" lineNumber:274 description:{@"Unknown class %@", v9}];

        v16 = *MEMORY[0x277CBF348];
        v11 = *(MEMORY[0x277CBF348] + 8);
        v13 = *MEMORY[0x277CBF3A8];
        v15 = *(MEMORY[0x277CBF3A8] + 8);
      }
    }
  }

  v32 = v16;
  v33 = v11;
  v34 = v13;
  v35 = v15;
  result.size.height = v35;
  result.size.width = v34;
  result.origin.y = v33;
  result.origin.x = v32;
  return result;
}

- (void)mapTextBoxAt:(id)a3 withState:(id)a4
{
  v13 = a3;
  v5 = [(OADDrawable *)self->super.mDrawable clientData];
  v6 = [v5 comment];
  if (!v6 || ([v5 comment], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "visible"), v7, v6, (v8 & 1) != 0))
  {
    if ([v5 hasText])
    {
      v9 = [v5 textBox];
      v10 = [EMCellTextMapper alloc];
      v11 = [v9 text];
      v12 = [(EMCellTextMapper *)v10 initWithEDString:v11 style:0 parent:self];

      [(EMCellTextMapper *)v12 mapTextRunsAt:v13];
    }
  }
}

+ (BOOL)isAnchorRelative:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v4 = [v3 isRelative];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)mapOfficeArtShapeAt:(id)a3 withState:(id)a4
{
  v39 = a3;
  v40 = a4;
  v6 = [(OADDrawable *)self->super.mDrawable clientData];
  v7 = [v6 comment];
  if (!v7 || ([v6 comment], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "visible"), v8, v7, (v9 & 1) != 0))
  {
    v37 = self->super.mDrawable;
    v10 = [(OADDrawable *)v37 type];
    v11 = [(OADDrawable *)v37 shapeProperties];
    v12 = [v11 fill];
    v13 = v12;
    v38 = v12;
    if (v12)
    {
      objc_opt_class();
      v13 = objc_opt_isKindOfClass() ^ 1;
    }

    v14 = [v11 stroke];
    v15 = [CMBordersProperty isStroked:v14];

    v16 = [v11 isTextBox];
    v17 = [OIXMLElement elementWithType:3];
    if (v10 == 1 || v10 == 75 || v10 == 202)
    {
      v20 = 1;
    }

    else
    {
      v20 = v16;
    }

    if ((v20 & 1) != 0 || ((v13 | v15) & 1) == 0)
    {
      [(EMDrawableMapper *)self mapTextBoxAt:v17 withState:v40];
      if (v15)
      {
        v31 = [CMBordersProperty alloc];
        v32 = [v11 stroke];
        v33 = [(CMBordersProperty *)v31 initWithOADStroke:v32];

        [(CMStyle *)self->super.mStyle addProperty:v33 forKey:0x286F07E30];
      }

      if (v13)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          mStyle = self->super.mStyle;
          v35 = [v38 color];
          v36 = [CMColorProperty cssStringFromOADColor:v35];
          [(CMStyle *)mStyle appendPropertyForName:0x286F07DF0 stringWithColons:v36];
        }
      }

      [(CMMapper *)self addStyleUsingGlobalCacheTo:v17 style:self->super.mStyle];
      [v39 addChild:v17];
    }

    else
    {
      [(CMMapper *)self addStyleUsingGlobalCacheTo:v17 style:self->super.mStyle];
      v42.receiver = self;
      v42.super_class = EMDrawableMapper;
      [(CMDrawableMapper *)&v42 mapShapeGraphicsAt:v17 withState:v40];
      [v39 addChild:v17];
      if ([v6 hasText])
      {
        v21 = [OIXMLElement elementWithType:3];
        [(EMDrawableMapper *)self mapTextBoxAt:v21 withState:v40];
        v41.receiver = self;
        v41.super_class = EMDrawableMapper;
        [(CMDrawableMapper *)&v41 shapeTextBoxRect];
        v23 = v22;
        v25 = v24;
        v27 = v26;
        v29 = v28;
        v30 = objc_alloc_init(CMStyle);
        [(CMStyle *)v30 appendPositionInfoFromRect:v23 - self->super.mBox.origin.x, v25 - self->super.mBox.origin.y, v27, v29];
        [(CMStyle *)v30 appendPropertyForName:0x286EF5C90 stringWithColons:@":absolute;"];
        [(CMMapper *)self addStyleUsingGlobalCacheTo:v21 style:v30];
        [v17 addChild:v21];
      }
    }
  }
}

- (void)mapOfficeArtGroupAt:(id)a3 withState:(id)a4
{
  v13 = a3;
  v6 = a4;
  v7 = self->super.mDrawable;
  v8 = [(OADDrawable *)v7 childCount];
  if (v8)
  {
    v9 = 0;
    v10 = 0;
    do
    {
      v11 = [(OADDrawable *)v7 childAtIndex:v9];

      v12 = [[EMDrawableMapper alloc] initWithOADDrawable:v11 parent:self];
      [(EMDrawableMapper *)v12 mapAt:v13 withState:v6];

      ++v9;
      v10 = v11;
    }

    while (v8 != v9);
  }
}

- (void)mapChartAt:(id)a3 withState:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [[EMChartMapper alloc] initWithChart:self->super.mDrawable parent:self];
  [(OADOrientedBounds *)self->super.mOrientedBounds bounds];
  v11 = [(EMChartMapper *)v8 copyPdfWithState:v7 withSize:v9, v10];
  v12 = [OIXMLElement elementWithType:9];
  if (v11)
  {
    v14.receiver = self;
    v14.super_class = EMDrawableMapper;
    v13 = [(CMDrawableMapper *)&v14 saveResourceAndReturnPath:v11 withType:7];
    [(CMMapper *)self addAttribute:0x286F07DB0 toNode:v12 value:v13];
  }

  else
  {
    [(CMStyle *)self->super.mStyle appendPropertyForName:0x286F07E30 stringWithColons:@": 1px solid black;"];
  }

  [v6 addChild:v12];
  [(CMMapper *)self addStyleUsingGlobalCacheTo:v12 style:self->super.mStyle];
}

- (void)mapDiagramAt:(id)a3 withState:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [OIXMLElement elementWithType:3];
  [(CMMapper *)self addStyleUsingGlobalCacheTo:v8 style:self->super.mStyle];
  [v6 addChild:v8];
  v17 = v8;

  Width = CGRectGetWidth(self->super.mBox);
  Height = CGRectGetHeight(self->super.mBox);
  v11 = [[CMDrawingContext alloc] initWithFrame:0.0, 0.0, Width, Height];
  v12 = [OADOrientedBounds orientedBoundsWithBounds:0.0, 0.0, Width, Height];
  mOrientedBounds = self->super.mOrientedBounds;
  self->super.mOrientedBounds = v12;

  v14 = [OIXMLElement elementWithType:3];
  v15 = objc_alloc_init(CMDrawableStyle);
  [(CMStyle *)v15 appendPropertyForName:0x286EF5C90 stringWithColons:@":absolute;"];
  [(CMMapper *)self addStyleUsingGlobalCacheTo:v14 style:v15];
  v16 = [[CMDiagramMapper alloc] initWithOddDiagram:self->super.mDrawable drawingContext:v11 orientedBounds:self->super.mOrientedBounds parent:self];
  [(CMDiagramMapper *)v16 mapAt:v14 withState:v7];
  [(CMDrawableMapper *)self mapDrawingContext:v11 at:v17 relative:0 withState:v7];
  [v17 addChild:v14];
}

@end