@interface CKRecordingElapsedTimeView
- (CGSize)sizeThatFits:(CGSize)fits;
- (CKRecordingElapsedTimeView)initWithCoder:(id)coder;
- (CKRecordingElapsedTimeView)initWithFrame:(CGRect)frame;
- (void)_beginRecordingAnimation;
- (void)_commonCAMElapsedTimeViewInitialization;
- (void)_endRecordingAnimation;
- (void)_update:(id)_update;
- (void)dealloc;
- (void)endTimer;
- (void)layoutSubviews;
- (void)resetTimer;
- (void)startTimer;
@end

@implementation CKRecordingElapsedTimeView

- (void)_commonCAMElapsedTimeViewInitialization
{
  v3 = objc_opt_new();
  durationFormatter = self->__durationFormatter;
  self->__durationFormatter = v3;

  [(NSDateComponentsFormatter *)self->__durationFormatter setUnitsStyle:0];
  [(NSDateComponentsFormatter *)self->__durationFormatter setZeroFormattingBehavior:0x10000];
  [(NSDateComponentsFormatter *)self->__durationFormatter setAllowedUnits:224];
  v5 = objc_alloc(MEMORY[0x1E69DCC10]);
  v6 = [v5 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  timeLabel = self->__timeLabel;
  self->__timeLabel = v6;

  v8 = self->__timeLabel;
  v9 = [MEMORY[0x1E69DB878] fontWithName:@"DINAlternate-Bold" size:20.0];
  [(UILabel *)v8 setFont:v9];

  v10 = self->__timeLabel;
  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  [(UILabel *)v10 setTextColor:whiteColor];

  [(UILabel *)self->__timeLabel setTextAlignment:1];
  v12 = self->__timeLabel;
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [(UILabel *)v12 setBackgroundColor:clearColor];

  v14 = objc_alloc_init(MEMORY[0x1E69DD250]);
  recordingDotView = self->__recordingDotView;
  self->__recordingDotView = v14;

  [(UIView *)self->__recordingDotView setAlpha:0.0];
  v16 = self->__recordingDotView;
  v17 = +[CKUIBehavior sharedBehaviors];
  theme = [v17 theme];
  activeRecordingDotColor = [theme activeRecordingDotColor];
  [(UIView *)v16 setBackgroundColor:activeRecordingDotColor];

  [(CKRecordingElapsedTimeView *)self addSubview:self->__timeLabel];
  [(CKRecordingElapsedTimeView *)self addSubview:self->__recordingDotView];

  [(CKRecordingElapsedTimeView *)self _update:0];
}

- (CKRecordingElapsedTimeView)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = CKRecordingElapsedTimeView;
  v3 = [(CKRecordingElapsedTimeView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(CKRecordingElapsedTimeView *)v3 _commonCAMElapsedTimeViewInitialization];
    v5 = v4;
  }

  return v4;
}

- (CKRecordingElapsedTimeView)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = CKRecordingElapsedTimeView;
  v3 = [(CKRecordingElapsedTimeView *)&v7 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(CKRecordingElapsedTimeView *)v3 _commonCAMElapsedTimeViewInitialization];
    v5 = v4;
  }

  return v4;
}

- (void)dealloc
{
  updateTimer = self->__updateTimer;
  self->__updateTimer = 0;

  startTime = self->__startTime;
  self->__startTime = 0;

  v5.receiver = self;
  v5.super_class = CKRecordingElapsedTimeView;
  [(CKRecordingElapsedTimeView *)&v5 dealloc];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(UILabel *)self->__timeLabel sizeThatFits:fits.width, fits.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)layoutSubviews
{
  v18.receiver = self;
  v18.super_class = CKRecordingElapsedTimeView;
  [(CKRecordingElapsedTimeView *)&v18 layoutSubviews];
  [(CKRecordingElapsedTimeView *)self bounds];
  x = v19.origin.x;
  y = v19.origin.y;
  width = v19.size.width;
  height = v19.size.height;
  CGRectGetMinX(v19);
  v20.origin.x = x;
  v20.origin.y = y;
  v20.size.width = width;
  v20.size.height = height;
  CGRectGetMinY(v20);
  UIRectCenteredIntegralRectScale();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v21.origin.x = x;
  v21.origin.y = y;
  v21.size.width = width;
  v21.size.height = height;
  MinX = CGRectGetMinX(v21);
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen scale];
  v16 = MinX - (1.0 / v15 + 12.0);

  [(UIView *)self->__recordingDotView setFrame:v16, v8, v10, v12];
  layer = [(UIView *)self->__recordingDotView layer];
  [layer setCornerRadius:v12 * 0.5];

  [(UILabel *)self->__timeLabel setFrame:x, y, width, height];
}

