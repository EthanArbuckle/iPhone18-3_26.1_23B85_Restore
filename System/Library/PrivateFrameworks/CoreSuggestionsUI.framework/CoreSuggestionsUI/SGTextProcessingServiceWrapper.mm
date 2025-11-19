@interface SGTextProcessingServiceWrapper
- (void)suggestionsFrom:(CSSearchableItem *)a3 persistResults:(BOOL)a4 completionHandler:(id)a5;
@end

@implementation SGTextProcessingServiceWrapper

- (void)suggestionsFrom:(CSSearchableItem *)a3 persistResults:(BOOL)a4 completionHandler:(id)a5
{
  v8 = _Block_copy(a5);
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
  *(v9 + 32) = v8;
  *(v9 + 40) = self;
  v10 = a3;
  v11 = self;

  sub_1B81E3968(&unk_1B8200458, v9);
}

@end