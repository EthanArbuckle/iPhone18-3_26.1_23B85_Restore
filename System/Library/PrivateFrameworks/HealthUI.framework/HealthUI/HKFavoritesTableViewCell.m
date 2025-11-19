@interface HKFavoritesTableViewCell
- (BOOL)isFavorited;
- (HKFavoritesTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)setFavorited:(BOOL)a3;
@end

@implementation HKFavoritesTableViewCell

- (HKFavoritesTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v23.receiver = self;
  v23.super_class = HKFavoritesTableViewCell;
  v4 = [(HKFavoritesTableViewCell *)&v23 initWithStyle:a3 reuseIdentifier:a4];
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
    v12 = [MEMORY[0x1E69DC888] systemYellowColor];
    [(UIImageView *)v4->_pin setTintColor:v12];

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
    v19 = [MEMORY[0x1E69DC888] systemGray3Color];
    [(UIImageView *)v4->_unpin setTintColor:v19];

    [(HKFavoritesTableViewCell *)v4 setSelectionStyle:0];
    v20 = [MEMORY[0x1E69DB878] hk_preferredFontForTextStyle:v8];
    v21 = [(HKFavoritesTableViewCell *)v4 textLabel];
    [v21 setFont:v20];

    [(HKFavoritesTableViewCell *)v4 setAccessoryView:v4->_pin];
  }

  return v4;
}

- (BOOL)isFavorited
{
  v2 = self;
  v3 = [(HKFavoritesTableViewCell *)self accessoryView];
  LOBYTE(v2) = v3 == v2->_unpin;

  return v2;
}

- (void)setFavorited:(BOOL)a3
{
  v4 = &OBJC_IVAR___HKFavoritesTableViewCell__pin;
  if (a3)
  {
    v4 = &OBJC_IVAR___HKFavoritesTableViewCell__unpin;
    v5 = @"UNPIN_FROM_BROWSE";
  }

  else
  {
    v5 = @"PIN_TO_BROWSE";
  }

  if (a3)
  {
    v6 = @"UNPIN_FROM_SUMMARY";
  }

  else
  {
    v6 = @"PIN_TO_SUMMARY";
  }

  [(HKFavoritesTableViewCell *)self setAccessoryView:*(&self->super.super.super.super.isa + *v4)];
  v7 = [MEMORY[0x1E696C608] sharedBehavior];
  v8 = [v7 features];
  v9 = [v8 isPinnedInBrowse];

  v10 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v14 = v10;
  if (v9)
  {
    v11 = v5;
  }

  else
  {
    v11 = v6;
  }

  v12 = [v10 localizedStringForKey:v11 value:&stru_1F42FFBE0 table:@"HealthUI-Localizable"];
  v13 = [(HKFavoritesTableViewCell *)self textLabel];
  [v13 setText:v12];
}

@end