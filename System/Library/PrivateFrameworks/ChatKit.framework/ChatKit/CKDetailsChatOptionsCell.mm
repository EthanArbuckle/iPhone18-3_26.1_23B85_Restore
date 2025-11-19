@interface CKDetailsChatOptionsCell
- (CKDetailsChatOptionsCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (UISwitch)controlSwitch;
- (void)_configureNewControlSwitch;
- (void)prepareForReuse;
@end

@implementation CKDetailsChatOptionsCell

- (CKDetailsChatOptionsCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v31[4] = *MEMORY[0x1E69E9840];
  v30.receiver = self;
  v30.super_class = CKDetailsChatOptionsCell;
  v4 = [(CKDetailsCell *)&v30 initWithStyle:a3 reuseIdentifier:a4];
  if (v4)
  {
    v5 = +[CKUIBehavior sharedBehaviors];
    v6 = [v5 theme];
    v7 = [v6 detailsCellStaticTextColor];
    v8 = [(CKDetailsChatOptionsCell *)v4 textLabel];
    [v8 setTextColor:v7];

    v9 = [(CKDetailsChatOptionsCell *)v4 textLabel];
    [v9 setNumberOfLines:0];

    v10 = [(CKDetailsChatOptionsCell *)v4 textLabel];
    [v10 setLineBreakMode:0];

    [(CKDetailsChatOptionsCell *)v4 _configureNewControlSwitch];
    v22 = MEMORY[0x1E696ACD8];
    v29 = [(CKDetailsChatOptionsCell *)v4 textLabel];
    v28 = [v29 leadingAnchor];
    v27 = [(CKDetailsChatOptionsCell *)v4 leadingAnchor];
    v26 = [v28 constraintEqualToAnchor:v27];
    v31[0] = v26;
    v25 = [(CKDetailsChatOptionsCell *)v4 textLabel];
    v24 = [v25 trailingAnchor];
    v23 = [(CKDetailsChatOptionsCell *)v4 trailingAnchor];
    v21 = [v24 constraintEqualToAnchor:v23];
    v31[1] = v21;
    v11 = [(CKDetailsChatOptionsCell *)v4 textLabel];
    v12 = [v11 topAnchor];
    v13 = [(CKDetailsChatOptionsCell *)v4 topAnchor];
    v14 = [v12 constraintEqualToAnchor:v13];
    v31[2] = v14;
    v15 = [(CKDetailsChatOptionsCell *)v4 textLabel];
    v16 = [v15 bottomAnchor];
    v17 = [(CKDetailsChatOptionsCell *)v4 bottomAnchor];
    v18 = [v16 constraintEqualToAnchor:v17];
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

  v7 = [(CKDetailsChatOptionsCell *)self controlSwitch];
  [(CKDetailsChatOptionsCell *)self setAccessoryView:v7];
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = CKDetailsChatOptionsCell;
  [(CKDetailsCell *)&v3 prepareForReuse];
  [(CKDetailsChatOptionsCell *)self _configureNewControlSwitch];
}

@end