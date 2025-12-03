@interface FUFlightInfoView
+ (id)flightViewForStyle:(unint64_t)style compact:(BOOL)compact;
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
- (id)formattedDurationForDuration:(double)duration;
- (void)addDateTimeAttributesToString:(id)string striked:(BOOL)striked alignment:(int64_t)alignment;
- (void)awakeFromNib;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)flightButtonTapped:(id)tapped;
- (void)setStyle:(unint64_t)style;
- (void)setupLabelStylesWithStyle:(unint64_t)style;
- (void)tlk_updateForAppearance:(id)appearance;
- (void)traitCollectionDidChange:(id)change;
- (void)updateAirlineInformation;
- (void)updateDateTimeForDeparture:(BOOL)departure;
- (void)updateDelayInfo;
- (void)updateFlightButtonIcon;
- (void)updateFlightDates;
- (void)updateFlightStatus;
- (void)updateFlightTerminalInfo;
- (void)updateForFollowupContent:(BOOL)content;
- (void)updateLabelVisibility:(id)visibility constraint:(id)constraint;
- (void)updateLocationInfo;
- (void)updateTimeLabel:(id)label constraint:(id)constraint withString:(id)string;
@end

@implementation FUFlightInfoView

+ (id)flightViewForStyle:(unint64_t)style compact:(BOOL)compact
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
          [v8 setupLabelStylesWithStyle:{style, v14}];
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

- (void)setStyle:(unint64_t)style
{
  if (self->_style != style)
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
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen _referenceBounds];
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

