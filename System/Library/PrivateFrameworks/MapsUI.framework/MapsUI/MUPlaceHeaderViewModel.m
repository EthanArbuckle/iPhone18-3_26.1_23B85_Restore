@interface MUPlaceHeaderViewModel
- (BOOL)hasEnclosingPlace;
- (BOOL)hasInitialData;
- (BOOL)isVerified;
- (BOOL)supportsCoverPhoto;
- (BOOL)supportsLogo;
- (MKMapItemIdentifier)enclosingMapItemIdentifier;
- (MULabeledTokenViewModel)enclosingPlaceViewModel;
- (MUPlaceHeaderViewModel)initWithMapItem:(id)a3;
- (MUPlaceHeaderViewModel)initWithMapItem:(id)a3 imageManager:(id)a4 isDeveloperPlaceCard:(BOOL)a5 developerPlaceCardAuditToken:(id)a6;
- (NSArray)transitLabelItems;
- (UIColor)coverPhotoBackgroundColor;
- (id)_categoryAndAppleRatingsAttributedStringWithFont:(id)a3 labelColor:(id)a4;
- (id)enclosingPlaceAttributedStringWithFont:(id)a3 labelColor:(id)a4 tokenColor:(id)a5 showContainmentPercent:(double)a6;
- (id)getReplacementResultFromEnclosingPlace;
- (void)_buildEnclosingPlace;
- (void)loadCoverPhotoWithFrameSize:(CGSize)a3 displayScale:(double)a4 completion:(id)a5;
- (void)loadHeroImageWithFrameSize:(CGSize)a3 displayScale:(double)a4 completion:(id)a5;
- (void)loadVerifiedLogoImageWithFrameSize:(CGSize)a3 displayScale:(double)a4 completion:(id)a5;
- (void)refineEnclosingMapItemWithCompletion:(id)a3;
@end

@implementation MUPlaceHeaderViewModel

