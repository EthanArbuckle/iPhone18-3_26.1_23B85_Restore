@interface MUPlaceRibbonItemViewModel
+ (id)acceptsPaymentsViewForMapItem:(id)item contactlessPaymentsRibbonItem:(id)ribbonItem;
+ (id)accoladesItemViewModelForMapItem:(id)item;
+ (id)amenityItemViewForMapItem:(id)item amenityItemConfiguration:(id)configuration;
+ (id)costItemViewForMapItem:(id)item;
+ (id)distanceFromCurrentLocationItemViewModelForDistanceString:(id)string;
+ (id)distanceFromCurrentLocationItemViewModelForMapItem:(id)item currentLocationCoordinate:(CLLocationCoordinate2D)coordinate;
+ (id)factoidItemForFactoid:(id)factoid;
+ (id)guidesItemViewModelForMapItem:(id)item;
+ (id)hoursItemViewModelForMapItem:(id)item;
+ (id)ratingSubmissionStatusViewModelForRatingState:(int64_t)state;
- (BOOL)isEqual:(id)equal;
- (MUPlaceRibbonItemViewModelUpdateDelegate)updateDelegate;
- (id)_attributedStringOrNilForTextProvider:(id)provider;
@end

@implementation MUPlaceRibbonItemViewModel

- (MUPlaceRibbonItemViewModelUpdateDelegate)updateDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_updateDelegate);

  return WeakRetained;
}

- (id)_attributedStringOrNilForTextProvider:(id)provider
{
  if (provider)
  {
    v4 = (*(provider + 2))(provider, a2);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v20 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    titleStringProvider = [(MUPlaceRibbonItemViewModel *)self titleStringProvider];
    v8 = [(MUPlaceRibbonItemViewModel *)self _attributedStringOrNilForTextProvider:titleStringProvider];

    titleStringProvider2 = [(MUPlaceRibbonItemViewModel *)v6 titleStringProvider];
    v10 = [(MUPlaceRibbonItemViewModel *)self _attributedStringOrNilForTextProvider:titleStringProvider2];

    valueStringProvider = [(MUPlaceRibbonItemViewModel *)self valueStringProvider];
    v12 = [(MUPlaceRibbonItemViewModel *)self _attributedStringOrNilForTextProvider:valueStringProvider];

    valueStringProvider2 = [(MUPlaceRibbonItemViewModel *)v6 valueStringProvider];
    v14 = [(MUPlaceRibbonItemViewModel *)self _attributedStringOrNilForTextProvider:valueStringProvider2];

    updateDelegate = [(MUPlaceRibbonItemViewModel *)self updateDelegate];
    updateDelegate2 = [(MUPlaceRibbonItemViewModel *)v6 updateDelegate];
    if (updateDelegate == updateDelegate2 && (v17 = -[MUPlaceRibbonItemViewModel isTappable](self, "isTappable"), v17 == -[MUPlaceRibbonItemViewModel isTappable](v6, "isTappable")) && (v8 == v10 || [v8 isEqual:v10]) && (v12 == v14 || objc_msgSend(v12, "isEqual:", v14)))
    {
      typeStringForAX = [(MUPlaceRibbonItemViewModel *)self typeStringForAX];
      typeStringForAX2 = [(MUPlaceRibbonItemViewModel *)v6 typeStringForAX];
      v22 = typeStringForAX;
      if (typeStringForAX == typeStringForAX2)
      {
        v20 = 1;
      }

      else
      {
        v20 = [typeStringForAX isEqual:typeStringForAX2];
      }
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

+ (id)accoladesItemViewModelForMapItem:(id)item
{
  itemCopy = item;
  if ([itemCopy _hasAnyAccolades])
  {
    _accolades = [itemCopy _accolades];
    firstObject = [_accolades firstObject];

    mEMORY[0x1E696F3B8] = [MEMORY[0x1E696F3B8] sharedInstance];
    [mEMORY[0x1E696F3B8] screenScale];
    v8 = v7;

    v9 = objc_alloc_init(MUPlaceRibbonItemViewModel);
    [(MUPlaceRibbonItemViewModel *)v9 setTypeStringForAX:@"Accolades"];
    v10 = _MULocalizedStringFromThisBundle(@"Accolades [Placecard]");
    vendorName = [firstObject vendorName];
    v12 = [vendorName length];

    if (v12)
    {
      vendorName2 = [firstObject vendorName];

      v10 = vendorName2;
    }

    v14 = v10;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = ___defaultTitleAttributedStringForString_block_invoke;
    aBlock[3] = &unk_1E8219A48;
    v23 = v14;
    v15 = _Block_copy(aBlock);

    [(MUPlaceRibbonItemViewModel *)v9 setTitleStringProvider:v15];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __63__MUPlaceRibbonItemViewModel_accoladesItemViewModelForMapItem___block_invoke;
    v19[3] = &unk_1E8219AB8;
    v20 = firstObject;
    v21 = v8;
    v16 = firstObject;
    [(MUPlaceRibbonItemViewModel *)v9 setValueStringProvider:v19];
    accoladeText = [v16 accoladeText];
    [(MUPlaceRibbonItemViewModel *)v9 setPreferredAccessibilityValue:accoladeText];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

id __63__MUPlaceRibbonItemViewModel_accoladesItemViewModelForMapItem___block_invoke(uint64_t a1)
{
  v46 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = [MEMORY[0x1E696F220] imageForIconID:objc_msgSend(*(a1 + 32) contentScale:"iconId") sizeGroup:1 nightMode:{0, *(a1 + 40)}];
  v4 = *MEMORY[0x1E69DDCF8];
  v5 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  v6 = *MEMORY[0x1E69DB970];
  v7 = [v5 _mapkit_fontWithWeight:*MEMORY[0x1E69DB970]];
  [v7 capHeight];

  [v3 size];
  v8 = *(a1 + 40);
  UIRoundToScale();
  v10 = [objc_alloc(MEMORY[0x1E696F228]) initWithImage:v3 verticalOffset:v9];
  [v10 setMaxHeight:18.0];
  v11 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v10];
  [v2 addObject:v11];
  v12 = [*(a1 + 32) shouldDisplayAccoladeText];
  v13 = objc_alloc(MEMORY[0x1E696AAB0]);
  if (v12)
  {
    v14 = [*(a1 + 32) accoladeText];
    v15 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:v4];
    v16 = [v15 _mapkit_fontWithWeight:v6];
    v40 = v11;
    v17 = v3;
    v18 = [MEMORY[0x1E69DC888] labelColor];
    v19 = [MUInfoCardStyle resolvedPrimaryColorForProposedColor:v18];
    v20 = *MEMORY[0x1E69DB650];
    v42 = *MEMORY[0x1E69DB648];
    v43 = v20;
    v44 = v16;
    v45 = v19;
    v21 = MEMORY[0x1E695DF20];
    v22 = v16;
    v23 = [v21 dictionaryWithObjects:&v44 forKeys:&v42 count:2];

    v24 = [v13 initWithString:v14 attributes:v23];
    v3 = v17;
    v11 = v40;

    v25 = [objc_alloc(MEMORY[0x1E696F1D8]) initWithWidth:6.0];
    v26 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v25];
    v41[0] = v26;
    v41[1] = v24;
    v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:2];
    [v2 addObjectsFromArray:v27];
  }

  else
  {
    v28 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:v4];
    v29 = [v28 _mapkit_fontWithWeight:v6];
    v30 = [MEMORY[0x1E69DC888] labelColor];
    v31 = [MUInfoCardStyle resolvedPrimaryColorForProposedColor:v30];
    v32 = *MEMORY[0x1E69DB650];
    v42 = *MEMORY[0x1E69DB648];
    v43 = v32;
    v44 = v29;
    v45 = v31;
    v33 = MEMORY[0x1E695DF20];
    v34 = v29;
    v35 = [v33 dictionaryWithObjects:&v44 forKeys:&v42 count:2];

    v24 = [v13 initWithString:@" " attributes:v35];
    [v2 addObject:v24];
  }

  v36 = [v2 copy];
  v37 = [MapsUILayout buildAttributedDisplayStringForComponents:v36 reverseIfRTLLayout:1];

  v38 = *MEMORY[0x1E69E9840];

  return v37;
}

