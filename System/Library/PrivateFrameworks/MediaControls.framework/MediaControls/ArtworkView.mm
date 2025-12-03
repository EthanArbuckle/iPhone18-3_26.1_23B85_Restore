@interface ArtworkView
- (void)layoutSubviews;
- (void)userInterfaceStyleChanged;
@end

@implementation ArtworkView

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1A2122BF0();
}

- (void)userInterfaceStyleChanged
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC13MediaControls11ArtworkView_shadowView);
  v3 = MEMORY[0x1E69E7D40];
  v4 = *((*MEMORY[0x1E69E7D40] & self->super.super.super.isa) + 0x88);
  selfCopy = self;
  v4(&v6);
  v10[0] = v7;
  v10[1] = v8;
  v10[2] = v9;
  (*((*v3 & *v2) + 0x60))(v10);
}

@end