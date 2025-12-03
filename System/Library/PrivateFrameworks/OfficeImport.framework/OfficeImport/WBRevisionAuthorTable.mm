@interface WBRevisionAuthorTable
+ (void)readFrom:(id)from revisionAuthorTable:(id)table;
@end

@implementation WBRevisionAuthorTable

+ (void)readFrom:(id)from revisionAuthorTable:(id)table
{
  fromCopy = from;
  tableCopy = table;
  v6 = [WBObjectFactory create:55];
  if (v6)
  {
  }

  else
  {
    v7 = 0;
  }

  *(v7 + 2) = 51;
  wrdReader = [fromCopy wrdReader];
  (*(*wrdReader + 312))(wrdReader, v7);
  authors = [tableCopy authors];
  v10 = *(v7 + 2);
  v11 = *(v10 + 8);
  if (*(v10 + 8))
  {
    v12 = 0;
    do
    {
      v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCsString:{WrdStringWithDataTable::getStringDataReference(*(v7 + 2), v12) + 8}];
      [authors addObject:v13];

      ++v12;
    }

    while (v11 != v12);
  }

  (*(*v7 + 8))(v7);
}

@end