@interface _HDAssertionRecord
- (void)initWithAssertionIdentifier:(void *)a1;
@end

@implementation _HDAssertionRecord

- (void)initWithAssertionIdentifier:(void *)a1
{
  v3 = a2;
  if (a1)
  {
    v9.receiver = a1;
    v9.super_class = _HDAssertionRecord;
    a1 = objc_msgSendSuper2(&v9, sel_init);
    if (a1)
    {
      v4 = [v3 copy];
      v5 = a1[1];
      a1[1] = v4;

      v6 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
      v7 = a1[2];
      a1[2] = v6;
    }
  }

  return a1;
}

@end