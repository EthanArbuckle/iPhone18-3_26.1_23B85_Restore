@interface CopyImage
- (BOOL)canPerformWithActivityItems:(id)a3;
- (void)performActivity;
@end

@implementation CopyImage

- (BOOL)canPerformWithActivityItems:(id)a3
{
  v4 = sub_24FEDE324();
  v5 = self;
  v6 = sub_24FECCC7C(v4);

  return v6 & 1;
}

- (void)performActivity
{
  v2 = self;
  sub_24FECAB9C();
}

@end