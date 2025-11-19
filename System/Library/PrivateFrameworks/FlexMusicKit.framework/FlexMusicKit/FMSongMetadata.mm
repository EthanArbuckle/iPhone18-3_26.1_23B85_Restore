@interface FMSongMetadata
- (FMSongMetadata)init;
@end

@implementation FMSongMetadata

- (FMSongMetadata)init
{
  v3.receiver = self;
  v3.super_class = FMSongMetadata;
  result = [(FMSongMetadata *)&v3 init];
  if (result)
  {
    result->_style = -1;
  }

  return result;
}

@end