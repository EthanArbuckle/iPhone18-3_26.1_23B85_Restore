@interface CKReplyContextAggregateMessagePartChatItem
- (BOOL)replyIsFromMe;
- (CKBalloonDescriptor_t)balloonDescriptor;
- (char)color;
- (id)bodyTextFont;
@end

@implementation CKReplyContextAggregateMessagePartChatItem

- (id)bodyTextFont
{
  v2 = +[CKUIBehavior sharedBehaviors];
  replyBalloonTextFont = [v2 replyBalloonTextFont];

  return replyBalloonTextFont;
}

- (char)color
{
  iMChatItem = [(CKChatItem *)self IMChatItem];
  isFromMe = [iMChatItem isFromMe];

  if (!isFromMe)
  {
    return 9;
  }

  v5 = MEMORY[0x1E69A5C90];
  iMChatItem2 = [(CKChatItem *)self IMChatItem];
  serviceName = [iMChatItem2 serviceName];
  v8 = [v5 serviceWithName:serviceName];
  __ck_displayReplyColor = [v8 __ck_displayReplyColor];

  return __ck_displayReplyColor;
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
  v13.super_class = CKReplyContextAggregateMessagePartChatItem;
  [(CKBalloonDescriptor_t *)&v13 balloonDescriptor];
  retstr->var2 = [(CKReplyContextAggregateMessagePartChatItem *)self balloonStyle];
  retstr->var0 = 3;
  retstr->var13 = 1;
  retstr->var6 = [(CKReplyContextAggregateMessagePartChatItem *)self color];
  v5 = +[CKUIBehavior sharedBehaviors];
  theme = [v5 theme];
  v7 = [theme unfilledBalloonColorForColorType:{-[CKReplyContextAggregateMessagePartChatItem color](self, "color")}];
  [v7 ck_imColorComponents];
  retstr->var8.red = v8;
  retstr->var8.green = v9;
  retstr->var8.blue = v10;
  retstr->var8.alpha = v11;

  retstr->var12 = 0;
  result = [(CKBalloonChatItem *)self balloonOrientation];
  retstr->var3 = result;
  return result;
}

- (BOOL)replyIsFromMe
{
  iMChatItem = [(CKChatItem *)self IMChatItem];
  replyIsFromMe = [iMChatItem replyIsFromMe];

  return replyIsFromMe;
}

@end