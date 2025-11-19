@interface CKReplyContextAttachmentMessagePartChatItem
- (BOOL)replyIsFromMe;
- (CGSize)loadSizeThatFits:(CGSize)a3 textAlignmentInsets:(UIEdgeInsets *)a4;
- (CKBalloonDescriptor_t)balloonDescriptor;
- (Class)balloonViewClass;
- (char)balloonStyle;
- (char)color;
@end

@implementation CKReplyContextAttachmentMessagePartChatItem

- (CGSize)loadSizeThatFits:(CGSize)a3 textAlignmentInsets:(UIEdgeInsets *)a4
{
  height = a3.height;
  width = a3.width;
  v8 = [(CKAttachmentMessagePartChatItem *)self mediaObject];
  v9 = [v8 mediaType];

  if ((v9 & 0xFFFFFFFE) == 2)
  {
    v29.receiver = self;
    v29.super_class = CKReplyContextAttachmentMessagePartChatItem;
    [(CKAttachmentMessagePartChatItem *)&v29 loadSizeThatFits:a4 textAlignmentInsets:width, height];
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
    [(CKAttachmentMessagePartChatItem *)&v28 loadSizeThatFits:a4 textAlignmentInsets:width, height];
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
  v2 = [(CKAttachmentMessagePartChatItem *)self mediaObject];
  v3 = [v2 replyContextBalloonViewClass];

  return v3;
}

- (char)color
{
  v3 = [(CKAttachmentMessagePartChatItem *)self mediaObject];
  v4 = [v3 mediaType];

  if ((v4 - 7) < 4 || ![(CKMessagePartChatItem *)self isFromMe])
  {
    return 9;
  }

  v5 = MEMORY[0x1E69A5C90];
  v6 = [(CKChatItem *)self IMChatItem];
  v7 = [v6 serviceName];
  v8 = [v5 serviceWithName:v7];
  v9 = [v8 __ck_displayReplyColor];

  return v9;
}

- (char)balloonStyle
{
  v2 = [(CKReplyContextAttachmentMessagePartChatItem *)self balloonViewClass];
  if (v2 == objc_opt_class())
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
  v6 = [v5 theme];
  v7 = [v6 unfilledBalloonColorForColorType:{-[CKReplyContextAttachmentMessagePartChatItem color](self, "color")}];
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
  v2 = [(CKChatItem *)self IMChatItem];
  v3 = [v2 replyIsFromMe];

  return v3;
}

@end