@interface CKAudioReplyPreviewBalloonView
- (CGSize)sizeThatFits:(CGSize)a3 textAlignmentInsets:(UIEdgeInsets *)a4 tailInsets:(UIEdgeInsets *)a5;
- (CKAudioReplyPreviewBalloonView)initWithFrame:(CGRect)a3;
- (void)configureForComposition:(id)a3;
- (void)configureForMediaObject:(id)a3 previewWidth:(double)a4 orientation:(char)a5;
- (void)configureForMessagePart:(id)a3;
- (void)layoutSubviews;
- (void)prepareForDisplay;
- (void)setDuration:(double)a3;
- (void)setWaveform:(id)a3;
@end

@implementation CKAudioReplyPreviewBalloonView

- (void)configureForMediaObject:(id)a3 previewWidth:(double)a4 orientation:(char)a5
{
  v5 = a5;
  v12.receiver = self;
  v12.super_class = CKAudioReplyPreviewBalloonView;
  v8 = a3;
  [(CKBalloonView *)&v12 configureForMediaObject:v8 previewWidth:v5 orientation:a4];
  v9 = [v8 waveformForOrientation:{v5, v12.receiver, v12.super_class}];
  [(CKAudioReplyPreviewBalloonView *)self setWaveform:v9];

  [v8 duration];
  v11 = v10;

  [(CKAudioReplyPreviewBalloonView *)self setDuration:v11];
}

- (void)configureForComposition:(id)a3
{
  v8.receiver = self;
  v8.super_class = CKAudioReplyPreviewBalloonView;
  v4 = a3;
  [(CKColoredBalloonView *)&v8 configureForComposition:v4];
  v5 = [v4 mediaObjects];

  v6 = [v5 lastObject];
  v7 = +[CKUIBehavior sharedBehaviors];
  [v7 previewMaxWidth];
  [(CKAudioReplyPreviewBalloonView *)self configureForMediaObject:v6 previewWidth:1 orientation:?];
}

- (CKAudioReplyPreviewBalloonView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v13.receiver = self;
  v13.super_class = CKAudioReplyPreviewBalloonView;
  v7 = [(CKColoredBalloonView *)&v13 initWithFrame:?];
  if (v7)
  {
    v8 = [[CKWaveformProgressView alloc] initWithFrame:x, y, width, height];
    waveformProgressView = v7->_waveformProgressView;
    v7->_waveformProgressView = v8;

    [(CKWaveformProgressView *)v7->_waveformProgressView setColor:[(CKBalloonView *)v7 color]];
    [(CKWaveformProgressView *)v7->_waveformProgressView setPlaying:0];
    [(CKWaveformProgressView *)v7->_waveformProgressView setPlayed:0];
    [(CKWaveformProgressView *)v7->_waveformProgressView setCurrentTime:0.0];
    v10 = v7->_waveformProgressView;
    [(CKAudioReplyPreviewBalloonView *)v7 duration];
    [(CKWaveformProgressView *)v10 setDuration:?];
    [(CKWaveformProgressView *)v7->_waveformProgressView setContentMode:1];
    [(CKAudioReplyPreviewBalloonView *)v7 addSubview:v7->_waveformProgressView];
    v11 = [(CKBalloonView *)v7 doubleTapGestureRecognizer];
    [v11 setEnabled:0];
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
  v13 = [(CKAudioReplyPreviewBalloonView *)self waveformProgressView];
  [v13 frame];
  [v13 sizeThatFits:{v4, v6}];
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

  [v13 setFrame:{floor((v8 + (v12 - (v15 - (v22 + v26))) * 0.5) * v27) / v27, floor((v29 + (v28 - (v17 - (v20 + v24))) * 0.5) * v27) / v27}];
}

- (CGSize)sizeThatFits:(CGSize)a3 textAlignmentInsets:(UIEdgeInsets *)a4 tailInsets:(UIEdgeInsets *)a5
{
  width = a3.width;
  [(UIView *)self __ck_alignmentRectSizeForFrameSize:a4, a5, a3.width, a3.height];
  v9 = v8;
  v11 = v10;
  v12 = [(CKAudioReplyPreviewBalloonView *)self waveformProgressView];
  [v12 sizeThatFits:{v9, v11}];
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
    v21 = [v20 waveformPowerLevelWidthIncrement];

    v15 = v39 + v21 - (v40 + (v39 % v21));
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

  if (a4)
  {
    a4->top = v27;
    a4->left = v29;
    a4->bottom = v31;
    a4->right = v33;
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
  v3 = [(CKAudioReplyPreviewBalloonView *)self waveformProgressView];
  [v3 setColor:{-[CKBalloonView color](self, "color")}];

  v4 = [(CKAudioReplyPreviewBalloonView *)self waveformProgressView];
  [v4 prepareForDisplayIfNeeded];
}

- (void)setDuration:(double)a3
{
  if (self->_duration != a3)
  {
    self->_duration = a3;
    v5 = [(CKAudioReplyPreviewBalloonView *)self waveformProgressView];
    [v5 setDuration:a3];

    [(CKBalloonView *)self setNeedsPrepareForDisplay];
  }
}

- (void)setWaveform:(id)a3
{
  v4 = a3;
  [v4 size];
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
      v16 = v4;
      v17 = self;
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

- (void)configureForMessagePart:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CKAudioReplyPreviewBalloonView;
  [(CKColoredBalloonView *)&v9 configureForMessagePart:v4];
  v5 = [v4 mediaObject];
  v6 = +[CKUIBehavior sharedBehaviors];
  [v6 previewMaxWidth];
  -[CKAudioReplyPreviewBalloonView configureForMediaObject:previewWidth:orientation:](self, "configureForMediaObject:previewWidth:orientation:", v5, [v4 balloonOrientation], v7);

  if (v4)
  {
    [v4 balloonDescriptor];
  }

  else
  {
    memset(v8, 0, sizeof(v8));
  }

  [(CKColoredBalloonView *)self setBalloonDescriptor:v8];
}

@end