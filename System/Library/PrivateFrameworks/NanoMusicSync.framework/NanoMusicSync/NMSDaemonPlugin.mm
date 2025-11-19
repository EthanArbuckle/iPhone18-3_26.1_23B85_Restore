@interface NMSDaemonPlugin
- (NMSDaemonPlugin)init;
@end

@implementation NMSDaemonPlugin

- (NMSDaemonPlugin)init
{
  v3.receiver = self;
  v3.super_class = NMSDaemonPlugin;
  return [(NMSDaemonPlugin *)&v3 init];
}

@end