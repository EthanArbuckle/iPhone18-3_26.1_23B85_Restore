@interface OADDrawingTheme
- (BOOL)isEqual:(id)equal;
- (OADDrawingTheme)initWithStyleMatrix:(id)matrix fontScheme:(id)scheme colorScheme:(id)colorScheme colorMap:(id)map colorPalette:(id)palette;
- (OADDrawingTheme)initWithTheme:(id)theme colorMap:(id)map colorPalette:(id)palette;
- (id)description;
- (unint64_t)hash;
- (void)applyThemeOverrides:(id)overrides colorMapOverride:(id)override;
@end

@implementation OADDrawingTheme

- (OADDrawingTheme)initWithStyleMatrix:(id)matrix fontScheme:(id)scheme colorScheme:(id)colorScheme colorMap:(id)map colorPalette:(id)palette
{
  matrixCopy = matrix;
  schemeCopy = scheme;
  colorSchemeCopy = colorScheme;
  mapCopy = map;
  paletteCopy = palette;
  v23.receiver = self;
  v23.super_class = OADDrawingTheme;
  v18 = [(OADDrawingTheme *)&v23 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->mStyleMatrix, matrix);
    objc_storeStrong(&v19->mFontScheme, scheme);
    v20 = [[OADColorContext alloc] initWithScheme:colorSchemeCopy map:mapCopy palette:paletteCopy];
    mColorContext = v19->mColorContext;
    v19->mColorContext = v20;
  }

  return v19;
}

- (OADDrawingTheme)initWithTheme:(id)theme colorMap:(id)map colorPalette:(id)palette
{
  themeCopy = theme;
  mapCopy = map;
  paletteCopy = palette;
  v24.receiver = self;
  v24.super_class = OADDrawingTheme;
  v11 = [(OADDrawingTheme *)&v24 init];
  if (v11)
  {
    baseStyles = [themeCopy baseStyles];
    styleMatrix = [baseStyles styleMatrix];
    mStyleMatrix = v11->mStyleMatrix;
    v11->mStyleMatrix = styleMatrix;

    baseStyles2 = [themeCopy baseStyles];
    fontScheme = [baseStyles2 fontScheme];
    mFontScheme = v11->mFontScheme;
    v11->mFontScheme = fontScheme;

    v18 = [OADColorContext alloc];
    baseStyles3 = [themeCopy baseStyles];
    colorScheme = [baseStyles3 colorScheme];
    v21 = [(OADColorContext *)v18 initWithScheme:colorScheme map:mapCopy palette:paletteCopy];
    mColorContext = v11->mColorContext;
    v11->mColorContext = v21;
  }

  return v11;
}

- (void)applyThemeOverrides:(id)overrides colorMapOverride:(id)override
{
  overridesCopy = overrides;
  overrideCopy = override;
  fontScheme = [overridesCopy fontScheme];

  if (fontScheme)
  {
    fontScheme2 = [overridesCopy fontScheme];
    mFontScheme = self->mFontScheme;
    self->mFontScheme = fontScheme2;
  }

  styleMatrix = [overridesCopy styleMatrix];

  if (styleMatrix)
  {
    styleMatrix2 = [overridesCopy styleMatrix];
    mStyleMatrix = self->mStyleMatrix;
    self->mStyleMatrix = styleMatrix2;
  }

  [(OADColorContext *)self->mColorContext applyThemeOverrides:overridesCopy colorMapOverride:overrideCopy];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    v7 = equalCopy;
    if ((TCObjectEqual(self->mStyleMatrix, v7[1]) & 1) != 0 && TCObjectEqual(self->mFontScheme, v7[2]))
    {
      v6 = TCObjectEqual(self->mColorContext, v7[3]);
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
  v3 = [(OADFontScheme *)self->mFontScheme hash];
  v4 = ([(OADColorContext *)self->mColorContext hash]<< 8) + (v3 << 16);
  v6.receiver = self;
  v6.super_class = OADDrawingTheme;
  return [(OADDrawingTheme *)&v6 hash]+ v4;
}

- (id)description
{
  v3 = [OITSUDescription descriptionWithObject:self class:objc_opt_class()];
  v4 = [(OADStyleMatrix *)self->mStyleMatrix description];
  [v3 addField:@"StyleMatrix" value:v4];

  v5 = [(OADFontScheme *)self->mFontScheme description];
  [v3 addField:@"FontScheme" value:v5];

  v6 = [(OADColorContext *)self->mColorContext description];
  [v3 addField:@"ColorContext" value:v6];

  descriptionString = [v3 descriptionString];

  return descriptionString;
}

@end