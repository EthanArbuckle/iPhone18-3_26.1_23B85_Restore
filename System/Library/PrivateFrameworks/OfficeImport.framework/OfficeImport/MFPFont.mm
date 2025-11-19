@interface MFPFont
- (__CTFont)createCTFontWithGraphics:(id)a3;
@end

@implementation MFPFont

- (__CTFont)createCTFontWithGraphics:(id)a3
{
  v4 = a3;
  v5 = self->mName;
  if ([(NSString *)v5 isEqualToString:@"ZAPFDINGBATS"])
  {

    v5 = @"ZAPF DINGBATS";
  }

  v6 = [v4 fontNameForUppercaseFontName:v5];
  if (![(NSString *)v6 length])
  {

    v6 = @"Helvetica";
  }

  v7 = fabsf(self->mSize) * 4.0 / 3.0;
  v8 = TCCreateFontWithFamilyName(v6, self->mFlags & 1, (self->mFlags >> 1) & 1, v7);

  return v8;
}

@end