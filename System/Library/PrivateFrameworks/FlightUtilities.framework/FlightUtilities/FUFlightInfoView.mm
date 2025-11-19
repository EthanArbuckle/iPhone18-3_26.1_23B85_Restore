@interface FUFlightInfoView
+ (id)flightViewForStyle:(unint64_t)a3 compact:(BOOL)a4;
- (FUFlightInfoViewProtocol)delegate;
- (FULabel)labelAirlineName;
- (FULabel)labelArrivalCity;
- (FULabel)labelArrivalCode;
- (FULabel)labelArrivalDate;
- (FULabel)labelArrivalDelay;
- (FULabel)labelArrivalInfo1;
- (FULabel)labelArrivalInfo2;
- (FULabel)labelArrivalTime;
- (FULabel)labelArrivalTitle;
- (FULabel)labelBaggageClaimTitle;
- (FULabel)labelBaggageClaimValue;
- (FULabel)labelDepartureCity;
- (FULabel)labelDepartureCode;
- (FULabel)labelDepartureDate;
- (FULabel)labelDepartureDelay;
- (FULabel)labelDepartureInfo1;
- (FULabel)labelDepartureInfo2;
- (FULabel)labelDepartureTime;
- (FULabel)labelDepartureTitle;
- (FULabel)labelDurationComplete;
- (FULabel)labelDurationTitle;
- (FULabel)labelDurationValue;
- (FULabel)labelFlightCode;
- (FULabel)labelStatus;
- (FULabel)labelStatusTitle;
- (FUSeparator)sep5;
- (UIButton)flightButton;
- (double)standardTableCellContentInset;
- (id)formattedDurationForDuration:(double)a3;
- (void)addDateTimeAttributesToString:(id)a3 striked:(BOOL)a4 alignment:(int64_t)a5;
- (void)awakeFromNib;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)flightButtonTapped:(id)a3;
- (void)setStyle:(unint64_t)a3;
- (void)setupLabelStylesWithStyle:(unint64_t)a3;
- (void)tlk_updateForAppearance:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateAirlineInformation;
- (void)updateDateTimeForDeparture:(BOOL)a3;
- (void)updateDelayInfo;
- (void)updateFlightButtonIcon;
- (void)updateFlightDates;
- (void)updateFlightStatus;
- (void)updateFlightTerminalInfo;
- (void)updateForFollowupContent:(BOOL)a3;
- (void)updateLabelVisibility:(id)a3 constraint:(id)a4;
- (void)updateLocationInfo;
- (void)updateTimeLabel:(id)a3 constraint:(id)a4 withString:(id)a5;
@end

@implementation FUFlightInfoView

+ (id)flightViewForStyle:(unint64_t)a3 compact:(BOOL)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v6 = [v5 loadNibNamed:@"FUFlightInfoView" owner:0 options:0];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = *v15;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v8 = v11;
          [v8 setupLabelStylesWithStyle:{a3, v14}];
          goto LABEL_11;
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v12 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)setStyle:(unint64_t)a3
{
  if (self->_style != a3)
  {
    [(FUFlightInfoView *)self setupLabelStylesWithStyle:?];
  }
}

- (void)awakeFromNib
{
  v3.receiver = self;
  v3.super_class = FUFlightInfoView;
  [(FUFlightInfoView *)&v3 awakeFromNib];
  self->_awake = 1;
  if (self->_style)
  {
    [(FUFlightInfoView *)self setupLabelStylesWithStyle:?];
  }
}

- (double)standardTableCellContentInset
{
  v2 = [MEMORY[0x277D759A0] mainScreen];
  [v2 _referenceBounds];
  if (CGRectGetWidth(v5) < 414.0)
  {
    v3 = 16.0;
  }

  else
  {
    v3 = 20.0;
  }

  return v3;
}

