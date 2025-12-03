@interface FMNearbyInteractionLocalizerContext
- (NSString)description;
- (_TtC11FMFindingUI35FMNearbyInteractionLocalizerContext)init;
- (void)session:(id)session didDiscoverNearbyObject:(id)object;
- (void)session:(id)session didInvalidateWithError:(id)error;
- (void)session:(id)session didRemoveNearbyObjects:(id)objects withReason:(int64_t)reason;
- (void)session:(id)session didUpdateAlgorithmConvergence:(id)convergence forObject:(id)object;
- (void)session:(id)session didUpdateFrame:(id)frame;
- (void)session:(id)session didUpdateNearbyObjects:(id)objects;
- (void)session:(id)session object:(id)object didUpdateRegion:(id)region previousRegion:(id)previousRegion;
- (void)session:(id)session suspendedWithReason:(int64_t)reason;
- (void)session:(id)session suspensionReasonEnded:(int64_t)ended isNoLongerSuspended:(BOOL)suspended;
@end

@implementation FMNearbyInteractionLocalizerContext

- (NSString)description
{
  selfCopy = self;
  sub_24A55D3DC();

  v3 = sub_24A62EBE4();

  return v3;
}

- (void)session:(id)session didDiscoverNearbyObject:(id)object
{
  sessionCopy = session;
  objectCopy = object;
  selfCopy = self;
  sub_24A55D754(sessionCopy, objectCopy);
}

- (void)session:(id)session didUpdateNearbyObjects:(id)objects
{
  sub_24A50D7EC(0, &qword_27EF50208, 0x277CD8A58);
  v6 = sub_24A62ED64();
  sessionCopy = session;
  selfCopy = self;
  sub_24A5660B0(v6);
}

- (void)session:(id)session object:(id)object didUpdateRegion:(id)region previousRegion:(id)previousRegion
{
  sessionCopy = session;
  objectCopy = object;
  regionCopy = region;
  previousRegionCopy = previousRegion;
  selfCopy = self;
  sub_24A566DF4(objectCopy, region, previousRegion);
}

- (void)session:(id)session didRemoveNearbyObjects:(id)objects withReason:(int64_t)reason
{
  sub_24A50D7EC(0, &qword_27EF50208, 0x277CD8A58);
  v8 = sub_24A62ED64();
  sessionCopy = session;
  selfCopy = self;
  sub_24A5676CC(v8, reason);
}

- (void)session:(id)session didUpdateAlgorithmConvergence:(id)convergence forObject:(id)object
{
  sessionCopy = session;
  convergenceCopy = convergence;
  objectCopy = object;
  selfCopy = self;
  sub_24A567CB4(convergenceCopy, object);
}

- (void)session:(id)session suspensionReasonEnded:(int64_t)ended isNoLongerSuspended:(BOOL)suspended
{
  sessionCopy = session;
  selfCopy = self;
  sub_24A568ABC(ended, suspended);
}

- (void)session:(id)session suspendedWithReason:(int64_t)reason
{
  sessionCopy = session;
  selfCopy = self;
  sub_24A568E74(reason);
}

- (void)session:(id)session didInvalidateWithError:(id)error
{
  sessionCopy = session;
  errorCopy = error;
  selfCopy = self;
  sub_24A5692FC(errorCopy);
}

- (_TtC11FMFindingUI35FMNearbyInteractionLocalizerContext)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)session:(id)session didUpdateFrame:(id)frame
{
  sessionCopy = session;
  frameCopy = frame;
  selfCopy = self;
  sub_24A561B7C(sessionCopy, frameCopy);
}

@end