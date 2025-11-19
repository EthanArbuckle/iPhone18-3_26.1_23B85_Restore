@interface SUUIStarRatingViewElementView
+ (CGSize)preferredSizeForViewElement:(id)a3 context:(id)a4;
+ (CGSize)sizeThatFitsWidth:(double)a3 viewElement:(id)a4 context:(id)a5;
+ (id)_attributedStringWithViewElement:(id)a3 context:(id)a4;
+ (id)textPropertiesForViewElement:(id)a3 width:(double)a4 context:(id)a5;
+ (void)requestLayoutForViewElement:(id)a3 width:(double)a4 context:(id)a5;
- (CGSize)sizeThatFits:(CGSize)a3;
- (SUUIStarRatingViewElementView)initWithFrame:(CGRect)a3;
- (void)drawRect:(CGRect)a3;
- (void)reloadWithViewElement:(id)a3 width:(double)a4 context:(id)a5;
- (void)setContentInset:(UIEdgeInsets)a3;
@end

@implementation SUUIStarRatingViewElementView

- (SUUIStarRatingViewElementView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = SUUIStarRatingViewElementView;
  v3 = [(SUUIStarRatingViewElementView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_elementSpacing = 3;
    [(SUUIStarRatingViewElementView *)v3 setContentMode:3];
  }

  return v4;
}

+ (CGSize)preferredSizeForViewElement:(id)a3 context:(id)a4
{
  v4 = *MEMORY[0x277CBF3A8];
  v5 = *(MEMORY[0x277CBF3A8] + 8);
  result.height = v5;
  result.width = v4;
  return result;
}

+ (void)requestLayoutForViewElement:(id)a3 width:(double)a4 context:(id)a5
{
  v8 = a5;
  v9 = a3;
  v11 = [a1 _attributedStringWithViewElement:v9 context:v8];
  v10 = [v8 labelLayoutCache];

  [v10 requestLayoutForViewElement:v9 attributedString:v11 width:a4];
}

+ (CGSize)sizeThatFitsWidth:(double)a3 viewElement:(id)a4 context:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [SUUIRatingStarsCache cacheWithProperties:1];
  [v8 ratingValue];
  v11 = [v9 ratingStarsImageForRating:v10];

  [v11 size];
  v13 = v12;
  v15 = v14;
  v16 = [v7 labelLayoutCache];

  [v16 sizeForViewElement:v8 width:a3];
  v18 = v17;
  v20 = v19;

  if (v15 < v20 && v18 > 0.00000011920929)
  {
    v15 = v20;
  }

  if (v18 <= 0.00000011920929)
  {
    v22 = v13;
  }

  else
  {
    v22 = v13 + v18 + 3.0;
  }

  v23 = v22;
  v24 = v15;
  result.height = v24;
  result.width = v23;
  return result;
}

+ (id)textPropertiesForViewElement:(id)a3 width:(double)a4 context:(id)a5
{
  v7 = a3;
  v8 = [a5 labelLayoutCache];
  v9 = [v8 layoutForWidth:a4 viewElement:v7];

  if (v9)
  {
    v10 = [[SUUIViewTextProperties alloc] initWithStringLayout:v9];
    v11 = [SUUIRatingStarsCache cacheWithProperties:1];
    [v7 ratingValue];
    v13 = [v11 ratingStarsImageForRating:v12];

    [v9 boundingSize];
    v15 = v14;
    [v13 size];
    if (v15 < v16)
    {
      [(SUUIViewTextProperties *)v10 setBaselineOffsetFromBottom:0.0];
      [(SUUIViewTextProperties *)v10 setFirstBaselineOffset:0.0];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)reloadWithViewElement:(id)a3 width:(double)a4 context:(id)a5
{
  v14 = a3;
  v8 = a5;
  v9 = [SUUIRatingStarsCache cacheWithProperties:1];
  [v14 ratingValue];
  v11 = [v9 ratingStarsImageForRating:v10];

  if (self->_starRatingImage != v11)
  {
    objc_storeStrong(&self->_starRatingImage, v11);
    [(SUUIStarRatingViewElementView *)self setNeedsDisplay];
  }

  v12 = [v8 labelLayoutCache];
  v13 = [v12 layoutForWidth:a4 viewElement:v14];

  if (v13 != self->_textLayout)
  {
    objc_storeStrong(&self->_textLayout, v13);
    [(SUUIStarRatingViewElementView *)self setNeedsDisplay];
  }
}

- (void)setContentInset:(UIEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.left;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_contentInset.top, v3), vceqq_f64(*&self->_contentInset.bottom, v4)))) & 1) == 0)
  {
    self->_contentInset = a3;
    [(SUUIStarRatingViewElementView *)self setNeedsDisplay];
  }
}

