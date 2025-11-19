uint64_t sub_1D316607C()
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v4 = *v1;

  v5 = *(v2 + 184);
  v6 = *(v2 + 176);
  if (v0)
  {
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1D31661F8, 0, 0);
  }
}

uint64_t sub_1D31661F8()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  if ((v2 & 1) == 0)
  {
    sub_1D316529C(v1);
    sub_1D3166D7C(v1);
  }

  v3 = *(v0 + 136);
  if (v3)
  {
    v4 = *(v0 + 144);
    swift_beginAccess();
    v5 = *(v4 + 16);
    v6 = *(v0 + 168);
    if (v5)
    {
      v8 = *(v0 + 152);
      v7 = *(v0 + 160);
      v9 = *(v0 + 120);
      v23 = v9;
      v10 = *(*(v0 + 112) + OBJC_IVAR____TtC10Navigation29CommuteRouteRequestParameters_waypoints);
      v11 = sub_1D3277280();
      (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
      v12 = swift_allocObject();
      v12[2] = 0;
      v12[3] = 0;
      v12[4] = v3;
      v12[5] = v5;
      v12[6] = v8;
      v12[7] = v7;
      v12[8] = v10;
      v13 = v5;

      v14 = v3;

      sub_1D314F750(0, 0, v23, &unk_1D328C1A0, v12);
    }

    else
    {
    }
  }

  else
  {
    v15 = *(v0 + 168);
  }

  v17 = *(v0 + 152);
  v16 = *(v0 + 160);
  v18 = *(v0 + 144);

  v19 = *(v0 + 104);

  v20 = *(v0 + 120);

  v21 = *(v0 + 8);

  return v21(v1, v2);
}

unint64_t sub_1D3166424()
{
  result = qword_1EC75C7C8;
  if (!qword_1EC75C7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC75C7C8);
  }

  return result;
}

unint64_t sub_1D316647C()
{
  result = qword_1EC75C7D0;
  if (!qword_1EC75C7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC75C7D0);
  }

  return result;
}

unint64_t sub_1D31664D4()
{
  result = qword_1EC75C7D8;
  if (!qword_1EC75C7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC75C7D8);
  }

  return result;
}

unint64_t sub_1D316652C()
{
  result = qword_1EC75C7E0;
  if (!qword_1EC75C7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC75C7E0);
  }

  return result;
}

unint64_t sub_1D3166584()
{
  result = qword_1EC75C7E8;
  if (!qword_1EC75C7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC75C7E8);
  }

  return result;
}

unint64_t sub_1D31665DC()
{
  result = qword_1EC75C7F0;
  if (!qword_1EC75C7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC75C7F0);
  }

  return result;
}

void sub_1D3166668()
{
  sub_1D314A874();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t _s24CommuteRouteManagerErrorOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s24CommuteRouteManagerErrorOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1D316690C()
{
  result = sub_1D3276D30();
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

unint64_t sub_1D31669D0()
{
  result = qword_1EC75C958;
  if (!qword_1EC75C958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC75C958);
  }

  return result;
}

unint64_t sub_1D3166A24()
{
  result = qword_1EC75C968;
  if (!qword_1EC75C968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC75C968);
  }

  return result;
}

uint64_t sub_1D3166A78(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D3166AC0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_1D3166B14()
{
  result = qword_1EC75C990;
  if (!qword_1EC75C990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC75C990);
  }

  return result;
}

unint64_t sub_1D3166B68()
{
  result = qword_1EC75C9A0;
  if (!qword_1EC75C9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC75C9A0);
  }

  return result;
}

uint64_t sub_1D3166BC4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1D3125778;

  return sub_1D3160EC4(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1D3166CA0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1D3125778;

  return sub_1D3161804(a1, v4, v5, v6, v7, v8, v9, v10);
}

unint64_t sub_1D3166D88()
{
  result = qword_1EC75C9F8;
  if (!qword_1EC75C9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC75C9F8);
  }

  return result;
}

void sub_1D3166E14(void *a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v43 = MEMORY[0x1E69E7CC0];
  v7 = [a1 notification];
  v8 = &selRef_dateWithTimeInterval_sinceDate_;
  if (v7)
  {
    v9 = v7;
    if (qword_1EC75BFE8 != -1)
    {
      swift_once();
    }

    v10 = sub_1D3276F80();
    __swift_project_value_buffer(v10, qword_1EC75C750);
    v11 = v9;
    v12 = sub_1D3276F60();
    v13 = sub_1D32773B0();
    v14 = &selRef__stateTypeForState_;
    if (os_log_type_enabled(v12, v13))
    {
      v39 = ObjectType;
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v40 = v16;
      *v15 = 136315138;
      v17 = [v11 bannerId];

      if (!v17)
      {
        goto LABEL_18;
      }

      v18 = sub_1D32770C0();
      v20 = v19;

      v21 = sub_1D312BA30(v18, v20, &v40);

      *(v15 + 4) = v21;
      _os_log_impl(&dword_1D311E000, v12, v13, "Received new commute notification: %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x1D38B6000](v16, -1, -1);
      MEMORY[0x1D38B6000](v15, -1, -1);

      ObjectType = v39;
      v8 = &selRef_dateWithTimeInterval_sinceDate_;
      v14 = &selRef__stateTypeForState_;
    }

    else
    {
    }

    v22 = [v11 v14[274]];
    if (v22)
    {
      v23 = v22;
      v24 = sub_1D32770C0();
      v26 = v25;

      v27 = [v11 eventInfo];
      if (v27)
      {
        v28 = v27;
        v29 = sub_1D3276C80();
        v31 = v30;

        v32 = _s16NotificationInfoCMa();
        v33 = objc_allocWithZone(v32);
        v34 = &v33[OBJC_IVAR___MNCommuteRouteSetInternalNotificationInfo_bannerID];
        *v34 = v24;
        v34[1] = v26;
        v35 = &v33[OBJC_IVAR___MNCommuteRouteSetInternalNotificationInfo_eventInfo];
        *v35 = v29;
        v35[1] = v31;
        v41.receiver = v33;
        v41.super_class = v32;
        objc_msgSendSuper2(&v41, v8[422]);
        MEMORY[0x1D38B4040]();
        if (*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v43 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v38 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_1D32771B0();
        }

        sub_1D32771D0();

        goto LABEL_13;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_18:
    __break(1u);
    return;
  }

LABEL_13:
  if (a2)
  {
    v36 = *(a2 + OBJC_IVAR___MNCommuteRouteSetInternalInfo_displayedBannerInfo);

    sub_1D3140300(v37);
  }

  *&v3[OBJC_IVAR___MNCommuteRouteSetInternalInfo_displayedBannerInfo] = v43;
  v42.receiver = v3;
  v42.super_class = ObjectType;
  objc_msgSendSuper2(&v42, v8[422]);
}

uint64_t sub_1D3167140(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_1D31671D0(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1D3167294()
{
  result = qword_1EC75CA18;
  if (!qword_1EC75CA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC75CA18);
  }

  return result;
}

unint64_t sub_1D31672EC()
{
  result = qword_1EC75CA20;
  if (!qword_1EC75CA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC75CA20);
  }

  return result;
}

unint64_t sub_1D3167344()
{
  result = qword_1EC75CA28;
  if (!qword_1EC75CA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC75CA28);
  }

  return result;
}

uint64_t sub_1D31673F8()
{
  v1 = *(v0 + 16);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_1D3167498;
  v3 = *(v0 + 16);

  return sub_1D3167C08(v3);
}

uint64_t sub_1D3167498(uint64_t a1)
{
  v4 = *(*v2 + 24);
  v5 = *(*v2 + 16);
  v6 = *v2;
  *(v6 + 32) = v1;

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D31675F8, 0, 0);
  }

  else
  {
    v7 = *(v6 + 8);

    return v7(a1);
  }
}

uint64_t sub_1D31675F8()
{
  if (qword_1EC75BFF0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 32);
  v2 = sub_1D3276F80();
  __swift_project_value_buffer(v2, qword_1EC75CA30);
  v3 = v1;
  v4 = sub_1D3276F60();
  v5 = sub_1D3277390();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 32);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1D311E000, v4, v5, "Error requesting commute routes: %@", v8, 0xCu);
    sub_1D3168698(v9);
    MEMORY[0x1D38B6000](v9, -1, -1);
    MEMORY[0x1D38B6000](v8, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12(0);
}

void sub_1D3167790(uint64_t a1, void *a2, void *a3)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75CA48, &unk_1D328C328);
    sub_1D3277220();
  }

  else if (a2)
  {
    v6 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75CA48, &unk_1D328C328);
    sub_1D3277230();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1D3167840()
{
  sub_1D3277980();
  MEMORY[0x1D38B4850](0);
  return sub_1D32779B0();
}

uint64_t sub_1D31678AC()
{
  sub_1D3277980();
  MEMORY[0x1D38B4850](0);
  return sub_1D32779B0();
}

id sub_1D31678EC(void *a1)
{
  if (qword_1EC75BFF0 != -1)
  {
    swift_once();
  }

  v2 = sub_1D3276F80();
  __swift_project_value_buffer(v2, qword_1EC75CA30);
  v3 = sub_1D3276F60();
  v4 = sub_1D3277390();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1D311E000, v3, v4, "Connection to CommuteRouteServer interrupted.", v5, 2u);
    MEMORY[0x1D38B6000](v5, -1, -1);
  }

  return [a1 invalidate];
}

void sub_1D31679E4()
{
  if (qword_1EC75BFF0 != -1)
  {
    swift_once();
  }

  v0 = sub_1D3276F80();
  __swift_project_value_buffer(v0, qword_1EC75CA30);
  oslog = sub_1D3276F60();
  v1 = sub_1D3277390();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_1D311E000, oslog, v1, "Connection to CommuteRouteServer invalidated.", v2, 2u);
    MEMORY[0x1D38B6000](v2, -1, -1);
  }
}

id sub_1D3167ACC(void *a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a2 + 16);
  *(a2 + 16) = a1;

  return a1;
}

void sub_1D3167B20(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_1D3167B88()
{
  v0 = sub_1D3276F80();
  __swift_allocate_value_buffer(v0, qword_1EC75CA30);
  __swift_project_value_buffer(v0, qword_1EC75CA30);
  return sub_1D3276F70();
}

uint64_t sub_1D3167C08(uint64_t a1)
{
  v1[49] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75CA48, &unk_1D328C328);
  v1[50] = v2;
  v3 = *(v2 - 8);
  v1[51] = v3;
  v4 = *(v3 + 64) + 15;
  v1[52] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D3167CD4, 0, 0);
}

uint64_t sub_1D3167CD4()
{
  v1 = objc_allocWithZone(MEMORY[0x1E696B0B8]);
  v2 = sub_1D32770B0();
  v3 = [v1 initWithMachServiceName:v2 options:0];
  v0[53] = v3;

  v4 = [objc_opt_self() interfaceWithProtocol_];
  [v3 setRemoteObjectInterface_];

  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  v0[22] = sub_1D3168710;
  v0[23] = v5;
  v0[18] = MEMORY[0x1E69E9820];
  v0[19] = 1107296256;
  v0[20] = sub_1D3122E0C;
  v0[21] = &block_descriptor_5;
  v6 = _Block_copy(v0 + 18);
  v7 = v0[23];
  v8 = v3;

  [v8 setInterruptionHandler_];
  _Block_release(v6);
  v0[28] = sub_1D31679E4;
  v0[29] = 0;
  v0[24] = MEMORY[0x1E69E9820];
  v0[25] = 1107296256;
  v0[26] = sub_1D3122E0C;
  v0[27] = &block_descriptor_8;
  v9 = _Block_copy(v0 + 24);
  [v8 setInvalidationHandler_];
  _Block_release(v9);
  [v8 activate];
  v10 = swift_allocObject();
  v0[54] = v10;
  *(v10 + 16) = 0;
  v11 = (v10 + 16);
  v0[34] = sub_1D3168718;
  v0[35] = v10;
  v0[30] = MEMORY[0x1E69E9820];
  v0[31] = 1107296256;
  v0[32] = sub_1D3167B20;
  v0[33] = &block_descriptor_14_0;
  v12 = _Block_copy(v0 + 30);
  v13 = v0[35];

  v14 = [v8 remoteObjectProxyWithErrorHandler_];
  _Block_release(v12);
  sub_1D3277610();
  swift_unknownObjectRelease();
  swift_beginAccess();
  v15 = *v11;
  if (v15)
  {
    v16 = v15;
    if (qword_1EC75BFF0 != -1)
    {
      swift_once();
    }

    v17 = sub_1D3276F80();
    __swift_project_value_buffer(v17, qword_1EC75CA30);
    v18 = v15;
    v19 = sub_1D3276F60();
    v20 = sub_1D3277390();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138412290;
      v23 = v15;
      v24 = _swift_stdlib_bridgeErrorToNSError();
      *(v21 + 4) = v24;
      *v22 = v24;
      _os_log_impl(&dword_1D311E000, v19, v20, "Error getting remoteObjectProxy: %@", v21, 0xCu);
      sub_1D3168698(v22);
      MEMORY[0x1D38B6000](v22, -1, -1);
      MEMORY[0x1D38B6000](v21, -1, -1);
    }

LABEL_16:
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_0(v0 + 36);

    v34 = v0[53];
    [v34 setInvalidationHandler_];
    [v34 invalidate];

    v35 = v0[1];

    return v35();
  }

  sub_1D312BEE8((v0 + 36), (v0 + 40));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75CA50, &qword_1D328C338);
  if ((swift_dynamicCast() & 1) == 0)
  {
    if (qword_1EC75BFF0 != -1)
    {
      swift_once();
    }

    v30 = sub_1D3276F80();
    __swift_project_value_buffer(v30, qword_1EC75CA30);
    v31 = sub_1D3276F60();
    v32 = sub_1D3277390();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_1D311E000, v31, v32, "Unknown error getting remoteObjectProxy.", v33, 2u);
      MEMORY[0x1D38B6000](v33, -1, -1);
    }

    sub_1D3168720();
    swift_allocError();
    goto LABEL_16;
  }

  v25 = v0[51];
  v26 = v0[52];
  v27 = v0[50];
  v37 = v0[49];
  v28 = v0[47];
  v0[55] = v28;
  v0[2] = v0;
  v0[7] = (v0 + 48);
  v0[3] = sub_1D3168414;
  swift_continuation_init();
  v0[17] = v27;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 14);
  type metadata accessor for MNCommuteRouteSet(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C348, &qword_1D328ACD0);
  sub_1D3277210();
  (*(v25 + 32))(boxed_opaque_existential_1, v26, v27);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1D3167790;
  v0[13] = &block_descriptor_17;
  [v28 requestCommuteRoutesWith:v37 completionHandler:?];
  (*(v25 + 8))(boxed_opaque_existential_1, v27);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D3168414()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 448) = v2;
  if (v2)
  {
    v3 = sub_1D31685DC;
  }

  else
  {
    v3 = sub_1D3168524;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D3168524()
{
  v2 = v0[54];
  v1 = v0[55];
  v4 = v0[52];
  v3 = v0[53];
  v5 = v0[48];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v0 + 36);

  [v3 setInvalidationHandler_];
  [v3 invalidate];

  v6 = v0[1];

  return v6(v5);
}

uint64_t sub_1D31685DC()
{
  v1 = v0[55];
  v2 = v0[56];
  v3 = v0[54];
  swift_willThrow();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v0 + 36);

  v4 = v0[56];
  v5 = v0[53];
  [v5 setInvalidationHandler_];
  [v5 invalidate];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1D3168698(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C5B0, &unk_1D328C300);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D3168720()
{
  result = qword_1EC75CA58;
  if (!qword_1EC75CA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC75CA58);
  }

  return result;
}

unint64_t sub_1D31687A0()
{
  result = qword_1EC75CA60;
  if (!qword_1EC75CA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC75CA60);
  }

  return result;
}

uint64_t sub_1D3168838()
{
  v0 = sub_1D3276F80();
  __swift_allocate_value_buffer(v0, qword_1EC760740);
  __swift_project_value_buffer(v0, qword_1EC760740);
  return sub_1D3276F70();
}

uint64_t sub_1D31688E4()
{
  v0 = sub_1D3276F80();
  __swift_allocate_value_buffer(v0, qword_1EC760870);
  __swift_project_value_buffer(v0, qword_1EC760870);
  return sub_1D3276F70();
}

uint64_t sub_1D3168964()
{
  v0 = sub_1D3276F80();
  __swift_allocate_value_buffer(v0, qword_1EC760888);
  __swift_project_value_buffer(v0, qword_1EC760888);
  return sub_1D3276F70();
}

uint64_t sub_1D31689E4()
{
  v0 = sub_1D3276F80();
  __swift_allocate_value_buffer(v0, qword_1EC7608A0);
  __swift_project_value_buffer(v0, qword_1EC7608A0);
  return sub_1D3276F70();
}

uint64_t sub_1D3168A64()
{
  v0 = sub_1D3276F80();
  __swift_allocate_value_buffer(v0, qword_1EC760728);
  __swift_project_value_buffer(v0, qword_1EC760728);
  return sub_1D3276F70();
}

uint64_t sub_1D3168AE4()
{
  v0 = sub_1D3276F80();
  __swift_allocate_value_buffer(v0, qword_1EC7608B8);
  __swift_project_value_buffer(v0, qword_1EC7608B8);
  return sub_1D3276F70();
}

uint64_t sub_1D3168B64()
{
  v0 = sub_1D3276F80();
  __swift_allocate_value_buffer(v0, qword_1EC7608D0);
  __swift_project_value_buffer(v0, qword_1EC7608D0);
  return sub_1D3276F70();
}

uint64_t sub_1D3168C04(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1D3276F80();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_1D3276F70();
}

uint64_t sub_1D3168C7C()
{
  v0 = sub_1D3276F80();
  __swift_allocate_value_buffer(v0, qword_1EC760758);
  __swift_project_value_buffer(v0, qword_1EC760758);
  return sub_1D3276F70();
}

uint64_t sub_1D3168CF8()
{
  v0 = sub_1D3276F80();
  __swift_allocate_value_buffer(v0, qword_1EC760710);
  __swift_project_value_buffer(v0, qword_1EC760710);
  return sub_1D3276F70();
}

id static NavigationLocationManager.shared.getter()
{
  if (qword_1EC75BF68 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC75BF70;

  return v1;
}

Swift::Void __swiftcall NavigationLocationManager.push(_:)(MNLocation *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75CA68, &qword_1D328C420);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC75CA70, &qword_1D328C428);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v24 - v11;
  if (qword_1EC75BE68 != -1)
  {
    swift_once();
  }

  v13 = sub_1D3276F80();
  __swift_project_value_buffer(v13, qword_1EC760770);
  v14 = a1;
  v15 = sub_1D3276F60();
  v16 = sub_1D32773B0();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v17 = 138477827;
    *(v17 + 4) = v14;
    *v18 = v14;
    v19 = v14;
    _os_log_impl(&dword_1D311E000, v15, v16, "Pushing external location: %{private}@", v17, 0xCu);
    sub_1D3125FBC(v18, &qword_1EC75C5B0, &unk_1D328C300);
    MEMORY[0x1D38B6000](v18, -1, -1);
    MEMORY[0x1D38B6000](v17, -1, -1);
  }

  v20 = OBJC_IVAR___MNLocationManager__locationStreamContinuation;
  swift_beginAccess();
  v21 = 1;
  if (!(*(v5 + 48))(v2 + v20, 1, v4))
  {
    (*(v5 + 16))(v8, v2 + v20, v4);
    v24 = v14;
    v22 = v14;
    sub_1D32772A0();
    (*(v5 + 8))(v8, v4);
    v21 = 0;
  }

  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC75CA80, &unk_1D328C430);
  (*(*(v23 - 8) + 56))(v12, v21, 1, v23);
  sub_1D3125FBC(v12, &unk_1EC75CA70, &qword_1D328C428);
}

uint64_t LocationProviderType.description.getter(uint64_t a1)
{
  if (a1 <= 1)
  {
    if (!a1)
    {
      return 1701736270;
    }

    if (a1 == 1)
    {
      return 5460039;
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        return 0x646972627948;
      case 3:
        return 0x6563617254;
      case 4:
        return 0x6974616C756D6953;
    }
  }

  result = sub_1D3277900();
  __break(1u);
  return result;
}

uint64_t sub_1D31691E0()
{
  v1 = *v0;
  if (*v0 > 1)
  {
    switch(v1)
    {
      case 2:
        return 0x646972627948;
      case 3:
        return 0x6563617254;
      case 4:
        return 0x6974616C756D6953;
    }

    goto LABEL_13;
  }

  if (!v1)
  {
    return 1701736270;
  }

  if (v1 != 1)
  {
LABEL_13:
    v3 = *v0;
    result = sub_1D3277900();
    __break(1u);
    return result;
  }

  return 5460039;
}

id sub_1D3169304()
{
  result = [objc_allocWithZone(type metadata accessor for NavigationLocationManager()) init];
  qword_1EC75BF70 = result;
  return result;
}

id NavigationLocationManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void *NavigationLocationManager.lastLocation.getter()
{
  v1 = *(v0 + OBJC_IVAR___MNLocationManager__lastLocation);
  v2 = v1;
  return v1;
}

void *NavigationLocationManager.lastHeading.getter()
{
  v1 = *(v0 + OBJC_IVAR___MNLocationManager__lastHeading);
  v2 = v1;
  return v1;
}

double sub_1D3169410(uint64_t a1, uint64_t a2, SEL *a3)
{
  v3 = *(a1 + OBJC_IVAR___MNLocationManager__locationProvider);
  if (!v3)
  {
    return 1.0;
  }

  [v3 *a3];
  return result;
}

double sub_1D316943C(SEL *a1)
{
  if (!*(v1 + OBJC_IVAR___MNLocationManager__locationProvider))
  {
    return 1.0;
  }

  [*(v1 + OBJC_IVAR___MNLocationManager__locationProvider) *a1];
  return result;
}

id NavigationLocationManager.registerObserver(_:)(uint64_t a1)
{
  swift_getObjectType();

  return sub_1D316E9EC(a1, v1);
}

id NavigationLocationManager.unregisterObserver(_:)(uint64_t a1)
{
  swift_getObjectType();

  return sub_1D316EA08(a1, v1);
}

Swift::Void __swiftcall NavigationLocationManager.useGPSLocationProvider(with:)(MNLocationProviderCLParameters *with)
{
  v3 = *(v1 + OBJC_IVAR___MNLocationManager__locationProviderType);
  *(v1 + OBJC_IVAR___MNLocationManager__locationProviderType) = 1;
  sub_1D316B40C(v3);
  sub_1D32770C0();
  v4 = objc_allocWithZone(MNCoreLocationProvider);
  v5 = sub_1D32770B0();

  v6 = [v4 initWithEffectiveBundleIdentifier_];

  v7 = OBJC_IVAR___MNLocationManager__locationProvider;
  v8 = *(v1 + OBJC_IVAR___MNLocationManager__locationProvider);
  *(v1 + OBJC_IVAR___MNLocationManager__locationProvider) = v6;
  v9 = *(v1 + OBJC_IVAR___MNLocationManager__lastLocation);
  *(v1 + OBJC_IVAR___MNLocationManager__lastLocation) = 0;
  swift_unknownObjectRetain();
  v12 = v6;

  v10 = *(v1 + OBJC_IVAR___MNLocationManager__lastHeading);
  *(v1 + OBJC_IVAR___MNLocationManager__lastHeading) = 0;

  if (v8)
  {
    [swift_unknownObjectRetain() setDelegate_];
    [v8 stopUpdatingHeading];
    [v8 stopUpdatingLocation];
    swift_unknownObjectRelease();
  }

  v11 = *(v1 + v7);
  if (v11)
  {
    [v11 setDelegate_];
  }

  swift_unknownObjectRelease();
  if (v6)
  {
    [v12 setCLParameters_];
  }
}

