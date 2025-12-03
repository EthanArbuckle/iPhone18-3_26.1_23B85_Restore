@interface HUCameraErrorContent
+ (id)errorWithTitle:(id)title description:(id)description;
@end

@implementation HUCameraErrorContent

+ (id)errorWithTitle:(id)title description:(id)description
{
  descriptionCopy = description;
  titleCopy = title;
  v7 = objc_alloc_init(HUCameraErrorContent);
  [(HUCameraErrorContent *)v7 setTitleText:titleCopy];

  [(HUCameraErrorContent *)v7 setDescriptionText:descriptionCopy];

  return v7;
}

@end