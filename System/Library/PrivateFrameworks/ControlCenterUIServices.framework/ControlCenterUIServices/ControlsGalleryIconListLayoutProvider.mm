@interface ControlsGalleryIconListLayoutProvider
- (_TtC23ControlCenterUIServices37ControlsGalleryIconListLayoutProvider)init;
- (_TtC23ControlCenterUIServices37ControlsGalleryIconListLayoutProvider)initWithListLayouts:(id)layouts defaultLayout:(id)layout;
@end

@implementation ControlsGalleryIconListLayoutProvider

- (_TtC23ControlCenterUIServices37ControlsGalleryIconListLayoutProvider)init
{
  v3 = [objc_allocWithZone(type metadata accessor for ControlsGalleryIconListLayout()) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EDDD830, &qword_2442B78C8);
  inited = swift_initStackObject();
  v5 = MEMORY[0x277D666D0];
  *(inited + 16) = xmmword_2442B6DC0;
  v6 = *v5;
  *(inited + 32) = v6;
  *(inited + 40) = v3;
  v7 = v6;
  v8 = v3;
  sub_2442B3AD0(inited);
  swift_setDeallocating();
  sub_2442A6C94(inited + 32);
  type metadata accessor for SBIconLocation(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDDD820, &qword_2442B78C0);
  sub_2442A6C4C(&qword_27EDDD168, type metadata accessor for SBIconLocation);
  v9 = sub_2442B4818();

  v10 = [(SBHCustomIconListLayoutProvider *)self initWithListLayouts:v9];

  return v10;
}

- (_TtC23ControlCenterUIServices37ControlsGalleryIconListLayoutProvider)initWithListLayouts:(id)layouts defaultLayout:(id)layout
{
  type metadata accessor for SBIconLocation(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EDDD820, &qword_2442B78C0);
  sub_2442A6C4C(&qword_27EDDD168, type metadata accessor for SBIconLocation);
  sub_2442B4828();
  swift_unknownObjectRetain();
  v6 = sub_2442B4818();

  v9.receiver = self;
  v9.super_class = type metadata accessor for ControlsGalleryIconListLayoutProvider();
  v7 = [(SBHCustomIconListLayoutProvider *)&v9 initWithListLayouts:v6 defaultLayout:layout];

  swift_unknownObjectRelease();
  return v7;
}

@end