- (void)_update:(id)_update
{
  [(NSDate *)self->__startTime timeIntervalSinceNow];
  v5 = [(NSDateComponentsFormatter *)self->__durationFormatter stringFromTimeInterval:0.0 - v4];
  [(UILabel *)self->__timeLabel setText:v5];
}

- (void)startTimer
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF00]);
  startTime = self->__startTime;
  self->__startTime = v3;

  [(NSTimer *)self->__updateTimer invalidate];
  v5 = [objc_alloc(MEMORY[0x1E695DFF0]) initWithFireDate:self->__startTime interval:self target:sel__update_ selector:0 userInfo:1 repeats:0.2];
  updateTimer = self->__updateTimer;
  self->__updateTimer = v5;

  currentRunLoop = [MEMORY[0x1E695DFD0] currentRunLoop];
  [currentRunLoop addTimer:self->__updateTimer forMode:*MEMORY[0x1E695D918]];

  currentRunLoop2 = [MEMORY[0x1E695DFD0] currentRunLoop];
  [currentRunLoop2 addTimer:self->__updateTimer forMode:*MEMORY[0x1E69DE760]];

  [(CKRecordingElapsedTimeView *)self _beginRecordingAnimation];
}

- (void)endTimer
{
  [(NSTimer *)self->__updateTimer invalidate];
  updateTimer = self->__updateTimer;
  self->__updateTimer = 0;

  startTime = self->__startTime;
  self->__startTime = 0;

  [(CKRecordingElapsedTimeView *)self _endRecordingAnimation];
}

- (void)resetTimer
{
  [(CKRecordingElapsedTimeView *)self endTimer];
  [(CKRecordingElapsedTimeView *)self _update:0];

  [(CKRecordingElapsedTimeView *)self startTimer];
}

- (void)_beginRecordingAnimation
{
  v18[2] = *MEMORY[0x1E69E9840];
  [(UIView *)self->__recordingDotView setAlpha:1.0];
  v3 = [MEMORY[0x1E6979390] animationWithKeyPath:@"opacity"];
  [v3 setValues:&unk_1F04E6B40];
  [v3 setKeyTimes:&unk_1F04E6B58];
  UIAnimationDragCoefficient();
  [v3 setDuration:v4 * 0.82];
  [v3 setFillMode:*MEMORY[0x1E69797E0]];
  LODWORD(v5) = 2139095040;
  [v3 setRepeatCount:v5];
  LODWORD(v6) = 998490346;
  LODWORD(v7) = 1013385185;
  LODWORD(v8) = 1.0;
  LODWORD(v9) = 1.0;
  v10 = [MEMORY[0x1E69793D0] functionWithControlPoints:v8 :v6 :v7 :v9];
  v18[0] = v10;
  LODWORD(v11) = 1063043161;
  LODWORD(v12) = 993744730;
  LODWORD(v13) = 1002018232;
  LODWORD(v14) = 1065285772;
  v15 = [MEMORY[0x1E69793D0] functionWithControlPoints:v11 :v12 :v13 :v14];
  v18[1] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
  [v3 setTimingFunctions:v16];

  layer = [(UIView *)self->__recordingDotView layer];
  [layer addAnimation:v3 forKey:@"recordingAnimation"];
}

- (void)_endRecordingAnimation
{
  layer = [(UIView *)self->__recordingDotView layer];
  [layer removeAllAnimations];
  [(UIView *)self->__recordingDotView setAlpha:0.0];
}

@end