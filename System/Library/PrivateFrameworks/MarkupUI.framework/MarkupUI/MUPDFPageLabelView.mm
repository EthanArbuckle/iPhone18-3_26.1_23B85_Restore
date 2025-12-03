@interface MUPDFPageLabelView
+ (id)sidebarAttributedString;
- (MUPDFPageLabelView)initWithFrame:(CGRect)frame;
- (void)clearTimer;
- (void)dealloc;
- (void)fadeOut;
- (void)resetFadeOutTimer;
- (void)setText:(id)text;
- (void)showNowInSuperView:(id)view withText:(id)text;
@end

@implementation MUPDFPageLabelView

- (MUPDFPageLabelView)initWithFrame:(CGRect)frame
{
  v43[8] = *MEMORY[0x277D85DE8];
  v42.receiver = self;
  v42.super_class = MUPDFPageLabelView;
  v3 = [(MUPDFPageLabelView *)&v42 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x277D75210] effectWithStyle:0];
    blurEffect = v3->_blurEffect;
    v3->_blurEffect = v4;

    v6 = [objc_alloc(MEMORY[0x277D75D68]) initWithEffect:0];
    blurView = v3->_blurView;
    v3->_blurView = v6;

    [(UIVisualEffectView *)v3->_blurView _setContinuousCornerRadius:7.0];
    [(MUPDFPageLabelView *)v3 addSubview:v3->_blurView];
    v8 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{0.0, 0.0, 50.0, 50.0}];
    label = v3->_label;
    v3->_label = v8;

    [(UILabel *)v3->_label setOpaque:0];
    [(UILabel *)v3->_label setBackgroundColor:0];
    [(UILabel *)v3->_label setTextAlignment:1];
    v10 = v3->_label;
    v11 = [MEMORY[0x277D74300] boldSystemFontOfSize:16.0];
    [(UILabel *)v10 setFont:v11];

    v12 = v3->_label;
    blackColor = [MEMORY[0x277D75348] blackColor];
    [(UILabel *)v12 setTextColor:blackColor];

    [(UILabel *)v3->_label setAlpha:0.0];
    contentView = [(UIVisualEffectView *)v3->_blurView contentView];
    [contentView addSubview:v3->_label];

    [(UILabel *)v3->_label setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIVisualEffectView *)v3->_blurView setTranslatesAutoresizingMaskIntoConstraints:0];
    v32 = MEMORY[0x277CCAAD0];
    topAnchor = [(UIVisualEffectView *)v3->_blurView topAnchor];
    topAnchor2 = [(MUPDFPageLabelView *)v3 topAnchor];
    v39 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v43[0] = v39;
    bottomAnchor = [(UIVisualEffectView *)v3->_blurView bottomAnchor];
    bottomAnchor2 = [(MUPDFPageLabelView *)v3 bottomAnchor];
    v36 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v43[1] = v36;
    trailingAnchor = [(UIVisualEffectView *)v3->_blurView trailingAnchor];
    trailingAnchor2 = [(MUPDFPageLabelView *)v3 trailingAnchor];
    v33 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v43[2] = v33;
    leadingAnchor = [(UIVisualEffectView *)v3->_blurView leadingAnchor];
    leadingAnchor2 = [(MUPDFPageLabelView *)v3 leadingAnchor];
    v29 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v43[3] = v29;
    topAnchor3 = [(UILabel *)v3->_label topAnchor];
    topAnchor4 = [(MUPDFPageLabelView *)v3 topAnchor];
    v26 = [topAnchor3 constraintEqualToAnchor:topAnchor4 constant:6.0];
    v43[4] = v26;
    bottomAnchor3 = [(UILabel *)v3->_label bottomAnchor];
    bottomAnchor4 = [(MUPDFPageLabelView *)v3 bottomAnchor];
    v16 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:-6.0];
    v43[5] = v16;
    leadingAnchor3 = [(UILabel *)v3->_label leadingAnchor];
    leadingAnchor4 = [(MUPDFPageLabelView *)v3 leadingAnchor];
    v19 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:10.0];
    v43[6] = v19;
    trailingAnchor3 = [(UILabel *)v3->_label trailingAnchor];
    trailingAnchor4 = [(MUPDFPageLabelView *)v3 trailingAnchor];
    v22 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:-10.0];
    v43[7] = v22;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:8];
    [v32 activateConstraints:v23];
  }

  return v3;
}

