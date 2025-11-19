@interface TTRBannerControllerInternal
- (TTRBannerControllerDelegate)delegate;
- (void)buildTTRMessageBubbleRecipientsListWithGroupMessageUUID:(id)a3 with:(id)a4;
- (void)setDelegate:(id)a3;
- (void)showHoldAssistTTRBannerForCall:(id)a3;
- (void)showTTRBannerWithFullLogArchive:(BOOL)a3 call:(id)a4;
@end

@implementation TTRBannerControllerInternal

- (TTRBannerControllerDelegate)delegate
{
  v2 = TTRBannerController.delegate.getter();

  return v2;
}

- (void)setDelegate:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  TTRBannerController.delegate.setter();
}

- (void)showTTRBannerWithFullLogArchive:(BOOL)a3 call:(id)a4
{
  v5 = a3;
  v7 = a4;
  v8 = self;
  TTRBannerController.showTTRBanner(useFullLogArchive:call:)(v5, a4);
}

- (void)showHoldAssistTTRBannerForCall:(id)a3
{
  v5 = a3;
  v6 = self;
  TTRBannerController.showHoldAssistTTRBanner(call:)(a3);
}

- (void)buildTTRMessageBubbleRecipientsListWithGroupMessageUUID:(id)a3 with:(id)a4
{
  if (a3)
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
  v9 = self;
  TTRBannerController.buildTTRMessageBubbleRecipientsList(groupMessageUUID:with:)(v5, v7, v8);
}

@end