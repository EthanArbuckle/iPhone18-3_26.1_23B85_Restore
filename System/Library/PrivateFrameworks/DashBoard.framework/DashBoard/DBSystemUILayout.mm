@interface DBSystemUILayout
- (BOOL)hasDefrostPersistentElement;
- (BOOL)hasSecondaryContent;
- (CGRect)primaryContentFrame;
- (CGRect)secondaryContentFrame;
- (DBSystemUILayout)init;
- (NSNumber)persistentElements;
- (unint64_t)dualStatusBarSecondaryMaterial;
@end

@implementation DBSystemUILayout

- (CGRect)primaryContentFrame
{
  v2 = sub_24829328C(self, a2, sub_248292C80);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (BOOL)hasSecondaryContent
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE913F0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v14 - v4;
  v6 = sub_248381B00();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, *(&self->super.isa + OBJC_IVAR___DBSystemUILayout__systemUILayout) + *((*MEMORY[0x277D85000] & **(&self->super.isa + OBJC_IVAR___DBSystemUILayout__systemUILayout)) + 0x58), v6, v8);
  selfCopy = self;
  sub_248381AE0();
  (*(v7 + 8))(v10, v6);
  v12 = sub_248381AB0();
  LOBYTE(self) = (*(*(v12 - 8) + 48))(v5, 1, v12) != 1;
  sub_24822D578(v5, &qword_27EE913F0);

  return self;
}

- (CGRect)secondaryContentFrame
{
  v2 = sub_24829328C(self, a2, sub_2482932F0);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (NSNumber)persistentElements
{
  selfCopy = self;
  v3 = sub_2482936B8();

  return v3;
}

- (BOOL)hasDefrostPersistentElement
{
  selfCopy = self;
  v3 = sub_248293910();

  return v3 & 1;
}

- (DBSystemUILayout)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (unint64_t)dualStatusBarSecondaryMaterial
{
  v3 = sub_248381B00();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, *(&self->super.isa + OBJC_IVAR___DBSystemUILayout__systemUILayout) + *((*MEMORY[0x277D85000] & **(&self->super.isa + OBJC_IVAR___DBSystemUILayout__systemUILayout)) + 0x58), v3, v5);
  selfCopy = self;
  v9 = sub_248381AF0();
  v11 = v10;
  (*(v4 + 8))(v7, v3);

  if (v11)
  {
    return 0;
  }

  else
  {
    return v9;
  }
}

@end