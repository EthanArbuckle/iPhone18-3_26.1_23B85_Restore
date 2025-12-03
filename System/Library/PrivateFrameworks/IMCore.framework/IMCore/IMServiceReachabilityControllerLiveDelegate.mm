@interface IMServiceReachabilityControllerLiveDelegate
- (NSArray)serviceNamesForSending;
- (id)preconditionsForServiceName:(id)name;
- (id)preferredAccountIDForServiceName:(id)name;
- (int64_t)sortOrderForServiceName:(id)name;
- (void)calculateReachabilityWithRequest:(id)request responseHandler:(id)handler;
@end

@implementation IMServiceReachabilityControllerLiveDelegate

- (id)preconditionsForServiceName:(id)name
{
  sub_1A84E5DBC();

  sub_1A8408CD8();

  sub_1A8244B68(0, &qword_1EB2E46E0, 0x1E69A8250);
  v3 = sub_1A84E5FEC();

  return v3;
}

- (id)preferredAccountIDForServiceName:(id)name
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

- (void)calculateReachabilityWithRequest:(id)request responseHandler:(id)handler
{
  v6 = objc_opt_self();
  requestCopy = request;
  swift_unknownObjectRetain();
  sharedController = [v6 sharedController];
  remoteDaemon = [sharedController remoteDaemon];

  [remoteDaemon calculateReachabilityWithRequest:requestCopy responseHandler:handler];
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
}

- (int64_t)sortOrderForServiceName:(id)name
{
  serviceWithInternalName_ = [objc_opt_self() serviceWithInternalName_];
  if (!serviceWithInternalName_)
  {
    return -1;
  }

  v4 = serviceWithInternalName_;
  serviceForSendingPriority = [serviceWithInternalName_ serviceForSendingPriority];

  return serviceForSendingPriority;
}

- (NSArray)serviceNamesForSending
{
  sub_1A8409080();
  v2 = sub_1A84E5FEC();

  return v2;
}

@end