uint64_t type metadata accessor for SuggestionsViewModel()
{
  result = qword_27F068BD0;
  if (!qword_27F068BD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24BA12558()
{
  sub_24BA126A8();
  if (v0 <= 0x3F)
  {
    sub_24B913088(319, &qword_27F068BE0, &qword_27F067AE0);
    if (v1 <= 0x3F)
    {
      sub_24B913088(319, &qword_27F068BE8, &qword_27F0665A8);
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_24BA126A8()
{
  if (!qword_27F066358)
  {
    sub_24BAA7E4C();
    v0 = sub_24BAAA3FC();
    if (!v1)
    {
      atomic_store(v0, &qword_27F066358);
    }
  }
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_24BA12714(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_24BA1275C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24BA127B0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_24BA127F8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24BA1284C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SuggestionsViewModel();
  result = sub_24BAA814C();
  *a1 = result;
  return result;
}

uint64_t sub_24BA12904()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_24BAA81CC();
}

uint64_t sub_24BA1297C(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_24B9A2FBC(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_24BA129F8(v6);
  return sub_24BAAA67C();
}

uint64_t sub_24BA129F8(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_24BAAA75C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for InstalledApp();
        v6 = sub_24BAAA15C();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_24B99C2DC(v8, v9, a1, v4);
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
    return sub_24B99B860(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_24BA12AFC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (a1 == a5 && a2 == a6 || (v12 = sub_24BAAA78C(), v13 = 0, (v12 & 1) != 0))
  {
    v14 = [*(a3 + 16) isEqual_];
    v13 = a4 ^ a8 ^ 1;
    if (!v14)
    {
      v13 = 0;
    }
  }

  return v13 & 1;
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24BA12CA0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroyTm_16()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t AppNameCache.name(for:)(uint64_t a1)
{
  type metadata accessor for InstalledApp();
  v3 = swift_dynamicCastClass();
  if (v3 && ((v4 = v3[5], v5 = v3[6], v3[3] == v4) ? (v6 = v3[4] == v5) : (v6 = 0), v6 || (sub_24BAAA78C() & 1) != 0))
  {
    swift_beginAccess();
    v7 = *(v1 + 16);
    v8 = *(v7 + 16);

    if (v8 && (v9 = sub_24BA1575C(v4, v5), (v10 & 1) != 0))
    {
      v4 = *(*(v7 + 56) + 16 * v9);
      swift_endAccess();
    }

    else
    {
      swift_endAccess();
      sub_24BA1301C(v4, v5);
    }
  }

  else
  {
    v4 = *(a1 + 24);
  }

  return v4;
}

uint64_t sub_24BA12E90()
{
  v0 = sub_24BAA9E3C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AppNameCache();
  v4 = swift_allocObject();
  v5 = MEMORY[0x277D84F90];
  v4[2] = sub_24BA20C5C(MEMORY[0x277D84F90]);
  sub_24B8F37E8(0, &qword_27F0644F0);
  (*(v1 + 104))(v3, *MEMORY[0x277D851C0], v0);
  v6 = sub_24BAAA36C();
  result = (*(v1 + 8))(v3, v0);
  v4[3] = v6;
  v4[4] = 8;
  v8 = MEMORY[0x277D84FA0];
  v4[5] = v5;
  v4[6] = v8;
  qword_27F076FE8 = v4;
  return result;
}

Swift::String __swiftcall AppNameCache.name(for:)(Swift::String a1)
{
  v1 = sub_24BA15D2C(a1._countAndFlagsBits, a1._object);
  v3 = v2;

  v4 = v1;
  v5 = v3;
  result._object = v5;
  result._countAndFlagsBits = v4;
  return result;
}

uint64_t sub_24BA1301C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_beginAccess();
  if (*(*(v2 + 16) + 16))
  {
    sub_24BA1575C(a1, a2);
    if (v6)
    {
      return swift_endAccess();
    }
  }

  swift_endAccess();
  swift_beginAccess();
  v8 = *(v2 + 48);

  v9 = sub_24B91471C(a1, a2, v8);

  if ((v9 & 1) == 0)
  {
    swift_beginAccess();
    v10 = *(v3 + 40);
    v11 = *(v10 + 16);
    if (v11)
    {
      v12 = 0;
      v13 = (v10 + 40);
      while (1)
      {
        v14 = *(v13 - 1) == a1 && *v13 == a2;
        if (v14 || (sub_24BAAA78C() & 1) != 0)
        {
          break;
        }

        ++v12;
        v13 += 2;
        if (v11 == v12)
        {
          goto LABEL_15;
        }
      }

      swift_beginAccess();
      sub_24B9AAD44(v12);
      swift_endAccess();
    }

LABEL_15:
    swift_beginAccess();

    sub_24B9AF1B4(0, 0, a1, a2);
    swift_endAccess();

    return sub_24BA131C0();
  }

  return result;
}

uint64_t sub_24BA131C0()
{
  v1 = sub_24BAA9E2C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24BAA9E5C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_beginAccess();
  v10 = v0[5];
  v11 = *(v10 + 16);
  if (v11)
  {
    result = swift_beginAccess();
    v12 = *(v0[6] + 16);
    if (v12 <= 7)
    {
      v13 = 8 - v12;
      if (v13 >= v11)
      {
        v14 = v11;
      }

      else
      {
        v14 = v13;
      }

      v30 = v14;
      v31 = v6;
      v15 = sub_24B9A98E8(v14, v10);
      v29 = v16;
      v18 = v17;
      v20 = v19;
      v32 = v2;
      if (v19)
      {
        sub_24BAAA7AC();
        swift_unknownObjectRetain_n();

        v23 = swift_dynamicCastClass();
        if (!v23)
        {
          swift_unknownObjectRelease();
          v23 = MEMORY[0x277D84F90];
        }

        v24 = *(v23 + 16);

        if (__OFSUB__(v20 >> 1, v18))
        {
          goto LABEL_20;
        }

        if (v24 != (v20 >> 1) - v18)
        {
          goto LABEL_21;
        }

        v22 = swift_dynamicCastClass();
        swift_unknownObjectRelease();
        if (v22)
        {
          goto LABEL_16;
        }

        v22 = MEMORY[0x277D84F90];
        goto LABEL_15;
      }

      while (1)
      {
        sub_24B99B1F4(v15, v29, v18, v20);
        v22 = v21;
LABEL_15:
        swift_unknownObjectRelease();
LABEL_16:
        swift_beginAccess();

        v15 = v0;
        sub_24B8F1E24(v25);
        swift_endAccess();

        v18 = v0[3];
        v26 = swift_allocObject();
        swift_weakInit();
        v27 = swift_allocObject();
        *(v27 + 16) = v26;
        *(v27 + 24) = v22;
        aBlock[4] = sub_24BA15E4C;
        v35 = v27;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_24B97ACC4;
        aBlock[3] = &block_descriptor_9;
        v20 = _Block_copy(aBlock);

        sub_24BAA9E4C();
        v33 = MEMORY[0x277D84F90];
        sub_24BA15FC0(&qword_27F063470, 255, MEMORY[0x277D85198]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F064500);
        sub_24B97C674();
        sub_24BAAA48C();
        v0 = v18;
        MEMORY[0x24C250400](0, v8, v4, v20);
        _Block_release(v20);
        (*(v32 + 8))(v4, v1);
        (*(v31 + 8))(v8, v5);
        v1 = v35;

        swift_beginAccess();
        if (*(*(v15 + 40) + 16) >= v30)
        {
          break;
        }

        __break(1u);
LABEL_20:
        __break(1u);
LABEL_21:
        swift_unknownObjectRelease();
      }

      sub_24B9AF350(0, v30);
      return swift_endAccess();
    }
  }

  return result;
}

uint64_t sub_24BA13640(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0646E8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - v4;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result;
    v8 = sub_24BAAA1DC();
    (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
    v9 = swift_allocObject();
    v9[2] = 0;
    v9[3] = 0;
    v9[4] = v7;
    v9[5] = a2;

    sub_24B981384(0, 0, v5, &unk_24BAB9A88, v9);
  }

  return result;
}

uint64_t sub_24BA13778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v7 = sub_24BAA9E2C();
  v5[10] = v7;
  v5[11] = *(v7 - 8);
  v5[12] = swift_task_alloc();
  v8 = sub_24BAA9E5C();
  v5[13] = v8;
  v5[14] = *(v8 - 8);
  v5[15] = swift_task_alloc();
  v9 = swift_task_alloc();
  v5[16] = v9;
  *v9 = v5;
  v9[1] = sub_24BA138CC;

  return sub_24BA13C2C(a5);
}

uint64_t sub_24BA138CC(uint64_t a1)
{
  *(*v1 + 136) = a1;

  return MEMORY[0x2822009F8](sub_24BA139CC, 0, 0);
}

uint64_t sub_24BA139CC()
{
  v1 = v0[17];
  v2 = v0[15];
  v3 = v0[12];
  v12 = v0[14];
  v13 = v0[13];
  v4 = v0[10];
  v5 = v0[11];
  sub_24B8F37E8(0, &qword_27F0644F0);
  v11 = sub_24BAAA33C();
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v1;
  v0[6] = sub_24BA15FB8;
  v0[7] = v7;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_24B97ACC4;
  v0[5] = &block_descriptor_16;
  v8 = _Block_copy(v0 + 2);

  sub_24BAA9E4C();
  v0[8] = MEMORY[0x277D84F90];
  sub_24BA15FC0(&qword_27F063470, 255, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F064500);
  sub_24B97C674();
  sub_24BAAA48C();
  MEMORY[0x24C250400](0, v2, v3, v8);
  _Block_release(v8);

  (*(v5 + 8))(v3, v4);
  (*(v12 + 8))(v2, v13);

  v9 = v0[1];

  return v9();
}

uint64_t sub_24BA13C2C(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 224) = a1;
  *(v2 + 232) = v3;

  return MEMORY[0x2822009F8](sub_24BA13CE0, 0, 0);
}

uint64_t sub_24BA13CE0()
{
  v141 = v0;
  v140[1] = *MEMORY[0x277D85DE8];
  v1 = sub_24BAA9FDC();
  v2 = [objc_opt_self() serviceForClientIdentifier_];
  v0[30] = v2;

  sub_24B8F0F04(v3);

  v4 = sub_24BAAA1FC();

  v131 = v0;
  v0[10] = 0;
  v5 = (v0 + 10);
  v129 = v0 + 26;
  v126 = v2;
  v6 = [v2 getAppInfoForBundleIdentifiers:v4 error:v0 + 10];

  v7 = *v5;
  v5[21] = *v5;
  sub_24B8F37E8(0, &qword_27F066CB0);
  v130 = v5;
  v128 = sub_24BAA9EEC();
  v5[22] = v128;
  v8 = v7;

  if (v8)
  {
    if (qword_27F0630F0 != -1)
    {
LABEL_93:
      swift_once();
    }

    v9 = sub_24BAA812C();
    __swift_project_value_buffer(v9, qword_27F077038);
    v10 = v8;
    v11 = sub_24BAA810C();
    v12 = sub_24BAAA2AC();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v140[0] = v14;
      *v13 = 136446466;
      v15 = sub_24BAAA86C();
      v17 = sub_24B8E49D4(v15, v16, v140);

      *(v13 + 4) = v17;
      *(v13 + 12) = 2080;
      v18 = [v10 localizedDescription];
      v19 = sub_24BAAA01C();
      v21 = v20;

      v22 = sub_24B8E49D4(v19, v21, v140);

      *(v13 + 14) = v22;
      _os_log_impl(&dword_24B8D3000, v11, v12, "[%{public}s] %s", v13, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C251390](v14, -1, -1);
      MEMORY[0x24C251390](v13, -1, -1);
    }

    else
    {
    }
  }

  v127 = v8;
  v23 = sub_24BA20C5C(MEMORY[0x277D84F90]);
  v24 = v128;
  v25 = -1;
  v26 = -1 << *(v128 + 32);
  if (-v26 < 64)
  {
    v25 = ~(-1 << -v26);
  }

  v27 = v25 & *(v128 + 64);
  v28 = (63 - v26) >> 6;

  v8 = 0;
LABEL_9:
  if (v27)
  {
    v29 = v27;
    goto LABEL_15;
  }

  while (1)
  {
    v30 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
LABEL_92:
      __break(1u);
      goto LABEL_93;
    }

    if (v30 >= v28)
    {
      break;
    }

    v29 = *(v128 + 64 + 8 * v30);
    ++v8;
    if (v29)
    {
      v8 = v30;
LABEL_15:
      v27 = (v29 - 1) & v29;
      if (!v24[2])
      {
        goto LABEL_9;
      }

      v31 = (v24[6] + ((v8 << 10) | (16 * __clz(__rbit64(v29)))));
      v33 = *v31;
      v32 = v31[1];

      v34 = sub_24BA1575C(v33, v32);
      if ((v35 & 1) == 0)
      {

        goto LABEL_9;
      }

      v138 = *(v24[7] + 8 * v34);
      v36 = [v138 displayName];
      v135 = sub_24BAAA01C();
      v136 = v37;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v140[0] = v23;
      v39 = sub_24BA1575C(v33, v32);
      v41 = v23[2];
      v42 = (v40 & 1) == 0;
      v43 = __OFADD__(v41, v42);
      v44 = v41 + v42;
      if (v43)
      {
        goto LABEL_95;
      }

      v45 = v40;
      if (v23[3] >= v44)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_23;
        }

        v49 = v39;
        sub_24BA20074();
        v39 = v49;
        if (v45)
        {
LABEL_24:
          v47 = v39;

          v23 = v140[0];
          v48 = (*(v140[0] + 56) + 16 * v47);
          *v48 = v135;
          v48[1] = v136;

          v24 = v128;
          goto LABEL_9;
        }
      }

      else
      {
        sub_24BA1E204(v44, isUniquelyReferenced_nonNull_native);
        v39 = sub_24BA1575C(v33, v32);
        if ((v45 & 1) != (v46 & 1))
        {
LABEL_84:

          return sub_24BAAA7CC();
        }

LABEL_23:
        if (v45)
        {
          goto LABEL_24;
        }
      }

      v23 = v140[0];
      *(v140[0] + 8 * (v39 >> 6) + 64) |= 1 << v39;
      v50 = (v23[6] + 16 * v39);
      *v50 = v33;
      v50[1] = v32;
      v51 = (v23[7] + 16 * v39);
      *v51 = v135;
      v51[1] = v136;

      v52 = v23[2];
      v43 = __OFADD__(v52, 1);
      v53 = v52 + 1;
      if (v43)
      {
        goto LABEL_96;
      }

      v23[2] = v53;
      v24 = v128;
      goto LABEL_9;
    }
  }

  v54 = [objc_opt_self() currentNotificationSettingsCenter];
  v55 = [v54 allNotificationSources];

  sub_24B8F37E8(0, &qword_27F0698F0);
  sub_24B9E5ECC();
  v56 = sub_24BAAA20C();
  v131[33] = v56;

  if ((v56 & 0xC000000000000001) != 0)
  {

    sub_24BAAA4DC();
    sub_24BAAA24C();
    v58 = v131[18];
    v57 = v131[19];
    v59 = v131[20];
    v60 = v131[21];
    v61 = v131[22];
  }

  else
  {
    v62 = -1 << *(v56 + 32);
    v57 = v56 + 56;
    v59 = ~v62;
    v63 = -v62;
    if (v63 < 64)
    {
      v64 = ~(-1 << v63);
    }

    else
    {
      v64 = -1;
    }

    v61 = v64 & *(v56 + 56);
    v58 = v56;

    v60 = 0;
  }

  v65 = (v59 + 64) >> 6;
  v134 = v57;
  v132 = v65;
  for (i = v58; ; v58 = i)
  {
    v139 = v23;
    if (v58 < 0)
    {
      break;
    }

    v68 = v60;
    v69 = v61;
    for (j = v60; !v69; ++v68)
    {
      j = v68 + 1;
      if (__OFADD__(v68, 1))
      {
        goto LABEL_88;
      }

      if (j >= v65)
      {
        goto LABEL_57;
      }

      v69 = *(v57 + 8 * j);
    }

    v71 = (v69 - 1) & v69;
    v72 = *(*(v58 + 48) + ((j << 9) | (8 * __clz(__rbit64(v69)))));
    if (!v72)
    {
      goto LABEL_57;
    }

LABEL_46:
    v137 = v71;
    v74 = v72;
    v75 = [v72 sourceIdentifier];
    v76 = sub_24BAAA01C();
    v78 = v77;

    v79 = v74;
    v80 = [v74 displayName];
    v81 = sub_24BAAA01C();
    v83 = v82;

    v8 = swift_isUniquelyReferenced_nonNull_native();
    v140[0] = v139;
    v85 = sub_24BA1575C(v76, v78);
    v86 = *(v139 + 16);
    v87 = (v84 & 1) == 0;
    v88 = v86 + v87;
    if (__OFADD__(v86, v87))
    {
      goto LABEL_91;
    }

    v89 = v84;
    if (*(v139 + 24) >= v88)
    {
      if (v8)
      {
        v92 = v137;
        if (v84)
        {
          goto LABEL_35;
        }
      }

      else
      {
        sub_24BA20074();
        v92 = v137;
        if (v89)
        {
          goto LABEL_35;
        }
      }
    }

    else
    {
      sub_24BA1E204(v88, v8);
      v90 = sub_24BA1575C(v76, v78);
      if ((v89 & 1) != (v91 & 1))
      {
        goto LABEL_84;
      }

      v85 = v90;
      v92 = v137;
      if (v89)
      {
LABEL_35:

        v66 = v140[0];
        v67 = (*(v140[0] + 56) + 16 * v85);
        *v67 = v81;
        v67[1] = v83;

        v23 = v66;
        goto LABEL_36;
      }
    }

    v93 = v140[0];
    *(v140[0] + 8 * (v85 >> 6) + 64) |= 1 << v85;
    v94 = (v93[6] + 16 * v85);
    *v94 = v76;
    v94[1] = v78;
    v95 = (v93[7] + 16 * v85);
    *v95 = v81;
    v95[1] = v83;

    v96 = v93[2];
    v43 = __OFADD__(v96, 1);
    v97 = v96 + 1;
    if (v43)
    {
      goto LABEL_92;
    }

    v23 = v93;
    v93[2] = v97;
LABEL_36:
    v60 = j;
    v61 = v92;
    v57 = v134;
    v65 = v132;
  }

  v73 = sub_24BAAA56C();
  if (v73)
  {
    *v129 = v73;
    swift_dynamicCast();
    v72 = *v130;
    j = v60;
    v71 = v61;
    if (*v130)
    {
      goto LABEL_46;
    }
  }

LABEL_57:
  v98 = v131[28];
  sub_24B8F0C5C();
  v99 = *(v98 + 16);

  if (v99)
  {
    v8 = 0;
    v100 = v131[28] + 40;
    v101 = MEMORY[0x277D84F90];
    do
    {
      v102 = (v100 + 16 * v8);
      v103 = v8;
      while (1)
      {
        if (v103 >= v99)
        {
          goto LABEL_89;
        }

        v8 = v103 + 1;
        if (__OFADD__(v103, 1))
        {
          goto LABEL_90;
        }

        v105 = *(v102 - 1);
        v104 = *v102;
        v106 = v23[2];

        if (!v106)
        {
          break;
        }

        sub_24BA1575C(v105, v104);
        v108 = v107;

        if ((v108 & 1) == 0)
        {
          break;
        }

        ++v103;
        v102 += 2;
        if (v8 == v99)
        {
          goto LABEL_73;
        }
      }

      v109 = swift_isUniquelyReferenced_nonNull_native();
      v140[0] = v101;
      if ((v109 & 1) == 0)
      {
        sub_24B914D68(0, *(v101 + 16) + 1, 1);
        v101 = v140[0];
      }

      v111 = *(v101 + 16);
      v110 = *(v101 + 24);
      if (v111 >= v110 >> 1)
      {
        sub_24B914D68((v110 > 1), v111 + 1, 1);
        v101 = v140[0];
      }

      *(v101 + 16) = v111 + 1;
      v112 = v101 + 16 * v111;
      *(v112 + 32) = v105;
      *(v112 + 40) = v104;
    }

    while (v8 != v99);
  }

  else
  {
    v101 = MEMORY[0x277D84F90];
  }

LABEL_73:
  v113 = v131;
  v131[34] = v101;

  v114 = *(v101 + 16);
  v131[35] = v114;
  if (!v114)
  {
    goto LABEL_81;
  }

  v115 = [objc_opt_self() sharedInstance];
  if (!v115)
  {
    __break(1u);
    goto LABEL_98;
  }

  v116 = v115;
  v117 = [v115 getActivePairedDevice];
  v113 = v131;
  v131[36] = v117;

  if (!v117)
  {
LABEL_81:

    v124 = v113[1];

    return v124(v23);
  }

  v131[43] = v23;
  v131[37] = 0;
  v118 = v131[34];
  if (!v118[2])
  {
    __break(1u);
LABEL_95:
    __break(1u);
LABEL_96:
    __break(1u);
  }

  v131[38] = v118[4];
  v131[39] = v118[5];
  v119 = objc_opt_self();

  v115 = [v119 sharedDeviceConnection];
  v131[40] = v115;
  if (!v115)
  {
LABEL_98:
    __break(1u);
    return MEMORY[0x282200938](v115);
  }

  v120 = v115;
  v121 = v131[36];
  v122 = sub_24BAA9FDC();
  v131[41] = v122;
  v131[2] = v131;
  v131[7] = v129;
  v131[3] = sub_24BA149C4;
  v123 = swift_continuation_init();
  v131[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068C08);
  v131[10] = MEMORY[0x277D85DD0];
  v131[11] = 1107296256;
  v131[12] = sub_24BA15604;
  v131[13] = &block_descriptor_20;
  v131[14] = v123;
  [v120 fetchApplicationOnPairedDevice:v121 withBundleID:v122 completion:?];
  v115 = v131 + 2;

  return MEMORY[0x282200938](v115);
}

uint64_t sub_24BA149C4()
{
  v1 = *(*v0 + 48);
  *(*v0 + 336) = v1;
  if (v1)
  {

    v2 = sub_24BA14F98;
  }

  else
  {
    v2 = sub_24BA14B08;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24BA14B08()
{
  v1 = *(v0 + 208);
  v2 = v0 + 80;
  if (v1)
  {
    v3 = *(v0 + 344);
    v4 = *(v0 + 328);
    v6 = *(v0 + 304);
    v5 = *(v0 + 312);
    v7 = *(v0 + 288);

    v8 = [v1 applicationName];
    v9 = sub_24BAAA01C();
    v11 = v10;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v0 + 80) = v3;
    v13 = sub_24BA1575C(v6, v5);
    v15 = *(v3 + 16);
    v16 = (v14 & 1) == 0;
    v17 = __OFADD__(v15, v16);
    v18 = v15 + v16;
    if (v17)
    {
      __break(1u);
      goto LABEL_28;
    }

    v19 = v14;
    if (*(*(v0 + 344) + 24) >= v18)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v29 = v13;
        sub_24BA20074();
        v13 = v29;
      }
    }

    else
    {
      v21 = *(v0 + 304);
      v20 = *(v0 + 312);
      sub_24BA1E204(v18, isUniquelyReferenced_nonNull_native);
      v13 = sub_24BA1575C(v21, v20);
      if ((v19 & 1) != (v22 & 1))
      {

        return sub_24BAAA7CC();
      }

      v2 = v0 + 80;
    }

    v30 = *(v0 + 312);
    if (v19)
    {
      v31 = v13;

      v28 = *v2;
      v32 = (*(*v2 + 56) + 16 * v31);
      *v32 = v9;
      v32[1] = v11;
    }

    else
    {
      v33 = *(v0 + 304);
      v28 = *(v0 + 80);
      v28[(v13 >> 6) + 8] |= 1 << v13;
      v34 = (v28[6] + 16 * v13);
      *v34 = v33;
      v34[1] = v30;
      v35 = (v28[7] + 16 * v13);
      *v35 = v9;
      v35[1] = v11;

      v36 = v28[2];
      v17 = __OFADD__(v36, 1);
      v37 = v36 + 1;
      if (v17)
      {
        goto LABEL_29;
      }

      v28[2] = v37;
    }

    v27 = *(v0 + 296) + 1;
    if (v27 == *(v0 + 280))
    {
      goto LABEL_18;
    }

    *(v0 + 344) = v28;
  }

  else
  {
    v25 = *(v0 + 320);
    v24 = *(v0 + 328);
    v26 = *(v0 + 288);

    v27 = *(v0 + 296) + 1;
    if (v27 == *(v0 + 280))
    {
      v28 = *(v0 + 344);
LABEL_18:
      v38 = *(v0 + 288);
      v39 = *(v0 + 248);
      v40 = *(v0 + 240);

      v41 = *(v0 + 8);

      return v41(v28);
    }
  }

  *(v0 + 296) = v27;
  v42 = *(v0 + 272);
  if (v27 >= *(v42 + 16))
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }

  v43 = v42 + 16 * v27;
  *(v0 + 304) = *(v43 + 32);
  *(v0 + 312) = *(v43 + 40);
  v44 = objc_opt_self();

  v45 = [v44 sharedDeviceConnection];
  *(v0 + 320) = v45;
  if (v45)
  {
    v46 = v45;
    v47 = *(v0 + 288);
    v48 = sub_24BAA9FDC();
    *(v0 + 328) = v48;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 208;
    *(v0 + 24) = sub_24BA149C4;
    v49 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068C08);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_24BA15604;
    *(v0 + 104) = &block_descriptor_20;
    *(v0 + 112) = v49;
    [v46 fetchApplicationOnPairedDevice:v47 withBundleID:v48 completion:v2];
    v45 = (v0 + 16);
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x282200938](v45);
}

