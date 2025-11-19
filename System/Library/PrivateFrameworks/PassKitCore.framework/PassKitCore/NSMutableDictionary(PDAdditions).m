@interface NSMutableDictionary(PDAdditions)
- (void)setBool:()PDAdditions forKey:;
- (void)setDouble:()PDAdditions forKey:;
- (void)setEntityPIDOrNull:()PDAdditions forKey:;
- (void)setInt32:()PDAdditions forKey:;
- (void)setInteger:()PDAdditions forKey:;
- (void)setLongLong:()PDAdditions forKey:;
- (void)setObjectOrNull:()PDAdditions forKey:;
- (void)setUnsignedLongLong:()PDAdditions forKey:;
@end

@implementation NSMutableDictionary(PDAdditions)

- (void)setEntityPIDOrNull:()PDAdditions forKey:
{
  if (a3)
  {
    v6 = MEMORY[0x1E696AD98];
    v7 = a4;
    v8 = [v6 numberWithLongLong:{objc_msgSend(a3, "persistentID")}];
    [a1 setObjectOrNull:? forKey:?];
  }

  else
  {
    v8 = a4;
    [a1 setObjectOrNull:0 forKey:?];
  }
}

- (void)setObjectOrNull:()PDAdditions forKey:
{
  if (a3)
  {
    v8 = a4;
    [a1 setObject:a3 forKey:?];
  }

  else
  {
    v6 = MEMORY[0x1E695DFB0];
    v7 = a4;
    v8 = [v6 null];
    [a1 setObject:? forKey:?];
  }
}

- (void)setInt32:()PDAdditions forKey:
{
  v6 = MEMORY[0x1E696AD98];
  v7 = a4;
  v8 = [v6 numberWithInt:a3];
  [a1 setObject:v8 forKey:v7];
}

- (void)setInteger:()PDAdditions forKey:
{
  v6 = MEMORY[0x1E696AD98];
  v7 = a4;
  v8 = [v6 numberWithInteger:a3];
  [a1 setObject:v8 forKey:v7];
}

- (void)setLongLong:()PDAdditions forKey:
{
  v6 = MEMORY[0x1E696AD98];
  v7 = a4;
  v8 = [v6 numberWithLongLong:a3];
  [a1 setObject:v8 forKey:v7];
}

- (void)setUnsignedLongLong:()PDAdditions forKey:
{
  v6 = MEMORY[0x1E696AD98];
  v7 = a4;
  v8 = [v6 numberWithUnsignedLongLong:a3];
  [a1 setObject:v8 forKey:v7];
}

- (void)setDouble:()PDAdditions forKey:
{
  v6 = MEMORY[0x1E696AD98];
  v7 = a4;
  v8 = [v6 numberWithDouble:a2];
  [a1 setObject:v8 forKey:v7];
}

- (void)setBool:()PDAdditions forKey:
{
  v6 = MEMORY[0x1E696AD98];
  v7 = a4;
  v8 = [v6 numberWithBool:a3];
  [a1 setObject:v8 forKey:v7];
}

@end