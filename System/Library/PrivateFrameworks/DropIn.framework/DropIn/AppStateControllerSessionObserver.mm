@interface AppStateControllerSessionObserver
- (void)controller:(id)a3 didUpdateDownlinkAudioPower:(float)a4;
- (void)manager:(id)a3 didReceiveIncomingPendingSession:(id)a4;
- (void)manager:(id)a3 didUpdateActiveSession:(id)a4;
- (void)serverDisconnectedForDropInCenter:(id)a3;
- (void)session:(id)a3 didFailWithError:(id)a4;
- (void)session:(id)a3 didUpdateParticipants:(id)a4;
- (void)session:(id)a3 didUpdateSessionEndDate:(id)a4;
- (void)session:(id)a3 didUpdateState:(unint64_t)a4 reason:(unint64_t)a5;
@end

@implementation AppStateControllerSessionObserver

- (void)manager:(id)a3 didReceiveIncomingPendingSession:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_249DC9F74(v8, v7, &unk_285D022C8, &unk_249DDF800);
}

- (void)manager:(id)a3 didUpdateActiveSession:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_249DC9F74(v8, v7, &unk_285D022A0, &unk_249DDF7F0);
}

- (void)session:(id)a3 didUpdateState:(unint64_t)a4 reason:(unint64_t)a5
{
  v8 = a3;
  v9 = self;
  sub_249DCA2D0(v8, a4, a5);
}

- (void)session:(id)a3 didFailWithError:(id)a4
{
  v6 = a3;
  v8 = a4;
  v7 = self;
  sub_249DCA62C(v6, v8);
}

- (void)session:(id)a3 didUpdateParticipants:(id)a4
{
  sub_249DC96C0();
  v6 = sub_249DDC908();
  v7 = a3;
  v8 = self;
  sub_249DCA980(v7, v6);
}

- (void)session:(id)a3 didUpdateSessionEndDate:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF21578, &qword_249DDF7A0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v15 - v9;
  if (a4)
  {
    sub_249DDC648();
    v11 = sub_249DDC668();
    v12 = 0;
  }

  else
  {
    v11 = sub_249DDC668();
    v12 = 1;
  }

  __swift_storeEnumTagSinglePayload(v10, v12, 1, v11);
  v13 = a3;
  v14 = self;
  sub_249DCAD38(v13, v10);

  sub_249DCBAB4(v10);
}

- (void)serverDisconnectedForDropInCenter:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_249DCB2A0();
}

- (void)controller:(id)a3 didUpdateDownlinkAudioPower:(float)a4
{
  v6 = a3;
  v7 = self;
  sub_249DCB4E8(a4);
}

@end