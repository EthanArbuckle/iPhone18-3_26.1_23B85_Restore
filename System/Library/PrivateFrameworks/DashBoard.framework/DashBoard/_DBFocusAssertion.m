@interface _DBFocusAssertion
- (NSString)debugDescription;
- (NSString)description;
- (_TtC9DashBoardP33_21D9A798E2D51C24F8F346867CF839AF17_DBFocusAssertion)init;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (void)invalidate;
- (void)invalidateWithHeading:(unint64_t)a3 focusedFrame:(CGRect)a4;
- (void)scene:(id)a3 clientDidConnect:(id)a4;
- (void)sceneContentStateDidChange:(id)a3;
@end

@implementation _DBFocusAssertion

- (void)invalidate
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = self;
    sub_24814D350(v5, 0, 0.0, 0.0, 0.0, 0.0);
  }
}

- (id)succinctDescriptionBuilder
{
  v2 = self;
  v3 = sub_24814FD30();

  return v3;
}

- (NSString)description
{
  v2 = self;
  result = [(_DBFocusAssertion *)v2 succinctDescription];
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
  v2 = self;
  result = [(_DBFocusAssertion *)v2 succinctDescriptionBuilder];
  if (result)
  {
    v4 = result;
    v5 = [result build];

    if (v5)
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

- (void)sceneContentStateDidChange:(id)a3
{
  v4 = a3;
  v5 = self;
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
  v2 = self;
  result = [(_DBFocusAssertion *)v2 descriptionWithMultilinePrefix:0];
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

- (id)descriptionWithMultilinePrefix:(id)a3
{
  if (a3)
  {
    v4 = sub_248383960();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = self;
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

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v3 = [(_DBFocusAssertion *)self succinctDescriptionBuilder];

  return v3;
}

- (void)invalidateWithHeading:(unint64_t)a3 focusedFrame:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = self;
    sub_24814D350(v12, a3, x, y, width, height);
  }
}

- (void)scene:(id)a3 clientDidConnect:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_248296F34(v6);
}

@end