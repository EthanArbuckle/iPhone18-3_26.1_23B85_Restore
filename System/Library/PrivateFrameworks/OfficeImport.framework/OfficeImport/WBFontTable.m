@interface WBFontTable
+ (void)readFrom:(id)a3 fontTable:(id)a4;
+ (void)readFromFontTable:(id)a3 wrdFontTable:(void *)a4 fontTable:(id)a5;
@end

@implementation WBFontTable

+ (void)readFrom:(id)a3 fontTable:(id)a4
{
  v6 = a3;
  v7 = a4;
  WrdFontFamilyNameTable::WrdFontFamilyNameTable(v9);
  v8 = [v6 wrdReader];
  (*(*v8 + 232))(v8, v9);
  [a1 readFromFontTable:v6 wrdFontTable:v9 fontTable:v7];
  WrdFontFamilyNameTable::~WrdFontFamilyNameTable(v9);
}

+ (void)readFromFontTable:(id)a3 wrdFontTable:(void *)a4 fontTable:(id)a5
{
  v11 = a3;
  v7 = a5;
  [v7 clear];
  v8 = (*(a4 + 2) - *(a4 + 1)) >> 3;
  if (v8 >= 1)
  {
    v9 = 0;
    do
    {
      v10 = [WBFont readFrom:WrdEmbeddedTTFRecordTable::getEmbeddedFontReference(a4 withFontTable:v9), v7];
      if (v10)
      {
        [v11 addFont:v10 index:v9];
      }

      v9 = (v9 + 1);
    }

    while (v8 != v9);
  }
}

@end