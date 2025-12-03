@interface OADFontScheme
- (BOOL)isEmpty;
- (BOOL)isEqual:(id)equal;
- (OADFontScheme)init;
- (id)fontForId:(int)id;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    v7 = equalCopy;
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
  latinFont = [(OADBaseFontCollection *)self->_majorFont latinFont];
  v5 = [latinFont hash];
  latinFont2 = [(OADBaseFontCollection *)self->_minorFont latinFont];
  v7 = [latinFont2 hash];

  return (v5 << 8) + (v3 << 16) + v7;
}

- (BOOL)isEmpty
{
  isEmpty = [(OADFontCollection *)self->_majorFont isEmpty];
  if (isEmpty)
  {
    minorFont = self->_minorFont;

    LOBYTE(isEmpty) = [(OADFontCollection *)minorFont isEmpty];
  }

  return isEmpty;
}

- (id)fontForId:(int)id
{
  if (id == 1)
  {
    minorFont = [(OADFontScheme *)self minorFont];
  }

  else if (id)
  {
    minorFont = 0;
  }

  else
  {
    minorFont = [(OADFontScheme *)self majorFont];
  }

  return minorFont;
}

- (void)validateFontScheme
{
  if (!self->_name)
  {
    self->_name = @"Office";
  }

  latinFont = [(OADBaseFontCollection *)self->_majorFont latinFont];
  v4 = [latinFont length];

  if (!v4)
  {
    [(OADBaseFontCollection *)self->_majorFont setLatinFont:@"Calibri"];
  }

  latinFont2 = [(OADBaseFontCollection *)self->_minorFont latinFont];
  v6 = [latinFont2 length];

  if (!v6)
  {
    minorFont = self->_minorFont;

    [(OADBaseFontCollection *)minorFont setLatinFont:@"Cambria"];
  }
}

@end