@interface GKCollectionViewPlaceholderView
- (GKCollectionViewPlaceholderView)initWithFrame:(CGRect)a3;
- (SEL)noContentButtonAction;
- (void)buttonPressed;
- (void)dealloc;
- (void)delayedShowLoadingIndicator;
- (void)didEnterErrorState;
- (void)didEnterNoContentState;
- (void)didExitErrorState;
- (void)didExitLoadingState;
- (void)didExitNoContentState;
- (void)setAlignment:(int64_t)a3;
- (void)setLoadingState:(id)a3;
- (void)setNoContentButtonAction:(SEL)a3;
- (void)updateConstraints;
@end

@implementation GKCollectionViewPlaceholderView

- (GKCollectionViewPlaceholderView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v28.receiver = self;
  v28.super_class = GKCollectionViewPlaceholderView;
  v7 = [(GKCollectionViewPlaceholderView *)&v28 initWithFrame:?];
  if (v7)
  {
    v8 = [MEMORY[0x277D0C868] sharedPalette];
    v9 = [v8 viewBackgroundColor];
    [(GKCollectionViewPlaceholderView *)v7 setBackgroundColor:v9];

    v10 = objc_alloc_init(GKPlaceholderContentStateMachine);
    loadingMachine = v7->_loadingMachine;
    v7->_loadingMachine = v10;

    [(_GKStateMachine *)v7->_loadingMachine setDelegate:v7];
    v12 = GKGameCenterUIFrameworkBundle();
    v13 = GKGetLocalizedStringFromTableInBundle();
    [(GKCollectionViewPlaceholderView *)v7 setNoContentTitle:v13];

    [(GKCollectionViewPlaceholderView *)v7 setNoContentMessage:0];
    v14 = GKGameCenterUIFrameworkBundle();
    v15 = GKGetLocalizedStringFromTableInBundle();
    [(GKCollectionViewPlaceholderView *)v7 setErrorTitle:v15];

    v16 = GKGameCenterUIFrameworkBundle();
    v17 = GKGetLocalizedStringFromTableInBundle();
    [(GKCollectionViewPlaceholderView *)v7 setErrorMessage:v17];

    v18 = [GKPlaceholderView placeholderViewWithTitle:v7->_noContentTitle message:v7->_noContentTitle frame:x, y, width, height];
    [(GKCollectionViewPlaceholderView *)v7 setPlaceholderView:v18];

    v26[0] = 0;
    v26[1] = v26;
    v26[2] = 0x3032000000;
    v26[3] = __Block_byref_object_copy__9;
    v26[4] = __Block_byref_object_dispose__9;
    v19 = v7;
    v27 = v19;
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __49__GKCollectionViewPlaceholderView_initWithFrame___block_invoke;
    v25[3] = &unk_279669DD0;
    v25[4] = v26;
    [v19[62] setButtonAction:v25];
    [v19[62] setTranslatesAutoresizingMaskIntoConstraints:0];
    v20 = [objc_alloc(MEMORY[0x277D750E8]) initWithFrame:{x, y, width, height}];
    v21 = v19[71];
    v19[71] = v20;

    [v19[71] setTranslatesAutoresizingMaskIntoConstraints:0];
    [v19 addSubview:v19[71]];
    [v19[62] setAlpha:0.0];
    [v19[71] setActivityIndicatorViewStyle:101];
    v22 = [MEMORY[0x277D0C868] sharedPalette];
    v23 = [v22 activityIndicatorColor];
    [v19[71] setColor:v23];

    [v19[71] setAlpha:0.0];
    [v19 addSubview:v19[62]];
    [v19 setAlignment:2];
    _Block_object_dispose(v26, 8);
  }

  return v7;
}

- (void)dealloc
{
  [(UIActivityIndicatorView *)self->_loadingIndicatorView stopAnimating];
  v3.receiver = self;
  v3.super_class = GKCollectionViewPlaceholderView;
  [(GKCollectionViewPlaceholderView *)&v3 dealloc];
}

- (void)buttonPressed
{
  noContentButtonTarget = self->_noContentButtonTarget;
  if (noContentButtonTarget)
  {
    noContentButtonAction = self->_noContentButtonAction;
    if (noContentButtonAction)
    {
      [noContentButtonTarget _gkPerformSelector:noContentButtonAction withObject:?];
    }
  }
}

- (void)setAlignment:(int64_t)a3
{
  if (self->_alignment != a3)
  {
    self->_alignment = a3;
    [(GKCollectionViewPlaceholderView *)self setNeedsUpdateConstraints];
  }
}

