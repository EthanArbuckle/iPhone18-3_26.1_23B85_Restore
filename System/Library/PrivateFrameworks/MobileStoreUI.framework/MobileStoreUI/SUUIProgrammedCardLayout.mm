@interface SUUIProgrammedCardLayout
+ (BOOL)allowsViewElement:(id)element;
- (double)bottomInsetForLastViewElement:(id)element width:(double)width;
- (double)topInsetForViewElement:(id)element previousViewElement:(id)viewElement width:(double)width;
- (id)_fontForButton:(id)button;
- (id)_fontForLabel:(id)label;
- (id)_stringLayoutForViewElement:(id)element width:(double)width;
- (id)attributedStringForButton:(id)button;
- (id)attributedStringForLabel:(id)label;
@end

@implementation SUUIProgrammedCardLayout

+ (BOOL)allowsViewElement:(id)element
{
  elementType = [element elementType];
  result = 1;
  if (elementType > 0x32 || ((1 << elementType) & 0x6000000001000) == 0)
  {
    return elementType == 138;
  }

  return result;
}

- (id)attributedStringForButton:(id)button
{
  buttonCopy = button;
  style = [buttonCopy style];
  v6 = SUUIViewElementAlignmentForStyle(style);

  if (v6)
  {
    v7 = SUUIViewElementNSTextAlignmentForIKElementAlignment(v6);
  }

  else
  {
    v7 = 1;
  }

  buttonText = [buttonCopy buttonText];
  v9 = [(SUUIProgrammedCardLayout *)self _fontForButton:buttonCopy];
  style2 = [buttonCopy style];

  v11 = [buttonText attributedStringWithDefaultFont:v9 foregroundColor:0 textAlignment:v7 style:style2];

  return v11;
}

- (id)attributedStringForLabel:(id)label
{
  labelCopy = label;
  style = [labelCopy style];
  textAlignment = [style textAlignment];
  if (textAlignment)
  {
    v7 = SUUIViewElementNSTextAlignmentForIKElementAlignment(textAlignment);
  }

  else
  {
    v7 = 1;
  }

  layoutContext = [(SUUICardLayout *)self layoutContext];
  tintColor = [layoutContext tintColor];
  v10 = SUUIViewElementPlainColorWithStyle(style, tintColor);

  if (!v10)
  {
    if ([labelCopy labelViewStyle] == 5)
    {
      [MEMORY[0x277D75348] blackColor];
    }

    else
    {
      [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.8];
    }
    v10 = ;
  }

  text = [labelCopy text];
  v12 = [(SUUIProgrammedCardLayout *)self _fontForLabel:labelCopy];
  v13 = [text attributedStringWithDefaultFont:v12 foregroundColor:v10 textAlignment:v7 style:style];

  return v13;
}

- (double)bottomInsetForLastViewElement:(id)element width:(double)width
{
  v4 = [(SUUIProgrammedCardLayout *)self _stringLayoutForViewElement:element width:width];
  v5 = v4;
  if (v4)
  {
    [v4 boundingSize];
    v7 = v6;
    [v5 baselineOffset];
    *&v8 = v7 - v8;
    v9 = 30.0 - roundf(*&v8);
  }

  else
  {
    v9 = 30.0;
  }

  return v9;
}

- (double)topInsetForViewElement:(id)element previousViewElement:(id)viewElement width:(double)width
{
  elementCopy = element;
  viewElementCopy = viewElement;
  elementType = [elementCopy elementType];
  if ((elementType - 49) < 2)
  {
    v11 = 20.0;
  }

  else
  {
    if (elementType == 138)
    {
      v12 = [(SUUIProgrammedCardLayout *)self _fontForLabel:elementCopy];
    }

    else
    {
      v11 = 0.0;
      if (elementType != 12)
      {
        goto LABEL_8;
      }

      v12 = [(SUUIProgrammedCardLayout *)self _fontForButton:elementCopy];
    }

    v13 = v12;
    [v12 lineHeight];
    *&v14 = v14 + v14;
    v11 = roundf(*&v14);
  }

LABEL_8:
  v15 = [(SUUIProgrammedCardLayout *)self _stringLayoutForViewElement:elementCopy width:width];
  v16 = v15;
  if (v15)
  {
    [v15 firstBaselineOffset];
    *&v17 = v17;
    v11 = v11 - roundf(*&v17);
  }

  v18 = [(SUUIProgrammedCardLayout *)self _stringLayoutForViewElement:viewElementCopy width:width];

  if (v18)
  {
    [v18 boundingSize];
    v20 = v19;
    [v18 baselineOffset];
    *&v21 = v20 - v21;
    v11 = v11 - roundf(*&v21);
  }

  return v11;
}

- (id)_fontForButton:(id)button
{
  buttonCopy = button;
  buttonTitleStyle = [buttonCopy buttonTitleStyle];
  v5 = buttonTitleStyle;
  if (buttonTitleStyle)
  {
    v6 = SUUIViewElementFontWithStyle(buttonTitleStyle);
  }

  else
  {
    style = [buttonCopy style];
    v6 = SUUIViewElementFontWithStyle(style);
  }

  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = [MEMORY[0x277D74300] systemFontOfSize:18.0];
  }

  v9 = v8;

  return v9;
}

- (id)_fontForLabel:(id)label
{
  labelCopy = label;
  style = [labelCopy style];
  v5 = SUUIViewElementFontWithStyle(style);

  if (!v5)
  {
    labelViewStyle = [labelCopy labelViewStyle];
    v7 = 14.0;
    if (labelViewStyle == 5)
    {
      v7 = 20.0;
    }

    v5 = [MEMORY[0x277D74300] systemFontOfSize:v7];
  }

  return v5;
}

- (id)_stringLayoutForViewElement:(id)element width:(double)width
{
  elementCopy = element;
  elementType = [elementCopy elementType];
  if (elementType == 138 || elementType == 12)
  {
    layoutContext = [(SUUICardLayout *)self layoutContext];
    labelLayoutCache = [layoutContext labelLayoutCache];
    v11 = [labelLayoutCache layoutForWidth:width viewElement:elementCopy];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end