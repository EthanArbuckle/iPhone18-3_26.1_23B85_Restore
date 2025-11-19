@interface CKIntroductionsButtonsChatItem
- (BOOL)shouldShowIntroductionsLabel;
- (CGSize)loadSizeThatFits:(CGSize)a3 textAlignmentInsets:(UIEdgeInsets *)a4;
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
  v2 = self;
  v3 = [(CKChatItem *)v2 IMChatItem];
  if (v3)
  {
    v4 = v3;
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5)
    {
      v6 = [v5 chatWantsIntroductionsLabel];
      v7 = v4;
    }

    else
    {
      v6 = 0;
      v7 = v2;
      v2 = v4;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (CGSize)loadSizeThatFits:(CGSize)a3 textAlignmentInsets:(UIEdgeInsets *)a4
{
  height = a3.height;
  width = a3.width;
  v7 = self;
  v8 = CKIntroductionsButtonsChatItem.loadSizeThatFits(_:textAlignmentInsets:)(a4, width, height);
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