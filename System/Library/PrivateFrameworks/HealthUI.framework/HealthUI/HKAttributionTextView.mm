@interface HKAttributionTextView
- (HKAttributionTextView)initWithAttributedText:(id)a3 selectable:(BOOL)a4;
@end

@implementation HKAttributionTextView

- (HKAttributionTextView)initWithAttributedText:(id)a3 selectable:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v14.receiver = self;
  v14.super_class = HKAttributionTextView;
  v7 = [(HKAttributionTextView *)&v14 init];
  v8 = v7;
  if (v7)
  {
    [(HKAttributionTextView *)v7 setEditable:0];
    v9 = [(HKAttributionTextView *)v8 textContainer];
    [v9 setLineFragmentPadding:0.0];

    [(HKAttributionTextView *)v8 setScrollEnabled:0];
    v10 = [MEMORY[0x1E69DC888] clearColor];
    [(HKAttributionTextView *)v8 setBackgroundColor:v10];

    [(HKAttributionTextView *)v8 setAttributedText:v6];
    v11 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD28]];
    [(HKAttributionTextView *)v8 setFont:v11];

    if (v4)
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