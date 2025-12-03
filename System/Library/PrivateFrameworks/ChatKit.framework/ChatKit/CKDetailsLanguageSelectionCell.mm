@interface CKDetailsLanguageSelectionCell
- (CKDetailsLanguageSelectionCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)layoutSubviews;
- (void)prepareForReuse;
@end

@implementation CKDetailsLanguageSelectionCell

- (CKDetailsLanguageSelectionCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v11.receiver = self;
  v11.super_class = CKDetailsLanguageSelectionCell;
  v4 = [(CKDetailsCell *)&v11 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(CKDetailsLanguageSelectionCell *)v4 setSelectionStyle:0];
    textLabel = [(CKDetailsLanguageSelectionCell *)v5 textLabel];
    v7 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
    [textLabel setFont:v7];

    textLabel2 = [(CKDetailsLanguageSelectionCell *)v5 textLabel];
    [textLabel2 setNumberOfLines:0];

    textLabel3 = [(CKDetailsLanguageSelectionCell *)v5 textLabel];
    [textLabel3 setLineBreakMode:4];
  }

  return v5;
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = CKDetailsLanguageSelectionCell;
  [(CKDetailsCell *)&v5 layoutSubviews];
  topSeperator = [(CKDetailsCell *)self topSeperator];
  [topSeperator setHidden:1];

  bottomSeperator = [(CKDetailsCell *)self bottomSeperator];
  [bottomSeperator setHidden:1];
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = CKDetailsLanguageSelectionCell;
  [(CKDetailsCell *)&v4 prepareForReuse];
  textLabel = [(CKDetailsLanguageSelectionCell *)self textLabel];
  [textLabel setText:&stru_1F04268F8];
}

@end