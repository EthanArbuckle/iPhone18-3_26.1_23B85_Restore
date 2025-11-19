@interface ICTTAudioDocument
+ (id)unarchiveFromData:(id)a3 replicaID:(id)a4;
- (BOOL)hasToplineSummary;
- (BOOL)isCallRecording;
- (ICTTAudioDocument)init;
- (ICTTAudioDocument)initWithReplicaID:(id)a3 compatibleDocument:(id)a4;
- (NSArray)orderedFragmentUUIDs;
- (NSNumber)transcriptVersion;
- (id)archivedData;
- (unint64_t)callType;
- (unint64_t)mergeWithMergeableData:(id)a3 replicaID:(id)a4;
- (void)setCallType:(unint64_t)a3;
- (void)setDocument:(id)a3;
- (void)setIsCallRecording:(BOOL)a3;
- (void)updateAfterLoadWithSubAttachmentIdentifierMap:(id)a3;
@end

@implementation ICTTAudioDocument

- (ICTTAudioDocument)initWithReplicaID:(id)a3 compatibleDocument:(id)a4
{
  v5 = sub_2150A3A00();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2150A39C0();
  v8 = a4;
  return ICTTAudioDocument.init(replicaID:compatibleDocument:)(v7, a4);
}

- (void)setDocument:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR___ICTTAudioDocument_document);
  *(&self->super.isa + OBJC_IVAR___ICTTAudioDocument_document) = a3;
  v3 = a3;
}

- (id)archivedData
{
  v2 = self;
  v3 = [(ICTTAudioDocument *)v2 document];
  v4 = [v3 archivedData];

  v5 = sub_2150A37B0();
  v7 = v6;

  v8 = sub_2150A3790();
  sub_214F7EDE4(v5, v7);

  return v8;
}

+ (id)unarchiveFromData:(id)a3 replicaID:(id)a4
{
  v6 = sub_2150A3A00();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a3;
  v11 = a4;
  v12 = sub_2150A37B0();
  v14 = v13;

  sub_2150A39C0();
  swift_getObjCClassMetadata();
  v15 = sub_214F7835C();
  sub_214F7EDE4(v12, v14);
  (*(v7 + 8))(v9, v6);

  return v15;
}

- (unint64_t)mergeWithMergeableData:(id)a3 replicaID:(id)a4
{
  v7 = sub_2150A3A00();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a3;
  v12 = a4;
  v13 = self;
  v14 = sub_2150A37B0();
  v16 = v15;

  sub_2150A39C0();
  v17 = ICTTAudioDocument.merge(withMergeableData:replicaID:)();
  sub_214F7EDE4(v14, v16);

  (*(v8 + 8))(v10, v7);
  return v17;
}

- (NSArray)orderedFragmentUUIDs
{
  v2 = self;
  ICTTAudioDocument.orderedFragmentUUIDs.getter();

  sub_2150A3A00();
  v3 = sub_2150A4EB0();

  return v3;
}

- (void)updateAfterLoadWithSubAttachmentIdentifierMap:(id)a3
{
  v4 = sub_2150A4920();
  v5 = self;
  sub_214F78B2C(v4);
}

- (NSNumber)transcriptVersion
{
  v2 = self;
  result = ICTTAudioDocument.orderedFragments.getter();
  if (result >> 62)
  {
    v6 = result;
    v7 = sub_2150A59D0();
    result = v6;
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_8:
    v5 = 0;
    goto LABEL_9;
  }

  if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x216062780](0, result);
  }

  else
  {
    if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v4 = result[4].super.super.isa;
  }

  v5 = v4;
LABEL_9:

  v8 = [(objc_class *)v5 transcriptVersion];

  return v8;
}

- (ICTTAudioDocument)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)hasToplineSummary
{
  v2 = self;
  v3 = ICTTAudioDocument.hasToplineSummary.getter();

  return v3 & 1;
}

- (BOOL)isCallRecording
{
  v2 = self;
  v3 = ICTTAudioDocument.isCallRecording.getter();

  return v3 & 1;
}

- (void)setIsCallRecording:(BOOL)a3
{
  v3 = a3;
  v9 = self;
  v4 = [(ICTTAudioDocument *)v9 document];
  v5 = [v4 rootObject];

  if (!v5)
  {
LABEL_4:

    return;
  }

  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6)
  {
    v7 = v6;
    v8 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
    [v7 setCallRecording_];
    swift_unknownObjectRelease();

    goto LABEL_4;
  }

  swift_unknownObjectRelease();
}

- (unint64_t)callType
{
  v2 = self;
  v3 = ICTTAudioDocument.callType.getter();

  return v3;
}

- (void)setCallType:(unint64_t)a3
{
  v9 = self;
  v4 = [(ICTTAudioDocument *)v9 document];
  v5 = [v4 rootObject];

  if (!v5)
  {
LABEL_4:

    return;
  }

  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6)
  {
    v7 = v6;
    v8 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInteger_];
    [v7 setCallType_];
    swift_unknownObjectRelease();

    goto LABEL_4;
  }

  swift_unknownObjectRelease();
}

@end