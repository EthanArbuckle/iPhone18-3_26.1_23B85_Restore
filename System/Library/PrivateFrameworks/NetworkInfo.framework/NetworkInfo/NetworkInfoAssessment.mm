@interface NetworkInfoAssessment
- (void)runWithCompletionHandler:(id)handler;
@end

@implementation NetworkInfoAssessment

- (void)runWithCompletionHandler:(id)handler
{
  v4 = _Block_copy(handler);
  MEMORY[0x277D82BE0](self);
  v3 = swift_allocObject();
  *(v3 + 16) = v4;
  *(v3 + 24) = self;
  sub_25B8A2200(&unk_25B94AA00, v3);
}

@end