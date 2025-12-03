@interface CalPersonNameComponentsFormatter
+ (id)_formatter;
+ (id)personNameComponentsFromString:(id)string;
+ (id)stringFromPersonNameComponents:(id)components;
@end

@implementation CalPersonNameComponentsFormatter

+ (id)_formatter
{
  currentThread = [MEMORY[0x1E696AF00] currentThread];
  threadDictionary = [currentThread threadDictionary];
  v4 = [threadDictionary objectForKey:@"kCalThreadLocalPersonNameComponentsFormatterKey"];

  if (!v4)
  {
    v4 = objc_opt_new();
    currentThread2 = [MEMORY[0x1E696AF00] currentThread];
    threadDictionary2 = [currentThread2 threadDictionary];
    [threadDictionary2 setObject:v4 forKey:@"kCalThreadLocalPersonNameComponentsFormatterKey"];
  }

  return v4;
}

+ (id)personNameComponentsFromString:(id)string
{
  stringCopy = string;
  _formatter = [self _formatter];
  v6 = [_formatter personNameComponentsFromString:stringCopy];

  return v6;
}

+ (id)stringFromPersonNameComponents:(id)components
{
  componentsCopy = components;
  _formatter = [self _formatter];
  v6 = [_formatter stringFromPersonNameComponents:componentsCopy];

  return v6;
}

@end