Swift::Void __swiftcall NavigationLocationManager.useHybridLocationProvider()()
{
  sub_1D32770C0();
  v1 = objc_allocWithZone(MNHybridLocationProvider);
  v2 = sub_1D32770B0();

  v3 = [v1 initWithEffectiveBundleIdentifier_];

  if (v3)
  {
    v4 = swift_dynamicCastObjCProtocolConditional();
    if (v4)
    {
      v5 = v4;
      v6 = *(v0 + OBJC_IVAR___MNLocationManager__locationProviderType);
      *(v0 + OBJC_IVAR___MNLocationManager__locationProviderType) = 2;
      sub_1D316B40C(v6);
      v7 = OBJC_IVAR___MNLocationManager__locationProvider;
      v8 = *(v0 + OBJC_IVAR___MNLocationManager__locationProvider);
      *(v0 + OBJC_IVAR___MNLocationManager__locationProvider) = v5;
      v9 = *(v0 + OBJC_IVAR___MNLocationManager__lastLocation);
      *(v0 + OBJC_IVAR___MNLocationManager__lastLocation) = 0;
      v10 = v3;

      v11 = *(v0 + OBJC_IVAR___MNLocationManager__lastHeading);
      *(v0 + OBJC_IVAR___MNLocationManager__lastHeading) = 0;

      if (v8)
      {
        [swift_unknownObjectRetain() setDelegate_];
        [v8 stopUpdatingHeading];
        [v8 stopUpdatingLocation];
        swift_unknownObjectRelease();
      }

      v12 = *(v0 + v7);
      if (v12)
      {
        [v12 setDelegate_];
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

uint64_t sub_1D3169968(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + OBJC_IVAR___MNLocationManager__locationProviderType);
  *(v2 + OBJC_IVAR___MNLocationManager__locationProviderType) = a2;
  sub_1D316B40C(v4);
  v5 = OBJC_IVAR___MNLocationManager__locationProvider;
  v6 = *(v2 + OBJC_IVAR___MNLocationManager__locationProvider);
  *(v2 + OBJC_IVAR___MNLocationManager__locationProvider) = a1;
  v7 = *(v2 + OBJC_IVAR___MNLocationManager__lastLocation);
  *(v2 + OBJC_IVAR___MNLocationManager__lastLocation) = 0;
  swift_unknownObjectRetain();

  v8 = *(v2 + OBJC_IVAR___MNLocationManager__lastHeading);
  *(v2 + OBJC_IVAR___MNLocationManager__lastHeading) = 0;

  if (v6)
  {
    [swift_unknownObjectRetain() setDelegate_];
    [v6 stopUpdatingHeading];
    [v6 stopUpdatingLocation];
    swift_unknownObjectRelease();
  }

  v9 = *(v2 + v5);
  if (v9)
  {
    [v9 setDelegate_];
  }

  return swift_unknownObjectRelease();
}

void sub_1D3169A70(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_unknownObjectRetain();
  v7 = a1;
  a4(a3);
  swift_unknownObjectRelease();
}

Swift::Void __swiftcall NavigationLocationManager.stopAllUpdates()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC75CA90, &qword_1D328C440);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v26 - v3;
  v5 = OBJC_IVAR___MNLocationManager__locationStreamTask;
  if (*(v0 + OBJC_IVAR___MNLocationManager__locationStreamTask))
  {
    v6 = *(v0 + OBJC_IVAR___MNLocationManager__locationStreamTask);

    sub_1D32772E0();

    v7 = *(v0 + v5);
  }

  *(v0 + v5) = 0;

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75CA68, &qword_1D328C420);
  (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
  v9 = OBJC_IVAR___MNLocationManager__locationStreamContinuation;
  swift_beginAccess();
  sub_1D316F558(v4, v0 + v9, &unk_1EC75CA90, &qword_1D328C440);
  swift_endAccess();
  v10 = OBJC_IVAR___MNLocationManager__locationProvider;
  v11 = *(v0 + OBJC_IVAR___MNLocationManager__locationProvider);
  if (v11 && ([v11 stopUpdatingLocation], (v12 = *(v0 + v10)) != 0))
  {
    [v12 stopUpdatingHeading];
    v13 = *(v0 + v10);
  }

  else
  {
    v13 = 0;
  }

  *(v0 + v10) = 0;
  v14 = OBJC_IVAR___MNLocationManager__lastLocation;
  v15 = *(v0 + OBJC_IVAR___MNLocationManager__lastLocation);
  *(v0 + OBJC_IVAR___MNLocationManager__lastLocation) = 0;

  v16 = OBJC_IVAR___MNLocationManager__lastHeading;
  v17 = *(v0 + OBJC_IVAR___MNLocationManager__lastHeading);
  *(v0 + OBJC_IVAR___MNLocationManager__lastHeading) = 0;

  if (v13)
  {
    [swift_unknownObjectRetain() setDelegate_];
    [v13 stopUpdatingHeading];
    [v13 stopUpdatingLocation];
    swift_unknownObjectRelease();
  }

  v18 = *(v0 + v10);
  if (v18)
  {
    [v18 setDelegate_];
  }

  swift_unknownObjectRelease();
  v19 = *(v0 + OBJC_IVAR___MNLocationManager__locationProviderType);
  *(v0 + OBJC_IVAR___MNLocationManager__locationProviderType) = 0;
  sub_1D316B40C(v19);
  v20 = *(v0 + v14);
  *(v0 + v14) = 0;

  v21 = *(v0 + v16);
  *(v0 + v16) = 0;

  if (qword_1EC75BE68 != -1)
  {
    swift_once();
  }

  v22 = sub_1D3276F80();
  __swift_project_value_buffer(v22, qword_1EC760770);
  v23 = sub_1D3276F60();
  v24 = sub_1D32773B0();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_1D311E000, v23, v24, "Stopped updating all updates.", v25, 2u);
    MEMORY[0x1D38B6000](v25, -1, -1);
  }
}

Swift::Void __swiftcall NavigationLocationManager.startUpdatingLocation()()
{
  if (!*(v0 + OBJC_IVAR___MNLocationManager__locationStreamTask) || (v1 = *(v0 + OBJC_IVAR___MNLocationManager__locationStreamTask), , isCancelled = swift_task_isCancelled(), , (isCancelled & 1) != 0))
  {
    v3 = *(v0 + OBJC_IVAR___MNLocationManager__locationProvider);
    if (v3)
    {
      v4 = objc_opt_self();
      v5 = @"com.apple.Maps";
      swift_unknownObjectRetain();
      v6 = sub_1D32770B0();
      v7 = [v4 newAssertionForBundleIdentifier:@"com.apple.Maps" withReason:v6 level:1];

      if (!v7)
      {
        __break(1u);
        return;
      }

      v8 = *(v0 + OBJC_IVAR___MNLocationManager__inUseAssertion);
      *(v0 + OBJC_IVAR___MNLocationManager__inUseAssertion) = v7;

      [v3 startUpdatingLocation];
      if ([v3 isAuthorized])
      {
        swift_unknownObjectRelease();
      }

      else
      {
        if (qword_1EC75BE68 != -1)
        {
          swift_once();
        }

        v9 = sub_1D3276F80();
        __swift_project_value_buffer(v9, qword_1EC760770);
        v10 = sub_1D3276F60();
        v11 = sub_1D3277390();
        if (os_log_type_enabled(v10, v11))
        {
          v12 = swift_slowAlloc();
          *v12 = 0;
          _os_log_impl(&dword_1D311E000, v10, v11, "Can't start location updates because location authorization is not granted.", v12, 2u);
          MEMORY[0x1D38B6000](v12, -1, -1);
        }

        swift_unknownObjectRelease();
      }
    }

    sub_1D316A108();
    if (qword_1EC75BE68 != -1)
    {
      swift_once();
    }

    v13 = sub_1D3276F80();
    __swift_project_value_buffer(v13, qword_1EC760770);
    oslog = sub_1D3276F60();
    v14 = sub_1D32773B0();
    if (os_log_type_enabled(oslog, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1D311E000, oslog, v14, "Started updating locations with async stream.", v15, 2u);
      MEMORY[0x1D38B6000](v15, -1, -1);
    }
  }
}

uint64_t sub_1D316A108()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C5F0, &qword_1D328C5F0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v26 = &v25 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75CB38, &qword_1D328C5F8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v25 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC75CB40, &qword_1D328C600);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v25 - v14;
  v27 = v0;
  sub_1D3123910();
  (*(v5 + 104))(v8, *MEMORY[0x1E69E8650], v4);
  sub_1D32772D0();
  v16 = sub_1D3277280();
  v17 = v26;
  (*(*(v16 - 8) + 56))(v26, 1, 1, v16);
  (*(v10 + 16))(v13, v15, v9);
  v18 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v19 = (v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  *(v20 + 24) = 0;
  (*(v10 + 32))(v20 + v18, v13, v9);
  *(v20 + v19) = v0;
  v21 = v0;
  v22 = sub_1D314F750(0, 0, v17, &unk_1D328C610, v20);
  (*(v10 + 8))(v15, v9);
  v23 = *&v21[OBJC_IVAR___MNLocationManager__locationStreamTask];
  *&v21[OBJC_IVAR___MNLocationManager__locationStreamTask] = v22;
}

Swift::Void __swiftcall NavigationLocationManager.stopUpdatingLocation()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC75CA90, &qword_1D328C440);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v21 - v3;
  v5 = OBJC_IVAR___MNLocationManager__locationStreamTask;
  if (*(v0 + OBJC_IVAR___MNLocationManager__locationStreamTask))
  {
    v6 = *(v0 + OBJC_IVAR___MNLocationManager__locationStreamTask);

    isCancelled = swift_task_isCancelled();

    if ((isCancelled & 1) == 0)
    {
      if (*(v0 + v5))
      {
        v8 = *(v0 + v5);

        sub_1D32772E0();

        v9 = *(v0 + v5);
      }

      *(v0 + v5) = 0;

      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75CA68, &qword_1D328C420);
      (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
      v11 = OBJC_IVAR___MNLocationManager__locationStreamContinuation;
      swift_beginAccess();
      sub_1D316F558(v4, v0 + v11, &unk_1EC75CA90, &qword_1D328C440);
      swift_endAccess();
      v12 = OBJC_IVAR___MNLocationManager__inUseAssertion;
      v13 = *(v0 + OBJC_IVAR___MNLocationManager__inUseAssertion);
      if (v13)
      {
        [v13 invalidate];
        v14 = *(v0 + v12);
      }

      else
      {
        v14 = 0;
      }

      *(v0 + v12) = 0;

      v15 = *(v0 + OBJC_IVAR___MNLocationManager__locationProvider);
      if (v15)
      {
        [v15 stopUpdatingLocation];
      }

      v16 = *(v0 + OBJC_IVAR___MNLocationManager__lastLocation);
      *(v0 + OBJC_IVAR___MNLocationManager__lastLocation) = 0;

      if (qword_1EC75BE68 != -1)
      {
        swift_once();
      }

      v17 = sub_1D3276F80();
      __swift_project_value_buffer(v17, qword_1EC760770);
      v18 = sub_1D3276F60();
      v19 = sub_1D32773B0();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&dword_1D311E000, v18, v19, "Stopped updating locations.", v20, 2u);
        MEMORY[0x1D38B6000](v20, -1, -1);
      }
    }
  }
}

uint64_t NavigationLocationManager.locationCorrector.getter()
{
  v1 = (v0 + OBJC_IVAR___MNLocationManager_locationCorrector);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];
  sub_1D313B234(v3);
  return v3;
}

id sub_1D316A89C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v6 = v4();

  return v6;
}

uint64_t NavigationLocationManager.locationCorrector.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___MNLocationManager_locationCorrector);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_1D316EA24(v6);
}

uint64_t sub_1D316AA24@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR___MNLocationManager_locationCorrector);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1D316F524;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1D313B234(v4);
}

uint64_t sub_1D316AAC4(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1D316F4E4;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR___MNLocationManager_locationCorrector);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_1D313B234(v3);
  return sub_1D316EA24(v8);
}

uint64_t NavigationLocationManager.locationRecorder.getter()
{
  v1 = OBJC_IVAR___MNLocationManager_locationRecorder;
  swift_beginAccess();
  v2 = *(v0 + v1);
  return swift_unknownObjectRetain();
}

uint64_t NavigationLocationManager.locationRecorder.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___MNLocationManager_locationRecorder;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

Swift::Void __swiftcall NavigationLocationManager.startUpdatingHeading()()
{
  if (*(v0 + OBJC_IVAR___MNLocationManager__locationProvider))
  {
    v1 = *(v0 + OBJC_IVAR___MNLocationManager__locationProvider);
    [swift_unknownObjectRetain() startUpdatingHeading];
    if (qword_1EC75BE68 != -1)
    {
      swift_once();
    }

    v2 = sub_1D3276F80();
    __swift_project_value_buffer(v2, qword_1EC760770);
    oslog = sub_1D3276F60();
    v3 = sub_1D32773B0();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_1D311E000, oslog, v3, "Started updating heading.", v4, 2u);
      MEMORY[0x1D38B6000](v4, -1, -1);
    }

    swift_unknownObjectRelease();
  }
}

Swift::Void __swiftcall NavigationLocationManager.stopUpdatingHeading()()
{
  v1 = v0;
  if (*(v0 + OBJC_IVAR___MNLocationManager__locationProvider))
  {
    v2 = *(v0 + OBJC_IVAR___MNLocationManager__locationProvider);
    [swift_unknownObjectRetain() stopUpdatingHeading];
    if (qword_1EC75BE68 != -1)
    {
      swift_once();
    }

    v3 = sub_1D3276F80();
    __swift_project_value_buffer(v3, qword_1EC760770);
    v4 = sub_1D3276F60();
    v5 = sub_1D32773B0();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1D311E000, v4, v5, "Stopped updating heading.", v6, 2u);
      MEMORY[0x1D38B6000](v6, -1, -1);
    }

    swift_unknownObjectRelease();
  }

  v7 = *(v1 + OBJC_IVAR___MNLocationManager__lastHeading);
  *(v1 + OBJC_IVAR___MNLocationManager__lastHeading) = 0;
}

void sub_1D316B1FC(void *a1, SEL *a2, const char *a3)
{
  if (*(v3 + OBJC_IVAR___MNLocationManager__locationProvider))
  {
    v6 = *(v3 + OBJC_IVAR___MNLocationManager__locationProvider);
    [swift_unknownObjectRetain() *a2];
    if (qword_1EC75BE68 != -1)
    {
      swift_once();
    }

    v7 = sub_1D3276F80();
    __swift_project_value_buffer(v7, qword_1EC760770);
    v8 = a1;
    oslog = sub_1D3276F60();
    v9 = sub_1D32773B0();

    if (os_log_type_enabled(oslog, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      *(v10 + 4) = v8;
      *v11 = a1;
      v12 = v8;
      _os_log_impl(&dword_1D311E000, oslog, v9, a3, v10, 0xCu);
      sub_1D3125FBC(v11, &qword_1EC75C5B0, &unk_1D328C300);
      MEMORY[0x1D38B6000](v11, -1, -1);
      MEMORY[0x1D38B6000](v10, -1, -1);
    }

    swift_unknownObjectRelease();
  }
}

void sub_1D316B40C(uint64_t a1)
{
  v2 = OBJC_IVAR___MNLocationManager__locationProviderType;
  if (*&v1[OBJC_IVAR___MNLocationManager__locationProviderType] != a1)
  {
    v3 = v1;
    if (qword_1EC75BE68 != -1)
    {
      swift_once();
    }

    v4 = sub_1D3276F80();
    __swift_project_value_buffer(v4, qword_1EC760770);
    v5 = v1;
    oslog = sub_1D3276F60();
    v6 = sub_1D32773B0();
    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v14 = v8;
      *v7 = 136315138;
      v9 = *&v3[v2];

      if (v9 <= 1)
      {
        if (!v9)
        {
          v10 = 0xE400000000000000;
          v11 = 1701736270;
          goto LABEL_19;
        }

        if (v9 == 1)
        {
          v10 = 0xE300000000000000;
          v11 = 5460039;
          goto LABEL_19;
        }
      }

      else
      {
        switch(v9)
        {
          case 2:
            v10 = 0xE600000000000000;
            v11 = 0x646972627948;
            goto LABEL_19;
          case 3:
            v10 = 0xE500000000000000;
            v11 = 0x6563617254;
LABEL_19:
            v12 = sub_1D312BA30(v11, v10, &v14);

            *(v7 + 4) = v12;
            _os_log_impl(&dword_1D311E000, oslog, v6, "LocationManager set provider type to %s.", v7, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v8);
            MEMORY[0x1D38B6000](v8, -1, -1);
            MEMORY[0x1D38B6000](v7, -1, -1);

            return;
          case 4:
            v10 = 0xEA00000000006E6FLL;
            v11 = 0x6974616C756D6953;
            goto LABEL_19;
        }
      }

      sub_1D3277900();
      __break(1u);
      return;
    }
  }
}

id sub_1D316B650()
{
  v1 = OBJC_IVAR___MNLocationManager____lazy_storage____locationShifter;
  v2 = *(v0 + OBJC_IVAR___MNLocationManager____lazy_storage____locationShifter);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___MNLocationManager____lazy_storage____locationShifter);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69A1E80]) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id NavigationLocationManager.init()()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR___MNLocationManager__lastHeadingDate;
  v3 = sub_1D3276D30();
  (*(*(v3 - 8) + 56))(&v0[v2], 1, 1, v3);
  v4 = &v0[OBJC_IVAR___MNLocationManager_locationCorrector];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = &v0[OBJC_IVAR___MNLocationManager_mapMatchingProvider];
  *v5 = 0u;
  *(v5 + 1) = 0u;
  *(v5 + 4) = 0;
  *&v0[OBJC_IVAR___MNLocationManager_locationRecorder] = 0;
  *&v0[OBJC_IVAR___MNLocationManager__lastLocation] = 0;
  *&v0[OBJC_IVAR___MNLocationManager__lastHeading] = 0;
  v6 = &unk_1F4EFAF50;
  result = MNNavigationQueue();
  if (result)
  {
    v8 = result;
    v9 = OBJC_IVAR___MNLocationManager__observers;
    v10 = [objc_allocWithZone(MEMORY[0x1E69A22D8]) initWithProtocol:v6 queue:result];

    *&v0[v9] = v10;
    *&v0[OBJC_IVAR___MNLocationManager__locationProvider] = 0;
    v11 = OBJC_IVAR___MNLocationManager__locationStreamContinuation;
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75CA68, &qword_1D328C420);
    (*(*(v12 - 8) + 56))(&v0[v11], 1, 1, v12);
    *&v0[OBJC_IVAR___MNLocationManager__locationStreamTask] = 0;
    *&v0[OBJC_IVAR___MNLocationManager__locationProviderType] = 0;
    *&v0[OBJC_IVAR___MNLocationManager____lazy_storage____locationShifter] = 0;
    *&v0[OBJC_IVAR___MNLocationManager__inUseAssertion] = 0;
    v13.receiver = v0;
    v13.super_class = ObjectType;
    return objc_msgSendSuper2(&v13, sel_init);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id NavigationLocationManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D316BA18(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC75CA90, &qword_1D328C440);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v12 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75CA68, &qword_1D328C420);
  v9 = *(v8 - 8);
  (*(v9 + 16))(v7, a1, v8);
  (*(v9 + 56))(v7, 0, 1, v8);
  v10 = OBJC_IVAR___MNLocationManager__locationStreamContinuation;
  swift_beginAccess();
  sub_1D316F558(v7, a2 + v10, &unk_1EC75CA90, &qword_1D328C440);
  swift_endAccess();
  return sub_1D3277290();
}

void sub_1D316BB88()
{
  if (qword_1EC75BE68 != -1)
  {
    swift_once();
  }

  v0 = sub_1D3276F80();
  __swift_project_value_buffer(v0, qword_1EC760770);
  oslog = sub_1D3276F60();
  v1 = sub_1D3277380();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_1D311E000, oslog, v1, "AsyncStream continuation terminated.", v2, 2u);
    MEMORY[0x1D38B6000](v2, -1, -1);
  }
}

uint64_t sub_1D316BC70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[29] = a4;
  v5[30] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75CB50, &qword_1D328C618);
  v5[31] = v6;
  v7 = *(v6 - 8);
  v5[32] = v7;
  v8 = *(v7 + 64) + 15;
  v5[33] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D316BD3C, 0, 0);
}

uint64_t sub_1D316BD3C()
{
  v1 = v0[33];
  v2 = v0[29];
  v3 = v0[30];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC75CB40, &qword_1D328C600);
  sub_1D32772B0();
  v4 = OBJC_IVAR___MNLocationManager_locationCorrector;
  v0[34] = OBJC_IVAR___MNLocationManager_mapMatchingProvider;
  v0[35] = v4;
  v5 = OBJC_IVAR___MNLocationManager__lastLocation;
  v0[36] = OBJC_IVAR___MNLocationManager_locationRecorder;
  v0[37] = v5;
  v0[38] = OBJC_IVAR___MNLocationManager__observers;
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  v6 = *(MEMORY[0x1E69E8678] + 4);
  v7 = swift_task_alloc();
  v0[39] = v7;
  *v7 = v0;
  v7[1] = sub_1D316BE80;
  v8 = v0[33];
  v9 = v0[31];

  return MEMORY[0x1EEE6D9C8](v0 + 27, 0, 0, v9);
}

uint64_t sub_1D316BE80()
{
  v1 = *(*v0 + 312);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1D316BF7C, 0, 0);
}

uint64_t sub_1D316BF7C()
{
  v1 = v0[27];
  v0[40] = v1;
  if (v1)
  {
    v2 = swift_task_alloc();
    v0[41] = v2;
    *v2 = v0;
    v2[1] = sub_1D316C070;
    v3 = v0[30];

    return sub_1D316CBB4(v1);
  }

  else
  {
    (*(v0[32] + 8))(v0[33], v0[31]);

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_1D316C070(uint64_t a1)
{
  v2 = *(*v1 + 328);
  v4 = *v1;
  *(*v1 + 336) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D316C170, 0, 0);
}

uint64_t sub_1D316C170()
{
  v1 = v0[34];
  v2 = v0[30];
  v3 = v0[42];
  sub_1D312601C(v2 + v1, (v0 + 13), &unk_1EC75CB28, &qword_1D328CFC0);
  if (v0[16])
  {
    sub_1D3152AD0((v0 + 13), (v0 + 8));
    v4 = v0[11];
    v5 = v0[12];
    __swift_project_boxed_opaque_existential_1(v0 + 8, v4);
    v6 = *(v5 + 8);
    v40 = (v6 + *v6);
    v7 = v6[1];
    v8 = swift_task_alloc();
    v0[43] = v8;
    *v8 = v0;
    v8[1] = sub_1D316C5BC;
    v9 = v0[42];
    v10 = v0[30];

    return v40(v10, v9, v4, v5);
  }

  else
  {
    v12 = v0[35];
    v13 = v0[30];
    sub_1D3125FBC((v0 + 13), &unk_1EC75CB28, &qword_1D328CFC0);
    v14 = *(v13 + v12);
    v0[45] = v14;
    v15 = v0[30];
    if (v14)
    {
      v16 = v0[42];
      v17 = *(v15 + v0[35] + 8);
      v0[46] = v17;
      v18 = swift_task_alloc();
      v0[47] = v18;
      v18[2] = v14;
      v18[3] = v17;
      v18[4] = v16;
      v19 = *(MEMORY[0x1E69E88D0] + 4);

      v20 = swift_task_alloc();
      v0[48] = v20;
      v21 = sub_1D3123910();
      *v20 = v0;
      v20[1] = sub_1D316C8AC;

      return MEMORY[0x1EEE6DDE0](v0 + 28, 0, 0, 0xD000000000000018, 0x80000001D328FCA0, sub_1D316F784, v18, v21);
    }

    else
    {
      v22 = v0[42];
      v23 = v0[36];

      [v22 _navigation_setGtLog_];
      v24 = *(v15 + v23);
      if (v24)
      {
        [v24 recordLocation:v22 rawLocation:v0[40]];
      }

      v25 = v0[40];
      v26 = v0[37];
      v27 = v0[38];
      v28 = v0[30];
      v29 = *&v28[v26];
      *&v28[v26] = v22;
      v30 = v22;

      v31 = *&v28[v27];
      v32 = swift_allocObject();
      *(v32 + 16) = v28;
      *(v32 + 24) = v30;
      v0[6] = sub_1D316F774;
      v0[7] = v32;
      v0[2] = MEMORY[0x1E69E9820];
      v0[3] = 1107296256;
      v0[4] = sub_1D316D240;
      v0[5] = &block_descriptor_53;
      v33 = _Block_copy(v0 + 2);
      v34 = v0[7];
      v35 = v28;

      [v31 enumerateObserversWithGroup:0 visitor:v33];
      _Block_release(v33);

      v36 = *(MEMORY[0x1E69E8678] + 4);
      v37 = swift_task_alloc();
      v0[39] = v37;
      *v37 = v0;
      v37[1] = sub_1D316BE80;
      v38 = v0[33];
      v39 = v0[31];

      return MEMORY[0x1EEE6D9C8](v0 + 27, 0, 0, v39);
    }
  }
}

uint64_t sub_1D316C5BC(uint64_t a1)
{
  v2 = *(*v1 + 344);
  v4 = *v1;
  *(*v1 + 352) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D316C6BC, 0, 0);
}

uint64_t sub_1D316C6BC()
{
  v1 = v0[42];
  __swift_destroy_boxed_opaque_existential_0(v0 + 8);

  v2 = v0[44];
  v3 = v0[36];
  v4 = v0[30];

  [v2 _navigation_setGtLog_];
  v5 = *(v4 + v3);
  if (v5)
  {
    [v5 recordLocation:v2 rawLocation:v0[40]];
  }

  v6 = v0[40];
  v7 = v0[37];
  v8 = v0[38];
  v9 = v0[30];
  v10 = *&v9[v7];
  *&v9[v7] = v2;
  v11 = v2;

  v12 = *&v9[v8];
  v13 = swift_allocObject();
  *(v13 + 16) = v9;
  *(v13 + 24) = v11;
  v0[6] = sub_1D316F774;
  v0[7] = v13;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1D316D240;
  v0[5] = &block_descriptor_53;
  v14 = _Block_copy(v0 + 2);
  v15 = v0[7];
  v16 = v9;

  [v12 enumerateObserversWithGroup:0 visitor:v14];
  _Block_release(v14);

  v17 = *(MEMORY[0x1E69E8678] + 4);
  v18 = swift_task_alloc();
  v0[39] = v18;
  *v18 = v0;
  v18[1] = sub_1D316BE80;
  v19 = v0[33];
  v20 = v0[31];

  return MEMORY[0x1EEE6D9C8](v0 + 27, 0, 0, v20);
}

