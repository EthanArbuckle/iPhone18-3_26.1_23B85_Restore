@interface SFTabSwitcherDropDestination
- (SFTabSwitcherDropDestination)init;
- (SFTabSwitcherDropDestination)initWithPage:(id)a3 section:(id)a4 droppingBefore:(id)a5;
- (SFTabSwitcherItem)item;
- (SFTabSwitcherPage)page;
- (SFTabSwitcherSection)section;
@end

@implementation SFTabSwitcherDropDestination

- (SFTabSwitcherDropDestination)initWithPage:(id)a3 section:(id)a4 droppingBefore:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = sub_18BA93488(v7, v8, a5);

  return v10;
}

- (SFTabSwitcherPage)page
{
  v2 = self;
  v3 = sub_18BA89FE8();

  return v3;
}

- (SFTabSwitcherSection)section
{
  v2 = self;
  v3 = sub_18BA8A1BC();

  return v3;
}

- (SFTabSwitcherItem)item
{
  v2 = self;
  v3 = sub_18BA8A3A0();

  return v3;
}

- (SFTabSwitcherDropDestination)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end