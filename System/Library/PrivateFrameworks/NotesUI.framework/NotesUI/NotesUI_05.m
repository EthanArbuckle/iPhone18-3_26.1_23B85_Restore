uint64_t sub_1D4317E4C()
{

  return MEMORY[0x1EEE6DFA0](sub_1D4317F64, 0, 0);
}

uint64_t sub_1D4317F64()
{
  v1 = *(v0 + 96);

  v3 = *(v0 + 16);
  v2 = *(v0 + 24);

  v4 = *(v0 + 8);

  return v4(v3, v2);
}

uint64_t sub_1D4317FF0(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9F68);
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7C9F70);
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D4318104, 0, 0);
}

uint64_t sub_1D4318104()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = swift_allocObject();
  v0[10] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = v2;
  v5 = v1;
  v6 = swift_task_alloc();
  v0[11] = v6;
  *v6 = v0;
  v6[1] = sub_1D43181F4;
  v7 = v0[9];
  v8 = v0[7];

  return MEMORY[0x1EEE233F8](v7, sub_1D43188C4, v3, v8);
}

void sub_1D43181F4()
{

  if (v0)
  {
  }

  else
  {

    MEMORY[0x1EEE6DFA0](sub_1D4318330, 0, 0);
  }
}

uint64_t sub_1D4318330()
{
  v1 = v0[8];
  v2 = v0[4];
  v3 = v0[5];
  sub_1D417CF94(v0[9], v1, &unk_1EC7C9F70);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_1D41769C4(v0[9], &unk_1EC7C9F70);
    sub_1D41769C4(v0[8], &unk_1EC7C9F70);

    v4 = v0[1];

    return v4();
  }

  else
  {
    (*(v0[5] + 32))(v0[6], v0[8], v0[4]);
    v6 = swift_task_alloc();
    v0[12] = v6;
    *v6 = v0;
    v6[1] = sub_1D43184BC;
    v7 = v0[6];

    return sub_1D4317AF8(v7);
  }
}

uint64_t sub_1D43184BC(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 104) = a1;
  *(v3 + 112) = a2;

  return MEMORY[0x1EEE6DFA0](sub_1D43185BC, 0, 0);
}

uint64_t sub_1D43185BC()
{
  v1 = v0[13];
  v2 = v0[14];
  v4 = v0[2];
  v3 = v0[3];
  v5 = swift_allocObject();
  v0[15] = v5;
  v5[2] = v4;
  v5[3] = v3;
  v5[4] = v1;
  v5[5] = v2;
  v6 = v4;
  v7 = v3;
  v8 = swift_task_alloc();
  v0[16] = v8;
  *v8 = v0;
  v8[1] = sub_1D43186BC;
  v9 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE233F8](v8, sub_1D43188E0, v5, v9);
}

void sub_1D43186BC()
{

  if (v0)
  {
  }

  else
  {

    MEMORY[0x1EEE6DFA0](sub_1D43187F8, 0, 0);
  }
}

uint64_t sub_1D43187F8()
{
  (*(v0[5] + 8))(v0[6], v0[4]);
  sub_1D41769C4(v0[9], &unk_1EC7C9F70);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1D4318944(uint64_t a1, uint64_t a2)
{
  v4 = _s13PrerequisitesVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D43189A8(uint64_t a1, uint64_t a2)
{
  v4 = _s13PrerequisitesVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D4318A0C(uint64_t a1)
{
  v2 = _s13PrerequisitesVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D4318B20()
{
  result = qword_1EC7C9FC8;
  if (!qword_1EC7C9FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7C9FC8);
  }

  return result;
}

uint64_t block_copy_helper_154(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t _s8OCRErrorOwet(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *_s8OCRErrorOwst(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

void sub_1D4318CC4()
{
  sub_1D4318D68();
  if (v0 <= 0x3F)
  {
    sub_1D4318DFC();
    if (v1 <= 0x3F)
    {
      sub_1D4419AB4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1D4318D68()
{
  if (!qword_1EC7CA020)
  {
    sub_1D44195B4();
    sub_1D43160EC(&qword_1EDE32AB8, MEMORY[0x1E69782C0]);
    v0 = sub_1D4419A84();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC7CA020);
    }
  }
}

void sub_1D4318DFC()
{
  if (!qword_1EC7CA028)
  {
    sub_1D4419664();
    v0 = sub_1D4419EE4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC7CA028);
    }
  }
}

unint64_t sub_1D4318E58()
{
  result = qword_1EC7CA030;
  if (!qword_1EC7CA030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7CA030);
  }

  return result;
}

id ICCreateNoteAction.perform(withTitle:contents:pinned:container:)(uint64_t a1, void *a2, uint64_t a3, char a4, uint64_t a5)
{
  v24 = a5;
  v23[1] = a1;
  v25[1] = *MEMORY[0x1E69E9840];
  v8 = sub_1D4417014();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v23 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7CA040);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = v23 - v16;
  sub_1D431916C(a3, v23 - v16);
  v18 = 0;
  if ((*(v9 + 48))(v17, 1, v8) != 1)
  {
    (*(v9 + 32))(v14, v17, v8);
    sub_1D43191DC();
    (*(v9 + 16))(v12, v14, v8);
    v18 = sub_1D441A3B4();
    (*(v9 + 8))(v14, v8);
  }

  if (a2)
  {
    a2 = sub_1D4419C14();
  }

  v25[0] = 0;
  v19 = [v23[2] performWithTitle:a2 contents:v18 pinned:a4 & 1 container:v24 error:v25];

  if (v19)
  {
    v20 = v25[0];
  }

  else
  {
    v21 = v25[0];
    sub_1D4417104();

    swift_willThrow();
  }

  return v19;
}

uint64_t sub_1D431916C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7CA040);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D43191DC()
{
  result = qword_1EDE33A28;
  if (!qword_1EDE33A28)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDE33A28);
  }

  return result;
}

id ICCreateNoteAction.perform(withTitle:contents:pinned:container:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v6 = v5;
  v15[1] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v10 = sub_1D4419C14();
  }

  else
  {
    v10 = 0;
  }

  v15[0] = 0;
  v11 = [v6 performWithTitle:v10 contents:a3 pinned:a4 & 1 container:a5 error:v15];

  if (v11)
  {
    v12 = v15[0];
  }

  else
  {
    v13 = v15[0];
    sub_1D4417104();

    swift_willThrow();
  }

  return v11;
}

uint64_t type metadata accessor for CalculateErrorViewController()
{
  result = qword_1EC7CA050;
  if (!qword_1EC7CA050)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_1D43193AC(uint64_t a1)
{
  v2 = *(a1 + 48);
  v12 = *(a1 + 32);
  v13 = v2;
  v14 = *(a1 + 64);
  v3 = *(a1 + 16);
  v10 = *a1;
  v11 = v3;
  sub_1D4319714(a1, v9);
  v4 = sub_1D4418A84();
  [v4 setModalPresentationStyle_];
  v5 = [v4 presentationController];

  if (v5)
  {
    [v5 setDelegate_];
  }

  v6 = [objc_allocWithZone(MEMORY[0x1E69DD060]) initWithTarget:v4 action:sel_tap_];
  result = [v4 view];
  if (result)
  {
    v8 = result;
    sub_1D4319770(a1);
    [v8 addGestureRecognizer_];

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1D431952C(void *a1)
{
  v8.receiver = a1;
  v8.super_class = type metadata accessor for CalculateErrorViewController();
  v1 = v8.receiver;
  objc_msgSendSuper2(&v8, sel_viewDidLayoutSubviews);
  v2 = [v1 view];
  if (v2)
  {
    v3 = v2;
    [v2 intrinsicContentSize];
    v5 = v4;
    v7 = v6;

    [v1 setPreferredContentSize_];
  }

  else
  {
    __break(1u);
  }
}

id sub_1D43195F8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CalculateErrorViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1D4319630()
{

  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

void sub_1D4319688()
{

  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

uint64_t sub_1D43196E4(int a1, int a2, int a3, id a4)
{
  if ([a4 ic_hasCompactHeight])
  {
    return -2;
  }

  else
  {
    return -1;
  }
}

uint64_t static Font.systemSingleLineA(_:)()
{
  v0 = sub_1D4418D94();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9E18);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - v5;
  v7 = sub_1D4418DC4();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  sub_1D4418E04();
  sub_1D4319978(v6);
  (*(v1 + 104))(v3, *MEMORY[0x1E6980DE0], v0);
  v8 = sub_1D4418DA4();

  (*(v1 + 8))(v3, v0);
  return v8;
}

uint64_t sub_1D4319978(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9E18);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1D4319B34()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LiveActivitySceneDelegate();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for LiveActivitySceneDelegate()
{
  result = qword_1EC7CA1A0;
  if (!qword_1EC7CA1A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D4319C4C()
{
  result = sub_1D44181B4();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

id sub_1D4319CE8(uint64_t a1, char *a2)
{
  v4 = sub_1D431A238();
  *&a2[OBJC_IVAR____TtC7NotesUI46AudioRecordingLiveActivityBannerViewController____lazy_storage___waveformView] = 0;
  v5 = &a2[OBJC_IVAR____TtC7NotesUI46AudioRecordingLiveActivityBannerViewController____lazy_storage___emptyTimeCodeString];
  *v5 = 0;
  *(v5 + 1) = 0;
  *&a2[OBJC_IVAR____TtC7NotesUI40AudioRecordingLiveActivityViewController_recordingFinishedTask] = 0;
  *&a2[OBJC_IVAR____TtC7NotesUI40AudioRecordingLiveActivityViewController____lazy_storage___timeLabel] = 0;
  *&a2[OBJC_IVAR____TtC7NotesUI40AudioRecordingLiveActivityViewController____lazy_storage___stopButton] = 0;
  v6 = &a2[OBJC_IVAR____TtC7NotesUI40AudioRecordingLiveActivityViewController_recordingManager];
  *v6 = a1;
  *(v6 + 1) = v4;
  v8.receiver = a2;
  v8.super_class = type metadata accessor for AudioRecordingLiveActivityViewController();
  return objc_msgSendSuper2(&v8, sel_initWithNibName_bundle_, 0, 0);
}

id sub_1D4319D90(uint64_t a1, char *a2)
{
  v4 = sub_1D431A238();
  *&a2[OBJC_IVAR____TtC7NotesUI41AudioRecordingDynamicIslandViewController_activeLayoutMode] = 0;
  *&a2[OBJC_IVAR____TtC7NotesUI41AudioRecordingDynamicIslandViewController_activeConstraints] = MEMORY[0x1E69E7CC0];
  *&a2[OBJC_IVAR____TtC7NotesUI41AudioRecordingDynamicIslandViewController____lazy_storage___leadingWaveformView] = 0;
  *&a2[OBJC_IVAR____TtC7NotesUI41AudioRecordingDynamicIslandViewController____lazy_storage___minimalWaveformView] = 0;
  *&a2[OBJC_IVAR____TtC7NotesUI41AudioRecordingDynamicIslandViewController____lazy_storage___minimalCheckmarkView] = 0;
  sub_1D431A290();
  sub_1D441A1C4();
  *&a2[OBJC_IVAR____TtC7NotesUI40AudioRecordingLiveActivityViewController_recordingFinishedTask] = 0;
  *&a2[OBJC_IVAR____TtC7NotesUI40AudioRecordingLiveActivityViewController____lazy_storage___timeLabel] = 0;
  *&a2[OBJC_IVAR____TtC7NotesUI40AudioRecordingLiveActivityViewController____lazy_storage___stopButton] = 0;
  v5 = &a2[OBJC_IVAR____TtC7NotesUI40AudioRecordingLiveActivityViewController_recordingManager];
  *v5 = a1;
  *(v5 + 1) = v4;
  v7.receiver = a2;
  v7.super_class = type metadata accessor for AudioRecordingLiveActivityViewController();
  return objc_msgSendSuper2(&v7, sel_initWithNibName_bundle_, 0, 0);
}

void sub_1D4319E88(void *a1)
{
  v2 = v1;
  sub_1D4417F14();
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    v5 = v4;
    v6 = a1;
    v7 = sub_1D44181A4();
    v8 = sub_1D441A184();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1D4171000, v7, v8, "connecting scene", v9, 2u);
      MEMORY[0x1DA6D8690](v9, -1, -1);
    }

    v10 = v6;
    v11 = [v5 SBUI_isHostedBySystemAperture];
    if (qword_1EDE32ED8 != -1)
    {
      swift_once();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_1D4418364();

    if (v31)
    {
      if (!v11)
      {
        v20 = objc_allocWithZone(sub_1D4417EE4());
        sub_1D4417ED4();
        sub_1D4417EF4();
        v21 = [objc_opt_self() systemBlackColor];
        v22 = [v21 colorWithAlphaComponent_];

        sub_1D4417F04();
        v23 = [objc_allocWithZone(MEMORY[0x1E69DD2E8]) initWithWindowScene_];

        v24 = OBJC_IVAR____TtC7NotesUI25LiveActivitySceneDelegate_window;
        v25 = *(v2 + OBJC_IVAR____TtC7NotesUI25LiveActivitySceneDelegate_window);
        *(v2 + OBJC_IVAR____TtC7NotesUI25LiveActivitySceneDelegate_window) = v23;
        v26 = v23;

        if (v26)
        {
          v27 = objc_allocWithZone(type metadata accessor for AudioRecordingLiveActivityBannerViewController());
          v28 = sub_1D4319CE8(v31, v27);
          [v26 setRootViewController_];
        }

        v29 = *(v2 + v24);
        [v29 makeKeyAndVisible];

        goto LABEL_18;
      }

      v12 = objc_allocWithZone(type metadata accessor for AudioRecordingDynamicIslandViewController());
      v13 = v31;
      v14 = sub_1D4319D90(v13, v12);
      v15 = *(v2 + OBJC_IVAR____TtC7NotesUI25LiveActivitySceneDelegate_systemApertureElementProvider);
      *(v2 + OBJC_IVAR____TtC7NotesUI25LiveActivitySceneDelegate_systemApertureElementProvider) = v14;
      v16 = v14;

      v17 = v16;
      [v5 setSystemApertureElementViewControllerProvider_];
    }

LABEL_18:
    return;
  }

  oslog = sub_1D44181A4();
  v18 = sub_1D441A184();
  if (os_log_type_enabled(oslog, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_1D4171000, oslog, v18, "not an activity scene", v19, 2u);
    MEMORY[0x1DA6D8690](v19, -1, -1);
  }
}

unint64_t sub_1D431A238()
{
  result = qword_1EC7CA1B0;
  if (!qword_1EC7CA1B0)
  {
    type metadata accessor for AudioRecordingManager(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7CA1B0);
  }

  return result;
}

unint64_t sub_1D431A290()
{
  result = qword_1EC7CA1B8;
  if (!qword_1EC7CA1B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC7CA1B8);
  }

  return result;
}

uint64_t LockedNotesWelcomeView.configuration.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[3];
  v9 = v1[2];
  v10 = v2;
  v11 = v1[4];
  v3 = v11;
  v4 = v1[1];
  v8[0] = *v1;
  v5 = v8[0];
  v8[1] = v4;
  a1[2] = v9;
  a1[3] = v2;
  a1[4] = v3;
  *a1 = v5;
  a1[1] = v4;
  return sub_1D431A328(v8, &v7);
}

__n128 LockedNotesWelcomeView.init(configuration:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v2;
  *(a2 + 64) = *(a1 + 64);
  result = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = result;
  return result;
}

uint64_t LockedNotesWelcomeView.body.getter@<X0>(double (**a1)@<D0>(uint64_t a1@<X8>)@<X8>)
{
  v3 = v1[3];
  v10[2] = v1[2];
  v10[3] = v3;
  v10[4] = v1[4];
  v4 = v1[1];
  v10[0] = *v1;
  v10[1] = v4;
  v5 = swift_allocObject();
  v6 = v1[3];
  *(v5 + 3) = v1[2];
  *(v5 + 4) = v6;
  *(v5 + 5) = v1[4];
  v7 = v1[1];
  *(v5 + 1) = *v1;
  *(v5 + 2) = v7;
  *a1 = sub_1D431A584;
  a1[1] = v5;
  return sub_1D431A58C(v10, &v9);
}

__n128 sub_1D431A408@<Q0>(__int128 *a1@<X1>, uint64_t a2@<X8>)
{
  v11 = a1[2];
  v12 = a1[3];
  v13 = a1[4];
  v9 = *a1;
  v10 = a1[1];
  KeyPath = swift_getKeyPath();
  sub_1D431A58C(a1, v15);
  sub_1D4419364();
  sub_1D4418694();
  *&v14[55] = v15[3];
  *&v14[71] = v15[4];
  *&v14[87] = v15[5];
  *&v14[103] = v15[6];
  *&v14[7] = v15[0];
  *&v14[23] = v15[1];
  *&v14[39] = v15[2];
  v5 = swift_getKeyPath();
  sub_1D4418574();
  v7 = v6 >= 450.0;
  *(a2 + 32) = v11;
  *(a2 + 48) = v12;
  *(a2 + 64) = v13;
  *a2 = v9;
  *(a2 + 16) = v10;
  *(a2 + 80) = KeyPath;
  *(a2 + 88) = 0;
  *(a2 + 137) = *&v14[48];
  *(a2 + 121) = *&v14[32];
  *(a2 + 105) = *&v14[16];
  *(a2 + 89) = *v14;
  result = *&v14[80];
  *(a2 + 200) = *&v14[111];
  *(a2 + 208) = v5;
  *(a2 + 185) = *&v14[96];
  *(a2 + 169) = *&v14[80];
  *(a2 + 153) = *&v14[64];
  *(a2 + 216) = v7;
  return result;
}

uint64_t sub_1D431A5C4()
{
  sub_1D431FB38();
  sub_1D44188C4();
  return v1;
}

uint64_t sub_1D431A600@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  v32 = sub_1D44188F4();
  v31 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v3 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D4418BE4();
  v27 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA1C8);
  v25 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v24 - v8;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA1D0);
  v28 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v11 = &v24 - v10;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA1D8);
  v30 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v13 = &v24 - v12;
  v14 = v1[3];
  v39[2] = v1[2];
  v39[3] = v14;
  v40[0] = v1[4];
  *(v40 + 9) = *(v1 + 73);
  v15 = v1[1];
  v39[0] = *v1;
  v39[1] = v15;
  v34 = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA1E0);
  sub_1D417645C(&qword_1EDE32AD8, &qword_1EC7CA1E0);
  sub_1D4418E94();
  sub_1D4418BD4();
  v16 = sub_1D417645C(&qword_1EDE32B10, &qword_1EC7CA1C8);
  v17 = MEMORY[0x1E697C750];
  sub_1D4419134();
  (*(v27 + 8))(v6, v4);
  (*(v25 + 8))(v9, v7);
  sub_1D4418D04();
  sub_1D44188E4();
  v35 = v7;
  v36 = v4;
  v37 = v16;
  v38 = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v19 = v26;
  sub_1D4419004();
  v20 = *(v31 + 8);
  v21 = v32;
  v20(v3, v32);
  (*(v28 + 8))(v11, v19);
  sub_1D4418D24();
  sub_1D44188E4();
  v35 = v19;
  v36 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v22 = v29;
  sub_1D4419004();
  v20(v3, v21);
  return (*(v30 + 8))(v13, v22);
}

uint64_t sub_1D431AB5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a1;
  v53 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA1E8);
  v4 = *(v3 - 8);
  v49 = v3;
  v50 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v47 = &v40 - v5;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA1F0) - 8;
  v6 = MEMORY[0x1EEE9AC00](v51);
  v52 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v46 = &v40 - v8;
  v9 = sub_1D4418944();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA1F8);
  v14 = v13 - 8;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v48 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v40 - v17;
  v44 = &v40 - v17;
  v55 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA200);
  sub_1D431F840();
  sub_1D4419344();
  sub_1D4418934();
  v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA210) + 36);
  v45 = v10[2];
  v45(&v18[v19], v12, v9);
  v20 = v10[7];
  v20(&v18[v19], 0, 1, v9);
  KeyPath = swift_getKeyPath();
  v22 = &v18[*(v14 + 44)];
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA218);
  v24 = *(v23 + 28);
  v25 = v10[4];
  v42 = v10 + 4;
  v43 = v23;
  v25(v22 + v24, v12, v9);
  v20(v22 + v24, 0, 1, v9);
  *v22 = KeyPath;
  v54 = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA220);
  sub_1D417645C(&qword_1EDE32AE0, &qword_1EC7CA220);
  v26 = v47;
  sub_1D4419344();
  sub_1D4418504();
  sub_1D431FA14();
  v27 = v46;
  v28 = v49;
  sub_1D4419074();
  (*(v50 + 8))(v26, v28);
  sub_1D4418934();
  v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA228) + 36);
  v45(&v27[v29], v12, v9);
  v20(&v27[v29], 0, 1, v9);
  v30 = swift_getKeyPath();
  v31 = &v27[*(v51 + 44)];
  v32 = v27;
  v33 = *(v43 + 28);
  v25(v31 + v33, v12, v9);
  v20(v31 + v33, 0, 1, v9);
  *v31 = v30;
  v34 = v44;
  v35 = v48;
  sub_1D417CF94(v44, v48, &qword_1EC7CA1F8);
  v36 = v52;
  sub_1D41990EC(v32, v52);
  v37 = v53;
  sub_1D417CF94(v35, v53, &qword_1EC7CA1F8);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA230);
  sub_1D41990EC(v36, v37 + *(v38 + 48));
  sub_1D41769C4(v32, &qword_1EC7CA1F0);
  sub_1D41769C4(v34, &qword_1EC7CA1F8);
  sub_1D41769C4(v36, &qword_1EC7CA1F0);
  return sub_1D41769C4(v35, &qword_1EC7CA1F8);
}

void *sub_1D431B104@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1D4418A34();
  v18 = 0;
  sub_1D431B224(a1, __src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v20, __src, sizeof(v20));
  sub_1D417CF94(__dst, v15, &qword_1EC7CA2A0);
  sub_1D41769C4(v20, &qword_1EC7CA2A0);
  memcpy(&v17[7], __dst, 0x230uLL);
  v5 = v18;
  LOBYTE(a1) = sub_1D4418D64();
  sub_1D4418494();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = v5;
  result = memcpy((a2 + 17), v17, 0x237uLL);
  *(a2 + 584) = a1;
  *(a2 + 592) = v7;
  *(a2 + 600) = v9;
  *(a2 + 608) = v11;
  *(a2 + 616) = v13;
  *(a2 + 624) = 0;
  return result;
}

uint64_t sub_1D431B224@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1D44188B4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *(a1 + 80);
  v22 = v8;
  v23 = *(a1 + 88);
  if (v23 != 1)
  {

    sub_1D441A174();
    v9 = sub_1D4418CD4();
    sub_1D4418044();

    sub_1D44188A4();
    swift_getAtKeyPath();
    sub_1D41769C4(&v22, &qword_1EC7CA248);
    (*(v5 + 8))(v7, v4);
    LOBYTE(v8) = v19[0];
  }

  if (v8)
  {
    if (v8 == 1)
    {
      v10 = sub_1D4418A34();
    }

    else
    {
      v10 = sub_1D4418A54();
    }
  }

  else
  {
    v10 = sub_1D4418A44();
  }

  v11 = v10;
  v21 = 0;
  sub_1D431B51C(a1, v19);
  memcpy(v16, v19, sizeof(v16));
  memcpy(v17, v19, sizeof(v17));
  sub_1D417CF94(v16, v18, &qword_1EC7CA2A8);
  sub_1D41769C4(v17, &qword_1EC7CA2A8);
  memcpy(&v20[7], v16, 0x1F0uLL);
  v12 = v21;
  v15[528] = 0;
  v18[0] = v11;
  v18[1] = 0;
  LOBYTE(v18[2]) = v21;
  memcpy(&v18[2] + 1, v20, 0x1F7uLL);
  memcpy(&v15[7], v18, 0x208uLL);
  *a2 = 0xD000000000000010;
  *(a2 + 8) = 0x80000001D444DD30;
  *(a2 + 16) = 0x404E000000000000;
  *(a2 + 24) = 0x4020000000000000;
  *(a2 + 32) = 0;
  memcpy((a2 + 33), v15, 0x20FuLL);
  v19[0] = v11;
  v19[1] = 0;
  LOBYTE(v19[2]) = v12;
  memcpy(&v19[2] + 1, v20, 0x1F7uLL);

  sub_1D417CF94(v18, v14, &qword_1EC7CA2B0);
  sub_1D41769C4(v19, &qword_1EC7CA2B0);
}

