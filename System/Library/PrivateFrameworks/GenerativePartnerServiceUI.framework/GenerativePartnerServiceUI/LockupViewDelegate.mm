@interface LockupViewDelegate
- (void)lockupView:(id)view didFailRequestWithError:(id)error;
- (void)lockupViewDidFinishRequest:(id)request;
@end

@implementation LockupViewDelegate

- (void)lockupView:(id)view didFailRequestWithError:(id)error
{
  viewCopy = view;
  errorCopy = error;
  selfCopy = self;
  sub_1BE528434();
}

- (void)lockupViewDidFinishRequest:(id)request
{
  requestCopy = request;
  selfCopy = self;
  sub_1BE5284A8();
}

@end