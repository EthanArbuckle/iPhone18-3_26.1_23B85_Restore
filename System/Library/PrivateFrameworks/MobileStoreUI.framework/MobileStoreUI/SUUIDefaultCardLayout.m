@interface SUUIDefaultCardLayout
- (double)topInsetForViewElement:(id)a3 previousViewElement:(id)a4 width:(double)a5;
- (id)attributedStringForButton:(id)a3;
- (id)attributedStringForLabel:(id)a3;
@end

@implementation SUUIDefaultCardLayout

- (id)attributedStringForButton:(id)a3
{
  v3 = a3;
  v4 = [v3 buttonTitleStyle];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [v3 style];
  }

  v7 = v6;

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

  v11 = [v3 buttonText];
  v12 = [v11 attributedStringWithDefaultFont:v8 foregroundColor:0 textAlignment:v10 style:v7];

  return v12;
}

- (id)attributedStringForLabel:(id)a3
{
  v4 = a3;
  v5 = [v4 style];
  v6 = SUUIViewElementFontWithStyle(v5);
  v7 = [(SUUICardLayout *)self layoutContext];
  v8 = [v7 tintColor];
  v9 = SUUIViewElementPlainColorWithStyle(v5, v8);

  v10 = SUUIViewElementAlignmentForStyle(v5);
  if (v10)
  {
    v11 = SUUIViewElementNSTextAlignmentForIKElementAlignment(v10);
  }

  else
  {
    v11 = 1;
  }

  v12 = [v4 labelViewStyle];
  if (v12 <= 5)
  {
    if (((1 << v12) & 0x1B) != 0)
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

      v13 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.6];
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

      v13 = [MEMORY[0x277D75348] blackColor];
    }

    v9 = v13;
  }

LABEL_17:
  v14 = [v4 text];
  v15 = [v14 attributedStringWithDefaultFont:v6 foregroundColor:v9 textAlignment:v11];

  return v15;
}

- (double)topInsetForViewElement:(id)a3 previousViewElement:(id)a4 width:(double)a5
{
  v8 = a3;
  v9 = a4;
  if ([v9 elementType] == 66)
  {
    v10 = [MEMORY[0x277D759A0] mainScreen];
    [v10 bounds];
    v12 = v11;
    v14 = v13;

    if (v14 < v12)
    {
      v14 = v12;
    }

    v15 = 12.0;
    if ([v8 elementType] != 131 && objc_msgSend(v9, "elementType") != 131)
    {
      v15 = 20.0;
      if (v14 <= 736.0)
      {
        v16 = [v8 parent];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || (v15 = 12.0, ([v16 isAdCard] & 1) == 0))
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
    [(SUUICardLayout *)&v19 topInsetForViewElement:v8 previousViewElement:v9 width:a5];
    v15 = v17;
  }

  return v15;
}

@end