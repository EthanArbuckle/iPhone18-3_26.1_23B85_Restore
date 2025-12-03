@interface EMCellTextMapper
+ (double)contentWidthForString:(id)string style:(id)style;
- (EMCellTextMapper)initWithEDString:(id)string style:(id)style parent:(id)parent;
- (double)contentWidth;
- (void)mapAt:(id)at withState:(id)state columnWidth:(double)width height:(double)height spreadLeft:(BOOL)left;
- (void)mapTextRunsAt:(id)at;
- (void)mapVerticalTextAt:(id)at withState:(id)state width:(double)width height:(double)height;
@end

@implementation EMCellTextMapper

- (double)contentWidth
{
  v3 = objc_opt_class();
  string = [(EDString *)self->edString string];
  [v3 contentWidthForString:string style:self->edStyle];
  v6 = v5;

  return v6;
}

- (EMCellTextMapper)initWithEDString:(id)string style:(id)style parent:(id)parent
{
  stringCopy = string;
  styleCopy = style;
  v13.receiver = self;
  v13.super_class = EMCellTextMapper;
  v10 = [(CMMapper *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->edString, string);
    objc_storeStrong(&v11->edStyle, style);
  }

  return v11;
}

+ (double)contentWidthForString:(id)string style:(id)style
{
  stringCopy = string;
  font = [style font];
  name = [font name];
  [font height];
  v9 = v8;
  if ([font isBoldOverridden])
  {
    isBold = [font isBold];
  }

  else
  {
    isBold = 0;
  }

  if ([font isItalicOverridden])
  {
    isItalic = [font isItalic];
  }

  else
  {
    isItalic = 0;
  }

  [stringCopy oi_sizeWithFontName:name size:(v9 / 20.0) bold:isBold italic:isItalic];
  v13 = v12;

  return v13;
}

- (void)mapAt:(id)at withState:(id)state columnWidth:(double)width height:(double)height spreadLeft:(BOOL)left
{
  atCopy = at;
  stateCopy = state;
  if (self->edString)
  {
    edStyle = self->edStyle;
    if (!edStyle || !-[EDStyle isAlignmentInfoOverridden](edStyle, "isAlignmentInfoOverridden") || (-[EDStyle alignmentInfo](self->edStyle, "alignmentInfo"), v14 = objc_claimAutoreleasedReturnValue(), v15 = [v14 textRotation], v14, !v15) || (-[EDStyle font](self->edStyle, "font"), v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v16, "height"), v18 = v17 / 20.0, v16, v18 * 2.6 <= width))
    {
      [(EMCellTextMapper *)self contentWidth];
      if (v19 <= width)
      {
        goto LABEL_24;
      }

      if (![(EDStyle *)self->edStyle isAlignmentInfoOverridden])
      {
        if (left)
        {
LABEL_24:
          runs = [(EDString *)self->edString runs];
          if (runs)
          {
            runs2 = [(EDString *)self->edString runs];
            v37 = [runs2 count] != 0;
          }

          else
          {
            v37 = 0;
          }

          if ([(EDStyle *)self->edStyle isAlignmentInfoOverridden])
          {
            alignmentInfo = [(EDStyle *)self->edStyle alignmentInfo];
            if ([alignmentInfo isTextWrappedOverridden])
            {
              alignmentInfo2 = [(EDStyle *)self->edStyle alignmentInfo];
              isTextWrapped = [alignmentInfo2 isTextWrapped];

              if (isTextWrapped)
              {
                string = [(EDString *)self->edString string];
                string2 = [CMTextFilter convertLineBreaksToParagraphBreaks:string];

                if (!v37)
                {
LABEL_31:
                  if (string2 && [string2 length])
                  {
                    v43 = [OIXMLTextNode textNodeWithStringValue:string2];
                    [atCopy addChild:v43];
                  }

                  goto LABEL_37;
                }

LABEL_36:
                [(EMCellTextMapper *)self mapTextRunsAt:atCopy];
LABEL_37:

                goto LABEL_38;
              }
            }

            else
            {
            }
          }

          string2 = [(EDString *)self->edString string];
          if (!v37)
          {
            goto LABEL_31;
          }

          goto LABEL_36;
        }

        goto LABEL_17;
      }

      alignmentInfo3 = [(EDStyle *)self->edStyle alignmentInfo];
      if ([(CMStyle *)alignmentInfo3 isTextWrappedOverridden])
      {
        isTextWrapped2 = [(CMStyle *)alignmentInfo3 isTextWrapped];
        if (left)
        {

          if ((isTextWrapped2 & 1) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_17;
        }
      }

      else
      {
        if (left)
        {
LABEL_23:

          goto LABEL_24;
        }

        isTextWrapped2 = 0;
      }

      v22 = ([(CMStyle *)alignmentInfo3 horizontalAlignment]!= 3) | isTextWrapped2;

      if ((v22 & 1) == 0)
      {
        goto LABEL_24;
      }

LABEL_17:
      alignmentInfo3 = objc_alloc_init(CMStyle);
      v23 = [[CMStringProperty alloc] initWithString:0x286EF6750];
      [(CMStyle *)alignmentInfo3 addProperty:v23 forKey:0x286EF4D30];
      if ([(EDStyle *)self->edStyle isAlignmentInfoOverridden])
      {
        alignmentInfo4 = [(EDStyle *)self->edStyle alignmentInfo];
        isIndentOverridden = [alignmentInfo4 isIndentOverridden];

        if (isIndentOverridden)
        {
          font = [(EDStyle *)self->edStyle font];
          [font height];
          v28 = v27;
          alignmentInfo5 = [(EDStyle *)self->edStyle alignmentInfo];
          width = width - (v28 / 20.0 * [alignmentInfo5 indent] + 1.0);
        }
      }

      v30 = [[CMLengthProperty alloc] initWithNumber:width];
      [(CMStyle *)alignmentInfo3 addProperty:v30 forKey:@"width"];
      if (height > 0.0)
      {
        v31 = [[CMLengthProperty alloc] initWithNumber:height];
        [(CMStyle *)alignmentInfo3 addProperty:v31 forKey:@"height"];
      }

      v32 = [OIXMLElement elementWithType:3];
      [atCopy addChild:v32];
      cssStyleString = [(CMStyle *)alignmentInfo3 cssStyleString];
      v34 = [OIXMLAttribute attributeWithName:@"style" stringValue:cssStyleString];
      [v32 addAttribute:v34];

      atCopy = v32;
      goto LABEL_23;
    }

    [(EMCellTextMapper *)self mapVerticalTextAt:atCopy withState:stateCopy width:v18 height:height];
  }

LABEL_38:
}

