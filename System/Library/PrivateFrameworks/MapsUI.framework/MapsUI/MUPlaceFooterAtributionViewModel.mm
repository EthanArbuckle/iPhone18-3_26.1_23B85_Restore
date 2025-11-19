@interface MUPlaceFooterAtributionViewModel
+ (id)_attributionViewModelForProviderName:(id)a3 attributionURLs:(id)a4;
+ (id)viewModelForGeoMapItemAttribution:(id)a3;
+ (id)viewModelForMapItem:(id)a3 transitLine:(id)a4;
+ (id)viewModelForMapItemAttribution:(id)a3;
- (MUPlaceFooterAtributionViewModel)initWithFormatString:(id)a3 providerNames:(id)a4 isInteractable:(BOOL)a5;
- (id)attributedText;
@end

@implementation MUPlaceFooterAtributionViewModel

- (id)attributedText
{
  v26[2] = *MEMORY[0x1E69E9840];
  if ([(NSArray *)self->_providerNames count])
  {
    formatString = self->_formatString;
    v24 = *MEMORY[0x1E69DB650];
    v4 = v24;
    v5 = MEMORY[0x1E69DC888];
    v6 = formatString;
    v7 = [v5 secondaryLabelColor];
    v26[0] = v7;
    v25 = *MEMORY[0x1E69DB648];
    v8 = v25;
    v9 = *MEMORY[0x1E69DDD28];
    v10 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD28]];
    v26[1] = v10;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v24 count:2];

    v12 = [MEMORY[0x1E696AD08] localizedStringByJoiningStrings:self->_providerNames];
    v22[0] = v4;
    v13 = +[MUInfoCardStyle tintColor];
    v14 = *MEMORY[0x1E69DB670];
    v23[0] = v13;
    v23[1] = &stru_1F44CA030;
    v22[1] = v14;
    v22[2] = v8;
    v15 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:v9];
    v16 = [v15 _mapkit_fontWithWeight:*MEMORY[0x1E69DB980]];
    v23[2] = v16;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:3];

    if (self->_interactable)
    {
      v18 = v17;
    }

    else
    {
      v18 = v11;
    }

    v19 = MUHighlightedAttributionString(v6, v11, v12, v18);
  }

  else
  {
    v19 = objc_opt_new();
  }

  v20 = *MEMORY[0x1E69E9840];

  return v19;
}

- (MUPlaceFooterAtributionViewModel)initWithFormatString:(id)a3 providerNames:(id)a4 isInteractable:(BOOL)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = MUPlaceFooterAtributionViewModel;
  v11 = [(MUPlaceFooterAtributionViewModel *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_formatString, a3);
    objc_storeStrong(&v12->_providerNames, a4);
    v12->_interactable = a5;
  }

  return v12;
}

+ (id)viewModelForMapItem:(id)a3 transitLine:(id)a4
{
  v5 = a4;
  v6 = [a3 _transitAttribution];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = [v5 attribution];
  }

  v9 = v8;

  v10 = [v9 _providerNames];
  v11 = [v10 count];

  if (v11)
  {
    v12 = [MUPlaceFooterAtributionViewModel alloc];
    v13 = +[MUPlaceFooterAtributionViewModel transitAttributionFormatString];
    v14 = [v9 _providerNames];
    v15 = [(MUPlaceFooterAtributionViewModel *)v12 initWithFormatString:v13 providerNames:v14 isInteractable:1];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

+ (id)_attributionViewModelForProviderName:(id)a3 attributionURLs:(id)a4
{
  v14[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if ([v5 length])
  {
    v7 = [v6 count];
    if (v7)
    {
      +[MUPlaceFooterAtributionViewModel interactableVendorAttributionFormatString];
    }

    else
    {
      +[MUPlaceFooterAtributionViewModel nonInteractableVendorAttributionFormatString];
    }
    v9 = ;
    v10 = [MUPlaceFooterAtributionViewModel alloc];
    v14[0] = v5;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
    v8 = [(MUPlaceFooterAtributionViewModel *)v10 initWithFormatString:v9 providerNames:v11 isInteractable:v7 != 0];
  }

  else
  {
    v8 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)viewModelForGeoMapItemAttribution:(id)a3
{
  v4 = a3;
  v5 = [v4 providerName];
  v6 = [v4 attributionURLs];

  v7 = [a1 _attributionViewModelForProviderName:v5 attributionURLs:v6];

  return v7;
}

+ (id)viewModelForMapItemAttribution:(id)a3
{
  v4 = a3;
  v5 = [v4 providerName];
  v6 = [v4 attributionURLs];

  v7 = [a1 _attributionViewModelForProviderName:v5 attributionURLs:v6];

  return v7;
}

@end