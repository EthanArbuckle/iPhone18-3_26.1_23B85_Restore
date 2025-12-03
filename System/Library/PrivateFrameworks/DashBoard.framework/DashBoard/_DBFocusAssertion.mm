@interface _DBFocusAssertion
- (NSString)debugDescription;
- (NSString)description;
- (_TtC9DashBoardP33_21D9A798E2D51C24F8F346867CF839AF17_DBFocusAssertion)init;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (void)invalidate;
- (void)invalidateWithHeading:(unint64_t)heading focusedFrame:(CGRect)frame;
- (void)scene:(id)scene clientDidConnect:(id)connect;
- (void)sceneContentStateDidChange:(id)change;
@end

@implementation _DBFocusAssertion

- (void)invalidate
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    selfCopy = self;
    sub_24814D350(selfCopy, 0, 0.0, 0.0, 0.0, 0.0);
  }
}

- (id)succinctDescriptionBuilder
{
  selfCopy = self;
  v3 = sub_24814FD30();

  return v3;
}

- (NSString)description
{
  selfCopy = self;
  result = [(_DBFocusAssertion *)selfCopy succinctDescription];
  if (result)
  {
    v4 = result;

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (id)succinctDescription
{
  selfCopy = self;
  result = [(_DBFocusAssertion *)selfCopy succinctDescriptionBuilder];
  if (result)
  {
    v4 = result;
    build = [result build];

    if (build)
    {
      sub_248383960();

      v6 = sub_248383930();
    }

    else
    {

      v6 = 0;
    }

    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (void)sceneContentStateDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_248163D50();
}

- (_TtC9DashBoardP33_21D9A798E2D51C24F8F346867CF839AF17_DBFocusAssertion)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (NSString)debugDescription
{
  selfCopy = self;
  result = [(_DBFocusAssertion *)selfCopy descriptionWithMultilinePrefix:0];
  if (result)
  {
    v4 = result;

    return v4;
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
    v4 = sub_248383960();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  selfCopy = self;
  sub_2482968AC(v4, v6);
  v9 = v8;

  if (v9)
  {
    v10 = sub_248383930();
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  succinctDescriptionBuilder = [(_DBFocusAssertion *)self succinctDescriptionBuilder];

  return succinctDescriptionBuilder;
}

- (void)invalidateWithHeading:(unint64_t)heading focusedFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    selfCopy = self;
    sub_24814D350(selfCopy, heading, x, y, width, height);
  }
}

- (void)scene:(id)scene clientDidConnect:(id)connect
{
  sceneCopy = scene;
  connectCopy = connect;
  selfCopy = self;
  sub_248296F34(sceneCopy);
}

@end