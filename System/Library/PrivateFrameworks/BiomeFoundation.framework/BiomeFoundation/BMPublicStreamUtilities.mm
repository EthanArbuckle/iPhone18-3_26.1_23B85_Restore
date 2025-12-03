@interface BMPublicStreamUtilities
+ (BOOL)writeAllowedForStream:(int64_t)stream processIdentifier:(id)identifier;
+ (id)allowedStreamWriteIdentifiersForStream:(int64_t)stream;
+ (id)streamIdentifierForPreMigrationStream:(int64_t)stream;
+ (id)streamIdentifierForStream:(int64_t)stream;
+ (id)streamIdentifiers;
+ (int64_t)streamForPreMigrationStreamIdentifier:(id)identifier;
+ (int64_t)streamForStreamIdentifier:(id)identifier;
@end

@implementation BMPublicStreamUtilities

+ (id)streamIdentifiers
{
  v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:40];
  for (i = 0; i != 40; ++i)
  {
    if (i && i != 3)
    {
      v5 = [self streamIdentifierForStream:i];
      [v3 addObject:v5];
    }
  }

  return v3;
}

+ (int64_t)streamForPreMigrationStreamIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([@"AppLaunch" isEqualToString:identifierCopy])
  {
    v4 = 1;
  }

  else if ([@"AppIntent" isEqualToString:identifierCopy])
  {
    v4 = 2;
  }

  else if ([@"TestStream" isEqualToString:identifierCopy])
  {
    v4 = 3;
  }

  else if ([@"POICategory" isEqualToString:identifierCopy])
  {
    v4 = 4;
  }

  else if ([@"ContextualActions" isEqualToString:identifierCopy])
  {
    v4 = 5;
  }

  else if ([@"SleepMode" isEqualToString:identifierCopy])
  {
    v4 = 6;
  }

  else if ([@"UserFocusComputedMode" isEqualToString:identifierCopy])
  {
    v4 = 9;
  }

  else if ([@"UserFocusActivity" isEqualToString:identifierCopy])
  {
    v4 = 10;
  }

  else if ([@"CarPlay" isEqualToString:identifierCopy])
  {
    v4 = 7;
  }

  else if ([@"DoNotDisturbWhileDriving" isEqualToString:identifierCopy])
  {
    v4 = 8;
  }

  else if ([@"HomeKitClientAccessoryControl" isEqualToString:identifierCopy])
  {
    v4 = 14;
  }

  else if ([@"HomeKitClientMediaAccessoryControl" isEqualToString:identifierCopy])
  {
    v4 = 15;
  }

  else if ([@"HomeKitClientActionSet" isEqualToString:identifierCopy])
  {
    v4 = 16;
  }

  else if ([@"Alarm" isEqualToString:identifierCopy])
  {
    v4 = 11;
  }

  else if ([@"ScreenRecording" isEqualToString:identifierCopy])
  {
    v4 = 12;
  }

  else if ([@"ScreenSharing" isEqualToString:identifierCopy])
  {
    v4 = 13;
  }

  else if ([@"NowPlaying" isEqualToString:identifierCopy])
  {
    v4 = 17;
  }

  else if ([@"Notification" isEqualToString:identifierCopy])
  {
    v4 = 18;
  }

  else if ([@"Workout" isEqualToString:identifierCopy])
  {
    v4 = 19;
  }

  else if ([@"GroupActivitySession" isEqualToString:identifierCopy])
  {
    v4 = 20;
  }

  else if ([@"SemanticLocation" isEqualToString:identifierCopy])
  {
    v4 = 21;
  }

  else if ([@"Backlight" isEqualToString:identifierCopy])
  {
    v4 = 22;
  }

  else if ([@"HealthKitWorkout" isEqualToString:identifierCopy])
  {
    v4 = 23;
  }

  else if ([@"AppClipLaunch" isEqualToString:identifierCopy])
  {
    v4 = 24;
  }

  else if ([@"AskToBuy" isEqualToString:identifierCopy])
  {
    v4 = 25;
  }

  else if ([@"FindMyLocationChange" isEqualToString:identifierCopy])
  {
    v4 = 27;
  }

  else if ([@"SoundDetection" isEqualToString:identifierCopy])
  {
    v4 = 28;
  }

  else if ([@"UserStatusChange" isEqualToString:identifierCopy])
  {
    v4 = 29;
  }

  else if ([@"TextInputSession" isEqualToString:identifierCopy])
  {
    v4 = 30;
  }

  else if ([@"DeviceMetadata" isEqualToString:identifierCopy])
  {
    v4 = 31;
  }

  else if ([@"SchoolTime" isEqualToString:identifierCopy])
  {
    v4 = 32;
  }

  else if ([@"Mindfulness" isEqualToString:identifierCopy])
  {
    v4 = 33;
  }

  else if ([@"ReadMessage" isEqualToString:identifierCopy])
  {
    v4 = 26;
  }

  else if ([@"ScreenTimeRequest" isEqualToString:identifierCopy])
  {
    v4 = 34;
  }

  else if ([@"SiriIntentEvents" isEqualToString:identifierCopy])
  {
    v4 = 35;
  }

  else if ([@"GameController" isEqualToString:identifierCopy])
  {
    v4 = 36;
  }

  else if ([@"SiriUI" isEqualToString:identifierCopy])
  {
    v4 = 37;
  }

  else if ([@"SiriExecution" isEqualToString:identifierCopy])
  {
    v4 = 38;
  }

  else if ([@"PostSiriEngagement" isEqualToString:identifierCopy])
  {
    v4 = 39;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (int64_t)streamForStreamIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = +[BMPublicStreamUtilities libraryPublicStreamReverseMigrationPaths];
  v5 = [v4 valueForKey:identifierCopy];

  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = identifierCopy;
  }

  v7 = [BMPublicStreamUtilities streamForPreMigrationStreamIdentifier:v6];

  return v7;
}

+ (id)streamIdentifierForPreMigrationStream:(int64_t)stream
{
  if (stream <= 0x28)
  {
    return qword_1E796ADF8[stream];
  }

  else
  {
    return 0;
  }
}

+ (id)streamIdentifierForStream:(int64_t)stream
{
  v3 = [BMPublicStreamUtilities streamIdentifierForPreMigrationStream:stream];
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

+ (BOOL)writeAllowedForStream:(int64_t)stream processIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v7 = [self allowedStreamWriteIdentifiersForStream:stream];
  LOBYTE(self) = [v7 containsObject:identifierCopy];

  return self;
}

+ (id)allowedStreamWriteIdentifiersForStream:(int64_t)stream
{
  if ((stream - 40) >= 0xFFFFFFFFFFFFFFD9)
  {
    return qword_1E796AF40[stream - 1];
  }

  else
  {
    return 0;
  }
}

@end