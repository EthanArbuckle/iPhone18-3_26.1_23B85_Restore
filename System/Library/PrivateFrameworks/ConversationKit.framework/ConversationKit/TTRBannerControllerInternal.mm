@interface TTRBannerControllerInternal
- (TTRBannerControllerDelegate)delegate;
- (void)buildTTRMessageBubbleRecipientsListWithGroupMessageUUID:(id)d with:(id)with;
- (void)setDelegate:(id)delegate;
- (void)showHoldAssistTTRBannerForCall:(id)call;
- (void)showTTRBannerWithFullLogArchive:(BOOL)archive call:(id)call;
@end

@implementation TTRBannerControllerInternal

- (TTRBannerControllerDelegate)delegate
{
  v2 = TTRBannerController.delegate.getter();

  return v2;
}

- (void)setDelegate:(id)delegate
{
  swift_unknownObjectRetain();
  selfCopy = self;
  TTRBannerController.delegate.setter();
}

- (void)showTTRBannerWithFullLogArchive:(BOOL)archive call:(id)call
{
  archiveCopy = archive;
  callCopy = call;
  selfCopy = self;
  TTRBannerController.showTTRBanner(useFullLogArchive:call:)(archiveCopy, call);
}

- (void)showHoldAssistTTRBannerForCall:(id)call
{
  callCopy = call;
  selfCopy = self;
  TTRBannerController.showHoldAssistTTRBanner(call:)(call);
}

- (void)buildTTRMessageBubbleRecipientsListWithGroupMessageUUID:(id)d with:(id)with
{
  if (d)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  TTRBannerController.buildTTRMessageBubbleRecipientsList(groupMessageUUID:with:)(v5, v7, v8);
}

@end