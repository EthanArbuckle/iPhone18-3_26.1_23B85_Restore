@interface CMImageFillMapper
- (BOOL)isCropped;
- (CGRect)uncroppedBox;
- (CMImageFillMapper)initWithOadFill:(id)a3 bounds:(CGRect)a4 parent:(id)a5;
- (id)blipAtIndex:(unsigned int)a3;
- (id)convertMetafileToPdf:(id)a3 state:(id)a4;
- (id)mainSubBlip;
- (id)mapImageFill:(id)a3 withState:(id)a4;
- (void)mapAt:(id)a3 withState:(id)a4;
- (void)mapImageFillAt:(id)a3 toStyle:(id)a4 withState:(id)a5;
- (void)mapNonImageFillAt:(id)a3 toStyle:(id)a4 withState:(id)a5;
@end

@implementation CMImageFillMapper

- (BOOL)isCropped
{
  v2 = self->mFill;
  if (([(OADFill *)v2 isSourceRectOverridden]& 1) != 0)
  {
    v3 = [(OADFill *)v2 sourceRect];
    v4 = v3;
    v9 = 0;
    if (v3)
    {
      [v3 left];
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
    v3 = [(OADFill *)self->mFill blipRef];
    v4 = [v3 blip];
    if (v4 || (v6 = [v3 index], v6 >= 1) && (-[CMImageFillMapper blipAtIndex:](self, "blipAtIndex:", v6), (v4 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v5 = [v4 mainSubBlip];
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (CGRect)uncroppedBox
{
  if ([(CMImageFillMapper *)self isCropped])
  {
    v3 = [(OADFill *)self->mFill sourceRect];
    p_mBounds = &self->mBounds;
    width = p_mBounds->size.width;
    [v3 left];
    v7 = v6;
    [v3 right];
    v9 = v8;
    height = p_mBounds->size.height;
    [v3 top];
    v12 = v11;
    [v3 bottom];
    v14 = v13;
    [v3 left];
    v16 = v15;
    [v3 top];
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

- (CMImageFillMapper)initWithOadFill:(id)a3 bounds:(CGRect)a4 parent:(id)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v12 = a3;
  v16.receiver = self;
  v16.super_class = CMImageFillMapper;
  v13 = [(CMMapper *)&v16 initWithParent:a5];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->mFill, a3);
    v14->mBounds.origin.x = x;
    v14->mBounds.origin.y = y;
    v14->mBounds.size.width = width;
    v14->mBounds.size.height = height;
  }

  return v14;
}

- (void)mapAt:(id)a3 withState:(id)a4
{
  v8 = a3;
  v6 = a4;
  if (self->mFill)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = [(CMImageFillMapper *)self mapImageFill:v8 withState:v6];
      }
    }
  }
}

- (id)mapImageFill:(id)a3 withState:(id)a4
{
  v5 = a4;
  v6 = [(CMMapper *)self archiver];
  v7 = [v6 cachedPathForDrawable:self->mFill];
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v9 = [(CMImageFillMapper *)self mainSubBlip];
    v10 = v9;
    if (v9 && ([v9 load] & 1) != 0)
    {
      v11 = [v10 type];
      [v10 data];
      if ((v11 & 0xFFFFFFFE) == 4)
        v12 = {;
        v13 = [(CMImageFillMapper *)self convertMetafileToPdf:v12 state:v5];
      }

      else
        v13 = {;
      }

      v8 = [v6 addResourceForDrawable:v13 withType:+[CMArchiveManager blipTypeToResourceType:](CMArchiveManager drawable:{"blipTypeToResourceType:", v11), self->mFill}];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (void)mapImageFillAt:(id)a3 toStyle:(id)a4 withState:(id)a5
{
  v10 = a3;
  v8 = a4;
  v9 = [(CMImageFillMapper *)self mapImageFill:v10 withState:a5];
  if (v9)
  {
    [(CMMapper *)self addAttribute:0x286F07DB0 toNode:v10 value:v9];
  }

  else
  {
    [v8 appendPropertyForName:0x286F07E30 stringWithColons:@":1px solid black;"];
  }
}

- (void)mapNonImageFillAt:(id)a3 toStyle:(id)a4 withState:(id)a5
{
  v14 = a3;
  v8 = a4;
  v9 = a5;
  if (self->mFill)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = [(OADFill *)self->mFill color];
        v11 = [CMColorProperty nsColorFromOADColor:v10 state:v9];

        v12 = [CMColorProperty cssStringFromTSUColor:v11];
        [v8 appendPropertyForName:0x286F07DF0 stringWithColons:v12];
        goto LABEL_5;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = [CMColorProperty cssStringFromOADGradientFill:self->mFill state:v9];
        if (v11)
        {
          [v8 appendPropertyForName:0x286F07E10 stringWithColons:v11];
          goto LABEL_6;
        }

        v12 = [CMColorProperty nsColorFromOADFill:self->mFill state:v9];
        v13 = [CMColorProperty cssStringFromTSUColor:v12];
        [v8 appendPropertyForName:0x286F07DF0 stringWithColons:v13];

LABEL_5:
LABEL_6:

        goto LABEL_7;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = [(CMImageFillMapper *)self mapImageFill:v14 withState:v9];
        if (v11)
        {
          v12 = [MEMORY[0x277CCACA8] stringWithFormat:@":url(%@)", v11];;
          [v8 appendPropertyForName:0x286F07E10 stringWithColons:v12];
          goto LABEL_5;
        }
      }
    }
  }

LABEL_7:
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

- (id)convertMetafileToPdf:(id)a3 state:(id)a4
{
  v4 = [MFConverter play:a3 frame:0 colorMap:0 fillMap:self->mBounds.origin.x, self->mBounds.origin.y, self->mBounds.size.width, self->mBounds.size.height];

  return v4;
}

@end