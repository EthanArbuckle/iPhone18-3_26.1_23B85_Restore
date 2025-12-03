@interface ClassificationControllerDelegate
- (_TtC10CallsAppUI32ClassificationControllerDelegate)init;
- (void)controller:(id)controller didCompleteClassificationRequest:(id)request withResponse:(id)response;
@end

@implementation ClassificationControllerDelegate

- (void)controller:(id)controller didCompleteClassificationRequest:(id)request withResponse:(id)response
{
  controllerCopy = controller;
  requestCopy = request;
  responseCopy = response;
  selfCopy = self;
  sub_1CFBD44D4(requestCopy, response);
}

- (_TtC10CallsAppUI32ClassificationControllerDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end