uint64_t sub_1D431B51C@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1D44188B4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1[3];
  v104 = a1[2];
  v105 = v8;
  v106 = a1[4];
  v9 = *a1;
  v103 = a1[1];
  v102 = v9;
  v110 = v104;
  v111 = v8;
  v112 = v106;
  v108 = v9;
  v109 = v103;
  KeyPath = swift_getKeyPath();
  LOBYTE(v65[0]) = 0;
  sub_1D431A328(&v102, v78);
  sub_1D431A328(&v102, v78);
  *(&v41 + 1) = sub_1D4418DB4();
  *&v41 = swift_getKeyPath();
  v40 = sub_1D4418CF4();
  v101 = *(a1 + 88);
  v100 = *(a1 + 10);
  v10 = v101;
  if (v101 != 1)
  {

    sub_1D441A174();
    v11 = sub_1D4418CD4();
    sub_1D4418044();

    sub_1D44188A4();
    swift_getAtKeyPath();
    sub_1D41769C4(&v100, &qword_1EC7CA248);
    (*(v5 + 8))(v7, v4);
  }

  sub_1D4418494();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v98 = 0;
  v95 = v104;
  v96 = v105;
  v97 = v106;
  v94 = v103;
  v93 = v102;
  v38 = swift_getKeyPath();
  LOBYTE(v78[0]) = 0;
  v39 = sub_1D4418D84();
  v37 = swift_getKeyPath();
  HIDWORD(v36) = sub_1D4418CF4();
  if (!v10)
  {

    sub_1D441A174();
    v20 = sub_1D4418CD4();
    sub_1D4418044();

    sub_1D44188A4();
    swift_getAtKeyPath();
    sub_1D41769C4(&v100, &qword_1EC7CA248);
    (*(v5 + 8))(v7, v4);
  }

  sub_1D4418494();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v48 = v104;
  v49 = v105;
  v50 = v106;
  v46 = v102;
  v47 = v103;
  v63[4] = v106;
  v63[3] = v105;
  v63[2] = v104;
  v63[0] = v102;
  v63[1] = v103;
  v51[3] = v111;
  v51[4] = v112;
  v51[1] = v109;
  v51[2] = v110;
  v51[0] = v108;
  *&v52 = KeyPath;
  BYTE8(v52) = 0;
  HIDWORD(v52) = *&v107[3];
  *(&v52 + 9) = *v107;
  v53 = v41;
  LOBYTE(v54) = v40;
  DWORD1(v54) = *&v99[3];
  *(&v54 + 1) = *v99;
  *(&v54 + 1) = v13;
  *&v55[0] = v15;
  *(&v55[0] + 1) = v17;
  *&v55[1] = v19;
  BYTE8(v55[1]) = 0;
  v45[0] = v108;
  v45[1] = v109;
  v45[4] = v112;
  v45[5] = v52;
  v45[2] = v110;
  v45[3] = v111;
  *(&v45[8] + 9) = *(v55 + 9);
  v45[6] = v41;
  v45[7] = v54;
  v56[2] = v95;
  v56[3] = v96;
  v56[4] = v97;
  v56[0] = v93;
  v56[1] = v94;
  v30 = v37;
  v29 = v38;
  *&v57 = v38;
  BYTE8(v57) = 0;
  *(&v57 + 9) = *v92;
  HIDWORD(v57) = *&v92[3];
  *&v58 = v37;
  v31 = v39;
  *(&v58 + 1) = v39;
  v32 = BYTE4(v36);
  LOBYTE(v59) = BYTE4(v36);
  DWORD1(v59) = *&v91[3];
  *(&v59 + 1) = *v91;
  *(&v59 + 1) = v21;
  *&v60[0] = v23;
  *(&v60[0] + 1) = v25;
  *&v60[1] = v27;
  BYTE8(v60[1]) = 0;
  *(&v45[18] + 9) = *(v60 + 9);
  v45[8] = v55[0];
  v45[10] = v93;
  v45[11] = v94;
  v45[13] = v96;
  v45[14] = v97;
  v45[12] = v95;
  v45[17] = v59;
  v45[18] = v60[0];
  v90 = 0;
  v45[15] = v57;
  v45[16] = v58;
  v61[2] = v104;
  v61[3] = v105;
  v61[4] = v106;
  v45[22] = v104;
  v45[23] = v105;
  v62[2] = v104;
  v62[3] = v105;
  v61[0] = v102;
  v61[1] = v103;
  v45[24] = v106;
  v45[20] = v102;
  v45[21] = v103;
  v44 = 0;
  v62[1] = v103;
  v62[0] = v102;
  v62[4] = v106;
  *&v43[23] = v103;
  *&v43[39] = v104;
  *&v43[55] = v105;
  *&v43[71] = v106;
  *&v43[7] = v102;
  memcpy(a2, v45, 0x190uLL);
  *(a2 + 400) = 0x4020000000000000;
  *(a2 + 408) = 0;
  v33 = *&v43[48];
  *(a2 + 441) = *&v43[32];
  *(a2 + 457) = v33;
  *(a2 + 473) = *&v43[64];
  *(a2 + 488) = *&v43[79];
  v34 = *&v43[16];
  *(a2 + 409) = *v43;
  *(a2 + 425) = v34;
  sub_1D431A328(&v102, v78);
  sub_1D431A328(&v102, v78);
  sub_1D417CF94(v51, v78, &qword_1EC7CA2B8);
  sub_1D417CF94(v56, v78, &qword_1EC7CA2C0);
  sub_1D431FB8C(v61, v78);
  sub_1D431FBC4(v62, v78);
  sub_1D431FBFC(v63);
  v64[2] = v48;
  v64[3] = v49;
  v64[4] = v50;
  v64[1] = v47;
  v64[0] = v46;
  sub_1D431FC2C(v64);
  v65[2] = v95;
  v65[3] = v96;
  v65[4] = v97;
  v65[1] = v94;
  v65[0] = v93;
  v66 = v29;
  v67 = 0;
  *v68 = *v92;
  *&v68[3] = *&v92[3];
  v69 = v30;
  v70 = v31;
  v71 = v32;
  *&v72[3] = *&v91[3];
  *v72 = *v91;
  v73 = v22;
  v74 = v24;
  v75 = v26;
  v76 = v28;
  v77 = 0;
  sub_1D41769C4(v65, &qword_1EC7CA2C0);
  v78[2] = v110;
  v78[3] = v111;
  v78[4] = v112;
  v78[1] = v109;
  v78[0] = v108;
  v79 = KeyPath;
  v80 = 0;
  *v81 = *v107;
  *&v81[3] = *&v107[3];
  v82 = v41;
  v83 = v40;
  *&v84[3] = *&v99[3];
  *v84 = *v99;
  v85 = v13;
  v86 = v15;
  v87 = v17;
  v88 = v19;
  v89 = 0;
  return sub_1D41769C4(v78, &qword_1EC7CA2B8);
}

uint64_t sub_1D431BC7C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v65 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA238);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v57 - v4;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA240);
  v6 = MEMORY[0x1EEE9AC00](v62);
  v64 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v57 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v63 = &v57 - v11;
  v12 = sub_1D44188B4();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = *(a1 + 88);
  v16 = *(a1 + 80);
  v83 = v16;
  v17 = v84;
  if (v84 == 1)
  {
    v18 = v16;
  }

  else
  {

    sub_1D441A174();
    v19 = sub_1D4418CD4();
    v61 = v15;
    v20 = v5;
    v21 = v17;
    v22 = v10;
    v23 = a1;
    v24 = v13;
    v25 = v12;
    v26 = v19;
    sub_1D4418044();

    v12 = v25;
    v13 = v24;
    a1 = v23;
    v10 = v22;
    v17 = v21;
    v5 = v20;
    v15 = v61;
    sub_1D44188A4();
    swift_getAtKeyPath();
    sub_1D41769C4(&v83, &qword_1EC7CA248);
    (*(v13 + 8))(v15, v12);
    v18 = v67[0];
  }

  v58 = v12;
  if (v18)
  {
    if (v18 == 1)
    {
      v27 = sub_1D4418A34();
    }

    else
    {
      v27 = sub_1D4418A54();
    }
  }

  else
  {
    v27 = sub_1D4418A44();
  }

  v61 = v27;
  v79 = 0;
  sub_1D431C2F0(a1, v67);
  memcpy(v76, v67, 0x149uLL);
  memcpy(v77, v67, 0x149uLL);
  sub_1D417CF94(v76, v66, &qword_1EC7CA250);
  sub_1D41769C4(v77, &qword_1EC7CA250);
  memcpy(&v78[7], v76, 0x149uLL);
  v59 = v79;
  v60 = sub_1D4418D14();
  sub_1D4418494();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v80 = 0;
  if (!v17)
  {

    sub_1D441A174();
    v36 = sub_1D4418CD4();
    sub_1D4418044();

    sub_1D44188A4();
    swift_getAtKeyPath();
    sub_1D41769C4(&v83, &qword_1EC7CA248);
    (*(v13 + 8))(v15, v58);
    LOBYTE(v16) = v67[0];
  }

  if (v16)
  {
    if (v16 == 1)
    {
      v37 = sub_1D4418A34();
    }

    else
    {
      v37 = sub_1D4418A54();
    }
  }

  else
  {
    v37 = sub_1D4418A44();
  }

  *v5 = v37;
  *(v5 + 1) = 0;
  v5[16] = 0;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA258);
  sub_1D431C978(a1, &v5[*(v38 + 44)]);
  v39 = sub_1D4418D64();
  sub_1D4418494();
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v47 = v46;
  sub_1D42D742C(v5, v10, &qword_1EC7CA238);
  v48 = v63;
  v49 = &v10[*(v62 + 36)];
  *v49 = v39;
  *(v49 + 1) = v41;
  *(v49 + 2) = v43;
  *(v49 + 3) = v45;
  *(v49 + 4) = v47;
  v49[40] = 0;
  sub_1D42D742C(v10, v48, &qword_1EC7CA240);
  v50 = v64;
  sub_1D417CF94(v48, v64, &qword_1EC7CA240);
  v51 = v61;
  v66[0] = v61;
  v66[1] = 0;
  v52 = v59;
  LOBYTE(v66[2]) = v59;
  memcpy(&v66[2] + 1, v78, 0x150uLL);
  *(&v66[44] + 1) = *v82;
  HIDWORD(v66[44]) = *&v82[3];
  v53 = v60;
  LOBYTE(v66[45]) = v60;
  *(&v66[45] + 1) = *v81;
  HIDWORD(v66[45]) = *&v81[3];
  v66[46] = v29;
  v66[47] = v31;
  v66[48] = v33;
  v66[49] = v35;
  LOBYTE(v66[50]) = 0;
  v54 = v65;
  memcpy(v65, v66, 0x191uLL);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA260);
  sub_1D417CF94(v50, v54 + *(v55 + 48), &qword_1EC7CA240);
  sub_1D417CF94(v66, v67, &qword_1EC7CA268);
  sub_1D41769C4(v48, &qword_1EC7CA240);
  sub_1D41769C4(v50, &qword_1EC7CA240);
  *v67 = v51;
  *&v67[8] = 0;
  v67[16] = v52;
  memcpy(&v67[17], v78, 0x150uLL);
  *v68 = *v82;
  *&v68[3] = *&v82[3];
  v69 = v53;
  *v70 = *v81;
  *&v70[3] = *&v81[3];
  v71 = v29;
  v72 = v31;
  v73 = v33;
  v74 = v35;
  v75 = 0;
  return sub_1D41769C4(v67, &qword_1EC7CA268);
}

uint64_t sub_1D431C2F0@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1D44188B4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v118 = a1[1];
  v9 = a1[3];
  v119 = a1[2];
  v120 = v9;
  v121 = a1[4];
  v117 = v8;
  v124 = v118;
  v125 = v119;
  v126 = v9;
  v127 = v121;
  v123 = v8;
  KeyPath = swift_getKeyPath();
  LOBYTE(v92[0]) = 0;
  sub_1D431A328(&v117, &v70);
  sub_1D431A328(&v117, &v70);
  v54 = sub_1D4418E44();
  v57 = swift_getKeyPath();
  v56 = sub_1D4418CF4();
  v116 = *(a1 + 88);
  v115 = *(a1 + 10);
  v10 = v116;
  v48 = v5;
  v49 = v4;
  if (v116 != 1)
  {

    sub_1D441A174();
    v11 = sub_1D4418CD4();
    sub_1D4418044();

    sub_1D44188A4();
    swift_getAtKeyPath();
    sub_1D41769C4(&v115, &qword_1EC7CA248);
    (*(v5 + 8))(v7, v4);
  }

  sub_1D4418494();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v113 = 0;
  v110 = v119;
  v111 = v120;
  v112 = v121;
  v108 = v117;
  v109 = v118;
  v52 = swift_getKeyPath();
  LOBYTE(v70) = 0;
  v53 = sub_1D4418D84();
  v51 = swift_getKeyPath();
  v50 = sub_1D4418CF4();
  if (!v10)
  {

    sub_1D441A174();
    v20 = v7;
    v21 = sub_1D4418CD4();
    sub_1D4418044();

    sub_1D44188A4();
    swift_getAtKeyPath();
    sub_1D41769C4(&v115, &qword_1EC7CA248);
    (*(v48 + 8))(v20, v49);
  }

  sub_1D4418494();
  v60[1] = v124;
  v60[2] = v125;
  v60[3] = v126;
  v60[4] = v127;
  v60[0] = v123;
  v23 = v54;
  v22 = KeyPath;
  *&v61 = KeyPath;
  BYTE8(v61) = 0;
  HIDWORD(v61) = *&v122[3];
  *(&v61 + 9) = *v122;
  *&v62 = v57;
  *(&v62 + 1) = v54;
  LOBYTE(v63) = v56;
  DWORD1(v63) = *&v114[3];
  *(&v63 + 1) = *v114;
  *(&v63 + 1) = v13;
  *&v64[0] = v15;
  *(&v64[0] + 1) = v17;
  *&v64[1] = v19;
  BYTE8(v64[1]) = 0;
  v70 = v123;
  v71 = v124;
  v74 = v127;
  v75 = v61;
  v72 = v125;
  v73 = v126;
  *(v78 + 9) = *(v64 + 9);
  v77 = v63;
  v78[0] = v64[0];
  v76 = v62;
  v24 = v109;
  v25 = v110;
  v65[2] = v110;
  v65[3] = v111;
  v26 = v111;
  v65[4] = v112;
  v27 = v108;
  v65[0] = v108;
  v65[1] = v109;
  v29 = v51;
  v28 = v52;
  *&v66 = v52;
  BYTE8(v66) = 0;
  *(&v66 + 9) = *v107;
  HIDWORD(v66) = *&v107[3];
  *&v67 = v51;
  v30 = v53;
  *(&v67 + 1) = v53;
  v31 = v50;
  LOBYTE(v68) = v50;
  DWORD1(v68) = *&v106[3];
  *(&v68 + 1) = *v106;
  *(&v68 + 1) = v32;
  *&v69[0] = v33;
  *(&v69[0] + 1) = v34;
  *&v69[1] = v35;
  BYTE8(v69[1]) = 0;
  *(&v58[1] + 7) = v109;
  *(v58 + 7) = v108;
  *(&v58[5] + 7) = v66;
  *(&v58[4] + 7) = v112;
  *(&v58[3] + 7) = v111;
  *(&v58[2] + 7) = v110;
  v58[9] = *(v69 + 9);
  *(&v58[8] + 7) = v69[0];
  *(&v58[7] + 7) = v68;
  *(&v58[6] + 7) = v67;
  v36 = v63;
  *(a2 + 96) = v62;
  *(a2 + 112) = v36;
  v37 = v78[1];
  *(a2 + 128) = v78[0];
  *(a2 + 144) = v37;
  v38 = v73;
  *(a2 + 32) = v72;
  *(a2 + 48) = v38;
  v39 = v75;
  *(a2 + 64) = v74;
  *(a2 + 80) = v39;
  v40 = v71;
  *a2 = v70;
  *(a2 + 16) = v40;
  v41 = v58[7];
  *(a2 + 265) = v58[6];
  *(a2 + 281) = v41;
  v42 = v58[9];
  *(a2 + 297) = v58[8];
  *(a2 + 313) = v42;
  v43 = v58[3];
  *(a2 + 201) = v58[2];
  *(a2 + 217) = v43;
  v44 = v58[5];
  *(a2 + 233) = v58[4];
  *(a2 + 249) = v44;
  v45 = v58[1];
  *(a2 + 169) = v58[0];
  *(a2 + 185) = v45;
  v105 = 0;
  v59 = 1;
  *(a2 + 160) = 0;
  *(a2 + 168) = 1;
  v79[2] = v25;
  v79[3] = v26;
  v79[4] = v112;
  v79[0] = v27;
  v79[1] = v24;
  v80 = v28;
  v81 = 0;
  *v82 = *v107;
  *&v82[3] = *&v107[3];
  v83 = v29;
  v84 = v30;
  v85 = v31;
  *&v86[3] = *&v106[3];
  *v86 = *v106;
  v87 = v32;
  v88 = v33;
  v89 = v34;
  v90 = v35;
  v91 = 0;
  sub_1D417CF94(v60, v92, &qword_1EC7CA288);
  sub_1D417CF94(v65, v92, &qword_1EC7CA290);
  sub_1D41769C4(v79, &qword_1EC7CA290);
  v92[2] = v125;
  v92[3] = v126;
  v92[4] = v127;
  v92[0] = v123;
  v92[1] = v124;
  v93 = v22;
  v94 = 0;
  *v95 = *v122;
  *&v95[3] = *&v122[3];
  v96 = v57;
  v97 = v23;
  v98 = v56;
  *&v99[3] = *&v114[3];
  *v99 = *v114;
  v100 = v13;
  v101 = v15;
  v102 = v17;
  v103 = v19;
  v104 = 0;
  return sub_1D41769C4(v92, &qword_1EC7CA288);
}

uint64_t sub_1D431C978@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1D44188B4();
  v59 = *(v4 - 8);
  v60 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v58 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D4419304();
  v64 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA270);
  MEMORY[0x1EEE9AC00](v61);
  v10 = &v57 - v9;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA278);
  v11 = MEMORY[0x1EEE9AC00](v63);
  v13 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v57 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v57 - v17;
  v62 = v8;
  sub_1D44192F4();
  v73 = *(a1 + 88);
  v19 = *(a1 + 10);
  v72 = v19;
  if (v73 != 1)
  {

    sub_1D441A174();
    v21 = sub_1D4418CD4();
    v57 = v18;
    v22 = v13;
    v23 = a2;
    v24 = v21;
    sub_1D4418044();

    a2 = v23;
    v13 = v22;
    v18 = v57;
    v25 = v58;
    sub_1D44188A4();
    swift_getAtKeyPath();
    sub_1D41769C4(&v72, &qword_1EC7CA248);
    (*(v59 + 8))(v25, v60);
    if (LOBYTE(v71[0]))
    {
      goto LABEL_3;
    }

LABEL_5:
    v20 = sub_1D4418D54();
    goto LABEL_6;
  }

  if (!v19)
  {
    goto LABEL_5;
  }

LABEL_3:
  v20 = sub_1D4418CF4();
LABEL_6:
  v26 = v20;
  sub_1D4418494();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  (*(v64 + 32))(v10, v62, v6);
  v35 = &v10[*(v61 + 36)];
  *v35 = v26;
  *(v35 + 1) = v28;
  *(v35 + 2) = v30;
  *(v35 + 3) = v32;
  *(v35 + 4) = v34;
  v35[40] = 0;
  v36 = sub_1D4418D24();
  sub_1D4418494();
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;
  sub_1D42D742C(v10, v16, &qword_1EC7CA270);
  v45 = &v16[*(v63 + 36)];
  *v45 = v36;
  *(v45 + 1) = v38;
  *(v45 + 2) = v40;
  *(v45 + 3) = v42;
  *(v45 + 4) = v44;
  v45[40] = 0;
  sub_1D42D742C(v16, v18, &qword_1EC7CA278);
  v46 = a1[3];
  v65[2] = a1[2];
  v65[3] = v46;
  v65[4] = a1[4];
  v47 = a1[1];
  v65[0] = *a1;
  v65[1] = v47;
  sub_1D417CF94(v18, v13, &qword_1EC7CA278);
  sub_1D417CF94(v13, a2, &qword_1EC7CA278);
  v48 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA280) + 48));
  v49 = a1[4];
  v69 = a1[3];
  v50 = v69;
  v70 = v49;
  v51 = a1[2];
  v67 = a1[1];
  v52 = v67;
  v68 = v51;
  v66 = *a1;
  v53 = v66;
  v48[2] = v51;
  v48[3] = v50;
  v48[4] = v49;
  *v48 = v53;
  v48[1] = v52;
  sub_1D431A328(v65, v71);
  sub_1D431FAD0(&v66, v71);
  sub_1D41769C4(v18, &qword_1EC7CA278);
  v54 = a1[3];
  v71[2] = a1[2];
  v71[3] = v54;
  v71[4] = a1[4];
  v55 = a1[1];
  v71[0] = *a1;
  v71[1] = v55;
  sub_1D431FB08(v71);
  return sub_1D41769C4(v13, &qword_1EC7CA278);
}

uint64_t sub_1D431CE58@<X0>(uint64_t a1@<X8>)
{
  v38 = a1;
  v36 = sub_1D44188B4();
  v35 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v34 = &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = v1[3];
  v46 = v1[2];
  v47 = v3;
  v48[0] = v1[4];
  v4 = v1[1];
  v44 = *v1;
  v45 = v4;
  v5 = *(v1 + 10);
  v37 = *(v1 + 88);
  *&v39 = sub_1D431D1D4();
  *(&v39 + 1) = v6;
  sub_1D42CC920();
  v7 = sub_1D4418F84();
  v9 = v8;
  v11 = v10;
  sub_1D4418DB4();
  v12 = sub_1D4418F44();
  v14 = v13;
  v16 = v15;

  sub_1D430E564(v7, v9, v11 & 1);

  v17 = sub_1D4418F34();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  sub_1D430E564(v12, v14, v16 & 1);

  if (v37 != 1)
  {

    sub_1D441A174();
    v24 = sub_1D4418CD4();
    sub_1D4418044();

    v25 = v34;
    sub_1D44188A4();
    swift_getAtKeyPath();
    sub_1D431FF0C(v5, 0);
    (*(v35 + 8))(v25, v36);
    LOBYTE(v5) = v44;
  }

  KeyPath = swift_getKeyPath();
  v49 = v21 & 1;
  v27 = sub_1D4418D24();
  sub_1D4418494();
  v50 = 0;
  *&v39 = v17;
  *(&v39 + 1) = v19;
  LOBYTE(v40) = v21 & 1;
  *(&v40 + 1) = v23;
  *&v41 = KeyPath;
  BYTE8(v41) = v5;
  *(&v41 + 9) = 256;
  LOBYTE(v42) = v27;
  *(&v42 + 1) = v28;
  *v43 = v29;
  *&v43[8] = v30;
  *&v43[16] = v31;
  v43[24] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA378);
  sub_1D4320654();
  sub_1D4419084();
  v46 = v41;
  v47 = v42;
  v48[0] = *v43;
  *(v48 + 9) = *&v43[9];
  v44 = v39;
  v45 = v40;
  return sub_1D41769C4(&v44, &qword_1EC7CA378);
}

uint64_t sub_1D431D1D4()
{
  v0 = [objc_opt_self() currentDevice];
  [v0 userInterfaceIdiom];

  v1 = objc_opt_self();
  v2 = sub_1D4419C14();
  v3 = [v1 localizedFrameworkStringForKey:v2 value:0 table:0 allowSiri:1];

  v4 = sub_1D4419C54();
  return v4;
}

uint64_t sub_1D431D300@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
  v29 = sub_1D44188B4();
  v28 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v3 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = v1[3];
  v40 = v1[2];
  v41 = v4;
  v42 = v1[4];
  v5 = v1[1];
  v38 = *v1;
  v39 = v5;
  v6 = *(v1 + 10);
  v7 = *(v1 + 88);
  *&v31 = sub_1D431D618();
  *(&v31 + 1) = v8;
  sub_1D42CC920();
  v9 = sub_1D4418F84();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = sub_1D4418D24();
  sub_1D4418494();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v46 = v13 & 1;
  v45 = 0;
  if (v7 != 1)
  {

    sub_1D441A174();
    v25 = sub_1D4418CD4();
    sub_1D4418044();

    sub_1D44188A4();
    swift_getAtKeyPath();
    sub_1D431FF0C(v6, 0);
    (*(v28 + 8))(v3, v29);
    LOBYTE(v6) = v38;
  }

  KeyPath = swift_getKeyPath();
  *&v31 = v9;
  *(&v31 + 1) = v11;
  LOBYTE(v32) = v13 & 1;
  *(&v32 + 1) = v15;
  LOWORD(v33) = 256;
  BYTE8(v33) = v16;
  *&v34 = v18;
  *(&v34 + 1) = v20;
  *&v35 = v22;
  *(&v35 + 1) = v24;
  LOBYTE(v36) = 0;
  *(&v36 + 1) = KeyPath;
  v37 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA368);
  sub_1D4320510();
  sub_1D4419084();
  v42 = v35;
  v43 = v36;
  v44 = v37;
  v38 = v31;
  v39 = v32;
  v40 = v33;
  v41 = v34;
  return sub_1D41769C4(&v38, &qword_1EC7CA368);
}

uint64_t sub_1D431D618()
{
  if (*v0 == 3)
  {
    v2 = *(v0 + 8);
    v1 = *(v0 + 16);
    v3 = objc_opt_self();
    v4 = sub_1D4419C14();
    v5 = [v3 localizedFrameworkStringForKey:v4 value:0 table:0 allowSiri:1];

    sub_1D4419C54();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA2F8);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1D4435D40;
    *(v6 + 56) = MEMORY[0x1E69E6158];
    *(v6 + 64) = sub_1D4320054();
    *(v6 + 32) = v2;
    *(v6 + 40) = v1;

    v7 = sub_1D4419C24();

    return v7;
  }

  else
  {
    v9 = objc_opt_self();
    v10 = sub_1D4419C14();
    v11 = [v9 localizedFrameworkStringForKey:v10 value:0 table:0 allowSiri:1];

    v12 = sub_1D4419C54();
    return v12;
  }
}

uint64_t sub_1D431D834@<X0>(uint64_t a1@<X8>)
{
  v2 = objc_opt_self();
  v3 = sub_1D4419C14();
  v4 = [v2 localizedFrameworkStringForKey:v3 value:0 table:0 allowSiri:1];

  sub_1D4419C54();
  sub_1D42CC920();
  v5 = sub_1D4418F84();
  v7 = v6;
  v9 = v8;
  sub_1D4419154();
  v10 = sub_1D4418EF4();
  v12 = v11;
  v14 = v13;

  sub_1D430E564(v5, v7, v9 & 1);

  sub_1D4418D84();
  v15 = sub_1D4418F44();
  v17 = v16;
  v19 = v18;
  v21 = v20;

  sub_1D430E564(v10, v12, v14 & 1);

  *a1 = v15;
  *(a1 + 8) = v17;
  *(a1 + 16) = v19 & 1;
  *(a1 + 24) = v21;
  return result;
}

