@interface NSEnumerator(FCAdditions)
- (id)fc_firstObjectPassingTest:()FCAdditions;
@end

@implementation NSEnumerator(FCAdditions)

- (id)fc_firstObjectPassingTest:()FCAdditions
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "testBlock"];
    *buf = 136315906;
    v11 = "[NSEnumerator(FCAdditions) fc_firstObjectPassingTest:]";
    v12 = 2080;
    v13 = "NSEnumerator+FCAdditions.m";
    v14 = 1024;
    v15 = 15;
    v16 = 2114;
    v17 = v9;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  nextObject = 0;
  do
  {
    v6 = nextObject;
    nextObject = [self nextObject];
  }

  while (nextObject && !v4[2](v4, nextObject));

  v7 = *MEMORY[0x1E69E9840];

  return nextObject;
}

@end