uint64_t sub_1D316C8AC()
{
  v1 = *(*v0 + 384);
  v2 = *(*v0 + 376);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1D316C9C4, 0, 0);
}

uint64_t sub_1D316C9C4()
{
  v1 = v0[46];
  v2 = v0[42];
  sub_1D316EA24(v0[45]);

  v3 = v0[28];
  v4 = v0[36];
  v5 = v0[30];

  [v3 _navigation_setGtLog_];
  v6 = *(v5 + v4);
  if (v6)
  {
    [v6 recordLocation:v3 rawLocation:v0[40]];
  }

  v7 = v0[40];
  v8 = v0[37];
  v9 = v0[38];
  v10 = v0[30];
  v11 = *&v10[v8];
  *&v10[v8] = v3;
  v12 = v3;

  v13 = *&v10[v9];
  v14 = swift_allocObject();
  *(v14 + 16) = v10;
  *(v14 + 24) = v12;
  v0[6] = sub_1D316F774;
  v0[7] = v14;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1D316D240;
  v0[5] = &block_descriptor_53;
  v15 = _Block_copy(v0 + 2);
  v16 = v0[7];
  v17 = v10;

  [v13 enumerateObserversWithGroup:0 visitor:v15];
  _Block_release(v15);

  v18 = *(MEMORY[0x1E69E8678] + 4);
  v19 = swift_task_alloc();
  v0[39] = v19;
  *v19 = v0;
  v19[1] = sub_1D316BE80;
  v20 = v0[33];
  v21 = v0[31];

  return MEMORY[0x1EEE6D9C8](v0 + 27, 0, 0, v21);
}

uint64_t sub_1D316CBB4(uint64_t a1)
{
  *(v2 + 1376) = v1;
  *(v2 + 1368) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D316CBD8, 0, 0);
}

uint64_t sub_1D316CBD8()
{
  v1 = *(v0 + 1368);
  if (sub_1D316DBDC())
  {
    v2 = *(v0 + 1376);
    v3 = *(v0 + 1368);
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    *(v4 + 24) = v3;
    v5 = swift_allocObject();
    *(v0 + 1384) = v5;
    *(v5 + 16) = &unk_1D328C640;
    *(v5 + 24) = v4;
    v6 = v2;
    v7 = v3;
    type metadata accessor for CLLocationCoordinate2D(0);
    swift_asyncLet_begin();
    v8 = swift_allocObject();
    *(v8 + 16) = v6;
    *(v8 + 24) = v7;
    v9 = swift_allocObject();
    *(v0 + 1392) = v9;
    *(v9 + 16) = &unk_1D328C660;
    *(v9 + 24) = v8;
    v10 = v6;
    v11 = v7;
    swift_asyncLet_begin();

    return MEMORY[0x1EEE6DEC0](v0 + 16, v0 + 1336, sub_1D316CDBC, v0 + 1296);
  }

  else
  {
    v14 = *(v0 + 8);
    v12 = *(v0 + 1368);

    return v14(v12);
  }
}

uint64_t sub_1D316CDBC()
{
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D316D1D4, 0, 0);
  }

  else
  {
    v1[175] = v1[167];
    v1[176] = v1[168];

    return MEMORY[0x1EEE6DEC0](v1 + 82, v1 + 169, sub_1D316CE74, v1 + 162);
  }
}

uint64_t sub_1D316CE74()
{
  if (v0)
  {

    v1 = sub_1D316FEA0;
  }

  else
  {
    v1 = sub_1D316CEF0;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_1D316CEF0()
{
  v1 = *(v0 + 1408);
  v2 = *(v0 + 1400);
  v3 = *(v0 + 1352);
  v4 = *(v0 + 1360);
  [*(v0 + 1368) clientLocation];
  *(v0 + 1612) = v12;
  *(v0 + 1628) = v13;
  *(v0 + 1644) = v14;
  *(v0 + 1580) = v10;
  *(v0 + 1596) = v11;
  *(v0 + 1660) = v15;
  *(v0 + 1676) = v16;
  v5 = objc_allocWithZone(MNLocation);
  *(v0 + 1424) = v9;
  *(v0 + 1428) = v2;
  *(v0 + 1436) = v1;
  v6 = *(v0 + 1628);
  *(v0 + 1476) = *(v0 + 1612);
  *(v0 + 1492) = v6;
  *(v0 + 1508) = *(v0 + 1644);
  v7 = *(v0 + 1596);
  *(v0 + 1444) = *(v0 + 1580);
  *(v0 + 1460) = v7;
  *(v0 + 1524) = v3;
  *(v0 + 1532) = v4;
  *(v0 + 1540) = *(v0 + 1660);
  *(v0 + 1556) = 0x200000002;
  *(v0 + 1564) = *(v0 + 1676);
  *(v0 + 1416) = [v5 initWithClientLocation_];

  return MEMORY[0x1EEE6DEB0](v0 + 656, v0 + 1352, sub_1D316D044, v0 + 1296);
}

uint64_t sub_1D316D09C()
{
  v1 = v0[174];
  v2 = v0[173];

  v3 = v0[177];
  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_1D316D164()
{
  v1 = v0[174];
  v2 = v0[173];

  v3 = v0[171];
  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_1D316D1D4()
{
  v1 = *(v0 + 1368);

  return MEMORY[0x1EEE6DEB0](v0 + 656, v0 + 1352, sub_1D316D10C, v0 + 1296);
}

uint64_t sub_1D316D240(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

id sub_1D316D2A0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v28 = a4;
  v26 = sub_1D3276FB0();
  v30 = *(v26 - 8);
  v7 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_1D3276FD0();
  v27 = *(v29 - 8);
  v10 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC75CB58, &qword_1D328C628);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v26 - v16;
  result = MNNavigationQueue();
  if (result)
  {
    v19 = result;
    (*(v14 + 16))(v17, a1, v13);
    v20 = (*(v14 + 80) + 40) & ~*(v14 + 80);
    v21 = swift_allocObject();
    *(v21 + 2) = a2;
    *(v21 + 3) = a3;
    v22 = v28;
    *(v21 + 4) = v28;
    (*(v14 + 32))(&v21[v20], v17, v13);
    aBlock[4] = sub_1D316F790;
    aBlock[5] = v21;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D3122E0C;
    aBlock[3] = &block_descriptor_61;
    v23 = _Block_copy(aBlock);

    v24 = v22;
    sub_1D3276FC0();
    v31 = MEMORY[0x1E69E7CC0];
    sub_1D3122E64();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C468, &qword_1D328C630);
    sub_1D3122EBC();
    v25 = v26;
    sub_1D3277630();
    MEMORY[0x1D38B42B0](0, v12, v9, v23);
    _Block_release(v23);

    (*(v30 + 8))(v9, v25);
    (*(v27 + 8))(v12, v29);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1D316D660(void *a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(id))
{
  swift_unknownObjectRetain();
  v8 = a4;
  v9 = a1;
  a5(v8);
  swift_unknownObjectRelease();
}

void NavigationLocationManager.locationProviderDidChangeAuthorizationStatus(_:)(void *a1)
{
  if (([a1 isAuthorized] & 1) == 0)
  {
    NavigationLocationManager.stopUpdatingLocation()();
    v2 = *(v1 + OBJC_IVAR___MNLocationManager__lastLocation);
    *(v1 + OBJC_IVAR___MNLocationManager__lastLocation) = 0;
  }
}

void sub_1D316D8D4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *&v5[OBJC_IVAR___MNLocationManager__observers];
  v10 = swift_allocObject();
  *(v10 + 16) = v5;
  *(v10 + 24) = a2;
  v14[4] = a4;
  v14[5] = v10;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = sub_1D316D240;
  v14[3] = a5;
  v11 = _Block_copy(v14);
  v12 = v5;
  v13 = a2;

  [v9 enumerateObserversWithGroup:0 visitor:v11];
  _Block_release(v11);
}

void sub_1D316D9DC(char *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = *&a1[OBJC_IVAR___MNLocationManager__observers];
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a4;
  v17[4] = a6;
  v17[5] = v12;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 1107296256;
  v17[2] = sub_1D316D240;
  v17[3] = a7;
  v13 = _Block_copy(v17);
  v14 = a4;
  v15 = a1;
  v16 = v14;

  [v11 enumerateObserversWithGroup:0 visitor:v13];

  _Block_release(v13);
}

uint64_t sub_1D316DB0C()
{
  v0 = sub_1D3276D30();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D3276D00();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_1D316DBDC()
{
  [v0 coordinate];
  v2 = v1;
  v4 = v3;
  [v0 clientLocation];
  if (v12 != 2)
  {
    v5 = objc_opt_self();
    MEMORY[0x1D38B43D0](v2, v4);
    if ([v5 isLocationShiftRequiredForCoordinate_])
    {
      return 1;
    }
  }

  [v0 rawCoordinate];
  v8 = v7;
  v10 = v9;
  [v0 clientLocation];
  if (v13 == 2)
  {
    return 0;
  }

  v11 = objc_opt_self();
  MEMORY[0x1D38B43D0](v8, v10);
  return [v11 isLocationShiftRequiredForCoordinate_];
}

uint64_t sub_1D316DCE8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D316DD08, 0, 0);
}

uint64_t sub_1D316DD08()
{
  v1 = v0[3];
  [v1 coordinate];
  v3 = v2;
  v5 = v4;
  [v1 horizontalAccuracy];
  v7 = v6;
  v8 = [v1 referenceFrame];
  v9 = swift_task_alloc();
  v0[4] = v9;
  *v9 = v0;
  v9[1] = sub_1D316FEA8;
  v10 = v0[2];

  return sub_1D316DDFC(v8, v3, v5, v7);
}

uint64_t sub_1D316DDFC(int a1, double a2, double a3, double a4)
{
  *(v5 + 56) = v4;
  *(v5 + 88) = a1;
  *(v5 + 40) = a3;
  *(v5 + 48) = a4;
  *(v5 + 32) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D316DE28, 0, 0);
}

uint64_t sub_1D316DE28(__n128 a1, __n128 a2)
{
  if (*(v2 + 88) == 2 || (v4 = *(v2 + 32), v3 = *(v2 + 40), v5 = objc_opt_self(), MEMORY[0x1D38B43D0](v4, v3), ![v5 isLocationShiftRequiredForCoordinate_]))
  {
    a1.n128_u64[0] = *(v2 + 32);
    a2.n128_u64[0] = *(v2 + 40);
    v12 = *(v2 + 8);

    return v12(a1, a2);
  }

  else
  {
    v6 = *(v2 + 56);
    v7 = *(v2 + 48);
    v14 = *(v2 + 32);
    v8 = swift_task_alloc();
    *(v2 + 64) = v8;
    *(v8 + 16) = v6;
    *(v8 + 24) = v14;
    *(v8 + 40) = v7;
    v9 = *(MEMORY[0x1E69E8920] + 4);
    v10 = swift_task_alloc();
    *(v2 + 72) = v10;
    type metadata accessor for GEOLocationCoordinate2D(0);
    *v10 = v2;
    v10[1] = sub_1D316DFC4;

    return MEMORY[0x1EEE6DE38](v2 + 16, 0, 0, 0xD00000000000002ALL, 0x80000001D328FCC0, sub_1D316FBF0, v8, v11);
  }
}

uint64_t sub_1D316DFC4()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v7 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = sub_1D316E0FC;
  }

  else
  {
    v5 = *(v2 + 64);

    v4 = sub_1D316E0E0;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D316E0FC()
{
  v1 = v0[8];

  v2 = v0[1];
  v3 = v0[10];

  return v2();
}

uint64_t sub_1D316E160(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_1D316E24C;

  return v6();
}

uint64_t sub_1D316E24C(double a1, double a2)
{
  v6 = *v3;
  v7 = *(*v3 + 24);
  v8 = *v3;

  if (!v2)
  {
    v9 = *(v6 + 16);
    *v9 = a1;
    v9[1] = a2;
  }

  v10 = *(v8 + 8);

  return v10();
}

uint64_t sub_1D316E368(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D316E388, 0, 0);
}

uint64_t sub_1D316E388()
{
  v1 = v0[3];
  [v1 rawCoordinate];
  v3 = v2;
  v5 = v4;
  [v1 horizontalAccuracy];
  v7 = v6;
  [v1 clientLocation];
  v8 = swift_task_alloc();
  v0[4] = v8;
  *v8 = v0;
  v8[1] = sub_1D316E488;
  v9 = v0[2];

  return sub_1D316DDFC(v11, v3, v5, v7);
}

uint64_t sub_1D316E488(double a1, double a2)
{
  v6 = *(*v3 + 32);
  v11 = *v3;

  v9 = *(v11 + 8);
  if (!v2)
  {
    v7.n128_f64[0] = a1;
    v8.n128_f64[0] = a2;
  }

  return v9(v7, v8);
}

void sub_1D316E598(uint64_t a1, uint64_t a2, double a3, double a4, double a5)
{
  v25[1] = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75CB68, &qword_1D328C678);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v25 - v12;
  v14 = *(v10 + 16);
  v14(v25 - v12, a1, v9);
  v15 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v25[0] = swift_allocObject();
  v16 = *(v10 + 32);
  v16(v25[0] + v15, v13, v9);
  v14(v13, a1, v9);
  v17 = swift_allocObject();
  v16(v17 + v15, v13, v9);
  global_queue = geo_get_global_queue();
  v19 = sub_1D316B650();
  v20 = MEMORY[0x1D38B43D0](a3, a4);
  v22 = v21;
  v30 = sub_1D316FC00;
  v31 = v25[0];
  aBlock = MEMORY[0x1E69E9820];
  v27 = 1107296256;
  v28 = sub_1D316E914;
  v29 = &block_descriptor_97;
  v23 = _Block_copy(&aBlock);

  v30 = sub_1D316FD3C;
  v31 = v17;
  aBlock = MEMORY[0x1E69E9820];
  v27 = 1107296256;
  v28 = sub_1D316E980;
  v29 = &block_descriptor_100;
  v24 = _Block_copy(&aBlock);

  [v19 shiftCoordinate:v23 accuracy:0 withCompletionHandler:v24 mustGoToNetworkCallback:global_queue errorHandler:v20 callbackQueue:{v22, a5}];
  _Block_release(v24);
  _Block_release(v23);
}

uint64_t sub_1D316E890(void *a1)
{
  if (!a1)
  {
    sub_1D316FDB8();
    swift_allocError();
    a1 = 0;
  }

  v1 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75CB68, &qword_1D328C678);
  return sub_1D3277220();
}

uint64_t sub_1D316E914(uint64_t a1, double a2, double a3, double a4)
{
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);

  v7(v9, a2, a3, a4);
}

void sub_1D316E980(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t sub_1D316EA24(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1D316EA34(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75CA68, &qword_1D328C420);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v17 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC75CA70, &qword_1D328C428);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v17 - v10;
  v12 = OBJC_IVAR___MNLocationManager__locationStreamContinuation;
  swift_beginAccess();
  v13 = 1;
  if (!(*(v4 + 48))(v1 + v12, 1, v3))
  {
    (*(v4 + 16))(v7, v1 + v12, v3);
    v17 = a1;
    v14 = a1;
    sub_1D32772A0();
    (*(v4 + 8))(v7, v3);
    v13 = 0;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC75CA80, &unk_1D328C430);
  (*(*(v15 - 8) + 56))(v11, v13, 1, v15);
  return sub_1D3125FBC(v11, &unk_1EC75CA70, &qword_1D328C428);
}

void sub_1D316EC40(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C4F0, &qword_1D328B580);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v41 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v40 - v8;
  v10 = sub_1D3276D30();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v40 - v16;
  v18 = OBJC_IVAR___MNLocationManager__lastHeadingDate;
  swift_beginAccess();
  sub_1D312601C(&v2[v18], v9, &qword_1EC75C4F0, &qword_1D328B580);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1D3125FBC(v9, &qword_1EC75C4F0, &qword_1D328B580);
  }

  else
  {
    (*(v11 + 32))(v17, v9, v10);
    sub_1D3276D10();
    sub_1D3276CC0();
    v20 = v19;
    v21 = *(v11 + 8);
    v21(v15, v10);
    v21(v17, v10);
    if (v20 <= 0.05)
    {
      return;
    }
  }

  v22 = OBJC_IVAR___MNLocationManager_locationRecorder;
  swift_beginAccess();
  v23 = *&v2[v22];
  if (v23)
  {
    swift_unknownObjectRetain();
    [a1 trueHeading];
    v25 = v24;
    [a1 magneticHeading];
    v27 = v26;
    [a1 headingAccuracy];
    v29 = v28;
    v30 = [a1 timestamp];
    sub_1D3276D00();

    v31 = sub_1D3276CD0();
    (*(v11 + 8))(v15, v10);
    [v23 recordCompassHeading:v31 magneticHeading:v25 accuracy:v27 timestamp:v29];

    swift_unknownObjectRelease();
  }

  v32 = *&v2[OBJC_IVAR___MNLocationManager__lastHeading];
  *&v2[OBJC_IVAR___MNLocationManager__lastHeading] = a1;

  v33 = a1;
  v34 = v41;
  sub_1D3276D10();
  (*(v11 + 56))(v34, 0, 1, v10);
  swift_beginAccess();
  sub_1D316F558(v34, &v2[v18], &qword_1EC75C4F0, &qword_1D328B580);
  swift_endAccess();
  v35 = *&v2[OBJC_IVAR___MNLocationManager__observers];
  v36 = swift_allocObject();
  *(v36 + 16) = v2;
  *(v36 + 24) = v33;
  aBlock[4] = sub_1D316F5C0;
  aBlock[5] = v36;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D316D240;
  aBlock[3] = &block_descriptor_41;
  v37 = _Block_copy(aBlock);
  v38 = v33;
  v39 = v2;

  [v35 enumerateObserversWithGroup:0 visitor:v37];
  _Block_release(v37);
}

uint64_t sub_1D316F0B4(void *a1)
{
  v2 = v1;
  if (qword_1EC75BE68 != -1)
  {
    swift_once();
  }

  v4 = sub_1D3276F80();
  __swift_project_value_buffer(v4, qword_1EC760770);
  v5 = a1;
  v6 = sub_1D3276F60();
  v7 = sub_1D3277390();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = a1;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1D311E000, v6, v7, "Received an error from location provider: %@", v8, 0xCu);
    sub_1D3125FBC(v9, &qword_1EC75C5B0, &unk_1D328C300);
    MEMORY[0x1D38B6000](v9, -1, -1);
    MEMORY[0x1D38B6000](v8, -1, -1);
  }

  v12 = OBJC_IVAR___MNLocationManager_locationRecorder;
  result = swift_beginAccess();
  v14 = *(v2 + v12);
  if (v14)
  {
    swift_unknownObjectRetain();
    v15 = sub_1D3276BE0();
    [v14 recordError_];

    return swift_unknownObjectRelease();
  }

  return result;
}

unint64_t sub_1D316F280()
{
  result = qword_1EC75CAB0;
  if (!qword_1EC75CAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC75CAB0);
  }

  return result;
}

uint64_t type metadata accessor for NavigationLocationManager()
{
  result = qword_1EC75BF00;
  if (!qword_1EC75BF00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D316F338()
{
  sub_1D314A874();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_1D316F444();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_1D316F444()
{
  if (!qword_1EC75BDE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC75CA68, &qword_1D328C420);
    v0 = sub_1D3277600();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC75BDE8);
    }
  }
}

id sub_1D316F4A8()
{
  v1 = (*(*(v0 + 16) + 16))();

  return v1;
}

uint64_t sub_1D316F4E4(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v6 = a1;
  v2(&v5, &v6);
  return v5;
}

uint64_t sub_1D316F524@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  result = v4(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1D316F558(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

id sub_1D316F5CC(void *a1, const char **a2)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  result = [a1 respondsToSelector_];
  if (result)
  {
    v8 = *a2;

    return [a1 v8];
  }

  return result;
}

uint64_t sub_1D316F648(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC75CB40, &qword_1D328C600) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D3125778;

  return sub_1D316BC70(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_1D316F790()
{
  v1 = v0;
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC75CB58, &qword_1D328C628) - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v4(*(v1 + 32));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC75CB58, &qword_1D328C628);
  return sub_1D3277230();
}

uint64_t sub_1D316F844()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1D316FED0;

  return sub_1D316DCE8(v2, v3);
}

uint64_t sub_1D316F8DC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D3152F1C;

  return sub_1D316E160(a1, v5);
}

uint64_t sub_1D316F994()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1D316FA2C;

  return sub_1D316E368(v2, v3);
}

uint64_t sub_1D316FA2C(double a1, double a2)
{
  v5 = *(*v2 + 16);
  v10 = *v2;

  v6 = *(v10 + 8);
  v7.n128_f64[0] = a1;
  v8.n128_f64[0] = a2;

  return v6(v7, v8);
}

uint64_t sub_1D316FB38(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D3125778;

  return sub_1D316E160(a1, v5);
}

uint64_t sub_1D316FC00()
{
  v0 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75CB68, &qword_1D328C678) - 8);
  v1 = (*(v0 + 80) + 16) & ~*(v0 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75CB68, &qword_1D328C678);
  return sub_1D3277230();
}

uint64_t objectdestroy_90Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75CB68, &qword_1D328C678);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D316FD3C(void *a1)
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75CB68, &qword_1D328C678) - 8) + 80);

  return sub_1D316E890(a1);
}

unint64_t sub_1D316FDB8()
{
  result = qword_1EC75CB70;
  if (!qword_1EC75CB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC75CB70);
  }

  return result;
}

unint64_t sub_1D316FE20()
{
  result = qword_1EC75CB78;
  if (!qword_1EC75CB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC75CB78);
  }

  return result;
}

