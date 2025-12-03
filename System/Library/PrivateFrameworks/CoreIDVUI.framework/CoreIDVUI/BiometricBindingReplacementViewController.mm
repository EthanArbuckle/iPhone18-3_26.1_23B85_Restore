@interface BiometricBindingReplacementViewController
- (_TtC9CoreIDVUI41BiometricBindingReplacementViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)cancelBarButtonClicked;
- (void)loadView;
- (void)performBinding;
@end

@implementation BiometricBindingReplacementViewController

- (void)loadView
{
  selfCopy = self;
  sub_2457AA748();
}

- (void)performBinding
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE297B0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  v6 = sub_245910D64();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  sub_245910D34();
  selfCopy = self;
  v8 = sub_245910D24();
  v9 = swift_allocObject();
  v10 = MEMORY[0x277D85700];
  v9[2] = v8;
  v9[3] = v10;
  v9[4] = selfCopy;
  sub_2458B90EC(0, 0, v5, &unk_2459171B0, v9);
}

- (void)cancelBarButtonClicked
{
  selfCopy = self;
  sub_2457AC850();
}

- (_TtC9CoreIDVUI41BiometricBindingReplacementViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end