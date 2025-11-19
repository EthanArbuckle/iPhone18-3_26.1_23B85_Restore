uint64_t sub_224B93C90()
{
  v1 = *v0;
  sub_224DAFE68();
  sub_224DAEE78();

  return sub_224DAFEA8();
}

uint64_t sub_224B93D90()
{
  *v0;
  *v0;
  *v0;
  sub_224DAEE78();
}

uint64_t sub_224B93E7C()
{
  v1 = *v0;
  sub_224DAFE68();
  sub_224DAEE78();

  return sub_224DAFEA8();
}

uint64_t sub_224B93F84@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_224B94ED4();
  *a2 = result;
  return result;
}

void sub_224B93FB4(uint64_t *a1@<X8>)
{
  v2 = 0xE800000000000000;
  v3 = 0x746F687370616E73;
  v4 = 0xEF77656976657270;
  if (*v1 != 2)
  {
    v4 = 0xEC0000006576696CLL;
  }

  if (*v1)
  {
    v3 = 0x656E696C656D6974;
    v2 = 0xE800000000000000;
  }

  if (*v1 <= 1u)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x2D6C6F72746E6F63;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v5;
  a1[1] = v2;
}

uint64_t sub_224B94048()
{
  v1 = *v0;
  sub_224DAFE68();
  sub_224DAEE78();

  return sub_224DAFEA8();
}

uint64_t sub_224B94120()
{
  *v0;
  *v0;
  *v0;
  sub_224DAEE78();
}

uint64_t sub_224B941E4()
{
  v1 = *v0;
  sub_224DAFE68();
  sub_224DAEE78();

  return sub_224DAFEA8();
}

uint64_t sub_224B942B8(unsigned __int8 a1)
{
  if (!(a1 >> 6))
  {
    v6 = 0x746F687370616E73;
    v7 = 0xE800000000000000;
    v8 = a1;
    strcpy(v14, "archive-");
    BYTE1(v14[1]) = 0;
    WORD1(v14[1]) = 0;
    HIDWORD(v14[1]) = -402653184;
    v9 = 0xE800000000000000;
    v10 = 0x656E696C656D6974;
    v11 = 0xEF77656976657270;
    if (a1 != 3)
    {
      v11 = 0xEC0000006576696CLL;
    }

    if (a1 != 2)
    {
      v10 = 0x2D6C6F72746E6F63;
      v9 = v11;
    }

    if (!a1)
    {
      v6 = 0x6C6F686563616C70;
      v7 = 0xEB00000000726564;
    }

    if (a1 <= 1u)
    {
      v4 = v6;
    }

    else
    {
      v4 = v10;
    }

    if (v8 <= 1)
    {
      v5 = v7;
    }

    else
    {
      v5 = v9;
    }

    goto LABEL_25;
  }

  if (a1 >> 6 == 1)
  {
    sub_224DAF938();

    strcpy(v14, "configuration-");
    HIBYTE(v14[1]) = -18;
    v2 = 0xEF77656976657270;
    if ((a1 & 0x3F) != 2)
    {
      v2 = 0xEC0000006576696CLL;
    }

    v3 = 0x656E696C656D6974;
    if ((a1 & 0x3F) == 0)
    {
      v3 = 0x746F687370616E73;
    }

    if ((a1 & 0x3Fu) <= 1)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0x2D6C6F72746E6F63;
    }

    if ((a1 & 0x3Fu) <= 1)
    {
      v5 = 0xE800000000000000;
    }

    else
    {
      v5 = v2;
    }

LABEL_25:
    MEMORY[0x22AA5D210](v4, v5);

    return v14[0];
  }

  v13 = 1852793705;
  if (a1 != 129)
  {
    v13 = 0x7974697669746361;
  }

  if (a1 == 128)
  {
    return 0x6F69736E65747865;
  }

  else
  {
    return v13;
  }
}

uint64_t sub_224B9450C(uint64_t a1, unsigned __int8 a2)
{
  if (!(a2 >> 6))
  {
    MEMORY[0x22AA5E1E0](0);
    goto LABEL_5;
  }

  if (a2 >> 6 == 1)
  {
    MEMORY[0x22AA5E1E0](1);
LABEL_5:
    sub_224DAEE78();
  }

  if (a2 == 128)
  {
    v3 = 2;
  }

  else if (a2 == 129)
  {
    v3 = 3;
  }

  else
  {
    v3 = 4;
  }

  return MEMORY[0x22AA5E1E0](v3);
}

uint64_t sub_224B946F4()
{
  v1 = *v0;
  sub_224DAFE68();
  sub_224B9450C(v3, v1);
  return sub_224DAFEA8();
}

uint64_t sub_224B94744()
{
  v1 = *v0;
  sub_224DAFE68();
  sub_224B9450C(v3, v1);
  return sub_224DAFEA8();
}

uint64_t sub_224B94790(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (!(v2 >> 6))
  {
    if (v3 < 0x40)
    {
      return sub_224CE7150(v2, v3);
    }

    return 0;
  }

  if (v2 >> 6 == 1)
  {
    if ((v3 & 0xC0) == 0x40)
    {
      return sub_224CE7300(v2 & 0x3F, v3 & 0x3F);
    }

    return 0;
  }

  v5 = v3 == 129;
  if (v2 != 129)
  {
    v5 = v3 == 130;
  }

  if (v2 == 128)
  {
    return v3 == 128;
  }

  else
  {
    return v5;
  }
}

void *sub_224B94800()
{
  v1 = v0[2];

  v2 = v0[3];

  __swift_destroy_boxed_opaque_existential_1(v0 + 5);
  v3 = qword_2813652E0;
  v4 = sub_224DAB258();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(v0 + qword_2813652F8 + 8);

  v6 = *(v0 + qword_2813652E8 + 8);

  v7 = *(v0 + qword_281365308 + 8);

  v8 = *(v0 + qword_2813652F0 + 8);

  v9 = *(v0 + qword_281365300);

  return v0;
}

uint64_t sub_224B948D8()
{
  sub_224B94800();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for ReplicatedType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x1E)
  {
    goto LABEL_17;
  }

  if (a2 + 226 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 226) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 226;
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

      return (*a1 | (v4 << 8)) - 226;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 226;
    }
  }

LABEL_17:
  v6 = ((*a1 >> 1) & 0x1C | (*a1 >> 6)) ^ 0x1F;
  if (v6 >= 0x1D)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for ReplicatedType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 226 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 226) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x1E)
  {
    v4 = 0;
  }

  if (a2 > 0x1D)
  {
    v5 = ((a2 - 30) >> 8) + 1;
    *result = a2 - 30;
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
    *result = 8 * (((-a2 >> 2) & 7) - 8 * a2);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_224B94AA4(_BYTE *a1)
{
  v1 = *a1;
  if (v1 >= 0)
  {
    return *a1 >> 6;
  }

  else
  {
    return (v1 & 7u) + 2;
  }
}

_BYTE *sub_224B94AD0(_BYTE *result, unsigned int a2)
{
  if (a2 < 2)
  {
    *result = *result & 7 | (a2 << 6);
  }

  else
  {
    *result = (a2 + 6) & 7 | 0x80;
  }

  return result;
}

unint64_t sub_224B94B14()
{
  result = qword_27D6F4918;
  if (!qword_27D6F4918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F4918);
  }

  return result;
}

uint64_t sub_224B94B68@<X0>(uint64_t a1@<X8>)
{
  v11[1] = a1;
  v1 = sub_224DAAF28();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = sub_224DA9908();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_224DAAD98();
  sub_224B94D2C();
  v11[2] = sub_224DAFD28();
  v11[3] = v8;
  (*(v4 + 8))(v7, v3);
  MEMORY[0x22AA5D210](46, 0xE100000000000000);
  v9 = sub_224DAAEF8();
  MEMORY[0x22AA5D210](v9);

  sub_224DAAF08();
  sub_224DAAEC8();
  sub_224DAAF38();
  return sub_224DAAEE8();
}

unint64_t sub_224B94D2C()
{
  result = qword_281351A00;
  if (!qword_281351A00)
  {
    sub_224DA9908();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281351A00);
  }

  return result;
}

unint64_t sub_224B94DC0()
{
  result = qword_28135B4C0;
  if (!qword_28135B4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28135B4C0);
  }

  return result;
}

unint64_t sub_224B94E18()
{
  result = qword_27D6F4920;
  if (!qword_27D6F4920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F4920);
  }

  return result;
}

uint64_t sub_224B94E88()
{
  v0 = sub_224DAFBF8();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_224B94ED4()
{
  v0 = sub_224DAFBF8();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_224B9501C()
{
  v1 = v0;
  v29 = OBJC_IVAR____TtC10ChronoCore17WidgetPushManager_lock;
  v2 = *(v0 + OBJC_IVAR____TtC10ChronoCore17WidgetPushManager_lock);
  v3 = *(v2 + 16);
  v27 = v2;

  os_unfair_lock_lock(v3);
  v4 = OBJC_IVAR____TtC10ChronoCore17WidgetPushManager_persistentSubscriptions;
  swift_beginAccess();
  v28 = v4;
  v5 = *(v1 + v4);
  if ((v5 & 0xC000000000000001) != 0)
  {
    if (v5 < 0)
    {
      v6 = *(v1 + v4);
    }

    swift_unknownObjectRetain();
    sub_224DAF7E8();
    sub_224DAB338();
    sub_224AA6824(&unk_281350FE0, MEMORY[0x277CBCDA8]);
    result = sub_224DAF1F8();
    v9 = v31;
    v8 = v32;
    v10 = v33;
    v11 = v34;
    v12 = v35;
  }

  else
  {
    v13 = -1 << *(v5 + 32);
    v8 = v5 + 56;
    v10 = ~v13;
    v14 = -v13;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v12 = v15 & *(v5 + 56);
    result = swift_bridgeObjectRetain_n();
    v11 = 0;
    v9 = v5;
  }

  v16 = (v10 + 64) >> 6;
  if (v9 < 0)
  {
    goto LABEL_16;
  }

  while (1)
  {
    v17 = v11;
    v18 = v12;
    v19 = v11;
    if (!v12)
    {
      break;
    }

LABEL_14:
    v20 = (v18 - 1) & v18;
    v21 = *(*(v9 + 48) + ((v19 << 9) | (8 * __clz(__rbit64(v18)))));

    if (!v21)
    {
LABEL_20:
      sub_224A3B7E4();

      os_unfair_lock_unlock(*(v27 + 16));

      __swift_destroy_boxed_opaque_existential_1(v1 + 2);
      __swift_destroy_boxed_opaque_existential_1(v1 + 7);
      __swift_destroy_boxed_opaque_existential_1(v1 + 12);
      v22 = OBJC_IVAR____TtC10ChronoCore17WidgetPushManager_logger;
      v23 = sub_224DAB258();
      (*(*(v23 - 8) + 8))(v1 + v22, v23);
      v24 = *(v1 + v28);

      __swift_destroy_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC10ChronoCore17WidgetPushManager_pushService));
      __swift_destroy_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC10ChronoCore17WidgetPushManager_taskService));
      __swift_destroy_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC10ChronoCore17WidgetPushManager_timelineService));
      v25 = *(v1 + v29);

      v26 = *(v1 + OBJC_IVAR____TtC10ChronoCore17WidgetPushManager__lock_lastConfiguredPushWidgets);

      return v1;
    }

    while (1)
    {
      sub_224DAB328();

      v11 = v19;
      v12 = v20;
      if ((v9 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_16:
      if (sub_224DAF878())
      {
        sub_224DAB338();
        swift_dynamicCast();
        v19 = v11;
        v20 = v12;
        if (v30)
        {
          continue;
        }
      }

      goto LABEL_20;
    }
  }

  while (1)
  {
    v19 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v19 >= v16)
    {
      goto LABEL_20;
    }

    v18 = *(v8 + 8 * v19);
    ++v17;
    if (v18)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_224B9533C()
{
  sub_224B9501C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for WidgetPushManager()
{
  result = qword_28135A560;
  if (!qword_28135A560)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_224B953E8()
{
  result = sub_224DAB258();
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

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_224B954C8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_224B95510(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_224B9556C(void *a1, _BYTE *a2)
{
  v4 = OBJC_IVAR____TtC10ChronoCore17WidgetPushManager_persistentSubscriptions;
  swift_beginAccess();
  v5 = *(a1 + v4);
  if ((v5 & 0xC000000000000001) == 0)
  {
    if (!*(v5 + 16))
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v5 < 0)
  {
    v6 = *(a1 + v4);
  }

  v7 = *(a1 + v4);

  v8 = sub_224DAF838();

  if (v8)
  {
    goto LABEL_13;
  }

LABEL_5:
  v5 = *(a1 + v4);
  if ((v5 & 0xC000000000000001) != 0)
  {
    if (v5 < 0)
    {
      v9 = *(a1 + v4);
    }

    v10 = *(a1 + v4);

    v11 = sub_224DAF838();

    if (v11)
    {
      goto LABEL_9;
    }

LABEL_15:
    v15 = (a1 + OBJC_IVAR____TtC10ChronoCore17WidgetPushManager_pushService);
    __swift_project_boxed_opaque_existential_1((a1 + OBJC_IVAR____TtC10ChronoCore17WidgetPushManager_pushService), *(a1 + OBJC_IVAR____TtC10ChronoCore17WidgetPushManager_pushService + 24));
    v16 = off_283828B48;
    type metadata accessor for PushService();
    v16();
    swift_allocObject();
    swift_weakInit();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5560, &qword_224DB8D40);
    sub_224A33088(&unk_281351080, &unk_27D6F5560, &qword_224DB8D40);
    sub_224DAB488();

    swift_beginAccess();
    sub_224DAB308();
    swift_endAccess();

    __swift_project_boxed_opaque_existential_1(v15, v15[3]);
    off_283828B58();
    swift_allocObject();
    swift_weakInit();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4938, &qword_224DB8D48);
    sub_224A33088(&unk_281351110, &qword_27D6F4938, &qword_224DB8D48);
    sub_224DAB488();

    swift_beginAccess();
    sub_224DAB308();
    swift_endAccess();

    __swift_project_boxed_opaque_existential_1(v15, v15[3]);
    off_283828B50();
    swift_allocObject();
    swift_weakInit();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5570, &unk_224DB8D50);
    sub_224A33088(&unk_281351170, &qword_27D6F5570, &unk_224DB8D50);
    sub_224DAB488();

    swift_beginAccess();
    sub_224DAB308();
    swift_endAccess();

    v17 = a1[15];
    v18 = a1[16];
    __swift_project_boxed_opaque_existential_1(a1 + 12, v17);
    (*(*(v18 + 8) + 32))(768, v17);
    swift_allocObject();
    swift_weakInit();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5140, &unk_224DBAE80);
    sub_224A33088(&qword_281351140, &unk_27D6F5140, &unk_224DBAE80);
    sub_224DAB488();

    swift_beginAccess();
    sub_224DAB308();
    swift_endAccess();

    v19 = a1[6];
    __swift_project_boxed_opaque_existential_1(a1 + 2, a1[5]);
    sub_224DAD8B8();
    swift_allocObject();
    swift_weakInit();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F42B0, &unk_224DB8D60);
    sub_224A33088(&qword_2813510B0, &qword_27D6F42B0, &unk_224DB8D60);
    sub_224DAB488();

    swift_beginAccess();
    sub_224DAB308();
    swift_endAccess();

    return;
  }

LABEL_14:
  if (!*(v5 + 16))
  {
    goto LABEL_15;
  }

LABEL_9:
  v12 = sub_224DAB228();
  v13 = sub_224DAF288();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_224A2F000, v12, v13, "Error - WidgetPushManager already started.", v14, 2u);
    MEMORY[0x22AA5EED0](v14, -1, -1);
  }

  *a2 = 1;
}

uint64_t sub_224B95BFC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4620, &qword_224DB34D0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v41 = &v33 - v3;
  v38 = sub_224DAC538();
  v4 = *(*(v38 - 1) + 64);
  MEMORY[0x28223BE20](v38);
  v39 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_224DAC4D8();
  v35 = *(v6 - 8);
  v36 = v6;
  v7 = *(v35 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v34 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v40 = &v33 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3BB0, &unk_224DB8CF0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v33 - v12;
  v14 = sub_224DAC5E8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v42 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = v0;
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC10ChronoCore17WidgetPushManager_pushService), *(v0 + OBJC_IVAR____TtC10ChronoCore17WidgetPushManager_pushService + 24));
  v18 = sub_224DAE418();
  v20 = v19;
  v21 = off_283828B98;
  v22 = type metadata accessor for PushService();
  v21(v18, v20, v22, &off_283828B40);

  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    return sub_224A3311C(v13, &qword_27D6F3BB0, &unk_224DB8CF0);
  }

  (*(v15 + 32))(v42, v13, v14);
  v24 = v39;
  sub_224DAC558();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = v35;
    v26 = v36;
    v38 = *(v35 + 32);
    v27 = v40;
    v38(v40, v24, v36);
    v28 = sub_224DAF128();
    (*(*(v28 - 8) + 56))(v41, 1, 1, v28);
    v29 = v34;
    (*(v25 + 16))(v34, v27, v26);
    v30 = (*(v25 + 80) + 40) & ~*(v25 + 80);
    v31 = swift_allocObject();
    *(v31 + 2) = 0;
    *(v31 + 3) = 0;
    v32 = v38;
    *(v31 + 4) = v37;
    v32(&v31[v30], v29, v26);

    sub_224D00D34(0, 0, v41, &unk_224DB8D88, v31);

    (*(v25 + 8))(v40, v26);
    return (*(v15 + 8))(v42, v14);
  }

  else
  {
    (*(v15 + 8))(v42, v14);
    return sub_224B9D584(v24, MEMORY[0x277CF9A70]);
  }
}

uint64_t sub_224B960B4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4620, &qword_224DB34D0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v10 - v2;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    v6 = sub_224DAC578();
    if (v6)
    {
      v7 = v6;
      v8 = sub_224DAF128();
      (*(*(v8 - 8) + 56))(v3, 1, 1, v8);
      v9 = swift_allocObject();
      v9[2] = 0;
      v9[3] = 0;
      v9[4] = v5;
      v9[5] = v7;
      sub_224D00D34(0, 0, v3, &unk_224DB8D78, v9);
    }
  }

  return result;
}

uint64_t sub_224B961F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_224ACED1C;

  return sub_224B96290(a5);
}

uint64_t sub_224B96290(uint64_t a1)
{
  v2[41] = a1;
  v2[42] = v1;
  v3 = sub_224DAE6E8();
  v2[43] = v3;
  v4 = *(v3 - 8);
  v2[44] = v4;
  v5 = *(v4 + 64) + 15;
  v2[45] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v2[46] = v6;
  v7 = *(v6 - 8);
  v2[47] = v7;
  v8 = *(v7 + 64) + 15;
  v2[48] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4930, &unk_224DB8D00) - 8) + 64) + 15;
  v2[49] = swift_task_alloc();
  v2[50] = swift_task_alloc();
  v10 = sub_224DAE438();
  v2[51] = v10;
  v11 = *(v10 - 8);
  v2[52] = v11;
  v12 = *(v11 + 64) + 15;
  v2[53] = swift_task_alloc();
  v13 = sub_224DAC5E8();
  v2[54] = v13;
  v14 = *(v13 - 8);
  v2[55] = v14;
  v15 = *(v14 + 64) + 15;
  v2[56] = swift_task_alloc();
  v2[57] = swift_task_alloc();
  v2[58] = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4030, &unk_224DB5630) - 8) + 64) + 15;
  v2[59] = swift_task_alloc();
  v17 = sub_224DA9908();
  v2[60] = v17;
  v18 = *(v17 - 8);
  v2[61] = v18;
  v19 = *(v18 + 64) + 15;
  v2[62] = swift_task_alloc();
  v20 = sub_224DA9878();
  v2[63] = v20;
  v21 = *(v20 - 8);
  v2[64] = v21;
  v22 = *(v21 + 64) + 15;
  v2[65] = swift_task_alloc();
  v23 = *(*(type metadata accessor for ExtensionTask.SchedulingConfiguration(0) - 8) + 64) + 15;
  v2[66] = swift_task_alloc();
  v24 = type metadata accessor for ExtensionTask.Identifier(0);
  v2[67] = v24;
  v25 = *(*(v24 - 8) + 64) + 15;
  v2[68] = swift_task_alloc();
  v2[69] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_224B96624, 0, 0);
}

uint64_t sub_224B96624()
{
  receiver = v0[21].receiver;
  v2 = receiver[6];
  __swift_project_boxed_opaque_existential_1(receiver + 2, receiver[5]);
  if (!sub_224DAD8C8())
  {
    super_class = v0[34].super_class;
    v8 = v0[34].receiver;
    v9 = v0[33].receiver;
    v10 = v0[32].super_class;
    v11 = v0[31].receiver;
    v13 = v0[29].receiver;
    v12 = v0[29].super_class;
    v15 = v0[28].receiver;
    v14 = v0[28].super_class;
    v16 = v0[26].super_class;
    v277 = v0[25].receiver;
    v281 = v0[24].super_class;
    v287 = v0[24].receiver;
    v293 = v0[22].super_class;

    v17 = v0->super_class;
LABEL_118:

    return v17();
  }

  v3 = v0[21].receiver;
  v254 = sub_224DACF78();

  v5 = v3[15];
  v4 = v3[16];
  __swift_project_boxed_opaque_existential_1(v3 + 12, v5);
  (*(v4 + 32))(768, v5, v4);
  if (v0[3].super_class)
  {
    v6 = sub_224A86CAC();
    sub_224A699F0(&v0[1]);
    v240 = v6;
    if (v6)
    {
      goto LABEL_8;
    }
  }

  else
  {
    sub_224A3311C(&v0[1], &qword_27D6F50E0, &qword_224DB41A0);
  }

  v240 = sub_224A870EC(MEMORY[0x277D84F90]);

LABEL_8:
  v18 = v0[34].super_class;
  v19 = v0[34].receiver;
  v262 = v19;
  v20 = v0[33].super_class;
  v21 = v0[33].receiver;
  v294 = v21;
  v253 = v0[32].super_class;
  v22 = v0[32].receiver;
  v259 = v0[31].super_class;
  v268 = v0[30].super_class;
  v273 = v0[30].receiver;
  v278 = v0[29].super_class;
  v23 = v0[20].super_class;
  v282 = v0[21].receiver;
  v288 = v0[31].receiver;
  *v18 = v23;
  swift_storeEnumTagMultiPayload();
  sub_224A4152C(v18, v19, type metadata accessor for ExtensionTask.Identifier);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F33D0, qword_224DB3710);
  (*(*(v24 - 8) + 56))(v21, 1, 1, v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5070, &unk_224DB3670);
  v25 = *(type metadata accessor for ExtensionTask.SchedulingOption(0) - 8);
  v26 = *(v25 + 72);
  v245 = v0;
  v27 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_224DB8BC0;
  v29 = v28 + v27;
  v30 = sub_224DAE8B8();
  v31 = *(v30 - 8);
  v32 = *(v31 + 56);
  v32(v29, 4, 5, v30);
  v32(v29 + v26, 3, 5, v30);
  (*(v31 + 104))(v29 + 2 * v26, *MEMORY[0x277CE3D28], v30);
  v32(v29 + 2 * v26, 0, 5, v30);
  v249 = type metadata accessor for ExtensionTask(0);
  v33 = objc_allocWithZone(v249);
  v34 = v23;
  sub_224DAE908();
  v35 = OBJC_IVAR____TtC10ChronoCore13ExtensionTask_schedulingOptions;
  *&v33[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_schedulingOptions] = MEMORY[0x277D84F90];
  v36 = OBJC_IVAR____TtC10ChronoCore13ExtensionTask_powerlogWakeReason;
  v246 = sub_224DAC938();
  v251 = *(v246 - 8);
  v255 = *(v251 + 56);
  v255(&v33[v36], 1, 1, v246);
  v37 = &v33[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_syncWorkItem];
  *v37 = 0;
  v37[1] = 0;
  v38 = &v33[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_asyncWorkItem];
  *v38 = 0;
  v38[1] = 0;
  v39 = &v33[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_taskWorkItem];
  *v39 = 0;
  v39[1] = 0;
  v40 = &v33[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_completion];
  *v40 = 0;
  v40[1] = 0;
  sub_224DA9868();
  v22[4](&v33[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_creationDate], v253, v259);
  v230 = v23;
  *&v33[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_target] = v23;
  sub_224A4152C(v294, &v33[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_schedulingConfiguration], type metadata accessor for ExtensionTask.SchedulingConfiguration);
  swift_beginAccess();
  v41 = *&v33[v35];
  *&v33[v35] = v28;
  v42 = v34;

  v43 = &v33[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_cost];
  *v43 = 1;
  v43[8] = 0;
  sub_224A4152C(v262, &v33[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_identifier], type metadata accessor for ExtensionTask.Identifier);
  sub_224DA98F8();
  (*(v268 + 2))(&v33[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_taskIdentifier], v288, v273);
  v245[20].receiver = sub_224DA98E8();
  sub_224A3F6A4();
  sub_224DAEF18();
  v44 = sub_224A3D19C(8);
  v46 = v45;
  v48 = v47;
  v50 = v49;

  v51 = MEMORY[0x22AA5D1C0](v44, v46, v48, v50);
  v53 = v52;

  v54 = &v33[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_logDigest];
  *v54 = v51;
  v54[1] = v53;
  v33[OBJC_IVAR____TtC10ChronoCore13ExtensionTask_allowCostOverride] = 1;
  v245[19].receiver = v33;
  v55 = v245;
  v245[19].super_class = v249;
  v56 = objc_msgSendSuper2(v245 + 19, sel_init);
  v245[35].receiver = v56;
  (*(v268 + 1))(v288, v273);
  sub_224B9D584(v294, type metadata accessor for ExtensionTask.SchedulingConfiguration);
  sub_224B9D584(v262, type metadata accessor for ExtensionTask.Identifier);
  (*(v251 + 104))(v278, *MEMORY[0x277CF9AE8], v246);
  v255(v278, 0, 1, v246);
  v57 = OBJC_IVAR____TtC10ChronoCore13ExtensionTask_powerlogWakeReason;
  swift_beginAccess();
  v232 = v56;
  sub_224A6E1D0(v278, v56 + v57);
  swift_endAccess();
  v260 = &v282[OBJC_IVAR____TtC10ChronoCore17WidgetPushManager_pushService];
  __swift_project_boxed_opaque_existential_1(&v282[OBJC_IVAR____TtC10ChronoCore17WidgetPushManager_pushService], *&v282[OBJC_IVAR____TtC10ChronoCore17WidgetPushManager_pushService + 24]);
  v58 = off_283828B60[0];
  v256 = type metadata accessor for PushService();
  v59 = v58(v256, &off_283828B40);
  v60 = sub_224DA0FA4(MEMORY[0x277D84F90]);
  v61 = *(v59 + 16);
  if (v61)
  {
    v62 = 0;
    v63 = v245[27].super_class;
    v289 = v59 + ((*(v63 + 80) + 32) & ~*(v63 + 80));
    v279 = v59;
    v283 = (v63 + 8);
    v263 = (v63 + 40);
    v264 = (v63 + 32);
    v269 = v63;
    v274 = *(v59 + 16);
    while (v62 < *(v59 + 16))
    {
      v64 = *(v63 + 9);
      v65 = *(v63 + 2);
      v65(v55[29].receiver, v289 + v64 * v62, v55[27].receiver);
      v66 = sub_224DAC578();
      if (v66)
      {
        v67 = v66;
        v68 = v55[20].super_class;
        sub_224A3B79C(0, &qword_281350840, 0x277D82BB8);
        v69 = sub_224DAF6A8();
        v70 = v55[29].receiver;
        if (v69)
        {
          v71 = v55[28].super_class;
          v72 = v55[27].receiver;
          v73 = sub_224DAC588();
          v74 = v60;
          v76 = v75;
          v65(v71, v70, v72);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v297 = v74;
          v79 = sub_224A3A40C(v73, v76);
          v80 = v74[2];
          v81 = (v78 & 1) == 0;
          v82 = v80 + v81;
          if (__OFADD__(v80, v81))
          {
            goto LABEL_132;
          }

          v83 = v78;
          if (v74[3] >= v82)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_224B2527C();
            }
          }

          else
          {
            sub_224B0F104(v82, isUniquelyReferenced_nonNull_native);
            v84 = sub_224A3A40C(v73, v76);
            if ((v83 & 1) != (v85 & 1))
            {
              goto LABEL_125;
            }

            v79 = v84;
          }

          v87 = v245[28].super_class;
          v86 = v245[29].receiver;
          v88 = v245[27].receiver;
          if (v83)
          {

            v60 = v297;
            (*v263)(v297[7] + v79 * v64, v87, v88);

            (*v283)(v86, v88);
          }

          else
          {
            v297[(v79 >> 6) + 8] |= 1 << v79;
            v89 = (v297[6] + 16 * v79);
            *v89 = v73;
            v89[1] = v76;
            v60 = v297;
            (*v264)(v297[7] + v79 * v64, v87, v88);

            (*v283)(v86, v88);
            v90 = v297[2];
            v91 = __OFADD__(v90, 1);
            v92 = v90 + 1;
            if (v91)
            {
              goto LABEL_133;
            }

            v297[2] = v92;
          }

          v55 = v245;
          v61 = v274;
          v59 = v279;
          v63 = v269;
        }

        else
        {
          (*v283)(v55[29].receiver, v55[27].receiver);
        }
      }

      else
      {
        (*v283)(v55[29].receiver, v55[27].receiver);
      }

      if (v61 == ++v62)
      {
        goto LABEL_27;
      }
    }

    goto LABEL_131;
  }

