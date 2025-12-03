@interface CRKContainerCardSectionView
+ (CGSize)sizeThatFitsCardSection:(id)section boundingSize:(CGSize)size;
- (CGSize)contentSize;
- (CGSize)sizeThatFits:(CGSize)result;
- (CRKComposableView)composedSuperview;
- (CRKContainerCardSectionView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)removeFromComposedSuperview;
- (void)setContentView:(id)view;
@end

@implementation CRKContainerCardSectionView

+ (CGSize)sizeThatFitsCardSection:(id)section boundingSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v6 = objc_alloc_init(self);
  [v6 sizeThatFits:{width, height}];
  v8 = v7;
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

- (CRKContainerCardSectionView)initWithFrame:(CGRect)frame
{
  v15.receiver = self;
  v15.super_class = CRKContainerCardSectionView;
  v3 = [(CRKContainerCardSectionView *)&v15 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    cardSectionViewIdentifier = v3->_cardSectionViewIdentifier;
    v3->_cardSectionViewIdentifier = uUIDString;

    v7 = objc_alloc(MEMORY[0x277D75D18]);
    v8 = [v7 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    userInputEventInterceptView = v3->_userInputEventInterceptView;
    v3->_userInputEventInterceptView = v8;

    [(UIView *)v3->_userInputEventInterceptView setUserInteractionEnabled:1];
    v10 = v3->_userInputEventInterceptView;
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(UIView *)v10 setBackgroundColor:clearColor];

    layer = [(UIView *)v3->_userInputEventInterceptView layer];
    [layer setAllowsHitTesting:1];

    layer2 = [(UIView *)v3->_userInputEventInterceptView layer];
    [layer2 setHitTestsAsOpaque:1];

    [(CRKContainerCardSectionView *)v3 addSubview:v3->_userInputEventInterceptView];
  }

  return v3;
}

- (CGSize)sizeThatFits:(CGSize)result
{
  if (self->_contentView)
  {
    [(UIView *)self->_contentView sizeThatFits:result.width, result.height];
  }

  else
  {
    height = self->_contentSize.height;
  }

  result.height = height;
  return result;
}

- (void)setContentView:(id)view
{
  viewCopy = view;
  contentView = self->_contentView;
  if (contentView != viewCopy)
  {
    v7 = viewCopy;
    [(UIView *)contentView removeFromSuperview];
    objc_storeStrong(&self->_contentView, view);
    contentView = [(CRKContainerCardSectionView *)self insertSubview:self->_contentView atIndex:0];
    viewCopy = v7;
  }

  MEMORY[0x2821F96F8](contentView, viewCopy);
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = CRKContainerCardSectionView;
  [(CRKContainerCardSectionView *)&v5 layoutSubviews];
  contentView = self->_contentView;
  [(CRKContainerCardSectionView *)self bounds];
  [(UIView *)contentView setFrame:?];
  userInputEventInterceptView = self->_userInputEventInterceptView;
  [(CRKContainerCardSectionView *)self bounds];
  [(UIView *)userInputEventInterceptView setFrame:?];
}

- (void)removeFromComposedSuperview
{
  composedSuperview = [(CRKContainerCardSectionView *)self composedSuperview];
  [composedSuperview cardSectionSubviewWantsToBeRemovedFromHierarchy:self];
}

- (CRKComposableView)composedSuperview
{
  WeakRetained = objc_loadWeakRetained(&self->_composedSuperview);

  return WeakRetained;
}

- (CGSize)contentSize
{
  width = self->_contentSize.width;
  height = self->_contentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end