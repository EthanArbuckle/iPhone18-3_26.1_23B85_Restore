@interface WDDisplayTypeDescriptionView
+ (double)minimumHeightForStyle:(unint64_t)a3;
+ (id)_descriptionHeadingColorForStyle:(unint64_t)a3;
+ (id)_descriptionHeadingFontForStyle:(unint64_t)a3;
+ (id)_descriptionTextColorForStyle:(unint64_t)a3;
+ (id)_descriptionTextFontForStyle:(unint64_t)a3;
+ (id)_metricsForStyle:(unint64_t)a3;
- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5 interaction:(int64_t)a6;
- (WDDisplayTypeDescriptionView)initWithCoder:(id)a3;
- (WDDisplayTypeDescriptionView)initWithDisplayType:(id)a3 showAttributionText:(BOOL)a4 style:(unint64_t)a5;
- (WDDisplayTypeDescriptionView)initWithFrame:(CGRect)a3;
- (void)_setupUI;
- (void)_updateFont;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation WDDisplayTypeDescriptionView

- (WDDisplayTypeDescriptionView)initWithDisplayType:(id)a3 showAttributionText:(BOOL)a4 style:(unint64_t)a5
{
  v9 = a3;
  v13.receiver = self;
  v13.super_class = WDDisplayTypeDescriptionView;
  v10 = [(WDDisplayTypeDescriptionView *)&v13 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_displayType, a3);
    v11->_showAttributionText = a4;
    v11->_style = a5;
    [(WDDisplayTypeDescriptionView *)v11 _setupUI];
  }

  return v11;
}

- (WDDisplayTypeDescriptionView)initWithFrame:(CGRect)a3
{
  v4 = MEMORY[0x277CBEAD8];
  v5 = *MEMORY[0x277CBE660];
  v6 = NSStringFromSelector(a2);
  [v4 raise:v5 format:{@"The -%@ method is not available on %@", v6, objc_opt_class()}];

  return 0;
}

- (WDDisplayTypeDescriptionView)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = WDDisplayTypeDescriptionView;
  return [(WDDisplayTypeDescriptionView *)&v4 initWithCoder:a3];
}

