unint64_t sub_2532183CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v25 = a5;
  v26 = a6;
  v24 = a4;
  v22[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v22 - v11;
  v23 = v6;
  v13 = -1 << *(v6 + 32);
  v14 = a2 & ~v13;
  v22[0] = v6 + 64;
  if ((*(v6 + 64 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v18 = *(v9 + 16);
    v17 = v9 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    do
    {
      v16(v12, *(v23 + 48) + v19 * v14, v8);
      sub_253219058(v24, v25);
      v20 = sub_253CD0918();
      (*(v17 - 8))(v12, v8);
      if (v20)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
    }

    while (((*(v22[0] + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
  }

  return v14;
}

unint64_t sub_25321856C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A30E8, &qword_253D48D70);
    v3 = sub_253CD10C8();
    v4 = a1 + 32;

    while (1)
    {
      sub_2532168A0(v4, &v13, &unk_27F5A3B60, &unk_253D4AAD0);
      v5 = v13;
      v6 = v14;
      result = sub_253217D84(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_2531FF150(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_25321869C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5A2AD0, &unk_253D486A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_253218704(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A30E0, &qword_253D48D68);
    v3 = sub_253CD10C8();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_253217D84(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_253218850(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A30D0, &qword_253D48D58);
    v3 = sub_253CD10C8();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_253217D84(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_25321897C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_253CD10C8();

    for (i = (a1 + 48); ; i += 24)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_253217D84(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_253218A70(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5A30C0, &qword_253D48D50);
    v3 = sub_253CD10C8();

    for (i = (a1 + 36); ; i += 2)
    {
      v5 = *(i - 4);
      v6 = *i;
      result = sub_253217F20(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 4 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_253218B70(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_253CD10C8();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      swift_unknownObjectRetain();
      result = sub_253217D84(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_253218C6C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3078, &qword_253D48D10);
    v3 = sub_253CD10C8();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_253217D84(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_253218D68(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5A3080, &qword_253D48D18);
    v3 = sub_253CD10C8();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_253217D84(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_253218E6C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3BC0, &qword_253D48D20);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3090, &unk_253D48D28);
    v8 = sub_253CD10C8();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_2532168A0(v10, v6, &qword_27F5A3BC0, &qword_253D48D20);
      v12 = *v6;
      v13 = v6[1];
      result = sub_253217D84(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = sub_253CD05B8();
      result = (*(*(v19 - 8) + 32))(v18 + *(*(v19 - 8) + 72) * v16, v6 + v9, v19);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_253219058(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2532190FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A30F0, &qword_253D48D78);
    v3 = sub_253CD10C8();
    v4 = a1 + 32;

    while (1)
    {
      sub_2532168A0(v4, &v13, &qword_27F5A30F8, &unk_253D48D80);
      v5 = v13;
      v6 = v14;
      result = sub_253217D84(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_2531FF170(&v15, v3[7] + 40 * result);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 56;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_253219230()
{
  v0 = sub_253CD07E8();
  __swift_allocate_value_buffer(v0, qword_27F5A3100);
  __swift_project_value_buffer(v0, qword_27F5A3100);
  v1 = *MEMORY[0x277D0F1A8];
  sub_253CD0968();
  return sub_253CD07D8();
}

uint64_t sub_2532198CC(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = sub_253CCFEE8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_253CCFEA8();
  v11 = a1;
  v12 = [v11 cameraRecordingEventObserver];
  v13 = sub_253CCFE98();
  [v12 deleteCountersBefore:a4 & 1 date:v13];

  return (*(v7 + 8))(v10, v6);
}

HMDCameraRecordingEventDailySummaryHouseholdLogEventFactory __swiftcall HMDCameraRecordingEventDailySummaryHouseholdLogEventFactory.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  v1 = [v0 init];
  result.cameraRecordingEventObserver = v2;
  result.super.isa = v1;
  return result;
}

uint64_t sub_253219AB8(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_253CD0ED8();
    if (!v2)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      goto LABEL_9;
    }
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x259C00F30](0, a1);
    goto LABEL_6;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v3 = *(a1 + 32);
LABEL_6:
    v4 = v3;
    type metadata accessor for CameraRecordingEventDailySummaryLogEvent();
    if (swift_dynamicCastClass())
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5A3060, &unk_253D48C80);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_253D48DA0;
      *(inited + 32) = 0xD00000000000002BLL;
      *(inited + 40) = 0x8000000253D4E910;
      v6 = CameraRecordingEventDailySummaryLogEvent.serializedLogEvent.getter();
      *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3B80, &qword_253D48DB0);
      *(inited + 48) = v6;
      v7 = sub_25321856C(inited);
      swift_setDeallocating();
      sub_253206054(inited + 32, &unk_27F5A3B60, &unk_253D4AAD0);

      return v7;
    }

LABEL_9:
    if (qword_27F5A2428 == -1)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

  __break(1u);
LABEL_22:
  swift_once();
LABEL_10:
  v9 = sub_253CD07E8();
  __swift_project_value_buffer(v9, qword_27F5A3100);

  v10 = sub_253CD07C8();
  v11 = sub_253CD0C98();

  if (!os_log_type_enabled(v10, v11))
  {
LABEL_17:

    return 0;
  }

  v12 = swift_slowAlloc();
  result = swift_slowAlloc();
  v13 = result;
  *v12 = 138412290;
  if (!v2)
  {
    v14 = 0;
    goto LABEL_16;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    v14 = MEMORY[0x259C00F30](0, a1);
    goto LABEL_16;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v14 = *(a1 + 32);
LABEL_16:
    *(v12 + 4) = v14;
    *v13 = v14;
    _os_log_impl(&dword_2531F8000, v10, v11, "Failed to cast log event: %@ to CameraRecordingDailySummaryLogEvent", v12, 0xCu);
    sub_253206054(v13, &qword_27F5A2AC8, &qword_253D48890);
    MEMORY[0x259C040E0](v13, -1, -1);
    MEMORY[0x259C040E0](v12, -1, -1);
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t sub_253219D6C(uint64_t a1)
{
  sub_253CD0F58();
  if (!*(a1 + 16) || (v2 = sub_253217D40(v14), (v3 & 1) == 0))
  {
    sub_253205FA4(v14);
    goto LABEL_7;
  }

  sub_253205FF8(*(a1 + 56) + 32 * v2, v15);
  sub_253205FA4(v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3B80, &qword_253D48DB0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    if (qword_27F5A2428 != -1)
    {
      swift_once();
    }

    v8 = sub_253CD07E8();
    __swift_project_value_buffer(v8, qword_27F5A3100);
    v9 = sub_253CD07C8();
    v10 = sub_253CD0C98();
    if (!os_log_type_enabled(v9, v10))
    {
      goto LABEL_12;
    }

    v11 = swift_slowAlloc();
    *v11 = 0;
    v12 = "Missing CameraRecordingEventDailySummaryLogEvent in serialized events";
    goto LABEL_11;
  }

  v4 = objc_allocWithZone(type metadata accessor for CameraRecordingEventDailySummaryLogEvent());
  v5 = CameraRecordingEventDailySummaryLogEvent.init(dictionary:)(0xD00000000000002BLL);
  if (v5)
  {
    v6 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A2AE8, &unk_253D4B300);
    result = swift_allocObject();
    *(result + 16) = xmmword_253D48D90;
    *(result + 32) = v6;
    return result;
  }

  if (qword_27F5A2428 != -1)
  {
    swift_once();
  }

  v13 = sub_253CD07E8();
  __swift_project_value_buffer(v13, qword_27F5A3100);
  v9 = sub_253CD07C8();
  v10 = sub_253CD0C98();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    v12 = "Failed to create CameraRecordingEventDailySummaryLogEvent from dictionary";
LABEL_11:
    _os_log_impl(&dword_2531F8000, v9, v10, v12, v11, 2u);
    MEMORY[0x259C040E0](v11, -1, -1);
  }

LABEL_12:

  return 0;
}

uint64_t sub_253219FE0(unint64_t a1, void *a2)
{
  v4 = sub_253CCFF58();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x28223BE20](v4);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    goto LABEL_29;
  }

  v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    v33 = v5;
    v34 = result;
    v32 = a2;
    if (!v10)
    {
      goto LABEL_15;
    }

    if (v10 < 1)
    {
      __break(1u);
      return result;
    }

    v11 = v9;
    if ((a1 & 0xC000000000000001) != 0)
    {
      break;
    }

    a2 = (a1 + 32);
    a1 = type metadata accessor for CameraRecordingEventDailySummaryLogEvent();
    v12 = 0;
    v5 = 0;
    v13 = 0;
    v24 = OBJC_IVAR____TtC19HomeKitDaemonLegacy40CameraRecordingEventDailySummaryLogEvent_numRecordingSessions;
    v9 = OBJC_IVAR____TtC19HomeKitDaemonLegacy40CameraRecordingEventDailySummaryLogEvent_numClipUploads;
    v25 = OBJC_IVAR____TtC19HomeKitDaemonLegacy40CameraRecordingEventDailySummaryLogEvent_totalClipDurationInMilliseconds;
    while (1)
    {
      v26 = *a2;
      result = swift_dynamicCastClass();
      if (result)
      {
        v27 = *(result + v24);
        v15 = __OFADD__(v13, v27);
        v13 += v27;
        if (v15)
        {
          goto LABEL_27;
        }

        v28 = *(result + v9);
        v15 = __OFADD__(v5, v28);
        v5 += v28;
        if (v15)
        {
          goto LABEL_28;
        }

        v29 = *(result + v25);
        v15 = __OFADD__(v12, v29);
        v12 += v29;
        if (v15)
        {
          break;
        }
      }

      ++a2;
      if (!--v10)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    v30 = result;
    v10 = sub_253CD0ED8();
    result = v30;
  }

  v12 = 0;
  v5 = 0;
  v13 = 0;
  a2 = 0;
  while (1)
  {
    MEMORY[0x259C00F30](a2, a1);
    type metadata accessor for CameraRecordingEventDailySummaryLogEvent();
    result = swift_dynamicCastClass();
    if (!result)
    {
      swift_unknownObjectRelease();
      goto LABEL_8;
    }

    v14 = *(result + OBJC_IVAR____TtC19HomeKitDaemonLegacy40CameraRecordingEventDailySummaryLogEvent_numRecordingSessions);
    v15 = __OFADD__(v13, v14);
    v13 += v14;
    if (v15)
    {
      goto LABEL_25;
    }

    v16 = *(result + OBJC_IVAR____TtC19HomeKitDaemonLegacy40CameraRecordingEventDailySummaryLogEvent_numClipUploads);
    v15 = __OFADD__(v5, v16);
    v5 += v16;
    if (v15)
    {
      goto LABEL_26;
    }

    v9 = *(result + OBJC_IVAR____TtC19HomeKitDaemonLegacy40CameraRecordingEventDailySummaryLogEvent_totalClipDurationInMilliseconds);
    swift_unknownObjectRelease();
    v15 = __OFADD__(v12, v9);
    v12 += v9;
    if (v15)
    {
      break;
    }

LABEL_8:
    a2 = (a2 + 1);
    if (v10 == a2)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_15:
  v11 = v9;
  v12 = 0;
  v5 = 0;
  v13 = 0;
LABEL_16:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A2AE8, &unk_253D4B300);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_253D48D90;
  v18 = v33;
  v19 = v34;
  (*(v33 + 16))(v11, v32, v34);
  v20 = type metadata accessor for CameraRecordingEventDailySummaryLogEvent();
  v21 = objc_allocWithZone(v20);
  *&v21[OBJC_IVAR____TtC19HomeKitDaemonLegacy40CameraRecordingEventDailySummaryLogEvent_numRecordingSessions] = v13;
  *&v21[OBJC_IVAR____TtC19HomeKitDaemonLegacy40CameraRecordingEventDailySummaryLogEvent_numClipUploads] = v5;
  *&v21[OBJC_IVAR____TtC19HomeKitDaemonLegacy40CameraRecordingEventDailySummaryLogEvent_totalClipDurationInMilliseconds] = v12;
  v21[OBJC_IVAR____TtC19HomeKitDaemonLegacy40CameraRecordingEventDailySummaryLogEvent_isHouseholdLogEvent] = 1;
  v22 = sub_253CCFF18();
  v35.receiver = v21;
  v35.super_class = v20;
  v23 = objc_msgSendSuper2(&v35, sel_initWithHomeUUID_, v22);

  (*(v18 + 8))(v11, v19);
  *(v17 + 32) = v23;
  return v17;
}

id sub_25321A338()
{
  v1 = v0;
  v62 = sub_253CCFF58();
  v2 = *(v62 - 8);
  v3 = v2[8];
  v4 = MEMORY[0x28223BE20](v62);
  v61 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v60 = &v46 - v6;
  v7 = type metadata accessor for NetworkDetectAccessory();
  v58 = *(v7 - 8);
  v59 = v7;
  v8 = *(v58 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v57 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v46 - v11;
  result = [v1 homes];
  if (result)
  {
    v14 = result;
    sub_253200644(0, &unk_281530D20, off_27971A118);
    v15 = sub_253CD0A58();

    v16 = v15;
    v68 = MEMORY[0x277D84F90];
    if (v15 >> 62)
    {
      goto LABEL_36;
    }

    for (i = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_253CD0ED8())
    {
      v18 = 0;
      v49 = v16 & 0xFFFFFFFFFFFFFF8;
      v50 = v16 & 0xC000000000000001;
      v48 = v16 + 32;
      v54 = (v2 + 2);
      v55 = (v2 + 4);
      v53 = (v2 + 1);
      v46 = i;
      v56 = v12;
      v47 = v16;
      v19 = v60;
      v20 = v57;
      while (1)
      {
        if (v50)
        {
          v22 = MEMORY[0x259C00F30](v18, v16);
          v23 = __OFADD__(v18, 1);
          v24 = v18 + 1;
          if (v23)
          {
            goto LABEL_34;
          }
        }

        else
        {
          if (v18 >= *(v49 + 16))
          {
            goto LABEL_35;
          }

          v22 = *(v48 + 8 * v18);
          v23 = __OFADD__(v18, 1);
          v24 = v18 + 1;
          if (v23)
          {
            goto LABEL_34;
          }
        }

        v51 = v22;
        v52 = v24;
        v25 = [v22 appleMediaAccessories];
        sub_253200644(0, &qword_281530E38, off_27971A018);
        v26 = sub_253CD0A58();

        if (v26 >> 62)
        {
          break;
        }

        v2 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v2)
        {
          goto LABEL_12;
        }

LABEL_5:
        v21 = MEMORY[0x277D84F90];
LABEL_6:

        v2 = &v68;
        sub_25321B0E4(v21);
        v18 = v52;
        v16 = v47;
        if (v52 == v46)
        {
          v45 = v68;
          goto LABEL_38;
        }
      }

      v2 = sub_253CD0ED8();
      if (!v2)
      {
        goto LABEL_5;
      }

LABEL_12:
      v16 = 0;
      v65 = v26 & 0xFFFFFFFFFFFFFF8;
      v66 = v26 & 0xC000000000000001;
      v21 = MEMORY[0x277D84F90];
      v63 = v2;
      v64 = v26;
      while (1)
      {
        if (v66)
        {
          v27 = MEMORY[0x259C00F30](v16, v26);
        }

        else
        {
          if (v16 >= *(v65 + 16))
          {
            goto LABEL_33;
          }

          v27 = *(v26 + 8 * v16 + 32);
        }

        v28 = v27;
        v29 = (v16 + 1);
        if (__OFADD__(v16, 1))
        {
          break;
        }

        v30 = [v27 idsIdentifier];
        if (v30)
        {
          v31 = v30;
          v67 = (v16 + 1);
          v32 = v61;
          sub_253CCFF38();

          v33 = v62;
          (*v55)(v19, v32, v62);
          v34 = [v28 uuid];
          sub_253CCFF38();

          v35 = v59;
          (*v54)(v20 + *(v59 + 20), v19, v33);
          v36 = [v28 identifier];
          v37 = v21;
          v38 = sub_253CD0968();
          v40 = v39;

          (*v53)(v19, v33);
          v41 = *(v35 + 24);
          v12 = v56;
          v42 = (v20 + v41);
          *v42 = v38;
          v42[1] = v40;
          v21 = v37;
          sub_25321B080(v20, v12);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v21 = sub_2532832E4(0, v37[2] + 1, 1, v37);
          }

          v44 = v21[2];
          v43 = v21[3];
          v2 = v63;
          v29 = v67;
          if (v44 >= v43 >> 1)
          {
            v21 = sub_2532832E4(v43 > 1, v44 + 1, 1, v21);
          }

          v21[2] = v44 + 1;
          sub_25321B080(v12, v21 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v44);
          v26 = v64;
        }

        else
        {
        }

        ++v16;
        if (v29 == v2)
        {
          goto LABEL_6;
        }
      }

      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      ;
    }

    v45 = MEMORY[0x277D84F90];
LABEL_38:

    return v45;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_25321A8D0(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A31C0, &qword_253D48DE0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = aBlock - v7;
  v9 = sub_253CCFF18();
  (*(v5 + 16))(v8, a1, v4);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  (*(v5 + 32))(v11 + v10, v8, v4);
  aBlock[4] = sub_25321AFDC;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_25321AB60;
  aBlock[3] = &block_descriptor_1;
  v12 = _Block_copy(aBlock);

  [a2 fetchSetupDiagnosticStateForAccessoryUUID:v9 completion:v12];
  _Block_release(v12);
}

uint64_t sub_25321AA94(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A31B8, &qword_253D4B1B0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v7 = a1;
  v4 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A31C8, &qword_253D48DE8);
  MEMORY[0x259C00030](&v7, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A31C0, &qword_253D48DE0);
  return sub_253CD0AE8();
}

void sub_25321AB60(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

void *sub_25321ABEC()
{
  v0 = [objc_opt_self() driver];
  v1 = sub_2532340C0();

  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = sub_25321EA5C();

  return v2;
}

uint64_t sub_25321AC64(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A31B8, &qword_253D4B1B0);
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25321AD30, 0, 0);
}

uint64_t sub_25321AD30()
{
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  v1[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v2 = *(MEMORY[0x277D859E0] + 4);
  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  *v3 = v0;
  v3[1] = sub_25321AE20;
  v4 = *(v0 + 56);
  v5 = *(v0 + 40);

  return MEMORY[0x2822007B8](v4, 0, 0, 0xD000000000000023, 0x8000000253D4E970, sub_25321AFD4, v1, v5);
}

uint64_t sub_25321AE20()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 64);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_25321AF38, 0, 0);
}

uint64_t sub_25321AF38()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  sub_253CD00D8();
  (*(v2 + 8))(v1, v3);
  v4 = v0[2];

  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_25321AFDC(void *a1)
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A31C0, &qword_253D48DE0) - 8) + 80);

  return sub_25321AA94(a1);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_25321B080(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NetworkDetectAccessory();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25321B0E4(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v16 = v4 + v2;
  }

  else
  {
    v16 = v4;
  }

  v3 = sub_2532832E4(isUniquelyReferenced_nonNull_native, v16, 1, v3);
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v9 = (v3[3] >> 1) - v3[2];
  result = type metadata accessor for NetworkDetectAccessory();
  v10 = *(result - 8);
  if (v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = *(v10 + 72);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v13 = v3[2];
  v14 = __OFADD__(v13, v2);
  v15 = v13 + v2;
  if (!v14)
  {
    v3[2] = v15;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_25321B210(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_2532836C0(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_25321B304()
{
  v0 = [objc_opt_self() driver];
  v1 = sub_2532340C0();

  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = *&v1[OBJC_IVAR___HMDDiscoveryController_visibleSFDevices];

  os_unfair_lock_lock((v2 + 24));
  v3 = *(v2 + 16);

  os_unfair_lock_unlock((v2 + 24));

  v4 = *(v3 + 16);
  if (!v4)
  {

    return MEMORY[0x277D84F90];
  }

  v5 = sub_253221A3C(*(v3 + 16), 0);
  v6 = *(sub_253CD01C8() - 8);
  v7 = sub_253221B88(&v9, (v5 + ((*(v6 + 80) + 32) & ~*(v6 + 80))), v4, v3);
  result = sub_25320C5EC();
  if (v7 == v4)
  {

    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25321B450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_25320C438;

  return sub_25321B4EC(a5);
}

uint64_t sub_25321B4EC(uint64_t a1)
{
  v2[20] = a1;
  v2[21] = v1;
  v3 = sub_253CCFF58();
  v2[22] = v3;
  v4 = *(v3 - 8);
  v2[23] = v4;
  v5 = *(v4 + 64) + 15;
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25321B5B8, 0, 0);
}

uint64_t sub_25321B5B8()
{
  v1 = [*(v0 + 160) dataForKey_];
  if (!v1)
  {
    v35 = *(v0 + 160);
    type metadata accessor for HMError(0);
    *(v0 + 152) = 3;
    sub_253276CC0(MEMORY[0x277D84F90]);
    sub_25321C694();
    sub_253CCFDF8();
    v36 = *(v0 + 144);
    v37 = sub_253CCFE08();

    [v35 respondWithError_];
    goto LABEL_10;
  }

  v2 = *(v0 + 168);
  v3 = v1;
  v4 = sub_253CCFE78();
  v6 = v5;

  v7 = sub_25321BB38(v4, v6);
  if (!v7)
  {
    goto LABEL_8;
  }

  v9 = v7;
  v10 = v8;
  if (([*(v0 + 160) isEntitledForSPIAccess] & 1) == 0)
  {
    v11 = *(v0 + 160);
    v12 = [v10 vendorInfo];
    LODWORD(v11) = [v11 isEntitledForVendorAccessForAccessoryWithVendorInfo_];

    if (!v11)
    {

LABEL_8:
      [*(v0 + 160) respondWithSuccess];
      v33 = v4;
      v34 = v6;
      goto LABEL_9;
    }
  }

  v13 = *(v0 + 200);
  v42 = *(v0 + 192);
  v46 = v4;
  v15 = *(v0 + 176);
  v14 = *(v0 + 184);
  v45 = *(v0 + 160);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5A3060, &unk_253D48C80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_253D48A50;
  v17 = *MEMORY[0x277CD0640];
  *(inited + 32) = sub_253CD0968();
  *(inited + 40) = v18;
  v19 = [v9 uuid];
  v44 = v9;
  v20 = v10;
  v21 = v19;
  sub_253CCFF38();

  v22 = sub_253CCFF08();
  v43 = v6;
  v24 = v23;
  v25 = *(v14 + 8);
  v25(v13, v15);
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v22;
  *(inited + 56) = v24;
  v26 = *MEMORY[0x277CCF0B0];
  *(inited + 80) = sub_253CD0968();
  *(inited + 88) = v27;
  v28 = [v20 uuid];
  sub_253CCFF38();

  v29 = sub_253CCFF08();
  v31 = v30;
  v25(v42, v15);
  *(inited + 120) = MEMORY[0x277D837D0];
  *(inited + 96) = v29;
  *(inited + 104) = v31;
  sub_25321856C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5A3B60, &unk_253D4AAD0);
  swift_arrayDestroy();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A31B0, &unk_253D4AB60);
  v32 = sub_253CD08B8();

  [v45 respondWithPayload_];

  v33 = v46;
  v34 = v43;
LABEL_9:
  sub_25321C6EC(v33, v34);
LABEL_10:
  v39 = *(v0 + 192);
  v38 = *(v0 + 200);

  v40 = *(v0 + 8);

  return v40();
}

uint64_t sub_25321BA78(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_25320C438;

  return sub_25321B450(a1, v4, v5, v7, v6);
}

char *sub_25321BB38(uint64_t a1, unint64_t a2)
{
  __s1[2] = *MEMORY[0x277D85DE8];
  v4 = [v2 homes];
  if (!v4)
  {
    goto LABEL_201;
  }

  v5 = v4;
  sub_253200644(0, &unk_281530D20, off_27971A118);
  v6 = sub_253CD0A58();

  v7 = v6;
  if (v6 >> 62)
  {
    goto LABEL_178;
  }

  v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v8)
  {
LABEL_179:

    result = 0;
    goto LABEL_180;
  }

  while (1)
  {
    v9 = 0;
    v93 = v7 + 32;
    v94 = v7 & 0xFFFFFFFFFFFFFF8;
    v10 = !a1 && a2 == 0xC000000000000000;
    v11 = !v10;
    v108 = v11;
    v12 = a2 >> 62;
    v13 = __OFSUB__(HIDWORD(a1), a1);
    v103 = v13;
    v102 = v7 & 0xC000000000000001;
    __n = BYTE6(a2);
    v95 = (a1 >> 32) - a1;
    v96 = a1 >> 32;
    v107 = a2;
    v105 = a2 >> 62;
    v101 = v8;
    while (1)
    {
      if (v102)
      {
        v14 = MEMORY[0x259C00F30](v9);
        goto LABEL_19;
      }

      if (v9 >= *(v94 + 16))
      {
        __break(1u);
LABEL_182:
        __break(1u);
LABEL_183:
        __break(1u);
LABEL_184:
        __break(1u);
LABEL_185:
        __break(1u);
LABEL_186:
        __break(1u);
LABEL_187:
        __break(1u);
LABEL_188:
        __break(1u);
LABEL_189:
        __break(1u);
LABEL_190:
        __break(1u);
LABEL_191:
        __break(1u);
LABEL_192:
        __break(1u);
LABEL_193:
        __break(1u);
LABEL_194:
        __break(1u);
LABEL_195:
        __break(1u);
LABEL_196:
        __break(1u);
LABEL_197:
        __break(1u);
LABEL_198:
        __break(1u);
LABEL_199:
        __break(1u);
LABEL_200:
        __break(1u);
LABEL_201:
        __break(1u);
      }

      v14 = *(v93 + 8 * v9);
LABEL_19:
      v15 = v14;
      v16 = __OFADD__(v9, 1);
      v17 = v9 + 1;
      if (v16)
      {
        goto LABEL_175;
      }

      v18 = [v14 accessories];
      sub_253200644(0, &qword_281530EA0, off_279719FE0);
      v19 = sub_253CD0A58();

      v106 = v15;
      v104 = v17;
      if (v19 >> 62)
      {
        break;
      }

      v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v20)
      {
        goto LABEL_22;
      }

LABEL_14:

      v9 = v104;
      if (v104 == v101)
      {
        goto LABEL_179;
      }
    }

    v20 = sub_253CD0ED8();
    if (!v20)
    {
      goto LABEL_14;
    }

LABEL_22:
    v21 = 0;
    v22 = v19 & 0xC000000000000001;
    v111 = v20;
LABEL_25:
    if (v22)
    {
      v23 = MEMORY[0x259C00F30](v21, v19);
    }

    else
    {
      if (v21 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_172;
      }

      v23 = *(v19 + 8 * v21 + 32);
    }

    v24 = v23;
    v25 = v21 + 1;
    if (!__OFADD__(v21, 1))
    {
      break;
    }

    __break(1u);
LABEL_172:
    __break(1u);
LABEL_173:
    __break(1u);
LABEL_174:
    __break(1u);
LABEL_175:
    __break(1u);
LABEL_176:
    __break(1u);
LABEL_177:
    __break(1u);
LABEL_178:
    v86 = v7;
    v87 = sub_253CD0ED8();
    v7 = v86;
    v8 = v87;
    if (!v87)
    {
      goto LABEL_179;
    }
  }

  objc_opt_self();
  v26 = swift_dynamicCastObjCClass();
  if (!v26 || (v27 = v26, ![v26 isPrimary]))
  {

    goto LABEL_24;
  }

  v28 = [v27 publicKey];
  v29 = sub_253CCFE78();
  v31 = v30;

  v32 = v31 >> 62;
  if (v31 >> 62 != 3)
  {
    if (v32 > 1)
    {
      v22 = v19 & 0xC000000000000001;
      if (v32 != 2)
      {
        v36 = 0;
        if (v12 > 1)
        {
          goto LABEL_60;
        }

        goto LABEL_56;
      }

      v38 = *(v29 + 16);
      v37 = *(v29 + 24);
      v16 = __OFSUB__(v37, v38);
      v36 = v37 - v38;
      if (v16)
      {
        goto LABEL_176;
      }
    }

    else
    {
      v22 = v19 & 0xC000000000000001;
      if (!v32)
      {
        v36 = BYTE6(v31);
        if (v12 <= 1)
        {
          goto LABEL_56;
        }

LABEL_60:
        if (v12 == 2)
        {
          v41 = *(a1 + 16);
          v40 = *(a1 + 24);
          v16 = __OFSUB__(v40, v41);
          v39 = v40 - v41;
          if (v16)
          {
            goto LABEL_174;
          }

          goto LABEL_62;
        }

        if (!v36)
        {
          goto LABEL_166;
        }

        goto LABEL_74;
      }

      LODWORD(v36) = HIDWORD(v29) - v29;
      if (__OFSUB__(HIDWORD(v29), v29))
      {
        goto LABEL_177;
      }

      v36 = v36;
    }

    if (v12 > 1)
    {
      goto LABEL_60;
    }

    goto LABEL_56;
  }

  if (v29)
  {
    v33 = 0;
  }

  else
  {
    v33 = v31 == 0xC000000000000000;
  }

  v35 = !v33 || v12 < 3;
  if (((v35 | v108) & 1) == 0)
  {

    v84 = 0;
    v85 = 0xC000000000000000;
    goto LABEL_168;
  }

  v36 = 0;
  v22 = v19 & 0xC000000000000001;
  if (v12 > 1)
  {
    goto LABEL_60;
  }

LABEL_56:
  v39 = __n;
  if (v12)
  {
    v39 = HIDWORD(a1) - a1;
    if (v103)
    {
      goto LABEL_173;
    }
  }

LABEL_62:
  if (v36 != v39)
  {
LABEL_74:

    sub_25321C6EC(v29, v31);
    v20 = v111;
    goto LABEL_24;
  }

  if (v36 < 1)
  {
    goto LABEL_166;
  }

  if (v32 <= 1)
  {
    if (!v32)
    {
      __s1[0] = v29;
      LOWORD(__s1[1]) = v31;
      BYTE2(__s1[1]) = BYTE2(v31);
      BYTE3(__s1[1]) = BYTE3(v31);
      BYTE4(__s1[1]) = BYTE4(v31);
      BYTE5(__s1[1]) = BYTE5(v31);
      if (v12)
      {
        if (v12 == 1)
        {
          if (v96 < a1)
          {
            goto LABEL_185;
          }

          v42 = sub_253CCFD68();
          if (!v42)
          {
            goto LABEL_209;
          }

          v43 = v42;
          v44 = sub_253CCFD88();
          if (__OFSUB__(a1, v44))
          {
            goto LABEL_191;
          }

          v45 = (a1 - v44 + v43);
          v46 = sub_253CCFD78();
          if (!v45)
          {
            goto LABEL_207;
          }

LABEL_129:
          if (v46 >= v95)
          {
            v69 = (a1 >> 32) - a1;
          }

          else
          {
            v69 = v46;
          }

LABEL_132:
          v73 = memcmp(__s1, v45, v69);
          sub_25321C6EC(v29, v31);
          a2 = v107;
          v12 = v105;
          if (!v73)
          {
            goto LABEL_169;
          }

LABEL_163:

          v20 = v111;
          v22 = v19 & 0xC000000000000001;
LABEL_24:
          ++v21;
          if (v25 == v20)
          {
            goto LABEL_14;
          }

          goto LABEL_25;
        }

        v67 = *(a1 + 16);
        v100 = *(a1 + 24);
        v45 = sub_253CCFD68();
        if (v45)
        {
          v68 = sub_253CCFD88();
          if (__OFSUB__(v67, v68))
          {
            goto LABEL_196;
          }

          v45 += v67 - v68;
        }

        v16 = __OFSUB__(v100, v67);
        v56 = &v100[-v67];
        if (v16)
        {
          goto LABEL_187;
        }

        v57 = sub_253CCFD78();
        if (!v45)
        {
          goto LABEL_208;
        }

LABEL_122:
        if (v57 >= v56)
        {
          v69 = v56;
        }

        else
        {
          v69 = v57;
        }

        goto LABEL_132;
      }

LABEL_91:
      v112 = a1;
      v113 = a2;
      v114 = BYTE2(a2);
      v115 = BYTE3(a2);
      v116 = BYTE4(a2);
      v117 = BYTE5(a2);
      v58 = __s1;
      v59 = &v112;
LABEL_144:
      v78 = memcmp(v58, v59, __n);
      sub_25321C6EC(v29, v31);
      if (!v78)
      {
        goto LABEL_169;
      }

      goto LABEL_163;
    }

    if (v29 > v29 >> 32)
    {
      goto LABEL_182;
    }

    v51 = sub_253CCFD68();
    if (v51)
    {
      v52 = v51;
      v53 = sub_253CCFD88();
      if (__OFSUB__(v29, v53))
      {
        goto LABEL_184;
      }

      v98 = (v29 - v53 + v52);
    }

    else
    {
      v98 = 0;
    }

    sub_253CCFD78();
    v12 = v105;
    a2 = v107;
    if (v105 != 2)
    {
      if (v105 == 1)
      {
        if (v96 < a1)
        {
          goto LABEL_193;
        }

        v60 = sub_253CCFD68();
        if (v60)
        {
          v65 = sub_253CCFD88();
          if (__OFSUB__(a1, v65))
          {
            goto LABEL_200;
          }

          v60 += a1 - v65;
        }

        v66 = sub_253CCFD78();
        v63 = (a1 >> 32) - a1;
        if (v66 < v95)
        {
          v63 = v66;
        }

        result = v98;
        if (!v98)
        {
          goto LABEL_211;
        }

        if (!v60)
        {
          goto LABEL_210;
        }

LABEL_115:
        if (result == v60)
        {
          goto LABEL_166;
        }

LABEL_162:
        v83 = memcmp(result, v60, v63);
        sub_25321C6EC(v29, v31);
        v12 = v105;
        if (v83)
        {
          goto LABEL_163;
        }

LABEL_169:

LABEL_170:
        result = v106;
LABEL_180:
        v88 = *MEMORY[0x277D85DE8];
        return result;
      }

      v58 = v98;
      __s1[0] = a1;
      LOWORD(__s1[1]) = v107;
      *(&__s1[1] + 2) = *(&v107 + 2);
      if (!v98)
      {
        goto LABEL_204;
      }

LABEL_143:
      v59 = __s1;
      goto LABEL_144;
    }

    v90 = *(a1 + 24);
    v92 = *(a1 + 16);
    v60 = sub_253CCFD68();
    if (v60)
    {
      v76 = sub_253CCFD88();
      v77 = v92;
      if (__OFSUB__(v92, v76))
      {
        goto LABEL_199;
      }

      v60 += v92 - v76;
    }

    else
    {
      v77 = v92;
    }

    v81 = v90 - v77;
    if (__OFSUB__(v90, v77))
    {
      goto LABEL_194;
    }

    v82 = sub_253CCFD78();
    if (v82 >= v81)
    {
      v63 = v81;
    }

    else
    {
      v63 = v82;
    }

    result = v98;
    if (!v98)
    {
      goto LABEL_213;
    }

    if (!v60)
    {
      goto LABEL_212;
    }

    goto LABEL_161;
  }

  if (v32 == 2)
  {
    v47 = *(v29 + 16);
    v48 = sub_253CCFD68();
    if (v48)
    {
      v49 = v48;
      v50 = sub_253CCFD88();
      if (__OFSUB__(v47, v50))
      {
        goto LABEL_183;
      }

      v97 = (v47 - v50 + v49);
    }

    else
    {
      v97 = 0;
    }

    a2 = v107;
    sub_253CCFD78();
    v12 = v105;
    if (v105 != 2)
    {
      if (v105 == 1)
      {
        if (v96 < a1)
        {
          goto LABEL_189;
        }

        v60 = sub_253CCFD68();
        if (v60)
        {
          v61 = sub_253CCFD88();
          if (__OFSUB__(a1, v61))
          {
            goto LABEL_198;
          }

          v60 += a1 - v61;
        }

        v62 = sub_253CCFD78();
        v63 = (a1 >> 32) - a1;
        if (v62 < v95)
        {
          v63 = v62;
        }

        result = v97;
        if (!v97)
        {
          goto LABEL_215;
        }

        if (!v60)
        {
          goto LABEL_214;
        }

        goto LABEL_115;
      }

      v58 = v97;
      __s1[0] = a1;
      LOWORD(__s1[1]) = v107;
      *(&__s1[1] + 2) = *(&v107 + 2);
      if (!v97)
      {
        goto LABEL_205;
      }

      goto LABEL_143;
    }

    v89 = *(a1 + 24);
    v91 = *(a1 + 16);
    v60 = sub_253CCFD68();
    if (v60)
    {
      v74 = sub_253CCFD88();
      v75 = v91;
      if (__OFSUB__(v91, v74))
      {
        goto LABEL_197;
      }

      v60 += v91 - v74;
    }

    else
    {
      v75 = v91;
    }

    v79 = v89 - v75;
    if (__OFSUB__(v89, v75))
    {
      goto LABEL_192;
    }

    v80 = sub_253CCFD78();
    if (v80 >= v79)
    {
      v63 = v79;
    }

    else
    {
      v63 = v80;
    }

    result = v97;
    if (!v97)
    {
      goto LABEL_217;
    }

    if (!v60)
    {
      goto LABEL_216;
    }

LABEL_161:
    a2 = v107;
    if (result != v60)
    {
      goto LABEL_162;
    }

LABEL_166:

    v84 = v29;
    v85 = v31;
LABEL_168:
    sub_25321C6EC(v84, v85);
    goto LABEL_170;
  }

  memset(__s1, 0, 14);
  if (!v12)
  {
    goto LABEL_91;
  }

  if (v12 == 2)
  {
    v54 = *(a1 + 16);
    v99 = *(a1 + 24);
    v45 = sub_253CCFD68();
    if (v45)
    {
      v55 = sub_253CCFD88();
      if (__OFSUB__(v54, v55))
      {
        goto LABEL_195;
      }

      v45 += v54 - v55;
    }

    v16 = __OFSUB__(v99, v54);
    v56 = &v99[-v54];
    if (v16)
    {
      goto LABEL_188;
    }

    v57 = sub_253CCFD78();
    if (!v45)
    {
      goto LABEL_206;
    }

    goto LABEL_122;
  }

  if (v96 < a1)
  {
    goto LABEL_186;
  }

  v70 = sub_253CCFD68();
  if (v70)
  {
    v71 = v70;
    v72 = sub_253CCFD88();
    if (__OFSUB__(a1, v72))
    {
      goto LABEL_190;
    }

    v45 = (a1 - v72 + v71);
    v46 = sub_253CCFD78();
    if (!v45)
    {
      goto LABEL_203;
    }

    goto LABEL_129;
  }

  sub_253CCFD78();
LABEL_203:
  __break(1u);
LABEL_204:
  __break(1u);
LABEL_205:
  __break(1u);
LABEL_206:
  __break(1u);
LABEL_207:
  __break(1u);
LABEL_208:
  __break(1u);
LABEL_209:
  result = sub_253CCFD78();
  __break(1u);
LABEL_210:
  __break(1u);
LABEL_211:
  __break(1u);
LABEL_212:
  __break(1u);
LABEL_213:
  __break(1u);
LABEL_214:
  __break(1u);
LABEL_215:
  __break(1u);
LABEL_216:
  __break(1u);
LABEL_217:
  __break(1u);
  return result;
}

unint64_t sub_25321C694()
{
  result = qword_27F5A28B8;
  if (!qword_27F5A28B8)
  {
    type metadata accessor for HMError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5A28B8);
  }

  return result;
}

uint64_t sub_25321C6EC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

id sub_25321C81C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, SEL *a5)
{
  v5 = *a4;
  v6 = [objc_opt_self() *a5];

  return v6;
}

id sub_25321C8F0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WidgetTimelineRefresherDataSource();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_25321CA58(void *a1, void *a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC19HomeKitDaemonLegacy28AccessoryInfoFetchController_messageDispatcher);
  *(v2 + OBJC_IVAR____TtC19HomeKitDaemonLegacy28AccessoryInfoFetchController_messageDispatcher) = a1;
  v5 = a1;

  v6 = *(v2 + OBJC_IVAR____TtC19HomeKitDaemonLegacy28AccessoryInfoFetchController_remoteEventRouterClientController);
  *(v2 + OBJC_IVAR____TtC19HomeKitDaemonLegacy28AccessoryInfoFetchController_remoteEventRouterClientController) = a2;
  v7 = a2;

  v8 = [objc_opt_self() policyWithEntitlements_];
  v9 = *MEMORY[0x277CCEB08];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A2AE8, &unk_253D4B300);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_253D48D90;
  *(v10 + 32) = v8;
  sub_25321CDA4();
  v11 = v8;
  v12 = sub_253CD0A38();

  [v5 registerForMessage:v9 receiver:v2 policies:v12 selector:sel_handleFetchWithMessage_];
}

