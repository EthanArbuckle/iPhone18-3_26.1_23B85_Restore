@interface ICTTAudioDocument
+ (id)unarchiveFromData:(id)data replicaID:(id)d;
- (BOOL)hasToplineSummary;
- (BOOL)isCallRecording;
- (ICTTAudioDocument)init;
- (ICTTAudioDocument)initWithReplicaID:(id)d compatibleDocument:(id)document;
- (NSArray)orderedFragmentUUIDs;
- (NSNumber)transcriptVersion;
- (id)archivedData;
- (unint64_t)callType;
- (unint64_t)mergeWithMergeableData:(id)data replicaID:(id)d;
- (void)setCallType:(unint64_t)type;
- (void)setDocument:(id)document;
- (void)setIsCallRecording:(BOOL)recording;
- (void)updateAfterLoadWithSubAttachmentIdentifierMap:(id)map;
@end

@implementation ICTTAudioDocument

- (ICTTAudioDocument)initWithReplicaID:(id)d compatibleDocument:(id)document
{
  v5 = sub_2150A3A00();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2150A39C0();
  documentCopy = document;
  return ICTTAudioDocument.init(replicaID:compatibleDocument:)(v7, document);
}

- (void)setDocument:(id)document
{
  v4 = *(&self->super.isa + OBJC_IVAR___ICTTAudioDocument_document);
  *(&self->super.isa + OBJC_IVAR___ICTTAudioDocument_document) = document;
  documentCopy = document;
}

- (id)archivedData
{
  selfCopy = self;
  document = [(ICTTAudioDocument *)selfCopy document];
  archivedData = [document archivedData];

  v5 = sub_2150A37B0();
  v7 = v6;

  v8 = sub_2150A3790();
  sub_214F7EDE4(v5, v7);

  return v8;
}

+ (id)unarchiveFromData:(id)data replicaID:(id)d
{
  v6 = sub_2150A3A00();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  dataCopy = data;
  dCopy = d;
  v12 = sub_2150A37B0();
  v14 = v13;

  sub_2150A39C0();
  swift_getObjCClassMetadata();
  v15 = sub_214F7835C();
  sub_214F7EDE4(v12, v14);
  (*(v7 + 8))(v9, v6);

  return v15;
}

- (unint64_t)mergeWithMergeableData:(id)data replicaID:(id)d
{
  v7 = sub_2150A3A00();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  dataCopy = data;
  dCopy = d;
  selfCopy = self;
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
  selfCopy = self;
  ICTTAudioDocument.orderedFragmentUUIDs.getter();

  sub_2150A3A00();
  v3 = sub_2150A4EB0();

  return v3;
}

- (void)updateAfterLoadWithSubAttachmentIdentifierMap:(id)map
{
  v4 = sub_2150A4920();
  selfCopy = self;
  sub_214F78B2C(v4);
}

- (NSNumber)transcriptVersion
{
  selfCopy = self;
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

  transcriptVersion = [(objc_class *)v5 transcriptVersion];

  return transcriptVersion;
}

- (ICTTAudioDocument)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)hasToplineSummary
{
  selfCopy = self;
  v3 = ICTTAudioDocument.hasToplineSummary.getter();

  return v3 & 1;
}

- (BOOL)isCallRecording
{
  selfCopy = self;
  v3 = ICTTAudioDocument.isCallRecording.getter();

  return v3 & 1;
}

- (void)setIsCallRecording:(BOOL)recording
{
  recordingCopy = recording;
  selfCopy = self;
  document = [(ICTTAudioDocument *)selfCopy document];
  rootObject = [document rootObject];

  if (!rootObject)
  {
LABEL_4:

    return;
  }

  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6)
  {
    v7 = v6;
    initWithBool_ = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
    [v7 setCallRecording_];
    swift_unknownObjectRelease();

    goto LABEL_4;
  }

  swift_unknownObjectRelease();
}

- (unint64_t)callType
{
  selfCopy = self;
  v3 = ICTTAudioDocument.callType.getter();

  return v3;
}

- (void)setCallType:(unint64_t)type
{
  selfCopy = self;
  document = [(ICTTAudioDocument *)selfCopy document];
  rootObject = [document rootObject];

  if (!rootObject)
  {
LABEL_4:

    return;
  }

  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6)
  {
    v7 = v6;
    initWithUnsignedInteger_ = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInteger_];
    [v7 setCallType_];
    swift_unknownObjectRelease();

    goto LABEL_4;
  }

  swift_unknownObjectRelease();
}

@end