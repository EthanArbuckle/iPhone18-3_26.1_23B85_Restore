@interface WMOfficeArtMapper
- (CGSize)expandedSizeForTextBox:(id)a3 withState:(id)a4;
- (WMOfficeArtMapper)initWithOadDrawable:(id)a3 asFloating:(BOOL)a4 parent:(id)a5;
- (WMOfficeArtMapper)initWithWdOfficeArt:(id)a3 parent:(id)a4;
- (id)blipAtIndex:(unsigned int)a3;
- (void)mapAt:(id)a3 withState:(id)a4;
- (void)mapDiagramAt:(id)a3 withState:(id)a4;
- (void)mapOfficeArtGroupAt:(id)a3 withState:(id)a4;
- (void)mapOfficeArtImageAt:(id)a3 withState:(id)a4;
- (void)mapOfficeArtShapeAt:(id)a3 withState:(id)a4;
- (void)mapOfficeArtTextboxAt:(id)a3 withState:(id)a4;
- (void)mapTextBoxAt:(id)a3 withState:(id)a4;
- (void)setBoundingBox;
- (void)setWithClientData:(id)a3 state:(id)a4;
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

- (WMOfficeArtMapper)initWithWdOfficeArt:(id)a3 parent:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 isDrawableOverridden])
  {
    self->mIsInsideGroup = 0;
    v8 = [v6 drawable];
    v9 = -[WMOfficeArtMapper initWithOadDrawable:asFloating:parent:](self, "initWithOadDrawable:asFloating:parent:", v8, [v6 isFloating], v7);
  }

  else
  {
    v12.receiver = self;
    v12.super_class = WMOfficeArtMapper;
    v10 = [(CMDrawableMapper *)&v12 initWithParent:v7];
    if (v10)
    {
      v10->mIsMapped = 0;
    }

    v9 = v10;
  }

  return v9;
}

- (WMOfficeArtMapper)initWithOadDrawable:(id)a3 asFloating:(BOOL)a4 parent:(id)a5
{
  v8 = a3;
  v9 = a5;
  v16.receiver = self;
  v16.super_class = WMOfficeArtMapper;
  v10 = [(CMDrawableMapper *)&v16 initWithOadDrawable:v8 parent:v9];
  v11 = v10;
  if (v10)
  {
    mContent = v10->mContent;
    v10->mContent = 0;

    v11->mFloating = a4;
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

- (void)mapAt:(id)a3 withState:(id)a4
{
  v15 = a3;
  v6 = a4;
  v7 = v6;
  if (self->mIsMapped)
  {
    self->mCurrentPage = [v6 currentPage];
    v8 = [(OADDrawable *)self->super.mDrawable clientData];
    [(WMOfficeArtMapper *)self setWithClientData:v8 state:v7];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [(OADDrawable *)self->super.mDrawable graphicProperties];
      v10 = [v9 clickHyperlink];

      if (v10)
      {
        v11 = [OIXMLElement elementWithType:0];
        v12 = [v10 targetLocation];
        v13 = [v12 absoluteString];
        v14 = [OIXMLAttribute attributeWithName:0x286F07D70 stringValue:v13];
        [v11 addAttribute:v14];

        [v15 addChild:v11];
        v15 = v11;
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(WMOfficeArtMapper *)self mapOfficeArtShapeAt:v15 withState:v7];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(WMOfficeArtMapper *)self mapOfficeArtImageAt:v15 withState:v7];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [(WMOfficeArtMapper *)self mapOfficeArtGroupAt:v15 withState:v7];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [(WMOfficeArtMapper *)self mapDiagramAt:v15 withState:v7];
          }
        }
      }
    }
  }
}

