@interface NSMutableDictionary(ContactsFoundation)
- (id)_cn_objectForKey:()ContactsFoundation defaultGenerator:;
- (uint64_t)_cn_setObject:()ContactsFoundation orPlaceholder:forKey:;
- (void)_cn_setNonNilObject:()ContactsFoundation forKey:;
@end

@implementation NSMutableDictionary(ContactsFoundation)

- (void)_cn_setNonNilObject:()ContactsFoundation forKey:
{
  if (a3)
  {
    return [a1 setObject:? forKey:?];
  }

  return a1;
}

- (uint64_t)_cn_setObject:()ContactsFoundation orPlaceholder:forKey:
{
  if (!a3)
  {
    a3 = a4;
  }

  return [a1 setObject:a3 forKeyedSubscript:a5];
}

- (id)_cn_objectForKey:()ContactsFoundation defaultGenerator:
{
  v6 = a3;
  v7 = a4;
  v8 = [a1 objectForKeyedSubscript:v6];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = v7[2](v7);
    [a1 setObject:v10 forKeyedSubscript:v6];
  }

  return v10;
}

@end