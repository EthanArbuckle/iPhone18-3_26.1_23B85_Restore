@interface NSCharacterSet
@end

@implementation NSCharacterSet

uint64_t __73__NSCharacterSet_LanguageIdentificationAdditions__vietnameseCharacterSet__block_invoke()
{
  v0 = [MEMORY[0x277CCAB50] characterSetWithRange:{7840, 95}];
  v1 = vietnameseCharacterSet___vietnameseCharset;
  vietnameseCharacterSet___vietnameseCharset = v0;

  v2 = vietnameseCharacterSet___vietnameseCharset;

  return [v2 addCharactersInString:@"àÀãÃáÁăĂâÂđĐèÈéÉêÊìÌĩĨíÍòÒõÕóÓôÔơƠùÙũŨúÚưýÝ"];
}

@end