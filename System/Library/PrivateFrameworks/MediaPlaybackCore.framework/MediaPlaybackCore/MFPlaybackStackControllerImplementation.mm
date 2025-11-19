@interface MFPlaybackStackControllerImplementation
- (AVPlayerViewController)videoViewController;
- (BOOL)isModeManagedSession;
- (BOOL)isModeShared;
- (BOOL)isModeSolo;
- (BOOL)isMuted;
- (BOOL)mediaServicesAvailable;
- (BOOL)shouldSkipJumpToItemStart:(int64_t)a3;
- (MFPlaybackStackControllerDelegate)delegate;
- (MFPlaybackStackControllerImplementation)initWithPlayerID:(id)a3 engineID:(id)a4 queueController:(id)a5 assetLoader:(id)a6 errorController:(id)a7 externalPlaybackController:(id)a8 leaseController:(id)a9 defaults:(id)a10 behavior:(int64_t)a11 queue:(id)a12;
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
- (void)activateAudioSessionWithCompletion:(id)a3;
- (void)activeFormatDidChangeFor:(id)a3;
- (void)beginScanningWithDirection:(int64_t)a3 supportsRateChange:(BOOL)a4 identifier:(id)a5 completion:(id)a6;
- (void)clearPlaybackQueue;
- (void)deactivateAudioSessionIfIdle:(int64_t)a3;
- (void)didEndMigrationWith:(id)a3 error:(id)a4;
- (void)prepareToPlayWithIdentifier:(id)a3 isRequestingImmediatePlayback:(BOOL)a4;
- (void)reloadCurrentItemWithReason:(int64_t)a3 completion:(id)a4;
- (void)reloadItemsKeepingCurrentItem:(BOOL)a3 allowReuse:(BOOL)a4;
- (void)resetWithReason:(id)a3;
- (void)restoreQueue:(id)a3;
- (void)setApplicationMusicPlayerTransitionType:(int64_t)a3 duration:(double)a4;
- (void)setDelegate:(id)a3;
- (void)setInhibitSpeechDetection:(BOOL)a3;
- (void)setIsMuted:(BOOL)a3;
- (void)setQueueWithInitialItem:(id)a3 andPlay:(BOOL)a4 identifier:(id)a5 completion:(id)a6;
- (void)setRelativeVolume:(float)a3;
- (void)setSpatializationFormat:(int64_t)a3;
- (void)setupForManagedSessionWithAudioSession:(id)a3;
- (void)setupForShared;
- (void)setupForSolo;
- (void)updateAudioSessionWithConfiguration:(id)a3;
@end

@implementation MFPlaybackStackControllerImplementation

- (id)currentQueueItem
{
  v0 = sub_1C5C83DA0();

  return v0;
}

- (void)setSpatializationFormat:(int64_t)a3
{
  v4 = self;
  sub_1C5C8D678(a3);
}

- (MFPlaybackStackControllerDelegate)delegate
{
  v2 = sub_1C5DCB178();

  return v2;
}

- (void)setDelegate:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_1C5DCB214();
}

- (BOOL)mediaServicesAvailable
{
  v2 = self;
  v3 = sub_1C5DCB40C();

  return v3 & 1;
}

- (MFPlaybackStackControllerImplementation)initWithPlayerID:(id)a3 engineID:(id)a4 queueController:(id)a5 assetLoader:(id)a6 errorController:(id)a7 externalPlaybackController:(id)a8 leaseController:(id)a9 defaults:(id)a10 behavior:(int64_t)a11 queue:(id)a12
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
  return MFPlaybackStackControllerImplementation.init(playerID:engineID:queueController:assetLoader:errorController:externalPlaybackController:leaseController:defaults:behavior:queue:)(v22, v17, v18, v20, a5, a6, a7, a8, a9, a10, a11, a12);
}

- (int64_t)currentState
{
  v2 = self;
  v3 = sub_1C5DCBB68();

  return v3;
}

- (int64_t)interruptedState
{
  v2 = self;
  v3 = sub_1C5DCBBDC();

  return v3;
}

- (double)currentTime
{
  v2 = self;
  sub_1C5DCBCC4();
  v4 = v3;

  return v4;
}

- (float)rate
{
  v2 = self;
  sub_1C5DCBD2C();
  v4 = v3;

  return v4;
}

- (float)effectiveRate
{
  v2 = self;
  sub_1C5DCBD94();
  v4 = v3;

  return v4;
}

- (float)targetRate
{
  v2 = self;
  sub_1C5DCBDFC();
  v4 = v3;

  return v4;
}

- (NSNumber)targetTime
{
  v2 = self;
  v3 = sub_1C5DCBE6C();

  return v3;
}

- (NSArray)nextItems
{
  v2 = self;
  sub_1C5DCBF40();

  sub_1C5D2AA10(0, qword_1ED7DF160);
  v3 = sub_1C6016AF0();

  return v3;
}

