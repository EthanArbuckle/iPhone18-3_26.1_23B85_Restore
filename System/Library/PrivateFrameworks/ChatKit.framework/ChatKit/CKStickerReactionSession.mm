@interface CKStickerReactionSession
- (CKStickerReactionSession)init;
- (CKStickerReactionSession)initWithConversation:(id)conversation chatItem:(id)item cell:(id)cell;
- (void)sendSticker:(id)sticker;
- (void)setCell:(id)cell;
- (void)setChatItem:(id)item;
- (void)setConversation:(id)conversation;
@end

@implementation CKStickerReactionSession

- (void)setConversation:(id)conversation
{
  v4 = *(&self->super.isa + OBJC_IVAR___CKStickerReactionSession_conversation);
  *(&self->super.isa + OBJC_IVAR___CKStickerReactionSession_conversation) = conversation;
  conversationCopy = conversation;
}

- (void)setChatItem:(id)item
{
  v4 = *(&self->super.isa + OBJC_IVAR___CKStickerReactionSession_chatItem);
  *(&self->super.isa + OBJC_IVAR___CKStickerReactionSession_chatItem) = item;
  itemCopy = item;
}

- (void)setCell:(id)cell
{
  v4 = *(&self->super.isa + OBJC_IVAR___CKStickerReactionSession_cell);
  *(&self->super.isa + OBJC_IVAR___CKStickerReactionSession_cell) = cell;
  cellCopy = cell;
}

- (CKStickerReactionSession)initWithConversation:(id)conversation chatItem:(id)item cell:(id)cell
{
  *(&self->super.isa + OBJC_IVAR___CKStickerReactionSession__didSendSticker) = 0;
  *(&self->super.isa + OBJC_IVAR___CKStickerReactionSession_conversation) = conversation;
  *(&self->super.isa + OBJC_IVAR___CKStickerReactionSession_chatItem) = item;
  *(&self->super.isa + OBJC_IVAR___CKStickerReactionSession_cell) = cell;
  v11.receiver = self;
  v11.super_class = CKStickerReactionSession;
  conversationCopy = conversation;
  itemCopy = item;
  cellCopy = cell;
  return [(CKStickerReactionSession *)&v11 init];
}

- (void)sendSticker:(id)sticker
{
  stickerCopy = sticker;
  selfCopy = self;
  sub_19087AD18(stickerCopy);
}

- (CKStickerReactionSession)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end