- (UIColor)coverPhotoBackgroundColor
{
  v2 = [(MKMapItem *)self->_mapItem _businessAssets];
  v3 = [v2 coverPhoto];
  v4 = [v3 backgroundJoeColor];

  if ([v4 length])
  {
    v5 = [MEMORY[0x1E69DC888] _maps_colorFromHexString:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)supportsLogo
{
  if (self->_supportsDecoupledCoverPhotoLogo)
  {
    v3 = [(MKMapItem *)self->_mapItem _geoMapItem];
    v4 = [v3 _bestIconForPlaceCardHeaderDisplay:1 allowSmaller:{1.79769313e308, 1.79769313e308}];
  }

  else
  {
    if (![(MUPlaceHeaderViewModel *)self supportsCoverPhoto])
    {
      return 0;
    }

    v3 = [(MKMapItem *)self->_mapItem _geoMapItem];
    v4 = [v3 _bestAvatarBrandIconURLForSize:1 allowSmaller:{1.79769313e308, 1.79769313e308}];
  }

  v5 = v4 != 0;

  return v5;
}

- (void)loadCoverPhotoWithFrameSize:(CGSize)a3 displayScale:(double)a4 completion:(id)a5
{
  height = a3.height;
  width = a3.width;
  v9 = a5;
  if (v9)
  {
    v10 = [(MKMapItem *)self->_mapItem _businessAssets];
    v11 = [v10 coverPhoto];
    if (_MUGetPhotoInfo_onceToken != -1)
    {
      dispatch_once(&_MUGetPhotoInfo_onceToken, &__block_literal_global_834);
    }

    v12 = [v11 bestPhotoForFrameSize:_MUGetPhotoInfo_options displayScale:width options:{height, a4}];
    if (v12)
    {
      v13 = [(MUPlaceHeaderViewModel *)self imageManager];
      v14 = [v12 url];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __78__MUPlaceHeaderViewModel_loadCoverPhotoWithFrameSize_displayScale_completion___block_invoke;
      v15[3] = &unk_1E8218A40;
      v16 = v9;
      [v13 loadAppImageAtURL:v14 completionHandler:v15];
    }

    else
    {
      (*(v9 + 2))(v9, 0, 0, 0);
    }
  }
}

- (void)loadVerifiedLogoImageWithFrameSize:(CGSize)a3 displayScale:(double)a4 completion:(id)a5
{
  height = a3.height;
  width = a3.width;
  v9 = a5;
  if (v9)
  {
    supportsDecoupledCoverPhotoLogo = self->_supportsDecoupledCoverPhotoLogo;
    v11 = [(MKMapItem *)self->_mapItem _geoMapItem];
    v12 = v11;
    v13 = width * a4;
    v14 = height * a4;
    if (supportsDecoupledCoverPhotoLogo)
    {
      [v11 _bestIconForPlaceCardHeaderDisplay:1 allowSmaller:{v13, v14}];
    }

    else
    {
      [v11 _bestAvatarBrandIconURLForSize:1 allowSmaller:{v13, v14}];
    }
    v15 = ;

    if (v15)
    {
      v16 = [(MUPlaceHeaderViewModel *)self imageManager];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __85__MUPlaceHeaderViewModel_loadVerifiedLogoImageWithFrameSize_displayScale_completion___block_invoke;
      v17[3] = &unk_1E821A058;
      v18 = v9;
      v19 = width;
      v20 = height;
      v21 = a4;
      [v16 loadAppImageAtURL:v15 completionHandler:v17];
    }

    else
    {
      (*(v9 + 2))(v9, 0, 0, 0);
    }
  }
}

void __85__MUPlaceHeaderViewModel_loadVerifiedLogoImageWithFrameSize_displayScale_completion___block_invoke(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5)
{
  v8 = a2;
  if (a5)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v9 = *(a1 + 56);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __85__MUPlaceHeaderViewModel_loadVerifiedLogoImageWithFrameSize_displayScale_completion___block_invoke_2;
    v10[3] = &unk_1E8219758;
    v13 = *(a1 + 32);
    v11 = v8;
    v12 = 0;
    v14 = a3;
    [MapsUIUtilities resizeImageIfNeeded:v11 toFrameSize:v10 displayScale:*(a1 + 40) completion:*(a1 + 48), v9];
  }
}

uint64_t __85__MUPlaceHeaderViewModel_loadVerifiedLogoImageWithFrameSize_displayScale_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 48);
  if (!a2)
  {
    a2 = *(a1 + 32);
  }

  return (*(v3 + 16))(v3, a2, *(a1 + 40), *(a1 + 56));
}

- (BOOL)supportsCoverPhoto
{
  v2 = [(MKMapItem *)self->_mapItem _businessAssets];
  v3 = [v2 coverPhoto];
  v4 = v3 != 0;

  return v4;
}

- (BOOL)isVerified
{
  v3 = [(MKMapItem *)self->_mapItem _isMapItemTypeBrand];
  if (v3)
  {
    mapItem = self->_mapItem;

    LOBYTE(v3) = [(MKMapItem *)mapItem _isMessageIDVerified];
  }

  return v3;
}

- (void)loadHeroImageWithFrameSize:(CGSize)a3 displayScale:(double)a4 completion:(id)a5
{
  height = a3.height;
  width = a3.width;
  v9 = a5;
  if (v9)
  {
    v10 = [(MKMapItem *)self->_mapItem _bestBrandIconURLForSize:1 allowSmaller:width * a4, height * a4];
    if (v10)
    {
      v11 = [(MUPlaceHeaderViewModel *)self imageManager];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __77__MUPlaceHeaderViewModel_loadHeroImageWithFrameSize_displayScale_completion___block_invoke;
      v12[3] = &unk_1E821A058;
      v13 = v9;
      v14 = width;
      v15 = height;
      v16 = a4;
      [v11 loadAppImageAtURL:v10 completionHandler:v12];
    }

    else
    {
      (*(v9 + 2))(v9, 0, 0, 0);
    }
  }
}

void __77__MUPlaceHeaderViewModel_loadHeroImageWithFrameSize_displayScale_completion___block_invoke(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5)
{
  v8 = a2;
  if (a5)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v9 = *(a1 + 56);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __77__MUPlaceHeaderViewModel_loadHeroImageWithFrameSize_displayScale_completion___block_invoke_2;
    v10[3] = &unk_1E8219758;
    v13 = *(a1 + 32);
    v11 = v8;
    v12 = 0;
    v14 = a3;
    [MapsUIUtilities resizeImageIfNeeded:v11 toFrameSize:v10 displayScale:*(a1 + 40) completion:*(a1 + 48), v9];
  }
}