LABEL_27:

  __swift_project_boxed_opaque_existential_1(v260, *(v260 + 3));
  v93 = off_283828B68(v256, &off_283828B40);
  v94 = *(v93 + 16);
  if (v94)
  {
    v234 = 0;
    v95 = v55[27].super_class;
    v96 = v55;
    v97 = v55[26].receiver;
    v98 = v96[20].super_class;
    v265 = *MEMORY[0x277CFA130];
    v100 = v97[2];
    v99 = v97 + 2;
    v295 = v100;
    v247 = *MEMORY[0x277CFA138];
    v101 = v93 + ((*(v99 + 64) + 32) & ~*(v99 + 64));
    v270 = v95;
    v257 = (v95 + 8);
    v237 = 0xF000000000000000;
    v284 = v60;
    v290 = v99[7];
    v100(v96[26].super_class, v101, v96[25].super_class);
    while (1)
    {
      v102 = sub_224DAE418();
      if (!*(v60 + 16))
      {

        goto LABEL_30;
      }

      v104 = sub_224A3A40C(v102, v103);
      v106 = v105;

      if (v106)
      {
        break;
      }

LABEL_30:
      (*(v99 - 1))(v245[26].super_class, v245[25].super_class);
      v101 += v290;
      if (!--v94)
      {

        v55 = v245;
        v126 = v234;
        v127 = v237;
        goto LABEL_53;
      }

      v295(v245[26].super_class, v101, v245[25].super_class);
    }

    (*(v270 + 2))(v245[28].receiver, *(v60 + 56) + *(v270 + 9) * v104, v245[27].receiver);
    v107 = sub_224DAC578();
    if (v107)
    {
      v108 = v107;
      v109 = *MEMORY[0x277CFA130];
      swift_beginAccess();
      v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
      if ((*(*(v110 - 8) + 48))(&v108[v109], 1, v110))
      {
        swift_endAccess();
        v111 = *MEMORY[0x277CFA138];
        swift_beginAccess();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
      }

      v112 = sub_224DA9FE8();
      v113 = v114;
      swift_endAccess();
    }

    else
    {
      v112 = 0;
      v113 = 0;
    }

    swift_beginAccess();
    v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
    if ((*(*(v115 - 8) + 48))(v98 + v265, 1, v115))
    {
      swift_endAccess();
      swift_beginAccess();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
    }

    v116 = sub_224DA9FE8();
    v118 = v117;
    swift_endAccess();
    if (v113)
    {
      if (v112 == v116 && v113 == v118)
      {

LABEL_48:
        v120 = v245[28].receiver;
        v121 = v245[26].super_class;
        v122 = v245[27].receiver;
        v123 = sub_224DAE428();
        v125 = v124;
        sub_224AC1D9C(v234, v237);
        (*v257)(v120, v122);
        v234 = v123;
        v237 = v125;
LABEL_50:
        v60 = v284;
        goto LABEL_30;
      }

      v119 = sub_224DAFD88();

      if (v119)
      {
        goto LABEL_48;
      }
    }

    else
    {
    }

    (*v257)(v245[28].receiver, v245[27].receiver);
    goto LABEL_50;
  }

  v126 = 0;
  v127 = 0xF000000000000000;
LABEL_53:
  p_super_class = &v55[20].super_class;
  v235 = v126;
  v238 = v127;
  v55[36].receiver = v127;
  v55[35].super_class = v126;
  v128 = v55[23].super_class;
  v261 = v55[20].super_class;
  v129 = swift_allocObject();
  v130 = 0;
  v55[36].super_class = v129;
  v231 = v129;
  *(v129 + 16) = MEMORY[0x277D84F90];
  v291 = (v129 + 16);
  v131 = v240 + 64;
  v132 = -1;
  v133 = -1 << *(v240 + 32);
  if (-v133 < 64)
  {
    v132 = ~(-1 << -v133);
  }

  v134 = v132 & *(v240 + 64);
  v252 = *MEMORY[0x277CFA138];
  v236 = (63 - v133) >> 6;
  v239 = v128;
  v241 = (v128 + 8);
  v258 = *MEMORY[0x277CFA130];
  while (1)
  {
    if (v134)
    {
      v244 = v130;
      v137 = v130;
LABEL_67:
      v141 = v55[24].receiver;
      v140 = v55[24].super_class;
      v142 = v55[23].receiver;
      v243 = (v134 - 1) & v134;
      v143 = __clz(__rbit64(v134)) | (v137 << 6);
      (*(v239 + 2))(v141, *(v240 + 48) + *(v239 + 9) * v143, v142);
      v144 = *(*(v240 + 56) + 8 * v143);
      v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F38A8, &unk_224DB4650);
      v146 = *(v145 + 48);
      (*(v239 + 4))(v140, v141, v142);
      *(v140 + v146) = v144;
      (*(*(v145 - 8) + 56))(v140, 0, 1, v145);
      v147 = v144;
      v55 = v245;
    }

    else
    {
      if (v236 <= v130 + 1)
      {
        v138 = v130 + 1;
      }

      else
      {
        v138 = v236;
      }

      v139 = v138 - 1;
      while (1)
      {
        v137 = v130 + 1;
        if (__OFADD__(v130, 1))
        {
          goto LABEL_129;
        }

        if (v137 >= v236)
        {
          break;
        }

        v134 = *(v131 + 8 * v137);
        ++v130;
        if (v134)
        {
          v244 = v137;
          goto LABEL_67;
        }
      }

      v196 = v55[24].super_class;
      v197 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F38A8, &unk_224DB4650);
      (*(*(v197 - 8) + 56))(v196, 1, 1, v197);
      v243 = 0;
      v244 = v139;
    }

    v148 = v55[25].receiver;
    sub_224B9D454(v55[24].super_class, v148);
    v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F38A8, &unk_224DB4650);
    if ((*(*(v149 - 8) + 48))(v148, 1, v149) == 1)
    {

      if (v238 >> 60 != 15)
      {
        v226 = swift_task_alloc();
        v55[37].receiver = v226;
        v227 = *p_super_class;
        *(v226 + 16) = v232;
        *(v226 + 24) = vextq_s8(v227, v227, 8uLL);
        *(v226 + 40) = v231;
        *(v226 + 48) = v235;
        *(v226 + 56) = v238;
        v228 = *(MEMORY[0x277D85A40] + 4);
        v229 = swift_task_alloc();
        v55[37].super_class = v229;
        *v229 = v55;
        *(v229 + 1) = sub_224B981BC;

        return MEMORY[0x2822008A0]();
      }

      v200 = v55[22].receiver;
      v199 = v55[22].super_class;
      v201 = v55;
      v204 = v55 + 21;
      v203 = v55[21].receiver;
      v202 = v204->super_class;
      v205 = v201[20].super_class;
      sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
      v200[13](v199, *MEMORY[0x277CE3C40], v202);
      v206 = sub_224DAF638();
      v207 = v205;
      v208 = v206;
      v209 = sub_224DAB228();
      v210 = sub_224DAF288();

      if (os_log_type_enabled(v209, v210))
      {
        v211 = p_super_class->i64[0];
        v212 = swift_slowAlloc();
        v213 = swift_slowAlloc();
        *v212 = 138543618;
        *(v212 + 4) = v211;
        *(v212 + 12) = 2114;
        *(v212 + 14) = v208;
        *v213 = v230;
        v213[1] = v208;
        v214 = v211;
        v215 = v208;
        _os_log_impl(&dword_224A2F000, v209, v210, "Error occurred when sending push token to extension %{public}@: %{public}@ and no matching push token found", v212, 0x16u);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F69F0, &unk_224DB3900);
        swift_arrayDestroy();
        MEMORY[0x22AA5EED0](v213, -1, -1);
        MEMORY[0x22AA5EED0](v212, -1, -1);
      }

      swift_willThrow();
      v216 = v245[36].super_class;
      v217 = v245[34].super_class;
      v218 = v245[34].receiver;
      v219 = v245[33].receiver;
      v220 = v245[32].super_class;
      v221 = v245[31].receiver;
      v223 = v245[29].receiver;
      v222 = v245[29].super_class;
      v224 = v245[28].super_class;
      v267 = v245[28].receiver;
      v272 = v245[26].super_class;
      v276 = v245[25].receiver;
      v280 = v245[24].super_class;
      v286 = v245[24].receiver;
      v292 = v245[22].super_class;

      sub_224B9D584(v217, type metadata accessor for ExtensionTask.Identifier);

      v17 = v245->super_class;
      goto LABEL_118;
    }

    v242 = *(v55[25].receiver + *(v149 + 48));
    v150 = [v242 containerDescriptors];
    sub_224A3B79C(0, &unk_281350870, 0x277CFA1E0);
    v151 = sub_224DAF008();

    v152 = sub_224A7B5CC(v151);

    v153 = v152;
    v275 = v152;
    if (v152 >> 62)
    {
      break;
    }

    v154 = *((v152 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v154)
    {
      goto LABEL_71;
    }

LABEL_56:
    v135 = v55[25].receiver;
    v136 = v55[23].receiver;

    (*v241)(v135, v136);
    v131 = v240 + 64;
    v134 = v243;
    v130 = v244;
  }

  v198 = sub_224DAF838();
  v153 = v152;
  v154 = v198;
  if (!v198)
  {
    goto LABEL_56;
  }

