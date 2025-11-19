@interface FormatVideoPlayerProvider
- (_TtC8NewsFeed25FormatVideoPlayerProvider)init;
- (id)loadWithCompletionBlock:(id)a3;
- (void)playbackFailedWithError:(id)a3;
- (void)playbackFinished;
- (void)playbackInitiatedWithButtonTapped:(BOOL)a3;
- (void)playbackPaused;
- (void)playbackReadyToStart;
- (void)playbackResumed;
- (void)playbackStarted;
- (void)startedPictureInPicture;
- (void)stoppedPictureInPicture;
@end

@implementation FormatVideoPlayerProvider

- (id)loadWithCompletionBlock:(id)a3
{
  sub_1D5B5472C(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &aBlock[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &aBlock[-1] - v11;
  v13 = _Block_copy(a3);
  v14 = self + OBJC_IVAR____TtC8NewsFeed25FormatVideoPlayerProvider_data;
  v15 = *(type metadata accessor for FormatVideoPlayerData() + 36);
  v16 = sub_1D72585BC();
  v17 = *(v16 - 8);
  (*(v17 + 16))(v12, &v14[v15], v16);
  (*(v17 + 56))(v12, 0, 1, v16);
  sub_1D5EB84C0(v12, v8);
  LODWORD(v15) = (*(v17 + 48))(v8, 1, v16);
  v18 = self;
  v19 = 0;
  if (v15 != 1)
  {
    v19 = sub_1D725844C();
    (*(v17 + 8))(v8, v16);
  }

  v20 = v13[2](v13, v19);

  _Block_release(v13);
  sub_1D5E3E404(v12);
  v21 = OBJC_IVAR____TtC8NewsFeed25FormatVideoPlayerProvider_metadata;
  swift_beginAccess();
  *(&v18->super.isa + v21) = v20;

  swift_unknownObjectRelease();
  aBlock[4] = nullsub_1;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D5B6B06C;
  aBlock[3] = &block_descriptor_38;
  v22 = _Block_copy(aBlock);

  return v22;
}

- (void)playbackInitiatedWithButtonTapped:(BOOL)a3
{
  v3 = self;
  _s8NewsFeed25FormatVideoPlayerProviderC17playbackInitiated16withButtonTappedySb_tF_0();
}

- (void)playbackReadyToStart
{
  v2 = qword_1EDF32A58;
  v7 = self;
  if (v2 != -1)
  {
    swift_once();
  }

  sub_1D5B5472C(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1D7273AE0;
  type metadata accessor for FormatVideoPlayerData();
  v4 = sub_1D72583DC();
  v6 = v5;
  *(v3 + 56) = MEMORY[0x1E69E6158];
  *(v3 + 64) = sub_1D5B7E2C0();
  *(v3 + 32) = v4;
  *(v3 + 40) = v6;
  sub_1D7262EDC();
  sub_1D725C30C();
}

- (void)playbackStarted
{
  v2 = self;
  FormatVideoPlayerProvider.playbackStarted()();
}

- (void)playbackPaused
{
  v2 = self;
  FormatVideoPlayerProvider.playbackPaused()();
}

- (void)playbackResumed
{
  v2 = self;
  FormatVideoPlayerProvider.playbackResumed()();
}

- (void)playbackFinished
{
  v2 = self;
  FormatVideoPlayerProvider.playbackFinished()();
}

- (void)playbackFailedWithError:(id)a3
{
  v4 = self;
  v5 = a3;
  _s8NewsFeed25FormatVideoPlayerProviderC23playbackFailedWithErroryys0J0_pSgF_0();
}

- (void)startedPictureInPicture
{
  v2 = self;
  FormatVideoPlayerProvider.startedPictureInPicture()();
}

- (void)stoppedPictureInPicture
{
  v2 = self;
  FormatVideoPlayerProvider.stoppedPictureInPicture()();
}

- (_TtC8NewsFeed25FormatVideoPlayerProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end