@interface LocationGraceRegistry
+ (id)deserializeFromReader:(id)reader;
- (BOOL)isEqual:(id)equal;
- (BOOL)serializeToWriter:(id)writer;
- (id)copyWithZone:(void *)zone;
- (int64_t)serializedDataLength;
@end

@implementation LocationGraceRegistry

- (id)copyWithZone:(void *)zone
{
  isa = self->super.isa;
  swift_beginAccess();
  v5 = *self->timeoutByIdentifier;
  type metadata accessor for LocationGraceRegistry();
  *(swift_allocObject() + 16) = v5;

  v6 = sub_224DAFD68();

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {

    swift_unknownObjectRetain();
    sub_224DAF758();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v5, 0, sizeof(v5));
  }

  v3 = sub_224A8D314(v5);

  sub_224A3311C(v5, &qword_27D6F4760, &unk_224DB3680);
  return v3 & 1;
}

- (int64_t)serializedDataLength
{

  sub_224A8D940();
  v3 = v2;

  return v3;
}

- (BOOL)serializeToWriter:(id)writer
{
  v3 = _Block_copy(writer);
  _Block_copy(v3);

  v5 = sub_224A8DE4C(v4, v3);
  _Block_release(v3);
  _Block_release(v3);

  return v5;
}

+ (id)deserializeFromReader:(id)reader
{
  v3 = _Block_copy(reader);
  v4 = sub_224CBDF70(v3);
  _Block_release(v3);

  return v4;
}

@end