uint64_t (*sub_1D42F9CD8(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_1D4418354();
  return sub_1D43065E8;
}

uint64_t sub_1D42F9D7C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9C48);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2);
  v9(v6, v8, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9C40);
  sub_1D4418344();
  swift_endAccess();
  return (*(v3 + 8))(v8, v2);
}

uint64_t sub_1D42F9F1C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9C48);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9C40);
  sub_1D4418344();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_1D42FA054(uint64_t *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9C48);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC7NotesUI21AudioRecordingManager__currentRecordingDuration;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9C40);
  sub_1D4418334();
  swift_endAccess();
  return sub_1D43065EC;
}

double sub_1D42FA1D8@<D0>(double *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D4418364();

  result = v3;
  *a1 = v3;
  return result;
}

uint64_t sub_1D42FA268(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_1D4418374();
}

double sub_1D42FA2F0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D4418364();

  return v1;
}

uint64_t sub_1D42FA370()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return sub_1D4418374();
}

uint64_t (*sub_1D42FA3DC(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_1D4418354();
  return sub_1D42FA480;
}

uint64_t sub_1D42FA484(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9C48);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2);
  v9(v6, v8, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9C40);
  sub_1D4418344();
  swift_endAccess();
  return (*(v3 + 8))(v8, v2);
}

uint64_t sub_1D42FA624(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9C48);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9C40);
  sub_1D4418344();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_1D42FA75C(uint64_t *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9C48);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC7NotesUI21AudioRecordingManager__totalRecordingDuration;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9C40);
  sub_1D4418334();
  swift_endAccess();
  return sub_1D42FA8CC;
}

uint64_t sub_1D42FA8D0@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D4418364();

  *a1 = v3;
  return result;
}

uint64_t sub_1D42FA950(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return sub_1D4418374();
}

uint64_t sub_1D42FA9C8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D4418364();

  return v1;
}

uint64_t sub_1D42FAA3C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return sub_1D4418374();
}

uint64_t (*sub_1D42FAAA8(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_1D4418354();
  return sub_1D43065E8;
}

uint64_t sub_1D42FAB4C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9C58);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2);
  v9(v6, v8, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9C50);
  sub_1D4418344();
  swift_endAccess();
  return (*(v3 + 8))(v8, v2);
}

uint64_t sub_1D42FACEC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9C58);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9C50);
  sub_1D4418344();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_1D42FAE24(uint64_t *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9C58);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC7NotesUI21AudioRecordingManager__samples;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9C50);
  sub_1D4418334();
  swift_endAccess();
  return sub_1D43065EC;
}

uint64_t sub_1D42FAFA8(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v2;
  v5 = v3;
  return sub_1D4418374();
}

uint64_t sub_1D42FB030()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  return sub_1D4418374();
}

uint64_t (*sub_1D42FB09C(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_1D4418354();
  return sub_1D43065E8;
}

uint64_t sub_1D42FB140(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9C68);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2);
  v9(v6, v8, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9C60);
  sub_1D4418344();
  swift_endAccess();
  return (*(v3 + 8))(v8, v2);
}

uint64_t sub_1D42FB2E0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9C68);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9C60);
  sub_1D4418344();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_1D42FB418(uint64_t *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9C68);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC7NotesUI21AudioRecordingManager__recordingStartTime;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9C60);
  sub_1D4418334();
  swift_endAccess();
  return sub_1D43065EC;
}

double sub_1D42FB588()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D4418364();

  if (!v3)
  {
    return 0.0;
  }

  v0 = 0.0;
  if ([v3 isHostTimeValid])
  {
    sub_1D42FB638();
    v0 = v1;
  }

  return v0;
}

id sub_1D42FB638()
{
  result = [v0 isHostTimeValid];
  if (result)
  {
    v2 = mach_absolute_time();
    result = [v0 hostTime];
    v3 = v2 >= result;
    v4 = v2 - result;
    if (v3)
    {
      if (qword_1EC7C9180 == -1)
      {
        goto LABEL_5;
      }
    }

    else
    {
      __break(1u);
    }

    result = swift_once();
LABEL_5:
    if (!is_mul_ok(v4, qword_1EC7C9C28))
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t AudioRecordingManager.identifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC7NotesUI21AudioRecordingManager_identifier);

  return v1;
}

id AudioRecordingManager.init(liveTranscriptionCoordinator:attachmentModel:)(uint64_t a1, void *a2)
{
  v61 = a2;
  v54 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9C60);
  v59 = *(v3 - 8);
  v60 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v58 = &v52 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9C50);
  v56 = *(v5 - 8);
  v57 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v55 = &v52 - v6;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9C40);
  v7 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v9 = &v52 - v8;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9C30);
  v10 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v12 = &v52 - v11;
  v13 = sub_1D44178A4();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v52 - v18;
  v20 = OBJC_IVAR____TtC7NotesUI21AudioRecordingManager__recordingState;
  (*(v14 + 104))(&v52 - v18, *MEMORY[0x1E69B7168], v13);
  (*(v14 + 16))(v17, v19, v13);
  sub_1D4418324();
  (*(v14 + 8))(v19, v13);
  (*(v10 + 32))(&v2[v20], v12, v52);
  v21 = v54;
  v22 = OBJC_IVAR____TtC7NotesUI21AudioRecordingManager__currentRecordingDuration;
  aBlock[0] = 0;
  sub_1D4418324();
  v23 = *(v7 + 32);
  v24 = v53;
  v23(&v2[v22], v9, v53);
  v25 = OBJC_IVAR____TtC7NotesUI21AudioRecordingManager__totalRecordingDuration;
  aBlock[0] = 0;
  sub_1D4418324();
  v23(&v2[v25], v9, v24);
  v26 = OBJC_IVAR____TtC7NotesUI21AudioRecordingManager__samples;
  aBlock[0] = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9AC8);
  v27 = v55;
  sub_1D4418324();
  (*(v56 + 32))(&v2[v26], v27, v57);
  v28 = OBJC_IVAR____TtC7NotesUI21AudioRecordingManager__recordingStartTime;
  aBlock[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9C70);
  v29 = v58;
  sub_1D4418324();
  (*(v59 + 32))(&v2[v28], v29, v60);
  *&v2[OBJC_IVAR____TtC7NotesUI21AudioRecordingManager_timeObserver] = 0;
  *&v2[OBJC_IVAR____TtC7NotesUI21AudioRecordingManager_waveformBuffer] = 0;
  v2[OBJC_IVAR____TtC7NotesUI21AudioRecordingManager_appBackgroundOccurred] = 0;
  v2[OBJC_IVAR____TtC7NotesUI21AudioRecordingManager_noteMultitaskingOccurred] = 0;
  *&v2[OBJC_IVAR____TtC7NotesUI21AudioRecordingManager_liveTranscriptionCoordinator] = v21;
  v30 = v61;
  *&v2[OBJC_IVAR____TtC7NotesUI21AudioRecordingManager_attachmentModel] = v61;
  type metadata accessor for AVAudioEngineRecordingMethod();
  v31 = swift_allocObject();
  v32 = OBJC_IVAR____TtC7NotesUI28AVAudioEngineRecordingMethod_outputContinuation;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9BB8);
  (*(*(v33 - 8) + 56))(v31 + v32, 1, 1, v33);
  *(v31 + OBJC_IVAR____TtC7NotesUI28AVAudioEngineRecordingMethod_assetWriter) = 0;
  v34 = objc_allocWithZone(MEMORY[0x1E69583F8]);

  v35 = v30;
  v36 = [v34 init];
  *(v31 + OBJC_IVAR____TtC7NotesUI28AVAudioEngineRecordingMethod_audioEngine) = v36;
  *&v2[OBJC_IVAR____TtC7NotesUI21AudioRecordingManager_recordingMethod] = v31;
  v37 = [objc_allocWithZone(ICActivityWaveformProcessor) init];
  *&v2[OBJC_IVAR____TtC7NotesUI21AudioRecordingManager_waveformProcessor] = v37;
  result = [v35 attachment];
  if (result)
  {
    v39 = result;
    v40 = [result identifier];

    if (v40)
    {
      v41 = sub_1D4419C54();
      v43 = v42;
    }

    else
    {
      v41 = 0;
      v43 = 0xE000000000000000;
    }

    v44 = &v2[OBJC_IVAR____TtC7NotesUI21AudioRecordingManager_identifier];
    *v44 = v41;
    v44[1] = v43;
    v45 = type metadata accessor for AudioRecordingManager(0);
    v63.receiver = v2;
    v63.super_class = v45;
    v46 = objc_msgSendSuper2(&v63, sel_init);
    v47 = swift_allocObject();
    *(v47 + 16) = v46;
    aBlock[4] = sub_1D42FC224;
    aBlock[5] = v47;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D42FC2C8;
    aBlock[3] = &block_descriptor_3;
    v48 = _Block_copy(aBlock);
    v49 = v46;

    [v35 assetWithCompletion_];
    _Block_release(v48);
    v50 = [objc_opt_self() defaultCenter];
    v51 = sub_1D4419C14();
    [v50 addObserver:v49 selector:sel_analyticsSessionWillEnd_ name:v51 object:0];

    return v49;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D42FBF40(void *a1, void *a2)
{
  v4 = sub_1D4419444();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D4419484();
  v9 = *(v8 - 8);
  result = MEMORY[0x1EEE9AC00](v8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v20 = result;
    sub_1D41766C0(0, &qword_1EDE33D70);
    v13 = a1;
    v14 = sub_1D441A2C4();
    v15 = swift_allocObject();
    *(v15 + 16) = a2;
    *(v15 + 24) = v13;
    aBlock[4] = sub_1D4306574;
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D417BEE4;
    aBlock[3] = &block_descriptor_142_0;
    v16 = _Block_copy(aBlock);
    v17 = v13;
    v18 = a2;

    sub_1D4419464();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1D4304C94(&qword_1EDE32AD0, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA520);
    sub_1D430657C();
    sub_1D441A814();
    MEMORY[0x1DA6D5D00](0, v12, v7, v16);
    _Block_release(v16);

    (*(v5 + 8))(v7, v4);
    return (*(v9 + 8))(v12, v20);
  }

  return result;
}

uint64_t sub_1D42FC22C(void *a1, id a2)
{
  [a2 duration];
  sub_1D441A594();
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = a1;
  return sub_1D4418374();
}

void sub_1D42FC2C8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_1D42FC334()
{
  v1[3] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9F60);
  v1[4] = swift_task_alloc();
  v2 = sub_1D44178A4();
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v1[9] = sub_1D4419F54();
  v1[10] = sub_1D4419F44();
  v3 = sub_1D4419F04();
  v1[11] = v3;
  v1[12] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1D42FC4A4, v3, v4);
}

uint64_t sub_1D42FC4A4()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[3];
  v34 = v4[13];
  v34(v2, *MEMORY[0x1E69B7178], v3);
  swift_getKeyPath();
  swift_getKeyPath();
  v33 = v4[2];
  v33(v1, v2, v3);
  v6 = v5;
  sub_1D4418374();
  v7 = v4[1];
  v7(v2, v3);
  v8 = [objc_opt_self() sharedInstance];
  LODWORD(v1) = [v8 supportsGeneralASR];

  if (v1)
  {
    v10 = v0[3];
    v9 = v0[4];
    v11 = sub_1D4419F94();
    (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
    v12 = v10;
    v13 = sub_1D4419F44();
    v14 = swift_allocObject();
    v15 = MEMORY[0x1E69E85E0];
    v14[2] = v13;
    v14[3] = v15;
    v14[4] = v12;
    sub_1D42F05B0(0, 0, v9, &unk_1D4436930, v14);
  }

  v16 = *(v0[3] + OBJC_IVAR____TtC7NotesUI21AudioRecordingManager_attachmentModel);
  v0[2] = 0;
  v17 = [v16 createSubattachmentForRecordingAndReturnError_];
  v0[13] = v17;
  v18 = v0[2];
  if (v17)
  {
    v19 = v17;
    v32 = v7;
    v21 = v0[7];
    v20 = v0[8];
    v22 = v0[5];
    v23 = v0[3];
    v24 = v18;
    [v19 setIsBeingEditedLocallyOnDevice_];
    v25 = swift_allocObject();
    *(v25 + 16) = v19;
    *v20 = v25;
    v34(v20, *MEMORY[0x1E69B7180], v22);
    swift_getKeyPath();
    swift_getKeyPath();
    v33(v21, v20, v22);
    v26 = v23;
    v27 = v19;
    sub_1D4418374();
    v32(v20, v22);
    v28 = swift_task_alloc();
    v0[14] = v28;
    *v28 = v0;
    v28[1] = sub_1D42FC8C8;

    return sub_1D42FF5D4();
  }

  else
  {
    v30 = v18;

    sub_1D4417104();

    swift_willThrow();

    v31 = v0[1];

    return v31();
  }
}

uint64_t sub_1D42FC8C8()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  v3 = *(v2 + 96);
  v4 = *(v2 + 88);
  if (v0)
  {
    v5 = sub_1D42FCBA8;
  }

  else
  {
    v5 = sub_1D42FCA30;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1D42FCA30()
{
  v1 = v0[15];

  sub_1D43049D0();
  v2 = v0[13];
  if (!v1)
  {
    v4 = v0[3];
    *(v4 + OBJC_IVAR____TtC7NotesUI21AudioRecordingManager_appBackgroundOccurred) = 0;
    *(v4 + OBJC_IVAR____TtC7NotesUI21AudioRecordingManager_noteMultitaskingOccurred) = 0;
    v5 = [objc_opt_self() defaultCenter];
    [v5 postNotificationName:*MEMORY[0x1E69B74C0] object:0];
  }

  v3 = v0[1];

  return v3();
}

uint64_t sub_1D42FCBA8()
{
  v1 = *(v0 + 104);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D42FCC64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9908);
  v4[3] = swift_task_alloc();
  sub_1D4419F54();
  v4[4] = sub_1D4419F44();
  v6 = sub_1D4419F04();
  v4[5] = v6;
  v4[6] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1D42FCD34, v6, v5);
}

uint64_t sub_1D42FCD34()
{
  v1 = *(v0 + 24);
  v2 = sub_1D4417234();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v6 = (*MEMORY[0x1E69B7308] + MEMORY[0x1E69B7308]);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *v3 = v0;
  v3[1] = sub_1D42FCE30;
  v4 = *(v0 + 24);

  return v6(v4);
}

uint64_t sub_1D42FCE30()
{
  v2 = *v1;
  v3 = *(*v1 + 24);
  *(*v1 + 64) = v0;

  sub_1D41769C4(v3, &qword_1EC7C9908);
  v4 = *(v2 + 48);
  v5 = *(v2 + 40);
  if (v0)
  {
    v6 = sub_1D42FD004;
  }

  else
  {
    v6 = sub_1D42FCF98;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, v4);
}

uint64_t sub_1D42FCF98()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D42FD004()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D42FD09C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D4418364();

  return v1;
}

uint64_t sub_1D42FD108(uint64_t a1)
{
  v1[2] = a1;
  v1[3] = sub_1D4419F54();
  v1[4] = sub_1D4419F44();
  v2 = swift_task_alloc();
  v1[5] = v2;
  *v2 = v1;
  v2[1] = sub_1D42FD1C4;

  return sub_1D4362E9C();
}

uint64_t sub_1D42FD1C4(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 48) = v2;

  if (v2)
  {
    v7 = sub_1D4419F04();
    v9 = v8;
    v10 = sub_1D42FD3C8;
  }

  else
  {
    *(v6 + 56) = a2;
    *(v6 + 64) = a1;
    v7 = sub_1D4419F04();
    v9 = v11;
    v10 = sub_1D42FD350;
  }

  return MEMORY[0x1EEE6DFA0](v10, v7, v9);
}

uint64_t sub_1D42FD350()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[2];

  *v3 = v2;
  v3[1] = v1;
  v4 = v0[1];

  return v4();
}

uint64_t sub_1D42FD3C8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D42FD42C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_1D4419F54();
  v2[4] = sub_1D4419F44();
  v4 = sub_1D4419F04();
  v2[5] = v4;
  v2[6] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1D42FD4C4, v4, v3);
}

uint64_t sub_1D42FD4C4()
{
  v4 = (*MEMORY[0x1E69B7318] + MEMORY[0x1E69B7318]);
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_1D42FD57C;
  v2 = *(v0 + 16);

  return v4(v2);
}

uint64_t sub_1D42FD57C()
{
  v2 = *v1;
  *(*v1 + 64) = v0;

  v3 = *(v2 + 48);
  v4 = *(v2 + 40);
  if (v0)
  {
    v5 = sub_1D42FD978;
  }

  else
  {
    v5 = sub_1D42FD6B8;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

id sub_1D42FD6B8()
{
  v1 = v0[2];
  v2 = v0[3];
  [v1 setIsBeingEditedLocallyOnDevice_];
  v3 = sub_1D4419C14();
  [v1 updateChangeCountWithReason_];

  v4 = *(v2 + OBJC_IVAR____TtC7NotesUI21AudioRecordingManager_attachmentModel);
  result = [v4 attachment];
  if (!result)
  {
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  [result attachmentDidChange];

  result = [v4 attachment];
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result;
  [result setPreviewUpdateDate_];

  result = [v4 attachment];
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = result;
  v9 = [result managedObjectContext];

  [v9 ic_save];
  result = [v4 attachment];
  if (!result)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v10 = result;

  v11 = [v10 needsTranscription];

  if (v11)
  {
    v12 = v0[2];
    sub_1D44177D4();
    v13 = sub_1D44177C4();
    v14 = [v12 objectID];
    sub_1D44177B4();
  }

  [v4 updateFileBasedAttributes];
  if (qword_1EC7C9170 != -1)
  {
    swift_once();
  }

  v15 = sub_1D44181B4();
  __swift_project_value_buffer(v15, qword_1EC7C9C10);
  v16 = sub_1D44181A4();
  v17 = sub_1D441A144();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_1D4171000, v16, v17, "called save everything on recording attachment", v18, 2u);
    MEMORY[0x1DA6D8690](v18, -1, -1);
  }

  v19 = v0[1];

  return v19();
}

uint64_t sub_1D42FD978()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D42FD9DC(char a1)
{
  *(v2 + 120) = v1;
  *(v2 + 232) = a1;
  v3 = sub_1D44178A4();
  *(v2 + 128) = v3;
  *(v2 + 136) = *(v3 - 8);
  *(v2 + 144) = swift_task_alloc();
  *(v2 + 152) = swift_task_alloc();
  *(v2 + 160) = swift_task_alloc();
  sub_1D4419F54();
  *(v2 + 168) = sub_1D4419F44();
  v5 = sub_1D4419F04();
  *(v2 + 176) = v5;
  *(v2 + 184) = v4;

  return MEMORY[0x1EEE6DFA0](sub_1D42FDAEC, v5, v4);
}

uint64_t sub_1D42FDAEC()
{
  sub_1D42F58C8();
  v3 = (*MEMORY[0x1E69B7300] + MEMORY[0x1E69B7300]);
  v1 = swift_task_alloc();
  *(v0 + 192) = v1;
  *v1 = v0;
  v1[1] = sub_1D42FDBB0;

  return v3();
}

uint64_t sub_1D42FDBB0()
{
  v2 = *v1;
  *(*v1 + 200) = v0;

  v3 = *(v2 + 184);
  v4 = *(v2 + 176);
  if (v0)
  {
    v5 = sub_1D42FEE58;
  }

  else
  {
    v5 = sub_1D42FDCEC;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1D42FDCEC()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 128);
  v3 = *(v0 + 136);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D4418364();

  if ((*(v3 + 88))(v1, v2) == *MEMORY[0x1E69B7180])
  {
    v4 = *(v0 + 160);
    (*(*(v0 + 136) + 96))(v4, *(v0 + 128));
    v5 = *(*v4 + 16);
    *(v0 + 208) = v5;
    v6 = v5;

    if (qword_1EC7C9170 != -1)
    {
      swift_once();
    }

    v7 = sub_1D44181B4();
    __swift_project_value_buffer(v7, qword_1EC7C9C10);
    v8 = sub_1D44181A4();
    v9 = sub_1D441A144();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1D4171000, v8, v9, "saving recording on pause", v10, 2u);
      MEMORY[0x1DA6D8690](v10, -1, -1);
    }

    v11 = swift_task_alloc();
    *(v0 + 216) = v11;
    *v11 = v0;
    v11[1] = sub_1D42FE648;

    return sub_1D42FD42C(v6);
  }

  v13 = *(v0 + 160);
  v14 = *(v0 + 128);
  v15 = *(v0 + 136);

  (*(v15 + 8))(v13, v14);
  if (qword_1EC7C9170 != -1)
  {
    swift_once();
  }

  v16 = sub_1D44181B4();
  __swift_project_value_buffer(v16, qword_1EC7C9C10);
  v17 = sub_1D44181A4();
  v18 = sub_1D441A144();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_1D4171000, v17, v18, "tried to save on Done, but we've already saved", v19, 2u);
    MEMORY[0x1DA6D8690](v19, -1, -1);
  }

  v20 = *(v0 + 120);
  v21 = *(v0 + 232);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 80) = 0;
  v22 = v20;
  sub_1D4418374();
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 88) = 0;
  v23 = v22;
  sub_1D4418374();
  v25 = *(v0 + 144);
  v24 = *(v0 + 152);
  v26 = *(v0 + 128);
  v27 = *(v0 + 136);
  v28 = *(v0 + 120);
  if (v21 == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9C88);
    v29 = swift_allocBox();
    v30 = *(v27 + 104);
    v30(v31, *MEMORY[0x1E69B7168], v26);
    *v24 = v29;
    v30(v24, *MEMORY[0x1E69B7170], v26);
    swift_getKeyPath();
    swift_getKeyPath();
    (*(v27 + 16))(v25, v24, v26);
    v28;
    sub_1D4418374();
    (*(v27 + 8))(v24, v26);
    *(v0 + 48) = 0u;
    *(v0 + 64) = 0u;
    sub_1D43024A0(0, v0 + 48);
    sub_1D41769C4(v0 + 48, &qword_1EC7C9720);
    if (qword_1EC7C9170 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v16, qword_1EC7C9C10);
    v32 = sub_1D44181A4();
    v33 = sub_1D441A144();
    if (!os_log_type_enabled(v32, v33))
    {
      goto LABEL_30;
    }

    v34 = "paused recording";
  }

  else
  {
    v53 = v16;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1D4418364();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9C88);
    v35 = swift_allocBox();
    v36 = *(v27 + 104);
    v52 = *MEMORY[0x1E69B7168];
    v36(v37);
    *v25 = v35;
    (v36)(v25, *MEMORY[0x1E69B7170], v26);
    sub_1D4304C94(&qword_1EC7CB170, MEMORY[0x1E69B7188]);
    LOBYTE(v35) = sub_1D4419BE4();
    v38 = *(v27 + 8);
    v38(v25, v26);
    v38(v24, v26);
    if ((v35 & 1) == 0)
    {
      *(v0 + 16) = 0u;
      *(v0 + 32) = 0u;
      sub_1D43024A0(0, v0 + 16);
      sub_1D41769C4(v0 + 16, &qword_1EC7C9720);
    }

    v40 = *(v0 + 144);
    v39 = *(v0 + 152);
    v41 = *(v0 + 128);
    v42 = *(v0 + 136);
    v51 = *(v0 + 120);
    (v36)(v39, v52, v41);
    swift_getKeyPath();
    swift_getKeyPath();
    (*(v42 + 16))(v40, v39, v41);
    v43 = v51;
    sub_1D4418374();
    v38(v39, v41);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 96) = MEMORY[0x1E69E7CC0];
    v44 = v43;
    sub_1D4418374();
    if (qword_1EDE32ED8 != -1)
    {
      swift_once();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_1D4418364();

    v45 = *(v0 + 104);
    if (v45)
    {
      v46 = *(v0 + 120);
      type metadata accessor for AudioRecordingManager(0);
      v47 = v46;
      v48 = sub_1D441A5E4();

      if (v48)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        *(v0 + 112) = 0;

        sub_1D4418374();
      }
    }

    if (qword_1EC7C9170 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v53, qword_1EC7C9C10);
    v32 = sub_1D44181A4();
    v33 = sub_1D441A144();
    if (!os_log_type_enabled(v32, v33))
    {
      goto LABEL_30;
    }

    v34 = "stopped recording";
  }

  v49 = swift_slowAlloc();
  *v49 = 0;
  _os_log_impl(&dword_1D4171000, v32, v33, v34, v49, 2u);
  MEMORY[0x1DA6D8690](v49, -1, -1);
LABEL_30:

  v50 = *(v0 + 8);

  return v50();
}

