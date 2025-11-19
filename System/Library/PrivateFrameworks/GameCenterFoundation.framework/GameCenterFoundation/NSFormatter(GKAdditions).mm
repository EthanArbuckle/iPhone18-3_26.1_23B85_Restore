@interface NSFormatter(GKAdditions)
- (void)_gkUpdateLocale;
@end

@implementation NSFormatter(GKAdditions)

- (void)_gkUpdateLocale
{
  v3 = a1;
  v1 = [MEMORY[0x277CBEAF8] currentLocale];
  v2 = [v3 locale];

  if (v2 != v1)
  {
    [v3 setLocale:v1];
  }
}

@end