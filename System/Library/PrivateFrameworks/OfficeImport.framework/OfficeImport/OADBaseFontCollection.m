@interface OADBaseFontCollection
- (BOOL)isEmpty;
- (BOOL)isEqualToBaseFontCollection:(id)a3;
- (id)baseFontForId:(int)a3;
- (void)setBaseFont:(id)a3 forId:(int)a4;
@end

@implementation OADBaseFontCollection

- (id)baseFontForId:(int)a3
{
  if (a3 == 2)
  {
    v3 = [(OADBaseFontCollection *)self complexScriptFont];
  }

  else if (a3 == 1)
  {
    v3 = [(OADBaseFontCollection *)self eastAsianFont];
  }

  else if (a3)
  {
    v3 = 0;
  }

  else
  {
    v3 = [(OADBaseFontCollection *)self latinFont];
  }

  return v3;
}

- (void)setBaseFont:(id)a3 forId:(int)a4
{
  v6 = a3;
  v7 = v6;
  switch(a4)
  {
    case 2:
      [(OADBaseFontCollection *)self setComplexScriptFont:v6];
      break;
    case 1:
      [(OADBaseFontCollection *)self setEastAsianFont:v6];
      break;
    case 0:
      [(OADBaseFontCollection *)self setLatinFont:v6];
      break;
  }
}

- (BOOL)isEqualToBaseFontCollection:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(OADBaseFontCollection *)self latinFont];
    v6 = [v4 latinFont];
    if (TCObjectEqual(v5, v6))
    {
      v7 = [(OADBaseFontCollection *)self eastAsianFont];
      v8 = [v4 eastAsianFont];
      if (TCObjectEqual(v7, v8))
      {
        v9 = [(OADBaseFontCollection *)self complexScriptFont];
        v10 = [v4 complexScriptFont];
        v11 = TCObjectEqual(v9, v10);
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
  v3 = [(OADBaseFontCollection *)self latinFont];
  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v5 = [(OADBaseFontCollection *)self eastAsianFont];
    if (v5)
    {
      v4 = 0;
    }

    else
    {
      v6 = [(OADBaseFontCollection *)self complexScriptFont];
      v4 = v6 == 0;
    }
  }

  return v4;
}

@end