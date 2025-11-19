uint64_t LocationShifter.deinit()
{
  v1 = OBJC_IVAR____TtC12FindMyLocate15LocationShifter_logger;
  v2 = sub_1B80C900C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t LocationShifter.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC12FindMyLocate15LocationShifter_logger;
  v2 = sub_1B80C900C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1B809F498()
{
  v0 = sub_1B80C900C();
  __swift_allocate_value_buffer(v0, qword_1EBA7ACD8);
  __swift_project_value_buffer(v0, qword_1EBA7ACD8);
  return sub_1B80C8FFC();
}

unint64_t sub_1B809F528()
{
  result = qword_1EBA67380;
  if (!qword_1EBA67380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67380);
  }

  return result;
}

uint64_t type metadata accessor for LocationShifter()
{
  result = qword_1EBA67388;
  if (!qword_1EBA67388)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B809F5D0()
{
  result = sub_1B80C900C();
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

uint64_t dispatch thunk of LocationShifter.shift(request:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 104);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1B7FBA3EC;

  return v10(a1, a2);
}

uint64_t sub_1B809F7D4(uint64_t a1, void *a2)
{
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA67398, &qword_1B80DC528) - 8) + 80);

  return sub_1B809F178(a1, a2);
}

uint64_t sub_1B809F860(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65D60, &unk_1B80DC530);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B809F8D0()
{
  result = qword_1EBA673A0;
  if (!qword_1EBA673A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA673A0);
  }

  return result;
}

uint64_t sub_1B809F924(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA66000, &unk_1B80D2630);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v27 - v11;
  sub_1B7FB8448(a3, v27 - v11, &unk_1EBA66000, &unk_1B80D2630);
  v13 = sub_1B80C92CC();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1B7FB86D4(v12, &unk_1EBA66000, &unk_1B80D2630);
  }

  else
  {
    sub_1B80C92BC();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_1B80C926C();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_1B80C910C() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t ReverseGeocoder.__allocating_init(preferredLocale:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  ReverseGeocoder.init(preferredLocale:)(a1);
  return v5;
}

uint64_t static ReverseGeocoder.shared.getter()
{
  if (qword_1ED8DDA78 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static ReverseGeocoder.shared.setter(uint64_t a1)
{
  if (qword_1ED8DDA78 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_1ED8DDA80 = a1;
}

uint64_t (*static ReverseGeocoder.shared.modify())()
{
  if (qword_1ED8DDA78 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1B809FDA4@<X0>(void *a1@<X8>)
{
  if (qword_1ED8DDA78 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = qword_1ED8DDA80;
}

uint64_t sub_1B809FE24(uint64_t *a1)
{
  v1 = *a1;
  v2 = qword_1ED8DDA78;

  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_1ED8DDA80 = v1;
}

uint64_t ReverseGeocoder.ReverseGeocodingError.hashValue.getter()
{
  v1 = *v0;
  sub_1B80C993C();
  MEMORY[0x1B8CB8250](v1);
  return sub_1B80C997C();
}

uint64_t ReverseGeocoder.deinit()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA66000, &unk_1B80D2630);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v15 - v3;
  v5 = OBJC_IVAR____TtC12FindMyLocate15ReverseGeocoder_workItemQueue;
  v6 = *(v0 + OBJC_IVAR____TtC12FindMyLocate15ReverseGeocoder_workItemQueue);
  v7 = sub_1B80C92CC();
  (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v6;
  swift_retain_n();
  sub_1B809F924(0, 0, v4, &unk_1B80DC548, v8);

  sub_1B7FB86D4(v4, &unk_1EBA66000, &unk_1B80D2630);
  v9 = OBJC_IVAR____TtC12FindMyLocate15ReverseGeocoder_startDate;
  v10 = sub_1B80C8E2C();
  (*(*(v10 - 8) + 8))(v0 + v9, v10);
  v11 = *(v0 + v5);

  v12 = *(v0 + OBJC_IVAR____TtC12FindMyLocate15ReverseGeocoder_recordsPerGeoHash);

  v13 = *(v0 + OBJC_IVAR____TtC12FindMyLocate15ReverseGeocoder_recordsPerIdentifier);

  sub_1B7FB86D4(v0 + OBJC_IVAR____TtC12FindMyLocate15ReverseGeocoder_locale, &qword_1EBA65E00, &qword_1B80D2160);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t ReverseGeocoder.__deallocating_deinit()
{
  ReverseGeocoder.deinit();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1B80A0144(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 40) = a5;
  *(v6 + 48) = v5;
  *(v6 + 24) = a2;
  *(v6 + 32) = a4;
  *(v6 + 96) = a3;
  *(v6 + 16) = a1;
  v7 = type metadata accessor for ReverseGeocodingRequest();
  *(v6 + 56) = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  *(v6 + 64) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B80A01E4, v5, 0);
}

uint64_t sub_1B80A01E4()
{
  v1 = *(v0 + 24);
  v2 = type metadata accessor for Location();
  v3 = *(v1 + v2[8]);
  v4 = v3 >= 200.0 || v3 < 0.0;
  if (*(v1 + v2[15]) != 2)
  {
    if ((*(v0 + 96) & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v5 = *(v1 + v2[16]);
  if (v5 == 1)
  {
    if ((*(v0 + 96) & 1) == 0)
    {
      goto LABEL_10;
    }

LABEL_9:
    v4 = 1;
    goto LABEL_10;
  }

  v16 = *(v0 + 96) ^ 1;
  if (v5 != 2)
  {
    v16 = 0;
  }

  if ((v16 & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_10:
  v7 = *(v0 + 56);
  v6 = *(v0 + 64);
  v9 = *(v0 + 40);
  v8 = *(v0 + 48);
  v10 = *(v0 + 32);
  sub_1B80A1B24(v1, v6 + v7[5], type metadata accessor for Location);
  sub_1B7FB8448(v8 + OBJC_IVAR____TtC12FindMyLocate15ReverseGeocoder_locale, v6 + v7[6], &qword_1EBA65E00, &qword_1B80D2160);
  *v6 = v10;
  v6[1] = v9;
  *(v6 + v7[7]) = v4;
  v11 = sub_1B7FDFE8C();

  v12 = swift_task_alloc();
  *(v0 + 72) = v12;
  *(v12 + 16) = v8;
  *(v12 + 24) = v6;
  v13 = *(MEMORY[0x1E69E8920] + 4);
  v14 = swift_task_alloc();
  *(v0 + 80) = v14;
  *v14 = v0;
  v14[1] = sub_1B80A03D4;
  v15 = *(v0 + 16);

  return MEMORY[0x1EEE6DE38](v15, v8, v11, 0xD000000000000011, 0x80000001B80CCB50, sub_1B8032DB4, v12, &type metadata for Address);
}

uint64_t sub_1B80A03D4()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v9 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = *(v2 + 48);
    v5 = sub_1B80A056C;
  }

  else
  {
    v6 = *(v2 + 72);
    v7 = *(v2 + 48);

    v5 = sub_1B80A04FC;
    v4 = v7;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1B80A04FC()
{
  sub_1B80A155C(*(v0 + 64));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B80A056C()
{
  v2 = v0[8];
  v1 = v0[9];

  sub_1B80A155C(v2);

  v3 = v0[1];
  v4 = v0[11];

  return v3();
}

uint64_t sub_1B80A05E0(uint64_t a1, uint64_t *a2, uint64_t a3, char a4)
{
  *(v5 + 24) = a3;
  *(v5 + 32) = v4;
  *(v5 + 96) = a4;
  *(v5 + 16) = a1;
  v7 = type metadata accessor for ReverseGeocodingRequest();
  *(v5 + 40) = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v9 = swift_task_alloc();
  v10 = *a2;
  v11 = a2[1];
  *(v5 + 48) = v9;
  *(v5 + 56) = v10;
  *(v5 + 64) = v11;

  return MEMORY[0x1EEE6DFA0](sub_1B80A0688, v4, 0);
}

uint64_t sub_1B80A0688()
{
  v1 = *(v0 + 24);
  v2 = type metadata accessor for Location();
  v3 = *(v1 + v2[8]);
  v4 = v3 >= 200.0 || v3 < 0.0;
  if (*(v1 + v2[15]) != 2)
  {
    if ((*(v0 + 96) & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v5 = *(v1 + v2[16]);
  if (v5 == 1)
  {
    if ((*(v0 + 96) & 1) == 0)
    {
      goto LABEL_10;
    }

LABEL_9:
    v4 = 1;
    goto LABEL_10;
  }

  v16 = *(v0 + 96) ^ 1;
  if (v5 != 2)
  {
    v16 = 0;
  }

  if ((v16 & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_10:
  v7 = *(v0 + 56);
  v6 = *(v0 + 64);
  v9 = *(v0 + 40);
  v8 = *(v0 + 48);
  v10 = *(v0 + 32);
  sub_1B80A1B24(v1, v8 + v9[5], type metadata accessor for Location);
  sub_1B7FB8448(v10 + OBJC_IVAR____TtC12FindMyLocate15ReverseGeocoder_locale, v8 + v9[6], &qword_1EBA65E00, &qword_1B80D2160);
  *v8 = v7;
  v8[1] = v6;
  *(v8 + v9[7]) = v4;
  v11 = sub_1B7FDFE8C();

  v12 = swift_task_alloc();
  *(v0 + 72) = v12;
  *(v12 + 16) = v10;
  *(v12 + 24) = v8;
  v13 = *(MEMORY[0x1E69E8920] + 4);
  v14 = swift_task_alloc();
  *(v0 + 80) = v14;
  *v14 = v0;
  v14[1] = sub_1B80A0878;
  v15 = *(v0 + 16);

  return MEMORY[0x1EEE6DE38](v15, v10, v11, 0xD000000000000011, 0x80000001B80CCB50, sub_1B80A1D38, v12, &type metadata for Address);
}

uint64_t sub_1B80A0878()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v9 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = *(v2 + 32);
    v5 = sub_1B80A0A10;
  }

  else
  {
    v6 = *(v2 + 72);
    v7 = *(v2 + 32);

    v5 = sub_1B80A09A0;
    v4 = v7;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1B80A09A0()
{
  sub_1B80A155C(*(v0 + 48));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B80A0A10()
{
  v1 = v0[9];
  v2 = v0[6];

  sub_1B80A155C(v2);

  v3 = v0[1];
  v4 = v0[11];

  return v3();
}

uint64_t sub_1B80A0A88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a1;
  v5 = sub_1B80C8E9C();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65E28, &qword_1B80DC6F0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v21 - v10;
  v12 = type metadata accessor for ReverseGeocodingRequest();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1B80C8A0C();
  sub_1B80A1B24(a3, v15, type metadata accessor for ReverseGeocodingRequest);
  (*(v8 + 16))(v11, v22, v7);
  v16 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v17 = (v14 + *(v8 + 80) + v16) & ~*(v8 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  sub_1B80A1B8C(v15, v18 + v16);
  (*(v8 + 32))(v18 + v17, v11, v7);

  _s12FindMyLocate5FenceV9TriggerIDVAEycfC_0();
  sub_1B80C89EC();
  v19 = *(a2 + OBJC_IVAR____TtC12FindMyLocate15ReverseGeocoder_workItemQueue);
  sub_1B80C8A3C();
}

uint64_t sub_1B80A0D28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[141] = a3;
  v3[140] = a2;
  v3[139] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B80A0D54, a1, 0);
}

uint64_t sub_1B80A0D54()
{
  v1 = *(v0 + 1112);
  sub_1B7FDE4FC(*(v0 + 1120), (v0 + 16));

  return MEMORY[0x1EEE6DFA0](sub_1B80A0DC4, 0, 0);
}

uint64_t sub_1B80A0DC4()
{
  if (sub_1B7FE01A4((v0 + 2)) == 1)
  {
    v1 = swift_task_alloc();
    v0[142] = v1;
    *v1 = v0;
    v1[1] = sub_1B80A0ED8;
    v2 = v0[140];
    v3 = v0[139];

    return sub_1B7FDC8F4((v0 + 36), v2);
  }

  else
  {
    v5 = v0[141];
    memcpy(v0 + 104, v0 + 2, 0x110uLL);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65E28, &qword_1B80DC6F0);
    sub_1B80C928C();
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_1B80A0ED8()
{
  v2 = *(*v1 + 1136);
  v5 = *v1;
  *(*v1 + 1144) = v0;

  if (v0)
  {
    v3 = sub_1B80A107C;
  }

  else
  {
    v3 = sub_1B80A0FEC;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B80A0FEC()
{
  v1 = v0[141];
  memcpy(v0 + 70, v0 + 36, 0x110uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65E28, &qword_1B80DC6F0);
  sub_1B80C928C();
  v2 = v0[1];

  return v2();
}

uint64_t sub_1B80A107C()
{
  v1 = v0[141];
  v0[138] = v0[143];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65E28, &qword_1B80DC6F0);
  sub_1B80C927C();
  v2 = v0[1];

  return v2();
}

uint64_t sub_1B80A1104(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4[3] = a3;
  v4[4] = v3;
  v4[2] = a1;
  v6 = type metadata accessor for ReverseGeocodingRequest();
  v4[5] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v8 = swift_task_alloc();
  v9 = *a2;
  v10 = a2[1];
  v4[6] = v8;
  v4[7] = v9;
  v4[8] = v10;

  return MEMORY[0x1EEE6DFA0](sub_1B80A11A8, v3, 0);
}

uint64_t sub_1B80A11A8()
{
  v1 = v0[3];
  v2 = type metadata accessor for Location();
  v3 = *(v1 + v2[8]);
  v4 = v3 >= 200.0 || v3 < 0.0;
  if (*(v1 + v2[15]) == 2 && *(v1 + v2[16]) - 1 >= 2)
  {
    v4 = 1;
  }

  v6 = v0[7];
  v5 = v0[8];
  v8 = v0[5];
  v7 = v0[6];
  v9 = v0[4];
  sub_1B80A1B24(v1, v7 + v8[5], type metadata accessor for Location);
  sub_1B7FB8448(v9 + OBJC_IVAR____TtC12FindMyLocate15ReverseGeocoder_locale, v7 + v8[6], &qword_1EBA65E00, &qword_1B80D2160);
  *v7 = v6;
  v7[1] = v5;
  *(v7 + v8[7]) = v4;
  v10 = sub_1B7FDFE8C();

  v11 = swift_task_alloc();
  v0[9] = v11;
  *(v11 + 16) = v9;
  *(v11 + 24) = v7;
  v12 = *(MEMORY[0x1E69E8920] + 4);
  v13 = swift_task_alloc();
  v0[10] = v13;
  *v13 = v0;
  v13[1] = sub_1B80A1374;
  v14 = v0[2];

  return MEMORY[0x1EEE6DE38](v14, v9, v10, 0xD000000000000011, 0x80000001B80CCB50, sub_1B80A1D38, v11, &type metadata for Address);
}

uint64_t sub_1B80A1374()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v9 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = *(v2 + 32);
    v5 = sub_1B80A1D34;
  }

  else
  {
    v6 = *(v2 + 72);
    v7 = *(v2 + 32);

    v5 = sub_1B80A1D30;
    v4 = v7;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1B80A14A8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1B7FBA3EC;

  return sub_1B80133D8();
}

uint64_t sub_1B80A155C(uint64_t a1)
{
  v2 = type metadata accessor for ReverseGeocodingRequest();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1B80A15BC()
{
  result = qword_1EBA673A8;
  if (!qword_1EBA673A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA673A8);
  }

  return result;
}

uint64_t dispatch thunk of ReverseGeocoder.reverseGeocode(location:onlyNeedCoarseAddress:rateLimitKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *(*v5 + 256);
  v16 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = sub_1B7FC253C;

  return v16(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of ReverseGeocoder.reverseGeocode(for:location:onlyNeedCoarseAddress:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(*v4 + 264);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_1B7FBA3EC;

  return v14(a1, a2, a3, a4);
}

uint64_t dispatch thunk of ReverseGeocoder.reverseGeocode(for:location:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 288);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_1B7FC253C;

  return v12(a1, a2, a3);
}

uint64_t sub_1B80A1A88()
{
  result = type metadata accessor for Location();
  if (v1 <= 0x3F)
  {
    result = sub_1B80C8E2C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B80A1B24(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B80A1B8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReverseGeocodingRequest();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B80A1BF0()
{
  v2 = *(type metadata accessor for ReverseGeocodingRequest() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65E28, &qword_1B80DC6F0) - 8);
  v6 = (v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v0 + 16);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_1B7FC253C;

  return sub_1B80A0D28(v7, v0 + v3, v0 + v6);
}

uint64_t sub_1B80A1D3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA66000, &unk_1B80D2630) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v11 = v26 - v10;
  sub_1B80A44EC(a3, v26 - v10);
  v12 = sub_1B80C92CC();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1B7FB86D4(v11, &unk_1EBA66000, &unk_1B80D2630);
  }

  else
  {
    sub_1B80C92BC();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_1B80C926C();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_1B80C910C() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_1B7FB86D4(a3, &unk_1EBA66000, &unk_1B80D2630);

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1B7FB86D4(a3, &unk_1EBA66000, &unk_1B80D2630);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_1B80A202C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA66000, &unk_1B80D2630);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v27 - v11;
  sub_1B80A44EC(a3, v27 - v11);
  v13 = sub_1B80C92CC();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_1B7FB86D4(v12, &unk_1EBA66000, &unk_1B80D2630);
  }

  else
  {
    sub_1B80C92BC();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_1B80C926C();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_1B80C910C() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA67408, &qword_1B80DC990);
      v23 = (v20 | v18);
      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v24 = swift_task_create();

      sub_1B7FB86D4(a3, &unk_1EBA66000, &unk_1B80D2630);

      return v24;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1B7FB86D4(a3, &unk_1EBA66000, &unk_1B80D2630);
  v26 = swift_allocObject();
  *(v26 + 16) = a4;
  *(v26 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA67408, &qword_1B80DC990);
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t static Session.sharedSession(_:)(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  if (qword_1ED8DD428 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_1ED8DD430);
  sub_1B7FBCB98(&qword_1ED8DD438, v1, v2, v3, v4, &v6);
  os_unfair_lock_unlock(&dword_1ED8DD430);
  return v6;
}

uint64_t Session.__allocating_init(_:)(uint64_t a1)
{
  v2 = swift_allocObject();
  Session.init(_:)(a1);
  return v2;
}

{
  swift_allocObject();
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B80A24D0;

  return Session.init(_:)(a1);
}

uint64_t sub_1B80A24D0(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_1B80A2604()
{
  v1 = *(*v0 + 88);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B80A2700, 0, 0);
}

uint64_t sub_1B80A2700()
{
  v1 = *(*(v0 + 16) + 48);
  v2 = swift_task_alloc();
  *(v0 + 96) = v2;
  *v2 = v0;
  v2[1] = sub_1B80A279C;

  return sub_1B7FB9DC4(0, 0);
}

uint64_t sub_1B80A279C()
{
  v1 = *(*v0 + 96);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B80A2898, 0, 0);
}

uint64_t sub_1B80A2898()
{
  v1 = *(*(v0 + 16) + 32);
  v2 = swift_task_alloc();
  *(v0 + 104) = v2;
  *v2 = v0;
  v2[1] = sub_1B80A2934;

  return sub_1B7FBA170(0, 0);
}

uint64_t sub_1B80A2934()
{
  v1 = *v0;
  v2 = *(*v0 + 104);
  v3 = *v0;

  v4 = swift_task_alloc();
  *(v1 + 112) = v4;
  *v4 = v3;
  v4[1] = sub_1B80A2A74;
  v5 = *(v1 + 16);

  return sub_1B7FBA2C8();
}

uint64_t sub_1B80A2A74()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  v6 = *v0;

  v3 = *(v6 + 8);
  v4 = *(v1 + 16);

  return v3(v4);
}

uint64_t Session.deinit()
{
  v1 = v0;
  os_unfair_lock_lock((v0 + 64));
  v3 = v0 + 72;
  v2 = *(v0 + 72);

  os_unfair_lock_unlock((v1 + 64));
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65FC0, &unk_1B80D2430);
    sub_1B80C935C();
  }

  if (qword_1ED8DD6B0 != -1)
  {
    swift_once();
  }

  v4 = sub_1B80C900C();
  __swift_project_value_buffer(v4, qword_1ED8DDE50);
  v5 = sub_1B80C8FEC();
  v6 = sub_1B80C941C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1B7FB5000, v5, v6, "deinit", v7, 2u);
    MEMORY[0x1B8CB8970](v7, -1, -1);
  }

  sub_1B7FB86D4(v1 + 24, &qword_1EBA673C0, &qword_1B80DC758);
  v8 = *(v1 + 32);

  v9 = *(v1 + 40);

  v10 = *(v1 + 48);

  v11 = *(v1 + 56);

  sub_1B7FB86D4(v3, &qword_1EBA673C8, &qword_1B80DC760);
  v12 = *(v1 + 104);

  return v1;
}

uint64_t Session.__deallocating_deinit()
{
  Session.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1B80A2D58()
{
  v1 = *(*v0 + 168);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B80A2E54, 0, 0);
}

uint64_t sub_1B80A2E54()
{
  v38 = v0;
  v1 = v0[10];
  v2 = v0[6];
  v3 = v0[7];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    goto LABEL_2;
  }

  v8 = v0[20];
  (*(v3 + 32))(v0[9], v1, v2);
  sub_1B80C937C();
  v0[22] = v8;
  if (v8)
  {
    v10 = v0[15];
    v9 = v0[16];
    v11 = v0[14];
    (*(v0[7] + 8))(v0[9], v0[6]);
    (*(v10 + 8))(v9, v11);
    v12 = v0[16];
    v13 = v0[13];
    v15 = v0[9];
    v14 = v0[10];
    v16 = v0[8];

    v7 = v0[1];
    goto LABEL_5;
  }

  v18 = v0[5];
  Strong = swift_weakLoadStrong();
  v0[23] = Strong;
  if (!Strong)
  {
    (*(v0[7] + 8))(v0[9], v0[6]);
    v33 = v0[10];
LABEL_2:
    v4 = v0[13];
    v6 = v0[8];
    v5 = v0[9];
    (*(v0[15] + 8))(v0[16], v0[14]);

    v7 = v0[1];
LABEL_5:

    return v7();
  }

  v20 = v0[18];
  (*(v0[7] + 16))(v0[8], v0[9], v0[6]);
  v21 = sub_1B80C8FEC();
  v22 = sub_1B80C93EC();
  v23 = os_log_type_enabled(v21, v22);
  v25 = v0[7];
  v24 = v0[8];
  v26 = v0[6];
  if (v23)
  {
    v36 = v22;
    v27 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v37 = v35;
    *v27 = 136315138;
    sub_1B80A4494();
    v28 = sub_1B80C97FC();
    v30 = v29;
    v31 = *(v25 + 8);
    v31(v24, v26);
    v32 = sub_1B7FB84FC(v28, v30, &v37);

    *(v27 + 4) = v32;
    _os_log_impl(&dword_1B7FB5000, v21, v36, "Process daemon ready notification: %s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v35);
    MEMORY[0x1B8CB8970](v35, -1, -1);
    MEMORY[0x1B8CB8970](v27, -1, -1);
  }

  else
  {

    v31 = *(v25 + 8);
    v31(v24, v26);
  }

  v0[24] = v31;
  v34 = swift_task_alloc();
  v0[25] = v34;
  *v34 = v0;
  v34[1] = sub_1B80A31E4;

  return sub_1B80A33C0();
}

uint64_t sub_1B80A31E4()
{
  v1 = *(*v0 + 200);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B80A32E0, 0, 0);
}

uint64_t sub_1B80A32E0()
{
  v1 = v0[23];
  v2 = v0[24];
  v3 = v0[9];
  v4 = v0[6];
  v5 = v0[7];

  v2(v3, v4);
  v0[20] = v0[22];
  v6 = *(MEMORY[0x1E69E8678] + 4);
  v7 = swift_task_alloc();
  v0[21] = v7;
  *v7 = v0;
  v7[1] = sub_1B80A2D58;
  v8 = v0[16];
  v9 = v0[14];
  v10 = v0[10];

  return MEMORY[0x1EEE6D9C8](v10, 0, 0, v9);
}

uint64_t sub_1B80A33E0()
{
  if (qword_1ED8DD6B0 != -1)
  {
    swift_once();
  }

  v1 = sub_1B80C900C();
  *(v0 + 56) = __swift_project_value_buffer(v1, qword_1ED8DDE50);
  v2 = sub_1B80C8FEC();
  v3 = sub_1B80C941C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1B7FB5000, v2, v3, "Received daemon ready notification, re-establishing connection...", v4, 2u);
    MEMORY[0x1B8CB8970](v4, -1, -1);
  }

  v5 = *(v0 + 48);

  v6 = *(v5 + 56);
  v7 = *(v5 + 104);
  v8 = *(v5 + 88);
  *(v0 + 16) = *(v5 + 80);
  *(v0 + 24) = v8;
  *(v0 + 40) = v7;

  v9 = swift_task_alloc();
  *(v0 + 64) = v9;
  *v9 = v0;
  v9[1] = sub_1B80A355C;

  return sub_1B801D928(v0 + 16);
}

uint64_t sub_1B80A355C()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *v1;
  *(*v1 + 72) = v0;

  v5 = *(v2 + 40);

  if (v0)
  {
    v6 = sub_1B80A3A00;
  }

  else
  {
    v6 = sub_1B80A3690;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1B80A3690()
{
  v1 = *(*(v0 + 48) + 40);
  v2 = swift_task_alloc();
  *(v0 + 80) = v2;
  *v2 = v0;
  v2[1] = sub_1B80A3724;

  return sub_1B7FE9CDC();
}

uint64_t sub_1B80A3724()
{
  v2 = *(*v1 + 80);
  v5 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = sub_1B80A3B5C;
  }

  else
  {
    v3 = sub_1B80A3838;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B80A3838()
{
  v1 = *(*(v0 + 48) + 48);
  v2 = swift_task_alloc();
  *(v0 + 96) = v2;
  *v2 = v0;
  v2[1] = sub_1B80A38CC;

  return sub_1B8050C9C();
}

uint64_t sub_1B80A38CC()
{
  v2 = *(*v1 + 96);
  v3 = *v1;
  *(v3 + 104) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B80A3CB8, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_1B80A3A00()
{
  v1 = v0[9];
  v2 = v0[7];
  v3 = v1;
  v4 = sub_1B80C8FEC();
  v5 = sub_1B80C93FC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1B7FB5000, v4, v5, "Error re-establishing service: %{public}@", v6, 0xCu);
    sub_1B7FB86D4(v7, &qword_1EBA65EE8, &qword_1B80D2478);
    MEMORY[0x1B8CB8970](v7, -1, -1);
    MEMORY[0x1B8CB8970](v6, -1, -1);
  }

  else
  {
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_1B80A3B5C()
{
  v1 = v0[11];
  v2 = v0[7];
  v3 = v1;
  v4 = sub_1B80C8FEC();
  v5 = sub_1B80C93FC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1B7FB5000, v4, v5, "Error re-establishing service: %{public}@", v6, 0xCu);
    sub_1B7FB86D4(v7, &qword_1EBA65EE8, &qword_1B80D2478);
    MEMORY[0x1B8CB8970](v7, -1, -1);
    MEMORY[0x1B8CB8970](v6, -1, -1);
  }

  else
  {
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_1B80A3CB8()
{
  v1 = v0[13];
  v2 = v0[7];
  v3 = v1;
  v4 = sub_1B80C8FEC();
  v5 = sub_1B80C93FC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1B7FB5000, v4, v5, "Error re-establishing service: %{public}@", v6, 0xCu);
    sub_1B7FB86D4(v7, &qword_1EBA65EE8, &qword_1B80D2478);
    MEMORY[0x1B8CB8970](v7, -1, -1);
    MEMORY[0x1B8CB8970](v6, -1, -1);
  }

  else
  {
  }

  v10 = v0[1];

  return v10();
}

uint64_t ClientSessionError.Category.hashValue.getter()
{
  v1 = *v0;
  sub_1B80C993C();
  MEMORY[0x1B8CB8250](v1);
  return sub_1B80C997C();
}

unint64_t ClientSessionError.description.getter()
{
  v1 = *v0;
  if (v1 <= 4)
  {
    v6 = 0x6F6C6C6F466F6E2ELL;
    if (v1 == 3)
    {
      v6 = 0xD000000000000021;
    }

    if (v1 == 2)
    {
      v6 = 0xD000000000000013;
    }

    v7 = 0xD000000000000017;
    if (!*v0)
    {
      v7 = 0xD00000000000001DLL;
    }

    if (*v0 <= 1u)
    {
      return v7;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v2 = 0xD000000000000028;
    if (v1 != 9)
    {
      v2 = 0xD000000000000023;
    }

    if (v1 == 8)
    {
      v2 = 0xD00000000000003CLL;
    }

    v3 = 0xD000000000000023;
    v4 = 0xD00000000000003ELL;
    if (v1 != 6)
    {
      v4 = 0xD00000000000003CLL;
    }

    if (v1 != 5)
    {
      v3 = v4;
    }

    if (*v0 <= 7u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1B80A401C()
{
  v0 = sub_1B80C900C();
  __swift_allocate_value_buffer(v0, qword_1EBA7ACF8);
  __swift_project_value_buffer(v0, qword_1EBA7ACF8);
  return sub_1B80C8FFC();
}

uint64_t sub_1B80A40A0()
{
  v0 = sub_1B80C900C();
  __swift_allocate_value_buffer(v0, qword_1ED8DDE30);
  __swift_project_value_buffer(v0, qword_1ED8DDE30);
  return sub_1B80C8FFC();
}

uint64_t sub_1B80A4120()
{
  v0 = sub_1B80C900C();
  __swift_allocate_value_buffer(v0, qword_1EBA7AD10);
  __swift_project_value_buffer(v0, qword_1EBA7AD10);
  return sub_1B80C8FFC();
}

unint64_t sub_1B80A41A4()
{
  result = qword_1EBA673D0;
  if (!qword_1EBA673D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA673D0);
  }

  return result;
}

uint64_t dispatch thunk of Session.__allocating_init(_:)(uint64_t a1)
{
  v4 = *(v1 + 144);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1B80A24D0;

  return v8(a1);
}

uint64_t sub_1B80A4344(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1B80A43D4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1B80A4494()
{
  result = qword_1EBA67400;
  if (!qword_1EBA67400)
  {
    sub_1B80C8A8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67400);
  }

  return result;
}

uint64_t sub_1B80A44EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA66000, &unk_1B80D2630);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B80A455C(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_1B80A4650;

  return v6(v2 + 32);
}

uint64_t sub_1B80A4650()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  *v3 = *(v1 + 32);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_1B80A4764(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1B7FC253C;

  return sub_1B80A455C(a1, v5);
}

uint64_t sub_1B80A481C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B80A483C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 8) = v3;
  return result;
}

uint64_t sub_1B80A4870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA66000, &unk_1B80D2630);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v24 - v10;
  sub_1B80A44EC(a3, v24 - v10);
  v12 = sub_1B80C92CC();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1B7FB86D4(v11, &unk_1EBA66000, &unk_1B80D2630);
  }

  else
  {
    sub_1B80C92BC();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_1B80C926C();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_1B80C910C() + 32;

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_1B7FB86D4(a3, &unk_1EBA66000, &unk_1B80D2630);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1B7FB86D4(a3, &unk_1EBA66000, &unk_1B80D2630);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t Session.forceRefreshClient()()
{
  v1[2] = v0;
  v2 = type metadata accessor for FenceClientRequest(0);
  v1[3] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[4] = swift_task_alloc();
  v4 = *(*(type metadata accessor for FenceResponse(0) - 8) + 64) + 15;
  v1[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B80A4BCC, 0, 0);
}

uint64_t sub_1B80A4BCC()
{
  v5 = v0;
  v4 = 0;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v4);
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_1B80A4C68;
  v2 = *(v0 + 16);

  return sub_1B7FC225C();
}

uint64_t sub_1B80A4C68()
{
  v1 = *(*v0 + 48);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B80A4D64, 0, 0);
}

uint64_t sub_1B80A4D64()
{
  v1 = *(*(v0 + 16) + 32);
  *(v0 + 56) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B80A4D88, v1, 0);
}

uint64_t sub_1B80A4D88()
{
  v2 = v0[3];
  v1 = v0[4];
  swift_storeEnumTagMultiPayload();
  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = sub_1B80A4E2C;
  v4 = v0[7];
  v6 = v0[4];
  v5 = v0[5];

  return sub_1B7FBFF48(v5, v6);
}

uint64_t sub_1B80A4E2C()
{
  v2 = *v1;
  v3 = (*v1)[8];
  v4 = (*v1)[4];
  v5 = *v1;
  v2[9] = v0;

  sub_1B80A67C8(v4, type metadata accessor for FenceClientRequest);
  v6 = v2[7];
  if (v0)
  {
    v7 = sub_1B80A501C;
  }

  else
  {
    sub_1B80A67C8(v2[5], type metadata accessor for FenceResponse);
    v7 = sub_1B80A4FB0;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, 0);
}

uint64_t sub_1B80A4FB0()
{
  v2 = v0[4];
  v1 = v0[5];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1B80A501C()
{
  v2 = v0[4];
  v1 = v0[5];

  v3 = v0[1];
  v4 = v0[9];

  return v3();
}

uint64_t Session.addFence(_:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B80A50AC, 0, 0);
}

uint64_t sub_1B80A50AC()
{
  v5 = v0;
  v4 = 0;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v4);
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_1B80A5148;
  v2 = *(v0 + 32);

  return sub_1B7FC225C();
}

uint64_t sub_1B80A5148()
{
  v1 = *(*v0 + 40);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B80A5244, 0, 0);
}

uint64_t sub_1B80A5244()
{
  v1 = *(v0[4] + 32);
  v2 = swift_task_alloc();
  v0[6] = v2;
  *v2 = v0;
  v2[1] = sub_1B8012DD4;
  v3 = v0[2];
  v4 = v0[3];

  return sub_1B7FE1FD4(v3, v4);
}

uint64_t Session.updateFence(_:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B80A50AC, 0, 0);
}

uint64_t Session.saveFence(_:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B80A50AC, 0, 0);
}

uint64_t Session.deleteFence(id:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B80A5348, 0, 0);
}

