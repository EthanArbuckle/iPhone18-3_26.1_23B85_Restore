@interface HKAttributionTextView
- (HKAttributionTextView)initWithAttributedText:(id)text selectable:(BOOL)selectable;
@end

@implementation HKAttributionTextView

- (HKAttributionTextView)initWithAttributedText:(id)text selectable:(BOOL)selectable
{
  selectableCopy = selectable;
  textCopy = text;
  v14.receiver = self;
  v14.super_class = HKAttributionTextView;
  v7 = [(HKAttributionTextView *)&v14 init];
  v8 = v7;
  if (v7)
  {
    [(HKAttributionTextView *)v7 setEditable:0];
    textContainer = [(HKAttributionTextView *)v8 textContainer];
    [textContainer setLineFragmentPadding:0.0];

    [(HKAttributionTextView *)v8 setScrollEnabled:0];
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(HKAttributionTextView *)v8 setBackgroundColor:clearColor];

    [(HKAttributionTextView *)v8 setAttributedText:textCopy];
    v11 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD28]];
    [(HKAttributionTextView *)v8 setFont:v11];

    if (selectableCopy)
    {
      [(HKAttributionTextView *)v8 setSelectable:1];
      HKHealthKeyColor();
    }

    else
    {
      [(HKAttributionTextView *)v8 setSelectable:0];
      [MEMORY[0x1E69DC888] secondaryLabelColor];
    }
    v12 = ;
    [(HKAttributionTextView *)v8 setTextColor:v12];
  }

  return v8;
}

@end