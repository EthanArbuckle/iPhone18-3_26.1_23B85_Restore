@interface OADColorContext
+ (id)colorContextWithScheme:(id)a3 map:(id)a4 palette:(id)a5;
- (BOOL)isEqual:(id)a3;
- (OADColorContext)initWithScheme:(id)a3 map:(id)a4 palette:(id)a5;
- (unint64_t)hash;
- (void)applyThemeOverrides:(id)a3 colorMapOverride:(id)a4;
@end

@implementation OADColorContext

- (OADColorContext)initWithScheme:(id)a3 map:(id)a4 palette:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = OADColorContext;
  v12 = [(OADColorContext *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->mScheme, a3);
    objc_storeStrong(&v13->mMap, a4);
    objc_storeStrong(&v13->mPalette, a5);
  }

  return v13;
}

+ (id)colorContextWithScheme:(id)a3 map:(id)a4 palette:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [[OADColorContext alloc] initWithScheme:v7 map:v8 palette:v9];

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    v7 = v4;
    if ((TCObjectEqual(self->mScheme, v7[1]) & 1) != 0 && TCObjectEqual(self->mMap, v7[2]))
    {
      v6 = TCObjectEqual(self->mPalette, v7[3]);
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)hash
{
  v3 = [(OADColorScheme *)self->mScheme hash];
  v4 = ([(OADColorMap *)self->mMap hash]<< 8) + (v3 << 16);
  v6.receiver = self;
  v6.super_class = OADColorContext;
  return [(OADColorContext *)&v6 hash]+ v4;
}

- (void)applyThemeOverrides:(id)a3 colorMapOverride:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [v10 colorScheme];

  if (v7)
  {
    v8 = [v10 colorScheme];
    mScheme = self->mScheme;
    self->mScheme = v8;
  }

  if (v6)
  {
    objc_storeStrong(&self->mMap, a4);
  }
}

@end