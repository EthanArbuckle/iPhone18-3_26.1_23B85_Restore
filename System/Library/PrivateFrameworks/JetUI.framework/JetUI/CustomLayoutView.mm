@interface CustomLayoutView
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TtC5JetUI16CustomLayoutView)initWithCoder:(id)coder;
- (_TtC5JetUI16CustomLayoutView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation CustomLayoutView

- (CGSize)intrinsicContentSize
{
  selfCopy = self;
  traitCollection = [(CustomLayoutView *)selfCopy traitCollection];
  (*((*MEMORY[0x1E69E7D40] & selfCopy->super.super.super.super.isa) + 0x50))(v11);
  v4 = v12;
  v5 = v13;
  __swift_project_boxed_opaque_existential_1(v11, v12);
  v6 = (*(v5 + 8))(traitCollection, v4, v5, 0.0, 0.0);
  v8 = v7;

  __swift_destroy_boxed_opaque_existential_1(v11);
  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  selfCopy = self;
  traitCollection = [(CustomLayoutView *)selfCopy traitCollection];
  (*((*MEMORY[0x1E69E7D40] & selfCopy->super.super.super.super.isa) + 0x50))(v14);
  v7 = v15;
  v8 = v16;
  __swift_project_boxed_opaque_existential_1(v14, v15);
  v9 = (*(v8 + 8))(traitCollection, v7, v8, width, height);
  v11 = v10;

  __swift_destroy_boxed_opaque_existential_1(v14);
  v12 = v9;
  v13 = v11;
  result.height = v13;
  result.width = v12;
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  CustomLayoutView.layoutSubviews()();
}

- (_TtC5JetUI16CustomLayoutView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for CustomLayoutView();
  return [(CustomLayoutView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC5JetUI16CustomLayoutView)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for CustomLayoutView();
  coderCopy = coder;
  v5 = [(CustomLayoutView *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end