id sub_25321CBD4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AccessoryInfoFetchController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for AccessoryInfoFetchController()
{
  result = qword_281531068;
  if (!qword_281531068)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25321CCFC()
{
  result = sub_253CCFF58();
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

unint64_t sub_25321CDA4()
{
  result = qword_281530E60;
  if (!qword_281530E60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281530E60);
  }

  return result;
}

void sub_25321CE2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, SEL *a6)
{
  if (a1)
  {
    v9[4] = a1;
    v9[5] = a2;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 1107296256;
    v9[2] = sub_253222A08;
    v9[3] = a5;
    v8 = _Block_copy(v9);
  }

  else
  {
    v8 = 0;
  }

  [v6 *a6];
  _Block_release(v8);
}

void sub_25321CED4(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v4[4] = a1;
    v4[5] = a2;
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 1107296256;
    v4[2] = sub_25321CF7C;
    v4[3] = &block_descriptor_124;
    v3 = _Block_copy(v4);
  }

  else
  {
    v3 = 0;
  }

  [v2 setDeviceChangedHandler_];
  _Block_release(v3);
}

void sub_25321CF90(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t sub_25321D020()
{
  v1 = [v0 activeDevices];
  sub_253200644(0, &qword_281530E40, 0x277D44170);
  v2 = sub_253CD0A58();

  return v2;
}

void sub_25321D0B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, SEL *a6)
{
  if (a1)
  {
    v9[4] = a1;
    v9[5] = a2;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 1107296256;
    v9[2] = sub_25321E9B8;
    v9[3] = a5;
    v8 = _Block_copy(v9);
  }

  else
  {
    v8 = 0;
  }

  [v6 *a6];
  _Block_release(v8);
}

void sub_25321D16C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

void sub_25321D1E8(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v4[4] = a1;
    v4[5] = a2;
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 1107296256;
    v4[2] = sub_25321D290;
    v4[3] = &block_descriptor_106;
    v3 = _Block_copy(v4);
  }

  else
  {
    v3 = 0;
  }

  [v2 setDeviceChangedHandler_];
  _Block_release(v3);
}

void sub_25321D298(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

void sub_25321D320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    v7[4] = a1;
    v7[5] = a2;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 1107296256;
    v7[2] = sub_25321CF90;
    v7[3] = a5;
    v6 = _Block_copy(v7);
  }

  else
  {
    v6 = 0;
  }

  [v5 activateWithCompletion_];
  _Block_release(v6);
}

uint64_t sub_25321D3D8()
{
  v1 = OBJC_IVAR____TtCC19HomeKitDaemonLegacy15AssertionHandle9Assertion_uuid;
  v2 = sub_253CCFF58();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtCC19HomeKitDaemonLegacy15AssertionHandle9Assertion_reason + 8);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_25321D488()
{
  v1 = *v0;
  sub_253CD11C8();
  sub_253CCFF58();
  sub_253222070(&qword_281531988, MEMORY[0x277CC95F0]);
  sub_253CD0908();
  return sub_253CD11E8();
}

uint64_t sub_25321D528()
{
  v1 = *v0;
  sub_253CCFF58();
  sub_253222070(&qword_281531988, MEMORY[0x277CC95F0]);
  return sub_253CD0908();
}

uint64_t sub_25321D5B0()
{
  v1 = *v0;
  sub_253CD11C8();
  sub_253CCFF58();
  sub_253222070(&qword_281531988, MEMORY[0x277CC95F0]);
  sub_253CD0908();
  return sub_253CD11E8();
}

uint64_t sub_25321D64C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_253CCFF28();
}

uint64_t sub_25321D668()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(v0 + 16);
    v4 = *(Strong + OBJC_IVAR___HMDDiscoveryController_assertions);

    os_unfair_lock_lock((v4 + 24));
    sub_2532229B8((v4 + 16), &v7);
    os_unfair_lock_unlock((v4 + 24));
    v5 = v7;

    sub_2532216D0(v3);
    if (v5)
    {
      sub_253221160();
    }

    swift_unknownObjectRelease();
  }

  *(v1 + 32) = 0;

  return swift_unknownObjectWeakAssign();
}

uint64_t sub_25321D734()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(v0 + 16);
    v4 = *(Strong + OBJC_IVAR___HMDDiscoveryController_assertions);

    os_unfair_lock_lock((v4 + 24));
    sub_253222600((v4 + 16), &v8);
    os_unfair_lock_unlock((v4 + 24));
    v5 = v8;

    sub_2532216D0(v3);
    if (v5)
    {
      sub_253221160();
    }

    swift_unknownObjectRelease();
  }

  *(v1 + 32) = 0;
  swift_unknownObjectWeakAssign();
  v6 = *(v1 + 16);

  sub_25320833C(v1 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_25321D81C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{

  sub_253286D54(&v9, a2);

  v6 = *a1;
  if ((*a1 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *a1;
    }

    result = sub_253CD0ED8();
  }

  else
  {
    result = *(v6 + 16);
  }

  *a3 = result;
  return result;
}

uint64_t sub_25321D898@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  sub_253204E00();

  v4 = *a1;
  if ((*a1 & 0xC000000000000001) != 0)
  {
    if (v4 < 0)
    {
      v5 = *a1;
    }

    result = sub_253CD0ED8();
  }

  else
  {
    result = *(v4 + 16);
  }

  *a2 = result == 0;
  return result;
}

