@interface WBBookmark
+ (void)readFrom:(id)from index:(unsigned int)index type:(int)type paragraph:(id)paragraph;
@end

@implementation WBBookmark

+ (void)readFrom:(id)from index:(unsigned int)index type:(int)type paragraph:(id)paragraph
{
  v7 = *&type;
  fromCopy = from;
  paragraphCopy = paragraph;
  bookmarkTable = [fromCopy bookmarkTable];
  if (index < ((*(bookmarkTable + 6) - *(bookmarkTable + 4)) >> 3))
  {
    v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCsString:{WrdBookmarkTable::getBookmark(bookmarkTable, index) + 8}];
    v12 = [paragraphCopy addBookmark:v11 type:v7];
  }
}

@end