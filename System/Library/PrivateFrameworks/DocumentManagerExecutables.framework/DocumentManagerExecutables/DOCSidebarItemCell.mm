@interface DOCSidebarItemCell
- (BOOL)textFieldShouldBeginEditing:(id)editing;
- (void)ejectionStateDidChange;
- (void)textFieldDidBeginEditing:(id)editing;
- (void)textFieldDidEndEditing:(id)editing;
@end

@implementation DOCSidebarItemCell

- (void)textFieldDidBeginEditing:(id)editing
{
  editingCopy = editing;
  selfCopy = self;
  specialized DOCSidebarItemCell.textFieldDidBeginEditing(_:)();
}

- (void)textFieldDidEndEditing:(id)editing
{
  editingCopy = editing;
  selfCopy = self;
  DOCSidebarItemCell.textFieldDidEndEditing(_:)(editingCopy);
}

- (BOOL)textFieldShouldBeginEditing:(id)editing
{
  v4 = self + direct field offset for DOCSidebarItemCell.delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v4 + 1);
    swift_getObjectType();
    v6 = *(v5 + 32);
    selfCopy = self;
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
  selfCopy = self;
  DOCSidebarItemCell.ejectionStateDidChange()();
}

@end