@interface NowPlayingTransportControlsView
- (CGSize)sizeThatFits:(CGSize)a3;
- (void)layoutSubviews;
@end

@implementation NowPlayingTransportControlsView

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  v4 = MEMORY[0x1E69E7D40];
  v5 = *((*MEMORY[0x1E69E7D40] & self->super.super.super.isa) + 0xD0);
  v6 = self;
  v7 = v5(&v17);
  if (v18)
  {
    v8 = (v5)(v19, v7);
    v9 = *&v19[3];
    v10 = (*((*v4 & v6->super.super.super.isa) + 0xE8))(v8);

    v11 = v9 * v10;
  }

  else
  {
    v12 = (v5)(v19, v7);
    (*((*v4 & v6->super.super.super.isa) + 0xE8))(v12);
    sub_1A22E6BF8();
    width = v13;
    v15 = v14;

    v11 = v15;
  }

  v16 = width;
  result.height = v11;
  result.width = v16;
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_1A221F42C();
}

@end