@interface FAPickerSelection
- (FAPickerSelection)init;
- (FAPickerSelection)initWithSelectedMember:(id)member;
@end

@implementation FAPickerSelection

- (FAPickerSelection)initWithSelectedMember:(id)member
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR___FAPickerSelection_isAddSelection) = 0;
  *(&self->super.isa + OBJC_IVAR___FAPickerSelection_selectedMember) = member;
  *(&self->super.isa + OBJC_IVAR___FAPickerSelection_isAddExistingTeenSelection) = 0;
  v8.receiver = self;
  v8.super_class = ObjectType;
  memberCopy = member;
  return [(FAPickerSelection *)&v8 init];
}

- (FAPickerSelection)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end