- (void)clearTimer
{
  [(NSTimer *)self->_timer invalidate];
  timer = self->_timer;
  self->_timer = 0;
}

- (void)dealloc
{
  [(MUPDFPageLabelView *)self clearTimer];
  v3.receiver = self;
  v3.super_class = MUPDFPageLabelView;
  [(MUPDFPageLabelView *)&v3 dealloc];
}

+ (id)sidebarAttributedString
{
  if (sidebarAttributedString_onceToken != -1)
  {
    +[MUPDFPageLabelView sidebarAttributedString];
  }

  v3 = sidebarAttributedString__sidebarAttributedString;

  return v3;
}

void __45__MUPDFPageLabelView_sidebarAttributedString__block_invoke()
{
  v0 = MEMORY[0x277D74270];
  v1 = [MEMORY[0x277D755B8] systemImageNamed:@"sidebar.squares.leading"];
  v6 = [v0 textAttachmentWithImage:v1];

  v2 = [MEMORY[0x277CCA898] attributedStringWithAttachment:v6];
  v3 = [objc_alloc(MEMORY[0x277CCAB48]) initWithAttributedString:v2];
  v4 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:@" "];
  [v3 appendAttributedString:v4];

  v5 = sidebarAttributedString__sidebarAttributedString;
  sidebarAttributedString__sidebarAttributedString = v3;
}

- (void)setText:(id)text
{
  v4 = MEMORY[0x277CCAB48];
  textCopy = text;
  v6 = [v4 alloc];
  v7 = +[MUPDFPageLabelView sidebarAttributedString];
  v9 = [v6 initWithAttributedString:v7];

  v8 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:textCopy];
  [v9 appendAttributedString:v8];

  [(UILabel *)self->_label setAttributedText:v9];
  [(MUPDFPageLabelView *)self layoutIfNeeded];
}

- (void)showNowInSuperView:(id)view withText:(id)text
{
  viewCopy = view;
  textCopy = text;
  [(UILabel *)self->_label setAlpha:0.4];
  [(UIVisualEffectView *)self->_blurView setEffect:self->_blurEffect];
  if (textCopy)
  {
    [(MUPDFPageLabelView *)self setText:textCopy];
  }

  superview = [(MUPDFPageLabelView *)self superview];

  if (superview == viewCopy)
  {
    [viewCopy bringSubviewToFront:self];
  }

  else
  {
    [viewCopy addSubview:self];
  }

  [(MUPDFPageLabelView *)self resetFadeOutTimer];
}

- (void)resetFadeOutTimer
{
  [(MUPDFPageLabelView *)self _fadeOutDelay];
  timer = self->_timer;
  if (timer)
  {
    v6 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:?];
    v4 = [(NSTimer *)timer setFireDate:v6];
    v5 = v6;
  }

  else
  {
    v4 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel_fadeOut selector:0 userInfo:1 repeats:?];
    v5 = self->_timer;
    self->_timer = v4;
  }

  MEMORY[0x2821F96F8](v4, v5);
}

- (void)fadeOut
{
  if ([(MUPDFPageLabelView *)self isTimerInstalled])
  {
    v3 = MEMORY[0x277D75D18];
    [(MUPDFPageLabelView *)self _fadeOutDuration];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __29__MUPDFPageLabelView_fadeOut__block_invoke;
    v5[3] = &unk_27986E2C8;
    v5[4] = self;
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __29__MUPDFPageLabelView_fadeOut__block_invoke_2;
    v4[3] = &unk_27986E6D0;
    v4[4] = self;
    [v3 animateWithDuration:v5 animations:v4 completion:?];
  }
}

uint64_t __29__MUPDFPageLabelView_fadeOut__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 408) setAlpha:0.0];
  v2 = *(*(a1 + 32) + 416);

  return [v2 setEffect:0];
}

uint64_t __29__MUPDFPageLabelView_fadeOut__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) removeFromSuperview];
  v2 = *(a1 + 32);

  return [v2 clearTimer];
}

@end