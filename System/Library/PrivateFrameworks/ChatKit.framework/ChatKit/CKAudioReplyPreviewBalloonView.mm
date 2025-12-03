@interface CKAudioReplyPreviewBalloonView
- (CGSize)sizeThatFits:(CGSize)fits textAlignmentInsets:(UIEdgeInsets *)insets tailInsets:(UIEdgeInsets *)tailInsets;
- (CKAudioReplyPreviewBalloonView)initWithFrame:(CGRect)frame;
- (void)configureForComposition:(id)composition;
- (void)configureForMediaObject:(id)object previewWidth:(double)width orientation:(char)orientation;
- (void)configureForMessagePart:(id)part;
- (void)layoutSubviews;
- (void)prepareForDisplay;
- (void)setDuration:(double)duration;
- (void)setWaveform:(id)waveform;
@end

@implementation CKAudioReplyPreviewBalloonView

- (void)configureForMediaObject:(id)object previewWidth:(double)width orientation:(char)orientation
{
  orientationCopy = orientation;
  v12.receiver = self;
  v12.super_class = CKAudioReplyPreviewBalloonView;
  objectCopy = object;
  [(CKBalloonView *)&v12 configureForMediaObject:objectCopy previewWidth:orientationCopy orientation:width];
  v9 = [objectCopy waveformForOrientation:{orientationCopy, v12.receiver, v12.super_class}];
  [(CKAudioReplyPreviewBalloonView *)self setWaveform:v9];

  [objectCopy duration];
  v11 = v10;

  [(CKAudioReplyPreviewBalloonView *)self setDuration:v11];
}

- (void)configureForComposition:(id)composition
{
  v8.receiver = self;
  v8.super_class = CKAudioReplyPreviewBalloonView;
  compositionCopy = composition;
  [(CKColoredBalloonView *)&v8 configureForComposition:compositionCopy];
  mediaObjects = [compositionCopy mediaObjects];

  lastObject = [mediaObjects lastObject];
  v7 = +[CKUIBehavior sharedBehaviors];
  [v7 previewMaxWidth];
  [(CKAudioReplyPreviewBalloonView *)self configureForMediaObject:lastObject previewWidth:1 orientation:?];
}

- (CKAudioReplyPreviewBalloonView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v13.receiver = self;
  v13.super_class = CKAudioReplyPreviewBalloonView;
  v7 = [(CKColoredBalloonView *)&v13 initWithFrame:?];
  if (v7)
  {
    height = [[CKWaveformProgressView alloc] initWithFrame:x, y, width, height];
    waveformProgressView = v7->_waveformProgressView;
    v7->_waveformProgressView = height;

    [(CKWaveformProgressView *)v7->_waveformProgressView setColor:[(CKBalloonView *)v7 color]];
    [(CKWaveformProgressView *)v7->_waveformProgressView setPlaying:0];
    [(CKWaveformProgressView *)v7->_waveformProgressView setPlayed:0];
    [(CKWaveformProgressView *)v7->_waveformProgressView setCurrentTime:0.0];
    v10 = v7->_waveformProgressView;
    [(CKAudioReplyPreviewBalloonView *)v7 duration];
    [(CKWaveformProgressView *)v10 setDuration:?];
    [(CKWaveformProgressView *)v7->_waveformProgressView setContentMode:1];
    [(CKAudioReplyPreviewBalloonView *)v7 addSubview:v7->_waveformProgressView];
    doubleTapGestureRecognizer = [(CKBalloonView *)v7 doubleTapGestureRecognizer];
    [doubleTapGestureRecognizer setEnabled:0];
  }

  return v7;
}

- (void)layoutSubviews
{
  v30.receiver = self;
  v30.super_class = CKAudioReplyPreviewBalloonView;
  [(CKColoredBalloonView *)&v30 layoutSubviews];
  [(CKAudioReplyPreviewBalloonView *)self bounds];
  v4 = v3;
  v6 = v5;
  [(CKAudioReplyPreviewBalloonView *)self alignmentRectForFrame:?];
  v8 = v7;
  v28 = v10;
  v29 = v9;
  v12 = v11;
  waveformProgressView = [(CKAudioReplyPreviewBalloonView *)self waveformProgressView];
  [waveformProgressView frame];
  [waveformProgressView sizeThatFits:{v4, v6}];
  v15 = v14;
  v17 = v16;
  v18 = +[CKUIBehavior sharedBehaviors];
  [v18 audioReplyPreviewBalloonAlignmentInsets];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;

  if (CKMainScreenScale_once_56 != -1)
  {
    [CKAudioReplyPreviewBalloonView layoutSubviews];
  }

  v27 = 1.0;
  if (*&CKMainScreenScale_sMainScreenScale_56 != 0.0)
  {
    v27 = *&CKMainScreenScale_sMainScreenScale_56;
  }

  [waveformProgressView setFrame:{floor((v8 + (v12 - (v15 - (v22 + v26))) * 0.5) * v27) / v27, floor((v29 + (v28 - (v17 - (v20 + v24))) * 0.5) * v27) / v27}];
}