- (void)setupLabelStylesWithStyle:(unint64_t)a3
{
  self->_style = a3;
  if (self->_awake)
  {
    v4 = [FUStyleProvider providerForStyle:?];
    objc_storeStrong(&self->_styleProvider, v4);
    v5 = [(FUFlightInfoView *)self labelAirlineName];
    [v5 setStyleProvider:v4 primaryStyle:1];

    v6 = [(FUFlightInfoView *)self labelFlightCode];
    [v6 setStyleProvider:v4 primaryStyle:0];

    v7 = [(FUFlightInfoView *)self labelStatusTitle];
    [v7 setStyleProvider:v4 primaryStyle:1];

    v8 = [(FUFlightInfoView *)self labelStatus];
    [v8 setStyleProvider:v4 primaryStyle:1];

    v9 = [(FUFlightInfoView *)self labelDepartureCity];
    [v9 setStyleProvider:v4 primaryStyle:0];

    v10 = [(FUFlightInfoView *)self labelDepartureCode];
    [v10 setStyleProvider:v4 primaryStyle:1];

    v11 = [(FUFlightInfoView *)self labelDepartureInfo1];
    [v11 setStyleProvider:v4 primaryStyle:0];

    v12 = [(FUFlightInfoView *)self labelDepartureInfo2];
    [v12 setStyleProvider:v4 primaryStyle:0];

    v13 = [(FUFlightInfoView *)self labelArrivalCity];
    [v13 setStyleProvider:v4 primaryStyle:0];

    v14 = [(FUFlightInfoView *)self labelArrivalCode];
    [v14 setStyleProvider:v4 primaryStyle:1];

    v15 = [(FUFlightInfoView *)self labelArrivalInfo1];
    [v15 setStyleProvider:v4 primaryStyle:0];

    v16 = [(FUFlightInfoView *)self labelArrivalInfo2];
    [v16 setStyleProvider:v4 primaryStyle:0];

    v17 = [(FUFlightInfoView *)self labelDepartureTitle];
    [v17 setStyleProvider:v4 primaryStyle:1];

    v18 = [(FUFlightInfoView *)self labelArrivalTitle];
    [v18 setStyleProvider:v4 primaryStyle:1];

    v19 = [(FUFlightInfoView *)self labelDepartureDate];
    [v19 setStyleProvider:v4 primaryStyle:1];

    v20 = [(FUFlightInfoView *)self labelArrivalDate];
    [v20 setStyleProvider:v4 primaryStyle:1];

    v21 = [(FUFlightInfoView *)self labelDepartureTime];
    [v21 setStyleProvider:v4 primaryStyle:1];

    v22 = [(FUFlightInfoView *)self labelArrivalTime];
    [v22 setStyleProvider:v4 primaryStyle:1];

    v23 = [(FUFlightInfoView *)self labelDepartureDelay];
    [v23 setStyleProvider:v4 primaryStyle:0];

    v24 = [(FUFlightInfoView *)self labelArrivalDelay];
    [v24 setStyleProvider:v4 primaryStyle:0];

    v25 = [(FUFlightInfoView *)self labelDurationTitle];
    [v25 setStyleProvider:v4 primaryStyle:1];

    v26 = [(FUFlightInfoView *)self labelDurationValue];
    [v26 setStyleProvider:v4 primaryStyle:1];

    v27 = [(FUFlightInfoView *)self labelDurationComplete];
    [v27 setStyleProvider:v4 primaryStyle:0];

    v28 = [(FUFlightInfoView *)self labelBaggageClaimTitle];
    [v28 setStyleProvider:v4 primaryStyle:1];

    v29 = [(FUFlightInfoView *)self labelBaggageClaimValue];
    [v29 setStyleProvider:v4 primaryStyle:1];

    v30 = [(FUFlightInfoView *)self labelStatusTitle];
    v31 = [(FUFlightInfoView *)self labelAirlineName];
    [v31 setAssociatedScalingLabel:v30];

    v32 = [(FUFlightInfoView *)self labelAirlineName];
    v33 = [(FUFlightInfoView *)self labelStatusTitle];
    [v33 setAssociatedScalingLabel:v32];

    v34 = [(FUFlightInfoView *)self labelStatus];
    v35 = [(FUFlightInfoView *)self labelFlightCode];
    [v35 setAssociatedScalingLabel:v34];

    v36 = [(FUFlightInfoView *)self labelFlightCode];
    v37 = [(FUFlightInfoView *)self labelStatus];
    [v37 setAssociatedScalingLabel:v36];

    v38 = [(FUFlightInfoView *)self labelArrivalCity];
    v39 = [(FUFlightInfoView *)self labelDepartureCity];
    [v39 setAssociatedScalingLabel:v38];

    v40 = [(FUFlightInfoView *)self labelDepartureCity];
    v41 = [(FUFlightInfoView *)self labelArrivalCity];
    [v41 setAssociatedScalingLabel:v40];

    v42 = [(FUFlightInfoView *)self labelDepartureCode];
    v43 = [(FUFlightInfoView *)self labelArrivalCode];
    [v43 setAssociatedScalingLabel:v42];

    v44 = [(FUFlightInfoView *)self labelArrivalCode];
    v45 = [(FUFlightInfoView *)self labelDepartureCode];
    [v45 setAssociatedScalingLabel:v44];

    v46 = [(FUFlightInfoView *)self labelArrivalInfo1];
    v47 = [(FUFlightInfoView *)self labelDepartureInfo1];
    [v47 setAssociatedScalingLabel:v46];

    v48 = [(FUFlightInfoView *)self labelDepartureInfo1];
    v49 = [(FUFlightInfoView *)self labelArrivalInfo1];
    [v49 setAssociatedScalingLabel:v48];

    v50 = [(FUFlightInfoView *)self labelArrivalInfo2];
    v51 = [(FUFlightInfoView *)self labelDepartureInfo2];
    [v51 setAssociatedScalingLabel:v50];

    v52 = [(FUFlightInfoView *)self labelDepartureInfo2];
    v53 = [(FUFlightInfoView *)self labelArrivalInfo2];
    [v53 setAssociatedScalingLabel:v52];

    v54 = [(FUFlightInfoView *)self labelDepartureTime];
    v55 = [(FUFlightInfoView *)self labelDepartureTitle];
    [v55 setAssociatedScalingLabel:v54];

    v56 = [(FUFlightInfoView *)self labelDepartureTitle];
    v57 = [(FUFlightInfoView *)self labelDepartureTime];
    [v57 setAssociatedScalingLabel:v56];

    v58 = [(FUFlightInfoView *)self labelDepartureDate];
    v59 = [(FUFlightInfoView *)self labelDepartureDelay];
    [v59 setAssociatedScalingLabel:v58];

    v60 = [(FUFlightInfoView *)self labelDepartureDelay];
    v61 = [(FUFlightInfoView *)self labelDepartureDate];
    [v61 setAssociatedScalingLabel:v60];

    v62 = [(FUFlightInfoView *)self labelArrivalTime];
    v63 = [(FUFlightInfoView *)self labelArrivalTitle];
    [v63 setAssociatedScalingLabel:v62];

    v64 = [(FUFlightInfoView *)self labelArrivalTitle];
    v65 = [(FUFlightInfoView *)self labelArrivalTime];
    [v65 setAssociatedScalingLabel:v64];

    v66 = [(FUFlightInfoView *)self labelArrivalDate];
    v67 = [(FUFlightInfoView *)self labelArrivalDelay];
    [v67 setAssociatedScalingLabel:v66];

    v68 = [(FUFlightInfoView *)self labelArrivalDelay];
    v69 = [(FUFlightInfoView *)self labelArrivalDate];
    [v69 setAssociatedScalingLabel:v68];

    v70 = [(FUFlightInfoView *)self labelDurationValue];
    v71 = [(FUFlightInfoView *)self labelDurationTitle];
    [v71 setAssociatedScalingLabel:v70];

    v72 = [(FUFlightInfoView *)self labelDurationTitle];
    v73 = [(FUFlightInfoView *)self labelDurationValue];
    [v73 setAssociatedScalingLabel:v72];

    v74 = [(FUFlightInfoView *)self labelBaggageClaimValue];
    v75 = [(FUFlightInfoView *)self labelBaggageClaimTitle];
    [v75 setAssociatedScalingLabel:v74];

    v76 = [(FUFlightInfoView *)self labelBaggageClaimTitle];
    v77 = [(FUFlightInfoView *)self labelBaggageClaimValue];
    [v77 setAssociatedScalingLabel:v76];

    [(FUFlightInfoView *)self standardTableCellContentInset];
    v79 = v78;
    v80 = [(FUFlightInfoView *)self leadingInset];
    [v80 setConstant:v79];

    v81 = [(FUFlightInfoView *)self trailingInset];
    [v81 setConstant:v79];

    if (self->_spotlightMode)
    {
      v79 = 0.0;
    }

    v82 = [(FUFlightInfoView *)self trailingSeparatorsInset];
    [v82 setConstant:v79];

    v83 = [MEMORY[0x277CCAB98] defaultCenter];
    [v83 addObserver:self selector:sel_updateFlightDates name:*MEMORY[0x277CBE620] object:0];

    objc_initWeak(&location, self);
    v88[0] = MEMORY[0x277D85DD0];
    v88[1] = 3221225472;
    v88[2] = __46__FUFlightInfoView_setupLabelStylesWithStyle___block_invoke;
    v88[3] = &unk_2790115C0;
    objc_copyWeak(&v89, &location);
    v84 = [(FUFlightInfoView *)self labelDepartureCode];
    [v84 setOnTap:v88];

    v86[0] = MEMORY[0x277D85DD0];
    v86[1] = 3221225472;
    v86[2] = __46__FUFlightInfoView_setupLabelStylesWithStyle___block_invoke_2;
    v86[3] = &unk_2790115C0;
    objc_copyWeak(&v87, &location);
    v85 = [(FUFlightInfoView *)self labelArrivalCode];
    [v85 setOnTap:v86];

    [(FUFlightInfoView *)self updateFlightStatus];
    objc_destroyWeak(&v87);
    objc_destroyWeak(&v89);
    objc_destroyWeak(&location);
  }
}

