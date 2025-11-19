uint64_t sub_1B4A44C94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A76C0, &qword_1B4D1E798);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioAvailable(0);
  sub_1B4974FBC(a1 + *(v8 + 36), v7, &qword_1EB8A76C0, &qword_1B4D1E798);
  v9 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisIntensity(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_1B4A3CCD0(v7, a2, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisIntensity);
  }

  *a2 = 0;
  *(a2 + 8) = 1;
  v11 = a2 + *(v9 + 20);
  sub_1B4D17BBC();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1B4975024(v7, &qword_1EB8A76C0, &qword_1B4D1E798);
  }

  return result;
}

uint64_t sub_1B4A44DFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisIntensity(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4A467C0(a1, v8, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisIntensity);
  v9 = *(type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioAvailable(0) + 36);
  sub_1B4975024(a2 + v9, &qword_1EB8A76C0, &qword_1B4D1E798);
  sub_1B4A3CCD0(v8, a2 + v9, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisIntensity);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

void (*Apple_Fitness_Intelligence_StreamingAudioAvailable.intensity.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A76C0, &qword_1B4D1E798) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisIntensity(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioAvailable(0) + 36);
  *(v5 + 12) = v15;
  sub_1B4974FBC(v1 + v15, v8, &qword_1EB8A76C0, &qword_1B4D1E798);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    *(v14 + 8) = 1;
    v17 = v14 + *(v9 + 20);
    sub_1B4D17BBC();
    if (v16(v8, 1, v9) != 1)
    {
      sub_1B4975024(v8, &qword_1EB8A76C0, &qword_1B4D1E798);
    }
  }

  else
  {
    sub_1B4A3CCD0(v8, v14, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisIntensity);
  }

  return sub_1B4A4514C;
}

void sub_1B4A45188(uint64_t **a1, char a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v9 = *a1;
  v10 = *(*a1 + 12);
  v11 = (*a1)[4];
  v12 = (*a1)[5];
  v13 = (*a1)[2];
  v14 = (*a1)[3];
  v15 = **a1;
  v17 = (*a1)[1];
  if (a2)
  {
    sub_1B4A467C0(v12, v11, a6);
    sub_1B4975024(v15 + v10, a3, a4);
    sub_1B4A3CCD0(v11, v15 + v10, a5);
    (*(v14 + 56))(v15 + v10, 0, 1, v13);
    sub_1B4A46828(v12, a6);
  }

  else
  {
    sub_1B4975024(v15 + v10, a3, a4);
    sub_1B4A3CCD0(v12, v15 + v10, a5);
    (*(v14 + 56))(v15 + v10, 0, 1, v13);
  }

  free(v12);
  free(v11);
  free(v17);

  free(v9);
}

BOOL sub_1B4A45300(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void, double), uint64_t (*a4)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = &v18 - v12;
  v14 = a3(0, v11);
  sub_1B4974FBC(v4 + *(v14 + 36), v13, a1, a2);
  v15 = a4(0);
  v16 = (*(*(v15 - 8) + 48))(v13, 1, v15) != 1;
  sub_1B4975024(v13, a1, a2);
  return v16;
}

uint64_t sub_1B4A45438(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = *(a1(0) + 36);
  sub_1B4975024(v4 + v8, a2, a3);
  v9 = a4(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v4 + v8, 1, 1, v9);
}

uint64_t Apple_Fitness_Intelligence_StreamingAudioAvailable.init()@<X0>(char *a1@<X8>)
{
  *a1 = 0;
  *(a1 + 1) = 0xE000000000000000;
  *(a1 + 2) = 0;
  *(a1 + 3) = 0xE000000000000000;
  v2 = type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioAvailable(0);
  v3 = &a1[v2[6]];
  sub_1B4D17BBC();
  v4 = v2[7];
  v5 = type metadata accessor for Apple_Fitness_Intelligence_AudioStreamDescription(0);
  (*(*(v5 - 8) + 56))(&a1[v4], 1, 1, v5);
  v6 = v2[8];
  v7 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice(0);
  (*(*(v7 - 8) + 56))(&a1[v6], 1, 1, v7);
  v8 = v2[9];
  v9 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisIntensity(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(&a1[v8], 1, 1, v9);
}

uint64_t sub_1B4A45730@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  v2 = a2 + *(a1(0) + 20);
  return sub_1B4D17BBC();
}

uint64_t Apple_Fitness_Intelligence_StreamingAudioData.audioChunks.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t sub_1B4A45858@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  *a2 = MEMORY[0x1E69E7CC0];
  v2 = a2 + *(a1(0) + 20);
  return sub_1B4D17BBC();
}

uint64_t Apple_Fitness_Intelligence_StreamingAudioChunk.audioData.getter()
{
  v1 = *(v0 + 24);
  sub_1B498FC0C(v1, *(v0 + 32));
  return v1;
}

uint64_t Apple_Fitness_Intelligence_StreamingAudioChunk.audioData.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1B49DDD2C(*(v2 + 24), *(v2 + 32));
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t Apple_Fitness_Intelligence_StreamingAudioChunk.packetDescriptions.getter()
{
  v1 = *(v0 + 48);
  sub_1B498FC0C(v1, *(v0 + 56));
  return v1;
}

uint64_t Apple_Fitness_Intelligence_StreamingAudioChunk.packetDescriptions.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1B49DDD2C(*(v2 + 48), *(v2 + 56));
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t Apple_Fitness_Intelligence_StreamingAudioChunk.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioChunk(0) + 36);
  v4 = sub_1B4D17BCC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Apple_Fitness_Intelligence_StreamingAudioChunk.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioChunk(0) + 36);
  v4 = sub_1B4D17BCC();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Apple_Fitness_Intelligence_StreamingAudioChunk.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = xmmword_1B4D223D0;
  *(a1 + 40) = 0;
  *(a1 + 48) = xmmword_1B4D223D0;
  v1 = a1 + *(type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioChunk(0) + 36);
  return sub_1B4D17BBC();
}

uint64_t Apple_Fitness_Intelligence_StreamingAudioComplete.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  v1 = a1 + *(type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioComplete(0) + 24);
  return sub_1B4D17BBC();
}

uint64_t Apple_Fitness_Intelligence_AudioStreamDescription.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Apple_Fitness_Intelligence_AudioStreamDescription(0) + 52);
  v4 = sub_1B4D17BCC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Apple_Fitness_Intelligence_AudioStreamDescription.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Fitness_Intelligence_AudioStreamDescription(0) + 52);
  v4 = sub_1B4D17BCC();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_1B4A45FC0()
{
  v0 = sub_1B4D17E9C();
  __swift_allocate_value_buffer(v0, qword_1EB8A8428);
  __swift_project_value_buffer(v0, qword_1EB8A8428);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D38, &unk_1B4D29F10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D40, &qword_1B4D25740) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1B4D223E0;
  v4 = v19 + v3;
  v5 = v19 + v3 + v1[14];
  *(v19 + v3) = 1;
  *v5 = "uuid";
  *(v5 + 8) = 4;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1B4D17E7C();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "createdAt";
  *(v9 + 8) = 9;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "request";
  *(v11 + 1) = 7;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "result";
  *(v13 + 1) = 6;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "feedbackId";
  *(v15 + 1) = 10;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "osBuildVersion";
  *(v17 + 1) = 14;
  v17[16] = 2;
  v8();
  return sub_1B4D17E8C();
}

uint64_t sub_1B4A462A4()
{
  v0 = type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  *(v3 + 2) = 0;
  *(v3 + 3) = 0xE000000000000000;
  *(v3 + 4) = 0;
  v4 = OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_InferenceRecordP33_33AB6A1C14BBB03993CB1A3D542982BE13_StorageClass__request;
  v5 = type metadata accessor for Apple_Fitness_Intelligence_InferenceRequest(0);
  (*(*(v5 - 8) + 56))(&v3[v4], 1, 1, v5);
  v6 = OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_InferenceRecordP33_33AB6A1C14BBB03993CB1A3D542982BE13_StorageClass__result;
  v7 = type metadata accessor for Apple_Fitness_Intelligence_InferenceResult(0);
  result = (*(*(v7 - 8) + 56))(&v3[v6], 1, 1, v7);
  v9 = &v3[OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_InferenceRecordP33_33AB6A1C14BBB03993CB1A3D542982BE13_StorageClass__feedbackID];
  *v9 = 0;
  *(v9 + 1) = 0;
  v10 = &v3[OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_InferenceRecordP33_33AB6A1C14BBB03993CB1A3D542982BE13_StorageClass__osBuildVersion];
  *v10 = 0;
  *(v10 + 1) = 0;
  qword_1EB8A8440 = v3;
  return result;
}

void *sub_1B4A463BC(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8758, &qword_1B4D22430);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v35 = &v33 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8748, &qword_1B4D22428);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v33 - v9;
  v1[2] = 0;
  v1[3] = 0xE000000000000000;
  v1[4] = 0;
  v11 = OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_InferenceRecordP33_33AB6A1C14BBB03993CB1A3D542982BE13_StorageClass__request;
  v12 = type metadata accessor for Apple_Fitness_Intelligence_InferenceRequest(0);
  (*(*(v12 - 8) + 56))(v1 + v11, 1, 1, v12);
  v13 = OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_InferenceRecordP33_33AB6A1C14BBB03993CB1A3D542982BE13_StorageClass__result;
  v34 = OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_InferenceRecordP33_33AB6A1C14BBB03993CB1A3D542982BE13_StorageClass__result;
  v14 = type metadata accessor for Apple_Fitness_Intelligence_InferenceResult(0);
  (*(*(v14 - 8) + 56))(v1 + v13, 1, 1, v14);
  v15 = (v1 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_InferenceRecordP33_33AB6A1C14BBB03993CB1A3D542982BE13_StorageClass__feedbackID);
  *v15 = 0;
  v15[1] = 0;
  v16 = (v1 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_InferenceRecordP33_33AB6A1C14BBB03993CB1A3D542982BE13_StorageClass__osBuildVersion);
  *v16 = 0;
  v16[1] = 0;
  swift_beginAccess();
  v18 = a1[2];
  v17 = a1[3];
  swift_beginAccess();
  v1[2] = v18;
  v1[3] = v17;
  swift_beginAccess();
  v19 = a1[4];
  swift_beginAccess();
  v1[4] = v19;
  v20 = OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_InferenceRecordP33_33AB6A1C14BBB03993CB1A3D542982BE13_StorageClass__request;
  swift_beginAccess();
  sub_1B4974FBC(a1 + v20, v10, &qword_1EB8A8748, &qword_1B4D22428);
  swift_beginAccess();

  sub_1B49A205C(v10, v2 + v11, &qword_1EB8A8748, &qword_1B4D22428);
  swift_endAccess();
  v21 = OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_InferenceRecordP33_33AB6A1C14BBB03993CB1A3D542982BE13_StorageClass__result;
  swift_beginAccess();
  v22 = v35;
  sub_1B4974FBC(a1 + v21, v35, &qword_1EB8A8758, &qword_1B4D22430);
  v23 = v34;
  swift_beginAccess();
  sub_1B49A205C(v22, v2 + v23, &qword_1EB8A8758, &qword_1B4D22430);
  swift_endAccess();
  v24 = (a1 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_InferenceRecordP33_33AB6A1C14BBB03993CB1A3D542982BE13_StorageClass__feedbackID);
  swift_beginAccess();
  v26 = *v24;
  v25 = v24[1];
  swift_beginAccess();
  v27 = v15[1];
  *v15 = v26;
  v15[1] = v25;

  v28 = (a1 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_InferenceRecordP33_33AB6A1C14BBB03993CB1A3D542982BE13_StorageClass__osBuildVersion);
  swift_beginAccess();
  v30 = *v28;
  v29 = v28[1];

  swift_beginAccess();
  v31 = v16[1];
  *v16 = v30;
  v16[1] = v29;

  return v2;
}

uint64_t sub_1B4A467C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B4A46828(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B4A46A68()
{
  v1 = v0[3];

  sub_1B4975024(v0 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_InferenceRecordP33_33AB6A1C14BBB03993CB1A3D542982BE13_StorageClass__request, &qword_1EB8A8748, &qword_1B4D22428);
  sub_1B4975024(v0 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_InferenceRecordP33_33AB6A1C14BBB03993CB1A3D542982BE13_StorageClass__result, &qword_1EB8A8758, &qword_1B4D22430);
  v2 = *(v0 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_InferenceRecordP33_33AB6A1C14BBB03993CB1A3D542982BE13_StorageClass__feedbackID + 8);

  v3 = *(v0 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_InferenceRecordP33_33AB6A1C14BBB03993CB1A3D542982BE13_StorageClass__osBuildVersion + 8);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t Apple_Fitness_Intelligence_InferenceRecord.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord(0) + 20);
  v9 = *(v3 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v3 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = *(v3 + v8);
    v13 = type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord._StorageClass(0);
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    swift_allocObject();
    v11 = sub_1B4A463BC(v12);
    *(v4 + v8) = v11;
  }

  return sub_1B4A46BD4(v11, a1, a2, a3);
}

uint64_t sub_1B4A46BD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1B4D17C2C();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result > 3)
      {
        switch(result)
        {
          case 4:
            sub_1B4A46F10();
            break;
          case 5:
            sub_1B4A46FEC(a2, a1, a3, a4, &OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_InferenceRecordP33_33AB6A1C14BBB03993CB1A3D542982BE13_StorageClass__feedbackID);
            break;
          case 6:
            sub_1B4A46FEC(a2, a1, a3, a4, &OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_InferenceRecordP33_33AB6A1C14BBB03993CB1A3D542982BE13_StorageClass__osBuildVersion);
            break;
        }
      }

      else
      {
        switch(result)
        {
          case 1:
            sub_1B4A46D2C();
            break;
          case 2:
            sub_1B4A46DB0();
            break;
          case 3:
            sub_1B4A46E34();
            break;
        }
      }

      result = sub_1B4D17C2C();
    }
  }

  return result;
}

uint64_t sub_1B4A46D2C()
{
  swift_beginAccess();
  sub_1B4D17D1C();
  return swift_endAccess();
}

uint64_t sub_1B4A46DB0()
{
  swift_beginAccess();
  sub_1B4D17CFC();
  return swift_endAccess();
}

uint64_t sub_1B4A46E34()
{
  swift_beginAccess();
  type metadata accessor for Apple_Fitness_Intelligence_InferenceRequest(0);
  sub_1B4A5C360(&qword_1EB8A8940, type metadata accessor for Apple_Fitness_Intelligence_InferenceRequest);
  sub_1B4D17D4C();
  return swift_endAccess();
}

uint64_t sub_1B4A46F10()
{
  swift_beginAccess();
  type metadata accessor for Apple_Fitness_Intelligence_InferenceResult(0);
  sub_1B4A5C360(&qword_1EB8A6958, type metadata accessor for Apple_Fitness_Intelligence_InferenceResult);
  sub_1B4D17D4C();
  return swift_endAccess();
}

uint64_t sub_1B4A46FEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a5;
  swift_beginAccess();
  sub_1B4D17D0C();
  return swift_endAccess();
}

uint64_t Apple_Fitness_Intelligence_InferenceRecord.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord(0);
  result = sub_1B4A470E0(*(v3 + *(v8 + 20)), a1, a2, a3);
  if (!v4)
  {
    return sub_1B4D17BAC();
  }

  return result;
}

uint64_t sub_1B4A470E0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  swift_beginAccess();
  v10 = a1[3];
  v11 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v11 = a1[2] & 0xFFFFFFFFFFFFLL;
  }

  if (v11)
  {
    v12 = a1[3];

    sub_1B4D17E3C();

    if (v4)
    {
      return result;
    }

    v5 = 0;
  }

  swift_beginAccess();
  if (a1[4])
  {
    v14 = v5;
    result = sub_1B4D17E2C();
    if (v5)
    {
      return result;
    }
  }

  else
  {
    v14 = v5;
  }

  result = sub_1B4A47244(a1, a2, a3, a4);
  if (!v14)
  {
    sub_1B4A4746C(a1, a2, a3, a4);
    sub_1B4A47694(a1, a2, a3, a4, &OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_InferenceRecordP33_33AB6A1C14BBB03993CB1A3D542982BE13_StorageClass__feedbackID);
    return sub_1B4A47694(a1, a2, a3, a4, &OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_InferenceRecordP33_33AB6A1C14BBB03993CB1A3D542982BE13_StorageClass__osBuildVersion);
  }

  return result;
}

uint64_t sub_1B4A47244(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8748, &qword_1B4D22428);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_InferenceRequest(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_InferenceRecordP33_33AB6A1C14BBB03993CB1A3D542982BE13_StorageClass__request;
  swift_beginAccess();
  sub_1B4974FBC(a1 + v14, v8, &qword_1EB8A8748, &qword_1B4D22428);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1B4975024(v8, &qword_1EB8A8748, &qword_1B4D22428);
  }

  sub_1B4A3CCD0(v8, v13, type metadata accessor for Apple_Fitness_Intelligence_InferenceRequest);
  sub_1B4A5C360(&qword_1EB8A8940, type metadata accessor for Apple_Fitness_Intelligence_InferenceRequest);
  sub_1B4D17E6C();
  return sub_1B4A46828(v13, type metadata accessor for Apple_Fitness_Intelligence_InferenceRequest);
}

uint64_t sub_1B4A4746C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[7] = a4;
  v16[1] = a2;
  v16[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8758, &qword_1B4D22430);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_InferenceResult(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_InferenceRecordP33_33AB6A1C14BBB03993CB1A3D542982BE13_StorageClass__result;
  swift_beginAccess();
  sub_1B4974FBC(a1 + v14, v8, &qword_1EB8A8758, &qword_1B4D22430);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1B4975024(v8, &qword_1EB8A8758, &qword_1B4D22430);
  }

  sub_1B4A3CCD0(v8, v13, type metadata accessor for Apple_Fitness_Intelligence_InferenceResult);
  sub_1B4A5C360(&qword_1EB8A6958, type metadata accessor for Apple_Fitness_Intelligence_InferenceResult);
  sub_1B4D17E6C();
  return sub_1B4A46828(v13, type metadata accessor for Apple_Fitness_Intelligence_InferenceResult);
}

uint64_t sub_1B4A47694(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = (a1 + *a5);
  result = swift_beginAccess();
  if (v5[1])
  {
    v7 = *v5;
    v8 = v5[1];

    sub_1B4D17E3C();
  }

  return result;
}