id sub_1D316FEDC()
{
  v1 = *&v0[OBJC_IVAR___MNDestinationArrivalInfoUpdater__remainingTimeUpdater];
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v3.receiver = v0;
  v3.super_class = type metadata accessor for DestinationArrivalInfoUpdater();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_1D31700A0()
{
  result = geo_dispatch_queue_create();
  if (result)
  {
    v1 = result;
    v2 = [objc_allocWithZone(MEMORY[0x1E69A2198]) initWithQueue_];

    [v2 setAllowNetworkTileLoad_];
    [v2 setAllowStaleData_];
    [v2 setFlipNegativeTravelDirectionRoads_];
    [v2 setVisitDoubleTravelDirectionRoadsTwice_];
    result = [v2 setAllowOfflineData_];
    qword_1EC75CB98 = v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D3170164(uint64_t a1, uint64_t a2, double a3)
{
  *(v4 + 792) = v3;
  *(v4 + 784) = a3;
  *(v4 + 776) = a2;
  *(v4 + 768) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D3170190, 0, 0);
}

uint64_t sub_1D3170190()
{
  v1 = *(v0 + 784);
  v2 = *(v0 + 768);
  *(v0 + 736) = *(v0 + 776);
  *(v0 + 728) = v1;
  v3 = *(v2 + 16);
  *(v0 + 800) = v3;
  if (!v3)
  {
    return sub_1D32777B0();
  }

  v4 = v3;
  v5 = 1;
  v168 = (v0 + 728);
  swift_beginAccess();
  v6 = 0;
  v7 = *(v0 + 784);
  v8 = 1.79769313e308;
  v9 = *(v0 + 776);
  v10 = -180.0;
  v171 = -180.0;
  v172 = 1.79769313e308;
  v11 = -180.0;
  v12 = -180.0;
  v169 = (v0 + 736);
  v170 = v2;
  while (1)
  {
    *(v0 + 824) = v9;
    v13 = v9 & 0xFFFFFFFFFFFFFF8;
    *(v0 + 816) = v9;
    *(v0 + 808) = v6;
    v14 = v9 >> 62;
LABEL_4:
    v15 = v11;
    v16 = v12;
    v17 = v8;
    v18 = v5 - 1;
    v19 = __OFSUB__(v5, 1);
    do
    {
      while (1)
      {
        *(v0 + 888) = v5;
        *(v0 + 880) = v17;
        *(v0 + 872) = v16;
        *(v0 + 864) = v15;
        *(v0 + 856) = v172;
        *(v0 + 848) = v171;
        *(v0 + 840) = v10;
        *(v0 + 832) = v7;
        if (v14)
        {
          if (sub_1D3277660() < 1)
          {
            goto LABEL_77;
          }
        }

        else if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
        {
          goto LABEL_77;
        }

        v20 = v4;
        v21 = [v20 coordinateCount];
        if ((v5 & 0x8000000000000000) == 0 && v5 >= v21)
        {

LABEL_77:
          v77 = swift_allocObject();
          *(v0 + 896) = v77;
          v78 = type metadata accessor for ConnectedSearchNode();
          *(v0 + 904) = v78;
          v79 = sub_1D3177870();
          *(v0 + 912) = v79;
          v80 = MEMORY[0x1D38B41E0](1, v78, v79);
          *(v0 + 920) = v80;
          *(v77 + 16) = v80;
          swift_retain_n();
          v81 = [v4 coordinateCount];
          if ((v5 & 0x8000000000000000) == 0 && v5 >= v81)
          {
            v18 = v170;
            v82 = *(v170 + 16);
            if (v82)
            {
              [v82 lastCoordinate];
              v84 = v83;
              v86 = v85;
              v88 = v87;
              v89 = v9 >> 62;
              if (v9 >> 62)
              {
                v90 = sub_1D3277660();
                if (!v90)
                {
                  goto LABEL_91;
                }

LABEL_82:
                if (v90 < 1)
                {
                  __break(1u);
                  goto LABEL_142;
                }

                v91 = 0;
                v92 = 0.0;
                do
                {
                  if ((v9 & 0xC000000000000001) != 0)
                  {
                    v19 = MEMORY[0x1D38B45D0](v91, v9);
                  }

                  else
                  {
                    v19 = *(v9 + 8 * v91 + 32);
                  }

                  ++v91;
                  v92 = v92 + GEOCoordinateGet3DDistance(v84, v86, v88, *(v19 + 16), *(v19 + 24), *(v19 + 32));
                  v84 = *(v19 + 16);
                  v86 = *(v19 + 24);
                  v88 = *(v19 + 32);
                }

                while (v90 != v91);
              }

              else
              {
                v90 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (v90)
                {
                  goto LABEL_82;
                }

LABEL_91:
                v92 = 0.0;
              }

              *(*(v0 + 768) + 72) = v92;
              v93 = *(v170 + 16);
              if (v93)
              {
                v94 = *(v0 + 768);
                v95 = [v93 lastCoordinate];
                *(v94 + 11) = v96;
                *(v94 + 12) = v97;
                *(v94 + 13) = v98;
                v99 = MEMORY[0x1D38B43F0](v95, v15, v16, v17);
                v101 = v100;
                MEMORY[0x1D38B43F0](v10, v171, v172);
                GEOBearingFromCoordinateToCoordinate();
                *(v94 + 14) = v102;
                if (*(v94 + 5) <= 100)
                {
                  if (qword_1EC75C040 != -1)
                  {
                    goto LABEL_143;
                  }

                  goto LABEL_97;
                }

                if (v89)
                {
                  v103 = sub_1D3277660();
                }

                else
                {
                  v103 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
                }

                if (v103)
                {
                  v27 = __OFSUB__(v103, 1);
                  v109 = v103 - 1;
                  if (v27)
                  {
                    __break(1u);
                  }

                  else
                  {
                    v19 = v9 & 0xC000000000000001;
                    if ((v9 & 0xC000000000000001) == 0)
                    {
                      if ((v109 & 0x8000000000000000) != 0)
                      {
                        __break(1u);
                      }

                      else if (v109 < *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
                      {
                        v110 = *(v9 + 8 * v109 + 32);

                        goto LABEL_108;
                      }

                      __break(1u);
LABEL_148:
                      v94 = sub_1D31412B0(0, *(v94 + 2) + 1, 1, v94);
                      *(v170 + 64) = v94;
LABEL_110:
                      v120 = *(v94 + 2);
                      v119 = *(v94 + 3);
                      if (v120 >= v119 >> 1)
                      {
                        v94 = sub_1D31412B0((v119 > 1), v120 + 1, 1, v94);
                      }

                      *(v94 + 2) = v120 + 1;
                      *&v94[8 * v120 + 32] = v99;
                      *(v170 + 64) = v94;
                      if (v89)
                      {
                        v121 = sub_1D3277660();
                      }

                      else
                      {
                        v121 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
                      }

                      if (v121)
                      {
                        v27 = __OFSUB__(v121, 1);
                        v122 = v121 - 1;
                        if (v27)
                        {
                          __break(1u);
                          goto LABEL_150;
                        }

                        if (v19)
                        {
                          v123 = MEMORY[0x1D38B45D0](v122, v9);
                          goto LABEL_122;
                        }

                        if ((v122 & 0x8000000000000000) == 0)
                        {
                          if (v122 < *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
                          {
                            v124 = *(v9 + 8 * v122 + 32);

LABEL_122:
                            v101 = *(v123 + 104);

                            MEMORY[0x1D38B43F0](v125, v15, v16, v17);
                            MEMORY[0x1D38B43F0](v10, v171, v172);
                            GEOBearingFromCoordinateToCoordinate();
                            v92 = v126;
                            v9 = *(v170 + 80);
                            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                            *(v170 + 80) = v9;
                            if (isUniquelyReferenced_nonNull_native)
                            {
LABEL_123:
                              v129 = *(v9 + 16);
                              v128 = *(v9 + 24);
                              if (v129 >= v128 >> 1)
                              {
                                v9 = sub_1D31412B0((v128 > 1), v129 + 1, 1, v9);
                              }

                              v130 = *(v0 + 768);
                              *(v9 + 16) = v129 + 1;
                              *(v9 + 8 * v129 + 32) = v101 - v92;
                              *(v170 + 80) = v9;
                              sub_1D31730AC(v130);
                              goto LABEL_126;
                            }

LABEL_150:
                            v9 = sub_1D31412B0(0, *(v9 + 16) + 1, 1, v9);
                            *(v170 + 80) = v9;
                            goto LABEL_123;
                          }

LABEL_153:
                          __break(1u);
LABEL_154:
                          __break(1u);
                          goto LABEL_155;
                        }

LABEL_152:
                        __break(1u);
                        goto LABEL_153;
                      }

LABEL_168:

                      __break(1u);
                      return MEMORY[0x1EEE0B8E8](v108);
                    }
                  }

                  v111 = MEMORY[0x1D38B45D0](v109, v9);
LABEL_108:
                  v112 = *(v111 + 16);
                  v101 = *(v111 + 24);
                  v113 = *(v111 + 32);

                  v114 = *(v170 + 16);
                  if (v114)
                  {
                    [v114 lastCoordinate];
                    v99 = GEOCoordinateGet3DDistance(v112, v101, v113, v115, v116, v117);
                    v94 = *(v170 + 64);
                    v118 = swift_isUniquelyReferenced_nonNull_native();
                    *(v170 + 64) = v94;
                    if ((v118 & 1) == 0)
                    {
                      goto LABEL_148;
                    }

                    goto LABEL_110;
                  }

LABEL_167:

                  __break(1u);
                  goto LABEL_168;
                }

LABEL_166:

                __break(1u);
                goto LABEL_167;
              }

LABEL_164:

              __break(1u);
LABEL_165:

              __break(1u);
              goto LABEL_166;
            }

LABEL_163:

            __break(1u);
            goto LABEL_164;
          }

LABEL_126:
          swift_beginAccess();
          if (*v169 >> 62)
          {
            if (!sub_1D3277660())
            {
              goto LABEL_134;
            }
          }

          else
          {
            if (*((*v169 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_128;
            }

LABEL_134:
            v137 = [*(v0 + 800) coordinates3d];
            if (v137)
            {
              v138 = *(v0 + 888);
              v27 = __OFSUB__(v138, 1);
              v139 = v138 - 1;
              if (v27)
              {
                __break(1u);
                goto LABEL_152;
              }

              v140 = *(v0 + 800);
              v141 = &v137[24 * v139];
              v142 = *v141;
              v143 = v141[1];
              v144 = v141[2];
              v145 = [v140 coordinates3d];

              v146 = *(v0 + 896);
              if (v145)
              {
                v147 = *(v0 + 768);
                v148 = &v145[24 * *(v0 + 888)];
                v149 = *v148;
                v150 = v148[1];
                v151 = v148[2];
                v152 = GEOCoordinateGet3DDistance(v142, v143, v144, *v148, v150, v151);
                v153 = *(v0 + 728);
                v154 = v153 / v152;
                *(v147 + 48) = v153 + *(v147 + 48);
                *(v147 + 72) = 0;
                *(v147 + 88) = v142 + (v149 - v142) * v154;
                *(v147 + 96) = v143 + (v150 - v143) * v154;
                *(v147 + 104) = v144 + (v151 - v144) * v154;
                MEMORY[0x1D38B43F0](v142, v143, v144);
                MEMORY[0x1D38B43F0](v149, v150, v151);
                GEOBearingFromCoordinateToCoordinate();
                *(v147 + 112) = v155;
                sub_1D31730AC(v147);
                v156 = *(v0 + 896);
                v157 = *(v0 + 808);
                v158 = *(v0 + 800);
                if (*(v147 + 24))
                {

                  sub_1D31730AC(v159);
                }

                else
                {
                  v161 = *(v0 + 808);
                }

                goto LABEL_130;
              }

              v160 = *(v0 + 808);
              v133 = *(v0 + 800);

LABEL_129:

LABEL_130:
              v134 = *(v0 + 896);
              swift_beginAccess();
              v135 = *(v134 + 16);

              v136 = *(v0 + 8);

              return v136(v135);
            }
          }

LABEL_128:
          v131 = *(v0 + 896);
          v132 = *(v0 + 808);
          v133 = *(v0 + 800);

          goto LABEL_129;
        }

        v22 = [v20 coordinates3d];
        if (v22)
        {
          break;
        }
      }

      if (v19)
      {
        __break(1u);
LABEL_89:
        swift_endAccess();

        return sub_1D32777B0();
      }

      v23 = &v22[24 * v18];
      v11 = *v23;
      v12 = v23[1];
      v8 = v23[2];
      v24 = [v20 coordinates3d];
    }

    while (!v24);
    v25 = &v24[24 * v5];
    v10 = *v25;
    v171 = v25[1];
    v172 = v25[2];
    v26 = GEOCoordinateGet3DDistance(v11, v12, v8, *v25, v171, v172);
    if (v26 < v7)
    {
      break;
    }

    v28 = v26;
    v29 = (v0 + 736);
    swift_beginAccess();
    if (v14)
    {
      v30 = sub_1D3277660();
    }

    else
    {
      v30 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v30)
    {
      goto LABEL_89;
    }

    isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (v14 || (isUniquelyReferenced_nonNull_bridgeObject & 1) == 0)
    {
      v9 = sub_1D3180EE8(v9);
      v13 = v9 & 0xFFFFFFFFFFFFFF8;
    }

    v32 = *(v13 + 16);
    if (!v32)
    {
      goto LABEL_158;
    }

    v166 = v11 + (v10 - v11) * (v7 / v28);
    v33 = v32 - 1;
    v6 = *(v13 + 8 * v33 + 32);
    v162 = v8 + (v172 - v8) * (v7 / v28);
    v163 = v12 + (v171 - v12) * (v7 / v28);
    *(v13 + 16) = v33;
    *v169 = v9;
    swift_endAccess();

    v34 = v6[2];
    v35 = v6[3];
    v36 = v6[4];

    v37 = GEOCoordinateGet3DDistance(v34, v35, v36, v166, v163, v162);
    v38 = *(v170 + 64);
    v39 = swift_isUniquelyReferenced_nonNull_native();
    *(v170 + 64) = v38;
    if ((v39 & 1) == 0)
    {
      v38 = sub_1D31412B0(0, *(v38 + 2) + 1, 1, v38);
      *(v170 + 64) = v38;
    }

    v41 = *(v38 + 2);
    v40 = *(v38 + 3);
    v42 = v41 + 1;
    if (v41 >= v40 >> 1)
    {
      v56 = sub_1D31412B0((v40 > 1), v41 + 1, 1, v38);
      v42 = v41 + 1;
      v38 = v56;
    }

    *(v38 + 2) = v42;
    *&v38[8 * v41 + 32] = v37;
    *(v170 + 64) = v38;
    v43 = v6[13];
    MEMORY[0x1D38B43F0](v11, v12, v8);
    MEMORY[0x1D38B43F0](v10, v171, v172);
    GEOBearingFromCoordinateToCoordinate();
    v45 = v44;
    v46 = *(v170 + 80);
    v47 = swift_isUniquelyReferenced_nonNull_native();
    *(v170 + 80) = v46;
    if ((v47 & 1) == 0)
    {
      v46 = sub_1D31412B0(0, *(v46 + 2) + 1, 1, v46);
      *(v170 + 80) = v46;
    }

    v49 = *(v46 + 2);
    v48 = *(v46 + 3);
    v50 = v49 + 1;
    if (v49 >= v48 >> 1)
    {
      v57 = sub_1D31412B0((v48 > 1), v49 + 1, 1, v46);
      v50 = v49 + 1;
      v46 = v57;
    }

    *(v46 + 2) = v50;
    *&v46[8 * v49 + 32] = v43 - v45;
    *(v170 + 80) = v46;
    if (v9 >> 62)
    {
      if (sub_1D3277660() > 0)
      {
        v58 = v6[2];
        v59 = v6[3];
        v60 = v6[4];
        v61 = sub_1D3277660();
        if (!v61)
        {
          goto LABEL_159;
        }

        v29 = (v0 + 736);
        v52 = v58;
        v53 = v59;
        v54 = v60;
        v27 = __OFSUB__(v61, 1);
        v55 = v61 - 1;
        if (!v27)
        {
          goto LABEL_40;
        }

LABEL_160:
        __break(1u);
LABEL_161:
        __break(1u);
LABEL_162:
        __break(1u);
        goto LABEL_163;
      }
    }

    else
    {
      v51 = *(v13 + 16);
      if (v51)
      {
        v52 = v6[2];
        v53 = v6[3];
        v54 = v6[4];
        v27 = __OFSUB__(v51, 1);
        v55 = v51 - 1;
        if (v27)
        {
          goto LABEL_160;
        }

LABEL_40:
        v165 = v53;
        v167 = v52;
        v164 = v54;
        if ((v9 & 0xC000000000000001) == 0)
        {
          if ((v55 & 0x8000000000000000) != 0)
          {
            goto LABEL_161;
          }

          if (v55 < *(v13 + 16))
          {
            goto LABEL_50;
          }

          goto LABEL_162;
        }

LABEL_68:
        v63 = MEMORY[0x1D38B45D0](v55, v9);
LABEL_51:
        v64 = v63[2];
        v65 = v63[3];
        v66 = v63[4];

        v67 = GEOCoordinateGet3DDistance(v167, v165, v164, v64, v65, v66);
        if (v67 != 0.0)
        {
LABEL_72:

          v7 = v7 + v67;
          *v168 = v7;
          continue;
        }

        swift_beginAccess();
        if (v9 >> 62)
        {
          if (sub_1D3277660())
          {
            goto LABEL_54;
          }
        }

        else if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_54:
          v68 = swift_isUniquelyReferenced_nonNull_bridgeObject();
          if (v9 >> 62 || (v68 & 1) == 0)
          {
            v9 = sub_1D3180EE8(v9);
          }

          v69 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v69)
          {
            goto LABEL_157;
          }

          v70 = v69 - 1;
          v71 = *((v9 & 0xFFFFFFFFFFFFFF8) + 8 * v70 + 0x20);
          *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) = v70;

          *v29 = v9;
        }

        swift_endAccess();
        if (v9 >> 62)
        {
          if (sub_1D3277660() < 1)
          {
            goto LABEL_72;
          }
        }

        else if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
        {
          goto LABEL_72;
        }

        v72 = v6[2];
        v73 = v6[3];
        v74 = v6[4];
        if (v9 >> 62)
        {
          v75 = sub_1D3277660();
          if (!v75)
          {
LABEL_74:
            __break(1u);
            return sub_1D32777B0();
          }
        }

        else
        {
          v75 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v75)
          {
            goto LABEL_74;
          }
        }

        v27 = __OFSUB__(v75, 1);
        v55 = v75 - 1;
        if (v27)
        {
          goto LABEL_154;
        }

        v165 = v73;
        v167 = v72;
        v164 = v74;
        if ((v9 & 0xC000000000000001) == 0)
        {
          if ((v55 & 0x8000000000000000) == 0)
          {
            if (v55 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_156;
            }

LABEL_50:
            v62 = *(v9 + 8 * v55 + 32);

            goto LABEL_51;
          }

LABEL_155:
          __break(1u);
LABEL_156:
          __break(1u);
LABEL_157:
          __break(1u);
LABEL_158:
          __break(1u);
LABEL_159:
          __break(1u);
          goto LABEL_160;
        }

        goto LABEL_68;
      }
    }
  }

  v7 = v7 - v26;
  *v168 = v7;
  v27 = __OFADD__(v5++, 1);
  if (!v27)
  {
    *(v170 + 48) = v26 + *(v170 + 48);
    goto LABEL_4;
  }

LABEL_142:
  __break(1u);
LABEL_143:
  swift_once();
LABEL_97:
  v104 = *(v18 + 16);
  *(v0 + 928) = v104;
  if (!v104)
  {
    goto LABEL_165;
  }

  v105 = *(MEMORY[0x1E69A15C0] + 4);
  v106 = v104;
  v107 = swift_task_alloc();
  *(v0 + 936) = v107;
  *v107 = v0;
  v107[1] = sub_1D317107C;
  v108 = v106;

  return MEMORY[0x1EEE0B8E8](v108);
}

uint64_t sub_1D317107C(uint64_t a1)
{
  v2 = *(*v1 + 936);
  v3 = *(*v1 + 928);
  v5 = *v1;
  *(*v1 + 944) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D3171198, 0, 0);
}

uint64_t sub_1D3171198()
{
  v4 = (v0 + 736);
  v5 = *(v0 + 944);
  if (v5 >> 62)
  {
    if (v5 < 0)
    {
      v48 = *(v0 + 944);
    }

    if (sub_1D3277660() >= 1)
    {
      goto LABEL_3;
    }

LABEL_27:
    v49 = *(v0 + 824);
    if (v49 >> 62)
    {
      if (v49 < 0)
      {
        v51 = *(v0 + 824);
      }

      v50 = sub_1D3277660();
    }

    else
    {
      v50 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v50)
    {
      goto LABEL_86;
    }

    v52 = __OFSUB__(v50, 1);
    v53 = v50 - 1;
    if (v52)
    {
      __break(1u);
    }

    else
    {
      v54 = *(v0 + 824);
      v1 = v54 & 0xC000000000000001;
      if ((v54 & 0xC000000000000001) == 0)
      {
        if ((v53 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v53 < *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v55 = *(v54 + 8 * v53 + 32);

          goto LABEL_38;
        }

        __break(1u);
        goto LABEL_77;
      }
    }

    v56 = MEMORY[0x1D38B45D0](v53);
LABEL_38:
    v57 = *(v0 + 768);
    v58 = v56[2];
    v59 = v56[3];
    v60 = v56[4];

    v61 = *(v57 + 16);
    if (!v61)
    {
LABEL_87:
      v128 = *(v0 + 896);

      __break(1u);
LABEL_88:
      v129 = *(v0 + 896);

      __break(1u);
      goto LABEL_89;
    }

    v62 = *(v0 + 768);
    [v61 lastCoordinate];
    v2 = GEOCoordinateGet3DDistance(v58, v59, v60, v63, v64, v65);
    v5 = *(v62 + 64);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v62 + 64) = v5;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_40:
      v68 = *(v5 + 16);
      v67 = *(v5 + 24);
      if (v68 >= v67 >> 1)
      {
        v5 = sub_1D31412B0((v67 > 1), v68 + 1, 1, v5);
      }

      v69 = *(v0 + 824);
      v70 = *(v0 + 768);
      *(v5 + 16) = v68 + 1;
      *(v5 + 8 * v68 + 32) = v2;
      *(v70 + 64) = v5;
      v71 = *(v0 + 824);
      if (v69 >> 62)
      {
        if (v71 < 0)
        {
          v73 = *(v0 + 824);
        }

        v72 = sub_1D3277660();
      }

      else
      {
        v72 = *((v71 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (!v72)
      {
        goto LABEL_88;
      }

      v74 = *(v0 + 944);

      v75 = v72 - 1;
      if (__OFSUB__(v72, 1))
      {
        __break(1u);
      }

      else
      {
        if (v1)
        {
          v76 = MEMORY[0x1D38B45D0](v75, *(v0 + 824));
        }

        else
        {
          if ((v75 & 0x8000000000000000) != 0)
          {
LABEL_83:
            __break(1u);
            goto LABEL_84;
          }

          v77 = *(v0 + 824);
          if (v75 >= *((v77 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
LABEL_84:
            __break(1u);
            goto LABEL_85;
          }

          v78 = *(v77 + 8 * v75 + 32);
        }

        v79 = *(v0 + 880);
        v80 = *(v0 + 872);
        v81 = *(v0 + 864);
        v82 = *(v0 + 856);
        v83 = *(v0 + 848);
        v84 = *(v0 + 840);
        v85 = *(v0 + 768);
        v3 = *(v76 + 104);

        MEMORY[0x1D38B43F0](v86, v81, v80, v79);
        MEMORY[0x1D38B43F0](v84, v83, v82);
        GEOBearingFromCoordinateToCoordinate();
        v2 = v87;
        v72 = *(v85 + 80);
        v88 = swift_isUniquelyReferenced_nonNull_native();
        *(v85 + 80) = v72;
        if (v88)
        {
          goto LABEL_55;
        }
      }

      v126 = *(v0 + 768);
      v72 = sub_1D31412B0(0, *(v72 + 16) + 1, 1, v72);
      *(v126 + 80) = v72;
LABEL_55:
      v90 = *(v72 + 16);
      v89 = *(v72 + 24);
      if (v90 >= v89 >> 1)
      {
        v72 = sub_1D31412B0((v89 > 1), v90 + 1, 1, v72);
      }

      v91 = *(v0 + 896);
      v92 = *(v0 + 768);
      *(v72 + 16) = v90 + 1;
      *(v72 + 8 * v90 + 32) = v3 - v2;
      *(v92 + 80) = v72;
      sub_1D31730AC(v92);
      goto LABEL_58;
    }

LABEL_77:
    v125 = *(v0 + 768);
    v5 = sub_1D31412B0(0, *(v5 + 16) + 1, 1, v5);
    *(v125 + 64) = v5;
    goto LABEL_40;
  }

  if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
  {
    goto LABEL_27;
  }

LABEL_3:
  v6 = *(v0 + 768);
  if (*(v6 + 40) <= 3)
  {
    v8 = *(v0 + 944);
    v9 = *(v0 + 896);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75CBA8, &qword_1D328C7B8);
    v10 = swift_task_alloc();
    *(v0 + 952) = v10;
    v10[2] = v8;
    v10[3] = v6;
    v10[4] = v4;
    v10[5] = v0 + 728;
    v10[6] = sub_1D31778C8;
    v10[7] = v9;
    v11 = *(MEMORY[0x1E69E87D8] + 4);
    v12 = swift_task_alloc();
    *(v0 + 960) = v12;
    *v12 = v0;
    v12[1] = sub_1D3171A88;

    return MEMORY[0x1EEE6DBF8]();
  }

  if (v5 >> 62)
  {
    v13 = *(v0 + 944);
    if (v5 < 0)
    {
      v14 = *(v0 + 944);
    }

    v7 = sub_1D3277660();
  }

  else
  {
    v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v0 + 968) = v7;
  v15 = *(v0 + 944);
  if (v7)
  {
    *(v0 + 976) = *(v0 + 920);
    if ((v15 & 0xC000000000000001) != 0)
    {
      v16 = MEMORY[0x1D38B45D0](0);
    }

    else
    {
      if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_82:
        __break(1u);
        goto LABEL_83;
      }

      v16 = *(v15 + 32);
    }

    v17 = v16;
    *(v0 + 984) = v16;
    *(v0 + 992) = 1;
    v18 = *(v0 + 768);
    v19 = *(v18 + 16);
    if (!v19)
    {
LABEL_89:
      v130 = *(v0 + 896);

      __break(1u);
      goto LABEL_90;
    }

    [v19 length];
    v21 = *(v18 + 16);
    if (!v21)
    {
LABEL_90:
      v131 = *(v0 + 896);

      __break(1u);
      goto LABEL_91;
    }

    v22 = v20;
    v23 = *(v0 + 768);
    v24 = [v21 speedLimit];
    v25 = *(v23 + 16);
    if (!v25)
    {
LABEL_91:
      v132 = *(v0 + 896);

      __break(1u);
      return MEMORY[0x1EEE6DBF8]();
    }

    v26 = *(v0 + 768);
    sub_1D3148240([v25 speedLimitIsMPH], v22, v24);
    v28 = *(v26 + 40);
    v29 = v28 + 1;
    if (!__OFADD__(v28, 1))
    {
      v30 = *(v0 + 904);
      v31 = *(v0 + 768);
      v32 = *(v31 + 48);
      v33 = v27 + *(v31 + 56);
      v34 = *(v31 + 112);
      v36 = *(v31 + 64);
      v35 = *(v31 + 80);
      *(v0 + 440) = *(v31 + 96);
      *(v0 + 456) = v34;
      *(v0 + 408) = v36;
      *(v0 + 424) = v35;
      v37 = swift_allocObject();
      *(v0 + 1000) = v37;
      *(v37 + 16) = v17;
      *(v37 + 24) = v31;
      *(v37 + 32) = v31;
      *(v37 + 40) = v29;
      *(v37 + 48) = v32;
      *(v37 + 56) = v33;
      v38 = *(v31 + 64);
      v39 = *(v31 + 80);
      v40 = *(v31 + 112);
      *(v37 + 96) = *(v31 + 96);
      *(v37 + 112) = v40;
      *(v37 + 64) = v38;
      *(v37 + 80) = v39;
      swift_retain_n();
      v41 = v17;
      sub_1D314B39C(v0 + 408, v0 + 88);
      v42 = swift_task_alloc();
      *(v0 + 1008) = v42;
      *v42 = v0;
      v42[1] = sub_1D3171E70;
      v43.n128_u64[0] = *(v0 + 832);
      v44 = *(v0 + 816);
      v45 = *(v0 + 792);

      return sub_1D3170164(v37, v44, v43);
    }

    goto LABEL_82;
  }

  v47 = *(v0 + 944);

LABEL_58:
  swift_beginAccess();
  v93 = *v4;
  if (v93 >> 62)
  {
    if (sub_1D3277660())
    {
      goto LABEL_60;
    }
  }

  else if (*((v93 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_60:
    v94 = *(v0 + 896);
    v95 = *(v0 + 808);
    v96 = *(v0 + 800);

    goto LABEL_61;
  }

  v100 = [*(v0 + 800) coordinates3d];
  if (!v100)
  {
    goto LABEL_60;
  }

  v101 = *(v0 + 888);
  v52 = __OFSUB__(v101, 1);
  v102 = v101 - 1;
  if (v52)
  {
LABEL_85:
    __break(1u);
LABEL_86:
    v127 = *(v0 + 896);

    __break(1u);
    goto LABEL_87;
  }

  v103 = *(v0 + 800);
  v104 = &v100[24 * v102];
  v105 = *v104;
  v106 = v104[1];
  v107 = v104[2];
  v108 = [v103 coordinates3d];

  v109 = *(v0 + 896);
  if (v108)
  {
    v110 = *(v0 + 768);
    v111 = &v108[24 * *(v0 + 888)];
    v112 = *v111;
    v113 = v111[1];
    v114 = v111[2];
    v115 = GEOCoordinateGet3DDistance(v105, v106, v107, *v111, v113, v114);
    v116 = *(v0 + 728);
    v117 = v116 / v115;
    *(v110 + 48) = v116 + *(v110 + 48);
    *(v110 + 72) = 0;
    *(v110 + 88) = v105 + (v112 - v105) * v117;
    *(v110 + 96) = v106 + (v113 - v106) * v117;
    *(v110 + 104) = v107 + (v114 - v107) * v117;
    MEMORY[0x1D38B43F0](v105, v106, v107);
    MEMORY[0x1D38B43F0](v112, v113, v114);
    GEOBearingFromCoordinateToCoordinate();
    *(v110 + 112) = v118;
    sub_1D31730AC(v110);
    v119 = *(v0 + 896);
    v120 = *(v0 + 808);
    v121 = *(v0 + 800);
    if (*(v110 + 24))
    {

      sub_1D31730AC(v122);
    }

    else
    {
      v124 = *(v0 + 808);
    }

    goto LABEL_62;
  }

  v123 = *(v0 + 808);
  v96 = *(v0 + 800);

LABEL_61:

LABEL_62:
  v97 = *(v0 + 896);
  swift_beginAccess();
  v98 = *(v97 + 16);

  v99 = *(v0 + 8);

  return v99(v98);
}

uint64_t sub_1D3171A88()
{
  v1 = *(*v0 + 960);
  v2 = *(*v0 + 952);
  v3 = *(*v0 + 944);
  v5 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1D3171BBC, 0, 0);
}

char *sub_1D3171BBC()
{
  swift_beginAccess();
  v1 = *(v0 + 736);
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v9 = *(v0 + 736);
    }

    if (sub_1D3277660())
    {
      goto LABEL_3;
    }
  }

  else if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    v2 = *(v0 + 896);
    v3 = *(v0 + 808);
    v4 = *(v0 + 800);

LABEL_4:
    goto LABEL_5;
  }

  result = [*(v0 + 800) coordinates3d];
  if (!result)
  {
    goto LABEL_3;
  }

  v10 = *(v0 + 888);
  v11 = __OFSUB__(v10, 1);
  v12 = v10 - 1;
  if (v11)
  {
    __break(1u);
    return result;
  }

  v13 = *(v0 + 800);
  v14 = &result[24 * v12];
  v15 = *v14;
  v16 = v14[1];
  v17 = v14[2];
  v18 = [v13 coordinates3d];

  v19 = *(v0 + 896);
  if (!v18)
  {
    v33 = *(v0 + 808);
    v4 = *(v0 + 800);

    goto LABEL_4;
  }

  v20 = *(v0 + 768);
  v21 = &v18[24 * *(v0 + 888)];
  v22 = *v21;
  v23 = v21[1];
  v24 = v21[2];
  v25 = GEOCoordinateGet3DDistance(v15, v16, v17, *v21, v23, v24);
  v26 = *(v0 + 728);
  v27 = v26 / v25;
  *(v20 + 48) = v26 + *(v20 + 48);
  *(v20 + 72) = 0;
  *(v20 + 88) = v15 + (v22 - v15) * v27;
  *(v20 + 96) = v16 + (v23 - v16) * v27;
  *(v20 + 104) = v17 + (v24 - v17) * v27;
  MEMORY[0x1D38B43F0](v15, v16, v17);
  MEMORY[0x1D38B43F0](v22, v23, v24);
  GEOBearingFromCoordinateToCoordinate();
  *(v20 + 112) = v28;
  sub_1D31730AC(v20);
  v29 = *(v0 + 896);
  v30 = *(v0 + 808);
  v31 = *(v0 + 800);
  if (*(v20 + 24))
  {

    sub_1D31730AC(v32);
  }

  else
  {
    v34 = *(v0 + 808);
  }

LABEL_5:
  v5 = *(v0 + 896);
  swift_beginAccess();
  v6 = *(v5 + 16);

  v7 = *(v0 + 8);

  return v7(v6);
}

uint64_t sub_1D3171E70(uint64_t a1)
{
  v2 = *(*v1 + 1008);
  v4 = *v1;
  *(*v1 + 1016) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D3171F70, 0, 0);
}