uint64_t sub_1D42FE648()
{
  v2 = *v1;
  *(*v1 + 224) = v0;

  v3 = *(v2 + 184);
  v4 = *(v2 + 176);
  if (v0)
  {
    v5 = sub_1D42FEEE0;
  }

  else
  {
    v5 = sub_1D42FE784;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1D42FE784()
{
  v1 = *(v0 + 208);

  v2 = *(v0 + 120);
  v3 = *(v0 + 232);
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 80) = 0;
  v4 = v2;
  sub_1D4418374();
  swift_getKeyPath();
  swift_getKeyPath();
  *(v0 + 88) = 0;
  v5 = v4;
  sub_1D4418374();
  if (v3 == 1)
  {
    v7 = *(v0 + 144);
    v6 = *(v0 + 152);
    v8 = *(v0 + 128);
    v9 = *(v0 + 136);
    v10 = *(v0 + 120);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9C88);
    v11 = swift_allocBox();
    v12 = *(v9 + 104);
    v12(v13, *MEMORY[0x1E69B7168], v8);
    *v6 = v11;
    v12(v6, *MEMORY[0x1E69B7170], v8);
    swift_getKeyPath();
    swift_getKeyPath();
    (*(v9 + 16))(v7, v6, v8);
    v10;
    sub_1D4418374();
    (*(v9 + 8))(v6, v8);
    *(v0 + 48) = 0u;
    *(v0 + 64) = 0u;
    sub_1D43024A0(0, v0 + 48);
    sub_1D41769C4(v0 + 48, &qword_1EC7C9720);
    if (qword_1EC7C9170 != -1)
    {
      swift_once();
    }

    v14 = sub_1D44181B4();
    __swift_project_value_buffer(v14, qword_1EC7C9C10);
    v15 = sub_1D44181A4();
    v16 = sub_1D441A144();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = "paused recording";
LABEL_17:
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_1D4171000, v15, v16, v17, v38, 2u);
      MEMORY[0x1DA6D8690](v38, -1, -1);
    }
  }

  else
  {
    v19 = *(v0 + 144);
    v18 = *(v0 + 152);
    v21 = *(v0 + 128);
    v20 = *(v0 + 136);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1D4418364();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9C88);
    v22 = swift_allocBox();
    v23 = *(v20 + 104);
    v42 = *MEMORY[0x1E69B7168];
    v23(v24);
    *v19 = v22;
    (v23)(v19, *MEMORY[0x1E69B7170], v21);
    sub_1D4304C94(&qword_1EC7CB170, MEMORY[0x1E69B7188]);
    LOBYTE(v22) = sub_1D4419BE4();
    v25 = *(v20 + 8);
    v25(v19, v21);
    v41 = v25;
    v25(v18, v21);
    if ((v22 & 1) == 0)
    {
      *(v0 + 16) = 0u;
      *(v0 + 32) = 0u;
      sub_1D43024A0(0, v0 + 16);
      sub_1D41769C4(v0 + 16, &qword_1EC7C9720);
    }

    v27 = *(v0 + 144);
    v26 = *(v0 + 152);
    v29 = *(v0 + 128);
    v28 = *(v0 + 136);
    v30 = *(v0 + 120);
    (v23)(v26, v42, v29);
    swift_getKeyPath();
    swift_getKeyPath();
    (*(v28 + 16))(v27, v26, v29);
    v31 = v30;
    sub_1D4418374();
    v41(v26, v29);
    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 96) = MEMORY[0x1E69E7CC0];
    v32 = v31;
    sub_1D4418374();
    if (qword_1EDE32ED8 != -1)
    {
      swift_once();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_1D4418364();

    v33 = *(v0 + 104);
    if (v33)
    {
      v34 = *(v0 + 120);
      type metadata accessor for AudioRecordingManager(0);
      v35 = v34;
      v36 = sub_1D441A5E4();

      if (v36)
      {
        swift_getKeyPath();
        swift_getKeyPath();
        *(v0 + 112) = 0;

        sub_1D4418374();
      }
    }

    if (qword_1EC7C9170 != -1)
    {
      swift_once();
    }

    v37 = sub_1D44181B4();
    __swift_project_value_buffer(v37, qword_1EC7C9C10);
    v15 = sub_1D44181A4();
    v16 = sub_1D441A144();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = "stopped recording";
      goto LABEL_17;
    }
  }

  v39 = *(v0 + 8);

  return v39();
}

uint64_t sub_1D42FEE58()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D42FEEE0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t AudioRecordingCoordinator.currentRecordingManager.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1D4418374();
}

uint64_t sub_1D42FEFE0()
{
  v0[2] = sub_1D4419F54();
  v0[3] = sub_1D4419F44();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1D42FF090;

  return sub_1D42FD9DC(1);
}

uint64_t sub_1D42FF090()
{
  *(*v1 + 40) = v0;

  v3 = sub_1D4419F04();
  if (v0)
  {
    v4 = sub_1D42FF250;
  }

  else
  {
    v4 = sub_1D42FF1EC;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, v2);
}

uint64_t sub_1D42FF1EC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D42FF250()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D42FF2B4()
{
  v0[2] = sub_1D4419F54();
  v0[3] = sub_1D4419F44();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1D42FF360;

  return sub_1D42FC334();
}

uint64_t sub_1D42FF360()
{
  *(*v1 + 40) = v0;

  v3 = sub_1D4419F04();
  if (v0)
  {
    v4 = sub_1D43065F0;
  }

  else
  {
    v4 = sub_1D43065F4;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, v2);
}

uint64_t sub_1D42FF5D4()
{
  v1[3] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9F60);
  v1[4] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9908);
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v2 = sub_1D4417234();
  v1[7] = v2;
  v3 = *(v2 - 8);
  v1[8] = v3;
  v1[9] = *(v3 + 64);
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v4 = sub_1D44178A4();
  v1[12] = v4;
  v1[13] = *(v4 - 8);
  v1[14] = swift_task_alloc();
  v1[15] = sub_1D4419F54();
  v1[16] = sub_1D4419F44();
  v6 = sub_1D4419F04();
  v1[17] = v6;
  v1[18] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1D42FF7B8, v6, v5);
}

uint64_t sub_1D42FF7B8()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D4418364();

  if ((*(v2 + 88))(v1, v3) != *MEMORY[0x1E69B7180])
  {
    v12 = v0[13];
    v11 = v0[14];
    v13 = v0[12];

    (*(v12 + 8))(v11, v13);
LABEL_11:

    v21 = v0[1];

    return v21();
  }

  v4 = v0[14];
  (*(v0[13] + 96))(v4, v0[12]);
  v5 = *(*v4 + 16);
  v0[19] = v5;
  v6 = v5;

  v7 = [v6 media];
  if (!v7)
  {
    v14 = v0[7];
    v15 = v0[8];
    v16 = v0[6];

    (*(v15 + 56))(v16, 1, 1, v14);
LABEL_10:
    sub_1D41769C4(v0[6], &qword_1EC7C9908);
    goto LABEL_11;
  }

  v8 = v7;
  v9 = [v7 mediaURL];

  if (v9)
  {
    sub_1D4417214();

    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  v17 = v0[7];
  v18 = v0[8];
  v20 = v0[5];
  v19 = v0[6];
  (*(v18 + 56))(v20, v10, 1, v17);
  sub_1D42DA6E8(v20, v19);
  if ((*(v18 + 48))(v19, 1, v17) == 1)
  {

    goto LABEL_10;
  }

  v23 = v0[11];
  v24 = v0[7];
  v25 = v0[8];
  v26 = v0[6];
  v27 = *(v25 + 32);
  v0[20] = v27;
  v0[21] = (v25 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v27(v23, v26, v24);
  v28 = [v6 identifier];
  if (!v28)
  {
    (*(v0[8] + 8))(v0[11], v0[7]);

    goto LABEL_11;
  }

  v29 = v28;
  v30 = sub_1D4419C54();
  v32 = v31;

  v0[22] = v30;
  v0[23] = v32;
  if (qword_1EDE32ED8 != -1)
  {
    swift_once();
  }

  v0[24] = qword_1EDE32EE0;
  if (!AudioRecordingCoordinator.isRecording.getter())
  {
    goto LABEL_24;
  }

  v33 = v0[3];
  v34 = AudioRecordingCoordinator.currentAttachment.getter();
  v35 = [*(v33 + OBJC_IVAR____TtC7NotesUI21AudioRecordingManager_attachmentModel) attachment];
  v36 = v35;
  if (v34)
  {
    if (v35)
    {
      sub_1D41766C0(0, &qword_1EDE32920);
      v37 = sub_1D441A5E4();

      if ((v37 & 1) == 0)
      {
        goto LABEL_27;
      }

LABEL_24:

      v55 = v0[22];
      v56 = v0[23];
      v57 = v0[20];
      v58 = v0[19];
      v38 = v0[10];
      v39 = v0[11];
      v40 = v0[8];
      v54 = v0[9];
      v41 = v0[7];
      v43 = v0[3];
      v42 = v0[4];
      v53 = v42;
      swift_getKeyPath();
      swift_getKeyPath();
      v0[2] = v43;

      v44 = v43;
      sub_1D4418374();
      v45 = sub_1D4419F94();
      (*(*(v45 - 8) + 56))(v42, 1, 1, v45);
      v46 = v38;
      (*(v40 + 16))(v38, v39, v41);
      v47 = v44;
      v48 = sub_1D4419F44();
      v49 = (*(v40 + 80) + 48) & ~*(v40 + 80);
      v50 = swift_allocObject();
      v51 = MEMORY[0x1E69E85E0];
      *(v50 + 2) = v48;
      *(v50 + 3) = v51;
      *(v50 + 4) = v55;
      *(v50 + 5) = v56;
      v57(&v50[v49], v46, v41);
      *&v50[(v54 + v49 + 7) & 0xFFFFFFFFFFFFFFF8] = v47;
      sub_1D435F9F8(0, 0, v53, &unk_1D4436C40, v50);

      (*(v40 + 8))(v39, v41);
      goto LABEL_11;
    }

    v36 = v34;
  }

  else if (!v35)
  {
    goto LABEL_24;
  }

LABEL_27:
  v52 = swift_task_alloc();
  v0[25] = v52;
  *v52 = v0;
  v52[1] = sub_1D42FFDE0;

  return AudioRecordingCoordinator.cancelCurrentAudioRecordingSession()();
}

uint64_t sub_1D42FFDE0()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  if (v0)
  {

    v3 = *(v2 + 136);
    v4 = *(v2 + 144);
    v5 = sub_1D430016C;
  }

  else
  {
    v3 = *(v2 + 136);
    v4 = *(v2 + 144);
    v5 = sub_1D42FFEFC;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1D42FFEFC()
{

  v18 = v0[22];
  v19 = v0[23];
  v20 = v0[20];
  v21 = v0[19];
  v1 = v0[10];
  v16 = v0[11];
  v2 = v0[8];
  v17 = v0[9];
  v3 = v0[7];
  v4 = v0[3];
  v5 = v0[4];
  v15 = v5;
  swift_getKeyPath();
  swift_getKeyPath();
  v0[2] = v4;

  v6 = v4;
  sub_1D4418374();
  v7 = sub_1D4419F94();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  (*(v2 + 16))(v1, v16, v3);
  v8 = v6;
  v9 = sub_1D4419F44();
  v10 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v11 = swift_allocObject();
  v12 = MEMORY[0x1E69E85E0];
  *(v11 + 2) = v9;
  *(v11 + 3) = v12;
  *(v11 + 4) = v18;
  *(v11 + 5) = v19;
  v20(&v11[v10], v1, v3);
  *&v11[(v17 + v10 + 7) & 0xFFFFFFFFFFFFFFF8] = v8;
  sub_1D435F9F8(0, 0, v15, &unk_1D4436C40, v11);

  (*(v2 + 8))(v16, v3);

  v13 = v0[1];

  return v13();
}

uint64_t sub_1D430016C()
{
  v1 = v0[19];
  v2 = v0[11];
  v3 = v0[7];
  v4 = v0[8];

  (*(v4 + 8))(v2, v3);

  v5 = v0[1];

  return v5();
}

BOOL AudioRecordingCoordinator.isRecording.getter()
{
  v0 = sub_1D44178A4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D4418364();

  v4 = v7;
  if (v7)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1D4418364();

    v4 = (*(v1 + 88))(v3, v0) == *MEMORY[0x1E69B7180];
    (*(v1 + 8))(v3, v0);
  }

  return v4;
}

id AudioRecordingCoordinator.currentAttachment.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D4418364();

  v0 = v3;
  if (v3)
  {

    v1 = sub_1D4417CE4();

    v0 = [v1 attachment];
  }

  return v0;
}

uint64_t AudioRecordingCoordinator.cancelCurrentAudioRecordingSession()()
{
  v1[3] = v0;
  sub_1D4419F54();
  v1[4] = sub_1D4419F44();
  v3 = sub_1D4419F04();
  v1[5] = v3;
  v1[6] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1D4300540, v3, v2);
}

uint64_t sub_1D4300540()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D4418364();

  v1 = v0[2];
  v0[7] = v1;
  if (v1)
  {
    v2 = swift_task_alloc();
    v0[8] = v2;
    *v2 = v0;
    v2[1] = sub_1D4300668;

    return sub_1D42FD9DC(0);
  }

  else
  {

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_1D4300668()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = *(v2 + 40);
    v4 = *(v2 + 48);
    v5 = sub_1D43007E8;
  }

  else
  {

    v3 = *(v2 + 40);
    v4 = *(v2 + 48);
    v5 = sub_1D4300784;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1D4300784()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D43007E8()
{
  v1 = *(v0 + 56);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D4300854(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[15] = a6;
  v7[16] = a7;
  v7[13] = a4;
  v7[14] = a5;
  v8 = sub_1D4417D94();
  v7[17] = v8;
  v7[18] = *(v8 - 8);
  v7[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9CC0);
  v7[20] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9BF0);
  v7[21] = v9;
  v7[22] = *(v9 - 8);
  v7[23] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9CC8);
  v7[24] = v10;
  v7[25] = *(v10 - 8);
  v7[26] = swift_task_alloc();
  v11 = sub_1D4417234();
  v7[27] = v11;
  v7[28] = *(v11 - 8);
  v7[29] = swift_task_alloc();
  v7[30] = sub_1D4419F54();
  v7[31] = sub_1D4419F44();
  v12 = sub_1D4419F04();
  v7[32] = v12;
  v7[33] = v13;

  return MEMORY[0x1EEE6DFA0](sub_1D4300AE8, v12, v13);
}

uint64_t sub_1D4300AE8()
{
  v31 = v0;
  v30[1] = *MEMORY[0x1E69E9840];
  if (qword_1EC7C9170 != -1)
  {
    swift_once();
  }

  v1 = v0[28];
  v2 = v0[29];
  v3 = v0[27];
  v4 = v0[15];
  v5 = sub_1D44181B4();
  v0[34] = __swift_project_value_buffer(v5, qword_1EC7C9C10);
  (*(v1 + 16))(v2, v4, v3);

  v6 = sub_1D44181A4();
  v7 = sub_1D441A154();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[28];
  v10 = v0[29];
  v11 = v0[27];
  if (v8)
  {
    v13 = v0[13];
    v12 = v0[14];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v30[0] = v15;
    *v14 = 136315394;
    *(v14 + 4) = sub_1D42E9410(v13, v12, v30);
    *(v14 + 12) = 2080;
    sub_1D4304C94(&qword_1EDE338C8, MEMORY[0x1E6968FB0]);
    v16 = sub_1D441AD44();
    v18 = v17;
    (*(v9 + 8))(v10, v11);
    v19 = sub_1D42E9410(v16, v18, v30);

    *(v14 + 14) = v19;
    _os_log_impl(&dword_1D4171000, v6, v7, "Recording task starting {subattachment: %s, url: %s}", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1DA6D8690](v15, -1, -1);
    MEMORY[0x1DA6D8690](v14, -1, -1);
  }

  else
  {

    (*(v9 + 8))(v10, v11);
  }

  sub_1D42F4C7C(v0[15], v0[23]);
  v21 = v0[22];
  v20 = v0[23];
  v22 = v0[21];
  sub_1D4419FC4();
  (*(v21 + 8))(v20, v22);
  v23 = OBJC_IVAR____TtC7NotesUI21AudioRecordingManager_liveTranscriptionCoordinator;
  v0[35] = OBJC_IVAR____TtC7NotesUI21AudioRecordingManager_waveformBuffer;
  v0[36] = v23;
  v24 = sub_1D4419F44();
  v0[37] = v24;
  v25 = swift_task_alloc();
  v0[38] = v25;
  *v25 = v0;
  v25[1] = sub_1D4300FEC;
  v26 = v0[24];
  v27 = v0[20];
  v28 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D9C8](v27, v24, v28, v26);
}

uint64_t sub_1D4300FEC()
{
  v1 = *v0;

  v2 = *(v1 + 264);
  v3 = *(v1 + 256);

  return MEMORY[0x1EEE6DFA0](sub_1D430115C, v3, v2);
}

uint64_t sub_1D430115C()
{
  v1 = v0[20];
  v2 = v0[17];
  v3 = v0[18];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(v0[25] + 8))(v0[26], v0[24]);

    sub_1D430205C(v0[13], v0[14], v0[15]);

    v4 = v0[1];

    return v4();
  }

  else
  {
    (*(v3 + 32))(v0[19], v1, v2);
    v6 = swift_task_alloc();
    v0[39] = v6;
    *v6 = v0;
    v6[1] = sub_1D4301334;
    v7 = v0[19];

    return sub_1D4302310(v7);
  }
}

uint64_t sub_1D4301334()
{
  v1 = *v0;

  v2 = *(v1 + 264);
  v3 = *(v1 + 256);

  return MEMORY[0x1EEE6DFA0](sub_1D4301488, v3, v2);
}

uint64_t sub_1D4301488()
{
  v1 = sub_1D4417D84();
  v0[40] = v1;
  v64 = sub_1D4417D64();
  v0[41] = v64;
  v2 = &selRef_forcesLightMode;
  v3 = [v1 frameLength];
  v67 = v1;
  v4 = [v67 format];
  [v4 sampleRate];
  v6 = v5;

  v7 = v3 / v6;
  swift_getKeyPath();
  swift_getKeyPath();
  v8 = sub_1D4418354();
  *v9 = v7 + *v9;
  v8(v0 + 2, 0);

  swift_getKeyPath();
  swift_getKeyPath();
  v10 = sub_1D4418354();
  *v11 = v7 + *v11;
  v10(v0 + 6, 0);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D4418364();

  v68 = v0;
  v12 = v0[10];
  if (v12)
  {
  }

  else
  {
    v13 = v0[16];
    swift_getKeyPath();
    swift_getKeyPath();
    v0[11] = v64;
    v14 = v64;
    v15 = v13;
    sub_1D4418374();
  }

  v16 = v67;
  v17 = v0[35];
  v18 = v0[16];
  if (!*(v18 + v17))
  {
    v19 = [v67 format];
    v20 = [objc_allocWithZone(MEMORY[0x1E6958440]) initWithPCMFormat:v19 frameCapacity:1920];

    v21 = *(v18 + v17);
    *(v18 + v17) = v20;
  }

  v22 = 0;
  __C = (v0 + 44);
  v23 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v25 = [v16 v2[16]];
    v26 = v68[16];
    if (v22 >= v25)
    {
      break;
    }

    v27 = *&v26[v68[35]];
    if (!v27)
    {
      break;
    }

    if (v22 >= 0xFFFFF880)
    {
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
    }

    v28 = v27;
    v29 = [v16 v2[16]];
    v30 = v29 - v22;
    if (v29 < v22)
    {
      goto LABEL_39;
    }

    v31 = [v28 v2[16]];
    v32 = 1920 - v31;
    if (v31 > 0x780)
    {
      goto LABEL_40;
    }

    if (v30 >= v22 + 1920)
    {
      v33 = v22 + 1920;
    }

    else
    {
      v33 = v30;
    }

    if (v32 >= v33)
    {
      v34 = v33;
    }

    else
    {
      v34 = v32;
    }

    v35 = [v28 floatChannelData];
    if (v35)
    {
      v36 = *v35;
      v37 = [v16 floatChannelData];
      if (v37)
      {
        v66 = v23;
        v38 = v2;
        v39 = *v37;
        v40 = v38;
        v41 = [v28 v38 + 350];
        v42 = [v16 format];
        v43 = [v42 streamDescription];

        v44 = v43[6] * v34;
        if ((v34 * v43[6]) >> 64 != v44 >> 63)
        {
          goto LABEL_43;
        }

        memcpy((v36 + 4 * v41), (v39 + 4 * v22), v44);
        v23 = v66;
        v16 = v67;
        v2 = v40;
      }
    }

    v45 = [v28 v2[16]];
    if (__CFADD__(v45, v34))
    {
      goto LABEL_41;
    }

    [v28 setFrameLength_];
    v46 = [v28 v2[16]];
    if (v46 == [v28 frameCapacity])
    {
      v47 = [v28 floatChannelData];
      if (v47)
      {
        v48 = *v47;
        v49 = [v28 v2[16]];
        vDSP_vabs(v48, 1, v48, 1, v49);
        *__C = NAN;
        vDSP_maxv(v48, 1, __C, v49);
        v50 = *__C;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v23 = sub_1D438CF8C(0, *(v23 + 2) + 1, 1, v23);
        }

        v52 = *(v23 + 2);
        v51 = *(v23 + 3);
        v16 = v67;
        if (v52 >= v51 >> 1)
        {
          v23 = sub_1D438CF8C((v51 > 1), v52 + 1, 1, v23);
        }

        *(v23 + 2) = v52 + 1;
        *&v23[4 * v52 + 32] = v50;
        [v28 setFrameLength_];
      }
    }

    v24 = __CFADD__(v22, v34);
    v22 += v34;
    if (v24)
    {
      goto LABEL_42;
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v68[12] = v23;
  v53 = v26;
  sub_1D4418374();
  if (sub_1D4417CD4())
  {
    v54 = MEMORY[0x1E69B7310];
    v55 = *MEMORY[0x1E69B7310];
    v56 = swift_task_alloc();
    v68[42] = v56;
    *v56 = v68;
    v56[1] = sub_1D4301B94;
    v57 = v68[19];

    return ((v55 + v54))(v57);
  }

  else
  {
    (*(v68[18] + 8))(v68[19], v68[17]);

    v59 = sub_1D4419F44();
    v68[37] = v59;
    v60 = swift_task_alloc();
    v68[38] = v60;
    *v60 = v68;
    v60[1] = sub_1D4300FEC;
    v61 = v68[24];
    v62 = v68[20];
    v63 = MEMORY[0x1E69E85E0];

    return MEMORY[0x1EEE6D9C8](v62, v59, v63, v61);
  }
}

uint64_t sub_1D4301B94()
{
  v2 = *v1;
  *(*v1 + 344) = v0;

  v3 = *(v2 + 264);
  v4 = *(v2 + 256);
  if (v0)
  {
    v5 = sub_1D4301E20;
  }

  else
  {
    v5 = sub_1D4301CFC;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1D4301CFC()
{
  v1 = v0;
  v3 = v0[40];
  v2 = v0[41];
  v5 = v0[18];
  v4 = v0[19];
  v6 = v0[17];

  (*(v5 + 8))(v4, v6);
  v7 = sub_1D4419F44();
  v1[37] = v7;
  v8 = swift_task_alloc();
  v1[38] = v8;
  *v8 = v1;
  v8[1] = sub_1D4300FEC;
  v9 = v1[24];
  v10 = v1[20];
  v11 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D9C8](v10, v7, v11, v9);
}

uint64_t sub_1D4301E20()
{
  v1 = v0[43];
  v2 = v1;
  v3 = sub_1D44181A4();
  v4 = sub_1D441A164();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[43];
  v8 = v0[40];
  v7 = v0[41];
  v10 = v0[18];
  v9 = v0[19];
  v11 = v0[17];
  if (v5)
  {
    v23 = v0[19];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    v14 = v6;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 4) = v15;
    *v13 = v15;
    _os_log_impl(&dword_1D4171000, v3, v4, "Transcription error: %@", v12, 0xCu);
    sub_1D41769C4(v13, &qword_1EC7C9918);
    MEMORY[0x1DA6D8690](v13, -1, -1);
    v16 = v12;
    v9 = v23;
    MEMORY[0x1DA6D8690](v16, -1, -1);
  }

  else
  {

    v8 = v3;
  }

  (*(v10 + 8))(v9, v11);
  v17 = sub_1D4419F44();
  v0[37] = v17;
  v18 = swift_task_alloc();
  v0[38] = v18;
  *v18 = v0;
  v18[1] = sub_1D4300FEC;
  v19 = v0[24];
  v20 = v0[20];
  v21 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D9C8](v20, v17, v21, v19);
}

