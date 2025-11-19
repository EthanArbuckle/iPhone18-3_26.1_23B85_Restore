@interface NSCharacterSet(SubjectParser)
+ (id)ec_prefixDelimiterCharacterSet;
@end

@implementation NSCharacterSet(SubjectParser)

+ (id)ec_prefixDelimiterCharacterSet
{
  if (ec_prefixDelimiterCharacterSet_onceToken != -1)
  {
    +[NSCharacterSet(SubjectParser) ec_prefixDelimiterCharacterSet];
  }

  v1 = ec_prefixDelimiterCharacterSet_prefixDelimiterCharacterSet;

  return v1;
}

@end