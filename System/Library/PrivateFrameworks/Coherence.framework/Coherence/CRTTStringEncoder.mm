@interface CRTTStringEncoder
- (_TtC9Coherence17CRTTStringEncoder)init;
- (void)addAddedById:(id)id clock:(unsigned int)clock;
- (void)addChildWithId:(unsigned int)id;
- (void)addRemovedAddedById:(id)id clock:(unsigned int)clock;
- (void)finishSubstring;
- (void)setCharWithId:(id)id clock:(unsigned int)clock;
- (void)setFromAddedByVersion:(id)version;
- (void)setFromVersion:(id)version;
- (void)setWithAddedByVersion:(id)version;
- (void)setWithContentOptions:(int64_t)options;
- (void)setWithVersion:(id)version;
@end

@implementation CRTTStringEncoder

- (void)setCharWithId:(id)id clock:(unsigned int)clock
{
  v6 = sub_1AE23BFEC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AE23BF9C();
  selfCopy = self;
  sub_1ADF8BA0C(v10, clock);

  (*(v7 + 8))(v10, v6);
}

- (void)addAddedById:(id)id clock:(unsigned int)clock
{
  v6 = sub_1AE23BFEC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AE23BF9C();
  v11 = *(&self->super.isa + OBJC_IVAR____TtC9Coherence17CRTTStringEncoder_encoder);
  selfCopy = self;

  v13 = sub_1ADDF66A8(v10);

  v14 = selfCopy + OBJC_IVAR____TtC9Coherence17CRTTStringEncoder_subsequence;
  v15 = *&selfCopy->sequence[OBJC_IVAR____TtC9Coherence17CRTTStringEncoder_subsequence];
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
  *(v19 + 5) = clock;
  *(v14 + 1) = v15;
  (*(v7 + 8))(v10, v6);
}

- (void)addRemovedAddedById:(id)id clock:(unsigned int)clock
{
  v6 = sub_1AE23BFEC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AE23BF9C();
  v11 = *(&self->super.isa + OBJC_IVAR____TtC9Coherence17CRTTStringEncoder_encoder);
  selfCopy = self;

  v13 = sub_1ADDF66A8(v10);

  v14 = selfCopy + OBJC_IVAR____TtC9Coherence17CRTTStringEncoder_subsequence;
  v15 = *&selfCopy->sequence[OBJC_IVAR____TtC9Coherence17CRTTStringEncoder_subsequence + 16];
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
  *(v19 + 5) = clock;
  *(v14 + 3) = v15;
  (*(v7 + 8))(v10, v6);
}

- (void)setWithContentOptions:(int64_t)options
{
  v3 = self + OBJC_IVAR____TtC9Coherence17CRTTStringEncoder_subsequence;
  *(v3 + 4) = options;
  v3[40] = options < 3;
}

- (void)addChildWithId:(unsigned int)id
{
  v4 = self + OBJC_IVAR____TtC9Coherence17CRTTStringEncoder_subsequence;
  v5 = *&self->sequence[OBJC_IVAR____TtC9Coherence17CRTTStringEncoder_subsequence + 8];
  selfCopy = self;
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
  *&v5[4 * v8 + 32] = id;
  *(v4 + 2) = v5;
}

- (void)finishSubstring
{
  selfCopy = self;
  sub_1ADF8BFC8();
}

- (void)setWithVersion:(id)version
{
  versionCopy = version;
  selfCopy = self;
  sub_1ADF8C2AC(versionCopy);
}

- (void)setWithAddedByVersion:(id)version
{
  versionCopy = version;
  selfCopy = self;
  sub_1ADF8C3E4();
}

- (void)setFromVersion:(id)version
{
  versionCopy = version;
  selfCopy = self;
  sub_1ADF8C540(versionCopy);
}

- (void)setFromAddedByVersion:(id)version
{
  versionCopy = version;
  selfCopy = self;
  sub_1ADF8C678(versionCopy);
}

- (_TtC9Coherence17CRTTStringEncoder)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end