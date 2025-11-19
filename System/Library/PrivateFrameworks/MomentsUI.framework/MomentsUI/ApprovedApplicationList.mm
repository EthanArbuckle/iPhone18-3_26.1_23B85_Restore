@interface ApprovedApplicationList
- (NSArray)applications;
- (_TtC9MomentsUI23ApprovedApplicationList)init;
- (_TtC9MomentsUI23ApprovedApplicationList)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setApplications:(id)a3;
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

- (void)setApplications:(id)a3
{
  v3 = a3;
  if (a3)
  {
    type metadata accessor for ApprovedApplication();
    v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v5 = OBJC_IVAR____TtC9MomentsUI23ApprovedApplicationList_applications;
  swift_beginAccess();
  *(self + v5) = v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = *((*MEMORY[0x277D85000] & *self) + 0x58);
  v5 = a3;
  v8 = self;
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
  [v5 encodeObject:v6.super.isa forKey:v7];
  swift_unknownObjectRelease();
}

- (_TtC9MomentsUI23ApprovedApplicationList)initWithCoder:(id)a3
{
  v5 = OBJC_IVAR____TtC9MomentsUI23ApprovedApplicationList_applications;
  *(self + OBJC_IVAR____TtC9MomentsUI23ApprovedApplicationList_applications) = 0;
  type metadata accessor for ApprovedApplication();
  v6 = a3;
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