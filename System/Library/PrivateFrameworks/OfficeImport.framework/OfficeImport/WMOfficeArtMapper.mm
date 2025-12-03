@interface WMOfficeArtMapper
- (CGSize)expandedSizeForTextBox:(id)box withState:(id)state;
- (WMOfficeArtMapper)initWithOadDrawable:(id)drawable asFloating:(BOOL)floating parent:(id)parent;
- (WMOfficeArtMapper)initWithWdOfficeArt:(id)art parent:(id)parent;
- (id)blipAtIndex:(unsigned int)index;
- (void)mapAt:(id)at withState:(id)state;
- (void)mapDiagramAt:(id)at withState:(id)state;
- (void)mapOfficeArtGroupAt:(id)at withState:(id)state;
- (void)mapOfficeArtImageAt:(id)at withState:(id)state;
- (void)mapOfficeArtShapeAt:(id)at withState:(id)state;
- (void)mapOfficeArtTextboxAt:(id)at withState:(id)state;
- (void)mapTextBoxAt:(id)at withState:(id)state;
- (void)setBoundingBox;
- (void)setWithClientData:(id)data state:(id)state;
@end

@implementation WMOfficeArtMapper

- (void)setBoundingBox
{
  v7 = [OAITOrientedBounds absoluteOrientedBoundsOfDrawable:self->super.mDrawable];
  [v7 bounds];
  self->super.mBox.origin.x = v3;
  self->super.mBox.origin.y = v4;
  self->super.mBox.size.width = v5;
  self->super.mBox.size.height = v6;
}

- (WMOfficeArtMapper)initWithWdOfficeArt:(id)art parent:(id)parent
{
  artCopy = art;
  parentCopy = parent;
  if ([artCopy isDrawableOverridden])
  {
    self->mIsInsideGroup = 0;
    drawable = [artCopy drawable];
    v9 = -[WMOfficeArtMapper initWithOadDrawable:asFloating:parent:](self, "initWithOadDrawable:asFloating:parent:", drawable, [artCopy isFloating], parentCopy);
  }

  else
  {
    v12.receiver = self;
    v12.super_class = WMOfficeArtMapper;
    v10 = [(CMDrawableMapper *)&v12 initWithParent:parentCopy];
    if (v10)
    {
      v10->mIsMapped = 0;
    }

    v9 = v10;
  }

  return v9;
}

- (WMOfficeArtMapper)initWithOadDrawable:(id)drawable asFloating:(BOOL)floating parent:(id)parent
{
  drawableCopy = drawable;
  parentCopy = parent;
  v16.receiver = self;
  v16.super_class = WMOfficeArtMapper;
  v10 = [(CMDrawableMapper *)&v16 initWithOadDrawable:drawableCopy parent:parentCopy];
  v11 = v10;
  if (v10)
  {
    mContent = v10->mContent;
    v10->mContent = 0;

    v11->mFloating = floating;
    v11->mIsMapped = 1;
    [(WMOfficeArtMapper *)v11 setBoundingBox];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      mDrawable = v11->super.mDrawable;
      v15.receiver = v11;
      v15.super_class = WMOfficeArtMapper;
      [(CMDrawableMapper *)&v15 setWithOadImage:mDrawable];
    }
  }

  return v11;
}