LABEL_71:
  v155 = 0;
  v271 = v153 & 0xC000000000000001;
  v248 = v153 + 32;
  v250 = v153 & 0xFFFFFFFFFFFFFF8;
  v266 = v154;
  while (2)
  {
    if (v271)
    {
      v156 = MEMORY[0x22AA5DCC0](v155, v153);
      goto LABEL_78;
    }

    if (v155 >= *(v250 + 16))
    {
      __break(1u);
LABEL_129:
      __break(1u);
      goto LABEL_130;
    }

    v156 = *(v248 + 8 * v155);
LABEL_78:
    v157 = v156;
    v91 = __OFADD__(v155, 1);
    v158 = v155 + 1;
    if (!v91)
    {
      v285 = v158;
      v159 = [v156 extensionIdentity];
      v160 = *MEMORY[0x277CFA130];
      swift_beginAccess();
      v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
      v162 = *(*(v161 - 8) + 48);
      if (v162(&v159[v160], 1, v161))
      {
        swift_endAccess();
        v163 = *MEMORY[0x277CFA138];
        swift_beginAccess();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
      }

      v164 = sub_224DA9FE8();
      v166 = v165;
      swift_endAccess();

      swift_beginAccess();
      if (v162(v261 + v258, 1, v161))
      {
        swift_endAccess();
        swift_beginAccess();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
      }

      v167 = sub_224DA9FE8();
      v169 = v168;
      swift_endAccess();
      if (v164 == v167 && v166 == v169)
      {
      }

      else
      {
        v170 = sub_224DAFD88();

        if ((v170 & 1) == 0)
        {
          goto LABEL_73;
        }
      }

      v171 = [v157 extensionIdentity];
      v172 = v171;
      if (!*(v254 + 16) || (v173 = sub_224A3E7EC(v171), (v174 & 1) == 0))
      {

        goto LABEL_73;
      }

      v175 = *(*(v254 + 56) + 8 * v173);

      if (!(v175 >> 62))
      {
        v176 = *((v175 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v176)
        {
          goto LABEL_91;
        }

LABEL_110:

LABEL_73:

        v155 = v285;
        v153 = v275;
        if (v285 == v266)
        {
          goto LABEL_56;
        }

        continue;
      }

      v176 = sub_224DAF838();
      if (!v176)
      {
        goto LABEL_110;
      }

LABEL_91:
      if (v176 >= 1)
      {
        v177 = 0;
        v178 = v175 & 0xC000000000000001;
        v296 = v176;
        while (1)
        {
          if (v178)
          {
            v181 = MEMORY[0x22AA5DCC0](v177, v175);
          }

          else
          {
            v181 = *(v175 + 8 * v177 + 32);
          }

          v182 = v181;
          if (![v181 supportsPush])
          {
            goto LABEL_97;
          }

          v183 = v178;
          v184 = [v182 kind];
          v185 = sub_224DAEE18();
          v187 = v186;

          v188 = v157;
          v189 = [v157 kind];
          v190 = sub_224DAEE18();
          v192 = v191;

          if (v185 == v190 && v187 == v192)
          {
            break;
          }

          v194 = sub_224DAFD88();

          v179 = v291;
          v176 = v296;
          v157 = v188;
          v178 = v183;
          if (v194)
          {
            goto LABEL_94;
          }

LABEL_97:
          ++v177;

          if (v176 == v177)
          {

            v55 = v245;
            goto LABEL_73;
          }
        }

        v179 = v291;
        v176 = v296;
        v157 = v188;
        v178 = v183;
LABEL_94:
        v180 = [v157 widget];
        MEMORY[0x22AA5D350]();
        if (*((*v179 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v179 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v195 = *((*v179 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_224DAF038();
        }

        sub_224DAF078();
        goto LABEL_97;
      }

LABEL_130:
      __break(1u);
LABEL_131:
      __break(1u);
LABEL_132:
      __break(1u);
LABEL_133:
      __break(1u);
      return MEMORY[0x2822008A0]();
    }

    break;
  }

  __break(1u);
LABEL_125:

  return sub_224DAFDD8();
}

uint64_t sub_224B981BC()
{
  v2 = *v1;
  v3 = *(*v1 + 600);
  v4 = *v1;
  *(*v1 + 608) = v0;

  v5 = *(v2 + 592);

  if (v0)
  {
    v6 = sub_224B9844C;
  }

  else
  {
    v6 = sub_224B982F0;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_224B982F0()
{
  v1 = v0[73];
  v2 = v0[70];
  v3 = v0[69];
  sub_224AC1D9C(v0[71], v0[72]);

  sub_224B9D584(v3, type metadata accessor for ExtensionTask.Identifier);

  v4 = v0[69];
  v5 = v0[68];
  v6 = v0[66];
  v7 = v0[65];
  v8 = v0[62];
  v10 = v0[58];
  v9 = v0[59];
  v12 = v0[56];
  v11 = v0[57];
  v13 = v0[53];
  v16 = v0[50];
  v17 = v0[49];
  v18 = v0[48];
  v19 = v0[45];

  v14 = v0[1];

  return v14();
}

uint64_t sub_224B9844C()
{
  sub_224AC1D9C(*(v0 + 568), *(v0 + 576));
  v18 = *(v0 + 608);
  v1 = *(v0 + 584);
  v2 = *(v0 + 552);
  v3 = *(v0 + 544);
  v4 = *(v0 + 528);
  v5 = *(v0 + 520);
  v6 = *(v0 + 496);
  v8 = *(v0 + 464);
  v7 = *(v0 + 472);
  v9 = *(v0 + 456);
  v12 = *(v0 + 448);
  v13 = *(v0 + 424);
  v14 = *(v0 + 400);
  v15 = *(v0 + 392);
  v16 = *(v0 + 384);
  v17 = *(v0 + 360);

  sub_224B9D584(v2, type metadata accessor for ExtensionTask.Identifier);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_224B985B4(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a3(a1);
  }

  return result;
}

void sub_224B98628(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
  v97 = *(v3 - 8);
  v98 = v3;
  v4 = *(v97 + 64);
  MEMORY[0x28223BE20](v3);
  v96 = &v84 - v5;
  v6 = sub_224DACB98();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5060, &qword_224DB5620);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v100 = &v84 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v84 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v20 = MEMORY[0x28223BE20](v19);
  v24 = &v84 - v23;
  if (*(a1 + 8) == 1)
  {
    v88 = v22;
    v94 = v21;
    v95 = v20;
    v90 = v10;
    v91 = v7;
    v92 = v6;
    v25 = *a1;
    v26 = v1[5];
    v27 = v1[6];
    v99 = v1;
    __swift_project_boxed_opaque_existential_1(v1 + 2, v26);
    v104 = v25;
    if (sub_224DAD8C8())
    {
      v28 = sub_224DACF78();

      v29 = *MEMORY[0x277CFA130];
      swift_beginAccess();
      v87 = v29;
      sub_224A3796C(&v104[v29], v16, &unk_27D6F5060, &qword_224DB5620);
      v30 = v94;
      v31 = *(v94 + 48);
      v32 = v95;
      v86 = v94 + 48;
      v85 = v31;
      if (v31(v16, 1, v95) == 1)
      {
        sub_224A3311C(v16, &unk_27D6F5060, &qword_224DB5620);
        v33 = *(v99 + OBJC_IVAR____TtC10ChronoCore17WidgetPushManager_timelineService + 32);
        __swift_project_boxed_opaque_existential_1((v99 + OBJC_IVAR____TtC10ChronoCore17WidgetPushManager_timelineService), *(v99 + OBJC_IVAR____TtC10ChronoCore17WidgetPushManager_timelineService + 24));
        v34 = sub_224DAC818();
      }

      else
      {
        (*(v30 + 32))(v24, v16, v32);
        v36 = *(v99 + OBJC_IVAR____TtC10ChronoCore17WidgetPushManager_timelineService + 32);
        __swift_project_boxed_opaque_existential_1((v99 + OBJC_IVAR____TtC10ChronoCore17WidgetPushManager_timelineService), *(v99 + OBJC_IVAR____TtC10ChronoCore17WidgetPushManager_timelineService + 24));
        v34 = sub_224DAC808();
        (*(v30 + 8))(v24, v32);
      }

      v37 = v34 & 0xFFFFFFFFFFFFFF8;
      if (v34 >> 62)
      {
        goto LABEL_66;
      }

      v38 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_11:
      v93 = v34;
      if (v38)
      {
        v39 = 0;
        v105 = v93 + 32;
        v106 = v93 & 0xC000000000000001;
        v89 = MEMORY[0x277D84F90];
        v102 = v37;
        v103 = v28;
        v101 = v38;
        while (1)
        {
          if (v106)
          {
            v40 = MEMORY[0x22AA5DCC0](v39, v93);
          }

          else
          {
            if (v39 >= *(v37 + 16))
            {
              goto LABEL_65;
            }

            v40 = *(v105 + 8 * v39);
          }

          v41 = v40;
          if (__OFADD__(v39++, 1))
          {
LABEL_64:
            __break(1u);
LABEL_65:
            __break(1u);
LABEL_66:
            v38 = sub_224DAF838();
            goto LABEL_11;
          }

          v43 = [v40 extensionIdentity];
          v34 = v43;
          if (*(v28 + 16))
          {
            v107 = v39;
            v44 = sub_224A3E7EC(v43);
            if (v45)
            {
              v37 = *(*(v28 + 56) + 8 * v44);

              if (v37 >> 62)
              {
                v46 = sub_224DAF838();
                if (v46)
                {
LABEL_21:
                  v47 = 0;
                  v109 = v37 & 0xFFFFFFFFFFFFFF8;
                  v110 = v37 & 0xC000000000000001;
                  v108 = v41;
                  while (1)
                  {
                    if (v110)
                    {
                      v48 = MEMORY[0x22AA5DCC0](v47, v37);
                      v28 = v47 + 1;
                      if (__OFADD__(v47, 1))
                      {
                        goto LABEL_62;
                      }
                    }

                    else
                    {
                      if (v47 >= *(v109 + 16))
                      {
                        goto LABEL_63;
                      }

                      v48 = *(v37 + 8 * v47 + 32);
                      v28 = v47 + 1;
                      if (__OFADD__(v47, 1))
                      {
LABEL_62:
                        __break(1u);
LABEL_63:
                        __break(1u);
                        goto LABEL_64;
                      }
                    }

                    v49 = v48;
                    v50 = [v41 kind];
                    v34 = sub_224DAEE18();
                    v52 = v51;

                    v53 = v49;
                    v54 = [v49 kind];
                    v55 = sub_224DAEE18();
                    v57 = v56;

                    if (v34 == v55 && v52 == v57)
                    {
                      break;
                    }

                    v34 = sub_224DAFD88();

                    if (v34)
                    {
                      goto LABEL_38;
                    }

                    ++v47;
                    v41 = v108;
                    if (v28 == v46)
                    {
                      goto LABEL_47;
                    }
                  }

LABEL_38:
                  v41 = v108;

                  v59 = [v53 supportsPush];
                  v37 = v102;
                  v28 = v103;
                  v38 = v101;
                  if ((v59 & 1) == 0)
                  {

                    goto LABEL_48;
                  }

                  v60 = [v41 kind];
                  v61 = sub_224DAEE18();
                  v63 = v62;

                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v89 = sub_224A865C4(0, *(v89 + 2) + 1, 1, v89);
                  }

                  v65 = *(v89 + 2);
                  v64 = *(v89 + 3);
                  v34 = v65 + 1;
                  if (v65 >= v64 >> 1)
                  {
                    v89 = sub_224A865C4((v64 > 1), v65 + 1, 1, v89);
                  }

                  v66 = v89;
                  *(v89 + 2) = v34;
                  v67 = &v66[16 * v65];
                  *(v67 + 4) = v61;
                  *(v67 + 5) = v63;
                  v39 = v107;
                  goto LABEL_50;
                }
              }

              else
              {
                v46 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (v46)
                {
                  goto LABEL_21;
                }
              }

LABEL_47:

              v37 = v102;
              v28 = v103;
              v38 = v101;
            }

            else
            {
            }

LABEL_48:
            v39 = v107;
          }

          else
          {
          }

LABEL_50:
          if (v39 == v38)
          {
            goto LABEL_53;
          }
        }
      }

      v89 = MEMORY[0x277D84F90];
LABEL_53:

      v68 = v89;
      if (*(v89 + 2))
      {
        v69 = v100;
        sub_224A3796C(&v104[v87], v100, &unk_27D6F5060, &qword_224DB5620);
        v70 = v95;
        v71 = v85(v69, 1, v95);
        v72 = v99;
        if (v71 == 1)
        {
          sub_224A3311C(v69, &unk_27D6F5060, &qword_224DB5620);
          v73 = *(v72 + OBJC_IVAR____TtC10ChronoCore17WidgetPushManager_timelineService + 32);
          __swift_project_boxed_opaque_existential_1((v72 + OBJC_IVAR____TtC10ChronoCore17WidgetPushManager_timelineService), *(v72 + OBJC_IVAR____TtC10ChronoCore17WidgetPushManager_timelineService + 24));
          sub_224AE8AF4(v68);

          v74 = *MEMORY[0x277CFA138];
          swift_beginAccess();
          v76 = v96;
          v75 = v97;
          v70 = v98;
          (*(v97 + 16))(v96, &v104[v74], v98);
          v77 = v91;
          v78 = v90;
          v79 = v92;
          (*(v91 + 104))(v90, *MEMORY[0x277CF9BE0], v92);
          sub_224DAC788();
        }

        else
        {
          v75 = v94;
          v76 = v88;
          (*(v94 + 32))(v88, v69, v70);
          v83 = *(v72 + OBJC_IVAR____TtC10ChronoCore17WidgetPushManager_timelineService + 32);
          __swift_project_boxed_opaque_existential_1((v72 + OBJC_IVAR____TtC10ChronoCore17WidgetPushManager_timelineService), *(v72 + OBJC_IVAR____TtC10ChronoCore17WidgetPushManager_timelineService + 24));
          sub_224AE8AF4(v68);

          v77 = v91;
          v78 = v90;
          v79 = v92;
          (*(v91 + 104))(v90, *MEMORY[0x277CF9BE0], v92);
          sub_224DAC778();
        }

        (*(v77 + 8))(v78, v79);
        (*(v75 + 8))(v76, v70);
      }

      else
      {

        v80 = sub_224DAB228();
        v81 = sub_224DAF2A8();
        if (os_log_type_enabled(v80, v81))
        {
          v82 = swift_slowAlloc();
          *v82 = 0;
          _os_log_impl(&dword_224A2F000, v80, v81, "Received push notification, but no active configured widgets that support push.", v82, 2u);
          MEMORY[0x22AA5EED0](v82, -1, -1);
        }
      }
    }

    else
    {
      v35 = v104;
    }
  }
}

void sub_224B99110(int a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4620, &qword_224DB34D0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v250 - v5;
  v7 = sub_224DAB7B8();
  v256 = *(v7 - 8);
  v8 = *(v256 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v250 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_224DAB848();
  v255 = *(v11 - 8);
  v12 = *(v255 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v250 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3BB0, &unk_224DB8CF0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v290 = &v250 - v17;
  v273 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v267 = *(v273 - 8);
  v18 = *(v267 + 64);
  MEMORY[0x28223BE20](v273);
  v266 = &v250 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4930, &unk_224DB8D00);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v271 = &v250 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v288 = &v250 - v24;
  v295 = sub_224DAC538();
  v25 = *(*(v295 - 8) + 64);
  MEMORY[0x28223BE20](v295);
  v284 = &v250 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v294 = sub_224DAC4D8();
  v280 = *(v294 - 8);
  v27 = *(v280 + 64);
  MEMORY[0x28223BE20](v294);
  v293 = &v250 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v291 = sub_224DAC5E8();
  v285 = *(v291 - 8);
  v29 = *(v285 + 64);
  v30 = MEMORY[0x28223BE20](v291);
  v32 = &v250 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v30);
  v287 = &v250 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v278 = &v250 - v36;
  v254 = v37;
  MEMORY[0x28223BE20](v35);
  v283 = &v250 - v38;
  v39 = v1[15];
  v40 = v1[16];
  v258 = v1;
  __swift_project_boxed_opaque_existential_1(v1 + 12, v39);
  (*(v40 + 32))(aBlock, 768, v39, v40);
  if (v299)
  {
    v41 = sub_224A86CAC();
    sub_224A699F0(aBlock);
    v270 = v41;
    if (v41)
    {
      goto LABEL_6;
    }
  }

  else
  {
    sub_224A3311C(aBlock, &qword_27D6F50E0, &qword_224DB41A0);
  }

  v270 = sub_224A870EC(MEMORY[0x277D84F90]);

LABEL_6:
  v42 = v258[6];
  __swift_project_boxed_opaque_existential_1(v258 + 2, v258[5]);
  if (sub_224DAD8C8())
  {
    v251 = v10;
    v263 = v7;
    v252 = a1;
    v253 = v6;
    v43 = sub_224DACF78();

    v305 = MEMORY[0x277D84FA0];
    v257 = sub_224DA1AB8(MEMORY[0x277D84F90]);
    v304 = v257;
    v44 = v43 + 64;
    v45 = 1 << *(v43 + 32);
    v46 = -1;
    if (v45 < 64)
    {
      v46 = ~(-1 << v45);
    }

    v47 = v46 & *(v43 + 64);
    v48 = (v45 + 63) >> 6;
    v286 = v43;

    v49 = 0;
    v277 = 0;
    v50 = 0x27853F000;
    v262 = v11;
    v250 = v14;
    v261 = v32;
    v51 = 0x1FAF57000;
    v292 = v48;
    while (v47)
    {
LABEL_17:
      v53 = __clz(__rbit64(v47));
      v47 &= v47 - 1;
      v54 = (v49 << 9) | (8 * v53);
      v55 = *(v286[7] + v54);
      v6 = *(v286[6] + v54);

      if ([v6 *(v50 + 2616)])
      {
LABEL_11:
      }

      else
      {
        v296 = v6;
        if (v55 >> 62)
        {
          v56 = sub_224DAF838();
        }

        else
        {
          v56 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v50 = 0;
        do
        {
          if (v56 == v50)
          {
            v51 = &off_27853F000;
            v48 = v292;
            v50 = &off_27853F000;
            v6 = v296;
            goto LABEL_11;
          }

          if ((v55 & 0xC000000000000001) != 0)
          {
            v57 = MEMORY[0x22AA5DCC0](v50, v55);
          }

          else
          {
            if (v50 >= *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_164;
            }

            v57 = *(v55 + 8 * v50 + 32);
          }

          v58 = v57;
          if (__OFADD__(v50, 1))
          {
            goto LABEL_163;
          }

          v6 = [v57 supportsPush];

          ++v50;
        }

        while ((v6 & 1) == 0);

        v6 = *MEMORY[0x277CFA130];
        v59 = v296;
        swift_beginAccess();
        v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
        v61 = *(v60 - 8);
        v62 = *(v61 + 48);
        v289 = (v61 + 48);
        if (v62(v59 + v6, 1, v60))
        {
          swift_endAccess();
          v63 = *MEMORY[0x277CFA138];
          swift_beginAccess();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
        }

        v64 = sub_224DA9FE8();
        v66 = v65;
        swift_endAccess();
        sub_224ADAF60(aBlock, v64, v66);

        swift_beginAccess();
        if (v62(v59 + v6, 1, v60))
        {
          swift_endAccess();
          v67 = *MEMORY[0x277CFA138];
          swift_beginAccess();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
        }

        v68 = sub_224DA9FE8();
        v70 = v69;
        swift_endAccess();
        v51 = 0x27853F000;
        v71 = v304;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        aBlock[0] = v71;
        sub_224B20F28(v59, v68, v70, isUniquelyReferenced_nonNull_native);

        v257 = aBlock[0];
        v304 = aBlock[0];
        v48 = v292;
        v50 = 0x27853F000;
      }
    }

    while (1)
    {
      v52 = v49 + 1;
      if (__OFADD__(v49, 1))
      {
        goto LABEL_165;
      }

      if (v52 >= v48)
      {
        break;
      }

      v47 = *(v44 + 8 * v52);
      ++v49;
      if (v47)
      {
        v49 = v52;
        goto LABEL_17;
      }
    }

    v292 = sub_224DA0FA4(MEMORY[0x277D84F90]);
    v303 = v292;
    v73 = (v258 + OBJC_IVAR____TtC10ChronoCore17WidgetPushManager_pushService);
    __swift_project_boxed_opaque_existential_1((v258 + OBJC_IVAR____TtC10ChronoCore17WidgetPushManager_pushService), *(v258 + OBJC_IVAR____TtC10ChronoCore17WidgetPushManager_pushService + 24));
    v6 = off_283828B60[0];
    v74 = type metadata accessor for PushService();
    v75 = (v6)(v74, &off_283828B40);
    v76 = v75;
    v50 = *(v75 + 16);
    v260 = v73;
    if (v50)
    {
      v77 = 0;
      v276 = (*(v285 + 80) + 32) & ~*(v285 + 80);
      v78 = v75 + v276;
      v296 = v285 + 16;
      v289 = (v285 + 8);
      v282 = (v280 + 32);
      v279 = (v280 + 8);
      v272 = MEMORY[0x277D84F90];
      v275 = (v285 + 32);
      v79 = v291;
      v80 = v284;
      v81 = v283;
      v280 = v75 + v276;
      v281 = v50;
      do
      {
        if (v77 >= *(v76 + 16))
        {
          goto LABEL_167;
        }

        v82 = *(v285 + 72);
        v83 = *(v285 + 16);
        v83(v81, v78 + v82 * v77, v79);
        sub_224DAC558();
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          (*v282)(v293, v80, v294);
          v84 = sub_224DAC4B8();
          v85 = *MEMORY[0x277CFA130];
          swift_beginAccess();
          v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
          if ((*(*(v86 - 8) + 48))(&v84[v85], 1, v86))
          {
            swift_endAccess();
            v87 = *MEMORY[0x277CFA138];
            swift_beginAccess();
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
          }

          v88 = sub_224DA9FE8();
          v90 = v89;
          swift_endAccess();
          v91 = v76;

          v92 = v305;
          if (*(v305 + 16) && (v93 = *(v305 + 40), sub_224DAFE68(), sub_224DAEE78(), v94 = sub_224DAFEA8(), v95 = -1 << *(v92 + 32), v96 = v94 & ~v95, ((*(v92 + 56 + ((v96 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v96) & 1) != 0))
          {
            v97 = ~v95;
            v98 = v291;
            v99 = v278;
            while (1)
            {
              v100 = (*(v92 + 48) + 16 * v96);
              if (*v100 == v88 && v100[1] == v90)
              {
                break;
              }

              v102 = sub_224DAFD88();
              v99 = v278;
              v98 = v291;
              if (v102)
              {
                break;
              }

              v96 = (v96 + 1) & v97;
              if (((*(v92 + 56 + ((v96 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v96) & 1) == 0)
              {
                goto LABEL_54;
              }
            }

            v109 = v283;
            v110 = v98;
            v111 = v99;
            (v83)(v99, v283);
            v112 = v303;
            v113 = swift_isUniquelyReferenced_nonNull_native();
            aBlock[0] = v112;
            v114 = v88;
            v81 = v109;
            sub_224B1F374(v111, v114, v90, v113);

            (*v279)(v293, v294);
            (*v289)(v109, v110);
            v292 = aBlock[0];
            v303 = aBlock[0];
            v51 = 0x27853F000;
            v80 = v284;
            v76 = v91;
            v50 = v281;
            v78 = v280;
          }

          else
          {
            v98 = v291;
LABEL_54:
            v103 = v98;

            v81 = v283;
            v83(v287, v283, v103);
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v104 = v272;
            }

            else
            {
              v104 = sub_224AD9758(0, v272[2] + 1, 1, v272);
            }

            v51 = 0x27853F000;
            v80 = v284;
            v76 = v91;
            v106 = v104[2];
            v105 = v104[3];
            v78 = v280;
            if (v106 >= v105 >> 1)
            {
              v272 = sub_224AD9758(v105 > 1, v106 + 1, 1, v104);
            }

            else
            {
              v272 = v104;
            }

            (*v279)(v293, v294);
            v107 = v291;
            (*v289)(v81, v291);
            v108 = v272;
            v272[2] = v106 + 1;
            (*v275)(&v108[v276 + v106 * v82], v287, v107);
            v50 = v281;
          }
        }

        else
        {
          (*v289)(v81, v79);
          sub_224B9D584(v80, MEMORY[0x277CF9A70]);
          v51 = 0x27853F000;
        }

        ++v77;
        v79 = v291;
        v6 = v288;
      }

      while (v77 != v50);
    }

    else
    {

      v272 = MEMORY[0x277D84F90];
      v6 = v288;
    }

    v302 = MEMORY[0x277D84FA0];
    v115 = sub_224DA1190(MEMORY[0x277D84F90]);
    v116 = 0;
    v118 = v270 + 64;
    v117 = *(v270 + 64);
    v119 = 1 << *(v270 + 32);
    v296 = v115;
    v301 = v115;
    v120 = -1;
    if (v119 < 64)
    {
      v120 = ~(-1 << v119);
    }

    v121 = v120 & v117;
    v259 = (v119 + 63) >> 6;
    v265 = v267 + 16;
    v264 = v267 + 32;
    v284 = (v285 + 16);
    v289 = (v285 + 56);
    v268 = (v267 + 8);
    v269 = v270 + 64;
    while (1)
    {
      if (v121)
      {
        v276 = v116;
        v122 = v116;
LABEL_79:
        v275 = ((v121 - 1) & v121);
        v125 = __clz(__rbit64(v121)) | (v122 << 6);
        v126 = v270;
        v127 = v267;
        v128 = v266;
        v129 = v273;
        (*(v267 + 16))(v266, *(v270 + 48) + *(v267 + 72) * v125, v273);
        v130 = *(*(v126 + 56) + 8 * v125);
        v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F38A8, &unk_224DB4650);
        v132 = *(v131 + 48);
        v133 = *(v127 + 32);
        v134 = v271;
        v133(v271, v128, v129);
        *(v134 + v132) = v130;
        (*(*(v131 - 8) + 56))(v134, 0, 1, v131);
        v135 = v130;
        v6 = v288;
      }

      else
      {
        if (v259 <= (v116 + 1))
        {
          v123 = v116 + 1;
        }

        else
        {
          v123 = v259;
        }

        v124 = v123 - 1;
        while (1)
        {
          v122 = v116 + 1;
          if (__OFADD__(v116, 1))
          {
            goto LABEL_161;
          }

          if (v122 >= v259)
          {
            break;
          }

          v121 = *(v118 + 8 * v122);
          ++v116;
          if (v121)
          {
            v276 = v122;
            goto LABEL_79;
          }
        }

        v206 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F38A8, &unk_224DB4650);
        v134 = v271;
        (*(*(v206 - 8) + 56))(v271, 1, 1, v206);
        v275 = 0;
        v276 = v124;
      }

      sub_224B9D454(v134, v6);
      v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F38A8, &unk_224DB4650);
      if ((*(*(v136 - 8) + 48))(v6, 1, v136) == 1)
      {

        v207 = v302;
        v208 = v302 + 56;
        v209 = 1 << *(v302 + 32);
        v210 = -1;
        if (v209 < 64)
        {
          v210 = ~(-1 << v209);
        }

        v6 = v210 & *(v302 + 56);
        v295 = OBJC_IVAR____TtC10ChronoCore17WidgetPushManager_logger;
        v50 = (v209 + 63) >> 6;

        v211 = 0;
        *&v212 = 136315138;
        v294 = v212;
        v282 = v207;
        while (v6)
        {
          v213 = v211;
LABEL_146:
          v214 = __clz(__rbit64(v6));
          v6 &= v6 - 1;
          v215 = (*(v207 + 48) + ((v213 << 10) | (16 * v214)));
          v216 = *v215;
          v217 = v215[1];
          v218 = v257;
          v219 = *(v257 + 16);

          if (v219 && (v220 = sub_224A3A40C(v216, v217), (v221 & 1) != 0))
          {
            v222 = v220;

            v223 = *(*(v218 + 56) + 8 * v222);
            sub_224B9BEE4(v223);
          }

          else
          {

            v223 = sub_224DAB228();
            v224 = sub_224DAF288();

            if (os_log_type_enabled(v223, v224))
            {
              v225 = swift_slowAlloc();
              v226 = swift_slowAlloc();
              aBlock[0] = v226;
              *v225 = v294;
              v227 = sub_224A33F74(v216, v217, aBlock);

              *(v225 + 4) = v227;
              _os_log_impl(&dword_224A2F000, v223, v224, "Attempted to subscribe to push: No valid push extension for %s", v225, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v226);
              MEMORY[0x22AA5EED0](v226, -1, -1);
              v228 = v225;
              v207 = v282;
              MEMORY[0x22AA5EED0](v228, -1, -1);
            }

            else
            {
            }
          }

          v211 = v213;
        }

        while (1)
        {
          v213 = v211 + 1;
          if (__OFADD__(v211, 1))
          {
            goto LABEL_166;
          }

          if (v213 >= v50)
          {

            v229 = v272[2];
            if (v229)
            {
              v230 = *(v285 + 80);
              v231 = v272 + ((v230 + 32) & ~v230);
              v293 = (v285 + 32);
              v290 = *(v285 + 72);
              v289 = *(v285 + 16);
              *&v294 = v230;
              v288 = ((v230 + 24) & ~v230);
              v287 = &v288[v254];
              v286 = v298;
              v285 = v256 + 8;
              v283 = (v255 + 8);
              v232 = v251;
              v233 = v250;
              v234 = v291;
              do
              {
                v235 = v261;
                (v289)(v261, v231, v234);
                v236 = __swift_project_boxed_opaque_existential_1(v260, v260[3]);
                v237 = *v236;
                v295 = *(*v236 + 40);
                v238 = *v293;
                v239 = v278;
                (*v293)(v278, v235, v234);
                v240 = swift_allocObject();
                *(v240 + 16) = v237;
                v238(&v288[v240], v239, v234);
                v298[2] = sub_224AC2200;
                v299 = v240;
                aBlock[0] = MEMORY[0x277D85DD0];
                aBlock[1] = 1107296256;
                v298[0] = sub_224A39F40;
                v298[1] = &block_descriptor_17;
                v241 = _Block_copy(aBlock);

                sub_224DAB7E8();
                v300 = MEMORY[0x277D84F90];
                sub_224AA6824(&qword_281350ED0, MEMORY[0x277D85198]);
                __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
                sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0);
                v242 = v263;
                sub_224DAF788();
                MEMORY[0x22AA5D760](0, v233, v232, v241);
                _Block_release(v241);
                (*v285)(v232, v242);
                (*v283)(v233, v262);

                v231 = &v290[v231];
                --v229;
              }

              while (v229);
            }

            v243 = swift_allocObject();
            *(v243 + 16) = MEMORY[0x277D84FA0];
            v244 = v258;
            v6 = *(v258 + OBJC_IVAR____TtC10ChronoCore17WidgetPushManager_lock);
            os_unfair_lock_lock(*(v6 + 16));
            v245 = v244;
            v50 = v277;
            sub_224B9C440(v245, &v301, &v304, v243 + 16, &v303, &v302);
            if (!v50)
            {

              os_unfair_lock_unlock(*(v6 + 16));

              v246 = v253;
              if (v252)
              {
              }

              else
              {
                v247 = sub_224DAF128();
                (*(*(v247 - 8) + 56))(v246, 1, 1, v247);
                v248 = swift_allocObject();
                v248[2] = 0;
                v248[3] = 0;
                v249 = v258;
                v248[4] = v243;
                v248[5] = v249;

                sub_224D00D34(0, 0, v246, &unk_224DB8D18, v248);
              }

              return;
            }

            goto LABEL_168;
          }

          v6 = *(v208 + 8 * v213);
          ++v211;
          if (v6)
          {
            goto LABEL_146;
          }
        }
      }

      v274 = *(v6 + *(v136 + 48));
      v137 = [v274 containerDescriptors];
      sub_224A3B79C(0, &unk_281350870, 0x277CFA1E0);
      v138 = sub_224DAF008();

      v50 = v277;
      v139 = sub_224A7B5CC(v138);
      v277 = v50;

      if (v139 >> 62)
      {
        break;
      }

      v140 = *((v139 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v140)
      {
        goto LABEL_83;
      }

LABEL_68:

      (*v268)(v6, v273);
      v118 = v269;
      v116 = v276;
      v121 = v275;
    }

    v140 = sub_224DAF838();
    if (!v140)
    {
      goto LABEL_68;
    }

LABEL_83:
    v141 = 0;
    v287 = (v139 & 0xC000000000000001);
    v283 = (v139 & 0xFFFFFFFFFFFFFF8);
    v282 = (v139 + 32);
    v280 = v139;
    v279 = v140;
    while (2)
    {
      if (v287)
      {
        v142 = MEMORY[0x22AA5DCC0](v141, v139);
      }

      else
      {
        if (v141 >= *(v283 + 2))
        {
          goto LABEL_160;
        }

        v142 = v282[v141];
      }

      v6 = v142;
      if (__OFADD__(v141++, 1))
      {
        __break(1u);
LABEL_160:
        __break(1u);
LABEL_161:
        __break(1u);
      }

      else
      {
        v144 = [v142 extensionIdentity];
        v145 = v144;
        v146 = v286;
        if (!v286[2] || (v50 = v286, v147 = sub_224A3E7EC(v144), (v148 & 1) == 0))
        {

          goto LABEL_85;
        }

        v149 = *(v146[7] + 8 * v147);

        if (!(v149 >> 62))
        {
          v150 = *((v149 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v150)
          {
            goto LABEL_95;
          }

LABEL_132:

LABEL_85:

          v6 = v288;
          if (v141 == v140)
          {
            goto LABEL_68;
          }

          continue;
        }

        v150 = sub_224DAF838();
        if (!v150)
        {
          goto LABEL_132;
        }

LABEL_95:
        if (v150 >= 1)
        {
          v281 = v141;
          v151 = 0;
          v50 = v149 & 0xC000000000000001;
          v295 = v149;
          *&v294 = v150;
          v293 = (v149 & 0xC000000000000001);
          while (1)
          {
            v152 = v50 ? MEMORY[0x22AA5DCC0](v151, v149) : *(v149 + 8 * v151 + 32);
            v153 = v152;
            if ([v152 *(v51 + 2768)])
            {
              break;
            }

LABEL_98:
            if (v150 == ++v151)
            {

              v139 = v280;
              v140 = v279;
              v141 = v281;
              goto LABEL_85;
            }
          }

          v154 = [v153 kind];
          v155 = sub_224DAEE18();
          v157 = v156;

          v158 = [v6 kind];
          v159 = sub_224DAEE18();
          v161 = v160;

          if (v155 == v159 && v157 == v161)
          {
          }

          else
          {
            v163 = sub_224DAFD88();

            if ((v163 & 1) == 0)
            {

LABEL_129:
              v149 = v295;
              v150 = v294;
              v50 = v293;
              goto LABEL_98;
            }
          }

          v164 = [v6 extensionIdentity];
          v165 = *MEMORY[0x277CFA130];
          swift_beginAccess();
          v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
          v167 = *(*(v166 - 8) + 48);
          if (v167(&v164[v165], 1, v166))
          {
            swift_endAccess();
            v168 = *MEMORY[0x277CFA138];
            swift_beginAccess();
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
          }

          v169 = sub_224DA9FE8();
          v171 = v170;
          swift_endAccess();

          if (*(v292 + 16))
          {
            v172 = sub_224A3A40C(v169, v171);
            v174 = v173;

            if (v174)
            {
              v175 = v285;
              v176 = *(v292 + 56) + *(v285 + 72) * v172;
              v177 = v290;
              v178 = v291;
              (*(v285 + 16))(v290, v176, v291);
              (*(v175 + 56))(v177, 0, 1, v178);
              sub_224A3311C(v177, &qword_27D6F3BB0, &unk_224DB8CF0);
LABEL_119:
              v186 = [v6 extensionIdentity];
              v187 = *MEMORY[0x277CFA130];
              swift_beginAccess();
              v188 = v167(&v186[v187], 1, v166);
              v189 = v296;
              if (v188)
              {
                swift_endAccess();
                v190 = *MEMORY[0x277CFA138];
                swift_beginAccess();
                __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
              }

              v191 = sub_224DA9FE8();
              v193 = v192;
              swift_endAccess();
              v51 = 0x27853F000;

              if (*(v189 + 16) && (v194 = sub_224A3A40C(v191, v193), (v195 & 1) != 0))
              {
                v300 = *(*(v189 + 56) + 8 * v194);
              }

              else
              {
                v300 = MEMORY[0x277D84FA0];
              }

              v196 = [v153 kind];
              v197 = sub_224DAEE18();
              v199 = v198;

              v200 = [v6 widget];
              v201 = [v200 intentReference];

              if (v201)
              {
                v202 = [v201 stableHash];
              }

              else
              {
                v202 = 0;
              }

              v306[0] = v191;
              v306[1] = v193;
              v306[2] = v197;
              v306[3] = v199;
              v306[4] = v202;
              v307 = v201 == 0;

              sub_224ADBFA4(aBlock, v306);

              v204 = v300;
              v203 = v301;
              v205 = swift_isUniquelyReferenced_nonNull_native();
              aBlock[0] = v203;
              sub_224B20F14(v204, v191, v193, v205);

              v296 = aBlock[0];
              v301 = aBlock[0];
              goto LABEL_129;
            }
          }

          else
          {
          }

          v179 = v290;
          (*v289)(v290, 1, 1, v291);
          sub_224A3311C(v179, &qword_27D6F3BB0, &unk_224DB8CF0);
          v180 = [v6 extensionIdentity];
          v181 = *MEMORY[0x277CFA130];
          swift_beginAccess();
          if (v167(&v180[v181], 1, v166))
          {
            swift_endAccess();
            v182 = *MEMORY[0x277CFA138];
            swift_beginAccess();
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
          }

          v183 = sub_224DA9FE8();
          v185 = v184;
          swift_endAccess();

          sub_224ADAF60(aBlock, v183, v185);

          goto LABEL_119;
        }
      }

      break;
    }

    __break(1u);
LABEL_163:
    __break(1u);
LABEL_164:
    __break(1u);
LABEL_165:
    __break(1u);
LABEL_166:
    __break(1u);
LABEL_167:
    __break(1u);
LABEL_168:

    os_unfair_lock_unlock(*(v6 + 16));
    __break(1u);
  }

  else
  {
  }
}

uint64_t sub_224B9B3A8()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_224B99110(0);
  }

  return result;
}

uint64_t sub_224B9B404(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_224B9B424, 0, 0);
}

uint64_t sub_224B9B424()
{
  v1 = v0[3];
  v2 = sub_224DAC4B8();
  v0[4] = v2;
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_224B9B4C8;
  v4 = v0[2];

  return sub_224B96290(v2);
}

uint64_t sub_224B9B4C8()
{
  v2 = *(*v1 + 40);
  v3 = *v1;
  *(v3 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_224B9B604, 0, 0);
  }

  else
  {

    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_224B9B604()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 48);

  return v1();
}

uint64_t sub_224B9B668(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v34 = a2;
  v36 = a1;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4280, &unk_224DB65C0);
  v13 = *(v35 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v35);
  v16 = &v33 - v15;
  v17 = swift_allocObject();
  *(v17 + 2) = a3;
  *(v17 + 3) = a4;
  *(v17 + 4) = a5;
  *(v17 + 5) = a6;
  *(v17 + 6) = a7;
  v18 = (a2 + OBJC_IVAR____TtC10ChronoCore13ExtensionTask_asyncWorkItem);
  v20 = *(a2 + OBJC_IVAR____TtC10ChronoCore13ExtensionTask_asyncWorkItem);
  v19 = *(a2 + OBJC_IVAR____TtC10ChronoCore13ExtensionTask_asyncWorkItem + 8);
  *v18 = sub_224B9D5F4;
  v18[1] = v17;

  v21 = a4;

  sub_224A77FD0(a6, a7);
  sub_224A3D418(v20);
  v22 = v35;
  (*(v13 + 16))(v16, v36, v35);
  v23 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = a3;
  *(v24 + 24) = v21;
  (*(v13 + 32))(v24 + v23, v16, v22);
  v25 = v34;
  v26 = (v34 + OBJC_IVAR____TtC10ChronoCore13ExtensionTask_completion);
  v27 = *(v34 + OBJC_IVAR____TtC10ChronoCore13ExtensionTask_completion);
  v28 = *(v34 + OBJC_IVAR____TtC10ChronoCore13ExtensionTask_completion + 8);
  *v26 = sub_224B9D604;
  v26[1] = v24;

  v29 = v21;
  sub_224A3D418(v27);
  v30 = *(a3 + OBJC_IVAR____TtC10ChronoCore17WidgetPushManager_taskService + 24);
  v31 = *(a3 + OBJC_IVAR____TtC10ChronoCore17WidgetPushManager_taskService + 32);
  __swift_project_boxed_opaque_existential_1((a3 + OBJC_IVAR____TtC10ChronoCore17WidgetPushManager_taskService), v30);
  (*(v31 + 16))(v25, v30, v31);
}

void sub_224B9B8C0(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  v30 = a2;
  v14 = sub_224DAE6E8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &aBlock[-1] - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_224A3796C(a1, aBlock, &qword_27D6F4760, &unk_224DB3680);
  if (v32)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5080, &qword_224DB3690);
    if (swift_dynamicCast())
    {
      v19 = v35;
      sub_224DAE628();
      swift_beginAccess();
      v20 = *(a6 + 16);

      sub_224A77FD0(a7, a8);
      v21 = sub_224DAE618();
      v22 = swift_allocObject();
      *(v22 + 16) = v30;
      *(v22 + 24) = a3;
      v33 = sub_224B9D69C;
      v34 = v22;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_224BC6D2C;
      v32 = &block_descriptor_28_0;
      v23 = _Block_copy(aBlock);

      [v19 widgetPushTokensDidChange:v21 completion:v23];
      _Block_release(v23);
      swift_unknownObjectRelease();
      goto LABEL_8;
    }
  }

  else
  {
    sub_224A3311C(aBlock, &qword_27D6F4760, &unk_224DB3680);
  }

  v24 = a5;
  v25 = sub_224DAB228();
  v26 = sub_224DAF288();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v27 = 138543362;
    *(v27 + 4) = v24;
    *v28 = v24;
    v29 = v24;
    _os_log_impl(&dword_224A2F000, v25, v26, "Unable to update state in extension %{public}@: No extension session", v27, 0xCu);
    sub_224A3311C(v28, &unk_27D6F69F0, &unk_224DB3900);
    MEMORY[0x22AA5EED0](v28, -1, -1);
    MEMORY[0x22AA5EED0](v27, -1, -1);
  }

  sub_224A3B79C(0, &qword_281350860, 0x277CCA9B8);
  (*(v15 + 104))(v18, *MEMORY[0x277CE3C40], v14);
  v21 = sub_224DAF638();
  v30();
LABEL_8:
}

uint64_t sub_224B9BC74(int a1, int a2, id a3, uint64_t a4, void *a5)
{
  if (a3)
  {
    v7 = a3;
    v8 = a5;
    v9 = sub_224DAB228();
    v10 = sub_224DAF288();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138543618;
      *(v11 + 4) = v8;
      *v12 = v8;
      *(v11 + 12) = 2114;
      v13 = a3;
      v14 = v8;
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 14) = v15;
      v12[1] = v15;
      _os_log_impl(&dword_224A2F000, v9, v10, "Error occurred when sending push token to extension %{public}@: %{public}@", v11, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F69F0, &unk_224DB3900);
      swift_arrayDestroy();
      MEMORY[0x22AA5EED0](v12, -1, -1);
      MEMORY[0x22AA5EED0](v11, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4280, &unk_224DB65C0);
    return sub_224DAF0D8();
  }

  else
  {
    v17 = a5;
    v18 = sub_224DAB228();
    v19 = sub_224DAF2A8();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138543362;
      *(v20 + 4) = v17;
      *v21 = v17;
      v22 = v17;
      _os_log_impl(&dword_224A2F000, v18, v19, "Push token sent to extension %{public}@ successfully.", v20, 0xCu);
      sub_224A3311C(v21, &unk_27D6F69F0, &unk_224DB3900);
      MEMORY[0x22AA5EED0](v21, -1, -1);
      MEMORY[0x22AA5EED0](v20, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4280, &unk_224DB65C0);
    return sub_224DAF0E8();
  }
}

uint64_t sub_224B9BEE4(void *a1)
{
  v2 = v1;
  v4 = sub_224DAE168();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5FF0, &unk_224DB8D30);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v47 - v8;
  v10 = sub_224DAC5E8();
  v49 = *(v10 - 8);
  v50 = v10;
  v11 = *(v49 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_224DAE138();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = *MEMORY[0x277CF9EB8];
  v21 = *(v15 + 104);
  v51 = v47 - v22;
  v21();
  v23 = *(v1 + 80);
  v24 = *(v1 + 88);
  __swift_project_boxed_opaque_existential_1((v2 + 56), v23);
  sub_224DAC6D8();
  if (v53)
  {
    v48 = v14;
    sub_224A36F98(&v52, v54);
    __swift_project_boxed_opaque_existential_1(v54, v54[3]);
    v25 = sub_224DAE288();
    if (v26)
    {
      v47[1] = v25;
      v27 = sub_224DAE0D8();
      (*(*(v27 - 8) + 56))(v9, 1, 1, v27);
      v28 = v51;
      v29 = v48;
      (*(v15 + 16))(v19, v51, v48);
      v30 = a1;
      sub_224DAE148();
      sub_224DAC568();
      v31 = *__swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC10ChronoCore17WidgetPushManager_pushService), *(v2 + OBJC_IVAR____TtC10ChronoCore17WidgetPushManager_pushService + 24));
      sub_224AB65D4(v13, 1);
      (*(v49 + 8))(v13, v50);
      (*(v15 + 8))(v28, v29);
    }

    else
    {
      v39 = a1;
      v40 = sub_224DAB228();
      v41 = sub_224DAF288();

      v42 = os_log_type_enabled(v40, v41);
      v43 = v48;
      if (v42)
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        *v44 = 138543362;
        *(v44 + 4) = v39;
        *v45 = v39;
        v46 = v39;
        _os_log_impl(&dword_224A2F000, v40, v41, "Error occured when subscribing to pushes for extension %{public}@: Could not find push environment entitlement.", v44, 0xCu);
        sub_224A3311C(v45, &unk_27D6F69F0, &unk_224DB3900);
        MEMORY[0x22AA5EED0](v45, -1, -1);
        MEMORY[0x22AA5EED0](v44, -1, -1);
      }

      (*(v15 + 8))(v51, v43);
    }

    return __swift_destroy_boxed_opaque_existential_1(v54);
  }

  else
  {
    sub_224A3311C(&v52, &unk_27D6F4700, &unk_224DB3A10);
    v32 = a1;
    v33 = sub_224DAB228();
    v34 = sub_224DAF288();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *v35 = 138543362;
      *(v35 + 4) = v32;
      *v36 = v32;
      v37 = v32;
      _os_log_impl(&dword_224A2F000, v33, v34, "Error occured when subscribing to pushes for extension %{public}@: Could not find extension in extensionManager.", v35, 0xCu);
      sub_224A3311C(v36, &unk_27D6F69F0, &unk_224DB3900);
      MEMORY[0x22AA5EED0](v36, -1, -1);
      MEMORY[0x22AA5EED0](v35, -1, -1);
    }

    return (*(v15 + 8))(v51, v14);
  }
}