void sub_1D430205C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = sub_1D4417234();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC7C9170 != -1)
  {
    swift_once();
  }

  v10 = sub_1D44181B4();
  __swift_project_value_buffer(v10, qword_1EC7C9C10);
  (*(v7 + 16))(v9, a3, v6);

  v11 = sub_1D44181A4();
  v12 = sub_1D441A154();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v20 = v14;
    *v13 = 136315394;
    *(v13 + 4) = sub_1D42E9410(a1, a2, &v20);
    *(v13 + 12) = 2080;
    sub_1D4304C94(&qword_1EDE338C8, MEMORY[0x1E6968FB0]);
    v15 = sub_1D441AD44();
    v17 = v16;
    (*(v7 + 8))(v9, v6);
    v18 = sub_1D42E9410(v15, v17, &v20);

    *(v13 + 14) = v18;
    _os_log_impl(&dword_1D4171000, v11, v12, "Recording task finished {subattachment: %s, url: %s}", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1DA6D8690](v14, -1, -1);
    MEMORY[0x1DA6D8690](v13, -1, -1);
  }

  else
  {

    (*(v7 + 8))(v9, v6);
  }
}

uint64_t sub_1D4302310(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_1D4419F54();
  v2[4] = sub_1D4419F44();
  v4 = sub_1D4419F04();

  return MEMORY[0x1EEE6DFA0](sub_1D43023A8, v4, v3);
}

uint64_t sub_1D43023A8()
{
  v1 = *(v0 + 24);

  v2 = sub_1D4417D84();
  v3 = sub_1D4417D64();
  v4 = *(v1 + OBJC_IVAR____TtC7NotesUI21AudioRecordingManager_waveformProcessor);
  [v4 recordingStartTime];
  if (v5 == 0.0)
  {
    v6 = [v2 format];
    [v4 prepareToProcessWithFormat:v6 audioTime:v3 punchInTime:0.0];
  }

  [v4 processAudioBuffer_];

  v7 = *(v0 + 8);

  return v7();
}

void sub_1D43024A0(char a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9920);
  inited = swift_initStackObject();
  *(inited + 32) = 0xD00000000000003DLL;
  *(inited + 16) = xmmword_1D44361A0;
  *(inited + 40) = 0x80000001D444D560;
  v6 = [*(v2 + OBJC_IVAR____TtC7NotesUI21AudioRecordingManager_attachmentModel) attachment];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 objectID];

    v9 = sub_1D41766C0(0, &qword_1EDE32768);
    *(inited + 48) = v8;
    *(inited + 72) = v9;
    *(inited + 80) = 0xD000000000000048;
    *(inited + 88) = 0x80000001D444D5A0;
    v10 = MEMORY[0x1E69E6370];
    *(inited + 96) = *(v2 + OBJC_IVAR____TtC7NotesUI21AudioRecordingManager_appBackgroundOccurred);
    *(inited + 120) = v10;
    *(inited + 128) = 0xD00000000000004BLL;
    *(inited + 136) = 0x80000001D444D5F0;
    *(inited + 144) = *(v2 + OBJC_IVAR____TtC7NotesUI21AudioRecordingManager_noteMultitaskingOccurred);
    *(inited + 168) = v10;
    *(inited + 176) = 0xD00000000000003BLL;
    *(inited + 184) = 0x80000001D444D640;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1D4418364();

    v11 = MEMORY[0x1E69E63B0];
    *(inited + 192) = *&v19[0];
    *(inited + 216) = v11;
    *(inited + 224) = 0xD00000000000003FLL;
    *(inited + 232) = 0x80000001D444D680;
    *(inited + 264) = v10;
    *(inited + 240) = a1 & 1;
    v12 = sub_1D42EA814(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7CB710);
    swift_arrayDestroy();
    sub_1D417CF94(a2, &v17, &qword_1EC7C9720);
    if (v18)
    {
      sub_1D417CF84(&v17, v19);
      sub_1D42D5D14(v19, &v17);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_1D432DECC(&v17, 0xD000000000000045, 0x80000001D444D6C0, isUniquelyReferenced_nonNull_native);
      __swift_destroy_boxed_opaque_existential_0(v19);
    }

    else
    {
      sub_1D41769C4(&v17, &qword_1EC7C9720);
    }

    v14 = [objc_opt_self() defaultCenter];
    v15 = *MEMORY[0x1E69B74C8];
    sub_1D43027FC(v12);

    v16 = sub_1D4419B54();

    [v14 postNotificationName:v15 object:0 userInfo:v16];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1D43027FC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C99D8);
    v2 = sub_1D441AC24();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_1D42D5D14(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_1D417CF84(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_1D417CF84(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_1D417CF84(v31, v32);
    result = sub_1D441A934();
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_1D417CF84(v32, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

id AudioRecordingManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AudioRecordingManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AudioRecordingManager(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D4302D90()
{
  v0[2] = sub_1D4419F54();
  v0[3] = sub_1D4419F44();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1D42FF360;

  return sub_1D42FD9DC(1);
}

uint64_t sub_1D4302E40()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D41775C8;

  return sub_1D42FC334();
}

uint64_t sub_1D4302ECC(char a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D4177CAC;

  return sub_1D42FD9DC(a1);
}

uint64_t sub_1D4302F60@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AudioRecordingManager(0);
  result = sub_1D44182E4();
  *a1 = result;
  return result;
}

uint64_t sub_1D4302FA0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D4418364();

  return v1;
}

double sub_1D4303018()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D4418364();

  return v1;
}

uint64_t sub_1D43030A4@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D4418364();

  *a1 = v3;
  return result;
}

uint64_t sub_1D4303120(void **a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;

  return sub_1D4418374();
}

uint64_t (*AudioRecordingCoordinator.currentRecordingManager.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_1D4418354();
  return sub_1D43065E8;
}

void sub_1D430323C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t sub_1D43032C0(uint64_t a1, uint64_t *a2)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  sub_1D4418334();
  return swift_endAccess();
}

uint64_t sub_1D4303338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  sub_1D4418334();
  return swift_endAccess();
}

uint64_t sub_1D43033B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9C98);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2);
  v9(v6, v8, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9C90);
  sub_1D4418344();
  swift_endAccess();
  return (*(v3 + 8))(v8, v2);
}

uint64_t AudioRecordingCoordinator.$currentRecordingManager.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9C98);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9C90);
  sub_1D4418344();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*AudioRecordingCoordinator.$currentRecordingManager.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9C98);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC7NotesUI25AudioRecordingCoordinator__currentRecordingManager;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9C90);
  sub_1D4418334();
  swift_endAccess();
  return sub_1D43065EC;
}

void sub_1D43037E0(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[13];
  v11 = v3[14];
  v7 = v3[11];
  v6 = v3[12];
  v8 = v3[10];
  if (a2)
  {
    v4(v3[12], v5, v3[10]);
    swift_beginAccess();
    sub_1D4418344();
    swift_endAccess();
    v9 = *(v7 + 8);
    v9(v5, v8);
    v10 = v11;
    v9(v11, v8);
  }

  else
  {
    swift_beginAccess();
    sub_1D4418344();
    swift_endAccess();
    v10 = v11;
    (*(v7 + 8))(v11, v8);
  }

  free(v10);
  free(v5);
  free(v6);

  free(v3);
}

uint64_t sub_1D4303948()
{
  type metadata accessor for AudioRecordingCoordinator(0);
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9CB0);
  result = sub_1D4418324();
  qword_1EDE32EE0 = v0;
  return result;
}

uint64_t static AudioRecordingCoordinator.sharedInstance.getter()
{
  if (qword_1EDE32ED8 != -1)
  {
    swift_once();
  }
}

uint64_t AudioRecordingCoordinator.isPaused.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9C88);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v10 - v1;
  v3 = sub_1D44178A4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D4418364();

  v7 = v11;
  if (v11)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1D4418364();

    if ((*(v4 + 88))(v6, v3) == *MEMORY[0x1E69B7170])
    {
      (*(v4 + 96))(v6, v3);
      v8 = swift_projectBox();
      sub_1D417CF94(v8, v2, &qword_1EC7C9C88);
      (*(v4 + 8))(v2, v3);

      return 1;
    }

    (*(v4 + 8))(v6, v3);
  }

  return 0;
}

uint64_t AudioRecordingCoordinator.deinit()
{
  v1 = OBJC_IVAR____TtC7NotesUI25AudioRecordingCoordinator__currentRecordingManager;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9C90);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t AudioRecordingCoordinator.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC7NotesUI25AudioRecordingCoordinator__currentRecordingManager;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9C90);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

id static ICAudioRecordingManager.currentAttachment.getter()
{
  if (qword_1EDE32ED8 != -1)
  {
    swift_once();
  }

  return AudioRecordingCoordinator.currentAttachment.getter();
}

BOOL static ICAudioRecordingManager.isRecording.getter()
{
  if (qword_1EDE32ED8 != -1)
  {
    swift_once();
  }

  return AudioRecordingCoordinator.isRecording.getter();
}

uint64_t sub_1D4303EC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  if (qword_1EDE32ED8 != -1)
  {
    v4 = a3;
    swift_once();
    a3 = v4;
  }

  return a3() & 1;
}

uint64_t static ICAudioRecordingManager.isPaused.getter()
{
  if (qword_1EDE32ED8 != -1)
  {
    swift_once();
  }

  return AudioRecordingCoordinator.isPaused.getter() & 1;
}

uint64_t static ICAudioRecordingManager.cancelCurrentAudioRecordingSession()()
{
  sub_1D4419F54();
  v0[2] = sub_1D4419F44();
  v2 = sub_1D4419F04();
  v0[3] = v2;
  v0[4] = v1;

  return MEMORY[0x1EEE6DFA0](sub_1D430401C, v2, v1);
}

uint64_t sub_1D430401C()
{
  if (qword_1EDE32ED8 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_1D43040E0;

  return AudioRecordingCoordinator.cancelCurrentAudioRecordingSession()();
}

uint64_t sub_1D43040E0()
{
  v2 = *v1;
  *(*v1 + 48) = v0;

  v3 = *(v2 + 32);
  v4 = *(v2 + 24);
  if (v0)
  {
    v5 = sub_1D4304280;
  }

  else
  {
    v5 = sub_1D430421C;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1D430421C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D4304280()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D4304450(uint64_t a1)
{
  v1[2] = a1;
  v1[3] = sub_1D4419F54();
  v1[4] = sub_1D4419F44();
  v3 = sub_1D4419F04();

  return MEMORY[0x1EEE6DFA0](sub_1D43044EC, v3, v2);
}

uint64_t sub_1D43044EC()
{
  v1 = v0[2];

  v0[5] = _Block_copy(v1);
  v0[6] = sub_1D4419F44();
  v3 = sub_1D4419F04();
  v0[7] = v3;
  v0[8] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1D430458C, v3, v2);
}

uint64_t sub_1D430458C()
{
  if (qword_1EDE32ED8 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = sub_1D4304650;

  return AudioRecordingCoordinator.cancelCurrentAudioRecordingSession()();
}

uint64_t sub_1D4304650()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  v3 = *(v2 + 64);
  v4 = *(v2 + 56);
  if (v0)
  {
    v5 = sub_1D4304810;
  }

  else
  {
    v5 = sub_1D430478C;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1D430478C()
{
  v1 = *(v0 + 40);

  if (v1)
  {
    v2 = *(v0 + 40);
    v2[2](v2, 0);
    _Block_release(v2);
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1D4304810()
{
  v1 = v0[5];

  v2 = v0[10];
  if (v1)
  {
    v3 = v0[5];
    v4 = sub_1D44170F4();

    (v3)[2](v3, v4);
    _Block_release(v3);
  }

  else
  {
  }

  v5 = v0[1];

  return v5();
}

ICAudioRecordingManager __swiftcall ICAudioRecordingManager.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

double sub_1D430496C()
{
  v1[1] = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  mach_timebase_info(v1);
  result = *v1;
  qword_1EC7C9C28 = v1[0];
  return result;
}

void sub_1D43049D0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9F60);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v9 - v1;
  if (qword_1EDE32ED8 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D4418364();

  v3 = v10;
  if (v10)
  {
    v4 = sub_1D4419F94();
    (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
    sub_1D4419F54();
    v5 = v3;
    v6 = sub_1D4419F44();
    v7 = swift_allocObject();
    v8 = MEMORY[0x1E69E85E0];
    v7[2] = v6;
    v7[3] = v8;
    v7[4] = v5;
    sub_1D42F085C(0, 0, v2, &unk_1D4436C30, v7);
  }
}

uint64_t sub_1D4304B88(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D4177CAC;

  return sub_1D42FCC64(a1, v4, v5, v6);
}

uint64_t sub_1D4304C3C(uint64_t a1)
{
  result = sub_1D4304C94(&qword_1EC7C9CA0, type metadata accessor for AudioRecordingManager);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D4304C94(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D4304CDC(uint64_t a1)
{
  result = sub_1D4304C94(&qword_1EC7C9CA8, type metadata accessor for AudioRecordingManager);
  *(a1 + 8) = result;
  return result;
}

uint64_t dispatch thunk of AudioRecordingManaging.pauseRecording()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 24) + **(a2 + 24));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D4177CAC;

  return v7(a1, a2);
}

uint64_t dispatch thunk of AudioRecordingManaging.resumeRecording()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 32) + **(a2 + 32));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D4177CAC;

  return v7(a1, a2);
}

uint64_t dispatch thunk of AudioRecordingManaging.startRecording()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 40) + **(a2 + 40));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D4177CAC;

  return v7(a1, a2);
}

uint64_t dispatch thunk of AudioRecordingManaging.stopEverything(pause:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 48) + **(a3 + 48));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D4177CAC;

  return v9(a1, a2, a3);
}

void sub_1D43051E8()
{
  sub_1D4305FD8();
  if (v0 <= 0x3F)
  {
    sub_1D4306030();
    if (v1 <= 0x3F)
    {
      sub_1D4306168(319, &qword_1EDE336B8, &qword_1EC7C9AC8);
      if (v2 <= 0x3F)
      {
        sub_1D4306168(319, &qword_1EDE336A8, &qword_1EC7C9C70);
        if (v3 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

uint64_t dispatch thunk of AudioRecordingManager.startRecording()()
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x220);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D4177CAC;

  return v5();
}

uint64_t dispatch thunk of AudioRecordingManager.stopEverything(pause:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x238);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D4177CAC;

  return v7(a1);
}

uint64_t dispatch thunk of AudioRecordingManager.pauseRecording()()
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x240);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D41775C8;

  return v5();
}

uint64_t dispatch thunk of AudioRecordingManager.resumeRecording()()
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x248);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D4177CAC;

  return v5();
}

void sub_1D4305FD8()
{
  if (!qword_1EDE336C8)
  {
    sub_1D44178A4();
    v0 = sub_1D4418384();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDE336C8);
    }
  }
}

void sub_1D4306030()
{
  if (!qword_1EDE336B0)
  {
    v0 = sub_1D4418384();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDE336B0);
    }
  }
}

void sub_1D43060A8()
{
  sub_1D4306168(319, &qword_1EDE336C0, &qword_1EC7C9CB0);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1D4306168(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v4 = sub_1D4418384();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D43061D0()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D4177CAC;

  return sub_1D4304450(v2);
}

uint64_t sub_1D430627C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D4177CAC;

  return sub_1D4176BD4(a1, v4, v5, v6);
}

uint64_t objectdestroy_35Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D4306388(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D4177CAC;

  return sub_1D42FD108(a1);
}

uint64_t sub_1D430643C(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1D4417234() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1D41775C8;

  return sub_1D4300854(a1, v7, v8, v9, v10, v1 + v6, v11);
}

unint64_t sub_1D430657C()
{
  result = qword_1EDE32A70;
  if (!qword_1EDE32A70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7CA520);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE32A70);
  }

  return result;
}

uint64_t sub_1D43065F8()
{
  v0 = sub_1D44181B4();
  __swift_allocate_value_buffer(v0, qword_1EDE32CA0);
  __swift_project_value_buffer(v0, qword_1EDE32CA0);
  return sub_1D4418164();
}

uint64_t sub_1D4306644()
{
  v0 = sub_1D44181B4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D44180A4();
  __swift_allocate_value_buffer(v4, qword_1EDE335C8);
  __swift_project_value_buffer(v4, qword_1EDE335C8);
  if (qword_1EDE32C98 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_1EDE32CA0);
  (*(v1 + 16))(v3, v5, v0);
  return sub_1D4418084();
}

id sub_1D4306780(uint64_t a1, uint64_t a2, char a3)
{
  v4 = sub_1D4417124();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    v10 = [result note];

    if (!v10)
    {
      return 0;
    }

    v11 = [v10 textStorage];

    if (!v11)
    {
      return 0;
    }

    if (a3)
    {
      [v11 ic_range];
    }

    [v11 ic_range];
    v12 = sub_1D441A6E4();
    if (v14)
    {

      return 0;
    }

    v15 = v12;
    v16 = v13;
    v17 = [objc_allocWithZone(ICCalculateStringScanner) initWithTextStorage_];
    Strong = swift_unknownObjectWeakLoadStrong();
    v38 = v11;
    v39 = v5;
    if (!Strong || (v19 = *(Strong + OBJC_IVAR___ICCalculateDocumentController_previewedExpressionString + 8), v20 = Strong, , v20, !v19))
    {
    }

    v21 = sub_1D4419C14();

    v22 = [v17 scanStringforRange:v15 previewedExpressionString:{v16, v21}];

    v40 = [v22 firstObject];
    v23 = [v22 secondObject];
    v24 = [v23 count];
    v46 = MEMORY[0x1E69E7CC0];
    sub_1D43CF16C(0, v24 & ~(v24 >> 63), 0);
    v25 = v46;
    result = sub_1D441A5B4();
    if (v24 < 0)
    {
      __break(1u);
LABEL_29:
      __break(1u);
      return result;
    }

    v36 = v22;
    v37 = v17;
    v35 = v23;
    if (v24)
    {
      sub_1D4308A94();
      do
      {
        result = sub_1D441A7A4();
        if (!v45)
        {
          goto LABEL_29;
        }

        sub_1D42D5D14(&v44, &v42);
        sub_1D4308AEC();
        swift_dynamicCast();
        v26 = v41;
        v27 = [v41 integerValue];

        __swift_destroy_boxed_opaque_existential_0(&v44);
        v46 = v25;
        v29 = *(v25 + 16);
        v28 = *(v25 + 24);
        if (v29 >= v28 >> 1)
        {
          sub_1D43CF16C((v28 > 1), v29 + 1, 1);
          v25 = v46;
        }

        *(v25 + 16) = v29 + 1;
        *(v25 + 8 * v29 + 32) = v27;
      }

      while (--v24);
    }

    sub_1D4308A94();
    sub_1D441A7A4();
    if (v43)
    {
      v30 = v37;
      do
      {
        sub_1D417CF84(&v42, &v44);
        sub_1D42D5D14(&v44, &v42);
        sub_1D4308AEC();
        swift_dynamicCast();
        v31 = v41;
        v32 = [v41 integerValue];

        __swift_destroy_boxed_opaque_existential_0(&v44);
        v46 = v25;
        v34 = *(v25 + 16);
        v33 = *(v25 + 24);
        if (v34 >= v33 >> 1)
        {
          sub_1D43CF16C((v33 > 1), v34 + 1, 1);
          v25 = v46;
        }

        *(v25 + 16) = v34 + 1;
        *(v25 + 8 * v34 + 32) = v32;
        sub_1D441A7A4();
      }

      while (v43);
    }

    else
    {
      v30 = v37;
    }

    (*(v39 + 8))(v7, v4);
    sub_1D41769C4(&v42, &qword_1EC7C9720);
    return v40;
  }

  return result;
}

void sub_1D4306C34(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v4 = Strong;
  v5 = [Strong note];

  if (!v5)
  {
    return;
  }

  v6 = [v5 textStorage];

  if (!v6)
  {
    return;
  }

  v7 = [v6 string];
  sub_1D4419C54();

  v8 = sub_1D4419C84();
  v10 = v9;

  if (v10)
  {
    goto LABEL_14;
  }

  if (!__OFSUB__(a1, v8))
  {
    v11 = sub_1D4306780(v8, a1 - v8, 0);
    if (v11)
    {
      v1 = v12;
      v13 = v11;
      v14 = objc_opt_self();
      v15 = v13;
      v16 = [v14 ic_equalsSignCharacterString];
      if (!v16)
      {
        sub_1D4419C54();
        v16 = sub_1D4419C14();
      }

      v17 = [v15 hasSuffix_];

      if (v17)
      {
        goto LABEL_13;
      }

      v18 = [v14 ic_fullWidthEqualsSignCharacterString];
      if (!v18)
      {
        sub_1D4419C54();
        v18 = sub_1D4419C14();
      }

      v19 = [v15 hasSuffix_];

      if (v19)
      {
LABEL_13:

        return;
      }

      v20 = [v14 ic_equalsSignCharacterString];
      if (!v20)
      {
        sub_1D4419C54();
        v20 = sub_1D4419C14();
      }

      v21 = [v15 stringByAppendingString_];

      if (!v21)
      {
        __break(1u);
        return;
      }

      a1 = *(v1 + 2);
      if (a1)
      {
        v10 = *&v1[8 * a1 + 24];
      }

      else
      {
        v10 = 0;
      }

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_23;
      }

      goto LABEL_27;
    }

LABEL_14:

    return;
  }

  __break(1u);
LABEL_27:
  v1 = sub_1D438D090(0, a1 + 1, 1, v1);
LABEL_23:
  v23 = *(v1 + 2);
  v22 = *(v1 + 3);
  if (v23 >= v22 >> 1)
  {
    v1 = sub_1D438D090((v22 > 1), v23 + 1, 1, v1);
  }

  *(v1 + 2) = v23 + 1;
  *&v1[8 * v23 + 32] = v10;
}

void sub_1D4306F28(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_7;
  }

  v9 = Strong;
  v10 = [Strong note];

  if (!v10)
  {
    goto LABEL_7;
  }

  v11 = [v10 textStorage];

  if (!v11)
  {
LABEL_8:
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
LABEL_9:
    *a4 = v11;
    a4[1] = v18;
    a4[2] = v19;
    a4[3] = v20;
    a4[4] = v21;
    return;
  }

  v12 = [a2 length];
  v13 = [a1 range];
  if (v12 < &v13[v14] || (v15 = *(a3 + 16), v16 = [a1 range], v15 < v16 + v17))
  {

LABEL_7:
    v11 = 0;
    goto LABEL_8;
  }

  v22 = [a1 range];
  v23 = [a1 range];
  if (v23 >= v15)
  {
    __break(1u);
    goto LABEL_20;
  }

  v24 = a3 + 32;
  v25 = *(a3 + 32 + 8 * v23);
  v18 = &v22[-v25];
  if (__OFSUB__(v22, v25))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v26 = [a1 range];
  v28 = v27;
  v29 = [a1 range];
  v31 = &v29[v30 - 1];
  if (__OFSUB__(&v29[v30], 1))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v31 >= v15)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v32 = *(v24 + 8 * v31);
  v33 = __OFSUB__(&v26[v28], v32);
  v34 = &v26[v28 - v32];
  if (v33)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v19 = v34 - v18;
  if (!__OFSUB__(v34, v18))
  {
    v35 = [a1 range];
    v37 = [a2 substringWithRange_];
    v20 = sub_1D4419C54();
    v21 = v38;

    v39 = objc_opt_self();
    v40 = [v39 ic_equalsSignCharacterString];
    v41 = sub_1D4419C54();
    v43 = v42;

    sub_1D42CC920();
    LOBYTE(v40) = sub_1D441A7F4();

    if (v40)
    {
      goto LABEL_9;
    }

    v44 = [v39 ic_fullWidthEqualsSignCharacterString];
    sub_1D4419C54();

    LOBYTE(v44) = sub_1D441A7F4();

    if (v44)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

LABEL_24:
  __break(1u);
}

