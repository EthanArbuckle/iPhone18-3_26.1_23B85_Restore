@interface EKColor(CalendarUIKit)
- (id)CUIK_color;
@end

@implementation EKColor(CalendarUIKit)

- (id)CUIK_color
{
  v2 = [a1 data];
  v3 = [a1 providerIdentifier];
  v4 = [CUIKColorDeserializer deserializeColor:v2 providerIdentifier:v3];

  return v4;
}

@end