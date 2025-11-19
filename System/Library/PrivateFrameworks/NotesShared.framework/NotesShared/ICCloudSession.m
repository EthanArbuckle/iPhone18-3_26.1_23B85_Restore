@interface ICCloudSession
- (ICCloudSession)init;
- (ICCloudSessionDelegate)delegate;
- (NSError)error;
- (NSString)reason;
- (NSUUID)identifier;
- (void)beginPhaseIfNeeded:(int64_t)a3;
- (void)beginSessionIfNeeded;
- (void)fetchedRecordWasAdded:(id)a3 type:(id)a4;
- (void)fetchedRecordWasChanged:(id)a3 type:(id)a4;
- (void)fetchedRecordWasDeleted:(id)a3 type:(id)a4;
- (void)operationEndedForPhase:(int64_t)a3 metrics:(id)a4 error:(id)a5;
- (void)phaseEnded:(int64_t)a3;
- (void)recordAdditionWasPushed:(id)a3 type:(id)a4;
- (void)recordDeletionWasPushed:(id)a3 type:(id)a4;
- (void)recordModificationWasPushed:(id)a3 type:(id)a4;
- (void)sessionCancelled;
- (void)sessionEndedWithError:(id)a3;
- (void)setError:(id)a3;
- (void)setHasCompletedInitialSync:(BOOL)a3;
- (void)setIdentifier:(id)a3;
- (void)setReason:(id)a3;
- (void)zoneWasChanged:(id)a3;
- (void)zoneWasDeleted:(id)a3;
@end

@implementation ICCloudSession

- (void)setHasCompletedInitialSync:(BOOL)a3
{
  v5 = swift_allocObject();
  *(v5 + 16) = self;
  *(v5 + 24) = a3;
  v6 = self;
  sub_214F33518(sub_214F43F4C, v5);
}

- (NSError)error
{
  v2 = self;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41D98);
  sub_2150A55B0();

  if (v5)
  {
    v3 = sub_2150A35C0();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setError:(id)a3
{
  v5 = swift_allocObject();
  *(v5 + 16) = self;
  *(v5 + 24) = a3;
  v6 = self;
  v7 = a3;
  v9 = v6;
  v8 = v7;
  sub_214F33518(sub_214F43EE4, v5);
}

- (NSUUID)identifier
{
  v3 = sub_2150A3A00();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR___ICCloudSession_identifier;
  swift_beginAccess();
  (*(v4 + 16))(v6, self + v7, v3);
  v8 = sub_2150A39A0();
  (*(v4 + 8))(v6, v3);

  return v8;
}

- (void)setIdentifier:(id)a3
{
  v4 = sub_2150A3A00();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2150A39C0();
  v8 = OBJC_IVAR___ICCloudSession_identifier;
  swift_beginAccess();
  v9 = *(v5 + 40);
  v10 = self;
  v9(self + v8, v7, v4);
  swift_endAccess();
}

- (NSString)reason
{
  swift_beginAccess();

  v2 = sub_2150A4A90();

  return v2;
}

- (void)setReason:(id)a3
{
  v4 = sub_2150A4AD0();
  v6 = v5;
  v7 = (self + OBJC_IVAR___ICCloudSession_reason);
  swift_beginAccess();
  *v7 = v4;
  v7[1] = v6;
}

- (ICCloudSessionDelegate)delegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)beginSessionIfNeeded
{
  v3 = *(self + OBJC_IVAR___ICCloudSession_queue);
  v4 = swift_allocObject();
  *(v4 + 16) = self;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_214F43FD0;
  *(v5 + 24) = v4;
  v8[4] = sub_214F43F50;
  v8[5] = v5;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_214F34100;
  v8[3] = &block_descriptor_360;
  v6 = _Block_copy(v8);
  v7 = self;

  dispatch_sync(v3, v6);
  _Block_release(v6);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }
}

- (void)sessionEndedWithError:(id)a3
{
  v4 = self;
  v5 = a3;
  sub_214F34D64(a3);
}

- (void)sessionCancelled
{
  v3 = *(self + OBJC_IVAR___ICCloudSession_queue);
  v4 = swift_allocObject();
  *(v4 + 16) = self;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_214F43FC8;
  *(v5 + 24) = v4;
  v8[4] = sub_214F43F50;
  v8[5] = v5;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_214F34100;
  v8[3] = &block_descriptor_349;
  v6 = _Block_copy(v8);
  v7 = self;

  dispatch_sync(v3, v6);
  _Block_release(v6);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }
}