uint64_t sub_24BA14F98()
{
  v35 = v0;
  v34[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 328);
  v2 = *(v0 + 320);
  v3 = *(v0 + 288);
  swift_willThrow();

  if (qword_27F0630F0 != -1)
  {
    swift_once();
  }

  v4 = *(v0 + 336);
  v5 = sub_24BAA812C();
  __swift_project_value_buffer(v5, qword_27F077038);
  v6 = v4;
  v7 = sub_24BAA810C();
  v8 = sub_24BAAA2AC();

  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 336);
  if (v9)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v34[0] = v12;
    *v11 = 136446466;
    v13 = sub_24BAAA86C();
    v15 = sub_24B8E49D4(v13, v14, v34);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2080;
    swift_getErrorValue();
    v16 = sub_24BAAA7DC();
    v18 = sub_24B8E49D4(v16, v17, v34);

    *(v11 + 14) = v18;
    _os_log_impl(&dword_24B8D3000, v7, v8, "[%{public}s] %s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C251390](v12, -1, -1);
    MEMORY[0x24C251390](v11, -1, -1);
  }

  else
  {
  }

  v19 = *(v0 + 296) + 1;
  if (v19 == *(v0 + 280))
  {
    v20 = *(v0 + 344);
    v21 = *(v0 + 288);
    v22 = *(v0 + 248);
    v23 = *(v0 + 240);

    v24 = *(v0 + 8);

    return v24(v20);
  }

  else
  {
    *(v0 + 296) = v19;
    v26 = *(v0 + 272);
    if (v19 >= *(v26 + 16))
    {
      __break(1u);
    }

    v27 = v26 + 16 * v19;
    *(v0 + 304) = *(v27 + 32);
    *(v0 + 312) = *(v27 + 40);
    v28 = objc_opt_self();

    v29 = [v28 sharedDeviceConnection];
    *(v0 + 320) = v29;
    if (v29)
    {
      v30 = v29;
      v31 = *(v0 + 288);
      v32 = sub_24BAA9FDC();
      *(v0 + 328) = v32;
      *(v0 + 16) = v0;
      *(v0 + 56) = v0 + 208;
      *(v0 + 24) = sub_24BA149C4;
      v33 = swift_continuation_init();
      *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068C08);
      *(v0 + 80) = MEMORY[0x277D85DD0];
      *(v0 + 88) = 1107296256;
      *(v0 + 96) = sub_24BA15604;
      *(v0 + 104) = &block_descriptor_20;
      *(v0 + 112) = v33;
      [v30 fetchApplicationOnPairedDevice:v31 withBundleID:v32 completion:v0 + 80];
      v29 = (v0 + 16);
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x282200938](v29);
  }
}

uint64_t sub_24BA153D8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    type metadata accessor for AppNameCache();
    sub_24BA15FC0(&qword_27F064828, v5, type metadata accessor for AppNameCache);
    sub_24BAA814C();
    sub_24BAA816C();

    v6 = a2 + 64;
    v7 = 1 << *(a2 + 32);
    v8 = -1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    v9 = v8 & *(a2 + 64);
    v10 = (v7 + 63) >> 6;
    v22 = a2;

    for (i = 0; v9; result = )
    {
      v12 = i;
LABEL_10:
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v14 = (v12 << 10) | (16 * v13);
      v15 = (*(v22 + 48) + v14);
      v17 = *v15;
      v16 = v15[1];
      v18 = (*(v22 + 56) + v14);
      v19 = *v18;
      v20 = v18[1];
      swift_beginAccess();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v23 = *(v4 + 16);
      *(v4 + 16) = 0x8000000000000000;
      sub_24BA1F838(v19, v20, v17, v16, isUniquelyReferenced_nonNull_native);
      *(v4 + 16) = v23;
      swift_endAccess();
      swift_beginAccess();
      sub_24B9AC694(v17, v16);
      swift_endAccess();
    }

    while (1)
    {
      v12 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v12 >= v10)
      {
      }

      v9 = *(v6 + 8 * v12);
      ++i;
      if (v9)
      {
        i = v12;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_24BA15604(uint64_t a1, void *a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063458);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;
    v9 = a2;

    return MEMORY[0x282200950](v5);
  }
}

uint64_t AppNameCache.deinit()
{

  return v0;
}

uint64_t AppNameCache.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t sub_24BA1575C(uint64_t a1, uint64_t a2)
{
  sub_24BAAA7FC();
  sub_24BAAA07C();
  v4 = sub_24BAAA84C();

  return sub_24BA159A0(a1, a2, v4);
}

unint64_t sub_24BA157D4(uint64_t a1, uint64_t a2, double a3, double a4)
{
  sub_24BAAA7FC();
  sub_24B9AA96C(a3, a4, v10, a1, a2);
  v8 = sub_24BAAA84C();

  return sub_24BA15A58(a1, a2, v8, a3, a4);
}

unint64_t sub_24BA15910(uint64_t a1)
{
  sub_24BAAA01C();
  sub_24BAAA7FC();
  sub_24BAAA07C();
  v2 = sub_24BAAA84C();

  return sub_24BA15C28(a1, v2);
}

unint64_t sub_24BA159A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_24BAAA78C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_24BA15A58(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v6 = -1 << *(v5 + 32);
  v7 = a3 & ~v6;
  if ((*(v5 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v12 = ~v6;
    do
    {
      v15 = *(v5 + 48) + 32 * v7;
      v17 = *(v15 + 8);
      v16 = *(v15 + 16);
      v18 = *(v15 + 24);
      if (*v15)
      {
        if (!a1)
        {
          goto LABEL_10;
        }

        if ([*(*v15 + 16) isEqual_])
        {
          v19 = v17 == a4;
        }

        else
        {
          v19 = 0;
        }
      }

      else
      {
        if (a1)
        {
          goto LABEL_10;
        }

        v19 = v17 == a4;
      }

      if (v19 && v16 == a5 && v18 == a2)
      {
        return v7;
      }

LABEL_10:
      v7 = (v7 + 1) & v12;
    }

    while (((*(v5 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  return v7;
}

unint64_t sub_24BA15B5C(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a2 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = ~v4;
    sub_24B8F37E8(0, a3);
    do
    {
      v7 = *(*(v3 + 48) + 8 * v5);
      v8 = sub_24BAAA3CC();

      if (v8)
      {
        break;
      }

      v5 = (v5 + 1) & v6;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_24BA15C28(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_24BAAA01C();
      v8 = v7;
      if (v6 == sub_24BAAA01C() && v8 == v9)
      {
        break;
      }

      v11 = sub_24BAAA78C();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

uint64_t sub_24BA15D2C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 16);
  if (*(v5 + 16) && (v6 = sub_24BA1575C(a1, a2), (v7 & 1) != 0))
  {
    a1 = *(*(v5 + 56) + 16 * v6);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    sub_24BA1301C(a1, a2);
  }

  return a1;
}

uint64_t sub_24BA15E14()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24BA15E6C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24BA15EB4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24B918F0C;

  return sub_24BA13778(a1, v4, v5, v7, v6);
}

uint64_t objectdestroy_4Tm()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24BA15FC0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t ActivityDetailView.init(modeIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0644E0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v14 - v8;
  *a3 = a1;
  *(a3 + 8) = a2;
  type metadata accessor for ActivityDetailViewHostViewModel();
  v10 = swift_allocObject();
  v11 = OBJC_IVAR____TtC15FocusSettingsUI31ActivityDetailViewHostViewModel__titleBarTitle;
  v14[0] = 0;
  v14[1] = 0xE000000000000000;

  sub_24BAA817C();
  (*(v7 + 32))(v10 + v11, v9, v6);
  sub_24BA17CEC(&qword_27F068C18, type metadata accessor for ActivityDetailViewHostViewModel);
  *(a3 + 40) = sub_24BAA84DC();
  *(a3 + 48) = v12;
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(a3 + 16) = sub_24B941E08;
  *(a3 + 24) = result;
  *(a3 + 32) = 0;
  return result;
}

uint64_t ActivityDetailViewHostViewModel.__allocating_init()()
{
  v0 = swift_allocObject();
  sub_24BAA817C();
  return v0;
}

uint64_t ActivityDetailView.init(modeIdentifier:hostViewModel:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  *(a3 + 8) = a2;
  type metadata accessor for ActivityConfigViewModel();
  swift_allocObject();

  v6 = sub_24B982ABC(a1, a2);
  *(a3 + 16) = sub_24BA17BE0;
  *(a3 + 24) = v6;
  *(a3 + 32) = 0;
  type metadata accessor for ActivityDetailViewHostViewModel();
  sub_24BA17CEC(&qword_27F068C18, type metadata accessor for ActivityDetailViewHostViewModel);

  *(a3 + 40) = sub_24BAA84DC();
  *(a3 + 48) = v7;

  sub_24B9F9490();

  sub_24BA16414();

  sub_24B900C14();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_24BAA81CC();
}

uint64_t sub_24BA16414()
{
  sub_24B984444();
  v0 = sub_24B8D7188();

  if (!v0)
  {
    goto LABEL_18;
  }

  v1 = [v0 mode];

  v2 = [v1 semanticType];
  if (v2 <= 3)
  {
    if (v2 <= 1)
    {
      if (v2)
      {
        if (v2 != 1)
        {
          goto LABEL_18;
        }

        if (qword_27F063110 == -1)
        {
          return sub_24BAA7C2C();
        }
      }

      else if (qword_27F063110 == -1)
      {
        return sub_24BAA7C2C();
      }

LABEL_32:
      swift_once();
      return sub_24BAA7C2C();
    }

LABEL_26:
    if (qword_27F063110 == -1)
    {
      return sub_24BAA7C2C();
    }

    goto LABEL_32;
  }

  if (v2 <= 5)
  {
    if (v2 == 4)
    {
      if (qword_27F063110 == -1)
      {
        return sub_24BAA7C2C();
      }
    }

    else if (qword_27F063110 == -1)
    {
      return sub_24BAA7C2C();
    }

    goto LABEL_32;
  }

  switch(v2)
  {
    case 6:
      goto LABEL_26;
    case 7:
      if (qword_27F063110 == -1)
      {
        return sub_24BAA7C2C();
      }

      goto LABEL_32;
    case 8:
      if (qword_27F063110 == -1)
      {
        return sub_24BAA7C2C();
      }

      goto LABEL_32;
  }

LABEL_18:
  if (qword_27F063110 != -1)
  {
    swift_once();
  }

  sub_24BAA7C2C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068D60);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_24BAAD5B0;
  sub_24B984444();
  v4 = sub_24B8D7188();
  if (v4)
  {
    v5 = v4;
    v6 = [v4 mode];

    v7 = [v6 name];
    v8 = sub_24BAAA01C();
    v10 = v9;
  }

  else
  {

    v8 = 0;
    v10 = 0xE000000000000000;
  }

  *(v3 + 56) = MEMORY[0x277D837D0];
  *(v3 + 64) = sub_24B8F6A20();
  *(v3 + 32) = v8;
  *(v3 + 40) = v10;
  v11 = sub_24BAA9FEC();

  return v11;
}

uint64_t ActivityDetailView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v35 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068C20);
  MEMORY[0x28223BE20](v2);
  v4 = &v31 - v3;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068C28);
  v33 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v6 = &v31 - v5;
  v7 = v1[1];
  v38 = *v1;
  v39 = v7;
  v40 = v1[2];
  v41 = *(v1 + 6);
  sub_24B9F7FE8(v4);
  v31 = *(&v39 + 1);
  type metadata accessor for ActivityConfigViewModel();
  sub_24BA17CEC(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
  v8 = sub_24BAA82FC();
  v9 = sub_24BAA813C();
  v10 = &v4[*(v2 + 36)];
  *v10 = v9;
  v10[1] = v8;
  v42[0] = v38;
  v37 = v38;
  v11 = swift_allocObject();
  v12 = v39;
  *(v11 + 16) = v38;
  *(v11 + 32) = v12;
  *(v11 + 48) = v40;
  *(v11 + 64) = v41;
  sub_24B95286C(v42, v36);
  sub_24BA17BF8(&v38, v36);
  v13 = sub_24BA17C30();
  v32 = v6;
  v14 = v2;
  sub_24BAA96DC();

  sub_24B9528C8(v42);
  sub_24BA17D98(v4);
  sub_24BAA82FC();
  sub_24B984444();
  v15 = sub_24B8D7188();
  if (v15)
  {
    v16 = v15;
    v17 = [v15 mode];

    v18 = [v17 name];
    v19 = sub_24BAAA01C();
    v21 = v20;
  }

  else
  {

    v19 = 0;
    v21 = 0xE000000000000000;
  }

  *&v37 = v19;
  *(&v37 + 1) = v21;
  v22 = swift_allocObject();
  v23 = v39;
  *(v22 + 16) = v38;
  *(v22 + 32) = v23;
  *(v22 + 48) = v40;
  *(v22 + 64) = v41;
  sub_24BA17BF8(&v38, v36);
  v36[0] = v14;
  v36[1] = MEMORY[0x277D837D0];
  v36[2] = v13;
  v36[3] = MEMORY[0x277D837F8];
  swift_getOpaqueTypeConformance2();
  v24 = v35;
  v25 = v34;
  v26 = v32;
  sub_24BAA96DC();

  (*(v33 + 8))(v26, v25);
  v27 = swift_allocObject();
  v28 = v39;
  *(v27 + 16) = v38;
  *(v27 + 32) = v28;
  *(v27 + 48) = v40;
  *(v27 + 64) = v41;
  v29 = (v24 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068C40) + 36));
  *v29 = sub_24BA17E58;
  v29[1] = v27;
  v29[2] = 0;
  v29[3] = 0;
  return sub_24BA17BF8(&v38, v36);
}

uint64_t sub_24BA16E08()
{
  type metadata accessor for ActivityConfigViewModel();
  sub_24BA17CEC(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
  sub_24BAA82FC();
  swift_getKeyPath();
  swift_getKeyPath();

  sub_24BAA81BC();

  swift_getKeyPath();
  swift_getKeyPath();

  sub_24BAA81CC();
  sub_24B982320(v1, v2);
}

uint64_t sub_24BA16F58()
{
  type metadata accessor for ActivityConfigViewModel();
  sub_24BA17CEC(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);

  sub_24BAA82FC();
  sub_24BA16414();

  swift_getKeyPath();
  swift_getKeyPath();
  return sub_24BAA81CC();
}

void sub_24BA17064()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CEB680]) init];
  v1 = sub_24BAA9FDC();
  [v0 logColoringBookWasSeenForModeIdentifier_];
}

