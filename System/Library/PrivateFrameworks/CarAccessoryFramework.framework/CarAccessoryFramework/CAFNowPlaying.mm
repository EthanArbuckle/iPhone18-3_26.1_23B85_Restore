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
- (void)_controlDidUpdate:(id)update;
- (void)beginSeekBackwardWithCompletion:(id)completion;
- (void)beginSeekForwardWithCompletion:(id)completion;
- (void)changeMediaSourceWithIdentifier:(id)identifier completion:(id)completion;
- (void)endSeekWithCompletion:(id)completion;
- (void)nextItemWithCompletion:(id)completion;
- (void)pauseWithCompletion:(id)completion;
- (void)playWithCompletion:(id)completion;
- (void)previousItemWithCompletion:(id)completion;
- (void)registerObserver:(id)observer;
- (void)setArtistSongNotificationWithCompletion:(id)completion;
- (void)stopWithCompletion:(id)completion;
- (void)tuneToIdentifier:(id)identifier sourceIdentifier:(id)sourceIdentifier completion:(id)completion;
- (void)unregisterObserver:(id)observer;
@end

@implementation CAFNowPlaying

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___CAFNowPlaying;
  objc_msgSendSuper2(&v2, sel_load);
}

- (void)registerObserver:(id)observer
{
  observerCopy = observer;
  if ([observerCopy conformsToProtocol:&unk_28468B230])
  {
    v5 = observerCopy;
  }

  else
  {
    v5 = 0;
  }

  v6.receiver = self;
  v6.super_class = CAFNowPlaying;
  [(CAFService *)&v6 registerObserver:v5];
}

- (void)unregisterObserver:(id)observer
{
  observerCopy = observer;
  if ([observerCopy conformsToProtocol:&unk_28468B230])
  {
    v5 = observerCopy;
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
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000032000023"];

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
  currentMediaSourceIdentifierCharacteristic = [(CAFNowPlaying *)self currentMediaSourceIdentifierCharacteristic];
  stringValue = [currentMediaSourceIdentifierCharacteristic stringValue];

  return stringValue;
}

- (CAFStringCharacteristic)titleCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000032000003"];

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
  titleCharacteristic = [(CAFNowPlaying *)self titleCharacteristic];
  stringValue = [titleCharacteristic stringValue];

  return stringValue;
}

- (CAFStringCharacteristic)artistCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000032000004"];

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
  artistCharacteristic = [(CAFNowPlaying *)self artistCharacteristic];
  stringValue = [artistCharacteristic stringValue];

  return stringValue;
}

- (CAFStringCharacteristic)albumCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000032000005"];

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
  albumCharacteristic = [(CAFNowPlaying *)self albumCharacteristic];
  stringValue = [albumCharacteristic stringValue];

  return stringValue;
}

- (CAFStringCharacteristic)userVisibleDescriptionCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000030000005"];

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
  userVisibleDescriptionCharacteristic = [(CAFNowPlaying *)self userVisibleDescriptionCharacteristic];
  stringValue = [userVisibleDescriptionCharacteristic stringValue];

  return stringValue;
}

- (BOOL)hasUserVisibleDescription
{
  userVisibleDescriptionCharacteristic = [(CAFNowPlaying *)self userVisibleDescriptionCharacteristic];
  v3 = userVisibleDescriptionCharacteristic != 0;

  return v3;
}

- (CAFDataCharacteristic)artworkCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000032000020"];

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
  artworkCharacteristic = [(CAFNowPlaying *)self artworkCharacteristic];
  dataValue = [artworkCharacteristic dataValue];

  return dataValue;
}

- (CAFMeasurementCharacteristic)jumpBackwardIntervalCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000032000032"];

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
  jumpBackwardIntervalCharacteristic = [(CAFNowPlaying *)self jumpBackwardIntervalCharacteristic];
  measurementValue = [jumpBackwardIntervalCharacteristic measurementValue];

  return measurementValue;
}

