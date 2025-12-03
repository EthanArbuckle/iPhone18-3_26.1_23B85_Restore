@interface CKDetailsLocationShareCell
- (CKDetailsLocationShareCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (id)timeStringForTimeInterval:(double)interval;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setMenu:(id)menu;
- (void)setOfferTimeRemaining:(double)remaining;
- (void)setShowOfferTimeRemaining:(BOOL)remaining;
@end

@implementation CKDetailsLocationShareCell

- (CKDetailsLocationShareCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v41[4] = *MEMORY[0x1E69E9840];
  v40.receiver = self;
  v40.super_class = CKDetailsLocationShareCell;
  v4 = [(CKTranscriptDetailsResizableCell *)&v40 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    detailTextLabel = [(CKDetailsLocationShareCell *)v4 detailTextLabel];
    [(CKDetailsLocationShareCell *)v5 setTimeRemainingLabel:detailTextLabel];

    timeRemainingLabel = [(CKDetailsLocationShareCell *)v5 timeRemainingLabel];
    v8 = +[CKUIBehavior sharedBehaviors];
    theme = [v8 theme];
    secondaryLabelColor = [theme secondaryLabelColor];
    [timeRemainingLabel setTextColor:secondaryLabelColor];

    textLabel = [(CKDetailsLocationShareCell *)v5 textLabel];
    [textLabel setNumberOfLines:0];

    textLabel2 = [(CKDetailsLocationShareCell *)v5 textLabel];
    [textLabel2 setLineBreakMode:0];

    v13 = objc_alloc_init(CKStandardButton);
    [(CKDetailsLocationShareCell *)v5 setButton:v13];

    button = [(CKDetailsLocationShareCell *)v5 button];
    [button setTranslatesAutoresizingMaskIntoConstraints:0];

    button2 = [(CKDetailsLocationShareCell *)v5 button];
    [button2 setContextMenuIsPrimary:1];

    menu = [(CKDetailsLocationShareCell *)v5 menu];
    button3 = [(CKDetailsLocationShareCell *)v5 button];
    [button3 setMenu:menu];

    menu2 = [(CKDetailsLocationShareCell *)v5 menu];
    button4 = [(CKDetailsLocationShareCell *)v5 button];
    [button4 setHidden:menu2 == 0];

    button5 = [(CKDetailsLocationShareCell *)v5 button];
    [(CKDetailsLocationShareCell *)v5 addSubview:button5];

    v32 = MEMORY[0x1E696ACD8];
    button6 = [(CKDetailsLocationShareCell *)v5 button];
    leftAnchor = [button6 leftAnchor];
    leftAnchor2 = [(CKDetailsLocationShareCell *)v5 leftAnchor];
    v36 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
    v41[0] = v36;
    button7 = [(CKDetailsLocationShareCell *)v5 button];
    rightAnchor = [button7 rightAnchor];
    rightAnchor2 = [(CKDetailsLocationShareCell *)v5 rightAnchor];
    v31 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
    v41[1] = v31;
    button8 = [(CKDetailsLocationShareCell *)v5 button];
    topAnchor = [button8 topAnchor];
    topAnchor2 = [(CKDetailsLocationShareCell *)v5 topAnchor];
    v24 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v41[2] = v24;
    button9 = [(CKDetailsLocationShareCell *)v5 button];
    bottomAnchor = [button9 bottomAnchor];
    bottomAnchor2 = [(CKDetailsLocationShareCell *)v5 bottomAnchor];
    v28 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v41[3] = v28;
    v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:4];
    [v32 activateConstraints:v29];
  }

  return v5;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = CKDetailsLocationShareCell;
  [(CKDetailsCell *)&v4 layoutSubviews];
  timeRemainingLabel = [(CKDetailsLocationShareCell *)self timeRemainingLabel];
  [timeRemainingLabel setHidden:{-[CKDetailsLocationShareCell showOfferTimeRemaining](self, "showOfferTimeRemaining") ^ 1}];
}