- (void)restoreQueue:(id)a3
{
  v4 = _Block_copy(a3);
  _Block_copy(v4);
  v5 = self;
  sub_1C5DCBF6C(v5, v4);
  _Block_release(v4);
}

- (void)reloadItemsKeepingCurrentItem:(BOOL)a3 allowReuse:(BOOL)a4
{
  v5 = self;
  sub_1C5DCC094(a3);
}

- (void)clearPlaybackQueue
{
  v2 = self;
  sub_1C5DCC11C();
}

- (void)reloadCurrentItemWithReason:(int64_t)a3 completion:(id)a4
{
  v5 = _Block_copy(a4);
  if (v5)
  {
    *(swift_allocObject() + 16) = v5;
    v5 = sub_1C5CD4510;
  }

  v6 = self;
  sub_1C5DCC190();
  sub_1C5C74C18(v5);
}

- (void)resetWithReason:(id)a3
{
  v5 = a3;
  v4 = self;
  sub_1C5DCC340();
}

- (void)prepareToPlayWithIdentifier:(id)a3 isRequestingImmediatePlayback:(BOOL)a4
{
  v5 = a3;
  v6 = self;
  sub_1C5DCC480();
}

- (void)setQueueWithInitialItem:(id)a3 andPlay:(BOOL)a4 identifier:(id)a5 completion:(id)a6
{
  v7 = a4;
  v10 = _Block_copy(a6);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  swift_unknownObjectRetain();
  v12 = a5;
  v13 = self;
  sub_1C5DCC54C(a3, v7, v12, sub_1C5DD410C, v11);
  swift_unknownObjectRelease();
}

- (void)beginScanningWithDirection:(int64_t)a3 supportsRateChange:(BOOL)a4 identifier:(id)a5 completion:(id)a6
{
  v7 = a4;
  v10 = _Block_copy(a6);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  v12 = a5;
  v13 = self;
  sub_1C5DCD198(a3, v7, v12, sub_1C5DD410C, v11);
}

- (BOOL)shouldSkipJumpToItemStart:(int64_t)a3
{
  v4 = self;
  LOBYTE(a3) = sub_1C5DCD75C(a3);

  return a3 & 1;
}

- (void)activeFormatDidChangeFor:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_1C5DCD7C8();
  swift_unknownObjectRelease();
}

- (void)didEndMigrationWith:(id)a3 error:(id)a4
{
  sub_1C6016940();
  v6 = self;
  v7 = a4;
  sub_1C5DCD90C();
}

- (AVPlayerViewController)videoViewController
{
  v2 = sub_1C5DCD9F0();

  return v2;
}

- (int64_t)timeControlStatus
{
  v2 = self;
  v3 = sub_1C5DCDA50();

  return v3;
}

- (NSDictionary)stateDictionary
{
  v2 = self;
  sub_1C5DCDAF0();

  v3 = sub_1C6016840();

  return v3;
}

- (int64_t)renderingMode
{
  v2 = self;
  v3 = sub_1C5DCDD98();

  return v3;
}

- (void)updateAudioSessionWithConfiguration:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1C5DCDDB0(v4);
}

- (void)activateAudioSessionWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = self;
  sub_1C5DCDE34(sub_1C5DD401C, v5);
}

- (void)deactivateAudioSessionIfIdle:(int64_t)a3
{
  v4 = self;
  sub_1C5DCDFF8(a3);
}

- (void)setInhibitSpeechDetection:(BOOL)a3
{
  v3 = self;
  sub_1C5DCE068();
}

- (NSString)modeDescription
{
  v2 = self;
  sub_1C5DCE140();

  v3 = sub_1C6016900();

  return v3;
}

- (BOOL)isModeSolo
{
  v2 = self;
  v3 = sub_1C5DCE1D4();

  return v3 & 1;
}

- (BOOL)isModeShared
{
  v2 = self;
  v3 = sub_1C5DCE234();

  return v3 & 1;
}

- (BOOL)isModeManagedSession
{
  v2 = self;
  v3 = sub_1C5DCE294();

  return v3 & 1;
}

- (void)setupForSolo
{
  v2 = self;
  sub_1C5DCE2C0();
}

- (void)setupForShared
{
  v2 = self;
  sub_1C5DCE320();
}

- (void)setupForManagedSessionWithAudioSession:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1C5DCE380(v4);
}

- (float)relativeVolume
{
  v2 = self;
  sub_1C5DCE440();
  v4 = v3;

  return v4;
}

- (void)setRelativeVolume:(float)a3
{
  v3 = self;
  sub_1C5DCE4B0();
}

- (BOOL)isMuted
{
  v2 = self;
  v3 = sub_1C5DCE570();

  return v3 & 1;
}

- (void)setIsMuted:(BOOL)a3
{
  v3 = self;
  sub_1C5DCE5F0();
}

- (void)setApplicationMusicPlayerTransitionType:(int64_t)a3 duration:(double)a4
{
  v5 = self;
  sub_1C5DCE67C(a3);
}

@end