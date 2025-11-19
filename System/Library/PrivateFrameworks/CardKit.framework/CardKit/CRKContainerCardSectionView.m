@interface CRKContainerCardSectionView
+ (CGSize)sizeThatFitsCardSection:(id)a3 boundingSize:(CGSize)a4;
- (CGSize)contentSize;
- (CGSize)sizeThatFits:(CGSize)result;
- (CRKComposableView)composedSuperview;
- (CRKContainerCardSectionView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)removeFromComposedSuperview;
- (void)setContentView:(id)a3;
@end

@implementation CRKContainerCardSectionView

+ (CGSize)sizeThatFitsCardSection:(id)a3 boundingSize:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v6 = objc_alloc_init(a1);
  [v6 sizeThatFits:{width, height}];
  v8 = v7;
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

- (CRKContainerCardSectionView)initWithFrame:(CGRect)a3
{
  v15.receiver = self;
  v15.super_class = CRKContainerCardSectionView;
  v3 = [(CRKContainerCardSectionView *)&v15 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x277CCAD78] UUID];
    v5 = [v4 UUIDString];
    cardSectionViewIdentifier = v3->_cardSectionViewIdentifier;
    v3->_cardSectionViewIdentifier = v5;

    v7 = objc_alloc(MEMORY[0x277D75D18]);
    v8 = [v7 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    userInputEventInterceptView = v3->_userInputEventInterceptView;
    v3->_userInputEventInterceptView = v8;

    [(UIView *)v3->_userInputEventInterceptView setUserInteractionEnabled:1];
    v10 = v3->_userInputEventInterceptView;
    v11 = [MEMORY[0x277D75348] clearColor];
    [(UIView *)v10 setBackgroundColor:v11];

    v12 = [(UIView *)v3->_userInputEventInterceptView layer];
    [v12 setAllowsHitTesting:1];

    v13 = [(UIView *)v3->_userInputEventInterceptView layer];
    [v13 setHitTestsAsOpaque:1];

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

- (void)setContentView:(id)a3
{
  v5 = a3;
  contentView = self->_contentView;
  if (contentView != v5)
  {
    v7 = v5;
    [(UIView *)contentView removeFromSuperview];
    objc_storeStrong(&self->_contentView, a3);
    contentView = [(CRKContainerCardSectionView *)self insertSubview:self->_contentView atIndex:0];
    v5 = v7;
  }

  MEMORY[0x2821F96F8](contentView, v5);
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
  v3 = [(CRKContainerCardSectionView *)self composedSuperview];
  [v3 cardSectionSubviewWantsToBeRemovedFromHierarchy:self];
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