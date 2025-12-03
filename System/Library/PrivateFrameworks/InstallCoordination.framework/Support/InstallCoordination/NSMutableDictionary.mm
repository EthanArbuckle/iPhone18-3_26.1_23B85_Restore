@interface NSMutableDictionary
+ (id)IX_dictionaryWithContentsOfURL:(id)l options:(unint64_t)options error:(id *)error;
@end

@implementation NSMutableDictionary

+ (id)IX_dictionaryWithContentsOfURL:(id)l options:(unint64_t)options error:(id *)error
{
  v7.receiver = self;
  v7.super_class = &OBJC_METACLASS___NSMutableDictionary;
  v5 = objc_msgSendSuper2(&v7, "IX_dictionaryWithContentsOfURL:options:error:", l, options | 1, error);

  return v5;
}

@end