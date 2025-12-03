@interface ICNavigationItemConfiguration
- (BOOL)updateAnimated:(BOOL)animated;
- (ICNavigationItemConfiguration)init;
@end

@implementation ICNavigationItemConfiguration

- (ICNavigationItemConfiguration)init
{
  v5.receiver = self;
  v5.super_class = ICNavigationItemConfiguration;
  v2 = [(ICNavigationItemConfiguration *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(ICNavigationItemConfiguration *)v2 reset];
  }

  return v3;
}

- (BOOL)updateAnimated:(BOOL)animated
{
  needsUpdate = [(ICNavigationItemConfiguration *)self needsUpdate];
  if (needsUpdate)
  {
    [(ICNavigationItemConfiguration *)self setLastUpdateHash:[(ICNavigationItemConfiguration *)self hash]];
  }

  return needsUpdate;
}

@end