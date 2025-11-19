@interface FrameworkViewRepresentable.NativeView
- (_TtCV23ImagePlaygroundInternal26FrameworkViewRepresentableP33_8381055C53B101B53D1633297D3E35E410NativeView)initWithCoder:(id)a3;
- (_TtCV23ImagePlaygroundInternal26FrameworkViewRepresentableP33_8381055C53B101B53D1633297D3E35E410NativeView)initWithFrame:(CGRect)a3;
- (void)didMoveToWindow;
@end

@implementation FrameworkViewRepresentable.NativeView

- (_TtCV23ImagePlaygroundInternal26FrameworkViewRepresentableP33_8381055C53B101B53D1633297D3E35E410NativeView)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtCV23ImagePlaygroundInternal26FrameworkViewRepresentableP33_8381055C53B101B53D1633297D3E35E410NativeView_didCallBack) = 0;
  result = sub_1D2879398();
  __break(1u);
  return result;
}

- (void)didMoveToWindow
{
  v4 = self;
  v2 = [(FrameworkViewRepresentable.NativeView *)v4 window];
  if (v2)
  {

    v3 = OBJC_IVAR____TtCV23ImagePlaygroundInternal26FrameworkViewRepresentableP33_8381055C53B101B53D1633297D3E35E410NativeView_didCallBack;
    if ((*(&v4->super.super.super.isa + OBJC_IVAR____TtCV23ImagePlaygroundInternal26FrameworkViewRepresentableP33_8381055C53B101B53D1633297D3E35E410NativeView_didCallBack) & 1) == 0)
    {
      (*(&v4->super.super.super.isa + OBJC_IVAR____TtCV23ImagePlaygroundInternal26FrameworkViewRepresentableP33_8381055C53B101B53D1633297D3E35E410NativeView_didMoveToWindowCallback))();
      *(&v4->super.super.super.isa + v3) = 1;
    }
  }
}

- (_TtCV23ImagePlaygroundInternal26FrameworkViewRepresentableP33_8381055C53B101B53D1633297D3E35E410NativeView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end