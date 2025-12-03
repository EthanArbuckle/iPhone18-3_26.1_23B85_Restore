@interface MusicKit_SoftLinking_MPModelPlaylistAuthor
+ (int64_t)rawValueForPlaylistAuthorRole:(unint64_t)role;
+ (unint64_t)authorRoleForRawValue:(int64_t)value;
@end

@implementation MusicKit_SoftLinking_MPModelPlaylistAuthor

+ (unint64_t)authorRoleForRawValue:(int64_t)value
{
  if (value == 2)
  {
    return 2;
  }

  else
  {
    return value == 1;
  }
}

+ (int64_t)rawValueForPlaylistAuthorRole:(unint64_t)role
{
  if (role == 2)
  {
    return 2;
  }

  else
  {
    return role == 1;
  }
}

@end