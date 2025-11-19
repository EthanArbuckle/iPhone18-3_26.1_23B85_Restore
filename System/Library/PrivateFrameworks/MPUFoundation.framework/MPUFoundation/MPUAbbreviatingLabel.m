@interface MPUAbbreviatingLabel
- (void)_calculateTextSizes;
- (void)_selectBestRepresentation;
- (void)_setTextRepresentation:(id)a3;
- (void)setBounds:(CGRect)a3;
- (void)setFont:(id)a3;
- (void)setFrame:(CGRect)a3;
- (void)setTextRepresentations:(id)a3;
@end

@implementation MPUAbbreviatingLabel

- (void)setTextRepresentations:(id)a3
{
  v6 = a3;
  if (![(NSArray *)self->_textRepresentations isEqualToArray:?])
  {
    v4 = [v6 copy];
    textRepresentations = self->_textRepresentations;
    self->_textRepresentations = v4;

    [(MPUAbbreviatingLabel *)self _calculateTextSizes];
  }
}

- (void)setFont:(id)a3
{
  v4.receiver = self;
  v4.super_class = MPUAbbreviatingLabel;
  [(MPUAbbreviatingLabel *)&v4 setFont:a3];
  [(MPUAbbreviatingLabel *)self _calculateTextSizes];
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(MPUAbbreviatingLabel *)self bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v20.receiver = self;
  v20.super_class = MPUAbbreviatingLabel;
  [(MPUAbbreviatingLabel *)&v20 setFrame:x, y, width, height];
  [(MPUAbbreviatingLabel *)self bounds];
  v22.origin.x = v16;
  v22.origin.y = v17;
  v22.size.width = v18;
  v22.size.height = v19;
  v21.origin.x = v9;
  v21.origin.y = v11;
  v21.size.width = v13;
  v21.size.height = v15;
  if (!CGRectEqualToRect(v21, v22))
  {
    [(MPUAbbreviatingLabel *)self _selectBestRepresentation];
  }
}

- (void)setBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(MPUAbbreviatingLabel *)self bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v20.receiver = self;
  v20.super_class = MPUAbbreviatingLabel;
  [(MPUAbbreviatingLabel *)&v20 setBounds:x, y, width, height];
  [(MPUAbbreviatingLabel *)self bounds];
  v22.origin.x = v16;
  v22.origin.y = v17;
  v22.size.width = v18;
  v22.size.height = v19;
  v21.origin.x = v9;
  v21.origin.y = v11;
  v21.size.width = v13;
  v21.size.height = v15;
  if (!CGRectEqualToRect(v21, v22))
  {
    [(MPUAbbreviatingLabel *)self _selectBestRepresentation];
  }
}

- (void)_calculateTextSizes
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] array];
  textRepresentationSizes = self->_textRepresentationSizes;
  self->_textRepresentationSizes = v3;

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_textRepresentations;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(MPUAbbreviatingLabel *)self _setTextRepresentation:*(*(&v13 + 1) + 8 * v9), v13];
        v10 = self->_textRepresentationSizes;
        v11 = MEMORY[0x277CCAE60];
        [(MPUAbbreviatingLabel *)self intrinsicContentSize];
        v12 = [v11 valueWithCGSize:?];
        [(NSMutableArray *)v10 addObject:v12];

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  [(MPUAbbreviatingLabel *)self _selectBestRepresentation];
}

- (void)_selectBestRepresentation
{
  [(MPUAbbreviatingLabel *)self bounds];
  v4 = v3;
  [(MPUAbbreviatingLabel *)self bounds];
  v5 = CGRectEqualToRect(v14, *MEMORY[0x277CBF3A0]);
  textRepresentations = self->_textRepresentations;
  if (v5)
  {
    v7 = [(NSArray *)textRepresentations firstObject];
  }

  else if ([(NSArray *)textRepresentations count])
  {
    v8 = 0;
    while (1)
    {
      v9 = [(NSMutableArray *)self->_textRepresentationSizes objectAtIndexedSubscript:v8];
      [v9 CGSizeValue];
      v11 = v10;

      if (v11 <= v4)
      {
        break;
      }

      if (++v8 >= [(NSArray *)self->_textRepresentations count])
      {
        goto LABEL_7;
      }
    }

    v7 = [(NSArray *)self->_textRepresentations objectAtIndexedSubscript:v8];
  }

  else
  {
LABEL_7:
    v7 = [(NSArray *)self->_textRepresentations lastObject];
  }

  v12 = v7;
  [(MPUAbbreviatingLabel *)self _setTextRepresentation:?];
}

- (void)_setTextRepresentation:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(MPUAbbreviatingLabel *)self attributedText];
    v6 = [v5 isEqualToAttributedString:v4];

    if ((v6 & 1) == 0)
    {
      v12 = self;
      v7 = &selRef_setAttributedText_;
      v8 = &v12;
LABEL_6:
      v8[1] = MPUAbbreviatingLabel;
      objc_msgSendSuper2(v8, *v7, v4, v11);
    }
  }

  else
  {
    v9 = [(MPUAbbreviatingLabel *)self text];
    v10 = [v9 isEqualToString:v4];

    if ((v10 & 1) == 0)
    {
      v11 = self;
      v7 = &selRef_setText_;
      v8 = &v11;
      goto LABEL_6;
    }
  }
}

@end