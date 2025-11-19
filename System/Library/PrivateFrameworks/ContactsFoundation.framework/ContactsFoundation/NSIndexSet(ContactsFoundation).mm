@interface NSIndexSet(ContactsFoundation)
- (id)_cn_filter:()ContactsFoundation;
- (id)_cn_flatMap:()ContactsFoundation;
- (id)_cn_map:()ContactsFoundation;
- (id)_cn_mapRanges:()ContactsFoundation;
- (id)_cn_shortDescription;
- (uint64_t)_cn_all:()ContactsFoundation;
- (uint64_t)_cn_any:()ContactsFoundation;
- (void)_cn_each:()ContactsFoundation;
@end

@implementation NSIndexSet(ContactsFoundation)

- (uint64_t)_cn_all:()ContactsFoundation
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 1;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __42__NSIndexSet_ContactsFoundation___cn_all___block_invoke;
  v8[3] = &unk_1E6ED7D78;
  v5 = v4;
  v9 = v5;
  v10 = &v11;
  [a1 enumerateIndexesUsingBlock:v8];
  v6 = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return v6;
}

- (uint64_t)_cn_any:()ContactsFoundation
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __42__NSIndexSet_ContactsFoundation___cn_any___block_invoke;
  v8[3] = &unk_1E6ED7D78;
  v5 = v4;
  v9 = v5;
  v10 = &v11;
  [a1 enumerateIndexesUsingBlock:v8];
  v6 = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return v6;
}

- (void)_cn_each:()ContactsFoundation
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __43__NSIndexSet_ContactsFoundation___cn_each___block_invoke;
    v6[3] = &unk_1E6ED7DA0;
    v7 = v4;
    [a1 enumerateIndexesUsingBlock:v6];
  }
}

- (id)_cn_filter:()ContactsFoundation
{
  v4 = a3;
  if (v4)
  {
    v5 = [MEMORY[0x1E696AD50] indexSet];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __45__NSIndexSet_ContactsFoundation___cn_filter___block_invoke;
    v10[3] = &unk_1E6ED7DC8;
    v12 = v4;
    v6 = v5;
    v11 = v6;
    [a1 enumerateIndexesUsingBlock:v10];
    v7 = v11;
    v8 = v6;
  }

  else
  {
    v8 = a1;
  }

  return v8;
}

- (id)_cn_flatMap:()ContactsFoundation
{
  v4 = a3;
  v5 = [MEMORY[0x1E696AD50] indexSet];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __46__NSIndexSet_ContactsFoundation___cn_flatMap___block_invoke;
  v11[3] = &unk_1E6ED7DC8;
  v13 = v4;
  v6 = v5;
  v12 = v6;
  v7 = v4;
  [a1 enumerateIndexesUsingBlock:v11];
  v8 = v12;
  v9 = v6;

  return v6;
}

- (id)_cn_map:()ContactsFoundation
{
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(a1, "count")}];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __42__NSIndexSet_ContactsFoundation___cn_map___block_invoke;
  v11[3] = &unk_1E6ED7DC8;
  v13 = v4;
  v6 = v5;
  v12 = v6;
  v7 = v4;
  [a1 enumerateIndexesUsingBlock:v11];
  v8 = v12;
  v9 = v6;

  return v6;
}

- (id)_cn_mapRanges:()ContactsFoundation
{
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(a1, "count")}];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __48__NSIndexSet_ContactsFoundation___cn_mapRanges___block_invoke;
  v11[3] = &unk_1E6ED7DF0;
  v13 = v4;
  v6 = v5;
  v12 = v6;
  v7 = v4;
  [a1 enumerateRangesUsingBlock:v11];
  v8 = v12;
  v9 = v6;

  return v6;
}

- (id)_cn_shortDescription
{
  v2 = [MEMORY[0x1E696AD60] stringWithString:@"{"];
  v3 = [a1 _cn_mapRanges:CNRangeShortDescription];
  v4 = [v3 componentsJoinedByString:{@", "}];
  [v2 appendString:v4];

  [v2 appendString:@"}"];
  v5 = [v2 copy];

  return v5;
}

@end