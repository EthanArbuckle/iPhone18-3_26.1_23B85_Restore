@interface NSHashTable(EmailFoundationAdditions)
- (id)ef_uniquedObject:()EmailFoundationAdditions;
@end

@implementation NSHashTable(EmailFoundationAdditions)

- (id)ef_uniquedObject:()EmailFoundationAdditions
{
  v4 = a3;
  v5 = [a1 member:v4];
  if (!v5)
  {
    if (objc_opt_respondsToSelector())
    {
      v6 = [v4 copy];
    }

    else
    {
      v6 = v4;
    }

    v5 = v6;
    [a1 addObject:v6];
  }

  return v5;
}

@end