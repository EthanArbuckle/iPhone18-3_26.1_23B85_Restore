@interface WDDisplayTypeDescriptionView
+ (double)minimumHeightForStyle:(unint64_t)style;
+ (id)_descriptionHeadingColorForStyle:(unint64_t)style;
+ (id)_descriptionHeadingFontForStyle:(unint64_t)style;
+ (id)_descriptionTextColorForStyle:(unint64_t)style;
+ (id)_descriptionTextFontForStyle:(unint64_t)style;
+ (id)_metricsForStyle:(unint64_t)style;
- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range interaction:(int64_t)interaction;
- (WDDisplayTypeDescriptionView)initWithCoder:(id)coder;
- (WDDisplayTypeDescriptionView)initWithDisplayType:(id)type showAttributionText:(BOOL)text style:(unint64_t)style;
- (WDDisplayTypeDescriptionView)initWithFrame:(CGRect)frame;
- (void)_setupUI;
- (void)_updateFont;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation WDDisplayTypeDescriptionView

- (WDDisplayTypeDescriptionView)initWithDisplayType:(id)type showAttributionText:(BOOL)text style:(unint64_t)style
{
  typeCopy = type;
  v13.receiver = self;
  v13.super_class = WDDisplayTypeDescriptionView;
  v10 = [(WDDisplayTypeDescriptionView *)&v13 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_displayType, type);
    v11->_showAttributionText = text;
    v11->_style = style;
    [(WDDisplayTypeDescriptionView *)v11 _setupUI];
  }

  return v11;
}

- (WDDisplayTypeDescriptionView)initWithFrame:(CGRect)frame
{
  v4 = MEMORY[0x277CBEAD8];
  v5 = *MEMORY[0x277CBE660];
  v6 = NSStringFromSelector(a2);
  [v4 raise:v5 format:{@"The -%@ method is not available on %@", v6, objc_opt_class()}];

  return 0;
}

- (WDDisplayTypeDescriptionView)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = WDDisplayTypeDescriptionView;
  return [(WDDisplayTypeDescriptionView *)&v4 initWithCoder:coder];
}

+ (double)minimumHeightForStyle:(unint64_t)style
{
  v4 = [self _metricsForStyle:?];
  v5 = v4;
  v6 = 0.0;
  if (style)
  {
    if (style != 1)
    {
      goto LABEL_8;
    }

    v7 = [v4 objectForKeyedSubscript:@"T"];
    [v7 floatValue];
    v6 = v8 + 0.0;
  }

  v9 = [v5 objectForKeyedSubscript:@"D"];
  [v9 floatValue];
  v11 = v10;

  v12 = [v5 objectForKeyedSubscript:@"M"];
  [v12 floatValue];
  v14 = v13 + v13;

  if (v11 >= v14)
  {
    v15 = v11;
  }

  else
  {
    v15 = v14;
  }

  v16 = v6 + v15;
  v17 = [v5 objectForKeyedSubscript:@"A"];
  [v17 floatValue];
  v19 = v16 + (v18 + v18);

  v20 = [v5 objectForKeyedSubscript:@"M"];
  [v20 floatValue];
  v6 = v19 + v21;

LABEL_8:
  return v6;
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v9.receiver = self;
  v9.super_class = WDDisplayTypeDescriptionView;
  [(WDDisplayTypeDescriptionView *)&v9 traitCollectionDidChange:changeCopy];
  if (changeCopy)
  {
    traitCollection = [(WDDisplayTypeDescriptionView *)self traitCollection];
    preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
    preferredContentSizeCategory2 = [changeCopy preferredContentSizeCategory];
    v8 = [preferredContentSizeCategory isEqualToString:preferredContentSizeCategory2];

    if ((v8 & 1) == 0)
    {
      [(WDDisplayTypeDescriptionView *)self _updateFont];
      [(WDDisplayTypeDescriptionView *)self setNeedsLayout];
    }
  }
}

- (void)_updateFont
{
  v3 = [objc_opt_class() _descriptionHeadingFontForStyle:self->_style];
  [(UILabel *)self->_descriptionHeadingLabel setFont:v3];

  v4 = [objc_opt_class() _descriptionTextFontForStyle:self->_style];
  [(UILabel *)self->_descriptionLabel setFont:v4];

  v5 = [objc_opt_class() _attributionTextFontForStyle:self->_style];
  [(UITextView *)self->_attributionTextView setFont:v5];

  v6 = [objc_opt_class() _cautionaryTextFontForStyle:self->_style];
  [(UILabel *)self->_cautionaryLabel setFont:v6];
}

