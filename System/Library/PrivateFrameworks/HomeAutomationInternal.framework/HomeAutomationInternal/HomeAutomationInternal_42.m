uint64_t sub_252C41A14()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_25294B958;

  return sub_252C41064(v0);
}

uint64_t sub_252C41AA4()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_25294B7BC;

  return sub_252C40F64(v0);
}

uint64_t sub_252C41B34(uint64_t a1)
{
  v2 = type metadata accessor for HomeAutomationCalibrationInProgressParameters(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_252C41B90@<X0>(uint64_t **a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_252E32E84();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v39 - v11;
  v13 = *a1;
  type metadata accessor for MatterAccessory();
  v14 = swift_dynamicCastClass();
  if (!v14 || (v15 = v14, !*(v14 + OBJC_IVAR____TtC22HomeAutomationInternal15MatterAccessory_matterNodeID)))
  {
LABEL_19:
    v22 = (*v13 + 256);
    v23 = *v22;
    if (((*v22)() == 24 || (result = v23(), result == 38)) && (result = sub_252D4EC64(), v25) || (v23)(result) == 41 && (result = sub_252D4EC58(), v25))
    {
      *a2 = result;
      a2[1] = v25;
      return result;
    }

    if (qword_27F53F560 != -1)
    {
      swift_once();
    }

    v29 = sub_252E36AD4();
    __swift_project_value_buffer(v29, qword_27F544EC8);
    sub_252CC3D90(0xD000000000000050, 0x8000000252E8C4A0, 0xD000000000000080, 0x8000000252E8C340);
    v30 = sub_252D4DFC8();
    if (v30)
    {
      (*(v6 + 16))(v10, v30 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v5);
      goto LABEL_38;
    }

    v31 = *(v13 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_services);
    if (v31 >> 62)
    {
      if (v31 < 0)
      {
        v38 = *(v13 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_services);
      }

      result = sub_252E378C4();
      if (result)
      {
        goto LABEL_34;
      }
    }

    else
    {
      result = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
LABEL_34:
        if ((v31 & 0xC000000000000001) != 0)
        {
          v32 = MEMORY[0x2530ADF00](0, v31);
        }

        else
        {
          if (!*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return result;
          }

          v32 = *(v31 + 32);
        }

        (*(v6 + 16))(v10, v32 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v5);
LABEL_38:

        v33 = sub_252E32E24();
        v35 = v34;
        result = (*(v6 + 8))(v10, v5);
        *a2 = v33;
        a2[1] = v35;
        return result;
      }
    }

    *a2 = 0;
    a2[1] = 0;
    return result;
  }

  v39[1] = v13;
  v40 = a2;

  v16 = _s22HomeAutomationInternal22MatterAccessoryManagerC6sharedACvgZ_0();
  v17 = [*(v15 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate) uniqueIdentifier];
  sub_252E32E64();

  v47 = sub_252E32E24();
  v43 = v18;
  (*(v6 + 8))(v12, v5);
  v19 = OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_deviceEntityStore;
  swift_beginAccess();
  v41 = v2;
  v42 = v16;
  v5 = *&v16[v19];
  if (v5 >> 62)
  {
    goto LABEL_43;
  }

  v13 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:

  if (v13)
  {
    v6 = 0;
    do
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v20 = MEMORY[0x2530ADF00](v6, v5);
        a2 = (v6 + 1);
        if (__OFADD__(v6, 1))
        {
LABEL_18:
          __break(1u);
          goto LABEL_19;
        }
      }

      else
      {
        if (v6 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_43:
          v13 = sub_252E378C4();
          goto LABEL_5;
        }

        v20 = *(v5 + 8 * v6 + 32);

        a2 = (v6 + 1);
        if (__OFADD__(v6, 1))
        {
          goto LABEL_18;
        }
      }

      v21 = *(v20 + qword_27F5427D0);

      sub_252E36744();

      if (v45)
      {
        if (v44 == v47 && v45 == v43)
        {

LABEL_40:

          sub_252E36424();

          __swift_project_boxed_opaque_existential_1(&v44, v46);
          v27 = sub_252E364D4();
          v28 = v36;

          result = __swift_destroy_boxed_opaque_existential_1(&v44);
          goto LABEL_41;
        }

        v10 = sub_252E37DB4();

        if (v10)
        {

          goto LABEL_40;
        }
      }

      ++v6;
    }

    while (a2 != v13);
  }

  if (qword_27F53F560 != -1)
  {
    swift_once();
  }

  v26 = sub_252E36AD4();
  __swift_project_value_buffer(v26, qword_27F544EC8);
  v44 = 0;
  v45 = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000040, 0x8000000252E6B840);
  MEMORY[0x2530AD570](v47, v43);

  sub_252CC4050(v44, v45, 0xD00000000000007CLL, 0x8000000252E6B890, 0xD000000000000012, 0x8000000252E6B910, 375);

  v27 = 0;
  v28 = 0;
LABEL_41:
  v37 = v40;
  *v40 = v27;
  v37[1] = v28;
  return result;
}

uint64_t sub_252C421E8(unint64_t a1)
{
  v2 = sub_252E32E84();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  isUniquelyReferenced_nonNull_native = MEMORY[0x28223BE20](v2);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
LABEL_46:
    v52 = v7;
    v53 = isUniquelyReferenced_nonNull_native;
    v63 = a1 & 0xFFFFFFFFFFFFFF8;
    v8 = sub_252E378C4();
    isUniquelyReferenced_nonNull_native = v53;
    v7 = v52;
  }

  else
  {
    v63 = a1 & 0xFFFFFFFFFFFFFF8;
    v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v61 = "eEntity. Returning nil";
  if (!v8)
  {
    v59 = MEMORY[0x277D84F90];
    goto LABEL_37;
  }

  v57 = v7;
  v58 = isUniquelyReferenced_nonNull_native;
  v9 = 0;
  v62 = a1 & 0xC000000000000001;
  v60 = "getDeviceEntities(from:)";
  v7 = (v3 + 16);
  v55 = (v3 + 8);
  v56 = (v3 + 16);
  v59 = MEMORY[0x277D84F90];
  do
  {
    v10 = v9;
    while (1)
    {
      if (v62)
      {
        isUniquelyReferenced_nonNull_native = MEMORY[0x2530ADF00](v10, a1);
        v11 = isUniquelyReferenced_nonNull_native;
        v9 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          goto LABEL_44;
        }
      }

      else
      {
        if (v10 >= *(v63 + 16))
        {
          goto LABEL_45;
        }

        v11 = *(a1 + 8 * v10 + 32);

        v9 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
LABEL_44:
          __break(1u);
LABEL_45:
          __break(1u);
          goto LABEL_46;
        }
      }

      v12 = OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate;
      v13 = [*(v11 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) serviceType];
      v14 = sub_252E36F34();
      v16 = v15;

      if (qword_27F53F8B8 != -1)
      {
        swift_once();
      }

      v17 = off_27F546230;
      if (*(off_27F546230 + 2) && (v18 = sub_252A44A10(v14, v16), (v19 & 1) != 0))
      {
        v20 = *(v17[7] + 8 * v18);

        if (v20 == 9)
        {
          goto LABEL_20;
        }
      }

      else
      {
      }

      v21 = [*(v11 + v12) serviceType];
      v22 = sub_252E36F34();
      v24 = v23;

      if (!v17[2])
      {
        break;
      }

      v25 = sub_252A44A10(v22, v24);
      if ((v26 & 1) == 0)
      {
        break;
      }

      v27 = *(v17[7] + 8 * v25);

      if (v27 != 40)
      {
        goto LABEL_29;
      }

LABEL_20:
      if (qword_27F53F560 != -1)
      {
        swift_once();
      }

      v28 = sub_252E36AD4();
      v3 = __swift_project_value_buffer(v28, qword_27F544EC8);
      sub_252CC3D90(0xD00000000000004ELL, v60 | 0x8000000000000000, 0xD000000000000080, v61 | 0x8000000000000000);
      v29 = [*(v11 + v12) accessory];
      if (v29)
      {
        v30 = v29;
        v31 = type metadata accessor for Accessory();
        v32 = *(v31 + 48);
        v33 = *(v31 + 52);
        swift_allocObject();
        sub_252D4CE7C(v30);
        v3 = sub_252D4DFC8();

        if (v3)
        {
          v39 = v57;
          v40 = v58;
          (*v56)(v57, v3 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v58);

          v3 = sub_252E32E24();
          v42 = v41;

          (*v55)(v39, v40);
          goto LABEL_30;
        }
      }

      ++v10;
      if (v9 == v8)
      {
        goto LABEL_37;
      }
    }

LABEL_29:
    v3 = sub_252E32E24();
    v42 = v34;

LABEL_30:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      isUniquelyReferenced_nonNull_native = sub_2529F7A80(0, *(v59 + 2) + 1, 1, v59);
      v59 = isUniquelyReferenced_nonNull_native;
    }

    v36 = *(v59 + 2);
    v35 = *(v59 + 3);
    if (v36 >= v35 >> 1)
    {
      isUniquelyReferenced_nonNull_native = sub_2529F7A80((v35 > 1), v36 + 1, 1, v59);
      v59 = isUniquelyReferenced_nonNull_native;
    }

    v37 = v59;
    *(v59 + 2) = v36 + 1;
    v38 = &v37[16 * v36];
    *(v38 + 4) = v3;
    *(v38 + 5) = v42;
  }

  while (v9 != v8);
LABEL_37:
  if (qword_27F53F560 != -1)
  {
    swift_once();
  }

  v43 = sub_252E36AD4();
  __swift_project_value_buffer(v43, qword_27F544EC8);
  v64 = 0;
  v65 = 0xE000000000000000;
  sub_252E379F4();

  v64 = 0xD00000000000002DLL;
  v65 = 0x8000000252E8C440;
  v44 = v59;
  v45 = MEMORY[0x2530AD730](v59, MEMORY[0x277D837D0]);
  MEMORY[0x2530AD570](v45);

  sub_252CC3D90(v64, v65, 0xD000000000000080, v61 | 0x8000000000000000);

  v46 = *(v44 + 2);
  if (v46)
  {
    v64 = MEMORY[0x277D84F90];
    sub_252E37AB4();
    type metadata accessor for DeviceEntity();
    sub_252C42FA8();
    v47 = (v44 + 40);
    do
    {
      v48 = *(v47 - 1);
      v49 = *v47;

      sub_252E363E4();
      sub_252E37A94();
      v50 = *(v64 + 16);
      sub_252E37AC4();
      sub_252E37AD4();
      sub_252E37AA4();
      v47 += 2;
      --v46;
    }

    while (v46);

    return v64;
  }

  else
  {

    return MEMORY[0x277D84F90];
  }
}

uint64_t sub_252C42820(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_27;
  }

  v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v4 = 0;
    v20 = v2;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x2530ADF00](v4, a1);
        v7 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_25;
        }
      }

      else
      {
        if (v4 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_26;
        }

        v6 = *(a1 + 8 * v4 + 32);

        v7 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
LABEL_25:
          __break(1u);
LABEL_26:
          __break(1u);
LABEL_27:
          v2 = sub_252E378C4();
          goto LABEL_3;
        }
      }

      v23 = v6;
      sub_252C41B90(&v23, &v21);

      v8 = v22;
      if (v22)
      {
        v9 = v21;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v3 = sub_2529F7A80(0, *(v3 + 2) + 1, 1, v3);
        }

        v11 = *(v3 + 2);
        v10 = *(v3 + 3);
        if (v11 >= v10 >> 1)
        {
          v3 = sub_2529F7A80((v10 > 1), v11 + 1, 1, v3);
        }

        *(v3 + 2) = v11 + 1;
        v5 = &v3[16 * v11];
        *(v5 + 4) = v9;
        *(v5 + 5) = v8;
        v2 = v20;
      }

      ++v4;
    }

    while (v7 != v2);
  }

  if (qword_27F53F560 != -1)
  {
    swift_once();
  }

  v12 = sub_252E36AD4();
  __swift_project_value_buffer(v12, qword_27F544EC8);
  v21 = 0;
  v22 = 0xE000000000000000;
  sub_252E379F4();

  v21 = 0xD00000000000002ELL;
  v22 = 0x8000000252E8C470;
  v13 = MEMORY[0x2530AD730](v3, MEMORY[0x277D837D0]);
  MEMORY[0x2530AD570](v13);

  sub_252CC3D90(v21, v22, 0xD000000000000080, 0x8000000252E8C340);

  v14 = *(v3 + 2);
  if (v14)
  {
    v21 = MEMORY[0x277D84F90];
    sub_252E37AB4();
    type metadata accessor for DeviceEntity();
    sub_252C42FA8();
    v15 = (v3 + 40);
    do
    {
      v16 = *(v15 - 1);
      v17 = *v15;

      sub_252E363E4();
      sub_252E37A94();
      v18 = *(v21 + 16);
      sub_252E37AC4();
      sub_252E37AD4();
      sub_252E37AA4();
      v15 += 2;
      --v14;
    }

    while (v14);

    return v21;
  }

  else
  {

    return MEMORY[0x277D84F90];
  }
}

uint64_t sub_252C42B30(void *a1)
{
  v2 = sub_252E36AB4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F53F658 != -1)
  {
    swift_once();
  }

  v7 = qword_27F544FE0;
  sub_252E36A94();
  sub_252E375D4();
  sub_252E36A84();
  type metadata accessor for HomeStore();
  v8 = static HomeStore.shared.getter();
  v9 = v8[OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_loadSucceeded];
  v10 = &off_279711000;
  if (v9 == 2 || (v9) && (v11 = [a1 filters]) != 0)
  {
    v12 = v11;
    v36 = v3;
    v13 = v2;
    type metadata accessor for HomeFilter();
    v14 = sub_252E37264();

    v15 = [a1 userTask];
    v16 = HomeStore.services(matching:supporting:)(v14, v15);
    v18 = v17;

    if (v18)
    {
      sub_252929F10(v16, 1);
      v2 = v13;
      v3 = v36;
      v10 = &off_279711000;
    }

    else
    {
      if (v16 >> 62)
      {
        v30 = sub_252E378C4();
      }

      else
      {
        v30 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v2 = v13;
      v10 = &off_279711000;
      v3 = v36;
      if (v30)
      {
        v31 = sub_252C421E8(v16);
        v32 = v16;
LABEL_22:
        sub_252929F10(v32, 0);
        goto LABEL_31;
      }

      sub_252929F10(v16, 0);
    }
  }

  else
  {
  }

  v19 = static HomeStore.shared.getter();
  v20 = v19[OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_loadSucceeded];
  if (v20 == 2 || (v20 & 1) != 0)
  {
    v21 = [a1 v10[192]];
    if (v21)
    {
      v22 = v21;
      type metadata accessor for HomeFilter();
      v23 = sub_252E37264();

      v24 = [a1 userTask];
      v25 = HomeStore.accessories(matching:supporting:)(v23, v24);
      v27 = v26;

      if (v27)
      {
        v28 = v25;
        v29 = 1;
LABEL_27:
        sub_252929F10(v28, v29);
        goto LABEL_28;
      }

      if (v25 >> 62)
      {
        if (sub_252E378C4())
        {
          goto LABEL_21;
        }
      }

      else if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_21:
        v31 = sub_252C42820(v25);
        v32 = v25;
        goto LABEL_22;
      }

      v28 = v25;
      v29 = 0;
      goto LABEL_27;
    }
  }

LABEL_28:
  if (qword_27F53F560 != -1)
  {
    swift_once();
  }

  v33 = sub_252E36AD4();
  __swift_project_value_buffer(v33, qword_27F544EC8);
  sub_252CC4050(0xD000000000000036, 0x8000000252E8C300, 0xD000000000000080, 0x8000000252E8C340, 0xD000000000000018, 0x8000000252E8C3D0, 35);
  v31 = 0;
LABEL_31:
  sub_252E375C4();
  sub_252E36A74();
  (*(v3 + 8))(v6, v2);
  return v31;
}

unint64_t sub_252C42FA8()
{
  result = qword_27F544368;
  if (!qword_27F544368)
  {
    type metadata accessor for DeviceEntity();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F544368);
  }

  return result;
}

uint64_t sub_252C43000()
{
  v1 = v0;
  sub_252E379F4();

  strcpy(v15, "deviceEntity:");
  HIWORD(v15[1]) = -4864;
  v2 = *(v0 + qword_27F544440);

  sub_252E36744();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540EA8, &unk_252E491B0);
  v3 = sub_252E36F94();
  MEMORY[0x2530AD570](v3);

  MEMORY[0x2530AD570](0xD000000000000013, 0x8000000252E8C690);
  v4 = *(v1 + qword_27F544448);

  sub_252E36744();

  v5 = v13;
  if (v13)
  {
    v14 = MEMORY[0x277D84F90];
    if (v5 >> 62)
    {
      goto LABEL_18;
    }

    for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
    {
      v7 = 0;
      while ((v5 & 0xC000000000000001) != 0)
      {
        MEMORY[0x2530ADF00](v7, v5);
        v9 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_16;
        }

LABEL_8:
        MEMORY[0x2530AD700]();
        if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v10 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_252E372A4();
        }

        sub_252E372D4();
        ++v7;
        if (v9 == i)
        {
          goto LABEL_19;
        }
      }

      if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }

      v8 = *(v5 + 8 * v7 + 32);

      v9 = v7 + 1;
      if (!__OFADD__(v7, 1))
      {
        goto LABEL_8;
      }

LABEL_16:
      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      ;
    }

LABEL_19:
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5445A0, &qword_252E54C48);
  v11 = sub_252E36F94();
  MEMORY[0x2530AD570](v11);

  return v15[0];
}

uint64_t sub_252C43278(uint64_t a1)
{
  v3 = sub_252E36454();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 48);
  v9 = *(v1 + 52);
  v10 = swift_allocObject();
  v11 = qword_27F544440;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544590, &qword_252E54C30);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  *(v10 + v11) = sub_252E36734();
  v15 = qword_27F544448;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544598, &unk_252E54C38);
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  *(v10 + v15) = sub_252E36734();
  (*(v4 + 16))(v7, a1, v3);
  v19 = sub_252E364B4();
  (*(v4 + 8))(a1, v3);
  return v19;
}

uint64_t sub_252C43470(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28213DE00](a1, a2, WitnessTable);
}

uint64_t sub_252C434D0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28213DB58](a1, WitnessTable);
}

uint64_t sub_252C43524(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28213DDE8](a1, a2, WitnessTable);
}

uint64_t sub_252C43584()
{
  v1 = v0;
  v2 = *(v0 + qword_27F544460);

  sub_252E36744();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544588, &unk_252E54C20);
  v6 = sub_252E36F94();
  MEMORY[0x2530AD570](8250, 0xE200000000000000);
  v3 = *(v1 + qword_27F544468);

  sub_252E36744();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540EB0, &qword_252E3F4E8);
  v4 = sub_252E36F94();
  MEMORY[0x2530AD570](v4);

  return v6;
}

uint64_t sub_252C43678(uint64_t a1)
{
  v3 = sub_252E36454();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 48);
  v9 = *(v1 + 52);
  v10 = swift_allocObject();
  v11 = qword_27F544460;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544578, &qword_252E54C10);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  *(v10 + v11) = sub_252E36734();
  v15 = qword_27F544468;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544580, &qword_252E54C18);
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  *(v10 + v15) = sub_252E36734();
  (*(v4 + 16))(v7, a1, v3);
  v19 = sub_252E364B4();
  (*(v4 + 8))(a1, v3);
  return v19;
}

uint64_t sub_252C43818(void *a1, void *a2)
{
  v4 = *(v2 + *a1);

  v5 = *(v2 + *a2);
}

uint64_t sub_252C43870(void *a1, void *a2)
{
  v4 = sub_252E364A4();
  v5 = *(v4 + *a1);

  v6 = *(v4 + *a2);

  return swift_deallocClassInstance();
}

uint64_t sub_252C43910()
{
  v0 = *aComAppleHome_2;

  return v0;
}

uint64_t sub_252C4396C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28213DE00](a1, a2, WitnessTable);
}

uint64_t sub_252C439CC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28213DB58](a1, WitnessTable);
}

uint64_t sub_252C43A20(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28213DDE8](a1, a2, WitnessTable);
}

HomeAutomationInternal::HomeError_optional __swiftcall HomeError.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_252E37DE4();

  v5 = 0;
  v6 = 5;
  switch(v3)
  {
    case 0:
      goto LABEL_15;
    case 1:
      v5 = 1;
      goto LABEL_15;
    case 2:
      v5 = 2;
      goto LABEL_15;
    case 3:
      v5 = 3;
      goto LABEL_15;
    case 4:
      v5 = 4;
LABEL_15:
      v6 = v5;
      break;
    case 5:
      break;
    case 6:
      v6 = 6;
      break;
    case 7:
      v6 = 7;
      break;
    case 8:
      v6 = 8;
      break;
    case 9:
      v6 = 9;
      break;
    case 10:
      v6 = 10;
      break;
    case 11:
      v6 = 11;
      break;
    case 12:
      v6 = 12;
      break;
    case 13:
      v6 = 13;
      break;
    case 14:
      v6 = 14;
      break;
    case 15:
      v6 = 15;
      break;
    case 16:
      v6 = 16;
      break;
    case 17:
      v6 = 17;
      break;
    case 18:
      v6 = 18;
      break;
    case 19:
      v6 = 19;
      break;
    case 20:
      v6 = 20;
      break;
    case 21:
      v6 = 21;
      break;
    case 22:
      v6 = 22;
      break;
    default:
      v6 = 23;
      break;
  }

  *v2 = v6;
  return result;
}