- (void)setWithClientData:(id)a3 state:(id)a4
{
  v5 = a3;
  v51 = a3;
  v7 = a4;
  self->mIsMapped = 1;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_45;
  }

  objc_storeStrong(&self->mContent, v5);
  if (!self->mFloating && !self->mIsInsideGroup)
  {
    [(CMStyle *)self->super.mStyle appendPropertyForName:0x286EEA530 length:1 unit:self->super.mBox.size.width];
    [(CMStyle *)self->super.mStyle appendPropertyForName:0x286EF6790 length:1 unit:self->super.mBox.size.height];
    goto LABEL_45;
  }

  if ([v7 isHeaderOrFooter])
  {
    v8 = -1000.0;
  }

  else
  {
    v8 = 0.0;
  }

  v9 = [(WDAContent *)self->mContent isShape];
  v10 = v9;
  if (v9)
  {
    v5 = [(WDAContent *)self->mContent anchor];
    if ([v5 relativeVerticalPosition] != 2)
    {
      if ([(WDAContent *)self->mContent floating])
      {

LABEL_11:
        [v7 pageOffset];
        self->super.mBox.origin.y = self->super.mBox.origin.y + v11;
        v12 = [(WDAContent *)self->mContent anchor];
        v13 = [v12 relativeVerticalPosition];

        if (v13)
        {
          y = self->super.mBox.origin.y;
        }

        else
        {
          [v7 topMargin];
          y = v44 / 20.0 + self->super.mBox.origin.y;
          self->super.mBox.origin.y = y;
        }

        [(CMDrawableStyle *)self->super.mStyle addPositionProperties:self->super.mBox.origin.x, y, self->super.mBox.size.width, self->super.mBox.size.height];
        v45 = self->super.mBox.origin.y;
        height = self->super.mBox.size.height;
        [v7 totalPageHeight];
        if (v45 + height > v47)
        {
          v48 = self->super.mBox.origin.y + self->super.mBox.size.height;
          *&v48 = v48;
          [v7 setTotalPageHeight:v48];
        }

        mStyle = self->super.mStyle;
        v50 = [(WDAContent *)self->mContent anchor];
        -[CMStyle appendPropertyForName:intValue:](mStyle, "appendPropertyForName:intValue:", 0x286F04990, (v8 + [v50 zIndex]));

        goto LABEL_45;
      }
    }
  }

  if (![(WDAContent *)self->mContent isShape])
  {
    goto LABEL_18;
  }

  v15 = [(WDAContent *)self->mContent anchor];
  if (([v15 zIndex] & 0x8000000000000000) == 0)
  {
LABEL_17:

LABEL_18:
    if (v10)
    {
    }

    goto LABEL_20;
  }

  v16 = [(WDAContent *)self->mContent anchor];
  if ([v16 relativeVerticalPosition] == 2)
  {

    goto LABEL_17;
  }

  v43 = [(WDAContent *)self->mContent floating];

  if (v10)
  {

    if (v43)
    {
      goto LABEL_11;
    }
  }

  else if (v43)
  {
    goto LABEL_11;
  }