uint64_t sub_1D431D9C4@<X0>(uint64_t a1@<X8>)
{
  v16[1] = a1;
  v2 = sub_1D4418674();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA2C8);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v16 - v8;
  v10 = v1[3];
  v18[2] = v1[2];
  v18[3] = v10;
  v18[4] = v1[4];
  v11 = v1[1];
  v18[0] = *v1;
  v18[1] = v11;
  v12 = swift_allocObject();
  v13 = v1[3];
  v12[3] = v1[2];
  v12[4] = v13;
  v12[5] = v1[4];
  v14 = v1[1];
  v12[1] = *v1;
  v12[2] = v14;
  v16[4] = v18;
  sub_1D431FB8C(v18, v17);
  sub_1D44192C4();
  sub_1D4418664();
  sub_1D417645C(&qword_1EDE32B00, &qword_1EC7CA2C8);
  sub_1D43204C8(&qword_1EDE32B80, MEMORY[0x1E697C248]);
  sub_1D4418FC4();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1D431DC74@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D4418CB4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v25[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA310);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v25[-v8];
  v10 = v1[3];
  v28[2] = v1[2];
  v28[3] = v10;
  v28[4] = v1[4];
  v11 = v1[1];
  v28[0] = *v1;
  v28[1] = v11;
  v12 = swift_allocObject();
  v13 = v1[3];
  v12[3] = v1[2];
  v12[4] = v13;
  v12[5] = v1[4];
  v14 = v1[1];
  v12[1] = *v1;
  v12[2] = v14;
  v26 = v28;
  sub_1D431FBC4(v28, v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA318);
  sub_1D432022C();
  sub_1D44192C4();
  v15 = sub_1D4419154();
  KeyPath = swift_getKeyPath();
  v27[0] = v15;
  v17 = sub_1D4418564();
  v18 = &v9[*(v7 + 36)];
  *v18 = KeyPath;
  v18[1] = v17;
  sub_1D4418CA4();
  sub_1D43203AC();
  sub_1D43204C8(&qword_1EDE32B58, MEMORY[0x1E697CB70]);
  sub_1D4418FC4();
  (*(v4 + 8))(v6, v3);
  sub_1D41769C4(v9, &qword_1EC7CA310);
  v19 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA340) + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA348);
  sub_1D44186A4();
  *v19 = swift_getKeyPath();
  v20 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA350) + 36));
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA358) + 28);
  v22 = *MEMORY[0x1E697DC10];
  v23 = sub_1D44184E4();
  (*(*(v23 - 8) + 104))(v20 + v21, v22, v23);
  result = swift_getKeyPath();
  *v20 = result;
  return result;
}

__n128 sub_1D431DFF0@<Q0>(__n128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA360);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v25[-v6];
  v8 = a1[3];
  v28 = a1[2];
  v29 = v8;
  v30 = a1[4];
  v9 = *a1;
  v27 = a1[1];
  v26 = v9;
  *&v33[0] = sub_1D431E278();
  *(&v33[0] + 1) = v10;
  sub_1D42CC920();
  v11 = sub_1D4418F84();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = sub_1D44191A4();
  KeyPath = swift_getKeyPath();
  v25[8] = v15 & 1;
  v26.n128_u64[0] = v11;
  v26.n128_u64[1] = v13;
  v27.n128_u8[0] = v15 & 1;
  v27.n128_u64[1] = v17;
  v28.n128_u16[0] = 256;
  v28.n128_u64[1] = KeyPath;
  v29.n128_u64[0] = v18;
  sub_1D4418DD4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA320);
  sub_1D43202F4();
  sub_1D4418FB4();
  v33[0] = v26;
  v33[1] = v27;
  v33[2] = v28;
  v34 = v29.n128_u64[0];
  sub_1D41769C4(v33, &qword_1EC7CA320);
  sub_1D4419364();
  sub_1D4418694();
  (*(v5 + 32))(a2, v7, v4);
  v20 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA318) + 36);
  v21 = v31;
  *(v20 + 64) = v30;
  *(v20 + 80) = v21;
  *(v20 + 96) = v32;
  v23 = v27;
  v22 = v28;
  *v20 = v26;
  *(v20 + 16) = v23;
  result = v29;
  *(v20 + 32) = v22;
  *(v20 + 48) = result;
  return result;
}

uint64_t sub_1D431E278()
{
  v0 = [objc_opt_self() currentDevice];
  [v0 userInterfaceIdiom];

  v1 = objc_opt_self();
  v2 = sub_1D4419C14();
  v3 = [v1 localizedFrameworkStringForKey:v2 value:0 table:0 allowSiri:1];

  v4 = sub_1D4419C54();
  return v4;
}

uint64_t sub_1D431E3A4@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v2 = sub_1D44188B4();
  v33 = *(v2 - 8);
  v34 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v32 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(v1 + 80);
  v35 = *(v1 + 88);
  v5 = objc_opt_self();
  v6 = sub_1D4419C14();
  v7 = [v5 localizedFrameworkStringForKey:v6 value:0 table:0 allowSiri:1];

  v8 = sub_1D4419C54();
  v10 = v9;

  *&v39 = v8;
  *(&v39 + 1) = v10;
  sub_1D42CC920();
  v11 = sub_1D4418F84();
  v13 = v12;
  LOBYTE(v10) = v14;
  sub_1D4418E44();
  v15 = sub_1D4418F44();
  v17 = v16;
  v19 = v18;

  sub_1D430E564(v11, v13, v10 & 1);

  v20 = sub_1D4418F34();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  sub_1D430E564(v15, v17, v19 & 1);

  if (v35 != 1)
  {

    sub_1D441A174();
    v27 = sub_1D4418CD4();
    sub_1D4418044();

    v28 = v32;
    sub_1D44188A4();
    swift_getAtKeyPath();
    sub_1D431FF0C(v4, 0);
    (*(v33 + 8))(v28, v34);
    LOBYTE(v4) = v39;
  }

  KeyPath = swift_getKeyPath();
  v41 = v24 & 1;
  *&v37 = v20;
  *(&v37 + 1) = v22;
  v38[0] = v24 & 1;
  *&v38[8] = v26;
  *&v38[16] = KeyPath;
  v38[24] = v4;
  *&v38[25] = 256;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA300);
  sub_1D43200A8();
  sub_1D4419084();
  v39 = v37;
  v40[0] = *v38;
  *(v40 + 11) = *&v38[11];
  return sub_1D41769C4(&v39, &qword_1EC7CA300);
}

uint64_t sub_1D431E6BC@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  v2 = sub_1D44188B4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA2D0);
  v31 = *(v6 - 8);
  v32 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v29 - v7;
  v9 = v1[3];
  v40 = v1[2];
  v41 = v9;
  v42 = v1[4];
  v10 = v1[1];
  v38 = *v1;
  v39 = v10;
  v11 = *(v1 + 10);
  v12 = *(v1 + 88);
  *&v34 = sub_1D431E9D8();
  *(&v34 + 1) = v13;
  sub_1D42CC920();
  v14 = sub_1D4418F84();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  if (v12 != 1)
  {

    sub_1D441A174();
    v21 = sub_1D4418CD4();
    v30 = v2;
    v22 = v21;
    sub_1D4418044();

    sub_1D44188A4();
    swift_getAtKeyPath();
    sub_1D431FF0C(v11, 0);
    (*(v3 + 8))(v5, v30);
    LOBYTE(v11) = v38;
  }

  KeyPath = swift_getKeyPath();
  v43 = v18 & 1;
  *&v34 = v14;
  *(&v34 + 1) = v16;
  LOBYTE(v35) = v18 & 1;
  *(&v35 + 1) = v20;
  LOWORD(v36) = 256;
  *(&v36 + 1) = KeyPath;
  v37 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA2D8);
  sub_1D431FF18();
  sub_1D4419084();
  v38 = v34;
  v39 = v35;
  v40 = v36;
  LOBYTE(v41) = v37;
  sub_1D41769C4(&v38, &qword_1EC7CA2D8);
  v24 = sub_1D4418D84();
  v25 = swift_getKeyPath();
  v26 = v33;
  (*(v31 + 32))(v33, v8, v32);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA2F0);
  v28 = (v26 + *(result + 36));
  *v28 = v25;
  v28[1] = v24;
  return result;
}

uint64_t sub_1D431E9D8()
{
  if (*v0 == 3)
  {
    v2 = *(v0 + 8);
    v1 = *(v0 + 16);
    v3 = objc_opt_self();
    v4 = sub_1D4419C14();
    v5 = [v3 localizedFrameworkStringForKey:v4 value:0 table:0 allowSiri:1];

    sub_1D4419C54();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA2F8);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1D4435D40;
    *(v6 + 56) = MEMORY[0x1E69E6158];
    *(v6 + 64) = sub_1D4320054();
    *(v6 + 32) = v2;
    *(v6 + 40) = v1;

    v7 = sub_1D4419C24();

    return v7;
  }

  else
  {
    v9 = objc_opt_self();
    v10 = sub_1D4419C14();
    v11 = [v9 localizedFrameworkStringForKey:v10 value:0 table:0 allowSiri:1];

    v12 = sub_1D4419C54();
    return v12;
  }
}

uint64_t sub_1D431EBF8@<X0>(uint64_t a1@<X8>)
{
  v2 = objc_opt_self();
  v3 = sub_1D4419C14();
  v4 = [v2 localizedFrameworkStringForKey:v3 value:0 table:0 allowSiri:1];

  sub_1D4419C54();
  sub_1D42CC920();
  result = sub_1D4418F84();
  *a1 = result;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7 & 1;
  *(a1 + 24) = v8;
  return result;
}

uint64_t sub_1D431ECD0@<X0>(uint64_t a1@<X8>)
{
  v16[1] = a1;
  v2 = sub_1D4418BC4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA2C8);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v16 - v8;
  v10 = v1[3];
  v18[2] = v1[2];
  v18[3] = v10;
  v18[4] = v1[4];
  v11 = v1[1];
  v18[0] = *v1;
  v18[1] = v11;
  v12 = swift_allocObject();
  v13 = v1[3];
  v12[3] = v1[2];
  v12[4] = v13;
  v12[5] = v1[4];
  v14 = v1[1];
  v12[1] = *v1;
  v12[2] = v14;
  v16[4] = v18;
  sub_1D431FAD0(v18, v17);
  sub_1D44192C4();
  sub_1D4418BB4();
  sub_1D417645C(&qword_1EDE32B00, &qword_1EC7CA2C8);
  sub_1D43204C8(&qword_1EDE32B70, MEMORY[0x1E697C720]);
  sub_1D4418FC4();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

__n128 sub_1D431EF80@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v2;
  *(a2 + 64) = *(a1 + 64);
  result = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = result;
  return result;
}

uint64_t sub_1D431EF9C@<X0>(double (**a1)@<D0>(uint64_t@<X8>)@<X8>)
{
  v3 = v1[3];
  v10[2] = v1[2];
  v10[3] = v3;
  v10[4] = v1[4];
  v4 = v1[1];
  v10[0] = *v1;
  v10[1] = v4;
  v5 = swift_allocObject();
  v6 = v1[3];
  *(v5 + 3) = v1[2];
  *(v5 + 4) = v6;
  *(v5 + 5) = v1[4];
  v7 = v1[1];
  *(v5 + 1) = *v1;
  *(v5 + 2) = v7;
  *a1 = sub_1D4320B24;
  a1[1] = v5;
  return sub_1D431A58C(v10, &v9);
}

uint64_t LockedNotesWelcomeView.Configuration.account.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v5 = *(v1 + 24);
  v4 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(v1 + 42);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v5;
  *(a1 + 32) = v4;
  *(a1 + 40) = v6;
  *(a1 + 42) = v7;
}

__n128 LockedNotesWelcomeView.Configuration.account.setter(int *a1)
{
  v2 = *a1;
  v8 = *(a1 + 2);
  v3 = *(a1 + 3);
  v4 = *(a1 + 4);
  v5 = *(a1 + 20);
  v6 = *(a1 + 42);

  *v1 = v2;
  result = v8;
  *(v1 + 8) = v8;
  *(v1 + 24) = v3;
  *(v1 + 32) = v4;
  *(v1 + 40) = v5;
  *(v1 + 42) = v6;
  return result;
}

uint64_t sub_1D431F154@<X0>(uint64_t a1@<X0>, uint64_t (**a2)(unsigned __int16 *a1)@<X8>)
{
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  if (v3)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1D431FC74;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *a2 = v6;
  a2[1] = v5;

  return sub_1D417C7B4(v3);
}

uint64_t sub_1D431F1D4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1D431FC6C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(a2 + 48);
  sub_1D417C7B4(v3);
  result = sub_1D417BCA0(v7);
  *(a2 + 48) = v6;
  *(a2 + 56) = v5;
  return result;
}

uint64_t LockedNotesWelcomeView.Configuration.didSelectMode.getter()
{
  v1 = *(v0 + 48);
  sub_1D417C7B4(v1);
  return v1;
}

uint64_t LockedNotesWelcomeView.Configuration.didSelectMode.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1D417BCA0(*(v2 + 48));
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t sub_1D431F2FC@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *(a1 + 64);
  v4 = *(a1 + 72);
  if (v3)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1D431FC64;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *a2 = v6;
  a2[1] = v5;

  return sub_1D417C7B4(v3);
}

uint64_t sub_1D431F37C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1D431FC5C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(a2 + 64);
  sub_1D417C7B4(v3);
  result = sub_1D417BCA0(v7);
  *(a2 + 64) = v6;
  *(a2 + 72) = v5;
  return result;
}

uint64_t LockedNotesWelcomeView.Configuration.didPressLearnMore.getter()
{
  v1 = *(v0 + 64);
  sub_1D417C7B4(v1);
  return v1;
}

uint64_t LockedNotesWelcomeView.Configuration.didPressLearnMore.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1D417BCA0(*(v2 + 64));
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

uint64_t sub_1D431F4CC@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v5 = *(v1 + 24);
  v4 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(v1 + 42);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v5;
  *(a1 + 32) = v4;
  *(a1 + 40) = v6;
  *(a1 + 42) = v7;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for ContentAlignments(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ContentAlignments(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy89_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 73) = *(a2 + 73);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

unint64_t sub_1D431F710()
{
  result = qword_1EDE33388;
  if (!qword_1EDE33388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE33388);
  }

  return result;
}

uint64_t sub_1D431F778()
{
  v1 = *v0;
  sub_1D441AEB4();
  MEMORY[0x1DA6D68D0](v1);
  return sub_1D441AF04();
}

uint64_t sub_1D431F7EC()
{
  v1 = *v0;
  sub_1D441AEB4();
  MEMORY[0x1DA6D68D0](v1);
  return sub_1D441AF04();
}

unint64_t sub_1D431F840()
{
  result = qword_1EDE32BE8;
  if (!qword_1EDE32BE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7CA200);
    sub_1D417645C(&qword_1EDE32AF8, &qword_1EC7CA208);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE32BE8);
  }

  return result;
}

uint64_t sub_1D431F900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D431F710();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t sub_1D431F964(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA298);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - v3;
  sub_1D417CF94(a1, &v6 - v3, &qword_1EC7CA298);
  return MEMORY[0x1DA6D41A0](v4);
}

unint64_t sub_1D431FA14()
{
  result = qword_1EDE32AE8;
  if (!qword_1EDE32AE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7CA1E8);
    sub_1D417645C(&qword_1EDE32AE0, &qword_1EC7CA220);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE32AE8);
  }

  return result;
}

unint64_t sub_1D431FB38()
{
  result = qword_1EDE331B0;
  if (!qword_1EDE331B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE331B0);
  }

  return result;
}

uint64_t sub_1D431FCCC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D431FD14(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D431FD88(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 89))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D431FDD0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 89) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 89) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D431FF0C(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

unint64_t sub_1D431FF18()
{
  result = qword_1EDE32BD8;
  if (!qword_1EDE32BD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7CA2D8);
    sub_1D431FFD0();
    sub_1D417645C(&qword_1EDE32B40, &qword_1EC7CA2E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE32BD8);
  }

  return result;
}

unint64_t sub_1D431FFD0()
{
  result = qword_1EDE32C20;
  if (!qword_1EDE32C20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7CA2E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE32C20);
  }

  return result;
}

unint64_t sub_1D4320054()
{
  result = qword_1EDE32A88;
  if (!qword_1EDE32A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE32A88);
  }

  return result;
}

unint64_t sub_1D43200A8()
{
  result = qword_1EDE32BC8;
  if (!qword_1EDE32BC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7CA300);
    sub_1D4320134();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE32BC8);
  }

  return result;
}

unint64_t sub_1D4320134()
{
  result = qword_1EDE32C18;
  if (!qword_1EDE32C18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7CA308);
    sub_1D417645C(&qword_1EDE32B40, &qword_1EC7CA2E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE32C18);
  }

  return result;
}

uint64_t sub_1D43201F4()
{
  v1 = *(v0 + 64);
  if (v1)
  {
    return v1();
  }

  return result;
}

unint64_t sub_1D432022C()
{
  result = qword_1EDE32C10;
  if (!qword_1EDE32C10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7CA318);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7CA320);
    sub_1D43202F4();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE32C10);
  }

  return result;
}

unint64_t sub_1D43202F4()
{
  result = qword_1EDE32BD0;
  if (!qword_1EDE32BD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7CA320);
    sub_1D431FFD0();
    sub_1D417645C(&qword_1EDE32B18, &qword_1EC7CA328);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE32BD0);
  }

  return result;
}

unint64_t sub_1D43203AC()
{
  result = qword_1EDE32BF0;
  if (!qword_1EDE32BF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7CA310);
    sub_1D417645C(&qword_1EDE32B08, &qword_1EC7CA330);
    sub_1D417645C(&qword_1EDE32B48, &qword_1EC7CA338);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE32BF0);
  }

  return result;
}

uint64_t sub_1D4320490()
{
  v1 = *(v0 + 80);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t sub_1D43204C8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D4320510()
{
  result = qword_1EDE32BB0;
  if (!qword_1EDE32BB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7CA368);
    sub_1D43205C8();
    sub_1D417645C(&qword_1EDE32B40, &qword_1EC7CA2E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE32BB0);
  }

  return result;
}

unint64_t sub_1D43205C8()
{
  result = qword_1EDE32BE0;
  if (!qword_1EDE32BE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7CA370);
    sub_1D431FFD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE32BE0);
  }

  return result;
}

unint64_t sub_1D4320654()
{
  result = qword_1EDE32BA8;
  if (!qword_1EDE32BA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7CA378);
    sub_1D43200A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE32BA8);
  }

  return result;
}

unint64_t sub_1D43206E0()
{
  result = qword_1EDE32C00;
  if (!qword_1EDE32C00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7CA2F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7CA2D8);
    sub_1D431FF18();
    swift_getOpaqueTypeConformance2();
    sub_1D417645C(&qword_1EDE32B20, &qword_1EC7CA380);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE32C00);
  }

  return result;
}

unint64_t sub_1D43207D4()
{
  result = qword_1EDE32BC0;
  if (!qword_1EDE32BC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7CA350);
    sub_1D432088C();
    sub_1D417645C(&qword_1EDE32B50, &qword_1EC7CA358);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE32BC0);
  }

  return result;
}

unint64_t sub_1D432088C()
{
  result = qword_1EDE32C08;
  if (!qword_1EDE32C08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7CA340);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7CA310);
    sub_1D4418CB4();
    sub_1D43203AC();
    sub_1D43204C8(&qword_1EDE32B58, MEMORY[0x1E697CB70]);
    swift_getOpaqueTypeConformance2();
    sub_1D417645C(&qword_1EDE32B38, &qword_1EC7CA348);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE32C08);
  }

  return result;
}

uint64_t get_witness_table_qd0__7SwiftUI4ViewHD3_AaBPAAE11buttonStyleyQrqd__AA015PrimitiveButtonE0Rd__lFQOyAA0G0VyAA4TextVG_AA010BorderlessgE0VQo_HOTm(uint64_t a1, void (*a2)(uint64_t), unint64_t *a3, void (*a4)(uint64_t))
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7CA2C8);
  a2(255);
  sub_1D417645C(&qword_1EDE32B00, &qword_1EC7CA2C8);
  sub_1D43204C8(a3, a4);
  return swift_getOpaqueTypeConformance2();
}

uint64_t get_witness_table_qd__7SwiftUI4ViewHD2_AaBPAAE17hyphenationFactoryQr12CoreGraphics7CGFloatVFQOyAA15ModifiedContentVyAIyAA4TextVAA30_EnvironmentKeyWritingModifierVyAA0K9AlignmentOGGAA16_FixedSizeLayoutVG_Qo_HOTm(uint64_t a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
  a4();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1D4320B40()
{
  v0 = sub_1D44181B4();
  __swift_allocate_value_buffer(v0, qword_1EDE32C80);
  __swift_project_value_buffer(v0, qword_1EDE32C80);
  return sub_1D4418154();
}

uint64_t sub_1D4320C64(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR___ICDocumentMergeController_textViewsToReasonCounts;
  swift_beginAccess();
  v5 = sub_1D4186AFC(a1);
  if ((v6 & 1) == 0)
  {
    return swift_endAccess();
  }

  v7 = v5;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *&v1[v4];
  v15 = *&v2[v4];
  *&v2[v4] = 0x8000000000000000;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1D42D4D08();
    v9 = v15;
  }

  sub_1D43223EC(v7, v9);
  *&v2[v4] = v9;
  swift_endAccess();

  v11 = *&v2[OBJC_IVAR___ICDocumentMergeController_requestedMergeBlock];
  if (v11)
  {
    v12 = *&v2[OBJC_IVAR___ICDocumentMergeController_requestedMergeBlock + 8];

    if (([v2 isBlockingMerge] & 1) == 0)
    {
      aBlock[4] = v11;
      aBlock[5] = v12;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1D417BEE4;
      aBlock[3] = &block_descriptor_5_0;
      v13 = _Block_copy(aBlock);

      [v2 requestMergeWithBlock_];
      _Block_release(v13);
    }

    return sub_1D4320B20(v11);
  }

  return result;
}

void sub_1D4320E9C()
{
  v1 = [v0 parentController];
  if (!v1 || (v2 = [v1 isBlockingMerge], swift_unknownObjectRelease(), (v2 & 1) == 0))
  {
    v3 = OBJC_IVAR___ICDocumentMergeController_textViewsToReasonCounts;
    swift_beginAccess();
    v4 = *&v0[v3];
    v5 = 1 << *(v4 + 32);
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    else
    {
      v6 = -1;
    }

    v7 = v6 & *(v4 + 64);
    v8 = (v5 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v9 = 0;
LABEL_8:
    if (!v7)
    {
      while (1)
      {
        v10 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_31;
        }

        if (v10 >= v8)
        {
          goto LABEL_29;
        }

        v7 = *(v4 + 64 + 8 * v10);
        ++v9;
        if (v7)
        {
          goto LABEL_13;
        }
      }
    }

    v10 = v9;
LABEL_13:
    v11 = (v10 << 9) | (8 * __clz(__rbit64(v7)));
    v12 = *(*(v4 + 56) + v11);
    v13 = *(*(v4 + 48) + v11);

    v14 = [v13 markedTextRange];
    if (!v14)
    {
      v15 = 0;
      v7 &= v7 - 1;
      v16 = 1 << *(v12 + 32);
      if (v16 < 64)
      {
        v17 = ~(-1 << v16);
      }

      else
      {
        v17 = -1;
      }

      v18 = v17 & *(v12 + 64);
      v19 = (v16 + 63) >> 6;
      while (v18)
      {
        v20 = v15;
LABEL_24:
        v21 = __clz(__rbit64(v18));
        v18 &= v18 - 1;
        if (*(*(v12 + 56) + ((v20 << 9) | (8 * v21))) >= 1)
        {

          goto LABEL_28;
        }
      }

      while (1)
      {
        v20 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v20 >= v19)
        {

          v9 = v10;
          goto LABEL_8;
        }

        v18 = *(v12 + 64 + 8 * v20);
        ++v15;
        if (v18)
        {
          v15 = v20;
          goto LABEL_24;
        }
      }

      __break(1u);
LABEL_31:
      __break(1u);
      return;
    }

    v22 = v14;

    v13 = v22;
LABEL_28:

LABEL_29:
  }
}

