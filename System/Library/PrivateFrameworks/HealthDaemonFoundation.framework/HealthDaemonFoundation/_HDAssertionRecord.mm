@interface _HDAssertionRecord
- (void)initWithAssertionIdentifier:(void *)identifier;
@end

@implementation _HDAssertionRecord

- (void)initWithAssertionIdentifier:(void *)identifier
{
  v3 = a2;
  if (identifier)
  {
    v9.receiver = identifier;
    v9.super_class = _HDAssertionRecord;
    identifier = objc_msgSendSuper2(&v9, sel_init);
    if (identifier)
    {
      v4 = [v3 copy];
      v5 = identifier[1];
      identifier[1] = v4;

      weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
      v7 = identifier[2];
      identifier[2] = weakObjectsHashTable;
    }
  }

  return identifier;
}

@end