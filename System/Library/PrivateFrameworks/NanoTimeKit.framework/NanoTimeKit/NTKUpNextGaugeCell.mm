@interface NTKUpNextGaugeCell
- (NTKUpNextGaugeCell)initWithFrame:(CGRect)a3;
- (id)backgroundColorForView:(id)a3;
- (id)colorForView:(id)a3 accented:(BOOL)a4;
- (id)filterForView:(id)a3 style:(int64_t)a4;
- (id)filterForView:(id)a3 style:(int64_t)a4 fraction:(double)a5;
- (id)filtersForView:(id)a3 style:(int64_t)a4;
- (id)filtersForView:(id)a3 style:(int64_t)a4 fraction:(double)a5;
- (void)configureWithContent:(id)a3;
- (void)prepareForReuse;
- (void)setPaused:(BOOL)a3;
- (void)transitionToMonochromeWithFraction:(double)a3;
- (void)updateMonochromeColor;
@end

@implementation NTKUpNextGaugeCell

- (NTKUpNextGaugeCell)initWithFrame:(CGRect)a3
{
  v127[20] = *MEMORY[0x277D85DE8];
  v126.receiver = self;
  v126.super_class = NTKUpNextGaugeCell;
  v3 = [(NTKUpNextBaseCell *)&v126 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v124 = 0u;
    v125 = 0u;
    v122 = 0u;
    v123 = 0u;
    v120 = 0u;
    v121 = 0u;
    v5 = [(NTKUpNextBaseCell *)v3 device];
    ___LayoutConstants_block_invoke_1(v5, &v120);

    v6 = *&v121;
    v7 = [MEMORY[0x277CBBB08] systemFontOfSize:*&v121];
    v8 = [v7 fontDescriptor];
    v9 = [v8 fontDescriptorWithSymbolicTraits:2];

    v10 = [MEMORY[0x277CBBB08] systemFontOfSize:v6 weight:*MEMORY[0x277D74410]];
    standardFont = v4->_standardFont;
    v4->_standardFont = v10;

    v119 = v9;
    v12 = [MEMORY[0x277CBBB08] fontWithDescriptor:v9 size:v6];
    boldFont = v4->_boldFont;
    v4->_boldFont = v12;

    v14 = [MEMORY[0x277CBBB08] systemFontOfSize:*&v123 weight:*MEMORY[0x277D74420]];
    semiboldFont = v4->_semiboldFont;
    v4->_semiboldFont = v14;

    v16 = [MEMORY[0x277D74240] NTKHyphenationParagraphStyle];
    [v16 setLineBreakMode:4];
    v17 = __36__NTKUpNextGaugeCell_initWithFrame___block_invoke();
    headerLabel = v4->_headerLabel;
    v4->_headerLabel = v17;

    [(CLKUIColoringLabel *)v4->_headerLabel setFont:v4->_boldFont];
    v19 = v4->_headerLabel;
    v20 = [MEMORY[0x277D75348] whiteColor];
    [(CLKUIColoringLabel *)v19 setTextColor:v20];

    [(CLKUIColoringLabel *)v4->_headerLabel setNumberOfLines:1];
    [(CLKUIColoringLabel *)v4->_headerLabel setParagraphStyle:v16];
    v21 = __36__NTKUpNextGaugeCell_initWithFrame___block_invoke();
    descriptionLine1Label = v4->_descriptionLine1Label;
    v4->_descriptionLine1Label = v21;

    v23 = v4->_descriptionLine1Label;
    v24 = [MEMORY[0x277D75348] whiteColor];
    [(CLKUIColoringLabel *)v23 setTextColor:v24];

    [(CLKUIColoringLabel *)v4->_descriptionLine1Label setFont:v4->_standardFont];
    [(CLKUIColoringLabel *)v4->_descriptionLine1Label setNumberOfLines:1];
    [(CLKUIColoringLabel *)v4->_descriptionLine1Label setParagraphStyle:v16];
    if (CLKLayoutIsRTL())
    {
      [v16 setAlignment:0];
    }

    v25 = __36__NTKUpNextGaugeCell_initWithFrame___block_invoke();
    descriptionLine2Label = v4->_descriptionLine2Label;
    v4->_descriptionLine2Label = v25;

    v27 = v4->_descriptionLine2Label;
    v28 = [MEMORY[0x277D75348] whiteColor];
    [(CLKUIColoringLabel *)v27 setTextColor:v28];

    [(CLKUIColoringLabel *)v4->_descriptionLine2Label setFont:v4->_semiboldFont];
    [(CLKUIColoringLabel *)v4->_descriptionLine2Label setNumberOfLines:1];
    [(CLKUIColoringLabel *)v4->_descriptionLine2Label setParagraphStyle:v16];
    if ((CLKLayoutIsRTL() & 1) == 0)
    {
      [v16 setAlignment:2];
    }

    v29 = __36__NTKUpNextGaugeCell_initWithFrame___block_invoke();
    descriptionLine3Label = v4->_descriptionLine3Label;
    v4->_descriptionLine3Label = v29;

    v31 = v4->_descriptionLine3Label;
    v32 = [MEMORY[0x277D75348] whiteColor];
    [(CLKUIColoringLabel *)v31 setTextColor:v32];

    [(CLKUIColoringLabel *)v4->_descriptionLine3Label setFont:v4->_semiboldFont];
    [(CLKUIColoringLabel *)v4->_descriptionLine3Label setNumberOfLines:1];
    v118 = v16;
    [(CLKUIColoringLabel *)v4->_descriptionLine3Label setParagraphStyle:v16];
    v33 = [(NTKUpNextBaseCell *)v4 device];
    v34 = [v33 sizeClass];

    if (v34 == 3)
    {
      v35 = *(&v120 + 1);
      [(CLKUIColoringLabel *)v4->_headerLabel setLineSpacing:*(&v120 + 1)];
      [(CLKUIColoringLabel *)v4->_descriptionLine1Label setLineSpacing:v35];
    }

    v36 = [NTKRichComplicationLineProgressView alloc];
    v37 = [(NTKUpNextBaseCell *)v4 device];
    v38 = [(NTKRichComplicationLineProgressView *)v36 initForFamily:10 device:v37 progressFillStyle:0];
    progressView = v4->_progressView;
    v4->_progressView = v38;

    [(NTKRichComplicationLineProgressView *)v4->_progressView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CDRichComplicationProgressView *)v4->_progressView setFilterProvider:v4];
    v40 = [(CDRichComplicationProgressView *)v4->_progressView ringView];
    v41 = [v40 layer];
    v42 = [MEMORY[0x277D75348] whiteColor];
    [v41 setBorderColor:{objc_msgSend(v42, "CGColor")}];

    v43 = objc_alloc_init(MEMORY[0x277D756D0]);
    contentLayoutGuide = v4->_contentLayoutGuide;
    v4->_contentLayoutGuide = v43;

    [(UILayoutGuide *)v4->_contentLayoutGuide setIdentifier:@"content"];
    v45 = [(NTKUpNextGaugeCell *)v4 contentView];
    [v45 addLayoutGuide:v4->_contentLayoutGuide];

    v46 = [(NTKUpNextGaugeCell *)v4 contentView];
    [v46 addSubview:v4->_headerLabel];

    v47 = [(NTKUpNextGaugeCell *)v4 contentView];
    [v47 addSubview:v4->_descriptionLine1Label];

    v48 = [(NTKUpNextGaugeCell *)v4 contentView];
    [v48 addSubview:v4->_progressView];

    v49 = [(NTKUpNextGaugeCell *)v4 contentView];
    [v49 insertSubview:v4->_descriptionLine2Label aboveSubview:v4->_progressView];

    v50 = [(NTKUpNextGaugeCell *)v4 contentView];
    [v50 insertSubview:v4->_descriptionLine3Label aboveSubview:v4->_progressView];

    v116 = [(UILayoutGuide *)v4->_contentLayoutGuide topAnchor];
    v117 = [(NTKUpNextGaugeCell *)v4 contentView];
    v115 = [v117 topAnchor];
    v114 = [v116 constraintEqualToAnchor:v115 constant:*&v124];
    v127[0] = v114;
    v112 = [(UILayoutGuide *)v4->_contentLayoutGuide bottomAnchor];
    v113 = [(NTKUpNextGaugeCell *)v4 contentView];
    v111 = [v113 bottomAnchor];
    v110 = [v112 constraintEqualToAnchor:v111 constant:-*&v125];
    v127[1] = v110;
    v108 = [(UILayoutGuide *)v4->_contentLayoutGuide leadingAnchor];
    v109 = [(NTKUpNextGaugeCell *)v4 contentView];
    v107 = [v109 leadingAnchor];
    v106 = [v108 constraintEqualToAnchor:v107 constant:*(&v124 + 1)];
    v127[2] = v106;
    v104 = [(UILayoutGuide *)v4->_contentLayoutGuide trailingAnchor];
    v105 = [(NTKUpNextGaugeCell *)v4 contentView];
    v103 = [v105 trailingAnchor];
    v102 = [v104 constraintEqualToAnchor:v103 constant:-*(&v125 + 1)];
    v127[3] = v102;
    v101 = [(CLKUIColoringLabel *)v4->_headerLabel leadingAnchor];
    v100 = [(UILayoutGuide *)v4->_contentLayoutGuide leadingAnchor];
    v99 = [v101 constraintEqualToAnchor:v100];
    v127[4] = v99;
    v98 = [(CLKUIColoringLabel *)v4->_headerLabel trailingAnchor];
    v97 = [(UILayoutGuide *)v4->_contentLayoutGuide trailingAnchor];
    v96 = [v98 constraintEqualToAnchor:v97];
    v127[5] = v96;
    v95 = [(CLKUIColoringLabel *)v4->_descriptionLine1Label leadingAnchor];
    v94 = [(UILayoutGuide *)v4->_contentLayoutGuide leadingAnchor];
    v93 = [v95 constraintEqualToAnchor:v94];
    v127[6] = v93;
    v92 = [(CLKUIColoringLabel *)v4->_descriptionLine1Label trailingAnchor];
    v91 = [(UILayoutGuide *)v4->_contentLayoutGuide trailingAnchor];
    v90 = [v92 constraintEqualToAnchor:v91];
    v127[7] = v90;
    v89 = [(NTKRichComplicationLineProgressView *)v4->_progressView leadingAnchor];
    v88 = [(UILayoutGuide *)v4->_contentLayoutGuide leadingAnchor];
    v87 = [v89 constraintEqualToAnchor:v88];
    v127[8] = v87;
    v86 = [(NTKRichComplicationLineProgressView *)v4->_progressView trailingAnchor];
    v85 = [(UILayoutGuide *)v4->_contentLayoutGuide trailingAnchor];
    v84 = [v86 constraintEqualToAnchor:v85];
    v127[9] = v84;
    v83 = [(CLKUIColoringLabel *)v4->_headerLabel firstBaselineAnchor];
    v82 = [(UILayoutGuide *)v4->_contentLayoutGuide topAnchor];
    v81 = [v83 constraintEqualToAnchor:v82 constant:*&v120];
    v127[10] = v81;
    v80 = [(CLKUIColoringLabel *)v4->_descriptionLine1Label firstBaselineAnchor];
    v79 = [(CLKUIColoringLabel *)v4->_headerLabel lastBaselineAnchor];
    v78 = [v80 constraintEqualToAnchor:v79 constant:*(&v120 + 1)];
    v127[11] = v78;
    v76 = [(NTKRichComplicationLineProgressView *)v4->_progressView bottomAnchor];
    v75 = [(UILayoutGuide *)v4->_contentLayoutGuide bottomAnchor];
    v74 = [v76 constraintEqualToAnchor:v75 constant:-*(&v121 + 1)];
    v127[12] = v74;
    v73 = [(NTKRichComplicationLineProgressView *)v4->_progressView heightAnchor];
    v72 = [v73 constraintEqualToConstant:*&v122];
    v127[13] = v72;
    v71 = [(CLKUIColoringLabel *)v4->_descriptionLine2Label centerYAnchor];
    v70 = [(NTKRichComplicationLineProgressView *)v4->_progressView centerYAnchor];
    v69 = [v71 constraintEqualToAnchor:v70];
    v127[14] = v69;
    v68 = [(CLKUIColoringLabel *)v4->_descriptionLine2Label widthAnchor];
    v67 = [(NTKRichComplicationLineProgressView *)v4->_progressView widthAnchor];
    v51 = *(&v123 + 1);
    v52 = -*(&v123 + 1);
    v66 = [v68 constraintEqualToAnchor:v67 multiplier:0.5 constant:-*(&v123 + 1)];
    v127[15] = v66;
    v65 = [(CLKUIColoringLabel *)v4->_descriptionLine2Label leadingAnchor];
    v64 = [(NTKRichComplicationLineProgressView *)v4->_progressView leadingAnchor];
    v63 = [v65 constraintEqualToAnchor:v64 constant:v51];
    v127[16] = v63;
    v53 = [(CLKUIColoringLabel *)v4->_descriptionLine3Label centerYAnchor];
    v54 = [(NTKRichComplicationLineProgressView *)v4->_progressView centerYAnchor];
    v55 = [v53 constraintEqualToAnchor:v54];
    v127[17] = v55;
    v56 = [(CLKUIColoringLabel *)v4->_descriptionLine3Label widthAnchor];
    v57 = [(NTKRichComplicationLineProgressView *)v4->_progressView widthAnchor];
    v58 = [v56 constraintEqualToAnchor:v57 multiplier:0.5 constant:v52];
    v127[18] = v58;
    v59 = [(CLKUIColoringLabel *)v4->_descriptionLine3Label trailingAnchor];
    v60 = [(NTKRichComplicationLineProgressView *)v4->_progressView trailingAnchor];
    v61 = [v59 constraintEqualToAnchor:v60 constant:v52];
    v127[19] = v61;
    v77 = [MEMORY[0x277CBEA60] arrayWithObjects:v127 count:20];

    [MEMORY[0x277CCAAD0] activateConstraints:v77];
  }

  return v4;
}

