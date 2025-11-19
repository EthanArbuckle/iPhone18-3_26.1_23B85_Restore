@interface WDOfficeArt
+ (int)textBoxTextTypeForRegularTextType:(int)a3;
- (WDOfficeArt)initWithParagraph:(id)a3;
- (id)description;
- (id)imageBlipRef;
- (id)imageData;
- (id)imageName;
- (void)checkForFloating:(id)a3;
- (void)clearDrawable;
- (void)propagateTextTypeToDrawables;
- (void)setImageBlipRef:(id)a3;
- (void)setTextType:(int)a3 recursivelyToDrawable:(id)a4;
@end

@implementation WDOfficeArt

- (void)propagateTextTypeToDrawables
{
  v5 = [(WDRun *)self paragraph];
  v3 = [v5 text];
  v4 = [v3 textType];

  v6 = [(WDOfficeArt *)self drawable];
  [(WDOfficeArt *)self setTextType:v4 recursivelyToDrawable:?];
}

- (WDOfficeArt)initWithParagraph:(id)a3
{
  v4.receiver = self;
  v4.super_class = WDOfficeArt;
  return [(WDRunWithCharacterProperties *)&v4 initWithParagraph:a3];
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
    v3 = [(OADDrawable *)self->mDrawable imageProperties];
    v4 = [v3 imageFill];
    v5 = [v4 blipRef];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setImageBlipRef:(id)a3
{
  v6 = a3;
  v4 = [[OADImage alloc] initWithBlipRef:v6];
  v5 = [(OADDrawable *)v4 createWordClientDataWithTextType:0];
  [v5 setDrawable:v4];
  [(WDOfficeArt *)self setDrawable:v4];
}

- (id)imageData
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [(OADDrawable *)self->mDrawable imageProperties];
    v4 = [v3 imageFill];
    v5 = [v4 blipRef];

    v6 = [v5 blip];
    v7 = [v6 mainSubBlip];
    v8 = [v7 data];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)imageName
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [(OADDrawable *)self->mDrawable imageProperties];
    v4 = [v3 imageFill];
    v5 = [v4 blipRef];

    v6 = [v5 name];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setTextType:(int)a3 recursivelyToDrawable:(id)a4
{
  v4 = *&a3;
  v11 = a4;
  v6 = [v11 clientData];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v6 setTextType:v4];
  }

  if ([v11 conformsToProtocol:&unk_286F8C860])
  {
    v7 = v11;
    v8 = [v7 childCount];
    if (v8)
    {
      for (i = 0; i != v8; ++i)
      {
        v10 = [v7 childAtIndex:i];
        [(WDOfficeArt *)self setTextType:v4 recursivelyToDrawable:v10];
      }
    }
  }
}

+ (int)textBoxTextTypeForRegularTextType:(int)a3
{
  if (a3 == 2)
  {
    v3 = 7;
  }

  else
  {
    v3 = -1;
  }

  if (a3)
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

- (void)checkForFloating:(id)a3
{
  v4 = a3;
  self->mFloating = 1;
  v12 = v4;
  v5 = [v4 runCount];
  v6 = v5;
  v7 = v5 - 3;
  if (v5 >= 3)
  {
    v8 = [v12 runAt:v5 - 1];
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
          v11 = [v10 string];
          v9 = [v12 runAt:v7];

          if (v9 && [v9 runType] == 7 && objc_msgSend(v9, "fieldMarkerType") == 19 && !objc_msgSend(v11, "compare:", @" SHAPE  \\* MERGEFORMAT "))
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