uint64_t __46__FUFlightInfoView_setupLabelStylesWithStyle___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    if ([WeakRetained currentFocus])
    {
      [v4 setCurrentFocus:0];
      v2 = [v4 delegate];
      [v2 flightInfoView:v4 didUpdateFocus:{objc_msgSend(v4, "currentFocus")}];
    }
  }

  return MEMORY[0x2821F96F8]();
}

void __46__FUFlightInfoView_setupLabelStylesWithStyle___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v2 = [WeakRetained currentFocus] == 1;
    WeakRetained = v4;
    if (!v2)
    {
      [v4 setCurrentFocus:1];
      v3 = [v4 delegate];
      [v3 flightInfoView:v4 didUpdateFocus:{objc_msgSend(v4, "currentFocus")}];

      WeakRetained = v4;
    }
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = FUFlightInfoView;
  [(FUFlightInfoView *)&v9 traitCollectionDidChange:v4];
  v5 = [(FUFlightInfoView *)self traitCollection];
  if ([v5 hasDifferentColorAppearanceComparedToTraitCollection:v4])
  {

LABEL_4:
    [(FUFlightInfoView *)self tlk_updateWithCurrentAppearance];
    goto LABEL_5;
  }

  v6 = [(FUFlightInfoView *)self traitCollection];
  v7 = [v6 _vibrancy];
  v8 = [v4 _vibrancy];

  if (v7 != v8)
  {
    goto LABEL_4;
  }

LABEL_5:
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = FUFlightInfoView;
  [(FUFlightInfoView *)&v3 didMoveToWindow];
  [(FUFlightInfoView *)self tlk_updateWithCurrentAppearance];
}

- (void)tlk_updateForAppearance:(id)a3
{
  v4 = a3;
  v5 = [v4 secondaryColor];
  v6 = [(FUFlightInfoView *)self flightButton];
  [v6 setTintColor:v5];

  v7 = [(FUFlightInfoView *)self flightButton];
  [v4 enableAppearanceForView:v7];
}

- (void)updateFlightButtonIcon
{
  v30[1] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277D755B8] systemImageNamed:@"airplane"];
  v4 = [v3 copy];

  [v4 size];
  v31.width = v7 * 1.69;
  width = v31.width;
  v31.height = v8 * 1.69;
  height = v31.height;
  UIGraphicsBeginImageContextWithOptions(v31, 0, 0.0);
  CurrentContext = UIGraphicsGetCurrentContext();
  UIGraphicsPushContext(CurrentContext);
  CGContextSetCompositeOperation();
  [v4 drawInRect:{0.0, 0.0, width, height}];
  v10 = [MEMORY[0x277D75348] clearColor];
  [v10 setFill];

  v11 = [MEMORY[0x277D75348] blackColor];
  [v11 setStroke];

  if (self->_displayedLegId)
  {
    if ([*MEMORY[0x277D76620] userInterfaceLayoutDirection] == 1)
    {
      v12 = width * 0.5 + -14.0;
    }

    else
    {
      v12 = width * 0.5 + 1.25;
    }

    v13 = height * 0.5 + -14.0 + -1.25;
    v14 = [MEMORY[0x277D75208] bezierPathWithOvalInRect:{v12, v13, 14.0, 14.0}];
    [v14 setLineWidth:1.25];
    v15 = MEMORY[0x277CCABB8];
    v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_displayedLegId];
    v17 = [v15 localizedStringFromNumber:v16 numberStyle:0];

    v29 = *MEMORY[0x277D740A8];
    v18 = [MEMORY[0x277D74300] systemFontOfSize:11.0 weight:*MEMORY[0x277D74420]];
    v30[0] = v18;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:&v29 count:1];

    [v17 sizeWithAttributes:v19];
    v21 = v12 + (14.0 - v20) * 0.5;
    v23 = v13 + (14.0 - v22) * 0.5;
    [v14 fill];
    [v14 stroke];
    [v17 drawAtPoint:v19 withAttributes:{v21, v23}];
  }

  UIGraphicsPopContext();
  v24 = UIGraphicsGetImageFromCurrentImageContext();

  UIGraphicsEndImageContext();
  v25 = [v24 imageWithRenderingMode:2];

  v26 = [(FUFlightInfoView *)self flightButton];
  [v26 setImage:v25 forState:0];

  v27 = [(FUFlightInfoView *)self flightButton];
  [v27 _setCornerRadius:20.0];

  v28 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = FUFlightInfoView;
  [(FUFlightInfoView *)&v4 dealloc];
}

- (void)updateForFollowupContent:(BOOL)a3
{
  self->_spotlightMode = a3;
  v5 = 1.0;
  if (a3 || self->_multiFlights)
  {
    v6 = 0;
  }

  else
  {
    v3 = [(FUFlight *)self->_flight legs];
    if ([v3 count] <= 1)
    {
      v5 = 0.0;
    }

    else
    {
      v5 = 1.0;
    }

    v6 = 1;
  }

  v7 = [(FUFlightInfoView *)self sep5];
  [v7 setAlpha:v5];

  if (v6)
  {
  }

  spotlightMode = self->_spotlightMode;
  if (spotlightMode)
  {
    v9 = 0.0;
  }

  else
  {
    v12 = [(FUFlightInfoView *)self trailingInset];
    [v12 constant];
    v9 = v10;
  }

  v11 = [(FUFlightInfoView *)self trailingSeparatorsInset];
  [v11 setConstant:v9];

  if (!spotlightMode)
  {
  }
}

- (void)updateAirlineInformation
{
  v3 = [(FUFlight *)self->_flight airline];
  v4 = [v3 name];
  v5 = [(FUFlightInfoView *)self labelAirlineName];
  [v5 setText:v4];

  v7 = [(FUFlight *)self->_flight flightCode];
  v6 = [(FUFlightInfoView *)self labelFlightCode];
  [v6 setText:v7];
}