+ (id)ratingSubmissionStatusViewModelForRatingState:(int64_t)state
{
  if (state > 2)
  {
    v3 = &stru_1F44CA030;
    v4 = &stru_1F44CA030;
  }

  else
  {
    v3 = off_1E8219B00[state];
    v4 = off_1E8219B18[state];
  }

  v5 = objc_alloc_init(MUPlaceRibbonItemViewModel);
  [(MUPlaceRibbonItemViewModel *)v5 setTypeStringForAX:@"Rate"];
  [(MUPlaceRibbonItemViewModel *)v5 setTappable:1];
  v6 = _MULocalizedStringFromThisBundle(@"Rate");
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = ___defaultTitleAttributedStringForString_block_invoke;
  aBlock[3] = &unk_1E8219A48;
  v14 = v6;
  v7 = v6;
  v8 = _Block_copy(aBlock);

  [(MUPlaceRibbonItemViewModel *)v5 setTitleStringProvider:v8];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __76__MUPlaceRibbonItemViewModel_ratingSubmissionStatusViewModelForRatingState___block_invoke;
  v10[3] = &unk_1E8219A70;
  v11 = v4;
  v12 = v3;
  [(MUPlaceRibbonItemViewModel *)v5 setValueStringProvider:v10];

  return v5;
}

id __76__MUPlaceRibbonItemViewModel_ratingSubmissionStatusViewModelForRatingState___block_invoke(uint64_t a1)
{
  v60[2] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69DCAB8];
  v3 = MEMORY[0x1E69DCAD8];
  v4 = MEMORY[0x1E69DB878];
  v5 = *MEMORY[0x1E69DDD80];
  v6 = *(a1 + 32);
  v7 = [v4 preferredFontForTextStyle:v5];
  v8 = *MEMORY[0x1E69DB980];
  v9 = [v7 _mapkit_fontWithWeight:*MEMORY[0x1E69DB980]];
  v10 = [v3 configurationWithFont:v9 scale:1];
  v11 = [v2 systemImageNamed:v6 withConfiguration:v10];

  v12 = [v11 imageWithRenderingMode:2];

  v13 = [MEMORY[0x1E69DC888] linkColor];
  v14 = MEMORY[0x1E69DB7F0];
  v15 = v12;
  v16 = objc_alloc_init(v14);
  v17 = [v15 imageWithRenderingMode:2];

  [v16 setImage:v17];
  v18 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v16];
  v19 = [objc_alloc(MEMORY[0x1E696AD40]) initWithAttributedString:v18];
  v59[0] = *MEMORY[0x1E69DB650];
  v20 = v59[0];
  v60[0] = v13;
  v21 = MEMORY[0x1E695DF20];
  v22 = v13;
  v23 = [v21 dictionaryWithObjects:v60 forKeys:v59 count:1];

  [v19 addAttributes:v23 range:{0, objc_msgSend(v19, "length")}];
  v57 = [v19 copy];

  v24 = *(a1 + 40);
  v25 = MEMORY[0x1E69DCAB8];
  v26 = MEMORY[0x1E69DCAD8];
  v27 = MEMORY[0x1E69DB878];
  v28 = v24;
  v29 = [v27 preferredFontForTextStyle:v5];
  v30 = [v29 _mapkit_fontWithWeight:v8];
  v31 = [v26 configurationWithFont:v30 scale:1];
  v32 = [v25 systemImageNamed:v28 withConfiguration:v31];

  v33 = [v32 imageWithRenderingMode:2];

  v34 = [MEMORY[0x1E69DC888] linkColor];
  v35 = MEMORY[0x1E69DB7F0];
  v36 = v33;
  v37 = objc_alloc_init(v35);
  v38 = [v36 imageWithRenderingMode:2];

  [v37 setImage:v38];
  v39 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v37];
  v40 = [objc_alloc(MEMORY[0x1E696AD40]) initWithAttributedString:v39];
  v59[0] = v20;
  v60[0] = v34;
  v41 = MEMORY[0x1E695DF20];
  v42 = v34;
  v43 = [v41 dictionaryWithObjects:v60 forKeys:v59 count:1];

  [v40 addAttributes:v43 range:{0, objc_msgSend(v40, "length")}];
  v44 = [v40 copy];

  v58[0] = v57;
  v45 = objc_alloc(MEMORY[0x1E696AAB0]);
  v46 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  v47 = [v46 _mapkit_fontWithWeight:*MEMORY[0x1E69DB970]];
  v48 = [MEMORY[0x1E69DC888] linkColor];
  v59[0] = *MEMORY[0x1E69DB648];
  v59[1] = v20;
  v60[0] = v47;
  v60[1] = v48;
  v49 = MEMORY[0x1E695DF20];
  v50 = v47;
  v51 = [v49 dictionaryWithObjects:v60 forKeys:v59 count:2];

  v52 = [v45 initWithString:@" " attributes:v51];
  v58[1] = v52;
  v58[2] = v44;
  v53 = [MEMORY[0x1E695DEC8] arrayWithObjects:v58 count:3];
  v54 = [MapsUILayout buildAttributedDisplayStringForComponents:v53 reverseIfRTLLayout:1];

  v55 = *MEMORY[0x1E69E9840];

  return v54;
}

