@interface DOCEjectButton
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (CGRect)frame;
- (_TtC26DocumentManagerExecutables14DOCEjectButton)initWithFrame:(CGRect)frame;
- (void)didMoveToWindow;
- (void)setFrame:(CGRect)frame;
- (void)traitCollectionDidChange:(id)change;
- (void)updateConfiguration;
@end

@implementation DOCEjectButton

- (CGRect)frame
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for DOCEjectButton();
  [(DOCEjectButton *)&v6 frame];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8 = type metadata accessor for DOCEjectButton();
  v19.receiver = self;
  v19.super_class = v8;
  selfCopy = self;
  [(DOCEjectButton *)&v19 frame];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18.receiver = selfCopy;
  v18.super_class = v8;
  [(DOCEjectButton *)&v18 setFrame:x, y, width, height];
  [(DOCEjectButton *)selfCopy frame];
  v21.origin.x = v11;
  v21.origin.y = v13;
  v21.size.width = v15;
  v21.size.height = v17;
  if (!CGRectEqualToRect(v20, v21))
  {
    [(DOCEjectButton *)selfCopy setNeedsLayout];
  }
}

- (void)updateConfiguration
{
  selfCopy = self;
  DOCEjectButton.updateConfiguration()();
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  v9.is_nil = selfCopy;
  v7 = selfCopy;
  v9.value.super.isa = change;
  DOCEjectButton.traitCollectionDidChange(_:)(v9);
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for DOCEjectButton();
  v2 = v3.receiver;
  [(DOCEjectButton *)&v3 didMoveToWindow];
  if (*(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables14DOCEjectButton_iconUpdateNeeded) == 1)
  {
    [v2 setNeedsUpdateConfiguration];
    [v2 updateConfiguration];
  }
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  selfCopy = self;
  [(DOCEjectButton *)selfCopy bounds];
  v7 = v18.origin.x;
  v8 = v18.origin.y;
  width = v18.size.width;
  height = v18.size.height;
  v11 = CGRectGetWidth(v18);
  v19.origin.x = v7;
  v19.origin.y = v8;
  v19.size.width = width;
  v19.size.height = height;
  v12 = CGRectGetHeight(v19);
  if (v11 > v12)
  {
    v12 = v11;
  }

  v13 = fmax(v12, 45.0) * 0.5;
  v20.origin.x = v7;
  v20.origin.y = v8;
  v20.size.width = width;
  v20.size.height = height;
  v14 = CGRectGetMidX(v20) - v13;
  v21.origin.x = v7;
  v21.origin.y = v8;
  v21.size.width = width;
  v21.size.height = height;
  v22.origin.y = CGRectGetMidY(v21) - v13;
  v22.size.width = v13 + v13;
  v22.origin.x = v14;
  v22.size.height = v13 + v13;
  v24.origin.x = v7;
  v24.origin.y = v8;
  v24.size.width = width;
  v24.size.height = height;
  v23 = CGRectUnion(v22, v24);
  v17.x = x;
  v17.y = y;
  v15 = CGRectContainsPoint(v23, v17);

  return v15;
}

- (_TtC26DocumentManagerExecutables14DOCEjectButton)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end