LABEL_20:
  v17 = [(WDAContent *)self->mContent anchor];
  v18 = [v17 textWrappingMode];

  if (v18 == 1)
  {
    [(CMStyle *)self->super.mStyle appendPropertyForName:0x286EF47B0 stringValue:0x286EFB5F0];
    [(CMStyle *)self->super.mStyle appendSizeInfoFromRect:self->super.mBox.origin.x, self->super.mBox.origin.y, self->super.mBox.size.width, self->super.mBox.size.height];
    self->mFloating = 0;
  }

  else
  {
    v19 = [(WDAContent *)self->mContent anchor];
    if ([v19 textWrappingMode] == 3)
    {
    }

    else
    {
      mIsInsideGroup = self->mIsInsideGroup;

      if (!mIsInsideGroup)
      {
        v38 = [(CMMapper *)self root];
        [v38 contentSizeForDevice];
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

    [v7 pageOffset];
    self->super.mBox.origin.y = self->super.mBox.origin.y + v21;
    v22 = [(WDAContent *)self->mContent anchor];
    v23 = [v22 relativeHorizontalPosition];

    v24 = self->super.mStyle;
    x = self->super.mBox.origin.x;
    v26 = self->super.mBox.origin.y;
    width = self->super.mBox.size.width;
    v28 = self->super.mBox.size.height;
    if (v23 == 2)
    {
      [(CMDrawableStyle *)v24 addPositionUsingOffsets:x, v26, width, v28];
    }

    else
    {
      [(CMDrawableStyle *)v24 addPositionProperties:x, v26, width, v28];
    }

    v29 = self->super.mBox.origin.y;
    v30 = self->super.mBox.size.height;
    [v7 totalPageHeight];
    if (v29 + v30 > v31)
    {
      v32 = self->super.mBox.origin.y + self->super.mBox.size.height;
      *&v32 = v32;
      [v7 setTotalPageHeight:v32];
    }

    v33 = [(WDAContent *)self->mContent anchor];
    v34 = [v33 zIndex];

    v35 = [(WDAContent *)self->mContent anchor];
    v36 = [v35 zIndex];

    v37 = self->super.mStyle;
    if (v36 < 0)
    {
      [(CMStyle *)v37 appendPropertyForName:0x286F04990 stringWithColons:@":-1;"];
      [(CMStyle *)self->super.mStyle appendPropertyForName:0x286F08150 stringWithColons:@":0.25;"];
    }

    else
    {
      [(CMStyle *)v37 appendPropertyForName:0x286F04990 intValue:(v8 + v34)];
    }
  }

LABEL_45:
}

- (id)blipAtIndex:(unsigned int)a3
{
  v3 = *&a3;
  v4 = [(CMMapper *)self root];
  v5 = [v4 blipAtIndex:v3];

  return v5;
}

- (void)mapTextBoxAt:(id)a3 withState:(id)a4
{
  v11 = a3;
  v6 = a4;
  v7 = [(WDAContent *)self->mContent textBox];
  v8 = [WMSectionContentMapper alloc];
  v9 = [v7 text];
  v10 = [(WMSectionContentMapper *)v8 initWithWDText:v9 parent:self];

  [(WMSectionContentMapper *)v10 mapAt:v11 withState:v6];
}

- (void)mapOfficeArtImageAt:(id)a3 withState:(id)a4
{
  v5 = a3;
  v6 = [(OADDrawable *)self->super.mDrawable imageProperties];
  v7 = [v6 imageFill];
  v16.receiver = self;
  v16.super_class = WMOfficeArtMapper;
  [(CMDrawableMapper *)&v16 calculateUncroppedBox:v7];
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
  [v5 addChild:v11];
}

- (void)mapOfficeArtShapeAt:(id)a3 withState:(id)a4
{
  v42 = a3;
  v43 = a4;
  v41 = self->super.mDrawable;
  v6 = [(OADDrawable *)v41 type];
  v7 = [(OADDrawable *)v41 shapeProperties];
  v8 = [v7 fill];
  if (v8)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 1;
  }

  v10 = [v7 stroke];
  v11 = [v10 fill];

  if (v11)
  {
    objc_opt_class();
    v12 = objc_opt_isKindOfClass();
  }

  else
  {
    v12 = 1;
  }

  v13 = [v7 isTextBox];
  v14 = [OIXMLElement elementWithType:3];
  if (v6 == 1 || v6 == 75 || v6 == 202)
  {
    v17 = 1;
  }

  else
  {
    v17 = v13;
  }

  if (v17 & 1) != 0 || (isKindOfClass & v12)
  {
    [(WMOfficeArtMapper *)self mapOfficeArtTextboxAt:v14 withState:v43];
    if ((v12 & 1) == 0)
    {
      v34 = [CMBordersProperty alloc];
      v35 = [v7 stroke];
      v36 = [(CMBordersProperty *)v34 initWithOADStroke:v35];

      [(CMStyle *)self->super.mStyle addProperty:v36 forKey:0x286F07E30];
    }

    if ((isKindOfClass & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v37 = [v8 color];
        mStyle = self->super.mStyle;
        v39 = [CMColorProperty cssStringFromOADColor:v37];
        [(CMStyle *)mStyle appendPropertyForName:0x286F07DF0 stringWithColons:v39];

        [CMColorProperty transformedAlphaFromOADColor:v37];
        if (v40 != 1.0)
        {
          [(CMStyle *)self->super.mStyle appendPropertyForName:0x286F08150 floatValue:?];
        }
      }
    }

    [(CMMapper *)self addStyleUsingGlobalCacheTo:v14 style:self->super.mStyle];
    [v42 addChild:v14];
  }

  else
  {
    [(CMMapper *)self addStyleUsingGlobalCacheTo:v14 style:self->super.mStyle];
    v45.receiver = self;
    v45.super_class = WMOfficeArtMapper;
    [(CMDrawableMapper *)&v45 mapShapeGraphicsAt:v14 withState:v43];
    [v42 addChild:v14];
    v18 = [(WDAContent *)self->mContent textBox];
    if (v18)
    {
      Width = CGRectGetWidth(self->super.mBox);

      if (Width > 0.0)
      {
        v20 = [OIXMLElement elementWithType:3];
        [(WMOfficeArtMapper *)self mapTextBoxAt:v20 withState:v43];
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
        [v43 totalPageHeight];
        v33 = v32;
        if (v28 + v31 > v33)
        {
          *&v33 = v28 + v31;
          [v43 setTotalPageHeight:v33];
        }

        [(CMMapper *)self addStyleUsingGlobalCacheTo:v20 style:v29];
        [v14 addChild:v20];
      }
    }
  }
}