- (void)beginPhaseIfNeeded:(int64_t)a3
{
  v5 = *(self + OBJC_IVAR___ICCloudSession_queue);
  v6 = swift_allocObject();
  *(v6 + 16) = self;
  *(v6 + 24) = a3;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_214F43F60;
  *(v7 + 24) = v6;
  v10[4] = sub_214F43F50;
  v10[5] = v7;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_214F34100;
  v10[3] = &block_descriptor_338;
  v8 = _Block_copy(v10);
  v9 = self;

  dispatch_sync(v5, v8);
  _Block_release(v8);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }
}

- (void)phaseEnded:(int64_t)a3
{
  v5 = swift_allocObject();
  *(v5 + 16) = self;
  *(v5 + 24) = a3;
  v6 = self;
  sub_214F33518(sub_214F43F5C, v5);
}

- (void)operationEndedForPhase:(int64_t)a3 metrics:(id)a4 error:(id)a5
{
  v9 = swift_allocObject();
  v9[2] = self;
  v9[3] = a3;
  v9[4] = a4;
  v9[5] = a5;
  v10 = a4;
  v11 = self;
  v12 = a5;
  v15 = v11;
  v13 = v10;
  v14 = v12;
  sub_214F33518(sub_214F44010, v9);
}

- (void)zoneWasChanged:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_214F39584(0xD000000000000012, 0x80000002150E1DC0);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  v7 = v4;
  v8 = v5;
  sub_214F33518(sub_214F43F58, v6);
}

- (void)zoneWasDeleted:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_214F39584(0xD000000000000012, 0x80000002150E1DE0);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  v7 = v4;
  v8 = v5;
  sub_214F33518(sub_214F43F54, v6);
}

- (void)fetchedRecordWasAdded:(id)a3 type:(id)a4
{
  if (a4)
  {
    v6 = sub_2150A4AD0();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = a3;
  v10 = self;
  sub_214F39584(0xD00000000000001ELL, 0x80000002150E1E00);
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = v9;
  v11[4] = v6;
  v11[5] = v8;
  v12 = v9;
  v13 = v10;
  sub_214F33518(sub_214F4400C, v11);
}

- (void)fetchedRecordWasChanged:(id)a3 type:(id)a4
{
  if (a4)
  {
    v6 = sub_2150A4AD0();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = a3;
  v10 = self;
  sub_214F39584(0xD000000000000020, 0x80000002150E1E20);
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = v9;
  v11[4] = v6;
  v11[5] = v8;
  v12 = v9;
  v13 = v10;
  sub_214F33518(sub_214F44008, v11);
}

- (void)fetchedRecordWasDeleted:(id)a3 type:(id)a4
{
  if (a4)
  {
    v6 = sub_2150A4AD0();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = a3;
  v10 = self;
  sub_214F39584(0xD000000000000020, 0x80000002150E1E50);
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = v9;
  v11[4] = v6;
  v11[5] = v8;
  v12 = v9;
  v13 = v10;
  sub_214F33518(sub_214F44004, v11);
}

- (void)recordAdditionWasPushed:(id)a3 type:(id)a4
{
  if (a4)
  {
    v6 = sub_2150A4AD0();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = a3;
  v10 = self;
  sub_214F39584(0xD000000000000020, 0x80000002150E1E80);
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = v9;
  v11[4] = v6;
  v11[5] = v8;
  v12 = v9;
  v13 = v10;
  sub_214F33518(sub_214F44000, v11);
}

- (void)recordModificationWasPushed:(id)a3 type:(id)a4
{
  if (a4)
  {
    v6 = sub_2150A4AD0();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = a3;
  v10 = self;
  sub_214F39584(0xD000000000000024, 0x80000002150E1EB0);
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = v9;
  v11[4] = v6;
  v11[5] = v8;
  v12 = v9;
  v13 = v10;
  sub_214F33518(sub_214F43FFC, v11);
}

- (void)recordDeletionWasPushed:(id)a3 type:(id)a4
{
  if (a4)
  {
    v6 = sub_2150A4AD0();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = a3;
  v10 = self;
  sub_214F39584(0xD000000000000020, 0x80000002150E1EE0);
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = v9;
  v11[4] = v6;
  v11[5] = v8;
  v12 = v9;
  v13 = v10;
  sub_214F33518(sub_214F43FF8, v11);
}

- (ICCloudSession)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end