char *sub_1D4307204(uint64_t a1, uint64_t a2, char a3)
{
  v7 = sub_1D4418074();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v37 - v12;
  v43 = v3;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v15 = Strong;
  if (![Strong isCalculateMathEnabled] || (v16 = sub_1D4306780(a1, a2, a3 & 1), v41 = v17, (v42 = v16) == 0))
  {

    return MEMORY[0x1E69E7CC0];
  }

  if (qword_1EDE335C0 != -1)
  {
LABEL_27:
    swift_once();
  }

  v18 = sub_1D44180A4();
  __swift_project_value_buffer(v18, qword_1EDE335C8);
  sub_1D4418064();
  v19 = sub_1D4418094();
  v20 = sub_1D441A3D4();
  if (sub_1D441A764())
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    v22 = sub_1D4418054();
    _os_signpost_emit_with_name_impl(&dword_1D4171000, v19, v20, v22, "matches(in:)", "", v21, 2u);
    MEMORY[0x1DA6D8690](v21, -1, -1);
  }

  v38 = v15;

  (*(v8 + 16))(v11, v13, v7);
  sub_1D44180E4();
  swift_allocObject();
  v37[1] = sub_1D44180D4();
  (*(v8 + 8))(v13, v7);
  sub_1D4419C54();
  v7 = sub_1D44199B4();

  v15 = (v7 & 0xFFFFFFFFFFFFFF8);
  if (v7 >> 62)
  {
    v23 = sub_1D441A8C4();
  }

  else
  {
    v23 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v8 = 0;
  v13 = (v7 & 0xC000000000000001);
  v39 = MEMORY[0x1E69E7CC0];
  while (v23 != v8)
  {
    if (v13)
    {
      v24 = MEMORY[0x1DA6D6410](v8, v7);
    }

    else
    {
      if (v8 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_26;
      }

      v24 = *(v7 + 8 * v8 + 32);
    }

    v11 = v24;
    v25 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    sub_1D4306F28(v24, v42, v41, &v44);
    v26 = v44;
    v40 = v45;
    v28 = v46;
    v27 = v47;

    ++v8;
    if (v26)
    {
      v29 = v39;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v29 = sub_1D438D194(0, *(v29 + 2) + 1, 1, v29);
      }

      v31 = *(v29 + 2);
      v30 = *(v29 + 3);
      v39 = v29;
      v11 = (v31 + 1);
      v32 = v40;
      if (v31 >= v30 >> 1)
      {
        v35 = sub_1D438D194((v30 > 1), v31 + 1, 1, v39);
        v32 = v40;
        v39 = v35;
      }

      v33 = v39;
      *(v39 + 2) = v11;
      v34 = &v33[40 * v31];
      *(v34 + 4) = v26;
      *(v34 + 40) = v32;
      *(v34 + 7) = v28;
      *(v34 + 8) = v27;
      v8 = v25;
    }
  }

  sub_1D4307608();

  return v39;
}

uint64_t sub_1D4307608()
{
  v0 = sub_1D44180B4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D4418074();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDE335C0 != -1)
  {
    swift_once();
  }

  v8 = sub_1D44180A4();
  __swift_project_value_buffer(v8, qword_1EDE335C8);
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
    _os_signpost_emit_with_name_impl(&dword_1D4171000, v9, v10, v13, "matches(in:)", v11, v12, 2u);
    MEMORY[0x1DA6D8690](v12, -1, -1);
  }

  return (*(v5 + 8))(v7, v4);
}

void *sub_1D4307894(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v11 = sub_1D4418074();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v46 - v16;
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v52 = a4;
  v53 = a5;
  v19 = result;
  v20 = [result note];

  if (!v20)
  {
    return 0;
  }

  v21 = [v20 managedObjectContext];
  if (!v21)
  {

    return 0;
  }

  v22 = v21;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {

LABEL_12:
    return 0;
  }

  v51 = v22;
  v22 = Strong;
  if (([Strong isCalculateMathEnabled] & 1) == 0)
  {

    goto LABEL_12;
  }

  v49 = v5;
  v50 = v22;
  v24 = sub_1D4306780(a1, a2, a3 & 1);
  if (!v24)
  {

    return 0;
  }

  v48 = v25;
  v46 = v24;
  v26 = [v20 textStorage];
  v27 = v26;
  if (v26)
  {
    v47 = [v26 hash];
  }

  else
  {
    v47 = 0;
  }

  if (qword_1EDE335C0 != -1)
  {
    swift_once();
  }

  v28 = sub_1D44180A4();
  __swift_project_value_buffer(v28, qword_1EDE335C8);
  sub_1D4418064();
  v29 = sub_1D4418094();
  v30 = sub_1D441A3D4();
  if (sub_1D441A764())
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    v32 = sub_1D4418054();
    _os_signpost_emit_with_name_impl(&dword_1D4171000, v29, v30, v32, "matches(in:completion:)", "", v31, 2u);
    MEMORY[0x1DA6D8690](v31, -1, -1);
  }

  (*(v12 + 16))(v15, v17, v11);
  sub_1D44180E4();
  swift_allocObject();
  v33 = sub_1D44180D4();
  (*(v12 + 8))(v17, v11);
  v34 = v46;
  sub_1D4419C54();
  v35 = swift_allocObject();
  swift_weakInit();
  v36 = swift_allocObject();
  v37 = v51;
  *(v36 + 16) = v51;
  *(v36 + 24) = v35;
  v38 = v47;
  v39 = v48;
  *(v36 + 32) = v20;
  *(v36 + 40) = v38;
  *(v36 + 48) = v27 == 0;
  *(v36 + 56) = v33;
  *(v36 + 64) = v34;
  v40 = v52;
  v41 = v53;
  *(v36 + 72) = v39;
  *(v36 + 80) = v40;
  *(v36 + 88) = v41;
  v42 = v37;

  v43 = v20;

  v44 = v34;

  v45 = sub_1D44199A4();

  return v45;
}

void sub_1D4307CE0(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, char a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v18 = swift_allocObject();
  *(v18 + 16) = a3;
  *(v18 + 24) = a4;
  *(v18 + 32) = a5;
  *(v18 + 40) = a6 & 1;
  *(v18 + 48) = a7;
  *(v18 + 56) = a1;
  *(v18 + 64) = a8;
  *(v18 + 72) = a9;
  *(v18 + 80) = a10;
  *(v18 + 88) = a11;
  aBlock[4] = sub_1D4308B78;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D417BEE4;
  aBlock[3] = &block_descriptor_4;
  v19 = _Block_copy(aBlock);

  v20 = a4;

  v21 = a8;

  [a2 performBlock_];
  _Block_release(v19);
}

uint64_t sub_1D4307E38(uint64_t a1, void *a2, id a3, char a4, uint64_t a5, unint64_t a6, void *a7, uint64_t a8, void (*a9)(char *), uint64_t a10)
{
  v72 = a7;
  v73 = a8;
  v68 = a5;
  v14 = sub_1D44180B4();
  v66 = *(v14 - 8);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v64 = &v61 - v18;
  v19 = sub_1D4418074();
  v69 = *(v19 - 8);
  v70 = v19;
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v61 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v65 = &v61 - v23;
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    goto LABEL_27;
  }

  v24 = [a2 textStorage];
  if (v24)
  {
    v25 = v14;
    v26 = v24;
    v27 = [v24 hash];

    v14 = v25;
    if ((a4 & 1) == 0 && v27 == a3)
    {
      goto LABEL_5;
    }

    goto LABEL_26;
  }

  if ((a4 & 1) == 0)
  {
LABEL_26:

LABEL_27:
    if (qword_1EDE335C0 != -1)
    {
LABEL_39:
      swift_once();
    }

    v51 = sub_1D44180A4();
    __swift_project_value_buffer(v51, qword_1EDE335C8);
    v52 = sub_1D4418094();
    sub_1D44180C4();
    v53 = sub_1D441A3C4();
    if (sub_1D441A764())
    {

      sub_1D44180F4();

      v54 = v66;
      if ((*(v66 + 88))(v17, v14) == *MEMORY[0x1E69E93E8])
      {
        v55 = "[Error] Interval already ended";
      }

      else
      {
        (*(v54 + 8))(v17, v14);
        v55 = "";
      }

      v56 = swift_slowAlloc();
      *v56 = 0;
      v57 = sub_1D4418054();
      _os_signpost_emit_with_name_impl(&dword_1D4171000, v52, v53, v57, "matches(in:completion:)", v55, v56, 2u);
      MEMORY[0x1DA6D8690](v56, -1, -1);
    }

    return (*(v69 + 8))(v22, v70);
  }

LABEL_5:
  v63 = v14;
  v61 = a10;
  v62 = a9;
  v14 = a6 & 0xFFFFFFFFFFFFFF8;
  if (a6 >> 62)
  {
    v17 = sub_1D441A8C4();
  }

  else
  {
    v17 = *((a6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v28 = 0;
  v22 = (a6 & 0xC000000000000001);
  v67 = MEMORY[0x1E69E7CC0];
  while (v17 != v28)
  {
    if (v22)
    {
      v29 = MEMORY[0x1DA6D6410](v28, a6);
    }

    else
    {
      if (v28 >= *((a6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_38;
      }

      v29 = *(a6 + 8 * v28 + 32);
    }

    v30 = v29;
    v31 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    sub_1D4306F28(v29, v72, v73, &v75);
    v32 = v75;
    v71 = v76;
    v33 = v77;
    v34 = v78;

    ++v28;
    if (v32)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v67 = sub_1D438D194(0, *(v67 + 2) + 1, 1, v67);
      }

      v36 = *(v67 + 2);
      v35 = *(v67 + 3);
      v37 = v71;
      if (v36 >= v35 >> 1)
      {
        v40 = sub_1D438D194((v35 > 1), v36 + 1, 1, v67);
        v37 = v71;
        v67 = v40;
      }

      v38 = v67;
      *(v67 + 2) = v36 + 1;
      v39 = &v38[40 * v36];
      *(v39 + 4) = v32;
      *(v39 + 40) = v37;
      *(v39 + 7) = v33;
      *(v39 + 8) = v34;
      v28 = v31;
    }
  }

  if (qword_1EDE335C0 != -1)
  {
    swift_once();
  }

  v41 = sub_1D44180A4();
  __swift_project_value_buffer(v41, qword_1EDE335C8);
  v42 = sub_1D4418094();
  v43 = v65;
  sub_1D44180C4();
  v44 = sub_1D441A3C4();
  v45 = sub_1D441A764();
  v46 = v63;
  if (v45)
  {

    v47 = v64;
    sub_1D44180F4();
    v48 = v47;

    v49 = v66;
    if ((*(v66 + 88))(v48, v46) == *MEMORY[0x1E69E93E8])
    {
      v50 = "[Error] Interval already ended";
    }

    else
    {
      (*(v49 + 8))(v48, v46);
      v50 = "";
    }

    v59 = swift_slowAlloc();
    *v59 = 0;
    v60 = sub_1D4418054();
    _os_signpost_emit_with_name_impl(&dword_1D4171000, v42, v44, v60, "matches(in:completion:)", v50, v59, 2u);
    MEMORY[0x1DA6D8690](v59, -1, -1);
  }

  (*(v69 + 8))(v43, v70);
  v62(v67);
}

void sub_1D43084A0(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = 0uLL;
  if (!Strong)
  {
    v22 = 0;
    a1 = 0;
    v10 = 0;
LABEL_22:
    *a3 = v22;
    *(a3 + 8) = a1;
    *(a3 + 16) = v7;
    *(a3 + 32) = v10;
    return;
  }

  v8 = Strong;
  v9 = [Strong note];

  if (!v9)
  {
    goto LABEL_14;
  }

  v10 = [v9 textStorage];

  if (!v10)
  {
    v22 = 0;
    a1 = 0;
    goto LABEL_21;
  }

  v11 = v10;
  v12 = [v11 string];
  sub_1D4419C54();

  v13 = sub_1D4419C84();
  v15 = v14;
  v17 = v16;

  if ((v17 & 1) != 0 || a1 < 0)
  {

    goto LABEL_13;
  }

  v18 = [v11 length];

  if (v18 < a1)
  {
LABEL_13:

LABEL_14:
    v22 = 0;
    a1 = 0;
    v10 = 0;
LABEL_21:
    v7 = 0uLL;
    goto LABEL_22;
  }

  v32 = sub_1D4307204(v13, v15, 0);
  v19 = *(v32 + 2);
  if (!a2)
  {
    v24 = v32 + 24;
    v25 = v19 + 1;
    while (--v25)
    {
      v26 = (v24 + 40);
      v27 = *(v24 + 2);
      v24 += 40;
      if (v27 == a1)
      {
        v31 = *(v26 - 1);
        v10 = *v26;
        v22 = *(v26 - 4);

        v7 = v31;
        goto LABEL_22;
      }
    }

    goto LABEL_32;
  }

  if (a2 != 1)
  {
    if (v19)
    {
      v28 = 0;
      v29 = (v32 + 64);
      while (v28 < *(v32 + 2))
      {
        v23 = *(v29 - 3);
        v10 = *v29;
        v30 = *(v29 - 1);
        v22 = *(v29 - 4);

        if (v30 + v23 == a1)
        {
LABEL_33:

          a1 = v23;
          v7 = v30;
          goto LABEL_22;
        }

        ++v28;
        v29 += 5;
        if (v19 == v28)
        {
          goto LABEL_32;
        }
      }

      goto LABEL_35;
    }

    goto LABEL_32;
  }

  if (!v19)
  {
LABEL_32:

    goto LABEL_14;
  }

  v20 = 0;
  v21 = (v32 + 64);
  while (v20 < *(v32 + 2))
  {
    v23 = *(v21 - 3);
    if (v23 <= a1)
    {
      v10 = *v21;
      v30 = *(v21 - 1);
      v22 = *(v21 - 4);

      if (v30 + v23 >= a1)
      {
        goto LABEL_33;
      }
    }

    ++v20;
    v21 += 5;
    if (v19 == v20)
    {
      goto LABEL_32;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

uint64_t sub_1D43087A4()
{
  MEMORY[0x1DA6D8750](v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1D4308810()
{
  v1 = sub_1D441AF44();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v17[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9CD8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v17[-v6];
  v8 = *v0;
  v21 = *(v0 + 24);
  v9 = v0[1];
  v18 = *v0;
  v19 = v9;
  v20 = *(v0 + 4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9920);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1D44364A0;
  *(v10 + 32) = 0x65676E6172;
  *(v10 + 40) = 0xE500000000000000;
  type metadata accessor for _NSRange(0);
  *(v10 + 48) = *(v0 + 8);
  *(v10 + 72) = v11;
  *(v10 + 80) = 0x7475706E69;
  *(v10 + 88) = 0xE500000000000000;
  *(v10 + 120) = MEMORY[0x1E69E6158];
  *(v10 + 96) = *(v0 + 24);
  v12 = *MEMORY[0x1E69E75B8];
  v13 = sub_1D441AF34();
  v14 = *(v13 - 8);
  (*(v14 + 104))(v7, v12, v13);
  (*(v14 + 56))(v7, 0, 1, v13);
  (*(v2 + 104))(v4, *MEMORY[0x1E69E75D8], v1);

  sub_1D4308D74(&v21, v17);
  v15 = v8;
  return sub_1D441AF64();
}

unint64_t sub_1D4308A94()
{
  result = qword_1EDE338D0;
  if (!qword_1EDE338D0)
  {
    sub_1D4417124();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE338D0);
  }

  return result;
}

unint64_t sub_1D4308AEC()
{
  result = qword_1EDE33950;
  if (!qword_1EDE33950)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDE33950);
  }

  return result;
}

void *sub_1D4308BB4()
{
  swift_unknownObjectWeakInit();
  v0[3] = 63;
  v0[4] = 0xE100000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9CD0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D4435D40;
  v2 = *MEMORY[0x1E6992290];
  *(inited + 32) = *MEMORY[0x1E6992290];
  v3 = objc_allocWithZone(MEMORY[0x1E696AD98]);
  v4 = v2;
  v5 = [v3 initWithBool_];
  *(inited + 64) = sub_1D4308AEC();
  *(inited + 40) = v5;
  v6 = sub_1D42EA944(inited);
  swift_setDeallocating();
  sub_1D41769C4(inited + 32, &qword_1EC7C99E8);
  v0[5] = v6;
  swift_unknownObjectWeakAssign();
  return v0;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1D4308CD4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D4308D1C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_1D4308DDC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9908);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D4308E54(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9908);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t Link.content.getter(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 36));

  return v2;
}

uint64_t Link.content.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (v3 + *(a3 + 36));

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t Link.init(destination:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1D4417234();
  (*(*(v8 - 8) + 56))(a4, 1, 1, v8);
  sub_1D4308E54(a1, a4);
  result = type metadata accessor for Link();
  v10 = (a4 + *(result + 36));
  *v10 = a2;
  v10[1] = a3;
  return result;
}

uint64_t Link.body.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v25 = a2;
  v5 = *(a1 + 16);
  v24 = *(MEMORY[0x1EEE9AC00](a1) + 24);
  v23 = sub_1D4418E84();
  MEMORY[0x1EEE9AC00](v23);
  v22 = &v22 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9908);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v22 - v8;
  v10 = sub_1D4417234();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v22 - v15;
  sub_1D4308DDC(v3, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    v17 = sub_1D4309374(v9);
    (*(v3 + *(a1 + 36)))(v17);
    result = sub_1D44192E4();
    v19 = result;
  }

  else
  {
    (*(v11 + 32))(v16, v9, v10);
    v20 = (*(v11 + 16))(v14, v16, v10);
    MEMORY[0x1EEE9AC00](v20);
    v21 = v24;
    *(&v22 - 4) = v5;
    *(&v22 - 3) = v21;
    *(&v22 - 2) = v3;
    sub_1D4418E74();
    swift_getWitnessTable();
    v19 = sub_1D44192E4();
    result = (*(v11 + 8))(v16, v10);
  }

  *v25 = v19;
  return result;
}

uint64_t sub_1D4309374(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9908);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D43093DC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13 - v8;
  v10 = type metadata accessor for Link();
  (*(a1 + *(v10 + 36)))();
  sub_1D43EE934(v7);
  v11 = *(v4 + 8);
  v11(v7, a2);
  sub_1D43EE934(v9);
  return (v11)(v9, a2);
}

void sub_1D4309580()
{
  sub_1D430962C();
  if (v0 <= 0x3F)
  {
    sub_1D4309684();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D430962C()
{
  if (!qword_1EDE338C0)
  {
    sub_1D4417234();
    v0 = sub_1D441A784();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDE338C0);
    }
  }
}

unint64_t sub_1D4309684()
{
  result = qword_1EDE323A0;
  if (!qword_1EDE323A0)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1EDE323A0);
  }

  return result;
}

void *sub_1D43096D4()
{
  v1 = v0 + OBJC_IVAR____TtCE7NotesUICSo29ICCalculateDocumentController5Index_cachedRange;
  if (*(v0 + OBJC_IVAR____TtCE7NotesUICSo29ICCalculateDocumentController5Index_cachedRange + 16) != 1)
  {
    return *v1;
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    v4 = [result mergeableString];

    v5 = sub_1D441A3E4();
    v6 = v5;
    v7 = *(v5 + 16);
    v8 = v7 == 0;
    if (v7)
    {
      v9 = *(v6 + 32);
      v10 = *(v6 + 40);
    }

    else
    {
      v9 = 0;
      v10 = 0;
    }

    v12 = v8;
    result = v9;
    v11 = v10;
  }

  else
  {
    v11 = 0;
    v12 = 1;
  }

  *v1 = result;
  *(v1 + 8) = v11;
  *(v1 + 16) = v12;
  return result;
}

uint64_t sub_1D43097B8@<X0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v2 = sub_1D441AF44();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9CD8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v23 - v7;
  v24 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9920);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1D4435D30;
  *(v9 + 32) = 0x65676E6172;
  *(v9 + 40) = 0xE500000000000000;

  v10 = sub_1D43096D4();
  v12 = v11;
  v14 = v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9A10);
  *(v9 + 48) = v10;
  *(v9 + 56) = v12;
  *(v9 + 64) = v14 & 1;
  *(v9 + 72) = v15;
  strcpy((v9 + 80), "paperKitIndex");
  *(v9 + 94) = -4864;
  v16 = OBJC_IVAR____TtCE7NotesUICSo29ICCalculateDocumentController5Index_paperKitIndex;
  *(v9 + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7CA3B0);
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm((v9 + 96));
  sub_1D430A294(v1 + v16, boxed_opaque_existential_0Tm);
  *(v9 + 128) = 1752392040;
  *(v9 + 136) = 0xE400000000000000;
  v18 = sub_1D4309AAC();
  *(v9 + 168) = MEMORY[0x1E69E6530];
  *(v9 + 144) = v18;
  v19 = *MEMORY[0x1E69E75B8];
  v20 = sub_1D441AF34();
  v21 = *(v20 - 8);
  (*(v21 + 104))(v8, v19, v20);
  (*(v21 + 56))(v8, 0, 1, v20);
  (*(v3 + 104))(v5, *MEMORY[0x1E69E75D8], v2);
  return sub_1D441AF64();
}

uint64_t sub_1D4309AAC()
{
  v1 = sub_1D44196C4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7CA3B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v9 - v6;
  sub_1D441AEB4();
  sub_1D441A424();
  sub_1D430A294(v0 + OBJC_IVAR____TtCE7NotesUICSo29ICCalculateDocumentController5Index_paperKitIndex, v7);
  if ((*(v2 + 48))(v7, 1, v1) == 1)
  {
    sub_1D441AED4();
  }

  else
  {
    (*(v2 + 32))(v4, v7, v1);
    sub_1D441AED4();
    sub_1D418A15C(&qword_1EC7CA4C0, MEMORY[0x1E69782D8]);
    sub_1D4419B94();
    (*(v2 + 8))(v4, v1);
  }

  return sub_1D441AF04();
}

uint64_t sub_1D4309CA8()
{
  v1 = OBJC_IVAR____TtCE7NotesUICSo29ICCalculateDocumentController5Index_selection;
  v2 = sub_1D441A434();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  MEMORY[0x1DA6D8750](v0 + OBJC_IVAR____TtCE7NotesUICSo29ICCalculateDocumentController5Index_textStorage);
  sub_1D430A38C(v0 + OBJC_IVAR____TtCE7NotesUICSo29ICCalculateDocumentController5Index_paperKitIndex);

  return swift_deallocClassInstance();
}

uint64_t sub_1D4309E3C()
{
  v1 = sub_1D44196C4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7CA3B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v10 - v6;
  v8 = *v0;
  sub_1D441A424();
  sub_1D430A294(v8 + OBJC_IVAR____TtCE7NotesUICSo29ICCalculateDocumentController5Index_paperKitIndex, v7);
  if ((*(v2 + 48))(v7, 1, v1) == 1)
  {
    return sub_1D441AED4();
  }

  (*(v2 + 32))(v4, v7, v1);
  sub_1D441AED4();
  sub_1D418A15C(&qword_1EC7CA4C0, MEMORY[0x1E69782D8]);
  sub_1D4419B94();
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_1D430A02C()
{
  v1 = sub_1D44196C4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7CA3B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v10 - v6;
  v8 = *v0;
  sub_1D441AEB4();
  sub_1D441A424();
  sub_1D430A294(v8 + OBJC_IVAR____TtCE7NotesUICSo29ICCalculateDocumentController5Index_paperKitIndex, v7);
  if ((*(v2 + 48))(v7, 1, v1) == 1)
  {
    sub_1D441AED4();
  }

  else
  {
    (*(v2 + 32))(v4, v7, v1);
    sub_1D441AED4();
    sub_1D418A15C(&qword_1EC7CA4C0, MEMORY[0x1E69782D8]);
    sub_1D4419B94();
    (*(v2 + 8))(v4, v1);
  }

  return sub_1D441AF04();
}

BOOL sub_1D430A234(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return (sub_1D441A414() & 1) != 0 && sub_1D43C4934(v2 + OBJC_IVAR____TtCE7NotesUICSo29ICCalculateDocumentController5Index_paperKitIndex, v3 + OBJC_IVAR____TtCE7NotesUICSo29ICCalculateDocumentController5Index_paperKitIndex) == 0;
}

uint64_t sub_1D430A294(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7CA3B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

BOOL sub_1D430A304(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D43096D4();
  v6 = v5 & 1;
  if (v5)
  {
    v7 = 0;
  }

  else
  {
    v7 = v4;
  }

  v8 = sub_1D43096D4();
  v10 = v9 & 1;
  if (v9)
  {
    v11 = 0;
  }

  else
  {
    v11 = v8;
  }

  v12 = sub_1D43C4904(v7, v6, v11, v10);
  v13 = sub_1D43C4934(a1 + OBJC_IVAR____TtCE7NotesUICSo29ICCalculateDocumentController5Index_paperKitIndex, a2 + OBJC_IVAR____TtCE7NotesUICSo29ICCalculateDocumentController5Index_paperKitIndex);
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = v13;
  }

  return v14 == -1;
}

uint64_t sub_1D430A38C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7CA3B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D430A3F4(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7CA3B0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v19 - v7;
  v9 = sub_1D441A434();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [a1 mergeableString];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9CE0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1D4435D40;
  *(v14 + 32) = a2;
  *(v14 + 40) = a3;
  sub_1D441A444();

  v15 = sub_1D44196C4();
  (*(*(v15 - 8) + 56))(v8, 1, 1, v15);
  _s5IndexCMa();
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = v16 + OBJC_IVAR____TtCE7NotesUICSo29ICCalculateDocumentController5Index_cachedRange;
  *v17 = 0;
  *(v17 + 8) = 0;
  *(v17 + 16) = 1;
  (*(v10 + 32))(v16 + OBJC_IVAR____TtCE7NotesUICSo29ICCalculateDocumentController5Index_selection, v12, v9);
  swift_unknownObjectWeakAssign();
  sub_1D430A63C(v8, v16 + OBJC_IVAR____TtCE7NotesUICSo29ICCalculateDocumentController5Index_paperKitIndex);
  return v16;
}

uint64_t sub_1D430A63C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7CA3B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D430A6AC(int a1)
{
  LODWORD(v55) = a1;
  v48 = sub_1D4419444();
  v1 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v52 = &v43 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_1D4419484();
  v51 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v50 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for PressGestureButtonStyle();
  v46 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v47 = v4;
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_1D44194A4();
  v49 = *(v58 - 8);
  v6 = MEMORY[0x1EEE9AC00](v58);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v54 = &v43 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C98F0);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v43 - v14;
  v16 = sub_1D4417434();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  if (v55)
  {
    v43 = v5;
    v22 = &v43 - v21;
    v45 = &v43 - v21;
    sub_1D4417424();
    v55 = v1;
    v23 = *(v17 + 16);
    v23(v15, v22, v16);
    v24 = v23;
    v25 = v16;
    (*(v17 + 56))(v15, 0, 1, v16);
    sub_1D430BD0C(v15, v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9CF0);
    v26 = v57;
    sub_1D44192A4();
    sub_1D41769C4(v15, &qword_1EC7C98F0);
    sub_1D430C100();
    v44 = sub_1D441A2C4();
    sub_1D4419494();
    sub_1D44194F4();
    v56 = *(v49 + 8);
    (v56)(v8, v58);
    v24(v20, v45, v25);
    v27 = v43;
    sub_1D430BFA8(v26, v43);
    v28 = (*(v17 + 80) + 16) & ~*(v17 + 80);
    v29 = (v18 + *(v46 + 80) + v28) & ~*(v46 + 80);
    v30 = swift_allocObject();
    (*(v17 + 32))(v30 + v28, v20, v25);
    sub_1D430C00C(v27, v30 + v29);
    v63 = sub_1D430C14C;
    v64 = v30;
    aBlock = MEMORY[0x1E69E9820];
    v60 = 1107296256;
    v61 = sub_1D417BEE4;
    v62 = &block_descriptor_5;
    v31 = _Block_copy(&aBlock);

    v32 = v50;
    sub_1D4419464();
    aBlock = MEMORY[0x1E69E7CC0];
    sub_1D430C4C0(&qword_1EDE32AD0, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA520);
    sub_1D417645C(&qword_1EDE32A70, &qword_1EC7CA520);
    v33 = v52;
    v34 = v48;
    sub_1D441A814();
    v35 = v54;
    v36 = v44;
    MEMORY[0x1DA6D5C70](v54, v32, v33, v31);
    _Block_release(v31);

    (*(v55 + 8))(v33, v34);
    (*(v51 + 8))(v32, v53);
    (v56)(v35, v58);
    return (*(v17 + 8))(v45, v25);
  }

  else
  {
    (*(v17 + 56))(v15, 1, 1, v16);
    sub_1D430BD0C(v15, v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9CF0);
    v38 = v57;
    sub_1D44192A4();
    sub_1D41769C4(v15, &qword_1EC7C98F0);
    v39 = v56;
    v40 = (v38 + *(v56 + 20));
    v41 = *v40;
    v42 = *(v40 + 1);
    LOBYTE(aBlock) = v41;
    v60 = v42;
    v65 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9D20);
    sub_1D44192A4();
    return (*(v38 + *(v39 + 28)))(0);
  }
}

