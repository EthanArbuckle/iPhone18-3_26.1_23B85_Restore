@interface MediaControlsLanguageOptionTableViewCell
- (MediaControlsLanguageOptionTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
@end

@implementation MediaControlsLanguageOptionTableViewCell

- (MediaControlsLanguageOptionTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v12.receiver = self;
  v12.super_class = MediaControlsLanguageOptionTableViewCell;
  v4 = [(MPAVClippingTableViewCell *)&v12 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(MediaControlsLanguageOptionTableViewCell *)v4 setBackgroundColor:clearColor];

    v6 = objc_alloc_init(MEMORY[0x1E69DD250]);
    [(MediaControlsLanguageOptionTableViewCell *)v4 setSelectedBackgroundView:v6];

    v7 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.5];
    selectedBackgroundView = [(MediaControlsLanguageOptionTableViewCell *)v4 selectedBackgroundView];
    [selectedBackgroundView setBackgroundColor:v7];

    v9 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
    textLabel = [(MediaControlsLanguageOptionTableViewCell *)v4 textLabel];
    [textLabel setFont:v9];
  }

  return v4;
}

@end