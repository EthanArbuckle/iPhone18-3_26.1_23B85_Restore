@interface WDOfficeArt
+ (int)textBoxTextTypeForRegularTextType:(int)type;
- (WDOfficeArt)initWithParagraph:(id)paragraph;
- (id)description;
- (id)imageBlipRef;
- (id)imageData;
- (id)imageName;
- (void)checkForFloating:(id)floating;
- (void)clearDrawable;
- (void)propagateTextTypeToDrawables;
- (void)setImageBlipRef:(id)ref;
- (void)setTextType:(int)type recursivelyToDrawable:(id)drawable;
@end

@implementation WDOfficeArt

- (void)propagateTextTypeToDrawables
{
  paragraph = [(WDRun *)self paragraph];
  text = [paragraph text];
  textType = [text textType];

  drawable = [(WDOfficeArt *)self drawable];
  [(WDOfficeArt *)self setTextType:textType recursivelyToDrawable:?];
}

- (WDOfficeArt)initWithParagraph:(id)paragraph
{
  v4.receiver = self;
  v4.super_class = WDOfficeArt;
  return [(WDRunWithCharacterProperties *)&v4 initWithParagraph:paragraph];
}

- (void)clearDrawable
{
  mDrawable = self->mDrawable;
  self->mDrawable = 0;
}

- (id)imageBlipRef
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    imageProperties = [(OADDrawable *)self->mDrawable imageProperties];
    imageFill = [imageProperties imageFill];
    blipRef = [imageFill blipRef];
  }

  else
  {
    blipRef = 0;
  }

  return blipRef;
}

- (void)setImageBlipRef:(id)ref
{
  refCopy = ref;
  v4 = [[OADImage alloc] initWithBlipRef:refCopy];
  v5 = [(OADDrawable *)v4 createWordClientDataWithTextType:0];
  [v5 setDrawable:v4];
  [(WDOfficeArt *)self setDrawable:v4];
}

- (id)imageData
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    imageProperties = [(OADDrawable *)self->mDrawable imageProperties];
    imageFill = [imageProperties imageFill];
    blipRef = [imageFill blipRef];

    blip = [blipRef blip];
    mainSubBlip = [blip mainSubBlip];
    data = [mainSubBlip data];
  }

  else
  {
    data = 0;
  }

  return data;
}

- (id)imageName
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    imageProperties = [(OADDrawable *)self->mDrawable imageProperties];
    imageFill = [imageProperties imageFill];
    blipRef = [imageFill blipRef];

    name = [blipRef name];
  }

  else
  {
    name = 0;
  }

  return name;
}

- (void)setTextType:(int)type recursivelyToDrawable:(id)drawable
{
  v4 = *&type;
  drawableCopy = drawable;
  clientData = [drawableCopy clientData];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [clientData setTextType:v4];
  }

  if ([drawableCopy conformsToProtocol:&unk_286F8C860])
  {
    v7 = drawableCopy;
    childCount = [v7 childCount];
    if (childCount)
    {
      for (i = 0; i != childCount; ++i)
      {
        v10 = [v7 childAtIndex:i];
        [(WDOfficeArt *)self setTextType:v4 recursivelyToDrawable:v10];
      }
    }
  }
}

+ (int)textBoxTextTypeForRegularTextType:(int)type
{
  if (type == 2)
  {
    v3 = 7;
  }

  else
  {
    v3 = -1;
  }

  if (type)
  {
    return v3;
  }

  else
  {
    return 6;
  }
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = WDOfficeArt;
  v2 = [(WDRun *)&v4 description];

  return v2;
}

- (void)checkForFloating:(id)floating
{
  floatingCopy = floating;
  self->mFloating = 1;
  v12 = floatingCopy;
  runCount = [floatingCopy runCount];
  v6 = runCount;
  v7 = runCount - 3;
  if (runCount >= 3)
  {
    v8 = [v12 runAt:runCount - 1];
    v9 = v8;
    if (v8 && [v8 runType] == 7 && objc_msgSend(v9, "fieldMarkerType") == 20)
    {
      v10 = [v12 runAt:v6 - 2];

      if (v10)
      {
        if ([v10 runType])
        {
          v9 = v10;
        }

        else
        {
          string = [v10 string];
          v9 = [v12 runAt:v7];

          if (v9 && [v9 runType] == 7 && objc_msgSend(v9, "fieldMarkerType") == 19 && !objc_msgSend(string, "compare:", @" SHAPE  \\* MERGEFORMAT "))
          {
            self->mFloating = 0;
          }
        }
      }

      else
      {
        v9 = 0;
      }
    }
  }
}

@end