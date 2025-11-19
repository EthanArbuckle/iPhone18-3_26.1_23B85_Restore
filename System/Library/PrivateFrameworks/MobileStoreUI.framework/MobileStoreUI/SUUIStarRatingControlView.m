@interface SUUIStarRatingControlView
+ (CGSize)preferredSizeForViewElement:(id)a3 context:(id)a4;
+ (CGSize)sizeThatFitsWidth:(double)a3 viewElement:(id)a4 context:(id)a5;
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (CGSize)sizeThatFits:(CGSize)a3;
- (SUUIStarRatingControlView)initWithFrame:(CGRect)a3;
- (void)dealloc;
- (void)didRating:(id)a3;
- (void)reloadWithViewElement:(id)a3 width:(double)a4 context:(id)a5;
- (void)setContentInset:(UIEdgeInsets)a3;
- (void)setEnabled:(BOOL)a3;
@end

@implementation SUUIStarRatingControlView

- (SUUIStarRatingControlView)initWithFrame:(CGRect)a3
{
  v16.receiver = self;
  v16.super_class = SUUIStarRatingControlView;
  v3 = [(SUUIStarRatingControlView *)&v16 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(SUUIStarRatingControlView *)v3 setContentMode:3];
    v5 = objc_alloc_init(SUUIStarRatingControl);
    control = v4->_control;
    v4->_control = v5;

    [(SUUIStarRatingControlView *)v4 addSubview:v4->_control];
    v7 = MEMORY[0x277D755B8];
    v8 = SUUIBundle();
    v9 = [v7 imageNamed:@"LightRateControl" inBundle:v8];
    emptyStars = v4->_emptyStars;
    v4->_emptyStars = v9;

    [(SUUIStarRatingControl *)v4->_control setEmptyStarsImage:v4->_emptyStars];
    v11 = v4->_control;
    v12 = MEMORY[0x277D755B8];
    v13 = SUUIBundle();
    v14 = [v12 imageNamed:@"RateControlFilled" inBundle:v13];
    [(SUUIStarRatingControl *)v11 setFilledStarsImage:v14];

    [(SUUIStarRatingControl *)v4->_control sizeToFit];
    [(SUUIStarRatingControl *)v4->_control addTarget:v4 action:sel_didRating_ forControlEvents:64];
  }

  return v4;
}

- (void)dealloc
{
  [(SUUIStarRatingControl *)self->_control removeTarget:self action:0 forControlEvents:0xFFFFFFFFLL];
  v3.receiver = self;
  v3.super_class = SUUIStarRatingControlView;
  [(SUUIStarRatingControlView *)&v3 dealloc];
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
  v5 = MEMORY[0x277D755B8];
  v6 = SUUIBundle();
  v7 = [v5 imageNamed:@"StarRatingControlEmpty" inBundle:v6];

  [v7 size];
  v9 = v8;
  v11 = v10;

  v12 = v9;
  v13 = v11;
  result.height = v13;
  result.width = v12;
  return result;
}

- (void)reloadWithViewElement:(id)a3 width:(double)a4 context:(id)a5
{
  v10 = a3;
  objc_storeStrong(&self->_viewElement, a3);
  [v10 ratingValue];
  if (v7 <= 0.0)
  {
    v9 = 0;
  }

  else
  {
    [v10 ratingValue];
    v9 = (v8 * 5.0);
  }

  [(SUUIStarRatingControl *)self->_control setUserRating:v9];
  [(SUUIStarRatingControl *)self->_control setNeedsDisplay];
  [(SUUIStarRatingControlView *)self setNeedsDisplay];
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
    [(SUUIStarRatingControlView *)self setNeedsDisplay];
  }
}

- (void)setEnabled:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = SUUIStarRatingControlView;
  [(SUUIStarRatingControlView *)&v5 setEnabled:?];
  [(SUUIStarRatingControl *)self->_control setEnabled:v3];
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  [(SUUIStarRatingControlView *)self bounds];
  v11 = CGRectInset(v10, -20.0, -20.0);
  v6 = x;
  v7 = y;

  return CGRectContainsPoint(v11, *&v6);
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(UIImage *)self->_emptyStars size:a3.width];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)didRating:(id)a3
{
  v7[1] = *MEMORY[0x277D85DE8];
  viewElement = self->_viewElement;
  if (viewElement)
  {
    v6 = @"value";
    v4 = [MEMORY[0x277CCABB0] numberWithInteger:{-[SUUIStarRatingControl userRating](self->_control, "userRating", a3)}];
    v7[0] = v4;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
    [(SUUIStarRatingViewElement *)viewElement dispatchEventOfType:15 canBubble:1 isCancelable:1 extraInfo:v5 completionBlock:0];
  }
}

@end