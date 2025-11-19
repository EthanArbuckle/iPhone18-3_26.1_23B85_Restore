@interface NSRegularExpression(SubjectParser)
+ (id)ec_regularExpressionForList;
@end

@implementation NSRegularExpression(SubjectParser)

+ (id)ec_regularExpressionForList
{
  if (ec_regularExpressionForList_predicate != -1)
  {
    +[NSRegularExpression(SubjectParser) ec_regularExpressionForList];
  }

  v1 = ec_regularExpressionForList_listRegex;

  return v1;
}

@end