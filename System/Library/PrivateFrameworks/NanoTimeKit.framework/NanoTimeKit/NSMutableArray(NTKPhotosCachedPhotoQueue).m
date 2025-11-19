@interface NSMutableArray(NTKPhotosCachedPhotoQueue)
- (id)dequeueCachedPhoto;
@end

@implementation NSMutableArray(NTKPhotosCachedPhotoQueue)

- (id)dequeueCachedPhoto
{
  if ([a1 count])
  {
    v2 = [a1 objectAtIndex:0];
    [a1 removeObjectAtIndex:0];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

@end