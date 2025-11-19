@interface CKRichLinkCardStackChatItem
- (BOOL)hasTail;
- (CKRichLinkCardStackChatItem)init;
- (Class)balloonViewClass;
- (IMRichCards)richCards;
- (UIEdgeInsets)contentInsets;
- (void)prewarmAssets;
@end

@implementation CKRichLinkCardStackChatItem

- (UIEdgeInsets)contentInsets
{
  v2 = self;
  v3 = sub_190CE13C8();
  v5 = v4;
  v7 = v6;
  v9 = v8;

  v10 = v3;
  v11 = v5;
  v12 = v7;
  v13 = v9;
  result.right = v13;
  result.bottom = v12;
  result.left = v11;
  result.top = v10;
  return result;
}

- (Class)balloonViewClass
{
  v2 = self;
  v3 = sub_190CE15BC();

  if (!v3)
  {
    return 0;
  }

  return swift_getObjCClassFromMetadata();
}

- (BOOL)hasTail
{
  v2 = self;
  v3 = sub_190CE16FC();

  return v3 & 1;
}

- (IMRichCards)richCards
{
  v2 = self;
  v3 = [(CKChatItem *)v2 IMChatItem];
  if (v3)
  {
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    if (!v4)
    {
    }

    v3 = [v4 richCards];
  }

  return v3;
}

- (void)prewarmAssets
{
  v2 = self;
  sub_190CE1928();
}

- (CKRichLinkCardStackChatItem)init
{
  v3 = OBJC_IVAR___CKRichLinkCardStackChatItem_viewClass;
  *(&self->super.super.super.super.super.isa + v3) = type metadata accessor for RichLinkCardStackItemView();
  v5.receiver = self;
  v5.super_class = type metadata accessor for RichLinkCardStackChatItem();
  return [(CKMessagePartChatItem *)&v5 init];
}

@end