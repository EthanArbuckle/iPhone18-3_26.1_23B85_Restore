@interface CKDetailsSharedWithYouCell
- (CKDetailsSharedWithYouCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (UISwitch)controlSwitch;
- (void)_configureNewControlSwitch;
- (void)prepareForReuse;
@end

@implementation CKDetailsSharedWithYouCell

- (CKDetailsSharedWithYouCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v32[4] = *MEMORY[0x1E69E9840];
  v31.receiver = self;
  v31.super_class = CKDetailsSharedWithYouCell;
  v4 = [(CKDetailsCell *)&v31 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    v6 = [(CKDetailsSharedWithYouCell *)v4 textLabel];
    v7 = +[CKUIBehavior sharedBehaviors];
    v8 = [v7 theme];
    v9 = [v8 detailsCellStaticTextColor];
    [v6 setTextColor:v9];

    v10 = [(CKDetailsSharedWithYouCell *)v5 textLabel];
    [v10 setNumberOfLines:0];

    v11 = [(CKDetailsSharedWithYouCell *)v5 textLabel];
    [v11 setLineBreakMode:0];

    [(CKDetailsSharedWithYouCell *)v5 _configureNewControlSwitch];
    v23 = MEMORY[0x1E696ACD8];
    v30 = [(CKDetailsSharedWithYouCell *)v5 textLabel];
    v29 = [v30 leadingAnchor];
    v28 = [(CKDetailsSharedWithYouCell *)v5 leadingAnchor];
    v27 = [v29 constraintEqualToAnchor:v28];
    v32[0] = v27;
    v26 = [(CKDetailsSharedWithYouCell *)v5 textLabel];
    v25 = [v26 trailingAnchor];
    v24 = [(CKDetailsSharedWithYouCell *)v5 trailingAnchor];
    v22 = [v25 constraintEqualToAnchor:v24];
    v32[1] = v22;
    v12 = [(CKDetailsSharedWithYouCell *)v5 textLabel];
    v13 = [v12 topAnchor];
    v14 = [(CKDetailsSharedWithYouCell *)v5 topAnchor];
    v15 = [v13 constraintEqualToAnchor:v14];
    v32[2] = v15;
    v16 = [(CKDetailsSharedWithYouCell *)v5 textLabel];
    v17 = [v16 bottomAnchor];
    v18 = [(CKDetailsSharedWithYouCell *)v5 bottomAnchor];
    v19 = [v17 constraintEqualToAnchor:v18];
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

  v7 = [(CKDetailsSharedWithYouCell *)self controlSwitch];
  [(CKDetailsSharedWithYouCell *)self setAccessoryView:v7];
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = CKDetailsSharedWithYouCell;
  [(CKDetailsCell *)&v3 prepareForReuse];
  [(CKDetailsSharedWithYouCell *)self _configureNewControlSwitch];
}

@end