@interface NSFormatter(GKAdditions)
- (void)_gkUpdateLocale;
@end

@implementation NSFormatter(GKAdditions)

- (void)_gkUpdateLocale
{
  selfCopy = self;
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  locale = [selfCopy locale];

  if (locale != currentLocale)
  {
    [selfCopy setLocale:currentLocale];
  }
}

@end