unint64_t HomeError.rawValue.getter()
{
  result = 0x46746F4E656D6F68;
  switch(*v0)
  {
    case 1:
      result = 0x46746F4E6D6F6F72;
      break;
    case 2:
    case 0xB:
      result = 0xD000000000000011;
      break;
    case 3:
    case 0xF:
      result = 0xD000000000000014;
      break;
    case 4:
      result = 0xD000000000000015;
      break;
    case 5:
    case 0xD:
      result = 0xD00000000000001CLL;
      break;
    case 6:
      result = 0xD000000000000015;
      break;
    case 7:
    case 9:
    case 0x14:
      result = 0xD000000000000016;
      break;
    case 8:
      result = 0xD000000000000015;
      break;
    case 0xA:
    case 0x15:
      result = 0xD000000000000013;
      break;
    case 0xC:
      result = 0xD000000000000018;
      break;
    case 0xE:
      result = 0xD000000000000020;
      break;
    case 0x10:
      result = 0x6F4C656369766564;
      break;
    case 0x11:
      result = 0x6544737365636361;
      break;
    case 0x12:
      result = 0xD000000000000010;
      break;
    case 0x13:
      result = 0xD000000000000012;
      break;
    case 0x16:
      result = 0x65746F6D65526F6ELL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_252C43EA8(char *a1, char *a2)
{
  v10 = *a1;
  v9 = *a2;
  v2 = HomeError.rawValue.getter();
  v4 = v3;
  if (v2 == HomeError.rawValue.getter() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_252E37DB4();
  }

  return v7 & 1;
}

uint64_t sub_252C43F44()
{
  v1 = *v0;
  sub_252E37EC4();
  HomeError.rawValue.getter();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252C43FAC()
{
  v2 = *v0;
  HomeError.rawValue.getter();
  sub_252E37044();
}

uint64_t sub_252C44010()
{
  v1 = *v0;
  sub_252E37EC4();
  HomeError.rawValue.getter();
  sub_252E37044();

  return sub_252E37F14();
}

unint64_t sub_252C44080@<X0>(unint64_t *a1@<X8>)
{
  result = HomeError.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_252C440C8(uint64_t a1)
{
  v2 = sub_252C46A6C();

  return MEMORY[0x28213DAB0](a1, v2);
}

uint64_t sub_252C44104(uint64_t a1)
{
  v2 = sub_252C46A6C();

  return MEMORY[0x28213DAD0](a1, v2);
}

uint64_t sub_252C44140(uint64_t a1, uint64_t a2)
{
  v4 = sub_252C458BC();

  return MEMORY[0x28213DDE8](a1, a2, v4);
}

uint64_t sub_252C4418C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_252C46A6C();

  return MEMORY[0x28213DAC0](a1, a2, a3, v6);
}

uint64_t sub_252C441F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_252C458BC();

  return MEMORY[0x28213DE00](a1, a2, v4);
}

uint64_t sub_252C4424C(uint64_t *a1, uint64_t *a2)
{
  swift_beginAccess();
  v4 = *a1;
  v5 = *a2;

  return v4;
}

uint64_t sub_252C442B0(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  swift_beginAccess();
  v8 = *a4;
  *a3 = a1;
  *a4 = a2;
}

uint64_t sub_252C44368(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t *a6)
{
  v9 = *a1;
  v8 = a1[1];
  swift_beginAccess();
  v10 = *a6;
  *a5 = v9;
  *a6 = v8;
}

HomeAutomationInternal::DeviceError_optional __swiftcall DeviceError.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_252E37B74();

  v5 = 10;
  if (v3 < 0xA)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t DeviceError.rawValue.getter()
{
  v1 = *v0;
  if (v1 > 4)
  {
    v6 = 0xD000000000000011;
    v7 = 0xD000000000000013;
    v8 = 0xD000000000000018;
    if (v1 == 8)
    {
      v8 = 0xD000000000000013;
    }

    if (v1 != 7)
    {
      v6 = v8;
    }

    if (v1 == 5)
    {
      v7 = 0x4274737544637672;
    }

    if (*v0 <= 6u)
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
    v2 = 0x6E776F6E6B6E75;
    v3 = 0xD00000000000001BLL;
    if (v1 != 3)
    {
      v3 = 0xD000000000000011;
    }

    if (v1 != 2)
    {
      v2 = v3;
    }

    v4 = 0xD000000000000016;
    if (*v0)
    {
      v4 = 0xD00000000000001DLL;
    }

    if (*v0 <= 1u)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_252C4459C()
{
  v1 = *v0;
  sub_252E37EC4();
  sub_252AB3C18();
  return sub_252E37F14();
}

uint64_t sub_252C445EC()
{
  v1 = *v0;
  sub_252E37EC4();
  sub_252AB3C18();
  return sub_252E37F14();
}

uint64_t sub_252C4463C@<X0>(uint64_t *a1@<X8>)
{
  result = DeviceError.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_252C44674(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  swift_beginAccess();
  v6 = *a3;
  v7 = *a4;

  return v6;
}

uint64_t sub_252C446DC(uint64_t a1)
{
  v2 = sub_252C46A18();

  return MEMORY[0x28213DAB0](a1, v2);
}

uint64_t sub_252C44718(uint64_t a1)
{
  v2 = sub_252C46A18();

  return MEMORY[0x28213DAD0](a1, v2);
}

uint64_t sub_252C44754(uint64_t a1, uint64_t a2)
{
  v4 = sub_252C45BA8();

  return MEMORY[0x28213DDE8](a1, a2, v4);
}

uint64_t sub_252C447A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_252C46A18();

  return MEMORY[0x28213DAC0](a1, a2, a3, v6);
}

uint64_t sub_252C44804(uint64_t a1, uint64_t a2)
{
  v4 = sub_252C45BA8();

  return MEMORY[0x28213DE00](a1, a2, v4);
}

unint64_t sub_252C44850()
{
  v1 = *v0;
  v2 = v0[1];
  if (*(v0 + 33))
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3 & 0xFFFFFFFE | (*(v0 + 32) >> 1) & 1;
  if (v4 > 1)
  {
    if (v4 == 2)
    {
      sub_252E379F4();

      v10 = 0x6146656369766564;
      v6 = &unk_27F544528;
      v7 = &unk_252E54C00;
    }

    else
    {
      sub_252E379F4();

      v10 = 0xD000000000000013;
      v6 = &qword_27F541EE0;
      v7 = &qword_252E4D8A0;
    }
  }

  else
  {
    if (!v4)
    {
      v9 = *v0;
      v11 = v0[1];
      v12 = *(v0 + 1);
      sub_252E37AE4();
      return 0;
    }

    v10 = 0x203A726F727265;
    v6 = &unk_27F544530;
    v7 = &unk_252E60660;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  v8 = sub_252E36F94();
  MEMORY[0x2530AD570](v8);

  return v10;
}

uint64_t sub_252C449FC()
{
  v1 = *v0;
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252C44AC8()
{
  *v0;
  *v0;
  *v0;
  sub_252E37044();
}

uint64_t sub_252C44B80()
{
  v1 = *v0;
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252C44C48@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_252C4678C();
  *a2 = result;
  return result;
}

void sub_252C44C78(uint64_t *a1@<X8>)
{
  v2 = 0x2E656D6F6374754FLL;
  v3 = 0xEF73736563637573;
  v4 = 0xD000000000000015;
  v5 = 0x8000000252E684C0;
  if (*v1 != 2)
  {
    v4 = 0xD000000000000023;
    v5 = 0x8000000252E684E0;
  }

  if (*v1)
  {
    v3 = 0xEF6572756C696166;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v2 = v4;
    v6 = v5;
  }

  *a1 = v2;
  a1[1] = v6;
}

uint64_t sub_252C44D00()
{
  sub_252E37EC4();
  sub_252E37044();
  return sub_252E37F14();
}

uint64_t sub_252C44D54()
{
  sub_252E37EC4();
  sub_252E37044();
  return sub_252E37F14();
}

uint64_t sub_252C44D98@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_252E37B74();

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_252C44DFC()
{
  v19 = v0[1];
  v20 = *v0;
  v1 = *(v0 + 32);
  v2 = *(v0 + 33);
  if (qword_27F53F568 != -1)
  {
    swift_once();
  }

  v3 = sub_252E36AD4();
  __swift_project_value_buffer(v3, qword_27F544EE0);
  sub_252CC3D90(0xD00000000000001CLL, 0x8000000252E8C650, 0xD000000000000080, 0x8000000252E8C5C0);
  if (v2)
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4 & 0xFFFFFFFE | (v1 >> 1) & 1;
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      v24 = 3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540F50, &qword_252E450D0);
      v15 = *(sub_252E36724() - 8);
      v16 = *(v15 + 72);
      v17 = (*(v15 + 80) + 32) & ~*(v15 + 80);
      *(swift_allocObject() + 16) = xmmword_252E3C290;
      *&v21[0] = v20;
      BYTE8(v21[0]) = BYTE8(v20) & 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541EE0, &qword_252E4D8A0);
      *&v23 = sub_252E37724();
      sub_252C468D0();
      sub_252C4691C();
      sub_252E366F4();
      sub_252C46970();
      goto LABEL_14;
    }

    LOBYTE(v23) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540F50, &qword_252E450D0);
    v9 = *(sub_252E36724() - 8);
    v10 = *(v9 + 72);
    v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    *(swift_allocObject() + 16) = xmmword_252E3C290;
    v24 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544528, &unk_252E54C00);
    sub_252C45B50();
LABEL_12:
    *&v21[0] = sub_252E37724();
    sub_252C468D0();
    sub_252C4691C();
    sub_252E366F4();
    sub_252C46970();
LABEL_14:
    sub_252E36574();
  }

  if (v5)
  {
    LOBYTE(v23) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540F50, &qword_252E450D0);
    v12 = *(sub_252E36724() - 8);
    v13 = *(v12 + 72);
    v14 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    *(swift_allocObject() + 16) = xmmword_252E3C290;
    v24 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544530, &unk_252E60660);
    sub_252C45864();
    goto LABEL_12;
  }

  v24 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540F50, &qword_252E450D0);
  v6 = *(sub_252E36724() - 8);
  v7 = *(v6 + 72);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  *(swift_allocObject() + 16) = xmmword_252E3C290;
  v21[1] = v19;
  v22 = v1;
  sub_252A82828();
  sub_252E36514();
  sub_252C468D0();
  sub_252C4691C();
  sub_252E366F4();
  sub_252C46970();
  sub_252E36574();

  *&v21[0] = 0;
  *(&v21[0] + 1) = 0xE000000000000000;
  sub_252E379F4();
  v23 = v21[0];
  MEMORY[0x2530AD570](0xD000000000000017, 0x8000000252E8C670);
  sub_252E36584();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544568, &qword_252E60670);
  sub_252E37AE4();
  __swift_destroy_boxed_opaque_existential_1(v21);
  sub_252CC3D90(v23, *(&v23 + 1), 0xD000000000000080, 0x8000000252E8C5C0);
}

void sub_252C453BC(int8x16_t *a1@<X8>)
{
  sub_252E36584();
  __swift_project_boxed_opaque_existential_1(&v14, v15.i64[1]);
  sub_252E364C4();
  v2 = sub_252C4678C();
  __swift_destroy_boxed_opaque_existential_1(v14.i64);
  if (v2 <= 1u)
  {
    if (!v2)
    {
      sub_252A81B70();
      sub_252E36594();
      v7.i32[0] = -3;
      if (v16 <= 0xFDu)
      {
        v8 = v16;
      }

      else
      {
        v8 = -254;
      }

      v6.i32[0] = v16;
      v9 = vdupq_lane_s8(*&vcgtq_u8(v6, v7), 0);
      v10 = vbicq_s8(v15, v9);
      *a1 = vbicq_s8(v14, v9);
      a1[1] = v10;
LABEL_30:
      a1[2].i16[0] = v8;
      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544530, &unk_252E60660);
    sub_252C46854(&qword_27F544548, &qword_27F544530, &unk_252E60660, sub_252C45864);
    sub_252E36594();
    v11 = v14.u8[0] == 24;
    if (v14.u8[0] == 24)
    {
      v12 = 0;
    }

    else
    {
      v12 = v14.u8[0];
    }

    v8 = 2;
LABEL_27:
    if (v11)
    {
      v8 = -254;
    }

    a1->i64[0] = v12;
    a1->i64[1] = 0;
    a1[1].i64[0] = 0;
    a1[1].i64[1] = 0;
    goto LABEL_30;
  }

  if (v2 == 2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544528, &unk_252E54C00);
    sub_252C46854(&qword_27F544540, &qword_27F544528, &unk_252E54C00, sub_252C45B50);
    sub_252E36594();
    v11 = v14.u8[0] == 11;
    if (v14.u8[0] == 11)
    {
      v12 = 0;
    }

    else
    {
      v12 = v14.u8[0];
    }

    v8 = 256;
    goto LABEL_27;
  }

  if (v2 == 3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541EE0, &qword_252E4D8A0);
    sub_252C467D8();
    sub_252E36594();
    v3 = v14.i8[8] & 1;
    if (v14.i8[9])
    {
      v4 = 0;
    }

    else
    {
      v4 = v14.i64[0];
    }

    if (v14.i8[9])
    {
      v3 = 0;
      v5 = -254;
    }

    else
    {
      v5 = 258;
    }

    a1->i64[0] = v4;
    a1->i64[1] = v3;
    a1[1].i64[0] = 0;
    a1[1].i64[1] = 0;
    a1[2].i16[0] = v5;
  }

  else
  {
    if (qword_27F53F568 != -1)
    {
      swift_once();
    }

    v13 = sub_252E36AD4();
    __swift_project_value_buffer(v13, qword_27F544EE0);
    sub_252CC4050(0xD000000000000019, 0x8000000252E6EFC0, 0xD000000000000080, 0x8000000252E8C5C0, 0xD000000000000010, 0x8000000252E6F060, 179);
    *a1 = 0u;
    a1[1] = 0u;
    a1[2].i16[0] = -254;
  }
}

uint64_t sub_252C456D0()
{
  sub_252C469C4();

  return sub_252E36514();
}

uint64_t sub_252C4570C(uint64_t a1, uint64_t a2)
{
  v4 = sub_252C469C4();

  return MEMORY[0x28213DA58](a1, a2, v4);
}

uint64_t sub_252C45758(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_252C469C4();

  return MEMORY[0x28213DA68](a1, a2, a3, v6);
}

uint64_t sub_252C457BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_252C469C4();

  return MEMORY[0x28213DA60](a1, a2, v4);
}

unint64_t sub_252C4580C()
{
  result = qword_27F5443A0;
  if (!qword_27F5443A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5443A0);
  }

  return result;
}

unint64_t sub_252C45864()
{
  result = qword_27F5443A8;
  if (!qword_27F5443A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5443A8);
  }

  return result;
}

unint64_t sub_252C458BC()
{
  result = qword_27F5443B0;
  if (!qword_27F5443B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5443B0);
  }

  return result;
}

unint64_t sub_252C45914()
{
  result = qword_27F5443B8;
  if (!qword_27F5443B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5443B8);
  }

  return result;
}

unint64_t sub_252C4596C()
{
  result = qword_27F5443C0;
  if (!qword_27F5443C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5443C0);
  }

  return result;
}

unint64_t sub_252C459F0()
{
  result = qword_27F5443D8;
  if (!qword_27F5443D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5443D8);
  }

  return result;
}

unint64_t sub_252C45A48()
{
  result = qword_27F5443E0;
  if (!qword_27F5443E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5443E0);
  }

  return result;
}

unint64_t sub_252C45AA0()
{
  result = qword_27F5443E8;
  if (!qword_27F5443E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5443E8);
  }

  return result;
}

unint64_t sub_252C45AF8()
{
  result = qword_27F5443F0;
  if (!qword_27F5443F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5443F0);
  }

  return result;
}

unint64_t sub_252C45B50()
{
  result = qword_27F5443F8;
  if (!qword_27F5443F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5443F8);
  }

  return result;
}

unint64_t sub_252C45BA8()
{
  result = qword_27F544400;
  if (!qword_27F544400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F544400);
  }

  return result;
}

unint64_t sub_252C45C00()
{
  result = qword_27F544408;
  if (!qword_27F544408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F544408);
  }

  return result;
}

unint64_t sub_252C45C58()
{
  result = qword_27F544410;
  if (!qword_27F544410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F544410);
  }

  return result;
}

unint64_t sub_252C45CDC()
{
  result = qword_27F544428;
  if (!qword_27F544428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F544428);
  }

  return result;
}

unint64_t sub_252C45D34()
{
  result = qword_27F544430;
  if (!qword_27F544430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F544430);
  }

  return result;
}

unint64_t sub_252C45D8C()
{
  result = qword_27F544438;
  if (!qword_27F544438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F544438);
  }

  return result;
}

uint64_t keypath_getTm@<X0>(void *a1@<X3>, uint64_t *a2@<X4>, void *a3@<X8>)
{
  swift_beginAccess();
  v6 = *a2;
  *a3 = *a1;
  a3[1] = v6;
}

uint64_t getEnumTagSinglePayload for HomeError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEA)
  {
    goto LABEL_17;
  }

  if (a2 + 22 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 22) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 22;
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

      return (*a1 | (v4 << 8)) - 22;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 22;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x17;
  v8 = v6 - 23;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HomeError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 22 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 22) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEA)
  {
    v4 = 0;
  }

  if (a2 > 0xE9)
  {
    v5 = ((a2 - 234) >> 8) + 1;
    *result = a2 + 22;
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
    *result = a2 + 22;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy34_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_252C46078(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x1FD && *(a1 + 34))
  {
    return (*a1 + 509);
  }

  v3 = ((*(a1 + 32) >> 1) & 1 | (2 * *(a1 + 33))) ^ 0x1FF;
  if (v3 >= 0x1FC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_252C460CC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x1FC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 509;
    *(result + 8) = 0;
    if (a3 >= 0x1FD)
    {
      *(result + 34) = 1;
    }
  }

  else
  {
    if (a3 >= 0x1FD)
    {
      *(result + 34) = 0;
    }

    if (a2)
    {
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 32) = 2 * (-a2 & 1);
      *(result + 33) = -a2 >> 1;
    }
  }

  return result;
}

uint64_t sub_252C46138(uint64_t result, char a2)
{
  *(result + 32) = *(result + 32) & 0xFD | (2 * (a2 & 1));
  *(result + 33) = (a2 & 2) != 0;
  return result;
}

unint64_t sub_252C46168()
{
  result = qword_27F544480;
  if (!qword_27F544480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F544480);
  }

  return result;
}

unint64_t sub_252C461C0()
{
  result = qword_27F544488;
  if (!qword_27F544488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F544488);
  }

  return result;
}

unint64_t sub_252C46218()
{
  result = qword_27F544490;
  if (!qword_27F544490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F544490);
  }

  return result;
}

unint64_t sub_252C46270()
{
  result = qword_27F544498;
  if (!qword_27F544498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F544498);
  }

  return result;
}

uint64_t sub_252C46354(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_252C4678C()
{
  v0 = sub_252E37B74();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_252C467D8()
{
  result = qword_27F544538;
  if (!qword_27F544538)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F541EE0, &qword_252E4D8A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F544538);
  }

  return result;
}

uint64_t sub_252C46854(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_252C468D0()
{
  result = qword_27F544550;
  if (!qword_27F544550)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F544550);
  }

  return result;
}

unint64_t sub_252C4691C()
{
  result = qword_27F544558;
  if (!qword_27F544558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F544558);
  }

  return result;
}

unint64_t sub_252C46970()
{
  result = qword_27F544560;
  if (!qword_27F544560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F544560);
  }

  return result;
}

unint64_t sub_252C469C4()
{
  result = qword_27F544570;
  if (!qword_27F544570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F544570);
  }

  return result;
}

unint64_t sub_252C46A18()
{
  result = qword_27F5445A8;
  if (!qword_27F5445A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5445A8);
  }

  return result;
}

unint64_t sub_252C46A6C()
{
  result = qword_27F5445B0;
  if (!qword_27F5445B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5445B0);
  }

  return result;
}

unint64_t sub_252C46AE4()
{
  result = qword_27F5445B8;
  if (!qword_27F5445B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5445B8);
  }

  return result;
}

unint64_t sub_252C46B3C()
{
  result = qword_27F5445C0;
  if (!qword_27F5445C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5445C0);
  }

  return result;
}

uint64_t sub_252C46BD4(uint64_t a1)
{
  v28 = *(a1 + 16);
  if (!v28)
  {
    return MEMORY[0x277D84F90];
  }

  v1 = 0;
  v2 = MEMORY[0x277D84F90];
  v27 = a1 + 32;
  while (1)
  {
    v4 = *(v27 + 8 * v1);
    v5 = v4 >> 62;
    if (v4 >> 62)
    {
      if (v4 < 0)
      {
        v24 = *(v27 + 8 * v1);
      }

      v6 = sub_252E378C4();
    }

    else
    {
      v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v7 = v2 >> 62;
    if (v2 >> 62)
    {
      v25 = sub_252E378C4();
      v9 = v25 + v6;
      if (__OFADD__(v25, v6))
      {
LABEL_36:
        __break(1u);
        return MEMORY[0x277D84F90];
      }
    }

    else
    {
      v8 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v9 = v8 + v6;
      if (__OFADD__(v8, v6))
      {
        goto LABEL_36;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v32 = v6;
    if (result)
    {
      if (v7)
      {
        goto LABEL_16;
      }

      v10 = v2 & 0xFFFFFFFFFFFFFF8;
      if (v9 <= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_18;
      }
    }

    else
    {
      if (v7)
      {
LABEL_16:
        sub_252E378C4();
        goto LABEL_17;
      }

      v10 = v2 & 0xFFFFFFFFFFFFFF8;
    }

    v11 = *(v10 + 16);
LABEL_17:
    result = sub_252E37A54();
    v2 = result;
    v10 = result & 0xFFFFFFFFFFFFFF8;
LABEL_18:
    v12 = *(v10 + 16);
    v13 = *(v10 + 24);
    if (v5)
    {
      break;
    }

    v14 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v14)
    {
      goto LABEL_3;
    }

LABEL_22:
    if (((v13 >> 1) - v12) < v32)
    {
      goto LABEL_40;
    }

    v29 = v1;
    v30 = v2;
    v16 = v10 + 8 * v12 + 32;
    v26 = v10;
    if (v5)
    {
      if (v14 < 1)
      {
        goto LABEL_42;
      }

      sub_252A00B04(&qword_27F5421A8, &qword_27F541850, &qword_252E43DC0);
      for (i = 0; i != v14; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541850, &qword_252E43DC0);
        v18 = sub_2529FBD80(v31, i, v4);
        v20 = *v19;
        (v18)(v31, 0);
        *(v16 + 8 * i) = v20;
      }
    }

    else
    {
      type metadata accessor for HomeUserTaskResponse();
      swift_arrayInitWithCopy();
    }

    v1 = v29;
    v2 = v30;
    if (v32 >= 1)
    {
      v21 = *(v26 + 16);
      v22 = __OFADD__(v21, v32);
      v23 = v21 + v32;
      if (v22)
      {
        goto LABEL_41;
      }

      *(v26 + 16) = v23;
    }

LABEL_4:
    if (++v1 == v28)
    {
      return v2;
    }
  }

  v15 = v10;
  result = sub_252E378C4();
  v10 = v15;
  v14 = result;
  if (result)
  {
    goto LABEL_22;
  }

LABEL_3:

  if (v32 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

unint64_t sub_252C46EA0(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_47;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v30 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v31 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v3 = MEMORY[0x277D84F90];
    v26 = isUniquelyReferenced_nonNull_bridgeObject;
    v29 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v27 = v1;
    while (1)
    {
      if (v31)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x2530ADF00](v2, v26);
      }

      else
      {
        if (v2 >= *(v30 + 16))
        {
          goto LABEL_42;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v29 + 8 * v2);
      }

      v4 = isUniquelyReferenced_nonNull_bridgeObject;
      v5 = __OFADD__(v2++, 1);
      if (v5)
      {
        break;
      }

      v6 = sub_252C49A20();

      v7 = v6 >> 62;
      if (v6 >> 62)
      {
        v8 = sub_252E378C4();
      }

      else
      {
        v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v9 = v3 >> 62;
      if (v3 >> 62)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_252E378C4();
        v10 = isUniquelyReferenced_nonNull_bridgeObject + v8;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v8))
        {
LABEL_40:
          __break(1u);
          break;
        }
      }

      else
      {
        isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v10 = isUniquelyReferenced_nonNull_bridgeObject + v8;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v8))
        {
          goto LABEL_40;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v34 = v8;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (v9)
        {
          goto LABEL_21;
        }

        v11 = v3 & 0xFFFFFFFFFFFFFF8;
        if (v10 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v32 = v3;
          goto LABEL_23;
        }
      }

      else
      {
        if (v9)
        {
LABEL_21:
          sub_252E378C4();
          goto LABEL_22;
        }

        v11 = v3 & 0xFFFFFFFFFFFFFF8;
      }

      v12 = *(v11 + 16);