void sub_224B9C440(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v7 = v6;
  v89 = a6;
  v91 = a5;
  v95 = a4;
  v104 = a3;
  v101 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3BB0, &unk_224DB8CF0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v90 = &v88 - v11;
  v99 = a1;
  v93 = OBJC_IVAR____TtC10ChronoCore17WidgetPushManager__lock_lastConfiguredPushWidgets;
  v12 = *(a1 + OBJC_IVAR____TtC10ChronoCore17WidgetPushManager__lock_lastConfiguredPushWidgets);
  v15 = *(v12 + 64);
  v14 = v12 + 64;
  v13 = v15;
  v16 = 1 << *(*(a1 + OBJC_IVAR____TtC10ChronoCore17WidgetPushManager__lock_lastConfiguredPushWidgets) + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v13;
  v19 = (v16 + 63) >> 6;
  v102 = *(a1 + OBJC_IVAR____TtC10ChronoCore17WidgetPushManager__lock_lastConfiguredPushWidgets);
  swift_bridgeObjectRetain_n();
  v20 = 0;
  while (v18)
  {
LABEL_10:
    v22 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
    v23 = (*(v102 + 48) + ((v20 << 10) | (16 * v22)));
    v25 = *v23;
    v24 = v23[1];
    v26 = *(*v101 + 16);

    if (v26 && (sub_224A3A40C(v25, v24), (v27 & 1) != 0) || (v28 = *v104, !*(*v104 + 16)))
    {
    }

    else
    {
      v29 = sub_224A3A40C(v25, v24);
      v31 = v30;

      if (v31)
      {
        sub_224A3DC84(v103, *(*(v28 + 56) + 8 * v29));
      }
    }
  }

  while (1)
  {
    v21 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      __break(1u);
      goto LABEL_54;
    }

    if (v21 >= v19)
    {
      break;
    }

    v18 = *(v14 + 8 * v21);
    ++v20;
    if (v18)
    {
      v20 = v21;
      goto LABEL_10;
    }
  }

  v92 = v7;
  v32 = v102;

  v33 = *v101;
  v34 = *v101 + 64;
  v35 = 1 << *(*v101 + 32);
  if (v35 < 64)
  {
    v36 = ~(-1 << v35);
  }

  else
  {
    v36 = -1;
  }

  v37 = v36 & *(*v101 + 64);
  v98 = OBJC_IVAR____TtC10ChronoCore17WidgetPushManager_logger;
  v38 = (v35 + 63) >> 6;

  v39 = 0;
  *&v40 = 136315138;
  v94 = v40;
  v97 = v33;
  v100 = v38;
  while (v37)
  {
LABEL_26:
    v42 = __clz(__rbit64(v37));
    v37 &= v37 - 1;
    v43 = v42 | (v39 << 6);
    v44 = (*(v33 + 48) + 16 * v43);
    v46 = *v44;
    v45 = v44[1];
    v47 = *(*(v33 + 56) + 8 * v43);
    v48 = *v104;
    v49 = *(*v104 + 16);

    if (!v49)
    {
      goto LABEL_33;
    }

    v50 = sub_224A3A40C(v46, v45);
    if (v51)
    {
      v52 = *(*(v48 + 56) + 8 * v50);
      v53 = *(v32 + 16);
      v96 = v52;
      if (v53 && (v54 = sub_224A3A40C(v46, v45), (v55 & 1) != 0))
      {
        v56 = v54;

        v57 = *(*(v32 + 56) + 8 * v56);

        LOBYTE(v56) = sub_224CBDAF8(v58, v47);

        if (v56)
        {
          v59 = v96;
          goto LABEL_50;
        }

LABEL_49:
        sub_224A3DC84(v103, v96);
        v59 = v103[0];
LABEL_50:

        v38 = v100;
      }

      else
      {

        v67 = *v91;
        if (*(*v91 + 16) && (v68 = sub_224A3A40C(v46, v45), (v69 & 1) != 0))
        {
          v70 = v68;
          v71 = *(v67 + 56);
          v72 = sub_224DAC5E8();
          v73 = *(v72 - 8);
          v74 = v73;
          v75 = v71 + *(v73 + 72) * v70;
          v33 = v97;
          v76 = v90;
          (*(v73 + 16))(v90, v75, v72);
          (*(v74 + 56))(v76, 0, 1, v72);

          sub_224A3311C(v76, &qword_27D6F3BB0, &unk_224DB8CF0);
          v38 = v100;
        }

        else
        {
          v77 = sub_224DAC5E8();
          v78 = v90;
          (*(*(v77 - 8) + 56))(v90, 1, 1, v77);
          sub_224A3311C(v78, &qword_27D6F3BB0, &unk_224DB8CF0);
          v79 = *v89;
          if (!*(*v89 + 16))
          {

            goto LABEL_49;
          }

          v80 = *(v79 + 40);
          sub_224DAFE68();

          sub_224DAEE78();
          v81 = sub_224DAFEA8();
          v82 = -1 << *(v79 + 32);
          v83 = v81 & ~v82;
          if (((*(v79 + 56 + ((v83 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v83) & 1) == 0)
          {
LABEL_47:

            v32 = v102;
            v33 = v97;
            goto LABEL_49;
          }

          v84 = ~v82;
          while (1)
          {
            v85 = (*(v79 + 48) + 16 * v83);
            v86 = *v85 == v46 && v85[1] == v45;
            if (v86 || (sub_224DAFD88() & 1) != 0)
            {
              break;
            }

            v83 = (v83 + 1) & v84;
            if (((*(v79 + 56 + ((v83 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v83) & 1) == 0)
            {
              goto LABEL_47;
            }
          }

          v32 = v102;
          v33 = v97;
          v38 = v100;
        }
      }
    }

    else
    {

LABEL_33:

      v60 = sub_224DAB228();
      v61 = sub_224DAF288();

      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        v103[0] = v63;
        *v62 = v94;
        v64 = sub_224A33F74(v46, v45, v103);

        *(v62 + 4) = v64;
        _os_log_impl(&dword_224A2F000, v60, v61, "Checking for added / changed entries: No valid push extension for %s", v62, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v63);
        v65 = v63;
        v33 = v97;
        MEMORY[0x22AA5EED0](v65, -1, -1);
        v66 = v62;
        v32 = v102;
        MEMORY[0x22AA5EED0](v66, -1, -1);
      }

      else
      {
      }

      v38 = v100;
    }
  }

  while (1)
  {
    v41 = v39 + 1;
    if (__OFADD__(v39, 1))
    {
      break;
    }

    if (v41 >= v38)
    {

      v87 = *(v99 + v93);
      *(v99 + v93) = *v101;

      return;
    }

    v37 = *(v34 + 8 * v41);
    ++v39;
    if (v37)
    {
      v39 = v41;
      goto LABEL_26;
    }
  }

LABEL_54:
  __break(1u);
}

uint64_t sub_224B9CB48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 96) = a4;
  *(v5 + 104) = a5;
  return MEMORY[0x2822009F8](sub_224B9CB68, 0, 0);
}

uint64_t sub_224B9CB68()
{
  v1 = v0[12];
  swift_beginAccess();
  v2 = *(v1 + 16);
  if ((v2 & 0xC000000000000001) != 0)
  {
    if (v2 < 0)
    {
      v3 = *(v1 + 16);
    }

    sub_224DAF7E8();
    sub_224DAF538();
    sub_224AA6824(&unk_2813509A0, MEMORY[0x277CFA140]);
    sub_224DAF1F8();
    result = v0[2];
    v5 = v0[3];
    v7 = v0[4];
    v6 = v0[5];
    v8 = v0[6];
  }

  else
  {
    v9 = -1 << *(v2 + 32);
    v5 = v2 + 56;
    v7 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(v2 + 56);

    v6 = 0;
  }

  v0[14] = result;
  v0[15] = v5;
  v0[17] = v6;
  v0[18] = v8;
  v0[16] = v7;
  if (result < 0)
  {
    v17 = sub_224DAF878();
    if (!v17)
    {
LABEL_22:
      v20 = v0[15];
      v21 = v0[16];
      v22 = v0[14];
      sub_224A3B7E4();
      v23 = v0[1];

      return v23();
    }

    v0[11] = v17;
    sub_224DAF538();
    swift_dynamicCast();
    v16 = v0[10];
    v13 = v6;
    v15 = v8;
LABEL_18:
    v0[20] = v13;
    v0[21] = v15;
    v0[19] = v16;
    if (v16)
    {
      v18 = swift_task_alloc();
      v0[22] = v18;
      *v18 = v0;
      v18[1] = sub_224B9CDFC;
      v19 = v0[13];

      return sub_224B96290(v16);
    }

    goto LABEL_22;
  }

  v12 = v8;
  v13 = v6;
  if (v8)
  {
LABEL_15:
    v15 = (v12 - 1) & v12;
    v16 = *(*(result + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));
    goto LABEL_18;
  }

  v14 = v6;
  while (1)
  {
    v13 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v13 >= ((v7 + 64) >> 6))
    {
      goto LABEL_22;
    }

    v12 = *(v5 + 8 * v13);
    ++v14;
    if (v12)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_224B9CDFC()
{
  v2 = *(*v1 + 176);
  v5 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v3 = sub_224B9D0D8;
  }

  else
  {
    v3 = sub_224B9CF10;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

void sub_224B9CF10()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 168);
  *(v0 + 136) = v1;
  *(v0 + 144) = v2;
  v3 = *(v0 + 112);
  if (v3 < 0)
  {
    v9 = sub_224DAF878();
    if (!v9)
    {
LABEL_14:
      v12 = *(v0 + 120);
      v13 = *(v0 + 128);
      v14 = *(v0 + 112);
      sub_224A3B7E4();
      v15 = *(v0 + 8);

      v15();
      return;
    }

    *(v0 + 88) = v9;
    sub_224DAF538();
    swift_dynamicCast();
    v8 = *(v0 + 80);
    v5 = v1;
    v7 = v2;
LABEL_10:
    *(v0 + 160) = v5;
    *(v0 + 168) = v7;
    *(v0 + 152) = v8;
    if (v8)
    {
      v10 = swift_task_alloc();
      *(v0 + 176) = v10;
      *v10 = v0;
      v10[1] = sub_224B9CDFC;
      v11 = *(v0 + 104);

      sub_224B96290(v8);
      return;
    }

    goto LABEL_14;
  }

  v4 = v2;
  v5 = v1;
  if (v2)
  {
LABEL_7:
    v7 = (v4 - 1) & v4;
    v8 = *(*(v3 + 48) + ((v5 << 9) | (8 * __clz(__rbit64(v4)))));
    goto LABEL_10;
  }

  v6 = v1;
  while (1)
  {
    v5 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v5 >= ((*(v0 + 128) + 64) >> 6))
    {
      goto LABEL_14;
    }

    v4 = *(*(v0 + 120) + 8 * v5);
    ++v6;
    if (v4)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
}

uint64_t sub_224B9D0D8()
{
  v1 = *(v0 + 144);
  v3 = *(v0 + 128);
  v2 = *(v0 + 136);
  v5 = *(v0 + 112);
  v4 = *(v0 + 120);

  sub_224A3B7E4();
  v6 = *(v0 + 8);
  v7 = *(v0 + 184);

  return v6();
}

uint64_t sub_224B9D16C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = *(v0 + 40);
  sub_224DAFE68();
  sub_224DAEE78();
  sub_224DAEE78();
  sub_224DAFE88();
  if (v6 != 1)
  {
    MEMORY[0x22AA5E200](v5);
  }

  return sub_224DAFEA8();
}

uint64_t sub_224B9D214()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = *(v0 + 40);
  sub_224DAEE78();
  sub_224DAEE78();
  if (v6 == 1)
  {
    return sub_224DAFE88();
  }

  sub_224DAFE88();
  return MEMORY[0x22AA5E200](v5);
}

uint64_t sub_224B9D294()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = *(v0 + 40);
  sub_224DAFE68();
  sub_224DAEE78();
  sub_224DAEE78();
  sub_224DAFE88();
  if (v6 != 1)
  {
    MEMORY[0x22AA5E200](v5);
  }

  return sub_224DAFEA8();
}

uint64_t sub_224B9D338(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8) || (sub_224DAFD88()) && (v2 == v6 && v3 == v7 || (sub_224DAFD88()))
  {
    if (v5)
    {
      if (v9)
      {
        return 1;
      }
    }

    else
    {
      if (v4 == v8)
      {
        v11 = v9;
      }

      else
      {
        v11 = 1;
      }

      if ((v11 & 1) == 0)
      {
        return 1;
      }
    }
  }

  return 0;
}

unint64_t sub_224B9D400()
{
  result = qword_27D6F4928;
  if (!qword_27D6F4928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F4928);
  }

  return result;
}

uint64_t sub_224B9D454(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4930, &unk_224DB8D00);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_224B9D4C4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_224ACED1C;

  return sub_224B9CB48(a1, v4, v5, v7, v6);
}

uint64_t sub_224B9D584(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_224B9D604(int a1, char a2, void *a3)
{
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4280, &unk_224DB65C0) - 8) + 80);
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);

  return sub_224B9BC74(a1, a2 & 1, a3, v8, v9);
}

uint64_t sub_224B9D69C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_224B9D748(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_224ACFF60;

  return sub_224B961F4(a1, v4, v5, v7, v6);
}

uint64_t sub_224B9D808(uint64_t a1)
{
  v4 = *(sub_224DAC4D8() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_224ACFF60;

  return sub_224B9B404(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_224B9D90C()
{
  v1 = v0;
  v2 = sub_224DAC4A8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_224DAC4D8();
  v77 = *(v7 - 8);
  v8 = *(v77 + 64);
  MEMORY[0x28223BE20](v7);
  v65 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_224DAC4F8();
  v10 = *(v64 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v64);
  v63 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_224DAC528();
  v13 = *(v62 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v62);
  v61 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_224DAC538();
  v16 = *(*(v69 - 8) + 64);
  MEMORY[0x28223BE20](v69);
  v68 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_224DAC5E8();
  v18 = *(v78 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v78);
  v76 = &v50 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v75 = &v50 - v22;
  swift_beginAccess();
  v23 = *(v1 + 16);
  v24 = v23 + 64;
  v25 = 1 << *(v23 + 32);
  v26 = -1;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  v27 = v26 & *(v23 + 64);
  v28 = (v25 + 63) >> 6;
  v67 = v18 + 16;
  v60 = (v13 + 32);
  v59 = (v10 + 88);
  v58 = *MEMORY[0x277CF9A60];
  v57 = (v13 + 8);
  v56 = (v10 + 8);
  v55 = (v77 + 32);
  v54 = (v3 + 88);
  v53 = *MEMORY[0x277CF9A50];
  v52 = (v77 + 8);
  v51 = (v3 + 8);
  v77 = v18;
  v29 = (v18 + 32);
  v73 = v23;

  v30 = 0;
  v31 = MEMORY[0x277D84F90];
  v71 = v6;
  v72 = v2;
  v70 = v7;
  for (i = v29; v27; v7 = v70)
  {
    v32 = v6;
    v33 = v7;
    v34 = v2;
LABEL_9:
    v36 = *(v73 + 56);
    v74 = *(v77 + 72);
    (*(v77 + 16))(v75, v36 + v74 * (__clz(__rbit64(v27)) | (v30 << 6)), v78);
    v37 = v68;
    sub_224DAC558();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v38 = v65;
      (*v55)(v65, v37, v33);
      sub_224DAC498();
      v39 = (*v54)(v32, v34);
      if (v39 != v53)
      {
        goto LABEL_22;
      }

      (*v52)(v38, v33);
      (*v51)(v32, v34);
    }

    else
    {
      v40 = v61;
      v41 = v62;
      (*v60)(v61, v37, v62);
      v42 = v63;
      sub_224DAC4E8();
      v43 = v64;
      v44 = (*v59)(v42, v64);
      if (v44 != v58)
      {
        goto LABEL_23;
      }

      (*v57)(v40, v41);
      (*v56)(v42, v43);
    }

    v45 = *i;
    (*i)(v76, v75, v78);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v79 = v31;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_224ADA0B0(0, *(v31 + 16) + 1, 1);
      v31 = v79;
    }

    v48 = *(v31 + 16);
    v47 = *(v31 + 24);
    if (v48 >= v47 >> 1)
    {
      sub_224ADA0B0(v47 > 1, v48 + 1, 1);
      v31 = v79;
    }

    v27 &= v27 - 1;
    *(v31 + 16) = v48 + 1;
    v45((v31 + ((*(v77 + 80) + 32) & ~*(v77 + 80)) + v48 * v74), v76, v78);
    v6 = v71;
    v2 = v72;
  }

  while (1)
  {
    v35 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      break;
    }

    if (v35 >= v28)
    {

      return v31;
    }

    v27 = *(v24 + 8 * v35);
    ++v30;
    if (v27)
    {
      v32 = v6;
      v33 = v7;
      v34 = v2;
      v30 = v35;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_22:
  sub_224DAFD78();
  __break(1u);
LABEL_23:
  result = sub_224DAFD78();
  __break(1u);
  return result;
}

uint64_t sub_224B9E010()
{
  v1 = v0;
  v2 = sub_224DAC4A8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_224DAC4D8();
  v7 = *(v80 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v80);
  v79 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_224DAC4F8();
  v10 = *(v78 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v78);
  v77 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_224DAC528();
  v13 = *(v76 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v76 - 8);
  v75 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_224DAC538();
  v16 = *(*(v86 - 8) + 64);
  MEMORY[0x28223BE20](v86);
  v85 = &v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F38A0, &unk_224DB4630);
  v18 = *(*(v84 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v84);
  v83 = &v64 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v88 = (&v64 - v21);
  swift_beginAccess();
  v22 = *(v1 + 16);
  v23 = v22 + 64;
  v24 = 1 << *(v22 + 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & *(v22 + 64);
  v27 = (v24 + 63) >> 6;
  v73 = (v10 + 88);
  v74 = (v13 + 32);
  v72 = *MEMORY[0x277CF9A60];
  v71 = (v13 + 8);
  v70 = (v10 + 96);
  v69 = (v7 + 32);
  v68 = (v3 + 88);
  v67 = *MEMORY[0x277CF9A50];
  v66 = (v7 + 8);
  v65 = (v3 + 96);
  v87 = v22;
  swift_bridgeObjectRetain_n();
  v28 = 0;
  v89 = MEMORY[0x277D84F90];
  v81 = v6;
  for (i = v2; v26; *(v61 + 5) = v56)
  {
LABEL_8:
    v30 = __clz(__rbit64(v26)) | (v28 << 6);
    v31 = *(v87 + 56);
    v32 = (*(v87 + 48) + 16 * v30);
    v34 = *v32;
    v33 = v32[1];
    v35 = sub_224DAC5E8();
    v36 = *(v35 - 8);
    v37 = v31 + *(v36 + 72) * v30;
    v38 = v84;
    v39 = v88;
    (*(v36 + 16))(v88 + *(v84 + 48), v37, v35);
    *v39 = v34;
    v39[1] = v33;
    v40 = v83;
    sub_224BA21A0(v39, v83);
    v41 = *(v40 + 8);

    v42 = *(v38 + 48);
    v43 = v85;
    sub_224DAC558();
    (*(v36 + 8))(v40 + v42, v35);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v44 = v79;
      v45 = v80;
      (*v69)(v79, v43, v80);
      v46 = v81;
      sub_224DAC498();
      v47 = i;
      v48 = (*v68)(v46, i);
      if (v48 != v67)
      {
        goto LABEL_21;
      }

      (*v66)(v44, v45);
      sub_224A3311C(v88, &qword_27D6F38A0, &unk_224DB4630);
      (*v65)(v46, v47);
      v49 = v46;
    }

    else
    {
      v50 = v75;
      v51 = v43;
      v52 = v76;
      (*v74)(v75, v51, v76);
      v53 = v77;
      sub_224DAC4E8();
      v54 = v78;
      v55 = (*v73)(v53, v78);
      if (v55 != v72)
      {
        goto LABEL_22;
      }

      (*v71)(v50, v52);
      sub_224A3311C(v88, &qword_27D6F38A0, &unk_224DB4630);
      (*v70)(v53, v54);
      v49 = v53;
    }

    v57 = *v49;
    v56 = v49[1];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v89 = sub_224A865C4(0, *(v89 + 2) + 1, 1, v89);
    }

    v59 = *(v89 + 2);
    v58 = *(v89 + 3);
    if (v59 >= v58 >> 1)
    {
      v89 = sub_224A865C4((v58 > 1), v59 + 1, 1, v89);
    }

    v26 &= v26 - 1;
    v60 = v89;
    *(v89 + 2) = v59 + 1;
    v61 = &v60[16 * v59];
    *(v61 + 4) = v57;
  }

  while (1)
  {
    v29 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v29 >= v27)
    {

      v62 = sub_224AE8AF4(v89);

      return v62;
    }

    v26 = *(v23 + 8 * v29);
    ++v28;
    if (v26)
    {
      v28 = v29;
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_21:
  sub_224DAFD78();
  __break(1u);
LABEL_22:
  result = sub_224DAFD78();
  __break(1u);
  return result;
}

uint64_t sub_224B9E770(uint64_t a1)
{
  v2 = sub_224DAC4D8();
  v58 = *(v2 - 8);
  v59 = v2;
  v3 = *(v58 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3BB0, &unk_224DB8CF0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v57 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4940, &qword_224DB8DE0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = (&v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v16 = (&v57 - v15);
  v17 = sub_224DAC528();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_224DAC538();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v57 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = a1;
  sub_224DAC558();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v26 = v58;
    v27 = v59;
    (*(v58 + 32))(v5, v25, v59);
    v28 = v60;
    v29 = swift_beginAccess();
    v30 = *(v28 + 16);
    MEMORY[0x28223BE20](v29);
    *(&v57 - 2) = v5;

    sub_224AFD4D8(sub_224BA2364, (&v57 - 4), v30, v14);

    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F38A0, &unk_224DB4630);
    if ((*(*(v31 - 8) + 48))(v14, 1, v31) == 1)
    {
      v32 = &qword_27D6F4940;
      v33 = &qword_224DB8DE0;
      v34 = v14;
    }

    else
    {
      v42 = *v14;
      v43 = v14[1];
      v44 = *(v31 + 48);
      v45 = sub_224DAC5E8();
      (*(*(v45 - 8) + 8))(v14 + v44, v45);
      sub_224B9EF28(v42, v43, v9);

      v32 = &qword_27D6F3BB0;
      v33 = &unk_224DB8CF0;
      v34 = v9;
    }

    sub_224A3311C(v34, v32, v33);
    (*(v26 + 8))(v5, v27);
  }

  else
  {
    (*(v18 + 32))(v21, v25, v17);
    v35 = v60;
    v36 = swift_beginAccess();
    v37 = *(v35 + 16);
    MEMORY[0x28223BE20](v36);
    *(&v57 - 2) = v21;

    sub_224AFD4D8(sub_224BA2398, (&v57 - 4), v37, v16);

    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F38A0, &unk_224DB4630);
    if ((*(*(v38 - 8) + 48))(v16, 1, v38) == 1)
    {
      v39 = &qword_27D6F4940;
      v40 = &qword_224DB8DE0;
      v41 = v16;
    }

    else
    {
      v46 = *v16;
      v47 = v16[1];
      v48 = *(v38 + 48);
      v49 = sub_224DAC5E8();
      (*(*(v49 - 8) + 8))(v16 + v48, v49);
      sub_224B9EF28(v46, v47, v9);

      v39 = &qword_27D6F3BB0;
      v40 = &unk_224DB8CF0;
      v41 = v9;
    }

    sub_224A3311C(v41, v39, v40);
    (*(v18 + 8))(v21, v17);
  }

  v50 = v61;
  v51 = sub_224DAC588();
  v53 = v52;
  v54 = sub_224DAC5E8();
  v55 = *(v54 - 8);
  (*(v55 + 16))(v9, v50, v54);
  (*(v55 + 56))(v9, 0, 1, v54);
  swift_beginAccess();
  sub_224B07474(v9, v51, v53);
  return swift_endAccess();
}

uint64_t sub_224B9EDD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F38A0, &unk_224DB4630);
  v6 = v5 - 8;
  v7 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v21 - v8;
  sub_224BA21A0(a1, &v21 - v8);
  v10 = *(v9 + 1);

  v11 = *(v6 + 56);
  v12 = sub_224DAC588();
  v14 = v13;
  v15 = sub_224DAC5E8();
  v16 = (*(*(v15 - 8) + 8))(&v9[v11], v15);
  if (v12 == a3(v16) && v14 == v17)
  {
    v19 = 1;
  }

  else
  {
    v19 = sub_224DAFD88();
  }

  return v19 & 1;
}

uint64_t sub_224B9EF28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3BB0, &unk_224DB8CF0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v21[-v9];
  v11 = sub_224DAC5E8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v21[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  v16 = *(v3 + 16);
  if (*(v16 + 16))
  {

    v17 = sub_224A3A40C(a1, a2);
    if (v18)
    {
      (*(v12 + 16))(v15, *(v16 + 56) + *(v12 + 72) * v17, v11);

      (*(v12 + 32))(a3, v15, v11);
      v19 = *(v12 + 56);
      v19(v10, 1, 1, v11);
      swift_beginAccess();

      sub_224B07474(v10, a1, a2);
      swift_endAccess();
      return (v19)(a3, 0, 1, v11);
    }
  }

  return (*(v12 + 56))(a3, 1, 1, v11);
}

uint64_t sub_224B9F168@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  swift_beginAccess();
  v7 = *(v3 + 16);
  if (*(v7 + 16))
  {

    v8 = sub_224A3A40C(a1, a2);
    if (v9)
    {
      v10 = v8;
      v11 = *(v7 + 56);
      v12 = sub_224DAC5E8();
      v13 = *(v12 - 8);
      (*(v13 + 16))(a3, v11 + *(v13 + 72) * v10, v12);

      return (*(v13 + 56))(a3, 0, 1, v12);
    }
  }

  v15 = sub_224DAC5E8();
  return (*(*(v15 - 8) + 56))(a3, 1, 1, v15);
}

uint64_t sub_224B9F2DC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v79 = a2;
  v69 = sub_224DAC4A8();
  v5 = *(v69 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v69);
  v8 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_224DAC4D8();
  v9 = *(v77 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v77);
  v75 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_224DAC4F8();
  v12 = *(v68 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v68);
  v67 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_224DAC528();
  v15 = *(v74 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v74);
  v73 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_224DAC538();
  v18 = *(*(v72 - 8) + 64);
  MEMORY[0x28223BE20](v72);
  v71 = &v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F38A0, &unk_224DB4630);
  v20 = *(*(v70 - 8) + 64);
  MEMORY[0x28223BE20](v70);
  v22 = &v56 - v21;
  swift_beginAccess();
  v23 = *(v3 + 16);
  v24 = v23 + 64;
  v25 = 1 << *(v23 + 32);
  v26 = -1;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  v27 = v26 & *(v23 + 64);
  v28 = (v25 + 63) >> 6;
  v64 = (v12 + 88);
  v65 = (v15 + 32);
  v63 = *MEMORY[0x277CF9A60];
  v62 = (v12 + 96);
  v66 = (v15 + 8);
  v60 = (v9 + 32);
  v59 = (v5 + 88);
  v58 = *MEMORY[0x277CF9A50];
  v57 = (v5 + 96);
  v61 = (v9 + 8);
  v78 = v23;
  swift_bridgeObjectRetain_n();
  v29 = 0;
  v76 = a1;
  while (1)
  {
    if (!v27)
    {
      while (1)
      {
        v33 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          break;
        }

        if (v33 >= v28)
        {
          v53 = 0;
          goto LABEL_25;
        }

        v27 = *(v24 + 8 * v33);
        ++v29;
        if (v27)
        {
          v32 = v8;
          v29 = v33;
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_27:
      result = sub_224DAFD78();
      __break(1u);
      return result;
    }

    v32 = v8;
LABEL_12:
    v34 = __clz(__rbit64(v27));
    v27 &= v27 - 1;
    v35 = v34 | (v29 << 6);
    v36 = *(v78 + 56);
    v37 = (*(v78 + 48) + 16 * v35);
    v39 = *v37;
    v38 = v37[1];
    v40 = sub_224DAC5E8();
    (*(*(v40 - 8) + 16))(&v22[*(v70 + 48)], v36 + *(*(v40 - 8) + 72) * v35, v40);
    *v22 = v39;
    *(v22 + 1) = v38;

    v41 = v71;
    sub_224DAC558();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      break;
    }

    (*v65)(v73, v41, v74);
    v46 = v67;
    sub_224DAC4E8();
    v47 = v46;
    v48 = v46;
    v49 = v68;
    v50 = (*v64)(v48, v68);
    v51 = v76;
    if (v50 != v63)
    {
      goto LABEL_27;
    }

    v8 = v32;
    (*v62)(v47, v49);
    if (*v47 == v51 && v47[1] == v79)
    {
      v52 = v47[1];

      (*v66)(v73, v74);
      goto LABEL_23;
    }

    v30 = v47[1];
    v31 = sub_224DAFD88();

    (*v66)(v73, v74);
LABEL_5:
    sub_224A3311C(v22, &qword_27D6F38A0, &unk_224DB4630);
    if (v31)
    {
      goto LABEL_24;
    }
  }

  (*v60)(v75, v41, v77);
  v8 = v32;
  sub_224DAC498();
  v42 = v69;
  v43 = (*v59)(v32, v69);
  v44 = v76;
  if (v43 != v58)
  {
    goto LABEL_27;
  }

  (*v57)(v32, v42);
  if (*v32 != v44 || *(v32 + 1) != v79)
  {
    v45 = *(v32 + 1);
    v31 = sub_224DAFD88();

    (*v61)(v75, v77);
    goto LABEL_5;
  }

  v54 = *(v32 + 1);

  (*v61)(v75, v77);
LABEL_23:
  sub_224A3311C(v22, &qword_27D6F38A0, &unk_224DB4630);
LABEL_24:
  v53 = 1;
LABEL_25:

  return v53;
}

