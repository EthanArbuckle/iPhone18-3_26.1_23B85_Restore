@interface NWCHourlyForecastView
+ (void)initialize;
- (NWCHourlyForecastView)initWithDevice:(id)device;
- (void)_applyConstraintsWithConstants:(id)constants;
- (void)_applyDate:(id)date timeZone:(id)zone;
- (void)applyNonAccentFilters:(id)filters;
- (void)applySimpleEntryModel:(id)model;
@end

@implementation NWCHourlyForecastView

+ (void)initialize
{
  if (initialize_onceToken != -1)
  {
    +[NWCHourlyForecastView initialize];
  }
}

void __35__NWCHourlyForecastView_initialize__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"FE1BCD7B-63A2-4EB3-9EF5-D6A9E506101E"];
  v1 = GossamerCapability;
  GossamerCapability = v0;

  v2 = objc_alloc_init(MEMORY[0x277CCA968]);
  v3 = DateFormatter;
  DateFormatter = v2;

  v4 = objc_opt_new();
  [v4 setDateFormat:@"yyyy-MM-dd'T'HH:mm:ssZ"];
  v5 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:@"en_US_POSIX"];
  [v4 setLocale:v5];

  v6 = [MEMORY[0x277CBEBB0] timeZoneForSecondsFromGMT:0];
  [v4 setTimeZone:v6];

  v7 = FixedDateFormatter;
  FixedDateFormatter = v4;
}

