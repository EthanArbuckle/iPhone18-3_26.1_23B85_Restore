@interface CopyImage
- (BOOL)canPerformWithActivityItems:(id)items;
- (void)performActivity;
@end

@implementation CopyImage

- (BOOL)canPerformWithActivityItems:(id)items
{
  v4 = sub_24FEDE324();
  selfCopy = self;
  v6 = sub_24FECCC7C(v4);

  return v6 & 1;
}

- (void)performActivity
{
  selfCopy = self;
  sub_24FECAB9C();
}

@end