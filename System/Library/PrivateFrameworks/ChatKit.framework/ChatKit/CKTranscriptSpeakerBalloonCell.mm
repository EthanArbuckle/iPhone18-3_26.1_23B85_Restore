@interface CKTranscriptSpeakerBalloonCell
- (BOOL)isSpeakerHidden;
- (void)layoutSubviewsForAlignmentContents;
- (void)setDrawerPercentRevealed:(double)revealed;
- (void)setOrientation:(char)orientation;
- (void)setSpeakerEnabled:(BOOL)enabled;
- (void)setSpeakerHidden:(BOOL)hidden;
@end

@implementation CKTranscriptSpeakerBalloonCell

- (void)setOrientation:(char)orientation
{
  orientationCopy = orientation;
  if ([(CKEditableCollectionViewCell *)self orientation]!= orientation)
  {
    v6.receiver = self;
    v6.super_class = CKTranscriptSpeakerBalloonCell;
    [(CKEditableCollectionViewCell *)&v6 setOrientation:orientationCopy];
    speakerButton = [(CKTranscriptSpeakerBalloonCell *)self speakerButton];
    [speakerButton setOrientation:orientationCopy];

    [(CKTranscriptSpeakerBalloonCell *)self setNeedsLayout];
  }
}

- (void)layoutSubviewsForAlignmentContents
{
  v19.receiver = self;
  v19.super_class = CKTranscriptSpeakerBalloonCell;
  [(CKTranscriptBalloonCell *)&v19 layoutSubviewsForAlignmentContents];
  speakerButton = [(CKTranscriptSpeakerBalloonCell *)self speakerButton];
  [speakerButton frame];
  v5 = v4;
  v7 = v6;
  balloonView = [(CKTranscriptBalloonCell *)self balloonView];
  [balloonView frame];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  if ([(CKEditableCollectionViewCell *)self orientation])
  {
    v17 = v10 + -7.0 - v5;
  }

  else
  {
    v20.origin.x = v10;
    v20.origin.y = v12;
    v20.size.width = v14;
    v20.size.height = v16;
    v17 = CGRectGetMaxX(v20) + 7.0;
  }

  if (CKMainScreenScale_once_57 != -1)
  {
    [CKTranscriptSpeakerBalloonCell layoutSubviewsForAlignmentContents];
  }

  v18 = *&CKMainScreenScale_sMainScreenScale_57;
  if (*&CKMainScreenScale_sMainScreenScale_57 == 0.0)
  {
    v18 = 1.0;
  }

  [speakerButton setFrame:{v17, floor((v12 + (v16 - v7) * 0.5) * v18) / v18, v5, v7}];
}

- (void)setSpeakerEnabled:(BOOL)enabled
{
  if (self->_speakerEnabled != enabled)
  {
    enabledCopy = enabled;
    self->_speakerEnabled = enabled;
    speakerButton = [(CKTranscriptSpeakerBalloonCell *)self speakerButton];
    [speakerButton setSpeakerEnabled:enabledCopy];
  }
}

- (void)setSpeakerHidden:(BOOL)hidden
{
  if ([(CKTranscriptSpeakerBalloonCell *)self isSpeakerHidden]== hidden)
  {
    return;
  }

  speakerButton = [(CKTranscriptSpeakerBalloonCell *)self speakerButton];
  if (hidden)
  {
    v8 = speakerButton;
    v6 = 1;
  }

  else
  {
    if (!speakerButton)
    {
      v8 = [CKSpeakerButton buttonWithType:1];
      [v8 setOrientation:{-[CKEditableCollectionViewCell orientation](self, "orientation")}];
      [v8 setSpeakerEnabled:{-[CKTranscriptSpeakerBalloonCell isSpeakerEnabled](self, "isSpeakerEnabled")}];
      [v8 sizeToFit];
      contentView = [(CKEditableCollectionViewCell *)self contentView];
      [contentView addSubview:v8];

      [(CKTranscriptSpeakerBalloonCell *)self setSpeakerButton:v8];
      [(CKTranscriptSpeakerBalloonCell *)self setNeedsLayout];
      goto LABEL_8;
    }

    v8 = speakerButton;
    v6 = 0;
  }

  [speakerButton setHidden:v6];
LABEL_8:
}

- (BOOL)isSpeakerHidden
{
  speakerButton = [(CKTranscriptSpeakerBalloonCell *)self speakerButton];
  v3 = speakerButton;
  if (speakerButton)
  {
    isHidden = [speakerButton isHidden];
  }

  else
  {
    isHidden = 1;
  }

  return isHidden;
}

- (void)setDrawerPercentRevealed:(double)revealed
{
  v6.receiver = self;
  v6.super_class = CKTranscriptSpeakerBalloonCell;
  [(CKTranscriptCell *)&v6 setDrawerPercentRevealed:?];
  if (![(CKTranscriptSpeakerBalloonCell *)self speakerIsManuallyHidden])
  {
    [(CKTranscriptSpeakerBalloonCell *)self setSpeakerEnabledBeforeManualHide:[(CKTranscriptSpeakerBalloonCell *)self isSpeakerHidden]];
  }

  v5 = revealed > 0.3 || [(CKTranscriptSpeakerBalloonCell *)self speakerEnabledBeforeManualHide];
  [(CKTranscriptSpeakerBalloonCell *)self setSpeakerHidden:v5];
  [(CKTranscriptSpeakerBalloonCell *)self setSpeakerIsManuallyHidden:revealed > 0.3];
}

@end