uint64_t sub_1B80A5348()
{
  v5 = v0;
  v4 = 0;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v4);
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1B80A53E4;
  v2 = *(v0 + 24);

  return sub_1B7FC225C();
}

uint64_t sub_1B80A53E4()
{
  v1 = *(*v0 + 32);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B80A54E0, 0, 0);
}

uint64_t sub_1B80A54E0()
{
  v1 = *(v0[3] + 32);
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_1B7FCE7A0;
  v3 = v0[2];

  return sub_1B7FE2300(v3);
}

uint64_t sub_1B80A559C()
{
  v5 = v0;
  v4 = 0;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v4);
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1B80A5638;
  v2 = *(v0 + 16);

  return sub_1B7FC225C();
}

uint64_t sub_1B80A5638()
{
  v1 = *(*v0 + 24);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B80A5734, 0, 0);
}

uint64_t sub_1B80A5734()
{
  v1 = *(*(v0 + 16) + 32);
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_1B805CC14;

  return sub_1B7FE289C();
}

uint64_t Session.acceptFence(id:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B80A57EC, 0, 0);
}

uint64_t sub_1B80A57EC()
{
  v5 = v0;
  v4 = 0;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v4);
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_1B80A5888;
  v2 = *(v0 + 32);

  return sub_1B7FC225C();
}

uint64_t sub_1B80A5888()
{
  v1 = *(*v0 + 40);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B80A5984, 0, 0);
}

uint64_t sub_1B80A5984()
{
  v1 = *(v0[4] + 32);
  v2 = swift_task_alloc();
  v0[6] = v2;
  *v2 = v0;
  v2[1] = sub_1B8012C24;
  v3 = v0[2];
  v4 = v0[3];

  return sub_1B7FE2E38(v3, v4);
}

uint64_t Session.muteFences(for:untilDate:)(uint64_t *a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA65FD0, &unk_1B80D1920) - 8) + 64) + 15;
  v6 = swift_task_alloc();
  v7 = *a1;
  v8 = a1[1];
  v3[6] = v6;
  v3[7] = v7;
  v3[8] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1B80A5AC8, 0, 0);
}

uint64_t sub_1B80A5AC8()
{
  v5 = v0;
  v4 = 0;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v4);
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = sub_1B80A5B64;
  v2 = *(v0 + 40);

  return sub_1B7FC225C();
}

uint64_t sub_1B80A5B64()
{
  v1 = *(*v0 + 72);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B80A5C60, 0, 0);
}

uint64_t sub_1B80A5C60()
{
  v1 = v0[8];
  v2 = v0[6];
  v3 = v0[4];
  v4 = *(v0[5] + 32);
  v0[2] = v0[7];
  v0[3] = v1;
  v5 = sub_1B80C8E2C();
  v6 = *(v5 - 8);
  (*(v6 + 16))(v2, v3, v5);
  (*(v6 + 56))(v2, 0, 1, v5);
  v7 = swift_task_alloc();
  v0[10] = v7;
  *v7 = v0;
  v7[1] = sub_1B80A5D94;
  v8 = v0[6];

  return sub_1B7FE33E8(v0 + 2, v8);
}

uint64_t sub_1B80A5D94()
{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 48);
  v4 = *v1;
  v4[11] = v0;

  sub_1B7FB86D4(v3, &unk_1EBA65FD0, &unk_1B80D1920);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B80A5F08, 0, 0);
  }

  else
  {
    v5 = v4[6];

    v6 = v4[1];

    return v6();
  }
}

uint64_t sub_1B80A5F08()
{
  v1 = v0[6];

  v2 = v0[1];
  v3 = v0[11];

  return v2();
}

uint64_t Session.unmuteFences(for:)(uint64_t *a1)
{
  v2[4] = v1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA65FD0, &unk_1B80D1920) - 8) + 64) + 15;
  v5 = swift_task_alloc();
  v6 = *a1;
  v7 = a1[1];
  v2[5] = v5;
  v2[6] = v6;
  v2[7] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1B80A6014, 0, 0);
}

uint64_t sub_1B80A6014()
{
  v5 = v0;
  v4 = 0;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v4);
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_1B80A60B0;
  v2 = *(v0 + 32);

  return sub_1B7FC225C();
}

uint64_t sub_1B80A60B0()
{
  v1 = *(*v0 + 64);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B80A61AC, 0, 0);
}

uint64_t sub_1B80A61AC()
{
  v1 = v0[7];
  v2 = v0[5];
  v3 = *(v0[4] + 32);
  v0[2] = v0[6];
  v0[3] = v1;
  v4 = sub_1B80C8E2C();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  v5 = swift_task_alloc();
  v0[9] = v5;
  *v5 = v0;
  v5[1] = sub_1B80A62A0;
  v6 = v0[5];

  return sub_1B7FE33E8(v0 + 2, v6);
}

uint64_t sub_1B80A62A0()
{
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 40);
  v4 = *v1;
  v4[10] = v0;

  sub_1B7FB86D4(v3, &unk_1EBA65FD0, &unk_1B80D1920);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B80A6414, 0, 0);
  }

  else
  {
    v5 = v4[5];

    v6 = v4[1];

    return v6();
  }
}

uint64_t sub_1B80A6414()
{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[10];

  return v2();
}

uint64_t Session.triggerFence(id:position:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1B80A649C, 0, 0);
}

uint64_t sub_1B80A649C()
{
  v5 = v0;
  v4 = 0;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v4);
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_1B80A6538;
  v2 = *(v0 + 40);

  return sub_1B7FC225C();
}

uint64_t sub_1B80A6538()
{
  v1 = *(*v0 + 48);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B80A6634, 0, 0);
}

uint64_t sub_1B80A6634()
{
  v1 = *(v0[5] + 32);
  v2 = swift_task_alloc();
  v0[7] = v2;
  *v2 = v0;
  v2[1] = sub_1B80A66D4;
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[2];

  return sub_1B7FE37D0(v5, v3, v4);
}

