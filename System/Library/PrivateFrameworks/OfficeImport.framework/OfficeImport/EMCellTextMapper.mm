@interface EMCellTextMapper
+ (double)contentWidthForString:(id)a3 style:(id)a4;
- (EMCellTextMapper)initWithEDString:(id)a3 style:(id)a4 parent:(id)a5;
- (double)contentWidth;
- (void)mapAt:(id)a3 withState:(id)a4 columnWidth:(double)a5 height:(double)a6 spreadLeft:(BOOL)a7;
- (void)mapTextRunsAt:(id)a3;
- (void)mapVerticalTextAt:(id)a3 withState:(id)a4 width:(double)a5 height:(double)a6;
@end

@implementation EMCellTextMapper

- (double)contentWidth
{
  v3 = objc_opt_class();
  v4 = [(EDString *)self->edString string];
  [v3 contentWidthForString:v4 style:self->edStyle];
  v6 = v5;

  return v6;
}

- (EMCellTextMapper)initWithEDString:(id)a3 style:(id)a4 parent:(id)a5
{
  v8 = a3;
  v9 = a4;
  v13.receiver = self;
  v13.super_class = EMCellTextMapper;
  v10 = [(CMMapper *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->edString, a3);
    objc_storeStrong(&v11->edStyle, a4);
  }

  return v11;
}

+ (double)contentWidthForString:(id)a3 style:(id)a4
{
  v5 = a3;
  v6 = [a4 font];
  v7 = [v6 name];
  [v6 height];
  v9 = v8;
  if ([v6 isBoldOverridden])
  {
    v10 = [v6 isBold];
  }

  else
  {
    v10 = 0;
  }

  if ([v6 isItalicOverridden])
  {
    v11 = [v6 isItalic];
  }

  else
  {
    v11 = 0;
  }

  [v5 oi_sizeWithFontName:v7 size:(v9 / 20.0) bold:v10 italic:v11];
  v13 = v12;

  return v13;
}

- (void)mapAt:(id)a3 withState:(id)a4 columnWidth:(double)a5 height:(double)a6 spreadLeft:(BOOL)a7
{
  v44 = a3;
  v12 = a4;
  if (self->edString)
  {
    edStyle = self->edStyle;
    if (!edStyle || !-[EDStyle isAlignmentInfoOverridden](edStyle, "isAlignmentInfoOverridden") || (-[EDStyle alignmentInfo](self->edStyle, "alignmentInfo"), v14 = objc_claimAutoreleasedReturnValue(), v15 = [v14 textRotation], v14, !v15) || (-[EDStyle font](self->edStyle, "font"), v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v16, "height"), v18 = v17 / 20.0, v16, v18 * 2.6 <= a5))
    {
      [(EMCellTextMapper *)self contentWidth];
      if (v19 <= a5)
      {
        goto LABEL_24;
      }

      if (![(EDStyle *)self->edStyle isAlignmentInfoOverridden])
      {
        if (a7)
        {
LABEL_24:
          v35 = [(EDString *)self->edString runs];
          if (v35)
          {
            v36 = [(EDString *)self->edString runs];
            v37 = [v36 count] != 0;
          }

          else
          {
            v37 = 0;
          }

          if ([(EDStyle *)self->edStyle isAlignmentInfoOverridden])
          {
            v38 = [(EDStyle *)self->edStyle alignmentInfo];
            if ([v38 isTextWrappedOverridden])
            {
              v39 = [(EDStyle *)self->edStyle alignmentInfo];
              v40 = [v39 isTextWrapped];

              if (v40)
              {
                v41 = [(EDString *)self->edString string];
                v42 = [CMTextFilter convertLineBreaksToParagraphBreaks:v41];

                if (!v37)
                {
LABEL_31:
                  if (v42 && [v42 length])
                  {
                    v43 = [OIXMLTextNode textNodeWithStringValue:v42];
                    [v44 addChild:v43];
                  }

                  goto LABEL_37;
                }

LABEL_36:
                [(EMCellTextMapper *)self mapTextRunsAt:v44];
LABEL_37:

                goto LABEL_38;
              }
            }

            else
            {
            }
          }

          v42 = [(EDString *)self->edString string];
          if (!v37)
          {
            goto LABEL_31;
          }

          goto LABEL_36;
        }

        goto LABEL_17;
      }

      v20 = [(EDStyle *)self->edStyle alignmentInfo];
      if ([(CMStyle *)v20 isTextWrappedOverridden])
      {
        v21 = [(CMStyle *)v20 isTextWrapped];
        if (a7)
        {

          if ((v21 & 1) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_17;
        }
      }

      else
      {
        if (a7)
        {
LABEL_23:

          goto LABEL_24;
        }

        v21 = 0;
      }

      v22 = ([(CMStyle *)v20 horizontalAlignment]!= 3) | v21;

      if ((v22 & 1) == 0)
      {
        goto LABEL_24;
      }

LABEL_17:
      v20 = objc_alloc_init(CMStyle);
      v23 = [[CMStringProperty alloc] initWithString:0x286EF6750];
      [(CMStyle *)v20 addProperty:v23 forKey:0x286EF4D30];
      if ([(EDStyle *)self->edStyle isAlignmentInfoOverridden])
      {
        v24 = [(EDStyle *)self->edStyle alignmentInfo];
        v25 = [v24 isIndentOverridden];

        if (v25)
        {
          v26 = [(EDStyle *)self->edStyle font];
          [v26 height];
          v28 = v27;
          v29 = [(EDStyle *)self->edStyle alignmentInfo];
          a5 = a5 - (v28 / 20.0 * [v29 indent] + 1.0);
        }
      }

      v30 = [[CMLengthProperty alloc] initWithNumber:a5];
      [(CMStyle *)v20 addProperty:v30 forKey:@"width"];
      if (a6 > 0.0)
      {
        v31 = [[CMLengthProperty alloc] initWithNumber:a6];
        [(CMStyle *)v20 addProperty:v31 forKey:@"height"];
      }

      v32 = [OIXMLElement elementWithType:3];
      [v44 addChild:v32];
      v33 = [(CMStyle *)v20 cssStyleString];
      v34 = [OIXMLAttribute attributeWithName:@"style" stringValue:v33];
      [v32 addAttribute:v34];

      v44 = v32;
      goto LABEL_23;
    }

    [(EMCellTextMapper *)self mapVerticalTextAt:v44 withState:v12 width:v18 height:a6];
  }

LABEL_38:
}

