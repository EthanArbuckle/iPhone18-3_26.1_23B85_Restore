@interface AnyGestureNodeShim
- (BOOL)abort:(id *)abort;
- (BOOL)disallowExclusionWithUnresolvedFailureRequirements;
- (BOOL)ensureUpdated:(id *)updated;
- (BOOL)failWithReason:(id)reason error:(id *)error;
- (BOOL)isBlocked;
- (BOOL)isDisabled;
- (BOOL)updateWithValue:(id)value isFinal:(BOOL)final error:(id *)error;
- (GFGestureNodeContainer)container;
- (GFGestureNodeCoordinator)coordinator;
- (GFGestureNodeDelegate)delegate;
- (NSError)failureReason;
- (NSString)identifier;
- (NSString)tag;
- (_TtC8Gestures18AnyGestureNodeShim)init;
- (int64_t)phase;
- (void)setContainer:(id)container;
- (void)setDisabled:(BOOL)disabled;
- (void)setDisallowExclusionWithUnresolvedFailureRequirements:(BOOL)requirements;
- (void)setTag:(id)tag;
- (void)setTracking:(BOOL)tracking eventsWithIdentifiers:(id)identifiers;
@end

@implementation AnyGestureNodeShim

- (void)setContainer:(id)container
{
  v4 = swift_unknownObjectWeakAssign();
  v5 = (*((*MEMORY[0x1E69E7D40] & *self) + 0x78))(v4);
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectRetain();
  if (Strong)
  {
    selfCopy = self;
    swift_unknownObjectRelease();
    Strong = &off_1F01A5718;
    selfCopy2 = self;
  }

  else
  {
    selfCopy2 = 0;
  }

  v9 = *(*v5 + 200);
  selfCopy3 = self;
  v9(selfCopy2, Strong);

  swift_unknownObjectRelease();
}

- (void)setDisabled:(BOOL)disabled
{
  selfCopy = self;
  sub_18E683934(disabled);
}

- (void)setDisallowExclusionWithUnresolvedFailureRequirements:(BOOL)requirements
{
  selfCopy = self;
  sub_18E6828C8(requirements);
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

- (void)setTracking:(BOOL)tracking eventsWithIdentifiers:(id)identifiers
{
  sub_18E685090();
  v6 = sub_18E72B178();
  selfCopy = self;
  sub_18E6850DC(tracking, v6);
}

- (NSError)failureReason
{
  selfCopy = self;
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
  selfCopy = self;
  v3(&v7);

  v5 = v8 == 0;
  sub_18E69E818(v7, v8);
  return v5;
}

- (void)setTag:(id)tag
{
  if (tag)
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
  selfCopy = self;

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

- (BOOL)updateWithValue:(id)value isFinal:(BOOL)final error:(id *)error
{
  swift_unknownObjectRetain();
  sub_18E72B458();
  swift_unknownObjectRelease();
  result = sub_18E72B6E8();
  __break(1u);
  return result;
}

- (BOOL)failWithReason:(id)reason error:(id *)error
{
  result = sub_18E72B6E8();
  __break(1u);
  return result;
}

- (BOOL)abort:(id *)abort
{
  result = sub_18E72B6E8();
  __break(1u);
  return result;
}

- (BOOL)ensureUpdated:(id *)updated
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