- (void)mapOfficeArtTextboxAt:(id)a3 withState:(id)a4
{
  v16 = a3;
  v6 = a4;
  v7 = [(WDAContent *)self->mContent textBox];
  if ([v7 nextTextBoxId])
  {
    WeakRetained = objc_loadWeakRetained(&self->super.super.mParent);
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      [(WMOfficeArtMapper *)self expandedSizeForTextBox:v7 withState:v6];
      v11 = v10;
      self->super.mBox.size.width = v12;
      self->super.mBox.size.height = v10;
      [(CMStyle *)self->super.mStyle appendPropertyForName:0x286EEA530 length:1 unit:?];
      [(CMStyle *)self->super.mStyle appendPropertyForName:0x286EF6790 length:1 unit:v11];
    }
  }

  v13 = [WMSectionContentMapper alloc];
  v14 = [v7 text];
  v15 = [(WMSectionContentMapper *)v13 initWithWDText:v14 parent:self];

  [(WMSectionContentMapper *)v15 mapAt:v16 withState:v6];
}

- (void)mapOfficeArtGroupAt:(id)a3 withState:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self->super.mDrawable;
  v9 = [(OADDrawable *)v8 childCount];
  v10 = v9;
  if (self->mFloating || self->mIsInsideGroup)
  {
    v18 = v6;
    if (!v9)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v17 = [OIXMLElement elementWithType:3];
    [v6 addChild:v17];
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
    [(WMOfficeArtMapper *)v15 mapAt:v18 withState:v7];

    v11 = v13;
    v16 = v10 > v13++;
    v12 = v14;
  }

  while (v16);

LABEL_7:
}

- (void)mapDiagramAt:(id)a3 withState:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [OIXMLElement elementWithType:3];
  [(CMStyle *)self->super.mStyle appendPropertyString:@"display:inline-block;"];
  [(CMMapper *)self addStyleUsingGlobalCacheTo:v8 style:self->super.mStyle];
  [v6 addChild:v8];
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
  [(CMDiagramMapper *)v14 mapAt:v10 withState:v7];
  [(CMDrawableMapper *)self mapDrawingContext:v11 at:v15 relative:1 withState:v7];
  [v15 addChild:v10];
  [WMParagraphMapper mapPlaceholderAt:v15 rect:v7 withState:self->super.mBox.origin.x, self->super.mBox.origin.y, self->super.mBox.size.width, self->super.mBox.size.height];
}

- (CGSize)expandedSizeForTextBox:(id)a3 withState:(id)a4
{
  v6 = a3;
  v7 = a4;
  p_mBox = &self->super.mBox;
  width = self->super.mBox.size.width;
  height = self->super.mBox.size.height;
  v11 = [v7 runIndex];
  [v7 pageOffset];
  v13 = v12;
  v14 = [v6 nextTextBoxId];
  v15 = 0;
  v16 = v13;
  while (1)
  {
    ++v11;
    v17 = v15;
    WeakRetained = objc_loadWeakRetained(&self->super.super.mParent);
    v15 = [WeakRetained runAtIndex:v11];

    if (!v15)
    {
      break;
    }

    if ([v15 runType] == 3)
    {
      v19 = [v15 drawable];
      v20 = v19;
      if (v19)
      {
        v21 = [v19 clientData];
        if (!v21 || v14 == [v20 id])
        {
          v22 = [v20 clientData];
          [v22 bounds];
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

          v32 = [v21 textBox];
          v33 = v32;
          if (!v32 || ![v32 nextTextBoxId])
          {

            break;
          }

          v14 = [v33 nextTextBoxId];
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