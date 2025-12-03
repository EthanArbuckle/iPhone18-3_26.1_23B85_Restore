@interface SUUIDefaultCardLayout
- (double)topInsetForViewElement:(id)element previousViewElement:(id)viewElement width:(double)width;
- (id)attributedStringForButton:(id)button;
- (id)attributedStringForLabel:(id)label;
@end

@implementation SUUIDefaultCardLayout

- (id)attributedStringForButton:(id)button
{
  buttonCopy = button;
  buttonTitleStyle = [buttonCopy buttonTitleStyle];
  v5 = buttonTitleStyle;
  if (buttonTitleStyle)
  {
    style = buttonTitleStyle;
  }

  else
  {
    style = [buttonCopy style];
  }

  v7 = style;

  v8 = SUUIViewElementFontWithStyle(v7);
  if (!v8)
  {
    v8 = [MEMORY[0x277D74300] systemFontOfSize:18.0];
  }

  v9 = SUUIViewElementAlignmentForStyle(v7);
  if (v9)
  {
    v10 = SUUIViewElementNSTextAlignmentForIKElementAlignment(v9);
  }

  else
  {
    v10 = 1;
  }

  buttonText = [buttonCopy buttonText];
  v12 = [buttonText attributedStringWithDefaultFont:v8 foregroundColor:0 textAlignment:v10 style:v7];

  return v12;
}

- (id)attributedStringForLabel:(id)label
{
  labelCopy = label;
  style = [labelCopy style];
  v6 = SUUIViewElementFontWithStyle(style);
  layoutContext = [(SUUICardLayout *)self layoutContext];
  tintColor = [layoutContext tintColor];
  v9 = SUUIViewElementPlainColorWithStyle(style, tintColor);

  v10 = SUUIViewElementAlignmentForStyle(style);
  if (v10)
  {
    v11 = SUUIViewElementNSTextAlignmentForIKElementAlignment(v10);
  }

  else
  {
    v11 = 1;
  }

  labelViewStyle = [labelCopy labelViewStyle];
  if (labelViewStyle <= 5)
  {
    if (((1 << labelViewStyle) & 0x1B) != 0)
    {
      if (v6)
      {
        if (v9)
        {
          goto LABEL_17;
        }
      }

      else
      {
        v6 = [MEMORY[0x277D74300] systemFontOfSize:12.0];
        if (v9)
        {
          goto LABEL_17;
        }
      }

      blackColor = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.6];
    }

    else
    {
      if (v6)
      {
        if (v9)
        {
          goto LABEL_17;
        }
      }

      else
      {
        v6 = [MEMORY[0x277D74300] systemFontOfSize:14.0];
        if (v9)
        {
          goto LABEL_17;
        }
      }

      blackColor = [MEMORY[0x277D75348] blackColor];
    }

    v9 = blackColor;
  }

LABEL_17:
  text = [labelCopy text];
  v15 = [text attributedStringWithDefaultFont:v6 foregroundColor:v9 textAlignment:v11];

  return v15;
}

- (double)topInsetForViewElement:(id)element previousViewElement:(id)viewElement width:(double)width
{
  elementCopy = element;
  viewElementCopy = viewElement;
  if ([viewElementCopy elementType] == 66)
  {
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen bounds];
    v12 = v11;
    v14 = v13;

    if (v14 < v12)
    {
      v14 = v12;
    }

    v15 = 12.0;
    if ([elementCopy elementType] != 131 && objc_msgSend(viewElementCopy, "elementType") != 131)
    {
      v15 = 20.0;
      if (v14 <= 736.0)
      {
        parent = [elementCopy parent];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || (v15 = 12.0, ([parent isAdCard] & 1) == 0))
        {
          if (v14 <= 568.0)
          {
            v15 = 10.0;
          }

          else
          {
            v15 = 15.0;
          }
        }
      }
    }
  }

  else
  {
    v19.receiver = self;
    v19.super_class = SUUIDefaultCardLayout;
    [(SUUICardLayout *)&v19 topInsetForViewElement:elementCopy previousViewElement:viewElementCopy width:width];
    v15 = v17;
  }

  return v15;
}

@end