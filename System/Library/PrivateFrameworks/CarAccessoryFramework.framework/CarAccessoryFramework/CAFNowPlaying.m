@interface CAFNowPlaying
+ (void)load;
- (BOOL)beginSeekBackwardDisabled;
- (BOOL)beginSeekForwardDisabled;
- (BOOL)hasAudioContentBadge;
- (BOOL)hasBeginSeekBackward;
- (BOOL)hasBeginSeekForward;
- (BOOL)hasEndSeek;
- (BOOL)hasJumpBackward;
- (BOOL)hasJumpBackwardInterval;
- (BOOL)hasJumpForward;
- (BOOL)hasJumpForwardInterval;
- (BOOL)hasNextItem;
- (BOOL)hasPause;
- (BOOL)hasPlay;
- (BOOL)hasPlaybackState;
- (BOOL)hasPreviousItem;
- (BOOL)hasSetArtistSongNotification;
- (BOOL)hasStop;
- (BOOL)hasUserVisibleDescription;
- (BOOL)jumpBackwardDisabled;
- (BOOL)jumpForwardDisabled;
- (BOOL)nextItemDisabled;
- (BOOL)pauseDisabled;
- (BOOL)playDisabled;
- (BOOL)previousItemDisabled;
- (BOOL)registeredForAlbum;
- (BOOL)registeredForArtist;
- (BOOL)registeredForArtwork;
- (BOOL)registeredForAudioContentBadge;
- (BOOL)registeredForBeginSeekBackward;
- (BOOL)registeredForBeginSeekForward;
- (BOOL)registeredForChangeMediaSource;
- (BOOL)registeredForCurrentMediaSourceIdentifier;
- (BOOL)registeredForEndSeek;
- (BOOL)registeredForJumpBackward;
- (BOOL)registeredForJumpBackwardInterval;
- (BOOL)registeredForJumpForward;
- (BOOL)registeredForJumpForwardInterval;
- (BOOL)registeredForNextItem;
- (BOOL)registeredForPause;
- (BOOL)registeredForPlay;
- (BOOL)registeredForPlaybackState;
- (BOOL)registeredForPreviousItem;
- (BOOL)registeredForSetArtistSongNotification;
- (BOOL)registeredForStop;
- (BOOL)registeredForTitle;
- (BOOL)registeredForTuneToFrequency;
- (BOOL)registeredForTuneToIdentifier;
- (BOOL)registeredForUserVisibleDescription;
- (BOOL)setArtistSongNotificationDisabled;
- (BOOL)stopDisabled;
- (CAFAudioContentBadgeCharacteristic)audioContentBadgeCharacteristic;
- (CAFBeginSeekBackwardControl)beginSeekBackwardControl;
- (CAFBeginSeekForwardControl)beginSeekForwardControl;
- (CAFChangeMediaSourceControl)changeMediaSourceControl;
- (CAFDataCharacteristic)artworkCharacteristic;
- (CAFEndSeekControl)endSeekControl;
- (CAFJumpBackwardControl)jumpBackwardControl;
- (CAFJumpForwardControl)jumpForwardControl;
- (CAFMeasurementCharacteristic)jumpBackwardIntervalCharacteristic;
- (CAFMeasurementCharacteristic)jumpForwardIntervalCharacteristic;
- (CAFMeasurementRange)jumpBackwardIntervalMeasurementRange;
- (CAFMeasurementRange)jumpForwardIntervalMeasurementRange;
- (CAFNextItemControl)nextItemControl;
- (CAFPauseControl)pauseControl;
- (CAFPlayControl)playControl;
- (CAFPlaybackStateCharacteristic)playbackStateCharacteristic;
- (CAFPreviousItemControl)previousItemControl;
- (CAFSetArtistSongNotificationControl)setArtistSongNotificationControl;
- (CAFStopControl)stopControl;
- (CAFStringCharacteristic)albumCharacteristic;
- (CAFStringCharacteristic)artistCharacteristic;
- (CAFStringCharacteristic)currentMediaSourceIdentifierCharacteristic;
- (CAFStringCharacteristic)titleCharacteristic;
- (CAFStringCharacteristic)userVisibleDescriptionCharacteristic;
- (CAFTuneToFrequencyControl)tuneToFrequencyControl;
- (CAFTuneToIdentifierControl)tuneToIdentifierControl;
- (CAFUInt16Range)jumpBackwardIntervalRange;
- (CAFUInt16Range)jumpForwardIntervalRange;
- (NSData)artwork;
- (NSMeasurement)jumpBackwardInterval;
- (NSMeasurement)jumpForwardInterval;
- (NSString)album;
- (NSString)artist;
- (NSString)currentMediaSourceIdentifier;
- (NSString)title;
- (NSString)userVisibleDescription;
- (unsigned)audioContentBadge;
- (unsigned)playbackState;
- (void)_controlDidUpdate:(id)a3;
- (void)beginSeekBackwardWithCompletion:(id)a3;
- (void)beginSeekForwardWithCompletion:(id)a3;
- (void)changeMediaSourceWithIdentifier:(id)a3 completion:(id)a4;
- (void)endSeekWithCompletion:(id)a3;
- (void)nextItemWithCompletion:(id)a3;
- (void)pauseWithCompletion:(id)a3;
- (void)playWithCompletion:(id)a3;
- (void)previousItemWithCompletion:(id)a3;
- (void)registerObserver:(id)a3;
- (void)setArtistSongNotificationWithCompletion:(id)a3;
- (void)stopWithCompletion:(id)a3;
- (void)tuneToIdentifier:(id)a3 sourceIdentifier:(id)a4 completion:(id)a5;
- (void)unregisterObserver:(id)a3;
@end

