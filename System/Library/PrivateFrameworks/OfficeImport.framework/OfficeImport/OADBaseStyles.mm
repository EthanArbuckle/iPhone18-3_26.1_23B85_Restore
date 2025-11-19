@interface OADBaseStyles
- (OADBaseStyles)init;
- (void)validateBaseStyles;
@end

@implementation OADBaseStyles

- (OADBaseStyles)init
{
  v10.receiver = self;
  v10.super_class = OADBaseStyles;
  v2 = [(OADBaseStyles *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(OADColorScheme);
    mColorScheme = v2->super.mColorScheme;
    v2->super.mColorScheme = v3;

    v5 = objc_alloc_init(OADStyleMatrix);
    mStyleMatrix = v2->super.mStyleMatrix;
    v2->super.mStyleMatrix = v5;

    v7 = objc_alloc_init(OADFontScheme);
    mFontScheme = v2->super.mFontScheme;
    v2->super.mFontScheme = v7;
  }

  return v2;
}

- (void)validateBaseStyles
{
  [(OADColorScheme *)self->super.mColorScheme validateColorScheme];
  [(OADStyleMatrix *)self->super.mStyleMatrix validateStyleMatrix];
  mFontScheme = self->super.mFontScheme;

  [(OADFontScheme *)mFontScheme validateFontScheme];
}

@end