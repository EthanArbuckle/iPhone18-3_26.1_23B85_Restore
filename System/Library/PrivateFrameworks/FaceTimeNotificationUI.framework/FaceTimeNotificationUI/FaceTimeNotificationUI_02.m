uint64_t sub_24AA49004(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24AA43DBC;

  return sub_24AA480C4(a1, v4, v5, v6);
}

void sub_24AA490B8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI31CallNotificationPosterViewModel__posterView);
  *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI31CallNotificationPosterViewModel__posterView) = v2;
  v4 = v2;
}

void sub_24AA490F8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI31CallNotificationPosterViewModel__posterViewController);
  *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI31CallNotificationPosterViewModel__posterViewController) = v2;
  v4 = v2;
}

void sub_24AA49168()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI31CallNotificationPosterViewModel__contactStore);
  *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI31CallNotificationPosterViewModel__contactStore) = v2;
  v4 = v2;
}

id sub_24AA491DC()
{
  result = [objc_opt_self() viewControllerForCall_];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24AA49270(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24AA493B8();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_24AA492D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24AA493B8();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_24AA49338()
{
  sub_24AA493B8();
  sub_24AAB4474();
  __break(1u);
}

unint64_t sub_24AA49364()
{
  result = qword_27EF85928;
  if (!qword_27EF85928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF85928);
  }

  return result;
}

unint64_t sub_24AA493B8()
{
  result = qword_27EF85930;
  if (!qword_27EF85930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF85930);
  }

  return result;
}

uint64_t AudioCallRecordingViewModel.statusLabel.getter()
{
  swift_getKeyPath();
  sub_24AA550A0(&qword_27EF85618, type metadata accessor for AudioCallRecordingViewModel);
  sub_24AAB2CF4();

  v1 = *(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__statusLabel);
  v2 = *(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__statusLabel + 8);

  return v1;
}

uint64_t AudioCallRecordingViewModel.recordingStartedDate.getter@<X0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF855E8, &unk_24AABCB40);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v22 - v6;
  v8 = [objc_opt_self() sharedInstance];
  v9 = [v8 currentCalls];

  sub_24AA442A0(0, &qword_27EF85748, 0x277D6EDE0);
  v10 = sub_24AAB5024();

  if (!(v10 >> 62))
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
      goto LABEL_3;
    }

LABEL_21:

LABEL_22:
    v18 = sub_24AAB2C54();
    (*(*(v18 - 8) + 56))(v7, 1, 1, v18);
    goto LABEL_23;
  }

LABEL_20:
  v11 = sub_24AAB52F4();
  if (!v11)
  {
    goto LABEL_21;
  }

LABEL_3:
  v12 = 0;
  while (1)
  {
    if ((v10 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x24C225BD0](v12, v10);
    }

    else
    {
      if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_19;
      }

      v13 = *(v10 + 8 * v12 + 32);
    }

    v14 = v13;
    v15 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    if ([v13 isRecording])
    {
      break;
    }

    ++v12;
    if (v15 == v11)
    {
      goto LABEL_21;
    }
  }

  v16 = [v14 recordingSession];

  if (!v16)
  {
    goto LABEL_22;
  }

  v17 = [v16 recordingStartedDate];

  if (v17)
  {
    sub_24AAB2C24();

    v18 = sub_24AAB2C54();
    (*(*(v18 - 8) + 56))(v5, 0, 1, v18);
  }

  else
  {
    v18 = sub_24AAB2C54();
    (*(*(v18 - 8) + 56))(v5, 1, 1, v18);
  }

  sub_24AA1A25C(v5, v7, &qword_27EF855E8, &unk_24AABCB40);
  sub_24AAB2C54();
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v7, 1, v18) != 1)
  {
    v20 = v23;
    (*(v19 + 32))(v23, v7, v18);
    return (*(v19 + 56))(v20, 0, 1, v18);
  }

LABEL_23:
  sub_24AA169C4(v7, &qword_27EF855E8, &unk_24AABCB40);
  sub_24AAB2C54();
  return (*(*(v18 - 8) + 56))(v23, 1, 1, v18);
}

void *AudioCallRecordingViewModel.__allocating_init(callUUID:_:recordingState:)(uint64_t a1, uint64_t a2, int a3, unint64_t a4)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  swift_allocObject();
  return AudioCallRecordingViewModel.init(callUUID:_:recordingState:)(a1, a2, a3, a4 | ((HIDWORD(a4) & 1) << 32));
}

Swift::Void __swiftcall AudioCallRecordingViewModel.startRecordingButtonTapped()()
{
  v1 = v0;
  if (*(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__prerecordingInProgress) == 1)
  {
    *(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__prerecordingInProgress) = 1;
    sub_24AA50268();
    sub_24AA4AD50();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24AA550A0(&qword_27EF85618, type metadata accessor for AudioCallRecordingViewModel);
    sub_24AAB2CE4();
  }

  v3 = [objc_opt_self() defaultCenter];
  v4 = sub_24AAB5194();
  v5 = *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel_callUUID);
  v6 = *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel_callUUID + 8);
  v7 = sub_24AAB4EE4();
  [v3 postNotificationName:v4 object:v7];
}

Swift::Void __swiftcall AudioCallRecordingViewModel.didTapStopButton()()
{
  v1 = v0;
  v2 = sub_24AAB3A64();
  v3 = sub_24AAB5144();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24AA0F000, v2, v3, "did tap stop call recording", v4, 2u);
    MEMORY[0x24C226630](v4, -1, -1);
  }

  sub_24AA4FF1C();
  v5 = sub_24AA50128();
  if (v5 || (v8 = sub_24AA547B8()) != 0 && (v9 = v8, v10 = [v8 recordingSession], v9, v10) && (v11 = objc_msgSend(v10, sel_recordingState), v10, v11 == 2) && (v5 = sub_24AA547B8()) != 0)
  {
    v6 = v5;
    swift_getKeyPath();
    sub_24AA550A0(&qword_27EF85618, type metadata accessor for AudioCallRecordingViewModel);
    sub_24AAB2CF4();

    v7 = *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__callRecordingService);

    sub_24AAB2DD4();
  }
}

uint64_t sub_24AA49CAC()
{
  swift_getKeyPath();
  sub_24AA550A0(&qword_27EF85618, type metadata accessor for AudioCallRecordingViewModel);
  sub_24AAB2CF4();

  v1 = *(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__callRecordingService);
}

uint64_t sub_24AA49D58@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24AA550A0(&qword_27EF85618, type metadata accessor for AudioCallRecordingViewModel);
  sub_24AAB2CF4();

  *a2 = *(v3 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__callRecordingService);
}

uint64_t sub_24AA49E0C(uint64_t a1)
{
  if (*(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__callRecordingService) == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24AA550A0(&qword_27EF85618, type metadata accessor for AudioCallRecordingViewModel);
    sub_24AAB2CE4();
  }
}

void (*sub_24AA49F48(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_24AA49FAC;
}

void sub_24AA49FAC(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *(a1 + 24);
    sub_24AA50268();
    sub_24AA4AD50();
  }
}

unint64_t AudioCallRecordingViewModel.recordingState.getter()
{
  swift_getKeyPath();
  sub_24AA550A0(&qword_27EF85618, type metadata accessor for AudioCallRecordingViewModel);
  sub_24AAB2CF4();

  v1 = (v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__recordingState);
  swift_beginAccess();
  return *v1 | (*(v1 + 4) << 32);
}

uint64_t sub_24AA4A0B4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24AA550A0(&qword_27EF85618, type metadata accessor for AudioCallRecordingViewModel);
  sub_24AAB2CF4();

  v4 = v3 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__recordingState;
  result = swift_beginAccess();
  v6 = *(v4 + 4);
  *a2 = *v4;
  *(a2 + 4) = v6;
  return result;
}

void AudioCallRecordingViewModel.recordingState.setter(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__recordingState;
  swift_beginAccess();
  if ((*(v3 + 4) & 1) == 0)
  {
    if ((a1 & 0x100000000) != 0 || *v3 != a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    *v3 = a1;
    *(v3 + 4) = BYTE4(a1) & 1;
    sub_24AA50268();
    sub_24AA4AD50();
    return;
  }

  if ((a1 & 0x100000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  sub_24AA550A0(&qword_27EF85618, type metadata accessor for AudioCallRecordingViewModel);
  sub_24AAB2CE4();
}

void sub_24AA4A320(uint64_t a1, uint64_t a2)
{
  v3 = a1 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__recordingState;
  swift_beginAccess();
  *v3 = a2;
  *(v3 + 4) = BYTE4(a2) & 1;
  sub_24AA50268();
  sub_24AA4AD50();
}

void (*AudioCallRecordingViewModel.recordingState.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_24AA550A0(&qword_27EF85618, type metadata accessor for AudioCallRecordingViewModel);
  sub_24AAB2CF4();

  *v4 = v1;
  swift_getKeyPath();
  sub_24AAB2D14();

  v4[7] = sub_24AA49F48(v4);
  return sub_24AA4A4C8;
}

void sub_24AA4A4C8(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  v2 = v1[5];
  v3 = v1[6];
  *v1 = v1[4];
  swift_getKeyPath();
  sub_24AAB2D04();

  free(v1);
}

uint64_t sub_24AA4A584(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__statusLabel);
  v6 = *(v2 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__statusLabel + 8);
  if (v6)
  {
    if (a2)
    {
      if (*v5 == a1 && v6 == a2)
      {
        goto LABEL_8;
      }

      v8 = *(v2 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__statusLabel + 8);
      if (sub_24AAB5474())
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24AA550A0(&qword_27EF85618, type metadata accessor for AudioCallRecordingViewModel);
    sub_24AAB2CE4();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *v5 = a1;
  v5[1] = a2;
}

void *sub_24AA4A700()
{
  swift_getKeyPath();
  sub_24AA550A0(&qword_27EF85618, type metadata accessor for AudioCallRecordingViewModel);
  sub_24AAB2CF4();

  v1 = *(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__avAudioPlayer);
  v2 = v1;
  return v1;
}

id sub_24AA4A7B0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24AA550A0(&qword_27EF85618, type metadata accessor for AudioCallRecordingViewModel);
  sub_24AAB2CF4();

  v4 = *(v3 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__avAudioPlayer);
  *a2 = v4;

  return v4;
}

void sub_24AA4A870(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__avAudioPlayer;
  v5 = *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__avAudioPlayer);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24AA550A0(&qword_27EF85618, type metadata accessor for AudioCallRecordingViewModel);
    sub_24AAB2CE4();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_24AA442A0(0, &qword_27EF85A08, 0x277CB83D0);
  v6 = v5;
  v7 = a1;
  v8 = sub_24AAB5214();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

uint64_t sub_24AA4AA08()
{
  swift_getKeyPath();
  v4 = v0;
  sub_24AA550A0(&qword_27EF85618, type metadata accessor for AudioCallRecordingViewModel);
  sub_24AAB2CF4();

  v1 = OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__cancellables;
  swift_beginAccess();
  v2 = *(v4 + v1);
}

uint64_t sub_24AA4AAC8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24AA550A0(&qword_27EF85618, type metadata accessor for AudioCallRecordingViewModel);
  sub_24AAB2CF4();

  v4 = OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__cancellables;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_24AA4AB90(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__cancellables;
  swift_beginAccess();
  v4 = *(v1 + v3);

  v6 = sub_24AA54270(v5, a1);

  if (v6)
  {
    v7 = *(v1 + v3);
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24AA550A0(&qword_27EF85618, type metadata accessor for AudioCallRecordingViewModel);
    sub_24AAB2CE4();
  }
}

uint64_t sub_24AA4ACE0(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__cancellables;
  swift_beginAccess();
  v5 = *(a1 + v4);
  *(a1 + v4) = a2;
}

void sub_24AA4AD50()
{
  v1 = [objc_opt_self() sharedInstance];
  v2 = [v1 currentCalls];

  sub_24AA442A0(0, &qword_27EF85748, 0x277D6EDE0);
  v3 = sub_24AAB5024();

  v29 = 0;
  if (v3 >> 62)
  {
LABEL_20:
    v4 = sub_24AAB52F4();
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
LABEL_3:
      v5 = 0;
      v6 = (v30 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel_callUUID);
      do
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x24C225BD0](v5, v3);
          v8 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
LABEL_16:
            __break(1u);
LABEL_17:

LABEL_18:

            v15 = [v0 status];
            v16 = 0;
            goto LABEL_22;
          }
        }

        else
        {
          if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_20;
          }

          v7 = *(v3 + 8 * v5 + 32);
          v8 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
            goto LABEL_16;
          }
        }

        v0 = v7;
        v9 = [v7 callUUID];
        v10 = sub_24AAB4EF4();
        v12 = v11;

        if (v10 == *v6 && v12 == v6[1])
        {
          goto LABEL_17;
        }

        v14 = sub_24AAB5474();

        if (v14)
        {
          goto LABEL_18;
        }

        ++v5;
      }

      while (v8 != v4);
    }
  }

  v15 = 0;
  v0 = 0;
  v16 = 1;
LABEL_22:
  v17 = v30;
  v18 = qword_285E03530;
  if (qword_285E03530)
  {
    v19 = &byte_285E03544;
    do
    {
      if (*v19)
      {
        if (v16)
        {
          goto LABEL_29;
        }
      }

      else if (!v16 && *(v19 - 1) == v15)
      {
LABEL_29:
        v20 = 0;
        goto LABEL_31;
      }

      v19 += 8;
      --v18;
    }

    while (v18);
  }

  v20 = 1;
LABEL_31:
  v21 = v0 != 0;
  swift_getKeyPath();
  sub_24AA550A0(&qword_27EF85618, type metadata accessor for AudioCallRecordingViewModel);
  sub_24AAB2CF4();

  swift_getKeyPath();
  sub_24AAB2CF4();

  swift_getKeyPath();
  sub_24AAB2CF4();

  v22 = v30 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__recordingAvailability;
  if (*(v30 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__recordingAvailability + 4) == 1)
  {
    LOBYTE(v23) = 0;
    v24 = (v30 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__canStartRecord);
    if ((*(v30 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__canStartRecord) & 1) == 0)
    {
LABEL_33:
      *v24 = v23;
      goto LABEL_39;
    }
  }

  else
  {
    if (*v22 == 3)
    {
      v23 = v20;
    }

    else
    {
      v23 = 0;
    }

    v24 = (v30 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__canStartRecord);
    if (*(v30 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__canStartRecord) == v23)
    {
      goto LABEL_33;
    }
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  sub_24AAB2CE4();

  v17 = v30;
LABEL_39:
  swift_getKeyPath();
  sub_24AAB2CF4();

  if ((*(v22 + 4) & 1) == 0)
  {
    v21 = *v22 != 1 && v0 != 0;
  }

  v27 = OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__canShowCallRecord;
  if (v21 == *(v17 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__canShowCallRecord))
  {

    *(v17 + v27) = v21;
  }

  else
  {
    v28 = swift_getKeyPath();
    MEMORY[0x28223BE20](v28);
    sub_24AAB2CE4();
  }
}

unint64_t sub_24AA4B260()
{
  swift_getKeyPath();
  sub_24AA550A0(&qword_27EF85618, type metadata accessor for AudioCallRecordingViewModel);
  sub_24AAB2CF4();

  return *(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__recordingAvailability) | (*(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__recordingAvailability + 4) << 32);
}

uint64_t sub_24AA4B31C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24AA550A0(&qword_27EF85618, type metadata accessor for AudioCallRecordingViewModel);
  sub_24AAB2CF4();

  v5 = *(v3 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__recordingAvailability + 4);
  *a2 = *(v3 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__recordingAvailability);
  *(a2 + 4) = v5;
  return result;
}

void sub_24AA4B3D8(uint64_t a1)
{
  v2 = v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__recordingAvailability;
  if (*(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__recordingAvailability + 4))
  {
    if ((a1 & 0x100000000) == 0)
    {
LABEL_9:
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      sub_24AA550A0(&qword_27EF85618, type metadata accessor for AudioCallRecordingViewModel);
      sub_24AAB2CE4();

      return;
    }
  }

  else if ((a1 & 0x100000000) != 0 || *v2 != a1)
  {
    goto LABEL_9;
  }

  *v2 = a1;
  *(v2 + 4) = BYTE4(a1) & 1;

  sub_24AA4AD50();
}

uint64_t sub_24AA4B6FC(uint64_t result, void *a2)
{
  if (*(v2 + *a2) == (result & 1))
  {
    *(v2 + *a2) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24AA550A0(&qword_27EF85618, type metadata accessor for AudioCallRecordingViewModel);
    sub_24AAB2CE4();
  }

  return result;
}

uint64_t sub_24AA4B814(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_24AA550A0(&qword_27EF85618, type metadata accessor for AudioCallRecordingViewModel);
  sub_24AAB2CF4();

  return *(v2 + *a2);
}

uint64_t sub_24AA4B8B4@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, _BYTE *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_24AA550A0(&qword_27EF85618, type metadata accessor for AudioCallRecordingViewModel);
  sub_24AAB2CF4();

  *a3 = *(v5 + *a2);
  return result;
}

void sub_24AA4B968(char a1)
{
  if (*(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__prerecordingInProgress) == (a1 & 1))
  {
    *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__prerecordingInProgress) = a1 & 1;
    sub_24AA50268();

    sub_24AA4AD50();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24AA550A0(&qword_27EF85618, type metadata accessor for AudioCallRecordingViewModel);
    sub_24AAB2CE4();
  }
}

void *AudioCallRecordingViewModel.init(callUUID:_:recordingState:)(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v5 = v4;
  v41 = *v4;
  v6 = OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel_logger;
  if (qword_27EF84C68 != -1)
  {
    swift_once();
  }

  v7 = sub_24AAB3A84();
  v8 = __swift_project_value_buffer(v7, qword_27EF919D8);
  v9 = *(v7 - 8);
  (*(v9 + 16))(v5 + v6, v8, v7);
  v10 = OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel_featureFlags;
  *(v5 + v10) = [objc_allocWithZone(MEMORY[0x277D6EED8]) init];
  v39 = OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel_callCenter;
  *(v5 + v39) = [objc_opt_self() sharedInstance];
  v11 = v5 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__recordingState;
  *v11 = 0;
  v11[4] = 1;
  v12 = (v5 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__statusLabel);
  *v12 = 0;
  v12[1] = 0;
  v13 = OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__avAudioPlayer;
  *(v5 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__avAudioPlayer) = 0;
  v14 = OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__cancellables;
  *(v5 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__cancellables) = MEMORY[0x277D84FA0];
  v15 = v5 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__recordingAvailability;
  *v15 = 0;
  v15[4] = 1;
  *(v5 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__isRecording) = 0;
  *(v5 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__canStartRecord) = 0;
  *(v5 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__canShowCallRecord) = 0;
  *(v5 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__prerecordingInProgress) = 0;
  *(v5 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__stopwatchValue) = 0;
  v16 = OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__timeSink;
  *(v5 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__timeSink) = 0;
  v17 = OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel___observationRegistrar;
  sub_24AAB2D24();
  if (![*(v5 + v10) macCallRecordingEnabled])
  {

    (*(v9 + 8))(v5 + v6, v7);

    v27 = v12[1];

    v28 = *(v5 + v14);

    v29 = *(v5 + v16);

    v30 = sub_24AAB2D34();
    (*(*(v30 - 8) + 8))(v5 + v17, v30);
    v31 = *(*v5 + 48);
    v32 = *(*v5 + 52);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v18 = (v5 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel_callUUID);
  *v18 = a1;
  v18[1] = a2;
  v19 = *(v5 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel_callCenter);
  v20 = sub_24AAB2E04();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  v23 = v19;
  *(v5 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__callRecordingService) = sub_24AAB2DF4();
  v24 = v5 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__recordingState;
  swift_beginAccess();
  if ((v24[4] & 1) == 0)
  {
    v25 = a4;
    v26 = &qword_27EF85000;
    if ((a4 & 0x100000000) != 0 || *v24 != a4)
    {
      goto LABEL_11;
    }

LABEL_10:
    *v24 = v25;
    v24[4] = BYTE4(v25) & 1;
    sub_24AA50268();
    sub_24AA4AD50();
    goto LABEL_12;
  }

  v25 = a4;
  v26 = &qword_27EF85000;
  if ((a4 & 0x100000000) != 0)
  {
    goto LABEL_10;
  }

LABEL_11:
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  v34 = v26[295];
  sub_24AA550A0(&qword_27EF85618, type metadata accessor for AudioCallRecordingViewModel);
  sub_24AAB2CE4();

LABEL_12:
  v35 = v5 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__recordingAvailability;
  if ((*(v5 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__recordingAvailability + 4) & 1) != 0 || *v35 != a3)
  {
    v36 = swift_getKeyPath();
    MEMORY[0x28223BE20](v36);
    v37 = v26[295];
    sub_24AA550A0(&qword_27EF85618, type metadata accessor for AudioCallRecordingViewModel);
    sub_24AAB2CE4();
  }

  else
  {
    v35[4] = 0;
    sub_24AA4AD50();
  }

  AudioCallRecordingViewModel.observeRecordingStateNotifications()();
  AudioCallRecordingViewModel.observeRecordingAvailabilityNotification()();
  AudioCallRecordingViewModel.observeCountdownNotifications()();
  sub_24AA4CB98("Observing countdown failed notification", MEMORY[0x277CFCA30]);
  sub_24AA4CB98("Observing countdown cancelled notification", MEMORY[0x277CFCA38]);
  sub_24AA50268();
  sub_24AA4AD50();
  return v5;
}

uint64_t sub_24AA4C100(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__stopwatchValue) != result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24AA550A0(&qword_27EF85618, type metadata accessor for AudioCallRecordingViewModel);
    sub_24AAB2CE4();
  }

  return result;
}

Swift::Void __swiftcall AudioCallRecordingViewModel.observeRecordingStateNotifications()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF856C8, &qword_24AAB75E0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v20 - v4;
  v6 = sub_24AAB51C4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF859C0, &qword_24AAB7E70);
  v11 = *(v20 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v20);
  v14 = &v20 - v13;
  v15 = [objc_opt_self() defaultCenter];
  v16 = *MEMORY[0x277D6F0C8];
  sub_24AAB51D4();

  sub_24AA442A0(0, &qword_27EF86400, 0x277D85C78);
  v17 = sub_24AAB5184();
  v21 = v17;
  v18 = sub_24AAB5174();
  (*(*(v18 - 8) + 56))(v5, 1, 1, v18);
  sub_24AA550A0(&qword_27EF856F0, MEMORY[0x277CC9DB0]);
  sub_24AA550E8();
  sub_24AAB3C14();
  sub_24AA169C4(v5, &qword_27EF856C8, &qword_24AAB75E0);

  (*(v7 + 8))(v10, v6);
  swift_allocObject();
  swift_weakInit();
  sub_24AA16A68(&qword_27EF859C8, &qword_27EF859C0, &qword_24AAB7E70);
  v19 = v20;
  sub_24AAB3C44();

  (*(v11 + 8))(v14, v19);
  swift_getKeyPath();
  v21 = v1;
  sub_24AA550A0(&qword_27EF85618, type metadata accessor for AudioCallRecordingViewModel);
  sub_24AAB2CF4();

  v21 = v1;
  swift_getKeyPath();
  sub_24AAB2D14();

  swift_beginAccess();
  sub_24AAB3B14();
  swift_endAccess();

  v21 = v1;
  swift_getKeyPath();
  sub_24AAB2D04();
}

Swift::Void __swiftcall AudioCallRecordingViewModel.observeRecordingAvailabilityNotification()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF856C8, &qword_24AAB75E0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v23 - v4;
  v6 = sub_24AAB51C4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF859C0, &qword_24AAB7E70);
  v11 = *(v23 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v23);
  v14 = &v23 - v13;
  v15 = sub_24AAB3A64();
  v16 = sub_24AAB5144();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_24AA0F000, v15, v16, "Observing TUCallRecordingAvailabilityChanged", v17, 2u);
    MEMORY[0x24C226630](v17, -1, -1);
  }

  v18 = [objc_opt_self() defaultCenter];
  v19 = *MEMORY[0x277D6F0C0];
  sub_24AAB51D4();

  sub_24AA442A0(0, &qword_27EF86400, 0x277D85C78);
  v20 = sub_24AAB5184();
  v24 = v20;
  v21 = sub_24AAB5174();
  (*(*(v21 - 8) + 56))(v5, 1, 1, v21);
  sub_24AA550A0(&qword_27EF856F0, MEMORY[0x277CC9DB0]);
  sub_24AA550E8();
  sub_24AAB3C14();
  sub_24AA169C4(v5, &qword_27EF856C8, &qword_24AAB75E0);

  (*(v7 + 8))(v10, v6);
  swift_allocObject();
  swift_weakInit();
  sub_24AA16A68(&qword_27EF859C8, &qword_27EF859C0, &qword_24AAB7E70);
  v22 = v23;
  sub_24AAB3C44();

  (*(v11 + 8))(v14, v22);
  swift_getKeyPath();
  v24 = v1;
  sub_24AA550A0(&qword_27EF85618, type metadata accessor for AudioCallRecordingViewModel);
  sub_24AAB2CF4();

  v24 = v1;
  swift_getKeyPath();
  sub_24AAB2D14();

  swift_beginAccess();
  sub_24AAB3B14();
  swift_endAccess();

  v24 = v1;
  swift_getKeyPath();
  sub_24AAB2D04();
}

