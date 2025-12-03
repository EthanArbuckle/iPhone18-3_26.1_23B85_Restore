@interface CKAudioMessageBalloonView
- (BOOL)isPlayed;
- (BOOL)isPlaying;
- (BOOL)serviceIsRCS;
- (BOOL)serviceIsSMS;
- (CGSize)sizeThatFits:(CGSize)fits textAlignmentInsets:(UIEdgeInsets *)insets tailInsets:(UIEdgeInsets *)tailInsets;
- (CKAudioMediaObject)mediaObject;
- (CKBalloonDescriptor_t)balloonDescriptorForSnapshotRenderingUsingTraitCollection:(SEL)collection;
- (_TtC7ChatKit20AudioMessageWaveform)waveformView;
- (double)duration;
- (double)initialTimeBeforePan;
- (double)time;
- (id)nonVibrantSubViews;
- (id)playPauseButtonColorFor:(char)for;
- (id)playPauseButtonConfiguration;
- (id)playbackSpeedMenu;
- (id)speedLabelColorFor:(char)for idiom:(int64_t)idiom;
- (id)transcriptionButtonColorWithIsFromMe:(BOOL)me idiom:(int64_t)idiom;
- (id)transcriptionLabelColorFor:(char)for idiom:(uint64_t)idiom;
- (id)waveformColorWithIsFromMe:(BOOL)me isPlayed:(BOOL)played idiom:(int64_t)idiom;
- (int64_t)waveformContentMode;
- (void)configureForComposition:(id)composition;
- (void)configureForMediaObject:(id)object previewWidth:(double)width orientation:(char)orientation;
- (void)configureForMessagePart:(id)part;
- (void)insertHighlightOverlayLayer:(id)layer;
- (void)layoutSubviews;
- (void)prepareForDisplay;
- (void)setInitialTimeBeforePan:(double)pan;
- (void)setMediaObject:(id)object;
- (void)setPlaybackSpeed:(double)speed;
- (void)setPlayed:(BOOL)played;
- (void)setPlaying:(BOOL)playing;
- (void)setServiceIsRCS:(BOOL)s;
- (void)setServiceIsSMS:(BOOL)s;
- (void)setWaveformContentMode:(int64_t)mode;
- (void)setWaveformView:(id)view;
- (void)tapGestureRecognized:(id)recognized;
- (void)vibrantContainerWillReparentNonVibrantSubviews:(id)subviews;
- (void)waveformProgressViewPanning:(id)panning;
@end

@implementation CKAudioMessageBalloonView

- (id)transcriptionLabelColorFor:(char)for idiom:(uint64_t)idiom
{
  v4 = sub_19083145C(for, idiom);

  return v4;
}

- (id)waveformColorWithIsFromMe:(BOOL)me isPlayed:(BOOL)played idiom:(int64_t)idiom
{
  selfCopy = self;
  sub_190830DCC(me, played, idiom);
  v10 = v9;

  return v10;
}

- (id)transcriptionButtonColorWithIsFromMe:(BOOL)me idiom:(int64_t)idiom
{
  v4 = sub_1908313E8(me, idiom);

  return v4;
}

- (id)playPauseButtonColorFor:(char)for
{
  selfCopy = self;
  sub_19083100C(for);
  v6 = v5;

  return v6;
}

- (id)speedLabelColorFor:(char)for idiom:(int64_t)idiom
{
  selfCopy = self;
  sub_1908311E4(for, idiom);
  v8 = v7;

  return v8;
}

- (id)playbackSpeedMenu
{
  selfCopy = self;
  v3 = sub_190B4CC48();

  return v3;
}

- (void)waveformProgressViewPanning:(id)panning
{
  panningCopy = panning;
  selfCopy = self;
  sub_190B4D324(panningCopy);
}

- (CKAudioMediaObject)mediaObject
{
  v3 = OBJC_IVAR____TtC7ChatKit25CKAudioMessageBalloonView_mediaObject;
  swift_beginAccess();
  return *(&self->super.super.super.super.super.super.isa + v3);
}

- (void)setMediaObject:(id)object
{
  v5 = OBJC_IVAR____TtC7ChatKit25CKAudioMessageBalloonView_mediaObject;
  swift_beginAccess();
  v6 = *(&self->super.super.super.super.super.super.isa + v5);
  *(&self->super.super.super.super.super.super.isa + v5) = object;
  objectCopy = object;
  selfCopy = self;

  if (objectCopy)
  {
    v9 = objectCopy;
    v10 = sub_190BE94C4();

    selfCopy = *&v10[OBJC_IVAR____TtC7ChatKit20AudioMessageWaveform_audioMediaObject];
    *&v10[OBJC_IVAR____TtC7ChatKit20AudioMessageWaveform_audioMediaObject] = object;
  }
}

- (_TtC7ChatKit20AudioMessageWaveform)waveformView
{
  selfCopy = self;
  v3 = sub_190BE94C4();

  return v3;
}

