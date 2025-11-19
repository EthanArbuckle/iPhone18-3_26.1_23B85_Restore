@interface _UIShareDetailTableViewLinkCell
- (_UIShareDetailTableViewLinkCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)copyLink:(id)a3;
@end

@implementation _UIShareDetailTableViewLinkCell

- (_UIShareDetailTableViewLinkCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v14.receiver = self;
  v14.super_class = _UIShareDetailTableViewLinkCell;
  v4 = [(_UIShareDetailTableViewLinkCell *)&v14 initWithStyle:1 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    v6 = [(_UIShareDetailTableViewLinkCell *)v4 textLabel];
    [v6 setTextAlignment:4];

    v7 = [(_UIShareDetailTableViewLinkCell *)v5 textLabel];
    [v7 setLineBreakMode:5];

    v8 = +[UIColor secondaryLabelColor];
    v9 = [(_UIShareDetailTableViewLinkCell *)v5 textLabel];
    [v9 setTextColor:v8];

    v10 = [UIFont preferredFontForTextStyle:UIFontTextStyleFootnote];
    v11 = [(_UIShareDetailTableViewLinkCell *)v5 textLabel];
    [v11 setFont:v10];

    v12 = [(_UIShareDetailTableViewLinkCell *)v5 textLabel];
    [v12 setAdjustsFontForContentSizeCategory:1];
  }

  return v5;
}

- (void)copyLink:(id)a3
{
  v6 = +[UIPasteboard generalPasteboard];
  v4 = [(_UIShareDetailTableViewLinkCell *)self textLabel];
  v5 = [v4 text];
  [v6 setValue:v5 forPasteboardType:kUTTypeURL];
}

@end