- (void)setupLabelStylesWithStyle:(unint64_t)style
{
  self->_style = style;
  if (self->_awake)
  {
    v4 = [FUStyleProvider providerForStyle:?];
    objc_storeStrong(&self->_styleProvider, v4);
    labelAirlineName = [(FUFlightInfoView *)self labelAirlineName];
    [labelAirlineName setStyleProvider:v4 primaryStyle:1];

    labelFlightCode = [(FUFlightInfoView *)self labelFlightCode];
    [labelFlightCode setStyleProvider:v4 primaryStyle:0];

    labelStatusTitle = [(FUFlightInfoView *)self labelStatusTitle];
    [labelStatusTitle setStyleProvider:v4 primaryStyle:1];

    labelStatus = [(FUFlightInfoView *)self labelStatus];
    [labelStatus setStyleProvider:v4 primaryStyle:1];

    labelDepartureCity = [(FUFlightInfoView *)self labelDepartureCity];
    [labelDepartureCity setStyleProvider:v4 primaryStyle:0];

    labelDepartureCode = [(FUFlightInfoView *)self labelDepartureCode];
    [labelDepartureCode setStyleProvider:v4 primaryStyle:1];

    labelDepartureInfo1 = [(FUFlightInfoView *)self labelDepartureInfo1];
    [labelDepartureInfo1 setStyleProvider:v4 primaryStyle:0];

    labelDepartureInfo2 = [(FUFlightInfoView *)self labelDepartureInfo2];
    [labelDepartureInfo2 setStyleProvider:v4 primaryStyle:0];

    labelArrivalCity = [(FUFlightInfoView *)self labelArrivalCity];
    [labelArrivalCity setStyleProvider:v4 primaryStyle:0];

    labelArrivalCode = [(FUFlightInfoView *)self labelArrivalCode];
    [labelArrivalCode setStyleProvider:v4 primaryStyle:1];

    labelArrivalInfo1 = [(FUFlightInfoView *)self labelArrivalInfo1];
    [labelArrivalInfo1 setStyleProvider:v4 primaryStyle:0];

    labelArrivalInfo2 = [(FUFlightInfoView *)self labelArrivalInfo2];
    [labelArrivalInfo2 setStyleProvider:v4 primaryStyle:0];

    labelDepartureTitle = [(FUFlightInfoView *)self labelDepartureTitle];
    [labelDepartureTitle setStyleProvider:v4 primaryStyle:1];

    labelArrivalTitle = [(FUFlightInfoView *)self labelArrivalTitle];
    [labelArrivalTitle setStyleProvider:v4 primaryStyle:1];

    labelDepartureDate = [(FUFlightInfoView *)self labelDepartureDate];
    [labelDepartureDate setStyleProvider:v4 primaryStyle:1];

    labelArrivalDate = [(FUFlightInfoView *)self labelArrivalDate];
    [labelArrivalDate setStyleProvider:v4 primaryStyle:1];

    labelDepartureTime = [(FUFlightInfoView *)self labelDepartureTime];
    [labelDepartureTime setStyleProvider:v4 primaryStyle:1];

    labelArrivalTime = [(FUFlightInfoView *)self labelArrivalTime];
    [labelArrivalTime setStyleProvider:v4 primaryStyle:1];

    labelDepartureDelay = [(FUFlightInfoView *)self labelDepartureDelay];
    [labelDepartureDelay setStyleProvider:v4 primaryStyle:0];

    labelArrivalDelay = [(FUFlightInfoView *)self labelArrivalDelay];
    [labelArrivalDelay setStyleProvider:v4 primaryStyle:0];

    labelDurationTitle = [(FUFlightInfoView *)self labelDurationTitle];
    [labelDurationTitle setStyleProvider:v4 primaryStyle:1];

    labelDurationValue = [(FUFlightInfoView *)self labelDurationValue];
    [labelDurationValue setStyleProvider:v4 primaryStyle:1];

    labelDurationComplete = [(FUFlightInfoView *)self labelDurationComplete];
    [labelDurationComplete setStyleProvider:v4 primaryStyle:0];

    labelBaggageClaimTitle = [(FUFlightInfoView *)self labelBaggageClaimTitle];
    [labelBaggageClaimTitle setStyleProvider:v4 primaryStyle:1];

    labelBaggageClaimValue = [(FUFlightInfoView *)self labelBaggageClaimValue];
    [labelBaggageClaimValue setStyleProvider:v4 primaryStyle:1];

    labelStatusTitle2 = [(FUFlightInfoView *)self labelStatusTitle];
    labelAirlineName2 = [(FUFlightInfoView *)self labelAirlineName];
    [labelAirlineName2 setAssociatedScalingLabel:labelStatusTitle2];

    labelAirlineName3 = [(FUFlightInfoView *)self labelAirlineName];
    labelStatusTitle3 = [(FUFlightInfoView *)self labelStatusTitle];
    [labelStatusTitle3 setAssociatedScalingLabel:labelAirlineName3];

    labelStatus2 = [(FUFlightInfoView *)self labelStatus];
    labelFlightCode2 = [(FUFlightInfoView *)self labelFlightCode];
    [labelFlightCode2 setAssociatedScalingLabel:labelStatus2];

    labelFlightCode3 = [(FUFlightInfoView *)self labelFlightCode];
    labelStatus3 = [(FUFlightInfoView *)self labelStatus];
    [labelStatus3 setAssociatedScalingLabel:labelFlightCode3];

    labelArrivalCity2 = [(FUFlightInfoView *)self labelArrivalCity];
    labelDepartureCity2 = [(FUFlightInfoView *)self labelDepartureCity];
    [labelDepartureCity2 setAssociatedScalingLabel:labelArrivalCity2];

    labelDepartureCity3 = [(FUFlightInfoView *)self labelDepartureCity];
    labelArrivalCity3 = [(FUFlightInfoView *)self labelArrivalCity];
    [labelArrivalCity3 setAssociatedScalingLabel:labelDepartureCity3];

    labelDepartureCode2 = [(FUFlightInfoView *)self labelDepartureCode];
    labelArrivalCode2 = [(FUFlightInfoView *)self labelArrivalCode];
    [labelArrivalCode2 setAssociatedScalingLabel:labelDepartureCode2];

    labelArrivalCode3 = [(FUFlightInfoView *)self labelArrivalCode];
    labelDepartureCode3 = [(FUFlightInfoView *)self labelDepartureCode];
    [labelDepartureCode3 setAssociatedScalingLabel:labelArrivalCode3];

    labelArrivalInfo12 = [(FUFlightInfoView *)self labelArrivalInfo1];
    labelDepartureInfo12 = [(FUFlightInfoView *)self labelDepartureInfo1];
    [labelDepartureInfo12 setAssociatedScalingLabel:labelArrivalInfo12];

    labelDepartureInfo13 = [(FUFlightInfoView *)self labelDepartureInfo1];
    labelArrivalInfo13 = [(FUFlightInfoView *)self labelArrivalInfo1];
    [labelArrivalInfo13 setAssociatedScalingLabel:labelDepartureInfo13];

    labelArrivalInfo22 = [(FUFlightInfoView *)self labelArrivalInfo2];
    labelDepartureInfo22 = [(FUFlightInfoView *)self labelDepartureInfo2];
    [labelDepartureInfo22 setAssociatedScalingLabel:labelArrivalInfo22];

    labelDepartureInfo23 = [(FUFlightInfoView *)self labelDepartureInfo2];
    labelArrivalInfo23 = [(FUFlightInfoView *)self labelArrivalInfo2];
    [labelArrivalInfo23 setAssociatedScalingLabel:labelDepartureInfo23];

    labelDepartureTime2 = [(FUFlightInfoView *)self labelDepartureTime];
    labelDepartureTitle2 = [(FUFlightInfoView *)self labelDepartureTitle];
    [labelDepartureTitle2 setAssociatedScalingLabel:labelDepartureTime2];

    labelDepartureTitle3 = [(FUFlightInfoView *)self labelDepartureTitle];
    labelDepartureTime3 = [(FUFlightInfoView *)self labelDepartureTime];
    [labelDepartureTime3 setAssociatedScalingLabel:labelDepartureTitle3];

    labelDepartureDate2 = [(FUFlightInfoView *)self labelDepartureDate];
    labelDepartureDelay2 = [(FUFlightInfoView *)self labelDepartureDelay];
    [labelDepartureDelay2 setAssociatedScalingLabel:labelDepartureDate2];

    labelDepartureDelay3 = [(FUFlightInfoView *)self labelDepartureDelay];
    labelDepartureDate3 = [(FUFlightInfoView *)self labelDepartureDate];
    [labelDepartureDate3 setAssociatedScalingLabel:labelDepartureDelay3];

    labelArrivalTime2 = [(FUFlightInfoView *)self labelArrivalTime];
    labelArrivalTitle2 = [(FUFlightInfoView *)self labelArrivalTitle];
    [labelArrivalTitle2 setAssociatedScalingLabel:labelArrivalTime2];

    labelArrivalTitle3 = [(FUFlightInfoView *)self labelArrivalTitle];
    labelArrivalTime3 = [(FUFlightInfoView *)self labelArrivalTime];
    [labelArrivalTime3 setAssociatedScalingLabel:labelArrivalTitle3];

    labelArrivalDate2 = [(FUFlightInfoView *)self labelArrivalDate];
    labelArrivalDelay2 = [(FUFlightInfoView *)self labelArrivalDelay];
    [labelArrivalDelay2 setAssociatedScalingLabel:labelArrivalDate2];

    labelArrivalDelay3 = [(FUFlightInfoView *)self labelArrivalDelay];
    labelArrivalDate3 = [(FUFlightInfoView *)self labelArrivalDate];
    [labelArrivalDate3 setAssociatedScalingLabel:labelArrivalDelay3];

    labelDurationValue2 = [(FUFlightInfoView *)self labelDurationValue];
    labelDurationTitle2 = [(FUFlightInfoView *)self labelDurationTitle];
    [labelDurationTitle2 setAssociatedScalingLabel:labelDurationValue2];

    labelDurationTitle3 = [(FUFlightInfoView *)self labelDurationTitle];
    labelDurationValue3 = [(FUFlightInfoView *)self labelDurationValue];
    [labelDurationValue3 setAssociatedScalingLabel:labelDurationTitle3];

    labelBaggageClaimValue2 = [(FUFlightInfoView *)self labelBaggageClaimValue];
    labelBaggageClaimTitle2 = [(FUFlightInfoView *)self labelBaggageClaimTitle];
    [labelBaggageClaimTitle2 setAssociatedScalingLabel:labelBaggageClaimValue2];

    labelBaggageClaimTitle3 = [(FUFlightInfoView *)self labelBaggageClaimTitle];
    labelBaggageClaimValue3 = [(FUFlightInfoView *)self labelBaggageClaimValue];
    [labelBaggageClaimValue3 setAssociatedScalingLabel:labelBaggageClaimTitle3];

    [(FUFlightInfoView *)self standardTableCellContentInset];
    v79 = v78;
    leadingInset = [(FUFlightInfoView *)self leadingInset];
    [leadingInset setConstant:v79];

    trailingInset = [(FUFlightInfoView *)self trailingInset];
    [trailingInset setConstant:v79];

    if (self->_spotlightMode)
    {
      v79 = 0.0;
    }

    trailingSeparatorsInset = [(FUFlightInfoView *)self trailingSeparatorsInset];
    [trailingSeparatorsInset setConstant:v79];

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:self selector:sel_updateFlightDates name:*MEMORY[0x277CBE620] object:0];

    objc_initWeak(&location, self);
    v88[0] = MEMORY[0x277D85DD0];
    v88[1] = 3221225472;
    v88[2] = __46__FUFlightInfoView_setupLabelStylesWithStyle___block_invoke;
    v88[3] = &unk_2790115C0;
    objc_copyWeak(&v89, &location);
    labelDepartureCode4 = [(FUFlightInfoView *)self labelDepartureCode];
    [labelDepartureCode4 setOnTap:v88];

    v86[0] = MEMORY[0x277D85DD0];
    v86[1] = 3221225472;
    v86[2] = __46__FUFlightInfoView_setupLabelStylesWithStyle___block_invoke_2;
    v86[3] = &unk_2790115C0;
    objc_copyWeak(&v87, &location);
    labelArrivalCode4 = [(FUFlightInfoView *)self labelArrivalCode];
    [labelArrivalCode4 setOnTap:v86];

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

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v9.receiver = self;
  v9.super_class = FUFlightInfoView;
  [(FUFlightInfoView *)&v9 traitCollectionDidChange:changeCopy];
  traitCollection = [(FUFlightInfoView *)self traitCollection];
  if ([traitCollection hasDifferentColorAppearanceComparedToTraitCollection:changeCopy])
  {

LABEL_4:
    [(FUFlightInfoView *)self tlk_updateWithCurrentAppearance];
    goto LABEL_5;
  }

  traitCollection2 = [(FUFlightInfoView *)self traitCollection];
  _vibrancy = [traitCollection2 _vibrancy];
  _vibrancy2 = [changeCopy _vibrancy];

  if (_vibrancy != _vibrancy2)
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

- (void)tlk_updateForAppearance:(id)appearance
{
  appearanceCopy = appearance;
  secondaryColor = [appearanceCopy secondaryColor];
  flightButton = [(FUFlightInfoView *)self flightButton];
  [flightButton setTintColor:secondaryColor];

  flightButton2 = [(FUFlightInfoView *)self flightButton];
  [appearanceCopy enableAppearanceForView:flightButton2];
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
  clearColor = [MEMORY[0x277D75348] clearColor];
  [clearColor setFill];

  blackColor = [MEMORY[0x277D75348] blackColor];
  [blackColor setStroke];

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

  flightButton = [(FUFlightInfoView *)self flightButton];
  [flightButton setImage:v25 forState:0];

  flightButton2 = [(FUFlightInfoView *)self flightButton];
  [flightButton2 _setCornerRadius:20.0];

  v28 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = FUFlightInfoView;
  [(FUFlightInfoView *)&v4 dealloc];
}

- (void)updateForFollowupContent:(BOOL)content
{
  self->_spotlightMode = content;
  v5 = 1.0;
  if (content || self->_multiFlights)
  {
    v6 = 0;
  }

  else
  {
    legs = [(FUFlight *)self->_flight legs];
    if ([legs count] <= 1)
    {
      v5 = 0.0;
    }

    else
    {
      v5 = 1.0;
    }

    v6 = 1;
  }

  sep5 = [(FUFlightInfoView *)self sep5];
  [sep5 setAlpha:v5];

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
    trailingInset = [(FUFlightInfoView *)self trailingInset];
    [trailingInset constant];
    v9 = v10;
  }

  trailingSeparatorsInset = [(FUFlightInfoView *)self trailingSeparatorsInset];
  [trailingSeparatorsInset setConstant:v9];

  if (!spotlightMode)
  {
  }
}