- (void)mapAt:(id)at withState:(id)state
{
  atCopy = at;
  stateCopy = state;
  v7 = stateCopy;
  if (self->mIsMapped)
  {
    self->mCurrentPage = [stateCopy currentPage];
    clientData = [(OADDrawable *)self->super.mDrawable clientData];
    [(WMOfficeArtMapper *)self setWithClientData:clientData state:v7];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      graphicProperties = [(OADDrawable *)self->super.mDrawable graphicProperties];
      clickHyperlink = [graphicProperties clickHyperlink];

      if (clickHyperlink)
      {
        v11 = [OIXMLElement elementWithType:0];
        targetLocation = [clickHyperlink targetLocation];
        absoluteString = [targetLocation absoluteString];
        v14 = [OIXMLAttribute attributeWithName:0x286F07D70 stringValue:absoluteString];
        [v11 addAttribute:v14];

        [atCopy addChild:v11];
        atCopy = v11;
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(WMOfficeArtMapper *)self mapOfficeArtShapeAt:atCopy withState:v7];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(WMOfficeArtMapper *)self mapOfficeArtImageAt:atCopy withState:v7];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [(WMOfficeArtMapper *)self mapOfficeArtGroupAt:atCopy withState:v7];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [(WMOfficeArtMapper *)self mapDiagramAt:atCopy withState:v7];
          }
        }
      }
    }
  }
}

- (void)setWithClientData:(id)data state:(id)state
{
  dataCopy = data;
  dataCopy2 = data;
  stateCopy = state;
  self->mIsMapped = 1;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_45;
  }

  objc_storeStrong(&self->mContent, dataCopy);
  if (!self->mFloating && !self->mIsInsideGroup)
  {
    [(CMStyle *)self->super.mStyle appendPropertyForName:0x286EEA530 length:1 unit:self->super.mBox.size.width];
    [(CMStyle *)self->super.mStyle appendPropertyForName:0x286EF6790 length:1 unit:self->super.mBox.size.height];
    goto LABEL_45;
  }

  if ([stateCopy isHeaderOrFooter])
  {
    v8 = -1000.0;
  }

  else
  {
    v8 = 0.0;
  }

  isShape = [(WDAContent *)self->mContent isShape];
  v10 = isShape;
  if (isShape)
  {
    dataCopy = [(WDAContent *)self->mContent anchor];
    if ([dataCopy relativeVerticalPosition] != 2)
    {
      if ([(WDAContent *)self->mContent floating])
      {

LABEL_11:
        [stateCopy pageOffset];
        self->super.mBox.origin.y = self->super.mBox.origin.y + v11;
        anchor = [(WDAContent *)self->mContent anchor];
        relativeVerticalPosition = [anchor relativeVerticalPosition];

        if (relativeVerticalPosition)
        {
          y = self->super.mBox.origin.y;
        }

        else
        {
          [stateCopy topMargin];
          y = v44 / 20.0 + self->super.mBox.origin.y;
          self->super.mBox.origin.y = y;
        }

        [(CMDrawableStyle *)self->super.mStyle addPositionProperties:self->super.mBox.origin.x, y, self->super.mBox.size.width, self->super.mBox.size.height];
        v45 = self->super.mBox.origin.y;
        height = self->super.mBox.size.height;
        [stateCopy totalPageHeight];
        if (v45 + height > v47)
        {
          v48 = self->super.mBox.origin.y + self->super.mBox.size.height;
          *&v48 = v48;
          [stateCopy setTotalPageHeight:v48];
        }

        mStyle = self->super.mStyle;
        anchor2 = [(WDAContent *)self->mContent anchor];
        -[CMStyle appendPropertyForName:intValue:](mStyle, "appendPropertyForName:intValue:", 0x286F04990, (v8 + [anchor2 zIndex]));

        goto LABEL_45;
      }
    }
  }

  if (![(WDAContent *)self->mContent isShape])
  {
    goto LABEL_18;
  }

  anchor3 = [(WDAContent *)self->mContent anchor];
  if (([anchor3 zIndex] & 0x8000000000000000) == 0)
  {
LABEL_17:

LABEL_18:
    if (v10)
    {
    }

    goto LABEL_20;
  }

  anchor4 = [(WDAContent *)self->mContent anchor];
  if ([anchor4 relativeVerticalPosition] == 2)
  {

    goto LABEL_17;
  }

  floating = [(WDAContent *)self->mContent floating];

  if (v10)
  {

    if (floating)
    {
      goto LABEL_11;
    }
  }

  else if (floating)
  {
    goto LABEL_11;
  }