uint64_t sub_1B80A66D4()
{
  v1 = *(*v0 + 56);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1B80A67C8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for Session.FenceError()
{
  result = qword_1EBA67418;
  if (!qword_1EBA67418)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B80A6874()
{
  result = type metadata accessor for Fence.TriggerPosition(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Fence.Variant(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t Session.sendFriendshipOffer(to:from:end:isFromGroup:)(uint64_t a1, uint64_t a2, _OWORD *a3, _BYTE *a4, char a5)
{
  *(v6 + 376) = a2;
  *(v6 + 384) = v5;
  *(v6 + 440) = a5;
  *(v6 + 368) = a1;
  v9 = *(*(sub_1B80C8E9C() - 8) + 64) + 15;
  *(v6 + 392) = swift_task_alloc();
  v10 = type metadata accessor for FriendshipRequest();
  *(v6 + 400) = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  *(v6 + 408) = swift_task_alloc();
  v12 = a3[9];
  *(v6 + 144) = a3[8];
  *(v6 + 160) = v12;
  *(v6 + 176) = a3[10];
  v13 = a3[5];
  *(v6 + 80) = a3[4];
  *(v6 + 96) = v13;
  v14 = a3[7];
  *(v6 + 112) = a3[6];
  *(v6 + 128) = v14;
  v15 = a3[1];
  *(v6 + 16) = *a3;
  *(v6 + 32) = v15;
  v16 = a3[3];
  *(v6 + 48) = a3[2];
  *(v6 + 64) = v16;
  *(v6 + 441) = *a4;

  return MEMORY[0x1EEE6DFA0](sub_1B80A6A0C, 0, 0);
}

uint64_t sub_1B80A6A0C()
{
  v31 = v0;
  v1 = *(v0 + 376);
  if (*(v1 + 16))
  {
    v3 = *(v0 + 400);
    v2 = *(v0 + 408);
    v5 = *(v0 + 384);
    v4 = *(v0 + 392);
    v28 = *(v0 + 440);
    v29 = *(v0 + 441);
    v6 = v3[7];
    sub_1B805D84C(v0 + 16, v0 + 192);
    sub_1B808DE0C(v2 + v6);
    v7 = *(v5 + 80);
    v9 = *(v5 + 88);
    v8 = *(v5 + 96);
    v10 = *(v5 + 104);

    _s12FindMyLocate5FenceV9TriggerIDVAEycfC_0();
    sub_1B80C899C();
    v11 = v2 + v3[10];
    *v11 = v7;
    *(v11 + 8) = v9;
    *(v11 + 16) = v8;
    *(v11 + 24) = v10;
    *(v2 + v3[5]) = v1;
    v12 = (v2 + v3[6]);
    v13 = *(v0 + 16);
    v14 = *(v0 + 48);
    v12[1] = *(v0 + 32);
    v12[2] = v14;
    *v12 = v13;
    v15 = *(v0 + 64);
    v16 = *(v0 + 80);
    v17 = *(v0 + 112);
    v12[5] = *(v0 + 96);
    v12[6] = v17;
    v12[3] = v15;
    v12[4] = v16;
    v18 = *(v0 + 128);
    v19 = *(v0 + 144);
    v20 = *(v0 + 176);
    v12[9] = *(v0 + 160);
    v12[10] = v20;
    v12[7] = v18;
    v12[8] = v19;
    *(v2 + v3[8]) = 0;
    *(v2 + v3[9]) = 3;
    *(v2 + v3[11]) = v28;

    v30[0] = 1;
    _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(v30);
    v21 = swift_task_alloc();
    *(v0 + 416) = v21;
    *v21 = v0;
    v21[1] = sub_1B80A6C38;
    v22 = *(v0 + 384);

    return sub_1B7FC225C();
  }

  else
  {
    sub_1B8010040();
    swift_allocError();
    *v24 = 3;
    swift_willThrow();
    v25 = *(v0 + 408);
    v26 = *(v0 + 392);

    v27 = *(v0 + 8);

    return v27();
  }
}

uint64_t sub_1B80A6C38()
{
  v1 = *(*v0 + 416);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B80A6D34, 0, 0);
}

uint64_t sub_1B80A6D34()
{
  v1 = *(v0[48] + 40);
  v2 = swift_task_alloc();
  v0[53] = v2;
  *v2 = v0;
  v2[1] = sub_1B80A6DD4;
  v3 = v0[51];
  v4 = v0[46];

  return sub_1B800624C(v4, v3);
}

uint64_t sub_1B80A6DD4()
{
  v2 = *(*v1 + 424);
  v5 = *v1;
  *(*v1 + 432) = v0;

  if (v0)
  {
    v3 = sub_1B80AB758;
  }

  else
  {
    v3 = sub_1B80AB754;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t Session.sendFriendshipInvite(to:from:isFromGroup:)(uint64_t a1, __int128 *a2, _OWORD *a3, char a4)
{
  *(v5 + 736) = v4;
  *(v5 + 792) = a4;
  *(v5 + 728) = a2;
  *(v5 + 720) = a1;
  v8 = *(*(sub_1B80C8E9C() - 8) + 64) + 15;
  *(v5 + 744) = swift_task_alloc();
  v9 = type metadata accessor for FriendshipRequest();
  *(v5 + 752) = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v11 = swift_task_alloc();
  v12 = a2[8];
  v13 = a2[9];
  v14 = a2[6];
  *(v5 + 304) = a2[7];
  *(v5 + 320) = v12;
  v15 = a2[10];
  *(v5 + 336) = v13;
  *(v5 + 352) = v15;
  v16 = a2[4];
  v17 = a2[5];
  v18 = a2[2];
  *(v5 + 240) = a2[3];
  *(v5 + 256) = v16;
  *(v5 + 760) = v11;
  *(v5 + 272) = v17;
  *(v5 + 288) = v14;
  v19 = *a2;
  *(v5 + 208) = a2[1];
  *(v5 + 224) = v18;
  v20 = a3[9];
  *(v5 + 144) = a3[8];
  *(v5 + 160) = v20;
  *(v5 + 176) = a3[10];
  *(v5 + 192) = v19;
  v21 = a3[5];
  *(v5 + 80) = a3[4];
  *(v5 + 96) = v21;
  v22 = a3[7];
  *(v5 + 112) = a3[6];
  *(v5 + 128) = v22;
  v23 = a3[1];
  *(v5 + 16) = *a3;
  *(v5 + 32) = v23;
  v24 = a3[3];
  *(v5 + 48) = a3[2];
  *(v5 + 64) = v24;

  return MEMORY[0x1EEE6DFA0](sub_1B80A7020, 0, 0);
}

uint64_t sub_1B80A7020()
{
  v35 = v0;
  v1 = *(v0 + 760);
  v2 = *(v0 + 752);
  v3 = *(v0 + 744);
  v4 = *(v0 + 736);
  v33 = *(v0 + 792);
  v5 = *(v0 + 728);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66100, &qword_1B80DACB0);
  v6 = swift_allocObject();
  v6[1] = xmmword_1B80D1EB0;
  v8 = v5[1];
  v7 = v5[2];
  v6[2] = *v5;
  v6[3] = v8;
  v6[4] = v7;
  v9 = v5[6];
  v11 = v5[3];
  v10 = v5[4];
  v6[7] = v5[5];
  v6[8] = v9;
  v6[5] = v11;
  v6[6] = v10;
  v12 = v5[10];
  v14 = v5[7];
  v13 = v5[8];
  v6[11] = v5[9];
  v6[12] = v12;
  v6[9] = v14;
  v6[10] = v13;
  v15 = v2[7];
  v16 = sub_1B80C8E2C();
  (*(*(v16 - 8) + 56))(v1 + v15, 1, 1, v16);
  LOBYTE(v15) = *(v4 + 80);
  v18 = *(v4 + 88);
  v17 = *(v4 + 96);
  v19 = *(v4 + 104);
  sub_1B7FC8DA4(v0 + 192, v0 + 368);
  sub_1B805D84C(v0 + 16, v0 + 544);

  _s12FindMyLocate5FenceV9TriggerIDVAEycfC_0();
  sub_1B80C899C();
  v20 = v1 + v2[10];
  *v20 = v15;
  *(v20 + 8) = v18;
  *(v20 + 16) = v17;
  *(v20 + 24) = v19;
  *(v1 + v2[5]) = v6;
  v21 = (v1 + v2[6]);
  v22 = *(v0 + 16);
  v23 = *(v0 + 48);
  v21[1] = *(v0 + 32);
  v21[2] = v23;
  *v21 = v22;
  v24 = *(v0 + 64);
  v25 = *(v0 + 80);
  v26 = *(v0 + 112);
  v21[5] = *(v0 + 96);
  v21[6] = v26;
  v21[3] = v24;
  v21[4] = v25;
  v27 = *(v0 + 128);
  v28 = *(v0 + 144);
  v29 = *(v0 + 176);
  v21[9] = *(v0 + 160);
  v21[10] = v29;
  v21[7] = v27;
  v21[8] = v28;
  *(v1 + v2[8]) = 1;
  *(v1 + v2[9]) = 3;
  *(v1 + v2[11]) = v33;
  v34 = 1;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v34);
  v30 = swift_task_alloc();
  *(v0 + 768) = v30;
  *v30 = v0;
  v30[1] = sub_1B80A7258;
  v31 = *(v0 + 736);

  return sub_1B7FC225C();
}

uint64_t sub_1B80A7258()
{
  v1 = *(*v0 + 768);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B80A7354, 0, 0);
}

uint64_t sub_1B80A7354()
{
  v1 = *(v0[92] + 40);
  v2 = swift_task_alloc();
  v0[97] = v2;
  *v2 = v0;
  v2[1] = sub_1B80A73F4;
  v3 = v0[95];
  v4 = v0[90];

  return sub_1B800764C(v4, v3);
}

uint64_t sub_1B80A73F4()
{
  v2 = *(*v1 + 776);
  v5 = *v1;
  *(*v1 + 784) = v0;

  if (v0)
  {
    v3 = sub_1B80A7584;
  }

  else
  {
    v3 = sub_1B80A7508;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B80A7508()
{
  v1 = v0[93];
  sub_1B805D8BC(v0[95]);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1B80A7584()
{
  v1 = v0[93];
  sub_1B805D8BC(v0[95]);

  v2 = v0[1];
  v3 = v0[98];

  return v2();
}

uint64_t Session.stopSharingMyLocation(with:from:isFromGroup:)(uint64_t a1, uint64_t a2, _OWORD *a3, char a4)
{
  *(v5 + 376) = a2;
  *(v5 + 384) = v4;
  *(v5 + 440) = a4;
  *(v5 + 368) = a1;
  v7 = *(*(sub_1B80C8E9C() - 8) + 64) + 15;
  *(v5 + 392) = swift_task_alloc();
  v8 = type metadata accessor for FriendshipRequest();
  *(v5 + 400) = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  *(v5 + 408) = swift_task_alloc();
  v10 = a3[9];
  *(v5 + 144) = a3[8];
  *(v5 + 160) = v10;
  *(v5 + 176) = a3[10];
  v11 = a3[5];
  *(v5 + 80) = a3[4];
  *(v5 + 96) = v11;
  v12 = a3[7];
  *(v5 + 112) = a3[6];
  *(v5 + 128) = v12;
  v13 = a3[1];
  *(v5 + 16) = *a3;
  *(v5 + 32) = v13;
  v14 = a3[3];
  *(v5 + 48) = a3[2];
  *(v5 + 64) = v14;

  return MEMORY[0x1EEE6DFA0](sub_1B80A76FC, 0, 0);
}

uint64_t sub_1B80A76FC()
{
  v30 = v0;
  v1 = *(v0 + 376);
  if (*(v1 + 16))
  {
    v3 = *(v0 + 400);
    v2 = *(v0 + 408);
    v5 = *(v0 + 384);
    v4 = *(v0 + 392);
    v6 = *(v0 + 440);
    v7 = v3[7];
    v8 = sub_1B80C8E2C();
    (*(*(v8 - 8) + 56))(v2 + v7, 1, 1, v8);
    LOBYTE(v7) = *(v5 + 80);
    v10 = *(v5 + 88);
    v9 = *(v5 + 96);
    v11 = *(v5 + 104);
    sub_1B805D84C(v0 + 16, v0 + 192);

    _s12FindMyLocate5FenceV9TriggerIDVAEycfC_0();
    sub_1B80C899C();
    v12 = v2 + v3[10];
    *v12 = v7;
    *(v12 + 8) = v10;
    *(v12 + 16) = v9;
    *(v12 + 24) = v11;
    *(v2 + v3[5]) = v1;
    v13 = (v2 + v3[6]);
    v14 = *(v0 + 16);
    v15 = *(v0 + 48);
    v13[1] = *(v0 + 32);
    v13[2] = v15;
    *v13 = v14;
    v16 = *(v0 + 64);
    v17 = *(v0 + 80);
    v18 = *(v0 + 112);
    v13[5] = *(v0 + 96);
    v13[6] = v18;
    v13[3] = v16;
    v13[4] = v17;
    v19 = *(v0 + 128);
    v20 = *(v0 + 144);
    v21 = *(v0 + 176);
    v13[9] = *(v0 + 160);
    v13[10] = v21;
    v13[7] = v19;
    v13[8] = v20;
    *(v2 + v3[8]) = 2;
    *(v2 + v3[9]) = 3;
    *(v2 + v3[11]) = v6;

    v29[0] = 1;
    _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(v29);
    v22 = swift_task_alloc();
    *(v0 + 416) = v22;
    *v22 = v0;
    v22[1] = sub_1B80A7950;
    v23 = *(v0 + 384);

    return sub_1B7FC225C();
  }

  else
  {
    sub_1B8010040();
    swift_allocError();
    *v25 = 3;
    swift_willThrow();
    v26 = *(v0 + 408);
    v27 = *(v0 + 392);

    v28 = *(v0 + 8);

    return v28();
  }
}

uint64_t sub_1B80A7950()
{
  v1 = *(*v0 + 416);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B80A7A4C, 0, 0);
}

uint64_t sub_1B80A7A4C()
{
  v1 = *(v0[48] + 40);
  v2 = swift_task_alloc();
  v0[53] = v2;
  *v2 = v0;
  v2[1] = sub_1B80A7AEC;
  v3 = v0[51];
  v4 = v0[46];

  return sub_1B800A104(v4, v3);
}

uint64_t sub_1B80A7AEC()
{
  v2 = *(*v1 + 424);
  v5 = *v1;
  *(*v1 + 432) = v0;

  if (v0)
  {
    v3 = sub_1B80A7C7C;
  }

  else
  {
    v3 = sub_1B80A7C00;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B80A7C00()
{
  v1 = v0[49];
  sub_1B805D8BC(v0[51]);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1B80A7C7C()
{
  sub_1B805D8BC(v0[51]);
  v1 = v0[54];
  v2 = v0[51];
  v3 = v0[49];

  v4 = v0[1];

  return v4();
}

uint64_t Session.sendNotNow(to:from:isFromGroup:)(uint64_t a1, uint64_t a2, _OWORD *a3, char a4)
{
  *(v5 + 376) = a2;
  *(v5 + 384) = v4;
  *(v5 + 440) = a4;
  *(v5 + 368) = a1;
  v7 = *(*(sub_1B80C8E9C() - 8) + 64) + 15;
  *(v5 + 392) = swift_task_alloc();
  v8 = type metadata accessor for FriendshipRequest();
  *(v5 + 400) = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  *(v5 + 408) = swift_task_alloc();
  v10 = a3[9];
  *(v5 + 144) = a3[8];
  *(v5 + 160) = v10;
  *(v5 + 176) = a3[10];
  v11 = a3[5];
  *(v5 + 80) = a3[4];
  *(v5 + 96) = v11;
  v12 = a3[7];
  *(v5 + 112) = a3[6];
  *(v5 + 128) = v12;
  v13 = a3[1];
  *(v5 + 16) = *a3;
  *(v5 + 32) = v13;
  v14 = a3[3];
  *(v5 + 48) = a3[2];
  *(v5 + 64) = v14;

  return MEMORY[0x1EEE6DFA0](sub_1B80A7DF0, 0, 0);
}

uint64_t sub_1B80A7DF0()
{
  v30 = v0;
  v1 = *(v0 + 376);
  if (*(v1 + 16))
  {
    v3 = *(v0 + 400);
    v2 = *(v0 + 408);
    v5 = *(v0 + 384);
    v4 = *(v0 + 392);
    v6 = *(v0 + 440);
    v7 = v3[7];
    v8 = sub_1B80C8E2C();
    (*(*(v8 - 8) + 56))(v2 + v7, 1, 1, v8);
    LOBYTE(v7) = *(v5 + 80);
    v10 = *(v5 + 88);
    v9 = *(v5 + 96);
    v11 = *(v5 + 104);
    sub_1B805D84C(v0 + 16, v0 + 192);

    _s12FindMyLocate5FenceV9TriggerIDVAEycfC_0();
    sub_1B80C899C();
    v12 = v2 + v3[10];
    *v12 = v7;
    *(v12 + 8) = v10;
    *(v12 + 16) = v9;
    *(v12 + 24) = v11;
    *(v2 + v3[5]) = v1;
    v13 = (v2 + v3[6]);
    v14 = *(v0 + 16);
    v15 = *(v0 + 48);
    v13[1] = *(v0 + 32);
    v13[2] = v15;
    *v13 = v14;
    v16 = *(v0 + 64);
    v17 = *(v0 + 80);
    v18 = *(v0 + 112);
    v13[5] = *(v0 + 96);
    v13[6] = v18;
    v13[3] = v16;
    v13[4] = v17;
    v19 = *(v0 + 128);
    v20 = *(v0 + 144);
    v21 = *(v0 + 176);
    v13[9] = *(v0 + 160);
    v13[10] = v21;
    v13[7] = v19;
    v13[8] = v20;
    *(v2 + v3[8]) = 2;
    *(v2 + v3[9]) = 2;
    *(v2 + v3[11]) = v6;

    v29[0] = 1;
    _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(v29);
    v22 = swift_task_alloc();
    *(v0 + 416) = v22;
    *v22 = v0;
    v22[1] = sub_1B80A8040;
    v23 = *(v0 + 384);

    return sub_1B7FC225C();
  }

  else
  {
    sub_1B8010040();
    swift_allocError();
    *v25 = 3;
    swift_willThrow();
    v26 = *(v0 + 408);
    v27 = *(v0 + 392);

    v28 = *(v0 + 8);

    return v28();
  }
}

uint64_t sub_1B80A8040()
{
  v1 = *(*v0 + 416);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B80A813C, 0, 0);
}

uint64_t sub_1B80A813C()
{
  v1 = *(v0[48] + 40);
  v2 = swift_task_alloc();
  v0[53] = v2;
  *v2 = v0;
  v2[1] = sub_1B80A6DD4;
  v3 = v0[51];
  v4 = v0[46];

  return sub_1B8008AF4(v4, v3);
}

uint64_t Session.approveFriendship(handles:from:isFromGroup:)(uint64_t a1, uint64_t a2, _OWORD *a3, char a4)
{
  *(v5 + 376) = a2;
  *(v5 + 384) = v4;
  *(v5 + 440) = a4;
  *(v5 + 368) = a1;
  v7 = *(*(sub_1B80C8E9C() - 8) + 64) + 15;
  *(v5 + 392) = swift_task_alloc();
  v8 = type metadata accessor for FriendshipRequest();
  *(v5 + 400) = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  *(v5 + 408) = swift_task_alloc();
  v10 = a3[9];
  *(v5 + 144) = a3[8];
  *(v5 + 160) = v10;
  *(v5 + 176) = a3[10];
  v11 = a3[5];
  *(v5 + 80) = a3[4];
  *(v5 + 96) = v11;
  v12 = a3[7];
  *(v5 + 112) = a3[6];
  *(v5 + 128) = v12;
  v13 = a3[1];
  *(v5 + 16) = *a3;
  *(v5 + 32) = v13;
  v14 = a3[3];
  *(v5 + 48) = a3[2];
  *(v5 + 64) = v14;

  return MEMORY[0x1EEE6DFA0](sub_1B80A82D8, 0, 0);
}

uint64_t sub_1B80A82D8()
{
  v30 = v0;
  v1 = *(v0 + 376);
  if (*(v1 + 16))
  {
    v3 = *(v0 + 400);
    v2 = *(v0 + 408);
    v5 = *(v0 + 384);
    v4 = *(v0 + 392);
    v6 = *(v0 + 440);
    v7 = v3[7];
    v8 = sub_1B80C8E2C();
    (*(*(v8 - 8) + 56))(v2 + v7, 1, 1, v8);
    LOBYTE(v7) = *(v5 + 80);
    v10 = *(v5 + 88);
    v9 = *(v5 + 96);
    v11 = *(v5 + 104);
    sub_1B805D84C(v0 + 16, v0 + 192);

    _s12FindMyLocate5FenceV9TriggerIDVAEycfC_0();
    sub_1B80C899C();
    v12 = v2 + v3[10];
    *v12 = v7;
    *(v12 + 8) = v10;
    *(v12 + 16) = v9;
    *(v12 + 24) = v11;
    *(v2 + v3[5]) = v1;
    v13 = (v2 + v3[6]);
    v14 = *(v0 + 16);
    v15 = *(v0 + 48);
    v13[1] = *(v0 + 32);
    v13[2] = v15;
    *v13 = v14;
    v16 = *(v0 + 64);
    v17 = *(v0 + 80);
    v18 = *(v0 + 112);
    v13[5] = *(v0 + 96);
    v13[6] = v18;
    v13[3] = v16;
    v13[4] = v17;
    v19 = *(v0 + 128);
    v20 = *(v0 + 144);
    v21 = *(v0 + 176);
    v13[9] = *(v0 + 160);
    v13[10] = v21;
    v13[7] = v19;
    v13[8] = v20;
    *(v2 + v3[8]) = 2;
    *(v2 + v3[9]) = 0;
    *(v2 + v3[11]) = v6;

    v29[0] = 1;
    _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(v29);
    v22 = swift_task_alloc();
    *(v0 + 416) = v22;
    *v22 = v0;
    v22[1] = sub_1B80A8040;
    v23 = *(v0 + 384);

    return sub_1B7FC225C();
  }

  else
  {
    sub_1B8010040();
    swift_allocError();
    *v25 = 3;
    swift_willThrow();
    v26 = *(v0 + 408);
    v27 = *(v0 + 392);

    v28 = *(v0 + 8);

    return v28();
  }
}

uint64_t Session.declineFriendship(handles:from:isFromGroup:)(uint64_t a1, uint64_t a2, _OWORD *a3, char a4)
{
  *(v5 + 376) = a2;
  *(v5 + 384) = v4;
  *(v5 + 440) = a4;
  *(v5 + 368) = a1;
  v7 = *(*(sub_1B80C8E9C() - 8) + 64) + 15;
  *(v5 + 392) = swift_task_alloc();
  v8 = type metadata accessor for FriendshipRequest();
  *(v5 + 400) = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  *(v5 + 408) = swift_task_alloc();
  v10 = a3[9];
  *(v5 + 144) = a3[8];
  *(v5 + 160) = v10;
  *(v5 + 176) = a3[10];
  v11 = a3[5];
  *(v5 + 80) = a3[4];
  *(v5 + 96) = v11;
  v12 = a3[7];
  *(v5 + 112) = a3[6];
  *(v5 + 128) = v12;
  v13 = a3[1];
  *(v5 + 16) = *a3;
  *(v5 + 32) = v13;
  v14 = a3[3];
  *(v5 + 48) = a3[2];
  *(v5 + 64) = v14;

  return MEMORY[0x1EEE6DFA0](sub_1B80A8624, 0, 0);
}

uint64_t sub_1B80A8624()
{
  v30 = v0;
  v1 = *(v0 + 376);
  if (*(v1 + 16))
  {
    v3 = *(v0 + 400);
    v2 = *(v0 + 408);
    v5 = *(v0 + 384);
    v4 = *(v0 + 392);
    v6 = *(v0 + 440);
    v7 = v3[7];
    v8 = sub_1B80C8E2C();
    (*(*(v8 - 8) + 56))(v2 + v7, 1, 1, v8);
    LOBYTE(v7) = *(v5 + 80);
    v10 = *(v5 + 88);
    v9 = *(v5 + 96);
    v11 = *(v5 + 104);
    sub_1B805D84C(v0 + 16, v0 + 192);

    _s12FindMyLocate5FenceV9TriggerIDVAEycfC_0();
    sub_1B80C899C();
    v12 = v2 + v3[10];
    *v12 = v7;
    *(v12 + 8) = v10;
    *(v12 + 16) = v9;
    *(v12 + 24) = v11;
    *(v2 + v3[5]) = v1;
    v13 = (v2 + v3[6]);
    v14 = *(v0 + 16);
    v15 = *(v0 + 48);
    v13[1] = *(v0 + 32);
    v13[2] = v15;
    *v13 = v14;
    v16 = *(v0 + 64);
    v17 = *(v0 + 80);
    v18 = *(v0 + 112);
    v13[5] = *(v0 + 96);
    v13[6] = v18;
    v13[3] = v16;
    v13[4] = v17;
    v19 = *(v0 + 128);
    v20 = *(v0 + 144);
    v21 = *(v0 + 176);
    v13[9] = *(v0 + 160);
    v13[10] = v21;
    v13[7] = v19;
    v13[8] = v20;
    *(v2 + v3[8]) = 2;
    *(v2 + v3[9]) = 1;
    *(v2 + v3[11]) = v6;

    v29[0] = 1;
    _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(v29);
    v22 = swift_task_alloc();
    *(v0 + 416) = v22;
    *v22 = v0;
    v22[1] = sub_1B80A8040;
    v23 = *(v0 + 384);

    return sub_1B7FC225C();
  }

  else
  {
    sub_1B8010040();
    swift_allocError();
    *v25 = 3;
    swift_willThrow();
    v26 = *(v0 + 408);
    v27 = *(v0 + 392);

    v28 = *(v0 + 8);

    return v28();
  }
}

uint64_t Session.startUpdatingFriends(receiveInitialUpdates:)(uint64_t a1, char a2)
{
  *(v3 + 48) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  return MEMORY[0x1EEE6DFA0](sub_1B80A8898, 0, 0);
}

uint64_t sub_1B80A8898()
{
  v5 = v0;
  v4 = 1;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v4);
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1B80A8938;
  v2 = *(v0 + 24);

  return sub_1B7FC225C();
}

uint64_t sub_1B80A8938()
{
  v1 = *(*v0 + 32);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B80A8A34, 0, 0);
}

uint64_t sub_1B80A8A34()
{
  v1 = *(*(v0 + 24) + 40);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_1B7FCE788;
  v3 = *(v0 + 48);
  v4 = *(v0 + 16);

  return sub_1B7FEA2DC(v4, v3);
}

uint64_t sub_1B80A8AF4()
{
  v5 = v0;
  v4 = 1;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v4);
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1B80A8B94;
  v2 = *(v0 + 16);

  return sub_1B7FC225C();
}

uint64_t sub_1B80A8B94()
{
  v1 = *(*v0 + 24);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B80A8C90, 0, 0);
}

uint64_t sub_1B80A8C90()
{
  v1 = *(*(v0 + 16) + 40);
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_1B8048BB0;

  return sub_1B7FEB668();
}

uint64_t Session.allFriends()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B80A8D44, 0, 0);
}

uint64_t sub_1B80A8D44()
{
  v5 = v0;
  v4 = 1;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v4);
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1B80A8DE4;
  v2 = *(v0 + 24);

  return sub_1B7FC225C();
}

uint64_t sub_1B80A8DE4()
{
  v1 = *(*v0 + 32);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B80A8EE0, 0, 0);
}

