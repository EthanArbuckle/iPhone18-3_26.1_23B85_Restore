@interface BMPublicStreamUtilities
+ (BOOL)writeAllowedForStream:(int64_t)a3 processIdentifier:(id)a4;
+ (id)allowedStreamWriteIdentifiersForStream:(int64_t)a3;
+ (id)streamIdentifierForPreMigrationStream:(int64_t)a3;
+ (id)streamIdentifierForStream:(int64_t)a3;
+ (id)streamIdentifiers;
+ (int64_t)streamForPreMigrationStreamIdentifier:(id)a3;
+ (int64_t)streamForStreamIdentifier:(id)a3;
@end

@implementation BMPublicStreamUtilities

+ (id)streamIdentifiers
{
  v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:40];
  for (i = 0; i != 40; ++i)
  {
    if (i && i != 3)
    {
      v5 = [a1 streamIdentifierForStream:i];
      [v3 addObject:v5];
    }
  }

  return v3;
}

+ (int64_t)streamForPreMigrationStreamIdentifier:(id)a3
{
  v3 = a3;
  if ([@"AppLaunch" isEqualToString:v3])
  {
    v4 = 1;
  }

  else if ([@"AppIntent" isEqualToString:v3])
  {
    v4 = 2;
  }

  else if ([@"TestStream" isEqualToString:v3])
  {
    v4 = 3;
  }

  else if ([@"POICategory" isEqualToString:v3])
  {
    v4 = 4;
  }

  else if ([@"ContextualActions" isEqualToString:v3])
  {
    v4 = 5;
  }

  else if ([@"SleepMode" isEqualToString:v3])
  {
    v4 = 6;
  }

  else if ([@"UserFocusComputedMode" isEqualToString:v3])
  {
    v4 = 9;
  }

  else if ([@"UserFocusActivity" isEqualToString:v3])
  {
    v4 = 10;
  }

  else if ([@"CarPlay" isEqualToString:v3])
  {
    v4 = 7;
  }

  else if ([@"DoNotDisturbWhileDriving" isEqualToString:v3])
  {
    v4 = 8;
  }

  else if ([@"HomeKitClientAccessoryControl" isEqualToString:v3])
  {
    v4 = 14;
  }

  else if ([@"HomeKitClientMediaAccessoryControl" isEqualToString:v3])
  {
    v4 = 15;
  }

  else if ([@"HomeKitClientActionSet" isEqualToString:v3])
  {
    v4 = 16;
  }

  else if ([@"Alarm" isEqualToString:v3])
  {
    v4 = 11;
  }

  else if ([@"ScreenRecording" isEqualToString:v3])
  {
    v4 = 12;
  }

  else if ([@"ScreenSharing" isEqualToString:v3])
  {
    v4 = 13;
  }

  else if ([@"NowPlaying" isEqualToString:v3])
  {
    v4 = 17;
  }

  else if ([@"Notification" isEqualToString:v3])
  {
    v4 = 18;
  }

  else if ([@"Workout" isEqualToString:v3])
  {
    v4 = 19;
  }

  else if ([@"GroupActivitySession" isEqualToString:v3])
  {
    v4 = 20;
  }

  else if ([@"SemanticLocation" isEqualToString:v3])
  {
    v4 = 21;
  }

  else if ([@"Backlight" isEqualToString:v3])
  {
    v4 = 22;
  }

  else if ([@"HealthKitWorkout" isEqualToString:v3])
  {
    v4 = 23;
  }

  else if ([@"AppClipLaunch" isEqualToString:v3])
  {
    v4 = 24;
  }

  else if ([@"AskToBuy" isEqualToString:v3])
  {
    v4 = 25;
  }

  else if ([@"FindMyLocationChange" isEqualToString:v3])
  {
    v4 = 27;
  }

  else if ([@"SoundDetection" isEqualToString:v3])
  {
    v4 = 28;
  }

  else if ([@"UserStatusChange" isEqualToString:v3])
  {
    v4 = 29;
  }

  else if ([@"TextInputSession" isEqualToString:v3])
  {
    v4 = 30;
  }

  else if ([@"DeviceMetadata" isEqualToString:v3])
  {
    v4 = 31;
  }

  else if ([@"SchoolTime" isEqualToString:v3])
  {
    v4 = 32;
  }

  else if ([@"Mindfulness" isEqualToString:v3])
  {
    v4 = 33;
  }

  else if ([@"ReadMessage" isEqualToString:v3])
  {
    v4 = 26;
  }

  else if ([@"ScreenTimeRequest" isEqualToString:v3])
  {
    v4 = 34;
  }

  else if ([@"SiriIntentEvents" isEqualToString:v3])
  {
    v4 = 35;
  }

  else if ([@"GameController" isEqualToString:v3])
  {
    v4 = 36;
  }

  else if ([@"SiriUI" isEqualToString:v3])
  {
    v4 = 37;
  }

  else if ([@"SiriExecution" isEqualToString:v3])
  {
    v4 = 38;
  }

  else if ([@"PostSiriEngagement" isEqualToString:v3])
  {
    v4 = 39;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (int64_t)streamForStreamIdentifier:(id)a3
{
  v3 = a3;
  v4 = +[BMPublicStreamUtilities libraryPublicStreamReverseMigrationPaths];
  v5 = [v4 valueForKey:v3];

  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = v3;
  }

  v7 = [BMPublicStreamUtilities streamForPreMigrationStreamIdentifier:v6];

  return v7;
}

+ (id)streamIdentifierForPreMigrationStream:(int64_t)a3
{
  if (a3 <= 0x28)
  {
    return qword_1E796ADF8[a3];
  }

  else
  {
    return 0;
  }
}

+ (id)streamIdentifierForStream:(int64_t)a3
{
  v3 = [BMPublicStreamUtilities streamIdentifierForPreMigrationStream:a3];
  v4 = +[BMPublicStreamUtilities libraryPublicStreamMigrationPaths];
  v5 = [v4 valueForKey:v3];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v3;
  }

  v8 = v7;

  return v7;
}

+ (BOOL)writeAllowedForStream:(int64_t)a3 processIdentifier:(id)a4
{
  v6 = a4;
  v7 = [a1 allowedStreamWriteIdentifiersForStream:a3];
  LOBYTE(a1) = [v7 containsObject:v6];

  return a1;
}

+ (id)allowedStreamWriteIdentifiersForStream:(int64_t)a3
{
  if ((a3 - 40) >= 0xFFFFFFFFFFFFFFD9)
  {
    return qword_1E796AF40[a3 - 1];
  }

  else
  {
    return 0;
  }
}

@end