@interface TapbackPickerImageShapeView.TapbackPickerImageView
- (BOOL)_shouldAnimatePropertyWithKey:(id)a3;
- (_TtCC7ChatKit27TapbackPickerImageShapeView22TapbackPickerImageView)initWithCoder:(id)a3;
- (_TtCC7ChatKit27TapbackPickerImageShapeView22TapbackPickerImageView)initWithFrame:(CGRect)a3;
- (_TtCC7ChatKit27TapbackPickerImageShapeView22TapbackPickerImageView)initWithImage:(id)a3;
- (_TtCC7ChatKit27TapbackPickerImageShapeView22TapbackPickerImageView)initWithImage:(id)a3 highlightedImage:(id)a4;
@end

@implementation TapbackPickerImageShapeView.TapbackPickerImageView

- (_TtCC7ChatKit27TapbackPickerImageShapeView22TapbackPickerImageView)initWithCoder:(id)a3
{
  result = sub_190D58510();
  __break(1u);
  return result;
}

- (_TtCC7ChatKit27TapbackPickerImageShapeView22TapbackPickerImageView)initWithImage:(id)a3
{
  v11.receiver = self;
  v11.super_class = type metadata accessor for TapbackPickerImageShapeView.TapbackPickerImageView();
  v4 = a3;
  v5 = [(TapbackPickerImageShapeView.TapbackPickerImageView *)&v11 initWithImage:v4];
  v6 = *MEMORY[0x1E6979928];
  v7 = objc_allocWithZone(MEMORY[0x1E6979378]);
  v8 = v5;
  v9 = [v7 initWithType_];
  sub_190A86CA4(v9);

  return v8;
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)a3
{
  if (a3)
  {
    v4 = sub_190D56F10();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = self;
  v8 = sub_190C7E704(v4, v6);

  return v8 & 1;
}

- (_TtCC7ChatKit27TapbackPickerImageShapeView22TapbackPickerImageView)initWithImage:(id)a3 highlightedImage:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtCC7ChatKit27TapbackPickerImageShapeView22TapbackPickerImageView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end