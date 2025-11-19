@interface CNAPeopleSuggesterProxy
+ (CNAPeopleSuggesterFacade)emptyProxy;
+ (id)peopleSuggesterProxy;
@end

@implementation CNAPeopleSuggesterProxy

+ (id)peopleSuggesterProxy
{
  v2 = objc_alloc_init(_CNAPeopleSuggesterFacade);

  return v2;
}

+ (CNAPeopleSuggesterFacade)emptyProxy
{
  v2 = objc_alloc_init(_CNAPeopleSuggesterFacadeTestDouble);

  return v2;
}

@end