uint64_t sub_24BA170E4@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24BAA81BC();

  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_24BA17164()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_24BAA81CC();
}

uint64_t sub_24BA171E8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24BAA81BC();

  return v1;
}

uint64_t sub_24BA1725C()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_24BAA81CC();
}

void (*sub_24BA172D8(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
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
  *(v3 + 48) = sub_24BAA81AC();
  return sub_24BA1737C;
}

void sub_24BA1737C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t sub_24BA173E4()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0644E0);
  sub_24BAA818C();
  return swift_endAccess();
}

uint64_t sub_24BA1745C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064548);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2);
  v9(v6, v8, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0644E0);
  sub_24BAA819C();
  swift_endAccess();
  return (*(v3 + 8))(v8, v2);
}

uint64_t sub_24BA175E0()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0644E0);
  sub_24BAA818C();
  return swift_endAccess();
}

uint64_t sub_24BA17654(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064548);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v6 - v4, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0644E0);
  sub_24BAA819C();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*sub_24BA1778C(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
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
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064548);
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

  v10 = OBJC_IVAR____TtC15FocusSettingsUI31ActivityDetailViewHostViewModel__titleBarTitle;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0644E0);
  sub_24BAA818C();
  swift_endAccess();
  return sub_24BA178FC;
}

void sub_24BA178FC(uint64_t a1, char a2)
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
    sub_24BAA819C();
    swift_endAccess();
    v9 = *(v7 + 8);
    v9(v5, v8);
    v10 = v11;
    v9(v11, v8);
  }

  else
  {
    swift_beginAccess();
    sub_24BAA819C();
    swift_endAccess();
    v10 = v11;
    (*(v7 + 8))(v11, v8);
  }

  free(v10);
  free(v5);
  free(v6);

  free(v3);
}

uint64_t ActivityDetailViewHostViewModel.init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0644E0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v7 - v3;
  v5 = OBJC_IVAR____TtC15FocusSettingsUI31ActivityDetailViewHostViewModel__titleBarTitle;
  v7[0] = 0;
  v7[1] = 0xE000000000000000;
  sub_24BAA817C();
  (*(v2 + 32))(v0 + v5, v4, v1);
  return v0;
}

uint64_t type metadata accessor for ActivityDetailViewHostViewModel()
{
  result = qword_27F068C48;
  if (!qword_27F068C48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24BA17BA8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

unint64_t sub_24BA17C30()
{
  result = qword_27F068C30;
  if (!qword_27F068C30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F068C20);
    sub_24BA17CEC(&qword_27F068C38, type metadata accessor for RootActivityConfigView);
    sub_24BA17D34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F068C30);
  }

  return result;
}

uint64_t sub_24BA17CEC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_24BA17D34()
{
  result = qword_27F063E60;
  if (!qword_27F063E60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F063E68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F063E60);
  }

  return result;
}

uint64_t sub_24BA17D98(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068C20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroy_4Tm_0()
{

  sub_24B900C14();

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t ActivityDetailViewHostViewModel.deinit()
{
  v1 = OBJC_IVAR____TtC15FocusSettingsUI31ActivityDetailViewHostViewModel__titleBarTitle;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0644E0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t ActivityDetailViewHostViewModel.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC15FocusSettingsUI31ActivityDetailViewHostViewModel__titleBarTitle;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0644E0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_24BA17F90@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ActivityDetailViewHostViewModel();
  result = sub_24BAA814C();
  *a1 = result;
  return result;
}

void sub_24BA17FF0()
{
  sub_24B99989C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

unint64_t sub_24BA18188()
{
  result = qword_27F068C58;
  if (!qword_27F068C58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F068C40);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F068C28);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F068C20);
    sub_24BA17C30();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F068C58);
  }

  return result;
}

uint64_t sub_24BA182B8@<X0>(void *a1@<X8>)
{
  result = sub_24BAA87AC();
  *a1 = v3;
  return result;
}

uint64_t FocusFilterConfigurationMastheadView.bundleIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15FocusSettingsUI36FocusFilterConfigurationMastheadView_bundleIdentifier);

  return v1;
}

id sub_24BA18360()
{

  v0 = sub_24BAA9FDC();

  return v0;
}

uint64_t FocusFilterConfigurationMastheadView.title.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15FocusSettingsUI36FocusFilterConfigurationMastheadView_title);

  return v1;
}

uint64_t FocusFilterConfigurationMastheadView.subtitle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15FocusSettingsUI36FocusFilterConfigurationMastheadView_subtitle);

  return v1;
}

void FocusFilterConfigurationMastheadView.init(bundleIdentifier:title:subtitle:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = type metadata accessor for FocusFilterConfigurationMasthead();
  v14 = (v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = (&v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  *&v6[OBJC_IVAR____TtC15FocusSettingsUI36FocusFilterConfigurationMastheadView_rootView] = 0;
  v17 = &v6[OBJC_IVAR____TtC15FocusSettingsUI36FocusFilterConfigurationMastheadView_bundleIdentifier];
  *v17 = a1;
  *(v17 + 1) = a2;
  v18 = &v6[OBJC_IVAR____TtC15FocusSettingsUI36FocusFilterConfigurationMastheadView_title];
  *v18 = a3;
  *(v18 + 1) = a4;
  v19 = &v6[OBJC_IVAR____TtC15FocusSettingsUI36FocusFilterConfigurationMastheadView_subtitle];
  *v19 = a5;
  *(v19 + 1) = a6;
  v20 = type metadata accessor for FocusFilterConfigurationMastheadView();
  v58.receiver = v6;
  v58.super_class = v20;

  v21 = objc_msgSendSuper2(&v58, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v21 setTranslatesAutoresizingMaskIntoConstraints_];
  *v16 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068E60);
  swift_storeEnumTagMultiPayload();
  v22 = (v16 + v14[8]);
  v23 = (v16 + v14[9]);
  v24 = v16 + v14[10];
  *v24 = sub_24BA190C8;
  *(v24 + 1) = 0;
  v24[16] = 0;
  v25 = (v16 + v14[7]);
  *v25 = a1;
  v25[1] = a2;
  *v22 = a3;
  v22[1] = a4;
  *v23 = a5;
  v23[1] = a6;
  v26 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068C80));

  v27 = sub_24BAA8C3C();
  v28 = [v27 view];
  v29 = OBJC_IVAR____TtC15FocusSettingsUI36FocusFilterConfigurationMastheadView_rootView;
  v30 = *&v21[OBJC_IVAR____TtC15FocusSettingsUI36FocusFilterConfigurationMastheadView_rootView];
  *&v21[OBJC_IVAR____TtC15FocusSettingsUI36FocusFilterConfigurationMastheadView_rootView] = v28;
  v31 = v28;

  if (!v31)
  {
    __break(1u);
    goto LABEL_10;
  }

  [v31 setTranslatesAutoresizingMaskIntoConstraints_];

  v32 = *&v21[v29];
  if (!v32)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v33 = objc_opt_self();
  v34 = v32;
  v35 = [v33 clearColor];
  [v34 setBackgroundColor_];

  if (!*&v21[v29])
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v57 = v27;
  [v21 addSubview_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064710);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_24BAB08D0;
  v37 = *&v21[v29];
  if (!v37)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v38 = [v37 leadingAnchor];
  v39 = [v21 leadingAnchor];
  v40 = [v38 constraintEqualToAnchor_];

  *(v36 + 32) = v40;
  v41 = *&v21[v29];
  if (!v41)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v42 = [v41 trailingAnchor];
  v43 = [v21 trailingAnchor];
  v44 = [v42 constraintEqualToAnchor_];

  *(v36 + 40) = v44;
  v45 = *&v21[v29];
  if (!v45)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v46 = [v45 bottomAnchor];
  v47 = [v21 bottomAnchor];
  v48 = [v46 constraintEqualToAnchor_];

  *(v36 + 48) = v48;
  v49 = *&v21[v29];
  if (v49)
  {
    v50 = objc_opt_self();
    v51 = v49;

    v52 = [v51 topAnchor];

    v53 = [v21 topAnchor];
    v54 = [v52 constraintEqualToAnchor_];

    *(v36 + 56) = v54;
    sub_24B934EA0();
    v55 = sub_24BAAA11C();

    [v50 activateConstraints_];

    return;
  }

LABEL_15:
  __break(1u);
}

uint64_t type metadata accessor for FocusFilterConfigurationMasthead()
{
  result = qword_27F068C90;
  if (!qword_27F068C90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

int *FocusFilterConfigurationMasthead.init(bundleIdentifier:title:subtitle:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  *a7 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068E60);
  swift_storeEnumTagMultiPayload();
  result = type metadata accessor for FocusFilterConfigurationMasthead();
  v15 = (a7 + result[6]);
  v16 = (a7 + result[7]);
  v17 = a7 + result[8];
  *v17 = sub_24BA190C8;
  *(v17 + 1) = 0;
  v17[16] = 0;
  v18 = (a7 + result[5]);
  *v18 = a1;
  v18[1] = a2;
  *v15 = a3;
  v15[1] = a4;
  *v16 = a5;
  v16[1] = a6;
  return result;
}

id FocusFilterConfigurationMastheadView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void FocusFilterConfigurationMastheadView.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC15FocusSettingsUI36FocusFilterConfigurationMastheadView_rootView) = 0;
  sub_24BAAA6CC();
  __break(1u);
}

id FocusFilterConfigurationMastheadView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id FocusFilterConfigurationMastheadView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FocusFilterConfigurationMastheadView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t FocusFilterConfigurationMasthead.bundleIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for FocusFilterConfigurationMasthead() + 20));

  return v1;
}

uint64_t FocusFilterConfigurationMasthead.bundleIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for FocusFilterConfigurationMasthead() + 20));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t FocusFilterConfigurationMasthead.title.getter()
{
  v1 = *(v0 + *(type metadata accessor for FocusFilterConfigurationMasthead() + 24));

  return v1;
}

uint64_t FocusFilterConfigurationMasthead.title.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for FocusFilterConfigurationMasthead() + 24));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t FocusFilterConfigurationMasthead.subtitle.getter()
{
  v1 = *(v0 + *(type metadata accessor for FocusFilterConfigurationMasthead() + 28));

  return v1;
}

uint64_t FocusFilterConfigurationMasthead.subtitle.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for FocusFilterConfigurationMasthead() + 28));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_24BA190C8()
{
  type metadata accessor for AppIconCache();
  swift_allocObject();
  return sub_24B9AAAD8(8, 0);
}

double FocusFilterConfigurationMasthead.body.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_24BAA8BCC();
  v10 = 0;
  sub_24BA191FC(v1, __src);
  memcpy(__dst, __src, 0x1E1uLL);
  memcpy(v12, __src, 0x1E1uLL);
  sub_24B8F3208(__dst, v7, &qword_27F068C88);
  sub_24B8F35E4(v12, &qword_27F068C88);
  memcpy(&v9[7], __dst, 0x1E1uLL);
  v4 = v10;
  v5 = sub_24BAA90BC();
  *a1 = v3;
  *(a1 + 8) = 0;
  *(a1 + 16) = v4;
  memcpy((a1 + 17), v9, 0x1E8uLL);
  *(a1 + 512) = v5;
  result = 0.0;
  *(a1 + 520) = 0u;
  *(a1 + 536) = 0u;
  *(a1 + 552) = 1;
  return result;
}

uint64_t sub_24BA191FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v117 = a2;
  v3 = sub_24BAA975C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v103 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FocusFilterConfigurationMasthead();
  v8 = *(v7 + 20);
  *&v109 = v7;
  v9 = (a1 + v8);
  v10 = a1;
  v11 = *v9;
  v12 = v9[1];

  v127 = _s15FocusSettingsUI12InstalledAppC16bundleIdentifierACSS_tcfC_0(v11, v12);
  type metadata accessor for AppIconCache();
  sub_24BA1A4D4();
  v13 = sub_24BAA86FC();
  v125 = v14;
  v126 = v13;
  KeyPath = swift_getKeyPath();
  v108 = v10;
  *(&v123 + 1) = sub_24BAA82FC();
  *&v123 = sub_24BAA813C();
  LOBYTE(v205) = 0;
  (*(v4 + 104))(v6, *MEMORY[0x277CE0EE0], v3);
  v122 = sub_24BAA98BC();
  sub_24BAA9D1C();
  sub_24BAA83BC();
  v110 = v193;
  v111 = v195;
  v112 = v197;
  v113 = v198;
  v220 = 1;
  v219 = v194;
  v218 = v196;
  *&v205 = sub_24BA19DA0();
  *(&v205 + 1) = v15;
  v107 = sub_24B8F5E3C();
  v16 = sub_24BAA93CC();
  v18 = v17;
  LOBYTE(v4) = v19;
  sub_24BAA988C();
  v20 = sub_24BAA933C();
  v22 = v21;
  v24 = v23;

  sub_24B900910(v16, v18, v4 & 1);

  sub_24BAA918C();
  sub_24BAA91EC();
  sub_24BAA921C();

  v25 = sub_24BAA939C();
  v115 = v26;
  v116 = v25;
  LOBYTE(v4) = v27;
  v121 = v28;

  sub_24B900910(v20, v22, v24 & 1);
  v29 = v108;

  v120 = swift_getKeyPath();
  v119 = swift_getKeyPath();
  v114 = v4 & 1;
  LOBYTE(v205) = v4 & 1;
  LOBYTE(v169) = 0;
  v118 = sub_24BAA90AC();
  sub_24BAA828C();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  LOBYTE(v205) = 0;
  if (*(v29 + *(v109 + 28) + 8))
  {
    sub_24BAA9D1C();
    sub_24BAA83BC();
    *&v109 = v199;
    v105 = v203;
    v106 = v201;
    v104 = v204;
    LOBYTE(v181[0]) = 1;
    LOBYTE(v152) = v200;
    v134 = v202;
    *&v205 = sub_24BA19E40();
    *(&v205 + 1) = v38;
    v39 = sub_24BAA93CC();
    v41 = v40;
    v43 = v42;
    sub_24BAA988C();
    v44 = sub_24BAA933C();
    v46 = v45;
    v48 = v47;

    sub_24B900910(v39, v41, v43 & 1);

    sub_24BAA916C();
    v49 = sub_24BAA939C();
    v51 = v50;
    v53 = v52;
    v107 = v54;

    sub_24B900910(v44, v46, v48 & 1);

    v55 = swift_getKeyPath();
    v56 = swift_getKeyPath();
    v57 = v53 & 1;
    LOBYTE(v205) = v53 & 1;
    LOBYTE(v169) = 0;
    v58 = swift_getKeyPath();
    LOBYTE(v46) = sub_24BAA90AC();
    sub_24BAA828C();
    LOBYTE(v205) = 0;
    LOBYTE(v44) = v181[0];
    v59 = v152;
    LODWORD(v108) = v134;
    *&v135 = v49;
    *(&v135 + 1) = v51;
    LOBYTE(v136) = v57;
    *(&v136 + 1) = *v129;
    DWORD1(v136) = *&v129[3];
    *(&v136 + 1) = v107;
    *&v137 = v55;
    BYTE8(v137) = 1;
    HIDWORD(v137) = *&v128[3];
    *(&v137 + 9) = *v128;
    DWORD1(v139) = *&v130[3];
    *(&v139 + 1) = *v130;
    HIWORD(v140) = v133;
    *(&v140 + 10) = v132;
    DWORD1(v141) = *&v131[3];
    *(&v141 + 1) = *v131;
    *&v138 = v56;
    *(&v138 + 1) = 7;
    LOBYTE(v139) = 0;
    *&v157 = v49;
    *(&v157 + 1) = v51;
    *(&v139 + 1) = v58;
    *&v140 = 0x3FE0000000000000;
    LOBYTE(v158) = v57;
    WORD4(v140) = 256;
    LOBYTE(v141) = v46;
    *(&v141 + 1) = v60;
    *&v142[0] = v61;
    *(&v142[0] + 1) = v62;
    *&v142[1] = v63;
    BYTE8(v142[1]) = 0;
    v146 = v138;
    v147 = v139;
    v144 = v136;
    v145 = v137;
    v143 = v135;
    *(v150 + 9) = *(v142 + 9);
    v149 = v141;
    v150[0] = v142[0];
    v148 = v140;
    *(&v158 + 1) = *v129;
    DWORD1(v158) = *&v129[3];
    *(&v158 + 1) = v107;
    *&v159 = v55;
    BYTE8(v159) = 1;
    *(&v159 + 9) = *v128;
    HIDWORD(v159) = *&v128[3];
    *&v160 = v56;
    *(&v160 + 1) = 7;
    LOBYTE(v161) = 0;
    DWORD1(v161) = *&v130[3];
    *(&v161 + 1) = *v130;
    *(&v161 + 1) = v58;
    *&v162 = 0x3FE0000000000000;
    WORD4(v162) = 256;
    *(&v162 + 10) = v132;
    HIWORD(v162) = v133;
    LOBYTE(v163) = v46;
    *(&v163 + 1) = *v131;
    DWORD1(v163) = *&v131[3];
    *(&v163 + 1) = v60;
    *&v164 = v61;
    *(&v164 + 1) = v62;
    *&v165 = v63;
    BYTE8(v165) = 0;
    sub_24B8F3208(&v135, &v205, &qword_27F065330);
    sub_24B8F35E4(&v157, &qword_27F065330);
    *&v169 = 0;
    BYTE8(v169) = v44;
    *&v170 = v109;
    BYTE8(v170) = v59;
    *&v171 = v106;
    BYTE8(v171) = v108;
    *&v172 = v105;
    *(&v172 + 1) = v104;
    v178 = v148;
    v179 = v149;
    v180[0] = v150[0];
    *(v180 + 9) = *(v150 + 9);
    v175 = v145;
    v176 = v146;
    v177 = v147;
    v173 = v143;
    v174 = v144;
    nullsub_1(&v169);
    v215 = v179;
    v216[0] = v180[0];
    *(v216 + 9) = *(v180 + 9);
    v211 = v175;
    v212 = v176;
    v213 = v177;
    v214 = v178;
    v207 = v171;
    v208 = v172;
    v209 = v173;
    v210 = v174;
    v205 = v169;
    v206 = v170;
  }

  else
  {
    sub_24B940C58(&v205);
  }

  v64 = v214;
  v65 = v215;
  v179 = v215;
  v180[0] = v216[0];
  *(v180 + 9) = *(v216 + 9);
  v66 = v210;
  v67 = v211;
  v175 = v211;
  v176 = v212;
  v68 = v212;
  v69 = v213;
  v177 = v213;
  v178 = v214;
  v70 = v206;
  v71 = v207;
  v171 = v207;
  v172 = v208;
  v72 = v208;
  v73 = v209;
  v173 = v209;
  v174 = v210;
  v74 = v205;
  v169 = v205;
  v170 = v206;
  *(&v154 + 9) = *v217;
  HIDWORD(v154) = *&v217[3];
  v109 = xmmword_24BAB9CE0;
  DWORD1(v136) = *&v189[3];
  *(&v136 + 1) = *v189;
  *(&v138 + 1) = *v188;
  DWORD1(v138) = *&v188[3];
  *(&v139 + 3) = v191;
  BYTE7(v139) = v192;
  HIDWORD(v139) = *&v190[3];
  *(&v139 + 9) = *v190;
  *&v152 = v127;
  *(&v152 + 1) = 0x404C000000000000;
  *&v153 = v126;
  *(&v153 + 1) = v125;
  *&v154 = KeyPath;
  BYTE8(v154) = 0;
  v155 = v123;
  *(v156 + 8) = xmmword_24BAB9CE0;
  *(v168 + 9) = *(v216 + 9);
  v167 = v215;
  v168[0] = v216[0];
  v166 = v214;
  v157 = v205;
  *&v156[0] = v122;
  *(&v156[1] + 1) = 0x4018000000000000;
  v160 = v208;
  v161 = v209;
  v158 = v206;
  v159 = v207;
  v164 = v212;
  v165 = v213;
  v162 = v210;
  v163 = v211;
  v75 = v154;
  v76 = v123;
  v77 = v156[0];
  v78 = v156[1];
  v79 = v152;
  v80 = v153;
  v81 = v117;
  *(v117 + 104) = v220;
  *(v81 + 112) = v110;
  *(v81 + 120) = v219;
  *(v81 + 128) = v111;
  *(v81 + 136) = v218;
  v82 = v115;
  *(&v135 + 1) = v115;
  v83 = v114;
  LOBYTE(v136) = v114;
  *(&v136 + 1) = v121;
  *&v137 = v120;
  *(v81 + 144) = v112;
  *(&v137 + 1) = 4;
  LOBYTE(v138) = 0;
  *(&v138 + 1) = v119;
  *(v81 + 152) = v113;
  LOWORD(v139) = 1;
  BYTE2(v139) = 1;
  BYTE8(v139) = v118;
  *&v140 = v31;
  *(&v140 + 1) = v33;
  *&v141 = v35;
  *(&v141 + 1) = v37;
  LOBYTE(v142[0]) = 0;
  v84 = v140;
  v85 = v141;
  *(v81 + 272) = 0;
  *(&v151[9] + 7) = v64;
  *(&v151[10] + 7) = v65;
  *(&v151[11] + 7) = v216[0];
  v151[12] = *(v216 + 9);
  *(&v151[5] + 7) = v66;
  *(&v151[6] + 7) = v67;
  *(&v151[7] + 7) = v68;
  *(&v151[8] + 7) = v69;
  *(&v151[1] + 7) = v70;
  *(&v151[2] + 7) = v71;
  *(&v151[3] + 7) = v72;
  *(&v151[4] + 7) = v73;
  *(v151 + 7) = v74;
  v86 = v151[0];
  v87 = v151[1];
  v88 = v151[2];
  v89 = v151[3];
  v90 = v151[4];
  v91 = v151[5];
  v92 = v151[6];
  v93 = v151[7];
  v94 = v151[8];
  v95 = v151[9];
  v96 = v151[10];
  v97 = v151[11];
  v98 = *(v216 + 9);
  v99 = v116;
  *&v135 = v116;
  *(v81 + 32) = v75;
  *(v81 + 48) = v76;
  *(v81 + 64) = v77;
  *(v81 + 80) = v78;
  *v81 = v79;
  *(v81 + 16) = v80;
  *(v81 + 224) = v139;
  *(v81 + 240) = v84;
  *(v81 + 256) = v85;
  v100 = v136;
  *(v81 + 160) = v135;
  *(v81 + 176) = v100;
  v101 = v138;
  *(v81 + 192) = v137;
  *(v81 + 208) = v101;
  *(v81 + 96) = 0;
  *(v81 + 305) = v88;
  *(v81 + 321) = v89;
  *(v81 + 273) = v86;
  *(v81 + 289) = v87;
  *(v81 + 369) = v92;
  *(v81 + 385) = v93;
  *(v81 + 337) = v90;
  *(v81 + 353) = v91;
  *(v81 + 449) = v97;
  *(v81 + 465) = v98;
  *(v81 + 417) = v95;
  *(v81 + 433) = v96;
  *(v81 + 401) = v94;
  sub_24B8F3208(&v152, &v143, &unk_27F068CC0);
  sub_24B8F3208(&v135, &v143, &qword_27F065320);
  sub_24B8F3208(&v157, &v143, &qword_27F065328);
  sub_24B8F35E4(&v169, &qword_27F065328);
  *&v143 = v99;
  *(&v143 + 1) = v82;
  LOBYTE(v144) = v83;
  *(&v144 + 1) = *v189;
  DWORD1(v144) = *&v189[3];
  *(&v144 + 1) = v121;
  *&v145 = v120;
  *(&v145 + 1) = 4;
  LOBYTE(v146) = 0;
  *(&v146 + 1) = *v188;
  DWORD1(v146) = *&v188[3];
  *(&v146 + 1) = v119;
  LOWORD(v147) = 1;
  BYTE2(v147) = 1;
  BYTE7(v147) = v192;
  *(&v147 + 3) = v191;
  BYTE8(v147) = v118;
  HIDWORD(v147) = *&v190[3];
  *(&v147 + 9) = *v190;
  *&v148 = v31;
  *(&v148 + 1) = v33;
  *&v149 = v35;
  *(&v149 + 1) = v37;
  LOBYTE(v150[0]) = 0;
  sub_24B8F35E4(&v143, &qword_27F065320);
  v181[0] = v127;
  v181[1] = 0x404C000000000000;
  v181[2] = v126;
  v181[3] = v125;
  v181[4] = KeyPath;
  v182 = 0;
  *v183 = *v217;
  *&v183[3] = *&v217[3];
  v184 = v123;
  v186 = v109;
  v185 = v122;
  v187 = 0x4018000000000000;
  return sub_24B8F35E4(v181, &unk_27F068CC0);
}