BOOL sub_1B4A47748(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_InferenceResult(0);
  v80 = *(v4 - 8);
  v81 = v4;
  v5 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v75 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D80, &qword_1B4D25780);
  v7 = *(*(v78 - 8) + 64);
  MEMORY[0x1EEE9AC00](v78);
  v9 = &v74 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8758, &qword_1B4D22430);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v76 = &v74 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v79 = &v74 - v14;
  v15 = type metadata accessor for Apple_Fitness_Intelligence_InferenceRequest(0);
  v84 = *(v15 - 8);
  v16 = *(v84 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v77 = (&v74 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D88, &qword_1B4D25788);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v74 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8748, &qword_1B4D22428);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v83 = &v74 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v74 - v26;
  swift_beginAccess();
  v28 = *(a1 + 16);
  v29 = *(a1 + 24);
  swift_beginAccess();
  if ((v28 != *(a2 + 16) || v29 != *(a2 + 24)) && (sub_1B4D18DCC() & 1) == 0)
  {
    return 0;
  }

  swift_beginAccess();
  v30 = *(a1 + 32);
  swift_beginAccess();
  if (v30 != *(a2 + 32))
  {
    return 0;
  }

  v74 = v9;
  v31 = a1;
  v82 = a2;
  v32 = OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_InferenceRecordP33_33AB6A1C14BBB03993CB1A3D542982BE13_StorageClass__request;
  swift_beginAccess();
  v33 = a1 + v32;
  v34 = v82;
  sub_1B4974FBC(v33, v27, &qword_1EB8A8748, &qword_1B4D22428);
  v35 = OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_InferenceRecordP33_33AB6A1C14BBB03993CB1A3D542982BE13_StorageClass__request;
  swift_beginAccess();
  v36 = *(v18 + 48);
  sub_1B4974FBC(v27, v21, &qword_1EB8A8748, &qword_1B4D22428);
  sub_1B4974FBC(v34 + v35, &v21[v36], &qword_1EB8A8748, &qword_1B4D22428);
  v37 = *(v84 + 48);
  if (v37(v21, 1, v15) == 1)
  {

    sub_1B4975024(v27, &qword_1EB8A8748, &qword_1B4D22428);
    v38 = v31;
    if (v37(&v21[v36], 1, v15) == 1)
    {
      sub_1B4975024(v21, &qword_1EB8A8748, &qword_1B4D22428);
      goto LABEL_13;
    }

LABEL_10:
    sub_1B4975024(v21, &qword_1EB8A8D88, &qword_1B4D25788);
    goto LABEL_19;
  }

  v39 = v83;
  sub_1B4974FBC(v21, v83, &qword_1EB8A8748, &qword_1B4D22428);
  if (v37(&v21[v36], 1, v15) == 1)
  {

    sub_1B4975024(v27, &qword_1EB8A8748, &qword_1B4D22428);
    sub_1B4A46828(v39, type metadata accessor for Apple_Fitness_Intelligence_InferenceRequest);
    goto LABEL_10;
  }

  v40 = v39;
  v41 = v77;
  sub_1B4A3CCD0(&v21[v36], v77, type metadata accessor for Apple_Fitness_Intelligence_InferenceRequest);
  v38 = v31;

  v42 = _s19FitnessIntelligence06Apple_a1_B17_InferenceRequestV2eeoiySbAC_ACtFZ_0(v40, v41);
  sub_1B4A46828(v41, type metadata accessor for Apple_Fitness_Intelligence_InferenceRequest);
  sub_1B4975024(v27, &qword_1EB8A8748, &qword_1B4D22428);
  sub_1B4A46828(v40, type metadata accessor for Apple_Fitness_Intelligence_InferenceRequest);
  sub_1B4975024(v21, &qword_1EB8A8748, &qword_1B4D22428);
  if ((v42 & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_13:
  v43 = v38;
  v44 = OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_InferenceRecordP33_33AB6A1C14BBB03993CB1A3D542982BE13_StorageClass__result;
  swift_beginAccess();
  v45 = v43;
  v46 = v43 + v44;
  v47 = v79;
  sub_1B4974FBC(v46, v79, &qword_1EB8A8758, &qword_1B4D22430);
  v48 = OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_InferenceRecordP33_33AB6A1C14BBB03993CB1A3D542982BE13_StorageClass__result;
  swift_beginAccess();
  v49 = *(v78 + 48);
  v50 = v74;
  sub_1B4974FBC(v47, v74, &qword_1EB8A8758, &qword_1B4D22430);
  sub_1B4974FBC(v34 + v48, v50 + v49, &qword_1EB8A8758, &qword_1B4D22430);
  v51 = v81;
  v52 = *(v80 + 48);
  if (v52(v50, 1, v81) == 1)
  {
    sub_1B4975024(v47, &qword_1EB8A8758, &qword_1B4D22430);
    v53 = v52(v50 + v49, 1, v51);
    v54 = v45;
    if (v53 == 1)
    {
      sub_1B4975024(v50, &qword_1EB8A8758, &qword_1B4D22430);
      goto LABEL_22;
    }

LABEL_18:
    sub_1B4975024(v50, &qword_1EB8A8D80, &qword_1B4D25780);
    goto LABEL_19;
  }

  v55 = v76;
  sub_1B4974FBC(v50, v76, &qword_1EB8A8758, &qword_1B4D22430);
  if (v52(v50 + v49, 1, v51) == 1)
  {
    sub_1B4975024(v47, &qword_1EB8A8758, &qword_1B4D22430);
    sub_1B4A46828(v55, type metadata accessor for Apple_Fitness_Intelligence_InferenceResult);
    goto LABEL_18;
  }

  v57 = v50 + v49;
  v58 = v75;
  sub_1B4A3CCD0(v57, v75, type metadata accessor for Apple_Fitness_Intelligence_InferenceResult);
  v59 = _s19FitnessIntelligence06Apple_a1_B16_InferenceResultV2eeoiySbAC_ACtFZ_0(v55, v58);
  sub_1B4A46828(v58, type metadata accessor for Apple_Fitness_Intelligence_InferenceResult);
  sub_1B4975024(v47, &qword_1EB8A8758, &qword_1B4D22430);
  sub_1B4A46828(v55, type metadata accessor for Apple_Fitness_Intelligence_InferenceResult);
  sub_1B4975024(v50, &qword_1EB8A8758, &qword_1B4D22430);
  v54 = v45;
  if ((v59 & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_22:
  v60 = (v54 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_InferenceRecordP33_33AB6A1C14BBB03993CB1A3D542982BE13_StorageClass__feedbackID);
  swift_beginAccess();
  v61 = *v60;
  v62 = v60[1];
  v63 = (v82 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_InferenceRecordP33_33AB6A1C14BBB03993CB1A3D542982BE13_StorageClass__feedbackID);
  swift_beginAccess();
  v64 = v63[1];
  if (v62)
  {
    if (!v64 || (v61 != *v63 || v62 != v64) && (sub_1B4D18DCC() & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  else if (v64)
  {
    goto LABEL_19;
  }

  v65 = (v54 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_InferenceRecordP33_33AB6A1C14BBB03993CB1A3D542982BE13_StorageClass__osBuildVersion);
  swift_beginAccess();
  v66 = *v65;
  v67 = v65[1];
  v68 = (v82 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_InferenceRecordP33_33AB6A1C14BBB03993CB1A3D542982BE13_StorageClass__osBuildVersion);
  swift_beginAccess();
  v69 = v68[1];
  if (!v67)
  {
    v71 = v68[1];

    if (!v69)
    {
      return 1;
    }

    return 0;
  }

  if (!v69)
  {
LABEL_19:

    return 0;
  }

  if (v66 != *v68 || v67 != v69)
  {
    v72 = v68[1];
    v73 = sub_1B4D18DCC();

    return (v73 & 1) != 0;
  }

  v70 = v68[1];

  return 1;
}

uint64_t sub_1B4A48140@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1B4D17BBC();
  v4 = *(a1 + 20);
  if (qword_1EB8A6038 != -1)
  {
    swift_once();
  }

  *(a2 + v4) = qword_1EB8A8440;
}

uint64_t sub_1B4A48224(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4A5C360(&qword_1EB8A8D30, type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4A482C4(uint64_t a1)
{
  v2 = sub_1B4A5C360(&qword_1EB8A83E0, type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4A48330()
{
  sub_1B4A5C360(&qword_1EB8A83E0, type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4A483CC()
{
  v0 = sub_1B4D17E9C();
  __swift_allocate_value_buffer(v0, qword_1EB8A8448);
  __swift_project_value_buffer(v0, qword_1EB8A8448);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D38, &unk_1B4D29F10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D40, &qword_1B4D25740) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B4D223F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "adapter";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B4D17E7C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "prompt";
  *(v10 + 8) = 6;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "audioSynthesisSettings";
  *(v12 + 1) = 22;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "osBuildVersion";
  *(v14 + 1) = 14;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "telemetryIdentifier";
  *(v16 + 1) = 19;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "requestIdentifier";
  *(v18 + 1) = 17;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "streamAudio";
  *(v20 + 1) = 11;
  v20[16] = 2;
  v9();
  return sub_1B4D17E8C();
}

uint64_t Apple_Fitness_Intelligence_InferenceRequest.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_1B4D17C2C();
    if (v0 || (v3 & 1) != 0)
    {
      return result;
    }

    if (result <= 4)
    {
      switch(result)
      {
        case 1:
          v1 = *(type metadata accessor for Apple_Fitness_Intelligence_InferenceRequest(0) + 20);
          goto LABEL_3;
        case 2:
          v7 = *(type metadata accessor for Apple_Fitness_Intelligence_InferenceRequest(0) + 24);
LABEL_3:
          v0 = 0;
          sub_1B4D17D0C();
          break;
        case 3:
          sub_1B4A48868();
          break;
      }
    }

    else if (result > 6)
    {
      if (result == 7)
      {
        v6 = *(type metadata accessor for Apple_Fitness_Intelligence_InferenceRequest(0) + 40);
        goto LABEL_3;
      }

      if (result == 8)
      {
        v4 = *(type metadata accessor for Apple_Fitness_Intelligence_InferenceRequest(0) + 44);
        sub_1B4D17C4C();
      }
    }

    else
    {
      if (result == 5)
      {
        v5 = *(type metadata accessor for Apple_Fitness_Intelligence_InferenceRequest(0) + 32);
        goto LABEL_3;
      }

      sub_1B4A4891C();
    }
  }
}

uint64_t sub_1B4A48868()
{
  v0 = *(type metadata accessor for Apple_Fitness_Intelligence_InferenceRequest(0) + 28);
  type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisSettings(0);
  sub_1B4A5C360(&qword_1EB8A89D0, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisSettings);
  return sub_1B4D17D4C();
}

uint64_t sub_1B4A4891C()
{
  v0 = *(type metadata accessor for Apple_Fitness_Intelligence_InferenceRequest(0) + 36);
  type metadata accessor for Apple_Fitness_Intelligence_InferenceTelemetryIdentifier(0);
  sub_1B4A5C360(&qword_1EB8A69C0, type metadata accessor for Apple_Fitness_Intelligence_InferenceTelemetryIdentifier);
  return sub_1B4D17D4C();
}

uint64_t Apple_Fitness_Intelligence_InferenceRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B4A498BC(v3, a1, a2, a3, type metadata accessor for Apple_Fitness_Intelligence_InferenceRequest);
  if (!v4)
  {
    sub_1B4A4C32C(v3, a1, a2, a3, type metadata accessor for Apple_Fitness_Intelligence_InferenceRequest);
    sub_1B4A48AF8(v3, a1, a2, a3);
    sub_1B4A49BCC(v3, a1, a2, a3, type metadata accessor for Apple_Fitness_Intelligence_InferenceRequest);
    sub_1B4A48D14(v3, a1, a2, a3);
    sub_1B4A48F30(v3);
    sub_1B4A48FA8(v3);
    return sub_1B4D17BAC();
  }

  return result;
}

uint64_t sub_1B4A48AF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8778, &qword_1B4D22438);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisSettings(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Apple_Fitness_Intelligence_InferenceRequest(0);
  sub_1B4974FBC(a1 + *(v14 + 28), v8, &qword_1EB8A8778, &qword_1B4D22438);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1B4975024(v8, &qword_1EB8A8778, &qword_1B4D22438);
  }

  sub_1B4A3CCD0(v8, v13, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisSettings);
  sub_1B4A5C360(&qword_1EB8A89D0, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisSettings);
  sub_1B4D17E6C();
  return sub_1B4A46828(v13, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisSettings);
}

uint64_t sub_1B4A48D14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8780, &qword_1B4D22440);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_InferenceTelemetryIdentifier(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Apple_Fitness_Intelligence_InferenceRequest(0);
  sub_1B4974FBC(a1 + *(v14 + 36), v8, &qword_1EB8A8780, &qword_1B4D22440);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1B4975024(v8, &qword_1EB8A8780, &qword_1B4D22440);
  }

  sub_1B4A3CCD0(v8, v13, type metadata accessor for Apple_Fitness_Intelligence_InferenceTelemetryIdentifier);
  sub_1B4A5C360(&qword_1EB8A69C0, type metadata accessor for Apple_Fitness_Intelligence_InferenceTelemetryIdentifier);
  sub_1B4D17E6C();
  return sub_1B4A46828(v13, type metadata accessor for Apple_Fitness_Intelligence_InferenceTelemetryIdentifier);
}

uint64_t sub_1B4A48F30(uint64_t a1)
{
  result = type metadata accessor for Apple_Fitness_Intelligence_InferenceRequest(0);
  v3 = (a1 + *(result + 40));
  if (v3[1])
  {
    v4 = *v3;
    return sub_1B4D17E3C();
  }

  return result;
}

uint64_t sub_1B4A48FA8(uint64_t a1)
{
  result = type metadata accessor for Apple_Fitness_Intelligence_InferenceRequest(0);
  if (*(a1 + *(result + 44)) != 2)
  {
    return sub_1B4D17DCC();
  }

  return result;
}

uint64_t sub_1B4A4906C@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1B4D17BBC();
  v4 = a1[6];
  v5 = (a2 + a1[5]);
  *v5 = 0;
  v5[1] = 0;
  v6 = (a2 + v4);
  *v6 = 0;
  v6[1] = 0;
  v7 = a1[7];
  v8 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisSettings(0);
  (*(*(v8 - 8) + 56))(a2 + v7, 1, 1, v8);
  v9 = a1[9];
  v10 = (a2 + a1[8]);
  *v10 = 0;
  v10[1] = 0;
  v11 = type metadata accessor for Apple_Fitness_Intelligence_InferenceTelemetryIdentifier(0);
  result = (*(*(v11 - 8) + 56))(a2 + v9, 1, 1, v11);
  v13 = a1[11];
  v14 = (a2 + a1[10]);
  *v14 = 0;
  v14[1] = 0;
  *(a2 + v13) = 2;
  return result;
}

uint64_t sub_1B4A491A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4A5C360(&qword_1EB8A8D28, type metadata accessor for Apple_Fitness_Intelligence_InferenceRequest);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4A49240(uint64_t a1)
{
  v2 = sub_1B4A5C360(&qword_1EB8A8940, type metadata accessor for Apple_Fitness_Intelligence_InferenceRequest);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4A492AC()
{
  sub_1B4A5C360(&qword_1EB8A8940, type metadata accessor for Apple_Fitness_Intelligence_InferenceRequest);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4A49348()
{
  v0 = sub_1B4D17E9C();
  __swift_allocate_value_buffer(v0, qword_1EB8A8460);
  __swift_project_value_buffer(v0, qword_1EB8A8460);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D38, &unk_1B4D29F10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D40, &qword_1B4D25740) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B4D1CBF0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "utterance";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B4D17E7C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "settings";
  *(v10 + 8) = 8;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "bypassSiriAnnounce";
  *(v12 + 1) = 18;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "requestIdentifier";
  *(v14 + 1) = 17;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "streamAudio";
  *(v15 + 8) = 11;
  *(v15 + 16) = 2;
  v9();
  return sub_1B4D17E8C();
}

uint64_t Apple_Fitness_Intelligence_AnnounceUtteranceRequest.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_1B4D17C2C();
    if (v0 || (v3 & 1) != 0)
    {
      return result;
    }

    if (result <= 2)
    {
      if (result == 1)
      {
        v6 = *(type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceRequest(0) + 20);
LABEL_3:
        v0 = 0;
        sub_1B4D17D0C();
      }

      else if (result == 2)
      {
        sub_1B4A49724();
      }
    }

    else
    {
      switch(result)
      {
        case 3:
          v5 = *(type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceRequest(0) + 28);
LABEL_15:
          v0 = 0;
          sub_1B4D17C4C();
          break;
        case 4:
          v1 = *(type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceRequest(0) + 32);
          goto LABEL_3;
        case 5:
          v4 = *(type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceRequest(0) + 36);
          goto LABEL_15;
      }
    }
  }
}

uint64_t sub_1B4A49724()
{
  v0 = *(type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceRequest(0) + 24);
  type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisSettings(0);
  sub_1B4A5C360(&qword_1EB8A89D0, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisSettings);
  return sub_1B4D17D4C();
}

uint64_t Apple_Fitness_Intelligence_AnnounceUtteranceRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B4A498BC(v3, a1, a2, a3, type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceRequest);
  if (!v4)
  {
    sub_1B4A49938(v3, a1, a2, a3);
    sub_1B4A49B54(v3);
    sub_1B4A49BCC(v3, a1, a2, a3, type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceRequest);
    sub_1B4A49C50(v3);
    return sub_1B4D17BAC();
  }

  return result;
}

uint64_t sub_1B4A498BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v7 = (a1 + *(result + 20));
  if (v7[1])
  {
    v8 = *v7;
    return sub_1B4D17E3C();
  }

  return result;
}

uint64_t sub_1B4A49938(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8778, &qword_1B4D22438);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisSettings(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceRequest(0);
  sub_1B4974FBC(a1 + *(v14 + 24), v8, &qword_1EB8A8778, &qword_1B4D22438);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1B4975024(v8, &qword_1EB8A8778, &qword_1B4D22438);
  }

  sub_1B4A3CCD0(v8, v13, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisSettings);
  sub_1B4A5C360(&qword_1EB8A89D0, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisSettings);
  sub_1B4D17E6C();
  return sub_1B4A46828(v13, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisSettings);
}

uint64_t sub_1B4A49B54(uint64_t a1)
{
  result = type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceRequest(0);
  if (*(a1 + *(result + 28)) != 2)
  {
    return sub_1B4D17DCC();
  }

  return result;
}

uint64_t sub_1B4A49BCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v7 = (a1 + *(result + 32));
  if (v7[1])
  {
    v8 = *v7;
    return sub_1B4D17E3C();
  }

  return result;
}

uint64_t sub_1B4A49C50(uint64_t a1)
{
  result = type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceRequest(0);
  if (*(a1 + *(result + 36)) != 2)
  {
    return sub_1B4D17DCC();
  }

  return result;
}

uint64_t sub_1B4A49D14@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1B4D17BBC();
  v4 = a1[6];
  v5 = (a2 + a1[5]);
  *v5 = 0;
  v5[1] = 0;
  v6 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisSettings(0);
  result = (*(*(v6 - 8) + 56))(a2 + v4, 1, 1, v6);
  v8 = a1[8];
  *(a2 + a1[7]) = 2;
  v9 = (a2 + v8);
  *v9 = 0;
  v9[1] = 0;
  *(a2 + a1[9]) = 2;
  return result;
}

uint64_t sub_1B4A49DF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4A5C360(&qword_1EB8A8D20, type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceRequest);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4A49E98(uint64_t a1)
{
  v2 = sub_1B4A5C360(&qword_1EB8A8958, type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceRequest);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4A49F04()
{
  sub_1B4A5C360(&qword_1EB8A8958, type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceRequest);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4A49FA0()
{
  v0 = sub_1B4D17E9C();
  __swift_allocate_value_buffer(v0, qword_1EB8A8478);
  __swift_project_value_buffer(v0, qword_1EB8A8478);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D38, &unk_1B4D29F10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D40, &qword_1B4D25740) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1B4D223E0;
  v4 = v18 + v3 + v1[14];
  *(v18 + v3) = 1;
  *v4 = "synthesisDuration";
  *(v4 + 8) = 17;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B4D17E7C();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v18 + v3 + v2 + v1[14];
  *(v18 + v3 + v2) = 2;
  *v8 = "announceDuration";
  *(v8 + 8) = 16;
  *(v8 + 16) = 2;
  v7();
  v9 = (v18 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "debugAudioURL";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v7();
  v11 = (v18 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "announceResult";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v7();
  v13 = (v18 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "announceSource";
  *(v14 + 1) = 14;
  v14[16] = 2;
  v7();
  v15 = (v18 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "synthesizedAudioLength";
  *(v16 + 1) = 22;
  v16[16] = 2;
  v7();
  return sub_1B4D17E8C();
}

uint64_t Apple_Fitness_Intelligence_AnnounceUtteranceResult.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_1B4D17C2C();
    if (v0 || (v3 & 1) != 0)
    {
      return result;
    }

    if (result > 3)
    {
      switch(result)
      {
        case 4:
          v6 = *(type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult(0) + 32);
          sub_1B4D17C4C();
          break;
        case 5:
          v8 = *(type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult(0) + 36);
LABEL_18:
          v0 = 0;
          sub_1B4D17D0C();
          break;
        case 6:
          v5 = *(type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult(0) + 40);
          goto LABEL_3;
      }
    }

    else
    {
      switch(result)
      {
        case 1:
          v1 = *(type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult(0) + 20);
          goto LABEL_3;
        case 2:
          v7 = *(type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult(0) + 24);
LABEL_3:
          v0 = 0;
          sub_1B4D17CEC();
          break;
        case 3:
          v4 = *(type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult(0) + 28);
          goto LABEL_18;
      }
    }
  }
}

uint64_t Apple_Fitness_Intelligence_AnnounceUtteranceResult.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B4A4A4E4(v3);
  if (!v4)
  {
    sub_1B4A4CD68(v3, a1, a2, a3, type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult);
    sub_1B4A4CDE4(v3, a1, a2, a3, type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult);
    sub_1B4A4A55C(v3);
    sub_1B4A4CE68(v3, a1, a2, a3, type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult);
    sub_1B4A4A5D4(v3);
    return sub_1B4D17BAC();
  }

  return result;
}

uint64_t sub_1B4A4A4E4(uint64_t a1)
{
  result = type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult(0);
  v3 = (a1 + *(result + 20));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_1B4D17E2C();
  }

  return result;
}

uint64_t sub_1B4A4A55C(uint64_t a1)
{
  result = type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult(0);
  if (*(a1 + *(result + 32)) != 2)
  {
    return sub_1B4D17DCC();
  }

  return result;
}

uint64_t sub_1B4A4A5D4(uint64_t a1)
{
  result = type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult(0);
  v3 = (a1 + *(result + 40));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_1B4D17E2C();
  }

  return result;
}

uint64_t sub_1B4A4A698@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1B4D17BBC();
  v5 = a1[6];
  v6 = a2 + a1[5];
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = a2 + v5;
  *v7 = 0;
  *(v7 + 8) = 1;
  v8 = a1[8];
  v9 = (a2 + a1[7]);
  *v9 = 0;
  v9[1] = 0;
  *(a2 + v8) = 2;
  v10 = a1[10];
  v11 = (a2 + a1[9]);
  *v11 = 0;
  v11[1] = 0;
  v12 = a2 + v10;
  *v12 = 0;
  *(v12 + 8) = 1;
  return result;
}

uint64_t sub_1B4A4A758(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4A5C360(&qword_1EB8A8D18, type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4A4A7F8(uint64_t a1)
{
  v2 = sub_1B4A5C360(&qword_1EB8A6970, type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4A4A864()
{
  sub_1B4A5C360(&qword_1EB8A6970, type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4A4A900()
{
  v0 = sub_1B4D17E9C();
  __swift_allocate_value_buffer(v0, qword_1EB8A8490);
  __swift_project_value_buffer(v0, qword_1EB8A8490);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D38, &unk_1B4D29F10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D40, &qword_1B4D25740) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B4D1B2D0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "voice";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B4D17E7C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "userSelected";
  *(v10 + 8) = 12;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "downloadStatus";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "downloadProgress";
  *(v14 + 1) = 16;
  v14[16] = 2;
  v9();
  return sub_1B4D17E8C();
}

uint64_t Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset.decodeMessage<A>(decoder:)()
{
  result = sub_1B4D17C2C();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result > 2)
      {
        if (result == 3)
        {
          sub_1B4A5C3A8();
          sub_1B4D17C6C();
        }

        else if (result == 4)
        {
          sub_1B4A4AD2C();
        }
      }

      else if (result == 1)
      {
        sub_1B4A4AC78();
      }

      else if (result == 2)
      {
        sub_1B4D17C5C();
      }

      result = sub_1B4D17C2C();
    }
  }

  return result;
}

uint64_t sub_1B4A4AC78()
{
  v0 = *(type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset(0) + 28);
  type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice(0);
  sub_1B4A5C360(qword_1EDC3C320, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice);
  return sub_1B4D17D4C();
}

uint64_t sub_1B4A4AD2C()
{
  v0 = *(type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset(0) + 32);
  type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset.DownloadProgress(0);
  sub_1B4A5C360(&qword_1EB8A8980, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset.DownloadProgress);
  return sub_1B4D17D4C();
}

uint64_t Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B4A4AEF0(v3, a1, a2, a3);
  if (!v4)
  {
    if (*v3 == 1)
    {
      sub_1B4D17DCC();
    }

    if (*(v3 + 8))
    {
      v10 = *(v3 + 8);
      v11 = *(v3 + 16);
      sub_1B4A5C3A8();
      sub_1B4D17DDC();
    }

    sub_1B4A4B10C(v3, a1, a2, a3);
    v9 = v3 + *(type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset(0) + 24);
    return sub_1B4D17BAC();
  }

  return result;
}

uint64_t sub_1B4A4AEF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6938, &qword_1B4D1ACF8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset(0);
  sub_1B4974FBC(a1 + *(v14 + 28), v8, &qword_1EB8A6938, &qword_1B4D1ACF8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1B4975024(v8, &qword_1EB8A6938, &qword_1B4D1ACF8);
  }

  sub_1B4A3CCD0(v8, v13, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice);
  sub_1B4A5C360(qword_1EDC3C320, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice);
  sub_1B4D17E6C();
  return sub_1B4A46828(v13, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice);
}

uint64_t sub_1B4A4B10C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8788, &qword_1B4D22448);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset.DownloadProgress(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset(0);
  sub_1B4974FBC(a1 + *(v14 + 32), v8, &qword_1EB8A8788, &qword_1B4D22448);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1B4975024(v8, &qword_1EB8A8788, &qword_1B4D22448);
  }

  sub_1B4A3CCD0(v8, v13, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset.DownloadProgress);
  sub_1B4A5C360(&qword_1EB8A8980, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset.DownloadProgress);
  sub_1B4D17E6C();
  return sub_1B4A46828(v13, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset.DownloadProgress);
}

uint64_t sub_1B4A4B374@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = a2 + a1[6];
  sub_1B4D17BBC();
  v5 = a1[7];
  v6 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice(0);
  (*(*(v6 - 8) + 56))(a2 + v5, 1, 1, v6);
  v7 = a1[8];
  v8 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset.DownloadProgress(0);
  v9 = *(*(v8 - 8) + 56);

  return v9(a2 + v7, 1, 1, v8);
}

uint64_t (*sub_1B4A4B46C(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 24);
  return result;
}

uint64_t sub_1B4A4B4C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4A5C360(&qword_1EB8A8D10, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4A4B560(uint64_t a1)
{
  v2 = sub_1B4A5C360(qword_1EDC3B640, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4A4B5CC()
{
  sub_1B4A5C360(qword_1EDC3B640, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4A4B64C()
{
  v0 = sub_1B4D17E9C();
  __swift_allocate_value_buffer(v0, qword_1EB8A84A8);
  __swift_project_value_buffer(v0, qword_1EB8A84A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D38, &unk_1B4D29F10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D40, &qword_1B4D25740) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B4D1BE00;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "UNAVAILABLE";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B4D17E7C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "DOWNLOADING";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "DOWNLOADED";
  *(v11 + 8) = 10;
  *(v11 + 16) = 2;
  v9();
  return sub_1B4D17E8C();
}

uint64_t sub_1B4A4B8A4()
{
  result = MEMORY[0x1B8C7C620](0xD000000000000011, 0x80000001B4D60440);
  qword_1EB8A84C0 = 0xD000000000000033;
  *algn_1EB8A84C8 = 0x80000001B4D5FBD0;
  return result;
}

uint64_t sub_1B4A4B944()
{
  v0 = sub_1B4D17E9C();
  __swift_allocate_value_buffer(v0, qword_1EB8A84D0);
  __swift_project_value_buffer(v0, qword_1EB8A84D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D38, &unk_1B4D29F10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D40, &qword_1B4D25740) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B4D1AA70;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "bytesWriten";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B4D17E7C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "bytesExpected";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v9();
  return sub_1B4D17E8C();
}

uint64_t Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset.DownloadProgress.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_1B4D17C2C();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1 || result == 2)
    {
      sub_1B4D17CCC();
    }
  }

  return result;
}

uint64_t Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset.DownloadProgress.traverse<A>(visitor:)()
{
  if (!*v0 || (result = sub_1B4D17E0C(), !v1))
  {
    if (!v0[1] || (result = sub_1B4D17E0C(), !v1))
    {
      v3 = v0 + *(type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset.DownloadProgress(0) + 24);
      return sub_1B4D17BAC();
    }
  }

  return result;
}

uint64_t static Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset.DownloadProgress.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  v2 = *(type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset.DownloadProgress(0) + 24);
  sub_1B4D17BCC();
  sub_1B4A5C360(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
  return sub_1B4D1816C() & 1;
}

uint64_t sub_1B4A4BDAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4A5C360(&qword_1EB8A8D08, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset.DownloadProgress);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4A4BE4C(uint64_t a1)
{
  v2 = sub_1B4A5C360(&qword_1EB8A8980, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset.DownloadProgress);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4A4BEB8()
{
  sub_1B4A5C360(&qword_1EB8A8980, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset.DownloadProgress);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4A4BF34(void *a1, void *a2, uint64_t a3)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  v3 = *(a3 + 24);
  sub_1B4D17BCC();
  sub_1B4A5C360(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
  return sub_1B4D1816C() & 1;
}

uint64_t sub_1B4A4C000()
{
  v0 = sub_1B4D17E9C();
  __swift_allocate_value_buffer(v0, qword_1EB8A84E8);
  __swift_project_value_buffer(v0, qword_1EB8A84E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D38, &unk_1B4D29F10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D40, &qword_1B4D25740) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B4D1AA70;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "name";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B4D17E7C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "language";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  return sub_1B4D17E8C();
}

uint64_t Apple_Fitness_Intelligence_AudioSynthesisVoice.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_1B4D17C2C();
    if (v0 || (v3 & 1) != 0)
    {
      return result;
    }

    if (result == 1)
    {
      v1 = *(type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice(0) + 20);
      goto LABEL_3;
    }

    if (result == 2)
    {
      v4 = *(type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice(0) + 24);
LABEL_3:
      v0 = 0;
      sub_1B4D17D0C();
    }
  }
}

uint64_t Apple_Fitness_Intelligence_AudioSynthesisVoice.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B4A498BC(v3, a1, a2, a3, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice);
  if (!v4)
  {
    sub_1B4A4C32C(v3, a1, a2, a3, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice);
    return sub_1B4D17BAC();
  }

  return result;
}

uint64_t sub_1B4A4C32C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v7 = (a1 + *(result + 24));
  if (v7[1])
  {
    v8 = *v7;
    return sub_1B4D17E3C();
  }

  return result;
}

uint64_t sub_1B4A4C3F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1B4D17BBC();
  v5 = *(a1 + 24);
  v6 = (a2 + *(a1 + 20));
  *v6 = 0;
  v6[1] = 0;
  v7 = (a2 + v5);
  *v7 = 0;
  v7[1] = 0;
  return result;
}

uint64_t sub_1B4A4C47C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4A5C360(&qword_1EB8A8D00, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4A4C51C(uint64_t a1)
{
  v2 = sub_1B4A5C360(qword_1EDC3C320, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4A4C588()
{
  sub_1B4A5C360(qword_1EDC3C320, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4A4C624()
{
  v0 = sub_1B4D17E9C();
  __swift_allocate_value_buffer(v0, qword_1EB8A8500);
  __swift_project_value_buffer(v0, qword_1EB8A8500);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D38, &unk_1B4D29F10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D40, &qword_1B4D25740) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1B4D223F0;
  v4 = v20 + v3 + v1[14];
  *(v20 + v3) = 1;
  *v4 = "text";
  *(v4 + 8) = 4;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B4D17E7C();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v20 + v3 + v2 + v1[14];
  *(v20 + v3 + v2) = 2;
  *v8 = "duration";
  *(v8 + 8) = 8;
  *(v8 + 16) = 2;
  v7();
  v9 = (v20 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "debugAudioURL";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v7();
  v11 = (v20 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "systemVersion";
  *(v12 + 1) = 13;
  v12[16] = 2;
  v7();
  v13 = (v20 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "modelVersion";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v7();
  v15 = (v20 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "AnnounceUtteranceResult";
  *(v16 + 1) = 23;
  v16[16] = 2;
  v7();
  v17 = (v20 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "voice";
  *(v18 + 1) = 5;
  v18[16] = 2;
  v7();
  return sub_1B4D17E8C();
}

uint64_t Apple_Fitness_Intelligence_InferenceResult.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_1B4D17C2C();
    if (v0 || (v3 & 1) != 0)
    {
      return result;
    }

    if (result <= 3)
    {
      switch(result)
      {
        case 1:
          v1 = *(type metadata accessor for Apple_Fitness_Intelligence_InferenceResult(0) + 20);
          goto LABEL_3;
        case 2:
          v7 = *(type metadata accessor for Apple_Fitness_Intelligence_InferenceResult(0) + 24);
          sub_1B4D17CEC();
          break;
        case 3:
          v5 = *(type metadata accessor for Apple_Fitness_Intelligence_InferenceResult(0) + 28);
          goto LABEL_3;
      }
    }

    else if (result > 5)
    {
      if (result == 6)
      {
        sub_1B4A4CAAC();
      }

      else if (result == 7)
      {
        sub_1B4A4CB60();
      }
    }

    else
    {
      if (result == 4)
      {
        v6 = *(type metadata accessor for Apple_Fitness_Intelligence_InferenceResult(0) + 32);
      }

      else
      {
        v4 = *(type metadata accessor for Apple_Fitness_Intelligence_InferenceResult(0) + 36);
      }

LABEL_3:
      v0 = 0;
      sub_1B4D17D0C();
    }
  }
}

uint64_t sub_1B4A4CAAC()
{
  v0 = *(type metadata accessor for Apple_Fitness_Intelligence_InferenceResult(0) + 40);
  type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult(0);
  sub_1B4A5C360(&qword_1EB8A6970, type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult);
  return sub_1B4D17D4C();
}

uint64_t sub_1B4A4CB60()
{
  v0 = *(type metadata accessor for Apple_Fitness_Intelligence_InferenceResult(0) + 44);
  type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice(0);
  sub_1B4A5C360(qword_1EDC3C320, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice);
  return sub_1B4D17D4C();
}

uint64_t Apple_Fitness_Intelligence_InferenceResult.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B4A498BC(v3, a1, a2, a3, type metadata accessor for Apple_Fitness_Intelligence_InferenceResult);
  if (!v4)
  {
    sub_1B4A4CD68(v3, a1, a2, a3, type metadata accessor for Apple_Fitness_Intelligence_InferenceResult);
    sub_1B4A4CDE4(v3, a1, a2, a3, type metadata accessor for Apple_Fitness_Intelligence_InferenceResult);
    sub_1B4A49BCC(v3, a1, a2, a3, type metadata accessor for Apple_Fitness_Intelligence_InferenceResult);
    sub_1B4A4CE68(v3, a1, a2, a3, type metadata accessor for Apple_Fitness_Intelligence_InferenceResult);
    sub_1B4A4CEE4(v3, a1, a2, a3);
    sub_1B4A4D100(v3, a1, a2, a3);
    return sub_1B4D17BAC();
  }

  return result;
}

uint64_t sub_1B4A4CD68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v7 = (a1 + *(result + 24));
  if ((v7[1] & 1) == 0)
  {
    v8 = *v7;
    return sub_1B4D17E2C();
  }

  return result;
}

uint64_t sub_1B4A4CDE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v7 = (a1 + *(result + 28));
  if (v7[1])
  {
    v8 = *v7;
    return sub_1B4D17E3C();
  }

  return result;
}

uint64_t sub_1B4A4CE68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v7 = (a1 + *(result + 36));
  if (v7[1])
  {
    v8 = *v7;
    return sub_1B4D17E3C();
  }

  return result;
}

uint64_t sub_1B4A4CEE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6940, &unk_1B4D22400);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Apple_Fitness_Intelligence_InferenceResult(0);
  sub_1B4974FBC(a1 + *(v14 + 40), v8, &qword_1EB8A6940, &unk_1B4D22400);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1B4975024(v8, &qword_1EB8A6940, &unk_1B4D22400);
  }

  sub_1B4A3CCD0(v8, v13, type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult);
  sub_1B4A5C360(&qword_1EB8A6970, type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult);
  sub_1B4D17E6C();
  return sub_1B4A46828(v13, type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult);
}

