@interface PlayerSourcedUserAction
- (id)timeStamp;
- (uint64_t)setTimeStamp:(uint64_t)a3;
@end

@implementation PlayerSourcedUserAction

- (id)timeStamp
{
  v0 = swift_unknownObjectRetain();

  return v0;
}

- (uint64_t)setTimeStamp:(uint64_t)a3
{
  *(a1 + 40) = a3;
  swift_unknownObjectRetain();

  return swift_unknownObjectRelease();
}

@end