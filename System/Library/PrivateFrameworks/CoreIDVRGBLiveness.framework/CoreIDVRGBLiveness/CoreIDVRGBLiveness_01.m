uint64_t sub_2456FBAF8()
{
  v1 = *(*v0 + 576);
  v2 = *(*v0 + 568);
  v3 = *(*v0 + 560);
  v4 = *(*v0 + 552);
  v5 = *(*v0 + 528);
  v7 = *v0;

  sub_2456EEF50(v5, &qword_27EE244D0, &unk_245749FF0);

  return MEMORY[0x2822009F8](sub_2456FBC7C, 0, 0);
}

uint64_t sub_2456FBC7C()
{
  v1 = *(v0 + 536);
  v2 = *(v0 + 528);
  v3 = *(v0 + 520);
  v4 = *(v0 + 512);
  v5 = *(v0 + 488);
  v6 = *(v0 + 464);
  v7 = *(v0 + 440);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_2456FBD3C()
{
  v1[53] = v0;
  v2 = type metadata accessor for RGBLivenessModel.Event(0);
  v1[54] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[55] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE24890, &qword_24574AA00);
  v1[56] = v4;
  v5 = *(v4 - 8);
  v1[57] = v5;
  v6 = *(v5 + 64) + 15;
  v1[58] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE24898, &qword_24574AA08);
  v1[59] = v7;
  v8 = *(v7 - 8);
  v1[60] = v8;
  v9 = *(v8 + 64) + 15;
  v1[61] = swift_task_alloc();
  v10 = sub_245747E60();
  v1[62] = v10;
  v11 = *(v10 - 8);
  v1[63] = v11;
  v12 = *(v11 + 64) + 15;
  v1[64] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE244D0, &unk_245749FF0) - 8) + 64) + 15;
  v1[65] = swift_task_alloc();
  v1[66] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2456FBF40, 0, 0);
}

uint64_t sub_2456FBF40()
{
  v44 = v0;
  v1 = v0[66];
  v2 = v0[53];
  v3 = *(v2 + 640);
  v4 = OBJC_IVAR____TtC18CoreIDVRGBLiveness23RGBLivenessImageManager_videoURL;
  swift_beginAccess();
  sub_245703098(v3 + v4, v1, &qword_27EE244D0, &unk_245749FF0);
  v5 = sub_245747C30();
  v6 = (*(*(v5 - 8) + 48))(v1, 1, v5);
  v7 = v0[66];
  if (v6 == 1)
  {
    v8 = v0[53];
    sub_2456EEF50(v7, &qword_27EE244D0, &unk_245749FF0);
    memcpy(v0 + 2, (v8 + 136), 0x14DuLL);
    if (sub_2456F3C64((v0 + 2)) == 1 || *(v0[42] + 16) && (memcpy(__dst, v0 + 2, sizeof(__dst)), RGBLivenessActiveConfig.minRequiredGesturesCount.getter() > 0))
    {
      v9 = v0[64];
      sub_245747CF0();
      v10 = sub_245747E50();
      v11 = sub_245748920();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 0;
        _os_log_impl(&dword_2456DE000, v10, v11, "Tried to complete liveness without selfie but videoURL is missing.", v12, 2u);
        MEMORY[0x245D712D0](v12, -1, -1);
      }

      v14 = v0[63];
      v13 = v0[64];
      v15 = v0[62];
      v16 = v0[60];
      v41 = v0[61];
      v42 = v0[59];
      v18 = v0[57];
      v17 = v0[58];
      v20 = v0[55];
      v19 = v0[56];
      v40 = v0[54];
      v21 = v10;
      v22 = v0[53];

      (*(v14 + 8))(v13, v15);
      (*(v18 + 16))(v17, v22 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_continuation, v19);
      *v20 = 10;
      swift_storeEnumTagMultiPayload();
      sub_2457488A0();
      (*(v18 + 8))(v17, v19);
      (*(v16 + 8))(v41, v42);
      v23 = v0[66];
      v24 = v0[65];
      v25 = v0[64];
      v26 = v0[61];
      v27 = v0[58];
      v28 = v0[55];

      v29 = v0[1];

      return v29();
    }
  }

  else
  {
    sub_2456EEF50(v7, &qword_27EE244D0, &unk_245749FF0);
  }

  v31 = v0[65];
  v32 = v0[53];
  v0[67] = *(v32 + 648);
  v33 = *(v32 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_luxValues);
  v0[68] = v33;
  v34 = OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_buttonPressTimestamps;
  swift_beginAccess();
  v35 = *(v32 + v34);
  v0[69] = v35;
  v36 = *(v2 + 640);
  v37 = OBJC_IVAR____TtC18CoreIDVRGBLiveness23RGBLivenessImageManager_videoURL;
  swift_beginAccess();
  sub_245703098(v36 + v37, v31, &qword_27EE244D0, &unk_245749FF0);

  v38 = swift_task_alloc();
  v0[70] = v38;
  *v38 = v0;
  v38[1] = sub_2456FC360;
  v39 = v0[65];

  return sub_2456F2694(v33, v35, v39);
}

uint64_t sub_2456FC360()
{
  v1 = *v0;
  v2 = *(*v0 + 560);
  v3 = *(*v0 + 552);
  v4 = *(*v0 + 544);
  v5 = *(*v0 + 536);
  v6 = *(*v0 + 520);
  v7 = *v0;

  sub_2456EEF50(v6, &qword_27EE244D0, &unk_245749FF0);
  v8 = v1[66];
  v9 = v1[65];
  v10 = v1[64];
  v11 = v1[61];
  v12 = v1[58];
  v13 = v1[55];

  v14 = *(v7 + 8);

  return v14();
}

uint64_t sub_2456FC580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for RGBLivenessModel.Event(0);
  v4[3] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[4] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE24890, &qword_24574AA00);
  v4[5] = v7;
  v8 = *(v7 - 8);
  v4[6] = v8;
  v9 = *(v8 + 64) + 15;
  v4[7] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE24898, &qword_24574AA08);
  v4[8] = v10;
  v11 = *(v10 - 8);
  v4[9] = v11;
  v12 = *(v11 + 64) + 15;
  v4[10] = swift_task_alloc();
  v13 = sub_245748B30();
  v4[11] = v13;
  v14 = *(v13 - 8);
  v4[12] = v14;
  v15 = *(v14 + 64) + 15;
  v4[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2456FC740, 0, 0);
}

uint64_t sub_2456FC740()
{
  v10 = v0;
  v1 = v0[13];
  memcpy(__dst, (v0[2] + 64), sizeof(__dst));
  v2 = sub_245720D9C();
  v3 = 1000000000000000000 * v2;
  v4 = (v2 * 0xDE0B6B3A7640000uLL) >> 64;
  v5 = (v2 >> 63) & 0xF21F494C589C0000;
  sub_245748BF0();
  v6 = swift_task_alloc();
  v0[14] = v6;
  *v6 = v0;
  v6[1] = sub_2456FC85C;
  v7 = v0[13];

  return sub_24572E84C(v3, v5 + v4, 0, 0, 1);
}

uint64_t sub_2456FC85C()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  v8 = *v1;
  *(*v1 + 120) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_2456FCB24;
  }

  else
  {
    v6 = sub_2456FC9CC;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_2456FC9CC()
{
  if ((sub_245748880() & 1) == 0)
  {
    v2 = v0[9];
    v1 = v0[10];
    v3 = v0[7];
    v4 = v0[8];
    v5 = v0[5];
    v6 = v0[6];
    v8 = v0[3];
    v7 = v0[4];
    (*(v6 + 16))(v3, v0[2] + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_continuation, v5);
    *v7 = 1;
    swift_storeEnumTagMultiPayload();
    sub_2457488A0();
    (*(v6 + 8))(v3, v5);
    (*(v2 + 8))(v1, v4);
  }

  v9 = v0[13];
  v10 = v0[10];
  v11 = v0[7];
  v12 = v0[4];
  v13 = v0[2];
  v14 = *(v13 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_timeoutTask);
  *(v13 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_timeoutTask) = 0;

  v15 = v0[1];

  return v15();
}

uint64_t sub_2456FCB24()
{
  v1 = v0[13];
  v2 = v0[10];
  v3 = v0[7];
  v4 = v0[4];

  v5 = v0[1];
  v6 = v0[15];

  return v5();
}

uint64_t sub_2456FCBB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = type metadata accessor for RGBLivenessModel.Event(0);
  v6[5] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v6[6] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE24890, &qword_24574AA00);
  v6[7] = v9;
  v10 = *(v9 - 8);
  v6[8] = v10;
  v11 = *(v10 + 64) + 15;
  v6[9] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE24898, &qword_24574AA08);
  v6[10] = v12;
  v13 = *(v12 - 8);
  v6[11] = v13;
  v14 = *(v13 + 64) + 15;
  v6[12] = swift_task_alloc();
  v15 = sub_245748B30();
  v6[13] = v15;
  v16 = *(v15 - 8);
  v6[14] = v16;
  v17 = *(v16 + 64) + 15;
  v6[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2456FCD78, 0, 0);
}

uint64_t sub_2456FCD78()
{
  v1 = v0[15];
  v2 = v0[2];
  v3 = 1000000000000000000 * v2;
  v4 = (v2 * 0xDE0B6B3A7640000uLL) >> 64;
  v5 = (v2 >> 63) & 0xF21F494C589C0000;
  sub_245748BF0();
  v6 = swift_task_alloc();
  v0[16] = v6;
  *v6 = v0;
  v6[1] = sub_2456FCE6C;
  v7 = v0[15];

  return sub_24572E84C(v3, v5 + v4, 0, 0, 1);
}

uint64_t sub_2456FCE6C()
{
  v2 = *(*v1 + 128);
  v3 = *(*v1 + 120);
  v4 = *(*v1 + 112);
  v5 = *(*v1 + 104);
  v8 = *v1;
  *(*v1 + 136) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_2456FD144;
  }

  else
  {
    v6 = sub_2456FCFDC;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_2456FCFDC()
{
  if ((sub_245748880() & 1) == 0)
  {
    v2 = v0[11];
    v1 = v0[12];
    v3 = v0[9];
    v4 = v0[10];
    v5 = v0[7];
    v6 = v0[8];
    v8 = v0[5];
    v7 = v0[6];
    v9 = v0[3];
    v10 = v0[4];
    *(v9 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_analyticsAlertCause) = 0;
    (*(v6 + 16))(v3, v9 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_continuation, v5);
    *v7 = v10;
    swift_storeEnumTagMultiPayload();
    sub_2457488A0();
    (*(v6 + 8))(v3, v5);
    (*(v2 + 8))(v1, v4);
  }

  v11 = v0[15];
  v12 = v0[12];
  v13 = v0[9];
  v14 = v0[6];
  v15 = v0[3];
  v16 = *(v15 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_skipGestureTask);
  *(v15 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_skipGestureTask) = 0;

  v17 = v0[1];

  return v17();
}

uint64_t sub_2456FD144()
{
  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[9];
  v4 = v0[6];

  v5 = v0[1];
  v6 = v0[17];

  return v5();
}

uint64_t sub_2456FD1D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = type metadata accessor for RGBLivenessModel.Event(0);
  v5[4] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v5[5] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE24890, &qword_24574AA00);
  v5[6] = v8;
  v9 = *(v8 - 8);
  v5[7] = v9;
  v10 = *(v9 + 64) + 15;
  v5[8] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE24898, &qword_24574AA08);
  v5[9] = v11;
  v12 = *(v11 - 8);
  v5[10] = v12;
  v13 = *(v12 + 64) + 15;
  v5[11] = swift_task_alloc();
  v14 = sub_245748B30();
  v5[12] = v14;
  v15 = *(v14 - 8);
  v5[13] = v15;
  v16 = *(v15 + 64) + 15;
  v5[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2456FD394, 0, 0);
}

uint64_t sub_2456FD394()
{
  v10 = v0;
  v1 = v0[14];
  memcpy(__dst, (v0[2] + 64), sizeof(__dst));
  v2 = sub_245721BB8();
  v3 = 1000000000000000 * v2;
  v4 = (v2 * 0x38D7EA4C68000uLL) >> 64;
  v5 = (v2 >> 63) & 0xFFFC72815B398000;
  sub_245748BF0();
  v6 = swift_task_alloc();
  v0[15] = v6;
  *v6 = v0;
  v6[1] = sub_2456FD4B4;
  v7 = v0[14];

  return sub_24572E84C(v3, v5 + v4, 0, 0, 1);
}

uint64_t sub_2456FD4B4()
{
  v2 = *(*v1 + 120);
  v3 = *(*v1 + 112);
  v4 = *(*v1 + 104);
  v5 = *(*v1 + 96);
  v8 = *v1;
  *(*v1 + 128) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_2456FD780;
  }

  else
  {
    v6 = sub_2456FD624;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_2456FD624()
{
  if ((sub_245748880() & 1) == 0)
  {
    v2 = v0[10];
    v1 = v0[11];
    v3 = v0[8];
    v4 = v0[9];
    v5 = v0[6];
    v6 = v0[7];
    v8 = v0[4];
    v7 = v0[5];
    v9 = v0[3];
    (*(v6 + 16))(v3, v0[2] + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_continuation, v5);
    *v7 = v9;
    swift_storeEnumTagMultiPayload();
    sub_2457488A0();
    (*(v6 + 8))(v3, v5);
    (*(v2 + 8))(v1, v4);
  }

  v10 = v0[14];
  v11 = v0[11];
  v12 = v0[8];
  v13 = v0[5];
  v14 = v0[2];
  v15 = *(v14 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_gestureDetectedWaitTask);
  *(v14 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_gestureDetectedWaitTask) = 0;

  v16 = v0[1];

  return v16();
}

uint64_t sub_2456FD780()
{
  v1 = v0[14];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[5];

  v5 = v0[1];
  v6 = v0[16];

  return v5();
}

uint64_t sub_2456FD810(uint64_t a1)
{
  v3 = type metadata accessor for RGBLivenessModel.State(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v10[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_245702DF0(a1, v6, type metadata accessor for RGBLivenessModel.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 2;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      memcpy(v10, (v1 + 64), sizeof(v10));
      sub_245721E64();
      v9 = PADClassifierFrameOptionsInit() & 0x10101;
      sub_2457029F4(v6, type metadata accessor for RGBLivenessModel.State);
      result = v9;
      break;
    case 5:
      goto LABEL_4;
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
      sub_2457029F4(v6, type metadata accessor for RGBLivenessModel.State);
LABEL_4:
      if (*(v1 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_firstTutorialVideoFinishedPlaying))
      {
        memcpy(v10, (v1 + 64), sizeof(v10));
        sub_245721E64();
      }

      result = PADClassifierFrameOptionsInit() & 0x10101;
      break;
    case 12:
    case 14:
    case 16:
    case 17:
    case 18:
    case 20:
      return result;
    default:
      sub_2457029F4(v6, type metadata accessor for RGBLivenessModel.State);
      result = 2;
      break;
  }

  return result;
}

uint64_t sub_2456FD9DC(uint64_t a1)
{
  v3 = type metadata accessor for RGBLivenessModel.State(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_analyticsState) != 3 || (v7 = *(v1 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_analyticsButtonTapStateCounter), v9 = __OFSUB__(v7, 1), v8 = v7 - 1 < 0, v10 = v7 - 1, v8 ^ v9))
  {
    *(v1 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_analyticsState) = *(v1 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_previousAnalyticsState);
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_analyticsButtonTapStateCounter) = v10;
  }

  v11 = *(v1 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_ignoreStitchCounter);
  v9 = __OFSUB__(v11, 1);
  v8 = v11 - 1 < 0;
  v12 = v11 - 1;
  if (v8 != v9)
  {
    sub_245702DF0(a1, v6, type metadata accessor for RGBLivenessModel.State);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = 0;
    switch(EnumCaseMultiPayload)
    {
      case 2:
      case 3:
      case 4:
      case 10:
      case 13:
      case 15:
      case 19:
        sub_2457029F4(v6, type metadata accessor for RGBLivenessModel.State);
        return 0;
      case 5:
        goto LABEL_11;
      case 6:
      case 7:
      case 8:
      case 9:
      case 11:
        sub_2457029F4(v6, type metadata accessor for RGBLivenessModel.State);
LABEL_11:
        result = 1;
        break;
      case 12:
      case 14:
      case 16:
      case 17:
      case 18:
      case 20:
        return result;
      default:
        sub_2457029F4(v6, type metadata accessor for RGBLivenessModel.State);
        return 2;
    }
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_ignoreStitchCounter) = v12;
    return 2;
  }

  return result;
}

uint64_t sub_2456FDBA8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = type metadata accessor for RGBLivenessModel.State(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_245702DF0(a1, v7, type metadata accessor for RGBLivenessModel.State);
  result = swift_getEnumCaseMultiPayload();
  switch(result)
  {
    case 1:
      v9 = 6;
      goto LABEL_11;
    case 2:
    case 3:
    case 15:
    case 19:
      result = sub_2457029F4(v7, type metadata accessor for RGBLivenessModel.State);
      goto LABEL_5;
    case 4:
      result = sub_2457029F4(v7, type metadata accessor for RGBLivenessModel.State);
      *a2 = 1;
      return result;
    case 5:
      goto LABEL_3;
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
      result = sub_2457029F4(v7, type metadata accessor for RGBLivenessModel.State);
LABEL_3:
      *a2 = 2;
      break;
    case 12:
    case 14:
    case 16:
    case 17:
    case 18:
    case 20:
LABEL_5:
      *a2 = 0;
      break;
    case 13:
      result = sub_2457029F4(v7, type metadata accessor for RGBLivenessModel.State);
      *a2 = 3;
      break;
    default:
      v9 = 5;
LABEL_11:
      *a2 = v9;
      result = sub_2457029F4(v7, type metadata accessor for RGBLivenessModel.State);
      break;
  }

  return result;
}

uint64_t sub_2456FDD3C()
{
  v1 = v0;
  v2 = sub_245747E60();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_ignoreStitchCounter;
  *(v0 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_ignoreStitchCounter) = *(v0 + 624);
  *(v0 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_analyticsButtonTapStateCounter) = *(v0 + 632);
  v8 = OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_analyticsState;
  *(v0 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_previousAnalyticsState) = *(v0 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_analyticsState);
  *(v0 + v8) = 3;
  sub_2457027AC();
  sub_245747D90();
  v9 = sub_245748940();
  v11 = v10;

  if ((v11 & 1) == 0 && v9 >= 1)
  {
    *(v1 + v7) = v9;
  }

  sub_245747CF0();

  v12 = sub_245747E50();
  v13 = sub_245748910();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 134217984;
    *(v14 + 4) = *(v1 + v7);

    _os_log_impl(&dword_2456DE000, v12, v13, "Beginning ignore stitch counter for %ld frames", v14, 0xCu);
    MEMORY[0x245D712D0](v14, -1, -1);
  }

  else
  {
  }

  (*(v3 + 8))(v6, v2);
  v15 = *(*(v1 + 640) + 32);

  v16 = sub_2456E7A6C();
  v17 = *&v16[OBJC_IVAR____TtC18CoreIDVRGBLiveness19AVCaptureFileOutput_currentTimestamp];
  v18 = *&v16[OBJC_IVAR____TtC18CoreIDVRGBLiveness19AVCaptureFileOutput_currentTimestamp + 16];
  v19 = *&v16[OBJC_IVAR____TtC18CoreIDVRGBLiveness19AVCaptureFileOutput_currentTimestamp + 8];

  v20 = *MEMORY[0x277CBECE8];
  time.value = v17;
  *&time.timescale = v19;
  time.epoch = v18;
  v21 = CMTimeCopyAsDictionary(&time, v20);
  if (v21)
  {
    v22 = v21;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      time.value = 0;
      sub_245748650();

      value = time.value;
      if (time.value)
      {
        goto LABEL_13;
      }
    }

    else
    {
    }
  }

  value = sub_24572FE70(MEMORY[0x277D84F90]);
LABEL_13:
  v24 = OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_buttonPressTimestamps;
  swift_beginAccess();
  v25 = *(v1 + v24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + v24) = v25;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v25 = sub_245702678(0, v25[2] + 1, 1, v25);
    *(v1 + v24) = v25;
  }

  v28 = v25[2];
  v27 = v25[3];
  if (v28 >= v27 >> 1)
  {
    v25 = sub_245702678((v27 > 1), v28 + 1, 1, v25);
  }

  v25[2] = v28 + 1;
  v25[v28 + 4] = value;
  *(v1 + v24) = v25;
  return swift_endAccess();
}

uint64_t sub_2456FE0A4()
{
  v1 = type metadata accessor for RGBLivenessModel.Event(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE24890, &qword_24574AA00);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE24898, &qword_24574AA08);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v18 - v13;
  v15 = sub_2456F3E04();
  if (v15 <= 2)
  {
    v16 = v0 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController____lazy_storage___flashMode;
    *v16 = qword_24574AD28[v15];
    *(v16 + 8) = 0;
  }

  (*(v6 + 16))(v9, v0 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_continuation, v5);
  *v4 = *(v0 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController____lazy_storage___flashMode) == 1;
  swift_storeEnumTagMultiPayload();
  sub_2457488A0();
  (*(v6 + 8))(v9, v5);
  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_2456FE2EC()
{
  v1 = sub_245747E60();
  v61 = *(v1 - 8);
  v62 = v1;
  v2 = *(v61 + 64);
  MEMORY[0x28223BE20](v1);
  v64 = v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_245747DC0();
  v55 = *(v4 - 8);
  v56 = v4;
  v5 = *(v55 + 64);
  MEMORY[0x28223BE20](v4);
  v57 = (v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v63 = sub_245747DD0();
  v60 = *(v63 - 8);
  v7 = *(v60 + 64);
  v8 = MEMORY[0x28223BE20](v63);
  v59 = v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v58 = v46 - v10;
  v11 = type metadata accessor for RGBLivenessModel.Event(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE24890, &qword_24574AA00);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = v46 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE24898, &qword_24574AA08);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = v46 - v23;
  v25 = *(v0 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_failureReason);
  if (v25 == 11)
  {
    v49 = v46 - v23;
    v50 = v21;
    v51 = v19;
    v52 = v20;
    v53 = v14;
    v54 = v0;
    v47 = v15;
    v48 = v16;
    v46[1] = v11;
    (*(v55 + 104))(v57, *MEMORY[0x277CFFA38], v56);
    sub_245723158(MEMORY[0x277D84F90]);
    v26 = v58;
    sub_245747DE0();
    sub_245747CF0();
    v27 = v59;
    v28 = v60;
    v29 = v63;
    (*(v60 + 16))(v59, v26, v63);
    v30 = sub_245747E50();
    v31 = sub_245748920();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v65 = v57;
      *v32 = 136315138;
      sub_245702840(&qword_27EE244B8, MEMORY[0x277CFFE30]);
      v33 = sub_245748C20();
      v34 = v27;
      v36 = v35;
      v37 = *(v28 + 8);
      v37(v34, v29);
      v38 = sub_24572EDDC(v33, v36, &v65);

      *(v32 + 4) = v38;
      _os_log_impl(&dword_2456DE000, v30, v31, "Liveness unexpected error occurred: %s", v32, 0xCu);
      v39 = v57;
      __swift_destroy_boxed_opaque_existential_0Tm(v57);
      MEMORY[0x245D712D0](v39, -1, -1);
      MEMORY[0x245D712D0](v32, -1, -1);

      v40 = v37;
    }

    else
    {

      v40 = *(v28 + 8);
      v40(v27, v29);
    }

    (*(v61 + 8))(v64, v62);
    v42 = v47;
    v43 = v51;
    v44 = v48;
    (*(v48 + 16))(v51, v54 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_continuation, v47);
    *v53 = 10;
    swift_storeEnumTagMultiPayload();
    v45 = v49;
    sub_2457488A0();
    (*(v44 + 8))(v43, v42);
    (*(v50 + 8))(v45, v52);
    return (v40)(v26, v29);
  }

  else
  {
    (*(v16 + 16))(v19, v0 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_continuation, v15);
    *v14 = v25;
    swift_storeEnumTagMultiPayload();
    sub_2457488A0();
    (*(v16 + 8))(v19, v15);
    return (*(v21 + 8))(v24, v20);
  }
}

uint64_t sub_2456FE9B4()
{
  v1 = sub_245747E60();
  v59 = *(v1 - 8);
  v60 = v1;
  v2 = *(v59 + 64);
  MEMORY[0x28223BE20](v1);
  v65 = &v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_245747DC0();
  v55 = *(v4 - 8);
  v56 = v4;
  v5 = *(v55 + 64);
  MEMORY[0x28223BE20](v4);
  v57 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_245747DD0();
  v63 = *(v61 - 8);
  v7 = *(v63 + 64);
  v8 = MEMORY[0x28223BE20](v61);
  v58 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v66 = &v51 - v10;
  v67 = type metadata accessor for RGBLivenessModel.Event(0);
  v11 = *(*(v67 - 8) + 64);
  MEMORY[0x28223BE20](v67);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE24890, &qword_24574AA00);
  v68 = *(v14 - 8);
  v15 = *(v68 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v51 - v16;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE24898, &qword_24574AA08);
  v64 = *(v62 - 8);
  v18 = *(v64 + 64);
  MEMORY[0x28223BE20](v62);
  v20 = &v51 - v19;
  v21 = sub_245747D40();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = &v51 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = v0;
  v27 = *(v0 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_failureReason);
  if (v27 == 11)
  {
    v52 = v20;
    v53 = v17;
    v54 = v13;
    v51 = v14;
    (*(v55 + 104))(v57, *MEMORY[0x277CFFA38], v56);
    sub_245723158(MEMORY[0x277D84F90]);
    v28 = v66;
    sub_245747DE0();
    sub_245747CF0();
    v29 = v58;
    v30 = v61;
    (*(v63 + 16))(v58, v28, v61);
    v31 = sub_245747E50();
    v32 = sub_245748920();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v69 = v34;
      *v33 = 136315138;
      sub_245702840(&qword_27EE244B8, MEMORY[0x277CFFE30]);
      v35 = sub_245748C20();
      v36 = v29;
      v38 = v37;
      v39 = *(v63 + 8);
      v39(v36, v30);
      v40 = sub_24572EDDC(v35, v38, &v69);

      *(v33 + 4) = v40;
      _os_log_impl(&dword_2456DE000, v31, v32, "Liveness unexpected error occurred: %s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v34);
      MEMORY[0x245D712D0](v34, -1, -1);
      MEMORY[0x245D712D0](v33, -1, -1);

      v41 = v39;
    }

    else
    {

      v41 = *(v63 + 8);
      v41(v29, v30);
    }

    (*(v59 + 8))(v65, v60);
    v44 = v51;
    v45 = v68;
    v46 = v62;
    v47 = v26 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_continuation;
    v48 = v53;
    v49 = v54;
    (*(v68 + 16))(v53, v47, v51);
    *v49 = 10;
    swift_storeEnumTagMultiPayload();
    v50 = v52;
    sub_2457488A0();
    (*(v45 + 8))(v48, v44);
    (*(v64 + 8))(v50, v46);
    return (v41)(v66, v30);
  }

  else
  {
    sub_245747D30();
    sub_245747D20();
    (*(v22 + 8))(v25, v21);
    v42 = v68;
    (*(v68 + 16))(v17, v0 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_continuation, v14);
    *v13 = v27;
    swift_storeEnumTagMultiPayload();
    sub_2457488A0();
    (*(v42 + 8))(v17, v14);
    return (*(v64 + 8))(v20, v62);
  }
}

uint64_t sub_2456FF120()
{
  v1 = type metadata accessor for RGBLivenessModel.Event(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = (&v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE24890, &qword_24574AA00);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE24898, &qword_24574AA08);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v18 - v13;
  if (*(v0 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_skipGestureTask))
  {
    v15 = *(v0 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_skipGestureTask);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE244D8, &qword_24574AA50);
    sub_245748870();
  }

  *(v0 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_analyticsAlertCause) = 1;
  (*(v6 + 16))(v9, v0 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_continuation, v5);
  v16 = 10;
  if (!*(v0 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_analyticsGesture + 8))
  {
    v16 = *(v0 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_analyticsGesture);
  }

  *v4 = v16;
  swift_storeEnumTagMultiPayload();
  sub_2457488A0();
  (*(v6 + 8))(v9, v5);
  return (*(v11 + 8))(v14, v10);
}

void sub_2456FF3B0(uint64_t a1)
{
  v3 = sub_245747E60();
  v34 = *(v3 - 8);
  v35 = v3;
  v4 = *(v34 + 64);
  MEMORY[0x28223BE20](v3);
  v36 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for RGBLivenessModel.Event(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE24890, &qword_24574AA00);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v33 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE24898, &qword_24574AA08);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v33 - v18;
  (*(v11 + 16))(v14, v1 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_continuation, v10);
  sub_245702DF0(a1, v9, type metadata accessor for RGBLivenessResult);
  swift_storeEnumTagMultiPayload();
  sub_2457488A0();
  (*(v11 + 8))(v14, v10);
  (*(v16 + 8))(v19, v15);
  v20 = PADAuditDataRepositoryDefault();
  if (v20)
  {
    v21 = v20;
    v22 = sub_2457357D8();
    v23 = (a1 + *(type metadata accessor for RGBLivenessResult() + 116));
    v24 = *v23;
    v25 = v23[1];
    v26 = sub_245747C50();
    [v21 storeClassifierResult:v22 imageData:v26 signature:0 flags:0];
    swift_unknownObjectRelease();
  }

  else
  {
    v28 = v34;
    v27 = v35;
    v29 = v36;
    sub_245747CF0();
    v30 = sub_245747E50();
    v31 = sub_245748910();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_2456DE000, v30, v31, "Persist Capture internal settings is not enabled. Will not store the classifier results", v32, 2u);
      MEMORY[0x245D712D0](v32, -1, -1);
    }

    (*(v28 + 8))(v29, v27);
  }
}

uint64_t sub_2456FF760(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for RGBLivenessModel.Event(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v40 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE24890, &qword_24574AA00);
  v7 = *(v39 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v39);
  v10 = &v32 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE24898, &qword_24574AA08);
  v37 = *(v11 - 8);
  v38 = v11;
  v12 = *(v37 + 64);
  MEMORY[0x28223BE20](v11);
  v36 = &v32 - v13;
  v35 = sub_245747E60();
  v14 = *(v35 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v35);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_245747CF0();
  v18 = a1;
  v19 = sub_245747E50();
  v20 = sub_245748920();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v33 = v1;
    v22 = v21;
    v23 = swift_slowAlloc();
    v34 = v4;
    v24 = v23;
    v41 = v23;
    *v22 = 136315138;
    swift_getErrorValue();
    v25 = sub_245748C20();
    v27 = sub_24572EDDC(v25, v26, &v41);

    *(v22 + 4) = v27;
    _os_log_impl(&dword_2456DE000, v19, v20, "Liveness classifier unexpected error occurred: %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v24);
    MEMORY[0x245D712D0](v24, -1, -1);
    v28 = v22;
    v2 = v33;
    MEMORY[0x245D712D0](v28, -1, -1);
  }

  (*(v14 + 8))(v17, v35);
  v29 = v39;
  (*(v7 + 16))(v10, v2 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_continuation, v39);
  *v40 = 10;
  swift_storeEnumTagMultiPayload();
  v30 = v36;
  sub_2457488A0();
  (*(v7 + 8))(v10, v29);
  return (*(v37 + 8))(v30, v38);
}