uint64_t sub_1B4A4D100(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6938, &qword_1B4D1ACF8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Apple_Fitness_Intelligence_InferenceResult(0);
  sub_1B4974FBC(a1 + *(v14 + 44), v8, &qword_1EB8A6938, &qword_1B4D1ACF8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1B4975024(v8, &qword_1EB8A6938, &qword_1B4D1ACF8);
  }

  sub_1B4A3CCD0(v8, v13, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice);
  sub_1B4A5C360(qword_1EDC3C320, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice);
  sub_1B4D17E6C();
  return sub_1B4A46828(v13, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice);
}

uint64_t sub_1B4A4D368@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1B4D17BBC();
  v4 = a1[6];
  v5 = (a2 + a1[5]);
  *v5 = 0;
  v5[1] = 0;
  v6 = a2 + v4;
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = a1[8];
  v8 = (a2 + a1[7]);
  *v8 = 0;
  v8[1] = 0;
  v9 = (a2 + v7);
  *v9 = 0;
  v9[1] = 0;
  v10 = a1[10];
  v11 = (a2 + a1[9]);
  *v11 = 0;
  v11[1] = 0;
  v12 = type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult(0);
  (*(*(v12 - 8) + 56))(a2 + v10, 1, 1, v12);
  v13 = a1[11];
  v14 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice(0);
  v15 = *(*(v14 - 8) + 56);

  return v15(a2 + v13, 1, 1, v14);
}

uint64_t sub_1B4A4D4B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4A5C360(&qword_1EB8A8CF8, type metadata accessor for Apple_Fitness_Intelligence_InferenceResult);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4A4D550(uint64_t a1)
{
  v2 = sub_1B4A5C360(&qword_1EB8A6958, type metadata accessor for Apple_Fitness_Intelligence_InferenceResult);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4A4D5BC()
{
  sub_1B4A5C360(&qword_1EB8A6958, type metadata accessor for Apple_Fitness_Intelligence_InferenceResult);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4A4D658()
{
  v0 = sub_1B4D17E9C();
  __swift_allocate_value_buffer(v0, qword_1EB8A8518);
  __swift_project_value_buffer(v0, qword_1EB8A8518);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D38, &unk_1B4D29F10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D40, &qword_1B4D25740) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B4D1B2D0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "record";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B4D17E7C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "sentiment";
  *(v10 + 8) = 9;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "userDescription";
  *(v12 + 1) = 15;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "utteranceResult";
  *(v14 + 1) = 15;
  v14[16] = 2;
  v9();
  return sub_1B4D17E8C();
}

uint64_t Apple_Fitness_Intelligence_InferenceFeedback.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_1B4D17C2C();
    if (v0 || (v3 & 1) != 0)
    {
      break;
    }

    if (result > 2)
    {
      if (result == 3)
      {
        v1 = *(type metadata accessor for Apple_Fitness_Intelligence_InferenceFeedback(0) + 28);
        sub_1B4D17D0C();
      }

      else if (result == 4)
      {
        sub_1B4A4DA78();
      }
    }

    else if (result == 1)
    {
      sub_1B4A4D9C4();
    }

    else if (result == 2)
    {
      sub_1B4D17D1C();
    }
  }

  return result;
}

uint64_t sub_1B4A4D9C4()
{
  v0 = *(type metadata accessor for Apple_Fitness_Intelligence_InferenceFeedback(0) + 24);
  type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord(0);
  sub_1B4A5C360(&qword_1EB8A83E0, type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord);
  return sub_1B4D17D4C();
}

uint64_t sub_1B4A4DA78()
{
  v0 = *(type metadata accessor for Apple_Fitness_Intelligence_InferenceFeedback(0) + 32);
  type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult(0);
  sub_1B4A5C360(&qword_1EB8A6970, type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult);
  return sub_1B4D17D4C();
}

uint64_t Apple_Fitness_Intelligence_InferenceFeedback.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B4A4DC24(v3, a1, a2, a3);
  if (!v4)
  {
    v9 = *v3;
    v10 = v3[1];
    v11 = HIBYTE(v10) & 0xF;
    if ((v10 & 0x2000000000000000) == 0)
    {
      v11 = *v3 & 0xFFFFFFFFFFFFLL;
    }

    if (v11)
    {
      sub_1B4D17E3C();
    }

    sub_1B4A4CDE4(v3, a1, a2, a3, type metadata accessor for Apple_Fitness_Intelligence_InferenceFeedback);
    sub_1B4A4DE40(v3, a1, a2, a3);
    v12 = v3 + *(type metadata accessor for Apple_Fitness_Intelligence_InferenceFeedback(0) + 20);
    return sub_1B4D17BAC();
  }

  return result;
}

uint64_t sub_1B4A4DC24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A83B8, &qword_1B4D22420);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Apple_Fitness_Intelligence_InferenceFeedback(0);
  sub_1B4974FBC(a1 + *(v14 + 24), v8, &qword_1EB8A83B8, &qword_1B4D22420);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1B4975024(v8, &qword_1EB8A83B8, &qword_1B4D22420);
  }

  sub_1B4A3CCD0(v8, v13, type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord);
  sub_1B4A5C360(&qword_1EB8A83E0, type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord);
  sub_1B4D17E6C();
  return sub_1B4A46828(v13, type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord);
}

uint64_t sub_1B4A4DE40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6940, &unk_1B4D22400);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Apple_Fitness_Intelligence_InferenceFeedback(0);
  sub_1B4974FBC(a1 + *(v14 + 32), v8, &qword_1EB8A6940, &unk_1B4D22400);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1B4975024(v8, &qword_1EB8A6940, &unk_1B4D22400);
  }

  sub_1B4A3CCD0(v8, v13, type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult);
  sub_1B4A5C360(&qword_1EB8A6970, type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult);
  sub_1B4D17E6C();
  return sub_1B4A46828(v13, type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult);
}

uint64_t sub_1B4A4E0A8@<X0>(int *a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  v4 = &a2[a1[5]];
  sub_1B4D17BBC();
  v5 = a1[6];
  v6 = type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord(0);
  (*(*(v6 - 8) + 56))(&a2[v5], 1, 1, v6);
  v7 = a1[7];
  v8 = a1[8];
  v9 = &a2[v7];
  *v9 = 0;
  *(v9 + 1) = 0;
  v10 = type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult(0);
  v11 = *(*(v10 - 8) + 56);

  return v11(&a2[v8], 1, 1, v10);
}

uint64_t (*sub_1B4A4E1A0(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 20);
  return result;
}

uint64_t sub_1B4A4E1F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4A5C360(&qword_1EB8A8CF0, type metadata accessor for Apple_Fitness_Intelligence_InferenceFeedback);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4A4E294(uint64_t a1)
{
  v2 = sub_1B4A5C360(&qword_1EB8A83C8, type metadata accessor for Apple_Fitness_Intelligence_InferenceFeedback);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4A4E300()
{
  sub_1B4A5C360(&qword_1EB8A83C8, type metadata accessor for Apple_Fitness_Intelligence_InferenceFeedback);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4A4E39C()
{
  v0 = sub_1B4D17E9C();
  __swift_allocate_value_buffer(v0, qword_1EB8A8530);
  __swift_project_value_buffer(v0, qword_1EB8A8530);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D38, &unk_1B4D29F10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D40, &qword_1B4D25740) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B4D1AA70;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "value";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B4D17E7C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "reason";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_1B4D17E8C();
}

uint64_t Apple_Fitness_Intelligence_InferenceAvailability.decodeMessage<A>(decoder:)()
{
  result = sub_1B4D17C2C();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        sub_1B4A5C3FC();
        sub_1B4D17C6C();
      }

      else if (result == 2)
      {
        v3 = *(type metadata accessor for Apple_Fitness_Intelligence_InferenceAvailability(0) + 24);
        sub_1B4D17D0C();
      }

      result = sub_1B4D17C2C();
    }
  }

  return result;
}

uint64_t Apple_Fitness_Intelligence_InferenceAvailability.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (v10 = *v3, v11 = *(v3 + 8), sub_1B4A5C3FC(), result = sub_1B4D17DDC(), !v4))
  {
    result = sub_1B4A4C32C(v3, a1, a2, a3, type metadata accessor for Apple_Fitness_Intelligence_InferenceAvailability);
    if (!v4)
    {
      v9 = v3 + *(type metadata accessor for Apple_Fitness_Intelligence_InferenceAvailability(0) + 20);
      return sub_1B4D17BAC();
    }
  }

  return result;
}

uint64_t sub_1B4A4E784@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  v4 = a2 + *(a1 + 20);
  result = sub_1B4D17BBC();
  v6 = (a2 + *(a1 + 24));
  *v6 = 0;
  v6[1] = 0;
  return result;
}

uint64_t sub_1B4A4E818(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4A5C360(&qword_1EB8A8CE8, type metadata accessor for Apple_Fitness_Intelligence_InferenceAvailability);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4A4E8B8(uint64_t a1)
{
  v2 = sub_1B4A5C360(qword_1EDC3BD10, type metadata accessor for Apple_Fitness_Intelligence_InferenceAvailability);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4A4E924()
{
  sub_1B4A5C360(qword_1EDC3BD10, type metadata accessor for Apple_Fitness_Intelligence_InferenceAvailability);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4A4E9A4()
{
  v0 = sub_1B4D17E9C();
  __swift_allocate_value_buffer(v0, qword_1EB8A8548);
  __swift_project_value_buffer(v0, qword_1EB8A8548);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D38, &unk_1B4D29F10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D40, &qword_1B4D25740) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B4D1AA70;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "AVAILABLE";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B4D17E7C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "UNAVAILABLE";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  return sub_1B4D17E8C();
}

uint64_t sub_1B4A4EBD0()
{
  v0 = sub_1B4D17E9C();
  __swift_allocate_value_buffer(v0, qword_1EB8A8560);
  __swift_project_value_buffer(v0, qword_1EB8A8560);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D38, &unk_1B4D29F10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D40, &qword_1B4D25740) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B4D1AA70;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "value";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B4D17E7C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "voice";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_1B4D17E8C();
}

uint64_t Apple_Fitness_Intelligence_AudioSynthesisVoiceSelection.decodeMessage<A>(decoder:)()
{
  result = sub_1B4D17C2C();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        sub_1B4A5C450();
        sub_1B4D17C6C();
      }

      else if (result == 2)
      {
        sub_1B4A4EE7C();
      }

      result = sub_1B4D17C2C();
    }
  }

  return result;
}

uint64_t sub_1B4A4EE7C()
{
  v0 = *(type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceSelection(0) + 24);
  type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice(0);
  sub_1B4A5C360(qword_1EDC3C320, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice);
  return sub_1B4D17D4C();
}

uint64_t Apple_Fitness_Intelligence_AudioSynthesisVoiceSelection.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (v10 = *v3, v11 = *(v3 + 8), sub_1B4A5C450(), result = sub_1B4D17DDC(), !v4))
  {
    result = sub_1B4A4EFFC(v3, a1, a2, a3);
    if (!v4)
    {
      v9 = v3 + *(type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceSelection(0) + 20);
      return sub_1B4D17BAC();
    }
  }

  return result;
}

uint64_t sub_1B4A4EFFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6938, &qword_1B4D1ACF8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceSelection(0);
  sub_1B4974FBC(a1 + *(v14 + 24), v8, &qword_1EB8A6938, &qword_1B4D1ACF8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1B4975024(v8, &qword_1EB8A6938, &qword_1B4D1ACF8);
  }

  sub_1B4A3CCD0(v8, v13, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice);
  sub_1B4A5C360(qword_1EDC3C320, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice);
  sub_1B4D17E6C();
  return sub_1B4A46828(v13, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice);
}

uint64_t sub_1B4A4F264@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  v4 = a2 + *(a1 + 20);
  sub_1B4D17BBC();
  v5 = *(a1 + 24);
  v6 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a2 + v5, 1, 1, v6);
}

uint64_t sub_1B4A4F33C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4A5C360(&qword_1EB8A8CE0, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceSelection);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4A4F3DC(uint64_t a1)
{
  v2 = sub_1B4A5C360(&qword_1EB8A89B8, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceSelection);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4A4F448()
{
  sub_1B4A5C360(&qword_1EB8A89B8, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceSelection);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4A4F4C8()
{
  v0 = sub_1B4D17E9C();
  __swift_allocate_value_buffer(v0, qword_1EB8A8578);
  __swift_project_value_buffer(v0, qword_1EB8A8578);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D38, &unk_1B4D29F10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D40, &qword_1B4D25740) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B4D1AA70;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "USER_SELECTED";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B4D17E7C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "CUSTOM";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_1B4D17E8C();
}

uint64_t sub_1B4A4F6F4()
{
  v0 = sub_1B4D17E9C();
  __swift_allocate_value_buffer(v0, qword_1EB8A8590);
  __swift_project_value_buffer(v0, qword_1EB8A8590);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D38, &unk_1B4D29F10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D40, &qword_1B4D25740) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B4D1AA70;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "voiceSelection";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B4D17E7C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "intensity";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  return sub_1B4D17E8C();
}

uint64_t Apple_Fitness_Intelligence_AudioSynthesisSettings.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_1B4D17C2C();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1B4A4F970();
    }

    else if (result == 2)
    {
      sub_1B4D17CAC();
    }
  }

  return result;
}

uint64_t sub_1B4A4F970()
{
  v0 = *(type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisSettings(0) + 24);
  type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceSelection(0);
  sub_1B4A5C360(&qword_1EB8A89B8, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceSelection);
  return sub_1B4D17D4C();
}

uint64_t Apple_Fitness_Intelligence_AudioSynthesisSettings.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B4A4FAC0(v3, a1, a2, a3);
  if (!v4)
  {
    if (*v3)
    {
      sub_1B4D17DFC();
    }

    v6 = v3 + *(type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisSettings(0) + 20);
    return sub_1B4D17BAC();
  }

  return result;
}

uint64_t sub_1B4A4FAC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8790, &qword_1B4D22450);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceSelection(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisSettings(0);
  sub_1B4974FBC(a1 + *(v14 + 24), v8, &qword_1EB8A8790, &qword_1B4D22450);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1B4975024(v8, &qword_1EB8A8790, &qword_1B4D22450);
  }

  sub_1B4A3CCD0(v8, v13, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceSelection);
  sub_1B4A5C360(&qword_1EB8A89B8, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceSelection);
  sub_1B4D17E6C();
  return sub_1B4A46828(v13, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceSelection);
}

uint64_t sub_1B4A4FD28@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  v4 = &a2[*(a1 + 20)];
  sub_1B4D17BBC();
  v5 = *(a1 + 24);
  v6 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceSelection(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(&a2[v5], 1, 1, v6);
}

uint64_t sub_1B4A4FDF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4A5C360(&qword_1EB8A8CD8, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisSettings);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4A4FE98(uint64_t a1)
{
  v2 = sub_1B4A5C360(&qword_1EB8A89D0, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisSettings);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4A4FF04()
{
  sub_1B4A5C360(&qword_1EB8A89D0, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisSettings);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4A4FFA0()
{
  v0 = sub_1B4D17E9C();
  __swift_allocate_value_buffer(v0, qword_1EB8A85A8);
  __swift_project_value_buffer(v0, qword_1EB8A85A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D38, &unk_1B4D29F10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D40, &qword_1B4D25740) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B4D1BE00;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "featureIdentifier";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B4D17E7C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "deviceIdentifier";
  *(v10 + 1) = 16;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "momentIdentifier";
  *(v11 + 8) = 16;
  *(v11 + 16) = 2;
  v9();
  return sub_1B4D17E8C();
}

uint64_t Apple_Fitness_Intelligence_InferenceTelemetryIdentifier.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_1B4D17C2C();
    if (v0 || (v3 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 3:
        goto LABEL_8;
      case 2:
        v1 = *(type metadata accessor for Apple_Fitness_Intelligence_InferenceTelemetryIdentifier(0) + 28);
        sub_1B4D17D0C();
        break;
      case 1:
LABEL_8:
        sub_1B4D17D1C();
        break;
    }
  }
}

uint64_t Apple_Fitness_Intelligence_InferenceTelemetryIdentifier.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = v3[1];
  v10 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v10 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v10 || (result = sub_1B4D17E3C(), !v4))
  {
    result = sub_1B4A4CDE4(v3, a1, a2, a3, type metadata accessor for Apple_Fitness_Intelligence_InferenceTelemetryIdentifier);
    if (!v4)
    {
      v12 = v3[3];
      v13 = HIBYTE(v12) & 0xF;
      if ((v12 & 0x2000000000000000) == 0)
      {
        v13 = v3[2] & 0xFFFFFFFFFFFFLL;
      }

      if (v13)
      {
        sub_1B4D17E3C();
      }

      v14 = v3 + *(type metadata accessor for Apple_Fitness_Intelligence_InferenceTelemetryIdentifier(0) + 24);
      return sub_1B4D17BAC();
    }
  }

  return result;
}

uint64_t sub_1B4A503CC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  a2[2] = 0;
  a2[3] = 0xE000000000000000;
  v4 = a2 + *(a1 + 24);
  result = sub_1B4D17BBC();
  v6 = (a2 + *(a1 + 28));
  *v6 = 0;
  v6[1] = 0;
  return result;
}

uint64_t sub_1B4A50460(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4A5C360(&qword_1EB8A8CD0, type metadata accessor for Apple_Fitness_Intelligence_InferenceTelemetryIdentifier);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4A50500(uint64_t a1)
{
  v2 = sub_1B4A5C360(&qword_1EB8A69C0, type metadata accessor for Apple_Fitness_Intelligence_InferenceTelemetryIdentifier);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4A5056C()
{
  sub_1B4A5C360(&qword_1EB8A69C0, type metadata accessor for Apple_Fitness_Intelligence_InferenceTelemetryIdentifier);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4A50608()
{
  v0 = sub_1B4D17E9C();
  __swift_allocate_value_buffer(v0, qword_1EB8A85C0);
  __swift_project_value_buffer(v0, qword_1EB8A85C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D38, &unk_1B4D29F10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D40, &qword_1B4D25740) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B4D1B2D0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "generativeModels";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B4D17E7C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "siri";
  *(v10 + 8) = 4;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "selectedVoiceAsset";
  *(v12 + 1) = 18;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "locale";
  *(v14 + 1) = 6;
  v14[16] = 2;
  v9();
  return sub_1B4D17E8C();
}

uint64_t Apple_Fitness_Intelligence_DeviceInferenceAvailability.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_1B4D17C2C();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result > 2)
    {
      if (result == 3)
      {
        sub_1B4A50AC0();
      }

      else if (result == 4)
      {
        sub_1B4A50B74();
      }
    }

    else if (result == 1)
    {
      sub_1B4A50958();
    }

    else if (result == 2)
    {
      sub_1B4A50A0C();
    }
  }

  return result;
}

uint64_t sub_1B4A50958()
{
  v0 = *(type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability(0) + 20);
  type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability(0);
  sub_1B4A5C360(&qword_1EDC3B2B8, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability);
  return sub_1B4D17D4C();
}

uint64_t sub_1B4A50A0C()
{
  v0 = *(type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability(0) + 24);
  type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability(0);
  sub_1B4A5C360(&qword_1EDC3B2B8, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability);
  return sub_1B4D17D4C();
}

uint64_t sub_1B4A50AC0()
{
  v0 = *(type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability(0) + 28);
  type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability(0);
  sub_1B4A5C360(&qword_1EDC3B2B8, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability);
  return sub_1B4D17D4C();
}

uint64_t sub_1B4A50B74()
{
  v0 = *(type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability(0) + 32);
  type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability(0);
  sub_1B4A5C360(&qword_1EDC3B2B8, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability);
  return sub_1B4D17D4C();
}

uint64_t Apple_Fitness_Intelligence_DeviceInferenceAvailability.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B4A50CC8(v3, a1, a2, a3);
  if (!v4)
  {
    sub_1B4A50EE4(v3, a1, a2, a3);
    sub_1B4A51100(v3, a1, a2, a3);
    sub_1B4A5131C(v3, a1, a2, a3);
    return sub_1B4D17BAC();
  }

  return result;
}

uint64_t sub_1B4A50CC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8798, &qword_1B4D22458);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability(0);
  sub_1B4974FBC(a1 + *(v14 + 20), v8, &qword_1EB8A8798, &qword_1B4D22458);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1B4975024(v8, &qword_1EB8A8798, &qword_1B4D22458);
  }

  sub_1B4A3CCD0(v8, v13, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability);
  sub_1B4A5C360(&qword_1EDC3B2B8, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability);
  sub_1B4D17E6C();
  return sub_1B4A46828(v13, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability);
}

uint64_t sub_1B4A50EE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8798, &qword_1B4D22458);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability(0);
  sub_1B4974FBC(a1 + *(v14 + 24), v8, &qword_1EB8A8798, &qword_1B4D22458);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1B4975024(v8, &qword_1EB8A8798, &qword_1B4D22458);
  }

  sub_1B4A3CCD0(v8, v13, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability);
  sub_1B4A5C360(&qword_1EDC3B2B8, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability);
  sub_1B4D17E6C();
  return sub_1B4A46828(v13, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability);
}

uint64_t sub_1B4A51100(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8798, &qword_1B4D22458);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability(0);
  sub_1B4974FBC(a1 + *(v14 + 28), v8, &qword_1EB8A8798, &qword_1B4D22458);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1B4975024(v8, &qword_1EB8A8798, &qword_1B4D22458);
  }

  sub_1B4A3CCD0(v8, v13, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability);
  sub_1B4A5C360(&qword_1EDC3B2B8, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability);
  sub_1B4D17E6C();
  return sub_1B4A46828(v13, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability);
}

uint64_t sub_1B4A5131C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8798, &qword_1B4D22458);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability(0);
  sub_1B4974FBC(a1 + *(v14 + 32), v8, &qword_1EB8A8798, &qword_1B4D22458);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1B4975024(v8, &qword_1EB8A8798, &qword_1B4D22458);
  }

  sub_1B4A3CCD0(v8, v13, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability);
  sub_1B4A5C360(&qword_1EDC3B2B8, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability);
  sub_1B4D17E6C();
  return sub_1B4A46828(v13, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability);
}

uint64_t sub_1B4A51584@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1B4D17BBC();
  v4 = a1[5];
  v5 = type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability(0);
  v8 = *(*(v5 - 8) + 56);
  (v8)((v5 - 8), a2 + v4, 1, 1, v5);
  v8(a2 + a1[6], 1, 1, v5);
  v8(a2 + a1[7], 1, 1, v5);
  v6 = a2 + a1[8];

  return (v8)(v6, 1, 1, v5);
}

