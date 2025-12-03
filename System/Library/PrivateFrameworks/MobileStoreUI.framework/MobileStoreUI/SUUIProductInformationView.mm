@interface SUUIProductInformationView
- (CGSize)sizeThatFits:(CGSize)fits;
- (SUUIProductInformationView)initWithFrame:(CGRect)frame;
- (UIEdgeInsets)contentInset;
- (double)_keyWidth;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)color;
- (void)setColorScheme:(id)scheme;
- (void)setInformationLines:(id)lines;
- (void)setTitle:(id)title;
@end

@implementation SUUIProductInformationView

- (SUUIProductInformationView)initWithFrame:(CGRect)frame
{
  v16.receiver = self;
  v16.super_class = SUUIProductInformationView;
  v3 = [(SUUIProductInformationView *)&v16 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    __asm { FMOV            V0.2D, #15.0 }

    *&v3->_contentInset.top = _Q0;
    *&v3->_contentInset.bottom = _Q0;
    v10 = objc_alloc_init(MEMORY[0x277D75D18]);
    separatorView = v4->_separatorView;
    v4->_separatorView = v10;

    v12 = v4->_separatorView;
    primaryTextColor = [(SUUIColorScheme *)v4->_colorScheme primaryTextColor];
    if (primaryTextColor)
    {
      [(UIView *)v12 setBackgroundColor:primaryTextColor];
    }

    else
    {
      v14 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.2];
      [(UIView *)v12 setBackgroundColor:v14];
    }

    [(SUUIProductInformationView *)v4 addSubview:v4->_separatorView];
  }

  return v4;
}

- (void)setInformationLines:(id)lines
{
  v77 = *MEMORY[0x277D85DE8];
  linesCopy = lines;
  if (self->_informationLines != linesCopy)
  {
    v49 = linesCopy;
    objc_storeStrong(&self->_informationLines, lines);
    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v7 = self->_keyLabels;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v67 objects:v76 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v68;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v68 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [*(*(&v67 + 1) + 8 * i) removeFromSuperview];
        }

        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v67 objects:v76 count:16];
      }

      while (v9);
    }

    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v11 = self->_valueLabels;
    v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v63 objects:v75 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v64;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v64 != v14)
          {
            objc_enumerationMutation(v11);
          }

          [*(*(&v63 + 1) + 8 * i) removeFromSuperview];
        }

        v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v63 objects:v75 count:16];
      }

      while (v13);
    }

    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v15 = self->_imageValues;
    v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v59 objects:v74 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v60;
      do
      {
        for (j = 0; j != v17; ++j)
        {
          if (*v60 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v59 + 1) + 8 * j);
          i = [MEMORY[0x277CBEB68] null];

          if (v20 != i)
          {
            [v20 removeFromSuperview];
          }
        }

        v17 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v59 objects:v74 count:16];
      }

      while (v17);
    }

    array = [MEMORY[0x277CBEB18] array];
    keyLabels = self->_keyLabels;
    self->_keyLabels = array;

    array2 = [MEMORY[0x277CBEB18] array];
    valueLabels = self->_valueLabels;
    self->_valueLabels = array2;

    array3 = [MEMORY[0x277CBEB18] array];
    imageValues = self->_imageValues;
    self->_imageValues = array3;

    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    obj = self->_informationLines;
    v54 = [(NSArray *)obj countByEnumeratingWithState:&v55 objects:v73 count:16];
    if (v54)
    {
      v52 = *MEMORY[0x277D74118];
      v53 = *v56;
      v51 = *MEMORY[0x277D740C0];
      do
      {
        for (k = 0; k != v54; ++k)
        {
          if (*v56 != v53)
          {
            objc_enumerationMutation(obj);
          }

          v28 = *(*(&v55 + 1) + 8 * k);
          v29 = objc_alloc_init(MEMORY[0x277D756B8]);
          v30 = [MEMORY[0x277D74300] systemFontOfSize:12.0];
          [v29 setFont:v30];

          [v29 setTextAlignment:2];
          backgroundColor = [(SUUIProductInformationView *)self backgroundColor];
          [v29 setBackgroundColor:backgroundColor];

          v32 = [v28 objectAtIndex:0];
          [v29 setText:v32];

          secondaryTextColor = [(SUUIColorScheme *)self->_colorScheme secondaryTextColor];
          if (secondaryTextColor)
          {
            [v29 setTextColor:secondaryTextColor];
          }

          else
          {
            v34 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.4];
            [v29 setTextColor:v34];
          }

          [(SUUIProductInformationView *)self addSubview:v29];
          [(NSMutableArray *)self->_keyLabels addObject:v29];
          v35 = objc_alloc_init(MEMORY[0x277D74240]);
          [v35 setMinimumLineHeight:16.0];
          v71[0] = v52;
          v71[1] = v51;
          v72[0] = v35;
          primaryTextColor = [(SUUIColorScheme *)self->_colorScheme primaryTextColor];
          v37 = primaryTextColor;
          if (!primaryTextColor)
          {
            i = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.8];
            v37 = i;
          }

          v72[1] = v37;
          v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v72 forKeys:v71 count:2];
          if (!primaryTextColor)
          {
          }

          v39 = objc_alloc_init(MEMORY[0x277D756B8]);
          v40 = [MEMORY[0x277D74300] systemFontOfSize:12.0];
          [v39 setFont:v40];

          [v39 setNumberOfLines:0];
          backgroundColor2 = [(SUUIProductInformationView *)self backgroundColor];
          [v39 setBackgroundColor:backgroundColor2];

          v42 = objc_alloc(MEMORY[0x277CCA898]);
          v43 = [v28 objectAtIndex:1];
          v44 = [v42 initWithString:v43 attributes:v38];
          [v39 setAttributedText:v44];

          [(SUUIProductInformationView *)self addSubview:v39];
          [(NSMutableArray *)self->_valueLabels addObject:v39];
          if ([v28 count] >= 3)
          {
            v45 = [v28 objectAtIndex:2];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              null = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v45];
              [(SUUIProductInformationView *)self addSubview:null];

              if (null)
              {
                v47 = self->_imageValues;
                goto LABEL_43;
              }
            }

            else
            {
            }
          }

          v48 = self->_imageValues;
          null = [MEMORY[0x277CBEB68] null];
          v47 = v48;