uint64_t sub_24BA19DA0()
{
  v1 = type metadata accessor for FocusFilterConfigurationMasthead();
  v2 = (v0 + *(v1 + 24));
  v3 = v2[1];
  if (!v3)
  {
    goto LABEL_6;
  }

  v4 = *v2;
  v5 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v5 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (v5)
  {
  }

  else
  {
LABEL_6:
    v6 = (v0 + *(v1 + 20));
    v7 = *v6;
    v8 = v6[1];

    v4 = _s15FocusSettingsUI12InstalledAppC16bundleIdentifierACSS_tcfC_0(v7, v8)[3];
  }

  return v4;
}

uint64_t sub_24BA19E40()
{
  v1 = type metadata accessor for FocusFilterConfigurationMasthead();
  v2 = (v0 + *(v1 + 28));
  v3 = v2[1];
  if (!v3)
  {
    return 0;
  }

  v4 = *v2;
  v5 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v5 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (v5)
  {
    v6 = v4;

    return v6;
  }

  v8 = (v0 + *(v1 + 20));
  v9 = *v8;
  v10 = v8[1];
  v11 = *v8 == 0xD000000000000014 && 0x800000024BAC4200 == v10;
  if (!v11 && (sub_24BAAA78C() & 1) == 0)
  {
    v12 = v9 == 0xD000000000000016 && 0x800000024BAC4220 == v10;
    if (v12 || (sub_24BAAA78C() & 1) != 0)
    {
      if (qword_27F063110 == -1)
      {
        return sub_24BAA7C2C();
      }
    }

    else
    {
      if ((v9 != 0xD000000000000013 || 0x800000024BAC4240 != v10) && (sub_24BAAA78C() & 1) == 0 && (v9 != 0xD000000000000013 || 0x800000024BAC4260 != v10) && (sub_24BAAA78C() & 1) == 0)
      {
        if (qword_27F063110 != -1)
        {
          swift_once();
        }

        sub_24BAA7C2C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068D60);
        v13 = swift_allocObject();
        *(v13 + 16) = xmmword_24BAAD5B0;

        v14 = _s15FocusSettingsUI12InstalledAppC16bundleIdentifierACSS_tcfC_0(v9, v10);
        v16 = v14[3];
        v15 = v14[4];

        *(v13 + 56) = MEMORY[0x277D837D0];
        *(v13 + 64) = sub_24B8F6A20();
        *(v13 + 32) = v16;
        *(v13 + 40) = v15;
        v6 = sub_24BAA9FEC();

        return v6;
      }

      if (qword_27F063110 == -1)
      {
        return sub_24BAA7C2C();
      }
    }

    goto LABEL_34;
  }

  if (qword_27F063110 != -1)
  {
LABEL_34:
    swift_once();
  }

  return sub_24BAA7C2C();
}

uint64_t sub_24BA1A238(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068EF0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_24BA1A318(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068EF0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

void sub_24BA1A3E0()
{
  sub_24B936C64();
  if (v0 <= 0x3F)
  {
    sub_24BA1A484();
    if (v1 <= 0x3F)
    {
      sub_24B901BFC();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_24BA1A484()
{
  if (!qword_27F063DF8)
  {
    v0 = sub_24BAAA3FC();
    if (!v1)
    {
      atomic_store(v0, &qword_27F063DF8);
    }
  }
}

unint64_t sub_24BA1A4D4()
{
  result = qword_27F0651D0;
  if (!qword_27F0651D0)
  {
    type metadata accessor for AppIconCache();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0651D0);
  }

  return result;
}

unint64_t sub_24BA1A530()
{
  result = qword_27F068CA0;
  if (!qword_27F068CA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F068CA8);
    sub_24BA1A5BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F068CA0);
  }

  return result;
}

unint64_t sub_24BA1A5BC()
{
  result = qword_27F068CB0;
  if (!qword_27F068CB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F068CB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F068CB0);
  }

  return result;
}

uint64_t sub_24BA1A620@<X0>(void *a1@<X8>)
{
  result = sub_24BAA87AC();
  *a1 = v3;
  return result;
}

__n128 sub_24BA1A68C@<Q0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[4];
  v16 = v1[5];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068D80);
  sub_24BAA9A1C();
  v6 = v13;
  v11 = v14;
  v15 = v5;
  v13 = v16;
  v7 = swift_allocObject();
  v8 = *(v1 + 1);
  v7[1] = *v1;
  v7[2] = v8;
  v7[3] = *(v1 + 2);

  sub_24B8F3208(&v15, v12, &qword_27F066500);
  sub_24B8F3208(&v13, v12, &qword_27F068D90);
  v9 = sub_24BAA90DC();
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  result = v11;
  *(a1 + 24) = v11;
  *(a1 + 40) = sub_24BA1B410;
  *(a1 + 48) = v7;
  *(a1 + 56) = v9;
  return result;
}

id sub_24BA1A8EC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CNContactPickerAdaptor.Coordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_24BA1A9D8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_24BA1AA20(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24BA1AA7C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_24BA1AAC4(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

void sub_24BA1AB44()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068D50);
  sub_24BAA906C();
  v6 = &v7[OBJC_IVAR____TtCV15FocusSettingsUI22CNContactPickerAdaptor11Coordinator_adaptor];
  *v6 = v1;
  *(v6 + 1) = v2;
  *(v6 + 2) = v3;
  *(v6 + 3) = v4;
  *(v6 + 2) = *(v0 + 2);
  *(v6 + 6) = v5;
}

id sub_24BA1AC6C@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[6];
  v8 = type metadata accessor for CNContactPickerAdaptor.Coordinator();
  v12 = *(v1 + 2);
  v9 = objc_allocWithZone(v8);
  *&v9[OBJC_IVAR____TtCV15FocusSettingsUI22CNContactPickerAdaptor11Coordinator_viewController] = 0;
  v10 = &v9[OBJC_IVAR____TtCV15FocusSettingsUI22CNContactPickerAdaptor11Coordinator_adaptor];
  *v10 = v3;
  *(v10 + 1) = v4;
  *(v10 + 2) = v5;
  *(v10 + 3) = v6;
  *(v10 + 2) = v12;
  *(v10 + 6) = v7;
  v13.receiver = v9;
  v13.super_class = v8;

  result = objc_msgSendSuper2(&v13, sel_init);
  *a1 = result;
  return result;
}

uint64_t sub_24BA1AD50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24BA1B364();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_24BA1ADB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24BA1B364();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_24BA1AE18()
{
  sub_24BA1B364();
  sub_24BAA903C();
  __break(1u);
}

unint64_t sub_24BA1AE44()
{
  result = qword_27F068D48;
  if (!qword_27F068D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F068D48);
  }

  return result;
}

char *sub_24BA1AE98(void (*a1)(uint64_t))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068D80);
  sub_24BAA99FC();
  if (!(v14 >> 62))
  {
    v2 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_13:

    a1(MEMORY[0x277D84F90]);
  }

  v2 = sub_24BAAA52C();
  if (!v2)
  {
    goto LABEL_13;
  }

LABEL_3:
  v15 = MEMORY[0x277D84F90];
  result = sub_24B914D68(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v4 = 0;
    do
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x24C2506E0](v4);
      }

      else
      {
        v5 = *(v14 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = [v5 identifier];
      v8 = sub_24BAAA01C();
      v10 = v9;

      v12 = *(v15 + 16);
      v11 = *(v15 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_24B914D68((v11 > 1), v12 + 1, 1);
      }

      ++v4;
      *(v15 + 16) = v12 + 1;
      v13 = v15 + 16 * v12;
      *(v13 + 32) = v8;
      *(v13 + 40) = v10;
    }

    while (v2 != v4);

    a1(v15);
  }

  __break(1u);
  return result;
}

id sub_24BA1B048(uint64_t a1, uint64_t a2)
{
  v3 = [objc_allocWithZone(MEMORY[0x277CBDC18]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068D50);
  sub_24BAA906C();
  [v3 setDelegate_];

  [v3 setShouldAllowSearchForMultiSelect_];
  [v3 setOnlyRealContacts_];
  sub_24B8F37E8(0, &qword_27F068D58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068D60);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_24BAAD5B0;
  *(v4 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F066A30);
  *(v4 + 64) = sub_24BA1B298();
  *(v4 + 32) = a2;

  v5 = sub_24BAAA26C();
  [v3 setPredicateForEnablingContact_];

  [v3 setShouldDisplaySuggestionsController_];
  sub_24B8F37E8(0, &qword_27F068DC0);
  v6 = sub_24BAAA11C();
  [v3 setContactSuggestions_];

  [v3 setMode_];
  v7 = sub_24BAA9FDC();
  v8 = [v3 valueForKey_];

  if (v8)
  {
    sub_24BAAA47C();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
  }

  sub_24BA1B2FC(v10);
  return v3;
}

unint64_t sub_24BA1B298()
{
  result = qword_27F068D70;
  if (!qword_27F068D70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F066A30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F068D70);
  }

  return result;
}

uint64_t sub_24BA1B2FC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063190);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24BA1B364()
{
  result = qword_27F068D78;
  if (!qword_27F068D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F068D78);
  }

  return result;
}

uint64_t sub_24BA1B3B8()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

char *sub_24BA1B410(char *result)
{
  if (result)
  {
    return sub_24BA1AE98(*(v1 + 32));
  }

  return result;
}

unint64_t sub_24BA1B428()
{
  result = qword_27F068DA0;
  if (!qword_27F068DA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F068DA8);
    sub_24BA1AE44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F068DA0);
  }

  return result;
}

uint64_t sub_24BA1B4C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a2)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v4;
    sub_24BA1F838(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v17;
  }

  else
  {
    v12 = sub_24BA1575C(a3, a4);
    v14 = v13;

    if (v14)
    {
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v5;
      v18 = *v5;
      if (!v15)
      {
        sub_24BA20074();
        v16 = v18;
      }

      result = sub_24BA1EFF4(v12, v16);
      *v5 = v16;
    }
  }

  return result;
}

