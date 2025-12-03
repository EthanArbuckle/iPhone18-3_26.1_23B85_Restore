@interface NSMutableDictionary(FHDictionarySafeMethods)
- (void)safelyAddObjectToArrayCollection:()FHDictionarySafeMethods forKey:;
- (void)safelyAddObjectToSetCollection:()FHDictionarySafeMethods forKey:;
- (void)safelySetObject:()FHDictionarySafeMethods forKey:;
- (void)setBool:()FHDictionarySafeMethods forKey:;
- (void)setDate:()FHDictionarySafeMethods forKey:;
- (void)setDouble:()FHDictionarySafeMethods forKey:;
- (void)setInt32:()FHDictionarySafeMethods forKey:;
- (void)setInteger:()FHDictionarySafeMethods forKey:;
- (void)setLongLong:()FHDictionarySafeMethods forKey:;
- (void)setObjectOrNull:()FHDictionarySafeMethods forKey:;
- (void)setOrAddToDecimalValue:()FHDictionarySafeMethods forKey:;
- (void)setOrAddToDoubleValue:()FHDictionarySafeMethods forKey:;
- (void)setUnsignedLongLong:()FHDictionarySafeMethods forKey:;
@end

@implementation NSMutableDictionary(FHDictionarySafeMethods)

- (void)safelySetObject:()FHDictionarySafeMethods forKey:
{
  if (a3)
  {
    return [self setObject:? forKey:?];
  }

  return self;
}

- (void)setObjectOrNull:()FHDictionarySafeMethods forKey:
{
  if (a3)
  {
    null = a4;
    [self setObject:a3 forKey:?];
  }

  else
  {
    v6 = MEMORY[0x277CBEB68];
    v7 = a4;
    null = [v6 null];
    [self setObject:? forKey:?];
  }
}

- (void)setInt32:()FHDictionarySafeMethods forKey:
{
  v6 = MEMORY[0x277CCABB0];
  v7 = a4;
  v8 = [v6 numberWithInt:a3];
  [self setObject:v8 forKey:v7];
}

- (void)setInteger:()FHDictionarySafeMethods forKey:
{
  v6 = MEMORY[0x277CCABB0];
  v7 = a4;
  v8 = [v6 numberWithInteger:a3];
  [self setObject:v8 forKey:v7];
}

- (void)setLongLong:()FHDictionarySafeMethods forKey:
{
  v6 = MEMORY[0x277CCABB0];
  v7 = a4;
  v8 = [v6 numberWithLongLong:a3];
  [self setObject:v8 forKey:v7];
}

- (void)setUnsignedLongLong:()FHDictionarySafeMethods forKey:
{
  v6 = MEMORY[0x277CCABB0];
  v7 = a4;
  v8 = [v6 numberWithUnsignedLongLong:a3];
  [self setObject:v8 forKey:v7];
}

- (void)setDouble:()FHDictionarySafeMethods forKey:
{
  v6 = MEMORY[0x277CCABB0];
  v7 = a4;
  v8 = [v6 numberWithDouble:a2];
  [self setObject:v8 forKey:v7];
}

- (void)setBool:()FHDictionarySafeMethods forKey:
{
  v6 = MEMORY[0x277CCABB0];
  v7 = a4;
  v8 = [v6 numberWithBool:a3];
  [self setObject:v8 forKey:v7];
}

- (void)setDate:()FHDictionarySafeMethods forKey:
{
  v6 = a4;
  v7 = [a3 description];
  [self safelySetObject:v7 forKey:v6];
}

- (void)setOrAddToDecimalValue:()FHDictionarySafeMethods forKey:
{
  v6 = a4;
  [a3 doubleValue];
  [self setOrAddToDoubleValue:v6 forKey:?];
}

- (void)setOrAddToDoubleValue:()FHDictionarySafeMethods forKey:
{
  v6 = a4;
  v7 = [self objectForKey:v6];
  v8 = v7;
  if (v7)
  {
    zero = v7;
  }

  else
  {
    zero = [MEMORY[0x277CCA980] zero];
  }

  v13 = zero;

  v10 = objc_alloc(MEMORY[0x277CCA980]);
  [v13 doubleValue];
  v12 = [v10 initWithDouble:v11 + a2];
  [self safelySetObject:v12 forKey:v6];
}

- (void)safelyAddObjectToArrayCollection:()FHDictionarySafeMethods forKey:
{
  v10 = a3;
  v6 = a4;
  v7 = [self objectForKey:v6];
  if (v7)
  {
    v8 = [MEMORY[0x277CBEB18] arrayWithArray:v7];
    [v8 addObject:v10];
    v9 = [v8 copy];
    [self safelySetObject:v9 forKey:v6];

    v6 = v9;
  }

  else
  {
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:{v10, 0}];
    [self safelySetObject:v8 forKey:v6];
  }
}

- (void)safelyAddObjectToSetCollection:()FHDictionarySafeMethods forKey:
{
  v10 = a3;
  v6 = a4;
  v7 = [self objectForKey:v6];
  if (v7)
  {
    v8 = [MEMORY[0x277CBEB58] setWithSet:v7];
    [v8 addObject:v10];
    v9 = [v8 copy];
    [self safelySetObject:v9 forKey:v6];

    v6 = v9;
  }

  else
  {
    v8 = [MEMORY[0x277CBEB98] setWithObjects:{v10, 0}];
    [self safelySetObject:v8 forKey:v6];
  }
}

@end