- (NWCHourlyForecastView)initWithDevice:(id)device
{
  deviceCopy = device;
  v35.receiver = self;
  v35.super_class = NWCHourlyForecastView;
  v6 = [(NWCHourlyForecastView *)&v35 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  if (v6)
  {
    currentDevice = [MEMORY[0x277CBBAE8] currentDevice];
    ___LayoutConstants_block_invoke(currentDevice, currentDevice);
    v8 = *&_LayoutConstants_constants_0;
    v9 = *&_LayoutConstants_constants_1;
    v10 = *&_LayoutConstants_constants_2;
    v11 = *&_LayoutConstants_constants_3;

    objc_storeStrong(&v6->_device, device);
    LOBYTE(currentDevice) = [deviceCopy supportsCapability:GossamerCapability];
    v12 = objc_opt_new();
    v13 = *MEMORY[0x277D74420];
    v14 = MEMORY[0x277CBB6C0];
    v15 = [MEMORY[0x277CBBB08] systemFontOfSize:*MEMORY[0x277CBB6C0] weight:v8 design:*MEMORY[0x277D74420]];
    [(UILabel *)v12 setFont:v15];

    [(UILabel *)v12 setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v16) = 1144750080;
    [(UILabel *)v12 setContentHuggingPriority:0 forAxis:v16];
    LODWORD(v17) = 1148846080;
    [(UILabel *)v12 setContentCompressionResistancePriority:0 forAxis:v17];
    if (currentDevice)
    {
      [MEMORY[0x277D75348] whiteColor];
    }

    else
    {
      +[NWCColor systemGrayTextColor];
    }
    v18 = ;
    [(UILabel *)v12 setTextColor:v18];

    topLabel = v6->_topLabel;
    v6->_topLabel = v12;

    [(NWCHourlyForecastView *)v6 addSubview:v6->_topLabel];
    v20 = objc_opt_new();
    [(UIImageView *)v20 setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v21) = 1144750080;
    [(UIImageView *)v20 setContentHuggingPriority:0 forAxis:v21];
    LODWORD(v22) = 1148846080;
    [(UIImageView *)v20 setContentCompressionResistancePriority:0 forAxis:v22];
    LODWORD(v23) = 1144750080;
    [(UIImageView *)v20 setContentHuggingPriority:1 forAxis:v23];
    LODWORD(v24) = 1148846080;
    [(UIImageView *)v20 setContentCompressionResistancePriority:1 forAxis:v24];
    [(UIImageView *)v20 setContentMode:4];
    middleImageView = v6->_middleImageView;
    v6->_middleImageView = v20;

    [(NWCHourlyForecastView *)v6 addSubview:v6->_middleImageView];
    v26 = objc_opt_new();
    [(UILabel *)v26 setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v27) = 1144750080;
    [(UILabel *)v26 setContentHuggingPriority:0 forAxis:v27];
    LODWORD(v28) = 1148846080;
    [(UILabel *)v26 setContentCompressionResistancePriority:0 forAxis:v28];
    middleLabel = v6->_middleLabel;
    v6->_middleLabel = v26;

    [(NWCHourlyForecastView *)v6 addSubview:v6->_middleLabel];
    v30 = objc_opt_new();
    [(UILabel *)v30 setAdjustsFontSizeToFitWidth:1];
    v31 = [MEMORY[0x277CBBB08] systemFontOfSize:*v14 weight:v10 design:v13];
    [(UILabel *)v30 setFont:v31];

    [(UILabel *)v30 setMinimumScaleFactor:0.7];
    [(UILabel *)v30 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v30 setTextAlignment:1];
    v32 = +[NWCColor systemGrayTextColor];
    [(UILabel *)v30 setTextColor:v32];

    timeLabel = v6->_timeLabel;
    v6->_timeLabel = v30;

    [(NWCHourlyForecastView *)v6 addSubview:v6->_timeLabel];
    [(NWCHourlyForecastView *)v6 _applyConstraintsWithConstants:v8, v9, v10, v11];
  }

  return v6;
}

- (void)applySimpleEntryModel:(id)model
{
  modelCopy = model;
  bottomString = [modelCopy bottomString];

  if (bottomString)
  {
    v5 = FixedDateFormatter;
    bottomString2 = [modelCopy bottomString];
    bottomString = [v5 dateFromString:bottomString2];
  }

  timeZone = [modelCopy timeZone];
  [(NWCHourlyForecastView *)self _applyDate:bottomString timeZone:timeZone];
}

- (void)_applyDate:(id)date timeZone:(id)zone
{
  dateCopy = date;
  zoneCopy = zone;
  if (dateCopy)
  {
    if (_applyDate_timeZone__onceToken != -1)
    {
      [NWCHourlyForecastView _applyDate:timeZone:];
    }

    currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
    timeLabel4 = _applyDate_timeZone__RegularFormatTemplate;
    v9 = _applyDate_timeZone__SpecialFormatLanguages;
    languageCode = [currentLocale languageCode];
    LODWORD(v9) = [v9 containsObject:languageCode];

    if (v9)
    {
      v11 = _applyDate_timeZone__SpecialFormatTemplate;

      timeLabel4 = v11;
    }

    v12 = [MEMORY[0x277CCA968] dateFormatFromTemplate:timeLabel4 options:0 locale:currentLocale];
    [DateFormatter setDateFormat:v12];

    [DateFormatter setTimeZone:zoneCopy];
    v13 = [DateFormatter stringFromDate:dateCopy];
    languageCode2 = [currentLocale languageCode];
    v15 = [@"hi" isEqualToString:languageCode2];

    if ((v15 & 1) == 0)
    {
      v16 = [v13 stringByReplacingOccurrencesOfString:@" " withString:&stru_286CFFA48];

      v13 = v16;
    }

    v17 = [v13 uppercaseStringWithLocale:currentLocale];
    timeLabel = [(NWCHourlyForecastView *)self timeLabel];
    [timeLabel setText:v17];

    device = [(NWCHourlyForecastView *)self device];
    LODWORD(timeLabel) = [device supportsCapability:GossamerCapability];

    if (timeLabel)
    {
      v20 = +[NWCColor systemGrayTextColor];
      timeLabel2 = [(NWCHourlyForecastView *)self timeLabel];
      [timeLabel2 setTextColor:v20];
    }
  }

  else
  {
    v22 = NWCLocalizedString(@"TIME_NOW");
    timeLabel3 = [(NWCHourlyForecastView *)self timeLabel];
    [timeLabel3 setText:v22];

    device2 = [(NWCHourlyForecastView *)self device];
    LODWORD(timeLabel3) = [device2 supportsCapability:GossamerCapability];

    if (!timeLabel3)
    {
      goto LABEL_14;
    }

    currentLocale = [MEMORY[0x277D75348] whiteColor];
    timeLabel4 = [(NWCHourlyForecastView *)self timeLabel];
    [timeLabel4 setTextColor:currentLocale];
  }

LABEL_14:
}

uint64_t __45__NWCHourlyForecastView__applyDate_timeZone___block_invoke()
{
  v0 = _applyDate_timeZone__RegularFormatTemplate;
  _applyDate_timeZone__RegularFormatTemplate = @"j";

  v1 = _applyDate_timeZone__SpecialFormatTemplate;
  _applyDate_timeZone__SpecialFormatTemplate = @"J";

  _applyDate_timeZone__SpecialFormatLanguages = [MEMORY[0x277CBEB98] setWithObject:@"zh"];

  return MEMORY[0x2821F96F8]();
}

- (void)applyNonAccentFilters:(id)filters
{
  filtersCopy = filters;
  middleLabel = [(NWCHourlyForecastView *)self middleLabel];
  layer = [middleLabel layer];
  [layer setFilters:filtersCopy];
}

- (void)_applyConstraintsWithConstants:(id)constants
{
  var3 = constants.var3;
  var1 = constants.var1;
  v83[15] = *MEMORY[0x277D85DE8];
  v82 = [(NWCHourlyForecastView *)self middleImageView:constants.var0];
  centerXAnchor = [v82 centerXAnchor];
  centerXAnchor2 = [(NWCHourlyForecastView *)self centerXAnchor];
  v79 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v83[0] = v79;
  middleImageView = [(NWCHourlyForecastView *)self middleImageView];
  leadingAnchor = [middleImageView leadingAnchor];
  leadingAnchor2 = [(NWCHourlyForecastView *)self leadingAnchor];
  v9 = [leadingAnchor constraintGreaterThanOrEqualToAnchor:leadingAnchor2 constant:var3];

  v78 = v9;
  LODWORD(v10) = 1144750080;
  [v9 setPriority:v10];
  v83[1] = v9;
  trailingAnchor = [(NWCHourlyForecastView *)self trailingAnchor];
  middleImageView2 = [(NWCHourlyForecastView *)self middleImageView];
  trailingAnchor2 = [middleImageView2 trailingAnchor];
  v14 = [trailingAnchor constraintGreaterThanOrEqualToAnchor:trailingAnchor2 constant:var3];

  v77 = v14;
  LODWORD(v15) = 1144750080;
  [v14 setPriority:v15];
  v83[2] = v14;
  middleImageView3 = [(NWCHourlyForecastView *)self middleImageView];
  centerYAnchor = [middleImageView3 centerYAnchor];
  centerYAnchor2 = [(NWCHourlyForecastView *)self centerYAnchor];
  v73 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v83[3] = v73;
  middleLabel = [(NWCHourlyForecastView *)self middleLabel];
  centerXAnchor3 = [middleLabel centerXAnchor];
  middleImageView4 = [(NWCHourlyForecastView *)self middleImageView];
  centerXAnchor4 = [middleImageView4 centerXAnchor];
  v68 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
  v83[4] = v68;
  middleLabel2 = [(NWCHourlyForecastView *)self middleLabel];
  leadingAnchor3 = [middleLabel2 leadingAnchor];
  leadingAnchor4 = [(NWCHourlyForecastView *)self leadingAnchor];
  v19 = [leadingAnchor3 constraintGreaterThanOrEqualToAnchor:leadingAnchor4 constant:var3];

  v67 = v19;
  LODWORD(v20) = 1144750080;
  [v19 setPriority:v20];
  v83[5] = v19;
  trailingAnchor3 = [(NWCHourlyForecastView *)self trailingAnchor];
  middleLabel3 = [(NWCHourlyForecastView *)self middleLabel];
  trailingAnchor4 = [middleLabel3 trailingAnchor];
  v24 = [trailingAnchor3 constraintGreaterThanOrEqualToAnchor:trailingAnchor4 constant:var3];

  v66 = v24;
  LODWORD(v25) = 1144750080;
  [v24 setPriority:v25];
  v83[6] = v24;
  middleLabel4 = [(NWCHourlyForecastView *)self middleLabel];
  centerYAnchor3 = [middleLabel4 centerYAnchor];
  middleImageView5 = [(NWCHourlyForecastView *)self middleImageView];
  centerYAnchor4 = [middleImageView5 centerYAnchor];
  v61 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
  v83[7] = v61;
  topLabel = [(NWCHourlyForecastView *)self topLabel];
  centerXAnchor5 = [topLabel centerXAnchor];
  middleImageView6 = [(NWCHourlyForecastView *)self middleImageView];
  centerXAnchor6 = [middleImageView6 centerXAnchor];
  v56 = [centerXAnchor5 constraintEqualToAnchor:centerXAnchor6];
  v83[8] = v56;
  topLabel2 = [(NWCHourlyForecastView *)self topLabel];
  leadingAnchor5 = [topLabel2 leadingAnchor];
  leadingAnchor6 = [(NWCHourlyForecastView *)self leadingAnchor];
  v29 = [leadingAnchor5 constraintGreaterThanOrEqualToAnchor:leadingAnchor6 constant:var3];

  v55 = v29;
  LODWORD(v30) = 1144750080;
  [v29 setPriority:v30];
  v83[9] = v29;
  trailingAnchor5 = [(NWCHourlyForecastView *)self trailingAnchor];
  topLabel3 = [(NWCHourlyForecastView *)self topLabel];
  trailingAnchor6 = [topLabel3 trailingAnchor];
  v34 = [trailingAnchor5 constraintGreaterThanOrEqualToAnchor:trailingAnchor6 constant:var3];

  v53 = v34;
  LODWORD(v35) = 1144750080;
  [v34 setPriority:v35];
  v83[10] = v34;
  topLabel4 = [(NWCHourlyForecastView *)self topLabel];
  firstBaselineAnchor = [topLabel4 firstBaselineAnchor];
  topAnchor = [(NWCHourlyForecastView *)self topAnchor];
  v49 = [firstBaselineAnchor constraintEqualToAnchor:topAnchor constant:var1];
  v83[11] = v49;
  timeLabel = [(NWCHourlyForecastView *)self timeLabel];
  leadingAnchor7 = [timeLabel leadingAnchor];
  leadingAnchor8 = [(NWCHourlyForecastView *)self leadingAnchor];
  v37 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8 constant:var3];
  v83[12] = v37;
  trailingAnchor7 = [(NWCHourlyForecastView *)self trailingAnchor];
  timeLabel2 = [(NWCHourlyForecastView *)self timeLabel];
  trailingAnchor8 = [timeLabel2 trailingAnchor];
  v41 = [trailingAnchor7 constraintEqualToAnchor:trailingAnchor8 constant:var3];
  v83[13] = v41;
  bottomAnchor = [(NWCHourlyForecastView *)self bottomAnchor];
  timeLabel3 = [(NWCHourlyForecastView *)self timeLabel];
  firstBaselineAnchor2 = [timeLabel3 firstBaselineAnchor];
  v45 = [bottomAnchor constraintEqualToAnchor:firstBaselineAnchor2];
  v83[14] = v45;
  v54 = [MEMORY[0x277CBEA60] arrayWithObjects:v83 count:15];

  [MEMORY[0x277CCAAD0] activateConstraints:v54];
  v46 = *MEMORY[0x277D85DE8];
}

@end