@interface MRMutableApplicationActivity
- (void)setPrimaryApplicationDisplayID:(id)a3;
- (void)setSecondaryApplicationDisplayID:(id)a3;
@end

@implementation MRMutableApplicationActivity

- (void)setPrimaryApplicationDisplayID:(id)a3
{
  if (self->super._primaryApplicationDisplayID != a3)
  {
    v5 = [a3 copy];
    primaryApplicationDisplayID = self->super._primaryApplicationDisplayID;
    self->super._primaryApplicationDisplayID = v5;
  }
}

- (void)setSecondaryApplicationDisplayID:(id)a3
{
  if (self->super._secondaryApplicationDisplayID != a3)
  {
    v5 = [a3 copy];
    secondaryApplicationDisplayID = self->super._secondaryApplicationDisplayID;
    self->super._secondaryApplicationDisplayID = v5;
  }
}

@end