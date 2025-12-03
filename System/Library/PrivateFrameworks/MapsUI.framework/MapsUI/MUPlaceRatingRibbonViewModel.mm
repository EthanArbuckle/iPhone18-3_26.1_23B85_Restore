@interface MUPlaceRatingRibbonViewModel
- (BOOL)isEqual:(id)equal;
- (MUPlaceRatingRibbonViewModel)initWithMapItem:(id)item;
- (void)_updateStringProviders;
@end

@implementation MUPlaceRatingRibbonViewModel

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v9 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    v11.receiver = self;
    v11.super_class = MUPlaceRatingRibbonViewModel;
    if ([(MUPlaceRibbonItemViewModel *)&v11 isEqual:v6])
    {
      mapItem = self->_mapItem;
      mapItem = [(MUPlaceRatingRibbonViewModel *)v6 mapItem];
      if (mapItem == mapItem)
      {
        v9 = 1;
      }

      else
      {
        v9 = [(MKMapItem *)mapItem isEqual:mapItem];
      }
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)_updateStringProviders
{
  v3 = self->_mapItem;
  _geoMapItem = [(MKMapItem *)v3 _geoMapItem];
  _sampleSizeForUserRatingScore = [_geoMapItem _sampleSizeForUserRatingScore];

  if (v3)
  {
    _geoMapItem2 = [(MKMapItem *)v3 _geoMapItem];
    _hasAppleRatings = [_geoMapItem2 _hasAppleRatings];

    if (_hasAppleRatings)
    {
      v8 = [MEMORY[0x1E696F1F0] stringFromCount:_sampleSizeForUserRatingScore];
      providerName = _MULocalizedStringFromThisBundle(@"<num> Ratings");
      v10 = [MEMORY[0x1E696AEC0] localizedStringWithValidatedFormat:providerName validFormatSpecifiers:@"%d %@" error:0, _sampleSizeForUserRatingScore, v8];
    }

    else
    {
      _reviewsAttribution = [(MKMapItem *)v3 _reviewsAttribution];
      providerName = [_reviewsAttribution providerName];

      v12 = MEMORY[0x1E696AEC0];
      v13 = [MEMORY[0x1E696F1F0] stringFromCount:_sampleSizeForUserRatingScore];
      v10 = [v12 stringWithFormat:@"%@ (%@)", providerName, v13];
    }
  }

  else
  {
    v10 = _MULocalizedStringFromThisBundle(@"Ratings [Placecard]");
  }

  objc_initWeak(&location, self);
  v14 = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = ___defaultTitleAttributedStringForString_block_invoke;
  aBlock[3] = &unk_1E8219A48;
  v24 = v14;
  v15 = v14;
  v16 = _Block_copy(aBlock);

  [(MUPlaceRibbonItemViewModel *)self setTitleStringProvider:v16];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __54__MUPlaceRatingRibbonViewModel__updateStringProviders__block_invoke;
  v19[3] = &unk_1E8219AE0;
  objc_copyWeak(&v21, &location);
  v17 = v3;
  v20 = v17;
  [(MUPlaceRibbonItemViewModel *)self setValueStringProvider:v19];
  updateDelegate = [(MUPlaceRibbonItemViewModel *)self updateDelegate];
  [updateDelegate ribbonItemViewModelDidUpdate:self];

  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);
}

