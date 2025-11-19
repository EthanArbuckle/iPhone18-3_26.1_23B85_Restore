@interface ShadowView
- (BOOL)_shouldAnimatePropertyWithKey:(id)a3;
- (_TtC13MediaControls10ShadowView)initWithCoder:(id)a3;
- (_TtC13MediaControls10ShadowView)initWithFrame:(CGRect)a3;
@end

@implementation ShadowView

- (_TtC13MediaControls10ShadowView)initWithCoder:(id)a3
{
  result = sub_1A22E7028();
  __break(1u);
  return result;
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)a3
{
  if (a3)
  {
    sub_1A22E65C8();
    v5 = v4;
    v6 = self;
    v7 = sub_1A22E6598();
  }

  else
  {
    v8 = self;
    v7 = 0;
    v5 = 0;
  }

  v12.receiver = self;
  v12.super_class = type metadata accessor for ShadowView();
  v9 = [(ShadowView *)&v12 _shouldAnimatePropertyWithKey:v7];

  if (v9)
  {

    v11 = 1;
    return v11 & 1;
  }

  if (v5)
  {
    v11 = sub_1A22E66B8();

    return v11 & 1;
  }

  __break(1u);
  return result;
}

- (_TtC13MediaControls10ShadowView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end