uint64_t sub_24BA1B5CC(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v6 = v5;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v5;
    sub_24BA1F9C0(a1, a2, a3, isUniquelyReferenced_nonNull_native, a4, a5);

    *v5 = v19;
  }

  else
  {
    v14 = sub_24BA157D4(a2, a3, a4, a5);
    if (v15)
    {
      v16 = v14;
      v17 = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v5;
      v20 = *v6;
      if (!v17)
      {
        sub_24BA2035C();
        v18 = v20;
      }

      sub_24BA1F330(v16, v18);

      *v6 = v18;
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_24BA1B708(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_24BA1FD0C(a1, a2, a3, isUniquelyReferenced_nonNull_native, &qword_27F068E28);

    *v3 = v15;
  }

  else
  {
    v10 = sub_24BA1575C(a2, a3);
    v12 = v11;

    if (v12)
    {
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v4;
      v16 = *v4;
      if (!v13)
      {
        sub_24BA20678(&qword_27F068E28);
        v14 = v16;
      }

      result = sub_24BA1F51C(v10, v14);
      *v4 = v14;
    }
  }

  return result;
}

uint64_t sub_24BA1B820(uint64_t a1)
{
  v199[6] = *MEMORY[0x277D85DE8];
  v198 = MEMORY[0x277D84F90];
  v199[0] = sub_24BA20EA0(MEMORY[0x277D84F90]);
  v185 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_24BAAA4DC();
    sub_24B8F37E8(0, &qword_27F0631A0);
    sub_24BA20FA0();
    sub_24BAAA24C();
    a1 = v199[1];
    v3 = v199[2];
    v4 = v199[3];
    v5 = v199[4];
    v6 = v199[5];
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v3 = (a1 + 56);
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(a1 + 56);

    v5 = 0;
  }

  v10 = (v4 + 64) >> 6;
  v195 = MEMORY[0x277D84F90];
  v190 = v1;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        if (a1 < 0)
        {
          if (sub_24BAAA56C())
          {
            sub_24B8F37E8(0, &qword_27F0631A0);
            swift_dynamicCast();
            v13 = v197;
            if (v197)
            {
              goto LABEL_17;
            }
          }

LABEL_47:
          sub_24B8F0C5C();
          v5 = v195;
          if (!(v195 >> 62))
          {
            v60 = *((v195 & 0xFFFFFFFFFFFFFF8) + 0x10);
            goto LABEL_49;
          }

LABEL_123:
          v60 = sub_24BAAA52C();
LABEL_49:
          v61 = v185;
          v62 = v190;
          if (!v60)
          {
            goto LABEL_157;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064710);
          v63 = swift_allocObject();
          *(v63 + 16) = xmmword_24BAAE690;
          v186 = objc_opt_self();
          *(v63 + 32) = [v186 descriptorForRequiredKeysForStyle_];
          v191 = v5 & 0xFFFFFFFFFFFFFF8;
          if (v5 >> 62)
          {
            v64 = sub_24BAAA52C();
          }

          else
          {
            v64 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v196 = v5 & 0xC000000000000001;
          v194 = v64;
          if (v64)
          {
            v65 = 0;
            v66 = MEMORY[0x277D84F90];
            do
            {
              v67 = v65;
              while (1)
              {
                if (v196)
                {
                  v68 = MEMORY[0x24C2506E0](v67, v5);
                }

                else
                {
                  if (v67 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_118;
                  }

                  v68 = *(v5 + 8 * v67 + 32);
                }

                v69 = v68;
                v65 = v67 + 1;
                if (__OFADD__(v67, 1))
                {
                  goto LABEL_117;
                }

                v70 = [v68 contactIdentifier];
                if (v70)
                {
                  break;
                }

                ++v67;
                if (v65 == v64)
                {
                  goto LABEL_70;
                }
              }

              v71 = v70;
              v72 = sub_24BAAA01C();
              v74 = v73;

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v66 = sub_24B99A290(0, *(v66 + 2) + 1, 1, v66);
              }

              v76 = *(v66 + 2);
              v75 = *(v66 + 3);
              if (v76 >= v75 >> 1)
              {
                v66 = sub_24B99A290((v75 > 1), v76 + 1, 1, v66);
              }

              *(v66 + 2) = v76 + 1;
              v77 = &v66[16 * v76];
              *(v77 + 4) = v72;
              *(v77 + 5) = v74;
              v64 = v194;
            }

            while (v65 != v194);
          }

LABEL_70:
          v78 = objc_opt_self();
          v79 = sub_24BAAA11C();

          v80 = [v78 predicateForContactsWithIdentifiers_];

          v81 = *(v190 + 8);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068DB8);
          v82 = sub_24BAAA11C();

          v197 = 0;
          v184 = v80;
          v83 = [v81 unifiedContactsMatchingPredicate:v80 keysToFetch:v82 error:&v197];

          v84 = v197;
          if (v83)
          {
            sub_24B8F37E8(0, &qword_27F068DC0);
            v85 = sub_24BAAA12C();
            v86 = v84;
          }

          else
          {
            v87 = v197;
            v88 = sub_24BAA7CCC();

            swift_willThrow();
            v85 = MEMORY[0x277D84F90];
          }

          v89 = v194;
          if (!(v85 >> 62))
          {
            v90 = *((v85 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v90)
            {
              goto LABEL_75;
            }

LABEL_126:

            if (v89)
            {
              v147 = 0;
              while (1)
              {
                if (v196)
                {
                  v148 = MEMORY[0x24C2506E0](v147, v5);
                }

                else
                {
                  if (v147 >= *(v191 + 16))
                  {
                    goto LABEL_159;
                  }

                  v148 = *(v5 + 8 * v147 + 32);
                }

                v149 = v148;
                v150 = v147 + 1;
                if (__OFADD__(v147, 1))
                {
                  __break(1u);
LABEL_159:
                  __break(1u);
LABEL_160:
                  __break(1u);
LABEL_161:
                  __break(1u);
LABEL_162:
                  __break(1u);
LABEL_163:
                  __break(1u);
LABEL_164:
                  __break(1u);
LABEL_165:
                  __break(1u);
LABEL_166:
                  __break(1u);
                }

                v151 = [v148 contactIdentifier];
                if (v151)
                {
                  break;
                }

LABEL_129:
                ++v147;
                if (v150 == v89)
                {
                  goto LABEL_156;
                }
              }

              v152 = v151;
              v153 = sub_24BAAA01C();
              v155 = v154;

              v156 = *(v62 + 24);
              if (*(v156 + 16))
              {
                v157 = sub_24BA1575C(v153, v155);
                v159 = v158;

                if (v159)
                {
                  v160 = (*(v156 + 56) + 16 * v157);
                  v161 = *v160;
                  v3 = v160[1];

                  v162 = v199[0];
                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  v197 = v162;
                  v164 = sub_24BA158BC(v149);
                  v166 = *(v162 + 2);
                  v167 = (v165 & 1) == 0;
                  v32 = __OFADD__(v166, v167);
                  v168 = v166 + v167;
                  if (v32)
                  {
                    goto LABEL_160;
                  }

                  v169 = v165;
                  if (*(v162 + 3) >= v168)
                  {
                    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                    {
                      v178 = v164;
                      sub_24BA201EC();
                      v164 = v178;
                      v176 = v197;
                      if (v169)
                      {
                        goto LABEL_150;
                      }

                      goto LABEL_152;
                    }
                  }

                  else
                  {
                    sub_24BA1E4C4(v168, isUniquelyReferenced_nonNull_native);
                    v164 = sub_24BA158BC(v149);
                    if ((v169 & 1) != (v170 & 1))
                    {
                      goto LABEL_168;
                    }
                  }

                  v176 = v197;
                  if (v169)
                  {
LABEL_150:
                    v177 = (*(v176 + 7) + 16 * v164);
                    *v177 = v161;
                    v177[1] = v3;

LABEL_154:
                    v199[0] = v176;
                    v5 = v195;
LABEL_155:
                    v89 = v194;
                    goto LABEL_129;
                  }

LABEL_152:
                  *&v176[8 * (v164 >> 6) + 64] |= 1 << v164;
                  *(*(v176 + 6) + 8 * v164) = v149;
                  v179 = (*(v176 + 7) + 16 * v164);
                  *v179 = v161;
                  v179[1] = v3;
                  v180 = *(v176 + 2);
                  v32 = __OFADD__(v180, 1);
                  v181 = v180 + 1;
                  if (v32)
                  {
                    goto LABEL_161;
                  }

                  *(v176 + 2) = v181;
                  goto LABEL_154;
                }
              }

              else
              {
              }

              v171 = sub_24BA158BC(v149);
              if (v172)
              {
                v173 = v171;
                v174 = v199[0];
                v175 = swift_isUniquelyReferenced_nonNull_native();
                v197 = v174;
                v89 = v194;
                if (!v175)
                {
                  sub_24BA201EC();
                  v174 = v197;
                }

                sub_24BA1F1A4(v173, v174);

                v199[0] = v174;
                goto LABEL_129;
              }

              goto LABEL_155;
            }

LABEL_156:

            v61 = v185;
LABEL_157:
            v197 = sub_24B99B2CC(v61);
            sub_24BA1CFAC(&v197, v199);

            v182 = v197;

            return v182;
          }

          v90 = sub_24BAAA52C();
          if (!v90)
          {
            goto LABEL_126;
          }

LABEL_75:
          if (v90 < 1)
          {
            goto LABEL_162;
          }

          v91 = 0;
          v189 = v85 & 0xC000000000000001;
          v92 = &off_279018000;
          v187 = v90;
          v188 = v85;
          while (1)
          {
            v93 = v189 ? MEMORY[0x24C2506E0](v91, v85) : *(v85 + 8 * v91 + 32);
            v5 = v93;
            v94 = [v93 *(v92 + 230)];
            v95 = sub_24BAAA01C();
            v97 = v96;

            v98 = (v97 & 0x2000000000000000) != 0 ? HIBYTE(v97) & 0xF : v95 & 0xFFFFFFFFFFFFLL;
            v99 = [v5 identifier];
            v100 = sub_24BAAA01C();
            v101 = v92;
            v103 = v102;

            if (v98)
            {
              break;
            }

            v118 = [v186 stringFromContact:v5 style:0];
            if (v118)
            {
              v119 = v118;
              v120 = sub_24BAAA01C();
              v122 = v121;

              v123 = swift_isUniquelyReferenced_nonNull_native();
              v197 = *(v62 + 24);
              v124 = v197;
              v125 = sub_24BA1575C(v100, v103);
              v127 = *(v124 + 2);
              v128 = (v126 & 1) == 0;
              v32 = __OFADD__(v127, v128);
              v129 = v127 + v128;
              if (v32)
              {
                goto LABEL_121;
              }

              v3 = v126;
              if (*(v124 + 3) >= v129)
              {
                if (v123)
                {
                  goto LABEL_102;
                }

                v142 = v125;
                sub_24BA20074();
                v125 = v142;
                v117 = v197;
                if ((v3 & 1) == 0)
                {
                  goto LABEL_114;
                }

LABEL_103:
                v137 = (*(v117 + 7) + 16 * v125);
                *v137 = v120;
                v137[1] = v122;
              }

              else
              {
                sub_24BA1E204(v129, v123);
                v125 = sub_24BA1575C(v100, v103);
                if ((v3 & 1) != (v130 & 1))
                {
LABEL_167:
                  sub_24BAAA7CC();
                  __break(1u);
                  goto LABEL_168;
                }

LABEL_102:
                v117 = v197;
                if (v3)
                {
                  goto LABEL_103;
                }

LABEL_114:
                *&v117[8 * (v125 >> 6) + 64] |= 1 << v125;
                v143 = (*(v117 + 6) + 16 * v125);
                *v143 = v100;
                v143[1] = v103;
                v144 = (*(v117 + 7) + 16 * v125);
                *v144 = v120;
                v144[1] = v122;
                v145 = *(v117 + 2);
                v32 = __OFADD__(v145, 1);
                v146 = v145 + 1;
                if (v32)
                {
                  goto LABEL_122;
                }

                *(v117 + 2) = v146;
              }

LABEL_109:
              *(v62 + 24) = v117;
              v90 = v187;
              v85 = v188;
              goto LABEL_110;
            }

            v132 = sub_24BA1575C(v100, v103);
            v134 = v133;

            if (v134)
            {
              v135 = swift_isUniquelyReferenced_nonNull_native();
              v136 = *(v62 + 24);
              v197 = v136;
              v92 = &off_279018000;
              if ((v135 & 1) == 0)
              {
                sub_24BA20074();
                v136 = v197;
              }

              sub_24BA1EFF4(v132, v136);

              *(v62 + 24) = v136;
              goto LABEL_111;
            }

LABEL_110:
            v92 = &off_279018000;
LABEL_111:
            ++v91;
            v89 = v194;
            v5 = v195;
            if (v90 == v91)
            {
              goto LABEL_126;
            }
          }

          v104 = [v5 v101 + 3576];
          v105 = sub_24BAAA01C();
          v107 = v106;

          v108 = swift_isUniquelyReferenced_nonNull_native();
          v197 = *(v62 + 24);
          v109 = v197;
          v111 = sub_24BA1575C(v100, v103);
          v112 = *(v109 + 2);
          v113 = (v110 & 1) == 0;
          v114 = v112 + v113;
          if (__OFADD__(v112, v113))
          {
            goto LABEL_119;
          }

          v3 = v110;
          if (*(v109 + 3) < v114)
          {
            sub_24BA1E204(v114, v108);
            v115 = sub_24BA1575C(v100, v103);
            if ((v3 & 1) != (v116 & 1))
            {
              goto LABEL_167;
            }

            v111 = v115;
            v117 = v197;
            if ((v3 & 1) == 0)
            {
              goto LABEL_106;
            }

LABEL_96:
            v131 = (*(v117 + 7) + 16 * v111);
            *v131 = v105;
            v131[1] = v107;

LABEL_108:
            v62 = v190;
            goto LABEL_109;
          }

          if (v108)
          {
            v117 = v197;
            if (v110)
            {
              goto LABEL_96;
            }
          }

          else
          {
            sub_24BA20074();
            v117 = v197;
            if (v3)
            {
              goto LABEL_96;
            }
          }

LABEL_106:
          *&v117[8 * (v111 >> 6) + 64] |= 1 << v111;
          v138 = (*(v117 + 6) + 16 * v111);
          *v138 = v100;
          v138[1] = v103;
          v139 = (*(v117 + 7) + 16 * v111);
          *v139 = v105;
          v139[1] = v107;
          v140 = *(v117 + 2);
          v32 = __OFADD__(v140, 1);
          v141 = v140 + 1;
          if (v32)
          {
            goto LABEL_120;
          }

          *(v117 + 2) = v141;

          goto LABEL_108;
        }

        v11 = v5;
        v12 = v6;
        if (!v6)
        {
          while (1)
          {
            v5 = v11 + 1;
            if (__OFADD__(v11, 1))
            {
              break;
            }

            if (v5 >= v10)
            {
              goto LABEL_47;
            }

            v12 = v3[v5];
            ++v11;
            if (v12)
            {
              goto LABEL_13;
            }
          }

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
          goto LABEL_123;
        }

LABEL_13:
        v6 = (v12 - 1) & v12;
        v13 = *(*(a1 + 48) + ((v5 << 9) | (8 * __clz(__rbit64(v12)))));
        if (!v13)
        {
          goto LABEL_47;
        }

LABEL_17:
        v14 = *(v190 + 24);
        v15 = sub_24BA22124(v13);
        if (!v16)
        {
          break;
        }

        v193 = v15;
        v37 = v16;
        v38 = swift_isUniquelyReferenced_nonNull_native();
        v197 = v199[0];
        v39 = sub_24BA158BC(v13);
        v41 = *(v199[0] + 16);
        v42 = (v40 & 1) == 0;
        v32 = __OFADD__(v41, v42);
        v43 = v41 + v42;
        if (v32)
        {
          goto LABEL_163;
        }

        v44 = v40;
        if (*(v199[0] + 24) >= v43)
        {
          v47 = v193;
          if ((v38 & 1) == 0)
          {
            v55 = v39;
            sub_24BA201EC();
            v39 = v55;
            v47 = v193;
          }

          v46 = v37;
          v48 = v197;
          if (v44)
          {
            goto LABEL_38;
          }
        }

        else
        {
          sub_24BA1E4C4(v43, v38);
          v39 = sub_24BA158BC(v13);
          if ((v44 & 1) != (v45 & 1))
          {
            goto LABEL_168;
          }

          v46 = v37;
          v47 = v193;
          v48 = v197;
          if (v44)
          {
LABEL_38:
            v52 = (*(v48 + 7) + 16 * v39);
            *v52 = v47;
            v52[1] = v46;

            goto LABEL_39;
          }
        }

        *&v48[8 * (v39 >> 6) + 64] |= 1 << v39;
        *(*(v48 + 6) + 8 * v39) = v13;
        v49 = (*(v48 + 7) + 16 * v39);
        *v49 = v47;
        v49[1] = v46;
        v50 = *(v48 + 2);
        v32 = __OFADD__(v50, 1);
        v51 = v50 + 1;
        if (v32)
        {
          goto LABEL_164;
        }

        *(v48 + 2) = v51;
LABEL_39:
        v199[0] = v48;
      }

      v17 = [v13 contactIdentifier];
      if (!v17)
      {
        goto LABEL_26;
      }

      v18 = v17;
      v19 = sub_24BAAA01C();
      v21 = v20;

      if (*(v14 + 16))
      {
        break;
      }

LABEL_26:
      v36 = v13;
      MEMORY[0x24C2501C0]();
      if (*((v198 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v198 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_24BAAA14C();
      }

      sub_24BAAA16C();

      v195 = v198;
    }

    v22 = sub_24BA1575C(v19, v21);
    v24 = v23;

    if ((v24 & 1) == 0)
    {
      goto LABEL_26;
    }

    v25 = (*(v14 + 56) + 16 * v22);
    v26 = v25[1];
    v192 = *v25;

    v27 = swift_isUniquelyReferenced_nonNull_native();
    v197 = v199[0];
    v28 = sub_24BA158BC(v13);
    v30 = *(v199[0] + 16);
    v31 = (v29 & 1) == 0;
    v32 = __OFADD__(v30, v31);
    v33 = v30 + v31;
    if (v32)
    {
      goto LABEL_165;
    }

    v34 = v29;
    if (*(v199[0] + 24) < v33)
    {
      break;
    }

    if (v27)
    {
      goto LABEL_41;
    }

    v56 = v28;
    sub_24BA201EC();
    v28 = v56;
    v53 = v197;
    if (v34)
    {
LABEL_42:
      v54 = (*(v53 + 7) + 16 * v28);
      *v54 = v192;
      v54[1] = v26;

      goto LABEL_46;
    }

LABEL_44:
    *&v53[8 * (v28 >> 6) + 64] |= 1 << v28;
    *(*(v53 + 6) + 8 * v28) = v13;
    v57 = (*(v53 + 7) + 16 * v28);
    *v57 = v192;
    v57[1] = v26;
    v58 = *(v53 + 2);
    v32 = __OFADD__(v58, 1);
    v59 = v58 + 1;
    if (v32)
    {
      goto LABEL_166;
    }

    *(v53 + 2) = v59;
LABEL_46:
    v199[0] = v53;
  }

  sub_24BA1E4C4(v33, v27);
  v28 = sub_24BA158BC(v13);
  if ((v34 & 1) == (v35 & 1))
  {
LABEL_41:
    v53 = v197;
    if (v34)
    {
      goto LABEL_42;
    }

    goto LABEL_44;
  }

LABEL_168:
  sub_24B8F37E8(0, &qword_27F0631A0);
  sub_24BAAA7CC();
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_24BA1C7C4()
{
  v36[1] = *MEMORY[0x277D85DE8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064710);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_24BAAE690;
  *(v1 + 32) = [objc_opt_self() descriptorForRequiredKeysForStyle_];
  v2 = objc_allocWithZone(MEMORY[0x277CBDA70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068DB8);
  v3 = sub_24BAAA11C();

  v4 = [v2 initWithKeysToFetch_];

  [v4 setSortOrder_];
  v6 = *v0;
  v5 = *(v0 + 8);
  v7 = *(v0 + 16);
  v32 = *(v0 + 24);
  v33 = v7;
  v8 = *(v0 + 32);
  v9 = *(v0 + 40);
  v30 = MEMORY[0x277D84F90];
  v31 = v8;
  v36[0] = v9;
  v10 = swift_allocObject();
  *(v10 + 16) = &v30;
  v11 = *(v0 + 16);
  *(v10 + 24) = *v0;
  *(v10 + 40) = v11;
  *(v10 + 56) = *(v0 + 32);
  v12 = swift_allocObject();
  v12[2] = sub_24BA22B84;
  v12[3] = v10;
  aBlock[4] = sub_24BA22BA0;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24BA1CE58;
  aBlock[3] = &block_descriptor_10;
  v13 = _Block_copy(aBlock);
  v14 = v6;
  v15 = v5;
  sub_24B8F3208(&v33, v34, &unk_27F066A30);
  sub_24B8F3208(&v32, v34, &qword_27F067F88);
  sub_24B8F3208(&v31, v34, &qword_27F068C00);
  sub_24B8F3208(v36, v34, &qword_27F068E30);

  aBlock[0] = 0;
  v16 = [v15 enumerateContactsWithFetchRequest:v4 error:aBlock usingBlock:v13];
  _Block_release(v13);
  v17 = aBlock[0];
  v18 = aBlock[0];
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
LABEL_10:
    swift_once();
    goto LABEL_5;
  }

  if (v16)
  {

    goto LABEL_8;
  }

  v17 = sub_24BAA7CCC();

  swift_willThrow();
  if (qword_27F0630F0 != -1)
  {
    goto LABEL_10;
  }

LABEL_5:
  v19 = sub_24BAA812C();
  __swift_project_value_buffer(v19, qword_27F077038);
  v20 = v17;
  v21 = sub_24BAA810C();
  v22 = sub_24BAAA2AC();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    aBlock[0] = v24;
    *v23 = 136315138;
    swift_getErrorValue();
    v25 = sub_24BAAA7DC();
    v27 = sub_24B8E49D4(v25, v26, aBlock);

    *(v23 + 4) = v27;
    _os_log_impl(&dword_24B8D3000, v21, v22, "Error fetching contacts: %s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v24);
    MEMORY[0x24C251390](v24, -1, -1);
    MEMORY[0x24C251390](v23, -1, -1);
  }

  else
  {
  }

LABEL_8:
  v28 = v30;

  return v28;
}

double sub_24BA1CC5C()
{
  sub_24BA21448(v1);
  xmmword_27F076FF0 = v1[0];
  *&qword_27F077000 = v1[1];
  result = *&v2;
  xmmword_27F077010 = v2;
  return result;
}

