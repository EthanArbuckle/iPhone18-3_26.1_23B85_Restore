@interface ObjCRLE
- (NSString)description;
- (_TtC9Coherence7ObjCRLE)init;
- (int64_t)rangeCountIn:(_NSRange)in;
- (void)enumerateRangesIn:(_NSRange)in :(id)a4;
@end

@implementation ObjCRLE

- (_TtC9Coherence7ObjCRLE)init
{
  v5[0] = MEMORY[0x1E69E7CC0];
  swift_unknownObjectWeakInit();
  v5[2] = 0;
  swift_unknownObjectWeakAssign();
  sub_1ADDE5634(v5, self + OBJC_IVAR____TtC9Coherence7ObjCRLE_rle);
  v4.receiver = self;
  v4.super_class = type metadata accessor for ObjCRLE();
  return [(ObjCRLE *)&v4 init];
}

- (int64_t)rangeCountIn:(_NSRange)in
{
  length = in.length;
  location = in.location;
  selfCopy = self;
  sub_1AE2253F4(location, length);
  v7 = v6;

  return v7;
}

- (void)enumerateRangesIn:(_NSRange)in :(id)a4
{
  length = in.length;
  location = in.location;
  v7 = _Block_copy(a4);
  _Block_copy(v7);
  selfCopy = self;
  sub_1AE229AAC(location, length, selfCopy, v7);
  _Block_release(v7);
  _Block_release(v7);
}

- (NSString)description
{
  sub_1ADDE56CC(self + OBJC_IVAR____TtC9Coherence7ObjCRLE_rle, v6);
  selfCopy = self;
  sub_1AE2221D4();
  sub_1ADDE5C20(v6);

  v4 = sub_1AE23CCDC();

  return v4;
}

@end