uint64_t sub_1D43210DC(uint64_t a1, void *a2)
{
  v3 = v2;
  if (qword_1EDE32C78 != -1)
  {
    swift_once();
  }

  v6 = sub_1D44181B4();
  __swift_project_value_buffer(v6, qword_1EDE32C80);
  v7 = sub_1D44181A4();
  v8 = sub_1D441A154();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v38[0] = v10;
    *v9 = 136315138;
    v11 = ICStringForDocumentMergeControllingReason();
    v12 = sub_1D4419C54();
    v14 = v13;

    v15 = sub_1D42E9410(v12, v14, v38);

    *(v9 + 4) = v15;
    _os_log_impl(&dword_1D4171000, v7, v8, "Beginning blocking merge… {reason: %s}", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x1DA6D8690](v10, -1, -1);
    MEMORY[0x1DA6D8690](v9, -1, -1);
  }

  v16 = OBJC_IVAR___ICDocumentMergeController_textViewsToReasonCounts;
  swift_beginAccess();
  v17 = *(v3 + v16);
  if (*(v17 + 16) && (v18 = sub_1D4186AFC(a2), (v19 & 1) != 0))
  {
    v20 = *(*(v17 + 56) + 8 * v18);
  }

  else
  {
    v20 = sub_1D41868BC(MEMORY[0x1E69E7CC0]);
  }

  swift_endAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v38[0] = v20;
  v22 = sub_1D42D0138(a1);
  v24 = v20[2];
  v25 = (v23 & 1) == 0;
  v26 = __OFADD__(v24, v25);
  v27 = v24 + v25;
  if (v26)
  {
    __break(1u);
    goto LABEL_19;
  }

  v8 = v23;
  if (v20[3] < v27)
  {
    sub_1D42D1820(v27, isUniquelyReferenced_nonNull_native);
    v20 = v38[0];
    v22 = sub_1D42D0138(a1);
    if ((v8 & 1) == (v28 & 1))
    {
      goto LABEL_14;
    }

    type metadata accessor for __ICDocumentMergeControllingReason(0);
    v22 = sub_1D441ADE4();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_14:
  if (v8)
  {
    goto LABEL_16;
  }

LABEL_15:
  v29 = v22;
  sub_1D4186F2C(v22, a1, 0, v20);
  v22 = v29;
LABEL_16:
  while (1)
  {
    v30 = v20[7];
    v31 = *(v30 + 8 * v22);
    v26 = __OFADD__(v31, 1);
    v32 = v31 + 1;
    if (!v26)
    {
      break;
    }

LABEL_19:
    __break(1u);
LABEL_20:
    v36 = v22;
    sub_1D42D4E6C();
    v22 = v36;
    v20 = v38[0];
    if ((v8 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  *(v30 + 8 * v22) = v32;
  swift_beginAccess();
  v33 = a2;
  v34 = swift_isUniquelyReferenced_nonNull_native();
  v37 = *(v3 + v16);
  *(v3 + v16) = 0x8000000000000000;
  sub_1D41869B4(v20, v33, v34);

  *(v3 + v16) = v37;
  return swift_endAccess();
}

uint64_t sub_1D432145C(uint64_t a1, void *a2)
{
  v3 = v2;
  if (qword_1EDE32C78 != -1)
  {
    swift_once();
  }

  v6 = sub_1D44181B4();
  __swift_project_value_buffer(v6, qword_1EDE32C80);
  v7 = sub_1D44181A4();
  v8 = sub_1D441A154();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    aBlock[0] = v10;
    *v9 = 136315138;
    v11 = ICStringForDocumentMergeControllingReason();
    v12 = sub_1D4419C54();
    v14 = v13;

    v15 = sub_1D42E9410(v12, v14, aBlock);

    *(v9 + 4) = v15;
    _os_log_impl(&dword_1D4171000, v7, v8, "Ending blocking merge… {reason: %s}", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x1DA6D8690](v10, -1, -1);
    MEMORY[0x1DA6D8690](v9, -1, -1);
  }

  v16 = OBJC_IVAR___ICDocumentMergeController_textViewsToReasonCounts;
  swift_beginAccess();
  v17 = *&v3[v16];
  if (*(v17 + 16) && (v18 = sub_1D4186AFC(a2), (v19 & 1) != 0))
  {
    v20 = *(*(v17 + 56) + 8 * v18);
  }

  else
  {
    v20 = sub_1D41868BC(MEMORY[0x1E69E7CC0]);
  }

  result = swift_endAccess();
  v22 = *(v20 + 16);
  if (v22)
  {
    result = sub_1D42D0138(a1);
    if (v23)
    {
      v22 = *(*(v20 + 56) + 8 * result);
    }

    else
    {
      v22 = 0;
    }
  }

  v24 = __OFSUB__(v22, 1);
  v25 = v22 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    v26 = v25 & ~(v25 >> 63);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    aBlock[0] = v20;
    sub_1D432E01C(v26, a1, isUniquelyReferenced_nonNull_native);
    v28 = aBlock[0];
    swift_beginAccess();

    v29 = a2;
    v30 = swift_isUniquelyReferenced_nonNull_native();
    v35 = *&v3[v16];
    *&v3[v16] = 0x8000000000000000;
    sub_1D41869B4(v28, v29, v30);

    *&v3[v16] = v35;
    swift_endAccess();
    v31 = *&v3[OBJC_IVAR___ICDocumentMergeController_requestedMergeBlock];
    if (v31)
    {
      v32 = *&v3[OBJC_IVAR___ICDocumentMergeController_requestedMergeBlock + 8];

      if (([v3 isBlockingMerge] & 1) == 0)
      {
        aBlock[4] = v31;
        aBlock[5] = v32;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1D417BEE4;
        aBlock[3] = &block_descriptor_7;
        v33 = _Block_copy(aBlock);

        [v3 requestMergeWithBlock_];
        _Block_release(v33);
      }

      sub_1D4320B20(v31);
    }
  }

  return result;
}

id ICDocumentMergeController.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

{
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR___ICDocumentMergeController_textViewsToReasonCounts;
  *&v0[v1] = sub_1D418666C(MEMORY[0x1E69E7CC0]);
  v2 = &v0[OBJC_IVAR___ICDocumentMergeController_requestedMergeBlock];
  *v2 = 0;
  *(v2 + 1) = 0;
  v4.receiver = v0;
  v4.super_class = ICDocumentMergeController;
  return objc_msgSendSuper2(&v4, sel_init);
}

unint64_t sub_1D4321A5C(int64_t a1, uint64_t a2)
{
  v40 = sub_1D4417494();
  v4 = *(v40 - 8);
  result = MEMORY[0x1EEE9AC00](v40);
  v39 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v41 = v6;
    v12 = sub_1D441A834();
    v13 = v40;
    v6 = v41;
    v14 = v11;
    v38 = (v12 + 1) & v11;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v36 = a2 + 64;
    v37 = v16;
    v17 = *(v15 + 56);
    v35 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v10;
      v20 = v39;
      v21 = v14;
      v22 = v15;
      v37(v39, *(v6 + 48) + v17 * v10, v13);
      sub_1D417A7EC(&qword_1EDE33D40, MEMORY[0x1E69695A8]);
      v23 = sub_1D4419B84();
      result = (*v35)(v20, v13);
      v14 = v21;
      v24 = v23 & v21;
      if (a1 >= v38)
      {
        if (v24 >= v38 && a1 >= v24)
        {
LABEL_15:
          v6 = v41;
          v27 = *(v41 + 48);
          result = v27 + v18 * a1;
          v15 = v22;
          if (v18 * a1 < v19 || (v17 = v18, result >= v27 + v19 + v18))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v6 = v41;
            v17 = v18;
            v14 = v21;
            v8 = v36;
          }

          else
          {
            v8 = v36;
            if (v18 * a1 != v19)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v6 = v41;
              v17 = v18;
              v14 = v21;
            }
          }

          v28 = *(v6 + 56);
          v29 = (v28 + a1);
          v30 = (v28 + v10);
          if (a1 != v10 || v29 >= v30 + 1)
          {
            *v29 = *v30;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v38 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v8 = v36;
      v17 = v18;
      v6 = v41;
LABEL_4:
      v10 = (v10 + 1) & v14;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v31 = *(v6 + 16);
  v32 = __OFSUB__(v31, 1);
  v33 = v31 - 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v33;
    ++*(v6 + 36);
  }

  return result;
}

unint64_t sub_1D4321D7C(int64_t a1, uint64_t a2)
{
  v40 = sub_1D4417494();
  v4 = *(v40 - 8);
  result = MEMORY[0x1EEE9AC00](v40);
  v39 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v41 = v6;
    v12 = sub_1D441A834();
    v13 = v40;
    v6 = v41;
    v14 = v11;
    v38 = (v12 + 1) & v11;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v36 = a2 + 64;
    v37 = v16;
    v17 = *(v15 + 56);
    v35 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v10;
      v20 = v39;
      v21 = v14;
      v22 = v15;
      v37(v39, *(v6 + 48) + v17 * v10, v13);
      sub_1D417A7EC(&qword_1EDE33D40, MEMORY[0x1E69695A8]);
      v23 = sub_1D4419B84();
      result = (*v35)(v20, v13);
      v14 = v21;
      v24 = v23 & v21;
      if (a1 >= v38)
      {
        if (v24 >= v38 && a1 >= v24)
        {
LABEL_15:
          v6 = v41;
          v27 = *(v41 + 48);
          result = v27 + v18 * a1;
          v15 = v22;
          if (v18 * a1 < v19 || (v17 = v18, result >= v27 + v19 + v18))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v6 = v41;
            v17 = v18;
            v14 = v21;
            v8 = v36;
          }

          else
          {
            v8 = v36;
            if (v18 * a1 != v19)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v6 = v41;
              v17 = v18;
              v14 = v21;
            }
          }

          v28 = *(v6 + 56);
          v29 = (v28 + 16 * a1);
          v30 = (v28 + 16 * v10);
          if (a1 != v10 || v29 >= v30 + 1)
          {
            *v29 = *v30;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v38 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v8 = v36;
      v17 = v18;
      v6 = v41;
LABEL_4:
      v10 = (v10 + 1) & v14;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v31 = *(v6 + 16);
  v32 = __OFSUB__(v31, 1);
  v33 = v31 - 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v33;
    ++*(v6 + 36);
  }

  return result;
}

unint64_t sub_1D432209C(int64_t a1, uint64_t a2)
{
  v4 = sub_1D4417494();
  v5 = *(v4 - 8);
  result = MEMORY[0x1EEE9AC00](v4);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v41 = a2;
    v12 = ~v10;
    v13 = sub_1D441A834();
    v14 = v12;
    a2 = v41;
    v40 = (v13 + 1) & v14;
    v16 = *(v5 + 16);
    v15 = v5 + 16;
    v38 = v9;
    v39 = v16;
    v17 = *(v15 + 56);
    v37 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v11;
      v20 = v14;
      v21 = v15;
      v39(v8, *(a2 + 48) + v17 * v11, v4);
      sub_1D417A7EC(&qword_1EDE33D40, MEMORY[0x1E69695A8]);
      v22 = sub_1D4419B84();
      result = (*v37)(v8, v4);
      v14 = v20;
      v23 = v22 & v20;
      if (a1 >= v40)
      {
        if (v23 >= v40 && a1 >= v23)
        {
LABEL_15:
          v15 = v21;
          if (v18 * a1 < v19 || *(v41 + 48) + v18 * a1 >= (*(v41 + 48) + v19 + v18))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v18 * a1 != v19)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v41;
          v26 = *(v41 + 56);
          v27 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7CA4F0) - 8) + 72);
          v28 = v27 * a1;
          result = v26 + v27 * a1;
          v29 = v27 * v11;
          v30 = v26 + v27 * v11 + v27;
          if (v28 < v29 || result >= v30)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v11;
            v9 = v38;
            v14 = v20;
          }

          else
          {
            a1 = v11;
            v32 = v28 == v29;
            v9 = v38;
            v14 = v20;
            if (!v32)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v14 = v20;
              a1 = v11;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v40 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v15 = v21;
      v9 = v38;
      a2 = v41;
LABEL_4:
      v11 = (v11 + 1) & v14;
      v17 = v18;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v33 = *(a2 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v35;
    ++*(a2 + 36);
  }

  return result;
}

void sub_1D43223EC(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1D441A834() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      v10 = sub_1D441A5D4();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = *(a2 + 48);
          v15 = (v14 + 8 * v3);
          v16 = (v14 + 8 * v6);
          if (v3 != v6 || v15 >= v16 + 1)
          {
            *v15 = *v16;
          }

          v17 = *(a2 + 56);
          v18 = (v17 + 8 * v3);
          v19 = (v17 + 8 * v6);
          if (v3 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }
}

uint64_t sub_1D4322578(int64_t a1, uint64_t a2)
{
  v4 = sub_1D44196C4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v38 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7CA3B0);
  result = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v36 - v9;
  v11 = a2 + 64;
  v12 = -1 << *(a2 + 32);
  v13 = (a1 + 1) & ~v12;
  if ((*(a2 + 64 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    v15 = (sub_1D441A834() + 1) & ~v12;
    v40 = (v5 + 48);
    v36 = (v5 + 8);
    v37 = (v5 + 32);
    do
    {
      v16 = *(*(a2 + 48) + 8 * v13);
      sub_1D441AEB4();

      sub_1D441A424();
      sub_1D430A294(v16 + OBJC_IVAR____TtCE7NotesUICSo29ICCalculateDocumentController5Index_paperKitIndex, v10);
      if ((*v40)(v10, 1, v4) == 1)
      {
        sub_1D441AED4();
      }

      else
      {
        v17 = *v37;
        v39 = a1;
        v18 = a2;
        v19 = v15;
        v20 = v14;
        v21 = v11;
        v22 = v4;
        v23 = v38;
        v17(v38, v10, v22);
        sub_1D441AED4();
        sub_1D417A7EC(&qword_1EC7CA4C0, MEMORY[0x1E69782D8]);
        sub_1D4419B94();
        v24 = v23;
        v4 = v22;
        v11 = v21;
        v14 = v20;
        v15 = v19;
        a2 = v18;
        a1 = v39;
        (*v36)(v24, v4);
      }

      v25 = sub_1D441AF04();

      v26 = v25 & v14;
      if (a1 >= v15)
      {
        if (v26 < v15)
        {
          goto LABEL_4;
        }
      }

      else if (v26 >= v15)
      {
        goto LABEL_13;
      }

      if (a1 >= v26)
      {
LABEL_13:
        v27 = *(a2 + 48);
        v28 = (v27 + 8 * a1);
        v29 = (v27 + 8 * v13);
        if (a1 != v13 || v28 >= v29 + 1)
        {
          *v28 = *v29;
        }

        v30 = *(a2 + 56);
        v31 = (v30 + 8 * a1);
        v32 = (v30 + 8 * v13);
        if (a1 != v13 || v31 >= v32 + 1)
        {
          *v31 = *v32;
          a1 = v13;
        }
      }

LABEL_4:
      v13 = (v13 + 1) & v14;
    }

    while (((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  *(v11 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v33 = *(a2 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v35;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1D4322920(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1D441A834() + 1) & ~v5;
    do
    {
      sub_1D441AEB4();

      sub_1D4419CD4();
      v9 = sub_1D441AF04();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1D4322AE4(char *a1, void (**a2)(void))
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  _Block_copy(a2);
  if ([a1 isBlockingMerge])
  {
    if (qword_1EDE32C78 != -1)
    {
      swift_once();
    }

    v5 = sub_1D44181B4();
    __swift_project_value_buffer(v5, qword_1EDE32C80);
    v6 = sub_1D44181A4();
    v7 = sub_1D441A154();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1D4171000, v6, v7, "Retaining merge block…", v8, 2u);
      MEMORY[0x1DA6D8690](v8, -1, -1);
    }

    v9 = &a1[OBJC_IVAR___ICDocumentMergeController_requestedMergeBlock];
    v10 = *&a1[OBJC_IVAR___ICDocumentMergeController_requestedMergeBlock];
    *v9 = sub_1D4322D30;
    v9[1] = v4;

    return sub_1D4320B20(v10);
  }

  else
  {
    if (qword_1EDE32C78 != -1)
    {
      swift_once();
    }

    v12 = sub_1D44181B4();
    __swift_project_value_buffer(v12, qword_1EDE32C80);
    v13 = sub_1D44181A4();
    v14 = sub_1D441A154();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1D4171000, v13, v14, "Performing merge block…", v15, 2u);
      MEMORY[0x1DA6D8690](v15, -1, -1);
    }

    a2[2](a2);
    v16 = &a1[OBJC_IVAR___ICDocumentMergeController_requestedMergeBlock];
    v17 = *&a1[OBJC_IVAR___ICDocumentMergeController_requestedMergeBlock];
    *v16 = 0;
    *(v16 + 1) = 0;
    sub_1D4320B20(v17);
  }
}

unint64_t sub_1D4322D38()
{
  result = qword_1EDE329F8;
  if (!qword_1EDE329F8)
  {
    sub_1D41766C0(255, &qword_1EDE32A00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE329F8);
  }

  return result;
}

uint64_t sub_1D4322DD4(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {

    v2 = sub_1D441AB94();

    if (v2)
    {
      _s14CanvasDocumentCMa();
      swift_dynamicCast();
      return v5;
    }
  }

  else if (*(a2 + 16))
  {
    sub_1D42D01A4(a1);
    if (v4)
    {
    }
  }

  return 0;
}

uint64_t sub_1D4322EB8(void *a1, uint64_t a2, void (*a3)(void))
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v4 = a1;
    v5 = sub_1D441AB94();

    if (v5)
    {
      a3(0);
      swift_dynamicCast();
      return v8;
    }
  }

  else if (*(a2 + 16))
  {
    sub_1D42D04F8(a1);
    if (v7)
    {
    }
  }

  return 0;
}

uint64_t sub_1D4322F78()
{
  v0 = sub_1D44181B4();
  __swift_allocate_value_buffer(v0, qword_1EDE32D10);
  __swift_project_value_buffer(v0, qword_1EDE32D10);
  return sub_1D4418164();
}

uint64_t sub_1D4322FC4()
{
  v0 = sub_1D44181B4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D44180A4();
  __swift_allocate_value_buffer(v4, qword_1EDE335F8);
  __swift_project_value_buffer(v4, qword_1EDE335F8);
  if (qword_1EDE32D00 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_1EDE32D10);
  (*(v1 + 16))(v3, v5, v0);
  return sub_1D4418084();
}

id ICCalculateDocumentController.init(note:)(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithNote_];

  return v2;
}

id sub_1D4323224()
{
  v1 = OBJC_IVAR___ICCalculateDocumentController____lazy_storage___updateDelayer;
  v2 = *(v0 + OBJC_IVAR___ICCalculateDocumentController____lazy_storage___updateDelayer);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___ICCalculateDocumentController____lazy_storage___updateDelayer);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69B7AB0]) initWithTarget:v0 selector:sel_performUpdate delay:1 waitToFireUntilRequestsStop:0 callOnMainThread:0.5];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_1D43232B4()
{
  v1 = [v0 note];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 textStorage];

    if (v3)
    {
      v4 = [v0 note];
      if (v4)
      {
        v5 = v4;
        v6 = [v4 textStorage];

        if (v6)
        {
          v7 = [v6 textViews];

          sub_1D41766C0(0, &qword_1EDE32A00);
          sub_1D4322D38();
          v8 = sub_1D441A064();

          if ((v8 & 0xC000000000000001) != 0)
          {
            swift_unknownObjectRetain();
            sub_1D441A874();
            sub_1D441A0A4();
            v10 = v33;
            v9 = v34;
            v11 = v35;
            v12 = v36;
            v13 = v37;
          }

          else
          {
            v14 = -1 << *(v8 + 32);
            v9 = v8 + 56;
            v11 = ~v14;
            v15 = -v14;
            if (v15 < 64)
            {
              v16 = ~(-1 << v15);
            }

            else
            {
              v16 = -1;
            }

            v13 = v16 & *(v8 + 56);

            v12 = 0;
            v10 = v8;
          }

          v17 = (v11 + 64) >> 6;
          if ((v10 & 0x8000000000000000) == 0)
          {
            goto LABEL_16;
          }

LABEL_13:
          if (sub_1D441A8F4() && (swift_dynamicCast(), v18 = v32, v19 = v12, v20 = v13, v32))
          {
            while (([v18 isFirstResponder] & 1) == 0)
            {

              v12 = v19;
              v13 = v20;
              if (v10 < 0)
              {
                goto LABEL_13;
              }

LABEL_16:
              v21 = v12;
              v22 = v13;
              v19 = v12;
              if (!v13)
              {
                while (1)
                {
                  v19 = v21 + 1;
                  if (__OFADD__(v21, 1))
                  {
                    break;
                  }

                  if (v19 >= v17)
                  {
                    goto LABEL_24;
                  }

                  v22 = *(v9 + 8 * v19);
                  ++v21;
                  if (v22)
                  {
                    goto LABEL_20;
                  }
                }

                __break(1u);
                return;
              }

LABEL_20:
              v20 = (v22 - 1) & v22;
              v18 = *(*(v10 + 48) + ((v19 << 9) | (8 * __clz(__rbit64(v22)))));
              if (!v18)
              {
                goto LABEL_24;
              }
            }

            sub_1D419FA48();

            v3 = v3;
            v23 = [v3 string];
            sub_1D4419C54();

            [v18 selectedRange];
            v24 = sub_1D4419C94();
            v26 = v25;
            v28 = v27;

            if (v28)
            {

              goto LABEL_27;
            }

            v29 = [v3 string];

            if (!v29)
            {
              sub_1D4419C54();
              v29 = sub_1D4419C14();
            }

            v30 = [v29 ic:v24 substringWithRange:v26];

            sub_1D4419C54();
            v31 = [objc_opt_self() ic_equalsSignCharacterString];
            sub_1D4419C54();

            sub_1D42CC920();
            sub_1D441A7F4();
          }

          else
          {
LABEL_24:
            sub_1D419FA48();
          }
        }

        else
        {
        }
      }

      else
      {
LABEL_27:
      }
    }
  }
}

Swift::Void __swiftcall ICCalculateDocumentController.cancelUpdate()()
{
  v1 = sub_1D4323224();
  [v1 cancelPreviousFireRequests];

  v2 = *(v0 + OBJC_IVAR___ICCalculateDocumentController_currentScanRequest);
  if (v2)
  {

    [v2 cancel];
  }
}

void sub_1D43237D4()
{
  v1 = [v0 note];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 managedObjectContext];

    if (v3)
    {
      v4 = swift_allocObject();
      *(v4 + 16) = v0;
      v7[4] = sub_1D432FE80;
      v7[5] = v4;
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 1107296256;
      v7[2] = sub_1D417BEE4;
      v7[3] = &block_descriptor_45_0;
      v5 = _Block_copy(v7);
      v6 = v0;

      [v3 performBlock_];
      _Block_release(v5);
    }
  }
}

void sub_1D43238EC(unsigned __int8 *a1)
{
  v2 = OBJC_IVAR___ICCalculateDocumentController_nextUpdateAffectsChangeCounts;
  v3 = a1[OBJC_IVAR___ICCalculateDocumentController_nextUpdateAffectsChangeCounts];
  v5[4] = nullsub_3;
  v5[5] = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 1107296256;
  v5[2] = sub_1D43239B0;
  v5[3] = &block_descriptor_48;
  v4 = _Block_copy(v5);
  [a1 updateAffectingChangeCounts:v3 completion:v4];
  _Block_release(v4);
  a1[v2] = 0;
}

uint64_t sub_1D43239B0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

Swift::Bool __swiftcall ICCalculateDocumentController.update(affectChangeCounts:)(Swift::Bool affectChangeCounts)
{
  if (v1[OBJC_IVAR___ICCalculateDocumentController_needsDocumentUpdate] != 1)
  {
    return 0;
  }

  [v1 cancelUpdate];
  sub_1D4188AD8(&OBJC_IVAR___ICCalculateDocumentController____lazy_storage___scanner, _s7ScannerCMa, 48, sub_1D4308BB4);
  v3 = sub_1D4307204(0, 0, 1);

  v4 = sub_1D4323B3C(affectChangeCounts, v3);

  return v4 & 1;
}

