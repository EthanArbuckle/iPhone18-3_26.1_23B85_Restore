@interface CKIntroductionsButtonsChatItem
- (BOOL)shouldShowIntroductionsLabel;
- (CGSize)loadSizeThatFits:(CGSize)fits textAlignmentInsets:(UIEdgeInsets *)insets;
- (CKIntroductionsButtonsChatItem)init;
- (Class)cellClass;
@end

@implementation CKIntroductionsButtonsChatItem

- (Class)cellClass
{
  type metadata accessor for CKIntroductionsButtonsCell();

  return swift_getObjCClassFromMetadata();
}

- (BOOL)shouldShowIntroductionsLabel
{
  selfCopy = self;
  iMChatItem = [(CKChatItem *)selfCopy IMChatItem];
  if (iMChatItem)
  {
    v4 = iMChatItem;
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5)
    {
      chatWantsIntroductionsLabel = [v5 chatWantsIntroductionsLabel];
      v7 = v4;
    }

    else
    {
      chatWantsIntroductionsLabel = 0;
      v7 = selfCopy;
      selfCopy = v4;
    }
  }

  else
  {
    chatWantsIntroductionsLabel = 0;
  }

  return chatWantsIntroductionsLabel;
}

- (CGSize)loadSizeThatFits:(CGSize)fits textAlignmentInsets:(UIEdgeInsets *)insets
{
  height = fits.height;
  width = fits.width;
  selfCopy = self;
  v8 = CKIntroductionsButtonsChatItem.loadSizeThatFits(_:textAlignmentInsets:)(insets, width, height);
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

- (CKIntroductionsButtonsChatItem)init
{
  v3.receiver = self;
  v3.super_class = CKIntroductionsButtonsChatItem;
  return [(CKIntroductionsButtonsChatItem *)&v3 init];
}

@end