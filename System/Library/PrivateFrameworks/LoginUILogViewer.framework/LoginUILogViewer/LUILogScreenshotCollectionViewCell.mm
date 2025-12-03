@interface LUILogScreenshotCollectionViewCell
- (LUILogScreenshotCollectionViewCell)initWithFrame:(CGRect)frame;
- (id)_createClearButton;
- (id)_createScreenshotDateLabel;
- (id)_createScreenshotImageView;
- (void)_setup;
- (void)clearButtonTapped:(id)tapped;
- (void)layoutSubviews;
@end

@implementation LUILogScreenshotCollectionViewCell

- (LUILogScreenshotCollectionViewCell)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = LUILogScreenshotCollectionViewCell;
  v3 = [(LUILogScreenshotCollectionViewCell *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(LUILogScreenshotCollectionViewCell *)v3 _setup];
  }

  return v4;
}

- (void)_setup
{
  _createScreenshotImageView = [(LUILogScreenshotCollectionViewCell *)self _createScreenshotImageView];
  screenshotImageView = self->_screenshotImageView;
  self->_screenshotImageView = _createScreenshotImageView;

  _createScreenshotDateLabel = [(LUILogScreenshotCollectionViewCell *)self _createScreenshotDateLabel];
  screenshotDateLabel = self->_screenshotDateLabel;
  self->_screenshotDateLabel = _createScreenshotDateLabel;

  _createClearButton = [(LUILogScreenshotCollectionViewCell *)self _createClearButton];
  clearButton = self->_clearButton;
  self->_clearButton = _createClearButton;

  contentView = [(LUILogScreenshotCollectionViewCell *)self contentView];
  [contentView addSubview:self->_screenshotImageView];

  contentView2 = [(LUILogScreenshotCollectionViewCell *)self contentView];
  [contentView2 addSubview:self->_screenshotDateLabel];

  contentView3 = [(LUILogScreenshotCollectionViewCell *)self contentView];
  [contentView3 addSubview:self->_clearButton];
}

- (void)layoutSubviews
{
  [(LUILogScreenshotCollectionViewCell *)self frame];
  Width = CGRectGetWidth(v9);
  [(LUILogScreenshotCollectionViewCell *)self frame];
  [(UIImageView *)self->_screenshotImageView setFrame:0.0, 10.0, Width, CGRectGetHeight(v10) + -10.0 + -30.0];
  [(LUILogScreenshotCollectionViewCell *)self frame];
  v4 = CGRectGetHeight(v11) + -30.0;
  [(LUILogScreenshotCollectionViewCell *)self frame];
  [(UILabel *)self->_screenshotDateLabel setFrame:0.0, v4, CGRectGetWidth(v12), 30.0];
  [(LUILogScreenshotCollectionViewCell *)self frame];
  v5 = CGRectGetWidth(v13);
  clearButton = self->_clearButton;
  v7 = v5 + -20.0;

  [(UIButton *)clearButton setFrame:v7, 0.0, 20.0, 20.0];
}

- (id)_createClearButton
{
  v3 = objc_opt_new();
  v4 = [MEMORY[0x277D755B8] imageNamed:@"redDeleteIcon"];
  [v3 setImage:v4 forState:0];

  [v3 addTarget:self action:sel_clearButtonTapped_ forControlEvents:64];

  return v3;
}

- (id)_createScreenshotDateLabel
{
  v2 = objc_opt_new();
  whiteColor = [MEMORY[0x277D75348] whiteColor];
  [v2 setTextColor:whiteColor];

  [v2 setTextAlignment:1];

  return v2;
}

- (id)_createScreenshotImageView
{
  v2 = objc_opt_new();
  [v2 setContentMode:1];

  return v2;
}

- (void)clearButtonTapped:(id)tapped
{
  clearButtonAction = [(LUILogScreenshotCollectionViewCell *)self clearButtonAction];

  if (clearButtonAction)
  {
    clearButtonAction2 = [(LUILogScreenshotCollectionViewCell *)self clearButtonAction];
    clearButtonAction2[2]();
  }
}

@end