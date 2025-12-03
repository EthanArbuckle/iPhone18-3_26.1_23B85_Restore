@interface WMCharacterRunMapper
+ (void)addNonCollapsableSpanAt:(id)at withState:(id)state;
- (WMCharacterRunMapper)initWithText:(id)text;
- (WMCharacterRunMapper)initWithWDCharacterRun:(id)run parent:(id)parent;
- (id)baseStyle;
- (id)boldStyle;
- (id)copyCharacterStyle;
- (int)defaultTabWidth;
- (unsigned)countAndStripLeadingTabs;
- (void)map1At:(id)at withState:(id)state;
- (void)mapAt:(id)at withState:(id)state;
- (void)mapSubstring:(id)substring at:(id)at;
- (void)mapTabs:(unsigned int)tabs at:(id)at afterText:(id)text;
@end

@implementation WMCharacterRunMapper

- (id)copyCharacterStyle
{
  paragraph = [(WDRun *)self->wdCharacterRun paragraph];
  properties = [paragraph properties];
  if ([properties isBaseStyleOverridden])
  {
    baseStyle = [properties baseStyle];
    v6 = [[WMStyle alloc] initWithWDStyle:baseStyle];
  }

  else
  {
    v6 = objc_alloc_init(WMStyle);
  }

  properties2 = [(WDRunWithCharacterProperties *)self->wdCharacterRun properties];
  if ([properties2 isBaseStyleOverridden])
  {
    baseStyle2 = [properties2 baseStyle];
    v9 = [[WMStyle alloc] initWithWDStyle:baseStyle2];
    [(WMStyle *)v6 cascadeWithStyle:v9];
  }

  return v6;
}

- (int)defaultTabWidth
{
  WeakRetained = objc_loadWeakRetained(&self->super.mParent);

  if (!WeakRetained)
  {
    return 36;
  }

  root = [(CMMapper *)self root];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = ([root defaultTabWidth] / 20.0);
    if (v5)
    {
      v6 = v5;
    }

    else
    {
      v6 = 36;
    }
  }

  else
  {
    v6 = 36;
  }

  return v6;
}

+ (void)addNonCollapsableSpanAt:(id)at withState:(id)state
{
  atCopy = at;
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%C", 160];
  v5 = [OIXMLElement elementWithType:16];
  [v5 setStringValue:v4];
  [atCopy addChild:v5];
}

- (WMCharacterRunMapper)initWithWDCharacterRun:(id)run parent:(id)parent
{
  runCopy = run;
  parentCopy = parent;
  v18.receiver = self;
  v18.super_class = WMCharacterRunMapper;
  v9 = [(CMMapper *)&v18 initWithParent:parentCopy];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->wdCharacterRun, run);
    copyCharacterStyle = [(WMCharacterRunMapper *)v10 copyCharacterStyle];
    mStyle = v10->mStyle;
    v10->mStyle = copyCharacterStyle;

    v13 = v10->mStyle;
    properties = [runCopy properties];
    [(WMStyle *)v13 addCharacterProperties:properties];

    string = [runCopy string];
    mText = v10->mText;
    v10->mText = string;
  }

  return v10;
}

- (WMCharacterRunMapper)initWithText:(id)text
{
  textCopy = text;
  v13.receiver = self;
  v13.super_class = WMCharacterRunMapper;
  v6 = [(CMMapper *)&v13 init];
  v7 = v6;
  if (v6)
  {
    wdCharacterRun = v6->wdCharacterRun;
    v6->wdCharacterRun = 0;

    objc_storeWeak(&v7->super.mParent, 0);
    objc_storeStrong(&v7->mText, text);
    v9 = objc_alloc_init(WMStyle);
    mStyle = v7->mStyle;
    v7->mStyle = v9;

    v11 = v7;
  }

  return v7;
}

- (void)map1At:(id)at withState:(id)state
{
  atCopy = at;
  string = [(WDCharacterRun *)self->wdCharacterRun string];
  v6 = string;
  if (string && [string length])
  {
    v7 = [OIXMLElement elementWithType:16];
    [atCopy addChild:v7];
    countAndStripLeadingTabs = [(WMCharacterRunMapper *)self countAndStripLeadingTabs];
    v9 = [OIXMLTextNode textNodeWithStringValue:v6];
    [v7 addChild:v9];
    copyCharacterStyle = [(WMCharacterRunMapper *)self copyCharacterStyle];
    properties = [(WDRunWithCharacterProperties *)self->wdCharacterRun properties];
    [copyCharacterStyle addCharacterProperties:properties];
    if (countAndStripLeadingTabs)
    {
      root = [(CMMapper *)self root];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {

        goto LABEL_8;
      }

      v13 = -[CMLengthProperty initWithNumber:unit:]([CMLengthProperty alloc], "initWithNumber:unit:", 2, ([root defaultTabWidth] * countAndStripLeadingTabs));
      [copyCharacterStyle addProperty:v13 forKey:0x286F081B0];
    }

    [(CMMapper *)self addStyleUsingGlobalCacheTo:v7 style:copyCharacterStyle];
LABEL_8:
  }
}