uint64_t sub_2456FFB20(void *a1, uint64_t *a2)
{
  v3 = v2;
  v32 = a1;
  v33 = type metadata accessor for RGBLivenessModel.Event(0);
  v5 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20]();
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE24890, &qword_24574AA00);
  v9 = *(v8 - 8);
  v10 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v12 = &v27 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE24898, &qword_24574AA08);
  v30 = *(v13 - 8);
  v31 = v13;
  v14 = (*(v30 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v16 = &v27 - v15;
  v17 = *a2;
  v18 = a2[1];
  v28 = a2[2];
  v29 = v17;
  (*(v9 + 16))(v12, v3 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_continuation, v8);

  v19 = sub_2456F3D98();
  memcpy(v34, (v3 + 64), sizeof(v34));
  v20 = sub_245720528();
  v21 = *(v3 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController____lazy_storage___remainingSelfieAttempts);
  *v7 = 0;
  v22 = v32;
  v23 = v28;
  v24 = v29;
  *(v7 + 1) = v32;
  *(v7 + 2) = v24;
  *(v7 + 3) = v18;
  *(v7 + 4) = v23;
  v7[40] = v19 < v20;
  *(v7 + 6) = v21;
  v7[56] = 0;
  swift_storeEnumTagMultiPayload();
  v25 = v22;
  sub_2457488A0();
  (*(v9 + 8))(v12, v8);
  return (*(v30 + 8))(v16, v31);
}

uint64_t sub_2456FFDA4(uint64_t a1)
{
  v2 = v1;
  v25 = type metadata accessor for RGBLivenessModel.Event(0);
  v4 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25);
  v6 = &v26[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE24890, &qword_24574AA00);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v26[-v10 - 8];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE24898, &qword_24574AA08);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v26[-v15 - 8];
  v27 = *a1;
  v28 = *(a1 + 16);
  sub_2457027AC();
  v17 = sub_245747D70();
  LOBYTE(a1) = MEMORY[0x245D70730](v17);

  if (a1)
  {
    (*(v8 + 16))(v11, v2 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_continuation, v7);
    *v6 = 9;
    swift_storeEnumTagMultiPayload();
    sub_2457488A0();
    (*(v8 + 8))(v11, v7);
    result = (*(v13 + 8))(v16, v12);
  }

  if (*(v2 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_firstTutorialVideoFinishedPlaying) == 1 && (*(v2 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_hasCompletedGestureMonitoring) & 1) == 0)
  {
    if (BYTE4(v28) == 1)
    {
      v19 = 2;
LABEL_9:
      v26[0] = v19;
      result = sub_2457001A4(v26);
      goto LABEL_11;
    }

    if (BYTE5(v28) == 1)
    {
      v19 = 3;
      goto LABEL_9;
    }

    *(v2 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_consecutiveInvalidFrames) = 0;
  }

LABEL_11:
  if (v28 == 1)
  {
    v20 = v27 & 0xFFFFFFFFFFFFLL;
    if ((*(&v27 + 1) & 0x2000000000000000) != 0)
    {
      v20 = HIBYTE(*(&v27 + 1)) & 0xFLL;
    }

    if (v20)
    {
      if (BYTE3(v28) == 1)
      {
        v21 = *(v2 + 640);
        if (*(v21 + 184) == 1)
        {
          v22 = *(v21 + 176);
          if (v22)
          {
            v23 = *(v2 + 640);

            v24 = v22;
            sub_245727FE8();
          }
        }
      }

      (*(v8 + 16))(v11, v2 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_continuation, v7);
      *v6 = v27;
      *(v6 + 2) = v28;
      swift_storeEnumTagMultiPayload();
      sub_245702E58(&v27, v26);
    }

    else
    {
      (*(v8 + 16))(v11, v2 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_continuation, v7);
      swift_storeEnumTagMultiPayload();
    }

    sub_2457488A0();
    (*(v8 + 8))(v11, v7);
    return (*(v13 + 8))(v16, v12);
  }

  return result;
}

uint64_t sub_2457001A4(unsigned __int8 *a1)
{
  v2 = v1;
  v25 = type metadata accessor for RGBLivenessModel.Event(0);
  v4 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25);
  v6 = &v21[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE24890, &qword_24574AA00);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v21[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE24898, &qword_24574AA08);
  v13 = *(*(v12 - 8) + 64);
  result = MEMORY[0x28223BE20](v12);
  v17 = &v21[-v16];
  v18 = OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_consecutiveInvalidFrames;
  v19 = *(v2 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_consecutiveInvalidFrames);
  v20 = v19 + 1;
  if (__OFADD__(v19, 1))
  {
    __break(1u);
  }

  else
  {
    v23 = v15;
    v24 = result;
    v22 = *a1;
    *(v2 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_consecutiveInvalidFrames) = v20;
    memcpy(v26, (v2 + 64), sizeof(v26));
    result = sub_2457226A8();
    if (v20 >= result)
    {
      (*(v8 + 16))(v11, v2 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_continuation, v7);
      *v6 = v22;
      swift_storeEnumTagMultiPayload();
      sub_2457488A0();
      (*(v8 + 8))(v11, v7);
      result = (*(v23 + 8))(v17, v24);
      *(v2 + v18) = 0;
    }
  }

  return result;
}

uint64_t sub_24570040C(uint64_t a1)
{
  v41 = a1;
  v2 = type metadata accessor for RGBLivenessModel.Event(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v50 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE24890, &qword_24574AA00);
  v48 = *(v5 - 8);
  v49 = v5;
  v6 = *(v48 + 64);
  MEMORY[0x28223BE20](v5);
  v47 = &v41 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE24898, &qword_24574AA08);
  v45 = *(v8 - 8);
  v46 = v8;
  v9 = *(v45 + 64);
  MEMORY[0x28223BE20](v8);
  v44 = &v41 - v10;
  v11 = sub_245747E60();
  v42 = *(v11 - 8);
  v43 = v11;
  v12 = *(v42 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_245747DC0();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_livePhotoTimeStamps;
  v21 = *(*(v1 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_livePhotoTimeStamps) + 16);
  memcpy(v53, (v1 + 64), sizeof(v53));
  if (v21 == sub_245722114() && (v22 = *(v1 + v20), (v23 = v22[2]) != 0))
  {
    v24 = v22[4];
    v25 = v22[5];
    v26 = v22 + 4;
    v27 = v26[2];
    v28 = &v26[3 * v23];
    v29 = *(v28 - 3);
    v30 = *(v28 - 2);
    v31 = *(v28 - 1);
    sub_245748900();
    v32 = *(*(v1 + 640) + 32);

    sub_2456EA3A4(v41, v53);
  }

  else
  {
    *&v53[0] = 0;
    *(&v53[0] + 1) = 0xE000000000000000;
    sub_245748AA0();
    v52 = v53[0];
    MEMORY[0x245D70540](0xD00000000000003FLL, 0x8000000245757B90);
    *&v53[0] = *(*(v1 + v20) + 16);
    v41 = v2;
    v34 = sub_245748BA0();
    MEMORY[0x245D70540](v34);

    MEMORY[0x245D70540](0x746365707865202CLL, 0xEC000000203A6465);
    memcpy(v53, (v1 + 64), sizeof(v53));
    v51 = sub_245722114();
    v35 = sub_245748BA0();
    MEMORY[0x245D70540](v35);

    (*(v16 + 104))(v19, *MEMORY[0x277CFFB10], v15);
    sub_245723158(MEMORY[0x277D84F90]);
    sub_245747DD0();
    sub_245702840(&qword_27EE244B8, MEMORY[0x277CFFE30]);
    v36 = swift_allocError();
    sub_245747DE0();
    sub_245747CF0();
    sub_245747D00();
    (*(v42 + 8))(v14, v43);

    v38 = v47;
    v37 = v48;
    v39 = v49;
    (*(v48 + 16))(v47, v1 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_continuation, v49);
    *v50 = 10;
    swift_storeEnumTagMultiPayload();
    v40 = v44;
    sub_2457488A0();
    (*(v37 + 8))(v38, v39);
    return (*(v45 + 8))(v40, v46);
  }
}

uint64_t sub_2457009F0(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for RGBLivenessModel.Event(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE24890, &qword_24574AA00);
  v38 = *(v8 - 8);
  v9 = *(v38 + 64);
  MEMORY[0x28223BE20](v8);
  v37 = &v31 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE24898, &qword_24574AA08);
  v35 = *(v11 - 8);
  v36 = v11;
  v12 = *(v35 + 64);
  MEMORY[0x28223BE20](v11);
  v34 = &v31 - v13;
  v14 = *(v1 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_invalidLivePhotoFrames);
  v15 = *(v14 + 16);
  if (v15)
  {
    v31 = v8;
    v32 = a1;
    v33 = v4;

    v16 = MEMORY[0x277D84F90];
    v17 = 32;
    do
    {
      if (*(v14 + v17) == 1)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v41 = v16;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_2457059BC(0, *(v16 + 16) + 1, 1);
          v16 = v41;
        }

        v19 = *(v16 + 16);
        v18 = *(v16 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_2457059BC((v18 > 1), v19 + 1, 1);
          v16 = v41;
        }

        *(v16 + 16) = v19 + 1;
        *(v16 + v19 + 32) = 1;
      }

      ++v17;
      --v15;
    }

    while (v15);

    a1 = v32;
    v8 = v31;
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  v21 = *(v16 + 16);

  memcpy(v40, (v2 + 64), sizeof(v40));
  v22 = sub_245722114();
  memcpy(v39, (v2 + 64), sizeof(v39));
  result = sub_2457223E8();
  if (__OFSUB__(v22, result))
  {
    __break(1u);
  }

  else
  {
    v24 = v22 - result < v21;
    v25 = v38;
    v26 = v2 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_continuation;
    v27 = v37;
    (*(v38 + 16))(v37, v26, v8);
    v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE24A18, &qword_24574AC48) + 48);
    v29 = sub_245747C30();
    (*(*(v29 - 8) + 16))(v7, a1, v29);
    v7[v28] = v24;
    swift_storeEnumTagMultiPayload();
    v30 = v34;
    sub_2457488A0();
    (*(v25 + 8))(v27, v8);
    return (*(v35 + 8))(v30, v36);
  }

  return result;
}

uint64_t sub_245700D9C(void *a1)
{
  v64 = sub_245747E60();
  v66 = *(v64 - 8);
  v2 = *(v66 + 64);
  (MEMORY[0x28223BE20])();
  v65 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_245747DC0();
  v68 = *(v4 - 8);
  v5 = *(v68 + 64);
  (MEMORY[0x28223BE20])();
  v62 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE24A00, &qword_24574AC38);
  v7 = (*(*(v67 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v9 = &v56 - v8;
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE24A08, &qword_24574AC40) - 8) + 64);
  v11 = (MEMORY[0x28223BE20])();
  v63 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v56 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v56 - v16;
  v72 = type metadata accessor for RGBLivenessModel.Event(0);
  v18 = *(*(v72 - 8) + 64);
  MEMORY[0x28223BE20](v72);
  v20 = &v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE24890, &qword_24574AA00);
  v22 = *(v21 - 8);
  v23 = (*(v22 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v21);
  v25 = &v56 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE24898, &qword_24574AA08);
  v70 = *(v26 - 8);
  v71 = v26;
  v27 = (*(v70 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v26);
  v69 = &v56 - v28;
  type metadata accessor for Code(0);
  v74 = -11807;
  sub_245702840(&qword_27EE245A8, type metadata accessor for Code);
  if ((sub_245747B20() & 1) == 0)
  {
    v59 = v25;
    v58 = v22;
    v60 = v21;
    v61 = v20;
    v57 = a1;
    swift_getErrorValue();
    sub_245748C30();
    v30 = v68;
    (*(v68 + 104))(v15, *MEMORY[0x277CFFA00], v4);
    (*(v30 + 56))(v15, 0, 1, v4);
    v31 = *(v67 + 48);
    sub_245703098(v17, v9, &qword_27EE24A08, &qword_24574AC40);
    sub_245703098(v15, &v9[v31], &qword_27EE24A08, &qword_24574AC40);
    v32 = *(v30 + 48);
    if (v32(v9, 1, v4) == 1)
    {
      sub_2456EEF50(v15, &qword_27EE24A08, &qword_24574AC40);
      sub_2456EEF50(v17, &qword_27EE24A08, &qword_24574AC40);
      v33 = v32(&v9[v31], 1, v4);
      v34 = v73;
      if (v33 == 1)
      {
        sub_2456EEF50(v9, &qword_27EE24A08, &qword_24574AC40);
LABEL_13:
        v22 = v58;
        v53 = v34 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_continuation;
        v29 = v59;
        v21 = v60;
        (*(v58 + 16))(v59, v53, v60);
        v48 = 8;
LABEL_14:
        *v61 = v48;
        goto LABEL_15;
      }
    }

    else
    {
      v35 = v63;
      sub_245703098(v9, v63, &qword_27EE24A08, &qword_24574AC40);
      if (v32(&v9[v31], 1, v4) != 1)
      {
        v49 = &v9[v31];
        v50 = v62;
        (*(v30 + 32))(v62, v49, v4);
        sub_245702840(&qword_27EE24A10, MEMORY[0x277CFFE20]);
        v51 = sub_245748690();
        v52 = *(v30 + 8);
        v52(v50, v4);
        sub_2456EEF50(v15, &qword_27EE24A08, &qword_24574AC40);
        sub_2456EEF50(v17, &qword_27EE24A08, &qword_24574AC40);
        v52(v35, v4);
        sub_2456EEF50(v9, &qword_27EE24A08, &qword_24574AC40);
        v34 = v73;
        v37 = v65;
        v36 = v66;
        if (v51)
        {
          goto LABEL_13;
        }

LABEL_9:
        sub_245747CF0();
        v38 = v57;
        v39 = v57;
        v40 = sub_245747E50();
        v41 = sub_245748920();

        if (os_log_type_enabled(v40, v41))
        {
          v42 = swift_slowAlloc();
          v43 = swift_slowAlloc();
          v74 = v43;
          *v42 = 136315138;
          swift_getErrorValue();
          v44 = sub_245748C20();
          v46 = sub_24572EDDC(v44, v45, &v74);

          *(v42 + 4) = v46;
          _os_log_impl(&dword_2456DE000, v40, v41, "Liveness AV session unexpected error occurred: %s", v42, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v43);
          MEMORY[0x245D712D0](v43, -1, -1);
          MEMORY[0x245D712D0](v42, -1, -1);
        }

        (*(v36 + 8))(v37, v64);
        v22 = v58;
        v47 = v34 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_continuation;
        v29 = v59;
        v21 = v60;
        (*(v58 + 16))(v59, v47, v60);
        v48 = 10;
        goto LABEL_14;
      }

      sub_2456EEF50(v15, &qword_27EE24A08, &qword_24574AC40);
      sub_2456EEF50(v17, &qword_27EE24A08, &qword_24574AC40);
      (*(v30 + 8))(v35, v4);
      v34 = v73;
    }

    sub_2456EEF50(v9, &qword_27EE24A00, &qword_24574AC38);
    v37 = v65;
    v36 = v66;
    goto LABEL_9;
  }

  (*(v22 + 16))(v25, v73 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_continuation, v21);
  *v20 = 8;
  v29 = v25;
LABEL_15:
  swift_storeEnumTagMultiPayload();
  v54 = v69;
  sub_2457488A0();
  (*(v22 + 8))(v29, v21);
  return (*(v70 + 8))(v54, v71);
}

uint64_t sub_2457018CC(uint64_t a1)
{
  v3 = type metadata accessor for RGBLivenessModel.Event(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = (&v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE24890, &qword_24574AA00);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v18 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE24898, &qword_24574AA08);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v18 - v15;
  (*(v8 + 16))(v11, v1 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_continuation, v7);
  *v6 = a1;
  swift_storeEnumTagMultiPayload();
  sub_2457488A0();
  (*(v8 + 8))(v11, v7);
  return (*(v13 + 8))(v16, v12);
}

uint64_t sub_245701ADC()
{
  v1 = type metadata accessor for RGBLivenessModel.Event(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE24890, &qword_24574AA00);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE24898, &qword_24574AA08);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v16 - v13;
  (*(v6 + 16))(v9, v0 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_continuation, v5);
  *v4 = 5;
  swift_storeEnumTagMultiPayload();
  sub_2457488A0();
  (*(v6 + 8))(v9, v5);
  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_245701CEC(uint64_t a1, uint64_t a2)
{
  v21 = a2;
  v4 = type metadata accessor for RGBLivenessModel.Event(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = (&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE24890, &qword_24574AA00);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v20 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE24898, &qword_24574AA08);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v20 - v16;
  (*(v9 + 16))(v12, v2 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_continuation, v8);
  v18 = v21;
  *v7 = a1;
  v7[1] = v18;
  swift_storeEnumTagMultiPayload();
  sub_2457488A0();
  (*(v9 + 8))(v12, v8);
  return (*(v14 + 8))(v17, v13);
}

uint64_t sub_245701F08(void *a1)
{
  v3 = type metadata accessor for RGBLivenessModel.Event(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = (&v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE24890, &qword_24574AA00);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v19 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE24898, &qword_24574AA08);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v19 - v15;
  (*(v8 + 16))(v11, v1 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_continuation, v7);
  *v6 = a1;
  swift_storeEnumTagMultiPayload();
  v17 = a1;
  sub_2457488A0();
  (*(v8 + 8))(v11, v7);
  return (*(v13 + 8))(v16, v12);
}

uint64_t sub_24570211C(uint64_t a1)
{
  v3 = type metadata accessor for RGBLivenessModel.Event(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE24890, &qword_24574AA00);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v19 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE24898, &qword_24574AA08);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v19 - v15;
  (*(v8 + 16))(v11, v1 + OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessController_continuation, v7);
  v17 = sub_245747C30();
  (*(*(v17 - 8) + 16))(v6, a1, v17);
  swift_storeEnumTagMultiPayload();
  sub_2457488A0();
  (*(v8 + 8))(v11, v7);
  return (*(v13 + 8))(v16, v12);
}

char *sub_245702364(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE24A40, &qword_24574ACD0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

char *sub_245702458(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE24A48, &qword_24574ACD8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 24 * v8);
  }

  return v10;
}

char *sub_245702574(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE24A50, &unk_24574ACE0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_245702678(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE24A20, &unk_24574AC50);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE248B8, &qword_24574AA38);
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_2457027AC()
{
  result = qword_27EE248B0;
  if (!qword_27EE248B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EE248B0);
  }

  return result;
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_245702840(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24570298C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2457029F4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_245702A54(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2456F3D40;

  return sub_2456FC580(a1, v4, v5, v6);
}

unint64_t sub_245702B08(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result = v6 + 32 + 24 * result + 24 * a3;
  v10 = (v6 + 32 + 24 * a2);
  if (result != v10 || result >= v10 + 24 * v9)
  {
    v12 = a3;
    result = memmove(result, v10, 24 * v9);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

char *sub_245702BC0(char *result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result += v6 + a3 + 32;
  v10 = (v6 + 32 + a2);
  if (result != v10 || result >= &v10[v9])
  {
    v12 = a3;
    result = memmove(result, v10, v9);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_245702C64(uint64_t result, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, void))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = *v4;
  v7 = *(*v4 + 16);
  if (v7 < a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = v7 + v9;
  if (__OFADD__(v7, v9))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  v13 = *v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v10 > *(v6 + 24) >> 1)
  {
    v6 = a3();
    *v4 = v6;
  }

  result = a4(v8, a2, 0);
  *v4 = v6;
  return result;
}

uint64_t sub_245702D3C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2456EEC10;

  return sub_2456FC580(a1, v4, v5, v6);
}

uint64_t sub_245702DF0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_245702F10(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2456F3D40;

  return sub_2456FCBB4(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_245702FD8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2456F3D40;

  return sub_2456FD1D4(a1, v4, v5, v7, v6);
}

uint64_t sub_245703098(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_245703100(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void sub_245703158(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v2();
}

char *sub_2457031A4(void *a1, unsigned __int8 *a2)
{
  v3 = v2;
  v4 = a1;
  v5 = *a2;
  v6 = [a1 orientation];
  v7 = *(v2 + 136);
  v32 = v7;
  v33 = *(v2 + 120);
  v8 = [v4 faces];
  sub_2456E730C(0, &qword_27EE247D8, 0x277CFF228);
  v9 = sub_2457487A0();

  if (v9 >> 62)
  {
    v10 = sub_245748B70();
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_13:

    v13 = MEMORY[0x277D84F90];
    goto LABEL_14;
  }

  v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v10)
  {
    goto LABEL_13;
  }

LABEL_3:
  *&v39[0] = MEMORY[0x277D84F90];
  result = sub_2457059DC(0, v10 & ~(v10 >> 63), 0);
  if (v10 < 0)
  {
    __break(1u);
    return result;
  }

  v30 = v4;
  v31 = __PAIR64__(v5, v6);
  v12 = 0;
  v13 = *&v39[0];
  do
  {
    if ((v9 & 0xC000000000000001) != 0)
    {
      v14 = MEMORY[0x245D70890](v12, v9);
    }

    else
    {
      v14 = *(v9 + 8 * v12 + 32);
    }

    v15 = v14;
    [v14 bounds];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;

    *&v39[0] = v13;
    v25 = *(v13 + 16);
    v24 = *(v13 + 24);
    if (v25 >= v24 >> 1)
    {
      sub_2457059DC((v24 > 1), v25 + 1, 1);
      v13 = *&v39[0];
    }

    ++v12;
    *(v13 + 16) = v25 + 1;
    v26 = (v13 + 32 * v25);
    v26[4] = v17;
    v26[5] = v19;
    v26[6] = v21;
    v26[7] = v23;
  }

  while (v10 != v12);

  v6 = v31;
  v5 = HIDWORD(v31);
  v4 = v30;
LABEL_14:
  v41 = 1;
  if (v5 == 2)
  {
    v27 = v3[19];
  }

  else
  {
    v27 = -1;
  }

  v28 = v3[9];
  __swift_project_boxed_opaque_existential_1(v3 + 5, v3[8]);
  v29 = [v4 buffer];
  LOBYTE(v34) = v5;
  DWORD1(v34) = v6;
  *(&v34 + 1) = v27;
  v35 = v33;
  *v36 = v32;
  *&v36[16] = v13;
  *&v36[24] = 0;
  v36[28] = v41;
  v36[29] = 2;
  (*(v28 + 8))(&v37);

  v39[0] = v34;
  v39[1] = v33;
  v40[0] = v32;
  *(v40 + 14) = *&v36[14];
  sub_2457059FC(v39);
  v34 = v37;
  *&v35 = v38;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v37 = v34;
    v38 = v35;
    sub_2456FFDA4(&v37);
    swift_unknownObjectRelease();
  }

  return sub_245705A50(&v34);
}

id sub_245703494()
{
  v1 = *(v0 + 168);
  v2 = v1;
  if (v1 == 1)
  {
    v2 = PADAuditDataRepositoryDefault();
    v3 = *(v0 + 168);
    *(v0 + 168) = v2;
    swift_unknownObjectRetain();
    sub_2457058E0(v3);
  }

  sub_245706468(v1);
  return v2;
}

uint64_t sub_2457034F8(uint64_t a1, char a2, uint64_t a3, char a4, __int128 *a5)
{
  *(v5 + 24) = 0;
  swift_unknownObjectWeakInit();
  v11 = [objc_allocWithZone(type metadata accessor for AVSessionManager()) init];
  *(v5 + 32) = v11;
  *(v5 + 112) = 0u;
  *(v5 + 128) = 0u;
  *(v5 + 144) = 0u;
  *(v5 + 159) = 0;
  *(v5 + 168) = xmmword_24574AD40;
  *(v5 + 184) = 1;
  *(v5 + 192) = 0;
  v12 = OBJC_IVAR____TtC18CoreIDVRGBLiveness23RGBLivenessImageManager_videoURL;
  v13 = sub_245747C30();
  (*(*(v13 - 8) + 56))(v5 + v12, 1, 1, v13);
  *(v5 + 80) = a1;
  *(v5 + 88) = a2 & 1;
  *(v5 + 96) = a3;
  *(v5 + 104) = a4 & 1;
  sub_245703100(a5, v5 + 40);
  *&v11[OBJC_IVAR____TtC18CoreIDVRGBLiveness16AVSessionManager_delegate + 8] = &off_28587A858;
  swift_unknownObjectWeakAssign();
  return v5;
}

void sub_24570362C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_245747E60();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_245747CF0();
  v9 = sub_245747E50();
  v10 = sub_245748910();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_2456DE000, v9, v10, "Attaching AVSession to previewLayer", v11, 2u);
    MEMORY[0x245D712D0](v11, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  v12 = *(v2 + 176);
  if (v12)
  {
    v13 = v12;
    v14 = sub_245728334();

    [v14 setSession_];
  }
}

void sub_2457037A4()
{
  v1 = v0;
  v2 = sub_245747E60();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_245747CF0();
  v7 = sub_245747E50();
  v8 = sub_245748910();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_2456DE000, v7, v8, "Detaching AVSession from previewLayer", v9, 2u);
    MEMORY[0x245D712D0](v9, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  v10 = *(v1 + 176);
  if (v10)
  {
    v11 = v10;
    v12 = sub_245728334();

    [v12 setSession_];
  }
}

uint64_t sub_245703918(void *a1, __int16 a2)
{
  v3 = v2;
  v6 = sub_245747E60();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v54[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v13 = &v54[-v12];
  if ((a2 & 0x100) == 0)
  {
    v14 = *(v3 + 192);
    *(v3 + 192) = a1;
    v15 = a1;

    sub_245747CF0();
    v16 = sub_245747E50();
    v17 = sub_245748910();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = v15;
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_2456DE000, v16, v17, "Picture is ready.", v19, 2u);
      v20 = v19;
      v15 = v18;
      MEMORY[0x245D712D0](v20, -1, -1);
    }

    (*(v7 + 8))(v13, v6);
    v21 = [v15 orientation];
    v58 = *(v3 + 136);
    v59 = *(v3 + 120);
    v22 = [v15 faces];
    sub_2456E730C(0, &qword_27EE247D8, 0x277CFF228);
    v23 = sub_2457487A0();

    if (v23 >> 62)
    {
      v24 = sub_245748B70();
      if (v24)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v24)
      {
LABEL_6:
        *&v65 = MEMORY[0x277D84F90];
        result = sub_2457059DC(0, v24 & ~(v24 >> 63), 0);
        if (v24 < 0)
        {
          __break(1u);
          return result;
        }

        v55 = v21;
        v56 = v15;
        v57 = v3;
        v26 = 0;
        v27 = v65;
        do
        {
          if ((v23 & 0xC000000000000001) != 0)
          {
            v28 = MEMORY[0x245D70890](v26, v23);
          }

          else
          {
            v28 = *(v23 + 8 * v26 + 32);
          }

          v29 = v28;
          [v28 bounds];
          v31 = v30;
          v33 = v32;
          v35 = v34;
          v37 = v36;

          *&v65 = v27;
          v39 = *(v27 + 16);
          v38 = *(v27 + 24);
          if (v39 >= v38 >> 1)
          {
            sub_2457059DC((v38 > 1), v39 + 1, 1);
            v27 = v65;
          }

          ++v26;
          *(v27 + 16) = v39 + 1;
          v40 = (v27 + 32 * v39);
          v40[4] = v31;
          v40[5] = v33;
          v40[6] = v35;
          v40[7] = v37;
        }

        while (v24 != v26);

        v3 = v57;
        v15 = v56;
        v21 = v55;
        goto LABEL_22;
      }
    }

    v27 = MEMORY[0x277D84F90];
LABEL_22:
    v50 = CACurrentMediaTime() - *(v3 + 112);
    v70 = 0;
    LOBYTE(v65) = 4;
    *(&v65 + 1) = v71;
    BYTE3(v65) = v72;
    DWORD1(v65) = v21;
    *(&v65 + 1) = -1;
    v66 = v59;
    *v67 = v58;
    *&v67[16] = v27;
    *&v67[24] = v50;
    v67[28] = 0;
    v67[29] = a2 & 1;
    v51 = *(v3 + 72);
    __swift_project_boxed_opaque_existential_1((v3 + 40), *(v3 + 64));
    v52 = [v15 buffer];
    v60 = v65;
    v61 = v66;
    v62[0] = *v67;
    *(v62 + 14) = *&v67[14];
    (*(v51 + 8))(&v63);

    sub_2457059FC(&v65);
    v68 = v63;
    v69 = v64;
    sub_245747CE0();
    if (!swift_unknownObjectWeakLoadStrong())
    {
      return sub_245705A50(&v68);
    }

    v53 = sub_245703F74(v15);
    v60 = v68;
    *&v61 = v69;
    sub_2456FFB20(v53, &v60);

    swift_unknownObjectRelease();
  }

  sub_245747CF0();
  v41 = a1;
  v42 = sub_245747E50();
  v43 = sub_245748920();
  sub_2457059B0(a1);
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    *&v65 = v45;
    *v44 = 136315138;
    swift_getErrorValue();
    v46 = sub_245748C20();
    v48 = sub_24572EDDC(v46, v47, &v65);
    *&v59 = v6;
    v49 = v48;

    *(v44 + 4) = v49;
    _os_log_impl(&dword_2456DE000, v42, v43, "Selfie capture failed to capture photo: %s", v44, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v45);
    MEMORY[0x245D712D0](v45, -1, -1);
    MEMORY[0x245D712D0](v44, -1, -1);

    (*(v7 + 8))(v11, v59);
  }

  else
  {

    (*(v7 + 8))(v11, v6);
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_245700D9C(a1);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_245703F74(void *a1)
{
  v3 = [a1 orientation] - 2;
  if (v3 > 6)
  {
    v4 = 0;
  }

  else
  {
    v4 = qword_24574AF20[v3];
  }

  v5 = [a1 buffer];
  v6 = [objc_allocWithZone(MEMORY[0x277CBF758]) initWithCVPixelBuffer_];

  v7 = [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCIImage:v6 scale:v4 orientation:1.0];
  [v7 size];
  v9 = v8;
  [v7 size];
  if (!*(v1 + 88))
  {
    v9 = *(v1 + 80);
  }

  v11 = *(v1 + 96);
  if (*(v1 + 104))
  {
    v12 = v10;
  }

  else
  {
    v12 = *(v1 + 96);
  }

  [v7 size];
  v26.origin.x = 0.0;
  v26.origin.y = 0.0;
  v26.size.width = v9;
  v26.size.height = v12;
  v25 = AVMakeRectWithAspectRatioInsideRect(v24, v26);
  width = v25.size.width;
  height = v25.size.height;
  v15 = [objc_allocWithZone(MEMORY[0x277D75560]) initWithSize_];
  v16 = swift_allocObject();
  *(v16 + 2) = v7;
  v16[3] = width;
  v16[4] = height;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_2456F3CFC;
  *(v17 + 24) = v16;
  v23[4] = sub_245705AA4;
  v23[5] = v17;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 1107296256;
  v23[2] = sub_245703158;
  v23[3] = &block_descriptor_3;
  v18 = _Block_copy(v23);
  v19 = v7;

  v20 = [v15 imageWithActions_];

  _Block_release(v18);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    return v20;
  }

  __break(1u);
  return result;
}

