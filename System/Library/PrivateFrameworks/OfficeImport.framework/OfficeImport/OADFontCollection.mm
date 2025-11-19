@interface OADFontCollection
- (BOOL)isEmpty;
- (BOOL)isEqualToFontCollection:(id)a3;
- (OADFontCollection)init;
- (id)description;
- (id)fontForScript:(id)a3;
@end

@implementation OADFontCollection

- (OADFontCollection)init
{
  v6.receiver = self;
  v6.super_class = OADFontCollection;
  v2 = [(OADFontCollection *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    scriptToFontMap = v2->_scriptToFontMap;
    v2->_scriptToFontMap = v3;
  }

  return v2;
}

- (id)fontForScript:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_scriptToFontMap objectForKeyedSubscript:a3];

  return v3;
}

- (BOOL)isEqualToFontCollection:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = OADFontCollection;
  if ([(OADBaseFontCollection *)&v7 isEqualToBaseFontCollection:v4])
  {
    if ([(NSMutableDictionary *)self->_scriptToFontMap count]|| [(objc_object *)v4[4] count])
    {
      v5 = TCObjectEqual(self->_scriptToFontMap, v4[4]);
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isEmpty
{
  v5.receiver = self;
  v5.super_class = OADFontCollection;
  v3 = [(OADBaseFontCollection *)&v5 isEmpty];
  if (v3)
  {
    LOBYTE(v3) = [(NSMutableDictionary *)self->_scriptToFontMap count]== 0;
  }

  return v3;
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = OADFontCollection;
  v2 = [(OADFontCollection *)&v4 description];

  return v2;
}

@end