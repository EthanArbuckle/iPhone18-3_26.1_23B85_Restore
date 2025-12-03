@interface SGTextProcessingServiceWrapper
- (void)suggestionsFrom:(CSSearchableItem *)from persistResults:(BOOL)results completionHandler:(id)handler;
@end

@implementation SGTextProcessingServiceWrapper

- (void)suggestionsFrom:(CSSearchableItem *)from persistResults:(BOOL)results completionHandler:(id)handler
{
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = from;
  *(v9 + 24) = results;
  *(v9 + 32) = v8;
  *(v9 + 40) = self;
  fromCopy = from;
  selfCopy = self;

  sub_1B81E3968(&unk_1B8200458, v9);
}

@end