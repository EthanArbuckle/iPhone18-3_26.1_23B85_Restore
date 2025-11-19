@interface WDSourceMessageViewController
- (WDSourceMessageViewController)initWithStyle:(int64_t)a3 source:(id)a4;
- (void)_updateFont;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidLoad;
@end

@implementation WDSourceMessageViewController

- (WDSourceMessageViewController)initWithStyle:(int64_t)a3 source:(id)a4
{
  v7 = a4;
  v16.receiver = self;
  v16.super_class = WDSourceMessageViewController;
  v8 = [(WDSourceMessageViewController *)&v16 initWithNibName:0 bundle:0];
  v9 = v8;
  if (v8)
  {
    v8->_style = a3;
    objc_storeStrong(&v8->_source, a4);
    v10 = objc_alloc_init(MEMORY[0x277D756B8]);
    messageLabel = v9->_messageLabel;
    v9->_messageLabel = v10;

    [(UILabel *)v9->_messageLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v12 = [MEMORY[0x277D75348] secondaryLabelColor];
    [(UILabel *)v9->_messageLabel setTextColor:v12];

    [(UILabel *)v9->_messageLabel setNumberOfLines:0];
    [(UILabel *)v9->_messageLabel setTextAlignment:1];
    [(WDSourceMessageViewController *)v9 _updateFont];
    v13 = [MEMORY[0x277D75348] systemBackgroundColor];
    v14 = [(WDSourceMessageViewController *)v9 view];
    [v14 setBackgroundColor:v13];
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
  v3 = [(WDSourceMessageViewController *)self view];
  [v3 addSubview:self->_messageLabel];

  v4 = [(WDSourceMessageViewController *)self view];
  v5 = MEMORY[0x277CCAAD0];
  messageLabel = self->_messageLabel;
  v7 = [(WDSourceMessageViewController *)self view];
  v8 = [v5 constraintWithItem:messageLabel attribute:9 relatedBy:0 toItem:v7 attribute:9 multiplier:1.0 constant:0.0];
  [v4 addConstraint:v8];

  v9 = [(WDSourceMessageViewController *)self view];
  v10 = MEMORY[0x277CCAAD0];
  v11 = self->_messageLabel;
  v12 = [(WDSourceMessageViewController *)self view];
  v13 = [v10 constraintWithItem:v11 attribute:3 relatedBy:0 toItem:v12 attribute:10 multiplier:0.6 constant:0.0];
  [v9 addConstraint:v13];

  v14 = [(WDSourceMessageViewController *)self view];
  v15 = MEMORY[0x277CCAAD0];
  v16 = self->_messageLabel;
  v17 = [(WDSourceMessageViewController *)self view];
  [v17 bounds];
  v18 = [v15 constraintWithItem:v16 attribute:7 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:CGRectGetWidth(v35) + -60.0];
  [v14 addConstraint:v18];

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
    v32 = [(HKSource *)self->_source name];
    v33 = [v31 localizedStringWithFormat:v29, v32];
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

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = WDSourceMessageViewController;
  [(WDSourceMessageViewController *)&v10 traitCollectionDidChange:v4];
  if (v4)
  {
    v5 = [(WDSourceMessageViewController *)self traitCollection];
    v6 = [v5 preferredContentSizeCategory];
    v7 = [v4 preferredContentSizeCategory];
    v8 = [v6 isEqualToString:v7];

    if ((v8 & 1) == 0)
    {
      [(WDSourceMessageViewController *)self _updateFont];
      v9 = [(WDSourceMessageViewController *)self view];
      [v9 setNeedsLayout];
    }
  }
}

@end