uint64_t sub_245704218(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE24810, &qword_24574A910);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v15 - v6;
  v8 = sub_245748810();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  sub_2457487F0();
  v9 = a1;

  v10 = sub_2457487E0();
  v11 = swift_allocObject();
  v12 = MEMORY[0x277D85700];
  v11[2] = v10;
  v11[3] = v12;
  v11[4] = v9;
  v11[5] = v2;
  sub_245736B60(0, 0, v7, &unk_24574AED0, v11);

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v14 = off_28587A600;
    type metadata accessor for RGBLivenessController();
    v14(v9);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_24570439C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_245747E60();
  v36 = *(v4 - 8);
  v37 = v4;
  v5 = *(v36 + 64);
  MEMORY[0x28223BE20](v4);
  v35 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE244D0, &unk_245749FF0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v35 - v9;
  v11 = sub_245747C30();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27EE24860, &unk_24574AF10);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = (&v35 - v18);
  sub_245703098(a1, &v35 - v18, qword_27EE24860, &unk_24574AF10);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v12 + 32))(v15, v19, v11);
    if (*(v2 + 161) == 1)
    {
      if (!swift_unknownObjectWeakLoadStrong())
      {
LABEL_14:
        (*(v12 + 8))(v15, v11);
        return;
      }

      sub_24570040C(v15);
    }

    else
    {
      (*(v12 + 16))(v10, v15, v11);
      (*(v12 + 56))(v10, 0, 1, v11);
      v30 = OBJC_IVAR____TtC18CoreIDVRGBLiveness23RGBLivenessImageManager_videoURL;
      swift_beginAccess();
      sub_2456E729C(v10, v2 + v30);
      swift_endAccess();
      sub_245705CDC(v15);
      sub_245747CE0();
      v31 = sub_245703494();
      if (v31)
      {
        v32 = v31;
        v33 = sub_245747BF0();
        [v32 storeUnencryptedVideoFrom_];

        swift_unknownObjectRelease();
      }

      if (!swift_unknownObjectWeakLoadStrong())
      {
        goto LABEL_14;
      }

      v34 = off_28587A620;
      type metadata accessor for RGBLivenessController();
      v34(v15);
    }

    swift_unknownObjectRelease();
    goto LABEL_14;
  }

  v20 = *v19;
  v21 = v35;
  sub_245747CF0();
  v22 = v20;
  v23 = sub_245747E50();
  v24 = sub_245748920();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v38 = v26;
    *v25 = 136315138;
    swift_getErrorValue();
    v27 = sub_245748C20();
    v29 = sub_24572EDDC(v27, v28, &v38);

    *(v25 + 4) = v29;
    _os_log_impl(&dword_2456DE000, v23, v24, "Capturing video failed: %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v26);
    MEMORY[0x245D712D0](v26, -1, -1);
    MEMORY[0x245D712D0](v25, -1, -1);
  }

  (*(v36 + 8))(v21, v37);
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_245700D9C(v20);

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

void sub_245704888(uint64_t a1)
{
  v2 = sub_245747E60();
  v45 = *(v2 - 8);
  v46 = v2;
  v3 = *(v45 + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v44 = &v43 - v7;
  v8 = sub_245747C30();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v43 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE24A70, &unk_24574AEE0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = (&v43 - v18);
  sub_245703098(a1, &v43 - v18, &qword_27EE24A70, &unk_24574AEE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v20 = *v19;
    sub_245747CF0();
    v21 = v20;
    v22 = sub_245747E50();
    v23 = sub_245748920();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v47 = v25;
      *v24 = 136315138;
      swift_getErrorValue();
      v26 = sub_245748C20();
      v28 = sub_24572EDDC(v26, v27, &v47);

      *(v24 + 4) = v28;
      _os_log_impl(&dword_2456DE000, v22, v23, "Trimming live photo failed: %s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v25);
      MEMORY[0x245D712D0](v25, -1, -1);
      MEMORY[0x245D712D0](v24, -1, -1);
    }

    (*(v45 + 8))(v6, v46);
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_245700D9C(v20);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  else
  {
    (*(v9 + 32))(v15, v19, v8);
    sub_245747CF0();
    (*(v9 + 16))(v13, v15, v8);
    v29 = sub_245747E50();
    v30 = sub_245748910();
    v31 = v8;
    if (os_log_type_enabled(v29, v30))
    {
      v32 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v47 = v43;
      *v32 = 136315138;
      v33 = sub_245747BD0();
      v34 = v8;
      v36 = v35;
      v37 = *(v9 + 8);
      v37(v13, v34);
      v38 = sub_24572EDDC(v33, v36, &v47);
      v31 = v34;

      *(v32 + 4) = v38;
      _os_log_impl(&dword_2456DE000, v29, v30, "Trimmed Live Photo is ready at %s.", v32, 0xCu);
      v39 = v43;
      __swift_destroy_boxed_opaque_existential_0Tm(v43);
      MEMORY[0x245D712D0](v39, -1, -1);
      MEMORY[0x245D712D0](v32, -1, -1);
    }

    else
    {

      v37 = *(v9 + 8);
      v37(v13, v31);
    }

    (*(v45 + 8))(v44, v46);
    sub_245705CDC(v15);
    v40 = sub_245703494();
    if (v40)
    {
      v41 = v40;
      v42 = sub_245747BF0();
      [v41 storeUnencryptedVideoFrom_];

      swift_unknownObjectRelease();
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_2457009F0(v15);
      swift_unknownObjectRelease();
    }

    v37(v15, v31);
  }
}

uint64_t sub_245704DD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_2457487F0();
  v5[4] = sub_2457487E0();
  v7 = sub_2457487C0();

  return MEMORY[0x2822009F8](sub_245704E70, v7, v6);
}

uint64_t sub_245704E70()
{
  v1 = v0[4];
  v2 = v0[2];

  v3 = [v2 faces];
  sub_2456E730C(0, &qword_27EE247D8, 0x277CFF228);
  v4 = sub_2457487A0();

  if (v4 >> 62)
  {
    result = sub_245748B70();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_11:

    goto LABEL_12;
  }

  result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_11;
  }

LABEL_3:
  if ((v4 & 0xC000000000000001) != 0)
  {
    v6 = MEMORY[0x245D70890](0, v4);
  }

  else
  {
    if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v6 = *(v4 + 32);
  }

  v7 = v6;
  v8 = v0[3];

  [v7 bounds];

  CGRectVN2AV();
  v13 = *(v8 + 176);
  if (v13)
  {
    v14 = v12;
    v15 = v11;
    v16 = v10;
    v17 = v9;
    sub_2456E730C(0, &qword_27EE248B0, 0x277CBEBD0);
    v18 = v13;
    v19 = sub_245747D50();
    v20 = MEMORY[0x245D70730](v19);

    if (v20)
    {
      v21 = sub_245728620();
      [v21 setBorderWidth_];

      v22 = *&v18[OBJC_IVAR____TtC18CoreIDVRGBLiveness24RGBLivenessCameraPreview____lazy_storage___objectLayer];
      v23 = sub_245728334();
      [v23 rectForMetadataOutputRectOfInterest_];
      v25 = v24;
      v27 = v26;
      v29 = v28;
      v31 = v30;

      [v22 setFrame_];
    }

    else
    {
    }
  }

LABEL_12:
  v32 = v0[3];
  v33 = v32[22];
  if (v33)
  {
    v34 = v33;
    v35 = sub_245728334();
    [v34 frame];
    [v35 metadataOutputRectOfInterestForRect_];

    v32 = v0[3];
  }

  CGRectAV2VN();
  v32[15] = v38;
  v32[16] = v39;
  v32[17] = v40;
  v32[18] = v41;
  v42 = v0[1];

  return v42();
}

uint64_t sub_245705198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_245747E60();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v8 = *(v7 + 64) + 15;
  v5[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_245705258, 0, 0);
}

uint64_t sub_245705258()
{
  v1 = v0[2];
  v2 = objc_allocWithZone(MEMORY[0x277CE6650]);
  v3 = sub_245747BF0();
  v0[7] = [v2 initWithURL:v3 options:0];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE24A78, &qword_24574AF00);
  v4 = sub_245747CD0();
  v0[8] = v4;
  v5 = *(MEMORY[0x277D82DC0] + 4);
  v6 = swift_task_alloc();
  v0[9] = v6;
  *v6 = v0;
  v6[1] = sub_245705364;

  return MEMORY[0x2821FAF00](v0 + 11, v4, 0, 0);
}