uint64_t sub_1B4A516D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4A5C360(&qword_1EB8A8CC8, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4A51770(uint64_t a1)
{
  v2 = sub_1B4A5C360(qword_1EDC3B208, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4A517DC()
{
  sub_1B4A5C360(qword_1EDC3B208, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4A5185C()
{
  result = MEMORY[0x1B8C7C620](0xD000000000000016, 0x80000001B4D602C0);
  qword_1EB8A85D8 = 0xD000000000000036;
  unk_1EB8A85E0 = 0x80000001B4D5FDA0;
  return result;
}

uint64_t sub_1B4A518F8()
{
  v0 = sub_1B4D17E9C();
  __swift_allocate_value_buffer(v0, qword_1EB8A85E8);
  __swift_project_value_buffer(v0, qword_1EB8A85E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D38, &unk_1B4D29F10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D40, &qword_1B4D25740) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B4D1AA70;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "value";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B4D17E7C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "unavailableReasons";
  *(v10 + 1) = 18;
  v10[16] = 2;
  v9();
  return sub_1B4D17E8C();
}

uint64_t Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability.decodeMessage<A>(decoder:)()
{
  result = sub_1B4D17C2C();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        sub_1B4A5C4A4();
        sub_1B4D17C6C();
      }

      else if (result == 2)
      {
        sub_1B4D17CDC();
      }

      result = sub_1B4D17C2C();
    }
  }

  return result;
}

uint64_t Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability.traverse<A>(visitor:)()
{
  if (!*v0 || (v4 = *v0, v5 = *(v0 + 8), sub_1B4A5C4A4(), result = sub_1B4D17DDC(), !v1))
  {
    if (!*(v0[2] + 16) || (result = sub_1B4D17E1C(), !v1))
    {
      v3 = v0 + *(type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability(0) + 24);
      return sub_1B4D17BAC();
    }
  }

  return result;
}

uint64_t sub_1B4A51CC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = MEMORY[0x1E69E7CC0];
  v2 = a2 + *(a1 + 24);
  return sub_1B4D17BBC();
}

uint64_t sub_1B4A51D54(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4A5C360(&qword_1EB8A8CC0, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4A51DF4(uint64_t a1)
{
  v2 = sub_1B4A5C360(&qword_1EDC3B2B8, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4A51E60()
{
  sub_1B4A5C360(&qword_1EDC3B2B8, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4A51EE0()
{
  v0 = sub_1B4D17E9C();
  __swift_allocate_value_buffer(v0, qword_1EB8A8600);
  __swift_project_value_buffer(v0, qword_1EB8A8600);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D38, &unk_1B4D29F10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D40, &qword_1B4D25740) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B4D1AA70;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "AVAILABLE";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B4D17E7C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "UNAVAILABLE";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  return sub_1B4D17E8C();
}

uint64_t Apple_Fitness_Intelligence_WorkoutVoiceTranscript.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (type metadata accessor for Apple_Fitness_Intelligence_WorkoutVoiceTranscript.Entry(0), sub_1B4A5C360(&qword_1EB8A8828, type metadata accessor for Apple_Fitness_Intelligence_WorkoutVoiceTranscript.Entry), result = sub_1B4D17E5C(), !v1))
  {
    v3 = v0 + *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutVoiceTranscript(0) + 20);
    return sub_1B4D17BAC();
  }

  return result;
}

uint64_t sub_1B4A52348(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4A5C360(&qword_1EB8A8CB8, type metadata accessor for Apple_Fitness_Intelligence_WorkoutVoiceTranscript);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4A523E8(uint64_t a1)
{
  v2 = sub_1B4A5C360(&qword_1EB8A8A00, type metadata accessor for Apple_Fitness_Intelligence_WorkoutVoiceTranscript);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4A52454()
{
  sub_1B4A5C360(&qword_1EB8A8A00, type metadata accessor for Apple_Fitness_Intelligence_WorkoutVoiceTranscript);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4A524E8()
{
  result = MEMORY[0x1B8C7C620](0x7972746E452ELL, 0xE600000000000000);
  qword_1EB8A8630 = 0xD000000000000031;
  *algn_1EB8A8638 = 0x80000001B4D5FDE0;
  return result;
}

uint64_t sub_1B4A52578(void *a1, void *a2, void *a3)
{
  if (*a1 != -1)
  {
    v6 = a2;
    v7 = a3;
    swift_once();
    a2 = v6;
    a3 = v7;
  }

  v3 = *a2;
  v4 = *a3;

  return v3;
}

uint64_t sub_1B4A525D4()
{
  v0 = sub_1B4D17E9C();
  __swift_allocate_value_buffer(v0, qword_1EB8A8640);
  __swift_project_value_buffer(v0, qword_1EB8A8640);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D38, &unk_1B4D29F10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D40, &qword_1B4D25740) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B4D1AA70;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "role";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B4D17E7C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "value";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_1B4D17E8C();
}

uint64_t Apple_Fitness_Intelligence_WorkoutVoiceTranscript.Entry.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_1B4D17C2C();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1 || result == 2)
    {
      sub_1B4D17D1C();
    }
  }

  return result;
}

uint64_t Apple_Fitness_Intelligence_WorkoutVoiceTranscript.Entry.traverse<A>(visitor:)()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4 || (result = sub_1B4D17E3C(), !v1))
  {
    v6 = v0[3];
    v7 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v7 = v0[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v7 || (result = sub_1B4D17E3C(), !v1))
    {
      v8 = v0 + *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutVoiceTranscript.Entry(0) + 24);
      return sub_1B4D17BAC();
    }
  }

  return result;
}

uint64_t static Apple_Fitness_Intelligence_WorkoutVoiceTranscript.Entry.== infix(_:_:)(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1B4D18DCC() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_1B4D18DCC() & 1) == 0)
  {
    return 0;
  }

  v6 = *(type metadata accessor for Apple_Fitness_Intelligence_WorkoutVoiceTranscript.Entry(0) + 24);
  sub_1B4D17BCC();
  sub_1B4A5C360(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
  return sub_1B4D1816C() & 1;
}

uint64_t sub_1B4A52A2C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  a2[2] = 0;
  a2[3] = 0xE000000000000000;
  v2 = a2 + *(a1 + 24);
  return sub_1B4D17BBC();
}

uint64_t sub_1B4A52A80(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  if (*a3 != -1)
  {
    v8 = a5;
    v9 = a4;
    swift_once();
    a4 = v9;
    a5 = v8;
  }

  v5 = *a4;
  v6 = *a5;

  return v5;
}

uint64_t sub_1B4A52B10(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4A5C360(&qword_1EB8A8CB0, type metadata accessor for Apple_Fitness_Intelligence_WorkoutVoiceTranscript.Entry);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4A52BB0(uint64_t a1)
{
  v2 = sub_1B4A5C360(&qword_1EB8A8828, type metadata accessor for Apple_Fitness_Intelligence_WorkoutVoiceTranscript.Entry);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4A52C1C()
{
  sub_1B4A5C360(&qword_1EB8A8828, type metadata accessor for Apple_Fitness_Intelligence_WorkoutVoiceTranscript.Entry);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4A52C98(void *a1, void *a2, uint64_t a3)
{
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (sub_1B4D18DCC() & 1) == 0)
  {
    return 0;
  }

  v7 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v7 && (sub_1B4D18DCC() & 1) == 0)
  {
    return 0;
  }

  v8 = *(a3 + 24);
  sub_1B4D17BCC();
  sub_1B4A5C360(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
  return sub_1B4D1816C() & 1;
}

uint64_t sub_1B4A52E8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4A5C360(&qword_1EB8A8CA8, type metadata accessor for Apple_Fitness_Intelligence_AnnounceCancellationRequest);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4A52F2C(uint64_t a1)
{
  v2 = sub_1B4A5C360(&qword_1EB8A8A28, type metadata accessor for Apple_Fitness_Intelligence_AnnounceCancellationRequest);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4A52F98()
{
  sub_1B4A5C360(&qword_1EB8A8A28, type metadata accessor for Apple_Fitness_Intelligence_AnnounceCancellationRequest);

  return sub_1B4D17D9C();
}

uint64_t Apple_Fitness_Intelligence_AnnounceCancellationResult.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_1B4D17C2C();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1B4D17C5C();
    }
  }

  return result;
}

uint64_t Apple_Fitness_Intelligence_AnnounceCancellationResult.traverse<A>(visitor:)()
{
  if (*v0 != 1 || (result = sub_1B4D17DCC(), !v1))
  {
    v3 = &v0[*(type metadata accessor for Apple_Fitness_Intelligence_AnnounceCancellationResult(0) + 20)];
    return sub_1B4D17BAC();
  }

  return result;
}

uint64_t static Apple_Fitness_Intelligence_AnnounceCancellationResult.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = *(type metadata accessor for Apple_Fitness_Intelligence_AnnounceCancellationResult(0) + 20);
  sub_1B4D17BCC();
  sub_1B4A5C360(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
  return sub_1B4D1816C() & 1;
}

uint64_t sub_1B4A53268@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  *a2 = 0;
  v2 = &a2[*(a1 + 20)];
  return sub_1B4D17BBC();
}

uint64_t sub_1B4A532D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4A5C360(&qword_1EB8A8CA0, type metadata accessor for Apple_Fitness_Intelligence_AnnounceCancellationResult);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4A53378(uint64_t a1)
{
  v2 = sub_1B4A5C360(&qword_1EB8A8A40, type metadata accessor for Apple_Fitness_Intelligence_AnnounceCancellationResult);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4A533E4()
{
  sub_1B4A5C360(&qword_1EB8A8A40, type metadata accessor for Apple_Fitness_Intelligence_AnnounceCancellationResult);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4A53460(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = *(a3 + 20);
  sub_1B4D17BCC();
  sub_1B4A5C360(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
  return sub_1B4D1816C() & 1;
}

uint64_t Apple_Fitness_Intelligence_AudioSynthesisIntensity.decodeMessage<A>(decoder:)()
{
  result = sub_1B4D17C2C();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        sub_1B4A5C4F8();
        sub_1B4D17C6C();
      }

      result = sub_1B4D17C2C();
    }
  }

  return result;
}

uint64_t Apple_Fitness_Intelligence_AudioSynthesisIntensity.traverse<A>(visitor:)()
{
  if (!*v0 || (v4 = *v0, v5 = *(v0 + 8), sub_1B4A5C4F8(), result = sub_1B4D17DDC(), !v1))
  {
    v3 = v0 + *(type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisIntensity(0) + 20);
    return sub_1B4D17BAC();
  }

  return result;
}

uint64_t sub_1B4A536FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  v2 = a2 + *(a1 + 20);
  return sub_1B4D17BBC();
}

uint64_t sub_1B4A53774(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4A5C360(&qword_1EB8A8C98, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisIntensity);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4A53814(uint64_t a1)
{
  v2 = sub_1B4A5C360(&qword_1EB8A76F0, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisIntensity);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4A53880()
{
  sub_1B4A5C360(&qword_1EB8A76F0, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisIntensity);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4A53900()
{
  v0 = sub_1B4D17E9C();
  __swift_allocate_value_buffer(v0, qword_1EB8A86A0);
  __swift_project_value_buffer(v0, qword_1EB8A86A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D38, &unk_1B4D29F10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D40, &qword_1B4D25740) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B4D1BE00;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "DEFAULT";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B4D17E7C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "MILD";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "HIGH";
  *(v11 + 8) = 4;
  *(v11 + 16) = 2;
  v9();
  return sub_1B4D17E8C();
}

uint64_t sub_1B4A53B70()
{
  v0 = sub_1B4D17E9C();
  __swift_allocate_value_buffer(v0, qword_1EB8A86B8);
  __swift_project_value_buffer(v0, qword_1EB8A86B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D38, &unk_1B4D29F10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D40, &qword_1B4D25740) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1B4D1CBF0;
  v4 = v16 + v3;
  v5 = v16 + v3 + v1[14];
  *(v16 + v3) = 1;
  *v5 = "streamIdentifier";
  *(v5 + 8) = 16;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1B4D17E7C();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "streamDescription";
  *(v9 + 8) = 17;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "text";
  *(v11 + 1) = 4;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "voice";
  *(v13 + 1) = 5;
  v13[16] = 2;
  v8();
  v14 = v4 + 4 * v2 + v1[14];
  *(v4 + 4 * v2) = 5;
  *v14 = "intensity";
  *(v14 + 8) = 9;
  *(v14 + 16) = 2;
  v8();
  return sub_1B4D17E8C();
}

uint64_t Apple_Fitness_Intelligence_StreamingAudioAvailable.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_1B4D17C2C();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    if (result <= 2)
    {
      if (result == 1)
      {
LABEL_13:
        sub_1B4D17D1C();
      }

      else if (result == 2)
      {
        sub_1B4A53F0C();
      }
    }

    else
    {
      switch(result)
      {
        case 3:
          goto LABEL_13;
        case 4:
          sub_1B4A53FC0();
          break;
        case 5:
          sub_1B4A54074();
          break;
      }
    }
  }
}

uint64_t sub_1B4A53F0C()
{
  v0 = *(type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioAvailable(0) + 28);
  type metadata accessor for Apple_Fitness_Intelligence_AudioStreamDescription(0);
  sub_1B4A5C360(&qword_1EB8A76E8, type metadata accessor for Apple_Fitness_Intelligence_AudioStreamDescription);
  return sub_1B4D17D4C();
}

uint64_t sub_1B4A53FC0()
{
  v0 = *(type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioAvailable(0) + 32);
  type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice(0);
  sub_1B4A5C360(qword_1EDC3C320, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice);
  return sub_1B4D17D4C();
}

uint64_t sub_1B4A54074()
{
  v0 = *(type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioAvailable(0) + 36);
  type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisIntensity(0);
  sub_1B4A5C360(&qword_1EB8A76F0, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisIntensity);
  return sub_1B4D17D4C();
}

uint64_t Apple_Fitness_Intelligence_StreamingAudioAvailable.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = v3[1];
  v10 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v10 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v10 || (result = sub_1B4D17E3C(), !v4))
  {
    result = sub_1B4A54238(v3, a1, a2, a3);
    if (!v4)
    {
      v12 = v3[3];
      v13 = HIBYTE(v12) & 0xF;
      if ((v12 & 0x2000000000000000) == 0)
      {
        v13 = v3[2] & 0xFFFFFFFFFFFFLL;
      }

      if (v13)
      {
        sub_1B4D17E3C();
      }

      sub_1B4A54454(v3, a1, a2, a3);
      sub_1B4A54670(v3, a1, a2, a3);
      v14 = v3 + *(type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioAvailable(0) + 24);
      return sub_1B4D17BAC();
    }
  }

  return result;
}

uint64_t sub_1B4A54238(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A76C8, &unk_1B4D22410);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_AudioStreamDescription(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioAvailable(0);
  sub_1B4974FBC(a1 + *(v14 + 28), v8, &qword_1EB8A76C8, &unk_1B4D22410);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1B4975024(v8, &qword_1EB8A76C8, &unk_1B4D22410);
  }

  sub_1B4A3CCD0(v8, v13, type metadata accessor for Apple_Fitness_Intelligence_AudioStreamDescription);
  sub_1B4A5C360(&qword_1EB8A76E8, type metadata accessor for Apple_Fitness_Intelligence_AudioStreamDescription);
  sub_1B4D17E6C();
  return sub_1B4A46828(v13, type metadata accessor for Apple_Fitness_Intelligence_AudioStreamDescription);
}

uint64_t sub_1B4A54454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6938, &qword_1B4D1ACF8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioAvailable(0);
  sub_1B4974FBC(a1 + *(v14 + 32), v8, &qword_1EB8A6938, &qword_1B4D1ACF8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1B4975024(v8, &qword_1EB8A6938, &qword_1B4D1ACF8);
  }

  sub_1B4A3CCD0(v8, v13, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice);
  sub_1B4A5C360(qword_1EDC3C320, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice);
  sub_1B4D17E6C();
  return sub_1B4A46828(v13, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice);
}

uint64_t sub_1B4A54670(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A76C0, &qword_1B4D1E798);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisIntensity(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioAvailable(0);
  sub_1B4974FBC(a1 + *(v14 + 36), v8, &qword_1EB8A76C0, &qword_1B4D1E798);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1B4975024(v8, &qword_1EB8A76C0, &qword_1B4D1E798);
  }

  sub_1B4A3CCD0(v8, v13, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisIntensity);
  sub_1B4A5C360(&qword_1EB8A76F0, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisIntensity);
  sub_1B4D17E6C();
  return sub_1B4A46828(v13, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisIntensity);
}

uint64_t sub_1B4A548D8@<X0>(int *a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0xE000000000000000;
  v4 = &a2[a1[6]];
  sub_1B4D17BBC();
  v5 = a1[7];
  v6 = type metadata accessor for Apple_Fitness_Intelligence_AudioStreamDescription(0);
  (*(*(v6 - 8) + 56))(&a2[v5], 1, 1, v6);
  v7 = a1[8];
  v8 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice(0);
  (*(*(v8 - 8) + 56))(&a2[v7], 1, 1, v8);
  v9 = a1[9];
  v10 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisIntensity(0);
  v11 = *(*(v10 - 8) + 56);

  return v11(&a2[v9], 1, 1, v10);
}

uint64_t sub_1B4A54A40(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4A5C360(&qword_1EB8A8C90, type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioAvailable);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4A54AE0(uint64_t a1)
{
  v2 = sub_1B4A5C360(&qword_1EB8A76D0, type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioAvailable);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4A54B4C()
{
  sub_1B4A5C360(&qword_1EB8A76D0, type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioAvailable);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4A54C3C()
{
  while (1)
  {
    result = sub_1B4D17C2C();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1B4D17D1C();
    }
  }

  return result;
}

uint64_t sub_1B4A54CD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v7 = *v4;
  v8 = v4[1];
  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = *v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9 || (result = sub_1B4D17E3C(), !v5))
  {
    v11 = v4 + *(a4(0) + 20);
    return sub_1B4D17BAC();
  }

  return result;
}

uint64_t sub_1B4A54D94(void *a1, void *a2, uint64_t (*a3)(void))
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1B4D18DCC() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a3(0) + 20);
  sub_1B4D17BCC();
  sub_1B4A5C360(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
  return sub_1B4D1816C() & 1;
}

uint64_t sub_1B4A54ED8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4A5C360(&qword_1EB8A8C88, type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioRequest);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4A54F78(uint64_t a1)
{
  v2 = sub_1B4A5C360(&qword_1EB8A8A70, type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioRequest);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4A54FE4()
{
  sub_1B4A5C360(&qword_1EB8A8A70, type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioRequest);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4A55060(void *a1, void *a2, uint64_t a3)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1B4D18DCC() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a3 + 20);
  sub_1B4D17BCC();
  sub_1B4A5C360(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
  return sub_1B4D1816C() & 1;
}

uint64_t sub_1B4A55150(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1B4D17E9C();
  __swift_allocate_value_buffer(v7, a2);
  __swift_project_value_buffer(v7, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D38, &unk_1B4D29F10);
  v8 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D40, &qword_1B4D25740) - 8);
  v9 = *(*v8 + 72);
  v10 = (*(*v8 + 80) + 32) & ~*(*v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1B4D1A800;
  v12 = v11 + v10 + v8[14];
  *(v11 + v10) = 1;
  *v12 = a3;
  *(v12 + 8) = a4;
  *(v12 + 16) = 2;
  v13 = *MEMORY[0x1E69AADC8];
  v14 = sub_1B4D17E7C();
  (*(*(v14 - 8) + 104))(v12, v13, v14);
  return sub_1B4D17E8C();
}

uint64_t sub_1B4A5533C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), unint64_t *a5, void (*a6)(uint64_t))
{
  while (1)
  {
    result = sub_1B4D17C2C();
    if (v6 || (v11 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      a4(0);
      sub_1B4A5C360(a5, a6);
      sub_1B4D17D3C();
    }
  }

  return result;
}

uint64_t Apple_Fitness_Intelligence_StreamingAudioData.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioChunk(0), sub_1B4A5C360(&qword_1EB8A6A20, type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioChunk), result = sub_1B4D17E5C(), !v1))
  {
    v3 = v0 + *(type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioData(0) + 20);
    return sub_1B4D17BAC();
  }

  return result;
}

uint64_t sub_1B4A55528(void *a1, void *a2, uint64_t (*a3)(void, void), uint64_t (*a4)(void))
{
  if ((a3(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v5 = *(a4(0) + 20);
  sub_1B4D17BCC();
  sub_1B4A5C360(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
  return sub_1B4D1816C() & 1;
}

uint64_t sub_1B4A55644@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_1B4D17BCC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1B4A556B8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = sub_1B4D17BCC();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1B4A5575C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4A5C360(&qword_1EB8A8C80, type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioData);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4A557FC(uint64_t a1)
{
  v2 = sub_1B4A5C360(&qword_1EB8A6A08, type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioData);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4A55868()
{
  sub_1B4A5C360(&qword_1EB8A6A08, type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioData);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4A558FC(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void))
{
  if ((a5(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  sub_1B4D17BCC();
  sub_1B4A5C360(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
  return sub_1B4D1816C() & 1;
}

uint64_t sub_1B4A559C4()
{
  v0 = sub_1B4D17E9C();
  __swift_allocate_value_buffer(v0, qword_1EB8A8700);
  __swift_project_value_buffer(v0, qword_1EB8A8700);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D38, &unk_1B4D29F10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D40, &qword_1B4D25740) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B4D1CBF0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "streamIdentifier";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B4D17E7C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "chunkIndex";
  *(v10 + 8) = 10;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "audioData";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "packetCount";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "packetDescriptions";
  *(v15 + 8) = 18;
  *(v15 + 16) = 2;
  v9();
  return sub_1B4D17E8C();
}

uint64_t Apple_Fitness_Intelligence_StreamingAudioChunk.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_1B4D17C2C();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    if (result <= 2)
    {
      if (result == 1)
      {
        sub_1B4D17D1C();
      }

      else if (result == 2)
      {
        sub_1B4D17D2C();
      }
    }

    else
    {
      switch(result)
      {
        case 3:
          goto LABEL_13;
        case 4:
          sub_1B4D17CAC();
          break;
        case 5:
LABEL_13:
          sub_1B4D17C8C();
          break;
      }
    }
  }
}

uint64_t Apple_Fitness_Intelligence_StreamingAudioChunk.traverse<A>(visitor:)()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
    result = sub_1B4D17E3C();
    if (v1)
    {
      return result;
    }
  }

  if (*(v0 + 4))
  {
    result = sub_1B4D17E4C();
    if (v1)
    {
      return result;
    }
  }

  v6 = v0[3];
  v7 = v0[4];
  v8 = v7 >> 62;
  if ((v7 >> 62) > 1)
  {
    if (v8 != 2)
    {
      goto LABEL_16;
    }

    v9 = *(v6 + 16);
    v10 = *(v6 + 24);
    goto LABEL_14;
  }

  if (v8)
  {
    v9 = v6;
    v10 = v6 >> 32;
LABEL_14:
    if (v9 == v10)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  if ((v7 & 0xFF000000000000) == 0)
  {
    goto LABEL_16;
  }

LABEL_15:
  result = sub_1B4D17DEC();
  if (v1)
  {
    return result;
  }

LABEL_16:
  if (!*(v0 + 10) || (result = sub_1B4D17DFC(), !v1))
  {
    v11 = v0[6];
    v12 = v0[7];
    v13 = v12 >> 62;
    if ((v12 >> 62) > 1)
    {
      if (v13 != 2)
      {
        goto LABEL_27;
      }

      v14 = *(v11 + 16);
      v15 = *(v11 + 24);
    }

    else
    {
      if (!v13)
      {
        if ((v12 & 0xFF000000000000) == 0)
        {
          goto LABEL_27;
        }

LABEL_26:
        result = sub_1B4D17DEC();
        if (v1)
        {
          return result;
        }

        goto LABEL_27;
      }

      v14 = v11;
      v15 = v11 >> 32;
    }

    if (v14 != v15)
    {
      goto LABEL_26;
    }

LABEL_27:
    v16 = v0 + *(type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioChunk(0) + 36);
    return sub_1B4D17BAC();
  }

  return result;
}

uint64_t sub_1B4A55F30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = xmmword_1B4D223D0;
  *(a2 + 40) = 0;
  *(a2 + 48) = xmmword_1B4D223D0;
  v2 = a2 + *(a1 + 36);
  return sub_1B4D17BBC();
}

uint64_t sub_1B4A55F8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = sub_1B4D17BCC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1B4A56000(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 36);
  v5 = sub_1B4D17BCC();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_1B4A56074(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 36);
  return result;
}

uint64_t sub_1B4A560C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4A5C360(&qword_1EB8A8C78, type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioChunk);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4A56168(uint64_t a1)
{
  v2 = sub_1B4A5C360(&qword_1EB8A6A20, type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioChunk);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4A561D4()
{
  sub_1B4A5C360(&qword_1EB8A6A20, type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioChunk);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4A56270()
{
  v0 = sub_1B4D17E9C();
  __swift_allocate_value_buffer(v0, qword_1EB8A8718);
  __swift_project_value_buffer(v0, qword_1EB8A8718);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D38, &unk_1B4D29F10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D40, &qword_1B4D25740) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B4D1AA70;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "streamIdentifier";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B4D17E7C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "chunkCount";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  return sub_1B4D17E8C();
}

uint64_t Apple_Fitness_Intelligence_StreamingAudioComplete.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_1B4D17C2C();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1B4D17D1C();
    }

    else if (result == 2)
    {
      sub_1B4D17D2C();
    }
  }

  return result;
}

uint64_t Apple_Fitness_Intelligence_StreamingAudioComplete.traverse<A>(visitor:)()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4 || (result = sub_1B4D17E3C(), !v1))
  {
    if (!*(v0 + 4) || (result = sub_1B4D17E4C(), !v1))
    {
      v6 = v0 + *(type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioComplete(0) + 24);
      return sub_1B4D17BAC();
    }
  }

  return result;
}

uint64_t static Apple_Fitness_Intelligence_StreamingAudioComplete.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_1B4D18DCC() & 1) == 0 || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v5 = *(type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioComplete(0) + 24);
  sub_1B4D17BCC();
  sub_1B4A5C360(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
  return sub_1B4D1816C() & 1;
}

uint64_t sub_1B4A566B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  v2 = a2 + *(a1 + 24);
  return sub_1B4D17BBC();
}

uint64_t sub_1B4A566FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_1B4D17BCC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1B4A56770(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = sub_1B4D17BCC();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1B4A56814(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4A5C360(&qword_1EB8A8C70, type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioComplete);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4A568B4(uint64_t a1)
{
  v2 = sub_1B4A5C360(&qword_1EB8A8AA0, type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioComplete);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4A56920()
{
  sub_1B4A5C360(&qword_1EB8A8AA0, type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioComplete);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4A5699C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v6 && (sub_1B4D18DCC() & 1) == 0 || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v7 = *(a3 + 24);
  sub_1B4D17BCC();
  sub_1B4A5C360(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
  return sub_1B4D1816C() & 1;
}

uint64_t sub_1B4A56A84()
{
  v0 = sub_1B4D17E9C();
  __swift_allocate_value_buffer(v0, qword_1EB8A8730);
  __swift_project_value_buffer(v0, qword_1EB8A8730);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D38, &unk_1B4D29F10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D40, &qword_1B4D25740) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1B4D1AA90;
  v4 = v24 + v3;
  v5 = v24 + v3 + v1[14];
  *(v24 + v3) = 1;
  *v5 = "sampleRate";
  *(v5 + 8) = 10;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1B4D17E7C();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "formatID";
  *(v9 + 8) = 8;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "formatFlags";
  *(v11 + 1) = 11;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "bytesPerPacket";
  *(v13 + 1) = 14;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "framesPerPacket";
  *(v15 + 1) = 15;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "bytesPerFrame";
  *(v17 + 1) = 13;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "channelsPerFrame";
  *(v19 + 1) = 16;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "bitsPerChannel";
  *(v21 + 1) = 14;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "reservedData";
  *(v22 + 8) = 12;
  *(v22 + 16) = 2;
  v8();
  return sub_1B4D17E8C();
}

uint64_t sub_1B4A56E2C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_1B4D17E9C();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t Apple_Fitness_Intelligence_AudioStreamDescription.decodeMessage<A>(decoder:)()
{
  result = sub_1B4D17C2C();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result <= 4)
      {
        if (result <= 2)
        {
          if (result == 1)
          {
            sub_1B4D17CFC();
            goto LABEL_13;
          }

          if (result != 2)
          {
            goto LABEL_13;
          }
        }
      }

      else if (result > 9)
      {
        goto LABEL_13;
      }

      sub_1B4D17D2C();
LABEL_13:
      result = sub_1B4D17C2C();
    }
  }

  return result;
}

