@interface CallAgainHUDView
- (UIButton)callBackButton;
- (UIButton)closeButton;
- (UIButton)videoMessageButton;
- (void)handleContentSizeCategoryDidChange:(id)change;
- (void)layoutSubviews;
@end

@implementation CallAgainHUDView

- (UIButton)callBackButton
{
  v2 = CallAgainHUDView.callBackButton.getter();

  return v2;
}

- (UIButton)closeButton
{
  v2 = CallAgainHUDView.closeButton.getter();

  return v2;
}

- (UIButton)videoMessageButton
{
  v2 = CallAgainHUDView.videoMessageButton.getter();

  return v2;
}

- (void)layoutSubviews
{
  selfCopy = self;
  CallAgainHUDView.layoutSubviews()();
}

- (void)handleContentSizeCategoryDidChange:(id)change
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12NotificationVSgMd);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v11 - v6;
  if (change)
  {
    static Notification._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = type metadata accessor for Notification();
    v9 = 0;
  }

  else
  {
    v8 = type metadata accessor for Notification();
    v9 = 1;
  }

  __swift_storeEnumTagSinglePayload(v7, v9, 1, v8);
  selfCopy = self;
  CallAgainHUDView.handleContentSizeCategoryDidChange(_:)();

  outlined destroy of Notification?(v7);
}

@end