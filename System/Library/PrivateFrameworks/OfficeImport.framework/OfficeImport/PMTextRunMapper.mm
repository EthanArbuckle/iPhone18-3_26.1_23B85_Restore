@interface PMTextRunMapper
- (BOOL)_isDefaultFill:(id)fill;
- (PMTextRunMapper)initWithOadTextRun:(id)run parent:(id)parent;
- (id)copyCharacterStyleWithState:(id)state;
- (id)fontScheme;
- (void)addFontForLanguageType:(int)type toCharacterStyle:(id)style;
- (void)mapAt:(id)at withState:(id)state;
@end

@implementation PMTextRunMapper

- (id)fontScheme
{
  parent = [(CMMapper *)self parent];
  if (parent)
  {
    v3 = parent;
    while (1)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      parent2 = [v3 parent];

      v3 = parent2;
      if (!parent2)
      {
        goto LABEL_5;
      }
    }

    defaultTheme = [v3 defaultTheme];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      fontScheme = [defaultTheme fontScheme];
    }

    else
    {
      baseStyles = [defaultTheme baseStyles];
      fontScheme = [baseStyles fontScheme];
    }
  }

  else
  {
LABEL_5:
    fontScheme = 0;
  }

  return fontScheme;
}

- (PMTextRunMapper)initWithOadTextRun:(id)run parent:(id)parent
{
  runCopy = run;
  v11.receiver = self;
  v11.super_class = PMTextRunMapper;
  v8 = [(CMMapper *)&v11 initWithParent:parent];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->mTextRun, run);
  }

  return v9;
}

- (void)addFontForLanguageType:(int)type toCharacterStyle:(id)style
{
  styleCopy = style;
  properties = [(OADTextRun *)self->mTextRun properties];
  v8 = properties;
  if (type > 1)
  {
    switch(type)
    {
      case 2:
        bidiFont = [properties bidiFont];
        break;
      case 3:
        bidiFont = [properties symbolFont];
        break;
      case 4:
        goto LABEL_8;
      default:
        goto LABEL_12;
    }

LABEL_11:
    latinFont = bidiFont;
    if (bidiFont)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  if ((type + 1) < 2)
  {
LABEL_8:
    bidiFont = [properties latinFont];
    goto LABEL_11;
  }

  if (type == 1)
  {
    bidiFont = [properties eastAsianFont];
    goto LABEL_11;
  }

LABEL_12:
  latinFont = [v8 latinFont];
  if (!latinFont)
  {
    latinFont = [v8 symbolFont];
  }

LABEL_14:
  fontScheme = [(PMTextRunMapper *)self fontScheme];
  v22 = styleCopy;
  v12 = fontScheme;
  v13 = latinFont;
  v15 = v13;
  if (v13)
  {
    v16 = OADSchemeFontReference::schemeFontReferenceWithString(v13, v14);
    v17 = HIDWORD(v16);
    v18 = v16 == -1 || HIDWORD(v16) == 0xFFFFFFFFLL;
    v19 = v15;
    if (!v18)
    {
      v20 = [v12 fontForId:?];
      v19 = [v20 baseFontForId:v17];
    }

    v21 = [[CMStringProperty alloc] initWithString:v19];
    [v22 addProperty:v21 forKey:0x286EF73B0];
  }
}

- (void)mapAt:(id)at withState:(id)state
{
  atCopy = at;
  stateCopy = state;
  properties = [(OADTextRun *)self->mTextRun properties];
  clickHyperlink = [properties clickHyperlink];

  v31 = clickHyperlink;
  if (clickHyperlink)
  {
    v9 = [OIXMLElement elementWithType:0];
    targetLocation = [clickHyperlink targetLocation];
    absoluteString = [targetLocation absoluteString];
    v12 = [OIXMLAttribute attributeWithName:0x286F07D70 stringValue:absoluteString];
    [v9 addAttribute:v12];
  }

  else
  {
    v9 = [OIXMLElement elementWithType:16];
  }

  v13 = clickHyperlink;
  v29 = [(PMTextRunMapper *)self copyCharacterStyleWithState:stateCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    text = [(OADTextRun *)self->mTextRun text];
    if ([text length])
    {
      v28 = atCopy;
      v32 = 0;
      v33 = 0;
      v15 = [text tc_languageTypeAtIndex:0 effectiveRange:&v32];
      v16 = v32;
      v17 = v33;
      v18 = [text length];
      if (v16)
      {
        v19 = 0;
      }

      else
      {
        v19 = v17 == v18;
      }

      v20 = v19;
      if (v19)
      {
        [(PMTextRunMapper *)self addFontForLanguageType:v15 toCharacterStyle:v29];
        v21 = [OIXMLTextNode textNodeWithStringValue:text];
        [v9 addChild:v21];
      }

      [(CMMapper *)self addStyleUsingGlobalCacheTo:v9 style:v29];
      if ((v20 & 1) == 0)
      {
        do
        {
          v22 = [OIXMLElement elementWithType:16];
          [v9 addChild:v22];
          v23 = objc_alloc_init(CMStyle);
          [(PMTextRunMapper *)self addFontForLanguageType:v15 toCharacterStyle:v23];
          [(CMMapper *)self addStyleUsingGlobalCacheTo:v22 style:v23];
          v24 = [text substringWithRange:{v32, v33}];
          v25 = [OIXMLTextNode textNodeWithStringValue:v24];
          [v22 addChild:v25];

          v32 += v33;
          v26 = v32;
          if (v26 >= [text length])
          {
            break;
          }

          v15 = [text tc_languageTypeAtIndex:v32 effectiveRange:&v32];
        }

        while ((v15 & 0x80000000) == 0);
      }

      atCopy = v28;
      v13 = v31;
      goto LABEL_23;
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"%C", 13];
      [v9 setStringValue:v27];
      [(CMMapper *)self addStyleUsingGlobalCacheTo:v9 style:v29];

LABEL_23:
      [atCopy addChild:v9];
    }
  }
}