id __36__NTKUpNextGaugeCell_initWithFrame___block_invoke()
{
  v0 = [off_27877BEF8 alloc];
  v1 = [v0 initWithFrame:4 options:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v1 setLineBreakMode:4];
  [v1 _setUseShortcutIntrinsicContentSize:1];
  [v1 setNowProvider:&__block_literal_global_4];

  return v1;
}

- (void)configureWithContent:(id)a3
{
  v18.receiver = self;
  v18.super_class = NTKUpNextGaugeCell;
  v4 = a3;
  [(NTKUpNextBaseCell *)&v18 configureWithContent:v4];
  [NTKUpNextBaseCell clearLabel:self->_headerLabel, v18.receiver, v18.super_class];
  headerLabel = self->_headerLabel;
  v6 = [v4 headerTextProvider];
  [(CLKUIColoringLabel *)headerLabel setTextProvider:v6];

  [NTKUpNextBaseCell clearLabel:self->_descriptionLine1Label];
  descriptionLine1Label = self->_descriptionLine1Label;
  v8 = [v4 description1TextProvider];
  [(CLKUIColoringLabel *)descriptionLine1Label setTextProvider:v8];

  [NTKUpNextBaseCell clearLabel:self->_descriptionLine2Label];
  descriptionLine2Label = self->_descriptionLine2Label;
  v10 = [v4 description2TextProvider];
  [(CLKUIColoringLabel *)descriptionLine2Label setTextProvider:v10];

  [NTKUpNextBaseCell clearLabel:self->_descriptionLine3Label];
  descriptionLine3Label = self->_descriptionLine3Label;
  v12 = [v4 description3TextProvider];
  [(CLKUIColoringLabel *)descriptionLine3Label setTextProvider:v12];

  v13 = [v4 gaugeProvider];
  [(CDRichComplicationProgressView *)self->_progressView setGaugeProvider:v13];
  [(NTKRichComplicationLineProgressView *)self->_progressView setHidden:v13 == 0];
  [(CLKUIColoringLabel *)self->_descriptionLine2Label setHidden:v13 == 0];
  [(CLKUIColoringLabel *)self->_descriptionLine3Label setHidden:v13 == 0];
  v14 = [v4 headerTextProvider];
  [v14 setPaused:{-[NTKUpNextBaseCell isPaused](self, "isPaused")}];

  v15 = [v4 description1TextProvider];
  [v15 setPaused:{-[NTKUpNextBaseCell isPaused](self, "isPaused")}];

  v16 = [v4 description2TextProvider];
  [v16 setPaused:{-[NTKUpNextBaseCell isPaused](self, "isPaused")}];

  v17 = [v4 description3TextProvider];

  [v17 setPaused:{-[NTKUpNextBaseCell isPaused](self, "isPaused")}];
}

