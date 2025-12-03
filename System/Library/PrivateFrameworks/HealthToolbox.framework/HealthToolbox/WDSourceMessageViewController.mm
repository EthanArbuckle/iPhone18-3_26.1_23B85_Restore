@interface WDSourceMessageViewController
- (WDSourceMessageViewController)initWithStyle:(int64_t)style source:(id)source;
- (void)_updateFont;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidLoad;
@end

@implementation WDSourceMessageViewController

- (WDSourceMessageViewController)initWithStyle:(int64_t)style source:(id)source
{
  sourceCopy = source;
  v16.receiver = self;
  v16.super_class = WDSourceMessageViewController;
  v8 = [(WDSourceMessageViewController *)&v16 initWithNibName:0 bundle:0];
  v9 = v8;
  if (v8)
  {
    v8->_style = style;
    objc_storeStrong(&v8->_source, source);
    v10 = objc_alloc_init(MEMORY[0x277D756B8]);
    messageLabel = v9->_messageLabel;
    v9->_messageLabel = v10;

    [(UILabel *)v9->_messageLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
    [(UILabel *)v9->_messageLabel setTextColor:secondaryLabelColor];

    [(UILabel *)v9->_messageLabel setNumberOfLines:0];
    [(UILabel *)v9->_messageLabel setTextAlignment:1];
    [(WDSourceMessageViewController *)v9 _updateFont];
    systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
    view = [(WDSourceMessageViewController *)v9 view];
    [view setBackgroundColor:systemBackgroundColor];
  }

  return v9;
}

- (void)_updateFont
{
  v3 = MEMORY[0x277D74300];
  v5 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
  [v5 _scaledValueForValue:24.0];
  v4 = [v3 systemFontOfSize:?];
  [(UILabel *)self->_messageLabel setFont:v4];
}

- (void)viewDidLoad
{
  v34.receiver = self;
  v34.super_class = WDSourceMessageViewController;
  [(WDSourceMessageViewController *)&v34 viewDidLoad];
  view = [(WDSourceMessageViewController *)self view];
  [view addSubview:self->_messageLabel];

  view2 = [(WDSourceMessageViewController *)self view];
  v5 = MEMORY[0x277CCAAD0];
  messageLabel = self->_messageLabel;
  view3 = [(WDSourceMessageViewController *)self view];
  v8 = [v5 constraintWithItem:messageLabel attribute:9 relatedBy:0 toItem:view3 attribute:9 multiplier:1.0 constant:0.0];
  [view2 addConstraint:v8];

  view4 = [(WDSourceMessageViewController *)self view];
  v10 = MEMORY[0x277CCAAD0];
  v11 = self->_messageLabel;
  view5 = [(WDSourceMessageViewController *)self view];
  v13 = [v10 constraintWithItem:v11 attribute:3 relatedBy:0 toItem:view5 attribute:10 multiplier:0.6 constant:0.0];
  [view4 addConstraint:v13];

  view6 = [(WDSourceMessageViewController *)self view];
  v15 = MEMORY[0x277CCAAD0];
  v16 = self->_messageLabel;
  view7 = [(WDSourceMessageViewController *)self view];
  [view7 bounds];
  v18 = [v15 constraintWithItem:v16 attribute:7 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:CGRectGetWidth(v35) + -60.0];
  [view6 addConstraint:v18];

  style = self->_style;
  if (style > 2)
  {
    if (style != 3)
    {
      if (style == 4)
      {
        v23 = self->_messageLabel;
        v21 = WDBundle();
        v22 = [MEMORY[0x277D75418] modelSpecificLocalizedStringKeyForKey:@"SOURCES_LOCAL_DEVICE"];
        v24 = [v21 localizedStringForKey:v22 value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable"];
        [(UILabel *)v23 setText:v24];

        goto LABEL_8;
      }

      goto LABEL_9;
    }

    v28 = WDBundle();
    v29 = [v28 localizedStringForKey:@"SOURCES_WATCH_UNPAIRED" value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable"];

    v30 = self->_messageLabel;
    v31 = MEMORY[0x277CCACA8];
    name = [(HKSource *)self->_source name];
    v33 = [v31 localizedStringWithFormat:v29, name];
    [(UILabel *)v30 setText:v33];
  }

  else
  {
    if (style != 1)
    {
      if (style == 2)
      {
        v20 = self->_messageLabel;
        v21 = WDBundle();
        v22 = [v21 localizedStringForKey:@"SOURCES_WATCH_PAIRED" value:&stru_28641D9B8 table:@"WellnessDashboard-Localizable"];
        [(UILabel *)v20 setText:v22];
LABEL_8:

        return;
      }

LABEL_9:
      [(UILabel *)self->_messageLabel setText:&stru_28641D9B8];
      return;
    }

    v25 = self->_messageLabel;
    source = self->_source;
    v27 = HKHealthRecordsAPILocalizedStringWithSource();
    [(UILabel *)v25 setText:v27];
  }
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v10.receiver = self;
  v10.super_class = WDSourceMessageViewController;
  [(WDSourceMessageViewController *)&v10 traitCollectionDidChange:changeCopy];
  if (changeCopy)
  {
    traitCollection = [(WDSourceMessageViewController *)self traitCollection];
    preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
    preferredContentSizeCategory2 = [changeCopy preferredContentSizeCategory];
    v8 = [preferredContentSizeCategory isEqualToString:preferredContentSizeCategory2];

    if ((v8 & 1) == 0)
    {
      [(WDSourceMessageViewController *)self _updateFont];
      view = [(WDSourceMessageViewController *)self view];
      [view setNeedsLayout];
    }
  }
}

@end