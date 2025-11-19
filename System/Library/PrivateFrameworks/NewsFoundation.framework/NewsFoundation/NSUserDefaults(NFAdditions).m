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
    v7 = [a1 objectForKey:v8];
    if (v7)
    {
      [a1 setObject:v7 forKey:v6];
      [a1 removeObjectForKey:v8];
    }
  }
}

@end