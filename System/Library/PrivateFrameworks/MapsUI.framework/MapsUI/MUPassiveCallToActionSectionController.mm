@interface MUPassiveCallToActionSectionController
- (BOOL)hasContent;
- (id)sectionView;
- (void)_loadContentIfNeeded;
- (void)_unloadContent;
- (void)updateSuggestionView;
@end

@implementation MUPassiveCallToActionSectionController

- (void)_loadContentIfNeeded
{
  if (!self->_sectionView)
  {
    suggestionView = self->_suggestionView;
    if (suggestionView)
    {
      goto LABEL_5;
    }

    v4 = [(MUCallToActionSectionController *)self callToActionDelegate];
    v5 = [v4 suggestionViewForCallToActionSectionController:self];
    v6 = self->_suggestionView;
    self->_suggestionView = v5;

    suggestionView = self->_suggestionView;
    if (suggestionView)
    {
LABEL_5:
      v7 = [MUPlaceSectionView insetPlatterSectionViewForContentView:suggestionView sectionHeaderViewModel:0 sectionFooterViewModel:0];
      sectionView = self->_sectionView;
      self->_sectionView = v7;

      v9 = self->_sectionView;

      [(MUPlaceSectionView *)v9 configureWithSectionController:self];
    }
  }
}

- (void)_unloadContent
{
  sectionView = self->_sectionView;
  self->_sectionView = 0;
  MEMORY[0x1EEE66BB8]();
}

- (void)updateSuggestionView
{
  v3 = [(MUCallToActionSectionController *)self callToActionDelegate];
  obj = [v3 suggestionViewForCallToActionSectionController:self];

  if (obj != self->_suggestionView)
  {
    [(MUPassiveCallToActionSectionController *)self _unloadContent];
    objc_storeStrong(&self->_suggestionView, obj);
    [(MUPassiveCallToActionSectionController *)self _loadContentIfNeeded];
    v4 = [(MUPlaceSectionController *)self delegate];
    [v4 placeSectionControllerDidUpdateContent:self];
  }
}

- (BOOL)hasContent
{
  v3 = [(MUPlaceSectionController *)self personalizedSuggestionsArbiterDelegate];

  if (v3)
  {
    v4 = [(MUPlaceSectionController *)self personalizedSuggestionsArbiterDelegate];
    v5 = [v4 shouldShowPlaceCallToActionSection];

    return v5;
  }

  else
  {

    return [(MUPassiveCallToActionSectionController *)self hasContentBeforePersonalizedSuggestionArbitration];
  }
}

- (id)sectionView
{
  [(MUPassiveCallToActionSectionController *)self _loadContentIfNeeded];
  sectionView = self->_sectionView;

  return sectionView;
}

@end