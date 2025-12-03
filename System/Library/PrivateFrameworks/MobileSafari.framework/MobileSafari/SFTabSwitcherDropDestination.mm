@interface SFTabSwitcherDropDestination
- (SFTabSwitcherDropDestination)init;
- (SFTabSwitcherDropDestination)initWithPage:(id)page section:(id)section droppingBefore:(id)before;
- (SFTabSwitcherItem)item;
- (SFTabSwitcherPage)page;
- (SFTabSwitcherSection)section;
@end

@implementation SFTabSwitcherDropDestination

- (SFTabSwitcherDropDestination)initWithPage:(id)page section:(id)section droppingBefore:(id)before
{
  pageCopy = page;
  sectionCopy = section;
  beforeCopy = before;
  v10 = sub_18BA93488(pageCopy, sectionCopy, before);

  return v10;
}

- (SFTabSwitcherPage)page
{
  selfCopy = self;
  v3 = sub_18BA89FE8();

  return v3;
}

- (SFTabSwitcherSection)section
{
  selfCopy = self;
  v3 = sub_18BA8A1BC();

  return v3;
}

- (SFTabSwitcherItem)item
{
  selfCopy = self;
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