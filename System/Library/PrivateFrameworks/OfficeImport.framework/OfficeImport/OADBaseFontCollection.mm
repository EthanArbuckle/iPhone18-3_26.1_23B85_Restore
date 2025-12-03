@interface OADBaseFontCollection
- (BOOL)isEmpty;
- (BOOL)isEqualToBaseFontCollection:(id)collection;
- (id)baseFontForId:(int)id;
- (void)setBaseFont:(id)font forId:(int)id;
@end

@implementation OADBaseFontCollection

- (id)baseFontForId:(int)id
{
  if (id == 2)
  {
    complexScriptFont = [(OADBaseFontCollection *)self complexScriptFont];
  }

  else if (id == 1)
  {
    complexScriptFont = [(OADBaseFontCollection *)self eastAsianFont];
  }

  else if (id)
  {
    complexScriptFont = 0;
  }

  else
  {
    complexScriptFont = [(OADBaseFontCollection *)self latinFont];
  }

  return complexScriptFont;
}

- (void)setBaseFont:(id)font forId:(int)id
{
  fontCopy = font;
  v7 = fontCopy;
  switch(id)
  {
    case 2:
      [(OADBaseFontCollection *)self setComplexScriptFont:fontCopy];
      break;
    case 1:
      [(OADBaseFontCollection *)self setEastAsianFont:fontCopy];
      break;
    case 0:
      [(OADBaseFontCollection *)self setLatinFont:fontCopy];
      break;
  }
}

- (BOOL)isEqualToBaseFontCollection:(id)collection
{
  collectionCopy = collection;
  if (collectionCopy)
  {
    latinFont = [(OADBaseFontCollection *)self latinFont];
    latinFont2 = [collectionCopy latinFont];
    if (TCObjectEqual(latinFont, latinFont2))
    {
      eastAsianFont = [(OADBaseFontCollection *)self eastAsianFont];
      eastAsianFont2 = [collectionCopy eastAsianFont];
      if (TCObjectEqual(eastAsianFont, eastAsianFont2))
      {
        complexScriptFont = [(OADBaseFontCollection *)self complexScriptFont];
        complexScriptFont2 = [collectionCopy complexScriptFont];
        v11 = TCObjectEqual(complexScriptFont, complexScriptFont2);
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)isEmpty
{
  latinFont = [(OADBaseFontCollection *)self latinFont];
  if (latinFont)
  {
    v4 = 0;
  }

  else
  {
    eastAsianFont = [(OADBaseFontCollection *)self eastAsianFont];
    if (eastAsianFont)
    {
      v4 = 0;
    }

    else
    {
      complexScriptFont = [(OADBaseFontCollection *)self complexScriptFont];
      v4 = complexScriptFont == 0;
    }
  }

  return v4;
}

@end