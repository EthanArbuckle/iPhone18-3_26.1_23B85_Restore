@interface ICSEvent(SGCalendarAttachmentDissectorUtility)
- (id)firstValueOfPropertyForName:()SGCalendarAttachmentDissectorUtility;
@end

@implementation ICSEvent(SGCalendarAttachmentDissectorUtility)

- (id)firstValueOfPropertyForName:()SGCalendarAttachmentDissectorUtility
{
  v1 = [a1 propertiesForName:?];
  v2 = [v1 firstObject];
  v3 = [v2 value];

  return v3;
}

@end