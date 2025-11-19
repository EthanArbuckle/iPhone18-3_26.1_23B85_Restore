@interface FMNearbyInteractionLocalizerContext
- (NSString)description;
- (_TtC11FMFindingUI35FMNearbyInteractionLocalizerContext)init;
- (void)session:(id)a3 didDiscoverNearbyObject:(id)a4;
- (void)session:(id)a3 didInvalidateWithError:(id)a4;
- (void)session:(id)a3 didRemoveNearbyObjects:(id)a4 withReason:(int64_t)a5;
- (void)session:(id)a3 didUpdateAlgorithmConvergence:(id)a4 forObject:(id)a5;
- (void)session:(id)a3 didUpdateFrame:(id)a4;
- (void)session:(id)a3 didUpdateNearbyObjects:(id)a4;
- (void)session:(id)a3 object:(id)a4 didUpdateRegion:(id)a5 previousRegion:(id)a6;
- (void)session:(id)a3 suspendedWithReason:(int64_t)a4;
- (void)session:(id)a3 suspensionReasonEnded:(int64_t)a4 isNoLongerSuspended:(BOOL)a5;
@end

@implementation FMNearbyInteractionLocalizerContext

- (NSString)description
{
  v2 = self;
  sub_24A55D3DC();

  v3 = sub_24A62EBE4();

  return v3;
}

- (void)session:(id)a3 didDiscoverNearbyObject:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_24A55D754(v6, v7);
}

- (void)session:(id)a3 didUpdateNearbyObjects:(id)a4
{
  sub_24A50D7EC(0, &qword_27EF50208, 0x277CD8A58);
  v6 = sub_24A62ED64();
  v7 = a3;
  v8 = self;
  sub_24A5660B0(v6);
}

- (void)session:(id)a3 object:(id)a4 didUpdateRegion:(id)a5 previousRegion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = self;
  sub_24A566DF4(v11, a5, a6);
}

- (void)session:(id)a3 didRemoveNearbyObjects:(id)a4 withReason:(int64_t)a5
{
  sub_24A50D7EC(0, &qword_27EF50208, 0x277CD8A58);
  v8 = sub_24A62ED64();
  v9 = a3;
  v10 = self;
  sub_24A5676CC(v8, a5);
}

- (void)session:(id)a3 didUpdateAlgorithmConvergence:(id)a4 forObject:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  sub_24A567CB4(v9, a5);
}

- (void)session:(id)a3 suspensionReasonEnded:(int64_t)a4 isNoLongerSuspended:(BOOL)a5
{
  v8 = a3;
  v9 = self;
  sub_24A568ABC(a4, a5);
}

- (void)session:(id)a3 suspendedWithReason:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  sub_24A568E74(a4);
}

- (void)session:(id)a3 didInvalidateWithError:(id)a4
{
  v6 = a3;
  v8 = a4;
  v7 = self;
  sub_24A5692FC(v8);
}

- (_TtC11FMFindingUI35FMNearbyInteractionLocalizerContext)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)session:(id)a3 didUpdateFrame:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_24A561B7C(v6, v7);
}

@end