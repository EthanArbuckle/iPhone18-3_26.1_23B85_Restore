@interface CKTapbackPileViewModel
- (BOOL)leftLayoutDirection;
- (BOOL)showBottomPeekPlatter;
- (BOOL)useTailOffset;
- (CKTapbackPileViewModel)init;
- (CKTapbackPileViewModel)initWithAggregateAcknowledgmentChatItem:(id)a3;
- (IMTapback)sentTapback;
- (NSArray)tapbackChatItems;
- (int64_t)totalDisplayCount;
- (void)setLeftLayoutDirection:(BOOL)a3;
- (void)setShowBottomPeekPlatter:(BOOL)a3;
- (void)setTotalDisplayCount:(int64_t)a3;
- (void)setUseTailOffset:(BOOL)a3;
@end

@implementation CKTapbackPileViewModel

- (int64_t)totalDisplayCount
{
  v3 = OBJC_IVAR___CKTapbackPileViewModel_totalDisplayCount;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setTotalDisplayCount:(int64_t)a3
{
  v5 = OBJC_IVAR___CKTapbackPileViewModel_totalDisplayCount;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (BOOL)leftLayoutDirection
{
  v3 = OBJC_IVAR___CKTapbackPileViewModel_leftLayoutDirection;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setLeftLayoutDirection:(BOOL)a3
{
  v5 = OBJC_IVAR___CKTapbackPileViewModel_leftLayoutDirection;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (BOOL)useTailOffset
{
  v3 = OBJC_IVAR___CKTapbackPileViewModel_useTailOffset;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setUseTailOffset:(BOOL)a3
{
  v5 = OBJC_IVAR___CKTapbackPileViewModel_useTailOffset;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (BOOL)showBottomPeekPlatter
{
  v3 = OBJC_IVAR___CKTapbackPileViewModel_showBottomPeekPlatter;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setShowBottomPeekPlatter:(BOOL)a3
{
  v5 = OBJC_IVAR___CKTapbackPileViewModel_showBottomPeekPlatter;
  swift_beginAccess();
  *(self + v5) = a3;
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
  v3 = self;
  v4 = [v2 sentTapbackChatItem];
  v5 = [v4 tapback];

  return v5;
}

- (CKTapbackPileViewModel)initWithAggregateAcknowledgmentChatItem:(id)a3
{
  v3 = a3;
  v4 = sub_19090FBE0(v3);

  return v4;
}

- (CKTapbackPileViewModel)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end