uint64_t sub_1B80A8EE0()
{
  v1 = *(v0[3] + 40);
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_1B7FCE7A0;
  v3 = v0[2];

  return sub_1B80008D0(v3);
}

uint64_t sub_1B80A8F9C()
{
  v5 = v0;
  v4 = 1;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v4);
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1B80A903C;
  v2 = *(v0 + 16);

  return sub_1B7FC225C();
}

uint64_t sub_1B80A903C()
{
  v1 = *(*v0 + 24);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B80A9138, 0, 0);
}

uint64_t sub_1B80A9138()
{
  v1 = *(*(v0 + 16) + 40);
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_1B80AB75C;

  return sub_1B7FE8BC0(&unk_1F2FF95D8);
}

uint64_t sub_1B80A91F8()
{
  v5 = v0;
  v4 = 1;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v4);
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_1B80A9298;
  v2 = *(v0 + 40);

  return sub_1B7FC225C();
}

uint64_t sub_1B80A9298()
{
  v1 = *(*v0 + 48);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B80A9394, 0, 0);
}

uint64_t sub_1B80A9394()
{
  v1 = *(*(v0 + 40) + 40);
  *(v0 + 56) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B80A93B8, v1, 0);
}

uint64_t sub_1B80A93B8()
{
  v9 = v0;
  v1 = *(v0 + 56);
  v2 = OBJC_IVAR____TtCC12FindMyLocate7Session20FriendshipConnection_followings;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v8 = 1;

  v5 = sub_1B7FE6734(v4, &v8);

  v6 = *(v0 + 8);

  return v6(v5);
}

uint64_t Session.friendsSharingLocationsWithMe(filter:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B80A948C, 0, 0);
}

uint64_t sub_1B80A948C()
{
  v5 = v0;
  v4 = 1;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v4);
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_1B80A952C;
  v2 = *(v0 + 32);

  return sub_1B7FC225C();
}

uint64_t sub_1B80A952C()
{
  v1 = *(*v0 + 40);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B80A9628, 0, 0);
}

uint64_t sub_1B80A9628()
{
  v1 = *(v0[4] + 40);
  v2 = swift_task_alloc();
  v0[6] = v2;
  *v2 = v0;
  v2[1] = sub_1B80A96C4;
  v4 = v0[2];
  v3 = v0[3];

  return sub_1B7FF1534(v4, v3);
}

uint64_t sub_1B80A96C4(uint64_t a1)
{
  v4 = *(*v2 + 48);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t sub_1B80A97E4()
{
  v5 = v0;
  v4 = 1;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v4);
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1B80A9884;
  v2 = *(v0 + 16);

  return sub_1B7FC225C();
}

uint64_t sub_1B80A9884()
{
  v1 = *(*v0 + 24);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B80A9980, 0, 0);
}

uint64_t sub_1B80A9980()
{
  v1 = *(*(v0 + 16) + 40);
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_1B805CC14;

  return sub_1B7FE8BC0(&unk_1F2FF9600);
}

uint64_t sub_1B80A9A40()
{
  v5 = v0;
  v4 = 1;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v4);
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_1B80A9AE0;
  v2 = *(v0 + 40);

  return sub_1B7FC225C();
}

uint64_t sub_1B80A9AE0()
{
  v1 = *(*v0 + 48);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B80A9BDC, 0, 0);
}

uint64_t sub_1B80A9BDC()
{
  v1 = *(*(v0 + 40) + 40);
  *(v0 + 56) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B80A9C00, v1, 0);
}

uint64_t sub_1B80A9C00()
{
  v9 = v0;
  v1 = *(v0 + 56);
  v2 = OBJC_IVAR____TtCC12FindMyLocate7Session20FriendshipConnection_followers;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v8 = 0;

  v5 = sub_1B7FE6734(v4, &v8);

  v6 = *(v0 + 8);

  return v6(v5);
}

uint64_t sub_1B80A9CCC()
{
  v5 = v0;
  v4 = 1;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v4);
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1B80A9D6C;
  v2 = *(v0 + 16);

  return sub_1B7FC225C();
}

uint64_t sub_1B80A9D6C()
{
  v1 = *(*v0 + 24);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B80A9E68, 0, 0);
}

uint64_t sub_1B80A9E68()
{
  v1 = *(*(v0 + 16) + 40);
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_1B80AB75C;

  return sub_1B7FE8BC0(&unk_1F2FF9628);
}

uint64_t sub_1B80A9F28()
{
  v5 = v0;
  v4 = 1;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v4);
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_1B80A9FC8;
  v2 = *(v0 + 40);

  return sub_1B7FC225C();
}

uint64_t sub_1B80A9FC8()
{
  v1 = *(*v0 + 48);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B80AA0C4, 0, 0);
}

uint64_t sub_1B80AA0C4()
{
  v1 = *(*(v0 + 40) + 40);
  *(v0 + 56) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B80AA0E8, v1, 0);
}

uint64_t sub_1B80AA0E8()
{
  v1 = *(v0 + 56);
  v2 = OBJC_IVAR____TtCC12FindMyLocate7Session20FriendshipConnection_futureFollowers;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v6 = *(v0 + 8);

  return v6(v4);
}

uint64_t sub_1B80AA19C()
{
  v5 = v0;
  v4 = 1;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v4);
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1B80AA23C;
  v2 = *(v0 + 16);

  return sub_1B7FC225C();
}

uint64_t sub_1B80AA23C()
{
  v1 = *(*v0 + 24);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B80AA338, 0, 0);
}

uint64_t sub_1B80AA338()
{
  v1 = *(*(v0 + 16) + 40);
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_1B80AB75C;

  return sub_1B7FE8BC0(&unk_1F2FF9650);
}

uint64_t sub_1B80AA3F8()
{
  v5 = v0;
  v4 = 1;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v4);
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_1B80AA498;
  v2 = *(v0 + 40);

  return sub_1B7FC225C();
}

uint64_t sub_1B80AA498()
{
  v1 = *(*v0 + 48);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B80AA594, 0, 0);
}

uint64_t sub_1B80AA594()
{
  v1 = *(*(v0 + 40) + 40);
  *(v0 + 56) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B80AA5B8, v1, 0);
}

uint64_t sub_1B80AA5B8()
{
  v1 = *(v0 + 56);
  v2 = OBJC_IVAR____TtCC12FindMyLocate7Session20FriendshipConnection_futureFollowings;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v6 = *(v0 + 8);

  return v6(v4);
}

uint64_t sub_1B80AA66C()
{
  v5 = v0;
  v4 = 1;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v4);
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1B80AA70C;
  v2 = *(v0 + 16);

  return sub_1B7FC225C();
}

uint64_t sub_1B80AA70C()
{
  v1 = *(*v0 + 24);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B80AA808, 0, 0);
}

uint64_t sub_1B80AA808()
{
  v1 = *(*(v0 + 16) + 40);
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_1B80AB75C;

  return sub_1B7FE8BC0(&unk_1F2FF9678);
}

uint64_t sub_1B80AA8C8()
{
  v5 = v0;
  v4 = 1;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v4);
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_1B80AA968;
  v2 = *(v0 + 40);

  return sub_1B7FC225C();
}

uint64_t sub_1B80AA968()
{
  v1 = *(*v0 + 48);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B80AAA64, 0, 0);
}

uint64_t sub_1B80AAA64()
{
  v1 = *(*(v0 + 40) + 40);
  *(v0 + 56) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B80AAA88, v1, 0);
}

uint64_t sub_1B80AAA88()
{
  v9 = v0;
  v1 = *(v0 + 56);
  v2 = OBJC_IVAR____TtCC12FindMyLocate7Session20FriendshipConnection_pendingOffers;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v8 = 4;

  v5 = sub_1B7FE6734(v4, &v8);

  v6 = *(v0 + 8);

  return v6(v5);
}

uint64_t Session.friendshipState(for:isFromGroup:)(uint64_t a1, _OWORD *a2, char a3)
{
  v6 = a2[9];
  *(v3 + 144) = a2[8];
  *(v3 + 160) = v6;
  *(v3 + 176) = a2[10];
  v7 = a2[5];
  *(v3 + 80) = a2[4];
  *(v3 + 96) = v7;
  v8 = a2[7];
  *(v3 + 112) = a2[6];
  *(v3 + 128) = v8;
  v9 = a2[1];
  *(v3 + 16) = *a2;
  *(v3 + 32) = v9;
  v10 = a2[3];
  *(v3 + 48) = a2[2];
  *(v3 + 64) = v10;
  v11 = swift_task_alloc();
  *(v3 + 192) = v11;
  *v11 = v3;
  v11[1] = sub_1B80AAC18;

  return Session.friendshipState(with:isFromGroup:)(a1, (v3 + 16), a3);
}

uint64_t sub_1B80AAC18()
{
  v2 = *(*v1 + 192);
  v3 = *v1;
  *(v3 + 200) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B80AAD4C, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t Session.offerExpiration(for:groupId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[27] = a4;
  v5[28] = v4;
  v5[25] = a2;
  v5[26] = a3;
  v5[24] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B80AAD8C, 0, 0);
}

uint64_t sub_1B80AAD8C()
{
  v5 = v0;
  v4 = 1;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v4);
  v1 = swift_task_alloc();
  *(v0 + 232) = v1;
  *v1 = v0;
  v1[1] = sub_1B80AAE2C;
  v2 = *(v0 + 224);

  return sub_1B7FC225C();
}

uint64_t sub_1B80AAE2C()
{
  v1 = *(*v0 + 232);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B80AAF28, 0, 0);
}

uint64_t sub_1B80AAF28()
{
  v1 = *(v0 + 200);
  v2 = *(*(v0 + 224) + 40);
  v4 = v1[1];
  v3 = v1[2];
  *(v0 + 16) = *v1;
  *(v0 + 32) = v4;
  *(v0 + 48) = v3;
  v5 = v1[6];
  v7 = v1[3];
  v6 = v1[4];
  *(v0 + 96) = v1[5];
  *(v0 + 112) = v5;
  *(v0 + 64) = v7;
  *(v0 + 80) = v6;
  v8 = v1[10];
  v10 = v1[7];
  v9 = v1[8];
  *(v0 + 160) = v1[9];
  *(v0 + 176) = v8;
  *(v0 + 128) = v10;
  *(v0 + 144) = v9;
  v11 = swift_task_alloc();
  *(v0 + 240) = v11;
  *v11 = v0;
  v11[1] = sub_1B80AB000;
  v12 = *(v0 + 208);
  v13 = *(v0 + 216);
  v14 = *(v0 + 192);

  return sub_1B8004F7C(v14, (v0 + 16), v12, v13);
}

uint64_t sub_1B80AB000()
{
  v2 = *(*v1 + 240);
  v3 = *v1;
  *(v3 + 248) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B80AB134, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t Session.cachedOfferExpiration(for:groupId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[27] = a4;
  v5[28] = v4;
  v5[25] = a2;
  v5[26] = a3;
  v5[24] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B80AB174, 0, 0);
}

uint64_t sub_1B80AB174()
{
  v5 = v0;
  v4 = 1;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v4);
  v1 = swift_task_alloc();
  *(v0 + 232) = v1;
  *v1 = v0;
  v1[1] = sub_1B80AB214;
  v2 = *(v0 + 224);

  return sub_1B7FC225C();
}

uint64_t sub_1B80AB214()
{
  v1 = *(*v0 + 232);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B80AB310, 0, 0);
}

uint64_t sub_1B80AB310()
{
  v1 = *(v0 + 200);
  v2 = *(*(v0 + 224) + 40);
  *(v0 + 240) = v2;
  v3 = v1[7];
  v4 = v1[8];
  v5 = v1[10];
  *(v0 + 160) = v1[9];
  *(v0 + 176) = v5;
  *(v0 + 128) = v3;
  *(v0 + 144) = v4;
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[6];
  *(v0 + 96) = v1[5];
  *(v0 + 112) = v8;
  *(v0 + 64) = v6;
  *(v0 + 80) = v7;
  v9 = *v1;
  v10 = v1[2];
  *(v0 + 32) = v1[1];
  *(v0 + 48) = v10;
  *(v0 + 16) = v9;
  return MEMORY[0x1EEE6DFA0](sub_1B80AB368, v2, 0);
}

uint64_t sub_1B80AB368()
{
  v1 = *(v0 + 240);
  sub_1B7FF08C0((v0 + 16), *(v0 + 208), *(v0 + 216), *(v0 + 192));
  v2 = *(v0 + 8);

  return v2();
}

uint64_t static Session.fmfIsAllowedInRegion.getter()
{
  v4[3] = &type metadata for KoreaFeatureFlag;
  v4[4] = sub_1B807E3A8();
  v0 = sub_1B80C8A7C();
  __swift_destroy_boxed_opaque_existential_0(v4);
  if (v0)
  {
    return 1;
  }

  v2 = sub_1B80C90AC();
  v3 = MGGetBoolAnswer();

  return v3;
}

id static Session.fmfIsRestrictedInScreenTime.getter()
{
  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    v1 = result;
    v2 = *MEMORY[0x1E69ADE80];
    v3 = [v1 effectiveBoolValueForSetting_];

    return (v3 == 2);
  }

  return result;
}

uint64_t static Session.hasCorrectPermissionsForLocationSharing.getter()
{
  v9[3] = &type metadata for KoreaFeatureFlag;
  v9[4] = sub_1B807E3A8();
  v0 = sub_1B80C8A7C();
  __swift_destroy_boxed_opaque_existential_0(v9);
  if ((v0 & 1) == 0)
  {
    v1 = sub_1B80C90AC();
    v2 = MGGetBoolAnswer();

    if (!v2)
    {
      goto LABEL_5;
    }
  }

  v3 = [objc_opt_self() sharedConnection];
  if (!v3 || (v4 = v3, v5 = *MEMORY[0x1E69ADE80], v6 = [v4 effectiveBoolValueForSetting_], v5, v4, v6 != 2))
  {
    MyLocate7SessionC37isiCloudProvisionedForLocationSharingSbvgZ_0 = _s12FindMyLocate7SessionC37isiCloudProvisionedForLocationSharingSbvgZ_0();
  }

  else
  {
LABEL_5:
    MyLocate7SessionC37isiCloudProvisionedForLocationSharingSbvgZ_0 = 0;
  }

  return MyLocate7SessionC37isiCloudProvisionedForLocationSharingSbvgZ_0 & 1;
}

id _s12FindMyLocate7SessionC37isiCloudProvisionedForLocationSharingSbvgZ_0()
{
  v0 = [objc_opt_self() defaultStore];
  if (v0)
  {
    v1 = v0;
    v2 = [v0 aa_primaryAppleAccountWithPreloadedDataclasses];
    if (v2)
    {
      v3 = v2;
      v4 = [v2 isProvisionedForDataclass:*MEMORY[0x1E69596E8]];

      goto LABEL_10;
    }
  }

  if (qword_1ED8DD6B0 != -1)
  {
    swift_once();
  }

  v5 = sub_1B80C900C();
  __swift_project_value_buffer(v5, qword_1ED8DDE50);
  v3 = sub_1B80C8FEC();
  v6 = sub_1B80C93FC();
  if (os_log_type_enabled(v3, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1B7FB5000, v3, v6, "Missing primary account!", v7, 2u);
    MEMORY[0x1B8CB8970](v7, -1, -1);
  }

  v4 = 0;
LABEL_10:

  return v4;
}

uint64_t Session.startRefreshingLocation(forHandles:priority:reverseGeocode:clientID:)(uint64_t a1, _BYTE *a2, char a3, uint64_t a4)
{
  *(v5 + 56) = a4;
  *(v5 + 64) = v4;
  *(v5 + 121) = a3;
  *(v5 + 48) = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660B0, &qword_1B80D2E20);
  *(v5 + 72) = v7;
  v8 = *(v7 - 8);
  *(v5 + 80) = v8;
  v9 = *(v8 + 64) + 15;
  *(v5 + 88) = swift_task_alloc();
  *(v5 + 122) = *a2;

  return MEMORY[0x1EEE6DFA0](sub_1B80AB85C, 0, 0);
}

uint64_t sub_1B80AB85C()
{
  v5 = v0;
  v4 = 0;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v4);
  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v1[1] = sub_1B80AB8F8;
  v2 = *(v0 + 64);

  return sub_1B7FC225C();
}

uint64_t sub_1B80AB8F8()
{
  v1 = *(*v0 + 96);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B80AB9F4, 0, 0);
}

uint64_t sub_1B80AB9F4()
{
  v1 = *(v0 + 64);
  v2 = *(v1 + 56);
  *(v0 + 120) = *(v0 + 122);
  v3 = *(v1 + 104);
  v4 = *(v1 + 88);
  *(v0 + 16) = *(v1 + 80);
  *(v0 + 24) = v4;
  *(v0 + 40) = v3;

  v5 = swift_task_alloc();
  *(v0 + 104) = v5;
  *v5 = v0;
  v5[1] = sub_1B80ABAD8;
  v6 = *(v0 + 88);
  v7 = *(v0 + 121);
  v8 = *(v0 + 48);
  v9 = *(v0 + 56);

  return sub_1B80178C4(v6, v8, (v0 + 120), v7, v0 + 16, v9);
}

uint64_t sub_1B80ABAD8()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *v1;
  v2[14] = v0;

  v5 = v2[5];

  if (v0)
  {
    v6 = sub_1B80ABC88;
  }

  else
  {
    (*(v2[10] + 8))(v2[11], v2[9]);
    v6 = sub_1B80ABC24;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1B80ABC24()
{
  v1 = *(v0 + 88);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1B80ABC88()
{
  v1 = v0[11];

  v2 = v0[1];
  v3 = v0[14];

  return v2();
}

uint64_t Session.startRefreshingLocation(forHandles:priority:reverseGeocode:)(uint64_t a1, uint64_t a2, _BYTE *a3, char a4)
{
  *(v5 + 56) = a2;
  *(v5 + 64) = v4;
  *(v5 + 105) = a4;
  *(v5 + 48) = a1;
  v7 = *(*(type metadata accessor for ClientID() - 8) + 64) + 15;
  *(v5 + 72) = swift_task_alloc();
  *(v5 + 106) = *a3;

  return MEMORY[0x1EEE6DFA0](sub_1B80ABD90, 0, 0);
}

uint64_t sub_1B80ABD90()
{
  v41 = v0;
  v1 = v0;
  if (qword_1ED8DD6B0 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 56);
  v3 = sub_1B80C900C();
  __swift_project_value_buffer(v3, qword_1ED8DDE50);

  v4 = sub_1B80C8FEC();
  v5 = sub_1B80C941C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 56);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v39 = v8;
    *v7 = 136447235;
    *(v7 + 4) = sub_1B7FB84FC(0xD00000000000003CLL, 0x80000001B80CE640, &v39);
    *(v7 + 12) = 2160;
    *(v7 + 14) = 1752392040;
    *(v7 + 22) = 2081;
    v9 = *(v6 + 16);
    v10 = MEMORY[0x1E69E7CC0];
    if (v9)
    {
      v35 = v8;
      v36 = v5;
      v37 = v4;
      v38 = v0;
      v11 = *(v0 + 56);
      v40 = MEMORY[0x1E69E7CC0];
      sub_1B7FCF988(0, v9, 0);
      v10 = v40;
      v12 = *(v40 + 16);
      v13 = 16 * v12;
      v14 = (v11 + 40);
      do
      {
        v15 = *(v14 - 1);
        v16 = *v14;
        v40 = v10;
        v17 = *(v10 + 24);

        if (v12 >= v17 >> 1)
        {
          sub_1B7FCF988((v17 > 1), v12 + 1, 1);
          v10 = v40;
        }

        *(v10 + 16) = v12 + 1;
        v18 = v10 + v13;
        *(v18 + 32) = v15;
        *(v18 + 40) = v16;
        v13 += 16;
        v14 += 22;
        ++v12;
        --v9;
      }

      while (v9);
      v4 = v37;
      v1 = v38;
      v5 = v36;
      v8 = v35;
    }

    v19 = *(v1 + 106);
    v20 = MEMORY[0x1B8CB7B30](v10, MEMORY[0x1E69E6158]);
    v22 = v21;

    v23 = sub_1B7FB84FC(v20, v22, &v39);

    *(v7 + 24) = v23;
    *(v7 + 32) = 2082;
    v24 = 0xE800000000000000;
    v25 = 0x776F6C6C6168732ELL;
    v26 = 0xE500000000000000;
    v27 = 0x6576696C2ELL;
    if (v19 != 2)
    {
      v27 = 0xD000000000000014;
      v26 = 0x80000001B80CBF40;
    }

    if (!v19)
    {
      v25 = 0xD000000000000015;
      v24 = 0x80000001B80CBFD0;
    }

    if (v19 <= 1)
    {
      v28 = v25;
    }

    else
    {
      v28 = v27;
    }

    if (v19 <= 1)
    {
      v29 = v24;
    }

    else
    {
      v29 = v26;
    }

    v30 = *(v1 + 105);
    v31 = sub_1B7FB84FC(v28, v29, &v39);

    *(v7 + 34) = v31;
    *(v7 + 42) = 1024;
    *(v7 + 44) = v30;
    _os_log_impl(&dword_1B7FB5000, v4, v5, "%{public}s for %{private,mask.hash}s priority: %{public}s reverseGeocode: %{BOOL}d", v7, 0x30u);
    swift_arrayDestroy();
    MEMORY[0x1B8CB8970](v8, -1, -1);
    MEMORY[0x1B8CB8970](v7, -1, -1);
  }

  LOBYTE(v40) = 0;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v40);
  v32 = swift_task_alloc();
  *(v1 + 80) = v32;
  *v32 = v1;
  v32[1] = sub_1B80AC148;
  v33 = *(v1 + 64);

  return sub_1B7FC225C();
}

uint64_t sub_1B80AC148()
{
  v1 = *(*v0 + 80);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B80AC244, 0, 0);
}

uint64_t sub_1B80AC244()
{
  v19 = v0;
  v1 = *(v0 + 64);
  v2 = *(v1 + 56);
  *(v0 + 104) = *(v0 + 106);
  v3 = *(v1 + 104);
  v4 = *(v1 + 88);
  *(v0 + 16) = *(v1 + 80);
  *(v0 + 24) = v4;
  *(v0 + 40) = v3;
  v5 = objc_opt_self();

  v6 = [v5 mainBundle];
  v7 = [v6 bundleIdentifier];

  if (v7)
  {
    v8 = sub_1B80C90BC();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  v11 = *(v0 + 72);
  v18 = 0;
  ClientID.init(identifier:connectionType:)(v8, v10, &v18, v11);
  v12 = swift_task_alloc();
  *(v0 + 88) = v12;
  *v12 = v0;
  v12[1] = sub_1B80AC3BC;
  v13 = *(v0 + 72);
  v14 = *(v0 + 105);
  v15 = *(v0 + 48);
  v16 = *(v0 + 56);

  return sub_1B80178C4(v15, v16, (v0 + 104), v14, v0 + 16, v13);
}

uint64_t sub_1B80AC3BC()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 72);
  v5 = *v1;
  v2[12] = v0;

  sub_1B7FD06B4(v4);
  v6 = v2[5];

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B80AC548, 0, 0);
  }

  else
  {
    v7 = v2[9];

    v8 = *(v5 + 8);

    return v8();
  }
}

