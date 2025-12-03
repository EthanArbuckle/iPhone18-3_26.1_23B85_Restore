@interface ODIText
+ (id)baseListStyleForPoint:(id)point shape:(id)shape isCentered:(BOOL)centered state:(id)state;
+ (void)addTextFromPoint:(id)point level:(unsigned int)level includeChildren:(BOOL)children toShape:(id)shape baseListStyle:(id)style state:(id)state;
+ (void)mapTextFromPoint:(id)point toShape:(id)shape isCenteredHorizontally:(BOOL)horizontally isCenteredVertically:(BOOL)vertically includeChildren:(BOOL)children state:(id)state;
@end

@implementation ODIText

+ (void)mapTextFromPoint:(id)point toShape:(id)shape isCenteredHorizontally:(BOOL)horizontally isCenteredVertically:(BOOL)vertically includeChildren:(BOOL)children state:(id)state
{
  childrenCopy = children;
  verticallyCopy = vertically;
  horizontallyCopy = horizontally;
  pointCopy = point;
  shapeCopy = shape;
  stateCopy = state;
  text = [pointCopy text];
  properties = [text properties];
  [properties setMergedWithParent:0];
  if (([properties hasTextAnchorType] & 1) == 0)
  {
    if (verticallyCopy)
    {
      children = [pointCopy children];
      v19 = [children count] == 0;
    }

    else
    {
      v19 = 0;
    }

    [properties setTextAnchorType:v19];
  }

  textBody = [shapeCopy textBody];
  [textBody setProperties:properties];
  v21 = [self baseListStyleForPoint:pointCopy shape:shapeCopy isCentered:horizontallyCopy state:stateCopy];
  [self addTextFromPoint:pointCopy level:0 includeChildren:childrenCopy toShape:shapeCopy baseListStyle:v21 state:stateCopy];
  [text setProperties:0];
  drawableProperties = [shapeCopy drawableProperties];
  orientedBounds = [drawableProperties orientedBounds];

  [orientedBounds rotation];
  v25 = v24;
  [orientedBounds flipY];
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

  properties2 = [textBody properties];
  *&v34 = (180 * ((v32 + (v32 >> 31)) >> 1));
  [properties2 setRotation:v34];

  properties3 = [textBody properties];
  [properties3 setFlowType:((v32 << 31) >> 31) & 3];
}

+ (id)baseListStyleForPoint:(id)point shape:(id)shape isCentered:(BOOL)centered state:(id)state
{
  centeredCopy = centered;
  pointCopy = point;
  shapeCopy = shape;
  v10 = objc_alloc_init(OADTextListStyle);
  v11 = [OAITOrientedBounds absoluteOrientedBoundsOfDrawable:shapeCopy];
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

  if (centeredCopy)
  {
    children = [pointCopy children];
    v20 = [children count] == 0;
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

+ (void)addTextFromPoint:(id)point level:(unsigned int)level includeChildren:(BOOL)children toShape:(id)shape baseListStyle:(id)style state:(id)state
{
  childrenCopy = children;
  pointCopy = point;
  shapeCopy = shape;
  styleCopy = style;
  stateCopy = state;
  text = [pointCopy text];
  if (text)
  {
    textStyle = [stateCopy textStyle];
    [textStyle applyToTextBody:text];

    paragraphCount = [text paragraphCount];
    textListStyle = [text textListStyle];
    if (textListStyle || ([text overrideTextListStyle], (textListStyle = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v17 = text;
      v18 = 0;
      levelCopy = level;
      do
      {
        v20 = [textListStyle propertiesForListLevel:v18];
        if (levelCopy >= 8)
        {
          v21 = 8;
        }

        else
        {
          v21 = levelCopy;
        }

        v22 = [styleCopy propertiesForListLevel:v21];
        [v20 setParent:v22];

        ++v18;
        ++levelCopy;
      }

      while (v18 != 9);
      v23 = textListStyle;
      text = v17;
    }

    else if (paragraphCount)
    {
      for (i = 0; i != paragraphCount; ++i)
      {
        v28 = [text paragraphAtIndex:i];
        properties = [v28 properties];
        v30 = [properties level] + level;
        if (v30 >= 8)
        {
          v31 = 8;
        }

        else
        {
          v31 = v30;
        }

        v32 = [styleCopy propertiesForListLevel:v31];
        [properties setParent:v32];
      }

      v23 = 0;
    }

    else
    {
      v23 = 0;
    }

    textBody = [shapeCopy textBody];
    [textBody addParagraphsFromTextBody:text];

    if (childrenCopy)
    {
      children = [pointCopy children];
      objectEnumerator = [children objectEnumerator];
      while (1)
      {

        children = [objectEnumerator nextObject];
        if (!children)
        {
          break;
        }

        [self addTextFromPoint:children level:level + 1 includeChildren:1 toShape:shapeCopy baseListStyle:styleCopy state:stateCopy];
      }
    }
  }
}

@end