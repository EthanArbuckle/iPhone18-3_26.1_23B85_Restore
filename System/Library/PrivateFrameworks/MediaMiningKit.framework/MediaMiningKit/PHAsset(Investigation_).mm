@interface PHAsset(Investigation_)
- (id)cls_localDateComponents;
@end

@implementation PHAsset(Investigation_)

- (id)cls_localDateComponents
{
  v2 = [a1 creationDate];
  v3 = [a1 localCreationDate];
  v4 = [CLSCalendar dateComponentsWithUTCDate:v2 localDate:v3];

  return v4;
}

@end