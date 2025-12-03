@interface NSBundle(MediaRemoteUI)
+ (id)mediaRemoteUIBundle;
+ (uint64_t)mru_isFaceTimeBundleIdentifier:()MediaRemoteUI;
+ (uint64_t)mru_isHome;
+ (uint64_t)mru_isHomeBundleIdentifier:()MediaRemoteUI;
+ (uint64_t)mru_isMediaRemoteDaemonBundleIdentifier:()MediaRemoteUI;
+ (uint64_t)mru_isMediaRemoteUI;
+ (uint64_t)mru_isMediaRemoteUIBundleIdentifier:()MediaRemoteUI;
+ (uint64_t)mru_isProximityControl;
+ (uint64_t)mru_isProximityControlBundleIdentifier:()MediaRemoteUI;
+ (uint64_t)mru_isSiri;
+ (uint64_t)mru_isSiriBundleIdentifier:()MediaRemoteUI;
+ (uint64_t)mru_isSoundScapesIdentifier:()MediaRemoteUI;
+ (uint64_t)mru_isSpringBoard;
+ (uint64_t)mru_isSpringBoardBundleIdentifier:()MediaRemoteUI;
@end

@implementation NSBundle(MediaRemoteUI)

+ (id)mediaRemoteUIBundle
{
  if (mediaRemoteUIBundle___once != -1)
  {
    +[NSBundle(MediaRemoteUI) mediaRemoteUIBundle];
  }

  v1 = mediaRemoteUIBundle___mediaRemoteUIBundle;

  return v1;
}

+ (uint64_t)mru_isHome
{
  mainBundle = [self mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  v4 = [self mru_isHomeBundleIdentifier:bundleIdentifier];

  return v4;
}

+ (uint64_t)mru_isSpringBoard
{
  mainBundle = [self mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  v4 = [self mru_isSpringBoardBundleIdentifier:bundleIdentifier];

  return v4;
}

+ (uint64_t)mru_isMediaRemoteUI
{
  mainBundle = [self mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  v4 = [self mru_isMediaRemoteUIBundleIdentifier:bundleIdentifier];

  return v4;
}

+ (uint64_t)mru_isProximityControl
{
  mainBundle = [self mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  v4 = [self mru_isProximityControlBundleIdentifier:bundleIdentifier];

  return v4;
}

+ (uint64_t)mru_isSiri
{
  mainBundle = [self mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  v4 = [self mru_isSiriBundleIdentifier:bundleIdentifier];

  return v4;
}

+ (uint64_t)mru_isHomeBundleIdentifier:()MediaRemoteUI
{
  lowercaseString = [a3 lowercaseString];
  v4 = [lowercaseString isEqualToString:@"com.apple.home"];

  return v4;
}

+ (uint64_t)mru_isSpringBoardBundleIdentifier:()MediaRemoteUI
{
  lowercaseString = [a3 lowercaseString];
  v4 = [lowercaseString isEqualToString:@"com.apple.springboard"];

  return v4;
}

+ (uint64_t)mru_isMediaRemoteUIBundleIdentifier:()MediaRemoteUI
{
  lowercaseString = [a3 lowercaseString];
  v4 = [lowercaseString isEqualToString:@"com.apple.mediaremoteui"];

  return v4;
}

+ (uint64_t)mru_isMediaRemoteDaemonBundleIdentifier:()MediaRemoteUI
{
  lowercaseString = [a3 lowercaseString];
  v4 = [lowercaseString isEqualToString:@"com.apple.mediaremoted"];

  return v4;
}

+ (uint64_t)mru_isProximityControlBundleIdentifier:()MediaRemoteUI
{
  v3 = a3;
  lowercaseString = [v3 lowercaseString];
  if ([lowercaseString isEqualToString:@"com.apple.proximitycontrold"])
  {
    v5 = 1;
  }

  else
  {
    lowercaseString2 = [v3 lowercaseString];
    v5 = [lowercaseString2 isEqualToString:@"com.apple.pcviewservice"];
  }

  return v5;
}

+ (uint64_t)mru_isSiriBundleIdentifier:()MediaRemoteUI
{
  lowercaseString = [a3 lowercaseString];
  v4 = [lowercaseString isEqualToString:@"com.apple.siri"];

  return v4;
}

+ (uint64_t)mru_isSoundScapesIdentifier:()MediaRemoteUI
{
  lowercaseString = [a3 lowercaseString];
  v4 = [lowercaseString isEqualToString:@"com.apple.soundscapes"];

  return v4;
}

+ (uint64_t)mru_isFaceTimeBundleIdentifier:()MediaRemoteUI
{
  lowercaseString = [a3 lowercaseString];
  mru_FaceTimeBundleIdentifier = [self mru_FaceTimeBundleIdentifier];
  v6 = [lowercaseString isEqualToString:mru_FaceTimeBundleIdentifier];

  return v6;
}

@end