- (void)updateAirlineInformation
{
  airline = [(FUFlight *)self->_flight airline];
  name = [airline name];
  labelAirlineName = [(FUFlightInfoView *)self labelAirlineName];
  [labelAirlineName setText:name];

  flightCode = [(FUFlight *)self->_flight flightCode];
  labelFlightCode = [(FUFlightInfoView *)self labelFlightCode];
  [labelFlightCode setText:flightCode];
}

- (void)updateLocationInfo
{
  departure = [(FUFlightLeg *)self->_leg departure];
  airport = [departure airport];
  city = [airport city];

  if (city)
  {
    departure2 = [(FUFlightLeg *)self->_leg departure];
    airport2 = [departure2 airport];
    city2 = [airport2 city];
    labelDepartureCity = [(FUFlightInfoView *)self labelDepartureCity];
    [labelDepartureCity setText:city2];
  }

  else
  {
    departure2 = [(FUFlightInfoView *)self labelDepartureCity];
    [departure2 setText:&stru_285EA8C70];
  }

  arrival = [(FUFlightLeg *)self->_leg arrival];
  airport3 = [arrival airport];
  city3 = [airport3 city];

  if (city3)
  {
    arrival2 = [(FUFlightLeg *)self->_leg arrival];
    airport4 = [arrival2 airport];
    city4 = [airport4 city];
    labelArrivalCity = [(FUFlightInfoView *)self labelArrivalCity];
    [labelArrivalCity setText:city4];
  }

  else
  {
    arrival2 = [(FUFlightInfoView *)self labelArrivalCity];
    [arrival2 setText:&stru_285EA8C70];
  }

  departure3 = [(FUFlightLeg *)self->_leg departure];
  airport5 = [departure3 airport];
  iATACode = [airport5 IATACode];
  labelDepartureCode = [(FUFlightInfoView *)self labelDepartureCode];
  [labelDepartureCode setText:iATACode];

  arrival3 = [(FUFlightLeg *)self->_leg arrival];
  airport6 = [arrival3 airport];
  iATACode2 = [airport6 IATACode];
  labelArrivalCode = [(FUFlightInfoView *)self labelArrivalCode];
  [labelArrivalCode setText:iATACode2];
}