LABEL_22:
      isUniquelyReferenced_nonNull_bridgeObject = sub_252E37A54();
      v32 = isUniquelyReferenced_nonNull_bridgeObject;
      v11 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_23:
      v13 = *(v11 + 16);
      v14 = *(v11 + 24);
      if (v7)
      {
        v16 = v11;
        isUniquelyReferenced_nonNull_bridgeObject = sub_252E378C4();
        v11 = v16;
        v15 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_27:
          if (((v14 >> 1) - v13) < v34)
          {
            goto LABEL_44;
          }

          v17 = v11 + 8 * v13 + 32;
          v28 = v11;
          if (v7)
          {
            if (v15 < 1)
            {
              goto LABEL_46;
            }

            sub_252A00B04(&qword_27F541360, &unk_27F53FBC0, &unk_252E3B240);
            for (i = 0; i != v15; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F53FBC0, &unk_252E3B240);
              v19 = sub_2529FBE00(v33, i, v6);
              v21 = *v20;

              (v19)(v33, 0);
              *(v17 + 8 * i) = v21;
            }
          }

          else
          {
            type metadata accessor for Service();
            swift_arrayInitWithCopy();
          }

          v1 = v27;
          v3 = v32;
          if (v34 >= 1)
          {
            v22 = *(v28 + 16);
            v5 = __OFADD__(v22, v34);
            v23 = v22 + v34;
            if (v5)
            {
              goto LABEL_45;
            }

            *(v28 + 16) = v23;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v15 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v15)
        {
          goto LABEL_27;
        }
      }

      v3 = v32;
      if (v34 > 0)
      {
        goto LABEL_43;
      }

LABEL_5:
      if (v2 == v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    v24 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = sub_252E378C4();
    isUniquelyReferenced_nonNull_bridgeObject = v24;
  }

  return MEMORY[0x277D84F90];
}

void sub_252C471EC()
{
  v1 = v0;
  v105 = sub_252E36AD4();
  v2 = *(v105 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v105);
  v100 = &v81 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541F20, &qword_252E3C180);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v96 = &v81 - v7;
  v98 = sub_252E32E84();
  v8 = *(v98 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v98);
  v88 = &v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x277D84F90];
  v110 = MEMORY[0x277D84F90];
  v12 = [v1 requests];
  sub_25293F638(0, &qword_27F542118, 0x277CD1D58);
  v13 = sub_252E37264();

  v14 = sub_252C4A750(v13);
  v89 = 0;

  v15 = 0;
  v17 = v14 + 64;
  v16 = *(v14 + 64);
  v104 = v14;
  v18 = 1 << *(v14 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v16;
  v21 = (v18 + 63) >> 6;
  v99 = 0x8000000252E8C820;
  v101 = "quest for attribute ";
  v102 = "Enriching command with ";
  v94 = (v2 + 16);
  v95 = (v8 + 48);
  v92 = (v2 + 8);
  v93 = "enrich(metricsRequests:)";
  v87 = (v8 + 32);
  v86 = (v8 + 8);
  for (i = v11; ; i = v110)
  {
    while (1)
    {
      if (v20)
      {
        goto LABEL_10;
      }

      do
      {
        v24 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          __break(1u);
LABEL_71:
          __break(1u);
LABEL_72:
          __break(1u);
          goto LABEL_73;
        }

        if (v24 >= v21)
        {

          return;
        }

        v20 = *(v17 + 8 * v24);
        ++v15;
      }

      while (!v20);
      v15 = v24;
LABEL_10:
      v25 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
      v26 = v25 | (v15 << 6);
      v27 = *(v104 + 48) + 16 * v26;
      v28 = *v27;
      v29 = *(v27 + 8);
      v30 = *(*(v104 + 56) + 8 * v26);
      v31 = objc_allocWithZone(MEMORY[0x277D57580]);

      v32 = [v31 init];
      if (!v32)
      {

        if (qword_27F53F530 != -1)
        {
          swift_once();
        }

        v37 = v105;
        v38 = __swift_project_value_buffer(v105, qword_27F544E38);
        (*v94)(v100, v38, v37);
        v108 = 0;
        v109 = 0xE000000000000000;
        sub_252E379F4();
        MEMORY[0x2530AD570](0xD000000000000034, v93 | 0x8000000000000000);
        v39 = 0;
        v40 = 0;
        if ((v29 & 1) == 0)
        {
          v39 = HomeAttributeType.description.getter(v28);
        }

        v106 = v39;
        v107 = v40;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
        v22 = sub_252E36F94();
        MEMORY[0x2530AD570](v22);

        v23 = v100;
        sub_252CC4050(v108, v109, 0xD000000000000078, v102 | 0x8000000000000000, 0xD000000000000012, v101 | 0x8000000000000000, 43);

        (*v92)(v23, v105);
        continue;
      }

      v103 = v32;
      v33 = [v1 clientContext];
      if (v33)
      {
        break;
      }

LABEL_19:
      if (qword_27F53F530 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v105, qword_27F544E38);
      v108 = 0;
      v109 = 0xE000000000000000;
      sub_252E379F4();

      v108 = 0xD000000000000023;
      v109 = v99;
      v106 = [v1 clientContext];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5445C8, &qword_252E54DB0);
      v41 = sub_252E36F94();
      MEMORY[0x2530AD570](v41);

      sub_252CC4050(v108, v109, 0xD000000000000078, v102 | 0x8000000000000000, 0xD000000000000012, v101 | 0x8000000000000000, 40);
    }

    v90 = v29;
    v97 = v28;
    v34 = v33;
    v35 = [v33 metricIdentifier];

    sub_252E36F34();
    v36 = v96;
    sub_252E32E14();

    if ((*v95)(v36, 1, v98) == 1)
    {

      sub_25293847C(v36, &unk_27F541F20, &qword_252E3C180);
      goto LABEL_19;
    }

    (*v87)(v88, v36, v98);
    v42 = objc_allocWithZone(MEMORY[0x277D5AC78]);
    v43 = sub_252E32E44();
    v44 = [v42 initWithNSUUID_];

    [v103 setHomeAutomationRequestId_];
    if (v30 >> 62)
    {
      break;
    }

    v45 = v97;
    if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_24;
    }

LABEL_35:
    v48 = 0;
LABEL_36:
    [v103 setHomeAutomationRequestType_];
    v51 = v89;
    v52 = sub_252C46EA0(v30);
    if (v52 >> 62)
    {
      v53 = sub_252E378C4();
    }

    else
    {
      v53 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    sub_252C77358(v53);
    v54 = sub_252C46EA0(v30);
    v89 = v51;

    if (v54 >> 62)
    {
      v55 = sub_252E378C4();
      if (v55)
      {
        goto LABEL_40;
      }
    }

    else
    {
      v55 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v55)
      {
LABEL_40:
        v56 = 0;
        v85 = v54 & 0xC000000000000001;
        v84 = v54 & 0xFFFFFFFFFFFFFF8;
        v57 = MEMORY[0x277D84F90];
        v83 = v1;
        v82 = v54;
        v81 = v55;
        while (1)
        {
          if (v85)
          {
            v58 = MEMORY[0x2530ADF00](v56, v54);
            v59 = v56 + 1;
            if (__OFADD__(v56, 1))
            {
              goto LABEL_71;
            }
          }

          else
          {
            if (v56 >= *(v84 + 16))
            {
              goto LABEL_72;
            }

            v58 = *(v54 + 8 * v56 + 32);

            v59 = v56 + 1;
            if (__OFADD__(v56, 1))
            {
              goto LABEL_71;
            }
          }

          i = v59;
          v60 = [*(v58 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) serviceType];
          v61 = sub_252E36F34();
          v63 = v62;

          if (qword_27F53F8B8 != -1)
          {
            swift_once();
          }

          v64 = off_27F546230;
          if (*(off_27F546230 + 2) && (v65 = sub_252A44A10(v61, v63), (v66 & 1) != 0))
          {
            v67 = *(v64[7] + 8 * v65);
          }

          else
          {
            v67 = 0;
          }

          v68 = HomeDeviceType.description.getter(v67);
          v70 = v69;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v57 = sub_2529F7A80(0, *(v57 + 2) + 1, 1, v57);
          }

          v72 = *(v57 + 2);
          v71 = *(v57 + 3);
          if (v72 >= v71 >> 1)
          {
            v57 = sub_2529F7A80((v71 > 1), v72 + 1, 1, v57);
          }

          *(v57 + 2) = v72 + 1;
          v73 = &v57[16 * v72];
          *(v73 + 4) = v68;
          *(v73 + 5) = v70;
          ++v56;
          v1 = v83;
          v45 = v97;
          v54 = v82;
          if (i == v81)
          {
            goto LABEL_62;
          }
        }
      }
    }

    v57 = MEMORY[0x277D84F90];
LABEL_62:

    v74 = sub_252AD4414(v57);

    sub_252C76E8C(v74);

    if (v90)
    {
      v75 = 0;
      v76 = 0;
    }

    else
    {
      v75 = HomeAttributeType.description.getter(v45);
      v76 = v77;
    }

    v78 = v103;
    sub_252C771A8(v75, v76);

    v79 = v78;
    MEMORY[0x2530AD700]();
    if (*((v110 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v110 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v80 = *((v110 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_252E372A4();
    }

    sub_252E372D4();

    (*v86)(v88, v98);
  }

  v50 = sub_252E378C4();
  v45 = v97;
  if (!v50)
  {
    goto LABEL_35;
  }

LABEL_24:
  if ((v30 & 0xC000000000000001) != 0)
  {
    v46 = MEMORY[0x2530ADF00](0, v30);
LABEL_27:
    v47 = v46;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {

      v48 = 8;
    }

    else
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {

        v48 = 7;
      }

      else
      {
        objc_opt_self();
        v49 = swift_dynamicCastObjCClass();

        if (v49)
        {
          v48 = 9;
        }

        else
        {
          v48 = 0;
        }
      }
    }

    goto LABEL_36;
  }

  if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v46 = *(v30 + 32);
    goto LABEL_27;
  }

LABEL_73:
  __break(1u);
}

void sub_252C47D2C(unint64_t *a1)
{
  v2 = *a1;
  v95 = *a1 >> 62;
  if (v95)
  {
    goto LABEL_148;
  }

  if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_149:
    if (qword_27F53F530 != -1)
    {
      swift_once();
    }

    v92 = sub_252E36AD4();
    __swift_project_value_buffer(v92, qword_27F544E38);
    sub_252CC4050(0xD000000000000024, 0x8000000252E8C770, 0xD000000000000078, 0x8000000252E8C6D0, 0xD000000000000018, 0x8000000252E8C7A0, 106);
    return;
  }

LABEL_3:
  v3 = [v1 entityResponses];
  if (v3)
  {
    v4 = v3;
    type metadata accessor for HomeEntityResponse();
    v1 = sub_252E37264();
  }

  else
  {
    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    v5 = sub_252E36AD4();
    __swift_project_value_buffer(v5, qword_27F544D60);
    v104 = 0;
    v105 = 0xE000000000000000;
    sub_252E379F4();

    v104 = 0xD00000000000002FLL;
    v105 = 0x8000000252E69700;
    v6 = v1;
    v7 = [v6 description];
    v8 = sub_252E36F34();
    v10 = v9;

    MEMORY[0x2530AD570](v8, v10);

    sub_252CC3D90(v104, v105, 0xD000000000000098, 0x8000000252E69730);

    v1 = MEMORY[0x277D84F90];
  }

  if (v1 >> 62)
  {
    v11 = sub_252E378C4();
  }

  else
  {
    v11 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v103 = v2;
  v12 = MEMORY[0x277D84F90];
  if (v11)
  {
    v13 = 0;
    v2 = v1 & 0xC000000000000001;
    do
    {
      v14 = v13;
      while (1)
      {
        if (v2)
        {
          v15 = MEMORY[0x2530ADF00](v14, v1);
        }

        else
        {
          if (v14 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_145;
          }

          v15 = *(v1 + 8 * v14 + 32);
        }

        v16 = v15;
        v13 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          goto LABEL_144;
        }

        v17 = [v15 taskResponses];
        if (v17)
        {
          break;
        }

        ++v14;
        if (v13 == v11)
        {
          goto LABEL_26;
        }
      }

      v18 = v17;
      type metadata accessor for HomeUserTaskResponse();
      v19 = sub_252E37264();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_2529F7BB4(0, v12[2] + 1, 1, v12);
      }

      v21 = v12[2];
      v20 = v12[3];
      if (v21 >= v20 >> 1)
      {
        v12 = sub_2529F7BB4((v20 > 1), v21 + 1, 1, v12);
      }

      v12[2] = v21 + 1;
      v12[v21 + 4] = v19;
    }

    while (v13 != v11);
  }

LABEL_26:

  v22 = sub_252C46BD4(v12);

  v23 = sub_252C4ABC4(v22);

  v24 = 0;
  v25 = v23 + 64;
  v96 = v23;
  v26 = 1 << *(v23 + 32);
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  else
  {
    v27 = -1;
  }

  v28 = v27 & *(v23 + 64);
  v29 = (v26 + 63) >> 6;
  v1 = v103;
  v93 = v29;
  v94 = v25;