- (void)mapTextRunsAt:(id)a3
{
  v28 = a3;
  edStyle = self->edStyle;
  if (!edStyle)
  {
    goto LABEL_5;
  }

  if ([(EDStyle *)edStyle isAlignmentInfoOverridden])
  {
    v4 = [(EDStyle *)self->edStyle alignmentInfo];
    if ([v4 isTextWrappedOverridden])
    {
      v5 = [(EDStyle *)self->edStyle alignmentInfo];
      v6 = [v5 isTextWrapped];

      if (v6)
      {
LABEL_5:
        v7 = [(EDString *)self->edString string];
        v8 = [CMTextFilter convertLineBreaksToParagraphBreaks:v7];

        goto LABEL_8;
      }
    }

    else
    {
    }
  }

  v8 = [(EDString *)self->edString string];
LABEL_8:
  v9 = [(EDString *)self->edString runs];
  v10 = [v9 count];
  v11 = v10;
  if (v10)
  {
    v12 = 0;
    v13 = v10 - 1;
    while (1)
    {
      v14 = [v9 objectAtIndex:v12];
      v15 = [v14 charIndex];
      v16 = v15;
      if (!v12 && v15)
      {
        v17 = [OIXMLElement elementWithType:16];
        [v28 addChild:v17];
        v18 = [v8 substringWithRange:{0, v16}];
        v19 = [OIXMLTextNode textNodeWithStringValue:v18];
        [v17 addChild:v19];
      }

      if (v13 == v12)
      {
        v20 = [v8 length];
      }

      else
      {
        v21 = [v9 objectAtIndex:v12 + 1];
        v20 = [v21 charIndex];
      }

      if (v16 >= [v8 length])
      {
        break;
      }

      v22 = [OIXMLElement elementWithType:16];
      [v28 addChild:v22];
      v23 = [v8 substringWithRange:{v16, v20 - v16}];
      v24 = [OIXMLTextNode textNodeWithStringValue:v23];
      [v22 addChild:v24];

      v25 = [v14 font];
      if (v25)
      {
        v26 = [EMCellStyle styleForFont:v25];
        [(CMMapper *)self addAttribute:0x286EEA590 toNode:v22 value:v26];
      }

      if (v11 == ++v12)
      {
        goto LABEL_22;
      }
    }
  }

LABEL_22:
}

- (void)mapVerticalTextAt:(id)a3 withState:(id)a4 width:(double)a5 height:(double)a6
{
  v18 = a3;
  v8 = [(EDString *)self->edString string];
  v9 = [CMTextFilter convertToVericalString:v8];

  v10 = objc_alloc_init(CMStyle);
  v11 = [[CMStringProperty alloc] initWithString:0x286EF6750];
  [(CMStyle *)v10 addProperty:v11 forKey:0x286EF4D30];
  v12 = [[CMStringProperty alloc] initWithString:0x286EF56B0];
  [(CMStyle *)v10 addProperty:v12 forKey:@"text-align"];
  v13 = [[CMLengthProperty alloc] initWithNumber:9 unit:0.85];
  [(CMStyle *)v10 addProperty:v13 forKey:0x286F08090];
  if (a6 > 0.0)
  {
    v14 = [[CMLengthProperty alloc] initWithNumber:a6];
    [(CMStyle *)v10 addProperty:v14 forKey:0x286EF6790];
  }

  v15 = [OIXMLElement elementWithType:3];
  [v18 addChild:v15];
  v16 = [OIXMLTextNode textNodeWithStringValue:v9];
  [v15 addChild:v16];

  v17 = [(CMStyle *)v10 cssStyleString];
  [(CMMapper *)self addAttribute:0x286EEA590 toNode:v15 value:v17];
}

@end