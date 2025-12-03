@interface CKAudioMessageRecordingView
+ (id)buttonFor:(int64_t)for with:(id)with;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (BOOL)isStopButtonHighlighted;
- (CGSize)sizeThatFits:(CGSize)fits;
- (CKAudioMessageRecordingView)initWithFrame:(CGRect)frame service:(id)service;
- (CKAudioMessageRecordingViewDelegate)delegate;
- (IMService)service;
- (NSArray)intensities;
- (UIButton)sendButton;
- (double)cornerRadius;
- (double)playbackCurrentTime;
- (double)playbackDuration;
- (int64_t)state;
- (void)addToWaveformWithIntensity:(double)intensity;
- (void)displayLinkFiredFrom:(id)from;
- (void)invalidateDisplayLink;
- (void)layoutSubviews;
- (void)scrubFrom:(id)from;
- (void)sendFrom:(id)from;
- (void)setCornerRadius:(double)radius;
- (void)setIsStopButtonHighlighted:(BOOL)highlighted;
- (void)setSendButton:(id)button;
- (void)setService:(id)service;
- (void)setState:(int64_t)state;
- (void)setWithIntensities:(id)intensities;
- (void)setupDisplayLink;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation CKAudioMessageRecordingView

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  selfCopy = self;
  LOBYTE(self) = AudioMessageRecordingView.gestureRecognizerShouldBegin(_:)(beginCopy);

  return self & 1;
}

- (void)scrubFrom:(id)from
{
  fromCopy = from;
  selfCopy = self;
  AudioMessageRecordingView.scrub(from:)(fromCopy);
}

- (void)sendFrom:(id)from
{
  if (from)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_190D58140();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v7, 0, sizeof(v7));
    selfCopy2 = self;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong audioMessageRecordingViewDidSend_];

    swift_unknownObjectRelease();
  }

  else
  {
  }

  sub_19021E7D8(v7);
}

+ (id)buttonFor:(int64_t)for with:(id)with
{
  if (for > 1)
  {
    if (for == 2)
    {
      sub_190AB8E34();
      goto LABEL_10;
    }

    if (for == 3)
    {
      v4 = sub_190AB92E8();
      goto LABEL_10;
    }

LABEL_13:
    withCopy = with;
    result = sub_190D58790();
    __break(1u);
    return result;
  }

  if (for)
  {
    if (for == 1)
    {
      sub_190AB8AC8();
      goto LABEL_10;
    }

    goto LABEL_13;
  }

  sub_190AB8714();
LABEL_10:

  return v4;
}