- (void)mapAt:(id)at withState:(id)state
{
  atCopy = at;
  stateCopy = state;
  properties = [(WDRunWithCharacterProperties *)self->wdCharacterRun properties];
  if ([properties isDeletedOverridden] && (objc_msgSend(properties, "deleted") & 0xFFFFFF7F) == 1)
  {
    self->mIsDeleted = 1;
    goto LABEL_53;
  }

  if ([properties isHiddenOverridden] && objc_msgSend(properties, "hidden") == 1)
  {
    goto LABEL_53;
  }

  mText = self->mText;
  if (!mText)
  {
    goto LABEL_53;
  }

  if (![(NSString *)mText length])
  {
    goto LABEL_53;
  }

  v9 = [(NSString *)self->mText length];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_53;
  }

  if (v9)
  {
    for (i = 0; i != v9; ++i)
    {
      if ([(NSString *)self->mText characterAtIndex:i]== 12)
      {
        [stateCopy setCurrentPage:{objc_msgSend(stateCopy, "currentPage") + 1}];
      }
    }
  }

  if ([stateCopy isOnPhone] && objc_msgSend(stateCopy, "textLevel") <= 0)
  {
    v11 = [(CMStyle *)self->mStyle propertyForName:0x286EF73D0];
    v12 = v11;
    if (v11)
    {
      [v11 value];
      v14 = v13;
      unitType = [v12 unitType];
      v16 = v14;
      if (unitType == 1 || unitType == 4)
      {
LABEL_23:
        if (v16 < 18.0)
        {
          if (v16 >= 8.0)
          {
            v18 = 17;
          }

          else
          {
            v18 = 20;
          }

          self->mFontSizeBumpFactor = v18;
          v19 = 1.7;
          if (v16 < 8.0)
          {
            v19 = 2.0;
          }

          if ((v16 * v19) > 18.0)
          {
            self->mFontSizeBumpFactor = 15;
          }
        }

        goto LABEL_31;
      }

      if (unitType == 6)
      {
        v16 = v16 * 0.5;
        goto LABEL_23;
      }
    }

LABEL_31:
  }

  if (v9)
  {
    v20 = 0;
    v21 = 0;
    v22 = v9;
    while (1)
    {
      v23 = [(NSString *)self->mText rangeOfString:0x286EE7F70 options:2 range:v20, v22];
      if (!v24)
      {
        break;
      }

      v25 = v23;
      if (v23 <= v20)
      {

        v21 = 0;
      }

      else
      {
        v26 = [(NSString *)self->mText substringWithRange:v20, v23 - v20];

        v21 = v26;
        [(WMCharacterRunMapper *)self mapSubstring:v26 at:atCopy];
        v20 = v25;
      }

      v27 = v20 + 1;
      if (v20 + 1 >= v9)
      {
        v29 = 1;
      }

      else
      {
        v28 = (v9 - v20);
        v29 = 1;
        while ([(NSString *)self->mText characterAtIndex:v27]== 9)
        {
          v29 = (v29 + 1);
          if (v9 == ++v27)
          {
            v29 = v28;
            v20 = v9;
            goto LABEL_45;
          }
        }
      }

      v20 = v27;
LABEL_45:
      [(WMCharacterRunMapper *)self mapTabs:v29 at:atCopy afterText:v21];
      v22 = v9 - v20;
      if (v9 == v20)
      {
        goto LABEL_52;
      }
    }

    v30 = self->mText;
    if (v20)
    {
      v31 = [(NSString *)v30 substringWithRange:v20, v22];
    }

    else
    {
      v31 = v30;
    }

    v32 = v31;

    v21 = v32;
    [(WMCharacterRunMapper *)self mapSubstring:v32 at:atCopy];
  }

  else
  {
    v21 = 0;
  }

LABEL_52:

LABEL_53:
}

- (void)mapSubstring:(id)substring at:(id)at
{
  substringCopy = substring;
  atCopy = at;
  if (self->mFontSizeBumpFactor < 11)
  {
    v7 = [OIXMLElement elementWithType:16 stringValue:substringCopy];
    [atCopy addChild:v7];
    [(CMMapper *)self addStyleUsingGlobalCacheTo:v7 style:self->mStyle];
  }

  else
  {
    v7 = [OIXMLElement elementWithType:16];
    [atCopy addChild:v7];
    [(CMMapper *)self addStyleUsingGlobalCacheTo:v7 style:self->mStyle];
    v8 = [OIXMLElement elementWithType:16 stringValue:substringCopy];
    mFontSizeBumpFactor = self->mFontSizeBumpFactor;
    if (mFontSizeBumpFactor == 17)
    {
      v10 = [OIXMLAttribute attributeWithName:0x286EE8350 stringValue:@"bumpedFont17"];
      [v8 addAttribute:v10];
    }

    else
    {
      if (mFontSizeBumpFactor == 15)
      {
        [OIXMLAttribute attributeWithName:0x286EE8350 stringValue:@"bumpedFont15"];
      }

      else
      {
        [OIXMLAttribute attributeWithName:0x286EE8350 stringValue:@"bumpedFont20"];
      }
      v10 = ;
      [v8 addAttribute:v10];
    }

    [v7 addChild:v8];
  }
}

