@interface ApprovedApplicationList
- (NSArray)applications;
- (_TtC9MomentsUI23ApprovedApplicationList)init;
- (_TtC9MomentsUI23ApprovedApplicationList)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
- (void)setApplications:(id)applications;
@end

@implementation ApprovedApplicationList

- (NSArray)applications
{
  v3 = OBJC_IVAR____TtC9MomentsUI23ApprovedApplicationList_applications;
  swift_beginAccess();
  if (*(self + v3))
  {
    type metadata accessor for ApprovedApplication();

    v4.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

- (void)setApplications:(id)applications
{
  applicationsCopy = applications;
  if (applications)
  {
    type metadata accessor for ApprovedApplication();
    applicationsCopy = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v5 = OBJC_IVAR____TtC9MomentsUI23ApprovedApplicationList_applications;
  swift_beginAccess();
  *(self + v5) = applicationsCopy;
}

- (void)encodeWithCoder:(id)coder
{
  v4 = *((*MEMORY[0x277D85000] & *self) + 0x58);
  coderCopy = coder;
  selfCopy = self;
  if (v4())
  {
    type metadata accessor for ApprovedApplication();
    v6.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v6.super.isa = 0;
  }

  v7 = MEMORY[0x21CE91FC0](0x746163696C707061, 0xEC000000736E6F69);
  [coderCopy encodeObject:v6.super.isa forKey:v7];
  swift_unknownObjectRelease();
}

- (_TtC9MomentsUI23ApprovedApplicationList)initWithCoder:(id)coder
{
  v5 = OBJC_IVAR____TtC9MomentsUI23ApprovedApplicationList_applications;
  *(self + OBJC_IVAR____TtC9MomentsUI23ApprovedApplicationList_applications) = 0;
  type metadata accessor for ApprovedApplication();
  coderCopy = coder;
  v7 = NSCoder.decodeArrayOfObjects<A>(ofClass:forKey:)();
  swift_beginAccess();
  *(self + v5) = v7;

  v10.receiver = self;
  v10.super_class = type metadata accessor for ApprovedApplicationList();
  v8 = [(ApprovedApplicationList *)&v10 init];

  return v8;
}

- (_TtC9MomentsUI23ApprovedApplicationList)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end