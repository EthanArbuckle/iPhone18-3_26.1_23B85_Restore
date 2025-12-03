@interface CKDetailsSharedWithYouCheckboxCell
- (CGSize)sizeThatFits:(CGSize)fits;
- (CKDetailsSharedWithYouCheckboxCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (UISwitch)controlSwitch;
- (void)_configureNewControlSwitch;
- (void)_configureNewTitleLabel;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation CKDetailsSharedWithYouCheckboxCell

- (CKDetailsSharedWithYouCheckboxCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v13.receiver = self;
  v13.super_class = CKDetailsSharedWithYouCheckboxCell;
  v4 = [(CKTranscriptDetailsResizableCell *)&v13 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(CKDetailsSharedWithYouCheckboxCell *)v4 _configureNewControlSwitch];
    v6 = +[CKUIBehavior sharedBehaviors];
    theme = [v6 theme];
    detailsCellStaticTextColor = [theme detailsCellStaticTextColor];
    controlSwitch = [(CKDetailsSharedWithYouCheckboxCell *)v5 controlSwitch];
    [controlSwitch setOnTintColor:detailsCellStaticTextColor];

    [(CKDetailsSharedWithYouCheckboxCell *)v5 _configureNewTitleLabel];
    topSeperator = [(CKDetailsCell *)v5 topSeperator];
    [topSeperator setHidden:1];

    bottomSeperator = [(CKDetailsCell *)v5 bottomSeperator];
    [bottomSeperator setHidden:1];
  }

  return v5;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  if (CKIsRunningInMacCatalyst())
  {
    v6 = +[CKUIBehavior sharedBehaviors];
    [v6 detailsContactCellMinimumHeight];
    v8 = v7 + 16.0;
  }

  else
  {
    v13.receiver = self;
    v13.super_class = CKDetailsSharedWithYouCheckboxCell;
    [(CKDetailsSharedWithYouCheckboxCell *)&v13 sizeThatFits:width, height];
    width = v9;
    v8 = v10;
  }

  v11 = width;
  v12 = v8;
  result.height = v12;
  result.width = v11;
  return result;
}

- (UISwitch)controlSwitch
{
  controlSwitch = self->_controlSwitch;
  if (!controlSwitch)
  {
    [(CKDetailsSharedWithYouCheckboxCell *)self _configureNewControlSwitch];
    controlSwitch = self->_controlSwitch;
  }

  return controlSwitch;
}

- (void)_configureNewControlSwitch
{
  controlSwitch = self->_controlSwitch;
  if (controlSwitch)
  {
    [(UISwitch *)controlSwitch removeFromSuperview];
    [(UISwitch *)self->_controlSwitch removeTarget:0 action:0 forControlEvents:0xFFFFFFFFLL];
  }

  v4 = objc_alloc(MEMORY[0x1E69DCFD0]);
  v5 = [v4 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  v6 = self->_controlSwitch;
  self->_controlSwitch = v5;

  [(UISwitch *)self->_controlSwitch setPreferredStyle:1];
  contentView = [(CKDetailsSharedWithYouCheckboxCell *)self contentView];
  [contentView addSubview:self->_controlSwitch];
}

- (void)_configureNewTitleLabel
{
  titleLabel = self->_titleLabel;
  if (titleLabel)
  {
    [(UILabel *)titleLabel removeFromSuperview];
  }

  v4 = objc_alloc(MEMORY[0x1E69DCC10]);
  v5 = [v4 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  v6 = self->_titleLabel;
  self->_titleLabel = v5;

  v7 = CKFrameworkBundle();
  v8 = [v7 localizedStringForKey:@"SHARED_WITH_YOU_TITLE" value:&stru_1F04268F8 table:@"ChatKit"];
  localizedUppercaseString = [v8 localizedUppercaseString];
  [(UILabel *)self->_titleLabel setText:localizedUppercaseString];

  v10 = self->_titleLabel;
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [(UILabel *)v10 setBackgroundColor:clearColor];

  v12 = self->_titleLabel;
  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [(UILabel *)v12 setTextColor:secondaryLabelColor];

  v14 = self->_titleLabel;
  v15 = +[CKUIBehavior sharedBehaviors];
  headerFont = [v15 headerFont];
  [(UILabel *)v14 setFont:headerFont];

  contentView = [(CKDetailsSharedWithYouCheckboxCell *)self contentView];
  [contentView addSubview:self->_titleLabel];
}

- (void)layoutSubviews
{
  v31.receiver = self;
  v31.super_class = CKDetailsSharedWithYouCheckboxCell;
  [(CKDetailsCell *)&v31 layoutSubviews];
  contentView = [(CKDetailsSharedWithYouCheckboxCell *)self contentView];
  [contentView bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [(CKDetailsSharedWithYouCheckboxCell *)self layoutMargins];
  v13 = v5 + v12;
  v15 = v7 + v14;
  v17 = v9 - (v12 + v16);
  v19 = v11 - (v14 + v18);

  v20 = v13 + -2.0;
  controlSwitch = [(CKDetailsSharedWithYouCheckboxCell *)self controlSwitch];
  [controlSwitch setFrame:{v20, v15 + 8.0, v17, v19}];
  [(UILabel *)self->_titleLabel sizeToFit];
  if ([*MEMORY[0x1E69DDA98] userInterfaceLayoutDirection])
  {
    v32.origin.x = v20;
    v32.origin.y = v15;
    v32.size.width = v17;
    v32.size.height = v19;
    MaxX = CGRectGetMaxX(v32);
    [(UILabel *)self->_titleLabel bounds];
    v20 = MaxX - v23 + 2.0;
  }

  [(CKDetailsSharedWithYouCheckboxCell *)self layoutMargins];
  v25 = v24;
  [(UILabel *)self->_titleLabel bounds];
  v27 = v26;
  [(UILabel *)self->_titleLabel bounds];
  v29 = v28;
  [(CKDetailsSharedWithYouCheckboxCell *)self layoutMargins];
  [(UILabel *)self->_titleLabel setFrame:v20, v25, v27, v29 + v30 * 2.0];
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = CKDetailsSharedWithYouCheckboxCell;
  [(CKDetailsCell *)&v3 prepareForReuse];
  [(CKDetailsSharedWithYouCheckboxCell *)self _configureNewControlSwitch];
  [(CKDetailsSharedWithYouCheckboxCell *)self _configureNewTitleLabel];
}

@end