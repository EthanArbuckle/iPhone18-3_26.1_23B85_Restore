@interface MBCKSettingsContext
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation MBCKSettingsContext

- (id)copyWithZone:(_NSZone *)a3
{
  v8.receiver = self;
  v8.super_class = MBCKSettingsContext;
  v5 = [(MBServiceSettingsContext *)&v8 copyWithZone:?];
  v6 = [(NSSet *)self->_bundleIDs copyWithZone:a3];
  [v5 setBundleIDs:v6];

  return v5;
}

@end