@interface MUPlaceRibbonEVChargingViewModel
+ (id)attributedStringFromString:(id)a3 color:(id)a4;
- (MUPlaceRibbonEVChargingViewModel)initWithAvailabilityProvider:(id)a3;
- (void)_updateStringProviders;
- (void)dealloc;
- (void)evChargerAvailabilityProvider:(id)a3 didUpdateAvailability:(id)a4;
@end

@implementation MUPlaceRibbonEVChargingViewModel

- (void)evChargerAvailabilityProvider:(id)a3 didUpdateAvailability:(id)a4
{
  [(MUPlaceRibbonEVChargingViewModel *)self _updateStringProviders:a3];
  v5 = [(MUPlaceRibbonItemViewModel *)self updateDelegate];
  [v5 ribbonItemViewModelDidUpdate:self];
}

- (void)_updateStringProviders
{
  v3 = [(MUPlaceRibbonEVChargingViewModel *)self availabilityProvider];
  v4 = [v3 availability];

  v5 = [v4 aggregatedInfo];
  v6 = [v5 status];

  if (v6)
  {
    v7 = @"Available Now [Placecard ribbon item title]";
  }

  else
  {
    v7 = @"Chargers [EV Charging]";
  }

  v8 = _MULocalizedStringFromThisBundle(v7);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = ___defaultTitleAttributedStringForString_block_invoke;
  aBlock[3] = &unk_1E8219A48;
  v14 = v8;
  v9 = _Block_copy(aBlock);

  [(MUPlaceRibbonItemViewModel *)self setTitleStringProvider:v9];
  [(MUPlaceRibbonItemViewModel *)self setTypeStringForAX:@"EVChargingAvailability"];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __58__MUPlaceRibbonEVChargingViewModel__updateStringProviders__block_invoke;
  v11[3] = &unk_1E8219A48;
  v12 = v4;
  v10 = v4;
  [(MUPlaceRibbonItemViewModel *)self setValueStringProvider:v11];
}