uint64_t sub_1D3171F70()
{
  v1 = v0;
  v2 = v0[127];
  if ((v2 & 0xC000000000000001) != 0)
  {
    v3 = v0[114];
    v4 = v0[113];
    if (v2 < 0)
    {
      v5 = v0[127];
    }

    sub_1D3277650();
    sub_1D3277330();
    v2 = v0[59];
    v6 = v0[60];
    v7 = v0[61];
    v8 = v0[62];
    v9 = v0[63];
  }

  else
  {
    v8 = 0;
    v10 = -1 << *(v2 + 32);
    v6 = v2 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(v2 + 56);
  }

  v245 = v0 + 43;
  v246 = v0 + 35;
  v233 = v0 + 85;
  v236 = v0 + 90;
  v237 = v0 + 89;
  v234 = v0 + 93;
  v235 = v0 + 51;
  v13 = (v7 + 64) >> 6;
  v14 = v0[122];
  v240 = v0;
  v241 = v6;
  v242 = v2;
  v239 = v13;
LABEL_10:
  v243 = v14 & 0xC000000000000001;
  v15 = v14 & 0xFFFFFFFFFFFFFF8;
  if (v14 < 0)
  {
    v15 = v14;
  }

  v238 = v15;
  v247 = v14;
  v249 = v14 + 56;
  v16 = v8;
  if (v2 < 0)
  {
LABEL_13:
    v17 = sub_1D3277680();
    if (v17)
    {
      v18 = *(v1 + 113);
      *(v1 + 95) = v17;
      swift_dynamicCast();
      v19 = *(v1 + 94);
      v8 = v16;
      v244 = v9;
      if (v19)
      {
        goto LABEL_21;
      }
    }

LABEL_133:
    v160 = *(v1 + 125);
    v161 = *(v1 + 124);
    v162 = *(v1 + 123);
    v163 = *(v1 + 121);
    sub_1D31779AC();

    if (v161 == v163)
    {
      v164 = *(v1 + 118);

      swift_beginAccess();
      v165 = *(v1 + 92);
      if (v165 >> 62)
      {
        goto LABEL_159;
      }

      if (!*((v165 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_160;
      }

      goto LABEL_136;
    }

    v173 = *(v1 + 124);
    *(v1 + 122) = v14;
    v174 = *(v1 + 118);
    if ((v174 & 0xC000000000000001) != 0)
    {
      v175 = MEMORY[0x1D38B45D0](v173);
    }

    else
    {
      if (v173 >= *((v174 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_170;
      }

      v175 = *(v174 + 8 * v173 + 32);
    }

    v176 = v175;
    *(v1 + 123) = v175;
    *(v1 + 124) = v173 + 1;
    if (!__OFADD__(v173, 1))
    {
      v177 = *(v1 + 96);
      v178 = *(v177 + 16);
      if (!v178)
      {
        goto LABEL_175;
      }

      [v178 length];
      v180 = *(v177 + 16);
      if (!v180)
      {
        goto LABEL_176;
      }

      v181 = v179;
      v182 = *(v1 + 96);
      v183 = [v180 speedLimit];
      v184 = *(v182 + 16);
      if (!v184)
      {
        goto LABEL_177;
      }

      v185 = *(v1 + 96);
      sub_1D3148240([v184 speedLimitIsMPH], v181, v183);
      v187 = *(v185 + 40);
      v188 = v187 + 1;
      if (!__OFADD__(v187, 1))
      {
        v189 = *(v1 + 113);
        v190 = *(v1 + 96);
        v191 = *(v190 + 48);
        v192 = v186 + *(v190 + 56);
        v193 = *(v190 + 112);
        v195 = *(v190 + 64);
        v194 = *(v190 + 80);
        v235[2] = *(v190 + 96);
        v235[3] = v193;
        *v235 = v195;
        v235[1] = v194;
        v196 = swift_allocObject();
        *(v1 + 125) = v196;
        *(v196 + 16) = v176;
        *(v196 + 24) = v190;
        *(v196 + 32) = v190;
        *(v196 + 40) = v188;
        *(v196 + 48) = v191;
        *(v196 + 56) = v192;
        v197 = *(v190 + 64);
        v198 = *(v190 + 80);
        v199 = *(v190 + 112);
        *(v196 + 96) = *(v190 + 96);
        *(v196 + 112) = v199;
        *(v196 + 64) = v197;
        *(v196 + 80) = v198;
        swift_retain_n();
        v200 = v176;
        sub_1D314B39C(v235, (v1 + 11));
        v201 = swift_task_alloc();
        *(v1 + 126) = v201;
        *v201 = v1;
        v201[1] = sub_1D3171E70;
        v202.n128_f64[0] = v1[104];
        v203 = *(v1 + 102);
        v204 = *(v1 + 99);

        return sub_1D3170164(v196, v203, v202);
      }

      goto LABEL_171;
    }

    __break(1u);
LABEL_170:
    __break(1u);
LABEL_171:
    __break(1u);
    goto LABEL_172;
  }

LABEL_16:
  v20 = v16;
  v21 = v9;
  v8 = v16;
  if (!v9)
  {
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_133;
      }

      v21 = *(v6 + 8 * v8);
      ++v20;
      if (v21)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_157:
    __break(1u);
    goto LABEL_158;
  }

LABEL_20:
  v244 = (v21 - 1) & v21;
  v19 = *(*(v2 + 48) + ((v8 << 9) | (8 * __clz(__rbit64(v21)))));

  if (!v19)
  {
    goto LABEL_133;
  }

LABEL_21:
  v22 = *(v1 + 112);
  swift_beginAccess();
  if (v243)
  {
    swift_retain_n();

    v23 = sub_1D3277670();

    if (v23)
    {
      v24 = *(v1 + 113);

      *(v1 + 87) = v23;
      swift_dynamicCast();
      v25 = *(v1 + 86);
      goto LABEL_47;
    }

    v144 = sub_1D3277660();
    if (__OFADD__(v144, 1))
    {
      goto LABEL_173;
    }

    v119 = sub_1D3175A30(v238, v144 + 1);
    *v233 = v119;
    v145 = *(v119 + 16);
    if (*(v119 + 24) <= v145)
    {
      sub_1D3176094(v145 + 1);
      v119 = *v233;
    }

    v146 = *(v119 + 40);
    sub_1D3277980();

    sub_1D314AC84();
    v147 = sub_1D32779B0();
    v148 = v119 + 56;
    v149 = -1 << *(v119 + 32);
    v150 = v147 & ~v149;
    v151 = v150 >> 6;
    if (((-1 << v150) & ~*(v119 + 56 + 8 * (v150 >> 6))) != 0)
    {
      v152 = __clz(__rbit64((-1 << v150) & ~*(v119 + 56 + 8 * (v150 >> 6)))) | v150 & 0x7FFFFFFFFFFFFFC0;
LABEL_132:
      v159 = *(v1 + 112);
      *(v148 + ((v152 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v152;
      *(*(v119 + 48) + 8 * v152) = v19;
      ++*(v119 + 16);

      *(v159 + 16) = v119;
      goto LABEL_112;
    }

    v155 = 0;
    v156 = (63 - v149) >> 6;
    while (++v151 != v156 || (v155 & 1) == 0)
    {
      v157 = v151 == v156;
      if (v151 == v156)
      {
        v151 = 0;
      }

      v155 |= v157;
      v158 = *(v148 + 8 * v151);
      if (v158 != -1)
      {
        v152 = __clz(__rbit64(~v158)) + (v151 << 6);
        goto LABEL_132;
      }
    }

LABEL_158:
    __break(1u);
LABEL_159:
    if (!sub_1D3277660())
    {
LABEL_160:
      v206 = [*(v1 + 100) coordinates3d];
      if (v206)
      {
        v207 = *(v1 + 111);
        v138 = __OFSUB__(v207, 1);
        v208 = v207 - 1;
        if (!v138)
        {
          v209 = *(v1 + 100);
          v210 = &v206[24 * v208];
          v211 = *v210;
          v212 = v210[1];
          v213 = v210[2];
          v214 = [v209 coordinates3d];

          v215 = *(v1 + 112);
          if (v214)
          {
            v216 = *(v1 + 96);
            v217 = &v214[24 * *(v1 + 111)];
            v218 = *v217;
            v219 = v217[1];
            v220 = v217[2];
            v221 = GEOCoordinateGet3DDistance(v211, v212, v213, *v217, v219, v220);
            v222 = v1[91];
            v223 = v222 / v221;
            *(v216 + 48) = v222 + *(v216 + 48);
            *(v216 + 72) = 0;
            *(v216 + 88) = v211 + (v218 - v211) * v223;
            *(v216 + 96) = v212 + (v219 - v212) * v223;
            *(v216 + 104) = v213 + (v220 - v213) * v223;
            MEMORY[0x1D38B43F0](v211, v212, v213);
            MEMORY[0x1D38B43F0](v218, v219, v220);
            GEOBearingFromCoordinateToCoordinate();
            *(v216 + 112) = v224;
            sub_1D31730AC(v216);
            v225 = *(v1 + 112);
            v226 = *(v1 + 101);
            v168 = *(v1 + 100);
            if (*(v216 + 24))
            {

              sub_1D31730AC(v227);

              goto LABEL_138;
            }

            v229 = *(v1 + 101);
          }

          else
          {
            v228 = *(v1 + 101);
            v168 = *(v1 + 100);
          }

LABEL_137:

LABEL_138:
          v169 = *(v1 + 112);
          swift_beginAccess();
          v170 = *(v169 + 16);

          v171 = *(v1 + 1);

          return v171(v170);
        }

LABEL_172:
        __break(1u);
LABEL_173:
        __break(1u);
        goto LABEL_174;
      }
    }

LABEL_136:
    v166 = *(v1 + 112);
    v167 = *(v1 + 101);
    v168 = *(v1 + 100);

    goto LABEL_137;
  }

  v26 = *(v14 + 40);
  sub_1D3277980();
  v27 = *(v19 + 16);
  if (v27)
  {

    MEMORY[0x1D38B4860]([v27 muid]);
  }

  else
  {
    v28 = qword_1EC75C000;

    if (v28 != -1)
    {
      swift_once();
    }

    v29 = sub_1D3276F80();
    __swift_project_value_buffer(v29, qword_1EC760870);
    v30 = sub_1D3276F60();
    v31 = sub_1D3277390();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_1D311E000, v30, v31, "Tried to hash a MapMatcherConnectivityNode with no road", v32, 2u);
      MEMORY[0x1D38B6000](v32, -1, -1);
    }
  }

  v33 = sub_1D32779B0();
  v34 = ~(-1 << *(v14 + 32));
  for (i = v33 & v34; ((*(v249 + ((i >> 3) & 0xFFFFFFFFFFFFFF8)) >> i) & 1) != 0; i = (i + 1) & v34)
  {
    v40 = *(v14 + 48);
    v41 = *(*(v40 + 8 * i) + 16);
    if (v41)
    {
      v42 = *(v40 + 8 * i);

      v43 = [v41 muid];
      v44 = *(v19 + 16);
      if (!v44)
      {

        continue;
      }

      v36 = v43;
    }

    else
    {
      v44 = *(v19 + 16);
      v45 = *(v40 + 8 * i);

      if (!v44)
      {

LABEL_46:

        v25 = *(*(v14 + 48) + 8 * i);

LABEL_47:
        swift_endAccess();
        v46 = v25[7];
        v48 = v25[4];
        v47 = v25[5];
        v245[2] = v25[6];
        v245[3] = v46;
        *v245 = v48;
        v245[1] = v47;
        v49 = *v245;
        v50 = *(*v245 + 16);
        if (v50)
        {
          if (v50 <= 3)
          {
            v51 = 0;
            v52 = 0.0;
            goto LABEL_55;
          }

          v51 = v50 & 0x7FFFFFFFFFFFFFFCLL;
          v59 = (v49 + 48);
          v52 = 0.0;
          v60 = v50 & 0x7FFFFFFFFFFFFFFCLL;
          do
          {
            v61 = *v59;
            v52 = v52 + *(v59 - 2) + *(v59 - 1) + *v59 + v59[1];
            v59 += 4;
            v60 -= 4;
          }

          while (v60);
          if (v50 != v51)
          {
LABEL_55:
            v62 = v50 - v51;
            v63 = (v49 + 8 * v51 + 32);
            do
            {
              v64 = *v63++;
              v52 = v52 + v64;
              --v62;
            }

            while (v62);
          }

          v65 = (v49 + 32);
          v66 = v52 / v50;
          sub_1D314B39C(v245, (v1 + 19));
          v67 = v236;
          *v236 = MEMORY[0x1E69E7CC0];
          sub_1D314B424(0, v50, 0);
          v68 = *v236;
          v69 = *(*v236 + 16);
          v70 = v69 + 1;
          v71 = v50;
          v72 = v69;
          do
          {
            v73 = v70;
            v74 = *v65;
            *v67 = v68;
            v75 = *(v68 + 24);
            if (v72 >= v75 >> 1)
            {
              sub_1D314B424((v75 > 1), v72 + 1, 1);
              v67 = v236;
              v68 = *v236;
            }

            *(v68 + 16) = v72 + 1;
            *(v68 + 8 * v72 + 32) = (v74 - v66) * (v74 - v66);
            ++v65;
            v70 = v73 + 1;
            ++v72;
            --v71;
          }

          while (v71);
          v76 = v50 + v69;
          if (v50 + v69 <= 3)
          {
            v77 = 0;
            v78 = 0.0;
            v1 = v240;
            v14 = v247;
            goto LABEL_66;
          }

          v77 = v76 & 0xFFFFFFFFFFFFFFFCLL;
          v79 = (v68 + 48);
          v78 = 0.0;
          v80 = v76 & 0xFFFFFFFFFFFFFFFCLL;
          v14 = v247;
          do
          {
            v81 = *v79;
            v78 = v78 + *(v79 - 2) + *(v79 - 1) + *v79 + v79[1];
            v79 += 4;
            v80 -= 4;
          }

          while (v80);
          v1 = v240;
          if (v76 != v77)
          {
LABEL_66:
            v82 = v73 - v77;
            v83 = (v68 + 8 * v77 + 32);
            do
            {
              v84 = *v83++;
              v78 = v78 + v84;
              --v82;
            }

            while (v82);
          }

          sub_1D314B3D4(v245);
          v58 = v78 / v50 + v1[44];
          v85 = *(v19 + 64);
          v86 = *(v19 + 80);
          v87 = *(v19 + 112);
          v246[2] = *(v19 + 96);
          v246[3] = v87;
          *v246 = v85;
          v246[1] = v86;
          v56 = *(v1 + 35);
          v57 = *(v56 + 16);
          if (v57)
          {
LABEL_69:
            if (v57 <= 3)
            {
              v88 = 0;
              v89 = 0.0;
              goto LABEL_74;
            }

            v88 = v57 & 0x7FFFFFFFFFFFFFFCLL;
            v90 = (v56 + 48);
            v89 = 0.0;
            v91 = v57 & 0x7FFFFFFFFFFFFFFCLL;
            do
            {
              v92 = *v90;
              v89 = v89 + *(v90 - 2) + *(v90 - 1) + *v90 + v90[1];
              v90 += 4;
              v91 -= 4;
            }

            while (v91);
            if (v57 != v88)
            {
LABEL_74:
              v93 = v57 - v88;
              v94 = (v56 + 8 * v88 + 32);
              do
              {
                v95 = *v94++;
                v89 = v89 + v95;
                --v93;
              }

              while (v93);
            }

            v96 = (v56 + 32);
            v97 = v89 / v57;
            sub_1D314B39C(v246, (v1 + 27));
            v98 = v237;
            *v237 = MEMORY[0x1E69E7CC0];
            sub_1D314B424(0, v57, 0);
            v99 = *v237;
            v100 = *(*v237 + 16);
            v101 = v100 + 1;
            v102 = v57;
            v103 = v100;
            do
            {
              v104 = v101;
              v105 = *v96;
              *v98 = v99;
              v106 = *(v99 + 24);
              if (v103 >= v106 >> 1)
              {
                sub_1D314B424((v106 > 1), v103 + 1, 1);
                v98 = v237;
                v99 = *v237;
              }

              *(v99 + 16) = v103 + 1;
              *(v99 + 8 * v103 + 32) = (v105 - v97) * (v105 - v97);
              ++v96;
              v101 = v104 + 1;
              ++v103;
              --v102;
            }

            while (v102);
            v107 = v57 + v100;
            if (v57 + v100 <= 3)
            {
              v108 = 0;
              v109 = 0.0;
              v1 = v240;
              v14 = v247;
              goto LABEL_85;
            }

            v108 = v107 & 0xFFFFFFFFFFFFFFFCLL;
            v110 = (v99 + 48);
            v109 = 0.0;
            v111 = v107 & 0xFFFFFFFFFFFFFFFCLL;
            v1 = v240;
            v14 = v247;
            do
            {
              v112 = *v110;
              v109 = v109 + *(v110 - 2) + *(v110 - 1) + *v110 + v110[1];
              v110 += 4;
              v111 -= 4;
            }

            while (v111);
            if (v107 != v108)
            {
LABEL_85:
              v113 = v104 - v108;
              v114 = (v99 + 8 * v108 + 32);
              do
              {
                v115 = *v114++;
                v109 = v109 + v115;
                --v113;
              }

              while (v113);
            }

            sub_1D314B3D4(v246);
            if (v58 > v109 / v57 + v1[36])
            {
              v141 = *(v1 + 112);
              swift_beginAccess();
              if (v243)
              {

                v142 = sub_1D3277660();
                if (!__OFADD__(v142, 1))
                {
                  v143 = *(v1 + 112);
                  *(v1 + 88) = sub_1D3175A30(v238, v142 + 1);
                  sub_1D3175D20(v19, 1);

                  v14 = *(v1 + 88);
                  goto LABEL_123;
                }

LABEL_174:
                __break(1u);
LABEL_175:
                v230 = *(v1 + 112);

                __break(1u);
LABEL_176:
                v231 = *(v1 + 112);

                __break(1u);
LABEL_177:
                v232 = *(v1 + 112);

                __break(1u);
                return result;
              }

              v143 = *(v1 + 112);

              v153 = *(v143 + 16);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v250 = *(v143 + 16);
              sub_1D3175D20(v19, isUniquelyReferenced_nonNull_native);

              v14 = v250;
LABEL_123:
              *(v143 + 16) = v14;
              swift_endAccess();

LABEL_113:
              v6 = v241;
              v2 = v242;
              v13 = v239;
              v9 = v244;
              goto LABEL_10;
            }
          }
        }

        else
        {
          v53 = *(v19 + 112);
          v55 = *(v19 + 64);
          v54 = *(v19 + 80);
          v246[2] = *(v19 + 96);
          v246[3] = v53;
          *v246 = v55;
          v246[1] = v54;
          v56 = *v246;
          v57 = *(*v246 + 16);
          if (v57)
          {
            v58 = INFINITY;
            goto LABEL_69;
          }
        }

        v16 = v8;
        v9 = v244;
        v6 = v241;
        v2 = v242;
        v13 = v239;
        if (v242 < 0)
        {
          goto LABEL_13;
        }

        goto LABEL_16;
      }

      v36 = 0;
    }

    v37 = v44;
    v38 = [v37 muid];

    if (v41)
    {
      v39 = v36 == v38;
    }

    else
    {
      v39 = 0;
    }

    v14 = v247;
    if (v39)
    {
      goto LABEL_46;
    }
  }

  v116 = *(v1 + 112);
  v117 = *(v116 + 16);
  v118 = swift_isUniquelyReferenced_nonNull_native();
  v119 = *(v116 + 16);
  *(v1 + 93) = v119;
  v120 = *(v119 + 16);
  v121 = *(v119 + 24);

  if (v121 > v120)
  {
    if ((v118 & 1) == 0)
    {
      sub_1D317645C();
      v119 = *v234;
    }

    goto LABEL_110;
  }

  v122 = v120 + 1;
  if (v118)
  {
    v123 = v234;
    sub_1D3176094(v122);
  }

  else
  {
    v123 = v234;
    sub_1D31765AC(v122);
  }

  v119 = *v123;
  v124 = *(*v123 + 40);
  sub_1D3277980();
  sub_1D314AC84();
  v125 = sub_1D32779B0();
  v126 = -1 << *(v119 + 32);
  i = v125 & ~v126;
  if (((*(v119 + 56 + ((i >> 3) & 0xFFFFFFFFFFFFFF8)) >> i) & 1) == 0)
  {
LABEL_110:
    *(v119 + ((i >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << i;
    *(*(v119 + 48) + 8 * i) = v19;
    v137 = *(v119 + 16);
    v138 = __OFADD__(v137, 1);
    v139 = v137 + 1;
    if (!v138)
    {
      v140 = *(v1 + 112);
      *(v119 + 16) = v139;
      *(v140 + 16) = v119;
LABEL_112:
      swift_endAccess();

      v14 = v119;
      goto LABEL_113;
    }

    goto LABEL_157;
  }

  v248 = ~v126;
  while (2)
  {
    v131 = *(v119 + 48);
    v132 = *(*(v131 + 8 * i) + 16);
    if (v132)
    {
      v133 = *(v131 + 8 * i);

      v134 = [v132 muid];
      v135 = *(v19 + 16);
      if (!v135)
      {

LABEL_104:
        i = (i + 1) & v248;
        if (((*(v119 + 56 + ((i >> 3) & 0xFFFFFFFFFFFFFF8)) >> i) & 1) == 0)
        {
          goto LABEL_110;
        }

        continue;
      }

      v127 = v134;
LABEL_100:
      v128 = v135;
      v129 = [v128 muid];

      if (v132)
      {
        v130 = v127 == v129;
      }

      else
      {
        v130 = 0;
      }

      if (v130)
      {
        goto LABEL_153;
      }

      goto LABEL_104;
    }

    break;
  }

  v135 = *(v19 + 16);
  v136 = *(v131 + 8 * i);

  if (v135)
  {
    v127 = 0;
    goto LABEL_100;
  }

LABEL_153:
  v205 = *(v1 + 113);

  return sub_1D3277910();
}

uint64_t sub_1D31730AC(_OWORD *a1)
{
  swift_beginAccess();

  v2 = sub_1D31756DC(v14, a1);
  swift_endAccess();
  if ((v2 & 1) == 0)
  {
    v3 = *(*&v14[0] + 80);
    v15[0] = *(*&v14[0] + 64);
    v15[1] = v3;
    v4 = *(*&v14[0] + 112);
    v15[2] = *(*&v14[0] + 96);
    v15[3] = v4;
    sub_1D314B39C(v15, v14);
    sub_1D314A9DC();
    v6 = v5;
    sub_1D314B3D4(v15);
    v7 = a1[5];
    v14[0] = a1[4];
    v14[1] = v7;
    v8 = a1[7];
    v14[2] = a1[6];
    v14[3] = v8;
    sub_1D314B39C(v14, &v13);
    sub_1D314A9DC();
    v10 = v9;
    sub_1D314B3D4(v14);
    if (v6 > v10)
    {
      swift_beginAccess();

      sub_1D3175990(v11);
      swift_endAccess();
    }
  }
}

uint64_t sub_1D31731E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[52] = a7;
  v8[53] = a8;
  v8[50] = a5;
  v8[51] = a6;
  v8[48] = a3;
  v8[49] = a4;
  v8[47] = a2;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C5F0, &qword_1D328C5F0) - 8) + 64) + 15;
  v8[54] = swift_task_alloc();
  v8[55] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75CBB8, &qword_1D328C7E0);
  v8[56] = v10;
  v11 = *(v10 - 8);
  v8[57] = v11;
  v12 = *(v11 + 64) + 15;
  v8[58] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D31732FC, 0, 0);
}

uint64_t sub_1D31732FC()
{
  v1 = *(v0 + 384);
  if (v1 >> 62)
  {
LABEL_28:
    v2 = sub_1D3277660();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = *(v0 + 400);
  v4 = *(v0 + 408);
  v5 = *(v0 + 392);
  swift_beginAccess();
  swift_beginAccess();
  if (v2)
  {
    v6 = 0;
    v55 = v1 & 0xFFFFFFFFFFFFFF8;
    v56 = v1 & 0xC000000000000001;
    v52 = *(v0 + 392);
    v53 = v2;
    v54 = *(v0 + 384) + 32;
    do
    {
      if (v56)
      {
        v7 = MEMORY[0x1D38B45D0](v6, *(v0 + 384));
      }

      else
      {
        if (v6 >= *(v55 + 16))
        {
          goto LABEL_26;
        }

        v7 = *(v54 + 8 * v6);
      }

      v11 = v7;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v12 = *(v5 + 16);
      if (!v12)
      {
        goto LABEL_30;
      }

      [v12 length];
      v12 = *(v5 + 16);
      if (!v12)
      {
LABEL_31:
        __break(1u);
        return MEMORY[0x1EEE6D8A8](v12, v8, v9, v10);
      }

      v14 = v13;
      v15 = [v12 speedLimit];
      v12 = *(v5 + 16);
      if (!v12)
      {
        __break(1u);
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      sub_1D3148240([v12 speedLimitIsMPH], v14, v15);
      v17 = *(v5 + 40);
      v1 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        goto LABEL_27;
      }

      v60 = v6 + 1;
      v61 = v6;
      v19 = *(v0 + 432);
      v18 = *(v0 + 440);
      v21 = *(v0 + 400);
      v20 = *(v0 + 408);
      v58 = *(v0 + 392);
      v22 = *(v5 + 48);
      v23 = v16 + *(v5 + 56);
      v24 = *(v5 + 112);
      v26 = *(v5 + 64);
      v25 = *(v5 + 80);
      *(v0 + 48) = *(v5 + 96);
      *(v0 + 64) = v24;
      *(v0 + 16) = v26;
      *(v0 + 32) = v25;
      type metadata accessor for ConnectedSearchNode();
      v27 = swift_allocObject();
      *(v27 + 16) = v11;
      *(v27 + 24) = v52;
      *(v27 + 32) = v52;
      *(v27 + 40) = v1;
      *(v27 + 48) = v22;
      *(v27 + 56) = v23;
      v28 = *(v5 + 112);
      v30 = *(v5 + 64);
      v29 = *(v5 + 80);
      *(v27 + 96) = *(v5 + 96);
      *(v27 + 112) = v28;
      *(v27 + 64) = v30;
      *(v27 + 80) = v29;
      v31 = *v21;
      v32 = *v20;
      v57 = v11;
      v33 = sub_1D3277280();
      v34 = *(v33 - 8);
      (*(v34 + 56))(v18, 1, 1, v33);
      v35 = swift_allocObject();
      v35[2] = 0;
      v36 = v35 + 2;
      v35[3] = 0;
      v35[4] = v27;
      v35[5] = v31;
      v35[6] = v32;
      sub_1D31528F4(v18, v19);
      LODWORD(v19) = (*(v34 + 48))(v19, 1, v33);
      swift_retain_n();
      v59 = v57;
      v37 = *(v0 + 432);
      v38 = v0 + 16;
      if (v19 == 1)
      {
        sub_1D314B39C(v38, v0 + 80);

        sub_1D3123330(v37);
        if (!*v36)
        {
          goto LABEL_18;
        }
      }

      else
      {
        sub_1D314B39C(v38, v0 + 144);

        sub_1D3277270();
        (*(v34 + 8))(v37, v33);
        if (!*v36)
        {
LABEL_18:
          v40 = 0;
          v42 = 0;
          goto LABEL_19;
        }
      }

      v39 = v35[3];
      swift_getObjectType();
      swift_unknownObjectRetain();
      v40 = sub_1D3277200();
      v42 = v41;
      swift_unknownObjectRelease();
LABEL_19:
      v43 = **(v0 + 376);
      v44 = swift_allocObject();
      *(v44 + 16) = &unk_1D328C7F0;
      *(v44 + 24) = v35;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75CBA8, &qword_1D328C7B8);
      v45 = v42 | v40;
      if (v42 | v40)
      {
        v45 = v0 + 248;
        *(v0 + 248) = 0;
        *(v0 + 256) = 0;
        *(v0 + 264) = v40;
        *(v0 + 272) = v42;
      }

      v1 = *(v0 + 440);
      *(v0 + 328) = 1;
      *(v0 + 336) = v45;
      *(v0 + 344) = v43;
      swift_task_create();

      sub_1D3123330(v1);
      v6 = v61 + 1;
    }

    while (v60 != v53);
  }

  v46 = *(v0 + 464);
  v47 = **(v0 + 376);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75CBA8, &qword_1D328C7B8);
  sub_1D3277240();
  v48 = *(MEMORY[0x1E69E8588] + 4);
  v49 = swift_task_alloc();
  *(v0 + 472) = v49;
  *v49 = v0;
  v49[1] = sub_1D3173818;
  v50 = *(v0 + 464);
  v10 = *(v0 + 448);
  v12 = (v0 + 352);
  v8 = 0;
  v9 = 0;

  return MEMORY[0x1EEE6D8A8](v12, v8, v9, v10);
}

