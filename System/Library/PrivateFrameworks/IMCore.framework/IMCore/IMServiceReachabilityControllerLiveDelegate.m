@interface IMServiceReachabilityControllerLiveDelegate
- (NSArray)serviceNamesForSending;
- (id)preconditionsForServiceName:(id)a3;
- (id)preferredAccountIDForServiceName:(id)a3;
- (int64_t)sortOrderForServiceName:(id)a3;
- (void)calculateReachabilityWithRequest:(id)a3 responseHandler:(id)a4;
@end

@implementation IMServiceReachabilityControllerLiveDelegate

- (id)preconditionsForServiceName:(id)a3
{
  sub_1A84E5DBC();

  sub_1A8408CD8();

  sub_1A8244B68(0, &qword_1EB2E46E0, 0x1E69A8250);
  v3 = sub_1A84E5FEC();

  return v3;
}

- (id)preferredAccountIDForServiceName:(id)a3
{
  sub_1A84E5DBC();

  sub_1A8408FA4();
  v4 = v3;

  if (v4)
  {
    v5 = sub_1A84E5D8C();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)calculateReachabilityWithRequest:(id)a3 responseHandler:(id)a4
{
  v6 = objc_opt_self();
  v7 = a3;
  swift_unknownObjectRetain();
  v8 = [v6 sharedController];
  v9 = [v8 remoteDaemon];

  [v9 calculateReachabilityWithRequest:v7 responseHandler:a4];
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
}

- (int64_t)sortOrderForServiceName:(id)a3
{
  v3 = [objc_opt_self() serviceWithInternalName_];
  if (!v3)
  {
    return -1;
  }

  v4 = v3;
  v5 = [v3 serviceForSendingPriority];

  return v5;
}

- (NSArray)serviceNamesForSending
{
  sub_1A8409080();
  v2 = sub_1A84E5FEC();

  return v2;
}

@end