@implementation CAFNowPlaying

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___CAFNowPlaying;
  objc_msgSendSuper2(&v2, sel_load);
}

- (void)registerObserver:(id)a3
{
  v4 = a3;
  if ([v4 conformsToProtocol:&unk_28468B230])
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6.receiver = self;
  v6.super_class = CAFNowPlaying;
  [(CAFService *)&v6 registerObserver:v5];
}

- (void)unregisterObserver:(id)a3
{
  v4 = a3;
  if ([v4 conformsToProtocol:&unk_28468B230])
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6.receiver = self;
  v6.super_class = CAFNowPlaying;
  [(CAFService *)&v6 unregisterObserver:v5];
}

- (CAFStringCharacteristic)currentMediaSourceIdentifierCharacteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x0000000032000023"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000032000023"];
  if (v10 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (NSString)currentMediaSourceIdentifier
{
  v2 = [(CAFNowPlaying *)self currentMediaSourceIdentifierCharacteristic];
  v3 = [v2 stringValue];

  return v3;
}

- (CAFStringCharacteristic)titleCharacteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x0000000032000003"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000032000003"];
  if (v10 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (NSString)title
{
  v2 = [(CAFNowPlaying *)self titleCharacteristic];
  v3 = [v2 stringValue];

  return v3;
}

- (CAFStringCharacteristic)artistCharacteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x0000000032000004"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000032000004"];
  if (v10 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (NSString)artist
{
  v2 = [(CAFNowPlaying *)self artistCharacteristic];
  v3 = [v2 stringValue];

  return v3;
}

- (CAFStringCharacteristic)albumCharacteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x0000000032000005"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000032000005"];
  if (v10 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (NSString)album
{
  v2 = [(CAFNowPlaying *)self albumCharacteristic];
  v3 = [v2 stringValue];

  return v3;
}

- (CAFStringCharacteristic)userVisibleDescriptionCharacteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x0000000030000005"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000030000005"];
  if (v10 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (NSString)userVisibleDescription
{
  v2 = [(CAFNowPlaying *)self userVisibleDescriptionCharacteristic];
  v3 = [v2 stringValue];

  return v3;
}

- (BOOL)hasUserVisibleDescription
{
  v2 = [(CAFNowPlaying *)self userVisibleDescriptionCharacteristic];
  v3 = v2 != 0;

  return v3;
}

- (CAFDataCharacteristic)artworkCharacteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x0000000032000020"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000032000020"];
  if (v10 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (NSData)artwork
{
  v2 = [(CAFNowPlaying *)self artworkCharacteristic];
  v3 = [v2 dataValue];

  return v3;
}

- (CAFMeasurementCharacteristic)jumpBackwardIntervalCharacteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x0000000032000032"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000032000032"];
  if (v10 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (NSMeasurement)jumpBackwardInterval
{
  v2 = [(CAFNowPlaying *)self jumpBackwardIntervalCharacteristic];
  v3 = [v2 measurementValue];

  return v3;
}

- (CAFUInt16Range)jumpBackwardIntervalRange
{
  v2 = [(CAFNowPlaying *)self jumpBackwardIntervalCharacteristic];
  v3 = [v2 range];
  v4 = [v3 uInt16Range];

  return v4;
}

- (CAFMeasurementRange)jumpBackwardIntervalMeasurementRange
{
  v3 = [(CAFNowPlaying *)self jumpBackwardIntervalRange];
  v4 = [(CAFNowPlaying *)self jumpBackwardInterval];
  v5 = [v4 unit];
  v6 = [v3 measurementRangeWithUnit:v5];

  return v6;
}

- (BOOL)hasJumpBackwardInterval
{
  v2 = [(CAFNowPlaying *)self jumpBackwardIntervalCharacteristic];
  v3 = v2 != 0;

  return v3;
}

- (CAFMeasurementCharacteristic)jumpForwardIntervalCharacteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x0000000032000033"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000032000033"];
  if (v10 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (NSMeasurement)jumpForwardInterval
{
  v2 = [(CAFNowPlaying *)self jumpForwardIntervalCharacteristic];
  v3 = [v2 measurementValue];

  return v3;
}

- (CAFUInt16Range)jumpForwardIntervalRange
{
  v2 = [(CAFNowPlaying *)self jumpForwardIntervalCharacteristic];
  v3 = [v2 range];
  v4 = [v3 uInt16Range];

  return v4;
}

- (CAFMeasurementRange)jumpForwardIntervalMeasurementRange
{
  v3 = [(CAFNowPlaying *)self jumpForwardIntervalRange];
  v4 = [(CAFNowPlaying *)self jumpForwardInterval];
  v5 = [v4 unit];
  v6 = [v3 measurementRangeWithUnit:v5];

  return v6;
}

- (BOOL)hasJumpForwardInterval
{
  v2 = [(CAFNowPlaying *)self jumpForwardIntervalCharacteristic];
  v3 = v2 != 0;

  return v3;
}

- (CAFPlaybackStateCharacteristic)playbackStateCharacteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x0000000032000034"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000032000034"];
  if (v10 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (unsigned)playbackState
{
  v2 = [(CAFNowPlaying *)self playbackStateCharacteristic];
  v3 = [v2 playbackStateValue];

  return v3;
}

- (BOOL)hasPlaybackState
{
  v2 = [(CAFNowPlaying *)self playbackStateCharacteristic];
  v3 = v2 != 0;

  return v3;
}

- (CAFAudioContentBadgeCharacteristic)audioContentBadgeCharacteristic
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  [v6 validateRegisteredForAccessory:v8 service:v9 characteristic:@"0x0000000032000035"];

  objc_opt_class();
  v10 = [(CAFService *)self characteristicForType:@"0x0000000032000035"];
  if (v10 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (unsigned)audioContentBadge
{
  v2 = [(CAFNowPlaying *)self audioContentBadgeCharacteristic];
  v3 = [v2 audioContentBadgeValue];

  return v3;
}

- (BOOL)hasAudioContentBadge
{
  v2 = [(CAFNowPlaying *)self audioContentBadgeCharacteristic];
  v3 = v2 != 0;

  return v3;
}

- (CAFPlayControl)playControl
{
  objc_opt_class();
  v3 = [(CAFService *)self controlForType:@"0x000000000F000032"];
  if (v3 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)playWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(CAFNowPlaying *)self playControl];
  v6 = v5;
  if (v5)
  {
    [v5 playWithCompletion:v4];
  }

  else if (v4)
  {
    v7 = dispatch_get_global_queue(33, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __36__CAFNowPlaying_playWithCompletion___block_invoke;
    block[3] = &unk_27890D5E8;
    v9 = v4;
    dispatch_async(v7, block);
  }
}

void __36__CAFNowPlaying_playWithCompletion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.caraccessoryframework.cardata" code:9 userInfo:0];
  (*(v1 + 16))(v1, v2);
}

- (BOOL)hasPlay
{
  v2 = [(CAFNowPlaying *)self playControl];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)playDisabled
{
  v2 = [(CAFNowPlaying *)self playControl];
  v3 = [v2 isDisabled];

  return v3;
}

- (CAFPauseControl)pauseControl
{
  objc_opt_class();
  v3 = [(CAFService *)self controlForType:@"0x000000000F000033"];
  if (v3 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)pauseWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(CAFNowPlaying *)self pauseControl];
  v6 = v5;
  if (v5)
  {
    [v5 pauseWithCompletion:v4];
  }

  else if (v4)
  {
    v7 = dispatch_get_global_queue(33, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __37__CAFNowPlaying_pauseWithCompletion___block_invoke;
    block[3] = &unk_27890D5E8;
    v9 = v4;
    dispatch_async(v7, block);
  }
}

void __37__CAFNowPlaying_pauseWithCompletion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.caraccessoryframework.cardata" code:9 userInfo:0];
  (*(v1 + 16))(v1, v2);
}