uint64_t sub_245705364()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v8 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = sub_245705518;
  }

  else
  {
    v6 = *(v2 + 56);
    v5 = *(v2 + 64);

    v4 = sub_245705484;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_245705484()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 96);
  v3 = *(v0 + 48);
  v4 = *(v0 + 24);
  *(v0 + 112) = *(v0 + 88);
  *(v0 + 120) = v2;
  *(v0 + 128) = v1;
  Seconds = CMTimeGetSeconds((v0 + 112));
  sub_24571E538(v4, Seconds);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_245705518()
{
  v1 = *(v0 + 80);
  v3 = *(v0 + 56);
  v2 = *(v0 + 64);
  v4 = *(v0 + 48);

  v5 = *MEMORY[0x277CC08F0];
  v6 = *(MEMORY[0x277CC08F0] + 8);
  v7 = *(MEMORY[0x277CC08F0] + 16);
  sub_245747CF0();
  v8 = v1;
  v9 = sub_245747E50();
  v10 = sub_245748920();

  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 80);
  if (v11)
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412290;
    v15 = v12;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 4) = v16;
    *v14 = v16;
    _os_log_impl(&dword_2456DE000, v9, v10, "Failed to retrieve asset duration: %@", v13, 0xCu);
    sub_2456EEF50(v14, qword_27EE24A80, &qword_24574AF08);
    MEMORY[0x245D712D0](v14, -1, -1);
    MEMORY[0x245D712D0](v13, -1, -1);
  }

  else
  {
  }

  (*(*(v0 + 40) + 8))(*(v0 + 48), *(v0 + 32));
  v17 = *(v0 + 48);
  v18 = *(v0 + 24);
  *(v0 + 112) = v5;
  *(v0 + 120) = v6;
  *(v0 + 128) = v7;
  Seconds = CMTimeGetSeconds((v0 + 112));
  sub_24571E538(v18, Seconds);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_2457056F0()
{
  sub_2456EEF28(v0 + 16);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 40));
  sub_2457058E0(*(v0 + 168));

  sub_2456EEF50(v0 + OBJC_IVAR____TtC18CoreIDVRGBLiveness23RGBLivenessImageManager_videoURL, &qword_27EE244D0, &unk_245749FF0);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RGBLivenessImageManager()
{
  result = qword_27EE24A58;
  if (!qword_27EE24A58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2457057E8()
{
  sub_2456E5E10();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_2457058E0(uint64_t result)
{
  if (result != 1)
  {
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2457058F0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2456EEC10;

  return sub_245704DD8(a1, v4, v5, v7, v6);
}

char *sub_2457059BC(char *a1, int64_t a2, char a3)
{
  result = sub_245705AE4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2457059DC(char *a1, int64_t a2, char a3)
{
  result = sub_245705BD8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_245705AA4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

{
  return sub_2456E6F9C(a2 + 32, a1 + 32);
}

char *sub_245705AE4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE24A40, &qword_24574ACD0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

char *sub_245705BD8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE24A68, &qword_24574AED8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

uint64_t sub_245705CDC(uint64_t a1)
{
  v75[4] = *MEMORY[0x277D85DE8];
  v2 = sub_245747C30();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v63[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v72 = v6;
  MEMORY[0x28223BE20](v5);
  v73 = &v63[-v8];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE24810, &qword_24574A910);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v71 = &v63[-v11];
  v12 = sub_245747E60();
  v69 = *(v12 - 8);
  v70 = v12;
  v13 = *(v69 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v63[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = MEMORY[0x28223BE20](v14);
  v68 = &v63[-v18];
  MEMORY[0x28223BE20](v17);
  v20 = &v63[-v19];
  v21 = sub_24572FB08(MEMORY[0x277D84F90]);
  v22 = [objc_opt_self() defaultManager];
  sub_245747C20();
  v23 = sub_2457486C0();

  v75[0] = 0;
  v24 = [v22 attributesOfItemAtPath:v23 error:v75];

  v25 = v75[0];
  if (v24)
  {

    type metadata accessor for FileAttributeKey(0);
    sub_245706598();
    v21 = sub_245748660();

    v27 = v69;
    v26 = v70;
    if (!*(v21 + 16))
    {
      goto LABEL_11;
    }
  }

  else
  {
    v28 = v25;
    v29 = sub_245747BB0();

    swift_willThrow();
    sub_245747CF0();
    (*(v3 + 16))(v7, a1, v2);
    v30 = v29;
    v31 = sub_245747E50();
    v32 = sub_245748920();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v66 = a1;
      v34 = v33;
      v65 = swift_slowAlloc();
      v75[0] = v65;
      *v34 = 136315394;
      v64 = v32;
      v35 = sub_245747C20();
      v67 = v2;
      v37 = v36;
      (*(v3 + 8))(v7, v67);
      v38 = sub_24572EDDC(v35, v37, v75);

      *(v34 + 4) = v38;
      *(v34 + 12) = 2080;
      swift_getErrorValue();
      v39 = sub_245748C20();
      v41 = sub_24572EDDC(v39, v40, v75);

      *(v34 + 14) = v41;
      v2 = v67;
      _os_log_impl(&dword_2456DE000, v31, v64, "Failed to retrieve file size for item at path %s, error: %s", v34, 0x16u);
      v42 = v65;
      swift_arrayDestroy();
      MEMORY[0x245D712D0](v42, -1, -1);
      v43 = v34;
      a1 = v66;
      MEMORY[0x245D712D0](v43, -1, -1);
    }

    else
    {

      (*(v3 + 8))(v7, v2);
    }

    v27 = v69;
    v44 = v16;
    v26 = v70;
    (*(v69 + 8))(v44, v70);
    if (!*(v21 + 16))
    {
      goto LABEL_11;
    }
  }

  v45 = sub_24572F384(*MEMORY[0x277CCA1C0]);
  if ((v46 & 1) == 0)
  {
LABEL_11:

    goto LABEL_12;
  }

  sub_2456E6F9C(*(v21 + 56) + 32 * v45, v75);

  if (swift_dynamicCast())
  {
    v47 = v74;
    goto LABEL_15;
  }

LABEL_12:
  sub_245747CF0();
  v48 = sub_245747E50();
  v49 = sub_245748920();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    *v50 = 0;
    _os_log_impl(&dword_2456DE000, v48, v49, "Failed to retrieve file size from fileAttributes.", v50, 2u);
    MEMORY[0x245D712D0](v50, -1, -1);
  }

  (*(v27 + 8))(v20, v26);
  v47 = 0;
LABEL_15:
  v51 = v68;
  sub_245747CF0();
  v52 = sub_245747E50();
  v53 = sub_245748910();
  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    *v54 = 134217984;
    *(v54 + 4) = v47;
    _os_log_impl(&dword_2456DE000, v52, v53, "Video is ready. Got %llu bytes", v54, 0xCu);
    MEMORY[0x245D712D0](v54, -1, -1);
  }

  (*(v27 + 8))(v51, v26);
  v55 = sub_245748810();
  v56 = v71;
  (*(*(v55 - 8) + 56))(v71, 1, 1, v55);
  v57 = v73;
  (*(v3 + 16))(v73, a1, v2);
  v58 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v59 = (v72 + v58 + 7) & 0xFFFFFFFFFFFFFFF8;
  v60 = swift_allocObject();
  *(v60 + 16) = 0;
  *(v60 + 24) = 0;
  (*(v3 + 32))(v60 + v58, v57, v2);
  *(v60 + v59) = v47;
  sub_245736B60(0, 0, v56, &unk_24574AEF8, v60);

  v62 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_245706468(uint64_t result)
{
  if (result != 1)
  {
    return swift_unknownObjectRetain();
  }

  return result;
}

uint64_t sub_245706478(uint64_t a1)
{
  v4 = *(sub_245747C30() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2456F3D40;

  return sub_245705198(a1, v6, v7, v1 + v5, v8);
}

unint64_t sub_245706598()
{
  result = qword_27EE244C0;
  if (!qword_27EE244C0)
  {
    type metadata accessor for FileAttributeKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE244C0);
  }

  return result;
}

unint64_t sub_2457065F8(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    result = sub_24570698C();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_245706680(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_DWORD *sub_2457067BC(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(result + v9) = 0;
  }

  else if (v13)
  {
    *(result + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFF)
  {
    v18 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      *v18 = a2 & 0x7FFFFFFF;
      v18[1] = 0;
    }

    else
    {
      *v18 = a2 - 1;
    }
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

unint64_t sub_24570698C()
{
  result = qword_27EE24B08;
  if (!qword_27EE24B08)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_27EE24B08);
  }

  return result;
}

void sub_245706A00()
{
  type metadata accessor for RGBLivenessModel.PassiveConfiguration(319);
  if (v0 <= 0x3F)
  {
    sub_245706B24();
    if (v1 <= 0x3F)
    {
      sub_2457076E4(319, &qword_27EE24B28);
      if (v2 <= 0x3F)
      {
        type metadata accessor for RGBLivenessResult();
        if (v3 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_245706B24()
{
  result = qword_27EE24B20;
  if (!qword_27EE24B20)
  {
    result = MEMORY[0x277D839B0];
    atomic_store(MEMORY[0x277D839B0], &qword_27EE24B20);
  }

  return result;
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_245706B70(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
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

uint64_t sub_245706BB8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t __swift_memcpy5_1(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for RGBLivenessModel.MonitoringFinishedConfiguration(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[5])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for RGBLivenessModel.MonitoringFinishedConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 4) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_245706CF8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 72))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 40);
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

uint64_t sub_245706D54(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2;
    }
  }

  return result;
}

uint64_t sub_245706DC8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 57))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_245706E24(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RGBLivenessModel.StandbyConfiguration(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for RGBLivenessModel.StandbyConfiguration(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_24570701C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 41))
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

uint64_t sub_245707078(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void sub_245707110()
{
  sub_2457072C4(319, &qword_27EE24B40);
  if (v0 <= 0x3F)
  {
    sub_24570726C(319, &qword_27EE24B48, &qword_27EE24B50, 0x277D755B8);
    if (v1 <= 0x3F)
    {
      sub_24570726C(319, &qword_27EE24B58, &qword_27EE24B60, 0x277CFF230);
      if (v2 <= 0x3F)
      {
        sub_2457072C4(319, &qword_27EE24B68);
        if (v3 <= 0x3F)
        {
          sub_2456E5E10();
          if (v4 <= 0x3F)
          {
            sub_2457072C4(319, &qword_27EE24B70);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_24570726C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_2456E730C(255, a3, a4);
    v5 = sub_245748A40();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_2457072C4(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_245748A40();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_245707390(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2457073C8()
{
  sub_245707550();
  if (v0 <= 0x3F)
  {
    sub_245707580();
    if (v1 <= 0x3F)
    {
      sub_2457075B0();
      if (v2 <= 0x3F)
      {
        sub_2457075E0();
        if (v3 <= 0x3F)
        {
          type metadata accessor for PADLivenessGesture(319);
          if (v4 <= 0x3F)
          {
            sub_2456E730C(319, &qword_27EE24B60, 0x277CFF230);
            if (v5 <= 0x3F)
            {
              sub_245747C30();
              if (v6 <= 0x3F)
              {
                sub_245707610();
                if (v7 <= 0x3F)
                {
                  sub_24570767C();
                  if (v8 <= 0x3F)
                  {
                    sub_2457076E4(319, &qword_27EE24BB8);
                    if (v9 <= 0x3F)
                    {
                      type metadata accessor for RGBLivenessResult();
                      if (v10 <= 0x3F)
                      {
                        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

ValueMetadata *sub_245707550()
{
  result = qword_27EE24B88;
  if (!qword_27EE24B88)
  {
    result = &type metadata for RGBLivenessModel.Chute;
    atomic_store(&type metadata for RGBLivenessModel.Chute, &qword_27EE24B88);
  }

  return result;
}

uint64_t sub_245707580()
{
  result = qword_27EE24B90;
  if (!qword_27EE24B90)
  {
    result = MEMORY[0x277D839B0];
    atomic_store(MEMORY[0x277D839B0], &qword_27EE24B90);
  }

  return result;
}

uint64_t sub_2457075B0()
{
  result = qword_27EE24B98;
  if (!qword_27EE24B98)
  {
    result = MEMORY[0x277D839B0];
    atomic_store(MEMORY[0x277D839B0], &qword_27EE24B98);
  }

  return result;
}

uint64_t sub_2457075E0()
{
  result = qword_27EE24BA0;
  if (!qword_27EE24BA0)
  {
    result = MEMORY[0x277D839B0];
    atomic_store(MEMORY[0x277D839B0], &qword_27EE24BA0);
  }

  return result;
}

void sub_245707610()
{
  if (!qword_27EE24BA8)
  {
    sub_245747C30();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27EE24BA8);
    }
  }
}

void sub_24570767C()
{
  if (!qword_27EE24BB0)
  {
    type metadata accessor for PADLivenessGesture(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27EE24BB0);
    }
  }
}

void sub_2457076E4(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for LivenessAnalyticsAlertCause(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LivenessAnalyticsAlertCause(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2457078AC()
{
  result = qword_27EE24BC0;
  if (!qword_27EE24BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE24BC0);
  }

  return result;
}

unint64_t sub_245707900()
{
  v1 = type metadata accessor for RGBLivenessModel.State(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_245709900(v0, v4, type metadata accessor for RGBLivenessModel.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 0x7075746573;
  switch(EnumCaseMultiPayload)
  {
    case 1:
    case 2:
      sub_24570CE00(v4, type metadata accessor for RGBLivenessModel.State);
      result = 0xD000000000000010;
      break;
    case 3:
      sub_24570CE00(v4, type metadata accessor for RGBLivenessModel.State);
      result = 0xD000000000000012;
      break;
    case 4:
      sub_24570CE00(v4, type metadata accessor for RGBLivenessModel.State);
      result = 0x656C626D61657270;
      break;
    case 5:
      result = 0x7962646E617473;
      break;
    case 6:
      sub_24570CE00(v4, type metadata accessor for RGBLivenessModel.State);
      result = 0x5465727574736567;
      break;
    case 7:
      sub_24570CE00(v4, type metadata accessor for RGBLivenessModel.State);
      result = 0x6C6169726F747574;
      break;
    case 8:
      sub_24570CE00(v4, type metadata accessor for RGBLivenessModel.State);
      result = 0x626D616572507861;
      break;
    case 9:
      sub_24570CE00(v4, type metadata accessor for RGBLivenessModel.State);
      result = 0x69726F74696E6F6DLL;
      break;
    case 10:
      sub_24570CE00(v4, type metadata accessor for RGBLivenessModel.State);
      result = 0x4365727574736567;
      break;
    case 11:
      sub_24570CE00(v4, type metadata accessor for RGBLivenessModel.State);
      result = 0xD000000000000012;
      break;
    case 12:
      result = 0xD000000000000012;
      break;
    case 13:
    case 15:
      sub_24570CE00(v4, type metadata accessor for RGBLivenessModel.State);
      result = 0x72506569666C6573;
      break;
    case 14:
      result = 0x61436569666C6573;
      break;
    case 16:
      result = 0xD000000000000012;
      break;
    case 17:
      result = 0x64656C696166;
      break;
    case 18:
      result = 0x74726174736572;
      break;
    case 19:
      sub_24570CE00(v4, type metadata accessor for RGBLivenessModel.State);
      result = 0x64656873696E6966;
      break;
    case 20:
      return result;
    default:
      sub_24570CE00(v4, type metadata accessor for RGBLivenessModel.State);
      result = 0xD000000000000011;
      break;
  }

  return result;
}

uint64_t sub_245707D8C()
{
  v0 = sub_245707900();
  v2 = v1;
  if (v0 == sub_245707900() && v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_245748BC0();
  }

  return v4 & 1;
}

uint64_t sub_245707E1C()
{
  v1 = type metadata accessor for RGBLivenessModel.Event(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_245709900(v0, v4, type metadata accessor for RGBLivenessModel.Event);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 0x6C65636E6163;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      v24 = *v4;
      v61[0] = 0;
      v61[1] = 0xE000000000000000;
      sub_245748AA0();

      v25 = 0x80000002457583D0;
      v26 = 0xD00000000000001FLL;
      goto LABEL_38;
    case 2:
      v24 = *v4;
      v61[0] = 0;
      v61[1] = 0xE000000000000000;
      sub_245748AA0();

      v25 = 0x8000000245758340;
      v26 = 0xD000000000000022;
      goto LABEL_38;
    case 3:
      v14 = *v4;
      v61[0] = 0;
      v61[1] = 0xE000000000000000;
      sub_245748AA0();

      v61[0] = 0xD000000000000020;
      v61[1] = 0x8000000245758310;
      v60 = v14;
      sub_24570CDAC();
      v9 = sub_245748C20();
      goto LABEL_46;
    case 4:
      v24 = *v4;
      v61[0] = 0;
      v61[1] = 0xE000000000000000;
      sub_245748AA0();

      v25 = 0x80000002457582A0;
      v26 = 0xD000000000000020;
LABEL_38:
      v61[0] = v26;
      v61[1] = v25;
      v8 = v24 == 0;
      if (v24)
      {
        v9 = 1702195828;
      }

      else
      {
        v9 = 0x65736C6166;
      }

      v10 = 0xE500000000000000;
      v11 = 0xE400000000000000;
      goto LABEL_42;
    case 5:
      v38 = *v4;
      result = PADLivenessGestureToString();
      if (!result)
      {
        goto LABEL_75;
      }

      v39 = result;
      v19 = 0x8000000245758280;
      v20 = sub_245748700();
      v22 = v40;

      v23 = 0xD000000000000019;
      goto LABEL_63;
    case 6:
      v27 = *v4;
      result = PADLivenessGestureToString();
      if (!result)
      {
        goto LABEL_73;
      }

      v28 = result;
      v29 = "gestureRetried(gesture: ";
      goto LABEL_59;
    case 7:
      v54 = *v4;
      result = PADLivenessGestureToString();
      if (!result)
      {
        goto LABEL_77;
      }

      v28 = result;
      v29 = "gestureSkipped(gesture: ";
LABEL_59:
      v19 = (v29 - 32) | 0x8000000000000000;
      v20 = sub_245748700();
      v22 = v55;

      v23 = 0xD000000000000018;
      goto LABEL_63;
    case 8:
      v17 = *v4;
      result = PADLivenessGestureToString();
      if (result)
      {
        v18 = result;
        v19 = 0x8000000245758210;
        v20 = sub_245748700();
        v22 = v21;

        v23 = 0xD000000000000023;
LABEL_63:
        v61[0] = v23;
        v61[1] = v19;
        MEMORY[0x245D70540](v20, v22);
LABEL_64:

        MEMORY[0x245D70540](41, 0xE100000000000000);

        return v61[0];
      }

      else
      {
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
LABEL_78:
        __break(1u);
LABEL_79:
        __break(1u);
      }

      return result;
    case 9:
      v53 = *v4;
      v61[0] = 0;
      v61[1] = 0xE000000000000000;
      sub_245748AA0();
      MEMORY[0x245D70540](0x2874726174736572, 0xEF203A6573756163);
      v60 = v53;
      goto LABEL_55;
    case 10:
      v13 = *v4;
      v61[0] = 0;
      v61[1] = 0xE000000000000000;
      sub_245748AA0();
      MEMORY[0x245D70540](0xD000000000000015, 0x80000002457581F0);
      v60 = v13;
LABEL_55:
      sub_245748B50();
      goto LABEL_56;
    case 11:
      sub_24570CE00(v4, type metadata accessor for RGBLivenessModel.Event);
      v16 = 0x43656D617266;
      return v16 & 0xFFFFFFFFFFFFLL | 0x7061000000000000;
    case 12:
      sub_24570CE00(v4, type metadata accessor for RGBLivenessModel.Event);
      return 0x61436569666C6573;
    case 13:
      sub_24570CE00(v4, type metadata accessor for RGBLivenessModel.Event);
      return 0xD000000000000019;
    case 14:
      sub_24570CE00(v4, type metadata accessor for RGBLivenessModel.Event);
      v16 = 0x436F65646976;
      return v16 & 0xFFFFFFFFFFFFLL | 0x7061000000000000;
    case 15:
      v12 = sub_245747C30();
      (*(*(v12 - 8) + 8))(v4, v12);
      return 0xD000000000000011;
    case 16:
      v30 = *v4;
      result = PADLivenessGestureToString();
      if (!result)
      {
        goto LABEL_74;
      }

      v31 = result;
      v19 = 0x8000000245758130;
      v20 = sub_245748700();
      v22 = v32;

      v23 = 0xD00000000000001DLL;
      goto LABEL_63;
    case 17:
      v41 = *v4;
      v42 = *(v4 + 1);
      result = PADLivenessGestureToString();
      if (!result)
      {
        goto LABEL_76;
      }

      v43 = result;
      v44 = sub_245748700();
      v46 = v45;

      v61[0] = 0xD000000000000021;
      v61[1] = 0x8000000245758100;
      MEMORY[0x245D70540](v44, v46);

      MEMORY[0x245D70540](0x203A7478656E202CLL, 0xE800000000000000);

      v47 = v61[0];
      v48 = v61[1];
      result = PADLivenessGestureToString();
      if (!result)
      {
        goto LABEL_79;
      }

      v49 = result;
      v50 = sub_245748700();
      v52 = v51;

      v61[0] = v47;
      v61[1] = v48;

      MEMORY[0x245D70540](v50, v52);

      goto LABEL_64;
    case 18:
      v56 = *v4;
      result = PADLivenessGestureToString();
      if (!result)
      {
        goto LABEL_78;
      }

      v57 = result;
      v19 = 0x80000002457580D0;
      v20 = sub_245748700();
      v22 = v58;

      v23 = 0xD000000000000022;
      goto LABEL_63;
    case 19:
      v33 = *v4;
      v34 = v4[1];
      v61[0] = 0;
      v61[1] = 0xE000000000000000;
      sub_245748AA0();
      MEMORY[0x245D70540](0xD00000000000002BLL, 0x8000000245758080);
      if (v33)
      {
        v35 = 1702195828;
      }

      else
      {
        v35 = 0x65736C6166;
      }

      if (v33)
      {
        v36 = 0xE400000000000000;
      }

      else
      {
        v36 = 0xE500000000000000;
      }

      MEMORY[0x245D70540](v35, v36);

      MEMORY[0x245D70540](0xD000000000000016, 0x80000002457580B0);
      if (v34)
      {
        v9 = 1702195828;
      }

      else
      {
        v9 = 0x65736C6166;
      }

      if (v34)
      {
        v37 = 0xE400000000000000;
      }

      else
      {
        v37 = 0xE500000000000000;
      }

      goto LABEL_45;
    case 20:
      sub_24570CE00(v4, type metadata accessor for RGBLivenessModel.Event);
      return 0xD000000000000013;
    case 21:
      return result;
    case 22:
    case 29:
      return 0xD000000000000013;
    case 23:
      return 0xD000000000000012;
    case 24:
      return 0xD000000000000015;
    case 25:
      return 0xD00000000000001ALL;
    case 26:
      return 0xD000000000000019;
    case 27:
      return 0xD000000000000019;
    case 28:
      return 0xD000000000000010;
    case 30:
      return 0xD000000000000018;
    case 31:
      return 0x6544686374697473;
    default:
      v7 = *v4;
      v61[0] = 0;
      v61[1] = 0xE000000000000000;
      sub_245748AA0();

      strcpy(v61, "start(chute: ");
      HIWORD(v61[1]) = -4864;
      v8 = v7 == 0;
      if (v7)
      {
        v9 = 0x65766973736170;
      }

      else
      {
        v9 = 0x657669746361;
      }

      v10 = 0xE600000000000000;
      v11 = 0xE700000000000000;
LABEL_42:
      if (v8)
      {
        v37 = v10;
      }

      else
      {
        v37 = v11;
      }

LABEL_45:
      v15 = v37;
LABEL_46:
      MEMORY[0x245D70540](v9, v15);

LABEL_56:
      MEMORY[0x245D70540](41, 0xE100000000000000);
      return v61[0];
  }
}

uint64_t sub_2457087C8()
{
  v1 = *v0;
  sub_245748C80();
  MEMORY[0x245D70A70](v1);
  return sub_245748CB0();
}

uint64_t sub_24570883C()
{
  v1 = *v0;
  sub_245748C80();
  MEMORY[0x245D70A70](v1);
  return sub_245748CB0();
}

uint64_t sub_245708880()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE24BC8, &qword_24574CAB0);
  __swift_allocate_value_buffer(v0, qword_27EE258E8);
  v1 = __swift_project_value_buffer(v0, qword_27EE258E8);
  type metadata accessor for RGBLivenessModel.State(0);
  result = swift_storeEnumTagMultiPayload();
  v3 = (v1 + *(v0 + 36));
  *v3 = sub_2457089A4;
  v3[1] = 0;
  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_2457089A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v109 = a1;
  v111 = a3;
  v4 = type metadata accessor for RGBLivenessModel.PassiveConfiguration(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v107 = &v106 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  *&v108 = &v106 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v106 = &v106 - v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v106 - v12;
  *&v112 = type metadata accessor for RGBLivenessModel.State(0);
  v14 = *(*(v112 - 8) + 64);
  MEMORY[0x28223BE20](v112);
  v16 = &v106 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for RGBLivenessModel.Event(0);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = (&v106 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v106 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v106 - v26;
  v28 = MEMORY[0x28223BE20](v25);
  v30 = (&v106 - v29);
  MEMORY[0x28223BE20](v28);
  v32 = &v106 - v31;
  v110 = a2;
  sub_245709900(a2, &v106 - v31, type metadata accessor for RGBLivenessModel.Event);
  v120 = v32;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 3)
  {
    v34 = *v120;
LABEL_6:
    sub_24570CDAC();
    swift_allocError();
    *v37 = v34;
    return swift_willThrow();
  }

  if (EnumCaseMultiPayload == 10)
  {
    v34 = *v120;
    if (((1 << *v120) & 0x33C) != 0)
    {
      v35 = v111;
      *v111 = v34;
      v35[1] = 0;
      return swift_storeEnumTagMultiPayload();
    }

    goto LABEL_6;
  }

  v38 = v109;
  sub_245709900(v109, v16, type metadata accessor for RGBLivenessModel.State);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v65 = v106;
      sub_24570CE90(v16, v106, type metadata accessor for RGBLivenessModel.PassiveConfiguration);
      v39 = v110;
      v66 = v113;
      sub_245709F44(v110, v65, v111);
      goto LABEL_37;
    case 2u:
      v65 = v108;
      sub_24570CE90(v16, v108, type metadata accessor for RGBLivenessModel.PassiveConfiguration);
      v39 = v110;
      v66 = v113;
      sub_24570A420(v110, v65, v111);
      goto LABEL_37;
    case 3u:
      v65 = v107;
      sub_24570CE90(v16, v107, type metadata accessor for RGBLivenessModel.PassiveConfiguration);
      v39 = v110;
      v66 = v113;
      sub_24570AAF0(v110, v65, v111);
LABEL_37:
      v41 = v66;
      if (v66)
      {
        v42 = type metadata accessor for RGBLivenessModel.PassiveConfiguration;
        v43 = v65;
        goto LABEL_70;
      }

      v75 = v65;
      goto LABEL_93;
    case 4u:
      v54 = v16[40];
      v118[0] = *v16;
      v108 = *(v16 + 8);
      *&v118[8] = v108;
      v112 = *(v16 + 24);
      *&v118[24] = v112;
      v118[40] = v54;
      v39 = v110;
      v55 = v113;
      sub_24570AD60(v110, v118, v111);
      goto LABEL_54;
    case 5u:
      if (v16[1])
      {
        v80 = 256;
      }

      else
      {
        v80 = 0;
      }

      v39 = v110;
      v81 = v113;
      sub_24570AF54(v110, v80 | *v16, v111);
      v41 = v81;
      if (!v81)
      {
        goto LABEL_94;
      }

      goto LABEL_71;
    case 6u:
      v83 = *(v16 + 1);
      *v118 = *v16;
      *&v118[16] = v83;
      v85 = *v16;
      v84 = *(v16 + 1);
      *&v118[32] = *(v16 + 2);
      *&v118[41] = *(v16 + 41);
      v114 = v85;
      v115 = v84;
      *v116 = *(v16 + 2);
      *&v116[9] = *(v16 + 41);
      v39 = v110;
      v74 = v113;
      sub_24570B130(v110, &v114, v111);
      goto LABEL_66;
    case 7u:
      v71 = *(v16 + 1);
      *v118 = *v16;
      *&v118[16] = v71;
      v73 = *v16;
      v72 = *(v16 + 1);
      *&v118[32] = *(v16 + 2);
      *&v118[41] = *(v16 + 41);
      v114 = v73;
      v115 = v72;
      *v116 = *(v16 + 2);
      *&v116[9] = *(v16 + 41);
      v39 = v110;
      v74 = v113;
      sub_24570B4F4(v110, &v114, v111);
      goto LABEL_66;
    case 8u:
      v91 = *(v16 + 1);
      *v118 = *v16;
      *&v118[16] = v91;
      v93 = *v16;
      v92 = *(v16 + 1);
      *&v118[32] = *(v16 + 2);
      *&v118[41] = *(v16 + 41);
      v114 = v93;
      v115 = v92;
      *v116 = *(v16 + 2);
      *&v116[9] = *(v16 + 41);
      v39 = v110;
      v74 = v113;
      sub_24570B76C(v110, &v114, v111);
LABEL_66:
      v41 = v74;
      if (v74)
      {
        sub_2457028DC(v118);
        goto LABEL_71;
      }

      sub_2457028DC(v118);
      goto LABEL_94;
    case 9u:
      v61 = *(v16 + 1);
      v62 = *(v16 + 3);
      *&v118[32] = *(v16 + 2);
      *&v118[48] = v62;
      v63 = *(v16 + 1);
      *v118 = *v16;
      *&v118[16] = v63;
      v64 = *(v16 + 3);
      *v116 = *&v118[32];
      *&v116[16] = v64;
      v119 = *(v16 + 8);
      v117 = *(v16 + 8);
      v114 = *v118;
      v115 = v61;
      v39 = v110;
      v53 = v113;
      sub_24570BA14(v110, &v114, v111);
      goto LABEL_62;
    case 0xAu:
      v87 = *(v16 + 1);
      v88 = *(v16 + 3);
      *&v118[32] = *(v16 + 2);
      *&v118[48] = v88;
      v89 = *(v16 + 1);
      *v118 = *v16;
      *&v118[16] = v89;
      v90 = *(v16 + 3);
      *v116 = *&v118[32];
      *&v116[16] = v90;
      v119 = *(v16 + 8);
      v117 = *(v16 + 8);
      v114 = *v118;
      v115 = v87;
      v39 = v110;
      v53 = v113;
      sub_24570BDC8(v110, &v114, v111);
      goto LABEL_62;
    case 0xBu:
      v49 = *(v16 + 1);
      v50 = *(v16 + 3);
      *&v118[32] = *(v16 + 2);
      *&v118[48] = v50;
      v51 = *(v16 + 1);
      *v118 = *v16;
      *&v118[16] = v51;
      v52 = *(v16 + 3);
      *v116 = *&v118[32];
      *&v116[16] = v52;
      v119 = *(v16 + 8);
      v117 = *(v16 + 8);
      v114 = *v118;
      v115 = v49;
      v39 = v110;
      v53 = v113;
      sub_24570C02C(v110, &v114, v111);
LABEL_62:
      v41 = v53;
      if (v53)
      {
        sub_245702888(v118);
        goto LABEL_71;
      }

      sub_245702888(v118);
      goto LABEL_94;
    case 0xCu:
      v56 = 0x100000000;
      if (!v16[4])
      {
        v56 = 0;
      }

      v57 = 0x1000000;
      if (!v16[3])
      {
        v57 = 0;
      }

      v58 = 0x10000;
      if (!v16[2])
      {
        v58 = 0;
      }

      v59 = 256;
      if (!v16[1])
      {
        v59 = 0;
      }

      v39 = v110;
      v60 = v113;
      sub_24570C2D0(v110, v59 | *v16 | v58 | v57 | v56, v111);
      v41 = v60;
      if (!v60)
      {
        goto LABEL_94;
      }

      goto LABEL_71;
    case 0xDu:
      v82 = v16[40];
      v118[0] = *v16;
      v108 = *(v16 + 8);
      *&v118[8] = v108;
      v112 = *(v16 + 24);
      *&v118[24] = v112;
      v118[40] = v82;
      v39 = v110;
      v55 = v113;
      sub_24570C594(v110, v118, v111);
LABEL_54:
      v41 = v55;
      if (v55)
      {

        goto LABEL_71;
      }

      goto LABEL_94;
    case 0xEu:
      v39 = v110;
      sub_245709900(v110, v30, type metadata accessor for RGBLivenessModel.Event);
      v45 = swift_getEnumCaseMultiPayload();
      if (v45 <= 12)
      {
        if (v45 != 11)
        {
          v46 = v120;
          if (v45 == 12)
          {
            v47 = v30[1];
            v48 = v111;
            *v111 = *v30;
            v48[1] = v47;
            v48[2] = v30[2];
            *(v48 + 41) = *(v30 + 41);
            goto LABEL_90;
          }

          goto LABEL_83;
        }

        goto LABEL_88;
      }

      if (v45 == 13)
      {
LABEL_88:
        sub_24570CE00(v30, type metadata accessor for RGBLivenessModel.Event);
        v46 = v120;
        goto LABEL_89;
      }

      v46 = v120;
      if (v45 != 30)
      {
LABEL_83:
        sub_24570CDAC();
        v41 = swift_allocError();
        *v98 = 6;
        swift_willThrow();
        sub_24570CE00(v30, type metadata accessor for RGBLivenessModel.Event);
        goto LABEL_72;
      }

LABEL_89:
      *v111 = 1;
LABEL_90:
      swift_storeEnumTagMultiPayload();
      return sub_24570CE00(v46, type metadata accessor for RGBLivenessModel.Event);
    case 0xFu:
      v67 = *(v16 + 1);
      *v118 = *v16;
      *&v118[16] = v67;
      v69 = *v16;
      v68 = *(v16 + 1);
      *&v118[32] = *(v16 + 2);
      *&v118[41] = *(v16 + 41);
      v114 = v69;
      v115 = v68;
      *v116 = *(v16 + 2);
      *&v116[9] = *(v16 + 41);
      v39 = v110;
      v70 = v113;
      sub_24570C7A8(v110, &v114, v111);
      v41 = v70;
      if (v70)
      {
        sub_24570CE60(v118);
        goto LABEL_71;
      }

      sub_24570CE60(v118);
      goto LABEL_94;
    case 0x10u:
      v39 = v110;
      sub_245709900(v110, v27, type metadata accessor for RGBLivenessModel.Event);
      v44 = swift_getEnumCaseMultiPayload();
      if (v44 > 19)
      {
        if (v44 == 30)
        {
          goto LABEL_80;
        }

        if (v44 == 20)
        {
          sub_24570CE90(v27, v111, type metadata accessor for RGBLivenessResult);
          swift_storeEnumTagMultiPayload();
          goto LABEL_94;
        }
      }

      else if (v44 == 11 || v44 == 13)
      {
        sub_24570CE00(v27, type metadata accessor for RGBLivenessModel.Event);
LABEL_80:
        *v111 = 1;
        swift_storeEnumTagMultiPayload();
        goto LABEL_94;
      }

      sub_24570CDAC();
      v41 = swift_allocError();
      *v101 = 6;
      swift_willThrow();
      v42 = type metadata accessor for RGBLivenessModel.Event;
      v43 = v27;
LABEL_70:
      sub_24570CE00(v43, v42);
LABEL_71:
      v46 = v120;
      goto LABEL_72;
    case 0x11u:
      v76 = *v16;
      sub_245709900(v110, v24, type metadata accessor for RGBLivenessModel.Event);
      v77 = swift_getEnumCaseMultiPayload();
      if (v77 > 0x1E)
      {
        goto LABEL_100;
      }

      if (((1 << v77) & 0x400A0010) != 0)
      {
        goto LABEL_44;
      }

      if (((1 << v77) & 0x2800) != 0)
      {
        sub_24570CE00(v24, type metadata accessor for RGBLivenessModel.Event);
LABEL_44:
        v78 = v111;
        *v111 = v76;
        v78[1] = 1;
        goto LABEL_45;
      }

      if (v77 == 22)
      {
        *v111 = 0;
LABEL_45:
        swift_storeEnumTagMultiPayload();
        goto LABEL_94;
      }

LABEL_100:
      sub_24570CDAC();
      v41 = swift_allocError();
      *v105 = 6;
      swift_willThrow();
      sub_24570CE00(v24, type metadata accessor for RGBLivenessModel.Event);
      v46 = v120;
      v39 = v110;
      goto LABEL_72;
    case 0x12u:
      v39 = v110;
      sub_245709900(v110, v21, type metadata accessor for RGBLivenessModel.Event);
      v86 = swift_getEnumCaseMultiPayload();
      if (v86 > 15)
      {
        v46 = v120;
        if (v86 == 30)
        {
          goto LABEL_87;
        }

        if (v86 == 16)
        {
          v99 = *v21;
          v100 = v111;
          *v111 = 0;
          *(v100 + 1) = v99;
          *(v100 + 1) = 0u;
          *(v100 + 2) = 0u;
          *(v100 + 41) = 0u;
          goto LABEL_90;
        }
      }

      else
      {
        v46 = v120;
        if (v86 == 11 || v86 == 13)
        {
          sub_24570CE00(v21, type metadata accessor for RGBLivenessModel.Event);
LABEL_87:
          *v111 = 1;
          goto LABEL_90;
        }
      }

      sub_24570CDAC();
      v102 = swift_allocError();
      *v103 = 6;
      swift_willThrow();
      v104 = v21;
      v41 = v102;
      sub_24570CE00(v104, type metadata accessor for RGBLivenessModel.Event);
LABEL_72:
      *v118 = v41;
      v95 = v41;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE244D8, &qword_24574AA50);
      if (swift_dynamicCast())
      {
        if (v114 == 6)
        {

          sub_24570CA5C(v39, v38);
          sub_24570CDAC();
          swift_allocError();
          *v96 = 6;
          swift_willThrow();
        }
      }

      v97 = v46;
      return sub_24570CE00(v97, type metadata accessor for RGBLivenessModel.Event);
    case 0x13u:
      v39 = v110;
      sub_24570CA5C(v110, v38);
      sub_24570CDAC();
      v41 = swift_allocError();
      *v94 = 6;
      swift_willThrow();
      v42 = type metadata accessor for RGBLivenessModel.State;
      v43 = v16;
      goto LABEL_70;
    case 0x14u:
      v39 = v110;
      v79 = v113;
      sub_245709968(v110, v111);
      v41 = v79;
      if (!v79)
      {
        goto LABEL_94;
      }

      goto LABEL_71;
    default:
      sub_24570CE90(v16, v13, type metadata accessor for RGBLivenessModel.PassiveConfiguration);
      v39 = v110;
      v40 = v113;
      sub_245709B60(v110, v13, v111);
      v41 = v40;
      if (v40)
      {
        v42 = type metadata accessor for RGBLivenessModel.PassiveConfiguration;
        v43 = v13;
        goto LABEL_70;
      }

      v75 = v13;
LABEL_93:
      sub_24570CE00(v75, type metadata accessor for RGBLivenessModel.PassiveConfiguration);
LABEL_94:
      v97 = v120;
      return sub_24570CE00(v97, type metadata accessor for RGBLivenessModel.Event);
  }
}

uint64_t sub_245709900(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_245709968@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for RGBLivenessModel.Event(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_245709900(a1, v7, type metadata accessor for RGBLivenessModel.Event);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_24570CDAC();
    swift_allocError();
    *v8 = 6;
    swift_willThrow();
    return sub_24570CE00(v7, type metadata accessor for RGBLivenessModel.Event);
  }

  else
  {
    if (*v7)
    {
      v10 = type metadata accessor for RGBLivenessModel.PassiveConfiguration(0);
      v11 = v10[10];
      v12 = sub_245747C30();
      (*(*(v12 - 8) + 56))(a2 + v11, 1, 1, v12);
      *a2 = 0;
      *(a2 + 8) = 0;
      *(a2 + 16) = 1;
      *(a2 + 24) = 0u;
      *(a2 + 40) = 0u;
      *(a2 + 56) = 0u;
      *(a2 + 72) = 0u;
      *(a2 + v10[11]) = 0;
      *(a2 + v10[12]) = 0;
      *(a2 + v10[13]) = 0;
      *(a2 + v10[14]) = 0;
      *(a2 + v10[15]) = 2;
      *(a2 + v10[16]) = 0;
    }

    else
    {
      *a2 = 0;
      *(a2 + 8) = 0u;
      *(a2 + 24) = 0u;
      *(a2 + 40) = 2;
    }

    type metadata accessor for RGBLivenessModel.State(0);
    return swift_storeEnumTagMultiPayload();
  }
}

uint64_t sub_245709B60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v30 = a3;
  *&v32 = a1;
  v33 = type metadata accessor for RGBLivenessModel.Event(0);
  v4 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for RGBLivenessModel.PassiveConfiguration(0);
  v8 = (v7 - 8);
  v9 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a2 + 8);
  v13 = *(a2 + 16);
  v15 = *(a2 + 40);
  v14 = *(a2 + 48);
  v31 = *(a2 + 56);
  v16 = v8[12];
  v17 = sub_245747C30();
  (*(*(v17 - 8) + 56))(&v11[v16], 1, 1, v17);
  v18 = *(a2 + v8[13]);
  *v11 = 1;
  *(v11 + 1) = v12;
  v11[16] = v13;
  *(v11 + 5) = v15;
  *(v11 + 3) = 0;
  *(v11 + 4) = 0;
  v20 = v31;
  v19 = v32;
  *(v11 + 6) = v14;
  *(v11 + 7) = v20;
  *(v11 + 9) = 0;
  *(v11 + 10) = 0;
  *(v11 + 8) = 0;
  v21 = v8[13];
  v11[v21] = v18;
  v11[v8[14]] = 0;
  v11[v8[15]] = 0;
  v11[v8[16]] = 0;
  v22 = v8[17];
  v11[v22] = 2;
  v11[v8[18]] = 0;
  sub_245709900(v19, v6, type metadata accessor for RGBLivenessModel.Event);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 21)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v11[v22] = *v6;
      goto LABEL_19;
    }

    if (EnumCaseMultiPayload == 11)
    {
      *(v11 + 4) = *v6;
      goto LABEL_19;
    }

    if (EnumCaseMultiPayload != 13)
    {
LABEL_15:
      sub_24570CDAC();
      swift_allocError();
      *v27 = 6;
      swift_willThrow();

      sub_24570CE00(v6, type metadata accessor for RGBLivenessModel.Event);
      return sub_24570CE00(v11, type metadata accessor for RGBLivenessModel.PassiveConfiguration);
    }

    v32 = *v6;
    v24 = *(v6 + 2);
    v25 = *(v11 + 6);

    *(v11 + 40) = v32;
    *(v11 + 7) = v24;
  }

  else
  {
    if (EnumCaseMultiPayload <= 28)
    {
      if (EnumCaseMultiPayload == 22)
      {
        *v11 = 0;
        sub_245709900(v11, v30, type metadata accessor for RGBLivenessModel.PassiveConfiguration);
        type metadata accessor for RGBLivenessModel.State(0);
LABEL_20:
        swift_storeEnumTagMultiPayload();

        return sub_24570CE00(v11, type metadata accessor for RGBLivenessModel.PassiveConfiguration);
      }

      if (EnumCaseMultiPayload == 28)
      {
        v11[v21] = 1;
LABEL_19:
        sub_245709900(v11, v30, type metadata accessor for RGBLivenessModel.PassiveConfiguration);
        type metadata accessor for RGBLivenessModel.State(0);
        goto LABEL_20;
      }

      goto LABEL_15;
    }

    if (EnumCaseMultiPayload == 29)
    {
      v11[v21] = 0;
      goto LABEL_19;
    }

    if (EnumCaseMultiPayload != 30)
    {
      goto LABEL_15;
    }

    v26 = *(v11 + 6);

    *(v11 + 5) = 0;
    *(v11 + 6) = 0;
    *(v11 + 7) = 0;
  }

  sub_245709900(v11, v30, type metadata accessor for RGBLivenessModel.PassiveConfiguration);
  type metadata accessor for RGBLivenessModel.State(0);
  swift_storeEnumTagMultiPayload();
  return sub_24570CE00(v11, type metadata accessor for RGBLivenessModel.PassiveConfiguration);
}

uint64_t sub_245709F44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v42 = a3;
  *&v44 = a1;
  v46 = type metadata accessor for RGBLivenessModel.Event(0);
  v4 = *(*(v46 - 8) + 64);
  MEMORY[0x28223BE20](v46);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for RGBLivenessModel.PassiveConfiguration(0);
  v8 = (v7 - 8);
  v9 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a2 + 8);
  v13 = *(a2 + 16);
  v14 = *(a2 + 24);
  v16 = *(a2 + 72);
  v15 = *(a2 + 80);
  v17 = v8[12];
  v43 = *(a2 + 56);
  v45 = *(a2 + 40);
  v41 = v17;
  sub_2456E7040(a2 + v17, &v11[v17]);
  *(v11 + 40) = v45;
  v40 = v11 + 40;
  v18 = *(a2 + v8[16]);
  *v11 = 1;
  *(v11 + 1) = v12;
  v11[16] = v13;
  v19 = v6;
  *(v11 + 3) = v14;
  *(v11 + 4) = 0;
  *(v11 + 56) = v43;
  *(v11 + 9) = v16;
  *(v11 + 10) = v15;
  v11[v8[13]] = 0;
  v11[v8[14]] = 0;
  v11[v8[15]] = 0;
  v20 = v8[16];
  v11[v20] = v18;
  v11[v8[17]] = 2;
  v11[v8[18]] = 0;
  sub_245709900(v44, v6, type metadata accessor for RGBLivenessModel.Event);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 12)
  {
    if (EnumCaseMultiPayload == 11)
    {
      *(v11 + 4) = *v6;
      sub_245709900(v11, v42, type metadata accessor for RGBLivenessModel.PassiveConfiguration);
      type metadata accessor for RGBLivenessModel.State(0);
      swift_storeEnumTagMultiPayload();
      v37 = v14;

      return sub_24570CE00(v11, type metadata accessor for RGBLivenessModel.PassiveConfiguration);
    }

    if (EnumCaseMultiPayload == 12)
    {
      v25 = *(v6 + 1);
      v44 = *(v6 + 1);
      v26 = *(v6 + 4);
      *(v11 + 1) = *(v6 + 6);
      v11[16] = 0;
      *(v11 + 3) = v25;
      v27 = *(v11 + 9);

      *(v11 + 4) = v44;
      *(v11 + 10) = v26;
      goto LABEL_10;
    }

LABEL_15:
    sub_24570CDAC();
    swift_allocError();
    *v38 = 6;
    swift_willThrow();
    v39 = v14;

    sub_24570CE00(v6, type metadata accessor for RGBLivenessModel.Event);
    return sub_24570CE00(v11, type metadata accessor for RGBLivenessModel.PassiveConfiguration);
  }

  if (EnumCaseMultiPayload == 13)
  {
    v44 = *v6;
    v28 = *(v6 + 2);
    v29 = *(v11 + 6);

    v30 = v14;

    *(v11 + 40) = v44;
    *(v11 + 7) = v28;
    goto LABEL_10;
  }

  if (EnumCaseMultiPayload == 15)
  {
    v31 = v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE24A18, &qword_24574AC48) + 48)];
    v32 = v14;

    v33 = v41;
    sub_2456E70B0(&v11[v41]);
    v34 = sub_245747C30();
    v35 = *(v34 - 8);
    (*(v35 + 32))(&v11[v33], v19, v34);
    (*(v35 + 56))(&v11[v33], 0, 1, v34);
    v11[v20] = v31;
    *v11 = 0;
    sub_245709900(v11, v42, type metadata accessor for RGBLivenessModel.PassiveConfiguration);
    type metadata accessor for RGBLivenessModel.State(0);
    goto LABEL_12;
  }

  if (EnumCaseMultiPayload != 30)
  {
    goto LABEL_15;
  }

  v22 = *(v11 + 6);

  v23 = v14;

  v24 = v40;
  *v40 = 0;
  v24[1] = 0;
  v24[2] = 0;
LABEL_10:
  sub_245709900(v11, v42, type metadata accessor for RGBLivenessModel.PassiveConfiguration);
  type metadata accessor for RGBLivenessModel.State(0);
LABEL_12:
  swift_storeEnumTagMultiPayload();
  return sub_24570CE00(v11, type metadata accessor for RGBLivenessModel.PassiveConfiguration);
}

id sub_24570A420@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v63 = a3;
  v66 = a1;
  v4 = sub_245747E60();
  v61 = *(v4 - 8);
  v62 = v4;
  v5 = *(v61 + 64);
  MEMORY[0x28223BE20](v4);
  v60 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for RGBLivenessModel.Event(0);
  v7 = *(*(v65 - 8) + 64);
  MEMORY[0x28223BE20](v65);
  v64 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for RGBLivenessModel.PassiveConfiguration(0);
  v10 = *(*(v9 - 1) + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v59 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v56 - v14;
  v16 = *(a2 + 8);
  v17 = *(a2 + 16);
  v18 = *(a2 + 24);
  v19 = *(a2 + 64);
  v20 = *(a2 + 72);
  v21 = *(a2 + 80);
  sub_2456E7040(a2 + *(v13 + 40), &v56 + *(v13 + 40) - v14);
  v22 = *(a2 + v9[12]);
  v23 = *(a2 + v9[14]);
  v24 = *(a2 + v9[16]);
  *v15 = 1;
  v57 = v16;
  *(v15 + 1) = v16;
  v58 = v17;
  v15[16] = v17;
  v25 = v23;
  v67 = v18;
  *(v15 + 3) = v18;
  v26 = v20;
  v27 = v64;
  *(v15 + 2) = 0u;
  *(v15 + 3) = 0u;
  *(v15 + 8) = v19;
  *(v15 + 9) = v26;
  *(v15 + 10) = v21;
  v15[v9[11]] = 0;
  v28 = v9[12];
  v15[v28] = v22;
  v15[v9[13]] = 0;
  v15[v9[14]] = v23;
  v15[v9[15]] = 2;
  v29 = v9[16];
  v15[v29] = v24;
  sub_245709900(v66, v27, type metadata accessor for RGBLivenessModel.Event);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 23)
  {
    v32 = v25;
    v33 = v60;
    v34 = v61;
    v35 = v62;
    if (EnumCaseMultiPayload > 12)
    {
      if (EnumCaseMultiPayload == 13)
      {
        goto LABEL_22;
      }

      if (EnumCaseMultiPayload != 22)
      {
        goto LABEL_30;
      }

      if (!v32)
      {
        v36 = *(a2 + 72);
        if (!v36)
        {
          goto LABEL_38;
        }

        if (!((v36 & 0x2000000000000000) != 0 ? HIBYTE(v36) & 0xF : *(a2 + 64) & 0xFFFFFFFFFFFFLL))
        {
          goto LABEL_38;
        }
      }
    }

    else
    {
      if (EnumCaseMultiPayload != 1)
      {
        if (EnumCaseMultiPayload != 11)
        {
          goto LABEL_30;
        }

LABEL_22:

        v38 = v67;
        sub_24570CE00(v27, type metadata accessor for RGBLivenessModel.Event);
        goto LABEL_23;
      }

      if (v32)
      {

        v39 = v67;
        v40 = v33;
        sub_245747CF0();
        v41 = sub_245747E50();
        v42 = sub_245748920();
        if (os_log_type_enabled(v41, v42))
        {
          v43 = swift_slowAlloc();
          *v43 = 0;
          _os_log_impl(&dword_2456DE000, v41, v42, "LivePhoto was invalid, user should only be allowed to retake.", v43, 2u);
          MEMORY[0x245D712D0](v43, -1, -1);
        }

        (*(v34 + 8))(v40, v35);
        sub_24570CDAC();
        swift_allocError();
        *v44 = 6;
        swift_willThrow();
        v45 = type metadata accessor for RGBLivenessModel.PassiveConfiguration;
        v46 = v15;
        return sub_24570CE00(v46, v45);
      }

      v50 = *(a2 + 72);
      if (v50)
      {
        if ((v50 & 0x2000000000000000) != 0 ? HIBYTE(v50) & 0xF : *(a2 + 64) & 0xFFFFFFFFFFFFLL)
        {
          if ((*(a2 + 81) & 1) == 0)
          {
            goto LABEL_38;
          }

          v15[v29] = 1;
LABEL_29:
          sub_24570CE90(v15, v63, type metadata accessor for RGBLivenessModel.PassiveConfiguration);
          type metadata accessor for RGBLivenessModel.State(0);
LABEL_39:
          swift_storeEnumTagMultiPayload();

          return v67;
        }
      }
    }

LABEL_40:

    v52 = v67;
    sub_24570CE00(v15, type metadata accessor for RGBLivenessModel.PassiveConfiguration);
    v53 = v9[10];
    v54 = sub_245747C30();
    v55 = v59;
    (*(*(v54 - 8) + 56))(&v59[v53], 1, 1, v54);
    *v55 = 0;
    *(v55 + 8) = v57;
    *(v55 + 16) = v58;
    *(v55 + 40) = 0u;
    *(v55 + 56) = 0u;
    *(v55 + 72) = 0u;
    *(v55 + 24) = 0u;
    *(v55 + v9[11]) = 0;
    *(v55 + v9[12]) = 0;
    *(v55 + v9[13]) = 1;
    *(v55 + v9[14]) = 0;
    *(v55 + v9[15]) = 2;
    *(v55 + v9[16]) = 0;
    sub_24570CE90(v55, v63, type metadata accessor for RGBLivenessModel.PassiveConfiguration);
    type metadata accessor for RGBLivenessModel.State(0);
    return swift_storeEnumTagMultiPayload();
  }

  if (EnumCaseMultiPayload <= 25)
  {
    v15[v28] = EnumCaseMultiPayload == 24;
    goto LABEL_29;
  }

  if (EnumCaseMultiPayload == 26)
  {
LABEL_38:
    *v15 = 0;
    sub_24570CE90(v15, v63, type metadata accessor for RGBLivenessModel.PassiveConfiguration);
    type metadata accessor for RGBLivenessModel.State(0);
    goto LABEL_39;
  }

  if (EnumCaseMultiPayload == 27)
  {
    goto LABEL_40;
  }

  if (EnumCaseMultiPayload != 30)
  {
LABEL_30:
    sub_24570CDAC();
    swift_allocError();
    *v47 = 6;
    swift_willThrow();

    v48 = v67;
    sub_24570CE00(v15, type metadata accessor for RGBLivenessModel.PassiveConfiguration);
    v45 = type metadata accessor for RGBLivenessModel.Event;
    v46 = v27;
    return sub_24570CE00(v46, v45);
  }

  v31 = v67;
LABEL_23:
  sub_24570CE90(v15, v63, type metadata accessor for RGBLivenessModel.PassiveConfiguration);
  type metadata accessor for RGBLivenessModel.State(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_24570AAF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for RGBLivenessModel.PassiveConfiguration(0);
  v7 = *(*(v6 - 1) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for RGBLivenessModel.Event(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_245709900(a1, v13, type metadata accessor for RGBLivenessModel.Event);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 19)
  {
    if (EnumCaseMultiPayload != 11 && EnumCaseMultiPayload != 13)
    {
      goto LABEL_13;
    }

    sub_24570CE00(v13, type metadata accessor for RGBLivenessModel.Event);
    goto LABEL_11;
  }

  if (EnumCaseMultiPayload == 30)
  {
LABEL_11:
    sub_2456E7040(a2 + v6[10], &v9[v6[10]]);
    *v9 = 1;
    *(v9 + 1) = 0;
    v9[16] = 1;
    *(v9 + 40) = 0u;
    *(v9 + 56) = 0u;
    *(v9 + 72) = 0u;
    *(v9 + 24) = 0u;
    v9[v6[11]] = 0;
    v9[v6[12]] = 0;
    v9[v6[13]] = 0;
    v9[v6[14]] = 0;
    v9[v6[15]] = 2;
    v9[v6[16]] = 0;
    sub_24570CE90(v9, a3, type metadata accessor for RGBLivenessModel.PassiveConfiguration);
    goto LABEL_12;
  }

  if (EnumCaseMultiPayload == 20)
  {
    sub_24570CE90(v13, a3, type metadata accessor for RGBLivenessResult);
LABEL_12:
    type metadata accessor for RGBLivenessModel.State(0);
    return swift_storeEnumTagMultiPayload();
  }

LABEL_13:
  sub_24570CDAC();
  swift_allocError();
  *v17 = 6;
  swift_willThrow();
  return sub_24570CE00(v13, type metadata accessor for RGBLivenessModel.Event);
}

uint64_t sub_24570AD60@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for RGBLivenessModel.Event(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = (&v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = a2[2];
  v10 = a2[3];
  v12 = a2[4];
  sub_245709900(a1, v9, type metadata accessor for RGBLivenessModel.Event);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 21)
  {
    if (EnumCaseMultiPayload == 11)
    {
      v17 = *v9;
      *a3 = 1;
      *(a3 + 8) = v17;
      *(a3 + 16) = v11;
      *(a3 + 24) = v10;
      *(a3 + 32) = v12;
      *(a3 + 40) = 2;
      type metadata accessor for RGBLivenessModel.State(0);
      swift_storeEnumTagMultiPayload();
    }

    if (EnumCaseMultiPayload == 13)
    {
      v14 = v9[2];
      *a3 = 1;
      *(a3 + 8) = 0;
      *(a3 + 16) = *v9;
      *(a3 + 32) = v14;
LABEL_11:
      *(a3 + 40) = 2;
      type metadata accessor for RGBLivenessModel.State(0);
      return swift_storeEnumTagMultiPayload();
    }

    goto LABEL_8;
  }

  if (EnumCaseMultiPayload == 30)
  {
    *a3 = 1;
    *(a3 + 8) = 0u;
    *(a3 + 24) = 0u;
    goto LABEL_11;
  }

  if (EnumCaseMultiPayload != 22)
  {
LABEL_8:
    sub_24570CDAC();
    swift_allocError();
    *v15 = 6;
    swift_willThrow();
    return sub_24570CE00(v9, type metadata accessor for RGBLivenessModel.Event);
  }

  *a3 = 0;
  type metadata accessor for RGBLivenessModel.State(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_24570AF54@<X0>(uint64_t a1@<X0>, __int16 a2@<W1>, uint64_t a3@<X8>)
{
  v3 = HIBYTE(a2);
  v6 = type metadata accessor for RGBLivenessModel.Event(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_245709900(a1, v9, type metadata accessor for RGBLivenessModel.Event);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 15)
  {
    if (EnumCaseMultiPayload != 11 && EnumCaseMultiPayload != 13)
    {
      goto LABEL_15;
    }

    sub_24570CE00(v9, type metadata accessor for RGBLivenessModel.Event);
LABEL_12:
    *a3 = 1;
    *(a3 + 1) = v3 & 1;
    type metadata accessor for RGBLivenessModel.State(0);
    return swift_storeEnumTagMultiPayload();
  }

  switch(EnumCaseMultiPayload)
  {
    case 30:
      goto LABEL_12;
    case 19:
      v13 = *v9;
      v14 = v9[1];
      *a3 = 0;
      *(a3 + 1) = v14;
      *(a3 + 2) = v13;
      *(a3 + 3) = 0;
      type metadata accessor for RGBLivenessModel.State(0);
      return swift_storeEnumTagMultiPayload();
    case 16:
      v11 = *v9;
      *a3 = 0;
      *(a3 + 8) = v11;
      type metadata accessor for RGBLivenessModel.State(0);
      *(a3 + 16) = 0u;
      *(a3 + 32) = 0u;
      *(a3 + 41) = 0u;
      return swift_storeEnumTagMultiPayload();
  }

LABEL_15:
  sub_24570CDAC();
  swift_allocError();
  *v16 = 6;
  swift_willThrow();
  return sub_24570CE00(v9, type metadata accessor for RGBLivenessModel.Event);
}

uint64_t sub_24570B130@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for RGBLivenessModel.Event(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a2;
  v11 = *(a2 + 2);
  v34 = *(a2 + 1);
  v35 = v11;
  v13 = *(a2 + 4);
  v12 = *(a2 + 5);
  v14 = *(a2 + 6);
  v15 = a2[56];
  sub_245709900(a1, v9, type metadata accessor for RGBLivenessModel.Event);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 16)
  {
    if (EnumCaseMultiPayload <= 10)
    {
      if (EnumCaseMultiPayload == 1)
      {
        if (*v9 == 1)
        {
          *a3 = 0;
          v25 = v35;
          *(a3 + 8) = v34;
          *(a3 + 16) = v25;
          *(a3 + 24) = 0;
          *(a3 + 32) = v13;
          *(a3 + 40) = v12;
          *(a3 + 48) = v14;
          *(a3 + 56) = v15;
          type metadata accessor for RGBLivenessModel.State(0);
LABEL_23:
          swift_storeEnumTagMultiPayload();
        }

        *a3 = 256;
        type metadata accessor for RGBLivenessModel.State(0);
        return swift_storeEnumTagMultiPayload();
      }

      if (EnumCaseMultiPayload == 4)
      {
        if (*v9 == 1)
        {
          *a3 = v10;
          v17 = v35;
          *(a3 + 8) = v34;
          *(a3 + 16) = v17;
          *(a3 + 24) = 0;
          *(a3 + 32) = v13;
          *(a3 + 40) = v12;
          *(a3 + 48) = v14;
          *(a3 + 56) = 1;
LABEL_22:
          type metadata accessor for RGBLivenessModel.State(0);
          goto LABEL_23;
        }

        goto LABEL_17;
      }

      goto LABEL_25;
    }

    if (EnumCaseMultiPayload == 11)
    {
      v28 = *v9;
      *a3 = 1;
      v29 = v35;
      *(a3 + 8) = v34;
      *(a3 + 16) = v29;
      *(a3 + 24) = v28;
      *(a3 + 32) = v13;
      *(a3 + 40) = v12;
      *(a3 + 48) = v14;
      *(a3 + 56) = v15;
      goto LABEL_22;
    }

    if (EnumCaseMultiPayload != 13)
    {
      goto LABEL_25;
    }

    v21 = *v9;
    v20 = *(v9 + 1);
    v22 = v9[17];
    v23 = (*(v9 + 18) << 16) | (*(v9 + 11) << 48) | v9[16] | (v22 << 8);
    if (v22)
    {
      *a3 = 0;
      *(a3 + 8) = v34;
      *(a3 + 16) = v35;
      *(a3 + 24) = 0;
      *(a3 + 32) = v21;
      *(a3 + 40) = v20;
      *(a3 + 48) = v23;
      *(a3 + 56) = 0;
      type metadata accessor for RGBLivenessModel.State(0);
      return swift_storeEnumTagMultiPayload();
    }

    *a3 = 1;
    *(a3 + 8) = v34;
    *(a3 + 16) = v35;
    *(a3 + 24) = 0;
    *(a3 + 32) = v21;
    *(a3 + 40) = v20;
    *(a3 + 48) = v23;
LABEL_28:
    *(a3 + 56) = v15;
    type metadata accessor for RGBLivenessModel.State(0);
    return swift_storeEnumTagMultiPayload();
  }

  if (EnumCaseMultiPayload > 21)
  {
    if (EnumCaseMultiPayload != 30)
    {
      if (EnumCaseMultiPayload == 22)
      {
LABEL_17:
        *a3 = 0;
        *(a3 + 8) = 0;
        *(a3 + 16) = 1;
        v24 = v35;
        *(a3 + 24) = v34;
        *(a3 + 32) = v24;
        type metadata accessor for RGBLivenessModel.State(0);
        *(a3 + 40) = 0u;
        *(a3 + 56) = 0u;
        return swift_storeEnumTagMultiPayload();
      }

LABEL_25:
      sub_24570CDAC();
      swift_allocError();
      *v32 = 6;
      swift_willThrow();
      return sub_24570CE00(v9, type metadata accessor for RGBLivenessModel.Event);
    }

    *a3 = 1;
    v31 = v35;
    *(a3 + 8) = v34;
    *(a3 + 16) = v31;
    *(a3 + 24) = 0u;
    *(a3 + 40) = 0u;
    goto LABEL_28;
  }

  if (EnumCaseMultiPayload == 17)
  {
    v26 = *v9;
    v27 = *(v9 + 1);
    v36 = 0;
    *a3 = 0;
    *(a3 + 8) = v26;
    *(a3 + 16) = 0;
    *(a3 + 24) = v27;
    type metadata accessor for RGBLivenessModel.State(0);
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *(a3 + 64) = 0;
    return swift_storeEnumTagMultiPayload();
  }

  if (EnumCaseMultiPayload != 19)
  {
    goto LABEL_25;
  }

  v18 = *v9;
  v19 = v9[1];
  *a3 = 0;
  *(a3 + 1) = v19;
  *(a3 + 2) = v18;
  *(a3 + 3) = 0;
  type metadata accessor for RGBLivenessModel.State(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_24570B4F4@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for RGBLivenessModel.Event(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a2;
  v11 = *(a2 + 1);
  v12 = *(a2 + 2);
  v13 = *(a2 + 5);
  v14 = *(a2 + 6);
  v25 = *(a2 + 4);
  v26 = v14;
  v15 = a2[56];
  sub_245709900(a1, v9, type metadata accessor for RGBLivenessModel.Event);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 16)
  {
    if (EnumCaseMultiPayload == 30)
    {
      *a3 = 0;
      *(a3 + 8) = v11;
      *(a3 + 16) = v12;
      type metadata accessor for RGBLivenessModel.State(0);
      *(a3 + 24) = 0u;
      *(a3 + 40) = 0u;
      *(a3 + 56) = 0;
      return swift_storeEnumTagMultiPayload();
    }

    if (EnumCaseMultiPayload == 19)
    {
      v23 = *v9;
      v24 = v9[1];
      *a3 = 0;
      *(a3 + 1) = v24;
      *(a3 + 2) = v23;
      *(a3 + 3) = 0;
      type metadata accessor for RGBLivenessModel.State(0);
      return swift_storeEnumTagMultiPayload();
    }

    if (EnumCaseMultiPayload != 17)
    {
LABEL_13:
      sub_24570CDAC();
      swift_allocError();
      *v19 = 6;
      swift_willThrow();
      return sub_24570CE00(v9, type metadata accessor for RGBLivenessModel.Event);
    }

    v18 = *(v9 + 1);
    *a3 = v10;
    *(a3 + 8) = v18;
    goto LABEL_11;
  }

  if (EnumCaseMultiPayload == 4)
  {
    *a3 = 1;
    *(a3 + 8) = v11;
LABEL_11:
    *(a3 + 16) = v12;
    *(a3 + 24) = 0;
LABEL_15:
    v22 = v26;
    *(a3 + 32) = v25;
    *(a3 + 40) = v13;
    *(a3 + 48) = v22;
    *(a3 + 56) = v15;
    type metadata accessor for RGBLivenessModel.State(0);
    swift_storeEnumTagMultiPayload();
  }

  if (EnumCaseMultiPayload == 11)
  {
    v21 = *v9;
    *a3 = v10;
    *(a3 + 8) = v11;
    *(a3 + 16) = v12;
    *(a3 + 24) = v21;
    goto LABEL_15;
  }

  if (EnumCaseMultiPayload != 13)
  {
    goto LABEL_13;
  }

  v17 = *(v9 + 2);
  *a3 = 1;
  *(a3 + 8) = v11;
  *(a3 + 16) = v12;
  *(a3 + 24) = 0;
  *(a3 + 32) = *v9;
  *(a3 + 48) = v17;
  *(a3 + 56) = v15;
  type metadata accessor for RGBLivenessModel.State(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_24570B76C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for RGBLivenessModel.Event(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + 8);
  v10 = *(a2 + 16);
  v13 = *(a2 + 32);
  v12 = *(a2 + 40);
  v25 = *(a2 + 48);
  v14 = *(a2 + 56);
  sub_245709900(a1, v9, type metadata accessor for RGBLivenessModel.Event);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 16)
  {
    if (EnumCaseMultiPayload == 4)
    {
      *a3 = 1;
      *(a3 + 8) = v11;
      *(a3 + 16) = v10;
LABEL_16:
      *(a3 + 24) = 0;
LABEL_21:
      *(a3 + 32) = v13;
      *(a3 + 40) = v12;
      *(a3 + 48) = v25;
      *(a3 + 56) = v14;
      type metadata accessor for RGBLivenessModel.State(0);
      goto LABEL_22;
    }

    if (EnumCaseMultiPayload == 11)
    {
      v23 = *v9;
      *a3 = 1;
      *(a3 + 8) = v11;
      *(a3 + 16) = v10;
      *(a3 + 24) = v23;
      goto LABEL_21;
    }

    if (EnumCaseMultiPayload != 13)
    {
      goto LABEL_14;
    }

    v18 = *(v9 + 2);
    *a3 = 1;
    *(a3 + 8) = v11;
    *(a3 + 16) = v10;
    *(a3 + 24) = 0;
    *(a3 + 32) = *v9;
    *(a3 + 48) = v18;
LABEL_18:
    *(a3 + 56) = v14;
    type metadata accessor for RGBLivenessModel.State(0);
    return swift_storeEnumTagMultiPayload();
  }

  if (EnumCaseMultiPayload <= 21)
  {
    if (EnumCaseMultiPayload != 17)
    {
      if (EnumCaseMultiPayload == 19)
      {
        v16 = *v9;
        v17 = v9[1];
        *a3 = 0;
        *(a3 + 1) = v17;
        *(a3 + 2) = v16;
        *(a3 + 3) = 0;
        type metadata accessor for RGBLivenessModel.State(0);
        return swift_storeEnumTagMultiPayload();
      }

LABEL_14:
      sub_24570CDAC();
      swift_allocError();
      *v20 = 6;
      swift_willThrow();
      return sub_24570CE00(v9, type metadata accessor for RGBLivenessModel.Event);
    }

    v22 = *(v9 + 1);
    *a3 = 1;
    *(a3 + 8) = v22;
    *(a3 + 16) = 0;
    goto LABEL_16;
  }

  if (EnumCaseMultiPayload == 30)
  {
    *a3 = 1;
    *(a3 + 8) = v11;
    *(a3 + 16) = v10;
    *(a3 + 24) = 0u;
    *(a3 + 40) = 0u;
    goto LABEL_18;
  }

  if (EnumCaseMultiPayload != 22)
  {
    goto LABEL_14;
  }

  *a3 = 0;
  *(a3 + 8) = v11;
  *(a3 + 16) = v10;
  *(a3 + 24) = 0;
  *(a3 + 32) = v13;
  v19 = v25;
  *(a3 + 40) = v12;
  *(a3 + 48) = v19;
  *(a3 + 56) = 0;
  type metadata accessor for RGBLivenessModel.State(0);
LABEL_22:
  swift_storeEnumTagMultiPayload();
}

uint64_t sub_24570BA14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for RGBLivenessModel.Event(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a2 + 8);
  v11 = *(a2 + 16);
  v13 = *(a2 + 24);
  v12 = *(a2 + 32);
  v14 = *(a2 + 56);
  v32 = *(a2 + 48);
  v33 = v14;
  v15 = *(a2 + 64);
  sub_245709900(a1, v9, type metadata accessor for RGBLivenessModel.Event);
  result = swift_getEnumCaseMultiPayload();
  if (result > 16)
  {
    if (result <= 18)
    {
      if (result == 17)
      {
        v22 = *v9;
        v23 = *(v9 + 1);
        v35 = 0;
        *a3 = 0;
        *(a3 + 8) = v22;
        *(a3 + 16) = 0;
        *(a3 + 24) = v23;
        *(a3 + 32) = 0;
        v24 = v32;
        v25 = v33;
        *(a3 + 40) = 0;
        *(a3 + 48) = v24;
        *(a3 + 56) = v25;
        *(a3 + 64) = v15;
        type metadata accessor for RGBLivenessModel.State(0);
        goto LABEL_24;
      }

      if (v12)
      {
        v17 = v12 + 1;
        if (!__OFADD__(v12, 1))
        {
          v34 = v11;
          goto LABEL_13;
        }

        goto LABEL_31;
      }

      goto LABEL_27;
    }

    if (result == 19)
    {
      v29 = *v9;
      v30 = v9[1];
      *a3 = 0;
      *(a3 + 1) = v30;
      *(a3 + 2) = v29;
      *(a3 + 3) = 0;
      type metadata accessor for RGBLivenessModel.State(0);
    }

    else
    {
      if (result != 30)
      {
        goto LABEL_26;
      }

      v39 = v11;
      *a3 = 1;
      *(a3 + 8) = v10;
      *(a3 + 16) = v11;
      *(a3 + 24) = v13;
      *(a3 + 32) = v12;
      type metadata accessor for RGBLivenessModel.State(0);
      *(a3 + 40) = 0u;
      *(a3 + 56) = 0u;
    }

    return swift_storeEnumTagMultiPayload();
  }

  if (result > 10)
  {
    if (result == 11)
    {
      v26 = *v9;
      v37 = v11;
      *a3 = 1;
      *(a3 + 8) = v10;
      *(a3 + 16) = v11;
      *(a3 + 24) = v13;
      *(a3 + 32) = v12;
      v27 = v32;
      v28 = v33;
      *(a3 + 40) = v26;
      *(a3 + 48) = v27;
      *(a3 + 56) = v28;
      *(a3 + 64) = v15;
      type metadata accessor for RGBLivenessModel.State(0);
      goto LABEL_24;
    }

    if (result != 13)
    {
      goto LABEL_26;
    }

    v20 = *(v9 + 2);
    v38 = v11;
    *a3 = 1;
    *(a3 + 8) = v10;
    *(a3 + 16) = v11;
    *(a3 + 24) = v13;
    *(a3 + 32) = v12;
    *(a3 + 40) = 0;
    *(a3 + 48) = *v9;
    *(a3 + 64) = v20;
    type metadata accessor for RGBLivenessModel.State(0);
    return swift_storeEnumTagMultiPayload();
  }

  if (result == 1)
  {
    v21 = *v9;
    *a3 = 0;
    if (v21 == 1)
    {
      *(a3 + 8) = v13;
      *(a3 + 16) = v12;
      type metadata accessor for RGBLivenessModel.State(0);
      *(a3 + 24) = 0u;
      *(a3 + 40) = 0u;
      *(a3 + 56) = 0;
    }

    else
    {
      *(a3 + 1) = 1;
      type metadata accessor for RGBLivenessModel.State(0);
    }

    return swift_storeEnumTagMultiPayload();
  }

  if (result != 5)
  {
LABEL_26:
    sub_24570CDAC();
    swift_allocError();
    *v31 = 6;
    swift_willThrow();
    return sub_24570CE00(v9, type metadata accessor for RGBLivenessModel.Event);
  }

  if (!v12)
  {
LABEL_27:
    *a3 = 0;
    *(a3 + 8) = v13;
    *(a3 + 16) = 1;
    type metadata accessor for RGBLivenessModel.State(0);
    *(a3 + 24) = 0u;
    *(a3 + 40) = 0u;
    *(a3 + 56) = 0;
    return swift_storeEnumTagMultiPayload();
  }

  v17 = v12 + 1;
  if (!__OFADD__(v12, 1))
  {
    v36 = v11;
LABEL_13:
    *a3 = 0;
    *(a3 + 8) = v10;
    *(a3 + 16) = v11;
    *(a3 + 24) = v13;
    *(a3 + 32) = v17;
    v18 = v32;
    v19 = v33;
    *(a3 + 40) = 0;
    *(a3 + 48) = v18;
    *(a3 + 56) = v19;
    *(a3 + 64) = v15;
    type metadata accessor for RGBLivenessModel.State(0);
LABEL_24:
    swift_storeEnumTagMultiPayload();
  }

  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_24570BDC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for RGBLivenessModel.Event(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = (&v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(a2 + 16);
  v12 = *(a2 + 24);
  v11 = *(a2 + 32);
  v25 = *(a2 + 8);
  v26 = v11;
  v13 = *(a2 + 48);
  v14 = *(a2 + 56);
  v15 = *(a2 + 64);
  sub_245709900(a1, v9, type metadata accessor for RGBLivenessModel.Event);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 15)
  {
    if (EnumCaseMultiPayload == 11)
    {
      v21 = *v9;
      v27 = v10;
      *a3 = 1;
      v22 = v26;
      *(a3 + 8) = v25;
      *(a3 + 16) = v10;
      *(a3 + 24) = v12;
      *(a3 + 32) = v22;
      *(a3 + 40) = v21;
      *(a3 + 48) = v13;
      *(a3 + 56) = v14;
      *(a3 + 64) = v15;
      type metadata accessor for RGBLivenessModel.State(0);
      swift_storeEnumTagMultiPayload();
    }

    if (EnumCaseMultiPayload == 13)
    {
      v17 = v9[2];
      v28 = v10;
      *a3 = 1;
      v18 = v26;
      *(a3 + 8) = v25;
      *(a3 + 16) = v10;
      *(a3 + 24) = v12;
      *(a3 + 32) = v18;
      *(a3 + 40) = 0;
      *(a3 + 48) = *v9;
      *(a3 + 64) = v17;
      type metadata accessor for RGBLivenessModel.State(0);
      return swift_storeEnumTagMultiPayload();
    }
  }

  else
  {
    switch(EnumCaseMultiPayload)
    {
      case 16:
        goto LABEL_5;
      case 30:
        v29 = v10;
        *a3 = 1;
        v19 = v26;
        *(a3 + 8) = v25;
        *(a3 + 16) = v10;
        *(a3 + 24) = v12;
        *(a3 + 32) = v19;
        type metadata accessor for RGBLivenessModel.State(0);
        *(a3 + 40) = 0u;
        *(a3 + 56) = 0u;
        return swift_storeEnumTagMultiPayload();
      case 22:
LABEL_5:
        *a3 = 0;
        *(a3 + 8) = v12;
        type metadata accessor for RGBLivenessModel.State(0);
        *(a3 + 16) = 0u;
        *(a3 + 32) = 0u;
        *(a3 + 41) = 0u;
        return swift_storeEnumTagMultiPayload();
    }
  }

  sub_24570CDAC();
  swift_allocError();
  *v23 = 6;
  swift_willThrow();
  return sub_24570CE00(v9, type metadata accessor for RGBLivenessModel.Event);
}

uint64_t sub_24570C02C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for RGBLivenessModel.Event(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = (&v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(a2 + 8);
  v11 = *(a2 + 16);
  v12 = *(a2 + 32);
  v26 = *(a2 + 24);
  v27 = v12;
  v13 = *(a2 + 48);
  v14 = *(a2 + 56);
  v15 = *(a2 + 64);
  sub_245709900(a1, v9, type metadata accessor for RGBLivenessModel.Event);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 12)
  {
    if (EnumCaseMultiPayload == 1)
    {
      *a3 = 256;
LABEL_14:
      type metadata accessor for RGBLivenessModel.State(0);
      return swift_storeEnumTagMultiPayload();
    }

    if (EnumCaseMultiPayload == 11)
    {
      v18 = *v9;
      v28 = v11;
      *a3 = 1;
      *(a3 + 8) = v10;
      *(a3 + 16) = v11;
      v19 = v27;
      *(a3 + 24) = v26;
      *(a3 + 32) = v19;
      *(a3 + 40) = v18;
      *(a3 + 48) = v13;
      *(a3 + 56) = v14;
      *(a3 + 64) = v15;
      type metadata accessor for RGBLivenessModel.State(0);
      swift_storeEnumTagMultiPayload();
    }

LABEL_15:
    sub_24570CDAC();
    swift_allocError();
    *v24 = 6;
    swift_willThrow();
    return sub_24570CE00(v9, type metadata accessor for RGBLivenessModel.Event);
  }

  if (EnumCaseMultiPayload != 13)
  {
    if (EnumCaseMultiPayload == 30)
    {
      v30 = v11;
      *a3 = 1;
      *(a3 + 8) = v10;
      *(a3 + 16) = v11;
      v23 = v27;
      *(a3 + 24) = v26;
      *(a3 + 32) = v23;
      type metadata accessor for RGBLivenessModel.State(0);
      *(a3 + 40) = 0u;
      *(a3 + 56) = 0u;
      return swift_storeEnumTagMultiPayload();
    }

    if (EnumCaseMultiPayload == 22)
    {
      *a3 = 0;
      v17 = v27;
      if (v27 <= 2)
      {
        *(a3 + 8) = v26;
        *(a3 + 16) = v17;
        type metadata accessor for RGBLivenessModel.State(0);
        *(a3 + 24) = 0u;
        *(a3 + 40) = 0u;
        *(a3 + 56) = 0;
        return swift_storeEnumTagMultiPayload();
      }

      *(a3 + 1) = 1;
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  v21 = v9[2];
  v29 = v11;
  *a3 = 1;
  *(a3 + 8) = v10;
  *(a3 + 16) = v11;
  v22 = v27;
  *(a3 + 24) = v26;
  *(a3 + 32) = v22;
  *(a3 + 40) = 0;
  *(a3 + 48) = *v9;
  *(a3 + 64) = v21;
  type metadata accessor for RGBLivenessModel.State(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_24570C2D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = BYTE1(a2) & 1;
  v6 = a2 & 0x10000;
  v7 = a2 & 0x1000000;
  v8 = a2 & 0x100000000;
  v9 = type metadata accessor for RGBLivenessModel.Event(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_245709900(a1, v12, type metadata accessor for RGBLivenessModel.Event);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 13)
  {
    if ((EnumCaseMultiPayload - 4) >= 2)
    {
      if (EnumCaseMultiPayload != 11 && EnumCaseMultiPayload != 13)
      {
        goto LABEL_18;
      }

      sub_24570CE00(v12, type metadata accessor for RGBLivenessModel.Event);
    }

    goto LABEL_14;
  }

  switch(EnumCaseMultiPayload)
  {
    case 14:
      if (v7)
      {
        *a3 = 0;
        if (v6)
        {
          *(a3 + 24) = 0u;
          *(a3 + 8) = 0u;
          *(a3 + 40) = 2;
        }

        type metadata accessor for RGBLivenessModel.State(0);
      }

      else
      {
        *a3 = 1;
        *(a3 + 1) = v5;
        *(a3 + 2) = BYTE2(v6);
        *(a3 + 3) = 256;
        type metadata accessor for RGBLivenessModel.State(0);
      }

      swift_storeEnumTagMultiPayload();
      return sub_24570CE00(v12, type metadata accessor for RGBLivenessModel.Event);
    case 30:
LABEL_14:
      *a3 = 1;
      *(a3 + 1) = v5;
      *(a3 + 2) = BYTE2(v6);
      *(a3 + 3) = BYTE3(v7);
      *(a3 + 4) = BYTE4(v8);
LABEL_15:
      type metadata accessor for RGBLivenessModel.State(0);
      return swift_storeEnumTagMultiPayload();
    case 22:
      if (v8)
      {
        *a3 = 0;
        if (v6)
        {
          *(a3 + 24) = 0u;
          *(a3 + 8) = 0u;
          *(a3 + 40) = 2;
        }
      }

      else
      {
        *a3 = 1;
        *(a3 + 1) = v5;
        *(a3 + 2) = BYTE2(v6);
        *(a3 + 3) = 1;
      }

      goto LABEL_15;
  }

LABEL_18:
  sub_24570CDAC();
  swift_allocError();
  *v16 = 6;
  swift_willThrow();
  return sub_24570CE00(v12, type metadata accessor for RGBLivenessModel.Event);
}

uint64_t sub_24570C594@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for RGBLivenessModel.Event(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a2[2];
  v10 = a2[3];
  v12 = a2[4];
  sub_245709900(a1, v9, type metadata accessor for RGBLivenessModel.Event);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 12)
  {
    switch(EnumCaseMultiPayload)
    {
      case 13:
        v16 = *(v9 + 2);
        *a3 = 1;
        *(a3 + 8) = 0;
        *(a3 + 16) = *v9;
        *(a3 + 32) = v16;
        break;
      case 30:
        *a3 = 1;
        *(a3 + 8) = 0u;
        *(a3 + 24) = 0u;
        break;
      case 22:
        *a3 = 0;
        type metadata accessor for RGBLivenessModel.State(0);
        return swift_storeEnumTagMultiPayload();
      default:
        goto LABEL_15;
    }

    *(a3 + 40) = 2;
    type metadata accessor for RGBLivenessModel.State(0);
    return swift_storeEnumTagMultiPayload();
  }

  if (EnumCaseMultiPayload == 2)
  {
    v15 = *v9;
    *a3 = 1;
    *(a3 + 8) = 0;
    *(a3 + 16) = v11;
    *(a3 + 24) = v10;
    *(a3 + 32) = v12;
    goto LABEL_14;
  }

  if (EnumCaseMultiPayload == 11)
  {
    v14 = *v9;
    *a3 = 1;
    *(a3 + 8) = v14;
    *(a3 + 16) = v11;
    *(a3 + 24) = v10;
    *(a3 + 32) = v12;
    v15 = 2;
LABEL_14:
    *(a3 + 40) = v15;
    type metadata accessor for RGBLivenessModel.State(0);
    swift_storeEnumTagMultiPayload();
  }

LABEL_15:
  sub_24570CDAC();
  swift_allocError();
  *v18 = 6;
  swift_willThrow();
  return sub_24570CE00(v9, type metadata accessor for RGBLivenessModel.Event);
}

id sub_24570C7A8@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for RGBLivenessModel.Event(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a2 + 1);
  v11 = *(a2 + 2);
  v13 = *(a2 + 3);
  v12 = *(a2 + 4);
  LODWORD(v8) = a2[40];
  v22 = *a2;
  v23 = v8;
  v24 = *(a2 + 6);
  v14 = a2[56];
  sub_245709900(a1, v9, type metadata accessor for RGBLivenessModel.Event);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 21)
  {
    if (EnumCaseMultiPayload <= 10)
    {
      if (EnumCaseMultiPayload != 1)
      {
        if (EnumCaseMultiPayload != 5)
        {
          goto LABEL_33;
        }

        goto LABEL_18;
      }

      if (v13)
      {
        v18 = HIBYTE(v13) & 0xF;
        if ((v13 & 0x2000000000000000) == 0)
        {
          v18 = v11 & 0xFFFFFFFFFFFFLL;
        }

        if (v18)
        {
          if ((v12 & 0x100) != 0)
          {
            v19 = v23;
            *a3 = v22;
            *(a3 + 8) = v10;
            *(a3 + 16) = v11;
            *(a3 + 24) = v13;
            *(a3 + 32) = v12;
            *(a3 + 40) = v19;
            *(a3 + 48) = v24;
            *(a3 + 56) = 1;
            goto LABEL_19;
          }

          goto LABEL_31;
        }
      }

      goto LABEL_30;
    }

    if (EnumCaseMultiPayload != 11 && EnumCaseMultiPayload != 13)
    {
      goto LABEL_33;
    }

    sub_24570CE00(v9, type metadata accessor for RGBLivenessModel.Event);
    goto LABEL_18;
  }

  if (EnumCaseMultiPayload <= 26)
  {
    if (EnumCaseMultiPayload == 22)
    {
      if (v13)
      {
        v20 = HIBYTE(v13) & 0xF;
        if ((v13 & 0x2000000000000000) == 0)
        {
          v20 = v11 & 0xFFFFFFFFFFFFLL;
        }

        if (v20)
        {
          goto LABEL_30;
        }
      }
    }

    else if (EnumCaseMultiPayload != 26)
    {
      goto LABEL_33;
    }

LABEL_31:
    *a3 = 0;
    type metadata accessor for RGBLivenessModel.State(0);
    return swift_storeEnumTagMultiPayload();
  }

  if (EnumCaseMultiPayload == 27)
  {
LABEL_30:
    *a3 = 0;
    *(a3 + 8) = 0u;
    *(a3 + 24) = 0u;
    *(a3 + 40) = 2;
    type metadata accessor for RGBLivenessModel.State(0);
    return swift_storeEnumTagMultiPayload();
  }

  if (EnumCaseMultiPayload == 30)
  {
LABEL_18:
    *a3 = 1;
    *(a3 + 8) = v10;
    *(a3 + 16) = v11;
    *(a3 + 24) = v13;
    *(a3 + 32) = v12;
    *(a3 + 40) = v23;
    *(a3 + 48) = v24;
    *(a3 + 56) = v14;
LABEL_19:
    type metadata accessor for RGBLivenessModel.State(0);
    swift_storeEnumTagMultiPayload();

    return v10;
  }

LABEL_33:
  sub_24570CDAC();
  swift_allocError();
  *v21 = 6;
  swift_willThrow();
  return sub_24570CE00(v9, type metadata accessor for RGBLivenessModel.Event);
}

uint64_t sub_24570CA5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RGBLivenessModel.State(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for RGBLivenessModel.Event(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_245747E60();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_245747CF0();
  sub_245709900(a1, v11, type metadata accessor for RGBLivenessModel.Event);
  sub_245709900(a2, v7, type metadata accessor for RGBLivenessModel.State);
  v17 = sub_245747E50();
  v18 = sub_245748920();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v31 = v12;
    v20 = v19;
    v21 = swift_slowAlloc();
    v32 = v21;
    *v20 = 136315394;
    v22 = sub_245707E1C();
    v24 = v23;
    sub_24570CE00(v11, type metadata accessor for RGBLivenessModel.Event);
    v25 = sub_24572EDDC(v22, v24, &v32);

    *(v20 + 4) = v25;
    *(v20 + 12) = 2080;
    v26 = sub_245707900();
    v28 = v27;
    sub_24570CE00(v7, type metadata accessor for RGBLivenessModel.State);
    v29 = sub_24572EDDC(v26, v28, &v32);

    *(v20 + 14) = v29;
    _os_log_impl(&dword_2456DE000, v17, v18, "Invalid event %s received during state %s.", v20, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245D712D0](v21, -1, -1);
    MEMORY[0x245D712D0](v20, -1, -1);

    return (*(v13 + 8))(v16, v31);
  }

  else
  {

    sub_24570CE00(v7, type metadata accessor for RGBLivenessModel.State);
    sub_24570CE00(v11, type metadata accessor for RGBLivenessModel.Event);
    return (*(v13 + 8))(v16, v12);
  }
}

unint64_t sub_24570CDAC()
{
  result = qword_27EE24BD0;
  if (!qword_27EE24BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE24BD0);
  }

  return result;
}

uint64_t sub_24570CE00(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24570CE90(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24570CF30()
{
  swift_getKeyPath();
  sub_24571B9BC();
  sub_245747CA0();

  return *(v0 + 16);
}

uint64_t sub_24570CFA0(uint64_t result)
{
  if (*(v1 + 16) == (result & 1))
  {
    *(v1 + 16) = result & 1;
  }

  else
  {
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    sub_24571B9BC();
    sub_245747C90();
  }

  return result;
}

uint64_t sub_24570D088@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  sub_24571B9BC();
  sub_245747CA0();

  memcpy(__dst, (v1 + 24), sizeof(__dst));
  memcpy(a1, (v1 + 24), 0x240uLL);
  return sub_2456F3944(__dst, &v4);
}

uint64_t sub_24570D12C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  __dst[0] = v3;
  sub_24571B9BC();
  sub_245747CA0();

  memcpy(__dst, (v3 + 24), sizeof(__dst));
  memcpy(a2, (v3 + 24), 0x240uLL);
  return sub_2456F3944(__dst, &v5);
}

uint64_t sub_24570D1D0(void *__src, uint64_t *a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  v3 = *a2;
  swift_getKeyPath();
  sub_24571B9BC();
  sub_245747C90();
}

uint64_t sub_24570D280()
{
  swift_getKeyPath();
  sub_24571B9BC();
  sub_245747CA0();

  return *(v0 + 600);
}

uint64_t sub_24570D2F0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24571B9BC();
  sub_245747CA0();

  *a2 = *(v3 + 600);
  return result;
}

uint64_t sub_24570D390(uint64_t result)
{
  if (*(v1 + 600) == (result & 1))
  {
    *(v1 + 600) = result & 1;
  }

  else
  {
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    sub_24571B9BC();
    sub_245747C90();
  }

  return result;
}

uint64_t sub_24570D470()
{
  swift_getKeyPath();
  sub_24571B9BC();
  sub_245747CA0();

  return *(v0 + 601);
}

uint64_t sub_24570D4E0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24571B9BC();
  sub_245747CA0();

  *a2 = *(v3 + 601);
  return result;
}

uint64_t sub_24570D580(uint64_t result)
{
  if (*(v1 + 601) == (result & 1))
  {
    *(v1 + 601) = result & 1;
  }

  else
  {
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    sub_24571B9BC();
    sub_245747C90();
  }

  return result;
}

uint64_t sub_24570D660@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_24571B9BC();
  sub_245747CA0();

  *a1 = *(v1 + 608);
  *(a1 + 8) = *(v1 + 616);
}

uint64_t sub_24570D6EC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24571B9BC();
  sub_245747CA0();

  *a2 = *(v3 + 608);
  *(a2 + 8) = *(v3 + 616);
}

uint64_t sub_24570D778(__int128 *a1, uint64_t *a2)
{
  v5 = *a1;
  v2 = *(a1 + 2);
  v3 = *a2;
  swift_getKeyPath();
  sub_24571B9BC();
  sub_245747C90();
}

uint64_t sub_24570D828()
{
  swift_getKeyPath();
  sub_24571B9BC();
  sub_245747CA0();

  return *(v0 + 632);
}

uint64_t sub_24570D898@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24571B9BC();
  sub_245747CA0();

  *a2 = *(v3 + 632);
  return result;
}

uint64_t sub_24570D938(uint64_t result)
{
  v2 = *(v1 + 632);
  if (v2 == 9)
  {
    if (result != 9)
    {
LABEL_3:
      swift_getKeyPath();
      MEMORY[0x28223BE20]();
      sub_24571B9BC();
      sub_245747C90();
    }
  }

  else if (v2 != result)
  {
    goto LABEL_3;
  }

  *(v1 + 632) = result;
  return result;
}

uint64_t sub_24570DA28()
{
  swift_getKeyPath();
  v4 = v0;
  sub_24571B9BC();
  sub_245747CA0();

  v1 = *(v0 + 656);
  v2 = *(v4 + 664);

  return v1;
}

uint64_t sub_24570DAAC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24571B9BC();
  sub_245747CA0();

  v4 = *(v3 + 664);
  *a2 = *(v3 + 656);
  a2[1] = v4;
}

uint64_t sub_24570DB44(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 664);
  if (v5)
  {
    if (a2)
    {
      if (*(v2 + 656) == a1 && v5 == a2)
      {
        goto LABEL_8;
      }

      v7 = *(v2 + 664);
      if (sub_245748BC0())
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    sub_24571B9BC();
    sub_245747C90();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *(v2 + 656) = a1;
  *(v2 + 664) = a2;
}

uint64_t sub_24570DC88()
{
  swift_getKeyPath();
  v4 = v0;
  sub_24571B9BC();
  sub_245747CA0();

  v1 = *(v0 + 672);
  v2 = *(v4 + 680);

  return v1;
}

uint64_t sub_24570DD0C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24571B9BC();
  sub_245747CA0();

  v4 = *(v3 + 680);
  *a2 = *(v3 + 672);
  a2[1] = v4;
}

uint64_t sub_24570DDA4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 680);
  if (v5)
  {
    if (a2)
    {
      if (*(v2 + 672) == a1 && v5 == a2)
      {
        goto LABEL_8;
      }

      v7 = *(v2 + 680);
      if (sub_245748BC0())
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    sub_24571B9BC();
    sub_245747C90();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *(v2 + 672) = a1;
  *(v2 + 680) = a2;
}

uint64_t sub_24570DEE8()
{
  swift_getKeyPath();
  v4 = v0;
  sub_24571B9BC();
  sub_245747CA0();

  v1 = *(v0 + 688);
  v2 = *(v4 + 696);

  return v1;
}

uint64_t sub_24570DF6C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24571B9BC();
  sub_245747CA0();

  v4 = *(v3 + 696);
  *a2 = *(v3 + 688);
  a2[1] = v4;
}

uint64_t sub_24570E004(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 696);
  if (v5)
  {
    if (a2)
    {
      if (*(v2 + 688) == a1 && v5 == a2)
      {
        goto LABEL_8;
      }

      v7 = *(v2 + 696);
      if (sub_245748BC0())
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    sub_24571B9BC();
    sub_245747C90();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *(v2 + 688) = a1;
  *(v2 + 696) = a2;
}

uint64_t sub_24570E148()
{
  swift_getKeyPath();
  sub_24571B9BC();
  sub_245747CA0();

  return *(v0 + 704);
}

uint64_t sub_24570E1B8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24571B9BC();
  sub_245747CA0();

  *a2 = *(v3 + 704);
  return result;
}

uint64_t sub_24570E258(uint64_t result)
{
  if (*(v1 + 704) == (result & 1))
  {
    *(v1 + 704) = result & 1;
  }

  else
  {
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    sub_24571B9BC();
    sub_245747C90();
  }

  return result;
}

uint64_t sub_24570E338()
{
  swift_getKeyPath();
  sub_24571B9BC();
  sub_245747CA0();

  return *(v0 + 705);
}

uint64_t sub_24570E3A8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24571B9BC();
  sub_245747CA0();

  *a2 = *(v3 + 705);
  return result;
}

uint64_t sub_24570E448(uint64_t result)
{
  if (*(v1 + 705) == (result & 1))
  {
    *(v1 + 705) = result & 1;
  }

  else
  {
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    sub_24571B9BC();
    sub_245747C90();
  }

  return result;
}

uint64_t sub_24570E528()
{
  swift_getKeyPath();
  v4 = v0;
  sub_24571B9BC();
  sub_245747CA0();

  v1 = *(v0 + 712);
  v2 = *(v4 + 720);

  return v1;
}

uint64_t sub_24570E5AC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24571B9BC();
  sub_245747CA0();

  v4 = *(v3 + 720);
  *a2 = *(v3 + 712);
  a2[1] = v4;
}

uint64_t sub_24570E644(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 720);
  if (v5)
  {
    if (a2)
    {
      if (*(v2 + 712) == a1 && v5 == a2)
      {
        goto LABEL_8;
      }

      v7 = *(v2 + 720);
      if (sub_245748BC0())
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    sub_24571B9BC();
    sub_245747C90();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *(v2 + 712) = a1;
  *(v2 + 720) = a2;
}

void *sub_24570E788()
{
  swift_getKeyPath();
  sub_24571B9BC();
  sub_245747CA0();

  v1 = *(v0 + 728);
  v2 = v1;
  return v1;
}

id sub_24570E800@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24571B9BC();
  sub_245747CA0();

  v4 = *(v3 + 728);
  *a2 = v4;

  return v4;
}

void sub_24570E888(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_24570E8B8(v2);
}

void sub_24570E8B8(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 728);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    sub_24571B9BC();
    sub_245747C90();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_2456E730C(0, &qword_27EE24B50, 0x277D755B8);
  v5 = v4;
  v6 = a1;
  v7 = sub_245748A10();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 728);
LABEL_8:
  *(v2 + 728) = a1;
}

uint64_t sub_24570EA18()
{
  swift_getKeyPath();
  sub_24571B9BC();
  sub_245747CA0();

  return *(v0 + 736);
}

uint64_t sub_24570EA88@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24571B9BC();
  sub_245747CA0();

  *a2 = *(v3 + 736);
  return result;
}

uint64_t sub_24570EB28(uint64_t result)
{
  if (*(v1 + 736) == (result & 1))
  {
    *(v1 + 736) = result & 1;
  }

  else
  {
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    sub_24571B9BC();
    sub_245747C90();
  }

  return result;
}

uint64_t sub_24570EC08()
{
  swift_getKeyPath();
  sub_24571B9BC();
  sub_245747CA0();

  return *(v0 + 737);
}

uint64_t sub_24570EC78(uint64_t result)
{
  if (*(v1 + 737) == (result & 1))
  {
    *(v1 + 737) = result & 1;
  }

  else
  {
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    sub_24571B9BC();
    sub_245747C90();
  }

  return result;
}

uint64_t sub_24570ED60()
{
  swift_getKeyPath();
  v4 = v0;
  sub_24571B9BC();
  sub_245747CA0();

  v1 = *(v0 + 744);
  v2 = *(v4 + 752);

  return v1;
}

uint64_t sub_24570EDE4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 744) == a1 && *(v2 + 752) == a2;
  if (v5 || (v6 = *(v2 + 752), (sub_245748BC0() & 1) != 0))
  {
    *(v2 + 744) = a1;
    *(v2 + 752) = a2;
  }

  else
  {
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    sub_24571B9BC();
    sub_245747C90();
  }
}

uint64_t sub_24570EF1C()
{
  swift_getKeyPath();
  v4 = v0;
  sub_24571B9BC();
  sub_245747CA0();

  v1 = *(v0 + 760);
  v2 = *(v4 + 768);

  return v1;
}

uint64_t sub_24570EFA0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24571B9BC();
  sub_245747CA0();

  v4 = *(v3 + 768);
  *a2 = *(v3 + 760);
  a2[1] = v4;
}

uint64_t sub_24570F038(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 768);
  if (v5)
  {
    if (a2)
    {
      if (*(v2 + 760) == a1 && v5 == a2)
      {
        goto LABEL_8;
      }

      v7 = *(v2 + 768);
      if (sub_245748BC0())
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    sub_24571B9BC();
    sub_245747C90();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *(v2 + 760) = a1;
  *(v2 + 768) = a2;
}

uint64_t sub_24570F17C()
{
  swift_getKeyPath();
  v4 = v0;
  sub_24571B9BC();
  sub_245747CA0();

  v1 = *(v0 + 776);
  v2 = *(v4 + 784);

  return v1;
}

uint64_t sub_24570F200@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24571B9BC();
  sub_245747CA0();

  v4 = *(v3 + 784);
  *a2 = *(v3 + 776);
  a2[1] = v4;
}

uint64_t sub_24570F298(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 776) == a1 && *(v2 + 784) == a2;
  if (v5 || (v6 = *(v2 + 784), (sub_245748BC0() & 1) != 0))
  {
    *(v2 + 776) = a1;
    *(v2 + 784) = a2;
  }

  else
  {
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    sub_24571B9BC();
    sub_245747C90();
  }
}

uint64_t sub_24570F3D0()
{
  swift_getKeyPath();
  v4 = v0;
  sub_24571B9BC();
  sub_245747CA0();

  v1 = *(v0 + 792);
  v2 = *(v4 + 800);

  return v1;
}

uint64_t sub_24570F454@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24571B9BC();
  sub_245747CA0();

  v4 = *(v3 + 800);
  *a2 = *(v3 + 792);
  a2[1] = v4;
}

uint64_t sub_24570F4EC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 800);
  if (v5)
  {
    if (a2)
    {
      if (*(v2 + 792) == a1 && v5 == a2)
      {
        goto LABEL_8;
      }

      v7 = *(v2 + 800);
      if (sub_245748BC0())
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    sub_24571B9BC();
    sub_245747C90();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *(v2 + 792) = a1;
  *(v2 + 800) = a2;
}

uint64_t sub_24570F630()
{
  swift_getKeyPath();
  v4 = v0;
  sub_24571B9BC();
  sub_245747CA0();

  v1 = *(v0 + 808);
  v2 = *(v4 + 816);

  return v1;
}

uint64_t sub_24570F6B4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24571B9BC();
  sub_245747CA0();

  v4 = *(v3 + 816);
  *a2 = *(v3 + 808);
  a2[1] = v4;
}

