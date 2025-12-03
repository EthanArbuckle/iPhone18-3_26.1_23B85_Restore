@interface CSArtworkImageView
- (CSArtworkImageView)initWithCoder:(id)coder;
- (CSArtworkImageView)initWithFrame:(CGRect)frame;
- (CSArtworkImageView)initWithImage:(id)image;
- (CSArtworkImageView)initWithImage:(id)image highlightedImage:(id)highlightedImage;
- (MPCPlayerResponseItem)content;
- (void)setContent:(id)content;
@end

@implementation CSArtworkImageView

- (CSArtworkImageView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
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
  height = [(CSArtworkImageView *)&v13 initWithFrame:x, y, width, height];
  v9 = objc_opt_self();
  v10 = height;
  grayColor = [v9 grayColor];
  [(CSArtworkImageView *)v10 setTintColor:grayColor];

  return v10;
}

- (CSArtworkImageView)initWithCoder:(id)coder
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

- (void)setContent:(id)content
{
  sub_244257BB8();
  sub_244257BA8();
  sub_244257B68();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  contentCopy = content;
  selfCopy = self;
  sub_24424D6FC(content);
}

- (CSArtworkImageView)initWithImage:(id)image
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

- (CSArtworkImageView)initWithImage:(id)image highlightedImage:(id)highlightedImage
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