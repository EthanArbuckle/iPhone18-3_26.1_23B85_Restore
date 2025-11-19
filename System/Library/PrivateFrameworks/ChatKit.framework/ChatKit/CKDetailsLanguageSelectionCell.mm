@interface CKDetailsLanguageSelectionCell
- (CKDetailsLanguageSelectionCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation CKDetailsLanguageSelectionCell

- (CKDetailsLanguageSelectionCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v11.receiver = self;
  v11.super_class = CKDetailsLanguageSelectionCell;
  v4 = [(CKDetailsCell *)&v11 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    [(CKDetailsLanguageSelectionCell *)v4 setSelectionStyle:0];
    v6 = [(CKDetailsLanguageSelectionCell *)v5 textLabel];
    v7 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
    [v6 setFont:v7];

    v8 = [(CKDetailsLanguageSelectionCell *)v5 textLabel];
    [v8 setNumberOfLines:0];

    v9 = [(CKDetailsLanguageSelectionCell *)v5 textLabel];
    [v9 setLineBreakMode:4];
  }

  return v5;
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = CKDetailsLanguageSelectionCell;
  [(CKDetailsCell *)&v5 layoutSubviews];
  v3 = [(CKDetailsCell *)self topSeperator];
  [v3 setHidden:1];

  v4 = [(CKDetailsCell *)self bottomSeperator];
  [v4 setHidden:1];
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = CKDetailsLanguageSelectionCell;
  [(CKDetailsCell *)&v4 prepareForReuse];
  v3 = [(CKDetailsLanguageSelectionCell *)self textLabel];
  [v3 setText:&stru_1F04268F8];
}

@end