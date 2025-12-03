@interface ICCloudSession
- (ICCloudSession)init;
- (ICCloudSessionDelegate)delegate;
- (NSError)error;
- (NSString)reason;
- (NSUUID)identifier;
- (void)beginPhaseIfNeeded:(int64_t)needed;
- (void)beginSessionIfNeeded;
- (void)fetchedRecordWasAdded:(id)added type:(id)type;
- (void)fetchedRecordWasChanged:(id)changed type:(id)type;
- (void)fetchedRecordWasDeleted:(id)deleted type:(id)type;
- (void)operationEndedForPhase:(int64_t)phase metrics:(id)metrics error:(id)error;
- (void)phaseEnded:(int64_t)ended;
- (void)recordAdditionWasPushed:(id)pushed type:(id)type;
- (void)recordDeletionWasPushed:(id)pushed type:(id)type;
- (void)recordModificationWasPushed:(id)pushed type:(id)type;
- (void)sessionCancelled;
- (void)sessionEndedWithError:(id)error;
- (void)setError:(id)error;
- (void)setHasCompletedInitialSync:(BOOL)sync;
- (void)setIdentifier:(id)identifier;
- (void)setReason:(id)reason;
- (void)zoneWasChanged:(id)changed;
- (void)zoneWasDeleted:(id)deleted;
@end

@implementation ICCloudSession

- (void)setHasCompletedInitialSync:(BOOL)sync
{
  v5 = swift_allocObject();
  *(v5 + 16) = self;
  *(v5 + 24) = sync;
  selfCopy = self;
  sub_214F33518(sub_214F43F4C, v5);
}

- (NSError)error
{
  selfCopy = self;
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

- (void)setError:(id)error
{
  v5 = swift_allocObject();
  *(v5 + 16) = self;
  *(v5 + 24) = error;
  selfCopy = self;
  errorCopy = error;
  v9 = selfCopy;
  v8 = errorCopy;
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

- (void)setIdentifier:(id)identifier
{
  v4 = sub_2150A3A00();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2150A39C0();
  v8 = OBJC_IVAR___ICCloudSession_identifier;
  swift_beginAccess();
  v9 = *(v5 + 40);
  selfCopy = self;
  v9(self + v8, v7, v4);
  swift_endAccess();
}

- (NSString)reason
{
  swift_beginAccess();

  v2 = sub_2150A4A90();

  return v2;
}

- (void)setReason:(id)reason
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
  selfCopy = self;

  dispatch_sync(v3, v6);
  _Block_release(v6);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }
}

- (void)sessionEndedWithError:(id)error
{
  selfCopy = self;
  errorCopy = error;
  sub_214F34D64(error);
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
  selfCopy = self;

  dispatch_sync(v3, v6);
  _Block_release(v6);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }
}

- (void)beginPhaseIfNeeded:(int64_t)needed
{
  v5 = *(self + OBJC_IVAR___ICCloudSession_queue);
  v6 = swift_allocObject();
  *(v6 + 16) = self;
  *(v6 + 24) = needed;
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
  selfCopy = self;

  dispatch_sync(v5, v8);
  _Block_release(v8);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }
}

- (void)phaseEnded:(int64_t)ended
{
  v5 = swift_allocObject();
  *(v5 + 16) = self;
  *(v5 + 24) = ended;
  selfCopy = self;
  sub_214F33518(sub_214F43F5C, v5);
}

- (void)operationEndedForPhase:(int64_t)phase metrics:(id)metrics error:(id)error
{
  v9 = swift_allocObject();
  v9[2] = self;
  v9[3] = phase;
  v9[4] = metrics;
  v9[5] = error;
  metricsCopy = metrics;
  selfCopy = self;
  errorCopy = error;
  v15 = selfCopy;
  v13 = metricsCopy;
  v14 = errorCopy;
  sub_214F33518(sub_214F44010, v9);
}

