@interface EBFontTable
+ (unsigned)xlFontIndexFromEDFontIndex:(unint64_t)a3;
+ (void)readWithState:(id)a3;
@end

@implementation EBFontTable

+ (void)readWithState:(id)a3
{
  v3 = a3;
  v4 = [v3 resources];
  v5 = [v4 fonts];
  XlFontTable::XlFontTable(&v10);
  v6 = [v3 xlReader];
  (*(*v6 + 168))(v6, &v10);
  v7 = XlFontTable::size(&v10);
  if (v7)
  {
    v8 = 0;
    do
    {
      if (v8 != 4)
      {
        v9 = [EBFont edFontFromXlFont:XlFontTable::at(&v10 edResources:v8), v4];
        [v5 addObject:v9];
      }

      ++v8;
    }

    while (v7 != v8);
  }

  v10 = &unk_286EC9C88;
  CsSimpleHeapVector<XlFont>::~CsSimpleHeapVector(&v12);
  OcText::~OcText(&v11);
}

+ (unsigned)xlFontIndexFromEDFontIndex:(unint64_t)a3
{
  if (a3 <= 3)
  {
    return a3;
  }

  else
  {
    return a3 + 1;
  }
}

@end