- (void)updateLocationInfo
{
  v3 = [(FUFlightLeg *)self->_leg departure];
  v4 = [v3 airport];
  v5 = [v4 city];

  if (v5)
  {
    v6 = [(FUFlightLeg *)self->_leg departure];
    v7 = [v6 airport];
    v8 = [v7 city];
    v9 = [(FUFlightInfoView *)self labelDepartureCity];
    [v9 setText:v8];
  }

  else
  {
    v6 = [(FUFlightInfoView *)self labelDepartureCity];
    [v6 setText:&stru_285EA8C70];
  }

  v10 = [(FUFlightLeg *)self->_leg arrival];
  v11 = [v10 airport];
  v12 = [v11 city];

  if (v12)
  {
    v13 = [(FUFlightLeg *)self->_leg arrival];
    v14 = [v13 airport];
    v15 = [v14 city];
    v16 = [(FUFlightInfoView *)self labelArrivalCity];
    [v16 setText:v15];
  }

  else
  {
    v13 = [(FUFlightInfoView *)self labelArrivalCity];
    [v13 setText:&stru_285EA8C70];
  }

  v17 = [(FUFlightLeg *)self->_leg departure];
  v18 = [v17 airport];
  v19 = [v18 IATACode];
  v20 = [(FUFlightInfoView *)self labelDepartureCode];
  [v20 setText:v19];

  v24 = [(FUFlightLeg *)self->_leg arrival];
  v21 = [v24 airport];
  v22 = [v21 IATACode];
  v23 = [(FUFlightInfoView *)self labelArrivalCode];
  [v23 setText:v22];
}

- (void)updateTimeLabel:(id)a3 constraint:(id)a4 withString:(id)a5
{
  if (a5)
  {
    v7 = a5;
  }

  else
  {
    v7 = &stru_285EA8C70;
  }

  v8 = a4;
  v9 = a3;
  [v9 setText:v7];
  [(FUFlightInfoView *)self updateLabelVisibility:v9 constraint:v8];
}

- (id)formattedDurationForDuration:(double)a3
{
  v4 = objc_alloc_init(MEMORY[0x277CCA958]);
  [v4 setAllowedUnits:112];
  [v4 setFormattingContext:1];
  [v4 setMaximumUnitCount:2];
  if (a3 > 3599)
  {
    v5 = 2;
  }

  else
  {
    v5 = 3;
  }

  [v4 setUnitsStyle:v5];
  v6 = [v4 stringFromTimeInterval:a3];

  return v6;
}

- (void)updateDelayInfo
{
  v3 = [(FUFlightLeg *)self->_leg departure];
  v4 = [v3 delayFromSchedule];

  if (!v4)
  {
    v40 = 0;
    goto LABEL_15;
  }

  v5 = [(FUFlightLeg *)self->_leg departure];
  v6 = [v5 status];

  if (v6 != 4)
  {
    goto LABEL_4;
  }

  v7 = [(FUFlightLeg *)self->_leg departure];
  v8 = [v7 delayFromSchedule];
  [v8 doubleValue];
  v10 = v9;

  if (v10 >= 60.0)
  {
    v11 = MEMORY[0x277CCACA8];
    v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v13 = [v12 localizedStringForKey:@"Delayed %@" value:@"Delayed %@" table:@"Localizable"];
    v14 = [(FUFlightInfoView *)self formattedDurationForDuration:v10];
    v40 = [v11 stringWithFormat:v13, v14];
  }

  else
  {
LABEL_4:
    v40 = 0;
  }

  if ([(FUFlightLeg *)self->_leg status]== 2 || [(FUFlightLeg *)self->_leg status]== 3)
  {
    v15 = [(FUFlightLeg *)self->_leg arrival];
    v16 = [v15 time];
    [v16 timeIntervalSinceNow];
    v18 = v17;

    if (v18 < 60.0)
    {
      v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v20 = v19;
      v21 = @"Arriving now";
LABEL_11:
      v4 = [v19 localizedStringForKey:v21 value:v21 table:@"Localizable"];
LABEL_14:

      goto LABEL_15;
    }

    v22 = MEMORY[0x277CCACA8];
    v23 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v20 = v23;
    v24 = @"%@ remaining";
LABEL_13:
    v25 = [v23 localizedStringForKey:v24 value:v24 table:@"Localizable"];
    v26 = [(FUFlightInfoView *)self formattedDurationForDuration:v18];
    v4 = [v22 stringWithFormat:v25, v26];

    goto LABEL_14;
  }

  if ([(FUFlightLeg *)self->_leg status]== 4 || [(FUFlightLeg *)self->_leg status]== 4)
  {
    v31 = [(FUFlightLeg *)self->_leg arrival];
    v32 = [v31 status];

    if (v32 == 3)
    {
      v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v20 = v19;
      v21 = @"On time";
      goto LABEL_11;
    }

    v33 = [(FUFlightLeg *)self->_leg arrival];
    v34 = [v33 delayFromSchedule];
    [v34 doubleValue];
    v18 = fabs(v35);

    if (v18 >= 60.0)
    {
      v36 = [(FUFlightLeg *)self->_leg arrival];
      v37 = [v36 status];

      if (v37 == 4)
      {
        v22 = MEMORY[0x277CCACA8];
        v23 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v20 = v23;
        v24 = @"Late %@";
        goto LABEL_13;
      }

      v38 = [(FUFlightLeg *)self->_leg arrival];
      v39 = [v38 status];

      if (v39 == 2)
      {
        v22 = MEMORY[0x277CCACA8];
        v23 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v20 = v23;
        v24 = @"Early %@";
        goto LABEL_13;
      }
    }
  }

  v4 = 0;
LABEL_15:
  v27 = [(FUFlightInfoView *)self labelDepartureDelay];
  v28 = [(FUFlightInfoView *)self departureDelayConstraint];
  [(FUFlightInfoView *)self updateTimeLabel:v27 constraint:v28 withString:v40];

  v29 = [(FUFlightInfoView *)self labelArrivalDelay];
  v30 = [(FUFlightInfoView *)self arrivalDelayConstraint];
  [(FUFlightInfoView *)self updateTimeLabel:v29 constraint:v30 withString:v4];
}

- (void)updateFlightTerminalInfo
{
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v80 = [v3 localizedStringForKey:@"Terminal %@" value:@"Terminal %@" table:@"Localizable"];

  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"Gate %@" value:@"Gate %@" table:@"Localizable"];

  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v79 = [v6 localizedStringForKey:@"Terminal %@ value:Gate %@" table:{@"Terminal %@, Gate %@", @"Localizable"}];

  v7 = [(FUFlightInfoView *)self labelDepartureInfo2];

  v8 = [(FUFlightLeg *)self->_leg departure];
  v9 = [v8 terminal];
  v10 = [v9 length];

  v11 = 0x277CCA000uLL;
  if (!v7)
  {
    if (v10)
    {
      v24 = [(FUFlightLeg *)self->_leg departure];
      v25 = [v24 gate];
      v26 = [v25 length];

      v27 = MEMORY[0x277CCACA8];
      v20 = [(FUFlightLeg *)self->_leg departure];
      v21 = [v20 terminal];
      v28 = [v21 localizedTerminalOrGateID];
      v22 = v28;
      if (v26)
      {
        v29 = [(FUFlightLeg *)self->_leg departure];
        v30 = [v29 gate];
        [v30 localizedTerminalOrGateID];
        v32 = v31 = v5;
        v10 = [v27 stringWithFormat:v79, v22, v32];

        v5 = v31;
        v11 = 0x277CCA000;
      }

      else
      {
        v10 = [v27 stringWithFormat:v80, v28];
      }

      v23 = 0;
      goto LABEL_12;
    }

LABEL_9:
    v23 = 0;
    goto LABEL_13;
  }

  if (v10)
  {
    v12 = MEMORY[0x277CCACA8];
    v13 = [(FUFlightLeg *)self->_leg departure];
    v14 = [v13 terminal];
    v15 = [v14 localizedTerminalOrGateID];
    v10 = [v12 stringWithFormat:v80, v15];
  }

  v16 = [(FUFlightLeg *)self->_leg departure];
  v17 = [v16 gate];
  v18 = [v17 length];

  if (!v18)
  {
    goto LABEL_9;
  }

  v19 = MEMORY[0x277CCACA8];
  v20 = [(FUFlightLeg *)self->_leg departure];
  v21 = [v20 gate];
  v22 = [v21 localizedTerminalOrGateID];
  v23 = [v19 stringWithFormat:v5, v22];
