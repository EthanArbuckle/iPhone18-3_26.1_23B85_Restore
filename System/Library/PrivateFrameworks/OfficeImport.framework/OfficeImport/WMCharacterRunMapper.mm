@interface WMCharacterRunMapper
+ (void)addNonCollapsableSpanAt:(id)a3 withState:(id)a4;
- (WMCharacterRunMapper)initWithText:(id)a3;
- (WMCharacterRunMapper)initWithWDCharacterRun:(id)a3 parent:(id)a4;
- (id)baseStyle;
- (id)boldStyle;
- (id)copyCharacterStyle;
- (int)defaultTabWidth;
- (unsigned)countAndStripLeadingTabs;
- (void)map1At:(id)a3 withState:(id)a4;
- (void)mapAt:(id)a3 withState:(id)a4;
- (void)mapSubstring:(id)a3 at:(id)a4;
- (void)mapTabs:(unsigned int)a3 at:(id)a4 afterText:(id)a5;
@end

@implementation WMCharacterRunMapper

- (id)copyCharacterStyle
{
  v3 = [(WDRun *)self->wdCharacterRun paragraph];
  v4 = [v3 properties];
  if ([v4 isBaseStyleOverridden])
  {
    v5 = [v4 baseStyle];
    v6 = [[WMStyle alloc] initWithWDStyle:v5];
  }

  else
  {
    v6 = objc_alloc_init(WMStyle);
  }

  v7 = [(WDRunWithCharacterProperties *)self->wdCharacterRun properties];
  if ([v7 isBaseStyleOverridden])
  {
    v8 = [v7 baseStyle];
    v9 = [[WMStyle alloc] initWithWDStyle:v8];
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

  v4 = [(CMMapper *)self root];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = ([v4 defaultTabWidth] / 20.0);
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

+ (void)addNonCollapsableSpanAt:(id)a3 withState:(id)a4
{
  v6 = a3;
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%C", 160];
  v5 = [OIXMLElement elementWithType:16];
  [v5 setStringValue:v4];
  [v6 addChild:v5];
}

- (WMCharacterRunMapper)initWithWDCharacterRun:(id)a3 parent:(id)a4
{
  v7 = a3;
  v8 = a4;
  v18.receiver = self;
  v18.super_class = WMCharacterRunMapper;
  v9 = [(CMMapper *)&v18 initWithParent:v8];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->wdCharacterRun, a3);
    v11 = [(WMCharacterRunMapper *)v10 copyCharacterStyle];
    mStyle = v10->mStyle;
    v10->mStyle = v11;

    v13 = v10->mStyle;
    v14 = [v7 properties];
    [(WMStyle *)v13 addCharacterProperties:v14];

    v15 = [v7 string];
    mText = v10->mText;
    v10->mText = v15;
  }

  return v10;
}

- (WMCharacterRunMapper)initWithText:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = WMCharacterRunMapper;
  v6 = [(CMMapper *)&v13 init];
  v7 = v6;
  if (v6)
  {
    wdCharacterRun = v6->wdCharacterRun;
    v6->wdCharacterRun = 0;

    objc_storeWeak(&v7->super.mParent, 0);
    objc_storeStrong(&v7->mText, a3);
    v9 = objc_alloc_init(WMStyle);
    mStyle = v7->mStyle;
    v7->mStyle = v9;

    v11 = v7;
  }

  return v7;
}

- (void)map1At:(id)a3 withState:(id)a4
{
  v14 = a3;
  v5 = [(WDCharacterRun *)self->wdCharacterRun string];
  v6 = v5;
  if (v5 && [v5 length])
  {
    v7 = [OIXMLElement elementWithType:16];
    [v14 addChild:v7];
    v8 = [(WMCharacterRunMapper *)self countAndStripLeadingTabs];
    v9 = [OIXMLTextNode textNodeWithStringValue:v6];
    [v7 addChild:v9];
    v10 = [(WMCharacterRunMapper *)self copyCharacterStyle];
    v11 = [(WDRunWithCharacterProperties *)self->wdCharacterRun properties];
    [v10 addCharacterProperties:v11];
    if (v8)
    {
      v12 = [(CMMapper *)self root];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {

        goto LABEL_8;
      }

      v13 = -[CMLengthProperty initWithNumber:unit:]([CMLengthProperty alloc], "initWithNumber:unit:", 2, ([v12 defaultTabWidth] * v8));
      [v10 addProperty:v13 forKey:0x286F081B0];
    }

    [(CMMapper *)self addStyleUsingGlobalCacheTo:v7 style:v10];
LABEL_8:
  }
}

