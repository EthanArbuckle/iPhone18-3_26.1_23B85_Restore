@interface PBSlideMaster
+ (id)createMasterStyleMap:(id)map state:(id)state;
+ (id)textBodyForPlaceholderType:(int)type slideLayout:(id)layout;
+ (int)textTypeFor:(int)for placeholderType:(int)type;
+ (void)flattenBaseMasterStyleType:(int)type masterStyleMap:(id)map;
+ (void)flattenMasterStyleType:(int)type baseType:(int)baseType masterStyleMap:(id)map;
+ (void)flattenPlaceholderTextStylesIntoLayout:(id)layout layoutType:(int)type masterStyleMap:(id)map;
+ (void)flattenTextStyle:(id)style intoTextBox:(id)box;
+ (void)padMissingLevels:(id)levels;
+ (void)readSlideMasterColorScheme:(id)scheme slideHolder:(id)holder state:(id)state;
+ (void)readSlideMasterName:(id)name slideHolder:(id)holder state:(id)state;
+ (void)readSlideMasterTextStyles:(id)styles slideHolder:(id)holder state:(id)state;
+ (void)setCannedOtherTextListStyle:(id)style;
+ (void)setFont:(id)font fromCharacterProperties:(id)properties;
+ (void)setSlideMasterTextStyles:(id)styles state:(id)state;
@end

@implementation PBSlideMaster

+ (void)readSlideMasterName:(id)name slideHolder:(id)holder state:(id)state
{
  nameCopy = name;
  holderCopy = holder;
  stateCopy = state;
  v9 = [holderCopy childOfType:4026 instance:2];
  v10 = v9;
  if (v9)
    v11 = {;
    theme = [nameCopy theme];
    [theme setName:v11];
  }
}

+ (void)flattenBaseMasterStyleType:(int)type masterStyleMap:(id)map
{
  mapCopy = map;
  typeCopy = type;
  v6 = [MEMORY[0x277CCABB0] numberWithLong:type];
  v7 = [mapCopy objectForKey:v6];

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

  v13 = [MEMORY[0x277CCABB0] numberWithLong:typeCopy];
  [mapCopy setObject:v8 forKey:v13];
}

+ (void)flattenMasterStyleType:(int)type baseType:(int)baseType masterStyleMap:(id)map
{
  mapCopy = map;
  typeCopy = type;
  v8 = [MEMORY[0x277CCABB0] numberWithLong:type];
  v9 = [mapCopy objectForKey:v8];

  if (v9)
  {
    v10 = [MEMORY[0x277CCABB0] numberWithLong:baseType];
    v11 = [mapCopy objectForKey:v10];

    v12 = objc_alloc_init(OADTextListStyle);
    [(OADTextListStyle *)v12 overrideWithTextStyle:v11];
    [(OADTextListStyle *)v12 overrideWithTextStyle:v9];
    v13 = [MEMORY[0x277CCABB0] numberWithLong:typeCopy];
    [mapCopy setObject:v12 forKey:v13];
  }
}

+ (id)createMasterStyleMap:(id)map state:(id)state
{
  mapCopy = map;
  stateCopy = state;
  v19 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v7 = [mapCopy indexOfFirstChildOfType:4003 afterIndex:-1];
  while (v7 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = [mapCopy childAt:v7];
    v9 = v8;
    if (v8)
    {
      eshObject = [v8 eshObject];
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
        *[stateCopy currentSourceMasterStyleInfoOfType:Instance] = v12;
      }

      if (PptTextHeaderAtom::isDerivedType(Instance))
      {
        v14 = *[stateCopy currentSourceMasterStyleInfoOfType:PptTextHeaderAtom::getBaseType(Instance)];
        TCVerifyInputMeetsCondition(v14 != 0);
      }

      else
      {
        v14 = 0;
      }

      if (Instance != -1)
      {
        v15 = objc_alloc_init(OADTextListStyle);
        +[PBMasterStyle readMasterStyleAtom:baseMasterStyleAtom:masterBulletStyleAtom:textListStyle:state:](PBMasterStyle, "readMasterStyleAtom:baseMasterStyleAtom:masterBulletStyleAtom:textListStyle:state:", *[stateCopy currentSourceMasterStyleInfoOfType:Instance], v14, *(objc_msgSend(stateCopy, "currentSourceMasterStyleInfoOfType:", Instance) + 8), v15, stateCopy);
        v16 = [MEMORY[0x277CCABB0] numberWithLong:Instance];
        [v19 setObject:v15 forKey:v16];
      }
    }

    v7 = [mapCopy indexOfFirstChildOfType:4003 afterIndex:v7];
  }

  return v19;
}