uint64_t Apple_Fitness_Intelligence_AudioStreamDescription.traverse<A>(visitor:)()
{
  if (!*v0 || (result = sub_1B4D17E2C(), !v1))
  {
    if (!*(v0 + 8) || (result = sub_1B4D17E4C(), !v1))
    {
      if (!*(v0 + 12) || (result = sub_1B4D17E4C(), !v1))
      {
        if (!*(v0 + 16) || (result = sub_1B4D17E4C(), !v1))
        {
          if (!*(v0 + 20) || (result = sub_1B4D17E4C(), !v1))
          {
            if (!*(v0 + 24) || (result = sub_1B4D17E4C(), !v1))
            {
              if (!*(v0 + 28) || (result = sub_1B4D17E4C(), !v1))
              {
                if (!*(v0 + 32) || (result = sub_1B4D17E4C(), !v1))
                {
                  if (!*(v0 + 36) || (result = sub_1B4D17E4C(), !v1))
                  {
                    v3 = v0 + *(type metadata accessor for Apple_Fitness_Intelligence_AudioStreamDescription(0) + 52);
                    return sub_1B4D17BAC();
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1B4A571B4(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1B4D18E8C();
  a1(0);
  sub_1B4A5C360(a2, a3);
  sub_1B4D1808C();
  return sub_1B4D18EDC();
}

uint64_t sub_1B4A5723C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  v2 = a2 + *(a1 + 52);
  return sub_1B4D17BBC();
}

uint64_t sub_1B4A57284@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 52);
  v5 = sub_1B4D17BCC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1B4A572F8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 52);
  v5 = sub_1B4D17BCC();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_1B4A5736C(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 52);
  return result;
}

uint64_t sub_1B4A573C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4A5C360(&qword_1EB8A8C68, type metadata accessor for Apple_Fitness_Intelligence_AudioStreamDescription);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4A57460@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_1B4D17E9C();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_1B4A574FC(uint64_t a1)
{
  v2 = sub_1B4A5C360(&qword_1EB8A76E8, type metadata accessor for Apple_Fitness_Intelligence_AudioStreamDescription);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4A57568()
{
  sub_1B4D18E8C();
  sub_1B4D1808C();
  return sub_1B4D18EDC();
}

uint64_t sub_1B4A575C0()
{
  sub_1B4A5C360(&qword_1EB8A76E8, type metadata accessor for Apple_Fitness_Intelligence_AudioStreamDescription);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4A5763C()
{
  sub_1B4D18E8C();
  sub_1B4D1808C();
  return sub_1B4D18EDC();
}

uint64_t _s19FitnessIntelligence06Apple_a1_B29_InferenceTelemetryIdentifierV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1B4D18DCC() & 1) == 0)
  {
    return 0;
  }

  v5 = type metadata accessor for Apple_Fitness_Intelligence_InferenceTelemetryIdentifier(0);
  v6 = *(v5 + 28);
  v7 = (a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v10 = v9[1];
  if (v8)
  {
    if (!v10)
    {
      return 0;
    }

    v11 = *v7 == *v9 && v8 == v10;
    if (!v11 && (sub_1B4D18DCC() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  if (a1[2] == a2[2] && a1[3] == a2[3] || (sub_1B4D18DCC() & 1) != 0)
  {
    v12 = *(v5 + 24);
    sub_1B4D17BCC();
    sub_1B4A5C360(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
    return sub_1B4D1816C() & 1;
  }

  return 0;
}

uint64_t _s19FitnessIntelligence06Apple_a1_B28_DeviceInferenceAvailabilityV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v75 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v77 = &v75 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v80 = &v75 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v83 = &v75 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8798, &qword_1B4D22458);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v76 = &v75 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v79 = &v75 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v81 = &v75 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v75 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D60, &qword_1B4D25760);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24);
  v78 = &v75 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v82 = &v75 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v88 = &v75 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v75 - v32;
  v85 = type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability(0);
  v86 = v24;
  v34 = v85[5];
  v35 = *(v24 + 48);
  v87 = a1;
  sub_1B4974FBC(a1 + v34, v33, &qword_1EB8A8798, &qword_1B4D22458);
  v84 = a2;
  sub_1B4974FBC(a2 + v34, &v33[v35], &qword_1EB8A8798, &qword_1B4D22458);
  v36 = *(v5 + 48);
  if (v36(v33, 1, v4) == 1)
  {
    if (v36(&v33[v35], 1, v4) == 1)
    {
      sub_1B4975024(v33, &qword_1EB8A8798, &qword_1B4D22458);
      v37 = v88;
      goto LABEL_4;
    }

    goto LABEL_16;
  }

  sub_1B4974FBC(v33, v23, &qword_1EB8A8798, &qword_1B4D22458);
  if (v36(&v33[v35], 1, v4) == 1)
  {
    sub_1B4A46828(v23, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability);
LABEL_16:
    v50 = &qword_1EB8A8D60;
    v51 = &qword_1B4D25760;
LABEL_39:
    v56 = v33;
    goto LABEL_40;
  }

  v52 = v83;
  sub_1B4A3CCD0(&v33[v35], v83, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability);
  v53 = *v23;
  v54 = *v52;
  if (v23[8])
  {
    v53 = *v23 != 0;
  }

  if (*(v52 + 8) == 1)
  {
    v37 = v88;
    if (v54)
    {
      if (v53 != 1)
      {
        goto LABEL_38;
      }
    }

    else if (v53)
    {
LABEL_38:
      sub_1B4A46828(v52, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability);
      sub_1B4A46828(v23, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability);
      v50 = &qword_1EB8A8798;
      v51 = &qword_1B4D22458;
      goto LABEL_39;
    }
  }

  else
  {
    v37 = v88;
    if (v53 != v54)
    {
      goto LABEL_38;
    }
  }

  if ((sub_1B4A0C158(*(v23 + 2), *(v52 + 16)) & 1) == 0)
  {
    goto LABEL_38;
  }

  v60 = *(v4 + 24);
  sub_1B4D17BCC();
  sub_1B4A5C360(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
  LOBYTE(v60) = sub_1B4D1816C();
  sub_1B4A46828(v52, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability);
  sub_1B4A46828(v23, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability);
  sub_1B4975024(v33, &qword_1EB8A8798, &qword_1B4D22458);
  if ((v60 & 1) == 0)
  {
    goto LABEL_41;
  }

LABEL_4:
  v38 = v85[6];
  v39 = *(v86 + 48);
  sub_1B4974FBC(v87 + v38, v37, &qword_1EB8A8798, &qword_1B4D22458);
  v40 = v84;
  sub_1B4974FBC(v84 + v38, v37 + v39, &qword_1EB8A8798, &qword_1B4D22458);
  if (v36(v37, 1, v4) == 1)
  {
    if (v36((v37 + v39), 1, v4) == 1)
    {
      sub_1B4975024(v37, &qword_1EB8A8798, &qword_1B4D22458);
      v41 = v82;
      goto LABEL_7;
    }

    goto LABEL_25;
  }

  v55 = v81;
  sub_1B4974FBC(v37, v81, &qword_1EB8A8798, &qword_1B4D22458);
  if (v36((v37 + v39), 1, v4) == 1)
  {
    sub_1B4A46828(v55, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability);
LABEL_25:
    v50 = &qword_1EB8A8D60;
    v51 = &qword_1B4D25760;
    v56 = v37;
LABEL_40:
    sub_1B4975024(v56, v50, v51);
    goto LABEL_41;
  }

  v57 = v80;
  sub_1B4A3CCD0(v37 + v39, v80, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability);
  v58 = *v55;
  v59 = *v57;
  if (*(v55 + 8))
  {
    v58 = *v55 != 0;
  }

  if (*(v57 + 8) == 1)
  {
    v41 = v82;
    if (v59)
    {
      if (v58 != 1)
      {
        goto LABEL_58;
      }
    }

    else if (v58)
    {
LABEL_58:
      sub_1B4A46828(v57, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability);
      sub_1B4A46828(v55, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability);
      v50 = &qword_1EB8A8798;
      v51 = &qword_1B4D22458;
      v56 = v37;
      goto LABEL_40;
    }
  }

  else
  {
    v41 = v82;
    if (v58 != v59)
    {
      goto LABEL_58;
    }
  }

  if ((sub_1B4A0C158(*(v55 + 16), *(v57 + 16)) & 1) == 0)
  {
    goto LABEL_58;
  }

  v67 = *(v4 + 24);
  sub_1B4D17BCC();
  sub_1B4A5C360(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
  v68 = sub_1B4D1816C();
  sub_1B4A46828(v57, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability);
  sub_1B4A46828(v55, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability);
  sub_1B4975024(v37, &qword_1EB8A8798, &qword_1B4D22458);
  if ((v68 & 1) == 0)
  {
    goto LABEL_41;
  }

LABEL_7:
  v42 = v85[7];
  v43 = *(v86 + 48);
  sub_1B4974FBC(v87 + v42, v41, &qword_1EB8A8798, &qword_1B4D22458);
  sub_1B4974FBC(v40 + v42, v41 + v43, &qword_1EB8A8798, &qword_1B4D22458);
  if (v36(v41, 1, v4) == 1)
  {
    if (v36((v41 + v43), 1, v4) == 1)
    {
      sub_1B4975024(v41, &qword_1EB8A8798, &qword_1B4D22458);
      goto LABEL_10;
    }

    goto LABEL_45;
  }

  v62 = v79;
  sub_1B4974FBC(v41, v79, &qword_1EB8A8798, &qword_1B4D22458);
  if (v36((v41 + v43), 1, v4) == 1)
  {
    sub_1B4A46828(v62, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability);
LABEL_45:
    v50 = &qword_1EB8A8D60;
    v51 = &qword_1B4D25760;
    v56 = v41;
    goto LABEL_40;
  }

  v63 = v41 + v43;
  v64 = v77;
  sub_1B4A3CCD0(v63, v77, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability);
  v65 = *v62;
  v66 = *v64;
  if (*(v62 + 8))
  {
    v65 = *v62 != 0;
  }

  if (*(v64 + 8) == 1)
  {
    if (v66)
    {
      if (v65 != 1)
      {
        goto LABEL_74;
      }
    }

    else if (v65)
    {
LABEL_74:
      sub_1B4A46828(v64, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability);
      sub_1B4A46828(v62, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability);
      v50 = &qword_1EB8A8798;
      v51 = &qword_1B4D22458;
      v56 = v41;
      goto LABEL_40;
    }
  }

  else if (v65 != v66)
  {
    goto LABEL_74;
  }

  if ((sub_1B4A0C158(*(v62 + 16), *(v64 + 16)) & 1) == 0)
  {
    goto LABEL_74;
  }

  v73 = *(v4 + 24);
  sub_1B4D17BCC();
  sub_1B4A5C360(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
  LOBYTE(v73) = sub_1B4D1816C();
  sub_1B4A46828(v64, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability);
  sub_1B4A46828(v62, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability);
  sub_1B4975024(v41, &qword_1EB8A8798, &qword_1B4D22458);
  if ((v73 & 1) == 0)
  {
    goto LABEL_41;
  }

LABEL_10:
  v44 = v85[8];
  v45 = *(v86 + 48);
  v46 = v78;
  sub_1B4974FBC(v87 + v44, v78, &qword_1EB8A8798, &qword_1B4D22458);
  v47 = v40 + v44;
  v48 = v46;
  sub_1B4974FBC(v47, v46 + v45, &qword_1EB8A8798, &qword_1B4D22458);
  if (v36(v46, 1, v4) != 1)
  {
    v69 = v76;
    sub_1B4974FBC(v48, v76, &qword_1EB8A8798, &qword_1B4D22458);
    if (v36((v48 + v45), 1, v4) == 1)
    {
      sub_1B4A46828(v69, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability);
      goto LABEL_61;
    }

    v70 = v75;
    sub_1B4A3CCD0(v48 + v45, v75, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability);
    v71 = *v69;
    v72 = *v70;
    if (*(v69 + 8))
    {
      v71 = *v69 != 0;
    }

    if (*(v70 + 8) == 1)
    {
      if (v72)
      {
        if (v71 != 1)
        {
          goto LABEL_81;
        }
      }

      else if (v71)
      {
LABEL_81:
        sub_1B4A46828(v70, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability);
        sub_1B4A46828(v69, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability);
        v50 = &qword_1EB8A8798;
        v51 = &qword_1B4D22458;
        v56 = v48;
        goto LABEL_40;
      }
    }

    else if (v71 != v72)
    {
      goto LABEL_81;
    }

    if (sub_1B4A0C158(*(v69 + 16), *(v70 + 16)))
    {
      v74 = *(v4 + 24);
      sub_1B4D17BCC();
      sub_1B4A5C360(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
      LOBYTE(v74) = sub_1B4D1816C();
      sub_1B4A46828(v70, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability);
      sub_1B4A46828(v69, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability);
      sub_1B4975024(v48, &qword_1EB8A8798, &qword_1B4D22458);
      if (v74)
      {
        goto LABEL_13;
      }

LABEL_41:
      v49 = 0;
      return v49 & 1;
    }

    goto LABEL_81;
  }

  if (v36((v46 + v45), 1, v4) != 1)
  {
LABEL_61:
    v50 = &qword_1EB8A8D60;
    v51 = &qword_1B4D25760;
    v56 = v48;
    goto LABEL_40;
  }

  sub_1B4975024(v46, &qword_1EB8A8798, &qword_1B4D22458);
LABEL_13:
  sub_1B4D17BCC();
  sub_1B4A5C360(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
  v49 = sub_1B4D1816C();
  return v49 & 1;
}

uint64_t _s19FitnessIntelligence06Apple_a1_B28_DeviceInferenceAvailabilityV09ComponentF0V2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a1 + 8))
  {
    v2 = *a1 != 0;
  }

  if (*(a2 + 8) == 1)
  {
    if (v3)
    {
      if (v2 != 1)
      {
        return 0;
      }
    }

    else if (v2)
    {
      return 0;
    }
  }

  else if (v2 != v3)
  {
    return 0;
  }

  if (sub_1B4A0C158(a1[2], a2[2]))
  {
    v4 = *(type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability(0) + 24);
    sub_1B4D17BCC();
    sub_1B4A5C360(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
    return sub_1B4D1816C() & 1;
  }

  return 0;
}

uint64_t _s19FitnessIntelligence06Apple_a1_B25_AudioSynthesisVoiceAssetV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v57 = a2;
  v54 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset.DownloadProgress(0);
  v52 = *(v54 - 8);
  v3 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v54);
  v49 = (&v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8788, &qword_1B4D22448);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v50 = (&v48 - v7);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D90, &qword_1B4D25790);
  v8 = *(*(v51 - 8) + 64);
  MEMORY[0x1EEE9AC00](v51);
  v53 = &v48 - v9;
  v10 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6938, &qword_1B4D1ACF8);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v48 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D50, &qword_1B4D25750);
  v20 = v19 - 8;
  v21 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v48 - v22;
  v55 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset(0);
  v56 = a1;
  v24 = v55[7];
  v25 = *(v20 + 56);
  sub_1B4974FBC(&a1[v24], v23, &qword_1EB8A6938, &qword_1B4D1ACF8);
  v26 = v57;
  sub_1B4974FBC(&v57[v24], &v23[v25], &qword_1EB8A6938, &qword_1B4D1ACF8);
  v27 = *(v11 + 48);
  if (v27(v23, 1, v10) == 1)
  {
    if (v27(&v23[v25], 1, v10) == 1)
    {
      sub_1B4975024(v23, &qword_1EB8A6938, &qword_1B4D1ACF8);
      goto LABEL_9;
    }
  }

  else
  {
    sub_1B4974FBC(v23, v18, &qword_1EB8A6938, &qword_1B4D1ACF8);
    if (v27(&v23[v25], 1, v10) != 1)
    {
      sub_1B4A3CCD0(&v23[v25], v14, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice);
      v31 = _s19FitnessIntelligence06Apple_a1_B20_AudioSynthesisVoiceV2eeoiySbAC_ACtFZ_0(v18, v14);
      sub_1B4A46828(v14, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice);
      sub_1B4A46828(v18, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice);
      sub_1B4975024(v23, &qword_1EB8A6938, &qword_1B4D1ACF8);
      if ((v31 & 1) == 0)
      {
        goto LABEL_10;
      }

LABEL_9:
      if (*v56 != *v26)
      {
        goto LABEL_10;
      }

      v34 = *(v56 + 1);
      v35 = *(v26 + 1);
      if (v26[16] == 1)
      {
        if (v35)
        {
          if (v35 == 1)
          {
            if (v34 != 1)
            {
              goto LABEL_10;
            }
          }

          else if (v34 != 2)
          {
            goto LABEL_10;
          }
        }

        else if (v34)
        {
          goto LABEL_10;
        }
      }

      else if (v34 != v35)
      {
        goto LABEL_10;
      }

      v36 = v55[8];
      v37 = *(v51 + 48);
      v38 = v53;
      sub_1B4974FBC(&v56[v36], v53, &qword_1EB8A8788, &qword_1B4D22448);
      v39 = v38;
      sub_1B4974FBC(&v26[v36], v38 + v37, &qword_1EB8A8788, &qword_1B4D22448);
      v40 = *(v52 + 48);
      v41 = v38;
      v42 = v54;
      if (v40(v41, 1, v54) == 1)
      {
        if (v40(v39 + v37, 1, v42) == 1)
        {
LABEL_24:
          sub_1B4975024(v39, &qword_1EB8A8788, &qword_1B4D22448);
          v43 = v55[6];
          sub_1B4D17BCC();
          sub_1B4A5C360(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
          v32 = sub_1B4D1816C();
          return v32 & 1;
        }
      }

      else
      {
        v44 = v50;
        sub_1B4974FBC(v39, v50, &qword_1EB8A8788, &qword_1B4D22448);
        if (v40(v39 + v37, 1, v42) != 1)
        {
          v45 = v49;
          sub_1B4A3CCD0(v39 + v37, v49, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset.DownloadProgress);
          if (*v44 == *v45 && v44[1] == v45[1])
          {
            v46 = *(v54 + 24);
            sub_1B4D17BCC();
            sub_1B4A5C360(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
            v47 = sub_1B4D1816C();
            sub_1B4A46828(v45, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset.DownloadProgress);
            if (v47)
            {
              sub_1B4A46828(v44, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset.DownloadProgress);
              goto LABEL_24;
            }
          }

          else
          {
            sub_1B4A46828(v45, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset.DownloadProgress);
          }

          sub_1B4A46828(v44, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset.DownloadProgress);
          v28 = &qword_1EB8A8788;
          v29 = &qword_1B4D22448;
          goto LABEL_34;
        }

        sub_1B4A46828(v44, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset.DownloadProgress);
      }

      v28 = &qword_1EB8A8D90;
      v29 = &qword_1B4D25790;
LABEL_34:
      v30 = v39;
      goto LABEL_7;
    }

    sub_1B4A46828(v18, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice);
  }

  v28 = &qword_1EB8A8D50;
  v29 = &qword_1B4D25750;
  v30 = v23;
LABEL_7:
  sub_1B4975024(v30, v28, v29);
LABEL_10:
  v32 = 0;
  return v32 & 1;
}

uint64_t _s19FitnessIntelligence06Apple_a1_B25_AnnounceUtteranceRequestV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisSettings(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = (&v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8778, &qword_1B4D22438);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = (&v45 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D98, &qword_1B4D25798);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v45 - v15;
  v17 = type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceRequest(0);
  v18 = *(v17 + 20);
  v19 = (a1 + v18);
  v20 = *(a1 + v18 + 8);
  v21 = (a2 + v18);
  v22 = v21[1];
  if (v20)
  {
    if (!v22)
    {
      goto LABEL_16;
    }

    v23 = *v19 == *v21 && v20 == v22;
    if (!v23 && (sub_1B4D18DCC() & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else if (v22)
  {
    goto LABEL_16;
  }

  v45 = v17;
  v24 = *(v17 + 24);
  v25 = *(v13 + 48);
  v46 = a1;
  sub_1B4974FBC(a1 + v24, v16, &qword_1EB8A8778, &qword_1B4D22438);
  v26 = a2 + v24;
  v27 = a2;
  sub_1B4974FBC(v26, &v16[v25], &qword_1EB8A8778, &qword_1B4D22438);
  v28 = *(v5 + 48);
  if (v28(v16, 1, v4) != 1)
  {
    sub_1B4974FBC(v16, v12, &qword_1EB8A8778, &qword_1B4D22438);
    if (v28(&v16[v25], 1, v4) != 1)
    {
      sub_1B4A3CCD0(&v16[v25], v8, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisSettings);
      v31 = _s19FitnessIntelligence06Apple_a1_B23_AudioSynthesisSettingsV2eeoiySbAC_ACtFZ_0(v12, v8);
      sub_1B4A46828(v8, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisSettings);
      sub_1B4A46828(v12, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisSettings);
      sub_1B4975024(v16, &qword_1EB8A8778, &qword_1B4D22438);
      if ((v31 & 1) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_19;
    }

    sub_1B4A46828(v12, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisSettings);
LABEL_15:
    sub_1B4975024(v16, &qword_1EB8A8D98, &qword_1B4D25798);
    goto LABEL_16;
  }

  if (v28(&v16[v25], 1, v4) != 1)
  {
    goto LABEL_15;
  }

  sub_1B4975024(v16, &qword_1EB8A8778, &qword_1B4D22438);
LABEL_19:
  v33 = v45;
  v32 = v46;
  v34 = *(v45 + 28);
  v35 = *(v46 + v34);
  v36 = *(v27 + v34);
  if (v35 == 2)
  {
    if (v36 != 2)
    {
      goto LABEL_16;
    }
  }

  else if (v36 == 2 || ((v35 ^ v36) & 1) != 0)
  {
    goto LABEL_16;
  }

  v37 = *(v45 + 32);
  v38 = (v46 + v37);
  v39 = *(v46 + v37 + 8);
  v40 = (v27 + v37);
  v41 = v40[1];
  if (v39)
  {
    if (!v41 || (*v38 != *v40 || v39 != v41) && (sub_1B4D18DCC() & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else if (v41)
  {
    goto LABEL_16;
  }

  v42 = *(v33 + 36);
  v43 = *(v32 + v42);
  v44 = *(v27 + v42);
  if (v43 == 2)
  {
    if (v44 == 2)
    {
LABEL_36:
      sub_1B4D17BCC();
      sub_1B4A5C360(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
      v29 = sub_1B4D1816C();
      return v29 & 1;
    }
  }

  else if (v44 != 2 && ((v43 ^ v44) & 1) == 0)
  {
    goto LABEL_36;
  }

LABEL_16:
  v29 = 0;
  return v29 & 1;
}

uint64_t _s19FitnessIntelligence06Apple_a1_B24_StreamingAudioAvailableV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisIntensity(0);
  v78 = *(v4 - 8);
  v79 = v4;
  v5 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v74 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A76C0, &qword_1B4D1E798);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v75 = (&v72 - v9);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D48, &qword_1B4D25748);
  v10 = *(*(v77 - 8) + 64);
  MEMORY[0x1EEE9AC00](v77);
  v12 = &v72 - v11;
  v13 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice(0);
  v82 = *(v13 - 8);
  v83 = v13;
  v14 = *(v82 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v76 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6938, &qword_1B4D1ACF8);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v80 = &v72 - v18;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D50, &qword_1B4D25750);
  v19 = *(*(v81 - 8) + 64);
  MEMORY[0x1EEE9AC00](v81);
  v21 = &v72 - v20;
  v22 = type metadata accessor for Apple_Fitness_Intelligence_AudioStreamDescription(0);
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v72 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A76C8, &unk_1B4D22410);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v30 = &v72 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D58, &qword_1B4D25758);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x1EEE9AC00](v31);
  v34 = &v72 - v33;
  v35 = *a1;
  v36 = a1[1];
  v84 = a1;
  if ((v35 != *a2 || v36 != a2[1]) && (sub_1B4D18DCC() & 1) == 0)
  {
    goto LABEL_40;
  }

  v73 = v12;
  v37 = type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioAvailable(0);
  v85 = a2;
  v72 = v37;
  v38 = *(v37 + 28);
  v39 = *(v31 + 48);
  sub_1B4974FBC(v84 + v38, v34, &qword_1EB8A76C8, &unk_1B4D22410);
  v40 = v85 + v38;
  v41 = v85;
  sub_1B4974FBC(v40, &v34[v39], &qword_1EB8A76C8, &unk_1B4D22410);
  v42 = *(v23 + 48);
  if (v42(v34, 1, v22) == 1)
  {
    if (v42(&v34[v39], 1, v22) == 1)
    {
      sub_1B4975024(v34, &qword_1EB8A76C8, &unk_1B4D22410);
      goto LABEL_11;
    }

LABEL_9:
    v43 = &qword_1EB8A8D58;
    v44 = &qword_1B4D25758;
    v45 = v34;
LABEL_39:
    sub_1B4975024(v45, v43, v44);
    goto LABEL_40;
  }

  sub_1B4974FBC(v34, v30, &qword_1EB8A76C8, &unk_1B4D22410);
  if (v42(&v34[v39], 1, v22) == 1)
  {
    sub_1B4A46828(v30, type metadata accessor for Apple_Fitness_Intelligence_AudioStreamDescription);
    goto LABEL_9;
  }

  sub_1B4A3CCD0(&v34[v39], v26, type metadata accessor for Apple_Fitness_Intelligence_AudioStreamDescription);
  v46 = _s19FitnessIntelligence06Apple_a1_B23_AudioStreamDescriptionV2eeoiySbAC_ACtFZ_0(v30, v26);
  sub_1B4A46828(v26, type metadata accessor for Apple_Fitness_Intelligence_AudioStreamDescription);
  sub_1B4A46828(v30, type metadata accessor for Apple_Fitness_Intelligence_AudioStreamDescription);
  sub_1B4975024(v34, &qword_1EB8A76C8, &unk_1B4D22410);
  if ((v46 & 1) == 0)
  {
    goto LABEL_40;
  }

LABEL_11:
  if ((v84[2] != v41[2] || v84[3] != v41[3]) && (sub_1B4D18DCC() & 1) == 0)
  {
    goto LABEL_40;
  }

  v47 = v72;
  v48 = *(v72 + 32);
  v49 = *(v81 + 48);
  sub_1B4974FBC(v84 + v48, v21, &qword_1EB8A6938, &qword_1B4D1ACF8);
  sub_1B4974FBC(v41 + v48, &v21[v49], &qword_1EB8A6938, &qword_1B4D1ACF8);
  v50 = v83;
  v51 = *(v82 + 48);
  if (v51(v21, 1, v83) == 1)
  {
    v52 = v51(&v21[v49], 1, v50);
    v53 = v73;
    if (v52 == 1)
    {
      sub_1B4975024(v21, &qword_1EB8A6938, &qword_1B4D1ACF8);
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  v54 = v80;
  sub_1B4974FBC(v21, v80, &qword_1EB8A6938, &qword_1B4D1ACF8);
  v55 = v51(&v21[v49], 1, v50);
  v53 = v73;
  if (v55 == 1)
  {
    sub_1B4A46828(v54, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice);
LABEL_19:
    v43 = &qword_1EB8A8D50;
    v44 = &qword_1B4D25750;
    v45 = v21;
    goto LABEL_39;
  }

  v56 = &v21[v49];
  v57 = v76;
  sub_1B4A3CCD0(v56, v76, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice);
  v58 = _s19FitnessIntelligence06Apple_a1_B20_AudioSynthesisVoiceV2eeoiySbAC_ACtFZ_0(v54, v57);
  sub_1B4A46828(v57, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice);
  sub_1B4A46828(v54, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice);
  sub_1B4975024(v21, &qword_1EB8A6938, &qword_1B4D1ACF8);
  if ((v58 & 1) == 0)
  {
    goto LABEL_40;
  }

LABEL_21:
  v59 = *(v47 + 36);
  v60 = *(v77 + 48);
  sub_1B4974FBC(v84 + v59, v53, &qword_1EB8A76C0, &qword_1B4D1E798);
  sub_1B4974FBC(v85 + v59, v53 + v60, &qword_1EB8A76C0, &qword_1B4D1E798);
  v61 = v79;
  v62 = *(v78 + 48);
  if (v62(v53, 1, v79) != 1)
  {
    v65 = v75;
    sub_1B4974FBC(v53, v75, &qword_1EB8A76C0, &qword_1B4D1E798);
    if (v62(v53 + v60, 1, v61) == 1)
    {
      sub_1B4A46828(v65, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisIntensity);
      goto LABEL_27;
    }

    v66 = v74;
    sub_1B4A3CCD0(v53 + v60, v74, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisIntensity);
    v67 = *v65;
    v68 = *v66;
    if (*(v66 + 8) == 1)
    {
      if (v68)
      {
        if (v68 == 1)
        {
          if (v67 != 1)
          {
            goto LABEL_37;
          }
        }

        else if (v67 != 2)
        {
          goto LABEL_37;
        }

        goto LABEL_34;
      }

      if (v67)
      {
LABEL_37:
        sub_1B4A46828(v66, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisIntensity);
        sub_1B4A46828(v65, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisIntensity);
        v43 = &qword_1EB8A76C0;
        v44 = &qword_1B4D1E798;
        goto LABEL_38;
      }
    }

    else if (v67 != v68)
    {
      goto LABEL_37;
    }

LABEL_34:
    v69 = *(v61 + 20);
    sub_1B4D17BCC();
    sub_1B4A5C360(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
    v70 = sub_1B4D1816C();
    sub_1B4A46828(v66, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisIntensity);
    sub_1B4A46828(v65, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisIntensity);
    sub_1B4975024(v53, &qword_1EB8A76C0, &qword_1B4D1E798);
    if (v70)
    {
      goto LABEL_24;
    }

LABEL_40:
    v64 = 0;
    return v64 & 1;
  }

  if (v62(v53 + v60, 1, v61) != 1)
  {
LABEL_27:
    v43 = &qword_1EB8A8D48;
    v44 = &qword_1B4D25748;
LABEL_38:
    v45 = v53;
    goto LABEL_39;
  }

  sub_1B4975024(v53, &qword_1EB8A76C0, &qword_1B4D1E798);
LABEL_24:
  v63 = *(v47 + 24);
  sub_1B4D17BCC();
  sub_1B4A5C360(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
  v64 = sub_1B4D1816C();
  return v64 & 1;
}

uint64_t _s19FitnessIntelligence06Apple_a1_B24_AudioSynthesisIntensityV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a2 + 8) == 1)
  {
    if (v3)
    {
      if (v3 == 1)
      {
        if (v2 != 1)
        {
          return 0;
        }
      }

      else if (v2 != 2)
      {
        return 0;
      }

LABEL_7:
      v4 = *(type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisIntensity(0) + 20);
      sub_1B4D17BCC();
      sub_1B4A5C360(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
      return sub_1B4D1816C() & 1;
    }

    if (!v2)
    {
      goto LABEL_7;
    }
  }

  else if (v2 == v3)
  {
    goto LABEL_7;
  }

  return 0;
}

uint64_t _s19FitnessIntelligence06Apple_a1_B23_AudioStreamDescriptionV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8) || *(a1 + 12) != *(a2 + 12) || *(a1 + 16) != *(a2 + 16) || *(a1 + 20) != *(a2 + 20) || *(a1 + 24) != *(a2 + 24) || *(a1 + 28) != *(a2 + 28) || *(a1 + 32) != *(a2 + 32) || *(a1 + 36) != *(a2 + 36))
  {
    return 0;
  }

  v2 = *(type metadata accessor for Apple_Fitness_Intelligence_AudioStreamDescription(0) + 52);
  sub_1B4D17BCC();
  sub_1B4A5C360(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
  return sub_1B4D1816C() & 1;
}

uint64_t _s19FitnessIntelligence06Apple_a1_B22_InferenceAvailabilityV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = *a2;
  if (*(a1 + 8))
  {
    v4 = *a1 != 0;
  }

  if (*(a2 + 8) == 1)
  {
    if (v5)
    {
      if (v4 != 1)
      {
        return 0;
      }
    }

    else if (v4)
    {
      return 0;
    }
  }

  else if (v4 != v5)
  {
    return 0;
  }

  v6 = type metadata accessor for Apple_Fitness_Intelligence_InferenceAvailability(0);
  v7 = *(v6 + 24);
  v8 = (a1 + v7);
  v9 = *(a1 + v7 + 8);
  v10 = (a2 + v7);
  v11 = v10[1];
  if (v9)
  {
    if (!v11)
    {
      return 0;
    }

    if (*v8 != *v10 || v9 != v11)
    {
      v13 = v6;
      v14 = sub_1B4D18DCC();
      v6 = v13;
      if ((v14 & 1) == 0)
      {
        return 0;
      }
    }

LABEL_17:
    v15 = *(v6 + 20);
    sub_1B4D17BCC();
    sub_1B4A5C360(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
    return sub_1B4D1816C() & 1;
  }

  if (!v11)
  {
    goto LABEL_17;
  }

  return 0;
}

uint64_t _s19FitnessIntelligence06Apple_a1_B20_StreamingAudioChunkV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_1B4D18DCC() & 1) == 0 || *(a1 + 16) != *(a2 + 16) || (sub_1B4BDD628(*(a1 + 24), *(a1 + 32), *(a2 + 24), *(a2 + 32)) & 1) == 0 || *(a1 + 40) != *(a2 + 40) || (sub_1B4BDD628(*(a1 + 48), *(a1 + 56), *(a2 + 48), *(a2 + 56)) & 1) == 0)
  {
    return 0;
  }

  v5 = *(type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioChunk(0) + 36);
  sub_1B4D17BCC();
  sub_1B4A5C360(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
  return sub_1B4D1816C() & 1;
}

uint64_t _s19FitnessIntelligence06Apple_a1_B18_InferenceFeedbackV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult(0);
  v63 = *(v4 - 8);
  v64 = v4;
  v5 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v60 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6940, &unk_1B4D22400);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v61 = &v59 - v9;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D70, &qword_1B4D25770);
  v10 = *(*(v62 - 8) + 64);
  MEMORY[0x1EEE9AC00](v62);
  v65 = &v59 - v11;
  v12 = type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v66 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A83B8, &qword_1B4D22420);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v59 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D78, &qword_1B4D25778);
  v21 = v20 - 8;
  v22 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v59 - v23;
  v67 = type metadata accessor for Apple_Fitness_Intelligence_InferenceFeedback(0);
  v68 = a1;
  v25 = *(v67 + 24);
  v26 = *(v21 + 56);
  sub_1B4974FBC(a1 + v25, v24, &qword_1EB8A83B8, &qword_1B4D22420);
  sub_1B4974FBC(a2 + v25, &v24[v26], &qword_1EB8A83B8, &qword_1B4D22420);
  v27 = *(v13 + 48);
  if (v27(v24, 1, v12) == 1)
  {
    if (v27(&v24[v26], 1, v12) == 1)
    {
      sub_1B4975024(v24, &qword_1EB8A83B8, &qword_1B4D22420);
      goto LABEL_14;
    }

    goto LABEL_6;
  }

  sub_1B4974FBC(v24, v19, &qword_1EB8A83B8, &qword_1B4D22420);
  if (v27(&v24[v26], 1, v12) == 1)
  {
    sub_1B4A46828(v19, type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord);
LABEL_6:
    v28 = &qword_1EB8A8D78;
    v29 = &qword_1B4D25778;
LABEL_7:
    v30 = v24;
LABEL_8:
    sub_1B4975024(v30, v28, v29);
    goto LABEL_9;
  }

  v33 = v66;
  sub_1B4A3CCD0(&v24[v26], v66, type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord);
  v34 = *(v12 + 20);
  v35 = *&v19[v34];
  v36 = *(v33 + v34);
  if (v35 != v36)
  {
    v37 = *&v19[v34];

    v38 = sub_1B4A47748(v35, v36);

    if (!v38)
    {
      sub_1B4A46828(v33, type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord);
      sub_1B4A46828(v19, type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord);
      v28 = &qword_1EB8A83B8;
      v29 = &qword_1B4D22420;
      goto LABEL_7;
    }
  }

  sub_1B4D17BCC();
  sub_1B4A5C360(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
  v39 = sub_1B4D1816C();
  sub_1B4A46828(v33, type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord);
  sub_1B4A46828(v19, type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord);
  sub_1B4975024(v24, &qword_1EB8A83B8, &qword_1B4D22420);
  if ((v39 & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_14:
  v40 = v68;
  if ((*v68 != *a2 || v68[1] != a2[1]) && (sub_1B4D18DCC() & 1) == 0)
  {
    goto LABEL_9;
  }

  v41 = v67;
  v42 = *(v67 + 28);
  v43 = (v40 + v42);
  v44 = *(v40 + v42 + 8);
  v45 = (a2 + v42);
  v46 = v45[1];
  if (v44)
  {
    if (!v46 || (*v43 != *v45 || v44 != v46) && (sub_1B4D18DCC() & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  else if (v46)
  {
    goto LABEL_9;
  }

  v47 = *(v41 + 32);
  v48 = *(v62 + 48);
  v49 = v65;
  sub_1B4974FBC(v40 + v47, v65, &qword_1EB8A6940, &unk_1B4D22400);
  v50 = a2 + v47;
  v51 = v49;
  sub_1B4974FBC(v50, v49 + v48, &qword_1EB8A6940, &unk_1B4D22400);
  v52 = v64;
  v53 = *(v63 + 48);
  if (v53(v49, 1, v64) == 1)
  {
    if (v53(v49 + v48, 1, v52) == 1)
    {
      sub_1B4975024(v49, &qword_1EB8A6940, &unk_1B4D22400);
LABEL_32:
      v58 = *(v41 + 20);
      sub_1B4D17BCC();
      sub_1B4A5C360(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
      v31 = sub_1B4D1816C();
      return v31 & 1;
    }

    goto LABEL_30;
  }

  v54 = v61;
  sub_1B4974FBC(v51, v61, &qword_1EB8A6940, &unk_1B4D22400);
  if (v53(v51 + v48, 1, v52) == 1)
  {
    sub_1B4A46828(v54, type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult);
LABEL_30:
    v28 = &qword_1EB8A8D70;
    v29 = &qword_1B4D25770;
    v30 = v51;
    goto LABEL_8;
  }

  v55 = v51 + v48;
  v56 = v60;
  sub_1B4A3CCD0(v55, v60, type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult);
  v57 = _s19FitnessIntelligence06Apple_a1_B24_AnnounceUtteranceResultV2eeoiySbAC_ACtFZ_0(v54, v56);
  sub_1B4A46828(v56, type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult);
  sub_1B4A46828(v54, type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult);
  sub_1B4975024(v51, &qword_1EB8A6940, &unk_1B4D22400);
  if (v57)
  {
    goto LABEL_32;
  }

LABEL_9:
  v31 = 0;
  return v31 & 1;
}

uint64_t _s19FitnessIntelligence06Apple_a1_B24_AnnounceUtteranceResultV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult(0);
  v5 = v4[5];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 8);
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }
  }

  else
  {
    if (*v6 != *v8)
    {
      LOBYTE(v9) = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  v10 = v4[6];
  v11 = (a1 + v10);
  v12 = *(a1 + v10 + 8);
  v13 = (a2 + v10);
  v14 = *(a2 + v10 + 8);
  if (v12)
  {
    if (!v14)
    {
      return 0;
    }
  }

  else
  {
    if (*v11 != *v13)
    {
      LOBYTE(v14) = 1;
    }

    if (v14)
    {
      return 0;
    }
  }

  v15 = v4[7];
  v16 = (a1 + v15);
  v17 = *(a1 + v15 + 8);
  v18 = (a2 + v15);
  v19 = v18[1];
  if (v17)
  {
    if (!v19)
    {
      return 0;
    }

    if (*v16 != *v18 || v17 != v19)
    {
      v21 = v4;
      v22 = sub_1B4D18DCC();
      v4 = v21;
      if ((v22 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v19)
  {
    return 0;
  }

  v23 = v4[8];
  v24 = *(a1 + v23);
  v25 = *(a2 + v23);
  if (v24 == 2)
  {
    if (v25 != 2)
    {
      return 0;
    }
  }

  else if (v25 == 2 || ((v24 ^ v25) & 1) != 0)
  {
    return 0;
  }

  v26 = v4[9];
  v27 = (a1 + v26);
  v28 = *(a1 + v26 + 8);
  v29 = (a2 + v26);
  v30 = v29[1];
  if (!v28)
  {
    if (!v30)
    {
      goto LABEL_34;
    }

    return 0;
  }

  if (!v30)
  {
    return 0;
  }

  if (*v27 != *v29 || v28 != v30)
  {
    v31 = v4;
    v32 = sub_1B4D18DCC();
    v4 = v31;
    if ((v32 & 1) == 0)
    {
      return 0;
    }
  }

LABEL_34:
  v33 = v4[10];
  v34 = (a1 + v33);
  v35 = *(a1 + v33 + 8);
  v36 = (a2 + v33);
  v37 = *(a2 + v33 + 8);
  if (v35)
  {
    if (!v37)
    {
      return 0;
    }
  }

  else
  {
    if (*v34 != *v36)
    {
      LOBYTE(v37) = 1;
    }

    if (v37)
    {
      return 0;
    }
  }

  sub_1B4D17BCC();
  sub_1B4A5C360(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
  return sub_1B4D1816C() & 1;
}

uint64_t _s19FitnessIntelligence06Apple_a1_B16_InferenceResultV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v104 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6938, &qword_1B4D1ACF8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v104 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D50, &qword_1B4D25750);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v104 - v15;
  v111 = type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult(0);
  v109 = *(v111 - 8);
  v17 = *(v109 + 64);
  MEMORY[0x1EEE9AC00](v111);
  v19 = &v104 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6940, &unk_1B4D22400);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v110 = &v104 - v22;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D70, &qword_1B4D25770);
  v23 = *(*(v108 - 8) + 64);
  MEMORY[0x1EEE9AC00](v108);
  v25 = &v104 - v24;
  v26 = type metadata accessor for Apple_Fitness_Intelligence_InferenceResult(0);
  v27 = v26[5];
  v28 = (a1 + v27);
  v29 = *(a1 + v27 + 8);
  v30 = (a2 + v27);
  v31 = v30[1];
  if (v29)
  {
    if (!v31)
    {
      goto LABEL_49;
    }

    if (*v28 != *v30 || v29 != v31)
    {
      v107 = v19;
      v32 = v25;
      v33 = v13;
      v34 = v5;
      v35 = v12;
      v36 = v4;
      v37 = a1;
      v38 = a2;
      v39 = v16;
      v40 = v8;
      v41 = v26;
      v42 = sub_1B4D18DCC();
      v26 = v41;
      v8 = v40;
      v16 = v39;
      a2 = v38;
      a1 = v37;
      v4 = v36;
      v12 = v35;
      v5 = v34;
      v13 = v33;
      v25 = v32;
      v19 = v107;
      if ((v42 & 1) == 0)
      {
        goto LABEL_49;
      }
    }
  }

  else if (v31)
  {
    goto LABEL_49;
  }

  v43 = v26[6];
  v44 = (a1 + v43);
  v45 = *(a1 + v43 + 8);
  v46 = (a2 + v43);
  v47 = *(a2 + v43 + 8);
  if (v45)
  {
    if (!v47)
    {
      goto LABEL_49;
    }
  }

  else
  {
    if (*v44 != *v46)
    {
      LOBYTE(v47) = 1;
    }

    if (v47)
    {
      goto LABEL_49;
    }
  }

  v48 = v26[7];
  v49 = (a1 + v48);
  v50 = *(a1 + v48 + 8);
  v51 = (a2 + v48);
  v52 = v51[1];
  if (v50)
  {
    if (!v52)
    {
      goto LABEL_49;
    }

    if (*v49 != *v51 || v50 != v52)
    {
      v107 = v19;
      v53 = v25;
      v54 = v13;
      v55 = v5;
      v56 = v12;
      v57 = v4;
      v58 = a1;
      v59 = a2;
      v60 = v16;
      v61 = v8;
      v62 = v26;
      v63 = sub_1B4D18DCC();
      v26 = v62;
      v8 = v61;
      v16 = v60;
      a2 = v59;
      a1 = v58;
      v4 = v57;
      v12 = v56;
      v5 = v55;
      v13 = v54;
      v25 = v53;
      v19 = v107;
      if ((v63 & 1) == 0)
      {
        goto LABEL_49;
      }
    }
  }

  else if (v52)
  {
    goto LABEL_49;
  }

  v64 = v26[8];
  v65 = (a1 + v64);
  v66 = *(a1 + v64 + 8);
  v67 = (a2 + v64);
  v68 = v67[1];
  if (v66)
  {
    if (!v68)
    {
      goto LABEL_49;
    }

    if (*v65 != *v67 || v66 != v68)
    {
      v107 = v19;
      v69 = v25;
      v70 = v13;
      v71 = v5;
      v72 = v12;
      v73 = v4;
      v74 = a1;
      v75 = a2;
      v76 = v16;
      v77 = v8;
      v78 = v26;
      v79 = sub_1B4D18DCC();
      v26 = v78;
      v8 = v77;
      v16 = v76;
      a2 = v75;
      a1 = v74;
      v4 = v73;
      v12 = v72;
      v5 = v71;
      v13 = v70;
      v25 = v69;
      v19 = v107;
      if ((v79 & 1) == 0)
      {
        goto LABEL_49;
      }
    }
  }

  else if (v68)
  {
    goto LABEL_49;
  }

  v80 = v26[9];
  v81 = (a1 + v80);
  v82 = *(a1 + v80 + 8);
  v83 = (a2 + v80);
  v84 = v83[1];
  if (v82)
  {
    if (!v84)
    {
      goto LABEL_49;
    }

    v106 = v8;
    if (*v81 != *v83 || v82 != v84)
    {
      v85 = v26;
      v86 = sub_1B4D18DCC();
      v26 = v85;
      if ((v86 & 1) == 0)
      {
        goto LABEL_49;
      }
    }
  }

  else
  {
    v106 = v8;
    if (v84)
    {
      goto LABEL_49;
    }
  }

  v107 = v19;
  v105 = v26;
  v87 = v26[10];
  v88 = *(v108 + 48);
  sub_1B4974FBC(a1 + v87, v25, &qword_1EB8A6940, &unk_1B4D22400);
  v108 = v88;
  sub_1B4974FBC(a2 + v87, &v25[v88], &qword_1EB8A6940, &unk_1B4D22400);
  v89 = v111;
  v109 = *(v109 + 48);
  if ((v109)(v25, 1, v111) != 1)
  {
    sub_1B4974FBC(v25, v110, &qword_1EB8A6940, &unk_1B4D22400);
    if ((v109)(&v25[v108], 1, v89) != 1)
    {
      v93 = v107;
      sub_1B4A3CCD0(&v25[v108], v107, type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult);
      v94 = v110;
      LODWORD(v109) = _s19FitnessIntelligence06Apple_a1_B24_AnnounceUtteranceResultV2eeoiySbAC_ACtFZ_0(v110, v93);
      v111 = v13;
      sub_1B4A46828(v93, type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult);
      v13 = v111;
      sub_1B4A46828(v94, type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult);
      sub_1B4975024(v25, &qword_1EB8A6940, &unk_1B4D22400);
      if ((v109 & 1) == 0)
      {
        goto LABEL_49;
      }

      goto LABEL_42;
    }

    sub_1B4A46828(v110, type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult);
LABEL_40:
    v90 = &qword_1EB8A8D70;
    v91 = &qword_1B4D25770;
    v92 = v25;
LABEL_48:
    sub_1B4975024(v92, v90, v91);
    goto LABEL_49;
  }

  if ((v109)(&v25[v108], 1, v89) != 1)
  {
    goto LABEL_40;
  }

  sub_1B4975024(v25, &qword_1EB8A6940, &unk_1B4D22400);
LABEL_42:
  v95 = v12;
  v96 = v105[11];
  v97 = v4;
  v98 = *(v13 + 48);
  sub_1B4974FBC(a1 + v96, v16, &qword_1EB8A6938, &qword_1B4D1ACF8);
  sub_1B4974FBC(a2 + v96, &v16[v98], &qword_1EB8A6938, &qword_1B4D1ACF8);
  v99 = *(v5 + 48);
  if (v99(v16, 1, v97) == 1)
  {
    if (v99(&v16[v98], 1, v97) == 1)
    {
      sub_1B4975024(v16, &qword_1EB8A6938, &qword_1B4D1ACF8);
LABEL_52:
      sub_1B4D17BCC();
      sub_1B4A5C360(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
      v100 = sub_1B4D1816C();
      return v100 & 1;
    }

    goto LABEL_47;
  }

  sub_1B4974FBC(v16, v95, &qword_1EB8A6938, &qword_1B4D1ACF8);
  if (v99(&v16[v98], 1, v97) == 1)
  {
    sub_1B4A46828(v95, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice);
LABEL_47:
    v90 = &qword_1EB8A8D50;
    v91 = &qword_1B4D25750;
    v92 = v16;
    goto LABEL_48;
  }

  v102 = v106;
  sub_1B4A3CCD0(&v16[v98], v106, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice);
  v103 = _s19FitnessIntelligence06Apple_a1_B20_AudioSynthesisVoiceV2eeoiySbAC_ACtFZ_0(v95, v102);
  sub_1B4A46828(v102, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice);
  sub_1B4A46828(v95, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice);
  sub_1B4975024(v16, &qword_1EB8A6938, &qword_1B4D1ACF8);
  if (v103)
  {
    goto LABEL_52;
  }

LABEL_49:
  v100 = 0;
  return v100 & 1;
}

uint64_t _s19FitnessIntelligence06Apple_a1_B20_AudioSynthesisVoiceV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice(0);
  v5 = *(v4 + 20);
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }

    if (*v6 != *v8 || v7 != v9)
    {
      v11 = v4;
      v12 = sub_1B4D18DCC();
      v4 = v11;
      if ((v12 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v9)
  {
    return 0;
  }

  v13 = *(v4 + 24);
  v14 = (a1 + v13);
  v15 = *(a1 + v13 + 8);
  v16 = (a2 + v13);
  v17 = v16[1];
  if (v15)
  {
    if (v17)
    {
      v18 = *v14 == *v16 && v15 == v17;
      if (v18 || (sub_1B4D18DCC() & 1) != 0)
      {
        goto LABEL_17;
      }
    }
  }

  else if (!v17)
  {
LABEL_17:
    sub_1B4D17BCC();
    sub_1B4A5C360(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
    return sub_1B4D1816C() & 1;
  }

  return 0;
}

uint64_t _s19FitnessIntelligence06Apple_a1_B29_AudioSynthesisVoiceSelectionV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6938, &qword_1B4D1ACF8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v27 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D50, &qword_1B4D25750);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v27 - v15;
  v17 = *a1;
  v18 = *a2;
  if (*(a1 + 8))
  {
    v17 = *a1 != 0;
  }

  if (*(a2 + 8) == 1)
  {
    if (v18)
    {
      if (v17 != 1)
      {
        goto LABEL_16;
      }
    }

    else if (v17)
    {
      goto LABEL_16;
    }
  }

  else if (v17 != v18)
  {
    goto LABEL_16;
  }

  v27 = v8;
  v28 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceSelection(0);
  v19 = *(v28 + 24);
  v20 = *(v13 + 48);
  sub_1B4974FBC(a1 + v19, v16, &qword_1EB8A6938, &qword_1B4D1ACF8);
  sub_1B4974FBC(a2 + v19, &v16[v20], &qword_1EB8A6938, &qword_1B4D1ACF8);
  v21 = *(v5 + 48);
  if (v21(v16, 1, v4) == 1)
  {
    if (v21(&v16[v20], 1, v4) == 1)
    {
      sub_1B4975024(v16, &qword_1EB8A6938, &qword_1B4D1ACF8);
LABEL_19:
      v26 = *(v28 + 20);
      sub_1B4D17BCC();
      sub_1B4A5C360(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
      v22 = sub_1B4D1816C();
      return v22 & 1;
    }

    goto LABEL_15;
  }

  sub_1B4974FBC(v16, v12, &qword_1EB8A6938, &qword_1B4D1ACF8);
  if (v21(&v16[v20], 1, v4) == 1)
  {
    sub_1B4A46828(v12, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice);
LABEL_15:
    sub_1B4975024(v16, &qword_1EB8A8D50, &qword_1B4D25750);
    goto LABEL_16;
  }

  v24 = v27;
  sub_1B4A3CCD0(&v16[v20], v27, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice);
  v25 = _s19FitnessIntelligence06Apple_a1_B20_AudioSynthesisVoiceV2eeoiySbAC_ACtFZ_0(v12, v24);
  sub_1B4A46828(v24, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice);
  sub_1B4A46828(v12, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice);
  sub_1B4975024(v16, &qword_1EB8A6938, &qword_1B4D1ACF8);
  if (v25)
  {
    goto LABEL_19;
  }

LABEL_16:
  v22 = 0;
  return v22 & 1;
}

uint64_t _s19FitnessIntelligence06Apple_a1_B23_AudioSynthesisSettingsV2eeoiySbAC_ACtFZ_0(_DWORD *a1, _DWORD *a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceSelection(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v27 = (&v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8790, &qword_1B4D22450);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = (&v25 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D68, &qword_1B4D25768);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v25 - v15;
  v26 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisSettings(0);
  v17 = *(v26 + 24);
  v18 = *(v13 + 56);
  v28 = a1;
  sub_1B4974FBC(a1 + v17, v16, &qword_1EB8A8790, &qword_1B4D22450);
  sub_1B4974FBC(a2 + v17, &v16[v18], &qword_1EB8A8790, &qword_1B4D22450);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      sub_1B4975024(v16, &qword_1EB8A8790, &qword_1B4D22450);
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  sub_1B4974FBC(v16, v11, &qword_1EB8A8790, &qword_1B4D22450);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    sub_1B4A46828(v11, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceSelection);
LABEL_6:
    sub_1B4975024(v16, &qword_1EB8A8D68, &qword_1B4D25768);
LABEL_10:
    v23 = 0;
    return v23 & 1;
  }

  v20 = v27;
  sub_1B4A3CCD0(&v16[v18], v27, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceSelection);
  v21 = _s19FitnessIntelligence06Apple_a1_B29_AudioSynthesisVoiceSelectionV2eeoiySbAC_ACtFZ_0(v11, v20);
  sub_1B4A46828(v20, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceSelection);
  sub_1B4A46828(v11, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceSelection);
  sub_1B4975024(v16, &qword_1EB8A8790, &qword_1B4D22450);
  if ((v21 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_8:
  if (*v28 != *a2)
  {
    goto LABEL_10;
  }

  v22 = *(v26 + 20);
  sub_1B4D17BCC();
  sub_1B4A5C360(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
  v23 = sub_1B4D1816C();
  return v23 & 1;
}

uint64_t _s19FitnessIntelligence06Apple_a1_B17_InferenceRequestV2eeoiySbAC_ACtFZ_0(uint64_t a1, int *a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_InferenceTelemetryIdentifier(0);
  v97 = *(v4 - 8);
  v98 = v4;
  v5 = *(v97 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v92 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8780, &qword_1B4D22440);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v96 = (&v92 - v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8DA0, &unk_1B4D257A0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v92 - v13;
  v15 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisSettings(0);
  v99 = *(v15 - 8);
  v16 = *(v99 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = (&v92 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8778, &qword_1B4D22438);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = (&v92 - v21);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D98, &qword_1B4D25798);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v92 - v25;
  v27 = type metadata accessor for Apple_Fitness_Intelligence_InferenceRequest(0);
  v28 = v27[5];
  v29 = (a1 + v28);
  v30 = *(a1 + v28 + 8);
  v31 = (a2 + v28);
  v32 = v31[1];
  if (v30)
  {
    if (!v32)
    {
      goto LABEL_22;
    }

    if (*v29 != *v31 || v30 != v32)
    {
      v95 = a2;
      v33 = v15;
      v34 = a1;
      v35 = v22;
      v36 = v7;
      v37 = v18;
      v38 = v11;
      v39 = v27;
      v40 = sub_1B4D18DCC();
      v27 = v39;
      v11 = v38;
      v18 = v37;
      v7 = v36;
      v22 = v35;
      a1 = v34;
      v15 = v33;
      a2 = v95;
      if ((v40 & 1) == 0)
      {
        goto LABEL_22;
      }
    }
  }

  else if (v32)
  {
    goto LABEL_22;
  }

  v41 = v27[6];
  v42 = (a1 + v41);
  v43 = *(a1 + v41 + 8);
  v44 = (a2 + v41);
  v45 = v44[1];
  if (v43)
  {
    if (!v45)
    {
      goto LABEL_22;
    }

    if (*v42 != *v44 || v43 != v45)
    {
      v95 = a2;
      v46 = v15;
      v47 = a1;
      v48 = v22;
      v49 = v7;
      v50 = v18;
      v51 = v11;
      v52 = v27;
      v53 = sub_1B4D18DCC();
      v27 = v52;
      v11 = v51;
      v18 = v50;
      v7 = v49;
      v22 = v48;
      a1 = v47;
      v15 = v46;
      a2 = v95;
      if ((v53 & 1) == 0)
      {
        goto LABEL_22;
      }
    }
  }

  else if (v45)
  {
    goto LABEL_22;
  }

  v92 = v7;
  v93 = v14;
  v54 = v27[7];
  v55 = *(v23 + 48);
  v94 = a1;
  v95 = v27;
  sub_1B4974FBC(a1 + v54, v26, &qword_1EB8A8778, &qword_1B4D22438);
  v56 = a2 + v54;
  v57 = a2;
  sub_1B4974FBC(v56, &v26[v55], &qword_1EB8A8778, &qword_1B4D22438);
  v58 = *(v99 + 48);
  if (v58(v26, 1, v15) == 1)
  {
    if (v58(&v26[v55], 1, v15) == 1)
    {
      sub_1B4975024(v26, &qword_1EB8A8778, &qword_1B4D22438);
      goto LABEL_25;
    }

LABEL_20:
    v59 = &qword_1EB8A8D98;
    v60 = &qword_1B4D25798;
    v61 = v26;
LABEL_21:
    sub_1B4975024(v61, v59, v60);
    goto LABEL_22;
  }

  sub_1B4974FBC(v26, v22, &qword_1EB8A8778, &qword_1B4D22438);
  if (v58(&v26[v55], 1, v15) == 1)
  {
    sub_1B4A46828(v22, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisSettings);
    goto LABEL_20;
  }

  sub_1B4A3CCD0(&v26[v55], v18, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisSettings);
  v64 = _s19FitnessIntelligence06Apple_a1_B23_AudioSynthesisSettingsV2eeoiySbAC_ACtFZ_0(v22, v18);
  sub_1B4A46828(v18, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisSettings);
  sub_1B4A46828(v22, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisSettings);
  sub_1B4975024(v26, &qword_1EB8A8778, &qword_1B4D22438);
  if ((v64 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_25:
  v66 = v94;
  v65 = v95;
  v67 = v95[8];
  v68 = (v94 + v67);
  v69 = *(v94 + v67 + 8);
  v70 = (a2 + v67);
  v71 = v70[1];
  if (v69)
  {
    if (!v71)
    {
      goto LABEL_22;
    }

    if (*v68 != *v70 || v69 != v71)
    {
      v72 = sub_1B4D18DCC();
      v65 = v95;
      if ((v72 & 1) == 0)
      {
        goto LABEL_22;
      }
    }
  }

  else if (v71)
  {
    goto LABEL_22;
  }

  v73 = v65[9];
  v74 = *(v11 + 48);
  v75 = v93;
  sub_1B4974FBC(v66 + v73, v93, &qword_1EB8A8780, &qword_1B4D22440);
  sub_1B4974FBC(v57 + v73, v75 + v74, &qword_1EB8A8780, &qword_1B4D22440);
  v76 = v98;
  v77 = *(v97 + 48);
  if (v77(v75, 1, v98) != 1)
  {
    v78 = v96;
    sub_1B4974FBC(v75, v96, &qword_1EB8A8780, &qword_1B4D22440);
    if (v77(v75 + v74, 1, v76) != 1)
    {
      v79 = v75 + v74;
      v80 = v92;
      sub_1B4A3CCD0(v79, v92, type metadata accessor for Apple_Fitness_Intelligence_InferenceTelemetryIdentifier);
      v81 = _s19FitnessIntelligence06Apple_a1_B29_InferenceTelemetryIdentifierV2eeoiySbAC_ACtFZ_0(v78, v80);
      sub_1B4A46828(v80, type metadata accessor for Apple_Fitness_Intelligence_InferenceTelemetryIdentifier);
      sub_1B4A46828(v78, type metadata accessor for Apple_Fitness_Intelligence_InferenceTelemetryIdentifier);
      sub_1B4975024(v75, &qword_1EB8A8780, &qword_1B4D22440);
      if ((v81 & 1) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_39;
    }

    sub_1B4A46828(v78, type metadata accessor for Apple_Fitness_Intelligence_InferenceTelemetryIdentifier);
    goto LABEL_37;
  }

  if (v77(v75 + v74, 1, v76) != 1)
  {
LABEL_37:
    v59 = &qword_1EB8A8DA0;
    v60 = &unk_1B4D257A0;
    v61 = v75;
    goto LABEL_21;
  }

  sub_1B4975024(v75, &qword_1EB8A8780, &qword_1B4D22440);
LABEL_39:
  v82 = v95;
  v83 = v95[10];
  v84 = (v66 + v83);
  v85 = *(v66 + v83 + 8);
  v86 = (v57 + v83);
  v87 = v86[1];
  if (v85)
  {
    if (!v87)
    {
      goto LABEL_22;
    }

    if (*v84 != *v86 || v85 != v87)
    {
      v88 = sub_1B4D18DCC();
      v82 = v95;
      if ((v88 & 1) == 0)
      {
        goto LABEL_22;
      }
    }
  }

  else if (v87)
  {
    goto LABEL_22;
  }

  v89 = v82[11];
  v90 = *(v66 + v89);
  v91 = *(v57 + v89);
  if (v90 == 2)
  {
    if (v91 == 2)
    {
LABEL_51:
      sub_1B4D17BCC();
      sub_1B4A5C360(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
      v62 = sub_1B4D1816C();
      return v62 & 1;
    }
  }

  else if (v91 != 2 && ((v90 ^ v91) & 1) == 0)
  {
    goto LABEL_51;
  }

LABEL_22:
  v62 = 0;
  return v62 & 1;
}

uint64_t _s19FitnessIntelligence06Apple_a1_B16_InferenceRecordV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);
  if (v5 != v6)
  {
    v7 = *(a1 + v4);

    v8 = sub_1B4A47748(v5, v6);

    if (!v8)
    {
      return 0;
    }
  }

  sub_1B4D17BCC();
  sub_1B4A5C360(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08]);
  return sub_1B4D1816C() & 1;
}

uint64_t sub_1B4A5C360(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1B4A5C3A8()
{
  result = qword_1EB8A87C0;
  if (!qword_1EB8A87C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A87C0);
  }

  return result;
}

unint64_t sub_1B4A5C3FC()
{
  result = qword_1EDC377E8;
  if (!qword_1EDC377E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC377E8);
  }

  return result;
}

unint64_t sub_1B4A5C450()
{
  result = qword_1EB8A87F8;
  if (!qword_1EB8A87F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A87F8);
  }

  return result;
}

unint64_t sub_1B4A5C4A4()
{
  result = qword_1EDC3B2D8[0];
  if (!qword_1EDC3B2D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDC3B2D8);
  }

  return result;
}

unint64_t sub_1B4A5C4F8()
{
  result = qword_1EB8A8850;
  if (!qword_1EB8A8850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A8850);
  }

  return result;
}

unint64_t sub_1B4A5C550()
{
  result = qword_1EB8A8890;
  if (!qword_1EB8A8890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A8890);
  }

  return result;
}

unint64_t sub_1B4A5C5A8()
{
  result = qword_1EB8A8898;
  if (!qword_1EB8A8898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A8898);
  }

  return result;
}

unint64_t sub_1B4A5C630()
{
  result = qword_1EB8A88B0;
  if (!qword_1EB8A88B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A88B0);
  }

  return result;
}

unint64_t sub_1B4A5C688()
{
  result = qword_1EDC377E0;
  if (!qword_1EDC377E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC377E0);
  }

  return result;
}

unint64_t sub_1B4A5C6E0()
{
  result = qword_1EDC377D0;
  if (!qword_1EDC377D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC377D0);
  }

  return result;
}

unint64_t sub_1B4A5C768()
{
  result = qword_1EDC377D8;
  if (!qword_1EDC377D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC377D8);
  }

  return result;
}

unint64_t sub_1B4A5C7C0()
{
  result = qword_1EB8A88C8;
  if (!qword_1EB8A88C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A88C8);
  }

  return result;
}

