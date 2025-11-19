@interface LockupViewDelegate
- (void)lockupView:(id)a3 didFailRequestWithError:(id)a4;
- (void)lockupViewDidFinishRequest:(id)a3;
@end

@implementation LockupViewDelegate

- (void)lockupView:(id)a3 didFailRequestWithError:(id)a4
{
  v6 = a3;
  v8 = a4;
  v7 = self;
  sub_1BE528434();
}

- (void)lockupViewDidFinishRequest:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1BE5284A8();
}

@end