uint64_t __77__MUPlaceHeaderViewModel_loadHeroImageWithFrameSize_displayScale_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 48);
  if (!a2)
  {
    a2 = *(a1 + 32);
  }

  return (*(v3 + 16))(v3, a2, *(a1 + 40), *(a1 + 56));
}

- (NSArray)transitLabelItems
{
  if (self->_isDeveloperPlaceCard)
  {
    v2 = 0;
  }

  else
  {
    v3 = [(MKMapItem *)self->_mapItem _transitInfo];
    v2 = [v3 labelItems];
  }

  return v2;
}

- (BOOL)hasEnclosingPlace
{
  v2 = [(MUPlaceHeaderViewModel *)self enclosingMapItemIdentifier];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)hasInitialData
{
  v2 = [(MKMapItem *)self->_mapItem _geoMapItem];
  v3 = [v2 _enclosingPlace];

  v4 = [v3 containmentTextTemplate];
  LOBYTE(v2) = v4 != 0;

  return v2;
}

- (id)enclosingPlaceAttributedStringWithFont:(id)a3 labelColor:(id)a4 tokenColor:(id)a5 showContainmentPercent:(double)a6
{
  v60[2] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (!self->_isDeveloperPlaceCard)
  {
    v47 = objc_alloc_init(MEMORY[0x1E69DB7F0]);
    v46 = [MEMORY[0x1E69DCAD8] configurationWithFont:v10 scale:1];
    v14 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"chevron.forward"];
    v15 = [v14 imageWithConfiguration:v46];
    v16 = [v15 imageWithTintColor:v12 renderingMode:2];

    [v47 setImage:v16];
    v45 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v47];
    [v10 capHeight];
    v18 = v17;
    [v16 size];
    v20 = (v18 - v19) * 0.5 + -1.0;
    [v16 size];
    [v47 setBounds:{0.0, v20, v21, v22}];
    v23 = objc_alloc_init(MEMORY[0x1E696AD40]);
    if (self->_composedString)
    {
      v24 = objc_alloc_init(MEMORY[0x1E69A1CB0]);
      v53 = 0;
      v54 = &v53;
      v55 = 0x2020000000;
      v56 = 0;
      v48[0] = MEMORY[0x1E69E9820];
      v48[1] = 3221225472;
      v48[2] = __110__MUPlaceHeaderViewModel_enclosingPlaceAttributedStringWithFont_labelColor_tokenColor_showContainmentPercent___block_invoke;
      v48[3] = &unk_1E8218A18;
      v52 = &v53;
      v49 = v12;
      v50 = v10;
      v51 = v11;
      [v24 setFormatStyleHandler:v48];
      v25 = [(GEOComposedString *)self->_composedString stringResultWithOptions:v24];
      v26 = [v25 attributedString];
      v27 = [v26 mutableCopy];

      if (*(v54 + 24) == 1)
      {
        [v27 appendAttributedString:v45];
      }

      _Block_object_dispose(&v53, 8);
    }

    else
    {
      if ([(NSString *)self->_labelString length])
      {
        v28 = objc_alloc(MEMORY[0x1E696AAB0]);
        labelString = self->_labelString;
        v30 = *MEMORY[0x1E69DB648];
        v59[0] = *MEMORY[0x1E69DB650];
        v59[1] = v30;
        v60[0] = v11;
        v60[1] = v10;
        v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v60 forKeys:v59 count:2];
        v32 = [v28 initWithString:labelString attributes:v31];

        [v23 appendAttributedString:v32];
      }

      if (![(NSString *)self->_enclosingPlaceString length])
      {
        v27 = v23;
        goto LABEL_12;
      }

      v33 = objc_alloc(MEMORY[0x1E696AAB0]);
      enclosingPlaceString = self->_enclosingPlaceString;
      v35 = *MEMORY[0x1E69DB648];
      v57[0] = *MEMORY[0x1E69DB650];
      v57[1] = v35;
      v58[0] = v12;
      v58[1] = v10;
      v57[2] = *MEMORY[0x1E69DB670];
      v58[2] = &stru_1F44CA030;
      v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v58 forKeys:v57 count:3];
      v24 = [v33 initWithString:enclosingPlaceString attributes:v36];

      [v23 appendAttributedString:v24];
      [v23 appendAttributedString:v45];
      v27 = v23;
    }

