@interface ActionGridItemModule
- (id)buildItemProviders;
- (void)actionSetValueSource:(id)source didUpdateValuesForActionBuilders:(id)builders;
@end

@implementation ActionGridItemModule

- (id)buildItemProviders
{
  selfCopy = self;
  v3 = sub_20D1040AC();

  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81AF70);
    sub_20CF156D0(&qword_28111FFB0, &qword_27C81AF70);
    v4 = sub_20D567CD8();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)actionSetValueSource:(id)source didUpdateValuesForActionBuilders:(id)builders
{
  sub_20CECF940(0, &qword_27C81AE50);
  sub_20CEF7F74(&qword_27C8217F0, &qword_27C81AE50);
  v5 = sub_20D567D08();
  if (swift_unknownObjectWeakLoadStrong())
  {
    selfCopy = self;
    sub_20CECDBF4(v5);
    swift_unknownObjectRelease();
  }
}

@end