char *sub_25321D908(int a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  v6 = v5;
  v58 = a5;
  v55 = a3;
  v56 = a4;
  v54 = a2;
  v57 = a1;
  v53 = sub_253CD0CE8();
  v7 = *(v53 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v53);
  v10 = v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_253CD0CC8();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v13 = sub_253CD0838();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v52 = OBJC_IVAR___HMDDiscoveryController_queue;
  v15 = sub_253200644(0, &qword_281530E48, 0x277D85C78);
  v51[0] = &unk_253D48FB0;
  v51[1] = v15;
  sub_253CD0828();
  v59 = MEMORY[0x277D84F90];
  sub_253222070(&qword_281530E50, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5A2498, &unk_253D47D20);
  sub_253222624(&qword_281530EC0, &unk_27F5A2498, &unk_253D47D20);
  sub_253CD0E38();
  (*(v7 + 104))(v10, *MEMORY[0x277D85260], v53);
  v16 = sub_253CD0D28();
  v17 = v52;
  *&v5[v52] = v16;
  v18 = *MEMORY[0x277D0F1A8];
  sub_253CD0968();
  sub_253CD07D8();
  v5[OBJC_IVAR___HMDDiscoveryController_isDiscoveryAsserted] = 0;
  v19 = OBJC_IVAR___HMDDiscoveryController_visibleSFDevices;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A24A8, &unk_253D490A0);
  v20 = swift_allocObject();
  v21 = MEMORY[0x277D84F98];
  *(v20 + 24) = 0;
  *(v20 + 16) = v21;
  *&v5[v19] = v20;
  v22 = OBJC_IVAR___HMDDiscoveryController_assertions;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A24B0, &unk_253D47D30);
  v23 = swift_allocObject();
  *(v23 + 24) = 0;
  *(v23 + 16) = MEMORY[0x277D84FA0];
  *&v5[v22] = v23;
  v24 = &v5[OBJC_IVAR___HMDDiscoveryController_rapportDiscoveryClientFactory];
  v26 = v54;
  v25 = v55;
  *v24 = v54;
  v24[1] = v25;
  v27 = &v5[OBJC_IVAR___HMDDiscoveryController_sharingDiscoveryClientFactory];
  v28 = v56;
  v29 = v58;
  *v27 = v56;
  v27[1] = v29;
  v6[OBJC_IVAR___HMDDiscoveryController_discoveryNeedsAssertion] = v57;
  v30 = *&v6[v17];

  v31 = v30;
  v32 = v28();
  v34 = v33;
  ObjectType = swift_getObjectType();
  v36 = *(v34 + 16);
  v37 = v31;
  v36();
  (*(v34 + 88))(1, ObjectType, v34);

  v38 = &v6[OBJC_IVAR___HMDDiscoveryController_sfDiscoveryClient];
  *v38 = v32;
  v38[1] = v34;
  v39 = *&v6[v17];
  v40 = v26();
  v42 = v41;
  v43 = swift_getObjectType();
  v44 = *(v42 + 16);
  v45 = v39;
  v44();
  (*(v42 + 40))(0x60000400004, v43, v42);

  v46 = &v6[OBJC_IVAR___HMDDiscoveryController_rpInfraWifiDiscoveryClient];
  *v46 = v40;
  v46[1] = v42;
  v47 = type metadata accessor for DiscoveryController(0);
  v60.receiver = v6;
  v60.super_class = v47;
  v48 = objc_msgSendSuper2(&v60, sel_init);
  sub_25321E0F8();
  v49 = OBJC_IVAR___HMDDiscoveryController_rpInfraWifiDiscoveryClient;
  swift_beginAccess();
  sub_253222678(v48, &v48[v49]);
  swift_endAccess();

  return v48;
}

char *DiscoveryController.__allocating_init(discoveryNeedsAssertion:)(int a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = objc_allocWithZone(type metadata accessor for DiscoveryController(0));
  v5 = sub_25321D908(a1, sub_25321DFA4, 0, sub_25321DFD8, 0);
  swift_getObjectType();
  v6 = *((*MEMORY[0x277D85000] & *v3) + 0x30);
  v7 = *((*MEMORY[0x277D85000] & *v3) + 0x34);
  swift_deallocPartialClassInstance();
  return v5;
}

char *DiscoveryController.init(discoveryNeedsAssertion:)(int a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(type metadata accessor for DiscoveryController(0));
  v5 = sub_25321D908(a1, sub_25321DFA4, 0, sub_25321DFD8, 0);
  swift_getObjectType();
  v6 = *((*MEMORY[0x277D85000] & *v2) + 0x30);
  v7 = *((*MEMORY[0x277D85000] & *v2) + 0x34);
  swift_deallocPartialClassInstance();
  return v5;
}

uint64_t sub_25321E0F8()
{
  v1 = (v0 + OBJC_IVAR___HMDDiscoveryController_sfDiscoveryClient);
  v2 = *(v0 + OBJC_IVAR___HMDDiscoveryController_sfDiscoveryClient);
  v3 = v1[1];
  ObjectType = swift_getObjectType();
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = *(v3 + 112);
  swift_unknownObjectRetain();

  v6(sub_2532225B8, v5, ObjectType, v3);
  swift_unknownObjectRelease();

  v7 = *v1;
  v8 = v1[1];
  v9 = swift_getObjectType();
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = *(v8 + 160);
  swift_unknownObjectRetain();

  v11(sub_2532225D8, v10, v9, v8);
  swift_unknownObjectRelease();

  v12 = *v1;
  v13 = v1[1];
  v14 = swift_getObjectType();
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = *(v13 + 136);
  swift_unknownObjectRetain();

  v16(sub_2532225E0, v15, v14, v13);
  swift_unknownObjectRelease();
}

void sub_25321E2E4(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_25321F958(2u, a1);
  }
}

void sub_25321E344(void *a1, uint64_t a2, unsigned __int8 a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_25321F958(a3, a1);
  }
}

void sub_25321E3B4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    swift_beginAccess();
    v5 = swift_unknownObjectWeakLoadStrong();
    if (v5)
    {
      v6 = v5;
      v7 = *(a2 + 24);
      v8 = sub_253CD07C8();
      v9 = sub_253CD0C78();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&dword_2531F8000, v8, v9, "Queue setup after invalidation.", v10, 2u);
        MEMORY[0x259C040E0](v10, -1, -1);
      }

      sub_2532204FC(v6, v7);
      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_25321E4E0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = sub_253CD07C8();
    v3 = sub_253CD0C78();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_2531F8000, v2, v3, "RPClient was interrupted", v4, 2u);
      MEMORY[0x259C040E0](v4, -1, -1);
    }
  }
}

void sub_25321E5B0(void *a1, uint64_t a2, const char *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = a1;
    v8 = sub_253CD07C8();
    v9 = sub_253CD0C88();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      *(v10 + 4) = v7;
      *v11 = v7;
      v12 = v7;
      _os_log_impl(&dword_2531F8000, v8, v9, a3, v10, 0xCu);
      sub_253206054(v11, &qword_27F5A2AC8, &qword_253D48890);
      MEMORY[0x259C040E0](v11, -1, -1);
      MEMORY[0x259C040E0](v10, -1, -1);
    }
  }
}

void sub_25321E6EC(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = a1;
    v5 = sub_253CD07C8();
    v6 = sub_253CD0C78();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      *(v7 + 4) = v4;
      *v8 = v4;
      v9 = v4;
      _os_log_impl(&dword_2531F8000, v5, v6, "device changed from RPClient: %@", v7, 0xCu);
      sub_253206054(v8, &qword_27F5A2AC8, &qword_253D48890);
      MEMORY[0x259C040E0](v8, -1, -1);
      MEMORY[0x259C040E0](v7, -1, -1);
    }
  }
}

