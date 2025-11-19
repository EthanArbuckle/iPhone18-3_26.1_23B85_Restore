@interface NSMutableDictionary(DNDSBackingStoreDictionaryContext)
- (void)setDictionaryRepresentationOfRecord:()DNDSBackingStoreDictionaryContext forKey:context:;
@end

@implementation NSMutableDictionary(DNDSBackingStoreDictionaryContext)

- (void)setDictionaryRepresentationOfRecord:()DNDSBackingStoreDictionaryContext forKey:context:
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v14 = [v8 mutableCopy];
  v11 = [v8 healingSource];

  v12 = [v11 objectForKeyedSubscript:v9];
  [v14 setHealingSource:v12];

  v13 = [v10 dictionaryRepresentationWithContext:v14];

  [a1 setObject:v13 forKeyedSubscript:v9];
}

@end