@interface EBStringTable
+ (void)readWithState:(id)state;
@end

@implementation EBStringTable

+ (void)readWithState:(id)state
{
  stateCopy = state;
  resources = [stateCopy resources];
  strings = [resources strings];

  XlStringTable::XlStringTable(v12);
  xlReader = [stateCopy xlReader];
  (*(*xlReader + 248))(xlReader, v12);
  DocumentStringCount = XlStringTable::getDocumentStringCount(v12);
  if (DocumentStringCount)
  {
    v8 = 0;
    do
    {
      ExternRef = XlExternSheet::getExternRef(v12, v8);
      resources2 = [stateCopy resources];
      v11 = [EBString edStringFromXlString:ExternRef edResources:resources2];

      [strings addObject:v11];
      ++v8;
    }

    while (DocumentStringCount != v8);
  }

  XlStringTable::~XlStringTable(v12);
}

@end