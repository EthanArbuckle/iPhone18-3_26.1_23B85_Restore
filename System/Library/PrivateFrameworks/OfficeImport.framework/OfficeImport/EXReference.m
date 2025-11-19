@interface EXReference
+ (BOOL)edAreaReferenceFromXmlReference:(id)a3 areaReference:(EDAreaReference *)a4;
+ (id)edDiscontinousReferencesFromXmlRanges:(id)a3;
+ (id)edReferenceFromXmlReference:(id)a3;
+ (id)numberToStringBase26:(int)a3;
+ (id)xmlRangesFromDiscontinuousReferences:(id)a3;
+ (id)xmlReferenceFromAreaReference:(EDAreaReference *)a3;
+ (id)xmlReferenceFromEDReference:(id)a3;
@end

@implementation EXReference

+ (BOOL)edAreaReferenceFromXmlReference:(id)a3 areaReference:(EDAreaReference *)a4
{
  v4 = a3;
  if (v4)
  {
    [v4 length];
    operator new[]();
  }

  return 0;
}

+ (id)xmlReferenceFromAreaReference:(EDAreaReference *)a3
{
  if (a3->firstColumn == -1)
  {
    v5 = 0;
  }

  else
  {
    v5 = [a1 numberToStringBase26:?];
  }

  if (a3->firstRow == -1)
  {
    v7 = 0;
  }

  else
  {
    v6 = [MEMORY[0x277CCABB0] numberWithInt:(a3->firstRow + 1)];
    v7 = [v6 stringValue];
  }

  lastColumn = a3->lastColumn;
  if (lastColumn < 0 || (lastRow = a3->lastRow, lastRow < 0) || a3->firstColumn == lastColumn && a3->firstRow == lastRow)
  {
    v10 = 0;
LABEL_12:
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", v5, v7];
    goto LABEL_13;
  }

  v13 = [a1 numberToStringBase26:?];
  v14 = [MEMORY[0x277CCABB0] numberWithInt:(a3->lastRow + 1)];
  v10 = [v14 stringValue];

  if (!v13)
  {
    goto LABEL_12;
  }

  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@:%@%@", v5, v7, v13, v10];

LABEL_13:

  return v11;
}

+ (id)xmlReferenceFromEDReference:(id)a3
{
  v4 = a3;
  v8[0] = [v4 areaReference];
  v8[1] = v5;
  v6 = [a1 xmlReferenceFromAreaReference:v8];

  return v6;
}

+ (id)edReferenceFromXmlReference:(id)a3
{
  v4 = a3;
  if ([a1 edAreaReferenceFromXmlReference:v4 areaReference:v7])
  {
    v5 = [EDReference referenceWithAreaReference:v7];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)edDiscontinousReferencesFromXmlRanges:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v6 = [v4 componentsSeparatedByString:@" "];
    for (i = 0; [v6 count] > i; ++i)
    {
      v8 = [v6 objectAtIndex:i];
      v9 = [a1 edAreaReferenceFromXmlReference:v8 areaReference:v12];

      if (v9)
      {
        v10 = [[EDReference alloc] initWithAreaReference:v12];
        [v5 addObject:v10];
      }
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)xmlRangesFromDiscontinuousReferences:(id)a3
{
  v4 = a3;
  v5 = 0;
  for (i = &stru_286EE1130; ; i = v11)
  {
    v7 = v5;
    if ([v4 count] <= v5)
    {
      break;
    }

    v8 = [v4 objectAtIndex:v5];
    v9 = [a1 xmlReferenceFromEDReference:v8];
    v10 = [(__CFString *)i stringByAppendingString:v9];

    v11 = [v10 stringByAppendingString:@" "];

    v5 = v7 + 1;
  }

  return i;
}

+ (id)numberToStringBase26:(int)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v15 = 0;
  v14 = 0;
  if (a3 < 26)
  {
    LOWORD(v14) = a3 % 26 + 65;
    v11 = 1;
  }

  else
  {
    v3 = 0;
    do
    {
      v4 = a3 / 0x1Au - 1;
      *(&v14 + v3++) = a3 % 0x1Au + 65;
      v5 = a3 > 0x2BD;
      a3 = v4;
    }

    while (v5);
    v6 = v3 + 1;
    v7 = &v14;
    *(&v14 + v3) = v4 - 26 * (((1321528399 * v4) >> 35) + ((1321528399 * v4) >> 63)) + 65;
    v8 = &v14 + v3;
    v9 = v6 >> 1;
    if (v9 <= 1)
    {
      v9 = 1;
    }

    do
    {
      v10 = *v7;
      *v7 = *v8;
      v7 = (v7 + 2);
      *v8-- = v10;
      --v9;
    }

    while (v9);
    v11 = v6;
  }

  v12 = [MEMORY[0x277CCACA8] stringWithCharacters:&v14 length:v11];

  return v12;
}

@end