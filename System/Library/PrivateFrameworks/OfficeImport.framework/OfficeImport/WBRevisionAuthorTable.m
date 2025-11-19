@interface WBRevisionAuthorTable
+ (void)readFrom:(id)a3 revisionAuthorTable:(id)a4;
@end

@implementation WBRevisionAuthorTable

+ (void)readFrom:(id)a3 revisionAuthorTable:(id)a4
{
  v14 = a3;
  v5 = a4;
  v6 = [WBObjectFactory create:55];
  if (v6)
  {
  }

  else
  {
    v7 = 0;
  }

  *(v7 + 2) = 51;
  v8 = [v14 wrdReader];
  (*(*v8 + 312))(v8, v7);
  v9 = [v5 authors];
  v10 = *(v7 + 2);
  v11 = *(v10 + 8);
  if (*(v10 + 8))
  {
    v12 = 0;
    do
    {
      v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCsString:{WrdStringWithDataTable::getStringDataReference(*(v7 + 2), v12) + 8}];
      [v9 addObject:v13];

      ++v12;
    }

    while (v11 != v12);
  }

  (*(*v7 + 8))(v7);
}

@end