uint64_t sub_24AA4CB98(const char *a1, uint64_t (*a2)(void))
{
  v30 = a1;
  v4 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF856C8, &qword_24AAB75E0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v28 - v7;
  v9 = sub_24AAB51C4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF859C0, &qword_24AAB7E70);
  v31 = *(v14 - 8);
  v32 = v14;
  v15 = *(v31 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v28 - v16;
  v18 = sub_24AAB3A64();
  v19 = sub_24AAB5144();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v29 = v13;
    v21 = v20;
    *v20 = 0;
    _os_log_impl(&dword_24AA0F000, v18, v19, v30, v20, 2u);
    v13 = v29;
    MEMORY[0x24C226630](v21, -1, -1);
  }

  v22 = [objc_opt_self() defaultCenter];
  v23 = a2();
  sub_24AAB51D4();

  sub_24AA442A0(0, &qword_27EF86400, 0x277D85C78);
  v24 = sub_24AAB5184();
  v33 = v24;
  v25 = sub_24AAB5174();
  (*(*(v25 - 8) + 56))(v8, 1, 1, v25);
  sub_24AA550A0(&qword_27EF856F0, MEMORY[0x277CC9DB0]);
  sub_24AA550E8();
  sub_24AAB3C14();
  sub_24AA169C4(v8, &qword_27EF856C8, &qword_24AAB75E0);

  (*(v10 + 8))(v13, v9);
  swift_allocObject();
  swift_weakInit();
  sub_24AA16A68(&qword_27EF859C8, &qword_27EF859C0, &qword_24AAB7E70);
  v26 = v32;
  sub_24AAB3C44();

  (*(v31 + 8))(v17, v26);
  swift_getKeyPath();
  v33 = v4;
  sub_24AA550A0(&qword_27EF85618, type metadata accessor for AudioCallRecordingViewModel);
  sub_24AAB2CF4();

  v33 = v4;
  swift_getKeyPath();
  sub_24AAB2D14();

  swift_beginAccess();
  sub_24AAB3B14();
  swift_endAccess();

  v33 = v4;
  swift_getKeyPath();
  sub_24AAB2D04();
}

void sub_24AA4D0B4()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_24AAB29D4();
    if (!v26[3])
    {

      sub_24AA169C4(v26, &qword_27EF85740, &qword_24AAB76D0);
      return;
    }

    sub_24AA442A0(0, &qword_27EF85748, 0x277D6EDE0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    v2 = [v25 callUUID];
    v3 = sub_24AAB4EF4();
    v5 = v4;

    if (v3 == *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel_callUUID) && v5 == *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel_callUUID + 8))
    {
    }

    else
    {
      v7 = sub_24AAB5474();

      if ((v7 & 1) == 0)
      {

        return;
      }
    }

    v8 = v25;
    v9 = sub_24AAB3A64();
    v10 = sub_24AAB5144();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v26[0] = v12;
      *v11 = 136315138;
      v13 = [v8 recordingSession];
      if (v13)
      {
        v14 = v13;
        [v13 recordingState];

        type metadata accessor for TUCallRecordingState(0);
        v15 = sub_24AAB4F44();
        v17 = v16;
      }

      else
      {
        v17 = 0xE300000000000000;
        v15 = 7104878;
      }

      v18 = sub_24AA406B4(v15, v17, v26);

      *(v11 + 4) = v18;
      _os_log_impl(&dword_24AA0F000, v9, v10, "TUCallRecordingStateChanged to %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
      MEMORY[0x24C226630](v12, -1, -1);
      MEMORY[0x24C226630](v11, -1, -1);
    }

    v19 = [v8 recordingSession];
    v20 = v19;
    if (v19)
    {
      v21 = [v19 recordingState];

      v22 = v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__recordingState;
      swift_beginAccess();
      if (*(v22 + 4))
      {
LABEL_25:
        KeyPath = swift_getKeyPath();
        MEMORY[0x28223BE20](KeyPath);
        sub_24AA550A0(&qword_27EF85618, type metadata accessor for AudioCallRecordingViewModel);
        sub_24AAB2CE4();

        return;
      }

      v23 = (v22 + 4);
    }

    else
    {
      v22 = v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__recordingState;
      swift_beginAccess();
      v21 = 0;
      v23 = (v22 + 4);
      if (*(v22 + 4))
      {
LABEL_24:
        *v22 = v21;
        *v23 = v20 == 0;
        sub_24AA50268();
        sub_24AA4AD50();

        return;
      }
    }

    if (v20 && *v22 == v21)
    {
      goto LABEL_24;
    }

    goto LABEL_25;
  }
}

void sub_24AA4D504()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_24AAB29D4();
    if (!v22[3])
    {

      sub_24AA169C4(v22, &qword_27EF85740, &qword_24AAB76D0);
      return;
    }

    sub_24AA442A0(0, &qword_27EF85748, 0x277D6EDE0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    v2 = [v21 callUUID];
    v3 = sub_24AAB4EF4();
    v5 = v4;

    if (v3 == *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel_callUUID) && v5 == *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel_callUUID + 8))
    {
    }

    else
    {
      v7 = sub_24AAB5474();

      if ((v7 & 1) == 0)
      {

        return;
      }
    }

    v8 = v21;
    v9 = sub_24AAB3A64();
    v10 = sub_24AAB5144();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 67109120;
      *(v11 + 4) = [v8 recordingAvailability];

      _os_log_impl(&dword_24AA0F000, v9, v10, "TUCallRecordingAvailabilityChanged has changed to %d", v11, 8u);
      MEMORY[0x24C226630](v11, -1, -1);
    }

    else
    {

      v9 = v8;
    }

    v12 = [v8 recordingAvailability];
    v13 = v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__recordingAvailability;
    if ((*(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__recordingAvailability + 4) & 1) != 0 || *v13 != v12)
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      v22[0] = v1;
      sub_24AA550A0(&qword_27EF85618, type metadata accessor for AudioCallRecordingViewModel);
      sub_24AAB2CE4();
    }

    else
    {
      *(v13 + 4) = 0;
      sub_24AA4AD50();
    }

    v15 = [v8 recordingSession];
    v16 = v15;
    if (v15)
    {
      v17 = [v15 recordingState];

      v18 = v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__recordingState;
      swift_beginAccess();
      if (*(v18 + 4))
      {
LABEL_27:
        v20 = swift_getKeyPath();
        MEMORY[0x28223BE20](v20);
        sub_24AA550A0(&qword_27EF85618, type metadata accessor for AudioCallRecordingViewModel);
        sub_24AAB2CE4();

        return;
      }

      v19 = (v18 + 4);
    }

    else
    {
      v18 = v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__recordingState;
      swift_beginAccess();
      v17 = 0;
      v19 = (v18 + 4);
      if (*(v18 + 4))
      {
LABEL_26:
        *v18 = v17;
        *v19 = v16 == 0;
        sub_24AA50268();
        sub_24AA4AD50();

        return;
      }
    }

    if (v16 && *v18 == v17)
    {
      goto LABEL_26;
    }

    goto LABEL_27;
  }
}

uint64_t sub_24AA4D9CC()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    sub_24AAB29D4();
    if (!v10)
    {

      return sub_24AA169C4(v9, &qword_27EF85740, &qword_24AAB76D0);
    }

    if ((swift_dynamicCast() & 1) == 0)
    {
    }

    if (v7 == *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel_callUUID) && v8 == *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel_callUUID + 8))
    {
    }

    else
    {
      v3 = sub_24AAB5474();

      if ((v3 & 1) == 0)
      {
      }
    }

    v4 = sub_24AAB3A64();
    v5 = sub_24AAB5144();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_24AA0F000, v4, v5, "Start pre-recording countdown", v6, 2u);
      MEMORY[0x24C226630](v6, -1, -1);
    }

    _s22FaceTimeNotificationUI27AudioCallRecordingViewModelC14startCountdownyyF_0();
  }

  return result;
}

void sub_24AA4DB54()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_24AAB29D4();
    if (!v10[3])
    {

      sub_24AA169C4(v10, &qword_27EF85740, &qword_24AAB76D0);
      return;
    }

    sub_24AA442A0(0, &qword_27EF85748, 0x277D6EDE0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    v2 = [v9 callUUID];
    v3 = sub_24AAB4EF4();
    v5 = v4;

    if (v3 == *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel_callUUID) && v5 == *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel_callUUID + 8))
    {
    }

    else
    {
      v7 = sub_24AAB5474();

      if ((v7 & 1) == 0)
      {
LABEL_17:

        return;
      }
    }

    if (*(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__prerecordingInProgress))
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      v10[0] = v1;
      sub_24AA550A0(&qword_27EF85618, type metadata accessor for AudioCallRecordingViewModel);
      sub_24AAB2CE4();
    }

    else
    {
      *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__prerecordingInProgress) = 0;
      sub_24AA50268();
      sub_24AA4AD50();
    }

    sub_24AA4AD50();
    goto LABEL_17;
  }
}

uint64_t sub_24AA4DDA4()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    sub_24AAB29D4();
    if (!v7[3])
    {

      return sub_24AA169C4(v7, &qword_27EF85740, &qword_24AAB76D0);
    }

    if ((swift_dynamicCast() & 1) == 0)
    {
    }

    if (v5 == *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel_callUUID) && v6 == *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel_callUUID + 8))
    {
    }

    else
    {
      v3 = sub_24AAB5474();

      if ((v3 & 1) == 0)
      {
      }
    }

    if (*(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__prerecordingInProgress))
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      v7[0] = v1;
      sub_24AA550A0(&qword_27EF85618, type metadata accessor for AudioCallRecordingViewModel);
      sub_24AAB2CE4();
    }

    else
    {
      *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__prerecordingInProgress) = 0;
      sub_24AA50268();
      sub_24AA4AD50();
    }

    sub_24AA4AD50();
  }

  return result;
}

uint64_t _s22FaceTimeNotificationUI27AudioCallRecordingViewModelC14startCountdownyyF_0()
{
  v65[1] = *MEMORY[0x277D85DE8];
  v1 = *v0;
  v2 = sub_24AAB2BD4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v62 = v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v63 = v61 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85868, &qword_24AAB7940);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = v61 - v14;
  MEMORY[0x28223BE20](v13);
  v64 = v61 - v16;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v18 = objc_opt_self();
  v19 = [v18 bundleForClass_];
  v20 = sub_24AAB4EE4();
  v21 = sub_24AAB4EE4();
  v22 = [v19 URLForResource:v20 withExtension:v21];

  if (v22)
  {
    sub_24AAB2BB4();

    (*(v3 + 56))(v15, 0, 1, v2);
  }

  else
  {
    (*(v3 + 56))(v15, 1, 1, v2);
  }

  v23 = v64;
  sub_24AA1A25C(v15, v64, &qword_27EF85868, &qword_24AAB7940);
  sub_24AA555D4(v23, v12);
  if ((*(v3 + 48))(v12, 1, v2) == 1)
  {
    sub_24AA169C4(v23, &qword_27EF85868, &qword_24AAB7940);
    v24 = v12;
  }

  else
  {
    v25 = v63;
    (*(v3 + 32))(v63, v12, v2);
    v26 = [v18 mainBundle];
    v27 = [v26 bundleIdentifier];

    if (v27)
    {
      v28 = sub_24AAB4EF4();
      v30 = v29;
      v61[1] = v0;
      v31 = sub_24AAB3A64();
      v32 = sub_24AAB5144();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v65[0] = v34;
        *v33 = 136315138;
        v35 = sub_24AA406B4(v28, v30, v65);

        *(v33 + 4) = v35;
        _os_log_impl(&dword_24AA0F000, v31, v32, "Requesting AVAudioApplication to allow playback for bundleName: %s", v33, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v34);
        MEMORY[0x24C226630](v34, -1, -1);
        MEMORY[0x24C226630](v33, -1, -1);
      }

      else
      {
      }

      v36 = objc_opt_self();
      v65[0] = 0;
      v37 = [v36 allowAppToInitiatePlaybackTemporarily:v27 error:v65];

      v38 = v65[0];
      v39 = v63;
      if (v37)
      {
        v40 = v62;
        (*(v3 + 16))(v62, v63, v2);
        v41 = objc_allocWithZone(MEMORY[0x277CB83D0]);
        v42 = v38;
        v43 = sub_24AA54124(v40);
        [v43 setNumberOfLoops_];
        LODWORD(v44) = 15.0;
        [v43 setVolume_];
        v45 = v43;
        sub_24AA4A870(v43);
        v46 = sub_24AAB3A64();
        v47 = sub_24AAB5144();
        if (os_log_type_enabled(v46, v47))
        {
          v48 = swift_slowAlloc();
          *v48 = 0;
          _os_log_impl(&dword_24AA0F000, v46, v47, "Playing countdown tone.", v48, 2u);
          MEMORY[0x24C226630](v48, -1, -1);
        }

        [v45 play];
        (*(v3 + 8))(v39, v2);
      }

      else
      {
        v49 = v65[0];
        v50 = sub_24AAB2B04();

        swift_willThrow();
        (*(v3 + 8))(v39, v2);
        v51 = v50;
        v52 = sub_24AAB3A64();
        v53 = sub_24AAB5124();

        if (os_log_type_enabled(v52, v53))
        {
          v54 = swift_slowAlloc();
          v55 = swift_slowAlloc();
          v65[0] = v55;
          *v54 = 136315138;
          swift_getErrorValue();
          v56 = sub_24AAB54E4();
          v58 = sub_24AA406B4(v56, v57, v65);

          *(v54 + 4) = v58;
          _os_log_impl(&dword_24AA0F000, v52, v53, "Error playing countdown tone: %s", v54, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v55);
          MEMORY[0x24C226630](v55, -1, -1);
          MEMORY[0x24C226630](v54, -1, -1);
        }

        else
        {
        }
      }

      v24 = v64;
    }

    else
    {
      (*(v3 + 8))(v25, v2);
      v24 = v23;
    }
  }

  result = sub_24AA169C4(v24, &qword_27EF85868, &qword_24AAB7940);
  v60 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_24AA4E714()
{
  swift_getKeyPath();
  sub_24AA550A0(&qword_27EF85618, type metadata accessor for AudioCallRecordingViewModel);
  sub_24AAB2CF4();

  return *(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__stopwatchValue);
}

uint64_t sub_24AA4E7BC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24AA550A0(&qword_27EF85618, type metadata accessor for AudioCallRecordingViewModel);
  sub_24AAB2CF4();

  *a2 = *(v3 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__stopwatchValue);
  return result;
}

uint64_t sub_24AA4E86C()
{
  swift_getKeyPath();
  sub_24AA550A0(&qword_27EF85618, type metadata accessor for AudioCallRecordingViewModel);
  sub_24AAB2CF4();

  v1 = OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__stopwatchValue;
  v2 = *(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__stopwatchValue);
  swift_getKeyPath();
  sub_24AAB2CF4();

  v3 = ((((34953 * (*(v0 + v1) % 3600)) >> 16) >> 5) + (((*(v0 + v1) % 3600 + ((-30583 * (*(v0 + v1) % 3600)) >> 16)) & 0x8000) >> 15));
  swift_getKeyPath();
  sub_24AAB2CF4();

  v4 = *(v0 + v1) % 60;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85A60, &qword_24AAB8138);
  v5 = swift_allocObject();
  if (v2 < 3600)
  {
    *(v5 + 16) = xmmword_24AAB7D10;
    v8 = MEMORY[0x277D83B88];
    v9 = MEMORY[0x277D83C10];
    *(v5 + 56) = MEMORY[0x277D83B88];
    *(v5 + 64) = v9;
    *(v5 + 32) = v3;
    *(v5 + 96) = v8;
    *(v5 + 104) = v9;
    *(v5 + 72) = v4;
  }

  else
  {
    v6 = MEMORY[0x277D83B88];
    *(v5 + 16) = xmmword_24AAB6FC0;
    v7 = MEMORY[0x277D83C10];
    *(v5 + 56) = v6;
    *(v5 + 64) = v7;
    *(v5 + 32) = v2 / 0xE10uLL;
    *(v5 + 96) = v6;
    *(v5 + 104) = v7;
    *(v5 + 72) = v3;
    *(v5 + 136) = v6;
    *(v5 + 144) = v7;
    *(v5 + 112) = v4;
  }

  return sub_24AAB4F04();
}

uint64_t sub_24AA4EB00()
{
  swift_getKeyPath();
  sub_24AA550A0(&qword_27EF85618, type metadata accessor for AudioCallRecordingViewModel);
  sub_24AAB2CF4();

  v1 = *(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__timeSink);
}

uint64_t sub_24AA4EBAC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24AA550A0(&qword_27EF85618, type metadata accessor for AudioCallRecordingViewModel);
  sub_24AAB2CF4();

  *a2 = *(v3 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__timeSink);
}

uint64_t sub_24AA4EC60(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__timeSink;
  if (!*(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__timeSink))
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24AA550A0(&qword_27EF85618, type metadata accessor for AudioCallRecordingViewModel);
    sub_24AAB2CE4();
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_24AAB3B34();
  sub_24AA550A0(&qword_27EF85A18, MEMORY[0x277CBCDA8]);

  v5 = sub_24AAB4E74();

  if ((v5 & 1) == 0)
  {
    goto LABEL_6;
  }

  v6 = *(v2 + v4);
LABEL_7:
  *(v2 + v4) = a1;
}

uint64_t sub_24AA4EE10(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = type metadata accessor for AudioCallRecordingButton(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = swift_allocObject();
  swift_weakInit();
  *v7 = xmmword_24AAB7080;
  v7[16] = 2;
  v9 = type metadata accessor for AudioCallRecordingControl(0);
  v10 = v9[5];

  sub_24AAB2B24();
  v11 = &v7[v9[6]];
  *v11 = 0xD000000000000015;
  *(v11 + 1) = 0x800000024AAD24B0;
  v12 = v9[7];
  if (qword_27EF84C70 != -1)
  {
    swift_once();
  }

  v13 = &v7[v12];
  v14 = unk_27EF91A00;
  v15 = qword_27EF91A08;
  v16 = unk_27EF91A10;
  *v13 = qword_27EF919F8;
  *(v13 + 1) = v14;
  *(v13 + 2) = v15;
  *(v13 + 3) = v16;
  v7[v9[8]] = 0;
  v7[v9[9]] = 0;
  v17 = &v7[*(v4 + 20)];
  *v17 = sub_24AA55578;
  v17[1] = v8;
  v18 = &v7[*(v4 + 24)];
  v21[1] = a2;

  sub_24AA1B750(v15, v16);

  sub_24AAB4B54();

  v19 = v21[3];
  *v18 = v21[2];
  *(v18 + 1) = v19;
  sub_24AA550A0(&qword_27EF85A00, type metadata accessor for AudioCallRecordingButton);
  return sub_24AAB4BD4();
}

void sub_24AA4F070()
{
  v0 = sub_24AAB3A64();
  v1 = sub_24AAB5144();
  if (os_log_type_enabled(v0, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_24AA0F000, v0, v1, "did tap start call recording", v2, 2u);
    MEMORY[0x24C226630](v2, -1, -1);
  }

  AudioCallRecordingViewModel.startRecordingButtonTapped()();
}

uint64_t sub_24AA4F120(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for AudioCallCountDownButton(0);
  v4 = *(*(v3 - 1) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = swift_allocObject();
  swift_weakInit();
  v8 = type metadata accessor for CountdownTimerViewModel(0);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  v11 = swift_allocObject();
  v11[3] = 0;
  v11[4] = 0;
  v11[2] = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85A40, &qword_24AAB8100);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();

  v11[5] = sub_24AAB3B64();
  sub_24AAB2D24();
  *v6 = xmmword_24AAB7080;
  v6[16] = 2;
  v15 = type metadata accessor for CallRecordingCountDownControl(0);
  v16 = &v6[v15[5]];
  sub_24AAB2B24();
  v17 = &v6[v15[6]];
  *v17 = 0x7269632E706F7473;
  *(v17 + 1) = 0xEB00000000656C63;
  v18 = v15[7];
  if (qword_27EF84C70 != -1)
  {
    swift_once();
  }

  v19 = &v6[v18];
  v20 = unk_27EF91A00;
  v21 = qword_27EF91A08;
  v22 = unk_27EF91A10;
  *v19 = qword_27EF919F8;
  *(v19 + 1) = v20;
  *(v19 + 2) = v21;
  *(v19 + 3) = v22;
  v6[v15[8]] = 0;
  v6[v15[9]] = 0;
  v23 = &v6[v3[5]];
  *v23 = sub_24AA5597C;
  v23[1] = v7;
  v24 = &v6[v3[6]];
  *v24 = sub_24AA559AC;
  *(v24 + 1) = a2;
  *&v6[v3[7]] = 3;
  v25 = &v6[v3[8]];
  v31 = v11;

  sub_24AA1B750(v21, v22);
  sub_24AAB4B54();
  v26 = v33;
  *v25 = v32;
  *(v25 + 1) = v26;
  v27 = &v6[v3[9]];
  v31 = MEMORY[0x277D84FA0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85A48, &qword_24AAB8108);
  sub_24AAB4B54();

  v28 = v33;
  *v27 = v32;
  *(v27 + 1) = v28;
  sub_24AA550A0(&qword_27EF85A50, type metadata accessor for AudioCallCountDownButton);
  return sub_24AAB4BD4();
}

void sub_24AA4F420()
{
  v1 = v0;
  v2 = sub_24AAB3A64();
  v3 = sub_24AAB5144();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24AA0F000, v2, v3, "did tap stop count down", v4, 2u);
    MEMORY[0x24C226630](v4, -1, -1);
  }

  sub_24AA4FF1C();
  v5 = [objc_opt_self() defaultCenter];
  v6 = sub_24AAB51B4();
  v7 = *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel_callUUID);
  v8 = *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel_callUUID + 8);
  v9 = sub_24AAB4EE4();
  [v5 postNotificationName:v6 object:v9];
}

void *sub_24AA4F548()
{
  v1 = v0;
  v2 = sub_24AAB3A64();
  v3 = sub_24AAB5144();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_24AA0F000, v2, v3, "startRecord", v4, 2u);
    MEMORY[0x24C226630](v4, -1, -1);
  }

  if (*(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__prerecordingInProgress))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24AA550A0(&qword_27EF85618, type metadata accessor for AudioCallRecordingViewModel);
    sub_24AAB2CE4();

    result = sub_24AA547B8();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__prerecordingInProgress) = 0;
    sub_24AA50268();
    sub_24AA4AD50();
    result = sub_24AA547B8();
    if (!result)
    {
      return result;
    }
  }

  v7 = result;
  v8 = sub_24AAB3A64();
  v9 = sub_24AAB5144();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_24AA0F000, v8, v9, "activeCall", v10, 2u);
    MEMORY[0x24C226630](v10, -1, -1);
  }

  swift_getKeyPath();
  sub_24AA550A0(&qword_27EF85618, type metadata accessor for AudioCallRecordingViewModel);
  sub_24AAB2CF4();

  v11 = *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__callRecordingService);
  swift_allocObject();
  swift_weakInit();

  sub_24AAB2DE4();
}

uint64_t sub_24AA4F84C()
{
  v0 = type metadata accessor for StopCallRecordingButton(0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = swift_allocObject();
  swift_weakInit();
  *v3 = xmmword_24AAB7080;
  v3[16] = 2;
  v5 = type metadata accessor for StopCallRecordingControl(0);
  v6 = v5[5];

  sub_24AAB2B24();
  v7 = &v3[v5[6]];
  *v7 = 0x6C69662E706F7473;
  *(v7 + 1) = 0xE90000000000006CLL;
  v8 = &v3[v5[7]];
  v9 = [objc_opt_self() systemRedColor];
  v10 = sub_24AAB49C4();

  *v8 = 0;
  *(v8 + 1) = v10;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  v3[v5[8]] = 0;
  v3[v5[9]] = 0;
  v11 = &v3[*(v0 + 20)];
  *v11 = sub_24AA55A7C;
  v11[1] = v4;
  sub_24AA550A0(&qword_27EF85A58, type metadata accessor for StopCallRecordingButton);
  return sub_24AAB4BD4();
}

uint64_t sub_24AA4FA10(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a2();
  }

  return result;
}

