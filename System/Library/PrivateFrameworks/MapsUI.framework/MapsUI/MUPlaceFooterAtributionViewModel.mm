@interface MUPlaceFooterAtributionViewModel
+ (id)_attributionViewModelForProviderName:(id)name attributionURLs:(id)ls;
+ (id)viewModelForGeoMapItemAttribution:(id)attribution;
+ (id)viewModelForMapItem:(id)item transitLine:(id)line;
+ (id)viewModelForMapItemAttribution:(id)attribution;
- (MUPlaceFooterAtributionViewModel)initWithFormatString:(id)string providerNames:(id)names isInteractable:(BOOL)interactable;
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
    secondaryLabelColor = [v5 secondaryLabelColor];
    v26[0] = secondaryLabelColor;
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

- (MUPlaceFooterAtributionViewModel)initWithFormatString:(id)string providerNames:(id)names isInteractable:(BOOL)interactable
{
  stringCopy = string;
  namesCopy = names;
  v14.receiver = self;
  v14.super_class = MUPlaceFooterAtributionViewModel;
  v11 = [(MUPlaceFooterAtributionViewModel *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_formatString, string);
    objc_storeStrong(&v12->_providerNames, names);
    v12->_interactable = interactable;
  }

  return v12;
}

+ (id)viewModelForMapItem:(id)item transitLine:(id)line
{
  lineCopy = line;
  _transitAttribution = [item _transitAttribution];
  v7 = _transitAttribution;
  if (_transitAttribution)
  {
    attribution = _transitAttribution;
  }

  else
  {
    attribution = [lineCopy attribution];
  }

  v9 = attribution;

  _providerNames = [v9 _providerNames];
  v11 = [_providerNames count];

  if (v11)
  {
    v12 = [MUPlaceFooterAtributionViewModel alloc];
    v13 = +[MUPlaceFooterAtributionViewModel transitAttributionFormatString];
    _providerNames2 = [v9 _providerNames];
    v15 = [(MUPlaceFooterAtributionViewModel *)v12 initWithFormatString:v13 providerNames:_providerNames2 isInteractable:1];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

+ (id)_attributionViewModelForProviderName:(id)name attributionURLs:(id)ls
{
  v14[1] = *MEMORY[0x1E69E9840];
  nameCopy = name;
  lsCopy = ls;
  if ([nameCopy length])
  {
    v7 = [lsCopy count];
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
    v14[0] = nameCopy;
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

+ (id)viewModelForGeoMapItemAttribution:(id)attribution
{
  attributionCopy = attribution;
  providerName = [attributionCopy providerName];
  attributionURLs = [attributionCopy attributionURLs];

  v7 = [self _attributionViewModelForProviderName:providerName attributionURLs:attributionURLs];

  return v7;
}

+ (id)viewModelForMapItemAttribution:(id)attribution
{
  attributionCopy = attribution;
  providerName = [attributionCopy providerName];
  attributionURLs = [attributionCopy attributionURLs];

  v7 = [self _attributionViewModelForProviderName:providerName attributionURLs:attributionURLs];

  return v7;
}

@end