@interface PADInternalAuditDataRepository
- (_TtC10CoreIDVPAD30PADInternalAuditDataRepository)init;
- (void)storeClassifierResult:(id)a3 imageData:(id)a4;
- (void)storeFACPoseBuffer:(__CVBuffer *)a3 identifier:(id)a4 values:(id)a5;
- (void)storePRDBuffer:(__CVBuffer *)a3 name:(id)a4;
- (void)storeTAValues:(id)a3;
- (void)storeUnencryptedVideoFrom:(id)a3;
@end

@implementation PADInternalAuditDataRepository

- (void)storeClassifierResult:(id)a3 imageData:(id)a4
{
  if (a4)
  {
    v7 = a3;
    v8 = self;
    v9 = a4;
    v10 = sub_2456CAED8();
    v12 = v11;
  }

  else
  {
    v13 = a3;
    v14 = self;
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

- (void)storeUnencryptedVideoFrom:(id)a3
{
  v4 = sub_2456CAE98();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2456CAE68();
  if (*(&self->super.isa + OBJC_IVAR____TtC10CoreIDVPAD30PADInternalAuditDataRepository_dataRecorder))
  {
    v8 = self;
    sub_2456A0F78();
  }

  else
  {
    v9 = self;
  }

  (*(v5 + 8))(v7, v4);
}

- (void)storePRDBuffer:(__CVBuffer *)a3 name:(id)a4
{
  v6 = sub_2456CB008();
  v8 = v7;
  if (*(&self->super.isa + OBJC_IVAR____TtC10CoreIDVPAD30PADInternalAuditDataRepository_dataRecorder))
  {
    v9 = v6;
    v10 = a3;
    v11 = self;
    sub_2456A14AC(v10, v9, v8);
  }
}

- (void)storeFACPoseBuffer:(__CVBuffer *)a3 identifier:(id)a4 values:(id)a5
{
  v8 = sub_2456CB008();
  v10 = v9;
  v11 = a3;
  v12 = a5;
  v13 = self;
  sub_2456B21EC(v11, v8, v10, v12);
}

- (void)storeTAValues:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_2456B24BC(v4);
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