double sub_24AA4FA70@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  swift_getKeyPath();
  sub_24AA550A0(&qword_27EF85618, type metadata accessor for AudioCallRecordingViewModel);
  sub_24AAB2CF4();

  if (*(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__canShowCallRecord) == 1)
  {
    swift_getKeyPath();
    sub_24AAB2CF4();

    if (*(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__prerecordingInProgress) == 1)
    {
      v4 = type metadata accessor for CustomViewControl(0);
      *(a1 + 24) = v4;
      *(a1 + 32) = sub_24AA550A0(&qword_27EF85680, type metadata accessor for CustomViewControl);
      boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(a1);
      v6 = boxed_opaque_existential_1Tm + v4[6];
      sub_24AAB2B24();
      v7 = qword_27EF84C70;

      if (v7 != -1)
      {
        swift_once();
      }

      v8 = qword_27EF919F8;
      v9 = unk_27EF91A00;
      v10 = qword_27EF91A08;
      v11 = unk_27EF91A10;
      *(boxed_opaque_existential_1Tm + v4[8]) = 0;
      *(boxed_opaque_existential_1Tm + v4[9]) = 0;
      *boxed_opaque_existential_1Tm = xmmword_24AAB7080;
      *(boxed_opaque_existential_1Tm + 16) = 2;
      boxed_opaque_existential_1Tm[3] = 0;
      boxed_opaque_existential_1Tm[4] = 0xE000000000000000;
      v12 = (boxed_opaque_existential_1Tm + v4[7]);
      *v12 = v8;
      v12[1] = v9;
      v12[2] = v10;
      v12[3] = v11;
      v13 = (boxed_opaque_existential_1Tm + v4[10]);
      *v13 = 0xD000000000000017;
      v13[1] = 0x800000024AAD2510;
      v14 = (boxed_opaque_existential_1Tm + v4[11]);
      v15 = sub_24AA55954;
LABEL_6:
      *v14 = v15;
      v14[1] = v2;

      sub_24AA1B750(v10, v11);
      return result;
    }

    swift_getKeyPath();
    sub_24AAB2CF4();

    v17 = v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__recordingState;
    swift_beginAccess();
    if ((*(v17 + 4) & 1) == 0)
    {
      v18 = *v17;
      if (*v17 <= 2)
      {
        if (v18 == 1 || v18 == 2)
        {
          goto LABEL_8;
        }
      }

      else
      {
        if (v18 == 3)
        {
          v22 = type metadata accessor for CustomViewControl(0);
          *(a1 + 24) = v22;
          *(a1 + 32) = sub_24AA550A0(&qword_27EF85680, type metadata accessor for CustomViewControl);
          v23 = __swift_allocate_boxed_opaque_existential_1Tm(a1);
          v24 = v23 + v22[6];
          sub_24AAB2B24();
          v25 = qword_27EF84C70;

          if (v25 != -1)
          {
            swift_once();
          }

          v26 = qword_27EF919F8;
          v27 = unk_27EF91A00;
          v10 = qword_27EF91A08;
          v11 = unk_27EF91A10;
          *(v23 + v22[8]) = 0;
          *(v23 + v22[9]) = 0;
          *v23 = xmmword_24AAB7080;
          *(v23 + 16) = 2;
          v23[3] = 0;
          v23[4] = 0xE000000000000000;
          v28 = (v23 + v22[7]);
          *v28 = v26;
          v28[1] = v27;
          v28[2] = v10;
          v28[3] = v11;
          v29 = (v23 + v22[10]);
          *v29 = 0xD000000000000010;
          v29[1] = 0x800000024AAD24F0;
          v14 = (v23 + v22[11]);
          v15 = sub_24AA5594C;
          goto LABEL_6;
        }

        if (v18 == 5 || v18 == 4)
        {
          goto LABEL_8;
        }
      }

      v19 = sub_24AAB3A64();
      v20 = sub_24AAB5144();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 67109120;
        *(v21 + 4) = v18;
        _os_log_impl(&dword_24AA0F000, v19, v20, "unknown recordingState %d", v21, 8u);
        MEMORY[0x24C226630](v21, -1, -1);
      }
    }
  }

LABEL_8:
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_24AA4FF1C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85620, &qword_24AAB7330);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v12 - v4;
  swift_getKeyPath();
  v13 = v0;
  sub_24AA550A0(&qword_27EF85618, type metadata accessor for AudioCallRecordingViewModel);
  sub_24AAB2CF4();

  if (*(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__timeSink))
  {
    v6 = *(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__timeSink);

    sub_24AAB3B24();
  }

  swift_getKeyPath();
  v13 = v0;
  sub_24AAB2CF4();

  [*(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__avAudioPlayer) stop];
  v7 = sub_24AAB50F4();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  sub_24AAB50C4();

  v8 = sub_24AAB50B4();
  v9 = swift_allocObject();
  v10 = MEMORY[0x277D85700];
  v9[2] = v8;
  v9[3] = v10;
  v9[4] = v1;
  sub_24AA330D4(0, 0, v5, &unk_24AAB80F8, v9);
}

void *sub_24AA50128()
{
  v1 = [*(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel_callCenter) currentCalls];
  sub_24AA442A0(0, &qword_27EF85748, 0x277D6EDE0);
  v2 = sub_24AAB5024();

  if (v2 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_24AAB52F4())
  {
    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x24C225BD0](v4, v2);
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if ([v5 isRecording])
      {

        return v6;
      }

      ++v4;
      if (v7 == i)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_16:

  return 0;
}

uint64_t sub_24AA50268()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF855E8, &unk_24AABCB40);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v40 - v4;
  v6 = sub_24AAB2C54();
  v44 = *(v6 - 8);
  v7 = *(v44 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v41 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v40 = &v40 - v10;
  v11 = sub_24AAB2CD4();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = sub_24AAB4ED4();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v40 - v19;
  swift_getKeyPath();
  v21 = OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel___observationRegistrar;
  v46[0] = v1;
  v42 = sub_24AA550A0(&qword_27EF85618, type metadata accessor for AudioCallRecordingViewModel);
  v43 = v21;
  sub_24AAB2CF4();

  v45 = v1;
  if (*(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__prerecordingInProgress) == 1)
  {
    sub_24AAB4E84();
    (*(v14 + 16))(v18, v20, v13);
    if (qword_27EF84C50 != -1)
    {
      swift_once();
    }

    v22 = qword_27EF919A8;
    sub_24AAB2CC4();
    v23 = sub_24AAB4F14();
    v25 = v24;
    (*(v14 + 8))(v20, v13);
    return sub_24AA4A584(v23, v25);
  }

  AudioCallRecordingViewModel.recordingStartedDate.getter(v5);
  v27 = v44;
  if ((*(v44 + 48))(v5, 1, v6) == 1)
  {
    result = sub_24AA169C4(v5, &qword_27EF855E8, &unk_24AABCB40);
    v28 = v45;
    v29 = (v45 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__statusLabel);
    if (*(v45 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__statusLabel + 8))
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      *(&v40 - 3) = 0;
      *(&v40 - 2) = 0;
      *(&v40 - 4) = v28;
      v46[0] = v28;
      sub_24AAB2CE4();
    }

    else
    {
      *v29 = 0;
      v29[1] = 0;
    }

    return result;
  }

  v31 = v40;
  (*(v27 + 32))(v40, v5, v6);
  v32 = v41;
  sub_24AAB2C34();
  sub_24AAB2C14();
  v34 = v33;
  v35 = v33;
  v36 = *(v27 + 8);
  v36(v32, v6);
  result = (v36)(v31, v6);
  if ((*&v35 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v34 <= -9.22337204e18)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v34 >= 9.22337204e18)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v37 = v45;
  if (*(v45 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__stopwatchValue) != v34)
  {
    v38 = swift_getKeyPath();
    MEMORY[0x28223BE20](v38);
    *(&v40 - 2) = v37;
    *(&v40 - 1) = v34;
    v46[0] = v37;
    sub_24AAB2CE4();
  }

  strcpy(v46, "Recording - ");
  BYTE5(v46[1]) = 0;
  HIWORD(v46[1]) = -5120;
  v39 = sub_24AA4E86C();
  MEMORY[0x24C2257F0](v39);

  return sub_24AA4A584(v46[0], v46[1]);
}

uint64_t sub_24AA5086C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_24AAB50C4();
  *(v4 + 24) = sub_24AAB50B4();
  v6 = sub_24AAB5094();

  return MEMORY[0x2822009F8](sub_24AA50904, v6, v5);
}

uint64_t sub_24AA50904()
{
  v2 = v0[2];
  v1 = v0[3];

  sub_24AA50968();
  v3 = v0[1];

  return v3();
}

void sub_24AA50968()
{
  v1 = v0;
  v2 = sub_24AA50128();
  if (v2 || (v5 = sub_24AA547B8()) != 0 && (v6 = v5, v7 = [v5 recordingSession], v6, v7) && (v8 = objc_msgSend(v7, sel_recordingState), v7, v8 == 2) && (v2 = sub_24AA547B8()) != 0)
  {
    v3 = v2;
    swift_getKeyPath();
    sub_24AA550A0(&qword_27EF85618, type metadata accessor for AudioCallRecordingViewModel);
    sub_24AAB2CF4();

    v4 = *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__callRecordingService);

    sub_24AAB2DD4();
  }
}

void sub_24AA50AB8(uint64_t a1)
{
  if (a1)
  {
    oslog = sub_24AAB3A64();
    v1 = sub_24AAB5144();
    if (os_log_type_enabled(oslog, v1))
    {
      v2 = swift_slowAlloc();
      *v2 = 0;
      _os_log_impl(&dword_24AA0F000, oslog, v1, "Handling error: stop recording failed", v2, 2u);
      MEMORY[0x24C226630](v2, -1, -1);
    }
  }
}

uint64_t AudioCallRecordingViewModel.deinit()
{
  v1 = OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel_logger;
  v2 = sub_24AAB3A84();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel_callUUID + 8);

  v4 = *(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__callRecordingService);

  v5 = *(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__statusLabel + 8);

  v6 = *(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__cancellables);

  v7 = *(v0 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__timeSink);

  v8 = OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel___observationRegistrar;
  v9 = sub_24AAB2D34();
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  return v0;
}

uint64_t AudioCallRecordingViewModel.__deallocating_deinit()
{
  AudioCallRecordingViewModel.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

unint64_t sub_24AA50CF0()
{
  v1 = *v0;
  swift_getKeyPath();
  sub_24AA550A0(&qword_27EF85618, type metadata accessor for AudioCallRecordingViewModel);
  sub_24AAB2CF4();

  v2 = (v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__recordingState);
  swift_beginAccess();
  return *v2 | (*(v2 + 4) << 32);
}

void (*sub_24AA50DF8(uint64_t **a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  v3[4] = AudioCallRecordingViewModel.recordingState.modify(v3);
  return sub_24AA50E6C;
}

void sub_24AA50E6C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_24AA50F20(uint64_t a1)
{
  v2 = sub_24AAB3A84();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  result = MEMORY[0x28223BE20](v2);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      (*(v3 + 16))(v7, Strong + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel_logger, v2);

      v9 = sub_24AAB3A64();
      v10 = sub_24AAB5144();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&dword_24AA0F000, v9, v10, "Handling error: start recording failed", v11, 2u);
        MEMORY[0x24C226630](v11, -1, -1);
      }

      (*(v3 + 8))(v7, v2);
    }

    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      v12 = result;
      v13 = result + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__recordingState;
      swift_beginAccess();
      if (*(v13 + 4) == 1)
      {
        *v13 = 0;
        *(v13 + 4) = 1;
        sub_24AA50268();
        sub_24AA4AD50();
      }

      else
      {
        KeyPath = swift_getKeyPath();
        MEMORY[0x28223BE20](KeyPath);
        v15[-2] = v12;
        LODWORD(v15[-1]) = 0;
        BYTE4(v15[-1]) = 1;
        v15[2] = v12;
        sub_24AA550A0(&qword_27EF85618, type metadata accessor for AudioCallRecordingViewModel);
        sub_24AAB2CE4();
      }
    }
  }

  return result;
}

uint64_t sub_24AA512E4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v49 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84CE8, &qword_24AAB85F0);
  v4 = *(*(v3 - 1) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v41 - v5;
  v48 = type metadata accessor for AudioCallRecordingButton(0);
  v7 = *(v48 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v48);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85B78, &qword_24AAB85F8);
  v43 = *(v45 - 8);
  v9 = *(v43 + 64);
  MEMORY[0x28223BE20](v45);
  v11 = &v41 - v10;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85B80, &qword_24AAB8600);
  v44 = *(v46 - 8);
  v12 = *(v44 + 64);
  MEMORY[0x28223BE20](v46);
  v14 = &v41 - v13;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85B88, &qword_24AAB8608);
  v15 = *(*(v42 - 8) + 64);
  MEMORY[0x28223BE20](v42);
  v47 = &v41 - v16;
  sub_24AA56AD8(v2, &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AudioCallRecordingButton);
  v17 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v18 = swift_allocObject();
  sub_24AA56B44(&v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17, type metadata accessor for AudioCallRecordingButton);
  sub_24AAB4BB4();
  v19 = type metadata accessor for AudioCallRecordingControl(0);
  v20 = *(v19 + 28);
  if (*(v2 + *(v19 + 36)) == 1 && (v21 = *(v2 + v20 + 24)) != 0)
  {
    v22 = *(v2 + v20 + 16);
  }

  else
  {
    v23 = (v2 + v20);
    v22 = *v23;
    v21 = v23[1];
  }

  *v6 = swift_getKeyPath();
  v6[8] = 0;
  v24 = v3[9];
  *&v6[v24] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84DF0, &qword_24AAB6650);
  swift_storeEnumTagMultiPayload();
  v25 = &v6[v3[10]];
  *v25 = v22;
  *(v25 + 1) = v21;
  v26 = &v6[v3[12]];
  *v26 = vdupq_n_s64(0x4041800000000000uLL);
  v26[1].i8[0] = 0;
  v27 = &v6[v3[13]];
  sub_24AA16A68(&qword_27EF85B90, &qword_27EF85B78, &qword_24AAB85F8);
  sub_24AA16A68(&qword_27EF84D20, &qword_27EF84CE8, &qword_24AAB85F0);
  *v27 = 0u;
  *(v27 + 1) = 0u;
  v28 = v45;
  sub_24AAB47E4();
  sub_24AA169C4(v6, &qword_27EF84CE8, &qword_24AAB85F0);
  (*(v43 + 8))(v11, v28);
  v29 = v47;
  v30 = &v47[*(v42 + 36)];
  v31 = v30 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84D18, &qword_24AABDA10) + 28);
  sub_24AAB3F44();
  *v30 = swift_getKeyPath();
  (*(v44 + 32))(v29, v14, v46);
  v32 = (v2 + *(v48 + 24));
  v34 = *v32;
  v33 = v32[1];
  v51 = v34;
  v52 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85B98, &qword_24AAB86A0);
  sub_24AAB4B64();
  v35 = v50;
  swift_getKeyPath();
  v51 = v35;
  sub_24AA550A0(&qword_27EF85618, type metadata accessor for AudioCallRecordingViewModel);
  sub_24AAB2CF4();

  LOBYTE(v24) = *(v35 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__canStartRecord);

  KeyPath = swift_getKeyPath();
  v37 = swift_allocObject();
  *(v37 + 16) = (v24 & 1) == 0;
  v38 = v49;
  sub_24AA1A25C(v29, v49, &qword_27EF85B88, &qword_24AAB8608);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85BA0, &unk_24AAB86D8);
  v40 = (v38 + *(result + 36));
  *v40 = KeyPath;
  v40[1] = sub_24AA56AD0;
  v40[2] = v37;
  return result;
}

void sub_24AA5191C(uint64_t *a1@<X8>)
{
  v2 = [objc_opt_self() preferredFontForTextStyle_];
  v3 = [objc_opt_self() configurationWithFont_];

  v4 = sub_24AAB4EE4();
  v5 = [objc_opt_self() _systemImageNamed_withConfiguration_];

  if (v5)
  {
    v6 = [v5 imageWithRenderingMode_];

    *a1 = sub_24AAB4AB4();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_24AA51A48(uint64_t a1, uint64_t (*a2)(void))
{
  v17 = *v2;
  v18 = *(v2 + 16);
  CallAction.hash(into:)(a1);
  v4 = a2(0);
  v5 = v4[5];
  sub_24AAB2B64();
  sub_24AAB4F64();

  sub_24AAB2B74();
  if (v6)
  {
    sub_24AAB5514();
    sub_24AAB4F64();
  }

  else
  {
    sub_24AAB5514();
  }

  v7 = (v2 + v4[6]);
  v8 = *v7;
  v9 = v7[1];
  sub_24AAB4F64();
  v10 = (v2 + v4[7]);
  v11 = v10[1];
  v13 = v10[2];
  v12 = v10[3];
  if (*v10)
  {
    MEMORY[0x24C225D50](0);
    sub_24AAB4A04();
  }

  else
  {
    MEMORY[0x24C225D50](1);
  }

  sub_24AAB4A04();
  if (v12)
  {
    sub_24AAB5514();
    if (v13)
    {
      MEMORY[0x24C225D50](0);
      sub_24AAB4A04();
    }

    else
    {
      MEMORY[0x24C225D50](1);
    }

    sub_24AAB4A04();
  }

  else
  {
    sub_24AAB5514();
  }

  v14 = *(v2 + v4[8]);
  sub_24AAB5514();
  v15 = *(v2 + v4[9]);
  return sub_24AAB5514();
}

uint64_t sub_24AA51CA4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v48 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84CE8, &qword_24AAB85F0);
  v4 = *(*(v3 - 1) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v39 - v5;
  v7 = type metadata accessor for AudioCallCountDownButton(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84F18, &qword_24AAB6720);
  v42 = *(v44 - 8);
  v10 = *(v42 + 64);
  MEMORY[0x28223BE20](v44);
  v12 = &v39 - v11;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85BA8, &qword_24AAB86E8);
  v43 = *(v45 - 8);
  v13 = *(v43 + 64);
  MEMORY[0x28223BE20](v45);
  v15 = &v39 - v14;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85BB0, &qword_24AAB86F0);
  v16 = *(*(v40 - 8) + 64);
  MEMORY[0x28223BE20](v40);
  v41 = &v39 - v17;
  sub_24AA56AD8(v2, &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AudioCallCountDownButton);
  v18 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v46 = v9;
  v19 = swift_allocObject();
  v47 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24AA56B44(v47, v19 + v18, type metadata accessor for AudioCallCountDownButton);
  v49 = v2;
  sub_24AAB4BB4();
  v20 = type metadata accessor for CallRecordingCountDownControl(0);
  v21 = *(v2 + *(v20 + 36));
  v22 = *(v20 + 28);
  v39 = v2;
  if (v21 == 1 && (v23 = *(v2 + v22 + 24)) != 0)
  {
    v24 = *(v2 + v22 + 16);
  }

  else
  {
    v25 = (v2 + v22);
    v24 = *v25;
    v23 = v25[1];
  }

  *v6 = swift_getKeyPath();
  v6[8] = 0;
  v26 = v3[9];
  *&v6[v26] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84DF0, &qword_24AAB6650);
  swift_storeEnumTagMultiPayload();
  v27 = &v6[v3[10]];
  *v27 = v24;
  *(v27 + 1) = v23;
  v28 = &v6[v3[12]];
  *v28 = vdupq_n_s64(0x4041800000000000uLL);
  v28[1].i8[0] = 0;
  v29 = &v6[v3[13]];
  sub_24AA16A68(&qword_27EF84F10, &qword_27EF84F18, &qword_24AAB6720);
  sub_24AA16A68(&qword_27EF84D20, &qword_27EF84CE8, &qword_24AAB85F0);
  *v29 = 0u;
  *(v29 + 1) = 0u;
  v30 = v44;
  sub_24AAB47E4();
  sub_24AA169C4(v6, &qword_27EF84CE8, &qword_24AAB85F0);
  (*(v42 + 8))(v12, v30);
  v31 = v41;
  v32 = &v41[*(v40 + 36)];
  v33 = v32 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84D18, &qword_24AABDA10) + 28);
  sub_24AAB3F44();
  *v32 = swift_getKeyPath();
  (*(v43 + 32))(v31, v15, v45);
  v34 = v47;
  sub_24AA56AD8(v39, v47, type metadata accessor for AudioCallCountDownButton);
  v35 = swift_allocObject();
  sub_24AA56B44(v34, v35 + v18, type metadata accessor for AudioCallCountDownButton);
  v36 = v48;
  sub_24AA1A25C(v31, v48, &qword_27EF85BB0, &qword_24AAB86F0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85BB8, &qword_24AAB86F8);
  v38 = (v36 + *(result + 36));
  *v38 = sub_24AA56D60;
  v38[1] = v35;
  v38[2] = 0;
  v38[3] = 0;
  return result;
}

uint64_t sub_24AA5224C(uint64_t a1)
{
  v2 = type metadata accessor for AudioCallCountDownButton(0);
  v3 = (a1 + *(v2 + 32));
  v11 = *v3;
  v12 = v3[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85BC0, &qword_24AAB8700);
  sub_24AAB4B64();
  swift_getKeyPath();
  sub_24AA550A0(&qword_27EF859D8, type metadata accessor for CountdownTimerViewModel);
  sub_24AAB2CF4();

  if (*(v10 + 24))
  {
    v4 = *(v10 + 24);

    sub_24AAB3B24();
  }

  sub_24AA539A4(0);
  v5 = *(v10 + 40);
  sub_24AAB3B54();

  v7 = a1 + *(v2 + 20);
  v8 = *(v7 + 8);
  return (*v7)(v6);
}

uint64_t sub_24AA52390@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for AudioCallCountDownButton(0) + 32));
  v14 = *v3;
  v15 = v3[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85BC0, &qword_24AAB8700);
  sub_24AAB4B64();
  swift_getKeyPath();
  sub_24AA550A0(&qword_27EF859D8, type metadata accessor for CountdownTimerViewModel);
  sub_24AAB2CF4();

  v4 = *(v13 + 16);

  sub_24AAB5444();
  sub_24AAB45D4();
  v5 = sub_24AAB4704();
  v7 = v6;
  v9 = v8;
  v11 = v10;

  *a2 = v5;
  *(a2 + 8) = v7;
  *(a2 + 16) = v9 & 1;
  *(a2 + 24) = v11;
  return result;
}

uint64_t CountdownTimerViewModel.remainingTime.getter()
{
  swift_getKeyPath();
  sub_24AA550A0(&qword_27EF859D8, type metadata accessor for CountdownTimerViewModel);
  sub_24AAB2CF4();

  return *(v0 + 16);
}

uint64_t sub_24AA5259C(uint64_t a1)
{
  v2 = type metadata accessor for AudioCallCountDownButton(0);
  v3 = (v2 - 8);
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (a1 + v3[10]);
  v8 = v6[1];
  v20 = *v6;
  v7 = v20;
  v21 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85BC0, &qword_24AAB8700);
  sub_24AAB4B64();
  sub_24AA52830(*(a1 + v3[9]));

  v20 = v7;
  v21 = v8;
  sub_24AAB4B64();
  v9 = *(v17 + 40);

  v20 = v9;
  sub_24AA56AD8(a1, &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AudioCallCountDownButton);
  v10 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v11 = swift_allocObject();
  sub_24AA56B44(&v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10, type metadata accessor for AudioCallCountDownButton);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85A40, &qword_24AAB8100);
  sub_24AA16A68(&qword_27EF85BC8, &qword_27EF85A40, &qword_24AAB8100);
  sub_24AAB3C44();

  v12 = (a1 + v3[11]);
  v14 = v12[1];
  v20 = *v12;
  v13 = v20;
  v21 = v14;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85BD0, &qword_24AAB8708);
  sub_24AAB4B64();
  sub_24AAB3B14();

  v17 = v13;
  v18 = v14;
  v16 = v19;
  sub_24AAB4B74();
}

uint64_t sub_24AA52830(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85BE0, &qword_24AAB8710);
  v4 = *(*(v3 - 8) + 64);
  result = MEMORY[0x28223BE20](v3 - 8);
  v7 = v18 - v6;
  if (a1 >= 1)
  {
    swift_getKeyPath();
    v19 = v1;
    sub_24AA550A0(&qword_27EF859D8, type metadata accessor for CountdownTimerViewModel);
    sub_24AAB2CF4();

    if (v1[3])
    {
      v8 = v1[3];

      sub_24AAB3B24();
    }

    sub_24AA539A4(0);
    v9 = v1[5];
    v19 = 1;
    v20 = 2;
    sub_24AAB3B54();
    if (v1[4] != a1)
    {
      KeyPath = swift_getKeyPath();
      v18[0] = v18;
      MEMORY[0x28223BE20](KeyPath);
      v18[-2] = v1;
      v18[-1] = a1;
      v19 = v1;
      sub_24AAB2CE4();
    }

    if (v1[2] != a1)
    {
      v11 = swift_getKeyPath();
      v18[0] = v18;
      MEMORY[0x28223BE20](v11);
      v18[-2] = v1;
      v18[-1] = a1;
      v19 = v1;
      sub_24AAB2CE4();
    }

    swift_getKeyPath();
    v19 = v1;
    sub_24AAB2CF4();

    v19 = v1[4];
    v20 = 0;
    sub_24AAB3B54();
    sub_24AA442A0(0, &qword_27EF85BE8, 0x277CBEBB8);
    v12 = [objc_opt_self() mainRunLoop];
    v13 = *MEMORY[0x277CBE738];
    v14 = sub_24AAB5234();
    (*(*(v14 - 8) + 56))(v7, 1, 1, v14);
    v15 = sub_24AAB51F4();

    sub_24AA169C4(v7, &qword_27EF85BE0, &qword_24AAB8710);
    v19 = v15;
    sub_24AAB51E4();
    sub_24AA550A0(&qword_27EF85BF0, MEMORY[0x277CC9DF0]);
    v16 = sub_24AAB3B74();

    v19 = v16;
    swift_allocObject();
    swift_weakInit();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85BF8, &unk_24AAB8768);
    sub_24AA16A68(&qword_27EF85C00, &qword_27EF85BF8, &unk_24AAB8768);
    v17 = sub_24AAB3C44();

    return sub_24AA539A4(v17);
  }

  return result;
}

void sub_24AA52CDC(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  if (!*(a1 + 8))
  {
    sub_24AA442A0(0, &qword_27EF85BD8, 0x277D86200);
    oslog = sub_24AAB5264();
    v3 = sub_24AAB5144();
    if (!os_log_type_enabled(oslog, v3))
    {
      goto LABEL_11;
    }

    v4 = swift_slowAlloc();
    *v4 = 134217984;
    *(v4 + 4) = v2;
    v5 = "total time: %ld";
    goto LABEL_7;
  }

  if (*(a1 + 8) == 1)
  {
    sub_24AA442A0(0, &qword_27EF85BD8, 0x277D86200);
    oslog = sub_24AAB5264();
    v3 = sub_24AAB5144();
    if (!os_log_type_enabled(oslog, v3))
    {
      goto LABEL_11;
    }

    v4 = swift_slowAlloc();
    *v4 = 134217984;
    *(v4 + 4) = v2;
    v5 = "Remaining: %ld seconds";
LABEL_7:
    _os_log_impl(&dword_24AA0F000, oslog, v3, v5, v4, 0xCu);
    MEMORY[0x24C226630](v4, -1, -1);
    goto LABEL_11;
  }

  if (!v2)
  {
    v6 = a2 + *(type metadata accessor for AudioCallCountDownButton(0) + 24);
    v7 = *(v6 + 8);
    (*v6)();
  }

  sub_24AA442A0(0, &qword_27EF85BD8, 0x277D86200);
  oslog = sub_24AAB5264();
  sub_24AAB5144();
  sub_24AAB3A44();
LABEL_11:
}

