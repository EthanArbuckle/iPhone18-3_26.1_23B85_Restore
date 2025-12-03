@interface _MPCPodcastAVItem
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)duration;
- (BOOL)isAssetLoaded;
- (BOOL)isEnhanceDialogueActive;
- (BOOL)isExplicitTrack;
- (BOOL)isHLSAsset;
- (BOOL)supportsEnhanceDialogue;
- (BOOL)usesBookmarking;
- (MPCAudioAssetTypeSelection)preferredAudioAssetTypeSelection;
- (MPModelGenericObject)modelGenericObject;
- (NSArray)musicSubscriptionInformation;
- (NSDate)releaseDate;
- (_MPCPodcastAVItem)initWithGenericObject:(id)object itemProperties:(id)properties playbackRequestEnvironment:(id)environment identityPropertySet:(id)set;
- (double)durationFromExternalMetadata;
- (id)artworkCatalogBlock;
- (id)preferredAudioTimePitchAlgorithm;
- (int64_t)preferredAudioAssetType;
- (int64_t)storeItemInt64ID;
- (uint64_t)storeSubscriptionAdamID;
- (unint64_t)mediaType;
- (void)_clearAssetNow;
- (void)_willBecomeActivePlayerItem;
- (void)_willResignActivePlayerItem;
- (void)loadAssetAndPlayerItemWithTask:(MPAVItemAssetTask *)task completion:(id)completion;
- (void)pauseContentKeySession;
- (void)pod_updateDurationSnapshotWithElapsedTime:(double)time playbackRate:(float)rate playbackState:(int64_t)state;
- (void)resolvePlaybackError:(NSError *)error withCompletion:(id)completion;
- (void)resumeContentKeySession;
- (void)setEnhanceDialogueActive:(BOOL)active error:(id *)error;
@end

@implementation _MPCPodcastAVItem

- (uint64_t)storeSubscriptionAdamID
{
  selfCopy = self;
  v2 = sub_1C5CEFC60();

  return v2;
}

- (BOOL)supportsEnhanceDialogue
{
  selfCopy = self;
  v3 = sub_1C5CD71B4();

  return v3 & 1;
}

- (BOOL)isEnhanceDialogueActive
{
  selfCopy = self;
  v3 = sub_1C5CD72A0();

  return v3 & 1;
}

- (void)setEnhanceDialogueActive:(BOOL)active error:(id *)error
{
  selfCopy = self;
  sub_1C5CD7310();
}

- (BOOL)isExplicitTrack
{
  selfCopy = self;
  v3 = sub_1C5CF00C0();

  return v3 & 1;
}

- (id)artworkCatalogBlock
{
  sub_1C5CEF14C();
  v5[4] = sub_1C5CFB36C;
  v5[5] = v2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 1107296256;
  v5[2] = sub_1C5CEF2D0;
  v5[3] = &block_descriptor_117;
  v3 = _Block_copy(v5);

  return v3;
}

- (unint64_t)mediaType
{
  selfCopy = self;
  sub_1C5CEF4A4();
  v4 = v3;

  return v4;
}

- (int64_t)storeItemInt64ID
{
  selfCopy = self;
  v3 = sub_1C5CEFC60();

  return v3;
}

- (NSDate)releaseDate
{
  sub_1C5C67E04(0, &qword_1EC1A91D0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v10 - v4;
  selfCopy = self;
  sub_1C5CEFFD0();

  v7 = sub_1C6015020();
  v8 = 0;
  if (__swift_getEnumTagSinglePayload(v5, 1, v7) != 1)
  {
    v8 = sub_1C6014FB0();
    (*(*(v7 - 8) + 8))(v5, v7);
  }

  return v8;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)duration
{
  selfCopy = self;
  v5 = sub_1C5CF0338();
  v7 = v6;
  v9 = v8;

  retstr->var0 = v5;
  *&retstr->var1 = v7;
  retstr->var3 = v9;
  return result;
}

- (BOOL)usesBookmarking
{
  selfCopy = self;
  v3 = sub_1C5CF04B0();

  return v3;
}

- (BOOL)isHLSAsset
{
  selfCopy = self;
  v3 = sub_1C5CF0544();

  return v3 & 1;
}

- (MPCAudioAssetTypeSelection)preferredAudioAssetTypeSelection
{
  selfCopy = self;
  v3 = sub_1C5CF08CC();

  return v3;
}

- (int64_t)preferredAudioAssetType
{
  selfCopy = self;
  v3 = sub_1C5CF095C();

  return v3;
}

- (NSArray)musicSubscriptionInformation
{
  selfCopy = self;
  v3 = sub_1C5CF0A30();

  if (v3)
  {
    sub_1C5CFB374(0, &qword_1EC1A9490);
    v4 = sub_1C6016AF0();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (MPModelGenericObject)modelGenericObject
{
  selfCopy = self;
  v3 = sub_1C5CF0B50();

  return v3;
}

- (double)durationFromExternalMetadata
{
  selfCopy = self;
  v3 = sub_1C5CF2058();

  return v3;
}

- (BOOL)isAssetLoaded
{
  selfCopy = self;
  v3 = sub_1C5CF2170();

  return v3 & 1;
}

- (void)_clearAssetNow
{
  selfCopy = self;
  sub_1C5CF21C0();
}

- (void)loadAssetAndPlayerItemWithTask:(MPAVItemAssetTask *)task completion:(id)completion
{
  v6 = _Block_copy(completion);
  v7 = swift_allocObject();
  v7[2] = task;
  v7[3] = v6;
  v7[4] = self;
  swift_unknownObjectRetain();
  selfCopy = self;

  sub_1C5E3A9D0(&unk_1C60366B8, v7);
}

- (void)_willBecomeActivePlayerItem
{
  selfCopy = self;
  sub_1C5CF28CC();
}

- (void)_willResignActivePlayerItem
{
  selfCopy = self;
  sub_1C5CF41D8();
}

- (void)pauseContentKeySession
{
  selfCopy = self;
  sub_1C5CF4298();
}

- (void)resumeContentKeySession
{
  selfCopy = self;
  sub_1C5CF4520();
}

- (void)pod_updateDurationSnapshotWithElapsedTime:(double)time playbackRate:(float)rate playbackState:(int64_t)state
{
  selfCopy = self;
  sub_1C5CF48A4(state, time, rate);
}

- (id)preferredAudioTimePitchAlgorithm
{
  v2 = sub_1C5CF4AE0();

  return v2;
}

- (_MPCPodcastAVItem)initWithGenericObject:(id)object itemProperties:(id)properties playbackRequestEnvironment:(id)environment identityPropertySet:(id)set
{
  objectCopy = object;
  propertiesCopy = properties;
  environmentCopy = environment;
  setCopy = set;
  sub_1C5CF6A84();
}

- (void)resolvePlaybackError:(NSError *)error withCompletion:(id)completion
{
  v6 = _Block_copy(completion);
  v7 = swift_allocObject();
  v7[2] = error;
  v7[3] = v6;
  v7[4] = self;
  errorCopy = error;
  selfCopy = self;

  sub_1C5E3A9D0(&unk_1C60366F8, v7);
}

@end