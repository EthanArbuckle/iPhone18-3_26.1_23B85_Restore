@interface NSCharacterSet(LanguageIdentificationAdditions)
+ (id)vietnameseCharacterSet;
@end

@implementation NSCharacterSet(LanguageIdentificationAdditions)

+ (id)vietnameseCharacterSet
{
  if (vietnameseCharacterSet___onceToken != -1)
  {
    +[NSCharacterSet(LanguageIdentificationAdditions) vietnameseCharacterSet];
  }

  v1 = vietnameseCharacterSet___vietnameseCharset;

  return v1;
}

@end