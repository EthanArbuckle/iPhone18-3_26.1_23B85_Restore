@interface ICNavigationItemConfiguration
- (BOOL)updateAnimated:(BOOL)a3;
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

- (BOOL)updateAnimated:(BOOL)a3
{
  v4 = [(ICNavigationItemConfiguration *)self needsUpdate];
  if (v4)
  {
    [(ICNavigationItemConfiguration *)self setLastUpdateHash:[(ICNavigationItemConfiguration *)self hash]];
  }

  return v4;
}

@end