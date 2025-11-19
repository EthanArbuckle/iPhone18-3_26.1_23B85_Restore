@interface NSMutableDictionary
+ (id)IX_dictionaryWithContentsOfURL:(id)a3 options:(unint64_t)a4 error:(id *)a5;
@end

@implementation NSMutableDictionary

+ (id)IX_dictionaryWithContentsOfURL:(id)a3 options:(unint64_t)a4 error:(id *)a5
{
  v7.receiver = a1;
  v7.super_class = &OBJC_METACLASS___NSMutableDictionary;
  v5 = objc_msgSendSuper2(&v7, "IX_dictionaryWithContentsOfURL:options:error:", a3, a4 | 1, a5);

  return v5;
}

@end