@interface CKDetailsChatOptionsCheckboxCell
- (CGSize)sizeThatFits:(CGSize)fits;
- (CKDetailsChatOptionsCheckboxCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (UISwitch)controlSwitch;
- (void)_configureNewControlSwitch;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation CKDetailsChatOptionsCheckboxCell

- (CKDetailsChatOptionsCheckboxCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v13.receiver = self;
  v13.super_class = CKDetailsChatOptionsCheckboxCell;
  v4 = [(CKTranscriptDetailsResizableCell *)&v13 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(CKDetailsChatOptionsCheckboxCell *)v4 _configureNewControlSwitch];
    v6 = +[CKUIBehavior sharedBehaviors];
    theme = [v6 theme];
    detailsCellStaticTextColor = [theme detailsCellStaticTextColor];
    controlSwitch = [(CKDetailsChatOptionsCheckboxCell *)v5 controlSwitch];
    [controlSwitch setOnTintColor:detailsCellStaticTextColor];

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
    v6 = 44.0;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = CKDetailsChatOptionsCheckboxCell;
    [(CKDetailsChatOptionsCheckboxCell *)&v9 sizeThatFits:width, height];
    width = v7;
  }

  v8 = width;
  result.height = v6;
  result.width = v8;
  return result;
}

- (UISwitch)controlSwitch
{
  controlSwitch = self->_controlSwitch;
  if (!controlSwitch)
  {
    [(CKDetailsChatOptionsCheckboxCell *)self _configureNewControlSwitch];
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

  [(UISwitch *)self->_controlSwitch setSwitchStyle:1];
  contentView = [(CKDetailsChatOptionsCheckboxCell *)self contentView];
  [contentView addSubview:self->_controlSwitch];
}

- (void)layoutSubviews
{
  v21.receiver = self;
  v21.super_class = CKDetailsChatOptionsCheckboxCell;
  [(CKDetailsCell *)&v21 layoutSubviews];
  contentView = [(CKDetailsChatOptionsCheckboxCell *)self contentView];
  [contentView bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [(CKDetailsChatOptionsCheckboxCell *)self layoutMargins];
  v13 = v5 + v12;
  v15 = v7 + v14;
  v17 = v9 - (v12 + v16);
  v19 = v11 - (v14 + v18);

  controlSwitch = [(CKDetailsChatOptionsCheckboxCell *)self controlSwitch];
  [controlSwitch setFrame:{v13 + -2.0, v15, v17, v19}];
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = CKDetailsChatOptionsCheckboxCell;
  [(CKDetailsCell *)&v3 prepareForReuse];
  [(CKDetailsChatOptionsCheckboxCell *)self _configureNewControlSwitch];
}

@end