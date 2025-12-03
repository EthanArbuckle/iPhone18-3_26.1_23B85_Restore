@interface CKReplyContextTranscriptPluginChatItem
- (BOOL)replyIsFromMe;
- (CKBalloonDescriptor_t)balloonDescriptor;
- (Class)balloonViewClass;
- (id)description;
- (void)configureBalloonView:(id)view;
@end

@implementation CKReplyContextTranscriptPluginChatItem

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v7.receiver = self;
  v7.super_class = CKReplyContextTranscriptPluginChatItem;
  v4 = [(CKMessagePartChatItem *)&v7 description];
  v5 = [v3 stringWithFormat:@"[%@ attachmentContiguousType:%d]", v4, -[CKChatItem attachmentContiguousType](self, "attachmentContiguousType")];

  return v5;
}

- (void)configureBalloonView:(id)view
{
  viewCopy = view;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [viewCopy configureForTranscriptPlugin:self];
  }
}

- (Class)balloonViewClass
{
  _imChatItem = [(CKReplyContextTranscriptPluginChatItem *)self _imChatItem];
  type = [_imChatItem type];
  if ([type containsString:*MEMORY[0x1E69A6A18]])
  {
    balloonViewClass = objc_opt_class();
  }

  else
  {
    v8.receiver = self;
    v8.super_class = CKReplyContextTranscriptPluginChatItem;
    balloonViewClass = [(CKBalloonChatItem *)&v8 balloonViewClass];
  }

  v6 = balloonViewClass;

  return v6;
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
  v13.super_class = CKReplyContextTranscriptPluginChatItem;
  [(CKBalloonDescriptor_t *)&v13 balloonDescriptor];
  retstr->var2 = [(CKReplyContextTranscriptPluginChatItem *)self balloonStyle];
  retstr->var0 = 3;
  retstr->var13 = 1;
  retstr->var6 = [(CKReplyContextTranscriptPluginChatItem *)self color];
  v5 = +[CKUIBehavior sharedBehaviors];
  theme = [v5 theme];
  v7 = [theme unfilledBalloonColorForColorType:{-[CKReplyContextTranscriptPluginChatItem color](self, "color")}];
  [v7 ck_imColorComponents];
  retstr->var8.red = v8;
  retstr->var8.green = v9;
  retstr->var8.blue = v10;
  retstr->var8.alpha = v11;

  retstr->var9 = 1;
  retstr->var12 = 1;
  return result;
}

- (BOOL)replyIsFromMe
{
  _imChatItem = [(CKReplyContextTranscriptPluginChatItem *)self _imChatItem];
  replyIsFromMe = [_imChatItem replyIsFromMe];

  return replyIsFromMe;
}

@end