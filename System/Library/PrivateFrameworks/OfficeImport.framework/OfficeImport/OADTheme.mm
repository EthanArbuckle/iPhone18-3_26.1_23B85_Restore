@interface OADTheme
- (OADTheme)init;
- (id)description;
- (void)validateTheme;
@end

@implementation OADTheme

- (OADTheme)init
{
  v8.receiver = self;
  v8.super_class = OADTheme;
  v2 = [(OADTheme *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(OADBaseStyles);
    mBaseStyles = v2->mBaseStyles;
    v2->mBaseStyles = v3;

    v5 = objc_opt_new();
    mDrawableDefaults = v2->mDrawableDefaults;
    v2->mDrawableDefaults = v5;
  }

  return v2;
}

- (void)validateTheme
{
  name = [(OADTheme *)self name];
  v4 = [name length];

  if (!v4)
  {
    [(OADTheme *)self setName:@"Office"];
  }

  mBaseStyles = self->mBaseStyles;

  [(OADBaseStyles *)mBaseStyles validateBaseStyles];
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = OADTheme;
  v2 = [(OADTheme *)&v4 description];

  return v2;
}

@end