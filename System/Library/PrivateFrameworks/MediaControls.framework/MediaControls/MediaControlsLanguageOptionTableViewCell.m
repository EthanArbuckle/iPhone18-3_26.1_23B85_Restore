@interface MediaControlsLanguageOptionTableViewCell
- (MediaControlsLanguageOptionTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
@end

@implementation MediaControlsLanguageOptionTableViewCell

- (MediaControlsLanguageOptionTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v12.receiver = self;
  v12.super_class = MediaControlsLanguageOptionTableViewCell;
  v4 = [(MPAVClippingTableViewCell *)&v12 initWithStyle:a3 reuseIdentifier:a4];
  if (v4)
  {
    v5 = [MEMORY[0x1E69DC888] clearColor];
    [(MediaControlsLanguageOptionTableViewCell *)v4 setBackgroundColor:v5];

    v6 = objc_alloc_init(MEMORY[0x1E69DD250]);
    [(MediaControlsLanguageOptionTableViewCell *)v4 setSelectedBackgroundView:v6];

    v7 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.5];
    v8 = [(MediaControlsLanguageOptionTableViewCell *)v4 selectedBackgroundView];
    [v8 setBackgroundColor:v7];

    v9 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
    v10 = [(MediaControlsLanguageOptionTableViewCell *)v4 textLabel];
    [v10 setFont:v9];
  }

  return v4;
}

@end