LABEL_12:

LABEL_13:
  v33 = [(FUFlightInfoView *)self labelDepartureInfo1];
  v34 = v33;
  if (v10)
  {
    v35 = v10;
  }

  else
  {
    v35 = v23;
  }

  if (v10)
  {
    v36 = v23;
  }

  else
  {
    v36 = &stru_285EA8C70;
  }

  [v33 setText:v35];

  v37 = [(FUFlightInfoView *)self labelDepartureInfo2];
  [v37 setText:v36];

  v38 = [(FUFlightInfoView *)self labelArrivalInfo2];

  v39 = [(FUFlightLeg *)self->_leg arrival];
  v40 = [v39 terminal];
  v41 = [v40 length];

  if (v38)
  {
    v77 = v23;
    v42 = v5;
    v43 = v11;
    if (v41)
    {
      v44 = *(v11 + 3240);
      v45 = [(FUFlightLeg *)self->_leg arrival];
      v46 = [v45 terminal];
      v47 = [v46 localizedTerminalOrGateID];
      v41 = [v44 stringWithFormat:v80, v47];
    }

    v48 = [(FUFlightLeg *)self->_leg arrival];
    v49 = [v48 gate];
    v50 = [v49 length];

    if (!v50)
    {
      v5 = v42;
      v23 = v77;
      goto LABEL_32;
    }

    v78 = v10;
    v51 = *(v43 + 3240);
    v52 = [(FUFlightLeg *)self->_leg arrival];
    v53 = [v52 gate];
    v54 = [v53 localizedTerminalOrGateID];
    v55 = v42;
    v50 = [v51 stringWithFormat:v42, v54];
    v23 = v77;
  }

  else
  {
    if (!v41)
    {
      v50 = 0;
      goto LABEL_32;
    }

    v78 = v10;
    v55 = v5;
    v56 = [(FUFlightLeg *)self->_leg arrival];
    v57 = [v56 gate];
    v58 = [v57 length];

    v59 = *(v11 + 3240);
    v52 = [(FUFlightLeg *)self->_leg arrival];
    v53 = [v52 terminal];
    v60 = [v53 localizedTerminalOrGateID];
    v54 = v60;
    if (v58)
    {
      v61 = [(FUFlightLeg *)self->_leg arrival];
      v62 = [v61 gate];
      v63 = [v62 localizedTerminalOrGateID];
      v41 = [v59 stringWithFormat:v79, v54, v63];
    }

    else
    {
      v41 = [v59 stringWithFormat:v80, v60];
    }

    v50 = 0;
  }

  v5 = v55;
  v10 = v78;
LABEL_32:
  v64 = [(FUFlightInfoView *)self labelArrivalInfo1];
  v65 = v64;
  if (v41)
  {
    v66 = v41;
  }

  else
  {
    v66 = v50;
  }

  if (v41)
  {
    v67 = v50;
  }

  else
  {
    v67 = &stru_285EA8C70;
  }

  [v64 setText:v66];

  v68 = [(FUFlightInfoView *)self labelArrivalInfo2];
  [v68 setText:v67];

  v69 = [(FUFlightInfoView *)self labelDepartureInfo1];
  v70 = [(FUFlightInfoView *)self departureTerminalConstraint];
  [(FUFlightInfoView *)self updateLabelVisibility:v69 constraint:v70];

  v71 = [(FUFlightInfoView *)self labelDepartureInfo2];
  v72 = [(FUFlightInfoView *)self departureGateConstraint];
  [(FUFlightInfoView *)self updateLabelVisibility:v71 constraint:v72];

  v73 = [(FUFlightInfoView *)self labelArrivalInfo1];
  v74 = [(FUFlightInfoView *)self arrivalTerminalConstraint];
  [(FUFlightInfoView *)self updateLabelVisibility:v73 constraint:v74];

  v75 = [(FUFlightInfoView *)self labelArrivalInfo2];
  v76 = [(FUFlightInfoView *)self arrivalGateConstraint];
  [(FUFlightInfoView *)self updateLabelVisibility:v75 constraint:v76];
}

- (void)addDateTimeAttributesToString:(id)a3 striked:(BOOL)a4 alignment:(int64_t)a5
{
  v6 = a4;
  v11 = a3;
  v7 = [v11 string];
  v8 = [v7 length];

  if (v6)
  {
    [v11 addAttribute:*MEMORY[0x277D74150] value:&unk_285EAB620 range:{0, v8}];
  }

  v9 = [MEMORY[0x277D74248] defaultParagraphStyle];
  v10 = [v9 mutableCopy];

  [v10 setAlignment:a5];
  [v11 addAttribute:*MEMORY[0x277D74118] value:v10 range:{0, v8}];
}