uint64_t sub_24BA1CC98(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a1;
  MEMORY[0x24C2501C0]();
  if (*((*a3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_24BAAA14C();
  }

  sub_24BAAA16C();
  v7 = [v6 identifier];
  v8 = sub_24BAAA01C();
  v10 = v9;

  v12 = *(a4 + 32);
  v11 = *(a4 + 40);
  v17 = v11;
  v18 = v12;
  v16[2] = v12;
  v16[3] = v11;
  v13 = v6;
  sub_24B8F3208(&v18, v16, &qword_27F068C00);
  sub_24B8F3208(&v17, v16, &qword_27F068E30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068E00);
  sub_24BAA99FC();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16[0] = v16[4];
  sub_24BA1FD0C(v13, v8, v10, isUniquelyReferenced_nonNull_native, &qword_27F068DE0);

  v16[0] = v12;
  v16[1] = v11;
  sub_24BAA9A0C();
  sub_24B8F35E4(&v18, &qword_27F068C00);
  return sub_24B8F35E4(&v17, &qword_27F068E30);
}

void sub_24BA1CE58(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

BOOL sub_24BA1CEB4(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if (!*(*a3 + 16))
  {
    return 1;
  }

  v4 = *a2;
  sub_24BA158BC(*a1);
  if ((v5 & 1) == 0)
  {
    return 1;
  }

  if (*(*a3 + 16))
  {

    sub_24BA158BC(v4);
    if (v6)
    {
      sub_24B8F5E3C();
      v7 = sub_24BAAA43C();

      return v7 == -1;
    }
  }

  return 0;
}

uint64_t sub_24BA1CFAC(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_24B9A2FBC(v4);
    *a1 = v4;
  }

  v6 = *(v4 + 16);
  v8[0] = v4 + 32;
  v8[1] = v6;
  sub_24BA1D030(v8, a2);
  return sub_24BAAA67C();
}

void sub_24BA1D030(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  v5 = sub_24BAAA75C();
  if (v5 < v4)
  {
    if (v4 >= -1)
    {
      v6 = v5;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_24B8F37E8(0, &qword_27F0631A0);
        v8 = sub_24BAAA15C();
        *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = v7;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFF8;
      v10[0] = (v8 & 0xFFFFFFFFFFFFFF8) + 32;
      v10[1] = v7;
      sub_24BA1D2F0(v10, v11, a1, v6, a2);
      *(v9 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {
    sub_24BA1D150(0, v4, 1, a1, a2);
  }
}

void sub_24BA1D150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (a3 != a2)
  {
    v5 = a5;
    v6 = *a4;
    v7 = *a4 + 8 * a3 - 8;
    v8 = a1 - a3;
LABEL_6:
    v20 = v7;
    v21 = a3;
    v9 = *(v6 + 8 * a3);
    v19 = v8;
    while (1)
    {
      if (*(*v5 + 16))
      {
        v10 = *v7;
        v11 = v9;
        v12 = v10;
        sub_24BA158BC(v11);
        if (v13)
        {
          if (!*(*v5 + 16))
          {

            goto LABEL_5;
          }

          sub_24BA158BC(v12);
          if ((v14 & 1) == 0)
          {

            v5 = a5;
LABEL_5:
            a3 = v21 + 1;
            v7 = v20 + 8;
            v8 = v19 - 1;
            if (v21 + 1 == a2)
            {
              return;
            }

            goto LABEL_6;
          }

          sub_24B8F5E3C();
          v15 = sub_24BAAA43C();

          v5 = a5;
          if (v15 != -1)
          {
            goto LABEL_5;
          }
        }

        else
        {
        }
      }

      if (!v6)
      {
        __break(1u);
        return;
      }

      v16 = *v7;
      v9 = *(v7 + 8);
      *v7 = v9;
      *(v7 + 8) = v16;
      v7 -= 8;
      if (__CFADD__(v8++, 1))
      {
        goto LABEL_5;
      }
    }
  }
}

void sub_24BA1D2F0(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_111:
    v5 = *a1;
    if (!*a1)
    {
      goto LABEL_150;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_144;
    }

    goto LABEL_113;
  }

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  while (2)
  {
    v10 = v8;
    v11 = v8 + 1;
    v125 = v9;
    v115 = v8;
    if (v8 + 1 >= v7)
    {
      ++v8;
      goto LABEL_35;
    }

    v12 = *a3;
    v128 = *(*a3 + 8 * v11);
    v5 = v8;
    v126 = *(v12 + 8 * v8);
    v13 = v126;
    v14 = v128;
    v15 = v13;
    v123 = sub_24BA1CEB4(&v128, &v126, a5);
    if (v122)
    {

      return;
    }

    v16 = v5 + 2;
    v10 = v5;
    if (v5 + 2 >= v7)
    {
      v8 = v5 + 2;
      goto LABEL_25;
    }

    v17 = (v12 + 8 * v5 + 16);
    do
    {
      v8 = v16;
      v18 = *a5;
      if (!*(*a5 + 16))
      {
        goto LABEL_9;
      }

      v19 = *(v17 - 1);
      v5 = *v17;
      v20 = v19;
      v21 = sub_24BA158BC(v5);
      if ((v22 & 1) == 0)
      {

LABEL_9:
        if (!v123)
        {
          v10 = v115;
          goto LABEL_35;
        }

        goto LABEL_10;
      }

      v23 = *a5;
      if (!*(*a5 + 16))
      {

        goto LABEL_19;
      }

      v24 = *(v18 + 56) + 16 * v21;
      v25 = *(v24 + 8);
      v119 = *v24;

      v26 = sub_24BA158BC(v20);
      if ((v27 & 1) == 0)
      {

LABEL_19:
        v9 = v125;
        if (v123)
        {
          v11 = v8 - 1;
          v10 = v115;
          goto LABEL_26;
        }

        goto LABEL_10;
      }

      v28 = (*(v23 + 56) + 16 * v26);
      v30 = *v28;
      v29 = v28[1];
      v128 = v119;
      v129 = v25;
      v126 = v30;
      v127 = v29;
      sub_24B8F5E3C();
      v31 = sub_24BAAA43C();

      v9 = v125;
      if (((v123 ^ (v31 != -1)) & 1) == 0)
      {
        v11 = v8 - 1;
        goto LABEL_24;
      }

LABEL_10:
      v16 = v8 + 1;
      ++v17;
    }

    while (v7 != v8 + 1);
    v11 = v8;
    v8 = v7;
LABEL_24:
    v10 = v115;
LABEL_25:
    if (v123)
    {
LABEL_26:
      if (v8 >= v10)
      {
        if (v10 <= v11)
        {
          v32 = 8 * v8 - 8;
          v33 = 8 * v10;
          v34 = v8;
          v35 = v10;
          do
          {
            if (v35 != --v34)
            {
              v37 = *a3;
              if (!*a3)
              {
                goto LABEL_147;
              }

              v36 = *(v37 + v33);
              *(v37 + v33) = *(v37 + v32);
              *(v37 + v32) = v36;
            }

            ++v35;
            v32 -= 8;
            v33 += 8;
          }

          while (v35 < v34);
        }

        goto LABEL_35;
      }

LABEL_143:
      __break(1u);
LABEL_144:
      v9 = sub_24B99FEB4(v9);
LABEL_113:
      v130 = v9;
      v109 = *(v9 + 2);
      if (v109 >= 2)
      {
        while (*a3)
        {
          v110 = *&v9[16 * v109];
          v111 = *&v9[16 * v109 + 24];
          sub_24BA1DAF0((*a3 + 8 * v110), (*a3 + 8 * *&v9[16 * v109 + 16]), (*a3 + 8 * v111), v5, a5);
          if (v122)
          {
            goto LABEL_121;
          }

          if (v111 < v110)
          {
            goto LABEL_137;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v9 = sub_24B99FEB4(v9);
          }

          if (v109 - 2 >= *(v9 + 2))
          {
            goto LABEL_138;
          }

          v112 = &v9[16 * v109];
          *v112 = v110;
          *(v112 + 1) = v111;
          v130 = v9;
          sub_24B99FE28(v109 - 1);
          v9 = v130;
          v109 = *(v130 + 2);
          if (v109 <= 1)
          {
            goto LABEL_121;
          }
        }

        goto LABEL_148;
      }

LABEL_121:

      return;
    }

LABEL_35:
    v38 = a3[1];
    if (v8 >= v38)
    {
      goto LABEL_60;
    }

    if (__OFSUB__(v8, v10))
    {
      goto LABEL_140;
    }

    if (v8 - v10 >= a4)
    {
      goto LABEL_60;
    }

    v39 = v10 + a4;
    if (__OFADD__(v10, a4))
    {
      goto LABEL_141;
    }

    if (v39 >= v38)
    {
      v39 = a3[1];
    }

    if (v39 < v10)
    {
LABEL_142:
      __break(1u);
      goto LABEL_143;
    }

    if (v8 == v39)
    {
LABEL_60:
      if (v8 < v10)
      {
        goto LABEL_139;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_24B99A39C(0, *(v9 + 2) + 1, 1, v9);
      }

      v63 = *(v9 + 2);
      v62 = *(v9 + 3);
      v64 = v63 + 1;
      if (v63 >= v62 >> 1)
      {
        v9 = sub_24B99A39C((v62 > 1), v63 + 1, 1, v9);
      }

      *(v9 + 2) = v64;
      v65 = &v9[16 * v63];
      *(v65 + 4) = v115;
      *(v65 + 5) = v8;
      v66 = *a1;
      if (!*a1)
      {
        goto LABEL_149;
      }

      if (!v63)
      {
LABEL_3:
        v7 = a3[1];
        if (v8 >= v7)
        {
          goto LABEL_111;
        }

        continue;
      }

      while (1)
      {
        v67 = v64 - 1;
        if (v64 >= 4)
        {
          break;
        }

        if (v64 == 3)
        {
          v68 = *(v9 + 4);
          v69 = *(v9 + 5);
          v78 = __OFSUB__(v69, v68);
          v70 = v69 - v68;
          v71 = v78;
LABEL_80:
          if (v71)
          {
            goto LABEL_128;
          }

          v84 = &v9[16 * v64];
          v86 = *v84;
          v85 = *(v84 + 1);
          v87 = __OFSUB__(v85, v86);
          v88 = v85 - v86;
          v89 = v87;
          if (v87)
          {
            goto LABEL_131;
          }

          v90 = &v9[16 * v67 + 32];
          v92 = *v90;
          v91 = *(v90 + 1);
          v78 = __OFSUB__(v91, v92);
          v93 = v91 - v92;
          if (v78)
          {
            goto LABEL_134;
          }

          if (__OFADD__(v88, v93))
          {
            goto LABEL_135;
          }

          if (v88 + v93 >= v70)
          {
            if (v70 < v93)
            {
              v67 = v64 - 2;
            }

            goto LABEL_101;
          }

          goto LABEL_94;
        }

        v94 = &v9[16 * v64];
        v96 = *v94;
        v95 = *(v94 + 1);
        v78 = __OFSUB__(v95, v96);
        v88 = v95 - v96;
        v89 = v78;
LABEL_94:
        if (v89)
        {
          goto LABEL_130;
        }

        v97 = &v9[16 * v67];
        v99 = *(v97 + 4);
        v98 = *(v97 + 5);
        v78 = __OFSUB__(v98, v99);
        v100 = v98 - v99;
        if (v78)
        {
          goto LABEL_133;
        }

        if (v100 < v88)
        {
          goto LABEL_3;
        }

LABEL_101:
        v105 = v67 - 1;
        if (v67 - 1 >= v64)
        {
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
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
          goto LABEL_142;
        }

        if (!*a3)
        {
          goto LABEL_146;
        }

        v106 = *&v9[16 * v105 + 32];
        v107 = *&v9[16 * v67 + 40];
        sub_24BA1DAF0((*a3 + 8 * v106), (*a3 + 8 * *&v9[16 * v67 + 32]), (*a3 + 8 * v107), v66, a5);
        if (v122)
        {
          goto LABEL_121;
        }

        if (v107 < v106)
        {
          goto LABEL_124;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_24B99FEB4(v9);
        }

        if (v105 >= *(v9 + 2))
        {
          goto LABEL_125;
        }

        v108 = &v9[16 * v105];
        *(v108 + 4) = v106;
        *(v108 + 5) = v107;
        v130 = v9;
        sub_24B99FE28(v67);
        v9 = v130;
        v64 = *(v130 + 2);
        if (v64 <= 1)
        {
          goto LABEL_3;
        }
      }

      v72 = &v9[16 * v64 + 32];
      v73 = *(v72 - 64);
      v74 = *(v72 - 56);
      v78 = __OFSUB__(v74, v73);
      v75 = v74 - v73;
      if (v78)
      {
        goto LABEL_126;
      }

      v77 = *(v72 - 48);
      v76 = *(v72 - 40);
      v78 = __OFSUB__(v76, v77);
      v70 = v76 - v77;
      v71 = v78;
      if (v78)
      {
        goto LABEL_127;
      }

      v79 = &v9[16 * v64];
      v81 = *v79;
      v80 = *(v79 + 1);
      v78 = __OFSUB__(v80, v81);
      v82 = v80 - v81;
      if (v78)
      {
        goto LABEL_129;
      }

      v78 = __OFADD__(v70, v82);
      v83 = v70 + v82;
      if (v78)
      {
        goto LABEL_132;
      }

      if (v83 >= v75)
      {
        v101 = &v9[16 * v67 + 32];
        v103 = *v101;
        v102 = *(v101 + 1);
        v78 = __OFSUB__(v102, v103);
        v104 = v102 - v103;
        if (v78)
        {
          goto LABEL_136;
        }

        if (v70 < v104)
        {
          v67 = v64 - 2;
        }

        goto LABEL_101;
      }

      goto LABEL_80;
    }

    break;
  }

  v40 = *a3;
  v41 = *a3 + 8 * v8 - 8;
  v42 = v10 - v8;
  v116 = v39;
  v124 = *a3;
  while (2)
  {
    v118 = v41;
    v120 = v8;
    v43 = *(v40 + 8 * v8);
    v117 = v42;
LABEL_47:
    v44 = *a5;
    if (!*(*a5 + 16))
    {
      goto LABEL_54;
    }

    v45 = *v41;
    v5 = v43;
    v46 = v45;
    v47 = sub_24BA158BC(v5);
    if ((v48 & 1) == 0)
    {

      goto LABEL_54;
    }

    v49 = *a5;
    if (!*(*a5 + 16))
    {

      v9 = v125;
      goto LABEL_45;
    }

    v50 = a5;
    v51 = *(v44 + 56) + 16 * v47;
    v53 = *v51;
    v52 = *(v51 + 8);

    v54 = sub_24BA158BC(v46);
    if ((v55 & 1) == 0)
    {

      a5 = v50;
      v40 = v124;
      v9 = v125;
LABEL_45:
      v8 = v120 + 1;
      v41 = v118 + 8;
      v42 = v117 - 1;
      if (v120 + 1 == v116)
      {
        v8 = v116;
        v10 = v115;
        goto LABEL_60;
      }

      continue;
    }

    break;
  }

  v56 = (*(v49 + 56) + 16 * v54);
  v58 = *v56;
  v57 = v56[1];
  v128 = v53;
  v129 = v52;
  v126 = v58;
  v127 = v57;
  sub_24B8F5E3C();
  v59 = sub_24BAAA43C();

  a5 = v50;
  v40 = v124;
  v9 = v125;
  if (v59 != -1)
  {
    goto LABEL_45;
  }

LABEL_54:
  if (v40)
  {
    v60 = *v41;
    v43 = *(v41 + 8);
    *v41 = v43;
    *(v41 + 8) = v60;
    v41 -= 8;
    if (__CFADD__(v42++, 1))
    {
      goto LABEL_45;
    }

    goto LABEL_47;
  }

  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
}

uint64_t sub_24BA1DAF0(void **__src, void **a2, void **a3, void **a4, uint64_t a5)
{
  v5 = a5;
  v45 = a4;
  v6 = a3;
  v7 = __src;
  v8 = a2 - __src;
  v9 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v9 = a2 - __src;
  }

  v10 = v9 >> 3;
  v11 = a3 - a2;
  v12 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v12 = a3 - a2;
  }

  v13 = v12 >> 3;
  if (v10 >= v12 >> 3)
  {
    if (a4 != a2 || &a2[v13] <= a4)
    {
      v24 = a2;
      memmove(a4, a2, 8 * v13);
      a2 = v24;
    }

    v25 = a2;
    v15 = &v45[v13];
    if (v11 < 8 || a2 <= __src)
    {
      goto LABEL_55;
    }

LABEL_34:
    __dst = v25;
    v26 = v25 - 1;
    --v6;
    while (1)
    {
      v27 = v6 + 1;
      if (!*(*v5 + 16))
      {
        goto LABEL_48;
      }

      v44 = v6 + 1;
      v28 = v6;
      v29 = v15;
      v30 = v15 - 1;
      v31 = v26;
      v32 = *v26;
      v33 = *(v15 - 1);
      v34 = v32;
      sub_24BA158BC(v33);
      if ((v35 & 1) == 0)
      {

        v15 = v29;
        v6 = v28;
        v26 = v31;
        v27 = v44;
LABEL_48:
        if (v27 != __dst)
        {
          *v6 = *v26;
        }

        if (v15 <= v45 || (v25 = v26, v26 <= __src))
        {
          v25 = v26;
          goto LABEL_55;
        }

        goto LABEL_34;
      }

      if (*(*v5 + 16))
      {

        sub_24BA158BC(v34);
        if (v36)
        {
          sub_24B8F5E3C();
          v37 = sub_24BAAA43C();

          v5 = a5;
          v27 = v44;
          v15 = v29;
          v6 = v28;
          v26 = v31;
          if (v37 == -1)
          {
            goto LABEL_48;
          }

          if (v44 == v15)
          {
            goto LABEL_35;
          }

LABEL_46:
          *v6 = *v30;
          goto LABEL_35;
        }
      }

      else
      {
      }

      v5 = a5;
      v38 = v29;
      v6 = v28;
      v26 = v31;
      if (v44 != v38)
      {
        goto LABEL_46;
      }

LABEL_35:
      --v6;
      v15 = v30;
      if (v30 <= v45)
      {
        v15 = v30;
        v25 = __dst;
        goto LABEL_55;
      }
    }
  }

  v14 = a2;
  if (a4 != __src || &__src[v10] <= a4)
  {
    memmove(a4, __src, 8 * v10);
  }

  v15 = &v45[v10];
  if (v8 >= 8 && v14 < v6)
  {
    v43 = &v45[v10];
    while (1)
    {
      if (!*(*v5 + 16))
      {
        goto LABEL_19;
      }

      v16 = *v45;
      v17 = *v14;
      v18 = v16;
      sub_24BA158BC(v17);
      if ((v19 & 1) == 0)
      {

        v15 = v43;
LABEL_19:
        v22 = v14;
        if (v7 == v14++)
        {
          goto LABEL_21;
        }

LABEL_20:
        *v7 = *v22;
        goto LABEL_21;
      }

      if (!*(*v5 + 16))
      {
        break;
      }

      sub_24BA158BC(v18);
      if ((v20 & 1) == 0)
      {

        goto LABEL_26;
      }

      sub_24B8F5E3C();
      v21 = sub_24BAAA43C();

      v5 = a5;
      v15 = v43;
      if (v21 == -1)
      {
        goto LABEL_19;
      }

LABEL_27:
      v22 = v45++;
      if (v7 != v22)
      {
        goto LABEL_20;
      }

LABEL_21:
      ++v7;
      if (v45 >= v15 || v14 >= v6)
      {
        goto LABEL_53;
      }
    }

LABEL_26:
    v5 = a5;
    v15 = v43;
    goto LABEL_27;
  }

LABEL_53:
  v25 = v7;
LABEL_55:
  if (v25 != v45 || v25 >= (v45 + ((v15 - v45 + (v15 - v45 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v25, v45, 8 * (v15 - v45));
  }

  return 1;
}

uint64_t sub_24BA1DF64(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068E48);
  v34 = a2;
  result = sub_24BAAA71C();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_24BAAA7FC();
      sub_24BAAA07C();
      result = sub_24BAAA84C();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_24BA1E204(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068DC8);
  v37 = a2;
  result = sub_24BAAA71C();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      sub_24BAAA7FC();
      sub_24BAAA07C();
      result = sub_24BAAA84C();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_24BA1E4C4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068DD0);
  v35 = a2;
  result = sub_24BAAA71C();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = (*(v5 + 56) + 16 * v20);
      v23 = *v22;
      v24 = v22[1];
      if ((v35 & 1) == 0)
      {
        v25 = v21;
      }

      result = sub_24BAAA3BC();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = (*(v7 + 56) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_24BA1E748(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068DF0);
  v39 = a2;
  result = sub_24BAAA71C();
  v7 = result;
  if (*(v5 + 16))
  {
    v38 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(v5 + 48) + 32 * v20;
      v22 = *v21;
      v23 = *(v21 + 8);
      v24 = *(v21 + 16);
      v25 = *(v21 + 24);
      v26 = *(*(v5 + 56) + 8 * v20);
      if ((v39 & 1) == 0)
      {

        v27 = v26;
      }

      sub_24BAAA7FC();
      sub_24BAAA81C();
      if (v23 == 0.0)
      {
        v28 = 0.0;
      }

      else
      {
        v28 = v23;
      }

      MEMORY[0x24C2508F0](*&v28);
      if (v24 == 0.0)
      {
        v29 = 0.0;
      }

      else
      {
        v29 = v24;
      }

      MEMORY[0x24C2508F0](*&v29);
      MEMORY[0x24C2508C0](v25);
      result = sub_24BAAA84C();
      v30 = -1 << *(v7 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v14 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v14 + 8 * v32);
          if (v36 != -1)
          {
            v15 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_41:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v31) & ~*(v14 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 32 * v15;
      *v16 = v22;
      *(v16 + 8) = v23;
      *(v16 + 16) = v24;
      *(v16 + 24) = v25;
      *(*(v7 + 56) + 8 * v15) = v26;
      ++*(v7 + 16);
      v5 = v38;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_41;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_39;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v2;
    if (v37 >= 64)
    {
      bzero(v9, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_39:
  *v3 = v7;
  return result;
}

uint64_t sub_24BA1EA44(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068DF8);
  v37 = a2;
  result = sub_24BAAA71C();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(v5 + 48) + 32 * v20;
      v22 = *v21;
      v23 = *(v21 + 8);
      v24 = *(v21 + 16);
      v25 = *(v21 + 24);
      v38 = *(*(v5 + 56) + 16 * v20);
      if ((v37 & 1) == 0)
      {

        v26 = *(&v38 + 1);
      }

      sub_24BAAA7FC();
      sub_24BAAA81C();
      if (v23 == 0.0)
      {
        v27 = 0.0;
      }

      else
      {
        v27 = v23;
      }

      MEMORY[0x24C2508F0](*&v27);
      if (v24 == 0.0)
      {
        v28 = 0.0;
      }

      else
      {
        v28 = v24;
      }

      MEMORY[0x24C2508F0](*&v28);
      MEMORY[0x24C2508C0](v25);
      result = sub_24BAAA84C();
      v29 = -1 << *(v7 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v14 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v14 + 8 * v31);
          if (v35 != -1)
          {
            v15 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_41:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v30) & ~*(v14 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 32 * v15;
      *v16 = v22;
      *(v16 + 8) = v23;
      *(v16 + 16) = v24;
      *(v16 + 24) = v25;
      *(*(v7 + 56) + 16 * v15) = v38;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_41;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_39;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v2;
    if (v36 >= 64)
    {
      bzero((v5 + 64), ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_39:
  *v3 = v7;
  return result;
}

uint64_t sub_24BA1ED58(uint64_t a1, char a2, uint64_t *a3)
{
  v4 = v3;
  v6 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v36 = a2;
  result = sub_24BAAA71C();
  v8 = result;
  if (*(v6 + 16))
  {
    v35 = v6;
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v21 = v18 | (v9 << 6);
      v22 = (*(v6 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v6 + 56) + 8 * v21);
      if ((v36 & 1) == 0)
      {

        v26 = v25;
      }

      sub_24BAAA7FC();
      sub_24BAAA07C();
      result = sub_24BAAA84C();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v6 = v35;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v4 = v3;
      goto LABEL_33;
    }

    v34 = 1 << *(v6 + 32);
    v4 = v3;
    if (v34 >= 64)
    {
      bzero(v10, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v6 + 16) = 0;
  }

LABEL_33:
  *v4 = v8;
  return result;
}

uint64_t sub_24BA1EFF4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_24BAAA4AC() + 1) & ~v5;
    do
    {
      sub_24BAAA7FC();

      sub_24BAAA07C();
      v9 = sub_24BAAA84C();

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
        v15 = (v14 + 16 * v3);
        v16 = (v14 + 16 * v6);
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

void sub_24BA1F1A4(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_24BAAA4AC() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      v10 = sub_24BAAA3BC();

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
          v18 = (v17 + 16 * v3);
          v19 = (v17 + 16 * v6);
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

uint64_t sub_24BA1F330(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_24BAAA4AC() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48) + 32 * v6;
      v10 = *(v9 + 8);
      v11 = *(v9 + 16);
      v12 = *(v9 + 24);
      sub_24BAAA7FC();
      sub_24BAAA81C();
      if (v10 == 0.0)
      {
        v13 = 0.0;
      }

      else
      {
        v13 = v10;
      }

      MEMORY[0x24C2508F0](*&v13);
      if (v11 == 0.0)
      {
        v14 = 0.0;
      }

      else
      {
        v14 = v11;
      }

      MEMORY[0x24C2508F0](*&v14);
      MEMORY[0x24C2508C0](v12);
      result = sub_24BAAA84C();
      v15 = result & v7;
      if (v3 >= v8)
      {
        if (v15 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v8)
      {
        goto LABEL_16;
      }

      if (v3 >= v15)
      {
LABEL_16:
        v16 = *(a2 + 48);
        v17 = (v16 + 32 * v3);
        v18 = (v16 + 32 * v6);
        if (v3 != v6 || v17 >= v18 + 2)
        {
          v19 = v18[1];
          *v17 = *v18;
          v17[1] = v19;
        }

        v20 = *(a2 + 56);
        v21 = (v20 + 8 * v3);
        v22 = (v20 + 8 * v6);
        if (v3 != v6 || v21 >= v22 + 1)
        {
          *v21 = *v22;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_24BA1F51C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_24BAAA4AC() + 1) & ~v5;
    do
    {
      sub_24BAAA7FC();

      sub_24BAAA07C();
      v9 = sub_24BAAA84C();

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

unint64_t sub_24BA1F6CC(char a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_24BA1575C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_24BA1DF64(v16, a4 & 1);
      result = sub_24BA1575C(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = sub_24BAAA7CC();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_24BA1FF0C();
      result = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + result) = a1 & 1;
    return result;
  }

  v21[(result >> 6) + 8] |= 1 << result;
  v22 = (v21[6] + 16 * result);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + result) = a1 & 1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21[2] = v24;
}

uint64_t sub_24BA1F838(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_24BA1575C(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_24BA1E204(v18, a5 & 1);
      v13 = sub_24BA1575C(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        result = sub_24BAAA7CC();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_24BA20074();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v26 = (v23[6] + 16 * v13);
  *v26 = a3;
  v26[1] = a4;
  v27 = (v23[7] + 16 * v13);
  *v27 = a1;
  v27[1] = a2;
  v28 = v23[2];
  v17 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v29;
}

uint64_t sub_24BA1F9C0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, double a5, double a6)
{
  v7 = v6;
  v14 = *v6;
  v15 = sub_24BA157D4(a2, a3, a5, a6);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a4 & 1) == 0)
  {
    if (v22 < v20 || (a4 & 1) != 0)
    {
      sub_24BA1E748(v20, a4 & 1);
      v15 = sub_24BA157D4(a2, a3, a5, a6);
      if ((v21 & 1) != (v24 & 1))
      {
LABEL_18:
        sub_24BAAA7CC();
        __break(1u);
        return MEMORY[0x2821F96F8]();
      }
    }

    else
    {
      v23 = v15;
      sub_24BA2035C();
      v15 = v23;
    }
  }

  v25 = *v7;
  if (v21)
  {
    *(v25[7] + 8 * v15) = a1;

    return MEMORY[0x2821F96F8]();
  }

  v25[(v15 >> 6) + 8] |= 1 << v15;
  v26 = v25[6] + 32 * v15;
  *v26 = a2;
  *(v26 + 8) = a5;
  *(v26 + 16) = a6;
  *(v26 + 24) = a3;
  *(v25[7] + 8 * v15) = a1;
  v27 = v25[2];
  v19 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v25[2] = v28;
}

uint64_t sub_24BA1FB5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, double a6, double a7)
{
  v8 = v7;
  v16 = *v7;
  v17 = sub_24BA157D4(a3, a4, a6, a7);
  v19 = *(v16 + 16);
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_17;
  }

  v23 = v18;
  v24 = *(v16 + 24);
  if (v24 < v22 || (a5 & 1) == 0)
  {
    if (v24 < v22 || (a5 & 1) != 0)
    {
      sub_24BA1EA44(v22, a5 & 1);
      v17 = sub_24BA157D4(a3, a4, a6, a7);
      if ((v23 & 1) != (v26 & 1))
      {
LABEL_18:
        result = sub_24BAAA7CC();
        __break(1u);
        return result;
      }
    }

    else
    {
      v25 = v17;
      sub_24BA204D8();
      v17 = v25;
    }
  }

  v27 = *v8;
  if (v23)
  {
    v28 = (v27[7] + 16 * v17);
    v29 = v28[1];
    *v28 = a1;
    v28[1] = a2;
  }

  v27[(v17 >> 6) + 8] |= 1 << v17;
  v31 = v27[6] + 32 * v17;
  *v31 = a3;
  *(v31 + 8) = a6;
  *(v31 + 16) = a7;
  *(v31 + 24) = a4;
  v32 = (v27[7] + 16 * v17);
  *v32 = a1;
  v32[1] = a2;
  v33 = v27[2];
  v21 = __OFADD__(v33, 1);
  v34 = v33 + 1;
  if (v21)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v27[2] = v34;
}

uint64_t sub_24BA1FD0C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v7 = v5;
  v12 = *v5;
  v13 = sub_24BA1575C(a2, a3);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 < v18 || (a4 & 1) != 0)
    {
      sub_24BA1ED58(v18, a4 & 1, a5);
      v13 = sub_24BA1575C(a2, a3);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        sub_24BAAA7CC();
        __break(1u);
        return MEMORY[0x2821F96F8]();
      }
    }

    else
    {
      v21 = v13;
      sub_24BA20678(a5);
      v13 = v21;
    }
  }

  v23 = *v7;
  if (v19)
  {
    *(v23[7] + 8 * v13) = a1;

    return MEMORY[0x2821F96F8]();
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v24 = (v23[6] + 16 * v13);
  *v24 = a2;
  v24[1] = a3;
  *(v23[7] + 8 * v13) = a1;
  v25 = v23[2];
  v17 = __OFADD__(v25, 1);
  v26 = v25 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v26;
}

unint64_t sub_24BA1FEBC(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

void *sub_24BA1FF0C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068E48);
  v2 = *v0;
  v3 = sub_24BAAA70C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        LOBYTE(v18) = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_24BA20074()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068DC8);
  v2 = *v0;
  v3 = sub_24BAAA70C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_24BA201EC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068DD0);
  v2 = *v0;
  v3 = sub_24BAAA70C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = (*(v2 + 56) + 16 * v17);
        v20 = *v19;
        v21 = v19[1];
        *(*(v4 + 48) + 8 * v17) = v18;
        v22 = (*(v4 + 56) + 16 * v17);
        *v22 = v20;
        v22[1] = v21;
        v23 = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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

id sub_24BA2035C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068DF0);
  v2 = *v0;
  v3 = sub_24BAAA70C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = *(v2 + 48) + 32 * v17;
        v19 = *(v18 + 24);
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = *(v4 + 48) + 32 * v17;
        v22 = *(v18 + 8);
        *v21 = *v18;
        *(v21 + 8) = v22;
        *(v21 + 24) = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
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

      v16 = *(v2 + 64 + 8 * v8);
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

id sub_24BA204D8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068DF8);
  v2 = *v0;
  v3 = sub_24BAAA70C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = 32 * v17;
        v19 = *(v2 + 48) + 32 * v17;
        v20 = *(v19 + 24);
        v17 *= 16;
        v21 = *(v4 + 48) + v18;
        v22 = *(v19 + 8);
        v23 = *(*(v2 + 56) + v17);
        *v21 = *v19;
        *(v21 + 8) = v22;
        *(v21 + 24) = v20;
        *(*(v4 + 56) + v17) = v23;

        result = *(&v23 + 1);
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

      v16 = *(v2 + 64 + 8 * v8);
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

id sub_24BA20678(uint64_t *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *v1;
  v4 = sub_24BAAA70C();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 64);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = (*(v3 + 48) + 16 * v18);
        v20 = v19[1];
        v21 = *(*(v3 + 56) + 8 * v18);
        v22 = (*(v5 + 48) + 16 * v18);
        *v22 = *v19;
        v22[1] = v20;
        *(*(v5 + 56) + 8 * v18) = v21;

        result = v21;
      }

      while (v13);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_19;
      }

      v17 = *(v3 + 64 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

unint64_t sub_24BA207D4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068E48);
    v3 = sub_24BAAA72C();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_24BA1575C(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
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

unint64_t sub_24BA208D0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068DF8);
    v3 = sub_24BAAA72C();

    for (i = (a1 + 64); ; i += 3)
    {
      v5 = *(i - 4);
      v6 = *(i - 3);
      v7 = *(i - 2);
      v8 = *(i - 1);
      v16 = *i;

      v9 = *(&v16 + 1);
      result = sub_24BA157D4(v5, v8, v6, v7);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v3[6] + 32 * result);
      *v12 = v5;
      *(v12 + 1) = v6;
      *(v12 + 2) = v7;
      v12[3] = v8;
      *(v3[7] + 16 * result) = v16;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