uint64_t sub_24570F74C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 816);
  if (v5)
  {
    if (a2)
    {
      if (*(v2 + 808) == a1 && v5 == a2)
      {
        goto LABEL_8;
      }

      v7 = *(v2 + 816);
      if (sub_245748BC0())
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    sub_24571B9BC();
    sub_245747C90();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *(v2 + 808) = a1;
  *(v2 + 816) = a2;
}

uint64_t sub_24570F890()
{
  swift_getKeyPath();
  v4 = v0;
  sub_24571B9BC();
  sub_245747CA0();

  v1 = *(v0 + 824);
  v2 = *(v4 + 832);

  return v1;
}

uint64_t sub_24570F914@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24571B9BC();
  sub_245747CA0();

  v4 = *(v3 + 832);
  *a2 = *(v3 + 824);
  a2[1] = v4;
}

uint64_t sub_24570F9AC(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];
  v8 = *a2;

  return a5(v7, v6);
}

uint64_t sub_24570F9F4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 832);
  if (v5)
  {
    if (a2)
    {
      if (*(v2 + 824) == a1 && v5 == a2)
      {
        goto LABEL_8;
      }

      v7 = *(v2 + 832);
      if (sub_245748BC0())
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    sub_24571B9BC();
    sub_245747C90();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *(v2 + 824) = a1;
  *(v2 + 832) = a2;
}

uint64_t sub_24570FB38()
{
  swift_getKeyPath();
  sub_24571B9BC();
  sub_245747CA0();

  v1 = *(v0 + 840);
}

uint64_t sub_24570FBAC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24571B9BC();
  sub_245747CA0();

  *a2 = *(v3 + 840);
}