uint64_t sub_1B80AC548()
{
  v1 = v0[9];

  v2 = v0[1];
  v3 = v0[12];

  return v2();
}

uint64_t Session.addHandlesToLocationStream(_:priority:reverseGeocode:clientID:)(uint64_t a1, _BYTE *a2, char a3, uint64_t a4)
{
  *(v5 + 56) = a4;
  *(v5 + 64) = v4;
  *(v5 + 97) = a3;
  *(v5 + 48) = a1;
  *(v5 + 98) = *a2;
  return MEMORY[0x1EEE6DFA0](sub_1B80AC5DC, 0, 0);
}

uint64_t sub_1B80AC5DC()
{
  v42 = v0;
  if (qword_1ED8DD6B0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 48);
  v2 = sub_1B80C900C();
  __swift_project_value_buffer(v2, qword_1ED8DDE50);

  v3 = sub_1B80C8FEC();
  v4 = sub_1B80C941C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 48);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v40 = v7;
    *v6 = 136447235;
    *(v6 + 4) = sub_1B7FB84FC(0xD00000000000003FLL, 0x80000001B80CE680, &v40);
    *(v6 + 12) = 2160;
    *(v6 + 14) = 1752392040;
    *(v6 + 22) = 2081;
    v8 = *(v5 + 16);
    v9 = MEMORY[0x1E69E7CC0];
    if (v8)
    {
      v36 = v7;
      v37 = v4;
      v38 = v6;
      v39 = v3;
      v10 = *(v0 + 48);
      *v41 = MEMORY[0x1E69E7CC0];
      sub_1B7FCF988(0, v8, 0);
      v9 = *v41;
      v11 = *(*v41 + 16);
      v12 = 16 * v11;
      v13 = (v10 + 40);
      do
      {
        v14 = *(v13 - 1);
        v15 = *v13;
        *v41 = v9;
        v16 = *(v9 + 24);

        if (v11 >= v16 >> 1)
        {
          sub_1B7FCF988((v16 > 1), v11 + 1, 1);
          v9 = *v41;
        }

        *(v9 + 16) = v11 + 1;
        v17 = v9 + v12;
        *(v17 + 32) = v14;
        *(v17 + 40) = v15;
        v12 += 16;
        v13 += 22;
        ++v11;
        --v8;
      }

      while (v8);
      v3 = v39;
      v6 = v38;
      v4 = v37;
      v7 = v36;
    }

    v18 = *(v0 + 98);
    v19 = MEMORY[0x1B8CB7B30](v9, MEMORY[0x1E69E6158]);
    v21 = v20;

    v22 = sub_1B7FB84FC(v19, v21, &v40);

    *(v6 + 24) = v22;
    *(v6 + 32) = 2082;
    v23 = 0xE800000000000000;
    v24 = 0x776F6C6C6168732ELL;
    v25 = 0xE500000000000000;
    v26 = 0x6576696C2ELL;
    if (v18 != 2)
    {
      v26 = 0xD000000000000014;
      v25 = 0x80000001B80CBF40;
    }

    if (!v18)
    {
      v24 = 0xD000000000000015;
      v23 = 0x80000001B80CBFD0;
    }

    if (v18 <= 1)
    {
      v27 = v24;
    }

    else
    {
      v27 = v26;
    }

    if (v18 <= 1)
    {
      v28 = v23;
    }

    else
    {
      v28 = v25;
    }

    v29 = *(v0 + 97);
    v30 = sub_1B7FB84FC(v27, v28, &v40);

    *(v6 + 34) = v30;
    *(v6 + 42) = 1024;
    *(v6 + 44) = v29;
    _os_log_impl(&dword_1B7FB5000, v3, v4, "%{public}s for %{private,mask.hash}s priority: %{public}s reverseGeocode: %{BOOL}d", v6, 0x30u);
    swift_arrayDestroy();
    MEMORY[0x1B8CB8970](v7, -1, -1);
    MEMORY[0x1B8CB8970](v6, -1, -1);
  }

  if (*(*(v0 + 48) + 16))
  {
    v41[0] = 0;
    _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(v41);
    v31 = swift_task_alloc();
    *(v0 + 72) = v31;
    *v31 = v0;
    v31[1] = sub_1B80ACA14;
    v32 = *(v0 + 64);

    return sub_1B7FC225C();
  }

  else
  {
    sub_1B8010040();
    swift_allocError();
    *v34 = 3;
    swift_willThrow();
    v35 = *(v0 + 8);

    return v35();
  }
}

uint64_t sub_1B80ACA14()
{
  v1 = *(*v0 + 72);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B80ACB10, 0, 0);
}

uint64_t sub_1B80ACB10()
{
  v1 = *(v0 + 64);
  v2 = *(v1 + 56);
  *(v0 + 96) = *(v0 + 98);
  v3 = *(v1 + 104);
  v4 = *(v1 + 88);
  *(v0 + 16) = *(v1 + 80);
  *(v0 + 24) = v4;
  *(v0 + 40) = v3;

  v5 = swift_task_alloc();
  *(v0 + 80) = v5;
  *v5 = v0;
  v5[1] = sub_1B80ACBF0;
  v6 = *(v0 + 97);
  v8 = *(v0 + 48);
  v7 = *(v0 + 56);

  return sub_1B8018FD8(v8, (v0 + 96), v0 + 16, v6, v7);
}

uint64_t sub_1B80ACBF0()
{
  v2 = *(*v1 + 80);
  v3 = *v1;
  v3[11] = v0;

  if (v0)
  {
    v4 = v3[5];

    return MEMORY[0x1EEE6DFA0](sub_1B80ACD34, 0, 0);
  }

  else
  {
    v5 = v3[5];

    v6 = v3[1];

    return v6();
  }
}

uint64_t Session.stopRefreshingLocation(forHandles:priority:clientID:)(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 16) = a1;
  *(v4 + 65) = *a2;
  return MEMORY[0x1EEE6DFA0](sub_1B80ACD78, 0, 0);
}

uint64_t sub_1B80ACD78()
{
  v41 = v0;
  if (qword_1ED8DD6B0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = sub_1B80C900C();
  __swift_project_value_buffer(v2, qword_1ED8DDE50);

  v3 = sub_1B80C8FEC();
  v4 = sub_1B80C941C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 16);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v39 = v7;
    *v6 = 136446979;
    *(v6 + 4) = sub_1B7FB84FC(0xD000000000000035, 0x80000001B80CE6C0, &v39);
    *(v6 + 12) = 2160;
    *(v6 + 14) = 1752392040;
    *(v6 + 22) = 2081;
    v8 = *(v5 + 16);
    v9 = MEMORY[0x1E69E7CC0];
    if (v8)
    {
      v35 = v7;
      v36 = v4;
      v37 = v6;
      v38 = v3;
      v10 = *(v0 + 16);
      *v40 = MEMORY[0x1E69E7CC0];
      sub_1B7FCF988(0, v8, 0);
      v9 = *v40;
      v11 = *(*v40 + 16);
      v12 = 16 * v11;
      v13 = (v10 + 40);
      do
      {
        v14 = *(v13 - 1);
        v15 = *v13;
        *v40 = v9;
        v16 = *(v9 + 24);

        if (v11 >= v16 >> 1)
        {
          sub_1B7FCF988((v16 > 1), v11 + 1, 1);
          v9 = *v40;
        }

        *(v9 + 16) = v11 + 1;
        v17 = v9 + v12;
        *(v17 + 32) = v14;
        *(v17 + 40) = v15;
        v12 += 16;
        v13 += 22;
        ++v11;
        --v8;
      }

      while (v8);
      v3 = v38;
      v6 = v37;
      v4 = v36;
      v7 = v35;
    }

    v18 = *(v0 + 65);
    v19 = MEMORY[0x1B8CB7B30](v9, MEMORY[0x1E69E6158]);
    v21 = v20;

    v22 = sub_1B7FB84FC(v19, v21, &v39);

    *(v6 + 24) = v22;
    *(v6 + 32) = 2082;
    v23 = 0xE800000000000000;
    v24 = 0x776F6C6C6168732ELL;
    v25 = 0xE500000000000000;
    v26 = 0x6576696C2ELL;
    if (v18 != 2)
    {
      v26 = 0xD000000000000014;
      v25 = 0x80000001B80CBF40;
    }

    if (!v18)
    {
      v24 = 0xD000000000000015;
      v23 = 0x80000001B80CBFD0;
    }

    if (v18 <= 1)
    {
      v27 = v24;
    }

    else
    {
      v27 = v26;
    }

    if (v18 <= 1)
    {
      v28 = v23;
    }

    else
    {
      v28 = v25;
    }

    v29 = sub_1B7FB84FC(v27, v28, &v39);

    *(v6 + 34) = v29;
    _os_log_impl(&dword_1B7FB5000, v3, v4, "%{public}s for %{private,mask.hash}s priority: %{public}s", v6, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x1B8CB8970](v7, -1, -1);
    MEMORY[0x1B8CB8970](v6, -1, -1);
  }

  if (*(*(v0 + 16) + 16))
  {
    v40[0] = 0;
    _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(v40);
    v30 = swift_task_alloc();
    *(v0 + 40) = v30;
    *v30 = v0;
    v30[1] = sub_1B80AD1A0;
    v31 = *(v0 + 32);

    return sub_1B7FC225C();
  }

  else
  {
    sub_1B8010040();
    swift_allocError();
    *v33 = 3;
    swift_willThrow();
    v34 = *(v0 + 8);

    return v34();
  }
}

uint64_t sub_1B80AD1A0()
{
  v1 = *(*v0 + 40);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B80AD29C, 0, 0);
}

uint64_t sub_1B80AD29C()
{
  v1 = *(*(v0 + 32) + 56);
  *(v0 + 64) = *(v0 + 65);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_1B80AD348;
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);

  return sub_1B801A6B8(v4, (v0 + 64), v3);
}

uint64_t sub_1B80AD348()
{
  v2 = *(*v1 + 48);
  v3 = *v1;
  *(v3 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B80AD47C, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t Session.stopRefreshingLocation(clientID:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B80AD4B4, 0, 0);
}

uint64_t sub_1B80AD4B4()
{
  v11 = v0;
  if (qword_1ED8DD6B0 != -1)
  {
    swift_once();
  }

  v1 = sub_1B80C900C();
  __swift_project_value_buffer(v1, qword_1ED8DDE50);
  v2 = sub_1B80C8FEC();
  v3 = sub_1B80C941C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_1B7FB84FC(0xD000000000000021, 0x80000001B80CCC50, &v10);
    _os_log_impl(&dword_1B7FB5000, v2, v3, "%{public}s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x1B8CB8970](v5, -1, -1);
    MEMORY[0x1B8CB8970](v4, -1, -1);
  }

  v9 = 0;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v9);
  v6 = swift_task_alloc();
  *(v0 + 32) = v6;
  *v6 = v0;
  v6[1] = sub_1B80AD66C;
  v7 = *(v0 + 24);

  return sub_1B7FC225C();
}

uint64_t sub_1B80AD66C()
{
  v1 = *(*v0 + 32);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B80AD768, 0, 0);
}

uint64_t sub_1B80AD768()
{
  v1 = *(v0[3] + 56);
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_1B7FCE788;
  v3 = v0[2];

  return sub_1B801B980(v3);
}

uint64_t Session.cachedLocation(for:includeAddress:)(uint64_t a1, char a2)
{
  *(v3 + 48) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  return MEMORY[0x1EEE6DFA0](sub_1B80AD828, 0, 0);
}

uint64_t sub_1B80AD828()
{
  v32 = v0;
  v1 = *(*(v0 + 16) + 16);
  if (v1)
  {
    if (qword_1ED8DD6B0 != -1)
    {
      swift_once();
      v25 = *(v0 + 16);
    }

    v2 = sub_1B80C900C();
    __swift_project_value_buffer(v2, qword_1ED8DDE50);

    v3 = sub_1B80C8FEC();
    v4 = sub_1B80C941C();

    if (os_log_type_enabled(v3, v4))
    {
      v28 = v4;
      log = v3;
      v5 = *(v0 + 16);
      v6 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v30 = v26;
      *v6 = 141558531;
      *(v6 + 4) = 1752392040;
      buf = v6;
      *(v6 + 12) = 2081;
      *v31 = MEMORY[0x1E69E7CC0];
      sub_1B7FCF988(0, v1, 0);
      v7 = *v31;
      v8 = *(*v31 + 16);
      v9 = 16 * v8;
      v10 = (v5 + 40);
      do
      {
        v11 = *(v10 - 1);
        v12 = *v10;
        *v31 = v7;
        v13 = *(v7 + 24);

        if (v8 >= v13 >> 1)
        {
          sub_1B7FCF988((v13 > 1), v8 + 1, 1);
          v7 = *v31;
        }

        *(v7 + 16) = v8 + 1;
        v14 = v7 + v9;
        *(v14 + 32) = v11;
        *(v14 + 40) = v12;
        v9 += 16;
        v10 += 22;
        ++v8;
        --v1;
      }

      while (v1);
      v18 = *(v0 + 48);
      v19 = MEMORY[0x1B8CB7B30](v7, MEMORY[0x1E69E6158]);
      v21 = v20;

      v22 = sub_1B7FB84FC(v19, v21, &v30);

      *(buf + 14) = v22;
      *(buf + 11) = 1024;
      *(buf + 6) = v18;
      v3 = log;
      _os_log_impl(&dword_1B7FB5000, log, v28, "cachedLocation for %{private,mask.hash}s, includeAddress: %{BOOL}d", buf, 0x1Cu);
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x1B8CB8970](v26, -1, -1);
      MEMORY[0x1B8CB8970](buf, -1, -1);
    }

    v31[0] = 0;
    _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(v31);
    v23 = swift_task_alloc();
    *(v0 + 32) = v23;
    *v23 = v0;
    v23[1] = sub_1B80ADB74;
    v24 = *(v0 + 24);

    return sub_1B7FC225C();
  }

  else
  {
    sub_1B8010040();
    swift_allocError();
    *v15 = 3;
    swift_willThrow();
    v16 = *(v0 + 8);

    return v16();
  }
}

uint64_t sub_1B80ADB74()
{
  v1 = *(*v0 + 32);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B80ADC70, 0, 0);
}

uint64_t sub_1B80ADC70()
{
  v1 = *(*(v0 + 24) + 56);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_1B80ADD14;
  v3 = *(v0 + 48);
  v4 = *(v0 + 16);

  return sub_1B8021E30(v4, v3, 1);
}

uint64_t sub_1B80ADD14(uint64_t a1)
{
  v3 = *(*v1 + 40);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t Session.locations(for:reverseGeocode:)(uint64_t a1, char a2)
{
  *(v3 + 728) = v2;
  *(v3 + 824) = a2;
  *(v3 + 720) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B80ADE3C, 0, 0);
}

uint64_t sub_1B80ADE3C()
{
  v37 = v0;
  v1 = *(v0 + 720);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 32);
    do
    {
      v4 = *(v0 + 824);
      v6 = v3[1];
      v5 = v3[2];
      *(v0 + 16) = *v3;
      *(v0 + 32) = v6;
      *(v0 + 48) = v5;
      v7 = v3[6];
      v9 = v3[3];
      v8 = v3[4];
      *(v0 + 96) = v3[5];
      *(v0 + 112) = v7;
      *(v0 + 64) = v9;
      *(v0 + 80) = v8;
      v10 = v3[10];
      v12 = v3[7];
      v11 = v3[8];
      *(v0 + 160) = v3[9];
      *(v0 + 176) = v10;
      *(v0 + 128) = v12;
      *(v0 + 144) = v11;
      v13 = v3[9];
      v34 = v3[8];
      v35 = v13;
      v36 = v3[10];
      v14 = v3[5];
      v30 = v3[4];
      v31 = v14;
      v15 = v3[7];
      v32 = v3[6];
      v33 = v15;
      v16 = v3[1];
      v26 = *v3;
      v27 = v16;
      v17 = v3[3];
      v28 = v3[2];
      v29 = v17;
      sub_1B7FC8DA4(v0 + 16, v0 + 192);
      sub_1B80B6254(&v26, v4);
      v18 = v35;
      *(v0 + 672) = v34;
      *(v0 + 688) = v18;
      *(v0 + 704) = v36;
      v19 = v31;
      *(v0 + 608) = v30;
      *(v0 + 624) = v19;
      v20 = v33;
      *(v0 + 640) = v32;
      *(v0 + 656) = v20;
      v21 = v27;
      *(v0 + 544) = v26;
      *(v0 + 560) = v21;
      v22 = v29;
      *(v0 + 576) = v28;
      *(v0 + 592) = v22;
      sub_1B7FCAD28(v0 + 544);
      v3 += 11;
      --v2;
    }

    while (v2);
  }

  LOBYTE(v26) = 0;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v26);
  v23 = swift_task_alloc();
  *(v0 + 736) = v23;
  *v23 = v0;
  v23[1] = sub_1B80AE024;
  v24 = *(v0 + 728);

  return sub_1B7FC225C();
}

uint64_t sub_1B80AE024()
{
  v1 = *(*v0 + 736);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B80AE120, 0, 0);
}

uint64_t sub_1B80AE120()
{
  v0[93] = *(v0[91] + 56);
  v1 = swift_task_alloc();
  v0[94] = v1;
  *v1 = v0;
  v1[1] = sub_1B80AE1C0;
  v2 = v0[90];

  return sub_1B803A944(v2);
}

uint64_t sub_1B80AE1C0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 752);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    *(v4 + 760) = a1;

    return MEMORY[0x1EEE6DFA0](sub_1B80AE30C, 0, 0);
  }
}

uint64_t sub_1B80AE30C()
{
  v5 = v0;
  v4 = 0;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v4);
  v1 = swift_task_alloc();
  *(v0 + 768) = v1;
  *v1 = v0;
  v1[1] = sub_1B80AE3A8;
  v2 = *(v0 + 728);

  return sub_1B7FC225C();
}

uint64_t sub_1B80AE3A8()
{
  v1 = *v0;
  v2 = *(*v0 + 768);
  v3 = *v0;

  v4 = swift_task_alloc();
  v1[97] = v4;
  *v4 = v3;
  v4[1] = sub_1B80AE500;
  v5 = v1[95];
  v6 = v1[93];

  return sub_1B80283B4(v5);
}

uint64_t sub_1B80AE500(uint64_t a1)
{
  v2 = *(*v1 + 776);
  v3 = *(*v1 + 760);
  v5 = *v1;
  *(*v1 + 784) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1B80AE620, 0, 0);
}

uint64_t sub_1B80AE620()
{
  v16 = v0;
  if (qword_1ED8DD6B0 != -1)
  {
    swift_once();
  }

  v1 = v0[98];
  v2 = sub_1B80C900C();
  v0[99] = __swift_project_value_buffer(v2, qword_1ED8DDE50);

  v3 = sub_1B80C8FEC();
  v4 = sub_1B80C941C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[98];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15 = v7;
    *v6 = 136446466;
    *(v6 + 4) = sub_1B7FB84FC(0xD00000000000001ELL, 0x80000001B80CCBF0, &v15);
    *(v6 + 12) = 2080;
    type metadata accessor for Location();
    sub_1B8032C04();
    v8 = sub_1B80C902C();
    v10 = sub_1B7FB84FC(v8, v9, &v15);

    *(v6 + 14) = v10;
    _os_log_impl(&dword_1B7FB5000, v3, v4, "%{public}s Cached (on-disk) locations: %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B8CB8970](v7, -1, -1);
    MEMORY[0x1B8CB8970](v6, -1, -1);
  }

  v14 = 0;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v14);
  v11 = swift_task_alloc();
  v0[100] = v11;
  *v11 = v0;
  v11[1] = sub_1B80AE858;
  v12 = v0[91];

  return sub_1B7FC225C();
}

uint64_t sub_1B80AE858()
{
  v1 = *v0;
  v2 = *(*v0 + 800);
  v3 = *v0;

  v4 = swift_task_alloc();
  *(v1 + 808) = v4;
  *v4 = v3;
  v4[1] = sub_1B80AE9B4;
  v5 = *(v1 + 784);
  v6 = *(v1 + 744);
  v7 = *(v1 + 824);

  return sub_1B8029930(v5, v7);
}

uint64_t sub_1B80AE9B4(uint64_t a1)
{
  v2 = *(*v1 + 808);
  v3 = *(*v1 + 784);
  v5 = *v1;
  *(*v1 + 816) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1B80AEAD4, 0, 0);
}

uint64_t sub_1B80AEAD4()
{
  v16 = v0;
  v1 = *(v0 + 816);
  v2 = *(v0 + 792);

  v3 = sub_1B80C8FEC();
  v4 = sub_1B80C941C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 816);
    v6 = *(v0 + 824);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v7 = 136446722;
    *(v7 + 4) = sub_1B7FB84FC(0xD00000000000001ELL, 0x80000001B80CCBF0, &v15);
    *(v7 + 12) = 1024;
    *(v7 + 14) = v6;
    *(v7 + 18) = 2080;
    type metadata accessor for Location();
    sub_1B8032C04();
    v9 = sub_1B80C902C();
    v11 = sub_1B7FB84FC(v9, v10, &v15);

    *(v7 + 20) = v11;
    _os_log_impl(&dword_1B7FB5000, v3, v4, "%{public}s reverseGeocode:%{BOOL}d:  location:%s", v7, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x1B8CB8970](v8, -1, -1);
    MEMORY[0x1B8CB8970](v7, -1, -1);
  }

  v12 = *(v0 + 8);
  v13 = *(v0 + 816);

  return v12(v13);
}

uint64_t Session.latestLocations(for:includeAddress:clientID:)(uint64_t a1, char a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 128) = a2;
  *(v4 + 16) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B80AECC0, 0, 0);
}