- (void)setWaveformView:(id)view
{
  v4 = *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC7ChatKit25CKAudioMessageBalloonView____lazy_storage___waveformView);
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC7ChatKit25CKAudioMessageBalloonView____lazy_storage___waveformView) = view;
  viewCopy = view;
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

- (void)setPlaybackSpeed:(double)speed
{
  selfCopy = self;
  sub_190BEA0BC(speed);
}

- (int64_t)waveformContentMode
{
  v3 = OBJC_IVAR____TtC7ChatKit25CKAudioMessageBalloonView_waveformContentMode;
  swift_beginAccess();
  return *(&self->super.super.super.super.super.super.isa + v3);
}

- (void)setWaveformContentMode:(int64_t)mode
{
  v5 = OBJC_IVAR____TtC7ChatKit25CKAudioMessageBalloonView_waveformContentMode;
  swift_beginAccess();
  *(&self->super.super.super.super.super.super.isa + v5) = mode;
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

- (void)setInitialTimeBeforePan:(double)pan
{
  v5 = OBJC_IVAR____TtC7ChatKit25CKAudioMessageBalloonView_initialTimeBeforePan;
  swift_beginAccess();
  *(&self->super.super.super.super.super.super.isa + v5) = pan;
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

- (void)setPlaying:(BOOL)playing
{
  v5 = OBJC_IVAR____TtC7ChatKit25CKAudioMessageBalloonView_isPlaying;
  swift_beginAccess();
  v6 = *(&self->super.super.super.super.super.super.isa + v5);
  *(&self->super.super.super.super.super.super.isa + v5) = playing;
  selfCopy = self;
  sub_190BEAEFC(v6);
}

- (BOOL)isPlayed
{
  v3 = OBJC_IVAR____TtC7ChatKit25CKAudioMessageBalloonView_isPlayed;
  swift_beginAccess();
  return *(&self->super.super.super.super.super.super.isa + v3);
}

- (void)setPlayed:(BOOL)played
{
  selfCopy = self;
  sub_190BEB318(played);
}

- (BOOL)serviceIsSMS
{
  v3 = OBJC_IVAR____TtC7ChatKit25CKAudioMessageBalloonView_serviceIsSMS;
  swift_beginAccess();
  return *(&self->super.super.super.super.super.super.isa + v3);
}

- (void)setServiceIsSMS:(BOOL)s
{
  v5 = OBJC_IVAR____TtC7ChatKit25CKAudioMessageBalloonView_serviceIsSMS;
  swift_beginAccess();
  *(&self->super.super.super.super.super.super.isa + v5) = s;
}

- (BOOL)serviceIsRCS
{
  v3 = OBJC_IVAR____TtC7ChatKit25CKAudioMessageBalloonView_serviceIsRCS;
  swift_beginAccess();
  return *(&self->super.super.super.super.super.super.isa + v3);
}

- (void)setServiceIsRCS:(BOOL)s
{
  v5 = OBJC_IVAR____TtC7ChatKit25CKAudioMessageBalloonView_serviceIsRCS;
  swift_beginAccess();
  *(&self->super.super.super.super.super.super.isa + v5) = s;
}

- (void)insertHighlightOverlayLayer:(id)layer
{
  layerCopy = layer;
  selfCopy = self;
  layer = [(CKAudioMessageBalloonView *)selfCopy layer];
  v6 = sub_190BE9EA4();
  layer2 = [v6 layer];

  [layer insertSublayer:layerCopy below:layer2];
}

- (void)prepareForDisplay
{
  selfCopy = self;
  sub_190BEBDCC();
}

- (void)vibrantContainerWillReparentNonVibrantSubviews:(id)subviews
{
  if (!subviews)
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
  selfCopy = self;
  *(v3 + 32) = sub_190BE8EE8();
  *(v3 + 40) = sub_190BE94C4();
  *(v3 + 48) = sub_190BE96B8();

  sub_1902188FC(0, &qword_1EAD46530);
  v5 = sub_190D57160();

  return v5;
}

- (void)configureForComposition:(id)composition
{
  compositionCopy = composition;
  selfCopy = self;
  sub_190BEC564(composition);
}

- (void)configureForMediaObject:(id)object previewWidth:(double)width orientation:(char)orientation
{
  objectCopy = object;
  selfCopy = self;
  sub_190BEC780(object, orientation, width);
}

- (CGSize)sizeThatFits:(CGSize)fits textAlignmentInsets:(UIEdgeInsets *)insets tailInsets:(UIEdgeInsets *)tailInsets
{
  height = fits.height;
  width = fits.width;
  selfCopy = self;
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
  selfCopy = self;
  sub_190BEC98C();
}

- (void)configureForMessagePart:(id)part
{
  partCopy = part;
  selfCopy = self;
  sub_190BECB64(part);
}

- (void)tapGestureRecognized:(id)recognized
{
  recognizedCopy = recognized;
  selfCopy = self;
  sub_190BED0E8(recognized);
}

- (CKBalloonDescriptor_t)balloonDescriptorForSnapshotRenderingUsingTraitCollection:(SEL)collection
{
  v6 = a4;
  selfCopy = self;
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