LABEL_20:
  anchor5 = [(WDAContent *)self->mContent anchor];
  textWrappingMode = [anchor5 textWrappingMode];

  if (textWrappingMode == 1)
  {
    [(CMStyle *)self->super.mStyle appendPropertyForName:0x286EF47B0 stringValue:0x286EFB5F0];
    [(CMStyle *)self->super.mStyle appendSizeInfoFromRect:self->super.mBox.origin.x, self->super.mBox.origin.y, self->super.mBox.size.width, self->super.mBox.size.height];
    self->mFloating = 0;
  }

  else
  {
    anchor6 = [(WDAContent *)self->mContent anchor];
    if ([anchor6 textWrappingMode] == 3)
    {
    }

    else
    {
      mIsInsideGroup = self->mIsInsideGroup;

      if (!mIsInsideGroup)
      {
        root = [(CMMapper *)self root];
        [root contentSizeForDevice];
        v40 = v39;

        [(CMStyle *)self->super.mStyle appendPositionInfoFromRect:self->super.mBox.origin.x, self->super.mBox.origin.y, self->super.mBox.size.width, self->super.mBox.size.height];
        v41 = v40;
        self->mFloating = 0;
        if (self->super.mBox.origin.x <= v41 - self->super.mBox.origin.x - self->super.mBox.size.width)
        {
          v42 = @":left;";
        }

        else
        {
          v42 = @":right;";
        }

        [(CMStyle *)self->super.mStyle appendPropertyForName:0x286F05650 stringWithColons:v42];
        goto LABEL_45;
      }
    }

    [stateCopy pageOffset];
    self->super.mBox.origin.y = self->super.mBox.origin.y + v21;
    anchor7 = [(WDAContent *)self->mContent anchor];
    relativeHorizontalPosition = [anchor7 relativeHorizontalPosition];

    v24 = self->super.mStyle;
    x = self->super.mBox.origin.x;
    v26 = self->super.mBox.origin.y;
    width = self->super.mBox.size.width;
    v28 = self->super.mBox.size.height;
    if (relativeHorizontalPosition == 2)
    {
      [(CMDrawableStyle *)v24 addPositionUsingOffsets:x, v26, width, v28];
    }

    else
    {
      [(CMDrawableStyle *)v24 addPositionProperties:x, v26, width, v28];
    }

    v29 = self->super.mBox.origin.y;
    v30 = self->super.mBox.size.height;
    [stateCopy totalPageHeight];
    if (v29 + v30 > v31)
    {
      v32 = self->super.mBox.origin.y + self->super.mBox.size.height;
      *&v32 = v32;
      [stateCopy setTotalPageHeight:v32];
    }

    anchor8 = [(WDAContent *)self->mContent anchor];
    zIndex = [anchor8 zIndex];

    anchor9 = [(WDAContent *)self->mContent anchor];
    zIndex2 = [anchor9 zIndex];

    v37 = self->super.mStyle;
    if (zIndex2 < 0)
    {
      [(CMStyle *)v37 appendPropertyForName:0x286F04990 stringWithColons:@":-1;"];
      [(CMStyle *)self->super.mStyle appendPropertyForName:0x286F08150 stringWithColons:@":0.25;"];
    }

    else
    {
      [(CMStyle *)v37 appendPropertyForName:0x286F04990 intValue:(v8 + zIndex)];
    }
  }

LABEL_45:
}

- (id)blipAtIndex:(unsigned int)index
{
  v3 = *&index;
  root = [(CMMapper *)self root];
  v5 = [root blipAtIndex:v3];

  return v5;
}

