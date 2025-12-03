@interface MFPlaybackStackControllerImplementation
- (AVPlayerViewController)videoViewController;
- (BOOL)isModeManagedSession;
- (BOOL)isModeShared;
- (BOOL)isModeSolo;
- (BOOL)isMuted;
- (BOOL)mediaServicesAvailable;
- (BOOL)shouldSkipJumpToItemStart:(int64_t)start;
- (MFPlaybackStackControllerDelegate)delegate;
- (MFPlaybackStackControllerImplementation)initWithPlayerID:(id)d engineID:(id)iD queueController:(id)controller assetLoader:(id)loader errorController:(id)errorController externalPlaybackController:(id)playbackController leaseController:(id)leaseController defaults:(id)self0 behavior:(int64_t)self1 queue:(id)self2;
- (NSArray)nextItems;
- (NSDictionary)stateDictionary;
- (NSNumber)targetTime;
- (NSString)modeDescription;
- (double)currentTime;
- (float)effectiveRate;
- (float)rate;
- (float)relativeVolume;
- (float)targetRate;
- (id)currentQueueItem;
- (int64_t)currentState;
- (int64_t)interruptedState;
- (int64_t)renderingMode;
- (int64_t)timeControlStatus;
- (void)activateAudioSessionWithCompletion:(id)completion;
- (void)activeFormatDidChangeFor:(id)for;
- (void)beginScanningWithDirection:(int64_t)direction supportsRateChange:(BOOL)change identifier:(id)identifier completion:(id)completion;
- (void)clearPlaybackQueue;
- (void)deactivateAudioSessionIfIdle:(int64_t)idle;
- (void)didEndMigrationWith:(id)with error:(id)error;
- (void)prepareToPlayWithIdentifier:(id)identifier isRequestingImmediatePlayback:(BOOL)playback;
- (void)reloadCurrentItemWithReason:(int64_t)reason completion:(id)completion;
- (void)reloadItemsKeepingCurrentItem:(BOOL)item allowReuse:(BOOL)reuse;
- (void)resetWithReason:(id)reason;
- (void)restoreQueue:(id)queue;
- (void)setApplicationMusicPlayerTransitionType:(int64_t)type duration:(double)duration;
- (void)setDelegate:(id)delegate;
- (void)setInhibitSpeechDetection:(BOOL)detection;
- (void)setIsMuted:(BOOL)muted;
- (void)setQueueWithInitialItem:(id)item andPlay:(BOOL)play identifier:(id)identifier completion:(id)completion;
- (void)setRelativeVolume:(float)volume;
- (void)setSpatializationFormat:(int64_t)format;
- (void)setupForManagedSessionWithAudioSession:(id)session;
- (void)setupForShared;
- (void)setupForSolo;
- (void)updateAudioSessionWithConfiguration:(id)configuration;
@end

@implementation MFPlaybackStackControllerImplementation

- (id)currentQueueItem
{
  v0 = sub_1C5C83DA0();

  return v0;
}

- (void)setSpatializationFormat:(int64_t)format
{
  selfCopy = self;
  sub_1C5C8D678(format);
}

- (MFPlaybackStackControllerDelegate)delegate
{
  v2 = sub_1C5DCB178();

  return v2;
}

- (void)setDelegate:(id)delegate
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1C5DCB214();
}

- (BOOL)mediaServicesAvailable
{
  selfCopy = self;
  v3 = sub_1C5DCB40C();

  return v3 & 1;
}

- (MFPlaybackStackControllerImplementation)initWithPlayerID:(id)d engineID:(id)iD queueController:(id)controller assetLoader:(id)loader errorController:(id)errorController externalPlaybackController:(id)playbackController leaseController:(id)leaseController defaults:(id)self0 behavior:(int64_t)self1 queue:(id)self2
{
  v22 = sub_1C6016940();
  v17 = v16;
  v18 = sub_1C6016940();
  v20 = v19;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  return MFPlaybackStackControllerImplementation.init(playerID:engineID:queueController:assetLoader:errorController:externalPlaybackController:leaseController:defaults:behavior:queue:)(v22, v17, v18, v20, controller, loader, errorController, playbackController, leaseController, defaults, behavior, queue);
}

- (int64_t)currentState
{
  selfCopy = self;
  v3 = sub_1C5DCBB68();

  return v3;
}

- (int64_t)interruptedState
{
  selfCopy = self;
  v3 = sub_1C5DCBBDC();

  return v3;
}

- (double)currentTime
{
  selfCopy = self;
  sub_1C5DCBCC4();
  v4 = v3;

  return v4;
}

- (float)rate
{
  selfCopy = self;
  sub_1C5DCBD2C();
  v4 = v3;

  return v4;
}

- (float)effectiveRate
{
  selfCopy = self;
  sub_1C5DCBD94();
  v4 = v3;

  return v4;
}

- (float)targetRate
{
  selfCopy = self;
  sub_1C5DCBDFC();
  v4 = v3;

  return v4;
}

- (NSNumber)targetTime
{
  selfCopy = self;
  v3 = sub_1C5DCBE6C();

  return v3;
}

- (NSArray)nextItems
{
  selfCopy = self;
  sub_1C5DCBF40();

  sub_1C5D2AA10(0, qword_1ED7DF160);
  v3 = sub_1C6016AF0();

  return v3;
}

