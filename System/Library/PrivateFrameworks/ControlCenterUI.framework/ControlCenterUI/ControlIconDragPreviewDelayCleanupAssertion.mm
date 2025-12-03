@interface ControlIconDragPreviewDelayCleanupAssertion
- (NSString)description;
- (_TtC15ControlCenterUI43ControlIconDragPreviewDelayCleanupAssertion)init;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (void)invalidate;
@end

@implementation ControlIconDragPreviewDelayCleanupAssertion

- (void)invalidate
{
  selfCopy = self;
  sub_21EA4BFEC();
}

- (NSString)description
{
  selfCopy = self;
  sub_21EA4C56C();

  v3 = sub_21EAA8DC0();

  return v3;
}

- (id)succinctDescription
{
  v3 = objc_allocWithZone(MEMORY[0x277CF0C00]);
  selfCopy = self;
  result = [v3 initWithObject_];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v6 = result;
  build = [result build];

  if (!build)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = objc_allocWithZone(MEMORY[0x277CF0C00]);
  selfCopy = self;
  result = [v3 initWithObject_];
  if (result)
  {
    v6 = result;

    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  if (prefix)
  {
    sub_21EAA8E00();
  }

  selfCopy = self;
  sub_21EA4C56C();

  v5 = sub_21EAA8DC0();

  return v5;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  if (prefix)
  {
    sub_21EAA8E00();
  }

  v4 = objc_allocWithZone(MEMORY[0x277CF0C00]);
  selfCopy = self;
  result = [v4 initWithObject_];
  if (result)
  {
    v7 = result;
    v8 = sub_21EAA8DC0();
    v9 = sub_21EAA8DC0();
    [v7 appendString:v8 withName:v9];

    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (_TtC15ControlCenterUI43ControlIconDragPreviewDelayCleanupAssertion)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end