- (void)mapTextRunsAt:(id)at
{
  atCopy = at;
  edStyle = self->edStyle;
  if (!edStyle)
  {
    goto LABEL_5;
  }

  if ([(EDStyle *)edStyle isAlignmentInfoOverridden])
  {
    alignmentInfo = [(EDStyle *)self->edStyle alignmentInfo];
    if ([alignmentInfo isTextWrappedOverridden])
    {
      alignmentInfo2 = [(EDStyle *)self->edStyle alignmentInfo];
      isTextWrapped = [alignmentInfo2 isTextWrapped];

      if (isTextWrapped)
      {
LABEL_5:
        string = [(EDString *)self->edString string];
        string2 = [CMTextFilter convertLineBreaksToParagraphBreaks:string];

        goto LABEL_8;
      }
    }

    else
    {
    }
  }

  string2 = [(EDString *)self->edString string];
LABEL_8:
  runs = [(EDString *)self->edString runs];
  v10 = [runs count];
  v11 = v10;
  if (v10)
  {
    v12 = 0;
    v13 = v10 - 1;
    while (1)
    {
      v14 = [runs objectAtIndex:v12];
      charIndex = [v14 charIndex];
      v16 = charIndex;
      if (!v12 && charIndex)
      {
        v17 = [OIXMLElement elementWithType:16];
        [atCopy addChild:v17];
        v18 = [string2 substringWithRange:{0, v16}];
        v19 = [OIXMLTextNode textNodeWithStringValue:v18];
        [v17 addChild:v19];
      }

      if (v13 == v12)
      {
        charIndex2 = [string2 length];
      }

      else
      {
        v21 = [runs objectAtIndex:v12 + 1];
        charIndex2 = [v21 charIndex];
      }

      if (v16 >= [string2 length])
      {
        break;
      }

      v22 = [OIXMLElement elementWithType:16];
      [atCopy addChild:v22];
      v23 = [string2 substringWithRange:{v16, charIndex2 - v16}];
      v24 = [OIXMLTextNode textNodeWithStringValue:v23];
      [v22 addChild:v24];

      font = [v14 font];
      if (font)
      {
        v26 = [EMCellStyle styleForFont:font];
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

- (void)mapVerticalTextAt:(id)at withState:(id)state width:(double)width height:(double)height
{
  atCopy = at;
  string = [(EDString *)self->edString string];
  v9 = [CMTextFilter convertToVericalString:string];

  v10 = objc_alloc_init(CMStyle);
  v11 = [[CMStringProperty alloc] initWithString:0x286EF6750];
  [(CMStyle *)v10 addProperty:v11 forKey:0x286EF4D30];
  v12 = [[CMStringProperty alloc] initWithString:0x286EF56B0];
  [(CMStyle *)v10 addProperty:v12 forKey:@"text-align"];
  v13 = [[CMLengthProperty alloc] initWithNumber:9 unit:0.85];
  [(CMStyle *)v10 addProperty:v13 forKey:0x286F08090];
  if (height > 0.0)
  {
    v14 = [[CMLengthProperty alloc] initWithNumber:height];
    [(CMStyle *)v10 addProperty:v14 forKey:0x286EF6790];
  }

  v15 = [OIXMLElement elementWithType:3];
  [atCopy addChild:v15];
  v16 = [OIXMLTextNode textNodeWithStringValue:v9];
  [v15 addChild:v16];

  cssStyleString = [(CMStyle *)v10 cssStyleString];
  [(CMMapper *)self addAttribute:0x286EEA590 toNode:v15 value:cssStyleString];
}

@end