+ (id)distanceFromCurrentLocationItemViewModelForDistanceString:(id)string
{
  stringCopy = string;
  v4 = objc_alloc_init(MUPlaceRibbonItemViewModel);
  [(MUPlaceRibbonItemViewModel *)v4 setTypeStringForAX:@"Distance"];
  v5 = _MULocalizedStringFromThisBundle(@"Distance");
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = ___defaultTitleAttributedStringForString_block_invoke;
  aBlock[3] = &unk_1E8219A48;
  v13 = v5;
  v6 = v5;
  v7 = _Block_copy(aBlock);

  [(MUPlaceRibbonItemViewModel *)v4 setTitleStringProvider:v7];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __88__MUPlaceRibbonItemViewModel_distanceFromCurrentLocationItemViewModelForDistanceString___block_invoke;
  v10[3] = &unk_1E8219A48;
  v11 = stringCopy;
  v8 = stringCopy;
  [(MUPlaceRibbonItemViewModel *)v4 setValueStringProvider:v10];

  return v4;
}

id __88__MUPlaceRibbonItemViewModel_distanceFromCurrentLocationItemViewModelForDistanceString___block_invoke(uint64_t a1)
{
  v53 = *MEMORY[0x1E69E9840];
  v1 = MEMORY[0x1E69DCAB8];
  v2 = MEMORY[0x1E69DCAD8];
  v3 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD80]];
  v4 = [v3 _mapkit_fontWithWeight:*MEMORY[0x1E69DB980]];
  v5 = [v2 configurationWithFont:v4 scale:1];
  v6 = [v1 systemImageNamed:@"point.fill.topleft.down.curvedto.point.fill.bottomright.up" withConfiguration:v5];

  v7 = [v6 imageWithRenderingMode:2];

  v8 = [MEMORY[0x1E69DC888] labelColor];
  v9 = [MUInfoCardStyle resolvedPrimaryColorForProposedColor:v8];
  v10 = MEMORY[0x1E69DB7F0];
  v11 = v7;
  v12 = objc_alloc_init(v10);
  v13 = [v11 imageWithRenderingMode:2];

  [v12 setImage:v13];
  v14 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v12];
  v15 = [objc_alloc(MEMORY[0x1E696AD40]) initWithAttributedString:v14];
  v49 = *MEMORY[0x1E69DB650];
  v16 = v49;
  v51 = v9;
  v17 = MEMORY[0x1E695DF20];
  v18 = v9;
  v19 = [v17 dictionaryWithObjects:&v51 forKeys:&v49 count:1];

  [v15 addAttributes:v19 range:{0, objc_msgSend(v15, "length")}];
  v47 = [v15 copy];

  v20 = objc_alloc(MEMORY[0x1E696AAB0]);
  v21 = *(a1 + 32);
  v22 = *MEMORY[0x1E69DDCF8];
  v23 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  v24 = *MEMORY[0x1E69DB970];
  v25 = [v23 _mapkit_fontWithWeight:*MEMORY[0x1E69DB970]];
  v26 = [MEMORY[0x1E69DC888] labelColor];
  v27 = [MUInfoCardStyle resolvedPrimaryColorForProposedColor:v26];
  v49 = *MEMORY[0x1E69DB648];
  v28 = v49;
  v50 = v16;
  v51 = v25;
  v52 = v27;
  v29 = MEMORY[0x1E695DF20];
  v30 = v25;
  v31 = [v29 dictionaryWithObjects:&v51 forKeys:&v49 count:2];

  v32 = [v20 initWithString:v21 attributes:v31];
  v33 = objc_alloc(MEMORY[0x1E696AAB0]);
  v34 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:v22];
  v35 = [v34 _mapkit_fontWithWeight:v24];
  v36 = [MEMORY[0x1E69DC888] labelColor];
  v37 = [MUInfoCardStyle resolvedPrimaryColorForProposedColor:v36];
  v49 = v28;
  v50 = v16;
  v51 = v35;
  v52 = v37;
  v38 = MEMORY[0x1E695DF20];
  v39 = v35;
  v40 = [v38 dictionaryWithObjects:&v51 forKeys:&v49 count:2];

  v41 = [v33 initWithString:@" " attributes:v40];
  v48[0] = v47;
  v48[1] = v41;
  v48[2] = v32;
  v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:v48 count:3];
  v43 = [MapsUILayout buildAttributedDisplayStringForComponents:v42 reverseIfRTLLayout:0];

  v44 = *MEMORY[0x1E69E9840];

  return v43;
}