uint64_t sub_224B9F9B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v82 = a2;
  v95 = sub_224DAE168();
  v81 = *(v95 - 8);
  v5 = *(v81 + 64);
  MEMORY[0x28223BE20](v95);
  v94 = &v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F38A0, &unk_224DB4630);
  v7 = *(*(v92 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v92);
  v91 = &v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v90 = (&v81 - v11);
  MEMORY[0x28223BE20](v10);
  v89 = &v81 - v12;
  v13 = sub_224DAC5E8();
  v96 = *(v13 - 8);
  v14 = *(v96 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v81 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v93 = &v81 - v18;
  v19 = sub_224DAE098();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v81 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = &v81 - v25;
  sub_224DAE0A8();
  (*(v20 + 104))(v24, *MEMORY[0x277CF9E90], v19);
  v27 = sub_224DAE088();
  v28 = *(v20 + 8);
  v28(v24, v19);
  v28(v26, v19);
  if ((v27 & 1) == 0)
  {
    v29 = swift_beginAccess();
    v30 = *(v3 + 16);
    MEMORY[0x28223BE20](v29);
    *(&v81 - 2) = a1;

    v31 = sub_224BA06E0(sub_224BA2210, (&v81 - 4), v30, sub_224BA09CC, sub_224BA09CC);

    v32 = *(v31 + 16);
    if (v32)
    {
      v103 = MEMORY[0x277D84F90];
      sub_224ADA0B0(0, v32, 0);
      v33 = v103;
      v34 = v31 + 64;
      v35 = -1 << *(v31 + 32);
      result = sub_224DAF798();
      v37 = result;
      v38 = 0;
      v39 = v96;
      v88 = v96 + 16;
      v83 = v31 + 72;
      v84 = v32;
      v85 = v31 + 64;
      v87 = v96 + 32;
      v86 = v31;
      do
      {
        if (v37 < 0 || v37 >= 1 << *(v31 + 32))
        {
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
          return result;
        }

        if ((*(v34 + 8 * (v37 >> 6)) & (1 << v37)) == 0)
        {
          goto LABEL_32;
        }

        v99 = 1 << v37;
        v100 = v37 >> 6;
        v41 = *(v31 + 36);
        v97 = v38;
        v98 = v41;
        v102 = v33;
        v42 = v92;
        v43 = *(v92 + 48);
        v44 = *(v31 + 56);
        v45 = (*(v31 + 48) + 16 * v37);
        v47 = *v45;
        v46 = v45[1];
        v101 = *(v39 + 72);
        v48 = v17;
        v49 = v89;
        (*(v39 + 16))(&v89[v43], v44 + v101 * v37, v13);
        v50 = v13;
        v51 = v90;
        *v90 = v47;
        *(v51 + 8) = v46;
        v52 = *(v39 + 32);
        v53 = &v49[v43];
        v17 = v48;
        v52(v51 + *(v42 + 48), v53, v50);
        v54 = v91;
        sub_224BA2230(v51, v91);
        v55 = *(v54 + 8);

        v56 = *(v42 + 48);
        v33 = v102;
        v52(v48, (v54 + v56), v50);
        v103 = v33;
        v58 = *(v33 + 16);
        v57 = *(v33 + 24);
        if (v58 >= v57 >> 1)
        {
          sub_224ADA0B0(v57 > 1, v58 + 1, 1);
          v33 = v103;
        }

        *(v33 + 16) = v58 + 1;
        result = (v52)(v33 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + v58 * v101, v48, v50);
        v40 = 1 << *(v86 + 32);
        if (v37 >= v40)
        {
          goto LABEL_33;
        }

        v13 = v50;
        v31 = v86;
        v34 = v85;
        v59 = *(v85 + 8 * v100);
        if ((v59 & v99) == 0)
        {
          goto LABEL_34;
        }

        if (v98 != *(v86 + 36))
        {
          goto LABEL_35;
        }

        v60 = v59 & (-2 << (v37 & 0x3F));
        if (v60)
        {
          v40 = __clz(__rbit64(v60)) | v37 & 0x7FFFFFFFFFFFFFC0;
          v39 = v96;
        }

        else
        {
          v61 = v100 << 6;
          v62 = v100 + 1;
          v63 = (v83 + 8 * v100);
          v39 = v96;
          while (v62 < (v40 + 63) >> 6)
          {
            v65 = *v63++;
            v64 = v65;
            v61 += 64;
            ++v62;
            if (v65)
            {
              result = sub_224A3E204(v37, v98, 0);
              v40 = __clz(__rbit64(v64)) + v61;
              goto LABEL_5;
            }
          }

          result = sub_224A3E204(v37, v98, 0);
        }

LABEL_5:
        v38 = v97 + 1;
        v37 = v40;
      }

      while (v97 + 1 != v84);

      v66 = v39;
      v67 = *(v33 + 16);
      if (!v67)
      {
        goto LABEL_27;
      }

      goto LABEL_21;
    }

    v33 = MEMORY[0x277D84F90];
    v66 = v96;
    v67 = *(MEMORY[0x277D84F90] + 16);
    if (v67)
    {
LABEL_21:
      v68 = 0;
      v70 = *(v66 + 16);
      v69 = v66 + 16;
      v101 = v70;
      v102 = v33;
      v71 = v33 + ((*(v69 + 64) + 32) & ~*(v69 + 64));
      v100 = *(v69 + 56);
      v72 = (v81 + 8);
      v73 = (v69 - 8);
      do
      {
        v74 = v93;
        v101(v93, v71, v13);
        v75 = v94;
        sub_224DAC5B8();
        sub_224DAE128();
        v76 = sub_224DAE108();
        (*v72)(v75, v95);
        result = (*v73)(v74, v13);
        v77 = __OFADD__(v68, v76);
        v68 += v76;
        if (v77)
        {
          __break(1u);
          goto LABEL_31;
        }

        v71 += v100;
        --v67;
      }

      while (v67);

      if (v68 <= 0)
      {
        goto LABEL_28;
      }

      v78 = MEMORY[0x277CF9EC8];
      goto LABEL_29;
    }

LABEL_27:
  }

LABEL_28:
  v78 = MEMORY[0x277CF9ED0];
LABEL_29:
  v79 = *v78;
  v80 = sub_224DAE178();
  return (*(*(v80 - 8) + 104))(v82, v79, v80);
}

size_t sub_224BA0234()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 16);

  return sub_224B07178(v3);
}

BOOL sub_224BA0334(void *a1, uint64_t a2, uint64_t a3)
{
  v39 = a3;
  v36 = sub_224DAC538();
  v5 = *(*(v36 - 8) + 64);
  MEMORY[0x28223BE20](v36);
  v35 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_224DAE0D8();
  v37 = *(v7 - 8);
  v38 = v7;
  v8 = *(v37 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F38A0, &unk_224DB4630);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v34 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v34 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v34 - v19;
  v21 = a1[1];
  *v20 = *a1;
  *(v20 + 1) = v21;
  v22 = *(v18 + 48);
  v23 = sub_224DAC5E8();
  v24 = *(v23 - 8);
  (*(v24 + 16))(&v20[v22], a2, v23);
  sub_224BA21A0(v20, v17);
  v25 = *(v17 + 1);

  v26 = *(v11 + 48);
  sub_224DAC598();
  v27 = *(v24 + 8);
  v27(&v17[v26], v23);
  LOBYTE(v21) = sub_224DAE078();
  (*(v37 + 8))(v10, v38);
  if (v21)
  {
    v28 = v34;
    sub_224BA21A0(v20, v34);
    v29 = *(v28 + 8);

    v30 = *(v11 + 48);
    v31 = v35;
    sub_224DAC558();
    sub_224A3311C(v20, &qword_27D6F38A0, &unk_224DB4630);
    v27((v28 + v30), v23);
    v32 = swift_getEnumCaseMultiPayload() != 1;
    sub_224BA2304(v31, MEMORY[0x277CF9A70]);
  }

  else
  {
    sub_224A3311C(v20, &qword_27D6F38A0, &unk_224DB4630);
    return 0;
  }

  return v32;
}