- (void)prepareForReuse
{
  v7.receiver = self;
  v7.super_class = CKDetailsLocationShareCell;
  [(CKDetailsCell *)&v7 prepareForReuse];
  [(CKDetailsLocationShareCell *)self setShowOfferTimeRemaining:0];
  timeRemainingLabel = [(CKDetailsLocationShareCell *)self timeRemainingLabel];
  [timeRemainingLabel setText:&stru_1F04268F8];

  textLabel = [(CKDetailsLocationShareCell *)self textLabel];
  [textLabel setText:&stru_1F04268F8];

  [(CKDetailsLocationShareCell *)self setMenu:0];
  menu = [(CKDetailsLocationShareCell *)self menu];
  button = [(CKDetailsLocationShareCell *)self button];
  [button setHidden:menu == 0];
}

- (void)setMenu:(id)menu
{
  menuCopy = menu;
  if (self->_menu != menuCopy)
  {
    v8 = menuCopy;
    objc_storeStrong(&self->_menu, menu);
    button = [(CKDetailsLocationShareCell *)self button];
    [button setMenu:v8];

    button2 = [(CKDetailsLocationShareCell *)self button];
    [button2 setHidden:v8 == 0];

    menuCopy = v8;
  }
}

- (void)setShowOfferTimeRemaining:(BOOL)remaining
{
  if (self->_showOfferTimeRemaining != remaining)
  {
    self->_showOfferTimeRemaining = remaining;
    [(CKDetailsLocationShareCell *)self setNeedsLayout];
  }
}

- (void)setOfferTimeRemaining:(double)remaining
{
  if (self->_offerTimeRemaining != remaining)
  {
    self->_offerTimeRemaining = remaining;
    if ([(CKDetailsLocationShareCell *)self showOfferTimeRemaining])
    {
      timeRemainingLabel = [(CKDetailsLocationShareCell *)self timeRemainingLabel];
      v6 = [(CKDetailsLocationShareCell *)self timeStringForTimeInterval:remaining];
      [timeRemainingLabel setText:v6];

      [(CKDetailsLocationShareCell *)self setNeedsLayout];
    }
  }
}

- (id)timeStringForTimeInterval:(double)interval
{
  intervalCopy = interval;
  if ((interval + 3599) >= 0x1C1F)
  {
    v4 = intervalCopy / 3600;
    v5 = MEMORY[0x1E696AEC0];
    v6 = CKFrameworkBundle();
    v7 = v6;
    v8 = @"OFFER_TIME_REMAINING_HOURS";
    goto LABEL_5;
  }

  v4 = intervalCopy / 60 % 60;
  if (v4)
  {
    v5 = MEMORY[0x1E696AEC0];
    v6 = CKFrameworkBundle();
    v7 = v6;
    v8 = @"OFFER_TIME_REMAINING_MINUTES";
LABEL_5:
    v9 = [v6 localizedStringForKey:v8 value:&stru_1F04268F8 table:@"ChatKit"];
    v10 = [MEMORY[0x1E696AD98] numberWithInteger:v4];
    v11 = CKLocalizedStringForNumber(v10);
    v12 = [v5 stringWithFormat:v9, v11];

    mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
    userInterfaceLayoutDirection = [mEMORY[0x1E69DC668] userInterfaceLayoutDirection];

    if (userInterfaceLayoutDirection == 1)
    {
      v15 = @"\u200F";
    }

    else
    {
      v15 = @"\u200E";
    }

    v16 = [(__CFString *)v15 stringByAppendingString:v12];
    goto LABEL_9;
  }

  v12 = CKFrameworkBundle();
  v16 = [v12 localizedStringForKey:@"OFFER_TIME_REMAINING_LESS_THAN_ONE_MINUTE" value:&stru_1F04268F8 table:@"ChatKit"];
LABEL_9:
  v17 = v16;

  return v17;
}

@end