unint64_t sub_1B4A5C818()
{
  result = qword_1EB8A88D0;
  if (!qword_1EB8A88D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A88D0);
  }

  return result;
}

unint64_t sub_1B4A5C8A0()
{
  result = qword_1EB8A88E8;
  if (!qword_1EB8A88E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A88E8);
  }

  return result;
}

unint64_t sub_1B4A5C8F8()
{
  result = qword_1EDC3B2D0;
  if (!qword_1EDC3B2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC3B2D0);
  }

  return result;
}

unint64_t sub_1B4A5C950()
{
  result = qword_1EDC3B2C0;
  if (!qword_1EDC3B2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC3B2C0);
  }

  return result;
}

unint64_t sub_1B4A5C9D8()
{
  result = qword_1EDC3B2C8;
  if (!qword_1EDC3B2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC3B2C8);
  }

  return result;
}

unint64_t sub_1B4A5CA30()
{
  result = qword_1EB8A8900;
  if (!qword_1EB8A8900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A8900);
  }

  return result;
}

unint64_t sub_1B4A5CA88()
{
  result = qword_1EB8A8908;
  if (!qword_1EB8A8908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A8908);
  }

  return result;
}

unint64_t sub_1B4A5CB10()
{
  result = qword_1EB8A8920;
  if (!qword_1EB8A8920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A8920);
  }

  return result;
}

