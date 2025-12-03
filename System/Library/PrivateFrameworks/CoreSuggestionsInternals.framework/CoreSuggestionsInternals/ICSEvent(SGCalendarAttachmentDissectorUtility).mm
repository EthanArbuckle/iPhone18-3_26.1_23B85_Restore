@interface ICSEvent(SGCalendarAttachmentDissectorUtility)
- (id)firstValueOfPropertyForName:()SGCalendarAttachmentDissectorUtility;
@end

@implementation ICSEvent(SGCalendarAttachmentDissectorUtility)

- (id)firstValueOfPropertyForName:()SGCalendarAttachmentDissectorUtility
{
  v1 = [self propertiesForName:?];
  firstObject = [v1 firstObject];
  value = [firstObject value];

  return value;
}

@end