uint64_t sub_1D4323B3C(int a1, int64_t *a2)
{
  v184 = a2;
  LODWORD(v180) = a1;
  v196 = *MEMORY[0x1E69E9840];
  v3 = sub_1D44175B4();
  v172 = *(v3 - 8);
  v4 = MEMORY[0x1EEE9AC00](v3);
  v174 = &v165 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v168 = &v165 - v7;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v177 = &v165 - v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v171 = &v165 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v166 = &v165 - v12;
  v183 = sub_1D4417494();
  v175 = *(v183 - 8);
  v13 = MEMORY[0x1EEE9AC00](v183);
  v182 = &v165 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v181 = (&v165 - v15);
  v16 = sub_1D4418074();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v165 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v165 - v21;
  v23 = OBJC_IVAR___ICCalculateDocumentController_updating;
  v2[OBJC_IVAR___ICCalculateDocumentController_updating] = 1;
  v185 = v2;
  v24 = [v2 note];
  if (v24)
  {
    v25 = v24;
    v26 = [v24 calculateAccessibilityController];

    if (v26)
    {
      if (UIAccessibilityIsVoiceOverRunning() || UIAccessibilityIsSwitchControlRunning())
      {
        sub_1D438B610();
      }
    }
  }

  v178 = v3;
  if (qword_1EDE335E8 != -1)
  {
LABEL_73:
    swift_once();
  }

  v27 = sub_1D44180A4();
  __swift_project_value_buffer(v27, qword_1EDE335F8);
  sub_1D4418064();
  v28 = sub_1D4418094();
  v29 = sub_1D441A3D4();
  if (sub_1D441A764())
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    v31 = sub_1D4418054();
    _os_signpost_emit_with_name_impl(&dword_1D4171000, v28, v29, v31, "updateDocument(affectChangeCounts:from:)", "", v30, 2u);
    MEMORY[0x1DA6D8690](v30, -1, -1);
  }

  (*(v17 + 16))(v20, v22, v16);
  sub_1D44180E4();
  swift_allocObject();
  v167 = sub_1D44180D4();
  v32 = *(v17 + 8);
  v17 += 8;
  v32(v22, v16);
  sub_1D4189834();
  v33 = sub_1D4419974();

  v34 = v33;
  v16 = 0;
  v35 = sub_1D432E440(v34);
  v179 = 0;
  v36 = sub_1D43FCF0C(v35);

  v170 = v23;
  if (v36 < 0 || (v36 & 0x4000000000000000) != 0)
  {
    v187 = sub_1D441A8C4();
  }

  else
  {
    v187 = *(v36 + 16);
  }

  v37 = 0;
  v173 = v172;
  v20 = (v36 & 0xC000000000000001);
  v186 = MEMORY[0x1E69E7CC0];
  while (v187 != v37)
  {
    if (v20)
    {
      v39 = MEMORY[0x1DA6D6410](v37, v36);
      v22 = v37 + 1;
      if (__OFADD__(v37, 1))
      {
        goto LABEL_70;
      }
    }

    else
    {
      if (v37 >= *(v36 + 16))
      {
        goto LABEL_71;
      }

      v39 = *(v36 + 8 * v37 + 32);

      v22 = v37 + 1;
      if (__OFADD__(v37, 1))
      {
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
        goto LABEL_73;
      }
    }

    v16 = v39 + OBJC_IVAR____TtCE7NotesUICSo29ICCalculateDocumentController5Index_cachedRange;
    if (*(v39 + OBJC_IVAR____TtCE7NotesUICSo29ICCalculateDocumentController5Index_cachedRange + 16))
    {
      Strong = swift_unknownObjectWeakLoadStrong();

      if (Strong)
      {
        v41 = [Strong mergeableString];

        v42 = sub_1D441A3E4();
        v43 = v42;
        v44 = *(v42 + 16);
        v38 = v44 == 0;
        if (v44)
        {
          v23 = *(v43 + 32);
          v17 = *(v43 + 40);
        }

        else
        {
          v23 = 0;
          v17 = 0;
        }
      }

      else
      {
        v23 = 0;
        v17 = 0;
        v38 = 1;
      }

      *v16 = v23;
      *(v16 + 8) = v17;
      *(v16 + 16) = v38;

      ++v37;
      if (!v38)
      {
        goto LABEL_27;
      }
    }

    else
    {
      v23 = *v16;

LABEL_27:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v186 = sub_1D438D090(0, *(v186 + 2) + 1, 1, v186);
      }

      v16 = *(v186 + 2);
      v45 = *(v186 + 3);
      if (v16 >= v45 >> 1)
      {
        v186 = sub_1D438D090((v45 > 1), v16 + 1, 1, v186);
      }

      v46 = v186;
      *(v186 + 2) = v16 + 1;
      *&v46[8 * v16 + 32] = v23;
      v37 = v22;
    }
  }

  v47 = MEMORY[0x1E69E7CC0];
  v191 = MEMORY[0x1E69E7CC0];
  if (!v187)
  {
    goto LABEL_52;
  }

  v22 = 0;
  v17 = 1;
  while (2)
  {
    if (v20)
    {
      v50 = MEMORY[0x1DA6D6410](v22, v36);
      v23 = (v22 + 1);
      if (__OFADD__(v22, 1))
      {
        goto LABEL_50;
      }

LABEL_43:
      v16 = v50 + OBJC_IVAR____TtCE7NotesUICSo29ICCalculateDocumentController5Index_cachedRange;
      if (*(v50 + OBJC_IVAR____TtCE7NotesUICSo29ICCalculateDocumentController5Index_cachedRange + 16) == 1)
      {
        v51 = swift_unknownObjectWeakLoadStrong();
        if (!v51)
        {
LABEL_47:
          *v16 = 0;
          *(v16 + 8) = 0;
          *(v16 + 16) = 1;

LABEL_39:
          ++v22;
          if (v23 == v187)
          {
            goto LABEL_51;
          }

          continue;
        }

        v52 = v51;
        v53 = [v51 mergeableString];

        v54 = sub_1D441A3E4();
        v55 = v54;
        if (!*(v54 + 16))
        {

          goto LABEL_47;
        }

        v48 = *(v54 + 32);
        v49 = *(v55 + 40);

        *v16 = v48;
        *(v16 + 8) = v49;
        *(v16 + 16) = 0;
      }

      sub_1D441AA94();
      sub_1D441AAC4();
      sub_1D441AAD4();
      sub_1D441AAA4();
      goto LABEL_39;
    }

    break;
  }

  if (v22 >= *(v36 + 16))
  {
    goto LABEL_72;
  }

  v50 = *(v36 + 8 * v22 + 32);

  v23 = (v22 + 1);
  if (!__OFADD__(v22, 1))
  {
    goto LABEL_43;
  }

LABEL_50:
  __break(1u);
LABEL_51:
  v47 = v191;
LABEL_52:

  v57 = v179;
  v187 = sub_1D4325794(v56, v47);
  v58 = v184;
  v59 = v184[2];
  v60 = MEMORY[0x1E69E7CC0];
  if (v59)
  {
    v191 = MEMORY[0x1E69E7CC0];
    sub_1D43CF16C(0, v59, 0);
    v60 = v191;
    v61 = *(v191 + 16);
    v62 = (v58 + 40);
    do
    {
      v64 = *v62;
      v62 += 5;
      v63 = v64;
      v191 = v60;
      v65 = *(v60 + 24);
      if (v61 >= v65 >> 1)
      {
        sub_1D43CF16C((v65 > 1), v61 + 1, 1);
        v60 = v191;
      }

      *(v60 + 16) = v61 + 1;
      *(v60 + 8 * v61++ + 32) = v63;
      --v59;
    }

    while (v59);
    v58 = v184;
  }

  v66 = sub_1D4325880(v60, v58);
  v67 = v185;
  v68 = sub_1D4189834();
  v179 = &v165;
  MEMORY[0x1EEE9AC00](v68);
  v70 = v186;
  v69 = v187;
  *(&v165 - 6) = v67;
  *(&v165 - 5) = v70;
  *(&v165 - 4) = v60;
  *(&v165 - 3) = v69;
  *(&v165 - 2) = v36;
  *(&v165 - 1) = v66;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7CA4D0);
  sub_1D4419984();
  v184 = v57;

  v71 = v192;
  v165 = v191;
  v169 = v193;
  v186 = v192;
  if ((v180 & 1) == 0)
  {
    goto LABEL_95;
  }

  v189 = MEMORY[0x1E69E7CD0];
  v191 = v192;

  sub_1D42EF93C(v72);
  v73 = v191;
  if (v191 >> 62)
  {
    v81 = v191;
    v82 = sub_1D441A8C4();
    v73 = v81;
    v74 = v82;
    if (!v82)
    {
      goto LABEL_76;
    }

LABEL_61:
    if (v74 >= 1)
    {
      v75 = 0;
      v187 = (v73 & 0xC000000000000001);
      v76 = v175 + 1;
      do
      {
        if (v187)
        {
          MEMORY[0x1DA6D6410](v75);
        }

        else
        {
        }

        v77 = v182;
        sub_1D44197D4();
        swift_beginAccess();
        v78 = v181;
        sub_1D417CFFC(v181, v77);
        swift_endAccess();
        (*v76)(v78, v183);
        v79 = sub_1D4419784();
        if (v80)
        {
          sub_1D43C5A30(&v191, v79, v80);
        }

        else
        {
        }

        ++v75;
      }

      while (v74 != v75);
      goto LABEL_76;
    }

    __break(1u);
    goto LABEL_151;
  }

  v74 = *((v191 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v74)
  {
    goto LABEL_61;
  }

LABEL_76:

  sub_1D4189834();
  v83 = MEMORY[0x1DA6D53A0]();

  if (v83 >> 62)
  {
    v84 = sub_1D441A8C4();
    if (!v84)
    {
      goto LABEL_94;
    }

LABEL_78:
    if (v84 >= 1)
    {
      v85 = 0;
      v179 = (v83 & 0xC000000000000001);
      v180 = v189;
      ++v175;
      v176 = OBJC_IVAR___ICCalculateDocumentController_updatingExpressions;
      do
      {
        if (v179)
        {
          v86 = MEMORY[0x1DA6D6410](v85, v83);
        }

        else
        {
          v86 = *(v83 + 8 * v85 + 32);
        }

        v187 = v86;
        v87 = sub_1D4419764();
        v88 = *(v87 + 32);
        v89 = v88 & 0x3F;
        v90 = ((1 << v88) + 63) >> 6;
        v91 = 8 * v90;

        v92 = v180;

        if (v89 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
        {
          v94 = v84;
          MEMORY[0x1EEE9AC00](isStackAllocationSafe);
          bzero(&v165 - ((v91 + 15) & 0x3FFFFFFFFFFFFFF0), v91);
          v95 = v90;
          v96 = v184;
          v97 = sub_1D432EC7C(&v165 - ((v91 + 15) & 0x3FFFFFFFFFFFFFF0), v95, v87, v92);
          if (v96)
          {

            swift_willThrow();

            __break(1u);
LABEL_153:

            result = MEMORY[0x1DA6D8690](v94, -1, -1);
            __break(1u);
            return result;
          }

          v98 = v97;
        }

        else
        {
          v94 = swift_slowAlloc();

          v102 = v90;
          v96 = v184;
          v98 = sub_1D432EB74(v94, v102, v87, v92);

          if (v96)
          {
            goto LABEL_153;
          }

          MEMORY[0x1DA6D8690](v94, -1, -1);
        }

        v184 = 0;
        v99 = v98[2];

        if (v99)
        {
          v100 = v182;
          sub_1D44197D4();
          swift_beginAccess();
          v101 = v181;
          sub_1D417CFFC(v181, v100);
          swift_endAccess();

          (*v175)(v101, v183);
        }

        else
        {
        }

        ++v85;
      }

      while (v84 != v85);
      goto LABEL_94;
    }

LABEL_151:
    __break(1u);
  }

  v84 = *((v83 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v84)
  {
    goto LABEL_78;
  }

LABEL_94:

  v71 = v186;
LABEL_95:
  if (v71 >> 62)
  {
    goto LABEL_148;
  }

  v103 = *((v71 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_97:
  v187 = v185;
  if (v103)
  {
    v104 = 0;
    v105 = v71 & 0xC000000000000001;
    v106 = v71 & 0xFFFFFFFFFFFFFF8;
    do
    {
      if (v105)
      {
        v107 = MEMORY[0x1DA6D6410](v104, v71);
        v108 = v104 + 1;
        if (__OFADD__(v104, 1))
        {
LABEL_109:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v104 >= *(v106 + 16))
        {
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          v103 = sub_1D441A8C4();
          goto LABEL_97;
        }

        v107 = *(v71 + 8 * v104 + 32);

        v108 = v104 + 1;
        if (__OFADD__(v104, 1))
        {
          goto LABEL_109;
        }
      }

      v109 = [v187 note];
      if (v109 && (v110 = v109, v111 = [v109 managedObjectContext], v110, v111))
      {
        v113 = MEMORY[0x1EEE9AC00](v112);
        *(&v165 - 2) = v187;
        *(&v165 - 1) = v107;
        MEMORY[0x1EEE9AC00](v113);
        *(&v165 - 4) = v114;
        *(&v165 - 3) = v107;
        *(&v165 - 2) = v111;
        sub_1D4417DB4();
      }

      else
      {
      }

      ++v104;
      v71 = v186;
    }

    while (v108 != v103);
  }

  v115 = v187;

  sub_1D4189834();
  v116 = sub_1D4419974();

  v117 = v171;
  sub_1D44175A4();
  v118 = *(v173 + 16);
  v173 += 16;
  v179 = v118;
  (v118)(v177, v117, v178);
  v175 = v116;
  v176 = v103;
  if ((v116 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1D441A874();
    _s5IndexCMa();
    sub_1D4183E58(&qword_1EDE325C0, _s5IndexCMa);
    sub_1D441A0A4();
    v116 = v191;
    v119 = v192;
    v120 = v193;
    v121 = v194;
    v71 = v195;
  }

  else
  {
    v122 = -1 << *(v116 + 32);
    v119 = (v116 + 56);
    v120 = ~v122;
    v123 = -v122;
    if (v123 < 64)
    {
      v124 = ~(-1 << v123);
    }

    else
    {
      v124 = -1;
    }

    v71 = v124 & *(v116 + 56);

    v121 = 0;
  }

  v125 = v168;
  v168 = v120;
  v126 = (v120 + 64) >> 6;
  v181 = (v172 + 32);
  v182 = (v172 + 8);
  v180 = v116;
  while (2)
  {
    if ((v116 & 0x8000000000000000) == 0)
    {
      v131 = v121;
      v132 = v71;
      v133 = v121;
      if (!v71)
      {
        while (1)
        {
          v133 = v131 + 1;
          if (__OFADD__(v131, 1))
          {
            break;
          }

          if (v133 >= v126)
          {
            goto LABEL_136;
          }

          v132 = *&v119[8 * v133];
          ++v131;
          if (v132)
          {
            goto LABEL_125;
          }
        }

        __break(1u);
        goto LABEL_146;
      }

LABEL_125:
      v134 = (v132 - 1) & v132;
      v135 = *(*(v116 + 48) + ((v133 << 9) | (8 * __clz(__rbit64(v132)))));

      if (!v135)
      {
        goto LABEL_136;
      }

LABEL_129:
      v183 = v134;
      v137 = v135 + OBJC_IVAR____TtCE7NotesUICSo29ICCalculateDocumentController5Index_cachedRange;
      if (*(v135 + OBJC_IVAR____TtCE7NotesUICSo29ICCalculateDocumentController5Index_cachedRange + 16) == 1)
      {
        v138 = swift_unknownObjectWeakLoadStrong();
        if (v138)
        {
          v139 = v138;
          v140 = [v138 mergeableString];

          v141 = sub_1D441A3E4();
          if (v141[2])
          {
            v71 = v141[4];
            v142 = v141[5];

            v143 = v71;
            *v137 = v71;
            *(v137 + 8) = v142;
            *(v137 + 16) = 0;
            goto LABEL_134;
          }
        }

        *v137 = 0;
        *(v137 + 8) = 0;
        *(v137 + 16) = 1;
        v127 = v177;
        v128 = v178;
        (v179)(v125, v177, v178);

        v129 = v125;
        v130 = *v182;
      }

      else
      {
        v143 = *v137;
        v142 = *(v137 + 8);
LABEL_134:
        if (v142 + v143 < v143)
        {
          goto LABEL_147;
        }

        v144 = v174;
        sub_1D4417554();
        v127 = v177;
        sub_1D4417584();
        v129 = v125;
        v130 = *v182;
        v145 = v144;
        v128 = v178;
        (*v182)(v145, v178);
      }

      v130(v127, v128);
      (*v181)(v127, v129, v128);
      v121 = v133;
      v71 = v183;
      v125 = v129;
      v116 = v180;
      continue;
    }

    break;
  }

  v136 = sub_1D441A8F4();
  if (v136)
  {
    v188 = v136;
    _s5IndexCMa();
    swift_dynamicCast();
    v135 = v189;
    v133 = v121;
    v134 = v71;
    if (v189)
    {
      goto LABEL_129;
    }
  }

LABEL_136:
  sub_1D419FA48();
  v146 = v166;
  v147 = v178;
  (*v181)(v166, v177, v178);

  v148 = *v182;
  (*v182)(v171, v147);
  v149 = sub_1D4417564();
  swift_beginAccess();
  objc_setAssociatedObject(v187, &unk_1EC7CA3C1, v149, 1);
  swift_endAccess();

  v148(v146, v147);
  v150 = v165;
  if (v165 >> 62)
  {
    v151 = sub_1D441A8C4();
  }

  else
  {
    v151 = *((v165 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v152 = v170;
  if (v151 | v176)
  {
LABEL_141:
    v153 = v187;
    sub_1D4188AD8(&OBJC_IVAR___ICCalculateDocumentController____lazy_storage___highlighter, _s11HighlighterCMa, 64, sub_1D4188BA0);
    sub_1D418A1A4();

    v154 = [objc_opt_self() defaultCenter];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9FD8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D4435D30;
    v189 = sub_1D4419C54();
    v190 = v156;
    sub_1D441A954();
    v157 = sub_1D439172C(v150);

    v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7CA4E0);
    *(inited + 96) = v158;
    *(inited + 72) = v157;
    v189 = sub_1D4419C54();
    v190 = v159;
    sub_1D441A954();
    v160 = sub_1D439172C(v186);

    *(inited + 168) = v158;
    *(inited + 144) = v160;
    v189 = sub_1D4419C54();
    v190 = v161;
    sub_1D441A954();
    *(inited + 240) = v158;
    *(inited + 216) = v169;
    sub_1D42EAA6C(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9FE0);
    swift_arrayDestroy();
    v162 = sub_1D4419B54();

    v152 = v170;
    [v154 postNotificationName:@"ICCalculateDocumentControllerDidUpdateDocument" object:v153 userInfo:v162];

    v153[OBJC_IVAR___ICCalculateDocumentController_needsDocumentUpdate] = 0;
    v163 = 1;
    goto LABEL_142;
  }

  if ((v169 & 0xC000000000000001) == 0)
  {
    if (!*(v169 + 16))
    {
      goto LABEL_144;
    }

    goto LABEL_141;
  }

  if (sub_1D441A8C4())
  {
    goto LABEL_141;
  }

LABEL_144:

  v163 = 0;
LABEL_142:
  sub_1D4325508();

  v152[v185] = 0;
  return v163;
}

void ICCalculateDocumentController.update(affectChangeCounts:completion:)(char a1, void (*a2)(void), uint64_t a3)
{
  if (v3[OBJC_IVAR___ICCalculateDocumentController_needsDocumentUpdate] == 1)
  {
    [v3 cancelUpdate];
    sub_1D4188AD8(&OBJC_IVAR___ICCalculateDocumentController____lazy_storage___scanner, _s7ScannerCMa, 48, sub_1D4308BB4);
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    *(v8 + 24) = a1 & 1;
    *(v8 + 32) = a2;
    *(v8 + 40) = a3;

    v9 = sub_1D4307894(0, 0, 1, sub_1D432F5E4, v8);

    v10 = *&v3[OBJC_IVAR___ICCalculateDocumentController_currentScanRequest];
    *&v3[OBJC_IVAR___ICCalculateDocumentController_currentScanRequest] = v9;
  }

  else
  {
    a2(0);
  }
}

uint64_t sub_1D43253EC(int64_t *a1, uint64_t a2, char a3, uint64_t (*a4)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = sub_1D4323B3C(a3 & 1, a1);
  }

  else
  {
    v9 = 0;
  }

  return a4(v9 & 1);
}

uint64_t sub_1D4325508()
{
  v0 = sub_1D44180B4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D4418074();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDE335E8 != -1)
  {
    swift_once();
  }

  v8 = sub_1D44180A4();
  __swift_project_value_buffer(v8, qword_1EDE335F8);
  v9 = sub_1D4418094();
  sub_1D44180C4();
  v10 = sub_1D441A3C4();
  if (sub_1D441A764())
  {

    sub_1D44180F4();

    if ((*(v1 + 88))(v3, v0) == *MEMORY[0x1E69E93E8])
    {
      v11 = "[Error] Interval already ended";
    }

    else
    {
      (*(v1 + 8))(v3, v0);
      v11 = "";
    }

    v12 = swift_slowAlloc();
    *v12 = 0;
    v13 = sub_1D4418054();
    _os_signpost_emit_with_name_impl(&dword_1D4171000, v9, v10, v13, "updateDocument(affectChangeCounts:from:)", v11, v12, 2u);
    MEMORY[0x1DA6D8690](v12, -1, -1);
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1D4325794(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 16);
  if (a2 >> 62)
  {
    v6 = sub_1D441A8C4();
  }

  else
  {
    v6 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v6 < v5)
  {
    v5 = v6;
  }

  if (v5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9830);
    v7 = sub_1D441AC24();
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC8];
  }

  v10 = v7;
  sub_1D432F6F4(a1, a2, 1, &v10);

  v8 = v10;
  if (v2)
  {
  }

  return v8;
}

uint64_t sub_1D4325880(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) >= *(a1 + 16))
  {
    v5 = *(a1 + 16);
  }

  else
  {
    v5 = *(a2 + 16);
  }

  if (v5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7CA510);
    v6 = sub_1D441AC24();
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC8];
  }

  v9 = v6;
  sub_1D432FA18(a1, a2, 1, &v9);

  v7 = v9;
  if (v2)
  {
  }

  return v7;
}