- (void)updateConstraints
{
  v16.receiver = self;
  v16.super_class = GKCollectionViewPlaceholderView;
  [(GKCollectionViewPlaceholderView *)&v16 updateConstraints];
  v3 = [(GKCollectionViewPlaceholderView *)self cachedConstraints];
  if (v3)
  {
    [(GKCollectionViewPlaceholderView *)self removeConstraints:v3];
  }

  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:32];
  alignment = self->_alignment;
  if (alignment == 1)
  {
    v12 = [MEMORY[0x277CCAAD0] _gkConstraintForView:self->_placeholderView centeredXInView:self];
    [v4 addObject:v12];

    v13 = [MEMORY[0x277CCAAD0] constraintWithItem:self->_placeholderView attribute:3 relatedBy:0 toItem:self attribute:3 multiplier:1.0 constant:20.0];
    [v4 addObject:v13];

    v14 = [MEMORY[0x277CCAAD0] _gkConstraintForView:self->_loadingIndicatorView centeredXInView:self->_placeholderView];
    [v4 addObject:v14];

    v11 = [MEMORY[0x277CCAAD0] _gkConstraintForView:self->_loadingIndicatorView centeredYInView:self->_placeholderView];
    [v4 addObject:v11];
    goto LABEL_7;
  }

  if (alignment == 2)
  {
    v6 = *MEMORY[0x277D768C8];
    v7 = *(MEMORY[0x277D768C8] + 8);
    v8 = *(MEMORY[0x277D768C8] + 16);
    v9 = *(MEMORY[0x277D768C8] + 24);
    v10 = [MEMORY[0x277CCAAD0] _gkConstraintsForView:self->_placeholderView withinView:self insets:{*MEMORY[0x277D768C8], v7, v8, v9}];
    [v4 addObjectsFromArray:v10];

    v11 = [MEMORY[0x277CCAAD0] _gkConstraintsForView:self->_loadingIndicatorView withinView:self insets:{v6, v7, v8, v9}];
    [v4 addObjectsFromArray:v11];
LABEL_7:
  }

  v15 = [MEMORY[0x277CCAAD0] _gkConstraintForView:self->_placeholderView withWidthDerivedFromView:self insetBy:0.0];
  [v4 addObject:v15];

  [(GKCollectionViewPlaceholderView *)self setCachedConstraints:v4];
  [(GKCollectionViewPlaceholderView *)self addConstraints:v4];
}

- (void)setLoadingState:(id)a3
{
  loadingMachine = self->_loadingMachine;
  v5 = a3;
  [(_GKStateMachine *)loadingMachine setCurrentState:@"Initial"];
  [(_GKStateMachine *)self->_loadingMachine setCurrentState:v5];
}

- (void)delayedShowLoadingIndicator
{
  v3 = [(_GKStateMachine *)self->_loadingMachine currentState];

  loadingIndicatorView = self->_loadingIndicatorView;
  if (v3 == @"LoadingState")
  {
    [(UIActivityIndicatorView *)loadingIndicatorView startAnimating];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __62__GKCollectionViewPlaceholderView_delayedShowLoadingIndicator__block_invoke;
    v5[3] = &unk_2796699A8;
    v5[4] = self;
    [MEMORY[0x277D75D18] animateWithDuration:v5 animations:0.15];
  }

  else
  {

    [(UIActivityIndicatorView *)loadingIndicatorView setAlpha:0.0];
  }
}

- (void)didExitLoadingState
{
  [(UIActivityIndicatorView *)self->_loadingIndicatorView stopAnimating];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __54__GKCollectionViewPlaceholderView_didExitLoadingState__block_invoke;
  v3[3] = &unk_2796699A8;
  v3[4] = self;
  [MEMORY[0x277D75D18] animateWithDuration:v3 animations:0.25];
}

- (void)didEnterNoContentState
{
  [(_UIContentUnavailableView *)self->_placeholderView setTitle:self->_noContentTitle];
  [(_UIContentUnavailableView *)self->_placeholderView setMessage:self->_noContentMessage];
  [(_UIContentUnavailableView *)self->_placeholderView setButtonTitle:self->_noContentButtonTitle];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __57__GKCollectionViewPlaceholderView_didEnterNoContentState__block_invoke;
  v3[3] = &unk_2796699A8;
  v3[4] = self;
  [MEMORY[0x277D75D18] animateWithDuration:v3 animations:0.15];
}

- (void)didExitNoContentState
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __56__GKCollectionViewPlaceholderView_didExitNoContentState__block_invoke;
  v2[3] = &unk_2796699A8;
  v2[4] = self;
  [MEMORY[0x277D75D18] animateWithDuration:v2 animations:0.15];
}

- (void)didEnterErrorState
{
  [(_UIContentUnavailableView *)self->_placeholderView setTitle:self->_errorTitle];
  [(_UIContentUnavailableView *)self->_placeholderView setMessage:self->_errorMessage];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __53__GKCollectionViewPlaceholderView_didEnterErrorState__block_invoke;
  v3[3] = &unk_2796699A8;
  v3[4] = self;
  [MEMORY[0x277D75D18] animateWithDuration:v3 animations:0.15];
}

- (void)didExitErrorState
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __52__GKCollectionViewPlaceholderView_didExitErrorState__block_invoke;
  v2[3] = &unk_2796699A8;
  v2[4] = self;
  [MEMORY[0x277D75D18] animateWithDuration:v2 animations:0.15];
}

- (SEL)noContentButtonAction
{
  if (self->_noContentButtonAction)
  {
    return self->_noContentButtonAction;
  }

  else
  {
    return 0;
  }
}

- (void)setNoContentButtonAction:(SEL)a3
{
  if (a3)
  {
    v3 = a3;
  }

  else
  {
    v3 = 0;
  }

  self->_noContentButtonAction = v3;
}

@end