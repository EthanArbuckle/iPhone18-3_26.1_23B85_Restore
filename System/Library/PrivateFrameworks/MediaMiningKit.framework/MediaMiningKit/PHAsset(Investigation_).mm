@interface PHAsset(Investigation_)
- (id)cls_localDateComponents;
@end

@implementation PHAsset(Investigation_)

- (id)cls_localDateComponents
{
  creationDate = [self creationDate];
  localCreationDate = [self localCreationDate];
  v4 = [CLSCalendar dateComponentsWithUTCDate:creationDate localDate:localCreationDate];

  return v4;
}

@end