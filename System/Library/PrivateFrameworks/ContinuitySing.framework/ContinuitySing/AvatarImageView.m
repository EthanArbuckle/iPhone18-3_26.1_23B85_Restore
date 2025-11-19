@interface AvatarImageView
- (CGSize)intrinsicContentSize;
- (_TtC14ContinuitySingP33_C6AF9BC24C805691840A4EC35E9D0F7415AvatarImageView)initWithCoder:(id)a3;
- (_TtC14ContinuitySingP33_C6AF9BC24C805691840A4EC35E9D0F7415AvatarImageView)initWithFrame:(CGRect)a3;
- (_TtC14ContinuitySingP33_C6AF9BC24C805691840A4EC35E9D0F7415AvatarImageView)initWithImage:(id)a3;
- (_TtC14ContinuitySingP33_C6AF9BC24C805691840A4EC35E9D0F7415AvatarImageView)initWithImage:(id)a3 highlightedImage:(id)a4;
@end

@implementation AvatarImageView

- (CGSize)intrinsicContentSize
{
  sub_244257BB8();
  sub_244257BA8();
  sub_244257B68();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = 76.0;
  v3 = 76.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (_TtC14ContinuitySingP33_C6AF9BC24C805691840A4EC35E9D0F7415AvatarImageView)initWithImage:(id)a3
{
  sub_244257BB8();
  sub_244257BA8();
  sub_244257B68();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7.receiver = self;
  v7.super_class = type metadata accessor for AvatarImageView();
  v5 = [(AvatarImageView *)&v7 initWithImage:a3];

  return v5;
}

- (_TtC14ContinuitySingP33_C6AF9BC24C805691840A4EC35E9D0F7415AvatarImageView)initWithImage:(id)a3 highlightedImage:(id)a4
{
  sub_244257BB8();
  sub_244257BA8();
  sub_244257B68();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9.receiver = self;
  v9.super_class = type metadata accessor for AvatarImageView();
  v7 = [(AvatarImageView *)&v9 initWithImage:a3 highlightedImage:a4];

  return v7;
}

- (_TtC14ContinuitySingP33_C6AF9BC24C805691840A4EC35E9D0F7415AvatarImageView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  sub_244257BB8();
  sub_244257BA8();
  sub_244257B68();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10.receiver = self;
  v10.super_class = type metadata accessor for AvatarImageView();
  v8 = [(AvatarImageView *)&v10 initWithFrame:x, y, width, height];

  return v8;
}

- (_TtC14ContinuitySingP33_C6AF9BC24C805691840A4EC35E9D0F7415AvatarImageView)initWithCoder:(id)a3
{
  sub_244257BB8();
  sub_244257BA8();
  sub_244257B68();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8.receiver = self;
  v8.super_class = type metadata accessor for AvatarImageView();
  v5 = a3;
  v6 = [(AvatarImageView *)&v8 initWithCoder:v5];

  if (v6)
  {
  }

  return v6;
}

@end