- (void)_setupUI
{
  v57 = [objc_opt_class() _metricsForStyle:self->_style];
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if (self->_style == 1)
  {
    v4 = objc_alloc_init(MEMORY[0x277D756B8]);
    descriptionHeadingLabel = self->_descriptionHeadingLabel;
    self->_descriptionHeadingLabel = v4;

    v6 = WDBundle();
    v7 = [v6 localizedStringForKey:@"DESCRIPTION_HEADING" value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable"];
    [(UILabel *)self->_descriptionHeadingLabel setText:v7];

    v8 = [objc_opt_class() _descriptionHeadingColorForStyle:self->_style];
    [(UILabel *)self->_descriptionHeadingLabel setTextColor:v8];

    [(UILabel *)self->_descriptionHeadingLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(UILabel *)self->_descriptionHeadingLabel setBackgroundColor:clearColor];

    [(WDDisplayTypeDescriptionView *)self addSubview:self->_descriptionHeadingLabel];
    [v3 setObject:self->_descriptionHeadingLabel forKeyedSubscript:@"_descriptionHeadingLabel"];
    v10 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:|[_descriptionHeadingLabel]|" options:0 metrics:0 views:v3];
    [(WDDisplayTypeDescriptionView *)self addConstraints:v10];
  }

  localization = [(HKDisplayType *)self->_displayType localization];
  summaryForPairedWatch = [localization summaryForPairedWatch];
  if ([summaryForPairedWatch length])
  {
    hasPairedWatch = [MEMORY[0x277CCDD30] hasPairedWatch];
  }

  else
  {
    hasPairedWatch = 0;
  }

  v14 = objc_alloc_init(MEMORY[0x277D756B8]);
  descriptionLabel = self->_descriptionLabel;
  self->_descriptionLabel = v14;

  [(UILabel *)self->_descriptionLabel setNumberOfLines:0];
  v16 = [objc_opt_class() _descriptionTextColorForStyle:self->_style];
  [(UILabel *)self->_descriptionLabel setTextColor:v16];

  localization2 = [(HKDisplayType *)self->_displayType localization];
  v18 = localization2;
  if (hasPairedWatch)
  {
    [localization2 summaryForPairedWatch];
  }

  else
  {
    [localization2 summary];
  }
  v19 = ;
  [(UILabel *)self->_descriptionLabel setText:v19];

  [(UILabel *)self->_descriptionLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  clearColor2 = [MEMORY[0x277D75348] clearColor];
  [(UILabel *)self->_descriptionLabel setBackgroundColor:clearColor2];

  [(WDDisplayTypeDescriptionView *)self addSubview:self->_descriptionLabel];
  [v3 setObject:self->_descriptionLabel forKeyedSubscript:@"_descriptionLabel"];
  v21 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:|[_descriptionLabel]|" options:0 metrics:0 views:v3];
  [(WDDisplayTypeDescriptionView *)self addConstraints:v21];

  v22 = [objc_alloc(MEMORY[0x277CCAB68]) initWithString:@"V:|"];
  v23 = v22;
  if (self->_style == 1)
  {
    [v22 appendString:@"-T-[_descriptionHeadingLabel]"];
  }

  detailImage = [(HKDisplayType *)self->_displayType detailImage];
  v25 = detailImage;
  if (detailImage)
  {
    [detailImage size];
    v28 = v27 / v26;
    v29 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v25];
    [v29 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(WDDisplayTypeDescriptionView *)self addSubview:v29];
    [v3 setValue:v29 forKey:@"imageView"];
    v30 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:|-P-[imageView]-P-|" options:0 metrics:v57 views:v3];
    [(WDDisplayTypeDescriptionView *)self addConstraints:v30];

    [v23 appendString:@"-M-[imageView]-M-[_descriptionLabel]"];
    v31 = [MEMORY[0x277CCAAD0] constraintWithItem:v29 attribute:8 relatedBy:0 toItem:v29 attribute:7 multiplier:v28 constant:0.0];
    LODWORD(v32) = 1144750080;
    [v31 setPriority:v32];
    [v29 addConstraint:v31];
  }

  else
  {
    [v23 appendString:@"-M-[_descriptionLabel]"];
  }

  presentation = [(HKDisplayType *)self->_displayType presentation];
  summaryAttribution = [presentation summaryAttribution];
  attribution = [summaryAttribution attribution];
  if ([attribution length])
  {
    showAttributionText = [(WDDisplayTypeDescriptionView *)self showAttributionText];

    if (!showAttributionText)
    {
      goto LABEL_19;
    }

    v37 = objc_alloc(MEMORY[0x277D127B0]);
    presentation2 = [(HKDisplayType *)self->_displayType presentation];
    summaryAttribution2 = [presentation2 summaryAttribution];
    attribution2 = [summaryAttribution2 attribution];
    [(HKDisplayType *)self->_displayType presentation];
    v56 = v25;
    v42 = v41 = v3;
    summaryAttribution3 = [v42 summaryAttribution];
    v44 = [v37 initWithAttributedText:attribution2 selectable:{objc_msgSend(summaryAttribution3, "hasLink")}];
    attributionTextView = self->_attributionTextView;
    self->_attributionTextView = v44;

    v3 = v41;
    v25 = v56;

    [(UITextView *)self->_attributionTextView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UITextView *)self->_attributionTextView setDelegate:self];
    [(WDDisplayTypeDescriptionView *)self addSubview:self->_attributionTextView];
    [v23 appendString:@"-A-[_attributionTextView]"];
    [v3 setValue:self->_attributionTextView forKey:@"_attributionTextView"];
    presentation = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:|[_attributionTextView]|" options:0 metrics:v57 views:v3];
    [(WDDisplayTypeDescriptionView *)self addConstraints:presentation];
  }

  else
  {
  }

LABEL_19:
  localization3 = [(HKDisplayType *)self->_displayType localization];
  cautionaryText = [localization3 cautionaryText];
  v48 = [cautionaryText length];

  if (v48)
  {
    v49 = objc_alloc_init(MEMORY[0x277D756B8]);
    cautionaryLabel = self->_cautionaryLabel;
    self->_cautionaryLabel = v49;

    [(UILabel *)self->_cautionaryLabel setNumberOfLines:0];
    localization4 = [(HKDisplayType *)self->_displayType localization];
    cautionaryText2 = [localization4 cautionaryText];
    [(UILabel *)self->_cautionaryLabel setText:cautionaryText2];

    [(UILabel *)self->_cautionaryLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    clearColor3 = [MEMORY[0x277D75348] clearColor];
    [(UILabel *)self->_cautionaryLabel setBackgroundColor:clearColor3];

    [(WDDisplayTypeDescriptionView *)self addSubview:self->_cautionaryLabel];
    [v23 appendString:@"-A-[_cautionaryLabel]-M-|"];
    [v3 setValue:self->_cautionaryLabel forKey:@"_cautionaryLabel"];
    v54 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:|[_cautionaryLabel]|" options:0 metrics:v57 views:v3];
    [(WDDisplayTypeDescriptionView *)self addConstraints:v54];
  }

  else
  {
    [v23 appendString:@"-M-|"];
  }

  v55 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:v23 options:0 metrics:v57 views:v3];
  [(WDDisplayTypeDescriptionView *)self addConstraints:v55];

  [(WDDisplayTypeDescriptionView *)self _updateFont];
}