- (void)updateTimeLabel:(id)label constraint:(id)constraint withString:(id)string
{
  if (string)
  {
    stringCopy = string;
  }

  else
  {
    stringCopy = &stru_285EA8C70;
  }

  constraintCopy = constraint;
  labelCopy = label;
  [labelCopy setText:stringCopy];
  [(FUFlightInfoView *)self updateLabelVisibility:labelCopy constraint:constraintCopy];
}

- (id)formattedDurationForDuration:(double)duration
{
  v4 = objc_alloc_init(MEMORY[0x277CCA958]);
  [v4 setAllowedUnits:112];
  [v4 setFormattingContext:1];
  [v4 setMaximumUnitCount:2];
  if (duration > 3599)
  {
    v5 = 2;
  }

  else
  {
    v5 = 3;
  }

  [v4 setUnitsStyle:v5];
  v6 = [v4 stringFromTimeInterval:duration];

  return v6;
}

- (void)updateDelayInfo
{
  departure = [(FUFlightLeg *)self->_leg departure];
  delayFromSchedule = [departure delayFromSchedule];

  if (!delayFromSchedule)
  {
    v40 = 0;
    goto LABEL_15;
  }

  departure2 = [(FUFlightLeg *)self->_leg departure];
  status = [departure2 status];

  if (status != 4)
  {
    goto LABEL_4;
  }

  departure3 = [(FUFlightLeg *)self->_leg departure];
  delayFromSchedule2 = [departure3 delayFromSchedule];
  [delayFromSchedule2 doubleValue];
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
    arrival = [(FUFlightLeg *)self->_leg arrival];
    time = [arrival time];
    [time timeIntervalSinceNow];
    v18 = v17;

    if (v18 < 60.0)
    {
      v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v20 = v19;
      v21 = @"Arriving now";
LABEL_11:
      delayFromSchedule = [v19 localizedStringForKey:v21 value:v21 table:@"Localizable"];
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
    delayFromSchedule = [v22 stringWithFormat:v25, v26];

    goto LABEL_14;
  }

  if ([(FUFlightLeg *)self->_leg status]== 4 || [(FUFlightLeg *)self->_leg status]== 4)
  {
    arrival2 = [(FUFlightLeg *)self->_leg arrival];
    status2 = [arrival2 status];

    if (status2 == 3)
    {
      v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v20 = v19;
      v21 = @"On time";
      goto LABEL_11;
    }

    arrival3 = [(FUFlightLeg *)self->_leg arrival];
    delayFromSchedule3 = [arrival3 delayFromSchedule];
    [delayFromSchedule3 doubleValue];
    v18 = fabs(v35);

    if (v18 >= 60.0)
    {
      arrival4 = [(FUFlightLeg *)self->_leg arrival];
      status3 = [arrival4 status];

      if (status3 == 4)
      {
        v22 = MEMORY[0x277CCACA8];
        v23 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v20 = v23;
        v24 = @"Late %@";
        goto LABEL_13;
      }

      arrival5 = [(FUFlightLeg *)self->_leg arrival];
      status4 = [arrival5 status];

      if (status4 == 2)
      {
        v22 = MEMORY[0x277CCACA8];
        v23 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v20 = v23;
        v24 = @"Early %@";
        goto LABEL_13;
      }
    }
  }

  delayFromSchedule = 0;
LABEL_15:
  labelDepartureDelay = [(FUFlightInfoView *)self labelDepartureDelay];
  departureDelayConstraint = [(FUFlightInfoView *)self departureDelayConstraint];
  [(FUFlightInfoView *)self updateTimeLabel:labelDepartureDelay constraint:departureDelayConstraint withString:v40];

  labelArrivalDelay = [(FUFlightInfoView *)self labelArrivalDelay];
  arrivalDelayConstraint = [(FUFlightInfoView *)self arrivalDelayConstraint];
  [(FUFlightInfoView *)self updateTimeLabel:labelArrivalDelay constraint:arrivalDelayConstraint withString:delayFromSchedule];
}

