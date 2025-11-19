@interface AnyGestureNodeShim
- (BOOL)abort:(id *)a3;
- (BOOL)disallowExclusionWithUnresolvedFailureRequirements;
- (BOOL)ensureUpdated:(id *)a3;
- (BOOL)failWithReason:(id)a3 error:(id *)a4;
- (BOOL)isBlocked;
- (BOOL)isDisabled;
- (BOOL)updateWithValue:(id)a3 isFinal:(BOOL)a4 error:(id *)a5;
- (GFGestureNodeContainer)container;
- (GFGestureNodeCoordinator)coordinator;
- (GFGestureNodeDelegate)delegate;
- (NSError)failureReason;
- (NSString)identifier;
- (NSString)tag;
- (_TtC8Gestures18AnyGestureNodeShim)init;
- (int64_t)phase;
- (void)setContainer:(id)a3;
- (void)setDisabled:(BOOL)a3;
- (void)setDisallowExclusionWithUnresolvedFailureRequirements:(BOOL)a3;
- (void)setTag:(id)a3;
- (void)setTracking:(BOOL)a3 eventsWithIdentifiers:(id)a4;
@end

@implementation AnyGestureNodeShim

- (void)setContainer:(id)a3
{
  v4 = swift_unknownObjectWeakAssign();
  v5 = (*((*MEMORY[0x1E69E7D40] & *self) + 0x78))(v4);
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectRetain();
  if (Strong)
  {
    v7 = self;
    swift_unknownObjectRelease();
    Strong = &off_1F01A5718;
    v8 = self;
  }

  else
  {
    v8 = 0;
  }

  v9 = *(*v5 + 200);
  v10 = self;
  v9(v8, Strong);

  swift_unknownObjectRelease();
}

- (void)setDisabled:(BOOL)a3
{
  v4 = self;
  sub_18E683934(a3);
}

- (void)setDisallowExclusionWithUnresolvedFailureRequirements:(BOOL)a3
{
  v4 = self;
  sub_18E6828C8(a3);
}

- (NSString)tag
{
  v2 = (*((*MEMORY[0x1E69E7D40] & *self) + 0x78))();
  if (*(v2 + 32))
  {
    v3 = *(v2 + 24);
    v4 = *(v2 + 32);

    v5 = sub_18E72AFC8();
  }

  else
  {

    v5 = 0;
  }

  return v5;
}

- (void)setTracking:(BOOL)a3 eventsWithIdentifiers:(id)a4
{
  sub_18E685090();
  v6 = sub_18E72B178();
  v7 = self;
  sub_18E6850DC(a3, v6);
}

- (NSError)failureReason
{
  v2 = self;
  v3 = sub_18E68A150();

  if (v3)
  {
    v4 = sub_18E72AD28();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (GFGestureNodeCoordinator)coordinator
{
  Strong = swift_unknownObjectUnownedLoadStrong();

  return Strong;
}

- (BOOL)isDisabled
{
  v2 = (*((*MEMORY[0x1E69E7D40] & *self) + 0x78))();
  (*(*v2 + 168))(&v4);

  return v4 & 1;
}

- (BOOL)isBlocked
{
  v3 = *(*(*((*MEMORY[0x1E69E7D40] & *self) + 0x78))() + 296);
  v4 = self;
  v3(&v7);

  v5 = v8 == 0;
  sub_18E69E818(v7, v8);
  return v5;
}

- (void)setTag:(id)a3
{
  if (a3)
  {
    v4 = sub_18E72AFD8();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = (*((*MEMORY[0x1E69E7D40] & *self) + 0x78))();
  v8 = *(v7 + 32);
  if (v6)
  {
    v9 = v4;
  }

  else
  {
    v9 = 0;
  }

  *(v7 + 24) = v9;
  *(v7 + 32) = v6;
}

- (NSString)identifier
{
  v3 = *((*((*MEMORY[0x1E69E7D40] & *self) + 0x78))() + 16);
  v4 = self;

  sub_18E72B778();

  v5 = sub_18E72AFC8();

  return v5;
}

- (GFGestureNodeDelegate)delegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (GFGestureNodeContainer)container
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (int64_t)phase
{
  result = sub_18E72B6E8();
  __break(1u);
  return result;
}

- (BOOL)disallowExclusionWithUnresolvedFailureRequirements
{
  v2 = (*((*MEMORY[0x1E69E7D40] & *self) + 0x78))();
  (*(*v2 + 168))(&v5);

  return (v5 >> 1) & 1;
}

- (BOOL)updateWithValue:(id)a3 isFinal:(BOOL)a4 error:(id *)a5
{
  swift_unknownObjectRetain();
  sub_18E72B458();
  swift_unknownObjectRelease();
  result = sub_18E72B6E8();
  __break(1u);
  return result;
}

- (BOOL)failWithReason:(id)a3 error:(id *)a4
{
  result = sub_18E72B6E8();
  __break(1u);
  return result;
}

- (BOOL)abort:(id *)a3
{
  result = sub_18E72B6E8();
  __break(1u);
  return result;
}

- (BOOL)ensureUpdated:(id *)a3
{
  result = sub_18E72B6E8();
  __break(1u);
  return result;
}

- (_TtC8Gestures18AnyGestureNodeShim)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end