- (void)updateDateTimeForDeparture:(BOOL)a3
{
  if (a3)
  {
    v58 = [(FUFlightInfoView *)self labelDepartureDate];
    v57 = [(FUFlightInfoView *)self labelDepartureTime];
    v5 = [(FUFlightLeg *)self->_leg departure];
    v6 = [v5 time];
    v55 = [v6 date];

    [(FUFlightLeg *)self->_leg departure];
  }

  else
  {
    v58 = [(FUFlightInfoView *)self labelArrivalDate];
    v57 = [(FUFlightInfoView *)self labelArrivalTime];
    v7 = [(FUFlightLeg *)self->_leg arrival];
    v8 = [v7 time];
    v55 = [v8 date];

    [(FUFlightLeg *)self->_leg arrival];
  }
  v9 = ;
  v10 = [v9 airport];
  v56 = [v10 timeZone];

  v11 = [MEMORY[0x277CBEAF8] currentLocale];
  v12 = v11;
  v13 = updateDateTimeForDeparture__sLocaleIdentifier;
  if (!updateDateTimeForDeparture__sLocaleIdentifier || !v11 || ([v11 localeIdentifier], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v13, "isEqualToString:", v14), v14, (v15 & 1) == 0))
  {
    if (!updateDateTimeForDeparture__sTimeFormatter)
    {
      v16 = objc_alloc_init(MEMORY[0x277CCA968]);
      v17 = updateDateTimeForDeparture__sTimeFormatter;
      updateDateTimeForDeparture__sTimeFormatter = v16;
    }

    if (!updateDateTimeForDeparture__sDateFormatter)
    {
      v18 = objc_alloc_init(MEMORY[0x277CCA968]);
      v19 = updateDateTimeForDeparture__sDateFormatter;
      updateDateTimeForDeparture__sDateFormatter = v18;
    }

    v20 = [v12 localeIdentifier];
    v21 = updateDateTimeForDeparture__sLocaleIdentifier;
    updateDateTimeForDeparture__sLocaleIdentifier = v20;

    v22 = updateDateTimeForDeparture__sTimeFormatter;
    if (v57)
    {
      v23 = @"h:mm j z";
    }

    else
    {
      v23 = @"h:mm j";
    }

    v24 = [MEMORY[0x277CCA968] dateFormatFromTemplate:v23 options:0 locale:v12];
    [v22 setDateFormat:v24];

    [updateDateTimeForDeparture__sTimeFormatter setLocale:v12];
    v25 = updateDateTimeForDeparture__sDateFormatter;
    v26 = [MEMORY[0x277CCA968] dateFormatFromTemplate:@"EE options:MMM d" locale:{0, v12}];
    [v25 setDateFormat:v26];

    [updateDateTimeForDeparture__sDateFormatter setLocale:v12];
  }

  [updateDateTimeForDeparture__sDateFormatter setTimeZone:v56];
  [updateDateTimeForDeparture__sTimeFormatter setTimeZone:v56];
  v27 = v55;
  v28 = [updateDateTimeForDeparture__sTimeFormatter stringFromDate:v55];
  v53 = [updateDateTimeForDeparture__sDateFormatter stringFromDate:v55];
  v29 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:v53];
  v54 = v28;
  v30 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:v28];
  v31 = [(FUFlightLeg *)self->_leg status];
  v32 = v58;
  if (v31)
  {
    if (v31 == 1)
    {
      if (a3)
      {
        v33 = [(FUFlightLeg *)self->_leg departure];
LABEL_23:
        v34 = v33;
        if ([v33 status] == 4)
        {
          v35 = *MEMORY[0x277D740C0];
          v36 = [(FUStyleProvider *)self->_styleProvider orangeColor];
          [v30 addAttribute:v35 value:v36 range:{0, objc_msgSend(v54, "length")}];
        }

        v32 = v58;
        goto LABEL_26;
      }
    }

    else if (v31 == 6 || a3)
    {
      goto LABEL_26;
    }

    v33 = [(FUFlightLeg *)self->_leg arrival];
    goto LABEL_23;
  }

LABEL_26:
  v37 = [v32 font];
  v38 = 2 * ([*MEMORY[0x277D76620] userInterfaceLayoutDirection] != 1);
  v39 = [(FUFlightLeg *)self->_leg status];
  v40 = v57;
  if (v57)
  {
    v41 = v39 == 6;
    [(FUFlightInfoView *)self addDateTimeAttributesToString:v29 striked:v41 alignment:v38];
    [(FUFlightInfoView *)self addDateTimeAttributesToString:v30 striked:v41 alignment:v38];
    v43 = v53;
    v42 = v54;
    if (v37)
    {
      v44 = *MEMORY[0x277D740A8];
      [v29 addAttribute:*MEMORY[0x277D740A8] value:v37 range:{0, objc_msgSend(v53, "length")}];
      [v30 addAttribute:v44 value:v37 range:{0, objc_msgSend(v54, "length")}];
    }

    [v58 setAttributedText:v29];
    [v57 setAttributedText:v30];
  }

  else
  {
    v52 = v39 == 6;
    v45 = v29;
    v46 = objc_alloc(MEMORY[0x277CCA898]);
    v47 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v48 = [v47 localizedStringForKey:@" at " value:@" at " table:@"Localizable"];
    v49 = [v46 initWithString:v48];
    [v45 appendAttributedString:v49];

    [v45 appendAttributedString:v30];
    [(FUFlightInfoView *)self addDateTimeAttributesToString:v45 striked:v52 alignment:v38];
    if (v37)
    {
      v50 = *MEMORY[0x277D740A8];
      v51 = [v45 string];
      [v45 addAttribute:v50 value:v37 range:{0, objc_msgSend(v51, "length")}];
    }

    [v58 setAttributedText:v45];

    v40 = 0;
    v42 = v54;
    v27 = v55;
    v43 = v53;
  }
}

