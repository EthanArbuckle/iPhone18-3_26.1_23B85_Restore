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
    [self setObjectOrNull:? forKey:?];
  }

  else
  {
    v8 = a4;
    [self setObjectOrNull:0 forKey:?];
  }
}

- (void)setObjectOrNull:()PDAdditions forKey:
{
  if (a3)
  {
    null = a4;
    [self setObject:a3 forKey:?];
  }

  else
  {
    v6 = MEMORY[0x1E695DFB0];
    v7 = a4;
    null = [v6 null];
    [self setObject:? forKey:?];
  }
}

- (void)setInt32:()PDAdditions forKey:
{
  v6 = MEMORY[0x1E696AD98];
  v7 = a4;
  v8 = [v6 numberWithInt:a3];
  [self setObject:v8 forKey:v7];
}

- (void)setInteger:()PDAdditions forKey:
{
  v6 = MEMORY[0x1E696AD98];
  v7 = a4;
  v8 = [v6 numberWithInteger:a3];
  [self setObject:v8 forKey:v7];
}

- (void)setLongLong:()PDAdditions forKey:
{
  v6 = MEMORY[0x1E696AD98];
  v7 = a4;
  v8 = [v6 numberWithLongLong:a3];
  [self setObject:v8 forKey:v7];
}

- (void)setUnsignedLongLong:()PDAdditions forKey:
{
  v6 = MEMORY[0x1E696AD98];
  v7 = a4;
  v8 = [v6 numberWithUnsignedLongLong:a3];
  [self setObject:v8 forKey:v7];
}

- (void)setDouble:()PDAdditions forKey:
{
  v6 = MEMORY[0x1E696AD98];
  v7 = a4;
  v8 = [v6 numberWithDouble:a2];
  [self setObject:v8 forKey:v7];
}

- (void)setBool:()PDAdditions forKey:
{
  v6 = MEMORY[0x1E696AD98];
  v7 = a4;
  v8 = [v6 numberWithBool:a3];
  [self setObject:v8 forKey:v7];
}

@end