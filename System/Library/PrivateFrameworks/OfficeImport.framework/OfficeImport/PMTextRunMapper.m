@interface PMTextRunMapper
- (BOOL)_isDefaultFill:(id)a3;
- (PMTextRunMapper)initWithOadTextRun:(id)a3 parent:(id)a4;
- (id)copyCharacterStyleWithState:(id)a3;
- (id)fontScheme;
- (void)addFontForLanguageType:(int)a3 toCharacterStyle:(id)a4;
- (void)mapAt:(id)a3 withState:(id)a4;
@end

@implementation PMTextRunMapper

- (id)fontScheme
{
  v2 = [(CMMapper *)self parent];
  if (v2)
  {
    v3 = v2;
    while (1)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      v4 = [v3 parent];

      v3 = v4;
      if (!v4)
      {
        goto LABEL_5;
      }
    }

    v6 = [v3 defaultTheme];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [v6 fontScheme];
    }

    else
    {
      v7 = [v6 baseStyles];
      v5 = [v7 fontScheme];
    }
  }

  else
  {
LABEL_5:
    v5 = 0;
  }

  return v5;
}

- (PMTextRunMapper)initWithOadTextRun:(id)a3 parent:(id)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = PMTextRunMapper;
  v8 = [(CMMapper *)&v11 initWithParent:a4];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->mTextRun, a3);
  }

  return v9;
}

- (void)addFontForLanguageType:(int)a3 toCharacterStyle:(id)a4
{
  v6 = a4;
  v7 = [(OADTextRun *)self->mTextRun properties];
  v8 = v7;
  if (a3 > 1)
  {
    switch(a3)
    {
      case 2:
        v9 = [v7 bidiFont];
        break;
      case 3:
        v9 = [v7 symbolFont];
        break;
      case 4:
        goto LABEL_8;
      default:
        goto LABEL_12;
    }

LABEL_11:
    v10 = v9;
    if (v9)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  if ((a3 + 1) < 2)
  {
LABEL_8:
    v9 = [v7 latinFont];
    goto LABEL_11;
  }

  if (a3 == 1)
  {
    v9 = [v7 eastAsianFont];
    goto LABEL_11;
  }

LABEL_12:
  v10 = [v8 latinFont];
  if (!v10)
  {
    v10 = [v8 symbolFont];
  }

LABEL_14:
  v11 = [(PMTextRunMapper *)self fontScheme];
  v22 = v6;
  v12 = v11;
  v13 = v10;
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

- (void)mapAt:(id)a3 withState:(id)a4
{
  v6 = a3;
  v30 = a4;
  v7 = [(OADTextRun *)self->mTextRun properties];
  v8 = [v7 clickHyperlink];

  v31 = v8;
  if (v8)
  {
    v9 = [OIXMLElement elementWithType:0];
    v10 = [v8 targetLocation];
    v11 = [v10 absoluteString];
    v12 = [OIXMLAttribute attributeWithName:0x286F07D70 stringValue:v11];
    [v9 addAttribute:v12];
  }

  else
  {
    v9 = [OIXMLElement elementWithType:16];
  }

  v13 = v8;
  v29 = [(PMTextRunMapper *)self copyCharacterStyleWithState:v30];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v14 = [(OADTextRun *)self->mTextRun text];
    if ([v14 length])
    {
      v28 = v6;
      v32 = 0;
      v33 = 0;
      v15 = [v14 tc_languageTypeAtIndex:0 effectiveRange:&v32];
      v16 = v32;
      v17 = v33;
      v18 = [v14 length];
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
        v21 = [OIXMLTextNode textNodeWithStringValue:v14];
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
          v24 = [v14 substringWithRange:{v32, v33}];
          v25 = [OIXMLTextNode textNodeWithStringValue:v24];
          [v22 addChild:v25];

          v32 += v33;
          v26 = v32;
          if (v26 >= [v14 length])
          {
            break;
          }

          v15 = [v14 tc_languageTypeAtIndex:v32 effectiveRange:&v32];
        }

        while ((v15 & 0x80000000) == 0);
      }

      v6 = v28;
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
      [v6 addChild:v9];
    }
  }
}

- (BOOL)_isDefaultFill:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 color];
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [v4 schemeColorIndex] == 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)copyCharacterStyleWithState:(id)a3
{
  v39 = *MEMORY[0x277D85DE8];
  v33 = a3;
  v4 = objc_alloc_init(CMStyle);
  v5 = [(OADTextRun *)self->mTextRun properties];
  if ([v5 hasBaseline] && (objc_msgSend(v5, "baseline"), v6))
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

  v9 = [v33 currentRowStyle];
  v32 = [v9 textStyle];
  if ([v5 hasSize])
  {
    [v5 size];
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

  v15 = [v5 fill];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (!v9 || ![(PMTextRunMapper *)self _isDefaultFill:v15])
    {
      v17 = [CMColorProperty nsColorFromOADFill:v15 state:v33];
      if (v17)
      {
        v21 = MEMORY[0x277CCACA8];
        v22 = [CMColorProperty cssStringFromTSUColor:v17];
        v16 = [v21 stringWithString:v22];

        [(CMStyle *)v4 appendPropertyForName:0x286F077B0 stringWithColons:v16];
      }

      else
      {
        v16 = 0;
      }

LABEL_22:

      goto LABEL_23;
    }

LABEL_17:
    v16 = [v32 color];
    v17 = [CMColorProperty nsColorFromOADColor:v16 state:v33];
    if (v17)
    {
      v18 = MEMORY[0x277CCACA8];
      v19 = [CMColorProperty cssStringFromTSUColor:v17];
      v20 = [v18 stringWithString:v19];

      [(CMStyle *)v4 appendPropertyForName:0x286F077B0 stringWithColons:v20];
    }

    goto LABEL_22;
  }

  if (v9)
  {
    goto LABEL_17;
  }

LABEL_23:
  if ([v5 hasIsBold] && (objc_msgSend(v5, "isBold") & 1) != 0 || v32 && !objc_msgSend(v32, "bold"))
  {
    [(CMStyle *)v4 appendPropertyForName:0x286EF7410 stringValue:@"bold"];
  }

  if ([v5 isItalic])
  {
    [(CMStyle *)v4 appendPropertyForName:0x286EF7450 stringValue:@"italic"];
  }

  [v5 effects];
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

  if ([v5 underlineType])
  {
    v27 = @"underline";
LABEL_41:
    [(CMStyle *)v4 appendPropertyForName:0x286EF7470 stringValue:v27];
    goto LABEL_45;
  }

  if ([v5 hasStrikeThroughType] && objc_msgSend(v5, "strikeThroughType"))
  {
    v27 = @"line-through";
    goto LABEL_41;
  }

LABEL_45:
  if ([v5 hasCaps] && objc_msgSend(v5, "caps") == 1)
  {
    v28 = @":small-caps;";
    v29 = HUPropNmFontVariant;
LABEL_51:
    [(CMStyle *)v4 appendPropertyForName:*v29 stringWithColons:v28];
    goto LABEL_52;
  }

  if ([v5 hasCaps] && objc_msgSend(v5, "caps") == 2)
  {
    v28 = @":uppercase;";
    v29 = HUPropNmTextTransform;
    goto LABEL_51;
  }

LABEL_52:
  if ([v5 hasSpacing])
  {
    [v5 spacing];
    if (v30 != 0.0)
    {
      [(CMStyle *)v4 appendPropertyForName:0x286F08070 length:1 unit:v30];
    }
  }

  return v4;
}

@end