@interface HostingIndicatorView
- (void)horizontalSizeClassDidChange;
@end

@implementation HostingIndicatorView

- (void)horizontalSizeClassDidChange
{
  v2 = MEMORY[0x277D85000];
  v3 = *((*MEMORY[0x277D85000] & self->super.super.super.isa) + 0x88);
  v4 = self;
  v3(&v5);
  (*((*v2 & v4->super.super.super.isa) + 0xF8))(&v5);
}

@end