- (BOOL)hasPause
{
  v2 = [(CAFNowPlaying *)self pauseControl];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)pauseDisabled
{
  v2 = [(CAFNowPlaying *)self pauseControl];
  v3 = [v2 isDisabled];

  return v3;
}

- (CAFStopControl)stopControl
{
  objc_opt_class();
  v3 = [(CAFService *)self controlForType:@"0x000000000F000034"];
  if (v3 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)stopWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(CAFNowPlaying *)self stopControl];
  v6 = v5;
  if (v5)
  {
    [v5 stopWithCompletion:v4];
  }

  else if (v4)
  {
    v7 = dispatch_get_global_queue(33, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __36__CAFNowPlaying_stopWithCompletion___block_invoke;
    block[3] = &unk_27890D5E8;
    v9 = v4;
    dispatch_async(v7, block);
  }
}

void __36__CAFNowPlaying_stopWithCompletion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.caraccessoryframework.cardata" code:9 userInfo:0];
  (*(v1 + 16))(v1, v2);
}

- (BOOL)hasStop
{
  v2 = [(CAFNowPlaying *)self stopControl];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)stopDisabled
{
  v2 = [(CAFNowPlaying *)self stopControl];
  v3 = [v2 isDisabled];

  return v3;
}

- (CAFNextItemControl)nextItemControl
{
  objc_opt_class();
  v3 = [(CAFService *)self controlForType:@"0x000000000F000035"];
  if (v3 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)nextItemWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(CAFNowPlaying *)self nextItemControl];
  v6 = v5;
  if (v5)
  {
    [v5 nextItemWithCompletion:v4];
  }

  else if (v4)
  {
    v7 = dispatch_get_global_queue(33, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __40__CAFNowPlaying_nextItemWithCompletion___block_invoke;
    block[3] = &unk_27890D5E8;
    v9 = v4;
    dispatch_async(v7, block);
  }
}