- (CAFUInt16Range)jumpBackwardIntervalRange
{
  jumpBackwardIntervalCharacteristic = [(CAFNowPlaying *)self jumpBackwardIntervalCharacteristic];
  range = [jumpBackwardIntervalCharacteristic range];
  uInt16Range = [range uInt16Range];

  return uInt16Range;
}

- (CAFMeasurementRange)jumpBackwardIntervalMeasurementRange
{
  jumpBackwardIntervalRange = [(CAFNowPlaying *)self jumpBackwardIntervalRange];
  jumpBackwardInterval = [(CAFNowPlaying *)self jumpBackwardInterval];
  unit = [jumpBackwardInterval unit];
  v6 = [jumpBackwardIntervalRange measurementRangeWithUnit:unit];

  return v6;
}

- (BOOL)hasJumpBackwardInterval
{
  jumpBackwardIntervalCharacteristic = [(CAFNowPlaying *)self jumpBackwardIntervalCharacteristic];
  v3 = jumpBackwardIntervalCharacteristic != 0;

  return v3;
}

- (CAFMeasurementCharacteristic)jumpForwardIntervalCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000032000033"];

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
  jumpForwardIntervalCharacteristic = [(CAFNowPlaying *)self jumpForwardIntervalCharacteristic];
  measurementValue = [jumpForwardIntervalCharacteristic measurementValue];

  return measurementValue;
}

- (CAFUInt16Range)jumpForwardIntervalRange
{
  jumpForwardIntervalCharacteristic = [(CAFNowPlaying *)self jumpForwardIntervalCharacteristic];
  range = [jumpForwardIntervalCharacteristic range];
  uInt16Range = [range uInt16Range];

  return uInt16Range;
}

- (CAFMeasurementRange)jumpForwardIntervalMeasurementRange
{
  jumpForwardIntervalRange = [(CAFNowPlaying *)self jumpForwardIntervalRange];
  jumpForwardInterval = [(CAFNowPlaying *)self jumpForwardInterval];
  unit = [jumpForwardInterval unit];
  v6 = [jumpForwardIntervalRange measurementRangeWithUnit:unit];

  return v6;
}

- (BOOL)hasJumpForwardInterval
{
  jumpForwardIntervalCharacteristic = [(CAFNowPlaying *)self jumpForwardIntervalCharacteristic];
  v3 = jumpForwardIntervalCharacteristic != 0;

  return v3;
}

- (CAFPlaybackStateCharacteristic)playbackStateCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000032000034"];

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
  playbackStateCharacteristic = [(CAFNowPlaying *)self playbackStateCharacteristic];
  playbackStateValue = [playbackStateCharacteristic playbackStateValue];

  return playbackStateValue;
}

- (BOOL)hasPlaybackState
{
  playbackStateCharacteristic = [(CAFNowPlaying *)self playbackStateCharacteristic];
  v3 = playbackStateCharacteristic != 0;

  return v3;
}

- (CAFAudioContentBadgeCharacteristic)audioContentBadgeCharacteristic
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  [registrations validateRegisteredForAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000032000035"];

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
  audioContentBadgeCharacteristic = [(CAFNowPlaying *)self audioContentBadgeCharacteristic];
  audioContentBadgeValue = [audioContentBadgeCharacteristic audioContentBadgeValue];

  return audioContentBadgeValue;
}