LABEL_43:
          [(NSMutableArray *)v47 addObject:null];
        }

        v54 = [(NSArray *)obj countByEnumeratingWithState:&v55 objects:v73 count:16];
      }

      while (v54);
    }

    [(SUUIProductInformationView *)self setNeedsLayout];
    linesCopy = v49;
  }
}

- (void)setColorScheme:(id)scheme
{
  v39 = *MEMORY[0x277D85DE8];
  schemeCopy = scheme;
  if (self->_colorScheme != schemeCopy)
  {
    v28 = schemeCopy;
    objc_storeStrong(&self->_colorScheme, scheme);
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v6 = self->_keyLabels;
    v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v33 objects:v38 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v34;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v34 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v33 + 1) + 8 * i);
          secondaryTextColor = [(SUUIColorScheme *)self->_colorScheme secondaryTextColor];
          if (secondaryTextColor)
          {
            [v11 setTextColor:secondaryTextColor];
          }

          else
          {
            v13 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.4];
            [v11 setTextColor:v13];
          }
        }

        v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v33 objects:v38 count:16];
      }

      while (v8);
    }

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v14 = self->_valueLabels;
    v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v29 objects:v37 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v30;
      do
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v30 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v29 + 1) + 8 * j);
          primaryTextColor = [(SUUIColorScheme *)self->_colorScheme primaryTextColor];
          if (primaryTextColor)
          {
            [v19 setTextColor:primaryTextColor];
          }

          else
          {
            v21 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.8];
            [v19 setTextColor:v21];
          }
        }

        v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v29 objects:v37 count:16];
      }

      while (v16);
    }

    separatorView = self->_separatorView;
    primaryTextColor2 = [(SUUIColorScheme *)self->_colorScheme primaryTextColor];
    if (primaryTextColor2)
    {
      [(UIView *)separatorView setBackgroundColor:primaryTextColor2];
    }

    else
    {
      v24 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.2];
      [(UIView *)separatorView setBackgroundColor:v24];
    }

    titleLabel = self->_titleLabel;
    secondaryTextColor2 = [(SUUIColorScheme *)self->_colorScheme secondaryTextColor];
    if (secondaryTextColor2)
    {
      [(UILabel *)titleLabel setTextColor:secondaryTextColor2];
    }

    else
    {
      blackColor = [MEMORY[0x277D75348] blackColor];
      [(UILabel *)titleLabel setTextColor:blackColor];
    }

    schemeCopy = v28;
  }
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  text = [(UILabel *)self->_titleLabel text];
  if (text != titleCopy && ([text isEqualToString:titleCopy] & 1) == 0)
  {
    titleLabel = self->_titleLabel;
    if (titleCopy)
    {
      if (!titleLabel)
      {
        v6 = objc_alloc_init(MEMORY[0x277D756B8]);
        v7 = self->_titleLabel;
        self->_titleLabel = v6;

        v8 = self->_titleLabel;
        backgroundColor = [(SUUIProductInformationView *)self backgroundColor];
        [(UILabel *)v8 setBackgroundColor:backgroundColor];

        v10 = self->_titleLabel;
        v11 = [MEMORY[0x277D74300] systemFontOfSize:17.0];
        [(UILabel *)v10 setFont:v11];

        v12 = self->_titleLabel;
        secondaryTextColor = [(SUUIColorScheme *)self->_colorScheme secondaryTextColor];
        if (secondaryTextColor)
        {
          [(UILabel *)v12 setTextColor:secondaryTextColor];
        }

        else
        {
          blackColor = [MEMORY[0x277D75348] blackColor];
          [(UILabel *)v12 setTextColor:blackColor];
        }

        [(SUUIProductInformationView *)self addSubview:self->_titleLabel];
        titleLabel = self->_titleLabel;
      }

      [(UILabel *)titleLabel setText:?];
      [(UILabel *)self->_titleLabel sizeToFit];
    }

    else
    {
      [(UILabel *)titleLabel removeFromSuperview];
      v14 = self->_titleLabel;
      self->_titleLabel = 0;
    }

    [(SUUIProductInformationView *)self setNeedsLayout];
  }
}

