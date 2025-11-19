@interface CKTranscriptSpeakerBalloonCell
- (BOOL)isSpeakerHidden;
- (void)layoutSubviewsForAlignmentContents;
- (void)setDrawerPercentRevealed:(double)a3;
- (void)setOrientation:(char)a3;
- (void)setSpeakerEnabled:(BOOL)a3;
- (void)setSpeakerHidden:(BOOL)a3;
@end

@implementation CKTranscriptSpeakerBalloonCell

- (void)setOrientation:(char)a3
{
  v3 = a3;
  if ([(CKEditableCollectionViewCell *)self orientation]!= a3)
  {
    v6.receiver = self;
    v6.super_class = CKTranscriptSpeakerBalloonCell;
    [(CKEditableCollectionViewCell *)&v6 setOrientation:v3];
    v5 = [(CKTranscriptSpeakerBalloonCell *)self speakerButton];
    [v5 setOrientation:v3];

    [(CKTranscriptSpeakerBalloonCell *)self setNeedsLayout];
  }
}

- (void)layoutSubviewsForAlignmentContents
{
  v19.receiver = self;
  v19.super_class = CKTranscriptSpeakerBalloonCell;
  [(CKTranscriptBalloonCell *)&v19 layoutSubviewsForAlignmentContents];
  v3 = [(CKTranscriptSpeakerBalloonCell *)self speakerButton];
  [v3 frame];
  v5 = v4;
  v7 = v6;
  v8 = [(CKTranscriptBalloonCell *)self balloonView];
  [v8 frame];
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

  [v3 setFrame:{v17, floor((v12 + (v16 - v7) * 0.5) * v18) / v18, v5, v7}];
}

- (void)setSpeakerEnabled:(BOOL)a3
{
  if (self->_speakerEnabled != a3)
  {
    v4 = a3;
    self->_speakerEnabled = a3;
    v5 = [(CKTranscriptSpeakerBalloonCell *)self speakerButton];
    [v5 setSpeakerEnabled:v4];
  }
}

- (void)setSpeakerHidden:(BOOL)a3
{
  if ([(CKTranscriptSpeakerBalloonCell *)self isSpeakerHidden]== a3)
  {
    return;
  }

  v5 = [(CKTranscriptSpeakerBalloonCell *)self speakerButton];
  if (a3)
  {
    v8 = v5;
    v6 = 1;
  }

  else
  {
    if (!v5)
    {
      v8 = [CKSpeakerButton buttonWithType:1];
      [v8 setOrientation:{-[CKEditableCollectionViewCell orientation](self, "orientation")}];
      [v8 setSpeakerEnabled:{-[CKTranscriptSpeakerBalloonCell isSpeakerEnabled](self, "isSpeakerEnabled")}];
      [v8 sizeToFit];
      v7 = [(CKEditableCollectionViewCell *)self contentView];
      [v7 addSubview:v8];

      [(CKTranscriptSpeakerBalloonCell *)self setSpeakerButton:v8];
      [(CKTranscriptSpeakerBalloonCell *)self setNeedsLayout];
      goto LABEL_8;
    }

    v8 = v5;
    v6 = 0;
  }

  [v5 setHidden:v6];
LABEL_8:
}

- (BOOL)isSpeakerHidden
{
  v2 = [(CKTranscriptSpeakerBalloonCell *)self speakerButton];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 isHidden];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)setDrawerPercentRevealed:(double)a3
{
  v6.receiver = self;
  v6.super_class = CKTranscriptSpeakerBalloonCell;
  [(CKTranscriptCell *)&v6 setDrawerPercentRevealed:?];
  if (![(CKTranscriptSpeakerBalloonCell *)self speakerIsManuallyHidden])
  {
    [(CKTranscriptSpeakerBalloonCell *)self setSpeakerEnabledBeforeManualHide:[(CKTranscriptSpeakerBalloonCell *)self isSpeakerHidden]];
  }

  v5 = a3 > 0.3 || [(CKTranscriptSpeakerBalloonCell *)self speakerEnabledBeforeManualHide];
  [(CKTranscriptSpeakerBalloonCell *)self setSpeakerHidden:v5];
  [(CKTranscriptSpeakerBalloonCell *)self setSpeakerIsManuallyHidden:a3 > 0.3];
}

@end