uint64_t sub_1D3173818()
{
  v1 = *(*v0 + 472);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1D3173914, 0, 0);
}

uint64_t sub_1D3173914(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 352);
  if (v5)
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      if (v5 < 0)
      {
        v6 = *(v4 + 352);
      }

      sub_1D3277650();
      type metadata accessor for ConnectedSearchNode();
      sub_1D3177870();
      a1 = sub_1D3277330();
      v5 = *(v4 + 208);
      v7 = *(v4 + 216);
      v8 = *(v4 + 224);
      v9 = *(v4 + 232);
      v10 = *(v4 + 240);
    }

    else
    {
      v9 = 0;
      v15 = -1 << *(v5 + 32);
      v7 = v5 + 56;
      v8 = ~v15;
      v16 = -v15;
      if (v16 < 64)
      {
        v17 = ~(-1 << v16);
      }

      else
      {
        v17 = -1;
      }

      v10 = v17 & *(v5 + 56);
    }

    v18 = (v8 + 64) >> 6;
    if (v5 < 0)
    {
      goto LABEL_20;
    }

    while (1)
    {
      v19 = v9;
      v20 = v10;
      v21 = v9;
      if (!v10)
      {
        break;
      }

LABEL_18:
      v22 = (v20 - 1) & v20;
      v23 = *(*(v5 + 48) + ((v21 << 9) | (8 * __clz(__rbit64(v20)))));

      if (!v23)
      {
LABEL_24:
        sub_1D31779AC();
        v26 = *(MEMORY[0x1E69E8588] + 4);
        v27 = swift_task_alloc();
        *(v4 + 472) = v27;
        *v27 = v4;
        v27[1] = sub_1D3173818;
        v28 = *(v4 + 464);
        a4 = *(v4 + 448);
        a1 = v4 + 352;
        a2 = 0;
        a3 = 0;

        return MEMORY[0x1EEE6D8A8](a1, a2, a3, a4);
      }

      while (1)
      {
        v25 = *(v4 + 424);
        (*(v4 + 416))(v23);

        v9 = v21;
        v10 = v22;
        if ((v5 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_20:
        v24 = sub_1D3277680();
        if (v24)
        {
          *(v4 + 368) = v24;
          type metadata accessor for ConnectedSearchNode();
          swift_dynamicCast();
          v23 = *(v4 + 360);
          v21 = v9;
          v22 = v10;
          if (v23)
          {
            continue;
          }
        }

        goto LABEL_24;
      }
    }

    while (1)
    {
      v21 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v21 >= v18)
      {
        goto LABEL_24;
      }

      v20 = *(v7 + 8 * v21);
      ++v19;
      if (v20)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
    return MEMORY[0x1EEE6D8A8](a1, a2, a3, a4);
  }

  else
  {
    v11 = *(v4 + 440);
    v12 = *(v4 + 432);
    (*(*(v4 + 456) + 8))(*(v4 + 464), *(v4 + 448));

    v13 = *(v4 + 8);

    return v13();
  }
}

uint64_t sub_1D3173BD8(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a1;
  type metadata accessor for ConnectedRoadSimilaritySearch();
  v10 = swift_task_alloc();
  *(v6 + 24) = v10;
  *v10 = v6;
  v10[1] = sub_1D3173C94;

  return sub_1D3170164(a5, a6, a2);
}

uint64_t sub_1D3173C94(uint64_t a1)
{
  v2 = *(*v1 + 24);
  v4 = *v1;
  *(*v1 + 32) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D3173D94, 0, 0);
}