- (void)layoutSubviews
{
  [(SUUIProductInformationView *)self bounds];
  v44 = v3;
  top = self->_contentInset.top;
  titleLabel = self->_titleLabel;
  if (titleLabel)
  {
    [(UILabel *)titleLabel frame];
    v7 = v6;
    v9 = v8;
    left = self->_contentInset.left;
    [(UILabel *)self->_titleLabel setFrame:left, top + -4.0];
    v52.origin.x = left;
    v52.origin.y = top + -4.0;
    v52.size.width = v7;
    v52.size.height = v9;
    top = CGRectGetMaxY(v52) + -4.0 + 10.0;
  }

  [(SUUIProductInformationView *)self _keyWidth];
  v48 = v11;
  v12 = self->_contentInset.left;
  right = self->_contentInset.right;
  if ([(NSMutableArray *)self->_keyLabels count])
  {
    v14 = 0;
    v46 = v44 - v12 - right - v48 + -15.0;
    do
    {
      v15 = [(NSMutableArray *)self->_keyLabels objectAtIndex:v14];
      [v15 frame];
      v16 = self->_contentInset.left;
      v17 = v48;
      [v15 sizeThatFits:{v48, 1.79769313e308}];
      v19 = v18;
      [v15 setFrame:{v16, top + -3.0, v48, v18}];
      v20 = [(NSMutableArray *)self->_valueLabels objectAtIndex:v14];
      [v20 frame];
      v53.origin.x = v16;
      v53.origin.y = top + -3.0;
      v53.size.width = v48;
      v53.size.height = v19;
      rect_8 = CGRectGetMaxX(v53) + 15.0;
      [v20 sizeThatFits:{v46, 1.79769313e308}];
      v22 = v21;
      v24 = v23;
      v25 = [(NSMutableArray *)self->_imageValues objectAtIndex:v14];
      null = [MEMORY[0x277CBEB68] null];

      rect = v16;
      if (v25 == null)
      {
        v27 = 0;
        v37 = -2.0;
      }

      else
      {
        v27 = v25;
        [v27 sizeToFit];
        [v27 frame];
        v47 = v28;
        v45 = v29;
        v30 = v48;
        v31 = 15.0;
        v32 = top + -3.0;
        v33 = v19;
        if (v22 > 0.0)
        {
          v31 = 5.0;
          [v20 sizeThatFits:{v46 - (v47 + 5.0), 1.79769313e308, v48, v19}];
          v30 = v34;
          v33 = v35;
          v16 = rect_8;
          v32 = top + -5.0;
          v24 = v33;
          v22 = v34;
        }

        v36 = v16;
        v37 = -2.0;
        [v27 setFrame:{CGRectGetMaxX(*(&v32 - 1)) + v31, top + -2.0, v47, v45}];
        v17 = v48;
      }

      [v20 setFrame:{rect_8, top + -5.0, v22, v24}];
      v54.origin.x = rect;
      v54.origin.y = top + -3.0;
      v54.size.width = v17;
      v54.size.height = v19;
      v38 = CGRectGetMaxY(v54) + v37;
      v55.origin.x = rect_8;
      v55.origin.y = top + -5.0;
      v55.size.width = v22;
      v55.size.height = v24;
      v39 = CGRectGetMaxY(v55) + v37;
      if (v38 < v39)
      {
        v38 = v39;
      }

      if (v27)
      {
        [v27 frame];
        v40 = CGRectGetMaxY(v56) + v37;
        if (v40 >= v38)
        {
          v38 = v40;
        }
      }

      top = v38 + 9.0;

      ++v14;
    }

    while (v14 < [(NSMutableArray *)self->_keyLabels count]);
  }

  separatorView = self->_separatorView;
  if (separatorView)
  {
    [(UIView *)separatorView frame];
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen scale];

    v43 = self->_separatorView;

    [(UIView *)v43 setFrame:?];
  }
}

