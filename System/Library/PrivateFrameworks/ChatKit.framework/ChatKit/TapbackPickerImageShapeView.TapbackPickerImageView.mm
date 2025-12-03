@interface TapbackPickerImageShapeView.TapbackPickerImageView
- (BOOL)_shouldAnimatePropertyWithKey:(id)key;
- (_TtCC7ChatKit27TapbackPickerImageShapeView22TapbackPickerImageView)initWithCoder:(id)coder;
- (_TtCC7ChatKit27TapbackPickerImageShapeView22TapbackPickerImageView)initWithFrame:(CGRect)frame;
- (_TtCC7ChatKit27TapbackPickerImageShapeView22TapbackPickerImageView)initWithImage:(id)image;
- (_TtCC7ChatKit27TapbackPickerImageShapeView22TapbackPickerImageView)initWithImage:(id)image highlightedImage:(id)highlightedImage;
@end

@implementation TapbackPickerImageShapeView.TapbackPickerImageView

- (_TtCC7ChatKit27TapbackPickerImageShapeView22TapbackPickerImageView)initWithCoder:(id)coder
{
  result = sub_190D58510();
  __break(1u);
  return result;
}

- (_TtCC7ChatKit27TapbackPickerImageShapeView22TapbackPickerImageView)initWithImage:(id)image
{
  v11.receiver = self;
  v11.super_class = type metadata accessor for TapbackPickerImageShapeView.TapbackPickerImageView();
  imageCopy = image;
  v5 = [(TapbackPickerImageShapeView.TapbackPickerImageView *)&v11 initWithImage:imageCopy];
  v6 = *MEMORY[0x1E6979928];
  v7 = objc_allocWithZone(MEMORY[0x1E6979378]);
  v8 = v5;
  initWithType_ = [v7 initWithType_];
  sub_190A86CA4(initWithType_);

  return v8;
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)key
{
  if (key)
  {
    v4 = sub_190D56F10();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  selfCopy = self;
  v8 = sub_190C7E704(v4, v6);

  return v8 & 1;
}

- (_TtCC7ChatKit27TapbackPickerImageShapeView22TapbackPickerImageView)initWithImage:(id)image highlightedImage:(id)highlightedImage
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtCC7ChatKit27TapbackPickerImageShapeView22TapbackPickerImageView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end