uint64_t sub_24AA52F00(uint64_t a1)
{
  v2 = (v1 + *(a1 + 24));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t sub_24AA52F38@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + 16);
  *(a1 + 16) = v4;
  return sub_24AA15F10(v2, v3, v4);
}

uint64_t sub_24AA52F68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_24AAB2B84();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_24AA52FDC(uint64_t a1)
{
  v2 = (v1 + *(a1 + 28));
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  v6 = v2[3];

  sub_24AA1B750(v5, v6);
  return v3;
}

uint64_t sub_24AA53054(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  sub_24AAB54F4();
  sub_24AA51A48(v5, a3);
  return sub_24AAB5524();
}

uint64_t sub_24AA530E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  sub_24AAB54F4();
  sub_24AA51A48(v6, a4);
  return sub_24AAB5524();
}

uint64_t sub_24AA53154@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v40 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84CE8, &qword_24AAB85F0);
  v4 = *(*(v3 - 1) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v35 - v5;
  v7 = type metadata accessor for StopCallRecordingButton(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84CF8, &unk_24AAB6310);
  v36 = *(v10 - 8);
  v37 = v10;
  v11 = *(v36 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v35 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85C08, &qword_24AAB8778);
  v38 = *(v14 - 8);
  v39 = v14;
  v15 = *(v38 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v35 - v16;
  sub_24AA56AD8(v2, &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for StopCallRecordingButton);
  v18 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v19 = swift_allocObject();
  sub_24AA56B44(&v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18, type metadata accessor for StopCallRecordingButton);
  v41 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84EB8, &unk_24AAB8780);
  sub_24AA15964();
  sub_24AAB4BB4();
  v20 = type metadata accessor for StopCallRecordingControl(0);
  v21 = *(v20 + 28);
  if (*(v2 + *(v20 + 36)) == 1 && (v22 = *(v2 + v21 + 24)) != 0)
  {
    v23 = *(v2 + v21 + 16);
  }

  else
  {
    v24 = (v2 + v21);
    v23 = *v24;
    v22 = v24[1];
  }

  *v6 = swift_getKeyPath();
  v6[8] = 0;
  v25 = v3[9];
  *&v6[v25] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84DF0, &qword_24AAB6650);
  swift_storeEnumTagMultiPayload();
  v26 = &v6[v3[10]];
  *v26 = v23;
  *(v26 + 1) = v22;
  v27 = &v6[v3[12]];
  *v27 = vdupq_n_s64(0x4041800000000000uLL);
  v27[1].i8[0] = 0;
  v28 = &v6[v3[13]];
  sub_24AA16A68(&qword_27EF84D00, &qword_27EF84CF8, &unk_24AAB6310);
  sub_24AA16A68(&qword_27EF84D20, &qword_27EF84CE8, &qword_24AAB85F0);
  *v28 = 0u;
  *(v28 + 1) = 0u;
  v29 = v37;
  sub_24AAB47E4();
  sub_24AA169C4(v6, &qword_27EF84CE8, &qword_24AAB85F0);
  (*(v36 + 8))(v13, v29);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85C10, &qword_24AAB8790);
  v31 = v40;
  v32 = (v40 + *(v30 + 36));
  v33 = v32 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF84D18, &qword_24AABDA10) + 28);
  sub_24AAB3F44();
  *v32 = swift_getKeyPath();
  return (*(v38 + 32))(v31, v17, v39);
}

uint64_t sub_24AA53608@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for StopCallRecordingControl(0) + 24));
  v4 = *v3;
  v5 = v3[1];

  v6 = sub_24AAB4AC4();
  v7 = sub_24AAB45D4();
  result = swift_getKeyPath();
  *a2 = v6;
  a2[1] = result;
  a2[2] = v7;
  return result;
}

uint64_t sub_24AA53680@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24AA550A0(&qword_27EF859D8, type metadata accessor for CountdownTimerViewModel);
  sub_24AAB2CF4();

  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_24AA53750(uint64_t result)
{
  if (*(v1 + 16) != result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24AA550A0(&qword_27EF859D8, type metadata accessor for CountdownTimerViewModel);
    sub_24AAB2CE4();
  }

  return result;
}

uint64_t sub_24AA53854()
{
  swift_getKeyPath();
  sub_24AA550A0(&qword_27EF859D8, type metadata accessor for CountdownTimerViewModel);
  sub_24AAB2CF4();

  v1 = *(v0 + 24);
}

uint64_t sub_24AA538F8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24AA550A0(&qword_27EF859D8, type metadata accessor for CountdownTimerViewModel);
  sub_24AAB2CF4();

  *a2 = *(v3 + 24);
}

uint64_t sub_24AA539A4(uint64_t a1)
{
  v2 = v1;
  if (!*(v1 + 24))
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24AA550A0(&qword_27EF859D8, type metadata accessor for CountdownTimerViewModel);
    sub_24AAB2CE4();
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_24AAB3B34();
  sub_24AA550A0(&qword_27EF85A18, MEMORY[0x277CBCDA8]);

  v4 = sub_24AAB4E74();

  if ((v4 & 1) == 0)
  {
    goto LABEL_6;
  }

  v5 = *(v2 + 24);
LABEL_7:
  *(v2 + 24) = a1;
}

uint64_t sub_24AA53B4C()
{
  swift_getKeyPath();
  sub_24AA550A0(&qword_27EF859D8, type metadata accessor for CountdownTimerViewModel);
  sub_24AAB2CF4();

  return *(v0 + 32);
}

uint64_t sub_24AA53BEC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24AA550A0(&qword_27EF859D8, type metadata accessor for CountdownTimerViewModel);
  sub_24AAB2CF4();

  *a2 = *(v3 + 32);
  return result;
}

uint64_t sub_24AA53C94(uint64_t result)
{
  if (*(v1 + 32) != result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24AA550A0(&qword_27EF859D8, type metadata accessor for CountdownTimerViewModel);
    sub_24AAB2CE4();
  }

  return result;
}

uint64_t sub_24AA53D98()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_24AA53DF0();
  }

  return result;
}

uint64_t sub_24AA53DF0()
{
  swift_getKeyPath();
  sub_24AA550A0(&qword_27EF859D8, type metadata accessor for CountdownTimerViewModel);
  sub_24AAB2CF4();

  if (v0[2] < 2)
  {
    swift_getKeyPath();
    sub_24AAB2CF4();

    if (v0[3])
    {
      v6 = v0[3];

      sub_24AAB3B24();
    }

    sub_24AA539A4(0);
    v7 = v0[5];
    return sub_24AAB3B54();
  }

  swift_getKeyPath();
  sub_24AAB2CF4();

  swift_getKeyPath();
  sub_24AAB2D14();

  v2 = v0[2];
  v3 = __OFSUB__(v2, 1);
  v4 = v2 - 1;
  if (!v3)
  {
    v0[2] = v4;
    swift_getKeyPath();
    sub_24AAB2D04();

    v5 = v0[5];
    swift_getKeyPath();
    sub_24AAB2CF4();

    v8 = v0[2];
    return sub_24AAB3B54();
  }

  __break(1u);
  return result;
}

uint64_t CountdownTimerViewModel.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = OBJC_IVAR____TtC22FaceTimeNotificationUI23CountdownTimerViewModel___observationRegistrar;
  v4 = sub_24AAB2D34();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t CountdownTimerViewModel.__deallocating_deinit()
{
  v1 = *(v0 + 3);

  v2 = *(v0 + 5);

  v3 = OBJC_IVAR____TtC22FaceTimeNotificationUI23CountdownTimerViewModel___observationRegistrar;
  v4 = sub_24AAB2D34();
  (*(*(v4 - 8) + 8))(&v0[v3], v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v5, v6);
}

id sub_24AA54124(uint64_t a1)
{
  v2 = v1;
  v14[1] = *MEMORY[0x277D85DE8];
  v4 = sub_24AAB2BA4();
  v14[0] = 0;
  v5 = [v2 initWithContentsOfURL:v4 error:v14];

  v6 = v14[0];
  if (v5)
  {
    v7 = sub_24AAB2BD4();
    v8 = *(*(v7 - 8) + 8);
    v9 = v6;
    v8(a1, v7);
  }

  else
  {
    v10 = v14[0];
    sub_24AAB2B04();

    swift_willThrow();
    v11 = sub_24AAB2BD4();
    (*(*(v11 - 8) + 8))(a1, v11);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t sub_24AA54270(uint64_t a1, uint64_t a2)
{
  v3 = a2 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (a1 < 0)
    {
      v4 = a1;
    }

    else
    {
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    if (v3)
    {
      if (a2 < 0)
      {
        v5 = a2;
      }

      else
      {
        v5 = (a2 & 0xFFFFFFFFFFFFFF8);
      }

      return MEMORY[0x2821FCF40](v5, v4);
    }

    v8 = v4;
    v7 = a2;
  }

  else
  {
    if (!v3)
    {
      if (a1 == a2)
      {
        return 1;
      }

      if (*(a1 + 16) == *(a2 + 16))
      {
        v10 = a1 + 56;
        v11 = 1 << *(a1 + 32);
        if (v11 < 64)
        {
          v12 = ~(-1 << v11);
        }

        else
        {
          v12 = -1;
        }

        v13 = v12 & *(a1 + 56);
        sub_24AAB3B34();
        v14 = 0;
        v15 = (v11 + 63) >> 6;
        v16 = a2 + 56;
        v5 = &qword_27EF85A10;
        v17 = a1;
        if (!v13)
        {
LABEL_27:
          v19 = v14;
          while (1)
          {
            v14 = v19 + 1;
            if (__OFADD__(v19, 1))
            {
              break;
            }

            if (v14 >= v15)
            {
              return 1;
            }

            v20 = *(v10 + 8 * v14);
            ++v19;
            if (v20)
            {
              v18 = __clz(__rbit64(v20));
              v26 = (v20 - 1) & v20;
              goto LABEL_32;
            }
          }

          __break(1u);
          return MEMORY[0x2821FCF40](v5, v4);
        }

        while (1)
        {
          v18 = __clz(__rbit64(v13));
          v26 = (v13 - 1) & v13;
LABEL_32:
          v29 = *(*(v17 + 48) + 8 * (v18 | (v14 << 6)));
          v21 = *(a2 + 40);
          sub_24AA550A0(&qword_27EF85A10, MEMORY[0x277CBCDA8]);

          v22 = sub_24AAB4E64();
          v23 = -1 << *(a2 + 32);
          v24 = v22 & ~v23;
          if (((*(v16 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
          {
            break;
          }

          v25 = ~v23;
          sub_24AA550A0(&qword_27EF85A18, MEMORY[0x277CBCDA8]);
          while (1)
          {
            v28 = *(*(a2 + 48) + 8 * v24);
            if (sub_24AAB4E74())
            {
              break;
            }

            v24 = (v24 + 1) & v25;
            if (((*(v16 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
            {
              goto LABEL_40;
            }
          }

          v15 = (v11 + 63) >> 6;
          v13 = v26;
          v5 = &qword_27EF85A10;
          v17 = a1;
          if (!v26)
          {
            goto LABEL_27;
          }
        }

LABEL_40:
      }

      return 0;
    }

    v6 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 < 0)
    {
      v6 = a2;
    }

    v7 = a1;
    v8 = v6;
  }

  return sub_24AA54564(v8, v7);
}

uint64_t sub_24AA54564(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = sub_24AAB52F4();
  if (v3 != result)
  {
    return 0;
  }

  v5 = 0;
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 56);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_12:
    v13 = *(*(a2 + 48) + 8 * (v10 | (v5 << 6)));

    v14 = sub_24AAB5324();

    if ((v14 & 1) == 0)
    {
      return 0;
    }
  }

  v11 = v5;
  while (1)
  {
    v5 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v5 >= v9)
    {
      return 1;
    }

    v12 = *(a2 + 56 + 8 * v5);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24AA54668(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v22 = *a1;
  v23 = v6;
  v24 = v7;
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v19 = *a2;
  v20 = v8;
  v21 = v9;
  sub_24AA15F10(v22, v6, v7);
  sub_24AA15F10(v19, v8, v9);
  v10 = _s22FaceTimeNotificationUI10CallActionO2eeoiySbAC_ACtFZ_0(&v22, &v19);
  sub_24AA15ED0(v19, v20, v21);
  sub_24AA15ED0(v22, v23, v24);
  if (v10 & 1) != 0 && (v11 = a3(0), (MEMORY[0x24C2233A0](a1 + v11[5], a2 + v11[5])) && ((v12 = v11[6], v13 = *(a1 + v12), v14 = *(a1 + v12 + 8), v15 = (a2 + v12), v13 == *v15) && v14 == v15[1] || (sub_24AAB5474()) && (v16 = v11[7], sub_24AAAA8E0(*(a1 + v16), *(a1 + v16 + 8), *(a1 + v16 + 16), *(a1 + v16 + 24), *(a2 + v16), *(a2 + v16 + 8), *(a2 + v16 + 16), *(a2 + v16 + 24))) && *(a1 + v11[8]) == *(a2 + v11[8]))
  {
    v17 = *(a1 + v11[9]) ^ *(a2 + v11[9]) ^ 1;
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

void *sub_24AA547B8()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 currentCalls];

  sub_24AA442A0(0, &qword_27EF85748, 0x277D6EDE0);
  v2 = sub_24AAB5024();

  if (v2 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_24AAB52F4())
  {
    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x24C225BD0](v4, v2);
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if ([v5 isActive])
      {

        return v6;
      }

      ++v4;
      if (v7 == i)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_16:

  return 0;
}

uint64_t sub_24AA54918(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_24AA49E0C(v4);
}

uint64_t _s22FaceTimeNotificationUI27AudioCallRecordingViewModelC16changesPublisher7Combine03AnyK0Vyyts5NeverOGvg_0()
{
  v0 = sub_24AAB51C4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v45 - v6;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85A20, &qword_24AAB80C0);
  v51 = *(v49 - 8);
  v8 = *(v51 + 64);
  v9 = MEMORY[0x28223BE20](v49);
  v48 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v50 = &v45 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v52 = &v45 - v14;
  MEMORY[0x28223BE20](v13);
  v53 = &v45 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85A28, &unk_24AABE070);
  v17 = *(v16 - 8);
  v55 = v16;
  v56 = v17;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v54 = &v45 - v19;
  v20 = objc_opt_self();
  v21 = [v20 defaultCenter];
  v22 = *MEMORY[0x277D6F0C8];
  sub_24AAB51D4();

  v23 = [v20 defaultCenter];
  v24 = *MEMORY[0x277D6F0C0];
  sub_24AAB51D4();

  sub_24AA550A0(&qword_27EF856F0, MEMORY[0x277CC9DB0]);
  sub_24AAB3C04();
  v25 = *(v1 + 8);
  v25(v5, v0);
  v46 = v0;
  v25(v7, v0);
  v47 = v1 + 8;
  v26 = v20;
  v45 = v20;
  v27 = [v20 defaultCenter];
  v28 = sub_24AAB5194();
  sub_24AAB51D4();

  v29 = v49;
  v30 = v50;
  v31 = v48;
  sub_24AAB3B04();
  v25(v7, v0);
  v32 = *(v51 + 8);
  v32(v31, v29);
  v33 = [v26 defaultCenter];
  v34 = sub_24AAB51B4();
  sub_24AAB51D4();

  v35 = v52;
  v36 = v30;
  sub_24AAB3B04();
  v37 = v46;
  v25(v7, v46);
  v32(v36, v29);
  v38 = [v45 defaultCenter];
  v39 = sub_24AAB51A4();
  sub_24AAB51D4();

  v40 = v53;
  sub_24AAB3B04();
  v25(v7, v37);
  v32(v35, v29);
  sub_24AA16A68(&qword_27EF85A30, &qword_27EF85A20, &qword_24AAB80C0);
  v41 = v54;
  sub_24AAB3BF4();
  v32(v40, v29);
  sub_24AA16A68(&qword_27EF85A38, &qword_27EF85A28, &unk_24AABE070);
  v42 = v55;
  v43 = sub_24AAB3BE4();
  (*(v56 + 8))(v41, v42);
  return v43;
}

uint64_t sub_24AA550A0(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24AA550E8()
{
  result = qword_27EF85720;
  if (!qword_27EF85720)
  {
    sub_24AA442A0(255, &qword_27EF86400, 0x277D85C78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF85720);
  }

  return result;
}

uint64_t sub_24AA55150()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24AA55194(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_24AA4AB90(v4);
}

uint64_t sub_24AA55224()
{
  result = sub_24AAB3A84();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_24AAB2D34();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_24AA553A8()
{
  result = sub_24AAB2D34();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for CountdownTimerViewModel.TimerState(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for CountdownTimerViewModel.TimerState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_24AA55518(uint64_t a1)
{
  if (*(a1 + 8) <= 1u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_24AA55530(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_24AA555D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85868, &qword_24AAB7940);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_24AA55648(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_24AA4A870(v2);
}

void sub_24AA55678()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__avAudioPlayer);
  *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__avAudioPlayer) = v2;
  v4 = v2;
}

void sub_24AA556E4()
{
  v1 = *(v0 + 28);
  v2 = *(v0 + 16) + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__recordingAvailability;
  *v2 = *(v0 + 24);
  *(v2 + 4) = v1;
  sub_24AA4AD50();
}

uint64_t sub_24AA55780()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__callRecordingService);
  *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__callRecordingService) = *(v0 + 24);
}

uint64_t sub_24AA557E0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24AA55820(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24AA43DBC;

  return sub_24AA5086C(a1, v4, v5, v6);
}

uint64_t sub_24AA558F0()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__timeSink);
  *(v1 + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__timeSink) = *(v0 + 24);
}

void sub_24AA559D8()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__prerecordingInProgress) = *(v0 + 24);
  sub_24AA50268();
  sub_24AA4AD50();
}

uint64_t sub_24AA55ACC(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24AA55B04()
{
  v1 = v0[4];
  v2 = (v0[2] + OBJC_IVAR____TtC22FaceTimeNotificationUI27AudioCallRecordingViewModel__statusLabel);
  v3 = v2[1];
  *v2 = v0[3];
  v2[1] = v1;
}

unint64_t sub_24AA55C1C()
{
  result = type metadata accessor for StopCallRecordingControl(319);
  if (v1 <= 0x3F)
  {
    result = sub_24AA55CA0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_24AA55CA0()
{
  result = qword_27EF85A88;
  if (!qword_27EF85A88)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_27EF85A88);
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_97Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v7 = a4(0);
  v8 = *(v7 - 8);
  if (*(v8 + 84) == a2)
  {
    v9 = *(v8 + 48);

    return v9(a1, a2, v7);
  }

  else
  {
    v11 = *(a1 + *(a3 + 20));
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_index_98Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v10 = *(result - 8);
  if (*(v10 + 84) == a3)
  {
    v11 = *(v10 + 56);

    return v11(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_24AA55EEC()
{
  type metadata accessor for CallRecordingCountDownControl(319);
  if (v0 <= 0x3F)
  {
    sub_24AA55CA0();
    if (v1 <= 0x3F)
    {
      sub_24AA5638C(319, &qword_27EF85AB0, type metadata accessor for CountdownTimerViewModel);
      if (v2 <= 0x3F)
      {
        sub_24AA55FCC();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_24AA55FCC()
{
  if (!qword_27EF85AB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF85A48, &qword_24AAB8108);
    v0 = sub_24AAB4B94();
    if (!v1)
    {
      atomic_store(v0, &qword_27EF85AB8);
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24AAB2B84();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_24AAB2B84();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_24AA561DC()
{
  result = sub_24AAB2B84();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_24AA562D4()
{
  type metadata accessor for AudioCallRecordingControl(319);
  if (v0 <= 0x3F)
  {
    sub_24AA55CA0();
    if (v1 <= 0x3F)
    {
      sub_24AA5638C(319, &qword_27EF85AE0, type metadata accessor for AudioCallRecordingViewModel);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_24AA5638C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_24AAB4B94();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_24AA56428(uint64_t a1)
{
  result = sub_24AA550A0(&qword_27EF85AF0, type metadata accessor for AudioCallRecordingControl);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24AA56480(uint64_t a1)
{
  result = sub_24AA550A0(&qword_27EF85AF8, type metadata accessor for AudioCallRecordingControl);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24AA564D8(void *a1)
{
  a1[1] = sub_24AA550A0(&qword_27EF85B00, type metadata accessor for AudioCallRecordingControl);
  a1[2] = sub_24AA550A0(&qword_27EF85B08, type metadata accessor for AudioCallRecordingControl);
  result = sub_24AA550A0(&qword_27EF85B10, type metadata accessor for AudioCallRecordingControl);
  a1[3] = result;
  return result;
}

uint64_t sub_24AA565CC(uint64_t a1)
{
  result = sub_24AA550A0(&qword_27EF85B20, type metadata accessor for CallRecordingCountDownControl);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24AA56624(uint64_t a1)
{
  result = sub_24AA550A0(&qword_27EF85B28, type metadata accessor for CallRecordingCountDownControl);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24AA5667C(void *a1)
{
  a1[1] = sub_24AA550A0(&qword_27EF85B30, type metadata accessor for CallRecordingCountDownControl);
  a1[2] = sub_24AA550A0(&qword_27EF85B38, type metadata accessor for CallRecordingCountDownControl);
  result = sub_24AA550A0(&qword_27EF85B40, type metadata accessor for CallRecordingCountDownControl);
  a1[3] = result;
  return result;
}

uint64_t sub_24AA56770(uint64_t a1)
{
  result = sub_24AA550A0(&qword_27EF85B50, type metadata accessor for StopCallRecordingControl);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24AA567C8(uint64_t a1)
{
  result = sub_24AA550A0(&qword_27EF85B58, type metadata accessor for StopCallRecordingControl);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24AA56820(void *a1)
{
  a1[1] = sub_24AA550A0(&qword_27EF85B60, type metadata accessor for StopCallRecordingControl);
  a1[2] = sub_24AA550A0(&qword_27EF85B68, type metadata accessor for StopCallRecordingControl);
  result = sub_24AA550A0(&qword_27EF85B70, type metadata accessor for StopCallRecordingControl);
  a1[3] = result;
  return result;
}

uint64_t sub_24AA56920()
{
  v1 = type metadata accessor for AudioCallRecordingButton(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = (v2 + 16) & ~v2;
  v5 = v0 + v4;
  sub_24AA15ED0(*(v0 + v4), *(v0 + v4 + 8), *(v0 + v4 + 16));
  v6 = type metadata accessor for AudioCallRecordingControl(0);
  v7 = v6[5];
  v8 = sub_24AAB2B84();
  (*(*(v8 - 8) + 8))(v0 + v4 + v7, v8);
  v9 = *(v0 + v4 + v6[6] + 8);

  v10 = (v0 + v4 + v6[7]);
  v11 = *v10;

  v12 = v10[1];

  if (v10[3])
  {
    v13 = v10[2];

    v14 = v10[3];
  }

  v15 = *(v5 + *(v1 + 20) + 8);

  v16 = (v5 + *(v1 + 24));
  v17 = *v16;

  v18 = v16[1];

  return MEMORY[0x2821FE8E8](v0, v4 + v3, v2 | 7);
}

uint64_t sub_24AA56AD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24AA56B44(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_167Tm()
{
  v1 = type metadata accessor for AudioCallCountDownButton(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = (v2 + 16) & ~v2;
  v5 = v0 + v4;
  sub_24AA15ED0(*(v0 + v4), *(v0 + v4 + 8), *(v0 + v4 + 16));
  v6 = type metadata accessor for CallRecordingCountDownControl(0);
  v7 = v6[5];
  v8 = sub_24AAB2B84();
  (*(*(v8 - 8) + 8))(v0 + v4 + v7, v8);
  v9 = *(v0 + v4 + v6[6] + 8);

  v10 = (v0 + v4 + v6[7]);
  v11 = *v10;

  v12 = v10[1];

  if (v10[3])
  {
    v13 = v10[2];

    v14 = v10[3];
  }

  v15 = *(v5 + v1[5] + 8);

  v16 = *(v5 + v1[6] + 8);

  v17 = (v5 + v1[8]);
  v18 = *v17;

  v19 = v17[1];

  v20 = (v5 + v1[9]);
  v21 = *v20;

  v22 = v20[1];

  return MEMORY[0x2821FE8E8](v0, v4 + v3, v2 | 7);
}

uint64_t sub_24AA56D78(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for AudioCallCountDownButton(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

void sub_24AA56DEC(uint64_t *a1)
{
  v3 = *(type metadata accessor for AudioCallCountDownButton(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_24AA52CDC(a1, v4);
}

uint64_t keypath_set_70Tm(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = *a1;
  v7 = *a2;

  return a5(v8);
}

uint64_t sub_24AA56EEC()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 24);
  *(v1 + 24) = *(v0 + 24);
}

uint64_t sub_24AA56F28()
{
  v1 = type metadata accessor for StopCallRecordingButton(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = (v2 + 16) & ~v2;
  sub_24AA15ED0(*(v0 + v4), *(v0 + v4 + 8), *(v0 + v4 + 16));
  v5 = type metadata accessor for StopCallRecordingControl(0);
  v6 = v5[5];
  v7 = sub_24AAB2B84();
  (*(*(v7 - 8) + 8))(v0 + v4 + v6, v7);
  v8 = *(v0 + v4 + v5[6] + 8);

  v9 = (v0 + v4 + v5[7]);
  v10 = *v9;

  v11 = v9[1];

  if (v9[3])
  {
    v12 = v9[2];

    v13 = v9[3];
  }

  v14 = *(v0 + v4 + *(v1 + 20) + 8);

  return MEMORY[0x2821FE8E8](v0, v4 + v3, v2 | 7);
}

uint64_t sub_24AA57094(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = v1 + *(v2 + 20) + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80));
  v4 = *(v3 + 8);
  return (*v3)();
}

unint64_t sub_24AA5711C()
{
  result = qword_27EF85C18;
  if (!qword_27EF85C18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF85BA0, &unk_24AAB86D8);
    sub_24AA571D4();
    sub_24AA16A68(&qword_27EF84E40, &qword_27EF84E48, &qword_24AAB8FD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF85C18);
  }

  return result;
}

unint64_t sub_24AA571D4()
{
  result = qword_27EF85C20;
  if (!qword_27EF85C20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF85B88, &qword_24AAB8608);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF85B78, &qword_24AAB85F8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF84CE8, &qword_24AAB85F0);
    sub_24AA16A68(&qword_27EF85B90, &qword_27EF85B78, &qword_24AAB85F8);
    sub_24AA16A68(&qword_27EF84D20, &qword_27EF84CE8, &qword_24AAB85F0);
    swift_getOpaqueTypeConformance2();
    sub_24AA16A68(&qword_27EF84D10, &qword_27EF84D18, &qword_24AABDA10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF85C20);
  }

  return result;
}

unint64_t sub_24AA57360()
{
  result = qword_27EF85C28;
  if (!qword_27EF85C28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF85BB8, &qword_24AAB86F8);
    sub_24AA573EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF85C28);
  }

  return result;
}

unint64_t sub_24AA573EC()
{
  result = qword_27EF85C30;
  if (!qword_27EF85C30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF85BB0, &qword_24AAB86F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF84F18, &qword_24AAB6720);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF84CE8, &qword_24AAB85F0);
    sub_24AA16A68(&qword_27EF84F10, &qword_27EF84F18, &qword_24AAB6720);
    sub_24AA16A68(&qword_27EF84D20, &qword_27EF84CE8, &qword_24AAB85F0);
    swift_getOpaqueTypeConformance2();
    sub_24AA16A68(&qword_27EF84D10, &qword_27EF84D18, &qword_24AABDA10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF85C30);
  }

  return result;
}

unint64_t sub_24AA57578()
{
  result = qword_27EF85C38;
  if (!qword_27EF85C38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF85C10, &qword_24AAB8790);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF84CF8, &unk_24AAB6310);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF84CE8, &qword_24AAB85F0);
    sub_24AA16A68(&qword_27EF84D00, &qword_27EF84CF8, &unk_24AAB6310);
    sub_24AA16A68(&qword_27EF84D20, &qword_27EF84CE8, &qword_24AAB85F0);
    swift_getOpaqueTypeConformance2();
    sub_24AA16A68(&qword_27EF84D10, &qword_27EF84D18, &qword_24AABDA10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF85C38);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_22FaceTimeNotificationUI18CallControlsRecipeO(uint64_t a1)
{
  if ((*(a1 + 80) & 7u) <= 4)
  {
    return *(a1 + 80) & 7;
  }

  else
  {
    return (*a1 + 5);
  }
}

__n128 __swift_memcpy81_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_24AA57868(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 81))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 80);
  if (v3 <= 5)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_24AA578B0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *(result + 80) = -a2;
    }
  }

  return result;
}

uint64_t sub_24AA57938(uint64_t a1)
{
  sub_24AA43A54(a1, v47);
  if (v49 > 2u)
  {
    if (v49 == 3)
    {
      sub_24AA15A64(v47, &v36);
      sub_24AA15A64(v48, v30);
      v16 = v38;
      v17 = v39;
      v18 = __swift_project_boxed_opaque_existential_1(&v36, v38);
      *&v24[24] = v16;
      v25 = *(*(v17 + 8) + 8);
      boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v24);
      (*(*(v16 - 8) + 16))(boxed_opaque_existential_1Tm, v18, v16);
      v20 = v31;
      v21 = v32;
      v22 = __swift_project_boxed_opaque_existential_1(v30, v31);
      v27 = v20;
      v28 = *(*(v21 + 8) + 8);
      v23 = __swift_allocate_boxed_opaque_existential_1Tm(v26);
      (*(*(v20 - 8) + 16))(v23, v22, v20);
      v29 = [objc_allocWithZone(MEMORY[0x277D6EED8]) init];
      sub_24AA58930(v24, v40);
      v44 = 0;
      sub_24AA585B4();
      sub_24AA58608();
      sub_24AAB42B4();
      sub_24AA1695C(v33, v40, &qword_27EF85C68, &qword_24AAB8938);
      v45 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85C68, &qword_24AAB8938);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85C88, &unk_24AAB8940);
      sub_24AA58528();
      sub_24AA5865C();
      sub_24AAB42B4();
      sub_24AA169C4(v33, &qword_27EF85C68, &qword_24AAB8938);
      sub_24AA1695C(v35, v40, &qword_27EF85C50, &qword_24AAB8930);
      v46 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85C50, &qword_24AAB8930);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85C48, &qword_24AAB8928);
      sub_24AA5849C();
      sub_24AA5873C();
      sub_24AAB42B4();
      sub_24AA169C4(v35, &qword_27EF85C50, &qword_24AAB8930);
      sub_24AA5898C(v24);
      __swift_destroy_boxed_opaque_existential_1Tm(v30);
      return __swift_destroy_boxed_opaque_existential_1Tm(&v36);
    }

    if (v49 == 4)
    {
      sub_24AA15A64(v47, v24);
      sub_24AA15A64(v48, &v36);
      v5 = *&v24[24];
      v6 = v25;
      v7 = __swift_project_boxed_opaque_existential_1(v24, *&v24[24]);
      v33[3] = v5;
      v33[4] = *(v6 + 16);
      v8 = __swift_allocate_boxed_opaque_existential_1Tm(v33);
      (*(*(v5 - 8) + 16))(v8, v7, v5);
      v9 = v38;
      v10 = v39;
      v11 = __swift_project_boxed_opaque_existential_1(&v36, v38);
      v34[3] = v9;
      v34[4] = *(v10 + 16);
      v12 = __swift_allocate_boxed_opaque_existential_1Tm(v34);
      (*(*(v9 - 8) + 16))(v12, v11, v9);
      sub_24AA587C8(v33, v40);
      v43 = 0;
      sub_24AA58448();
      sub_24AAB42B4();
      sub_24AA1695C(v35, v40, &qword_27EF85C48, &qword_24AAB8928);
      v46 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85C50, &qword_24AAB8930);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85C48, &qword_24AAB8928);
      sub_24AA5849C();
      sub_24AA5873C();
      sub_24AAB42B4();
      sub_24AA169C4(v35, &qword_27EF85C48, &qword_24AAB8928);
      sub_24AA58824(v33);
      __swift_destroy_boxed_opaque_existential_1Tm(&v36);
      return __swift_destroy_boxed_opaque_existential_1Tm(v24);
    }

    v43 = 1;
    sub_24AA58448();
    sub_24AAB42B4();
    sub_24AA1695C(v35, v40, &qword_27EF85C48, &qword_24AAB8928);
    v46 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85C50, &qword_24AAB8930);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85C48, &qword_24AAB8928);
    sub_24AA5849C();
    sub_24AA5873C();
    sub_24AAB42B4();
    v14 = &qword_27EF85C48;
    v15 = &qword_24AAB8928;
  }

  else
  {
    if (v49)
    {
      if (v49 == 1)
      {
        sub_24AA15A64(v47, &v36);
        v1 = v38;
        v2 = v39;
        v3 = __swift_project_boxed_opaque_existential_1(&v36, v38);
        v26[1] = v1;
        v26[2] = *(v2 + 16);
        v4 = __swift_allocate_boxed_opaque_existential_1Tm(&v24[24]);
        (*(*(v1 - 8) + 16))(v4, v3, v1);
        *v24 = swift_getKeyPath();
        v24[16] = 0;
        v27 = 0x4041800000000000;
        sub_24AA158F8(v24, v40);
        v42 = 0;
        sub_24AA167CC();
        sub_24AA586E8();
        sub_24AAB42B4();
        sub_24AA1695C(v33, v40, &qword_27EF85C88, &unk_24AAB8940);
        v45 = 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85C68, &qword_24AAB8938);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85C88, &unk_24AAB8940);
        sub_24AA58528();
        sub_24AA5865C();
        sub_24AAB42B4();
        sub_24AA169C4(v33, &qword_27EF85C88, &unk_24AAB8940);
        sub_24AA1695C(v35, v40, &qword_27EF85C50, &qword_24AAB8930);
        v46 = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85C50, &qword_24AAB8930);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85C48, &qword_24AAB8928);
        sub_24AA5849C();
        sub_24AA5873C();
        sub_24AAB42B4();
        sub_24AA169C4(v35, &qword_27EF85C50, &qword_24AAB8930);
        sub_24AA16820(v24);
      }

      else
      {
        sub_24AA15A64(v47, &v36);
        sub_24AA16768(&v36, &v24[24]);
        *v24 = swift_getKeyPath();
        v24[16] = 0;
        v27 = 0;
        v28 = 0;
        LOWORD(v29) = 1;
        sub_24AA58880(v24, v40);
        v44 = 1;
        sub_24AA585B4();
        sub_24AA58608();
        sub_24AAB42B4();
        sub_24AA1695C(v33, v40, &qword_27EF85C68, &qword_24AAB8938);
        v45 = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85C68, &qword_24AAB8938);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85C88, &unk_24AAB8940);
        sub_24AA58528();
        sub_24AA5865C();
        sub_24AAB42B4();
        sub_24AA169C4(v33, &qword_27EF85C68, &qword_24AAB8938);
        sub_24AA1695C(v35, v40, &qword_27EF85C50, &qword_24AAB8930);
        v46 = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85C50, &qword_24AAB8930);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85C48, &qword_24AAB8928);
        sub_24AA5849C();
        sub_24AA5873C();
        sub_24AAB42B4();
        sub_24AA169C4(v35, &qword_27EF85C50, &qword_24AAB8930);
        sub_24AA588DC(v24);
      }

      return __swift_destroy_boxed_opaque_existential_1Tm(&v36);
    }

    sub_24AA15F30(*&v47[0], v24);
    v30[0] = *v24;
    v36 = *&v24[8];
    v37 = v24[24];
    v50[0] = v25;
    v40[0] = *v24;
    v40[1] = *&v24[16];
    v41 = v25;
    v42 = 1;
    sub_24AA1695C(v30, v35, &qword_27EF85010, &qword_24AABB840);
    sub_24AA1695C(&v36, v35, &qword_27EF85018, &qword_24AAB69F0);
    sub_24AA1695C(v50, v35, &qword_27EF85020, &qword_24AAB69F8);
    sub_24AA167CC();
    sub_24AA586E8();
    sub_24AAB42B4();
    sub_24AA1695C(v33, v40, &qword_27EF85C88, &unk_24AAB8940);
    v45 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85C68, &qword_24AAB8938);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85C88, &unk_24AAB8940);
    sub_24AA58528();
    sub_24AA5865C();
    sub_24AAB42B4();
    sub_24AA169C4(v33, &qword_27EF85C88, &unk_24AAB8940);
    sub_24AA1695C(v35, v40, &qword_27EF85C50, &qword_24AAB8930);
    v46 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85C50, &qword_24AAB8930);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85C48, &qword_24AAB8928);
    sub_24AA5849C();
    sub_24AA5873C();
    sub_24AAB42B4();
    sub_24AA169C4(v30, &qword_27EF85010, &qword_24AABB840);
    sub_24AA169C4(&v36, &qword_27EF85018, &qword_24AAB69F0);
    sub_24AA169C4(v50, &qword_27EF85020, &qword_24AAB69F8);
    v14 = &qword_27EF85C50;
    v15 = &qword_24AAB8930;
  }

  return sub_24AA169C4(v35, v14, v15);
}

