@interface CKReplyContextAttachmentMessagePartChatItem
- (BOOL)replyIsFromMe;
- (CGSize)loadSizeThatFits:(CGSize)fits textAlignmentInsets:(UIEdgeInsets *)insets;
- (CKBalloonDescriptor_t)balloonDescriptor;
- (Class)balloonViewClass;
- (char)balloonStyle;
- (char)color;
@end

@implementation CKReplyContextAttachmentMessagePartChatItem

- (CGSize)loadSizeThatFits:(CGSize)fits textAlignmentInsets:(UIEdgeInsets *)insets
{
  height = fits.height;
  width = fits.width;
  mediaObject = [(CKAttachmentMessagePartChatItem *)self mediaObject];
  mediaType = [mediaObject mediaType];

  if ((mediaType & 0xFFFFFFFE) == 2)
  {
    v29.receiver = self;
    v29.super_class = CKReplyContextAttachmentMessagePartChatItem;
    [(CKAttachmentMessagePartChatItem *)&v29 loadSizeThatFits:insets textAlignmentInsets:width, height];
    v11 = v10;
    v13 = v12;
    v14 = +[CKUIBehavior sharedBehaviors];
    [v14 textBalloonMinHeight];
    v16 = v15;

    v17 = +[CKUIBehavior sharedBehaviors];
    [v17 replyPreviewBalloonMinWidth];
    v19 = v18;

    if (v19 < v11 || v16 < v13)
    {
      v21 = v19 / v11;
      v22 = 0.0;
      if (v11 == 0.0)
      {
        v21 = 0.0;
      }

      if (v13 != 0.0)
      {
        v22 = v16 / v13;
      }

      v23 = fmax(v21, v22);
      v19 = ceil(v11 * v23);
      v16 = ceil(v13 * v23);
    }
  }

  else
  {
    v28.receiver = self;
    v28.super_class = CKReplyContextAttachmentMessagePartChatItem;
    [(CKAttachmentMessagePartChatItem *)&v28 loadSizeThatFits:insets textAlignmentInsets:width, height];
    v19 = v24;
    v16 = v25;
  }

  v26 = v19;
  v27 = v16;
  result.height = v27;
  result.width = v26;
  return result;
}

- (Class)balloonViewClass
{
  mediaObject = [(CKAttachmentMessagePartChatItem *)self mediaObject];
  replyContextBalloonViewClass = [mediaObject replyContextBalloonViewClass];

  return replyContextBalloonViewClass;
}

- (char)color
{
  mediaObject = [(CKAttachmentMessagePartChatItem *)self mediaObject];
  mediaType = [mediaObject mediaType];

  if ((mediaType - 7) < 4 || ![(CKMessagePartChatItem *)self isFromMe])
  {
    return 9;
  }

  v5 = MEMORY[0x1E69A5C90];
  iMChatItem = [(CKChatItem *)self IMChatItem];
  serviceName = [iMChatItem serviceName];
  v8 = [v5 serviceWithName:serviceName];
  __ck_displayReplyColor = [v8 __ck_displayReplyColor];

  return __ck_displayReplyColor;
}

- (char)balloonStyle
{
  balloonViewClass = [(CKReplyContextAttachmentMessagePartChatItem *)self balloonViewClass];
  if (balloonViewClass == objc_opt_class())
  {
    return 0;
  }

  else
  {
    return 5;
  }
}

- (CKBalloonDescriptor_t)balloonDescriptor
{
  *&retstr->var9 = 0u;
  *&retstr->var11 = 0u;
  *&retstr->var8.red = 0u;
  *&retstr->var8.blue = 0u;
  *&retstr->var7.red = 0u;
  *&retstr->var7.blue = 0u;
  *&retstr->var0 = 0u;
  *&retstr->var5 = 0u;
  v13.receiver = self;
  v13.super_class = CKReplyContextAttachmentMessagePartChatItem;
  [(CKBalloonDescriptor_t *)&v13 balloonDescriptor];
  retstr->var2 = [(CKReplyContextAttachmentMessagePartChatItem *)self balloonStyle];
  retstr->var0 = 4;
  retstr->var13 = 1;
  retstr->var3 = [(CKBalloonChatItem *)self balloonOrientation];
  retstr->var6 = [(CKReplyContextAttachmentMessagePartChatItem *)self color];
  v5 = +[CKUIBehavior sharedBehaviors];
  theme = [v5 theme];
  v7 = [theme unfilledBalloonColorForColorType:{-[CKReplyContextAttachmentMessagePartChatItem color](self, "color")}];
  [v7 ck_imColorComponents];
  retstr->var8.red = v8;
  retstr->var8.green = v9;
  retstr->var8.blue = v10;
  retstr->var8.alpha = v11;

  retstr->var12 = 1;
  return result;
}

- (BOOL)replyIsFromMe
{
  iMChatItem = [(CKChatItem *)self IMChatItem];
  replyIsFromMe = [iMChatItem replyIsFromMe];

  return replyIsFromMe;
}

@end