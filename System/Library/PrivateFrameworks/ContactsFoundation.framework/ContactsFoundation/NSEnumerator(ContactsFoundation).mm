@interface NSEnumerator(ContactsFoundation)
- (_CNCompactMapEnumerator)_cn_compactMap:()ContactsFoundation;
- (_CNFlatMapEnumerator)_cn_flatMap:()ContactsFoundation;
- (id)_cn_filter:()ContactsFoundation;
@end

@implementation NSEnumerator(ContactsFoundation)

- (_CNCompactMapEnumerator)_cn_compactMap:()ContactsFoundation
{
  v4 = a3;
  v5 = [[_CNCompactMapEnumerator alloc] initWithEnumerator:self transform:v4];

  return v5;
}

- (id)_cn_filter:()ContactsFoundation
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __47__NSEnumerator_ContactsFoundation___cn_filter___block_invoke;
  v8[3] = &unk_1E6ED7260;
  v9 = v4;
  v5 = v4;
  v6 = [self _cn_compactMap:v8];

  return v6;
}

- (_CNFlatMapEnumerator)_cn_flatMap:()ContactsFoundation
{
  v4 = a3;
  v5 = [[_CNFlatMapEnumerator alloc] initWithEnumerator:self transform:v4];

  return v5;
}

@end