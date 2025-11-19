@interface OADDrawingTheme
- (BOOL)isEqual:(id)a3;
- (OADDrawingTheme)initWithStyleMatrix:(id)a3 fontScheme:(id)a4 colorScheme:(id)a5 colorMap:(id)a6 colorPalette:(id)a7;
- (OADDrawingTheme)initWithTheme:(id)a3 colorMap:(id)a4 colorPalette:(id)a5;
- (id)description;
- (unint64_t)hash;
- (void)applyThemeOverrides:(id)a3 colorMapOverride:(id)a4;
@end

@implementation OADDrawingTheme

- (OADDrawingTheme)initWithStyleMatrix:(id)a3 fontScheme:(id)a4 colorScheme:(id)a5 colorMap:(id)a6 colorPalette:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v23.receiver = self;
  v23.super_class = OADDrawingTheme;
  v18 = [(OADDrawingTheme *)&v23 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->mStyleMatrix, a3);
    objc_storeStrong(&v19->mFontScheme, a4);
    v20 = [[OADColorContext alloc] initWithScheme:v15 map:v16 palette:v17];
    mColorContext = v19->mColorContext;
    v19->mColorContext = v20;
  }

  return v19;
}

- (OADDrawingTheme)initWithTheme:(id)a3 colorMap:(id)a4 colorPalette:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v24.receiver = self;
  v24.super_class = OADDrawingTheme;
  v11 = [(OADDrawingTheme *)&v24 init];
  if (v11)
  {
    v12 = [v8 baseStyles];
    v13 = [v12 styleMatrix];
    mStyleMatrix = v11->mStyleMatrix;
    v11->mStyleMatrix = v13;

    v15 = [v8 baseStyles];
    v16 = [v15 fontScheme];
    mFontScheme = v11->mFontScheme;
    v11->mFontScheme = v16;

    v18 = [OADColorContext alloc];
    v19 = [v8 baseStyles];
    v20 = [v19 colorScheme];
    v21 = [(OADColorContext *)v18 initWithScheme:v20 map:v9 palette:v10];
    mColorContext = v11->mColorContext;
    v11->mColorContext = v21;
  }

  return v11;
}

- (void)applyThemeOverrides:(id)a3 colorMapOverride:(id)a4
{
  v13 = a3;
  v6 = a4;
  v7 = [v13 fontScheme];

  if (v7)
  {
    v8 = [v13 fontScheme];
    mFontScheme = self->mFontScheme;
    self->mFontScheme = v8;
  }

  v10 = [v13 styleMatrix];

  if (v10)
  {
    v11 = [v13 styleMatrix];
    mStyleMatrix = self->mStyleMatrix;
    self->mStyleMatrix = v11;
  }

  [(OADColorContext *)self->mColorContext applyThemeOverrides:v13 colorMapOverride:v6];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    v7 = v4;
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

  v7 = [v3 descriptionString];

  return v7;
}

@end