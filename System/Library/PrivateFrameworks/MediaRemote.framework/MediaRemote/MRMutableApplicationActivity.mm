@interface MRMutableApplicationActivity
- (void)setPrimaryApplicationDisplayID:(id)d;
- (void)setSecondaryApplicationDisplayID:(id)d;
@end

@implementation MRMutableApplicationActivity

- (void)setPrimaryApplicationDisplayID:(id)d
{
  if (self->super._primaryApplicationDisplayID != d)
  {
    v5 = [d copy];
    primaryApplicationDisplayID = self->super._primaryApplicationDisplayID;
    self->super._primaryApplicationDisplayID = v5;
  }
}

- (void)setSecondaryApplicationDisplayID:(id)d
{
  if (self->super._secondaryApplicationDisplayID != d)
  {
    v5 = [d copy];
    secondaryApplicationDisplayID = self->super._secondaryApplicationDisplayID;
    self->super._secondaryApplicationDisplayID = v5;
  }
}

@end