- (void)restoreQueue:(id)queue
{
  v4 = _Block_copy(queue);
  _Block_copy(v4);
  selfCopy = self;
  sub_1C5DCBF6C(selfCopy, v4);
  _Block_release(v4);
}

- (void)reloadItemsKeepingCurrentItem:(BOOL)item allowReuse:(BOOL)reuse
{
  selfCopy = self;
  sub_1C5DCC094(item);
}

- (void)clearPlaybackQueue
{
  selfCopy = self;
  sub_1C5DCC11C();
}

- (void)reloadCurrentItemWithReason:(int64_t)reason completion:(id)completion
{
  v5 = _Block_copy(completion);
  if (v5)
  {
    *(swift_allocObject() + 16) = v5;
    v5 = sub_1C5CD4510;
  }

  selfCopy = self;
  sub_1C5DCC190();
  sub_1C5C74C18(v5);
}

- (void)resetWithReason:(id)reason
{
  reasonCopy = reason;
  selfCopy = self;
  sub_1C5DCC340();
}

- (void)prepareToPlayWithIdentifier:(id)identifier isRequestingImmediatePlayback:(BOOL)playback
{
  identifierCopy = identifier;
  selfCopy = self;
  sub_1C5DCC480();
}

- (void)setQueueWithInitialItem:(id)item andPlay:(BOOL)play identifier:(id)identifier completion:(id)completion
{
  playCopy = play;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  swift_unknownObjectRetain();
  identifierCopy = identifier;
  selfCopy = self;
  sub_1C5DCC54C(item, playCopy, identifierCopy, sub_1C5DD410C, v11);
  swift_unknownObjectRelease();
}

- (void)beginScanningWithDirection:(int64_t)direction supportsRateChange:(BOOL)change identifier:(id)identifier completion:(id)completion
{
  changeCopy = change;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  identifierCopy = identifier;
  selfCopy = self;
  sub_1C5DCD198(direction, changeCopy, identifierCopy, sub_1C5DD410C, v11);
}

- (BOOL)shouldSkipJumpToItemStart:(int64_t)start
{
  selfCopy = self;
  LOBYTE(start) = sub_1C5DCD75C(start);

  return start & 1;
}

- (void)activeFormatDidChangeFor:(id)for
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1C5DCD7C8();
  swift_unknownObjectRelease();
}

- (void)didEndMigrationWith:(id)with error:(id)error
{
  sub_1C6016940();
  selfCopy = self;
  errorCopy = error;
  sub_1C5DCD90C();
}

- (AVPlayerViewController)videoViewController
{
  v2 = sub_1C5DCD9F0();

  return v2;
}

- (int64_t)timeControlStatus
{
  selfCopy = self;
  v3 = sub_1C5DCDA50();

  return v3;
}

- (NSDictionary)stateDictionary
{
  selfCopy = self;
  sub_1C5DCDAF0();

  v3 = sub_1C6016840();

  return v3;
}

- (int64_t)renderingMode
{
  selfCopy = self;
  v3 = sub_1C5DCDD98();

  return v3;
}

- (void)updateAudioSessionWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  selfCopy = self;
  sub_1C5DCDDB0(configurationCopy);
}

- (void)activateAudioSessionWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  sub_1C5DCDE34(sub_1C5DD401C, v5);
}

- (void)deactivateAudioSessionIfIdle:(int64_t)idle
{
  selfCopy = self;
  sub_1C5DCDFF8(idle);
}

- (void)setInhibitSpeechDetection:(BOOL)detection
{
  selfCopy = self;
  sub_1C5DCE068();
}

- (NSString)modeDescription
{
  selfCopy = self;
  sub_1C5DCE140();

  v3 = sub_1C6016900();

  return v3;
}

- (BOOL)isModeSolo
{
  selfCopy = self;
  v3 = sub_1C5DCE1D4();

  return v3 & 1;
}

- (BOOL)isModeShared
{
  selfCopy = self;
  v3 = sub_1C5DCE234();

  return v3 & 1;
}

- (BOOL)isModeManagedSession
{
  selfCopy = self;
  v3 = sub_1C5DCE294();

  return v3 & 1;
}

- (void)setupForSolo
{
  selfCopy = self;
  sub_1C5DCE2C0();
}

- (void)setupForShared
{
  selfCopy = self;
  sub_1C5DCE320();
}

- (void)setupForManagedSessionWithAudioSession:(id)session
{
  sessionCopy = session;
  selfCopy = self;
  sub_1C5DCE380(sessionCopy);
}

- (float)relativeVolume
{
  selfCopy = self;
  sub_1C5DCE440();
  v4 = v3;

  return v4;
}

- (void)setRelativeVolume:(float)volume
{
  selfCopy = self;
  sub_1C5DCE4B0();
}

- (BOOL)isMuted
{
  selfCopy = self;
  v3 = sub_1C5DCE570();

  return v3 & 1;
}

- (void)setIsMuted:(BOOL)muted
{
  selfCopy = self;
  sub_1C5DCE5F0();
}

- (void)setApplicationMusicPlayerTransitionType:(int64_t)type duration:(double)duration
{
  selfCopy = self;
  sub_1C5DCE67C(type);
}

@end