- (void)mapAt:(id)a3 withState:(id)a4
{
  v33 = a3;
  v6 = a4;
  v7 = [(WDRunWithCharacterProperties *)self->wdCharacterRun properties];
  if ([v7 isDeletedOverridden] && (objc_msgSend(v7, "deleted") & 0xFFFFFF7F) == 1)
  {
    self->mIsDeleted = 1;
    goto LABEL_53;
  }

  if ([v7 isHiddenOverridden] && objc_msgSend(v7, "hidden") == 1)
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
        [v6 setCurrentPage:{objc_msgSend(v6, "currentPage") + 1}];
      }
    }
  }

  if ([v6 isOnPhone] && objc_msgSend(v6, "textLevel") <= 0)
  {
    v11 = [(CMStyle *)self->mStyle propertyForName:0x286EF73D0];
    v12 = v11;
    if (v11)
    {
      [v11 value];
      v14 = v13;
      v15 = [v12 unitType];
      v16 = v14;
      if (v15 == 1 || v15 == 4)
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

      if (v15 == 6)
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
        [(WMCharacterRunMapper *)self mapSubstring:v26 at:v33];
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
      [(WMCharacterRunMapper *)self mapTabs:v29 at:v33 afterText:v21];
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
    [(WMCharacterRunMapper *)self mapSubstring:v32 at:v33];
  }

  else
  {
    v21 = 0;
  }

LABEL_52:

LABEL_53:
}

- (void)mapSubstring:(id)a3 at:(id)a4
{
  v11 = a3;
  v6 = a4;
  if (self->mFontSizeBumpFactor < 11)
  {
    v7 = [OIXMLElement elementWithType:16 stringValue:v11];
    [v6 addChild:v7];
    [(CMMapper *)self addStyleUsingGlobalCacheTo:v7 style:self->mStyle];
  }

  else
  {
    v7 = [OIXMLElement elementWithType:16];
    [v6 addChild:v7];
    [(CMMapper *)self addStyleUsingGlobalCacheTo:v7 style:self->mStyle];
    v8 = [OIXMLElement elementWithType:16 stringValue:v11];
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

- (void)mapTabs:(unsigned int)a3 at:(id)a4 afterText:(id)a5
{
  v30 = a4;
  v8 = a5;
  v9 = [(WMCharacterRunMapper *)self defaultTabWidth];
  v10 = v9;
  if (v8)
  {
    v29 = v8;
    v11 = [(CMStyle *)self->mStyle properties];
    v12 = [v11 objectForKey:0x286EF73D0];

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

    v16 = [(CMStyle *)self->mStyle properties];
    v17 = [v16 objectForKey:0x286EF73B0];

    if (v17)
    {
      v18 = [v17 value];
    }

    else
    {
      v18 = @"Arial";
    }

    v19 = [(CMStyle *)self->mStyle properties];
    v20 = [v19 objectForKey:0x286EF7410];

    LOBYTE(v19) = [v20 value];
    v21 = [(CMStyle *)self->mStyle properties];
    v22 = [v21 objectForKey:0x286EF7450];

    [v29 oi_sizeWithFontName:v18 size:v14 bold:v19 & 1 italic:{objc_msgSend(v22, "value") & 1}];
    v15 = v23 / v10 * v10 - v23 + v10 * a3;

    v8 = v29;
  }

  else
  {
    v15 = v9 * a3;
  }

  v24 = [OIXMLElement elementWithType:16];
  [v30 addChild:v24];
  v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"padding-left:%d", v15];;
  [(CMMapper *)self addAttribute:0x286EEA590 toNode:v24 value:v25];
  v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"%C", 8203];
  v27 = [OIXMLTextNode textNodeWithStringValue:v26];

  [v24 addChild:v27];
}

- (unsigned)countAndStripLeadingTabs
{
  v3 = [(WDCharacterRun *)self->wdCharacterRun string];
  v4 = [v3 length];
  if (v4)
  {
    v5 = 0;
    v6 = 0;
    while (1)
    {
      v7 = [v3 characterAtIndex:v5];
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
        v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%C", 8203];
        [(WDCharacterRun *)wdCharacterRun setString:v9];
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
    v9 = [v3 substringWithRange:{v5, v4 - v5}];
    [(WDCharacterRun *)v10 setString:v9];
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
  v3 = [(WDRunWithCharacterProperties *)self->wdCharacterRun properties];
  if ([v3 isBaseStyleOverridden])
  {
    v4 = [v3 baseStyle];
    v5 = [[WMStyle alloc] initWithWDStyle:v4];
  }

  else
  {
    v4 = [(WDRun *)self->wdCharacterRun paragraph];
    v6 = [v4 properties];
    if ([v6 isBaseStyleOverridden])
    {
      v7 = [v6 baseStyle];
      v5 = [[WMStyle alloc] initWithWDStyle:v7];
    }

    else
    {
      v5 = [(WMCharacterRunMapper *)self boldStyle];
    }
  }

  return v5;
}

@end