id __54__MUPlaceRatingRibbonViewModel__updateStringProviders__block_invoke(uint64_t a1)
{
  v72 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v67 = WeakRetained;
    v3 = [*(a1 + 32) _geoMapItem];
    if ([v3 _hasAppleRatings])
    {
      v4 = [MEMORY[0x1E69DC888] labelColor];
      v5 = [MUInfoCardStyle resolvedPrimaryColorForProposedColor:v4];
    }

    else
    {
      v5 = [MEMORY[0x1E696F380] ratingColorForMapItem:*(a1 + 32)];
    }

    v7 = [MEMORY[0x1E69DC888] labelColor];
    v8 = [MUInfoCardStyle resolvedPrimaryColorForProposedColor:v7];

    if (*(a1 + 32))
    {
      v9 = [MEMORY[0x1E696F380] ratingSymbolNameForMapItem:?];
    }

    else
    {
      v9 = @"hand.thumbsup.fill";
    }

    v10 = MEMORY[0x1E69DCAB8];
    v11 = MEMORY[0x1E69DCAD8];
    v12 = MEMORY[0x1E69DB878];
    v13 = *MEMORY[0x1E69DDD80];
    v14 = v9;
    v15 = [v12 preferredFontForTextStyle:v13];
    v16 = [v15 _mapkit_fontWithWeight:*MEMORY[0x1E69DB980]];
    v17 = [v11 configurationWithFont:v16 scale:1];
    v18 = [v10 systemImageNamed:v14 withConfiguration:v17];
    v66 = v14;

    v19 = [v18 imageWithRenderingMode:2];

    v20 = v5;
    v21 = MEMORY[0x1E69DB7F0];
    v22 = v19;
    v23 = objc_alloc_init(v21);
    v24 = [v22 imageWithRenderingMode:2];
    v65 = v22;

    [v23 setImage:v24];
    v25 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v23];
    v26 = [objc_alloc(MEMORY[0x1E696AD40]) initWithAttributedString:v25];
    v27 = *MEMORY[0x1E69DB650];
    v68 = *MEMORY[0x1E69DB650];
    v70 = v20;
    v28 = MEMORY[0x1E695DF20];
    v29 = v20;
    v30 = [v28 dictionaryWithObjects:&v70 forKeys:&v68 count:1];

    [v26 addAttributes:v30 range:{0, objc_msgSend(v26, "length")}];
    v63 = [v26 copy];

    v64 = v29;
    v31 = [*(a1 + 32) _geoMapItem];
    LODWORD(v23) = [v31 _hasAppleRatings];

    v32 = *(a1 + 32);
    if (v23)
    {
      v33 = [v32 _geoMapItem];
      v34 = [v33 _overallAppleRating];
      [v34 percentage];
      v36 = v35;

      v37 = objc_alloc_init(MEMORY[0x1E696ADA0]);
      [v37 setNumberStyle:3];
      v38 = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
      [v37 setLocale:v38];

      v39 = [MEMORY[0x1E696AD98] numberWithDouble:v36];
      v40 = [v37 stringFromNumber:v39];
    }

    else
    {
      [v32 _normalizedUserRatingScore];
      v40 = [MEMORY[0x1E696AEC0] localizedStringWithFormat:@"%.1f", v41];
    }

    v42 = objc_alloc(MEMORY[0x1E696AAB0]);
    v43 = *MEMORY[0x1E69DDCF8];
    v44 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
    v45 = *MEMORY[0x1E69DB970];
    v46 = [v44 _mapkit_fontWithWeight:*MEMORY[0x1E69DB970]];
    v68 = *MEMORY[0x1E69DB648];
    v47 = v68;
    v69 = v27;
    v48 = v27;
    v70 = v46;
    v71 = v8;
    v49 = MEMORY[0x1E695DF20];
    v50 = v8;
    v51 = [v49 dictionaryWithObjects:&v70 forKeys:&v68 count:2];

    v52 = [v42 initWithString:v40 attributes:v51];
    v53 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [v53 addObject:v63];
    v54 = objc_alloc(MEMORY[0x1E696AAB0]);
    v55 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:v43];
    v56 = [v55 _mapkit_fontWithWeight:v45];
    v68 = v47;
    v69 = v48;
    v70 = v56;
    v71 = v50;
    v57 = MEMORY[0x1E695DF20];
    v58 = v50;
    v59 = [v57 dictionaryWithObjects:&v70 forKeys:&v68 count:2];

    v60 = [v54 initWithString:@" " attributes:v59];
    [v53 addObject:v60];

    [v53 addObject:v52];
    v6 = [MapsUILayout buildAttributedDisplayStringForComponents:v53 reverseIfRTLLayout:1];

    WeakRetained = v67;
  }

  else
  {
    v6 = 0;
  }

  v61 = *MEMORY[0x1E69E9840];

  return v6;
}

- (MUPlaceRatingRibbonViewModel)initWithMapItem:(id)item
{
  itemCopy = item;
  v6 = itemCopy;
  if (itemCopy && ![itemCopy _hasUserRatingScore])
  {
    selfCopy = 0;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = MUPlaceRatingRibbonViewModel;
    v7 = [(MUPlaceRatingRibbonViewModel *)&v11 init];
    v8 = v7;
    if (v7)
    {
      objc_storeStrong(&v7->_mapItem, item);
      [(MUPlaceRibbonItemViewModel *)v8 setType:1];
      [(MUPlaceRatingRibbonViewModel *)v8 _updateStringProviders];
    }

    self = v8;
    selfCopy = self;
  }

  return selfCopy;
}

@end