uint64_t sub_1D4325944@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, unint64_t *a7@<X8>)
{
  v8 = v7;
  v210 = a6;
  v212 = a5;
  v193 = a7;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7CA3B0);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v190 = v183 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v206 = v183 - v16;
  v208 = sub_1D441A434();
  v194 = *(v208 - 8);
  v17 = MEMORY[0x1EEE9AC00](v208);
  v189 = v183 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v205 = v183 - v19;
  v20 = sub_1D4417494();
  MEMORY[0x1EEE9AC00](v20 - 8);
  v204 = v183 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v211 = sub_1D44197F4();
  *&v207 = *(v211 - 8);
  MEMORY[0x1EEE9AC00](v211);
  v203 = (v183 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v213 = a1;
  v192 = sub_1D4327308();

  v24 = sub_1D4391898(v23);
  v198 = a2;

  v197 = a3;
  v25 = sub_1D438EE4C(a3, v24);
  v26 = v25;
  v27 = MEMORY[0x1E69E7CC0];
  *&v218 = MEMORY[0x1E69E7CC0];
  v28 = v25 + 56;
  v29 = 1 << *(v25 + 32);
  v30 = -1;
  if (v29 < 64)
  {
    v30 = ~(-1 << v29);
  }

  v31 = v30 & *(v25 + 56);
  v32 = (v29 + 63) >> 6;

  v33 = 0;
  v214 = v27;
  v209 = a4;
  while (v31)
  {
    v34 = v31;
LABEL_10:
    v31 = (v34 - 1) & v34;
    if (*(a4 + 16))
    {
      sub_1D42D03E0(*(*(v26 + 48) + ((v33 << 9) | (8 * __clz(__rbit64(v34))))));
      if (v36)
      {

        MEMORY[0x1DA6D5820](v37);
        if (*((v218 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v218 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D4419E94();
          a4 = v209;
        }

        sub_1D4419EB4();
        v214 = v218;
      }
    }
  }

  while (1)
  {
    v35 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      __break(1u);
LABEL_166:
      __break(1u);
LABEL_167:
      __break(1u);
LABEL_168:
      __break(1u);
LABEL_169:
      __break(1u);
LABEL_170:
      __break(1u);
      goto LABEL_171;
    }

    if (v35 >= v32)
    {
      break;
    }

    v34 = *(v28 + 8 * v35);
    ++v33;
    if (v34)
    {
      v33 = v35;
      goto LABEL_10;
    }
  }

  v28 = v214;
  if (v214 >> 62)
  {
    goto LABEL_175;
  }

  v39 = *((v214 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_17:
  v191 = v8;
  if (!v39)
  {
    v8 = v28 & 0xC000000000000001;
LABEL_33:
    sub_1D4189834();
    v52 = MEMORY[0x1E69E7CC0];
    *&v218 = MEMORY[0x1E69E7CC0];
    v53 = v28 & 0xFFFFFFFFFFFFFF8;

    v54 = 0;
    v196 = v52;
    while (v39 != v54)
    {
      if (v8)
      {
        v28 = MEMORY[0x1DA6D6410](v54, v28);
        v55 = v54 + 1;
        if (__OFADD__(v54, 1))
        {
          goto LABEL_166;
        }
      }

      else
      {
        if (v54 >= *(v53 + 16))
        {
          goto LABEL_167;
        }

        v28 = *(v28 + 8 * v54 + 32);

        v55 = v54 + 1;
        if (__OFADD__(v54, 1))
        {
          goto LABEL_166;
        }
      }

      *&v216 = v28;
      v56 = sub_1D4419944();

      ++v54;
      v28 = v214;
      if (v56)
      {
        MEMORY[0x1DA6D5820](v57);
        if (*((v218 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v218 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D4419E94();
          v28 = v214;
        }

        sub_1D4419EB4();
        v196 = v218;
        v54 = v55;
      }
    }

    *&v218 = MEMORY[0x1E69E7CC0];
    v58 = v212;
    if (v212 >> 62)
    {
      v28 = v212;
      v182 = sub_1D441A8C4();
      v58 = v28;
      v59 = v182;
    }

    else
    {
      v59 = *((v212 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v60 = MEMORY[0x1E69E7CC0];
    if (!v59)
    {
      v28 = MEMORY[0x1E69E7CC0];
      goto LABEL_65;
    }

    v61 = 0;
    v62 = v58 & 0xC000000000000001;
    v8 = v58 & 0xFFFFFFFFFFFFFF8;
    while (v62)
    {
      v64 = MEMORY[0x1DA6D6410](v61);
      v65 = v61 + 1;
      if (__OFADD__(v61, 1))
      {
        goto LABEL_62;
      }

LABEL_55:
      v66 = v64 + OBJC_IVAR____TtCE7NotesUICSo29ICCalculateDocumentController5Index_cachedRange;
      if (*(v64 + OBJC_IVAR____TtCE7NotesUICSo29ICCalculateDocumentController5Index_cachedRange + 16))
      {
        Strong = swift_unknownObjectWeakLoadStrong();
        if (!Strong)
        {
          goto LABEL_59;
        }

        v68 = Strong;
        v69 = [Strong mergeableString];

        v70 = sub_1D441A3E4();
        v71 = v70;
        if (!*(v70 + 16))
        {

LABEL_59:
          *v66 = 0;
          *(v66 + 8) = 0;
          *(v66 + 16) = 1;
          sub_1D441AA94();
          v28 = *(v218 + 16);
          sub_1D441AAC4();
          sub_1D441AAD4();
          sub_1D441AAA4();
          goto LABEL_51;
        }

        v28 = *(v70 + 32);
        v63 = *(v71 + 40);

        *v66 = v28;
        *(v66 + 8) = v63;
        *(v66 + 16) = 0;
      }

LABEL_51:
      ++v61;
      v58 = v212;
      if (v65 == v59)
      {
        goto LABEL_63;
      }
    }

    if (v61 >= *(v8 + 16))
    {
      goto LABEL_172;
    }

    v64 = *(v58 + 8 * v61 + 32);

    v65 = v61 + 1;
    if (!__OFADD__(v61, 1))
    {
      goto LABEL_55;
    }

LABEL_62:
    __break(1u);
LABEL_63:
    v28 = v218;
    v60 = MEMORY[0x1E69E7CC0];
LABEL_65:
    sub_1D4189834();
    *&v218 = v60;
    if (v28 < 0 || (v28 & 0x4000000000000000) != 0)
    {
      v72 = sub_1D441A8C4();
    }

    else
    {
      v72 = *(v28 + 16);
    }

    v8 = v28 & 0xC000000000000001;

    v73 = 0;
    v195 = MEMORY[0x1E69E7CC0];
    while (v72 != v73)
    {
      if (v8)
      {
        v74 = MEMORY[0x1DA6D6410](v73, v28);
        v75 = v73 + 1;
        if (__OFADD__(v73, 1))
        {
          goto LABEL_169;
        }
      }

      else
      {
        if (v73 >= *(v28 + 16))
        {
          goto LABEL_170;
        }

        v74 = *(v28 + 8 * v73 + 32);

        v75 = v73 + 1;
        if (__OFADD__(v73, 1))
        {
          goto LABEL_169;
        }
      }

      *&v216 = v74;
      v76 = sub_1D4419944();

      ++v73;
      if (v76)
      {
        MEMORY[0x1DA6D5820](v77);
        if (*((v218 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v218 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D4419E94();
        }

        sub_1D4419EB4();
        v195 = v218;
        v73 = v75;
      }
    }

    v79 = sub_1D4391898(v78);

    v80 = sub_1D438EE4C(v198, v79);
    v81 = v80;
    v28 = v80 + 56;
    v82 = 1 << *(v80 + 32);
    v83 = -1;
    if (v82 < 64)
    {
      v83 = ~(-1 << v82);
    }

    v84 = v83 & *(v80 + 56);
    v85 = (v82 + 63) >> 6;

    v86 = 0;
    v87 = MEMORY[0x1E69E7CC0];
    v8 = 40;
LABEL_83:
    if (v84)
    {
      v88 = v84;
      goto LABEL_89;
    }

    while (1)
    {
      v89 = v86 + 1;
      if (__OFADD__(v86, 1))
      {
        goto LABEL_168;
      }

      if (v89 >= v85)
      {
        break;
      }

      v88 = *(v28 + 8 * v89);
      ++v86;
      if (v88)
      {
        v86 = v89;
LABEL_89:
        v84 = (v88 - 1) & v88;
        if (*(v210 + 16))
        {
          v90 = sub_1D42D03E0(*(*(v81 + 48) + ((v86 << 9) | (8 * __clz(__rbit64(v88))))));
          if (v91)
          {
            v92 = *(v210 + 56) + 40 * v90;
            v93 = *v92;
            v214 = *(v92 + 8);
            v94 = *(v92 + 24);
            v212 = *(v92 + 16);
            v202 = v94;
            v95 = *(v92 + 32);
            v201 = v93;

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v87 = sub_1D438D194(0, *(v87 + 2) + 1, 1, v87);
            }

            v97 = *(v87 + 2);
            v96 = *(v87 + 3);
            v98 = v87;
            if (v97 >= v96 >> 1)
            {
              v98 = sub_1D438D194((v96 > 1), v97 + 1, 1, v87);
            }

            *(v98 + 2) = v97 + 1;
            v87 = v98;
            v99 = &v98[40 * v97];
            v100 = v214;
            *(v99 + 4) = v201;
            *(v99 + 5) = v100;
            v101 = v202;
            *(v99 + 6) = v212;
            *(v99 + 7) = v101;
            *(v99 + 8) = v95;
          }
        }

        goto LABEL_83;
      }
    }

    v102 = MEMORY[0x1E69E7CC0];
    v103 = *(v87 + 2);
    if (v103)
    {
      *&v218 = MEMORY[0x1E69E7CC0];
      sub_1D441AAB4();
      LODWORD(v214) = *MEMORY[0x1E6992100];
      v212 = *(v207 + 104);
      *&v207 = v87;
      v8 = (v87 + 64);
      v104 = v203;
      do
      {
        v105 = *(v8 - 32);
        (v212)(v104, v214, v211);
        swift_bridgeObjectRetain_n();
        v106 = v105;
        sub_1D4417484();
        sub_1D44198E4();
        swift_allocObject();
        sub_1D44198F4();

        sub_1D441AA94();
        sub_1D441AAC4();
        sub_1D441AAD4();
        sub_1D441AAA4();
        v8 += 40;
        --v103;
      }

      while (v103);
      v107 = v218;
      v204 = *(v207 + 16);
      if (v204)
      {
        v108 = 0;
        v28 = v218 & 0xFFFFFFFFFFFFFF8;
        if (v218 < 0)
        {
          v109 = v218;
        }

        else
        {
          v109 = v218 & 0xFFFFFFFFFFFFFF8;
        }

        v188 = v109;
        v202 = v218 & 0xC000000000000001;
        v200 = (v194 + 32);
        v110 = (v207 + 64);
        v203 = (v218 >> 62);
        v199 = xmmword_1D4435D40;
        v111 = v209;
        v211 = v218;
        v201 = (v218 & 0xFFFFFFFFFFFFFF8);
        while (1)
        {
          if (v108 >= *(v207 + 16))
          {
            goto LABEL_173;
          }

          v120 = *(v110 - 4);
          v8 = *(v110 - 3);
          v121 = *(v110 - 2);
          v122 = *v110;
          if (v203)
          {
            if (v108 == sub_1D441A8C4())
            {
              goto LABEL_125;
            }
          }

          else if (v108 == *(v28 + 16))
          {
            goto LABEL_125;
          }

          v214 = v122;
          v212 = v8;
          if (v202)
          {
            v127 = v120;

            v8 = MEMORY[0x1DA6D6410](v108, v107);
          }

          else
          {
            if (v108 >= *(v28 + 16))
            {
              goto LABEL_174;
            }

            v8 = *(v107 + 8 * v108 + 32);
            v123 = v120;
          }

          swift_beginAccess();
          v124 = objc_getAssociatedObject(v213, &unk_1EC7CA3C0);
          swift_endAccess();
          if (v124)
          {
            sub_1D441A804();
            swift_unknownObjectRelease();
          }

          else
          {
            v216 = 0u;
            v217 = 0u;
          }

          v218 = v216;
          v219 = v217;
          if (!*(&v217 + 1))
          {
            break;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA470);
          if ((swift_dynamicCast() & 1) == 0)
          {
            goto LABEL_118;
          }

LABEL_104:
          ++v108;
          v112 = v120;
          v113 = [v112 mergeableString];
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9CE0);
          v114 = swift_allocObject();
          *(v114 + 16) = v199;
          *(v114 + 32) = v212;
          *(v114 + 40) = v121;
          v115 = v205;
          sub_1D441A444();

          v116 = sub_1D44196C4();
          v117 = v206;
          (*(*(v116 - 8) + 56))(v206, 1, 1, v116);
          _s5IndexCMa();
          v118 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v119 = v118 + OBJC_IVAR____TtCE7NotesUICSo29ICCalculateDocumentController5Index_cachedRange;
          *v119 = 0;
          *(v119 + 8) = 0;
          *(v119 + 16) = 1;
          (*v200)(v118 + OBJC_IVAR____TtCE7NotesUICSo29ICCalculateDocumentController5Index_selection, v115, v208);
          swift_unknownObjectWeakAssign();

          sub_1D430A63C(v117, v118 + OBJC_IVAR____TtCE7NotesUICSo29ICCalculateDocumentController5Index_paperKitIndex);
          *&v218 = v118;
          sub_1D4419964();

          v110 += 5;
          v111 = v209;
          v107 = v211;
          v28 = v201;
          if (v204 == v108)
          {
            goto LABEL_125;
          }
        }

        sub_1D41769C4(&v218, &qword_1EC7C9720);
LABEL_118:
        v125 = v213;
        sub_1D41899C4();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA470);
        swift_allocObject();
        v126 = sub_1D4419924();
        swift_beginAccess();

        objc_setAssociatedObject(v125, &unk_1EC7CA3C0, v126, 1);
        swift_endAccess();

        goto LABEL_104;
      }

      v111 = v209;
LABEL_125:
      v102 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v107 = MEMORY[0x1E69E7CC0];
      v111 = v209;
    }

    v129 = sub_1D4391898(v128);

    v130 = sub_1D432E8A4(v198, v129);
    if (v102 >> 62 && sub_1D441A8C4())
    {
      v131 = sub_1D42D6A98(MEMORY[0x1E69E7CC0]);
    }

    else
    {
      v131 = MEMORY[0x1E69E7CD0];
    }

    v132 = 0;
    v28 = v130 + 56;
    v133 = *(v130 + 56);
    v134 = 1 << *(v130 + 32);
    v135 = -1;
    v220 = v131;
    if (v134 < 64)
    {
      v135 = ~(-1 << v134);
    }

    v136 = v135 & v133;
    v8 = (v134 + 63) >> 6;
    v212 = v194 + 32;
    v203 = (v194 + 8);
    v207 = xmmword_1D4435D40;
    while (1)
    {
      while (1)
      {
        if (!v136)
        {
          while (1)
          {
            v138 = v132 + 1;
            if (__OFADD__(v132, 1))
            {
              break;
            }

            if (v138 >= v8)
            {

              v215 = v192;
              sub_1D42EFCAC(v196);
              result = sub_1D42EFCAC(v195);
              v181 = v193;
              *v193 = v215;
              v181[1] = v107;
              v181[2] = v220;
              return result;
            }

            v137 = *(v28 + 8 * v138);
            ++v132;
            if (v137)
            {
              v132 = v138;
              goto LABEL_137;
            }
          }

LABEL_171:
          __break(1u);
LABEL_172:
          __break(1u);
LABEL_173:
          __break(1u);
LABEL_174:
          __break(1u);
LABEL_175:
          result = sub_1D441A8C4();
          v39 = result;
          goto LABEL_17;
        }

        v137 = v136;
LABEL_137:
        v136 = (v137 - 1) & v137;
        if (*(v111 + 16))
        {
          v139 = *(v130 + 48);
          v214 = (v137 - 1) & v137;
          v140 = *(v139 + ((v132 << 9) | (8 * __clz(__rbit64(v137)))));
          v141 = sub_1D42D03E0(v140);
          v136 = v214;
          if (v142)
          {
            if (*(v210 + 16))
            {
              v143 = *(*(v111 + 56) + 8 * v141);
              v144 = sub_1D42D03E0(v140);
              v136 = v214;
              if (v145)
              {
                break;
              }
            }
          }
        }
      }

      *&v199 = v130;
      v146 = *(v210 + 56) + 40 * v144;
      v147 = *v146;
      v201 = *(v146 + 8);
      v148 = *(v146 + 24);
      v200 = *(v146 + 16);
      v197 = v148;
      v149 = *(v146 + 32);
      swift_beginAccess();
      v204 = v143;
      v150 = v149;

      v151 = v147;
      v202 = v150;

      v152 = objc_getAssociatedObject(v213, &unk_1EC7CA3C0);
      swift_endAccess();
      if (v152)
      {
        sub_1D441A804();
        swift_unknownObjectRelease();
      }

      else
      {
        v216 = 0u;
        v217 = 0u;
      }

      v218 = v216;
      v219 = v217;
      v211 = v107;
      if (!*(&v217 + 1))
      {
        break;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA470);
      v153 = swift_dynamicCast();
      v154 = v204;
      if ((v153 & 1) == 0)
      {
        goto LABEL_148;
      }

LABEL_149:
      *&v218 = v154;
      v157 = sub_1D4419904();

      if (!v157)
      {

LABEL_159:
        v111 = v209;
        v107 = v211;
        goto LABEL_160;
      }

      v194 = v157;
      v158 = v151;
      v159 = [v158 mergeableString];
      v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9CE0);
      v160 = swift_allocObject();
      *(v160 + 16) = v207;
      v161 = v200;
      *(v160 + 32) = v201;
      *(v160 + 40) = v161;
      v162 = v189;
      sub_1D441A444();

      v163 = sub_1D44196C4();
      v164 = *(v163 - 8);
      v165 = *(v164 + 56);
      v166 = v190;
      v187 = v163;
      v186 = v165;
      v185 = v164 + 56;
      (v165)(v190, 1, 1);
      v183[2] = _s5IndexCMa();
      v167 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v184 = *v212;
      v184(v167 + OBJC_IVAR____TtCE7NotesUICSo29ICCalculateDocumentController5Index_selection, v162, v208);
      v168 = v204;
      swift_unknownObjectWeakAssign();
      v198 = v158;

      sub_1D430A63C(v166, v167 + OBJC_IVAR____TtCE7NotesUICSo29ICCalculateDocumentController5Index_paperKitIndex);
      if (sub_1D441A414())
      {
        v169 = sub_1D43C4934(v167 + OBJC_IVAR____TtCE7NotesUICSo29ICCalculateDocumentController5Index_paperKitIndex, &v168[OBJC_IVAR____TtCE7NotesUICSo29ICCalculateDocumentController5Index_paperKitIndex]);
        swift_setDeallocating();
        (*v203)(v167 + OBJC_IVAR____TtCE7NotesUICSo29ICCalculateDocumentController5Index_selection, v208);
        MEMORY[0x1DA6D8750](v167 + OBJC_IVAR____TtCE7NotesUICSo29ICCalculateDocumentController5Index_textStorage);
        sub_1D41769C4(v167 + OBJC_IVAR____TtCE7NotesUICSo29ICCalculateDocumentController5Index_paperKitIndex, &unk_1EC7CA3B0);
        swift_deallocClassInstance();
        if (!v169)
        {
          goto LABEL_156;
        }
      }

      else
      {
        swift_setDeallocating();
        (*v203)(v167 + OBJC_IVAR____TtCE7NotesUICSo29ICCalculateDocumentController5Index_selection, v208);
        MEMORY[0x1DA6D8750](v167 + OBJC_IVAR____TtCE7NotesUICSo29ICCalculateDocumentController5Index_textStorage);
        sub_1D41769C4(v167 + OBJC_IVAR____TtCE7NotesUICSo29ICCalculateDocumentController5Index_paperKitIndex, &unk_1EC7CA3B0);
        swift_deallocClassInstance();
      }

      v183[1] = sub_1D4189834();
      *&v218 = v168;
      v170 = v198;
      v171 = [v170 mergeableString];
      v172 = swift_allocObject();
      *(v172 + 16) = v207;
      v173 = v200;
      *(v172 + 32) = v201;
      *(v172 + 40) = v173;
      v174 = v205;
      sub_1D441A444();

      v175 = v206;
      v186(v206, 1, 1, v187);
      v176 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v177 = v176 + OBJC_IVAR____TtCE7NotesUICSo29ICCalculateDocumentController5Index_cachedRange;
      *v177 = 0;
      *(v177 + 8) = 0;
      *(v177 + 16) = 1;
      v184(v176 + OBJC_IVAR____TtCE7NotesUICSo29ICCalculateDocumentController5Index_selection, v174, v208);
      swift_unknownObjectWeakAssign();

      sub_1D430A63C(v175, v176 + OBJC_IVAR____TtCE7NotesUICSo29ICCalculateDocumentController5Index_paperKitIndex);
      *&v216 = v176;
      sub_1D4419934();

LABEL_156:
      if (v197 == sub_1D4419734() && v202 == v178)
      {

        goto LABEL_159;
      }

      v179 = sub_1D441AD84();

      v111 = v209;
      v107 = v211;
      if ((v179 & 1) == 0)
      {

        v180 = v194;
        sub_1D4419744();

        sub_1D43C5B80(&v218, v180);
      }

LABEL_160:
      v130 = v199;
      v136 = v214;
    }

    sub_1D41769C4(&v218, &qword_1EC7C9720);
    v154 = v204;
LABEL_148:
    v155 = v213;
    sub_1D41899C4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA470);
    swift_allocObject();
    v156 = sub_1D4419924();
    swift_beginAccess();

    objc_setAssociatedObject(v155, &unk_1EC7CA3C0, v156, 1);
    swift_endAccess();

    goto LABEL_149;
  }

  if (v39 >= 1)
  {
    v40 = 0;
    v8 = v28 & 0xC000000000000001;
    while (1)
    {
      if (v8)
      {
        v41 = MEMORY[0x1DA6D6410](v40, v28);
      }

      else
      {
        v41 = *(v28 + 8 * v40 + 32);
      }

      v42 = v41 + OBJC_IVAR____TtCE7NotesUICSo29ICCalculateDocumentController5Index_cachedRange;
      if (*(v41 + OBJC_IVAR____TtCE7NotesUICSo29ICCalculateDocumentController5Index_cachedRange + 16) != 1)
      {
        break;
      }

      v43 = swift_unknownObjectWeakLoadStrong();
      if (v43)
      {
        v44 = v43;
        v45 = [v43 mergeableString];

        v46 = sub_1D441A3E4();
        v47 = v46;
        if (*(v46 + 16))
        {
          v48 = *(v46 + 32);
          v49 = *(v47 + 40);

          v50 = v49;
          v51 = v48;
          *v42 = v48;
          *(v42 + 8) = v49;
          *(v42 + 16) = 0;
          v28 = v214;
LABEL_31:
          sub_1D43278B4(v51, v50);
          goto LABEL_22;
        }

        v28 = v214;
      }

      *v42 = 0;
      *(v42 + 8) = 0;
      *(v42 + 16) = 1;
LABEL_22:
      ++v40;

      if (v39 == v40)
      {
        goto LABEL_33;
      }
    }

    v51 = *v42;
    v50 = *(v42 + 8);
    goto LABEL_31;
  }

  __break(1u);
  return result;
}

unint64_t sub_1D4327308()
{
  v1 = v0;
  v2 = [v0 note];
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = v2;
  v4 = [v2 managedObjectContext];

  v5 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v6 = [v1 note];
    if (v6)
    {
      v7 = v6;
      v8 = [v6 textStorage];

      if (v8)
      {
        if (v5 >> 62)
        {
LABEL_45:
          if (sub_1D441A8C4())
          {
            v9 = sub_1D42D6298(MEMORY[0x1E69E7CC0]);
            goto LABEL_7;
          }
        }

        v9 = MEMORY[0x1E69E7CD0];
LABEL_7:
        v10 = swift_allocObject();
        *(v10 + 16) = v9;
        v11 = (v10 + 16);
        v12 = swift_allocObject();
        *(v12 + 16) = v8;
        *(v12 + 24) = v10;
        aBlock[4] = sub_1D432FFD0;
        aBlock[5] = v12;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1D43300C0;
        aBlock[3] = &block_descriptor_91;
        v13 = _Block_copy(aBlock);
        v14 = v8;

        v45 = v14;
        [v14 ic:v4 enumerateAttachmentsInContext:v13 usingBlock:?];
        _Block_release(v13);
        v51 = v5;
        v15 = OBJC_IVAR___ICCalculateDocumentController_paperKitDocuments;
        swift_beginAccess();
        v48 = v15;
        v5 = *&v1[v15];
        v46 = v4;
        if ((v5 & 0xC000000000000001) != 0)
        {
          v16 = 0;
          v17 = 0;
          v18 = 0;
          v47 = sub_1D441AB74() | 0x8000000000000000;
        }

        else
        {
          v19 = -1 << *(v5 + 32);
          v17 = ~v19;
          v16 = v5 + 64;
          v20 = -v19;
          if (v20 < 64)
          {
            v21 = ~(-1 << v20);
          }

          else
          {
            v21 = -1;
          }

          v18 = v21 & *(v5 + 64);
          v47 = *&v1[v15];
        }

        v22 = 0;
        v4 = ((v17 + 64) >> 6);
        v8 = v47;
        while (1)
        {
          if ((v8 & 0x8000000000000000) != 0)
          {
            if (!sub_1D441ABB4() || (_s5IndexCMa(), swift_dynamicCast(), v27 = v50, v25 = v22, v26 = v18, !v50))
            {
LABEL_41:
              sub_1D419FA48();

              return v51;
            }
          }

          else
          {
            v23 = v22;
            v24 = v18;
            v25 = v22;
            if (!v18)
            {
              while (1)
              {
                v25 = v23 + 1;
                if (__OFADD__(v23, 1))
                {
                  break;
                }

                if (v25 >= v4)
                {
                  goto LABEL_41;
                }

                v24 = *(v16 + 8 * v25);
                ++v23;
                if (v24)
                {
                  goto LABEL_24;
                }
              }

              __break(1u);
LABEL_44:
              __break(1u);
              goto LABEL_45;
            }

LABEL_24:
            v26 = (v24 - 1) & v24;
            v27 = *(*(v8 + 48) + ((v25 << 9) | (8 * __clz(__rbit64(v24)))));

            if (!v27)
            {
              goto LABEL_41;
            }
          }

          v49 = v26;
          swift_beginAccess();
          v28 = *v11;

          v5 = sub_1D42DD77C(v27, v28);

          if ((v5 & 1) == 0)
          {
            break;
          }

LABEL_18:

          v22 = v25;
          v18 = v49;
        }

        v8 = v11;
        swift_beginAccess();
        v29 = *&v1[v48];
        if ((v29 & 0xC000000000000001) != 0)
        {
          if (v29 < 0)
          {
            v5 = *&v1[v48];
          }

          else
          {
            v5 = v29 & 0xFFFFFFFFFFFFFF8;
          }

          v30 = sub_1D441AB94();

          if (v30)
          {
            swift_unknownObjectRelease();

            v31 = sub_1D441A8C4();
            v5 = sub_1D432D4AC(v5, v31);

            v32 = sub_1D42D01A4(v27);
            v34 = v33;

            if ((v34 & 1) == 0)
            {
              goto LABEL_44;
            }

            v35 = *(*(v5 + 56) + 8 * v32);
            sub_1D4322578(v32, v5);

            *&v1[v48] = v5;
            goto LABEL_40;
          }
        }

        else
        {
          v5 = *&v1[v48];
          v36 = sub_1D42D01A4(v27);
          if (v37)
          {
            v38 = v36;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v40 = *&v1[v48];
            if (!isUniquelyReferenced_nonNull_native)
            {
              sub_1D42D5298();
            }

            v35 = *(*(v40 + 56) + 8 * v38);
            sub_1D4322578(v38, v40);
            *&v1[v48] = v40;
LABEL_40:
            v11 = v8;
            swift_endAccess();
            swift_beginAccess();

            v42 = sub_1D4391D00(v41);

            v43 = sub_1D439172C(v42);

            sub_1D42EF93C(v43);
            v5 = v35;
            sub_1D43C4C88();

            goto LABEL_17;
          }
        }

        swift_endAccess();
        v11 = v8;
LABEL_17:
        v8 = v47;
        goto LABEL_18;
      }
    }
  }

  return v5;
}

void sub_1D43278B4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = [v3 note];
  if (v6)
  {
    v20 = v6;
    v19 = [v6 textStorage];
    if (v19)
    {
      v7 = [v20 managedObjectContext];
      if (v7)
      {
        v8 = v7;
        v9 = a2 + a1;
        v10 = [objc_opt_self() ic_equalsSignCharacterString];
        v11 = sub_1D4419C54();
        v13 = v12;

        v14 = MEMORY[0x1DA6D5780](v11, v13);

        if (__OFSUB__(v9, v14))
        {
          __break(1u);
          return;
        }

        if ([v19 attribute:*MEMORY[0x1E69DB5F8] atIndex:v9 - v14 effectiveRange:0])
        {
          sub_1D441A804();
          swift_unknownObjectRelease();
        }

        else
        {
          v22 = 0u;
          v23 = 0u;
        }

        v24[0] = v22;
        v24[1] = v23;
        sub_1D417CF94(v24, &v22, &qword_1EC7C9720);
        if (!*(&v23 + 1))
        {
          sub_1D41769C4(v24, &qword_1EC7C9720);

          v18 = &v22;
          goto LABEL_19;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7CA500);
        if (swift_dynamicCast())
        {
          v16 = [v21 inlineAttachmentInContext_];
          if (v16)
          {
            v17 = v16;
            if ([v16 isCalculateResultAttachment])
            {
              [v17 updateCalculateResult:0 isRightToLeft:{objc_msgSend(v19, sel_isRightToLeftAtIndex_, a1)}];

              swift_unknownObjectRelease();
              v18 = v24;
LABEL_19:
              sub_1D41769C4(v18, &qword_1EC7C9720);
              return;
            }

            sub_1D41769C4(v24, &qword_1EC7C9720);

            swift_unknownObjectRelease();
            goto LABEL_23;
          }

          sub_1D41769C4(v24, &qword_1EC7C9720);

          swift_unknownObjectRelease();
        }

        else
        {
          sub_1D41769C4(v24, &qword_1EC7C9720);
        }

LABEL_23:
        return;
      }

      v15 = v19;
    }

    else
    {
      v15 = v20;
    }
  }
}

void sub_1D4327C08()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7CA4F0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v43 - v2;
  v4 = sub_1D4417494();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [v0 note];
  if (!v8)
  {
    return;
  }

  v49 = v8;
  v9 = [v8 textStorage];
  if (!v9)
  {
    v33 = v49;
LABEL_18:

    return;
  }

  v48 = v9;
  v10 = [v49 managedObjectContext];
  if (!v10)
  {

    v33 = v48;
    goto LABEL_18;
  }

  v11 = v10;
  v47 = v0;
  sub_1D4189834();
  sub_1D4419954();

  if (!*&v52[0] || (v12 = sub_1D43096D4(), v14 = v13, v16 = v15, , (v16 & 1) != 0) || (v46 = v14, v17 = [v48 textViews], sub_1D41766C0(0, &qword_1EDE32A00), sub_1D4322D38(), v18 = sub_1D441A064(), v17, v19 = sub_1D43892B0(v18), , !v19))
  {

    return;
  }

  v44 = v12;
  v45 = v19;
  v20 = &v12[v46];
  v21 = [objc_opt_self() ic_equalsSignCharacterString];
  v22 = sub_1D4419C54();
  v24 = v23;

  v25 = MEMORY[0x1DA6D5780](v22, v24);

  if (__OFSUB__(v20, v25))
  {
    __break(1u);
    return;
  }

  v26 = [v48 attribute:*MEMORY[0x1E69DB5F8] atIndex:&v20[-v25] effectiveRange:0];
  v27 = v45;
  if (!v26)
  {
    goto LABEL_22;
  }

  sub_1D441A804();
  swift_unknownObjectRelease();
  sub_1D417CF84(v51, v52);
  sub_1D42D5D14(v52, v51);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7CA500);
  if ((swift_dynamicCast() & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_0(v52);
LABEL_22:

LABEL_23:
    return;
  }

  v28 = v50;
  v29 = [v50 inlineAttachmentInContext_];
  if (!v29)
  {
    __swift_destroy_boxed_opaque_existential_0(v52);

    swift_unknownObjectRelease();
    goto LABEL_23;
  }

  v30 = v29;
  v31 = [v48 isRightToLeftAtIndex_];
  if (([v30 isCalculateResultAttachment] & 1) == 0 || (v43 = v28, (v32 = sub_1D4419874()) == 0) && (v32 = sub_1D4419854()) == 0 || (v32, v34 = sub_1D4419874(), v35 = objc_msgSend(v30, sel_updateCalculateResult_isRightToLeft_, v34, v31), v34, !v35))
  {

    swift_unknownObjectRelease();
    goto LABEL_32;
  }

  [v49 regenerateTitleAndSnippetIfNecessaryForEdit:2 range:v44 changeInLength:{v46, 0}];
  v36 = OBJC_IVAR___ICCalculateDocumentController_updatingExpressions;
  v37 = v47;
  swift_beginAccess();
  v38 = *&v37[v36];

  sub_1D44197D4();
  LOBYTE(v37) = sub_1D4190A40(v7, v38);

  v39 = *(v5 + 8);
  v39(v7, v4);
  if (v37)
  {
    v40 = sub_1D4419C14();
    [v30 updateChangeCountWithReason_];

    sub_1D44197D4();
    swift_beginAccess();
    sub_1D43CB774(v7, v3);
    swift_endAccess();
    v39(v7, v4);
    sub_1D41769C4(v3, &unk_1EC7CA4F0);
  }

  v41 = [v49 calculateAccessibilityController];
  if (v41)
  {
    v42 = v41;
    ICCalculateAccessibilityController.announceMathErrorUpdates()();

    swift_unknownObjectRelease();
LABEL_32:
    __swift_destroy_boxed_opaque_existential_0(v52);
    return;
  }

  __swift_destroy_boxed_opaque_existential_0(v52);

  swift_unknownObjectRelease();
}

void (*sub_1D432824C(uint64_t a1, uint64_t a2, void *a3))()
{
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = swift_allocObject();
  v6[2] = v4;
  v6[3] = a3;
  v6[4] = v5;
  v7 = a3;
  return sub_1D432FF48;
}

void sub_1D4328304(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_1D4188AD8(&OBJC_IVAR___ICCalculateDocumentController____lazy_storage___highlighter, _s11HighlighterCMa, 64, sub_1D4188BA0);
    v5 = sub_1D44082EC();
    [v5 requestFire];

    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v7 = swift_allocObject();
    swift_beginAccess();
    swift_weakLoadStrong();
    swift_weakInit();

    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    *(v8 + 24) = v6;
    v10[4] = sub_1D432FF94;
    v10[5] = v8;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 1107296256;
    v10[2] = sub_1D417BEE4;
    v10[3] = &block_descriptor_80;
    v9 = _Block_copy(v10);

    [a2 performBlock_];
    _Block_release(v9);
  }
}

void sub_1D43284E0()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v1 = Strong;
      v2 = [Strong note];
      if (v2)
      {
        v3 = v2;
        v4 = [v2 managedObjectContext];

        if (v4)
        {
          v6 = MEMORY[0x1EEE9AC00](v5);
          MEMORY[0x1EEE9AC00](v6);
          sub_1D4417DB4();

          return;
        }
      }
    }
  }
}