id __58__MUPlaceRibbonEVChargingViewModel__updateStringProviders__block_invoke(uint64_t a1)
{
  v62[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69DCAD8];
  v3 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD08]];
  v4 = [v3 _mapkit_fontWithWeight:1.0];
  v5 = [v2 configurationWithFont:v4 scale:1];
  v6 = [MURealTimeEVChargerUtility evPlugIconWithConfiguration:v5];

  v7 = [MEMORY[0x1E69DC888] labelColor];
  v8 = [MUInfoCardStyle resolvedPrimaryColorForProposedColor:v7];
  v9 = MEMORY[0x1E69DB7F0];
  v10 = v6;
  v11 = objc_alloc_init(v9);
  v12 = [v10 imageWithRenderingMode:2];
  v60 = v10;

  [v11 setImage:v12];
  v13 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v11];
  v14 = [objc_alloc(MEMORY[0x1E696AD40]) initWithAttributedString:v13];
  v59 = *MEMORY[0x1E69DB650];
  v61 = *MEMORY[0x1E69DB650];
  v62[0] = v8;
  v15 = MEMORY[0x1E695DF20];
  v16 = v8;
  v17 = [v15 dictionaryWithObjects:v62 forKeys:&v61 count:1];

  [v14 addAttributes:v17 range:{0, objc_msgSend(v14, "length")}];
  v18 = [v14 copy];

  v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v19 addObject:v18];
  v20 = [*(a1 + 32) aggregatedInfo];
  v21 = [v20 status];

  if (v21)
  {
    v22 = [*(a1 + 32) aggregatedInfo];
    v23 = [v22 available];
    v24 = [*(a1 + 32) aggregatedInfo];
    v25 = +[MUEVChargingHelper localizedStringForAvailableChargers:outOfTotal:](MUEVChargingHelper, "localizedStringForAvailableChargers:outOfTotal:", v23, [v24 total]);

    v26 = [*(a1 + 32) aggregatedInfo];
    v58 = v18;
    v57 = v21;
    if ([v26 available])
    {
      [MEMORY[0x1E69DC888] systemGreenColor];
    }

    else
    {
      [MEMORY[0x1E69DC888] systemGrayColor];
    }
    v33 = ;

    v35 = MEMORY[0x1E69DCAB8];
    v36 = MEMORY[0x1E69DCAD8];
    v37 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD80]];
    v38 = [v37 _mapkit_fontWithWeight:*MEMORY[0x1E69DB980]];
    v39 = [v36 configurationWithFont:v38 scale:1];
    v40 = [v35 systemImageNamed:@"dot.radiowaves.up.forward" withConfiguration:v39];

    v41 = [v40 imageWithRenderingMode:2];

    v42 = [MEMORY[0x1E69DC888] systemGreenColor];
    v43 = MEMORY[0x1E69DB7F0];
    v34 = v41;
    v44 = objc_alloc_init(v43);
    v45 = [v34 imageWithRenderingMode:2];

    [v44 setImage:v45];
    v46 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v44];
    v47 = [objc_alloc(MEMORY[0x1E696AD40]) initWithAttributedString:v46];
    v61 = v59;
    v62[0] = v42;
    v48 = MEMORY[0x1E695DF20];
    v49 = v42;
    v50 = [v48 dictionaryWithObjects:v62 forKeys:&v61 count:1];

    [v47 addAttributes:v50 range:{0, objc_msgSend(v47, "length")}];
    v51 = [v47 copy];

    v52 = [MUPlaceRibbonEVChargingViewModel attributedStringFromString:@" " color:v33];
    [v19 addObject:v52];
    v53 = [MUPlaceRibbonEVChargingViewModel attributedStringFromString:v25 color:v33];
    [v19 addObject:v53];

    [v19 addObject:v52];
    [v19 addObject:v51];

    v18 = v58;
    v21 = v57;
  }

  else
  {
    v27 = MEMORY[0x1E696ADA0];
    v28 = MEMORY[0x1E696AD98];
    v29 = [*(a1 + 32) aggregatedInfo];
    v30 = [v28 numberWithUnsignedInteger:{objc_msgSend(v29, "total")}];
    v25 = [v27 localizedStringFromNumber:v30 numberStyle:0];

    v31 = [MEMORY[0x1E69DC888] labelColor];
    v32 = [MUPlaceRibbonEVChargingViewModel attributedStringFromString:@" " color:v31];
    [v19 addObject:v32];

    v33 = [MEMORY[0x1E69DC888] labelColor];
    v34 = [MUPlaceRibbonEVChargingViewModel attributedStringFromString:v25 color:v33];
    [v19 addObject:v34];
  }

  v54 = [MapsUILayout buildAttributedDisplayStringForComponents:v19 reverseIfRTLLayout:v21 == 0];

  v55 = *MEMORY[0x1E69E9840];

  return v54;
}

- (void)dealloc
{
  v3 = [(MUPlaceRibbonEVChargingViewModel *)self availabilityProvider];
  [v3 unregisterObserver:self];

  v4.receiver = self;
  v4.super_class = MUPlaceRibbonEVChargingViewModel;
  [(MUPlaceRibbonEVChargingViewModel *)&v4 dealloc];
}

- (MUPlaceRibbonEVChargingViewModel)initWithAvailabilityProvider:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = MUPlaceRibbonEVChargingViewModel;
  v5 = [(MUPlaceRibbonEVChargingViewModel *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(MUPlaceRibbonEVChargingViewModel *)v5 setAvailabilityProvider:v4];
    [(MUPlaceRibbonEVChargingViewModel *)v6 _updateStringProviders];
    [v4 registerObserver:v6];
  }

  return v6;
}

+ (id)attributedStringFromString:(id)a3 color:(id)a4
{
  v19[2] = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = MEMORY[0x1E696AAB0];
  v7 = a3;
  v8 = [v6 alloc];
  v9 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  v10 = [v9 _mapkit_fontWithWeight:*MEMORY[0x1E69DB970]];
  v11 = *MEMORY[0x1E69DB650];
  v18[0] = *MEMORY[0x1E69DB648];
  v18[1] = v11;
  v19[0] = v10;
  v19[1] = v5;
  v12 = MEMORY[0x1E695DF20];
  v13 = v5;
  v14 = [v12 dictionaryWithObjects:v19 forKeys:v18 count:2];

  v15 = [v8 initWithString:v7 attributes:v14];
  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

@end