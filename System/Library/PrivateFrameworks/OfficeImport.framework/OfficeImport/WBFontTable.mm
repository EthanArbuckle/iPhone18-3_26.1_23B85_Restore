@interface WBFontTable
+ (void)readFrom:(id)from fontTable:(id)table;
+ (void)readFromFontTable:(id)table wrdFontTable:(void *)fontTable fontTable:(id)a5;
@end

@implementation WBFontTable

+ (void)readFrom:(id)from fontTable:(id)table
{
  fromCopy = from;
  tableCopy = table;
  WrdFontFamilyNameTable::WrdFontFamilyNameTable(v9);
  wrdReader = [fromCopy wrdReader];
  (*(*wrdReader + 232))(wrdReader, v9);
  [self readFromFontTable:fromCopy wrdFontTable:v9 fontTable:tableCopy];
  WrdFontFamilyNameTable::~WrdFontFamilyNameTable(v9);
}

+ (void)readFromFontTable:(id)table wrdFontTable:(void *)fontTable fontTable:(id)a5
{
  tableCopy = table;
  v7 = a5;
  [v7 clear];
  v8 = (*(fontTable + 2) - *(fontTable + 1)) >> 3;
  if (v8 >= 1)
  {
    v9 = 0;
    do
    {
      v10 = [WBFont readFrom:WrdEmbeddedTTFRecordTable::getEmbeddedFontReference(fontTable withFontTable:v9), v7];
      if (v10)
      {
        [tableCopy addFont:v10 index:v9];
      }

      v9 = (v9 + 1);
    }

    while (v8 != v9);
  }
}

@end