uint64_t keypath_get_72Tm@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, double *a3@<X8>)
{
  result = a2(0);
  v6 = a1 + *(result + 24);
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0.0;
  }

  *a3 = v7;
  return result;
}

uint64_t keypath_set_73Tm(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = *a1;
  result = a5(0);
  v8 = a2 + *(result + 24);
  *v8 = v6;
  *(v8 + 8) = 0;
  return result;
}

uint64_t sub_1B4A5E95C()
{
  result = sub_1B4D17BCC();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord._StorageClass(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1B4A5EA08()
{
  sub_1B4D17BCC();
  if (v0 <= 0x3F)
  {
    sub_1B4A5FB28(319, &qword_1EDC3CEC0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1B4A5EB80(319, &qword_1EB8A8AE0, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisSettings, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1B4A5EB80(319, &qword_1EB8A8AE8, type metadata accessor for Apple_Fitness_Intelligence_InferenceTelemetryIdentifier, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          sub_1B4A5FB28(319, &qword_1EDC3CEB0, MEMORY[0x1E69E6370], MEMORY[0x1E69E6720]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1B4A5EB80(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B4A5EC0C()
{
  sub_1B4D17BCC();
  if (v0 <= 0x3F)
  {
    sub_1B4A5FB28(319, &qword_1EDC3CEC0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1B4A5EB80(319, &qword_1EB8A8AE0, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisSettings, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1B4A5FB28(319, &qword_1EDC3CEB0, MEMORY[0x1E69E6370], MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1B4A5ED6C()
{
  sub_1B4D17BCC();
  if (v0 <= 0x3F)
  {
    sub_1B4A5FB28(319, &qword_1EDC378D8, MEMORY[0x1E69E63B0], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1B4A5FB28(319, &qword_1EDC3CEC0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1B4A5FB28(319, &qword_1EDC3CEB0, MEMORY[0x1E69E6370], MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1B4A5EECC()
{
  sub_1B4D17BCC();
  if (v0 <= 0x3F)
  {
    sub_1B4A5EB80(319, &qword_1EDC3C2D0, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1B4A5EB80(319, qword_1EDC3B6A0, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset.DownloadProgress, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B4A5F050()
{
  sub_1B4D17BCC();
  if (v0 <= 0x3F)
  {
    sub_1B4A5FB28(319, &qword_1EDC3CEC0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B4A5F120()
{
  sub_1B4D17BCC();
  if (v0 <= 0x3F)
  {
    sub_1B4A5FB28(319, &qword_1EDC3CEC0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1B4A5FB28(319, &qword_1EDC378D8, MEMORY[0x1E69E63B0], MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1B4A5EB80(319, &qword_1EB8A8B20, type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          sub_1B4A5EB80(319, &qword_1EDC3C2D0, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice, MEMORY[0x1E69E6720]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1B4A5F2C4()
{
  sub_1B4D17BCC();
  if (v0 <= 0x3F)
  {
    sub_1B4A5EB80(319, &qword_1EB8A8B38, type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1B4A5FB28(319, &qword_1EDC3CEC0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1B4A5EB80(319, &qword_1EB8A8B20, type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1B4A5F434()
{
  sub_1B4D17BCC();
  if (v0 <= 0x3F)
  {
    sub_1B4A5FB28(319, &qword_1EDC3CEC0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_230Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v10 = sub_1B4D17BCC();
  v11 = *(v10 - 8);
  if (*(v11 + 84) == a2)
  {
    v12 = v10;
    v13 = *(v11 + 48);
    v14 = a1 + *(a3 + 20);

    return v13(v14, a2, v12);
  }

  else
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    v17 = *(*(v16 - 8) + 48);
    v18 = a1 + *(a3 + 24);

    return v17(v18, a2, v16);
  }
}

uint64_t __swift_store_extra_inhabitant_index_231Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v12 = sub_1B4D17BCC();
  v13 = *(v12 - 8);
  if (*(v13 + 84) == a3)
  {
    v14 = v12;
    v15 = *(v13 + 56);
    v16 = a1 + *(a4 + 20);

    return v15(v16, a2, a2, v14);
  }

  else
  {
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v19 = *(*(v18 - 8) + 56);
    v20 = a1 + *(a4 + 24);

    return v19(v20, a2, a2, v18);
  }
}

void sub_1B4A5F7D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t (*a6)(uint64_t))
{
  sub_1B4D17BCC();
  if (v8 <= 0x3F)
  {
    sub_1B4A5EB80(319, a5, a6, MEMORY[0x1E69E6720]);
    if (v9 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B4A5F8B0()
{
  sub_1B4D17BCC();
  if (v0 <= 0x3F)
  {
    sub_1B4A5FB28(319, &qword_1EDC3CEC0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B4A5F990()
{
  sub_1B4D17BCC();
  if (v0 <= 0x3F)
  {
    sub_1B4A5EB80(319, &qword_1EDC3B268, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B4A5FA70()
{
  sub_1B4A5FB28(319, &qword_1EDC3CEB8, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1B4D17BCC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B4A5FB28(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1B4A5FCD0()
{
  sub_1B4D17BCC();
  if (v0 <= 0x3F)
  {
    sub_1B4A5EB80(319, &qword_1EB8A8BE0, type metadata accessor for Apple_Fitness_Intelligence_AudioStreamDescription, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1B4A5EB80(319, &qword_1EDC3C2D0, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1B4A5EB80(319, &qword_1EB8A8BE8, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisIntensity, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_305Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1B4D17BCC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t __swift_store_extra_inhabitant_index_306Tm(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1B4D17BCC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B4A5FF9C()
{
  result = sub_1B4D17BCC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_287Tm(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1B4D17BCC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *__swift_store_extra_inhabitant_index_288Tm(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1B4D17BCC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1B4A601A8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  sub_1B4A5EB80(319, a4, a5, MEMORY[0x1E69E62F8]);
  if (v5 <= 0x3F)
  {
    sub_1B4D17BCC();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1B4A60270()
{
  result = sub_1B4D17BCC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_254Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1B4D17BCC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t __swift_store_extra_inhabitant_index_255Tm(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1B4D17BCC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1B4A6049C()
{
  result = sub_1B4D17BCC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B4A60538()
{
  result = sub_1B4D17BCC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1B4A605DC()
{
  sub_1B4A5EB80(319, &qword_1EB8A8C58, type metadata accessor for Apple_Fitness_Intelligence_InferenceRequest, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_1B4A5EB80(319, &qword_1EB8A8C60, type metadata accessor for Apple_Fitness_Intelligence_InferenceResult, MEMORY[0x1E69E6720]);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1B4A608BC(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    goto LABEL_7;
  }

  if (*(a1 + 8) != *(a2 + 8))
  {
    goto LABEL_7;
  }

  v2 = *(a1 + 32);
  v28[0] = *(a1 + 16);
  v28[1] = v2;
  v29 = *(a1 + 48);
  v30 = *(a1 + 64);
  v24 = v28[0];
  v25 = v2;
  v26 = v29;
  v27 = v30;
  v4 = *(a2 + 16);
  v5 = *(a2 + 32);
  v6 = *(a2 + 48);
  v32 = *(a2 + 64);
  v31[1] = v5;
  v31[2] = v6;
  v31[0] = v4;
  v20 = v4;
  v21 = v5;
  v22 = v6;
  v23 = v32;
  sub_1B498B0D4(v28, v19);
  sub_1B498B0D4(v31, v19);
  v8 = _s19FitnessIntelligence25WorkoutPropertyDimensionsV2eeoiySbAC_ACtFZ_0(&v24, &v20);
  v33[0] = v20;
  v33[1] = v21;
  v33[2] = v22;
  v34 = v23;
  sub_1B498AD54(v33);
  v35[0] = v24;
  v35[1] = v25;
  v35[2] = v26;
  v36 = v27;
  sub_1B498AD54(v35);
  if (v8)
  {
    v9 = *(a1 + 96);
    v10 = *(a1 + 104);
    __swift_project_boxed_opaque_existential_1((a1 + 72), v9);
    sub_1B4B70700(v9, *(v10 + 8));
    v11 = *(a2 + 96);
    v12 = *(a2 + 104);
    __swift_project_boxed_opaque_existential_1((a2 + 72), v11);
    sub_1B4B70700(v11, *(v12 + 8));
    v19[0] = v24;
    v13 = WorkoutPropertyKind.rawValue.getter();
    v15 = v14;
    if (v13 == WorkoutPropertyKind.rawValue.getter() && v15 == v16)
    {
      v17 = 1;
    }

    else
    {
      v17 = sub_1B4D18DCC();
    }
  }

  else
  {
LABEL_7:
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t sub_1B4A60A94(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8) && (v3 = *(a1 + 18), v19 = *(a1 + 16), v20 = v3, v5 = *(a2 + 18), v17 = *(a2 + 16), v18 = v5, (_s19FitnessIntelligence23RingsPropertyDimensionsV2eeoiySbAC_ACtFZ_0(&v19, &v17) & 1) != 0))
  {
    v6 = a1;
    v7 = *(a1 + 48);
    v8 = *(v6 + 56);
    __swift_project_boxed_opaque_existential_1((v6 + 24), v7);
    sub_1B4B70700(v7, *(v8 + 8));
    v9 = *(a2 + 48);
    v10 = *(a2 + 56);
    __swift_project_boxed_opaque_existential_1((a2 + 24), v9);
    sub_1B4B70700(v9, *(v10 + 8));
    v11 = RingsPropertyKind.rawValue.getter();
    v13 = v12;
    if (v11 == RingsPropertyKind.rawValue.getter() && v13 == v14)
    {
      v15 = 1;
    }

    else
    {
      v15 = sub_1B4D18DCC();
    }
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_1B4A60BE4(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v30 = v2;
  v31 = v3;
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 33);
  v8 = *(a1 + 40);
  v25 = *(a1 + 16);
  v26 = v4;
  v27 = v5;
  v28 = v6;
  v29 = v8;
  v9 = *(a2 + 24);
  v10 = *(a2 + 32);
  v11 = *(a2 + 33);
  v13 = *(a2 + 40);
  *v20 = *(a2 + 16);
  v21 = v9;
  v22 = v10;
  v23 = v11;
  v24 = v13;

  LOBYTE(v8) = _s19FitnessIntelligence0A22PlusPropertyDimensionsV2eeoiySbAC_ACtFZ_0(&v25, v20);

  if (v8)
  {
    v14 = *(a1 + 72);
    v15 = *(a1 + 80);
    __swift_project_boxed_opaque_existential_1((a1 + 48), v14);
    sub_1B4B70700(v14, *(v15 + 8));
    v16 = *(a2 + 72);
    v17 = *(a2 + 80);
    __swift_project_boxed_opaque_existential_1((a2 + 48), v16);
    sub_1B4B70700(v16, *(v17 + 8));
    v18 = sub_1B4977FEC(v25, v20[0]);
  }

  else
  {
    v18 = 0;
  }

  return v18 & 1;
}

uint64_t WorkoutPropertyRecord.init(startCacheIndex:endCacheIndex:dimensions:property:)@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *a2;
  *a5 = *a1;
  *(a5 + 8) = v5;
  v6 = *(a3 + 16);
  *(a5 + 16) = *a3;
  *(a5 + 32) = v6;
  *(a5 + 48) = *(a3 + 32);
  *(a5 + 64) = *(a3 + 48);
  return sub_1B496F398(a4, a5 + 72);
}

uint64_t WorkoutPropertyRecord.dimensions.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v7[0] = *(v1 + 16);
  v7[1] = v2;
  v8 = *(v1 + 48);
  v3 = v8;
  v9 = *(v1 + 64);
  v4 = v9;
  *a1 = v7[0];
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  return sub_1B498B0D4(v7, v6);
}

uint64_t WorkoutPropertyRecord.propertyKind.getter()
{
  v1 = v0[12];
  v2 = v0[13];
  __swift_project_boxed_opaque_existential_1(v0 + 9, v1);
  return sub_1B4B70700(v1, *(v2 + 8));
}

uint64_t WorkoutPropertyRecord.genericProperty.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[12];
  v4 = v1[13];
  v5 = __swift_project_boxed_opaque_existential_1(v1 + 9, v3);
  a1[3] = v3;
  a1[4] = *(v4 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  v7 = *(*(v3 - 8) + 16);

  return v7(boxed_opaque_existential_1, v5, v3);
}

uint64_t WorkoutPropertyRecord.with(startCacheIndex:endCacheIndex:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *(v3 + 32);
  v11 = *(v3 + 16);
  v12 = v7;
  v13 = *(v3 + 48);
  v14 = *(v3 + 64);
  sub_1B497558C(v3 + 72, a3 + 72);
  *a3 = v5;
  *(a3 + 8) = v6;
  v8 = v12;
  *(a3 + 16) = v11;
  *(a3 + 32) = v8;
  *(a3 + 48) = v13;
  *(a3 + 64) = v14;
  return sub_1B498B0D4(&v11, v10);
}

unint64_t sub_1B4A60F24()
{
  result = qword_1EDC38CE8;
  if (!qword_1EDC38CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC38CE8);
  }

  return result;
}

uint64_t sub_1B4A60F78@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v7[0] = *(v1 + 16);
  v7[1] = v2;
  v8 = *(v1 + 48);
  v3 = v8;
  v9 = *(v1 + 64);
  v4 = v9;
  *a1 = v7[0];
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  return sub_1B498B0D4(v7, v6);
}

uint64_t sub_1B4A60FC4()
{
  v1 = v0[12];
  v2 = v0[13];
  __swift_project_boxed_opaque_existential_1(v0 + 9, v1);
  return sub_1B4B70700(v1, *(v2 + 8));
}

uint64_t sub_1B4A61010@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[12];
  v4 = v1[13];
  v5 = __swift_project_boxed_opaque_existential_1(v1 + 9, v3);
  a1[3] = v3;
  a1[4] = *(v4 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  v7 = *(*(v3 - 8) + 16);

  return v7(boxed_opaque_existential_1, v5, v3);
}

uint64_t sub_1B4A6109C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *(v3 + 32);
  v11 = *(v3 + 16);
  v12 = v7;
  v13 = *(v3 + 48);
  v14 = *(v3 + 64);
  sub_1B497558C(v3 + 72, a3 + 72);
  *a3 = v5;
  *(a3 + 8) = v6;
  v8 = v12;
  *(a3 + 16) = v11;
  *(a3 + 32) = v8;
  *(a3 + 48) = v13;
  *(a3 + 64) = v14;
  return sub_1B498B0D4(&v11, v10);
}

unint64_t sub_1B4A61120(uint64_t a1)
{
  *(a1 + 8) = sub_1B4A61150();
  result = sub_1B4A611A4();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1B4A61150()
{
  result = qword_1EDC393E8;
  if (!qword_1EDC393E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC393E8);
  }

  return result;
}

unint64_t sub_1B4A611A4()
{
  result = qword_1EDC393F8[0];
  if (!qword_1EDC393F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDC393F8);
  }

  return result;
}

__n128 __swift_memcpy112_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_1B4A61220(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 96);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B4A61268(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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
      *(result + 96) = (a2 - 1);
      return result;
    }

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B4A612D4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v84 = &v77 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v82 = &v77 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v83 = &v77 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v89 = &v77 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v91 = *(v11 - 8);
  v92 = v11;
  v12 = *(v91 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v79 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v77 = &v77 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v78 = &v77 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v81 = &v77 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C90, &unk_1B4D1BBD0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v80 = &v77 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v85 = &v77 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v77 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CA8, &unk_1B4D1C2B0);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v86 = &v77 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v77 - v32;
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v77 - v35;
  v37 = type metadata accessor for HKActivitySummaryRepresentable();
  v38 = v37[7];
  sub_1B4974FBC(v0 + v38, v36, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
  v87 = v2;
  v39 = *(v2 + 48);
  v90 = v1;
  v88 = v39;
  LODWORD(v1) = v39(v36, 1, v1);
  sub_1B4975024(v36, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
  if (v1 == 1)
  {
    sub_1B4974FBC(v0 + v37[9], v27, &qword_1EB8A6C90, &unk_1B4D1BBD0);
    v40 = (*(v91 + 48))(v27, 1, v92);
    sub_1B4975024(v27, &qword_1EB8A6C90, &unk_1B4D1BBD0);
    if (v40 == 1)
    {
      *&result = 0.0;
      return result;
    }
  }

  v43 = v91;
  v42 = v92;
  v44 = v0 + v37[18];
  v45 = v0;
  if ((*(v44 + 8) & 1) != 0 || *v44 != 2)
  {
    sub_1B4974FBC(v0 + v38, v33, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
    v48 = v90;
    v52 = v88;
    if (v88(v33, 1, v90) == 1)
    {
      v49 = &qword_1EB8A6CA8;
      v50 = &unk_1B4D1C2B0;
      v51 = v33;
      goto LABEL_15;
    }

    v53 = v87;
    v54 = *(v87 + 32);
    v54(v89, v33, v48);
    v55 = v0 + v37[8];
    v56 = v86;
    sub_1B4974FBC(v55, v86, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
    if (v52(v56, 1, v48) == 1)
    {
      (*(v53 + 8))(v89, v48);
      v49 = &qword_1EB8A6CA8;
      v50 = &unk_1B4D1C2B0;
      v51 = v56;
      goto LABEL_15;
    }

    v57 = v83;
    v54(v83, v56, v48);
    sub_1B498AFB8(0, &qword_1EDC378C8, 0x1E696B030);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v59 = [ObjCClassFromMetadata baseUnit];
    v60 = v82;
    sub_1B4D1745C();

    sub_1B4D1742C();
    v62 = v61;
    v63 = *(v53 + 8);
    v63(v60, v48);
    v64 = [ObjCClassFromMetadata baseUnit];
    v65 = v84;
    v66 = v89;
  }

  else
  {
    v46 = v85;
    sub_1B4974FBC(v0 + v37[9], v85, &qword_1EB8A6C90, &unk_1B4D1BBD0);
    v47 = *(v43 + 48);
    v48 = v42;
    if (v47(v46, 1, v42) == 1)
    {
      v49 = &qword_1EB8A6C90;
      v50 = &unk_1B4D1BBD0;
      v51 = v46;
LABEL_15:
      sub_1B4975024(v51, v49, v50);
      *&result = 0.0;
      return result;
    }

    v67 = v45;
    v68 = *(v43 + 32);
    v66 = v81;
    v68(v81, v46, v42);
    v69 = v67 + v37[10];
    v70 = v80;
    sub_1B4974FBC(v69, v80, &qword_1EB8A6C90, &unk_1B4D1BBD0);
    if (v47(v70, 1, v42) == 1)
    {
      (*(v43 + 8))(v66, v42);
      v49 = &qword_1EB8A6C90;
      v50 = &unk_1B4D1BBD0;
      v51 = v70;
      goto LABEL_15;
    }

    v57 = v78;
    v68(v78, v70, v42);
    sub_1B498AFB8(0, &qword_1EDC378C0, 0x1E696B008);
    v71 = swift_getObjCClassFromMetadata();
    v72 = [v71 baseUnit];
    v73 = v77;
    sub_1B4D1745C();

    sub_1B4D1742C();
    v62 = v74;
    v63 = *(v43 + 8);
    v63(v73, v48);
    v64 = [v71 baseUnit];
    v65 = v79;
  }

  sub_1B4D1745C();

  sub_1B4D1742C();
  v76 = v75;
  v63(v65, v48);
  v63(v57, v48);
  v63(v66, v48);
  *&result = v62 / v76;
  return result;
}

uint64_t sub_1B4A61B14()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C90, &unk_1B4D1BBD0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v37 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v39 = &v37 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v37 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v40 = &v37 - v19;
  v20 = type metadata accessor for HKActivitySummaryRepresentable();
  sub_1B4974FBC(v0 + *(v20 + 44), v7, &qword_1EB8A6C90, &unk_1B4D1BBD0);
  v21 = *(v9 + 48);
  if (v21(v7, 1, v8) == 1)
  {
    v22 = v7;
LABEL_5:
    sub_1B4975024(v22, &qword_1EB8A6C90, &unk_1B4D1BBD0);
    *&result = 0.0;
    return result;
  }

  v37 = v17;
  v38 = v12;
  v23 = *(v9 + 32);
  v23(v40, v7, v8);
  sub_1B4974FBC(v0 + *(v20 + 48), v4, &qword_1EB8A6C90, &unk_1B4D1BBD0);
  if (v21(v4, 1, v8) == 1)
  {
    (*(v9 + 8))(v40, v8);
    v22 = v4;
    goto LABEL_5;
  }

  v25 = v37;
  v23(v37, v4, v8);
  sub_1B498AFB8(0, &qword_1EDC378C0, 0x1E696B008);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v27 = [ObjCClassFromMetadata baseUnit];
  v28 = v39;
  sub_1B4D1745C();

  sub_1B4D1742C();
  v30 = v29;
  v31 = *(v9 + 8);
  v31(v28, v8);
  v32 = [ObjCClassFromMetadata baseUnit];
  v33 = v38;
  v34 = v40;
  sub_1B4D1745C();

  sub_1B4D1742C();
  v36 = v35;
  v31(v33, v8);
  v31(v25, v8);
  v31(v34, v8);
  *&result = v30 / v36;
  return result;
}

uint64_t sub_1B4A61EE8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D18, &unk_1B4D1BCA0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v37 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6870, &unk_1B4D1C2C0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v39 = &v37 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v37 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v40 = &v37 - v19;
  v20 = type metadata accessor for HKActivitySummaryRepresentable();
  sub_1B4974FBC(v0 + *(v20 + 52), v7, &qword_1EB8A6D18, &unk_1B4D1BCA0);
  v21 = *(v9 + 48);
  if (v21(v7, 1, v8) == 1)
  {
    v22 = v7;
LABEL_5:
    sub_1B4975024(v22, &qword_1EB8A6D18, &unk_1B4D1BCA0);
    *&result = 0.0;
    return result;
  }

  v37 = v17;
  v38 = v12;
  v23 = *(v9 + 32);
  v23(v40, v7, v8);
  sub_1B4974FBC(v0 + *(v20 + 56), v4, &qword_1EB8A6D18, &unk_1B4D1BCA0);
  if (v21(v4, 1, v8) == 1)
  {
    (*(v9 + 8))(v40, v8);
    v22 = v4;
    goto LABEL_5;
  }

  v25 = v37;
  v23(v37, v4, v8);
  v26 = type metadata accessor for UnitCount();
  v27 = [v26 baseUnit];
  v28 = v39;
  sub_1B4D1745C();

  sub_1B4D1742C();
  v30 = v29;
  v31 = *(v9 + 8);
  v31(v28, v8);
  v32 = [v26 baseUnit];
  v33 = v38;
  v34 = v40;
  sub_1B4D1745C();

  sub_1B4D1742C();
  v36 = v35;
  v31(v33, v8);
  v31(v25, v8);
  v31(v34, v8);
  *&result = v30 / v36;
  return result;
}

uint64_t RingProgress.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = *(a1 + 16);
  v6 = sub_1B4D1746C();
  v7 = *(*(v6 - 8) + 16);

  return v7(a2, v2 + v4, v6);
}

uint64_t RingProgress.goal.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 16);
  v6 = sub_1B4D1746C();
  v7 = *(*(v6 - 8) + 16);

  return v7(a2, v2 + v4, v6);
}

uint64_t RingProgress.remainder.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = *(a1 + 16);
  v6 = sub_1B4D1746C();
  v7 = *(*(v6 - 8) + 16);

  return v7(a2, v2 + v4, v6);
}

uint64_t RingProgress.init(type:value:goal:remainder:percentage:previousPercentage:isCloseToClosing:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, _BYTE *a6@<X8>, double a7@<D0>, double a8@<D1>)
{
  *a6 = *a1;
  v15 = type metadata accessor for RingProgress();
  v16 = v15[7];
  v17 = sub_1B4D1746C();
  v18 = *(*(v17 - 8) + 32);
  v18(&a6[v16], a2, v17);
  v18(&a6[v15[8]], a3, v17);
  result = (v18)(&a6[v15[9]], a4, v17);
  *&a6[v15[10]] = a7;
  *&a6[v15[11]] = a8;
  a6[v15[12]] = a5;
  return result;
}

uint64_t static RingProgress.from(previousRingRepresentable:currentRingRepresentable:ring:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v237 = a3;
  v238 = a4;
  v239 = a5;
  v240 = a2;
  v227 = a1;
  v220 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8DA8, &qword_1B4D25850);
  v5 = *(*(v220 - 8) + 64);
  MEMORY[0x1EEE9AC00](v220);
  v219 = &v210 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D18, &unk_1B4D1BCA0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v228 = &v210 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v234 = (&v210 - v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6870, &unk_1B4D1C2C0);
  v235 = *(v12 - 8);
  v236 = v12;
  v13 = *(v235 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v218 = &v210 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v221 = &v210 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v217 = &v210 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v224 = &v210 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v229 = &v210 - v22;
  v215 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8DB0, &qword_1B4D25858);
  v23 = *(*(v215 - 8) + 64);
  MEMORY[0x1EEE9AC00](v215);
  v214 = &v210 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CA8, &unk_1B4D1C2B0);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v226 = &v210 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v231 = &v210 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
  v31 = *(v30 - 8);
  v232 = v30;
  v233 = v31;
  v32 = *(v31 + 8);
  MEMORY[0x1EEE9AC00](v30);
  v212 = &v210 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v213 = &v210 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v222 = &v210 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v223 = &v210 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v225 = &v210 - v41;
  MEMORY[0x1EEE9AC00](v42);
  v230 = &v210 - v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB8A8DB8, &qword_1B4D25860);
  v45 = *(*(v44 - 8) + 64);
  MEMORY[0x1EEE9AC00](v44);
  v216 = &v210 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v47);
  v211 = &v210 - v48;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C90, &unk_1B4D1BBD0);
  v50 = *(*(v49 - 8) + 64);
  MEMORY[0x1EEE9AC00](v49 - 8);
  v52 = &v210 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v53);
  v55 = &v210 - v54;
  MEMORY[0x1EEE9AC00](v56);
  v58 = &v210 - v57;
  MEMORY[0x1EEE9AC00](v59);
  v61 = &v210 - v60;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v63 = *(*(v62 - 8) + 64);
  MEMORY[0x1EEE9AC00](v62);
  MEMORY[0x1EEE9AC00](v64);
  MEMORY[0x1EEE9AC00](v65);
  MEMORY[0x1EEE9AC00](v66);
  v68 = &v210 - v67;
  MEMORY[0x1EEE9AC00](v69);
  MEMORY[0x1EEE9AC00](v70);
  v72 = &v210 - v71;
  MEMORY[0x1EEE9AC00](v73);
  v75 = &v210 - v74;
  MEMORY[0x1EEE9AC00](v76);
  v78 = &v210 - v77;
  MEMORY[0x1EEE9AC00](v79);
  v87 = &v210 - v86;
  v88 = *v237;
  if (v88 <= 1)
  {
    v236 = v83;
    v237 = v80;
    if (v88)
    {
      v232 = v81;
      v233 = v84;
      v234 = v44;
      v235 = v85;
      v100 = type metadata accessor for HKActivitySummaryRepresentable();
      v101 = v240;
      sub_1B4974FBC(v240 + *(v100 + 48), v55, &qword_1EB8A6C90, &unk_1B4D1BBD0);
      v102 = v236;
      v103 = v237;
      v104 = v236[6];
      if (v104(v55, 1, v237) == 1)
      {
        sub_1B4975024(v55, &qword_1EB8A6C90, &unk_1B4D1BBD0);
        goto LABEL_39;
      }

      v120 = v55;
      v121 = v102[4];
      v121(v68, v120, v103);
      sub_1B4974FBC(v101 + *(v100 + 44), v52, &qword_1EB8A6C90, &unk_1B4D1BBD0);
      if (v104(v52, 1, v103) == 1)
      {
        (v102[1])(v68, v103);
        sub_1B4975024(v52, &qword_1EB8A6C90, &unk_1B4D1BBD0);
        goto LABEL_39;
      }

      v137 = v235;
      v121(v235, v52, v103);
      v138 = sub_1B4A61B14();
      if (v139)
      {
        v140 = v236[1];
        v140(v137, v103);
        v141 = v68;
        v142 = v103;
LABEL_31:
        v140(v141, v142);
        goto LABEL_39;
      }

      v153 = v138;
      v154 = sub_1B4A61B14();
      if (v155)
      {
        v156 = v236[1];
        v157 = v237;
        v156(v235, v237);
        v156(v68, v157);
        goto LABEL_39;
      }

      v240 = v154;
      sub_1B498AFB8(0, &qword_1EDC378C0, 0x1E696B008);
      v174 = v121;
      v175 = v233;
      v176 = v235;
      sub_1B4D1744C();
      v177 = [objc_opt_self() minutes];
      v178 = v232;
      v179 = v237;
      sub_1B4D1745C();

      sub_1B4D1742C();
      v181 = v180;
      (v236[1])(v178, v179);
      v182 = v181 <= 30.0 && v181 >= 10.0;
      v183 = v234;
      v184 = v216;
      v174(&v216[v234[7]], v68, v179);
      v174(&v184[v183[8]], v176, v179);
      *v184 = 1;
      v174(&v184[v183[9]], v175, v179);
      *&v184[v183[10]] = v153;
      *&v184[v183[11]] = v240;
      v184[v183[12]] = v182;
      v185 = type metadata accessor for RingProgress();
      v186 = v239;
LABEL_53:
      v197 = swift_dynamicCast();
      v159 = *(*(v185 - 8) + 56);
      if (v197)
      {
        v160 = v186;
        v161 = 0;
      }

      else
      {
        v160 = v186;
        v161 = 1;
      }

      v158 = v185;
      return v159(v160, v161, 1, v158);
    }

    v235 = v82;
    v89 = type metadata accessor for HKActivitySummaryRepresentable();
    v90 = v89;
    v91 = v240 + v89[18];
    if ((*(v91 + 8) & 1) == 0 && *v91 == 2)
    {
      v234 = v44;
      sub_1B4974FBC(v240 + v89[10], v61, &qword_1EB8A6C90, &unk_1B4D1BBD0);
      v92 = v236;
      v93 = v236[6];
      if (v93(v61, 1, v237) == 1)
      {
        sub_1B4975024(v61, &qword_1EB8A6C90, &unk_1B4D1BBD0);
LABEL_39:
        v158 = type metadata accessor for RingProgress();
        v159 = *(*(v158 - 8) + 56);
        v160 = v239;
        v161 = 1;
        return v159(v160, v161, 1, v158);
      }

      v151 = v61;
      v152 = v237;
      v232 = v92[4];
      v233 = (v92 + 4);
      v232(v87, v151, v237);
      sub_1B4974FBC(v240 + v90[9], v58, &qword_1EB8A6C90, &unk_1B4D1BBD0);
      if (v93(v58, 1, v152) == 1)
      {
        (v92[1])(v87, v237);
        v118 = &qword_1EB8A6C90;
        v119 = &unk_1B4D1BBD0;
        goto LABEL_19;
      }

      v169 = v58;
      v170 = v232;
      v232(v78, v169, v237);
      v171 = sub_1B4A612D4();
      if (v172)
      {
        v173 = v237;
        v140 = v236[1];
        v140(v78, v237);
        v141 = v87;
        v142 = v173;
        goto LABEL_31;
      }

      v198 = v171;
      v199 = sub_1B4A612D4();
      if (v200)
      {
        v201 = v237;
        v202 = v236[1];
        v202(v78, v237);
        v202(v87, v201);
        goto LABEL_39;
      }

      v204 = v236;
      v203 = v237;
      v231 = v198;
      v205 = v236[2];
      v240 = v199;
      v205(v75, v87, v237);
      v205(v72, v78, v203);
      sub_1B498AFB8(0, &qword_1EDC378C0, 0x1E696B008);
      v206 = v235;
      sub_1B4D1744C();
      v207 = v204[1];
      v207(v78, v203);
      v207(v87, v203);
      v208 = v211;
      *v211 = 0;
      v209 = v234;
      v170(&v208[v234[7]], v75, v203);
      v170(&v208[v209[8]], v72, v203);
      v170(&v208[v209[9]], v206, v203);
      *&v208[v209[10]] = v231;
      *&v208[v209[11]] = v240;
      v208[v209[12]] = 0;
      v185 = type metadata accessor for RingProgress();
      v186 = v239;
      goto LABEL_53;
    }

    v110 = v240;
    v111 = v231;
    sub_1B4974FBC(v240 + v89[8], v231, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
    v113 = v232;
    v112 = v233;
    v114 = *(v233 + 6);
    if (v114(v111, 1, v232) == 1)
    {
      sub_1B4975024(v111, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
      goto LABEL_39;
    }

    if (qword_1EDC36DF0 != -1)
    {
      swift_once();
    }

    v122 = v225;
    sub_1B4D1745C();
    v237 = *(v112 + 1);
    (v237)(v111, v113);
    v124 = *(v112 + 4);
    v123 = v112 + 32;
    v125 = v230;
    v126 = v122;
    v127 = v124;
    v124(v230, v126, v113);
    v128 = v110 + v90[7];
    v129 = v226;
    sub_1B4974FBC(v128, v226, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
    if (v114(v129, 1, v113) == 1)
    {
      (v237)(v125, v113);
      sub_1B4975024(v129, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
      goto LABEL_39;
    }

    v143 = v222;
    sub_1B4D1745C();
    v144 = v237;
    (v237)(v129, v113);
    v145 = v223;
    v233 = v123;
    v127(v223, v143, v113);
    v146 = sub_1B4A612D4();
    if (v147 & 1) != 0 || (v148 = v146, v149 = sub_1B4A612D4(), (v150))
    {
      (v144)(v145, v113);
      (v144)(v230, v113);
      goto LABEL_39;
    }

    v240 = v149;
    sub_1B498AFB8(0, &qword_1EDC378C8, 0x1E696B030);
    v187 = v213;
    v236 = v148;
    v188 = v230;
    sub_1B4D1744C();
    v189 = v212;
    sub_1B4D1745C();
    sub_1B4D1742C();
    v191 = v190;
    (v144)(v189, v113);
    v192 = v127;
    v193 = v191 <= 100.0 && v191 >= 20.0;
    v194 = v145;
    v195 = v215;
    v196 = v214;
    v192(&v214[*(v215 + 28)], v188, v113);
    v192(&v196[v195[8]], v194, v113);
    *v196 = 0;
    v192(&v196[v195[9]], v187, v113);
    *&v196[v195[10]] = v236;
    *&v196[v195[11]] = v240;
    v196[v195[12]] = v193;
LABEL_52:
    v185 = type metadata accessor for RingProgress();
    v186 = v239;
    goto LABEL_53;
  }

  if (v88 == 2)
  {
    v94 = type metadata accessor for HKActivitySummaryRepresentable();
    v95 = v240;
    v96 = v234;
    sub_1B4974FBC(v240 + *(v94 + 56), v234, &qword_1EB8A6D18, &unk_1B4D1BCA0);
    v98 = v235;
    v97 = v236;
    v99 = *(v235 + 48);
    if (v99(v96, 1, v236) == 1)
    {
      sub_1B4975024(v96, &qword_1EB8A6D18, &unk_1B4D1BCA0);
      goto LABEL_39;
    }

    v115 = *(v98 + 32);
    v116 = v229;
    v115(v229, v96, v97);
    v117 = v95 + *(v94 + 52);
    v58 = v228;
    sub_1B4974FBC(v117, v228, &qword_1EB8A6D18, &unk_1B4D1BCA0);
    if (v99(v58, 1, v97) == 1)
    {
      (*(v98 + 8))(v116, v97);
      v118 = &qword_1EB8A6D18;
      v119 = &unk_1B4D1BCA0;
LABEL_19:
      sub_1B4975024(v58, v118, v119);
      goto LABEL_39;
    }

    v130 = v224;
    v115(v224, v58, v97);
    v131 = sub_1B4A61EE8();
    if (v132 & 1) != 0 || (v133 = v131, v134 = sub_1B4A61EE8(), (v135))
    {
      v136 = *(v98 + 8);
      v136(v130, v97);
      v136(v116, v97);
      goto LABEL_39;
    }

    v162 = *(v98 + 16);
    v163 = v217;
    v240 = v134;
    v162(v217, v116, v97);
    v162(v221, v130, v97);
    type metadata accessor for UnitCount();
    v164 = v116;
    v165 = v218;
    sub_1B4D1744C();
    v166 = *(v98 + 8);
    v166(v130, v97);
    v166(v164, v97);
    v167 = v219;
    *v219 = 2;
    v168 = v220;
    v115(&v167[*(v220 + 28)], v163, v97);
    v115(&v167[v168[8]], v221, v97);
    v115(&v167[v168[9]], v165, v97);
    *&v167[v168[10]] = v133;
    *&v167[v168[11]] = v240;
    v167[v168[12]] = 0;
    goto LABEL_52;
  }

  v105 = type metadata accessor for RingProgress();
  v106 = *(*(v105 - 8) + 56);
  v107 = v105;
  v108 = v239;

  return v106(v108, 1, 1, v107);
}

uint64_t static RingProgress.== infix(_:_:)(_BYTE *a1, _BYTE *a2)
{
  v3 = 1702260589;
  v4 = *a1;
  v5 = 0xE400000000000000;
  v6 = 0xE500000000000000;
  v7 = 0x646E617473;
  if (v4 != 2)
  {
    v7 = 0x65657268546C6C61;
    v6 = 0xED000073676E6952;
  }

  v8 = 0x6573696372657865;
  if (*a1)
  {
    v5 = 0xE800000000000000;
  }

  else
  {
    v8 = 1702260589;
  }

  if (*a1 <= 1u)
  {
    v9 = v8;
  }

  else
  {
    v9 = v7;
  }

  if (v4 <= 1)
  {
    v10 = v5;
  }

  else
  {
    v10 = v6;
  }

  v11 = 0xE400000000000000;
  v12 = 0xE500000000000000;
  v13 = 0x646E617473;
  if (*a2 != 2)
  {
    v13 = 0x65657268546C6C61;
    v12 = 0xED000073676E6952;
  }

  if (*a2)
  {
    v3 = 0x6573696372657865;
    v11 = 0xE800000000000000;
  }

  if (*a2 <= 1u)
  {
    v14 = v3;
  }

  else
  {
    v14 = v13;
  }

  if (*a2 <= 1u)
  {
    v15 = v11;
  }

  else
  {
    v15 = v12;
  }

  if (v9 == v14 && v10 == v15)
  {
  }

  else
  {
    v17 = sub_1B4D18DCC();

    if ((v17 & 1) == 0)
    {
LABEL_32:
      v22 = 0;
      return v22 & 1;
    }
  }

  sub_1B4D1746C();
  v18 = type metadata accessor for RingProgress();
  v19 = v18[7];
  swift_getWitnessTable();
  if ((sub_1B4D1816C() & 1) == 0)
  {
    goto LABEL_32;
  }

  v20 = v18[8];
  if ((sub_1B4D1816C() & 1) == 0)
  {
    goto LABEL_32;
  }

  v21 = v18[9];
  if ((sub_1B4D1816C() & 1) == 0 || *&a1[v18[10]] != *&a2[v18[10]] || *&a1[v18[11]] != *&a2[v18[11]])
  {
    goto LABEL_32;
  }

  v22 = a1[v18[12]] ^ a2[v18[12]] ^ 1;
  return v22 & 1;
}

uint64_t sub_1B4A63C3C(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = sub_1B4D1746C();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1B4A63D5C()
{
  result = qword_1EB8A8E48;
  if (!qword_1EB8A8E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A8E48);
  }

  return result;
}