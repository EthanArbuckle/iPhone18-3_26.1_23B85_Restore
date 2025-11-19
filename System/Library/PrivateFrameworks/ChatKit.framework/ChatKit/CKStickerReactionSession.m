@interface CKStickerReactionSession
- (CKStickerReactionSession)init;
- (CKStickerReactionSession)initWithConversation:(id)a3 chatItem:(id)a4 cell:(id)a5;
- (void)sendSticker:(id)a3;
- (void)setCell:(id)a3;
- (void)setChatItem:(id)a3;
- (void)setConversation:(id)a3;
@end

@implementation CKStickerReactionSession

- (void)setConversation:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR___CKStickerReactionSession_conversation);
  *(&self->super.isa + OBJC_IVAR___CKStickerReactionSession_conversation) = a3;
  v3 = a3;
}

- (void)setChatItem:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR___CKStickerReactionSession_chatItem);
  *(&self->super.isa + OBJC_IVAR___CKStickerReactionSession_chatItem) = a3;
  v3 = a3;
}

- (void)setCell:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR___CKStickerReactionSession_cell);
  *(&self->super.isa + OBJC_IVAR___CKStickerReactionSession_cell) = a3;
  v3 = a3;
}

- (CKStickerReactionSession)initWithConversation:(id)a3 chatItem:(id)a4 cell:(id)a5
{
  *(&self->super.isa + OBJC_IVAR___CKStickerReactionSession__didSendSticker) = 0;
  *(&self->super.isa + OBJC_IVAR___CKStickerReactionSession_conversation) = a3;
  *(&self->super.isa + OBJC_IVAR___CKStickerReactionSession_chatItem) = a4;
  *(&self->super.isa + OBJC_IVAR___CKStickerReactionSession_cell) = a5;
  v11.receiver = self;
  v11.super_class = CKStickerReactionSession;
  v7 = a3;
  v8 = a4;
  v9 = a5;
  return [(CKStickerReactionSession *)&v11 init];
}

- (void)sendSticker:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_19087AD18(v4);
}

- (CKStickerReactionSession)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end