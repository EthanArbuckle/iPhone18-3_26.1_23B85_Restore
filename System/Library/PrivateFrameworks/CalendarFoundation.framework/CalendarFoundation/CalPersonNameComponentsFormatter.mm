@interface CalPersonNameComponentsFormatter
+ (id)_formatter;
+ (id)personNameComponentsFromString:(id)a3;
+ (id)stringFromPersonNameComponents:(id)a3;
@end

@implementation CalPersonNameComponentsFormatter

+ (id)_formatter
{
  v2 = [MEMORY[0x1E696AF00] currentThread];
  v3 = [v2 threadDictionary];
  v4 = [v3 objectForKey:@"kCalThreadLocalPersonNameComponentsFormatterKey"];

  if (!v4)
  {
    v4 = objc_opt_new();
    v5 = [MEMORY[0x1E696AF00] currentThread];
    v6 = [v5 threadDictionary];
    [v6 setObject:v4 forKey:@"kCalThreadLocalPersonNameComponentsFormatterKey"];
  }

  return v4;
}

+ (id)personNameComponentsFromString:(id)a3
{
  v4 = a3;
  v5 = [a1 _formatter];
  v6 = [v5 personNameComponentsFromString:v4];

  return v6;
}

+ (id)stringFromPersonNameComponents:(id)a3
{
  v4 = a3;
  v5 = [a1 _formatter];
  v6 = [v5 stringFromPersonNameComponents:v4];

  return v6;
}

@end