- (void)setBackgroundColor:(id)color
{
  v26 = *MEMORY[0x277D85DE8];
  colorCopy = color;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = self->_keyLabels;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    do
    {
      v9 = 0;
      do
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v20 + 1) + 8 * v9++) setBackgroundColor:colorCopy];
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v7);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v10 = self->_valueLabels;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v17;
    do
    {
      v14 = 0;
      do
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [*(*(&v16 + 1) + 8 * v14++) setBackgroundColor:colorCopy];
      }

      while (v12 != v14);
      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v12);
  }

  [(UILabel *)self->_titleLabel setBackgroundColor:colorCopy];
  v15.receiver = self;
  v15.super_class = SUUIProductInformationView;
  [(SUUIProductInformationView *)&v15 setBackgroundColor:colorCopy];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  p_contentInset = &self->_contentInset;
  v6 = self->_contentInset.top + self->_contentInset.bottom;
  titleLabel = self->_titleLabel;
  if (titleLabel)
  {
    [(UILabel *)titleLabel frame];
    v6 = v6 + v8 + 10.0 + -4.0 + -4.0;
  }

  [(SUUIProductInformationView *)self _keyWidth];
  v10 = v9;
  left = p_contentInset->left;
  right = p_contentInset->right;
  v31 = v9;
  if ([(NSMutableArray *)self->_keyLabels count])
  {
    v13 = 0;
    v14 = width - left - right - v10 + -15.0;
    v15 = 0.0;
    do
    {
      v16 = [(NSMutableArray *)self->_keyLabels objectAtIndex:v13];
      [v16 frame];
      v18 = v17 + -3.0 + -2.0;

      v19 = [(NSMutableArray *)self->_valueLabels objectAtIndex:v13];
      [v19 sizeThatFits:{v14, 1.79769313e308}];
      v21 = v20;
      v23 = v22;

      if (v18 >= v23 + -5.0 + -2.0)
      {
        v24 = v18;
      }

      else
      {
        v24 = v23 + -5.0 + -2.0;
      }

      if (v24 <= 0.0)
      {
        v25 = [(NSMutableArray *)self->_imageValues objectAtIndex:v13];
        null = [MEMORY[0x277CBEB68] null];

        if (v25 != null)
        {
          v27 = [(NSMutableArray *)self->_imageValues objectAtIndex:v13];
          [v27 frame];
          v24 = v28 + 2.0;
        }
      }

      v6 = v6 + v24;
      if (v21 >= v15)
      {
        v15 = v21;
      }

      ++v13;
    }

    while (v13 < [(NSMutableArray *)self->_keyLabels count]);
  }

  else
  {
    v15 = 0.0;
  }

  if ([(NSMutableArray *)self->_keyLabels count]> 1)
  {
    v6 = v6 + (([(NSMutableArray *)self->_keyLabels count]- 1) * 9.0);
  }

  v29 = v31 + 15.0 + v15 + p_contentInset->left + p_contentInset->right;
  v30 = v6;
  result.height = v30;
  result.width = v29;
  return result;
}

- (double)_keyWidth
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = self->_keyLabels;
  v3 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    v6 = *(MEMORY[0x277CBF390] + 16);
    v7 = *(MEMORY[0x277CBF390] + 24);
    v8 = 0.0;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v12 + 1) + 8 * i) sizeThatFits:{v6, v7, v12}];
        if (v8 < v10)
        {
          v8 = v10;
        }
      }

      v4 = [(NSMutableArray *)v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }

  else
  {
    v8 = 0.0;
  }

  return v8;
}

- (UIEdgeInsets)contentInset
{
  top = self->_contentInset.top;
  left = self->_contentInset.left;
  bottom = self->_contentInset.bottom;
  right = self->_contentInset.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end