uint64_t sub_1D430AE50(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D4419444();
  v54 = *(v4 - 8);
  v55 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v52 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_1D4419484();
  v51 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v50 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PressGestureButtonStyle();
  v8 = *(v7 - 8);
  v45 = v7;
  v46 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v47 = v9;
  v48 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D4417434();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v44 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9D28);
  v14 = v13 - 8;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v44 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C98F0);
  v18 = MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v44 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v44 - v24;
  (*(v11 + 16))(&v44 - v24, a1, v10);
  (*(v11 + 56))(v25, 0, 1, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9CF0);
  v49 = a2;
  sub_1D4419294();
  v26 = *(v14 + 56);
  sub_1D430BD0C(v25, v16);
  sub_1D430BD0C(v23, &v16[v26]);
  v27 = *(v11 + 48);
  if (v27(v16, 1, v10) != 1)
  {
    sub_1D430BD0C(v16, v20);
    if (v27(&v16[v26], 1, v10) != 1)
    {
      v29 = v44;
      (*(v11 + 32))(v44, &v16[v26], v10);
      sub_1D430C4C0(&qword_1EC7C9800, MEMORY[0x1E6969530]);
      v30 = sub_1D4419BE4();
      v31 = *(v11 + 8);
      v31(v29, v10);
      sub_1D41769C4(v23, &qword_1EC7C98F0);
      sub_1D41769C4(v25, &qword_1EC7C98F0);
      v31(v20, v10);
      result = sub_1D41769C4(v16, &qword_1EC7C98F0);
      if ((v30 & 1) == 0)
      {
        return result;
      }

      goto LABEL_8;
    }

    sub_1D41769C4(v23, &qword_1EC7C98F0);
    sub_1D41769C4(v25, &qword_1EC7C98F0);
    (*(v11 + 8))(v20, v10);
    return sub_1D41769C4(v16, &qword_1EC7C9D28);
  }

  sub_1D41769C4(v23, &qword_1EC7C98F0);
  sub_1D41769C4(v25, &qword_1EC7C98F0);
  if (v27(&v16[v26], 1, v10) != 1)
  {
    return sub_1D41769C4(v16, &qword_1EC7C9D28);
  }

  sub_1D41769C4(v16, &qword_1EC7C98F0);
LABEL_8:
  v32 = v49;
  v33 = v49 + *(v45 + 20);
  v34 = *v33;
  v35 = *(v33 + 8);
  LOBYTE(aBlock) = v34;
  v57 = v35;
  v62 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9D20);
  sub_1D44192A4();
  sub_1D430C100();
  v36 = sub_1D441A2C4();
  v37 = v48;
  sub_1D430BFA8(v32, v48);
  v38 = (*(v46 + 80) + 16) & ~*(v46 + 80);
  v39 = swift_allocObject();
  sub_1D430C00C(v37, v39 + v38);
  v60 = sub_1D430C378;
  v61 = v39;
  aBlock = MEMORY[0x1E69E9820];
  v57 = 1107296256;
  v58 = sub_1D417BEE4;
  v59 = &block_descriptor_18;
  v40 = _Block_copy(&aBlock);

  v41 = v50;
  sub_1D4419464();
  aBlock = MEMORY[0x1E69E7CC0];
  sub_1D430C4C0(&qword_1EDE32AD0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA520);
  sub_1D417645C(&qword_1EDE32A70, &qword_1EC7CA520);
  v42 = v52;
  v43 = v55;
  sub_1D441A814();
  MEMORY[0x1DA6D5D00](0, v41, v42, v40);
  _Block_release(v40);

  (*(v54 + 8))(v42, v43);
  return (*(v51 + 8))(v41, v53);
}

uint64_t sub_1D430B620(uint64_t a1)
{
  v2 = type metadata accessor for PressGestureButtonStyle();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9D20);
  sub_1D44192A4();
  return (*(a1 + *(v2 + 28)))(1);
}

uint64_t sub_1D430B6B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1);
  sub_1D4418C54();
  v8 = sub_1D4418C64();
  sub_1D430BFA8(v4, &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v10 = swift_allocObject();
  sub_1D430C00C(&v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
  v11 = swift_allocObject();
  *(v11 + 16) = sub_1D430C070;
  *(v11 + 24) = v10;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9D18);
  v13 = a3 + *(result + 36);
  *v13 = v8 & 1;
  *(v13 + 8) = sub_1D430C0D4;
  *(v13 + 16) = v11;
  return result;
}

uint64_t View.onPressGesture(delay:perform:tapAction:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, double a8@<D0>)
{
  v33 = a4;
  v37 = a1;
  v38 = a2;
  v39 = a7;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C98F0);
  v12 = MEMORY[0x1EEE9AC00](v35);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v32 - v15;
  v17 = type metadata accessor for PressGestureButtonStyle();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1D44192D4();
  v36 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v32 - v21;
  v23 = swift_allocObject();
  v24 = v33;
  v25 = v34;
  *(v23 + 16) = a3;
  *(v23 + 24) = v24;
  v40 = a5;
  v41 = a6;
  v42 = v25;
  sub_1D417C7B4(a3);
  sub_1D44192C4();
  v26 = sub_1D4417434();
  (*(*(v26 - 8) + 56))(v16, 1, 1, v26);
  sub_1D430BD0C(v16, v14);
  sub_1D4419284();
  sub_1D41769C4(v16, &qword_1EC7C98F0);
  v27 = &v19[v17[5]];
  v43 = 0;
  sub_1D4419284();
  v28 = v45;
  *v27 = v44;
  *(v27 + 1) = v28;
  *&v19[v17[6]] = a8;
  v29 = &v19[v17[7]];
  v30 = v38;
  *v29 = v37;
  *(v29 + 1) = v30;

  swift_getWitnessTable();
  sub_1D430C4C0(&qword_1EC7C9CE8, type metadata accessor for PressGestureButtonStyle);
  sub_1D4418FD4();
  sub_1D430BD7C(v19);
  return (*(v36 + 8))(v22, v20);
}

uint64_t type metadata accessor for PressGestureButtonStyle()
{
  result = qword_1EC7C9CF8;
  if (!qword_1EC7C9CF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t (*sub_1D430BBC4(uint64_t (*result)(void)))(void)
{
  if (result)
  {
    return result();
  }

  return result;
}

uint64_t sub_1D430BBF4()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t sub_1D430BC24(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  v4 = MEMORY[0x1EEE9AC00]();
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D43EE934(v4);
  sub_1D43EE934(v6);
  return (*(v3 + 8))(v6, a2);
}

uint64_t sub_1D430BD0C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C98F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D430BD7C(uint64_t a1)
{
  v2 = type metadata accessor for PressGestureButtonStyle();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t View.onPressGesture(delaysTouches:perform:tapAction:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v8 = 0.15;
  if ((a1 & 1) == 0)
  {
    v8 = 0.0;
  }

  return View.onPressGesture(delay:perform:tapAction:)(a2, a3, a4, a5, a6, a7, a8, v8);
}

void sub_1D430BE34()
{
  sub_1D430BED8();
  if (v0 <= 0x3F)
  {
    sub_1D430BF3C();
    if (v1 <= 0x3F)
    {
      sub_1D4309684();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1D430BED8()
{
  if (!qword_1EC7C9D08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7C98F0);
    v0 = sub_1D44192B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC7C9D08);
    }
  }
}

void sub_1D430BF3C()
{
  if (!qword_1EC7C9D10)
  {
    v0 = sub_1D44192B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC7C9D10);
    }
  }
}

uint64_t sub_1D430BFA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PressGestureButtonStyle();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D430C00C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PressGestureButtonStyle();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D430C100()
{
  result = qword_1EDE33D70;
  if (!qword_1EDE33D70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDE33D70);
  }

  return result;
}

uint64_t sub_1D430C14C()
{
  v1 = *(sub_1D4417434() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for PressGestureButtonStyle() - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_1D430AE50(v0 + v2, v5);
}

uint64_t objectdestroy_5Tm()
{
  v1 = *(type metadata accessor for PressGestureButtonStyle() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_1D4417434();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9CF0);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1D430C378()
{
  v1 = *(type metadata accessor for PressGestureButtonStyle() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1D430B620(v2);
}

unint64_t sub_1D430C3D8()
{
  result = qword_1EC7C9D30;
  if (!qword_1EC7C9D30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7C9D18);
    sub_1D430C4C0(&qword_1EC7C9D38, MEMORY[0x1E697C8D0]);
    sub_1D417645C(&qword_1EC7C9D40, &qword_1EC7C9D48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7C9D30);
  }

  return result;
}

uint64_t sub_1D430C4C0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D430C530()
{
  result = qword_1EC7C9D50;
  if (!qword_1EC7C9D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7C9D50);
  }

  return result;
}

uint64_t sub_1D430C5E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D430C6E4();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1D430C648(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D430C6E4();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1D430C6AC()
{
  sub_1D430C6E4();
  sub_1D4418B44();
  __break(1u);
}

unint64_t sub_1D430C6E4()
{
  result = qword_1EC7C9D58;
  if (!qword_1EC7C9D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7C9D58);
  }

  return result;
}

uint64_t LockedAttachmentView.init(layout:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = ICUIFrameworkBundleIdentifier();
  if (!v4)
  {
    sub_1D4419C54();
    v4 = sub_1D4419C14();
  }

  v5 = [objc_opt_self() bundleWithIdentifier_];

  result = sub_1D44191E4();
  *a2 = a1;
  a2[1] = result;
  return result;
}

uint64_t LockedAttachmentView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D4418684();
  v4 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9D60);
  v8 = v7 - 8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v43 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9D68);
  v12 = v11 - 8;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v43 - v13;
  v15 = *v1;
  v16 = v1[1];
  sub_1D430CAF8(v15, &v43 - v13);
  v17 = sub_1D4418D04();
  sub_1D4418494();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v26 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9D70) + 36)];
  *v26 = v17;
  *(v26 + 1) = v19;
  *(v26 + 2) = v21;
  *(v26 + 3) = v23;
  *(v26 + 4) = v25;
  v26[40] = 0;
  v27 = sub_1D4418D34();
  sub_1D4418494();
  v28 = &v14[*(v12 + 44)];
  *v28 = v27;
  *(v28 + 1) = v29;
  *(v28 + 2) = v30;
  *(v28 + 3) = v31;
  *(v28 + 4) = v32;
  v28[40] = 0;
  if ([objc_opt_self() deviceIsMac])
  {
    v33 = 10.0;
  }

  else
  {
    v33 = 18.0;
  }

  v34 = *(v4 + 28);
  v35 = *MEMORY[0x1E697F468];
  v36 = sub_1D44189C4();
  (*(*(v36 - 8) + 104))(v6 + v34, v35, v36);
  *v6 = v33;
  v6[1] = v33;
  sub_1D430CF58(v6, v10);
  *&v10[*(v8 + 60)] = v16;
  *&v10[*(v8 + 64)] = 256;

  v37 = sub_1D4419364();
  v39 = v38;
  v40 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9D78) + 36);
  sub_1D42D742C(v10, v40, &qword_1EC7C9D60);
  v41 = (v40 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9D80) + 36));
  *v41 = v37;
  v41[1] = v39;
  return sub_1D42D742C(v14, a1, &qword_1EC7C9D68);
}

uint64_t sub_1D430CAF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9DE8);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v29 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9DD8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v29 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9DF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v29 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9DC8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v29 - v17;
  if (a1 == 1)
  {
    *v12 = sub_1D4418924();
    *(v12 + 1) = 0;
    v29[2] = v10;
    v12[16] = 1;
    v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9DF8) + 44);
    v29[1] = v16;
    v20 = &v12[v19];
    *v9 = sub_1D4418A34();
    *(v9 + 1) = 0;
    v9[16] = 1;
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9E00);
    sub_1D430DB2C(&v9[*(v21 + 44)]);
    sub_1D417CF94(v9, v7, &qword_1EC7C9DE8);
    *v20 = 0;
    v20[8] = 1;
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9E08);
    v29[0] = a2;
    v23 = v22;
    sub_1D417CF94(v7, &v20[*(v22 + 48)], &qword_1EC7C9DE8);
    v24 = &v20[*(v23 + 64)];
    *v24 = 0;
    v24[8] = 1;
    sub_1D41769C4(v9, &qword_1EC7C9DE8);
    sub_1D41769C4(v7, &qword_1EC7C9DE8);
    sub_1D417CF94(v12, v15, &qword_1EC7C9DD8);
    swift_storeEnumTagMultiPayload();
    sub_1D417645C(&qword_1EC7C9DC0, &qword_1EC7C9DC8);
    sub_1D417645C(&qword_1EC7C9DD0, &qword_1EC7C9DD8);
    sub_1D4418B84();
    v25 = v12;
    v26 = &qword_1EC7C9DD8;
    return sub_1D41769C4(v25, v26);
  }

  if (!a1)
  {
    *v18 = sub_1D4418924();
    *(v18 + 1) = 0;
    v18[16] = 1;
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9E10);
    sub_1D430CFD8(&v18[*(v27 + 44)]);
    sub_1D417CF94(v18, v15, &qword_1EC7C9DC8);
    swift_storeEnumTagMultiPayload();
    sub_1D417645C(&qword_1EC7C9DC0, &qword_1EC7C9DC8);
    sub_1D417645C(&qword_1EC7C9DD0, &qword_1EC7C9DD8);
    sub_1D4418B84();
    v25 = v18;
    v26 = &qword_1EC7C9DC8;
    return sub_1D41769C4(v25, v26);
  }

  type metadata accessor for LockedAttachmentViewLayout(0);
  v29[3] = a1;
  result = sub_1D441ADB4();
  __break(1u);
  return result;
}

uint64_t sub_1D430CF58(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D4418684();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D430CFD8@<X0>(uint64_t a1@<X8>)
{
  v72 = sub_1D4418684() - 8;
  MEMORY[0x1EEE9AC00](v72);
  v73 = (&v63 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9D60) - 8;
  MEMORY[0x1EEE9AC00](v74);
  v71 = &v63 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9E18);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v63 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9E20);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = (&v63 - v8);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9E28) - 8;
  MEMORY[0x1EEE9AC00](v65);
  v63 = &v63 - v10;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9E30) - 8;
  v11 = MEMORY[0x1EEE9AC00](v67);
  v70 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v66 = &v63 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v68 = &v63 - v15;
  v69 = sub_1D4418A44();
  LOBYTE(v80) = 1;
  sub_1D430D86C(&v77);
  v85 = *&v78[2];
  v86[0] = *&v78[4];
  *(v86 + 9) = *(&v78[5] + 1);
  v83 = v77;
  v84 = *v78;
  v87[2] = *&v78[2];
  v88[0] = *&v78[4];
  *(v88 + 9) = *(&v78[5] + 1);
  v87[0] = v77;
  v87[1] = *v78;
  sub_1D417CF94(&v83, v75, &qword_1EC7C9E38);
  sub_1D41769C4(v87, &qword_1EC7C9E38);
  *(&v79[1] + 7) = v84;
  *(&v79[2] + 7) = v85;
  *(&v79[3] + 7) = v86[0];
  v79[4] = *(v86 + 9);
  *(v79 + 7) = v83;
  v64 = v80;
  *v9 = sub_1D4419364();
  v9[1] = v16;
  v17 = (v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9E40) + 44));
  v18 = sub_1D4419224();
  v19 = (v17 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9E48) + 36));
  v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9E50) + 28);
  v21 = *MEMORY[0x1E69816C0];
  v22 = sub_1D4419264();
  (*(*(v22 - 8) + 104))(v19 + v20, v21, v22);
  *v19 = swift_getKeyPath();
  *v17 = v18;
  v23 = sub_1D4419184();
  *(v17 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9E58) + 36)) = v23;
  v24 = sub_1D4418DC4();
  (*(*(v24 - 8) + 56))(v6, 1, 1, v24);
  v25 = sub_1D4418DF4();
  sub_1D41769C4(v6, &qword_1EC7C9E18);
  KeyPath = swift_getKeyPath();
  v27 = (v17 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9E60) + 36));
  *v27 = KeyPath;
  v27[1] = v25;
  v28 = (v17 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9E68) + 36));
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9E70);
  v30 = *(v29 + 36);
  v31 = *MEMORY[0x1E697F698];
  v32 = sub_1D4418A14();
  (*(*(v32 - 8) + 104))(v28 + v30, v31, v32);
  sub_1D417CF94(v17, v28 + *(v29 + 40), &qword_1EC7C9E60);
  *v28 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9E78);
  swift_storeEnumTagMultiPayload();
  v33 = objc_opt_self();
  [v33 deviceIsMac];
  [v33 deviceIsMac];
  sub_1D4419364();
  sub_1D4418554();
  v34 = v63;
  sub_1D42D742C(v9, v63, &qword_1EC7C9E20);
  v35 = (v34 + *(v65 + 44));
  v36 = v81;
  *v35 = v80;
  v35[1] = v36;
  v35[2] = v82;
  if ([v33 deviceIsMac])
  {
    v37 = 2.0;
  }

  else
  {
    v37 = 6.0;
  }

  v38 = *(v72 + 28);
  v39 = *MEMORY[0x1E697F468];
  v40 = sub_1D44189C4();
  v41 = v73;
  (*(*(v40 - 8) + 104))(v73 + v38, v39, v40);
  *v41 = v37;
  v41[1] = v37;
  v42 = sub_1D44191A4();
  v43 = v71;
  sub_1D430CF58(v41, v71);
  v44 = v74;
  *(v43 + *(v74 + 60)) = v42;
  *(v43 + *(v44 + 64)) = 256;
  v45 = sub_1D4419364();
  v47 = v46;
  v48 = v66;
  v49 = &v66[*(v67 + 44)];
  sub_1D42D742C(v43, v49, &qword_1EC7C9D60);
  v50 = (v49 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9D80) + 36));
  *v50 = v45;
  v50[1] = v47;
  sub_1D42D742C(v34, v48, &qword_1EC7C9E28);
  v51 = v48;
  v52 = v68;
  sub_1D42D742C(v51, v68, &qword_1EC7C9E30);
  v53 = v70;
  sub_1D417CF94(v52, v70, &qword_1EC7C9E30);
  v54 = v69;
  v75[0] = v69;
  v75[1] = 0;
  v55 = v64;
  v76[0] = v64;
  *&v76[1] = v79[0];
  *&v76[17] = v79[1];
  *&v76[65] = v79[4];
  *&v76[49] = v79[3];
  *&v76[33] = v79[2];
  v56 = *v76;
  *a1 = v69;
  *(a1 + 16) = v56;
  v57 = *&v76[16];
  v58 = *&v76[32];
  v59 = *&v76[48];
  v60 = *&v76[64];
  *(a1 + 96) = v76[80];
  *(a1 + 64) = v59;
  *(a1 + 80) = v60;
  *(a1 + 32) = v57;
  *(a1 + 48) = v58;
  *(a1 + 104) = 0;
  *(a1 + 112) = 1;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9E80);
  sub_1D417CF94(v53, a1 + *(v61 + 64), &qword_1EC7C9E30);
  sub_1D417CF94(v75, &v77, &qword_1EC7C9E88);
  sub_1D41769C4(v52, &qword_1EC7C9E30);
  sub_1D41769C4(v53, &qword_1EC7C9E30);
  v77 = v54;
  LOBYTE(v78[0]) = v55;
  *(&v78[2] + 1) = v79[1];
  *(&v78[4] + 1) = v79[2];
  *(&v78[6] + 1) = v79[3];
  *(&v78[8] + 1) = v79[4];
  *(v78 + 1) = v79[0];
  return sub_1D41769C4(&v77, &qword_1EC7C9E88);
}

uint64_t sub_1D430D86C@<X0>(uint64_t a1@<X8>)
{
  sub_1D44189A4();
  v2 = sub_1D4418F64();
  v4 = v3;
  v6 = v5;
  sub_1D4418D84();
  v7 = sub_1D4418F44();
  v9 = v8;
  v11 = v10;

  sub_1D430E564(v2, v4, v6 & 1);

  v12 = sub_1D4418F34();
  v33 = v13;
  v34 = v12;
  v32 = v14;
  v35 = v15;
  sub_1D430E564(v7, v9, v11 & 1);

  sub_1D44189A4();
  v16 = sub_1D4418F64();
  v18 = v17;
  LOBYTE(v9) = v19;
  sub_1D4418E34();
  v20 = sub_1D4418F44();
  v22 = v21;
  LOBYTE(v4) = v23;

  sub_1D430E564(v16, v18, v9 & 1);

  sub_1D4418C34();
  v24 = sub_1D4418F04();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  sub_1D430E564(v20, v22, v4 & 1);

  *a1 = v34;
  *(a1 + 8) = v33;
  *(a1 + 16) = v32 & 1;
  *(a1 + 24) = v35;
  *(a1 + 32) = v24;
  *(a1 + 40) = v26;
  *(a1 + 48) = v28 & 1;
  *(a1 + 56) = v30;
  *(a1 + 64) = 0;
  *(a1 + 72) = 1;
  sub_1D430E574(v34, v33, v32 & 1);

  sub_1D430E574(v24, v26, v28 & 1);

  sub_1D430E564(v24, v26, v28 & 1);

  sub_1D430E564(v34, v33, v32 & 1);
}