+ (double)minimumHeightForStyle:(unint64_t)a3
{
  v4 = [a1 _metricsForStyle:?];
  v5 = v4;
  v6 = 0.0;
  if (a3)
  {
    if (a3 != 1)
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

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = WDDisplayTypeDescriptionView;
  [(WDDisplayTypeDescriptionView *)&v9 traitCollectionDidChange:v4];
  if (v4)
  {
    v5 = [(WDDisplayTypeDescriptionView *)self traitCollection];
    v6 = [v5 preferredContentSizeCategory];
    v7 = [v4 preferredContentSizeCategory];
    v8 = [v6 isEqualToString:v7];

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
    v9 = [MEMORY[0x277D75348] clearColor];
    [(UILabel *)self->_descriptionHeadingLabel setBackgroundColor:v9];

    [(WDDisplayTypeDescriptionView *)self addSubview:self->_descriptionHeadingLabel];
    [v3 setObject:self->_descriptionHeadingLabel forKeyedSubscript:@"_descriptionHeadingLabel"];
    v10 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:|[_descriptionHeadingLabel]|" options:0 metrics:0 views:v3];
    [(WDDisplayTypeDescriptionView *)self addConstraints:v10];
  }

  v11 = [(HKDisplayType *)self->_displayType localization];
  v12 = [v11 summaryForPairedWatch];
  if ([v12 length])
  {
    v13 = [MEMORY[0x277CCDD30] hasPairedWatch];
  }

  else
  {
    v13 = 0;
  }

  v14 = objc_alloc_init(MEMORY[0x277D756B8]);
  descriptionLabel = self->_descriptionLabel;
  self->_descriptionLabel = v14;

  [(UILabel *)self->_descriptionLabel setNumberOfLines:0];
  v16 = [objc_opt_class() _descriptionTextColorForStyle:self->_style];
  [(UILabel *)self->_descriptionLabel setTextColor:v16];

  v17 = [(HKDisplayType *)self->_displayType localization];
  v18 = v17;
  if (v13)
  {
    [v17 summaryForPairedWatch];
  }

  else
  {
    [v17 summary];
  }
  v19 = ;
  [(UILabel *)self->_descriptionLabel setText:v19];

  [(UILabel *)self->_descriptionLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v20 = [MEMORY[0x277D75348] clearColor];
  [(UILabel *)self->_descriptionLabel setBackgroundColor:v20];

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

  v24 = [(HKDisplayType *)self->_displayType detailImage];
  v25 = v24;
  if (v24)
  {
    [v24 size];
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

  v33 = [(HKDisplayType *)self->_displayType presentation];
  v34 = [v33 summaryAttribution];
  v35 = [v34 attribution];
  if ([v35 length])
  {
    v36 = [(WDDisplayTypeDescriptionView *)self showAttributionText];

    if (!v36)
    {
      goto LABEL_19;
    }

    v37 = objc_alloc(MEMORY[0x277D127B0]);
    v38 = [(HKDisplayType *)self->_displayType presentation];
    v39 = [v38 summaryAttribution];
    v40 = [v39 attribution];
    [(HKDisplayType *)self->_displayType presentation];
    v56 = v25;
    v42 = v41 = v3;
    v43 = [v42 summaryAttribution];
    v44 = [v37 initWithAttributedText:v40 selectable:{objc_msgSend(v43, "hasLink")}];
    attributionTextView = self->_attributionTextView;
    self->_attributionTextView = v44;

    v3 = v41;
    v25 = v56;

    [(UITextView *)self->_attributionTextView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UITextView *)self->_attributionTextView setDelegate:self];
    [(WDDisplayTypeDescriptionView *)self addSubview:self->_attributionTextView];
    [v23 appendString:@"-A-[_attributionTextView]"];
    [v3 setValue:self->_attributionTextView forKey:@"_attributionTextView"];
    v33 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:|[_attributionTextView]|" options:0 metrics:v57 views:v3];
    [(WDDisplayTypeDescriptionView *)self addConstraints:v33];
  }

  else
  {
  }

LABEL_19:
  v46 = [(HKDisplayType *)self->_displayType localization];
  v47 = [v46 cautionaryText];
  v48 = [v47 length];

  if (v48)
  {
    v49 = objc_alloc_init(MEMORY[0x277D756B8]);
    cautionaryLabel = self->_cautionaryLabel;
    self->_cautionaryLabel = v49;

    [(UILabel *)self->_cautionaryLabel setNumberOfLines:0];
    v51 = [(HKDisplayType *)self->_displayType localization];
    v52 = [v51 cautionaryText];
    [(UILabel *)self->_cautionaryLabel setText:v52];

    [(UILabel *)self->_cautionaryLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v53 = [MEMORY[0x277D75348] clearColor];
    [(UILabel *)self->_cautionaryLabel setBackgroundColor:v53];

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

+ (id)_metricsForStyle:(unint64_t)a3
{
  if (a3)
  {
    return &unk_28642E108;
  }

  else
  {
    return &unk_28642E0E0;
  }
}

+ (id)_descriptionHeadingFontForStyle:(unint64_t)a3
{
  v3 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76968]];
  v4 = [v3 fontDescriptor];
  v5 = [v4 fontDescriptorWithSymbolicTraits:{objc_msgSend(v4, "symbolicTraits") | 2}];
  v6 = [MEMORY[0x277D74300] fontWithDescriptor:v5 size:0.0];

  return v6;
}

+ (id)_descriptionHeadingColorForStyle:(unint64_t)a3
{
  if (a3 == 1)
  {
    a1 = [MEMORY[0x277D75348] secondaryLabelColor];
  }

  else if (!a3)
  {
    a1 = [MEMORY[0x277D75348] labelColor];
  }

  return a1;
}

+ (id)_descriptionTextFontForStyle:(unint64_t)a3
{
  if (a3)
  {
    if (a3 != 1)
    {
      goto LABEL_6;
    }

    v5 = MEMORY[0x277D76968];
  }

  else
  {
    v5 = MEMORY[0x277D76918];
  }

  a1 = [MEMORY[0x277D74300] preferredFontForTextStyle:{*v5, v3}];
LABEL_6:

  return a1;
}

+ (id)_descriptionTextColorForStyle:(unint64_t)a3
{
  if (a3 == 1)
  {
    a1 = [MEMORY[0x277D75348] secondaryLabelColor];
  }

  else if (!a3)
  {
    a1 = [MEMORY[0x277D75348] labelColor];
  }

  return a1;
}

- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5 interaction:(int64_t)a6
{
  v7 = a4;
  v8 = [v7 scheme];
  v9 = [v8 isEqualToString:@"bridge"];

  if (!a6 && v9)
  {
    v10 = [MEMORY[0x277CC1E80] defaultWorkspace];
    [v10 openSensitiveURL:v7 withOptions:0];
  }

  return v9 ^ 1;
}

@end