@interface CNACDPeopleSuggesterProxy
+ (CNACDPeopleSuggesterFacade)emptyProxy;
+ (id)coreDuetProxy;
@end

@implementation CNACDPeopleSuggesterProxy

+ (id)coreDuetProxy
{
  v2 = objc_alloc_init(_CNACDPeopleSuggesterFacade);

  return v2;
}

+ (CNACDPeopleSuggesterFacade)emptyProxy
{
  v2 = objc_alloc_init(_CNACDPeopleSuggesterFacadeTestDouble);

  return v2;
}

@end