unint64_t sub_24BA20A14(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068DF0);
    v3 = sub_24BAAA72C();

    for (i = (a1 + 64); ; i += 5)
    {
      v5 = *(i - 4);
      v6 = *(i - 3);
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      v10 = v9;
      result = sub_24BA157D4(v5, v8, v6, v7);
      if (v12)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v3[6] + 32 * result);
      *v13 = v5;
      *(v13 + 1) = v6;
      *(v13 + 2) = v7;
      v13[3] = v8;
      *(v3[7] + 8 * result) = v10;
      v14 = v3[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v3[2] = v16;
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

unint64_t sub_24BA20B34(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068E50);
    v3 = sub_24BAAA72C();
    v4 = a1 + 32;

    while (1)
    {
      sub_24B8F3208(v4, &v11, &qword_27F068E58);
      v5 = v11;
      result = sub_24BA1602C(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_24B8F1EDC(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

unint64_t sub_24BA20C5C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068DC8);
    v3 = sub_24BAAA72C();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_24BA1575C(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

unint64_t sub_24BA20D70(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068E38);
    v3 = sub_24BAAA72C();
    v4 = a1 + 32;

    while (1)
    {
      sub_24B8F3208(v4, &v13, &qword_27F068E40);
      v5 = v13;
      v6 = v14;
      result = sub_24BA1575C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_24B8F1EDC(&v15, (v3[7] + 32 * result));
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

unint64_t sub_24BA20EA0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068DD0);
    v3 = sub_24BAAA72C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 1);
      v6 = *i;
      v7 = *(i - 2);

      result = sub_24BA158BC(v7);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v7;
      v10 = (v3[7] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
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

unint64_t sub_24BA20FA0()
{
  result = qword_27F0631A8;
  if (!qword_27F0631A8)
  {
    sub_24B8F37E8(255, &qword_27F0631A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F0631A8);
  }

  return result;
}

unint64_t sub_24BA21030(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2);
    v4 = sub_24BAAA72C();

    for (i = (a1 + 48); ; i += 3)
    {
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      v9 = v8;
      result = sub_24BA1575C(v6, v7);
      if (v11)
      {
        break;
      }

      *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v4[6] + 16 * result);
      *v12 = v6;
      v12[1] = v7;
      *(v4[7] + 8 * result) = v9;
      v13 = v4[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v4[2] = v15;
      if (!--v2)
      {

        return v4;
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

unint64_t sub_24BA2112C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068E18);
    v3 = sub_24BAAA72C();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_24BA1602C(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
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

unint64_t sub_24BA2121C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068E08);
    v3 = sub_24BAAA72C();
    v4 = a1 + 32;

    while (1)
    {
      sub_24B8F3208(v4, &v11, &qword_27F068E10);
      v5 = v11;
      result = sub_24BA1602C(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_24B8F1EDC(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

unint64_t sub_24BA21344(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068DE8);
    v3 = sub_24BAAA72C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_24BA1575C(v5, v6);
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

uint64_t sub_24BA21448@<X0>(void *a1@<X8>)
{
  v2 = [objc_allocWithZone(MEMORY[0x277CBDBD0]) init];
  v3 = [objc_allocWithZone(MEMORY[0x277CBDAB8]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F0669E0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_24BABA150;
  *(v4 + 32) = sub_24BAAA01C();
  *(v4 + 40) = v5;
  *(v4 + 48) = sub_24BAAA01C();
  *(v4 + 56) = v6;
  *(v4 + 64) = sub_24BAAA01C();
  *(v4 + 72) = v7;
  *(v4 + 80) = sub_24BAAA01C();
  *(v4 + 88) = v8;
  *(v4 + 96) = sub_24BAAA01C();
  *(v4 + 104) = v9;
  v10 = MEMORY[0x277D84F90];
  v11 = sub_24BA20C5C(MEMORY[0x277D84F90]);
  sub_24BA21030(v10, &qword_27F068DE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068C00);
  result = sub_24BAA99EC();
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v11;
  a1[4] = v13;
  a1[5] = v14;
  return result;
}

uint64_t sub_24BA215AC(void *a1)
{
  v2 = sub_24BAA7CBC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_allocWithZone(MEMORY[0x277CCAC08]) init];
  [v6 setStyle_];
  sub_24BAA7CAC();
  v7 = [a1 namePrefix];
  sub_24BAAA01C();

  sub_24BAA7C6C();
  v8 = [a1 givenName];
  sub_24BAAA01C();

  sub_24BAA7C3C();
  v9 = [a1 middleName];
  sub_24BAAA01C();

  sub_24BAA7C5C();
  v10 = [a1 familyName];
  sub_24BAAA01C();

  sub_24BAA7C4C();
  v11 = [a1 nameSuffix];
  sub_24BAAA01C();

  sub_24BAA7C7C();
  v12 = [a1 nickname];
  sub_24BAAA01C();

  sub_24BAA7C9C();
  v13 = sub_24BAA7C8C();
  v14 = [v6 stringFromPersonNameComponents_];

  v15 = sub_24BAAA01C();
  v17 = v16;

  v18 = HIBYTE(v17) & 0xF;
  if ((v17 & 0x2000000000000000) == 0)
  {
    v18 = v15 & 0xFFFFFFFFFFFFLL;
  }

  if (v18)
  {
    goto LABEL_4;
  }

  v19 = [a1 organizationName];
  v20 = sub_24BAAA01C();
  v22 = v21;

  v23 = HIBYTE(v22) & 0xF;
  if ((v22 & 0x2000000000000000) == 0)
  {
    v23 = v20 & 0xFFFFFFFFFFFFLL;
  }

  if (!v23)
  {
LABEL_4:
    (*(v3 + 8))(v5, v2);
  }

  else
  {

    v24 = [a1 organizationName];
    v15 = sub_24BAAA01C();

    (*(v3 + 8))(v5, v2);
  }

  return v15;
}

uint64_t sub_24BA21900(uint64_t a1, void *a2, unint64_t a3, void *a4)
{
  v55[2] = *MEMORY[0x277D85DE8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064710);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_24BAAE690;
  *(v7 + 32) = [objc_opt_self() descriptorForRequiredKeysForStyle_];
  v8 = objc_opt_self();
  v9 = sub_24BAAA11C();
  v10 = [v8 predicateForContactsWithIdentifiers_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068DB8);
  v11 = sub_24BAAA11C();

  v55[0] = 0;
  v12 = [a2 unifiedContactsMatchingPredicate:v10 keysToFetch:v11 error:v55];

  v13 = v55[0];
  if (v12)
  {
    sub_24B8F37E8(0, &qword_27F068DC0);
    v14 = sub_24BAAA12C();
    v15 = v13;

    v16 = v14;
    if (v14 >> 62)
    {
LABEL_28:
      v47 = v16;
      v17 = sub_24BAAA52C();
      v16 = v47;
      if (v17)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v17 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v17)
      {
LABEL_4:
        if (v17 < 1)
        {
          __break(1u);
        }

        v51 = v16 & 0xC000000000000001;
        v52 = MEMORY[0x277D84F98];
        v49 = v16;
        v50 = v10;
        v48 = v17;
        v18 = 0;
        while (1)
        {
          v53 = v18;
          if (v51)
          {
            v22 = MEMORY[0x24C2506E0]();
          }

          else
          {
            v22 = *(v16 + 8 * v18 + 32);
          }

          v23 = v22;
          v24 = [v22 identifier];
          v25 = sub_24BAAA01C();
          v27 = v26;

          v55[0] = a3;
          v55[1] = a4;

          v28 = v23;
          v10 = a3;

          v29 = a4;

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068E00);
          sub_24BAA99FC();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          a3 = sub_24BA1575C(v25, v27);
          v31 = v54[2];
          v32 = (v16 & 1) == 0;
          v33 = v31 + v32;
          if (__OFADD__(v31, v32))
          {
            __break(1u);
LABEL_27:
            __break(1u);
            goto LABEL_28;
          }

          a4 = v16;
          if (v54[3] >= v33)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              v35 = v54;
              if (v16)
              {
                goto LABEL_18;
              }
            }

            else
            {
              sub_24BA20678(&qword_27F068DE0);
              v35 = v54;
              if (a4)
              {
                goto LABEL_18;
              }
            }
          }

          else
          {
            sub_24BA1ED58(v33, isUniquelyReferenced_nonNull_native, &qword_27F068DE0);
            v34 = sub_24BA1575C(v25, v27);
            if ((a4 & 1) != (v16 & 1))
            {
              result = sub_24BAAA7CC();
              __break(1u);
              return result;
            }

            a3 = v34;
            v35 = v54;
            if (a4)
            {
LABEL_18:
              v36 = v35[7];
              v37 = *(v36 + 8 * a3);
              *(v36 + 8 * a3) = v28;

              goto LABEL_22;
            }
          }

          v35[(a3 >> 6) + 8] |= 1 << a3;
          v38 = (v35[6] + 16 * a3);
          *v38 = v25;
          v38[1] = v27;
          *(v35[7] + 8 * a3) = v28;
          v39 = v35[2];
          v40 = __OFADD__(v39, 1);
          v41 = v39 + 1;
          if (v40)
          {
            goto LABEL_27;
          }

          v35[2] = v41;
LABEL_22:
          a3 = v10;
          a4 = v29;
          sub_24BAA9A0C();

          v42 = sub_24BA215AC(v28);
          if (v43)
          {
            v19 = v42;
            v20 = v43;
            v21 = swift_isUniquelyReferenced_nonNull_native();
            v55[0] = v52;
            sub_24BA1F838(v19, v20, v25, v27, v21);

            v52 = v55[0];
          }

          else
          {
          }

          v16 = v49;
          v18 = v53 + 1;
          if (v48 == v53 + 1)
          {

            return v52;
          }
        }
      }
    }
  }

  else
  {
    v45 = v55[0];
    v46 = sub_24BAA7CCC();

    swift_willThrow();
  }

  return MEMORY[0x277D84F98];
}

char *sub_24BA21DF4(unint64_t a1, void *a2, unint64_t a3, void *a4)
{
  if (a1 >> 62)
  {
    v23 = a4;
    v24 = a3;
    v25 = a2;
    v26 = sub_24BAAA52C();
    a2 = v25;
    a3 = v24;
    a4 = v23;
    v5 = v26;
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
LABEL_16:
    v22 = sub_24BA21900(v6, a2, a3, a4);

    return v22;
  }

  v7 = a2;
  v8 = a3;
  v9 = a4;
  v30 = MEMORY[0x277D84F90];
  result = sub_24B914D68(0, v5 & ~(v5 >> 63), 0);
  if ((v5 & 0x8000000000000000) == 0)
  {
    v27 = v7;
    v28 = v8;
    v29 = v9;
    v11 = 0;
    v6 = v30;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x24C2506E0](v11, a1);
      }

      else
      {
        v12 = *(a1 + 8 * v11 + 32);
      }

      v13 = v12;
      v14 = [v12 contactIdentifier];
      if (v14)
      {
        v15 = v14;
        v16 = sub_24BAAA01C();
        v18 = v17;
      }

      else
      {

        v16 = 0;
        v18 = 0xE000000000000000;
      }

      v20 = *(v30 + 16);
      v19 = *(v30 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_24B914D68((v19 > 1), v20 + 1, 1);
      }

      ++v11;
      *(v30 + 16) = v20 + 1;
      v21 = v30 + 16 * v20;
      *(v21 + 32) = v16;
      *(v21 + 40) = v18;
    }

    while (v5 != v11);
    a3 = v28;
    a4 = v29;
    a2 = v27;
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_24BA21F9C(uint64_t a1, uint64_t a2, void *a3)
{
  v13[1] = *MEMORY[0x277D85DE8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064710);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_24BAAE690;
  *(v4 + 32) = [objc_opt_self() descriptorForRequiredKeysForStyle_];
  v5 = sub_24BAA9FDC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068DB8);
  v6 = sub_24BAAA11C();

  v13[0] = 0;
  v7 = [a3 unifiedContactWithIdentifier:v5 keysToFetch:v6 error:v13];

  if (v7)
  {
    v8 = v13[0];
    v9 = sub_24BA215AC(v7);
  }

  else
  {
    v10 = v13[0];
    v11 = sub_24BAA7CCC();

    swift_willThrow();
    return 0;
  }

  return v9;
}

uint64_t sub_24BA22124(void *a1)
{
  v2 = &selRef_firstName;
  v3 = [a1 firstName];
  v4 = sub_24BAAA01C();
  v6 = v5;

  v7 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v7 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (v7)
  {
    goto LABEL_10;
  }

  v2 = &selRef_lastName;
  v8 = [a1 lastName];
  v9 = sub_24BAAA01C();
  v11 = v10;

  v12 = HIBYTE(v11) & 0xF;
  if ((v11 & 0x2000000000000000) == 0)
  {
    v12 = v9 & 0xFFFFFFFFFFFFLL;
  }

  if (!v12)
  {
    v2 = &selRef_organizationName;
    v13 = [a1 organizationName];
    v14 = sub_24BAAA01C();
    v16 = v15;

    v17 = HIBYTE(v16) & 0xF;
    if ((v16 & 0x2000000000000000) == 0)
    {
      v17 = v14 & 0xFFFFFFFFFFFFLL;
    }

    if (!v17)
    {
      return 0;
    }
  }

LABEL_10:
  v18 = [a1 *v2];
  v19 = sub_24BAAA01C();

  return v19;
}

uint64_t sub_24BA22270(void *a1, void *a2)
{
  v4 = [a1 contactIdentifier];
  if (v4)
  {
    v5 = v4;
    v6 = sub_24BAAA01C();
    v8 = v7;

    v9 = sub_24BA21F9C(v6, v8, a2);
    v11 = v10;

    if (v11)
    {
      v12 = HIBYTE(v11) & 0xF;
      if ((v11 & 0x2000000000000000) == 0)
      {
        v12 = v9 & 0xFFFFFFFFFFFFLL;
      }

      if (v12)
      {
        return v9;
      }
    }
  }

  return sub_24BA22124(a1);
}

void *sub_24BA22340(uint64_t a1, void *a2)
{
  v27[1] = *MEMORY[0x277D85DE8];
  v3 = objc_opt_self();
  v4 = sub_24BAAA11C();
  v5 = [v3 predicateForContactsWithIdentifiers_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068DB8);
  v6 = MEMORY[0x277D84F90];
  v7 = sub_24BAAA11C();
  v27[0] = 0;
  v8 = [a2 unifiedContactsMatchingPredicate:v5 keysToFetch:v7 error:v27];

  v9 = v27[0];
  if (v8)
  {
    sub_24B8F37E8(0, &qword_27F068DC0);
    v10 = sub_24BAAA12C();
    v11 = v9;

    if (!(v10 >> 62))
    {
      goto LABEL_3;
    }

LABEL_14:
    v12 = sub_24BAAA52C();
    if (v12)
    {
      goto LABEL_4;
    }

LABEL_15:

    return v6;
  }

  v23 = v27[0];
  v24 = sub_24BAA7CCC();

  swift_willThrow();
  v10 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62)
  {
    goto LABEL_14;
  }

LABEL_3:
  v12 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v12)
  {
    goto LABEL_15;
  }

LABEL_4:
  v27[0] = v6;
  sub_24B914D68(0, v12 & ~(v12 >> 63), 0);
  if (v12 < 0)
  {
    __break(1u);
  }

  v26 = v5;
  v13 = 0;
  v6 = v27[0];
  do
  {
    if ((v10 & 0xC000000000000001) != 0)
    {
      v14 = MEMORY[0x24C2506E0](v13, v10);
    }

    else
    {
      v14 = *(v10 + 8 * v13 + 32);
    }

    v15 = v14;
    v16 = [v14 identifier];
    v17 = sub_24BAAA01C();
    v19 = v18;

    v27[0] = v6;
    v21 = v6[2];
    v20 = v6[3];
    if (v21 >= v20 >> 1)
    {
      sub_24B914D68((v20 > 1), v21 + 1, 1);
      v6 = v27[0];
    }

    ++v13;
    v6[2] = v21 + 1;
    v22 = &v6[2 * v21];
    v22[4] = v17;
    v22[5] = v19;
  }

  while (v12 != v13);

  return v6;
}

uint64_t sub_24BA225EC(void *a1)
{
  v22[1] = *MEMORY[0x277D85DE8];
  v22[0] = 0;
  v2 = [a1 _ios_meContactIdentifierWithError_];
  v3 = v22[0];
  if (v2)
  {
    v4 = v2;
    v5 = sub_24BAAA01C();
    v7 = v6;
    v8 = v3;

    v9 = sub_24BA21F9C(v5, v7, a1);
  }

  else
  {
    v10 = v22[0];
    v11 = sub_24BAA7CCC();

    swift_willThrow();
    if (qword_27F0630F0 != -1)
    {
      swift_once();
    }

    v12 = sub_24BAA812C();
    __swift_project_value_buffer(v12, qword_27F077038);
    v13 = v11;
    v14 = sub_24BAA810C();
    v15 = sub_24BAAA2AC();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v22[0] = v17;
      *v16 = 136315138;
      swift_getErrorValue();
      v18 = sub_24BAAA7DC();
      v20 = sub_24B8E49D4(v18, v19, v22);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_24B8D3000, v14, v15, "Error fetching me card name: %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x24C251390](v17, -1, -1);
      MEMORY[0x24C251390](v16, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  return v9;
}

id sub_24BA22830(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, double a7, double a8)
{
  v35[2] = *MEMORY[0x277D85DE8];
  v35[0] = a5;
  v35[1] = a6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068E00);
  sub_24BAA99FC();
  if (*(v34 + 16) && (v14 = sub_24BA1575C(a1, a2), (v15 & 1) != 0))
  {
    v16 = *(*(v34 + 56) + 8 * v14);
  }

  else
  {

    v17 = sub_24BAA9FDC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068DB8);
    v18 = sub_24BAAA11C();
    v35[0] = 0;
    v16 = [a4 unifiedContactWithIdentifier:v17 keysToFetch:v18 error:v35];

    if (!v16)
    {
      v31 = v35[0];
      v32 = sub_24BAA7CCC();

      swift_willThrow();
      return 0;
    }

    v19 = v35[0];
  }

  v20 = objc_opt_self();
  v21 = [objc_opt_self() mainScreen];
  [v21 scale];
  v23 = v22;

  v24 = [objc_opt_self() sharedApplication];
  v25 = [v24 userInterfaceLayoutDirection];

  v26 = [v20 scopeWithPointSize:v25 == 1 scale:0 rightToLeft:a7 style:{a8, v23}];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064710);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_24BAAE690;
  *(v27 + 32) = v16;
  sub_24B8F37E8(0, &qword_27F068DC0);
  v28 = v16;
  v29 = sub_24BAAA11C();

  v30 = [a3 avatarImageForContacts:v29 scope:v26];

  swift_unknownObjectRelease();
  return v30;
}

