@interface GEOPlaceLineTemplate(MUPlaceTileViewModel)
- (id)_businessHoursAttributedStringForFont:()MUPlaceTileViewModel;
- (id)_categoryStringForFont:()MUPlaceTileViewModel;
- (id)_factoidAttributedStringForFont:()MUPlaceTileViewModel;
- (id)_locationAttributedStringForFont:()MUPlaceTileViewModel;
- (id)_ratingGlyphAttributedStringForFont:()MUPlaceTileViewModel;
- (id)_ratingSummaryAttributedStringForFont:()MUPlaceTileViewModel;
- (id)attributedStringForFont:()MUPlaceTileViewModel;
@end

@implementation GEOPlaceLineTemplate(MUPlaceTileViewModel)

- (id)_locationAttributedStringForFont:()MUPlaceTileViewModel
{
  v17[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  locationName = [self locationName];
  v6 = v4;
  if ([locationName length])
  {
    v7 = objc_alloc(MEMORY[0x1E696AAB0]);
    systemGrayColor = [MEMORY[0x1E69DC888] systemGrayColor];
    v9 = *MEMORY[0x1E69DB650];
    v16[0] = *MEMORY[0x1E69DB648];
    v16[1] = v9;
    v17[0] = v6;
    v17[1] = systemGrayColor;
    v10 = MEMORY[0x1E695DF20];
    v11 = v6;
    v12 = [v10 dictionaryWithObjects:v17 forKeys:v16 count:2];

    v13 = [v7 initWithString:locationName attributes:v12];
  }

  else
  {
    v13 = 0;
  }

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (id)_factoidAttributedStringForFont:()MUPlaceTileViewModel
{
  v4 = a3;
  factoid = [self factoid];
  v6 = _MUFactoidStringForFactoid(factoid, v4);

  return v6;
}

- (id)_ratingGlyphAttributedStringForFont:()MUPlaceTileViewModel
{
  v40[3] = *MEMORY[0x1E69E9840];
  v4 = a3;
  ratingSummary = [self ratingSummary];
  isAppleRating = [ratingSummary isAppleRating];

  if (isAppleRating)
  {
    ratingSymbolName = [MEMORY[0x1E696F1F8] ratingSymbolName];
    labelColor = [MEMORY[0x1E69DC888] labelColor];
    v8 = MEMORY[0x1E696AEC0];
    ratingSummary2 = [self ratingSummary];
    [ratingSummary2 normalizedUserRatingScore];
    v11 = [v8 localizedStringWithFormat:@"%lu%%", v10];
  }

  else
  {
    v12 = MEMORY[0x1E696F3B0];
    ratingSummary3 = [self ratingSummary];
    [ratingSummary3 normalizedUserRatingScore];
    labelColor = [v12 colorForRating:v14];

    v15 = MEMORY[0x1E696AEC0];
    ratingSummary2 = [self ratingSummary];
    [ratingSummary2 normalizedUserRatingScore];
    v11 = [v15 localizedStringWithFormat:@"%.1f", v16];
    ratingSymbolName = @"star.fill";
  }

  v17 = MEMORY[0x1E69DCAB8];
  v18 = MEMORY[0x1E69DCAD8];
  v19 = v4;
  v20 = ratingSymbolName;
  v21 = [v18 configurationWithFont:v19 scale:1];
  v22 = [v17 _mapsui_resolvedSymbolImageNamed:v20 withConfiguration:v21];

  v36 = [v22 imageWithRenderingMode:2];

  v23 = objc_alloc_init(MEMORY[0x1E69DB7F0]);
  [v23 setImage:v36];
  v24 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v23];
  v40[0] = v24;
  v25 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@" "];
  v40[1] = v25;
  v26 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v11];
  v40[2] = v26;
  v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:3];
  [MapsUILayout buildAttributedDisplayStringForComponents:v27 reverseIfRTLLayout:1];
  v29 = v28 = v11;
  v30 = [v29 mutableCopy];

  v31 = *MEMORY[0x1E69DB648];
  v38[0] = *MEMORY[0x1E69DB650];
  v38[1] = v31;
  v39[0] = labelColor;
  v39[1] = v19;
  v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:v38 count:2];
  [v30 addAttributes:v32 range:{0, objc_msgSend(v30, "length")}];

  v33 = [v30 copy];
  v34 = *MEMORY[0x1E69E9840];

  return v33;
}