- (void)updateFlightTerminalInfo
{
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v80 = [v3 localizedStringForKey:@"Terminal %@" value:@"Terminal %@" table:@"Localizable"];

  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"Gate %@" value:@"Gate %@" table:@"Localizable"];

  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v79 = [v6 localizedStringForKey:@"Terminal %@ value:Gate %@" table:{@"Terminal %@, Gate %@", @"Localizable"}];

  labelDepartureInfo2 = [(FUFlightInfoView *)self labelDepartureInfo2];

  departure = [(FUFlightLeg *)self->_leg departure];
  terminal = [departure terminal];
  v10 = [terminal length];

  v11 = 0x277CCA000uLL;
  if (!labelDepartureInfo2)
  {
    if (v10)
    {
      departure2 = [(FUFlightLeg *)self->_leg departure];
      gate = [departure2 gate];
      v26 = [gate length];

      v27 = MEMORY[0x277CCACA8];
      departure3 = [(FUFlightLeg *)self->_leg departure];
      terminal2 = [departure3 terminal];
      localizedTerminalOrGateID = [terminal2 localizedTerminalOrGateID];
      localizedTerminalOrGateID3 = localizedTerminalOrGateID;
      if (v26)
      {
        departure4 = [(FUFlightLeg *)self->_leg departure];
        gate2 = [departure4 gate];
        [gate2 localizedTerminalOrGateID];
        v32 = v31 = v5;
        v10 = [v27 stringWithFormat:v79, localizedTerminalOrGateID3, v32];

        v5 = v31;
        v11 = 0x277CCA000;
      }

      else
      {
        v10 = [v27 stringWithFormat:v80, localizedTerminalOrGateID];
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
    departure5 = [(FUFlightLeg *)self->_leg departure];
    terminal3 = [departure5 terminal];
    localizedTerminalOrGateID2 = [terminal3 localizedTerminalOrGateID];
    v10 = [v12 stringWithFormat:v80, localizedTerminalOrGateID2];
  }

  departure6 = [(FUFlightLeg *)self->_leg departure];
  gate3 = [departure6 gate];
  v18 = [gate3 length];

  if (!v18)
  {
    goto LABEL_9;
  }

  v19 = MEMORY[0x277CCACA8];
  departure3 = [(FUFlightLeg *)self->_leg departure];
  terminal2 = [departure3 gate];
  localizedTerminalOrGateID3 = [terminal2 localizedTerminalOrGateID];
  v23 = [v19 stringWithFormat:v5, localizedTerminalOrGateID3];
LABEL_12:

LABEL_13:
  labelDepartureInfo1 = [(FUFlightInfoView *)self labelDepartureInfo1];
  v34 = labelDepartureInfo1;
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

  [labelDepartureInfo1 setText:v35];

  labelDepartureInfo22 = [(FUFlightInfoView *)self labelDepartureInfo2];
  [labelDepartureInfo22 setText:v36];

  labelArrivalInfo2 = [(FUFlightInfoView *)self labelArrivalInfo2];

  arrival = [(FUFlightLeg *)self->_leg arrival];
  terminal4 = [arrival terminal];
  v41 = [terminal4 length];

  if (labelArrivalInfo2)
  {
    v77 = v23;
    v42 = v5;
    v43 = v11;
    if (v41)
    {
      v44 = *(v11 + 3240);
      arrival2 = [(FUFlightLeg *)self->_leg arrival];
      terminal5 = [arrival2 terminal];
      localizedTerminalOrGateID4 = [terminal5 localizedTerminalOrGateID];
      v41 = [v44 stringWithFormat:v80, localizedTerminalOrGateID4];
    }

    arrival3 = [(FUFlightLeg *)self->_leg arrival];
    gate4 = [arrival3 gate];
    v50 = [gate4 length];

    if (!v50)
    {
      v5 = v42;
      v23 = v77;
      goto LABEL_32;
    }

    v78 = v10;
    v51 = *(v43 + 3240);
    arrival4 = [(FUFlightLeg *)self->_leg arrival];
    gate5 = [arrival4 gate];
    localizedTerminalOrGateID5 = [gate5 localizedTerminalOrGateID];
    v55 = v42;
    v50 = [v51 stringWithFormat:v42, localizedTerminalOrGateID5];
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
    arrival5 = [(FUFlightLeg *)self->_leg arrival];
    gate6 = [arrival5 gate];
    v58 = [gate6 length];

    v59 = *(v11 + 3240);
    arrival4 = [(FUFlightLeg *)self->_leg arrival];
    gate5 = [arrival4 terminal];
    localizedTerminalOrGateID6 = [gate5 localizedTerminalOrGateID];
    localizedTerminalOrGateID5 = localizedTerminalOrGateID6;
    if (v58)
    {
      arrival6 = [(FUFlightLeg *)self->_leg arrival];
      gate7 = [arrival6 gate];
      localizedTerminalOrGateID7 = [gate7 localizedTerminalOrGateID];
      v41 = [v59 stringWithFormat:v79, localizedTerminalOrGateID5, localizedTerminalOrGateID7];
    }

    else
    {
      v41 = [v59 stringWithFormat:v80, localizedTerminalOrGateID6];
    }

    v50 = 0;
  }

  v5 = v55;
  v10 = v78;
LABEL_32:
  labelArrivalInfo1 = [(FUFlightInfoView *)self labelArrivalInfo1];
  v65 = labelArrivalInfo1;
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

  [labelArrivalInfo1 setText:v66];

  labelArrivalInfo22 = [(FUFlightInfoView *)self labelArrivalInfo2];
  [labelArrivalInfo22 setText:v67];

  labelDepartureInfo12 = [(FUFlightInfoView *)self labelDepartureInfo1];
  departureTerminalConstraint = [(FUFlightInfoView *)self departureTerminalConstraint];
  [(FUFlightInfoView *)self updateLabelVisibility:labelDepartureInfo12 constraint:departureTerminalConstraint];

  labelDepartureInfo23 = [(FUFlightInfoView *)self labelDepartureInfo2];
  departureGateConstraint = [(FUFlightInfoView *)self departureGateConstraint];
  [(FUFlightInfoView *)self updateLabelVisibility:labelDepartureInfo23 constraint:departureGateConstraint];

  labelArrivalInfo12 = [(FUFlightInfoView *)self labelArrivalInfo1];
  arrivalTerminalConstraint = [(FUFlightInfoView *)self arrivalTerminalConstraint];
  [(FUFlightInfoView *)self updateLabelVisibility:labelArrivalInfo12 constraint:arrivalTerminalConstraint];

  labelArrivalInfo23 = [(FUFlightInfoView *)self labelArrivalInfo2];
  arrivalGateConstraint = [(FUFlightInfoView *)self arrivalGateConstraint];
  [(FUFlightInfoView *)self updateLabelVisibility:labelArrivalInfo23 constraint:arrivalGateConstraint];
}

- (void)addDateTimeAttributesToString:(id)string striked:(BOOL)striked alignment:(int64_t)alignment
{
  strikedCopy = striked;
  stringCopy = string;
  string = [stringCopy string];
  v8 = [string length];

  if (strikedCopy)
  {
    [stringCopy addAttribute:*MEMORY[0x277D74150] value:&unk_285EAB620 range:{0, v8}];
  }

  defaultParagraphStyle = [MEMORY[0x277D74248] defaultParagraphStyle];
  v10 = [defaultParagraphStyle mutableCopy];

  [v10 setAlignment:alignment];
  [stringCopy addAttribute:*MEMORY[0x277D74118] value:v10 range:{0, v8}];
}

- (void)updateDateTimeForDeparture:(BOOL)departure
{
  if (departure)
  {
    labelDepartureDate = [(FUFlightInfoView *)self labelDepartureDate];
    labelDepartureTime = [(FUFlightInfoView *)self labelDepartureTime];
    departure = [(FUFlightLeg *)self->_leg departure];
    time = [departure time];
    date = [time date];

    [(FUFlightLeg *)self->_leg departure];
  }

  else
  {
    labelDepartureDate = [(FUFlightInfoView *)self labelArrivalDate];
    labelDepartureTime = [(FUFlightInfoView *)self labelArrivalTime];
    arrival = [(FUFlightLeg *)self->_leg arrival];
    time2 = [arrival time];
    date = [time2 date];

    [(FUFlightLeg *)self->_leg arrival];
  }
  v9 = ;
  airport = [v9 airport];
  timeZone = [airport timeZone];

  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  v12 = currentLocale;
  v13 = updateDateTimeForDeparture__sLocaleIdentifier;
  if (!updateDateTimeForDeparture__sLocaleIdentifier || !currentLocale || ([currentLocale localeIdentifier], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v13, "isEqualToString:", v14), v14, (v15 & 1) == 0))
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

    localeIdentifier = [v12 localeIdentifier];
    v21 = updateDateTimeForDeparture__sLocaleIdentifier;
    updateDateTimeForDeparture__sLocaleIdentifier = localeIdentifier;

    v22 = updateDateTimeForDeparture__sTimeFormatter;
    if (labelDepartureTime)
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

  [updateDateTimeForDeparture__sDateFormatter setTimeZone:timeZone];
  [updateDateTimeForDeparture__sTimeFormatter setTimeZone:timeZone];
  v27 = date;
  v28 = [updateDateTimeForDeparture__sTimeFormatter stringFromDate:date];
  v53 = [updateDateTimeForDeparture__sDateFormatter stringFromDate:date];
  v29 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:v53];
  v54 = v28;
  v30 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:v28];
  status = [(FUFlightLeg *)self->_leg status];
  v32 = labelDepartureDate;
  if (status)
  {
    if (status == 1)
    {
      if (departure)
      {
        departure2 = [(FUFlightLeg *)self->_leg departure];
LABEL_23:
        v34 = departure2;
        if ([departure2 status] == 4)
        {
          v35 = *MEMORY[0x277D740C0];
          orangeColor = [(FUStyleProvider *)self->_styleProvider orangeColor];
          [v30 addAttribute:v35 value:orangeColor range:{0, objc_msgSend(v54, "length")}];
        }

        v32 = labelDepartureDate;
        goto LABEL_26;
      }
    }

    else if (status == 6 || departure)
    {
      goto LABEL_26;
    }

    departure2 = [(FUFlightLeg *)self->_leg arrival];
    goto LABEL_23;
  }

