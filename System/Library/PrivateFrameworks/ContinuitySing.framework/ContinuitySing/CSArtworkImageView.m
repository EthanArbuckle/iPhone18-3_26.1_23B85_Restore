@interface CSArtworkImageView
- (CSArtworkImageView)initWithCoder:(id)a3;
- (CSArtworkImageView)initWithFrame:(CGRect)a3;
- (CSArtworkImageView)initWithImage:(id)a3;
- (CSArtworkImageView)initWithImage:(id)a3 highlightedImage:(id)a4;
- (MPCPlayerResponseItem)content;
- (void)setContent:(id)a3;
@end

@implementation CSArtworkImageView

- (CSArtworkImageView)initWithFrame:(CGRect)a3
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

  *(&self->super.super.super.super.isa + OBJC_IVAR___CSArtworkImageView_content) = 0;
  v13.receiver = self;
  v13.super_class = type metadata accessor for ArtworkImageView();
  v8 = [(CSArtworkImageView *)&v13 initWithFrame:x, y, width, height];
  v9 = objc_opt_self();
  v10 = v8;
  v11 = [v9 grayColor];
  [(CSArtworkImageView *)v10 setTintColor:v11];

  return v10;
}

- (CSArtworkImageView)initWithCoder:(id)a3
{
  sub_244257BB8();
  sub_244257BA8();
  sub_244257B68();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *(&self->super.super.super.super.isa + OBJC_IVAR___CSArtworkImageView_content) = 0;
  result = sub_244257E28();
  __break(1u);
  return result;
}

- (MPCPlayerResponseItem)content
{
  sub_244257BB8();
  sub_244257BA8();
  sub_244257B68();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = OBJC_IVAR___CSArtworkImageView_content;
  swift_beginAccess();
  v4 = *(&self->super.super.super.super.isa + v3);

  return v4;
}

- (void)setContent:(id)a3
{
  sub_244257BB8();
  sub_244257BA8();
  sub_244257B68();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = a3;
  v6 = self;
  sub_24424D6FC(a3);
}

- (CSArtworkImageView)initWithImage:(id)a3
{
  sub_244257BB8();
  sub_244257BA8();
  sub_244257B68();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (CSArtworkImageView)initWithImage:(id)a3 highlightedImage:(id)a4
{
  sub_244257BB8();
  sub_244257BA8();
  sub_244257B68();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end