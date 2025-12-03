@interface EXReference
+ (BOOL)edAreaReferenceFromXmlReference:(id)reference areaReference:(EDAreaReference *)areaReference;
+ (id)edDiscontinousReferencesFromXmlRanges:(id)ranges;
+ (id)edReferenceFromXmlReference:(id)reference;
+ (id)numberToStringBase26:(int)base26;
+ (id)xmlRangesFromDiscontinuousReferences:(id)references;
+ (id)xmlReferenceFromAreaReference:(EDAreaReference *)reference;
+ (id)xmlReferenceFromEDReference:(id)reference;
@end

@implementation EXReference

+ (BOOL)edAreaReferenceFromXmlReference:(id)reference areaReference:(EDAreaReference *)areaReference
{
  referenceCopy = reference;
  if (referenceCopy)
  {
    [referenceCopy length];
    operator new[]();
  }

  return 0;
}

+ (id)xmlReferenceFromAreaReference:(EDAreaReference *)reference
{
  if (reference->firstColumn == -1)
  {
    v5 = 0;
  }

  else
  {
    v5 = [self numberToStringBase26:?];
  }

  if (reference->firstRow == -1)
  {
    stringValue = 0;
  }

  else
  {
    v6 = [MEMORY[0x277CCABB0] numberWithInt:(reference->firstRow + 1)];
    stringValue = [v6 stringValue];
  }

  lastColumn = reference->lastColumn;
  if (lastColumn < 0 || (lastRow = reference->lastRow, lastRow < 0) || reference->firstColumn == lastColumn && reference->firstRow == lastRow)
  {
    stringValue2 = 0;
LABEL_12:
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", v5, stringValue];
    goto LABEL_13;
  }

  v13 = [self numberToStringBase26:?];
  v14 = [MEMORY[0x277CCABB0] numberWithInt:(reference->lastRow + 1)];
  stringValue2 = [v14 stringValue];

  if (!v13)
  {
    goto LABEL_12;
  }

  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@:%@%@", v5, stringValue, v13, stringValue2];

LABEL_13:

  return v11;
}

+ (id)xmlReferenceFromEDReference:(id)reference
{
  referenceCopy = reference;
  v8[0] = [referenceCopy areaReference];
  v8[1] = v5;
  v6 = [self xmlReferenceFromAreaReference:v8];

  return v6;
}

+ (id)edReferenceFromXmlReference:(id)reference
{
  referenceCopy = reference;
  if ([self edAreaReferenceFromXmlReference:referenceCopy areaReference:v7])
  {
    v5 = [EDReference referenceWithAreaReference:v7];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)edDiscontinousReferencesFromXmlRanges:(id)ranges
{
  rangesCopy = ranges;
  if (rangesCopy)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v6 = [rangesCopy componentsSeparatedByString:@" "];
    for (i = 0; [v6 count] > i; ++i)
    {
      v8 = [v6 objectAtIndex:i];
      v9 = [self edAreaReferenceFromXmlReference:v8 areaReference:v12];

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

+ (id)xmlRangesFromDiscontinuousReferences:(id)references
{
  referencesCopy = references;
  v5 = 0;
  for (i = &stru_286EE1130; ; i = v11)
  {
    v7 = v5;
    if ([referencesCopy count] <= v5)
    {
      break;
    }

    v8 = [referencesCopy objectAtIndex:v5];
    v9 = [self xmlReferenceFromEDReference:v8];
    v10 = [(__CFString *)i stringByAppendingString:v9];

    v11 = [v10 stringByAppendingString:@" "];

    v5 = v7 + 1;
  }

  return i;
}

+ (id)numberToStringBase26:(int)base26
{
  v16 = *MEMORY[0x277D85DE8];
  v15 = 0;
  v14 = 0;
  if (base26 < 26)
  {
    LOWORD(v14) = base26 % 26 + 65;
    v11 = 1;
  }

  else
  {
    v3 = 0;
    do
    {
      v4 = base26 / 0x1Au - 1;
      *(&v14 + v3++) = base26 % 0x1Au + 65;
      v5 = base26 > 0x2BD;
      base26 = v4;
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