- (id)_ratingSummaryAttributedStringForFont:()MUPlaceTileViewModel
{
  v33[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  ratingSummary = [self ratingSummary];

  if (ratingSummary)
  {
    v6 = MEMORY[0x1E696AEC0];
    v7 = MEMORY[0x1E696F1F0];
    ratingSummary2 = [self ratingSummary];
    [ratingSummary2 sampleSizeUsedForScore];
    v10 = [v7 stringFromCount:v9];
    v11 = [v6 stringWithFormat:@"(%@)", v10];

    v12 = objc_alloc_init(MEMORY[0x1E696AD40]);
    v13 = [v4 _mapkit_fontWithWeight:*MEMORY[0x1E69DB980]];
    v14 = [self _ratingGlyphAttributedStringForFont:v13];

    ratingSummary3 = [self ratingSummary];
    isAppleRating = [ratingSummary3 isAppleRating];

    if ((isAppleRating & 1) == 0)
    {
      v17 = objc_alloc(MEMORY[0x1E696AAB0]);
      v18 = MEMORY[0x1E696AEC0];
      ratingSummary4 = [self ratingSummary];
      vendorName = [ratingSummary4 vendorName];
      v21 = [v18 stringWithFormat:@"%@\n", vendorName];
      v22 = [v17 initWithString:v21];

      [v12 appendAttributedString:v22];
    }

    v32 = *MEMORY[0x1E69DB648];
    v33[0] = v4;
    v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:&v32 count:1];
    v24 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@" " attributes:v23];
    v25 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v11 attributes:v23];
    v31[0] = v14;
    v31[1] = v24;
    v31[2] = v25;
    v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:3];
    v27 = [MapsUILayout buildAttributedDisplayStringForComponents:v26 reverseIfRTLLayout:1];

    [v12 appendAttributedString:v27];
    v28 = [v12 copy];
  }

  else
  {
    v28 = 0;
  }

  v29 = *MEMORY[0x1E69E9840];

  return v28;
}

- (id)_categoryStringForFont:()MUPlaceTileViewModel
{
  v17[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  categoryName = [self categoryName];
  v6 = v4;
  if ([categoryName length])
  {
    v7 = objc_alloc(MEMORY[0x1E696AAB0]);
    systemGrayColor = [MEMORY[0x1E69DC888] systemGrayColor];
    v9 = *MEMORY[0x1E69DB650];
    v16[0] = *MEMORY[0x1E69DB648];
    v16[1] = v9;
    v17[0] = v6;
    v17[1] = systemGrayColor;
    v10 = MEMORY[0x1E695DF20];
    v11 = v6;
    v12 = [v10 dictionaryWithObjects:v17 forKeys:v16 count:2];

    v13 = [v7 initWithString:categoryName attributes:v12];
  }

  else
  {
    v13 = 0;
  }

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (id)_businessHoursAttributedStringForFont:()MUPlaceTileViewModel
{
  v21[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc(MEMORY[0x1E696F468]);
  businessHours = [self businessHours];
  defaultTimeZone = [MEMORY[0x1E695DFE8] defaultTimeZone];
  v8 = [v5 initWithBusinessHours:businessHours timeZone:defaultTimeZone localizedHoursStringOptions:128];

  localizedOpenState = [v8 localizedOpenState];
  v10 = v4;
  if ([localizedOpenState length])
  {
    v11 = objc_alloc(MEMORY[0x1E696AAB0]);
    systemGrayColor = [MEMORY[0x1E69DC888] systemGrayColor];
    v13 = *MEMORY[0x1E69DB650];
    v20[0] = *MEMORY[0x1E69DB648];
    v20[1] = v13;
    v21[0] = v10;
    v21[1] = systemGrayColor;
    v14 = MEMORY[0x1E695DF20];
    v15 = v10;
    v16 = [v14 dictionaryWithObjects:v21 forKeys:v20 count:2];

    v17 = [v11 initWithString:localizedOpenState attributes:v16];
  }

  else
  {
    v17 = 0;
  }

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

- (id)attributedStringForFont:()MUPlaceTileViewModel
{
  v4 = a3;
  type = [self type];
  v6 = 0;
  if (type <= 2)
  {
    if (type == 1)
    {
      v7 = [self _categoryStringForFont:v4];
    }

    else
    {
      if (type != 2)
      {
        goto LABEL_13;
      }

      v7 = [self _businessHoursAttributedStringForFont:v4];
    }
  }

  else
  {
    switch(type)
    {
      case 3:
        v7 = [self _ratingSummaryAttributedStringForFont:v4];
        break;
      case 4:
        v7 = [self _factoidAttributedStringForFont:v4];
        break;
      case 5:
        v7 = [self _locationAttributedStringForFont:v4];
        break;
      default:
        goto LABEL_13;
    }
  }

  v6 = v7;
LABEL_13:

  return v6;
}

@end