uint64_t sub_25321E848(uint64_t a1)
{
  v2 = sub_253CD0888();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  result = MEMORY[0x28223BE20](v2);
  v7 = (&v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if ((*(a1 + OBJC_IVAR___HMDDiscoveryController_discoveryNeedsAssertion) & 1) == 0)
  {
    v8 = *(a1 + OBJC_IVAR___HMDDiscoveryController_queue);
    *v7 = v8;
    (*(v3 + 104))(v7, *MEMORY[0x277D85200], v2);
    v9 = v8;
    LOBYTE(v8) = sub_253CD08A8();
    result = (*(v3 + 8))(v7, v2);
    if (v8)
    {
      v10 = (a1 + OBJC_IVAR___HMDDiscoveryController_rpInfraWifiDiscoveryClient);
      swift_beginAccess();
      v12 = *v10;
      v11 = v10[1];
      v13 = swift_unknownObjectRetain();
      sub_25321FEE4(v13, v11);
      swift_unknownObjectRelease();
      return sub_25321F3D0();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_25321E9B8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void *sub_25321EA5C()
{
  v1 = sub_253CD01C8();
  v32 = *(v1 - 8);
  v2 = *(v32 + 64);
  v3 = MEMORY[0x28223BE20](v1);
  v31 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v36 = &v28 - v5;
  v6 = (v0 + OBJC_IVAR___HMDDiscoveryController_rpInfraWifiDiscoveryClient);
  swift_beginAccess();
  v8 = *v6;
  v7 = v6[1];
  ObjectType = swift_getObjectType();
  v10 = *(v7 + 56);
  swift_unknownObjectRetain();
  v11 = v10(ObjectType, v7);
  swift_unknownObjectRelease();
  if (v11 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_253CD0ED8())
  {
    v13 = 0;
    v33 = v11 & 0xFFFFFFFFFFFFFF8;
    v34 = v11 & 0xC000000000000001;
    v14 = (v32 + 32);
    v15 = MEMORY[0x277D84F90];
    v29 = i;
    v30 = v11;
    while (1)
    {
      if (v34)
      {
        v16 = MEMORY[0x259C00F30](v13, v11);
      }

      else
      {
        if (v13 >= *(v33 + 16))
        {
          goto LABEL_20;
        }

        v16 = *(v11 + 8 * v13 + 32);
      }

      v17 = v16;
      v18 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      v19 = [v16 idsDeviceIdentifier];
      if (v19)
      {
        v35 = v15;
        v20 = v19;
        sub_253CD0968();

        v21 = [v17 mediaRouteIdentifier];
        if (v21)
        {
          v22 = v21;
          sub_253CD0968();
        }

        v23 = v31;
        sub_253CD0198();

        v24 = *v14;
        (*v14)(v36, v23, v1);
        v15 = v35;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v15 = sub_25328330C(0, v15[2] + 1, 1, v15);
        }

        v26 = v15[2];
        v25 = v15[3];
        if (v26 >= v25 >> 1)
        {
          v15 = sub_25328330C(v25 > 1, v26 + 1, 1, v15);
        }

        v15[2] = v26 + 1;
        v24(v15 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v26, v36, v1);
        i = v29;
        v11 = v30;
      }

      else
      {
      }

      ++v13;
      if (v18 == i)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

  v15 = MEMORY[0x277D84F90];
LABEL_23:

  return v15;
}

uint64_t DiscoveryController.obtainNetworkVisibleDevicesProto()()
{
  v0 = sub_253CD01C8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_25321EA5C();
  v23 = MEMORY[0x277D84F90];
  v6 = v5[2];
  if (v6)
  {
    v8 = *(v1 + 16);
    v7 = v1 + 16;
    v21[1] = v5;
    v22 = v8;
    v9 = v5 + ((*(v7 + 64) + 32) & ~*(v7 + 64));
    v10 = MEMORY[0x277D84F90];
    v11 = (v7 - 8);
    v12 = *(v7 + 56);
    v8(v4, v9, v0);
    while (1)
    {
      v13 = [objc_allocWithZone(MEMORY[0x277CD16D8]) init];
      if (v13)
      {
        v14 = v13;
        sub_253CD01A8();
        v15 = sub_253CD0938();

        [v14 setIdsIdentifierString_];

        sub_253CD01B8();
        if (v16)
        {
          v17 = sub_253CD0938();

          [v14 setMediaRouteIdString_];
        }

        v18 = (*v11)(v4, v0);
        MEMORY[0x259C00990](v18);
        if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v19 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_253CD0A78();
        }

        sub_253CD0A88();
        v10 = v23;
      }

      else
      {
        (*v11)(v4, v0);
      }

      v9 += v12;
      if (!--v6)
      {
        break;
      }

      v22(v4, v9, v0);
    }
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v10;
}

uint64_t DiscoveryController.obtainSFVisibleDevicesProto()()
{
  v1 = sub_253CD01C8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + OBJC_IVAR___HMDDiscoveryController_visibleSFDevices);

  os_unfair_lock_lock((v6 + 24));
  v7 = *(v6 + 16);

  os_unfair_lock_unlock((v6 + 24));

  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = sub_253221A8C(*(v7 + 16), 0, &qword_27F5A3208, &unk_253D49090, MEMORY[0x277D0EFA8]);
    v10 = sub_253221B88(&v29, (v9 + ((*(v2 + 80) + 32) & ~*(v2 + 80))), v8, v7);
    sub_25320C5EC();
    if (v10 == v8)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v9 = MEMORY[0x277D84F90];
LABEL_5:
  v29 = MEMORY[0x277D84F90];
  v11 = *(v9 + 16);
  if (v11)
  {
    v13 = *(v2 + 16);
    v12 = v2 + 16;
    v27[1] = v9;
    v28 = v13;
    v14 = v9 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v15 = MEMORY[0x277D84F90];
    v16 = (v12 - 8);
    v17 = *(v12 + 56);
    v13(v5, v14, v1);
    while (1)
    {
      v18 = [objc_allocWithZone(MEMORY[0x277CD16D8]) init];
      if (v18)
      {
        v19 = v18;
        v20 = v12;
        sub_253CD01A8();
        v21 = sub_253CD0938();

        [v19 setIdsIdentifierString_];

        sub_253CD01B8();
        if (v22)
        {
          v23 = sub_253CD0938();

          [v19 setMediaRouteIdString_];
        }

        v24 = (*v16)(v5, v1);
        MEMORY[0x259C00990](v24);
        v12 = v20;
        if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v25 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_253CD0A78();
          v12 = v20;
        }

        sub_253CD0A88();
        v15 = v29;
      }

      else
      {
        (*v16)(v5, v1);
      }

      v14 += v17;
      if (!--v11)
      {
        break;
      }

      v28(v5, v14, v1);
    }
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v15;
}

id sub_25321F354(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  sub_253200644(0, &qword_27F5A3390, 0x277CD16D8);
  v5 = sub_253CD0A38();

  return v5;
}

uint64_t sub_25321F3D0()
{
  v1 = sub_253CD0888();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = (&v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *&v0[OBJC_IVAR___HMDDiscoveryController_queue];
  *v5 = v6;
  (*(v2 + 104))(v5, *MEMORY[0x277D85200], v1);
  v7 = v6;
  LOBYTE(v6) = sub_253CD08A8();
  result = (*(v2 + 8))(v5, v1);
  if (v6)
  {
    if (v0[OBJC_IVAR___HMDDiscoveryController_discoveryNeedsAssertion] != 1 || v0[OBJC_IVAR___HMDDiscoveryController_isDiscoveryAsserted] == 1)
    {
      v9 = *&v0[OBJC_IVAR___HMDDiscoveryController_sfDiscoveryClient];
      v10 = *&v0[OBJC_IVAR___HMDDiscoveryController_sfDiscoveryClient + 8];
      ObjectType = swift_getObjectType();
      v12 = swift_allocObject();
      *(v12 + 16) = v0;
      v13 = *(v10 + 176);
      swift_unknownObjectRetain();
      v14 = v0;
      v13(sub_2532225B0, v12, ObjectType, v10);
      swift_unknownObjectRelease();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_25321F59C(NSObject *a1)
{
  if (!a1)
  {
    oslog = sub_253CD07C8();
    v8 = sub_253CD0C78();
    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_2531F8000, oslog, v8, "Started sfDiscovery", v9, 2u);
      MEMORY[0x259C040E0](v9, -1, -1);
    }

    goto LABEL_6;
  }

  v2 = a1;
  oslog = sub_253CD07C8();
  v3 = sub_253CD0C98();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    v6 = a1;
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v7;
    *v5 = v7;
    _os_log_impl(&dword_2531F8000, oslog, v3, "Unable to start sfDiscovery %@", v4, 0xCu);
    sub_253206054(v5, &qword_27F5A2AC8, &qword_253D48890);
    MEMORY[0x259C040E0](v5, -1, -1);
    MEMORY[0x259C040E0](v4, -1, -1);

LABEL_6:
    v10 = oslog;

    goto LABEL_8;
  }

  v10 = a1;

LABEL_8:
}

uint64_t sub_25321F768()
{
  v1 = sub_253CD0888();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = (&v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + OBJC_IVAR___HMDDiscoveryController_queue);
  *v5 = v6;
  (*(v2 + 104))(v5, *MEMORY[0x277D85200], v1);
  v7 = v6;
  v8 = sub_253CD08A8();
  result = (*(v2 + 8))(v5, v1);
  if (v8)
  {
    v10 = (v0 + OBJC_IVAR___HMDDiscoveryController_sfDiscoveryClient);
    v11 = *(v0 + OBJC_IVAR___HMDDiscoveryController_sfDiscoveryClient);
    v12 = *(v0 + OBJC_IVAR___HMDDiscoveryController_sfDiscoveryClient + 8);
    ObjectType = swift_getObjectType();
    v14 = *(v12 + 184);
    swift_unknownObjectRetain();
    v15 = v0;
    v14(ObjectType, v12);
    v16 = swift_unknownObjectRelease();
    v17 = *(v0 + OBJC_IVAR___HMDDiscoveryController_sharingDiscoveryClientFactory + 8);
    v18 = (*(v15 + OBJC_IVAR___HMDDiscoveryController_sharingDiscoveryClientFactory))(v16);
    v20 = v19;
    v21 = swift_getObjectType();
    (*(v20 + 16))(v7, v21, v20);
    (*(v20 + 88))(1, v21, v20);
    v22 = *v10;
    *v10 = v18;
    v10[1] = v20;
    swift_unknownObjectRelease();
    return sub_25321E0F8();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_25321F958(unsigned __int8 a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3CD0, &qword_253D49088);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v30[-v7];
  v9 = sub_253CD0888();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v30[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = *(v2 + OBJC_IVAR___HMDDiscoveryController_queue);
  *v13 = v14;
  (*(v10 + 104))(v13, *MEMORY[0x277D85200], v9);
  v15 = v14;
  LOBYTE(v14) = sub_253CD08A8();
  result = (*(v10 + 8))(v13, v9);
  if (v14)
  {
    result = [a2 idsIdentifier];
    if (result)
    {
      v17 = a1;
      v18 = result;
      v19 = sub_253CD0968();
      v21 = v20;

      v22 = [a2 mediaRouteID];
      if (v22)
      {
        v23 = v22;
        v24 = sub_253CD0968();
        v26 = v25;
      }

      else
      {
        v24 = 0;
        v26 = 0;
      }

      if ((v17 - 1) > 1)
      {

        v29 = *(v2 + OBJC_IVAR___HMDDiscoveryController_visibleSFDevices);
        MEMORY[0x28223BE20](v28);
        *&v30[-16] = v19;
        *&v30[-8] = v21;

        os_unfair_lock_lock((v29 + 24));
        sub_253222574((v29 + 16), v8);
        os_unfair_lock_unlock((v29 + 24));

        sub_253206054(v8, &qword_27F5A3CD0, &qword_253D49088);
      }

      else
      {
        v27 = *(v2 + OBJC_IVAR___HMDDiscoveryController_visibleSFDevices);
        MEMORY[0x28223BE20](v22);
        *&v30[-32] = v19;
        *&v30[-24] = v21;
        *&v30[-16] = v24;
        *&v30[-8] = v26;

        os_unfair_lock_lock(v27 + 6);
        sub_253222590(&v27[4]);
        os_unfair_lock_unlock(v27 + 6);
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25321FC44@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a1;
  v7 = sub_253217D84(a2, a3);
  if (v8)
  {
    v9 = v7;
    v10 = *a1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *a1;
    v19 = *a1;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_253285CC0();
      v12 = v19;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    v14 = *(v12 + 56);
    v15 = sub_253CD01C8();
    v16 = *(v15 - 8);
    (*(v16 + 32))(a4, v14 + *(v16 + 72) * v9, v15);
    sub_25327A678(v9, v12);
    *a1 = v12;
    return (*(v16 + 56))(a4, 0, 1, v15);
  }

  else
  {
    v18 = sub_253CD01C8();
    return (*(*(v18 - 8) + 56))(a4, 1, 1, v18);
  }
}

uint64_t sub_25321FDC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3CD0, &qword_253D49088);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v11 - v7;

  swift_bridgeObjectRetain_n();
  sub_253CD0198();
  v9 = sub_253CD01C8();
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  return sub_253278788(v8, a2, a3);
}

uint64_t sub_25321FEE4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v34 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A31F8, &qword_253D49070);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v33 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v31 - v9;
  v11 = sub_253CD0888();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = (&v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *(v3 + OBJC_IVAR___HMDDiscoveryController_queue);
  *v15 = v16;
  (*(v12 + 104))(v15, *MEMORY[0x277D85200], v11);
  v17 = v16;
  LOBYTE(v16) = sub_253CD08A8();
  result = (*(v12 + 8))(v15, v11);
  if (v16)
  {
    if (*(v3 + OBJC_IVAR___HMDDiscoveryController_discoveryNeedsAssertion) != 1 || *(v3 + OBJC_IVAR___HMDDiscoveryController_isDiscoveryAsserted) == 1)
    {
      v32 = v5;
      swift_unknownObjectRetain();
      v19 = sub_253CD07C8();
      v20 = sub_253CD0C78();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 134217984;
        ObjectType = swift_getObjectType();
        v23 = v34;
        *(v21 + 4) = (*(v34 + 32))(ObjectType, v34);
        swift_unknownObjectRelease();
        _os_log_impl(&dword_2531F8000, v19, v20, "Set up the companion link client, controlFlags = %llu", v21, 0xCu);
        MEMORY[0x259C040E0](v21, -1, -1);
      }

      else
      {

        swift_unknownObjectRelease();
        v23 = v34;
      }

      v34 = swift_getObjectType();
      v24 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v35[0] = a1;
      v35[1] = v23;
      swift_unknownObjectRetain();
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3200, &unk_253D49078);
      MEMORY[0x259C00030](v35, v25);
      v27 = v32;
      v26 = v33;
      (*(v6 + 16))(v33, v10, v32);
      v28 = (*(v6 + 80) + 24) & ~*(v6 + 80);
      v29 = swift_allocObject();
      *(v29 + 16) = v24;
      (*(v6 + 32))(v29 + v28, v26, v27);
      v30 = *(v23 + 184);

      v30(sub_2532224F4, v29, v34, v23);

      (*(v6 + 8))(v10, v27);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_2532202EC(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (a1)
    {
      v4 = a1;
      v5 = sub_253CD07C8();
      v6 = sub_253CD0C98();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        v8 = swift_slowAlloc();
        *v7 = 138412290;
        v9 = a1;
        v10 = _swift_stdlib_bridgeErrorToNSError();
        *(v7 + 4) = v10;
        *v8 = v10;
        _os_log_impl(&dword_2531F8000, v5, v6, "Error activating RPClient: '%@'", v7, 0xCu);
        sub_253206054(v8, &qword_27F5A2AC8, &qword_253D48890);
        MEMORY[0x259C040E0](v8, -1, -1);
        MEMORY[0x259C040E0](v7, -1, -1);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A31F8, &qword_253D49070);
      sub_253CD00D8();
      sub_2532204FC(v14, v15, 120.0);

      swift_unknownObjectRelease();
    }

    else
    {
      v11 = sub_253CD07C8();
      v12 = sub_253CD0C78();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&dword_2531F8000, v11, v12, "RPClient activated successfully", v13, 2u);
        MEMORY[0x259C040E0](v13, -1, -1);
      }
    }
  }
}

uint64_t sub_2532204FC(uint64_t a1, uint64_t a2)
{
  v34 = a2;
  v41 = sub_253CD0818();
  v43 = *(v41 - 8);
  v4 = *(v43 + 64);
  MEMORY[0x28223BE20](v41);
  v39 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_253CD0838();
  v40 = *(v42 - 8);
  v6 = *(v40 + 64);
  MEMORY[0x28223BE20](v42);
  v36 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A31F8, &qword_253D49070);
  v8 = *(v44 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v44);
  v11 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v33 - v12;
  v14 = sub_253CD0858();
  v38 = v14;
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v33 - v20;
  v35 = *(v2 + OBJC_IVAR___HMDDiscoveryController_queue);
  sub_253CD0848();
  sub_253CD0898();
  v37 = *(v15 + 8);
  v37(v19, v14);
  v22 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock = a1;
  v47 = v34;
  swift_unknownObjectRetain();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3200, &unk_253D49078);
  v33 = v13;
  MEMORY[0x259C00030](&aBlock, v23);
  v24 = v13;
  v25 = v44;
  (*(v8 + 16))(v11, v24, v44);
  v26 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = v22;
  (*(v8 + 32))(v27 + v26, v11, v25);
  v50 = sub_2532223B4;
  v51 = v27;
  aBlock = MEMORY[0x277D85DD0];
  v47 = 1107296256;
  v48 = sub_25321E9B8;
  v49 = &block_descriptor_90;
  v28 = _Block_copy(&aBlock);

  v29 = v36;
  sub_253CD0828();
  v45 = MEMORY[0x277D84F90];
  sub_253222070(&qword_281530ED0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A31E8, &qword_253D48EA0);
  sub_253222624(&qword_281530EC8, &qword_27F5A31E8, &qword_253D48EA0);
  v30 = v39;
  v31 = v41;
  sub_253CD0E38();
  MEMORY[0x259C00C40](v21, v29, v30, v28);
  _Block_release(v28);
  (*(v43 + 8))(v30, v31);
  (*(v40 + 8))(v29, v42);
  (*(v8 + 8))(v33, v44);
  v37(v21, v38);
}

void sub_253220A48()
{
  v0 = sub_253CD0888();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = (v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = sub_253CD07C8();
    v8 = sub_253CD0C78();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_2531F8000, v7, v8, "Restarting RPDevice discovery", v9, 2u);
      MEMORY[0x259C040E0](v9, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A31F8, &qword_253D49070);
    sub_253CD00D8();
    v10 = v15;
    v11 = *&v6[OBJC_IVAR___HMDDiscoveryController_queue];
    *v4 = v11;
    (*(v1 + 104))(v4, *MEMORY[0x277D85200], v0);
    v12 = v11;
    LOBYTE(v11) = sub_253CD08A8();
    (*(v1 + 8))(v4, v0);
    if (v11)
    {
      ObjectType = swift_getObjectType();
      (*(v10 + 192))(ObjectType, v10);
      swift_unknownObjectRelease();
      sub_253CD00D8();
      sub_25321FEE4(v14[1], v15);
      swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_253220CB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_253CD0818();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_253CD0838();
  v11 = *(v20 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v20);
  v14 = v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19[1] = *&v3[OBJC_IVAR___HMDDiscoveryController_queue];
  v15 = swift_allocObject();
  *(v15 + 16) = v3;
  aBlock[4] = a2;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_25321E9B8;
  aBlock[3] = a3;
  v16 = _Block_copy(aBlock);
  v17 = v3;
  sub_253CD0828();
  v21 = MEMORY[0x277D84F90];
  sub_253222070(&qword_281530ED0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A31E8, &qword_253D48EA0);
  sub_253222624(&qword_281530EC8, &qword_27F5A31E8, &qword_253D48EA0);
  sub_253CD0E38();
  MEMORY[0x259C00C70](0, v14, v10, v16);
  _Block_release(v16);
  (*(v7 + 8))(v10, v6);
  (*(v11 + 8))(v14, v20);
}

void sub_253220F60(uint64_t a1)
{
  v2 = sub_253CD0888();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_253CD07C8();
  v8 = sub_253CD0CB8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_2531F8000, v7, v8, "Became asserted", v9, 2u);
    MEMORY[0x259C040E0](v9, -1, -1);
  }

  *(a1 + OBJC_IVAR___HMDDiscoveryController_isDiscoveryAsserted) = 1;
  if (*(a1 + OBJC_IVAR___HMDDiscoveryController_discoveryNeedsAssertion) == 1)
  {
    v10 = *(a1 + OBJC_IVAR___HMDDiscoveryController_queue);
    *v6 = v10;
    (*(v3 + 104))(v6, *MEMORY[0x277D85200], v2);
    v11 = v10;
    LOBYTE(v10) = sub_253CD08A8();
    (*(v3 + 8))(v6, v2);
    if (v10)
    {
      v12 = (a1 + OBJC_IVAR___HMDDiscoveryController_rpInfraWifiDiscoveryClient);
      swift_beginAccess();
      v14 = *v12;
      v13 = v12[1];
      v15 = swift_unknownObjectRetain();
      sub_25321FEE4(v15, v13);
      swift_unknownObjectRelease();
      sub_25321F3D0();
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_253221160()
{
  ObjectType = swift_getObjectType();
  v2 = sub_253CD0818();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_253CD0838();
  v7 = *(v16 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v16);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[1] = *&v0[OBJC_IVAR___HMDDiscoveryController_queue];
  v11 = swift_allocObject();
  *(v11 + 16) = v0;
  *(v11 + 24) = ObjectType;
  aBlock[4] = sub_25322261C;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_25321E9B8;
  aBlock[3] = &block_descriptor_136;
  v12 = _Block_copy(aBlock);
  v13 = v0;
  sub_253CD0828();
  v17 = MEMORY[0x277D84F90];
  sub_253222070(&qword_281530ED0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A31E8, &qword_253D48EA0);
  sub_253222624(&qword_281530EC8, &qword_27F5A31E8, &qword_253D48EA0);
  sub_253CD0E38();
  MEMORY[0x259C00C70](0, v10, v6, v12);
  _Block_release(v12);
  (*(v3 + 8))(v6, v2);
  (*(v7 + 8))(v10, v16);
}

void sub_253221428(uint64_t a1)
{
  v2 = sub_253CD0888();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_253CD07C8();
  v8 = sub_253CD0CB8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_2531F8000, v7, v8, "No more assertions", v9, 2u);
    MEMORY[0x259C040E0](v9, -1, -1);
  }

  *(a1 + OBJC_IVAR___HMDDiscoveryController_isDiscoveryAsserted) = 0;
  if (*(a1 + OBJC_IVAR___HMDDiscoveryController_discoveryNeedsAssertion) == 1)
  {
    sub_25321F768();
    v10 = (a1 + OBJC_IVAR___HMDDiscoveryController_rpInfraWifiDiscoveryClient);
    swift_beginAccess();
    v11 = *v10;
    v12 = v10[1];
    v13 = *(a1 + OBJC_IVAR___HMDDiscoveryController_queue);
    *v6 = v13;
    (*(v3 + 104))(v6, *MEMORY[0x277D85200], v2);
    swift_unknownObjectRetain();
    v14 = v13;
    v15 = sub_253CD08A8();
    (*(v3 + 8))(v6, v2);
    if (v15)
    {
      ObjectType = swift_getObjectType();
      (*(v12 + 192))(ObjectType, v12);
      v17 = swift_unknownObjectRelease();
      v18 = *(a1 + OBJC_IVAR___HMDDiscoveryController_rapportDiscoveryClientFactory + 8);
      v19 = (*(a1 + OBJC_IVAR___HMDDiscoveryController_rapportDiscoveryClientFactory))(v17);
      v21 = v20;
      v22 = swift_getObjectType();
      (*(v21 + 16))(v14, v22, v21);
      (*(v21 + 40))(0x60000400004, v22, v21);
      v23 = *v10;
      *v10 = v19;
      v10[1] = v21;
      swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_2532216DC(uint64_t a1, const char *a2)
{

  oslog = sub_253CD07C8();
  v4 = sub_253CD0C88();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315394;
    *(v5 + 4) = sub_253277BA8(*(a1 + OBJC_IVAR____TtCC19HomeKitDaemonLegacy15AssertionHandle9Assertion_reason), *(a1 + OBJC_IVAR____TtCC19HomeKitDaemonLegacy15AssertionHandle9Assertion_reason + 8), &v11);
    *(v5 + 12) = 2080;
    sub_253CCFF58();
    sub_253222070(&qword_281531980, MEMORY[0x277CC95F0]);
    v7 = sub_253CD10E8();
    v9 = sub_253277BA8(v7, v8, &v11);

    *(v5 + 14) = v9;
    _os_log_impl(&dword_2531F8000, oslog, v4, a2, v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C040E0](v6, -1, -1);
    MEMORY[0x259C040E0](v5, -1, -1);
  }
}

id DiscoveryController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DiscoveryController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DiscoveryController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

size_t sub_253221A8C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v11);
  if (v9)
  {
    if (result - v10 != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_253221B88(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v41 = sub_253CD01C8();
  v43 = *(v41 - 8);
  v8 = *(v43 + 64);
  v9 = MEMORY[0x28223BE20](v41);
  v42 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v40 = &v34 - v12;
  v13 = a4 + 64;
  v14 = -1 << *(a4 + 32);
  if (-v14 < 64)
  {
    v15 = ~(-1 << -v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a4 + 64);
  if (!a2)
  {
LABEL_19:
    v32 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v13;
    *(a1 + 16) = ~v14;
    *(a1 + 24) = v32;
    *(a1 + 32) = v16;
    return a3;
  }

  if (!a3)
  {
    v32 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v34 = -1 << *(a4 + 32);
    v35 = a1;
    result = 0;
    v17 = 0;
    v18 = (63 - v14) >> 6;
    v36 = v43 + 32;
    v37 = v43 + 16;
    a1 = 1;
    v38 = a4 + 64;
    v39 = a3;
    v19 = v40;
    while (v16)
    {
      v45 = a2;
LABEL_15:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v44 = v17;
      v23 = a4;
      v24 = *(a4 + 56);
      v25 = v42;
      v26 = v43;
      v27 = *(v43 + 72);
      v28 = v41;
      (*(v43 + 16))(v42, v24 + v27 * (v22 | (v17 << 6)), v41);
      v29 = *(v26 + 32);
      v29(v19, v25, v28);
      v30 = v45;
      v29(v45, v19, v28);
      a3 = v39;
      if (a1 == v39)
      {
        v14 = v34;
        a1 = v35;
        a4 = v23;
        v32 = v44;
        v13 = v38;
        goto LABEL_25;
      }

      a2 = &v30[v27];
      result = a1;
      v31 = __OFADD__(a1++, 1);
      a4 = v23;
      v17 = v44;
      v13 = v38;
      if (v31)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v20 = v17;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v21 >= v18)
      {
        break;
      }

      v16 = *(v13 + 8 * v21);
      ++v20;
      if (v16)
      {
        v45 = a2;
        v17 = v21;
        goto LABEL_15;
      }
    }

    v16 = 0;
    if (v18 <= v17 + 1)
    {
      v33 = v17 + 1;
    }

    else
    {
      v33 = v18;
    }

    v32 = v33 - 1;
    a3 = result;
    v14 = v34;
    a1 = v35;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_253221E78(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_253221EB0()
{
  result = sub_253CCFF58();
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

uint64_t sub_253221F50()
{
  result = sub_253CD07E8();
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

uint64_t sub_253222070(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2532220B8(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for HomeDeviceEntity();
  v33 = *(v8 - 8);
  v9 = *(v33 + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v10);
  v15 = &v30 - v14;
  v16 = a4 + 7;
  v17 = -1 << *(a4 + 32);
  if (-v17 < 64)
  {
    v18 = ~(-1 << -v17);
  }

  else
  {
    v18 = -1;
  }

  v19 = v18 & a4[7];
  if (!a2)
  {
LABEL_18:
    v20 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v16;
    a1[2] = ~v17;
    a1[3] = v20;
    a1[4] = v19;
    return a3;
  }

  if (!a3)
  {
    v20 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v31 = a1;
    v32 = a3;
    result = 0;
    v20 = 0;
    v30 = v17;
    v21 = (63 - v17) >> 6;
    v22 = 1;
    while (v19)
    {
LABEL_14:
      v25 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      a1 = a4;
      v26 = a4[6];
      v27 = *(v33 + 72);
      sub_2532222E0(v26 + v27 * (v25 | (v20 << 6)), v12);
      sub_253222344(v12, v15);
      sub_253222344(v15, a2);
      if (v22 == v32)
      {
        a4 = a1;
        a1 = v31;
        a3 = v32;
        goto LABEL_23;
      }

      a2 += v27;
      result = v22;
      v28 = __OFADD__(v22++, 1);
      a4 = a1;
      if (v28)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v23 = v20;
    while (1)
    {
      v24 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v24 >= v21)
      {
        break;
      }

      v19 = v16[v24];
      ++v23;
      if (v19)
      {
        v20 = v24;
        goto LABEL_14;
      }
    }

    v19 = 0;
    if (v21 <= v20 + 1)
    {
      v29 = v20 + 1;
    }

    else
    {
      v29 = v21;
    }

    v20 = v29 - 1;
    a3 = result;
    a1 = v31;
LABEL_23:
    v17 = v30;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_2532222E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomeDeviceEntity();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_253222344(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomeDeviceEntity();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_2532223B4()
{
  v1 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A31F8, &qword_253D49070) - 8) + 80);
  v2 = *(v0 + 16);

  sub_253220A48();
}

uint64_t objectdestroy_86Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A31F8, &qword_253D49070);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

void sub_2532224F4(void *a1)
{
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A31F8, &qword_253D49070) - 8) + 80);
  v4 = *(v1 + 16);

  sub_2532202EC(a1);
}

uint64_t sub_253222590(uint64_t a1)
{
  v2 = v1[4];
  v3 = v1[5];
  return sub_25321FDC4(a1, v1[2], v1[3]);
}

uint64_t sub_253222624(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_253222678(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  ObjectType = swift_getObjectType();
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = swift_allocObject();
  *(v6 + 24) = v2;
  swift_unknownObjectWeakInit();
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  *(v7 + 24) = v6;
  v8 = v2[12];

  v8(sub_253222924, v7, ObjectType, v2);

  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = v2[9];

  v10(sub_25322292C, v9, ObjectType, v2);

  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = v2[15];

  v12(sub_253222934, v11, ObjectType, v2);

  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = v2[18];

  v14(sub_253222958, v13, ObjectType, v2);

  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = v2[21];

  v16(sub_25322297C, v15, ObjectType, v2);
}

id sub_253222A10(uint64_t a1)
{
  v3 = &v1[OBJC_IVAR____TtC19HomeKitDaemonLegacy50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___octagonState];
  *v3 = 0;
  v3[4] = 1;
  v1[OBJC_IVAR____TtC19HomeKitDaemonLegacy50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___isFirstCloudImportComplete] = 2;
  v1[OBJC_IVAR____TtC19HomeKitDaemonLegacy50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___isSignedIntoiCloud] = 2;
  *&v1[OBJC_IVAR____TtC19HomeKitDaemonLegacy50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___networkInfo] = 1;
  v4 = &v1[OBJC_IVAR____TtC19HomeKitDaemonLegacy50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___numHomes];
  *v4 = 0;
  v4[8] = 1;
  *&v1[OBJC_IVAR____TtC19HomeKitDaemonLegacy50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___mediaRouteIdString] = xmmword_253D490B0;
  *&v1[OBJC_IVAR____TtC19HomeKitDaemonLegacy50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___systemInfo] = 0;
  *&v1[OBJC_IVAR____TtC19HomeKitDaemonLegacy50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___systemInfoSerialNumber] = xmmword_253D490B0;
  *&v1[OBJC_IVAR____TtC19HomeKitDaemonLegacy50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___systemInfoModelIdentifier] = xmmword_253D490B0;
  *&v1[OBJC_IVAR____TtC19HomeKitDaemonLegacy50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___systemInfoSoftwareVersion] = xmmword_253D490B0;
  *&v1[OBJC_IVAR____TtC19HomeKitDaemonLegacy50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___systemInfoRegionInfo] = xmmword_253D490B0;
  *&v1[OBJC_IVAR____TtC19HomeKitDaemonLegacy50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___networkInfoProto] = 0;
  *&v1[OBJC_IVAR____TtC19HomeKitDaemonLegacy50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___networkVisibleDevices] = 0;
  *&v1[OBJC_IVAR____TtC19HomeKitDaemonLegacy50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___nearbyVisibleDevices] = 0;
  *&v1[OBJC_IVAR____TtC19HomeKitDaemonLegacy50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___currentAppleMediaAccessory] = 1;
  *&v1[OBJC_IVAR____TtC19HomeKitDaemonLegacy50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___currentAccessoryManufacturer] = xmmword_253D490B0;
  v5 = OBJC_IVAR____TtC19HomeKitDaemonLegacy50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___currentAccessoryUUID;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5A2AD0, &unk_253D486A0);
  v7 = *(*(v6 - 8) + 56);
  v7(&v1[v5], 1, 1, v6);
  *&v1[OBJC_IVAR____TtC19HomeKitDaemonLegacy50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___currentAccessoryPublicPairingIdentity] = 1;
  *&v1[OBJC_IVAR____TtC19HomeKitDaemonLegacy50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___currentHome] = 1;
  v8 = &v1[OBJC_IVAR____TtC19HomeKitDaemonLegacy50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___currentHomeNumberOfAppleMediaAccessories];
  *v8 = 0;
  v8[8] = 1;
  v9 = &v1[OBJC_IVAR____TtC19HomeKitDaemonLegacy50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___currentHomeNumberOfResidents];
  *v9 = 0;
  v9[8] = 1;
  *&v1[OBJC_IVAR____TtC19HomeKitDaemonLegacy50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___eventRouterServerInfo] = 1;
  *&v1[OBJC_IVAR____TtC19HomeKitDaemonLegacy50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___softwareUpdateDescriptor] = 1;
  *&v1[OBJC_IVAR____TtC19HomeKitDaemonLegacy50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___softwareUpdateProgress] = 1;
  v10 = &v1[OBJC_IVAR____TtC19HomeKitDaemonLegacy50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___sfProblemFlags];
  *v10 = 0;
  v10[8] = 1;
  v7(&v1[OBJC_IVAR____TtC19HomeKitDaemonLegacy50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___currentDeviceIDSIdentifier], 1, 1, v6);
  v1[OBJC_IVAR____TtC19HomeKitDaemonLegacy50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___isCurrentDevicePrimaryResident] = 2;
  *&v1[OBJC_IVAR____TtC19HomeKitDaemonLegacy50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot_dataSource] = a1;
  v12.receiver = v1;
  v12.super_class = type metadata accessor for AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot();
  return objc_msgSendSuper2(&v12, sel_init);
}

id sub_253222CC0()
{
  v1 = (v0 + OBJC_IVAR____TtC19HomeKitDaemonLegacy50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___octagonState);
  if (*(v0 + OBJC_IVAR____TtC19HomeKitDaemonLegacy50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___octagonState + 4) != 1)
  {
    return *v1;
  }

  result = [*(v0 + OBJC_IVAR____TtC19HomeKitDaemonLegacy50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot_dataSource) hasManatee];
  *v1 = result;
  v1[4] = 0;
  return result;
}

unint64_t sub_253222EF8()
{
  v1 = (v0 + OBJC_IVAR____TtC19HomeKitDaemonLegacy50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___numHomes);
  if (*(v0 + OBJC_IVAR____TtC19HomeKitDaemonLegacy50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___numHomes + 8) != 1)
  {
    return *v1;
  }

  result = [*(v0 + OBJC_IVAR____TtC19HomeKitDaemonLegacy50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot_dataSource) numHomes];
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    *v1 = result;
    v1[8] = 0;
  }

  return result;
}

uint64_t sub_253222F8C()
{
  v1 = (v0 + OBJC_IVAR____TtC19HomeKitDaemonLegacy50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___mediaRouteIdString);
  v2 = *(v0 + OBJC_IVAR____TtC19HomeKitDaemonLegacy50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___mediaRouteIdString);
  v3 = *(v0 + OBJC_IVAR____TtC19HomeKitDaemonLegacy50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___mediaRouteIdString + 8);
  v4 = v2;
  if (v3 == 1)
  {
    v5 = [*(v0 + OBJC_IVAR____TtC19HomeKitDaemonLegacy50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot_dataSource) currentDeviceMediaRouteIdentifier];
    if (v5)
    {
      v6 = v5;
      v4 = sub_253CD0968();
      v8 = v7;
    }

    else
    {
      v4 = 0;
      v8 = 0;
    }

    v9 = *v1;
    v10 = v1[1];
    *v1 = v4;
    v1[1] = v8;

    sub_25322572C(v9, v10);
  }

  sub_253225740(v2, v3);
  return v4;
}

id sub_2532230A4()
{
  v1 = OBJC_IVAR____TtC19HomeKitDaemonLegacy50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___systemInfo;
  v2 = *(v0 + OBJC_IVAR____TtC19HomeKitDaemonLegacy50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___systemInfo);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HomeKitDaemonLegacy50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___systemInfo);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D0F910]) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_253223178(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();
  v6 = v5;

  if (v6)
  {
    v7 = sub_253CD0938();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t sub_253223268()
{
  v1 = (v0 + OBJC_IVAR____TtC19HomeKitDaemonLegacy50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___systemInfoSoftwareVersion);
  v2 = *(v0 + OBJC_IVAR____TtC19HomeKitDaemonLegacy50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___systemInfoSoftwareVersion);
  v3 = *(v0 + OBJC_IVAR____TtC19HomeKitDaemonLegacy50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___systemInfoSoftwareVersion + 8);
  v4 = v2;
  if (v3 == 1)
  {
    v5 = sub_2532230A4();
    v6 = [v5 softwareVersion];

    if (v6)
    {
      v7 = [v6 versionString];

      v4 = sub_253CD0968();
      v9 = v8;
    }

    else
    {
      v4 = 0;
      v9 = 0;
    }

    v10 = *v1;
    v11 = v1[1];
    *v1 = v4;
    v1[1] = v9;

    sub_25322572C(v10, v11);
  }

  sub_253225740(v2, v3);
  return v4;
}

uint64_t sub_25322338C(void *a1, SEL *a2)
{
  v3 = (v2 + *a1);
  v4 = *v3;
  v5 = v3[1];
  v6 = *v3;
  if (v5 == 1)
  {
    v8 = sub_2532230A4();
    v9 = [v8 *a2];

    if (v9)
    {
      v6 = sub_253CD0968();
      v11 = v10;
    }

    else
    {
      v6 = 0;
      v11 = 0;
    }

    v12 = *v3;
    v13 = v3[1];
    *v3 = v6;
    v3[1] = v11;

    sub_25322572C(v12, v13);
  }

  sub_253225740(v4, v5);
  return v6;
}

uint64_t sub_2532234E0()
{
  v1 = OBJC_IVAR____TtC19HomeKitDaemonLegacy50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___networkInfoProto;
  if (*(v0 + OBJC_IVAR____TtC19HomeKitDaemonLegacy50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___networkInfoProto))
  {
    v2 = *(v0 + OBJC_IVAR____TtC19HomeKitDaemonLegacy50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___networkInfoProto);
  }

  else
  {
    v3 = [*(v0 + OBJC_IVAR____TtC19HomeKitDaemonLegacy50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot_dataSource) obtainNetworkInfoProto];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A33A8, &qword_253D491B8);
    v2 = sub_253CD08D8();

    v4 = *(v0 + v1);
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_25322363C()
{
  v0 = sub_2532234E0();
  if (*(v0 + 16) && (v1 = sub_253217D84(0x496B726F7774654ELL, 0xEB000000006F666ELL), (v2 & 1) != 0))
  {
    v3 = *(*(v0 + 56) + 8 * v1);

    v4 = sub_2532236EC(v3, &qword_27F5A33A0, 0x277CD1718);

    if (v4)
    {
      return v4;
    }
  }

  else
  {
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_2532236EC(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  v11 = MEMORY[0x277D84F90];
  v6 = *(a1 + 16);
  sub_253CD1028();
  if (!v6)
  {
    return v11;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_253205FF8(i, v10);
    sub_253200644(0, a2, a3);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_253CD1008();
    v8 = *(v11 + 16);
    sub_253CD1038();
    sub_253CD1048();
    sub_253CD1018();
    if (!--v6)
    {
      return v11;
    }
  }

  return 0;
}

uint64_t sub_2532237F0(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_23;
  }

  v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v14 = MEMORY[0x277D84F90];
  sub_25328BEB8(0, v3 & ~(v3 >> 63), 0);
  v4 = v14;
  if (!v2)
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      return v4;
    }

LABEL_7:
    for (i = 0; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x259C00F30](i, a1);
        v7 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_21;
        }
      }

      else
      {
        if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v6 = *(a1 + 8 * i + 32);
        swift_unknownObjectRetain();
        v7 = i + 1;
        if (__OFADD__(i, 1))
        {
LABEL_21:
          __break(1u);
LABEL_22:
          __break(1u);
LABEL_23:
          v3 = sub_253CD0ED8();
          goto LABEL_3;
        }
      }

      if ((swift_dynamicCast() & 1) == 0)
      {

        return 0;
      }

      v9 = *(v14 + 16);
      v8 = *(v14 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_25328BEB8((v8 > 1), v9 + 1, 1);
      }

      *(v14 + 16) = v9 + 1;
      v10 = v14 + 16 * v9;
      *(v10 + 32) = v12;
      *(v10 + 40) = v13;
      if (v7 == v2)
      {
        return v4;
      }
    }
  }

  v2 = sub_253CD0ED8();
  if (v2)
  {
    goto LABEL_7;
  }

  return v4;
}

id sub_2532239B4(void *a1, uint64_t a2, void (*a3)(void), unint64_t *a4, uint64_t *a5)
{
  v8 = a1;
  a3();

  sub_253200644(0, a4, a5);
  v9 = sub_253CD0A38();

  return v9;
}

uint64_t sub_253223A38()
{
  v0 = sub_2532234E0();
  if (*(v0 + 16) && (v1 = sub_253217D84(0xD000000000000012, 0x8000000253D4F8D0), (v2 & 1) != 0))
  {
    v3 = *(*(v0 + 56) + 8 * v1);

    v4 = sub_2532236EC(v3, &qword_27F5A3398, 0x277CD1720);

    if (v4)
    {
      return v4;
    }
  }

  else
  {
  }

  return MEMORY[0x277D84F90];
}

id sub_253223B34(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  sub_253200644(0, &qword_27F5A3390, 0x277CD16D8);
  v5 = sub_253CD0A38();

  return v5;
}

uint64_t sub_253223BC4(uint64_t *a1, SEL *a2)
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v6 = [*(v2 + OBJC_IVAR____TtC19HomeKitDaemonLegacy50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot_dataSource) *a2];
    sub_253200644(0, &qword_27F5A3390, 0x277CD16D8);
    v5 = sub_253CD0A58();

    v7 = *(v2 + v3);
    *(v2 + v3) = v5;
  }

  return v5;
}

uint64_t sub_253223C78(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_253200644(0, &qword_27F5A3390, 0x277CD16D8);
  v6 = sub_253CD0A58();
  v7 = *(a1 + *a4);
  *(a1 + *a4) = v6;
}

uint64_t sub_253223DE4()
{
  v1 = (v0 + OBJC_IVAR____TtC19HomeKitDaemonLegacy50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___currentAccessoryManufacturer);
  v2 = *(v0 + OBJC_IVAR____TtC19HomeKitDaemonLegacy50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___currentAccessoryManufacturer);
  v3 = *(v0 + OBJC_IVAR____TtC19HomeKitDaemonLegacy50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___currentAccessoryManufacturer + 8);
  v4 = v2;
  if (v3 == 1)
  {
    v5 = sub_253223D30();
    if (v5 && (v6 = v5, v7 = [v5 manufacturer], v6, v7))
    {
      v4 = sub_253CD0968();
      v9 = v8;
    }

    else
    {
      v4 = 0;
      v9 = 0;
    }

    v10 = *v1;
    v11 = v1[1];
    *v1 = v4;
    v1[1] = v9;

    sub_25322572C(v10, v11);
  }

  sub_253225740(v2, v3);
  return v4;
}

void sub_253223EC0(char *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v6 = sub_253CD0968();
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  v8 = &a1[*a4];
  v9 = *v8;
  v10 = v8[1];
  *v8 = v6;
  v8[1] = v7;
  v11 = a1;
  sub_25322572C(v9, v10);
}

uint64_t sub_253223F5C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3378, &qword_253D491B0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v19[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v19[-v8];
  v10 = OBJC_IVAR____TtC19HomeKitDaemonLegacy50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___currentAccessoryUUID;
  swift_beginAccess();
  sub_2532168A0(v1 + v10, v9, &qword_27F5A3378, &qword_253D491B0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5A2AD0, &unk_253D486A0);
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11) != 1)
  {
    return sub_25322564C(v9, a1);
  }

  sub_2532255E4(v9);
  v13 = sub_253223D30();
  if (v13)
  {
    v14 = v13;
    v15 = [v13 uuid];

    sub_253CCFF38();
    v16 = 0;
  }

  else
  {
    v16 = 1;
  }

  v18 = sub_253CCFF58();
  (*(*(v18 - 8) + 56))(a1, v16, 1, v18);
  sub_2532168A0(a1, v7, &unk_27F5A2AD0, &unk_253D486A0);
  (*(v12 + 56))(v7, 0, 1, v11);
  swift_beginAccess();
  sub_2532256BC(v7, v1 + v10);
  return swift_endAccess();
}