- (void)zoneWasChanged:(id)changed
{
  changedCopy = changed;
  selfCopy = self;
  sub_214F39584(0xD000000000000012, 0x80000002150E1DC0);
  v6 = swift_allocObject();
  *(v6 + 16) = selfCopy;
  *(v6 + 24) = changedCopy;
  v7 = changedCopy;
  v8 = selfCopy;
  sub_214F33518(sub_214F43F58, v6);
}

- (void)zoneWasDeleted:(id)deleted
{
  deletedCopy = deleted;
  selfCopy = self;
  sub_214F39584(0xD000000000000012, 0x80000002150E1DE0);
  v6 = swift_allocObject();
  *(v6 + 16) = selfCopy;
  *(v6 + 24) = deletedCopy;
  v7 = deletedCopy;
  v8 = selfCopy;
  sub_214F33518(sub_214F43F54, v6);
}

- (void)fetchedRecordWasAdded:(id)added type:(id)type
{
  if (type)
  {
    v6 = sub_2150A4AD0();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  addedCopy = added;
  selfCopy = self;
  sub_214F39584(0xD00000000000001ELL, 0x80000002150E1E00);
  v11 = swift_allocObject();
  v11[2] = selfCopy;
  v11[3] = addedCopy;
  v11[4] = v6;
  v11[5] = v8;
  v12 = addedCopy;
  v13 = selfCopy;
  sub_214F33518(sub_214F4400C, v11);
}

- (void)fetchedRecordWasChanged:(id)changed type:(id)type
{
  if (type)
  {
    v6 = sub_2150A4AD0();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  changedCopy = changed;
  selfCopy = self;
  sub_214F39584(0xD000000000000020, 0x80000002150E1E20);
  v11 = swift_allocObject();
  v11[2] = selfCopy;
  v11[3] = changedCopy;
  v11[4] = v6;
  v11[5] = v8;
  v12 = changedCopy;
  v13 = selfCopy;
  sub_214F33518(sub_214F44008, v11);
}

- (void)fetchedRecordWasDeleted:(id)deleted type:(id)type
{
  if (type)
  {
    v6 = sub_2150A4AD0();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  deletedCopy = deleted;
  selfCopy = self;
  sub_214F39584(0xD000000000000020, 0x80000002150E1E50);
  v11 = swift_allocObject();
  v11[2] = selfCopy;
  v11[3] = deletedCopy;
  v11[4] = v6;
  v11[5] = v8;
  v12 = deletedCopy;
  v13 = selfCopy;
  sub_214F33518(sub_214F44004, v11);
}

- (void)recordAdditionWasPushed:(id)pushed type:(id)type
{
  if (type)
  {
    v6 = sub_2150A4AD0();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  pushedCopy = pushed;
  selfCopy = self;
  sub_214F39584(0xD000000000000020, 0x80000002150E1E80);
  v11 = swift_allocObject();
  v11[2] = selfCopy;
  v11[3] = pushedCopy;
  v11[4] = v6;
  v11[5] = v8;
  v12 = pushedCopy;
  v13 = selfCopy;
  sub_214F33518(sub_214F44000, v11);
}

- (void)recordModificationWasPushed:(id)pushed type:(id)type
{
  if (type)
  {
    v6 = sub_2150A4AD0();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  pushedCopy = pushed;
  selfCopy = self;
  sub_214F39584(0xD000000000000024, 0x80000002150E1EB0);
  v11 = swift_allocObject();
  v11[2] = selfCopy;
  v11[3] = pushedCopy;
  v11[4] = v6;
  v11[5] = v8;
  v12 = pushedCopy;
  v13 = selfCopy;
  sub_214F33518(sub_214F43FFC, v11);
}

- (void)recordDeletionWasPushed:(id)pushed type:(id)type
{
  if (type)
  {
    v6 = sub_2150A4AD0();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  pushedCopy = pushed;
  selfCopy = self;
  sub_214F39584(0xD000000000000020, 0x80000002150E1EE0);
  v11 = swift_allocObject();
  v11[2] = selfCopy;
  v11[3] = pushedCopy;
  v11[4] = v6;
  v11[5] = v8;
  v12 = pushedCopy;
  v13 = selfCopy;
  sub_214F33518(sub_214F43FF8, v11);
}

- (ICCloudSession)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end