LABEL_12:
    v37 = _MULocalizedStringFromThisBundle(@"Delimiter");
    v38 = [v27 string];
    v39 = [v38 rangeOfString:v37];
    v41 = v40;

    if (v41)
    {
      v42 = [v27 attributedSubstringFromRange:{0, v39 + vcvtpd_u64_f64((objc_msgSend(v27, "length") - v39) * a6)}];
    }

    else
    {
      v42 = [v27 copy];
    }

    v13 = v42;

    goto LABEL_16;
  }

  v13 = [(MUPlaceHeaderViewModel *)self _categoryAndAppleRatingsAttributedStringWithFont:v10 labelColor:v11];
LABEL_16:

  v43 = *MEMORY[0x1E69E9840];

  return v13;
}

id __110__MUPlaceHeaderViewModel_enclosingPlaceAttributedStringWithFont_labelColor_tokenColor_showContainmentPercent___block_invoke(void *a1, unsigned int a2, id a3)
{
  v16[3] = *MEMORY[0x1E69E9840];
  if (a2 < 3 || a2 == 4)
  {
    v9 = *MEMORY[0x1E69DB648];
    v13[0] = *MEMORY[0x1E69DB650];
    v13[1] = v9;
    v10 = a1[5];
    v14[0] = a1[6];
    v14[1] = v10;
    v5 = MEMORY[0x1E695DF20];
    v6 = v14;
    v7 = v13;
    v8 = 2;
  }

  else
  {
    if (a2 != 3)
    {
      goto LABEL_7;
    }

    *(*(a1[7] + 8) + 24) = 1;
    v3 = *MEMORY[0x1E69DB648];
    v15[0] = *MEMORY[0x1E69DB650];
    v15[1] = v3;
    v4 = a1[5];
    v16[0] = a1[4];
    v16[1] = v4;
    v15[2] = *MEMORY[0x1E69DB670];
    v16[2] = &stru_1F44CA030;
    v5 = MEMORY[0x1E695DF20];
    v6 = v16;
    v7 = v15;
    v8 = 3;
  }

  a3 = [v5 dictionaryWithObjects:v6 forKeys:v7 count:v8];
LABEL_7:
  v11 = *MEMORY[0x1E69E9840];

  return a3;
}

