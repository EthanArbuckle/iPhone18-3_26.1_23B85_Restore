@interface SUUIPageControlCollectionViewCell
+ (CGSize)preferredSizeForViewElement:(id)a3 context:(id)a4;
+ (CGSize)sizeThatFitsWidth:(double)a3 viewElement:(id)a4 context:(id)a5;
- (SUUIPageControlCollectionViewCell)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)reloadWithViewElement:(id)a3 width:(double)a4 context:(id)a5;
- (void)setContentInset:(UIEdgeInsets)a3;
- (void)setNumberOfPages:(int64_t)a3;
@end

@implementation SUUIPageControlCollectionViewCell

- (SUUIPageControlCollectionViewCell)initWithFrame:(CGRect)a3
{
  v8.receiver = self;
  v8.super_class = SUUIPageControlCollectionViewCell;
  v3 = [(SUUIViewReuseCollectionViewCell *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277D757E0]);
    pageControl = v3->_pageControl;
    v3->_pageControl = v4;

    [(UIPageControl *)v3->_pageControl setEnabled:0];
    v6 = [(SUUIPageControlCollectionViewCell *)v3 contentView];
    [v6 addSubview:v3->_pageControl];
  }

  return v3;
}

- (void)setNumberOfPages:(int64_t)a3
{
  if ([(UIPageControl *)self->_pageControl numberOfPages]!= a3)
  {
    [(UIPageControl *)self->_pageControl setNumberOfPages:a3];

    [(SUUIPageControlCollectionViewCell *)self setNeedsLayout];
  }
}

+ (CGSize)preferredSizeForViewElement:(id)a3 context:(id)a4
{
  v4 = *MEMORY[0x277CBF3A8];
  v5 = *(MEMORY[0x277CBF3A8] + 8);
  result.height = v5;
  result.width = v4;
  return result;
}

+ (CGSize)sizeThatFitsWidth:(double)a3 viewElement:(id)a4 context:(id)a5
{
  v5 = 37.0;
  result.height = v5;
  result.width = a3;
  return result;
}

- (void)reloadWithViewElement:(id)a3 width:(double)a4 context:(id)a5
{
  v10 = [a3 style];
  self->_pageControlPosition = [v10 elementPosition];
  v6 = [v10 ikColor];
  v7 = [v6 color];

  if (!v7)
  {
    v7 = [MEMORY[0x277D75348] darkGrayColor];
  }

  [(UIPageControl *)self->_pageControl setCurrentPageIndicatorTintColor:v7];
  pageControl = self->_pageControl;
  v9 = [v7 colorWithAlphaComponent:0.33];
  [(UIPageControl *)pageControl setPageIndicatorTintColor:v9];

  [(SUUIPageControlCollectionViewCell *)self setNeedsLayout];
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
    [(SUUIPageControlCollectionViewCell *)self setNeedsLayout];
  }
}

- (void)layoutSubviews
{
  v3 = [(SUUIPageControlCollectionViewCell *)self contentView];
  [v3 bounds];
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