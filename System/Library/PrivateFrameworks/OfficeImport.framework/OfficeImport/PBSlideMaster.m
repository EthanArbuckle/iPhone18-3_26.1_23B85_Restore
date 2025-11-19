@interface PBSlideMaster
+ (id)createMasterStyleMap:(id)a3 state:(id)a4;
+ (id)textBodyForPlaceholderType:(int)a3 slideLayout:(id)a4;
+ (int)textTypeFor:(int)a3 placeholderType:(int)a4;
+ (void)flattenBaseMasterStyleType:(int)a3 masterStyleMap:(id)a4;
+ (void)flattenMasterStyleType:(int)a3 baseType:(int)a4 masterStyleMap:(id)a5;
+ (void)flattenPlaceholderTextStylesIntoLayout:(id)a3 layoutType:(int)a4 masterStyleMap:(id)a5;
+ (void)flattenTextStyle:(id)a3 intoTextBox:(id)a4;
+ (void)padMissingLevels:(id)a3;
+ (void)readSlideMasterColorScheme:(id)a3 slideHolder:(id)a4 state:(id)a5;
+ (void)readSlideMasterName:(id)a3 slideHolder:(id)a4 state:(id)a5;
+ (void)readSlideMasterTextStyles:(id)a3 slideHolder:(id)a4 state:(id)a5;
+ (void)setCannedOtherTextListStyle:(id)a3;
+ (void)setFont:(id)a3 fromCharacterProperties:(id)a4;
+ (void)setSlideMasterTextStyles:(id)a3 state:(id)a4;
@end

@implementation PBSlideMaster

+ (void)readSlideMasterName:(id)a3 slideHolder:(id)a4 state:(id)a5
{
  v13 = a3;
  v7 = a4;
  v8 = a5;
  v9 = [v7 childOfType:4026 instance:2];
  v10 = v9;
  if (v9)
    v11 = {;
    v12 = [v13 theme];
    [v12 setName:v11];
  }
}

+ (void)flattenBaseMasterStyleType:(int)a3 masterStyleMap:(id)a4
{
  v14 = a4;
  v5 = a3;
  v6 = [MEMORY[0x277CCABB0] numberWithLong:a3];
  v7 = [v14 objectForKey:v6];

  v8 = objc_alloc_init(OADTextListStyle);
  for (i = 0; i != 9; ++i)
  {
    for (j = i; j != 9; ++j)
    {
      v11 = [(OADTextListStyle *)v8 propertiesForListLevel:j];
      v12 = [v7 propertiesForListLevel:i];
      [v11 overrideWithProperties:v12];
    }
  }

  v13 = [MEMORY[0x277CCABB0] numberWithLong:v5];
  [v14 setObject:v8 forKey:v13];
}

+ (void)flattenMasterStyleType:(int)a3 baseType:(int)a4 masterStyleMap:(id)a5
{
  v14 = a5;
  v7 = a3;
  v8 = [MEMORY[0x277CCABB0] numberWithLong:a3];
  v9 = [v14 objectForKey:v8];

  if (v9)
  {
    v10 = [MEMORY[0x277CCABB0] numberWithLong:a4];
    v11 = [v14 objectForKey:v10];

    v12 = objc_alloc_init(OADTextListStyle);
    [(OADTextListStyle *)v12 overrideWithTextStyle:v11];
    [(OADTextListStyle *)v12 overrideWithTextStyle:v9];
    v13 = [MEMORY[0x277CCABB0] numberWithLong:v7];
    [v14 setObject:v12 forKey:v13];
  }
}

