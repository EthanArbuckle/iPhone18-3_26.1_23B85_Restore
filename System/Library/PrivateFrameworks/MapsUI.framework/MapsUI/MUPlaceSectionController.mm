@interface MUPlaceSectionController
- (BOOL)hasContent;
- (CGRect)impressionsFrame;
- (GEORevealedPlaceCardModule)revealedAnalyticsModule;
- (MUImpressionElement)impressionElement;
- (MUInfoCardAnalyticsDelegate)analyticsDelegate;
- (MUPersonalizedSuggestionSectionArbiterDelegate)personalizedSuggestionsArbiterDelegate;
- (MUPlaceSectionController)initWithMapItem:(id)a3;
- (MUPlaceSectionControllerDelegate)delegate;
- (NSArray)sectionViews;
- (UIView)sectionView;
- (id)_placeCardImpressionsMetadata;
@end

@implementation MUPlaceSectionController

- (MUPersonalizedSuggestionSectionArbiterDelegate)personalizedSuggestionsArbiterDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_personalizedSuggestionsArbiterDelegate);

  return WeakRetained;
}

- (MUPlaceSectionControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (MUInfoCardAnalyticsDelegate)analyticsDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_analyticsDelegate);

  return WeakRetained;
}

- (CGRect)impressionsFrame
{
  v32 = *MEMORY[0x1E69E9840];
  v2 = [(MUPlaceSectionController *)self sectionViews];
  v3 = [v2 count];
  v4 = [v2 firstObject];
  [v4 frame];
  x = v5;
  y = v7;
  width = v9;
  height = v11;

  if (v3 != 1)
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v13 = v2;
    v14 = [v13 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v28;
      do
      {
        v17 = 0;
        do
        {
          if (*v28 != v16)
          {
            objc_enumerationMutation(v13);
          }

          [*(*(&v27 + 1) + 8 * v17) frame];
          v36.origin.x = v18;
          v36.origin.y = v19;
          v36.size.width = v20;
          v36.size.height = v21;
          v33.origin.x = x;
          v33.origin.y = y;
          v33.size.width = width;
          v33.size.height = height;
          v34 = CGRectUnion(v33, v36);
          x = v34.origin.x;
          y = v34.origin.y;
          width = v34.size.width;
          height = v34.size.height;
          ++v17;
        }

        while (v15 != v17);
        v15 = [v13 countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v15);
    }
  }

  v22 = *MEMORY[0x1E69E9840];
  v23 = x;
  v24 = y;
  v25 = width;
  v26 = height;
  result.size.height = v26;
  result.size.width = v25;
  result.origin.y = v24;
  result.origin.x = v23;
  return result;
}

- (id)_placeCardImpressionsMetadata
{
  v3 = objc_alloc_init(MUPlaceCardImpressionsMetadata);
  v4 = [(MUPlaceSectionController *)self mapItem];
  -[MUPlaceCardImpressionsMetadata setBusinessId:](v3, "setBusinessId:", [v4 _muid]);

  v5 = [(MUPlaceSectionController *)self mapItem];
  v6 = [v5 place];
  -[MUPlaceCardImpressionsMetadata setLocalSearchProviderId:](v3, "setLocalSearchProviderId:", [v6 localSearchProviderID]);

  [(MUPlaceSectionController *)self analyticsModuleTypeForAction:0 presentationOptions:0];
  [(MUPlaceCardImpressionsMetadata *)v3 setModuleType:GEOPDPlaceDataLayoutConfigurationFromGEOModuleType()];

  return v3;
}

- (MUImpressionElement)impressionElement
{
  if ([(MUPlaceSectionController *)self isImpressionable])
  {
    impressionElement = self->_impressionElement;
    if (!impressionElement)
    {
      [MUPlaceModuleVisibilityConfigStore visibilityThresholdForModuleType:[(MUPlaceSectionController *)self analyticsModuleTypeForAction:0 presentationOptions:0]];
      v5 = v4;
      v6 = [MUImpressionElement alloc];
      v7 = [MEMORY[0x1E696AFB0] UUID];
      v8 = [(MUImpressionElement *)v6 initWithElementIdentifier:v7 visibilityThreshold:v5];
      v9 = self->_impressionElement;
      self->_impressionElement = v8;

      v10 = [(MUPlaceSectionController *)self _placeCardImpressionsMetadata];
      [(MUImpressionElement *)self->_impressionElement setCustomData:v10];

      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      [(MUImpressionElement *)self->_impressionElement setDebugString:v12];

      impressionElement = self->_impressionElement;
    }

    v13 = impressionElement;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (GEORevealedPlaceCardModule)revealedAnalyticsModule
{
  if ([(MUPlaceSectionController *)self isImpressionable])
  {
    v3 = [MEMORY[0x1E69A24A8] moduleWithType:{-[MUPlaceSectionController analyticsModuleTypeForAction:presentationOptions:](self, "analyticsModuleTypeForAction:presentationOptions:", 0, 0)}];
    [(MUPlaceSectionController *)self _populateRevealedAnalyticsModule:v3];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)hasContent
{
  v2 = [(MUPlaceSectionController *)self sectionViews];
  v3 = [v2 count] != 0;

  return v3;
}

- (NSArray)sectionViews
{
  v8[1] = *MEMORY[0x1E69E9840];
  v3 = [(MUPlaceSectionController *)self sectionView];

  if (v3)
  {
    v4 = [(MUPlaceSectionController *)self sectionView];
    v8[0] = v4;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

- (UIView)sectionView
{
  sectionView = self->_sectionView;
  if (!sectionView)
  {
    v4 = objc_alloc(MEMORY[0x1E69DD250]);
    v5 = [v4 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    v6 = self->_sectionView;
    self->_sectionView = v5;

    sectionView = self->_sectionView;
  }

  return sectionView;
}

- (MUPlaceSectionController)initWithMapItem:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MUPlaceSectionController;
  v6 = [(MUPlaceSectionController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mapItem, a3);
  }

  return v7;
}

@end