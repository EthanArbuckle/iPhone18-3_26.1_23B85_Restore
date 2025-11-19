@interface CMDrawableMapper
- (CGRect)box;
- (CGRect)shapeTextBoxRect;
- (CGRect)uncroppedBox;
- (CMDrawableMapper)initWithOadDrawable:(id)a3 parent:(id)a4;
- (CMDrawableMapper)initWithParent:(id)a3;
- (id)blipAtIndex:(unsigned int)a3;
- (id)convertMetafileToPdf;
- (id)saveResourceAndReturnPath:(id)a3 withType:(int)a4;
- (void)calculateUncroppedBox:(id)a3;
- (void)mapDrawingContext:(id)a3 at:(id)a4 relative:(BOOL)a5 withState:(id)a6;
- (void)mapShapeGraphicsAt:(id)a3 withState:(id)a4;
- (void)setWithOadImage:(id)a3;
@end

@implementation CMDrawableMapper

- (id)convertMetafileToPdf
{
  v3 = [(OADDrawable *)self->mDrawable drawableProperties];
  v4 = [v3 orientedBounds];
  [v4 bounds];
  width = v5;
  height = v7;

  if (width == 0.0 || height == 0.0)
  {
    width = self->mBox.size.width;
    height = self->mBox.size.height;
  }

  v9 = [MFConverter play:self->mImageBinaryData frame:0 colorMap:0 fillMap:*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8), width, height];

  return v9;
}

- (CGRect)box
{
  x = self->mBox.origin.x;
  y = self->mBox.origin.y;
  width = self->mBox.size.width;
  height = self->mBox.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)shapeTextBoxRect
{
  v3 = [(OADDrawable *)self->mDrawable geometry];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = [v3 equivalentCustomGeometry];
  }

  v5 = v4;
  if ([v4 textBodyRectCount])
  {
    v6 = [v5 textBodyRectAtIndex:0];
    if (v5)
    {
      [v5 geometryCoordSpace];
    }

    else
    {
      v34 = 0;
      v35 = 0;
    }

    width = self->mBox.size.width;
    height = self->mBox.size.height;
    +[CMShapeUtils mapAdjustCoord:geometry:](CMShapeUtils, "mapAdjustCoord:geometry:", [v6 left], v5);
    v14 = v13;
    +[CMShapeUtils mapAdjustCoord:geometry:](CMShapeUtils, "mapAdjustCoord:geometry:", [v6 right], v5);
    v16 = v15;
    +[CMShapeUtils mapAdjustCoord:geometry:](CMShapeUtils, "mapAdjustCoord:geometry:", [v6 top], v5);
    v18 = v17;
    +[CMShapeUtils mapAdjustCoord:geometry:](CMShapeUtils, "mapAdjustCoord:geometry:", [v6 bottom], v5);
    v19 = width / 21600.0;
    v20 = height / 21600.0;
    v21 = v14;
    v22 = v16;
    v23 = v18;
    v25 = v24;
    v26 = v19 * v21;
    v27 = (v22 - v21) * v19;
    if (v27 <= 0.0)
    {
      v9 = self->mBox.size.width + v27;
    }

    else
    {
      v9 = v27;
    }

    v28 = v26;
    v29 = (v25 - v23) * v20;
    if (v29 <= 0.0)
    {
      v10 = self->mBox.size.height + v29;
    }

    else
    {
      v10 = v29;
    }

    x = self->mBox.origin.x + v28;
    y = self->mBox.origin.y + (v20 * v23);
  }

  else
  {
    x = self->mBox.origin.x;
    y = self->mBox.origin.y;
    v9 = self->mBox.size.width;
    v10 = self->mBox.size.height;
  }

  v30 = x;
  v31 = y;
  v32 = v9;
  v33 = v10;
  result.size.height = v33;
  result.size.width = v32;
  result.origin.y = v31;
  result.origin.x = v30;
  return result;
}

- (CGRect)uncroppedBox
{
  x = self->mUncroppedBox.origin.x;
  y = self->mUncroppedBox.origin.y;
  width = self->mUncroppedBox.size.width;
  height = self->mUncroppedBox.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CMDrawableMapper)initWithParent:(id)a3
{
  v12.receiver = self;
  v12.super_class = CMDrawableMapper;
  v3 = [(CMMapper *)&v12 initWithParent:a3];
  v4 = v3;
  if (v3)
  {
    v3->mIsSupported = 0;
    v3->mIsCropped = 0;
    mImageBinaryData = v3->mImageBinaryData;
    v3->mImageBinaryData = 0;

    v6 = *(MEMORY[0x277CBF3A0] + 16);
    v4->mBox.origin = *MEMORY[0x277CBF3A0];
    v4->mBox.size = v6;
    mDrawable = v4->mDrawable;
    v4->mDrawable = 0;

    mStyle = v4->mStyle;
    v4->mStyle = 0;

    mSourcePath = v4->mSourcePath;
    v4->mSourcePath = 0;

    mOrientedBounds = v4->mOrientedBounds;
    v4->mOrientedBounds = 0;
  }

  return v4;
}