+ (id)createMasterStyleMap:(id)a3 state:(id)a4
{
  v5 = a3;
  v6 = a4;
  v19 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v7 = [v5 indexOfFirstChildOfType:4003 afterIndex:-1];
  while (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = [v5 childAt:v7];
    v9 = v8;
    if (v8)
    {
      v10 = [v8 eshObject];
      {

        v18 = [TCMessageException exceptionWithMessage:TCUnknownProblemMessage];
        objc_exception_throw(v18);
      }

      v12 = v11;
      Instance = EshRecord::getInstance(v11);
      if (Instance > 8)
      {
        Instance = 0xFFFFFFFFLL;
      }

      else
      {
        *[v6 currentSourceMasterStyleInfoOfType:Instance] = v12;
      }

      if (PptTextHeaderAtom::isDerivedType(Instance))
      {
        v14 = *[v6 currentSourceMasterStyleInfoOfType:PptTextHeaderAtom::getBaseType(Instance)];
        TCVerifyInputMeetsCondition(v14 != 0);
      }

      else
      {
        v14 = 0;
      }

      if (Instance != -1)
      {
        v15 = objc_alloc_init(OADTextListStyle);
        +[PBMasterStyle readMasterStyleAtom:baseMasterStyleAtom:masterBulletStyleAtom:textListStyle:state:](PBMasterStyle, "readMasterStyleAtom:baseMasterStyleAtom:masterBulletStyleAtom:textListStyle:state:", *[v6 currentSourceMasterStyleInfoOfType:Instance], v14, *(objc_msgSend(v6, "currentSourceMasterStyleInfoOfType:", Instance) + 8), v15, v6);
        v16 = [MEMORY[0x277CCABB0] numberWithLong:Instance];
        [v19 setObject:v15 forKey:v16];
      }
    }

    v7 = [v5 indexOfFirstChildOfType:4003 afterIndex:v7];
  }

  return v19;
}

+ (void)padMissingLevels:(id)a3
{
  v16 = a3;
  v3 = [v16 allKeys];
  for (i = 0; ; i = v5 + 1)
  {
    v5 = i;
    if ([v3 count] <= i)
    {
      break;
    }

    v6 = [v3 objectAtIndex:i];
    v7 = [v16 objectForKey:v6];
    v8 = [v6 longValue];
    if (v8 <= 7 && ((1 << v8) & 0xA2) != 0)
    {
      v9 = 4;
    }

    else
    {
      v9 = 4 * (v8 == 8);
    }

    v10 = [v7 propertiesForListLevel:v9];
    [v10 leftMargin];
    v12 = v11;
    v13 = v9 | 1;
    do
    {
      v14 = [v7 propertiesForListLevel:v13];
      [v14 overrideWithProperties:v10];
      if (v13 >= 5)
      {
        HIDWORD(v15) = 1078067200;
        v12 = v12 + 36.0;
        *&v15 = v12;
        [v14 setLeftMargin:v15];
      }

      ++v13;
    }

    while (v13 != 9);
  }
}

+ (void)setCannedOtherTextListStyle:(id)a3
{
  v11 = a3;
  v3 = [OADSchemeColor schemeColorWithIndex:1];
  v4 = objc_alloc_init(OADSolidFill);
  [(OADSolidFill *)v4 setColor:v3];
  v5 = 0;
  for (i = 0; i != 9; ++i)
  {
    v7 = [v11 propertiesForListLevel:i];
    [v7 setLevel:i];
    *&v8 = v5;
    [v7 setLeftMargin:v8];
    LODWORD(v9) = 1108344832;
    [v7 setDefaultTab:v9];
    [v7 setIsRightToLeft:0];
    [v7 setIsLatinLineBreak:0];
    [v7 setAlign:0];
    LODWORD(v10) = 18.0;
    [v7 setSize:v10];
    [v7 setLatinFont:@"+mn-lt"];
    [v7 setEastAsianFont:@"+mn-ea"];
    [v7 setBidiFont:@"+mn-cs"];
    [v7 setFill:v4];

    v5 += 36;
  }
}

+ (void)setFont:(id)a3 fromCharacterProperties:(id)a4
{
  v17 = a3;
  v5 = a4;
  if ([v5 hasLatinFont] && (objc_msgSend(v5, "latinFont"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "length"), v6, v7))
  {
    v8 = [v5 latinFont];
    [v17 setLatinFont:v8];
  }

  else
  {
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[PBSlideMaster setFont:fromCharacterProperties:]"];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/compatibility/PowerPoint/Binary/Mapper/PBSlideMaster.mm"];
    [OITSUAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:244 isFatal:0 description:"The latin typeface is undefined in a master character style"];

    +[OITSUAssertionHandler logBacktraceThrottled];
  }

  if ([v5 hasEastAsianFont])
  {
    v11 = [v5 eastAsianFont];
    v12 = [v11 length];

    if (v12)
    {
      v13 = [v5 eastAsianFont];
      [v17 setEastAsianFont:v13];
    }
  }

  if ([v5 hasBidiFont])
  {
    v14 = [v5 bidiFont];
    v15 = [v14 length];

    if (v15)
    {
      v16 = [v5 bidiFont];
      [v17 setComplexScriptFont:v16];
    }
  }
}

