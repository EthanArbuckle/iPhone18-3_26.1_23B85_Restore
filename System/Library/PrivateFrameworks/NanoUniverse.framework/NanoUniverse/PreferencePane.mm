@interface PreferencePane
+ (_TtC12NanoUniverse14PreferencePane)aegirRenderingPreferencePane;
+ (_TtC12NanoUniverse14PreferencePane)calliopeRenderingPreferencePane;
- (NSArray)panes;
- (NSDictionary)pickerOptions;
- (NSString)name;
- (_TtC12NanoUniverse14PreferencePane)init;
- (_TtC12NanoUniverse14PreferencePane)initWithName:(id)a3 panes:(id)a4;
- (_TtC12NanoUniverse14PreferencePane)initWithName:(id)a3 userDefaults:(id)a4 sliders:(id)a5 toggles:(id)a6 pickerOptions:(id)a7 pickerSelections:(id)a8;
- (_TtP12NanoUniverse22PreferencePaneDelegate_)delegate;
- (id)fractionValueForOption:(id)a3;
- (id)getValueForKey:(id)a3;
- (unsigned)changeSequence;
- (void)preferencePaneDidChangeWithPreference:(id)a3;
- (void)reset;
- (void)set:(id)a3 forKey:(id)a4;
- (void)setChangeSequence:(unsigned int)a3;
- (void)setName:(id)a3;
- (void)setPanes:(id)a3;
- (void)setPickerOptions:(id)a3;
@end

@implementation PreferencePane

+ (_TtC12NanoUniverse14PreferencePane)aegirRenderingPreferencePane
{
  if (qword_2810C3408 != -1)
  {
    swift_once();
  }

  v3 = qword_2810C3410;

  return v3;
}

- (id)fractionValueForOption:(id)a3
{
  v4 = sub_25B7167D0();
  v6 = v5;
  v7 = self;
  v8 = COERCE_DOUBLE(sub_25B6FA524(v4, v6));
  LOBYTE(v4) = v9;

  if (v4)
  {
    v10 = 0;
  }

  else
  {
    v10 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  }

  return v10;
}

+ (_TtC12NanoUniverse14PreferencePane)calliopeRenderingPreferencePane
{
  if (qword_2810C33F0 != -1)
  {
    swift_once();
  }

  v3 = qword_2810C33F8;

  return v3;
}

- (NSString)name
{
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = self;
  sub_25B7163B0();

  v4 = sub_25B7167A0();

  return v4;
}

- (void)setName:(id)a3
{
  sub_25B7167D0();
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = self;
  sub_25B7163C0();
}

- (NSArray)panes
{
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = self;
  sub_25B7163B0();

  if (v6)
  {
    type metadata accessor for PreferencePane();
    v4 = sub_25B716830();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setPanes:(id)a3
{
  if (a3)
  {
    type metadata accessor for PreferencePane();
    sub_25B716840();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v4 = self;
  sub_25B7163C0();
}

- (unsigned)changeSequence
{
  v3 = OBJC_IVAR____TtC12NanoUniverse14PreferencePane_changeSequence;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setChangeSequence:(unsigned int)a3
{
  v5 = OBJC_IVAR____TtC12NanoUniverse14PreferencePane_changeSequence;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (NSDictionary)pickerOptions
{
  v3 = OBJC_IVAR____TtC12NanoUniverse14PreferencePane_pickerOptions;
  swift_beginAccess();
  if (*(self + v3))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA4A208, &unk_25B7381A0);
    v4 = sub_25B716760();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setPickerOptions:(id)a3
{
  v3 = a3;
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA4A208, &unk_25B7381A0);
    v3 = sub_25B716770();
  }

  v5 = OBJC_IVAR____TtC12NanoUniverse14PreferencePane_pickerOptions;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = v3;
}

- (_TtP12NanoUniverse22PreferencePaneDelegate_)delegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (_TtC12NanoUniverse14PreferencePane)initWithName:(id)a3 panes:(id)a4
{
  v4 = sub_25B7167D0();
  v6 = v5;
  type metadata accessor for PreferencePane();
  v7 = sub_25B716840();
  PreferencePane.init(name:panes:)(v4, v6, v7);
  return result;
}

- (_TtC12NanoUniverse14PreferencePane)initWithName:(id)a3 userDefaults:(id)a4 sliders:(id)a5 toggles:(id)a6 pickerOptions:(id)a7 pickerSelections:(id)a8
{
  v9 = sub_25B7167D0();
  v11 = v10;
  v12 = sub_25B716770();
  v13 = sub_25B716770();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA4A208, &unk_25B7381A0);
  v14 = sub_25B716770();
  v15 = sub_25B716770();
  v16 = a4;
  return PreferencePane.init(name:userDefaults:sliders:toggles:pickerOptions:pickerSelections:)(v9, v11, a4, v12, v13, v14, v15);
}

- (id)getValueForKey:(id)a3
{
  v4 = sub_25B7167D0();
  v6 = v5;
  v7 = self;
  sub_25B6FA948(v4, v6, v16);

  v8 = v17;
  if (v17)
  {
    v9 = __swift_project_boxed_opaque_existential_0(v16, v17);
    v10 = *(v8 - 8);
    v11 = *(v10 + 64);
    MEMORY[0x28223BE20](v9);
    v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v10 + 16))(v13);
    v14 = sub_25B716AE0();
    (*(v10 + 8))(v13, v8);
    __swift_destroy_boxed_opaque_existential_0(v16);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)set:(id)a3 forKey:(id)a4
{
  if (a3)
  {
    v6 = a4;
    v7 = self;
    swift_unknownObjectRetain();
    sub_25B7169E0();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v8 = a4;
    v9 = self;
  }

  sub_25B7167D0();

  sub_25B6FAD6C(v10);

  sub_25B6F6328(v10);
}

- (void)preferencePaneDidChangeWithPreference:(id)a3
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = a3;
  v7 = self;
  if (Strong)
  {
    [Strong preferencePaneDidChangeWithPreference_];
    swift_unknownObjectRelease();
  }

  v8 = OBJC_IVAR____TtC12NanoUniverse14PreferencePane_changeSequence;
  swift_beginAccess();
  ++*(v7 + v8);
}

- (void)reset
{
  v2 = self;
  sub_25B6FB18C();
}

- (_TtC12NanoUniverse14PreferencePane)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end