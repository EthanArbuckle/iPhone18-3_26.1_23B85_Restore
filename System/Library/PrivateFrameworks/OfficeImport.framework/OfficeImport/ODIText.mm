@interface ODIText
+ (id)baseListStyleForPoint:(id)a3 shape:(id)a4 isCentered:(BOOL)a5 state:(id)a6;
+ (void)addTextFromPoint:(id)a3 level:(unsigned int)a4 includeChildren:(BOOL)a5 toShape:(id)a6 baseListStyle:(id)a7 state:(id)a8;
+ (void)mapTextFromPoint:(id)a3 toShape:(id)a4 isCenteredHorizontally:(BOOL)a5 isCenteredVertically:(BOOL)a6 includeChildren:(BOOL)a7 state:(id)a8;
@end

@implementation ODIText

+ (void)mapTextFromPoint:(id)a3 toShape:(id)a4 isCenteredHorizontally:(BOOL)a5 isCenteredVertically:(BOOL)a6 includeChildren:(BOOL)a7 state:(id)a8
{
  v9 = a7;
  v10 = a6;
  v11 = a5;
  v36 = a3;
  v14 = a4;
  v15 = a8;
  v16 = [v36 text];
  v17 = [v16 properties];
  [v17 setMergedWithParent:0];
  if (([v17 hasTextAnchorType] & 1) == 0)
  {
    if (v10)
    {
      v18 = [v36 children];
      v19 = [v18 count] == 0;
    }

    else
    {
      v19 = 0;
    }

    [v17 setTextAnchorType:v19];
  }

  v20 = [v14 textBody];
  [v20 setProperties:v17];
  v21 = [a1 baseListStyleForPoint:v36 shape:v14 isCentered:v11 state:v15];
  [a1 addTextFromPoint:v36 level:0 includeChildren:v9 toShape:v14 baseListStyle:v21 state:v15];
  [v16 setProperties:0];
  v22 = [v14 drawableProperties];
  v23 = [v22 orientedBounds];

  [v23 rotation];
  v25 = v24;
  [v23 flipY];
  TSUNormalizeAngleInDegrees(v25);
  *&v26 = v26;
  TSUNormalizeAngleInDegrees((*&v26 + 45.0));
  v28 = v27 / 90.0;
  v29 = vcvtms_s32_f32(v28);
  v30 = floorf(v28);
  v31 = (v29 + 3) & 3;
  if ((v29 + 3) <= 0)
  {
    v31 = -(-(v29 + 3) & 3);
  }

  if (v30 != v28)
  {
    v31 = v29;
  }

  if (v29)
  {
    v32 = v29;
  }

  else
  {
    v32 = v31;
  }

  v33 = [v20 properties];
  *&v34 = (180 * ((v32 + (v32 >> 31)) >> 1));
  [v33 setRotation:v34];

  v35 = [v20 properties];
  [v35 setFlowType:((v32 << 31) >> 31) & 3];
}

+ (id)baseListStyleForPoint:(id)a3 shape:(id)a4 isCentered:(BOOL)a5 state:(id)a6
{
  v6 = a5;
  v8 = a3;
  v9 = a4;
  v10 = objc_alloc_init(OADTextListStyle);
  v11 = [OAITOrientedBounds absoluteOrientedBoundsOfDrawable:v9];
  [v11 bounds];
  v13 = v12;
  v15 = v14;

  if (v13 >= v15)
  {
    v16 = v15;
  }

  else
  {
    v16 = v13;
  }

  v17 = v16 * 0.200000003;
  if (v17 >= 9.0)
  {
    v18 = v17;
  }

  else
  {
    v18 = 9.0;
  }

  if (v6)
  {
    v19 = [v8 children];
    v20 = [v19 count] == 0;
  }

  else
  {
    v20 = 0;
  }

  v31 = 8226;
  v21 = [MEMORY[0x277CCACA8] stringWithCharacters:&v31 length:1];
  v22 = 0;
  v23 = fminf(v18, 100.0);
  v24 = -1;
  do
  {
    v25 = [(OADTextListStyle *)v10 propertiesForListLevel:v22];
    *&v26 = v23;
    [v25 setSize:v26];
    [v25 setAlign:v20];
    if (v22)
    {
      v27 = v23 * 0.8 * v24;
      *&v27 = v27;
      [v25 setLeftMargin:v27];
      *&v28 = v23;
      [v25 setIndent:v28];
      v29 = [[OADCharacterBulletProperties alloc] initWithBullet:v21];
      [v25 setBulletProperties:v29];
    }

    ++v22;
    ++v24;
  }

  while (v22 != 9);

  return v10;
}

+ (void)addTextFromPoint:(id)a3 level:(unsigned int)a4 includeChildren:(BOOL)a5 toShape:(id)a6 baseListStyle:(id)a7 state:(id)a8
{
  v33 = a5;
  v35 = a3;
  v37 = a6;
  v12 = a7;
  v13 = a8;
  v14 = [v35 text];
  if (v14)
  {
    v15 = [v13 textStyle];
    [v15 applyToTextBody:v14];

    v34 = [v14 paragraphCount];
    v16 = [v14 textListStyle];
    if (v16 || ([v14 overrideTextListStyle], (v16 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v17 = v14;
      v18 = 0;
      v19 = a4;
      do
      {
        v20 = [v16 propertiesForListLevel:v18];
        if (v19 >= 8)
        {
          v21 = 8;
        }

        else
        {
          v21 = v19;
        }

        v22 = [v12 propertiesForListLevel:v21];
        [v20 setParent:v22];

        ++v18;
        ++v19;
      }

      while (v18 != 9);
      v23 = v16;
      v14 = v17;
    }

    else if (v34)
    {
      for (i = 0; i != v34; ++i)
      {
        v28 = [v14 paragraphAtIndex:i];
        v29 = [v28 properties];
        v30 = [v29 level] + a4;
        if (v30 >= 8)
        {
          v31 = 8;
        }

        else
        {
          v31 = v30;
        }

        v32 = [v12 propertiesForListLevel:v31];
        [v29 setParent:v32];
      }

      v23 = 0;
    }

    else
    {
      v23 = 0;
    }

    v24 = [v37 textBody];
    [v24 addParagraphsFromTextBody:v14];

    if (v33)
    {
      v25 = [v35 children];
      v26 = [v25 objectEnumerator];
      while (1)
      {

        v25 = [v26 nextObject];
        if (!v25)
        {
          break;
        }

        [a1 addTextFromPoint:v25 level:a4 + 1 includeChildren:1 toShape:v37 baseListStyle:v12 state:v13];
      }
    }
  }
}

@end