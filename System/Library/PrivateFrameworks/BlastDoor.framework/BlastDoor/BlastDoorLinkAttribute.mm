@interface BlastDoorLinkAttribute
- (BlastDoorLinkAttribute)init;
- (NSURL)link;
- (_NSRange)range;
@end

@implementation BlastDoorLinkAttribute

- (_NSRange)range
{
  v2 = sub_21454F43C(self, a2, OBJC_IVAR___BlastDoorLinkAttribute_linkAttribute);
  result.length = v3;
  result.location = v2;
  return result;
}

- (NSURL)link
{
  v3 = type metadata accessor for LinkAttribute(0);
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2146D8958();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213FB568C(self + OBJC_IVAR___BlastDoorLinkAttribute_linkAttribute[0], v7, type metadata accessor for LinkAttribute);
  (*(v9 + 32))(v12, &v7[*(v4 + 28)], v8);
  v13 = sub_2146D8898();
  (*(v9 + 8))(v12, v8);

  return v13;
}

- (BlastDoorLinkAttribute)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end