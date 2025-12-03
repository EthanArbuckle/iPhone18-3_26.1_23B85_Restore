@interface CKTapbackPileViewModel
- (BOOL)leftLayoutDirection;
- (BOOL)showBottomPeekPlatter;
- (BOOL)useTailOffset;
- (CKTapbackPileViewModel)init;
- (CKTapbackPileViewModel)initWithAggregateAcknowledgmentChatItem:(id)item;
- (IMTapback)sentTapback;
- (NSArray)tapbackChatItems;
- (int64_t)totalDisplayCount;
- (void)setLeftLayoutDirection:(BOOL)direction;
- (void)setShowBottomPeekPlatter:(BOOL)platter;
- (void)setTotalDisplayCount:(int64_t)count;
- (void)setUseTailOffset:(BOOL)offset;
@end

@implementation CKTapbackPileViewModel

- (int64_t)totalDisplayCount
{
  v3 = OBJC_IVAR___CKTapbackPileViewModel_totalDisplayCount;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setTotalDisplayCount:(int64_t)count
{
  v5 = OBJC_IVAR___CKTapbackPileViewModel_totalDisplayCount;
  swift_beginAccess();
  *(self + v5) = count;
}

- (BOOL)leftLayoutDirection
{
  v3 = OBJC_IVAR___CKTapbackPileViewModel_leftLayoutDirection;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setLeftLayoutDirection:(BOOL)direction
{
  v5 = OBJC_IVAR___CKTapbackPileViewModel_leftLayoutDirection;
  swift_beginAccess();
  *(self + v5) = direction;
}

- (BOOL)useTailOffset
{
  v3 = OBJC_IVAR___CKTapbackPileViewModel_useTailOffset;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setUseTailOffset:(BOOL)offset
{
  v5 = OBJC_IVAR___CKTapbackPileViewModel_useTailOffset;
  swift_beginAccess();
  *(self + v5) = offset;
}

- (BOOL)showBottomPeekPlatter
{
  v3 = OBJC_IVAR___CKTapbackPileViewModel_showBottomPeekPlatter;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setShowBottomPeekPlatter:(BOOL)platter
{
  v5 = OBJC_IVAR___CKTapbackPileViewModel_showBottomPeekPlatter;
  swift_beginAccess();
  *(self + v5) = platter;
}

- (NSArray)tapbackChatItems
{
  sub_190910034();
  sub_190D52690();
  v2 = sub_190D57160();

  return v2;
}

- (IMTapback)sentTapback
{
  v2 = *(self + OBJC_IVAR___CKTapbackPileViewModel_aggregateAcknowledgmentChatItem);
  selfCopy = self;
  sentTapbackChatItem = [v2 sentTapbackChatItem];
  tapback = [sentTapbackChatItem tapback];

  return tapback;
}

- (CKTapbackPileViewModel)initWithAggregateAcknowledgmentChatItem:(id)item
{
  itemCopy = item;
  v4 = sub_19090FBE0(itemCopy);

  return v4;
}

- (CKTapbackPileViewModel)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end