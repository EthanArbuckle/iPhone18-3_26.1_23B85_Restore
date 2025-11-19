@interface NSMutableDictionary(EmailFoundationAdditions)
- (void)ef_removeObjectsPassingTest:()EmailFoundationAdditions;
- (void)ef_setOptionalObject:()EmailFoundationAdditions forKey:;
@end

@implementation NSMutableDictionary(EmailFoundationAdditions)

- (void)ef_setOptionalObject:()EmailFoundationAdditions forKey:
{
  v7 = a3;
  v6 = a4;
  if (v7)
  {
    [a1 setObject:v7 forKey:v6];
  }
}

- (void)ef_removeObjectsPassingTest:()EmailFoundationAdditions
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __77__NSMutableDictionary_EmailFoundationAdditions__ef_removeObjectsPassingTest___block_invoke;
  v8[3] = &unk_1E8248FC8;
  v5 = v4;
  v9 = v5;
  v6 = [a1 keysOfEntriesPassingTest:v8];
  v7 = [v6 allObjects];

  [a1 removeObjectsForKeys:v7];
}

@end