void __40__CAFNowPlaying_nextItemWithCompletion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.caraccessoryframework.cardata" code:9 userInfo:0];
  (*(v1 + 16))(v1, v2);
}

- (BOOL)hasNextItem
{
  v2 = [(CAFNowPlaying *)self nextItemControl];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)nextItemDisabled
{
  v2 = [(CAFNowPlaying *)self nextItemControl];
  v3 = [v2 isDisabled];

  return v3;
}

- (CAFPreviousItemControl)previousItemControl
{
  objc_opt_class();
  v3 = [(CAFService *)self controlForType:@"0x000000000F000036"];
  if (v3 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)previousItemWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(CAFNowPlaying *)self previousItemControl];
  v6 = v5;
  if (v5)
  {
    [v5 previousItemWithCompletion:v4];
  }

  else if (v4)
  {
    v7 = dispatch_get_global_queue(33, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __44__CAFNowPlaying_previousItemWithCompletion___block_invoke;
    block[3] = &unk_27890D5E8;
    v9 = v4;
    dispatch_async(v7, block);
  }
}

void __44__CAFNowPlaying_previousItemWithCompletion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.caraccessoryframework.cardata" code:9 userInfo:0];
  (*(v1 + 16))(v1, v2);
}

- (BOOL)hasPreviousItem
{
  v2 = [(CAFNowPlaying *)self previousItemControl];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)previousItemDisabled
{
  v2 = [(CAFNowPlaying *)self previousItemControl];
  v3 = [v2 isDisabled];

  return v3;
}

