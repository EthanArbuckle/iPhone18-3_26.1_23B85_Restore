@interface WBBookmark
+ (void)readFrom:(id)a3 index:(unsigned int)a4 type:(int)a5 paragraph:(id)a6;
@end

@implementation WBBookmark

+ (void)readFrom:(id)a3 index:(unsigned int)a4 type:(int)a5 paragraph:(id)a6
{
  v7 = *&a5;
  v13 = a3;
  v9 = a6;
  v10 = [v13 bookmarkTable];
  if (a4 < ((*(v10 + 6) - *(v10 + 4)) >> 3))
  {
    v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCsString:{WrdBookmarkTable::getBookmark(v10, a4) + 8}];
    v12 = [v9 addBookmark:v11 type:v7];
  }
}

@end