uint64_t sub_24BA22B24()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

char *FocusStatusConfigurationView.init(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068E60);
  swift_storeEnumTagMultiPayload();
  v6 = type metadata accessor for FocusStatusConfigurationView();
  v7 = a3 + v6[5];
  sub_24BAA99EC();
  *v7 = v13;
  *(v7 + 1) = v14;
  v8 = a3 + v6[6];
  sub_24BAA99EC();
  *v8 = v13;
  *(v8 + 1) = v14;
  v9 = a3 + v6[7];
  sub_24BAA99EC();
  *v9 = v13;
  *(v9 + 1) = v14;
  v10 = a3 + v6[8];
  sub_24BAA99EC();
  *v10 = v13;
  *(v10 + 1) = v14;
  v11 = objc_allocWithZone(type metadata accessor for FocusStatusSettingsManager());
  result = sub_24BA267E8(a1, a2);
  *(a3 + v6[9]) = result;
  return result;
}

uint64_t type metadata accessor for FocusStatusConfigurationView()
{
  result = qword_27F068F00;
  if (!qword_27F068F00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t FocusStatusConfigurationView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v91 = a1;
  v93 = sub_24BAA8A4C();
  v92 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v90 = v81 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0654F8);
  MEMORY[0x28223BE20](v4 - 8);
  v106 = v81 - v5;
  v6 = sub_24BAA7E8C();
  MEMORY[0x28223BE20](v6 - 8);
  v105 = v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_24BAA7CDC();
  v103 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v100 = (v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_24BAA9FCC();
  MEMORY[0x28223BE20](v9 - 8);
  v99 = v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_24BAA7CEC();
  v101 = *(v87 - 8);
  v102 = v87 - 8;
  v110 = v101;
  MEMORY[0x28223BE20](v87 - 8);
  v112 = v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24BAA9ECC();
  v114 = *(v12 - 8);
  v115 = v12;
  MEMORY[0x28223BE20](v12);
  v113 = (v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v111 = sub_24BAA862C();
  v98 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v96 = v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068E70);
  MEMORY[0x28223BE20](v116);
  v94 = v81 - v15;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068E78);
  v97 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v95 = v81 - v16;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068E80);
  v82 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v109 = v81 - v17;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068E88);
  v84 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v107 = v81 - v18;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068E90);
  v88 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v85 = v81 - v19;
  v20 = type metadata accessor for FocusStatusConfigurationView();
  v21 = v20 - 8;
  v22 = *(v20 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v20);
  sub_24BA2C0B0(v1, v81 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FocusStatusConfigurationView);
  sub_24BAAA1BC();
  v24 = sub_24BAAA1AC();
  v25 = *(v22 + 80);
  v26 = (v25 + 32) & ~v25;
  v27 = swift_allocObject();
  v28 = MEMORY[0x277D85700];
  *(v27 + 16) = v24;
  *(v27 + 24) = v28;
  sub_24BA2C118(v81 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0), v27 + v26, type metadata accessor for FocusStatusConfigurationView);
  sub_24BA2C0B0(v1, v81 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FocusStatusConfigurationView);
  v29 = sub_24BAAA1AC();
  v30 = swift_allocObject();
  *(v30 + 16) = v29;
  *(v30 + 24) = MEMORY[0x277D85700];
  sub_24BA2C118(v81 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0), v30 + v26, type metadata accessor for FocusStatusConfigurationView);
  sub_24BAA9B9C();
  v31 = v2;
  v117 = v2;
  v118 = v121;
  v81[2] = v121;
  v81[1] = v122;
  v119 = v122;
  v120 = v123;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068E98);
  sub_24B8F384C(&unk_27F068EA0, &qword_27F068E98);
  v32 = v94;
  sub_24BAA92AC();
  v33 = v31;
  sub_24BA2C0B0(v31, v81 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FocusStatusConfigurationView);
  v34 = (v25 + 16) & ~v25;
  v35 = swift_allocObject();
  sub_24BA2C118(v81 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0), v35 + v34, type metadata accessor for FocusStatusConfigurationView);
  v36 = (v32 + *(v116 + 36));
  *v36 = sub_24BA26C70;
  v36[1] = v35;
  v36[2] = 0;
  v36[3] = 0;
  v37 = v33 + *(v21 + 36);
  v38 = *v37;
  v39 = *(v37 + 8);
  v125 = v38;
  v126 = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063B38);
  sub_24BAA9A1C();
  sub_24BA2C0B0(v33, v81 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FocusStatusConfigurationView);
  v40 = swift_allocObject();
  sub_24BA2C118(v81 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0), v40 + v34, type metadata accessor for FocusStatusConfigurationView);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F068EB0);
  v79 = sub_24BA26CF8();
  v80 = sub_24B8F384C(&unk_27F068ED0, &qword_27F068EB0);
  v42 = v95;
  v43 = v116;
  sub_24BAA968C();

  sub_24B8F35E4(v32, &qword_27F068E70);
  v44 = v96;
  sub_24BAA9D7C();
  v121 = v43;
  v122 = v41;
  v123 = v79;
  v124 = v80;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v46 = sub_24BA2BF1C(&qword_27F064860, MEMORY[0x277CDDAB8]);
  v47 = v108;
  v48 = v111;
  v116 = OpaqueTypeConformance2;
  v94 = v46;
  sub_24BAA96EC();
  (*(v98 + 8))(v44, v48);
  (*(v97 + 8))(v42, v47);
  v49 = v113;
  *v113 = 0xD00000000000001CLL;
  v49[1] = 0x800000024BAC4440;
  (*(v114 + 104))();
  sub_24BAA9F6C();
  v50 = type metadata accessor for FocusStatusSettingsManager();
  v51 = v100;
  *v100 = v50;
  v52 = *MEMORY[0x277CC9120];
  v53 = *(v103 + 104);
  v54 = v104;
  v53(v51, v52, v104);
  sub_24BAA7E7C();
  sub_24BAA7CFC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F068EE0);
  *(swift_allocObject() + 16) = xmmword_24BAAD5B0;
  sub_24BAA9F6C();
  *v51 = v50;
  v53(v51, v52, v54);
  v55 = v106;
  sub_24BAA7E7C();
  sub_24BAA7CFC();
  sub_24BAA7D4C();
  v56 = sub_24BAA7D5C();
  v57 = *(v56 - 8);
  result = (*(v57 + 48))(v55, 1, v56);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v121 = v108;
    v122 = v111;
    v123 = v116;
    v124 = v94;
    v59 = swift_getOpaqueTypeConformance2();
    v60 = v112;
    v61 = v113;
    v62 = v83;
    v63 = v109;
    sub_24BAA93DC();

    (*(v110 + 8))(v60, v87);
    (*(v114 + 8))(v61, v115);
    (*(v82 + 8))(v63, v62);
    (*(v57 + 8))(v55, v56);
    v64 = v62;
    if (qword_27F063110 != -1)
    {
      swift_once();
    }

    v121 = sub_24BAA7C2C();
    v122 = v65;
    sub_24B8F5E3C();
    v66 = sub_24BAA93CC();
    v68 = v67;
    v70 = v69;
    v121 = v64;
    v122 = v59;
    v71 = swift_getOpaqueTypeConformance2();
    v72 = v85;
    v73 = v86;
    v74 = v107;
    sub_24BAA951C();
    sub_24B900910(v66, v68, v70 & 1);

    (*(v84 + 8))(v74, v73);
    v75 = v92;
    v76 = v90;
    v77 = v93;
    (*(v92 + 104))(v90, *MEMORY[0x277CDDDC0], v93);
    v121 = v73;
    v122 = v71;
    swift_getOpaqueTypeConformance2();
    v78 = v89;
    sub_24BAA964C();

    (*(v75 + 8))(v76, v77);
    return (*(v88 + 8))(v72, v78);
  }

  return result;
}