- (void)setPaused:(BOOL)a3
{
  v3 = a3;
  v9.receiver = self;
  v9.super_class = NTKUpNextGaugeCell;
  [(NTKUpNextBaseCell *)&v9 setPaused:?];
  v5 = [(CLKUIColoringLabel *)self->_headerLabel textProvider];
  [v5 setPaused:v3];

  v6 = [(CLKUIColoringLabel *)self->_descriptionLine1Label textProvider];
  [v6 setPaused:v3];

  v7 = [(CLKUIColoringLabel *)self->_descriptionLine2Label textProvider];
  [v7 setPaused:v3];

  v8 = [(CLKUIColoringLabel *)self->_descriptionLine3Label textProvider];
  [v8 setPaused:v3];
}

- (id)filtersForView:(id)a3 style:(int64_t)a4 fraction:(double)a5
{
  v8 = a3;
  v9 = [(NTKUpNextBaseCell *)self filterProvider];
  v10 = [v9 filtersForView:v8 style:a4 fraction:a5];

  return v10;
}

- (id)filtersForView:(id)a3 style:(int64_t)a4
{
  v6 = a3;
  v7 = [(NTKUpNextBaseCell *)self filterProvider];
  v8 = [v7 filtersForView:v6 style:a4];

  return v8;
}

