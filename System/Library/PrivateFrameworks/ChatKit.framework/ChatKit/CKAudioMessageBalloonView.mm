@interface CKAudioMessageBalloonView
- (BOOL)isPlayed;
- (BOOL)isPlaying;
- (BOOL)serviceIsRCS;
- (BOOL)serviceIsSMS;
- (CGSize)sizeThatFits:(CGSize)a3 textAlignmentInsets:(UIEdgeInsets *)a4 tailInsets:(UIEdgeInsets *)a5;
- (CKAudioMediaObject)mediaObject;
- (CKBalloonDescriptor_t)balloonDescriptorForSnapshotRenderingUsingTraitCollection:(SEL)a3;
- (_TtC7ChatKit20AudioMessageWaveform)waveformView;
- (double)duration;
- (double)initialTimeBeforePan;
- (double)time;
- (id)nonVibrantSubViews;
- (id)playPauseButtonColorFor:(char)a3;
- (id)playPauseButtonConfiguration;
- (id)playbackSpeedMenu;
- (id)speedLabelColorFor:(char)a3 idiom:(int64_t)a4;
- (id)transcriptionButtonColorWithIsFromMe:(BOOL)a3 idiom:(int64_t)a4;
- (id)transcriptionLabelColorFor:(char)a3 idiom:(uint64_t)a4;
- (id)waveformColorWithIsFromMe:(BOOL)a3 isPlayed:(BOOL)a4 idiom:(int64_t)a5;
- (int64_t)waveformContentMode;
- (void)configureForComposition:(id)a3;
- (void)configureForMediaObject:(id)a3 previewWidth:(double)a4 orientation:(char)a5;
- (void)configureForMessagePart:(id)a3;
- (void)insertHighlightOverlayLayer:(id)a3;
- (void)layoutSubviews;
- (void)prepareForDisplay;
- (void)setInitialTimeBeforePan:(double)a3;
- (void)setMediaObject:(id)a3;
- (void)setPlaybackSpeed:(double)a3;
- (void)setPlayed:(BOOL)a3;
- (void)setPlaying:(BOOL)a3;
- (void)setServiceIsRCS:(BOOL)a3;
- (void)setServiceIsSMS:(BOOL)a3;
- (void)setWaveformContentMode:(int64_t)a3;
- (void)setWaveformView:(id)a3;
- (void)tapGestureRecognized:(id)a3;
- (void)vibrantContainerWillReparentNonVibrantSubviews:(id)a3;
- (void)waveformProgressViewPanning:(id)a3;
@end

@implementation CKAudioMessageBalloonView

- (id)transcriptionLabelColorFor:(char)a3 idiom:(uint64_t)a4
{
  v4 = sub_19083145C(a3, a4);

  return v4;
}

- (id)waveformColorWithIsFromMe:(BOOL)a3 isPlayed:(BOOL)a4 idiom:(int64_t)a5
{
  v8 = self;
  sub_190830DCC(a3, a4, a5);
  v10 = v9;

  return v10;
}

- (id)transcriptionButtonColorWithIsFromMe:(BOOL)a3 idiom:(int64_t)a4
{
  v4 = sub_1908313E8(a3, a4);

  return v4;
}

- (id)playPauseButtonColorFor:(char)a3
{
  v4 = self;
  sub_19083100C(a3);
  v6 = v5;

  return v6;
}

- (id)speedLabelColorFor:(char)a3 idiom:(int64_t)a4
{
  v6 = self;
  sub_1908311E4(a3, a4);
  v8 = v7;

  return v8;
}

- (id)playbackSpeedMenu
{
  v2 = self;
  v3 = sub_190B4CC48();

  return v3;
}

- (void)waveformProgressViewPanning:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_190B4D324(v4);
}

- (CKAudioMediaObject)mediaObject
{
  v3 = OBJC_IVAR____TtC7ChatKit25CKAudioMessageBalloonView_mediaObject;
  swift_beginAccess();
  return *(&self->super.super.super.super.super.super.isa + v3);
}

