@interface MediaControlsModuleSessionView
- (CGSize)sizeThatFits:(CGSize)a3;
- (void)layoutSubviews;
- (void)tapGestureHandler:(id)a3;
@end

@implementation MediaControlsModuleSessionView

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  v4 = MEMORY[0x1E69E7D40];
  v5 = *((*MEMORY[0x1E69E7D40] & self->super.super.super.isa) + 0x130);
  v6 = self;
  LOBYTE(v5) = v5();
  v7 = (*((*v4 & v6->super.super.super.isa) + 0x160))();
  v8 = sub_1A2113050();
  sub_1A2121FCC(v7, v8 & 1, v5);
  v10 = v9;

  v11 = width;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_1A211CD6C();
}

- (void)tapGestureHandler:(id)a3
{
  v3 = *((*MEMORY[0x1E69E7D40] & self->super.super.super.isa) + 0x260);
  v6 = self;
  v4 = v3();
  if (v4)
  {
    v5 = v4;
    v4(v6);

    sub_1A210F5C0(v5);
  }

  else
  {
  }
}

@end