uint64_t sub_24AA58414@<X0>(uint64_t a1@<X8>)
{
  sub_24AA57938(v1);
  result = sub_24AAB4D44();
  *(a1 + 96) = 0;
  *(a1 + 104) = result;
  *(a1 + 112) = v4;
  return result;
}

unint64_t sub_24AA58448()
{
  result = qword_27EF85C40;
  if (!qword_27EF85C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF85C40);
  }

  return result;
}

unint64_t sub_24AA5849C()
{
  result = qword_27EF85C58;
  if (!qword_27EF85C58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF85C50, &qword_24AAB8930);
    sub_24AA58528();
    sub_24AA5865C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF85C58);
  }

  return result;
}

unint64_t sub_24AA58528()
{
  result = qword_27EF85C60;
  if (!qword_27EF85C60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF85C68, &qword_24AAB8938);
    sub_24AA585B4();
    sub_24AA58608();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF85C60);
  }

  return result;
}

unint64_t sub_24AA585B4()
{
  result = qword_27EF85C70;
  if (!qword_27EF85C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF85C70);
  }

  return result;
}

unint64_t sub_24AA58608()
{
  result = qword_27EF85C78;
  if (!qword_27EF85C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF85C78);
  }

  return result;
}

unint64_t sub_24AA5865C()
{
  result = qword_27EF85C80;
  if (!qword_27EF85C80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF85C88, &unk_24AAB8940);
    sub_24AA167CC();
    sub_24AA586E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF85C80);
  }

  return result;
}

unint64_t sub_24AA586E8()
{
  result = qword_27EF85C90;
  if (!qword_27EF85C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF85C90);
  }

  return result;
}

unint64_t sub_24AA5873C()
{
  result = qword_27EF85C98;
  if (!qword_27EF85C98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF85C48, &qword_24AAB8928);
    sub_24AA58448();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF85C98);
  }

  return result;
}

unint64_t sub_24AA589E4()
{
  result = qword_27EF85CA0;
  if (!qword_27EF85CA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF85CA8, &qword_24AAB8978);
    sub_24AA58A70();
    sub_24AA58B80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF85CA0);
  }

  return result;
}

unint64_t sub_24AA58A70()
{
  result = qword_27EF85CB0;
  if (!qword_27EF85CB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF85CB8, &qword_24AAB8980);
    sub_24AA58AF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF85CB0);
  }

  return result;
}

unint64_t sub_24AA58AF4()
{
  result = qword_27EF85CC0;
  if (!qword_27EF85CC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF85CC8, &qword_24AAB8988);
    sub_24AA5849C();
    sub_24AA5873C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF85CC0);
  }

  return result;
}

unint64_t sub_24AA58B80()
{
  result = qword_27EF85CD0;
  if (!qword_27EF85CD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF85CD8, &unk_24AAB8990);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF85CD0);
  }

  return result;
}

uint64_t sub_24AA58BE4(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 0;
  }

  sub_24AAB4F84();
  return sub_24AAB4FE4();
}

uint64_t sub_24AA58C78(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  v3 = sub_24AAB5294();
  if (v3 == 1 << *(a1 + 32))
  {
    return 0;
  }

  sub_24AA60088(v3, *(a1 + 36), 0, a1);
}

uint64_t sub_24AA58CF4(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  v6 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = sub_24AAB52B4();
    v9 = v8;
    v10 = sub_24AAB5334();
    v12 = v11;
    v13 = MEMORY[0x24C225B10](v7, v9, v10, v11);
    sub_24AA6007C(v10, v12, 1);
    if (v13)
    {
LABEL_3:
      sub_24AA6007C(v7, v9, v6 != 0);
      return 0;
    }
  }

  else
  {
    v15 = -1 << *(a1 + 32);
    v7 = sub_24AAB5294();
    v9 = *(a1 + 36);
    if (v7 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  sub_24AA5E474(v7, v9, v6 != 0, a1, a2, a3);
  v17 = v16;
  sub_24AA6007C(v7, v9, v6 != 0);
  return v17;
}

uint64_t sub_24AA58E28(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v3 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v3)
  {
    v4 = a1;
    if ((a2 & 0x1000000000000000) != 0)
    {
      v4 = sub_24AAB4FD4();
    }

    else if ((a2 & 0x2000000000000000) == 0)
    {
      if ((a1 & 0x1000000000000000) != 0)
      {
        v5 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v5 = sub_24AAB5394();
      }

      v4 = *v5;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4 | ((v3 == 0) << 8);
}

void *KeypadViewModel.__allocating_init(call:combinedInput:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();

  return sub_24AA5E68C(a1, a3, a4, v4, ObjectType, a2);
}

uint64_t sub_24AA58F20()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85D98, &qword_24AAB8C08);
  v0 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85D88, &qword_24AAB8BF0) - 8);
  v1 = *(*v0 + 72);
  v2 = (*(*v0 + 80) + 32) & ~*(*v0 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_24AAB89A0;
  v3 = (v30 + v2);
  v4 = v0[14];
  *v3 = 49;
  *(v3 + 1) = 0xE100000000000000;
  sub_24AAB2B24();
  v5 = sub_24AAB2B84();
  v6 = *(*(v5 - 8) + 56);
  v6(&v3[v4], 0, 1, v5);
  v7 = &v3[v1];
  v8 = v0[14];
  *v7 = 50;
  *(v7 + 1) = 0xE100000000000000;
  sub_24AAB2B24();
  v6(&v3[v1 + v8], 0, 1, v5);
  v9 = &v3[2 * v1];
  v10 = v0[14];
  *v9 = 51;
  *(v9 + 1) = 0xE100000000000000;
  sub_24AAB2B24();
  v6(&v9[v10], 0, 1, v5);
  v11 = &v3[3 * v1];
  v12 = v0[14];
  *v11 = 52;
  *(v11 + 1) = 0xE100000000000000;
  sub_24AAB2B24();
  v6(&v11[v12], 0, 1, v5);
  v13 = &v3[4 * v1];
  v14 = v0[14];
  *v13 = 53;
  *(v13 + 1) = 0xE100000000000000;
  sub_24AAB2B24();
  v6(&v13[v14], 0, 1, v5);
  v15 = &v3[5 * v1];
  v16 = v0[14];
  *v15 = 54;
  *(v15 + 1) = 0xE100000000000000;
  sub_24AAB2B24();
  v6(&v15[v16], 0, 1, v5);
  v17 = &v3[6 * v1];
  v18 = v0[14];
  *v17 = 55;
  *(v17 + 1) = 0xE100000000000000;
  sub_24AAB2B24();
  v6(&v17[v18], 0, 1, v5);
  v19 = &v3[7 * v1];
  v20 = v0[14];
  *v19 = 56;
  *(v19 + 1) = 0xE100000000000000;
  sub_24AAB2B24();
  v6(&v19[v20], 0, 1, v5);
  v21 = &v3[8 * v1];
  v22 = v0[14];
  *v21 = 57;
  *(v21 + 1) = 0xE100000000000000;
  sub_24AAB2B24();
  v6(&v21[v22], 0, 1, v5);
  v23 = &v3[9 * v1];
  v24 = v0[14];
  *v23 = 42;
  *(v23 + 1) = 0xE100000000000000;
  v6(&v23[v24], 1, 1, v5);
  v25 = &v3[10 * v1];
  v26 = v0[14];
  *v25 = 48;
  *(v25 + 1) = 0xE100000000000000;
  sub_24AAB2B24();
  v6(&v25[v26], 0, 1, v5);
  v27 = &v3[11 * v1];
  v28 = v0[14];
  *v27 = 35;
  *(v27 + 1) = 0xE100000000000000;
  result = (v6)(&v27[v28], 1, 1, v5);
  off_27EF85CE0 = v30;
  return result;
}

uint64_t sub_24AA59334()
{
  swift_getKeyPath();
  v4 = v0;
  sub_24AA5F534(&qword_27EF85CF8, type metadata accessor for KeypadViewModel);
  sub_24AAB2CF4();

  swift_beginAccess();
  v2 = *(v0 + 32);
  v1 = *(v4 + 40);

  return v2;
}

uint64_t sub_24AA593F8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 32) == a1 && *(v2 + 40) == a2;
  if (v5 || (v6 = *(v2 + 40), (sub_24AAB5474() & 1) != 0))
  {
    *(v2 + 32) = a1;
    *(v2 + 40) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24AA5F534(&qword_27EF85CF8, type metadata accessor for KeypadViewModel);
    sub_24AAB2CE4();
  }
}

uint64_t sub_24AA5954C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v6 = *(a1 + 40);
  *(a1 + 32) = a2;
  *(a1 + 40) = a3;
}

void *KeypadViewModel.init(call:combinedInput:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();

  return sub_24AA5E6FC(a1, a3, a4, v4, ObjectType, a2);
}

void sub_24AA59620(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v35 = a1;
  v36 = a2;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85D88, &qword_24AAB8BF0);
  v4 = *(v38 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v38);
  v8 = (&v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = MEMORY[0x28223BE20](v6);
  v11 = (&v33 - v10);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v33 - v13;
  if (qword_27EF84C40 != -1)
  {
    v12 = swift_once();
  }

  v15 = off_27EF85CE0;
  v16 = *(off_27EF85CE0 + 2);
  v17 = MEMORY[0x277D84F90];
  if (v16)
  {
    v34 = v3;
    v39[0] = MEMORY[0x277D84F90];
    sub_24AA5D43C(0, v16, 0);
    v17 = v39[0];
    v18 = v15 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v37 = *(v4 + 72);
    do
    {
      sub_24AA1695C(v18, v14, &qword_27EF85D88, &qword_24AAB8BF0);
      sub_24AA1695C(v14, v11, &qword_27EF85D88, &qword_24AAB8BF0);
      v20 = *v11;
      v19 = v11[1];
      v21 = *(v38 + 48);
      *v8 = *v11;
      v8[1] = v19;
      sub_24AA1A25C(v11 + v21, v8 + v21, &qword_27EF85D90, &qword_24AAB8BF8);

      sub_24AA169C4(v8, &qword_27EF85D88, &qword_24AAB8BF0);
      v12 = sub_24AA169C4(v14, &qword_27EF85D88, &qword_24AAB8BF0);
      v39[0] = v17;
      v23 = *(v17 + 16);
      v22 = *(v17 + 24);
      if (v23 >= v22 >> 1)
      {
        v12 = sub_24AA5D43C((v22 > 1), v23 + 1, 1);
        v17 = v39[0];
      }

      *(v17 + 16) = v23 + 1;
      v24 = v17 + 16 * v23;
      *(v24 + 32) = v20;
      *(v24 + 40) = v19;
      v18 += v37;
      --v16;
    }

    while (v16);
    v3 = v34;
  }

  v26 = v35;
  v25 = v36;
  v39[0] = v35;
  v39[1] = v36;
  MEMORY[0x28223BE20](v12);
  *(&v33 - 2) = v39;
  v27 = sub_24AA5D68C(sub_24AA60254, (&v33 - 4), v17);

  if (v27)
  {
    swift_getKeyPath();
    v39[0] = v3;
    sub_24AA5F534(&qword_27EF85CF8, type metadata accessor for KeypadViewModel);
    sub_24AAB2CF4();

    v39[0] = v3;
    swift_getKeyPath();
    sub_24AAB2D14();

    swift_beginAccess();
    MEMORY[0x24C2257F0](v26, v25);
    swift_endAccess();
    v39[0] = v3;
    swift_getKeyPath();
    sub_24AAB2D04();

    v28 = sub_24AA58E28(v26, v25);
    if ((v28 & 0x100) != 0)
    {
      __break(1u);
    }

    else
    {
      v29 = v28;
      v30 = *(v3 + 16);
      v31 = *(v3 + 24);
      swift_getObjectType();
      sub_24AAB38A4();
      v32 = [objc_allocWithZone(MEMORY[0x277D6EEC8]) init];
      [v32 attemptToPlayKey_];
    }
  }
}

uint64_t KeypadViewModel.deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  v3 = OBJC_IVAR____TtC22FaceTimeNotificationUI15KeypadViewModel___observationRegistrar;
  v4 = sub_24AAB2D34();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t KeypadViewModel.__deallocating_deinit()
{
  v1 = *(v0 + 2);
  swift_unknownObjectRelease();
  v2 = *(v0 + 5);

  v3 = OBJC_IVAR____TtC22FaceTimeNotificationUI15KeypadViewModel___observationRegistrar;
  v4 = sub_24AAB2D34();
  (*(*(v4 - 8) + 8))(&v0[v3], v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v5, v6);
}

uint64_t KeypadView.init(viewModel:)@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for KeypadView(0);
  v3 = (a1 + *(v2 + 20));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85CF0, &qword_24AAB89C0);
  sub_24AAB4B54();
  *v3 = v8;
  v3[1] = v9;
  v4 = a1 + *(v2 + 24);
  *v4 = sub_24AAB3C94() & 1;
  *(v4 + 8) = v5;
  *(v4 + 16) = v6 & 1;
  type metadata accessor for KeypadViewModel(0);
  sub_24AA5F534(&qword_27EF85CF8, type metadata accessor for KeypadViewModel);
  return sub_24AAB4CB4();
}

