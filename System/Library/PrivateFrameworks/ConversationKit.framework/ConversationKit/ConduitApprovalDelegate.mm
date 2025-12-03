@interface ConduitApprovalDelegate
- (void)approveSplitSessionForConversation:(id)conversation requestedFromDevice:(id)device pullContext:(int64_t)context completion:(id)completion;
- (void)cancelSplitSessionApproval;
@end

@implementation ConduitApprovalDelegate

- (void)approveSplitSessionForConversation:(id)conversation requestedFromDevice:(id)device pullContext:(int64_t)context completion:(id)completion
{
  v9 = _Block_copy(completion);
  *(swift_allocObject() + 16) = v9;
  conversationCopy = conversation;
  deviceCopy = device;
  selfCopy = self;
  ConduitApprovalDelegate.approveSplitSession(for:requestedFromDevice:pullContext:completion:)();
}

- (void)cancelSplitSessionApproval
{
  selfCopy = self;
  ConduitApprovalDelegate.cancelSplitSessionApproval()();
}

@end