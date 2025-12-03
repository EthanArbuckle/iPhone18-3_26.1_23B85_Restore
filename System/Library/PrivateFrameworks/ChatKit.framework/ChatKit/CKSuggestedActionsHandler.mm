@interface CKSuggestedActionsHandler
+ (id)pluginPayloadForShelfCardWithTitle:(id)title summary:(id)summary userInfo:(id)info;
- (_TtC7ChatKit25CKSuggestedActionsHandler)init;
- (_TtP7ChatKit33CKSuggestedActionsHandlerDelegate_)delegate;
- (void)openWithFallbackString:(id)string;
- (void)performChipAction:(id)action;
@end

@implementation CKSuggestedActionsHandler

- (_TtP7ChatKit33CKSuggestedActionsHandlerDelegate_)delegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)openWithFallbackString:(id)string
{
  if (string)
  {
    sub_190D56F10();
  }

  selfCopy = self;
  sub_190B3AA78();
}

- (void)performChipAction:(id)action
{
  actionCopy = action;
  selfCopy = self;
  sub_190B3A224(actionCopy);
}

+ (id)pluginPayloadForShelfCardWithTitle:(id)title summary:(id)summary userInfo:(id)info
{
  v5 = sub_190D56F10();
  v7 = v6;
  v8 = sub_190D56F10();
  v10 = v9;
  v11 = sub_190D56D90();
  v12 = sub_190B3AC98(v5, v7, v8, v10, v11);

  return v12;
}

- (_TtC7ChatKit25CKSuggestedActionsHandler)init
{
  swift_unknownObjectWeakInit();
  v4.receiver = self;
  v4.super_class = type metadata accessor for CKSuggestedActionsHandler();
  return [(CKSuggestedActionsHandler *)&v4 init];
}

@end