+ (void)padMissingLevels:(id)levels
{
  levelsCopy = levels;
  allKeys = [levelsCopy allKeys];
  for (i = 0; ; i = v5 + 1)
  {
    v5 = i;
    if ([allKeys count] <= i)
    {
      break;
    }

    v6 = [allKeys objectAtIndex:i];
    v7 = [levelsCopy objectForKey:v6];
    longValue = [v6 longValue];
    if (longValue <= 7 && ((1 << longValue) & 0xA2) != 0)
    {
      v9 = 4;
    }

    else
    {
      v9 = 4 * (longValue == 8);
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

+ (void)setCannedOtherTextListStyle:(id)style
{
  styleCopy = style;
  v3 = [OADSchemeColor schemeColorWithIndex:1];
  v4 = objc_alloc_init(OADSolidFill);
  [(OADSolidFill *)v4 setColor:v3];
  v5 = 0;
  for (i = 0; i != 9; ++i)
  {
    v7 = [styleCopy propertiesForListLevel:i];
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

+ (void)setFont:(id)font fromCharacterProperties:(id)properties
{
  fontCopy = font;
  propertiesCopy = properties;
  if ([propertiesCopy hasLatinFont] && (objc_msgSend(propertiesCopy, "latinFont"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "length"), v6, v7))
  {
    latinFont = [propertiesCopy latinFont];
    [fontCopy setLatinFont:latinFont];
  }

  else
  {
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[PBSlideMaster setFont:fromCharacterProperties:]"];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/OfficeImport/OfficeParser/compatibility/PowerPoint/Binary/Mapper/PBSlideMaster.mm"];
    [OITSUAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:244 isFatal:0 description:"The latin typeface is undefined in a master character style"];

    +[OITSUAssertionHandler logBacktraceThrottled];
  }

  if ([propertiesCopy hasEastAsianFont])
  {
    eastAsianFont = [propertiesCopy eastAsianFont];
    v12 = [eastAsianFont length];

    if (v12)
    {
      eastAsianFont2 = [propertiesCopy eastAsianFont];
      [fontCopy setEastAsianFont:eastAsianFont2];
    }
  }

  if ([propertiesCopy hasBidiFont])
  {
    bidiFont = [propertiesCopy bidiFont];
    v15 = [bidiFont length];

    if (v15)
    {
      bidiFont2 = [propertiesCopy bidiFont];
      [fontCopy setComplexScriptFont:bidiFont2];
    }
  }
}

+ (void)readSlideMasterTextStyles:(id)styles slideHolder:(id)holder state:(id)state
{
  stylesCopy = styles;
  holderCopy = holder;
  stateCopy = state;
  [PBProgTag readBulletStylesFromMainMaster:holderCopy state:stateCopy];
  v10 = [self createMasterStyleMap:holderCopy state:stateCopy];
  [self padMissingLevels:v10];
  [stateCopy setMasterStyles:v10 slideMaster:stylesCopy];
}

+ (void)readSlideMasterColorScheme:(id)scheme slideHolder:(id)holder state:(id)state
{
  schemeCopy = scheme;
  holderCopy = holder;
  stateCopy = state;
  theme = [schemeCopy theme];
  baseStyles = [theme baseStyles];
  colorScheme = [baseStyles colorScheme];

  colorMap = [schemeCopy colorMap];
  [self readColorScheme:holderCopy colorScheme:colorScheme colorMap:colorMap state:stateCopy];
}

+ (void)setSlideMasterTextStyles:(id)styles state:(id)state
{
  stylesCopy = styles;
  v6 = [state masterStyles:?];
  theme = [stylesCopy theme];
  baseStyles = [theme baseStyles];
  fontScheme = [baseStyles fontScheme];

  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:0];
  v11 = [v6 objectForKey:v10];

  [stylesCopy setTitleTextStyle:v11];
  majorFont = [fontScheme majorFont];
  v13 = [v11 propertiesForListLevel:0];
  [self setFont:majorFont fromCharacterProperties:v13];

  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:1];
  v15 = [v6 objectForKey:v14];

  [stylesCopy setBodyTextStyle:v15];
  minorFont = [fontScheme minorFont];
  v17 = [v15 propertiesForListLevel:0];
  [self setFont:minorFont fromCharacterProperties:v17];

  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:7];
  v19 = [v6 objectForKey:v18];

  [stylesCopy setOtherTextStyle:v19];
  minorFont2 = [fontScheme minorFont];
  v21 = [v19 propertiesForListLevel:1];
  [self setFont:minorFont2 fromCharacterProperties:v21];
}

+ (void)flattenPlaceholderTextStylesIntoLayout:(id)layout layoutType:(int)type masterStyleMap:(id)map
{
  v6 = *&type;
  layoutCopy = layout;
  mapCopy = map;
  v9 = [self textBodyForPlaceholderType:0 slideLayout:layoutCopy];
  v10 = [self textTypeFor:v6 placeholderType:0];
  v11 = [MEMORY[0x277CCABB0] numberWithLong:v10];
  v12 = [mapCopy objectForKey:v11];
  [self flattenTextStyle:v12 intoTextBox:v9];

  v13 = [self textBodyForPlaceholderType:1 slideLayout:layoutCopy];
  v14 = [self textTypeFor:v6 placeholderType:1];
  v15 = [MEMORY[0x277CCABB0] numberWithLong:v14];
  v16 = [mapCopy objectForKey:v15];
  [self flattenTextStyle:v16 intoTextBox:v13];
}

+ (int)textTypeFor:(int)for placeholderType:(int)type
{
  if ((for & 0xFFFFFFFD) != 0)
  {
    v4 = 1;
  }

  else
  {
    v4 = 5;
  }

  if ((for & 0xFFFFFFFD) != 0)
  {
    v5 = 0;
  }

  else
  {
    v5 = 6;
  }

  if (type)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  if (type == 1)
  {
    return v4;
  }

  else
  {
    return v6;
  }
}

+ (id)textBodyForPlaceholderType:(int)type slideLayout:(id)layout
{
  v4 = *&type;
  layoutCopy = layout;
  v6 = layoutCopy;
  if (v4 != -1 && (([layoutCopy placeholderWithType:v4 placeholderTypeIndex:0 overrideIndex:1], (v7 = objc_claimAutoreleasedReturnValue()) != 0) || (objc_msgSend(v6, "placeholderWithType:placeholderTypeIndex:useBaseTypeMatch:overrideIndex:", v4, 0, 1, 1), (v7 = objc_claimAutoreleasedReturnValue()) != 0)))
  {
    textBody = [v7 textBody];
  }

  else
  {
    textBody = 0;
  }

  return textBody;
}

+ (void)flattenTextStyle:(id)style intoTextBox:(id)box
{
  styleCopy = style;
  overrideTextListStyle = [box overrideTextListStyle];
  [overrideTextListStyle overrideWithTextStyle:styleCopy];
}

@end