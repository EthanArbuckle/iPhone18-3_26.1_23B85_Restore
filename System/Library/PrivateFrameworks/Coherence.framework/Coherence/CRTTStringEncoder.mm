@interface CRTTStringEncoder
- (_TtC9Coherence17CRTTStringEncoder)init;
- (void)addAddedById:(id)a3 clock:(unsigned int)a4;
- (void)addChildWithId:(unsigned int)a3;
- (void)addRemovedAddedById:(id)a3 clock:(unsigned int)a4;
- (void)finishSubstring;
- (void)setCharWithId:(id)a3 clock:(unsigned int)a4;
- (void)setFromAddedByVersion:(id)a3;
- (void)setFromVersion:(id)a3;
- (void)setWithAddedByVersion:(id)a3;
- (void)setWithContentOptions:(int64_t)a3;
- (void)setWithVersion:(id)a3;
@end

@implementation CRTTStringEncoder

- (void)setCharWithId:(id)a3 clock:(unsigned int)a4
{
  v6 = sub_1AE23BFEC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AE23BF9C();
  v11 = self;
  sub_1ADF8BA0C(v10, a4);

  (*(v7 + 8))(v10, v6);
}

- (void)addAddedById:(id)a3 clock:(unsigned int)a4
{
  v6 = sub_1AE23BFEC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AE23BF9C();
  v11 = *(&self->super.isa + OBJC_IVAR____TtC9Coherence17CRTTStringEncoder_encoder);
  v12 = self;

  v13 = sub_1ADDF66A8(v10);

  v14 = v12 + OBJC_IVAR____TtC9Coherence17CRTTStringEncoder_subsequence;
  v15 = *&v12->sequence[OBJC_IVAR____TtC9Coherence17CRTTStringEncoder_subsequence];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v14 + 1) = v15;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v15 = sub_1ADE55F70(0, *(v15 + 2) + 1, 1, v15);
    *(v14 + 1) = v15;
  }

  v18 = *(v15 + 2);
  v17 = *(v15 + 3);
  if (v18 >= v17 >> 1)
  {
    v15 = sub_1ADE55F70((v17 > 1), v18 + 1, 1, v15);
  }

  *(v15 + 2) = v18 + 1;
  v19 = &v15[16 * v18];
  *(v19 + 4) = v13;
  *(v19 + 5) = a4;
  *(v14 + 1) = v15;
  (*(v7 + 8))(v10, v6);
}

- (void)addRemovedAddedById:(id)a3 clock:(unsigned int)a4
{
  v6 = sub_1AE23BFEC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AE23BF9C();
  v11 = *(&self->super.isa + OBJC_IVAR____TtC9Coherence17CRTTStringEncoder_encoder);
  v12 = self;

  v13 = sub_1ADDF66A8(v10);

  v14 = v12 + OBJC_IVAR____TtC9Coherence17CRTTStringEncoder_subsequence;
  v15 = *&v12->sequence[OBJC_IVAR____TtC9Coherence17CRTTStringEncoder_subsequence + 16];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v14 + 3) = v15;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v15 = sub_1ADE55F70(0, *(v15 + 2) + 1, 1, v15);
    *(v14 + 3) = v15;
  }

  v18 = *(v15 + 2);
  v17 = *(v15 + 3);
  if (v18 >= v17 >> 1)
  {
    v15 = sub_1ADE55F70((v17 > 1), v18 + 1, 1, v15);
  }

  *(v15 + 2) = v18 + 1;
  v19 = &v15[16 * v18];
  *(v19 + 4) = v13;
  *(v19 + 5) = a4;
  *(v14 + 3) = v15;
  (*(v7 + 8))(v10, v6);
}

- (void)setWithContentOptions:(int64_t)a3
{
  v3 = self + OBJC_IVAR____TtC9Coherence17CRTTStringEncoder_subsequence;
  *(v3 + 4) = a3;
  v3[40] = a3 < 3;
}

- (void)addChildWithId:(unsigned int)a3
{
  v4 = self + OBJC_IVAR____TtC9Coherence17CRTTStringEncoder_subsequence;
  v5 = *&self->sequence[OBJC_IVAR____TtC9Coherence17CRTTStringEncoder_subsequence + 8];
  v9 = self;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v4 + 2) = v5;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v5 = sub_1ADE55F84(0, *(v5 + 2) + 1, 1, v5);
    *(v4 + 2) = v5;
  }

  v8 = *(v5 + 2);
  v7 = *(v5 + 3);
  if (v8 >= v7 >> 1)
  {
    v5 = sub_1ADE55F84((v7 > 1), v8 + 1, 1, v5);
  }

  *(v5 + 2) = v8 + 1;
  *&v5[4 * v8 + 32] = a3;
  *(v4 + 2) = v5;
}

- (void)finishSubstring
{
  v2 = self;
  sub_1ADF8BFC8();
}

- (void)setWithVersion:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1ADF8C2AC(v4);
}

- (void)setWithAddedByVersion:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1ADF8C3E4();
}

- (void)setFromVersion:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1ADF8C540(v4);
}

- (void)setFromAddedByVersion:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1ADF8C678(v4);
}

- (_TtC9Coherence17CRTTStringEncoder)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end