+ (id)distanceFromCurrentLocationItemViewModelForMapItem:(id)item currentLocationCoordinate:(CLLocationCoordinate2D)coordinate
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  itemCopy = item;
  _detourInfo = [itemCopy _detourInfo];
  if (_detourInfo)
  {
    v9 = _detourInfo;
    _detourInfo2 = [itemCopy _detourInfo];
    [_detourInfo2 distanceToPlace];
    v12 = v11;

    if (v12 > 0.0)
    {
      _detourInfo3 = [itemCopy _detourInfo];
      [_detourInfo3 distanceToPlace];
      v15 = v14;
      goto LABEL_11;
    }
  }

  [itemCopy _coordinate];
  v17 = 0;
  if (fabs(v18) <= 180.0 && v16 >= -90.0 && v16 <= 90.0)
  {
    v17 = 0;
    if (fabs(longitude) <= 180.0 && latitude >= -90.0 && latitude <= 90.0)
    {
      v19 = objc_alloc(MEMORY[0x1E6985C40]);
      [itemCopy _coordinate];
      v21 = v20;
      [itemCopy _coordinate];
      _detourInfo3 = [v19 initWithLatitude:v21 longitude:?];
      v22 = [objc_alloc(MEMORY[0x1E6985C40]) initWithLatitude:latitude longitude:longitude];
      [_detourInfo3 distanceFromLocation:v22];
      v15 = v23;

LABEL_11:
      if (v15 == 0.0)
      {
        v17 = 0;
      }

      else
      {
        v24 = [MEMORY[0x1E696AEC0] _mapkit_localizedDistanceStringWithMeters:v15 abbreviated:1];
        v17 = [self distanceFromCurrentLocationItemViewModelForDistanceString:v24];
      }
    }
  }

  return v17;
}

+ (id)factoidItemForFactoid:(id)factoid
{
  v3 = [MUFactoidViewModel viewModelForFactoid:factoid];
  titleString = [v3 titleString];
  valueString = [v3 valueString];
  if ([titleString length] && objc_msgSend(valueString, "length"))
  {
    v6 = objc_alloc_init(MUPlaceRibbonItemViewModel);
    [(MUPlaceRibbonItemViewModel *)v6 setTypeStringForAX:@"Factoid"];
    v7 = titleString;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = ___defaultTitleAttributedStringForString_block_invoke;
    aBlock[3] = &unk_1E8219A48;
    v14 = v7;
    v8 = _Block_copy(aBlock);

    [(MUPlaceRibbonItemViewModel *)v6 setTitleStringProvider:v8];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __52__MUPlaceRibbonItemViewModel_factoidItemForFactoid___block_invoke;
    v10[3] = &unk_1E8219A70;
    v11 = v3;
    v12 = valueString;
    [(MUPlaceRibbonItemViewModel *)v6 setValueStringProvider:v10];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id __52__MUPlaceRibbonItemViewModel_factoidItemForFactoid___block_invoke(uint64_t a1)
{
  v56 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = [*(a1 + 32) symbolName];
  v4 = [v3 length];

  v5 = MEMORY[0x1E69DDCF8];
  v6 = MEMORY[0x1E69DB970];
  if (v4)
  {
    v7 = *(a1 + 32);
    v8 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
    v9 = [v8 _mapkit_fontWithWeight:*v6];
    v10 = [v7 buildSymbolWithFont:v9];
    v11 = [v10 imageWithRenderingMode:2];

    if (v11)
    {
      v12 = [*(a1 + 32) symbolColor];
      if (v12)
      {
        v13 = [*(a1 + 32) symbolColor];
      }

      else
      {
        v14 = [MEMORY[0x1E69DC888] labelColor];
        v13 = [MUInfoCardStyle resolvedPrimaryColorForProposedColor:v14];
      }

      v15 = v13;
      v16 = MEMORY[0x1E69DB7F0];
      v17 = v11;
      v18 = objc_alloc_init(v16);
      v19 = [v17 imageWithRenderingMode:2];

      [v18 setImage:v19];
      v20 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v18];
      v21 = [objc_alloc(MEMORY[0x1E696AD40]) initWithAttributedString:v20];
      v52 = *MEMORY[0x1E69DB650];
      v54 = v15;
      v22 = MEMORY[0x1E695DF20];
      v23 = v15;
      v24 = [v22 dictionaryWithObjects:&v54 forKeys:&v52 count:1];

      [v21 addAttributes:v24 range:{0, objc_msgSend(v21, "length")}];
      v25 = [v21 copy];

      [v2 addObject:v25];
      v6 = MEMORY[0x1E69DB970];
    }

    v5 = MEMORY[0x1E69DDCF8];
  }

  if ([v2 count] && objc_msgSend(*(a1 + 40), "length"))
  {
    v26 = objc_alloc(MEMORY[0x1E696AAB0]);
    v27 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*v5];
    v28 = [v27 _mapkit_fontWithWeight:*v6];
    v29 = v6;
    v30 = [MEMORY[0x1E69DC888] labelColor];
    v31 = [MUInfoCardStyle resolvedPrimaryColorForProposedColor:v30];
    v32 = *MEMORY[0x1E69DB650];
    v52 = *MEMORY[0x1E69DB648];
    v53 = v32;
    v54 = v28;
    v55 = v31;
    v33 = MEMORY[0x1E695DF20];
    v34 = v28;
    v35 = [v33 dictionaryWithObjects:&v54 forKeys:&v52 count:2];

    v36 = [v26 initWithString:@" " attributes:v35];
    v6 = v29;

    v5 = MEMORY[0x1E69DDCF8];
    [v2 addObject:v36];
  }

  v37 = objc_alloc(MEMORY[0x1E696AAB0]);
  v38 = *(a1 + 40);
  v39 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*v5];
  v40 = [v39 _mapkit_fontWithWeight:*v6];
  v41 = [MEMORY[0x1E69DC888] labelColor];
  v42 = [MUInfoCardStyle resolvedPrimaryColorForProposedColor:v41];
  v43 = *MEMORY[0x1E69DB650];
  v52 = *MEMORY[0x1E69DB648];
  v53 = v43;
  v54 = v40;
  v55 = v42;
  v44 = MEMORY[0x1E695DF20];
  v45 = v40;
  v46 = [v44 dictionaryWithObjects:&v54 forKeys:&v52 count:2];

  v47 = [v37 initWithString:v38 attributes:v46];
  [v2 addObject:v47];
  v48 = [v2 copy];
  v49 = +[MapsUILayout buildAttributedDisplayStringForComponents:reverseIfRTLLayout:](MapsUILayout, "buildAttributedDisplayStringForComponents:reverseIfRTLLayout:", v48, [*(a1 + 32) shouldReverseForRTLLayout]);

  v50 = *MEMORY[0x1E69E9840];

  return v49;
}

