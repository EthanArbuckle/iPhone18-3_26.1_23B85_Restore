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

    callToActionDelegate = [(MUCallToActionSectionController *)self callToActionDelegate];
    v5 = [callToActionDelegate suggestionViewForCallToActionSectionController:self];
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
  callToActionDelegate = [(MUCallToActionSectionController *)self callToActionDelegate];
  obj = [callToActionDelegate suggestionViewForCallToActionSectionController:self];

  if (obj != self->_suggestionView)
  {
    [(MUPassiveCallToActionSectionController *)self _unloadContent];
    objc_storeStrong(&self->_suggestionView, obj);
    [(MUPassiveCallToActionSectionController *)self _loadContentIfNeeded];
    delegate = [(MUPlaceSectionController *)self delegate];
    [delegate placeSectionControllerDidUpdateContent:self];
  }
}

- (BOOL)hasContent
{
  personalizedSuggestionsArbiterDelegate = [(MUPlaceSectionController *)self personalizedSuggestionsArbiterDelegate];

  if (personalizedSuggestionsArbiterDelegate)
  {
    personalizedSuggestionsArbiterDelegate2 = [(MUPlaceSectionController *)self personalizedSuggestionsArbiterDelegate];
    shouldShowPlaceCallToActionSection = [personalizedSuggestionsArbiterDelegate2 shouldShowPlaceCallToActionSection];

    return shouldShowPlaceCallToActionSection;
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