id sub_2532241FC()
{
  v1 = OBJC_IVAR____TtC19HomeKitDaemonLegacy50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___currentAccessoryPublicPairingIdentity;
  v2 = *(v0 + OBJC_IVAR____TtC19HomeKitDaemonLegacy50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___currentAccessoryPublicPairingIdentity);
  v3 = v2;
  if (v2 == 1)
  {
    v4 = sub_253223D30();
    if (v4)
    {
      v5 = v4;
      v3 = [v4 pairingIdentity];

      if (v3)
      {
        v6 = [v3 publicPairingIdentity];

        v3 = [v6 protoPayload];
      }
    }

    else
    {
      v3 = 0;
    }

    v7 = *(v0 + v1);
    *(v0 + v1) = v3;
    v8 = v3;
    sub_2531FD41C(v7);
  }

  sub_2531FD42C(v2);
  return v3;
}

id sub_253224378()
{
  v1 = OBJC_IVAR____TtC19HomeKitDaemonLegacy50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___currentHome;
  v2 = *(v0 + OBJC_IVAR____TtC19HomeKitDaemonLegacy50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___currentHome);
  v3 = v2;
  if (v2 == 1)
  {
    v4 = sub_253223D30();
    v3 = [v4 home];

    v5 = *(v0 + v1);
    *(v0 + v1) = v3;
    v6 = v3;
    sub_2531FD41C(v5);
  }

  sub_2531FD42C(v2);
  return v3;
}

id sub_253224494()
{
  v1 = (v0 + OBJC_IVAR____TtC19HomeKitDaemonLegacy50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___currentHomeNumberOfAppleMediaAccessories);
  if (*(v0 + OBJC_IVAR____TtC19HomeKitDaemonLegacy50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___currentHomeNumberOfAppleMediaAccessories + 8) != 1)
  {
    return *v1;
  }

  result = sub_253224378();
  if (result)
  {
    v3 = result;
    v4 = [result appleMediaAccessories];

    sub_253200644(0, &qword_281530E38, off_27971A018);
    v5 = sub_253CD0A58();

    if (v5 >> 62)
    {
      v7 = sub_253CD0ED8();

      if (v7 < 0)
      {
        __break(1u);
      }

      result = v7;
    }

    else
    {
      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);

      result = v6;
    }
  }

  *v1 = result;
  v1[8] = 0;
  return result;
}

id sub_2532245D0()
{
  v1 = (v0 + OBJC_IVAR____TtC19HomeKitDaemonLegacy50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___currentHomeNumberOfResidents);
  if (*(v0 + OBJC_IVAR____TtC19HomeKitDaemonLegacy50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___currentHomeNumberOfResidents + 8) != 1)
  {
    return *v1;
  }

  result = sub_253224378();
  if (result)
  {
    v3 = result;
    v4 = [result residentDeviceManager];

    v5 = [v4 residentDevices];
    swift_unknownObjectRelease();
    sub_253200644(0, &unk_27F5A3380, off_27971A218);
    v6 = sub_253CD0A58();

    if (v6 >> 62)
    {
      v8 = sub_253CD0ED8();

      if (v8 < 0)
      {
        __break(1u);
      }

      result = v8;
    }

    else
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);

      result = v7;
    }
  }

  *v1 = result;
  v1[8] = 0;
  return result;
}

id sub_253224778(uint64_t *a1, SEL *a2, void (*a3)(uint64_t), void (*a4)(void *))
{
  v6 = *a1;
  v7 = *(v4 + *a1);
  v8 = v7;
  if (v7 == 1)
  {
    v8 = [*(v4 + OBJC_IVAR____TtC19HomeKitDaemonLegacy50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot_dataSource) *a2];
    v10 = *(v4 + v6);
    *(v4 + v6) = v8;
    v11 = v8;
    a3(v10);
  }

  a4(v7);
  return v8;
}

id sub_2532249D0(uint64_t *a1, SEL *a2, void (*a3)(uint64_t), void (*a4)(void *))
{
  v6 = *a1;
  v7 = *(v4 + *a1);
  v8 = v7;
  if (v7 == 1)
  {
    v11 = sub_253223D30();
    if (v11 && (v12 = v11, v13 = [v11 *a2], v12, v13))
    {
      v8 = [v13 protoPayload];
    }

    else
    {
      v8 = 0;
    }

    v14 = *(v4 + v6);
    *(v4 + v6) = v8;
    v15 = v8;
    a3(v14);
  }

  a4(v7);
  return v8;
}

id sub_253224B30()
{
  v1 = (v0 + OBJC_IVAR____TtC19HomeKitDaemonLegacy50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___sfProblemFlags);
  if (*(v0 + OBJC_IVAR____TtC19HomeKitDaemonLegacy50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___sfProblemFlags + 8) != 1)
  {
    return *v1;
  }

  result = [*(v0 + OBJC_IVAR____TtC19HomeKitDaemonLegacy50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot_dataSource) currentDeviceRawProblemFlags];
  *v1 = result;
  v1[8] = 0;
  return result;
}

id sub_253224BBC(void *a1, uint64_t a2, void (*a3)(void))
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5A2AD0, &unk_253D486A0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v16 - v7;
  v9 = a1;
  a3();

  v10 = sub_253CCFF58();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 48))(v8, 1, v10);
  v13 = 0;
  if (v12 != 1)
  {
    v14 = sub_253CCFF18();
    (*(v11 + 8))(v8, v10);
    v13 = v14;
  }

  return v13;
}

uint64_t sub_253224CEC@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5A2AD0, &unk_253D486A0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v21[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3378, &qword_253D491B0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v21[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v14 = &v21[-v13];
  v15 = OBJC_IVAR____TtC19HomeKitDaemonLegacy50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot____lazy_storage___currentDeviceIDSIdentifier;
  swift_beginAccess();
  sub_2532168A0(v1 + v15, v14, &qword_27F5A3378, &qword_253D491B0);
  if ((*(v4 + 48))(v14, 1, v3) != 1)
  {
    return sub_25322564C(v14, a1);
  }

  sub_2532255E4(v14);
  v16 = [*(v1 + OBJC_IVAR____TtC19HomeKitDaemonLegacy50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot_dataSource) currentDeviceIDSIdentifier];
  if (v16)
  {
    v17 = v16;
    sub_253CCFF38();

    v18 = 0;
  }

  else
  {
    v18 = 1;
  }

  v20 = sub_253CCFF58();
  (*(*(v20 - 8) + 56))(v7, v18, 1, v20);
  sub_25322564C(v7, a1);
  sub_2532168A0(a1, v12, &unk_27F5A2AD0, &unk_253D486A0);
  (*(v4 + 56))(v12, 0, 1, v3);
  swift_beginAccess();
  sub_2532256BC(v12, v1 + v15);
  return swift_endAccess();
}

void sub_253224F98(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3378, &qword_253D491B0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5A2AD0, &unk_253D486A0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v20 - v14;
  if (a3)
  {
    sub_253CCFF38();
    v16 = sub_253CCFF58();
    (*(*(v16 - 8) + 56))(v15, 0, 1, v16);
  }

  else
  {
    v17 = sub_253CCFF58();
    (*(*(v17 - 8) + 56))(v15, 1, 1, v17);
  }

  sub_25322564C(v15, v10);
  (*(v12 + 56))(v10, 0, 1, v11);
  v18 = *a4;
  swift_beginAccess();
  v19 = a1;
  sub_2532256BC(v10, a1 + v18);
  swift_endAccess();
}

uint64_t sub_2532251DC(uint64_t *a1, SEL *a2)
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4 == 2)
  {
    LOBYTE(v4) = [*(v2 + OBJC_IVAR____TtC19HomeKitDaemonLegacy50AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot_dataSource) *a2];
    *(v2 + v3) = v4;
  }

  return v4 & 1;
}

id sub_253225264()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for AccessoryDiagnosticInfoProtoDiagnosticInfoSnapshot()
{
  result = qword_27F5A3358;
  if (!qword_27F5A3358)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_253225474()
{
  sub_253225580();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_253225580()
{
  if (!qword_27F5A3368)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F5A2AD0, &unk_253D486A0);
    v0 = sub_253CD0DD8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F5A3368);
    }
  }
}

uint64_t sub_2532255E4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3378, &qword_253D491B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25322564C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5A2AD0, &unk_253D486A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2532256BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3378, &qword_253D491B0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_25322572C(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_253225740(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_25322575C()
{
  v1[26] = v0;
  v2 = sub_253CD0818();
  v1[27] = v2;
  v3 = *(v2 - 8);
  v1[28] = v3;
  v4 = *(v3 + 64) + 15;
  v1[29] = swift_task_alloc();
  v5 = sub_253CD0838();
  v1[30] = v5;
  v6 = *(v5 - 8);
  v1[31] = v6;
  v7 = *(v6 + 64) + 15;
  v1[32] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A33B8, &unk_253D491E0);
  v1[33] = v8;
  v9 = *(v8 - 8);
  v1[34] = v9;
  v10 = *(v9 + 64) + 15;
  v1[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2532258E0, 0, 0);
}

uint64_t sub_2532258E0()
{
  v1 = [*(v0 + 208) dataSource];
  *(v0 + 288) = v1;
  if (v1)
  {
    v2 = v1;
    v4 = *(v0 + 272);
    v3 = *(v0 + 280);
    v5 = *(v0 + 264);
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 192;
    *(v0 + 24) = sub_253225B04;
    swift_continuation_init();
    *(v0 + 136) = v5;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 112));
    sub_253226814();
    sub_253CD0AC8();
    (*(v4 + 32))(boxed_opaque_existential_0, v3, v5);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_253225DFC;
    *(v0 + 104) = &block_descriptor_3;
    [v2 detectNearbyAccessoriesOnMismatchNetworkWithCompletionHandler_];
    (*(v4 + 8))(boxed_opaque_existential_0, v5);

    return MEMORY[0x282200938](v0 + 16);
  }

  else
  {
    v7 = *(v0 + 280);
    v8 = *(v0 + 256);
    v9 = *(v0 + 232);

    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_253225B04()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_253225BE4, 0, 0);
}

uint64_t sub_253225BE4()
{
  v1 = v0[36];
  v2 = v0[32];
  v3 = v0[29];
  v19 = v0[31];
  v20 = v0[30];
  v5 = v0[27];
  v4 = v0[28];
  v6 = v0[26];
  v7 = v0[24];
  swift_unknownObjectRelease();
  v18 = [v6 workQueue];
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v8 + 24) = v7;
  v0[22] = sub_253226878;
  v0[23] = v8;
  v0[18] = MEMORY[0x277D85DD0];
  v0[19] = 1107296256;
  v0[20] = sub_25321E9B8;
  v0[21] = &block_descriptor_16;
  v9 = _Block_copy(v0 + 18);
  v10 = v6;
  v11 = v7;
  sub_253CD0828();
  v0[25] = MEMORY[0x277D84F90];
  sub_253226898();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A31E8, &qword_253D48EA0);
  sub_2532268F0();
  sub_253CD0E38();
  MEMORY[0x259C00C70](0, v2, v3, v9);
  _Block_release(v9);

  (*(v4 + 8))(v3, v5);
  (*(v19 + 8))(v2, v20);
  v12 = v0[23];

  v13 = v0[35];
  v14 = v0[32];
  v15 = v0[29];

  v16 = v0[1];

  return v16();
}

uint64_t sub_253225DFC(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v3 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A33B8, &unk_253D491E0);
  return sub_253CD0AE8();
}

id sub_253225E5C(void *a1, void *a2)
{
  result = [a1 _isNearbyDiscoveryActive];
  if (result)
  {
    v5 = [a2 accessoriesNotOnWiFi];
    if (!v5)
    {
      sub_253CCFF58();
      sub_253CD0A58();
      v5 = sub_253CD0A38();
    }

    [a1 setNearbyAccessoryUUIDsNotOnCurrentNetwork_];

    return [a1 _updateSymptomsForAllRegisteredAccessories];
  }

  return result;
}

uint64_t sub_25322609C(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_253226144;

  return sub_25322575C();
}

uint64_t sub_253226144()
{
  v1 = *v0;
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);
  v4 = *(*v0 + 16);
  v5 = *v0;

  if (v3)
  {
    v6 = *(v1 + 24);
    v6[2](v6);
    _Block_release(v6);
  }

  v7 = *(v5 + 8);

  return v7();
}

uint64_t sub_25322628C@<X0>(uint64_t *a1@<X8>)
{
  v2 = [objc_opt_self() driver];
  v3 = sub_2532340C0();

  if (v3)
  {
    type metadata accessor for AssertionHandle();
    v4 = swift_allocObject();
    sub_2532265BC(v3, 0xD000000000000014, 0x8000000253D4F960, v4);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A33B0, &qword_253D491C0);
  v5 = sub_253CD0DC8();

  result = swift_getObjectType();
  a1[3] = result;
  *a1 = v5;
  return result;
}

uint64_t sub_2532264A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A2AB0, &unk_253D4A560);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_253226510(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A2AB0, &unk_253D4A560);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_2532265BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a4 + 32) = 0;
  swift_unknownObjectWeakInit();
  *(a4 + 32) = &off_2864FAF40;
  swift_unknownObjectWeakAssign();
  v8 = type metadata accessor for AssertionHandle.Assertion(0);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  v11 = swift_allocObject();
  sub_253CCFF48();
  if (!a3)
  {
    a2 = sub_253CCFF08();
    a3 = v12;
  }

  v13 = (v11 + OBJC_IVAR____TtCC19HomeKitDaemonLegacy15AssertionHandle9Assertion_reason);
  *v13 = a2;
  v13[1] = a3;
  *(a4 + 16) = v11;
  v14 = *(a1 + OBJC_IVAR___HMDDiscoveryController_assertions);

  os_unfair_lock_lock((v14 + 24));
  sub_2532266E8((v14 + 16), &v17);
  os_unfair_lock_unlock((v14 + 24));
  v15 = v17;

  sub_2532216C4(v11);
  if (v15 == 1)
  {
    sub_253220C8C();
  }

  return a4;
}

uint64_t sub_253226704()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_25320C7A8;

  return sub_25322609C(v2, v3);
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

unint64_t sub_253226814()
{
  result = qword_281530D40;
  if (!qword_281530D40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281530D40);
  }

  return result;
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_253226898()
{
  result = qword_281530ED0;
  if (!qword_281530ED0)
  {
    sub_253CD0818();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281530ED0);
  }

  return result;
}

unint64_t sub_2532268F0()
{
  result = qword_281530EC8;
  if (!qword_281530EC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5A31E8, &qword_253D48EA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281530EC8);
  }

  return result;
}

id sub_253226984()
{
  v2.receiver = v0;
  v2.super_class = _s15SwiftExtensionsCMa_0();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_253226AD4()
{
  v1 = v0;
  v2 = _s15SwiftExtensionsCMa_0();
  v3 = objc_allocWithZone(v2);
  *&v3[OBJC_IVAR____TtCE19HomeKitDaemonLegacyCSo14HMDHomeManagerP33_7BC8BE0E1B3C7A1C5B9B66E8847D7B1815SwiftExtensions_homeGraphIndexer] = 0;
  v4 = [v0 workQueue];
  if (v4)
  {
    v5 = v4;
    type metadata accessor for DispatchQueueMonitor();
    swift_allocObject();
    *&v3[OBJC_IVAR____TtCE19HomeKitDaemonLegacyCSo14HMDHomeManagerP33_7BC8BE0E1B3C7A1C5B9B66E8847D7B1815SwiftExtensions_dispatchQueueMonitor] = sub_253232BF0(v5, 0x8AC7230489E80000, 0, 0x8AC7230489E80000, 0);
    v7.receiver = v3;
    v7.super_class = v2;
    v6 = objc_msgSendSuper2(&v7, sel_init);
    [v1 setSwiftExtensions_];
  }

  else
  {
    __break(1u);
  }
}

id sub_253226C08()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F5A2C48, &unk_253D48880);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v27 = &v26 - v3;
  v4 = [v0 _swiftExtensions];
  type metadata accessor for HomeGraphIndexer(0);
  v5 = v0;
  sub_2532517BC(v5);
  v6 = *&v4[OBJC_IVAR____TtCE19HomeKitDaemonLegacyCSo14HMDHomeManagerP33_7BC8BE0E1B3C7A1C5B9B66E8847D7B1815SwiftExtensions_homeGraphIndexer];
  *&v4[OBJC_IVAR____TtCE19HomeKitDaemonLegacyCSo14HMDHomeManagerP33_7BC8BE0E1B3C7A1C5B9B66E8847D7B1815SwiftExtensions_homeGraphIndexer] = v7;

  result = [v5 messageDispatcher];
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v9 = result;
  v10 = *MEMORY[0x277CD01E8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A2AE8, &unk_253D4B300);
  v11 = swift_allocObject();
  v28 = xmmword_253D48D90;
  *(v11 + 16) = xmmword_253D48D90;
  v12 = objc_opt_self();
  *(v11 + 32) = [v12 policyWithEntitlements_];
  sub_25321CDA4();
  v13 = sub_253CD0A38();

  [v9 registerForMessage:v10 receiver:v5 policies:v13 selector:sel_handleFindVendorAccessoryRequest_];

  result = [v5 messageDispatcher];
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v14 = result;
  v15 = sub_253CD0938();
  v16 = swift_allocObject();
  *(v16 + 16) = v28;
  *(v16 + 32) = [objc_opt_self() defaultSecurePolicy];
  v17 = sub_253CD0A38();

  [v14 registerForMessage:v15 receiver:v5 policies:v17 selector:sel_handleRemoteEnergyKitClearAllMessage_];

  result = [v5 messageDispatcher];
  if (!result)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v18 = result;
  v19 = sub_253CD0C68();
  v20 = swift_allocObject();
  *(v20 + 16) = v28;
  *(v20 + 32) = [v12 policyWithEntitlements_];
  v21 = sub_253CD0A38();

  [v18 registerForMessage:v19 receiver:v5 policies:v21 selector:sel_handleLocalEnergyKitClearAllMessage_];

  result = isInternalBuild();
  if (result)
  {
    v22 = sub_253CD0B58();
    v23 = v27;
    (*(*(v22 - 8) + 56))(v27, 1, 1, v22);
    v24 = swift_allocObject();
    v24[2] = 0;
    v24[3] = 0;
    v24[4] = v5;
    v25 = v5;
    sub_25324690C(0, 0, v23, &unk_253D49298, v24);
  }

  return result;
}

