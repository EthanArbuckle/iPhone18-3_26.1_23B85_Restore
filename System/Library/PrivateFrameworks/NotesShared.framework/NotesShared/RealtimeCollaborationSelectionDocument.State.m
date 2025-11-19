@interface RealtimeCollaborationSelectionDocument.State
+ (NSDictionary)CRProperties;
- (_TtCC11NotesShared38RealtimeCollaborationSelectionDocument5State)initWithICCRCoder:(id)a3;
- (_TtCC11NotesShared38RealtimeCollaborationSelectionDocument5State)initWithIdentity:(id)a3 fields:(id)a4;
@end

@implementation RealtimeCollaborationSelectionDocument.State

+ (NSDictionary)CRProperties
{
  _s11NotesShared38RealtimeCollaborationSelectionDocumentC5StateC12crPropertiesSDySSSo12ICCRDataType_pGvgZ_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA427F0);
  v2 = sub_2150A4910();

  return v2;
}

- (_TtCC11NotesShared38RealtimeCollaborationSelectionDocument5State)initWithIdentity:(id)a3 fields:(id)a4
{
  ObjectType = swift_getObjectType();
  v6 = sub_2150A3A00();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2150A39C0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA427F0);
  sub_2150A4920();
  v10 = sub_2150A39A0();
  v11 = sub_2150A4910();

  v14.receiver = self;
  v14.super_class = ObjectType;
  v12 = [(ICCRObject *)&v14 initWithIdentity:v10 fields:v11];

  (*(v7 + 8))(v9, v6);
  return v12;
}

- (_TtCC11NotesShared38RealtimeCollaborationSelectionDocument5State)initWithICCRCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = a3;
  v5 = [(ICCRObject *)&v7 initWithICCRCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end