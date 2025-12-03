@interface PADInternalAuditDataRepository
- (_TtC10CoreIDVPAD30PADInternalAuditDataRepository)init;
- (void)storeClassifierResult:(id)result imageData:(id)data;
- (void)storeFACPoseBuffer:(__CVBuffer *)buffer identifier:(id)identifier values:(id)values;
- (void)storePRDBuffer:(__CVBuffer *)buffer name:(id)name;
- (void)storeTAValues:(id)values;
- (void)storeUnencryptedVideoFrom:(id)from;
@end

@implementation PADInternalAuditDataRepository

- (void)storeClassifierResult:(id)result imageData:(id)data
{
  if (data)
  {
    resultCopy = result;
    selfCopy = self;
    dataCopy = data;
    v10 = sub_2456CAED8();
    v12 = v11;
  }

  else
  {
    resultCopy2 = result;
    selfCopy2 = self;
    v10 = 0;
    v12 = 0xF000000000000000;
  }

  sub_2456B09D8(v17);
  if (*(&self->super.isa + OBJC_IVAR____TtC10CoreIDVPAD30PADInternalAuditDataRepository_dataRecorder))
  {
    v15[12] = v17[12];
    v15[13] = v17[13];
    v15[14] = v17[14];
    v16 = v18;
    v15[8] = v17[8];
    v15[9] = v17[9];
    v15[10] = v17[10];
    v15[11] = v17[11];
    v15[4] = v17[4];
    v15[5] = v17[5];
    v15[6] = v17[6];
    v15[7] = v17[7];
    v15[0] = v17[0];
    v15[1] = v17[1];
    v15[2] = v17[2];
    v15[3] = v17[3];
    sub_24569CE7C(v15, v10, v12);
  }

  sub_2456A52F8(v10, v12);

  sub_245697AFC(v17);
}

- (void)storeUnencryptedVideoFrom:(id)from
{
  v4 = sub_2456CAE98();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2456CAE68();
  if (*(&self->super.isa + OBJC_IVAR____TtC10CoreIDVPAD30PADInternalAuditDataRepository_dataRecorder))
  {
    selfCopy = self;
    sub_2456A0F78();
  }

  else
  {
    selfCopy2 = self;
  }

  (*(v5 + 8))(v7, v4);
}

- (void)storePRDBuffer:(__CVBuffer *)buffer name:(id)name
{
  v6 = sub_2456CB008();
  v8 = v7;
  if (*(&self->super.isa + OBJC_IVAR____TtC10CoreIDVPAD30PADInternalAuditDataRepository_dataRecorder))
  {
    v9 = v6;
    bufferCopy = buffer;
    selfCopy = self;
    sub_2456A14AC(bufferCopy, v9, v8);
  }
}

- (void)storeFACPoseBuffer:(__CVBuffer *)buffer identifier:(id)identifier values:(id)values
{
  v8 = sub_2456CB008();
  v10 = v9;
  bufferCopy = buffer;
  valuesCopy = values;
  selfCopy = self;
  sub_2456B21EC(bufferCopy, v8, v10, valuesCopy);
}

- (void)storeTAValues:(id)values
{
  valuesCopy = values;
  selfCopy = self;
  sub_2456B24BC(valuesCopy);
}

- (_TtC10CoreIDVPAD30PADInternalAuditDataRepository)init
{
  v3 = OBJC_IVAR____TtC10CoreIDVPAD30PADInternalAuditDataRepository_dataRecorder;
  if (qword_27EE20D28 != -1)
  {
    swift_once();
  }

  *(&self->super.isa + v3) = qword_27EE210E0;
  v5.receiver = self;
  v5.super_class = type metadata accessor for PADInternalAuditDataRepository();

  return [(PADInternalAuditDataRepository *)&v5 init];
}

@end