- (id)getReplacementResultFromEnclosingPlace
{
  v2 = [(MKMapItem *)self->_mapItem _geoMapItem];
  v3 = [v2 _enclosingPlace];

  if (v3)
  {
    v4 = [v3 containmentTextTemplate];
    v5 = [objc_alloc(MEMORY[0x1E69A1CA8]) initWithGeoFormattedString:v4];
    v6 = [v5 stringResultWithOptions:0];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_categoryAndAppleRatingsAttributedStringWithFont:(id)a3 labelColor:(id)a4
{
  v34[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(MEMORY[0x1E696AD40]);
  v9 = *MEMORY[0x1E69DB648];
  v33[0] = *MEMORY[0x1E69DB650];
  v33[1] = v9;
  v34[0] = v7;
  v34[1] = v6;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:v33 count:2];
  v26 = MEMORY[0x1E69E9820];
  v27 = 3221225472;
  v28 = __86__MUPlaceHeaderViewModel__categoryAndAppleRatingsAttributedStringWithFont_labelColor___block_invoke;
  v29 = &unk_1E8218E68;
  v30 = self;
  v11 = v8;
  v31 = v11;
  v12 = v10;
  v32 = v12;
  v13 = _Block_copy(&v26);
  v14 = [(MUPlaceHeaderViewModel *)self getReplacementResultFromEnclosingPlace:v26];
  v15 = v14;
  if (v14)
  {
    v16 = [v14 styleReplacementResults];
    v17 = [v16 firstObject];
    if (v17)
    {
    }

    else
    {
      v20 = [v15 string];

      if (v20)
      {
        v21 = objc_alloc(MEMORY[0x1E696AAB0]);
        v18 = [v15 string];
        v19 = v21;
        goto LABEL_8;
      }
    }
  }

  v18 = [(MKMapItem *)self->_mapItem _firstLocalizedCategoryName];
  if (![v18 length])
  {
    goto LABEL_9;
  }

  v19 = objc_alloc(MEMORY[0x1E696AAB0]);
LABEL_8:
  v22 = [v19 initWithString:v18 attributes:v12];
  [v11 appendAttributedString:v22];

LABEL_9:
  v13[2](v13);
  v23 = [v11 copy];

  v24 = *MEMORY[0x1E69E9840];

  return v23;
}

void __86__MUPlaceHeaderViewModel__categoryAndAppleRatingsAttributedStringWithFont_labelColor___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) _geoMapItem];
  v3 = [v2 _hasAppleRatings];

  if (v3)
  {
    if ([*(a1 + 40) length])
    {
      v4 = _MULocalizedStringFromThisBundle(@"Delimiter");
      v5 = *(a1 + 40);
      v6 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v4 attributes:*(a1 + 48)];
      [v5 appendAttributedString:v6];
    }

    v13 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:3];
    v7 = [MEMORY[0x1E69DB878] _mapkit_preferredFontForTextStyleInTableViewCell:*MEMORY[0x1E69DDD80] weight:*MEMORY[0x1E69DB978]];
    v8 = [MUAppleRatingRowView ratingSymbolStringWithFont:v7 symbolScale:1 attributes:*(a1 + 48)];
    [v13 addObject:v8];
    v9 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@" " attributes:*(a1 + 48)];
    [v13 addObject:v9];

    v10 = [MEMORY[0x1E696F1F8] compactUserRecommendedRatingSummaryStringForMapItem:*(*(a1 + 32) + 8)];
    v11 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v10 attributes:*(a1 + 48)];
    [v13 addObject:v11];

    v12 = [MapsUILayout buildAttributedDisplayStringForComponents:v13];
    [*(a1 + 40) appendAttributedString:v12];
  }
}

- (MKMapItemIdentifier)enclosingMapItemIdentifier
{
  v3 = [(MKMapItem *)self->_mapItem _geoMapItem];
  v4 = [v3 _enclosingPlace];

  v5 = [v4 parentIdentifier];

  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x1E696F280]);
    v7 = [v4 parentIdentifier];
    v8 = v6;
LABEL_5:
    v12 = [v8 initWithGEOMapItemIdentifier:v7];
    goto LABEL_6;
  }

  v9 = [(MKMapItem *)self->_mapItem _geoMapItem];
  v10 = [v9 _containedPlace];
  v11 = [v10 parent];
  v7 = [v11 _identifier];

  if (v7)
  {
    v8 = objc_alloc(MEMORY[0x1E696F280]);
    goto LABEL_5;
  }

  v14 = [(MKMapItem *)self->_mapItem _venueInfo];
  v15 = [v14 parent];

  if (v15)
  {
    v16 = [(MKMapItem *)self->_mapItem _venueInfo];
    v17 = [v16 parent];
    v18 = [v17 businessID];

    [(MKMapItem *)self->_mapItem _coordinate];
    v12 = [objc_alloc(MEMORY[0x1E696F280]) initWithMUID:v18 resultProviderID:0 coordinate:{v19, v20}];
    v7 = 0;
  }

  else
  {
    v7 = 0;
    v12 = 0;
  }

LABEL_6:

  return v12;
}

