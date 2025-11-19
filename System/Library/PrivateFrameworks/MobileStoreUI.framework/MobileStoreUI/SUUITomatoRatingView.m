@interface SUUITomatoRatingView
+ (CGSize)preferredSizeForViewElement:(id)a3 context:(id)a4;
+ (CGSize)sizeThatFitsWidth:(double)a3 viewElement:(id)a4 context:(id)a5;
+ (id)_attributedStringForRating:(id)a3 context:(id)a4;
+ (id)_tomatoImageForFreshness:(int64_t)a3;
+ (void)requestLayoutForViewElement:(id)a3 width:(double)a4 context:(id)a5;
- (CGSize)sizeThatFits:(CGSize)a3;
- (void)layoutSubviews;
- (void)reloadWithViewElement:(id)a3 width:(double)a4 context:(id)a5;
- (void)setBackgroundColor:(id)a3;
@end

@implementation SUUITomatoRatingView

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
  v11 = [a1 _attributedStringForRating:v9 context:v8];
  v10 = [v8 labelLayoutCache];

  [v10 requestLayoutForViewElement:v9 attributedString:v11 width:a4];
}

+ (CGSize)sizeThatFitsWidth:(double)a3 viewElement:(id)a4 context:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [a1 _tomatoImageForFreshness:{objc_msgSend(v9, "freshness")}];
  [v10 size];
  v12 = v11;
  v14 = v13;
  v15 = [v8 labelLayoutCache];

  v16 = [v15 layoutForWidth:a3 viewElement:v9];

  if (v16)
  {
    [v16 boundingSize];
    if (v14 < v18)
    {
      v14 = v18;
    }

    v12 = v12 + v17 + 3.0;
  }

  v19 = v12;
  v20 = v14;
  result.height = v20;
  result.width = v19;
  return result;
}

- (void)reloadWithViewElement:(id)a3 width:(double)a4 context:(id)a5
{
  v22 = a3;
  v8 = a5;
  imageView = self->_imageView;
  if (!imageView)
  {
    v10 = objc_alloc_init(MEMORY[0x277D755E8]);
    v11 = self->_imageView;
    self->_imageView = v10;

    v12 = self->_imageView;
    v13 = [(SUUITomatoRatingView *)self backgroundColor];
    [(UIImageView *)v12 setBackgroundColor:v13];

    [(SUUITomatoRatingView *)self addSubview:self->_imageView];
    imageView = self->_imageView;
  }

  v14 = [objc_opt_class() _tomatoImageForFreshness:{objc_msgSend(v22, "freshness")}];
  [(UIImageView *)imageView setImage:v14];

  labelView = self->_labelView;
  if (!labelView)
  {
    v16 = objc_alloc_init(SUUIAttributedStringView);
    v17 = self->_labelView;
    self->_labelView = v16;

    v18 = self->_labelView;
    v19 = [(SUUITomatoRatingView *)self backgroundColor];
    [(SUUIAttributedStringView *)v18 setBackgroundColor:v19];

    [(SUUIAttributedStringView *)self->_labelView setUserInteractionEnabled:0];
    [(SUUITomatoRatingView *)self addSubview:self->_labelView];
    labelView = self->_labelView;
  }

  v20 = [v8 labelLayoutCache];
  v21 = [v20 layoutForWidth:a4 viewElement:v22];
  [(SUUIAttributedStringView *)labelView setLayout:v21];

  [(SUUITomatoRatingView *)self setNeedsLayout];
}

- (void)layoutSubviews
{
  [(SUUITomatoRatingView *)self bounds];
  v4 = v3;
  v6 = v5;
  v7 = *MEMORY[0x277CBF3A0];
  [(UIImageView *)self->_imageView sizeThatFits:v3, v5];
  v9 = v8;
  v11 = v10;
  *&v8 = (v6 - v10) * 0.5;
  v12 = floorf(*&v8);
  [(UIImageView *)self->_imageView setFrame:v7, v12, v9, v10];
  [(SUUIAttributedStringView *)self->_labelView sizeThatFits:v4, v6];
  v15.origin.x = v7;
  v15.origin.y = v12;
  v15.size.width = v9;
  v15.size.height = v11;
  CGRectGetMaxX(v15);
  labelView = self->_labelView;

  [(SUUIAttributedStringView *)labelView setFrame:?];
}

- (void)setBackgroundColor:(id)a3
{
  imageView = self->_imageView;
  v5 = a3;
  [(UIImageView *)imageView setBackgroundColor:v5];
  [(SUUIAttributedStringView *)self->_labelView setBackgroundColor:v5];
  v6.receiver = self;
  v6.super_class = SUUITomatoRatingView;
  [(SUUITomatoRatingView *)&v6 setBackgroundColor:v5];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  [(UIImageView *)self->_imageView sizeThatFits:?];
  v7 = v6;
  v9 = v8;
  [(SUUIAttributedStringView *)self->_labelView sizeThatFits:width, height];
  v12 = v7 + 3.0 + v11;
  if (v9 >= v10)
  {
    v10 = v9;
  }

  result.height = v10;
  result.width = v12;
  return result;
}

+ (id)_attributedStringForRating:(id)a3 context:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v6 ratingText];
  v8 = [v6 style];

  v9 = SUUIViewElementFontWithStyle(v8);
  if (!v9)
  {
    v9 = SUUIFontForTextStyle(10);
  }

  v10 = [v5 tintColor];
  v11 = SUUIViewElementPlainColorWithStyle(v8, v10);

  if (!v11)
  {
    v11 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.6];
  }

  v12 = [v7 attributedStringWithDefaultFont:v9 foregroundColor:v11 style:v8];

  return v12;
}

+ (id)_tomatoImageForFreshness:(int64_t)a3
{
  if (a3 <= 2)
  {
    v4 = off_2798FC140[a3];
    v5 = MEMORY[0x277D755B8];
    v6 = SUUIBundle();
    v3 = [v5 imageNamed:v4 inBundle:v6];
  }

  return v3;
}

@end