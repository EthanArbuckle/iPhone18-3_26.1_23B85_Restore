@interface NSMutableArray(NTKPhotosCachedPhotoQueue)
- (id)dequeueCachedPhoto;
@end

@implementation NSMutableArray(NTKPhotosCachedPhotoQueue)

- (id)dequeueCachedPhoto
{
  if ([self count])
  {
    v2 = [self objectAtIndex:0];
    [self removeObjectAtIndex:0];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

@end