uint64_t sub_253227004()
{
  v1 = [*(v0 + 16) _swiftExtensions];
  v2 = *&v1[OBJC_IVAR____TtCE19HomeKitDaemonLegacyCSo14HMDHomeManagerP33_7BC8BE0E1B3C7A1C5B9B66E8847D7B1815SwiftExtensions_dispatchQueueMonitor];
  *(v0 + 24) = v2;

  return MEMORY[0x2822009F8](sub_25322709C, v2, 0);
}

uint64_t sub_25322709C()
{
  v1 = *(v0 + 24);
  sub_253232E7C();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2532272D4(void *a1, void *aBlock, void *a3)
{
  v3[4] = a1;
  v3[5] = a3;
  v3[6] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;

  return MEMORY[0x2822009F8](sub_253227360, 0, 0);
}

uint64_t sub_253227360()
{
  super_class = v0[2].super_class;
  v2 = type metadata accessor for NetworkMismatchDetector();
  v3 = objc_allocWithZone(v2);
  *&v3[OBJC_IVAR____TtC19HomeKitDaemonLegacy23NetworkMismatchDetector_dataSource + 8] = 0;
  *(swift_unknownObjectWeakInit() + 8) = &off_2864FACA8;
  swift_unknownObjectWeakAssign();
  v0[1].receiver = v3;
  v0[1].super_class = v2;
  v0[3].super_class = objc_msgSendSuper2(v0 + 1, sel_init);
  v4 = swift_task_alloc();
  v0[4].receiver = v4;
  *v4 = v0;
  v4[1] = sub_253227464;
  receiver = v0[2].receiver;

  return sub_253282834(receiver);
}

uint64_t sub_253227464(uint64_t a1)
{
  v2 = *(*v1 + 64);
  v4 = *v1;
  *(*v1 + 72) = a1;

  return MEMORY[0x2822009F8](sub_253227564, 0, 0);
}

uint64_t sub_253227564()
{
  v1 = *(v0 + 48);
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);

  v4 = *(v0 + 72);
  if (v1)
  {
    v5 = *(v0 + 48);
    v5[2](v5, *(v0 + 72));

    _Block_release(v5);
  }

  else
  {
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_253227628()
{
  if (qword_2815314D0 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_25320C7A8;

  return sub_253211F4C();
}

uint64_t sub_253227848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return MEMORY[0x2822009F8](sub_253227868, 0, 0);
}

uint64_t sub_253227868()
{
  v1 = [*(v0 + 24) _swiftExtensions];
  v2 = *&v1[OBJC_IVAR____TtCE19HomeKitDaemonLegacyCSo14HMDHomeManagerP33_7BC8BE0E1B3C7A1C5B9B66E8847D7B1815SwiftExtensions_homeGraphIndexer];
  *(v0 + 32) = v2;

  if (v2)
  {
    v3 = swift_task_alloc();
    *(v0 + 40) = v3;
    *v3 = v0;
    v3[1] = sub_253227974;

    return sub_253251E04();
  }

  else
  {
    **(v0 + 16) = *(v0 + 32) == 0;
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_253227974()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_253227A8C, 0, 0);
}

uint64_t sub_253227BBC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25320C7A8;

  return sub_253227848(a1, v4, v5, v6);
}

uint64_t sub_253227C70()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_25320C7A8;

  return sub_25322760C();
}

uint64_t sub_253227D1C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_25320C7A8;

  return sub_2532272D4(v2, v3, v4);
}

uint64_t sub_253227DD0(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_25320C7A8;

  return v7();
}

uint64_t sub_253227EB8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_25320C438;

  return v8();
}

uint64_t sub_253227FA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F5A2C48, &unk_253D48880);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v25 - v11;
  sub_25322825C(a3, v25 - v11);
  v13 = sub_253CD0B58();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_2532282CC(v12);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_253CD0B48();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v15 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = sub_253CD0AB8();
  v18 = v17;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v19 = sub_253CD0988() + 32;
    v20 = swift_allocObject();
    *(v20 + 16) = a4;
    *(v20 + 24) = a5;

    if (v18 | v16)
    {
      v26[0] = 0;
      v26[1] = 0;
      v21 = v26;
      v26[2] = v16;
      v26[3] = v18;
    }

    else
    {
      v21 = 0;
    }

    v25[1] = 7;
    v25[2] = v21;
    v25[3] = v19;
    v23 = swift_task_create();

    sub_2532282CC(a3);

    return v23;
  }

LABEL_8:
  sub_2532282CC(a3);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_25322825C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F5A2C48, &unk_253D48880);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2532282CC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F5A2C48, &unk_253D48880);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_253228334(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25322842C;

  return v7(a1);
}

uint64_t sub_25322842C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_253228524(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_25320C7A8;

  return sub_253228334(a1, v5);
}

uint64_t sub_2532285DC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_25320C438;

  return sub_253228334(a1, v5);
}

uint64_t objectdestroyTm_1()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2532286D4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25320C7A8;

  return sub_253226FE4(a1, v4, v5, v6);
}

id sub_2532287A0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3440, &qword_253D493E8);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v48 - v2;
  v4 = sub_253CD0208();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_253CD02D8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v48 - v15;
  v17 = [objc_allocWithZone(MEMORY[0x277CD1718]) init];
  if (v17)
  {
    v49 = v8;
    v50 = v5;
    sub_253CD0118();
    v18 = sub_253CD0938();

    [v17 setMacAddress_];

    sub_253CD0158();
    v19 = sub_253CD0938();

    [v17 setIfaceName_];

    sub_253CD0168();
    (*(v10 + 16))(v14, v16, v9);
    v20 = (*(v10 + 88))(v14, v9);
    v21 = *MEMORY[0x277D0EFB8];
    v51 = v4;
    if (v20 == v21 || v20 == *MEMORY[0x277D0EFC0])
    {
      (*(v10 + 8))(v16, v9);
    }

    else
    {
      v22 = *MEMORY[0x277D0EFC8];
      v23 = *(v10 + 8);
      v24 = v20;
      v23(v16, v9);
      if (v24 != v22)
      {
        v23(v14, v9);
      }
    }

    v25 = v49;
    v26 = sub_253CD0938();

    [v17 setType_];

    v27 = sub_253CD0128();
    sub_253228D48(v27);

    v28 = objc_allocWithZone(MEMORY[0x277CBEB18]);
    v29 = sub_253CD0A38();

    v30 = [v28 initWithArray_];

    [v17 setIpv4Addresses_];
    v31 = sub_253CD0138();
    sub_253228D48(v31);

    v32 = objc_allocWithZone(MEMORY[0x277CBEB18]);
    v33 = sub_253CD0A38();

    v34 = [v32 initWithArray_];

    [v17 setIpv6Addresses_];
    sub_253CD0108();
    v36 = v50;
    v35 = v51;
    if ((*(v50 + 48))(v3, 1, v51) == 1)
    {
      sub_25322CB04(v3);
    }

    else
    {
      (*(v36 + 32))(v25, v3, v35);
      v37 = [objc_allocWithZone(MEMORY[0x277CD1710]) init];
      if (v37)
      {
        v38 = v37;
        v39 = sub_253CD01D8();
        v41 = v40;
        v42 = sub_253CCFE68();
        sub_25321C6EC(v39, v41);
        [v38 setSsid_];

        v43 = sub_253CD01F8();
        v45 = v44;
        v46 = sub_253CCFE68();
        sub_25321C6EC(v43, v45);
        [v38 setBssid_];

        [v17 setWifiInfo_];
      }

      (*(v36 + 8))(v25, v35);
    }
  }

  return v17;
}

uint64_t sub_253228D48(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v11 = MEMORY[0x277D84F90];
    sub_25328BF3C(0, v1, 0);
    v2 = v11;
    v4 = (a1 + 40);
    do
    {
      v8 = *(v4 - 1);
      v9 = *v4;

      swift_dynamicCast();
      v11 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_25328BF3C((v5 > 1), v6 + 1, 1);
        v2 = v11;
      }

      *(v2 + 16) = v6 + 1;
      sub_2531FF150(&v10, (v2 + 32 * v6 + 32));
      v4 += 2;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_253228E48@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3440, &qword_253D493E8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v37 - v6;
  v8 = sub_253CD02D8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [a1 ifaceName];
  if (v13)
  {
    v14 = v13;
    v15 = sub_253CD0968();

    v16 = [a1 type];
    if (v16)
    {
      v39 = v15;
      v17 = v16;
      v18 = sub_253CD0968();
      v20 = v19;

      v21 = [a1 macAddress];
      if (v21)
      {
        v22 = v21;
        v38 = a2;
        v23 = sub_253CD0968();
        v37[1] = v24;
        v37[2] = v23;

        if (v18 == 0x74656E7265687465 && v20 == 0xE800000000000000 || (sub_253CD1118() & 1) != 0)
        {

          v25 = MEMORY[0x277D0EFC0];
        }

        else if (v18 == 0x3132303865656569 && v20 == 0xE900000000000031)
        {

          v25 = MEMORY[0x277D0EFC8];
        }

        else
        {
          v36 = sub_253CD1118();

          v25 = MEMORY[0x277D0EFB8];
          if (v36)
          {
            v25 = MEMORY[0x277D0EFC8];
          }
        }

        v26 = v38;
        (*(v9 + 104))(v12, *v25, v8);
        v27 = [a1 ipv4Addresses];
        if (!v27 || (v40 = 0, v28 = v27, sub_253CD0A48(), v28, !v40))
        {
        }

        v29 = [a1 ipv6Addresses];
        if (!v29 || (v40 = 0, v30 = v29, sub_253CD0A48(), v30, !v40))
        {
        }

        v31 = sub_253CD0208();
        (*(*(v31 - 8) + 56))(v7, 1, 1, v31);
        sub_253CD0148();
        v32 = sub_253CD0178();
        return (*(*(v32 - 8) + 56))(v26, 0, 1, v32);
      }
    }
  }

  v34 = sub_253CD0178();
  v35 = *(*(v34 - 8) + 56);

  return v35(a2, 1, 1, v34);
}

id sub_2532292B0()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CD1720]) init];
  if (v0)
  {
    sub_253CD0238();
    v1 = sub_253CD0938();

    [v0 setIfaceName_];

    [v0 setIsPrimary_];
    sub_253CD0288();
    if (v2)
    {
      v3 = sub_253CD0938();

      [v0 setConfirmedIfaceName_];
    }

    v4 = sub_253CD0248();
    sub_253228D48(v4);

    v5 = objc_allocWithZone(MEMORY[0x277CBEB18]);
    v6 = sub_253CD0A38();

    v7 = [v5 initWithArray_];

    [v0 setIpv4Addresses_];
    v8 = sub_253CD0258();
    sub_253228D48(v8);

    v9 = objc_allocWithZone(MEMORY[0x277CBEB18]);
    v10 = sub_253CD0A38();

    v11 = [v9 initWithArray_];

    [v0 setIpv6Addresses_];
    sub_253CD0268();
    if (v12)
    {
      v13 = sub_253CD0938();

      [v0 setNetworkSignatureV4_];
    }

    sub_253CD0218();
    if (v14)
    {
      v15 = sub_253CD0938();

      [v0 setRouterIPv4_];
    }

    sub_253CD0278();
    if (v16)
    {
      v17 = sub_253CD0938();

      [v0 setNetworkSignatureV6_];
    }

    sub_253CD0228();
    if (v18)
    {
      v19 = sub_253CD0938();

      [v0 setRouterIPv6_];
    }
  }

  return v0;
}

uint64_t sub_25322953C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 ifaceName];
  if (v4)
  {
    v5 = v4;
    sub_253CD0968();

    [a1 isPrimary];
    v6 = [a1 confirmedIfaceName];
    if (v6)
    {
      v7 = v6;
      sub_253CD0968();
    }

    v9 = [a1 ipv4Addresses];
    if (v9)
    {
      v10 = v9;
      sub_253CD0A48();
    }

    v11 = [a1 routerIPv4];
    if (v11)
    {
      v12 = v11;
      sub_253CD0968();
    }

    v13 = [a1 networkSignatureV4];
    if (v13)
    {
      v14 = v13;
      sub_253CD0968();
    }

    v15 = [a1 ipv6Addresses];
    if (v15)
    {
      v16 = v15;
      sub_253CD0A48();
    }

    v17 = [a1 routerIPv6];
    if (v17)
    {
      v18 = v17;
      sub_253CD0968();
    }

    v19 = [a1 networkSignatureV6];
    if (v19)
    {
      v20 = v19;
      sub_253CD0968();
    }

    sub_253CD0298();
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  v21 = sub_253CD02B8();
  v22 = *(*(v21 - 8) + 56);

  return v22(a2, v8, 1, v21);
}

void __swiftcall InterfaceInfo.init(name:type:hwAddr:)(HomeKitDaemonLegacy::InterfaceInfo *__return_ptr retstr, Swift::String name, Swift::String type, Swift::String hwAddr)
{
  retstr->name = name;
  retstr->type = type;
  retstr->hwAddr = hwAddr;
}

id NetworkInfoController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id NetworkInfoController.init()()
{
  type metadata accessor for NetworkInfoSCDataSource();
  v1 = swift_allocObject();
  v2 = sub_25322C7CC(v1);
  swift_getObjectType();
  v3 = *((*MEMORY[0x277D85000] & *v0) + 0x30);
  v4 = *((*MEMORY[0x277D85000] & *v0) + 0x34);
  swift_deallocPartialClassInstance();
  return v2;
}

Swift::Void __swiftcall NetworkInfoController.start()()
{
  v1 = *MEMORY[0x277CBECE8];
  v2 = sub_253CD0938();
  v3 = SCDynamicStoreCreate(v1, v2, 0, 0);

  v4 = *(v0 + OBJC_IVAR___HMDNetworkInfoController_store);
  *(v0 + OBJC_IVAR___HMDNetworkInfoController_store) = v3;
}

void sub_253229AF8()
{
  v320 = sub_253CD02B8();
  v323 = *(v320 - 8);
  v1 = *(v323 + 64);
  MEMORY[0x28223BE20](v320);
  v3 = v316 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_253CD0178();
  v5 = *(v4 - 8);
  v331 = v4;
  NetworkServiceEntity = v5;
  isa = v5[2].isa;
  MEMORY[0x28223BE20](v4);
  v8 = v316 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3440, &qword_253D493E8);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v329 = v316 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v353 = v316 - v13;
  v14 = sub_253CD02D8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v343 = v316 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = v316 - v19;
  v21 = *(v0 + OBJC_IVAR___HMDNetworkInfoController_store);
  if (!v21)
  {
    v118 = sub_253CD07C8();
    v119 = sub_253CD0C98();
    if (os_log_type_enabled(v118, v119))
    {
      v120 = swift_slowAlloc();
      *v120 = 0;
      _os_log_impl(&dword_2531F8000, v118, v119, "No store", v120, 2u);
      MEMORY[0x259C040E0](v120, -1, -1);
    }

    goto LABEL_91;
  }

  v334 = v0;
  v356 = v21;
  sub_25322CB6C();
  v24 = *(v22 + 16);
  if (!v24)
  {

    v118 = sub_253CD07C8();
    v132 = sub_253CD0C98();
    if (os_log_type_enabled(v118, v132))
    {
      v133 = swift_slowAlloc();
      *v133 = 0;
      _os_log_impl(&dword_2531F8000, v118, v132, "Couldn't obtain interfaces", v133, 2u);
      MEMORY[0x259C040E0](v133, -1, -1);
    }

LABEL_91:
    return;
  }

  v316[0] = v3;
  v333 = OBJC_IVAR___HMDNetworkInfoController_logger;
  LODWORD(v344) = *MEMORY[0x277D0EFC8];
  v26 = *(v15 + 104);
  v25 = (v15 + 104);
  v349 = (v25 - 96);
  v350 = v26;
  v319 = *MEMORY[0x277D0EFC0];
  v348 = *MEMORY[0x277CE1648];
  v330 = *MEMORY[0x277CE1688];
  v347 = *MEMORY[0x277CBECE8];
  v322 = *MEMORY[0x277CE1728];
  v351 = v25;
  v27 = *MEMORY[0x277CE1690];
  v327 = (v25 - 88);
  v328 = v27;
  v326 = NetworkServiceEntity + 1;
  v321 = *MEMORY[0x277CE1758];
  v316[1] = v22;
  v342 = v8;
  v354 = (v22 + 72);
  v318 = *MEMORY[0x277CE1660];
  v28 = MEMORY[0x277D84F90];
  *&v23 = 136316162;
  v317 = v23;
  v336 = v14;
  v352 = v20;
  do
  {
    v345 = v28;
    v29 = *(v354 - 5);
    v357 = *(v354 - 4);
    v31 = *(v354 - 3);
    v30 = *(v354 - 2);
    v33 = *(v354 - 1);
    v32 = *v354;
    v350(v20, v344, v14);
    v358 = v30;
    v34 = v31 == 0x3132303845454549 && v30 == 0xE900000000000031;
    NetworkGlobalEntity = v31;
    v346 = v33;
    if (!v34)
    {
      if ((sub_253CD1118() & 1) == 0)
      {
        v35 = v31 == 0x74656E7265687445 && v358 == 0xE800000000000000;
        if (!v35 && (sub_253CD1118() & 1) == 0)
        {
          (*v349)(v20, v14);
          v28 = v345;
          goto LABEL_57;
        }
      }

      if (v31 == 0x74656E7265687445 && v358 == 0xE800000000000000)
      {
        goto LABEL_19;
      }
    }

    if (sub_253CD1118())
    {
LABEL_19:
      v37 = *v349;

      v37(v20, v14);
      v38 = v20;
      v39 = v14;
      v350(v38, v319, v14);
    }

    else
    {
      v39 = v14;
    }

    v40 = MEMORY[0x277D84F90];
    *&v368 = MEMORY[0x277D84F90];
    *&v360 = MEMORY[0x277D84F90];
    v41 = sub_253CD0938();
    NetworkInterfaceEntity = SCDynamicStoreKeyCreateNetworkInterfaceEntity(v347, v348, v41, v330);

    v340 = NetworkInterfaceEntity;
    v43 = sub_25322CE6C(v356, NetworkInterfaceEntity);
    v44 = sub_25322BF28(v43, &unk_27F5A3460, &qword_253D49410, &unk_27F5A3C20, &qword_253D493F8);

    v355 = v32;
    if (v44)
    {
      v45 = sub_253CD0968();
      if (*(v44 + 16))
      {
        v47 = sub_253217D84(v45, v46);
        v49 = v48;

        if (v49)
        {
          v50 = *(*(v44 + 56) + 8 * v47);

          swift_beginAccess();
          *&v368 = v50;
        }

        else
        {
        }

        v39 = v336;
      }

      else
      {
      }
    }

    v51 = sub_253CD0938();
    v52 = SCDynamicStoreKeyCreateNetworkInterfaceEntity(v347, v348, v51, v328);

    v339 = v52;
    v53 = sub_25322CE6C(v356, v52);
    v54 = sub_25322BF28(v53, &qword_27F5A30D0, &qword_253D48D58, &qword_27F5A3448, &qword_253D493F0);

    v341 = v24;
    if (v54)
    {
      v55 = sub_253CD0968();
      if (*(v54 + 16))
      {
        v57 = sub_253217D84(v55, v56);
        v59 = v58;

        if (v59)
        {
          v60 = *(*(v54 + 56) + 8 * v57);

          v61 = sub_2532237F0(v60);

          if (!v61)
          {
            v61 = MEMORY[0x277D84F90];
          }

          swift_beginAccess();
          v338 = v61;
          *&v360 = v61;
        }

        else
        {

          v338 = MEMORY[0x277D84F90];
        }

        v39 = v336;
      }

      else
      {

        v338 = v40;
      }
    }

    else
    {
      v338 = v40;
    }

    v62 = sub_253CD0208();
    v63 = *(*(v62 - 8) + 56);
    v63(v353, 1, 1, v62);
    v64 = v343;
    v350(v343, v344, v39);
    v65 = sub_253CD02C8();
    v66 = v39;
    v337 = *v349;
    v337(v64, v39);
    v67 = v357;
    if (v65)
    {
      v68 = sub_253CD0938();
      v69 = SCDynamicStoreKeyCreateNetworkInterfaceEntity(v347, v348, v68, v318);

      v70 = sub_25322CE6C(v356, v69);
      if (*(v70 + 16) && (v71 = sub_253217D84(0x4449535342, 0xE500000000000000), (v72 & 1) != 0) && (v359[0] = *(*(v70 + 56) + 8 * v71), swift_unknownObjectRetain(), (swift_dynamicCast() & 1) != 0))
      {
        v73 = *(&v376 + 1);
        if (*(v70 + 16))
        {
          v324 = *(&v376 + 1);
          v325 = v376;
          v74 = sub_253217D84(1145656147, 0xE400000000000000);
          if (v75)
          {
            v76 = *(*(v70 + 56) + 8 * v74);
            swift_unknownObjectRetain();

            v359[0] = v76;
            v77 = swift_dynamicCast();
            v78 = v324;
            if (v77)
            {
              v79 = v329;
              sub_253CD01E8();

              v80 = v353;
              sub_25322CB04(v353);
              v63(v79, 0, 1, v62);
              sub_25322D078(v79, v80);
            }

            else
            {

              sub_25321C6EC(v325, v78);
            }

            v66 = v336;
            v67 = v357;
            goto LABEL_49;
          }

          v109 = v324;
          v108 = v325;
        }

        else
        {
          v107 = v376;

          v108 = v107;
          v109 = v73;
        }

        sub_25321C6EC(v108, v109);
      }

      else
      {
      }

      v66 = v336;
    }

LABEL_49:
    v357 = v29;

    v81 = sub_253CD07C8();
    v82 = sub_253CD0C88();

    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      LODWORD(v324) = v82;
      v84 = v83;
      v325 = swift_slowAlloc();
      *&v376 = v325;
      *v84 = v317;

      v86 = MEMORY[0x277D837D0];
      v87 = MEMORY[0x259C009D0](v85, MEMORY[0x277D837D0]);
      v89 = v88;

      v90 = sub_253277BA8(v87, v89, &v376);

      *(v84 + 4) = v90;
      *(v84 + 12) = 2080;

      v92 = v86;
      v93 = v358;
      v94 = MEMORY[0x259C009D0](v91, v92);
      v96 = v95;

      v97 = sub_253277BA8(v94, v96, &v376);

      *(v84 + 14) = v97;
      *(v84 + 22) = 2080;

      v98 = sub_253277BA8(v346, v355, &v376);

      *(v84 + 24) = v98;
      *(v84 + 32) = 2080;

      v99 = sub_253277BA8(v357, v67, &v376);

      *(v84 + 34) = v99;
      *(v84 + 42) = 2080;

      v100 = sub_253277BA8(NetworkGlobalEntity, v93, &v376);

      *(v84 + 44) = v100;
      _os_log_impl(&dword_2531F8000, v81, v324, "ObtainedIP: %s  %s mac: %s name: %s type: %s", v84, 0x34u);
      v101 = v325;
      swift_arrayDestroy();
      MEMORY[0x259C040E0](v101, -1, -1);
      v102 = v84;
      v103 = v336;
      MEMORY[0x259C040E0](v102, -1, -1);

      v104 = v352;
    }

    else
    {

      v104 = v352;
      v103 = v66;
    }

    (*v327)(v343, v104, v103);
    sub_25322D008(v353, v329);

    sub_253CD0148();

    v28 = v345;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v28 = sub_2532837CC(0, v28[2] + 1, 1, v28);
    }

    v106 = v28[2];
    v105 = v28[3];
    v14 = v103;
    v20 = v352;
    if (v106 >= v105 >> 1)
    {
      v28 = sub_2532837CC(v105 > 1, v106 + 1, 1, v28);
    }

    v24 = v341;

    sub_25322CB04(v353);
    v337(v20, v14);
    v28[2] = v106 + 1;
    (NetworkServiceEntity[1].isa)(v28 + ((LOBYTE(NetworkServiceEntity[2].data) + 32) & ~LOBYTE(NetworkServiceEntity[2].data)) + NetworkServiceEntity[2].info * v106, v342, v331);

