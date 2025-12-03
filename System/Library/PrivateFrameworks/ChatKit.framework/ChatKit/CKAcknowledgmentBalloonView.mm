@interface CKAcknowledgmentBalloonView
- (void)configureForAggregateAcknowledgmentChatItem:(id)item;
- (void)legacyAcknowledgementConfigurationForChatItem:(id)item;
- (void)prepareForReuse;
- (void)setColoredPart:(int64_t)part;
- (void)setGlyphView:(id)view;
- (void)setTranscriptBackgroundLuminance:(double)luminance;
@end

@implementation CKAcknowledgmentBalloonView

- (void)configureForAggregateAcknowledgmentChatItem:(id)item
{
  itemCopy = item;
  v4 = +[CKUIBehavior sharedBehaviors];
  usesFannedBubbleStyle = [v4 usesFannedBubbleStyle];

  if ((usesFannedBubbleStyle & 1) == 0)
  {
    [(CKAcknowledgmentBalloonView *)self legacyAcknowledgementConfigurationForChatItem:itemCopy];
  }

  -[CKBalloonView setOrientation:](self, "setOrientation:", [itemCopy balloonOrientation]);
}

- (void)legacyAcknowledgementConfigurationForChatItem:(id)item
{
  v24 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isEmojiTapbacksEnabled = [mEMORY[0x1E69A8070] isEmojiTapbacksEnabled];

  if (isEmojiTapbacksEnabled)
  {
    latestTapback = [itemCopy latestTapback];
    if (latestTapback)
    {
      v8 = +[CKTapbackViewUtils viewFor:isSelected:](CKTapbackViewUtils, "viewFor:isSelected:", latestTapback, [itemCopy latestIsFromMe]);
      [(CKAcknowledgmentBalloonView *)self setGlyphView:v8];
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v18 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          guid = [itemCopy guid];
          v22 = 138412290;
          v23 = guid;
          _os_log_impl(&dword_19020E000, v18, OS_LOG_TYPE_INFO, "Missing tapback. Unable to render transcript view. GUID: %@", &v22, 0xCu);
        }
      }

      [(CKAcknowledgmentBalloonView *)self setGlyphView:0];
    }
  }

  else
  {
    latestAcknowledgmentType = [itemCopy latestAcknowledgmentType];
    glyphView = [(CKAcknowledgmentBalloonView *)self glyphView];
    v11 = glyphView;
    if (!glyphView || [glyphView acknowledgmentType] != latestAcknowledgmentType)
    {
      v12 = +[CKUIBehavior sharedBehaviors];
      theme = [v12 theme];
      acknowledgmentImageColor = [itemCopy acknowledgmentImageColor];
      v15 = [theme ckAcknowledgementColorTypeForColor:acknowledgmentImageColor];

      v16 = [CKAcknowledgmentGlyphView glyphViewForAcknowledgmentType:latestAcknowledgmentType glyphColor:v15];
      [(CKAcknowledgmentBalloonView *)self setGlyphView:v16];
    }

    acknowledgmentImageColor2 = [itemCopy acknowledgmentImageColor];
    [v11 setGlyphColor:acknowledgmentImageColor2];
  }

  acknowledgments = [itemCopy acknowledgments];
  -[CKAcknowledgmentBalloonView setStackCount:](self, "setStackCount:", [acknowledgments count]);

  if ([itemCopy includesFromMe])
  {
    if ([itemCopy latestIsFromMe])
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

- (void)setColoredPart:(int64_t)part
{
  v3 = *(&self->super.super.super.super.super.isa + OBJC_IVAR___CKAcknowledgmentBalloonView_coloredPart);
  *(&self->super.super.super.super.super.isa + OBJC_IVAR___CKAcknowledgmentBalloonView_coloredPart) = part;
  if (v3 != part)
  {
    [(CKBalloonView *)self setNeedsPrepareForDisplay];
  }
}

- (void)setGlyphView:(id)view
{
  v6 = *(&self->super.super.super.super.super.isa + OBJC_IVAR___CKAcknowledgmentBalloonView_glyphView);
  *(&self->super.super.super.super.super.isa + OBJC_IVAR___CKAcknowledgmentBalloonView_glyphView) = view;
  viewCopy = view;
  selfCopy = self;
  sub_19090CCE0(v6);
}

- (void)setTranscriptBackgroundLuminance:(double)luminance
{
  v3 = *(&self->super.super.super.super.super.isa + OBJC_IVAR___CKAcknowledgmentBalloonView_transcriptBackgroundLuminance);
  *(&self->super.super.super.super.super.isa + OBJC_IVAR___CKAcknowledgmentBalloonView_transcriptBackgroundLuminance) = luminance;
  if (v3 != luminance)
  {
    [(CKAcknowledgmentBalloonView *)self transcriptBackgroundLuminanceChanged];
  }
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = CKAcknowledgmentBalloonView;
  selfCopy = self;
  [(CKBalloonView *)&v3 prepareForReuse];
  [(CKAcknowledgmentBalloonView *)selfCopy setGlyphView:0, v3.receiver, v3.super_class];
}

@end