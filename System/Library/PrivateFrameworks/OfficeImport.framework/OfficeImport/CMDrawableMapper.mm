@interface CMDrawableMapper
- (CGRect)box;
- (CGRect)shapeTextBoxRect;
- (CGRect)uncroppedBox;
- (CMDrawableMapper)initWithOadDrawable:(id)drawable parent:(id)parent;
- (CMDrawableMapper)initWithParent:(id)parent;
- (id)blipAtIndex:(unsigned int)index;
- (id)convertMetafileToPdf;
- (id)saveResourceAndReturnPath:(id)path withType:(int)type;
- (void)calculateUncroppedBox:(id)box;
- (void)mapDrawingContext:(id)context at:(id)at relative:(BOOL)relative withState:(id)state;
- (void)mapShapeGraphicsAt:(id)at withState:(id)state;
- (void)setWithOadImage:(id)image;
@end

@implementation CMDrawableMapper

- (id)convertMetafileToPdf
{
  drawableProperties = [(OADDrawable *)self->mDrawable drawableProperties];
  orientedBounds = [drawableProperties orientedBounds];
  [orientedBounds bounds];
  width = v5;
  height = v7;

  if (width == 0.0 || height == 0.0)
  {
    width = self->mBox.size.width;
    height = self->mBox.size.height;
  }

  height = [MFConverter play:self->mImageBinaryData frame:0 colorMap:0 fillMap:*MEMORY[0x277CBF348], *(MEMORY[0x277CBF348] + 8), width, height];

  return height;
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
  geometry = [(OADDrawable *)self->mDrawable geometry];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    equivalentCustomGeometry = geometry;
  }

  else
  {
    equivalentCustomGeometry = [geometry equivalentCustomGeometry];
  }

  v5 = equivalentCustomGeometry;
  if ([equivalentCustomGeometry textBodyRectCount])
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

- (CMDrawableMapper)initWithParent:(id)parent
{
  v12.receiver = self;
  v12.super_class = CMDrawableMapper;
  v3 = [(CMMapper *)&v12 initWithParent:parent];
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

- (CMDrawableMapper)initWithOadDrawable:(id)drawable parent:(id)parent
{
  drawableCopy = drawable;
  parentCopy = parent;
  v14.receiver = self;
  v14.super_class = CMDrawableMapper;
  v9 = [(CMMapper *)&v14 initWithParent:parentCopy];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->mDrawable, drawable);
    v11 = objc_alloc_init(CMDrawableStyle);
    mStyle = v10->mStyle;
    v10->mStyle = v11;
  }

  return v10;
}

