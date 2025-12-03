@interface WDFontTable
- (WDFontTable)init;
- (id)createFontWithName:(id)name;
- (id)description;
- (id)fontWithName:(id)name;
- (id)fontWithName:(id)name create:(BOOL)create;
@end

@implementation WDFontTable

- (WDFontTable)init
{
  v11.receiver = self;
  v11.super_class = WDFontTable;
  v2 = [(WDFontTable *)&v11 init];
  if (v2)
  {
    v3 = objc_alloc_init(OITSUNoCopyDictionary);
    mFontTable = v2->mFontTable;
    v2->mFontTable = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    mFontsInOrderOfInsertion = v2->mFontsInOrderOfInsertion;
    v2->mFontsInOrderOfInsertion = v5;

    v7 = [(WDFontTable *)v2 fontWithName:@"Times New Roman" create:1];
    [v7 setPitch:2];
    [v7 setFontFamily:1];
    [v7 setCharacterSet:0];
    v8 = [(WDFontTable *)v2 fontWithName:@"Symbol" create:1];

    [v8 setPitch:2];
    [v8 setFontFamily:1];
    [v8 setCharacterSet:2];
    v9 = [(WDFontTable *)v2 fontWithName:@"Arial" create:1];

    [v9 setPitch:2];
    [v9 setFontFamily:2];
    [v9 setCharacterSet:0];
  }

  return v2;
}

- (id)fontWithName:(id)name
{
  v3 = [(WDFontTable *)self fontWithName:name create:0];

  return v3;
}

- (id)fontWithName:(id)name create:(BOOL)create
{
  createCopy = create;
  nameCopy = name;
  if (nameCopy)
  {
    v7 = [(OITSUNoCopyDictionary *)self->mFontTable objectForKey:nameCopy];
    v8 = v7;
    if (!createCopy || v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = [(WDFontTable *)self createFontWithName:nameCopy];
    }

    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)createFontWithName:(id)name
{
  nameCopy = name;
  v5 = nameCopy;
  if (nameCopy && [nameCopy length])
  {
    v6 = [(OITSUNoCopyDictionary *)self->mFontTable objectForKey:v5];
    if (!v6)
    {
      v6 = [[WDFont alloc] initWithName:v5];
      [(OITSUNoCopyDictionary *)self->mFontTable setObject:v6 forKey:v5];
      [(NSMutableArray *)self->mFontsInOrderOfInsertion addObject:v6];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = WDFontTable;
  v2 = [(WDFontTable *)&v4 description];

  return v2;
}

@end