+ (void)readSlideMasterTextStyles:(id)a3 slideHolder:(id)a4 state:(id)a5
{
  v11 = a3;
  v8 = a4;
  v9 = a5;
  [PBProgTag readBulletStylesFromMainMaster:v8 state:v9];
  v10 = [a1 createMasterStyleMap:v8 state:v9];
  [a1 padMissingLevels:v10];
  [v9 setMasterStyles:v10 slideMaster:v11];
}

+ (void)readSlideMasterColorScheme:(id)a3 slideHolder:(id)a4 state:(id)a5
{
  v14 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v14 theme];
  v11 = [v10 baseStyles];
  v12 = [v11 colorScheme];

  v13 = [v14 colorMap];
  [a1 readColorScheme:v8 colorScheme:v12 colorMap:v13 state:v9];
}

+ (void)setSlideMasterTextStyles:(id)a3 state:(id)a4
{
  v22 = a3;
  v6 = [a4 masterStyles:?];
  v7 = [v22 theme];
  v8 = [v7 baseStyles];
  v9 = [v8 fontScheme];

  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:0];
  v11 = [v6 objectForKey:v10];

  [v22 setTitleTextStyle:v11];
  v12 = [v9 majorFont];
  v13 = [v11 propertiesForListLevel:0];
  [a1 setFont:v12 fromCharacterProperties:v13];

  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:1];
  v15 = [v6 objectForKey:v14];

  [v22 setBodyTextStyle:v15];
  v16 = [v9 minorFont];
  v17 = [v15 propertiesForListLevel:0];
  [a1 setFont:v16 fromCharacterProperties:v17];

  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:7];
  v19 = [v6 objectForKey:v18];

  [v22 setOtherTextStyle:v19];
  v20 = [v9 minorFont];
  v21 = [v19 propertiesForListLevel:1];
  [a1 setFont:v20 fromCharacterProperties:v21];
}

+ (void)flattenPlaceholderTextStylesIntoLayout:(id)a3 layoutType:(int)a4 masterStyleMap:(id)a5
{
  v6 = *&a4;
  v17 = a3;
  v8 = a5;
  v9 = [a1 textBodyForPlaceholderType:0 slideLayout:v17];
  v10 = [a1 textTypeFor:v6 placeholderType:0];
  v11 = [MEMORY[0x277CCABB0] numberWithLong:v10];
  v12 = [v8 objectForKey:v11];
  [a1 flattenTextStyle:v12 intoTextBox:v9];

  v13 = [a1 textBodyForPlaceholderType:1 slideLayout:v17];
  v14 = [a1 textTypeFor:v6 placeholderType:1];
  v15 = [MEMORY[0x277CCABB0] numberWithLong:v14];
  v16 = [v8 objectForKey:v15];
  [a1 flattenTextStyle:v16 intoTextBox:v13];
}

+ (int)textTypeFor:(int)a3 placeholderType:(int)a4
{
  if ((a3 & 0xFFFFFFFD) != 0)
  {
    v4 = 1;
  }

  else
  {
    v4 = 5;
  }

  if ((a3 & 0xFFFFFFFD) != 0)
  {
    v5 = 0;
  }

  else
  {
    v5 = 6;
  }

  if (a4)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  if (a4 == 1)
  {
    return v4;
  }

  else
  {
    return v6;
  }
}

+ (id)textBodyForPlaceholderType:(int)a3 slideLayout:(id)a4
{
  v4 = *&a3;
  v5 = a4;
  v6 = v5;
  if (v4 != -1 && (([v5 placeholderWithType:v4 placeholderTypeIndex:0 overrideIndex:1], (v7 = objc_claimAutoreleasedReturnValue()) != 0) || (objc_msgSend(v6, "placeholderWithType:placeholderTypeIndex:useBaseTypeMatch:overrideIndex:", v4, 0, 1, 1), (v7 = objc_claimAutoreleasedReturnValue()) != 0)))
  {
    v8 = [v7 textBody];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (void)flattenTextStyle:(id)a3 intoTextBox:(id)a4
{
  v6 = a3;
  v5 = [a4 overrideTextListStyle];
  [v5 overrideWithTextStyle:v6];
}

@end