@interface CameraTrayUIButton
- (CGPoint)menuAttachmentPointForConfiguration:(id)a3;
- (_TtC16MagnifierSupport18CameraTrayUIButton)initWithCoder:(id)a3;
- (_TtC16MagnifierSupport18CameraTrayUIButton)initWithFrame:(CGRect)a3;
@end

@implementation CameraTrayUIButton

- (CGPoint)menuAttachmentPointForConfiguration:(id)a3
{
  v12.receiver = self;
  v12.super_class = type metadata accessor for CameraTrayUIButton();
  v4 = v12.receiver;
  [(CameraTrayUIButton *)&v12 menuAttachmentPointForConfiguration:a3];
  v6 = v5;
  v7 = *&v4[OBJC_IVAR____TtC16MagnifierSupport18CameraTrayUIButton_offset + 8];
  v9 = v8 + *&v4[OBJC_IVAR____TtC16MagnifierSupport18CameraTrayUIButton_offset];

  v10 = v6 + v7;
  v11 = v9;
  result.y = v10;
  result.x = v11;
  return result;
}

- (_TtC16MagnifierSupport18CameraTrayUIButton)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *(&self->super.super.super.super + OBJC_IVAR____TtC16MagnifierSupport18CameraTrayUIButton_offset) = xmmword_257EE8230;
  v8.receiver = self;
  v8.super_class = type metadata accessor for CameraTrayUIButton();
  return [(CameraTrayUIButton *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC16MagnifierSupport18CameraTrayUIButton)initWithCoder:(id)a3
{
  *(&self->super.super.super.super + OBJC_IVAR____TtC16MagnifierSupport18CameraTrayUIButton_offset) = xmmword_257EE8230;
  v7.receiver = self;
  v7.super_class = type metadata accessor for CameraTrayUIButton();
  v4 = a3;
  v5 = [(CameraTrayUIButton *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end