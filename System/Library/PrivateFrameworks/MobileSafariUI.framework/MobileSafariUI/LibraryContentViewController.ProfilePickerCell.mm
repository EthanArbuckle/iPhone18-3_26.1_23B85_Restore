@interface LibraryContentViewController.ProfilePickerCell
- (_TtCC14MobileSafariUI28LibraryContentViewController17ProfilePickerCell)initWithCoder:(id)a3;
- (void)_bridgedUpdateConfigurationUsingState:(id)a3;
- (void)handleTap;
@end

@implementation LibraryContentViewController.ProfilePickerCell

- (_TtCC14MobileSafariUI28LibraryContentViewController17ProfilePickerCell)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtCC14MobileSafariUI28LibraryContentViewController17ProfilePickerCell_profile) = 0;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtCC14MobileSafariUI28LibraryContentViewController17ProfilePickerCell_menu) = 0;
  result = sub_215A70CB0();
  __break(1u);
  return result;
}

- (void)handleTap
{
  v2 = self;
  sub_2159F8038();
}

- (void)_bridgedUpdateConfigurationUsingState:(id)a3
{
  v4 = sub_215A70100();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_215A700F0();
  v8 = self;
  v9 = sub_215A700E0();
  v10 = _s17ProfilePickerCellCMa();
  v13.receiver = v8;
  v13.super_class = v10;
  [(LibraryContentViewController.ProfilePickerCell *)&v13 _bridgedUpdateConfigurationUsingState:v9];

  v12[3] = sub_215A701B0();
  v12[4] = MEMORY[0x277D74C30];
  __swift_allocate_boxed_opaque_existential_1(v12);
  sub_2159F839C();
  MEMORY[0x2160734E0](v12);
  sub_2159F863C();
  sub_215A70A20();

  (*(v5 + 8))(v7, v4);
}

@end