- (void)drawRect:(CGRect)a3
{
  [(SUUIStarRatingViewElementView *)self bounds:a3.origin.x];
  v5 = v4;
  v7 = v6;
  v8 = MEMORY[0x277CBF3A0];
  v10 = *(MEMORY[0x277CBF3A0] + 8);
  v9 = *(MEMORY[0x277CBF3A0] + 16);
  v11 = *(MEMORY[0x277CBF3A0] + 24);
  ShouldReverseLayoutDirection = storeShouldReverseLayoutDirection();
  starRatingImage = self->_starRatingImage;
  v14 = v11;
  v15 = v9;
  v16 = v10;
  if (starRatingImage)
  {
    [(UIImage *)starRatingImage size];
    v14 = v17;
    *&v17 = (v7 - v17 + 2.0) * 0.5;
    v16 = floorf(*&v17);
  }

  rect = v15;
  v18 = *v8;
  textLayout = self->_textLayout;
  if (textLayout && ([(SUUIAttributedStringLayout *)textLayout boundingSize], v9 = v20, v11 = v21, *&v20 = (v7 - v21) * 0.5, v10 = floorf(*&v20), self->_starRatingImage))
  {
    v22 = v18;
    if ((ShouldReverseLayoutDirection & 1) == 0)
    {
      v33.origin.x = v18;
      v33.origin.y = v16;
      v33.size.width = rect;
      v33.size.height = v14;
      v22 = CGRectGetMaxX(v33) + self->_elementSpacing;
    }

    if (v9 >= v5 - v22)
    {
      v9 = v5 - v22;
    }

    if (v14 < v11)
    {
      [(SUUIAttributedStringLayout *)self->_textLayout baselineOffset];
      *&v23 = v23 + v10 - v14 + 2.0;
      v16 = ceilf(*&v23);
    }
  }

  else
  {
    v22 = v18;
  }

  if (ShouldReverseLayoutDirection && self->_starRatingImage)
  {
    v34.origin.x = v22;
    v34.origin.y = v10;
    v34.size.width = v9;
    v34.size.height = v11;
    v18 = CGRectGetMaxX(v34) + self->_elementSpacing;
  }

  v31 = [(SUUIAttributedStringLayout *)self->_textLayout attributedString];
  if (v31)
  {
    v24 = [(SUUIAttributedStringLayout *)self->_textLayout stringDrawingContext];
    [v31 drawWithRect:33 options:v24 context:{v22, v10, v9, v11}];
  }

  if (storeShouldReverseLayoutDirection())
  {
    v25 = MEMORY[0x277D755B8];
    v26 = [(UIImage *)self->_starRatingImage CGImage];
    [(UIImage *)self->_starRatingImage scale];
    v27 = [v25 imageWithCGImage:v26 scale:4 orientation:?];
    v28 = self->_starRatingImage;
    self->_starRatingImage = v27;
  }

  [(UIImage *)self->_starRatingImage drawInRect:0 blendMode:v18 alpha:v16, recta, v14, 1.0];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  starRatingImage = self->_starRatingImage;
  if (starRatingImage)
  {
    [(UIImage *)starRatingImage size:a3.width];
    v6 = v5;
    v8 = v7;
  }

  else
  {
    v6 = *MEMORY[0x277CBF3A8];
    v8 = *(MEMORY[0x277CBF3A8] + 8);
  }

  textLayout = self->_textLayout;
  if (textLayout)
  {
    [(SUUIAttributedStringLayout *)textLayout boundingSize];
  }

  else
  {
    v10 = *MEMORY[0x277CBF3A8];
    v11 = *(MEMORY[0x277CBF3A8] + 8);
  }

  if (self->_starRatingImage)
  {
    if (self->_textLayout)
    {
      v10 = v10 + v6 + self->_elementSpacing;
      if (v8 >= v11)
      {
        v11 = v8;
      }
    }

    else
    {
      v10 = v6;
      v11 = v8;
    }
  }

  result.height = v11;
  result.width = v10;
  return result;
}

+ (id)_attributedStringWithViewElement:(id)a3 context:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 style];
  v8 = SUUIViewElementFontWithStyle(v7);
  if (!v8)
  {
    v9 = [v6 containerViewElementType];
    if (v9 == 134 || v9 == 104)
    {
      v10 = SUUIFontPreferredFontForTextStyle(21);
    }

    else
    {
      v10 = SUUIFontForTextStyle(10);
    }

    v8 = v10;
  }

  v11 = [v6 tintColor];
  v12 = SUUIViewElementPlainColorWithStyle(v7, v11);

  if (!v12)
  {
    v12 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.6];
  }

  v13 = [v5 text];
  v14 = [v13 attributedStringWithDefaultFont:v8 foregroundColor:v12 style:v7];

  return v14;
}

@end