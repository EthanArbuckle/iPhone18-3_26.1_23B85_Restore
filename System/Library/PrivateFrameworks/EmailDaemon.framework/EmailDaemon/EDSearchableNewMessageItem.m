@interface EDSearchableNewMessageItem
- (EDEnqueuedDonation)enqueuedDonation;
- (NSDate)dateReceived;
- (_TtC11EmailDaemon26EDSearchableNewMessageItem)init;
- (id)fetchIndexableAttachments;
- (id)searchableItem;
- (int64_t)indexingType;
- (void)setEnqueuedDonation:(id)a3;
- (void)setIndexingType:(int64_t)a3;
@end

@implementation EDSearchableNewMessageItem

- (int64_t)indexingType
{
  v3 = OBJC_IVAR____TtC11EmailDaemon26EDSearchableNewMessageItem_indexingType;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setIndexingType:(int64_t)a3
{
  v5 = OBJC_IVAR____TtC11EmailDaemon26EDSearchableNewMessageItem_indexingType;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (EDEnqueuedDonation)enqueuedDonation
{
  v3 = OBJC_IVAR____TtC11EmailDaemon26EDSearchableNewMessageItem_enqueuedDonation;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setEnqueuedDonation:(id)a3
{
  v5 = OBJC_IVAR____TtC11EmailDaemon26EDSearchableNewMessageItem_enqueuedDonation;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = a3;
  v7 = a3;
}

- (_TtC11EmailDaemon26EDSearchableNewMessageItem)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (NSDate)dateReceived
{
  v3 = sub_1C645C674();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = self + OBJC_IVAR____TtC11EmailDaemon26EDSearchableNewMessageItem_message;
  v9 = type metadata accessor for SearchableMessage(0);
  (*(v4 + 16))(v7, &v8[*(v9 + 24)], v3);
  v10 = sub_1C645C614();
  (*(v4 + 8))(v7, v3);

  return v10;
}

- (id)fetchIndexableAttachments
{
  v2 = [objc_opt_self() nullFuture];

  return v2;
}

- (id)searchableItem
{
  v2 = self;
  v3 = EDSearchableNewMessageItem.searchableItem()();

  return v3;
}

@end