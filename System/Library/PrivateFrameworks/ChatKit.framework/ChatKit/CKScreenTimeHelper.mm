@interface CKScreenTimeHelper
+ (void)addToContactsAction:(id)action shouldBypassScreenTimeShield:(BOOL)shield presentingViewController:(id)controller sender:(id)sender;
- (CKScreenTimeHelper)init;
@end

@implementation CKScreenTimeHelper

+ (void)addToContactsAction:(id)action shouldBypassScreenTimeShield:(BOOL)shield presentingViewController:(id)controller sender:(id)sender
{
  if (sender)
  {
    actionCopy = action;
    controllerCopy = controller;
    swift_unknownObjectRetain();
    sub_190D58140();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v12, 0, sizeof(v12));
    actionCopy2 = action;
    controllerCopy2 = controller;
  }

  sub_190D2B464(action, controller);

  sub_19021E7D8(v12);
}

- (CKScreenTimeHelper)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ScreenTimeHelper();
  return [(CKScreenTimeHelper *)&v3 init];
}

@end