@interface PublisherImageView
- (_TtC18HealthExperienceUI18PublisherImageView)initWithFrame:(CGRect)frame;
- (_TtC18HealthExperienceUI18PublisherImageView)initWithImage:(id)image;
- (_TtC18HealthExperienceUI18PublisherImageView)initWithImage:(id)image highlightedImage:(id)highlightedImage;
@end

@implementation PublisherImageView

- (_TtC18HealthExperienceUI18PublisherImageView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
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

- (_TtC18HealthExperienceUI18PublisherImageView)initWithImage:(id)image
{
  if (MEMORY[0x1E69E7CC0] >> 62 && sub_1BA4A7CC8())
  {
    imageCopy = image;
    v6 = sub_1B9FF611C(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    imageCopy2 = image;
    v6 = MEMORY[0x1E69E7CD0];
  }

  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI18PublisherImageView_cancellables) = v6;
  v10.receiver = self;
  v10.super_class = type metadata accessor for PublisherImageView();
  v7 = [(PublisherImageView *)&v10 initWithImage:image];

  return v7;
}

- (_TtC18HealthExperienceUI18PublisherImageView)initWithImage:(id)image highlightedImage:(id)highlightedImage
{
  if (MEMORY[0x1E69E7CC0] >> 62 && sub_1BA4A7CC8())
  {
    imageCopy = image;
    highlightedImageCopy = highlightedImage;
    v9 = sub_1B9FF611C(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    imageCopy2 = image;
    highlightedImageCopy2 = highlightedImage;
    v9 = MEMORY[0x1E69E7CD0];
  }

  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI18PublisherImageView_cancellables) = v9;
  v14.receiver = self;
  v14.super_class = type metadata accessor for PublisherImageView();
  v10 = [(PublisherImageView *)&v14 initWithImage:image highlightedImage:highlightedImage];

  return v10;
}

@end