@interface MOSuggestionSheetOptions
- (BOOL)isEqual:(id)a3;
- (MOSuggestionSheetOptions)initWithCoder:(id)a3;
- (MOSuggestionSheetOptions)initWithShowCancelButton:(BOOL)a3 showBlankEntryButton:(BOOL)a4 peekDetentRatio:(double)a5 presentFullScreen:(BOOL)a6 presentationIsAnimated:(BOOL)a7 selectedTabIsRecommended:(BOOL)a8 selectedSuggestionId:(id)a9 contentOptions:(int64_t)a10;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MOSuggestionSheetOptions

- (MOSuggestionSheetOptions)initWithShowCancelButton:(BOOL)a3 showBlankEntryButton:(BOOL)a4 peekDetentRatio:(double)a5 presentFullScreen:(BOOL)a6 presentationIsAnimated:(BOOL)a7 selectedTabIsRecommended:(BOOL)a8 selectedSuggestionId:(id)a9 contentOptions:(int64_t)a10
{
  v18 = a9;
  v22.receiver = self;
  v22.super_class = MOSuggestionSheetOptions;
  v19 = [(MOSuggestionSheetOptions *)&v22 init];
  v20 = v19;
  if (v19)
  {
    v19->_showCancelButton = a3;
    v19->_showBlankEntryButton = a4;
    v19->_peekDetentRatio = a5;
    v19->_presentFullScreen = a6;
    v19->_presentationIsAnimated = a7;
    v19->_selectedTabIsRecommended = a8;
    objc_storeStrong(&v19->_selectedSuggestionId, a9);
    v20->_contentOptions = a10;
  }

  return v20;
}

- (MOSuggestionSheetOptions)initWithCoder:(id)a3
{
  v10.receiver = self;
  v10.super_class = MOSuggestionSheetOptions;
  v3 = a3;
  v4 = [(MOSuggestionSheetOptions *)&v10 init];
  v4->_showCancelButton = [v3 decodeBoolForKey:{@"showCancelButton", v10.receiver, v10.super_class}];
  v4->_showBlankEntryButton = [v3 decodeBoolForKey:@"showBlankEntryButton"];
  [v3 decodeDoubleForKey:@"peekDetentRatio"];
  v4->_peekDetentRatio = v5;
  v4->_presentFullScreen = [v3 decodeBoolForKey:@"presentFullScreen"];
  v4->_presentationIsAnimated = [v3 decodeBoolForKey:@"presentationIsAnimated"];
  v4->_selectedTabIsRecommended = [v3 decodeBoolForKey:@"selectedTabIsRecommended"];
  v6 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"selectedSuggestionId"];
  selectedSuggestionId = v4->_selectedSuggestionId;
  v4->_selectedSuggestionId = v6;

  v8 = [v3 decodeIntegerForKey:@"contentOptions"];
  v4->_contentOptions = v8;
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  showCancelButton = self->_showCancelButton;
  v5 = a3;
  [v5 encodeBool:showCancelButton forKey:@"showCancelButton"];
  [v5 encodeBool:self->_showBlankEntryButton forKey:@"showBlankEntryButton"];
  [v5 encodeDouble:@"peekDetentRatio" forKey:self->_peekDetentRatio];
  [v5 encodeBool:self->_presentFullScreen forKey:@"presentFullScreen"];
  [v5 encodeBool:self->_presentationIsAnimated forKey:@"presentationIsAnimated"];
  [v5 encodeBool:self->_selectedTabIsRecommended forKey:@"selectedTabIsRecommended"];
  [v5 encodeObject:self->_selectedSuggestionId forKey:@"selectedSuggestionId"];
  [v5 encodeInteger:self->_contentOptions forKey:@"contentOptions"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    if (!v5)
    {
      goto LABEL_12;
    }

    v6 = [(MOSuggestionSheetOptions *)self showBlankEntryButton];
    if (v6 != [v5 showBlankEntryButton])
    {
      goto LABEL_12;
    }

    v7 = [(MOSuggestionSheetOptions *)self showCancelButton];
    if (v7 == [v5 showCancelButton] && (v8 = -[MOSuggestionSheetOptions presentFullScreen](self, "presentFullScreen"), v8 == objc_msgSend(v5, "presentFullScreen")) && (v9 = -[MOSuggestionSheetOptions presentationIsAnimated](self, "presentationIsAnimated"), v9 == objc_msgSend(v5, "presentationIsAnimated")) && (v10 = -[MOSuggestionSheetOptions selectedTabIsRecommended](self, "selectedTabIsRecommended"), v10 == objc_msgSend(v5, "selectedTabIsRecommended")) && (-[MOSuggestionSheetOptions peekDetentRatio](self, "peekDetentRatio"), v12 = v11, objc_msgSend(v5, "peekDetentRatio"), v12 == v13))
    {
      v14 = [(MOSuggestionSheetOptions *)self selectedSuggestionId];
      v15 = [v5 selectedSuggestionId];
      if (v14 == v15)
      {
        v18 = [(MOSuggestionSheetOptions *)self contentOptions];
        v16 = v18 == [v5 contentOptions];
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