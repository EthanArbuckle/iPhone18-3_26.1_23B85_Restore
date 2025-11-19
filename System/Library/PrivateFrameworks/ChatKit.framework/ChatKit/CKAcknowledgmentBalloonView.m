@interface CKAcknowledgmentBalloonView
- (void)configureForAggregateAcknowledgmentChatItem:(id)a3;
- (void)legacyAcknowledgementConfigurationForChatItem:(id)a3;
- (void)prepareForReuse;
- (void)setColoredPart:(int64_t)a3;
- (void)setGlyphView:(id)a3;
- (void)setTranscriptBackgroundLuminance:(double)a3;
@end

@implementation CKAcknowledgmentBalloonView

- (void)configureForAggregateAcknowledgmentChatItem:(id)a3
{
  v6 = a3;
  v4 = +[CKUIBehavior sharedBehaviors];
  v5 = [v4 usesFannedBubbleStyle];

  if ((v5 & 1) == 0)
  {
    [(CKAcknowledgmentBalloonView *)self legacyAcknowledgementConfigurationForChatItem:v6];
  }

  -[CKBalloonView setOrientation:](self, "setOrientation:", [v6 balloonOrientation]);
}

- (void)legacyAcknowledgementConfigurationForChatItem:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v6 = [v5 isEmojiTapbacksEnabled];

  if (v6)
  {
    v7 = [v4 latestTapback];
    if (v7)
    {
      v8 = +[CKTapbackViewUtils viewFor:isSelected:](CKTapbackViewUtils, "viewFor:isSelected:", v7, [v4 latestIsFromMe]);
      [(CKAcknowledgmentBalloonView *)self setGlyphView:v8];
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v18 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          v19 = [v4 guid];
          v22 = 138412290;
          v23 = v19;
          _os_log_impl(&dword_19020E000, v18, OS_LOG_TYPE_INFO, "Missing tapback. Unable to render transcript view. GUID: %@", &v22, 0xCu);
        }
      }

      [(CKAcknowledgmentBalloonView *)self setGlyphView:0];
    }
  }

  else
  {
    v9 = [v4 latestAcknowledgmentType];
    v10 = [(CKAcknowledgmentBalloonView *)self glyphView];
    v11 = v10;
    if (!v10 || [v10 acknowledgmentType] != v9)
    {
      v12 = +[CKUIBehavior sharedBehaviors];
      v13 = [v12 theme];
      v14 = [v4 acknowledgmentImageColor];
      v15 = [v13 ckAcknowledgementColorTypeForColor:v14];

      v16 = [CKAcknowledgmentGlyphView glyphViewForAcknowledgmentType:v9 glyphColor:v15];
      [(CKAcknowledgmentBalloonView *)self setGlyphView:v16];
    }

    v17 = [v4 acknowledgmentImageColor];
    [v11 setGlyphColor:v17];
  }

  v20 = [v4 acknowledgments];
  -[CKAcknowledgmentBalloonView setStackCount:](self, "setStackCount:", [v20 count]);

  if ([v4 includesFromMe])
  {
    if ([v4 latestIsFromMe])
    {
      v21 = 2;
    }

    else
    {
      v21 = 1;
    }
  }

  else
  {
    v21 = 0;
  }

  [(CKAcknowledgmentBalloonView *)self setColoredPart:v21];
}

- (void)setColoredPart:(int64_t)a3
{
  v3 = *(&self->super.super.super.super.super.isa + OBJC_IVAR___CKAcknowledgmentBalloonView_coloredPart);
  *(&self->super.super.super.super.super.isa + OBJC_IVAR___CKAcknowledgmentBalloonView_coloredPart) = a3;
  if (v3 != a3)
  {
    [(CKBalloonView *)self setNeedsPrepareForDisplay];
  }
}

- (void)setGlyphView:(id)a3
{
  v6 = *(&self->super.super.super.super.super.isa + OBJC_IVAR___CKAcknowledgmentBalloonView_glyphView);
  *(&self->super.super.super.super.super.isa + OBJC_IVAR___CKAcknowledgmentBalloonView_glyphView) = a3;
  v4 = a3;
  v5 = self;
  sub_19090CCE0(v6);
}

- (void)setTranscriptBackgroundLuminance:(double)a3
{
  v3 = *(&self->super.super.super.super.super.isa + OBJC_IVAR___CKAcknowledgmentBalloonView_transcriptBackgroundLuminance);
  *(&self->super.super.super.super.super.isa + OBJC_IVAR___CKAcknowledgmentBalloonView_transcriptBackgroundLuminance) = a3;
  if (v3 != a3)
  {
    [(CKAcknowledgmentBalloonView *)self transcriptBackgroundLuminanceChanged];
  }
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = CKAcknowledgmentBalloonView;
  v2 = self;
  [(CKBalloonView *)&v3 prepareForReuse];
  [(CKAcknowledgmentBalloonView *)v2 setGlyphView:0, v3.receiver, v3.super_class];
}

@end