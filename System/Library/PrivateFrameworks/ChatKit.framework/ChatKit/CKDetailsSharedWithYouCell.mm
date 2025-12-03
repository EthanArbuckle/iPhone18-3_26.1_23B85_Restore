@interface CKDetailsSharedWithYouCell
- (CKDetailsSharedWithYouCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (UISwitch)controlSwitch;
- (void)_configureNewControlSwitch;
- (void)prepareForReuse;
@end

@implementation CKDetailsSharedWithYouCell

- (CKDetailsSharedWithYouCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v32[4] = *MEMORY[0x1E69E9840];
  v31.receiver = self;
  v31.super_class = CKDetailsSharedWithYouCell;
  v4 = [(CKDetailsCell *)&v31 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    textLabel = [(CKDetailsSharedWithYouCell *)v4 textLabel];
    v7 = +[CKUIBehavior sharedBehaviors];
    theme = [v7 theme];
    detailsCellStaticTextColor = [theme detailsCellStaticTextColor];
    [textLabel setTextColor:detailsCellStaticTextColor];

    textLabel2 = [(CKDetailsSharedWithYouCell *)v5 textLabel];
    [textLabel2 setNumberOfLines:0];

    textLabel3 = [(CKDetailsSharedWithYouCell *)v5 textLabel];
    [textLabel3 setLineBreakMode:0];

    [(CKDetailsSharedWithYouCell *)v5 _configureNewControlSwitch];
    v23 = MEMORY[0x1E696ACD8];
    textLabel4 = [(CKDetailsSharedWithYouCell *)v5 textLabel];
    leadingAnchor = [textLabel4 leadingAnchor];
    leadingAnchor2 = [(CKDetailsSharedWithYouCell *)v5 leadingAnchor];
    v27 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v32[0] = v27;
    textLabel5 = [(CKDetailsSharedWithYouCell *)v5 textLabel];
    trailingAnchor = [textLabel5 trailingAnchor];
    trailingAnchor2 = [(CKDetailsSharedWithYouCell *)v5 trailingAnchor];
    v22 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v32[1] = v22;
    textLabel6 = [(CKDetailsSharedWithYouCell *)v5 textLabel];
    topAnchor = [textLabel6 topAnchor];
    topAnchor2 = [(CKDetailsSharedWithYouCell *)v5 topAnchor];
    v15 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v32[2] = v15;
    textLabel7 = [(CKDetailsSharedWithYouCell *)v5 textLabel];
    bottomAnchor = [textLabel7 bottomAnchor];
    bottomAnchor2 = [(CKDetailsSharedWithYouCell *)v5 bottomAnchor];
    v19 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v32[3] = v19;
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:4];
    [v23 activateConstraints:v20];
  }

  return v5;
}

- (UISwitch)controlSwitch
{
  controlSwitch = self->_controlSwitch;
  if (!controlSwitch)
  {
    [(CKDetailsSharedWithYouCell *)self _configureNewControlSwitch];
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

  controlSwitch = [(CKDetailsSharedWithYouCell *)self controlSwitch];
  [(CKDetailsSharedWithYouCell *)self setAccessoryView:controlSwitch];
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = CKDetailsSharedWithYouCell;
  [(CKDetailsCell *)&v3 prepareForReuse];
  [(CKDetailsSharedWithYouCell *)self _configureNewControlSwitch];
}

@end