uint64_t sub_1D430DB2C@<X0>(void *a1@<X8>)
{
  v70 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9E18);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v64[-v2];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9E90);
  v5 = v4 - 8;
  v6 = MEMORY[0x1EEE9AC00](v4);
  v69 = &v64[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v64[-v8];
  v10 = sub_1D4419224();
  v11 = (v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9E48) + 36));
  v12 = v9;
  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9E50) + 28);
  v14 = *MEMORY[0x1E69816C0];
  v15 = sub_1D4419264();
  (*(*(v15 - 8) + 104))(v11 + v13, v14, v15);
  *v11 = swift_getKeyPath();
  *v12 = v10;
  LODWORD(v10) = sub_1D4418C34();
  *(v12 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9E98) + 36)) = v10;
  v71 = v12;
  v16 = sub_1D4418DC4();
  (*(*(v16 - 8) + 56))(v3, 1, 1, v16);
  v17 = sub_1D4418DF4();
  sub_1D41769C4(v3, &qword_1EC7C9E18);
  KeyPath = swift_getKeyPath();
  v19 = (v12 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9EA0) + 36));
  *v19 = KeyPath;
  v19[1] = v17;
  LOBYTE(v17) = sub_1D4418D24();
  sub_1D4418494();
  v20 = v12 + *(v5 + 44);
  *v20 = v17;
  *(v20 + 1) = v21;
  *(v20 + 2) = v22;
  *(v20 + 3) = v23;
  *(v20 + 4) = v24;
  v20[40] = 0;
  sub_1D44189A4();
  v25 = sub_1D4418F64();
  v27 = v26;
  LOBYTE(v5) = v28;
  sub_1D4418D84();
  v29 = sub_1D4418F44();
  v31 = v30;
  LOBYTE(v3) = v32;

  sub_1D430E564(v25, v27, v5 & 1);

  v33 = sub_1D4418F34();
  v66 = v34;
  v67 = v33;
  v65 = v35;
  v68 = v36;
  sub_1D430E564(v29, v31, v3 & 1);

  sub_1D44189A4();
  v37 = sub_1D4418F64();
  v39 = v38;
  LOBYTE(v31) = v40;
  sub_1D4418D84();
  v41 = sub_1D4418F44();
  v43 = v42;
  v45 = v44;

  sub_1D430E564(v37, v39, v31 & 1);

  v73 = sub_1D4418C34();
  v46 = sub_1D4418F04();
  v48 = v47;
  LOBYTE(v31) = v49;
  v51 = v50;
  sub_1D430E564(v41, v43, v45 & 1);

  v52 = v69;
  sub_1D417CF94(v71, v69, &qword_1EC7C9E90);
  LOBYTE(v13) = v65 & 1;
  v72 = v65 & 1;
  v53 = v70;
  *v70 = 0;
  *(v53 + 8) = 1;
  v54 = v53;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9EA8);
  sub_1D417CF94(v52, v54 + v55[12], &qword_1EC7C9E90);
  v56 = v54 + v55[16];
  v58 = v66;
  v57 = v67;
  *v56 = v67;
  *(v56 + 8) = v58;
  *(v56 + 16) = v13;
  *(v56 + 24) = v68;
  v59 = v54 + v55[20];
  *v59 = v46;
  *(v59 + 8) = v48;
  LOBYTE(v31) = v31 & 1;
  *(v59 + 16) = v31;
  *(v59 + 24) = v51;
  v60 = v54 + v55[24];
  *v60 = 0;
  *(v60 + 8) = 1;
  v61 = v57;
  v62 = v58;
  sub_1D430E574(v57, v58, v13);

  sub_1D430E574(v46, v48, v31);

  sub_1D41769C4(v71, &qword_1EC7C9E90);
  sub_1D430E564(v46, v48, v31);

  sub_1D430E564(v61, v62, v72);

  return sub_1D41769C4(v52, &qword_1EC7C9E90);
}

uint64_t sub_1D430E10C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1D430E154(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1D430E1A0()
{
  result = qword_1EC7C9D88;
  if (!qword_1EC7C9D88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7C9D78);
    sub_1D430E2B4(&qword_1EC7C9D90, &qword_1EC7C9D68, &unk_1D4437038, sub_1D430E284);
    sub_1D417645C(&qword_1EC7C9DE0, &qword_1EC7C9D80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7C9D88);
  }

  return result;
}

uint64_t sub_1D430E2B4(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D430E338()
{
  result = qword_1EC7C9DA0;
  if (!qword_1EC7C9DA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7C9DA8);
    sub_1D430E3BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7C9DA0);
  }

  return result;
}

unint64_t sub_1D430E3BC()
{
  result = qword_1EC7C9DB0;
  if (!qword_1EC7C9DB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7C9DB8);
    sub_1D417645C(&qword_1EC7C9DC0, &qword_1EC7C9DC8);
    sub_1D417645C(&qword_1EC7C9DD0, &qword_1EC7C9DD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7C9DB0);
  }

  return result;
}

uint64_t sub_1D430E49C(uint64_t a1)
{
  v2 = sub_1D4419264();
  MEMORY[0x1EEE9AC00](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_1D44186D4();
}

uint64_t sub_1D430E564(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1D430E574(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1D430E584()
{
  v0 = sub_1D44181B4();
  __swift_allocate_value_buffer(v0, qword_1EDE32C60);
  __swift_project_value_buffer(v0, qword_1EDE32C60);
  return sub_1D4418114();
}

void __swiftcall ICPaperSearchIndexer.init()(ICPaperSearchIndexer *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

uint64_t sub_1D430E608()
{
  v1 = v0;
  v2 = sub_1D4419F94();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = OBJC_IVAR___ICPaperSearchIndexer____lazy_storage___queue;
  if (*(v0 + OBJC_IVAR___ICPaperSearchIndexer____lazy_storage___queue))
  {
    v4 = *(v0 + OBJC_IVAR___ICPaperSearchIndexer____lazy_storage___queue);
  }

  else
  {
    sub_1D4417E74();
    sub_1D4419F74();
    v4 = sub_1D4417E44();
    *(v1 + v3) = v4;
  }

  return v4;
}

id static ICPaperSearchIndexer.shared()()
{
  if (qword_1EDE32700 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDE32708;

  return v1;
}

uint64_t ICPaperSearchIndexer.needsToUpdateIndex(with:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D430E7D8;

  return sub_1D4176FEC(a1);
}

uint64_t sub_1D430E7D8(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t ICPaperSearchIndexer.updateIndex(with:)(uint64_t a1)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1D430E8F4, 0, 0);
}

uint64_t sub_1D430E8F4()
{
  v1 = v0[19];
  v2 = swift_allocObject();
  v0[21] = v2;
  *(v2 + 16) = v1;
  v3 = v1;
  v4 = swift_task_alloc();
  v0[22] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9EB0);
  *v4 = v0;
  v4[1] = sub_1D430E9F4;

  return MEMORY[0x1EEE233F8](v0 + 18, sub_1D4177428, v2, v5);
}

void sub_1D430E9F4()
{

  if (v0)
  {
  }

  else
  {

    MEMORY[0x1EEE6DFA0](sub_1D430EB30, 0, 0);
  }
}

uint64_t sub_1D430EB30()
{
  v1 = v0[19];
  v2 = v0[20];
  sub_1D41766C0(0, &qword_1EDE32768);
  sub_1D4315FDC();
  v3 = sub_1D441A054();
  v0[23] = v3;

  v0[2] = v0;
  v0[3] = sub_1D430EC9C;
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9EB8);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1D430EDDC;
  v0[13] = &block_descriptor_6;
  v0[14] = v4;
  [v2 updateIndexForAttachments:v3 userInitiated:0 managedObjectContext:v1 completionHandler:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D430EC9C()
{

  return MEMORY[0x1EEE6DFA0](sub_1D430ED7C, 0, 0);
}

uint64_t sub_1D430ED7C()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D430EDDC(uint64_t a1)
{
  v1 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));

  return MEMORY[0x1EEE6DED8](v1);
}

uint64_t sub_1D430EF98(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_1D430F05C;

  return ICPaperSearchIndexer.updateIndex(with:)(v6);
}

uint64_t sub_1D430F05C()
{
  v1 = *v0;
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);
  v4 = *(*v0 + 16);
  v5 = *v0;

  if (v2)
  {
    v6 = *(v1 + 32);
    v6[2](v6);
    _Block_release(v6);
  }

  v7 = *(v5 + 8);

  return v7();
}

uint64_t ICPaperSearchIndexer.updateIndex(forAttachments:userInitiated:managedObjectContext:)(uint64_t a1, char a2, uint64_t a3)
{
  *(v4 + 200) = a3;
  *(v4 + 208) = v3;
  *(v4 + 264) = a2;
  *(v4 + 192) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D430F1E4, 0, 0);
}

uint64_t sub_1D430F1E4()
{
  v1 = *(v0 + 192);
  if ((v1 & 0xC000000000000001) == 0)
  {
    v8 = -1;
    v9 = -1 << *(v1 + 32);
    v3 = v1 + 56;
    if (-v9 < 64)
    {
      v8 = ~(-1 << -v9);
    }

    v6 = v8 & *(v1 + 56);
    *(v0 + 224) = v3;
    *(v0 + 232) = ~v9;
    *(v0 + 216) = v1;
    v7 = 63 - v9;

    v5 = 0;
    goto LABEL_7;
  }

  swift_unknownObjectRetain();
  sub_1D441A874();
  sub_1D41766C0(0, &qword_1EDE32768);
  sub_1D4315FDC();
  sub_1D441A0A4();
  v2 = *(v0 + 144);
  v3 = *(v0 + 152);
  v4 = *(v0 + 160);
  v5 = *(v0 + 168);
  v6 = *(v0 + 176);
  *(v0 + 224) = v3;
  *(v0 + 232) = v4;
  *(v0 + 216) = v2;
  if ((v2 & 0x8000000000000000) == 0)
  {
    v7 = v4 + 64;
LABEL_7:
    v10 = v6;
    v11 = v5;
    if (!v6)
    {
      v12 = v5;
      while (1)
      {
        v11 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v11 >= (v7 >> 6))
        {
          goto LABEL_19;
        }

        v10 = *(v3 + 8 * v11);
        ++v12;
        if (v10)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
      return MEMORY[0x1EEE6DEC8](v2);
    }

LABEL_12:
    v13 = (v10 - 1) & v10;
    v14 = *(*(v2 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v10)))));
    goto LABEL_13;
  }

  v19 = sub_1D441A8F4();
  if (!v19)
  {
    goto LABEL_19;
  }

  *(v0 + 184) = v19;
  swift_dynamicCast();
  v14 = *(v0 + 80);
  v11 = v5;
  v13 = v6;
LABEL_13:
  *(v0 + 248) = v11;
  *(v0 + 256) = v13;
  *(v0 + 240) = v14;
  if (v14)
  {
    v16 = *(v0 + 200);
    v15 = *(v0 + 208);
    v17 = *(v0 + 264);
    *(v0 + 16) = v0;
    *(v0 + 24) = sub_1D430F4CC;
    v18 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9EB8);
    *(v0 + 80) = MEMORY[0x1E69E9820];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_1D430EDDC;
    *(v0 + 104) = &block_descriptor_5;
    *(v0 + 112) = v18;
    [v15 updateIndexForAttachment:v14 userInitiated:v17 managedObjectContext:v16 completionHandler:v0 + 80];
    v2 = v0 + 16;

    return MEMORY[0x1EEE6DEC8](v2);
  }

LABEL_19:
  sub_1D419FA48();
  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_1D430F4CC()
{

  return MEMORY[0x1EEE6DFA0](sub_1D430F5AC, 0, 0);
}

uint64_t sub_1D430F5AC()
{
  v2 = *(v0 + 248);
  v3 = *(v0 + 256);
  v4 = *(v0 + 216);
  if (v4 < 0)
  {
    v10 = sub_1D441A8F4();
    if (!v10)
    {
      goto LABEL_14;
    }

    *(v0 + 184) = v10;
    sub_1D41766C0(0, &qword_1EDE32768);
    swift_dynamicCast();
    v9 = *(v0 + 80);
    v6 = v2;
    v8 = v3;
  }

  else
  {
    v5 = *(v0 + 256);
    v6 = *(v0 + 248);
    if (!v3)
    {
      v7 = *(v0 + 248);
      while (1)
      {
        v6 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        if (v6 >= ((*(v0 + 232) + 64) >> 6))
        {
          goto LABEL_14;
        }

        v5 = *(*(v0 + 224) + 8 * v6);
        ++v7;
        if (v5)
        {
          goto LABEL_7;
        }
      }

      __break(1u);
      return MEMORY[0x1EEE6DEC8](v1);
    }

LABEL_7:
    v8 = (v5 - 1) & v5;
    v9 = *(*(v4 + 48) + ((v6 << 9) | (8 * __clz(__rbit64(v5)))));
  }

  *(v0 + 248) = v6;
  *(v0 + 256) = v8;
  *(v0 + 240) = v9;
  if (v9)
  {
    v12 = *(v0 + 200);
    v11 = *(v0 + 208);
    v13 = *(v0 + 264);
    *(v0 + 16) = v0;
    *(v0 + 24) = sub_1D430F4CC;
    v14 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9EB8);
    *(v0 + 80) = MEMORY[0x1E69E9820];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_1D430EDDC;
    *(v0 + 104) = &block_descriptor_5;
    *(v0 + 112) = v14;
    [v11 updateIndexForAttachment:v9 userInitiated:v13 managedObjectContext:v12 completionHandler:v0 + 80];
    v1 = v0 + 16;

    return MEMORY[0x1EEE6DEC8](v1);
  }

LABEL_14:
  sub_1D419FA48();
  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_1D430F9B0(int a1, char a2, void *a3, void *aBlock, void *a5)
{
  v5[2] = a3;
  v5[3] = a5;
  v5[4] = _Block_copy(aBlock);
  sub_1D41766C0(0, &qword_1EDE32768);
  sub_1D4315FDC();
  v9 = sub_1D441A064();
  v5[5] = v9;
  v10 = a3;
  a5;
  v11 = swift_task_alloc();
  v5[6] = v11;
  *v11 = v5;
  v11[1] = sub_1D430FAC8;

  return ICPaperSearchIndexer.updateIndex(forAttachments:userInitiated:managedObjectContext:)(v9, a2, v10);
}

uint64_t sub_1D430FAC8()
{
  v1 = *v0;
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);
  v4 = *(*v0 + 16);
  v5 = *v0;

  if (v2)
  {
    v6 = *(v1 + 32);
    v6[2](v6);
    _Block_release(v6);
  }

  v7 = *(v5 + 8);

  return v7();
}

uint64_t ICPaperSearchIndexer.updateIndex(forAttachment:userInitiated:managedObjectContext:)(uint64_t a1, char a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 96) = a2;
  *(v4 + 16) = a1;
  v5 = sub_1D4419F94();
  *(v4 + 40) = v5;
  *(v4 + 48) = *(v5 - 8);
  *(v4 + 56) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D430FD14, 0, 0);
}

uint64_t sub_1D430FD14()
{
  v1 = *(v0 + 96);
  *(v0 + 64) = sub_1D430E608();
  if (v1 == 1)
  {
    sub_1D4419F64();
  }

  else
  {
    sub_1D4419F74();
  }

  v2 = *(v0 + 24);
  v3 = *(v0 + 16);
  v4 = swift_allocObject();
  *(v0 + 72) = v4;
  swift_unknownObjectWeakInit();
  v5 = swift_allocObject();
  *(v0 + 80) = v5;
  v5[2] = v4;
  v5[3] = v3;
  v5[4] = v2;

  v6 = v3;
  v7 = v2;
  v8 = swift_task_alloc();
  *(v0 + 88) = v8;
  *v8 = v0;
  v8[1] = sub_1D430FE6C;
  v9 = *(v0 + 56);

  return MEMORY[0x1EEE234F0](v9, &unk_1D44372C0, v5);
}

uint64_t sub_1D430FE6C()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 40);
  v6 = *v0;

  (*(v2 + 8))(v1, v3);

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_1D4310020(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D4310044, 0, 0);
}

uint64_t sub_1D4310044()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[8] = Strong;
  if (Strong)
  {
    v2 = Strong;
    if (qword_1EDE32C58 != -1)
    {
      swift_once();
    }

    v3 = v0[6];
    v4 = sub_1D44181B4();
    v0[9] = __swift_project_value_buffer(v4, qword_1EDE32C60);
    v5 = v3;
    v6 = sub_1D44181A4();
    v7 = sub_1D441A154();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = v0[6];
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      *(v9 + 4) = v8;
      *v10 = v8;
      v11 = v8;
      _os_log_impl(&dword_1D4171000, v6, v7, "Updating PaperKit indexable content for %@", v9, 0xCu);
      sub_1D41769C4(v10, &qword_1EC7C9918);
      MEMORY[0x1DA6D8690](v10, -1, -1);
      MEMORY[0x1DA6D8690](v9, -1, -1);
    }

    v13 = v0[6];
    v12 = v0[7];

    v14 = swift_allocObject();
    v0[10] = v14;
    v14[2] = v13;
    v14[3] = v12;
    v14[4] = v2;
    v15 = v13;
    v16 = v12;
    v17 = v2;
    v18 = swift_task_alloc();
    v0[11] = v18;
    *v18 = v0;
    v18[1] = sub_1D43102C4;
    v19 = MEMORY[0x1E69E6370];

    return MEMORY[0x1EEE233F8](v0 + 16, sub_1D4316808, v14, v19);
  }

  else
  {
    v20 = v0[1];

    return v20();
  }
}

void sub_1D43102C4()
{

  if (v0)
  {
  }

  else
  {

    MEMORY[0x1EEE6DFA0](sub_1D4310400, 0, 0);
  }
}

uint64_t sub_1D4310400()
{
  if (*(v0 + 128))
  {
    v1 = swift_task_alloc();
    *(v0 + 104) = v1;
    *v1 = v0;
    v1[1] = sub_1D43107C4;
    v3 = *(v0 + 48);
    v2 = *(v0 + 56);

    return sub_1D4317FF0(v3, v2);
  }

  else
  {
    v5 = swift_task_alloc();
    *(v0 + 96) = v5;
    *v5 = v0;
    v5[1] = sub_1D4310508;
    v7 = *(v0 + 48);
    v6 = *(v0 + 56);

    return sub_1D4317068(v7, v6);
  }
}

uint64_t sub_1D4310508(char a1)
{
  *(*v1 + 129) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D4310608, 0, 0);
}

uint64_t sub_1D4310608()
{
  if (*(v0 + 129))
  {
    v1 = swift_task_alloc();
    *(v0 + 104) = v1;
    *v1 = v0;
    v1[1] = sub_1D43107C4;
    v3 = *(v0 + 48);
    v2 = *(v0 + 56);

    return sub_1D4317FF0(v3, v2);
  }

  else
  {
    v5 = *(v0 + 48);
    v6 = sub_1D44181A4();
    v7 = sub_1D441A154();

    v8 = os_log_type_enabled(v6, v7);
    v9 = *(v0 + 64);
    if (v8)
    {
      v10 = *(v0 + 48);
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      *(v11 + 4) = v10;
      *v12 = v10;
      v13 = v10;
      _os_log_impl(&dword_1D4171000, v6, v7, "Index unchanged for %@", v11, 0xCu);
      sub_1D41769C4(v12, &qword_1EC7C9918);
      MEMORY[0x1DA6D8690](v12, -1, -1);
      MEMORY[0x1DA6D8690](v11, -1, -1);
    }

    v14 = *(v0 + 8);

    return v14();
  }
}

uint64_t sub_1D43107C4()
{

  return MEMORY[0x1EEE6DFA0](sub_1D43108C0, 0, 0);
}

uint64_t sub_1D43108C0()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = swift_allocObject();
  v0[14] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = v2;
  v5 = v1;
  v6 = swift_task_alloc();
  v0[15] = v6;
  *v6 = v0;
  v6[1] = sub_1D43109B0;
  v7 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE233F8](v6, sub_1D43188A8, v3, v7);
}

void sub_1D43109B0()
{

  if (v0)
  {
  }

  else
  {

    MEMORY[0x1EEE6DFA0](sub_1D4310AEC, 0, 0);
  }
}

uint64_t sub_1D4310AEC()
{
  v1 = *(v0 + 8);

  return v1();
}

void sub_1D4310B4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D4417434();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D41766C0(0, &qword_1EDE32920);
  v8 = [swift_getObjCClassFromMetadata() ic:a1 existingObjectWithID:a2 context:?];
  if (v8)
  {
    v9 = v8;
    if (qword_1EDE32C58 != -1)
    {
      swift_once();
    }

    v10 = sub_1D44181B4();
    __swift_project_value_buffer(v10, qword_1EDE32C60);
    v11 = v9;
    v12 = sub_1D44181A4();
    v13 = sub_1D441A154();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v29 = v4;
      v15 = v14;
      v27 = swift_slowAlloc();
      v30 = v27;
      *v15 = 136315138;
      v16 = [v11 shortLoggingDescription];
      v17 = sub_1D4419C54();
      v28 = v7;
      v19 = v18;

      v20 = sub_1D42E9410(v17, v19, &v30);
      v7 = v28;

      *(v15 + 4) = v20;
      _os_log_impl(&dword_1D4171000, v12, v13, "Updated PaperKit indexable content for %s", v15, 0xCu);
      v21 = v27;
      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x1DA6D8690](v21, -1, -1);
      v22 = v15;
      v4 = v29;
      MEMORY[0x1DA6D8690](v22, -1, -1);
    }

    v23 = [objc_opt_self() now];
    sub_1D44173F4();

    v24 = sub_1D44173A4();
    (*(v5 + 8))(v7, v4);
    [v11 setModificationDate_];

    v25 = sub_1D4419C14();
    [v11 updateChangeCountWithReason_];
  }
}

uint64_t sub_1D431100C(void *a1, char a2, void *a3, void *aBlock, void *a5)
{
  v5[3] = a3;
  v5[4] = a5;
  v5[2] = a1;
  v5[5] = _Block_copy(aBlock);
  v10 = a1;
  v11 = a3;
  a5;
  v12 = swift_task_alloc();
  v5[6] = v12;
  *v12 = v5;
  v12[1] = sub_1D43110F4;

  return ICPaperSearchIndexer.updateIndex(forAttachment:userInitiated:managedObjectContext:)(v10, a2, v11);
}

uint64_t sub_1D43110F4()
{
  v1 = *v0;
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 32);
  v4 = *(*v0 + 24);
  v5 = *(*v0 + 16);
  v6 = *v0;

  if (v2)
  {
    v7 = *(v1 + 40);
    v7[2](v7);
    _Block_release(v7);
  }

  v8 = *(v6 + 8);

  return v8();
}

void sub_1D4311274(void *a1)
{
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
    v4 = a1;
    if ([v3 isUnsupported])
    {
    }

    else
    {
      sub_1D43C59E8(&v5, [v3 objectID]);
    }
  }
}

