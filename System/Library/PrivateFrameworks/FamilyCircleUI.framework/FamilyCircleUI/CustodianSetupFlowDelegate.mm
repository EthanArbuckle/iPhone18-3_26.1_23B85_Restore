@interface CustodianSetupFlowDelegate
- (_TtC14FamilyCircleUI26CustodianSetupFlowDelegate)init;
- (void)custodianSetupFlowControllerDidFinish:(id)finish;
@end

@implementation CustodianSetupFlowDelegate

- (void)custodianSetupFlowControllerDidFinish:(id)finish
{
  finishCopy = finish;
  [finishCopy dismissViewControllerAnimated:1 completion:0];
  defaultCenter = [objc_opt_self() defaultCenter];
  if (qword_27CDB4EB8 != -1)
  {
    swift_once();
  }

  [defaultCenter postNotificationName:qword_27CDB7E68 object:0 userInfo:0 deliverImmediately:1];
}

- (_TtC14FamilyCircleUI26CustodianSetupFlowDelegate)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for CustodianSetupFlowDelegate();
  return [(CustodianSetupFlowDelegate *)&v3 init];
}

@end