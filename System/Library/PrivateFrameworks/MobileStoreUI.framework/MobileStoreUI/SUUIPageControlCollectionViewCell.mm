@interface SUUIPageControlCollectionViewCell
+ (CGSize)preferredSizeForViewElement:(id)element context:(id)context;
+ (CGSize)sizeThatFitsWidth:(double)width viewElement:(id)element context:(id)context;
- (SUUIPageControlCollectionViewCell)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)reloadWithViewElement:(id)element width:(double)width context:(id)context;
- (void)setContentInset:(UIEdgeInsets)inset;
- (void)setNumberOfPages:(int64_t)pages;
@end

@implementation SUUIPageControlCollectionViewCell

- (SUUIPageControlCollectionViewCell)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = SUUIPageControlCollectionViewCell;
  v3 = [(SUUIViewReuseCollectionViewCell *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277D757E0]);
    pageControl = v3->_pageControl;
    v3->_pageControl = v4;

    [(UIPageControl *)v3->_pageControl setEnabled:0];
    contentView = [(SUUIPageControlCollectionViewCell *)v3 contentView];
    [contentView addSubview:v3->_pageControl];
  }

  return v3;
}

- (void)setNumberOfPages:(int64_t)pages
{
  if ([(UIPageControl *)self->_pageControl numberOfPages]!= pages)
  {
    [(UIPageControl *)self->_pageControl setNumberOfPages:pages];

    [(SUUIPageControlCollectionViewCell *)self setNeedsLayout];
  }
}

+ (CGSize)preferredSizeForViewElement:(id)element context:(id)context
{
  v4 = *MEMORY[0x277CBF3A8];
  v5 = *(MEMORY[0x277CBF3A8] + 8);
  result.height = v5;
  result.width = v4;
  return result;
}

+ (CGSize)sizeThatFitsWidth:(double)width viewElement:(id)element context:(id)context
{
  v5 = 37.0;
  result.height = v5;
  result.width = width;
  return result;
}

- (void)reloadWithViewElement:(id)element width:(double)width context:(id)context
{
  style = [element style];
  self->_pageControlPosition = [style elementPosition];
  ikColor = [style ikColor];
  color = [ikColor color];

  if (!color)
  {
    color = [MEMORY[0x277D75348] darkGrayColor];
  }

  [(UIPageControl *)self->_pageControl setCurrentPageIndicatorTintColor:color];
  pageControl = self->_pageControl;
  v9 = [color colorWithAlphaComponent:0.33];
  [(UIPageControl *)pageControl setPageIndicatorTintColor:v9];

  [(SUUIPageControlCollectionViewCell *)self setNeedsLayout];
}

- (void)setContentInset:(UIEdgeInsets)inset
{
  v3.f64[0] = inset.top;
  v3.f64[1] = inset.left;
  v4.f64[0] = inset.bottom;
  v4.f64[1] = inset.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_contentInset.top, v3), vceqq_f64(*&self->_contentInset.bottom, v4)))) & 1) == 0)
  {
    self->_contentInset = inset;
    [(SUUIPageControlCollectionViewCell *)self setNeedsLayout];
  }
}

- (void)layoutSubviews
{
  contentView = [(SUUIPageControlCollectionViewCell *)self contentView];
  [contentView bounds];
  v5 = v4;
  v7 = v6;

  v8 = MEMORY[0x277CBF3A0];
  [(UIPageControl *)self->_pageControl sizeThatFits:v5, v7];
  v11 = v9;
  v12 = v10;
  pageControlPosition = self->_pageControlPosition;
  if (pageControlPosition > 9)
  {
    left = *v8;
  }

  else if (((1 << pageControlPosition) & 0xF) != 0)
  {
    v15 = (v5 - v9) * 0.5;
    left = floorf(v15);
  }

  else if (((1 << pageControlPosition) & 0x150) != 0)
  {
    left = self->_contentInset.left;
  }

  else
  {
    left = v5 - v9 - self->_contentInset.right;
  }

  if (pageControlPosition > 9)
  {
    top = v8[1];
  }

  else if (((1 << pageControlPosition) & 0x33) != 0)
  {
    v17 = (v7 - v10) * 0.5;
    top = floorf(v17);
  }

  else if (((1 << pageControlPosition) & 0xC4) != 0)
  {
    top = self->_contentInset.top;
  }

  else
  {
    top = v7 - v10 - self->_contentInset.bottom;
  }

  pageControl = self->_pageControl;

  [(UIPageControl *)pageControl setFrame:left, top, v11, v12];
}

@end