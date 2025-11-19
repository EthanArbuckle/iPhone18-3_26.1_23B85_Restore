@interface ConduitApprovalDelegate
- (void)approveSplitSessionForConversation:(id)a3 requestedFromDevice:(id)a4 pullContext:(int64_t)a5 completion:(id)a6;
- (void)cancelSplitSessionApproval;
@end

@implementation ConduitApprovalDelegate

- (void)approveSplitSessionForConversation:(id)a3 requestedFromDevice:(id)a4 pullContext:(int64_t)a5 completion:(id)a6
{
  v9 = _Block_copy(a6);
  *(swift_allocObject() + 16) = v9;
  v10 = a3;
  v11 = a4;
  v12 = self;
  ConduitApprovalDelegate.approveSplitSession(for:requestedFromDevice:pullContext:completion:)();
}

- (void)cancelSplitSessionApproval
{
  v2 = self;
  ConduitApprovalDelegate.cancelSplitSessionApproval()();
}

@end