void sub_1D4311340(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

void sub_1D431139C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v119 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9F68);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v110 = &v95 - v9;
  v10 = sub_1D4419B14();
  v111 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v109 = &v95 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9F80);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v113 = &v95 - v13;
  v14 = sub_1D4419564();
  v112 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v95 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9F88);
  v114 = *(v17 - 8);
  v115 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v108 = &v95 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9F90);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v95 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7C9F98);
  v116 = *(v22 - 8);
  v117 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v95 - v23;
  sub_1D41766C0(0, &qword_1EDE32920);
  v25 = [swift_getObjCClassFromMetadata() ic:a1 existingObjectWithID:a2 context:?];
  if (!v25)
  {
    goto LABEL_6;
  }

  v26 = v25;
  v118 = v4;
  objc_allocWithZone(sub_1D4417A44());
  v27 = v26;
  v28 = sub_1D4417A14();
  if ([v27 attachmentType] != 13 || (v29 = sub_1D4417A24()) == 0)
  {

    LOBYTE(v27) = 0;
    goto LABEL_31;
  }

  v104 = v10;
  v105 = a3;
  v107 = v24;
  v30 = v29;
  MEMORY[0x1DA6D3440]();
  v31 = v116;
  v32 = v117;
  if ((*(v116 + 48))(v21, 1, v117) != 1)
  {
    v102 = v30;
    v103 = v28;
    (*(v31 + 32))(v107, v21, v32);
    if (qword_1EDE32C58 != -1)
    {
      swift_once();
    }

    v33 = sub_1D44181B4();
    __swift_project_value_buffer(v33, qword_1EDE32C60);
    v34 = v27;
    v35 = sub_1D44181A4();
    v36 = sub_1D441A154();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v100 = v37;
      v101 = swift_slowAlloc();
      v120 = v101;
      *v37 = 136315138;
      v38 = [v34 shortLoggingDescription];
      v39 = v36;
      v40 = sub_1D4419C54();
      v42 = v41;

      v43 = sub_1D42E9410(v40, v42, &v120);

      v44 = v100;
      *(v100 + 1) = v43;
      v45 = v44;
      _os_log_impl(&dword_1D4171000, v35, v39, "Fetching indexable text content for system paper attachment %s", v44, 0xCu);
      v46 = v101;
      __swift_destroy_boxed_opaque_existential_0(v101);
      MEMORY[0x1DA6D8690](v46, -1, -1);
      MEMORY[0x1DA6D8690](v45, -1, -1);
    }

    v101 = sub_1D4419A34();
    v47 = sub_1D4419EC4();
    v49 = v48;
    v100 = v47;
    v50 = sub_1D4419C14();
    LODWORD(v27) = [v34 updateHandwritingSummary_];

    v106 = v34;
    if (v27)
    {
      v51 = v34;

      v52 = v51;
      v53 = sub_1D44181A4();
      v54 = sub_1D441A154();

      v97 = v54;
      v99 = v53;
      v55 = os_log_type_enabled(v53, v54);
      v98 = v52;
      if (v55)
      {
        v56 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v120 = v57;
        *v56 = 136315395;
        v58 = [v52 ic_loggingIdentifier];
        v96 = sub_1D4419C54();
        v60 = v59;

        v61 = sub_1D42E9410(v96, v60, &v120);

        *(v56 + 4) = v61;
        *(v56 + 12) = 2085;
        v62 = sub_1D42E9410(v100, v49, &v120);

        *(v56 + 14) = v62;
        v63 = v99;
        _os_log_impl(&dword_1D4171000, v99, v97, "New handwritingSummary {id: %s, content: %{sensitive}s}", v56, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1DA6D8690](v57, -1, -1);
        MEMORY[0x1DA6D8690](v56, -1, -1);
      }

      else
      {
      }

      sub_1D4419A04();
      v64 = v113;
      sub_1D4419534();
      v65 = v16;
      v66 = v64;
      (*(v112 + 8))(v65, v14);
      v67 = v114;
      v68 = v115;
      if ((*(v114 + 48))(v64, 1, v115) == 1)
      {
        sub_1D41769C4(v64, &qword_1EC7C9F80);
      }

      else
      {
        v69 = v108;
        (*(v67 + 32))(v108, v66, v68);
        sub_1D417645C(&unk_1EDE32AA0, &qword_1EC7C9F88);
        v70 = v67;
        sub_1D44199F4();
        v71 = objc_allocWithZone(sub_1D44195E4());
        v72 = sub_1D44195D4();
        v73 = v109;
        sub_1D4419B04();

        sub_1D4311F64(v73, v98);
        (*(v111 + 8))(v73, v104);
        (*(v70 + 8))(v69, v68);
      }
    }

    else
    {
    }

    v74 = sub_1D4419ED4();
    v76 = v75;

    v77 = [v106 additionalIndexableText];
    if (v77)
    {
      v78 = v77;
      v79 = sub_1D4419C54();
      v81 = v80;

      if (v79 == v74 && v81 == v76)
      {

        v82 = v116;
LABEL_30:
        (*(v82 + 8))(v107, v117);
        goto LABEL_31;
      }

      v83 = sub_1D441AD84();

      if (v83)
      {

        v82 = v116;
        goto LABEL_30;
      }
    }

    v84 = v106;

    v85 = sub_1D44181A4();
    v86 = sub_1D441A154();

    if (os_log_type_enabled(v85, v86))
    {
      v87 = swift_slowAlloc();
      v115 = swift_slowAlloc();
      v120 = v115;
      *v87 = 136315395;
      v88 = [v84 ic_loggingIdentifier];
      v89 = sub_1D4419C54();
      v91 = v90;

      v92 = sub_1D42E9410(v89, v91, &v120);

      *(v87 + 4) = v92;
      *(v87 + 12) = 2085;
      *(v87 + 14) = sub_1D42E9410(v74, v76, &v120);
      _os_log_impl(&dword_1D4171000, v85, v86, "New additionalIndexableText {id: %s, content: %{sensitive}s}", v87, 0x16u);
      v93 = v115;
      swift_arrayDestroy();
      MEMORY[0x1DA6D8690](v93, -1, -1);
      MEMORY[0x1DA6D8690](v87, -1, -1);
    }

    v82 = v116;
    v94 = sub_1D4419C14();

    [v84 setAdditionalIndexableText_];

    LOBYTE(v27) = 1;
    goto LABEL_30;
  }

  sub_1D41769C4(v21, &qword_1EC7C9F90);
LABEL_6:
  LOBYTE(v27) = 0;
LABEL_31:
  *v119 = v27;
}

void sub_1D4311F64(uint64_t a1, id a2)
{
  v5 = [a2 identifier];
  if (v5)
  {
    v6 = v5;
    v7 = sub_1D4419C54();
    v9 = v8;

    v10 = [a2 note];
    if (v10)
    {
      v11 = v10;
      v20 = v2;
      v12 = [objc_opt_self() defaultCenter];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9FD8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1D4435D20;
      sub_1D4419C54();
      v14 = MEMORY[0x1E69E6158];
      sub_1D441A954();
      v15 = sub_1D4419B14();
      *(inited + 96) = v15;
      boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm((inited + 72));
      (*(*(v15 - 8) + 16))(boxed_opaque_existential_0Tm, a1, v15);
      sub_1D4419C54();
      sub_1D441A954();
      *(inited + 168) = v14;
      *(inited + 144) = v7;
      *(inited + 152) = v9;
      sub_1D4419C54();
      sub_1D441A954();
      *(inited + 240) = sub_1D41766C0(0, &qword_1EDE32920);
      *(inited + 216) = a2;
      sub_1D4419C54();
      v17 = a2;
      sub_1D441A954();
      *(inited + 312) = sub_1D41766C0(0, &qword_1EDE32440);
      *(inited + 288) = v11;
      v18 = v11;
      sub_1D42EAA6C(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9FE0);
      swift_arrayDestroy();
      v19 = sub_1D4419B54();

      [v12 postNotificationName:@"ICNAInlineDrawingRecognitionReportNotification" object:v20 userInfo:v19];
    }

    else
    {
    }
  }
}

uint64_t sub_1D4312270@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA008);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v44 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9FB0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v44 - v12;
  sub_1D41766C0(0, &qword_1EDE32920);
  v14 = [swift_getObjCClassFromMetadata() ic:a1 existingObjectWithID:a2 context:?];
  if (!v14)
  {
    goto LABEL_9;
  }

  v15 = v14;
  v16 = objc_allocWithZone(sub_1D4417A44());
  v17 = v15;
  v18 = sub_1D4417A14();
  if ([v17 attachmentType] != 14 && objc_msgSend(v17, sel_attachmentType) != 15 || (v49 = v3, (v19 = sub_1D4417A24()) == 0))
  {

    goto LABEL_8;
  }

  v20 = v19;
  MEMORY[0x1DA6D33F0]();
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {

    sub_1D41769C4(v9, &qword_1EC7CA008);
LABEL_8:
    v14 = 0;
LABEL_9:
    v21 = _s13PrerequisitesVMa(v14);
    return (*(*(v21 - 8) + 56))(a3, 1, 1, v21);
  }

  (*(v11 + 32))(v13, v9, v10);
  if (qword_1EDE32C58 != -1)
  {
    swift_once();
  }

  v23 = sub_1D44181B4();
  __swift_project_value_buffer(v23, qword_1EDE32C60);
  v24 = v17;
  v25 = sub_1D44181A4();
  v26 = sub_1D441A154();

  LODWORD(v47) = v26;
  v48 = v25;
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v46 = v27;
    v44 = swift_slowAlloc();
    v50 = v44;
    *v27 = 136315138;
    v28 = [v24 shortLoggingDescription];
    v45 = v24;
    v29 = v28;
    v30 = sub_1D4419C54();
    v32 = v31;

    v33 = sub_1D42E9410(v30, v32, &v50);

    v34 = v46;
    *(v46 + 1) = v33;
    v24 = v45;
    v35 = v48;
    _os_log_impl(&dword_1D4171000, v48, v47, "Fetching indexable text content for paper document attachment %s", v34, 0xCu);
    v36 = v44;
    __swift_destroy_boxed_opaque_existential_0(v44);
    MEMORY[0x1DA6D8690](v36, -1, -1);
    MEMORY[0x1DA6D8690](v46, -1, -1);
  }

  else
  {
  }

  v48 = sub_1D4419A64();
  (*(v11 + 16))(a3, v13, v10);
  v37 = v24;
  v38 = [v24 shortLoggingDescription];
  v39 = sub_1D4419C54();
  v47 = v40;

  (*(v11 + 8))(v13, v10);
  v41 = _s13PrerequisitesVMa(0);
  v42 = v47;
  *(a3 + v41[5]) = v48;
  *(a3 + v41[6]) = v20;
  v43 = (a3 + v41[7]);
  *v43 = v39;
  v43[1] = v42;
  return (*(*(v41 - 1) + 56))(a3, 0, 1, v41);
}

void sub_1D4312760(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, char *a6@<X8>)
{
  sub_1D41766C0(0, &qword_1EDE32920);
  v11 = [swift_getObjCClassFromMetadata() ic:a1 existingObjectWithID:a2 context:?];
  if (!v11)
  {
    v20 = 0;
    goto LABEL_36;
  }

  v12 = v11;
  v13 = [v11 ocrSummary];
  if (v13)
  {
    v14 = v13;
    v15 = sub_1D4419C54();
    v17 = v16;

    if (!a4)
    {

      v22 = 0;
LABEL_15:
      [v12 setOcrSummary_];

      v20 = 1;
      if (!a5)
      {
        goto LABEL_10;
      }

LABEL_16:
      v21 = sub_1D4419C14();
      goto LABEL_17;
    }

    if (v15 == a3 && v17 == a4)
    {

      v20 = 0;
      if (!a5)
      {
        goto LABEL_10;
      }

      goto LABEL_16;
    }

    v19 = sub_1D441AD84();

    if (v19)
    {
      goto LABEL_9;
    }

LABEL_13:
    v22 = sub_1D4419C14();
    goto LABEL_15;
  }

  if (a4)
  {
    goto LABEL_13;
  }

LABEL_9:
  v20 = 0;
  if (a5)
  {
    goto LABEL_16;
  }

LABEL_10:
  v21 = 0;
LABEL_17:
  [v12 regenerateTitleWithInferredTitle_];

  _s13PrerequisitesVMa(0);
  v23 = sub_1D4419EC4();
  v25 = v24;
  v26 = sub_1D4419C14();
  v27 = [v12 updateHandwritingSummary_];

  v28 = &_INSTANCE_METHODS_ICLockedNotesWelcomeViewController;
  if (v27)
  {
    if (qword_1EDE32C58 != -1)
    {
      swift_once();
    }

    v29 = sub_1D44181B4();
    __swift_project_value_buffer(v29, qword_1EDE32C60);
    v30 = v12;

    v31 = sub_1D44181A4();
    v32 = sub_1D441A154();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v66 = v62;
      *v33 = 136315395;
      v34 = [v30 ic_loggingIdentifier];
      v35 = sub_1D4419C54();
      v61 = v32;
      v37 = v36;

      v38 = sub_1D42E9410(v35, v37, &v66);

      *(v33 + 4) = v38;
      *(v33 + 12) = 2085;
      v39 = sub_1D42E9410(v23, v25, &v66);

      *(v33 + 14) = v39;
      v28 = &_INSTANCE_METHODS_ICLockedNotesWelcomeViewController;
      _os_log_impl(&dword_1D4171000, v31, v61, "New handwritingSummary {id: %s, content: %{sensitive}s}", v33, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1DA6D8690](v62, -1, -1);
      MEMORY[0x1DA6D8690](v33, -1, -1);
    }

    else
    {
    }

    v20 = 1;
  }

  else
  {
  }

  v40 = sub_1D4419ED4();
  v42 = v41;
  v43 = [v12 additionalIndexableText];
  if (v43)
  {
    v44 = v28;
    v45 = v43;
    v46 = sub_1D4419C54();
    v48 = v47;

    if (v46 == v40 && v48 == v42)
    {

      goto LABEL_36;
    }

    v49 = sub_1D441AD84();

    v28 = v44;
    if (v49)
    {

      goto LABEL_36;
    }
  }

  v64 = v40;
  if (v28[395] != -1)
  {
    swift_once();
  }

  v50 = sub_1D44181B4();
  __swift_project_value_buffer(v50, qword_1EDE32C60);
  v51 = v12;

  v52 = sub_1D44181A4();
  v53 = sub_1D441A154();

  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v66 = v63;
    *v54 = 136315395;
    v55 = [v51 ic_loggingIdentifier];
    v56 = sub_1D4419C54();
    v58 = v57;

    v59 = sub_1D42E9410(v56, v58, &v66);

    *(v54 + 4) = v59;
    *(v54 + 12) = 2085;
    *(v54 + 14) = sub_1D42E9410(v64, v42, &v66);
    _os_log_impl(&dword_1D4171000, v52, v53, "New additionalIndexableText {id: %s, content: %{sensitive}s}", v54, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1DA6D8690](v63, -1, -1);
    MEMORY[0x1DA6D8690](v54, -1, -1);
  }

  v60 = sub_1D4419C14();

  [v51 setAdditionalIndexableText_];

  v20 = 1;
LABEL_36:
  *a6 = v20;
}

uint64_t sub_1D4312DBC()
{
  *(v0 + 24) = sub_1D430E608();
  sub_1D4417E74();
  sub_1D43160EC(&qword_1EC7C9EC0, MEMORY[0x1E69B79C0]);
  v2 = sub_1D4419F04();

  return MEMORY[0x1EEE6DFA0](sub_1D4312E80, v2, v1);
}

uint64_t sub_1D4312E80()
{
  sub_1D4417E64();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D431305C(const void *a1, void *a2)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = _Block_copy(a1);
  v4 = a2;

  return MEMORY[0x1EEE6DFA0](sub_1D43130D4, 0, 0);
}

uint64_t sub_1D43130D4()
{
  *(v0 + 32) = sub_1D430E608();
  sub_1D4417E74();
  sub_1D43160EC(&qword_1EC7C9EC0, MEMORY[0x1E69B79C0]);
  v2 = sub_1D4419F04();

  return MEMORY[0x1EEE6DFA0](sub_1D4313198, v2, v1);
}

uint64_t sub_1D4313198()
{
  v1 = v0[3];
  v2 = v0[2];
  sub_1D4417E64();

  if (v1)
  {
    v3 = v0[3];
    v3[2](v3);
    _Block_release(v3);
  }

  v4 = v0[1];

  return v4();
}

BOOL sub_1D4313230()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9FF0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v13 - v1;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9FF8);
  v3 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v5 = &v13 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9FB8);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13 - v8;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9FB0);
  sub_1D44199E4();

  sub_1D44199C4();
  (*(v7 + 8))(v9, v6);
  sub_1D44199D4();
  (*(v3 + 8))(v5, v14);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA000);
  v11 = (*(*(v10 - 8) + 48))(v2, 1, v10) != 1;
  sub_1D41769C4(v2, &qword_1EC7C9FF0);
  return v11;
}

uint64_t sub_1D43134CC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9FB8);
  MEMORY[0x1EEE9AC00](v2);
  (*(v4 + 16))(&v6 - v3, a1);
  return sub_1D4419594();
}

uint64_t sub_1D431359C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 == a4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  else
  {
    v7 = a3;
    if (a4 >= a3)
    {
      v8 = result;
      v5 = MEMORY[0x1E69E7CC0];
      while (a4 != v7)
      {
        v11 = v7;
        result = v8(&v11);
        if (v4)
        {

          return v5;
        }

        if (result)
        {
          result = swift_isUniquelyReferenced_nonNull_native();
          v12 = v5;
          if ((result & 1) == 0)
          {
            result = sub_1D43CF16C(0, *(v5 + 16) + 1, 1);
            v5 = v12;
          }

          v10 = *(v5 + 16);
          v9 = *(v5 + 24);
          if (v10 >= v9 >> 1)
          {
            result = sub_1D43CF16C((v9 > 1), v10 + 1, 1);
            v5 = v12;
          }

          *(v5 + 16) = v10 + 1;
          *(v5 + 8 * v10 + 32) = v7;
        }

        if (a4 == ++v7)
        {
          return v5;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

BOOL sub_1D43136DC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9FF0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v13 - v1;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9FF8);
  v3 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v5 = &v13 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9FB8);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13 - v8;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9FB0);
  sub_1D44199E4();

  sub_1D44199C4();
  (*(v7 + 8))(v9, v6);
  sub_1D44199D4();
  (*(v3 + 8))(v5, v14);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7CA000);
  v11 = (*(*(v10 - 8) + 48))(v2, 1, v10) == 1;
  sub_1D41769C4(v2, &qword_1EC7C9FF0);
  return v11;
}

uint64_t sub_1D4313978(void *a1)
{
  v2 = [a1 pageRef];
  if (v2)
  {
    v3 = v2;
    v4 = CGPDFPageCopyString();
    v5 = sub_1D4419C54();
    v7 = v6;

    v8 = sub_1D438D2B4(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v10 = *(v8 + 2);
    v9 = *(v8 + 3);
    if (v10 >= v9 >> 1)
    {
      v8 = sub_1D438D2B4((v9 > 1), v10 + 1, 1, v8);
    }

    *(v8 + 2) = v10 + 1;
    v11 = &v8[16 * v10];
    *(v11 + 4) = v5;
    *(v11 + 5) = v7;
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

  v12 = [a1 annotations];
  sub_1D41766C0(0, &qword_1EC7C9FE8);
  v13 = sub_1D4419E44();

  if (v13 >> 62)
  {
LABEL_26:
    v14 = sub_1D441A8C4();
    if (!v14)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v14)
    {
      goto LABEL_27;
    }
  }

  v15 = 0;
  do
  {
    v16 = v15;
    while (1)
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        v17 = MEMORY[0x1DA6D6410](v16, v13);
      }

      else
      {
        if (v16 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_25;
        }

        v17 = *(v13 + 8 * v16 + 32);
      }

      v18 = v17;
      v15 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v19 = [v17 contents];
      if (v19)
      {
        break;
      }

      ++v16;
      if (v15 == v14)
      {
        goto LABEL_27;
      }
    }

    v20 = v19;
    v21 = sub_1D4419C54();
    v28 = v22;

    v29 = v21;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_1D438D2B4(0, *(v8 + 2) + 1, 1, v8);
    }

    v24 = *(v8 + 2);
    v23 = *(v8 + 3);
    if (v24 >= v23 >> 1)
    {
      v8 = sub_1D438D2B4((v23 > 1), v24 + 1, 1, v8);
    }

    *(v8 + 2) = v24 + 1;
    v25 = &v8[16 * v24];
    *(v25 + 4) = v29;
    *(v25 + 5) = v28;
  }

  while (v15 != v14);
LABEL_27:

  if (*(v8 + 2))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9768);
    sub_1D417645C(&qword_1EDE32A60, &qword_1EC7C9768);
    v26 = sub_1D4419BB4();
    swift_bridgeObjectRelease_n();
  }

  else
  {

    return 0;
  }

  return v26;
}

void sub_1D4313C88(uint64_t a1, char a2, void *a3, uint64_t a4, uint64_t a5)
{
  v77[9] = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 16);
  if (v5)
  {
    v7 = (a1 + 32);
    swift_beginAccess();
    swift_beginAccess();
    name = *MEMORY[0x1E695F128];
    *&v8 = 138412290;
    v69 = v8;
    v73 = a4;
    while (1)
    {
      v11 = *v7++;
      v10 = v11;
      v12 = objc_autoreleasePoolPush();
      v13 = [a3 pageAtIndex_];
      if (!v13)
      {
        break;
      }

      v14 = v13;
      v15 = sub_1D4313978(v13);
      if (v16)
      {
        v17 = v15;
      }

      else
      {
        v17 = 0;
      }

      if (v16)
      {
        v18 = v16;
      }

      else
      {
        v18 = 0xE000000000000000;
      }

      swift_beginAccess();
      v19 = *(a4 + 16);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(a4 + 16) = v19;
      v75 = v12;
      v76 = v7;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v19 = sub_1D438D2B4(0, *(v19 + 2) + 1, 1, v19);
        *(a4 + 16) = v19;
      }

      v22 = *(v19 + 2);
      v21 = *(v19 + 3);
      if (v22 >= v21 >> 1)
      {
        v19 = sub_1D438D2B4((v21 > 1), v22 + 1, 1, v19);
      }

      *(v19 + 2) = v22 + 1;
      v23 = &v19[16 * v22];
      *(v23 + 4) = v17;
      *(v23 + 5) = v18;
      *(a4 + 16) = v19;
      swift_endAccess();
      if ((a2 & 1) == 0)
      {
        v9 = HIBYTE(v18) & 0xF;
        if ((v18 & 0x2000000000000000) == 0)
        {
          v9 = v17 & 0xFFFFFFFFFFFFLL;
        }

        if (v9)
        {

          goto LABEL_7;
        }
      }

      [v14 boundsForBox_];
      v25 = v24;
      v27 = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9FD8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1D4435D40;
      v77[0] = sub_1D4419C54();
      v77[1] = v29;

      sub_1D441A954();
      v30 = CGColorSpaceCreateWithName(name);
      if (!v30)
      {
        __break(1u);
      }

      v31 = v30;

      type metadata accessor for CGColorSpace(0);
      *(inited + 96) = v32;
      *(inited + 72) = v31;
      sub_1D42EAA6C(inited);
      swift_setDeallocating();
      sub_1D41769C4(inited + 32, &qword_1EC7C9FE0);
      v33 = sub_1D4419B54();

      v34 = [v14 imageOfSize:0 forBox:v33 withOptions:{v25, v27}];

      v35 = [v34 CGImage];
      if (v35)
      {
        v36 = v35;
        v37 = [objc_opt_self() preferredLanguages];
        if (!v37)
        {
          sub_1D4419E44();
          v37 = sub_1D4419E24();
        }

        v38 = objc_opt_self();
        v77[0] = 0;
        v39 = [v38 ocrStringFromImage:v36 title:v77 languages:v37];

        v40 = v77[0];
        if (v39)
        {
          v41 = sub_1D4419C54();
          v43 = v42;
          v44 = v40;

          swift_beginAccess();
          v45 = *(a4 + 16);
          v46 = swift_isUniquelyReferenced_nonNull_native();
          *(a4 + 16) = v45;
          if ((v46 & 1) == 0)
          {
            v45 = sub_1D438D2B4(0, *(v45 + 2) + 1, 1, v45);
            *(a4 + 16) = v45;
          }

          v48 = *(v45 + 2);
          v47 = *(v45 + 3);
          if (v48 >= v47 >> 1)
          {
            v45 = sub_1D438D2B4((v47 > 1), v48 + 1, 1, v45);
          }

          *(v45 + 2) = v48 + 1;
          v49 = &v45[16 * v48];
          *(v49 + 4) = v41;
          *(v49 + 5) = v43;
          a4 = v73;
          *(v73 + 16) = v45;
          swift_endAccess();
          if (!v40)
          {
LABEL_50:

            goto LABEL_8;
          }
        }

        else
        {
          v65 = v77[0];
          if (!v40)
          {
            goto LABEL_50;
          }
        }

        if (!*(a5 + 24) && [v40 length] > 0)
        {
          v66 = sub_1D4419C54();
          v68 = v67;

          *(a5 + 16) = v66;
          *(a5 + 24) = v68;

          goto LABEL_8;
        }

LABEL_7:
LABEL_8:
        objc_autoreleasePoolPop(v75);
        v7 = v76;
        if (!--v5)
        {
          return;
        }
      }

      else
      {
        sub_1D4318B20();
        v50 = swift_allocError();
        swift_willThrow();

        v12 = v75;
LABEL_35:
        objc_autoreleasePoolPop(v12);
        v77[0] = v50;
        v51 = v50;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9FD0);
        if (swift_dynamicCast())
        {

          if (qword_1EDE32C58 != -1)
          {
            swift_once();
          }

          v52 = sub_1D44181B4();
          __swift_project_value_buffer(v52, qword_1EDE32C60);
          v53 = sub_1D44181A4();
          v54 = sub_1D441A164();
          if (os_log_type_enabled(v53, v54))
          {
            v55 = swift_slowAlloc();
            *v55 = 134217984;
            *(v55 + 4) = v10;
            _os_log_impl(&dword_1D4171000, v53, v54, "Skipped page %ld because of an error getting the CGImageRef or PDFPage ready.", v55, 0xCu);
            MEMORY[0x1DA6D8690](v55, -1, -1);
          }

          v56 = v77[0];
          goto LABEL_46;
        }

        if (qword_1EDE32C58 != -1)
        {
          swift_once();
        }

        v57 = sub_1D44181B4();
        __swift_project_value_buffer(v57, qword_1EDE32C60);
        v58 = v50;
        v59 = sub_1D44181A4();
        v60 = sub_1D441A164();

        if (!os_log_type_enabled(v59, v60))
        {

          v56 = v50;
LABEL_46:

          goto LABEL_47;
        }

        v61 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        *v61 = v69;
        v63 = v50;
        v64 = _swift_stdlib_bridgeErrorToNSError();
        *(v61 + 4) = v64;
        *v62 = v64;
        _os_log_impl(&dword_1D4171000, v59, v60, "Failed to perform VNRecognizeTextRequest: %@", v61, 0xCu);
        sub_1D41769C4(v62, &qword_1EC7C9918);
        MEMORY[0x1DA6D8690](v62, -1, -1);
        MEMORY[0x1DA6D8690](v61, -1, -1);

LABEL_47:
        a4 = v73;
        if (!--v5)
        {
          return;
        }
      }
    }

    sub_1D4318B20();
    v50 = swift_allocError();
    swift_willThrow();
    goto LABEL_35;
  }
}