uint64_t sub_1B80AECC0()
{
  v33 = v0;
  v1 = v0;
  if (qword_1ED8DD6B0 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 16);
  v3 = sub_1B80C900C();
  *(v0 + 40) = __swift_project_value_buffer(v3, qword_1ED8DDE50);

  v4 = sub_1B80C8FEC();
  v5 = sub_1B80C941C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 16);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v31 = v8;
    *v7 = 136446979;
    *(v7 + 4) = sub_1B7FB84FC(0xD00000000000002DLL, 0x80000001B80CE700, &v31);
    *(v7 + 12) = 2160;
    *(v7 + 14) = 1752392040;
    *(v7 + 22) = 2081;
    v9 = *(v6 + 16);
    v10 = MEMORY[0x1E69E7CC0];
    if (v9)
    {
      v27 = v8;
      v28 = v5;
      v29 = v4;
      v30 = v0;
      v11 = *(v0 + 16);
      v32 = MEMORY[0x1E69E7CC0];
      sub_1B7FCF988(0, v9, 0);
      v10 = v32;
      v12 = *(v32 + 16);
      v13 = 16 * v12;
      v14 = (v11 + 40);
      do
      {
        v15 = *(v14 - 1);
        v16 = *v14;
        v32 = v10;
        v17 = *(v10 + 24);

        if (v12 >= v17 >> 1)
        {
          sub_1B7FCF988((v17 > 1), v12 + 1, 1);
          v10 = v32;
        }

        *(v10 + 16) = v12 + 1;
        v18 = v10 + v13;
        *(v18 + 32) = v15;
        *(v18 + 40) = v16;
        v13 += 16;
        v14 += 22;
        ++v12;
        --v9;
      }

      while (v9);
      v4 = v29;
      v1 = v30;
      v5 = v28;
      v8 = v27;
    }

    v19 = *(v1 + 128);
    v20 = MEMORY[0x1B8CB7B30](v10, MEMORY[0x1E69E6158]);
    v22 = v21;

    v23 = sub_1B7FB84FC(v20, v22, &v31);

    *(v7 + 24) = v23;
    *(v7 + 32) = 1024;
    *(v7 + 34) = v19;
    _os_log_impl(&dword_1B7FB5000, v4, v5, "%{public}s handles: %{private,mask.hash}s includeAddress: %{BOOL}d", v7, 0x26u);
    swift_arrayDestroy();
    MEMORY[0x1B8CB8970](v8, -1, -1);
    MEMORY[0x1B8CB8970](v7, -1, -1);
  }

  LOBYTE(v32) = 0;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v32);
  v24 = swift_task_alloc();
  *(v1 + 48) = v24;
  *v24 = v1;
  v24[1] = sub_1B80AEFDC;
  v25 = *(v1 + 32);

  return sub_1B7FC225C();
}

uint64_t sub_1B80AEFDC()
{
  v1 = *(*v0 + 48);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B80AF0D8, 0, 0);
}

uint64_t sub_1B80AF0D8()
{
  v0[7] = *(v0[4] + 56);
  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_1B80AF178;
  v3 = v0[2];
  v2 = v0[3];

  return sub_1B8034B88(v3, v2);
}

uint64_t sub_1B80AF178(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    *(v4 + 72) = a1;

    return MEMORY[0x1EEE6DFA0](sub_1B80AF2C4, 0, 0);
  }
}

uint64_t sub_1B80AF2C4()
{
  v5 = v0;
  v4 = 0;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v4);
  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_1B80AF360;
  v2 = *(v0 + 32);

  return sub_1B7FC225C();
}

uint64_t sub_1B80AF360()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  v3 = *v0;

  v4 = swift_task_alloc();
  v1[11] = v4;
  *v4 = v3;
  v4[1] = sub_1B80AF4B8;
  v5 = v1[9];
  v6 = v1[7];

  return sub_1B80283B4(v5);
}

uint64_t sub_1B80AF4B8(uint64_t a1)
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 96) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1B80AF5D8, 0, 0);
}

uint64_t sub_1B80AF5D8()
{
  v5 = v0;
  v4 = 0;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v4);
  v1 = swift_task_alloc();
  *(v0 + 104) = v1;
  *v1 = v0;
  v1[1] = sub_1B80AF674;
  v2 = *(v0 + 32);

  return sub_1B7FC225C();
}

uint64_t sub_1B80AF674()
{
  v1 = *v0;
  v2 = *(*v0 + 104);
  v3 = *v0;

  v4 = swift_task_alloc();
  *(v1 + 112) = v4;
  *v4 = v3;
  v4[1] = sub_1B80AF7D0;
  v5 = *(v1 + 96);
  v6 = *(v1 + 56);
  v7 = *(v1 + 128);

  return sub_1B8029930(v5, v7);
}

uint64_t sub_1B80AF7D0(uint64_t a1)
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 96);
  v5 = *v1;
  *(*v1 + 120) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1B80AF8F0, 0, 0);
}

uint64_t sub_1B80AF8F0()
{
  v16 = v0;
  v1 = *(v0 + 120);
  v2 = *(v0 + 40);

  v3 = sub_1B80C8FEC();
  v4 = sub_1B80C941C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 120);
    v6 = *(v0 + 128);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v7 = 136446722;
    *(v7 + 4) = sub_1B7FB84FC(0xD00000000000002DLL, 0x80000001B80CE700, &v15);
    *(v7 + 12) = 1024;
    *(v7 + 14) = v6;
    *(v7 + 18) = 2080;
    type metadata accessor for Location();
    sub_1B8032C04();
    v9 = sub_1B80C902C();
    v11 = sub_1B7FB84FC(v9, v10, &v15);

    *(v7 + 20) = v11;
    _os_log_impl(&dword_1B7FB5000, v3, v4, "%{public}s includeAddress:%{BOOL}d:  location:%s", v7, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x1B8CB8970](v8, -1, -1);
    MEMORY[0x1B8CB8970](v7, -1, -1);
  }

  v12 = *(v0 + 8);
  v13 = *(v0 + 120);

  return v12(v13);
}

uint64_t Session.subscribeToBackgroundProactiveLocations(clientID:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B80AFAD4, 0, 0);
}

uint64_t sub_1B80AFAD4()
{
  v5 = v0;
  v4 = 0;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v4);
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1B80AFB70;
  v2 = *(v0 + 24);

  return sub_1B7FC225C();
}

uint64_t sub_1B80AFB70()
{
  v1 = *(*v0 + 32);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B80AFC6C, 0, 0);
}

uint64_t sub_1B80AFC6C()
{
  v1 = *(v0[3] + 56);
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_1B7FCE788;
  v3 = v0[2];

  return sub_1B801E8AC(v3);
}

uint64_t Session.locationStream(handles:priority:reverseGeocode:)(uint64_t a1, uint64_t a2, _BYTE *a3, char a4)
{
  *(v5 + 24) = a2;
  *(v5 + 32) = v4;
  *(v5 + 57) = a4;
  *(v5 + 16) = a1;
  *(v5 + 58) = *a3;
  return MEMORY[0x1EEE6DFA0](sub_1B80AFD38, 0, 0);
}

uint64_t sub_1B80AFD38()
{
  v5 = v0;
  v4 = 0;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v4);
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_1B80AFDD4;
  v2 = *(v0 + 32);

  return sub_1B7FC225C();
}

uint64_t sub_1B80AFDD4()
{
  v1 = *(*v0 + 40);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B80AFED0, 0, 0);
}

uint64_t sub_1B80AFED0()
{
  v1 = *(v0 + 58);
  v2 = *(*(v0 + 32) + 56);
  *(v0 + 48) = v2;
  *(v0 + 56) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B80AFEFC, v2, 0);
}

uint64_t sub_1B80AFEFC()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 16);
  sub_1B8014CCC(*(v0 + 24), (v0 + 56), *(v0 + 57));
  v3 = *(v0 + 8);

  return v3();
}

uint64_t Session.startRefreshingLocation(forHandles:priority:)(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  *(v4 + 56) = a2;
  *(v4 + 64) = v3;
  *(v4 + 48) = a1;
  v6 = *(*(type metadata accessor for ClientID() - 8) + 64) + 15;
  *(v4 + 72) = swift_task_alloc();
  *(v4 + 105) = *a3;

  return MEMORY[0x1EEE6DFA0](sub_1B80B0008, 0, 0);
}

uint64_t sub_1B80B0008()
{
  v5 = v0;
  v4 = 0;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v4);
  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_1B80B00A4;
  v2 = *(v0 + 64);

  return sub_1B7FC225C();
}

uint64_t sub_1B80B00A4()
{
  v1 = *(*v0 + 80);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B80B01A0, 0, 0);
}

uint64_t sub_1B80B01A0()
{
  v18 = v0;
  v1 = *(v0 + 64);
  v2 = *(v1 + 56);
  *(v0 + 104) = *(v0 + 105);
  v3 = *(v1 + 104);
  v4 = *(v1 + 88);
  *(v0 + 16) = *(v1 + 80);
  *(v0 + 24) = v4;
  *(v0 + 40) = v3;
  v5 = objc_opt_self();

  v6 = [v5 mainBundle];
  v7 = [v6 bundleIdentifier];

  if (v7)
  {
    v8 = sub_1B80C90BC();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  v11 = *(v0 + 72);
  v17 = 0;
  ClientID.init(identifier:connectionType:)(v8, v10, &v17, v11);
  v12 = swift_task_alloc();
  *(v0 + 88) = v12;
  *v12 = v0;
  v12[1] = sub_1B80B0314;
  v13 = *(v0 + 72);
  v14 = *(v0 + 48);
  v15 = *(v0 + 56);

  return sub_1B8017590(v14, v15, (v0 + 104), v0 + 16, v13);
}

uint64_t sub_1B80B0314()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 72);
  v5 = *v1;
  v2[12] = v0;

  sub_1B7FD06B4(v4);
  v6 = v2[5];

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B80B64A0, 0, 0);
  }

  else
  {
    v7 = v2[9];

    v8 = *(v5 + 8);

    return v8();
  }
}

uint64_t Session.addHandlesToLocationStream(_:priority:)(uint64_t a1, _BYTE *a2)
{
  *(v3 + 48) = a1;
  *(v3 + 56) = v2;
  v5 = *(*(type metadata accessor for ClientID() - 8) + 64) + 15;
  *(v3 + 64) = swift_task_alloc();
  *(v3 + 97) = *a2;

  return MEMORY[0x1EEE6DFA0](sub_1B80B053C, 0, 0);
}

uint64_t sub_1B80B053C()
{
  v8 = v0;
  if (*(v0[6] + 16))
  {
    v7[0] = 0;
    _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(v7);
    v1 = swift_task_alloc();
    v0[9] = v1;
    *v1 = v0;
    v1[1] = sub_1B80B0658;
    v2 = v0[7];

    return sub_1B7FC225C();
  }

  else
  {
    sub_1B8010040();
    swift_allocError();
    *v4 = 3;
    swift_willThrow();
    v5 = v0[8];

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_1B80B0658()
{
  v1 = *(*v0 + 72);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B80B0754, 0, 0);
}

uint64_t sub_1B80B0754()
{
  v17 = v0;
  v1 = *(v0 + 56);
  v2 = *(v1 + 56);
  *(v0 + 96) = *(v0 + 97);
  v3 = *(v1 + 104);
  v4 = *(v1 + 88);
  *(v0 + 16) = *(v1 + 80);
  *(v0 + 24) = v4;
  *(v0 + 40) = v3;
  v5 = objc_opt_self();

  v6 = [v5 mainBundle];
  v7 = [v6 bundleIdentifier];

  if (v7)
  {
    v8 = sub_1B80C90BC();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  v11 = *(v0 + 64);
  v16 = 0;
  ClientID.init(identifier:connectionType:)(v8, v10, &v16, v11);
  v12 = swift_task_alloc();
  *(v0 + 80) = v12;
  *v12 = v0;
  v12[1] = sub_1B80B08CC;
  v13 = *(v0 + 64);
  v14 = *(v0 + 48);

  return sub_1B8018FD8(v14, (v0 + 96), v0 + 16, 0, v13);
}

uint64_t sub_1B80B08CC()
{
  v2 = *(*v1 + 80);
  v3 = *v1;
  v3[11] = v0;

  if (v0)
  {
    sub_1B7FD06B4(v3[8]);
    v4 = v3[5];

    return MEMORY[0x1EEE6DFA0](sub_1B80B0A30, 0, 0);
  }

  else
  {
    sub_1B7FD06B4(v3[8]);
    v5 = v3[5];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_1B80B0A30()
{
  v1 = v0[11];
  v2 = v0[8];

  v3 = v0[1];

  return v3();
}

uint64_t Session.cachedLocation(for:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B803CC50;

  return Session.cachedLocation(for:includeAddress:)(a1, 0);
}

uint64_t Session.locations(for:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B804E0A8;

  return Session.locations(for:reverseGeocode:)(a1, 0);
}

uint64_t Session.renewSubscription(priority:handles:)(_BYTE *a1, uint64_t a2)
{
  v4 = v2;
  v6 = *v4;
  *(v3 + 88) = a2;
  *(v3 + 96) = v6;
  v7 = *(*(type metadata accessor for ClientID() - 8) + 64) + 15;
  *(v3 + 104) = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660B0, &qword_1B80D2E20);
  *(v3 + 112) = v8;
  v9 = *(v8 - 8);
  *(v3 + 120) = v9;
  v10 = *(v9 + 64) + 15;
  *(v3 + 128) = swift_task_alloc();
  *(v3 + 225) = *a1;

  return MEMORY[0x1EEE6DFA0](sub_1B80B0CEC, 0, 0);
}

uint64_t sub_1B80B0CEC()
{
  v35 = v0;
  v34[0] = *(v0 + 88);

  sub_1B80B577C(v34);
  v1 = v34[0];
  *(v0 + 136) = v34[0];
  v2 = *(v1 + 2);
  v3 = MEMORY[0x1E69E7CC0];
  v33 = v1;
  if (v2)
  {
    v34[0] = MEMORY[0x1E69E7CC0];
    sub_1B7FCF988(0, v2, 0);
    v3 = v34[0];
    v4 = *(v34[0] + 2);
    v5 = 16 * v4;
    v6 = (v1 + 40);
    do
    {
      v8 = *(v6 - 1);
      v7 = *v6;
      v34[0] = v3;
      v9 = v4 + 1;
      v10 = *(v3 + 3);

      if (v4 >= v10 >> 1)
      {
        sub_1B7FCF988((v10 > 1), v9, 1);
        v3 = v34[0];
      }

      *(v3 + 2) = v9;
      v11 = &v3[v5];
      *(v11 + 4) = v8;
      *(v11 + 5) = v7;
      v5 += 16;
      v6 += 2;
      ++v4;
      --v2;
    }

    while (v2);
  }

  *(v0 + 80) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66070, &qword_1B80D6930);
  sub_1B807E2E0();
  v12 = sub_1B80C906C();
  v14 = v13;

  *(v0 + 144) = v12;
  *(v0 + 152) = v14;
  if (qword_1ED8DD6B0 != -1)
  {
    swift_once();
  }

  v15 = sub_1B80C900C();
  *(v0 + 160) = __swift_project_value_buffer(v15, qword_1ED8DDE50);
  swift_retain_n();

  v16 = sub_1B80C8FEC();
  v17 = sub_1B80C941C();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = *(v0 + 225);
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v34[0] = v20;
    *v19 = 136446722;
    v21 = 0xE800000000000000;
    v22 = 0x776F6C6C6168732ELL;
    v23 = 0xE500000000000000;
    v24 = 0x6576696C2ELL;
    if (v18 != 2)
    {
      v24 = 0xD000000000000014;
      v23 = 0x80000001B80CBF40;
    }

    if (!v18)
    {
      v22 = 0xD000000000000015;
      v21 = 0x80000001B80CBFD0;
    }

    if (v18 <= 1)
    {
      v25 = v22;
    }

    else
    {
      v25 = v24;
    }

    if (v18 <= 1)
    {
      v26 = v21;
    }

    else
    {
      v26 = v23;
    }

    v27 = sub_1B7FB84FC(v25, v26, v34);

    *(v19 + 4) = v27;
    *(v19 + 12) = 2048;
    v28 = *(v33 + 2);

    *(v19 + 14) = v28;

    *(v19 + 22) = 2080;
    *(v19 + 24) = sub_1B7FB84FC(v12, v14, v34);
    _os_log_impl(&dword_1B7FB5000, v16, v17, "Renewing %{public}s subscription for %ld handles: %s", v19, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1B8CB8970](v20, -1, -1);
    MEMORY[0x1B8CB8970](v19, -1, -1);
  }

  else
  {
  }

  v29 = *(v0 + 96);
  LOBYTE(v34[0]) = 2;
  RequestOrigin.init(_:)(v34);
  v30 = *(v0 + 40);
  *(v0 + 48) = *(v0 + 16);
  *(v0 + 56) = *(v0 + 24);
  *(v0 + 72) = v30;
  swift_allocObject();
  v31 = swift_task_alloc();
  *(v0 + 168) = v31;
  *v31 = v0;
  v31[1] = sub_1B80B1134;

  return Session.init(_:)(v0 + 48);
}

uint64_t sub_1B80B1134(uint64_t a1)
{
  v2 = *(*v1 + 168);
  v4 = *v1;
  *(*v1 + 176) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1B80B1234, 0, 0);
}

uint64_t sub_1B80B1234()
{
  v25 = v0;
  v1 = v0[11];
  v2 = *(v1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v23 = MEMORY[0x1E69E7CC0];
    sub_1B8092BA8(0, v2, 0);
    v4 = v23;
    v5 = (v1 + 40);
    do
    {
      v6 = *(v5 - 1);
      v7 = *v5;
      swift_bridgeObjectRetain_n();
      v8 = sub_1B8083930(v3);
      Handle.init(withID:serverID:pushIdentifiers:expiresByGroupId:siblingIdentifiers:favoriteOrder:)(v6, v7, 0, 0, v3, v8, v3, 0, v24, 0);

      v10 = *(v23 + 16);
      v9 = *(v23 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_1B8092BA8((v9 > 1), v10 + 1, 1);
      }

      *(v23 + 16) = v10 + 1;
      v11 = (v23 + 176 * v10);
      v12 = v24[0];
      v13 = v24[2];
      v11[3] = v24[1];
      v11[4] = v13;
      v11[2] = v12;
      v14 = v24[3];
      v15 = v24[4];
      v16 = v24[6];
      v11[7] = v24[5];
      v11[8] = v16;
      v11[5] = v14;
      v11[6] = v15;
      v17 = v24[7];
      v18 = v24[8];
      v19 = v24[10];
      v11[11] = v24[9];
      v11[12] = v19;
      v11[9] = v17;
      v11[10] = v18;
      v5 += 2;
      --v2;
    }

    while (v2);
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

  v0[23] = v4;
  LOBYTE(v24[0]) = 0;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(v24);
  v20 = swift_task_alloc();
  v0[24] = v20;
  *v20 = v0;
  v20[1] = sub_1B80B1400;
  v21 = v0[22];

  return sub_1B7FC225C();
}

uint64_t sub_1B80B1400()
{
  v1 = *(*v0 + 192);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B80B14FC, 0, 0);
}

uint64_t sub_1B80B14FC()
{
  v1 = *(v0 + 225);
  v2 = *(*(v0 + 176) + 56);
  *(v0 + 200) = v2;
  *(v0 + 224) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B80B1528, v2, 0);
}

uint64_t sub_1B80B1528()
{
  v1 = *(v0 + 200);
  v3 = *(v0 + 120);
  v2 = *(v0 + 128);
  v4 = *(v0 + 112);
  sub_1B8014CCC(*(v0 + 184), (v0 + 224), 0);

  (*(v3 + 8))(v2, v4);

  return MEMORY[0x1EEE6DFA0](sub_1B80B15DC, 0, 0);
}

uint64_t sub_1B80B15DC()
{
  v12 = v0;
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    v3 = sub_1B80C90BC();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  v6 = v0[13];
  v11 = 0;
  ClientID.init(identifier:connectionType:)(v3, v5, &v11, v6);
  v7 = swift_task_alloc();
  v0[26] = v7;
  *v7 = v0;
  v7[1] = sub_1B80B16F8;
  v8 = v0[22];
  v9 = v0[13];

  return Session.stopRefreshingLocation(clientID:)(v9);
}

uint64_t sub_1B80B16F8()
{
  v2 = *v1;
  v3 = (*v1)[26];
  v8 = *v1;
  (*v1)[27] = v0;

  if (v0)
  {
    sub_1B7FD06B4(v2[13]);
    v4 = sub_1B80B18B4;
  }

  else
  {
    v5 = v2[19];
    v6 = v2[17];
    sub_1B7FD06B4(v2[13]);

    v4 = sub_1B80B183C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B80B183C()
{
  v1 = v0[22];

  v2 = v0[16];
  v3 = v0[13];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1B80B18B4()
{
  v36 = v0;
  v1 = *(v0 + 216);
  v2 = *(v0 + 176);
  v4 = *(v0 + 152);
  v3 = *(v0 + 160);
  v5 = *(v0 + 136);

  v6 = v1;
  v7 = sub_1B80C8FEC();
  v8 = sub_1B80C93FC();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 225);
    v10 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v35 = v34;
    *v10 = 136446978;
    v11 = 0xE800000000000000;
    v12 = 0x776F6C6C6168732ELL;
    v13 = 0xE500000000000000;
    v14 = 0x6576696C2ELL;
    if (v9 != 2)
    {
      v14 = 0xD000000000000014;
      v13 = 0x80000001B80CBF40;
    }

    if (!v9)
    {
      v12 = 0xD000000000000015;
      v11 = 0x80000001B80CBFD0;
    }

    if (v9 <= 1)
    {
      v15 = v12;
    }

    else
    {
      v15 = v14;
    }

    if (v9 <= 1)
    {
      v16 = v11;
    }

    else
    {
      v16 = v13;
    }

    v17 = *(v0 + 216);
    v19 = *(v0 + 144);
    v18 = *(v0 + 152);
    v20 = *(v0 + 136);
    v21 = sub_1B7FB84FC(v15, v16, &v35);

    *(v10 + 4) = v21;
    *(v10 + 12) = 2048;
    v22 = *(v20 + 16);

    *(v10 + 14) = v22;

    *(v10 + 22) = 2080;
    v23 = sub_1B7FB84FC(v19, v18, &v35);

    *(v10 + 24) = v23;
    *(v10 + 32) = 2112;
    v24 = v17;
    v25 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 34) = v25;
    *v33 = v25;
    _os_log_impl(&dword_1B7FB5000, v7, v8, "Failed to renew %{public}s subscription for %ld handles: %s, error: %@", v10, 0x2Au);
    sub_1B80B6438(v33);
    MEMORY[0x1B8CB8970](v33, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x1B8CB8970](v34, -1, -1);
    MEMORY[0x1B8CB8970](v10, -1, -1);
  }

  else
  {
    v26 = *(v0 + 216);
    v27 = *(v0 + 152);
    v28 = *(v0 + 136);
  }

  v29 = *(v0 + 128);
  v30 = *(v0 + 104);

  v31 = *(v0 + 8);

  return v31();
}

