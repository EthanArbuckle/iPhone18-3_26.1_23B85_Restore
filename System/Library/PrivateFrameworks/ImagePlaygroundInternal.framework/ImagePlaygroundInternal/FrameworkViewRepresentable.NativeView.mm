@interface FrameworkViewRepresentable.NativeView
- (_TtCV23ImagePlaygroundInternal26FrameworkViewRepresentableP33_8381055C53B101B53D1633297D3E35E410NativeView)initWithCoder:(id)coder;
- (_TtCV23ImagePlaygroundInternal26FrameworkViewRepresentableP33_8381055C53B101B53D1633297D3E35E410NativeView)initWithFrame:(CGRect)frame;
- (void)didMoveToWindow;
@end

@implementation FrameworkViewRepresentable.NativeView

- (_TtCV23ImagePlaygroundInternal26FrameworkViewRepresentableP33_8381055C53B101B53D1633297D3E35E410NativeView)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtCV23ImagePlaygroundInternal26FrameworkViewRepresentableP33_8381055C53B101B53D1633297D3E35E410NativeView_didCallBack) = 0;
  result = sub_1D2879398();
  __break(1u);
  return result;
}

- (void)didMoveToWindow
{
  selfCopy = self;
  window = [(FrameworkViewRepresentable.NativeView *)selfCopy window];
  if (window)
  {

    v3 = OBJC_IVAR____TtCV23ImagePlaygroundInternal26FrameworkViewRepresentableP33_8381055C53B101B53D1633297D3E35E410NativeView_didCallBack;
    if ((*(&selfCopy->super.super.super.isa + OBJC_IVAR____TtCV23ImagePlaygroundInternal26FrameworkViewRepresentableP33_8381055C53B101B53D1633297D3E35E410NativeView_didCallBack) & 1) == 0)
    {
      (*(&selfCopy->super.super.super.isa + OBJC_IVAR____TtCV23ImagePlaygroundInternal26FrameworkViewRepresentableP33_8381055C53B101B53D1633297D3E35E410NativeView_didMoveToWindowCallback))();
      *(&selfCopy->super.super.super.isa + v3) = 1;
    }
  }
}

- (_TtCV23ImagePlaygroundInternal26FrameworkViewRepresentableP33_8381055C53B101B53D1633297D3E35E410NativeView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end