uint64_t sub_24570FC28(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_24570FC54(v4);
}

uint64_t sub_24570FC54(uint64_t a1)
{
  v3 = *(v1 + 840);

  v4 = sub_2457484B0();

  if (v4)
  {
    v5 = *(v1 + 840);
    *(v1 + 840) = a1;
  }

  else
  {
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    sub_24571B9BC();
    sub_245747C90();
  }
}

uint64_t sub_24570FD78()
{
  swift_getKeyPath();
  v4 = v0;
  sub_24571B9BC();
  sub_245747CA0();

  v1 = *(v0 + 848);
  v2 = *(v4 + 856);

  return v1;
}

uint64_t sub_24570FDFC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24571B9BC();
  sub_245747CA0();

  v4 = *(v3 + 856);
  *a2 = *(v3 + 848);
  a2[1] = v4;
}

uint64_t sub_24570FE94(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];
  v8 = *a2;

  return a5(v7, v6);
}

uint64_t sub_24570FEDC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 848) == a1 && *(v2 + 856) == a2;
  if (v5 || (v6 = *(v2 + 856), (sub_245748BC0() & 1) != 0))
  {
    *(v2 + 848) = a1;
    *(v2 + 856) = a2;
  }

  else
  {
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    sub_24571B9BC();
    sub_245747C90();
  }
}

uint64_t sub_245710014()
{
  swift_getKeyPath();
  sub_24571B9BC();
  sub_245747CA0();

  return *(v0 + 864);
}

uint64_t sub_245710084@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24571B9BC();
  sub_245747CA0();

  *a2 = *(v3 + 864);
  return result;
}

uint64_t sub_245710124(uint64_t result)
{
  if (*(v1 + 864) == (result & 1))
  {
    *(v1 + 864) = result & 1;
  }

  else
  {
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    sub_24571B9BC();
    sub_245747C90();
  }

  return result;
}

uint64_t sub_245710204()
{
  swift_getKeyPath();
  sub_24571B9BC();
  sub_245747CA0();

  v1 = *(v0 + 888);
}

uint64_t sub_245710278@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24571B9BC();
  sub_245747CA0();

  *a2 = *(v3 + 888);
}

uint64_t sub_2457102F4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_245710320(v4);
}

uint64_t sub_245710320(uint64_t a1)
{
  if (!*(v1 + 888))
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    sub_24571B9BC();
    sub_245747C90();
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  v3 = *(v1 + 888);

  v4 = sub_2457484B0();

  if ((v4 & 1) == 0)
  {
    goto LABEL_6;
  }

  v5 = *(v1 + 888);
LABEL_7:
  *(v1 + 888) = a1;
}

uint64_t sub_245710458()
{
  swift_getKeyPath();
  sub_24571B9BC();
  sub_245747CA0();

  return *(v0 + 896);
}

uint64_t sub_2457104C8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24571B9BC();
  sub_245747CA0();

  *a2 = *(v3 + 896);
  return result;
}

uint64_t sub_245710568(uint64_t result)
{
  if (*(v1 + 896) == (result & 1))
  {
    *(v1 + 896) = result & 1;
  }

  else
  {
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    sub_24571B9BC();
    sub_245747C90();
  }

  return result;
}

uint64_t sub_245710648()
{
  swift_getKeyPath();
  sub_24571B9BC();
  sub_245747CA0();

  return *(v0 + 897);
}

uint64_t sub_2457106B8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24571B9BC();
  sub_245747CA0();

  *a2 = *(v3 + 897);
  return result;
}

uint64_t sub_245710758(uint64_t result)
{
  if (*(v1 + 897) == (result & 1))
  {
    *(v1 + 897) = result & 1;
  }

  else
  {
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    sub_24571B9BC();
    sub_245747C90();
  }

  return result;
}

uint64_t sub_245710838()
{
  swift_getKeyPath();
  sub_24571B9BC();
  sub_245747CA0();

  return *(v0 + 898);
}

uint64_t sub_2457108A8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24571B9BC();
  sub_245747CA0();

  *a2 = *(v3 + 898);
  return result;
}

uint64_t sub_245710920(uint64_t result)
{
  if (*(v1 + 898) == (result & 1))
  {
    *(v1 + 898) = result & 1;
  }

  else
  {
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    sub_24571B9BC();
    sub_245747C90();
  }

  return result;
}

id sub_245710A00()
{
  swift_getKeyPath();
  sub_24571B9BC();
  sub_245747CA0();

  v1 = *(v0 + 904);

  return v1;
}

id sub_245710A80@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24571B9BC();
  sub_245747CA0();

  v4 = *(v3 + 904);
  *a2 = v4;

  return v4;
}

void sub_245710B34(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 904);
  sub_2456E730C(0, &qword_27EE24F38, 0x277CE6598);
  v5 = v4;
  v6 = sub_245748A10();

  if (v6)
  {
    v7 = *(v2 + 904);
    *(v2 + 904) = a1;
  }

  else
  {
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    sub_24571B9BC();
    sub_245747C90();
  }
}

uint64_t sub_245710C70()
{
  swift_getKeyPath();
  sub_24571B9BC();
  sub_245747CA0();

  return *(v0 + 912);
}

uint64_t sub_245710CE0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24571B9BC();
  sub_245747CA0();

  *a2 = *(v3 + 912);
  return result;
}

uint64_t sub_245710D58(uint64_t result)
{
  if (*(v1 + 912) == (result & 1))
  {
    *(v1 + 912) = result & 1;
  }

  else
  {
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    sub_24571B9BC();
    sub_245747C90();
  }

  return result;
}

uint64_t sub_245710E38()
{
  swift_getKeyPath();
  sub_24571B9BC();
  sub_245747CA0();

  return *(v0 + 913);
}

uint64_t sub_245710EA8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24571B9BC();
  sub_245747CA0();

  *a2 = *(v3 + 913);
  return result;
}

uint64_t sub_245710F48(uint64_t result)
{
  if (*(v1 + 913) == (result & 1))
  {
    *(v1 + 913) = result & 1;
  }

  else
  {
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    sub_24571B9BC();
    sub_245747C90();
  }

  return result;
}

uint64_t sub_245711028(const void *a1)
{
  *(v1 + 16) = 0;
  *(v1 + 600) = 1;
  *(v1 + 608) = 0;
  *(v1 + 624) = 0;
  *(v1 + 616) = 0;
  *(v1 + 632) = 9;
  v3 = 0uLL;
  *(v1 + 640) = 0u;
  *(v1 + 656) = 0u;
  *(v1 + 672) = 0u;
  *(v1 + 688) = 0u;
  *(v1 + 704) = 0;
  *(v1 + 712) = 0;
  *(v1 + 728) = 0;
  *(v1 + 720) = 0;
  *(v1 + 736) = 0;
  if (qword_27EE242A8 != -1)
  {
    swift_once();
    v3 = 0uLL;
  }

  v4 = unk_27EE24E40;
  *(v1 + 744) = qword_27EE24E38;
  *(v1 + 752) = v4;
  *(v1 + 760) = v3;
  v5 = qword_27EE24298;

  if (v5 != -1)
  {
    swift_once();
  }

  v6 = unk_27EE24E20;
  *(v1 + 776) = qword_27EE24E18;
  *(v1 + 784) = v6;
  *(v1 + 792) = 0u;
  *(v1 + 808) = 0u;
  *(v1 + 824) = 0u;

  *(v1 + 840) = sub_245748490();
  if (qword_27EE242D8 != -1)
  {
    swift_once();
  }

  v7 = unk_27EE24EA0;
  *(v1 + 848) = qword_27EE24E98;
  *(v1 + 856) = v7;
  *(v1 + 864) = 0;

  *(v1 + 872) = sub_245748490();
  *(v1 + 880) = sub_245748490();
  *(v1 + 888) = 0;
  *(v1 + 896) = 256;
  *(v1 + 898) = 1;
  v8 = [objc_allocWithZone(MEMORY[0x277CE6598]) init];
  [v8 setMuted_];
  [v8 setActionAtItemEnd_];
  [v8 setAudiovisualBackgroundPlaybackPolicy_];
  *(v1 + 904) = v8;
  *(v1 + 912) = 0;
  *(v1 + 916) = 1106247680;
  if (qword_27EE24218 != -1)
  {
    swift_once();
  }

  v9 = unk_27EE24D20;
  *(v1 + 920) = qword_27EE24D18;
  *(v1 + 928) = v9;
  *(v1 + 936) = 1;
  *(v1 + 940) = 0;
  *(v1 + 937) = 0;

  sub_245747CB0();
  memcpy((v1 + 24), a1, 0x240uLL);
  return v1;
}

