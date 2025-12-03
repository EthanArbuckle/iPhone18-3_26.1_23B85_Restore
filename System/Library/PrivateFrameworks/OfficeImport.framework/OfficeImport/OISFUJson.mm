@interface OISFUJson
+ (id)arrayFromString:(id)string;
+ (id)dictionaryFromString:(id)string;
+ (id)objectFromString:(id)string;
+ (id)stringFromObject:(id)object;
@end

@implementation OISFUJson

+ (id)stringFromObject:(id)object
{
  string = [MEMORY[0x277CCAB68] string];
  v5 = string;
  if (object)
  {
    [object sfu_appendJsonStringToString:string];
  }

  else
  {
    [string appendString:@"null"];
  }

  return v5;
}

+ (id)objectFromString:(id)string
{
  v3 = [[OISFUJsonScanner alloc] initWithString:string];
  [(OISFUJsonScanner *)v3 skipWhitespace];
  v4 = [(OISFUJsonScanner *)v3 parseObjectWithMaxDepth:10000];

  return v4;
}

+ (id)arrayFromString:(id)string
{
  v3 = [[OISFUJsonScanner alloc] initWithString:string];
  [(OISFUJsonScanner *)v3 skipWhitespace];
  v4 = [(OISFUJsonScanner *)v3 parseArrayWithMaxDepth:10000];

  return v4;
}

+ (id)dictionaryFromString:(id)string
{
  v3 = [[OISFUJsonScanner alloc] initWithString:string];
  [(OISFUJsonScanner *)v3 skipWhitespace];
  v4 = [(OISFUJsonScanner *)v3 parseDictionaryWithMaxDepth:10000];

  return v4;
}

@end