uint64_t sub_224BA066C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *MEMORY[0x277D85DE8];
  result = sub_224BA06E0(a1, a2, a3, sub_224BA0C40, sub_224BA0C40);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_224BA06E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, unint64_t, uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void *, uint64_t, uint64_t))
{
  v9 = a1;
  v19[1] = *MEMORY[0x277D85DE8];
  v10 = *(a3 + 32);
  v11 = ((1 << v10) + 63) >> 6;
  if ((v10 & 0x3Fu) <= 0xD)
  {
LABEL_2:
    MEMORY[0x28223BE20](a1);
    v13 = v19 - ((v12 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v13, v12);
    result = a4(v13, v11, a3, v9, a2);
    if (v5)
    {
      result = swift_willThrow();
    }

    goto LABEL_4;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_2;
  }

  v17 = swift_slowAlloc();
  v18 = sub_224BA18B4(v17, v11, a3, v9, a2, a5);
  result = MEMORY[0x22AA5EED0](v17, -1, -1);
  if (!v5)
  {
    result = v18;
  }

LABEL_4:
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_224BA0870(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *MEMORY[0x277D85DE8];
  result = sub_224BA06E0(a1, a2, a3, sub_224BA0FA4, sub_224BA0FA4);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_224BA08E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *MEMORY[0x277D85DE8];
  result = sub_224BA06E0(a1, a2, a3, sub_224BA1300, sub_224BA1300);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_224BA0958(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *MEMORY[0x277D85DE8];
  result = sub_224BA06E0(a1, a2, a3, sub_224BA1588, sub_224BA1588);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_224BA09CC(unint64_t *a1, uint64_t a2, void *a3, uint64_t (*a4)(void *, char *))
{
  v37 = a4;
  v31 = a2;
  v32 = a1;
  v40 = sub_224DAC5E8();
  v5 = *(*(v40 - 8) + 64);
  result = MEMORY[0x28223BE20](v40);
  v38 = a3;
  v39 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = 0;
  v12 = a3[8];
  v11 = a3 + 8;
  v10 = v12;
  v13 = 1 << *(v11 - 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v10;
  v16 = (v13 + 63) >> 6;
  v35 = v7 + 16;
  v36 = v7;
  v33 = 0;
  v34 = (v7 + 8);
  while (v15)
  {
    v17 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    v18 = v17 | (v9 << 6);
    v20 = v39;
    v19 = v40;
LABEL_11:
    v23 = v38[7];
    v24 = (v38[6] + 16 * v18);
    v25 = v24[1];
    v41[0] = *v24;
    v41[1] = v25;
    (*(v36 + 16))(v20, v23 + *(v36 + 72) * v18, v19);

    v26 = v42;
    v27 = v37(v41, v20);
    v28 = v20;
    v42 = v26;
    if (v26)
    {
      (*v34)(v20, v19);
    }

    v29 = v27;
    (*v34)(v28, v19);

    if (v29)
    {
      *(v32 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      if (__OFADD__(v33++, 1))
      {
        __break(1u);
        return sub_224B2C72C(v32, v31, v33, v38);
      }
    }
  }

  v21 = v9;
  v20 = v39;
  v19 = v40;
  while (1)
  {
    v9 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v9 >= v16)
    {
      return sub_224B2C72C(v32, v31, v33, v38);
    }

    v22 = v11[v9];
    ++v21;
    if (v22)
    {
      v15 = (v22 - 1) & v22;
      v18 = __clz(__rbit64(v22)) | (v9 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_224BA0C40(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, char *))
{
  v45 = a4;
  v34 = a2;
  v35 = a1;
  v44 = sub_224DA9878();
  v5 = *(v44 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v44);
  v47 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v9 = *(*(v8 - 8) + 64);
  result = MEMORY[0x28223BE20](v8);
  v13 = &v33 - v12;
  v14 = 0;
  v46 = a3;
  v15 = *(a3 + 64);
  v36 = 0;
  v37 = a3 + 64;
  v16 = 1 << *(a3 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v15;
  v19 = (v16 + 63) >> 6;
  v40 = v5 + 16;
  v41 = v11 + 16;
  v42 = v11;
  v43 = v5;
  v38 = (v5 + 8);
  v39 = (v11 + 8);
  while (v18)
  {
    v48 = (v18 - 1) & v18;
    v20 = __clz(__rbit64(v18)) | (v14 << 6);
    v21 = v47;
LABEL_11:
    v24 = v46;
    (*(v42 + 16))(v13, v46[6] + *(v42 + 72) * v20, v8);
    v25 = v20;
    v26 = v24[7] + *(v43 + 72) * v20;
    v27 = v8;
    v28 = v44;
    (*(v43 + 16))(v21, v26, v44);
    v29 = v49;
    v30 = v45(v13, v21);
    v49 = v29;
    if (v29)
    {
      (*v38)(v21, v28);
      return (*v39)(v13, v27);
    }

    v31 = v30;
    (*v38)(v21, v28);
    result = (*v39)(v13, v27);
    v8 = v27;
    v18 = v48;
    if (v31)
    {
      *(v35 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
      if (__OFADD__(v36++, 1))
      {
        __break(1u);
        return sub_224B2D538(v35, v34, v36, v46);
      }
    }
  }

  v22 = v14;
  v21 = v47;
  while (1)
  {
    v14 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v14 >= v19)
    {
      return sub_224B2D538(v35, v34, v36, v46);
    }

    v23 = *(v37 + 8 * v14);
    ++v22;
    if (v23)
    {
      v48 = (v23 - 1) & v23;
      v20 = __clz(__rbit64(v23)) | (v14 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_224BA0FA4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, char *))
{
  v45 = a4;
  v34 = a2;
  v35 = a1;
  v44 = sub_224DAD9C8();
  v5 = *(v44 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v44);
  v47 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_224DA9908();
  v9 = *(*(v8 - 8) + 64);
  result = MEMORY[0x28223BE20](v8);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = 0;
  v46 = a3;
  v15 = *(a3 + 64);
  v36 = 0;
  v37 = a3 + 64;
  v16 = 1 << *(a3 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v15;
  v19 = (v16 + 63) >> 6;
  v40 = v5 + 16;
  v41 = v11 + 16;
  v42 = v11;
  v43 = v5;
  v38 = (v5 + 8);
  v39 = (v11 + 8);
  while (v18)
  {
    v48 = (v18 - 1) & v18;
    v20 = __clz(__rbit64(v18)) | (v14 << 6);
    v21 = v47;
LABEL_11:
    v24 = v46;
    (*(v42 + 16))(v13, v46[6] + *(v42 + 72) * v20, v8);
    v25 = v20;
    v26 = v24[7] + *(v43 + 72) * v20;
    v27 = v8;
    v28 = v44;
    (*(v43 + 16))(v21, v26, v44);
    v29 = v49;
    v30 = v45(v13, v21);
    v49 = v29;
    if (v29)
    {
      (*v38)(v21, v28);
      return (*v39)(v13, v27);
    }

    v31 = v30;
    (*v38)(v21, v28);
    result = (*v39)(v13, v27);
    v8 = v27;
    v18 = v48;
    if (v31)
    {
      *(v35 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
      if (__OFADD__(v36++, 1))
      {
        __break(1u);
        return sub_224B2DC20(v35, v34, v36, v46);
      }
    }
  }

  v22 = v14;
  v21 = v47;
  while (1)
  {
    v14 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v14 >= v19)
    {
      return sub_224B2DC20(v35, v34, v36, v46);
    }

    v23 = *(v37 + 8 * v14);
    ++v22;
    if (v23)
    {
      v48 = (v23 - 1) & v23;
      v20 = __clz(__rbit64(v23)) | (v14 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_224BA1300(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, uint64_t *))
{
  v32 = a4;
  v25 = a2;
  v26 = a1;
  v5 = sub_224DABE18();
  v6 = *(*(v5 - 8) + 64);
  result = MEMORY[0x28223BE20](v5);
  v33 = a3;
  v34 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = 0;
  v11 = *(a3 + 64);
  v27 = 0;
  v28 = a3 + 64;
  v12 = 1 << *(a3 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & v11;
  v15 = (v12 + 63) >> 6;
  v30 = v8 + 16;
  v31 = v8;
  v29 = (v8 + 8);
  while (v14)
  {
    v35 = (v14 - 1) & v14;
    v16 = __clz(__rbit64(v14)) | (v10 << 6);
    v17 = v34;
LABEL_11:
    v20 = v33;
    (*(v31 + 16))(v17, v33[6] + *(v31 + 72) * v16, v5);
    v37 = *(v20[7] + 8 * v16);

    v21 = v36;
    v22 = v32(v17, &v37);
    v36 = v21;
    if (v21)
    {

      return (*v29)(v17, v5);
    }

    v23 = v22;

    result = (*v29)(v17, v5);
    v14 = v35;
    if (v23)
    {
      *(v26 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      if (__OFADD__(v27++, 1))
      {
        __break(1u);
        return sub_224B2E0C4(v26, v25, v27, v33);
      }
    }
  }

  v18 = v10;
  v17 = v34;
  while (1)
  {
    v10 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v10 >= v15)
    {
      return sub_224B2E0C4(v26, v25, v27, v33);
    }

    v19 = *(v28 + 8 * v10);
    ++v18;
    if (v19)
    {
      v35 = (v19 - 1) & v19;
      v16 = __clz(__rbit64(v19)) | (v10 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_224BA1588(unint64_t *a1, uint64_t a2, void *a3, uint64_t (*a4)(char *, uint64_t))
{
  v42 = a4;
  v34 = a2;
  v35 = a1;
  v5 = type metadata accessor for RemoteActivityArchiveReplicator.PendingRecord();
  v41 = *(v5 - 8);
  v6 = *(v41 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v40 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_224DAAF48();
  v9 = *(*(v8 - 8) + 64);
  result = MEMORY[0x28223BE20](v8);
  v43 = a3;
  v44 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = 0;
  v16 = a3[8];
  v15 = a3 + 8;
  v14 = v16;
  v17 = 1 << *(v15 - 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v14;
  v20 = (v17 + 63) >> 6;
  v38 = v11 + 16;
  v39 = v11;
  v36 = 0;
  v37 = (v11 + 8);
  while (v19)
  {
    v45 = (v19 - 1) & v19;
    v21 = __clz(__rbit64(v19)) | (v13 << 6);
    v22 = v44;
LABEL_11:
    v25 = v43;
    (*(v39 + 16))(v22, v43[6] + *(v39 + 72) * v21, v8);
    v26 = v21;
    v27 = v25[7] + *(v41 + 72) * v21;
    v28 = v8;
    v29 = v40;
    sub_224BA22A0(v27, v40);
    v30 = v46;
    v31 = v42(v22, v29);
    v46 = v30;
    if (v30)
    {
      sub_224BA2304(v29, type metadata accessor for RemoteActivityArchiveReplicator.PendingRecord);
      return (*v37)(v22, v28);
    }

    v32 = v31;
    sub_224BA2304(v29, type metadata accessor for RemoteActivityArchiveReplicator.PendingRecord);
    result = (*v37)(v22, v28);
    v8 = v28;
    v19 = v45;
    if (v32)
    {
      *(v35 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      if (__OFADD__(v36++, 1))
      {
        __break(1u);
        return sub_224B2E464(v35, v34, v36, v43);
      }
    }
  }

  v23 = v13;
  v22 = v44;
  while (1)
  {
    v13 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v13 >= v20)
    {
      return sub_224B2E464(v35, v34, v36, v43);
    }

    v24 = v15[v13];
    ++v23;
    if (v24)
    {
      v45 = (v24 - 1) & v24;
      v21 = __clz(__rbit64(v24)) | (v13 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_224BA18B4(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void *, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v8 = result;
      v9 = a2;
      bzero(result, 8 * a2);
      result = v8;
      a2 = v9;
    }

    v10 = a6(result, a2, a3);

    return v10;
  }

  return result;
}

uint64_t sub_224BA1954()
{
  v87 = sub_224DAE178();
  v1 = *(v87 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v87);
  v91 = &v83 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F38A0, &unk_224DB4630);
  v4 = *(*(v100 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v100);
  v99 = (&v83 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = MEMORY[0x28223BE20](v5);
  v98 = (&v83 - v8);
  MEMORY[0x28223BE20](v7);
  v97 = &v83 - v9;
  v102 = sub_224DAE0D8();
  v10 = *(v102 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v102);
  v86 = &v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v85 = &v83 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v90 = &v83 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v84 = &v83 - v19;
  MEMORY[0x28223BE20](v18);
  v21 = &v83 - v20;
  swift_beginAccess();
  v88 = v0;
  v22 = *(v0 + 16);
  v23 = *(v22 + 16);
  v24 = MEMORY[0x277D84F90];
  v101 = v10;
  if (v23)
  {
    v83 = v1;
    v108 = MEMORY[0x277D84F90];

    sub_224ADA0F4(0, v23, 0);
    v24 = v108;
    v25 = v22 + 64;
    v26 = -1 << *(v22 + 32);
    result = sub_224DAF798();
    v28 = result;
    v29 = 0;
    v30 = *(v22 + 36);
    v96 = v10 + 32;
    v89 = v22 + 72;
    v92 = v23;
    v93 = v30;
    v94 = v22 + 64;
    v95 = v22;
    while ((v28 & 0x8000000000000000) == 0 && v28 < 1 << *(v22 + 32))
    {
      if ((*(v25 + 8 * (v28 >> 6)) & (1 << v28)) == 0)
      {
        goto LABEL_39;
      }

      if (v30 != *(v22 + 36))
      {
        goto LABEL_40;
      }

      v104 = 1 << v28;
      v105 = v28 >> 6;
      v103 = v29;
      v32 = v100;
      v33 = *(v100 + 48);
      v34 = *(v22 + 56);
      v35 = (*(v22 + 48) + 16 * v28);
      v36 = v21;
      v38 = *v35;
      v37 = v35[1];
      v39 = sub_224DAC5E8();
      v40 = *(v39 - 8);
      v106 = v24;
      v41 = v40;
      v42 = v34 + *(v40 + 72) * v28;
      v43 = v97;
      (*(v40 + 16))(&v97[v33], v42, v39);
      v44 = v98;
      *v98 = v38;
      *(v44 + 8) = v37;
      v21 = v36;
      (*(v41 + 32))(v44 + *(v32 + 48), &v43[v33], v39);
      v45 = v99;
      sub_224BA21A0(v44, v99);
      v46 = v45[1];

      v47 = *(v32 + 48);
      sub_224DAC598();
      sub_224A3311C(v44, &qword_27D6F38A0, &unk_224DB4630);
      (*(v41 + 8))(v45 + v47, v39);
      v24 = v106;
      v108 = v106;
      v49 = *(v106 + 16);
      v48 = *(v106 + 24);
      if (v49 >= v48 >> 1)
      {
        sub_224ADA0F4(v48 > 1, v49 + 1, 1);
        v24 = v108;
      }

      *(v24 + 16) = v49 + 1;
      v10 = v101;
      result = (*(v101 + 32))(v24 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v49, v36, v102);
      v22 = v95;
      v31 = 1 << *(v95 + 32);
      if (v28 >= v31)
      {
        goto LABEL_41;
      }

      v25 = v94;
      v50 = *(v94 + 8 * v105);
      if ((v50 & v104) == 0)
      {
        goto LABEL_42;
      }

      LODWORD(v30) = v93;
      if (v93 != *(v95 + 36))
      {
        goto LABEL_43;
      }

      v51 = v50 & (-2 << (v28 & 0x3F));
      if (v51)
      {
        v31 = __clz(__rbit64(v51)) | v28 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v52 = v105 << 6;
        v53 = v105 + 1;
        v54 = (v89 + 8 * v105);
        while (v53 < (v31 + 63) >> 6)
        {
          v56 = *v54++;
          v55 = v56;
          v52 += 64;
          ++v53;
          if (v56)
          {
            result = sub_224A3E204(v28, v93, 0);
            v31 = __clz(__rbit64(v55)) + v52;
            goto LABEL_4;
          }
        }

        result = sub_224A3E204(v28, v93, 0);
      }

LABEL_4:
      v29 = v103 + 1;
      v28 = v31;
      if (v103 + 1 == v92)
      {

        v1 = v83;
        goto LABEL_21;
      }
    }
  }

  else
  {
LABEL_21:
    v57 = sub_224AE8B8C(v24);

    v58 = 0;
    v60 = v57 + 56;
    v59 = *(v57 + 56);
    v105 = v57;
    v61 = 1 << *(v57 + 32);
    v62 = -1;
    if (v61 < 64)
    {
      v62 = ~(-1 << v61);
    }

    v63 = v62 & v59;
    v64 = (v61 + 63) >> 6;
    v106 = v10 + 16;
    v103 = (v10 + 8);
    v104 = v10 + 32;
    v99 = (v1 + 8);
    v65 = MEMORY[0x277D84F98];
    v100 = v60;
    while (v63)
    {
      v74 = v91;
LABEL_33:
      v76 = *(v10 + 16);
      v77 = v84;
      v78 = v102;
      v76(v84, *(v105 + 48) + *(v10 + 72) * (__clz(__rbit64(v63)) | (v58 << 6)), v102);
      v79 = *(v10 + 32);
      v80 = v90;
      v79(v90, v77, v78);
      sub_224B9F9B0(v80, v74);
      if (*(v65 + 16) && (v81 = sub_224B0B2F8(v74), (v82 & 1) != 0))
      {
        v108 = *(*(v65 + 56) + 8 * v81);
      }

      else
      {
        v108 = MEMORY[0x277D84FA0];
      }

      v63 &= v63 - 1;
      v66 = v86;
      v67 = v90;
      v68 = v102;
      v76(v86, v90, v102);
      v69 = v85;
      sub_224ADB0B0(v85, v66);
      v70 = *v103;
      (*v103)(v69, v68);
      v71 = v108;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v107 = v65;
      v73 = v91;
      sub_224B1F170(v71, v91, isUniquelyReferenced_nonNull_native);
      (*v99)(v73, v87);
      result = v70(v67, v68);
      v65 = v107;
      v60 = v100;
      v10 = v101;
    }

    v74 = v91;
    while (1)
    {
      v75 = v58 + 1;
      if (__OFADD__(v58, 1))
      {
        break;
      }

      if (v75 >= v64)
      {

        return v65;
      }

      v63 = *(v60 + 8 * v75);
      ++v58;
      if (v63)
      {
        v58 = v75;
        goto LABEL_33;
      }
    }

    __break(1u);
  }

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
  return result;
}

uint64_t sub_224BA21A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F38A0, &unk_224DB4630);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_224BA2230(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F38A0, &unk_224DB4630);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_224BA22A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoteActivityArchiveReplicator.PendingRecord();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_224BA2304(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_224BA23CC(void *a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, void (*a7)(void))
{
  if (a1)
  {
    v13 = qword_281351708;
    v14 = a1;
    if (v13 != -1)
    {
      swift_once();
    }

    v15 = sub_224DAB258();
    __swift_project_value_buffer(v15, qword_281365168);

    v16 = sub_224DAB228();
    v17 = sub_224DAF2A8();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = a7;
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v21 = a3;
      v22 = v20;
      v38 = v20;
      *v19 = 136446466;
      *(v19 + 4) = sub_224A33F74(v21, a4, &v38);
      *(v19 + 12) = 2082;
      *(v19 + 14) = sub_224A33F74(a5, a6, &v38);
      _os_log_impl(&dword_224A2F000, v16, v17, "Resolved default intent (%{public}s) for extension: %{public}s", v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA5EED0](v22, -1, -1);
      v23 = v19;
      a7 = v18;
      MEMORY[0x22AA5EED0](v23, -1, -1);
    }

    v36 = v14;
    a7(a1);
  }

  else
  {
    if (qword_281351708 != -1)
    {
      swift_once();
    }

    v25 = sub_224DAB258();
    __swift_project_value_buffer(v25, qword_281365168);

    v26 = a2;
    v27 = sub_224DAB228();
    v28 = sub_224DAF288();

    if (os_log_type_enabled(v27, v28))
    {
      v35 = a7;
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v38 = v31;
      *v29 = 136446722;
      *(v29 + 4) = sub_224A33F74(a3, a4, &v38);
      *(v29 + 12) = 2082;
      *(v29 + 14) = sub_224A33F74(a5, a6, &v38);
      *(v29 + 22) = 2114;
      if (a2)
      {
        v32 = a2;
        v33 = _swift_stdlib_bridgeErrorToNSError();
        v34 = v33;
      }

      else
      {
        v33 = 0;
        v34 = 0;
      }

      *(v29 + 24) = v33;
      *v30 = v34;
      _os_log_impl(&dword_224A2F000, v27, v28, "Unable to resolve default intent (%{public}s) for extension: %{public}s - %{public}@", v29, 0x20u);
      sub_224AD68CC(v30);
      MEMORY[0x22AA5EED0](v30, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x22AA5EED0](v31, -1, -1);
      MEMORY[0x22AA5EED0](v29, -1, -1);

      a7 = v35;
    }

    else
    {
    }

    a7(0);
  }
}

uint64_t sub_224BA27C4(uint64_t (*a1)(void))
{
  result = a1();
  if (result)
  {
    return _swift_stdlib_bridgeErrorToNSError();
  }

  return result;
}

uint64_t sub_224BA27F4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_224BA283C(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_224BA2894()
{
  v0 = sub_224DAB258();
  __swift_allocate_value_buffer(v0, qword_27D6F4948);
  __swift_project_value_buffer(v0, qword_27D6F4948);
  return sub_224DAB238();
}

uint64_t sub_224BA2914()
{
  v1 = OBJC_IVAR____TtC10ChronoCore24LocalTaskActivityContext_startAfter;
  v2 = sub_224DA9878();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC10ChronoCore24LocalTaskActivityContext_startBefore, v2);

  v4 = *(v0 + OBJC_IVAR____TtC10ChronoCore24LocalTaskActivityContext_startHandler + 8);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for LocalTaskActivityContext()
{
  result = qword_27D6F4960;
  if (!qword_27D6F4960)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_224BA2A58()
{
  result = sub_224DA9878();
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

uint64_t sub_224BA2B1C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_224DAE918();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v22 - v10;
  sub_224A3317C(a1 + 32, v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4970, qword_224DB8EF0);
  type metadata accessor for LocalTaskActivityContext();
  result = swift_dynamicCast();
  if (result)
  {

    v13 = v1[5];
    v14 = __swift_project_boxed_opaque_existential_1(v1 + 2, v13);
    v22[0] = v22;
    v15 = *(v13 - 8);
    v16 = *(v15 + 64);
    MEMORY[0x28223BE20](v14);
    v18 = v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v15 + 16))(v18);
    sub_224DAD6E8();
    (*(v15 + 8))(v18, v13);
    (*(v5 + 16))(v9, *(a1 + 24) + OBJC_IVAR____TtC10ChronoCore12TaskActivity_requiredDataProtectionLevel, v4);
    sub_224BA4058(&qword_281350C30, MEMORY[0x277CE3D70]);
    LOBYTE(v18) = sub_224DAEDB8();
    v19 = *(v5 + 8);
    v19(v9, v4);
    v19(v11, v4);
    if (v18)
    {
      v20 = v2[8];
      v21 = *(v20 + 16);

      os_unfair_lock_lock(v21);
      sub_224BA2E30(v2, a1);
      os_unfair_lock_unlock(*(v20 + 16));
    }

    else
    {
      return sub_224BA3710(a1);
    }
  }

  return result;
}

uint64_t sub_224BA2E30(void *a1, uint64_t a2)
{
  v5 = sub_224DAE918();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27D6F2CA0 != -1)
  {
    swift_once();
  }

  v10 = sub_224DAB258();
  __swift_project_value_buffer(v10, qword_27D6F4948);

  v11 = sub_224DAB228();
  v12 = sub_224DAF2A8();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v38 = v13;
    v14 = swift_slowAlloc();
    v41 = v14;
    *v13 = 136446466;
    v40 = v11;
    v42 = a2;
    v43[0] = v14;
    v15 = a1[5];
    v16 = __swift_project_boxed_opaque_existential_1(a1 + 2, v15);
    v44 = &v36;
    v17 = *(v15 - 8);
    v18 = *(v17 + 64);
    MEMORY[0x28223BE20](v16);
    v39 = v12;
    v20 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v17 + 16))(v20);
    sub_224DAD6E8();
    (*(v17 + 8))(v20, v15);
    sub_224BA4058(&qword_281350C28, MEMORY[0x277CE3D70]);
    v21 = sub_224DAFD28();
    v23 = v22;
    v44 = v2;
    v37 = *(v6 + 8);
    v37(v9, v5);
    v24 = sub_224A33F74(v21, v23, v43);
    v25 = v42;

    v26 = v5;
    v27 = v38;
    *(v38 + 1) = v24;
    *(v27 + 6) = 2082;
    (*(v6 + 16))(v9, *(v25 + 24) + OBJC_IVAR____TtC10ChronoCore12TaskActivity_requiredDataProtectionLevel, v26);
    v28 = sub_224DAFD28();
    v30 = v29;
    v37(v9, v26);
    v31 = sub_224A33F74(v28, v30, v43);

    *(v27 + 14) = v31;
    v11 = v40;
    _os_log_impl(&dword_224A2F000, v40, v39, "Pending task due to data protection level requirements (current=%{public}s, requires=%{public}s)", v27, 0x16u);
    v32 = v41;
    swift_arrayDestroy();
    MEMORY[0x22AA5EED0](v32, -1, -1);
    MEMORY[0x22AA5EED0](v27, -1, -1);
  }

  swift_beginAccess();

  MEMORY[0x22AA5D350](v33);
  if (*((a1[9] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((a1[9] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v35 = *((a1[9] & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_224DAF038();
  }

  sub_224DAF078();
  return swift_endAccess();
}

uint64_t sub_224BA329C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v48 = a4;
  v49 = a3;
  v50 = a5;
  v51 = a2;
  v6 = type metadata accessor for ExtensionTask.SchedulingConfiguration(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_224DA9878();
  v11 = *(v10 - 8);
  v12 = v11[8];
  v13 = MEMORY[0x28223BE20](v10);
  v47 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v46 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v46 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v46 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v46 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = &v46 - v27;
  sub_224A45A60(a1 + OBJC_IVAR____TtC10ChronoCore12TaskActivity_schedulingConfiguration, v9);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F33D0, qword_224DB3710);
  if ((*(*(v29 - 8) + 48))(v9, 1, v29) == 1)
  {
    sub_224DA9868();
  }

  else
  {
    v30 = *&v9[*(v29 + 48)];
    v31 = v11[4];
    v31(v20, v9, v10);
    v31(v23, v20, v10);
  }

  sub_224DA9768();
  v32 = v11[4];
  v32(v28, v23, v10);
  v33 = v11[2];
  v33(v17, v28, v10);
  v34 = v47;
  v33(v47, v26, v10);
  v35 = type metadata accessor for LocalTaskActivityContext();
  v36 = *(v35 + 48);
  v37 = *(v35 + 52);
  v38 = swift_allocObject();
  v32((v38 + OBJC_IVAR____TtC10ChronoCore24LocalTaskActivityContext_startAfter), v17, v10);
  v32((v38 + OBJC_IVAR____TtC10ChronoCore24LocalTaskActivityContext_startBefore), v34, v10);
  v39 = v51;
  *(v38 + OBJC_IVAR____TtC10ChronoCore24LocalTaskActivityContext_targetQueue) = v51;
  v40 = (v38 + OBJC_IVAR____TtC10ChronoCore24LocalTaskActivityContext_startHandler);
  v41 = v48;
  *v40 = v49;
  v40[1] = v41;
  v42 = v50;
  v50[3] = v35;
  v42[4] = &off_28382D5D8;
  *v42 = v38;
  v43 = v11[1];
  v44 = v39;

  v43(v26, v10);
  return (v43)(v28, v10);
}

uint64_t sub_224BA3660()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[7];

  v2 = v0[8];

  v3 = v0[9];

  return swift_deallocClassInstance();
}

uint64_t sub_224BA3710(uint64_t a1)
{
  v2 = sub_224DAB7B8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v73 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_224DAB848();
  v72 = *(v6 - 8);
  v7 = *(v72 + 64);
  MEMORY[0x28223BE20](v6);
  v71 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_224DAB798();
  v67 = *(v9 - 8);
  v68 = v9;
  v10 = *(v67 + 64);
  MEMORY[0x28223BE20](v9);
  v66 = (&v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v75 = sub_224DAB878();
  v70 = *(v75 - 8);
  v12 = *(v70 + 64);
  v13 = MEMORY[0x28223BE20](v75);
  v74 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v69 = &v62 - v15;
  v16 = type metadata accessor for ExtensionTask.SchedulingConfiguration(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_224DA9878();
  v20 = *(v77 - 8);
  v21 = v20[8];
  v22 = MEMORY[0x28223BE20](v77);
  v24 = &v62 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v62 - v26;
  v28 = MEMORY[0x28223BE20](v25);
  v30 = &v62 - v29;
  MEMORY[0x28223BE20](v28);
  v76 = &v62 - v31;
  sub_224A3317C(a1 + 32, aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4970, qword_224DB8EF0);
  type metadata accessor for LocalTaskActivityContext();
  result = swift_dynamicCast();
  if (result)
  {
    v63 = v6;
    v62 = v79;
    v33 = *(a1 + 24);
    if (qword_27D6F2CA0 != -1)
    {
      swift_once();
    }

    v34 = sub_224DAB258();
    __swift_project_value_buffer(v34, qword_27D6F4948);

    v35 = sub_224DAB228();
    v36 = sub_224DAF2A8();

    v37 = os_log_type_enabled(v35, v36);
    v65 = v2;
    v64 = v3;
    if (v37)
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      aBlock[0] = v39;
      *v38 = 136446210;
      *(v38 + 4) = sub_224A33F74(*(v33 + OBJC_IVAR____TtC10ChronoCore12TaskActivity_logDigest), *(v33 + OBJC_IVAR____TtC10ChronoCore12TaskActivity_logDigest + 8), aBlock);
      _os_log_impl(&dword_224A2F000, v35, v36, "[%{public}s]: scheduled activity with local scheduler", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v39);
      MEMORY[0x22AA5EED0](v39, -1, -1);
      MEMORY[0x22AA5EED0](v38, -1, -1);
    }

    v40 = v74;
    sub_224A45A60(v33 + OBJC_IVAR____TtC10ChronoCore12TaskActivity_schedulingConfiguration, v19);
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F33D0, qword_224DB3710);
    v42 = (*(*(v41 - 8) + 48))(v19, 1, v41);
    v43 = v77;
    if (v42 == 1)
    {
      sub_224DA9868();
    }

    else
    {
      v44 = *&v19[*(v41 + 48)];
      v45 = v20[4];
      v45(v24, v19, v77);
      v45(v27, v24, v43);
    }

    sub_224DA9768();
    v46 = v20[1];
    v46(v30, v43);
    (v20[4])(v76, v27, v43);
    sub_224DA97B8();
    if (v47 > 0.0)
    {
      v48 = v47;
    }

    else
    {
      v48 = 0.0;
    }

    result = sub_224DAB858();
    v49 = v48 * 1000.0;
    if (COERCE__INT64(fabs(v48 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v49 > -9.22337204e18)
    {
      if (v49 < 9.22337204e18)
      {
        v51 = v66;
        v50 = v67;
        *v66 = v49;
        v52 = *MEMORY[0x277D85178];
        v53 = *(v50 + 104);
        v74 = v46;
        v54 = v68;
        v53(v51, v52, v68);
        v55 = v69;
        sub_224DAB868();
        (*(v50 + 8))(v51, v54);
        v70 = *(v70 + 8);
        (v70)(v40, v75);
        v56 = v62;
        v68 = *(v62 + OBJC_IVAR____TtC10ChronoCore24LocalTaskActivityContext_targetQueue);
        v57 = swift_allocObject();
        *(v57 + 16) = v56;
        *(v57 + 24) = v33;
        aBlock[4] = sub_224BA400C;
        aBlock[5] = v57;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_224A39F40;
        aBlock[3] = &block_descriptor_18;
        v58 = _Block_copy(aBlock);

        v59 = v71;
        sub_224DAB7E8();
        v79 = MEMORY[0x277D84F90];
        sub_224BA4058(&qword_281350ED0, MEMORY[0x277D85198]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
        sub_224A4C290();
        v60 = v73;
        v61 = v65;
        sub_224DAF788();
        MEMORY[0x22AA5D6A0](v55, v59, v60, v58);
        _Block_release(v58);
        (*(v64 + 8))(v60, v61);
        (*(v72 + 8))(v59, v63);
        (v70)(v55, v75);
        (v74)(v76, v77);
      }

LABEL_19:
      __break(1u);
      return result;
    }

    __break(1u);
    goto LABEL_19;
  }

  return result;
}

uint64_t sub_224BA400C()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16) + OBJC_IVAR____TtC10ChronoCore24LocalTaskActivityContext_startHandler;
  v3 = *(v2 + 8);
  return (*v2)(v1 + OBJC_IVAR____TtC10ChronoCore12TaskActivity_identifier, 1);
}

uint64_t sub_224BA4058(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_224BA40C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_224DAEDE8();
  v6 = [objc_opt_self() bundleWithIdentifier_];

  v7 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithEffectiveBundle:v6 delegate:a1 onQueue:a3];
  [v7 startMonitoringSignificantLocationChanges];
  return v7;
}

char *sub_224BA41D4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  ObjectType = swift_getObjectType();
  v11 = OBJC_IVAR____TtC10ChronoCore37_LocationSignificantChangeMonitorImpl__significantLocationDidChangePublisher;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4A10, &unk_224DB4000);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  *&v5[v11] = sub_224DAB358();
  v15 = &v5[OBJC_IVAR____TtC10ChronoCore37_LocationSignificantChangeMonitorImpl__didChangeHandler];
  *v15 = 0;
  v15[1] = 0;
  v16 = &v5[OBJC_IVAR____TtC10ChronoCore37_LocationSignificantChangeMonitorImpl_manager];
  *v16 = 0;
  *(v16 + 1) = 0;
  v17 = OBJC_IVAR____TtC10ChronoCore37_LocationSignificantChangeMonitorImpl_lock;
  type metadata accessor for UnfairLock();
  v18 = swift_allocObject();
  v19 = swift_slowAlloc();
  *v19 = 0;
  *(v18 + 16) = v19;
  *&v6[v17] = v18;
  v20 = a3;
  v42 = *&v6[v11];
  sub_224BA4988();
  *&v6[OBJC_IVAR____TtC10ChronoCore37_LocationSignificantChangeMonitorImpl_significantLocationDidChangePublisher] = sub_224DAB3A8();
  v21 = *v15;
  v22 = v15[1];
  *v15 = a4;
  v15[1] = a5;

  sub_224A3D418(v21);
  v41.receiver = v6;
  v41.super_class = ObjectType;
  v23 = objc_msgSendSuper2(&v41, sel_init);
  v24 = OBJC_IVAR____TtC10ChronoCore37_LocationSignificantChangeMonitorImpl_lock;
  v25 = *(*&v23[OBJC_IVAR____TtC10ChronoCore37_LocationSignificantChangeMonitorImpl_lock] + 16);
  v26 = v23;
  os_unfair_lock_lock(v25);
  v27 = (*(a2 + 8))(v26, &off_28382D660, a3, a1, a2);
  v28 = &v26[OBJC_IVAR____TtC10ChronoCore37_LocationSignificantChangeMonitorImpl_manager];
  v29 = *&v26[OBJC_IVAR____TtC10ChronoCore37_LocationSignificantChangeMonitorImpl_manager];
  *v28 = v27;
  v28[1] = v30;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  if (v27)
  {
    swift_unknownObjectRelease();
    if (qword_281351430 != -1)
    {
      swift_once();
    }

    v31 = sub_224DAB258();
    __swift_project_value_buffer(v31, qword_281364D60);
    v32 = sub_224DAB228();
    v33 = sub_224DAF2A8();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v42 = v35;
      *v34 = 136446210;
      *(v34 + 4) = sub_224A33F74(0xD000000000000014, 0x8000000224DC8A80, &v42);
      v36 = "[mon:%{public}s] startMonitoringSignificantLocationChanges";
LABEL_10:
      _os_log_impl(&dword_224A2F000, v32, v33, v36, v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v35);
      MEMORY[0x22AA5EED0](v35, -1, -1);
      MEMORY[0x22AA5EED0](v34, -1, -1);
    }
  }

  else
  {
    if (qword_281351430 != -1)
    {
      swift_once();
    }

    v37 = sub_224DAB258();
    __swift_project_value_buffer(v37, qword_281364D60);
    v32 = sub_224DAB228();
    v33 = sub_224DAF288();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v42 = v35;
      *v34 = 136446210;
      *(v34 + 4) = sub_224A33F74(0xD000000000000014, 0x8000000224DC8A80, &v42);
      v36 = "[mon:%{public}s] failed to create";
      goto LABEL_10;
    }
  }

  os_unfair_lock_unlock(*(*&v23[v24] + 16));

  return v26;
}

void sub_224BA45B4()
{
  if (*&v0[OBJC_IVAR____TtC10ChronoCore37_LocationSignificantChangeMonitorImpl_manager])
  {
    __break(1u);
  }

  else
  {
    v1.receiver = v0;
    v1.super_class = swift_getObjectType();
    objc_msgSendSuper2(&v1, sel_dealloc);
  }
}

void sub_224BA46DC(uint64_t a1)
{
  if (qword_281351430 != -1)
  {
    swift_once();
  }

  v2 = sub_224DAB258();
  __swift_project_value_buffer(v2, qword_281364D60);
  v3 = sub_224DAB228();
  v4 = sub_224DAF2A8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136446210;
    *(v5 + 4) = sub_224A33F74(0xD000000000000014, 0x8000000224DC8A80, &v11);
    _os_log_impl(&dword_224A2F000, v3, v4, "[mon:%{public}s] didUpdateLocations", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x22AA5EED0](v6, -1, -1);
    MEMORY[0x22AA5EED0](v5, -1, -1);
  }

  v7 = a1 + OBJC_IVAR____TtC10ChronoCore37_LocationSignificantChangeMonitorImpl__didChangeHandler;
  v8 = *(a1 + OBJC_IVAR____TtC10ChronoCore37_LocationSignificantChangeMonitorImpl__didChangeHandler);
  if (v8)
  {
    v9 = *(v7 + 8);

    v8(v10);
    sub_224A3D418(v8);
  }
}

void sub_224BA4910()
{
  v1 = *(v0 + OBJC_IVAR____TtC10ChronoCore37_LocationSignificantChangeMonitorImpl_lock);
  os_unfair_lock_lock(*(v1 + 16));
  sub_224BA46DC(v0);
  v2 = *(v1 + 16);

  os_unfair_lock_unlock(v2);
}

unint64_t sub_224BA4988()
{
  result = qword_281350EE0;
  if (!qword_281350EE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D6F4A10, &unk_224DB4000);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281350EE0);
  }

  return result;
}

uint64_t sub_224BA49EC()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4680, &unk_224DB4610);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v32 = &v27 - v4;
  v33 = sub_224DAC268();
  v5 = *(v33 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v33);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TimelineFilenameMigrator.Result(0);
  v31 = *(v9 - 8);
  v10 = *(v31 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = v0;
  v13 = *(v0 + 16);
  v14 = *(v13 + 16);
  v15 = MEMORY[0x277D84F90];
  if (v14)
  {
    v16 = v12;
    v27 = v1;
    v35 = MEMORY[0x277D84F90];
    sub_224ADA5C4(0, v14, 0);
    v15 = v35;
    v18 = *(v5 + 16);
    v17 = v5 + 16;
    v19 = v13 + ((*(v17 + 64) + 32) & ~*(v17 + 64));
    v29 = *(v17 + 56);
    v30 = v18;
    v28 = (v17 - 8);
    do
    {
      v20 = v33;
      v21 = v17;
      v30(v8, v19, v33);
      v22 = sub_224DA9688();
      v23 = v32;
      (*(*(v22 - 8) + 56))(v32, 1, 1, v22);
      sub_224BA4CFC(v8, v23, v16);
      sub_224A3311C(v23, &unk_27D6F4680, &unk_224DB4610);
      (*v28)(v8, v20);
      v35 = v15;
      v25 = *(v15 + 16);
      v24 = *(v15 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_224ADA5C4(v24 > 1, v25 + 1, 1);
        v15 = v35;
      }

      *(v15 + 16) = v25 + 1;
      sub_224BA5788(v16, v15 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v25);
      v19 += v29;
      --v14;
      v17 = v21;
    }

    while (v14);
  }

  return v15;
}

id sub_224BA4CFC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v74 = a2;
  v77 = a3;
  v78[2] = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4A18, &qword_224DB9070);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v71 = &v67 - v7;
  v8 = sub_224DAC268();
  v75 = *(v8 - 8);
  v76 = v8;
  v9 = *(v75 + 64);
  MEMORY[0x28223BE20](v8);
  v70 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4680, &unk_224DB4610);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v73 = &v67 - v16;
  v17 = sub_224DA9688();
  v72 = *(v17 - 8);
  v18 = *(v72 + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v67 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v67 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v67 - v25;
  v28 = *(v3 + 24);
  v27 = *(v3 + 32);
  swift_getObjectType();
  v29 = *(v27 + 8);
  sub_224DAC3F8();
  v67 = v15;
  v68 = a1;
  v69 = v3;
  v30 = v21;
  v31 = v72;
  v32 = *(v72 + 32);
  v32(v26, v24, v17);
  v33 = v73;
  sub_224B330C4(v74, v73);
  v34 = *(v31 + 48);
  v35 = v17;
  if (v34(v33, 1, v17) == 1)
  {
    v36 = v30;
    (*(v31 + 16))(v30, v26, v35);
    if (v34(v33, 1, v35) != 1)
    {
      sub_224A3311C(v33, &unk_27D6F4680, &unk_224DB4610);
    }
  }

  else
  {
    v36 = v30;
    v32(v30, v33, v35);
  }

  if ((sub_224DA9558() & 1) == 0)
  {
    goto LABEL_9;
  }

  v74 = objc_opt_self();
  v37 = [v74 defaultManager];
  sub_224DA9648();
  v38 = sub_224DAEDE8();

  v39 = [v37 fileExistsAtPath_];

  if ((v39 & 1) == 0)
  {
LABEL_9:
    v42 = v71;
    v43 = v68;
    sub_224BA554C(v71);
    v45 = v75;
    v44 = v76;
    if ((*(v75 + 48))(v42, 1, v76) != 1)
    {
      v50 = v70;
      (*(v45 + 32))(v70, v42, v44);
      v51 = v67;
      (*(v31 + 16))(v67, v36, v35);
      (*(v31 + 56))(v51, 0, 1, v35);
      sub_224BA4CFC(v50, v51);
      sub_224A3311C(v51, &unk_27D6F4680, &unk_224DB4610);
      (*(v45 + 8))(v50, v44);
      v52 = *(v31 + 8);
      v52(v36, v35);
      result = (v52)(v26, v35);
      goto LABEL_12;
    }

    v46 = *(v31 + 8);
    v46(v36, v35);
    v46(v26, v35);
    sub_224A3311C(v42, &qword_27D6F4A18, &qword_224DB9070);
    (*(v45 + 16))(v77, v43, v44);
    v47 = *(type metadata accessor for TimelineFilenameMigrator.Result(0) + 20);
    type metadata accessor for TimelineFilenameMigrator.Action(0);
LABEL_11:
    result = swift_storeEnumTagMultiPayload();
LABEL_12:
    v49 = *MEMORY[0x277D85DE8];
    return result;
  }

  if (sub_224DA9628())
  {
    v40 = *(v31 + 8);
    v40(v36, v35);
    v40(v26, v35);
    (*(v75 + 16))(v77, v68, v76);
    v41 = *(type metadata accessor for TimelineFilenameMigrator.Result(0) + 20);
    type metadata accessor for TimelineFilenameMigrator.Action(0);
    goto LABEL_11;
  }

  v53 = v26;
  v54 = [v74 defaultManager];
  v73 = v53;
  v55 = sub_224DA95F8();
  v56 = sub_224DA95F8();
  v78[0] = 0;
  v57 = [v54 moveItemAtURL:v55 toURL:v56 error:v78];

  v58 = v77;
  v74 = v78[0];
  if (!v57)
  {
    v64 = v74;
    v65 = sub_224DA9528();

    swift_willThrow();
    v66 = *(v31 + 8);
    v66(v36, v35);
    v66(v73, v35);
    (*(v75 + 16))(v58, v68, v76);
    *(v58 + *(type metadata accessor for TimelineFilenameMigrator.Result(0) + 20)) = v65;
    type metadata accessor for TimelineFilenameMigrator.Action(0);
    goto LABEL_11;
  }

  (*(v75 + 16))(v77, v68, v76);
  v59 = v32;
  v60 = v58 + *(type metadata accessor for TimelineFilenameMigrator.Result(0) + 20);
  v61 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4A20, &qword_224DB9F80) + 48);
  v59(v60, v73, v35);
  v59(v60 + v61, v36, v35);
  type metadata accessor for TimelineFilenameMigrator.Action(0);
  swift_storeEnumTagMultiPayload();
  v62 = *MEMORY[0x277D85DE8];
  v63 = v74;

  return v63;
}

uint64_t sub_224BA554C@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F56C0, &unk_224DB3580);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = sub_224DAC258();
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5)
  {
    v6 = [v5 priorVersionedWidgetMetrics];
  }

  else
  {

    v4 = sub_224DAC258();
    v6 = [v4 currentVersionedWidgetMetrics];
  }

  v7 = v6;

  if (v7)
  {
    v8 = v7;
    sub_224DAC248();
    v9 = v8;
    sub_224DAC218();
    sub_224DAC228();

    v10 = sub_224DAC268();
    return (*(*(v10 - 8) + 56))(a1, 0, 1, v10);
  }

  else
  {
    v12 = sub_224DAC268();
    v13 = *(*(v12 - 8) + 56);

    return v13(a1, 1, 1, v12);
  }
}

uint64_t sub_224BA5704()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_224BA5788(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TimelineFilenameMigrator.Result(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_224BA5834()
{
  result = sub_224DAC268();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for TimelineFilenameMigrator.Action(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_224BA58B8()
{
  sub_224BA592C();
  if (v0 <= 0x3F)
  {
    sub_224BA5994();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_224BA592C()
{
  if (!qword_27D6F4A48)
  {
    sub_224DA9688();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27D6F4A48);
    }
  }
}

void sub_224BA5994()
{
  if (!qword_2813507C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D6F5620, &unk_224DB3350);
    v0 = sub_224DAF728();
    if (!v1)
    {
      atomic_store(v0, &qword_2813507C0);
    }
  }
}

uint64_t sub_224BA5A40@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  a1[3] = sub_224DAA6D8();
  a1[4] = sub_224BA7A58(&qword_2813517C8, MEMORY[0x277D7BB80]);
  *a1 = v3;
}

uint64_t sub_224BA5AC0(uint64_t a1)
{
  result = sub_224BA7A58(&qword_2813517C8, MEMORY[0x277D7BB80]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_224BA5B18()
{
  v1 = v0;
  v2 = sub_224DA9F08();
  v3 = *(v2 - 8);
  v4 = v3[8];
  MEMORY[0x28223BE20](v2);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC10ChronoCore23ActivityRendererSession_taskPriority;
  swift_beginAccess();
  v8 = v3[2];
  v8(v6, v0 + v7, v2);
  sub_224BA7A58(&qword_2813519D8, MEMORY[0x277CF9F40]);
  v9 = sub_224DAEDD8();
  v10 = v3[1];
  result = v10(v6, v2);
  if ((v9 & 1) == 0)
  {
    v33 = v10;
    if (qword_281351518 != -1)
    {
      swift_once();
    }

    v12 = sub_224DAB258();
    __swift_project_value_buffer(v12, qword_281364E80);

    v13 = sub_224DAB228();
    v14 = sub_224DAF2A8();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v35[0] = v31;
      *v15 = 136446466;
      v34[0] = *(v1 + 16);
      sub_224DAA6D8();
      v32 = v8;
      sub_224BA7A58(&unk_2813517A0, MEMORY[0x277D7BB80]);
      v30 = v14;
      v16 = sub_224DAFD28();
      v18 = sub_224A33F74(v16, v17, v35);

      *(v15 + 4) = v18;
      *(v15 + 12) = 2082;
      v32(v6, v1 + v7, v2);
      v19 = sub_224DA9EC8();
      v21 = v20;
      v33(v6, v2);
      v22 = sub_224A33F74(v19, v21, v35);
      v8 = v32;

      *(v15 + 14) = v22;
      _os_log_impl(&dword_224A2F000, v13, v30, "[%{public}s] Task priority did change: %{public}s", v15, 0x16u);
      v23 = v31;
      swift_arrayDestroy();
      MEMORY[0x22AA5EED0](v23, -1, -1);
      MEMORY[0x22AA5EED0](v15, -1, -1);
    }

    sub_224A3317C(*(v1 + 24) + 16, v35);
    v24 = v36;
    v25 = v37;
    __swift_project_boxed_opaque_existential_1(v35, v36);
    v8(v6, v1 + v7, v2);
    v26 = *(v1 + 16);
    v34[3] = sub_224DAA6D8();
    v34[4] = sub_224BA7A58(&qword_2813517D0, MEMORY[0x277D7BB80]);
    v34[0] = v26;
    v27 = *(v25 + 8);
    v28 = *(v27 + 8);

    v28(v6, v34, v24, v27);
    v33(v6, v2);
    __swift_destroy_boxed_opaque_existential_1(v34);
    return __swift_destroy_boxed_opaque_existential_1(v35);
  }

  return result;
}

char *sub_224BA5F64(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4670, &unk_224DC0820);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v34 - v9;
  type metadata accessor for UnfairLock();
  v11 = swift_allocObject();
  v12 = swift_slowAlloc();
  *v12 = 0;
  *(v11 + 16) = v12;
  *(v3 + 4) = v11;
  v13 = OBJC_IVAR____TtC10ChronoCore23ActivityRendererSession_taskPriority;
  v14 = *MEMORY[0x277CF9F28];
  v15 = sub_224DA9F08();
  (*(*(v15 - 8) + 104))(&v3[v13], v14, v15);
  *&v3[OBJC_IVAR____TtC10ChronoCore23ActivityRendererSession__entry] = 0;
  *(v3 + 2) = a2;
  *(v3 + 3) = a1;
  v16 = qword_281351518;

  if (v16 != -1)
  {
    swift_once();
  }

  v17 = sub_224DAB258();
  v18 = __swift_project_value_buffer(v17, qword_281364E80);

  v34[1] = v18;
  v19 = sub_224DAB228();
  v20 = sub_224DAF2A8();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v34[2] = a1;
    v34[3] = a2;
    v23 = v22;
    v35[0] = v22;
    *v21 = 136446210;
    sub_224DAA6D8();
    v34[0] = v3;
    v24 = v7;
    v25 = v6;
    sub_224BA7A58(&unk_2813517A0, MEMORY[0x277D7BB80]);
    v26 = sub_224DAFD28();
    v28 = sub_224A33F74(v26, v27, v35);

    *(v21 + 4) = v28;
    v6 = v25;
    v7 = v24;
    v3 = v34[0];
    _os_log_impl(&dword_224A2F000, v19, v20, "[%{public}s] Initialized", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v23);
    MEMORY[0x22AA5EED0](v23, -1, -1);
    MEMORY[0x22AA5EED0](v21, -1, -1);
  }

  sub_224A3317C(*(v3 + 3) + 136, v35);
  v29 = __swift_project_boxed_opaque_existential_1(v35, v35[3]);
  sub_224DAA698();
  v30 = *v29;
  v31 = sub_224BD746C(v10, 1);
  (*(v7 + 8))(v10, v6);

  v32 = *&v3[OBJC_IVAR____TtC10ChronoCore23ActivityRendererSession__entry];
  *&v3[OBJC_IVAR____TtC10ChronoCore23ActivityRendererSession__entry] = v31;

  __swift_destroy_boxed_opaque_existential_1(v35);
  return v3;
}

uint64_t sub_224BA64D8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_224DABCC8();
  v39 = *(v4 - 8);
  v5 = *(v39 + 64);
  MEMORY[0x28223BE20](v4);
  v42 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_224DACB98();
  v40 = *(v7 - 8);
  v41 = v7;
  v8 = *(v40 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = (&v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_281351518 != -1)
  {
    swift_once();
  }

  v11 = sub_224DAB258();
  __swift_project_value_buffer(v11, qword_281364E80);

  v12 = sub_224DAB228();
  v13 = sub_224DAF2A8();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v38 = v4;
    v15 = v14;
    v16 = swift_slowAlloc();
    v44[0] = v16;
    *v15 = 136446466;
    v43 = *(v1 + 16);
    sub_224DAA6D8();
    sub_224BA7A58(&unk_2813517A0, MEMORY[0x277D7BB80]);
    v17 = sub_224DAFD28();
    v19 = sub_224A33F74(v17, v18, v44);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2082;
    v20 = NSStringFromWRReloadReason();
    v21 = sub_224DAEE18();
    v23 = v22;

    v24 = sub_224A33F74(v21, v23, v44);

    *(v15 + 14) = v24;
    _os_log_impl(&dword_224A2F000, v12, v13, "[%{public}s] Reload widget for reason: %{public}s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA5EED0](v16, -1, -1);
    v25 = v15;
    v4 = v38;
    MEMORY[0x22AA5EED0](v25, -1, -1);
  }

  sub_224A3317C(*(v2 + 24) + 136, v44);
  v26 = __swift_project_boxed_opaque_existential_1(v44, v44[3]);
  v27 = *(v2 + 16);
  v28 = sub_224DAA6C8();
  v30 = v29;
  sub_224A859B0(a1, v10);
  v31 = *v26;
  v32 = v42;
  v33 = sub_224BD7040(v28, v30, v42);
  v34 = MEMORY[0x28223BE20](v33);
  *(&v38 - 4) = v31;
  *(&v38 - 3) = v32;
  *(&v38 - 2) = v10;
  LOBYTE(v43) = 1;
  v35 = *(v31 + 336);
  MEMORY[0x28223BE20](v34);
  *(&v38 - 4) = &v43;
  *(&v38 - 3) = sub_224B7A900;
  *(&v38 - 2) = v36;

  sub_224DAC128();

  if (v43)
  {
    __break(1u);
  }

  else
  {

    (*(v39 + 8))(v32, v4);
    (*(v40 + 8))(v10, v41);
    return __swift_destroy_boxed_opaque_existential_1(v44);
  }

  return result;
}

uint64_t sub_224BA6950(void *a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v5 = v4;
  v67 = a3;
  v63 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5630, &unk_224DB34C0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v60 - v10;
  v66 = sub_224DA9908();
  v64 = *(v66 - 8);
  v12 = *(v64 + 64);
  MEMORY[0x28223BE20](v66);
  v62 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281351518 != -1)
  {
    swift_once();
  }

  v61 = sub_224DAB258();
  __swift_project_value_buffer(v61, qword_281364E80);

  v14 = a1;
  v15 = sub_224DAB228();
  v16 = sub_224DAF2A8();

  v17 = os_log_type_enabled(v15, v16);
  v65 = v14;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v19 = a4;
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v60 = v11;
    v22 = v21;
    v74[0] = v21;
    *v18 = 136446466;
    v71[0] = *(v5 + 16);
    sub_224DAA6D8();
    sub_224BA7A58(&unk_2813517A0, MEMORY[0x277D7BB80]);
    v23 = sub_224DAFD28();
    v25 = sub_224A33F74(v23, v24, v74);

    *(v18 + 4) = v25;
    *(v18 + 12) = 2114;
    *(v18 + 14) = v14;
    *v20 = v14;
    v26 = v14;
    _os_log_impl(&dword_224A2F000, v15, v16, "[%{public}s] Handle interaction: %{public}@", v18, 0x16u);
    sub_224A3311C(v20, &unk_27D6F69F0, &unk_224DB3900);
    v27 = v20;
    a4 = v19;
    MEMORY[0x22AA5EED0](v27, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v22);
    v28 = v22;
    v11 = v60;
    MEMORY[0x22AA5EED0](v28, -1, -1);
    MEMORY[0x22AA5EED0](v18, -1, -1);
  }

  v29 = *(v5 + 16);
  sub_224A3317C(*(v5 + 24) + 176, v74);
  v30 = __swift_project_boxed_opaque_existential_1(v74, v74[3]);
  v31 = sub_224DAA6B8();
  v32 = sub_224DAA6C8();
  v33 = swift_allocObject();
  v33[2] = v67;
  v33[3] = a4;
  v33[4] = v29;
  v34 = *v30;
  v35 = &v31[*MEMORY[0x277CFA128]];
  swift_beginAccess();
  if (!*(v35 + 1))
  {
    v43 = objc_allocWithZone(sub_224DAAA38());

    v44 = sub_224DAAA28();
    v45 = swift_allocObject();
    v45[2] = v44;
    v45[3] = sub_224BA7AA0;
    v45[4] = v33;
    v46 = v44;

    sub_224B90424(v31, v63, v65, 0, 0, 1, sub_224BA7AB0, v45);

    return __swift_destroy_boxed_opaque_existential_1(v74);
  }

  v63 = v32;
  v36 = *v35;
  swift_beginAccess();
  if (*(v34 + 48))
  {
    sub_224A3317C(v34 + 24, &v68);
    if (*(&v69 + 1))
    {
LABEL_8:
      sub_224A39D14(&v68, v71);
      swift_retain_n();
      swift_retain_n();

      sub_224DA9888();

      v37 = v64;
      if ((*(v64 + 48))(v11, 1, v66) == 1)
      {

        sub_224A3311C(v11, &unk_27D6F5630, &unk_224DB34C0);
        if (qword_2813516C8 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v61, qword_281365120);
        v38 = sub_224DAB228();
        v39 = sub_224DAF288();
        if (os_log_type_enabled(v38, v39))
        {
          v40 = swift_slowAlloc();
          *v40 = 0;
          _os_log_impl(&dword_224A2F000, v38, v39, "Unable to send interaction due to bad relationship ID", v40, 2u);
          MEMORY[0x22AA5EED0](v40, -1, -1);
        }

        sub_224B93694();
        v41 = swift_allocError();
        *v42 = xmmword_224DB8520;
        sub_224BA71F8(v41, 1, v67);
      }

      else
      {

        v50 = v62;
        v51 = v66;
        (*(v37 + 32))(v62, v11, v66);
        v52 = v37;
        v53 = objc_allocWithZone(MEMORY[0x277CFA358]);
        v54 = sub_224DAEDE8();
        v55 = sub_224DAEDE8();

        v56 = [v53 initWithExtensionIdentity:v31 kind:v54 family:0 intent:0 activityIdentifier:v55];

        v57 = v72;
        v58 = v73;
        __swift_project_boxed_opaque_existential_1(v71, v72);
        (*(v58 + 48))(v56, v65, v50, sub_224BA7AA0, v33, v57, v58);

        (*(v52 + 8))(v50, v51);
      }

      __swift_destroy_boxed_opaque_existential_1(v71);
      return __swift_destroy_boxed_opaque_existential_1(v74);
    }
  }

  else
  {
    v47 = *(v34 + 40);
    v68 = *(v34 + 24);
    v69 = v47;
    v70 = *(v34 + 56);
    if (*(&v47 + 1))
    {
      goto LABEL_8;
    }
  }

  swift_retain_n();
  swift_retain_n();

  if (*(&v69 + 1))
  {
    __swift_destroy_boxed_opaque_existential_1(&v68);
  }

  sub_224B93694();
  v48 = swift_allocError();
  *v49 = 0;
  v49[1] = 0;
  sub_224BA71F8(v48, 1, v67);

  return __swift_destroy_boxed_opaque_existential_1(v74);
}

void sub_224BA71F8(void *a1, char a2, void (*a3)(void))
{
  if (a2)
  {
    a3();
    if (qword_281351518 != -1)
    {
      swift_once();
    }

    v4 = sub_224DAB258();
    __swift_project_value_buffer(v4, qword_281364E80);

    sub_224BA7AC0(a1, 1);
    oslog = sub_224DAB228();
    v5 = sub_224DAF288();

    sub_224B92BE0(a1, 1);
    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v22 = v8;
      *v6 = 136446466;
      sub_224DAA6D8();
      sub_224BA7A58(&unk_2813517A0, MEMORY[0x277D7BB80]);
      v9 = sub_224DAFD28();
      v11 = sub_224A33F74(v9, v10, &v22);

      *(v6 + 4) = v11;
      *(v6 + 12) = 2114;
      v12 = a1;
      v13 = _swift_stdlib_bridgeErrorToNSError();
      *(v6 + 14) = v13;
      *v7 = v13;
      _os_log_impl(&dword_224A2F000, oslog, v5, "[%{public}s] Encountered error when handling interaction: %{public}@", v6, 0x16u);
      sub_224A3311C(v7, &unk_27D6F69F0, &unk_224DB3900);
      MEMORY[0x22AA5EED0](v7, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v8);
      v14 = v8;
LABEL_10:
      MEMORY[0x22AA5EED0](v14, -1, -1);
      MEMORY[0x22AA5EED0](v6, -1, -1);

      return;
    }
  }

  else
  {
    (a3)(0);
    if (qword_281351518 != -1)
    {
      swift_once();
    }

    v15 = sub_224DAB258();
    __swift_project_value_buffer(v15, qword_281364E80);

    oslog = sub_224DAB228();
    v16 = sub_224DAF2A8();

    if (os_log_type_enabled(oslog, v16))
    {
      v6 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v22 = v17;
      *v6 = 136446210;
      sub_224DAA6D8();
      sub_224BA7A58(&unk_2813517A0, MEMORY[0x277D7BB80]);
      v18 = sub_224DAFD28();
      v20 = sub_224A33F74(v18, v19, &v22);

      *(v6 + 4) = v20;
      _os_log_impl(&dword_224A2F000, oslog, v16, "[%{public}s] Finished handling interaction.", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v17);
      v14 = v17;
      goto LABEL_10;
    }
  }
}

uint64_t sub_224BA75AC()
{
  if (qword_281351518 != -1)
  {
    swift_once();
  }

  v1 = sub_224DAB258();
  __swift_project_value_buffer(v1, qword_281364E80);

  v2 = sub_224DAB228();
  v3 = sub_224DAF2A8();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v16[0] = v5;
    *v4 = 136446210;
    v15[0] = *(v0 + 16);
    sub_224DAA6D8();
    sub_224BA7A58(&unk_2813517A0, MEMORY[0x277D7BB80]);
    v6 = sub_224DAFD28();
    v8 = sub_224A33F74(v6, v7, v16);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_224A2F000, v2, v3, "[%{public}s] Invalidated", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x22AA5EED0](v5, -1, -1);
    MEMORY[0x22AA5EED0](v4, -1, -1);
  }

  sub_224A3317C(*(v0 + 24) + 16, v16);
  v9 = v17;
  v10 = v18;
  __swift_project_boxed_opaque_existential_1(v16, v17);
  v11 = *(v0 + 16);
  v15[3] = sub_224DAA6D8();
  v15[4] = sub_224BA7A58(&qword_2813517D0, MEMORY[0x277D7BB80]);
  v15[0] = v11;
  v12 = *(v10 + 8);
  v13 = *(v12 + 16);

  v13(v15, v9, v12);
  __swift_destroy_boxed_opaque_existential_1(v15);
  return __swift_destroy_boxed_opaque_existential_1(v16);
}

uint64_t sub_224BA7804()
{
  v1 = *(v0 + 2);

  v2 = *(v0 + 3);

  v3 = *(v0 + 4);

  v4 = OBJC_IVAR____TtC10ChronoCore23ActivityRendererSession_taskPriority;
  v5 = sub_224DA9F08();
  (*(*(v5 - 8) + 8))(&v0[v4], v5);
  v6 = *&v0[OBJC_IVAR____TtC10ChronoCore23ActivityRendererSession__entry];

  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ActivityRendererSession()
{
  result = qword_281356D10;
  if (!qword_281356D10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_224BA791C()
{
  result = sub_224DA9F08();
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

unint64_t sub_224BA79C8()
{
  v1 = *v0;
  sub_224DAF938();

  v2 = *(v1 + 16);
  v3 = sub_224DAA6A8();
  MEMORY[0x22AA5D210](v3);

  MEMORY[0x22AA5D210](62, 0xE100000000000000);
  return 0xD00000000000001ELL;
}

uint64_t sub_224BA7A58(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_224BA7AA0(void *a1, char a2)
{
  v3 = *(v2 + 24);
  v4 = *(v2 + 32);
  sub_224BA71F8(a1, a2 & 1, *(v2 + 16));
}

id sub_224BA7AC0(id result, char a2)
{
  if (a2)
  {
    return result;
  }

  return result;
}

uint64_t _s10IconChangeOMa()
{
  result = qword_281359498;
  if (!qword_281359498)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_224BA7B18()
{
  sub_224BA7B8C();
  if (v0 <= 0x3F)
  {
    sub_224AFCBC8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_224BA7B8C()
{
  if (!qword_2813517D8)
  {
    sub_224DAA618();
    sub_224DA9688();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2813517D8);
    }
  }
}

unint64_t sub_224BA7BFC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F56A0, &unk_224DB4150);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v31 - v4;
  v6 = sub_224DA9688();
  v33 = *(v6 - 8);
  v34 = v6;
  v7 = *(v33 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_224DAA618();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = _s10IconChangeOMa();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_224BA8AAC(v0, v18);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v2 + 32))(v5, v18, v1);
    v35 = 0;
    v36 = 0xE000000000000000;
    sub_224DAF938();

    v35 = 0xD00000000000001ELL;
    v36 = 0x8000000224DC8B90;
    sub_224A33088(&qword_281351848, &unk_27D6F56A0, &unk_224DB4150);
    v19 = sub_224DAFD28();
    MEMORY[0x22AA5D210](v19);

    v20 = v35;
    (*(v2 + 8))(v5, v1);
  }

  else
  {
    v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4A60, &qword_224DBC810) + 48);
    v22 = *(v11 + 32);
    v32 = v10;
    v22(v14, v18, v10);
    v24 = v33;
    v23 = v34;
    (*(v33 + 32))(v9, &v18[v21], v34);
    v35 = 0;
    v36 = 0xE000000000000000;
    sub_224DAF938();
    MEMORY[0x22AA5D210](0xD00000000000001CLL, 0x8000000224DC8BB0);
    sub_224DAA5E8();
    sub_224A33088(&qword_281351848, &unk_27D6F56A0, &unk_224DB4150);
    v25 = sub_224DAFD28();
    MEMORY[0x22AA5D210](v25);

    (*(v2 + 8))(v5, v1);
    MEMORY[0x22AA5D210](0x6F6973726576203BLL, 0xEB00000000203A6ELL);
    v26 = sub_224DAA608();
    if (v27)
    {
      v28 = v27;
    }

    else
    {
      v26 = 1701736302;
      v28 = 0xE400000000000000;
    }

    MEMORY[0x22AA5D210](v26, v28);

    MEMORY[0x22AA5D210](0x203A6C7275203BLL, 0xE700000000000000);
    sub_224B32DE8();
    v29 = sub_224DAFD28();
    MEMORY[0x22AA5D210](v29);

    v20 = v35;
    (*(v24 + 8))(v9, v23);
    (*(v11 + 8))(v14, v32);
  }

  return v20;
}

uint64_t sub_224BA80E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_224DAFD88();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_224BA8170(uint64_t a1)
{
  v2 = sub_224BA8BE4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_224BA81AC(uint64_t a1)
{
  v2 = sub_224BA8BE4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_224BA81E8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4A68, &qword_224DB9220);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_224BA8BE4();
  sub_224DAFEF8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v11 = sub_224DAFC58();
  v13 = v12;
  (*(v6 + 8))(v9, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v11;
  a2[1] = v13;
  return result;
}

uint64_t sub_224BA8364(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4A70, &qword_224DB9228);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_224BA8BE4();
  sub_224DAFF08();
  sub_224DAFCC8();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_224BA84A0(uint64_t a1, uint64_t a2)
{
  v58 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F56A0, &unk_224DB4150);
  v55 = *(v3 - 8);
  v56 = v3;
  v4 = *(v55 + 64);
  MEMORY[0x28223BE20](v3);
  v53 = &v51 - v5;
  v6 = sub_224DA9688();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v52 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v54 = &v51 - v11;
  v57 = sub_224DAA618();
  v12 = *(v57 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v57);
  v15 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = _s10IconChangeOMa();
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v51 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4A50, &qword_224DB9198);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x28223BE20](v23 - 8);
  v27 = &v51 - v26;
  v28 = &v51 + *(v25 + 56) - v26;
  sub_224BA8AAC(a1, &v51 - v26);
  sub_224BA8AAC(v58, v28);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_224BA8AAC(v27, v20);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v30 = v55;
      v29 = v56;
      v31 = v53;
      (*(v55 + 32))(v53, v28, v56);
      sub_224A33088(&qword_27D6F4A58, &unk_27D6F56A0, &unk_224DB4150);
      sub_224DAEFA8();
      sub_224DAEFA8();
      if (v61 == v59 && v62 == v60)
      {
        v32 = *(v30 + 8);
        v32(v31, v29);

        v32(v20, v29);
LABEL_13:
        sub_224BA8B78(v27);
        v45 = 1;
        return v45 & 1;
      }

      v47 = sub_224DAFD88();
      v48 = *(v30 + 8);
      v48(v31, v29);

      v48(v20, v29);
      if (v47)
      {
        goto LABEL_13;
      }

      goto LABEL_15;
    }

    (*(v55 + 8))(v20, v56);
LABEL_9:
    sub_224BA8B10(v27);
LABEL_16:
    v45 = 0;
    return v45 & 1;
  }

  sub_224BA8AAC(v27, v22);
  v33 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4A60, &qword_224DBC810) + 48);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v7 + 8))(&v22[v33], v6);
    (*(v12 + 8))(v22, v57);
    goto LABEL_9;
  }

  v34 = *(v12 + 32);
  v58 = v12;
  v35 = v57;
  v34(v15, v28, v57);
  v36 = *(v7 + 32);
  v36(v54, &v22[v33], v6);
  v37 = &v28[v33];
  v38 = v35;
  v39 = v58;
  v40 = v52;
  v36(v52, v37, v6);
  v41 = v38;
  v42 = MEMORY[0x22AA58960](v22, v15);
  v43 = *(v39 + 8);
  v43(v22, v41);
  if ((v42 & 1) == 0)
  {
    v49 = *(v7 + 8);
    v49(v40, v6);
    v49(v54, v6);
    v43(v15, v57);
LABEL_15:
    sub_224BA8B78(v27);
    goto LABEL_16;
  }

  v44 = v54;
  v45 = sub_224DA9628();
  v46 = *(v7 + 8);
  v46(v40, v6);
  v46(v44, v6);
  v43(v15, v57);
  sub_224BA8B78(v27);
  return v45 & 1;
}

