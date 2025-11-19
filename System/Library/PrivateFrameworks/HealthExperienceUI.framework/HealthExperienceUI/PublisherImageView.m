@interface PublisherImageView
- (_TtC18HealthExperienceUI18PublisherImageView)initWithFrame:(CGRect)a3;
- (_TtC18HealthExperienceUI18PublisherImageView)initWithImage:(id)a3;
- (_TtC18HealthExperienceUI18PublisherImageView)initWithImage:(id)a3 highlightedImage:(id)a4;
@end

@implementation PublisherImageView

- (_TtC18HealthExperienceUI18PublisherImageView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (MEMORY[0x1E69E7CC0] >> 62 && sub_1BA4A7CC8())
  {
    v8 = sub_1B9FF611C(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v8 = MEMORY[0x1E69E7CD0];
  }

  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI18PublisherImageView_cancellables) = v8;
  v10.receiver = self;
  v10.super_class = type metadata accessor for PublisherImageView();
  return [(PublisherImageView *)&v10 initWithFrame:x, y, width, height];
}

- (_TtC18HealthExperienceUI18PublisherImageView)initWithImage:(id)a3
{
  if (MEMORY[0x1E69E7CC0] >> 62 && sub_1BA4A7CC8())
  {
    v9 = a3;
    v6 = sub_1B9FF611C(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v5 = a3;
    v6 = MEMORY[0x1E69E7CD0];
  }

  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI18PublisherImageView_cancellables) = v6;
  v10.receiver = self;
  v10.super_class = type metadata accessor for PublisherImageView();
  v7 = [(PublisherImageView *)&v10 initWithImage:a3];

  return v7;
}

- (_TtC18HealthExperienceUI18PublisherImageView)initWithImage:(id)a3 highlightedImage:(id)a4
{
  if (MEMORY[0x1E69E7CC0] >> 62 && sub_1BA4A7CC8())
  {
    v12 = a3;
    v13 = a4;
    v9 = sub_1B9FF611C(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v7 = a3;
    v8 = a4;
    v9 = MEMORY[0x1E69E7CD0];
  }

  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI18PublisherImageView_cancellables) = v9;
  v14.receiver = self;
  v14.super_class = type metadata accessor for PublisherImageView();
  v10 = [(PublisherImageView *)&v14 initWithImage:a3 highlightedImage:a4];

  return v10;
}

@end