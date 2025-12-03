@interface SUUIStarRatingControlView
+ (CGSize)preferredSizeForViewElement:(id)element context:(id)context;
+ (CGSize)sizeThatFitsWidth:(double)width viewElement:(id)element context:(id)context;
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (CGSize)sizeThatFits:(CGSize)fits;
- (SUUIStarRatingControlView)initWithFrame:(CGRect)frame;
- (void)dealloc;
- (void)didRating:(id)rating;
- (void)reloadWithViewElement:(id)element width:(double)width context:(id)context;
- (void)setContentInset:(UIEdgeInsets)inset;
- (void)setEnabled:(BOOL)enabled;
@end

@implementation SUUIStarRatingControlView

- (SUUIStarRatingControlView)initWithFrame:(CGRect)frame
{
  v16.receiver = self;
  v16.super_class = SUUIStarRatingControlView;
  v3 = [(SUUIStarRatingControlView *)&v16 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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

- (void)reloadWithViewElement:(id)element width:(double)width context:(id)context
{
  elementCopy = element;
  objc_storeStrong(&self->_viewElement, element);
  [elementCopy ratingValue];
  if (v7 <= 0.0)
  {
    v9 = 0;
  }

  else
  {
    [elementCopy ratingValue];
    v9 = (v8 * 5.0);
  }

  [(SUUIStarRatingControl *)self->_control setUserRating:v9];
  [(SUUIStarRatingControl *)self->_control setNeedsDisplay];
  [(SUUIStarRatingControlView *)self setNeedsDisplay];
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
    [(SUUIStarRatingControlView *)self setNeedsDisplay];
  }
}

- (void)setEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v5.receiver = self;
  v5.super_class = SUUIStarRatingControlView;
  [(SUUIStarRatingControlView *)&v5 setEnabled:?];
  [(SUUIStarRatingControl *)self->_control setEnabled:enabledCopy];
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  [(SUUIStarRatingControlView *)self bounds];
  v11 = CGRectInset(v10, -20.0, -20.0);
  v6 = x;
  v7 = y;

  return CGRectContainsPoint(v11, *&v6);
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(UIImage *)self->_emptyStars size:fits.width];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)didRating:(id)rating
{
  v7[1] = *MEMORY[0x277D85DE8];
  viewElement = self->_viewElement;
  if (viewElement)
  {
    v6 = @"value";
    v4 = [MEMORY[0x277CCABB0] numberWithInteger:{-[SUUIStarRatingControl userRating](self->_control, "userRating", rating)}];
    v7[0] = v4;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
    [(SUUIStarRatingViewElement *)viewElement dispatchEventOfType:15 canBubble:1 isCancelable:1 extraInfo:v5 completionBlock:0];
  }
}

@end