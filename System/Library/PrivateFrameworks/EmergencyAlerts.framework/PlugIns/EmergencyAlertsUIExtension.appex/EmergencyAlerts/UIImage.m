@interface UIImage
- (UIImage)imageWithSize:(CGSize)a3;
@end

@implementation UIImage

- (UIImage)imageWithSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [[UIGraphicsImageRenderer alloc] initWithSize:{a3.width, a3.height}];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100001028;
  v10[3] = &unk_100008280;
  v10[4] = self;
  *&v10[5] = width;
  *&v10[6] = height;
  v7 = [v6 imageWithActions:v10];
  v8 = [v7 imageWithRenderingMode:{-[UIImage renderingMode](self, "renderingMode")}];

  return v8;
}

@end