uint64_t KeypadView.body.getter@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_24AAB41B4();
  *(a1 + 8) = 0x4030000000000000;
  *(a1 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85D00, &qword_24AAB89C8);
  return sub_24AA59CBC(v1, a1 + *(v3 + 44));
}

uint64_t sub_24AA59CBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v3 = type metadata accessor for KeypadView(0);
  v4 = v3 - 8;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85E60, &qword_24AAB8CE0);
  v9 = v8 - 8;
  v10 = *(*(v8 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v39 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v36 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85E68, &qword_24AAB8CE8);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v36 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v36 - v19;
  sub_24AA5A094(&v36 - v19);
  sub_24AA5A7B8(v14);
  v21 = sub_24AAB4D44();
  v37 = v22;
  v38 = v21;
  v23 = &v14[*(v9 + 44)];
  sub_24AA5F38C(a1, v7);
  v24 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v25 = swift_allocObject();
  sub_24AA5F3F4(v7, v25 + v24);
  v41 = 0;
  v42 = 0xE000000000000000;
  sub_24AAB4B54();
  v44 = sub_24AA5F458;
  v45 = v25;
  v26 = a1 + *(v4 + 32);
  v27 = *v26;
  v28 = *(v26 + 8);
  LOBYTE(v26) = *(v26 + 16);
  LOBYTE(v41) = v27;
  v42 = v28;
  v43 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85E70, &qword_24AAB8CF0);
  sub_24AAB3C84();
  sub_24AA5F4D8();
  sub_24AAB48F4();

  v29 = &v23[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85E80, &qword_24AAB8CF8) + 36)];
  v30 = v37;
  *v29 = v38;
  v29[1] = v30;
  v31 = v36;
  sub_24AA1695C(v20, v36, &qword_27EF85E68, &qword_24AAB8CE8);
  v32 = v39;
  sub_24AA1695C(v14, v39, &qword_27EF85E60, &qword_24AAB8CE0);
  v33 = v40;
  sub_24AA1695C(v31, v40, &qword_27EF85E68, &qword_24AAB8CE8);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85E88, &qword_24AAB8D00);
  sub_24AA1695C(v32, v33 + *(v34 + 48), &qword_27EF85E60, &qword_24AAB8CE0);
  sub_24AA169C4(v14, &qword_27EF85E60, &qword_24AAB8CE0);
  sub_24AA169C4(v20, &qword_27EF85E68, &qword_24AAB8CE8);
  sub_24AA169C4(v32, &qword_27EF85E60, &qword_24AAB8CE0);
  return sub_24AA169C4(v31, &qword_27EF85E68, &qword_24AAB8CE8);
}

__n128 sub_24AA5A094@<Q0>(uint64_t a1@<X8>)
{
  v69 = a1;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85F38, &qword_24AAB8D90);
  v63 = *(v66 - 8);
  v1 = *(v63 + 64);
  MEMORY[0x28223BE20](v66);
  v62 = &v60 - v2;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85F40, &qword_24AAB8D98);
  v3 = *(*(v61 - 8) + 64);
  MEMORY[0x28223BE20](v61);
  v5 = &v60 - v4;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85F48, &qword_24AAB8DA0);
  v6 = *(*(v65 - 8) + 64);
  MEMORY[0x28223BE20](v65);
  v67 = &v60 - v7;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85F50, &qword_24AAB8DA8);
  v8 = *(*(v64 - 8) + 64);
  MEMORY[0x28223BE20](v64);
  v68 = &v60 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85D18, &qword_24AAB8AA0);
  sub_24AAB4CA4();
  v10 = v70;
  swift_getKeyPath();
  *&v70 = v10;
  sub_24AA5F534(&qword_27EF85CF8, type metadata accessor for KeypadViewModel);
  sub_24AAB2CF4();

  swift_beginAccess();
  v11 = *(v10 + 32);
  v12 = *(v10 + 40);

  v13 = HIBYTE(v12) & 0xF;
  if ((v12 & 0x2000000000000000) == 0)
  {
    v13 = v11 & 0xFFFFFFFFFFFFLL;
  }

  if (v13)
  {
    sub_24AAB4CA4();
    v14 = v70;
    swift_getKeyPath();
    *&v70 = v14;
    sub_24AAB2CF4();

    swift_beginAccess();
    v16 = *(v14 + 32);
    v15 = *(v14 + 40);
  }

  else
  {
    v15 = 0xE100000000000000;
    v16 = 32;
  }

  *&v70 = v16;
  *(&v70 + 1) = v15;
  sub_24AA15894();
  v17 = sub_24AAB4774();
  v19 = v18;
  v21 = v20;
  sub_24AAB4554();
  sub_24AAB4604();

  v22 = sub_24AAB4704();
  v24 = v23;
  v26 = v25;

  sub_24AA158E8(v17, v19, v21 & 1);

  sub_24AAB45A4();
  v27 = sub_24AAB4634();
  v29 = v28;
  LOBYTE(v19) = v30;
  v32 = v31;
  sub_24AA158E8(v22, v24, v26 & 1);

  *&v70 = v27;
  *(&v70 + 1) = v29;
  LOBYTE(v71) = v19 & 1;
  *(&v71 + 1) = v32;
  v33 = v62;
  sub_24AAB49A4();
  sub_24AA158E8(v27, v29, v19 & 1);

  LOBYTE(v27) = sub_24AAB44C4();
  sub_24AAB3C54();
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  (*(v63 + 32))(v5, v33, v66);
  v42 = &v5[*(v61 + 36)];
  *v42 = v27;
  *(v42 + 1) = v35;
  *(v42 + 2) = v37;
  *(v42 + 3) = v39;
  *(v42 + 4) = v41;
  v42[40] = 0;
  sub_24AAB4D44();
  sub_24AAB3F24();
  v43 = v5;
  v44 = v67;
  sub_24AA1A25C(v43, v67, &qword_27EF85F40, &qword_24AAB8D98);
  v45 = (v44 + *(v65 + 36));
  v46 = v75;
  v45[4] = v74;
  v45[5] = v46;
  v45[6] = v76;
  v48 = v71;
  v47 = v72;
  *v45 = v70;
  v45[1] = v48;
  v49 = v73;
  v45[2] = v47;
  v45[3] = v49;
  v50 = v68;
  v51 = &v68[*(v64 + 36)];
  v52 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85F58, &qword_24AAB8DB0) + 28);
  v53 = *MEMORY[0x277CE0B20];
  v54 = sub_24AAB46D4();
  (*(*(v54 - 8) + 104))(v51 + v52, v53, v54);
  *v51 = swift_getKeyPath();
  sub_24AA1A25C(v44, v50, &qword_27EF85F48, &qword_24AAB8DA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85F60, qword_24AAB8DE8);
  v55 = swift_allocObject();
  *(v55 + 16) = xmmword_24AAB6FC0;
  *(v55 + 32) = sub_24AAB4A24();
  *(v55 + 40) = sub_24AAB4A44();
  *(v55 + 48) = sub_24AAB4A44();
  MEMORY[0x24C225520](v55);
  sub_24AAB3E54();
  v56 = v77;
  v57 = v69;
  sub_24AA1A25C(v50, v69, &qword_27EF85F50, &qword_24AAB8DA8);
  v58 = v57 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85E68, &qword_24AAB8CE8) + 36);
  *v58 = v56;
  result = v78;
  *(v58 + 24) = v79;
  *(v58 + 8) = result;
  return result;
}

uint64_t sub_24AA5A7B8@<X0>(uint64_t a1@<X8>)
{
  v62 = a1;
  v1 = sub_24AAB2CD4();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v61 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24AAB4ED4();
  v59 = *(v4 - 8);
  v60 = v4;
  v5 = *(v59 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v52 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v54 = &v49 - v8;
  v9 = type metadata accessor for KeypadView(0);
  v58 = *(v9 - 8);
  v57 = *(v58 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v55 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_24AAB42F4();
  v11 = *(*(v53 - 8) + 64);
  MEMORY[0x28223BE20](v53);
  v51 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_24AAB4CE4();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = (&v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = sub_24AAB4CF4();
  v19 = *(v18 - 8);
  v20 = v19;
  v21 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v23 = &v49 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85EA0, &qword_24AAB8D18);
  v24 = *(*(v50 - 8) + 64);
  MEMORY[0x28223BE20](v50);
  v26 = &v49 - v25;
  *v17 = xmmword_24AAB6290;
  (*(v14 + 104))(v17, *MEMORY[0x277CDF108], v13);
  sub_24AAB4D04();
  v27 = sub_24AAB5054();
  *(v27 + 16) = 3;
  v28 = v27 + ((*(v20 + 80) + 32) & ~*(v20 + 80));
  v29 = *(v19 + 16);
  v29(v28, v23, v18);
  v30 = v19;
  v31 = v52;
  v32 = *(v30 + 72);
  v29(v28 + v32, v23, v18);
  v33 = v50;
  v34 = v23;
  v35 = v54;
  (*(v20 + 32))(v28 + 2 * v32, v34, v18);
  v36 = v56;
  v63 = v56;
  sub_24AAB41B4();
  LODWORD(v64) = 0;
  sub_24AA5F534(&qword_27EF85058, MEMORY[0x277CE0428]);
  sub_24AAB5574();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85EA8, &qword_24AAB8D20);
  sub_24AA5F57C();
  v37 = v59;
  sub_24AAB4DC4();
  v38 = v55;
  sub_24AA5F38C(v36, v55);
  v39 = (*(v58 + 80) + 16) & ~*(v58 + 80);
  v40 = swift_allocObject();
  v41 = v40 + v39;
  v42 = v60;
  sub_24AA5F3F4(v38, v41);
  v43 = &v26[*(v33 + 36)];
  *v43 = sub_24AA5F7F0;
  v43[1] = v40;
  v43[2] = 0;
  v43[3] = 0;
  sub_24AAB4E84();
  (*(v37 + 16))(v31, v35, v42);
  if (qword_27EF84C50 != -1)
  {
    swift_once();
  }

  v44 = qword_27EF919A8;
  sub_24AAB2CC4();
  v45 = sub_24AAB4F14();
  v47 = v46;
  (*(v37 + 8))(v35, v42);
  v64 = v45;
  v65 = v47;
  sub_24AA5F850();
  sub_24AA15894();
  sub_24AAB4864();

  return sub_24AA169C4(v26, &qword_27EF85EA0, &qword_24AAB8D18);
}

uint64_t sub_24AA5AE28(uint64_t a1, unint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85D18, &qword_24AAB8AA0);
  sub_24AAB4CA4();
  sub_24AA59620(a1, a2);

  v6 = (a3 + *(type metadata accessor for KeypadView(0) + 20));
  v7 = *v6;
  v8 = v6[1];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85E90, &qword_24AAB8D08);
  sub_24AAB4B64();
  sub_24AA5D800(&v10, a1, a2);

  sub_24AAB4B74();
}

uint64_t sub_24AA5AF3C(uint64_t a1)
{
  v2 = type metadata accessor for KeypadView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  if (qword_27EF84C40 != -1)
  {
    swift_once();
  }

  v11[5] = off_27EF85CE0;
  swift_getKeyPath();
  sub_24AA5F38C(a1, v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_24AA5F3F4(v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85EE8, &qword_24AAB8D58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85EF0, &qword_24AAB8D60);
  sub_24AA16A68(&qword_27EF85EF8, &qword_27EF85EE8, &qword_24AAB8D58);
  v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF85EB8, &qword_24AAB8D28);
  v8 = sub_24AA16A68(&qword_27EF85EC0, &qword_27EF85EB8, &qword_24AAB8D28);
  v9 = sub_24AA5F684();
  v11[1] = v7;
  v11[2] = &type metadata for KeypadButtonStyle;
  v11[3] = v8;
  v11[4] = v9;
  swift_getOpaqueTypeConformance2();
  return sub_24AAB4C74();
}

uint64_t sub_24AA5B1B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v38 = a3;
  v39 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85D88, &qword_24AAB8BF0);
  v6 = *(v5 - 8);
  v34 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v31 - v7;
  v9 = type metadata accessor for KeypadView(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85EB8, &qword_24AAB8D28);
  v14 = *(v13 - 8);
  v36 = v13;
  v37 = v14;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v40 = &v31 - v16;
  sub_24AA5F38C(a2, v12);
  sub_24AA1695C(a1, v8, &qword_27EF85D88, &qword_24AAB8BF0);
  v17 = *(v10 + 80);
  v18 = (v17 + 16) & ~v17;
  v19 = *(v6 + 80);
  v35 = v11 + v19;
  v33 = v17 | v19;
  v20 = swift_allocObject();
  sub_24AA5F3F4(v12, v20 + v18);
  sub_24AA1A25C(v8, v20 + ((v11 + v19 + v18) & ~v19), &qword_27EF85D88, &qword_24AAB8BF0);
  v41 = a1;
  v32 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85F00, &qword_24AAB8D68);
  sub_24AA16A68(&qword_27EF85F08, &qword_27EF85F00, &qword_24AAB8D68);
  sub_24AAB4BB4();
  sub_24AA5F38C(v39, v12);
  sub_24AA1695C(a1, v8, &qword_27EF85D88, &qword_24AAB8BF0);
  sub_24AAB50C4();
  v21 = sub_24AAB50B4();
  v22 = (v17 + 32) & ~v17;
  v23 = (v35 + v22) & ~v19;
  v24 = swift_allocObject();
  v25 = MEMORY[0x277D85700];
  *(v24 + 16) = v21;
  *(v24 + 24) = v25;
  sub_24AA5F3F4(v12, v24 + v22);
  sub_24AA1A25C(v8, v24 + v23, &qword_27EF85D88, &qword_24AAB8BF0);
  sub_24AA5F38C(v39, v12);
  sub_24AA1695C(v32, v8, &qword_27EF85D88, &qword_24AAB8BF0);
  v26 = sub_24AAB50B4();
  v27 = swift_allocObject();
  *(v27 + 16) = v26;
  *(v27 + 24) = MEMORY[0x277D85700];
  sub_24AA5F3F4(v12, v27 + v22);
  sub_24AA1A25C(v8, v27 + v23, &qword_27EF85D88, &qword_24AAB8BF0);
  sub_24AAB4C14();
  sub_24AA16A68(&qword_27EF85EC0, &qword_27EF85EB8, &qword_24AAB8D28);
  sub_24AA5F684();
  v28 = v36;
  v29 = v40;
  sub_24AAB47E4();

  return (*(v37 + 8))(v29, v28);
}

uint64_t sub_24AA5B690(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85D18, &qword_24AAB8AA0);
  sub_24AAB4CA4();
  sub_24AA59620(*a2, *(a2 + 8));
}

double sub_24AA5B6EC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24AAB41B4();
  v18 = 1;
  sub_24AA5B824(a1, &v11);
  v23 = v15;
  v24[0] = v16[0];
  *(v24 + 10) = *(v16 + 10);
  v19 = v11;
  v20 = v12;
  v21 = v13;
  v22 = v14;
  v25[0] = v11;
  v25[1] = v12;
  v25[2] = v13;
  v25[3] = v14;
  v25[4] = v15;
  v26[0] = v16[0];
  *(v26 + 10) = *(v16 + 10);
  sub_24AA1695C(&v19, &v10, &qword_27EF85F10, &unk_24AAB8D70);
  sub_24AA169C4(v25, &qword_27EF85F10, &unk_24AAB8D70);
  *&v17[55] = v22;
  *&v17[71] = v23;
  *&v17[87] = v24[0];
  *&v17[97] = *(v24 + 10);
  *&v17[7] = v19;
  *&v17[23] = v20;
  *&v17[39] = v21;
  v5 = *&v17[80];
  *(a2 + 81) = *&v17[64];
  *(a2 + 97) = v5;
  *(a2 + 113) = *&v17[96];
  v6 = *&v17[16];
  *(a2 + 17) = *v17;
  *(a2 + 33) = v6;
  result = *&v17[32];
  v8 = *&v17[48];
  *(a2 + 49) = *&v17[32];
  v9 = v18;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = v9;
  *(a2 + 129) = v17[112];
  *(a2 + 65) = v8;
  return result;
}

__n128 sub_24AA5B824@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v105 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85F18, &qword_24AABD640);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v104 = v95 - v5;
  v6 = sub_24AAB2CD4();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v103 = (v95 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_24AAB4ED4();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v101 = v95 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85D88, &qword_24AAB8BF0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = (v95 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v18 = v95 - v17;
  v19 = sub_24AAB2B84();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v19);
  v100 = v95 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v106 = v95 - v24;
  sub_24AA1695C(a1, v18, &qword_27EF85D88, &qword_24AAB8BF0);
  v25 = *(v18 + 1);

  v26 = *(v12 + 48);
  if ((*(v20 + 48))(&v18[v26], 1, v19) == 1)
  {
    sub_24AA169C4(&v18[v26], &qword_27EF85D90, &qword_24AAB8BF8);
    sub_24AA1695C(a1, v16, &qword_27EF85D88, &qword_24AAB8BF0);
    v27 = v16[1];
    v28 = *(v12 + 48);
    *&v129 = *v16;
    *(&v129 + 1) = v27;
    sub_24AA15894();
    v29 = sub_24AAB4774();
    v31 = v30;
    v33 = v32;
    sub_24AA169C4(v16 + v28, &qword_27EF85D90, &qword_24AAB8BF8);
    sub_24AAB45C4();
    sub_24AAB4604();

    v34 = sub_24AAB4704();
    v36 = v35;
    LOBYTE(v28) = v37;
    v39 = v38;

    sub_24AA158E8(v29, v31, v33 & 1);

    LOBYTE(v108) = v28 & 1;
    v124 = 1;
    *&v118 = v34;
    *(&v118 + 1) = v36;
    LOBYTE(v119) = v28 & 1;
    *(&v119 + 1) = v112[0];
    DWORD1(v119) = *(v112 + 3);
    *(&v119 + 1) = v39;
    v122 = v127;
    v123[0] = v128[0];
    *(v123 + 9) = *(v128 + 9);
    v121 = v126;
    v120 = v125;
    BYTE9(v123[1]) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85F20, &qword_24AAB8D80);
    sub_24AA16A68(&qword_27EF85F28, &qword_27EF85F20, &qword_24AAB8D80);
    sub_24AAB42B4();
  }

  else
  {
    (*(v20 + 32))(v106, &v18[v26], v19);
    sub_24AA1695C(a1, v16, &qword_27EF85D88, &qword_24AAB8BF0);
    v40 = *v16;
    v41 = v16[1];
    v102 = v19;
    v42 = *(v12 + 48);
    *&v129 = v40;
    *(&v129 + 1) = v41;
    v95[1] = sub_24AA15894();
    v43 = sub_24AAB4774();
    v45 = v44;
    v47 = v46;
    sub_24AA169C4(v16 + v42, &qword_27EF85D90, &qword_24AAB8BF8);
    sub_24AAB4554();
    v48 = sub_24AAB4704();
    v49 = v20;
    v51 = v50;
    v53 = v52;
    v54 = v49;

    v55 = v43;
    v56 = v102;
    sub_24AA158E8(v55, v45, v47 & 1);

    sub_24AAB4594();
    v57 = sub_24AAB4634();
    v97 = v58;
    v98 = v57;
    v96 = v59;
    v99 = v60;
    sub_24AA158E8(v48, v51, v53 & 1);

    v61 = v100;
    (*(v54 + 16))(v100, v106, v56);
    sub_24AAB2B14();
    if (qword_27EF84C50 != -1)
    {
      swift_once();
    }

    v62 = qword_27EF919A8;
    sub_24AAB2CC4();
    *&v129 = sub_24AAB4F14();
    *(&v129 + 1) = v63;
    v64 = sub_24AAB4774();
    v66 = v65;
    v68 = v67;
    v69 = *(v54 + 8);
    v101 = (v54 + 8);
    v103 = v69;
    v69(v61, v56);
    sub_24AAB4594();
    v70 = sub_24AAB4564();
    v71 = v104;
    (*(*(v70 - 8) + 56))(v104, 1, 1, v70);
    sub_24AAB45B4();
    sub_24AA169C4(v71, &qword_27EF85F18, &qword_24AABD640);
    v72 = sub_24AAB4704();
    v74 = v73;
    v76 = v75;

    sub_24AA158E8(v64, v66, v68 & 1);

    v77 = sub_24AAB4714();
    v79 = v78;
    v81 = v80;
    v83 = v82;
    sub_24AA158E8(v72, v74, v76 & 1);

    LOBYTE(v72) = sub_24AAB4504();
    sub_24AAB3C54();
    *&v108 = v77;
    *(&v108 + 1) = v79;
    v109.n128_u8[0] = v81 & 1;
    *(v109.n128_u32 + 1) = v129;
    v109.n128_u32[1] = *(&v129 + 3);
    v109.n128_u64[1] = v83;
    LOBYTE(v110) = v72;
    DWORD1(v110) = *(&v118 + 3);
    *(&v110 + 1) = v118;
    *(&v110 + 1) = v84;
    *&v111[0] = v85;
    *(&v111[0] + 1) = v86;
    *&v111[1] = v87;
    BYTE8(v111[1]) = 0;
    *(v128 + 9) = *(v111 + 9);
    v128[0] = v111[0];
    v127 = v110;
    v126 = v109;
    v125 = v108;
    v112[0] = v108;
    *(v113 + 9) = *(v111 + 9);
    v112[2] = v110;
    v113[0] = v111[0];
    v112[1] = v109;
    *(v117 + 9) = *(v111 + 9);
    LOBYTE(v77) = v96 & 1;
    v107 = v96 & 1;
    v116 = v110;
    v117[0] = v111[0];
    v114 = v108;
    v115 = v109;
    LOBYTE(v72) = v96 & 1;
    v89 = v97;
    v88 = v98;
    sub_24AA1A814(v98, v97, v96 & 1);
    v90 = v99;

    sub_24AA1695C(&v108, &v129, &qword_27EF85F30, &qword_24AAB8D88);
    sub_24AA1A814(v88, v89, v77);

    sub_24AA1695C(v112, &v129, &qword_27EF85F30, &qword_24AAB8D88);
    sub_24AA169C4(&v125, &qword_27EF85F30, &qword_24AAB8D88);
    sub_24AA158E8(v88, v89, v77);

    v132 = v115;
    v133 = v116;
    *v134 = v117[0];
    *&v134[9] = *(v117 + 9);
    v124 = 0;
    *&v129 = v88;
    *(&v129 + 1) = v89;
    LOBYTE(v130) = v72;
    *(&v130 + 1) = v90;
    v131 = v114;
    v134[25] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85F20, &qword_24AAB8D80);
    sub_24AA16A68(&qword_27EF85F28, &qword_27EF85F20, &qword_24AAB8D80);
    sub_24AAB42B4();
    sub_24AA169C4(&v108, &qword_27EF85F30, &qword_24AAB8D88);
    sub_24AA158E8(v88, v89, v77);

    v103(v106, v102);
    v133 = v122;
    *v134 = v123[0];
    *&v134[10] = *(v123 + 10);
    v129 = v118;
    v130 = v119;
    v131 = v120;
    v132 = v121;
  }

  v91 = *v134;
  v92 = v105;
  *(v105 + 64) = v133;
  *(v92 + 80) = v91;
  *(v92 + 90) = *&v134[10];
  v93 = v130;
  *v92 = v129;
  *(v92 + 16) = v93;
  result = v132;
  *(v92 + 32) = v131;
  *(v92 + 48) = result;
  return result;
}

uint64_t sub_24AA5C258@<X0>(uint64_t a1@<X2>, uint64_t *a2@<X3>, _BYTE *a3@<X8>)
{
  v5 = (a1 + *(type metadata accessor for KeypadView(0) + 20));
  v8 = *v5;
  v9 = v5[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85E90, &qword_24AAB8D08);
  sub_24AAB4B64();
  LOBYTE(a2) = sub_24AA5C2EC(*a2, a2[1], v7);

  *a3 = a2 & 1;
  return result;
}

uint64_t sub_24AA5C2EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_24AAB54F4();
  sub_24AAB4F64();
  v7 = sub_24AAB5524();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(a3 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_24AAB5474() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_24AA5C3E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a5;
  v6 = a5[1];
  v7 = (a4 + *(type metadata accessor for KeypadView(0) + 20));
  v8 = *v7;
  v9 = v7[1];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85E90, &qword_24AAB8D08);
  sub_24AAB4B64();
  sub_24AA5E0C4(v5, v6);

  sub_24AAB4B74();
}

uint64_t sub_24AA5C4B0(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for KeypadView(0) + 24));
  v2 = *v1;
  v3 = *(v1 + 1);
  v4 = v1[16];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85E70, &qword_24AAB8CF0);
  sub_24AAB3C64();
  sub_24AAB3C74();
}

uint64_t sub_24AA5C570@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_24AAB41B4();
  *(a1 + 8) = 0x4030000000000000;
  *(a1 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85D00, &qword_24AAB89C8);
  return sub_24AA59CBC(v1, a1 + *(v3 + 44));
}