- (void)mapTextBoxAt:(id)at withState:(id)state
{
  atCopy = at;
  stateCopy = state;
  textBox = [(WDAContent *)self->mContent textBox];
  v8 = [WMSectionContentMapper alloc];
  text = [textBox text];
  v10 = [(WMSectionContentMapper *)v8 initWithWDText:text parent:self];

  [(WMSectionContentMapper *)v10 mapAt:atCopy withState:stateCopy];
}

- (void)mapOfficeArtImageAt:(id)at withState:(id)state
{
  atCopy = at;
  imageProperties = [(OADDrawable *)self->super.mDrawable imageProperties];
  imageFill = [imageProperties imageFill];
  v16.receiver = self;
  v16.super_class = WMOfficeArtMapper;
  [(CMDrawableMapper *)&v16 calculateUncroppedBox:imageFill];
  v8 = [OIXMLElement elementWithType:9];
  if ([(CMDrawableMapper *)self isCropped]&& self->super.mIsSupported)
  {
    v9 = [OIXMLElement elementWithType:3];
    v10 = objc_alloc_init(CMDrawableStyle);
    [(CMStyle *)self->super.mStyle appendPropertyForName:0x286EF4D30 stringWithColons:@":hidden;"];
    [(CMDrawableMapper *)self uncroppedBox];
    [(CMStyle *)v10 appendPositionInfoFromRect:?];
    [(CMMapper *)self addStyleUsingGlobalCacheTo:v8 style:v10];
    [v9 addChild:v8];

    v11 = v9;
  }

  else
  {
    v11 = v8;
  }

  if (self->super.mIsSupported)
  {
    mImageBinaryData = self->super.mImageBinaryData;
    mResourceType = self->super.mResourceType;
    v15.receiver = self;
    v15.super_class = WMOfficeArtMapper;
    v14 = [(CMDrawableMapper *)&v15 saveResourceAndReturnPath:mImageBinaryData withType:mResourceType];
    [(CMMapper *)self addAttribute:0x286F07DB0 toNode:v8 value:v14];
  }

  else
  {
    [(CMStyle *)self->super.mStyle appendDefaultBorderStyle];
  }

  [(CMMapper *)self addStyleUsingGlobalCacheTo:v11 style:self->super.mStyle];
  [atCopy addChild:v11];
}

