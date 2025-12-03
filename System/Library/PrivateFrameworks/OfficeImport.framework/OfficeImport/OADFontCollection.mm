@interface OADFontCollection
- (BOOL)isEmpty;
- (BOOL)isEqualToFontCollection:(id)collection;
- (OADFontCollection)init;
- (id)description;
- (id)fontForScript:(id)script;
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

- (id)fontForScript:(id)script
{
  v3 = [(NSMutableDictionary *)self->_scriptToFontMap objectForKeyedSubscript:script];

  return v3;
}

- (BOOL)isEqualToFontCollection:(id)collection
{
  collectionCopy = collection;
  v7.receiver = self;
  v7.super_class = OADFontCollection;
  if ([(OADBaseFontCollection *)&v7 isEqualToBaseFontCollection:collectionCopy])
  {
    if ([(NSMutableDictionary *)self->_scriptToFontMap count]|| [(objc_object *)collectionCopy[4] count])
    {
      v5 = TCObjectEqual(self->_scriptToFontMap, collectionCopy[4]);
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
  isEmpty = [(OADBaseFontCollection *)&v5 isEmpty];
  if (isEmpty)
  {
    LOBYTE(isEmpty) = [(NSMutableDictionary *)self->_scriptToFontMap count]== 0;
  }

  return isEmpty;
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = OADFontCollection;
  v2 = [(OADFontCollection *)&v4 description];

  return v2;
}

@end