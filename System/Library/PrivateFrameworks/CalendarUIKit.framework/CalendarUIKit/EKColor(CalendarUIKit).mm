@interface EKColor(CalendarUIKit)
- (id)CUIK_color;
@end

@implementation EKColor(CalendarUIKit)

- (id)CUIK_color
{
  data = [self data];
  providerIdentifier = [self providerIdentifier];
  v4 = [CUIKColorDeserializer deserializeColor:data providerIdentifier:providerIdentifier];

  return v4;
}

@end