uint64_t sub_24AA5C5C4@<X0>(uint64_t a1@<X8>)
{
  v11[1] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85D58, &unk_24AAB8BD0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = v11 - v4;
  sub_24AAB4164();
  v17 = *v1;
  v6 = *(v1 + 2);
  v15 = *v1;
  v16 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85D60, &unk_24AABE9C0);
  sub_24AAB4B84();
  sub_24AAB4DE4();
  *&v5[*(v2 + 36)] = 0;
  v13 = v17;
  v14 = v6;
  sub_24AAB4B64();
  v13 = v17;
  v18 = v6;
  v7 = *(v1 + 4);
  v8 = swift_allocObject();
  v9 = v1[1];
  *(v8 + 16) = *v1;
  *(v8 + 32) = v9;
  *(v8 + 48) = *(v1 + 4);
  sub_24AA5EE00(&v13, v12);
  sub_24AA1695C(&v18, v12, &qword_27EF85D68, &qword_24AAB8BE0);
  sub_24AA5EE5C();

  sub_24AAB4954();

  return sub_24AA169C4(v5, &qword_27EF85D58, &unk_24AAB8BD0);
}

uint64_t sub_24AA5C814(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v45 = a3;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85D88, &qword_24AAB8BF0);
  v46 = *(v50 - 8);
  v5 = *(v46 + 64);
  v6 = MEMORY[0x28223BE20](v50);
  v8 = (&v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = MEMORY[0x28223BE20](v6);
  v11 = (&v45 - v10);
  result = MEMORY[0x28223BE20](v9);
  v14 = &v45 - v13;
  v15 = *a1;
  v16 = a1[1];
  v18 = *a2;
  v17 = a2[1];
  if (v15 != v18 || v16 != v17)
  {
    result = sub_24AAB5474();
    if ((result & 1) == 0)
    {
      v20 = sub_24AAB4F74();
      result = sub_24AAB4F74();
      if (result < v20)
      {
        v21 = 0xE000000000000000;
        v53 = 0;
        v54 = 0xE000000000000000;
        v22 = HIBYTE(v17) & 0xF;
        if ((v17 & 0x2000000000000000) == 0)
        {
          v22 = v18 & 0xFFFFFFFFFFFFLL;
        }

        v52[2] = v18;
        v52[3] = v17;
        v52[4] = 0;
        v52[5] = v22;

        v23 = sub_24AAB4FB4();
        if (v24)
        {
          v25 = v23;
          v26 = v24;
          v27 = 0;
          do
          {
            if (qword_27EF84C40 != -1)
            {
              v23 = swift_once();
            }

            v29 = off_27EF85CE0;
            v30 = *(off_27EF85CE0 + 2);
            if (v30)
            {
              v47 = v25;
              v48 = v26;
              v49 = v27;
              v52[0] = MEMORY[0x277D84F90];
              sub_24AA5D43C(0, v30, 0);
              v31 = v52[0];
              v32 = v29 + ((*(v46 + 80) + 32) & ~*(v46 + 80));
              v51 = *(v46 + 72);
              do
              {
                sub_24AA1695C(v32, v14, &qword_27EF85D88, &qword_24AAB8BF0);
                sub_24AA1695C(v14, v11, &qword_27EF85D88, &qword_24AAB8BF0);
                v34 = *v11;
                v33 = v11[1];
                v35 = *(v50 + 48);
                *v8 = *v11;
                v8[1] = v33;
                sub_24AA1A25C(v11 + v35, v8 + v35, &qword_27EF85D90, &qword_24AAB8BF8);

                sub_24AA169C4(v8, &qword_27EF85D88, &qword_24AAB8BF0);
                v23 = sub_24AA169C4(v14, &qword_27EF85D88, &qword_24AAB8BF0);
                v52[0] = v31;
                v37 = *(v31 + 16);
                v36 = *(v31 + 24);
                if (v37 >= v36 >> 1)
                {
                  v23 = sub_24AA5D43C((v36 > 1), v37 + 1, 1);
                  v31 = v52[0];
                }

                *(v31 + 16) = v37 + 1;
                v38 = v31 + 16 * v37;
                *(v38 + 32) = v34;
                *(v38 + 40) = v33;
                v32 += v51;
                --v30;
              }

              while (v30);
              v26 = v48;
              v27 = v49;
              v25 = v47;
            }

            else
            {
              v31 = MEMORY[0x277D84F90];
            }

            v52[0] = v25;
            v52[1] = v26;
            MEMORY[0x28223BE20](v23);
            *(&v45 - 2) = v52;

            v39 = sub_24AA5D68C(sub_24AA5EF14, (&v45 - 4), v31);

            if (v39)
            {
              MEMORY[0x24C2257E0](v25, v26);
            }

            v23 = sub_24AAB4FB4();
            v25 = v23;
            v26 = v28;
          }

          while (v28);
          v40 = v53;
          v21 = v54;
        }

        else
        {
          v40 = 0;
        }

        v41 = sub_24AA58BE4(v40, v21);
        v43 = v42;

        if (v43)
        {
          v44 = *(v45 + 32);
          (*(v45 + 24))(v41, v43);
        }
      }
    }
  }

  return result;
}

uint64_t sub_24AA5CC34@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 4);
  return sub_24AA5C5C4(a1);
}

uint64_t sub_24AA5CC70@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, int a3@<W3>, uint64_t a4@<X8>)
{
  v33 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85DA0, &qword_24AAB8C10);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = (&v32 - v9);
  v11 = [objc_opt_self() quaternarySystemFillColor];
  v12 = sub_24AAB49C4();
  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85DA8, &qword_24AAB8C18) + 36);
  v14 = *MEMORY[0x277CE13B8];
  v15 = sub_24AAB4DB4();
  (*(*(v15 - 8) + 104))(v10 + v13, v14, v15);
  *v10 = v12;
  sub_24AAB4D44();
  sub_24AAB3D54();
  v16 = (v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85DB0, &qword_24AAB8C20) + 36));
  v17 = v35;
  *v16 = v34;
  v16[1] = v17;
  v16[2] = v36;
  v18 = sub_24AAB4D44();
  v20 = v19;
  v21 = v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85DB8, &qword_24AAB8C28) + 36);
  sub_24AAB43B4();
  v22 = &v21[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85DC0, &qword_24AAB8C30) + 36)];
  *v22 = v18;
  v22[1] = v20;
  v23 = sub_24AAB4A44();
  KeyPath = swift_getKeyPath();
  v25 = (v10 + *(v7 + 36));
  *v25 = KeyPath;
  v25[1] = v23;
  sub_24AA5EF88();
  sub_24AAB4794();
  sub_24AA169C4(v10, &qword_27EF85DA0, &qword_24AAB8C10);
  v26 = sub_24AAB4D44();
  v28 = v27;
  v29 = a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85E00, &qword_24AAB8C70) + 36);
  sub_24AA5CEFC(a1, a2, v33, v29);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85E08, &qword_24AAB8C78);
  v31 = (v29 + *(result + 36));
  *v31 = v26;
  v31[1] = v28;
  return result;
}

uint64_t sub_24AA5CEFC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, char a3@<W3>, uint64_t a4@<X8>)
{
  v33 = a1;
  v34 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85E10, &qword_24AAB8C80);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = (&v31 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85E18, &qword_24AAB8C88);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (&v31 - v12);
  v14 = sub_24AAB49D4();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_24AAB43C4())
  {
    (*(v15 + 104))(v18, *MEMORY[0x277CE0EE0], v14);
    v19 = sub_24AAB4A74();
    sub_24AAB3D94();
    sub_24AAB3D84();
    MEMORY[0x24C2255E0](0.5, 1.0, 0.0);
    sub_24AAB3DB4();

    v20 = sub_24AAB3D64();

    *v13 = v19;
    v13[1] = v20;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85E30, &unk_24AAB8CA0);
    sub_24AA5F254();
    sub_24AA16A68(&qword_27EF85E50, &qword_27EF85E10, &qword_24AAB8C80);
    sub_24AAB42B4();
  }

  else
  {
    v31 = v10;
    v32 = a4;
    v36 = v33;
    v37 = v34;
    v21 = a3 & 1;
    v38 = a3 & 1;
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85E20, &qword_24AAB8C90);
    MEMORY[0x24C225430](&v35, v22);
    if (v35 != 1)
    {
      v28 = 1;
      a4 = v32;
      goto LABEL_7;
    }

    (*(v15 + 104))(v18, *MEMORY[0x277CE0EE0], v14);
    v23 = sub_24AAB4A74();
    sub_24AAB3D94();
    sub_24AAB3D84();
    MEMORY[0x24C2255E0](0.5, 1.0, 0.0);
    sub_24AAB3DB4();

    v24 = sub_24AAB3D64();

    v25 = swift_allocObject();
    v26 = v34;
    *(v25 + 16) = v33;
    *(v25 + 24) = v26;
    *(v25 + 32) = v21;
    v27 = *(v6 + 52);

    sub_24AAB2CA4();
    *v9 = v23;
    v9[1] = v24;
    v9[2] = sub_24AA5F248;
    v9[3] = v25;
    v9[4] = 0;
    v9[5] = 0;
    sub_24AA1695C(v9, v13, &qword_27EF85E10, &qword_24AAB8C80);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85E30, &unk_24AAB8CA0);
    sub_24AA5F254();
    sub_24AA16A68(&qword_27EF85E50, &qword_27EF85E10, &qword_24AAB8C80);
    a4 = v32;
    sub_24AAB42B4();
    sub_24AA169C4(v9, &qword_27EF85E10, &qword_24AAB8C80);
  }

  v28 = 0;
LABEL_7:
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85E28, &qword_24AAB8C98);
  return (*(*(v29 - 8) + 56))(a4, v28, 1, v29);
}

char *sub_24AA5D43C(char *a1, int64_t a2, char a3)
{
  result = sub_24AA5D47C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_24AA5D45C(char *a1, int64_t a2, char a3)
{
  result = sub_24AA5D588(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_24AA5D47C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF87040, &qword_24AAB8C00);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_24AA5D588(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85E58, &qword_24AAB8CB0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

uint64_t sub_24AA5D68C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_24AA5D738(uint64_t a1)
{
  v2 = sub_24AAB46D4();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_24AAB3F94();
}

uint64_t sub_24AA5D800(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_24AAB54F4();
  sub_24AAB4F64();
  v9 = sub_24AAB5524();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_24AAB5474() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_24AA5DBB0(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_24AA5D950(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85E98, &qword_24AAB8D10);
  result = sub_24AAB5354();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_24AAB54F4();
      sub_24AAB4F64();
      result = sub_24AAB5524();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_24AA5DBB0(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_24AA5D950(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_24AA5DD30();
      goto LABEL_16;
    }

    sub_24AA5DE8C(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_24AAB54F4();
  sub_24AAB4F64();
  result = sub_24AAB5524();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_24AAB5474();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_24AAB5494();
  __break(1u);
  return result;
}

void *sub_24AA5DD30()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85E98, &qword_24AAB8D10);
  v2 = *v0;
  v3 = sub_24AAB5344();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_24AA5DE8C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85E98, &qword_24AAB8D10);
  result = sub_24AAB5354();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_24AAB54F4();

      sub_24AAB4F64();
      result = sub_24AAB5524();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_24AA5E0C4(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_24AAB54F4();
  sub_24AAB4F64();
  v7 = sub_24AAB5524();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(v5 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_24AAB5474() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  v14 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v2;
  v20 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_24AA5DD30();
    v16 = v20;
  }

  v17 = (*(v16 + 48) + 16 * v9);
  v13 = *v17;
  v18 = v17[1];
  sub_24AA5E200(v9);
  *v2 = v20;
  return v13;
}

unint64_t sub_24AA5E200(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_24AAB52A4();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = (*(v3 + 48) + 16 * v6);
        v13 = *v12;
        v14 = v12[1];
        sub_24AAB54F4();

        sub_24AAB4F64();
        v15 = sub_24AAB5524();

        v16 = v15 & v7;
        if (v2 >= v10)
        {
          if (v16 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v16 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v16)
        {
LABEL_11:
          v17 = *(v3 + 48);
          v18 = (v17 + 16 * v2);
          v19 = (v17 + 16 * v6);
          if (v2 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_24AA5E3C4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24AAB4064();
  *a1 = result;
  return result;
}

uint64_t sub_24AA5E3F0(uint64_t *a1)
{
  v1 = *a1;

  return sub_24AAB4074();
}

uint64_t sub_24AA5E41C(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_24AAB5474() & 1;
  }
}

void sub_24AA5E474(unint64_t a1, uint64_t a2, char a3, uint64_t a4, unint64_t *a5, uint64_t *a6)
{
  v10 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v11 = a4;
      }

      else
      {
        v11 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x24C225B50](a1, a2, v11);
      sub_24AA442A0(0, a5, a6);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_24AA442A0(0, a5, a6);
    if (sub_24AAB52D4() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_24AAB52E4();
    swift_dynamicCast();
    v6 = v20;
    v12 = *(a4 + 40);
    v13 = sub_24AAB5204();
    v14 = -1 << *(a4 + 32);
    v10 = v13 & ~v14;
    if ((*(a4 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
    {
      v15 = ~v14;
      do
      {
        v16 = *(*(a4 + 48) + 8 * v10);
        v17 = sub_24AAB5214();

        if (v17)
        {
          goto LABEL_19;
        }

        v10 = (v10 + 1) & v15;
      }

      while (((*(a4 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
    }

    __break(1u);
  }

  if ((v10 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v10)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v10 >> 6) + 56) >> v10) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v18 = *(*(a4 + 48) + 8 * v10);

  v19 = v18;
}

void *sub_24AA5E68C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = type metadata accessor for KeypadViewModel(0);
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  v13 = swift_allocObject();
  sub_24AAB2D24();
  v13[2] = a1;
  v13[3] = a6;
  v13[4] = a2;
  v13[5] = a3;
  return v13;
}

void *sub_24AA5E6FC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  sub_24AAB2D24();
  a4[2] = a1;
  a4[3] = a6;
  a4[4] = a2;
  a4[5] = a3;
  return a4;
}

uint64_t sub_24AA5E7BC()
{
  result = sub_24AAB2D34();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_24AA5E898(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85D18, &qword_24AAB8AA0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_24AA5E974(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85D18, &qword_24AAB8AA0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_24AA5EA38()
{
  sub_24AA5EAD4();
  if (v0 <= 0x3F)
  {
    sub_24AA5EB2C();
    if (v1 <= 0x3F)
    {
      sub_24AA5EB90();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_24AA5EAD4()
{
  if (!qword_27EF85D30)
  {
    type metadata accessor for KeypadViewModel(255);
    v0 = sub_24AAB4CC4();
    if (!v1)
    {
      atomic_store(v0, &qword_27EF85D30);
    }
  }
}

void sub_24AA5EB2C()
{
  if (!qword_27EF85D38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF85CF0, &qword_24AAB89C0);
    v0 = sub_24AAB4B94();
    if (!v1)
    {
      atomic_store(v0, &qword_27EF85D38);
    }
  }
}

void sub_24AA5EB90()
{
  if (!qword_27EF85D40)
  {
    v0 = sub_24AAB3CB4();
    if (!v1)
    {
      atomic_store(v0, &qword_27EF85D40);
    }
  }
}

uint64_t sub_24AA5EC2C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24AA5EC74(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_24AA5ECE0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24AA5ED28(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24AA5EDB0()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

unint64_t sub_24AA5EE5C()
{
  result = qword_27EF85D70;
  if (!qword_27EF85D70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF85D58, &unk_24AAB8BD0);
    sub_24AA16A68(&qword_27EF85D78, &qword_27EF85D80, &qword_24AAB8BE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF85D70);
  }

  return result;
}

uint64_t sub_24AA5EF30@<X0>(uint64_t *a1@<X8>)
{
  result = sub_24AAB4064();
  *a1 = result;
  return result;
}

uint64_t sub_24AA5EF5C(uint64_t *a1)
{
  v1 = *a1;

  return sub_24AAB4074();
}

unint64_t sub_24AA5EF88()
{
  result = qword_27EF85DC8;
  if (!qword_27EF85DC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF85DA0, &qword_24AAB8C10);
    sub_24AA5F040();
    sub_24AA16A68(&qword_27EF85DF0, &qword_27EF85DF8, &qword_24AAB8C68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF85DC8);
  }

  return result;
}

unint64_t sub_24AA5F040()
{
  result = qword_27EF85DD0;
  if (!qword_27EF85DD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF85DB8, &qword_24AAB8C28);
    sub_24AA5F0F8();
    sub_24AA16A68(&qword_27EF85DE8, &qword_27EF85DC0, &qword_24AAB8C30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF85DD0);
  }

  return result;
}

unint64_t sub_24AA5F0F8()
{
  result = qword_27EF85DD8;
  if (!qword_27EF85DD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF85DB0, &qword_24AAB8C20);
    sub_24AA5F184();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF85DD8);
  }

  return result;
}

unint64_t sub_24AA5F184()
{
  result = qword_27EF85DE0;
  if (!qword_27EF85DE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF85DA8, &qword_24AAB8C18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF85DE0);
  }

  return result;
}

uint64_t sub_24AA5F208()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

uint64_t sub_24AA5F248()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  return sub_24AA5D3DC();
}

unint64_t sub_24AA5F254()
{
  result = qword_27EF85E38;
  if (!qword_27EF85E38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF85E30, &unk_24AAB8CA0);
    sub_24AA16A68(&qword_27EF85E40, &qword_27EF85E48, &qword_24AAB91C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF85E38);
  }

  return result;
}

uint64_t sub_24AA5F30C(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_24AAB5474() & 1;
  }
}

uint64_t sub_24AA5F38C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for KeypadView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24AA5F3F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for KeypadView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24AA5F458(uint64_t a1, unint64_t a2)
{
  v5 = *(type metadata accessor for KeypadView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_24AA5AE28(a1, a2, v6);
}

unint64_t sub_24AA5F4D8()
{
  result = qword_27EF85E78;
  if (!qword_27EF85E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF85E78);
  }

  return result;
}

uint64_t sub_24AA5F534(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24AA5F57C()
{
  result = qword_27EF85EB0;
  if (!qword_27EF85EB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF85EA8, &qword_24AAB8D20);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF85EB8, &qword_24AAB8D28);
    sub_24AA16A68(&qword_27EF85EC0, &qword_27EF85EB8, &qword_24AAB8D28);
    sub_24AA5F684();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF85EB0);
  }

  return result;
}

unint64_t sub_24AA5F684()
{
  result = qword_27EF85EC8;
  if (!qword_27EF85EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF85EC8);
  }

  return result;
}

uint64_t objectdestroy_33Tm()
{
  v1 = (type metadata accessor for KeypadView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85D18, &qword_24AAB8AA0);
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = (v0 + v3 + v1[7]);
  v7 = *v6;

  v8 = v6[1];

  v9 = *(v0 + v3 + v1[8] + 8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_24AA5F7F0()
{
  v1 = *(type metadata accessor for KeypadView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_24AA5C4B0(v2);
}

unint64_t sub_24AA5F850()
{
  result = qword_27EF85ED0;
  if (!qword_27EF85ED0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF85EA0, &qword_24AAB8D18);
    sub_24AA16A68(&qword_27EF85ED8, &qword_27EF85EE0, &qword_24AAB8D30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF85ED0);
  }

  return result;
}

uint64_t sub_24AA5F908@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for KeypadView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_24AA5B1B0(a1, v6, a2);
}

uint64_t sub_24AA5F988()
{
  v1 = (type metadata accessor for KeypadView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = v3 + *(*v1 + 64);
  v5 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85D88, &qword_24AAB8BF0) - 8);
  v6 = *(*v5 + 80);
  v7 = (v4 + v6) & ~v6;
  v8 = *(*v5 + 64);
  v9 = v0 + v3;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85D18, &qword_24AAB8AA0);
  (*(*(v10 - 8) + 8))(v9, v10);
  v11 = (v9 + v1[7]);
  v12 = *v11;

  v13 = v11[1];

  v14 = *(v9 + v1[8] + 8);

  v15 = *(v0 + v7 + 8);

  v16 = v5[14];
  v17 = sub_24AAB2B84();
  v18 = *(v17 - 8);
  if (!(*(v18 + 48))(v0 + v7 + v16, 1, v17))
  {
    (*(v18 + 8))(v0 + v7 + v16, v17);
  }

  return MEMORY[0x2821FE8E8](v0, v7 + v8, v2 | v6 | 7);
}

uint64_t sub_24AA5FB94()
{
  v1 = *(type metadata accessor for KeypadView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85D88, &qword_24AAB8BF0) - 8);
  v5 = v0 + ((v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_24AA5B690(v0 + v2, v5);
}

uint64_t sub_24AA5FC78@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(type metadata accessor for KeypadView(0) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85D88, &qword_24AAB8BF0) - 8);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = (v1 + ((v5 + *(v6 + 80)) & ~*(v6 + 80)));

  return sub_24AA5C258(v1 + v4, v9, a1);
}

uint64_t objectdestroy_48Tm()
{
  v1 = (type metadata accessor for KeypadView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = v3 + *(*v1 + 64);
  v5 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85D88, &qword_24AAB8BF0) - 8);
  v6 = *(*v5 + 80);
  v7 = (v4 + v6) & ~v6;
  v8 = *(*v5 + 64);
  v9 = *(v0 + 16);
  swift_unknownObjectRelease();
  v10 = v0 + v3;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85D18, &qword_24AAB8AA0);
  (*(*(v11 - 8) + 8))(v10, v11);
  v12 = (v10 + v1[7]);
  v13 = *v12;

  v14 = v12[1];

  v15 = *(v10 + v1[8] + 8);

  v16 = *(v0 + v7 + 8);

  v17 = v5[14];
  v18 = sub_24AAB2B84();
  v19 = *(v18 - 8);
  if (!(*(v19 + 48))(v0 + v7 + v17, 1, v18))
  {
    (*(v19 + 8))(v0 + v7 + v17, v18);
  }

  return MEMORY[0x2821FE8E8](v0, v7 + v8, v2 | v6 | 7);
}

uint64_t sub_24AA5FF70(uint64_t a1)
{
  v3 = *(type metadata accessor for KeypadView(0) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85D88, &qword_24AAB8BF0) - 8);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = (v1 + ((v5 + *(v6 + 80)) & ~*(v6 + 80)));

  return sub_24AA5C3E4(a1, v7, v8, v1 + v4, v9);
}

uint64_t sub_24AA6007C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_24AA60088(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 56) + 8 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_24AA600D8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF85D58, &unk_24AAB8BD0);
  sub_24AA5EE5C();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_24AA60154()
{
  result = qword_27EF85F68;
  if (!qword_27EF85F68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF85E00, &qword_24AAB8C70);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF85DA0, &qword_24AAB8C10);
    sub_24AA5EF88();
    swift_getOpaqueTypeConformance2();
    sub_24AA16A68(&qword_27EF85F70, &qword_27EF85E08, &qword_24AAB8C78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF85F68);
  }

  return result;
}

id sub_24AA603A8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UIBackdropView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_24AA60410()
{
  v0 = [objc_allocWithZone(type metadata accessor for UIBackdropView()) init];
  v1 = objc_opt_self();
  v2 = v0;
  v3 = [v1 clearColor];
  [v2 setBackgroundColor_];

  return v2;
}

uint64_t sub_24AA604EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24AA60634();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_24AA60550(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24AA60634();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_24AA605B4()
{
  sub_24AA60634();
  sub_24AAB4284();
  __break(1u);
}

unint64_t sub_24AA605E0()
{
  result = qword_27EF85F78;
  if (!qword_27EF85F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF85F78);
  }

  return result;
}

unint64_t sub_24AA60634()
{
  result = qword_27EF85F80;
  if (!qword_27EF85F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF85F80);
  }

  return result;
}

unint64_t sub_24AA60688()
{
  result = qword_27EF85F88[0];
  if (!qword_27EF85F88[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_27EF85F88);
  }

  return result;
}