- (void)mapOfficeArtShapeAt:(id)at withState:(id)state
{
  atCopy = at;
  stateCopy = state;
  v41 = self->super.mDrawable;
  type = [(OADDrawable *)v41 type];
  shapeProperties = [(OADDrawable *)v41 shapeProperties];
  fill = [shapeProperties fill];
  if (fill)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 1;
  }

  stroke = [shapeProperties stroke];
  fill2 = [stroke fill];

  if (fill2)
  {
    objc_opt_class();
    v12 = objc_opt_isKindOfClass();
  }

  else
  {
    v12 = 1;
  }

  isTextBox = [shapeProperties isTextBox];
  v14 = [OIXMLElement elementWithType:3];
  if (type == 1 || type == 75 || type == 202)
  {
    v17 = 1;
  }

  else
  {
    v17 = isTextBox;
  }

  if (v17 & 1) != 0 || (isKindOfClass & v12)
  {
    [(WMOfficeArtMapper *)self mapOfficeArtTextboxAt:v14 withState:stateCopy];
    if ((v12 & 1) == 0)
    {
      v34 = [CMBordersProperty alloc];
      stroke2 = [shapeProperties stroke];
      v36 = [(CMBordersProperty *)v34 initWithOADStroke:stroke2];

      [(CMStyle *)self->super.mStyle addProperty:v36 forKey:0x286F07E30];
    }

    if ((isKindOfClass & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        color = [fill color];
        mStyle = self->super.mStyle;
        v39 = [CMColorProperty cssStringFromOADColor:color];
        [(CMStyle *)mStyle appendPropertyForName:0x286F07DF0 stringWithColons:v39];

        [CMColorProperty transformedAlphaFromOADColor:color];
        if (v40 != 1.0)
        {
          [(CMStyle *)self->super.mStyle appendPropertyForName:0x286F08150 floatValue:?];
        }
      }
    }

    [(CMMapper *)self addStyleUsingGlobalCacheTo:v14 style:self->super.mStyle];
    [atCopy addChild:v14];
  }

  else
  {
    [(CMMapper *)self addStyleUsingGlobalCacheTo:v14 style:self->super.mStyle];
    v45.receiver = self;
    v45.super_class = WMOfficeArtMapper;
    [(CMDrawableMapper *)&v45 mapShapeGraphicsAt:v14 withState:stateCopy];
    [atCopy addChild:v14];
    textBox = [(WDAContent *)self->mContent textBox];
    if (textBox)
    {
      Width = CGRectGetWidth(self->super.mBox);

      if (Width > 0.0)
      {
        v20 = [OIXMLElement elementWithType:3];
        [(WMOfficeArtMapper *)self mapTextBoxAt:v20 withState:stateCopy];
        v44.receiver = self;
        v44.super_class = WMOfficeArtMapper;
        [(CMDrawableMapper *)&v44 shapeTextBoxRect];
        v22 = v21;
        v24 = v23;
        v26 = v25;
        v28 = v27;
        v29 = objc_alloc_init(CMDrawableStyle);
        v30 = v22 - self->super.mBox.origin.x;
        v31 = v24 - self->super.mBox.origin.y;
        [(CMDrawableStyle *)v29 addPositionUsingOffsets:v30, v31, v26, v28];
        [stateCopy totalPageHeight];
        v33 = v32;
        if (v28 + v31 > v33)
        {
          *&v33 = v28 + v31;
          [stateCopy setTotalPageHeight:v33];
        }

        [(CMMapper *)self addStyleUsingGlobalCacheTo:v20 style:v29];
        [v14 addChild:v20];
      }
    }
  }
}

- (void)mapOfficeArtTextboxAt:(id)at withState:(id)state
{
  atCopy = at;
  stateCopy = state;
  textBox = [(WDAContent *)self->mContent textBox];
  if ([textBox nextTextBoxId])
  {
    WeakRetained = objc_loadWeakRetained(&self->super.super.mParent);
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      [(WMOfficeArtMapper *)self expandedSizeForTextBox:textBox withState:stateCopy];
      v11 = v10;
      self->super.mBox.size.width = v12;
      self->super.mBox.size.height = v10;
      [(CMStyle *)self->super.mStyle appendPropertyForName:0x286EEA530 length:1 unit:?];
      [(CMStyle *)self->super.mStyle appendPropertyForName:0x286EF6790 length:1 unit:v11];
    }
  }

  v13 = [WMSectionContentMapper alloc];
  text = [textBox text];
  v15 = [(WMSectionContentMapper *)v13 initWithWDText:text parent:self];

  [(WMSectionContentMapper *)v15 mapAt:atCopy withState:stateCopy];
}

