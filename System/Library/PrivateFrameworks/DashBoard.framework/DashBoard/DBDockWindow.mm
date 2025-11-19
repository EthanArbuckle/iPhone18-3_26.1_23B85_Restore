@interface DBDockWindow
- (BOOL)_reversesLinearFocusWrapping;
- (BOOL)isRightHandDrive;
- (void)setIsRightHandDrive:(BOOL)a3;
@end

@implementation DBDockWindow

- (BOOL)isRightHandDrive
{
  v3 = OBJC_IVAR____TtC9DashBoard12DBDockWindow_isRightHandDrive;
  swift_beginAccess();
  return *(&self->super.super.super.super.super.isa + v3);
}

- (void)setIsRightHandDrive:(BOOL)a3
{
  v5 = OBJC_IVAR____TtC9DashBoard12DBDockWindow_isRightHandDrive;
  swift_beginAccess();
  *(&self->super.super.super.super.super.isa + v5) = a3;
}

- (BOOL)_reversesLinearFocusWrapping
{
  v2 = self;
  v3 = [(DBDockWindow *)v2 traitCollection];
  v4 = [v3 layoutDirection];

  LOBYTE(v3) = (*((*MEMORY[0x277D85000] & v2->super.super.super.super.super.isa) + 0x68))();
  return (v3 ^ (v4 == 0)) & 1;
}

@end