+ (id)acceptsPaymentsViewForMapItem:(id)item contactlessPaymentsRibbonItem:(id)ribbonItem
{
  v41 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  ribbonItemCopy = ribbonItem;
  if (!MapsFeature_IsEnabled_ApplePayEnhancementsEnabled())
  {
    goto LABEL_15;
  }

  _amenities = [itemCopy _amenities];
  if (![_amenities count])
  {

    goto LABEL_15;
  }

  indexesWithinAmenityComponent = [ribbonItemCopy indexesWithinAmenityComponent];
  v9 = [indexesWithinAmenityComponent count];

  if (!v9)
  {
LABEL_15:
    v23 = 0;
    goto LABEL_16;
  }

  v10 = objc_alloc(MEMORY[0x1E695DF70]);
  indexesWithinAmenityComponent2 = [ribbonItemCopy indexesWithinAmenityComponent];
  v12 = [v10 initWithCapacity:{objc_msgSend(indexesWithinAmenityComponent2, "count")}];

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  indexesWithinAmenityComponent3 = [ribbonItemCopy indexesWithinAmenityComponent];
  v14 = [indexesWithinAmenityComponent3 countByEnumeratingWithState:&v34 objects:v40 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v35;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v35 != v16)
        {
          objc_enumerationMutation(indexesWithinAmenityComponent3);
        }

        unsignedIntegerValue = [*(*(&v34 + 1) + 8 * i) unsignedIntegerValue];
        _amenities2 = [itemCopy _amenities];
        v20 = [_amenities2 count];

        if (unsignedIntegerValue < v20)
        {
          _amenities3 = [itemCopy _amenities];
          v22 = [_amenities3 objectAtIndex:unsignedIntegerValue];

          [v12 addObject:v22];
        }
      }

      v15 = [indexesWithinAmenityComponent3 countByEnumeratingWithState:&v34 objects:v40 count:16];
    }

    while (v15);
  }

  v23 = objc_alloc_init(MUPlaceRibbonItemViewModel);
  [(MUPlaceRibbonItemViewModel *)v23 setTypeStringForAX:@"AcceptsPayments"];
  ribbonText = [ribbonItemCopy ribbonText];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = ___defaultTitleAttributedStringForString_block_invoke;
  aBlock[3] = &unk_1E8219A48;
  v39 = ribbonText;
  v25 = ribbonText;
  v26 = _Block_copy(aBlock);

  [(MUPlaceRibbonItemViewModel *)v23 setTitleStringProvider:v26];
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __90__MUPlaceRibbonItemViewModel_acceptsPaymentsViewForMapItem_contactlessPaymentsRibbonItem___block_invoke;
  v32[3] = &unk_1E8219A48;
  v33 = v12;
  v27 = v12;
  [(MUPlaceRibbonItemViewModel *)v23 setValueStringProvider:v32];
  v28 = MUMap(v27, &__block_literal_global_89);
  v29 = [v28 componentsJoinedByString:@" "];
  [(MUPlaceRibbonItemViewModel *)v23 setPreferredAccessibilityValue:v29];

LABEL_16:
  v30 = *MEMORY[0x1E69E9840];

  return v23;
}

id __90__MUPlaceRibbonItemViewModel_acceptsPaymentsViewForMapItem_contactlessPaymentsRibbonItem___block_invoke(uint64_t a1)
{
  v46 = *MEMORY[0x1E69E9840];
  v39 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = *(a1 + 32);
  v37 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
  if (v37)
  {
    v36 = *v42;
    v38 = *MEMORY[0x1E69DDD80];
    v2 = *MEMORY[0x1E69DB980];
    v3 = 0x1E69DC000uLL;
    v4 = 0x1E69DB000uLL;
    do
    {
      v5 = 0;
      do
      {
        if (*v42 != v36)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v41 + 1) + 8 * v5);
        v7 = [v6 resolvedRibbonSymbolName];
        if ([v7 length])
        {
          v8 = MEMORY[0x1E69DB878];
          v9 = v7;
          [v8 preferredFontForTextStyle:v38];
          v11 = v10 = v4;
          v12 = [v11 _mapkit_fontWithWeight:v2];

          v13 = *(v3 + 2744);
          v14 = [MEMORY[0x1E69DCAD8] configurationWithFont:v12];
          v15 = [v13 _mapsui_resolvedSymbolImageNamed:v9 withConfiguration:v14];

          v16 = [v15 imageWithRenderingMode:2];

          v4 = v10;
          v17 = objc_alloc_init(*(v10 + 2032));
          [v17 setImage:v16];

          v18 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v17];
          [v39 addObject:v18];

          v19 = [v6 ribbonSymbolImageName];
          if ([v19 length])
          {
            v20 = MEMORY[0x1E69DB878];
            v21 = v19;
            v22 = [v20 preferredFontForTextStyle:v38];
            v23 = [v22 _mapkit_fontWithWeight:v2];

            v24 = *(v3 + 2744);
            v25 = [MEMORY[0x1E69DCAD8] configurationWithFont:v23];
            v26 = [v24 _mapsui_resolvedSymbolImageNamed:v21 withConfiguration:v25];

            v4 = v10;
            v27 = [v26 imageWithRenderingMode:2];

            v28 = objc_alloc_init(*(v10 + 2032));
            [v28 setImage:v27];

            v29 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v28];
            [v39 addObject:v29];

            v17 = v28;
          }

          v3 = 0x1E69DC000;
        }

        else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_fault_impl(&dword_1C5620000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Assertion failed: symbolGlyph.length > 0", buf, 2u);
        }

        ++v5;
      }

      while (v37 != v5);
      v30 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
      v37 = v30;
    }

    while (v30);
  }

  v31 = [v39 copy];
  v32 = [MapsUILayout buildAttributedDisplayStringForComponents:v31 reverseIfRTLLayout:1];

  v33 = *MEMORY[0x1E69E9840];

  return v32;
}