- (id)filterForView:(id)a3 style:(int64_t)a4 fraction:(double)a5
{
  v8 = a3;
  v9 = [(NTKUpNextBaseCell *)self filterProvider];
  v10 = [v9 filterForView:v8 style:a4 fraction:a5];

  return v10;
}

- (id)filterForView:(id)a3 style:(int64_t)a4
{
  v6 = a3;
  v7 = [(NTKUpNextBaseCell *)self filterProvider];
  v8 = [v7 filterForView:v6 style:a4];

  return v8;
}

- (id)colorForView:(id)a3 accented:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(NTKUpNextBaseCell *)self filterProvider];
  v8 = [v7 colorForView:v6 accented:v4];

  return v8;
}

- (id)backgroundColorForView:(id)a3
{
  v4 = a3;
  v5 = [(NTKUpNextBaseCell *)self filterProvider];
  v6 = [v5 backgroundColorForView:v4];

  return v6;
}

- (void)prepareForReuse
{
  v5.receiver = self;
  v5.super_class = NTKUpNextGaugeCell;
  [(NTKUpNextBaseCell *)&v5 prepareForReuse];
  [(CDRichComplicationProgressView *)self->_progressView transitionToMonochromeWithFraction:0.0];
  v3 = [(CLKUIColoringLabel *)self->_headerLabel layer];
  [v3 setFilters:0];

  v4 = [(CLKUIColoringLabel *)self->_descriptionLine1Label layer];
  [v4 setFilters:0];
}