LABEL_57:
    v354 += 6;
    --v24;
  }

  while (v24);

  NetworkGlobalEntity = SCDynamicStoreKeyCreateNetworkGlobalEntity(v347, v348, v330);
  v110 = sub_25322CE6C(v356, NetworkGlobalEntity);
  v111 = v110;
  if (*(v110 + 16) && (v112 = sub_253217D84(0x537972616D697250, 0xEE00656369767265), (v113 & 1) != 0))
  {
    v114 = *(*(v111 + 56) + 8 * v112);
    swift_unknownObjectRetain();

    *&v368 = v114;
    v115 = swift_dynamicCast();
    v116 = v376;
    if (!v115)
    {
      v116 = 0;
    }

    v354 = v116;
    if (v115)
    {
      v117 = *(&v376 + 1);
    }

    else
    {
      v117 = 0;
    }
  }

  else
  {

    v354 = 0;
    v117 = 0;
  }

  v121 = sub_253CD07C8();
  v122 = sub_253CD0C78();

  v123 = os_log_type_enabled(v121, v122);
  v345 = v28;
  if (v123)
  {
    v124 = swift_slowAlloc();
    v125 = swift_slowAlloc();
    *&v376 = v125;
    *v124 = 136315138;
    if (v117)
    {
      v126 = v354;
    }

    else
    {
      v126 = 7104878;
    }

    if (v117)
    {
      v127 = v117;
    }

    else
    {
      v127 = 0xE300000000000000;
    }

    v128 = sub_253277BA8(v126, v127, &v376);

    *(v124 + 4) = v128;
    _os_log_impl(&dword_2531F8000, v121, v122, "primaryServiceName %s", v124, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v125);
    MEMORY[0x259C040E0](v125, -1, -1);
    MEMORY[0x259C040E0](v124, -1, -1);
  }

  v339 = *MEMORY[0x277CE1628];
  NetworkServiceEntity = SCDynamicStoreKeyCreateNetworkServiceEntity(v347, v348, v339, v330);
  v129 = SCDynamicStoreCopyKeyList(v356, NetworkServiceEntity);
  v130 = MEMORY[0x277D84F90];
  if (v129)
  {
    v131 = v129;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      *&v376 = 0;
      type metadata accessor for CFString(0);
      sub_253CD0A48();

      if (v376)
      {
        v130 = v376;
      }
    }

    else
    {
    }
  }

  v134 = sub_253CD07C8();
  v135 = sub_253CD0C78();
  if (os_log_type_enabled(v134, v135))
  {
    v136 = swift_slowAlloc();
    v137 = swift_slowAlloc();
    *&v376 = v137;
    *v136 = 136315138;
    type metadata accessor for CFString(0);
    v139 = MEMORY[0x259C009D0](v130, v138);
    v141 = sub_253277BA8(v139, v140, &v376);

    *(v136 + 4) = v141;
    _os_log_impl(&dword_2531F8000, v134, v135, "v4ServiceKeys %s", v136, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v137);
    MEMORY[0x259C040E0](v137, -1, -1);
    MEMORY[0x259C040E0](v136, -1, -1);
  }

  if (v130 >> 62)
  {
    goto LABEL_255;
  }

  v142 = *((v130 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_97:
  v350 = v117;
  if (!v142)
  {
    v358 = MEMORY[0x277D84F90];
LABEL_161:

    v330 = SCDynamicStoreKeyCreateNetworkServiceEntity(v347, v348, v339, v328);
    v196 = SCDynamicStoreCopyKeyList(v356, v330);
    v197 = MEMORY[0x277D84F90];
    if (v196)
    {
      v198 = v196;
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        *&v376 = 0;
        type metadata accessor for CFString(0);
        sub_253CD0A48();

        if (v376)
        {
          v199 = v376;
        }

        else
        {
          v199 = v197;
        }
      }

      else
      {

        v199 = MEMORY[0x277D84F90];
      }
    }

    else
    {
      v199 = MEMORY[0x277D84F90];
    }

    v200 = sub_253CD07C8();
    v201 = sub_253CD0C78();
    v202 = os_log_type_enabled(v200, v201);
    v340 = v199;
    if (v202)
    {
      v203 = swift_slowAlloc();
      v204 = swift_slowAlloc();
      *&v376 = v204;
      *v203 = 136315138;
      type metadata accessor for CFString(0);
      v206 = MEMORY[0x259C009D0](v199, v205);
      v208 = sub_253277BA8(v206, v207, &v376);
      v199 = v340;

      *(v203 + 4) = v208;
      _os_log_impl(&dword_2531F8000, v200, v201, "v6serviceKeys %s", v203, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v204);
      MEMORY[0x259C040E0](v204, -1, -1);
      MEMORY[0x259C040E0](v203, -1, -1);
    }

    v209 = v358;
    v210 = MEMORY[0x277CE16F0];
    if (v199 >> 62)
    {
      v282 = MEMORY[0x277CE16F0];
      v283 = sub_253CD0ED8();
      v210 = v282;
      v211 = v283;
      if (v283)
      {
        goto LABEL_172;
      }
    }

    else
    {
      v211 = *((v199 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v211)
      {
LABEL_172:
        v130 = 0;
        v355 = *v210;
        v357 = v199 & 0xC000000000000001;
        v351 = (v199 + 32);
        v352 = v199 & 0xFFFFFFFFFFFFFF8;
        v338 = "ntroller";
        v329 = "NetworkSignature";
        v339 = *MEMORY[0x277CE1780];
        v353 = v211;
        do
        {
          if (v357)
          {
            v212 = MEMORY[0x259C00F30](v130, v199);
          }

          else
          {
            if (v130 >= *(v352 + 16))
            {
              goto LABEL_253;
            }

            v212 = *&v351[8 * v130];
          }

          v213 = v212;
          if (__OFADD__(v130++, 1))
          {
            __break(1u);
LABEL_253:
            __break(1u);
LABEL_254:
            __break(1u);
LABEL_255:
            v142 = sub_253CD0ED8();
            goto LABEL_97;
          }

          v215 = SCDynamicStoreCopyValue(v356, v212);
          v358 = v209;
          if (v215)
          {
            v216 = v215;
            TypeID = CFDictionaryGetTypeID();
            if (TypeID == CFGetTypeID(v216) && (*&v376 = v216, swift_unknownObjectRetain(), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3458, &unk_253D49400), (swift_dynamicCast() & 1) != 0))
            {
              swift_unknownObjectRelease();
              v218 = v368;
            }

            else
            {
              v218 = sub_25321883C(v197);
              swift_unknownObjectRelease();
            }
          }

          else
          {
            v218 = MEMORY[0x277D84F98];
          }

          v219 = sub_253CD0968();
          if (*(v218 + 16))
          {
            v221 = sub_253217D84(v219, v220);
            v223 = v222;

            if (v223)
            {
              *&v368 = *(*(v218 + 56) + 8 * v221);
              swift_unknownObjectRetain();
              if (swift_dynamicCast())
              {
                v224 = v376;
                if (v117)
                {
                  *&v376 = sub_253CD0968();
                  *(&v376 + 1) = v225;
                  *&v368 = v354;
                  *(&v368 + 1) = v117;
                  sub_25322CFB4();

                  LODWORD(v346) = sub_253CD0DF8();

                  if (*(v218 + 16))
                  {
                    goto LABEL_191;
                  }

LABEL_202:
                  v348 = 0;
                  v349 = 0;
LABEL_211:
                  v342 = 0;
                  v347 = 0;
                }

                else
                {
                  LODWORD(v346) = 0;
                  if (!*(v218 + 16))
                  {
                    goto LABEL_202;
                  }

LABEL_191:
                  v226 = sub_253217D84(0xD000000000000010, v338 | 0x8000000000000000);
                  if (v227)
                  {
                    *&v368 = *(*(v218 + 56) + 8 * v226);
                    swift_unknownObjectRetain();
                    v228 = swift_dynamicCast();
                    if (v228)
                    {
                      v229 = v376;
                    }

                    else
                    {
                      v229 = 0;
                    }

                    if (v228)
                    {
                      v230 = *(&v376 + 1);
                    }

                    else
                    {
                      v230 = 0;
                    }

                    v348 = v230;
                    v349 = v229;
                    if (!*(v218 + 16))
                    {
                      goto LABEL_211;
                    }
                  }

                  else
                  {
                    v348 = 0;
                    v349 = 0;
                    if (!*(v218 + 16))
                    {
                      goto LABEL_211;
                    }
                  }

                  v231 = sub_253217D84(0xD000000000000016, v329 | 0x8000000000000000);
                  if ((v232 & 1) == 0)
                  {
                    goto LABEL_211;
                  }

                  *&v368 = *(*(v218 + 56) + 8 * v231);
                  swift_unknownObjectRetain();
                  v233 = swift_dynamicCast();
                  v234 = v376;
                  if (!v233)
                  {
                    v234 = 0;
                  }

                  v342 = v234;
                  if (v233)
                  {
                    v235 = *(&v376 + 1);
                  }

                  else
                  {
                    v235 = 0;
                  }

                  v347 = v235;
                }

                v236 = sub_253CD0968();
                if (*(v218 + 16))
                {
                  v238 = sub_253217D84(v236, v237);
                  v240 = v239;

                  if (v240)
                  {
                    *&v368 = *(*(v218 + 56) + 8 * v238);
                    swift_unknownObjectRetain();
                    v241 = swift_dynamicCast();
                    v242 = v376;
                    if (!v241)
                    {
                      v242 = 0;
                    }

                    v341 = v242;
                    if (v241)
                    {
                      v243 = *(&v376 + 1);
                    }

                    else
                    {
                      v243 = 0;
                    }

                    v344 = v243;
LABEL_222:
                    v244 = MEMORY[0x277D84F90];
                    v245 = sub_253CD0968();
                    if (*(v218 + 16))
                    {
                      v247 = sub_253217D84(v245, v246);
                      v249 = v248;

                      if (v249)
                      {
                        v250 = *(*(v218 + 56) + 8 * v247);
                        swift_unknownObjectRetain();

                        *&v376 = v250;
                        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5A3C20, &qword_253D493F8);
                        if (swift_dynamicCast())
                        {
                          v343 = v368;
                          v209 = v358;
                          v244 = MEMORY[0x277D84F90];
                          goto LABEL_230;
                        }
                      }

                      else
                      {
                      }

                      v244 = MEMORY[0x277D84F90];
                    }

                    else
                    {
                    }

                    v343 = v244;
                    v209 = v358;
LABEL_230:
                    LOBYTE(v376) = v346 & 1;
                    *(&v376 + 1) = v224;
                    v377 = *(&v224 + 1);
                    *&v378 = 0;
                    v379 = 0u;
                    v380 = 0u;
                    *(&v378 + 1) = v244;
                    *&v381[0] = v244;
                    memset(v381 + 8, 0, 32);
                    v251 = *(v209 + 2);
                    if (v251)
                    {
                      v252 = 0;
                      v253 = 0;
                      while (1)
                      {
                        v254 = &v209[v252];
                        v255 = *&v209[v252 + 40] == v224 && *&v209[v252 + 48] == *(&v224 + 1);
                        if (v255 || (sub_253CD1118() & 1) != 0)
                        {
                          break;
                        }

                        ++v253;
                        v252 += 120;
                        if (v251 == v253)
                        {
                          goto LABEL_238;
                        }
                      }

                      v256 = *(v254 + 2);
                      v257 = *(v254 + 3);
                      v258 = *(v254 + 5);
                      v362 = *(v254 + 4);
                      v363 = v258;
                      v360 = v256;
                      v361 = v257;
                      v259 = *(v254 + 6);
                      v260 = *(v254 + 7);
                      v261 = *(v254 + 8);
                      v367 = *(v254 + 18);
                      v365 = v260;
                      v366 = v261;
                      v364 = v259;
                      v372 = v380;
                      v373 = v381[0];
                      v374 = v381[1];
                      v375 = *&v381[2];
                      v368 = v376;
                      v369 = v377;
                      v370 = v378;
                      v371 = v379;
                      sub_25322CF4C(&v360, v359);
                      sub_25322CF84(&v368);
                      v346 = *(&v365 + 1);
                      v262 = v366;
                      v263 = v367;
                      v336 = *(&v361 + 1);
                      v337 = *(&v366 + 1);
                      v264 = v362;
                      v380 = v364;
                      v381[0] = v365;
                      v381[1] = v366;
                      *&v381[2] = v367;
                      v376 = v360;
                      v377 = v361;
                      v378 = v362;
                      v379 = v363;
                      sub_25321B210(v343);
                      if (v264)
                      {

                        v265 = v336;
                        v266 = v264;
                        v267 = v349;
                        v117 = v350;
                      }

                      else
                      {
                        v267 = v349;
                        v117 = v350;
                        v266 = v347;
                        v265 = v342;
                      }

                      *(&v377 + 1) = v265;
                      *&v378 = v266;
                      v209 = v358;
                      if (v263)
                      {

                        *(&v381[1] + 1) = v337;
                        *&v381[2] = v263;
                        if (v262)
                        {
                          goto LABEL_244;
                        }

LABEL_246:
                        v262 = v344;
                        v211 = v353;
                        v268 = v341;
                      }

                      else
                      {
                        *(&v381[1] + 1) = v267;
                        *&v381[2] = v348;
                        if (!v262)
                        {
                          goto LABEL_246;
                        }

LABEL_244:

                        v268 = v346;
                        v211 = v353;
                      }

                      *(&v381[0] + 1) = v268;
                      *&v381[1] = v262;
                      v372 = v380;
                      v373 = v381[0];
                      v374 = v381[1];
                      v375 = *&v381[2];
                      v368 = v376;
                      v369 = v377;
                      v370 = v378;
                      v371 = v379;
                      sub_25322CF4C(&v368, &v360);
                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                      {
                        v209 = sub_25328FF9C(v209);
                      }

                      if (v253 >= *(v209 + 2))
                      {
                        goto LABEL_254;
                      }

                      v269 = &v209[v252];
                      v270 = *&v209[v252 + 32];
                      v271 = *&v209[v252 + 48];
                      v272 = *&v209[v252 + 80];
                      v362 = *&v209[v252 + 64];
                      v363 = v272;
                      v360 = v270;
                      v361 = v271;
                      v273 = *&v209[v252 + 96];
                      v274 = *&v209[v252 + 112];
                      v275 = *&v209[v252 + 128];
                      v367 = *&v209[v252 + 144];
                      v365 = v274;
                      v366 = v275;
                      v364 = v273;
                      v276 = v368;
                      v277 = v369;
                      v278 = v371;
                      *(v269 + 4) = v370;
                      *(v269 + 5) = v278;
                      *(v269 + 2) = v276;
                      *(v269 + 3) = v277;
                      v279 = v372;
                      v280 = v373;
                      v281 = v374;
                      *(v269 + 18) = v375;
                      *(v269 + 7) = v280;
                      *(v269 + 8) = v281;
                      *(v269 + 6) = v279;
                      sub_25322CF84(&v360);
                    }

                    else
                    {
LABEL_238:
                      sub_25321B210(v343);
                      *(&v377 + 1) = v342;
                      *&v378 = v347;
                      *(&v381[1] + 1) = v349;
                      *&v381[2] = v348;
                      *(&v381[0] + 1) = v341;
                      *&v381[1] = v344;

                      v117 = v350;
                      v211 = v353;
                    }

                    v372 = v380;
                    v373 = v381[0];
                    v374 = v381[1];
                    v375 = *&v381[2];
                    v368 = v376;
                    v369 = v377;
                    v370 = v378;
                    v371 = v379;
                    sub_25322CF84(&v368);
                    v197 = MEMORY[0x277D84F90];
                    v199 = v340;
                    continue;
                  }
                }

                else
                {
                }

                v341 = 0;
                v344 = 0;
                goto LABEL_222;
              }
            }

            v209 = v358;
            v211 = v353;
          }

          else
          {

            v209 = v358;
          }
        }

        while (v130 != v211);
      }
    }

    v284 = *(v209 + 2);
    v358 = v209;
    if (v284)
    {
      *&v376 = MEMORY[0x277D84F90];
      sub_25328BF5C(0, v284, 0);
      v285 = v376;
      v344 = v323 + 32;
      v286 = (v209 + 72);
      v287 = v316[0];
      do
      {
        v355 = v284;
        v357 = v285;
        LODWORD(v354) = *(v286 - 40);
        v288 = *(v286 - 4);
        v289 = *(v286 - 3);
        v290 = *(v286 - 1);
        v352 = *(v286 - 2);
        v353 = v288;
        v291 = *v286;
        v292 = v286[1];
        v293 = v286[2];
        v350 = v286[3];
        v351 = v292;
        v294 = v286[4];
        v295 = v286[5];
        v296 = v286[6];
        v297 = v286[7];
        v348 = v289;
        v349 = v296;
        v298 = v286[8];
        v299 = v286[9];
        v346 = v291;
        v347 = v298;

        v285 = v357;
        sub_253CD0298();
        *&v376 = v285;
        v301 = *(v285 + 16);
        v300 = *(v285 + 24);
        if (v301 >= v300 >> 1)
        {
          sub_25328BF5C(v300 > 1, v301 + 1, 1);
          v285 = v376;
        }

        v286 += 15;
        *(v285 + 16) = v301 + 1;
        (*(v323 + 32))(v285 + ((*(v323 + 80) + 32) & ~*(v323 + 80)) + *(v323 + 72) * v301, v287, v320);
        v284 = v355 - 1;
      }

      while (v355 != 1);
    }

    v302 = sub_253CD07C8();
    v303 = sub_253CD0C78();
    if (os_log_type_enabled(v302, v303))
    {
      v304 = swift_slowAlloc();
      v305 = swift_slowAlloc();
      *&v376 = v305;
      *v304 = 136315394;

      v307 = MEMORY[0x259C009D0](v306, v331);
      v309 = v308;

      v310 = sub_253277BA8(v307, v309, &v376);

      *(v304 + 4) = v310;
      *(v304 + 12) = 2080;

      v312 = MEMORY[0x259C009D0](v311, v320);
      v314 = v313;

      v315 = sub_253277BA8(v312, v314, &v376);

      *(v304 + 14) = v315;
      _os_log_impl(&dword_2531F8000, v302, v303, "%s %s", v304, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C040E0](v305, -1, -1);
      MEMORY[0x259C040E0](v304, -1, -1);
    }

    return;
  }

  if (v142 >= 1)
  {
    v143 = 0;
    v357 = *MEMORY[0x277CE16F0];
    v355 = v130 & 0xC000000000000001;
    v340 = "ntroller";
    v338 = "NetworkSignature";
    v341 = *MEMORY[0x277CE1748];
    v358 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v355)
      {
        v144 = MEMORY[0x259C00F30](v143, v130);
        if (v117)
        {
          goto LABEL_104;
        }
      }

      else
      {
        v144 = *(v130 + 8 * v143 + 32);
        if (v117)
        {
LABEL_104:
          *&v376 = sub_253CD0968();
          *(&v376 + 1) = v145;
          *&v368 = v354;
          *(&v368 + 1) = v117;
          sub_25322CFB4();

          v146 = sub_253CD0DF8();

          goto LABEL_107;
        }
      }

      v146 = 0;
LABEL_107:
      v147 = SCDynamicStoreCopyValue(v356, v144);
      if (v147)
      {
        v148 = v147;
        v149 = CFDictionaryGetTypeID();
        if (v149 == CFGetTypeID(v148))
        {
          *&v376 = v148;
          swift_unknownObjectRetain();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3458, &unk_253D49400);
          if (swift_dynamicCast())
          {
            swift_unknownObjectRelease();
            v150 = v368;
            goto LABEL_113;
          }
        }

        swift_unknownObjectRelease();
      }

      v150 = MEMORY[0x277D84F98];
LABEL_113:
      v151 = sub_253CD0968();
      if (*(v150 + 16))
      {
        LODWORD(v353) = v146;
        v153 = v142;
        v154 = v130;
        v155 = sub_253217D84(v151, v152);
        v157 = v156;

        if (v157)
        {
          *&v368 = *(*(v150 + 56) + 8 * v155);
          swift_unknownObjectRetain();
          if (swift_dynamicCast())
          {
            v352 = *(&v376 + 1);
            v158 = v376;
            v130 = v154;
            if (!*(v150 + 16))
            {
              v349 = 0;
              v351 = 0;
              goto LABEL_136;
            }

            v159 = sub_253217D84(0xD000000000000010, v340 | 0x8000000000000000);
            if (v160)
            {
              *&v368 = *(*(v150 + 56) + 8 * v159);
              swift_unknownObjectRetain();
              v161 = swift_dynamicCast();
              v162 = v376;
              if (!v161)
              {
                v162 = 0;
              }

              v351 = v162;
              if (v161)
              {
                v163 = *(&v376 + 1);
              }

              else
              {
                v163 = 0;
              }

              v349 = v163;
              if (!*(v150 + 16))
              {
LABEL_136:
                v342 = 0;
                v343 = 0;
                goto LABEL_137;
              }
            }

            else
            {
              v351 = 0;
              v349 = 0;
              if (!*(v150 + 16))
              {
                goto LABEL_136;
              }
            }

            v164 = sub_253217D84(0xD000000000000016, v338 | 0x8000000000000000);
            if ((v165 & 1) == 0)
            {
              goto LABEL_136;
            }

            *&v368 = *(*(v150 + 56) + 8 * v164);
            swift_unknownObjectRetain();
            v166 = swift_dynamicCast();
            if (v166)
            {
              v167 = v376;
            }

            else
            {
              v167 = 0;
            }

            if (v166)
            {
              v168 = *(&v376 + 1);
            }

            else
            {
              v168 = 0;
            }

            v342 = v168;
            v343 = v167;
LABEL_137:
            v169 = sub_253CD0968();
            if (*(v150 + 16))
            {
              v171 = sub_253217D84(v169, v170);
              v173 = v172;

              if (v173)
              {
                *&v368 = *(*(v150 + 56) + 8 * v171);
                swift_unknownObjectRetain();
                v174 = swift_dynamicCast();
                v175 = v376;
                if (!v174)
                {
                  v175 = 0;
                }

                v346 = v175;
                if (v174)
                {
                  v176 = *(&v376 + 1);
                }

                else
                {
                  v176 = 0;
                }

                v344 = v176;
              }

              else
              {
                v346 = 0;
                v344 = 0;
              }

              v130 = v154;
            }

            else
            {

              v346 = 0;
              v344 = 0;
            }

            v177 = sub_253CD0968();
            if (*(v150 + 16))
            {
              v179 = sub_253217D84(v177, v178);
              v181 = v180;

              if ((v181 & 1) == 0)
              {

                v183 = MEMORY[0x277D84F90];
                v130 = v154;
                goto LABEL_155;
              }

              v182 = *(*(v150 + 56) + 8 * v179);
              swift_unknownObjectRetain();

              *&v376 = v182;
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5A3C20, &qword_253D493F8);
              v130 = v154;
              if (swift_dynamicCast())
              {
                v183 = v368;
LABEL_155:
                v142 = v153;
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v185 = v353;
                v186 = v158;
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  v358 = sub_25328359C(0, *(v358 + 2) + 1, 1, v358);
                }

                v188 = *(v358 + 2);
                v187 = *(v358 + 3);
                if (v188 >= v187 >> 1)
                {
                  v358 = sub_25328359C((v187 > 1), v188 + 1, 1, v358);
                }

                v189 = v358;
                *(v358 + 2) = v188 + 1;
                v190 = &v189[120 * v188];
                v190[32] = v185 & 1;
                v191 = *(&v376 + 3);
                *(v190 + 33) = v376;
                *(v190 + 9) = v191;
                v192 = v352;
                *(v190 + 5) = v186;
                *(v190 + 6) = v192;
                v193 = v342;
                *(v190 + 7) = v343;
                *(v190 + 8) = v193;
                v194 = v346;
                *(v190 + 9) = v183;
                *(v190 + 10) = v194;
                v117 = v350;
                v195 = v351;
                *(v190 + 11) = v344;
                *(v190 + 12) = v195;
                *(v190 + 13) = v349;
                *(v190 + 14) = MEMORY[0x277D84F90];
                *(v190 + 120) = 0u;
                *(v190 + 136) = 0u;
                goto LABEL_101;
              }
            }

            else
            {
            }

            v183 = MEMORY[0x277D84F90];
            goto LABEL_155;
          }
        }

        v130 = v154;
        v142 = v153;
      }

      else
      {
      }