uint64_t Session.processLocationPayload(_:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B80B1BBC, 0, 0);
}

uint64_t sub_1B80B1BBC()
{
  v5 = v0;
  v4 = 0;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v4);
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_1B80B1C58;
  v2 = *(v0 + 32);

  return sub_1B7FC225C();
}

uint64_t sub_1B80B1C58()
{
  v1 = *(*v0 + 40);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B80B1D54, 0, 0);
}

uint64_t sub_1B80B1D54()
{
  v1 = *(v0[4] + 56);
  v2 = swift_task_alloc();
  v0[6] = v2;
  *v2 = v0;
  v2[1] = sub_1B8012DD4;
  v4 = v0[2];
  v3 = v0[3];

  return sub_1B802CE10(v4, v3);
}

uint64_t Session.processLocationCommandPayload(_:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B80B1E14, 0, 0);
}

uint64_t sub_1B80B1E14()
{
  v5 = v0;
  v4 = 0;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v4);
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_1B80B1EB0;
  v2 = *(v0 + 32);

  return sub_1B7FC225C();
}

uint64_t sub_1B80B1EB0()
{
  v1 = *(*v0 + 40);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B80B1FAC, 0, 0);
}

uint64_t sub_1B80B1FAC()
{
  v1 = *(v0[4] + 56);
  v2 = swift_task_alloc();
  v0[6] = v2;
  *v2 = v0;
  v2[1] = sub_1B8012DD4;
  v4 = v0[2];
  v3 = v0[3];

  return sub_1B802D800(v4, v3);
}

uint64_t Session.publishLocation(_:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B80B206C, 0, 0);
}

uint64_t sub_1B80B206C()
{
  v5 = v0;
  v4 = 0;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v4);
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_1B80B2108;
  v2 = *(v0 + 32);

  return sub_1B7FC225C();
}

uint64_t sub_1B80B2108()
{
  v1 = *(*v0 + 40);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B80B2204, 0, 0);
}

uint64_t sub_1B80B2204()
{
  v1 = *(v0[4] + 56);
  v2 = swift_task_alloc();
  v0[6] = v2;
  *v2 = v0;
  v2[1] = sub_1B8012DD4;
  v4 = v0[2];
  v3 = v0[3];

  return sub_1B802E160(v4, v3);
}

uint64_t sub_1B80B22C0()
{
  v5 = v0;
  v4 = 0;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v4);
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1B80B235C;
  v2 = *(v0 + 16);

  return sub_1B7FC225C();
}

uint64_t sub_1B80B235C()
{
  v1 = *(*v0 + 24);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B80B2458, 0, 0);
}

uint64_t sub_1B80B2458()
{
  v1 = *(*(v0 + 16) + 56);
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_1B80B64A4;

  return sub_1B803D728();
}

uint64_t Session.setSharingKey(_:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B80B2510, 0, 0);
}

uint64_t sub_1B80B2510()
{
  v5 = v0;
  v4 = 0;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v4);
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_1B80B25AC;
  v2 = *(v0 + 32);

  return sub_1B7FC225C();
}

uint64_t sub_1B80B25AC()
{
  v1 = *(*v0 + 40);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B80B26A8, 0, 0);
}

uint64_t sub_1B80B26A8()
{
  v1 = *(v0[4] + 56);
  v2 = swift_task_alloc();
  v0[6] = v2;
  *v2 = v0;
  v2[1] = sub_1B8012C24;
  v4 = v0[2];
  v3 = v0[3];

  return sub_1B803DA3C(v4, v3);
}

uint64_t sub_1B80B2764()
{
  v5 = v0;
  v4 = 0;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v4);
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1B80B2800;
  v2 = *(v0 + 16);

  return sub_1B7FC225C();
}

uint64_t sub_1B80B2800()
{
  v1 = *(*v0 + 24);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B80B28FC, 0, 0);
}

uint64_t sub_1B80B28FC()
{
  v1 = *(*(v0 + 16) + 56);
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_1B8048BB0;

  return sub_1B803DD4C();
}

uint64_t sub_1B80B29B0()
{
  v5 = v0;
  v4 = 0;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v4);
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1B80B2A4C;
  v2 = *(v0 + 16);

  return sub_1B7FC225C();
}

uint64_t sub_1B80B2A4C()
{
  v1 = *(*v0 + 24);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B80B2B48, 0, 0);
}

uint64_t sub_1B80B2B48()
{
  v1 = *(*(v0 + 16) + 56);
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_1B80B64A4;

  return sub_1B803E170();
}

uint64_t sub_1B80B2BFC()
{
  v5 = v0;
  v4 = 0;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v4);
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1B80B2C98;
  v2 = *(v0 + 16);

  return sub_1B7FC225C();
}

uint64_t sub_1B80B2C98()
{
  v1 = *(*v0 + 24);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B80B2D94, 0, 0);
}

uint64_t sub_1B80B2D94()
{
  v1 = *(*(v0 + 16) + 56);
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_1B80B64A4;

  return sub_1B803E470();
}

uint64_t Session.processIDSServiceMessage(_:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B80B2E4C, 0, 0);
}

uint64_t sub_1B80B2E4C()
{
  v5 = v0;
  v4 = 0;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v4);
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_1B80B2EE8;
  v2 = *(v0 + 32);

  return sub_1B7FC225C();
}

uint64_t sub_1B80B2EE8()
{
  v1 = *(*v0 + 40);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B80B2FE4, 0, 0);
}

uint64_t sub_1B80B2FE4()
{
  v1 = *(v0[4] + 56);
  v2 = swift_task_alloc();
  v0[6] = v2;
  *v2 = v0;
  v2[1] = sub_1B80B3080;
  v4 = v0[2];
  v3 = v0[3];

  return sub_1B803E8B0(v4, v3);
}

uint64_t sub_1B80B3080(uint64_t a1, uint64_t a2)
{
  v6 = *(*v3 + 48);
  v11 = *v3;

  v9 = *(v11 + 8);
  if (!v2)
  {
    v7 = a1;
    v8 = a2;
  }

  return v9(v7, v8);
}

uint64_t sub_1B80B31B0()
{
  v5 = v0;
  v4 = 0;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v4);
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1B80B324C;
  v2 = *(v0 + 16);

  return sub_1B7FC225C();
}

uint64_t sub_1B80B324C()
{
  v1 = *(*v0 + 24);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B80B3348, 0, 0);
}

uint64_t sub_1B80B3348()
{
  v1 = *(*(v0 + 16) + 56);
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_1B80B33DC;

  return sub_1B803ED54();
}

uint64_t sub_1B80B33DC(uint64_t a1, uint64_t a2)
{
  v6 = *(*v3 + 32);
  v11 = *v3;

  v9 = *(v11 + 8);
  if (!v2)
  {
    v7 = a1;
    v8 = a2;
  }

  return v9(v7, v8);
}

uint64_t sub_1B80B350C()
{
  v5 = v0;
  v4 = 0;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v4);
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1B80B35A8;
  v2 = *(v0 + 16);

  return sub_1B7FC225C();
}

uint64_t sub_1B80B35A8()
{
  v1 = *(*v0 + 24);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B80B36A4, 0, 0);
}

uint64_t sub_1B80B36A4()
{
  v1 = *(*(v0 + 16) + 56);
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_1B804FA0C;

  return sub_1B803F194();
}

uint64_t sub_1B80B3758()
{
  v5 = v0;
  v4 = 0;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v4);
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1B80B37F4;
  v2 = *(v0 + 16);

  return sub_1B7FC225C();
}

uint64_t sub_1B80B37F4()
{
  v1 = *(*v0 + 24);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B80B38F0, 0, 0);
}

uint64_t sub_1B80B38F0()
{
  v1 = *(*(v0 + 16) + 56);
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_1B804FA0C;

  return sub_1B803F48C();
}

uint64_t sub_1B80B39A4()
{
  v5 = v0;
  v4 = 0;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v4);
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1B80B3A40;
  v2 = *(v0 + 16);

  return sub_1B7FC225C();
}

uint64_t sub_1B80B3A40()
{
  v1 = *(*v0 + 24);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B80B3B3C, 0, 0);
}

uint64_t sub_1B80B3B3C()
{
  v1 = *(*(v0 + 16) + 56);
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_1B804FA0C;

  return sub_1B803F784();
}

uint64_t Session.publishCurrentLocationToStewie()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B80B3BF0, 0, 0);
}

uint64_t sub_1B80B3BF0()
{
  v5 = v0;
  v4 = 0;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v4);
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1B80B3C8C;
  v2 = *(v0 + 24);

  return sub_1B7FC225C();
}

uint64_t sub_1B80B3C8C()
{
  v1 = *(*v0 + 32);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B80B3D88, 0, 0);
}

uint64_t sub_1B80B3D88()
{
  v1 = *(v0[3] + 56);
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_1B7FCE788;
  v3 = v0[2];

  return sub_1B803FA84(v3);
}

uint64_t Session.stewiePublishResult()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B80B3E44, 0, 0);
}

uint64_t sub_1B80B3E44()
{
  v5 = v0;
  v4 = 0;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v4);
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1B80B3EE0;
  v2 = *(v0 + 24);

  return sub_1B7FC225C();
}

uint64_t sub_1B80B3EE0()
{
  v1 = *(*v0 + 32);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B80B3FDC, 0, 0);
}

uint64_t sub_1B80B3FDC()
{
  v1 = *(v0[3] + 56);
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_1B7FCE788;
  v3 = v0[2];

  return sub_1B803FD8C(v3);
}

uint64_t Session.currentStewieState()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B80B4098, 0, 0);
}

uint64_t sub_1B80B4098()
{
  v5 = v0;
  v4 = 0;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v4);
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1B80B4134;
  v2 = *(v0 + 24);

  return sub_1B7FC225C();
}

uint64_t sub_1B80B4134()
{
  v1 = *(*v0 + 32);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B80B4230, 0, 0);
}

uint64_t sub_1B80B4230()
{
  v1 = *(v0[3] + 56);
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_1B7FCE7A0;
  v3 = v0[2];

  return sub_1B8040090(v3);
}

uint64_t Session.startMonitoringStewieState()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B7FCB400, 0, 0);
}

uint64_t sub_1B80B430C()
{
  v5 = v0;
  v4 = 0;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v4);
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1B80B43A8;
  v2 = *(v0 + 16);

  return sub_1B7FC225C();
}

uint64_t sub_1B80B43A8()
{
  v1 = *(*v0 + 24);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B80B44A4, 0, 0);
}

uint64_t sub_1B80B44A4()
{
  v1 = *(*(v0 + 16) + 56);
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_1B804FA0C;

  return sub_1B804029C();
}

uint64_t Session.addHandlesToLocationStream(_:priority:reverseGeocode:)(uint64_t a1, _BYTE *a2, char a3)
{
  *(v4 + 57) = a3;
  *(v4 + 16) = a1;
  *(v4 + 24) = v3;
  v6 = *(*(type metadata accessor for ClientID() - 8) + 64) + 15;
  *(v4 + 32) = swift_task_alloc();
  *(v4 + 58) = *a2;

  return MEMORY[0x1EEE6DFA0](sub_1B80B45D8, 0, 0);
}

uint64_t sub_1B80B45D8()
{
  v14 = v0;
  *(v0 + 56) = *(v0 + 58);
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    v3 = sub_1B80C90BC();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  v6 = *(v0 + 32);
  v13 = 0;
  ClientID.init(identifier:connectionType:)(v3, v5, &v13, v6);
  v7 = swift_task_alloc();
  *(v0 + 40) = v7;
  *v7 = v0;
  v7[1] = sub_1B80B4710;
  v9 = *(v0 + 24);
  v8 = *(v0 + 32);
  v10 = *(v0 + 57);
  v11 = *(v0 + 16);

  return Session.addHandlesToLocationStream(_:priority:reverseGeocode:clientID:)(v11, (v0 + 56), v10, v8);
}

uint64_t sub_1B80B4710()
{
  v2 = *(*v1 + 40);
  v3 = *(*v1 + 32);
  v4 = *v1;
  v4[6] = v0;

  sub_1B7FD06B4(v3);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B8011CE8, 0, 0);
  }

  else
  {
    v5 = v4[4];

    v6 = v4[1];

    return v6();
  }
}

uint64_t Session.stopRefreshingLocation(forHandles:priority:)(uint64_t a1, _BYTE *a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  v5 = *(*(type metadata accessor for ClientID() - 8) + 64) + 15;
  *(v3 + 32) = swift_task_alloc();
  *(v3 + 57) = *a2;

  return MEMORY[0x1EEE6DFA0](sub_1B80B4910, 0, 0);
}

uint64_t sub_1B80B4910()
{
  v13 = v0;
  *(v0 + 56) = *(v0 + 57);
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    v3 = sub_1B80C90BC();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  v6 = *(v0 + 32);
  v12 = 0;
  ClientID.init(identifier:connectionType:)(v3, v5, &v12, v6);
  v7 = swift_task_alloc();
  *(v0 + 40) = v7;
  *v7 = v0;
  v7[1] = sub_1B80B4A44;
  v9 = *(v0 + 24);
  v8 = *(v0 + 32);
  v10 = *(v0 + 16);

  return Session.stopRefreshingLocation(forHandles:priority:clientID:)(v10, (v0 + 56), v8);
}

uint64_t sub_1B80B4A44()
{
  v2 = *(*v1 + 40);
  v3 = *(*v1 + 32);
  v4 = *v1;
  v4[6] = v0;

  sub_1B7FD06B4(v3);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B7FFAF74, 0, 0);
  }

  else
  {
    v5 = v4[4];

    v6 = v4[1];

    return v6();
  }
}

uint64_t Session.stopRefreshingLocation()()
{
  *(v1 + 16) = v0;
  v2 = *(*(type metadata accessor for ClientID() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B80B4C38, 0, 0);
}

uint64_t sub_1B80B4C38()
{
  v12 = v0;
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    v3 = sub_1B80C90BC();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  v6 = v0[3];
  v11 = 0;
  ClientID.init(identifier:connectionType:)(v3, v5, &v11, v6);
  v7 = swift_task_alloc();
  v0[4] = v7;
  *v7 = v0;
  v7[1] = sub_1B80B4D50;
  v9 = v0[2];
  v8 = v0[3];

  return Session.stopRefreshingLocation(clientID:)(v8);
}

uint64_t sub_1B80B4D50()
{
  v2 = *(*v1 + 32);
  v3 = *(*v1 + 24);
  v4 = *v1;
  v4[5] = v0;

  sub_1B7FD06B4(v3);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B80B4EB4, 0, 0);
  }

  else
  {
    v5 = v4[3];

    v6 = v4[1];

    return v6();
  }
}

uint64_t sub_1B80B4EB4()
{
  v1 = v0[3];

  v2 = v0[1];
  v3 = v0[5];

  return v2();
}

uint64_t Session.latestLocations(for:includeAddress:)(uint64_t a1, char a2)
{
  *(v3 + 56) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  v4 = *(*(type metadata accessor for ClientID() - 8) + 64) + 15;
  *(v3 + 32) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B80B4FAC, 0, 0);
}

uint64_t sub_1B80B4FAC()
{
  v14 = v0;
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    v3 = sub_1B80C90BC();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  v6 = *(v0 + 32);
  v13 = 0;
  ClientID.init(identifier:connectionType:)(v3, v5, &v13, v6);
  v7 = swift_task_alloc();
  *(v0 + 40) = v7;
  *v7 = v0;
  v7[1] = sub_1B80B50CC;
  v9 = *(v0 + 24);
  v8 = *(v0 + 32);
  v10 = *(v0 + 56);
  v11 = *(v0 + 16);

  return Session.latestLocations(for:includeAddress:clientID:)(v11, v10, v8);
}

uint64_t sub_1B80B50CC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  v6 = *v2;
  *(*v2 + 48) = v1;

  sub_1B7FD06B4(*(v4 + 32));
  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B7FFAF74, 0, 0);
  }

  else
  {

    v7 = *(v6 + 8);

    return v7(a1);
  }
}

uint64_t Session.subscribeToBackgroundProactiveLocations()()
{
  *(v1 + 16) = v0;
  v2 = *(*(type metadata accessor for ClientID() - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B80B52CC, 0, 0);
}

uint64_t sub_1B80B52CC()
{
  v12 = v0;
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    v3 = sub_1B80C90BC();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  v6 = v0[3];
  v10 = 0;
  ClientID.init(identifier:connectionType:)(v3, v5, &v10, v6);
  v11 = 0;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v11);
  v7 = swift_task_alloc();
  v0[4] = v7;
  *v7 = v0;
  v7[1] = sub_1B80B53EC;
  v8 = v0[2];

  return sub_1B7FC225C();
}

uint64_t sub_1B80B53EC()
{
  v1 = *(*v0 + 32);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B80B54E8, 0, 0);
}

uint64_t sub_1B80B54E8()
{
  v1 = *(v0[2] + 56);
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_1B80B5584;
  v3 = v0[3];

  return sub_1B801E8AC(v3);
}

uint64_t sub_1B80B5584()
{
  v2 = *(*v1 + 40);
  v3 = *v1;
  v3[6] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B80B56D0, 0, 0);
  }

  else
  {
    sub_1B7FD06B4(v3[3]);

    v4 = v3[1];

    return v4();
  }
}

uint64_t sub_1B80B56D0()
{
  sub_1B7FD06B4(v0[3]);

  v1 = v0[1];
  v2 = v0[6];

  return v1();
}

