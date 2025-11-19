@interface CRKComposedView
- (CGSize)sizeThatFits:(CGSize)a3;
- (CRKComposedView)initWithFrame:(CGRect)a3;
- (NSArray)cardSectionSubviews;
- (UIEdgeInsets)cardSectionContentMargins;
- (void)addCardSectionSubview:(id)a3 withKeyline:(int64_t)a4;
- (void)cardSectionSubviewWantsToBeRemovedFromHierarchy:(id)a3;
@end

@implementation CRKComposedView

- (CRKComposedView)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = CRKComposedView;
  v3 = [(CRKComposedView *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    mutableCardSectionSubviews = v3->_mutableCardSectionSubviews;
    v3->_mutableCardSectionSubviews = v4;
  }

  return v3;
}

- (UIEdgeInsets)cardSectionContentMargins
{
  v2 = *MEMORY[0x277D768C8];
  v3 = *(MEMORY[0x277D768C8] + 8);
  v4 = *(MEMORY[0x277D768C8] + 16);
  v5 = *(MEMORY[0x277D768C8] + 24);
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (void)addCardSectionSubview:(id)a3 withKeyline:(int64_t)a4
{
  if (a3)
  {
    mutableCardSectionSubviews = self->_mutableCardSectionSubviews;
    v6 = a3;
    [(NSMutableArray *)mutableCardSectionSubviews addObject:v6];
    [(CRKComposedView *)self addSubview:v6];
    [v6 setComposedSuperview:self];

    [(CRKComposedView *)self setNeedsLayout];
  }
}

- (void)cardSectionSubviewWantsToBeRemovedFromHierarchy:(id)a3
{
  mutableCardSectionSubviews = self->_mutableCardSectionSubviews;
  v4 = a3;
  [(NSMutableArray *)mutableCardSectionSubviews removeObject:v4];
  [v4 removeFromSuperview];
  [v4 setComposedSuperview:0];
}

- (NSArray)cardSectionSubviews
{
  v2 = [(NSMutableArray *)self->_mutableCardSectionSubviews copy];

  return v2;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v3 = *MEMORY[0x277CBF3A8];
  v4 = *(MEMORY[0x277CBF3A8] + 8);
  result.height = v4;
  result.width = v3;
  return result;
}

@end