- (CAFBeginSeekForwardControl)beginSeekForwardControl
{
  objc_opt_class();
  v3 = [(CAFService *)self controlForType:@"0x000000000F000037"];
  if (v3 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)beginSeekForwardWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(CAFNowPlaying *)self beginSeekForwardControl];
  v6 = v5;
  if (v5)
  {
    [v5 beginSeekForwardWithCompletion:v4];
  }

  else if (v4)
  {
    v7 = dispatch_get_global_queue(33, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __48__CAFNowPlaying_beginSeekForwardWithCompletion___block_invoke;
    block[3] = &unk_27890D5E8;
    v9 = v4;
    dispatch_async(v7, block);
  }
}

void __48__CAFNowPlaying_beginSeekForwardWithCompletion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.caraccessoryframework.cardata" code:9 userInfo:0];
  (*(v1 + 16))(v1, v2);
}

- (BOOL)hasBeginSeekForward
{
  v2 = [(CAFNowPlaying *)self beginSeekForwardControl];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)beginSeekForwardDisabled
{
  v2 = [(CAFNowPlaying *)self beginSeekForwardControl];
  v3 = [v2 isDisabled];

  return v3;
}

- (CAFBeginSeekBackwardControl)beginSeekBackwardControl
{
  objc_opt_class();
  v3 = [(CAFService *)self controlForType:@"0x000000000F000038"];
  if (v3 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)beginSeekBackwardWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(CAFNowPlaying *)self beginSeekBackwardControl];
  v6 = v5;
  if (v5)
  {
    [v5 beginSeekBackwardWithCompletion:v4];
  }

  else if (v4)
  {
    v7 = dispatch_get_global_queue(33, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __49__CAFNowPlaying_beginSeekBackwardWithCompletion___block_invoke;
    block[3] = &unk_27890D5E8;
    v9 = v4;
    dispatch_async(v7, block);
  }
}

void __49__CAFNowPlaying_beginSeekBackwardWithCompletion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.caraccessoryframework.cardata" code:9 userInfo:0];
  (*(v1 + 16))(v1, v2);
}

- (BOOL)hasBeginSeekBackward
{
  v2 = [(CAFNowPlaying *)self beginSeekBackwardControl];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)beginSeekBackwardDisabled
{
  v2 = [(CAFNowPlaying *)self beginSeekBackwardControl];
  v3 = [v2 isDisabled];

  return v3;
}

- (CAFEndSeekControl)endSeekControl
{
  objc_opt_class();
  v3 = [(CAFService *)self controlForType:@"0x000000000F000039"];
  if (v3 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)endSeekWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(CAFNowPlaying *)self endSeekControl];
  v6 = v5;
  if (v5)
  {
    [v5 endSeekWithCompletion:v4];
  }

  else if (v4)
  {
    v7 = dispatch_get_global_queue(33, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __39__CAFNowPlaying_endSeekWithCompletion___block_invoke;
    block[3] = &unk_27890D5E8;
    v9 = v4;
    dispatch_async(v7, block);
  }
}

void __39__CAFNowPlaying_endSeekWithCompletion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.caraccessoryframework.cardata" code:9 userInfo:0];
  (*(v1 + 16))(v1, v2);
}

- (BOOL)hasEndSeek
{
  v2 = [(CAFNowPlaying *)self endSeekControl];
  v3 = v2 != 0;

  return v3;
}

