@interface EBStringTable
+ (void)readWithState:(id)a3;
@end

@implementation EBStringTable

+ (void)readWithState:(id)a3
{
  v3 = a3;
  v4 = [v3 resources];
  v5 = [v4 strings];

  XlStringTable::XlStringTable(v12);
  v6 = [v3 xlReader];
  (*(*v6 + 248))(v6, v12);
  DocumentStringCount = XlStringTable::getDocumentStringCount(v12);
  if (DocumentStringCount)
  {
    v8 = 0;
    do
    {
      ExternRef = XlExternSheet::getExternRef(v12, v8);
      v10 = [v3 resources];
      v11 = [EBString edStringFromXlString:ExternRef edResources:v10];

      [v5 addObject:v11];
      ++v8;
    }

    while (DocumentStringCount != v8);
  }

  XlStringTable::~XlStringTable(v12);
}

@end