- (void)transitionToMonochromeWithFraction:(double)a3
{
  [(CDRichComplicationProgressView *)self->_progressView transitionToMonochromeWithFraction:?];
  if (fabs(a3) >= 0.00000011920929)
  {
    v6 = [(NTKUpNextBaseCell *)self filterProvider];
    v10 = [v6 filtersForView:self style:2 fraction:a3];

    v7 = v10;
    if (!v10)
    {
      goto LABEL_6;
    }

    v8 = [(CLKUIColoringLabel *)self->_headerLabel layer];
    [v8 setFilters:v10];

    v9 = [(CLKUIColoringLabel *)self->_descriptionLine1Label layer];
    [v9 setFilters:v10];
  }

  else
  {
    v5 = [(CLKUIColoringLabel *)self->_headerLabel layer];
    [v5 setFilters:0];

    v10 = [(CLKUIColoringLabel *)self->_descriptionLine1Label layer];
    [v10 setFilters:0];
  }

  v7 = v10;
LABEL_6:
}

- (void)updateMonochromeColor
{
  [(CDRichComplicationProgressView *)self->_progressView updateMonochromeColor];
  v3 = [(NTKUpNextBaseCell *)self filterProvider];
  v6 = [v3 filtersForView:self style:2];

  if (v6)
  {
    v4 = [(CLKUIColoringLabel *)self->_headerLabel layer];
    [v4 setFilters:v6];

    v5 = [(CLKUIColoringLabel *)self->_descriptionLine1Label layer];
    [v5 setFilters:v6];
  }
}

@end