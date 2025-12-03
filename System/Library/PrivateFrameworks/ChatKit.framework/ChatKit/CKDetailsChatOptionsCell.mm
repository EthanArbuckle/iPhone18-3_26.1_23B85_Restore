@interface CKDetailsChatOptionsCell
- (CKDetailsChatOptionsCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (UISwitch)controlSwitch;
- (void)_configureNewControlSwitch;
- (void)prepareForReuse;
@end

@implementation CKDetailsChatOptionsCell

- (CKDetailsChatOptionsCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v31[4] = *MEMORY[0x1E69E9840];
  v30.receiver = self;
  v30.super_class = CKDetailsChatOptionsCell;
  v4 = [(CKDetailsCell *)&v30 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = +[CKUIBehavior sharedBehaviors];
    theme = [v5 theme];
    detailsCellStaticTextColor = [theme detailsCellStaticTextColor];
    textLabel = [(CKDetailsChatOptionsCell *)v4 textLabel];
    [textLabel setTextColor:detailsCellStaticTextColor];

    textLabel2 = [(CKDetailsChatOptionsCell *)v4 textLabel];
    [textLabel2 setNumberOfLines:0];

    textLabel3 = [(CKDetailsChatOptionsCell *)v4 textLabel];
    [textLabel3 setLineBreakMode:0];

    [(CKDetailsChatOptionsCell *)v4 _configureNewControlSwitch];
    v22 = MEMORY[0x1E696ACD8];
    textLabel4 = [(CKDetailsChatOptionsCell *)v4 textLabel];
    leadingAnchor = [textLabel4 leadingAnchor];
    leadingAnchor2 = [(CKDetailsChatOptionsCell *)v4 leadingAnchor];
    v26 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v31[0] = v26;
    textLabel5 = [(CKDetailsChatOptionsCell *)v4 textLabel];
    trailingAnchor = [textLabel5 trailingAnchor];
    trailingAnchor2 = [(CKDetailsChatOptionsCell *)v4 trailingAnchor];
    v21 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v31[1] = v21;
    textLabel6 = [(CKDetailsChatOptionsCell *)v4 textLabel];
    topAnchor = [textLabel6 topAnchor];
    topAnchor2 = [(CKDetailsChatOptionsCell *)v4 topAnchor];
    v14 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v31[2] = v14;
    textLabel7 = [(CKDetailsChatOptionsCell *)v4 textLabel];
    bottomAnchor = [textLabel7 bottomAnchor];
    bottomAnchor2 = [(CKDetailsChatOptionsCell *)v4 bottomAnchor];
    v18 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v31[3] = v18;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:4];
    [v22 activateConstraints:v19];
  }

  return v4;
}

- (UISwitch)controlSwitch
{
  controlSwitch = self->_controlSwitch;
  if (!controlSwitch)
  {
    [(CKDetailsChatOptionsCell *)self _configureNewControlSwitch];
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

  controlSwitch = [(CKDetailsChatOptionsCell *)self controlSwitch];
  [(CKDetailsChatOptionsCell *)self setAccessoryView:controlSwitch];
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = CKDetailsChatOptionsCell;
  [(CKDetailsCell *)&v3 prepareForReuse];
  [(CKDetailsChatOptionsCell *)self _configureNewControlSwitch];
}

@end