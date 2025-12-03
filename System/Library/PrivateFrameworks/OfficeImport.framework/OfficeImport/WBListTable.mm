@interface WBListTable
+ (void)readFrom:(id)from listTable:(id)table;
@end

@implementation WBListTable

+ (void)readFrom:(id)from listTable:(id)table
{
  fromCopy = from;
  tableCopy = table;
  v6 = [WBObjectFactory create:33];
  if (v6)
  {
  }

  else
  {
    v7 = 0;
  }

  wrdReader = [fromCopy wrdReader];
  (*(*wrdReader + 288))(wrdReader, v7);
  v9 = (*(v7 + 2) - *(v7 + 1)) >> 3;
  if (v9 < 1)
  {
    goto LABEL_8;
  }

  LODWORD(v10) = 0;
  do
  {
    EmbeddedFontReference = WrdEmbeddedTTFRecordTable::getEmbeddedFontReference(v7, v10);
    v10 = (v10 + 1);
    v12 = [tableCopy addListWithListId:v10 listDefinitionId:*(EmbeddedFontReference + 16)];
    [WBList readFrom:fromCopy list:v12 override:EmbeddedFontReference];
  }

  while (v9 != v10);
  if (v7)
  {
LABEL_8:
    (*(*v7 + 8))(v7);
  }
}

@end