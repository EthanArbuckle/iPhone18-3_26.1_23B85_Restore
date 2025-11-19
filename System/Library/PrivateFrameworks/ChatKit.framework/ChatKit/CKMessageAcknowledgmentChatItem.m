@interface CKMessageAcknowledgmentChatItem
- (CGSize)loadSizeThatFits:(CGSize)a3 textAlignmentInsets:(UIEdgeInsets *)a4;
- (CKBalloonDescriptor_t)balloonDescriptor;
- (CKMessageAcknowledgmentChatItem)initWithIMChatItem:(id)a3 maxWidth:(double)a4;
- (NSString)acknowledgmentImageName;
- (UIColor)acknowledgmentImageColor;
- (UIColor)selectedAcknowledgmentImageColor;
- (UIColor)selectedBalloonColor;
- (UIEdgeInsets)contentInsets;
- (char)balloonColorType;
- (char)transcriptOrientation;
- (id)attributionImage;
- (id)attributionImageTintColor;
- (id)sender;
@end

@implementation CKMessageAcknowledgmentChatItem

- (CKMessageAcknowledgmentChatItem)initWithIMChatItem:(id)a3 maxWidth:(double)a4
{
  v8.receiver = self;
  v8.super_class = CKMessageAcknowledgmentChatItem;
  v4 = [(CKChatItem *)&v8 initWithIMChatItem:a3 maxWidth:a4];
  v5 = v4;
  if (v4)
  {
    v6 = [(CKMessageAcknowledgmentChatItem *)v4 messageAcknowledgmentChatItem];
    v5->_messageAcknowledgmentType = CKMessageAcknowledgmentTypeFromIMAssociatedMessageType([v6 associatedMessageType]);
  }

  return v5;
}

- (UIEdgeInsets)contentInsets
{
  v2 = +[CKUIBehavior sharedBehaviors];
  [v2 balloonTranscriptInsets];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.right = v14;
  result.bottom = v13;
  result.left = v12;
  result.top = v11;
  return result;
}

- (CGSize)loadSizeThatFits:(CGSize)a3 textAlignmentInsets:(UIEdgeInsets *)a4
{
  v4 = [CKUIBehavior sharedBehaviors:a4];
  [v4 messageAcknowledgmentTranscriptBalloonSize];
  v6 = v5;
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (NSString)acknowledgmentImageName
{
  v3 = +[CKUIBehavior sharedBehaviors];
  v4 = [v3 messageAcknowledgmentImageNameForType:{-[CKMessageAcknowledgmentChatItem messageAcknowledgmentType](self, "messageAcknowledgmentType")}];

  return v4;
}

- (id)sender
{
  v2 = [(CKAssociatedMessageChatItem *)self IMAssociatedMessageChatItem];
  v3 = [v2 sender];

  return v3;
}

- (char)transcriptOrientation
{
  if ([(CKAssociatedMessageChatItem *)self parentMessageIsFromMe])
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

- (char)balloonColorType
{
  v3 = +[CKUIBehavior sharedBehaviors];
  v4 = [v3 theme];
  LOBYTE(self) = [v4 messageAcknowledgmentBalloonColorTypeForStyle:{-[CKMessageAcknowledgmentChatItem themeStyle](self, "themeStyle")}];

  return self;
}

- (UIColor)acknowledgmentImageColor
{
  v3 = +[CKUIBehavior sharedBehaviors];
  v4 = [v3 theme];
  v5 = [v4 messageAcknowledgment:-[CKMessageAcknowledgmentChatItem themeStyle](self acknowledgmentImageColor:{"themeStyle"), -[CKMessageAcknowledgmentChatItem themeColor](self, "themeColor")}];

  return v5;
}

- (UIColor)selectedAcknowledgmentImageColor
{
  v3 = +[CKUIBehavior sharedBehaviors];
  v4 = [v3 theme];
  v5 = [v4 messageAcknowledgment:-[CKMessageAcknowledgmentChatItem themeStyle](self selectedAcknowledgmentImageColor:{"themeStyle"), -[CKMessageAcknowledgmentChatItem themeColor](self, "themeColor")}];

  return v5;
}

- (UIColor)selectedBalloonColor
{
  v3 = +[CKUIBehavior sharedBehaviors];
  v4 = [v3 theme];
  v5 = [v4 messageAcknowledgmentSelectedBalloonColorForStyle:{-[CKMessageAcknowledgmentChatItem themeStyle](self, "themeStyle")}];

  return v5;
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
  v8.receiver = self;
  v8.super_class = CKMessageAcknowledgmentChatItem;
  [(CKBalloonDescriptor_t *)&v8 balloonDescriptor];
  *&retstr->var0 = 514;
  retstr->var2 = 1;
  retstr->var4 = -1;
  *&retstr->var12 = 256;
  retstr->var6 = [(CKMessageAcknowledgmentChatItem *)self balloonColorType];
  retstr->var3 = [(CKMessageAcknowledgmentChatItem *)self balloonOrientation];
  v5 = [(CKChatItem *)self transcriptTraitCollection];
  retstr->var10 = [v5 userInterfaceStyle];

  v6 = [(CKChatItem *)self transcriptTraitCollection];
  retstr->var11 = CKBackgroundLevelForTraitCollection();

  return result;
}

- (id)attributionImage
{
  v3 = MEMORY[0x1E69DCAB8];
  v4 = +[CKUIBehavior sharedBehaviors];
  v5 = [v4 largeMessageAcknowledgmentPollingImageNameForAcknowledgmentType:{-[CKMessageAcknowledgmentChatItem messageAcknowledgmentType](self, "messageAcknowledgmentType")}];
  v6 = [v3 ckTemplateImageNamed:v5];

  return v6;
}

- (id)attributionImageTintColor
{
  v3 = +[CKUIBehavior sharedBehaviors];
  v4 = [v3 theme];
  v5 = [v4 messageAcknowledgment:0 acknowledgmentImageColor:{-[CKMessageAcknowledgmentChatItem themeColor](self, "themeColor")}];

  return v5;
}

@end