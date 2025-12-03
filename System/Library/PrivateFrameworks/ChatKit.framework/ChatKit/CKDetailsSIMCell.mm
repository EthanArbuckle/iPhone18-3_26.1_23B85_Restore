@interface CKDetailsSIMCell
+ (double)preferredHeight;
- (CKDetailsSIMCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (CKDetailsSIMCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier simLabelText:(id)text badgeText:(id)badgeText;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setMenu:(id)menu;
- (void)setSIMLabelText:(id)text badgeText:(id)badgeText;
@end

@implementation CKDetailsSIMCell

+ (double)preferredHeight
{
  HasMultipleActiveSubscriptions = IMSharedHelperDeviceHasMultipleActiveSubscriptions();
  result = 44.0;
  if (!HasMultipleActiveSubscriptions)
  {
    return 0.0;
  }

  return result;
}

- (CKDetailsSIMCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier simLabelText:(id)text badgeText:(id)badgeText
{
  v82[8] = *MEMORY[0x1E69E9840];
  textCopy = text;
  badgeTextCopy = badgeText;
  v80.receiver = self;
  v80.super_class = CKDetailsSIMCell;
  v12 = [(CKDetailsCell *)&v80 initWithStyle:style reuseIdentifier:identifier];
  v13 = v12;
  if (v12)
  {
    [(CKDetailsSIMCell *)v12 setSelectionStyle:0];
    textLabel = [(CKDetailsSIMCell *)v13 textLabel];
    v15 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
    [textLabel setFont:v15];

    textLabel2 = [(CKDetailsSIMCell *)v13 textLabel];
    [textLabel2 setNumberOfLines:0];

    textLabel3 = [(CKDetailsSIMCell *)v13 textLabel];
    [textLabel3 setLineBreakMode:4];

    textLabel4 = [(CKDetailsSIMCell *)v13 textLabel];
    [textLabel4 setTranslatesAutoresizingMaskIntoConstraints:0];

    contentView = [(CKDetailsSIMCell *)v13 contentView];
    [contentView setBackgroundColor:0];

    v20 = objc_alloc_init(CKComposeSubscriptionSelectorButton);
    [(CKDetailsSIMCell *)v13 setButton:v20];

    button = [(CKDetailsSIMCell *)v13 button];
    [button setBackgroundColor:0];

    button2 = [(CKDetailsSIMCell *)v13 button];
    v78 = badgeTextCopy;
    v79 = textCopy;
    [button2 updateContentsWithTitle:textCopy badgeText:badgeTextCopy theme:1];

    button3 = [(CKDetailsSIMCell *)v13 button];
    [(CKDetailsSIMCell *)v13 addSubview:button3];

    mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
    userInterfaceLayoutDirection = [mEMORY[0x1E69DC668] userInterfaceLayoutDirection];

    v69 = MEMORY[0x1E696ACD8];
    textLabel5 = [(CKDetailsSIMCell *)v13 textLabel];
    v77 = textLabel5;
    if (userInterfaceLayoutDirection == 1)
    {
      rightAnchor = [textLabel5 rightAnchor];
      rightAnchor2 = [(CKDetailsSIMCell *)v13 rightAnchor];
      v76 = rightAnchor;
      v74 = [rightAnchor constraintEqualToAnchor:-18.0 constant:?];
      v81[0] = v74;
      textLabel6 = [(CKDetailsSIMCell *)v13 textLabel];
      topAnchor = [textLabel6 topAnchor];
      topAnchor2 = [(CKDetailsSIMCell *)v13 topAnchor];
      v72 = topAnchor;
      v70 = [topAnchor constraintEqualToAnchor:?];
      v81[1] = v70;
      textLabel7 = [(CKDetailsSIMCell *)v13 textLabel];
      bottomAnchor = [textLabel7 bottomAnchor];
      bottomAnchor2 = [(CKDetailsSIMCell *)v13 bottomAnchor];
      v67 = bottomAnchor;
      v65 = [bottomAnchor constraintEqualToAnchor:?];
      v81[2] = v65;
      button4 = [(CKDetailsSIMCell *)v13 button];
      centerXAnchor = [button4 centerXAnchor];
      leftAnchor = [(CKDetailsSIMCell *)v13 leftAnchor];
      [(CKDetailsSIMCell *)v13 bounds];
      button9 = leftAnchor;
      v63 = centerXAnchor;
      v61 = [centerXAnchor constraintEqualToAnchor:leftAnchor constant:v32 * 0.25];
      v81[3] = v61;
      button5 = [(CKDetailsSIMCell *)v13 button];
      leftAnchor2 = [button5 leftAnchor];
      leftAnchor3 = [(CKDetailsSIMCell *)v13 leftAnchor];
      button10 = leftAnchor2;
      centerYAnchor2 = [leftAnchor2 constraintEqualToAnchor:18.0 constant:?];
      v81[4] = centerYAnchor2;
      button6 = [(CKDetailsSIMCell *)v13 button];
      topAnchor3 = [button6 topAnchor];
      topAnchor4 = [(CKDetailsSIMCell *)v13 topAnchor];
      button11 = topAnchor3;
      rightAnchor6 = [topAnchor3 constraintEqualToAnchor:5.0 constant:?];
      v81[5] = rightAnchor6;
      button7 = [(CKDetailsSIMCell *)v13 button];
      bottomAnchor3 = [button7 bottomAnchor];
      bottomAnchor4 = [(CKDetailsSIMCell *)v13 bottomAnchor];
      topAnchor6 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:-5.0];
      v81[6] = topAnchor6;
      textLabel8 = [(CKDetailsSIMCell *)v13 textLabel];
      leftAnchor4 = [textLabel8 leftAnchor];
      button8 = [(CKDetailsSIMCell *)v13 button];
      rightAnchor3 = [button8 rightAnchor];
      v42 = [leftAnchor4 constraintEqualToAnchor:rightAnchor3 constant:5.0];
      v81[7] = v42;
      v43 = v81;
    }

    else
    {
      leftAnchor5 = [textLabel5 leftAnchor];
      rightAnchor2 = [(CKDetailsSIMCell *)v13 leftAnchor];
      v76 = leftAnchor5;
      v74 = [leftAnchor5 constraintEqualToAnchor:18.0 constant:?];
      v82[0] = v74;
      textLabel6 = [(CKDetailsSIMCell *)v13 textLabel];
      topAnchor5 = [textLabel6 topAnchor];
      topAnchor2 = [(CKDetailsSIMCell *)v13 topAnchor];
      v72 = topAnchor5;
      v70 = [topAnchor5 constraintEqualToAnchor:?];
      v82[1] = v70;
      textLabel7 = [(CKDetailsSIMCell *)v13 textLabel];
      bottomAnchor5 = [textLabel7 bottomAnchor];
      bottomAnchor2 = [(CKDetailsSIMCell *)v13 bottomAnchor];
      v67 = bottomAnchor5;
      v65 = [bottomAnchor5 constraintEqualToAnchor:?];
      v82[2] = v65;
      button4 = [(CKDetailsSIMCell *)v13 textLabel];
      rightAnchor4 = [button4 rightAnchor];
      button9 = [(CKDetailsSIMCell *)v13 button];
      [button9 leftAnchor];
      v61 = v63 = rightAnchor4;
      button5 = [rightAnchor4 constraintEqualToAnchor:-5.0 constant:?];
      v82[3] = button5;
      button10 = [(CKDetailsSIMCell *)v13 button];
      centerYAnchor = [button10 centerYAnchor];
      centerYAnchor2 = [(CKDetailsSIMCell *)v13 centerYAnchor];
      leftAnchor3 = centerYAnchor;
      button6 = [centerYAnchor constraintEqualToAnchor:?];
      v82[4] = button6;
      button11 = [(CKDetailsSIMCell *)v13 button];
      rightAnchor5 = [button11 rightAnchor];
      rightAnchor6 = [(CKDetailsSIMCell *)v13 rightAnchor];
      topAnchor4 = rightAnchor5;
      button7 = [rightAnchor5 constraintEqualToAnchor:-18.0 constant:?];
      v82[5] = button7;
      bottomAnchor3 = [(CKDetailsSIMCell *)v13 button];
      bottomAnchor4 = [bottomAnchor3 topAnchor];
      topAnchor6 = [(CKDetailsSIMCell *)v13 topAnchor];
      textLabel8 = [bottomAnchor4 constraintEqualToAnchor:topAnchor6 constant:5.0];
      v82[6] = textLabel8;
      leftAnchor4 = [(CKDetailsSIMCell *)v13 button];
      button8 = [leftAnchor4 bottomAnchor];
      rightAnchor3 = [(CKDetailsSIMCell *)v13 bottomAnchor];
      v42 = [button8 constraintEqualToAnchor:rightAnchor3 constant:-5.0];
      v82[7] = v42;
      v43 = v82;
    }

    v50 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:8];
    [v69 activateConstraints:v50];

    badgeTextCopy = v78;
    textCopy = v79;
  }

  return v13;
}

- (CKDetailsSIMCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v32[4] = *MEMORY[0x1E69E9840];
  v31.receiver = self;
  v31.super_class = CKDetailsSIMCell;
  v4 = [(CKDetailsCell *)&v31 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(CKDetailsSIMCell *)v4 setSelectionStyle:0];
    textLabel = [(CKDetailsSIMCell *)v5 textLabel];
    v7 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
    [textLabel setFont:v7];

    textLabel2 = [(CKDetailsSIMCell *)v5 textLabel];
    [textLabel2 setNumberOfLines:0];

    textLabel3 = [(CKDetailsSIMCell *)v5 textLabel];
    [textLabel3 setLineBreakMode:4];

    textLabel4 = [(CKDetailsSIMCell *)v5 textLabel];
    [textLabel4 setTranslatesAutoresizingMaskIntoConstraints:1];

    contentView = [(CKDetailsSIMCell *)v5 contentView];
    [contentView setBackgroundColor:0];

    v23 = MEMORY[0x1E696ACD8];
    textLabel5 = [(CKDetailsSIMCell *)v5 textLabel];
    rightAnchor = [textLabel5 rightAnchor];
    rightAnchor2 = [(CKDetailsSIMCell *)v5 rightAnchor];
    v27 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
    v32[0] = v27;
    textLabel6 = [(CKDetailsSIMCell *)v5 textLabel];
    leftAnchor = [textLabel6 leftAnchor];
    leftAnchor2 = [(CKDetailsSIMCell *)v5 leftAnchor];
    v22 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
    v32[1] = v22;
    textLabel7 = [(CKDetailsSIMCell *)v5 textLabel];
    topAnchor = [textLabel7 topAnchor];
    topAnchor2 = [(CKDetailsSIMCell *)v5 topAnchor];
    v15 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v32[2] = v15;
    textLabel8 = [(CKDetailsSIMCell *)v5 textLabel];
    bottomAnchor = [textLabel8 bottomAnchor];
    bottomAnchor2 = [(CKDetailsSIMCell *)v5 bottomAnchor];
    v19 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v32[3] = v19;
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:4];
    [v23 activateConstraints:v20];
  }

  return v5;
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = CKDetailsSIMCell;
  [(CKDetailsCell *)&v5 layoutSubviews];
  topSeperator = [(CKDetailsCell *)self topSeperator];
  [topSeperator setHidden:1];

  bottomSeperator = [(CKDetailsCell *)self bottomSeperator];
  [bottomSeperator setHidden:1];
}

- (void)prepareForReuse
{
  v6.receiver = self;
  v6.super_class = CKDetailsSIMCell;
  [(CKDetailsCell *)&v6 prepareForReuse];
  textLabel = [(CKDetailsSIMCell *)self textLabel];
  [textLabel setText:&stru_1F04268F8];

  [(CKDetailsSIMCell *)self setMenu:0];
  menu = [(CKDetailsSIMCell *)self menu];
  button = [(CKDetailsSIMCell *)self button];
  [button setHidden:menu == 0];
}

- (void)setMenu:(id)menu
{
  menuCopy = menu;
  if (self->_menu != menuCopy)
  {
    v8 = menuCopy;
    objc_storeStrong(&self->_menu, menu);
    button = [(CKDetailsSIMCell *)self button];
    [button setMenu:v8];

    button2 = [(CKDetailsSIMCell *)self button];
    [button2 setHidden:v8 == 0];

    menuCopy = v8;
  }
}

- (void)setSIMLabelText:(id)text badgeText:(id)badgeText
{
  badgeTextCopy = badgeText;
  textCopy = text;
  button = [(CKDetailsSIMCell *)self button];
  [button updateContentsWithTitle:textCopy badgeText:badgeTextCopy theme:1];
}

@end