- (void)setMediaObject:(id)a3
{
  v5 = OBJC_IVAR____TtC7ChatKit25CKAudioMessageBalloonView_mediaObject;
  swift_beginAccess();
  v6 = *(&self->super.super.super.super.super.super.isa + v5);
  *(&self->super.super.super.super.super.super.isa + v5) = a3;
  v7 = a3;
  v8 = self;

  if (v7)
  {
    v9 = v7;
    v10 = sub_190BE94C4();

    v8 = *&v10[OBJC_IVAR____TtC7ChatKit20AudioMessageWaveform_audioMediaObject];
    *&v10[OBJC_IVAR____TtC7ChatKit20AudioMessageWaveform_audioMediaObject] = a3;
  }
}

- (_TtC7ChatKit20AudioMessageWaveform)waveformView
{
  v2 = self;
  v3 = sub_190BE94C4();

  return v3;
}

- (void)setWaveformView:(id)a3
{
  v4 = *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC7ChatKit25CKAudioMessageBalloonView____lazy_storage___waveformView);
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC7ChatKit25CKAudioMessageBalloonView____lazy_storage___waveformView) = a3;
  v3 = a3;
}

- (id)playPauseButtonConfiguration
{
  v2 = sub_190D57FB0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_190D57F70();
  v6 = [objc_opt_self() configurationWithTextStyle:*MEMORY[0x1E69DDDC0] scale:3];
  sub_190D57DD0();
  v7 = sub_190D57ED0();
  (*(v3 + 8))(v5, v2);

  return v7;
}

- (void)setPlaybackSpeed:(double)a3
{
  v4 = self;
  sub_190BEA0BC(a3);
}

- (int64_t)waveformContentMode
{
  v3 = OBJC_IVAR____TtC7ChatKit25CKAudioMessageBalloonView_waveformContentMode;
  swift_beginAccess();
  return *(&self->super.super.super.super.super.super.isa + v3);
}

- (void)setWaveformContentMode:(int64_t)a3
{
  v5 = OBJC_IVAR____TtC7ChatKit25CKAudioMessageBalloonView_waveformContentMode;
  swift_beginAccess();
  *(&self->super.super.super.super.super.super.isa + v5) = a3;
}

- (double)time
{
  v3 = OBJC_IVAR____TtC7ChatKit25CKAudioMessageBalloonView_time;
  swift_beginAccess();
  return *(&self->super.super.super.super.super.super.isa + v3);
}

- (double)initialTimeBeforePan
{
  v3 = OBJC_IVAR____TtC7ChatKit25CKAudioMessageBalloonView_initialTimeBeforePan;
  swift_beginAccess();
  return *(&self->super.super.super.super.super.super.isa + v3);
}

- (void)setInitialTimeBeforePan:(double)a3
{
  v5 = OBJC_IVAR____TtC7ChatKit25CKAudioMessageBalloonView_initialTimeBeforePan;
  swift_beginAccess();
  *(&self->super.super.super.super.super.super.isa + v5) = a3;
}

- (double)duration
{
  v3 = OBJC_IVAR____TtC7ChatKit25CKAudioMessageBalloonView_duration;
  swift_beginAccess();
  return *(&self->super.super.super.super.super.super.isa + v3);
}

- (BOOL)isPlaying
{
  v3 = OBJC_IVAR____TtC7ChatKit25CKAudioMessageBalloonView_isPlaying;
  swift_beginAccess();
  return *(&self->super.super.super.super.super.super.isa + v3);
}

- (void)setPlaying:(BOOL)a3
{
  v5 = OBJC_IVAR____TtC7ChatKit25CKAudioMessageBalloonView_isPlaying;
  swift_beginAccess();
  v6 = *(&self->super.super.super.super.super.super.isa + v5);
  *(&self->super.super.super.super.super.super.isa + v5) = a3;
  v7 = self;
  sub_190BEAEFC(v6);
}

- (BOOL)isPlayed
{
  v3 = OBJC_IVAR____TtC7ChatKit25CKAudioMessageBalloonView_isPlayed;
  swift_beginAccess();
  return *(&self->super.super.super.super.super.super.isa + v3);
}

- (void)setPlayed:(BOOL)a3
{
  v4 = self;
  sub_190BEB318(a3);
}

- (BOOL)serviceIsSMS
{
  v3 = OBJC_IVAR____TtC7ChatKit25CKAudioMessageBalloonView_serviceIsSMS;
  swift_beginAccess();
  return *(&self->super.super.super.super.super.super.isa + v3);
}

- (void)setServiceIsSMS:(BOOL)a3
{
  v5 = OBJC_IVAR____TtC7ChatKit25CKAudioMessageBalloonView_serviceIsSMS;
  swift_beginAccess();
  *(&self->super.super.super.super.super.super.isa + v5) = a3;
}

