@interface HostRemoteViewCoordinator
- (_TtC14FamilyCircleUI25HostRemoteViewCoordinator)init;
- (void)dismissWithError:(id)error response:(id)response;
- (void)hostViewControllerDidActivate:(id)activate;
- (void)hostViewControllerWillDeactivate:(id)deactivate error:(id)error;
@end

@implementation HostRemoteViewCoordinator

- (void)hostViewControllerDidActivate:(id)activate
{
  selfCopy = self;
  sub_21BD958DC();
}

- (void)hostViewControllerWillDeactivate:(id)deactivate error:(id)error
{
  deactivateCopy = deactivate;
  selfCopy = self;
  errorCopy = error;
  sub_21BD96814(error);
}

- (void)dismissWithError:(id)error response:(id)response
{
  errorCopy = error;
  responseCopy = response;
  selfCopy = self;
  sub_21BD96194(error, response);
}

- (_TtC14FamilyCircleUI25HostRemoteViewCoordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end