uint64_t sub_1D431449C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9F80);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v34 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9F88);
  v38 = *(v9 - 8);
  v39 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v37 = &v34 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9F90);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v34 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7C9F98);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v34 - v16;
  sub_1D41766C0(0, &qword_1EDE32920);
  v18 = [swift_getObjCClassFromMetadata() ic:a1 existingObjectWithID:a2 context:?];
  if (v18)
  {
    v19 = v18;
    v20 = objc_allocWithZone(sub_1D4417A44());
    v21 = v19;
    v22 = sub_1D4417A14();
    if ([v21 attachmentType] == 13 && (v23 = sub_1D4417A24()) != 0)
    {
      v36 = v8;
      v24 = v23;
      MEMORY[0x1DA6D3440]();
      if ((*(v15 + 48))(v13, 1, v14) == 1)
      {

        sub_1D41769C4(v13, &qword_1EC7C9F90);
      }

      else
      {
        v35 = v24;
        (*(v15 + 32))(v17, v13, v14);
        swift_getKeyPath();
        v28 = v36;
        sub_1D44199E4();

        v30 = v38;
        v29 = v39;
        if ((*(v38 + 48))(v28, 1, v39) != 1)
        {
          (*(v30 + 32))(v37, v28, v29);
          sub_1D417645C(&unk_1EDE32AA0, &qword_1EC7C9F88);
          v31 = v29;
          v34 = a3;
          v32 = v37;
          sub_1D44199F4();

          (*(v30 + 8))(v32, v31);
          (*(v15 + 8))(v17, v14);
          v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9F68);
          return (*(*(v33 - 8) + 56))(v34, 0, 1, v33);
        }

        (*(v15 + 8))(v17, v14);

        sub_1D41769C4(v28, &qword_1EC7C9F80);
      }
    }

    else
    {
    }

    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9F68);
    return (*(*(v25 - 8) + 56))(a3, 1, 1, v25);
  }

  else
  {
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9F68);
    return (*(*(v27 - 8) + 56))(a3, 1, 1, v27);
  }
}

uint64_t sub_1D43149E0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9F80);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1D417CF94(a1, &v5 - v3, &qword_1EC7C9F80);
  return sub_1D4419544();
}

void sub_1D4314A88(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  sub_1D41766C0(0, &qword_1EDE32920);
  v8 = [swift_getObjCClassFromMetadata() ic:a1 existingObjectWithID:a2 context:?];
  if (!v8)
  {
    return;
  }

  v9 = v8;
  v10 = [v8 title];
  if (v10)
  {
    v11 = v10;
    v12 = sub_1D4419C54();
    v14 = v13;

    if (a4)
    {
      if (v12 == a3 && v14 == a4)
      {

        return;
      }

      v16 = sub_1D441AD84();

      if ((v16 & 1) == 0)
      {
        goto LABEL_13;
      }

LABEL_11:

      return;
    }
  }

  else if (!a4)
  {
    goto LABEL_11;
  }

LABEL_13:
  if (qword_1EDE32C58 != -1)
  {
    swift_once();
  }

  v17 = sub_1D44181B4();
  __swift_project_value_buffer(v17, qword_1EDE32C60);

  v18 = v9;
  v19 = sub_1D44181A4();
  v20 = sub_1D441A154();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    log = swift_slowAlloc();
    v61 = log;
    *v21 = 136315395;
    v22 = [v18 ic_loggingIdentifier];
    v23 = sub_1D4419C54();
    v24 = a3;
    v26 = v25;

    v27 = sub_1D42E9410(v23, v26, &v61);

    *(v21 + 4) = v27;
    *(v21 + 12) = 2085;
    if (a4)
    {
      v28 = v24;
    }

    else
    {
      v28 = 0x296C6C756E28;
    }

    if (a4)
    {
      v29 = a4;
    }

    else
    {
      v29 = 0xE600000000000000;
    }

    v30 = sub_1D42E9410(v28, v29, &v61);

    *(v21 + 14) = v30;
    _os_log_impl(&dword_1D4171000, v19, v20, "New attachment title {id: %s, title: %{sensitive}s}", v21, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1DA6D8690](log, -1, -1);
    MEMORY[0x1DA6D8690](v21, -1, -1);
  }

  if (a4)
  {
    v31 = sub_1D4419C14();
  }

  else
  {
    v31 = 0;
  }

  [v18 setTitle_];

  v32 = sub_1D4419C14();
  [v18 updateChangeCountWithReason_];

  v33 = v18;
  v34 = [v33 note];
  if (v34)
  {
    v35 = v34;
    v36 = [v33 note];

    v37 = [v36 firstAttachmentInTextStorage];
    if (v37)
    {
      v38 = v33;
      v39 = sub_1D441A5E4();

      if (v39)
      {
        if ([v35 regenerateTitle:1 snippet:1])
        {
          v40 = [v35 title];
          if (v40)
          {
            v41 = v40;
            v60 = sub_1D4419C54();
            v43 = v42;
          }

          else
          {
            v60 = 0x296C6C756E28;
            v43 = 0xE600000000000000;
          }

          v44 = v35;

          v45 = sub_1D44181A4();
          v46 = sub_1D441A154();

          if (os_log_type_enabled(v45, v46))
          {
            v47 = swift_slowAlloc();
            v59 = swift_slowAlloc();
            v61 = v59;
            *v47 = 136315395;
            loga = v45;
            v48 = [v44 ic_loggingIdentifier];
            v56 = v46;
            v49 = sub_1D4419C54();
            v51 = v50;

            v52 = sub_1D42E9410(v49, v51, &v61);

            *(v47 + 4) = v52;
            *(v47 + 12) = 2085;
            v53 = sub_1D42E9410(v60, v43, &v61);

            *(v47 + 14) = v53;
            _os_log_impl(&dword_1D4171000, loga, v56, "New note title {id: %s, title: %{sensitive}s}", v47, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x1DA6D8690](v59, -1, -1);
            MEMORY[0x1DA6D8690](v47, -1, -1);
          }

          else
          {
          }

          v54 = sub_1D4419C14();
          [v44 markShareDirtyIfNeededWithReason_];

          v55 = sub_1D4419C14();
          [v44 updateChangeCountWithReason_];
        }

        else
        {
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

  else
  {
  }
}

void sub_1D43150D8(uint64_t a1, char *a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9F58);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v13 - v7;
  [a2 setDelegate_];
  v9 = [a3 ic_drawingUUID];
  *&a2[OBJC_IVAR____TtC7NotesUIP33_F897AB263D3561CA5D296CCFF5C5FDF512ICTitleQuery_drawingUUID] = v9;
  swift_unknownObjectRelease();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9F50);
  v11 = *(v10 - 8);
  (*(v11 + 16))(v8, a1, v10);
  (*(v11 + 56))(v8, 0, 1, v10);
  v12 = OBJC_IVAR____TtC7NotesUIP33_F897AB263D3561CA5D296CCFF5C5FDF512ICTitleQuery_continuation;
  swift_beginAccess();
  sub_1D4316284(v8, &a2[v12]);
  swift_endAccess();
  sub_1D431525C();
}

void sub_1D431525C()
{
  v9.receiver = v0;
  v9.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v9, sel_start);
  v1 = OBJC_IVAR____TtC7NotesUIP33_F897AB263D3561CA5D296CCFF5C5FDF512ICTitleQuery_timer;
  if (!*&v0[OBJC_IVAR____TtC7NotesUIP33_F897AB263D3561CA5D296CCFF5C5FDF512ICTitleQuery_timer])
  {
    v2 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v8[4] = sub_1D431627C;
    v8[5] = v2;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 1107296256;
    v8[2] = sub_1D4315880;
    v8[3] = &block_descriptor_23;
    v3 = _Block_copy(v8);
    v4 = objc_opt_self();

    v5 = [v4 timerWithTimeInterval:0 repeats:v3 block:10.0];
    _Block_release(v3);

    v6 = [objc_opt_self() mainRunLoop];
    [v6 addTimer:v5 forMode:*MEMORY[0x1E695DA28]];

    v7 = *&v0[v1];
    *&v0[v1] = v5;
  }
}

id ICPaperSearchIndexer.init()()
{
  *(v0 + OBJC_IVAR___ICPaperSearchIndexer____lazy_storage___queue) = 0;
  v2.super_class = ICPaperSearchIndexer;
  return objc_msgSendSuper2(&v2, sel_init);
}

void sub_1D4315444(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9F58);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v19 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9F50);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v19 - v10;
  v12 = OBJC_IVAR____TtC7NotesUIP33_F897AB263D3561CA5D296CCFF5C5FDF512ICTitleQuery_resumed;
  if (*(v2 + OBJC_IVAR____TtC7NotesUIP33_F897AB263D3561CA5D296CCFF5C5FDF512ICTitleQuery_resumed))
  {
    v13 = OBJC_IVAR____TtC7NotesUIP33_F897AB263D3561CA5D296CCFF5C5FDF512ICTitleQuery_timer;
    v14 = *(v2 + OBJC_IVAR____TtC7NotesUIP33_F897AB263D3561CA5D296CCFF5C5FDF512ICTitleQuery_timer);
    if (v14)
    {
      [v14 invalidate];
      v14 = *(v2 + v13);
    }

    *(v2 + v13) = 0;
  }

  else
  {
    v15 = OBJC_IVAR____TtC7NotesUIP33_F897AB263D3561CA5D296CCFF5C5FDF512ICTitleQuery_continuation;
    swift_beginAccess();
    if (!(*(v9 + 48))(v2 + v15, 1, v8))
    {
      (*(v9 + 16))(v11, v2 + v15, v8);
      v19[0] = a1;
      v19[1] = a2;

      sub_1D4419F24();
      (*(v9 + 8))(v11, v8);
    }

    (*(v9 + 56))(v7, 1, 1, v8);
    swift_beginAccess();
    sub_1D4316284(v7, v2 + v15);
    swift_endAccess();
    *(v2 + v12) = 1;
    v16 = OBJC_IVAR____TtC7NotesUIP33_F897AB263D3561CA5D296CCFF5C5FDF512ICTitleQuery_timer;
    v17 = *(v2 + OBJC_IVAR____TtC7NotesUIP33_F897AB263D3561CA5D296CCFF5C5FDF512ICTitleQuery_timer);
    if (v17)
    {
      [v17 invalidate];
      v18 = *(v2 + v16);
    }

    else
    {
      v18 = 0;
    }

    *(v2 + v16) = 0;
  }
}

void sub_1D4315768()
{
  if (qword_1EDE32C58 != -1)
  {
    swift_once();
  }

  v0 = sub_1D44181B4();
  __swift_project_value_buffer(v0, qword_1EDE32C60);
  v1 = sub_1D44181A4();
  v2 = sub_1D441A164();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1D4171000, v1, v2, "ICTitleQuery timed out waitiing for update; resuming continuation", v3, 2u);
    MEMORY[0x1DA6D8690](v3, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_1D4315444(0, 0);
  }
}

void sub_1D4315880(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

id sub_1D4315930(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR____TtC7NotesUIP33_F897AB263D3561CA5D296CCFF5C5FDF512ICTitleQuery_drawingUUID] = 0;
  v5 = OBJC_IVAR____TtC7NotesUIP33_F897AB263D3561CA5D296CCFF5C5FDF512ICTitleQuery_continuation;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9F50);
  (*(*(v6 - 8) + 56))(&v2[v5], 1, 1, v6);
  v2[OBJC_IVAR____TtC7NotesUIP33_F897AB263D3561CA5D296CCFF5C5FDF512ICTitleQuery_resumed] = 0;
  *&v2[OBJC_IVAR____TtC7NotesUIP33_F897AB263D3561CA5D296CCFF5C5FDF512ICTitleQuery_timer] = 0;
  v7 = sub_1D4419AF4();
  v13.receiver = v2;
  v13.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v13, sel_initWithDrawing_, v7);

  v9 = sub_1D4419B14();
  v10 = *(*(v9 - 8) + 8);
  v11 = v8;
  v10(a1, v9);
  if (v11)
  {
  }

  return v11;
}

uint64_t sub_1D4315C34()
{
  sub_1D441AEB4();
  MEMORY[0x1DA6D68D0](0);
  return sub_1D441AF04();
}

uint64_t sub_1D4315CA0()
{
  sub_1D441AEB4();
  MEMORY[0x1DA6D68D0](0);
  return sub_1D441AF04();
}

uint64_t sub_1D4315CE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9F60);
  MEMORY[0x1EEE9AC00]();
  v10 = v22 - v9;
  sub_1D417CF94(a3, v22 - v9, &qword_1EC7C9F60);
  v11 = sub_1D4419F94();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1D41769C4(v10, &qword_1EC7C9F60);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v13 = 0;
    v15 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_1D4419F84();
  (*(v12 + 8))(v10, v11);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v13 = sub_1D4419F04();
  v15 = v14;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v16 = sub_1D4419CA4() + 32;
    v17 = swift_allocObject();
    *(v17 + 16) = a4;
    *(v17 + 24) = a5;

    if (v15 | v13)
    {
      v23[0] = 0;
      v23[1] = 0;
      v18 = v23;
      v23[2] = v13;
      v23[3] = v15;
    }

    else
    {
      v18 = 0;
    }

    v22[1] = 7;
    v22[2] = v18;
    v22[3] = v16;
    v20 = swift_task_create();

    sub_1D41769C4(a3, &qword_1EC7C9F60);

    return v20;
  }

LABEL_8:
  sub_1D41769C4(a3, &qword_1EC7C9F60);
  v19 = swift_allocObject();
  *(v19 + 16) = a4;
  *(v19 + 24) = a5;
  if (v15 | v13)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v13;
    v23[7] = v15;
  }

  return swift_task_create();
}

unint64_t sub_1D4315FDC()
{
  result = qword_1EDE32760;
  if (!qword_1EDE32760)
  {
    sub_1D41766C0(255, &qword_1EDE32768);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE32760);
  }

  return result;
}

uint64_t sub_1D4316044()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1D4177CAC;

  return sub_1D4310020(v2, v3, v4);
}

uint64_t sub_1D43160EC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1D4316170()
{
  sub_1D4316218();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1D4316218()
{
  if (!qword_1EDE32A58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7C9F50);
    v0 = sub_1D441A784();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDE32A58);
    }
  }
}

uint64_t sub_1D4316284(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9F58);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D43162F4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1D4177CAC;

  return sub_1D431305C(v2, v3);
}

uint64_t sub_1D43163A0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D41775C8;

  return sub_1D4176ADC(a1, v4);
}

uint64_t sub_1D4316458()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1D4177CAC;

  return sub_1D431100C(v2, v3, v4, v5, v6);
}

uint64_t objectdestroy_49Tm()
{
  _Block_release(*(v0 + 40));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D4316574()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1D4177CAC;

  return sub_1D430F9B0(v2, v3, v4, v5, v6);
}

uint64_t sub_1D4316640()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1D4177CAC;

  return sub_1D430EF98(v2, v3, v4);
}

uint64_t objectdestroy_79Tm()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D431673C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D41775C8;

  return sub_1D4176BD4(a1, v4, v5, v6);
}

uint64_t sub_1D4316828(uint64_t a1, uint64_t a2)
{
  v2[13] = a1;
  v2[14] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9FB8);
  v2[15] = v3;
  v2[16] = *(v3 - 8);
  v2[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9FC0);
  v2[18] = swift_task_alloc();
  v4 = sub_1D44195B4();
  v2[19] = v4;
  v2[20] = *(v4 - 8);
  v2[21] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D4316988, 0, 0);
}

uint64_t sub_1D4316988()
{
  v1 = v0[18];
  v0[22] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9FB0);
  sub_1D4419A04();
  v2 = sub_1D4419574();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_task_alloc();
  v0[23] = v3;
  v4 = sub_1D43160EC(&qword_1EDE32AB8, MEMORY[0x1E69782C0]);
  *v3 = v0;
  v3[1] = sub_1D4316AD4;
  v5 = v0[18];
  v6 = v0[19];
  v8 = v0[13];
  v7 = v0[14];

  return MEMORY[0x1EEDD55E8](v7, v8, v5, v6, v4);
}

uint64_t sub_1D4316AD4(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v4 = *(*v1 + 160);
  v5 = *(*v1 + 152);
  v6 = *(*v1 + 144);
  v2[24] = a1;

  sub_1D41769C4(v6, &qword_1EC7C9FC0);
  v7 = *(v4 + 8);
  v2[25] = v7;
  v2[26] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v3, v5);

  return MEMORY[0x1EEE6DFA0](sub_1D4316C74, 0, 0);
}

uint64_t sub_1D4316C74()
{
  v1 = v0[25];
  v2 = v0[21];
  v3 = v0[19];
  v5 = v0[16];
  v4 = v0[17];
  v6 = v0[15];
  sub_1D4419A04();
  sub_1D4419584();
  v1(v2, v3);
  sub_1D417645C(&qword_1EDE32AB0, &qword_1EC7C9FB8);
  sub_1D441A0D4();
  sub_1D441A0F4();
  v7 = *(v5 + 8);
  result = v7(v4, v6);
  v10 = v0[8];
  v9 = v0[9];
  if (v9 < v10)
  {
    __break(1u);
    goto LABEL_10;
  }

  v34 = v0[25];
  v35 = v7;
  v11 = v0[21];
  v33 = v0[19];
  v12 = v0[17];
  v13 = v0[15];
  v14 = v0[13];
  v15 = swift_task_alloc();
  *(v15 + 16) = v14;
  v16 = sub_1D431359C(sub_1D4318AE0, v15, v10, v9);

  sub_1D4419A04();
  sub_1D4419584();
  v34(v11, v33);
  sub_1D441A0D4();
  sub_1D441A0F4();
  result = v35(v12, v13);
  v17 = v0[10];
  v18 = v0[11];
  if (v18 < v17)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v19 = v0[24];
  v20 = v0[13];
  v21 = swift_task_alloc();
  *(v21 + 16) = v20;
  v22 = sub_1D431359C(sub_1D4318B00, v21, v17, v18);

  v23 = swift_allocObject();
  *(v23 + 16) = MEMORY[0x1E69E7CC0];
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  sub_1D4313C88(v16, 1, v19, v23, v24);

  sub_1D4313C88(v22, 0, v19, v23, v24);

  swift_beginAccess();
  v25 = *(v23 + 16);
  v26 = v0[24];
  if (*(v25 + 16))
  {
    v0[12] = v25;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9768);
    sub_1D417645C(&qword_1EDE32A60, &qword_1EC7C9768);
    v27 = sub_1D4419BB4();
    v29 = v28;
  }

  else
  {

    v27 = 0;
    v29 = 0;
  }

  swift_beginAccess();
  v30 = *(v24 + 16);
  v31 = *(v24 + 24);

  v32 = v0[1];

  return v32(v27, v29, v30, v31);
}

uint64_t sub_1D4317068(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = _s13PrerequisitesVMa(0);
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v2[6] = *(v4 + 64);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v2[10] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9FA8);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D4317190, 0, 0);
}

uint64_t sub_1D4317190()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = swift_allocObject();
  v0[13] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = v2;
  v5 = v1;
  v6 = swift_task_alloc();
  v0[14] = v6;
  *v6 = v0;
  v6[1] = sub_1D4317280;
  v7 = v0[12];
  v8 = v0[10];

  return MEMORY[0x1EEE233F8](v7, sub_1D4318928, v3, v8);
}

void sub_1D4317280()
{

  if (v0)
  {
  }

  else
  {

    MEMORY[0x1EEE6DFA0](sub_1D43173BC, 0, 0);
  }
}

uint64_t sub_1D43173BC()
{
  v25 = v0;
  v1 = v0[11];
  v2 = v0[4];
  v3 = v0[5];
  sub_1D417CF94(v0[12], v1, &qword_1EC7C9FA8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[11];
    sub_1D41769C4(v0[12], &qword_1EC7C9FA8);
    sub_1D41769C4(v4, &qword_1EC7C9FA8);

    v5 = v0[1];

    return v5(0);
  }

  else
  {
    sub_1D4318944(v0[11], v0[9]);
    if (qword_1EDE32C58 != -1)
    {
      swift_once();
    }

    v7 = v0[8];
    v8 = v0[9];
    v9 = sub_1D44181B4();
    __swift_project_value_buffer(v9, qword_1EDE32C60);
    sub_1D43189A8(v8, v7);
    v10 = sub_1D44181A4();
    v11 = sub_1D441A154();
    v12 = os_log_type_enabled(v10, v11);
    v13 = v0[8];
    if (v12)
    {
      v14 = v0[4];
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v24 = v16;
      *v15 = 136315138;
      v17 = (v13 + *(v14 + 28));
      v18 = *v17;
      v19 = v17[1];

      sub_1D4318A0C(v13);
      v20 = sub_1D42E9410(v18, v19, &v24);

      *(v15 + 4) = v20;
      _os_log_impl(&dword_1D4171000, v10, v11, "Fetching OCR content for attachment %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x1DA6D8690](v16, -1, -1);
      MEMORY[0x1DA6D8690](v15, -1, -1);
    }

    else
    {

      sub_1D4318A0C(v13);
    }

    v21 = *(v0[9] + *(v0[4] + 24));
    v22 = swift_task_alloc();
    v0[15] = v22;
    *v22 = v0;
    v22[1] = sub_1D43176BC;
    v23 = v0[9];

    return sub_1D4316828(v23, v21);
  }
}

uint64_t sub_1D43176BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v5[16] = a1;
  v5[17] = a2;
  v5[18] = a3;
  v5[19] = a4;

  return MEMORY[0x1EEE6DFA0](sub_1D43177C0, 0, 0);
}

uint64_t sub_1D43177C0()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 40);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  v12 = *(v0 + 144);
  v13 = *(v0 + 128);
  sub_1D43189A8(*(v0 + 72), v1);
  v5 = (*(v2 + 80) + 64) & ~*(v2 + 80);
  v6 = swift_allocObject();
  *(v0 + 160) = v6;
  *(v6 + 16) = v4;
  *(v6 + 24) = v3;
  *(v6 + 32) = v13;
  *(v6 + 48) = v12;
  sub_1D4318944(v1, v6 + v5);
  v7 = v4;
  v8 = v3;
  v9 = swift_task_alloc();
  *(v0 + 168) = v9;
  *v9 = v0;
  v9[1] = sub_1D43178F8;
  v10 = MEMORY[0x1E69E6370];

  return MEMORY[0x1EEE233F8](v0 + 176, sub_1D4318A68, v6, v10);
}

void sub_1D43178F8()
{

  if (v0)
  {
  }

  else
  {

    MEMORY[0x1EEE6DFA0](sub_1D4317A34, 0, 0);
  }
}

uint64_t sub_1D4317A34()
{
  v1 = *(v0 + 72);
  sub_1D41769C4(*(v0 + 96), &qword_1EC7C9FA8);
  sub_1D4318A0C(v1);
  v2 = *(v0 + 176);

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_1D4317AF8(uint64_t a1)
{
  v1[4] = a1;
  v2 = sub_1D4419B14();
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9F68);
  v1[8] = v3;
  v1[9] = *(v3 - 8);
  v1[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D4317C20, 0, 0);
}

uint64_t sub_1D4317C20()
{
  v1 = v0[7];
  v2 = v0[5];
  v3 = v0[6];
  (*(v0[9] + 16))(v0[10], v0[4], v0[8]);
  v4 = objc_allocWithZone(sub_1D44195E4());
  v5 = sub_1D44195D4();
  v0[11] = v5;
  [v5 setRecognitionEnabled_];
  sub_1D4419B04();
  v6 = objc_allocWithZone(type metadata accessor for ICTitleQuery(0));
  v7 = sub_1D4419AF4();
  v8 = [v6 initWithDrawing_];
  v0[12] = v8;

  (*(v3 + 8))(v1, v2);
  if (v8)
  {
    v9 = swift_task_alloc();
    v0[13] = v9;
    *(v9 + 16) = v8;
    *(v9 + 24) = v5;
    v10 = swift_task_alloc();
    v0[14] = v10;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7C9B60);
    *v10 = v0;
    v10[1] = sub_1D4317E4C;

    return MEMORY[0x1EEE6DDE0](v0 + 2, 0, 0, 0xD000000000000014, 0x80000001D444DAB0, sub_1D4318900, v9, v11);
  }

  else
  {

    v12 = v0[1];

    return v12(0, 0);
  }
}