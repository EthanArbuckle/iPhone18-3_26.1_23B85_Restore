@interface NDOSpecifierDataSource
- (NDOACController)hostingController;
- (NDOManager)ndoManager;
- (NDOSpecifierDataSource)init;
- (NDOSpecifierDataSource)initWithDefaultDevice:(BOOL)device;
- (NSArray)ndoSpecifiers;
- (NSString)serialNumber;
- (id)coverageDetailText:(id)text;
- (id)updateHandler;
- (void)loadSpecifiers;
- (void)offerPressed:(id)pressed;
- (void)setNdoManager:(id)manager;
- (void)setNdoSpecifiers:(id)specifiers;
- (void)setSerialNumber:(id)number;
- (void)setUpdateHandler:(id)handler;
- (void)updateNDOSpecifiersWithPolicy:(unint64_t)policy withCompletion:(id)completion;
@end

@implementation NDOSpecifierDataSource

- (NDOManager)ndoManager
{
  v3 = OBJC_IVAR___NDOSpecifierDataSource_ndoManager;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setNdoManager:(id)manager
{
  v5 = OBJC_IVAR___NDOSpecifierDataSource_ndoManager;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = manager;
  managerCopy = manager;
}

- (NSString)serialNumber
{
  v2 = (self + OBJC_IVAR___NDOSpecifierDataSource_serialNumber);
  swift_beginAccess();
  if (v2[1])
  {
    v3 = *v2;

    v4 = sub_25BDDFE38();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setSerialNumber:(id)number
{
  if (number)
  {
    v4 = sub_25BDDFE48();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = (self + OBJC_IVAR___NDOSpecifierDataSource_serialNumber);
  swift_beginAccess();
  v8 = v7[1];
  *v7 = v4;
  v7[1] = v6;
}

- (NSArray)ndoSpecifiers
{
  v3 = OBJC_IVAR___NDOSpecifierDataSource_ndoSpecifiers;
  swift_beginAccess();
  v4 = *(self + v3);
  sub_25BDABD64(0, &qword_27FBDD7A8, 0x277D3FAD8);

  v5 = sub_25BDDFEC8();

  return v5;
}

- (void)setNdoSpecifiers:(id)specifiers
{
  sub_25BDABD64(0, &qword_27FBDD7A8, 0x277D3FAD8);
  v4 = sub_25BDDFED8();
  v5 = OBJC_IVAR___NDOSpecifierDataSource_ndoSpecifiers;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = v4;
}

- (id)updateHandler
{
  v2 = (self + OBJC_IVAR___NDOSpecifierDataSource_updateHandler);
  swift_beginAccess();
  if (*v2)
  {
    v3 = v2[1];
    aBlock[4] = *v2;
    aBlock[5] = v3;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_25BDA2E38;
    aBlock[3] = &block_descriptor_30;
    v4 = _Block_copy(aBlock);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setUpdateHandler:(id)handler
{
  v4 = _Block_copy(handler);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_25BDC9470;
  }

  else
  {
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR___NDOSpecifierDataSource_updateHandler);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  *v6 = v4;
  v6[1] = v5;
  selfCopy = self;
  sub_25BDA8480(v7);
}

- (NDOACController)hostingController
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (NDOSpecifierDataSource)initWithDefaultDevice:(BOOL)device
{
  v4 = OBJC_IVAR___NDOSpecifierDataSource_ndoManager;
  *(self + v4) = [objc_allocWithZone(MEMORY[0x277D2D0C0]) init];
  v5 = (self + OBJC_IVAR___NDOSpecifierDataSource_serialNumber);
  *v5 = 0;
  v5[1] = 0;
  *(self + OBJC_IVAR___NDOSpecifierDataSource_ndoSpecifiers) = MEMORY[0x277D84F90];
  v6 = (self + OBJC_IVAR___NDOSpecifierDataSource_updateHandler);
  *v6 = 0;
  v6[1] = 0;
  swift_unknownObjectWeakInit();
  v8.receiver = self;
  v8.super_class = NDOSpecifierDataSource;
  return [(PSSpecifierDataSource *)&v8 init];
}

- (void)loadSpecifiers
{
  selfCopy = self;
  NDOSpecifierDataSource.loadSpecifiers()();
}

- (void)updateNDOSpecifiersWithPolicy:(unint64_t)policy withCompletion:(id)completion
{
  v5 = _Block_copy(completion);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  selfCopy = self;
  sub_25BDC8DA0(2, selfCopy, v7, sub_25BDAAFB0, v6);
}

- (NDOSpecifierDataSource)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)offerPressed:(id)pressed
{
  pressedCopy = pressed;
  selfCopy = self;
  sub_25BDC83D8(pressedCopy);
}

- (id)coverageDetailText:(id)text
{
  textCopy = text;
  selfCopy = self;
  sub_25BDC90BC(textCopy);

  v6 = sub_25BDDFE38();

  return v6;
}

@end