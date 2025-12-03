@interface NSMutableDictionary(FIUIUtilities)
- (void)fiui_incrementValueForKey:()FIUIUtilities byValue:;
@end

@implementation NSMutableDictionary(FIUIUtilities)

- (void)fiui_incrementValueForKey:()FIUIUtilities byValue:
{
  v6 = a4;
  v7 = [self objectForKey:v6];
  v10 = v7;
  if (v7)
  {
    [v7 doubleValue];
    a2 = v8 + a2;
  }

  v9 = [MEMORY[0x1E696AD98] numberWithDouble:a2];
  [self setObject:v9 forKey:v6];
}

@end