LABEL_26:
  font = [v32 font];
  v38 = 2 * ([*MEMORY[0x277D76620] userInterfaceLayoutDirection] != 1);
  status2 = [(FUFlightLeg *)self->_leg status];
  v40 = labelDepartureTime;
  if (labelDepartureTime)
  {
    v41 = status2 == 6;
    [(FUFlightInfoView *)self addDateTimeAttributesToString:v29 striked:v41 alignment:v38];
    [(FUFlightInfoView *)self addDateTimeAttributesToString:v30 striked:v41 alignment:v38];
    v43 = v53;
    v42 = v54;
    if (font)
    {
      v44 = *MEMORY[0x277D740A8];
      [v29 addAttribute:*MEMORY[0x277D740A8] value:font range:{0, objc_msgSend(v53, "length")}];
      [v30 addAttribute:v44 value:font range:{0, objc_msgSend(v54, "length")}];
    }

    [labelDepartureDate setAttributedText:v29];
    [labelDepartureTime setAttributedText:v30];
  }

  else
  {
    v52 = status2 == 6;
    v45 = v29;
    v46 = objc_alloc(MEMORY[0x277CCA898]);
    v47 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v48 = [v47 localizedStringForKey:@" at " value:@" at " table:@"Localizable"];
    v49 = [v46 initWithString:v48];
    [v45 appendAttributedString:v49];

    [v45 appendAttributedString:v30];
    [(FUFlightInfoView *)self addDateTimeAttributesToString:v45 striked:v52 alignment:v38];
    if (font)
    {
      v50 = *MEMORY[0x277D740A8];
      string = [v45 string];
      [v45 addAttribute:v50 value:font range:{0, objc_msgSend(string, "length")}];
    }

    [labelDepartureDate setAttributedText:v45];

    v40 = 0;
    v42 = v54;
    v27 = date;
    v43 = v53;
  }
}

