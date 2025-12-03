@interface CMImageFillMapper
- (BOOL)isCropped;
- (CGRect)uncroppedBox;
- (CMImageFillMapper)initWithOadFill:(id)fill bounds:(CGRect)bounds parent:(id)parent;
- (id)blipAtIndex:(unsigned int)index;
- (id)convertMetafileToPdf:(id)pdf state:(id)state;
- (id)mainSubBlip;
- (id)mapImageFill:(id)fill withState:(id)state;
- (void)mapAt:(id)at withState:(id)state;
- (void)mapImageFillAt:(id)at toStyle:(id)style withState:(id)state;
- (void)mapNonImageFillAt:(id)at toStyle:(id)style withState:(id)state;
@end

@implementation CMImageFillMapper

- (BOOL)isCropped
{
  v2 = self->mFill;
  if (([(OADFill *)v2 isSourceRectOverridden]& 1) != 0)
  {
    sourceRect = [(OADFill *)v2 sourceRect];
    v4 = sourceRect;
    v9 = 0;
    if (sourceRect)
    {
      [sourceRect left];
      if (v5 != 0.0 || ([v4 right], v6 != 0.0) || (objc_msgSend(v4, "top"), v7 != 0.0) || (objc_msgSend(v4, "bottom"), v8 != 0.0))
      {
        v9 = 1;
      }
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)mainSubBlip
{
  if ([(OADFill *)self->mFill isBlipRefOverridden])
  {
    blipRef = [(OADFill *)self->mFill blipRef];
    blip = [blipRef blip];
    if (blip || (v6 = [blipRef index], v6 >= 1) && (-[CMImageFillMapper blipAtIndex:](self, "blipAtIndex:", v6), (blip = objc_claimAutoreleasedReturnValue()) != 0))
    {
      mainSubBlip = [blip mainSubBlip];
    }

    else
    {
      mainSubBlip = 0;
    }
  }

  else
  {
    mainSubBlip = 0;
  }

  return mainSubBlip;
}

- (CGRect)uncroppedBox
{
  if ([(CMImageFillMapper *)self isCropped])
  {
    sourceRect = [(OADFill *)self->mFill sourceRect];
    p_mBounds = &self->mBounds;
    width = p_mBounds->size.width;
    [sourceRect left];
    v7 = v6;
    [sourceRect right];
    v9 = v8;
    height = p_mBounds->size.height;
    [sourceRect top];
    v12 = v11;
    [sourceRect bottom];
    v14 = v13;
    [sourceRect left];
    v16 = v15;
    [sourceRect top];
    v17 = width / ((1.0 - v7) - v9);
    v18 = height / ((1.0 - v12) - v14);
    x = v17 * -v16;
    y = v18 * -v20;
  }

  else
  {
    x = self->mBounds.origin.x;
    y = self->mBounds.origin.y;
    v17 = self->mBounds.size.width;
    v18 = self->mBounds.size.height;
  }

  v22 = x;
  v23 = y;
  v24 = v17;
  v25 = v18;
  result.size.height = v25;
  result.size.width = v24;
  result.origin.y = v23;
  result.origin.x = v22;
  return result;
}

- (CMImageFillMapper)initWithOadFill:(id)fill bounds:(CGRect)bounds parent:(id)parent
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  fillCopy = fill;
  v16.receiver = self;
  v16.super_class = CMImageFillMapper;
  v13 = [(CMMapper *)&v16 initWithParent:parent];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->mFill, fill);
    v14->mBounds.origin.x = x;
    v14->mBounds.origin.y = y;
    v14->mBounds.size.width = width;
    v14->mBounds.size.height = height;
  }

  return v14;
}

- (void)mapAt:(id)at withState:(id)state
{
  atCopy = at;
  stateCopy = state;
  if (self->mFill)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = [(CMImageFillMapper *)self mapImageFill:atCopy withState:stateCopy];
      }
    }
  }
}

- (id)mapImageFill:(id)fill withState:(id)state
{
  stateCopy = state;
  archiver = [(CMMapper *)self archiver];
  v7 = [archiver cachedPathForDrawable:self->mFill];
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    mainSubBlip = [(CMImageFillMapper *)self mainSubBlip];
    v10 = mainSubBlip;
    if (mainSubBlip && ([mainSubBlip load] & 1) != 0)
    {
      type = [v10 type];
      [v10 data];
      if ((type & 0xFFFFFFFE) == 4)
        v12 = {;
        v13 = [(CMImageFillMapper *)self convertMetafileToPdf:v12 state:stateCopy];
      }

      else
        v13 = {;
      }

      v8 = [archiver addResourceForDrawable:v13 withType:+[CMArchiveManager blipTypeToResourceType:](CMArchiveManager drawable:{"blipTypeToResourceType:", type), self->mFill}];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (void)mapImageFillAt:(id)at toStyle:(id)style withState:(id)state
{
  atCopy = at;
  styleCopy = style;
  v9 = [(CMImageFillMapper *)self mapImageFill:atCopy withState:state];
  if (v9)
  {
    [(CMMapper *)self addAttribute:0x286F07DB0 toNode:atCopy value:v9];
  }

  else
  {
    [styleCopy appendPropertyForName:0x286F07E30 stringWithColons:@":1px solid black;"];
  }
}

- (void)mapNonImageFillAt:(id)at toStyle:(id)style withState:(id)state
{
  atCopy = at;
  styleCopy = style;
  stateCopy = state;
  if (self->mFill)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        color = [(OADFill *)self->mFill color];
        v11 = [CMColorProperty nsColorFromOADColor:color state:stateCopy];

        v12 = [CMColorProperty cssStringFromTSUColor:v11];
        [styleCopy appendPropertyForName:0x286F07DF0 stringWithColons:v12];
        goto LABEL_5;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = [CMColorProperty cssStringFromOADGradientFill:self->mFill state:stateCopy];
        if (v11)
        {
          [styleCopy appendPropertyForName:0x286F07E10 stringWithColons:v11];
          goto LABEL_6;
        }

        v12 = [CMColorProperty nsColorFromOADFill:self->mFill state:stateCopy];
        v13 = [CMColorProperty cssStringFromTSUColor:v12];
        [styleCopy appendPropertyForName:0x286F07DF0 stringWithColons:v13];

LABEL_5:
LABEL_6:

        goto LABEL_7;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = [(CMImageFillMapper *)self mapImageFill:atCopy withState:stateCopy];
        if (v11)
        {
          v12 = [MEMORY[0x277CCACA8] stringWithFormat:@":url(%@)", v11];;
          [styleCopy appendPropertyForName:0x286F07E10 stringWithColons:v12];
          goto LABEL_5;
        }
      }
    }
  }

LABEL_7:
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

- (id)convertMetafileToPdf:(id)pdf state:(id)state
{
  v4 = [MFConverter play:pdf frame:0 colorMap:0 fillMap:self->mBounds.origin.x, self->mBounds.origin.y, self->mBounds.size.width, self->mBounds.size.height];

  return v4;
}

@end