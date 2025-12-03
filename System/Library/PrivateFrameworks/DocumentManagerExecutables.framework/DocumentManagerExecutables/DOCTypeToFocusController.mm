@interface DOCTypeToFocusController
- (UITextInputAssistantItem)inputAssistantItem;
- (UIView)inputView;
- (_TtC26DocumentManagerExecutables24DOCTypeToFocusController)init;
- (void)insertText:(id)text;
- (void)typingTimeout;
@end

@implementation DOCTypeToFocusController

- (_TtC26DocumentManagerExecutables24DOCTypeToFocusController)init
{
  *(&self->super._responderFlags + *&sharedTypeToFocusInputView.super._responderFlags) = 0;
  swift_unknownObjectWeakInit();
  v3 = (&self->super.super.isa + sharedTypeToFocusInputView._swiftAnimationInfo);
  *v3 = 0;
  v3[1] = 0xE000000000000000;
  *(&self->super.super.isa + sharedTypeToFocusInputView._constraintsExceptingSubviewAutoresizingConstraints) = 0;
  subviewCache = sharedTypeToFocusInputView._subviewCache;
  *(&subviewCache->super.isa + self) = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  *(&self->super.super.isa + sharedTypeToFocusInputView._layerRetained) = 0;
  v6.receiver = self;
  v6.super_class = type metadata accessor for DOCTypeToFocusController();
  return [(DOCTypeToFocusController *)&v6 init];
}

- (UITextInputAssistantItem)inputAssistantItem
{
  v2 = [objc_allocWithZone(MEMORY[0x277D75BE0]) init];

  return v2;
}

- (void)insertText:(id)text
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  selfCopy = self;
  v8._countAndFlagsBits = v4;
  v8._object = v6;
  DOCTypeToFocusController.insertText(_:)(v8);
}

- (UIView)inputView
{
  if (one-time initialization token for sharedTypeToFocusInputView != -1)
  {
    swift_once();
  }

  isa = sharedTypeToFocusInputView.super.super.isa;

  return isa;
}

- (void)typingTimeout
{
  v3 = (&self->super.super.isa + sharedTypeToFocusInputView._swiftAnimationInfo);
  swift_beginAccess();
  *v3 = 0;
  v3[1] = 0xE000000000000000;
  selfCopy = self;

  v5 = *(&selfCopy->super.super.isa + sharedTypeToFocusInputView._constraintsExceptingSubviewAutoresizingConstraints);
  *(&selfCopy->super.super.isa + sharedTypeToFocusInputView._constraintsExceptingSubviewAutoresizingConstraints) = 0;
}

@end