- (CAFJumpForwardControl)jumpForwardControl
{
  objc_opt_class();
  v3 = [(CAFService *)self controlForType:@"0x000000000F000040"];
  if (v3 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void __56__CAFNowPlaying_jumpForwardWithJumpInterval_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.caraccessoryframework.cardata" code:9 userInfo:0];
  (*(v1 + 16))(v1, v2);
}

- (BOOL)hasJumpForward
{
  v2 = [(CAFNowPlaying *)self jumpForwardControl];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)jumpForwardDisabled
{
  v2 = [(CAFNowPlaying *)self jumpForwardControl];
  v3 = [v2 isDisabled];

  return v3;
}

- (CAFJumpBackwardControl)jumpBackwardControl
{
  objc_opt_class();
  v3 = [(CAFService *)self controlForType:@"0x000000000F00004A"];
  if (v3 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void __57__CAFNowPlaying_jumpBackwardWithJumpInterval_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.caraccessoryframework.cardata" code:9 userInfo:0];
  (*(v1 + 16))(v1, v2);
}

- (BOOL)hasJumpBackward
{
  v2 = [(CAFNowPlaying *)self jumpBackwardControl];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)jumpBackwardDisabled
{
  v2 = [(CAFNowPlaying *)self jumpBackwardControl];
  v3 = [v2 isDisabled];

  return v3;
}

- (CAFTuneToIdentifierControl)tuneToIdentifierControl
{
  objc_opt_class();
  v3 = [(CAFService *)self controlForType:@"0x000000000F00004B"];
  if (v3 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)tuneToIdentifier:(id)a3 sourceIdentifier:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(CAFNowPlaying *)self tuneToIdentifierControl];
  v12 = v11;
  if (v11)
  {
    [v11 tuneToIdentifier:v8 sourceIdentifier:v9 completion:v10];
  }

  else if (v10)
  {
    v13 = dispatch_get_global_queue(33, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __62__CAFNowPlaying_tuneToIdentifier_sourceIdentifier_completion___block_invoke;
    block[3] = &unk_27890D5E8;
    v15 = v10;
    dispatch_async(v13, block);
  }
}

void __62__CAFNowPlaying_tuneToIdentifier_sourceIdentifier_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.caraccessoryframework.cardata" code:9 userInfo:0];
  (*(v1 + 16))(v1, v2);
}

- (CAFTuneToFrequencyControl)tuneToFrequencyControl
{
  objc_opt_class();
  v3 = [(CAFService *)self controlForType:@"0x000000000F00004C"];
  if (v3 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void __61__CAFNowPlaying_tuneToFrequency_sourceIdentifier_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.caraccessoryframework.cardata" code:9 userInfo:0];
  (*(v1 + 16))(v1, v2);
}

- (CAFChangeMediaSourceControl)changeMediaSourceControl
{
  objc_opt_class();
  v3 = [(CAFService *)self controlForType:@"0x000000000F00004D"];
  if (v3 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)changeMediaSourceWithIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CAFNowPlaying *)self changeMediaSourceControl];
  v9 = v8;
  if (v8)
  {
    [v8 changeMediaSourceWithIdentifier:v6 completion:v7];
  }

  else if (v7)
  {
    v10 = dispatch_get_global_queue(33, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __60__CAFNowPlaying_changeMediaSourceWithIdentifier_completion___block_invoke;
    block[3] = &unk_27890D5E8;
    v12 = v7;
    dispatch_async(v10, block);
  }
}

void __60__CAFNowPlaying_changeMediaSourceWithIdentifier_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.caraccessoryframework.cardata" code:9 userInfo:0];
  (*(v1 + 16))(v1, v2);
}

- (CAFSetArtistSongNotificationControl)setArtistSongNotificationControl
{
  objc_opt_class();
  v3 = [(CAFService *)self controlForType:@"0x000000000F00004E"];
  if (v3 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setArtistSongNotificationWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(CAFNowPlaying *)self setArtistSongNotificationControl];
  v6 = v5;
  if (v5)
  {
    [v5 setArtistSongNotificationWithCompletion:v4];
  }

  else if (v4)
  {
    v7 = dispatch_get_global_queue(33, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __57__CAFNowPlaying_setArtistSongNotificationWithCompletion___block_invoke;
    block[3] = &unk_27890D5E8;
    v9 = v4;
    dispatch_async(v7, block);
  }
}

void __57__CAFNowPlaying_setArtistSongNotificationWithCompletion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.caraccessoryframework.cardata" code:9 userInfo:0];
  (*(v1 + 16))(v1, v2);
}

- (BOOL)hasSetArtistSongNotification
{
  v2 = [(CAFNowPlaying *)self setArtistSongNotificationControl];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)setArtistSongNotificationDisabled
{
  v2 = [(CAFNowPlaying *)self setArtistSongNotificationControl];
  v3 = [v2 isDisabled];

  return v3;
}