- (CGSize)sizeThatFits:(CGSize)fits textAlignmentInsets:(UIEdgeInsets *)insets tailInsets:(UIEdgeInsets *)tailInsets
{
  width = fits.width;
  [(UIView *)self __ck_alignmentRectSizeForFrameSize:insets, tailInsets, fits.width, fits.height];
  v9 = v8;
  v11 = v10;
  waveformProgressView = [(CKAudioReplyPreviewBalloonView *)self waveformProgressView];
  [waveformProgressView sizeThatFits:{v9, v11}];
  v14 = v13;

  v15 = 0.0;
  [(UIView *)self __ck_frameSizeForAlignmentRectSize:v14, 0.0];
  v16 = *v17.i64;
  *v17.i64 = *v17.i64 - width;
  if (*v17.i64 > 0.0)
  {
    v18 = v17;
    v39 = *v17.i64;
    *v17.i64 = *v17.i64 - trunc(*v17.i64);
    v19.f64[0] = NAN;
    v19.f64[1] = NAN;
    v40 = *vbslq_s8(vnegq_f64(v19), v17, v18).i64;
    v20 = +[CKUIBehavior sharedBehaviors];
    waveformPowerLevelWidthIncrement = [v20 waveformPowerLevelWidthIncrement];

    v15 = v39 + waveformPowerLevelWidthIncrement - (v40 + (v39 % waveformPowerLevelWidthIncrement));
  }

  v22 = +[CKUIBehavior sharedBehaviors];
  [(CKColoredBalloonView *)self balloonDescriptor];
  [v22 balloonMaskSizeWithBalloonDescriptor:v41];
  v24 = v23;

  v25 = +[CKUIBehavior sharedBehaviors];
  [v25 audioReplyPreviewBalloonAlignmentInsets];
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;

  if (insets)
  {
    insets->top = v27;
    insets->left = v29;
    insets->bottom = v31;
    insets->right = v33;
  }

  v34 = +[CKUIBehavior sharedBehaviors];
  [v34 audioReplyPreviewBalloonInset];
  v36 = v16 - v15 - v35;

  v37 = v36;
  v38 = v24;
  result.height = v38;
  result.width = v37;
  return result;
}

- (void)prepareForDisplay
{
  v5.receiver = self;
  v5.super_class = CKAudioReplyPreviewBalloonView;
  [(CKColoredBalloonView *)&v5 prepareForDisplay];
  waveformProgressView = [(CKAudioReplyPreviewBalloonView *)self waveformProgressView];
  [waveformProgressView setColor:{-[CKBalloonView color](self, "color")}];

  waveformProgressView2 = [(CKAudioReplyPreviewBalloonView *)self waveformProgressView];
  [waveformProgressView2 prepareForDisplayIfNeeded];
}

- (void)setDuration:(double)duration
{
  if (self->_duration != duration)
  {
    self->_duration = duration;
    waveformProgressView = [(CKAudioReplyPreviewBalloonView *)self waveformProgressView];
    [waveformProgressView setDuration:duration];

    [(CKBalloonView *)self setNeedsPrepareForDisplay];
  }
}

- (void)setWaveform:(id)waveform
{
  waveformCopy = waveform;
  [waveformCopy size];
  if (v6 != 0.0)
  {
    v7 = v5;
    if (v5 != 0.0)
    {
      v8 = v6;
      v9 = [objc_alloc(MEMORY[0x1E69DCA78]) initWithSize:{v5, v6}];
      v12 = MEMORY[0x1E69E9820];
      v13 = 3221225472;
      v14 = __46__CKAudioReplyPreviewBalloonView_setWaveform___block_invoke;
      v15 = &unk_1E72F4320;
      v16 = waveformCopy;
      selfCopy = self;
      v18 = v7;
      v19 = v8;
      v10 = [v9 imageWithActions:&v12];
      v11 = [(CKAudioReplyPreviewBalloonView *)self waveformProgressView:v12];
      [v11 setWaveform:v10];
    }
  }
}

void __46__CKAudioReplyPreviewBalloonView_setWaveform___block_invoke(uint64_t a1)
{
  [*(a1 + 32) drawAtPoint:{*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8)}];
  v2 = +[CKUIBehavior sharedBehaviors];
  v3 = [v2 theme];
  v4 = [v3 balloonTextColorForColorType:{objc_msgSend(*(a1 + 40), "color")}];
  [v4 set];

  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = 0;
  v8 = 0;

  UIRectFillUsingBlendMode(*&v7, kCGBlendModeSourceIn);
}

- (void)configureForMessagePart:(id)part
{
  partCopy = part;
  v9.receiver = self;
  v9.super_class = CKAudioReplyPreviewBalloonView;
  [(CKColoredBalloonView *)&v9 configureForMessagePart:partCopy];
  mediaObject = [partCopy mediaObject];
  v6 = +[CKUIBehavior sharedBehaviors];
  [v6 previewMaxWidth];
  -[CKAudioReplyPreviewBalloonView configureForMediaObject:previewWidth:orientation:](self, "configureForMediaObject:previewWidth:orientation:", mediaObject, [partCopy balloonOrientation], v7);

  if (partCopy)
  {
    [partCopy balloonDescriptor];
  }

  else
  {
    memset(v8, 0, sizeof(v8));
  }

  [(CKColoredBalloonView *)self setBalloonDescriptor:v8];
}

@end