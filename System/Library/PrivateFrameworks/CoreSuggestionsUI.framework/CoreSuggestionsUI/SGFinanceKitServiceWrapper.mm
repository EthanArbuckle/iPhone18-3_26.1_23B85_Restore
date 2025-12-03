@interface SGFinanceKitServiceWrapper
- (void)suggestionsFrom:(id)from completionHandler:(id)handler;
@end

@implementation SGFinanceKitServiceWrapper

- (void)suggestionsFrom:(id)from completionHandler:(id)handler
{
  v6 = _Block_copy(handler);
  OUTLINED_FUNCTION_55();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  fromCopy = from;
  selfCopy = self;
  SGFinanceKitServiceWrapper.suggestions(from:completionHandler:)(fromCopy, sub_1B81C4CA0, v7);
}

@end