+ (id)amenityItemViewForMapItem:(id)item amenityItemConfiguration:(id)configuration
{
  v65 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  configurationCopy = configuration;
  _amenities = [itemCopy _amenities];
  v8 = [_amenities count];

  if (v8)
  {
    indexesWithinAmenityComponent = [configurationCopy indexesWithinAmenityComponent];

    v46 = configurationCopy;
    if (indexesWithinAmenityComponent)
    {
      v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v57 = 0u;
      v58 = 0u;
      v59 = 0u;
      v60 = 0u;
      indexesWithinAmenityComponent2 = [configurationCopy indexesWithinAmenityComponent];
      v12 = [indexesWithinAmenityComponent2 countByEnumeratingWithState:&v57 objects:v64 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v58;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v58 != v14)
            {
              objc_enumerationMutation(indexesWithinAmenityComponent2);
            }

            unsignedIntegerValue = [*(*(&v57 + 1) + 8 * i) unsignedIntegerValue];
            _amenities2 = [itemCopy _amenities];
            v18 = [_amenities2 count];

            if (unsignedIntegerValue < v18)
            {
              _amenities3 = [itemCopy _amenities];
              v20 = [_amenities3 objectAtIndex:unsignedIntegerValue];

              [v10 addObject:v20];
            }
          }

          v13 = [indexesWithinAmenityComponent2 countByEnumeratingWithState:&v57 objects:v64 count:16];
        }

        while (v13);
      }

      _amenities4 = [v10 copy];
    }

    else
    {
      _amenities4 = [itemCopy _amenities];
    }

    v23 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    obj = _amenities4;
    v50 = [obj countByEnumeratingWithState:&v53 objects:v63 count:16];
    if (v50)
    {
      v49 = *v54;
      v47 = *MEMORY[0x1E69DDD80];
      v24 = *MEMORY[0x1E69DB980];
LABEL_17:
      v25 = 0;
      while (1)
      {
        if (*v54 != v49)
        {
          objc_enumerationMutation(obj);
        }

        v26 = *(*(&v53 + 1) + 8 * v25);
        resolvedRibbonSymbolName = [v26 resolvedRibbonSymbolName];
        if ([resolvedRibbonSymbolName length])
        {
          v28 = v23;
          v29 = MEMORY[0x1E69DCAB8];
          v30 = MEMORY[0x1E69DCAD8];
          v31 = MEMORY[0x1E69DB878];
          v32 = resolvedRibbonSymbolName;
          v33 = [v31 preferredFontForTextStyle:v47];
          v34 = [v33 _mapkit_fontWithWeight:v24];
          v35 = [v30 configurationWithFont:v34 scale:1];
          v36 = [v29 _mapsui_resolvedSymbolImageNamed:v32 withConfiguration:v35];

          v37 = [v36 imageWithRenderingMode:2];

          v23 = v28;
          if (v37)
          {
            [v28 addObject:v26];
          }
        }

        v38 = [v23 count];

        if (v38 == 5)
        {
          break;
        }

        if (v50 == ++v25)
        {
          v50 = [obj countByEnumeratingWithState:&v53 objects:v63 count:16];
          if (v50)
          {
            goto LABEL_17;
          }

          break;
        }
      }
    }

    if ([v23 count])
    {
      v22 = objc_alloc_init(MUPlaceRibbonItemViewModel);
      [(MUPlaceRibbonItemViewModel *)v22 setTypeStringForAX:@"GoodToKnow"];
      v39 = _MULocalizedStringFromThisBundle(@"Good to Know [Placecard]");
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = ___defaultTitleAttributedStringForString_block_invoke;
      aBlock[3] = &unk_1E8219A48;
      v62 = v39;
      v40 = _Block_copy(aBlock);

      [(MUPlaceRibbonItemViewModel *)v22 setTitleStringProvider:v40];
      v51[0] = MEMORY[0x1E69E9820];
      v51[1] = 3221225472;
      v51[2] = __81__MUPlaceRibbonItemViewModel_amenityItemViewForMapItem_amenityItemConfiguration___block_invoke;
      v51[3] = &unk_1E8219A48;
      v41 = v23;
      v52 = v41;
      [(MUPlaceRibbonItemViewModel *)v22 setValueStringProvider:v51];
      v42 = MUMap(v41, &__block_literal_global_14883);
      v43 = [v42 componentsJoinedByString:@" "];
      [(MUPlaceRibbonItemViewModel *)v22 setPreferredAccessibilityValue:v43];
    }

    else
    {
      v22 = 0;
    }

    configurationCopy = v46;
  }

  else
  {
    v22 = 0;
  }

  v44 = *MEMORY[0x1E69E9840];

  return v22;
}

id __81__MUPlaceRibbonItemViewModel_amenityItemViewForMapItem_amenityItemConfiguration___block_invoke(uint64_t a1)
{
  v33 = *MEMORY[0x1E69E9840];
  v26 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = *(a1 + 32);
  v2 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v2)
  {
    v3 = v2;
    v25 = *v29;
    v4 = *MEMORY[0x1E69DDD80];
    v5 = *MEMORY[0x1E69DB980];
    do
    {
      v6 = 0;
      do
      {
        if (*v29 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v7 = [*(*(&v28 + 1) + 8 * v6) resolvedRibbonSymbolName];
        if ([v7 length])
        {
          v8 = objc_alloc_init(MEMORY[0x1E69DB7F0]);
          v9 = MEMORY[0x1E69DCAB8];
          v10 = MEMORY[0x1E69DCAD8];
          v11 = MEMORY[0x1E69DB878];
          v12 = v7;
          v13 = [v11 preferredFontForTextStyle:v4];
          v14 = [v13 _mapkit_fontWithWeight:v5];
          v15 = [v10 configurationWithFont:v14 scale:1];
          v16 = [v9 _mapsui_resolvedSymbolImageNamed:v12 withConfiguration:v15];

          v17 = [v16 imageWithRenderingMode:2];

          [v8 setImage:v17];
          v18 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v8];
          [v26 addObject:v18];
        }

        else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_fault_impl(&dword_1C5620000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Assertion failed: glyph.length > 0", buf, 2u);
        }

        ++v6;
      }

      while (v3 != v6);
      v19 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
      v3 = v19;
    }

    while (v19);
  }

  v20 = [v26 copy];
  v21 = [MapsUILayout buildAttributedDisplayStringForComponents:v20 reverseIfRTLLayout:1];

  v22 = *MEMORY[0x1E69E9840];

  return v21;
}

