@interface MOSuggestionSheetOptions
- (BOOL)isEqual:(id)equal;
- (MOSuggestionSheetOptions)initWithCoder:(id)coder;
- (MOSuggestionSheetOptions)initWithShowCancelButton:(BOOL)button showBlankEntryButton:(BOOL)entryButton peekDetentRatio:(double)ratio presentFullScreen:(BOOL)screen presentationIsAnimated:(BOOL)animated selectedTabIsRecommended:(BOOL)recommended selectedSuggestionId:(id)id contentOptions:(int64_t)self0;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MOSuggestionSheetOptions

- (MOSuggestionSheetOptions)initWithShowCancelButton:(BOOL)button showBlankEntryButton:(BOOL)entryButton peekDetentRatio:(double)ratio presentFullScreen:(BOOL)screen presentationIsAnimated:(BOOL)animated selectedTabIsRecommended:(BOOL)recommended selectedSuggestionId:(id)id contentOptions:(int64_t)self0
{
  idCopy = id;
  v22.receiver = self;
  v22.super_class = MOSuggestionSheetOptions;
  v19 = [(MOSuggestionSheetOptions *)&v22 init];
  v20 = v19;
  if (v19)
  {
    v19->_showCancelButton = button;
    v19->_showBlankEntryButton = entryButton;
    v19->_peekDetentRatio = ratio;
    v19->_presentFullScreen = screen;
    v19->_presentationIsAnimated = animated;
    v19->_selectedTabIsRecommended = recommended;
    objc_storeStrong(&v19->_selectedSuggestionId, id);
    v20->_contentOptions = options;
  }

  return v20;
}

- (MOSuggestionSheetOptions)initWithCoder:(id)coder
{
  v10.receiver = self;
  v10.super_class = MOSuggestionSheetOptions;
  coderCopy = coder;
  v4 = [(MOSuggestionSheetOptions *)&v10 init];
  v4->_showCancelButton = [coderCopy decodeBoolForKey:{@"showCancelButton", v10.receiver, v10.super_class}];
  v4->_showBlankEntryButton = [coderCopy decodeBoolForKey:@"showBlankEntryButton"];
  [coderCopy decodeDoubleForKey:@"peekDetentRatio"];
  v4->_peekDetentRatio = v5;
  v4->_presentFullScreen = [coderCopy decodeBoolForKey:@"presentFullScreen"];
  v4->_presentationIsAnimated = [coderCopy decodeBoolForKey:@"presentationIsAnimated"];
  v4->_selectedTabIsRecommended = [coderCopy decodeBoolForKey:@"selectedTabIsRecommended"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"selectedSuggestionId"];
  selectedSuggestionId = v4->_selectedSuggestionId;
  v4->_selectedSuggestionId = v6;

  v8 = [coderCopy decodeIntegerForKey:@"contentOptions"];
  v4->_contentOptions = v8;
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  showCancelButton = self->_showCancelButton;
  coderCopy = coder;
  [coderCopy encodeBool:showCancelButton forKey:@"showCancelButton"];
  [coderCopy encodeBool:self->_showBlankEntryButton forKey:@"showBlankEntryButton"];
  [coderCopy encodeDouble:@"peekDetentRatio" forKey:self->_peekDetentRatio];
  [coderCopy encodeBool:self->_presentFullScreen forKey:@"presentFullScreen"];
  [coderCopy encodeBool:self->_presentationIsAnimated forKey:@"presentationIsAnimated"];
  [coderCopy encodeBool:self->_selectedTabIsRecommended forKey:@"selectedTabIsRecommended"];
  [coderCopy encodeObject:self->_selectedSuggestionId forKey:@"selectedSuggestionId"];
  [coderCopy encodeInteger:self->_contentOptions forKey:@"contentOptions"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    if (!v5)
    {
      goto LABEL_12;
    }

    showBlankEntryButton = [(MOSuggestionSheetOptions *)self showBlankEntryButton];
    if (showBlankEntryButton != [v5 showBlankEntryButton])
    {
      goto LABEL_12;
    }

    showCancelButton = [(MOSuggestionSheetOptions *)self showCancelButton];
    if (showCancelButton == [v5 showCancelButton] && (v8 = -[MOSuggestionSheetOptions presentFullScreen](self, "presentFullScreen"), v8 == objc_msgSend(v5, "presentFullScreen")) && (v9 = -[MOSuggestionSheetOptions presentationIsAnimated](self, "presentationIsAnimated"), v9 == objc_msgSend(v5, "presentationIsAnimated")) && (v10 = -[MOSuggestionSheetOptions selectedTabIsRecommended](self, "selectedTabIsRecommended"), v10 == objc_msgSend(v5, "selectedTabIsRecommended")) && (-[MOSuggestionSheetOptions peekDetentRatio](self, "peekDetentRatio"), v12 = v11, objc_msgSend(v5, "peekDetentRatio"), v12 == v13))
    {
      selectedSuggestionId = [(MOSuggestionSheetOptions *)self selectedSuggestionId];
      selectedSuggestionId2 = [v5 selectedSuggestionId];
      if (selectedSuggestionId == selectedSuggestionId2)
      {
        contentOptions = [(MOSuggestionSheetOptions *)self contentOptions];
        v16 = contentOptions == [v5 contentOptions];
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
LABEL_12:
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

@end