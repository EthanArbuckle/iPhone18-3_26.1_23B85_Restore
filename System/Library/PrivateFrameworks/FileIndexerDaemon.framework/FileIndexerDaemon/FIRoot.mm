@interface FIRoot
- (void)subscription:(id)subscription handleEventAtPath:(id)path targetItemID:(unint64_t)d docID:(unsigned int)iD eventID:(unint64_t)eventID flags:(unsigned int)flags;
- (void)subscription:(id)subscription handleResetWithReason:(int64_t)reason;
- (void)subscriptionDidHandleBatchOfEvents:(id)events;
@end

@implementation FIRoot

- (void)subscription:(id)subscription handleEventAtPath:(id)path targetItemID:(unint64_t)d docID:(unsigned int)iD eventID:(unint64_t)eventID flags:(unsigned int)flags
{
  v12 = sub_24ABABEBC();
  v14 = v13;
  swift_beginAccess();
  v15 = *&self->eventBatch[4];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&self->eventBatch[4] = v15;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v15 = sub_24ABA1710(0, *(v15 + 2) + 1, 1, v15);
    *&self->eventBatch[4] = v15;
  }

  v18 = *(v15 + 2);
  v17 = *(v15 + 3);
  if (v18 >= v17 >> 1)
  {
    v15 = sub_24ABA1710((v17 > 1), v18 + 1, 1, v15);
  }

  *(v15 + 2) = v18 + 1;
  v19 = &v15[40 * v18];
  *(v19 + 4) = v12;
  *(v19 + 5) = v14;
  *(v19 + 6) = d;
  *(v19 + 7) = eventID;
  *(v19 + 16) = flags;
  *&self->eventBatch[4] = v15;
  swift_endAccess();
}

- (void)subscription:(id)subscription handleResetWithReason:(int64_t)reason
{
  subscriptionCopy = subscription;

  sub_24AB932E0(reason);
}

- (void)subscriptionDidHandleBatchOfEvents:(id)events
{
  eventsCopy = events;

  sub_24AB935DC();
}

@end