LABEL_32:
  if (v28)
  {
    goto LABEL_37;
  }

  while (1)
  {
    v30 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      goto LABEL_141;
    }

    if (v30 >= v29)
    {
      break;
    }

    v28 = *(v25 + 8 * v30);
    ++v24;
    if (v28)
    {
      v24 = v30;
LABEL_37:
      v31 = __clz(__rbit64(v28)) | (v24 << 6);
      v32 = *(v96 + 48) + 16 * v31;
      v100 = *v32;
      v33 = *(v32 + 8);
      v34 = *(*(v96 + 56) + 8 * v31);
      if (v95)
      {
        v35 = sub_252E378C4();
      }

      else
      {
        v35 = *((v103 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v28 &= v28 - 1;
      v97 = v34;

      if (v35)
      {
        v2 = 0;
        do
        {
          if ((v103 & 0xC000000000000001) != 0)
          {
            v38 = MEMORY[0x2530ADF00](v2, v1);
          }

          else
          {
            if (v2 >= *((v103 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_140;
            }

            v38 = *(v1 + 8 * v2 + 32);
          }

          v39 = v38;
          v1 = v2 + 1;
          if (__OFADD__(v2, 1))
          {
            __break(1u);
LABEL_140:
            __break(1u);
LABEL_141:
            __break(1u);
            goto LABEL_142;
          }

          v40 = [v38 homeAutomationRequestMetadata];
          if (v40 && (v41 = v40, v42 = [v40 targetAttribute], v41, v42))
          {
            v43 = sub_252E36F34();
            v45 = v44;

            if (v33)
            {
              goto LABEL_58;
            }
          }

          else
          {
            v43 = 0;
            v45 = 0;
            if (v33)
            {
LABEL_58:
              if (!v45)
              {
                goto LABEL_63;
              }

LABEL_59:

              goto LABEL_44;
            }
          }

          v46 = HomeAttributeType.description.getter(v100);
          if (v45)
          {
            if (!v47)
            {
              goto LABEL_59;
            }

            if (v43 == v46 && v45 == v47)
            {

LABEL_63:
              v106[0] = MEMORY[0x277D84F90];
              v48 = v97;
              if (!(v97 >> 62))
              {
                v49 = *((v97 & 0xFFFFFFFFFFFFFF8) + 0x10);
                v101 = v49;
                if (!v49)
                {
                  goto LABEL_85;
                }

LABEL_65:
                v2 = 0;
                while (1)
                {
                  if ((v97 & 0xC000000000000001) != 0)
                  {
                    v50 = MEMORY[0x2530ADF00](v2, v97);
                  }

                  else
                  {
                    if (v2 >= *((v97 & 0xFFFFFFFFFFFFFF8) + 0x10))
                    {
                      goto LABEL_143;
                    }

                    v50 = *(v97 + 32 + 8 * v2);
                  }

                  v51 = v50;
                  v52 = __OFADD__(v2++, 1);
                  if (v52)
                  {
                    break;
                  }

                  if (qword_27F53F728 != -1)
                  {
                    swift_once();
                  }

                  v53 = qword_27F575C38;
                  v54 = [v51 taskOutcome];
                  if (!*(v53 + 16))
                  {
                    goto LABEL_66;
                  }

                  v55 = v54;
                  v56 = *(v53 + 40);
                  sub_252E37EC4();
                  MEMORY[0x2530AE390](v55);
                  v1 = &v104;
                  v57 = sub_252E37F14();
                  v58 = -1 << *(v53 + 32);
                  v59 = v57 & ~v58;
                  if ((*(v53 + 56 + ((v59 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v59))
                  {
                    v60 = ~v58;
                    while (*(*(v53 + 48) + 8 * v59) != v55)
                    {
                      v59 = (v59 + 1) & v60;
                      if (((*(v53 + 56 + ((v59 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v59) & 1) == 0)
                      {
                        goto LABEL_66;
                      }
                    }

                    v1 = v106;
                    sub_252E37A94();
                    v61 = *(v106[0] + 16);
                    sub_252E37AC4();
                    sub_252E37AD4();
                    sub_252E37AA4();
                  }

                  else
                  {
LABEL_66:
                  }

                  v49 = v101;
                  if (v2 == v101)
                  {
                    v62 = v106[0];
                    v48 = v97;
                    if ((v106[0] & 0x8000000000000000) == 0)
                    {
                      goto LABEL_86;
                    }

                    goto LABEL_131;
                  }
                }

LABEL_142:
                __break(1u);
LABEL_143:
                __break(1u);
LABEL_144:
                __break(1u);
LABEL_145:
                __break(1u);
LABEL_146:
                __break(1u);
LABEL_147:
                __break(1u);
LABEL_148:
                if (!sub_252E378C4())
                {
                  goto LABEL_149;
                }

                goto LABEL_3;
              }

              v49 = sub_252E378C4();
              v101 = v49;
              if (v49)
              {
                goto LABEL_65;
              }

LABEL_85:
              v62 = MEMORY[0x277D84F90];
              if ((MEMORY[0x277D84F90] & 0x8000000000000000) == 0)
              {
LABEL_86:
                if ((v62 & 0x4000000000000000) == 0)
                {
                  v63 = *(v62 + 16);
                  goto LABEL_88;
                }
              }

LABEL_131:
              v63 = sub_252E378C4();
LABEL_88:

              v1 = v39;
              sub_252C77A20(v63);
              if (v97 >> 62)
              {
                v64 = sub_252E378C4();
              }

              else
              {
                v64 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
              }

              if (v64 == v63)
              {
                [v39 setHomeAutomationRequestOutcome_];
              }

              else
              {
                if (v63)
                {
                  v65 = 3;
                }

                else
                {
                  v65 = 2;
                }

                [v39 setHomeAutomationRequestOutcome_];
              }

              if ([v39 homeAutomationRequestOutcome] == 1)
              {

LABEL_135:
                v1 = v103;
                goto LABEL_31;
              }

              v106[0] = MEMORY[0x277D84F90];
              if (v49)
              {
                v2 = 0;
                v98 = v48 & 0xC000000000000001;
                v66 = v48 & 0xFFFFFFFFFFFFFF8;
                v67 = v48 + 32;
                while (1)
                {
                  if (v98)
                  {
                    v68 = MEMORY[0x2530ADF00](v2, v97);
                  }

                  else
                  {
                    if (v2 >= *(v66 + 16))
                    {
                      goto LABEL_147;
                    }

                    v68 = *(v67 + 8 * v2);
                  }

                  v69 = v68;
                  v52 = __OFADD__(v2++, 1);
                  if (v52)
                  {
                    goto LABEL_146;
                  }

                  if (qword_27F53F730 != -1)
                  {
                    swift_once();
                  }

                  v70 = qword_27F575C40;
                  v71 = [v69 taskOutcome];
                  if (!*(v70 + 16))
                  {
                    goto LABEL_101;
                  }

                  v72 = v71;
                  v73 = *(v70 + 40);
                  sub_252E37EC4();
                  MEMORY[0x2530AE390](v72);
                  v1 = &v104;
                  v74 = sub_252E37F14();
                  v75 = -1 << *(v70 + 32);
                  v76 = v74 & ~v75;
                  if ((*(v70 + 56 + ((v76 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v76))
                  {
                    v77 = ~v75;
                    while (*(*(v70 + 48) + 8 * v76) != v72)
                    {
                      v76 = (v76 + 1) & v77;
                      if (((*(v70 + 56 + ((v76 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v76) & 1) == 0)
                      {
                        goto LABEL_101;
                      }
                    }

                    v1 = v106;
                    sub_252E37A94();
                    v78 = *(v106[0] + 16);
                    sub_252E37AC4();
                    sub_252E37AD4();
                    sub_252E37AA4();
                  }

                  else
                  {
LABEL_101:
                  }

                  if (v2 == v101)
                  {
                    v79 = v106[0];
                    goto LABEL_119;
                  }
                }
              }

              v79 = MEMORY[0x277D84F90];
LABEL_119:

              if (v79 < 0 || (v79 & 0x4000000000000000) != 0)
              {
                v80 = sub_252E378C4();
                if (!v80)
                {
                  goto LABEL_133;
                }

LABEL_122:
                v104 = MEMORY[0x277D84F90];
                sub_2529AA3A0(0, v80 & ~(v80 >> 63), 0);
                if (v80 < 0)
                {
                  __break(1u);
                  return;
                }

                v2 = 0;
                v81 = v104;
                v82 = v79;
                v99 = v79 & 0xC000000000000001;
                v102 = v79;
                do
                {
                  if (v99)
                  {
                    v83 = MEMORY[0x2530ADF00](v2, v82);
                  }

                  else
                  {
                    v83 = *(v82 + 8 * v2 + 32);
                  }

                  v84 = v83;
                  v85 = sub_252B9ACF0([v83 taskOutcome]);
                  v87 = v86;

                  v104 = v81;
                  v89 = *(v81 + 16);
                  v88 = *(v81 + 24);
                  if (v89 >= v88 >> 1)
                  {
                    sub_2529AA3A0((v88 > 1), v89 + 1, 1);
                    v81 = v104;
                  }

                  ++v2;
                  *(v81 + 16) = v89 + 1;
                  v90 = v81 + 16 * v89;
                  *(v90 + 32) = v85;
                  *(v90 + 40) = v87;
                  v82 = v102;
                }

                while (v80 != v2);
              }

              else
              {
                v80 = *(v79 + 16);
                if (v80)
                {
                  goto LABEL_122;
                }

LABEL_133:

                v81 = MEMORY[0x277D84F90];
              }

              sub_252AD4414(v81);

              v91 = sub_252E37254();

              [v39 setHomeAutomationRequestErrorReasons_];

              goto LABEL_135;
            }

            v36 = sub_252E37DB4();

            if (v36)
            {
              goto LABEL_63;
            }
          }

          else
          {
            if (!v47)
            {
              goto LABEL_63;
            }
          }

LABEL_44:
          ++v2;
          v37 = v1 == v35;
          v1 = v103;
        }

        while (!v37);
      }

LABEL_31:
      v29 = v93;
      v25 = v94;
      goto LABEL_32;
    }
  }
}

id sub_252C488D8(void **a1)
{
  v2 = v1;
  v149 = sub_252E32E84();
  v157 = *(v149 - 8);
  v4 = *(v157 + 64);
  MEMORY[0x28223BE20](v149);
  v148 = &v136 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *a1;
  v137 = 0;
  sub_25293F638(0, &qword_27F5418B8, 0x277D57580);
  v7 = sub_252E37254();
  v150 = v6;
  [v6 setHomeAutomationRequests_];

  if (qword_27F53F530 != -1)
  {
    goto LABEL_41;
  }

  while (1)
  {
    v158 = sub_252E36AD4();
    v8 = __swift_project_value_buffer(v158, qword_27F544E38);
    *&v161 = 0;
    *(&v161 + 1) = 0xE000000000000000;
    sub_252E379F4();
    v170 = v161;
    MEMORY[0x2530AD570](0xD000000000000017, 0x8000000252E8C6B0);
    v9 = *(v2 + 112);
    v167 = *(v2 + 96);
    v168 = v9;
    v169 = *(v2 + 128);
    v10 = *(v2 + 48);
    v163 = *(v2 + 32);
    v164 = v10;
    v11 = *(v2 + 80);
    v165 = *(v2 + 64);
    v166 = v11;
    v12 = *(v2 + 16);
    v161 = *v2;
    v162 = v12;
    sub_252E37AE4();
    v143 = "Enriching command with ";
    v144 = v8;
    sub_252CC3D90(v170, *(&v170 + 1), 0xD000000000000078, 0x8000000252E8C6D0);

    v13 = sub_252B4F670();
    v14 = [v13 entityResponses];
    v159 = v2;
    if (v14)
    {
      v15 = v14;
      type metadata accessor for HomeEntityResponse();
      v16 = sub_252E37264();

      if (!(v16 >> 62))
      {
        goto LABEL_4;
      }
    }

    else
    {
      if (qword_27F53F4E8 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v158, qword_27F544D60);
      *&v161 = 0;
      *(&v161 + 1) = 0xE000000000000000;
      sub_252E379F4();

      *&v161 = 0xD00000000000002FLL;
      *(&v161 + 1) = 0x8000000252E69700;
      v36 = v13;
      v37 = [v36 description];
      v38 = sub_252E36F34();
      v40 = v39;

      MEMORY[0x2530AD570](v38, v40);

      sub_252CC3D90(v161, *(&v161 + 1), 0xD000000000000098, 0x8000000252E69730);

      v16 = MEMORY[0x277D84F90];
      if (!(MEMORY[0x277D84F90] >> 62))
      {
LABEL_4:
        v153 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_5;
      }
    }

    v153 = sub_252E378C4();
LABEL_5:

    v17 = sub_252B4F670();
    v18 = sub_252C2C640();

    if (!(v18 >> 62))
    {
      v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v19)
      {
        break;
      }

      goto LABEL_7;
    }

    v19 = sub_252E378C4();
    if (!v19)
    {
      break;
    }

LABEL_7:
    v2 = 0;
    v160 = v18 & 0xC000000000000001;
    v20 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v160)
      {
        v21 = MEMORY[0x2530ADF00](v2, v18);
      }

      else
      {
        if (v2 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_36;
        }

        v21 = *(v18 + 8 * v2 + 32);
      }

      v22 = v21;
      v23 = (v2 + 1);
      if (__OFADD__(v2, 1))
      {
        break;
      }

      v24 = [v21 deviceTypes];
      if (v24)
      {
        v25 = v24;
        v26 = sub_252E37264();

        v22 = v25;
      }

      else
      {
        v26 = MEMORY[0x277D84F90];
      }

      v27 = *(v26 + 16);
      v28 = *(v20 + 2);
      v29 = v28 + v27;
      if (__OFADD__(v28, v27))
      {
        goto LABEL_37;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v29 <= *(v20 + 3) >> 1)
      {
        if (*(v26 + 16))
        {
          goto LABEL_26;
        }
      }

      else
      {
        if (v28 <= v29)
        {
          v31 = v28 + v27;
        }

        else
        {
          v31 = v28;
        }

        v20 = sub_2529F8104(isUniquelyReferenced_nonNull_native, v31, 1, v20);
        if (*(v26 + 16))
        {
LABEL_26:
          v32 = *(v20 + 2);
          if ((*(v20 + 3) >> 1) - v32 < v27)
          {
            goto LABEL_39;
          }

          memcpy(&v20[8 * v32 + 32], (v26 + 32), 8 * v27);

          if (v27)
          {
            v33 = *(v20 + 2);
            v34 = __OFADD__(v33, v27);
            v35 = v33 + v27;
            if (v34)
            {
              goto LABEL_40;
            }

            *(v20 + 2) = v35;
          }

          goto LABEL_9;
        }
      }

      if (v27)
      {
        goto LABEL_38;
      }

LABEL_9:
      ++v2;
      if (v23 == v19)
      {
        goto LABEL_44;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    swift_once();
  }

  v20 = MEMORY[0x277D84F90];
LABEL_44:

  v41 = *(v20 + 2);
  v42 = MEMORY[0x277D84F90];
  if (v41)
  {
    v43 = (v20 + 32);
    v155 = MEMORY[0x277D84F90];
    do
    {
      v45 = *v43++;
      v46 = sub_252E25FC4(v45);
      if ((v47 & 1) == 0)
      {
        v48 = v46;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v155 = sub_2529F7B8C(0, *(v155 + 2) + 1, 1, v155);
        }

        v50 = *(v155 + 2);
        v49 = *(v155 + 3);
        if (v50 >= v49 >> 1)
        {
          v155 = sub_2529F7B8C((v49 > 1), v50 + 1, 1, v155);
        }

        v44 = v155;
        *(v155 + 2) = v50 + 1;
        *&v44[8 * v50 + 32] = v48;
      }

      --v41;
    }

    while (v41);
  }

  else
  {
    v155 = MEMORY[0x277D84F90];
  }

  v51 = sub_252B4F670();
  v52 = [v51 entityResponses];
  if (v52)
  {
    v53 = v52;
    type metadata accessor for HomeEntityResponse();
    v54 = sub_252E37264();

    v55 = v137;
    v56 = sub_252B1F554(v54);
    v137 = v55;
  }

  else
  {
    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v158, qword_27F544D60);
    *&v161 = 0;
    *(&v161 + 1) = 0xE000000000000000;
    sub_252E379F4();

    *&v161 = 0xD00000000000002FLL;
    *(&v161 + 1) = 0x8000000252E69700;
    v57 = v51;
    v58 = [v57 description];
    v59 = sub_252E36F34();
    v61 = v60;

    MEMORY[0x2530AD570](v59, v61);

    sub_252CC3D90(v161, *(&v161 + 1), 0xD000000000000098, 0x8000000252E69730);

    v56 = MEMORY[0x277D84F90];
  }

  *&v161 = v42;
  v62 = v56 & 0xFFFFFFFFFFFFFF8;
  if (v56 >> 62)
  {
LABEL_163:
    v63 = sub_252E378C4();
  }

  else
  {
    v63 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v64 = 0;
  v160 = v56 & 0xC000000000000001;
  v65 = MEMORY[0x277D84F90];
  while (v63 != v64)
  {
    if (v160)
    {
      v66 = MEMORY[0x2530ADF00](v64, v56);
    }

    else
    {
      if (v64 >= *(v62 + 16))
      {
        goto LABEL_160;
      }

      v66 = *(v56 + 8 * v64 + 32);
    }

    v67 = v66;
    v68 = v64 + 1;
    if (__OFADD__(v64, 1))
    {
LABEL_159:
      __break(1u);
LABEL_160:
      __break(1u);
LABEL_161:
      __break(1u);
LABEL_162:
      __break(1u);
      goto LABEL_163;
    }

    v69 = [v66 userTask];

    ++v64;
    if (v69)
    {
      MEMORY[0x2530AD700]();
      if (*((v161 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v161 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v70 = *((v161 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_252E372A4();
      }

      sub_252E372D4();
      v65 = v161;
      v64 = v68;
    }
  }

  v71 = sub_252DF9B64(v65);

  if (v71 >> 62)
  {
    v72 = sub_252E378C4();
    if (!v72)
    {
      goto LABEL_165;
    }

LABEL_74:
    v73 = 0;
    v151 = v71 & 0xC000000000000001;
    v141 = v71 & 0xFFFFFFFFFFFFFF8;
    v140 = v71 + 32;
    v147 = (v157 + 8);
    v142 = v155 + 32;
    v139 = "ry home\n    originalHomes: ";
    v138 = "tchRequest+Metrics.swift";
    v157 = v56;
    v156 = v62;
    v158 = v63;
    v146 = v71;
    v145 = v72;
    while (1)
    {
      if (v151)
      {
        v77 = MEMORY[0x2530ADF00](v73, v71);
      }

      else
      {
        if (v73 >= *(v141 + 16))
        {
          goto LABEL_162;
        }

        v77 = *(v140 + 8 * v73);
      }

      v76 = v77;
      v34 = __OFADD__(v73++, 1);
      if (v34)
      {
        goto LABEL_161;
      }

      v154 = [objc_allocWithZone(MEMORY[0x277D57580]) init];
      if (!v154)
      {
        sub_252CC4050(0xD000000000000025, v139 | 0x8000000000000000, 0xD000000000000078, v143 | 0x8000000000000000, 0xD000000000000017, v138 | 0x8000000000000000, 153);
        goto LABEL_76;
      }

      v159 = v76;
      v152 = v73;
      v78 = MEMORY[0x277D84F90];
      *&v161 = MEMORY[0x277D84F90];
      if (v63)
      {
        v79 = 0;
        while (1)
        {
          if (v160)
          {
            v80 = MEMORY[0x2530ADF00](v79, v56);
          }

          else
          {
            if (v79 >= *(v62 + 16))
            {
              goto LABEL_154;
            }

            v80 = *(v56 + 8 * v79 + 32);
          }

          v81 = v80;
          v82 = v79 + 1;
          if (__OFADD__(v79, 1))
          {
            break;
          }

          v83 = [v80 userTask];
          if (v83 && (v84 = v83, type metadata accessor for HomeUserTask(), v85 = v159, v86 = sub_252E37694(), v85, v84, (v86 & 1) != 0) && [v81 taskOutcome] == 1)
          {
            sub_252E37A94();
            v87 = *(v161 + 16);
            sub_252E37AC4();
            sub_252E37AD4();
            sub_252E37AA4();
          }

          else
          {
          }

          ++v79;
          if (v82 == v63)
          {
            v78 = v161;
            goto LABEL_97;
          }
        }

        __break(1u);
LABEL_154:
        __break(1u);
LABEL_155:
        __break(1u);
LABEL_156:
        __break(1u);
LABEL_157:
        __break(1u);
LABEL_158:
        __break(1u);
        goto LABEL_159;
      }

LABEL_97:
      if (v78 < 0 || (v78 & 0x4000000000000000) != 0)
      {
        v88 = sub_252E378C4();
      }

      else
      {
        v88 = *(v78 + 16);
      }

      v89 = v148;
      sub_252E32E74();
      v90 = objc_allocWithZone(MEMORY[0x277D5AC78]);
      v91 = sub_252E32E44();
      v92 = [v90 initWithNSUUID_];

      (*v147)(v89, v149);
      v93 = v154;
      [v154 setHomeAutomationRequestId_];

      if ([v159 taskType] == 4)
      {
        v94 = 7;
      }

      else
      {
        v94 = 8;
      }

      [v93 setHomeAutomationRequestType_];
      sub_252C77D64(1);
      sub_252C77358(v153);
      v95 = *(v155 + 2);
      if (v95)
      {
        v96 = v142;
        v97 = MEMORY[0x277D84F90];
        do
        {
          v98 = *v96++;
          v99 = HomeDeviceType.description.getter(v98);
          v101 = v100;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v97 = sub_2529F7A80(0, *(v97 + 2) + 1, 1, v97);
          }

          v103 = *(v97 + 2);
          v102 = *(v97 + 3);
          if (v103 >= v102 >> 1)
          {
            v97 = sub_2529F7A80((v102 > 1), v103 + 1, 1, v97);
          }

          *(v97 + 2) = v103 + 1;
          v104 = &v97[16 * v103];
          *(v104 + 4) = v99;
          *(v104 + 5) = v101;
          --v95;
        }

        while (v95);
      }

      else
      {
        v97 = MEMORY[0x277D84F90];
      }

      v105 = sub_252AD4414(v97);

      v106 = v154;
      sub_252C76E8C(v105);

      v107 = HomeAttributeType.description.getter([v159 attribute]);
      v109 = sub_252AD41C0(v107, v108);
      v111 = v110;

      sub_252C771A8(v109, v111);

      sub_252C77A20(v88);
      if (v153 == v88)
      {
        [v106 setHomeAutomationRequestOutcome_];
        v63 = v158;
      }

      else
      {
        v63 = v158;
        if (v88)
        {
          v112 = 3;
        }

        else
        {
          v112 = 2;
        }

        [v154 setHomeAutomationRequestOutcome_];
      }

      v113 = MEMORY[0x277D84F90];
      *&v161 = MEMORY[0x277D84F90];
      if (v63)
      {
        v114 = 0;
        while (1)
        {
          if (v160)
          {
            v115 = MEMORY[0x2530ADF00](v114, v56);
          }

          else
          {
            if (v114 >= *(v62 + 16))
            {
              goto LABEL_156;
            }

            v115 = *(v56 + 8 * v114 + 32);
          }

          v116 = v115;
          v117 = v114 + 1;
          if (__OFADD__(v114, 1))
          {
            goto LABEL_155;
          }

          v118 = [v115 userTask];
          if (v118 && (v119 = v118, type metadata accessor for HomeUserTask(), v120 = v159, v121 = sub_252E37694(), v120, v119, (v121 & 1) != 0) && [v116 taskOutcome] != 1)
          {
            sub_252E37A94();
            v122 = *(v161 + 16);
            sub_252E37AC4();
            sub_252E37AD4();
            sub_252E37AA4();
          }

          else
          {
          }

          ++v114;
          if (v117 == v63)
          {
            v123 = v161;
            v113 = MEMORY[0x277D84F90];
            if ((v161 & 0x8000000000000000) == 0)
            {
              goto LABEL_135;
            }

            goto LABEL_151;
          }
        }
      }

      v123 = MEMORY[0x277D84F90];
      if ((MEMORY[0x277D84F90] & 0x8000000000000000) != 0)
      {
        break;
      }

LABEL_135:

      v124 = *(v123 + 16);
      if (v124)
      {
        goto LABEL_137;
      }

LABEL_75:

      sub_252AD4414(v113);

      v74 = sub_252E37254();

      v75 = v154;
      [v154 setHomeAutomationRequestErrorReasons_];

      v76 = v75;
      sub_252C77EC4(v75);

      v71 = v146;
      v72 = v145;
      v73 = v152;
LABEL_76:

      if (v73 == v72)
      {
        goto LABEL_165;
      }
    }

LABEL_151:
    v124 = sub_252E378C4();
    if (v124)
    {
LABEL_137:
      v125 = 0;
      while (1)
      {
        if ((v123 & 0xC000000000000001) != 0)
        {
          v126 = MEMORY[0x2530ADF00](v125, v123);
        }

        else
        {
          if (v125 >= *(v123 + 16))
          {
            goto LABEL_158;
          }

          v126 = *(v123 + 8 * v125 + 32);
        }

        v127 = v126;
        v56 = v125 + 1;
        if (__OFADD__(v125, 1))
        {
          goto LABEL_157;
        }

        v128 = sub_252B9ACF0([v126 taskOutcome]);
        v130 = v129;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v113 = sub_2529F7A80(0, *(v113 + 2) + 1, 1, v113);
        }

        v132 = *(v113 + 2);
        v131 = *(v113 + 3);
        if (v132 >= v131 >> 1)
        {
          v113 = sub_2529F7A80((v131 > 1), v132 + 1, 1, v113);
        }

        *(v113 + 2) = v132 + 1;
        v133 = &v113[16 * v132];
        *(v133 + 4) = v128;
        *(v133 + 5) = v130;
        ++v125;
        v134 = v56 == v124;
        v56 = v157;
        v62 = v156;
        v63 = v158;
        if (v134)
        {
          goto LABEL_75;
        }
      }
    }

    goto LABEL_75;
  }

  v72 = *((v71 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v72)
  {
    goto LABEL_74;
  }

LABEL_165:

  return sub_252DB559C();
}

uint64_t sub_252C49A20()
{
  v1 = v0;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5445D0, &qword_252E54DB8);
  v2 = *(*(v112 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v112);
  v109 = &v95 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v108 = &v95 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541F20, &qword_252E3C180);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = (&v95 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v95 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v95 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = (&v95 - v18);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v95 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v95 - v23;
  v25 = sub_252E32E84();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  v29 = &v95 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  v114 = v1;
  v30 = swift_dynamicCastObjCClass();
  if (v30)
  {
    v31 = v30;
    type metadata accessor for HomeStore();
    v32 = v114;
    v33 = static HomeStore.shared.getter();
    v34 = [v31 actionSet];
    v35 = [v34 uniqueIdentifier];

    sub_252E32E64();
    v36 = sub_252E32E24();
    v38 = v37;
    (*(v26 + 8))(v29, v25);
    v39 = sub_2529F53FC(v36, v38);
    v41 = v40;

    if (v41)
    {
      sub_252956C8C(v39, 1);
    }

    else
    {
LABEL_25:
      if (v39)
      {

        v70 = sub_252B2F470();
        sub_252956C8C(v39, 0);
        sub_252956C8C(v39, 0);

        return v70;
      }
    }

    return MEMORY[0x277D84F90];
  }

  v98 = v26;
  v99 = v29;
  v110 = v22;
  v111 = v24;
  v105 = v19;
  v42 = v16;
  v113 = v13;
  objc_opt_self();
  v106 = swift_dynamicCastObjCClass();
  if (v106)
  {
    type metadata accessor for HomeStore();
    v43 = v114;
    v39 = static HomeStore.shared.getter();
    v32 = sub_2529D9D50();
    v44 = sub_2529D70E4(v32);

    v107 = v44;
    v109 = v25;
    v95 = v43;
    if (v44 >> 62)
    {
      goto LABEL_57;
    }

    v45 = *((v107 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v46 = v111;
    if (v45)
    {
      while (1)
      {
        v47 = 0;
        v103 = v107 & 0xFFFFFFFFFFFFFF8;
        v104 = v107 & 0xC000000000000001;
        v48 = (v98 + 2);
        v114 = v98 + 7;
        v49 = (v98 + 6);
        v96 = (v98 + 4);
        ++v98;
        v100 = v45;
        v101 = v49;
        v102 = v48;
        while (v104)
        {
          v53 = MEMORY[0x2530ADF00](v47, v107);
          v54 = v47 + 1;
          if (__OFADD__(v47, 1))
          {
LABEL_24:
            __break(1u);
            goto LABEL_25;
          }

LABEL_14:
          v55 = *v102;
          v113 = v53;
          v56 = v109;
          v55(v46, v53 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v109);
          v57 = *v114;
          v58 = 1;
          (*v114)(v46, 0, 1, v56);
          v59 = [v106 characteristic];
          v60 = [v59 service];

          if (v60)
          {
            v61 = [v60 uniqueIdentifier];

            v62 = v110;
            sub_252E32E64();

            v58 = 0;
            v63 = v112;
            v64 = v105;
          }

          else
          {
            v63 = v112;
            v64 = v105;
            v62 = v110;
          }

          v57(v62, v58, 1, v56);
          v65 = *(v63 + 48);
          v46 = v111;
          v32 = v108;
          sub_252C4AE84(v111, v108);
          sub_252C4AE84(v62, v32 + v65);
          v39 = *v101;
          if ((*v101)(v32, 1, v56) == 1)
          {
            sub_25293847C(v62, &unk_27F541F20, &qword_252E3C180);
            sub_25293847C(v46, &unk_27F541F20, &qword_252E3C180);
            v50 = (v39)(v32 + v65, 1, v56) == 1;
            v51 = v32;
            if (v50)
            {
              sub_25293847C(v32, &unk_27F541F20, &qword_252E3C180);
              v69 = v113;
LABEL_52:
              v92 = v69;

              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
              v93 = swift_allocObject();
              *(v93 + 16) = xmmword_252E3C130;
              *(v93 + 32) = v92;

              return v93;
            }

            goto LABEL_9;
          }

          sub_252C4AE84(v32, v64);
          if ((v39)(v32 + v65, 1, v56) == 1)
          {
            v39 = &qword_252E3C180;
            sub_25293847C(v62, &unk_27F541F20, &qword_252E3C180);
            sub_25293847C(v46, &unk_27F541F20, &qword_252E3C180);
            (*v98)(v64, v56);
            v51 = v32;
LABEL_9:
            sub_25293847C(v51, &qword_27F5445D0, &qword_252E54DB8);
            goto LABEL_10;
          }

          v66 = v99;
          (*v96)(v99, v32 + v65, v56);
          sub_252C4AEF4();
          LODWORD(v97) = sub_252E36EF4();
          v67 = *v98;
          v68 = v66;
          v46 = v111;
          (*v98)(v68, v56);
          v39 = &qword_252E3C180;
          sub_25293847C(v110, &unk_27F541F20, &qword_252E3C180);
          sub_25293847C(v46, &unk_27F541F20, &qword_252E3C180);
          v67(v64, v56);
          sub_25293847C(v32, &unk_27F541F20, &qword_252E3C180);
          v69 = v113;
          if (v97)
          {
            goto LABEL_52;
          }

LABEL_10:

          ++v47;
          if (v54 == v100)
          {
            goto LABEL_58;
          }
        }

        if (v47 < *(v103 + 16))
        {
          break;
        }

        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        v45 = sub_252E378C4();
        v46 = v111;
        if (!v45)
        {
          goto LABEL_58;
        }
      }

      v52 = *(v107 + 8 * v47 + 32);

      v54 = v47 + 1;
      if (__OFADD__(v47, 1))
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

LABEL_58:

    goto LABEL_59;
  }

  objc_opt_self();
  v110 = swift_dynamicCastObjCClass();
  if (!v110)
  {
    return MEMORY[0x277D84F90];
  }

  v102 = v10;
  type metadata accessor for HomeStore();
  v97 = v114;
  v72 = static HomeStore.shared.getter();
  v73 = sub_2529D9D50();
  v74 = sub_2529D70E4(v73);

  v111 = v74;
  if (v74 >> 62)
  {
    v39 = sub_252E378C4();
  }

  else
  {
    v39 = *((v111 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v32 = v109;
  v75 = v98;
  if (!v39)
  {
LABEL_50:

LABEL_59:

    return MEMORY[0x277D84F90];
  }

  v76 = 0;
  v107 = v111 & 0xFFFFFFFFFFFFFF8;
  v108 = v111 & 0xC000000000000001;
  v114 = v98 + 7;
  v98 += 4;
  v101 = (v75 + 1);
  v103 = v42;
  v104 = v39;
  v109 = v25;
  v105 = (v75 + 6);
  v106 = (v75 + 2);
  while (1)
  {
    if (v108)
    {
      v77 = MEMORY[0x2530ADF00](v76, v111);
      v78 = v76 + 1;
      if (__OFADD__(v76, 1))
      {
        goto LABEL_49;
      }
    }

    else
    {
      if (v76 >= *(v107 + 16))
      {
        goto LABEL_56;
      }

      v77 = *(v111 + 8 * v76 + 32);

      v78 = v76 + 1;
      if (__OFADD__(v76, 1))
      {
LABEL_49:
        __break(1u);
        goto LABEL_50;
      }
    }

    (*v106)(v42, v77 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v25);
    v79 = *v114;
    v80 = 1;
    (*v114)(v42, 0, 1, v25);
    v81 = [v110 characteristic];
    v82 = [v81 service];

    if (v82)
    {
      v83 = [v82 uniqueIdentifier];

      v84 = v113;
      sub_252E32E64();

      v80 = 0;
    }

    else
    {
      v84 = v113;
    }

    v79(v84, v80, 1, v25);
    v85 = *(v112 + 48);
    sub_252C4AE84(v42, v32);
    sub_252C4AE84(v84, v32 + v85);
    v86 = v84;
    v87 = *v105;
    if ((*v105)(v32, 1, v25) == 1)
    {
      break;
    }

    v88 = v102;
    sub_252C4AE84(v32, v102);
    v89 = v87(v32 + v85, 1, v25);
    v90 = v99;
    if (v89 == 1)
    {
      sub_25293847C(v113, &unk_27F541F20, &qword_252E3C180);
      sub_25293847C(v42, &unk_27F541F20, &qword_252E3C180);
      (*v101)(v88, v25);
      goto LABEL_34;
    }

    (*v98)(v99, v32 + v85, v25);
    sub_252C4AEF4();
    LODWORD(v100) = sub_252E36EF4();
    v91 = *v101;
    (*v101)(v90, v25);
    sub_25293847C(v113, &unk_27F541F20, &qword_252E3C180);
    v25 = v109;
    sub_25293847C(v42, &unk_27F541F20, &qword_252E3C180);
    (v91)(v88, v25);
    sub_25293847C(v32, &unk_27F541F20, &qword_252E3C180);
    if (v100)
    {
      goto LABEL_54;
    }

LABEL_35:

    ++v76;
    v42 = v103;
    v39 = v104;
    if (v78 == v104)
    {
      goto LABEL_50;
    }
  }

  sub_25293847C(v86, &unk_27F541F20, &qword_252E3C180);
  v25 = v109;
  sub_25293847C(v42, &unk_27F541F20, &qword_252E3C180);
  if (v87(v32 + v85, 1, v25) != 1)
  {
LABEL_34:
    sub_25293847C(v32, &qword_27F5445D0, &qword_252E54DB8);
    goto LABEL_35;
  }

  sub_25293847C(v32, &unk_27F541F20, &qword_252E3C180);
LABEL_54:

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
  v94 = swift_allocObject();
  *(v94 + 16) = xmmword_252E3C130;
  *(v94 + 32) = v77;

  return v94;
}

uint64_t sub_252C4A750(unint64_t a1)
{
  v41 = MEMORY[0x277D84F98];
  if (!(a1 >> 62))
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

    return MEMORY[0x277D84F98];
  }

LABEL_43:
  v2 = sub_252E378C4();
  if (!v2)
  {
    return MEMORY[0x277D84F98];
  }

LABEL_3:
  v3 = 0;
  v4 = MEMORY[0x277D84F98];
  v40 = v2;
  while (1)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x2530ADF00](v3, a1);
    }

    else
    {
      if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_40;
      }

      v7 = *(a1 + 8 * v3 + 32);
    }

    v8 = v7;
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v10 = 0;
      v11 = 1;
    }

    else
    {
      objc_opt_self();
      v12 = swift_dynamicCastObjCClass();
      if (v12 || (objc_opt_self(), (v12 = swift_dynamicCastObjCClass()) != 0))
      {
        v13 = v12;
        v14 = v8;
        v15 = [v13 characteristic];
        v16 = [v15 characteristicType];

        v17 = sub_252E36F34();
        v19 = v18;

        if (qword_27F53F8D0 != -1)
        {
          swift_once();
        }

        v20 = off_27F546248;
        if (*(off_27F546248 + 2))
        {
          v21 = sub_252A44A10(v17, v19);
          if (v22)
          {
            goto LABEL_28;
          }
        }

        if (qword_27F53F8E0 != -1)
        {
          swift_once();
        }

        v20 = off_27F546258;
        if (*(off_27F546258 + 2))
        {
          v21 = sub_252A44A10(v17, v19);
          if (v23)
          {
            goto LABEL_28;
          }
        }

        if (qword_27F53F8C8 != -1)
        {
          swift_once();
        }

        v20 = off_27F546240;
        if (*(off_27F546240 + 2) && (v21 = sub_252A44A10(v17, v19), (v24 & 1) != 0))
        {
LABEL_28:
          v11 = *(v20[7] + 8 * v21);
        }

        else
        {
          v11 = 0;
        }

        v10 = 0;
      }

      else
      {
        v11 = 0;
        v10 = 1;
      }
    }

    v25 = sub_252A4575C(v11, v10);
    v27 = v4[2];
    v28 = (v26 & 1) == 0;
    v29 = __OFADD__(v27, v28);
    v30 = v27 + v28;
    if (v29)
    {
      goto LABEL_41;
    }

    v31 = v26;
    if (v4[3] < v30)
    {
      sub_252E00974(v30, 1);
      v4 = v41;
      v25 = sub_252A4575C(v11, v10);
      if ((v31 & 1) != (v32 & 1))
      {
        break;
      }
    }

    if (v31)
    {
      v5 = (v4[7] + 8 * v25);
      MEMORY[0x2530AD700]();
      v6 = v40;
      if (*((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v38 = *((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_252E372A4();
      }

      sub_252E372D4();
    }

    else
    {
      v33 = v25;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
      v34 = swift_allocObject();
      *(v34 + 16) = xmmword_252E3C130;
      *(v34 + 32) = v8;
      v4[(v33 >> 6) + 8] |= 1 << v33;
      v35 = v4[6] + 16 * v33;
      *v35 = v11;
      *(v35 + 8) = v10;
      *(v4[7] + 8 * v33) = v34;
      v36 = v4[2];
      v29 = __OFADD__(v36, 1);
      v37 = v36 + 1;
      if (v29)
      {
        goto LABEL_42;
      }

      v4[2] = v37;
      v6 = v40;
    }

    ++v3;
    if (v9 == v6)
    {
      return v4;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540728, qword_252E4B870);
  result = sub_252E37E24();
  __break(1u);
  return result;
}

uint64_t sub_252C4ABC4(unint64_t a1)
{
  v1 = a1;
  v31 = MEMORY[0x277D84F98];
  if (!(a1 >> 62))
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

    return MEMORY[0x277D84F98];
  }

LABEL_26:
  v2 = sub_252E378C4();
  if (!v2)
  {
    return MEMORY[0x277D84F98];
  }

LABEL_3:
  v3 = 0;
  v29 = v1 & 0xFFFFFFFFFFFFFF8;
  v30 = v1 & 0xC000000000000001;
  v4 = MEMORY[0x277D84F98];
  v27 = v2;
  v28 = v1;
  while (1)
  {
    if (v30)
    {
      v7 = MEMORY[0x2530ADF00](v3, v1);
    }

    else
    {
      if (v3 >= *(v29 + 16))
      {
        goto LABEL_23;
      }

      v7 = *(v1 + 8 * v3 + 32);
    }

    v8 = v7;
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    v10 = [v7 userTask];
    v11 = v10;
    if (v10)
    {
      v12 = [v10 attribute];
    }

    else
    {
      v12 = 0;
    }

    v1 = v11 == 0;
    v13 = sub_252A4575C(v12, v11 == 0);
    v15 = v4[2];
    v16 = (v14 & 1) == 0;
    v17 = __OFADD__(v15, v16);
    v18 = v15 + v16;
    if (v17)
    {
      goto LABEL_24;
    }

    v19 = v14;
    if (v4[3] < v18)
    {
      sub_252E00988(v18, 1);
      v4 = v31;
      v13 = sub_252A4575C(v12, v11 == 0);
      if ((v19 & 1) != (v20 & 1))
      {
        break;
      }
    }

    if (v19)
    {
      v5 = (v4[7] + 8 * v13);
      MEMORY[0x2530AD700]();
      v6 = v27;
      v1 = v28;
      if (*((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v25 = *((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_252E372A4();
      }

      sub_252E372D4();
    }

    else
    {
      v1 = v13;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_252E3C130;
      *(v21 + 32) = v8;
      v4[(v1 >> 6) + 8] |= 1 << v1;
      v22 = v4[6] + 16 * v1;
      *v22 = v12;
      *(v22 + 8) = v11 == 0;
      *(v4[7] + 8 * v1) = v21;
      v23 = v4[2];
      v17 = __OFADD__(v23, 1);
      v24 = v23 + 1;
      if (v17)
      {
        goto LABEL_25;
      }

      v4[2] = v24;
      v6 = v27;
      v1 = v28;
    }

    ++v3;
    if (v9 == v6)
    {
      return v4;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540728, qword_252E4B870);
  result = sub_252E37E24();
  __break(1u);
  return result;
}

uint64_t sub_252C4AE84(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541F20, &qword_252E3C180);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_252C4AEF4()
{
  result = qword_27F540D48;
  if (!qword_27F540D48)
  {
    sub_252E32E84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F540D48);
  }

  return result;
}

uint64_t HomeSuggestionCATs.__allocating_init(templateDir:options:globals:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_252E363B4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540370, &qword_252E3C450);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v18 - v12;
  v14 = *(v2 + 48);
  v15 = *(v2 + 52);
  swift_allocObject();
  sub_252ACD0DC(a1, v13);
  (*(v6 + 16))(v9, a2, v5);
  v16 = sub_252E362A4();
  (*(v6 + 8))(a2, v5);
  sub_25293EF40(a1);
  return v16;
}

uint64_t HomeSuggestionCATs.init(templateDir:options:globals:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_252E363B4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540370, &qword_252E3C450);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  sub_252ACD0DC(a1, &v14 - v11);
  (*(v5 + 16))(v8, a2, v4);
  v12 = sub_252E362A4();
  (*(v5 + 8))(a2, v4);
  sub_25293EF40(a1);
  return v12;
}

uint64_t HomeSuggestionCATs.__deallocating_deinit()
{
  _s22HomeAutomationInternal0aB4CATsCfd_0();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for HomeSuggestionCATs()
{
  result = qword_27F5445D8;
  if (!qword_27F5445D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_252C4B320(uint64_t a1)
{
  v29 = *(a1 + 16);
  if (!v29)
  {
    return MEMORY[0x277D84F90];
  }

  v1 = 0;
  v2 = MEMORY[0x277D84F90];
  v28 = a1 + 32;
  while (1)
  {
    v4 = *(v28 + 8 * v1);
    v5 = v4 >> 62;
    if (v4 >> 62)
    {
      if (v4 < 0)
      {
        v25 = *(v28 + 8 * v1);
      }

      v6 = sub_252E378C4();
    }

    else
    {
      v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v7 = v2 >> 62;
    if (v2 >> 62)
    {
      v26 = sub_252E378C4();
      v9 = v26 + v6;
      if (__OFADD__(v26, v6))
      {
LABEL_36:
        __break(1u);
        return MEMORY[0x277D84F90];
      }
    }

    else
    {
      v8 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v9 = v8 + v6;
      if (__OFADD__(v8, v6))
      {
        goto LABEL_36;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (result)
    {
      if (v7)
      {
        goto LABEL_16;
      }

      v10 = v2 & 0xFFFFFFFFFFFFFF8;
      if (v9 <= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v11 = v6;
        goto LABEL_18;
      }
    }

    else
    {
      if (v7)
      {
LABEL_16:
        sub_252E378C4();
        goto LABEL_17;
      }

      v10 = v2 & 0xFFFFFFFFFFFFFF8;
    }

    v12 = *(v10 + 16);
LABEL_17:
    v11 = v6;
    result = sub_252E37A54();
    v2 = result;
    v10 = result & 0xFFFFFFFFFFFFFF8;
LABEL_18:
    v13 = *(v10 + 16);
    v14 = *(v10 + 24);
    if (v5)
    {
      break;
    }

    v15 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v15)
    {
      goto LABEL_3;
    }

LABEL_22:
    if (((v14 >> 1) - v13) < v11)
    {
      goto LABEL_40;
    }

    v31 = v11;
    v17 = v10 + 8 * v13 + 32;
    v27 = v10;
    if (v5)
    {
      if (v15 < 1)
      {
        goto LABEL_42;
      }

      sub_252C54840();
      for (i = 0; i != v15; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541840, &qword_252E40AD8);
        v19 = sub_2529FBE00(v30, i, v4);
        v21 = *v20;

        (v19)(v30, 0);
        *(v17 + 8 * i) = v21;
      }
    }

    else
    {
      type metadata accessor for Accessory();
      swift_arrayInitWithCopy();
    }

    if (v31 >= 1)
    {
      v22 = *(v27 + 16);
      v23 = __OFADD__(v22, v31);
      v24 = v22 + v31;
      if (v23)
      {
        goto LABEL_41;
      }

      *(v27 + 16) = v24;
    }

LABEL_4:
    if (++v1 == v29)
    {
      return v2;
    }
  }

  v16 = v10;
  result = sub_252E378C4();
  v10 = v16;
  v15 = result;
  if (result)
  {
    goto LABEL_22;
  }

LABEL_3:

  if (v11 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

BOOL sub_252C4B5D4()
{
  v1 = [v0 userTask];
  if (v1)
  {
    v2 = v1;
    if ([v1 taskType] == 1 || objc_msgSend(v2, sel_taskType) == 2 || objc_msgSend(v2, sel_taskType) == 3)
    {

      return 1;
    }

    else
    {
      v4 = [v2 taskType];

      return v4 == 6;
    }
  }

  else
  {
    sub_252C515AC();
    return 0;
  }
}

id sub_252C4B68C()
{
  result = [v0 userTask];
  if (result)
  {
    v2 = result;
    v3 = [result value];

    if (v3)
    {
      v4 = [v3 cleaningJob];

      if (v4)
      {
        if ([v4 runState] == 17)
        {
          v5 = [v0 userTask];
          if (v5)
          {
            v6 = v5;
            v7 = [v5 attribute];

            return (v7 == 67);
          }

          sub_252C515AC();
        }
      }
    }

    return 0;
  }

  return result;
}

void sub_252C4B778()
{
  if (sub_252C52A10())
  {
    if (qword_27F53F498 != -1)
    {
      swift_once();
    }

    v1 = sub_252E36AD4();
    __swift_project_value_buffer(v1, qword_27F544C70);
    oslog = sub_252E36AC4();
    v2 = sub_252E374C4();
    if (os_log_type_enabled(oslog, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&dword_252917000, oslog, v2, "Skipping temperature confirmation since Siri Remembers remembered the intent.", v3, 2u);
      MEMORY[0x2530AED00](v3, -1, -1);
    }

    return;
  }

  v4 = *(sub_252B680FC() + 77);

  if (v4 != 1)
  {
    return;
  }

  v5 = *(sub_252B680FC() + 76);

  if (v5 != 1)
  {
    return;
  }

  if (qword_27F53F498 != -1)
  {
    swift_once();
  }

  v32 = sub_252E36AD4();
  __swift_project_value_buffer(v32, qword_27F544C70);
  sub_252E379F4();

  v6 = [v0 description];
  v7 = sub_252E36F34();
  v9 = v8;

  MEMORY[0x2530AD570](v7, v9);

  sub_252CC3D90(0xD000000000000012, 0x8000000252E8CA00, 0xD000000000000090, 0x8000000252E8C8B0);

  v10 = sub_252B680FC();
  swift_beginAccess();
  v11 = *(v10 + 80);

  if (v11 >> 62)
  {
    v12 = sub_252E378C4();
    if (v12)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
LABEL_15:
      if (v12 < 1)
      {
        __break(1u);
        return;
      }

      v13 = 0;
      v14 = MEMORY[0x277D84F90];
      osloga = MEMORY[0x277D84F90];
      v15 = MEMORY[0x277D84F90];
      while (1)
      {
        if ((v11 & 0xC000000000000001) != 0)
        {
          v16 = MEMORY[0x2530ADF00](v13, v11);
          if ((*(v16 + 32) & 1) == 0)
          {
            goto LABEL_23;
          }
        }

        else
        {
          v16 = *(v11 + 8 * v13 + 32);

          if ((*(v16 + 32) & 1) == 0)
          {
LABEL_23:
            v17 = *(v16 + 24);
            if (*(v16 + 81) == 1)
            {

LABEL_26:
              if (*(v16 + 64) & 1) != 0 || (*(v16 + 80))
              {
LABEL_28:
                if ((*(v16 + 48) & 1) == 0)
                {
                  v19 = *(v16 + 40);
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v14 = sub_2529F7D44(0, *(v14 + 2) + 1, 1, v14);
                  }

                  v21 = *(v14 + 2);
                  v20 = *(v14 + 3);
                  if (v21 >= v20 >> 1)
                  {
                    v14 = sub_2529F7D44((v20 > 1), v21 + 1, 1, v14);
                  }

                  *(v14 + 2) = v21 + 1;
                  *&v14[8 * v21 + 32] = v19;
                }
              }

              else
              {
                v22 = *(v16 + 56);
                v23 = *(v16 + 72);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  osloga = sub_2529F7E5C(0, *(osloga + 2) + 1, 1, osloga);
                }

                v25 = *(osloga + 2);
                v24 = *(osloga + 3);
                if (v25 >= v24 >> 1)
                {
                  osloga = sub_2529F7E5C((v24 > 1), v25 + 1, 1, osloga);
                }

                *(osloga + 2) = v25 + 1;
                v26 = &osloga[16 * v25];
                *(v26 + 4) = v22;
                *(v26 + 5) = v23;
              }

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v15 = sub_2529F7E48(0, *(v15 + 2) + 1, 1, v15);
              }

              v28 = *(v15 + 2);
              v27 = *(v15 + 3);
              if (v28 >= v27 >> 1)
              {
                v15 = sub_2529F7E48((v27 > 1), v28 + 1, 1, v15);
              }

              *(v15 + 2) = v28 + 1;
              *&v15[8 * v28 + 32] = v17;
              goto LABEL_18;
            }

            v18 = sub_252E37DB4();

            if (v18)
            {
              goto LABEL_26;
            }

            goto LABEL_28;
          }
        }

LABEL_18:
        if (v12 == ++v13)
        {
          goto LABEL_46;
        }
      }
    }
  }

  v14 = MEMORY[0x277D84F90];
  osloga = MEMORY[0x277D84F90];
  v15 = MEMORY[0x277D84F90];
LABEL_46:

  if (qword_27F53F490 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v32, qword_27F544C58);
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000022, 0x8000000252E8CA20);
  v29 = MEMORY[0x2530AD730](v14, MEMORY[0x277D839F8]);
  MEMORY[0x2530AD570](v29);

  MEMORY[0x2530AD570](0xD000000000000029, 0x8000000252E8CA50);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5445F0, &qword_252E54DE0);
  v31 = MEMORY[0x2530AD730](osloga, v30);
  MEMORY[0x2530AD570](v31);

  sub_252CC3D90(0, 0xE000000000000000, 0xD000000000000090, 0x8000000252E8C8B0);

  sub_252C52C48(v14, osloga, v15);
}

id sub_252C4BDE8()
{
  result = [v0 userTask];
  if (result)
  {
    v2 = result;
    v3 = [result attribute];

    result = [v0 userTask];
    if (result)
    {
      v4 = result;
      v5 = [result value];

      if (v5)
      {
        if (v3 == 27)
        {
          v6 = [v5 BOOLValue];

          return (v6 ^ 1);
        }
      }

      return 0;
    }
  }

  return result;
}

unint64_t sub_252C4BEB8()
{
  v1 = v0;
  v116 = sub_252E32E84();
  v2 = *(v116 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v116);
  v115 = &v101 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [v0 filters];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  type metadata accessor for HomeFilter();
  v7 = sub_252E37264();

  if ((sub_252C4D670(5, &selRef_entityType) & 1) == 0)
  {
    v8 = [v1 userTask];
    if (!v8 || (v9 = v8, v10 = [v8 attribute], v9, v10 != 1))
    {

      type metadata accessor for HomeStore();
      v19 = static HomeStore.shared.getter();
      v20 = v19[OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_loadSucceeded];
      if (v20 != 2 && (v20 & 1) == 0 || (v21 = [v1 filters]) == 0)
      {

        return 0;
      }

      v22 = v21;
      v23 = sub_252E37264();

      v24 = [v1 userTask];
      v25 = HomeStore.accessories(matching:supporting:)(v23, v24);
      v27 = v26;

      if (v27)
      {
        sub_252929F10(v25, 1);
        return 0;
      }

LABEL_88:
      v73 = (v25 & 0xFFFFFFFFFFFFFF8);
      if (v25 >> 62)
      {
LABEL_139:
        v74 = sub_252E378C4();
        if (v74)
        {
LABEL_90:
          v75 = 0;
          v76 = v25 & 0xC000000000000001;
          v77 = v25 + 32;
          v110 = v74;
          v111 = v73;
          v109 = v25 & 0xC000000000000001;
          v108 = v25 + 32;
          v112 = v25;
          while (1)
          {
            if (v76)
            {
              v79 = MEMORY[0x2530ADF00](v75, v25);
              v38 = __OFADD__(v75++, 1);
              if (v38)
              {
                goto LABEL_137;
              }
            }

            else
            {
              if (v75 >= v73[2])
              {
                goto LABEL_138;
              }

              v78 = *(v77 + 8 * v75);

              v38 = __OFADD__(v75++, 1);
              if (v38)
              {
LABEL_137:
                __break(1u);
LABEL_138:
                __break(1u);
                goto LABEL_139;
              }
            }

            v113 = v79;
            v80 = *(v79 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_services);
            if (v80 >> 62)
            {
              if (v80 < 0)
              {
                v96 = *(v79 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_services);
              }

              v25 = sub_252E378C4();
            }

            else
            {
              v25 = *((v80 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            if (v25)
            {
              break;
            }

LABEL_119:

            v73 = v111;
            v76 = v109;
            v77 = v108;
            v25 = v112;
            if (v75 == v110)
            {
              goto LABEL_140;
            }
          }

          v81 = 0;
          v115 = (v80 & 0xFFFFFFFFFFFFFF8);
          v116 = v80 & 0xC000000000000001;
          v114 = (v80 + 32);
          while (1)
          {
            if (v116)
            {
              v82 = MEMORY[0x2530ADF00](v81, v80);
              v38 = __OFADD__(v81++, 1);
              if (v38)
              {
                goto LABEL_135;
              }
            }

            else
            {
              if (v81 >= *(v115 + 2))
              {
                goto LABEL_136;
              }

              v82 = v114[v81];

              v38 = __OFADD__(v81++, 1);
              if (v38)
              {
LABEL_135:
                __break(1u);
LABEL_136:
                __break(1u);
                goto LABEL_137;
              }
            }

            if (qword_27F53F410 != -1)
            {
              swift_once();
            }

            v83 = qword_27F575A48;
            v84 = [*(v82 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) serviceType];
            v85 = sub_252E36F34();
            v87 = v86;

            if (qword_27F53F8B8 != -1)
            {
              swift_once();
            }

            v73 = off_27F546230;
            if (*(off_27F546230 + 2) && (v88 = sub_252A44A10(v85, v87), (v89 & 1) != 0))
            {
              v90 = *(v73[7] + 8 * v88);
            }

            else
            {
              v90 = 0;
            }

            if (*(v83 + 16))
            {
              v91 = *(v83 + 40);
              sub_252E37EC4();
              v73 = &v121;
              MEMORY[0x2530AE390](v90);
              v92 = sub_252E37F14();
              v93 = -1 << *(v83 + 32);
              v94 = v92 & ~v93;
              if ((*(v83 + 56 + ((v94 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v94))
              {
                break;
              }
            }

LABEL_98:

            if (v81 == v25)
            {
              goto LABEL_119;
            }
          }

          v95 = ~v93;
          while (*(*(v83 + 48) + 8 * v94) != v90)
          {
            v94 = (v94 + 1) & v95;
            if (((*(v83 + 56 + ((v94 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v94) & 1) == 0)
            {
              goto LABEL_98;
            }
          }

LABEL_129:

          sub_252929F10(v112, 0);

          v97 = 1;
          goto LABEL_141;
        }
      }

      else
      {
        v74 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v74)
        {
          goto LABEL_90;
        }
      }

LABEL_140:
      sub_252929F10(v25, 0);
      v97 = 0;
LABEL_141:
      v12 = v97 & (sub_252C4E740() ^ 1);
      if (qword_27F53F498 != -1)
      {
        swift_once();
      }

      v98 = sub_252E36AD4();
      __swift_project_value_buffer(v98, qword_27F544C70);
      v121 = 0;
      v122 = 0xE000000000000000;
      sub_252E379F4();

      v121 = 0xD000000000000020;
      v122 = 0x8000000252E8CAD0;
      if (v12)
      {
        v99 = 1702195828;
      }

      else
      {
        v99 = 0x65736C6166;
      }

      if (v12)
      {
        v100 = 0xE400000000000000;
      }

      else
      {
        v100 = 0xE500000000000000;
      }

      MEMORY[0x2530AD570](v99, v100);

      sub_252CC3D90(v121, v122, 0xD000000000000090, 0x8000000252E8C8B0);
      goto LABEL_83;
    }
  }

  type metadata accessor for HomeStore();
  v11 = static HomeStore.shared.getter();
  v12 = sub_2529DA828();

  v121 = MEMORY[0x277D84F90];
  if (v12 >> 62)
  {
    goto LABEL_133;
  }

  for (i = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_252E378C4())
  {
    v14 = MEMORY[0x277D84F90];
    if (i)
    {
      v114 = v2;
      v15 = 0;
      while (1)
      {
        if ((v12 & 0xC000000000000001) != 0)
        {
          MEMORY[0x2530ADF00](v15, v12);
          v2 = v15 + 1;
          if (__OFADD__(v15, 1))
          {
LABEL_18:
            __break(1u);
LABEL_19:
            v18 = v121;
            v14 = MEMORY[0x277D84F90];
            v2 = v114;
            goto LABEL_26;
          }
        }

        else
        {
          if (v15 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_131;
          }

          v16 = *(v12 + 8 * v15 + 32);

          v2 = v15 + 1;
          if (__OFADD__(v15, 1))
          {
            goto LABEL_18;
          }
        }

        if (sub_252967B6C(v7))
        {
          sub_252E37A94();
          v17 = *(v121 + 16);
          sub_252E37AC4();
          sub_252E37AD4();
          sub_252E37AA4();
        }

        else
        {
        }

        ++v15;
        if (v2 == i)
        {
          goto LABEL_19;
        }
      }
    }

    v18 = MEMORY[0x277D84F90];
LABEL_26:

    if (qword_27F53F498 != -1)
    {
      swift_once();
    }

    v28 = sub_252E36AD4();
    v29 = __swift_project_value_buffer(v28, qword_27F544C70);
    v121 = 0;
    v122 = 0xE000000000000000;
    sub_252E379F4();

    v121 = 0xD000000000000030;
    v122 = 0x8000000252E8CB00;
    v30 = type metadata accessor for Scene();
    v31 = MEMORY[0x2530AD730](v18, v30);
    MEMORY[0x2530AD570](v31);

    v107 = "Missing userTask from intent: ";
    v108 = v29;
    sub_252CC3D90(v121, v122, 0xD000000000000090, 0x8000000252E8C8B0);

    if (v18 < 0 || (v18 & 0x4000000000000000) != 0)
    {
      v106 = sub_252E378C4();
    }

    else
    {
      v106 = *(v18 + 16);
    }

    v7 = 0;
    v105 = v18 & 0xC000000000000001;
    v104 = v18 + 32;
    v114 = (v2 + 8);
    v103 = v18;
LABEL_35:
    v12 = v7 != v106;
    if (v7 == v106)
    {
      v70 = 0xE500000000000000;
      v71 = 0x65736C6166;
      goto LABEL_82;
    }

    if (!v105)
    {
      break;
    }

    v37 = MEMORY[0x2530ADF00](v7, v18);
    v38 = __OFADD__(v7++, 1);
    if (!v38)
    {
      goto LABEL_39;
    }

LABEL_131:
    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    ;
  }

  if (v7 >= *(v18 + 16))
  {
    goto LABEL_132;
  }

  v36 = *(v104 + 8 * v7);

  v38 = __OFADD__(v7++, 1);
  if (v38)
  {
    goto LABEL_131;
  }

LABEL_39:
  v110 = v7;
  v109 = v37;
  v39 = [*(v37 + OBJC_IVAR____TtC22HomeAutomationInternal5Scene_delegate) actions];
  v40 = sub_25293F638(0, &qword_27F5412F0, 0x277CD17F8);
  sub_2529E6100();
  v41 = sub_252E373A4();

  v119 = v14;
  v102 = v12;
  v112 = v41;
  v113 = v40;
  if ((v41 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_252E37874();
    sub_252E373E4();
    v41 = v121;
    v42 = v122;
    v43 = v123;
    v44 = v124;
    v45 = v125;
  }

  else
  {
    v46 = -1 << *(v41 + 32);
    v42 = v41 + 56;
    v43 = ~v46;
    v47 = -v46;
    if (v47 < 64)
    {
      v48 = ~(-1 << v47);
    }

    else
    {
      v48 = -1;
    }

    v45 = v48 & *(v41 + 56);

    v44 = 0;
  }

  v111 = v43;
  v49 = (v43 + 64) >> 6;
  v25 = MEMORY[0x277D84F90];
  if ((v41 & 0x8000000000000000) == 0)
  {
    goto LABEL_49;
  }

  while (1)
  {
    v50 = sub_252E37904();
    if (!v50)
    {
      break;
    }

    v117 = v50;
    swift_dynamicCast();
    v51 = v118;
    v52 = v44;
    v53 = v45;
    if (!v118)
    {
      break;
    }

    while (1)
    {
      type metadata accessor for Action();
      v56 = swift_allocObject();
      *(v56 + 16) = v51;
      v57 = v51;
      v58 = [v57 uniqueIdentifier];
      v59 = v115;
      sub_252E32E64();

      v60 = sub_252E32E24();
      v62 = v61;
      (*v114)(v59, v116);
      *(v56 + 24) = v60;
      *(v56 + 32) = v62;
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v63 = 1;
      }

      else
      {
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          v63 = 2;
        }

        else
        {
          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            v63 = 3;
          }

          else
          {
            objc_opt_self();
            v63 = 4 * (swift_dynamicCastObjCClass() != 0);
          }
        }
      }

      *(v56 + 40) = v63;
      MEMORY[0x2530AD700]();
      if (*((v119 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v119 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v64 = *((v119 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_252E372A4();
      }

      sub_252E372D4();
      v25 = v119;
      v44 = v52;
      v45 = v53;
      if (v41 < 0)
      {
        break;
      }

LABEL_49:
      v54 = v44;
      v55 = v45;
      v52 = v44;
      if (!v45)
      {
        while (1)
        {
          v52 = v54 + 1;
          if (__OFADD__(v54, 1))
          {
            break;
          }

          if (v52 >= v49)
          {
            goto LABEL_65;
          }

          v55 = *(v42 + 8 * v52);
          ++v54;
          if (v55)
          {
            goto LABEL_53;
          }
        }

        __break(1u);
        goto LABEL_88;
      }

LABEL_53:
      v53 = (v55 - 1) & v55;
      v51 = *(*(v41 + 48) + ((v52 << 9) | (8 * __clz(__rbit64(v55)))));
      if (!v51)
      {
        goto LABEL_65;
      }
    }
  }

LABEL_65:
  sub_25291AE30();

  if (v25 >> 62)
  {
    v65 = sub_252E378C4();
  }

  else
  {
    v65 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v66 = 0;
  do
  {
    v67 = v66;
    if (v65 == v66)
    {
      v2 = 0xE500000000000000;
      v32 = 0x65736C6166;
      goto LABEL_33;
    }

    if ((v25 & 0xC000000000000001) != 0)
    {
      MEMORY[0x2530ADF00](v66, v25);
      if (__OFADD__(v67, 1))
      {
        goto LABEL_127;
      }
    }

    else
    {
      if (v66 >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_128;
      }

      v68 = *(v25 + 8 * v66 + 32);

      if (__OFADD__(v67, 1))
      {
LABEL_127:
        __break(1u);
LABEL_128:
        __break(1u);
        goto LABEL_129;
      }
    }

    v69 = sub_252B3DE94();

    v66 = v67 + 1;
  }

  while ((v69 & 1) == 0);
  v2 = 0xE400000000000000;
  v32 = 1702195828;
LABEL_33:

  v119 = 0;
  v120 = 0xE000000000000000;
  sub_252E379F4();
  v34 = *(v109 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
  v33 = *(v109 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

  v119 = v34;
  v120 = v33;
  MEMORY[0x2530AD570](0x61736E7520736920, 0xEC000000203A6566);
  MEMORY[0x2530AD570](v32, v2);

  sub_252CC3D90(v119, v120, 0xD000000000000090, v107 | 0x8000000000000000);

  v35 = v65 == v67;
  v14 = MEMORY[0x277D84F90];
  v18 = v103;
  v7 = v110;
  if (v35)
  {
    goto LABEL_35;
  }

  v70 = 0xE400000000000000;
  v71 = 1702195828;
  v12 = v102;
LABEL_82:

  v119 = 0;
  v120 = 0xE000000000000000;
  sub_252E379F4();

  v119 = 0xD00000000000001ELL;
  v120 = 0x8000000252E8CB40;
  MEMORY[0x2530AD570](v71, v70);

  sub_252CC3D90(v119, v120, 0xD000000000000090, v107 | 0x8000000000000000);
LABEL_83:

  return v12;
}

BOOL sub_252C4CD44()
{
  v1 = v0;
  v2 = [v0 userTask];
  if (!v2)
  {
    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    v15 = sub_252E36AD4();
    __swift_project_value_buffer(v15, qword_27F544D60);
    sub_252E379F4();

    v16 = v0;
    v17 = [v16 description];
    v18 = sub_252E36F34();
    v20 = v19;

    MEMORY[0x2530AD570](v18, v20);

    v21 = 0xD00000000000001ELL;
    v22 = 0x8000000252E8C890;
    v23 = 295;
LABEL_21:
    sub_252CC4050(v21, v22, 0xD000000000000090, 0x8000000252E8C8B0, 0xD000000000000012, 0x8000000252E8C950, v23);

    return 0;
  }

  v3 = [v0 filters];
  if (!v3)
  {
    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    v24 = sub_252E36AD4();
    __swift_project_value_buffer(v24, qword_27F544D60);
    sub_252E379F4();

    v25 = v0;
    v26 = [v25 description];
    v27 = sub_252E36F34();
    v29 = v28;

    MEMORY[0x2530AD570](v27, v29);

    v21 = 0xD00000000000001DLL;
    v22 = 0x8000000252E8C970;
    v23 = 300;
    goto LABEL_21;
  }

  v4 = v3;
  type metadata accessor for HomeFilter();
  v5 = sub_252E37264();

  v46 = v1;
  if (v5 >> 62)
  {
LABEL_55:
    v47 = v5 & 0xFFFFFFFFFFFFFF8;
    v6 = sub_252E378C4();
  }

  else
  {
    v47 = v5 & 0xFFFFFFFFFFFFFF8;
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  v8 = v5 & 0xC000000000000001;
  while (1)
  {
    if (v6 == v7)
    {

      if (qword_27F53F4E8 != -1)
      {
        swift_once();
      }

      v32 = sub_252E36AD4();
      __swift_project_value_buffer(v32, qword_27F544D60);
      sub_252CC4050(0xD00000000000002DLL, 0x8000000252E8C9B0, 0xD000000000000090, 0x8000000252E8C8B0, 0xD000000000000012, 0x8000000252E8C950, 305);
      return 0;
    }

    if (v8)
    {
      v9 = MEMORY[0x2530ADF00](v7, v5);
    }

    else
    {
      if (v7 >= *(v47 + 16))
      {
        goto LABEL_52;
      }

      v9 = *(v5 + 8 * v7 + 32);
    }

    v10 = v9;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
      goto LABEL_55;
    }

    v11 = [v9 isExcludeFilter];
    sub_25293F638(0, &qword_27F5404D8, 0x277CCABB0);
    v12 = sub_252E37674();
    v13 = v12;
    if (!v11)
    {
      break;
    }

    v14 = sub_252E37694();

    ++v7;
    if ((v14 & 1) == 0)
    {
      goto LABEL_28;
    }
  }

LABEL_28:
  v33 = [v46 userTask];
  if (v33)
  {
    v34 = v33;
    v35 = [v33 taskType];

    if (!v35)
    {

      if (qword_27F53F4E8 != -1)
      {
        swift_once();
      }

      v45 = sub_252E36AD4();
      __swift_project_value_buffer(v45, qword_27F544D60);
      sub_252CC4050(0xD000000000000014, 0x8000000252E8C990, 0xD000000000000090, 0x8000000252E8C8B0, 0xD000000000000012, 0x8000000252E8C950, 310);
      return 0;
    }
  }

  v36 = 0;
  do
  {
    v37 = v36;
    v30 = v6 != v36;
    if (v6 == v36)
    {
      break;
    }

    if (v8)
    {
      v38 = MEMORY[0x2530ADF00](v36, v5);
    }

    else
    {
      if (v36 >= *(v47 + 16))
      {
        goto LABEL_54;
      }

      v38 = *(v5 + 8 * v36 + 32);
    }

    v39 = v38;
    if (__OFADD__(v37, 1))
    {
      goto LABEL_53;
    }

    if ([v38 deviceType] == 46)
    {

      break;
    }

    v40 = [v39 deviceType];

    v36 = v37 + 1;
  }

  while (v40 != 47);

  v41 = [v46 userTask];
  if (v41)
  {
    v42 = v41;
    v43 = [v41 attribute];

    return v6 != v37 || v43 == 67;
  }

  return v30;
}

Swift::OpaquePointer_optional __swiftcall ControlHomeIntent.roomNames()()
{
  v0 = sub_252C4D39C(&selRef_roomName);
  result.value._rawValue = v0;
  result.is_nil = v1;
  return result;
}

char *sub_252C4D39C(SEL *a1)
{
  if (sub_252C51BA0(a1))
  {
    v3 = [v1 filters];
    if (v3)
    {
      v4 = v3;
      type metadata accessor for HomeFilter();
      v5 = sub_252E37264();

      if (v5 >> 62)
      {
LABEL_24:
        v6 = sub_252E378C4();
        if (v6)
        {
LABEL_5:
          v7 = 0;
          v8 = MEMORY[0x277D84F90];
          do
          {
            v9 = v7;
            while (1)
            {
              if ((v5 & 0xC000000000000001) != 0)
              {
                v10 = MEMORY[0x2530ADF00](v9, v5);
              }

              else
              {
                if (v9 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_23;
                }

                v10 = *(v5 + 8 * v9 + 32);
              }

              v11 = v10;
              v7 = v9 + 1;
              if (__OFADD__(v9, 1))
              {
                __break(1u);
LABEL_23:
                __break(1u);
                goto LABEL_24;
              }

              v12 = [v10 *a1];
              if (v12)
              {
                break;
              }

              ++v9;
              if (v7 == v6)
              {
                goto LABEL_26;
              }
            }

            v13 = v12;
            v14 = sub_252E36F34();
            v20 = v15;

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v8 = sub_2529F7A80(0, *(v8 + 2) + 1, 1, v8);
            }

            v17 = *(v8 + 2);
            v16 = *(v8 + 3);
            if (v17 >= v16 >> 1)
            {
              v8 = sub_2529F7A80((v16 > 1), v17 + 1, 1, v8);
            }

            *(v8 + 2) = v17 + 1;
            v18 = &v8[16 * v17];
            *(v18 + 4) = v14;
            *(v18 + 5) = v20;
          }

          while (v7 != v6);
          goto LABEL_26;
        }
      }

      else
      {
        v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v6)
        {
          goto LABEL_5;
        }
      }

      v8 = MEMORY[0x277D84F90];
LABEL_26:

      return v8;
    }
  }

  return 0;
}

id sub_252C4D57C()
{
  result = [v0 userTask];
  if (*&result != 0.0)
  {
    v2 = result;
    v3 = [result value];

    if (v3)
    {
      if ([v3 type] == 2)
      {
        [v3 doubleValue];
        v5 = v4;

        return v5;
      }

      if ([v3 type] == 4)
      {
        v6 = [v3 integerValue];

        *&result = v6;
        return result;
      }
    }

    *&result = 0.0;
  }

  return result;
}

uint64_t sub_252C4D670(id a1, SEL *a2)
{
  v5 = [v2 filters];
  if (v5)
  {
    v6 = v5;
    type metadata accessor for HomeFilter();
    v7 = sub_252E37264();

    if (v7 >> 62)
    {
      goto LABEL_20;
    }

    for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
    {
      v9 = 0;
      v10 = v7 & 0xC000000000000001;
      v11 = v7 & 0xFFFFFFFFFFFFFF8;
      v24 = v7 & 0xFFFFFFFFFFFFFF8;
      v25 = v7;
      while (1)
      {
        if (v10)
        {
          v12 = MEMORY[0x2530ADF00](v9, v7);
        }

        else
        {
          if (v9 >= *(v11 + 16))
          {
            goto LABEL_19;
          }

          v12 = *(v7 + 8 * v9 + 32);
        }

        v13 = v12;
        v14 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        if ([v12 *a2] == a1)
        {
          v15 = i;
          v16 = v10;
          v17 = a1;
          v18 = a2;
          v19 = [v13 isExcludeFilter];
          sub_25293F638(0, &qword_27F5404D8, 0x277CCABB0);
          v20 = sub_252E37674();
          v21 = v20;
          if (!v19)
          {

            return 1;
          }

          v22 = sub_252E37694();

          a2 = v18;
          a1 = v17;
          v10 = v16;
          i = v15;
          v11 = v24;
          v7 = v25;
          if ((v22 & 1) == 0)
          {

            return 1;
          }
        }

        else
        {
        }

        ++v9;
        if (v14 == i)
        {
          goto LABEL_21;
        }
      }

      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      ;
    }

LABEL_21:
  }

  else
  {
    sub_252C516E0();
  }

  return 0;
}

id sub_252C4D868()
{
  v1 = [v0 userTask];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 value];

    if (v3)
    {
      v4 = [v3 cleaningJob];

      if (v4)
      {
        v5 = [v4 runState];

        if (v5 == 2)
        {
          goto LABEL_9;
        }
      }
    }
  }

  result = [v0 userTask];
  if (!result)
  {
    return result;
  }

  v7 = result;
  v8 = [result value];

  if (v8)
  {
    v9 = [v8 cleaningJob];

    if (v9)
    {
      v10 = [v9 runState];

      if (v10 == 17)
      {
LABEL_9:
        v11 = [v0 userTask];
        if (v11)
        {
          v12 = v11;
          v13 = [v11 attribute];

          return (v13 == 67);
        }

        sub_252C515AC();
      }
    }
  }

  return 0;
}

void sub_252C4D9D8()
{
  v1 = [v0 filters];
  if (v1)
  {
    v2 = v1;
    type metadata accessor for HomeFilter();
    v3 = sub_252E37264();

    if (v3 >> 62)
    {
      goto LABEL_58;
    }

    for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
    {
      v5 = 0;
      v6 = v3 & 0xC000000000000001;
      do
      {
        if (v6)
        {
          v7 = MEMORY[0x2530ADF00](v5, v3);
        }

        else
        {
          if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_51;
          }

          v7 = *(v3 + 8 * v5 + 32);
        }

        v8 = v7;
        v9 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          __break(1u);
LABEL_51:
          __break(1u);
          goto LABEL_52;
        }

        v10 = [v7 outerDeviceName];
        if (v10)
        {
LABEL_49:
          v23 = v10;

          return;
        }

        ++v5;
      }

      while (v9 != i);
      v11 = 0;
      while (1)
      {
        if (v6)
        {
          v12 = MEMORY[0x2530ADF00](v11, v3);
        }

        else
        {
          if (v11 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_53;
          }

          v12 = *(v3 + 8 * v11 + 32);
        }

        v8 = v12;
        v13 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        v10 = [v12 groupName];
        if (v10)
        {
          goto LABEL_49;
        }

        ++v11;
        if (v13 == i)
        {
          v14 = 0;
          while (1)
          {
            if (v6)
            {
              v15 = MEMORY[0x2530ADF00](v14, v3);
            }

            else
            {
              if (v14 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_55;
              }

              v15 = *(v3 + 8 * v14 + 32);
            }

            v8 = v15;
            v16 = v14 + 1;
            if (__OFADD__(v14, 1))
            {
              goto LABEL_54;
            }

            v10 = [v15 roomName];
            if (v10)
            {
              goto LABEL_49;
            }

            ++v14;
            if (v16 == i)
            {
              v17 = 0;
              while (1)
              {
                if (v6)
                {
                  v18 = MEMORY[0x2530ADF00](v17, v3);
                }

                else
                {
                  if (v17 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_57;
                  }

                  v18 = *(v3 + 8 * v17 + 32);
                }

                v8 = v18;
                v19 = v17 + 1;
                if (__OFADD__(v17, 1))
                {
                  goto LABEL_56;
                }

                v10 = [v18 zoneName];
                if (v10)
                {
                  goto LABEL_49;
                }

                ++v17;
                if (v19 == i)
                {
                  v20 = 0;
                  while (1)
                  {
                    if (v6)
                    {
                      v21 = MEMORY[0x2530ADF00](v20, v3);
                    }

                    else
                    {
                      if (v20 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
                      {
                        goto LABEL_62;
                      }

                      v21 = *(v3 + 8 * v20 + 32);
                    }

                    v8 = v21;
                    v22 = v20 + 1;
                    if (__OFADD__(v20, 1))
                    {
                      break;
                    }

                    v10 = [v21 homeName];
                    if (v10)
                    {
                      goto LABEL_49;
                    }

                    ++v20;
                    if (v22 == i)
                    {
                      goto LABEL_59;
                    }
                  }

                  __break(1u);
LABEL_62:
                  __break(1u);
                  return;
                }
              }
            }
          }
        }
      }

LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      ;
    }

LABEL_59:
  }
}

uint64_t sub_252C4DD64()
{
  v1 = [v0 filters];
  if (v1)
  {
    type metadata accessor for HomeFilter();
    v2 = sub_252E37264();

    if (v2 >> 62)
    {
      goto LABEL_17;
    }

    for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
    {
      v4 = 0;
      while (1)
      {
        if ((v2 & 0xC000000000000001) != 0)
        {
          v5 = MEMORY[0x2530ADF00](v4, v2);
        }

        else
        {
          if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_16;
          }

          v5 = *(v2 + 8 * v4 + 32);
        }

        v6 = v5;
        v7 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          break;
        }

        v8 = [v5 hasAllQuantifier];
        sub_25293F638(0, &qword_27F5404D8, 0x277CCABB0);
        v9 = sub_252E37674();
        v10 = v9;
        if (v8)
        {
          v11 = sub_252E37694();

          if (v11)
          {
            v1 = 1;
            goto LABEL_19;
          }
        }

        else
        {
        }

        ++v4;
        if (v7 == i)
        {
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      ;
    }

LABEL_18:
    v1 = 0;
LABEL_19:
  }

  return v1;
}

uint64_t sub_252C4DEF0(char a1)
{
  v2 = v1;
  type metadata accessor for HomeStore();
  v4 = static HomeStore.shared.getter();
  v5 = v4[OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_loadSucceeded];
  if (v5 != 2 && (v5 & 1) == 0 || (v6 = [v2 filters]) == 0)
  {

    goto LABEL_34;
  }

  v7 = v6;
  type metadata accessor for HomeFilter();
  v8 = sub_252E37264();

  v9 = [v2 userTask];
  v10 = HomeStore.services(matching:supporting:)(v8, v9);
  v12 = v11;

  if (v12)
  {
    v13 = v10;
    v14 = 1;
    goto LABEL_33;
  }

  v36 = a1;
  if (v10 >> 62)
  {
LABEL_31:
    v15 = sub_252E378C4();
    if (!v15)
    {
      goto LABEL_32;
    }
  }

  else
  {
    v15 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v15)
    {
      goto LABEL_32;
    }
  }

  v16 = 0;
  while (1)
  {
    if ((v10 & 0xC000000000000001) != 0)
    {
      v17 = MEMORY[0x2530ADF00](v16, v10);
      v18 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_29;
      }
    }

    else
    {
      if (v16 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_30;
      }

      v17 = *(v10 + 8 * v16 + 32);

      v18 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }
    }

    v19 = [*(v17 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) serviceType];
    v20 = sub_252E36F34();
    v22 = v21;

    if (qword_27F53F8B8 != -1)
    {
      swift_once();
    }

    v23 = off_27F546230;
    if (*(off_27F546230 + 2))
    {
      v24 = sub_252A44A10(v20, v22);
      if (v25)
      {
        break;
      }
    }

LABEL_11:
    ++v16;
    if (v18 == v15)
    {
      goto LABEL_32;
    }
  }

  v26 = *(v23[7] + 8 * v24);

  if (v26 != 1)
  {
    goto LABEL_11;
  }

  v27 = [v2 userTask];
  if (v27)
  {
    v28 = v27;
    v29 = [v27 taskType];

    if (v29 == 1)
    {
      v30 = [v2 userTask];
      if (v30)
      {
        v31 = v30;
        v32 = [v30 value];

        if (v32)
        {
          v33 = [v32 BOOLValue];

          sub_252929F10(v10, 0);
          v34 = v33 ^ v36 ^ 1;
          return v34 & 1;
        }
      }
    }
  }

LABEL_32:
  v13 = v10;
  v14 = 0;
LABEL_33:
  sub_252929F10(v13, v14);
LABEL_34:
  v34 = 0;
  return v34 & 1;
}

id sub_252C4E214()
{
  result = [v0 filters];
  if (!result)
  {
    return result;
  }

  v2 = result;
  type metadata accessor for HomeFilter();
  v3 = sub_252E37264();

  if (!(v3 >> 62))
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_4;
    }

LABEL_18:

    return 0;
  }

LABEL_17:
  v4 = sub_252E378C4();
  if (!v4)
  {
    goto LABEL_18;
  }

LABEL_4:
  v5 = 0;
  while (1)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x2530ADF00](v5, v3);
    }

    else
    {
      if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_16;
      }

      v6 = *(v3 + 8 * v5 + 32);
    }

    v7 = v6;
    v8 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    if ([v6 entityType] == 5)
    {
      break;
    }

    ++v5;
    if (v8 == v4)
    {
      goto LABEL_18;
    }
  }

  v9 = [v7 homeEntityName];

  if (!v9)
  {
    return 0;
  }

  v10 = sub_252E36F34();

  return v10;
}

id sub_252C4E384()
{
  v0 = sub_252C51E7C(&selRef_homeName);
  v2 = v1;
  if (!v1)
  {
    return 0;
  }

  v3 = v0;
  type metadata accessor for HomeStore();
  v4 = static HomeStore.shared.getter();
  v5 = sub_2529D8DC0();

  v18 = MEMORY[0x277D84F90];
  if (v5 >> 62)
  {
    goto LABEL_22;
  }

  v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v6)
  {
    while (1)
    {
      v7 = 0;
      v17 = v5 & 0xC000000000000001;
      v8 = v5 & 0xFFFFFFFFFFFFFF8;
      while (v17)
      {
        v11 = MEMORY[0x2530ADF00](v7, v5);
        v12 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
LABEL_18:
          __break(1u);
LABEL_19:
          v14 = v18;
          goto LABEL_24;
        }

LABEL_10:
        v13 = *(v11 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name) == v3 && v2 == *(v11 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);
        if (v13 || (sub_252E37DB4() & 1) != 0)
        {
          sub_252E37A94();
          v9 = v5;
          v10 = *(v18 + 16);
          sub_252E37AC4();
          v5 = v9;
          sub_252E37AD4();
          sub_252E37AA4();
        }

        else
        {
        }

        ++v7;
        if (v12 == v6)
        {
          goto LABEL_19;
        }
      }

      if (v7 < *(v8 + 16))
      {
        break;
      }

      __break(1u);
LABEL_22:
      v6 = sub_252E378C4();
      if (!v6)
      {
        goto LABEL_23;
      }
    }

    v11 = *(v5 + 8 * v7 + 32);

    v12 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      goto LABEL_18;
    }

    goto LABEL_10;
  }

LABEL_23:
  v14 = MEMORY[0x277D84F90];
LABEL_24:

  if (v14 < 0 || (v14 & 0x4000000000000000) != 0)
  {
    v15 = sub_252E378C4();
  }

  else
  {
    v15 = *(v14 + 16);
  }

  if (v15 != 1)
  {

    return 0;
  }

  return v3;
}

uint64_t sub_252C4E58C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = v1;
  v4 = (a1 + 32);
  while (1)
  {
    v8 = *v4++;
    v7 = v8;
    v9 = [v3 userTask];
    if (!v9)
    {
      if (qword_27F53F4E8 != -1)
      {
        swift_once();
      }

      v10 = sub_252E36AD4();
      __swift_project_value_buffer(v10, qword_27F544D60);
      sub_252E379F4();

      v11 = [v3 description];
      v12 = sub_252E36F34();
      v14 = v13;

      MEMORY[0x2530AD570](v12, v14);

      sub_252CC3D90(0xD00000000000001ELL, 0x8000000252E8CA80, 0xD000000000000090, 0x8000000252E8C8B0);

      goto LABEL_4;
    }

    v5 = v9;
    v6 = [v9 attribute];

    if (v6 == v7)
    {
      return 1;
    }

LABEL_4:
    if (!--v2)
    {
      return 0;
    }
  }
}

uint64_t sub_252C4E740()
{
  v1 = v0;
  v2 = [v0 userTask];
  if (v2)
  {
    v3 = v2;
    v4 = [v0 userTask];
    if (v4)
    {
      v5 = v4;
      if ([v4 taskType] == 4)
      {

LABEL_41:
        v6 = 1;
        return v6 & 1;
      }

      v7 = [v5 taskType];

      if (v7 == 5)
      {
        goto LABEL_41;
      }
    }

    else
    {
      sub_252C515AC();
    }

    v8 = [v3 attribute];
    if (v8 <= 9)
    {
      if (v8 == 8)
      {
        v33 = [v3 value];
        if (v33)
        {
          v34 = v33;
          v35 = [v33 type];

          if (v35 == 1)
          {
            v36 = [v3 value];
            if (v36)
            {
              v37 = v36;
              v38 = [v36 BOOLValue];

              if (v38)
              {
                goto LABEL_41;
              }
            }
          }
        }

        v39 = [v3 value];
        if (v39)
        {
          v40 = v39;
          v41 = [v39 type];

          if (v41 == 4)
          {
            v42 = [v3 value];
            if (v42)
            {
              v43 = v42;
              v44 = [v42 integerValue];

              v6 = v44 == 1;
              return v6 & 1;
            }
          }
        }

        goto LABEL_46;
      }

      if (v8 == 9)
      {
        v18 = [v3 value];
        if (!v18 || (v19 = v18, v20 = [v18 type], v19, v20 != 4))
        {
          v50 = [v3 value];
          if (v50)
          {
            v51 = v50;
            v52 = [v50 type];

            if (v52 == 2)
            {
              v53 = [v3 value];
              if (v53)
              {
                v54 = v53;
                [v53 doubleValue];
                v56 = v55;

                v6 = v56 == 0.0;
                return v6 & 1;
              }
            }
          }

          goto LABEL_46;
        }

LABEL_23:
        v21 = [v3 value];
        if (v21)
        {
          v22 = v21;
          v23 = [v21 integerValue];

          v6 = v23 == 0;
          return v6 & 1;
        }

LABEL_46:

        v6 = 0;
        return v6 & 1;
      }

LABEL_38:
      if (qword_27F53F4E8 != -1)
      {
        swift_once();
      }

      v45 = sub_252E36AD4();
      __swift_project_value_buffer(v45, qword_27F544D60);
      sub_252E379F4();

      v46 = [v1 description];
      v47 = sub_252E36F34();
      v49 = v48;

      MEMORY[0x2530AD570](v47, v49);

      sub_252CC3D90(0xD00000000000002BLL, 0x8000000252E8CAA0, 0xD000000000000090, 0x8000000252E8C8B0);

      goto LABEL_41;
    }

    if (v8 == 64)
    {
      v24 = [v3 value];
      if (v24)
      {
        v25 = v24;
        v26 = [v24 BOOLValue];

        v6 = v26 ^ 1;
        return v6 & 1;
      }

      goto LABEL_46;
    }

    if (v8 != 13)
    {
      if (v8 == 10)
      {
        v9 = [v3 value];
        if (v9)
        {
          v10 = v9;
          v11 = [v9 type];

          if (v11 == 1)
          {
            v12 = [v3 value];
            if (v12)
            {
              v13 = v12;
              v14 = [v12 BOOLValue];

              if ((v14 & 1) == 0)
              {
                goto LABEL_41;
              }
            }
          }
        }

        v15 = [v3 value];
        if (!v15)
        {
          goto LABEL_46;
        }

        v16 = v15;
        v17 = [v15 type];

        if (v17 != 4)
        {
          goto LABEL_46;
        }

        goto LABEL_23;
      }

      goto LABEL_38;
    }

    v27 = [v3 value];
    if (v27 && (v28 = v27, v29 = [v27 stringValue], v28, v29))
    {
      v30 = sub_252E36F34();
      v32 = v31;
    }

    else
    {
      v30 = 0;
      v32 = 0xE000000000000000;
    }

    v59[0] = v30;
    v59[1] = v32;
    MEMORY[0x28223BE20](v27);
    v58[2] = v59;
    v6 = sub_2529ED970(sub_25296A724, v58, &unk_2864A7590);

    swift_arrayDestroy();
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t ControlHomeIntent.getTargetDeviceTypes()()
{
  v98 = *MEMORY[0x277D85DE8];
  v1 = [v0 filters];
  if (!v1)
  {
    result = MEMORY[0x277D84FA0];
    goto LABEL_73;
  }

  v2 = v1;
  type metadata accessor for HomeFilter();
  v3 = sub_252E37264();

  v95[0] = MEMORY[0x277D84F90];
  if (v3 >> 62)
  {
    goto LABEL_80;
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (2)
  {
    v5 = MEMORY[0x277D84F90];
    if (!v4)
    {
      v15 = MEMORY[0x277D84F90];
      goto LABEL_20;
    }

    v6 = 0;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x2530ADF00](v6, v3);
      }

      else
      {
        if (v6 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_76;
        }

        v8 = *(v3 + 8 * v6 + 32);
      }

      v9 = v8;
      v10 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_75;
      }

      v11 = [v8 isExcludeFilter];
      sub_25293F638(0, &qword_27F5404D8, 0x277CCABB0);
      v12 = sub_252E37674();
      v13 = v12;
      if (!v11)
      {

LABEL_7:
        sub_252E37A94();
        v7 = *(v95[0] + 16);
        sub_252E37AC4();
        sub_252E37AD4();
        sub_252E37AA4();
        goto LABEL_8;
      }

      v14 = sub_252E37694();

      if ((v14 & 1) == 0)
      {
        goto LABEL_7;
      }

LABEL_8:
      ++v6;
    }

    while (v10 != v4);
    v15 = v95[0];
    v5 = MEMORY[0x277D84F90];
LABEL_20:

    v97 = v5;
    if (v15 < 0 || (v15 & 0x4000000000000000) != 0)
    {
      v17 = sub_252E378C4();
    }

    else
    {
      v17 = *(v15 + 16);
    }

    v94 = v15 & 0xC000000000000001;
    v18 = MEMORY[0x277D84F90];
    if (v17)
    {
      v19 = 0;
      v20 = MEMORY[0x277D84F90];
      do
      {
        v21 = v19;
        while (1)
        {
          if (v94)
          {
            v22 = MEMORY[0x2530ADF00](v21, v15);
          }

          else
          {
            if (v21 >= *(v15 + 16))
            {
              goto LABEL_78;
            }

            v22 = *(v15 + 8 * v21 + 32);
          }

          v23 = v22;
          v19 = v21 + 1;
          if (__OFADD__(v21, 1))
          {
            goto LABEL_77;
          }

          v24 = [v22 homeEntityName];
          if (v24)
          {
            break;
          }

          ++v21;
          if (v19 == v17)
          {
            goto LABEL_41;
          }
        }

        v25 = v24;
        v26 = sub_252E36F34();
        v3 = v27;

        v28 = v20;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v28 = sub_2529F7A80(0, *(v20 + 16) + 1, 1, v20);
        }

        v30 = *(v28 + 2);
        v29 = *(v28 + 3);
        if (v30 >= v29 >> 1)
        {
          v28 = sub_2529F7A80((v29 > 1), v30 + 1, 1, v28);
        }

        v20 = v28;
        *(v28 + 2) = v30 + 1;
        v31 = &v28[16 * v30];
        *(v31 + 4) = v26;
        *(v31 + 5) = v3;
        v18 = MEMORY[0x277D84F90];
      }

      while (v19 != v17);
    }

    else
    {
      v20 = MEMORY[0x277D84F90];
    }

LABEL_41:
    if (!*(v20 + 16))
    {
      goto LABEL_55;
    }

    v93 = v20;
    type metadata accessor for HomeStore();
    v32 = static HomeStore.shared.getter();
    v33 = sub_2529D9D50();
    v3 = 0;
    v34 = sub_2529D70E4(v33);

    v96 = v18;
    if (!(v34 >> 62))
    {
      v35 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v92 = v17;
      if (v35)
      {
        goto LABEL_44;
      }

LABEL_85:

      v63 = v96;
      v17 = v92;
      if (v96 < 0 || (v96 & 0x4000000000000000) != 0)
      {
        goto LABEL_109;
      }

      v64 = *(v96 + 16);
      if (v64)
      {
LABEL_88:
        v65 = 0;
        v66 = MEMORY[0x277D84F90];
        v91 = v63 & 0xC000000000000001;
        while (1)
        {
          v93 = v3;
          if (v91)
          {
            v17 = MEMORY[0x2530ADF00](v65, v63);
            v3 = v65 + 1;
            if (__OFADD__(v65, 1))
            {
              goto LABEL_107;
            }
          }

          else
          {
            if (v65 >= *(v63 + 16))
            {
              goto LABEL_108;
            }

            v17 = *(v63 + 8 * v65 + 32);

            v3 = v65 + 1;
            if (__OFADD__(v65, 1))
            {
LABEL_107:
              __break(1u);
LABEL_108:
              __break(1u);
LABEL_109:
              v64 = sub_252E378C4();
              if (!v64)
              {
                break;
              }

              goto LABEL_88;
            }
          }

          v67 = v15;
          v68 = v64;
          v69 = [*(v17 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) serviceType];
          v70 = sub_252E36F34();
          v72 = v71;

          if (qword_27F53F8B8 != -1)
          {
            swift_once();
          }

          v73 = off_27F546230;
          if (*(off_27F546230 + 2) && (v74 = sub_252A44A10(v70, v72), (v75 & 1) != 0))
          {
            v76 = *(v73[7] + 8 * v74);
          }

          else
          {
            v76 = 0;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v66 = sub_2529F7B8C(0, *(v66 + 2) + 1, 1, v66);
          }

          v17 = v92;
          v78 = *(v66 + 2);
          v77 = *(v66 + 3);
          if (v78 >= v77 >> 1)
          {
            v66 = sub_2529F7B8C((v77 > 1), v78 + 1, 1, v66);
          }

          *(v66 + 2) = v78 + 1;
          *&v66[8 * v78 + 32] = v76;
          ++v65;
          v64 = v68;
          v37 = v3 == v68;
          v3 = v93;
          v15 = v67;
          if (v37)
          {
            goto LABEL_111;
          }
        }
      }

      v66 = MEMORY[0x277D84F90];
LABEL_111:

      sub_25297A87C(v66);
      if (!v17)
      {
        goto LABEL_56;
      }

LABEL_112:
      v48 = 0;
      v45 = MEMORY[0x277D84F90];
      while (1)
      {
        if (v94)
        {
          v79 = MEMORY[0x2530ADF00](v48, v15);
        }

        else
        {
          if (v48 >= *(v15 + 16))
          {
            goto LABEL_125;
          }

          v79 = *(v15 + 8 * v48 + 32);
        }

        v80 = v79;
        v81 = v48 + 1;
        if (__OFADD__(v48, 1))
        {
          break;
        }

        v82 = [v79 deviceType];

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v45 = sub_2529F7B8C(0, *(v45 + 2) + 1, 1, v45);
        }

        v84 = *(v45 + 2);
        v83 = *(v45 + 3);
        if (v84 >= v83 >> 1)
        {
          v45 = sub_2529F7B8C((v83 > 1), v84 + 1, 1, v45);
        }

        *(v45 + 2) = v84 + 1;
        *&v45[8 * v84 + 32] = v82;
        ++v48;
        if (v81 == v17)
        {
          goto LABEL_57;
        }
      }

      __break(1u);
LABEL_125:
      __break(1u);
      goto LABEL_126;
    }

    v35 = sub_252E378C4();
    v92 = v17;
    if (!v35)
    {
      goto LABEL_85;
    }

LABEL_44:
    v36 = 0;
    v90 = v34 & 0xFFFFFFFFFFFFFF8;
    v91 = v34 & 0xC000000000000001;
    while (2)
    {
      if (v91)
      {
        v17 = v34;
        v39 = MEMORY[0x2530ADF00](v36, v34);
        v38 = v39;
        v40 = v36 + 1;
        if (__OFADD__(v36, 1))
        {
          goto LABEL_54;
        }

LABEL_50:
        v41 = v35;
        v42 = *(v38 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);
        v95[0] = *(v38 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
        v95[1] = v42;
        MEMORY[0x28223BE20](v39);
        v88[2] = v95;

        v43 = sub_2529ED970(sub_25296A69C, v88, v93);

        if (v43)
        {
          sub_252E37A94();
          v44 = *(v96 + 16);
          sub_252E37AC4();
          sub_252E37AD4();
          sub_252E37AA4();
        }

        else
        {
        }

        v35 = v41;
        ++v36;
        v37 = v40 == v41;
        v34 = v17;
        if (v37)
        {
          goto LABEL_85;
        }

        continue;
      }

      break;
    }

    if (v36 >= *(v90 + 16))
    {
      goto LABEL_79;
    }

    v17 = v34;
    v38 = *(v34 + 8 * v36 + 32);

    v40 = v36 + 1;
    if (!__OFADD__(v36, 1))
    {
      goto LABEL_50;
    }

LABEL_54:
    __break(1u);
LABEL_55:

    v3 = 0;
    if (v17)
    {
      goto LABEL_112;
    }

LABEL_56:
    v45 = MEMORY[0x277D84F90];
LABEL_57:

    sub_25297A87C(v45);

    v15 = sub_252C759A0(v46);

    v47 = *(v15 + 32);
    v48 = ((1 << v47) + 63) >> 6;
    v49 = 8 * v48;
    if ((v47 & 0x3Fu) <= 0xD)
    {
LABEL_58:

      MEMORY[0x28223BE20](v50);
      bzero(&v89 - ((v49 + 15) & 0x3FFFFFFFFFFFFFF0), v49);
      v51 = 0;
      v52 = 0;
      v53 = 1 << *(v15 + 32);
      v54 = -1;
      if (v53 < 64)
      {
        v54 = ~(-1 << v53);
      }

      v55 = v54 & *(v15 + 56);
      v56 = (v53 + 63) >> 6;
      while (v55)
      {
        v57 = __clz(__rbit64(v55));
        v55 &= v55 - 1;
        v58 = v57 | (v52 << 6);
LABEL_68:
        if (*(*(v15 + 48) + 8 * v58))
        {
          *(&v89 + ((v58 >> 3) & 0x1FFFFFFFFFFFFFF8) - ((v49 + 15) & 0x3FFFFFFFFFFFFFF0)) |= 1 << v58;
          if (__OFADD__(v51++, 1))
          {
            __break(1u);
LABEL_72:
            result = sub_252C542FC((&v89 - ((v49 + 15) & 0x3FFFFFFFFFFFFFF0)), v48, v51, v15, &qword_27F541750, &qword_252E4A2E0);
            goto LABEL_73;
          }
        }
      }

      v59 = v52;
      while (1)
      {
        v52 = v59 + 1;
        if (__OFADD__(v59, 1))
        {
          break;
        }

        if (v52 >= v56)
        {
          goto LABEL_72;
        }

        v60 = *(v15 + 56 + 8 * v52);
        ++v59;
        if (v60)
        {
          v55 = (v60 - 1) & v60;
          v58 = __clz(__rbit64(v60)) | (v52 << 6);
          goto LABEL_68;
        }
      }

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
LABEL_80:
      v4 = sub_252E378C4();
      continue;
    }

    break;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_58;
  }

LABEL_126:
  v85 = swift_slowAlloc();

  v86 = sub_252C54758(v85, v48, v15, sub_252AFABD8);
  if (v3)
  {

    swift_bridgeObjectRelease_n();
    result = MEMORY[0x2530AED00](v85, -1, -1);
    __break(1u);
  }

  else
  {
    v87 = v86;
    swift_bridgeObjectRelease_n();

    MEMORY[0x2530AED00](v85, -1, -1);
    result = v87;
LABEL_73:
    v62 = *MEMORY[0x277D85DE8];
  }

  return result;
}

id sub_252C4F73C()
{
  v1 = [v0 userTask];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 attribute];
  }

  else
  {
    v3 = 0;
  }

  v4 = objc_allocWithZone(type metadata accessor for HomeUserTask());
  v5 = sub_252E36F04();
  v6 = [v4 initWithIdentifier:0 displayString:v5];

  v7 = v6;
  [v7 setTaskType_];
  [v7 setAttribute_];
  [v7 setValue_];

  v8 = [v0 filters];
  if (v8)
  {
    v9 = v8;
    type metadata accessor for HomeFilter();
    v10 = sub_252E37264();
  }

  else
  {
    v10 = 0;
  }

  type metadata accessor for ControlHomeIntent();
  v11 = sub_252D473EC(v7, v10);

  return v11;
}

uint64_t sub_252C4F88C()
{
  v1 = v0;
  v2 = [v0 userTask];
  if (!v2)
  {
    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    v14 = sub_252E36AD4();
    __swift_project_value_buffer(v14, qword_27F544D60);
    sub_252E379F4();

    v15 = v0;
    v16 = [v15 description];
    v17 = sub_252E36F34();
    v19 = v18;

    MEMORY[0x2530AD570](v17, v19);

    v20 = 0xD00000000000001ELL;
    v21 = 0x8000000252E8C890;
    v22 = 270;
    goto LABEL_21;
  }

  v3 = [v0 filters];
  if (!v3)
  {
    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    v23 = sub_252E36AD4();
    __swift_project_value_buffer(v23, qword_27F544D60);
    sub_252E379F4();

    v24 = v0;
    v25 = [v24 description];
    v26 = sub_252E36F34();
    v28 = v27;

    MEMORY[0x2530AD570](v26, v28);

    v20 = 0xD00000000000001DLL;
    v21 = 0x8000000252E8C970;
    v22 = 275;
LABEL_21:
    sub_252CC4050(v20, v21, 0xD000000000000090, 0x8000000252E8C8B0, 0x2864696C61567369, 0xE900000000000029, v22);

    return 0;
  }

  v4 = v3;
  type metadata accessor for HomeFilter();
  v5 = sub_252E37264();

  if (v5 >> 62)
  {
LABEL_35:
    v6 = sub_252E378C4();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  while (1)
  {
    if (v6 == v7)
    {

      if (qword_27F53F4E8 != -1)
      {
        swift_once();
      }

      v30 = sub_252E36AD4();
      __swift_project_value_buffer(v30, qword_27F544D60);
      sub_252CC4050(0xD00000000000002DLL, 0x8000000252E8C9B0, 0xD000000000000090, 0x8000000252E8C8B0, 0x2864696C61567369, 0xE900000000000029, 280);
      return 0;
    }

    if ((v5 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x2530ADF00](v7, v5);
    }

    else
    {
      if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_34;
      }

      v8 = *(v5 + 8 * v7 + 32);
    }

    v9 = v8;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    v10 = [v8 isExcludeFilter];
    sub_25293F638(0, &qword_27F5404D8, 0x277CCABB0);
    v11 = sub_252E37674();
    v12 = v11;
    if (!v10)
    {
      break;
    }

    v13 = sub_252E37694();

    ++v7;
    if ((v13 & 1) == 0)
    {

      goto LABEL_27;
    }
  }

LABEL_27:
  v31 = [v1 userTask];
  if (!v31)
  {
    return 1;
  }

  v32 = v31;
  v33 = [v31 taskType];

  if (v33)
  {
    return 1;
  }

  if (qword_27F53F4E8 != -1)
  {
    swift_once();
  }

  v34 = sub_252E36AD4();
  __swift_project_value_buffer(v34, qword_27F544D60);
  sub_252CC4050(0xD000000000000014, 0x8000000252E8C990, 0xD000000000000090, 0x8000000252E8C8B0, 0x2864696C61567369, 0xE900000000000029, 285);
  return 0;
}

id sub_252C4FDF0(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  v2 = [v12 userTask];
  if (!v2)
  {
    goto LABEL_6;
  }

  v3 = v2;
  if ([v2 taskType])
  {

    goto LABEL_6;
  }

  v4 = [v3 attribute];

  if (v4 || (memcpy(__srca, __src, sizeof(__srca)), sub_252956B94(__srca) == 1))
  {
LABEL_6:

    return v12;
  }

  memcpy(v14, __dst, sizeof(v14));
  sub_2529353AC(v14, v13);
  if (qword_27F53F500 != -1)
  {
    swift_once();
  }

  v6 = sub_252E36AD4();
  __swift_project_value_buffer(v6, qword_27F544DA8);
  sub_252CC7784(0xD000000000000051, 0x8000000252E8CB60, 0, 0xD000000000000090, 0x8000000252E8C8B0);
  memcpy(v13, __srca, sizeof(v13));
  v7 = sub_252AEFEB0();
  v13[0] = 0;
  v13[1] = 0xE000000000000000;
  sub_252E379F4();

  v13[0] = 0xD000000000000011;
  v13[1] = 0x8000000252E8CBC0;
  v8 = [v7 description];
  v9 = sub_252E36F34();
  v11 = v10;

  MEMORY[0x2530AD570](v9, v11);

  sub_252CC7784(v13[0], v13[1], 0, 0xD000000000000090, 0x8000000252E8C8B0);

  sub_25293847C(__dst, &qword_27F5404C8, &unk_252E3FD60);
  return v7;
}

uint64_t sub_252C50064(const void *a1)
{
  v2[318] = v1;
  v2[317] = a1;
  v4 = sub_252E32E04();
  v2[319] = v4;
  v5 = *(v4 - 8);
  v2[320] = v5;
  v6 = *(v5 + 64) + 15;
  v2[321] = swift_task_alloc();
  v7 = sub_252E35BE4();
  v2[322] = v7;
  v8 = *(v7 - 8);
  v2[323] = v8;
  v9 = *(v8 + 64) + 15;
  v2[324] = swift_task_alloc();
  v10 = sub_252E35BF4();
  v2[325] = v10;
  v11 = *(v10 - 8);
  v2[326] = v11;
  v12 = *(v11 + 64) + 15;
  v2[327] = swift_task_alloc();
  v13 = sub_252E35C14();
  v2[328] = v13;
  v14 = *(v13 - 8);
  v2[329] = v14;
  v15 = *(v14 + 64) + 15;
  v2[330] = swift_task_alloc();
  memcpy(v2 + 65, a1, 0x1F8uLL);

  return MEMORY[0x2822009F8](sub_252C50250, 0, 0);
}

uint64_t sub_252C50250()
{
  memcpy((v0 + 16), *(v0 + 2536), 0x1F8uLL);
  if (sub_252956B94((v0 + 16)) == 1)
  {
    v1 = *(v0 + 2544);
LABEL_6:
    v6 = *(v0 + 2640);
    v7 = *(v0 + 2616);
    v8 = *(v0 + 2592);
    v9 = *(v0 + 2568);

    v10 = *(v0 + 8);

    return v10(v1);
  }

  v2 = *(v0 + 2544);
  memcpy((v0 + 1024), (v0 + 520), 0x1F8uLL);
  sub_2529353AC(v0 + 1024, v0 + 1528);
  v3 = [v2 time];
  if (v3)
  {

LABEL_5:
    v4 = *(v0 + 2544);
    sub_25293847C(v0 + 520, &qword_27F5404C8, &unk_252E3FD60);
    v5 = v4;
    v1 = *(v0 + 2544);
    goto LABEL_6;
  }

  if (!*(v0 + 32))
  {
    goto LABEL_5;
  }

  v12 = *(v0 + 2640);
  v13 = *(v0 + 2616);
  v14 = *(v0 + 2608);
  v15 = *(v0 + 2600);
  v16 = *(v0 + 2592);
  v17 = *(v0 + 2584);
  v18 = *(v0 + 2576);
  v19 = *(v0 + 2568);
  memcpy((v0 + 2032), (v0 + 16), 0x1F8uLL);
  (*(v14 + 104))(v13, *MEMORY[0x277D56140], v15);
  (*(v17 + 104))(v16, *MEMORY[0x277D56128], v18);
  sub_252CC6450(MEMORY[0x277D84F90]);
  sub_252E35C04();
  sub_252E32DF4();
  v20 = swift_task_alloc();
  *(v0 + 2648) = v20;
  *v20 = v0;
  v20[1] = sub_252C504B8;
  v21 = *(v0 + 2640);
  v22 = *(v0 + 2568);

  return sub_252BAE648(v21, v22);
}

uint64_t sub_252C504B8(uint64_t a1)
{
  v2 = *(*v1 + 2648);
  v3 = *(*v1 + 2640);
  v4 = *(*v1 + 2632);
  v5 = *(*v1 + 2624);
  v6 = *(*v1 + 2568);
  v7 = *(*v1 + 2560);
  v8 = *(*v1 + 2552);
  v10 = *v1;
  *(*v1 + 2656) = a1;

  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v3, v5);

  return MEMORY[0x2822009F8](sub_252C50674, 0, 0);
}

uint64_t sub_252C50674()
{
  v1 = v0[332];
  v2 = v0[318];
  if (v1)
  {
    v3 = v2;
    v4 = [v3 userTask];
    v5 = [v3 filters];
    if (v5)
    {
      v6 = v5;
      type metadata accessor for HomeFilter();
      v7 = sub_252E37264();
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v10 = v0[318];
    type metadata accessor for ControlHomeIntent.Builder();
    v11 = [v10 time];
    v12 = sub_252D47574(v4, v7, v11);

    v13 = (*(*v12 + 200))(v1);

    v9 = (*(*v13 + 224))(v14);

    sub_25293847C((v0 + 65), &qword_27F5404C8, &unk_252E3FD60);
  }

  else
  {
    sub_25293847C((v0 + 65), &qword_27F5404C8, &unk_252E3FD60);
    v8 = v2;
    v9 = v0[318];
  }

  v15 = v0[330];
  v16 = v0[327];
  v17 = v0[324];
  v18 = v0[321];

  v19 = v0[1];

  return v19(v9);
}

uint64_t sub_252C50874()
{
  v1 = v0;
  type metadata accessor for HomeStore();
  v2 = static HomeStore.shared.getter();
  v3 = v2[OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_loadSucceeded];
  if (v3 != 2 && (v3 & 1) == 0 || (v4 = [v1 filters]) == 0)
  {

    return 0;
  }

  v5 = v4;
  type metadata accessor for HomeFilter();
  v6 = sub_252E37264();

  v7 = [v1 userTask];
  v8 = HomeStore.accessories(matching:supporting:)(v6, v7);
  v10 = v9;

  if (v10)
  {
    sub_252929F10(v8, 1);
    return 0;
  }

  sub_252B680FC();
  v12 = sub_252B653E0();

  if (v12)
  {
    sub_252929F10(v8, 0);
    return 1;
  }

  v13 = [v1 userTask];
  v14 = v8 >> 62;
  v83 = v1;
  if (v13)
  {
    v15 = v13;
    v16 = [v13 attribute];

    v82 = v16 == 7;
    if (!v14)
    {
      goto LABEL_12;
    }

LABEL_31:
    v17 = v8 & 0xFFFFFFFFFFFFFF8;
    v18 = sub_252E378C4();
    if (v18)
    {
      goto LABEL_13;
    }

    goto LABEL_32;
  }

  sub_252C515AC();
  v82 = 0;
  if (v14)
  {
    goto LABEL_31;
  }

LABEL_12:
  v17 = v8 & 0xFFFFFFFFFFFFFF8;
  v18 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v18)
  {
LABEL_13:
    v19 = 0;
    v20 = MEMORY[0x277D84F90];
    while (2)
    {
      v21 = v19;
      while (1)
      {
        if ((v8 & 0xC000000000000001) != 0)
        {
          v22 = MEMORY[0x2530ADF00](v21, v8);
          v19 = v21 + 1;
          if (__OFADD__(v21, 1))
          {
            goto LABEL_101;
          }
        }

        else
        {
          if (v21 >= *(v17 + 16))
          {
            goto LABEL_102;
          }

          v22 = *(v8 + 8 * v21 + 32);

          v19 = v21 + 1;
          if (__OFADD__(v21, 1))
          {
LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
            __break(1u);
LABEL_104:
            __break(1u);
            goto LABEL_105;
          }
        }

        v23 = [*(v22 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate) room];
        if (v23)
        {
          break;
        }

        ++v21;
        if (v19 == v18)
        {
          goto LABEL_33;
        }
      }

      v24 = v23;
      v25 = type metadata accessor for Room();
      v26 = *(v25 + 48);
      v27 = *(v25 + 52);
      swift_allocObject();
      sub_2529A1E08(v24);
      v28 = sub_2529A2A0C();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_2529F8F7C(0, v20[2] + 1, 1, v20);
      }

      v29 = v20;
      v30 = v20[2];
      v31 = v29;
      v32 = v29[3];
      if (v30 >= v32 >> 1)
      {
        v31 = sub_2529F8F7C((v32 > 1), v30 + 1, 1, v31);
      }

      v31[2] = v30 + 1;
      v33 = &v31[v30];
      v20 = v31;
      v33[4] = v28;
      if (v19 != v18)
      {
        continue;
      }

      goto LABEL_33;
    }
  }

LABEL_32:
  v20 = MEMORY[0x277D84F90];
LABEL_33:
  sub_252929F10(v8, 0);
  v8 = sub_252C4B320(v20);

  if (v8 >> 62)
  {
LABEL_105:
    v34 = sub_252E378C4();
    v84 = v34;
    if (!v34)
    {
      goto LABEL_63;
    }
  }

  else
  {
    v34 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v84 = v34;
    if (!v34)
    {
      goto LABEL_63;
    }
  }

  v35 = 0;
  while (1)
  {
    if ((v8 & 0xC000000000000001) != 0)
    {
      v36 = MEMORY[0x2530ADF00](v35, v8);
      v37 = __OFADD__(v35++, 1);
      if (v37)
      {
        goto LABEL_59;
      }
    }

    else
    {
      if (v35 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_103;
      }

      v36 = *(v8 + 32 + 8 * v35);

      v37 = __OFADD__(v35++, 1);
      if (v37)
      {
LABEL_59:
        __break(1u);
        goto LABEL_60;
      }
    }

    v38 = (*v36 + 256);
    v39 = *v38;
    if ((*v38)() == 30)
    {

      if (v82)
      {
        goto LABEL_61;
      }

      goto LABEL_63;
    }

    v40 = (*(*v36 + 272))();
    v41 = v40;
    if (*(v40 + 16))
    {
      v42 = *(v40 + 40);
      sub_252E37EC4();
      MEMORY[0x2530AE390](30);
      v43 = sub_252E37F14();
      v44 = -1 << *(v41 + 32);
      v45 = v43 & ~v44;
      if ((*(v41 + 56 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45))
      {
        break;
      }
    }

LABEL_46:

    v48 = (v39)(v47);
    if (v48 == 38)
    {
      v50 = &unk_2864ADBA0;
      goto LABEL_50;
    }

    v49 = MEMORY[0x277D84FA0];
    if (v48 == 41)
    {
      v50 = &unk_2864ADBC8;
LABEL_50:
      v49 = sub_2529FC004(v50);
    }

    if (*(v49 + 16))
    {
      v51 = *(v49 + 40);
      sub_252E37EC4();
      MEMORY[0x2530AE390](30);
      v52 = sub_252E37F14();
      v53 = -1 << *(v49 + 32);
      v54 = v52 & ~v53;
      if ((*(v49 + 56 + ((v54 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v54))
      {
        v55 = ~v53;
        while (*(*(v49 + 48) + 8 * v54) != 30)
        {
          v54 = (v54 + 1) & v55;
          if (((*(v49 + 56 + ((v54 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v54) & 1) == 0)
          {
            goto LABEL_36;
          }
        }

        goto LABEL_60;
      }
    }

LABEL_36:

    v34 = v84;
    if (v35 == v84)
    {
      goto LABEL_63;
    }
  }

  v46 = ~v44;
  while (*(*(v41 + 48) + 8 * v45) != 30)
  {
    v45 = (v45 + 1) & v46;
    if (((*(v41 + 56 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45) & 1) == 0)
    {
      goto LABEL_46;
    }
  }

LABEL_60:

  v34 = v84;
  if (v82)
  {
LABEL_61:

    return 1;
  }

LABEL_63:
  v56 = [v83 userTask];
  if (v56)
  {
    v57 = v56;
    v58 = [v56 attribute];

    v82 = v58 == 28;
    if (!v34)
    {
      goto LABEL_95;
    }
  }

  else
  {
    sub_252C515AC();
    v82 = 0;
    if (!v34)
    {
LABEL_95:

      v79 = v83;
      goto LABEL_96;
    }
  }

  v59 = 0;
  while (2)
  {
    if ((v8 & 0xC000000000000001) != 0)
    {
      v60 = MEMORY[0x2530ADF00](v59, v8);
      v37 = __OFADD__(v59++, 1);
      if (v37)
      {
        goto LABEL_91;
      }
    }

    else
    {
      if (v59 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_104;
      }

      v60 = *(v8 + 32 + 8 * v59);

      v37 = __OFADD__(v59++, 1);
      if (v37)
      {
LABEL_91:
        __break(1u);
LABEL_92:

        goto LABEL_93;
      }
    }

    v61 = (*v60 + 256);
    v62 = *v61;
    if ((*v61)() != 39)
    {
      v63 = (*(*v60 + 272))();
      v64 = v63;
      if (*(v63 + 16))
      {
        v65 = *(v63 + 40);
        sub_252E37EC4();
        MEMORY[0x2530AE390](39);
        v66 = sub_252E37F14();
        v67 = -1 << *(v64 + 32);
        v68 = v66 & ~v67;
        if ((*(v64 + 56 + ((v68 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v68))
        {
          v69 = ~v67;
          while (*(*(v64 + 48) + 8 * v68) != 39)
          {
            v68 = (v68 + 1) & v69;
            if (((*(v64 + 56 + ((v68 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v68) & 1) == 0)
            {
              goto LABEL_78;
            }
          }

          goto LABEL_92;
        }
      }

LABEL_78:

      v71 = (v62)(v70);
      if (v71 == 38)
      {
        v73 = &unk_2864ADBF0;
LABEL_82:
        v72 = sub_2529FC004(v73);
      }

      else
      {
        v72 = MEMORY[0x277D84FA0];
        if (v71 == 41)
        {
          v73 = &unk_2864ADC18;
          goto LABEL_82;
        }
      }

      if (*(v72 + 16))
      {
        v74 = *(v72 + 40);
        sub_252E37EC4();
        MEMORY[0x2530AE390](39);
        v75 = sub_252E37F14();
        v76 = -1 << *(v72 + 32);
        v77 = v75 & ~v76;
        if ((*(v72 + 56 + ((v77 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v77))
        {
          v78 = ~v76;
          while (*(*(v72 + 48) + 8 * v77) != 39)
          {
            v77 = (v77 + 1) & v78;
            if (((*(v72 + 56 + ((v77 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v77) & 1) == 0)
            {
              goto LABEL_68;
            }
          }

          goto LABEL_92;
        }
      }

LABEL_68:

      if (v59 == v84)
      {
        goto LABEL_95;
      }

      continue;
    }

    break;
  }

LABEL_93:

  v79 = v83;
  if (v82)
  {
    return 1;
  }

LABEL_96:
  v80 = *(sub_252B680FC() + 48);

  if (v80)
  {
    v81 = 1;
  }

  else
  {
    v81 = *(sub_252B680FC() + 49);
  }

  return v81 & sub_252D3E360(v79);
}

uint64_t sub_252C5117C(uint64_t a1)
{
  v2 = sub_2529FC004(a1);
  v3 = [v1 filters];
  if (!v3)
  {

    sub_252C516E0();
    return 0;
  }

  v4 = v3;
  type metadata accessor for HomeFilter();
  v5 = sub_252E37264();

  if (v5 >> 62)
  {
LABEL_25:
    v6 = sub_252E378C4();
    if (v6)
    {
      goto LABEL_4;
    }

    goto LABEL_26;
  }

  v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v6)
  {
LABEL_26:

    return 0;
  }

LABEL_4:
  v7 = 0;
  v8 = v2 + 56;
  while (1)
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x2530ADF00](v7, v5);
    }

    else
    {
      if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_24;
      }

      v9 = *(v5 + 32 + 8 * v7);
    }

    v10 = v9;
    if (__OFADD__(v7++, 1))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v12 = [v9 isExcludeFilter];
    sub_25293F638(0, &qword_27F5404D8, 0x277CCABB0);
    v13 = sub_252E37674();
    v14 = v13;
    if (!v12)
    {
      break;
    }

    v15 = sub_252E37694();

    if ((v15 & 1) == 0)
    {
      goto LABEL_14;
    }

LABEL_5:

    if (v7 == v6)
    {
      goto LABEL_26;
    }
  }

LABEL_14:
  v16 = [v10 deviceType];
  if (!*(v2 + 16))
  {
    goto LABEL_5;
  }

  v17 = v16;
  v18 = *(v2 + 40);
  sub_252E37EC4();
  MEMORY[0x2530AE390](v17);
  v19 = sub_252E37F14();
  v20 = -1 << *(v2 + 32);
  v21 = v19 & ~v20;
  if (((*(v8 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
  {
    goto LABEL_5;
  }

  v22 = ~v20;
  while (*(*(v2 + 48) + 8 * v21) != v17)
  {
    v21 = (v21 + 1) & v22;
    if (((*(v8 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  return 1;
}