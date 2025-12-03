@interface EBFontTable
+ (unsigned)xlFontIndexFromEDFontIndex:(unint64_t)index;
+ (void)readWithState:(id)state;
@end

@implementation EBFontTable

+ (void)readWithState:(id)state
{
  stateCopy = state;
  resources = [stateCopy resources];
  fonts = [resources fonts];
  XlFontTable::XlFontTable(&v10);
  xlReader = [stateCopy xlReader];
  (*(*xlReader + 168))(xlReader, &v10);
  v7 = XlFontTable::size(&v10);
  if (v7)
  {
    v8 = 0;
    do
    {
      if (v8 != 4)
      {
        v9 = [EBFont edFontFromXlFont:XlFontTable::at(&v10 edResources:v8), resources];
        [fonts addObject:v9];
      }

      ++v8;
    }

    while (v7 != v8);
  }

  v10 = &unk_286EC9C88;
  CsSimpleHeapVector<XlFont>::~CsSimpleHeapVector(&v12);
  OcText::~OcText(&v11);
}

+ (unsigned)xlFontIndexFromEDFontIndex:(unint64_t)index
{
  if (index <= 3)
  {
    return index;
  }

  else
  {
    return index + 1;
  }
}

@end