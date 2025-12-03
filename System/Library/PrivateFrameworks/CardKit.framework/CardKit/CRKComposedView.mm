@interface CRKComposedView
- (CGSize)sizeThatFits:(CGSize)fits;
- (CRKComposedView)initWithFrame:(CGRect)frame;
- (NSArray)cardSectionSubviews;
- (UIEdgeInsets)cardSectionContentMargins;
- (void)addCardSectionSubview:(id)subview withKeyline:(int64_t)keyline;
- (void)cardSectionSubviewWantsToBeRemovedFromHierarchy:(id)hierarchy;
@end

@implementation CRKComposedView

- (CRKComposedView)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = CRKComposedView;
  v3 = [(CRKComposedView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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

- (void)addCardSectionSubview:(id)subview withKeyline:(int64_t)keyline
{
  if (subview)
  {
    mutableCardSectionSubviews = self->_mutableCardSectionSubviews;
    subviewCopy = subview;
    [(NSMutableArray *)mutableCardSectionSubviews addObject:subviewCopy];
    [(CRKComposedView *)self addSubview:subviewCopy];
    [subviewCopy setComposedSuperview:self];

    [(CRKComposedView *)self setNeedsLayout];
  }
}

- (void)cardSectionSubviewWantsToBeRemovedFromHierarchy:(id)hierarchy
{
  mutableCardSectionSubviews = self->_mutableCardSectionSubviews;
  hierarchyCopy = hierarchy;
  [(NSMutableArray *)mutableCardSectionSubviews removeObject:hierarchyCopy];
  [hierarchyCopy removeFromSuperview];
  [hierarchyCopy setComposedSuperview:0];
}

- (NSArray)cardSectionSubviews
{
  v2 = [(NSMutableArray *)self->_mutableCardSectionSubviews copy];

  return v2;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  v3 = *MEMORY[0x277CBF3A8];
  v4 = *(MEMORY[0x277CBF3A8] + 8);
  result.height = v4;
  result.width = v3;
  return result;
}

@end