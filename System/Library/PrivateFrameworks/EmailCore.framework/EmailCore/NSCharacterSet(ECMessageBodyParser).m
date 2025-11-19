@interface NSCharacterSet(ECMessageBodyParser)
+ (uint64_t)ec_ignorableCharacterSet;
+ (uint64_t)ec_whitespaceNewlineAndTagCharacterSet;
+ (uint64_t)ec_zeroWidthCharacterSet;
@end

@implementation NSCharacterSet(ECMessageBodyParser)

+ (uint64_t)ec_whitespaceNewlineAndTagCharacterSet
{
  if (ec_whitespaceNewlineAndTagCharacterSet_onceToken != -1)
  {
    +[NSCharacterSet(ECMessageBodyParser) ec_whitespaceNewlineAndTagCharacterSet];
  }

  return ec_whitespaceNewlineAndTagCharacterSet_result;
}

+ (uint64_t)ec_zeroWidthCharacterSet
{
  if (ec_zeroWidthCharacterSet_onceToken != -1)
  {
    +[NSCharacterSet(ECMessageBodyParser) ec_zeroWidthCharacterSet];
  }

  return ec_zeroWidthCharacterSet_result;
}

+ (uint64_t)ec_ignorableCharacterSet
{
  if (ec_ignorableCharacterSet_onceToken != -1)
  {
    +[NSCharacterSet(ECMessageBodyParser) ec_ignorableCharacterSet];
  }

  return ec_ignorableCharacterSet_result;
}

@end