+ (id)costItemViewForMapItem:(id)item
{
  itemCopy = item;
  if ([itemCopy _hasPriceRange] && (objc_msgSend(itemCopy, "_geoMapItem"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "_maxScoreForPriceRange"), v4, v5))
  {
    v6 = objc_alloc_init(MUPlaceRibbonItemViewModel);
    [(MUPlaceRibbonItemViewModel *)v6 setTypeStringForAX:@"Cost"];
    v7 = _MULocalizedStringFromThisBundle(@"Cost [Placecard]");
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = ___defaultTitleAttributedStringForString_block_invoke;
    aBlock[3] = &unk_1E8219A48;
    v19 = v7;
    v8 = _Block_copy(aBlock);

    [(MUPlaceRibbonItemViewModel *)v6 setTitleStringProvider:v8];
    currentLocale = [MEMORY[0x1E695DF58] currentLocale];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __53__MUPlaceRibbonItemViewModel_costItemViewForMapItem___block_invoke;
    v15[3] = &unk_1E8219A70;
    v10 = itemCopy;
    v16 = v10;
    v11 = currentLocale;
    v17 = v11;
    [(MUPlaceRibbonItemViewModel *)v6 setValueStringProvider:v15];
    _geoMapItem = [v10 _geoMapItem];
    v13 = +[MUPlaceRibbonHelper costStringForValue:locale:](MUPlaceRibbonHelper, "costStringForValue:locale:", [_geoMapItem _priceRange], v11);
    [(MUPlaceRibbonItemViewModel *)v6 setPreferredAccessibilityValue:v13];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id __53__MUPlaceRibbonItemViewModel_costItemViewForMapItem___block_invoke(uint64_t a1)
{
  v56 = *MEMORY[0x1E69E9840];
  v51 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v2 = [*(a1 + 32) _geoMapItem];
  v3 = [v2 _priceRange];
  v50 = *MEMORY[0x1E69DDCF8];
  v4 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:?];
  v5 = *MEMORY[0x1E69DB970];
  v6 = [v4 _mapkit_fontWithWeight:*MEMORY[0x1E69DB970]];
  v7 = [MEMORY[0x1E69DC888] labelColor];
  v8 = [MUInfoCardStyle resolvedPrimaryColorForProposedColor:v7];
  v9 = *(a1 + 40);
  v10 = v6;
  v11 = v8;
  v12 = v9;
  v13 = [MUPlaceRibbonHelper costStringForValue:v3 locale:v12];
  if ([v13 length])
  {
    v48 = objc_alloc(MEMORY[0x1E696AAB0]);
    v14 = *MEMORY[0x1E69DB650];
    v52 = *MEMORY[0x1E69DB648];
    v53 = v14;
    v54 = v10;
    v55 = v11;
    v49 = v12;
    v15 = MEMORY[0x1E695DF20];
    v16 = v2;
    v17 = v10;
    v18 = v7;
    v19 = v4;
    v20 = v11;
    v21 = [v15 dictionaryWithObjects:&v54 forKeys:&v52 count:2];

    v2 = v16;
    v4 = v19;
    v7 = v18;
    v22 = [v48 initWithString:v13 attributes:v21];

    v12 = v49;
  }

  else
  {
    v22 = 0;
  }

  v23 = v51;
  if ([v22 length])
  {
    [v51 addObject:v22];
  }

  v24 = [*(a1 + 32) _geoMapItem];
  v25 = [v24 _maxScoreForPriceRange];
  v26 = [*(a1 + 32) _geoMapItem];
  v27 = [v26 _priceRange];

  v28 = (v25 - v27);
  if (v25 != v27)
  {
    v29 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:v50];
    v30 = [v29 _mapkit_fontWithWeight:v5];
    v31 = [MEMORY[0x1E69DC888] quaternaryLabelColor];
    v32 = *(a1 + 40);
    v33 = v30;
    v34 = v31;
    v35 = v32;
    v36 = [MUPlaceRibbonHelper costStringForValue:v28 locale:v35];
    if ([v36 length])
    {
      v37 = objc_alloc(MEMORY[0x1E696AAB0]);
      v38 = *MEMORY[0x1E69DB650];
      v52 = *MEMORY[0x1E69DB648];
      v53 = v38;
      v54 = v33;
      v55 = v34;
      v39 = MEMORY[0x1E695DF20];
      v40 = v33;
      v41 = v34;
      v42 = [v39 dictionaryWithObjects:&v54 forKeys:&v52 count:2];

      v43 = [v37 initWithString:v36 attributes:v42];
      v23 = v51;
    }

    else
    {
      v43 = 0;
    }

    [v23 addObject:v43];
  }

  v44 = [v23 copy];
  v45 = [MapsUILayout buildAttributedDisplayStringForComponents:v44 reverseIfRTLLayout:1];

  v46 = *MEMORY[0x1E69E9840];

  return v45;
}