uint64_t sub_1B80B577C(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1B80B5768(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1B80B57E8(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1B80B57E8(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1B80C97EC();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v5 = sub_1B80C924C();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1B80B59B0(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1B80B58E0(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1B80B58E0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_1B80C981C(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1B80B59B0(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_1B80B6240(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_1B80B5F8C((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_1B80C981C();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_1B80C981C();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1B807DDD0(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_1B807DDD0((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_1B80B5F8C((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1B80B6240(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_1B80B61B4(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = (v9 + a4);
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = sub_1B80C981C(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}

uint64_t sub_1B80B5F8C(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_1B80C981C() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_1B80C981C() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_1B80B61B4(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1B80B6240(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

void sub_1B80B6254(_OWORD *a1, char a2)
{
  v3 = a1[9];
  v14[8] = a1[8];
  v14[9] = v3;
  v14[10] = a1[10];
  v4 = a1[5];
  v14[4] = a1[4];
  v14[5] = v4;
  v5 = a1[7];
  v14[6] = a1[6];
  v14[7] = v5;
  v6 = a1[1];
  v14[0] = *a1;
  v14[1] = v6;
  v7 = a1[3];
  v14[2] = a1[2];
  v14[3] = v7;
  if (qword_1ED8DD6B0 != -1)
  {
    swift_once();
  }

  v8 = sub_1B80C900C();
  __swift_project_value_buffer(v8, qword_1ED8DDE50);
  sub_1B7FC8DA4(v14, v13);
  v9 = sub_1B80C8FEC();
  v10 = sub_1B80C941C();
  sub_1B7FCAD28(v14);
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13[0] = v12;
    *v11 = 136446979;
    *(v11 + 4) = sub_1B7FB84FC(0xD00000000000001ELL, 0x80000001B80CCBF0, v13);
    *(v11 + 12) = 2160;
    *(v11 + 14) = 1752392040;
    *(v11 + 22) = 2081;
    *(v11 + 24) = sub_1B7FB84FC(*&v14[0], *(&v14[0] + 1), v13);
    *(v11 + 32) = 1024;
    *(v11 + 34) = a2 & 1;
    _os_log_impl(&dword_1B7FB5000, v9, v10, "%{public}s handle: %{private,mask.hash}s reverseGeocode: %{BOOL}d", v11, 0x26u);
    swift_arrayDestroy();
    MEMORY[0x1B8CB8970](v12, -1, -1);
    MEMORY[0x1B8CB8970](v11, -1, -1);
  }
}

uint64_t sub_1B80B6438(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65EE8, &qword_1B80D2478);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Session.decryptNotification(encryptedPayload:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1B80B64CC, 0, 0);
}

uint64_t sub_1B80B64CC()
{
  v5 = v0;
  v4 = 0;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v4);
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_1B80B6568;
  v2 = *(v0 + 40);

  return sub_1B7FC225C();
}

uint64_t sub_1B80B6568()
{
  v1 = *(*v0 + 48);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B80B6664, 0, 0);
}

uint64_t sub_1B80B6664()
{
  v1 = *(v0[5] + 56);
  v2 = swift_task_alloc();
  v0[7] = v2;
  *v2 = v0;
  v2[1] = sub_1B80A66D4;
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[2];

  return sub_1B803576C(v5, v3, v4);
}

uint64_t Session.peerToken(peer:)(_OWORD *a1)
{
  *(v2 + 544) = v1;
  v3 = a1[9];
  *(v2 + 144) = a1[8];
  *(v2 + 160) = v3;
  *(v2 + 176) = a1[10];
  v4 = a1[5];
  *(v2 + 80) = a1[4];
  *(v2 + 96) = v4;
  v5 = a1[7];
  *(v2 + 112) = a1[6];
  *(v2 + 128) = v5;
  v6 = a1[1];
  *(v2 + 16) = *a1;
  *(v2 + 32) = v6;
  v7 = a1[3];
  *(v2 + 48) = a1[2];
  *(v2 + 64) = v7;
  return MEMORY[0x1EEE6DFA0](sub_1B80B6754, 0, 0);
}

uint64_t sub_1B80B6754()
{
  v11 = v0;
  if (qword_1ED8DD6B0 != -1)
  {
    swift_once();
  }

  v1 = sub_1B80C900C();
  __swift_project_value_buffer(v1, qword_1ED8DDE50);
  sub_1B7FC8DA4((v0 + 2), (v0 + 24));
  v2 = sub_1B80C8FEC();
  v3 = sub_1B80C941C();
  sub_1B7FCAD28((v0 + 2));
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v4 = 136446723;
    *(v4 + 4) = sub_1B7FB84FC(0xD000000000000010, 0x80000001B80CE730, &v10);
    *(v4 + 12) = 2160;
    *(v4 + 14) = 1752392040;
    *(v4 + 22) = 2081;
    *(v4 + 24) = sub_1B7FB84FC(v0[2], v0[3], &v10);
    _os_log_impl(&dword_1B7FB5000, v2, v3, "%{public}s for %{private,mask.hash}s!", v4, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1B8CB8970](v5, -1, -1);
    MEMORY[0x1B8CB8970](v4, -1, -1);
  }

  v9 = 1;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v9);
  v6 = swift_task_alloc();
  v0[69] = v6;
  *v6 = v0;
  v6[1] = sub_1B80B6960;
  v7 = v0[68];

  return sub_1B7FC225C();
}

uint64_t sub_1B80B6960()
{
  v1 = *(*v0 + 552);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B80B6A5C, 0, 0);
}

uint64_t sub_1B80B6A5C()
{
  v1 = *(*(v0 + 544) + 40);
  v2 = *(v0 + 160);
  *(v0 + 496) = *(v0 + 144);
  *(v0 + 512) = v2;
  *(v0 + 528) = *(v0 + 176);
  v3 = *(v0 + 96);
  *(v0 + 432) = *(v0 + 80);
  *(v0 + 448) = v3;
  v4 = *(v0 + 128);
  *(v0 + 464) = *(v0 + 112);
  *(v0 + 480) = v4;
  v5 = *(v0 + 32);
  *(v0 + 368) = *(v0 + 16);
  *(v0 + 384) = v5;
  v6 = *(v0 + 64);
  *(v0 + 400) = *(v0 + 48);
  *(v0 + 416) = v6;
  v7 = swift_task_alloc();
  *(v0 + 560) = v7;
  *v7 = v0;
  v7[1] = sub_1B80B6B28;

  return sub_1B7FFDAB8((v0 + 368));
}

uint64_t sub_1B80B6B28(uint64_t a1)
{
  v4 = *(*v2 + 560);
  v5 = *v2;
  *(v5 + 568) = v1;

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B80B6C64, 0, 0);
  }

  else
  {
    v6 = *(v5 + 8);

    return v6(a1);
  }
}

uint64_t sub_1B80B6C9C()
{
  v11 = v0;
  if (qword_1ED8DD6B0 != -1)
  {
    swift_once();
  }

  v1 = sub_1B80C900C();
  __swift_project_value_buffer(v1, qword_1ED8DDE50);
  v2 = sub_1B80C8FEC();
  v3 = sub_1B80C941C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_1B7FB84FC(0x6B6F5472656E776FLL, 0xEC00000029286E65, &v10);
    _os_log_impl(&dword_1B7FB5000, v2, v3, "%{public}s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x1B8CB8970](v5, -1, -1);
    MEMORY[0x1B8CB8970](v4, -1, -1);
  }

  v9 = 1;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v9);
  v6 = swift_task_alloc();
  *(v0 + 24) = v6;
  *v6 = v0;
  v6[1] = sub_1B80B6E5C;
  v7 = *(v0 + 16);

  return sub_1B7FC225C();
}

uint64_t sub_1B80B6E5C()
{
  v1 = *(*v0 + 24);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B80B6F58, 0, 0);
}

uint64_t sub_1B80B6F58()
{
  v1 = *(*(v0 + 16) + 40);
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_1B805CC14;

  return sub_1B7FFEF04();
}

uint64_t sub_1B80B700C()
{
  v11 = v0;
  if (qword_1ED8DD6B0 != -1)
  {
    swift_once();
  }

  v1 = sub_1B80C900C();
  __swift_project_value_buffer(v1, qword_1ED8DDE50);
  v2 = sub_1B80C8FEC();
  v3 = sub_1B80C941C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_1B7FB84FC(0xD00000000000001ALL, 0x80000001B80CC520, &v10);
    _os_log_impl(&dword_1B7FB5000, v2, v3, "%{public}s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x1B8CB8970](v5, -1, -1);
    MEMORY[0x1B8CB8970](v4, -1, -1);
  }

  v9 = 1;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v9);
  v6 = swift_task_alloc();
  *(v0 + 24) = v6;
  *v6 = v0;
  v6[1] = sub_1B80B71C8;
  v7 = *(v0 + 16);

  return sub_1B7FC225C();
}

uint64_t sub_1B80B71C8()
{
  v1 = *(*v0 + 24);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B80B72C4, 0, 0);
}

uint64_t sub_1B80B72C4()
{
  v1 = *(*(v0 + 16) + 40);
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_1B8048BB0;

  return sub_1B7FFAD00();
}

uint64_t sub_1B80B7384@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x4D676E697373696DLL && a2 == 0xEF65636976654465)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1B80C981C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1B80B7414(uint64_t a1)
{
  v2 = sub_1B80B76DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B80B7450(uint64_t a1)
{
  v2 = sub_1B80B76DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B80B748C(uint64_t a1)
{
  v2 = sub_1B80B7730();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B80B74C8(uint64_t a1)
{
  v2 = sub_1B80B7730();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PreferenceError.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA67428, &qword_1B80DCD00);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v14 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA67430, &qword_1B80DCD08);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B80B76DC();
  sub_1B80C99DC();
  sub_1B80B7730();
  sub_1B80C974C();
  (*(v3 + 8))(v6, v2);
  return (*(v8 + 8))(v11, v7);
}

unint64_t sub_1B80B76DC()
{
  result = qword_1EBA67438;
  if (!qword_1EBA67438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67438);
  }

  return result;
}

unint64_t sub_1B80B7730()
{
  result = qword_1EBA67440;
  if (!qword_1EBA67440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67440);
  }

  return result;
}

uint64_t PreferenceError.hashValue.getter()
{
  sub_1B80C993C();
  MEMORY[0x1B8CB8250](0);
  return sub_1B80C997C();
}

uint64_t PreferenceError.init(from:)(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA67448, &qword_1B80DCD10);
  v29 = *(v3 - 8);
  v4 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v23 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA67450, &unk_1B80DCD18);
  v24 = *(v7 - 8);
  v8 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v23 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B80B76DC();
  sub_1B80C99BC();
  if (v1)
  {
    goto LABEL_6;
  }

  v23 = a1;
  v12 = v29;
  v13 = v24;
  v14 = sub_1B80C973C();
  v15 = (2 * *(v14 + 16)) | 1;
  v25 = v14;
  v26 = v14 + 32;
  v27 = 0;
  v28 = v15;
  if ((sub_1B7FCA428() & 1) != 0 || v27 != v28 >> 1)
  {
    v16 = v7;
    v17 = sub_1B80C955C();
    swift_allocError();
    v19 = v18;
    v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66310, &qword_1B80D3ED0) + 48);
    *v19 = &type metadata for PreferenceError;
    sub_1B80C969C();
    sub_1B80C954C();
    (*(*(v17 - 8) + 104))(v19, *MEMORY[0x1E69E6AF8], v17);
    swift_willThrow();
    (*(v13 + 8))(v10, v16);
    swift_unknownObjectRelease();
    a1 = v23;
LABEL_6:
    v22 = a1;
    return __swift_destroy_boxed_opaque_existential_0(v22);
  }

  sub_1B80B7730();
  sub_1B80C968C();
  (*(v12 + 8))(v6, v3);
  (*(v13 + 8))(v10, v7);
  swift_unknownObjectRelease();
  v22 = v23;
  return __swift_destroy_boxed_opaque_existential_0(v22);
}

uint64_t sub_1B80B7B54(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA67428, &qword_1B80DCD00);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v14 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA67430, &qword_1B80DCD08);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B80B76DC();
  sub_1B80C99DC();
  sub_1B80B7730();
  sub_1B80C974C();
  (*(v3 + 8))(v6, v2);
  return (*(v8 + 8))(v11, v7);
}

uint64_t Session.setActiveLocationSharingDevice(_:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B80B7D50, 0, 0);
}

uint64_t sub_1B80B7D50()
{
  v5 = v0;
  v4 = 2;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v4);
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_1B80B7DF0;
  v2 = *(v0 + 32);

  return sub_1B7FC225C();
}

uint64_t sub_1B80B7DF0()
{
  v1 = *(*v0 + 40);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B80B7EEC, 0, 0);
}

uint64_t sub_1B80B7EEC()
{
  v1 = *(v0[4] + 48);
  v2 = swift_task_alloc();
  v0[6] = v2;
  *v2 = v0;
  v2[1] = sub_1B8012C24;
  v4 = v0[2];
  v3 = v0[3];

  return sub_1B80523B4(v4, v3);
}

uint64_t Session.hideMyLocation(hidden:)(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 40) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B80B7FAC, 0, 0);
}

uint64_t sub_1B80B7FAC()
{
  v5 = v0;
  v4 = 2;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v4);
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1B80B804C;
  v2 = *(v0 + 16);

  return sub_1B7FC225C();
}

uint64_t sub_1B80B804C()
{
  v1 = *(*v0 + 24);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B80B8148, 0, 0);
}

uint64_t sub_1B80B8148()
{
  v1 = *(*(v0 + 16) + 48);
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_1B8048BB0;
  v3 = *(v0 + 40);

  return sub_1B8052F64(v3);
}

uint64_t Session.allowFriendshipRequests(allowed:)(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 40) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B80B8208, 0, 0);
}

uint64_t sub_1B80B8208()
{
  v5 = v0;
  v4 = 2;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v4);
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1B80B82A8;
  v2 = *(v0 + 16);

  return sub_1B7FC225C();
}

uint64_t sub_1B80B82A8()
{
  v1 = *(*v0 + 24);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B80B83A4, 0, 0);
}

uint64_t sub_1B80B83A4()
{
  v1 = *(*(v0 + 16) + 48);
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_1B804FA0C;
  v3 = *(v0 + 40);

  return sub_1B80537F4(v3);
}

uint64_t Session.activeLocationSharingDevice(cached:)(uint64_t a1, char a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  if (a2)
  {
    v4 = sub_1B80B8474;
  }

  else
  {
    v4 = sub_1B80B87C4;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B80B8474()
{
  v5 = v0;
  v4 = 2;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v4);
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1B80B8514;
  v2 = *(v0 + 24);

  return sub_1B7FC225C();
}

uint64_t sub_1B80B8514()
{
  v1 = *(*v0 + 32);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B80B8610, 0, 0);
}

uint64_t sub_1B80B8610()
{
  v1 = *(*(v0 + 24) + 48);
  *(v0 + 40) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B80B8634, v1, 0);
}

uint64_t sub_1B80B8634()
{
  v1 = *(v0 + 40) + OBJC_IVAR____TtCC12FindMyLocate7Session18SettingsConnection_meDevice;
  v2 = *v1;
  *(v0 + 48) = *v1;
  v3 = *(v1 + 8);
  *(v0 + 56) = v3;
  *(v0 + 64) = *(v1 + 16);
  *(v0 + 72) = *(v1 + 24);
  *(v0 + 80) = *(v1 + 32);
  *(v0 + 88) = *(v1 + 40);
  *(v0 + 112) = *(v1 + 48);
  sub_1B8051E5C(v2, v3);

  return MEMORY[0x1EEE6DFA0](sub_1B80B86E4, 0, 0);
}

uint64_t sub_1B80B86E4()
{
  v1 = *(v0 + 56);
  if (v1)
  {
    v2 = *(v0 + 112);
    v4 = *(v0 + 80);
    v3 = *(v0 + 88);
    v5 = *(v0 + 64);
    v6 = *(v0 + 16);
    *v6 = *(v0 + 48);
    *(v6 + 8) = v1;
    *(v6 + 16) = v5;
    *(v6 + 32) = v4;
    *(v6 + 40) = v3;
    *(v6 + 48) = v2 & 1;
    *(v6 + 49) = BYTE1(v2) & 1;
    *(v6 + 50) = BYTE2(v2) & 1;
    *(v6 + 51) = HIBYTE(v2) & 1;
  }

  else
  {
    sub_1B80B9A0C();
    swift_allocError();
    swift_willThrow();
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1B80B87C4()
{
  v5 = v0;
  v4 = 2;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v4);
  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v1[1] = sub_1B80B8864;
  v2 = *(v0 + 24);

  return sub_1B7FC225C();
}

uint64_t sub_1B80B8864()
{
  v1 = *(*v0 + 96);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B80B8960, 0, 0);
}

uint64_t sub_1B80B8960()
{
  v1 = *(v0[3] + 48);
  v2 = swift_task_alloc();
  v0[13] = v2;
  *v2 = v0;
  v2[1] = sub_1B80B8A00;
  v3 = v0[2];

  return sub_1B80541C4(v3, 0);
}

uint64_t sub_1B80B8A00()
{
  v1 = *(*v0 + 104);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t Session.thisDeviceWithCompanion()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B80B8B14, 0, 0);
}

uint64_t sub_1B80B8B14()
{
  v5 = v0;
  v4 = 2;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v4);
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1B80B8BB4;
  v2 = *(v0 + 24);

  return sub_1B7FC225C();
}

uint64_t sub_1B80B8BB4()
{
  v1 = *(*v0 + 32);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B80B8CB0, 0, 0);
}

uint64_t sub_1B80B8CB0()
{
  v1 = *(v0[3] + 48);
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_1B7FCE7A0;
  v3 = v0[2];

  return sub_1B8054D64(v3);
}

uint64_t Session.isMyLocationEnabled(cached:)(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 40) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B80B8D70, 0, 0);
}

uint64_t sub_1B80B8D70()
{
  v5 = v0;
  v4 = 2;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v4);
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1B80B8E10;
  v2 = *(v0 + 16);

  return sub_1B7FC225C();
}

uint64_t sub_1B80B8E10()
{
  v1 = *(*v0 + 24);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B80B8F0C, 0, 0);
}

uint64_t sub_1B80B8F0C()
{
  v1 = *(*(v0 + 16) + 48);
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_1B80B8FA8;
  v3 = *(v0 + 40);

  return sub_1B80558C4(v3);
}

uint64_t sub_1B80B8FA8(char a1)
{
  v4 = *(*v2 + 32);
  v8 = *v2;

  v5 = *(v8 + 8);
  if (v1)
  {
    v6 = 0;
  }

  else
  {
    v6 = a1 & 1;
  }

  return v5(v6);
}

uint64_t Session.areFriendshipRequestsAllowed(cached:)(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 40) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B80B90D4, 0, 0);
}

uint64_t sub_1B80B90D4()
{
  v5 = v0;
  v4 = 2;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v4);
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1B80B9174;
  v2 = *(v0 + 16);

  return sub_1B7FC225C();
}

uint64_t sub_1B80B9174()
{
  v1 = *(*v0 + 24);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B80B9270, 0, 0);
}

uint64_t sub_1B80B9270()
{
  v1 = *(*(v0 + 16) + 48);
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_1B80B9CA8;
  v3 = *(v0 + 40);

  return sub_1B805637C(v3);
}

uint64_t Session.startMonitoringActiveLocationSharingDeviceChange()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B80B932C, 0, 0);
}

uint64_t sub_1B80B932C()
{
  v5 = v0;
  v4 = 2;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v4);
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1B80B93CC;
  v2 = *(v0 + 24);

  return sub_1B7FC225C();
}

uint64_t sub_1B80B93CC()
{
  v1 = *(*v0 + 32);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B80B94C8, 0, 0);
}

uint64_t sub_1B80B94C8()
{
  v1 = *(v0[3] + 48);
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_1B7FCE788;
  v3 = v0[2];

  return sub_1B804FC10(v3);
}

uint64_t Session.startMonitoringPreferencesChange()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B80B9584, 0, 0);
}

uint64_t sub_1B80B9584()
{
  v5 = v0;
  v4 = 2;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v4);
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1B80B9624;
  v2 = *(v0 + 24);

  return sub_1B7FC225C();
}

uint64_t sub_1B80B9624()
{
  v1 = *(*v0 + 32);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B80B9720, 0, 0);
}

uint64_t sub_1B80B9720()
{
  v1 = *(v0[3] + 48);
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_1B7FCE788;
  v3 = v0[2];

  return sub_1B8050354(v3);
}

uint64_t sub_1B80B97DC()
{
  v5 = v0;
  v4 = 2;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v4);
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1B80B987C;
  v2 = *(v0 + 16);

  return sub_1B7FC225C();
}

uint64_t sub_1B80B987C()
{
  v1 = *(*v0 + 24);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B80B9978, 0, 0);
}

uint64_t sub_1B80B9978()
{
  v1 = *(*(v0 + 16) + 48);
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_1B804FA0C;

  return sub_1B8058214();
}

unint64_t sub_1B80B9A0C()
{
  result = qword_1ED8DD440;
  if (!qword_1ED8DD440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DD440);
  }

  return result;
}

unint64_t sub_1B80B9A64()
{
  result = qword_1EBA67458;
  if (!qword_1EBA67458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67458);
  }

  return result;
}

unint64_t sub_1B80B9AEC()
{
  result = qword_1EBA67460;
  if (!qword_1EBA67460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67460);
  }

  return result;
}

unint64_t sub_1B80B9B44()
{
  result = qword_1EBA67468;
  if (!qword_1EBA67468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67468);
  }

  return result;
}

unint64_t sub_1B80B9B9C()
{
  result = qword_1EBA67470;
  if (!qword_1EBA67470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67470);
  }

  return result;
}

unint64_t sub_1B80B9BF4()
{
  result = qword_1EBA67478;
  if (!qword_1EBA67478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67478);
  }

  return result;
}

unint64_t sub_1B80B9C4C()
{
  result = qword_1EBA67480;
  if (!qword_1EBA67480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67480);
  }

  return result;
}

FindMyLocate::LocalUserNotificationCategory_optional __swiftcall LocalUserNotificationCategory.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B80C967C();

  v5 = 13;
  if (v3 < 0xD)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t LocalUserNotificationCategory.rawValue.getter()
{
  result = 0x5F544C5541464544;
  switch(*v0)
  {
    case 1:
      return result;
    case 2:
      result = 0x45434E45464F4547;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    case 4:
      result = 0xD000000000000015;
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    case 6:
      result = 0x4F4C5F524546464FLL;
      break;
    case 7:
      result = 0xD000000000000013;
      break;
    case 8:
      result = 0xD000000000000012;
      break;
    case 9:
      result = 0x525F455449564E49;
      break;
    case 0xA:
      result = 0x465F594649544F4ELL;
      break;
    case 0xB:
    case 0xC:
      result = 0xD00000000000002FLL;
      break;
    default:
      result = 0xD00000000000002DLL;
      break;
  }

  return result;
}

uint64_t sub_1B80B9EAC(char *a1, char *a2)
{
  v10 = *a1;
  v9 = *a2;
  v2 = LocalUserNotificationCategory.rawValue.getter();
  v4 = v3;
  if (v2 == LocalUserNotificationCategory.rawValue.getter() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1B80C981C();
  }

  return v7 & 1;
}

unint64_t sub_1B80B9F4C()
{
  result = qword_1EBA67488;
  if (!qword_1EBA67488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67488);
  }

  return result;
}

uint64_t sub_1B80B9FA0()
{
  v1 = *v0;
  sub_1B80C993C();
  LocalUserNotificationCategory.rawValue.getter();
  sub_1B80C911C();

  return sub_1B80C997C();
}

uint64_t sub_1B80BA008()
{
  v2 = *v0;
  LocalUserNotificationCategory.rawValue.getter();
  sub_1B80C911C();
}

uint64_t sub_1B80BA06C()
{
  v1 = *v0;
  sub_1B80C993C();
  LocalUserNotificationCategory.rawValue.getter();
  sub_1B80C911C();

  return sub_1B80C997C();
}

unint64_t sub_1B80BA0DC@<X0>(unint64_t *a1@<X8>)
{
  result = LocalUserNotificationCategory.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1B80BA1C4()
{
  result = qword_1EBA67490;
  if (!qword_1EBA67490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67490);
  }

  return result;
}

uint64_t sub_1B80BA218(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 52))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1B80BA274(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 52) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 52) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

Swift::Void __swiftcall Fence.UpdateStream.close()()
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + 16);
    MEMORY[0x1EEE9AC00](Strong);
    os_unfair_lock_lock(v1 + 8);
    sub_1B80BA38C(&v1[4]);
    os_unfair_lock_unlock(v1 + 8);
  }

  swift_weakAssign();
}

uint64_t Fence.UpdateStream.deinit()
{
  v1 = sub_1B80C8E9C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = (*(v2 + 16))(v5, v0 + OBJC_IVAR____TtCV12FindMyLocate5Fence12UpdateStream_id, v1);
    v9 = *(v7 + 16);
    MEMORY[0x1EEE9AC00](v8);
    *&v11[-16] = v5;
    os_unfair_lock_lock(v9 + 8);
    sub_1B80BAC9C(&v9[4]);
    os_unfair_lock_unlock(v9 + 8);

    (*(v2 + 8))(v5, v1);
  }

  swift_weakDestroy();
  (*(v2 + 8))(v0 + OBJC_IVAR____TtCV12FindMyLocate5Fence12UpdateStream_id, v1);
  sub_1B80BA548(v0 + OBJC_IVAR____TtCV12FindMyLocate5Fence12UpdateStream_iterator);
  return v0;
}

uint64_t sub_1B80BA548(uint64_t a1)
{
  updated = type metadata accessor for Fence.UpdateStream.AsyncIterator(0);
  (*(*(updated - 8) + 8))(a1, updated);
  return a1;
}

uint64_t Fence.UpdateStream.__deallocating_deinit()
{
  v1 = sub_1B80C8E9C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = (*(v2 + 16))(v5, v0 + OBJC_IVAR____TtCV12FindMyLocate5Fence12UpdateStream_id, v1);
    v9 = *(v7 + 16);
    MEMORY[0x1EEE9AC00](v8);
    *&v13[-16] = v5;
    os_unfair_lock_lock(v9 + 8);
    sub_1B80BAC9C(&v9[4]);
    os_unfair_lock_unlock(v9 + 8);

    (*(v2 + 8))(v5, v1);
  }

  swift_weakDestroy();
  (*(v2 + 8))(v0 + OBJC_IVAR____TtCV12FindMyLocate5Fence12UpdateStream_id, v1);
  sub_1B80BA548(v0 + OBJC_IVAR____TtCV12FindMyLocate5Fence12UpdateStream_iterator);
  v10 = *(*v0 + 48);
  v11 = *(*v0 + 52);
  return swift_deallocClassInstance();
}

uint64_t Fence.UpdateStream.AsyncIterator.next()(uint64_t a1)
{
  v3 = *(MEMORY[0x1E69E8680] + 4);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA67498, qword_1B80DD250);
  *v4 = v1;
  v4[1] = sub_1B7FBA3EC;

  return MEMORY[0x1EEE6D9D0](a1, v5);
}

uint64_t sub_1B80BA830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a2;
  v6[4] = a3;
  v10 = *(MEMORY[0x1E69E85A8] + 4);
  v11 = swift_task_alloc();
  v6[5] = v11;
  *v11 = v6;
  v11[1] = sub_1B80BA8E8;

  return MEMORY[0x1EEE6D8C8](a1, a5, a6);
}