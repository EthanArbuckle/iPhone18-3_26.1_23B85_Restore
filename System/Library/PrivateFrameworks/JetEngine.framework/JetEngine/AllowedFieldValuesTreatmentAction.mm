@interface AllowedFieldValuesTreatmentAction
- (_TtC9JetEngine33AllowedFieldValuesTreatmentAction)initWithField:(id)field configuration:(id)configuration;
- (id)performAction:(id)action context:(id)context;
@end

@implementation AllowedFieldValuesTreatmentAction

- (_TtC9JetEngine33AllowedFieldValuesTreatmentAction)initWithField:(id)field configuration:(id)configuration
{
  if (field)
  {
    v4 = sub_1AB460544();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = sub_1AB4602F4();
  return AllowedFieldValuesTreatmentAction.init(field:configuration:)(v4, v6, v7);
}

- (id)performAction:(id)action context:(id)context
{
  if (action)
  {
    contextCopy = context;
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_1AB461494();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v18, 0, sizeof(v18));
    contextCopy2 = context;
    selfCopy2 = self;
  }

  AllowedFieldValuesTreatmentAction.perform(_:context:)(v18, v19);

  sub_1AB014AC0(v18, &unk_1EB437E60);
  v10 = v20;
  if (v20)
  {
    v11 = __swift_project_boxed_opaque_existential_1Tm(v19, v20);
    v12 = *(v10 - 8);
    v13 = MEMORY[0x1EEE9AC00](v11);
    v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v12 + 16))(v15, v13);
    v16 = sub_1AB461D84();
    (*(v12 + 8))(v15, v10);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

@end