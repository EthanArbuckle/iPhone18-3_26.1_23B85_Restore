@interface CKDetailsSharedWithYouCheckboxCell
- (CGSize)sizeThatFits:(CGSize)a3;
- (CKDetailsSharedWithYouCheckboxCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (UISwitch)controlSwitch;
- (void)_configureNewControlSwitch;
- (void)_configureNewTitleLabel;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation CKDetailsSharedWithYouCheckboxCell

- (CKDetailsSharedWithYouCheckboxCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v13.receiver = self;
  v13.super_class = CKDetailsSharedWithYouCheckboxCell;
  v4 = [(CKTranscriptDetailsResizableCell *)&v13 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    [(CKDetailsSharedWithYouCheckboxCell *)v4 _configureNewControlSwitch];
    v6 = +[CKUIBehavior sharedBehaviors];
    v7 = [v6 theme];
    v8 = [v7 detailsCellStaticTextColor];
    v9 = [(CKDetailsSharedWithYouCheckboxCell *)v5 controlSwitch];
    [v9 setOnTintColor:v8];

    [(CKDetailsSharedWithYouCheckboxCell *)v5 _configureNewTitleLabel];
    v10 = [(CKDetailsCell *)v5 topSeperator];
    [v10 setHidden:1];

    v11 = [(CKDetailsCell *)v5 bottomSeperator];
    [v11 setHidden:1];
  }

  return v5;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
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
  v7 = [(CKDetailsSharedWithYouCheckboxCell *)self contentView];
  [v7 addSubview:self->_controlSwitch];
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
  v9 = [v8 localizedUppercaseString];
  [(UILabel *)self->_titleLabel setText:v9];

  v10 = self->_titleLabel;
  v11 = [MEMORY[0x1E69DC888] clearColor];
  [(UILabel *)v10 setBackgroundColor:v11];

  v12 = self->_titleLabel;
  v13 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [(UILabel *)v12 setTextColor:v13];

  v14 = self->_titleLabel;
  v15 = +[CKUIBehavior sharedBehaviors];
  v16 = [v15 headerFont];
  [(UILabel *)v14 setFont:v16];

  v17 = [(CKDetailsSharedWithYouCheckboxCell *)self contentView];
  [v17 addSubview:self->_titleLabel];
}

- (void)layoutSubviews
{
  v31.receiver = self;
  v31.super_class = CKDetailsSharedWithYouCheckboxCell;
  [(CKDetailsCell *)&v31 layoutSubviews];
  v3 = [(CKDetailsSharedWithYouCheckboxCell *)self contentView];
  [v3 bounds];
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
  v21 = [(CKDetailsSharedWithYouCheckboxCell *)self controlSwitch];
  [v21 setFrame:{v20, v15 + 8.0, v17, v19}];
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