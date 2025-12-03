@interface CRStringDecoder
- (_TtC9Coherence15CRStringDecoder)init;
- (id)storageWithError:(id *)error;
- (id)substringCharReplicaWithError:(id *)error;
- (unsigned)substringAddedByCounter:(int64_t)counter;
- (unsigned)substringCharClock;
- (unsigned)substringChild:(int64_t)child;
- (unsigned)substringRemovedAddedByCounter:(int64_t)counter;
- (void)decodeSubstring:(int64_t)substring;
@end

@implementation CRStringDecoder

- (void)decodeSubstring:(int64_t)substring
{
  if (substring < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = *&self->encoded[OBJC_IVAR____TtC9Coherence15CRStringDecoder_encoded + 16];
    if (*(v5 + 16) > substring)
    {
      v26 = v3;
      v27 = v4;
      v6 = v5 + 72 * substring;
      v19 = *(v6 + 32);
      v7 = *(v6 + 48);
      v8 = *(v6 + 64);
      v9 = *(v6 + 80);
      v23 = *(v6 + 96);
      v21 = v8;
      v22 = v9;
      v20 = v7;
      v10 = self + OBJC_IVAR____TtC9Coherence15CRStringDecoder_subsequence;
      v11 = *&self->encoded[OBJC_IVAR____TtC9Coherence15CRStringDecoder_subsequence + 40];
      v24[2] = *&self->encoded[OBJC_IVAR____TtC9Coherence15CRStringDecoder_subsequence + 24];
      v24[3] = v11;
      v25 = self->encoded[OBJC_IVAR____TtC9Coherence15CRStringDecoder_subsequence + 56];
      v12 = *&self->encoded[OBJC_IVAR____TtC9Coherence15CRStringDecoder_subsequence + 8];
      v24[0] = *(&self->super.isa + OBJC_IVAR____TtC9Coherence15CRStringDecoder_subsequence);
      v24[1] = v12;
      v13 = v19;
      v14 = v20;
      v15 = v21;
      v16 = v22;
      v10[64] = v23;
      *(v10 + 2) = v15;
      *(v10 + 3) = v16;
      *v10 = v13;
      *(v10 + 1) = v14;
      selfCopy = self;
      sub_1ADE5218C(&v19, v18);
      sub_1ADE521E8(v24);

      return;
    }
  }

  __break(1u);
}

- (id)substringCharReplicaWithError:(id *)error
{
  v3 = sub_1AE23BFEC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1ADE09BE4(v7);
  v8 = sub_1AE23BF7C();
  (*(v4 + 8))(v7, v3);

  return v8;
}

- (unsigned)substringCharClock
{
  if (self->encoded[OBJC_IVAR____TtC9Coherence15CRStringDecoder_subsequence + 56])
  {
    v2 = 0;
  }

  else
  {
    v2 = *&self->encoded[OBJC_IVAR____TtC9Coherence15CRStringDecoder_subsequence + 48];
  }

  if ((v2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(v2))
  {
    return v2;
  }

  __break(1u);
  return v2;
}

- (unsigned)substringChild:(int64_t)child
{
  if (child < 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v3 = *&self->encoded[OBJC_IVAR____TtC9Coherence15CRStringDecoder_subsequence + 8];
  if (*(v3 + 16) <= child)
  {
LABEL_5:
    __break(1u);
    return self;
  }

  LODWORD(self) = *(v3 + 4 * child + 32);
  return self;
}

- (unsigned)substringAddedByCounter:(int64_t)counter
{
  if (counter < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = *&self->encoded[OBJC_IVAR____TtC9Coherence15CRStringDecoder_subsequence];
  if (*(v3 + 16) <= counter)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  self = *(v3 + 16 * counter + 40);
  if ((self & 0x8000000000000000) == 0)
  {
    if (!(self >> 32))
    {
      return self;
    }

    goto LABEL_9;
  }

LABEL_8:
  __break(1u);
LABEL_9:
  __break(1u);
  return self;
}

- (id)storageWithError:(id *)error
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC9Coherence15CRStringDecoder_encoded);
  v5 = *&self->encoded[OBJC_IVAR____TtC9Coherence15CRStringDecoder_encoded];
  v6 = objc_allocWithZone(MEMORY[0x1E696AD60]);
  selfCopy = self;

  v8 = sub_1AE23CCDC();

  initWithString_ = [v6 initWithString_];

  return initWithString_;
}

- (unsigned)substringRemovedAddedByCounter:(int64_t)counter
{
  if (counter < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = *&self->encoded[OBJC_IVAR____TtC9Coherence15CRStringDecoder_subsequence + 16];
  if (*(v3 + 16) <= counter)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  self = *(v3 + 16 * counter + 40);
  if ((self & 0x8000000000000000) == 0)
  {
    if (!(self >> 32))
    {
      return self;
    }

    goto LABEL_9;
  }

LABEL_8:
  __break(1u);
LABEL_9:
  __break(1u);
  return self;
}

- (_TtC9Coherence15CRStringDecoder)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end