unint64_t sub_1D4328644(uint64_t a1)
{
  v2 = sub_1D4417494();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = sub_1D44197F4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D4188AD8(&OBJC_IVAR___ICCalculateDocumentController____lazy_storage___scanner, _s7ScannerCMa, 48, sub_1D4308BB4);
  sub_1D4306C34(a1);
  v8 = v7;
  v10 = v9;

  if (!v8)
  {
    goto LABEL_16;
  }

  if (v10)
  {
LABEL_15:

LABEL_16:
    v22 = 0;
    return v22 & 1;
  }

  sub_1D4419C54();

  v11 = sub_1D44199B4();

  if (!(v11 >> 62))
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

  v12 = sub_1D441A8C4();
  if (!v12)
  {
LABEL_14:

    goto LABEL_15;
  }

LABEL_5:
  v13 = __OFSUB__(v12, 1);
  result = v12 - 1;
  if (v13)
  {
    __break(1u);
    goto LABEL_19;
  }

  if ((v11 & 0xC000000000000001) != 0)
  {
LABEL_19:
    v15 = MEMORY[0x1DA6D6410](result, v11);
    goto LABEL_10;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v15 = *(v11 + 8 * result + 32);
LABEL_10:
    v16 = v15;

    v17 = [v16 range];
    if (&v17[v18] == [v8 length])
    {
      v19 = [v16 range];
      v21 = [v8 substringWithRange_];
      sub_1D4419C54();

      sub_1D4374E1C(MEMORY[0x1E69E7CC0]);
      (*(v4 + 104))(v6, *MEMORY[0x1E6992100], v3);
      sub_1D4417484();
      sub_1D44198E4();
      swift_allocObject();
      sub_1D44198F4();
      v22 = sub_1D43D7600();

      return v22 & 1;
    }

    goto LABEL_15;
  }

  __break(1u);
  return result;
}

unint64_t sub_1D4328994(uint64_t a1)
{
  v2 = sub_1D4417494();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = sub_1D44197F4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D4188AD8(&OBJC_IVAR___ICCalculateDocumentController____lazy_storage___scanner, _s7ScannerCMa, 48, sub_1D4308BB4);
  sub_1D4306C34(a1);
  v8 = v7;

  if (!v8)
  {
    return 0;
  }

  sub_1D4419C54();

  v9 = sub_1D44199B4();

  if (!(v9 >> 62))
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
      goto LABEL_4;
    }

LABEL_13:

LABEL_14:

    return 0;
  }

  v10 = sub_1D441A8C4();
  if (!v10)
  {
    goto LABEL_13;
  }

LABEL_4:
  v11 = __OFSUB__(v10, 1);
  result = v10 - 1;
  if (v11)
  {
    __break(1u);
    goto LABEL_18;
  }

  if ((v9 & 0xC000000000000001) != 0)
  {
LABEL_18:
    v13 = MEMORY[0x1DA6D6410](result, v9);
    goto LABEL_9;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v13 = *(v9 + 8 * result + 32);
LABEL_9:
    v14 = v13;

    v15 = [v14 range];
    if (&v15[v16] == [v8 length])
    {
      v17 = [v14 range];
      v19 = [v8 substringWithRange_];
      sub_1D4419C54();

      sub_1D4374E1C(MEMORY[0x1E69E7CC0]);
      (*(v4 + 104))(v6, *MEMORY[0x1E6992100], v3);
      sub_1D4417484();
      sub_1D44198E4();
      swift_allocObject();
      sub_1D44198F4();
      v20 = sub_1D43D8C4C();

      return v20;
    }

    goto LABEL_14;
  }

  __break(1u);
  return result;
}

id sub_1D4328CDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = [v3 note];
  if (result)
  {
    v8 = result;
    v9 = [result textStorage];
    if (v9)
    {
      v10 = v9;
      v11 = [v8 managedObjectContext];
      if (v11)
      {
        v12 = v11;
        sub_1D4188AD8(&OBJC_IVAR___ICCalculateDocumentController____lazy_storage___scanner, _s7ScannerCMa, 48, sub_1D4308BB4);
        sub_1D4306C34(a1);
        v14 = v13;
        v16 = v15;

        if (v14)
        {
          sub_1D4419C54();
          v17 = swift_allocObject();
          v17[2] = v12;
          v17[3] = v14;
          v17[4] = v16;
          v17[5] = v10;
          v17[6] = v3;
          v17[7] = a2;
          v17[8] = a3;

          v18 = v12;
          v19 = v14;
          v20 = v10;
          v21 = v3;

          v22 = sub_1D44199A4();

          return v22;
        }
      }

      else
      {
      }
    }

    else
    {
    }

    return 0;
  }

  return result;
}

void sub_1D4328ED8(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5, void *a6, uint64_t a7, uint64_t a8)
{
  v16 = swift_allocObject();
  v16[2] = a1;
  v16[3] = a3;
  v16[4] = a4;
  v16[5] = a5;
  v16[6] = a6;
  v16[7] = a7;
  v16[8] = a8;
  v21[4] = sub_1D432FE9C;
  v21[5] = v16;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 1107296256;
  v21[2] = sub_1D417BEE4;
  v21[3] = &block_descriptor_57;
  v17 = _Block_copy(v21);

  v18 = a3;

  v19 = a5;
  v20 = a6;

  [a2 performBlock_];
  _Block_release(v17);
}

void sub_1D4329010(unint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v44 = a5;
  v13 = sub_1D4417494();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v14 = sub_1D44197F4();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    v18 = sub_1D441A8C4();
    if (!v18)
    {
      return;
    }
  }

  else
  {
    v18 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v18)
    {
      return;
    }
  }

  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
    goto LABEL_20;
  }

  v42 = a6;
  v43 = a7;
  if ((a1 & 0xC000000000000001) != 0)
  {
LABEL_20:
    v21 = MEMORY[0x1DA6D6410](v20, a1);
    goto LABEL_8;
  }

  if ((v20 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_22;
  }

  if (v20 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v21 = *(a1 + 8 * v20 + 32);
LABEL_8:
  v45 = v21;
  v22 = [v21 range];
  if (&v22[v23] == [a2 length])
  {
    v24 = [v45 range];
    v25 = *(a3 + 16);
    if (v25 >= v24)
    {
      v27 = [v45 range];
      v28 = [v45 range];
      if (v28 < v25)
      {
        v29 = *(a3 + 8 * v28 + 32);
        v30 = v27 - v29;
        if (!__OFSUB__(v27, v29))
        {
          [v45 range];
          v41 = v31;
          v32 = [v45 range];
          v34 = [a2 substringWithRange_];
          sub_1D4419C54();

          v35 = a4;
          sub_1D4374E1C(MEMORY[0x1E69E7CC0]);
          (*(v15 + 104))(v17, *MEMORY[0x1E6992100], v14);
          sub_1D4417484();
          sub_1D44198E4();
          swift_allocObject();
          v36 = sub_1D44198F4();
          v37 = v35;
          v38 = sub_1D430A3F4(v37, v30, v41);

          sub_1D4189834();
          v46 = v38;
          sub_1D4419964();

          v39 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v40 = swift_allocObject();
          v40[2] = v42;
          v40[3] = v43;
          v40[4] = v36;
          v40[5] = v39;
          v40[6] = v38;

          sub_1D4417DA4();

          return;
        }

LABEL_24:
        __break(1u);
        return;
      }

LABEL_23:
      __break(1u);
      goto LABEL_24;
    }
  }

  v26 = v45;
}

uint64_t sub_1D4329450(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  a2(a4);
  sub_1D4417DC4();
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    sub_1D4189834();

    sub_1D4419944();
  }

  return result;
}

BOOL ICCalculateDocumentController.hasExpressions.getter()
{
  sub_1D4189834();
  v0 = MEMORY[0x1DA6D53A0]();

  if (v0 >> 62)
  {
    v1 = sub_1D441A8C4();
  }

  else
  {
    v1 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v1 != 0;
}

Swift::Bool __swiftcall ICCalculateDocumentController.updateHighlights()()
{
  sub_1D4188AD8(&OBJC_IVAR___ICCalculateDocumentController____lazy_storage___highlighter, _s11HighlighterCMa, 64, sub_1D4188BA0);
  v0 = sub_1D41890D0();

  sub_1D418A1A4();

  return v0 & 1;
}

uint64_t sub_1D4329608(void *a1)
{
  if (![a1 isCalculateResultAttachment])
  {
    return 0;
  }

  v2 = [a1 rangeInNote];
  sub_1D4188AD8(&OBJC_IVAR___ICCalculateDocumentController____lazy_storage___scanner, _s7ScannerCMa, 48, sub_1D4308BB4);
  sub_1D43084A0(v2, 1, v9);

  v3 = v9[0];
  if (!v9[0])
  {
    return 0;
  }

  v5 = v9[1];
  v4 = v9[2];
  sub_1D4189834();
  v6 = v3;
  sub_1D430A3F4(v6, v5, v4);

  v7 = sub_1D4419904();

  v11 = v10;
  sub_1D42D5CC0(&v11);

  return v7;
}

uint64_t sub_1D4329730(void *a1)
{
  if (![a1 isCalculateResultAttachment])
  {
    return 0;
  }

  v3 = [v1 note];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 attributedString];

    [v5 mutableCopy];
    sub_1D441A804();
    swift_unknownObjectRelease();
    sub_1D41766C0(0, &qword_1EC7CA488);
    if (swift_dynamicCast())
    {
      v6 = [v15 ic_range];
      [v1 formatExpressionsInAttributedString:v15 range:v6 textStorageOffset:v7 skipStaleExpressions:{0, 1}];
      v8 = [v1 expressionRangeForResultAttachment_];
      v10 = v9;
      if (v8 == sub_1D4416D44())
      {

        return 0;
      }

      v13 = [v15 ic:v8 attributedSubstringFromRange:v10];
      v14 = [v13 string];

      v12 = sub_1D4419C54();
      return v12;
    }
  }

  result = sub_1D4329608(a1);
  if (result)
  {
    v12 = sub_1D4419734();

    return v12;
  }

  return result;
}

uint64_t sub_1D4329930(void *a1)
{
  if (sub_1D4329608(a1))
  {
    sub_1D4189834();
    sub_1D4419954();

    if (v5)
    {
      v1 = sub_1D43096D4();
      v3 = v2;

      if ((v3 & 1) == 0)
      {
        return v1;
      }
    }

    else
    {
    }
  }

  return sub_1D4416D44();
}

uint64_t sub_1D4329A30(void *a1)
{
  if ([a1 isCalculateResultAttachment])
  {
    v2 = [a1 rangeInNote];
    sub_1D4188AD8(&OBJC_IVAR___ICCalculateDocumentController____lazy_storage___scanner, _s7ScannerCMa, 48, sub_1D4308BB4);
    sub_1D43084A0(v2, 1, v12);

    v3 = v12[0];
    if (v12[0])
    {
      v5 = v12[1];
      v4 = v12[2];
      sub_1D4189834();
      v6 = v3;
      sub_1D430A3F4(v6, v5, v4);

      v7 = sub_1D4419904();

      v14 = v13;
      sub_1D42D5CC0(&v14);

      if (v7)
      {
        v8 = sub_1D4419854();
        if (v8)
        {
          v9 = v8;
          swift_getErrorValue();
          v10 = sub_1D441AE44();

          return v10;
        }
      }
    }
  }

  return 0;
}

id sub_1D4329BC4(void *a1, uint64_t a2, void *a3, void (*a4)(id))
{
  v6 = a3;
  v7 = a1;
  a4(v6);
  v9 = v8;

  if (v9)
  {
    v10 = sub_1D4419C14();
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

uint64_t sub_1D4329C70(void *a1, uint64_t (*a2)(uint64_t))
{
  if (![a1 isCalculateResultAttachment])
  {
    return 0;
  }

  v4 = [a1 rangeInNote];
  sub_1D4188AD8(&OBJC_IVAR___ICCalculateDocumentController____lazy_storage___scanner, _s7ScannerCMa, 48, sub_1D4308BB4);
  sub_1D43084A0(v4, 1, v12);

  v5 = v12[0];
  if (!v12[0])
  {
    return 0;
  }

  v7 = v12[1];
  v6 = v12[2];
  sub_1D4189834();
  v8 = v5;
  sub_1D430A3F4(v8, v7, v6);

  v9 = sub_1D4419904();

  v14 = v13;
  sub_1D42D5CC0(&v14);

  if (!v9)
  {
    return 0;
  }

  v10 = a2(v9);

  return v10;
}

id sub_1D4329DE0(void *a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t))
{
  v6 = a3;
  v7 = a1;
  sub_1D4329C70(v6, a4);
  v9 = v8;

  if (v9)
  {
    v10 = sub_1D4419C14();
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

uint64_t ICCalculateDocumentController.paperKitDocument(for:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = [v3 note];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = [v6 textStorage];

  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  v10 = sub_1D430A3F4(v9, a1, a2);

  v11 = OBJC_IVAR___ICCalculateDocumentController_paperKitDocuments;
  swift_beginAccess();
  v12 = sub_1D4322DD4(v10, *&v3[v11]);
  swift_endAccess();
  if (v12)
  {

LABEL_16:
    sub_1D4183E58(&qword_1EC7CA468, _s14CanvasDocumentCMa);
    return v12;
  }

  _s14CanvasDocumentCMa();
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  if (MEMORY[0x1E69E7CC0] >> 62 && sub_1D441A8C4())
  {

    v20 = v3;
    v15 = sub_1D42D6298(MEMORY[0x1E69E7CC0]);
  }

  else
  {

    v14 = v3;
    v15 = MEMORY[0x1E69E7CD0];
  }

  *(v13 + 32) = v15;
  swift_unknownObjectWeakAssign();
  *(v13 + 24) = v10;

  swift_beginAccess();
  v16 = *&v3[v11];
  if ((v16 & 0xC000000000000001) == 0)
  {
LABEL_15:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *&v3[v11];
    sub_1D432E128(v13, v10, isUniquelyReferenced_nonNull_native);
    *&v3[v11] = v21;
    swift_endAccess();
    v12 = sub_1D4322DD4(v10, v21);

    if (!v12)
    {
      return v12;
    }

    goto LABEL_16;
  }

  if (v16 < 0)
  {
    v17 = *&v3[v11];
  }

  else
  {
    v17 = v16 & 0xFFFFFFFFFFFFFF8;
  }

  result = sub_1D441A8C4();
  if (!__OFADD__(result, 1))
  {
    *&v3[v11] = sub_1D432D4AC(v17, result + 1);
    goto LABEL_15;
  }

  __break(1u);
  return result;
}

id sub_1D432A0C8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  result = [a1 attachmentType];
  if (result == 13)
  {
    v9 = a5;
    v10 = sub_1D430A3F4(v9, a2, a3);

    swift_beginAccess();

    sub_1D43C5F00(&v11, v10);
    swift_endAccess();
  }

  return result;
}

uint64_t ICCalculateDocumentController.paperKitSolvingBehavior.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1D44196D4();
  v17[0] = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v2 note];
  if (v7)
  {
    v8 = v7;
    v9 = [objc_opt_self() sharedManager];
    v10 = [v9 isMathPaperSolvingAllowed];

    if (v10)
    {
      v11 = [v8 calculatePreviewBehavior];
      if (v11 >= 3)
      {
        v16 = v11;
        type metadata accessor for PreviewBehaviors(0);
        v17[1] = v16;
        result = sub_1D441ADB4();
        __break(1u);
      }

      else
      {
        v12 = qword_1E846EA60[v11];

        (*(v17[0] + 104))(v6, *v12, v4);
        return (*(v17[0] + 32))(a1, v6, v4);
      }

      return result;
    }
  }

  v14 = *MEMORY[0x1E69782F0];
  v15 = *(v17[0] + 104);

  return v15(a1, v14, v4);
}

