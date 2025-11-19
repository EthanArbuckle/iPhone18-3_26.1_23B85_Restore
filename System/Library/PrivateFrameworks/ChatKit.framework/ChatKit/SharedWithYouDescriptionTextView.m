@interface SharedWithYouDescriptionTextView
- (_TtC7ChatKit32SharedWithYouDescriptionTextView)initWithFrame:(CGRect)a3 textContainer:(id)a4;
- (id)textView:(id)a3 primaryActionForTextItem:(id)a4 defaultAction:(id)a5;
@end

@implementation SharedWithYouDescriptionTextView

- (_TtC7ChatKit32SharedWithYouDescriptionTextView)initWithFrame:(CGRect)a3 textContainer:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  sub_190C69204(a4, x, y, width, height);
  return result;
}

- (id)textView:(id)a3 primaryActionForTextItem:(id)a4 defaultAction:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  v12 = sub_190C6A198(v9, v10);

  return v12;
}

@end