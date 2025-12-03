@interface EMDrawableMapper
+ (BOOL)isAnchorRelative:(id)relative;
- (CGPoint)anchorMarkerToPosition:(EDCellAnchorMarker)position rowGrid:(double *)grid columnGrid:(double *)columnGrid start:(BOOL)start relative:(BOOL)relative;
- (CGRect)getImageRect;
- (CGRect)mapAnchorToRect:(id)rect rowGrid:(double *)grid columnGrid:(double *)columnGrid;
- (EMDrawableMapper)initWithChartDrawable:(id)drawable box:(CGRect)box parent:(id)parent;
- (EMDrawableMapper)initWithOADDrawable:(id)drawable parent:(id)parent;
- (EMDrawableMapper)initWithOADDrawable:(id)drawable rowGrid:(double *)grid columnGrid:(double *)columnGrid;
- (id)getImageBounds;
- (id)worksheetMapper;
- (void)mapAt:(id)at withState:(id)state;
- (void)mapBounds;
- (void)mapChartAt:(id)at withState:(id)state;
- (void)mapDiagramAt:(id)at withState:(id)state;
- (void)mapOfficeArtGroupAt:(id)at withState:(id)state;
- (void)mapOfficeArtShapeAt:(id)at withState:(id)state;
- (void)mapTextBoxAt:(id)at withState:(id)state;
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

      parent = [WeakRetained parent];

      WeakRetained = parent;
    }

    while (parent);
  }

  return WeakRetained;
}

