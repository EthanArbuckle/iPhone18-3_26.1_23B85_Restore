@interface DBDockWindow
- (BOOL)_reversesLinearFocusWrapping;
- (BOOL)isRightHandDrive;
- (void)setIsRightHandDrive:(BOOL)drive;
@end

@implementation DBDockWindow

- (BOOL)isRightHandDrive
{
  v3 = OBJC_IVAR____TtC9DashBoard12DBDockWindow_isRightHandDrive;
  swift_beginAccess();
  return *(&self->super.super.super.super.super.isa + v3);
}

- (void)setIsRightHandDrive:(BOOL)drive
{
  v5 = OBJC_IVAR____TtC9DashBoard12DBDockWindow_isRightHandDrive;
  swift_beginAccess();
  *(&self->super.super.super.super.super.isa + v5) = drive;
}

- (BOOL)_reversesLinearFocusWrapping
{
  selfCopy = self;
  traitCollection = [(DBDockWindow *)selfCopy traitCollection];
  layoutDirection = [traitCollection layoutDirection];

  LOBYTE(traitCollection) = (*((*MEMORY[0x277D85000] & selfCopy->super.super.super.super.super.isa) + 0x68))();
  return (traitCollection ^ (layoutDirection == 0)) & 1;
}

@end