- (CMDrawableMapper)initWithOadDrawable:(id)a3 parent:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = CMDrawableMapper;
  v9 = [(CMMapper *)&v14 initWithParent:v8];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->mDrawable, a3);
    v11 = objc_alloc_init(CMDrawableStyle);
    mStyle = v10->mStyle;
    v10->mStyle = v11;
  }

  return v10;
}

- (void)setWithOadImage:(id)a3
{
  v4 = a3;
  self->mIsSupported = 0;
  v24 = v4;
  v5 = [v4 imageProperties];
  v6 = [v5 imageFill];
  if (![v6 isBlipRefOverridden])
  {
    goto LABEL_12;
  }

  v7 = [v6 blipRef];
  v8 = [v7 blip];
  if (v8)
  {

    goto LABEL_4;
  }

  v20 = [v7 index];
  if (v20 <= 0)
  {

LABEL_12:
    v8 = 0;
    goto LABEL_24;
  }

  v8 = [(CMDrawableMapper *)self blipAtIndex:v20];

  if (v8)
  {
LABEL_4:
    v9 = [v8 mainSubBlip];
    v10 = [v9 load];

    if ((v10 & 1) == 0)
    {
      goto LABEL_24;
    }

    v11 = [v8 mainSubBlip];
    v12 = [v11 data];
    mImageBinaryData = self->mImageBinaryData;
    self->mImageBinaryData = v12;

    v14 = [v8 mainSubBlip];
    v15 = [v14 type];

    self->mResourceType = [CMArchiveManager blipTypeToResourceType:v15];
    if (v15 <= 3)
    {
      if (v15 == 2)
      {
        mExtension = self->mExtension;
        v22 = @"jpg";
        goto LABEL_22;
      }

      if (v15 == 3)
      {
        mExtension = self->mExtension;
        v22 = @"png";
        goto LABEL_22;
      }
    }

    else
    {
      if ((v15 - 4) < 3)
      {
        v16 = self->mExtension;
        self->mExtension = @"pdf";

        v17 = [(CMDrawableMapper *)self convertMetafileToPdf];
        v18 = self->mImageBinaryData;
        self->mImageBinaryData = v17;

        v19 = self->mImageBinaryData != 0;
LABEL_23:
        self->mIsSupported = v19;
        goto LABEL_24;
      }

      if (v15 == 7)
      {
        mExtension = self->mExtension;
        v22 = @"gif";
        goto LABEL_22;
      }

      if (v15 == 8)
      {
        mExtension = self->mExtension;
        v22 = @"tiff";
LABEL_22:
        self->mExtension = v22;

        v19 = 1;
        goto LABEL_23;
      }
    }

    v23 = self->mExtension;
    self->mExtension = 0;
  }

LABEL_24:
}

- (id)saveResourceAndReturnPath:(id)a3 withType:(int)a4
{
  v4 = *&a4;
  v6 = a3;
  v7 = [(CMMapper *)self archiver];
  v8 = [v7 addResource:v6 withType:v4];

  return v8;
}