+ (id)_metricsForStyle:(unint64_t)style
{
  if (style)
  {
    return &unk_28642E108;
  }

  else
  {
    return &unk_28642E0E0;
  }
}

+ (id)_descriptionHeadingFontForStyle:(unint64_t)style
{
  v3 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76968]];
  fontDescriptor = [v3 fontDescriptor];
  v5 = [fontDescriptor fontDescriptorWithSymbolicTraits:{objc_msgSend(fontDescriptor, "symbolicTraits") | 2}];
  v6 = [MEMORY[0x277D74300] fontWithDescriptor:v5 size:0.0];

  return v6;
}

+ (id)_descriptionHeadingColorForStyle:(unint64_t)style
{
  if (style == 1)
  {
    self = [MEMORY[0x277D75348] secondaryLabelColor];
  }

  else if (!style)
  {
    self = [MEMORY[0x277D75348] labelColor];
  }

  return self;
}

+ (id)_descriptionTextFontForStyle:(unint64_t)style
{
  if (style)
  {
    if (style != 1)
    {
      goto LABEL_6;
    }

    v5 = MEMORY[0x277D76968];
  }

  else
  {
    v5 = MEMORY[0x277D76918];
  }

  self = [MEMORY[0x277D74300] preferredFontForTextStyle:{*v5, v3}];
LABEL_6:

  return self;
}

+ (id)_descriptionTextColorForStyle:(unint64_t)style
{
  if (style == 1)
  {
    self = [MEMORY[0x277D75348] secondaryLabelColor];
  }

  else if (!style)
  {
    self = [MEMORY[0x277D75348] labelColor];
  }

  return self;
}

- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range interaction:(int64_t)interaction
{
  lCopy = l;
  scheme = [lCopy scheme];
  v9 = [scheme isEqualToString:@"bridge"];

  if (!interaction && v9)
  {
    defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
    [defaultWorkspace openSensitiveURL:lCopy withOptions:0];
  }

  return v9 ^ 1;
}

@end