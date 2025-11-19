@interface OADFontScheme
- (BOOL)isEmpty;
- (BOOL)isEqual:(id)a3;
- (OADFontScheme)init;
- (id)fontForId:(int)a3;
- (unint64_t)hash;
- (void)validateFontScheme;
@end

@implementation OADFontScheme

- (OADFontScheme)init
{
  v8.receiver = self;
  v8.super_class = OADFontScheme;
  v2 = [(OADFontScheme *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_new();
    majorFont = v2->_majorFont;
    v2->_majorFont = v3;

    v5 = objc_opt_new();
    minorFont = v2->_minorFont;
    v2->_minorFont = v5;
  }

  return v2;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    v7 = v4;
    if ([(OADFontCollection *)self->_majorFont isEqualToFontCollection:v7[2]])
    {
      v6 = [(OADFontCollection *)self->_minorFont isEqualToFontCollection:v7[3]];
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
  v3 = [(NSString *)self->_name hash];
  v4 = [(OADBaseFontCollection *)self->_majorFont latinFont];
  v5 = [v4 hash];
  v6 = [(OADBaseFontCollection *)self->_minorFont latinFont];
  v7 = [v6 hash];

  return (v5 << 8) + (v3 << 16) + v7;
}

- (BOOL)isEmpty
{
  v3 = [(OADFontCollection *)self->_majorFont isEmpty];
  if (v3)
  {
    minorFont = self->_minorFont;

    LOBYTE(v3) = [(OADFontCollection *)minorFont isEmpty];
  }

  return v3;
}

- (id)fontForId:(int)a3
{
  if (a3 == 1)
  {
    v3 = [(OADFontScheme *)self minorFont];
  }

  else if (a3)
  {
    v3 = 0;
  }

  else
  {
    v3 = [(OADFontScheme *)self majorFont];
  }

  return v3;
}

- (void)validateFontScheme
{
  if (!self->_name)
  {
    self->_name = @"Office";
  }

  v3 = [(OADBaseFontCollection *)self->_majorFont latinFont];
  v4 = [v3 length];

  if (!v4)
  {
    [(OADBaseFontCollection *)self->_majorFont setLatinFont:@"Calibri"];
  }

  v5 = [(OADBaseFontCollection *)self->_minorFont latinFont];
  v6 = [v5 length];

  if (!v6)
  {
    minorFont = self->_minorFont;

    [(OADBaseFontCollection *)minorFont setLatinFont:@"Cambria"];
  }
}

@end