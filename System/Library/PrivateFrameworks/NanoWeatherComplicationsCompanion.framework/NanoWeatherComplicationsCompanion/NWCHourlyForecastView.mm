@interface NWCHourlyForecastView
+ (void)initialize;
- (NWCHourlyForecastView)initWithDevice:(id)a3;
- (void)_applyConstraintsWithConstants:(id)a3;
- (void)_applyDate:(id)a3 timeZone:(id)a4;
- (void)applyNonAccentFilters:(id)a3;
- (void)applySimpleEntryModel:(id)a3;
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

- (NWCHourlyForecastView)initWithDevice:(id)a3
{
  v5 = a3;
  v35.receiver = self;
  v35.super_class = NWCHourlyForecastView;
  v6 = [(NWCHourlyForecastView *)&v35 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  if (v6)
  {
    v7 = [MEMORY[0x277CBBAE8] currentDevice];
    ___LayoutConstants_block_invoke(v7, v7);
    v8 = *&_LayoutConstants_constants_0;
    v9 = *&_LayoutConstants_constants_1;
    v10 = *&_LayoutConstants_constants_2;
    v11 = *&_LayoutConstants_constants_3;

    objc_storeStrong(&v6->_device, a3);
    LOBYTE(v7) = [v5 supportsCapability:GossamerCapability];
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
    if (v7)
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

- (void)applySimpleEntryModel:(id)a3
{
  v8 = a3;
  v4 = [v8 bottomString];

  if (v4)
  {
    v5 = FixedDateFormatter;
    v6 = [v8 bottomString];
    v4 = [v5 dateFromString:v6];
  }

  v7 = [v8 timeZone];
  [(NWCHourlyForecastView *)self _applyDate:v4 timeZone:v7];
}

- (void)_applyDate:(id)a3 timeZone:(id)a4
{
  v25 = a3;
  v6 = a4;
  if (v25)
  {
    if (_applyDate_timeZone__onceToken != -1)
    {
      [NWCHourlyForecastView _applyDate:timeZone:];
    }

    v7 = [MEMORY[0x277CBEAF8] currentLocale];
    v8 = _applyDate_timeZone__RegularFormatTemplate;
    v9 = _applyDate_timeZone__SpecialFormatLanguages;
    v10 = [v7 languageCode];
    LODWORD(v9) = [v9 containsObject:v10];

    if (v9)
    {
      v11 = _applyDate_timeZone__SpecialFormatTemplate;

      v8 = v11;
    }

    v12 = [MEMORY[0x277CCA968] dateFormatFromTemplate:v8 options:0 locale:v7];
    [DateFormatter setDateFormat:v12];

    [DateFormatter setTimeZone:v6];
    v13 = [DateFormatter stringFromDate:v25];
    v14 = [v7 languageCode];
    v15 = [@"hi" isEqualToString:v14];

    if ((v15 & 1) == 0)
    {
      v16 = [v13 stringByReplacingOccurrencesOfString:@" " withString:&stru_286CFFA48];

      v13 = v16;
    }

    v17 = [v13 uppercaseStringWithLocale:v7];
    v18 = [(NWCHourlyForecastView *)self timeLabel];
    [v18 setText:v17];

    v19 = [(NWCHourlyForecastView *)self device];
    LODWORD(v18) = [v19 supportsCapability:GossamerCapability];

    if (v18)
    {
      v20 = +[NWCColor systemGrayTextColor];
      v21 = [(NWCHourlyForecastView *)self timeLabel];
      [v21 setTextColor:v20];
    }
  }

  else
  {
    v22 = NWCLocalizedString(@"TIME_NOW");
    v23 = [(NWCHourlyForecastView *)self timeLabel];
    [v23 setText:v22];

    v24 = [(NWCHourlyForecastView *)self device];
    LODWORD(v23) = [v24 supportsCapability:GossamerCapability];

    if (!v23)
    {
      goto LABEL_14;
    }

    v7 = [MEMORY[0x277D75348] whiteColor];
    v8 = [(NWCHourlyForecastView *)self timeLabel];
    [v8 setTextColor:v7];
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

- (void)applyNonAccentFilters:(id)a3
{
  v4 = a3;
  v6 = [(NWCHourlyForecastView *)self middleLabel];
  v5 = [v6 layer];
  [v5 setFilters:v4];
}

- (void)_applyConstraintsWithConstants:(id)a3
{
  var3 = a3.var3;
  var1 = a3.var1;
  v83[15] = *MEMORY[0x277D85DE8];
  v82 = [(NWCHourlyForecastView *)self middleImageView:a3.var0];
  v81 = [v82 centerXAnchor];
  v80 = [(NWCHourlyForecastView *)self centerXAnchor];
  v79 = [v81 constraintEqualToAnchor:v80];
  v83[0] = v79;
  v6 = [(NWCHourlyForecastView *)self middleImageView];
  v7 = [v6 leadingAnchor];
  v8 = [(NWCHourlyForecastView *)self leadingAnchor];
  v9 = [v7 constraintGreaterThanOrEqualToAnchor:v8 constant:var3];

  v78 = v9;
  LODWORD(v10) = 1144750080;
  [v9 setPriority:v10];
  v83[1] = v9;
  v11 = [(NWCHourlyForecastView *)self trailingAnchor];
  v12 = [(NWCHourlyForecastView *)self middleImageView];
  v13 = [v12 trailingAnchor];
  v14 = [v11 constraintGreaterThanOrEqualToAnchor:v13 constant:var3];

  v77 = v14;
  LODWORD(v15) = 1144750080;
  [v14 setPriority:v15];
  v83[2] = v14;
  v76 = [(NWCHourlyForecastView *)self middleImageView];
  v75 = [v76 centerYAnchor];
  v74 = [(NWCHourlyForecastView *)self centerYAnchor];
  v73 = [v75 constraintEqualToAnchor:v74];
  v83[3] = v73;
  v72 = [(NWCHourlyForecastView *)self middleLabel];
  v70 = [v72 centerXAnchor];
  v71 = [(NWCHourlyForecastView *)self middleImageView];
  v69 = [v71 centerXAnchor];
  v68 = [v70 constraintEqualToAnchor:v69];
  v83[4] = v68;
  v16 = [(NWCHourlyForecastView *)self middleLabel];
  v17 = [v16 leadingAnchor];
  v18 = [(NWCHourlyForecastView *)self leadingAnchor];
  v19 = [v17 constraintGreaterThanOrEqualToAnchor:v18 constant:var3];

  v67 = v19;
  LODWORD(v20) = 1144750080;
  [v19 setPriority:v20];
  v83[5] = v19;
  v21 = [(NWCHourlyForecastView *)self trailingAnchor];
  v22 = [(NWCHourlyForecastView *)self middleLabel];
  v23 = [v22 trailingAnchor];
  v24 = [v21 constraintGreaterThanOrEqualToAnchor:v23 constant:var3];

  v66 = v24;
  LODWORD(v25) = 1144750080;
  [v24 setPriority:v25];
  v83[6] = v24;
  v65 = [(NWCHourlyForecastView *)self middleLabel];
  v63 = [v65 centerYAnchor];
  v64 = [(NWCHourlyForecastView *)self middleImageView];
  v62 = [v64 centerYAnchor];
  v61 = [v63 constraintEqualToAnchor:v62];
  v83[7] = v61;
  v60 = [(NWCHourlyForecastView *)self topLabel];
  v58 = [v60 centerXAnchor];
  v59 = [(NWCHourlyForecastView *)self middleImageView];
  v57 = [v59 centerXAnchor];
  v56 = [v58 constraintEqualToAnchor:v57];
  v83[8] = v56;
  v26 = [(NWCHourlyForecastView *)self topLabel];
  v27 = [v26 leadingAnchor];
  v28 = [(NWCHourlyForecastView *)self leadingAnchor];
  v29 = [v27 constraintGreaterThanOrEqualToAnchor:v28 constant:var3];

  v55 = v29;
  LODWORD(v30) = 1144750080;
  [v29 setPriority:v30];
  v83[9] = v29;
  v31 = [(NWCHourlyForecastView *)self trailingAnchor];
  v32 = [(NWCHourlyForecastView *)self topLabel];
  v33 = [v32 trailingAnchor];
  v34 = [v31 constraintGreaterThanOrEqualToAnchor:v33 constant:var3];

  v53 = v34;
  LODWORD(v35) = 1144750080;
  [v34 setPriority:v35];
  v83[10] = v34;
  v52 = [(NWCHourlyForecastView *)self topLabel];
  v51 = [v52 firstBaselineAnchor];
  v50 = [(NWCHourlyForecastView *)self topAnchor];
  v49 = [v51 constraintEqualToAnchor:v50 constant:var1];
  v83[11] = v49;
  v48 = [(NWCHourlyForecastView *)self timeLabel];
  v47 = [v48 leadingAnchor];
  v36 = [(NWCHourlyForecastView *)self leadingAnchor];
  v37 = [v47 constraintEqualToAnchor:v36 constant:var3];
  v83[12] = v37;
  v38 = [(NWCHourlyForecastView *)self trailingAnchor];
  v39 = [(NWCHourlyForecastView *)self timeLabel];
  v40 = [v39 trailingAnchor];
  v41 = [v38 constraintEqualToAnchor:v40 constant:var3];
  v83[13] = v41;
  v42 = [(NWCHourlyForecastView *)self bottomAnchor];
  v43 = [(NWCHourlyForecastView *)self timeLabel];
  v44 = [v43 firstBaselineAnchor];
  v45 = [v42 constraintEqualToAnchor:v44];
  v83[14] = v45;
  v54 = [MEMORY[0x277CBEA60] arrayWithObjects:v83 count:15];

  [MEMORY[0x277CCAAD0] activateConstraints:v54];
  v46 = *MEMORY[0x277D85DE8];
}

@end