- (BOOL)hasAudioContentBadge
{
  audioContentBadgeCharacteristic = [(CAFNowPlaying *)self audioContentBadgeCharacteristic];
  v3 = audioContentBadgeCharacteristic != 0;

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

- (void)playWithCompletion:(id)completion
{
  completionCopy = completion;
  playControl = [(CAFNowPlaying *)self playControl];
  v6 = playControl;
  if (playControl)
  {
    [playControl playWithCompletion:completionCopy];
  }

  else if (completionCopy)
  {
    v7 = dispatch_get_global_queue(33, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __36__CAFNowPlaying_playWithCompletion___block_invoke;
    block[3] = &unk_27890D5E8;
    v9 = completionCopy;
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
  playControl = [(CAFNowPlaying *)self playControl];
  v3 = playControl != 0;

  return v3;
}

- (BOOL)playDisabled
{
  playControl = [(CAFNowPlaying *)self playControl];
  isDisabled = [playControl isDisabled];

  return isDisabled;
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

- (void)pauseWithCompletion:(id)completion
{
  completionCopy = completion;
  pauseControl = [(CAFNowPlaying *)self pauseControl];
  v6 = pauseControl;
  if (pauseControl)
  {
    [pauseControl pauseWithCompletion:completionCopy];
  }

  else if (completionCopy)
  {
    v7 = dispatch_get_global_queue(33, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __37__CAFNowPlaying_pauseWithCompletion___block_invoke;
    block[3] = &unk_27890D5E8;
    v9 = completionCopy;
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
  pauseControl = [(CAFNowPlaying *)self pauseControl];
  v3 = pauseControl != 0;

  return v3;
}

- (BOOL)pauseDisabled
{
  pauseControl = [(CAFNowPlaying *)self pauseControl];
  isDisabled = [pauseControl isDisabled];

  return isDisabled;
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

- (void)stopWithCompletion:(id)completion
{
  completionCopy = completion;
  stopControl = [(CAFNowPlaying *)self stopControl];
  v6 = stopControl;
  if (stopControl)
  {
    [stopControl stopWithCompletion:completionCopy];
  }

  else if (completionCopy)
  {
    v7 = dispatch_get_global_queue(33, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __36__CAFNowPlaying_stopWithCompletion___block_invoke;
    block[3] = &unk_27890D5E8;
    v9 = completionCopy;
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
  stopControl = [(CAFNowPlaying *)self stopControl];
  v3 = stopControl != 0;

  return v3;
}

- (BOOL)stopDisabled
{
  stopControl = [(CAFNowPlaying *)self stopControl];
  isDisabled = [stopControl isDisabled];

  return isDisabled;
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

- (void)nextItemWithCompletion:(id)completion
{
  completionCopy = completion;
  nextItemControl = [(CAFNowPlaying *)self nextItemControl];
  v6 = nextItemControl;
  if (nextItemControl)
  {
    [nextItemControl nextItemWithCompletion:completionCopy];
  }

  else if (completionCopy)
  {
    v7 = dispatch_get_global_queue(33, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __40__CAFNowPlaying_nextItemWithCompletion___block_invoke;
    block[3] = &unk_27890D5E8;
    v9 = completionCopy;
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
  nextItemControl = [(CAFNowPlaying *)self nextItemControl];
  v3 = nextItemControl != 0;

  return v3;
}

- (BOOL)nextItemDisabled
{
  nextItemControl = [(CAFNowPlaying *)self nextItemControl];
  isDisabled = [nextItemControl isDisabled];

  return isDisabled;
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

- (void)previousItemWithCompletion:(id)completion
{
  completionCopy = completion;
  previousItemControl = [(CAFNowPlaying *)self previousItemControl];
  v6 = previousItemControl;
  if (previousItemControl)
  {
    [previousItemControl previousItemWithCompletion:completionCopy];
  }

  else if (completionCopy)
  {
    v7 = dispatch_get_global_queue(33, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __44__CAFNowPlaying_previousItemWithCompletion___block_invoke;
    block[3] = &unk_27890D5E8;
    v9 = completionCopy;
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
  previousItemControl = [(CAFNowPlaying *)self previousItemControl];
  v3 = previousItemControl != 0;

  return v3;
}

- (BOOL)previousItemDisabled
{
  previousItemControl = [(CAFNowPlaying *)self previousItemControl];
  isDisabled = [previousItemControl isDisabled];

  return isDisabled;
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

- (void)beginSeekForwardWithCompletion:(id)completion
{
  completionCopy = completion;
  beginSeekForwardControl = [(CAFNowPlaying *)self beginSeekForwardControl];
  v6 = beginSeekForwardControl;
  if (beginSeekForwardControl)
  {
    [beginSeekForwardControl beginSeekForwardWithCompletion:completionCopy];
  }

  else if (completionCopy)
  {
    v7 = dispatch_get_global_queue(33, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __48__CAFNowPlaying_beginSeekForwardWithCompletion___block_invoke;
    block[3] = &unk_27890D5E8;
    v9 = completionCopy;
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
  beginSeekForwardControl = [(CAFNowPlaying *)self beginSeekForwardControl];
  v3 = beginSeekForwardControl != 0;

  return v3;
}

- (BOOL)beginSeekForwardDisabled
{
  beginSeekForwardControl = [(CAFNowPlaying *)self beginSeekForwardControl];
  isDisabled = [beginSeekForwardControl isDisabled];

  return isDisabled;
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

- (void)beginSeekBackwardWithCompletion:(id)completion
{
  completionCopy = completion;
  beginSeekBackwardControl = [(CAFNowPlaying *)self beginSeekBackwardControl];
  v6 = beginSeekBackwardControl;
  if (beginSeekBackwardControl)
  {
    [beginSeekBackwardControl beginSeekBackwardWithCompletion:completionCopy];
  }

  else if (completionCopy)
  {
    v7 = dispatch_get_global_queue(33, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __49__CAFNowPlaying_beginSeekBackwardWithCompletion___block_invoke;
    block[3] = &unk_27890D5E8;
    v9 = completionCopy;
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
  beginSeekBackwardControl = [(CAFNowPlaying *)self beginSeekBackwardControl];
  v3 = beginSeekBackwardControl != 0;

  return v3;
}

- (BOOL)beginSeekBackwardDisabled
{
  beginSeekBackwardControl = [(CAFNowPlaying *)self beginSeekBackwardControl];
  isDisabled = [beginSeekBackwardControl isDisabled];

  return isDisabled;
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

- (void)endSeekWithCompletion:(id)completion
{
  completionCopy = completion;
  endSeekControl = [(CAFNowPlaying *)self endSeekControl];
  v6 = endSeekControl;
  if (endSeekControl)
  {
    [endSeekControl endSeekWithCompletion:completionCopy];
  }

  else if (completionCopy)
  {
    v7 = dispatch_get_global_queue(33, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __39__CAFNowPlaying_endSeekWithCompletion___block_invoke;
    block[3] = &unk_27890D5E8;
    v9 = completionCopy;
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
  endSeekControl = [(CAFNowPlaying *)self endSeekControl];
  v3 = endSeekControl != 0;

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
  jumpForwardControl = [(CAFNowPlaying *)self jumpForwardControl];
  v3 = jumpForwardControl != 0;

  return v3;
}

- (BOOL)jumpForwardDisabled
{
  jumpForwardControl = [(CAFNowPlaying *)self jumpForwardControl];
  isDisabled = [jumpForwardControl isDisabled];

  return isDisabled;
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
  jumpBackwardControl = [(CAFNowPlaying *)self jumpBackwardControl];
  v3 = jumpBackwardControl != 0;

  return v3;
}

- (BOOL)jumpBackwardDisabled
{
  jumpBackwardControl = [(CAFNowPlaying *)self jumpBackwardControl];
  isDisabled = [jumpBackwardControl isDisabled];

  return isDisabled;
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

- (void)tuneToIdentifier:(id)identifier sourceIdentifier:(id)sourceIdentifier completion:(id)completion
{
  identifierCopy = identifier;
  sourceIdentifierCopy = sourceIdentifier;
  completionCopy = completion;
  tuneToIdentifierControl = [(CAFNowPlaying *)self tuneToIdentifierControl];
  v12 = tuneToIdentifierControl;
  if (tuneToIdentifierControl)
  {
    [tuneToIdentifierControl tuneToIdentifier:identifierCopy sourceIdentifier:sourceIdentifierCopy completion:completionCopy];
  }

  else if (completionCopy)
  {
    v13 = dispatch_get_global_queue(33, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __62__CAFNowPlaying_tuneToIdentifier_sourceIdentifier_completion___block_invoke;
    block[3] = &unk_27890D5E8;
    v15 = completionCopy;
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

- (void)changeMediaSourceWithIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  changeMediaSourceControl = [(CAFNowPlaying *)self changeMediaSourceControl];
  v9 = changeMediaSourceControl;
  if (changeMediaSourceControl)
  {
    [changeMediaSourceControl changeMediaSourceWithIdentifier:identifierCopy completion:completionCopy];
  }

  else if (completionCopy)
  {
    v10 = dispatch_get_global_queue(33, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __60__CAFNowPlaying_changeMediaSourceWithIdentifier_completion___block_invoke;
    block[3] = &unk_27890D5E8;
    v12 = completionCopy;
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

- (void)setArtistSongNotificationWithCompletion:(id)completion
{
  completionCopy = completion;
  setArtistSongNotificationControl = [(CAFNowPlaying *)self setArtistSongNotificationControl];
  v6 = setArtistSongNotificationControl;
  if (setArtistSongNotificationControl)
  {
    [setArtistSongNotificationControl setArtistSongNotificationWithCompletion:completionCopy];
  }

  else if (completionCopy)
  {
    v7 = dispatch_get_global_queue(33, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __57__CAFNowPlaying_setArtistSongNotificationWithCompletion___block_invoke;
    block[3] = &unk_27890D5E8;
    v9 = completionCopy;
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
  setArtistSongNotificationControl = [(CAFNowPlaying *)self setArtistSongNotificationControl];
  v3 = setArtistSongNotificationControl != 0;

  return v3;
}

- (BOOL)setArtistSongNotificationDisabled
{
  setArtistSongNotificationControl = [(CAFNowPlaying *)self setArtistSongNotificationControl];
  isDisabled = [setArtistSongNotificationControl isDisabled];

  return isDisabled;
}

- (void)_controlDidUpdate:(id)update
{
  updateCopy = update;
  controlType = [updateCopy controlType];
  if ([controlType isEqual:@"0x000000000F000032"])
  {
    uniqueIdentifier = [updateCopy uniqueIdentifier];
    playControl = [(CAFNowPlaying *)self playControl];
    uniqueIdentifier2 = [playControl uniqueIdentifier];
    v9 = [uniqueIdentifier isEqual:uniqueIdentifier2];

    if (v9)
    {
      observers = [(CAFService *)self observers];
      [observers nowPlayingServiceDidUpdatePlay:self];
LABEL_40:

      goto LABEL_41;
    }
  }

  else
  {
  }

  controlType2 = [updateCopy controlType];
  if ([controlType2 isEqual:@"0x000000000F000033"])
  {
    uniqueIdentifier3 = [updateCopy uniqueIdentifier];
    pauseControl = [(CAFNowPlaying *)self pauseControl];
    uniqueIdentifier4 = [pauseControl uniqueIdentifier];
    v15 = [uniqueIdentifier3 isEqual:uniqueIdentifier4];

    if (v15)
    {
      observers = [(CAFService *)self observers];
      [observers nowPlayingServiceDidUpdatePause:self];
      goto LABEL_40;
    }
  }

  else
  {
  }

  controlType3 = [updateCopy controlType];
  if ([controlType3 isEqual:@"0x000000000F000034"])
  {
    uniqueIdentifier5 = [updateCopy uniqueIdentifier];
    stopControl = [(CAFNowPlaying *)self stopControl];
    uniqueIdentifier6 = [stopControl uniqueIdentifier];
    v20 = [uniqueIdentifier5 isEqual:uniqueIdentifier6];

    if (v20)
    {
      observers = [(CAFService *)self observers];
      [observers nowPlayingServiceDidUpdateStop:self];
      goto LABEL_40;
    }
  }

  else
  {
  }

  controlType4 = [updateCopy controlType];
  if ([controlType4 isEqual:@"0x000000000F000035"])
  {
    uniqueIdentifier7 = [updateCopy uniqueIdentifier];
    nextItemControl = [(CAFNowPlaying *)self nextItemControl];
    uniqueIdentifier8 = [nextItemControl uniqueIdentifier];
    v25 = [uniqueIdentifier7 isEqual:uniqueIdentifier8];

    if (v25)
    {
      observers = [(CAFService *)self observers];
      [observers nowPlayingServiceDidUpdateNextItem:self];
      goto LABEL_40;
    }
  }

  else
  {
  }

  controlType5 = [updateCopy controlType];
  if ([controlType5 isEqual:@"0x000000000F000036"])
  {
    uniqueIdentifier9 = [updateCopy uniqueIdentifier];
    previousItemControl = [(CAFNowPlaying *)self previousItemControl];
    uniqueIdentifier10 = [previousItemControl uniqueIdentifier];
    v30 = [uniqueIdentifier9 isEqual:uniqueIdentifier10];

    if (v30)
    {
      observers = [(CAFService *)self observers];
      [observers nowPlayingServiceDidUpdatePreviousItem:self];
      goto LABEL_40;
    }
  }

  else
  {
  }

  controlType6 = [updateCopy controlType];
  if ([controlType6 isEqual:@"0x000000000F000037"])
  {
    uniqueIdentifier11 = [updateCopy uniqueIdentifier];
    beginSeekForwardControl = [(CAFNowPlaying *)self beginSeekForwardControl];
    uniqueIdentifier12 = [beginSeekForwardControl uniqueIdentifier];
    v35 = [uniqueIdentifier11 isEqual:uniqueIdentifier12];

    if (v35)
    {
      observers = [(CAFService *)self observers];
      [observers nowPlayingServiceDidUpdateBeginSeekForward:self];
      goto LABEL_40;
    }
  }

  else
  {
  }

  controlType7 = [updateCopy controlType];
  if ([controlType7 isEqual:@"0x000000000F000038"])
  {
    uniqueIdentifier13 = [updateCopy uniqueIdentifier];
    beginSeekBackwardControl = [(CAFNowPlaying *)self beginSeekBackwardControl];
    uniqueIdentifier14 = [beginSeekBackwardControl uniqueIdentifier];
    v40 = [uniqueIdentifier13 isEqual:uniqueIdentifier14];

    if (v40)
    {
      observers = [(CAFService *)self observers];
      [observers nowPlayingServiceDidUpdateBeginSeekBackward:self];
      goto LABEL_40;
    }
  }

  else
  {
  }

  controlType8 = [updateCopy controlType];
  if ([controlType8 isEqual:@"0x000000000F000040"])
  {
    uniqueIdentifier15 = [updateCopy uniqueIdentifier];
    jumpForwardControl = [(CAFNowPlaying *)self jumpForwardControl];
    uniqueIdentifier16 = [jumpForwardControl uniqueIdentifier];
    v45 = [uniqueIdentifier15 isEqual:uniqueIdentifier16];

    if (v45)
    {
      observers = [(CAFService *)self observers];
      [observers nowPlayingServiceDidUpdateJumpForward:self];
      goto LABEL_40;
    }
  }

  else
  {
  }

  controlType9 = [updateCopy controlType];
  if ([controlType9 isEqual:@"0x000000000F00004A"])
  {
    uniqueIdentifier17 = [updateCopy uniqueIdentifier];
    jumpBackwardControl = [(CAFNowPlaying *)self jumpBackwardControl];
    uniqueIdentifier18 = [jumpBackwardControl uniqueIdentifier];
    v50 = [uniqueIdentifier17 isEqual:uniqueIdentifier18];

    if (v50)
    {
      observers = [(CAFService *)self observers];
      [observers nowPlayingServiceDidUpdateJumpBackward:self];
      goto LABEL_40;
    }
  }

  else
  {
  }

  observers = [updateCopy controlType];
  if (![observers isEqual:@"0x000000000F00004E"])
  {
    goto LABEL_40;
  }

  uniqueIdentifier19 = [updateCopy uniqueIdentifier];
  setArtistSongNotificationControl = [(CAFNowPlaying *)self setArtistSongNotificationControl];
  uniqueIdentifier20 = [setArtistSongNotificationControl uniqueIdentifier];
  v54 = [uniqueIdentifier19 isEqual:uniqueIdentifier20];

  if (v54)
  {
    observers = [(CAFService *)self observers];
    [observers nowPlayingServiceDidUpdateSetArtistSongNotification:self];
    goto LABEL_40;
  }

LABEL_41:
  v55.receiver = self;
  v55.super_class = CAFNowPlaying;
  [(CAFService *)&v55 _controlDidUpdate:updateCopy];
}

- (BOOL)registeredForCurrentMediaSourceIdentifier
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000032000023"];

  return v10;
}

- (BOOL)registeredForTitle
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000032000003"];

  return v10;
}

- (BOOL)registeredForArtist
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000032000004"];

  return v10;
}

- (BOOL)registeredForAlbum
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000032000005"];

  return v10;
}

- (BOOL)registeredForUserVisibleDescription
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000030000005"];

  return v10;
}

- (BOOL)registeredForArtwork
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000032000020"];

  return v10;
}

- (BOOL)registeredForJumpBackwardInterval
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000032000032"];

  return v10;
}

- (BOOL)registeredForJumpForwardInterval
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000032000033"];

  return v10;
}

- (BOOL)registeredForPlaybackState
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000032000034"];

  return v10;
}

- (BOOL)registeredForAudioContentBadge
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier characteristic:@"0x0000000032000035"];

  return v10;
}

- (BOOL)registeredForPlay
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier control:@"0x000000000F000032"];

  return v10;
}

- (BOOL)registeredForPause
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier control:@"0x000000000F000033"];

  return v10;
}

- (BOOL)registeredForStop
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier control:@"0x000000000F000034"];

  return v10;
}

- (BOOL)registeredForNextItem
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier control:@"0x000000000F000035"];

  return v10;
}

- (BOOL)registeredForPreviousItem
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier control:@"0x000000000F000036"];

  return v10;
}

- (BOOL)registeredForBeginSeekForward
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier control:@"0x000000000F000037"];

  return v10;
}

- (BOOL)registeredForBeginSeekBackward
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier control:@"0x000000000F000038"];

  return v10;
}

- (BOOL)registeredForEndSeek
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier control:@"0x000000000F000039"];

  return v10;
}

- (BOOL)registeredForJumpForward
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier control:@"0x000000000F000040"];

  return v10;
}

- (BOOL)registeredForJumpBackward
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier control:@"0x000000000F00004A"];

  return v10;
}

- (BOOL)registeredForTuneToIdentifier
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier control:@"0x000000000F00004B"];

  return v10;
}

- (BOOL)registeredForTuneToFrequency
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier control:@"0x000000000F00004C"];

  return v10;
}

- (BOOL)registeredForChangeMediaSource
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier control:@"0x000000000F00004D"];

  return v10;
}

- (BOOL)registeredForSetArtistSongNotification
{
  v3 = [(CAFService *)self car];
  carManager = [v3 carManager];
  config = [carManager config];
  registrations = [config registrations];
  accessory = [(CAFService *)self accessory];
  accessoryIdentifier = [objc_opt_class() accessoryIdentifier];
  serviceIdentifier = [objc_opt_class() serviceIdentifier];
  v10 = [registrations hasAccessory:accessoryIdentifier service:serviceIdentifier control:@"0x000000000F00004E"];

  return v10;
}

@end