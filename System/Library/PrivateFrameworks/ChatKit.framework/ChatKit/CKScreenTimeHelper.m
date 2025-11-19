@interface CKScreenTimeHelper
+ (void)addToContactsAction:(id)a3 shouldBypassScreenTimeShield:(BOOL)a4 presentingViewController:(id)a5 sender:(id)a6;
- (CKScreenTimeHelper)init;
@end

@implementation CKScreenTimeHelper

+ (void)addToContactsAction:(id)a3 shouldBypassScreenTimeShield:(BOOL)a4 presentingViewController:(id)a5 sender:(id)a6
{
  if (a6)
  {
    v8 = a3;
    v9 = a5;
    swift_unknownObjectRetain();
    sub_190D58140();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v12, 0, sizeof(v12));
    v10 = a3;
    v11 = a5;
  }

  sub_190D2B464(a3, a5);

  sub_19021E7D8(v12);
}

- (CKScreenTimeHelper)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ScreenTimeHelper();
  return [(CKScreenTimeHelper *)&v3 init];
}

@end