- (id)blipAtIndex:(unsigned int)a3
{
  v3 = *&a3;
  v5 = [(CMMapper *)self root];
  v6 = [v5 conformsToProtocol:&unk_286FC5D90];

  if (v6)
  {
    v7 = [(CMMapper *)self root];
    v8 = [v7 blipAtIndex:v3];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)calculateUncroppedBox:(id)a3
{
  v22 = a3;
  if ([v22 isSourceRectOverridden])
  {
    v4 = [v22 sourceRect];
    v5 = v4;
    if (!v4 || ([v4 left], v6 == 0.0) && (objc_msgSend(v5, "right"), v7 == 0.0) && (objc_msgSend(v5, "top"), v8 == 0.0) && (objc_msgSend(v5, "bottom"), v9 == 0.0))
    {
      self->mIsCropped = 0;
    }

    else
    {
      self->mIsCropped = 1;
      p_mBox = &self->mBox;
      width = self->mBox.size.width;
      [v5 left];
      v13 = v12;
      [v5 right];
      p_mUncroppedBox = &self->mUncroppedBox;
      p_mUncroppedBox->size.width = width / ((1.0 - v13) - v14);
      height = p_mBox->size.height;
      [v5 top];
      v18 = v17;
      [v5 bottom];
      p_mUncroppedBox->size.height = height / ((1.0 - v18) - v19);
      [v5 left];
      p_mUncroppedBox->origin.x = p_mUncroppedBox->size.width * -v20;
      [v5 top];
      p_mUncroppedBox->origin.y = p_mUncroppedBox->size.height * -v21;
    }
  }

  else
  {
    self->mIsCropped = 0;
  }
}

- (void)mapShapeGraphicsAt:(id)a3 withState:(id)a4
{
  v34 = a3;
  v33 = a4;
  v6 = self->mDrawable;
  v7 = [(OADDrawable *)v6 type];
  if (!v7)
  {
    if ([CMShapeUtils isShapeALine:v6])
    {
      v7 = 20;
    }

    else
    {
      v7 = 0;
    }
  }

  v8 = [(OADDrawable *)v6 shapeProperties];
  v9 = [v8 orientedBounds];

  mOrientedBounds = self->mOrientedBounds;
  v32 = v9;
  if (mOrientedBounds)
  {
    [(OADOrientedBounds *)mOrientedBounds bounds];
  }

  else
  {
    x = self->mBox.origin.x;
    y = self->mBox.origin.y;
    width = self->mBox.size.width;
    height = self->mBox.size.height;
  }

  [v9 setBounds:{x, y, width, height}];
  v35 = [[CMDrawingContext alloc] initWithFrame:self->mBox.origin.x, self->mBox.origin.y, self->mBox.size.width, self->mBox.size.height];
  if (v7 > 0x3F)
  {
    goto LABEL_13;
  }

  if (((1 << v7) & 0xFD8001FF0041BFFELL) != 0)
  {
LABEL_22:
    v31 = [(OADDrawable *)v6 shapeProperties];
    v16 = [v31 fill];
    v17 = [(OADDrawable *)v6 shapeProperties];
    v18 = [v17 stroke];
    v21 = [(OADDrawable *)v6 geometry];
    v22 = [v21 adjustValues];
    [CMShapeRenderer renderCanonicalShape:v7 fill:v16 stroke:v18 adjustValues:v22 orientedBounds:v32 state:v33 drawingContext:v35];

LABEL_23:
    goto LABEL_24;
  }

  if (!v7)
  {
    v31 = [(OADDrawable *)v6 geometry];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_25;
    }

    v29 = [(OADDrawable *)v6 geometry];
    v30 = [v29 pathCount];

    if (!v30)
    {
      goto LABEL_26;
    }

    v31 = [(OADDrawable *)v6 geometry];
    v16 = [(OADDrawable *)v6 shapeProperties];
    v17 = [v16 fill];
    v18 = [(OADDrawable *)v6 shapeProperties];
    v21 = [v18 stroke];
    [CMShapeRenderer renderFreeForm:v31 fill:v17 stroke:v21 orientedBounds:v32 state:v33 drawingContext:v35];
    goto LABEL_23;
  }

  if (v7 != 20)
  {
LABEL_13:
    if ((v7 - 66) > 0x1A || ((1 << (v7 - 66)) & 0x403FE1F) == 0)
    {
      v20 = v7 + 92;
      if ((v7 - 164) > 0x2F)
      {
        goto LABEL_29;
      }

      if (((1 << v20) & 0xF04000840000) == 0)
      {
        if (((1 << v20) & 3) == 0)
        {
          goto LABEL_29;
        }

        v7 = 1;
      }
    }

    goto LABEL_22;
  }

  v15 = [(OADDrawable *)v6 geometry];
  objc_opt_class();
  objc_opt_isKindOfClass();

  v31 = [(OADDrawable *)v6 shapeProperties];
  v16 = [v31 stroke];
  v17 = [(OADDrawable *)v6 geometry];
  v18 = [v17 adjustValues];
  [CMShapeRenderer renderLine:20 stroke:v16 adjustValues:v18 orientedBounds:v9 state:v33 drawingContext:v35];
LABEL_24:

LABEL_25:
LABEL_26:
  v23 = objc_alloc_init(CMDrawableStyle);
  [(CMDrawingContext *)v35 pdfFrame];
  [(CMDrawableStyle *)v23 addPositionUsingOffsets:v24 - self->mBox.origin.x, v25 - self->mBox.origin.y];
  v26 = [OIXMLElement elementWithType:9];
  v27 = [(CMDrawingContext *)v35 copyPDF];
  if (v27)
  {
    v28 = [(CMDrawableMapper *)self saveResourceAndReturnPath:v27 withType:7];
    [(CMMapper *)self addAttribute:0x286F07DB0 toNode:v26 value:v28];
  }

  v36.receiver = self;
  v36.super_class = CMDrawableMapper;
  [(CMMapper *)&v36 addStyleUsingGlobalCacheTo:v26 style:v23 embedStyle:1];
  [v34 addChild:v26];

LABEL_29:
}

- (void)mapDrawingContext:(id)a3 at:(id)a4 relative:(BOOL)a5 withState:(id)a6
{
  v6 = a5;
  v9 = a3;
  v10 = a4;
  v11 = [v9 copyPDF];
  if (v11)
  {
    v12 = [OIXMLElement elementWithType:9];
    v13 = objc_alloc_init(CMDrawableStyle);
    [v9 pdfFrame];
    if (v6)
    {
      v14 = v14 - self->mBox.origin.x;
      v15 = v15 - self->mBox.origin.y;
    }

    [(CMDrawableStyle *)v13 addPositionUsingOffsets:v14, v15];
    v16 = [(CMDrawableMapper *)self saveResourceAndReturnPath:v11 withType:7];
    [(CMMapper *)self addAttribute:0x286F07DB0 toNode:v12 value:v16];
    v17.receiver = self;
    v17.super_class = CMDrawableMapper;
    [(CMMapper *)&v17 addStyleUsingGlobalCacheTo:v12 style:v13 embedStyle:1];
    [v10 addChild:v12];
  }
}

@end