- (void)updateFlightDates
{
  v4 = 1;
  [(FUFlightInfoView *)self updateDateTimeForDeparture:1];
  [(FUFlightInfoView *)self updateDateTimeForDeparture:0];
  v5 = [(FUFlightLeg *)self->_leg status];
  v6 = v5;
  if (v5)
  {
    v7 = v5 == 6;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v2 = [(FUFlightLeg *)self->_leg departure];
    v5 = [v2 delayFromSchedule];
    v4 = v5 == 0;
  }

  if (v6)
  {
    v8 = v6 == 6;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
  }

  if (v4)
  {
    v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v10 = [v9 localizedStringForKey:@"Departure" value:@"Departure" table:@"Localizable"];
    v11 = [(FUFlightInfoView *)self labelDepartureTitle];
    [v11 setText:v10];

    v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v13 = v12;
    v14 = @"Arrival";
    v15 = @"Arrival";
    goto LABEL_26;
  }

  if (v6 != 1)
  {
    goto LABEL_15;
  }

  v16 = [(FUFlightLeg *)self->_leg departure];
  v17 = [v16 time];
  [v17 timeIntervalSinceNow];
  v19 = v18;

  if (v19 >= 0.0)
  {
    v23 = [(FUFlightLeg *)self->_leg departure];
    v24 = [v23 status];

    if (v24 == 4)
    {
      v25 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v26 = v25;
      v27 = @"Delayed";
    }

    else
    {
      v28 = [(FUFlightLeg *)self->_leg departure];
      v29 = [v28 status];

      v25 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v26 = v25;
      if (v29 == 2)
      {
        v27 = @"Departing early";
      }

      else
      {
        v27 = @"Departing";
      }
    }

    v30 = [v25 localizedStringForKey:v27 value:v27 table:@"Localizable"];
    v31 = [(FUFlightInfoView *)self labelDepartureTitle];
    [v31 setText:v30];
  }

  else
  {
LABEL_15:
    v20 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v21 = [v20 localizedStringForKey:@"Departed" value:@"Departed" table:@"Localizable"];
    v22 = [(FUFlightInfoView *)self labelDepartureTitle];
    [v22 setText:v21];

    if ((v6 & 0xFFFFFFFFFFFFFFFELL) == 4)
    {
      goto LABEL_24;
    }
  }

  v32 = [(FUFlightLeg *)self->_leg arrival];
  v33 = [v32 time];
  [v33 timeIntervalSinceNow];
  v35 = v34;

  if (v35 >= 0.0)
  {
    v68 = [(FUFlightLeg *)self->_leg arrival];
    v69 = [v68 status];

    if (v69 == 4)
    {
      v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v13 = v12;
      v14 = @"Arriving late";
    }

    else
    {
      v70 = [(FUFlightLeg *)self->_leg arrival];
      v71 = [v70 status];

      v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v13 = v12;
      if (v71 == 2)
      {
        v14 = @"Arriving early";
      }

      else
      {
        v14 = @"Arriving";
      }
    }

    goto LABEL_25;
  }

LABEL_24:
  v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v13 = v12;
  v14 = @"Arrived";
LABEL_25:
  v15 = v14;
LABEL_26:
  v36 = [v12 localizedStringForKey:v14 value:v15 table:@"Localizable"];
  v37 = [(FUFlightInfoView *)self labelArrivalTitle];
  [v37 setText:v36];

  if ((v6 & 0xFFFFFFFFFFFFFFFELL) != 2)
  {
    goto LABEL_32;
  }

  v38 = [(FUFlightLeg *)self->_leg departure];
  v39 = [v38 taxiing];

  if (v39)
  {
    v40 = [(FUFlightInfoView *)self labelDepartureTitle];
    v41 = @"DEPARTURE_RUNWAY";
  }

  else
  {
    v42 = [(FUFlightLeg *)self->_leg arrival];
    v43 = [v42 taxiing];

    if (!v43)
    {
      goto LABEL_32;
    }

    v40 = [(FUFlightInfoView *)self labelArrivalTitle];
    v41 = @"ARRIVAL_RUNWAY";
  }

  v44 = [v40 text];
  v45 = MEMORY[0x277CCACA8];
  v46 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v47 = [v46 localizedStringForKey:v41 value:@"Runway" table:@"Localizable"];
  v48 = [v45 localizedStringWithFormat:@" (%@)", v47];
  v49 = [v44 stringByAppendingString:v48];
  [v40 setText:v49];

LABEL_32:
  [(FUFlightLeg *)self->_leg duration];
  if (v50 >= 60.0)
  {
    v51 = [(FUFlightInfoView *)self formattedDurationForDuration:?];
  }

  else
  {
    v51 = @"–";
  }

  v72 = v51;
  v52 = [(FUFlightInfoView *)self labelDurationComplete];

  if (v52)
  {
    v53 = MEMORY[0x277CCACA8];
    v54 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v55 = [v54 localizedStringForKey:@"Duration: %@" value:@"Duration: %@" table:@"Localizable"];
    v56 = [v53 stringWithFormat:v55, v72];
    v57 = [(FUFlightInfoView *)self labelDurationComplete];
    [v57 setText:v56];
  }

  else
  {
    v58 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v59 = [v58 localizedStringForKey:@"Duration" value:@"Duration" table:@"Localizable"];
    v60 = [(FUFlightInfoView *)self labelDurationTitle];
    [v60 setText:v59];

    v54 = [(FUFlightInfoView *)self labelDurationValue];
    [v54 setText:v72];
  }

  v61 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v62 = [v61 localizedStringForKey:@"Baggage Claim" value:@"Baggage Claim" table:@"Localizable"];
  v63 = [(FUFlightInfoView *)self labelBaggageClaimTitle];
  [v63 setText:v62];

  v64 = [(FUFlightLeg *)self->_leg baggageClaim];
  v65 = [v64 length];
  if (v65)
  {
    v66 = [(FUFlightLeg *)self->_leg baggageClaim];
  }

  else
  {
    v66 = @"–";
  }

  v67 = [(FUFlightInfoView *)self labelBaggageClaimValue];
  [v67 setText:v66];

  if (v65)
  {
  }
}

- (void)updateFlightStatus
{
  v4 = [(FUFlightLeg *)self->_leg status];
  v5 = v4;
  if (v4 > 4)
  {
    if (v4 == 5)
    {
      v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v7 = v6;
      v8 = @"Diverted";
      goto LABEL_19;
    }

    if (v4 == 6)
    {
      v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v43 = [v9 localizedStringForKey:@"Canceled" value:@"Canceled" table:@"Localizable"];

      v10 = [(FUStyleProvider *)self->_styleProvider redColor];
LABEL_20:
      v30 = v10;
      goto LABEL_21;
    }
  }

  else
  {
    if (v4 == 1)
    {
      v14 = [(FUFlightLeg *)self->_leg departure];
      v15 = [v14 status];

      if (v15 != 4)
      {
        v26 = [(FUFlightLeg *)self->_leg departure];
        v27 = [v26 delayFromSchedule];

        v28 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v29 = v28;
        if (v27)
        {
          v43 = [v28 localizedStringForKey:@"On time" value:@"On time" table:@"Localizable"];

          [(FUStyleProvider *)self->_styleProvider greenColor];
        }

        else
        {
          v43 = [v28 localizedStringForKey:@"Scheduled" value:@"Scheduled" table:@"Localizable"];

          [(FUStyleProvider *)self->_styleProvider primaryTextColor];
        }
        v10 = ;
        goto LABEL_20;
      }

      v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v7 = v6;
      v8 = @"Delayed";
      goto LABEL_19;
    }

    if (v4 == 3)
    {
      v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v7 = v6;
      v8 = @"Redirected";
LABEL_19:
      v43 = [v6 localizedStringForKey:v8 value:v8 table:@"Localizable"];

      v10 = [(FUStyleProvider *)self->_styleProvider orangeColor];
      goto LABEL_20;
    }
  }

  if (v4 != 4 && v4 != 2)
  {
    v30 = [(FUStyleProvider *)self->_styleProvider blueColor];
    v43 = &stru_285EA8C70;
    goto LABEL_21;
  }

  if (v4 == 2 && (-[FUFlightLeg departure](self->_leg, "departure"), v2 = objc_claimAutoreleasedReturnValue(), [v2 taxiing]))
  {
    v12 = [(FUFlightLeg *)self->_leg departure];
    v13 = [v12 status];
  }

  else
  {
    v21 = [(FUFlightLeg *)self->_leg arrival];
    v13 = [v21 status];

    if (v5 != 2)
    {
      goto LABEL_29;
    }
  }

LABEL_29:
  v22 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v23 = v22;
  if (v13 == 2)
  {
    v31 = @"Early";
LABEL_37:
    v24 = [v22 localizedStringForKey:v31 value:v31 table:@"Localizable"];

    v25 = [(FUStyleProvider *)self->_styleProvider greenColor];
    goto LABEL_38;
  }

  if (v13 != 4)
  {
    v31 = @"On time";
    goto LABEL_37;
  }

  v24 = [v22 localizedStringForKey:@"Late" value:@"Late" table:@"Localizable"];

  v25 = [(FUStyleProvider *)self->_styleProvider orangeColor];
LABEL_38:
  v30 = v25;
  if (v5 == 4)
  {
    v32 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v33 = v32;
    v34 = @"Arrived";
  }

  else
  {
    v35 = [(FUFlightLeg *)self->_leg arrival];
    v36 = [v35 taxiing];

    if (v36)
    {
      v32 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v33 = v32;
      v34 = @"Landed";
    }

    else
    {
      v37 = [(FUFlightLeg *)self->_leg departure];
      v38 = [v37 taxiing];

      v32 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v33 = v32;
      if (v38)
      {
        v34 = @"Taxiing";
      }

      else
      {
        v34 = @"En route";
      }
    }
  }

  v39 = [v32 localizedStringForKey:v34 value:v34 table:@"Localizable"];

  v40 = MEMORY[0x277CCACA8];
  v41 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v42 = [v41 localizedStringForKey:@"%@ – %@" value:@"%@ – %@" table:@"Localizable"];
  v43 = [v40 stringWithFormat:v42, v39, v24];

LABEL_21:
  v16 = [(FUFlightInfoView *)self labelStatus];
  [v16 setText:v43];

  v17 = [(FUFlightInfoView *)self labelStatus];
  [v17 setTextColor:v30];

  if (([(__CFString *)v43 isEqualToString:&stru_285EA8C70]& 1) != 0)
  {
    v18 = [(FUFlightInfoView *)self labelStatusTitle];
    [v18 setText:&stru_285EA8C70];
  }

  else
  {
    v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v19 = [v18 localizedStringForKey:@"Status" value:@"Status" table:@"Localizable"];
    v20 = [(FUFlightInfoView *)self labelStatusTitle];
    [v20 setText:v19];
  }
}

