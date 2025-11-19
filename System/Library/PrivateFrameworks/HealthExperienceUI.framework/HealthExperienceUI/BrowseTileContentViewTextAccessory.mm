@interface BrowseTileContentViewTextAccessory
- (CGSize)sizeThatFits:(CGSize)a3;
- (_TtC18HealthExperienceUIP33_7A9E5CF486B0F4226BE0F022FE7FA17134BrowseTileContentViewTextAccessory)initWithCoder:(id)a3;
- (_TtC18HealthExperienceUIP33_7A9E5CF486B0F4226BE0F022FE7FA17134BrowseTileContentViewTextAccessory)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation BrowseTileContentViewTextAccessory

- (_TtC18HealthExperienceUIP33_7A9E5CF486B0F4226BE0F022FE7FA17134BrowseTileContentViewTextAccessory)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUIP33_7A9E5CF486B0F4226BE0F022FE7FA17134BrowseTileContentViewTextAccessory____lazy_storage___label) = 0;
  v10.receiver = self;
  v10.super_class = type metadata accessor for BrowseTileContentViewTextAccessory();
  v7 = [(BrowseTileContentViewBase *)&v10 initWithFrame:x, y, width, height];
  v8 = sub_1BA1C94A0();
  [(BrowseTileContentViewTextAccessory *)v7 addSubview:v8];

  return v7;
}

- (_TtC18HealthExperienceUIP33_7A9E5CF486B0F4226BE0F022FE7FA17134BrowseTileContentViewTextAccessory)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUIP33_7A9E5CF486B0F4226BE0F022FE7FA17134BrowseTileContentViewTextAccessory____lazy_storage___label) = 0;
  result = sub_1BA4A8018();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for BrowseTileContentViewTextAccessory();
  v2 = v4.receiver;
  [(BrowseTileContentViewBase *)&v4 layoutSubviews];
  v3 = sub_1BA1C94A0();
  [v2 bounds];
  v6 = CGRectInset(v5, 16.0, 15.0);
  [v3 setFrame_];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = self;
  v6 = sub_1BA1CA42C(sub_1BA1C94A0, width, height);
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

@end