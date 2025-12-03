@interface NSUserDefaults(NFAdditions)
- (void)nf_migrateObjectForKey:()NFAdditions toKey:;
@end

@implementation NSUserDefaults(NFAdditions)

- (void)nf_migrateObjectForKey:()NFAdditions toKey:
{
  v8 = a3;
  v6 = a4;
  if (v8 && v6)
  {
    v7 = [self objectForKey:v8];
    if (v7)
    {
      [self setObject:v7 forKey:v6];
      [self removeObjectForKey:v8];
    }
  }
}

@end