uint64_t sub_1D3173DD8(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1D3176A8C(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1D3173E54(v6);
  return sub_1D3277760();
}

uint64_t sub_1D3173E54(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1D3277880();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for ConnectedSearchNode();
        v6 = sub_1D32771C0();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_1D317443C(v8, v9, a1, v4);
      *(v7 + 16) = 0;
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
    return sub_1D3173F58(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1D3173F58(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v70 = result;
  if (a3 != a2)
  {
    v4 = *a4;
    v71 = *a4;
LABEL_5:
    v5 = *(v4 + 8 * a3);
    v69 = a3;
    while (1)
    {
      v6 = *(v4 + 8 * (a3 - 1));
      v7 = v5[7];
      v76[2] = v5[6];
      v76[3] = v7;
      v8 = v5[5];
      v76[0] = v5[4];
      v76[1] = v8;
      v9 = *(*&v76[0] + 16);
      v72 = a3 - 1;
      v73 = a3;
      v77 = v6;
      if (!v9)
      {

        v12 = INFINITY;
        goto LABEL_27;
      }

      if (v9 > 3)
      {
        v10 = v9 & 0x7FFFFFFFFFFFFFFCLL;
        v13 = *&v76[0] + 48;
        v11 = 0.0;
        v14 = v9 & 0x7FFFFFFFFFFFFFFCLL;
        do
        {
          v15 = *v13;
          v11 = v11 + *(v13 - 16) + *(v13 - 8) + *v13 + *(v13 + 8);
          v13 += 32;
          v14 -= 4;
        }

        while (v14);
        if (v9 == v10)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v10 = 0;
        v11 = 0.0;
      }

      v16 = v9 - v10;
      v17 = (*&v76[0] + 8 * v10 + 32);
      do
      {
        v18 = *v17++;
        v11 = v11 + v18;
        --v16;
      }

      while (v16);
LABEL_15:
      v19 = (*&v76[0] + 32);
      v20 = v11 / v9;

      sub_1D314B39C(v76, v75);
      *&v75[0] = MEMORY[0x1E69E7CC0];
      sub_1D314B424(0, v9, 0);
      v21 = *&v75[0];
      v22 = *(*&v75[0] + 16);
      v23 = v22 + 1;
      v24 = v9;
      v25 = v22;
      do
      {
        v26 = v23;
        v27 = *v19;
        *&v75[0] = v21;
        v28 = *(v21 + 24);
        if (v25 >= v28 >> 1)
        {
          sub_1D314B424((v28 > 1), v25 + 1, 1);
          v21 = *&v75[0];
        }

        *(v21 + 16) = v25 + 1;
        *(v21 + 8 * v25 + 32) = (v27 - v20) * (v27 - v20);
        ++v19;
        v23 = v26 + 1;
        ++v25;
        --v24;
      }

      while (v24);
      v29 = v9 + v22;
      if (v9 + v22 > 3)
      {
        v30 = v29 & 0xFFFFFFFFFFFFFFFCLL;
        v32 = (v21 + 48);
        v31 = 0.0;
        v33 = v29 & 0xFFFFFFFFFFFFFFFCLL;
        v6 = v77;
        do
        {
          v34 = *v32;
          v31 = v31 + *(v32 - 2) + *(v32 - 1) + *v32 + v32[1];
          v32 += 4;
          v33 -= 4;
        }

        while (v33);
        if (v29 == v30)
        {
          goto LABEL_26;
        }
      }

      else
      {
        v30 = 0;
        v31 = 0.0;
        v6 = v77;
      }

      v35 = v26 - v30;
      v36 = (v21 + 8 * v30 + 32);
      do
      {
        v37 = *v36++;
        v31 = v31 + v37;
        --v35;
      }

      while (v35);
LABEL_26:

      sub_1D314B3D4(v76);
      v12 = v31 / v9 + *(v76 + 1);
LABEL_27:
      v38 = v6[7];
      v75[2] = v6[6];
      v75[3] = v38;
      v39 = v6[5];
      v75[0] = v6[4];
      v75[1] = v39;
      v40 = *(*&v75[0] + 16);
      if (!v40)
      {

        v4 = v71;
        if (v12 == INFINITY)
        {
          goto LABEL_4;
        }

        goto LABEL_49;
      }

      if (v40 > 3)
      {
        v41 = v40 & 0x7FFFFFFFFFFFFFFCLL;
        v43 = *&v75[0] + 48;
        v42 = 0.0;
        v44 = v40 & 0x7FFFFFFFFFFFFFFCLL;
        do
        {
          v45 = *v43;
          v42 = v42 + *(v43 - 16) + *(v43 - 8) + *v43 + *(v43 + 8);
          v43 += 32;
          v44 -= 4;
        }

        while (v44);
        if (v40 == v41)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v41 = 0;
        v42 = 0.0;
      }

      v46 = v40 - v41;
      v47 = (*&v75[0] + 8 * v41 + 32);
      do
      {
        v48 = *v47++;
        v42 = v42 + v48;
        --v46;
      }

      while (v46);
LABEL_37:
      v49 = (*&v75[0] + 32);
      v50 = v42 / v40;
      sub_1D314B39C(v75, v74);
      v74[0] = MEMORY[0x1E69E7CC0];
      sub_1D314B424(0, v40, 0);
      v51 = v74[0];
      v52 = *(v74[0] + 16);
      v53 = v52 + 1;
      v54 = v40;
      v55 = v52;
      do
      {
        v56 = v53;
        v57 = *v49;
        v74[0] = v51;
        v58 = *(v51 + 24);
        if (v55 >= v58 >> 1)
        {
          sub_1D314B424((v58 > 1), v55 + 1, 1);
          v51 = v74[0];
        }

        *(v51 + 16) = v55 + 1;
        *(v51 + 8 * v55 + 32) = (v57 - v50) * (v57 - v50);
        ++v49;
        v53 = v56 + 1;
        ++v55;
        --v54;
      }

      while (v54);
      v59 = v40 + v52;
      if (v40 + v52 <= 3)
      {
        v60 = 0;
        v61 = 0.0;
LABEL_46:
        v65 = v56 - v60;
        v66 = (v51 + 8 * v60 + 32);
        do
        {
          v67 = *v66++;
          v61 = v61 + v67;
          --v65;
        }

        while (v65);
        goto LABEL_48;
      }

      v60 = v59 & 0xFFFFFFFFFFFFFFFCLL;
      v62 = (v51 + 48);
      v61 = 0.0;
      v63 = v59 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v64 = *v62;
        v61 = v61 + *(v62 - 2) + *(v62 - 1) + *v62 + v62[1];
        v62 += 4;
        v63 -= 4;
      }

      while (v63);
      if (v59 != v60)
      {
        goto LABEL_46;
      }

LABEL_48:

      sub_1D314B3D4(v75);

      v4 = v71;
      if (v12 >= v61 / v40 + *(v75 + 1))
      {
        goto LABEL_4;
      }

LABEL_49:
      if (!v4)
      {
        __break(1u);
        return result;
      }

      a3 = v72;
      v5 = *(v4 + 8 * v73);
      *(v4 + 8 * v73) = *(v4 + 8 * v72);
      *(v4 + 8 * v72) = v5;
      if (v72 == v70)
      {
LABEL_4:
        a3 = v69 + 1;
        if (v69 + 1 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }
    }
  }

  return result;
}

uint64_t sub_1D317443C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v216 = result;
  v4 = a3[1];
  v5 = MEMORY[0x1E69E7CC0];
  if (v4 < 1)
  {
    v7 = MEMORY[0x1E69E7CC0];
LABEL_175:
    v5 = *v216;
    if (!*v216)
    {
      goto LABEL_213;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_207:
      result = sub_1D31756C8(v7);
      v7 = result;
    }

    v239 = v7;
    v209 = *(v7 + 2);
    if (v209 >= 2)
    {
      while (*a3)
      {
        v210 = *&v7[16 * v209];
        v211 = *&v7[16 * v209 + 24];
        sub_1D31752F4((*a3 + 8 * v210), (*a3 + 8 * *&v7[16 * v209 + 16]), (*a3 + 8 * v211), v5);
        if (v221)
        {
        }

        if (v211 < v210)
        {
          goto LABEL_200;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_1D31756C8(v7);
        }

        if (v209 - 2 >= *(v7 + 2))
        {
          goto LABEL_201;
        }

        v212 = &v7[16 * v209];
        *v212 = v210;
        *(v212 + 1) = v211;
        v239 = v7;
        result = sub_1D317563C(v209 - 1);
        v7 = v239;
        v209 = *(v239 + 2);
        if (v209 <= 1)
        {
        }
      }

      goto LABEL_211;
    }
  }

  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v8 = v6;
    v9 = v6 + 1;
    v223 = v6;
    if (v6 + 1 < v4)
    {
      v214 = v7;
      v10 = *(*a3 + 8 * v9);
      v226 = *a3;
      v11 = *(*a3 + 8 * v6);
      v12 = v10[5];
      v238[0] = v10[4];
      v238[1] = v12;
      v13 = v10[7];
      v238[2] = v10[6];
      v238[3] = v13;

      sub_1D314B39C(v238, &v233);
      sub_1D314A9DC();
      v15 = v14;
      sub_1D314B3D4(v238);
      v16 = v11[5];
      v237[0] = v11[4];
      v237[1] = v16;
      v17 = v11[7];
      v237[2] = v11[6];
      v237[3] = v17;
      sub_1D314B39C(v237, &v233);
      sub_1D314A9DC();
      v19 = v18;
      sub_1D314B3D4(v237);

      v20 = v6 + 2;
      if (v6 + 2 < v4)
      {
        v21 = v6 + 1;
        v224 = v4;
        while (1)
        {
          v22 = *(v226 + 8 * v21);
          v219 = v20;
          v23 = *(v226 + 8 * v20);
          v24 = v23[7];
          v235 = v23[6];
          v236 = v24;
          v25 = v23[5];
          v233 = v23[4];
          v234 = v25;
          v26 = *(v233 + 16);
          if (!v26)
          {

            v29 = INFINITY;
            goto LABEL_28;
          }

          if (v26 > 3)
          {
            v27 = v26 & 0x7FFFFFFFFFFFFFFCLL;
            v30 = (v233 + 48);
            v28 = 0.0;
            v31 = v26 & 0x7FFFFFFFFFFFFFFCLL;
            do
            {
              v32 = *v30;
              v28 = v28 + *(v30 - 2) + *(v30 - 1) + *v30 + v30[1];
              v30 += 4;
              v31 -= 4;
            }

            while (v31);
            if (v26 == v27)
            {
              goto LABEL_16;
            }
          }

          else
          {
            v27 = 0;
            v28 = 0.0;
          }

          v33 = v26 - v27;
          v34 = (v233 + 8 * v27 + 32);
          do
          {
            v35 = *v34++;
            v28 = v28 + v35;
            --v33;
          }

          while (v33);
LABEL_16:
          v36 = (v233 + 32);
          v37 = v28 / v26;

          sub_1D314B39C(&v233, &v229);
          *&v229 = v5;
          sub_1D314B424(0, v26, 0);
          v38 = v229;
          v39 = *(v229 + 16);
          v40 = v39 + 1;
          v41 = v26;
          v42 = v39;
          do
          {
            v43 = v40;
            v44 = *v36;
            *&v229 = v38;
            v45 = *(v38 + 24);
            if (v42 >= v45 >> 1)
            {
              sub_1D314B424((v45 > 1), v42 + 1, 1);
              v38 = v229;
            }

            *(v38 + 16) = v42 + 1;
            *(v38 + 8 * v42 + 32) = (v44 - v37) * (v44 - v37);
            ++v36;
            v40 = v43 + 1;
            ++v42;
            --v41;
          }

          while (v41);
          v46 = v26 + v39;
          if (v26 + v39 > 3)
          {
            v47 = v46 & 0xFFFFFFFFFFFFFFFCLL;
            v49 = (v38 + 48);
            v48 = 0.0;
            v50 = v46 & 0xFFFFFFFFFFFFFFFCLL;
            v5 = MEMORY[0x1E69E7CC0];
            do
            {
              v51 = *v49;
              v48 = v48 + *(v49 - 2) + *(v49 - 1) + *v49 + v49[1];
              v49 += 4;
              v50 -= 4;
            }

            while (v50);
            if (v46 == v47)
            {
              goto LABEL_27;
            }
          }

          else
          {
            v47 = 0;
            v48 = 0.0;
            v5 = MEMORY[0x1E69E7CC0];
          }

          v52 = v43 - v47;
          v53 = (v38 + 8 * v47 + 32);
          do
          {
            v54 = *v53++;
            v48 = v48 + v54;
            --v52;
          }

          while (v52);
LABEL_27:

          sub_1D314B3D4(&v233);
          v29 = v48 / v26 + *(&v233 + 1);
LABEL_28:
          v55 = v22[7];
          v231 = v22[6];
          v232 = v55;
          v56 = v22[5];
          v229 = v22[4];
          v230 = v56;
          v57 = *(v229 + 16);
          if (!v57)
          {

            v60 = INFINITY;
            v8 = v223;
            v61 = v224;
            goto LABEL_49;
          }

          if (v57 > 3)
          {
            v58 = v57 & 0x7FFFFFFFFFFFFFFCLL;
            v62 = (v229 + 48);
            v59 = 0.0;
            v63 = v57 & 0x7FFFFFFFFFFFFFFCLL;
            do
            {
              v64 = *v62;
              v59 = v59 + *(v62 - 2) + *(v62 - 1) + *v62 + v62[1];
              v62 += 4;
              v63 -= 4;
            }

            while (v63);
            if (v57 == v58)
            {
              goto LABEL_37;
            }
          }

          else
          {
            v58 = 0;
            v59 = 0.0;
          }

          v65 = v57 - v58;
          v66 = (v229 + 8 * v58 + 32);
          do
          {
            v67 = *v66++;
            v59 = v59 + v67;
            --v65;
          }

          while (v65);
LABEL_37:
          v68 = (v229 + 32);
          v69 = v57;
          v70 = v59 / v57;
          sub_1D314B39C(&v229, v228);
          v228[0] = v5;
          sub_1D314B424(0, v57, 0);
          v71 = v228[0];
          v72 = *(v228[0] + 16);
          v73 = v72 + 1;
          v74 = v57;
          v75 = v72;
          do
          {
            v76 = v73;
            v77 = *v68;
            v228[0] = v71;
            v78 = *(v71 + 24);
            if (v75 >= v78 >> 1)
            {
              sub_1D314B424((v78 > 1), v75 + 1, 1);
              v71 = v228[0];
            }

            *(v71 + 16) = v75 + 1;
            *(v71 + 8 * v75 + 32) = (v77 - v70) * (v77 - v70);
            ++v68;
            v73 = v76 + 1;
            ++v75;
            --v74;
          }

          while (v74);
          v79 = v57 + v72;
          if (v57 + v72 > 3)
          {
            v80 = v79 & 0xFFFFFFFFFFFFFFFCLL;
            v82 = (v71 + 48);
            v81 = 0.0;
            v83 = v79 & 0xFFFFFFFFFFFFFFFCLL;
            v5 = MEMORY[0x1E69E7CC0];
            v8 = v223;
            v61 = v224;
            do
            {
              v84 = *v82;
              v81 = v81 + *(v82 - 2) + *(v82 - 1) + *v82 + v82[1];
              v82 += 4;
              v83 -= 4;
            }

            while (v83);
            if (v79 == v80)
            {
              goto LABEL_48;
            }
          }

          else
          {
            v80 = 0;
            v81 = 0.0;
            v5 = MEMORY[0x1E69E7CC0];
            v8 = v223;
            v61 = v224;
          }

          v85 = v76 - v80;
          v86 = (v71 + 8 * v80 + 32);
          do
          {
            v87 = *v86++;
            v81 = v81 + v87;
            --v85;
          }

          while (v85);
LABEL_48:

          sub_1D314B3D4(&v229);

          v60 = v81 / v69 + *(&v229 + 1);
LABEL_49:
          if (v15 < v19 == v29 >= v60)
          {
            v20 = v219;
            break;
          }

          v21 = v219;
          v20 = v219 + 1;
          if (v219 + 1 == v61)
          {
            v20 = v61;
            break;
          }
        }
      }

      v7 = v214;
      if (v15 < v19)
      {
        if (v20 < v8)
        {
          goto LABEL_204;
        }

        if (v8 < v20)
        {
          v88 = 8 * v20 - 8;
          v89 = 8 * v8;
          v90 = v20;
          v91 = v8;
          do
          {
            if (v91 != --v90)
            {
              v93 = *a3;
              if (!*a3)
              {
                goto LABEL_210;
              }

              v92 = *(v93 + v89);
              *(v93 + v89) = *(v93 + v88);
              *(v93 + v88) = v92;
            }

            ++v91;
            v88 -= 8;
            v89 += 8;
          }

          while (v91 < v90);
        }
      }

      v9 = v20;
    }

    v94 = a3[1];
    if (v9 >= v94)
    {
      v6 = v9;
      if (v9 < v8)
      {
        goto LABEL_202;
      }

      goto LABEL_74;
    }

    v95 = v9;
    v113 = __OFSUB__(v9, v8);
    v96 = v9 - v8;
    if (v113)
    {
      goto LABEL_203;
    }

    if (v96 < a4)
    {
      if (__OFADD__(v8, a4))
      {
        goto LABEL_205;
      }

      if (v8 + a4 < v94)
      {
        v94 = v8 + a4;
      }

      if (v94 < v8)
      {
LABEL_206:
        __break(1u);
        goto LABEL_207;
      }

      if (v95 != v94)
      {
        break;
      }
    }

    v6 = v95;
    if (v95 < v8)
    {
      goto LABEL_202;
    }

LABEL_74:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1D31414D0(0, *(v7 + 2) + 1, 1, v7);
      v7 = result;
    }

    v98 = *(v7 + 2);
    v97 = *(v7 + 3);
    v99 = v98 + 1;
    if (v98 >= v97 >> 1)
    {
      result = sub_1D31414D0((v97 > 1), v98 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 2) = v99;
    v100 = &v7[16 * v98];
    *(v100 + 4) = v8;
    *(v100 + 5) = v6;
    v101 = *v216;
    if (!*v216)
    {
      goto LABEL_212;
    }

    if (v98)
    {
      while (1)
      {
        v102 = v99 - 1;
        if (v99 >= 4)
        {
          break;
        }

        if (v99 == 3)
        {
          v103 = *(v7 + 4);
          v104 = *(v7 + 5);
          v113 = __OFSUB__(v104, v103);
          v105 = v104 - v103;
          v106 = v113;
LABEL_93:
          if (v106)
          {
            goto LABEL_191;
          }

          v119 = &v7[16 * v99];
          v121 = *v119;
          v120 = *(v119 + 1);
          v122 = __OFSUB__(v120, v121);
          v123 = v120 - v121;
          v124 = v122;
          if (v122)
          {
            goto LABEL_194;
          }

          v125 = &v7[16 * v102 + 32];
          v127 = *v125;
          v126 = *(v125 + 1);
          v113 = __OFSUB__(v126, v127);
          v128 = v126 - v127;
          if (v113)
          {
            goto LABEL_197;
          }

          if (__OFADD__(v123, v128))
          {
            goto LABEL_198;
          }

          if (v123 + v128 >= v105)
          {
            if (v105 < v128)
            {
              v102 = v99 - 2;
            }

            goto LABEL_114;
          }

          goto LABEL_107;
        }

        v129 = &v7[16 * v99];
        v131 = *v129;
        v130 = *(v129 + 1);
        v113 = __OFSUB__(v130, v131);
        v123 = v130 - v131;
        v124 = v113;
LABEL_107:
        if (v124)
        {
          goto LABEL_193;
        }

        v132 = &v7[16 * v102];
        v134 = *(v132 + 4);
        v133 = *(v132 + 5);
        v113 = __OFSUB__(v133, v134);
        v135 = v133 - v134;
        if (v113)
        {
          goto LABEL_196;
        }

        if (v135 < v123)
        {
          goto LABEL_3;
        }

LABEL_114:
        v140 = v102 - 1;
        if (v102 - 1 >= v99)
        {
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
LABEL_202:
          __break(1u);
LABEL_203:
          __break(1u);
LABEL_204:
          __break(1u);
LABEL_205:
          __break(1u);
          goto LABEL_206;
        }

        if (!*a3)
        {
          goto LABEL_209;
        }

        v141 = *&v7[16 * v140 + 32];
        v142 = *&v7[16 * v102 + 40];
        sub_1D31752F4((*a3 + 8 * v141), (*a3 + 8 * *&v7[16 * v102 + 32]), (*a3 + 8 * v142), v101);
        if (v221)
        {
        }

        if (v142 < v141)
        {
          goto LABEL_187;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_1D31756C8(v7);
        }

        if (v140 >= *(v7 + 2))
        {
          goto LABEL_188;
        }

        v143 = &v7[16 * v140];
        *(v143 + 4) = v141;
        *(v143 + 5) = v142;
        v239 = v7;
        result = sub_1D317563C(v102);
        v7 = v239;
        v99 = *(v239 + 2);
        if (v99 <= 1)
        {
          goto LABEL_3;
        }
      }

      v107 = &v7[16 * v99 + 32];
      v108 = *(v107 - 64);
      v109 = *(v107 - 56);
      v113 = __OFSUB__(v109, v108);
      v110 = v109 - v108;
      if (v113)
      {
        goto LABEL_189;
      }

      v112 = *(v107 - 48);
      v111 = *(v107 - 40);
      v113 = __OFSUB__(v111, v112);
      v105 = v111 - v112;
      v106 = v113;
      if (v113)
      {
        goto LABEL_190;
      }

      v114 = &v7[16 * v99];
      v116 = *v114;
      v115 = *(v114 + 1);
      v113 = __OFSUB__(v115, v116);
      v117 = v115 - v116;
      if (v113)
      {
        goto LABEL_192;
      }

      v113 = __OFADD__(v105, v117);
      v118 = v105 + v117;
      if (v113)
      {
        goto LABEL_195;
      }

      if (v118 >= v110)
      {
        v136 = &v7[16 * v102 + 32];
        v138 = *v136;
        v137 = *(v136 + 1);
        v113 = __OFSUB__(v137, v138);
        v139 = v137 - v138;
        if (v113)
        {
          goto LABEL_199;
        }

        if (v105 < v139)
        {
          v102 = v99 - 2;
        }

        goto LABEL_114;
      }

      goto LABEL_93;
    }

LABEL_3:
    v4 = a3[1];
    if (v6 >= v4)
    {
      goto LABEL_175;
    }
  }

  v215 = v7;
  v217 = v94;
  v144 = *a3;
  v222 = *a3;
LABEL_125:
  v220 = v95;
  while (1)
  {
    v145 = *(v144 + 8 * v95);
    v146 = *(v144 + 8 * (v95 - 1));
    v147 = v145[7];
    v235 = v145[6];
    v236 = v147;
    v148 = v145[5];
    v233 = v145[4];
    v234 = v148;
    v149 = *(v233 + 16);
    v225 = v95 - 1;
    v227 = v95;
    if (!v149)
    {

      v152 = INFINITY;
      goto LABEL_147;
    }

    if (v149 > 3)
    {
      v150 = v149 & 0x7FFFFFFFFFFFFFFCLL;
      v153 = (v233 + 48);
      v151 = 0.0;
      v154 = v149 & 0x7FFFFFFFFFFFFFFCLL;
      do
      {
        v155 = *v153;
        v151 = v151 + *(v153 - 2) + *(v153 - 1) + *v153 + v153[1];
        v153 += 4;
        v154 -= 4;
      }

      while (v154);
      if (v149 == v150)
      {
        goto LABEL_135;
      }
    }

    else
    {
      v150 = 0;
      v151 = 0.0;
    }

    v156 = v149 - v150;
    v157 = (v233 + 8 * v150 + 32);
    do
    {
      v158 = *v157++;
      v151 = v151 + v158;
      --v156;
    }

    while (v156);
LABEL_135:
    v159 = (v233 + 32);
    v160 = v151 / v149;

    sub_1D314B39C(&v233, &v229);
    *&v229 = v5;
    sub_1D314B424(0, v149, 0);
    v161 = v229;
    v162 = *(v229 + 16);
    v163 = v162 + 1;
    v164 = v149;
    v165 = v162;
    do
    {
      v166 = v163;
      v167 = *v159;
      *&v229 = v161;
      v168 = *(v161 + 24);
      if (v165 >= v168 >> 1)
      {
        sub_1D314B424((v168 > 1), v165 + 1, 1);
        v161 = v229;
      }

      *(v161 + 16) = v165 + 1;
      *(v161 + 8 * v165 + 32) = (v167 - v160) * (v167 - v160);
      ++v159;
      v163 = v166 + 1;
      ++v165;
      --v164;
    }

    while (v164);
    v169 = v149 + v162;
    if (v149 + v162 > 3)
    {
      v170 = v169 & 0xFFFFFFFFFFFFFFFCLL;
      v172 = (v161 + 48);
      v171 = 0.0;
      v173 = v169 & 0xFFFFFFFFFFFFFFFCLL;
      v5 = MEMORY[0x1E69E7CC0];
      do
      {
        v174 = *v172;
        v171 = v171 + *(v172 - 2) + *(v172 - 1) + *v172 + v172[1];
        v172 += 4;
        v173 -= 4;
      }

      while (v173);
      if (v169 == v170)
      {
        goto LABEL_146;
      }
    }

    else
    {
      v170 = 0;
      v171 = 0.0;
      v5 = MEMORY[0x1E69E7CC0];
    }

    v175 = v166 - v170;
    v176 = (v161 + 8 * v170 + 32);
    do
    {
      v177 = *v176++;
      v171 = v171 + v177;
      --v175;
    }

    while (v175);
LABEL_146:

    sub_1D314B3D4(&v233);
    v152 = v171 / v149 + *(&v233 + 1);
LABEL_147:
    v178 = v146[7];
    v231 = v146[6];
    v232 = v178;
    v179 = v146[5];
    v229 = v146[4];
    v230 = v179;
    v180 = *(v229 + 16);
    if (!v180)
    {

      v144 = v222;
      v8 = v223;
      if (v152 == INFINITY)
      {
        goto LABEL_124;
      }

      goto LABEL_169;
    }

    if (v180 > 3)
    {
      v181 = v180 & 0x7FFFFFFFFFFFFFFCLL;
      v183 = (v229 + 48);
      v182 = 0.0;
      v184 = v180 & 0x7FFFFFFFFFFFFFFCLL;
      do
      {
        v185 = *v183;
        v182 = v182 + *(v183 - 2) + *(v183 - 1) + *v183 + v183[1];
        v183 += 4;
        v184 -= 4;
      }

      while (v184);
      if (v180 == v181)
      {
        goto LABEL_157;
      }
    }

    else
    {
      v181 = 0;
      v182 = 0.0;
    }

    v186 = v180 - v181;
    v187 = (v229 + 8 * v181 + 32);
    do
    {
      v188 = *v187++;
      v182 = v182 + v188;
      --v186;
    }

    while (v186);
LABEL_157:
    v189 = (v229 + 32);
    v190 = v182 / v180;
    sub_1D314B39C(&v229, v228);
    v228[0] = v5;
    sub_1D314B424(0, v180, 0);
    v191 = v228[0];
    v192 = *(v228[0] + 16);
    v193 = v192 + 1;
    v194 = v180;
    v195 = v192;
    do
    {
      v196 = v193;
      v197 = *v189;
      v228[0] = v191;
      v198 = *(v191 + 24);
      if (v195 >= v198 >> 1)
      {
        sub_1D314B424((v198 > 1), v195 + 1, 1);
        v191 = v228[0];
      }

      *(v191 + 16) = v195 + 1;
      *(v191 + 8 * v195 + 32) = (v197 - v190) * (v197 - v190);
      ++v189;
      v193 = v196 + 1;
      ++v195;
      --v194;
    }

    while (v194);
    v199 = v180 + v192;
    if (v180 + v192 <= 3)
    {
      v200 = 0;
      v201 = 0.0;
      v5 = MEMORY[0x1E69E7CC0];
      v8 = v223;
LABEL_166:
      v205 = v196 - v200;
      v206 = (v191 + 8 * v200 + 32);
      do
      {
        v207 = *v206++;
        v201 = v201 + v207;
        --v205;
      }

      while (v205);
      goto LABEL_168;
    }

    v200 = v199 & 0xFFFFFFFFFFFFFFFCLL;
    v202 = (v191 + 48);
    v201 = 0.0;
    v203 = v199 & 0xFFFFFFFFFFFFFFFCLL;
    v5 = MEMORY[0x1E69E7CC0];
    v8 = v223;
    do
    {
      v204 = *v202;
      v201 = v201 + *(v202 - 2) + *(v202 - 1) + *v202 + v202[1];
      v202 += 4;
      v203 -= 4;
    }

    while (v203);
    if (v199 != v200)
    {
      goto LABEL_166;
    }

LABEL_168:

    sub_1D314B3D4(&v229);

    v144 = v222;
    if (v152 >= v201 / v180 + *(&v229 + 1))
    {
      goto LABEL_124;
    }

LABEL_169:
    if (!v144)
    {
      break;
    }

    v208 = *(v144 + 8 * v227);
    *(v144 + 8 * v227) = *(v144 + 8 * v225);
    *(v144 + 8 * v225) = v208;
    if (v225 == v8)
    {
LABEL_124:
      v95 = v220 + 1;
      v6 = v217;
      if (v220 + 1 != v217)
      {
        goto LABEL_125;
      }

      v7 = v215;
      if (v217 < v8)
      {
        goto LABEL_202;
      }

      goto LABEL_74;
    }

    v95 = v225;
  }

  __break(1u);
LABEL_209:
  __break(1u);
LABEL_210:
  __break(1u);
LABEL_211:
  __break(1u);
LABEL_212:
  __break(1u);
LABEL_213:
  __break(1u);
  return result;
}

uint64_t sub_1D31752F4(char *__src, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = a2 - __src;
  v8 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v8 = a2 - __src;
  }

  v9 = v8 >> 3;
  v10 = a3 - a2;
  v11 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v11 = a3 - a2;
  }

  v12 = v11 >> 3;
  if (v9 < v11 >> 3)
  {
    v13 = a2;
    if (a4 != __src || &__src[8 * v9] <= a4)
    {
      memmove(a4, __src, 8 * v9);
    }

    v14 = &v4[8 * v9];
    if (v7 < 8)
    {
LABEL_10:
      v15 = v6;
      goto LABEL_36;
    }

    while (1)
    {
      if (v13 >= v5)
      {
        goto LABEL_10;
      }

      v18 = *v13;
      v19 = *v4;
      v20 = *(*v13 + 80);
      v51 = *(*v13 + 64);
      v52 = v20;
      v21 = *(v18 + 112);
      v53 = *(v18 + 96);
      v54 = v21;

      sub_1D314B39C(&v51, v46);
      sub_1D314A9DC();
      v23 = v22;
      sub_1D314B3D4(&v51);
      v24 = v19[5];
      v47 = v19[4];
      v48 = v24;
      v25 = v19[7];
      v49 = v19[6];
      v50 = v25;
      sub_1D314B39C(&v47, v46);
      sub_1D314A9DC();
      v27 = v26;
      sub_1D314B3D4(&v47);

      if (v23 < v27)
      {
        break;
      }

      v16 = v4;
      v17 = v6 == v4;
      v4 += 8;
      if (!v17)
      {
        goto LABEL_12;
      }

LABEL_13:
      v6 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v13;
    v17 = v6 == v13;
    v13 += 8;
    if (v17)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v6 = *v16;
    goto LABEL_13;
  }

  if (a4 != a2 || &a2[8 * v12] <= a4)
  {
    v28 = a2;
    memmove(a4, a2, 8 * v12);
    a2 = v28;
  }

  v15 = a2;
  v14 = &v4[8 * v12];
  if (v10 >= 8 && a2 > v6)
  {
    v55 = v4;
    do
    {
      v45 = v15;
      v29 = v15 - 8;
      v5 -= 8;
      v30 = v14;
      while (1)
      {
        v31 = v5 + 8;
        v32 = *(v30 - 1);
        v30 -= 8;
        v33 = v29;
        v34 = *v29;
        v35 = v32[5];
        v51 = v32[4];
        v52 = v35;
        v36 = v32[7];
        v53 = v32[6];
        v54 = v36;

        sub_1D314B39C(&v51, v46);
        sub_1D314A9DC();
        v38 = v37;
        sub_1D314B3D4(&v51);
        v39 = v34[5];
        v47 = v34[4];
        v48 = v39;
        v40 = v34[7];
        v49 = v34[6];
        v50 = v40;
        sub_1D314B39C(&v47, v46);
        sub_1D314A9DC();
        v42 = v41;
        sub_1D314B3D4(&v47);

        if (v38 < v42)
        {
          break;
        }

        if (v31 != v14)
        {
          *v5 = *v30;
        }

        v5 -= 8;
        v14 = v30;
        v29 = v33;
        if (v30 <= v55)
        {
          v14 = v30;
          v15 = v45;
          v4 = v55;
          goto LABEL_36;
        }
      }

      v43 = v33;
      if (v31 != v45)
      {
        *v5 = *v33;
      }

      v4 = v55;
      if (v14 <= v55)
      {
        break;
      }

      v15 = v43;
    }

    while (v43 > v6);
    v15 = v43;
  }

LABEL_36:
  if (v15 != v4 || v15 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v15, v4, 8 * ((v14 - v4) / 8));
  }

  return 1;
}

uint64_t sub_1D317563C(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1D31756C8(v3);
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

uint64_t sub_1D31756DC(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = sub_1D3277670();

    if (v8)
    {

      type metadata accessor for ConnectedSearchNode();
      swift_dynamicCast();
      result = 0;
      *a1 = v32;
    }

    else
    {
      result = sub_1D3277660();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v28 = sub_1D3175A30(v7, result + 1);
        v29 = *(v28 + 16);
        if (*(v28 + 24) <= v29)
        {
          sub_1D3176094(v29 + 1);
        }

        sub_1D31763B8(v30, v28);

        *v3 = v28;
        *a1 = a2;
        return 1;
      }
    }

    return result;
  }

  v10 = *(v6 + 40);
  sub_1D3277980();
  sub_1D314AC84();
  v11 = sub_1D32779B0();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_20:
    v25 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v33 = *v2;

    sub_1D31768A8(v27, v13, isUniquelyReferenced_nonNull_native);
    *v2 = v33;
    *a1 = a2;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v19 = *(v6 + 48);
    v20 = *(*(v19 + 8 * v13) + 16);
    if (!v20)
    {
      break;
    }

    v21 = *(v19 + 8 * v13);

    v22 = [v20 muid];
    v23 = *(a2 + 16);
    if (!v23)
    {

      goto LABEL_14;
    }

    v15 = v22;
LABEL_10:
    v16 = v23;
    v17 = [v16 muid];

    if (v20)
    {
      v18 = v15 == v17;
    }

    else
    {
      v18 = 0;
    }

    if (v18)
    {
      goto LABEL_27;
    }

LABEL_14:
    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  v23 = *(a2 + 16);
  v24 = *(v19 + 8 * v13);

  if (v23)
  {
    v15 = 0;
    goto LABEL_10;
  }

LABEL_27:

  *a1 = *(*(v6 + 48) + 8 * v13);

  return 0;
}

