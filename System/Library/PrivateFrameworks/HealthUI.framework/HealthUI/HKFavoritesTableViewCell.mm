@interface HKFavoritesTableViewCell
- (BOOL)isFavorited;
- (HKFavoritesTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)setFavorited:(BOOL)favorited;
@end

@implementation HKFavoritesTableViewCell

- (HKFavoritesTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v23.receiver = self;
  v23.super_class = HKFavoritesTableViewCell;
  v4 = [(HKFavoritesTableViewCell *)&v23 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    pin = v4->_pin;
    v4->_pin = v5;

    v7 = MEMORY[0x1E69DCAD8];
    v8 = *MEMORY[0x1E69DDCF8];
    v9 = [MEMORY[0x1E69DB878] hk_preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
    v10 = [v7 configurationWithFont:v9];
    [(UIImageView *)v4->_pin setPreferredSymbolConfiguration:v10];

    v11 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"pin.circle.fill"];
    [(UIImageView *)v4->_pin setImage:v11];

    [(UIImageView *)v4->_pin setAdjustsImageSizeForAccessibilityContentSizeCategory:1];
    systemYellowColor = [MEMORY[0x1E69DC888] systemYellowColor];
    [(UIImageView *)v4->_pin setTintColor:systemYellowColor];

    v13 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    unpin = v4->_unpin;
    v4->_unpin = v13;

    v15 = MEMORY[0x1E69DCAD8];
    v16 = [MEMORY[0x1E69DB878] hk_preferredFontForTextStyle:v8];
    v17 = [v15 configurationWithFont:v16];
    [(UIImageView *)v4->_unpin setPreferredSymbolConfiguration:v17];

    v18 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"minus.circle.fill"];
    [(UIImageView *)v4->_unpin setImage:v18];

    [(UIImageView *)v4->_unpin setAdjustsImageSizeForAccessibilityContentSizeCategory:1];
    systemGray3Color = [MEMORY[0x1E69DC888] systemGray3Color];
    [(UIImageView *)v4->_unpin setTintColor:systemGray3Color];

    [(HKFavoritesTableViewCell *)v4 setSelectionStyle:0];
    v20 = [MEMORY[0x1E69DB878] hk_preferredFontForTextStyle:v8];
    textLabel = [(HKFavoritesTableViewCell *)v4 textLabel];
    [textLabel setFont:v20];

    [(HKFavoritesTableViewCell *)v4 setAccessoryView:v4->_pin];
  }

  return v4;
}

- (BOOL)isFavorited
{
  selfCopy = self;
  accessoryView = [(HKFavoritesTableViewCell *)self accessoryView];
  LOBYTE(selfCopy) = accessoryView == selfCopy->_unpin;

  return selfCopy;
}

- (void)setFavorited:(BOOL)favorited
{
  v4 = &OBJC_IVAR___HKFavoritesTableViewCell__pin;
  if (favorited)
  {
    v4 = &OBJC_IVAR___HKFavoritesTableViewCell__unpin;
    v5 = @"UNPIN_FROM_BROWSE";
  }

  else
  {
    v5 = @"PIN_TO_BROWSE";
  }

  if (favorited)
  {
    v6 = @"UNPIN_FROM_SUMMARY";
  }

  else
  {
    v6 = @"PIN_TO_SUMMARY";
  }

  [(HKFavoritesTableViewCell *)self setAccessoryView:*(&self->super.super.super.super.isa + *v4)];
  mEMORY[0x1E696C608] = [MEMORY[0x1E696C608] sharedBehavior];
  features = [mEMORY[0x1E696C608] features];
  isPinnedInBrowse = [features isPinnedInBrowse];

  v10 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v14 = v10;
  if (isPinnedInBrowse)
  {
    v11 = v5;
  }

  else
  {
    v11 = v6;
  }

  v12 = [v10 localizedStringForKey:v11 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  textLabel = [(HKFavoritesTableViewCell *)self textLabel];
  [textLabel setText:v12];
}

@end