@interface MusicKit_SoftLinking_MPModelPlaylistAuthor
+ (int64_t)rawValueForPlaylistAuthorRole:(unint64_t)a3;
+ (unint64_t)authorRoleForRawValue:(int64_t)a3;
@end

@implementation MusicKit_SoftLinking_MPModelPlaylistAuthor

+ (unint64_t)authorRoleForRawValue:(int64_t)a3
{
  if (a3 == 2)
  {
    return 2;
  }

  else
  {
    return a3 == 1;
  }
}

+ (int64_t)rawValueForPlaylistAuthorRole:(unint64_t)a3
{
  if (a3 == 2)
  {
    return 2;
  }

  else
  {
    return a3 == 1;
  }
}

@end