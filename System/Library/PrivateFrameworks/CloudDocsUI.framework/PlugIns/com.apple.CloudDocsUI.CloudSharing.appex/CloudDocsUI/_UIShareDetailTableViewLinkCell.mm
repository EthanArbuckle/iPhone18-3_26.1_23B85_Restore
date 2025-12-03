@interface _UIShareDetailTableViewLinkCell
- (_UIShareDetailTableViewLinkCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)copyLink:(id)link;
@end

@implementation _UIShareDetailTableViewLinkCell

- (_UIShareDetailTableViewLinkCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v14.receiver = self;
  v14.super_class = _UIShareDetailTableViewLinkCell;
  v4 = [(_UIShareDetailTableViewLinkCell *)&v14 initWithStyle:1 reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    textLabel = [(_UIShareDetailTableViewLinkCell *)v4 textLabel];
    [textLabel setTextAlignment:4];

    textLabel2 = [(_UIShareDetailTableViewLinkCell *)v5 textLabel];
    [textLabel2 setLineBreakMode:5];

    v8 = +[UIColor secondaryLabelColor];
    textLabel3 = [(_UIShareDetailTableViewLinkCell *)v5 textLabel];
    [textLabel3 setTextColor:v8];

    v10 = [UIFont preferredFontForTextStyle:UIFontTextStyleFootnote];
    textLabel4 = [(_UIShareDetailTableViewLinkCell *)v5 textLabel];
    [textLabel4 setFont:v10];

    textLabel5 = [(_UIShareDetailTableViewLinkCell *)v5 textLabel];
    [textLabel5 setAdjustsFontForContentSizeCategory:1];
  }

  return v5;
}

- (void)copyLink:(id)link
{
  v6 = +[UIPasteboard generalPasteboard];
  textLabel = [(_UIShareDetailTableViewLinkCell *)self textLabel];
  text = [textLabel text];
  [v6 setValue:text forPasteboardType:kUTTypeURL];
}

@end