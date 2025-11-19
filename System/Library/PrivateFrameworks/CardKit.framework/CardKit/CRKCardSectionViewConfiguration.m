@interface CRKCardSectionViewConfiguration
- (void)_setDebugModeEnabled:(BOOL)a3;
- (void)_setDebugOverlayView:(id)a3;
- (void)_setProviderIdentifier:(id)a3;
- (void)_updateDebugOverlayViewText:(id)a3;
- (void)setCardSection:(id)a3;
- (void)setCardSectionView:(id)a3;
@end

@implementation CRKCardSectionViewConfiguration

- (void)_setDebugOverlayView:(id)a3
{
  v5 = a3;
  debugOverlayView = self->_debugOverlayView;
  if (debugOverlayView != v5)
  {
    v8 = v5;
    [(_CRKDebugOverlayView *)debugOverlayView removeFromSuperview];
    objc_storeStrong(&self->_debugOverlayView, a3);
    v7 = [(CRKCardSectionViewConfiguration *)self cardSectionView];
    [v7 addSubview:v8];

    v5 = v8;
  }

  MEMORY[0x2821F96F8](debugOverlayView, v5);
}

- (void)setCardSectionView:(id)a3
{
  v5 = a3;
  if (self->_cardSectionView != v5)
  {
    v6 = v5;
    [(_CRKDebugOverlayView *)self->_debugOverlayView removeFromSuperview];
    objc_storeStrong(&self->_cardSectionView, a3);
    [(CRKCardSectionView *)v6 addSubview:self->_debugOverlayView];
    v5 = v6;
  }
}

- (void)_setDebugModeEnabled:(BOOL)a3
{
  if (self->_debugModeEnabled == a3)
  {
    return;
  }

  v4 = a3;
  [(_CRKDebugOverlayView *)self->_debugOverlayView removeFromSuperview];
  self->_debugModeEnabled = v4;
  if (!self->_debugOverlayView)
  {
    v7 = objc_alloc_init(_CRKDebugOverlayView);
    [(CRKCardSectionViewConfiguration *)self _updateDebugOverlayViewText:v7];
    v8 = [MEMORY[0x277D75348] redColor];
    [(_CRKDebugOverlayView *)v7 setColor:v8];

    debugOverlayView = self->_debugOverlayView;
    self->_debugOverlayView = v7;

    if (!v4)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  if (v4)
  {
LABEL_4:
    v6 = [(CRKCardSectionViewConfiguration *)self cardSectionView];
    [v6 addSubview:self->_debugOverlayView];
  }

LABEL_5:
  v10 = [(CRKCardSectionViewConfiguration *)self cardSectionView];
  [v10 setNeedsLayout];
}

- (void)setCardSection:(id)a3
{
  v5 = a3;
  p_cardSection = &self->_cardSection;
  if (self->_cardSection != v5)
  {
    v9 = v5;
    objc_storeStrong(p_cardSection, a3);
    v7 = [(CRKCardSectionViewConfiguration *)self _debugOverlayView];
    [(CRKCardSectionViewConfiguration *)self _updateDebugOverlayViewText:v7];

    v8 = [(CRKCardSectionViewConfiguration *)self cardSectionView];
    [v8 setNeedsLayout];

    v5 = v9;
  }

  MEMORY[0x2821F96F8](p_cardSection, v5);
}

- (void)_setProviderIdentifier:(id)a3
{
  v7 = a3;
  if (![(NSString *)self->_providerIdentifier isEqualToString:?])
  {
    objc_storeStrong(&self->_providerIdentifier, a3);
    v5 = [(CRKCardSectionViewConfiguration *)self _debugOverlayView];
    [(CRKCardSectionViewConfiguration *)self _updateDebugOverlayViewText:v5];

    v6 = [(CRKCardSectionViewConfiguration *)self cardSectionView];
    [v6 setNeedsLayout];
  }
}

- (void)_updateDebugOverlayViewText:(id)a3
{
  v4 = MEMORY[0x277CCACA8];
  v5 = a3;
  v6 = [(CRKCardSectionViewConfiguration *)self cardSection];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = [(CRKCardSectionViewConfiguration *)self _providerIdentifier];
  v10 = [v9 componentsSeparatedByString:@"."];
  v11 = [v10 lastObject];
  v12 = [v4 stringWithFormat:@"%@\n%@", v8, v11];

  [v5 setDebugText:v12];
}

@end