uint64_t sub_224BA8AAC(uint64_t a1, uint64_t a2)
{
  v4 = _s10IconChangeOMa();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_224BA8B10(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4A50, &qword_224DB9198);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_224BA8B78(uint64_t a1)
{
  v2 = _s10IconChangeOMa();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_224BA8BE4()
{
  result = qword_2813593F8[0];
  if (!qword_2813593F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2813593F8);
  }

  return result;
}

unint64_t sub_224BA8C4C()
{
  result = qword_27D6F4A78;
  if (!qword_27D6F4A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F4A78);
  }

  return result;
}

unint64_t sub_224BA8CA4()
{
  result = qword_2813593E8;
  if (!qword_2813593E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813593E8);
  }

  return result;
}

unint64_t sub_224BA8CFC()
{
  result = qword_2813593F0;
  if (!qword_2813593F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813593F0);
  }

  return result;
}

uint64_t sub_224BA8D50()
{
  sub_224DA9E78();
  sub_224DA9E68();
  v0 = sub_224DA9DC8();

  qword_281355000 = v0;
  return result;
}

uint64_t sub_224BA8D98(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *(v2 + 16);
  sub_224BA941C(a2, v12);
  v6 = swift_allocObject();
  *(v6 + 16) = v3;
  *(v6 + 24) = a1;
  v7 = v12[1];
  *(v6 + 32) = v12[0];
  *(v6 + 48) = v7;
  *(v6 + 64) = v12[2];
  v8 = swift_allocObject();
  *(v8 + 16) = sub_224BA9478;
  *(v8 + 24) = v6;
  v11[4] = sub_224A8A838;
  v11[5] = v8;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_224A9B6F8;
  v11[3] = &block_descriptor_19;
  v9 = _Block_copy(v11);

  dispatch_sync(v5, v9);
  _Block_release(v9);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }

  return result;
}

void sub_224BA8F20(unint64_t a1)
{
  v2 = v1;
  v4 = sub_224DAB8C8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (&v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v1 + 16);
  *v8 = v9;
  (*(v5 + 104))(v8, *MEMORY[0x277D85200], v4);
  v10 = v9;
  LOBYTE(v9) = sub_224DAB8F8();
  (*(v5 + 8))(v8, v4);
  if (v9)
  {
    if (!*(v1 + 48))
    {
      __break(1u);
      return;
    }

    v11 = sub_224C160B0();
    if (!v11)
    {
      goto LABEL_25;
    }

    if (!(v11 >> 62))
    {
      v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (v12)
      {
        goto LABEL_6;
      }

LABEL_25:
      if (qword_2813516D0 != -1)
      {
        swift_once();
      }

      v28 = sub_224DAB258();
      __swift_project_value_buffer(v28, qword_281365138);
      v20 = sub_224DAB228();
      v21 = sub_224DAF2A8();
      if (!os_log_type_enabled(v20, v21))
      {
        goto LABEL_30;
      }

      v22 = swift_slowAlloc();
      *v22 = 0;
      v23 = "Unable to precache placeholders because no metrics specifications exist";
      goto LABEL_29;
    }
  }

  else
  {
    __break(1u);
  }

  v27 = sub_224DAF838();

  if (!v27)
  {
    goto LABEL_25;
  }

LABEL_6:
  if ((a1 & 0xC000000000000001) != 0)
  {
    v13 = sub_224DAF838();
  }

  else
  {
    v13 = *(a1 + 16);
  }

  if (!v13)
  {
    if (qword_2813516D0 != -1)
    {
      swift_once();
    }

    v19 = sub_224DAB258();
    __swift_project_value_buffer(v19, qword_281365138);
    v20 = sub_224DAB228();
    v21 = sub_224DAF2A8();
    if (!os_log_type_enabled(v20, v21))
    {
      goto LABEL_30;
    }

    v22 = swift_slowAlloc();
    *v22 = 0;
    v23 = "No descriptor changes found - nothing to do.";
LABEL_29:
    _os_log_impl(&dword_224A2F000, v20, v21, v23, v22, 2u);
    MEMORY[0x22AA5EED0](v22, -1, -1);
LABEL_30:

    return;
  }

  if (qword_2813516D0 != -1)
  {
    swift_once();
  }

  v14 = sub_224DAB258();
  __swift_project_value_buffer(v14, qword_281365138);

  v15 = sub_224DAB228();
  v16 = sub_224DAF2A8();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 134349056;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v18 = sub_224DAF838();
    }

    else
    {
      v18 = *(a1 + 16);
    }

    *(v17 + 4) = v18;

    _os_log_impl(&dword_224A2F000, v15, v16, "Precaching placeholders for %{public}ld additional descriptors", v17, 0xCu);
    MEMORY[0x22AA5EED0](v17, -1, -1);
  }

  else
  {
  }

  swift_beginAccess();
  v24 = *(v2 + 32);

  sub_224AD698C(a1, v24);
  v25 = *(v2 + 32);
  *(v2 + 32) = v26;

  sub_224BA97CC();
}

uint64_t sub_224BA9338(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 32);

  v5 = sub_224CE7654(a2, v4);
  v6 = *(a1 + 32);
  *(a1 + 32) = v5;
}

uint64_t sub_224BA93A8()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 56);
  sub_224A3D418(*(v0 + 48));

  return swift_deallocClassInstance();
}

void sub_224BA9478()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  sub_224BA8F20(v1);
}

void *sub_224BA94A4()
{
  v17 = sub_224DAF3C8();
  v0 = *(v17 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v17);
  v3 = v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_224DAF318();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v6 = sub_224DAB848();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v15[1] = sub_224A3B79C(0, &qword_281350A70, 0x277D85C78);
  v15[4] = "adCount";
  sub_224DAB818();
  v18 = MEMORY[0x277D84F90];
  v15[3] = sub_224A80DE0(&qword_281350A88, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3470, qword_224DB38B0);
  sub_224A9B6A0(&qword_281350B90, &qword_27D6F3470, qword_224DB38B0);
  sub_224DAF788();
  v8 = *MEMORY[0x277D85260];
  v9 = v0 + 104;
  v10 = *(v0 + 104);
  v15[2] = v9;
  v10(v3, v8, v17);
  v16[2] = sub_224DAF418();
  sub_224DAB818();
  v18 = MEMORY[0x277D84F90];
  sub_224DAF788();
  v10(v3, v8, v17);
  v11 = sub_224DAF418();
  v12 = MEMORY[0x277D84FA0];
  v13 = v16;
  v16[3] = v11;
  v13[4] = v12;
  v13[6] = 0;
  v13[7] = 0;
  v13[5] = 0;
  return v13;
}

