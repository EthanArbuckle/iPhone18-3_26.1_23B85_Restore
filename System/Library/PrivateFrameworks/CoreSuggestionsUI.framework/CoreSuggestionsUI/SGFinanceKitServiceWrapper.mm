@interface SGFinanceKitServiceWrapper
- (void)suggestionsFrom:(id)a3 completionHandler:(id)a4;
@end

@implementation SGFinanceKitServiceWrapper

- (void)suggestionsFrom:(id)a3 completionHandler:(id)a4
{
  v6 = _Block_copy(a4);
  OUTLINED_FUNCTION_55();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = a3;
  v9 = self;
  SGFinanceKitServiceWrapper.suggestions(from:completionHandler:)(v8, sub_1B81C4CA0, v7);
}

@end