- (CKAudioMessageRecordingViewDelegate)delegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (int64_t)state
{
  v3 = OBJC_IVAR___CKAudioMessageRecordingView_state;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setState:(int64_t)state
{
  v5 = OBJC_IVAR___CKAudioMessageRecordingView_state;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = state;
  selfCopy = self;
  sub_190D0BD70(v6);
}

- (double)cornerRadius
{
  v3 = OBJC_IVAR___CKAudioMessageRecordingView_cornerRadius;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setCornerRadius:(double)radius
{
  v5 = OBJC_IVAR___CKAudioMessageRecordingView_cornerRadius;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = radius;
  if (v6 != radius)
  {
    [(CKAudioMessageRecordingView *)self setNeedsLayout];
  }
}

- (BOOL)isStopButtonHighlighted
{
  v3 = OBJC_IVAR___CKAudioMessageRecordingView_isStopButtonHighlighted;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setIsStopButtonHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v5 = OBJC_IVAR___CKAudioMessageRecordingView_isStopButtonHighlighted;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = highlightedCopy;
  if (v6 != highlightedCopy)
  {
    [*(self + OBJC_IVAR___CKAudioMessageRecordingView_stopButton) setHighlighted_];
  }
}

- (double)playbackDuration
{
  v3 = OBJC_IVAR___CKAudioMessageRecordingView_playbackDuration;
  swift_beginAccess();
  return *(self + v3);
}

- (double)playbackCurrentTime
{
  v3 = OBJC_IVAR___CKAudioMessageRecordingView_playbackCurrentTime;
  swift_beginAccess();
  return *(self + v3);
}

- (NSArray)intensities
{
  swift_beginAccess();
  sub_190D52690();
  v2 = sub_190D57160();

  return v2;
}

- (IMService)service
{
  v3 = OBJC_IVAR___CKAudioMessageRecordingView_service;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setService:(id)service
{
  v5 = OBJC_IVAR___CKAudioMessageRecordingView_service;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = service;
  serviceCopy = service;
  selfCopy = self;

  v9 = OBJC_IVAR___CKAudioMessageRecordingView_sendButton;
  swift_beginAccess();
  v10 = *(selfCopy + v9);
  [v10 setNeedsUpdateConfiguration];
}

- (UIButton)sendButton
{
  v3 = OBJC_IVAR___CKAudioMessageRecordingView_sendButton;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setSendButton:(id)button
{
  v5 = OBJC_IVAR___CKAudioMessageRecordingView_sendButton;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = button;
  buttonCopy = button;
}

- (CKAudioMessageRecordingView)initWithFrame:(CGRect)frame service:(id)service
{
  serviceCopy = service;
  v5 = sub_190D10208(serviceCopy);

  return v5;
}

- (void)setupDisplayLink
{
  v2 = OBJC_IVAR___CKAudioMessageRecordingView_displayLink;
  if (!*(self + OBJC_IVAR___CKAudioMessageRecordingView_displayLink))
  {
    v4 = objc_opt_self();
    selfCopy = self;
    v6 = [v4 displayLinkWithTarget:selfCopy selector:sel_displayLinkFiredFrom_];
    v7 = *(self + v2);
    *(self + v2) = v6;
  }
}

- (void)invalidateDisplayLink
{
  v3 = OBJC_IVAR___CKAudioMessageRecordingView_displayLink;
  v4 = *(self + OBJC_IVAR___CKAudioMessageRecordingView_displayLink);
  selfCopy = self;
  [v4 invalidate];
  v6 = *(self + v3);
  *(self + v3) = 0;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for AudioMessageRecordingView();
  v2 = v3.receiver;
  [(CKAudioMessageRecordingView *)&v3 layoutSubviews];
  sub_190D0DF34();
  sub_190D0E04C();
  sub_190D0E3E8();
  sub_190D0E558();
  sub_190D0E710();
  sub_190D0EBB4();
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  selfCopy = self;
  sub_190D0F018();
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  traitCollection = [(CKAudioMessageRecordingView *)selfCopy traitCollection];
  hasDifferentColorAppearanceComparedToTraitCollection_ = [traitCollection hasDifferentColorAppearanceComparedToTraitCollection_];

  if (hasDifferentColorAppearanceComparedToTraitCollection_)
  {
    [(CKAudioMessageRecordingView *)selfCopy setNeedsLayout];
  }
}

- (void)displayLinkFiredFrom:(id)from
{
  if (from)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_190D58140();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    selfCopy2 = self;
  }

  sub_190D0F208();

  sub_19022EEA4(v6, &unk_1EAD551C0);
}

- (void)setWithIntensities:(id)intensities
{
  v4 = sub_190D57180();
  v5 = *(self + OBJC_IVAR___CKAudioMessageRecordingView_waveformView);
  v6 = OBJC_IVAR____TtC7ChatKit33AudioMessageRecordingWaveformView_intensities;
  swift_beginAccess();
  *&v5[v6] = v4;
  selfCopy = self;

  [v5 setNeedsLayout];
}

- (void)addToWaveformWithIntensity:(double)intensity
{
  v5 = *(self + OBJC_IVAR___CKAudioMessageRecordingView_waveformView);
  v6 = OBJC_IVAR____TtC7ChatKit33AudioMessageRecordingWaveformView_intensities;
  swift_beginAccess();
  v7 = *&v5[v6];
  selfCopy = self;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v5[v6] = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = sub_190835BEC(0, *(v7 + 2) + 1, 1, v7);
    *&v5[v6] = v7;
  }

  v11 = *(v7 + 2);
  v10 = *(v7 + 3);
  if (v11 >= v10 >> 1)
  {
    v7 = sub_190835BEC((v10 > 1), v11 + 1, 1, v7);
  }

  *(v7 + 2) = v11 + 1;
  *&v7[8 * v11 + 32] = intensity;
  *&v5[v6] = v7;
  [v5 setNeedsLayout];
}

@end