@interface DOCSidebarItemCell
- (BOOL)textFieldShouldBeginEditing:(id)a3;
- (void)ejectionStateDidChange;
- (void)textFieldDidBeginEditing:(id)a3;
- (void)textFieldDidEndEditing:(id)a3;
@end

@implementation DOCSidebarItemCell

- (void)textFieldDidBeginEditing:(id)a3
{
  v4 = a3;
  v5 = self;
  specialized DOCSidebarItemCell.textFieldDidBeginEditing(_:)();
}

- (void)textFieldDidEndEditing:(id)a3
{
  v4 = a3;
  v5 = self;
  DOCSidebarItemCell.textFieldDidEndEditing(_:)(v4);
}

- (BOOL)textFieldShouldBeginEditing:(id)a3
{
  v4 = self + direct field offset for DOCSidebarItemCell.delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v4 + 1);
    swift_getObjectType();
    v6 = *(v5 + 32);
    v7 = self;
    v8 = v6();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

- (void)ejectionStateDidChange
{
  v2 = self;
  DOCSidebarItemCell.ejectionStateDidChange()();
}

@end