- (void)mapTabs:(unsigned int)tabs at:(id)at afterText:(id)text
{
  atCopy = at;
  textCopy = text;
  defaultTabWidth = [(WMCharacterRunMapper *)self defaultTabWidth];
  v10 = defaultTabWidth;
  if (textCopy)
  {
    v29 = textCopy;
    properties = [(CMStyle *)self->mStyle properties];
    v12 = [properties objectForKey:0x286EF73D0];

    v28 = v12;
    if (v12)
    {
      [v12 value];
      v14 = v13;
    }

    else
    {
      v14 = 10;
    }

    properties2 = [(CMStyle *)self->mStyle properties];
    v17 = [properties2 objectForKey:0x286EF73B0];

    if (v17)
    {
      value = [v17 value];
    }

    else
    {
      value = @"Arial";
    }

    properties3 = [(CMStyle *)self->mStyle properties];
    v20 = [properties3 objectForKey:0x286EF7410];

    LOBYTE(properties3) = [v20 value];
    properties4 = [(CMStyle *)self->mStyle properties];
    v22 = [properties4 objectForKey:0x286EF7450];

    [v29 oi_sizeWithFontName:value size:v14 bold:properties3 & 1 italic:{objc_msgSend(v22, "value") & 1}];
    v15 = v23 / v10 * v10 - v23 + v10 * tabs;

    textCopy = v29;
  }

  else
  {
    v15 = defaultTabWidth * tabs;
  }

  v24 = [OIXMLElement elementWithType:16];
  [atCopy addChild:v24];
  v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"padding-left:%d", v15];;
  [(CMMapper *)self addAttribute:0x286EEA590 toNode:v24 value:v25];
  8203 = [MEMORY[0x277CCACA8] stringWithFormat:@"%C", 8203];
  v27 = [OIXMLTextNode textNodeWithStringValue:8203];

  [v24 addChild:v27];
}

- (unsigned)countAndStripLeadingTabs
{
  string = [(WDCharacterRun *)self->wdCharacterRun string];
  v4 = [string length];
  if (v4)
  {
    v5 = 0;
    v6 = 0;
    while (1)
    {
      v7 = [string characterAtIndex:v5];
      if (v7 != 9 && v7 != 32)
      {
        break;
      }

      if (v7 == 9)
      {
        ++v6;
      }

      if (v4 == ++v5)
      {
        if (!v6)
        {
          goto LABEL_15;
        }

LABEL_9:
        wdCharacterRun = self->wdCharacterRun;
        8203 = [MEMORY[0x277CCACA8] stringWithFormat:@"%C", 8203];
        [(WDCharacterRun *)wdCharacterRun setString:8203];
        goto LABEL_14;
      }
    }

    if (!v6)
    {
      goto LABEL_15;
    }

    if (!v5)
    {
      goto LABEL_9;
    }

    v10 = self->wdCharacterRun;
    8203 = [string substringWithRange:{v5, v4 - v5}];
    [(WDCharacterRun *)v10 setString:8203];
LABEL_14:
  }

  else
  {
    v6 = 0;
  }

LABEL_15:

  return v6;
}

- (id)boldStyle
{
  v2 = objc_alloc_init(WMStyle);
  v3 = [[CMToggleProperty alloc] initWithCMTogglePropertyValue:1];
  [(CMStyle *)v2 addProperty:v3 forKey:0x286EF7410];

  return v2;
}

- (id)baseStyle
{
  properties = [(WDRunWithCharacterProperties *)self->wdCharacterRun properties];
  if ([properties isBaseStyleOverridden])
  {
    baseStyle = [properties baseStyle];
    boldStyle = [[WMStyle alloc] initWithWDStyle:baseStyle];
  }

  else
  {
    baseStyle = [(WDRun *)self->wdCharacterRun paragraph];
    properties2 = [baseStyle properties];
    if ([properties2 isBaseStyleOverridden])
    {
      baseStyle2 = [properties2 baseStyle];
      boldStyle = [[WMStyle alloc] initWithWDStyle:baseStyle2];
    }

    else
    {
      boldStyle = [(WMCharacterRunMapper *)self boldStyle];
    }
  }

  return boldStyle;
}

@end