- (BOOL)serviceIsRCS
{
  v3 = OBJC_IVAR____TtC7ChatKit25CKAudioMessageBalloonView_serviceIsRCS;
  swift_beginAccess();
  return *(&self->super.super.super.super.super.super.isa + v3);
}

- (void)setServiceIsRCS:(BOOL)a3
{
  v5 = OBJC_IVAR____TtC7ChatKit25CKAudioMessageBalloonView_serviceIsRCS;
  swift_beginAccess();
  *(&self->super.super.super.super.super.super.isa + v5) = a3;
}

- (void)insertHighlightOverlayLayer:(id)a3
{
  v4 = a3;
  v8 = self;
  v5 = [(CKAudioMessageBalloonView *)v8 layer];
  v6 = sub_190BE9EA4();
  v7 = [v6 layer];

  [v5 insertSublayer:v4 below:v7];
}

- (void)prepareForDisplay
{
  v2 = self;
  sub_190BEBDCC();
}

- (void)vibrantContainerWillReparentNonVibrantSubviews:(id)a3
{
  if (!a3)
  {
    goto LABEL_15;
  }

  sub_1902188FC(0, &qword_1EAD46530);
  v3 = sub_190D57180();
  v4 = v3;
  if (v3 >> 62)
  {
    v5 = sub_190D581C0();
    if (v5)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_4:
      if (v5 >= 1)
      {
        for (i = 0; i != v5; ++i)
        {
          if ((v4 & 0xC000000000000001) != 0)
          {
            v7 = MEMORY[0x193AF3B90](i, v4);
          }

          else
          {
            v7 = *(v4 + 8 * i + 32);
          }

          v8 = v7;
          [v7 setUserInteractionEnabled_];
        }

        goto LABEL_11;
      }

      __break(1u);
LABEL_15:
      __break(1u);
      return;
    }
  }

LABEL_11:
}

- (id)nonVibrantSubViews
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_190DDA780;
  v4 = self;
  *(v3 + 32) = sub_190BE8EE8();
  *(v3 + 40) = sub_190BE94C4();
  *(v3 + 48) = sub_190BE96B8();

  sub_1902188FC(0, &qword_1EAD46530);
  v5 = sub_190D57160();

  return v5;
}

- (void)configureForComposition:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_190BEC564(a3);
}

- (void)configureForMediaObject:(id)a3 previewWidth:(double)a4 orientation:(char)a5
{
  v9 = a3;
  v10 = self;
  sub_190BEC780(a3, a5, a4);
}

- (CGSize)sizeThatFits:(CGSize)a3 textAlignmentInsets:(UIEdgeInsets *)a4 tailInsets:(UIEdgeInsets *)a5
{
  height = a3.height;
  width = a3.width;
  v7 = self;
  sub_190BED6F4(width, height);
  v9 = v8;
  v11 = v10;

  v12 = v9;
  v13 = v11;
  result.height = v13;
  result.width = v12;
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_190BEC98C();
}

- (void)configureForMessagePart:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_190BECB64(a3);
}

- (void)tapGestureRecognized:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_190BED0E8(a3);
}

- (CKBalloonDescriptor_t)balloonDescriptorForSnapshotRenderingUsingTraitCollection:(SEL)a3
{
  v6 = a4;
  v7 = self;
  sub_190BED230(v6, &v20);
  v8 = *(&v20 + 1);
  v9 = v21;
  v10 = v22;
  v11 = v27;
  v12 = v30;

  v14 = v23;
  v15 = v24;
  v16 = v25;
  v17 = v26;
  v18.i32[0] = v29;
  v19 = v28;
  *&retstr->var0 = v20;
  retstr->var4 = v8;
  retstr->var5 = v9;
  retstr->var6 = v10;
  *&retstr->var7.red = v14;
  *&retstr->var7.blue = v15;
  *&retstr->var8.red = v16;
  *&retstr->var8.blue = v17;
  retstr->var9 = v11 & 1;
  *&retstr->var10 = v19;
  *&retstr->var12 = vuzp1_s8((vmovl_u8(v18).u64[0] & 0xFF01FF01FF01FF01), *&v14).u32[0];
  retstr->var16 = v12 & 1;
  return result;
}

@end