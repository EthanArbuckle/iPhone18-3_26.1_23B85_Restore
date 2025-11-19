@interface IconListLayoutProvider
- (_TtC15ControlCenterUI22IconListLayoutProvider)initWithListLayouts:(id)a3 defaultLayout:(id)a4;
@end

@implementation IconListLayoutProvider

- (_TtC15ControlCenterUI22IconListLayoutProvider)initWithListLayouts:(id)a3 defaultLayout:(id)a4
{
  type metadata accessor for SBIconLocation(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEDDC18);
  sub_21EA95240(&qword_28125B820, type metadata accessor for SBIconLocation);
  sub_21EAA8DB0();
  swift_unknownObjectRetain();
  v6 = sub_21EAA8DA0();

  v9.receiver = self;
  v9.super_class = type metadata accessor for IconListLayoutProvider();
  v7 = [(SBHCustomIconListLayoutProvider *)&v9 initWithListLayouts:v6 defaultLayout:a4];

  swift_unknownObjectRelease();
  return v7;
}

@end