+ (id)hoursItemViewModelForMapItem:(id)item
{
  itemCopy = item;
  _businessHours = [itemCopy _businessHours];

  if (_businessHours)
  {
    v5 = [objc_alloc(MEMORY[0x1E696F468]) initWithMapItem:itemCopy localizedHoursStringOptions:1];
    systemGreenColor = [MEMORY[0x1E69DC888] systemGreenColor];
    [v5 updateHoursLabelColorWithDefaultLabelColor:systemGreenColor];

    ribbonSummaryForOpeningState = [v5 ribbonSummaryForOpeningState];
    v8 = _MULocalizedStringFromThisBundle(@"Hours [Placecard]");
    _businessHours = objc_alloc_init(MUPlaceRibbonItemViewModel);
    [(MUPlaceRibbonItemViewModel *)_businessHours setType:2];
    [(MUPlaceRibbonItemViewModel *)_businessHours setTappable:1];
    [(MUPlaceRibbonItemViewModel *)_businessHours setTypeStringForAX:@"Hours"];
    v9 = v8;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = ___defaultTitleAttributedStringForString_block_invoke;
    aBlock[3] = &unk_1E8219A48;
    v18 = v9;
    v10 = _Block_copy(aBlock);

    [(MUPlaceRibbonItemViewModel *)_businessHours setTitleStringProvider:v10];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __59__MUPlaceRibbonItemViewModel_hoursItemViewModelForMapItem___block_invoke;
    v14[3] = &unk_1E8219A70;
    v15 = ribbonSummaryForOpeningState;
    v16 = v5;
    v11 = v5;
    v12 = ribbonSummaryForOpeningState;
    [(MUPlaceRibbonItemViewModel *)_businessHours setValueStringProvider:v14];
  }

  return _businessHours;
}

id __59__MUPlaceRibbonItemViewModel_hoursItemViewModelForMapItem___block_invoke(uint64_t a1)
{
  v16[2] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AAB0]);
  v3 = *(a1 + 32);
  v4 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  v5 = [v4 _mapkit_fontWithWeight:*MEMORY[0x1E69DB980]];
  v6 = [*(a1 + 40) hoursStateLabelColor];
  v7 = [MUInfoCardStyle resolvedPrimaryColorForProposedColor:v6];
  v8 = *MEMORY[0x1E69DB650];
  v15[0] = *MEMORY[0x1E69DB648];
  v15[1] = v8;
  v16[0] = v5;
  v16[1] = v7;
  v9 = MEMORY[0x1E695DF20];
  v10 = v5;
  v11 = [v9 dictionaryWithObjects:v16 forKeys:v15 count:2];

  v12 = [v2 initWithString:v3 attributes:v11];
  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

+ (id)guidesItemViewModelForMapItem:(id)item
{
  itemCopy = item;
  _placeCollections = [itemCopy _placeCollections];
  v5 = [_placeCollections count];

  if (v5)
  {
    v6 = _MULocalizedStringFromThisBundle(@"Guides [Placecard]");
    v7 = MEMORY[0x1E696AEC0];
    _placeCollections2 = [itemCopy _placeCollections];
    v9 = [v7 stringWithFormat:@"%lu", objc_msgSend(_placeCollections2, "count")];

    v10 = objc_alloc_init(MUPlaceRibbonItemViewModel);
    [(MUPlaceRibbonItemViewModel *)v10 setTypeStringForAX:@"Guides"];
    v11 = v6;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = ___defaultTitleAttributedStringForString_block_invoke;
    aBlock[3] = &unk_1E8219A48;
    v18 = v11;
    v12 = _Block_copy(aBlock);

    [(MUPlaceRibbonItemViewModel *)v10 setTitleStringProvider:v12];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __60__MUPlaceRibbonItemViewModel_guidesItemViewModelForMapItem___block_invoke;
    v15[3] = &unk_1E8219A48;
    v16 = v9;
    v13 = v9;
    [(MUPlaceRibbonItemViewModel *)v10 setValueStringProvider:v15];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

id __60__MUPlaceRibbonItemViewModel_guidesItemViewModelForMapItem___block_invoke(uint64_t a1)
{
  v37[2] = *MEMORY[0x1E69E9840];
  v1 = MEMORY[0x1E69DCAB8];
  v2 = MEMORY[0x1E69DCAD8];
  v3 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD80]];
  v4 = [v3 _mapkit_fontWithWeight:*MEMORY[0x1E69DB980]];
  v5 = [v2 configurationWithFont:v4 scale:1];
  v6 = [v1 systemImageNamed:@"map.fill" withConfiguration:v5];

  v7 = [v6 imageWithRenderingMode:2];

  v8 = [MEMORY[0x1E69DC888] labelColor];
  v9 = [MUInfoCardStyle resolvedPrimaryColorForProposedColor:v8];
  v10 = MEMORY[0x1E69DB7F0];
  v11 = v7;
  v12 = objc_alloc_init(v10);
  v13 = [v11 imageWithRenderingMode:2];

  [v12 setImage:v13];
  v14 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v12];
  v15 = [objc_alloc(MEMORY[0x1E696AD40]) initWithAttributedString:v14];
  v36[0] = *MEMORY[0x1E69DB650];
  v16 = v36[0];
  v37[0] = v9;
  v17 = MEMORY[0x1E695DF20];
  v18 = v9;
  v19 = [v17 dictionaryWithObjects:v37 forKeys:v36 count:1];

  [v15 addAttributes:v19 range:{0, objc_msgSend(v15, "length")}];
  v20 = [v15 copy];

  v21 = objc_alloc(MEMORY[0x1E696AAB0]);
  v22 = *(a1 + 32);
  v23 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  v24 = [v23 _mapkit_fontWithWeight:*MEMORY[0x1E69DB970]];
  v25 = [MEMORY[0x1E69DC888] labelColor];
  v26 = [MUInfoCardStyle resolvedPrimaryColorForProposedColor:v25];
  v36[0] = *MEMORY[0x1E69DB648];
  v36[1] = v16;
  v37[0] = v24;
  v37[1] = v26;
  v27 = MEMORY[0x1E695DF20];
  v28 = v24;
  v29 = [v27 dictionaryWithObjects:v37 forKeys:v36 count:2];

  v30 = [v21 initWithString:v22 attributes:v29];
  v31 = [objc_alloc(MEMORY[0x1E696AD40]) initWithAttributedString:v20];
  [v31 appendAttributedString:v30];
  v32 = [v31 copy];

  v33 = *MEMORY[0x1E69E9840];

  return v32;
}

@end