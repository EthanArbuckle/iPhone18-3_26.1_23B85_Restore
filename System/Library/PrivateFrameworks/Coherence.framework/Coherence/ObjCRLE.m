@interface ObjCRLE
- (NSString)description;
- (_TtC9Coherence7ObjCRLE)init;
- (int64_t)rangeCountIn:(_NSRange)a3;
- (void)enumerateRangesIn:(_NSRange)a3 :(id)a4;
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

- (int64_t)rangeCountIn:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v5 = self;
  sub_1AE2253F4(location, length);
  v7 = v6;

  return v7;
}

- (void)enumerateRangesIn:(_NSRange)a3 :(id)a4
{
  length = a3.length;
  location = a3.location;
  v7 = _Block_copy(a4);
  _Block_copy(v7);
  v8 = self;
  sub_1AE229AAC(location, length, v8, v7);
  _Block_release(v7);
  _Block_release(v7);
}

- (NSString)description
{
  sub_1ADDE56CC(self + OBJC_IVAR____TtC9Coherence7ObjCRLE_rle, v6);
  v3 = self;
  sub_1AE2221D4();
  sub_1ADDE5C20(v6);

  v4 = sub_1AE23CCDC();

  return v4;
}

@end