- (MULabeledTokenViewModel)enclosingPlaceViewModel
{
  if (self->_isDeveloperPlaceCard)
  {
    v3 = 0;
  }

  else
  {
    if ([(NSString *)self->_labelString length]|| (v3 = [(NSString *)self->_enclosingPlaceString length]) != 0)
    {
      enclosingPlaceViewModel = self->_enclosingPlaceViewModel;
      if (!enclosingPlaceViewModel)
      {
        v7 = [[MULabeledTokenViewModel alloc] initWithLabelValue:self->_labelString tokenValue:self->_enclosingPlaceString];
        v8 = self->_enclosingPlaceViewModel;
        self->_enclosingPlaceViewModel = v7;

        enclosingPlaceViewModel = self->_enclosingPlaceViewModel;
      }

      v3 = enclosingPlaceViewModel;
    }
  }

  return v3;
}

- (void)refineEnclosingMapItemWithCompletion:(id)a3
{
  v15[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(MUPlaceHeaderViewModel *)self enclosingMapItemIdentifier];
  if (v5)
  {
    enclosingMapItem = self->_enclosingMapItem;
    if (enclosingMapItem)
    {
      v4[2](v4, enclosingMapItem, 0);
    }

    else
    {
      objc_initWeak(&location, self);
      v7 = [MEMORY[0x1E696F298] sharedService];
      v15[0] = v5;
      v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
      v9 = [v7 ticketForIdentifiers:v8 traits:0];

      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __63__MUPlaceHeaderViewModel_refineEnclosingMapItemWithCompletion___block_invoke;
      v11[3] = &unk_1E8218CD0;
      objc_copyWeak(&v13, &location);
      v12 = v4;
      [v9 submitWithHandler:v11 networkActivity:0];

      objc_destroyWeak(&v13);
      objc_destroyWeak(&location);
    }
  }

  else
  {
    v4[2](v4, 0, 0);
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __63__MUPlaceHeaderViewModel_refineEnclosingMapItemWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v7 = [v14 firstObject];
    v8 = *(WeakRetained + 2);
    *(WeakRetained + 2) = v7;

    v9 = [*(WeakRetained + 2) name];
    v10 = *(WeakRetained + 4);
    *(WeakRetained + 4) = v9;

    v11 = _MULocalizedStringFromThisBundle(@"Location [Placecard]");
    v12 = *(WeakRetained + 3);
    *(WeakRetained + 3) = v11;

    v13 = *(WeakRetained + 2);
    (*(*(a1 + 32) + 16))();
  }
}

- (void)_buildEnclosingPlace
{
  v3 = [(MUPlaceHeaderViewModel *)self getReplacementResultFromEnclosingPlace];
  if (v3)
  {
    v12 = v3;
    v4 = [v3 string];
    v5 = [v12 styleReplacementResults];
    v6 = [v5 firstObject];

    v7 = [v6 string];
    objc_storeStrong(&self->_enclosingPlaceString, v7);
    if (v6)
    {
      v8 = [v6 range];
      v10 = [v4 stringByReplacingCharactersInRange:v8 withString:{v9, &stru_1F44CA030}];
    }

    else
    {
      v10 = v4;
    }

    labelString = self->_labelString;
    self->_labelString = v10;

    v3 = v12;
  }
}

- (MUPlaceHeaderViewModel)initWithMapItem:(id)a3
{
  v4 = MEMORY[0x1E696F190];
  v5 = a3;
  v6 = [v4 sharedImageManager];
  v7 = [(MUPlaceHeaderViewModel *)self initWithMapItem:v5 imageManager:v6];

  return v7;
}

- (MUPlaceHeaderViewModel)initWithMapItem:(id)a3 imageManager:(id)a4 isDeveloperPlaceCard:(BOOL)a5 developerPlaceCardAuditToken:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v19.receiver = self;
  v19.super_class = MUPlaceHeaderViewModel;
  v14 = [(MUPlaceHeaderViewModel *)&v19 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_mapItem, a3);
    objc_storeStrong(&v15->_imageManager, a4);
    v15->_isDeveloperPlaceCard = a5;
    objc_storeStrong(&v15->_developerPlaceCardAuditToken, a6);
    v16 = *MEMORY[0x1E69A1990];
    v17 = *(MEMORY[0x1E69A1990] + 8);
    v15->_supportsDecoupledCoverPhotoLogo = GEOConfigGetBOOL();
    [(MUPlaceHeaderViewModel *)v15 _buildEnclosingPlace];
  }

  return v15;
}

@end