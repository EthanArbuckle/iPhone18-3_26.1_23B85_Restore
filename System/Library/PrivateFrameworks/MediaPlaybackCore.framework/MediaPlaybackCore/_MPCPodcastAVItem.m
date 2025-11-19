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
- (_MPCPodcastAVItem)initWithGenericObject:(id)a3 itemProperties:(id)a4 playbackRequestEnvironment:(id)a5 identityPropertySet:(id)a6;
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
- (void)loadAssetAndPlayerItemWithTask:(MPAVItemAssetTask *)a3 completion:(id)a4;
- (void)pauseContentKeySession;
- (void)pod_updateDurationSnapshotWithElapsedTime:(double)a3 playbackRate:(float)a4 playbackState:(int64_t)a5;
- (void)resolvePlaybackError:(NSError *)a3 withCompletion:(id)a4;
- (void)resumeContentKeySession;
- (void)setEnhanceDialogueActive:(BOOL)a3 error:(id *)a4;
@end

@implementation _MPCPodcastAVItem

- (uint64_t)storeSubscriptionAdamID
{
  v1 = a1;
  v2 = sub_1C5CEFC60();

  return v2;
}

- (BOOL)supportsEnhanceDialogue
{
  v2 = self;
  v3 = sub_1C5CD71B4();

  return v3 & 1;
}

- (BOOL)isEnhanceDialogueActive
{
  v2 = self;
  v3 = sub_1C5CD72A0();

  return v3 & 1;
}

- (void)setEnhanceDialogueActive:(BOOL)a3 error:(id *)a4
{
  v4 = self;
  sub_1C5CD7310();
}

- (BOOL)isExplicitTrack
{
  v2 = self;
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
  v2 = self;
  sub_1C5CEF4A4();
  v4 = v3;

  return v4;
}

- (int64_t)storeItemInt64ID
{
  v2 = self;
  v3 = sub_1C5CEFC60();

  return v3;
}

- (NSDate)releaseDate
{
  sub_1C5C67E04(0, &qword_1EC1A91D0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v10 - v4;
  v6 = self;
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
  v4 = self;
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
  v2 = self;
  v3 = sub_1C5CF04B0();

  return v3;
}

- (BOOL)isHLSAsset
{
  v2 = self;
  v3 = sub_1C5CF0544();

  return v3 & 1;
}

- (MPCAudioAssetTypeSelection)preferredAudioAssetTypeSelection
{
  v2 = self;
  v3 = sub_1C5CF08CC();

  return v3;
}

- (int64_t)preferredAudioAssetType
{
  v2 = self;
  v3 = sub_1C5CF095C();

  return v3;
}

- (NSArray)musicSubscriptionInformation
{
  v2 = self;
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
  v2 = self;
  v3 = sub_1C5CF0B50();

  return v3;
}

- (double)durationFromExternalMetadata
{
  v2 = self;
  v3 = sub_1C5CF2058();

  return v3;
}

- (BOOL)isAssetLoaded
{
  v2 = self;
  v3 = sub_1C5CF2170();

  return v3 & 1;
}

- (void)_clearAssetNow
{
  v2 = self;
  sub_1C5CF21C0();
}

- (void)loadAssetAndPlayerItemWithTask:(MPAVItemAssetTask *)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = v6;
  v7[4] = self;
  swift_unknownObjectRetain();
  v8 = self;

  sub_1C5E3A9D0(&unk_1C60366B8, v7);
}

- (void)_willBecomeActivePlayerItem
{
  v2 = self;
  sub_1C5CF28CC();
}

- (void)_willResignActivePlayerItem
{
  v2 = self;
  sub_1C5CF41D8();
}

- (void)pauseContentKeySession
{
  v2 = self;
  sub_1C5CF4298();
}

- (void)resumeContentKeySession
{
  v2 = self;
  sub_1C5CF4520();
}

- (void)pod_updateDurationSnapshotWithElapsedTime:(double)a3 playbackRate:(float)a4 playbackState:(int64_t)a5
{
  v8 = self;
  sub_1C5CF48A4(a5, a3, a4);
}

- (id)preferredAudioTimePitchAlgorithm
{
  v2 = sub_1C5CF4AE0();

  return v2;
}

- (_MPCPodcastAVItem)initWithGenericObject:(id)a3 itemProperties:(id)a4 playbackRequestEnvironment:(id)a5 identityPropertySet:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  sub_1C5CF6A84();
}

- (void)resolvePlaybackError:(NSError *)a3 withCompletion:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = v6;
  v7[4] = self;
  v8 = a3;
  v9 = self;

  sub_1C5E3A9D0(&unk_1C60366F8, v7);
}

@end