- (BOOL)_isDefaultFill:(id)fill
{
  fillCopy = fill;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    color = [fillCopy color];
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [color schemeColorIndex] == 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)copyCharacterStyleWithState:(id)state
{
  v39 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  v4 = objc_alloc_init(CMStyle);
  properties = [(OADTextRun *)self->mTextRun properties];
  if ([properties hasBaseline] && (objc_msgSend(properties, "baseline"), v6))
  {
    if (v6 <= 0)
    {
      v7 = @"sub";
    }

    else
    {
      v7 = @"super";
    }

    [(CMStyle *)v4 appendPropertyForName:0x286F077D0 stringValue:v7];
    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  currentRowStyle = [stateCopy currentRowStyle];
  textStyle = [currentRowStyle textStyle];
  if ([properties hasSize])
  {
    [properties size];
    v11 = v10;
    v12 = [CMLengthProperty alloc];
    v13 = v11;
    if (v8)
    {
      v13 = v11 * 0.666666667;
    }

    v14 = [(CMLengthProperty *)v12 initWithNumber:1 unit:v13];
    [(CMStyle *)v4 addProperty:v14 forKey:0x286EF73D0];
  }

  fill = [properties fill];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (!currentRowStyle || ![(PMTextRunMapper *)self _isDefaultFill:fill])
    {
      v17 = [CMColorProperty nsColorFromOADFill:fill state:stateCopy];
      if (v17)
      {
        v21 = MEMORY[0x277CCACA8];
        v22 = [CMColorProperty cssStringFromTSUColor:v17];
        color = [v21 stringWithString:v22];

        [(CMStyle *)v4 appendPropertyForName:0x286F077B0 stringWithColons:color];
      }

      else
      {
        color = 0;
      }

LABEL_22:

      goto LABEL_23;
    }

LABEL_17:
    color = [textStyle color];
    v17 = [CMColorProperty nsColorFromOADColor:color state:stateCopy];
    if (v17)
    {
      v18 = MEMORY[0x277CCACA8];
      v19 = [CMColorProperty cssStringFromTSUColor:v17];
      v20 = [v18 stringWithString:v19];

      [(CMStyle *)v4 appendPropertyForName:0x286F077B0 stringWithColons:v20];
    }

    goto LABEL_22;
  }

  if (currentRowStyle)
  {
    goto LABEL_17;
  }

LABEL_23:
  if ([properties hasIsBold] && (objc_msgSend(properties, "isBold") & 1) != 0 || textStyle && !objc_msgSend(textStyle, "bold"))
  {
    [(CMStyle *)v4 appendPropertyForName:0x286EF7410 stringValue:@"bold"];
  }

  if ([properties isItalic])
  {
    [(CMStyle *)v4 appendPropertyForName:0x286EF7450 stringValue:@"italic"];
  }

  [properties effects];
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v23 = v35 = 0u;
  v24 = [v23 countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v24)
  {
    v25 = *v35;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v35 != v25)
        {
          objc_enumerationMutation(v23);
        }

        if ([*(*(&v34 + 1) + 8 * i) type] == 6)
        {
          [(CMStyle *)v4 appendPropertyForName:0x286F08290 stringValue:@"2px 2px 2px #000"];
        }
      }

      v24 = [v23 countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v24);
  }

  if ([properties underlineType])
  {
    v27 = @"underline";
LABEL_41:
    [(CMStyle *)v4 appendPropertyForName:0x286EF7470 stringValue:v27];
    goto LABEL_45;
  }

  if ([properties hasStrikeThroughType] && objc_msgSend(properties, "strikeThroughType"))
  {
    v27 = @"line-through";
    goto LABEL_41;
  }

LABEL_45:
  if ([properties hasCaps] && objc_msgSend(properties, "caps") == 1)
  {
    v28 = @":small-caps;";
    v29 = HUPropNmFontVariant;
LABEL_51:
    [(CMStyle *)v4 appendPropertyForName:*v29 stringWithColons:v28];
    goto LABEL_52;
  }

  if ([properties hasCaps] && objc_msgSend(properties, "caps") == 2)
  {
    v28 = @":uppercase;";
    v29 = HUPropNmTextTransform;
    goto LABEL_51;
  }

LABEL_52:
  if ([properties hasSpacing])
  {
    [properties spacing];
    if (v30 != 0.0)
    {
      [(CMStyle *)v4 appendPropertyForName:0x286F08070 length:1 unit:v30];
    }
  }

  return v4;
}

@end