- (void)mapOfficeArtGroupAt:(id)at withState:(id)state
{
  atCopy = at;
  stateCopy = state;
  v8 = self->super.mDrawable;
  childCount = [(OADDrawable *)v8 childCount];
  v10 = childCount;
  if (self->mFloating || self->mIsInsideGroup)
  {
    v18 = atCopy;
    if (!childCount)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v17 = [OIXMLElement elementWithType:3];
    [atCopy addChild:v17];
    v18 = v17;

    [CMMapper addStyleUsingGlobalCacheTo:"addStyleUsingGlobalCacheTo:style:" style:?];
    [(OADDrawable *)v8 logicalBounds];

    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v11 = 0;
  v12 = 0;
  v13 = 1;
  do
  {
    v14 = [(OADDrawable *)v8 childAtIndex:v11];

    v15 = [[WMOfficeArtMapper alloc] initWithOadDrawable:v14 asFloating:self->mFloating parent:self];
    [(WMOfficeArtMapper *)v15 setIsInsideGroup:1];
    [(WMOfficeArtMapper *)v15 mapAt:v18 withState:stateCopy];

    v11 = v13;
    v16 = v10 > v13++;
    v12 = v14;
  }

  while (v16);

LABEL_7:
}

- (void)mapDiagramAt:(id)at withState:(id)state
{
  atCopy = at;
  stateCopy = state;
  v8 = [OIXMLElement elementWithType:3];
  [(CMStyle *)self->super.mStyle appendPropertyString:@"display:inline-block;"];
  [(CMMapper *)self addStyleUsingGlobalCacheTo:v8 style:self->super.mStyle];
  [atCopy addChild:v8];
  v15 = v8;

  v9 = objc_alloc_init(CMDrawableStyle);
  v10 = [OIXMLElement elementWithType:3];
  [(CMStyle *)v9 appendPropertyString:@" position:absolute;"];
  [(CMMapper *)self addStyleUsingGlobalCacheTo:v10 style:v9];
  v11 = [[CMDrawingContext alloc] initWithFrame:self->super.mBox.origin.x, self->super.mBox.origin.y, self->super.mBox.size.width, self->super.mBox.size.height];
  v12 = [OADOrientedBounds orientedBoundsWithBounds:self->super.mBox.origin.x, self->super.mBox.origin.y, self->super.mBox.size.width, self->super.mBox.size.height];
  mOrientedBounds = self->super.mOrientedBounds;
  self->super.mOrientedBounds = v12;

  v14 = [[CMDiagramMapper alloc] initWithOddDiagram:self->super.mDrawable drawingContext:v11 orientedBounds:self->super.mOrientedBounds parent:self];
  [(CMDiagramMapper *)v14 mapAt:v10 withState:stateCopy];
  [(CMDrawableMapper *)self mapDrawingContext:v11 at:v15 relative:1 withState:stateCopy];
  [v15 addChild:v10];
  [WMParagraphMapper mapPlaceholderAt:v15 rect:stateCopy withState:self->super.mBox.origin.x, self->super.mBox.origin.y, self->super.mBox.size.width, self->super.mBox.size.height];
}

- (CGSize)expandedSizeForTextBox:(id)box withState:(id)state
{
  boxCopy = box;
  stateCopy = state;
  p_mBox = &self->super.mBox;
  width = self->super.mBox.size.width;
  height = self->super.mBox.size.height;
  runIndex = [stateCopy runIndex];
  [stateCopy pageOffset];
  v13 = v12;
  nextTextBoxId = [boxCopy nextTextBoxId];
  v15 = 0;
  v16 = v13;
  while (1)
  {
    ++runIndex;
    v17 = v15;
    WeakRetained = objc_loadWeakRetained(&self->super.super.mParent);
    v15 = [WeakRetained runAtIndex:runIndex];

    if (!v15)
    {
      break;
    }

    if ([v15 runType] == 3)
    {
      drawable = [v15 drawable];
      v20 = drawable;
      if (drawable)
      {
        clientData = [drawable clientData];
        if (!clientData || nextTextBoxId == [v20 id])
        {
          clientData2 = [v20 clientData];
          [clientData2 bounds];
          v24 = v23;
          v26 = v25;
          v28 = v27;
          v30 = v29;

          x = v26 + v16;
          if (v26 + v16 == self->super.mBox.origin.y)
          {
            width = width + v28;
          }

          else
          {
            x = p_mBox->origin.x;
            if (v24 == p_mBox->origin.x)
            {
              height = height + v30;
            }
          }

          textBox = [clientData textBox];
          v33 = textBox;
          if (!textBox || ![textBox nextTextBoxId])
          {

            break;
          }

          nextTextBoxId = [v33 nextTextBoxId];
        }
      }
    }
  }

  v34 = width;
  v35 = height;
  result.height = v35;
  result.width = v34;
  return result;
}

@end