LABEL_101:
      if (v142 == ++v143)
      {
        goto LABEL_161;
      }
    }
  }

  __break(1u);
}

unint64_t sub_25322BF28(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v6 = sub_253CD10C8();
  }

  else
  {
    v6 = MEMORY[0x277D84F98];
  }

  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 64);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  if (v9)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v18 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v18 >= v10)
    {

      return v6;
    }

    v9 = *(a1 + 64 + 8 * v18);
    ++v12;
    if (v9)
    {
      while (1)
      {
        v19 = __clz(__rbit64(v9)) | (v18 << 6);
        v20 = (*(a1 + 48) + 16 * v19);
        v22 = *v20;
        v21 = v20[1];
        v31 = *(*(a1 + 56) + 8 * v19);

        swift_unknownObjectRetain();
        __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
        if (!swift_dynamicCast())
        {
          break;
        }

        v9 &= v9 - 1;
        result = sub_253217D84(v22, v21);
        if (v23)
        {
          v13 = (v6[6] + 16 * result);
          v14 = v13[1];
          *v13 = v22;
          v13[1] = v21;
          v15 = result;

          v16 = v6[7];
          v17 = *(v16 + 8 * v15);
          *(v16 + 8 * v15) = v30;

          v12 = v18;
          if (!v9)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v6[2] >= v6[3])
          {
            goto LABEL_23;
          }

          *(v6 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v24 = (v6[6] + 16 * result);
          *v24 = v22;
          v24[1] = v21;
          *(v6[7] + 8 * result) = v30;
          v25 = v6[2];
          v26 = __OFADD__(v25, 1);
          v27 = v25 + 1;
          if (v26)
          {
            goto LABEL_24;
          }

          v6[2] = v27;
          v12 = v18;
          if (!v9)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v18 = v12;
      }

      return 0;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

unint64_t NetworkInfoController.obtainNetworkInfoProto()()
{
  v50 = sub_253CD02B8();
  v46 = *(v50 - 8);
  v0 = *(v46 + 64);
  MEMORY[0x28223BE20](v50);
  v2 = v45 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_253CD0178();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_253229AF8();
  v10 = MEMORY[0x277D84F90];
  v51 = MEMORY[0x277D84F90];
  v11 = *(v8 + 16);
  v47 = v9;
  if (v11)
  {
    v13 = *(v4 + 16);
    v12 = v4 + 16;
    v49 = v13;
    v14 = *(v12 + 64);
    v45[1] = v8;
    v15 = v8 + ((v14 + 32) & ~v14);
    v16 = *(v12 + 56);
    v17 = (v12 - 8);
    v48 = MEMORY[0x277D84F90];
    do
    {
      v18 = v12;
      v49(v7, v15, v3);
      v19 = sub_2532287A0();
      v20 = (*v17)(v7, v3);
      if (v19)
      {
        MEMORY[0x259C00990](v20);
        if (*((v51 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v51 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v48 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_253CD0A78();
        }

        sub_253CD0A88();
        v48 = v51;
      }

      v15 += v16;
      --v11;
      v12 = v18;
    }

    while (v11);

    v21 = v47;
    v22 = v48;
    v10 = MEMORY[0x277D84F90];
  }

  else
  {
    v21 = v9;

    v22 = MEMORY[0x277D84F90];
  }

  v51 = v10;
  v23 = *(v21 + 16);
  if (v23)
  {
    v24 = *(v46 + 16);
    v48 = v22;
    v49 = v24;
    v25 = v21 + ((*(v46 + 80) + 32) & ~*(v46 + 80));
    v26 = *(v46 + 72);
    v27 = (v46 + 8);
    v28 = MEMORY[0x277D84F90];
    do
    {
      v29 = v50;
      v49(v2, v25, v50);
      v30 = sub_2532292B0();
      v31 = (*v27)(v2, v29);
      if (v30)
      {
        MEMORY[0x259C00990](v31);
        if (*((v51 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v51 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v32 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_253CD0A78();
        }

        sub_253CD0A88();
        v28 = v51;
      }

      v25 += v26;
      --v23;
    }

    while (v23);

    v33 = v28;
    v22 = v48;
  }

  else
  {

    v33 = MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3430, &qword_253D492C0);
  inited = swift_initStackObject();
  *(inited + 32) = 0x496B726F7774654ELL;
  *(inited + 16) = xmmword_253D48A50;
  *(inited + 40) = 0xEB000000006F666ELL;
  if (v22 >> 62)
  {

    v43 = sub_253CD1088();
    swift_bridgeObjectRelease_n();
    v22 = v43;
  }

  else
  {
    v35 = v22 & 0xFFFFFFFFFFFFFF8;

    sub_253CD1128();
    if (swift_dynamicCastMetatype() || (v39 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10)) == 0)
    {
LABEL_21:
    }

    else
    {
      v40 = (v35 + 32);
      while (*v40)
      {
        ++v40;
        if (!--v39)
        {
          goto LABEL_21;
        }
      }

      v22 = v35 | 1;
    }
  }

  *(inited + 48) = v22;
  *(inited + 56) = 0xD000000000000012;
  *(inited + 64) = 0x8000000253D4F8D0;
  if (v33 >> 62)
  {

    v44 = sub_253CD1088();
    swift_bridgeObjectRelease_n();
    v33 = v44;
  }

  else
  {
    v36 = v33 & 0xFFFFFFFFFFFFFF8;

    sub_253CD1128();
    if (swift_dynamicCastMetatype() || (v41 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10)) == 0)
    {
LABEL_24:
    }

    else
    {
      v42 = (v36 + 32);
      while (*v42)
      {
        ++v42;
        if (!--v41)
        {
          goto LABEL_24;
        }
      }

      v33 = v36 | 1;
    }
  }

  *(inited + 72) = v33;
  v37 = sub_253218850(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3438, qword_253D492C8);
  swift_arrayDestroy();
  return v37;
}

id NetworkInfoController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NetworkInfoController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_25322C7CC(uint64_t a1)
{
  v2 = type metadata accessor for NetworkInfoSCDataSource();
  v16[3] = v2;
  v16[4] = &off_2864FB5B0;
  v16[0] = a1;
  v3 = type metadata accessor for NetworkInfoController();
  v4 = objc_allocWithZone(v3);
  v5 = __swift_mutable_project_boxed_opaque_existential_1(v16, v2);
  v6 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = (&v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v9 + 16))(v8);
  v10 = *v8;
  v15[3] = v2;
  v15[4] = &off_2864FB5B0;
  v15[0] = v10;
  v11 = *MEMORY[0x277D0F1A8];
  sub_253CD0968();
  sub_253CD07D8();
  *&v4[OBJC_IVAR___HMDNetworkInfoController_store] = 0;
  sub_2532074E4(v15, &v4[OBJC_IVAR___HMDNetworkInfoController_dataSource]);
  v14.receiver = v4;
  v14.super_class = v3;
  v12 = objc_msgSendSuper2(&v14, sel_init);
  __swift_destroy_boxed_opaque_existential_0(v15);
  __swift_destroy_boxed_opaque_existential_0(v16);
  return v12;
}

uint64_t type metadata accessor for NetworkInfoController()
{
  result = qword_2815311D0;
  if (!qword_2815311D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_25322C9B4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_25322C9FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25322CA60()
{
  result = sub_253CD07E8();
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

uint64_t sub_25322CB04(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3440, &qword_253D493E8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_25322CB6C()
{
  v0 = SCNetworkInterfaceCopyAll();
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    type metadata accessor for SCNetworkInterface(0);
    sub_253CD0A48();
  }
}

unint64_t sub_25322CE6C(const __SCDynamicStore *a1, const __CFString *a2)
{
  v2 = SCDynamicStoreCopyValue(a1, a2);
  if (v2)
  {
    v3 = v2;
    TypeID = CFDictionaryGetTypeID();
    if (TypeID == CFGetTypeID(v3) && (swift_unknownObjectRetain(), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3458, &unk_253D49400), swift_dynamicCast()))
    {
      swift_unknownObjectRelease();
      return v8;
    }

    else
    {
      v6 = sub_25321883C(MEMORY[0x277D84F90]);
      swift_unknownObjectRelease();
      return v6;
    }
  }

  else
  {
    v7 = MEMORY[0x277D84F90];

    return sub_25321883C(v7);
  }
}

unint64_t sub_25322CFB4()
{
  result = qword_27F5A3450;
  if (!qword_27F5A3450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5A3450);
  }

  return result;
}

uint64_t sub_25322D008(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3440, &qword_253D493E8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25322D078(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3440, &qword_253D493E8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

__n128 __swift_memcpy120_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_25322D164(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_25322D1AC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25322D22C(uint64_t a1, void *a2, void *a3, void *a4, void *a5, uint64_t a6)
{
  *(v6 + 48) = a5;
  *(v6 + 56) = a1;
  *(v6 + 16) = 0;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  *(v6 + 40) = a4;
  *(v6 + 88) = type metadata accessor for DefaultDaemonMissingItemHandler();
  *(v6 + 96) = &off_2864FB838;
  *(v6 + 64) = a6;
  v12 = a2;
  v13 = a3;
  v14 = a4;
  v15 = a5;

  return v6;
}

uint64_t sub_25322D2BC(uint64_t a1, uint64_t a2)
{
  _s8IdentityCMa();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  *(v4 + 32) = 0;
  *(v4 + 36) = 0;
  type metadata accessor for DefaultDaemonMissingItemHandler();
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  type metadata accessor for Registry();
  swift_allocObject();

  v6 = sub_25322D22C(v4, 0, 0, 0, 0, v5);

  return v6;
}

uint64_t HMDAccessorySetupMetricDispatcher.releaseDiscoveryAssertion(assertionHandle:)()
{
  type metadata accessor for AssertionHandle();
  swift_unknownObjectRetain();
  v0 = swift_dynamicCastClass();
  if (v0)
  {
    v1 = v0;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = *(v1 + 16);
      v4 = *(Strong + OBJC_IVAR___HMDDiscoveryController_assertions);

      os_unfair_lock_lock((v4 + 24));
      sub_253222600((v4 + 16), &v7);
      os_unfair_lock_unlock((v4 + 24));
      v5 = v7;

      sub_2532216D0(v3);
      if (v5)
      {
        sub_253221160();
      }

      swift_unknownObjectRelease();
    }

    *(v1 + 32) = 0;
    swift_unknownObjectWeakAssign();
  }

  return swift_unknownObjectRelease();
}

id sub_25322D750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (**a5)(char *, uint64_t), char *a6, void *a7, int a8, uint64_t a9, uint64_t a10, char *a11, uint64_t a12, uint64_t a13, char *a14, uint64_t a15, char a16)
{
  v53 = a8;
  v51 = a4;
  v52 = a7;
  v54 = a5;
  v50 = a3;
  v18 = sub_253CCFF58();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v50 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(v19 + 16);
  v55 = v24;
  v23(v22, a15);
  sub_253229AF8();
  v26 = v25;
  v28 = v27;
  v29 = sub_25321EA5C();
  v30 = *(a1 + OBJC_IVAR___HMDDiscoveryController_visibleSFDevices);

  os_unfair_lock_lock((v30 + 24));
  v31 = *(v30 + 16);

  os_unfair_lock_unlock((v30 + 24));

  v32 = *(v31 + 16);
  if (!v32)
  {
    goto LABEL_4;
  }

  v33 = sub_253221A3C(*(v31 + 16), 0);
  v34 = *(sub_253CD01C8() - 8);
  v35 = sub_253221B88(v59, (v33 + ((*(v34 + 80) + 32) & ~*(v34 + 80))), v32, v31);
  sub_25320C5EC();
  if (v35 != v32)
  {
    __break(1u);
LABEL_4:

    v33 = MEMORY[0x277D84F90];
  }

  sub_25327D3D0(v50, v51, 0, v52, v53, v26, v28, v54, v59, a6, v29, v33, a9, a10, v54, a6, a11, a12, a13, a14, a16 & 1);

  v58[3] = &type metadata for Metric.Setup.NetworkInfo;
  v58[4] = &off_2864FC5B8;
  v36 = swift_allocObject();
  v58[0] = v36;
  v37 = v59[13];
  *(v36 + 208) = v59[12];
  *(v36 + 224) = v37;
  *(v36 + 240) = v60;
  v38 = v59[9];
  *(v36 + 144) = v59[8];
  *(v36 + 160) = v38;
  v39 = v59[11];
  *(v36 + 176) = v59[10];
  *(v36 + 192) = v39;
  v40 = v59[5];
  *(v36 + 80) = v59[4];
  *(v36 + 96) = v40;
  v41 = v59[7];
  *(v36 + 112) = v59[6];
  *(v36 + 128) = v41;
  v42 = v59[1];
  *(v36 + 16) = v59[0];
  *(v36 + 32) = v42;
  v43 = v59[3];
  *(v36 + 48) = v59[2];
  *(v36 + 64) = v43;
  v44 = type metadata accessor for Metric.LogEventAdaptor();
  v45 = objc_allocWithZone(v44);
  v46 = &v45[OBJC_IVAR____TtCO19HomeKitDaemonLegacy6Metric15LogEventAdaptor_name];
  *v46 = 0xD000000000000035;
  *(v46 + 1) = 0x8000000253D4FC50;
  sub_2532074E4(v58, &v45[OBJC_IVAR____TtCO19HomeKitDaemonLegacy6Metric15LogEventAdaptor_event]);
  *&v45[OBJC_IVAR____TtCO19HomeKitDaemonLegacy6Metric15LogEventAdaptor_coreAnalyticsEventOptions] = 2;
  sub_25322DBC8(v59, &v57);
  v47 = sub_253CCFF18();
  v56.receiver = v45;
  v56.super_class = v44;
  v48 = objc_msgSendSuper2(&v56, sel_initWithHomeUUID_, v47);

  sub_25322DC24(v59);
  (*(v19 + 8))(v22, v55);
  __swift_destroy_boxed_opaque_existential_0(v58);
  return v48;
}

uint64_t _sSo33HMDAccessorySetupMetricDispatcherC19HomeKitDaemonLegacyE24obtainDiscoveryAssertionyXlyF_0()
{
  v0 = [objc_opt_self() driver];
  v1 = sub_2532340C0();

  if (v1)
  {
    type metadata accessor for AssertionHandle();
    v2 = swift_allocObject();
    sub_2532265BC(v1, 0xD000000000000014, 0x8000000253D4F960, v2);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A33B0, &qword_253D491C0);
  v3 = sub_253CD0DC8();

  return v3;
}

uint64_t sub_25322DC78(void *a1)
{
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v4 = *(*(v1 + OBJC_IVAR____TtC19HomeKitDaemonLegacy39CharacteristicReadWriteLogEventObserver_eventBuilders) + 16);
    if (v4)
    {
      v5 = result;
      v6 = OBJC_IVAR____TtC19HomeKitDaemonLegacy39CharacteristicReadWriteLogEventObserver_logEventSubmitter;
      v7 = a1;

      do
      {
        if ([v5 isTHSensorRequest])
        {
          v10 = type metadata accessor for TemperatureHumidityReadWriteLogEvent();
          v11 = objc_allocWithZone(v10);
          v12 = &v11[OBJC_IVAR____TtC19HomeKitDaemonLegacy36TemperatureHumidityReadWriteLogEvent_coreAnalyticsEventName];
          *v12 = 0xD000000000000044;
          *(v12 + 1) = 0x8000000253D4FCF0;
          *&v11[OBJC_IVAR____TtC19HomeKitDaemonLegacy36TemperatureHumidityReadWriteLogEvent_coreAnalyticsEventOptions] = 4;
          *&v11[OBJC_IVAR____TtC19HomeKitDaemonLegacy36TemperatureHumidityReadWriteLogEvent_readWriteEvent] = v5;
          v16.receiver = v11;
          v16.super_class = v10;
          v13 = v7;
          v14 = objc_msgSendSuper2(&v16, sel_init);
          v15 = [v5 error];
          if (v15)
          {
            v8 = v15;
            v9 = sub_253CCFE08();
          }

          else
          {
            v9 = 0;
          }

          [v14 setError_];

          [*(v1 + v6) submitLogEvent_];
        }

        --v4;
      }

      while (v4);
    }
  }

  return result;
}

id sub_25322DEC4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CharacteristicReadWriteLogEventObserver();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

HMDUserDefaultDataSource __swiftcall HMDUserDefaultDataSource.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t sub_25322E4AC(void *a1)
{
  v2 = [objc_opt_self() hmd:2 currentPairingIdentityWithPrivilege:1 forceHH1Key:objc_msgSend(a1 keyStore:sel_keyStore)];
  swift_unknownObjectRelease();
  v3 = [a1 pairingIdentity];
  v4 = v3;
  if (v2)
  {
    if (v3)
    {
      sub_253200644(0, &qword_27F5A34F8, 0x277CFEC20);
      v2 = v2;
      v5 = sub_253CD0D88();
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    if (!v3)
    {
      v5 = 1;
      return v5 & 1;
    }

    v5 = 0;
    v2 = v3;
  }

  return v5 & 1;
}

uint64_t sub_25322E5B4()
{
  v0 = sub_253CD0058();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2815314D0 != -1)
  {
    swift_once();
  }

  v5 = (qword_281532BF0 + OBJC_IVAR____TtC19HomeKitDaemonLegacy13FindMyHandler_fmfDevice);
  os_unfair_lock_lock((qword_281532BF0 + OBJC_IVAR____TtC19HomeKitDaemonLegacy13FindMyHandler_fmfDevice));
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A34F0, &qword_253D48BA0) + 28);
  if ((*(v1 + 48))(v5 + v6, 1, v0))
  {
    v7 = 0;
  }

  else
  {
    (*(v1 + 16))(v4, v5 + v6, v0);
    v7 = sub_253CD0018();
    (*(v1 + 8))(v4, v0);
  }

  os_unfair_lock_unlock(v5);
  return v7;
}

uint64_t sub_25322E744(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3520, &qword_253D494F8);
    v2 = sub_253CD10C8();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
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
    sub_253205FF8(*(a1 + 56) + 32 * v13, v36);
    *&v35 = v16;
    *(&v35 + 1) = v15;
    v33[2] = v35;
    v34[0] = v36[0];
    v34[1] = v36[1];
    v33[0] = v35;

    swift_dynamicCast();
    sub_2531FF150(v34, v28);
    v29 = v25;
    v30 = v26;
    v31 = v27;
    sub_2531FF150(v28, v32);
    v25 = v29;
    v26 = v30;
    v27 = v31;
    sub_2531FF150(v32, v33);
    v17 = *(v2 + 40);
    result = sub_253CD0F38();
    v18 = -1 << *(v2 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v7 + 8 * (v19 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v18) >> 6;
      while (++v20 != v22 || (v21 & 1) == 0)
      {
        v23 = v20 == v22;
        if (v20 == v22)
        {
          v20 = 0;
        }

        v21 |= v23;
        v24 = *(v7 + 8 * v20);
        if (v24 != -1)
        {
          v10 = __clz(__rbit64(~v24)) + (v20 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v19) & ~*(v7 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v25;
    *(v11 + 16) = v26;
    *(v11 + 32) = v27;
    result = sub_2531FF150(v33, (*(v2 + 56) + 32 * v10));
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

void sub_25322EA0C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3510, &qword_253D494E8);
    v2 = sub_253CD10C8();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v15 = v14 | (v13 << 6);
        v16 = (*(a1 + 48) + 16 * v15);
        v18 = *v16;
        v17 = v16[1];
        v19 = *(*(a1 + 56) + 8 * v15);

        v20 = sub_253CD0C38();
        v21 = sub_253217D84(v18, v17);
        if (v22)
        {
          v8 = (v2[6] + 16 * v21);
          v9 = v8[1];
          *v8 = v18;
          v8[1] = v17;
          v10 = v21;

          v11 = v2[7];
          v12 = *(v11 + 8 * v10);
          *(v11 + 8 * v10) = v20;

          v7 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v21;
          v23 = (v2[6] + 16 * v21);
          *v23 = v18;
          v23[1] = v17;
          *(v2[7] + 8 * v21) = v20;
          v24 = v2[2];
          v25 = __OFADD__(v24, 1);
          v26 = v24 + 1;
          if (v25)
          {
            goto LABEL_21;
          }

          v2[2] = v26;
          v7 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v7;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

void sub_25322EBF0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5A3510, &qword_253D494E8);
    v2 = sub_253CD10C8();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v15 = v14 | (v13 << 6);
        v16 = (*(a1 + 48) + 16 * v15);
        v18 = *v16;
        v17 = v16[1];
        v19 = *(*(a1 + 56) + 8 * v15);

        v20 = sub_253CD0BE8();
        v21 = sub_253217D84(v18, v17);
        if (v22)
        {
          v8 = (v2[6] + 16 * v21);
          v9 = v8[1];
          *v8 = v18;
          v8[1] = v17;
          v10 = v21;

          v11 = v2[7];
          v12 = *(v11 + 8 * v10);
          *(v11 + 8 * v10) = v20;

          v7 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v21;
          v23 = (v2[6] + 16 * v21);
          *v23 = v18;
          v23[1] = v17;
          *(v2[7] + 8 * v21) = v20;
          v24 = v2[2];
          v25 = __OFADD__(v24, 1);
          v26 = v24 + 1;
          if (v25)
          {
            goto LABEL_21;
          }

          v2[2] = v26;
          v7 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v7;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}