void sub_24AA606DC(uint64_t a1)
{
  sub_24AA60CA4();
  if (v2 <= 0x3F)
  {
    sub_24AA63758(319, &qword_27EF86018, MEMORY[0x277CE0228], MEMORY[0x277CDF468]);
    if (v3 <= 0x3F)
    {
      v4 = *(a1 + 16);
      swift_checkMetadataState();
      if (v5 <= 0x3F)
      {
        sub_24AA63758(319, &qword_27EF86020, type metadata accessor for CGSize, MEMORY[0x277D83D88]);
        if (v6 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_24AA60804(int *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(sub_24AAB41A4() - 8);
  v7 = 8;
  if (*(v6 + 64) > 8uLL)
  {
    v7 = *(v6 + 64);
  }

  v8 = *(*(a3 + 16) - 8);
  v9 = *(v8 + 84);
  v10 = *(v6 + 80);
  v11 = *(v8 + 80);
  if (v9 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = *(v8 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v13 = v10 & 0xF8;
  v14 = v13 | 7;
  v15 = v7 + 8;
  v16 = v11 + 16;
  if (v12 >= a2)
  {
    goto LABEL_29;
  }

  v17 = ((*(v8 + 64) + ((v16 + ((v15 + ((v13 + 16) & ~v14)) & 0xFFFFFFFFFFFFFFF8)) & ~v11) + 31) & 0xFFFFFFFFFFFFFFF8) + 32;
  v18 = v17 & 0xFFFFFFF8;
  if ((v17 & 0xFFFFFFF8) != 0)
  {
    v19 = 2;
  }

  else
  {
    v19 = a2 - v12 + 1;
  }

  if (v19 >= 0x10000)
  {
    v20 = 4;
  }

  else
  {
    v20 = 2;
  }

  if (v19 < 0x100)
  {
    v20 = 1;
  }

  if (v19 >= 2)
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  if (v21 > 1)
  {
    if (v21 == 2)
    {
      v22 = *(a1 + v17);
      if (!v22)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v22 = *(a1 + v17);
      if (!v22)
      {
        goto LABEL_29;
      }
    }

LABEL_26:
    v24 = v22 - 1;
    if (v18)
    {
      v24 = 0;
      v25 = *a1;
    }

    else
    {
      v25 = 0;
    }

    return v12 + (v25 | v24) + 1;
  }

  if (v21)
  {
    v22 = *(a1 + v17);
    if (v22)
    {
      goto LABEL_26;
    }
  }

LABEL_29:
  v26 = (v15 + ((a1 + v14 + 9) & ~v14)) & 0xFFFFFFFFFFFFFFF8;
  if ((v9 & 0x80000000) != 0)
  {
    v28 = *(v8 + 48);

    return v28((v16 + v26) & ~v11);
  }

  else
  {
    v27 = *(v26 + 8);
    if (v27 >= 0xFFFFFFFF)
    {
      LODWORD(v27) = -1;
    }

    return (v27 + 1);
  }
}

void sub_24AA60A24(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(sub_24AAB41A4() - 8);
  if (*(v8 + 64) <= 8uLL)
  {
    v9 = 8;
  }

  else
  {
    v9 = *(v8 + 64);
  }

  v10 = *(*(a4 + 16) - 8);
  v11 = *(v10 + 84);
  v12 = *(v8 + 80);
  v13 = *(v10 + 80);
  if (v11 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  else
  {
    v14 = *(v10 + 84);
  }

  v15 = v12 & 0xF8 | 7;
  v16 = v9 + 8;
  v17 = ((*(v10 + 64) + ((v13 + 16 + ((v16 + (((v12 & 0xF8) + 16) & ~v15)) & 0xFFFFFFFFFFFFFFF8)) & ~v13) + 31) & 0xFFFFFFFFFFFFFFF8) + 32;
  if (v14 >= a3)
  {
    v20 = 0;
    v21 = a2 - v14;
    if (a2 <= v14)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (((*(v10 + 64) + ((v13 + 16 + ((v16 + (((v12 & 0xF8) + 16) & ~v15)) & 0xFFFFFFF8)) & ~v13) + 31) & 0xFFFFFFF8) == 0xFFFFFFE0)
    {
      v18 = a3 - v14 + 1;
    }

    else
    {
      v18 = 2;
    }

    if (v18 >= 0x10000)
    {
      v19 = 4;
    }

    else
    {
      v19 = 2;
    }

    if (v18 < 0x100)
    {
      v19 = 1;
    }

    if (v18 >= 2)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    v21 = a2 - v14;
    if (a2 <= v14)
    {
LABEL_20:
      if (v20 > 1)
      {
        if (v20 != 2)
        {
          *(a1 + v17) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_36;
        }

        *(a1 + v17) = 0;
      }

      else if (v20)
      {
        *(a1 + v17) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_36;
      }

      if (!a2)
      {
        return;
      }

LABEL_36:
      v24 = ((v16 + ((a1 + v15 + 9) & ~v15)) & 0xFFFFFFFFFFFFFFF8);
      if ((v11 & 0x80000000) != 0)
      {
        v25 = *(v10 + 56);

        v25((v24 + v13 + 16) & ~v13, a2);
      }

      else if ((a2 & 0x80000000) != 0)
      {
        *v24 = a2 & 0x7FFFFFFF;
        v24[1] = 0;
      }

      else
      {
        v24[1] = (a2 - 1);
      }

      return;
    }
  }

  if (v17)
  {
    v22 = 1;
  }

  else
  {
    v22 = v21;
  }

  if (v17)
  {
    v23 = ~v14 + a2;
    bzero(a1, v17);
    *a1 = v23;
  }

  if (v20 > 1)
  {
    if (v20 == 2)
    {
      *(a1 + v17) = v22;
    }

    else
    {
      *(a1 + v17) = v22;
    }
  }

  else if (v20)
  {
    *(a1 + v17) = v22;
  }
}

void sub_24AA60CA4()
{
  if (!qword_27EF86010)
  {
    v0 = sub_24AAB3CF4();
    if (!v1)
    {
      atomic_store(v0, &qword_27EF86010);
    }
  }
}

uint64_t sub_24AA60D38@<X0>(uint64_t a1@<X8>)
{
  v80 = a1;
  v2 = sub_24AAB3CE4();
  v76 = *(v2 - 8);
  v77 = v2;
  v3 = *(v76 + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v73 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v72 = &v61 - v6;
  v7 = sub_24AAB4DB4();
  v74 = *(v7 - 8);
  v75 = v7;
  v8 = *(v74 + 64);
  MEMORY[0x28223BE20](v7);
  v71 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85DA8, &qword_24AAB8C18);
  v10 = *(*(v78 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v78);
  v70 = (&v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v14 = &v61 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF860A8, &qword_24AAB9190);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v61 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF860B0, &qword_24AAB9198);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v61 - v21;
  v23 = sub_24AAB4094();
  v69 = *(v23 - 8);
  v24 = *(v69 + 64);
  MEMORY[0x28223BE20](v23);
  v26 = &v61 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF860B8, &qword_24AAB91A0);
  v27 = *(*(v79 - 8) + 64);
  MEMORY[0x28223BE20](v79);
  v29 = &v61 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF860C0, &qword_24AAB91A8);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30);
  v34 = (&v61 - v33);
  if (*v1)
  {
    *v34 = *v1;
    swift_storeEnumTagMultiPayload();
    sub_24AA63B30();

    return sub_24AAB42B4();
  }

  v61 = v23;
  v62 = v14;
  v63 = v22;
  v64 = v34;
  v65 = v32;
  v66 = v29;
  v36 = v77;
  v67 = v19;
  v68 = v18;
  v37 = type metadata accessor for ControlPlatter();
  v38 = v1 + *(v37 + 24);
  v39 = *v38;
  if (v38[8] == 1)
  {
    v40 = v36;
    v41 = v63;
    if ((v39 & 1) == 0)
    {
LABEL_5:
      v42 = [objc_opt_self() quaternarySystemFillColor];
      v43 = sub_24AAB49C4();
      v44 = v1 + *(v37 + 20);
      v45 = v72;
      sub_24AA63250(&qword_27EF85290, &qword_24AAB9020, MEMORY[0x277CDF3E0], v72);
      v46 = v76;
      v47 = v73;
      (*(v76 + 104))(v73, *MEMORY[0x277CDF3C0], v40);
      LOBYTE(v44) = sub_24AAB3CD4();
      v48 = *(v46 + 8);
      v48(v47, v40);
      v48(v45, v40);
      v49 = v74;
      v50 = MEMORY[0x277CE13B8];
      if ((v44 & 1) == 0)
      {
        v50 = MEMORY[0x277CE13B0];
      }

      v51 = v71;
      v52 = v75;
      (*(v74 + 104))(v71, *v50, v75);
      v53 = v70;
      (*(v49 + 32))(v70 + *(v78 + 36), v51, v52);
      *v53 = v43;
      v54 = &qword_27EF85DA8;
      v55 = &qword_24AAB8C18;
      v56 = v62;
      sub_24AA1A25C(v53, v62, &qword_27EF85DA8, &qword_24AAB8C18);
      sub_24AA1695C(v56, v68, &qword_27EF85DA8, &qword_24AAB8C18);
      swift_storeEnumTagMultiPayload();
      sub_24AA16A68(&qword_27EF860C8, &qword_27EF860B0, &qword_24AAB9198);
      sub_24AA5F184();
      v57 = v66;
      sub_24AAB42B4();
      v58 = v56;
      goto LABEL_10;
    }
  }

  else
  {

    sub_24AAB5134();
    v59 = sub_24AAB44B4();
    sub_24AAB3A54();

    sub_24AAB4084();
    swift_getAtKeyPath();
    sub_24AA630E4(v39, 0);
    (*(v69 + 8))(v26, v61);
    v40 = v36;
    v41 = v63;
    if (v81 != 1)
    {
      goto LABEL_5;
    }
  }

  sub_24AAB2D44();
  v60 = v68;
  *(v41 + *(v67 + 56)) = 256;
  v54 = &qword_27EF860B0;
  v55 = &qword_24AAB9198;
  sub_24AA1695C(v41, v60, &qword_27EF860B0, &qword_24AAB9198);
  swift_storeEnumTagMultiPayload();
  sub_24AA16A68(&qword_27EF860C8, &qword_27EF860B0, &qword_24AAB9198);
  sub_24AA5F184();
  v57 = v66;
  sub_24AAB42B4();
  v58 = v41;
LABEL_10:
  sub_24AA169C4(v58, v54, v55);
  sub_24AA1695C(v57, v64, &qword_27EF860B8, &qword_24AAB91A0);
  swift_storeEnumTagMultiPayload();
  sub_24AA63B30();
  sub_24AAB42B4();
  return sub_24AA169C4(v57, &qword_27EF860B8, &qword_24AAB91A0);
}

uint64_t sub_24AA61508()
{
  sub_24AA63450();
  sub_24AAB40A4();
  return v1;
}

uint64_t sub_24AA61544@<X0>(_BYTE *a1@<X8>)
{
  sub_24AA63450();
  result = sub_24AAB40A4();
  *a1 = v3;
  return result;
}

uint64_t sub_24AA61594(char *a1)
{
  v2 = *a1;
  sub_24AA63450();
  return sub_24AAB40B4();
}

uint64_t sub_24AA615F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v167 = a1;
  v168 = a3;
  v4 = *(a2 + 24);
  v142 = *(a2 + 16);
  v143 = v4;
  sub_24AAB3E04();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF852F0, &unk_24AAB8FA0);
  sub_24AAB3EE4();
  v5 = sub_24AAB5274();
  v165 = *(v5 - 8);
  v6 = *(v165 + 64);
  MEMORY[0x28223BE20](v5);
  v164 = v124 - v7;
  v163 = sub_24AAB4094();
  v162 = *(v163 - 8);
  v8 = *(v162 + 64);
  MEMORY[0x28223BE20](v163);
  v161 = v124 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85258, &qword_24AAB6C00);
  v11 = *(v10 - 8);
  *&v127 = v10 - 8;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v125 = v124 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86028, &qword_24AAB8FB0);
  v15 = *(v14 - 8);
  *&v132 = v14 - 8;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v128 = v124 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86030, &qword_24AAB8FB8);
  v19 = *(v18 - 8);
  v133 = v18 - 8;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v129 = v124 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86038, &qword_24AAB8FC0);
  v23 = *(v22 - 8);
  v130 = v22 - 8;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v126 = v124 - v25;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86040, &qword_24AAB8FC8);
  v26 = *(*(v137 - 8) + 64);
  MEMORY[0x28223BE20](v137);
  v139 = v124 - v27;
  sub_24AAB3D14();
  v28 = sub_24AAB3EE4();
  v150 = *(v28 - 8);
  v29 = *(v150 + 64);
  MEMORY[0x28223BE20](v28);
  v135 = v124 - v30;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF84E48, &qword_24AAB8FD0);
  v31 = sub_24AAB3EE4();
  v153 = *(v31 - 8);
  v32 = *(v153 + 64);
  MEMORY[0x28223BE20](v31);
  v169 = v124 - v33;
  v34 = sub_24AAB3EE4();
  v157 = *(v34 - 8);
  v35 = *(v157 + 64);
  MEMORY[0x28223BE20](v34);
  v154 = v124 - v36;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF86048, &qword_24AAB8FD8);
  v37 = sub_24AAB3EE4();
  v158 = *(v37 - 8);
  v38 = *(v158 + 64);
  MEMORY[0x28223BE20](v37);
  v156 = v124 - v39;
  WitnessTable = swift_getWitnessTable();
  v41 = sub_24AA16A68(&qword_27EF852E8, &qword_27EF852F0, &unk_24AAB8FA0);
  v183 = WitnessTable;
  v184 = v41;
  v182 = swift_getWitnessTable();
  v42 = swift_getWitnessTable();
  v166 = v5;
  v148 = v42;
  sub_24AAB3F34();
  v43 = sub_24AAB3EE4();
  v149 = *(v43 - 8);
  v44 = *(v149 + 64);
  MEMORY[0x28223BE20](v43);
  v147 = v124 - v45;
  v46 = sub_24AA62D14();
  v124[0] = v46;
  v47 = swift_getWitnessTable();
  v180 = v46;
  v181 = v47;
  v151 = v28;
  v48 = swift_getWitnessTable();
  v49 = sub_24AA16A68(&qword_27EF84E40, &qword_27EF84E48, &qword_24AAB8FD0);
  v124[1] = v48;
  v178 = v48;
  v179 = v49;
  v155 = v31;
  v131 = swift_getWitnessTable();
  v176 = v131;
  v177 = MEMORY[0x277CDF900];
  v159 = v34;
  v50 = swift_getWitnessTable();
  v51 = sub_24AA16A68(&qword_27EF86070, &qword_27EF86048, &qword_24AAB8FD8);
  v134 = v50;
  v174 = v50;
  v175 = v51;
  v160 = v37;
  v52 = swift_getWitnessTable();
  v53 = swift_getWitnessTable();
  v136 = v52;
  v172 = v52;
  v173 = v53;
  v54 = swift_getWitnessTable();
  v152 = v43;
  *&v185 = v43;
  *(&v185 + 1) = v54;
  v141 = v54;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v144 = *(OpaqueTypeMetadata2 - 8);
  v55 = *(v144 + 64);
  v56 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v138 = v124 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v56);
  v140 = v124 - v58;
  v59 = v125;
  sub_24AAB43B4();
  v60 = v146;
  v61 = (v146 + *(a2 + 40));
  v62 = v61[1];
  *(v59 + *(v127 + 44)) = v62;
  v63 = (v60 + *(a2 + 48));
  if (!*(v63 + 16))
  {
    v64 = v63[1];
    v65 = *v63;
  }

  sub_24AAB4D44();
  v66 = v60;
  sub_24AAB3D54();
  v67 = v128;
  sub_24AA1A25C(v59, v128, &qword_27EF85258, &qword_24AAB6C00);
  v68 = (v67 + *(v132 + 44));
  v69 = v186;
  v70 = v187;
  *v68 = v185;
  v68[1] = v69;
  v68[2] = v70;
  v71 = (v66 + *(a2 + 52));
  v72 = v71[1];
  v132 = *v71;
  v127 = v72;
  v73 = sub_24AAB44D4();
  v74 = v67;
  v75 = v129;
  sub_24AA1A25C(v74, v129, &qword_27EF86028, &qword_24AAB8FB0);
  v76 = v75 + *(v133 + 44);
  *v76 = v73;
  *(v76 + 24) = v127;
  *(v76 + 8) = v132;
  *(v76 + 40) = 0;
  v77 = *v61;
  v78 = v126;
  v79 = &v126[*(v130 + 44)];
  *v79 = *v61;
  v80 = type metadata accessor for ControlPlatter();
  v81 = *(v80 + 20);
  *&v79[v81] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85290, &qword_24AAB9020);
  swift_storeEnumTagMultiPayload();
  v82 = &v79[*(v80 + 24)];
  *v82 = swift_getKeyPath();
  v82[8] = 0;
  swift_retain_n();
  v83 = sub_24AAB4D44();
  v85 = v84;
  v86 = &v79[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF85298, &unk_24AAB8FE0) + 36)];
  *v86 = v83;
  v86[1] = v85;
  sub_24AA1A25C(v75, v78, &qword_27EF86030, &qword_24AAB8FB8);
  v87 = sub_24AAB43C4();
  v88 = sub_24AAB4D44();
  v90 = v89;
  v91 = v139;
  sub_24AA1A25C(v78, v139, &qword_27EF86038, &qword_24AAB8FC0);
  v92 = v91 + *(v137 + 36);
  *v92 = v87 & 1;
  *(v92 + 8) = v88;
  *(v92 + 16) = v90;
  v167 = a2;
  v93 = v66 + *(a2 + 44);
  v94 = v135;
  sub_24AAB4994();
  sub_24AA169C4(v91, &qword_27EF86040, &qword_24AAB8FC8);
  v95 = *v66;
  v96 = *(v66 + 8);
  if (v96 == 1)
  {
    v97 = *v66;
    v98 = v163;
    v99 = v162;
  }

  else
  {
    v100 = *v66;

    sub_24AAB5134();
    v101 = sub_24AAB44B4();
    sub_24AAB3A54();

    v102 = v161;
    sub_24AAB4084();
    swift_getAtKeyPath();
    sub_24AA630E4(v95, 0);
    v99 = v162;
    v98 = v163;
    (*(v162 + 8))(v102, v163);
  }

  v103 = v151;
  sub_24AAB4934();
  (*(v150 + 8))(v94, v103);
  if (!v96)
  {

    sub_24AAB5134();
    v104 = v99;
    v105 = sub_24AAB44B4();
    sub_24AAB3A54();

    v106 = v161;
    sub_24AAB4084();
    swift_getAtKeyPath();
    sub_24AA630E4(v95, 0);
    (*(v104 + 8))(v106, v98);
  }

  v107 = v154;
  v108 = v155;
  v109 = v169;
  sub_24AAB4904();
  (*(v153 + 8))(v109, v108);
  v170 = v77;
  v171 = v62;
  sub_24AA630F0();

  v110 = v156;
  v111 = v159;
  sub_24AAB4984();

  (*(v157 + 8))(v107, v111);
  v112 = v164;
  sub_24AA62658(v167, v164);
  sub_24AAB4D44();
  v113 = v147;
  v114 = v160;
  v115 = v166;
  sub_24AAB4924();
  (*(v165 + 8))(v112, v115);
  (*(v158 + 8))(v110, v114);
  v116 = v138;
  v117 = v152;
  v118 = v141;
  sub_24AAB4794();
  (*(v149 + 8))(v113, v117);
  v170 = v117;
  v171 = v118;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v120 = v140;
  v121 = OpaqueTypeMetadata2;
  sub_24AA8373C(v116, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v122 = *(v144 + 8);
  v122(v116, v121);
  sub_24AA8373C(v120, v121, OpaqueTypeConformance2);
  return (v122)(v120, v121);
}

uint64_t sub_24AA62658@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a2;
  v4 = *(a1 + 16);
  v50[1] = *(a1 + 24);
  v50[2] = v4;
  v5 = sub_24AAB3E04();
  v52 = *(v5 - 8);
  v6 = *(v52 + 64);
  MEMORY[0x28223BE20](v5);
  v51 = v50 - v7;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF852F0, &unk_24AAB8FA0);
  v59 = v5;
  v8 = sub_24AAB3EE4();
  v56 = *(v8 - 8);
  v9 = *(v56 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v54 = v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v53 = v50 - v12;
  v13 = sub_24AAB41A4();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = v50 - v19;
  v55 = sub_24AAB5274();
  v58 = *(v55 - 8);
  v21 = *(v58 + 64);
  v22 = MEMORY[0x28223BE20](v55);
  v24 = v50 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v57 = v50 - v25;
  v26 = v2;
  v27 = v2 + *(a1 + 36);
  sub_24AA63250(&qword_27EF84DF0, &qword_24AAB6650, MEMORY[0x277CE0228], v20);
  (*(v14 + 104))(v18, *MEMORY[0x277CE0220], v13);
  LOBYTE(v27) = sub_24AAB3CD4();
  v28 = *(v14 + 8);
  v28(v18, v13);
  v28(v20, v13);
  if (v27)
  {
    v29 = v26 + *(a1 + 44);
    v30 = v51;
    sub_24AAB4B44();
    v31 = [objc_opt_self() secondaryLabelColor];
    v63 = sub_24AAB49C4();
    v32 = v59;
    WitnessTable = swift_getWitnessTable();
    v34 = v54;
    sub_24AAB4844();

    (*(v52 + 8))(v30, v32);
    v35 = sub_24AA16A68(&qword_27EF852E8, &qword_27EF852F0, &unk_24AAB8FA0);
    v61 = WitnessTable;
    v62 = v35;
    v36 = swift_getWitnessTable();
    v37 = v53;
    sub_24AA8373C(v34, v8, v36);
    v38 = v56;
    v39 = *(v56 + 8);
    v39(v34, v8);
    sub_24AA8373C(v37, v8, v36);
    v39(v37, v8);
    (*(v38 + 32))(v24, v34, v8);
    (*(v38 + 56))(v24, 0, 1, v8);
  }

  else
  {
    (*(v56 + 56))(v24, 1, 1, v8);
    v40 = swift_getWitnessTable();
    v41 = sub_24AA16A68(&qword_27EF852E8, &qword_27EF852F0, &unk_24AAB8FA0);
    v67 = v40;
    v68 = v41;
    swift_getWitnessTable();
  }

  v43 = v57;
  v42 = v58;
  v44 = v55;
  (*(v58 + 16))(v57, v24, v55);
  v45 = *(v42 + 8);
  v45(v24, v44);
  v46 = swift_getWitnessTable();
  v47 = sub_24AA16A68(&qword_27EF852E8, &qword_27EF852F0, &unk_24AAB8FA0);
  v65 = v46;
  v66 = v47;
  v64 = swift_getWitnessTable();
  v48 = swift_getWitnessTable();
  sub_24AA8373C(v43, v44, v48);
  return (v45)(v43, v44);
}

unint64_t sub_24AA62D14()
{
  result = qword_27EF86050;
  if (!qword_27EF86050)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF86040, &qword_24AAB8FC8);
    sub_24AA62DCC();
    sub_24AA16A68(&qword_27EF85300, &qword_27EF85308, &qword_24AAB6CB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF86050);
  }

  return result;
}

unint64_t sub_24AA62DCC()
{
  result = qword_27EF86058;
  if (!qword_27EF86058)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF86038, &qword_24AAB8FC0);
    sub_24AA62E84();
    sub_24AA16A68(&qword_27EF852F8, &qword_27EF85298, &unk_24AAB8FE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF86058);
  }

  return result;
}

unint64_t sub_24AA62E84()
{
  result = qword_27EF86060;
  if (!qword_27EF86060)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF86030, &qword_24AAB8FB8);
    sub_24AA62F10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF86060);
  }

  return result;
}

unint64_t sub_24AA62F10()
{
  result = qword_27EF86068;
  if (!qword_27EF86068)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF86028, &qword_24AAB8FB0);
    sub_24AA19F34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF86068);
  }

  return result;
}

unint64_t sub_24AA62F9C()
{
  result = qword_27EF852E0;
  if (!qword_27EF852E0)
  {
    sub_24AAB43A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF852E0);
  }

  return result;
}

uint64_t type metadata accessor for ControlPlatter()
{
  result = qword_27EF86090;
  if (!qword_27EF86090)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24AA63048@<X0>(_BYTE *a1@<X8>)
{
  sub_24AA63450();
  result = sub_24AAB40A4();
  *a1 = v3;
  return result;
}

uint64_t sub_24AA63098(char *a1)
{
  v2 = *a1;
  sub_24AA63450();
  return sub_24AAB40B4();
}

uint64_t sub_24AA630E4(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

unint64_t sub_24AA630F0()
{
  result = qword_27EF86078;
  if (!qword_27EF86078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF86078);
  }

  return result;
}

uint64_t sub_24AA63144@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  if (result)
  {
    sub_24AAB4A44();
    v3 = sub_24AAB4A54();

    sub_24AAB3D94();
    sub_24AAB3D84();
    sub_24AAB4D84();
    sub_24AAB4D74();

    sub_24AAB3DB4();

    v4 = sub_24AAB3D64();
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  *a2 = v3;
  a2[1] = v4;
  return result;
}

uint64_t sub_24AA63250@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = v4;
  v10 = sub_24AAB4094();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = (&v23 - v17);
  sub_24AA1695C(v8, &v23 - v17, a1, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = a3(0);
    return (*(*(v19 - 8) + 32))(a4, v18, v19);
  }

  else
  {
    v21 = *v18;
    sub_24AAB5134();
    v22 = sub_24AAB44B4();
    sub_24AAB3A54();

    sub_24AAB4084();
    swift_getAtKeyPath();

    return (*(v11 + 8))(v14, v10);
  }
}

unint64_t sub_24AA63450()
{
  result = qword_27EF86080;
  if (!qword_27EF86080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF86080);
  }

  return result;
}

uint64_t sub_24AA63508(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86088, qword_24AABD4A0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

void *sub_24AA635E4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF86088, qword_24AABD4A0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24AA63694()
{
  sub_24AA63758(319, &qword_27EF860A0, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_24AA60CA4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24AA63758(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_24AA637BC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF86040, &qword_24AAB8FC8);
  sub_24AAB3D14();
  sub_24AAB3EE4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF84E48, &qword_24AAB8FD0);
  sub_24AAB3EE4();
  sub_24AAB3EE4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF86048, &qword_24AAB8FD8);
  sub_24AAB3EE4();
  sub_24AAB3E04();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF852F0, &unk_24AAB8FA0);
  sub_24AAB3EE4();
  sub_24AAB5274();
  swift_getWitnessTable();
  sub_24AA16A68(&qword_27EF852E8, &qword_27EF852F0, &unk_24AAB8FA0);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24AAB3F34();
  sub_24AAB3EE4();
  sub_24AA62D14();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24AA16A68(&qword_27EF84E40, &qword_27EF84E48, &qword_24AAB8FD0);
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_24AA16A68(&qword_27EF86070, &qword_27EF86048, &qword_24AAB8FD8);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_24AA63B30()
{
  result = qword_27EF860D0;
  if (!qword_27EF860D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF860B8, &qword_24AAB91A0);
    sub_24AA16A68(&qword_27EF860C8, &qword_27EF860B0, &qword_24AAB9198);
    sub_24AA5F184();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF860D0);
  }

  return result;
}

unint64_t sub_24AA63BEC()
{
  result = qword_27EF860D8;
  if (!qword_27EF860D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF860E0, &unk_24AAB91B0);
    sub_24AA5F254();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF860D8);
  }

  return result;
}