uint64_t sub_1D3175990(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  if ((*v1 & 0xC000000000000001) == 0)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v1;
    v7 = a1;
    goto LABEL_8;
  }

  if (v4 < 0)
  {
    v5 = *v1;
  }

  else
  {
    v5 = v4 & 0xFFFFFFFFFFFFFF8;
  }

  result = sub_1D3277660();
  if (!__OFADD__(result, 1))
  {
    v9 = sub_1D3175A30(v5, result + 1);
    v7 = a1;
    isUniquelyReferenced_nonNull_native = 1;
LABEL_8:
    result = sub_1D3175D20(v7, isUniquelyReferenced_nonNull_native);
    *v2 = v9;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D3175A30(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75CBB0, &unk_1D328C7D0);
    v2 = sub_1D32776C0();
    v30 = v2;
    sub_1D3277650();
    if (sub_1D3277680())
    {
      v3 = type metadata accessor for ConnectedSearchNode();
      v4 = MEMORY[0x1E69E7C98];
      v5 = &qword_1EC75C000;
      v6 = qword_1EC760870;
      do
      {
        swift_dynamicCast();
        v8 = *(v2 + 16);
        if (*(v2 + 24) <= v8)
        {
          sub_1D3176094(v8 + 1);
        }

        v2 = v30;
        v9 = *(v30 + 40);
        sub_1D3277980();
        v10 = *(v29 + 16);
        if (v10)
        {
          MEMORY[0x1D38B4860]([v10 muid]);
        }

        else
        {
          if (*v5 != -1)
          {
            swift_once();
          }

          v11 = sub_1D3276F80();
          __swift_project_value_buffer(v11, v6);
          v12 = sub_1D3276F60();
          v13 = sub_1D3277390();
          if (os_log_type_enabled(v12, v13))
          {
            v14 = v3;
            v15 = v6;
            v16 = v4;
            v17 = v5;
            v18 = swift_slowAlloc();
            *v18 = 0;
            _os_log_impl(&dword_1D311E000, v12, v13, "Tried to hash a MapMatcherConnectivityNode with no road", v18, 2u);
            v19 = v18;
            v5 = v17;
            v4 = v16;
            v6 = v15;
            v3 = v14;
            MEMORY[0x1D38B6000](v19, -1, -1);
          }
        }

        result = sub_1D32779B0();
        v21 = v30 + 56;
        v22 = -1 << *(v30 + 32);
        v23 = result & ~v22;
        v24 = v23 >> 6;
        if (((-1 << v23) & ~*(v30 + 56 + 8 * (v23 >> 6))) != 0)
        {
          v7 = __clz(__rbit64((-1 << v23) & ~*(v30 + 56 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v25 = 0;
          v26 = (63 - v22) >> 6;
          do
          {
            if (++v24 == v26 && (v25 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v27 = v24 == v26;
            if (v24 == v26)
            {
              v24 = 0;
            }

            v25 |= v27;
            v28 = *(v21 + 8 * v24);
          }

          while (v28 == -1);
          v7 = __clz(__rbit64(~v28)) + (v24 << 6);
        }

        *(v21 + ((v7 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v7;
        *(*(v30 + 48) + 8 * v7) = v29;
        ++*(v30 + 16);
      }

      while (sub_1D3277680());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

uint64_t sub_1D3175D20(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = *v3;
  v7 = *(*v3 + 40);
  sub_1D3277980();
  sub_1D314AC84();
  v8 = sub_1D32779B0();
  v9 = -1 << *(v6 + 32);
  v10 = v8 & ~v9;
  v48 = v3;
  if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
    v21 = 0;
LABEL_16:
    v22 = 1;
    goto LABEL_19;
  }

  v46 = a2;
  v11 = ~v9;
  while (1)
  {
    v16 = *(v6 + 48);
    v17 = *(*(v16 + 8 * v10) + 16);
    if (!v17)
    {
      break;
    }

    v18 = *(v16 + 8 * v10);

    v19 = [v17 muid];
    v20 = *(a1 + 16);
    if (!v20)
    {

      goto LABEL_8;
    }

    v12 = v19;
LABEL_4:
    v13 = v20;
    v14 = [v13 muid];

    if (v17)
    {
      v15 = v12 == v14;
    }

    else
    {
      v15 = 0;
    }

    if (v15)
    {
      goto LABEL_18;
    }

LABEL_8:
    v10 = (v10 + 1) & v11;
    if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      v21 = 0;
      a2 = v46;
      goto LABEL_16;
    }
  }

  v20 = *(a1 + 16);

  if (v20)
  {
    v12 = 0;
    goto LABEL_4;
  }

LABEL_18:
  v22 = 0;
  v21 = 1;
  a2 = v46;
LABEL_19:
  v23 = *(v6 + 16);
  v24 = v23 + v22;
  if (__OFADD__(v23, v22))
  {
    __break(1u);
    goto LABEL_51;
  }

  v25 = *(v6 + 24);
  if (v25 >= v24 && (a2 & 1) != 0)
  {
    if (v21)
    {
      goto LABEL_48;
    }

    goto LABEL_44;
  }

  if (a2)
  {
    v47 = v21;
    sub_1D3176094(v24);
  }

  else
  {
    if (v25 >= v24)
    {
      sub_1D317645C();
      if (v21)
      {
        goto LABEL_48;
      }

      goto LABEL_44;
    }

    v47 = v21;
    sub_1D31765AC(v24);
  }

  v26 = *v3;
  v27 = *(*v3 + 40);
  sub_1D3277980();
  sub_1D314AC84();
  v28 = sub_1D32779B0();
  v29 = -1 << *(v26 + 32);
  v10 = v28 & ~v29;
  if (((*(v26 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
LABEL_43:
    v3 = v48;
    if (v47)
    {
      goto LABEL_52;
    }

LABEL_44:
    v40 = *v3;
    *(*v3 + 8 * (v10 >> 6) + 56) |= 1 << v10;
    *(*(v40 + 48) + 8 * v10) = a1;
    v41 = *(v40 + 16);
    v42 = __OFADD__(v41, 1);
    v43 = v41 + 1;
    if (!v42)
    {
      result = 0;
      *(v40 + 16) = v43;
      return result;
    }

LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v30 = ~v29;
  while (1)
  {
    v35 = *(v26 + 48);
    v36 = *(*(v35 + 8 * v10) + 16);
    if (!v36)
    {
      break;
    }

    v37 = *(v35 + 8 * v10);

    v38 = [v36 muid];
    v39 = *(a1 + 16);
    if (!v39)
    {

      goto LABEL_37;
    }

    v31 = v38;
LABEL_33:
    v32 = v39;
    v33 = [v32 muid];

    if (v36)
    {
      v34 = v31 == v33;
    }

    else
    {
      v34 = 0;
    }

    if (v34)
    {
      goto LABEL_47;
    }

LABEL_37:
    v10 = (v10 + 1) & v30;
    if (((*(v26 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      goto LABEL_43;
    }
  }

  v39 = *(a1 + 16);

  if (v39)
  {
    v31 = 0;
    goto LABEL_33;
  }

LABEL_47:
  v3 = v48;
  if ((v47 & 1) == 0)
  {
LABEL_52:
    type metadata accessor for ConnectedSearchNode();
    result = sub_1D3277910();
    __break(1u);
    return result;
  }

LABEL_48:
  v45 = *(*v3 + 48);
  result = *(v45 + 8 * v10);
  *(v45 + 8 * v10) = a1;
  return result;
}

uint64_t sub_1D3176094(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75CBB0, &unk_1D328C7D0);
  result = sub_1D32776B0();
  v6 = result;
  if (*(v3 + 16))
  {
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
    v35 = v3;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      sub_1D3277980();
      v20 = *(v18 + 16);
      if (v20)
      {
        MEMORY[0x1D38B4860]([v20 muid]);
      }

      else
      {
        if (qword_1EC75C000 != -1)
        {
          swift_once();
        }

        v21 = sub_1D3276F80();
        __swift_project_value_buffer(v21, qword_1EC760870);
        v22 = sub_1D3276F60();
        v23 = sub_1D3277390();
        if (os_log_type_enabled(v22, v23))
        {
          v34 = v2;
          v24 = swift_slowAlloc();
          *v24 = 0;
          _os_log_impl(&dword_1D311E000, v22, v23, "Tried to hash a MapMatcherConnectivityNode with no road", v24, 2u);
          v25 = v24;
          v2 = v34;
          MEMORY[0x1D38B6000](v25, -1, -1);
        }

        v3 = v35;
      }

      result = sub_1D32779B0();
      v26 = -1 << *(v6 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v13 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v13 + 8 * v28);
          if (v32 != -1)
          {
            v14 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_39:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v27) & ~*(v13 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_39;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v3 + 32);
    if (v33 >= 64)
    {
      bzero(v8, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v33;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

unint64_t sub_1D31763B8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  sub_1D3277980();
  sub_1D314AC84();
  sub_1D32779B0();
  v5 = -1 << *(a2 + 32);
  result = sub_1D3277640();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

void *sub_1D317645C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75CBB0, &unk_1D328C7D0);
  v2 = *v0;
  v3 = sub_1D32776A0();
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
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
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

uint64_t sub_1D31765AC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75CBB0, &unk_1D328C7D0);
  result = sub_1D32776B0();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = v3 + 56;
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
    v35 = v3;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      sub_1D3277980();
      v20 = *(v18 + 16);
      if (v20)
      {

        MEMORY[0x1D38B4860]([v20 muid]);
      }

      else
      {
        v21 = qword_1EC75C000;

        if (v21 != -1)
        {
          swift_once();
        }

        v22 = sub_1D3276F80();
        __swift_project_value_buffer(v22, qword_1EC760870);
        v23 = sub_1D3276F60();
        v24 = sub_1D3277390();
        if (os_log_type_enabled(v23, v24))
        {
          v34 = v2;
          v25 = swift_slowAlloc();
          *v25 = 0;
          _os_log_impl(&dword_1D311E000, v23, v24, "Tried to hash a MapMatcherConnectivityNode with no road", v25, 2u);
          v26 = v25;
          v2 = v34;
          MEMORY[0x1D38B6000](v26, -1, -1);
        }

        v3 = v35;
      }

      result = sub_1D32779B0();
      v27 = -1 << *(v6 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v13 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v13 + 8 * v29);
          if (v33 != -1)
          {
            v14 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_35;
      }

      v14 = __clz(__rbit64((-1 << v28) & ~*(v13 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
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

      if (v7 >= v12)
      {
        goto LABEL_33;
      }

      v17 = *(v8 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
  }

  else
  {
LABEL_33:

    *v2 = v6;
  }

  return result;
}

uint64_t sub_1D31768A8(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1D3176094(v6 + 1);
    }

    else
    {
      if (v7 > v6)
      {
        result = sub_1D317645C();
        goto LABEL_21;
      }

      sub_1D31765AC(v6 + 1);
    }

    v8 = *v3;
    v9 = *(*v3 + 40);
    sub_1D3277980();
    sub_1D314AC84();
    result = sub_1D32779B0();
    v10 = -1 << *(v8 + 32);
    a2 = result & ~v10;
    if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v11 = ~v10;
      type metadata accessor for ConnectedSearchNode();
      do
      {
        v16 = *(v8 + 48);
        v17 = *(*(v16 + 8 * a2) + 16);
        if (v17)
        {
          v18 = *(v16 + 8 * a2);

          v19 = [v17 muid];
          v20 = *(v5 + 16);
          if (!v20)
          {

            goto LABEL_15;
          }

          v12 = v19;
        }

        else
        {
          v20 = *(v5 + 16);
          v21 = *(v16 + 8 * a2);

          if (!v20)
          {
            goto LABEL_24;
          }

          v12 = 0;
        }

        v13 = v20;
        v14 = [v13 muid];

        if (v17)
        {
          v15 = v12 == v14;
        }

        else
        {
          v15 = 0;
        }

        if (v15)
        {
          goto LABEL_25;
        }

LABEL_15:
        a2 = (a2 + 1) & v11;
      }

      while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_21:
  v22 = *v26;
  *(*v26 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v22 + 48) + 8 * a2) = v5;
  v23 = *(v22 + 16);
  v24 = __OFADD__(v23, 1);
  v25 = v23 + 1;
  if (v24)
  {
    __break(1u);
LABEL_24:

LABEL_25:
    result = sub_1D3277910();
    __break(1u);
  }

  else
  {
    *(v22 + 16) = v25;
  }

  return result;
}

uint64_t sub_1D3176AA0(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 336) = a3;
  *(v3 + 272) = a1;
  *(v3 + 280) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D3176AC4, 0, 0);
}

uint64_t sub_1D3176AC4()
{
  if (qword_1EC75C000 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 272);
  v3 = sub_1D3276F80();
  *(v0 + 288) = __swift_project_value_buffer(v3, qword_1EC760870);

  v4 = sub_1D3276F60();
  v5 = sub_1D3277370();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 272);
  if (!v6)
  {
    goto LABEL_18;
  }

  v2 = swift_slowAlloc();
  *v2 = 134218240;
  if (v7 >> 62)
  {
    if (*(v0 + 272) < 0)
    {
      v15 = *(v0 + 272);
    }

    result = sub_1D3277660();
    if (result)
    {
      goto LABEL_6;
    }

LABEL_16:
    *(v2 + 4) = 0xBFF0000000000000;
    *(v2 + 12) = 2048;
    v14 = -1.0;
    goto LABEL_17;
  }

  result = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_16;
  }

LABEL_6:
  v1 = v7 & 0xC000000000000001;
  if ((v7 & 0xC000000000000001) != 0)
  {
    goto LABEL_40;
  }

  if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
LABEL_43:
    __break(1u);
    return result;
  }

  v9 = *(*(v0 + 272) + 32);

  {
    v11 = *(i + 16);

    *(v2 + 4) = v11;
    *(v2 + 12) = 2048;
    if (v1)
    {
      v13 = MEMORY[0x1D38B45D0](0, *(v0 + 272));
    }

    else
    {
      if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_43;
      }

      v12 = *(*(v0 + 272) + 32);
    }

    v14 = *(v13 + 24);

LABEL_17:
    *(v2 + 14) = v14;
    _os_log_impl(&dword_1D311E000, v4, v5, "%f, %f similarConnectedRoads", v2, 0x16u);
    MEMORY[0x1D38B6000](v2, -1, -1);
LABEL_18:

    *(v0 + 296) = v7;
    v16 = *(v0 + 272);
    if (v16 >> 62)
    {
      break;
    }

    v17 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v17)
    {
      goto LABEL_35;
    }

LABEL_20:
    v18 = __OFSUB__(v17, 1);
    v19 = v17 - 1;
    *(v0 + 304) = v19;
    if (v18)
    {
      goto LABEL_36;
    }

    if ((v7 & 0xC000000000000001) != 0)
    {
      goto LABEL_37;
    }

    if ((v19 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v19 < *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v20 = *(*(v0 + 272) + 8 * v19 + 32);

      goto LABEL_25;
    }

    __break(1u);
LABEL_40:
    ;
  }

  if (v16 < 0)
  {
    v31 = *(v0 + 272);
  }

  v17 = sub_1D3277660();
  if (v17)
  {
    goto LABEL_20;
  }

LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  v32 = *(v0 + 272);
  v21 = MEMORY[0x1D38B45D0]();
LABEL_25:
  v22 = sub_1D314BA78(v21, *(v0 + 336));
  *(v0 + 312) = v22;
  if (*(v22 + 2))
  {
    v23 = v22;
    [*(v22 + 2) length];
    v25 = v24 - *(v23 + 48);
    *(v23 + 48) = -v25;
    v26 = *(v23 + 64);
    v27 = MEMORY[0x1E69E7CC0];
    *(v23 + 56) = 0;
    *(v23 + 64) = v27;

    type metadata accessor for ConnectedRoadSimilaritySearch();
    v28 = swift_task_alloc();
    *(v0 + 320) = v28;
    *v28 = v0;
    v28[1] = sub_1D3176E2C;
    v29 = *(v0 + 272);

    return sub_1D3170164(v23, v29, v25);
  }

  else
  {

    v30 = *(v0 + 8);

    return v30(0, 0);
  }
}

uint64_t sub_1D3176E2C(uint64_t a1)
{
  v2 = *(*v1 + 320);
  v4 = *v1;
  *(*v1 + 328) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D3176F2C, 0, 0);
}

uint64_t sub_1D3176F2C()
{
  v91 = v0;
  v90[0] = sub_1D3187AD4(*(v0 + 328));
  sub_1D3173DD8(v90);
  v2 = *(v0 + 312);
  v3 = *(v0 + 280);
  v4 = *(v0 + 288);
  v5 = *(v0 + 272);
  v6 = v90[0];

  swift_bridgeObjectRetain_n();

  v7 = sub_1D3276F60();
  v8 = sub_1D3277370();
  v89 = v3;

  swift_bridgeObjectRelease_n();

  if (!os_log_type_enabled(v7, v8))
  {
    goto LABEL_15;
  }

  v9 = *(v0 + 280);
  v5 = swift_slowAlloc();
  v1 = swift_slowAlloc();
  *v5 = 138413058;
  if (!v9)
  {
    v10 = 0;
    goto LABEL_6;
  }

  v10 = *(v89 + 72);
  if (!v10)
  {
LABEL_6:
    v11 = 0;
    goto LABEL_7;
  }

  v10 = [v10 road];
  v11 = v10;
LABEL_7:
  *(v5 + 4) = v10;
  *v1 = v11;
  *(v5 + 12) = 2048;
  v13 = *(v0 + 296);
  v12 = *(v0 + 304);
  v14 = *(v0 + 272);
  if ((v13 & 0xC000000000000001) != 0)
  {
    v15 = MEMORY[0x1D38B45D0](v12, v14);
    v13 = *(v0 + 296);
  }

  else
  {
    v16 = *(v14 + 8 * v12 + 32);
  }

  v17 = *(v15 + 16);

  *(v5 + 14) = v17;
  *(v5 + 22) = 2048;
  v18 = *(v0 + 304);
  v19 = *(v0 + 272);
  if ((v13 & 0xC000000000000001) != 0)
  {
    v20 = MEMORY[0x1D38B45D0](v18, v19);
  }

  else
  {
    v21 = *(v19 + 8 * v18 + 32);
  }

  v22 = *(v0 + 312);
  v23 = *(v20 + 24);

  *(v5 + 24) = v23;
  *(v5 + 32) = 2112;
  v25 = *(v22 + 16);
  if (!v25)
  {
    goto LABEL_108;
  }

  *(v5 + 34) = v25;
  *(v1 + 8) = v25;
  v26 = v25;
  _os_log_impl(&dword_1D311E000, v7, v8, "CSS: Connected Road 5 Top Paths when routeMatch is on %@ started from %f, %f %@", v5, 0x2Au);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C5B0, &unk_1D328C300);
  swift_arrayDestroy();
  MEMORY[0x1D38B6000](v1, -1, -1);
  MEMORY[0x1D38B6000](v5, -1, -1);
LABEL_15:

  LODWORD(v27) = v6 < 0 || (v6 & 0x4000000000000000) != 0;
  if (v27 == 1)
  {
    goto LABEL_93;
  }

  v28 = *(v6 + 16);
  if (v28 >= 5)
  {
    v29 = 5;
  }

  else
  {
    v29 = *(v6 + 16);
  }

  v30 = *(v6 + 16);
  if (v28 >= v29)
  {
    goto LABEL_23;
  }

LABEL_101:
  __break(1u);
LABEL_102:
  __break(1u);
LABEL_103:
  v50 = MEMORY[0x1D38B45D0](0, v6);
LABEL_50:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC75C5D0, &qword_1D328C7B0);
  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_1D328B8F0;
  *(v51 + 32) = v50;
  v90[0] = v51;

  v52 = 0;
  do
  {
    if (v5)
    {
      v53 = MEMORY[0x1D38B45D0](v52, v6);
      goto LABEL_55;
    }

    if (v52 >= *(v6 + 16))
    {
      __break(1u);
LABEL_92:
      __break(1u);
LABEL_93:
      v28 = sub_1D3277660();
      result = sub_1D3277660();
      if (result < 0)
      {
        goto LABEL_107;
      }

      if (v28 >= 5)
      {
        v84 = 5;
      }

      else
      {
        v84 = v28;
      }

      if (v28 >= 0)
      {
        v29 = v84;
      }

      else
      {
        v29 = 5;
      }

      if (sub_1D3277660() < v29)
      {
        goto LABEL_101;
      }

LABEL_23:
      v88 = v6 & 0xC000000000000001;
      if ((v6 & 0xC000000000000001) != 0)
      {

        if (v29)
        {
          type metadata accessor for ConnectedSearchNode();
          sub_1D3277700();
          if (v29 != 1)
          {
            sub_1D3277700();
            if (v29 != 2)
            {
              sub_1D3277700();
              if (v29 != 3)
              {
                sub_1D3277700();
                if (v29 != 4)
                {
                  sub_1D3277700();
                  if (v29 != 5)
                  {
                    sub_1D3277700();
                    sub_1D3277700();
                  }
                }
              }
            }
          }
        }
      }

      else
      {
      }

      if (v27)
      {
        sub_1D32777E0();
        v32 = v31;
        v34 = v33;
        v36 = v35;

        v36 >>= 1;
        v38 = v36 - v34;
        v37 = v36 <= v34;
        if (v36 != v34)
        {
          goto LABEL_34;
        }
      }

      else
      {
        v34 = 0;
        v32 = v6 + 32;
        v38 = v29;
        v37 = v29 <= 0;
        if (v29)
        {
LABEL_34:
          v85 = v27;
          v86 = v28;
          v87 = v6;
          if (v37)
          {
            goto LABEL_105;
          }

          swift_unknownObjectRetain();
          v39 = (v32 + 8 * v34);
          do
          {
            v46 = *(v0 + 288);
            v47 = *v39;
            swift_retain_n();
            v48 = sub_1D3276F60();
            v49 = sub_1D3277370();

            if (os_log_type_enabled(v48, v49))
            {
              v40 = swift_slowAlloc();
              v41 = swift_slowAlloc();
              v90[0] = v41;
              *v40 = 136315138;

              v42 = sub_1D314AD9C();
              v44 = v43;

              v45 = sub_1D312BA30(v42, v44, v90);

              *(v40 + 4) = v45;
              _os_log_impl(&dword_1D311E000, v48, v49, "- %s", v40, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v41);
              MEMORY[0x1D38B6000](v41, -1, -1);
              MEMORY[0x1D38B6000](v40, -1, -1);
            }

            else
            {
            }

            ++v39;
            --v38;
          }

          while (v38);
          result = swift_unknownObjectRelease();
          v28 = v86;
          v6 = v87;
          LODWORD(v27) = v85;
          v90[0] = 0;
          if (!v85)
          {
            goto LABEL_44;
          }

          goto LABEL_42;
        }
      }

      v90[0] = 0;
      if (!v27)
      {
LABEL_44:
        v1 = *(v6 + 16);
        goto LABEL_45;
      }

LABEL_42:
      result = sub_1D3277660();
      v1 = result;
LABEL_45:
      v5 = v88;
      if (v1 < 1)
      {
        v67 = *(v0 + 328);

        if (!*(v0 + 280))
        {
          goto LABEL_84;
        }

        goto LABEL_66;
      }

      if (!v28)
      {
        goto LABEL_102;
      }

      if (v88)
      {
        goto LABEL_103;
      }

      if (!*(v6 + 16))
      {
        __break(1u);
LABEL_105:
        __break(1u);
LABEL_106:
        __break(1u);
LABEL_107:
        __break(1u);
LABEL_108:
        __break(1u);
        return result;
      }

      v50 = *(v6 + 32);

      goto LABEL_50;
    }

    v53 = *(v6 + 8 * v52 + 32);

LABEL_55:
    v54 = v53[4];
    v55 = v53[5];
    v56 = v53[7];
    *(v0 + 48) = v53[6];
    *(v0 + 64) = v56;
    *(v0 + 16) = v54;
    *(v0 + 32) = v55;
    sub_1D314B39C(v0 + 16, v0 + 144);

    sub_1D314A9DC();
    v58 = v57;
    sub_1D314B3D4(v0 + 16);
    v59 = v50[7];
    v61 = v50[4];
    v60 = v50[5];
    *(v0 + 112) = v50[6];
    *(v0 + 128) = v59;
    *(v0 + 80) = v61;
    *(v0 + 96) = v60;
    sub_1D314B39C(v0 + 80, v0 + 208);
    sub_1D314A9DC();
    v63 = v62;
    sub_1D314B3D4(v0 + 80);
    if (v58 > v63 + v63)
    {
      break;
    }

    if (v5)
    {
      result = MEMORY[0x1D38B45D0](0, v6);
      if (!v90[0])
      {
        goto LABEL_106;
      }
    }

    else
    {
      v64 = *(v6 + 32);

      if (!v90[0])
      {
        goto LABEL_106;
      }
    }

    MEMORY[0x1D38B4040](result);
    if (*((v90[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v90[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v27 = v28;
      v65 = *((v90[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1D32771B0();
      v28 = v27;
    }

    sub_1D32771D0();
    ++v52;
  }

  while (v1 != v52);
  v66 = *(v0 + 328);

  if (!*(v0 + 280))
  {
LABEL_84:
    v79 = *(v0 + 312);

LABEL_86:

    swift_unknownObjectRelease();
    v73 = 0;
    goto LABEL_87;
  }

LABEL_66:
  v68 = *(v89 + 72);
  if (!v68)
  {
    goto LABEL_84;
  }

  v69 = [v68 road];
  [v69 muid];

  if (!v28)
  {
LABEL_85:
    v80 = *(v0 + 312);

    goto LABEL_86;
  }

  v70 = v28;
  v1 = 0;
  while (2)
  {
    if (v5)
    {
      v72 = v6;
      v73 = MEMORY[0x1D38B45D0](v1, v6);
      v74 = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        goto LABEL_83;
      }
    }

    else
    {
      if (v1 >= *(v6 + 16))
      {
        goto LABEL_92;
      }

      v72 = v6;
      v73 = *(v6 + 8 * v1 + 32);

      v74 = v1 + 1;
      if (__OFADD__(v1, 1))
      {
LABEL_83:
        __break(1u);
        goto LABEL_84;
      }
    }

    v75 = *(v73 + 16);
    if (v75)
    {
      v76 = [*(v73 + 16) muid];
      v77 = *(v89 + 72);
      if (!v77)
      {
        goto LABEL_69;
      }
    }

    else
    {
      v77 = *(v89 + 72);
      if (!v77)
      {
        break;
      }

      v76 = 0;
    }

    v27 = [v77 road];
    v78 = [v27 muid];

    if (!v75 || v76 != v78)
    {
LABEL_69:

      ++v1;
      v71 = v74 == v70;
      v6 = v72;
      v5 = v88;
      if (v71)
      {
        goto LABEL_85;
      }

      continue;
    }

    break;
  }

  v83 = *(v0 + 312);
  swift_unknownObjectRelease();

LABEL_87:
  v81 = v90[0];
  v82 = *(v0 + 8);

  return v82(v81, v73);
}