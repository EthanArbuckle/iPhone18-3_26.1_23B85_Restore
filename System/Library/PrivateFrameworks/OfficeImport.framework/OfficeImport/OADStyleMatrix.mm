@interface OADStyleMatrix
+ (id)objectInArray:(id)array withPossiblyOutOfRangeIndex:(unint64_t)index defaultValue:(id)value;
- (OADStyleMatrix)init;
- (id)bgFillAtIndex:(unint64_t)index;
- (id)description;
- (id)effectsAtIndex:(unint64_t)index;
- (id)effectsAtIndex:(unint64_t)index color:(id)color;
- (id)fillAtIndex:(unint64_t)index;
- (id)fillAtIndex:(unint64_t)index color:(id)color;
- (id)strokeAtIndex:(unint64_t)index;
- (id)strokeAtIndex:(unint64_t)index color:(id)color;
- (void)padArray:(id)array withContentsOfArray:(id)ofArray;
- (void)validateStyleMatrix;
@end

@implementation OADStyleMatrix

- (OADStyleMatrix)init
{
  v12.receiver = self;
  v12.super_class = OADStyleMatrix;
  v2 = [(OADStyleMatrix *)&v12 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    mFills = v2->mFills;
    v2->mFills = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    mStrokes = v2->mStrokes;
    v2->mStrokes = v5;

    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    mEffects = v2->mEffects;
    v2->mEffects = v7;

    v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
    mBgFills = v2->mBgFills;
    v2->mBgFills = v9;
  }

  return v2;
}

+ (id)objectInArray:(id)array withPossiblyOutOfRangeIndex:(unint64_t)index defaultValue:(id)value
{
  arrayCopy = array;
  valueCopy = value;
  if ([arrayCopy count] <= index)
  {
    v9 = valueCopy;
  }

  else
  {
    v9 = [arrayCopy objectAtIndex:index];
  }

  v10 = v9;

  return v10;
}

- (id)fillAtIndex:(unint64_t)index
{
  if (index)
  {
    if (index < 0x3E9)
    {
      mFills = self->mFills;
      v5 = index - 1;
      v6 = +[OADSolidFill whiteFill];
      v3 = [OADStyleMatrix objectInArray:mFills withPossiblyOutOfRangeIndex:v5 defaultValue:v6];
    }

    else
    {
      v3 = [(OADStyleMatrix *)self bgFillAtIndex:?];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)fillAtIndex:(unint64_t)index color:(id)color
{
  colorCopy = color;
  v7 = [(OADStyleMatrix *)self fillAtIndex:index];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 copy];

    if (colorCopy)
    {
      [v9 setStyleColor:colorCopy];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)strokeAtIndex:(unint64_t)index
{
  if (index)
  {
    indexCopy = index - 1000;
    if (index <= 0x3E8)
    {
      indexCopy = index;
    }

    mStrokes = self->mStrokes;
    v5 = indexCopy - 1;
    v6 = +[OADStroke blackStroke];
    v7 = [OADStyleMatrix objectInArray:mStrokes withPossiblyOutOfRangeIndex:v5 defaultValue:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)strokeAtIndex:(unint64_t)index color:(id)color
{
  colorCopy = color;
  v7 = [(OADStyleMatrix *)self strokeAtIndex:index];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 copy];

    if (colorCopy)
    {
      [v9 setStyleColor:colorCopy];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)effectsAtIndex:(unint64_t)index
{
  if (index)
  {
    indexCopy = index - 1000;
    if (index <= 0x3E8)
    {
      indexCopy = index;
    }

    mEffects = self->mEffects;
    v5 = indexCopy - 1;
    array = [MEMORY[0x277CBEA60] array];
    v7 = [OADStyleMatrix objectInArray:mEffects withPossiblyOutOfRangeIndex:v5 defaultValue:array];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)effectsAtIndex:(unint64_t)index color:(id)color
{
  colorCopy = color;
  v7 = [(OADStyleMatrix *)self effectsAtIndex:index];
  if (v7)
  {
    v8 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:v7 copyItems:1];

    if (colorCopy)
    {
      [v8 makeObjectsPerformSelector:sel_setStyleColor_ withObject:colorCopy];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)bgFillAtIndex:(unint64_t)index
{
  mBgFills = self->mBgFills;
  v4 = index - 1001;
  v5 = +[OADSolidFill whiteFill];
  v6 = [OADStyleMatrix objectInArray:mBgFills withPossiblyOutOfRangeIndex:v4 defaultValue:v5];

  return v6;
}

- (void)padArray:(id)array withContentsOfArray:(id)ofArray
{
  arrayCopy = array;
  ofArrayCopy = ofArray;
  v6 = [arrayCopy count];
  if (v6 < [ofArrayCopy count])
  {
    v7 = [ofArrayCopy subarrayWithRange:{objc_msgSend(arrayCopy, "count"), objc_msgSend(ofArrayCopy, "count") - objc_msgSend(arrayCopy, "count")}];
    [arrayCopy addObjectsFromArray:v7];
  }
}

- (void)validateStyleMatrix
{
  v10 = [TCXmlUtilities bundlePathForXmlResource:@"DefaultStyleMatrix"];
  v3 = sfaxmlParseFile([v10 fileSystemRepresentation]);
  v4 = OCXGetRootElement(v3);
  if (v4)
  {
    v5 = objc_opt_new();
    v6 = [[OAXDrawingState alloc] initWithClient:0];
    [OAXStyleMatrix readFromNode:v4 toStyleMatrix:v5 packagePart:0 drawingState:v6];
    xmlFreeDoc(v3);
    name = [(OADStyleMatrix *)self name];
    v8 = [name length];

    if (!v8)
    {
      name2 = [v5 name];
      [(OADStyleMatrix *)self setName:name2];
    }

    [(OADStyleMatrix *)self padArray:self->mFills withContentsOfArray:v5[2]];
    [(OADStyleMatrix *)self padArray:self->mStrokes withContentsOfArray:v5[3]];
    [(OADStyleMatrix *)self padArray:self->mEffects withContentsOfArray:v5[4]];
    [(OADStyleMatrix *)self padArray:self->mBgFills withContentsOfArray:v5[5]];
  }
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = OADStyleMatrix;
  v2 = [(OADStyleMatrix *)&v4 description];

  return v2;
}

@end