void sub_2457112E0(uint64_t a1)
{
  v3 = (v1 + 600);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE244D0, &unk_245749FF0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v458 - v6;
  v8 = sub_245747C30();
  v463 = *(v8 - 8);
  v9 = v463[8];
  MEMORY[0x28223BE20](v8);
  v462 = &v458 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v464 = type metadata accessor for RGBLivenessModel.PassiveConfiguration(0);
  v11 = *(*(v464 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v464);
  v14 = &v458 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = (&v458 - v16);
  MEMORY[0x28223BE20](v15);
  v19 = &v458 - v18;
  v20 = type metadata accessor for RGBLivenessModel.State(0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v23 = &v458 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24571B948(a1, v23);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_24571C1B8(v23, v17);
      if (v3[264])
      {
        KeyPath = swift_getKeyPath();
        MEMORY[0x28223BE20](KeyPath);
        v53 = v465;
        *(&v458 - 2) = v465;
        *(&v458 - 8) = 0;
        *&v467[0] = v53;
        sub_24571B9BC();
        sub_245747C90();
      }

      else
      {
        v3[264] = 0;
        v53 = v465;
      }

      if (*(v53 + 664))
      {
        v104 = swift_getKeyPath();
        MEMORY[0x28223BE20](v104);
        *(&v458 - 3) = 0;
        *(&v458 - 2) = 0;
        *(&v458 - 4) = v53;
        *&v467[0] = v53;
        sub_24571B9BC();
        sub_245747C90();

        if (*(v53 + 680))
        {
LABEL_82:
          v105 = swift_getKeyPath();
          MEMORY[0x28223BE20](v105);
          *(&v458 - 3) = 0;
          *(&v458 - 2) = 0;
          *(&v458 - 4) = v53;
          *&v467[0] = v53;
          sub_24571B9BC();
          sub_245747C90();

          goto LABEL_156;
        }
      }

      else
      {
        *(v53 + 656) = 0u;
        if (*(v53 + 680))
        {
          goto LABEL_82;
        }
      }

      *(v53 + 672) = 0u;
LABEL_156:
      if (qword_27EE24210 != -1)
      {
        swift_once();
      }

      v199 = qword_27EE24D08;
      v200 = unk_27EE24D10;

      sub_24570E004(v199, v200);
      if (*(v53 + 720))
      {
        v201 = swift_getKeyPath();
        MEMORY[0x28223BE20](v201);
        *(&v458 - 3) = 0;
        *(&v458 - 2) = 0;
        *(&v458 - 4) = v53;
        *&v467[0] = v53;
        sub_24571B9BC();
        sub_245747C90();

        if (v3[105])
        {
LABEL_160:
          v3[105] = 1;
          goto LABEL_163;
        }
      }

      else
      {
        *(v53 + 712) = 0u;
        if (v3[105])
        {
          goto LABEL_160;
        }
      }

      v202 = swift_getKeyPath();
      MEMORY[0x28223BE20](v202);
      *(&v458 - 2) = v53;
      *(&v458 - 8) = 1;
      *&v467[0] = v53;
      sub_24571B9BC();
      sub_245747C90();

LABEL_163:
      if (v3[296] == 1)
      {
        v3[296] = 1;
      }

      else
      {
        v203 = swift_getKeyPath();
        MEMORY[0x28223BE20](v203);
        *(&v458 - 2) = v53;
        *(&v458 - 8) = 1;
        *&v467[0] = v53;
        sub_24571B9BC();
        sub_245747C90();
      }

      v204 = v17[6];
      if (v204)
      {
        v205 = v17[7];
        v206 = v17[5];
        v207 = v17[6];
      }

      else
      {
        v467[0] = *(v53 + 920);
        v205 = *(v53 + 936);
        *&v467[1] = v205;
        v204 = *(&v467[0] + 1);
        v206 = *&v467[0];
        sub_245702E58(v467, v468);
      }

      v208 = swift_getKeyPath();
      MEMORY[0x28223BE20](v208);
      *(&v458 - 4) = v53;
      *(&v458 - 3) = v206;
      *(&v458 - 2) = v204;
      *(&v458 - 1) = v205;
      *&v467[0] = v53;
      sub_24571B9BC();
      sub_245747C90();

      sub_2457029F4(v17, type metadata accessor for RGBLivenessModel.PassiveConfiguration);
      return;
    case 2u:
      sub_24571C1B8(v23, v14);
      sub_2456E7040(&v14[*(v464 + 40)], v7);
      v63 = v463;
      if ((v463[6])(v7, 1, v8) == 1)
      {
        sub_2457029F4(v14, type metadata accessor for RGBLivenessModel.PassiveConfiguration);
        sub_2456E70B0(v7);
        return;
      }

      (v63[4])(v462, v7, v8);
      v133 = swift_getKeyPath();
      v458 = &v458;
      MEMORY[0x28223BE20](v133);
      v134 = v465;
      *(&v458 - 4) = v465;
      *(&v458 - 3) = 0;
      *(&v458 - 2) = 0;
      *(&v458 - 1) = 0;
      v135 = OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessViewConfig___observationRegistrar;
      *&v467[0] = v134;
      v136 = sub_24571B9BC();
      v460 = v135;
      v137 = v3;
      v138 = v466;
      sub_245747C90();

      if (v137[297])
      {
        v139 = swift_getKeyPath();
        *&v466 = &v458;
        MEMORY[0x28223BE20](v139);
        *(&v458 - 2) = v134;
        *(&v458 - 8) = 0;
        *&v467[0] = v134;
        v140 = v136;
        sub_245747C90();
      }

      else
      {
        v140 = v136;
        v137[297] = 0;
      }

      v258 = *v137;
      v461 = v137;
      if (v258)
      {
        v259 = swift_getKeyPath();
        MEMORY[0x28223BE20](v259);
        v260 = v465;
        *(&v458 - 2) = v465;
        *(&v458 - 8) = 0;
        *&v467[0] = v260;
        sub_245747C90();
      }

      else
      {
        *v137 = 0;
      }

      sub_245710320(0);
      v261 = *(v14 + 3);
      v262 = v261;
      sub_24570E8B8(v261);
      v263 = *v14;
      v459 = v140;
      if ((v263 & 1) == 0)
      {
        v268 = v461;
        if (v461[264] == 1)
        {
          v461[264] = 1;
        }

        else
        {
          v376 = swift_getKeyPath();
          MEMORY[0x28223BE20](v376);
          v377 = v465;
          *(&v458 - 2) = v465;
          *(&v458 - 8) = 1;
          *&v467[0] = v377;
          sub_245747C90();
        }

        if (v268[136] == 1)
        {
          v268[136] = 1;
          v378 = v465;
        }

        else
        {
          v379 = swift_getKeyPath();
          MEMORY[0x28223BE20](v379);
          v378 = v465;
          *(&v458 - 2) = v465;
          *(&v458 - 8) = 1;
          *&v467[0] = v378;
          sub_245747C90();
        }

        swift_getKeyPath();
        *&v467[0] = v378;
        sub_245747CA0();

        v380 = *(v378 + 904);
        v381 = objc_allocWithZone(MEMORY[0x277CE65B0]);
        v382 = v380;
        v383 = sub_245747BF0();
        v384 = [v381 initWithURL_];

        [v382 replaceCurrentItemWithPlayerItem_];
        goto LABEL_390;
      }

      *&v466 = v138;
      v264 = v14[*(v464 + 48)];
      swift_getKeyPath();
      if (v264 == 1)
      {
        v265 = v465;
        *&v467[0] = v465;
        sub_245747CA0();

        v266 = v461;
        if ((v461[312] & 1) == 0)
        {
          v267 = swift_getKeyPath();
          v458 = &v458;
          MEMORY[0x28223BE20](v267);
          *(&v458 - 2) = v265;
          *(&v458 - 8) = 1;
          *&v467[0] = v265;
          v138 = v466;
          sub_245747C90();

          if (v266[313] == 1)
          {
            v266[313] = 1;
          }

          else
          {
            v455 = swift_getKeyPath();
            MEMORY[0x28223BE20](v455);
            *(&v458 - 2) = v265;
            *(&v458 - 8) = 1;
            *&v467[0] = v265;
            sub_245747C90();
          }

          swift_getKeyPath();
          *&v467[0] = v265;
          sub_245747CA0();

          [*(v265 + 904) play];
          goto LABEL_390;
        }
      }

      else
      {
        v372 = v465;
        *&v467[0] = v465;
        sub_245747CA0();

        v373 = v461;
        if (v461[312] == 1)
        {
          v374 = swift_getKeyPath();
          v458 = &v458;
          MEMORY[0x28223BE20](v374);
          *(&v458 - 2) = v372;
          *(&v458 - 8) = 0;
          *&v467[0] = v372;
          v138 = v466;
          sub_245747C90();

          if (v373[313])
          {
            v375 = swift_getKeyPath();
            MEMORY[0x28223BE20](v375);
            *(&v458 - 2) = v372;
            *(&v458 - 8) = 0;
            *&v467[0] = v372;
            sub_245747C90();
          }

          else
          {
            v373[313] = 0;
          }

          swift_getKeyPath();
          *&v467[0] = v372;
          sub_245747CA0();

          [*(v372 + 904) pause];
          swift_getKeyPath();
          *&v467[0] = v372;
          sub_245747CA0();

          v456 = *(v372 + 904);
          v457 = *(MEMORY[0x277CC08F0] + 16);
          v467[0] = *MEMORY[0x277CC08F0];
          *&v467[1] = v457;
          [v456 seekToTime_];
          goto LABEL_390;
        }
      }

      v138 = v466;
LABEL_390:
      if (v14[*(v464 + 56)] == 1)
      {
        if (qword_27EE24240 != -1)
        {
          swift_once();
        }

        v385 = qword_27EE24D68;
        v386 = unk_27EE24D70;

        sub_24570DB44(v385, v386);
        if (qword_27EE24248 != -1)
        {
          swift_once();
        }

        v388 = qword_27EE24D78;
        v387 = unk_27EE24D80;

        sub_24570DDA4(v388, v387);
        if (qword_27EE241F0 != -1)
        {
          swift_once();
        }

        v390 = qword_27EE24CC8;
        v389 = unk_27EE24CD0;

        sub_24570E004(v390, v389);
        v391 = 0;
        v392 = 0;
      }

      else
      {
        v393 = *(v14 + 72);
        v394 = *(v14 + 9);
        if (!v394)
        {
          goto LABEL_409;
        }

        v395 = *(v14 + 8);
        v396 = HIBYTE(v394) & 0xF;
        if ((v394 & 0x2000000000000000) == 0)
        {
          v396 = v395 & 0xFFFFFFFFFFFFLL;
        }

        if (v396)
        {
          *&v467[0] = *(v14 + 8);
          *(v467 + 8) = v393;
          sub_245702E58(v467, v468);
          if (qword_27EE24250 != -1)
          {
            swift_once();
          }

          v397 = qword_27EE24D88;
          v398 = unk_27EE24D90;

          sub_24570DB44(v397, v398);
          sub_24570DDA4(v395, v394);
          if (qword_27EE241F0 != -1)
          {
            swift_once();
          }

          v400 = qword_27EE24CC8;
          v399 = unk_27EE24CD0;

          sub_24570E004(v400, v399);
          if (qword_27EE242B0 != -1)
          {
            swift_once();
          }

          v402 = qword_27EE24E48;
          v401 = unk_27EE24E50;

          v391 = v402;
          v392 = v401;
        }

        else
        {
LABEL_409:
          if (qword_27EE24220 != -1)
          {
            swift_once();
          }

          v403 = qword_27EE24D28;
          v404 = unk_27EE24D30;

          sub_24570DB44(v403, v404);
          if (qword_27EE24228 != -1)
          {
            swift_once();
          }

          v406 = qword_27EE24D38;
          v405 = unk_27EE24D40;

          sub_24570DDA4(v406, v405);
          if (qword_27EE24268 != -1)
          {
            swift_once();
          }

          v408 = qword_27EE24DB8;
          v407 = qword_27EE24DC0;

          sub_24570E004(v408, v407);
          if ((v14[16] & 1) != 0 || *(v14 + 1) >= 1)
          {
            if (qword_27EE24258 != -1)
            {
              swift_once();
            }

            v409 = qword_27EE24D98;
            v410 = unk_27EE24DA0;
          }

          else
          {
            v409 = 0;
            v410 = 0;
          }

          v391 = v409;
          v392 = v410;
        }
      }

      sub_24570E644(v391, v392);
      if (v14[*(v464 + 64)] == 1)
      {
        if (v461[137] == 1)
        {
          v461[137] = 1;
        }

        else
        {
          v438 = swift_getKeyPath();
          MEMORY[0x28223BE20](v438);
          v439 = v465;
          *(&v458 - 2) = v465;
          *(&v458 - 8) = 1;
          *&v467[0] = v439;
          sub_245747C90();
        }

        *&v466 = v138;
        if (qword_27EE242F0 != -1)
        {
          swift_once();
        }

        v440 = qword_27EE24EC8;
        v441 = unk_27EE24ED0;

        v442 = v465;
        sub_24570EDE4(v440, v441);
        if (qword_27EE242F8 != -1)
        {
          swift_once();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE24F28, &qword_24574B5C8);
        v443 = swift_allocObject();
        *(v443 + 16) = xmmword_24574A850;
        swift_getKeyPath();
        *&v467[0] = v442;
        sub_245747CA0();

        v444 = *(v442 + 568);
        v445 = *(v442 + 576);
        *(v443 + 56) = MEMORY[0x277D837D0];
        *(v443 + 64) = sub_24571BAB4();
        *(v443 + 32) = v444;
        *(v443 + 40) = v445;

        v446 = sub_2457486D0();
        v448 = v447;

        sub_24570F038(v446, v448);
        if (qword_27EE242B0 != -1)
        {
          swift_once();
        }

        v449 = qword_27EE24E48;
        v450 = unk_27EE24E50;

        sub_24570F4EC(v449, v450);
        if (qword_27EE24308 != -1)
        {
          swift_once();
        }

        v451 = qword_27EE24EF8;
        v452 = unk_27EE24F00;

        sub_24570F9F4(v451, v452);
      }

      if (v461[105])
      {
        v453 = swift_getKeyPath();
        MEMORY[0x28223BE20](v453);
        v454 = v465;
        *(&v458 - 2) = v465;
        *(&v458 - 8) = 0;
        *&v467[0] = v454;
        sub_245747C90();
      }

      else
      {
        v461[105] = 0;
      }

      (v463[1])(v462, v8);
      v175 = type metadata accessor for RGBLivenessModel.PassiveConfiguration;
      v176 = v14;
      goto LABEL_179;
    case 3u:
      if (v3[104] == 1)
      {
        v3[104] = 1;
        v75 = v465;
      }

      else
      {
        v183 = swift_getKeyPath();
        MEMORY[0x28223BE20](v183);
        v75 = v465;
        *(&v458 - 2) = v465;
        *(&v458 - 8) = 1;
        *&v467[0] = v75;
        sub_24571B9BC();
        sub_245747C90();
      }

      if (*(v75 + 720))
      {
        v184 = swift_getKeyPath();
        MEMORY[0x28223BE20](v184);
        *(&v458 - 3) = 0;
        *(&v458 - 2) = 0;
        *(&v458 - 4) = v75;
        *&v467[0] = v75;
        sub_24571B9BC();
        sub_245747C90();
      }

      else
      {
        *(v75 + 712) = 0u;
      }

      goto LABEL_178;
    case 4u:
      v78 = *v23;
      v79 = *(v23 + 2);
      v80 = *(v23 + 3);
      v81 = *(v23 + 4);
      v463 = *(v23 + 1);
      *&v464 = v80;
      v461 = v3;
      if (v78)
      {
        v82 = v465;
      }

      else
      {
        v188 = v79;
        v189 = v465;
        sub_24570E8B8(0);
        if (v3[264])
        {
          v190 = swift_getKeyPath();
          MEMORY[0x28223BE20](v190);
          *(&v458 - 2) = v189;
          *(&v458 - 8) = 0;
          *&v467[0] = v189;
          sub_24571B9BC();
          v191 = v3;
          v192 = v466;
          sub_245747C90();
          *&v466 = v192;
          v3 = v191;
        }

        else
        {
          v3[264] = 0;
        }

        if (v3[136])
        {
          v306 = swift_getKeyPath();
          MEMORY[0x28223BE20](v306);
          *(&v458 - 2) = v189;
          *(&v458 - 8) = 0;
          *&v467[0] = v189;
          sub_24571B9BC();
          v307 = v3;
          v308 = v466;
          sub_245747C90();
          *&v466 = v308;
          v3 = v307;
        }

        else
        {
          v3[136] = 0;
        }

        if (v3[313])
        {
          v309 = swift_getKeyPath();
          MEMORY[0x28223BE20](v309);
          *(&v458 - 2) = v189;
          *(&v458 - 8) = 0;
          *&v467[0] = v189;
          sub_24571B9BC();
          v310 = v3;
          v311 = v466;
          sub_245747C90();
          *&v466 = v311;
          v3 = v310;
        }

        else
        {
          v3[313] = 0;
        }

        if (*v3 == 1)
        {
          *v3 = 1;
        }

        else
        {
          v312 = swift_getKeyPath();
          MEMORY[0x28223BE20](v312);
          *(&v458 - 2) = v189;
          *(&v458 - 8) = 1;
          *&v467[0] = v189;
          sub_24571B9BC();
          v313 = v3;
          v314 = v466;
          sub_245747C90();
          *&v466 = v314;
          v3 = v313;
        }

        if (v3[297] == 1)
        {
          v3[297] = 1;
        }

        else
        {
          v315 = swift_getKeyPath();
          MEMORY[0x28223BE20](v315);
          *(&v458 - 2) = v189;
          *(&v458 - 8) = 1;
          *&v467[0] = v189;
          sub_24571B9BC();
          v316 = v466;
          sub_245747C90();
          *&v466 = v316;
        }

        if (qword_27EE24190 != -1)
        {
          swift_once();
        }

        v317 = qword_27EE24C08;
        v318 = unk_27EE24C10;

        sub_24570DB44(v317, v318);
        if (qword_27EE24198 != -1)
        {
          swift_once();
        }

        v319 = qword_27EE24C18;
        v320 = unk_27EE24C20;

        sub_24570DDA4(v319, v320);
        if (qword_27EE241A0 != -1)
        {
          swift_once();
        }

        v321 = qword_27EE24C28;
        v322 = unk_27EE24C30;

        v323 = v321;
        v82 = v189;
        sub_24570E004(v323, v322);
        sub_24570E644(0, 0);
        v79 = v188;
      }

      v324 = swift_getKeyPath();
      MEMORY[0x28223BE20](v324);
      *(&v458 - 4) = v82;
      *(&v458 - 3) = v79;
      v325 = v464;
      *(&v458 - 2) = v464;
      *(&v458 - 1) = v81;
      v326 = OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessViewConfig___observationRegistrar;
      *&v467[0] = v82;
      sub_24571B9BC();

      *&v466 = v326;
      sub_245747C90();

      if (v325)
      {
        v327 = (v81 >> 8) & 1;
        v328 = v461;
        if ((v327 ^ v461[105]))
        {
LABEL_327:
          v329 = swift_getKeyPath();
          MEMORY[0x28223BE20](v329);
          v330 = v465;
          *(&v458 - 2) = v465;
          *(&v458 - 8) = v327;
          *&v467[0] = v330;
          sub_245747C90();

          return;
        }
      }

      else
      {
        LOBYTE(v327) = 0;
        v328 = v461;
        if (v461[105])
        {
          goto LABEL_327;
        }
      }

      v328[105] = v327;

      return;
    case 5u:
      if (qword_27EE241A8 != -1)
      {
        swift_once();
      }

      v64 = qword_27EE24C38;
      v65 = unk_27EE24C40;

      v37 = v465;
      sub_24570DB44(v64, v65);
      if (*(v37 + 680))
      {
        v66 = swift_getKeyPath();
        MEMORY[0x28223BE20](v66);
        *(&v458 - 3) = 0;
        *(&v458 - 2) = 0;
        *(&v458 - 4) = v37;
        *&v467[0] = v37;
        sub_24571B9BC();
        sub_245747C90();

        if (*(v37 + 696))
        {
LABEL_39:
          v67 = swift_getKeyPath();
          MEMORY[0x28223BE20](v67);
          *(&v458 - 3) = 0;
          *(&v458 - 2) = 0;
          *(&v458 - 4) = v37;
          *&v467[0] = v37;
          sub_24571B9BC();
          sub_245747C90();

          if (v3[104])
          {
LABEL_40:
            v3[104] = 1;
            return;
          }

LABEL_172:
          v209 = swift_getKeyPath();
          MEMORY[0x28223BE20](v209);
          *(&v458 - 2) = v37;
          *(&v458 - 8) = 1;
          *&v467[0] = v37;
          sub_24571B9BC();
LABEL_223:
          sub_245747C90();

          return;
        }
      }

      else
      {
        *(v37 + 672) = 0u;
        if (*(v37 + 696))
        {
          goto LABEL_39;
        }
      }

      *(v37 + 688) = 0u;
      if (v3[104])
      {
        goto LABEL_40;
      }

      goto LABEL_172;
    case 6u:
      v85 = *(v23 + 1);
      v467[0] = *v23;
      v467[1] = v85;
      v467[2] = *(v23 + 2);
      *(&v467[2] + 9) = *(v23 + 41);
      if (v467[0])
      {
        v86 = v465;
      }

      else
      {
        v193 = *(&v467[0] + 1);
        v194 = sub_245730830(*(&v467[0] + 1));
        v86 = v465;
        sub_24570D938(v194);
        if (v3[1] == 1)
        {
          v3[1] = 1;
        }

        else
        {
          v352 = swift_getKeyPath();
          MEMORY[0x28223BE20](v352);
          *(&v458 - 2) = v86;
          *(&v458 - 8) = 1;
          v468[0] = v86;
          sub_24571B9BC();
          v353 = v3;
          v354 = v466;
          sub_245747C90();
          *&v466 = v354;
          v3 = v353;
        }

        if (v3[104])
        {
          v355 = swift_getKeyPath();
          MEMORY[0x28223BE20](v355);
          *(&v458 - 2) = v86;
          *(&v458 - 8) = 0;
          v468[0] = v86;
          sub_24571B9BC();
          v356 = v466;
          sub_245747C90();
        }

        else
        {
          v3[104] = 0;
          v356 = v466;
        }

        if (*&v467[1] < 1)
        {
          if (qword_27EE241A8 != -1)
          {
            swift_once();
          }

          v360 = qword_27EE24C38;

          v357 = v360;
        }

        else
        {
          v357 = sub_24571BB38(v193);
        }

        sub_24570DB44(v357, v358);
        swift_getKeyPath();
        v468[0] = v86;
        sub_24571B9BC();
        sub_245747CA0();

        if (*(v86 + 16) == 1)
        {
          if (qword_27EE241B8 != -1)
          {
            swift_once();
          }

          v361 = qword_27EE24C58;
          v362 = unk_27EE24C60;
        }

        else
        {
          v361 = 0;
          v362 = 0;
        }

        sub_24570DDA4(v361, v362);
        sub_24570E004(0, 0);
        swift_getKeyPath();
        v468[0] = v86;
        sub_245747CA0();

        v363 = 0;
        v364 = 0;
        if ((*(v86 + 16) & 1) == 0)
        {
          if (qword_27EE241B0 != -1)
          {
            swift_once();
          }

          v363 = qword_27EE24C48;
          v364 = unk_27EE24C50;
        }

        *&v466 = v356;
        sub_24570E644(v363, v364);
      }

      swift_getKeyPath();
      v468[0] = v86;
      sub_24571B9BC();
      sub_245747CA0();

      if (*(v86 + 16) == 1 && BYTE8(v467[3]) == 1)
      {
        if (qword_27EE241C0 != -1)
        {
          swift_once();
        }

        v365 = qword_27EE24C68;
        v366 = unk_27EE24C70;

        sub_24570E004(v365, v366);
        if (qword_27EE241C8 != -1)
        {
          swift_once();
        }

        v367 = qword_27EE24C78;
        v368 = unk_27EE24C80;

        sub_24570E644(v367, v368);
      }

      v369 = v467[2];
      v370 = *&v467[3];
      v371 = swift_getKeyPath();
      MEMORY[0x28223BE20](v371);
      *(&v458 - 4) = v86;
      *(&v458 - 3) = v369;
      *(&v458 - 1) = v370;
      v468[0] = v86;

      sub_245747C90();
      sub_2457028DC(v467);

      return;
    case 7u:
      v50 = *(v23 + 1);
      v467[0] = *v23;
      v467[1] = v50;
      v467[2] = *(v23 + 2);
      *(&v467[2] + 9) = *(v23 + 41);
      if (v467[0])
      {
        v51 = v465;
      }

      else
      {
        v51 = v465;
        if (*(v465 + 632) != 9)
        {
          v100 = swift_getKeyPath();
          MEMORY[0x28223BE20](v100);
          *(&v458 - 2) = v51;
          *(&v458 - 8) = 9;
          v468[0] = v51;
          sub_24571B9BC();
          v101 = v3;
          v102 = v466;
          sub_245747C90();
          *&v466 = v102;
          v3 = v101;
        }

        if (v3[1])
        {
          v103 = swift_getKeyPath();
          MEMORY[0x28223BE20](v103);
          *(&v458 - 2) = v51;
          *(&v458 - 8) = 0;
          v468[0] = v51;
          sub_24571B9BC();
          sub_245747C90();
        }

        else
        {
          v3[1] = 0;
        }

        sub_24570E004(0, 0);
        sub_24570E644(0, 0);
      }

      v255 = v467[2];
      v256 = *&v467[3];
      v257 = swift_getKeyPath();
      MEMORY[0x28223BE20](v257);
      *(&v458 - 4) = v51;
      *(&v458 - 3) = v255;
      *(&v458 - 1) = v256;
      v468[0] = v51;
      sub_24571B9BC();

      sub_245747C90();
      sub_2457028DC(v467);
      goto LABEL_303;
    case 8u:
      v83 = *(v23 + 1);
      v467[0] = *v23;
      v467[1] = v83;
      v467[2] = *(v23 + 2);
      *(&v467[2] + 9) = *(v23 + 41);
      v461 = v3;
      if (v467[0])
      {
        v84 = v465;
      }

      else
      {
        v84 = v465;
        if (*(v465 + 16) == 1)
        {
          *(v465 + 16) = 1;
        }

        else
        {
          v333 = swift_getKeyPath();
          MEMORY[0x28223BE20](v333);
          *(&v458 - 2) = v84;
          *(&v458 - 8) = 1;
          v468[0] = v84;
          sub_24571B9BC();
          sub_245747C90();
        }

        if (*(v84 + 632) != 9)
        {
          v334 = swift_getKeyPath();
          MEMORY[0x28223BE20](v334);
          *(&v458 - 2) = v84;
          *(&v458 - 8) = 9;
          v468[0] = v84;
          sub_24571B9BC();
          sub_245747C90();
        }

        if (qword_27EE241B0 != -1)
        {
          swift_once();
        }

        v335 = qword_27EE24C48;
        v336 = unk_27EE24C50;

        sub_24570DB44(v335, v336);
        if (qword_27EE241D0 != -1)
        {
          swift_once();
        }

        v337 = qword_27EE24C88;
        v338 = unk_27EE24C90;

        sub_24570DDA4(v337, v338);
        sub_24570E644(0, 0);
        if (qword_27EE24268 != -1)
        {
          swift_once();
        }

        v339 = qword_27EE24DB8;
        v340 = qword_27EE24DC0;

        sub_24570E004(v339, v340);
      }

      v341 = v467[2];
      v342 = *&v467[3];
      v343 = swift_getKeyPath();
      MEMORY[0x28223BE20](v343);
      *(&v458 - 4) = v84;
      *(&v458 - 3) = v341;
      *(&v458 - 1) = v342;
      v344 = OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessViewConfig___observationRegistrar;
      v468[0] = v84;
      sub_24571B9BC();

      *&v466 = v344;
      sub_245747C90();

      if (*(&v341 + 1))
      {
        v345 = (v342 & 0x100) == 0;
        v346 = v461;
        if ((v461[1] ^ v345))
        {
LABEL_344:
          v347 = v346;
          v348 = v465;
          v349 = swift_getKeyPath();
          MEMORY[0x28223BE20](v349);
          *(&v458 - 2) = v348;
          *(&v458 - 8) = v345;
          v468[0] = v348;
          sub_245747C90();

          goto LABEL_347;
        }
      }

      else
      {
        v346 = v461;
        LOBYTE(v345) = 1;
        if ((v461[1] & 1) == 0)
        {
          goto LABEL_344;
        }
      }

      v347 = v346;
      v348 = v465;
      v346[1] = v345;
LABEL_347:
      if (*(&v341 + 1))
      {
        v350 = (v342 >> 8) & 1;
        if ((v350 ^ v347[105]))
        {
LABEL_349:
          v351 = swift_getKeyPath();
          MEMORY[0x28223BE20](v351);
          *(&v458 - 2) = v348;
          *(&v458 - 8) = v350;
          v468[0] = v348;
          sub_245747C90();

          sub_2457028DC(v467);
          return;
        }
      }

      else
      {
        LOBYTE(v350) = 0;
        if (v347[105])
        {
          goto LABEL_349;
        }
      }

      v347[105] = v350;
      sub_2457028DC(v467);
      return;
    case 9u:
      v45 = *(v23 + 1);
      v467[0] = *v23;
      v467[1] = v45;
      v46 = *(v23 + 3);
      v467[2] = *(v23 + 2);
      v467[3] = v46;
      *&v467[4] = *(v23 + 8);
      if (v467[0])
      {
        v47 = v465;
      }

      else
      {
        v47 = v465;
        if (*(v465 + 632) != 9)
        {
          v93 = swift_getKeyPath();
          MEMORY[0x28223BE20](v93);
          *(&v458 - 2) = v47;
          *(&v458 - 8) = 9;
          v468[0] = v47;
          sub_24571B9BC();
          v94 = v3;
          v95 = v466;
          sub_245747C90();
          *&v466 = v95;
          v3 = v94;
        }

        if (v3[1])
        {
          v96 = swift_getKeyPath();
          MEMORY[0x28223BE20](v96);
          *(&v458 - 2) = v47;
          *(&v458 - 8) = 0;
          v468[0] = v47;
          sub_24571B9BC();
          sub_245747C90();
        }

        else
        {
          v3[1] = 0;
        }

        v242 = sub_24571BD0C(*(&v467[1] + 1));
        sub_24570DB44(v242, v243);
        sub_24570DDA4(0, 0);
        sub_24570E004(0, 0);
        swift_getKeyPath();
        v468[0] = v47;
        sub_24571B9BC();
        sub_245747CA0();

        if (*(v47 + 16) == 1)
        {
          if (qword_27EE241C8 != -1)
          {
            swift_once();
          }

          v244 = &qword_27EE24C78;
        }

        else
        {
          if (qword_27EE241B0 != -1)
          {
            swift_once();
          }

          v244 = &qword_27EE24C48;
        }

        v245 = *v244;
        v246 = v244[1];

        sub_24570E644(v245, v246);
      }

      goto LABEL_302;
    case 0xAu:
      v48 = *(v23 + 1);
      v467[0] = *v23;
      v467[1] = v48;
      v49 = *(v23 + 3);
      v467[2] = *(v23 + 2);
      v467[3] = v49;
      *&v467[4] = *(v23 + 8);
      if (v467[0])
      {
        v47 = v465;
      }

      else
      {
        v47 = v465;
        if (*(v465 + 632) != 9)
        {
          v97 = swift_getKeyPath();
          MEMORY[0x28223BE20](v97);
          *(&v458 - 2) = v47;
          *(&v458 - 8) = 9;
          v468[0] = v47;
          sub_24571B9BC();
          v98 = v3;
          v99 = v466;
          sub_245747C90();
          *&v466 = v99;
          v3 = v98;
        }

        if (v3[1])
        {
          v3[1] = 1;
        }

        else
        {
          v247 = swift_getKeyPath();
          MEMORY[0x28223BE20](v247);
          *(&v458 - 2) = v47;
          *(&v458 - 8) = 1;
          v468[0] = v47;
          sub_24571B9BC();
          v248 = v3;
          v249 = v466;
          sub_245747C90();
          *&v466 = v249;
          v3 = v248;
        }

        if (qword_27EE241D8 != -1)
        {
          swift_once();
        }

        v250 = qword_27EE24C98;
        v251 = unk_27EE24CA0;

        sub_24570DB44(v250, v251);
        sub_24570DDA4(0, 0);
        swift_getKeyPath();
        v468[0] = v47;
        sub_24571B9BC();
        sub_245747CA0();

        v252 = 0;
        v253 = 0;
        if (*(v47 + 16) == 1)
        {
          if (qword_27EE24268 != -1)
          {
            swift_once();
          }

          v252 = qword_27EE24DB8;
          v253 = qword_27EE24DC0;
        }

        sub_24570E004(v252, v253);
        sub_24570E644(0, 0);
        if (v3[298])
        {
          v254 = swift_getKeyPath();
          MEMORY[0x28223BE20](v254);
          *(&v458 - 2) = v47;
          *(&v458 - 8) = 0;
          v468[0] = v47;
          sub_245747C90();
        }

        else
        {
          v3[298] = 0;
        }
      }

      goto LABEL_302;
    case 0xBu:
      v76 = *(v23 + 1);
      v467[0] = *v23;
      v467[1] = v76;
      v77 = *(v23 + 3);
      v467[2] = *(v23 + 2);
      v467[3] = v77;
      *&v467[4] = *(v23 + 8);
      if (v467[0])
      {
        v47 = v465;
      }

      else
      {
        v47 = v465;
        if (*(v465 + 632) != 9)
        {
          v185 = swift_getKeyPath();
          MEMORY[0x28223BE20](v185);
          *(&v458 - 2) = v47;
          *(&v458 - 8) = 9;
          v468[0] = v47;
          sub_24571B9BC();
          v186 = v3;
          v187 = v466;
          sub_245747C90();
          *&v466 = v187;
          v3 = v186;
        }

        if (v3[1])
        {
          v3[1] = 1;
        }

        else
        {
          v290 = swift_getKeyPath();
          MEMORY[0x28223BE20](v290);
          *(&v458 - 2) = v47;
          *(&v458 - 8) = 1;
          v468[0] = v47;
          sub_24571B9BC();
          sub_245747C90();
        }

        if (qword_27EE241E0 != -1)
        {
          swift_once();
        }

        v291 = qword_27EE24CA8;
        v292 = qword_27EE24CB0;

        sub_24570DB44(v291, v292);
        if (*&v467[2] == 2)
        {
          if (qword_27EE241F0 != -1)
          {
            swift_once();
          }

          v293 = qword_27EE24CC8;
          v294 = unk_27EE24CD0;

          sub_24570E004(v293, v294);
          if (qword_27EE241C8 != -1)
          {
            swift_once();
          }

          v295 = qword_27EE24C78;
          v296 = unk_27EE24C80;

          sub_24570E644(v295, v296);
          v297 = sub_24571BF78(*(&v467[1] + 1));
        }

        else
        {
          if (qword_27EE24268 != -1)
          {
            swift_once();
          }

          v299 = qword_27EE24DB8;
          v300 = qword_27EE24DC0;

          sub_24570E004(v299, v300);
          sub_24570E644(0, 0);
          if (qword_27EE241E8 != -1)
          {
            swift_once();
          }

          v301 = qword_27EE24CB8;
          v302 = unk_27EE24CC0;

          v297 = v301;
          v298 = v302;
        }

        sub_24570DDA4(v297, v298);
      }

LABEL_302:
      v303 = v467[3];
      v304 = *&v467[4];
      v305 = swift_getKeyPath();
      MEMORY[0x28223BE20](v305);
      *(&v458 - 4) = v47;
      *(&v458 - 3) = v303;
      *(&v458 - 1) = v304;
      v468[0] = v47;
      sub_24571B9BC();

      sub_245747C90();
      sub_245702888(v467);
LABEL_303:

      return;
    case 0xCu:
      v38 = v23[3];
      if (*v23)
      {
        goto LABEL_219;
      }

      v39 = v23[1];
      v40 = v23[2];
      v41 = v465;
      if (*(v465 + 632) != 9)
      {
        v42 = swift_getKeyPath();
        MEMORY[0x28223BE20](v42);
        *(&v458 - 2) = v41;
        *(&v458 - 8) = 9;
        *&v467[0] = v41;
        sub_24571B9BC();
        v43 = v3;
        v44 = v466;
        sub_245747C90();
        *&v466 = v44;
        v3 = v43;
      }

      if (v3[1])
      {
        v3[1] = 1;
      }

      else
      {
        v219 = swift_getKeyPath();
        MEMORY[0x28223BE20](v219);
        *(&v458 - 2) = v41;
        *(&v458 - 8) = 1;
        *&v467[0] = v41;
        sub_24571B9BC();
        v220 = v3;
        v221 = v466;
        sub_245747C90();
        *&v466 = v221;
        v3 = v220;
      }

      if (v3[104])
      {
        v222 = swift_getKeyPath();
        MEMORY[0x28223BE20](v222);
        *(&v458 - 2) = v41;
        *(&v458 - 8) = 0;
        *&v467[0] = v41;
        sub_24571B9BC();
        v223 = v3;
        v224 = v466;
        sub_245747C90();
        *&v466 = v224;
        v3 = v223;
      }

      else
      {
        v3[104] = 0;
      }

      sub_24570E644(0, 0);
      if (v40)
      {
        if (qword_27EE241F8 != -1)
        {
          swift_once();
        }

        v226 = qword_27EE24CD8;
        v225 = unk_27EE24CE0;
        v227 = qword_27EE24200;

        if (v227 == -1)
        {
          if (!v39)
          {
LABEL_198:
            sub_24570DB44(v226, v225);
            sub_24570DDA4(0, 0);
            if (qword_27EE24268 != -1)
            {
              swift_once();
            }

            v229 = &qword_27EE24DB8;
            goto LABEL_218;
          }
        }

        else
        {
          swift_once();
          if (!v39)
          {
            goto LABEL_198;
          }
        }

        v226 = qword_27EE24CE8;
        v228 = unk_27EE24CF0;

        v225 = v228;
        goto LABEL_198;
      }

      if (qword_27EE242B8 != -1)
      {
        swift_once();
      }

      LODWORD(v464) = v38;
      v230 = unk_27EE24E60;
      v462 = qword_27EE24E58;
      v231 = qword_27EE242C0;

      if (v231 != -1)
      {
        swift_once();
      }

      LODWORD(v463) = v39;
      v461 = v3;
      v233 = qword_27EE24E68;
      v232 = unk_27EE24E70;
      v234 = qword_27EE242C8;

      if (v234 != -1)
      {
        swift_once();
      }

      v236 = qword_27EE24E78;
      v235 = unk_27EE24E80;
      swift_getKeyPath();
      *&v467[0] = v465;
      sub_24571B9BC();

      sub_245747CA0();

      if (v461[298])
      {
        v237 = v236;
      }

      else
      {
        v237 = v233;
      }

      if (v461[298])
      {
        v232 = v235;
      }

      if (v463)
      {
        v230 = v232;
      }

      else
      {
        v237 = v462;
      }

      sub_24570DB44(v237, v230);
      sub_24570DDA4(0, 0);
      if (qword_27EE242D0 != -1)
      {
        swift_once();
      }

      v229 = &qword_27EE24E88;
      v3 = v461;
      v38 = v464;
LABEL_218:
      v238 = *v229;
      v239 = v229[1];

      sub_24570E004(v238, v239);
LABEL_219:
      if (v38)
      {
        if (v3[104] == 1)
        {
          v3[104] = 1;
          return;
        }

        v240 = swift_getKeyPath();
        MEMORY[0x28223BE20](v240);
        v241 = v465;
        *(&v458 - 2) = v465;
        *(&v458 - 8) = 1;
        *&v467[0] = v241;
        sub_24571B9BC();
        goto LABEL_223;
      }

      return;
    case 0xDu:
      v54 = *v23;
      v55 = *(v23 + 2);
      *&v464 = *(v23 + 1);
      v56 = *(v23 + 3);
      v57 = *(v23 + 4);
      v58 = v23[40];
      if (v54)
      {
        if (v58 == 2)
        {
          goto LABEL_31;
        }
      }

      else
      {
        swift_getKeyPath();
        v106 = v465;
        *&v467[0] = v465;
        sub_24571B9BC();
        sub_245747CA0();

        memcpy(v467, (v106 + 24), sizeof(v467));
        v107 = sub_245720840();
        v108 = 880;
        if (v107)
        {
          v108 = 872;
        }

        v109 = *(v106 + v108);

        sub_245710320(v110);
        if (v58 == 2)
        {
LABEL_31:
          if (v3[136])
          {
LABEL_32:
            v59 = swift_getKeyPath();
            MEMORY[0x28223BE20](v59);
            v60 = v3;
            v61 = v465;
            *(&v458 - 2) = v465;
            *(&v458 - 8) = 0;
            *&v467[0] = v61;
            sub_24571B9BC();
            v62 = v466;
            sub_245747C90();
            *&v466 = v62;
            v3 = v60;

            goto LABEL_90;
          }

LABEL_89:
          v3[136] = 0;
LABEL_90:
          if (*v3 == 1)
          {
            *v3 = 1;
            if ((v3[1] & 1) == 0)
            {
              goto LABEL_92;
            }
          }

          else
          {
            v115 = swift_getKeyPath();
            MEMORY[0x28223BE20](v115);
            v116 = v3;
            v117 = v465;
            *(&v458 - 2) = v465;
            *(&v458 - 8) = 1;
            *&v467[0] = v117;
            sub_24571B9BC();
            v118 = v466;
            sub_245747C90();
            *&v466 = v118;
            v3 = v116;

            if ((v116[1] & 1) == 0)
            {
LABEL_92:
              v3[1] = 0;
              if ((v3[104] & 1) == 0)
              {
                goto LABEL_93;
              }

              goto LABEL_97;
            }
          }

          v119 = swift_getKeyPath();
          MEMORY[0x28223BE20](v119);
          v120 = v3;
          v121 = v465;
          *(&v458 - 2) = v465;
          *(&v458 - 8) = 0;
          *&v467[0] = v121;
          sub_24571B9BC();
          v122 = v466;
          sub_245747C90();
          *&v466 = v122;
          v3 = v120;

          if ((v120[104] & 1) == 0)
          {
LABEL_93:
            v3[104] = 0;
            if ((v3[296] & 1) == 0)
            {
LABEL_94:
              v3[296] = 0;
              v114 = v465;
LABEL_99:
              sub_24570E8B8(0);
              v128 = swift_getKeyPath();
              MEMORY[0x28223BE20](v128);
              *(&v458 - 4) = v114;
              *(&v458 - 3) = v55;
              *(&v458 - 2) = v56;
              *(&v458 - 1) = v57;
              *&v467[0] = v114;
              sub_24571B9BC();

              sub_245747C90();

              if (qword_27EE24230 != -1)
              {
                swift_once();
              }

              v129 = qword_27EE24D48;
              v130 = unk_27EE24D50;

              sub_24570DB44(v129, v130);
              sub_24570DDA4(0, 0);
              if (qword_27EE24208 != -1)
              {
                swift_once();
              }

              v131 = qword_27EE24CF8;
              v132 = unk_27EE24D00;

              sub_24570E004(v131, v132);
              sub_24570E644(0, 0);

              return;
            }

LABEL_98:
            v127 = swift_getKeyPath();
            MEMORY[0x28223BE20](v127);
            v114 = v465;
            *(&v458 - 2) = v465;
            *(&v458 - 8) = 0;
            *&v467[0] = v114;
            sub_24571B9BC();
            sub_245747C90();

            goto LABEL_99;
          }

LABEL_97:
          v123 = swift_getKeyPath();
          MEMORY[0x28223BE20](v123);
          v124 = v3;
          v125 = v465;
          *(&v458 - 2) = v465;
          *(&v458 - 8) = 0;
          *&v467[0] = v125;
          sub_24571B9BC();
          v126 = v466;
          sub_245747C90();
          *&v466 = v126;
          v3 = v124;

          if ((v124[296] & 1) == 0)
          {
            goto LABEL_94;
          }

          goto LABEL_98;
        }
      }

      v111 = 880;
      if (v58)
      {
        v111 = 872;
      }

      v112 = *(v465 + v111);

      sub_245710320(v113);
      if (v3[136])
      {
        goto LABEL_32;
      }

      goto LABEL_89;
    case 0xEu:
      if (v3[104] == 1)
      {
        v3[104] = 1;
        v37 = v465;
      }

      else
      {
        v90 = swift_getKeyPath();
        MEMORY[0x28223BE20](v90);
        v37 = v465;
        *(&v458 - 2) = v465;
        *(&v458 - 8) = 1;
        *&v467[0] = v37;
        sub_24571B9BC();
        v91 = v3;
        v92 = v466;
        sub_245747C90();
        *&v466 = v92;
        v3 = v91;
      }

      if (v3[296] != 1)
      {
        goto LABEL_172;
      }

      v3[296] = 1;
      return;
    case 0xFu:
      v68 = *v23;
      v463 = *(v23 + 1);
      v464 = *(v23 + 24);
      v69 = v23[56];
      if (v68)
      {
        v70 = v465;
        goto LABEL_420;
      }

      LODWORD(v462) = v23[56];
      v177 = *(v23 + 2);
      v459 = *(v23 + 6);
      v460 = v177;
      v178 = swift_getKeyPath();
      MEMORY[0x28223BE20](v178);
      v70 = v465;
      *(&v458 - 4) = v465;
      *(&v458 - 3) = 0;
      *(&v458 - 2) = 0;
      *(&v458 - 1) = 0;
      *&v467[0] = v70;
      sub_24571B9BC();
      v461 = v3;
      v179 = v466;
      sub_245747C90();
      v180 = v179;
      v3 = v461;

      v181 = v463;
      v182 = v463;
      sub_24570E8B8(v181);
      if (v3[136] == 1)
      {
        *&v466 = v180;
        v3[136] = 1;
      }

      else
      {
        v269 = swift_getKeyPath();
        MEMORY[0x28223BE20](v269);
        *(&v458 - 2) = v70;
        *(&v458 - 8) = 1;
        *&v467[0] = v70;
        sub_245747C90();
        *&v466 = v180;
        v3 = v461;
      }

      if (v3[264])
      {
        v270 = swift_getKeyPath();
        MEMORY[0x28223BE20](v270);
        *(&v458 - 2) = v70;
        *(&v458 - 8) = 0;
        *&v467[0] = v70;
        v271 = v466;
        sub_245747C90();
        *&v466 = v271;
        v3 = v461;
      }

      else
      {
        v3[264] = 0;
      }

      if (*v3)
      {
        v272 = swift_getKeyPath();
        MEMORY[0x28223BE20](v272);
        *(&v458 - 2) = v70;
        *(&v458 - 8) = 0;
        *&v467[0] = v70;
        v273 = v466;
        sub_245747C90();
        *&v466 = v273;
        v3 = v461;
      }

      else
      {
        *v3 = 0;
      }

      if (v3[104])
      {
        v274 = swift_getKeyPath();
        MEMORY[0x28223BE20](v274);
        *(&v458 - 2) = v70;
        *(&v458 - 8) = 0;
        *&v467[0] = v70;
        v275 = v466;
        sub_245747C90();
        *&v466 = v275;
        v3 = v461;
      }

      else
      {
        v3[104] = 0;
      }

      v276 = v460;
      sub_245710320(0);
      v277 = v464;
      if (v464)
      {
        v278 = BYTE7(v464) & 0xF;
        if ((v464 & 0x2000000000000000) == 0)
        {
          v278 = v276 & 0xFFFFFFFFFFFFLL;
        }

        if (v278)
        {
          *&v467[0] = v276;
          *(v467 + 8) = v464;
          sub_245702E58(v467, v468);
          if (qword_27EE242E0 != -1)
          {
            swift_once();
          }

          v279 = qword_27EE24EA8;
          v280 = unk_27EE24EB0;

          sub_24570DB44(v279, v280);
          sub_24570DDA4(v276, v277);
          if (qword_27EE241F0 != -1)
          {
            swift_once();
          }

          v281 = qword_27EE24CC8;
          v282 = unk_27EE24CD0;

          sub_24570E004(v281, v282);
          if (qword_27EE242B0 != -1)
          {
            swift_once();
          }

          v283 = &qword_27EE24E48;
LABEL_286:
          v288 = *v283;
          v289 = v283[1];

          goto LABEL_419;
        }
      }

      if (qword_27EE24238 != -1)
      {
        swift_once();
      }

      v284 = qword_27EE24D58;
      v285 = unk_27EE24D60;

      sub_24570DB44(v284, v285);
      sub_24570DDA4(0, 0);
      if (qword_27EE24268 != -1)
      {
        swift_once();
      }

      v286 = qword_27EE24DB8;
      v287 = qword_27EE24DC0;

      sub_24570E004(v286, v287);
      if (v459 >= 1)
      {
        if (qword_27EE24260 != -1)
        {
          swift_once();
        }

        v283 = &qword_27EE24DA8;
        goto LABEL_286;
      }

      v288 = 0;
      v289 = 0;
LABEL_419:
      sub_24570E644(v288, v289);
      v69 = v462;
LABEL_420:
      if (v69)
      {
        if (v3[137] == 1)
        {
          v3[137] = 1;
        }

        else
        {
          v411 = swift_getKeyPath();
          MEMORY[0x28223BE20](v411);
          *(&v458 - 2) = v70;
          *(&v458 - 8) = 1;
          *&v467[0] = v70;
          sub_24571B9BC();
          sub_245747C90();
        }

        if (qword_27EE242E8 != -1)
        {
          swift_once();
        }

        v412 = qword_27EE24EB8;
        v413 = unk_27EE24EC0;

        sub_24570EDE4(v412, v413);
        if (qword_27EE242F8 != -1)
        {
          swift_once();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE24F28, &qword_24574B5C8);
        v414 = swift_allocObject();
        *(v414 + 16) = xmmword_24574A850;
        swift_getKeyPath();
        *&v467[0] = v70;
        sub_24571B9BC();
        sub_245747CA0();

        v415 = *(v70 + 568);
        v416 = *(v70 + 576);
        *(v414 + 56) = MEMORY[0x277D837D0];
        *(v414 + 64) = sub_24571BAB4();
        *(v414 + 32) = v415;
        *(v414 + 40) = v416;

        v417 = sub_2457486D0();
        v419 = v418;

        sub_24570F038(v417, v419);
        if (qword_27EE242B0 != -1)
        {
          swift_once();
        }

        v420 = qword_27EE24E48;
        v421 = unk_27EE24E50;

        sub_24570F4EC(v420, v421);
        if (qword_27EE24300 != -1)
        {
          swift_once();
        }

        v422 = qword_27EE24EE8;
        v423 = unk_27EE24EF0;

        sub_24570F9F4(v422, v423);
      }

      return;
    case 0x10u:
      if ((*v23 & 1) == 0)
      {
        if (v3[104] == 1)
        {
          v3[104] = 1;
        }

        else
        {
          v331 = swift_getKeyPath();
          MEMORY[0x28223BE20](v331);
          v332 = v465;
          *(&v458 - 2) = v465;
          *(&v458 - 8) = 1;
          *&v467[0] = v332;
          sub_24571B9BC();
          sub_245747C90();
        }

        sub_24570E644(0, 0);
      }

      return;
    case 0x11u:
      v87 = *v23;
      v88 = v465;
      v89 = *(v465 + 632);
      v461 = v3;
      if (v89 != 9)
      {
        v195 = swift_getKeyPath();
        MEMORY[0x28223BE20](v195);
        *(&v458 - 2) = v88;
        *(&v458 - 8) = 9;
        *&v467[0] = v88;
        sub_24571B9BC();
        sub_245747C90();
      }

      v196 = swift_getKeyPath();
      MEMORY[0x28223BE20](v196);
      *(&v458 - 4) = v88;
      *(&v458 - 3) = 0;
      *(&v458 - 2) = 0;
      *(&v458 - 1) = 0;
      *&v467[0] = v88;
      sub_24571B9BC();
      sub_245747C90();

      v197 = (v87 - 2) < 2 || v87 == 5;
      if (v197)
      {
        if (v461[1] == 1)
        {
          v461[1] = 1;
        }

        else
        {
          v211 = swift_getKeyPath();
          MEMORY[0x28223BE20](v211);
          v212 = v465;
          *(&v458 - 2) = v465;
          *(&v458 - 8) = 1;
          *&v467[0] = v212;
          sub_245747C90();
        }

        if (qword_27EE24270 != -1)
        {
          swift_once();
        }

        v213 = qword_27EE24DC8;
        v214 = qword_27EE24DD0;

        sub_24570DB44(v213, v214);
        if (qword_27EE24278 != -1)
        {
          swift_once();
        }

        v215 = qword_27EE24DD8;
        v216 = unk_27EE24DE0;

        sub_24570DDA4(v215, v216);
        if (qword_27EE24280 != -1)
        {
          swift_once();
        }

        v217 = qword_27EE24DE8;
        v218 = unk_27EE24DF0;

        sub_24570E004(v217, v218);
        sub_24570E644(0, 0);
      }

      else if (v87 == 8)
      {
        v198 = v465;
        if (v461[137] == 1)
        {
          v461[137] = 1;
        }

        else
        {
          v424 = swift_getKeyPath();
          MEMORY[0x28223BE20](v424);
          *(&v458 - 2) = v198;
          *(&v458 - 8) = 1;
          *&v467[0] = v198;
          sub_245747C90();
        }

        if (qword_27EE24288 != -1)
        {
          swift_once();
        }

        v425 = qword_27EE24DF8;
        v426 = unk_27EE24E00;

        sub_24570EDE4(v425, v426);
        if (qword_27EE24290 != -1)
        {
          swift_once();
        }

        v427 = qword_27EE24E08;
        v428 = unk_27EE24E10;

        sub_24570F038(v427, v428);
        if (qword_27EE24298 != -1)
        {
          swift_once();
        }

        v429 = qword_27EE24E18;
        v430 = unk_27EE24E20;

        sub_24570F298(v429, v430);
        if (qword_27EE242A0 != -1)
        {
          swift_once();
        }

        v431 = qword_27EE24E28;
        v432 = unk_27EE24E30;

        sub_24570F74C(v431, v432);
      }

      else
      {
        v359 = v465;
        if (v461[137] == 1)
        {
          v461[137] = 1;
        }

        else
        {
          v433 = swift_getKeyPath();
          MEMORY[0x28223BE20](v433);
          *(&v458 - 2) = v359;
          *(&v458 - 8) = 1;
          *&v467[0] = v359;
          sub_245747C90();
        }

        if (qword_27EE242A8 != -1)
        {
          swift_once();
        }

        v434 = qword_27EE24E38;
        v435 = unk_27EE24E40;

        sub_24570EDE4(v434, v435);
        sub_24570F038(0, 0);
        if (qword_27EE24298 != -1)
        {
          swift_once();
        }

        v436 = qword_27EE24E18;
        v437 = unk_27EE24E20;

        sub_24570F298(v436, v437);
        sub_24570F74C(0, 0);
      }

      return;
    case 0x12u:
      v71 = v465;
      if (*(v465 + 664))
      {
        v72 = swift_getKeyPath();
        MEMORY[0x28223BE20](v72);
        *(&v458 - 3) = 0;
        *(&v458 - 2) = 0;
        *(&v458 - 4) = v71;
        *&v467[0] = v71;
        sub_24571B9BC();
        sub_245747C90();

        if (*(v71 + 680))
        {
          goto LABEL_45;
        }
      }

      else
      {
        *(v465 + 656) = 0u;
        if (*(v71 + 680))
        {
LABEL_45:
          v73 = swift_getKeyPath();
          MEMORY[0x28223BE20](v73);
          *(&v458 - 3) = 0;
          *(&v458 - 2) = 0;
          *(&v458 - 4) = v71;
          *&v467[0] = v71;
          sub_24571B9BC();
          sub_245747C90();

          if (*(v71 + 696))
          {
            goto LABEL_46;
          }

          goto LABEL_175;
        }
      }

      *(v71 + 672) = 0u;
      if (*(v71 + 696))
      {
LABEL_46:
        v74 = swift_getKeyPath();
        MEMORY[0x28223BE20](v74);
        *(&v458 - 3) = 0;
        *(&v458 - 2) = 0;
        *(&v458 - 4) = v71;
        *&v467[0] = v71;
        sub_24571B9BC();
        sub_245747C90();

        if (v3[104])
        {
LABEL_47:
          v3[104] = 1;
          return;
        }

LABEL_176:
        v210 = swift_getKeyPath();
        MEMORY[0x28223BE20](v210);
        *(&v458 - 2) = v71;
        *(&v458 - 8) = 1;
        *&v467[0] = v71;
        sub_24571B9BC();
        sub_245747C90();

        return;
      }

LABEL_175:
      *(v71 + 688) = 0u;
      if (v3[104])
      {
        goto LABEL_47;
      }

      goto LABEL_176;
    case 0x13u:
LABEL_178:
      v175 = type metadata accessor for RGBLivenessModel.State;
      v176 = v23;
      goto LABEL_179;
    case 0x14u:
      return;
    default:
      sub_24571C1B8(v23, v19);
      if ((*v19 & 1) == 0)
      {
        swift_getKeyPath();
        v24 = v465;
        *&v467[0] = v465;
        sub_24571B9BC();
        sub_245747CA0();

        memcpy(v467, (v24 + 24), sizeof(v467));
        v25 = sub_245720840();
        v26 = 880;
        if (v25)
        {
          v26 = 872;
        }

        v27 = *(v24 + v26);

        sub_245710320(v28);
      }

      v29 = v19[*(v464 + 60)];
      if (v29 != 2)
      {
        v197 = (v29 & 1) == 0;
        v30 = 880;
        if (!v197)
        {
          v30 = 872;
        }

        v31 = *(v465 + v30);

        sub_245710320(v32);
      }

      if (v3[264])
      {
        v33 = swift_getKeyPath();
        MEMORY[0x28223BE20](v33);
        v34 = v465;
        *(&v458 - 2) = v465;
        *(&v458 - 8) = 0;
        *&v467[0] = v34;
        sub_24571B9BC();
        v35 = v3;
        v36 = v466;
        sub_245747C90();
        *&v466 = v36;
        v3 = v35;

        if ((v35[136] & 1) == 0)
        {
          goto LABEL_12;
        }

LABEL_107:
        v141 = swift_getKeyPath();
        MEMORY[0x28223BE20](v141);
        v142 = v465;
        *(&v458 - 2) = v465;
        *(&v458 - 8) = 0;
        *&v467[0] = v142;
        sub_24571B9BC();
        v143 = v3;
        v144 = v466;
        sub_245747C90();
        *&v466 = v144;
        v3 = v143;

        if ((v143[313] & 1) == 0)
        {
          goto LABEL_13;
        }

        goto LABEL_108;
      }

      v3[264] = 0;
      if (v3[136])
      {
        goto LABEL_107;
      }

LABEL_12:
      v3[136] = 0;
      if ((v3[313] & 1) == 0)
      {
LABEL_13:
        v3[313] = 0;
        goto LABEL_109;
      }

LABEL_108:
      v145 = swift_getKeyPath();
      MEMORY[0x28223BE20](v145);
      v146 = v465;
      *(&v458 - 2) = v465;
      *(&v458 - 8) = 0;
      *&v467[0] = v146;
      sub_24571B9BC();
      v147 = v3;
      v148 = v466;
      sub_245747C90();
      *&v466 = v148;
      v3 = v147;

LABEL_109:
      if (v3[297] == 1)
      {
        v3[297] = 1;
      }

      else
      {
        v149 = swift_getKeyPath();
        MEMORY[0x28223BE20](v149);
        v150 = v465;
        *(&v458 - 2) = v465;
        *(&v458 - 8) = 1;
        *&v467[0] = v150;
        sub_24571B9BC();
        v151 = v3;
        v152 = v466;
        sub_245747C90();
        *&v466 = v152;
        v3 = v151;
      }

      if (*v3 == 1)
      {
        *v3 = 1;
      }

      else
      {
        v153 = swift_getKeyPath();
        MEMORY[0x28223BE20](v153);
        v154 = v465;
        *(&v458 - 2) = v465;
        *(&v458 - 8) = 1;
        *&v467[0] = v154;
        sub_24571B9BC();
        v155 = v3;
        v156 = v466;
        sub_245747C90();
        *&v466 = v156;
        v3 = v155;
      }

      v157 = v3[296];
      v461 = v3;
      if (v157)
      {
        v158 = swift_getKeyPath();
        MEMORY[0x28223BE20](v158);
        v159 = v465;
        *(&v458 - 2) = v465;
        *(&v458 - 8) = 0;
        *&v467[0] = v159;
        sub_24571B9BC();
        sub_245747C90();
      }

      else
      {
        v3[296] = 0;
        v159 = v465;
      }

      sub_24570E8B8(0);
      v466 = *(v19 + 40);
      v160 = *(v19 + 7);
      v161 = swift_getKeyPath();
      MEMORY[0x28223BE20](v161);
      *(&v458 - 4) = v159;
      *(&v458 - 3) = v466;
      *(&v458 - 1) = v160;
      v162 = OBJC_IVAR____TtC18CoreIDVRGBLiveness21RGBLivenessViewConfig___observationRegistrar;
      *&v467[0] = v159;
      sub_24571B9BC();
      *&v466 = v162;
      sub_245747C90();

      if (qword_27EE24178 != -1)
      {
        swift_once();
      }

      v163 = qword_27EE24BD8;
      v164 = unk_27EE24BE0;

      sub_24570DB44(v163, v164);
      if (qword_27EE24180 != -1)
      {
        swift_once();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE24F28, &qword_24574B5C8);
      v165 = swift_allocObject();
      *(v165 + 16) = xmmword_24574A850;
      swift_getKeyPath();
      *&v467[0] = v159;
      sub_245747CA0();

      memcpy(v467, (v159 + 24), sizeof(v467));
      v166 = sub_245722114();
      v167 = MEMORY[0x277D83B08];
      *(v165 + 56) = MEMORY[0x277D83A90];
      *(v165 + 64) = v167;
      *(v165 + 32) = (v166 / 30.0) * 0.5;
      v168 = sub_2457486D0();
      v170 = v169;

      sub_24570DDA4(v168, v170);
      if (qword_27EE24188 != -1)
      {
        swift_once();
      }

      v171 = qword_27EE24BF8;
      v172 = unk_27EE24C00;

      sub_24570E004(v171, v172);
      sub_24570E644(0, 0);
      v173 = (v19[*(v464 + 44)] ^ 1) & 1;
      if (v173 == v461[105])
      {
        v461[105] = v173;
      }

      else
      {
        v174 = swift_getKeyPath();
        MEMORY[0x28223BE20](v174);
        *(&v458 - 2) = v159;
        *(&v458 - 8) = v173;
        *&v467[0] = v159;
        sub_245747C90();
      }

      v175 = type metadata accessor for RGBLivenessModel.PassiveConfiguration;
      v176 = v19;
LABEL_179:
      sub_2457029F4(v176, v175);
      return;
  }
}