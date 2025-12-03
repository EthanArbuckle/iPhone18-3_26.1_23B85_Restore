@interface CKEditedTextMessagePartHistoricalContentChatItem
- (CKBalloonDescriptor_t)balloonDescriptor;
- (id)historicalContent;
- (id)meMentionsTextColor;
- (id)time;
@end

@implementation CKEditedTextMessagePartHistoricalContentChatItem

- (id)meMentionsTextColor
{
  v2 = +[CKUIBehavior sharedBehaviors];
  theme = [v2 theme];
  v4 = [theme nonMaterialBalloonTextColorForColorType:10];

  return v4;
}

- (id)time
{
  historicalContent = [(CKEditedTextMessagePartHistoricalContentChatItem *)self historicalContent];
  dateSent = [historicalContent dateSent];

  return dateSent;
}

- (id)historicalContent
{
  editedMessagePartChatItem = [(CKEditedTextMessagePartHistoricalContentChatItem *)self editedMessagePartChatItem];
  historicalContent = [editedMessagePartChatItem historicalContent];

  return historicalContent;
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
  v13.super_class = CKEditedTextMessagePartHistoricalContentChatItem;
  [(CKBalloonDescriptor_t *)&v13 balloonDescriptor];
  retstr->var2 = [(CKEditedTextMessagePartHistoricalContentChatItem *)self balloonStyle];
  retstr->var0 = 0;
  retstr->var13 = 0;
  retstr->var6 = [(CKMessagePartChatItem *)self color];
  v5 = +[CKUIBehavior sharedBehaviors];
  theme = [v5 theme];
  v7 = [theme unfilledBalloonColorForColorType:{-[CKMessagePartChatItem color](self, "color")}];
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

@end