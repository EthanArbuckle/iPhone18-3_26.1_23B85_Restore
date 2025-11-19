@interface FIRoot
- (void)subscription:(id)a3 handleEventAtPath:(id)a4 targetItemID:(unint64_t)a5 docID:(unsigned int)a6 eventID:(unint64_t)a7 flags:(unsigned int)a8;
- (void)subscription:(id)a3 handleResetWithReason:(int64_t)a4;
- (void)subscriptionDidHandleBatchOfEvents:(id)a3;
@end

@implementation FIRoot

- (void)subscription:(id)a3 handleEventAtPath:(id)a4 targetItemID:(unint64_t)a5 docID:(unsigned int)a6 eventID:(unint64_t)a7 flags:(unsigned int)a8
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
  *(v19 + 6) = a5;
  *(v19 + 7) = a7;
  *(v19 + 16) = a8;
  *&self->eventBatch[4] = v15;
  swift_endAccess();
}

- (void)subscription:(id)a3 handleResetWithReason:(int64_t)a4
{
  v5 = a3;

  sub_24AB932E0(a4);
}

- (void)subscriptionDidHandleBatchOfEvents:(id)a3
{
  v3 = a3;

  sub_24AB935DC();
}

@end