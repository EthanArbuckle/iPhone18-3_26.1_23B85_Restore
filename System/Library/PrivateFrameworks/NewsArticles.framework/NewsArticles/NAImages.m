@interface NAImages
+ (UIImage)copyLinkActivity;
- (NAImages)init;
@end

@implementation NAImages

+ (UIImage)copyLinkActivity
{
  if (qword_1EC9DFF80 != -1)
  {
    swift_once();
  }

  v3 = qword_1EC9E9218;

  return v3;
}

- (NAImages)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for Images();
  return [(NAImages *)&v3 init];
}

@end