void sub_224BA97CC()
{
  v1 = v0;
  v64 = sub_224DAB7B8();
  v2 = *(v64 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v64);
  v63 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_224DAB848();
  v5 = *(v62 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v62);
  v61 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_224DAB8C8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = (&v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = v1[2];
  *v12 = v13;
  (*(v9 + 104))(v12, *MEMORY[0x277D85200], v8);
  v14 = v13;
  v15 = sub_224DAB8F8();
  (*(v9 + 8))(v12, v8);
  if (v15)
  {
    swift_beginAccess();
    v59 = (v2 + 8);
    v60 = v68;
    v58 = (v5 + 8);
    *&v16 = 136446210;
    v57 = v16;
    while (1)
    {
      v24 = v1[4];
      if ((v24 & 0xC000000000000001) != 0)
      {
        if (v24 < 0)
        {
          v25 = v1[4];
        }

        v26 = v1[4];

        v27 = sub_224DAF838();

        if (!v27)
        {
          return;
        }
      }

      else if (!*(v24 + 16))
      {
        return;
      }

      v28 = v1[5];
      if (qword_281354FF8 != -1)
      {
        swift_once();
      }

      if (v28 >= qword_281355000)
      {
        return;
      }

      v29 = v1[5];
      v30 = __OFADD__(v29, 1);
      v31 = v29 + 1;
      if (v30)
      {
        break;
      }

      v1[5] = v31;
      swift_beginAccess();
      v32 = v1[4];
      v33 = v32 & 0xC000000000000001;
      if ((v32 & 0xC000000000000001) != 0)
      {
        if (v32 < 0)
        {
          v34 = v1[4];
        }

        if (!sub_224DAF838())
        {
          goto LABEL_36;
        }

        v35 = sub_224DAF7D8();
        v37 = v36;
      }

      else
      {
        if (!*(v32 + 16))
        {
          goto LABEL_37;
        }

        v38 = 0;
        v39 = (v32 + 56);
        v35 = 1 << *(v32 + 32);
        v40 = (v35 + 63) >> 6;
        while (1)
        {
          v42 = *v39++;
          v41 = v42;
          if (v42)
          {
            break;
          }

          v38 -= 64;
          if (!--v40)
          {
            goto LABEL_25;
          }
        }

        v35 = __clz(__rbit64(v41)) - v38;
LABEL_25:
        v37 = *(v32 + 36);
      }

      sub_224BAA4A8(v35, v37, v33 != 0);
      v44 = v43;
      swift_endAccess();
      sub_224A3E204(v35, v37, v33 != 0);
      if (qword_2813516D0 != -1)
      {
        swift_once();
      }

      v45 = sub_224DAB258();
      __swift_project_value_buffer(v45, qword_281365138);
      v46 = v44;
      v47 = sub_224DAB228();
      v48 = sub_224DAF2A8();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        aBlock[0] = v50;
        *v49 = v57;
        v51 = [v46 succinctDescription];

        if (!v51)
        {
          goto LABEL_39;
        }

        v52 = sub_224DAEE18();
        v54 = v53;

        v55 = sub_224A33F74(v52, v54, aBlock);

        *(v49 + 4) = v55;
        _os_log_impl(&dword_224A2F000, v47, v48, "Precaching placeholders for %{public}s", v49, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v50);
        MEMORY[0x22AA5EED0](v50, -1, -1);
        MEMORY[0x22AA5EED0](v49, -1, -1);
      }

      else
      {
      }

      v56 = v1[6];
      if (v56)
      {
        v17 = v1[7];
        v65 = v1[3];
        v18 = swift_allocObject();
        v18[2] = v56;
        v18[3] = v17;
        v18[4] = v46;
        v18[5] = v1;
        v68[2] = sub_224BAA71C;
        v68[3] = v18;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        v68[0] = sub_224A39F40;
        v68[1] = &block_descriptor_20;
        v19 = _Block_copy(aBlock);
        sub_224A364AC(v56);
        v20 = v46;
        sub_224A364AC(v56);

        v21 = v61;
        sub_224DAB7E8();
        v66 = MEMORY[0x277D84F90];
        sub_224A80DE0(&qword_281350ED0, MEMORY[0x277D85198]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
        sub_224A9B6A0(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0);
        v23 = v63;
        v22 = v64;
        sub_224DAF788();
        MEMORY[0x22AA5D760](0, v21, v23, v19);
        _Block_release(v19);
        sub_224A3D418(v56);

        (*v59)(v23, v22);
        (*v58)(v21, v62);
      }

      else
      {
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
  }

  __break(1u);
LABEL_39:
  __break(1u);
}

uint64_t sub_224BA9ED4(void (*a1)(void *, uint64_t (*)(), uint64_t), uint64_t a2, void *a3, uint64_t a4)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a4;
  *(v7 + 24) = a3;

  a1(a3, sub_224BAA728, v7);
}

uint64_t sub_224BA9F70(uint64_t a1, void *a2)
{
  v4 = sub_224DAB7B8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_224DAB848();
  v9 = *(v18 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v18);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[1] = *(a1 + 16);
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  aBlock[4] = sub_224BAA770;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_224A39F40;
  aBlock[3] = &block_descriptor_29_0;
  v14 = _Block_copy(aBlock);

  v15 = a2;
  sub_224DAB7E8();
  v19 = MEMORY[0x277D84F90];
  sub_224A80DE0(&qword_281350ED0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
  sub_224A9B6A0(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0);
  sub_224DAF788();
  MEMORY[0x22AA5D760](0, v12, v8, v14);
  _Block_release(v14);
  (*(v5 + 8))(v8, v4);
  (*(v9 + 8))(v12, v18);
}

void sub_224BAA234(uint64_t a1, void *a2)
{
  v4 = *(a1 + 40);
  v5 = __OFSUB__(v4, 1);
  v6 = v4 - 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    v3 = a2;
    v2 = a1;
    *(a1 + 40) = v6;
    if (qword_2813516D0 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v7 = sub_224DAB258();
  __swift_project_value_buffer(v7, qword_281365138);
  swift_retain_n();
  v8 = v3;
  v9 = sub_224DAB228();
  v10 = sub_224DAF2A8();
  if (!os_log_type_enabled(v9, v10))
  {

LABEL_12:
    sub_224BA97CC(v24);
    return;
  }

  v11 = swift_slowAlloc();
  v12 = swift_slowAlloc();
  v25 = v12;
  *v11 = 136446722;
  v13 = [v8 succinctDescription];
  if (v13)
  {
    v14 = v13;

    v15 = sub_224DAEE18();
    v17 = v16;

    v18 = sub_224A33F74(v15, v17, &v25);

    *(v11 + 4) = v18;
    *(v11 + 12) = 2050;
    v19 = *(v2 + 40);

    *(v11 + 14) = v19;

    *(v11 + 22) = 2050;
    swift_beginAccess();
    v20 = *(v2 + 32);
    if ((v20 & 0xC000000000000001) != 0)
    {
      if (v20 < 0)
      {
        v21 = *(v2 + 32);
      }

      v22 = *(v2 + 32);

      v23 = sub_224DAF838();
    }

    else
    {
      v23 = *(v20 + 16);
    }

    *(v11 + 24) = v23;

    _os_log_impl(&dword_224A2F000, v9, v10, "Completed precaching placeholders for %{public}s; %{public}ld active reloads; %{public}ld pending descriptors", v11, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x22AA5EED0](v12, -1, -1);
    MEMORY[0x22AA5EED0](v11, -1, -1);

    goto LABEL_12;
  }

  __break(1u);
}

void sub_224BAA4A8(unint64_t a1, void *a2, char a3)
{
  v4 = a1;
  v5 = *v3;
  if ((*v3 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (v5 < 0)
      {
        v6 = *v3;
      }

      else
      {
        v6 = v5 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x22AA5DBB0](a1, a2, v6);
      sub_224A3B79C(0, &unk_2813509D0, 0x277CFA378);

      swift_dynamicCast();
      sub_224B0600C(v6, v19);

      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  v7 = a2;
  v8 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v3;
  if (a3)
  {
    v12 = v3;
    sub_224A3B79C(0, &unk_2813509D0, 0x277CFA378);
    if (sub_224DAF818() != *(v11 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_224DAF828();
    swift_dynamicCast();
    v7 = v19;
    v13 = *(v11 + 40);
    v3 = v19;
    v14 = sub_224DAF698();
    v15 = -1 << *(v11 + 32);
    v4 = v14 & ~v15;
    if ((*(v11 + 56 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
    {
      v16 = ~v15;
      do
      {
        v17 = *(*(v11 + 48) + 8 * v4);
        v3 = sub_224DAF6A8();

        if (v3)
        {
          goto LABEL_19;
        }

        v4 = (v4 + 1) & v16;
      }

      while (((*(v11 + 56 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
    }

    __break(1u);
  }

  if ((v4 & 0x8000000000000000) != 0 || 1 << *(v11 + 32) <= v4)
  {
    goto LABEL_24;
  }

  if (((*(v11 + 8 * (v4 >> 6) + 56) >> v4) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v12 = v3;
  if (*(v11 + 36) != v7)
  {
    __break(1u);
LABEL_19:
  }

  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_224AE4630();
  }

  v18 = *(*(v11 + 48) + 8 * v4);
  sub_224B065A0(v4);
  *v12 = v11;
}

uint64_t objectdestroy_22Tm()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_224BAA780(uint64_t a1)
{
  v1 = a1;
  v35 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_224DAF838();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v42 = MEMORY[0x277D84F90];
    sub_224A3DFD8(0, v2 & ~(v2 >> 63), 0);
    v37 = v42;
    if (v35)
    {
      v3 = sub_224DAF7D8();
    }

    else
    {
      v5 = -1 << *(v1 + 32);
      v3 = sub_224DAF798();
      v4 = *(v1 + 36);
    }

    v39 = v3;
    v40 = v4;
    v41 = v35 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v6 = 0;
      v33 = v1 + 56;
      v32 = v1 + 64;
      v34 = v2;
      while (v6 < v2)
      {
        if (__OFADD__(v6++, 1))
        {
          goto LABEL_35;
        }

        v9 = v39;
        v10 = v41;
        v36 = v40;
        v11 = v1;
        sub_224CB9ABC(v39, v40, v41, v1);
        v13 = v12;
        v14 = [v12 kind];
        v15 = sub_224DAEE18();
        v17 = v16;

        v18 = v37;
        v42 = v37;
        v20 = *(v37 + 16);
        v19 = *(v37 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_224A3DFD8((v19 > 1), v20 + 1, 1);
          v18 = v42;
        }

        *(v18 + 16) = v20 + 1;
        v21 = v18 + 16 * v20;
        *(v21 + 32) = v15;
        *(v21 + 40) = v17;
        v37 = v18;
        if (v35)
        {
          if (!v10)
          {
            goto LABEL_40;
          }

          v1 = v11;
          if (sub_224DAF7F8())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v34;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4A98, &qword_224DBF930);
          v7 = sub_224DAF1E8();
          sub_224DAF8A8();
          v7(v38, 0);
          if (v6 == v34)
          {
LABEL_32:
            sub_224A3E204(v39, v40, v41);
            return;
          }
        }

        else
        {
          if (v10)
          {
            goto LABEL_41;
          }

          if ((v9 & 0x8000000000000000) != 0)
          {
            goto LABEL_36;
          }

          v1 = v11;
          v22 = 1 << *(v11 + 32);
          if (v9 >= v22)
          {
            goto LABEL_36;
          }

          v23 = v9 >> 6;
          v24 = *(v33 + 8 * (v9 >> 6));
          if (((v24 >> v9) & 1) == 0)
          {
            goto LABEL_37;
          }

          if (*(v11 + 36) != v36)
          {
            goto LABEL_38;
          }

          v25 = v24 & (-2 << (v9 & 0x3F));
          if (v25)
          {
            v22 = __clz(__rbit64(v25)) | v9 & 0x7FFFFFFFFFFFFFC0;
            v2 = v34;
          }

          else
          {
            v26 = v23 << 6;
            v27 = v23 + 1;
            v28 = (v32 + 8 * v23);
            v2 = v34;
            while (v27 < (v22 + 63) >> 6)
            {
              v30 = *v28++;
              v29 = v30;
              v26 += 64;
              ++v27;
              if (v30)
              {
                sub_224A3E204(v9, v36, 0);
                v22 = __clz(__rbit64(v29)) + v26;
                goto LABEL_31;
              }
            }

            sub_224A3E204(v9, v36, 0);
          }

LABEL_31:
          v31 = *(v11 + 36);
          v39 = v22;
          v40 = v31;
          v41 = 0;
          if (v6 == v2)
          {
            goto LABEL_32;
          }
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }
}

uint64_t sub_224BAAAE8(void *a1, uint64_t a2)
{
  v256 = a1;
  v234 = sub_224DAB258();
  v232 = *(v234 - 8);
  v3 = *(v232 + 64);
  v4 = MEMORY[0x28223BE20](v234 - 8);
  v6 = &v224 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v224 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4808, &unk_224DB7990);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v243 = &v224 - v11;
  v258 = sub_224DAE4F8();
  v231 = *(v258 - 8);
  v12 = *(v231 + 64);
  v13 = MEMORY[0x28223BE20](v258);
  v239 = &v224 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v257 = &v224 - v15;
  v261 = sub_224DAC268();
  v247 = *(v261 - 8);
  v16 = *(v247 + 64);
  v17 = MEMORY[0x28223BE20](v261);
  v225 = &v224 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v224 = &v224 - v20;
  MEMORY[0x28223BE20](v19);
  v263 = &v224 - v21;
  v22 = sub_224DA022C(MEMORY[0x277D84F90]);
  v226 = v8;
  v227 = v6;
  if ((a2 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_224DAF7E8();
    sub_224A3B79C(0, &unk_2813509D0, 0x277CFA378);
    sub_224B07048();
    sub_224DAF1F8();
    a2 = v267;
    v23 = v268;
    v24 = v269;
    v25 = v270;
    v26 = v271;
  }

  else
  {
    v27 = -1 << *(a2 + 32);
    v23 = (a2 + 56);
    v24 = ~v27;
    v28 = -v27;
    if (v28 < 64)
    {
      v29 = ~(-1 << v28);
    }

    else
    {
      v29 = -1;
    }

    v26 = v29 & *(a2 + 56);

    v25 = 0;
  }

  v255 = v24;
  v30 = (v24 + 64) >> 6;
  v259 = v30;
  v260 = v23;
  while (a2 < 0)
  {
    v38 = sub_224DAF878();
    if (!v38)
    {
      goto LABEL_30;
    }

    v264 = v38;
    sub_224A3B79C(0, &unk_2813509D0, 0x277CFA378);
    swift_dynamicCast();
    v37 = v265;
    v35 = v25;
    v36 = v26;
    if (!v265)
    {
      goto LABEL_30;
    }

LABEL_19:
    v262 = v36;
    v39 = a2;
    v40 = [v37 kind];
    v41 = sub_224DAEE18();
    v43 = v42;

    v44 = v37;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v265 = v22;
    v47 = sub_224A3A40C(v41, v43);
    v48 = v22[2];
    v49 = (v46 & 1) == 0;
    v50 = v48 + v49;
    if (__OFADD__(v48, v49))
    {
      goto LABEL_127;
    }

    v51 = v46;
    if (v22[3] >= v50)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v46)
        {
          goto LABEL_8;
        }
      }

      else
      {
        sub_224B256DC();
        if (v51)
        {
          goto LABEL_8;
        }
      }
    }

    else
    {
      sub_224B0FBD8(v50, isUniquelyReferenced_nonNull_native);
      v52 = sub_224A3A40C(v41, v43);
      if ((v51 & 1) != (v53 & 1))
      {
        goto LABEL_135;
      }

      v47 = v52;
      if (v51)
      {
LABEL_8:

        v22 = v265;
        v31 = *(v265 + 56);
        v32 = *(v31 + 8 * v47);
        *(v31 + 8 * v47) = v44;

        goto LABEL_9;
      }
    }

    v22 = v265;
    *(v265 + 8 * (v47 >> 6) + 64) |= 1 << v47;
    v54 = (v22[6] + 16 * v47);
    *v54 = v41;
    v54[1] = v43;
    *(v22[7] + 8 * v47) = v44;

    v55 = v22[2];
    v56 = __OFADD__(v55, 1);
    v57 = v55 + 1;
    if (v56)
    {
      goto LABEL_132;
    }

    v22[2] = v57;
LABEL_9:
    v25 = v35;
    v26 = v262;
    a2 = v39;
    v30 = v259;
    v23 = v260;
  }

  v33 = v25;
  v34 = v26;
  v35 = v25;
  if (v26)
  {
LABEL_15:
    v36 = (v34 - 1) & v34;
    v37 = *(*(a2 + 48) + ((v35 << 9) | (8 * __clz(__rbit64(v34)))));
    if (!v37)
    {
      goto LABEL_30;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v35 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      __break(1u);
LABEL_123:
      __break(1u);
LABEL_124:
      __break(1u);
      goto LABEL_125;
    }

    if (v35 >= v30)
    {
      break;
    }

    v34 = v23[v35];
    ++v33;
    if (v34)
    {
      goto LABEL_15;
    }
  }

LABEL_30:
  sub_224A3B7E4();

  v59 = 0;
  v60 = sub_224BAF62C(v58, v22);

  v61 = 0;
  v63 = v60 + 64;
  v62 = *(v60 + 64);
  v233 = v60;
  v64 = 1 << *(v60 + 32);
  v65 = -1;
  if (v64 < 64)
  {
    v65 = ~(-1 << v64);
  }

  v66 = v65 & v62;
  v245 = (v249 + OBJC_IVAR____TtC10ChronoCore25PlaceholderReloadStrategy_cacheManager);
  v67 = (v64 + 63) >> 6;
  v246 = v247 + 16;
  v240 = (v231 + 48);
  v238 = (v231 + 32);
  v237 = (v231 + 16);
  v236 = (v231 + 8);
  v244 = (v247 + 8);
  v68 = MEMORY[0x277D84F98];
  v69 = MEMORY[0x277D84F98];
  v70 = MEMORY[0x277D84F98];
  v71 = MEMORY[0x277D84F98];
  v72 = MEMORY[0x277D84F98];
  v260 = MEMORY[0x277D84F98];
  v229 = v63;
  v228 = v67;
  if (!v66)
  {
    goto LABEL_33;
  }

LABEL_37:
  while (2)
  {
    v230 = v66;
    v74 = (v61 << 9) | (8 * __clz(__rbit64(v66)));
    v75 = *(*(v233 + 56) + v74);
    v76 = *(v75 + 16);
    v248 = *(*(v233 + 48) + v74);

    v241 = v76;
    if (v76)
    {
      v256 = v69;
      v77 = 0;
      v78 = v68;
      v69 = v72;
      v262 = v71;
      v235 = v75;
      while (1)
      {
        if (v77 >= *(v75 + 16))
        {
          goto LABEL_126;
        }

        v259 = v78;
        v250 = v69;
        v79 = v75 + ((*(v247 + 80) + 32) & ~*(v247 + 80));
        v80 = *(v247 + 72);
        v254 = v77;
        v81 = *(v247 + 16);
        v81(v263, v79 + v80 * v77, v261);
        v83 = *v245;
        v82 = v245[1];
        swift_getObjectType();
        v84 = *(v82 + 16);
        v85 = sub_224DAC438();
        v242 = v81;
        if (v59)
        {

          v259 = 0;

          v156 = 0;
          v157 = v250 + 8;
          v158 = 1 << *(v250 + 32);
          v159 = -1;
          if (v158 < 64)
          {
            v159 = ~(-1 << v158);
          }

          v160 = v159 & v250[8];
          v161 = (v158 + 63) >> 6;
          v260 = "holderReloadStrategy.swift";
          while (1)
          {
            v162 = v234;
            if (!v160)
            {
              break;
            }

            v163 = v156;
LABEL_98:
            v165 = __clz(__rbit64(v160));
            v160 &= v160 - 1;
            v166 = (v250[7] + ((v163 << 10) | (16 * v165)));
            v167 = *v166;
            v168 = v166[1];
            swift_getObjectType();
            v265 = 0;
            v266 = 0xE000000000000000;
            swift_unknownObjectRetain();
            sub_224DAF938();
            MEMORY[0x22AA5D210](0xD000000000000046, v260 | 0x8000000000000000);
            sub_224A79F60(&qword_281350E40, MEMORY[0x277CF9978]);
            v169 = sub_224DAFD28();
            MEMORY[0x22AA5D210](v169);

            sub_224DABD08();
            swift_unknownObjectRelease();
          }

          v164 = v261;
          while (1)
          {
            v163 = v156 + 1;
            if (__OFADD__(v156, 1))
            {
              goto LABEL_123;
            }

            if (v163 >= v161)
            {

              v170 = v232;
              v171 = v227;
              (*(v232 + 16))(v227, v249 + OBJC_IVAR____TtC10ChronoCore25PlaceholderReloadStrategy_logger, v162);
              v172 = v225;
              v242(v225, v263, v164);
              v173 = v248;
              v174 = sub_224DAB228();
              v175 = sub_224DAF288();

              if (os_log_type_enabled(v174, v175))
              {
                v176 = swift_slowAlloc();
                v177 = swift_slowAlloc();
                v260 = swift_slowAlloc();
                v265 = v260;
                *v176 = 138543618;
                *(v176 + 4) = v173;
                *v177 = v173;
                *(v176 + 12) = 2082;
                sub_224A79F60(&qword_281350E40, MEMORY[0x277CF9978]);
                v178 = v173;
                v179 = v173;
                v180 = sub_224DAFD28();
                v182 = v181;
                v183 = v172;
                v184 = *v244;
                (*v244)(v183, v261);
                v185 = sub_224A33F74(v180, v182, &v265);
                v173 = v178;

                *(v176 + 14) = v185;
                _os_log_impl(&dword_224A2F000, v174, v175, "%{public}@ Failed to get file handle from promise for key: %{public}s", v176, 0x16u);
                sub_224A3311C(v177, &unk_27D6F69F0, &unk_224DB3900);
                MEMORY[0x22AA5EED0](v177, -1, -1);
                v186 = v260;
                __swift_destroy_boxed_opaque_existential_1(v260);
                v164 = v261;
                MEMORY[0x22AA5EED0](v186, -1, -1);
                MEMORY[0x22AA5EED0](v176, -1, -1);

                (*(v170 + 8))(v227, v234);
              }

              else
              {

                v187 = v172;
                v184 = *v244;
                (*v244)(v187, v164);
                (*(v170 + 8))(v171, v162);
              }

              v188 = MEMORY[0x277D84F90];
              v71 = sub_224DA0240(MEMORY[0x277D84F90]);
              sub_224DA0268(v188);
              sub_224DA0290(v188);

              v184(v263, v164);
LABEL_120:

              return v71;
            }

            v160 = v157[v163];
            ++v156;
            if (v160)
            {
              v156 = v163;
              goto LABEL_98;
            }
          }
        }

        v87 = v85;
        v88 = v86;
        swift_getObjectType();
        v89 = sub_224DABCE8();
        v255 = 0;
        v253 = v89;
        v90 = *(v249 + 16);
        if (!v90)
        {

          v95 = v243;
          (*(v231 + 56))(v243, 1, 1, v258);
LABEL_105:
          sub_224A3311C(v95, &qword_27D6F4808, &unk_224DB7990);
          v265 = 0;
          v266 = 0xE000000000000000;
          sub_224DAF938();
          v258 = "der requests for key: ";
          MEMORY[0x22AA5D210](0xD000000000000041, 0x8000000224DC8D80);
          v259 = sub_224A79F60(&qword_281350E40, MEMORY[0x277CF9978]);
          v189 = sub_224DAFD28();
          MEMORY[0x22AA5D210](v189);

          sub_224DABD08();

          v190 = 0;
          v191 = v250 + 8;
          v192 = 1 << *(v250 + 32);
          v193 = -1;
          if (v192 < 64)
          {
            v193 = ~(-1 << v192);
          }

          v194 = v193 & v250[8];
          v195 = (v192 + 63) >> 6;
          while (1)
          {
            v196 = v232;
            if (!v194)
            {
              break;
            }

            v197 = v190;
LABEL_115:
            v199 = __clz(__rbit64(v194));
            v194 &= v194 - 1;
            v200 = (v250[7] + ((v197 << 10) | (16 * v199)));
            v201 = *v200;
            v260 = v200[1];
            swift_getObjectType();
            v265 = 0;
            v266 = 0xE000000000000000;
            swift_unknownObjectRetain();
            sub_224DAF938();
            MEMORY[0x22AA5D210](0xD000000000000041, v258 | 0x8000000000000000);
            v202 = sub_224DAFD28();
            MEMORY[0x22AA5D210](v202);

            sub_224DABD08();
            swift_unknownObjectRelease();
          }

          v198 = v261;
          while (1)
          {
            v197 = v190 + 1;
            if (__OFADD__(v190, 1))
            {
              goto LABEL_124;
            }

            if (v197 >= v195)
            {

              v203 = v226;
              v204 = v234;
              (*(v196 + 16))(v226, v249 + OBJC_IVAR____TtC10ChronoCore25PlaceholderReloadStrategy_logger, v234);
              v205 = v224;
              v242(v224, v263, v198);
              v206 = v248;
              v207 = v196;
              v208 = sub_224DAB228();
              v209 = sub_224DAF288();

              if (os_log_type_enabled(v208, v209))
              {
                v210 = swift_slowAlloc();
                v211 = swift_slowAlloc();
                v258 = v211;
                v260 = swift_slowAlloc();
                v265 = v260;
                *v210 = 138543618;
                *(v210 + 4) = v206;
                *v211 = v206;
                *(v210 + 12) = 2082;
                v212 = v206;
                v213 = sub_224DAFD28();
                v215 = v214;
                v216 = *v244;
                (*v244)(v205, v261);
                v217 = sub_224A33F74(v213, v215, &v265);

                *(v210 + 14) = v217;
                v218 = v209;
                v219 = v216;
                _os_log_impl(&dword_224A2F000, v208, v218, "%{public}@ Failed to get environment to start placeholder requests for key: %{public}s", v210, 0x16u);
                v220 = v258;
                sub_224A3311C(v258, &unk_27D6F69F0, &unk_224DB3900);
                MEMORY[0x22AA5EED0](v220, -1, -1);
                v221 = v260;
                __swift_destroy_boxed_opaque_existential_1(v260);
                MEMORY[0x22AA5EED0](v221, -1, -1);
                v198 = v261;
                MEMORY[0x22AA5EED0](v210, -1, -1);

                (*(v207 + 8))(v226, v234);
              }

              else
              {

                v219 = *v244;
                (*v244)(v205, v198);
                (*(v207 + 8))(v203, v204);
              }

              v222 = MEMORY[0x277D84F90];
              v71 = sub_224DA0240(MEMORY[0x277D84F90]);
              sub_224DA0268(v222);
              sub_224DA0290(v222);

              swift_unknownObjectRelease();

              v219(v263, v198);
              goto LABEL_120;
            }

            v194 = v191[v197];
            ++v190;
            if (v194)
            {
              v190 = v197;
              goto LABEL_115;
            }
          }
        }

        v251 = v88;
        v252 = v87;
        v91 = *(v249 + 24);

        v92 = v248;
        v93 = [v248 extensionIdentity];
        v94 = v243;
        v90();

        v95 = v94;
        sub_224A3D418(v90);
        v96 = v258;
        if ((*v240)(v94, 1, v258) == 1)
        {

          goto LABEL_105;
        }

        v97 = v257;
        (*v238)(v257, v95, v96);
        v98 = sub_224DAE8A8();
        v99 = [v92 extensionIdentity];
        v100 = [v92 kind];
        sub_224DAEE18();

        (*v237)(v239, v97, v96);
        v253 = v253;
        v250 = v98;
        v101 = sub_224DAE888();
        v102 = v262;
        v103 = v92;
        if (v262[2] && (v104 = sub_224B0B5D4(v92), (v105 & 1) != 0))
        {
          v265 = *(v102[7] + 8 * v104);
        }

        else
        {
          v265 = MEMORY[0x277D84F90];
        }

        v106 = v101;
        MEMORY[0x22AA5D350]();
        if (*((v265 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v265 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v121 = *((v265 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_224DAF038();
        }

        sub_224DAF078();
        v107 = v265;
        v108 = v103;
        v109 = swift_isUniquelyReferenced_nonNull_native();
        v264 = v70;
        v111 = sub_224B0B5D4(v108);
        v112 = v70[2];
        v113 = (v110 & 1) == 0;
        v114 = v112 + v113;
        if (__OFADD__(v112, v113))
        {
          goto LABEL_128;
        }

        v115 = v110;
        if (v70[3] >= v114)
        {
          if (v109)
          {
            v118 = v264;
            if (v110)
            {
              goto LABEL_58;
            }
          }

          else
          {
            sub_224B256C8();
            v118 = v264;
            if (v115)
            {
              goto LABEL_58;
            }
          }
        }

        else
        {
          sub_224B0FBB0(v114, v109);
          v116 = sub_224B0B5D4(v108);
          if ((v115 & 1) != (v117 & 1))
          {
            goto LABEL_134;
          }

          v111 = v116;
          v118 = v264;
          if (v115)
          {
LABEL_58:
            v119 = v118[7];
            v120 = *(v119 + 8 * v111);
            *(v119 + 8 * v111) = v107;

            goto LABEL_61;
          }
        }

        sub_224B24624(v111, v108, v107, v118);
LABEL_61:
        v122 = v106;
        v123 = v252;
        swift_unknownObjectRetain();
        v124 = v256;
        v125 = swift_isUniquelyReferenced_nonNull_native();
        v264 = v124;
        v126 = sub_224B0B580(v122);
        v128 = v124[2];
        v129 = (v127 & 1) == 0;
        v56 = __OFADD__(v128, v129);
        v130 = v128 + v129;
        v59 = v255;
        v131 = v260;
        if (v56)
        {
          goto LABEL_129;
        }

        v132 = v127;
        if (v124[3] < v130)
        {
          sub_224B0F93C(v130, v125);
          v126 = sub_224B0B580(v122);
          if ((v132 & 1) != (v133 & 1))
          {
            goto LABEL_133;
          }

LABEL_66:
          v69 = v264;
          if ((v132 & 1) == 0)
          {
            goto LABEL_69;
          }

          goto LABEL_67;
        }

        if (v125)
        {
          goto LABEL_66;
        }

        v137 = v126;
        sub_224B25550();
        v126 = v137;
        v69 = v264;
        if ((v132 & 1) == 0)
        {
LABEL_69:
          sub_224B245DC(v126, v122, v123, v251, v69);
          goto LABEL_70;
        }

LABEL_67:
        v134 = (v69[7] + 16 * v126);
        v135 = *v134;
        v136 = v251;
        *v134 = v123;
        v134[1] = v136;

        swift_unknownObjectRelease();
LABEL_70:
        v138 = sub_224DAC248();
        if ((v259 & 0xC000000000000001) != 0)
        {
          if (v259 < 0)
          {
            v139 = v259;
          }

          else
          {
            v139 = v259 & 0xFFFFFFFFFFFFFF8;
          }

          v140 = sub_224DAF838();
          if (__OFADD__(v140, 1))
          {
            goto LABEL_131;
          }

          v131 = sub_224D2C944(v139, v140 + 1);
        }

        v262 = v118;
        v141 = swift_isUniquelyReferenced_nonNull_native();
        v264 = v131;
        v142 = sub_224B0B580(v122);
        v144 = *(v131 + 16);
        v145 = (v143 & 1) == 0;
        v56 = __OFADD__(v144, v145);
        v146 = v144 + v145;
        if (v56)
        {
          goto LABEL_130;
        }

        v147 = v143;
        if (*(v131 + 24) >= v146)
        {
          if ((v141 & 1) == 0)
          {
            v154 = v142;
            sub_224B2553C();
            v142 = v154;
          }
        }

        else
        {
          sub_224B0F928(v146, v141);
          v142 = sub_224B0B580(v122);
          if ((v147 & 1) != (v148 & 1))
          {
            goto LABEL_133;
          }
        }

        v149 = v261;
        v150 = v253;
        v78 = v264;
        if (v147)
        {
          v151 = v264[7];
          v152 = v261;
          v153 = *(v151 + 8 * v142);
          *(v151 + 8 * v142) = v138;

          swift_unknownObjectRelease();
          v149 = v152;
        }

        else
        {
          sub_224B31514();
          swift_unknownObjectRelease();
        }

        v77 = v254 + 1;

        (*v236)(v257, v258);
        (*v244)(v263, v149);
        v71 = v262;
        v70 = v262;
        v256 = v69;
        v260 = v78;
        v72 = v69;
        v68 = v78;
        v75 = v235;
        if (v241 == v77)
        {
          goto LABEL_85;
        }
      }
    }

    v78 = v260;
    v262 = v70;
LABEL_85:
    v155 = (v230 - 1) & v230;

    v66 = v155;
    v260 = v78;
    v70 = v262;
    v63 = v229;
    v67 = v228;
    if (v155)
    {
      continue;
    }

    break;
  }

LABEL_33:
  while (1)
  {
    v73 = v61 + 1;
    if (__OFADD__(v61, 1))
    {
      break;
    }

    if (v73 >= v67)
    {

      return v71;
    }

    v66 = *(v63 + 8 * v73);
    ++v61;
    if (v66)
    {
      v61 = v73;
      goto LABEL_37;
    }
  }

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
  sub_224DAFDD8();
  __break(1u);
LABEL_134:
  sub_224A3B79C(0, &unk_2813509D0, 0x277CFA378);
  sub_224DAFDD8();
  __break(1u);
LABEL_135:
  result = sub_224DAFDD8();
  __break(1u);
  return result;
}