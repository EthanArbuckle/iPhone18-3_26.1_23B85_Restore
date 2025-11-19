@interface HUCameraErrorContent
+ (id)errorWithTitle:(id)a3 description:(id)a4;
@end

@implementation HUCameraErrorContent

+ (id)errorWithTitle:(id)a3 description:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(HUCameraErrorContent);
  [(HUCameraErrorContent *)v7 setTitleText:v6];

  [(HUCameraErrorContent *)v7 setDescriptionText:v5];

  return v7;
}

@end