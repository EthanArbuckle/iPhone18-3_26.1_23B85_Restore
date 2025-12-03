@interface SUUITomatoRatingView
+ (CGSize)preferredSizeForViewElement:(id)element context:(id)context;
+ (CGSize)sizeThatFitsWidth:(double)width viewElement:(id)element context:(id)context;
+ (id)_attributedStringForRating:(id)rating context:(id)context;
+ (id)_tomatoImageForFreshness:(int64_t)freshness;
+ (void)requestLayoutForViewElement:(id)element width:(double)width context:(id)context;
- (CGSize)sizeThatFits:(CGSize)fits;
- (void)layoutSubviews;
- (void)reloadWithViewElement:(id)element width:(double)width context:(id)context;
- (void)setBackgroundColor:(id)color;
@end

@implementation SUUITomatoRatingView

+ (CGSize)preferredSizeForViewElement:(id)element context:(id)context
{
  v4 = *MEMORY[0x277CBF3A8];
  v5 = *(MEMORY[0x277CBF3A8] + 8);
  result.height = v5;
  result.width = v4;
  return result;
}

+ (void)requestLayoutForViewElement:(id)element width:(double)width context:(id)context
{
  contextCopy = context;
  elementCopy = element;
  v11 = [self _attributedStringForRating:elementCopy context:contextCopy];
  labelLayoutCache = [contextCopy labelLayoutCache];

  [labelLayoutCache requestLayoutForViewElement:elementCopy attributedString:v11 width:width];
}

+ (CGSize)sizeThatFitsWidth:(double)width viewElement:(id)element context:(id)context
{
  contextCopy = context;
  elementCopy = element;
  v10 = [self _tomatoImageForFreshness:{objc_msgSend(elementCopy, "freshness")}];
  [v10 size];
  v12 = v11;
  v14 = v13;
  labelLayoutCache = [contextCopy labelLayoutCache];

  v16 = [labelLayoutCache layoutForWidth:width viewElement:elementCopy];

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

- (void)reloadWithViewElement:(id)element width:(double)width context:(id)context
{
  elementCopy = element;
  contextCopy = context;
  imageView = self->_imageView;
  if (!imageView)
  {
    v10 = objc_alloc_init(MEMORY[0x277D755E8]);
    v11 = self->_imageView;
    self->_imageView = v10;

    v12 = self->_imageView;
    backgroundColor = [(SUUITomatoRatingView *)self backgroundColor];
    [(UIImageView *)v12 setBackgroundColor:backgroundColor];

    [(SUUITomatoRatingView *)self addSubview:self->_imageView];
    imageView = self->_imageView;
  }

  v14 = [objc_opt_class() _tomatoImageForFreshness:{objc_msgSend(elementCopy, "freshness")}];
  [(UIImageView *)imageView setImage:v14];

  labelView = self->_labelView;
  if (!labelView)
  {
    v16 = objc_alloc_init(SUUIAttributedStringView);
    v17 = self->_labelView;
    self->_labelView = v16;

    v18 = self->_labelView;
    backgroundColor2 = [(SUUITomatoRatingView *)self backgroundColor];
    [(SUUIAttributedStringView *)v18 setBackgroundColor:backgroundColor2];

    [(SUUIAttributedStringView *)self->_labelView setUserInteractionEnabled:0];
    [(SUUITomatoRatingView *)self addSubview:self->_labelView];
    labelView = self->_labelView;
  }

  labelLayoutCache = [contextCopy labelLayoutCache];
  v21 = [labelLayoutCache layoutForWidth:width viewElement:elementCopy];
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

- (void)setBackgroundColor:(id)color
{
  imageView = self->_imageView;
  colorCopy = color;
  [(UIImageView *)imageView setBackgroundColor:colorCopy];
  [(SUUIAttributedStringView *)self->_labelView setBackgroundColor:colorCopy];
  v6.receiver = self;
  v6.super_class = SUUITomatoRatingView;
  [(SUUITomatoRatingView *)&v6 setBackgroundColor:colorCopy];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
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

+ (id)_attributedStringForRating:(id)rating context:(id)context
{
  contextCopy = context;
  ratingCopy = rating;
  ratingText = [ratingCopy ratingText];
  style = [ratingCopy style];

  v9 = SUUIViewElementFontWithStyle(style);
  if (!v9)
  {
    v9 = SUUIFontForTextStyle(10);
  }

  tintColor = [contextCopy tintColor];
  v11 = SUUIViewElementPlainColorWithStyle(style, tintColor);

  if (!v11)
  {
    v11 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.6];
  }

  v12 = [ratingText attributedStringWithDefaultFont:v9 foregroundColor:v11 style:style];

  return v12;
}

+ (id)_tomatoImageForFreshness:(int64_t)freshness
{
  if (freshness <= 2)
  {
    v4 = off_2798FC140[freshness];
    v5 = MEMORY[0x277D755B8];
    v6 = SUUIBundle();
    v3 = [v5 imageNamed:v4 inBundle:v6];
  }

  return v3;
}

@end