id sub_1D432A368(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1D4419654();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  result = [v2 note];
  if (result)
  {
    v8 = result;
    v9 = [result textStorage];

    if (v9)
    {
      v10 = [v2 note];
      if (v10 && (v11 = v10, v12 = [v10 managedObjectContext], v11, v12))
      {
        v13 = swift_allocObject();
        v33 = v12;
        v14 = v13;
        *(v13 + 16) = 0;
        v15 = (v13 + 16);
        *(v13 + 24) = 0;
        *(v13 + 32) = 1;
        v16 = [v9 ic_range];
        v31 = v17;
        v32 = v16;
        (*(v5 + 16))(&v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
        v18 = (*(v5 + 80) + 16) & ~*(v5 + 80);
        v19 = swift_allocObject();
        (*(v5 + 32))(v19 + v18, &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
        *(v19 + ((v6 + v18 + 7) & 0xFFFFFFFFFFFFFFF8)) = v14;
        v20 = v14;
        *(&v38 + 1) = sub_1D432F628;
        v39 = v19;
        aBlock = MEMORY[0x1E69E9820];
        v36 = 1107296256;
        v37 = sub_1D43300C0;
        *&v38 = &block_descriptor_21;
        v21 = _Block_copy(&aBlock);

        v22 = v33;
        [v9 ic:v33 enumerateInlineAttachmentsInContext:v32 range:v31 options:0 usingBlock:v21];
        _Block_release(v21);
        swift_beginAccess();
        if (*(v20 + 32))
        {
        }

        else
        {
          v23 = *v15;
          sub_1D4188AD8(&OBJC_IVAR___ICCalculateDocumentController____lazy_storage___scanner, _s7ScannerCMa, 48, sub_1D4308BB4);
          sub_1D43084A0(v23, 0, &aBlock);

          v24 = aBlock;
          if (aBlock)
          {
            v26 = v36;
            v25 = v37;
            sub_1D4189834();
            v27 = v24;
            v28 = sub_1D430A3F4(v27, v26, v25);

            v34 = v28;
            v29 = sub_1D4419904();

            v40 = v38;
            sub_1D42D5CC0(&v40);

            return v29;
          }
        }
      }

      else
      {
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1D432A72C(void *a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, uint64_t a6)
{
  v10 = [a1 identifier];
  if (v10)
  {
    v11 = v10;
    v12 = sub_1D4419C54();
    v14 = v13;

    v15 = sub_1D4419634();
    if (v14)
    {
      if (v12 == v15 && v14 == v16)
      {
      }

      else
      {
        v18 = sub_1D441AD84();

        if ((v18 & 1) == 0)
        {
          return result;
        }
      }

      result = swift_beginAccess();
      *(a6 + 16) = a2;
      *(a6 + 24) = a3;
      *(a6 + 32) = 0;
      *a4 = 1;
      return result;
    }
  }

  else
  {
    sub_1D4419634();
  }
}

void sub_1D432A860(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_1D432A8EC@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA478);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v18 - v4;
  v6 = [v1 note];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 textStorage];

    if (v8)
    {
      sub_1D4189834();
      sub_1D4419954();

      if (*&v21[0])
      {
        v9 = sub_1D43096D4();
        if ((v10 & 1) != 0 || ![v8 attribute:*MEMORY[0x1E69DB5F8] atIndex:v9 effectiveRange:0])
        {
        }

        else
        {
          sub_1D441A804();
          swift_unknownObjectRelease();
          sub_1D417CF84(v20, v21);
          sub_1D42D5D14(v21, v20);
          sub_1D41766C0(0, &qword_1EC7CA480);
          if (swift_dynamicCast())
          {
            v11 = v19;
            v12 = [v19 attachment];
            v13 = [v12 identifier];

            if (v13)
            {
              v18 = sub_1D4419C54();

              sub_1D4419734();
              sub_1D44197A4();
              v14 = sub_1D44196E4();
              (*(*(v14 - 8) + 56))(v5, 1, 1, v14);
              sub_1D4419614();

              __swift_destroy_boxed_opaque_existential_0(v21);
              v15 = sub_1D4419654();
              return (*(*(v15 - 8) + 56))(a1, 0, 1, v15);
            }
          }

          __swift_destroy_boxed_opaque_existential_0(v21);
        }
      }

      else
      {
      }
    }
  }

  v17 = sub_1D4419654();
  return (*(*(v17 - 8) + 56))(a1, 1, 1, v17);
}

id sub_1D432AC1C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1D44198D4();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v54 - v9;
  result = [v1 note];
  if (result)
  {
    v12 = result;
    v13 = [result textStorage];

    if (v13)
    {
      v14 = [v2 note];
      if (v14 && (v15 = v14, v16 = [v14 managedObjectContext], v15, (v69 = v16) != 0))
      {
        sub_1D4188AD8(&OBJC_IVAR___ICCalculateDocumentController____lazy_storage___scanner, _s7ScannerCMa, 48, sub_1D4308BB4);
        sub_1D43084A0(a1, 1, v71);

        v17 = v71[0];
        if (v71[0] && (v60 = a1, v19 = v71[1], v18 = v71[2], sub_1D4189834(), v20 = v17, v21 = sub_1D430A3F4(v20, v19, v18), v20, aBlock[0] = v21, v22 = sub_1D4419904(), v20, , v73 = v72, sub_1D42D5CC0(&v73), , v22))
        {
          sub_1D4189834();
          sub_1D4419954();

          if (aBlock[0])
          {
            v23 = sub_1D43096D4();
            v25 = v24;
            v27 = v26;

            if ((v27 & 1) == 0)
            {
              v28 = swift_allocObject();
              v66 = v25;
              v29 = v28;
              *(v28 + 16) = v23;
              v68 = (v28 + 16);
              v30 = swift_allocObject();
              v65 = v23;
              v31 = v30;
              *(v30 + 16) = 0;
              v55 = (v30 + 16);
              *(v30 + 24) = 0;
              *(v30 + 32) = 1;
              v32 = swift_allocObject();
              *(v32 + 16) = v31;
              *(v32 + 24) = v29;
              aBlock[4] = sub_1D432F6EC;
              aBlock[5] = v32;
              aBlock[0] = MEMORY[0x1E69E9820];
              aBlock[1] = 1107296256;
              aBlock[2] = sub_1D43300C0;
              aBlock[3] = &block_descriptor_31;
              v33 = _Block_copy(aBlock);
              v67 = v31;

              v54[1] = v29;

              [v13 ic:v69 enumerateInlineAttachmentsInContext:v65 range:v66 options:0 usingBlock:v33];
              _Block_release(v33);
              sub_1D4419864();
              v34 = sub_1D4419724();

              v35 = v34;
              if (v34 >> 62)
              {
                goto LABEL_40;
              }

              v36 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
              v37 = v68;
              if (!v36)
              {
LABEL_41:

                return 0;
              }

LABEL_17:
              v65 = v35 & 0xC000000000000001;
              v38 = v35;
              swift_beginAccess();
              swift_beginAccess();
              v35 = v38;
              v39 = 0;
              v56 = v35 & 0xFFFFFFFFFFFFFF8;
              v58 = *MEMORY[0x1E6992168];
              v64 = (v5 + 13);
              ++v5;
              v57 = *MEMORY[0x1E6992178];
              v63 = v35;
              v62 = v36;
              v59 = v22;
              while (1)
              {
                if (v65)
                {
                  MEMORY[0x1DA6D6410](v39);
                  v40 = v39 + 1;
                  if (__OFADD__(v39, 1))
                  {
                    goto LABEL_37;
                  }
                }

                else
                {
                  if (v39 >= *(v56 + 16))
                  {
                    goto LABEL_39;
                  }

                  v40 = v39 + 1;
                  if (__OFADD__(v39, 1))
                  {
LABEL_37:
                    __break(1u);
LABEL_38:
                    __break(1u);
LABEL_39:
                    __break(1u);
LABEL_40:
                    v52 = v35;
                    v53 = sub_1D441A8C4();
                    v35 = v52;
                    v36 = v53;
                    v37 = v68;
                    if (!v53)
                    {
                      goto LABEL_41;
                    }

                    goto LABEL_17;
                  }
                }

                if (*(v67 + 32))
                {
                  v61 = *v37;
                  sub_1D4419814();
                  if ((v41 & 0x1000000000000000) != 0)
                  {
                    v42 = sub_1D4419D54();
                  }

                  else
                  {
                    v42 = sub_1D4419D64();
                  }

                  v66 = v42;

                  sub_1D4419824();
                  (*v64)(v8, v57, v4);
                  v43 = sub_1D44198C4();
                  v44 = *v5;
                  (*v5)(v8, v4);
                  v44(v10, v4);
                  v45 = v61;
                  if ((v43 & 1) != 0 && v61 <= v60 && v66 + v61 > v60)
                  {

                    sub_1D4419814();
                    v49 = objc_allocWithZone(ICNumberLiteral);
                    v50 = sub_1D4419C14();

                    v51 = [v49 initWithRange:v45 string:{v66, v50}];

                    return v51;
                  }

                  v22 = v59;
                  if (__OFADD__(*v68, v66))
                  {
                    goto LABEL_38;
                  }

                  *v68 += v66;
                }

                else
                {
                  sub_1D4419824();
                  (*v64)(v8, v58, v4);
                  v46 = sub_1D44198C4();

                  v47 = *v5;
                  (*v5)(v8, v4);
                  v47(v10, v4);
                  if (v46)
                  {
                    v48 = v55;
                    *v55 = 0;
                    v48[1] = 0;
                    *(v67 + 32) = 1;
                  }
                }

                ++v39;
                v37 = v68;
                v35 = v63;
                if (v40 == v62)
                {
                  goto LABEL_41;
                }
              }
            }
          }
        }

        else
        {
        }
      }

      else
      {
      }
    }

    return 0;
  }

  return result;
}

id sub_1D432B404(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = [a1 isCalculateGraphExpressionAttachment];
  if (result)
  {
    result = swift_beginAccess();
    *(a5 + 16) = a2;
    *(a5 + 24) = a3;
    *(a5 + 32) = 0;
    v11 = __OFADD__(a2, a3);
    v12 = a2 + a3;
    if (v11)
    {
      __break(1u);
    }

    else
    {
      result = swift_beginAccess();
      *(a6 + 16) = v12;
    }
  }

  return result;
}

uint64_t ICCalculateDocumentController.isExpressionFormattingEnabled.getter()
{
  v1 = OBJC_IVAR___ICCalculateDocumentController_isExpressionFormattingEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t ICCalculateDocumentController.isExpressionFormattingEnabled.setter(char a1)
{
  v3 = OBJC_IVAR___ICCalculateDocumentController_isExpressionFormattingEnabled;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

Swift::Void __swiftcall ICCalculateDocumentController.formatExpressions(in:range:textStorageOffset:skipStaleExpressions:)(NSMutableAttributedString in, __C::_NSRange range, Swift::Int textStorageOffset, Swift::Bool skipStaleExpressions)
{
  v5 = v4;
  length = range.length;
  location = range.location;
  if (![v5 isCalculateMathEnabled] || !objc_msgSend(v5, sel_isExpressionFormattingEnabled) || (objc_msgSend(objc_opt_self(), sel_isRunningUnitTests) & 1) != 0)
  {
    return;
  }

  v42 = textStorageOffset + location;
  if (__OFADD__(textStorageOffset, location))
  {
    goto LABEL_49;
  }

  isa = in.super.super.isa;
  v38 = skipStaleExpressions;
  sub_1D4189834();
  v11 = sub_1D4419974();

  v37 = textStorageOffset;
  if ((v11 & 0xC000000000000001) != 0)
  {
    sub_1D441A874();
    _s5IndexCMa();
    sub_1D4183E58(&qword_1EDE325C0, _s5IndexCMa);
    sub_1D441A0A4();
    v11 = v46;
    v12 = v47;
    v13 = v48;
    v14 = v49;
    v15 = v50;
  }

  else
  {
    v14 = 0;
    v16 = -1 << *(v11 + 32);
    v12 = v11 + 56;
    v13 = ~v16;
    v17 = -v16;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v15 = v18 & *(v11 + 56);
  }

  v39 = v11;
  v19 = (v13 + 64) >> 6;
  v41 = v42 + length;
  while (v11 < 0)
  {
    v23 = sub_1D441A8F4();
    if (!v23 || (*&v43 = v23, _s5IndexCMa(), swift_dynamicCast(), (v22 = *&v45[0]) == 0))
    {
LABEL_46:
      sub_1D419FA48();
      return;
    }

LABEL_24:
    v24 = v22 + OBJC_IVAR____TtCE7NotesUICSo29ICCalculateDocumentController5Index_cachedRange;
    if (*(v22 + OBJC_IVAR____TtCE7NotesUICSo29ICCalculateDocumentController5Index_cachedRange + 16) == 1)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (!Strong)
      {
        goto LABEL_13;
      }

      v26 = v15;
      v27 = Strong;
      v28 = [Strong mergeableString];

      v29 = sub_1D441A3E4();
      if (!v29[2])
      {

        v15 = v26;
        v11 = v39;
LABEL_13:
        *v24 = 0;
        *(v24 + 8) = 0;
        *(v24 + 16) = 1;
        goto LABEL_14;
      }

      v30 = v29[4];
      v31 = v29[5];

      *v24 = v30;
      *(v24 + 8) = v31;
      *(v24 + 16) = 0;
      v15 = v26;
      v11 = v39;
    }

    else
    {
      v30 = *v24;
      v31 = *(v24 + 8);
    }

    if (v30 >= v41 || v31 + v30 < v42)
    {
      goto LABEL_14;
    }

    v40 = v15;
    swift_beginAccess();
    v33 = objc_getAssociatedObject(v5, &unk_1EC7CA3C0);
    swift_endAccess();
    if (v33)
    {
      sub_1D441A804();
      swift_unknownObjectRelease();
    }

    else
    {
      v43 = 0u;
      v44 = 0u;
    }

    v45[0] = v43;
    v45[1] = v44;
    if (*(&v44 + 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA470);
      if (swift_dynamicCast())
      {
        goto LABEL_41;
      }
    }

    else
    {
      sub_1D41769C4(v45, &qword_1EC7C9720);
    }

    sub_1D41899C4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA470);
    swift_allocObject();
    v34 = sub_1D4419924();
    swift_beginAccess();

    objc_setAssociatedObject(v5, &unk_1EC7CA3C0, v34, 1);
    swift_endAccess();

LABEL_41:
    *&v45[0] = v22;
    v35 = sub_1D4419904();

    if (!v35)
    {
      goto LABEL_44;
    }

    if (sub_1D43D8EC0())
    {
      sub_1D432BB24(v35, v30, v31, isa, v37, v38);

LABEL_44:
      v15 = v40;
      goto LABEL_14;
    }

    v15 = v40;
LABEL_14:
  }

  v20 = v14;
  v21 = v15;
  if (v15)
  {
LABEL_20:
    v15 = (v21 - 1) & v21;
    v22 = *(*(v11 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v21)))));

    if (!v22)
    {
      goto LABEL_46;
    }

    goto LABEL_24;
  }

  while (1)
  {
    v14 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v14 >= v19)
    {
      goto LABEL_46;
    }

    v21 = *(v12 + 8 * v14);
    ++v20;
    if (v21)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_49:
  __break(1u);
}

void sub_1D432BB24(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, int a6)
{
  v7 = v6;
  v66 = a6;
  v68 = a5;
  v69 = a3;
  v70 = a1;
  v71 = a2;
  v9 = sub_1D4417494();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D44197F4();
  v65 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1D4416E44();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = [v7 note];
  if (!v19)
  {
    return;
  }

  v67 = a4;
  v20 = v19;
  v72 = [v19 textStorage];

  if (!v72)
  {
    return;
  }

  v21 = [v7 note];
  if (!v21 || (v22 = v21, v23 = [v21 managedObjectContext], v22, (v64 = v23) == 0))
  {
    v37 = v72;

    return;
  }

  sub_1D4188AD8(&OBJC_IVAR___ICCalculateDocumentController____lazy_storage___scanner, _s7ScannerCMa, 48, sub_1D4308BB4);
  v24 = sub_1D4306780(v71, v69, 0);

  if (!v24)
  {
    goto LABEL_14;
  }

  v25 = sub_1D4419C14();

  v26 = [v24 componentsSeparatedByString_];

  v27 = sub_1D4419E44();
  if (!v27[2])
  {

LABEL_14:
    v35 = v70;
    goto LABEL_15;
  }

  v63 = v24;
  v29 = v27[4];
  v28 = v27[5];

  aBlock = v29;
  v74 = v28;
  sub_1D4416DB4();
  sub_1D42CC920();
  v30 = sub_1D441A7C4();
  v32 = v31;
  v33 = v15;
  v34 = v30;
  (*(v16 + 8))(v18, v33);

  v35 = v70;
  if (sub_1D4419734() == v34 && v36 == v32)
  {
  }

  else
  {
    v62 = sub_1D441AD84();

    if ((v62 & 1) == 0)
    {
      if (v66)
      {

        return;
      }

      sub_1D4374E1C(MEMORY[0x1E69E7CC0]);
      (*(v65 + 104))(v14, *MEMORY[0x1E6992100], v12);
      sub_1D4417484();
      sub_1D44198E4();
      swift_allocObject();
      v35 = sub_1D44198F4();

      goto LABEL_16;
    }
  }

LABEL_15:

LABEL_16:
  v38 = v71;
  v39 = v68;
  v40 = swift_allocObject();
  if (__OFSUB__(v38, v39))
  {
    goto LABEL_44;
  }

  v11 = v40;
  *(v40 + 16) = v38 - v39;
  v77 = sub_1D432FEE8;
  v78 = v40;
  aBlock = MEMORY[0x1E69E9820];
  v74 = 1107296256;
  v75 = sub_1D43300C0;
  v76 = &block_descriptor_65;
  v41 = _Block_copy(&aBlock);

  [v72 ic:v64 enumerateInlineAttachmentsInContext:v38 range:v69 options:0 usingBlock:v41];
  _Block_release(v41);
  sub_1D4419864();
  v12 = sub_1D4419724();

  v70 = v35;
  if (v12 >> 62)
  {
    goto LABEL_45;
  }

  v42 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v42)
  {
    while (v42 >= 1)
    {
      v43 = v12 & 0xC000000000000001;
      swift_beginAccess();
      v44 = 0;
      v71 = v12;
      while (1)
      {
        if (v43)
        {
          MEMORY[0x1DA6D6410](v44, v12);
        }

        else
        {
        }

        v45 = *(v11 + 2);
        sub_1D4419814();
        v47 = (v46 & 0x1000000000000000) != 0 ? sub_1D4419D54() : sub_1D4419D64();
        v48 = v47;

        v49 = sub_1D4419804();
        v51 = v50;
        if (v49 == sub_1D4419814() && v51 == v52)
        {
        }

        else
        {
          v53 = v42;
          v54 = v43;
          v55 = sub_1D441AD84();

          if ((v55 & 1) == 0 && (v45 & 0x8000000000000000) == 0)
          {
            v56 = v67;
            if ([v67 length] >= v48 + v45)
            {
              v57 = [v56 mutableString];
              sub_1D4419804();
              v58 = sub_1D4419C14();

              [v57 replaceCharactersInRange:v45 withString:{v48, v58}];
            }
          }

          v43 = v54;
          v42 = v53;
          v12 = v71;
        }

        v59 = *(v11 + 2);
        v60 = __OFADD__(v59, v48);
        v61 = v59 + v48;
        if (v60)
        {
          break;
        }

        ++v44;
        *(v11 + 2) = v61;
        if (v42 == v44)
        {
          goto LABEL_46;
        }
      }

      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      v42 = sub_1D441A8C4();
      if (!v42)
      {
        goto LABEL_46;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_46:
  }
}

id sub_1D432C398(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = [a1 isCalculateGraphExpressionAttachment];
  if (result)
  {
    v8 = [a1 displayText];
    sub_1D4419C54();

    v9 = sub_1D4419CE4();

    v10 = __OFSUB__(v9, 2);
    v11 = v9 - 2;
    if (v10)
    {
      __break(1u);
    }

    else
    {
      result = swift_beginAccess();
      v12 = *(a5 + 16);
      v10 = __OFSUB__(v12, v11);
      v13 = v12 - v11;
      if (!v10)
      {
        *(a5 + 16) = v13;
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

id sub_1D432C454@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isMathPaperSolvingAllowed];
  *a2 = result;
  return result;
}

void sub_1D432C488()
{
  v1 = [v0 note];
  if (v1)
  {
    v2 = v1;
    v5 = [v1 deviceManagementRestrictionsManager];
    if ([v5 isMathPaperSolvingAllowed] && (objc_msgSend(v5, sel_isKeyboardMathSolvingAllowed) & 1) != 0)
    {
      v3 = [v2 calculatePreviewBehavior];
      v4 = *(v0 + OBJC_IVAR___ICCalculateDocumentController__isCalculateMathEnabled);
      *(v0 + OBJC_IVAR___ICCalculateDocumentController__isCalculateMathEnabled) = v3 != 1;
      if (v3 != 1 && (v4 & 1) == 0)
      {
        [v0 updateAffectingChangeCounts_];
      }
    }

    else
    {
      *(v0 + OBJC_IVAR___ICCalculateDocumentController__isCalculateMathEnabled) = 0;
    }
  }
}

id sub_1D432C584@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isKeyboardMathSolvingAllowed];
  *a2 = result;
  return result;
}

uint64_t sub_1D432C5B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1D4419444();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1D4419484();
  v12 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D41766C0(0, &qword_1EDE33D70);
  v15 = sub_1D441A2C4();
  aBlock[4] = a4;
  aBlock[5] = a3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D417BEE4;
  aBlock[3] = a5;
  v16 = _Block_copy(aBlock);

  sub_1D4419464();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1D4183E58(&qword_1EDE32AD0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA520);
  sub_1D430657C();
  sub_1D441A814();
  MEMORY[0x1DA6D5D00](0, v14, v11, v16);
  _Block_release(v16);

  (*(v9 + 8))(v11, v8);
  return (*(v12 + 8))(v14, v19);
}

void sub_1D432C858()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong note];
    if (v2)
    {
      v3 = v2;
      v4 = [v2 deviceManagementRestrictionsManager];
      if ([v4 isMathPaperSolvingAllowed] && (objc_msgSend(v4, sel_isKeyboardMathSolvingAllowed) & 1) != 0)
      {
        v5 = [v3 calculatePreviewBehavior];
        v6 = v1[OBJC_IVAR___ICCalculateDocumentController__isCalculateMathEnabled];
        v1[OBJC_IVAR___ICCalculateDocumentController__isCalculateMathEnabled] = v5 != 1;
        if (v5 != 1 && (v6 & 1) == 0)
        {
          [v1 updateAffectingChangeCounts_];
        }
      }

      else
      {
        v1[OBJC_IVAR___ICCalculateDocumentController__isCalculateMathEnabled] = 0;
      }
    }

    else
    {
      v4 = v1;
    }
  }
}

uint64_t sub_1D432C974(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = sub_1D4416E94();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D4416E54();
  [a1 scheduleUpdateAffectingChangeCounts:a4 & 1 isHighPriority:1];
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1D432CBB4()
{
  *(v0 + OBJC_IVAR___ICCalculateDocumentController_needsDocumentUpdate) = 1;
  sub_1D4189834();
  v1 = sub_1D4419974();

  if ((v1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1D441A874();
    _s5IndexCMa();
    sub_1D4183E58(&qword_1EDE325C0, _s5IndexCMa);
    result = sub_1D441A0A4();
    v4 = v19;
    v3 = v20;
    v5 = v21;
    v6 = v22;
    v7 = v23;
  }

  else
  {
    v8 = -1 << *(v1 + 32);
    v3 = v1 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(v1 + 56);

    v6 = 0;
    v4 = v1;
  }

  v11 = (v5 + 64) >> 6;
  if (v4 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v12 = v6;
    v13 = v7;
    v14 = v6;
    if (!v7)
    {
      break;
    }

LABEL_12:
    v15 = (v13 - 1) & v13;

    if (!v16)
    {
LABEL_18:
      sub_1D419FA48();
    }

    while (1)
    {
      v17 = v16 + OBJC_IVAR____TtCE7NotesUICSo29ICCalculateDocumentController5Index_cachedRange;
      *v17 = 0;
      *(v17 + 8) = 0;
      *(v17 + 16) = 1;

      v6 = v14;
      v7 = v15;
      if ((v4 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_1D441A8F4())
      {
        _s5IndexCMa();
        swift_dynamicCast();
        v16 = v18;
        v14 = v6;
        v15 = v7;
        if (v18)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v11)
    {
      goto LABEL_18;
    }

    v13 = *(v3 + 8 * v14);
    ++v12;
    if (v13)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

id ICCalculateDocumentController.contextMenu(forResultAttachment:)(void *a1)
{
  if ([a1 isCalculateResultAttachment])
  {
    v2 = [a1 rangeInNote];
    sub_1D4188AD8(&OBJC_IVAR___ICCalculateDocumentController____lazy_storage___scanner, _s7ScannerCMa, 48, sub_1D4308BB4);
    sub_1D43084A0(v2, 1, v18);

    v3 = v18[0];
    if (v18[0])
    {
      v5 = v18[1];
      v4 = v18[2];
      sub_1D4189834();
      v6 = v3;
      v7 = sub_1D430A3F4(v6, v5, v4);

      aBlock[0] = v7;
      v8 = sub_1D4419904();

      v20 = v19;
      sub_1D42D5CC0(&v20);

      if (v8)
      {
        v9 = sub_1D4419874();
        if (v9)
        {
          v10 = v9;
          v11 = [v9 unitType];

          if (v11 == 16)
          {
            _s19ContextMenuProviderCMa();
            v12 = swift_allocObject();
            *(v12 + 16) = v8;
            v13 = objc_opt_self();
            aBlock[4] = sub_1D432F5F4;
            aBlock[5] = v12;
            aBlock[0] = MEMORY[0x1E69E9820];
            aBlock[1] = 1107296256;
            aBlock[2] = sub_1D432D41C;
            aBlock[3] = &block_descriptor_8;
            v14 = _Block_copy(aBlock);

            v15 = [v13 configurationWithIdentifier:0 previewProvider:0 actionProvider:v14];

            _Block_release(v14);
            return v15;
          }
        }
      }
    }
  }

  return 0;
}

Swift::Void __swiftcall ICCalculateDocumentController.resetHighlights()()
{
  v0 = sub_1D4188AD8(&OBJC_IVAR___ICCalculateDocumentController____lazy_storage___highlighter, _s11HighlighterCMa, 64, sub_1D4188BA0);
  v1 = *(v0 + 32);
  *(v0 + 32) = 0;
}

id ICCalculateDocumentController.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

id sub_1D432D41C(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_1D41766C0(0, &unk_1EDE32910);
  v2 = sub_1D4419E44();

  v3 = v1(v2);

  return v3;
}

uint64_t sub_1D432D4AC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7CA4B0);
    v2 = sub_1D441AC14();
    v10 = v2;
    sub_1D441AB74();
    v3 = sub_1D441ABA4();
    if (v3)
    {
      v4 = v3;
      _s5IndexCMa();
      v5 = v4;
      do
      {
        v8 = v5;
        swift_dynamicCast();
        _s14CanvasDocumentCMa();
        swift_dynamicCast();
        v6 = *(v2 + 16);
        if (*(v2 + 24) <= v6)
        {
          sub_1D42D1FBC(v6 + 1, 1);
        }

        v2 = v10;
        sub_1D432D8A8(v9, v8, v10);
        v5 = sub_1D441ABA4();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CC8];
  }

  return v2;
}

uint64_t sub_1D432D66C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, void (*a5)(void), void (*a6)(unint64_t, uint64_t))
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a3);
    v8 = sub_1D441AC14();
    v25 = v8;
    sub_1D441AB74();
    v9 = sub_1D441ABA4();
    if (v9)
    {
      v10 = v9;
      sub_1D41766C0(0, &qword_1EDE32768);
      v11 = v10;
      do
      {
        v23 = v11;
        swift_dynamicCast();
        a5(0);
        swift_dynamicCast();
        v18 = *(v8 + 16);
        if (*(v8 + 24) <= v18)
        {
          a6(v18 + 1, 1);
        }

        v8 = v25;
        result = sub_1D441A5D4();
        v13 = v25 + 64;
        v14 = -1 << *(v25 + 32);
        v15 = result & ~v14;
        v16 = v15 >> 6;
        if (((-1 << v15) & ~*(v25 + 64 + 8 * (v15 >> 6))) != 0)
        {
          v17 = __clz(__rbit64((-1 << v15) & ~*(v25 + 64 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v19 = 0;
          v20 = (63 - v14) >> 6;
          do
          {
            if (++v16 == v20 && (v19 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v21 = v16 == v20;
            if (v16 == v20)
            {
              v16 = 0;
            }

            v19 |= v21;
            v22 = *(v13 + 8 * v16);
          }

          while (v22 == -1);
          v17 = __clz(__rbit64(~v22)) + (v16 << 6);
        }

        *(v13 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
        *(*(v25 + 48) + 8 * v17) = v24;
        *(*(v25 + 56) + 8 * v17) = v23;
        ++*(v25 + 16);
        v11 = sub_1D441ABA4();
      }

      while (v11);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CC8];
  }

  return v8;
}

unint64_t sub_1D432D8A8(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_1D44196C4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7CA3B0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v14 - v11;
  sub_1D441AEB4();
  sub_1D441A424();
  sub_1D417CF94(a1 + OBJC_IVAR____TtCE7NotesUICSo29ICCalculateDocumentController5Index_paperKitIndex, v12, &unk_1EC7CA3B0);
  if ((*(v7 + 48))(v12, 1, v6) == 1)
  {
    sub_1D441AED4();
  }

  else
  {
    (*(v7 + 32))(v9, v12, v6);
    sub_1D441AED4();
    sub_1D4183E58(&qword_1EC7CA4C0, MEMORY[0x1E69782D8]);
    sub_1D4419B94();
    (*(v7 + 8))(v9, v6);
  }

  sub_1D441AF04();
  result = sub_1D441A854();
  *(a3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
  *(a3[6] + 8 * result) = a1;
  *(a3[7] + 8 * result) = a2;
  ++a3[2];
  return result;
}

uint64_t sub_1D432DB2C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v26 = a1;
  v9 = sub_1D4417494();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v4;
  v15 = sub_1D417DAA4(a3);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  result = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 >= result && (a4 & 1) != 0)
  {
    goto LABEL_9;
  }

  if (v20 >= result && (a4 & 1) == 0)
  {
    result = sub_1D42D40C0();
    goto LABEL_9;
  }

  sub_1D42D0D00(result, a4 & 1);
  result = sub_1D417DAA4(a3);
  if ((v19 & 1) != (v21 & 1))
  {
LABEL_14:
    result = sub_1D441ADE4();
    __break(1u);
    return result;
  }

  v15 = result;
LABEL_9:
  v22 = v26;
  v23 = *v5;
  if (v19)
  {
    v24 = (v23[7] + 16 * v15);
    *v24 = v26;
    v24[1] = a2;
  }

  else
  {
    (*(v10 + 16))(v12, a3, v9);
    return sub_1D417F438(v15, v12, v22, a2, v23);
  }

  return result;
}