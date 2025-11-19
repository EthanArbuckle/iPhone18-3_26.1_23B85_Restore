@interface CKReplyContextTextMessagePartChatItem
- (BOOL)replyIsFromMe;
- (CKBalloonDescriptor_t)balloonDescriptor;
- (char)color;
- (double)balloonCornerRadius;
- (id)bodyTextFont;
- (id)meMentionsTextColor;
@end

@implementation CKReplyContextTextMessagePartChatItem

- (id)bodyTextFont
{
  v2 = +[CKUIBehavior sharedBehaviors];
  v3 = [v2 replyBalloonTextFont];

  return v3;
}

- (id)meMentionsTextColor
{
  v2 = +[CKUIBehavior sharedBehaviors];
  v3 = [v2 theme];
  v4 = [v3 nonMaterialBalloonTextColorForColorType:10];

  return v4;
}

- (char)color
{
  v3 = [(CKChatItem *)self IMChatItem];
  v4 = [v3 isFromMe];

  if (!v4)
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
  v13.super_class = CKReplyContextTextMessagePartChatItem;
  [(CKBalloonDescriptor_t *)&v13 balloonDescriptor];
  retstr->var2 = [(CKReplyContextTextMessagePartChatItem *)self balloonStyle];
  retstr->var0 = [(CKReplyContextTextMessagePartChatItem *)self balloonShape];
  retstr->var13 = 1;
  retstr->var6 = [(CKReplyContextTextMessagePartChatItem *)self color];
  v5 = +[CKUIBehavior sharedBehaviors];
  v6 = [v5 theme];
  v7 = [v6 unfilledBalloonColorForColorType:{-[CKReplyContextTextMessagePartChatItem color](self, "color")}];
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

- (double)balloonCornerRadius
{
  v2 = +[CKUIBehavior sharedBehaviors];
  [v2 textReplyBalloonCornerRadius];
  v4 = v3;

  return v4;
}

- (BOOL)replyIsFromMe
{
  v2 = [(CKChatItem *)self IMChatItem];
  v3 = [v2 replyIsFromMe];

  return v3;
}

@end