- (void)mapBounds
{
  if (!self->super.mOrientedBounds)
  {
    getImageBounds = [(EMDrawableMapper *)self getImageBounds];
    mOrientedBounds = self->super.mOrientedBounds;
    self->super.mOrientedBounds = getImageBounds;

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
  getImageBounds = [(EMDrawableMapper *)self getImageBounds];
  v3 = getImageBounds;
  if (getImageBounds)
  {
    [getImageBounds bounds];
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

- (EMDrawableMapper)initWithOADDrawable:(id)drawable parent:(id)parent
{
  drawableCopy = drawable;
  parentCopy = parent;
  v13.receiver = self;
  v13.super_class = EMDrawableMapper;
  v8 = [(CMDrawableMapper *)&v13 initWithOadDrawable:drawableCopy parent:parentCopy];
  v9 = v8;
  if (v8)
  {
    worksheetMapper = [(EMDrawableMapper *)v8 worksheetMapper];
    v9->mRowGrid = [worksheetMapper rowGrid];

    worksheetMapper2 = [(EMDrawableMapper *)v9 worksheetMapper];
    v9->mColumnGrid = [worksheetMapper2 columnGrid];
  }

  return v9;
}

- (EMDrawableMapper)initWithChartDrawable:(id)drawable box:(CGRect)box parent:(id)parent
{
  height = box.size.height;
  width = box.size.width;
  y = box.origin.y;
  x = box.origin.x;
  drawableCopy = drawable;
  parentCopy = parent;
  v18.receiver = self;
  v18.super_class = EMDrawableMapper;
  v13 = [(CMDrawableMapper *)&v18 initWithOadDrawable:drawableCopy parent:parentCopy];
  v14 = v13;
  if (v13)
  {
    v13->mRowGrid = 0;
    v13->mColumnGrid = 0;
    v13->super.mBox.origin.x = x;
    v13->super.mBox.origin.y = y;
    v13->super.mBox.size.width = width;
    v13->super.mBox.size.height = height;
    height = [OADOrientedBounds orientedBoundsWithBounds:x, y, width, height];
    mOrientedBounds = v14->super.mOrientedBounds;
    v14->super.mOrientedBounds = height;
  }

  return v14;
}

- (EMDrawableMapper)initWithOADDrawable:(id)drawable rowGrid:(double *)grid columnGrid:(double *)columnGrid
{
  v8.receiver = self;
  v8.super_class = EMDrawableMapper;
  result = [(CMDrawableMapper *)&v8 initWithOadDrawable:drawable parent:0];
  if (result)
  {
    result->mRowGrid = grid;
    result->mColumnGrid = columnGrid;
  }

  return result;
}

- (void)mapAt:(id)at withState:(id)state
{
  atCopy = at;
  stateCopy = state;
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
      [(EMDrawableMapper *)self mapOfficeArtShapeAt:atCopy withState:stateCopy];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(EMDrawableMapper *)self mapOfficeArtGroupAt:atCopy withState:stateCopy];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [(EMDrawableMapper *)self mapChartAt:atCopy withState:stateCopy];
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
              [(EMDrawableMapper *)self mapDiagramAt:atCopy withState:stateCopy];
              goto LABEL_18;
            }

            v14 = [OIXMLElement elementWithType:3];
            [(CMStyle *)self->super.mStyle appendPropertyForName:0x286F07E30 stringWithColons:@": 1px solid black;"];
          }

          if (v14)
          {
            [atCopy addChild:v14];
            cssStyleString = [(CMStyle *)self->super.mStyle cssStyleString];
            [(CMMapper *)self addAttribute:0x286EEA590 toNode:v14 value:cssStyleString];
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
  clientData = [(OADDrawable *)self->super.mDrawable clientData];
  if ([clientData hasBounds])
  {
    [clientData bounds];
    v4 = [OADOrientedBounds orientedBoundsWithBounds:?];
    goto LABEL_8;
  }

  drawableProperties = [(OADDrawable *)self->super.mDrawable drawableProperties];
  hasOrientedBounds = [drawableProperties hasOrientedBounds];

  if (hasOrientedBounds)
  {
    drawableProperties2 = [(OADDrawable *)self->super.mDrawable drawableProperties];
    orientedBounds = [drawableProperties2 orientedBounds];
LABEL_7:
    v4 = orientedBounds;

    goto LABEL_8;
  }

  anchor = [clientData anchor];

  if (anchor)
  {
    drawableProperties2 = [clientData anchor];
    [(EMDrawableMapper *)self mapAnchorToRect:drawableProperties2 rowGrid:self->mRowGrid columnGrid:self->mColumnGrid];
    orientedBounds = [OADOrientedBounds orientedBoundsWithBounds:?];
    goto LABEL_7;
  }

  v4 = 0;
LABEL_8:

  return v4;
}

- (CGPoint)anchorMarkerToPosition:(EDCellAnchorMarker)position rowGrid:(double *)grid columnGrid:(double *)columnGrid start:(BOOL)start relative:(BOOL)relative
{
  relativeCopy = relative;
  v10 = *&position.rowIndex;
  v11 = *&position.columnIndex;
  v13 = [(EMDrawableMapper *)self worksheetMapper:*&position.columnIndex];
  columnCount = [v13 columnCount];

  worksheetMapper = [(EMDrawableMapper *)self worksheetMapper];
  maxRowNumber = [worksheetMapper maxRowNumber];

  v17 = 0;
  v18 = 0.0;
  while (columnCount != v17)
  {
    if (columnGrid)
    {
      v19 = columnGrid[v17];
      v18 = v18 + v19;
    }

    else
    {
      worksheetMapper2 = [(EMDrawableMapper *)self worksheetMapper];
      [worksheetMapper2 defaultColumnWidth];
      v19 = v21;
    }

    if (++v17 > v11)
    {
      goto LABEL_9;
    }
  }

  worksheetMapper3 = [(EMDrawableMapper *)self worksheetMapper];
  [worksheetMapper3 defaultColumnWidth];
  v24 = v23;

  worksheetMapper4 = [(EMDrawableMapper *)self worksheetMapper];
  [worksheetMapper4 defaultColumnWidth];
  v19 = v26;
  v18 = v18 + (v11 - columnCount + 1) * v24;

LABEL_9:
  v27 = 0;
  if (relativeCopy)
  {
    v28 = v18 + v19 * (*(&v11 + 1) + -1.0);
  }

  else
  {
    v28 = v18 + *(&v11 + 1) - v19;
  }

  v29 = 0.0;
  while (v27 <= maxRowNumber)
  {
    v30 = grid[v27] / 20.0;
    v29 = v29 + v30;
    if (++v27 > v10)
    {
      goto LABEL_17;
    }
  }

  worksheetMapper5 = [(EMDrawableMapper *)self worksheetMapper];
  [worksheetMapper5 defaultRowHeight];
  v33 = v32;

  worksheetMapper6 = [(EMDrawableMapper *)self worksheetMapper];
  [worksheetMapper6 defaultRowHeight];
  v29 = v29 + v33 * (v10 - maxRowNumber) / 20.0;
  v30 = v35 / 20.0;

LABEL_17:
  v36 = v29 + v30 * (*(&v10 + 1) + -1.0);
  if (!relativeCopy)
  {
    v36 = v29 + *(&v10 + 1) - v30;
  }

  v37 = v28 + 5.0;
  v38 = v36 + 11.0;
  result.y = v38;
  result.x = v37;
  return result;
}

- (CGRect)mapAnchorToRect:(id)rect rowGrid:(double *)grid columnGrid:(double *)columnGrid
{
  rectCopy = rect;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [rectCopy position];
    v11 = v10;
    [rectCopy size];
    v13 = v12;
    v15 = v14;
    v16 = 0.0;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      from = [rectCopy from];
      -[EMDrawableMapper anchorMarkerToPosition:rowGrid:columnGrid:start:relative:](self, "anchorMarkerToPosition:rowGrid:columnGrid:start:relative:", from, v18, grid, columnGrid, 1, [rectCopy isRelative]);
      v16 = v19;
      v11 = v20;
      [rectCopy size];
      v13 = v21;
      v15 = v22;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        from2 = [rectCopy from];
        -[EMDrawableMapper anchorMarkerToPosition:rowGrid:columnGrid:start:relative:](self, "anchorMarkerToPosition:rowGrid:columnGrid:start:relative:", from2, v24, grid, columnGrid, 1, [rectCopy isRelative]);
        v16 = v25;
        v11 = v26;
        v27 = [rectCopy to];
        -[EMDrawableMapper anchorMarkerToPosition:rowGrid:columnGrid:start:relative:](self, "anchorMarkerToPosition:rowGrid:columnGrid:start:relative:", v27, v28, grid, columnGrid, 0, [rectCopy isRelative]);
        v13 = v29 - v16;
        v15 = v30 - v11;
      }

      else
      {
        currentHandler = [MEMORY[0x277CCA890] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"EMDrawableMapper.mm" lineNumber:274 description:{@"Unknown class %@", rectCopy}];

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

- (void)mapTextBoxAt:(id)at withState:(id)state
{
  atCopy = at;
  clientData = [(OADDrawable *)self->super.mDrawable clientData];
  comment = [clientData comment];
  if (!comment || ([clientData comment], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "visible"), v7, comment, (v8 & 1) != 0))
  {
    if ([clientData hasText])
    {
      textBox = [clientData textBox];
      v10 = [EMCellTextMapper alloc];
      text = [textBox text];
      v12 = [(EMCellTextMapper *)v10 initWithEDString:text style:0 parent:self];

      [(EMCellTextMapper *)v12 mapTextRunsAt:atCopy];
    }
  }
}

+ (BOOL)isAnchorRelative:(id)relative
{
  relativeCopy = relative;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    isRelative = [relativeCopy isRelative];
  }

  else
  {
    isRelative = 0;
  }

  return isRelative;
}