- (void)flightButtonTapped:(id)a3
{
  [(FUFlightInfoView *)self setCurrentFocus:2];
  v4 = [(FUFlightInfoView *)self delegate];
  [v4 flightInfoView:self didUpdateFocus:2];
}

- (void)updateLabelVisibility:(id)a3 constraint:(id)a4
{
  v5 = a4;
  v6 = [a3 text];
  [v5 setActive:{objc_msgSend(v6, "length") != 0}];
}

- (FUFlightInfoViewProtocol)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (FULabel)labelAirlineName
{
  WeakRetained = objc_loadWeakRetained(&self->_labelAirlineName);

  return WeakRetained;
}

- (FULabel)labelFlightCode
{
  WeakRetained = objc_loadWeakRetained(&self->_labelFlightCode);

  return WeakRetained;
}

- (FULabel)labelStatusTitle
{
  WeakRetained = objc_loadWeakRetained(&self->_labelStatusTitle);

  return WeakRetained;
}

- (FULabel)labelStatus
{
  WeakRetained = objc_loadWeakRetained(&self->_labelStatus);

  return WeakRetained;
}

- (FULabel)labelDepartureCity
{
  WeakRetained = objc_loadWeakRetained(&self->_labelDepartureCity);

  return WeakRetained;
}

- (FULabel)labelDepartureCode
{
  WeakRetained = objc_loadWeakRetained(&self->_labelDepartureCode);

  return WeakRetained;
}

- (FULabel)labelDepartureInfo1
{
  WeakRetained = objc_loadWeakRetained(&self->_labelDepartureInfo1);

  return WeakRetained;
}

- (FULabel)labelDepartureInfo2
{
  WeakRetained = objc_loadWeakRetained(&self->_labelDepartureInfo2);

  return WeakRetained;
}

- (FULabel)labelArrivalCity
{
  WeakRetained = objc_loadWeakRetained(&self->_labelArrivalCity);

  return WeakRetained;
}

- (FULabel)labelArrivalCode
{
  WeakRetained = objc_loadWeakRetained(&self->_labelArrivalCode);

  return WeakRetained;
}

- (FULabel)labelArrivalInfo1
{
  WeakRetained = objc_loadWeakRetained(&self->_labelArrivalInfo1);

  return WeakRetained;
}

- (FULabel)labelArrivalInfo2
{
  WeakRetained = objc_loadWeakRetained(&self->_labelArrivalInfo2);

  return WeakRetained;
}

- (FULabel)labelDepartureTitle
{
  WeakRetained = objc_loadWeakRetained(&self->_labelDepartureTitle);

  return WeakRetained;
}

- (FULabel)labelDepartureDate
{
  WeakRetained = objc_loadWeakRetained(&self->_labelDepartureDate);

  return WeakRetained;
}

- (FULabel)labelDepartureTime
{
  WeakRetained = objc_loadWeakRetained(&self->_labelDepartureTime);

  return WeakRetained;
}

- (FULabel)labelDepartureDelay
{
  WeakRetained = objc_loadWeakRetained(&self->_labelDepartureDelay);

  return WeakRetained;
}

- (FULabel)labelArrivalTitle
{
  WeakRetained = objc_loadWeakRetained(&self->_labelArrivalTitle);

  return WeakRetained;
}

- (FULabel)labelArrivalDate
{
  WeakRetained = objc_loadWeakRetained(&self->_labelArrivalDate);

  return WeakRetained;
}

- (FULabel)labelArrivalTime
{
  WeakRetained = objc_loadWeakRetained(&self->_labelArrivalTime);

  return WeakRetained;
}

- (FULabel)labelArrivalDelay
{
  WeakRetained = objc_loadWeakRetained(&self->_labelArrivalDelay);

  return WeakRetained;
}

- (FULabel)labelDurationTitle
{
  WeakRetained = objc_loadWeakRetained(&self->_labelDurationTitle);

  return WeakRetained;
}

- (FULabel)labelDurationValue
{
  WeakRetained = objc_loadWeakRetained(&self->_labelDurationValue);

  return WeakRetained;
}

- (FULabel)labelDurationComplete
{
  WeakRetained = objc_loadWeakRetained(&self->_labelDurationComplete);

  return WeakRetained;
}

- (FULabel)labelBaggageClaimTitle
{
  WeakRetained = objc_loadWeakRetained(&self->_labelBaggageClaimTitle);

  return WeakRetained;
}

- (FULabel)labelBaggageClaimValue
{
  WeakRetained = objc_loadWeakRetained(&self->_labelBaggageClaimValue);

  return WeakRetained;
}

- (FUSeparator)sep5
{
  WeakRetained = objc_loadWeakRetained(&self->_sep5);

  return WeakRetained;
}

- (UIButton)flightButton
{
  WeakRetained = objc_loadWeakRetained(&self->_flightButton);

  return WeakRetained;
}

@end