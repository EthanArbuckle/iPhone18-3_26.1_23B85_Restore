@interface OADStyleMatrix
+ (id)objectInArray:(id)a3 withPossiblyOutOfRangeIndex:(unint64_t)a4 defaultValue:(id)a5;
- (OADStyleMatrix)init;
- (id)bgFillAtIndex:(unint64_t)a3;
- (id)description;
- (id)effectsAtIndex:(unint64_t)a3;
- (id)effectsAtIndex:(unint64_t)a3 color:(id)a4;
- (id)fillAtIndex:(unint64_t)a3;
- (id)fillAtIndex:(unint64_t)a3 color:(id)a4;
- (id)strokeAtIndex:(unint64_t)a3;
- (id)strokeAtIndex:(unint64_t)a3 color:(id)a4;
- (void)padArray:(id)a3 withContentsOfArray:(id)a4;
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

+ (id)objectInArray:(id)a3 withPossiblyOutOfRangeIndex:(unint64_t)a4 defaultValue:(id)a5
{
  v7 = a3;
  v8 = a5;
  if ([v7 count] <= a4)
  {
    v9 = v8;
  }

  else
  {
    v9 = [v7 objectAtIndex:a4];
  }

  v10 = v9;

  return v10;
}

- (id)fillAtIndex:(unint64_t)a3
{
  if (a3)
  {
    if (a3 < 0x3E9)
    {
      mFills = self->mFills;
      v5 = a3 - 1;
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

- (id)fillAtIndex:(unint64_t)a3 color:(id)a4
{
  v6 = a4;
  v7 = [(OADStyleMatrix *)self fillAtIndex:a3];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 copy];

    if (v6)
    {
      [v9 setStyleColor:v6];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)strokeAtIndex:(unint64_t)a3
{
  if (a3)
  {
    v3 = a3 - 1000;
    if (a3 <= 0x3E8)
    {
      v3 = a3;
    }

    mStrokes = self->mStrokes;
    v5 = v3 - 1;
    v6 = +[OADStroke blackStroke];
    v7 = [OADStyleMatrix objectInArray:mStrokes withPossiblyOutOfRangeIndex:v5 defaultValue:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)strokeAtIndex:(unint64_t)a3 color:(id)a4
{
  v6 = a4;
  v7 = [(OADStyleMatrix *)self strokeAtIndex:a3];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 copy];

    if (v6)
    {
      [v9 setStyleColor:v6];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)effectsAtIndex:(unint64_t)a3
{
  if (a3)
  {
    v3 = a3 - 1000;
    if (a3 <= 0x3E8)
    {
      v3 = a3;
    }

    mEffects = self->mEffects;
    v5 = v3 - 1;
    v6 = [MEMORY[0x277CBEA60] array];
    v7 = [OADStyleMatrix objectInArray:mEffects withPossiblyOutOfRangeIndex:v5 defaultValue:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)effectsAtIndex:(unint64_t)a3 color:(id)a4
{
  v6 = a4;
  v7 = [(OADStyleMatrix *)self effectsAtIndex:a3];
  if (v7)
  {
    v8 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:v7 copyItems:1];

    if (v6)
    {
      [v8 makeObjectsPerformSelector:sel_setStyleColor_ withObject:v6];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)bgFillAtIndex:(unint64_t)a3
{
  mBgFills = self->mBgFills;
  v4 = a3 - 1001;
  v5 = +[OADSolidFill whiteFill];
  v6 = [OADStyleMatrix objectInArray:mBgFills withPossiblyOutOfRangeIndex:v4 defaultValue:v5];

  return v6;
}

- (void)padArray:(id)a3 withContentsOfArray:(id)a4
{
  v8 = a3;
  v5 = a4;
  v6 = [v8 count];
  if (v6 < [v5 count])
  {
    v7 = [v5 subarrayWithRange:{objc_msgSend(v8, "count"), objc_msgSend(v5, "count") - objc_msgSend(v8, "count")}];
    [v8 addObjectsFromArray:v7];
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
    v7 = [(OADStyleMatrix *)self name];
    v8 = [v7 length];

    if (!v8)
    {
      v9 = [v5 name];
      [(OADStyleMatrix *)self setName:v9];
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