- (void)mapOfficeArtShapeAt:(id)at withState:(id)state
{
  atCopy = at;
  stateCopy = state;
  clientData = [(OADDrawable *)self->super.mDrawable clientData];
  comment = [clientData comment];
  if (!comment || ([clientData comment], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "visible"), v8, comment, (v9 & 1) != 0))
  {
    v37 = self->super.mDrawable;
    type = [(OADDrawable *)v37 type];
    shapeProperties = [(OADDrawable *)v37 shapeProperties];
    fill = [shapeProperties fill];
    v13 = fill;
    v38 = fill;
    if (fill)
    {
      objc_opt_class();
      v13 = objc_opt_isKindOfClass() ^ 1;
    }

    stroke = [shapeProperties stroke];
    v15 = [CMBordersProperty isStroked:stroke];

    isTextBox = [shapeProperties isTextBox];
    v17 = [OIXMLElement elementWithType:3];
    if (type == 1 || type == 75 || type == 202)
    {
      v20 = 1;
    }

    else
    {
      v20 = isTextBox;
    }

    if ((v20 & 1) != 0 || ((v13 | v15) & 1) == 0)
    {
      [(EMDrawableMapper *)self mapTextBoxAt:v17 withState:stateCopy];
      if (v15)
      {
        v31 = [CMBordersProperty alloc];
        stroke2 = [shapeProperties stroke];
        v33 = [(CMBordersProperty *)v31 initWithOADStroke:stroke2];

        [(CMStyle *)self->super.mStyle addProperty:v33 forKey:0x286F07E30];
      }

      if (v13)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          mStyle = self->super.mStyle;
          color = [v38 color];
          v36 = [CMColorProperty cssStringFromOADColor:color];
          [(CMStyle *)mStyle appendPropertyForName:0x286F07DF0 stringWithColons:v36];
        }
      }

      [(CMMapper *)self addStyleUsingGlobalCacheTo:v17 style:self->super.mStyle];
      [atCopy addChild:v17];
    }

    else
    {
      [(CMMapper *)self addStyleUsingGlobalCacheTo:v17 style:self->super.mStyle];
      v42.receiver = self;
      v42.super_class = EMDrawableMapper;
      [(CMDrawableMapper *)&v42 mapShapeGraphicsAt:v17 withState:stateCopy];
      [atCopy addChild:v17];
      if ([clientData hasText])
      {
        v21 = [OIXMLElement elementWithType:3];
        [(EMDrawableMapper *)self mapTextBoxAt:v21 withState:stateCopy];
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

- (void)mapOfficeArtGroupAt:(id)at withState:(id)state
{
  atCopy = at;
  stateCopy = state;
  v7 = self->super.mDrawable;
  childCount = [(OADDrawable *)v7 childCount];
  if (childCount)
  {
    v9 = 0;
    v10 = 0;
    do
    {
      v11 = [(OADDrawable *)v7 childAtIndex:v9];

      v12 = [[EMDrawableMapper alloc] initWithOADDrawable:v11 parent:self];
      [(EMDrawableMapper *)v12 mapAt:atCopy withState:stateCopy];

      ++v9;
      v10 = v11;
    }

    while (childCount != v9);
  }
}

- (void)mapChartAt:(id)at withState:(id)state
{
  atCopy = at;
  stateCopy = state;
  v8 = [[EMChartMapper alloc] initWithChart:self->super.mDrawable parent:self];
  [(OADOrientedBounds *)self->super.mOrientedBounds bounds];
  v11 = [(EMChartMapper *)v8 copyPdfWithState:stateCopy withSize:v9, v10];
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

  [atCopy addChild:v12];
  [(CMMapper *)self addStyleUsingGlobalCacheTo:v12 style:self->super.mStyle];
}

- (void)mapDiagramAt:(id)at withState:(id)state
{
  atCopy = at;
  stateCopy = state;
  v8 = [OIXMLElement elementWithType:3];
  [(CMMapper *)self addStyleUsingGlobalCacheTo:v8 style:self->super.mStyle];
  [atCopy addChild:v8];
  v17 = v8;

  Width = CGRectGetWidth(self->super.mBox);
  Height = CGRectGetHeight(self->super.mBox);
  height = [[CMDrawingContext alloc] initWithFrame:0.0, 0.0, Width, Height];
  height2 = [OADOrientedBounds orientedBoundsWithBounds:0.0, 0.0, Width, Height];
  mOrientedBounds = self->super.mOrientedBounds;
  self->super.mOrientedBounds = height2;

  v14 = [OIXMLElement elementWithType:3];
  v15 = objc_alloc_init(CMDrawableStyle);
  [(CMStyle *)v15 appendPropertyForName:0x286EF5C90 stringWithColons:@":absolute;"];
  [(CMMapper *)self addStyleUsingGlobalCacheTo:v14 style:v15];
  v16 = [[CMDiagramMapper alloc] initWithOddDiagram:self->super.mDrawable drawingContext:height orientedBounds:self->super.mOrientedBounds parent:self];
  [(CMDiagramMapper *)v16 mapAt:v14 withState:stateCopy];
  [(CMDrawableMapper *)self mapDrawingContext:height at:v17 relative:0 withState:stateCopy];
  [v17 addChild:v14];
}

@end