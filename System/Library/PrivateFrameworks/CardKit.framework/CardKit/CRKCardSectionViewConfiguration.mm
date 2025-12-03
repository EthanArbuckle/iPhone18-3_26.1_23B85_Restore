@interface CRKCardSectionViewConfiguration
- (void)_setDebugModeEnabled:(BOOL)enabled;
- (void)_setDebugOverlayView:(id)view;
- (void)_setProviderIdentifier:(id)identifier;
- (void)_updateDebugOverlayViewText:(id)text;
- (void)setCardSection:(id)section;
- (void)setCardSectionView:(id)view;
@end

@implementation CRKCardSectionViewConfiguration

- (void)_setDebugOverlayView:(id)view
{
  viewCopy = view;
  debugOverlayView = self->_debugOverlayView;
  if (debugOverlayView != viewCopy)
  {
    v8 = viewCopy;
    [(_CRKDebugOverlayView *)debugOverlayView removeFromSuperview];
    objc_storeStrong(&self->_debugOverlayView, view);
    cardSectionView = [(CRKCardSectionViewConfiguration *)self cardSectionView];
    [cardSectionView addSubview:v8];

    viewCopy = v8;
  }

  MEMORY[0x2821F96F8](debugOverlayView, viewCopy);
}

- (void)setCardSectionView:(id)view
{
  viewCopy = view;
  if (self->_cardSectionView != viewCopy)
  {
    v6 = viewCopy;
    [(_CRKDebugOverlayView *)self->_debugOverlayView removeFromSuperview];
    objc_storeStrong(&self->_cardSectionView, view);
    [(CRKCardSectionView *)v6 addSubview:self->_debugOverlayView];
    viewCopy = v6;
  }
}

- (void)_setDebugModeEnabled:(BOOL)enabled
{
  if (self->_debugModeEnabled == enabled)
  {
    return;
  }

  enabledCopy = enabled;
  [(_CRKDebugOverlayView *)self->_debugOverlayView removeFromSuperview];
  self->_debugModeEnabled = enabledCopy;
  if (!self->_debugOverlayView)
  {
    v7 = objc_alloc_init(_CRKDebugOverlayView);
    [(CRKCardSectionViewConfiguration *)self _updateDebugOverlayViewText:v7];
    redColor = [MEMORY[0x277D75348] redColor];
    [(_CRKDebugOverlayView *)v7 setColor:redColor];

    debugOverlayView = self->_debugOverlayView;
    self->_debugOverlayView = v7;

    if (!enabledCopy)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  if (enabledCopy)
  {
LABEL_4:
    cardSectionView = [(CRKCardSectionViewConfiguration *)self cardSectionView];
    [cardSectionView addSubview:self->_debugOverlayView];
  }

LABEL_5:
  cardSectionView2 = [(CRKCardSectionViewConfiguration *)self cardSectionView];
  [cardSectionView2 setNeedsLayout];
}

- (void)setCardSection:(id)section
{
  sectionCopy = section;
  p_cardSection = &self->_cardSection;
  if (self->_cardSection != sectionCopy)
  {
    v9 = sectionCopy;
    objc_storeStrong(p_cardSection, section);
    _debugOverlayView = [(CRKCardSectionViewConfiguration *)self _debugOverlayView];
    [(CRKCardSectionViewConfiguration *)self _updateDebugOverlayViewText:_debugOverlayView];

    cardSectionView = [(CRKCardSectionViewConfiguration *)self cardSectionView];
    [cardSectionView setNeedsLayout];

    sectionCopy = v9;
  }

  MEMORY[0x2821F96F8](p_cardSection, sectionCopy);
}

- (void)_setProviderIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (![(NSString *)self->_providerIdentifier isEqualToString:?])
  {
    objc_storeStrong(&self->_providerIdentifier, identifier);
    _debugOverlayView = [(CRKCardSectionViewConfiguration *)self _debugOverlayView];
    [(CRKCardSectionViewConfiguration *)self _updateDebugOverlayViewText:_debugOverlayView];

    cardSectionView = [(CRKCardSectionViewConfiguration *)self cardSectionView];
    [cardSectionView setNeedsLayout];
  }
}

- (void)_updateDebugOverlayViewText:(id)text
{
  v4 = MEMORY[0x277CCACA8];
  textCopy = text;
  cardSection = [(CRKCardSectionViewConfiguration *)self cardSection];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  _providerIdentifier = [(CRKCardSectionViewConfiguration *)self _providerIdentifier];
  v10 = [_providerIdentifier componentsSeparatedByString:@"."];
  lastObject = [v10 lastObject];
  v12 = [v4 stringWithFormat:@"%@\n%@", v8, lastObject];

  [textCopy setDebugText:v12];
}

@end