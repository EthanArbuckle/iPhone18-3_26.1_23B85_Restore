@interface OADColorContext
+ (id)colorContextWithScheme:(id)scheme map:(id)map palette:(id)palette;
- (BOOL)isEqual:(id)equal;
- (OADColorContext)initWithScheme:(id)scheme map:(id)map palette:(id)palette;
- (unint64_t)hash;
- (void)applyThemeOverrides:(id)overrides colorMapOverride:(id)override;
@end

@implementation OADColorContext

- (OADColorContext)initWithScheme:(id)scheme map:(id)map palette:(id)palette
{
  schemeCopy = scheme;
  mapCopy = map;
  paletteCopy = palette;
  v15.receiver = self;
  v15.super_class = OADColorContext;
  v12 = [(OADColorContext *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->mScheme, scheme);
    objc_storeStrong(&v13->mMap, map);
    objc_storeStrong(&v13->mPalette, palette);
  }

  return v13;
}

+ (id)colorContextWithScheme:(id)scheme map:(id)map palette:(id)palette
{
  schemeCopy = scheme;
  mapCopy = map;
  paletteCopy = palette;
  v10 = [[OADColorContext alloc] initWithScheme:schemeCopy map:mapCopy palette:paletteCopy];

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    v7 = equalCopy;
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

- (void)applyThemeOverrides:(id)overrides colorMapOverride:(id)override
{
  overridesCopy = overrides;
  overrideCopy = override;
  colorScheme = [overridesCopy colorScheme];

  if (colorScheme)
  {
    colorScheme2 = [overridesCopy colorScheme];
    mScheme = self->mScheme;
    self->mScheme = colorScheme2;
  }

  if (overrideCopy)
  {
    objc_storeStrong(&self->mMap, override);
  }
}

@end