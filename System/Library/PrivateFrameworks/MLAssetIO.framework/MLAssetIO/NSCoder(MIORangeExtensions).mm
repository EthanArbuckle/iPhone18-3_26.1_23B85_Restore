@interface NSCoder(MIORangeExtensions)
- (uint64_t)decodeMIORangeForKey:()MIORangeExtensions;
- (void)encodeMIORange:()MIORangeExtensions forKey:;
@end

@implementation NSCoder(MIORangeExtensions)

- (void)encodeMIORange:()MIORangeExtensions forKey:
{
  v8 = MEMORY[0x1E695DF90];
  v9 = a5;
  v12 = objc_alloc_init(v8);
  v10 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [v12 setObject:v10 forKeyedSubscript:@"lowerBound"];

  v11 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  [v12 setObject:v11 forKeyedSubscript:@"upperBound"];

  [self encodeObject:v12 forKey:v9];
}

- (uint64_t)decodeMIORangeForKey:()MIORangeExtensions
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = [v4 setWithObjects:{v6, v7, objc_opt_class(), 0}];
  v9 = [self decodeObjectOfClasses:v8 forKey:v5];

  v10 = [v9 objectForKeyedSubscript:@"lowerBound"];
  v11 = [v9 objectForKeyedSubscript:@"upperBound"];
  integerValue = [v10 integerValue];
  [v11 integerValue];

  return integerValue;
}

@end