- (void)setWithOadImage:(id)image
{
  imageCopy = image;
  self->mIsSupported = 0;
  v24 = imageCopy;
  imageProperties = [imageCopy imageProperties];
  imageFill = [imageProperties imageFill];
  if (![imageFill isBlipRefOverridden])
  {
    goto LABEL_12;
  }

  blipRef = [imageFill blipRef];
  blip = [blipRef blip];
  if (blip)
  {

    goto LABEL_4;
  }

  index = [blipRef index];
  if (index <= 0)
  {

LABEL_12:
    blip = 0;
    goto LABEL_24;
  }

  blip = [(CMDrawableMapper *)self blipAtIndex:index];

  if (blip)
  {
LABEL_4:
    mainSubBlip = [blip mainSubBlip];
    load = [mainSubBlip load];

    if ((load & 1) == 0)
    {
      goto LABEL_24;
    }

    mainSubBlip2 = [blip mainSubBlip];
    data = [mainSubBlip2 data];
    mImageBinaryData = self->mImageBinaryData;
    self->mImageBinaryData = data;

    mainSubBlip3 = [blip mainSubBlip];
    type = [mainSubBlip3 type];

    self->mResourceType = [CMArchiveManager blipTypeToResourceType:type];
    if (type <= 3)
    {
      if (type == 2)
      {
        mExtension = self->mExtension;
        v22 = @"jpg";
        goto LABEL_22;
      }

      if (type == 3)
      {
        mExtension = self->mExtension;
        v22 = @"png";
        goto LABEL_22;
      }
    }

    else
    {
      if ((type - 4) < 3)
      {
        v16 = self->mExtension;
        self->mExtension = @"pdf";

        convertMetafileToPdf = [(CMDrawableMapper *)self convertMetafileToPdf];
        v18 = self->mImageBinaryData;
        self->mImageBinaryData = convertMetafileToPdf;

        v19 = self->mImageBinaryData != 0;
LABEL_23:
        self->mIsSupported = v19;
        goto LABEL_24;
      }

      if (type == 7)
      {
        mExtension = self->mExtension;
        v22 = @"gif";
        goto LABEL_22;
      }

      if (type == 8)
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

- (id)saveResourceAndReturnPath:(id)path withType:(int)type
{
  v4 = *&type;
  pathCopy = path;
  archiver = [(CMMapper *)self archiver];
  v8 = [archiver addResource:pathCopy withType:v4];

  return v8;
}

- (id)blipAtIndex:(unsigned int)index
{
  v3 = *&index;
  root = [(CMMapper *)self root];
  v6 = [root conformsToProtocol:&unk_286FC5D90];

  if (v6)
  {
    root2 = [(CMMapper *)self root];
    v8 = [root2 blipAtIndex:v3];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)calculateUncroppedBox:(id)box
{
  boxCopy = box;
  if ([boxCopy isSourceRectOverridden])
  {
    sourceRect = [boxCopy sourceRect];
    v5 = sourceRect;
    if (!sourceRect || ([sourceRect left], v6 == 0.0) && (objc_msgSend(v5, "right"), v7 == 0.0) && (objc_msgSend(v5, "top"), v8 == 0.0) && (objc_msgSend(v5, "bottom"), v9 == 0.0))
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

- (void)mapShapeGraphicsAt:(id)at withState:(id)state
{
  atCopy = at;
  stateCopy = state;
  v6 = self->mDrawable;
  type = [(OADDrawable *)v6 type];
  if (!type)
  {
    if ([CMShapeUtils isShapeALine:v6])
    {
      type = 20;
    }

    else
    {
      type = 0;
    }
  }

  shapeProperties = [(OADDrawable *)v6 shapeProperties];
  orientedBounds = [shapeProperties orientedBounds];

  mOrientedBounds = self->mOrientedBounds;
  v32 = orientedBounds;
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

  [orientedBounds setBounds:{x, y, width, height}];
  v35 = [[CMDrawingContext alloc] initWithFrame:self->mBox.origin.x, self->mBox.origin.y, self->mBox.size.width, self->mBox.size.height];
  if (type > 0x3F)
  {
    goto LABEL_13;
  }

  if (((1 << type) & 0xFD8001FF0041BFFELL) != 0)
  {
LABEL_22:
    shapeProperties2 = [(OADDrawable *)v6 shapeProperties];
    fill = [shapeProperties2 fill];
    shapeProperties3 = [(OADDrawable *)v6 shapeProperties];
    stroke = [shapeProperties3 stroke];
    geometry = [(OADDrawable *)v6 geometry];
    adjustValues = [geometry adjustValues];
    [CMShapeRenderer renderCanonicalShape:type fill:fill stroke:stroke adjustValues:adjustValues orientedBounds:v32 state:stateCopy drawingContext:v35];

LABEL_23:
    goto LABEL_24;
  }

  if (!type)
  {
    shapeProperties2 = [(OADDrawable *)v6 geometry];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_25;
    }

    geometry2 = [(OADDrawable *)v6 geometry];
    pathCount = [geometry2 pathCount];

    if (!pathCount)
    {
      goto LABEL_26;
    }

    shapeProperties2 = [(OADDrawable *)v6 geometry];
    fill = [(OADDrawable *)v6 shapeProperties];
    shapeProperties3 = [fill fill];
    stroke = [(OADDrawable *)v6 shapeProperties];
    geometry = [stroke stroke];
    [CMShapeRenderer renderFreeForm:shapeProperties2 fill:shapeProperties3 stroke:geometry orientedBounds:v32 state:stateCopy drawingContext:v35];
    goto LABEL_23;
  }

  if (type != 20)
  {
LABEL_13:
    if ((type - 66) > 0x1A || ((1 << (type - 66)) & 0x403FE1F) == 0)
    {
      v20 = type + 92;
      if ((type - 164) > 0x2F)
      {
        goto LABEL_29;
      }

      if (((1 << v20) & 0xF04000840000) == 0)
      {
        if (((1 << v20) & 3) == 0)
        {
          goto LABEL_29;
        }

        type = 1;
      }
    }

    goto LABEL_22;
  }

  geometry3 = [(OADDrawable *)v6 geometry];
  objc_opt_class();
  objc_opt_isKindOfClass();

  shapeProperties2 = [(OADDrawable *)v6 shapeProperties];
  fill = [shapeProperties2 stroke];
  shapeProperties3 = [(OADDrawable *)v6 geometry];
  stroke = [shapeProperties3 adjustValues];
  [CMShapeRenderer renderLine:20 stroke:fill adjustValues:stroke orientedBounds:orientedBounds state:stateCopy drawingContext:v35];
LABEL_24:

LABEL_25:
LABEL_26:
  v23 = objc_alloc_init(CMDrawableStyle);
  [(CMDrawingContext *)v35 pdfFrame];
  [(CMDrawableStyle *)v23 addPositionUsingOffsets:v24 - self->mBox.origin.x, v25 - self->mBox.origin.y];
  v26 = [OIXMLElement elementWithType:9];
  copyPDF = [(CMDrawingContext *)v35 copyPDF];
  if (copyPDF)
  {
    v28 = [(CMDrawableMapper *)self saveResourceAndReturnPath:copyPDF withType:7];
    [(CMMapper *)self addAttribute:0x286F07DB0 toNode:v26 value:v28];
  }

  v36.receiver = self;
  v36.super_class = CMDrawableMapper;
  [(CMMapper *)&v36 addStyleUsingGlobalCacheTo:v26 style:v23 embedStyle:1];
  [atCopy addChild:v26];

LABEL_29:
}

- (void)mapDrawingContext:(id)context at:(id)at relative:(BOOL)relative withState:(id)state
{
  relativeCopy = relative;
  contextCopy = context;
  atCopy = at;
  copyPDF = [contextCopy copyPDF];
  if (copyPDF)
  {
    v12 = [OIXMLElement elementWithType:9];
    v13 = objc_alloc_init(CMDrawableStyle);
    [contextCopy pdfFrame];
    if (relativeCopy)
    {
      v14 = v14 - self->mBox.origin.x;
      v15 = v15 - self->mBox.origin.y;
    }

    [(CMDrawableStyle *)v13 addPositionUsingOffsets:v14, v15];
    v16 = [(CMDrawableMapper *)self saveResourceAndReturnPath:copyPDF withType:7];
    [(CMMapper *)self addAttribute:0x286F07DB0 toNode:v12 value:v16];
    v17.receiver = self;
    v17.super_class = CMDrawableMapper;
    [(CMMapper *)&v17 addStyleUsingGlobalCacheTo:v12 style:v13 embedStyle:1];
    [atCopy addChild:v12];
  }
}

@end