- (void)_controlDidUpdate:(id)a3
{
  v4 = a3;
  v5 = [v4 controlType];
  if ([v5 isEqual:@"0x000000000F000032"])
  {
    v6 = [v4 uniqueIdentifier];
    v7 = [(CAFNowPlaying *)self playControl];
    v8 = [v7 uniqueIdentifier];
    v9 = [v6 isEqual:v8];

    if (v9)
    {
      v10 = [(CAFService *)self observers];
      [v10 nowPlayingServiceDidUpdatePlay:self];
LABEL_40:

      goto LABEL_41;
    }
  }

  else
  {
  }

  v11 = [v4 controlType];
  if ([v11 isEqual:@"0x000000000F000033"])
  {
    v12 = [v4 uniqueIdentifier];
    v13 = [(CAFNowPlaying *)self pauseControl];
    v14 = [v13 uniqueIdentifier];
    v15 = [v12 isEqual:v14];

    if (v15)
    {
      v10 = [(CAFService *)self observers];
      [v10 nowPlayingServiceDidUpdatePause:self];
      goto LABEL_40;
    }
  }

  else
  {
  }

  v16 = [v4 controlType];
  if ([v16 isEqual:@"0x000000000F000034"])
  {
    v17 = [v4 uniqueIdentifier];
    v18 = [(CAFNowPlaying *)self stopControl];
    v19 = [v18 uniqueIdentifier];
    v20 = [v17 isEqual:v19];

    if (v20)
    {
      v10 = [(CAFService *)self observers];
      [v10 nowPlayingServiceDidUpdateStop:self];
      goto LABEL_40;
    }
  }

  else
  {
  }

  v21 = [v4 controlType];
  if ([v21 isEqual:@"0x000000000F000035"])
  {
    v22 = [v4 uniqueIdentifier];
    v23 = [(CAFNowPlaying *)self nextItemControl];
    v24 = [v23 uniqueIdentifier];
    v25 = [v22 isEqual:v24];

    if (v25)
    {
      v10 = [(CAFService *)self observers];
      [v10 nowPlayingServiceDidUpdateNextItem:self];
      goto LABEL_40;
    }
  }

  else
  {
  }

  v26 = [v4 controlType];
  if ([v26 isEqual:@"0x000000000F000036"])
  {
    v27 = [v4 uniqueIdentifier];
    v28 = [(CAFNowPlaying *)self previousItemControl];
    v29 = [v28 uniqueIdentifier];
    v30 = [v27 isEqual:v29];

    if (v30)
    {
      v10 = [(CAFService *)self observers];
      [v10 nowPlayingServiceDidUpdatePreviousItem:self];
      goto LABEL_40;
    }
  }

  else
  {
  }

  v31 = [v4 controlType];
  if ([v31 isEqual:@"0x000000000F000037"])
  {
    v32 = [v4 uniqueIdentifier];
    v33 = [(CAFNowPlaying *)self beginSeekForwardControl];
    v34 = [v33 uniqueIdentifier];
    v35 = [v32 isEqual:v34];

    if (v35)
    {
      v10 = [(CAFService *)self observers];
      [v10 nowPlayingServiceDidUpdateBeginSeekForward:self];
      goto LABEL_40;
    }
  }

  else
  {
  }

  v36 = [v4 controlType];
  if ([v36 isEqual:@"0x000000000F000038"])
  {
    v37 = [v4 uniqueIdentifier];
    v38 = [(CAFNowPlaying *)self beginSeekBackwardControl];
    v39 = [v38 uniqueIdentifier];
    v40 = [v37 isEqual:v39];

    if (v40)
    {
      v10 = [(CAFService *)self observers];
      [v10 nowPlayingServiceDidUpdateBeginSeekBackward:self];
      goto LABEL_40;
    }
  }

  else
  {
  }

  v41 = [v4 controlType];
  if ([v41 isEqual:@"0x000000000F000040"])
  {
    v42 = [v4 uniqueIdentifier];
    v43 = [(CAFNowPlaying *)self jumpForwardControl];
    v44 = [v43 uniqueIdentifier];
    v45 = [v42 isEqual:v44];

    if (v45)
    {
      v10 = [(CAFService *)self observers];
      [v10 nowPlayingServiceDidUpdateJumpForward:self];
      goto LABEL_40;
    }
  }

  else
  {
  }

  v46 = [v4 controlType];
  if ([v46 isEqual:@"0x000000000F00004A"])
  {
    v47 = [v4 uniqueIdentifier];
    v48 = [(CAFNowPlaying *)self jumpBackwardControl];
    v49 = [v48 uniqueIdentifier];
    v50 = [v47 isEqual:v49];

    if (v50)
    {
      v10 = [(CAFService *)self observers];
      [v10 nowPlayingServiceDidUpdateJumpBackward:self];
      goto LABEL_40;
    }
  }

  else
  {
  }

  v10 = [v4 controlType];
  if (![v10 isEqual:@"0x000000000F00004E"])
  {
    goto LABEL_40;
  }

  v51 = [v4 uniqueIdentifier];
  v52 = [(CAFNowPlaying *)self setArtistSongNotificationControl];
  v53 = [v52 uniqueIdentifier];
  v54 = [v51 isEqual:v53];

  if (v54)
  {
    v10 = [(CAFService *)self observers];
    [v10 nowPlayingServiceDidUpdateSetArtistSongNotification:self];
    goto LABEL_40;
  }

LABEL_41:
  v55.receiver = self;
  v55.super_class = CAFNowPlaying;
  [(CAFService *)&v55 _controlDidUpdate:v4];
}

