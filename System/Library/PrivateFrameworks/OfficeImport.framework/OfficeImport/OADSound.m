@interface OADSound
- (BOOL)isLoaded;
- (id)description;
@end

@implementation OADSound

- (BOOL)isLoaded
{
  if (!self->mSoundData)
  {
    return 0;
  }

  v3.receiver = self;
  v3.super_class = OADSound;
  return [(OCDDelayedNode *)&v3 isLoaded];
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = OADSound;
  v2 = [(OADSound *)&v4 description];

  return v2;
}

@end