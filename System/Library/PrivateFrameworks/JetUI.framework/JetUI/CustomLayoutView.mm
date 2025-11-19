@interface CustomLayoutView
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (_TtC5JetUI16CustomLayoutView)initWithCoder:(id)a3;
- (_TtC5JetUI16CustomLayoutView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation CustomLayoutView

- (CGSize)intrinsicContentSize
{
  v2 = self;
  v3 = [(CustomLayoutView *)v2 traitCollection];
  (*((*MEMORY[0x1E69E7D40] & v2->super.super.super.super.isa) + 0x50))(v11);
  v4 = v12;
  v5 = v13;
  __swift_project_boxed_opaque_existential_1(v11, v12);
  v6 = (*(v5 + 8))(v3, v4, v5, 0.0, 0.0);
  v8 = v7;

  __swift_destroy_boxed_opaque_existential_1(v11);
  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = self;
  v6 = [(CustomLayoutView *)v5 traitCollection];
  (*((*MEMORY[0x1E69E7D40] & v5->super.super.super.super.isa) + 0x50))(v14);
  v7 = v15;
  v8 = v16;
  __swift_project_boxed_opaque_existential_1(v14, v15);
  v9 = (*(v8 + 8))(v6, v7, v8, width, height);
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
  v2 = self;
  CustomLayoutView.layoutSubviews()();
}

- (_TtC5JetUI16CustomLayoutView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for CustomLayoutView();
  return [(CustomLayoutView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC5JetUI16CustomLayoutView)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for CustomLayoutView();
  v4 = a3;
  v5 = [(CustomLayoutView *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end