- (BOOL)registeredForCurrentMediaSourceIdentifier
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x0000000032000023"];

  return v10;
}

- (BOOL)registeredForTitle
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x0000000032000003"];

  return v10;
}

- (BOOL)registeredForArtist
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x0000000032000004"];

  return v10;
}

- (BOOL)registeredForAlbum
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x0000000032000005"];

  return v10;
}

- (BOOL)registeredForUserVisibleDescription
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x0000000030000005"];

  return v10;
}

- (BOOL)registeredForArtwork
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x0000000032000020"];

  return v10;
}

- (BOOL)registeredForJumpBackwardInterval
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x0000000032000032"];

  return v10;
}

- (BOOL)registeredForJumpForwardInterval
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x0000000032000033"];

  return v10;
}

- (BOOL)registeredForPlaybackState
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x0000000032000034"];

  return v10;
}

- (BOOL)registeredForAudioContentBadge
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 characteristic:@"0x0000000032000035"];

  return v10;
}

- (BOOL)registeredForPlay
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 control:@"0x000000000F000032"];

  return v10;
}

- (BOOL)registeredForPause
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 control:@"0x000000000F000033"];

  return v10;
}

- (BOOL)registeredForStop
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 control:@"0x000000000F000034"];

  return v10;
}

- (BOOL)registeredForNextItem
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 control:@"0x000000000F000035"];

  return v10;
}

- (BOOL)registeredForPreviousItem
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 control:@"0x000000000F000036"];

  return v10;
}

- (BOOL)registeredForBeginSeekForward
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 control:@"0x000000000F000037"];

  return v10;
}

- (BOOL)registeredForBeginSeekBackward
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 control:@"0x000000000F000038"];

  return v10;
}

- (BOOL)registeredForEndSeek
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 control:@"0x000000000F000039"];

  return v10;
}

- (BOOL)registeredForJumpForward
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 control:@"0x000000000F000040"];

  return v10;
}

- (BOOL)registeredForJumpBackward
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 control:@"0x000000000F00004A"];

  return v10;
}

- (BOOL)registeredForTuneToIdentifier
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 control:@"0x000000000F00004B"];

  return v10;
}

- (BOOL)registeredForTuneToFrequency
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 control:@"0x000000000F00004C"];

  return v10;
}

- (BOOL)registeredForChangeMediaSource
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 control:@"0x000000000F00004D"];

  return v10;
}

- (BOOL)registeredForSetArtistSongNotification
{
  v3 = [(CAFService *)self car];
  v4 = [v3 carManager];
  v5 = [v4 config];
  v6 = [v5 registrations];
  v7 = [(CAFService *)self accessory];
  v8 = [objc_opt_class() accessoryIdentifier];
  v9 = [objc_opt_class() serviceIdentifier];
  v10 = [v6 hasAccessory:v8 service:v9 control:@"0x000000000F00004E"];

  return v10;
}

@end