- (void)updateFlightDates
{
  v4 = 1;
  [(FUFlightInfoView *)self updateDateTimeForDeparture:1];
  [(FUFlightInfoView *)self updateDateTimeForDeparture:0];
  status = [(FUFlightLeg *)self->_leg status];
  v6 = status;
  if (status)
  {
    v7 = status == 6;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    departure = [(FUFlightLeg *)self->_leg departure];
    status = [departure delayFromSchedule];
    v4 = status == 0;
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
    labelDepartureTitle = [(FUFlightInfoView *)self labelDepartureTitle];
    [labelDepartureTitle setText:v10];

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

  departure2 = [(FUFlightLeg *)self->_leg departure];
  time = [departure2 time];
  [time timeIntervalSinceNow];
  v19 = v18;

  if (v19 >= 0.0)
  {
    departure3 = [(FUFlightLeg *)self->_leg departure];
    status2 = [departure3 status];

    if (status2 == 4)
    {
      v25 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v26 = v25;
      v27 = @"Delayed";
    }

    else
    {
      departure4 = [(FUFlightLeg *)self->_leg departure];
      status3 = [departure4 status];

      v25 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v26 = v25;
      if (status3 == 2)
      {
        v27 = @"Departing early";
      }

      else
      {
        v27 = @"Departing";
      }
    }

    v30 = [v25 localizedStringForKey:v27 value:v27 table:@"Localizable"];
    labelDepartureTitle2 = [(FUFlightInfoView *)self labelDepartureTitle];
    [labelDepartureTitle2 setText:v30];
  }

  else
  {
LABEL_15:
    v20 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v21 = [v20 localizedStringForKey:@"Departed" value:@"Departed" table:@"Localizable"];
    labelDepartureTitle3 = [(FUFlightInfoView *)self labelDepartureTitle];
    [labelDepartureTitle3 setText:v21];

    if ((v6 & 0xFFFFFFFFFFFFFFFELL) == 4)
    {
      goto LABEL_24;
    }
  }

  arrival = [(FUFlightLeg *)self->_leg arrival];
  time2 = [arrival time];
  [time2 timeIntervalSinceNow];
  v35 = v34;

  if (v35 >= 0.0)
  {
    arrival2 = [(FUFlightLeg *)self->_leg arrival];
    status4 = [arrival2 status];

    if (status4 == 4)
    {
      v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v13 = v12;
      v14 = @"Arriving late";
    }

    else
    {
      arrival3 = [(FUFlightLeg *)self->_leg arrival];
      status5 = [arrival3 status];

      v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v13 = v12;
      if (status5 == 2)
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
  labelArrivalTitle = [(FUFlightInfoView *)self labelArrivalTitle];
  [labelArrivalTitle setText:v36];

  if ((v6 & 0xFFFFFFFFFFFFFFFELL) != 2)
  {
    goto LABEL_32;
  }

  departure5 = [(FUFlightLeg *)self->_leg departure];
  taxiing = [departure5 taxiing];

  if (taxiing)
  {
    labelDepartureTitle4 = [(FUFlightInfoView *)self labelDepartureTitle];
    v41 = @"DEPARTURE_RUNWAY";
  }

  else
  {
    arrival4 = [(FUFlightLeg *)self->_leg arrival];
    taxiing2 = [arrival4 taxiing];

    if (!taxiing2)
    {
      goto LABEL_32;
    }

    labelDepartureTitle4 = [(FUFlightInfoView *)self labelArrivalTitle];
    v41 = @"ARRIVAL_RUNWAY";
  }

  text = [labelDepartureTitle4 text];
  v45 = MEMORY[0x277CCACA8];
  v46 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v47 = [v46 localizedStringForKey:v41 value:@"Runway" table:@"Localizable"];
  v48 = [v45 localizedStringWithFormat:@" (%@)", v47];
  v49 = [text stringByAppendingString:v48];
  [labelDepartureTitle4 setText:v49];

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
  labelDurationComplete = [(FUFlightInfoView *)self labelDurationComplete];

  if (labelDurationComplete)
  {
    v53 = MEMORY[0x277CCACA8];
    labelDurationValue = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v55 = [labelDurationValue localizedStringForKey:@"Duration: %@" value:@"Duration: %@" table:@"Localizable"];
    v56 = [v53 stringWithFormat:v55, v72];
    labelDurationComplete2 = [(FUFlightInfoView *)self labelDurationComplete];
    [labelDurationComplete2 setText:v56];
  }

  else
  {
    v58 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v59 = [v58 localizedStringForKey:@"Duration" value:@"Duration" table:@"Localizable"];
    labelDurationTitle = [(FUFlightInfoView *)self labelDurationTitle];
    [labelDurationTitle setText:v59];

    labelDurationValue = [(FUFlightInfoView *)self labelDurationValue];
    [labelDurationValue setText:v72];
  }

  v61 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v62 = [v61 localizedStringForKey:@"Baggage Claim" value:@"Baggage Claim" table:@"Localizable"];
  labelBaggageClaimTitle = [(FUFlightInfoView *)self labelBaggageClaimTitle];
  [labelBaggageClaimTitle setText:v62];

  baggageClaim = [(FUFlightLeg *)self->_leg baggageClaim];
  v65 = [baggageClaim length];
  if (v65)
  {
    baggageClaim2 = [(FUFlightLeg *)self->_leg baggageClaim];
  }

  else
  {
    baggageClaim2 = @"–";
  }

  labelBaggageClaimValue = [(FUFlightInfoView *)self labelBaggageClaimValue];
  [labelBaggageClaimValue setText:baggageClaim2];

  if (v65)
  {
  }
}

- (void)updateFlightStatus
{
  status = [(FUFlightLeg *)self->_leg status];
  v5 = status;
  if (status > 4)
  {
    if (status == 5)
    {
      v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v7 = v6;
      v8 = @"Diverted";
      goto LABEL_19;
    }

    if (status == 6)
    {
      v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v43 = [v9 localizedStringForKey:@"Canceled" value:@"Canceled" table:@"Localizable"];

      redColor = [(FUStyleProvider *)self->_styleProvider redColor];
LABEL_20:
      blueColor = redColor;
      goto LABEL_21;
    }
  }

  else
  {
    if (status == 1)
    {
      departure = [(FUFlightLeg *)self->_leg departure];
      status2 = [departure status];

      if (status2 != 4)
      {
        departure2 = [(FUFlightLeg *)self->_leg departure];
        delayFromSchedule = [departure2 delayFromSchedule];

        v28 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v29 = v28;
        if (delayFromSchedule)
        {
          v43 = [v28 localizedStringForKey:@"On time" value:@"On time" table:@"Localizable"];

          [(FUStyleProvider *)self->_styleProvider greenColor];
        }

        else
        {
          v43 = [v28 localizedStringForKey:@"Scheduled" value:@"Scheduled" table:@"Localizable"];

          [(FUStyleProvider *)self->_styleProvider primaryTextColor];
        }
        redColor = ;
        goto LABEL_20;
      }

      v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v7 = v6;
      v8 = @"Delayed";
      goto LABEL_19;
    }

    if (status == 3)
    {
      v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v7 = v6;
      v8 = @"Redirected";
LABEL_19:
      v43 = [v6 localizedStringForKey:v8 value:v8 table:@"Localizable"];

      redColor = [(FUStyleProvider *)self->_styleProvider orangeColor];
      goto LABEL_20;
    }
  }

  if (status != 4 && status != 2)
  {
    blueColor = [(FUStyleProvider *)self->_styleProvider blueColor];
    v43 = &stru_285EA8C70;
    goto LABEL_21;
  }

  if (status == 2 && (-[FUFlightLeg departure](self->_leg, "departure"), v2 = objc_claimAutoreleasedReturnValue(), [v2 taxiing]))
  {
    departure3 = [(FUFlightLeg *)self->_leg departure];
    status3 = [departure3 status];
  }

  else
  {
    arrival = [(FUFlightLeg *)self->_leg arrival];
    status3 = [arrival status];

    if (v5 != 2)
    {
      goto LABEL_29;
    }
  }

LABEL_29:
  v22 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v23 = v22;
  if (status3 == 2)
  {
    v31 = @"Early";
LABEL_37:
    v24 = [v22 localizedStringForKey:v31 value:v31 table:@"Localizable"];

    greenColor = [(FUStyleProvider *)self->_styleProvider greenColor];
    goto LABEL_38;
  }

  if (status3 != 4)
  {
    v31 = @"On time";
    goto LABEL_37;
  }

  v24 = [v22 localizedStringForKey:@"Late" value:@"Late" table:@"Localizable"];

  greenColor = [(FUStyleProvider *)self->_styleProvider orangeColor];
LABEL_38:
  blueColor = greenColor;
  if (v5 == 4)
  {
    v32 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v33 = v32;
    v34 = @"Arrived";
  }

  else
  {
    arrival2 = [(FUFlightLeg *)self->_leg arrival];
    taxiing = [arrival2 taxiing];

    if (taxiing)
    {
      v32 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v33 = v32;
      v34 = @"Landed";
    }

    else
    {
      departure4 = [(FUFlightLeg *)self->_leg departure];
      taxiing2 = [departure4 taxiing];

      v32 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v33 = v32;
      if (taxiing2)
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
  labelStatus = [(FUFlightInfoView *)self labelStatus];
  [labelStatus setText:v43];

  labelStatus2 = [(FUFlightInfoView *)self labelStatus];
  [labelStatus2 setTextColor:blueColor];

  if (([(__CFString *)v43 isEqualToString:&stru_285EA8C70]& 1) != 0)
  {
    labelStatusTitle = [(FUFlightInfoView *)self labelStatusTitle];
    [labelStatusTitle setText:&stru_285EA8C70];
  }

  else
  {
    labelStatusTitle = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v19 = [labelStatusTitle localizedStringForKey:@"Status" value:@"Status" table:@"Localizable"];
    labelStatusTitle2 = [(FUFlightInfoView *)self labelStatusTitle];
    [labelStatusTitle2 setText:v19];
  }
}

- (void)flightButtonTapped:(id)tapped
{
  [(FUFlightInfoView *)self setCurrentFocus:2];
  delegate = [(FUFlightInfoView *)self delegate];
  [delegate flightInfoView:self didUpdateFocus:2];
}

- (void)updateLabelVisibility:(id)visibility constraint:(id)constraint
{
  constraintCopy = constraint;
  text = [visibility text];
  [constraintCopy setActive:{objc_msgSend(text, "length") != 0}];
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