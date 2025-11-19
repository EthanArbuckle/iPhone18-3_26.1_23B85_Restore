@interface UIButton(CarPlaySupport)
- (void)cps_setBackgroundColor:()CarPlaySupport forState:;
@end

@implementation UIButton(CarPlaySupport)

- (void)cps_setBackgroundColor:()CarPlaySupport forState:
{
  v16 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  v14 = a4;
  CGRectMake_7();
  v13.origin.x = v4;
  v13.origin.y = v5;
  v13.size.width = v6;
  v13.size.height = v7;
  v17.width = v6;
  v17.height = v7;
  UIGraphicsBeginImageContext(v17);
  CurrentContext = UIGraphicsGetCurrentContext();
  v10 = location[0];
  v8 = location[0];
  CGContextSetFillColorWithColor(CurrentContext, [v10 CGColor]);
  CGContextFillRect(CurrentContext, v13);
  v11 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  [v16 setBackgroundImage:v11 forState:v14];
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

@end