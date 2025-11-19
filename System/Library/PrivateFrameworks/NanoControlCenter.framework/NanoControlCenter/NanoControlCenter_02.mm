uint64_t sub_25AF35D5C()
{
  v1[4] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA24790);
  v1[5] = swift_task_alloc();
  v1[6] = sub_25B005B34();
  v1[7] = sub_25B005B24();
  v3 = sub_25B005AE4();
  v1[8] = v3;
  v1[9] = v2;

  return MEMORY[0x2822009F8](sub_25AF35E30, v3, v2);
}

uint64_t sub_25AF35E30()
{
  v1 = v0[4];
  v2 = *(v1 + 56);
  if (v2)
  {
    v3 = v2;

    v4 = v0[1];

    return v4(v2);
  }

  else
  {
    v6 = *(v1 + 64);
    v0[10] = v6;
    if (v6)
    {

      v7 = swift_task_alloc();
      v0[11] = v7;
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24098);
      *v7 = v0;
      v7[1] = sub_25AF36084;
      v9 = v0 + 3;
    }

    else
    {
      v10 = v0[5];
      v11 = sub_25B005B64();
      (*(*(v11 - 8) + 56))(v10, 1, 1, v11);

      v12 = sub_25B005B24();
      v13 = swift_allocObject();
      v14 = MEMORY[0x277D85700];
      v13[2] = v12;
      v13[3] = v14;
      v13[4] = v1;
      v6 = sub_25AF6CAE8(0, 0, v10, &unk_25B00AF88, v13);
      v0[12] = v6;
      *(v1 + 64) = v6;

      v15 = swift_task_alloc();
      v0[13] = v15;
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24098);
      *v15 = v0;
      v15[1] = sub_25AF36220;
      v9 = v0 + 2;
    }

    return MEMORY[0x282200460](v9, v6, v8);
  }
}

uint64_t sub_25AF36084()
{
  v1 = *v0;

  v2 = *(v1 + 72);
  v3 = *(v1 + 64);

  return MEMORY[0x2822009F8](sub_25AF361A4, v3, v2);
}

uint64_t sub_25AF361A4()
{

  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_25AF36220()
{
  v1 = *v0;

  v2 = *(v1 + 72);
  v3 = *(v1 + 64);

  return MEMORY[0x2822009F8](sub_25AF36340, v3, v2);
}

uint64_t sub_25AF36340()
{

  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_25AF363BC(uint64_t a1)
{
  v2 = v1;
  if (*v1 >> 62)
  {
    v4 = sub_25B005EA4();
  }

  else
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_25AF381E4(v4);
  v5 = *v1;
  v6 = *v1 & 0xFFFFFFFFFFFFFF8;
  v7 = *(v6 + 0x10);
  v8 = (*(v6 + 0x18) >> 1) - v7;
  v9 = sub_25AF1647C(&v17, (v6 + 8 * v7 + 32), v8, a1);
  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if (v9)
    {
      v10 = *(v6 + 16);
      v11 = __OFADD__(v10, v9);
      v12 = (v10 + v9);
      if (v11)
      {
        __break(1u);
LABEL_23:
        *(v6 + 16) = a1;
        goto LABEL_8;
      }

      *(v6 + 16) = v12;
    }

    if (v9 != v8)
    {
      goto LABEL_8;
    }
  }

  a1 = *(v6 + 16);
  v14 = sub_25AF385B4();
  if (v14)
  {
    while (1)
    {
      if (a1 + 1 > *((v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v16 = v14;
        sub_25B005A64();
        v14 = v16;
      }

      v5 = *v2;
      v6 = *v2 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *(v6 + 0x18) >> 1)
      {
        v15 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
      }

      else
      {
        v15 = a1;
      }

      while (v15 != a1)
      {
        *(v6 + 32 + 8 * a1++) = v14;
        v14 = sub_25AF385B4();
        if (!v14)
        {
          goto LABEL_23;
        }
      }

      *(v6 + 16) = v15;
      a1 = v15;
    }
  }

LABEL_8:
  sub_25AF18700();

  *v2 = v5;
  return result;
}

uint64_t sub_25AF3653C(unint64_t a1, void (*a2)(uint64_t, void, unint64_t))
{
  if (a1 >> 62)
  {
    v5 = sub_25B005EA4();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v2 >> 62))
  {
    v6 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v7 = __OFADD__(v6, v5);
    result = v6 + v5;
    if (!v7)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = sub_25B005EA4();
  v7 = __OFADD__(v15, v5);
  result = v15 + v5;
  if (v7)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_25AF381E4(result);
  v9 = *v2;
  v10 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v10 + 8 * *(v10 + 0x10) + 32, (*(v10 + 0x18) >> 1) - *(v10 + 0x10), a1);
  v12 = v11;

  if (v12 < v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v12 < 1)
  {
LABEL_9:
    *v2 = v9;
    return result;
  }

  v13 = *(v10 + 16);
  v7 = __OFADD__(v13, v12);
  v14 = v13 + v12;
  if (!v7)
  {
    *(v10 + 16) = v14;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_25AF36634(uint64_t result)
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

  result = sub_25AFCD13C(result, v11, 1, v3);
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
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 8 * v7 + 32), (v6 + 32), 8 * v2);

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

uint64_t sub_25AF36720(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_25AFCD450(result, v10, 1, v3);
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

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_25AF36818()
{
  swift_getKeyPath();
  sub_25AF37B18();
  sub_25B004234();

  swift_beginAccess();
}

uint64_t sub_25AF368A0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_25AF37B18();
  sub_25B004234();

  swift_beginAccess();
  *a2 = *(v3 + 48);
}

uint64_t sub_25AF3695C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 48) = a2;
}

unint64_t sub_25AF369C4(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_47;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v28 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v29 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v25 = isUniquelyReferenced_nonNull_bridgeObject;
    v27 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v3 = MEMORY[0x277D84F90];
    v26 = v1;
    while (1)
    {
      if (v29)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x25F85DD30](v2, v25);
      }

      else
      {
        if (v2 >= *(v28 + 16))
        {
          goto LABEL_41;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v27 + 8 * v2);
      }

      v4 = isUniquelyReferenced_nonNull_bridgeObject;
      v5 = __OFADD__(v2++, 1);
      if (v5)
      {
        break;
      }

      sub_25B005B34();
      sub_25B005B24();
      sub_25B005AE4();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v6 = [v4 localExtensions];
      sub_25AF18BD4(0, &qword_27FA23AB0);
      v7 = sub_25B005A44();

      v8 = v7 >> 62;
      if (v7 >> 62)
      {
        v9 = sub_25B005EA4();
      }

      else
      {
        v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v10 = v3 >> 62;
      if (v3 >> 62)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_25B005EA4();
      }

      else
      {
        isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v32 = v9;
      v5 = __OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v9);
      v11 = isUniquelyReferenced_nonNull_bridgeObject + v9;
      if (v5)
      {
        goto LABEL_42;
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v10)
        {
          v12 = v3 & 0xFFFFFFFFFFFFFF8;
          if (v11 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_24;
          }

          goto LABEL_23;
        }

LABEL_22:
        sub_25B005EA4();
        goto LABEL_23;
      }

      if (v10)
      {
        goto LABEL_22;
      }

LABEL_23:
      isUniquelyReferenced_nonNull_bridgeObject = sub_25B005F44();
      v3 = isUniquelyReferenced_nonNull_bridgeObject;
      v12 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_24:
      v30 = v3;
      v13 = *(v12 + 16);
      v14 = *(v12 + 24);
      if (v8)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_25B005EA4();
        v15 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_28:
          if (((v14 >> 1) - v13) < v32)
          {
            goto LABEL_44;
          }

          v16 = v12 + 8 * v13 + 32;
          if (v8)
          {
            if (v15 < 1)
            {
              goto LABEL_46;
            }

            sub_25AF387CC(&qword_27FA24230, &qword_27FA24228);
            for (i = 0; i != v15; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24228);
              v18 = sub_25AF379E0(v31, i, v7);
              v20 = *v19;
              (v18)(v31, 0);
              *(v16 + 8 * i) = v20;
            }
          }

          else
          {
            swift_arrayInitWithCopy();
          }

          v1 = v26;
          v3 = v30;
          if (v32 >= 1)
          {
            v21 = *(v12 + 16);
            v5 = __OFADD__(v21, v32);
            v22 = v21 + v32;
            if (v5)
            {
              goto LABEL_45;
            }

            *(v12 + 16) = v22;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v15 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v15)
        {
          goto LABEL_28;
        }
      }

      v3 = v30;
      if (v32 > 0)
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
LABEL_41:
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
    v23 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = sub_25B005EA4();
    isUniquelyReferenced_nonNull_bridgeObject = v23;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_25AF36DA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[23] = a1;
  v4[24] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24238);
  v4[25] = v5;
  v4[26] = *(v5 - 8);
  v4[27] = swift_task_alloc();
  sub_25B005B34();
  v4[28] = sub_25B005B24();
  v7 = sub_25B005AE4();
  v4[29] = v7;
  v4[30] = v6;

  return MEMORY[0x2822009F8](sub_25AF36EA8, v7, v6);
}

uint64_t sub_25AF36EA8()
{
  v18 = v0;
  v1 = *(v0 + 192);
  swift_getKeyPath();
  *(v0 + 168) = v1;
  sub_25AF37B18();
  sub_25B004234();

  swift_beginAccess();
  v2 = *(v1 + 48);
  if (v2 >> 62)
  {
    if (!sub_25B005EA4())
    {
      goto LABEL_12;
    }
  }

  else if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_12;
  }

  if ((v2 & 0xC000000000000001) != 0)
  {

    v3 = MEMORY[0x25F85DD30](0, v2);

    *(v0 + 248) = v3;
    if (v3)
    {
      goto LABEL_6;
    }
  }

  else
  {
    if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_19;
    }

    v3 = *(v2 + 32);
    *(v0 + 248) = v3;
    if (v3)
    {
LABEL_6:
      v5 = *(v0 + 208);
      v4 = *(v0 + 216);
      v6 = *(v0 + 200);
      *(v0 + 16) = v0;
      *(v0 + 56) = v0 + 176;
      *(v0 + 24) = sub_25AF372D0;
      swift_continuation_init();
      *(v0 + 136) = v6;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 112));
      sub_25B005C84();
      v8 = v3;
      sub_25B005AF4();
      (*(v5 + 32))(boxed_opaque_existential_0, v4, v6);
      *(v0 + 80) = MEMORY[0x277D85DD0];
      *(v0 + 88) = 1107296256;
      *(v0 + 96) = sub_25AF374DC;
      *(v0 + 104) = &block_descriptor;
      [v8 getWidgetIconWithCompletion_];
      (*(v5 + 8))(boxed_opaque_existential_0, v6);

      return MEMORY[0x282200938](v0 + 16);
    }
  }

LABEL_12:

  if (qword_27FA23800 != -1)
  {
LABEL_19:
    swift_once();
  }

  v9 = sub_25B0044C4();
  __swift_project_value_buffer(v9, qword_27FA30C28);

  v10 = sub_25B0044B4();
  v11 = sub_25B005CB4();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = *(v0 + 192);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v17 = v14;
    *v13 = 136315394;
    *(v13 + 4) = sub_25AF8E7DC(1852793705, 0xE400000000000000, &v17);
    *(v13 + 12) = 2080;
    *(v13 + 14) = sub_25AF8E7DC(*(v12 + 16), *(v12 + 24), &v17);
    swift_arrayDestroy();
    MEMORY[0x25F85EC30](v14, -1, -1);
    MEMORY[0x25F85EC30](v13, -1, -1);
  }

  **(v0 + 184) = 0;

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_25AF372D0()
{
  v1 = *(*v0 + 240);
  v2 = *(*v0 + 232);

  return MEMORY[0x2822009F8](sub_25AF373D8, v2, v1);
}

uint64_t sub_25AF373D8()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 192);

  v3 = *(v0 + 176);

  v4 = [v3 image];
  [v3 scale];
  v6 = [objc_allocWithZone(MEMORY[0x277D755B8]) initWithCGImage:v4 scale:0 orientation:v5];

  v7 = *(v2 + 56);
  *(v2 + 56) = v6;
  v8 = v6;

  **(v0 + 184) = v6;

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_25AF374DC(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v3 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24238);
  return sub_25B005B04();
}

uint64_t sub_25AF3753C()
{

  v1 = OBJC_IVAR____TtC17NanoControlCenter20_ControlsSourceModel___observationRegistrar;
  v2 = sub_25B004274();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for _ControlsSourceModel()
{
  result = qword_27FA241F8;
  if (!qword_27FA241F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25AF37654()
{
  result = sub_25B004274();
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

void sub_25AF3770C(void **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = v3;
  v5 = [v4 extensionIdentity];
  v6 = [v4 kind];
  if (!v6)
  {
    sub_25B005934();
    v6 = sub_25B005924();
  }

  v7 = objc_allocWithZone(MEMORY[0x277CFA228]);
  v8 = [v4 defaultIntentReference];
  v9 = [v7 initWithExtensionIdentity:v5 kind:v6 intentReference:v8];

  [v4 controlType];
  if (qword_27FA23700 != -1)
  {
    swift_once();
  }

  if (sub_25AFA0C7C())
  {
    v10 = [v4 controlType];
  }

  else
  {

    v9 = 0;
    v10 = 0;
  }

  *a2 = v9;
  a2[1] = v10;
  a2[2] = 0;
  a2[3] = 0;
}

void sub_25AF378E8(void **a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = [v3 orderedControlDescriptors];
  if (v4)
  {
    v5 = v4;
    sub_25AF18BD4(0, &qword_27FA24220);
    v6 = sub_25B005A44();
  }

  else
  {

    v6 = MEMORY[0x277D84F90];
  }

  *a2 = v6;
}

void (*sub_25AF379E0(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x25F85DD30](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_25AF37A60;
  }

  __break(1u);
  return result;
}

void (*sub_25AF37A68(void (*result)(id *), unint64_t a2, uint64_t a3))(id *)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x25F85DD30](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_25AF389EC;
  }

  __break(1u);
  return result;
}

unint64_t sub_25AF37B18()
{
  result = qword_27FA23AA0;
  if (!qword_27FA23AA0)
  {
    type metadata accessor for _ControlsSourceModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA23AA0);
  }

  return result;
}

uint64_t sub_25AF37B70(unint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v5)
    {
      goto LABEL_29;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a2 < 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_29:
      v18 = 1;
      return v18 & 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    v4 = sub_25AF18BD4(0, &qword_27FA24218);
    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      v12 = 4;
      while (1)
      {
        v13 = v12 - 4;
        v14 = v12 - 3;
        if (__OFADD__(v12 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x25F85DD30](v12 - 4, v3);
          if (!v11)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v13 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v15 = *(v3 + 8 * v12);
          if (!v11)
          {
LABEL_24:
            if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v16 = *(a2 + 8 * v12);
            goto LABEL_26;
          }
        }

        v16 = MEMORY[0x25F85DD30](v12 - 4, a2);
LABEL_26:
        v17 = v16;
        v18 = sub_25B005DE4();

        if (v18)
        {
          ++v12;
          if (v14 != v5)
          {
            continue;
          }
        }

        return v18 & 1;
      }
    }

    v19 = (v3 + 32);
    v20 = (a2 + 32);
    v21 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v22 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = v5 - 1;
    while (1)
    {
      if (!v21)
      {
        goto LABEL_40;
      }

      if (!v22)
      {
        break;
      }

      v25 = *v19++;
      v24 = v25;
      v26 = *v20++;
      a2 = v24;
      v3 = v26;
      v18 = sub_25B005DE4();

      v28 = v23-- != 0;
      if (v18)
      {
        --v22;
        --v21;
        if (v28)
        {
          continue;
        }
      }

      return v18 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v5 = sub_25B005EA4();
  }

  result = sub_25B005EA4();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v18 = 0;
  return v18 & 1;
}

uint64_t sub_25AF37DC0(unint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v5)
    {
      goto LABEL_29;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a2 < 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_29:
      v18 = 1;
      return v18 & 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    v4 = sub_25B005DC4();
    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      v12 = 4;
      while (1)
      {
        v13 = v12 - 4;
        v14 = v12 - 3;
        if (__OFADD__(v12 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x25F85DD30](v12 - 4, v3);
          if (!v11)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v13 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v15 = *(v3 + 8 * v12);
          if (!v11)
          {
LABEL_24:
            if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v16 = *(a2 + 8 * v12);
            goto LABEL_26;
          }
        }

        v16 = MEMORY[0x25F85DD30](v12 - 4, a2);
LABEL_26:
        v17 = v16;
        v18 = sub_25B005DE4();

        if (v18)
        {
          ++v12;
          if (v14 != v5)
          {
            continue;
          }
        }

        return v18 & 1;
      }
    }

    v19 = (v3 + 32);
    v20 = (a2 + 32);
    v21 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v22 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = v5 - 1;
    while (1)
    {
      if (!v21)
      {
        goto LABEL_40;
      }

      if (!v22)
      {
        break;
      }

      v25 = *v19++;
      v24 = v25;
      v26 = *v20++;
      a2 = v24;
      v3 = v26;
      v18 = sub_25B005DE4();

      v28 = v23-- != 0;
      if (v18)
      {
        --v22;
        --v21;
        if (v28)
        {
          continue;
        }
      }

      return v18 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v5 = sub_25B005EA4();
  }

  result = sub_25B005EA4();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v18 = 0;
  return v18 & 1;
}

uint64_t sub_25AF38000(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v14 = 1;
    }

    else
    {
      v3 = (a2 + 64);
      v4 = (a1 + 64);
      do
      {
        v5 = *(v4 - 2);
        v6 = *(v4 - 1);
        v7 = *(v4 - 3);
        v8 = *(v3 - 4);
        v9 = *(v3 - 3);
        v10 = *(v3 - 2);
        v11 = *(v3 - 1);
        v12 = *v4;
        v13 = *v3;
        v21 = *(v4 - 4);
        v22 = v7;
        v23 = v5;
        v24 = v6;
        v25 = v12;
        v16 = v8;
        v17 = v9;
        v18 = v10;
        v19 = v11;
        v20 = v13;
        sub_25AF181DC(v21, v7, v5, v6, v12);
        sub_25AF181DC(v8, v9, v10, v11, v13);
        v14 = sub_25AFD33F0(&v21, &v16);
        sub_25AF18128(v16, v17, v18, v19, v20);
        sub_25AF18128(v21, v22, v23, v24, v25);
        if ((v14 & 1) == 0)
        {
          break;
        }

        v3 += 40;
        v4 += 40;
        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

uint64_t sub_25AF38114(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 56);
    for (i = (a2 + 56); ; i += 4)
    {
      v5 = *(v3 - 1);
      v6 = *v3;
      v7 = *(i - 1);
      v8 = *i;
      v9 = *(v3 - 3) == *(i - 3) && *(v3 - 2) == *(i - 2);
      if (!v9 && (sub_25B006174() & 1) == 0)
      {
        break;
      }

      v10 = v5 == v7 && v6 == v8;
      if (!v10 && (sub_25B006174() & 1) == 0)
      {
        break;
      }

      v3 += 4;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_25AF381E4(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_25B005EA4();
LABEL_9:
  result = sub_25B005F44();
  *v1 = result;
  return result;
}

uint64_t sub_25AF38284(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_25B005EA4();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_25B005EA4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_25AF387CC(&qword_27FA24230, &qword_27FA24228);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24228);
            v9 = sub_25AF379E0(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_25AF18BD4(0, &qword_27FA23AB0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_25AF38424(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_25B005EA4();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_25B005EA4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_25AF387CC(&qword_27FA24210, &qword_27FA24208);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24208);
            v9 = sub_25AF37A68(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_25B005DC4();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_25AF385B4()
{
  v2 = v0[5];
  if (!v2)
  {
    goto LABEL_5;
  }

LABEL_2:
  if (v2 >> 62)
  {
    result = sub_25B005EA4();
  }

  else
  {
    result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v1 = v0[6];
  if (v1 != result)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
LABEL_24:
      result = MEMORY[0x25F85DD30](v1, v2);
      v10 = (v1 + 1);
      if (!__OFADD__(v1, 1))
      {
        goto LABEL_22;
      }
    }

    else
    {
      if ((v1 & 0x8000000000000000) != 0)
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      if (v1 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_28:
        __break(1u);
        return result;
      }

      result = *(v2 + 8 * v1 + 32);
      v10 = (v1 + 1);
      if (!__OFADD__(v1, 1))
      {
LABEL_22:
        v0[6] = v10;
        return result;
      }
    }

    __break(1u);
    goto LABEL_27;
  }

LABEL_5:
  while (1)
  {
    v4 = v0[3];
    v5 = v0[4];
    if (!v5)
    {
      break;
    }

    v6 = v0[3];
LABEL_11:
    v2 = *(*(*v0 + 56) + ((v6 << 9) | (8 * __clz(__rbit64(v5)))));
    v0[3] = v6;
    v0[4] = (v5 - 1) & v5;
    v1 = v0[5];

    v0[5] = v2;
    v0[6] = 0;
    if (v2)
    {
      goto LABEL_2;
    }
  }

  v7 = (v0[2] + 64) >> 6;
  v8 = v0[3];
  while (1)
  {
    v6 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      goto LABEL_24;
    }

    if (v6 >= v7)
    {
      break;
    }

    v5 = *(v0[1] + 8 * v6);
    ++v8;
    if (v5)
    {
      goto LABEL_11;
    }
  }

  result = 0;
  if (v7 <= v4 + 1)
  {
    v9 = v4 + 1;
  }

  else
  {
    v9 = (v0[2] + 64) >> 6;
  }

  v0[3] = v9 - 1;
  v0[4] = 0;
  return result;
}

char *sub_25AF38718@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  if (*result)
  {
    v3 = *(result + 3);
    *a2 = v2;
    *(a2 + 8) = *(result + 8);
    *(a2 + 24) = v3;
    v4 = v2;

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25AF387CC(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25AF38820()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_25AF38860(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25AF18ADC;

  return sub_25AF36DA8(a1, v4, v5, v6);
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

uint64_t sub_25AF38988(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_25AF38A04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24240);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_25AF38AD4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24240);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_25AF38BA4()
{
  sub_25AF3E4EC(319, &qword_27FA24258, &qword_27FA23D78, &unk_25B009D80, MEMORY[0x277CE11F8]);
  if (v0 <= 0x3F)
  {
    sub_25AF3DAB4(319, &qword_27FA24260, &type metadata for GlanceButtonModel.AddRemoveStyle, MEMORY[0x277CE11F8]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for SelectControlModel(319);
      if (v2 <= 0x3F)
      {
        sub_25AF3F6AC(319, &qword_27FA24268, MEMORY[0x277CDFAA0], MEMORY[0x277CDF468]);
        if (v3 <= 0x3F)
        {
          sub_25AF3E4EC(319, &qword_27FA24270, &qword_27FA24278, &unk_25B00AFD0, MEMORY[0x277CDF468]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_25AF38D58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2;
  v6 = type metadata accessor for ButtonAndLabel.ParentState(0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25AF3DDF4(&qword_27FA24280, MEMORY[0x277CDFAA0], &v9[*(v7 + 28)]);
  *v9 = 0;
  sub_25AF3E90C(v9, a2, type metadata accessor for ButtonAndLabel.ParentState);
  v10 = *v2;
  v11 = sub_25AF3D658(*&v4[*(a1 + 44)], v4[*(a1 + 44) + 8]);
  sub_25AF3D7C4(v9);
  LOBYTE(a1) = v4[1];
  LOBYTE(v9) = v4[2];
  v12 = *(v4 + 11);
  v13 = type metadata accessor for AvailableControlsGrid.SuggestedAndAppsGrid(0);
  *(a2 + v13[5]) = v10;
  *(a2 + v13[6]) = v11;
  *(a2 + v13[7]) = a1;
  *(a2 + v13[8]) = v9;
  *(a2 + v13[9]) = v12;
}

__n128 sub_25AF38E9C@<Q0>(uint64_t a1@<X8>)
{
  sub_25AF38F70(a1);
  v3 = type metadata accessor for AvailableControlsGrid.SuggestedAndAppsGrid(0);
  v4 = *(v1 + v3[5]);
  v5 = *(v1 + v3[7]);
  v6 = *(v1 + v3[8]);
  v7 = *(v1 + v3[9]);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA242A0);
  sub_25B005484();
  v8 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA242A8) + 36));
  v8->n128_u8[0] = v4;
  v8->n128_u8[1] = v5;
  v8->n128_u8[2] = v6;
  v8->n128_u64[1] = v7;
  result = v10;
  v8[1] = v10;
  v8[2].n128_u64[0] = v11;
  return result;
}

uint64_t sub_25AF38F70@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v54 = a1;
  v3 = type metadata accessor for TopLevelGridSection(0);
  v4 = *(v3 - 1);
  MEMORY[0x28223BE20](v3);
  v6 = (&v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA242B0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v53 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v50 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v50 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v50 - v16;
  v18 = type metadata accessor for AvailableControlsGrid.SuggestedAndAppsGrid(0);
  v19 = *(v2 + v18[8]);
  v52 = v17;
  if (v19 == 1)
  {
    sub_25AF3E90C(v2, v6 + v3[5], type metadata accessor for ButtonAndLabel.ParentState);
    v20 = *(v2 + v18[6]);
    *v6 = 2;
    *(v6 + v3[6]) = v20;
    v21 = v6 + v3[7];
    v55 = 0;
    v56 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA242C8);
    sub_25B005484();
    v22 = v59;
    *v21 = v58;
    *(v21 + 2) = v22;
    v23 = v3[8];
    v55 = 0;
    type metadata accessor for CHSControlVisibility(0);
    sub_25B005484();
    *(v6 + v23) = v58;
    sub_25AF3E89C(v6, v17, type metadata accessor for TopLevelGridSection);
    v24 = *(v4 + 56);
    v24(v17, 0, 1, v3);
  }

  else
  {
    v24 = *(v4 + 56);
    v24(v17, 1, 1, v3);
  }

  v60 = &type metadata for ControlCenterFlags;
  v25 = sub_25AF1935C();
  v61 = v25;
  LOBYTE(v58) = 4;
  v26 = sub_25B004284();
  __swift_destroy_boxed_opaque_existential_0Tm(&v58);
  if (v26)
  {
    v27 = *(v2 + v18[7]) | ((*(v2 + v18[5]) != 2) << 8);
    sub_25AF3E90C(v2, v6 + v3[5], type metadata accessor for ButtonAndLabel.ParentState);
    v28 = *(v2 + v18[6]);
    *v6 = v27;
    *(v6 + v3[6]) = v28;
    v29 = v6 + v3[7];
    v55 = 0;
    v56 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA242C8);
    sub_25B005484();
    v30 = v59;
    *v29 = v58;
    *(v29 + 2) = v30;
    v31 = v3[8];
    v55 = 0;
    type metadata accessor for CHSControlVisibility(0);
    sub_25B005484();
    *(v6 + v31) = v58;
    sub_25AF3E89C(v6, v15, type metadata accessor for TopLevelGridSection);
    v32 = 0;
  }

  else
  {
    v32 = 1;
  }

  v24(v15, v32, 1, v3);
  v60 = &type metadata for ControlCenterFlags;
  v61 = v25;
  LOBYTE(v58) = 4;
  v33 = sub_25B004284();
  __swift_destroy_boxed_opaque_existential_0Tm(&v58);
  v34 = *(v2 + v18[7]);
  v35 = *(v2 + v18[9]);
  v36 = v34 == 0;
  if (v33)
  {
    v37 = 256;
    if (v36)
    {
      v37 = 0;
    }

    v55 = v37;
    v56 = v35;
    v57 = 0;
  }

  else
  {
    v38 = 257;
    if (v36)
    {
      v38 = 1;
    }

    v55 = v38;
    v56 = v35;
    v57 = 1;
  }

  sub_25AF3DB88();
  swift_retain_n();
  sub_25B004C74();
  v39 = v58;
  v40 = v59;
  v41 = v52;
  sub_25AF25FC4(v52, v12, &qword_27FA242B0);
  v42 = v53;
  sub_25AF25FC4(v15, v53, &qword_27FA242B0);
  v43 = v12;
  v50 = v15;
  v51 = v12;
  v44 = v42;
  v45 = v54;
  sub_25AF25FC4(v43, v54, &qword_27FA242B0);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA242C0);
  sub_25AF25FC4(v44, v45 + v46[12], &qword_27FA242B0);
  v47 = v45 + v46[16];
  *v47 = v39;
  *(v47 + 16) = v40;
  v48 = v45 + v46[20];
  *v48 = 2;
  *(v48 + 8) = v35;
  sub_25AF3DBDC();

  sub_25AF2602C(v50, &qword_27FA242B0);
  sub_25AF2602C(v41, &qword_27FA242B0);

  sub_25AF3DBE4();
  sub_25AF2602C(v44, &qword_27FA242B0);
  return sub_25AF2602C(v51, &qword_27FA242B0);
}

uint64_t sub_25AF39514@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v9 = v1[2];
  v10 = v1[1];
  v4 = *(v1 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24370);
  sub_25B0054B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24378);
  sub_25AF0F274(&qword_27FA24380, &qword_27FA24378);
  sub_25B005034();
  sub_25B0054B4();
  v5 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24388) + 36);
  *v5 = v4;
  *(v5 + 8) = v11;
  *(v5 + 24) = v12;
  v6 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24390) + 36);
  *v6 = 2;
  *(v6 + 8) = 1;
  *(v6 + 16) = 1;
  v7 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24398) + 36));
  *v7 = v3 != 2;
  v7[1] = v10;
  v7[2] = v9;
}

uint64_t sub_25AF396F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24378);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
}

uint64_t sub_25AF397E4(_WORD *a1, _WORD *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1 == 2)
  {
    return *a2 == 2;
  }

  if (*a2 == 2)
  {
    return 0;
  }

  if ((v3 ^ v2))
  {
    return 0;
  }

  return ((v3 & 0x100) == 0) ^ ((v2 & 0x100) >> 8);
}

uint64_t sub_25AF39840()
{
  type metadata accessor for TopLevelGridSection(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA243A8);
  sub_25B005494();
  if (v3)
  {
    v0 = v4;

    sub_25AF3EA04(v3);
  }

  else
  {
    v1 = sub_25AF39E3C();
    v0 = sub_25AFC30E4(v1);
  }

  return v0;
}

uint64_t sub_25AF398EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for TopLevelGridSection(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA243B0);
  result = (MEMORY[0x28223BE20])(v10);
  v15 = &v28 - v14;
  if (*(a1 + 16))
  {
    v28 = v7;
    v29 = v13;
    v30 = v12;
    v31 = a2;
    if (qword_27FA30B10)
    {
      v16 = swift_beginAccess();
      v17 = MEMORY[0x28223BE20](v16);
      *(&v28 - 4) = a1;
      *(&v28 - 3) = v17;
      *(&v28 - 2) = v3;
      sub_25AF3AFE4(v3, v32);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA25750);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA243B8);
      sub_25AF3135C();
      sub_25AF3EE7C();
      sub_25B0055B4();
      v32[0] = sub_25B0053F4();
      v18 = sub_25B005504();
      *&v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA243F8) + 36)] = v18;
      sub_25AF3E90C(v3, &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TopLevelGridSection);
      v19 = (*(v28 + 80) + 16) & ~*(v28 + 80);
      v20 = (v8 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
      v21 = swift_allocObject();
      sub_25AF3E89C(v9, v21 + v19, type metadata accessor for TopLevelGridSection);
      *(v21 + v20) = a1;
      v22 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24400) + 36)];
      *v22 = sub_25AF3F128;
      v22[1] = v21;
      v22[2] = 0;
      v22[3] = 0;
      sub_25AF3E90C(v3, v9, type metadata accessor for TopLevelGridSection);
      v23 = swift_allocObject();
      sub_25AF3E89C(v9, v23 + v19, type metadata accessor for TopLevelGridSection);
      *(v23 + v20) = a1;
      v24 = v30;
      v25 = &v15[*(v30 + 36)];
      *v25 = 0;
      *(v25 + 1) = 0;
      *(v25 + 2) = sub_25AF3F1D4;
      *(v25 + 3) = v23;
      v26 = v31;
      sub_25AF25B0C(v15, v31, &qword_27FA243B0);
      (*(v29 + 56))(v26, 0, 1, v24);
      return swift_bridgeObjectRetain_n();
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v27 = *(v13 + 56);

    return v27(a2, 1, 1);
  }

  return result;
}

uint64_t sub_25AF39D10()
{
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for TopLevelGridSection(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA243A8);
  sub_25B005494();
  if (v1)
  {
    sub_25AF3EA04(v1);
  }

  else
  {
    sub_25AF39E3C();

    sub_25B0054A4();
  }
}

uint64_t sub_25AF39E3C()
{
  v1 = v0;
  type metadata accessor for TopLevelGridSection(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA243A8);
  result = sub_25B005494();
  v3 = v6;
  if (v6)
  {

    return v3;
  }

  if (*v1 != 2)
  {
    return sub_25AF3A0E8(*v1 & 1, HIBYTE(*v1) & 1);
  }

  v4 = qword_27FA30B10;
  if (qword_27FA30B10)
  {
    swift_getKeyPath();
    sub_25AF3E6CC(&qword_27FA25250, type metadata accessor for GlanceModel);
    v5 = v4;
    sub_25B004234();

    v3 = *&v5[OBJC_IVAR____TtC17NanoControlCenter11GlanceModel__suggestedButtonIDs];

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_25AF39F94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  v6 = sub_25AF39840();
  sub_25AF398EC(v6, a2);
  sub_25AF3E90C(v2, &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TopLevelGridSection);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = swift_allocObject();
  sub_25AF3E89C(&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for TopLevelGridSection);
  *(v8 + ((v5 + v7 + 7) & 0xFFFFFFFFFFFFFFF8)) = v6;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA243A0);
  v10 = (a2 + *(result + 36));
  *v10 = sub_25AF3E978;
  v10[1] = v8;
  v10[2] = 0;
  v10[3] = 0;
  return result;
}

uint64_t sub_25AF3A0E8(uint64_t result, char a2)
{
  if (result)
  {
    if (!qword_27FA30B10)
    {
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      return result;
    }

    v3 = sub_25AFEC4BC();
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  if (!qword_27FA30B10)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v32 = sub_25AF29950(v3, a2 & 1);

  if ((a2 & 1) == 0)
  {

    return v32;
  }

  if (!qword_27FA30B10)
  {
    goto LABEL_38;
  }

  v4 = sub_25AFEC930();

  result = v32;
  v31 = *(v32 + 16);
  if (v31)
  {
    v5 = 0;
    v30 = (v4 + 64);
    v6 = MEMORY[0x277D84F90];
    v35 = v4;
    while (1)
    {
      v33 = v6;
LABEL_11:
      if (v5 >= *(result + 16))
      {
        break;
      }

      v7 = v32 + 32 + 40 * v5;
      v9 = *v7;
      v8 = *(v7 + 8);
      v11 = *(v7 + 16);
      v10 = *(v7 + 24);
      v12 = *(v7 + 32);
      sub_25B005B34();
      v38 = v9;
      v39 = v8;
      v40 = v11;
      v41 = v10;
      v42 = v12;
      sub_25AF181DC(v9, v8, v11, v10, v12);
      sub_25B005B24();
      sub_25B005AE4();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v14 = qword_286C4C100;
      v13 = off_286C4C108;
      v15 = qword_286C4C110;
      v16 = off_286C4C118;
      v36 = byte_286C4C120;
      sub_25AF181DC(qword_286C4C100, off_286C4C108, qword_286C4C110, off_286C4C118, byte_286C4C120);
      sub_25B005B24();
      sub_25B005AE4();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v34 = v5 + 1;
      v48 = v14;
      v49 = v13;
      v50 = v15;
      v51 = v16;
      v52 = v36;
      v43 = v38;
      v44 = v39;
      v45 = v40;
      v46 = v10;
      v47 = v12;
      v17 = sub_25AFD19C4(&v43);
      sub_25AF18128(v14, v13, v15, v16, v36);

      if (v17)
      {
        v37 = -*(v4 + 16);
        v18 = -1;
        v19 = v30;
        while (v37 + v18 != -1)
        {
          if (++v18 >= *(v4 + 16))
          {
            __break(1u);
            goto LABEL_35;
          }

          v21 = *(v19 - 4);
          v22 = *(v19 - 3);
          v23 = *(v19 - 2);
          v24 = *(v19 - 1);
          v25 = *v19;
          sub_25AF181DC(v21, v22, v23, v24, *v19);
          sub_25B005B24();
          sub_25B005AE4();
          if ((swift_task_isCurrentExecutor() & 1) == 0)
          {
            swift_task_reportUnexpectedExecutor();
          }

          v19 += 40;
          v48 = v21;
          v49 = v22;
          v50 = v23;
          v51 = v24;
          v52 = v25;
          v43 = v38;
          v44 = v39;
          v45 = v40;
          v46 = v41;
          v47 = v12;
          v20 = sub_25AFD19C4(&v43);
          sub_25AF18128(v21, v22, v23, v24, v25);

          v4 = v35;
          if (v20)
          {

            sub_25AF18128(v38, v39, v40, v41, v12);
            result = v32;
            v5 = v34;
            v6 = v33;
            if (v34 != v31)
            {
              goto LABEL_11;
            }

            goto LABEL_33;
          }
        }
      }

      v6 = v33;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v53 = v33;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_25AF98A50(0, *(v33 + 16) + 1, 1);
        v6 = v53;
      }

      v28 = *(v6 + 16);
      v27 = *(v6 + 24);
      if (v28 >= v27 >> 1)
      {
        sub_25AF98A50((v27 > 1), v28 + 1, 1);
        v6 = v53;
      }

      *(v6 + 16) = v28 + 1;
      v29 = v6 + 40 * v28;
      *(v29 + 32) = v38;
      *(v29 + 40) = v39;
      *(v29 + 48) = v40;
      *(v29 + 56) = v41;
      *(v29 + 64) = v42;
      result = v32;
      v5 = v34;
      if (v34 == v31)
      {
        goto LABEL_33;
      }
    }

LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v6 = MEMORY[0x277D84F90];
LABEL_33:

  return v6;
}

uint64_t sub_25AF3A5D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v17[0] = a3;
  v7 = type metadata accessor for TopLevelGridSection(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v17[1] = sub_25AF4B750(2, a1);
  swift_getKeyPath();
  sub_25AF3E90C(a2, v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TopLevelGridSection);
  v10 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = a4;
  sub_25AF3E89C(v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10, type metadata accessor for TopLevelGridSection);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24410);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA243E0);
  sub_25AF0F274(&qword_27FA24418, &qword_27FA24410);
  sub_25AF3F394();
  sub_25AF0F274(&qword_27FA243D8, &qword_27FA243E0);
  v12 = v17[0];
  sub_25B005574();
  v13 = sub_25B005704();
  v14 = sub_25AF39E3C();

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA243B8);
  v16 = (v12 + *(result + 36));
  *v16 = v13;
  v16[1] = v14;
  return result;
}

uint64_t sub_25AF3A8A4@<X0>(void **a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v7 = *a1;
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a3 = sub_25B004B44();
  *(a3 + 8) = a4;
  *(a3 + 16) = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24438);
  sub_25AF3A98C(v7, a2, a3 + *(v8 + 44));
}

uint64_t sub_25AF3A98C@<X0>(void *a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  v77 = a2;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24440);
  MEMORY[0x28223BE20](v78);
  v79 = (&v57 - v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24448);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v57 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24450);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v57 - v16;
  sub_25B005B34();
  v18 = sub_25B005B24();
  sub_25B005AE4();
  result = swift_task_isCurrentExecutor();
  if ((result & 1) == 0)
  {
    result = swift_task_reportUnexpectedExecutor();
  }

  v20 = a1[2];
  if (v20)
  {
    v72 = v12;
    v73 = v18;
    v74 = v11;
    v75 = v9;
    v76 = a3;
    v22 = a1[4];
    v21 = a1[5];
    v23 = a1 + 4;
    v84 = v21;
    v85 = v22;
    v25 = v23[2];
    v24 = v23[3];
    v26 = *(v23 + 32);
    v67 = v23[6];
    v68 = v15;
    v28 = v23[9];
    v27 = v23[10];
    v80 = v24;
    v81 = v27;
    v29 = v23[12];
    v82 = v23[11];
    v83 = *(v23 + 104);
    LODWORD(v66) = *(v23 + 105);
    v30 = v20;
    v31 = type metadata accessor for TopLevelGridSection(0);
    v32 = v77[*(v31 + 24)];
    v33 = &v77[*(v31 + 20)];
    v34 = type metadata accessor for ButtonAndLabel(0);
    v35 = &v17[*(v34 + 36)];
    v65 = v33;
    sub_25AF3E90C(v33, v35, type metadata accessor for ButtonAndLabel.ParentState);
    v36 = v84;
    *v17 = v85;
    *(v17 + 1) = v36;
    v70 = v25;
    v71 = v29;
    v37 = v80;
    v38 = v81;
    *(v17 + 2) = v25;
    *(v17 + 3) = v37;
    v69 = v26;
    v17[32] = v26;
    v77 = v28;
    *(v17 + 5) = v28;
    *(v17 + 6) = v38;
    *(v17 + 7) = v82;
    *(v17 + 8) = v29;
    v17[72] = v83;
    v17[73] = v66;
    *(v17 + 10) = v67;
    LODWORD(v67) = v32;
    v17[88] = v32;
    v17[*(v34 + 40)] = 1;
    if (v30 == 1)
    {
      v39 = v79;
      *v79 = 0;
      *(v39 + 8) = 0;
      swift_storeEnumTagMultiPayload();
      sub_25AF181DC(v85, v84, v70, v80, v69);
      sub_25AF1D7EC(v77, v81, v82, v71, v83);
      sub_25AF0F274(&qword_27FA24458, &qword_27FA24450);
      v40 = v74;
      sub_25B004C74();
      v41 = v68;
    }

    else
    {
      v42 = v34;
      v43 = &v23[14 * v30];
      v60 = *(v43 - 7);
      v44 = *(v43 - 3);
      v66 = *(v43 - 2);
      v64 = v44;
      v45 = *(v43 - 5);
      v46 = *(v43 - 4);
      v59 = *(v43 - 8);
      v47 = *(v43 - 11);
      v63 = *(v43 - 12);
      v48 = v63;
      v50 = *(v43 - 14);
      v62 = *(v43 - 13);
      v49 = v62;
      v61 = v50;
      v58 = v42;
      v51 = *(v43 - 80);
      v52 = *(v43 - 8);
      v41 = v68;
      sub_25AF3E90C(v65, &v68[*(v42 + 36)], type metadata accessor for ButtonAndLabel.ParentState);
      *v41 = v50;
      *(v41 + 8) = v49;
      *(v41 + 16) = v48;
      *(v41 + 24) = v47;
      *(v41 + 32) = v51;
      *(v41 + 40) = v45;
      *(v41 + 48) = v46;
      v53 = v66;
      *(v41 + 56) = v64;
      *(v41 + 64) = v53;
      *(v41 + 72) = v52;
      *(v41 + 73) = v60;
      *(v41 + 80) = v59;
      *(v41 + 88) = v67;
      *(v41 + *(v58 + 40)) = 1;
      sub_25AF25FC4(v41, v79, &qword_27FA24450);
      swift_storeEnumTagMultiPayload();
      sub_25AF181DC(v85, v84, v70, v80, v69);
      sub_25AF1D7EC(v77, v81, v82, v71, v83);
      sub_25AF181DC(v61, v62, v63, v47, v51);
      sub_25AF1D7EC(v45, v46, v64, v66, v52);
      sub_25AF0F274(&qword_27FA24458, &qword_27FA24450);
      v40 = v74;
      sub_25B004C74();
      sub_25AF2602C(v41, &qword_27FA24450);
    }

    sub_25AF25FC4(v17, v41, &qword_27FA24450);
    v54 = v75;
    sub_25AF25FC4(v40, v75, &qword_27FA24448);
    v55 = v76;
    sub_25AF25FC4(v41, v76, &qword_27FA24450);
    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24460);
    sub_25AF25FC4(v54, v55 + *(v56 + 48), &qword_27FA24448);
    sub_25AF2602C(v40, &qword_27FA24448);
    sub_25AF2602C(v17, &qword_27FA24450);
    sub_25AF2602C(v54, &qword_27FA24448);
    sub_25AF2602C(v41, &qword_27FA24450);
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_25AF3AFE4@<D0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (*a1 == 2)
  {
    sub_25B004BC4();
    if (qword_27FA23728 == -1)
    {
      goto LABEL_7;
    }

    goto LABEL_8;
  }

  sub_25B004BC4();
  if (qword_27FA23728 != -1)
  {
LABEL_8:
    swift_once();
  }

LABEL_7:
  v4 = qword_27FA30B00;
  sub_25B005094();
  sub_25B004C74();

  result = *&v6;
  *a2 = v6;
  *(a2 + 16) = v7;
  *(a2 + 32) = v8;
  return result;
}

uint64_t sub_25AF3B234(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = *(a2 + 16);
  if (!v3)
  {
    v5 = MEMORY[0x277D84F90];
    goto LABEL_20;
  }

  v4 = 0;
  v5 = MEMORY[0x277D84F90];
  v6 = a2 + 104;
  v23 = result;
  v25 = *(a2 + 16);
  v22 = a2 + 104;
  do
  {
    v24 = v5;
    v7 = v6 + 112 * v4;
    v8 = v4;
    while (1)
    {
      if (v8 >= v3)
      {
        __break(1u);
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      if (__OFADD__(v8, 1))
      {
        goto LABEL_23;
      }

      v31 = v8 + 1;
      v10 = *(v7 - 72);
      v9 = *(v7 - 64);
      v12 = *(v7 - 56);
      v11 = *(v7 - 48);
      v13 = *(v7 - 40);
      v14 = *v7;
      v28 = *(v7 + 8);
      v15 = *(v7 + 24);
      v26 = v8;
      v27 = *(v7 + 16);
      v16 = *(v7 + 32);
      sub_25B005B34();
      v32 = v10;
      v30 = v11;
      v29 = v13;
      sub_25AF181DC(v10, v9, v12, v11, v13);
      sub_25AF1D7EC(v14, v28, v27, v15, v16);
      sub_25B005B24();
      sub_25B005AE4();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      sub_25AF181DC(v10, v9, v12, v11, v13);
      sub_25AF18128(v10, v9, v12, v11, v13);
      sub_25AF231D0(v14, v28, v27, v15, v16);
      v3 = v25;
      v4 = v31;
      if (v29 >> 6)
      {
        break;
      }

LABEL_4:

      v8 = v26 + 1;
      v7 += 112;
      if (v31 == v25)
      {
        v2 = v23;
        v5 = v24;
        goto LABEL_20;
      }
    }

    if (v29 >> 6 == 2)
    {
      sub_25AF18128(v32, v9, v12, v11, v29);
      goto LABEL_4;
    }

    v5 = v24;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_25AFCD46C(0, *(v24 + 16) + 1, 1, v24);
      v5 = result;
    }

    v2 = v23;
    v18 = *(v5 + 16);
    v17 = *(v5 + 24);
    if (v18 >= v17 >> 1)
    {
      result = sub_25AFCD46C((v17 > 1), v18 + 1, 1, v5);
      v5 = result;
    }

    *(v5 + 16) = v18 + 1;
    v19 = (v5 + 32 * v18);
    v19[4] = v32;
    v19[5] = v9;
    v19[6] = v12;
    v19[7] = v30;
    v6 = v22;
  }

  while (v31 != v25);
LABEL_20:
  if (qword_27FA30B10)
  {
    v20 = qword_27FA30B10;
    v21 = sub_25AF9B3D0(v5);

    sub_25AF72400(v2, 0, v21, 1);

    type metadata accessor for TopLevelGridSection(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24408);
    return sub_25B0054A4();
  }

  else
  {
LABEL_24:
    __break(1u);
  }

  return result;
}

uint64_t sub_25AF3B560(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_25AF3B234(a4, a2);
}

uint64_t sub_25AF3B624@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v18[1] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24590);
  MEMORY[0x28223BE20](v5);
  v7 = v18 - v6;
  v9 = *(v2 + 16);
  v24 = *(v2 + 8);
  v8 = v24;
  v23 = *(v2 + 24);
  v10 = swift_allocObject();
  v11 = *(v3 + 16);
  *(v10 + 16) = *v3;
  *(v10 + 32) = v11;
  *(v10 + 48) = *(v3 + 32);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24598);
  (*(*(v12 - 8) + 16))(v7, a1, v12);
  v13 = &v7[*(v5 + 36)];
  *v13 = sub_25AF4022C;
  v13[1] = v10;
  v13[2] = 0;
  v13[3] = 0;
  v20 = v8;
  v21 = v9;
  v22 = *(v3 + 24);

  sub_25AF40234(&v24, v19);

  sub_25AF25FC4(&v23, v19, &qword_27FA242A0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA245A0);
  MEMORY[0x25F85D310](v19, v14);
  v20 = v19[0];
  v21 = v19[1];
  v15 = swift_allocObject();
  v16 = *(v3 + 16);
  *(v15 + 16) = *v3;
  *(v15 + 32) = v16;
  *(v15 + 48) = *(v3 + 32);

  sub_25AF40234(&v24, v19);

  sub_25AF25FC4(&v23, v19, &qword_27FA242A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA242A0);
  sub_25AF402EC();
  sub_25AF403A4();
  sub_25B005374();

  return sub_25AF2602C(v7, &qword_27FA24590);
}

uint64_t sub_25AF3B8B8()
{
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA245A0);
  sub_25B005524();
}

void sub_25AF3B980(uint64_t a1)
{
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = *(a1 + 24);
  v33[0] = *(a1 + 8);
  v33[1] = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA245A0);
  MEMORY[0x25F85D310](&v31, v3);
  v4 = v32;
  if (!v32)
  {
LABEL_34:

    return;
  }

  if (!qword_27FA30B10)
  {
    __break(1u);
    return;
  }

  v30 = v31;
  v5 = *(qword_27FA30B10 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_availableControlsModel);
  swift_getKeyPath();
  *&v33[0] = v5;
  sub_25AF3E6CC(&qword_27FA24078, type metadata accessor for _ControlsAvailableModel);

  sub_25B004234();

  v26 = v5;
  v6 = *(v5 + 16);
  v7 = *(v6 + 16);

  v27 = v7;
  if (v7)
  {
    v8 = 0;
    v9 = (v6 + 56);
    while (v8 < *(v6 + 16))
    {
      v10 = *(v9 - 3);
      v11 = *(v9 - 2);
      v12 = *v9;
      v29 = *(v9 - 1);

      sub_25B005B24();
      sub_25B005AE4();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      if (v10 == v30 && v4 == v11)
      {
LABEL_31:
        v10 = v30;

        goto LABEL_33;
      }

      v13 = sub_25B006174();

      if (v13)
      {

LABEL_33:

        sub_25AFC8154(v10, v11, v29, v12);

        goto LABEL_34;
      }

      ++v8;

      v9 += 4;
      if (v27 == v8)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
    goto LABEL_36;
  }

LABEL_14:

  swift_getKeyPath();
  *&v33[0] = v26;
  sub_25B004234();

  v14 = *(v26 + 24);
  v15 = *(v14 + 16);

  v28 = v15;
  if (v15)
  {
    v16 = 0;
    v17 = (v14 + 56);
    while (v16 < *(v14 + 16))
    {
      v18 = *(v17 - 3);
      v11 = *(v17 - 2);
      v12 = *v17;
      v29 = *(v17 - 1);

      sub_25B005B24();
      sub_25B005AE4();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      if (v18 == v30 && v4 == v11)
      {
        goto LABEL_31;
      }

      v19 = sub_25B006174();

      if (v19)
      {

        v10 = v18;
        goto LABEL_33;
      }

      ++v16;

      v17 += 4;
      if (v28 == v16)
      {
        goto LABEL_23;
      }
    }

LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

LABEL_23:

  if (qword_27FA23800 != -1)
  {
LABEL_37:
    swift_once();
  }

  v20 = sub_25B0044C4();
  __swift_project_value_buffer(v20, qword_27FA30C28);

  v21 = sub_25B0044B4();
  v22 = sub_25B005CB4();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *&v33[0] = v24;
    *v23 = 136315394;
    *(v23 + 4) = sub_25AF8E7DC(0x6E6F632879646F62, 0xEE00293A746E6574, v33);
    *(v23 + 12) = 2080;
    v25 = sub_25AF8E7DC(v30, v4, v33);

    *(v23 + 14) = v25;
    _os_log_impl(&dword_25AF0B000, v21, v22, "%s Couldn't find section with bundle ID: %s. This indicates programmer error.", v23, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F85EC30](v24, -1, -1);
    MEMORY[0x25F85EC30](v23, -1, -1);
  }

  else
  {
  }
}

void sub_25AF3BFAC(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v49 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24318);
  v54 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = v45 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24320);
  MEMORY[0x28223BE20](v8 - 8);
  v53 = v45 - v9;
  v10 = sub_25B004204();
  MEMORY[0x28223BE20](v10 - 8);
  v52 = v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_25B005904();
  MEMORY[0x28223BE20](v12 - 8);
  v13 = sub_25B0040A4();
  v57 = *(v13 - 8);
  v58 = v13;
  MEMORY[0x28223BE20](v13);
  v48 = v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = v45 - v16;
  MEMORY[0x28223BE20](v18);
  v56 = v45 - v19;
  v55 = sub_25B004094();
  v20 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v22 = v45 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = (v45 - v24);
  if (qword_27FA30B10)
  {
    v50 = v5;
    v51 = a3;
    v26 = *(qword_27FA30B10 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_availableControlsModel);
    v47 = v7;
    v46 = a1;
    if (a1 == 2)
    {
      swift_getKeyPath();
      v59 = v26;
      sub_25AF3E6CC(&qword_27FA24078, type metadata accessor for _ControlsAvailableModel);

      sub_25B004234();

      v27 = *(v26 + 24);
    }

    else
    {

      v27 = sub_25AF29594(0, a1 & 1);
    }

    *v25 = type metadata accessor for GlanceModel();
    v28 = v55;
    (*(v20 + 104))(v25, *MEMORY[0x277CC9120], v55);
    v29 = v58;
    sub_25B0058F4();
    (*(v20 + 16))(v22, v25, v28);
    sub_25B0041F4();
    sub_25B0040B4();
    v30 = v56;
    v31 = v57;
    v32 = (*(v57 + 32))(v56, v17, v29);
    if (*(v27 + 16))
    {
      v45[1] = v45;
      MEMORY[0x28223BE20](v32);
      v52 = v27;
      sub_25B005B34();
      sub_25B005B24();
      sub_25B005AE4();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v30 = v56;
      (*(v31 + 16))(v48, v56, v29);
      v33 = sub_25B0050A4();
      v35 = v34;
      v37 = v36;
      v39 = v38;

      v59 = v33;
      v60 = v35;
      v61 = v37 & 1;
      v62 = v39;
      v31 = v57;
      v29 = v58;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24328);
      sub_25AF3E724();
      v40 = v47;
      sub_25B0055B4();

      (*(v20 + 8))(v25, v55);
      v42 = v53;
      v41 = v54;
      v43 = v50;
      (*(v54 + 32))(v53, v40, v50);
      v44 = 0;
    }

    else
    {
      (*(v20 + 8))(v25, v28);

      v44 = 1;
      v43 = v50;
      v42 = v53;
      v41 = v54;
    }

    (*(v41 + 56))(v42, v44, 1, v43);
    sub_25AF25B0C(v42, v51, &qword_27FA24320);
    (*(v31 + 8))(v30, v29);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_25AF3C74C(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4)
{
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  *(v7 + 32) = a4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24340);
  type metadata accessor for ControlProvidingAppView(0);
  sub_25AF0F274(&qword_27FA24348, &qword_27FA24340);
  sub_25AF3E6CC(&qword_27FA24338, type metadata accessor for ControlProvidingAppView);
  sub_25AF3E848();
  sub_25B005584();
}

uint64_t sub_25AF3C910@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v14 = a2;
  v3 = type metadata accessor for ControlProvidingAppView(0);
  MEMORY[0x28223BE20](v3);
  v5 = (&v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *a1;
  v7 = a1[1];
  v8 = a1[2];
  v9 = a1[3];
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  result = swift_task_isCurrentExecutor();
  if ((result & 1) == 0)
  {
    result = swift_task_reportUnexpectedExecutor();
  }

  if (qword_27FA30B10)
  {
    v11 = *(qword_27FA30B10 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_controlsModel);

    v12 = v11;
    sub_25AF2DB64(v6, v7, v8, v9);

    *v5 = v6;
    v5[1] = v7;
    v5[2] = v8;
    v5[3] = v9;
    type metadata accessor for _ControlsAvailableModel.LoadingModel(0);
    sub_25AF3E6CC(&qword_27FA240A0, type metadata accessor for _ControlsAvailableModel.LoadingModel);
    sub_25B0055E4();
    sub_25AF3E89C(v5, v14, type metadata accessor for ControlProvidingAppView);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25AF3CAFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24540);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v17 - v8;
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for ControlProvidingAppView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24468);
  sub_25B0055D4();
  v10 = v18;
  swift_getKeyPath();
  v18 = v10;
  sub_25AF3E6CC(&qword_27FA240A0, type metadata accessor for _ControlsAvailableModel.LoadingModel);
  sub_25B004234();

  v11 = *(v10 + 16);
  v11;

  if (!v11)
  {
    sub_25B0055D4();

    if (qword_27FA23710 != -1)
    {
      swift_once();
    }

    v12 = qword_27FA30AF8;
  }

  v18 = sub_25B005444();
  sub_25B005294();

  v13 = *(a1 + 16);
  v14 = *(a1 + 24);
  sub_25AF25FC4(v9, v6, &qword_27FA24540);
  sub_25AF25FC4(v6, a2, &qword_27FA24540);
  v15 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24548) + 48);
  *v15 = v13;
  *(v15 + 8) = v14;
  *(v15 + 16) = 0;
  *(v15 + 24) = MEMORY[0x277D84F90];

  sub_25AF25F20(v13, v14, 0);

  sub_25AF2602C(v9, &qword_27FA24540);
  sub_25AF25F30(v13, v14, 0);

  sub_25AF2602C(v6, &qword_27FA24540);
}

uint64_t sub_25AF3CE28()
{
  v1 = sub_25B004E14();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24528);
  MEMORY[0x28223BE20](v5);
  v7 = &v10 - v6;
  *v7 = sub_25B004B44();
  *(v7 + 1) = 0;
  v7[16] = 1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24530);
  sub_25AF3CAFC(v0, &v7[*(v8 + 44)]);
  sub_25B004E04();
  sub_25AF0F274(&qword_27FA24538, &qword_27FA24528);
  sub_25B0052E4();
  (*(v2 + 8))(v4, v1);
  return sub_25AF2602C(v7, &qword_27FA24528);
}

void sub_25AF3CFE8(uint64_t a1@<X0>, __int16 a2@<W1>, uint64_t a3@<X8>)
{
  v18[0] = a1;
  v18[1] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24550);
  MEMORY[0x28223BE20](v4);
  v6 = v18 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24558);
  MEMORY[0x28223BE20](v7);
  v9 = v18 - v8;
  if (qword_27FA30B10)
  {
    v10 = *(qword_27FA30B10 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_availableControlsModel);

    sub_25AFEC4BC();

    swift_getKeyPath();
    v19 = v10;
    sub_25AF3E6CC(&qword_27FA24078, type metadata accessor for _ControlsAvailableModel);
    sub_25B004234();

    v12 = sub_25AF3EA44(v11, 2, v10);

    v13 = sub_25AF174DC(v12);

    if ((a2 & 0x100) != 0)
    {
      v19 = MEMORY[0x277D84F90];
      sub_25AF36720(v13);
      v13 = v19;
    }

    if (*(v13 + 16))
    {
      v14 = sub_25AF29238(v13, a2 & 1);

      v15 = *(v14 + 16);

      if (v15)
      {
        v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24560);
        (*(*(v16 - 8) + 16))(v6, v18[0], v16);
        swift_storeEnumTagMultiPayload();
        sub_25AF0F274(&qword_27FA24568, &qword_27FA24558);
        sub_25AF0F274(&qword_27FA24570, &qword_27FA24560);
        sub_25B004C74();

        return;
      }
    }

    else
    {
    }

    *v9 = sub_25B004B44();
    *(v9 + 1) = 0;
    v9[16] = 1;
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24578);
    sub_25AF3D440(&v9[*(v17 + 44)]);
    sub_25AF25FC4(v9, v6, &qword_27FA24558);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24560);
    sub_25AF0F274(&qword_27FA24568, &qword_27FA24558);
    sub_25AF0F274(&qword_27FA24570, &qword_27FA24560);
    sub_25B004C74();

    sub_25AF2602C(v9, &qword_27FA24558);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_25AF3D440@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24580);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v14 - v7;
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_25B0045F4();
  v9 = *(v3 + 16);
  v9(v5, v8, v2);
  *a1 = 0;
  *(a1 + 8) = 0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24588);
  v9((a1 + *(v10 + 48)), v5, v2);
  v11 = a1 + *(v10 + 64);
  *v11 = 0;
  *(v11 + 8) = 0;
  v12 = *(v3 + 8);
  v12(v8, v2);
  v12(v5, v2);
}

void sub_25AF3D628(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (v2[1])
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  sub_25AF3CFE8(a1, v3 | *v2, a2);
}

uint64_t sub_25AF3D658(uint64_t a1, char a2)
{
  v4 = sub_25B004B14();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if ((a2 & 1) == 0)
  {

    sub_25B005CC4();
    v8 = sub_25B004F24();
    sub_25B0044A4();

    sub_25B004B04();
    swift_getAtKeyPath();
    sub_25AF241CC(a1, 0);
    (*(v5 + 8))(v7, v4);
    return v10[15];
  }

  return a1;
}

uint64_t sub_25AF3D7C4(uint64_t a1)
{
  v2 = type metadata accessor for ButtonAndLabel.ParentState(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25AF3D854(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ButtonAndLabel.ParentState(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 36));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_25AF3D924(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ButtonAndLabel.ParentState(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36)) = (a2 - 1);
  }

  return result;
}

void sub_25AF3D9DC()
{
  type metadata accessor for ButtonAndLabel.ParentState(319);
  if (v0 <= 0x3F)
  {
    sub_25AF3DAB4(319, &qword_27FA23B98, &type metadata for PreviewingMode, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for SelectControlModel(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_25AF3DAB4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_25AF3DB88()
{
  result = qword_27FA242B8;
  if (!qword_27FA242B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA242B8);
  }

  return result;
}

uint64_t sub_25AF3DBEC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_25B004B14();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24360);
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - v9;
  sub_25AF25FC4(v2, &v13 - v9, &qword_27FA24360);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_25AF25B0C(v10, a1, &qword_27FA24368);
  }

  sub_25B005CC4();
  v12 = sub_25B004F24();
  sub_25B0044A4();

  sub_25B004B04();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_25AF3DDF4@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  v6 = v3;
  v8 = sub_25B004B14();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  MEMORY[0x28223BE20](v12);
  v14 = &v18 - v13;
  sub_25AF25FC4(v6, &v18 - v13, a1);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = a2(0);
    return (*(*(v15 - 8) + 32))(a3, v14, v15);
  }

  else
  {
    sub_25B005CC4();
    v17 = sub_25B004F24();
    sub_25B0044A4();

    sub_25B004B04();
    swift_getAtKeyPath();

    return (*(v9 + 8))(v11, v8);
  }
}

uint64_t sub_25AF3E01C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_25AF3E064(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_25AF3E0C4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_25AF3E10C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_25AF3E164(uint64_t a1, int a2)
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

uint64_t sub_25AF3E1AC(uint64_t result, int a2, int a3)
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

uint64_t sub_25AF3E20C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ButtonAndLabel.ParentState(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 28));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }
}

uint64_t sub_25AF3E2EC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ButtonAndLabel.ParentState(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 28)) = a2;
  }

  return result;
}

void sub_25AF3E3A8()
{
  type metadata accessor for ButtonAndLabel.ParentState(319);
  if (v0 <= 0x3F)
  {
    sub_25AF3DAB4(319, &qword_27FA23B98, &type metadata for PreviewingMode, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_25AF3E4EC(319, &qword_27FA242E8, &qword_27FA242C8, &unk_25B00B0D8, MEMORY[0x277CE10B8]);
      if (v2 <= 0x3F)
      {
        sub_25AF3F6AC(319, &qword_27FA242F0, type metadata accessor for CHSControlVisibility, MEMORY[0x277CE10B8]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_25AF3E4EC(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_25AF3E564()
{
  result = qword_27FA242F8;
  if (!qword_27FA242F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA242A8);
    sub_25AF0F274(&qword_27FA24300, &qword_27FA24308);
    sub_25AF3E61C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA242F8);
  }

  return result;
}

unint64_t sub_25AF3E61C()
{
  result = qword_27FA24310;
  if (!qword_27FA24310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA24310);
  }

  return result;
}

uint64_t sub_25AF3E6CC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_25AF3E724()
{
  result = qword_27FA24330;
  if (!qword_27FA24330)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA24328);
    sub_25AF3E6CC(&qword_27FA24338, type metadata accessor for ControlProvidingAppView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA24330);
  }

  return result;
}

uint64_t sub_25AF3E7F8()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

unint64_t sub_25AF3E848()
{
  result = qword_27FA24350;
  if (!qword_27FA24350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA24350);
  }

  return result;
}

uint64_t sub_25AF3E89C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_25AF3E90C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25AF3E978()
{
  type metadata accessor for TopLevelGridSection(0);

  return sub_25AF39D10();
}

uint64_t sub_25AF3EA04(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_25AF3EA44(uint64_t a1, char a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v5 = a1;
    v48 = MEMORY[0x277D84F90];
    sub_25AF98A70(0, v3, 0);
    v6 = v48;
    v7 = v5 + 64;
    v8 = sub_25B005E64();
    result = sub_25B005B34();
    v10 = 0;
    v34 = v5 + 72;
    v35 = v5 + 64;
    v36 = v3;
    v37 = v5;
    while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(v5 + 32))
    {
      if ((*(v7 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
      {
        goto LABEL_34;
      }

      v41 = 1 << v8;
      v42 = v8 >> 6;
      v43 = v6;
      v44 = *(v5 + 36);
      v45 = v8;

      sub_25B005B24();
      sub_25B005AE4();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v40 = v10;
      v12 = *(a3 + 48);
      sub_25AF2EBC4(v12);
      sub_25AF34F34(a2, v12, &v47);
      sub_25AF1895C(v12);
      v13 = v47;
      v14 = *(v47 + 16);
      if (v14)
      {
        sub_25AF98A50(0, v14, 0);
        v15 = v4;
        v16 = (v13 + 56);
        do
        {
          v17 = *(v16 - 3);
          v18 = *(v16 - 2);
          v19 = *v16;
          v46 = *(v16 - 1);

          v20 = v17;
          sub_25B005B24();
          sub_25B005AE4();
          if ((swift_task_isCurrentExecutor() & 1) == 0)
          {
            swift_task_reportUnexpectedExecutor();
          }

          v22 = *(v15 + 16);
          v21 = *(v15 + 24);
          if (v22 >= v21 >> 1)
          {
            sub_25AF98A50((v21 > 1), v22 + 1, 1);
          }

          v16 += 4;
          *(v15 + 16) = v22 + 1;
          v23 = v15 + 40 * v22;
          *(v23 + 32) = v20;
          *(v23 + 40) = v18;
          *(v23 + 48) = v46;
          *(v23 + 56) = v19;
          *(v23 + 64) = 64;
          --v14;
        }

        while (v14);

        v4 = MEMORY[0x277D84F90];
        v3 = v36;
        v5 = v37;
        v7 = v35;
      }

      else
      {

        v15 = v4;
      }

      v6 = v43;
      v24 = v44;
      v48 = v43;
      v26 = *(v43 + 16);
      v25 = *(v43 + 24);
      result = v45;
      if (v26 >= v25 >> 1)
      {
        sub_25AF98A70((v25 > 1), v26 + 1, 1);
        v24 = v44;
        result = v45;
        v6 = v48;
      }

      *(v6 + 16) = v26 + 1;
      *(v6 + 8 * v26 + 32) = v15;
      v8 = 1 << *(v5 + 32);
      if (result >= v8)
      {
        goto LABEL_35;
      }

      v27 = *(v7 + 8 * v42);
      if ((v27 & v41) == 0)
      {
        goto LABEL_36;
      }

      if (v24 != *(v5 + 36))
      {
        goto LABEL_37;
      }

      v28 = v27 & (-2 << (result & 0x3F));
      if (v28)
      {
        v8 = __clz(__rbit64(v28)) | result & 0x7FFFFFFFFFFFFFC0;
        v11 = v40;
      }

      else
      {
        v29 = v42 << 6;
        v30 = v42 + 1;
        v31 = (v34 + 8 * v42);
        v11 = v40;
        while (v30 < (v8 + 63) >> 6)
        {
          v33 = *v31++;
          v32 = v33;
          v29 += 64;
          ++v30;
          if (v33)
          {
            result = sub_25AF40220(result, v24, 0);
            v8 = __clz(__rbit64(v32)) + v29;
            goto LABEL_4;
          }
        }

        result = sub_25AF40220(result, v24, 0);
      }

LABEL_4:
      v10 = v11 + 1;
      if (v10 == v3)
      {
        return v6;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F90];
  }

  return result;
}

unint64_t sub_25AF3EE7C()
{
  result = qword_27FA243C0;
  if (!qword_27FA243C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA243B8);
    sub_25AF3EF34();
    sub_25AF0F274(&qword_27FA243E8, &qword_27FA243F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA243C0);
  }

  return result;
}

unint64_t sub_25AF3EF34()
{
  result = qword_27FA243C8;
  if (!qword_27FA243C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA243D0);
    sub_25AF0F274(&qword_27FA243D8, &qword_27FA243E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA243C8);
  }

  return result;
}

uint64_t objectdestroy_43Tm()
{
  v1 = type metadata accessor for TopLevelGridSection(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = *(v1 + 20);
  v6 = v5 + *(type metadata accessor for ButtonAndLabel.ParentState(0) + 20);
  v7 = sub_25B004844();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);
  if (*(v0 + v3 + *(v1 + 28)))
  {
  }

  return MEMORY[0x2821FE8E8](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_25AF3F134(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for TopLevelGridSection(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  return sub_25AF3B560(v2 + v6, *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8)), a1, a2);
}

uint64_t sub_25AF3F1E0()
{
  v1 = type metadata accessor for TopLevelGridSection(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = *(v1 + 20);
  v6 = v5 + *(type metadata accessor for ButtonAndLabel.ParentState(0) + 20);
  v7 = sub_25B004844();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);
  if (*(v0 + v3 + *(v1 + 28)))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_25AF3F310@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for TopLevelGridSection(0) - 8);
  v6 = *(v2 + 16);
  v7 = (v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80)));

  return sub_25AF3A8A4(a1, v7, a2, v6);
}

unint64_t sub_25AF3F394()
{
  result = qword_27FA24420;
  if (!qword_27FA24420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA24428);
    sub_25AF3F418();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA24420);
  }

  return result;
}

unint64_t sub_25AF3F418()
{
  result = qword_27FA24430;
  if (!qword_27FA24430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA24430);
  }

  return result;
}

uint64_t sub_25AF3F480(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24468);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_25AF3F550(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24468);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_25AF3F600()
{
  sub_25AF3F6AC(319, &qword_27FA24480, type metadata accessor for _ControlsAvailableModel.LoadingModel, MEMORY[0x277CE12F8]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_25AF3F6AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t __swift_memcpy3_1(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for ReplaceAvailableControlsIfEmptyEffect(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF)
  {
    if ((a2 + 33554177) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }
  }

  v4 = *a1;
  v5 = v4 >= 2;
  v6 = (v4 + 2147483646) & 0x7FFFFFFF;
  if (!v5)
  {
    v6 = -1;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for ReplaceAvailableControlsIfEmptyEffect(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554177) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFE)
  {
    v3 = 0;
  }

  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 2) = (a2 - 255) >> 16;
    if (v3)
    {
      v4 = ((a2 - 255) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *result = a2 + 1;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t sub_25AF3F840(uint64_t *a1, int a2)
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

uint64_t sub_25AF3F888(uint64_t result, int a2, int a3)
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

uint64_t sub_25AF3F8E4(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_20;
  }

  v2 = a2 + 65282;
  if (a2 + 65282 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (v2 < 0xFF0000)
  {
    v3 = 1;
  }

  if (v2 >= 0x10000)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = *(a1 + 2);
    if (!*(a1 + 2))
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 16)) - 65282;
  }

  if (v4 == 2)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 16)) - 65282;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 16)) - 65282;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 2;
  v9 = (v7 + 2147483646) & 0x7FFFFFFF;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

_WORD *sub_25AF3F998(_WORD *result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 65282;
  if (a3 + 65282 <= 0xFFFEFFFF)
  {
    v4 = 2;
  }

  else
  {
    v4 = 4;
  }

  if (v3 < 0xFF0000)
  {
    v4 = 1;
  }

  if (v3 >= 0x10000)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFE)
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 16) + 1;
    *result = a2 - 254;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        result[1] = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 2) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    result[1] = 0;
  }

  else if (v5)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_25AF3FA50(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

_WORD *sub_25AF3FA70(_WORD *result, unsigned int a2)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
  }

  else if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

uint64_t sub_25AF3FAE8(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
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

unint64_t sub_25AF3FB64()
{
  result = qword_27FA24490;
  if (!qword_27FA24490)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA24318);
    sub_25AF3E724();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA24490);
  }

  return result;
}

unint64_t sub_25AF3FC00()
{
  result = qword_27FA24498;
  if (!qword_27FA24498)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA24398);
    sub_25AF3FC8C();
    sub_25AF3FE78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA24498);
  }

  return result;
}

unint64_t sub_25AF3FC8C()
{
  result = qword_27FA244A0;
  if (!qword_27FA244A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA24390);
    sub_25AF3FD18();
    sub_25AF3FE24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA244A0);
  }

  return result;
}

unint64_t sub_25AF3FD18()
{
  result = qword_27FA244A8;
  if (!qword_27FA244A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA24388);
    sub_25AF0F274(&qword_27FA244B0, &qword_27FA244B8);
    sub_25AF3FDD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA244A8);
  }

  return result;
}

unint64_t sub_25AF3FDD0()
{
  result = qword_27FA244C0;
  if (!qword_27FA244C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA244C0);
  }

  return result;
}

unint64_t sub_25AF3FE24()
{
  result = qword_27FA244C8;
  if (!qword_27FA244C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA244C8);
  }

  return result;
}

unint64_t sub_25AF3FE78()
{
  result = qword_27FA244D0;
  if (!qword_27FA244D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA244D0);
  }

  return result;
}

unint64_t sub_25AF3FED0()
{
  result = qword_27FA244D8;
  if (!qword_27FA244D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA243A0);
    sub_25AF3FAE8(&qword_27FA244E0, &qword_27FA244E8, &unk_25B00B548, sub_25AF3FF88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA244D8);
  }

  return result;
}

uint64_t sub_25AF3FFB8(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
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

unint64_t sub_25AF4006C()
{
  result = qword_27FA24500;
  if (!qword_27FA24500)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA243F8);
    sub_25AF40124();
    sub_25AF0F274(&qword_27FA24518, &qword_27FA24520);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA24500);
  }

  return result;
}

unint64_t sub_25AF40124()
{
  result = qword_27FA24508;
  if (!qword_27FA24508)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA24510);
    sub_25AF3135C();
    sub_25AF3EE7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA24508);
  }

  return result;
}

uint64_t sub_25AF40220(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t objectdestroy_98Tm()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

unint64_t sub_25AF402EC()
{
  result = qword_27FA245A8;
  if (!qword_27FA245A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA24590);
    sub_25AF0F274(&qword_27FA245B0, &qword_27FA24598);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA245A8);
  }

  return result;
}

unint64_t sub_25AF403A4()
{
  result = qword_27FA245B8;
  if (!qword_27FA245B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA242A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA245B8);
  }

  return result;
}

uint64_t sub_25AF40428()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA24528);
  sub_25AF0F274(&qword_27FA24538, &qword_27FA24528);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_25AF404C4()
{
  result = qword_27FA245C0;
  if (!qword_27FA245C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA245C8);
    sub_25AF0F274(&qword_27FA24568, &qword_27FA24558);
    sub_25AF0F274(&qword_27FA24570, &qword_27FA24560);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA245C0);
  }

  return result;
}

uint64_t sub_25AF405A8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA24590);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA242A0);
  sub_25AF402EC();
  sub_25AF403A4();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_25AF40654@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24630);
  MEMORY[0x28223BE20](v6);
  v8 = &v12 - v7;
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a2)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = 1.0;
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24650);
  (*(*(v10 - 8) + 16))(v8, a1, v10);
  *&v8[*(v6 + 36)] = v9;
  sub_25AF446D4(v8, a3);
}

uint64_t sub_25AF407E4@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t *a3@<X2>, uint64_t *a4@<X4>, uint64_t a5@<X8>)
{
  v14 = a1;
  v15 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a2)
  {
    v11 = 0.0;
  }

  else
  {
    v11 = 1.0;
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a4);
  (*(*(v12 - 8) + 16))(v10, v14, v12);
  *&v10[*(v8 + 36)] = v11;
  sub_25AF25B0C(v10, v15, a3);
}

void sub_25AF40960(uint64_t a1, void *a2)
{
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = [a2 rootLayer];
  if (v3)
  {
    v4 = v3;
    v5 = v3;
    sub_25AF40B00(v4);
  }

  else
  {
  }
}

uint64_t sub_25AF40A74()
{
  v1 = *v0;
  v2 = type metadata accessor for AnimationPackageView.CAPackageViewLayer();
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  v4 = v1;

  return MEMORY[0x282130A98](v2, sub_25AF44214, v3, v2);
}

void sub_25AF40B00(void *a1)
{
  v2 = OBJC_IVAR____TtCV17NanoControlCenter20AnimationPackageViewP33_BAF0D071F2C9015A0B315C0F79AC2BC918CAPackageViewLayer_packageLayer;
  v6 = *&v1[OBJC_IVAR____TtCV17NanoControlCenter20AnimationPackageViewP33_BAF0D071F2C9015A0B315C0F79AC2BC918CAPackageViewLayer_packageLayer];
  *&v1[OBJC_IVAR____TtCV17NanoControlCenter20AnimationPackageViewP33_BAF0D071F2C9015A0B315C0F79AC2BC918CAPackageViewLayer_packageLayer] = a1;
  v3 = a1;
  [v6 removeFromSuperlayer];
  v4 = *&v1[v2];
  if (v4)
  {
    v5 = v4;
    [v5 setGeometryFlipped_];
    [v1 addSublayer_];
  }
}

void sub_25AF40BA8()
{
  v29.receiver = v0;
  v29.super_class = type metadata accessor for AnimationPackageView.CAPackageViewLayer();
  objc_msgSendSuper2(&v29, sel_layoutSublayers);
  v1 = *&v0[OBJC_IVAR____TtCV17NanoControlCenter20AnimationPackageViewP33_BAF0D071F2C9015A0B315C0F79AC2BC918CAPackageViewLayer_packageLayer];
  if (v1)
  {
    v2 = v1;
    [v0 bounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    [v2 bounds];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v30.origin.x = v4;
    v30.origin.y = v6;
    v30.size.width = v8;
    v30.size.height = v10;
    Width = CGRectGetWidth(v30);
    v24 = v4;
    v31.origin.x = v4;
    v31.origin.y = v6;
    v25 = v10;
    v31.size.width = v8;
    v31.size.height = v10;
    v19 = Width / CGRectGetHeight(v31);
    v32.origin.x = v12;
    v32.origin.y = v14;
    v32.size.width = v16;
    v32.size.height = v18;
    v20 = CGRectGetWidth(v32);
    v33.origin.x = v12;
    v33.origin.y = v14;
    v33.size.width = v16;
    v33.size.height = v18;
    if (v19 >= v20 / CGRectGetHeight(v33))
    {
      v36.origin.x = v24;
      v36.origin.y = v6;
      v36.size.width = v8;
      v36.size.height = v25;
      Height = CGRectGetHeight(v36);
      v37.origin.x = v12;
      v37.origin.y = v14;
      v37.size.width = v16;
      v37.size.height = v18;
      v22 = CGRectGetHeight(v37);
    }

    else
    {
      v34.origin.x = v24;
      v34.origin.y = v6;
      v34.size.width = v8;
      v34.size.height = v25;
      Height = CGRectGetWidth(v34);
      v35.origin.x = v12;
      v35.origin.y = v14;
      v35.size.width = v16;
      v35.size.height = v18;
      v22 = CGRectGetWidth(v35);
    }

    CGAffineTransformMakeScale(&v27, Height / v22, Height / v22);
    *&m.a = *&v27.m11;
    *&m.c = *&v27.m13;
    *&m.tx = *&v27.m21;
    CATransform3DMakeAffineTransform(&v27, &m);
    [v2 setTransform_];
    [v0 bounds];
    MidX = CGRectGetMidX(v38);
    [v0 bounds];
    [v2 setPosition_];
  }
}

id sub_25AF40F64()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AnimationPackageView.CAPackageViewLayer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_25AF40FD0@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v90 = a3;
  sub_25B005B34();
  v5 = sub_25B005B24();
  v6 = MEMORY[0x277D85700];
  v91 = v5;
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v89 = v75;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24618);
  v87 = *(v88 - 8);
  v86 = *(v87 + 64);
  MEMORY[0x28223BE20](v88);
  v92 = v75 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24620);
  v85 = v75;
  v84 = v8;
  v83 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = v75 - v9;
  sub_25AF4421C(a2, v94);
  v11 = sub_25B005B24();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = v6;
  v13 = a2[7];
  *(v12 + 128) = a2[6];
  *(v12 + 144) = v13;
  v14 = a2[9];
  *(v12 + 160) = a2[8];
  *(v12 + 176) = v14;
  v15 = a2[3];
  *(v12 + 64) = a2[2];
  *(v12 + 80) = v15;
  v16 = a2[5];
  *(v12 + 96) = a2[4];
  *(v12 + 112) = v16;
  v17 = a2[1];
  *(v12 + 32) = *a2;
  *(v12 + 48) = v17;
  v82 = sub_25B005B64();
  v18 = *(v82 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v82);
  v20 = (v19 + 15) & 0xFFFFFFFFFFFFFFF0;
  v21 = v75 - v20;
  sub_25B005B44();
  if (__isPlatformVersionAtLeast(2, 26, 4, 0))
  {
    v79 = sub_25B004824();
    v80 = v75;
    v78 = *(v79 - 8);
    MEMORY[0x28223BE20](v79);
    v77 = v75 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
    *v94 = 0;
    *&v94[8] = 0xE000000000000000;
    sub_25B005F24();

    *v94 = 0xD000000000000039;
    *&v94[8] = 0x800000025B0171B0;
    *&v98 = 131;
    v23 = sub_25B006124();
    v81 = v75;
    MEMORY[0x25F85D7B0](v23);

    v76 = a1;
    v75[1] = v75;
    v25 = MEMORY[0x28223BE20](v24);
    v26 = v75 - v20;
    v27 = v75 - v20;
    v28 = v82;
    (*(v18 + 16))(v26, v27, v82, v25);
    v29 = v77;
    sub_25B004814();
    (*(v18 + 8))(v21, v28);
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA23820);
    (*(*(v30 - 8) + 16))(v10, v76, v30);
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA23828);
    (*(v78 + 32))(&v10[*(v31 + 36)], v29, v79);
  }

  else
  {
    v32 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA23830) + 36)];
    v33 = sub_25B004754();
    (*(v18 + 32))(&v32[*(v33 + 20)], v75 - v20, v82);
    *v32 = &unk_25B00BAC0;
    *(v32 + 1) = v12;
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA23820);
    (*(*(v34 - 8) + 16))(v10, a1, v34);
  }

  v98 = a2[9];
  *v94 = a2[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24628);
  v35 = sub_25B005494();
  if (v93)
  {
  }

  MEMORY[0x28223BE20](v35);
  LOBYTE(v75[-2]) = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24630);
  v37 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA23820);
  v38 = sub_25AF0F274(&qword_27FA24638, &qword_27FA23820);
  *v94 = v37;
  *&v94[8] = v38;
  swift_getOpaqueTypeConformance2();
  sub_25AF44368();
  v39 = v84;
  sub_25B005394();
  (*(v83 + 8))(v10, v39);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24658);
  v85 = v75;
  v84 = v40;
  v83 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v82 = v41;
  v42 = v75 - v41;
  *v94 = v98;
  sub_25B005494();
  v43 = v93;
  sub_25B0057D4();
  v45 = v44;
  v47 = v46;
  *v94 = v98;
  v48 = sub_25B005494();
  if (v93)
  {
  }

  v49 = *(a2 + 128);
  *v94 = v43;
  __asm { FMOV            V0.2D, #0.5 }

  *&v94[8] = _Q0;
  v95 = v45;
  v96 = v47;
  v97 = v49;
  MEMORY[0x28223BE20](v48);
  LOBYTE(v75[-2]) = v55;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24660);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24668);
  sub_25AF4445C();
  sub_25AF4461C();
  sub_25B005394();

  v81 = v75;
  v57 = MEMORY[0x28223BE20](v56);
  v59 = v75 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = v87;
  v78 = *(v87 + 16);
  v80 = v59;
  v61 = v42;
  v79 = v42;
  v62 = v88;
  v63 = (v78)(v59, v92, v88, v57);
  v86 = v75;
  v64 = MEMORY[0x28223BE20](v63);
  v65 = v75 - v82;
  v66 = v83;
  v67 = *(v83 + 16);
  v68 = v61;
  v69 = v84;
  v67(v75 - v82, v68, v84, v64);
  v70 = v90;
  (v78)(v90, v59, v62);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA246B0);
  (v67)(v70 + *(v71 + 48), v65, v69);
  v72 = *(v66 + 8);
  v72(v79, v69);
  v73 = *(v60 + 8);
  v73(v92, v62);
  v72(v65, v69);
  v73(v80, v62);
}

uint64_t sub_25AF41B48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a3;
  v3[6] = sub_25B005B34();
  v3[7] = sub_25B005B24();
  v5 = *(a3 + 40);
  v6 = swift_task_alloc();
  v3[8] = v6;
  *v6 = v3;
  v6[1] = sub_25AF41C00;

  return sub_25AF41DE0(v5);
}

uint64_t sub_25AF41C00(uint64_t a1)
{
  *(*v1 + 72) = a1;

  v3 = sub_25B005AE4();

  return MEMORY[0x2822009F8](sub_25AF41D44, v3, v2);
}

uint64_t sub_25AF41D44()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 40);

  *(v0 + 16) = *(v2 + 144);
  *(v0 + 32) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24628);
  sub_25B0054A4();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_25AF41DE0(uint64_t a1)
{
  v2[99] = v1;
  v2[93] = a1;
  v3 = sub_25B004134();
  v2[105] = v3;
  v4 = *(v3 - 8);
  v2[106] = v4;
  v2[107] = *(v4 + 64);
  v2[108] = swift_task_alloc();
  v2[109] = swift_task_alloc();
  sub_25B005B34();
  v2[110] = sub_25B005B24();
  v6 = sub_25B005AE4();
  v2[111] = v6;
  v2[112] = v5;

  return MEMORY[0x2822009F8](sub_25AF41EF0, v6, v5);
}

uint64_t sub_25AF41EF0()
{
  v23 = v0;
  if (qword_27FA23728 != -1)
  {
    swift_once();
  }

  v1 = v0[99];
  v2 = qword_27FA30B00;
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = sub_25B005924();
  v6 = sub_25B005924();
  v7 = [v2 URLForResource:v5 withExtension:v6];

  if (v7)
  {
    v8 = v0[109];
    v9 = v0[108];
    v10 = v0[106];
    v11 = v0[105];
    sub_25B004124();

    (*(v10 + 16))(v9, v8, v11);
    v12 = (*(v10 + 80) + 16) & ~*(v10 + 80);
    v13 = swift_allocObject();
    (*(v10 + 32))(v13 + v12, v9, v11);
    v14 = swift_allocObject();
    v0[113] = v14;
    *(v14 + 16) = &unk_25B00BB28;
    *(v14 + 24) = v13;
    sub_25AF18BD4(0, &qword_27FA246B8);
    swift_asyncLet_begin();

    return MEMORY[0x282200930](v0 + 2, v0 + 87, sub_25AF422A0, v0 + 82);
  }

  else
  {

    if (qword_27FA23800 != -1)
    {
      swift_once();
    }

    v15 = sub_25B0044C4();
    __swift_project_value_buffer(v15, qword_27FA30C28);

    v16 = sub_25B0044B4();
    v17 = sub_25B005CB4();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v22 = v19;
      *v18 = 136315394;
      *(v18 + 4) = sub_25AF8E7DC(0xD000000000000013, 0x800000025B017220, &v22);
      *(v18 + 12) = 2080;
      *(v18 + 14) = sub_25AF8E7DC(v3, v4, &v22);
      _os_log_impl(&dword_25AF0B000, v16, v17, "%s couldn't get URL for archive with name %s", v18, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25F85EC30](v19, -1, -1);
      MEMORY[0x25F85EC30](v18, -1, -1);
    }

    v20 = v0[1];

    return v20(0);
  }
}

uint64_t sub_25AF422A0()
{
  v1[114] = v0;
  if (v0)
  {
    v2 = sub_25AF4277C;
  }

  else
  {
    v2 = sub_25AF422D8;
  }

  return MEMORY[0x2822009F8](v2, v1[111], v1[112]);
}

uint64_t sub_25AF422D8()
{
  v27 = v0;
  v1 = v0[87];
  v0[115] = v1;
  v2 = v1;
  v3 = [v2 rootLayer];
  if (v3)
  {
    v4 = v3;
    v5 = objc_allocWithZone(MEMORY[0x277CD9FB8]);
    v6 = v4;
    v7 = [v5 initWithLayer_];
    if (v7)
    {
      v8 = v7;
      v9 = v0[99];
      v10 = v0[93];
      [v7 setInitialStatesOfLayer_];

      v11 = *(v9 + 32);
      type metadata accessor for AnimationPackageView.AnimationModel(0);
      v12 = swift_allocObject();
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      v13 = OBJC_IVAR____TtCV17NanoControlCenter20AnimationPackageView14AnimationModel_lastStateChangeDate;
      v14 = sub_25B004194();
      (*(*(v14 - 8) + 56))(v12 + v13, 1, 1, v14);
      *(v12 + 16) = v11;
      *(v12 + 24) = v8;
      *(v12 + 32) = v6;
      v15 = *(v10 + OBJC_IVAR____TtC17NanoControlCenter17GlanceButtonModel_animationPackageViewAnimationModel);
      *(v10 + OBJC_IVAR____TtC17NanoControlCenter17GlanceButtonModel_animationPackageViewAnimationModel) = v12;
      if (v15)
      {
        v16 = v12 == v15;
      }

      else
      {
        v16 = 0;
      }

      if (!v16)
      {
        v17 = v6;
        v18 = v8;

        sub_25AFB956C(0, 0);
      }

      v19 = v0 + 2;
      goto LABEL_15;
    }
  }

  if (qword_27FA23800 != -1)
  {
    swift_once();
  }

  v20 = sub_25B0044C4();
  __swift_project_value_buffer(v20, qword_27FA30C28);
  v21 = sub_25B0044B4();
  v22 = sub_25B005CB4();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v26 = v24;
    *v23 = 136315138;
    *(v23 + 4) = sub_25AF8E7DC(0xD000000000000013, 0x800000025B017220, &v26);
    _os_log_impl(&dword_25AF0B000, v21, v22, "%s couldn't get root layer or create state controller for package from archive", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v24);
    MEMORY[0x25F85EC30](v24, -1, -1);
    MEMORY[0x25F85EC30](v23, -1, -1);
  }

  v19 = v0 + 2;
LABEL_15:

  return MEMORY[0x282200920](v19);
}

uint64_t sub_25AF425FC()
{
  v1 = v0[109];
  v2 = v0[106];
  v3 = v0[105];

  (*(v2 + 8))(v1, v3);

  v4 = v0[115];

  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_25AF426CC()
{
  v1 = v0[109];
  v2 = v0[106];
  v3 = v0[105];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4(0);
}

uint64_t sub_25AF4277C()
{

  return MEMORY[0x282200920](v0 + 16);
}

uint64_t sub_25AF42804@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = v2[7];
  v13[6] = v2[6];
  v13[7] = v5;
  v6 = v2[9];
  v13[8] = v2[8];
  v13[9] = v6;
  v7 = v2[3];
  v13[2] = v2[2];
  v13[3] = v7;
  v8 = v2[5];
  v13[4] = v2[4];
  v13[5] = v8;
  v9 = v2[1];
  v13[0] = *v2;
  v13[1] = v9;
  *a2 = sub_25B0056B4();
  a2[1] = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24610);
  return sub_25AF40FD0(a1, v13, a2 + *(v11 + 44));
}

void sub_25AF42890(int a1, int a2, int a3)
{
  LODWORD(v89) = a3;
  LODWORD(v90) = a2;
  v5 = a1 & 1;
  v6 = sub_25B005834();
  v84 = *(v6 - 8);
  v85 = v6;
  MEMORY[0x28223BE20](v6);
  v82 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_25B005854();
  v81 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v80 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25B005884();
  v10 = *(v9 - 8);
  v87 = v9;
  v88 = v10;
  MEMORY[0x28223BE20](v9);
  v79 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v70 - v13;
  v15 = sub_25B005824();
  v86 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA271A0);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v70 - v19;
  v21 = sub_25B004194();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21);
  MEMORY[0x28223BE20](v23);
  v28 = &v70 - v27;
  if (*(v3 + 48) != v5)
  {
    v29 = *(v3 + 16);
    v77 = v25;
    v78 = a1;
    v75 = v14;
    v74 = v17;
    v73 = v26;
    if ((a1 & 1) == 0)
    {
      goto LABEL_6;
    }

    if ((v29 & 4) != 0)
    {
      v30 = v24;
    }

    else if ((v29 & 0x10) != 0)
    {
      v30 = v24;
    }

    else
    {
      if ((v29 & 1) == 0)
      {
LABEL_6:
        v30 = v24;
        sub_25AFA67FC(v29);
        if (!v31)
        {
          goto LABEL_16;
        }

        goto LABEL_11;
      }

      v30 = v24;
    }

LABEL_11:
    v32 = *(v3 + 32);
    v33 = sub_25B005924();

    v72 = v32;
    v34 = [v32 stateWithName_];

    if (v34)
    {
      v35 = v28;
      v36 = v34;
      LODWORD(v90) = ((v29 & 4) != 0) & v90;
      v76 = v30;
      v71 = v15;
      if (v90 == 1)
      {
        v37 = *(v3 + 24);
        v38 = v34;
        if ([v37 removeAllStateChanges])
        {
          sub_25B005E34();
          swift_unknownObjectRelease();
        }

        else
        {
          aBlock = 0u;
          v93 = 0u;
        }

        sub_25AF2602C(&aBlock, &qword_27FA246D0);
        [v37 cancelTimers];
      }

      else
      {
        v39 = v34;
      }

      sub_25B004184();
      v40 = v77;
      v41 = *(v77 + 16);
      v42 = v76;
      v41(v20, v35, v76);
      (*(v40 + 56))(v20, 0, 1, v42);
      v43 = v35;
      v44 = OBJC_IVAR____TtCV17NanoControlCenter20AnimationPackageView14AnimationModel_lastStateChangeDate;
      swift_beginAccess();
      sub_25AF44A84(v20, v3 + v44);
      swift_endAccess();
      v46 = *(v3 + 40);
      if (v46)
      {
        v47 = v36 == v46;
      }

      else
      {
        v47 = 0;
      }

      v48 = v90;
      if (!v47)
      {
        v48 = 1;
      }

      if (v48 == 1)
      {
        v49 = v43;
        v50 = v78;
        if (v89)
        {
          if (v78)
          {
            v51 = v74;
            *v74 = 30;
            (*(v86 + 104))(v51, *MEMORY[0x277D85178], v71);
            sub_25AF18BD4(0, &qword_27FA271F0);
            v90 = v3;
            v72 = sub_25B005D34();
            v52 = v79;
            sub_25B005864();
            sub_25B005874();
            v53 = *(v88 + 8);
            v88 += 8;
            v89 = v53;
            v53(v52, v87);
            v54 = v41;
            v55 = v73;
            v56 = v76;
            v54(v73, v49, v76);
            v57 = *(v77 + 80);
            v79 = v49;
            v58 = v77;
            v59 = (v57 + 16) & ~v57;
            v60 = (v22 + v59 + 7) & 0xFFFFFFFFFFFFFFF8;
            v61 = swift_allocObject();
            (*(v58 + 32))(v61 + v59, v55, v56);
            *(v61 + v60) = v90;
            *(v61 + ((v60 + 15) & 0xFFFFFFFFFFFFFFF8)) = v36;
            v94 = sub_25AF44BA0;
            v95 = v61;
            *&aBlock = MEMORY[0x277D85DD0];
            *(&aBlock + 1) = 1107296256;
            *&v93 = sub_25AF43684;
            *(&v93 + 1) = &block_descriptor_0;
            v62 = _Block_copy(&aBlock);
            v63 = v36;

            v64 = v80;
            sub_25B005844();
            v91 = MEMORY[0x277D84F90];
            sub_25AF44C50(&qword_27FA246C0, MEMORY[0x277D85198]);
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA25690);
            sub_25AF0F274(&qword_27FA246C8, &unk_27FA25690);
            v65 = v82;
            v66 = v85;
            sub_25B005E54();
            v67 = v75;
            v68 = v72;
            MEMORY[0x25F85DB10](v75, v64, v65, v62);
            v3 = v90;
            _Block_release(v62);

            (*(v84 + 8))(v65, v66);
            (*(v81 + 8))(v64, v83);
            v89(v67, v87);
            (*(v86 + 8))(v74, v71);
            (*(v77 + 8))(v79, v76);

LABEL_30:
            v69 = *(v3 + 40);
            *(v3 + 40) = v36;

            *(v3 + 48) = v50 & 1;
            return;
          }

          LODWORD(v45) = 1.0;
          [*(v3 + 24) setState:v36 ofLayer:v72 transitionSpeed:v45];
        }

        else
        {
          [*(v3 + 24) setState:v36 ofLayer:v72];
        }

        (*(v77 + 8))(v49, v76);
        goto LABEL_30;
      }

      (*(v40 + 8))(v43, v42);

LABEL_29:
      v50 = v78;
      goto LABEL_30;
    }

LABEL_16:
    [*(v3 + 24) setInitialStatesOfLayer_];
    v36 = 0;
    goto LABEL_29;
  }
}

uint64_t sub_25AF43234(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = a3;
  v5 = sub_25B004194();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v25 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA27250);
  MEMORY[0x28223BE20](v8);
  v10 = &v25 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA271A0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v25 - v15;
  sub_25B005B34();
  v27 = sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  (*(v6 + 16))(v16, a1, v5);
  (*(v6 + 56))(v16, 0, 1, v5);
  v17 = OBJC_IVAR____TtCV17NanoControlCenter20AnimationPackageView14AnimationModel_lastStateChangeDate;
  swift_beginAccess();
  v18 = *(v8 + 48);
  sub_25AF44C98(v16, v10);
  sub_25AF44C98(a2 + v17, &v10[v18]);
  v19 = *(v6 + 48);
  if (v19(v10, 1, v5) == 1)
  {
    sub_25AF2602C(v16, &unk_27FA271A0);
    if (v19(&v10[v18], 1, v5) == 1)
    {
      sub_25AF2602C(v10, &unk_27FA271A0);
LABEL_10:
      LODWORD(v20) = 1.0;
      [*(a2 + 24) setState:v26 ofLayer:*(a2 + 32) transitionSpeed:v20];
    }

    goto LABEL_8;
  }

  sub_25AF44C98(v10, v13);
  if (v19(&v10[v18], 1, v5) == 1)
  {
    sub_25AF2602C(v16, &unk_27FA271A0);
    (*(v6 + 8))(v13, v5);
LABEL_8:
    sub_25AF2602C(v10, &qword_27FA27250);
  }

  v21 = v25;
  (*(v6 + 32))(v25, &v10[v18], v5);
  sub_25AF44C50(&qword_27FA246D8, MEMORY[0x277CC9578]);
  v22 = sub_25B0058E4();
  v23 = *(v6 + 8);
  v23(v21, v5);
  sub_25AF2602C(v16, &unk_27FA271A0);
  v23(v13, v5);
  sub_25AF2602C(v10, &unk_27FA271A0);
  if (v22)
  {
    goto LABEL_10;
  }
}

uint64_t sub_25AF43684(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_25AF436C8()
{
  sub_25AF2602C(v0 + OBJC_IVAR____TtCV17NanoControlCenter20AnimationPackageView14AnimationModel_lastStateChangeDate, &unk_27FA271A0);

  return swift_deallocClassInstance();
}

void sub_25AF4377C()
{
  sub_25AF43840();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_25AF43840()
{
  if (!qword_27FA271D0)
  {
    sub_25B004194();
    v0 = sub_25B005E04();
    if (!v1)
    {
      atomic_store(v0, &qword_27FA271D0);
    }
  }
}

uint64_t sub_25AF43898(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_25B004134();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25AF43958, 0, 0);
}

uint64_t sub_25AF43958()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  sub_25AF18BD4(0, &qword_27FA246B8);
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_25B005934();
  v7 = sub_25AF43A54(v1, v5, v6, 0);

  v8 = v0[1];

  return v8(v7);
}

id sub_25AF43A54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[1] = *MEMORY[0x277D85DE8];
  v6 = sub_25B004114();
  v7 = sub_25B005924();

  if (a4)
  {
    v8 = sub_25B0058B4();
  }

  else
  {
    v8 = 0;
  }

  v17[0] = 0;
  v9 = [swift_getObjCClassFromMetadata() packageWithContentsOfURL:v6 type:v7 options:v8 error:v17];

  v10 = v17[0];
  if (v9)
  {
    v11 = sub_25B004134();
    v12 = *(*(v11 - 8) + 8);
    v13 = v10;
    v12(a1, v11);
  }

  else
  {
    v14 = v17[0];
    sub_25B004084();

    swift_willThrow();
    v15 = sub_25B004134();
    (*(*(v15 - 8) + 8))(a1, v15);
  }

  return v9;
}

uint64_t sub_25AF43C1C(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_25AF43D08;

  return v5();
}

uint64_t sub_25AF43D08(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v6 = *(v5 + 8);

  return v6();
}

uint64_t sub_25AF43E18()
{

  v1 = OBJC_IVAR____TtCV17NanoControlCenter20AnimationPackageView15ViewLoaderModel___observationRegistrar;
  v2 = sub_25B004274();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_25AF43EE4()
{
  result = sub_25B004274();
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

uint64_t sub_25AF43FA4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_25AF44000(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy160_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = result;
  *(a1 + 112) = v7;
  return result;
}

uint64_t sub_25AF4408C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 160))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25AF440D4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
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
      *(result + 160) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 160) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25AF44184(uint64_t a1)
{
  result = sub_25AF44C50(&qword_27FA24608, type metadata accessor for AnimationPackageView.ViewLoaderModel);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25AF441DC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25AF44254()
{
  swift_unknownObjectRelease();
  sub_25AF18128(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));

  return MEMORY[0x2821FE8E8](v0, 192, 7);
}

uint64_t sub_25AF442BC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_25AF18ADC;

  return sub_25AF41B48(v2, v3, v0 + 32);
}

unint64_t sub_25AF44368()
{
  result = qword_27FA24640;
  if (!qword_27FA24640)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA24630);
    sub_25AF0F274(&qword_27FA24648, &qword_27FA24650);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA24640);
  }

  return result;
}

unint64_t sub_25AF4445C()
{
  result = qword_27FA24670;
  if (!qword_27FA24670)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA24660);
    sub_25AF444E8();
    sub_25AF445C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA24670);
  }

  return result;
}

unint64_t sub_25AF444E8()
{
  result = qword_27FA24678;
  if (!qword_27FA24678)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA24680);
    sub_25AF44574();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA24678);
  }

  return result;
}

unint64_t sub_25AF44574()
{
  result = qword_27FA24688;
  if (!qword_27FA24688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA24688);
  }

  return result;
}

unint64_t sub_25AF445C8()
{
  result = qword_27FA24690;
  if (!qword_27FA24690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA24690);
  }

  return result;
}

unint64_t sub_25AF4461C()
{
  result = qword_27FA24698;
  if (!qword_27FA24698)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA24668);
    sub_25AF0F274(&qword_27FA246A0, &qword_27FA246A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA24698);
  }

  return result;
}

uint64_t sub_25AF446D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24630);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25AF44744()
{
  v1 = sub_25B004134();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_25AF447CC()
{
  v2 = *(sub_25B004134() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_25AF44898;

  return sub_25AF43898(v0 + v3);
}

uint64_t sub_25AF44898(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_25AF44994()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25AF449CC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25AF18ADC;

  return sub_25AF43C1C(a1, v4);
}

uint64_t sub_25AF44A84(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA271A0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_25AF44AF4()
{
  v1 = sub_25B004194();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_25AF44BA0()
{
  v1 = *(sub_25B004194() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + v3);
  v5 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_25AF43234(v0 + v2, v4, v5);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_25AF44C50(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25AF44C98(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA271A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t Collection.ncc_chunks(of:)(uint64_t a1, uint64_t a2)
{
  v25 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v23 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v5 = &v21 - v4;
  v6 = sub_25B005E04();
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v21 - v7;
  v9 = *(a2 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_getAssociatedTypeWitness();
  v21 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v21 - v14;
  sub_25B005AD4();
  v28 = sub_25B005A74();
  v27 = sub_25B005A74();
  (*(v9 + 16))(v12, v24, a2);
  sub_25B0059E4();
  v16 = v23;
  swift_getAssociatedConformanceWitness();
  sub_25B005E14();
  v24 = v16[6];
  if (v24(v8, 1, AssociatedTypeWitness) != 1)
  {
    v18 = v16[4];
    v22 = v8;
    v23 = v18;
    (v18)(v5, v8, AssociatedTypeWitness);
    while (1)
    {
      sub_25B005AB4();
      v19 = v27;
      if (sub_25B005AA4() >= v25)
      {
        v26 = v19;
        sub_25B005AD4();

        v8 = v22;
        sub_25B005AB4();
        sub_25B005AC4();
      }

      sub_25B005E14();
      if (v24(v8, 1, AssociatedTypeWitness) == 1)
      {
        break;
      }

      (v23)(v5, v8, AssociatedTypeWitness);
    }
  }

  (*(v21 + 8))(v15, v13);
  v17 = v27;
  v26 = v27;
  swift_getWitnessTable();
  if (sub_25B005C74())
  {
  }

  else
  {
    v26 = v17;
    sub_25B005AD4();
    sub_25B005AB4();
  }

  return v28;
}

id sub_25AF45208()
{
  *&v0[OBJC_IVAR____TtC17NanoControlCenter25ProfileConnectionObserver_deinitCancellable] = 0;
  swift_unknownObjectWeakInit();
  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    v2 = result;
    *&v0[OBJC_IVAR____TtC17NanoControlCenter25ProfileConnectionObserver_connection] = result;
    v5.receiver = v0;
    v5.super_class = type metadata accessor for ProfileConnectionObserver();
    v3 = v2;
    v4 = objc_msgSendSuper2(&v5, sel_init);
    [v3 registerObserver_];

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_25AF45370()
{
  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    v2 = result;
    [result unregisterObserver_];

    v3.receiver = v0;
    v3.super_class = type metadata accessor for ProfileConnectionObserver();
    return objc_msgSendSuper2(&v3, sel_dealloc);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25AF454D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  sub_25B005B34();
  v4[4] = sub_25B005B24();
  v6 = sub_25B005AE4();

  return MEMORY[0x2822009F8](sub_25AF45570, v6, v5);
}

uint64_t sub_25AF45570()
{

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    GlanceModel.updateLockButtonPresence()();
  }

  **(v0 + 16) = Strong == 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_25AF456B8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA24790);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v16 - v3;
  if (qword_27FA23800 != -1)
  {
    swift_once();
  }

  v5 = sub_25B0044C4();
  __swift_project_value_buffer(v5, qword_27FA30C28);
  v6 = sub_25B0044B4();
  v7 = sub_25B005CD4();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_25AF8E7DC(0xD000000000000043, 0x800000025B0172B0, &v17);
    _os_log_impl(&dword_25AF0B000, v6, v7, "%s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    MEMORY[0x25F85EC30](v9, -1, -1);
    MEMORY[0x25F85EC30](v8, -1, -1);
  }

  v10 = sub_25B005B64();
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  sub_25B005B34();
  v11 = v1;
  v12 = sub_25B005B24();
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D85700];
  v13[2] = v12;
  v13[3] = v14;
  v13[4] = v11;
  sub_25AF6D0D4(0, 0, v4, &unk_25B00BBB0, v13);
}

uint64_t sub_25AF458F4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_25AF45934(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25AF18ADC;

  return sub_25AF454D8(a1, v4, v5, v6);
}

uint64_t sub_25AF459FC(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA247A0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_25AF45ACC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA247A0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_25AF45B9C()
{
  type metadata accessor for EditingModel();
  if (v0 <= 0x3F)
  {
    type metadata accessor for GlanceScrollingModel();
    if (v1 <= 0x3F)
    {
      sub_25AF46ECC(319, &qword_27FA247B8, MEMORY[0x277CE10B8]);
      if (v2 <= 0x3F)
      {
        sub_25AF471D4(319, &qword_27FA247C0, MEMORY[0x277CE10B8]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_25AF45CA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v33 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA247D0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v30 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA247D8);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v30 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA247E0);
  v13 = *(v12 - 8);
  v31 = v12;
  v32 = v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v30 - v14;
  v34 = a1;
  v35 = v3;
  sub_25B004F34();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA247E8);
  sub_25AF46938();
  sub_25B004504();
  v16 = type metadata accessor for MonitoredScrollViewEffect(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA247A0);
  sub_25B0054B4();
  v17 = v3 + *(v16 + 28);
  v18 = v17[16];
  v19 = *(v17 + 3);
  v36 = *v17;
  v37 = v18;
  v38 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24840);
  sub_25B005494();
  v20 = sub_25AF0F274(&qword_27FA24848, &qword_27FA247D8);
  sub_25B0051C4();
  sub_25AF46C20(v7);
  (*(v9 + 8))(v11, v8);
  v21 = v3[1];
  *&v36 = v8;
  *(&v36 + 1) = v20;
  swift_getOpaqueTypeConformance2();
  v22 = v33;
  v23 = v31;
  sub_25B0052A4();
  (*(v32 + 8))(v15, v23);
  v24 = v22 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24850) + 36);
  *v24 = 1;
  *(v24 + 8) = 0;
  *(v24 + 16) = 0;
  *(v22 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24858) + 36)) = v21;
  v25 = v22;
  v26 = *v3;
  v27 = (v25 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24860) + 36));
  *v27 = v26;
  v27[1] = v21;
  v28 = v21;
}

uint64_t sub_25AF46088@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for MonitoredScrollViewEffect(0);
  v5 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24810) + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA247A0);
  sub_25B0054B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24840);
  sub_25B0054B4();
  v6 = a2[1];
  v7 = type metadata accessor for DraggingReorderAndScrollEffect();
  v8 = v5 + *(v7 + 20);
  *v8 = v20;
  *(v8 + 16) = v21;
  *(v8 + 24) = v22;
  *(v8 + 32) = v23;
  *(v5 + *(v7 + 24)) = v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24820);
  (*(*(v9 - 8) + 16))(a3, a1, v9);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA247E8) + 36);
  v11 = v6;
  sub_25B0054B4();
  sub_25B0054B4();
  v12 = *a2;
  v13 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24800) + 36);
  sub_25AF46C88(a3 + v10, v13);
  v14 = type metadata accessor for AnimateEditModeForAnimationsEffect(0);
  v15 = v13 + v14[5];
  *v15 = v20;
  *(v15 + 16) = v21;
  *(v15 + 24) = v22;
  *(v15 + 32) = v23;
  *(v13 + v14[6]) = v12;
  v16 = v14[7];
  v17 = v11;

  *(v13 + v16) = v17;
  return result;
}

uint64_t sub_25AF46328@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24938);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t sub_25AF463A0@<X0>(void *a1@<X8>)
{
  result = sub_25B004714();
  *a1 = v3;
  return result;
}

uint64_t sub_25AF463CC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24920);
  sub_25AF0F274(&qword_27FA24928, &qword_27FA24920);
  sub_25AF496E8();
  return sub_25B005204();
}

uint64_t sub_25AF464D4(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = qword_27FA30B10;
  if (qword_27FA30B10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA248F8);
    swift_getKeyPath();
    sub_25AF46B98(&qword_27FA25250, type metadata accessor for GlanceModel);
    v6 = v3;
    sub_25B004234();

    v7 = OBJC_IVAR____TtC17NanoControlCenter11GlanceModel__editMode;
    swift_beginAccess();
    v8 = v6[v7];

    swift_getKeyPath();
    sub_25AF46B98(&qword_27FA23D60, type metadata accessor for EditingModel);
    sub_25B004234();

    LOBYTE(v7) = v8 ^ *(a2 + 16);
    *(swift_allocObject() + 16) = (v7 & 1) == 0;
    v9 = swift_allocObject();
    *(v9 + 16) = a2;
    *(v9 + 24) = a3;

    v10 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA24900);
    sub_25AF0F274(&qword_27FA24908, &qword_27FA24900);
    sub_25AF49170();
    sub_25B005304();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25AF4675C@<X0>(char a1@<W1>, uint64_t a2@<X8>)
{
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a1)
  {
    sub_25B0047C4();
    v5 = v4;
    sub_25B0047B4();
    v7 = v5 + v6;
    sub_25B0047A4();
    v9 = v8;
    sub_25B0047B4();
    v11 = v10;
    sub_25B0047B4();
    v13 = v12;

    v15 = v9 + v11 + v13;
  }

  else
  {

    v7 = 0.0;
    v15 = 0.0;
  }

  *a2 = v7;
  *(a2 + 8) = v15;
  *(a2 + 16) = (a1 & 1) == 0;
  return result;
}

uint64_t sub_25AF46864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if ((v7 & 1) == 0)
  {
    sub_25AF49430(a4, v5, v6);
  }
}

unint64_t sub_25AF46938()
{
  result = qword_27FA247F0;
  if (!qword_27FA247F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA247E8);
    sub_25AF469F4();
    sub_25AF46B98(&qword_27FA24838, type metadata accessor for ScrollToBottomOnEditModeEffect);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA247F0);
  }

  return result;
}

unint64_t sub_25AF469F4()
{
  result = qword_27FA247F8;
  if (!qword_27FA247F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA24800);
    sub_25AF46AB0();
    sub_25AF46B98(&qword_27FA24830, type metadata accessor for AnimateEditModeForAnimationsEffect);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA247F8);
  }

  return result;
}

unint64_t sub_25AF46AB0()
{
  result = qword_27FA24808;
  if (!qword_27FA24808)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA24810);
    sub_25AF0F274(&qword_27FA24818, &qword_27FA24820);
    sub_25AF46B98(&qword_27FA24828, type metadata accessor for DraggingReorderAndScrollEffect);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA24808);
  }

  return result;
}

uint64_t sub_25AF46B98(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25AF46C20(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA247D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25AF46C88(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA247D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25AF46D3C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA247D0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_25AF46DC8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA247D0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_25AF46E44()
{
  sub_25AF46ECC(319, &qword_27FA24878, MEMORY[0x277CE11F8]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_25AF46ECC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_25B004804();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_25AF46F40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA247D0);
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

uint64_t sub_25AF47020(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA247D0);
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

void sub_25AF470E8()
{
  sub_25AF46ECC(319, &qword_27FA24878, MEMORY[0x277CE11F8]);
  if (v0 <= 0x3F)
  {
    sub_25AF471D4(319, &qword_27FA24890, MEMORY[0x277CE11F8]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for EditingModel();
      if (v2 <= 0x3F)
      {
        type metadata accessor for GlanceScrollingModel();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_25AF471D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA247C8);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_25AF47244()
{
  result = qword_27FA24898;
  if (!qword_27FA24898)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA24860);
    sub_25AF472D0();
    sub_25AF475D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA24898);
  }

  return result;
}

unint64_t sub_25AF472D0()
{
  result = qword_27FA248A0;
  if (!qword_27FA248A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA248A8);
    sub_25AF4735C();
    sub_25AF4757C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA248A0);
  }

  return result;
}

unint64_t sub_25AF4735C()
{
  result = qword_27FA248B0;
  if (!qword_27FA248B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA24858);
    sub_25AF473E8();
    sub_25AF47528();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA248B0);
  }

  return result;
}

unint64_t sub_25AF473E8()
{
  result = qword_27FA248B8;
  if (!qword_27FA248B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA24850);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA247E0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA247D8);
    sub_25AF0F274(&qword_27FA24848, &qword_27FA247D8);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_25AF3FE24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA248B8);
  }

  return result;
}

unint64_t sub_25AF47528()
{
  result = qword_27FA248C0;
  if (!qword_27FA248C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA248C0);
  }

  return result;
}

unint64_t sub_25AF4757C()
{
  result = qword_27FA248C8;
  if (!qword_27FA248C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA248C8);
  }

  return result;
}

unint64_t sub_25AF475D0()
{
  result = qword_27FA248D0;
  if (!qword_27FA248D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA248D0);
  }

  return result;
}

void sub_25AF47694(uint64_t a1)
{
  v2 = v1;
  v11[1] = a1;
  v3 = type metadata accessor for AnimateEditModeForAnimationsEffect(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = qword_27FA30B10;
  if (qword_27FA30B10)
  {
    swift_getKeyPath();
    v13 = v6;
    sub_25AF46B98(&qword_27FA25250, type metadata accessor for GlanceModel);
    v7 = v6;
    sub_25B004234();

    v8 = OBJC_IVAR____TtC17NanoControlCenter11GlanceModel__editMode;
    swift_beginAccess();
    LOBYTE(v8) = v7[v8];

    v12 = v8;
    sub_25AF48EBC(v2, v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AnimateEditModeForAnimationsEffect);
    v9 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v10 = swift_allocObject();
    sub_25AF49024(v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for AnimateEditModeForAnimationsEffect);
    *(v10 + v9 + v5) = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA248D8);
    sub_25AF0F274(&qword_27FA248E0, &qword_27FA248D8);
    sub_25B005374();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_25AF478F8(uint64_t a1, char a2)
{
  v4 = type metadata accessor for AnimateEditModeForAnimationsEffect(0);
  v21[0] = *(v4 - 8);
  v5 = *(v21[0] + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_25B004E34();
  v22 = *(v7 - 8);
  v23 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25B005B34();
  v21[1] = sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_27FA23800 != -1)
  {
    swift_once();
  }

  v10 = sub_25B0044C4();
  __swift_project_value_buffer(v10, qword_27FA30C28);
  v11 = sub_25B0044B4();
  v12 = sub_25B005C94();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v24[0] = v14;
    *v13 = 136315394;
    *(v13 + 4) = sub_25AF8E7DC(0xD000000000000049, 0x800000025B017380, v24);
    *(v13 + 12) = 2080;
    *(v13 + 14) = sub_25AF8E7DC(0x6E6F632879646F62, 0xEE00293A746E6574, v24);
    _os_log_impl(&dword_25AF0B000, v11, v12, "%s.%s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F85EC30](v14, -1, -1);
    MEMORY[0x25F85EC30](v13, -1, -1);
  }

  if (qword_27FA237A0 != -1)
  {
    swift_once();
  }

  v15 = sub_25B004E24();
  MEMORY[0x28223BE20](v15);
  v21[-2] = a1;
  v16 = a2 & 1;
  LOBYTE(v21[-1]) = a2 & 1;
  sub_25AF48EBC(a1, v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AnimateEditModeForAnimationsEffect);
  v17 = (*(v21[0] + 80) + 16) & ~*(v21[0] + 80);
  v18 = v17 + v5;
  v19 = swift_allocObject();
  sub_25AF49024(v6, v19 + v17, type metadata accessor for AnimateEditModeForAnimationsEffect);
  *(v19 + v18) = v16;
  sub_25B004764();

  (*(v22 + 8))(v9, v23);
}

uint64_t sub_25AF47D20(uint64_t a1, char a2)
{
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = *(a1 + *(type metadata accessor for AnimateEditModeForAnimationsEffect(0) + 24));
  if (*(v4 + 16) == (a2 & 1))
  {
    *(v4 + 16) = a2 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_25AF46B98(&qword_27FA23D60, type metadata accessor for EditingModel);
    sub_25B004224();
  }
}

uint64_t sub_25AF47EC4(uint64_t a1, char a2)
{
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_27FA23800 != -1)
  {
    swift_once();
  }

  v4 = sub_25B0044C4();
  __swift_project_value_buffer(v4, qword_27FA30C28);
  v5 = sub_25B0044B4();
  v6 = sub_25B005CA4();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_25AF8E7DC(0xD000000000000049, 0x800000025B017380, &v12);
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_25AF8E7DC(0x6E6F632879646F62, 0xEE00293A746E6574, &v12);
    _os_log_impl(&dword_25AF0B000, v5, v6, "%s.%s setting editModePostAnimationsComplete", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F85EC30](v8, -1, -1);
    MEMORY[0x25F85EC30](v7, -1, -1);
  }

  v9 = *(a1 + *(type metadata accessor for AnimateEditModeForAnimationsEffect(0) + 24));
  if (*(v9 + 17) == (a2 & 1))
  {
    *(v9 + 17) = a2 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v12 = v9;
    sub_25AF46B98(&qword_27FA23D60, type metadata accessor for EditingModel);
    sub_25B004224();
  }
}

void sub_25AF481D8()
{
  v1 = v0;
  v2 = type metadata accessor for ScrollToBottomOnEditModeEffect(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  if (qword_27FA30B10)
  {
    v5 = *(qword_27FA30B10 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_editingModel);
    swift_getKeyPath();
    v10 = v5;
    sub_25AF46B98(&qword_27FA23D60, type metadata accessor for EditingModel);

    sub_25B004234();

    v6 = *(v5 + 16);

    v9[7] = v6;
    sub_25AF48EBC(v1, &v9[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for ScrollToBottomOnEditModeEffect);
    v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v8 = swift_allocObject();
    sub_25AF49024(&v9[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], v8 + v7, type metadata accessor for ScrollToBottomOnEditModeEffect);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA248E8);
    sub_25AF0F274(&qword_27FA248F0, &qword_27FA248E8);
    sub_25B005374();
  }

  else
  {
    __break(1u);
  }
}

void sub_25AF4842C()
{
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_27FA23800 != -1)
  {
    swift_once();
  }

  v0 = sub_25B0044C4();
  __swift_project_value_buffer(v0, qword_27FA30C28);
  v1 = sub_25B0044B4();
  v2 = sub_25B005C94();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v14 = v4;
    *v3 = 136315394;
    *(v3 + 4) = sub_25AF8E7DC(0xD000000000000045, 0x800000025B0173D0, &v14);
    *(v3 + 12) = 2080;
    *(v3 + 14) = sub_25AF8E7DC(0x6E6F632879646F62, 0xEE00293A746E6574, &v14);
    _os_log_impl(&dword_25AF0B000, v1, v2, "%s.%s", v3, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F85EC30](v4, -1, -1);
    MEMORY[0x25F85EC30](v3, -1, -1);
  }

  v5 = qword_27FA30B10;
  if (!qword_27FA30B10)
  {
    __break(1u);
    goto LABEL_18;
  }

  swift_getKeyPath();
  v14 = v5;
  sub_25AF46B98(&qword_27FA25250, type metadata accessor for GlanceModel);
  v6 = v5;
  sub_25B004234();

  v7 = v6[OBJC_IVAR____TtC17NanoControlCenter11GlanceModel__editModeToggledStayAtBottom];

  if (!qword_27FA30B10)
  {
LABEL_18:
    __break(1u);
    return;
  }

  v8 = *(qword_27FA30B10 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_editingModel);
  swift_getKeyPath();
  v14 = v8;
  sub_25AF46B98(&qword_27FA23D60, type metadata accessor for EditingModel);

  sub_25B004234();

  v9 = *(v8 + 17);

  if (v9 == 1 && v7)
  {
    v10 = sub_25B0044B4();
    v11 = sub_25B005C94();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v14 = v13;
      *v12 = 136315394;
      *(v12 + 4) = sub_25AF8E7DC(0xD000000000000045, 0x800000025B0173D0, &v14);
      *(v12 + 12) = 2080;
      *(v12 + 14) = sub_25AF8E7DC(0x6E6F632879646F62, 0xEE00293A746E6574, &v14);
      _os_log_impl(&dword_25AF0B000, v10, v11, "%s.%s animating to stay at bottom", v12, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25F85EC30](v13, -1, -1);
      MEMORY[0x25F85EC30](v12, -1, -1);
    }

    if (qword_27FA237A0 != -1)
    {
      swift_once();
    }

    MEMORY[0x28223BE20](qword_27FA30BE8);
    sub_25B004774();
  }

  else
  {
  }
}

uint64_t sub_25AF48914()
{
  v0 = sub_25B004804();
  MEMORY[0x28223BE20](v0 - 8);
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_25B0047E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA247D0);
  sub_25B005524();
}

uint64_t sub_25AF48A80@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_25AF46B98(&qword_27FA23D60, type metadata accessor for EditingModel);
  sub_25B004234();

  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_25AF48B50@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_25AF46B98(&qword_27FA23D60, type metadata accessor for EditingModel);
  sub_25B004234();

  *a2 = *(v3 + 17);
  return result;
}

uint64_t objectdestroyTm_1()
{
  v1 = (type metadata accessor for AnimateEditModeForAnimationsEffect(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64) + v3;
  v5 = v0 + v3;

  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA247D0) + 32);
  v7 = sub_25B004804();
  (*(*(v7 - 8) + 8))(v5 + v6, v7);

  return MEMORY[0x2821FE8E8](v0, v4 + 1, v2 | 7);
}

uint64_t sub_25AF48D90(uint64_t (*a1)(uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for AnimateEditModeForAnimationsEffect(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));
  v4 = *(v3 + *(v2 + 64));

  return a1(v3, v4);
}

uint64_t sub_25AF48EBC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25AF48F24()
{
  v1 = *(type metadata accessor for ScrollToBottomOnEditModeEffect(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);

  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA247D0) + 32);
  v6 = sub_25B004804();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_25AF49024(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_25AF4908C()
{
  type metadata accessor for ScrollToBottomOnEditModeEffect(0);

  sub_25AF4842C();
}

uint64_t sub_25AF49128()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

unint64_t sub_25AF49170()
{
  result = qword_27FA24910;
  if (!qword_27FA24910)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA248F8);
    sub_25AF491F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA24910);
  }

  return result;
}

unint64_t sub_25AF491F4()
{
  result = qword_27FA24918;
  if (!qword_27FA24918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA24918);
  }

  return result;
}

uint64_t sub_25AF49248(uint64_t a1, double *a2)
{
  v2 = *a2;
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  result = swift_task_isCurrentExecutor();
  if ((result & 1) == 0)
  {
    result = swift_task_reportUnexpectedExecutor();
  }

  v4 = qword_27FA30B10;
  if (qword_27FA30B10)
  {
    v5 = OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_buttonLayout;
    swift_beginAccess();
    v6 = *(v4 + v5);
    swift_beginAccess();
    if (*(v6 + 96) == v2)
    {
      *(v6 + 96) = v2;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      sub_25AF46B98(&qword_27FA23D18, type metadata accessor for ButtonLayout);

      sub_25B004224();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25AF49430(uint64_t result, double a2, double a3)
{
  if (qword_27FA30B10)
  {
    v3 = result;
    v6 = *(qword_27FA30B10 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_draggingModel);
    if (*(v6 + 16) == a3)
    {
      *(v6 + 16) = a3;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      sub_25AF46B98(&unk_27FA255E0, type metadata accessor for GlanceDraggingModel);

      sub_25B004224();
    }

    *(v3 + OBJC_IVAR____TtC17NanoControlCenter20GlanceScrollingModel_contentViewHeight) = a3;
    if (*(v6 + OBJC_IVAR____TtC17NanoControlCenter19GlanceDraggingModel__scrollOffset) == a2)
    {
      *(v6 + OBJC_IVAR____TtC17NanoControlCenter19GlanceDraggingModel__scrollOffset) = a2;
    }

    else
    {
      v8 = swift_getKeyPath();
      MEMORY[0x28223BE20](v8);
      sub_25AF46B98(&unk_27FA255E0, type metadata accessor for GlanceDraggingModel);
      sub_25B004224();
    }

    *(v3 + OBJC_IVAR____TtC17NanoControlCenter20GlanceScrollingModel_scrollOffset) = a2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_25AF496E8()
{
  result = qword_27FA24930;
  if (!qword_27FA24930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA24930);
  }

  return result;
}

uint64_t get_witness_table_qd0__7SwiftUI4ViewHD3_AaBPAAE8onChange2of7initial_Qrqd___SbyyctSQRd__lFQOyAA01_C16Modifier_ContentVy17NanoControlCenter34AnimateEditModeForAnimationsEffect33_C68D0794524084D7CF592CFC85874B6BLLVG_SbQo_HOTm(uint64_t a1, uint64_t *a2, uint64_t a3, unint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
  sub_25AF0F274(a4, a2);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_25AF49850()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA24900);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA248F8);
  sub_25AF0F274(&qword_27FA24908, &qword_27FA24900);
  sub_25AF49170();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_25AF4990C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA24920);
  sub_25AF0F274(&qword_27FA24928, &qword_27FA24920);
  sub_25AF496E8();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_25AF49A00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v49 = a9;
  v38 = a7;
  v47 = a6;
  v45 = a4;
  v46 = a5;
  v43 = a2;
  v44 = a3;
  v41 = *(a8 - 8);
  v42 = a1;
  v48 = a10;
  v37[1] = a11;
  MEMORY[0x28223BE20](a1);
  v40 = v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_25B005674();
  v13 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v15 = v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for MaterialOrColorEffect();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = v37 - v18;
  v20 = sub_25B004864();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v24);
  v27 = v37 - v26;
  (*(v13 + 16))(v15, v42, v39, v25);
  v28 = v40;
  (*(v41 + 16))(v40, v43, a8);
  KeyPath = swift_getKeyPath();
  v30 = v15;
  v31 = v44;
  sub_25AF49DE4(v30, v28, v44, v45, v46, v47, KeyPath, 0, v19, a8);
  sub_25AF49F2C(v31);

  v32 = v48;
  MEMORY[0x25F85D150](v19, v38, v16, v48);
  (*(v17 + 8))(v19, v16);
  WitnessTable = swift_getWitnessTable();
  v50 = v32;
  v51 = WitnessTable;
  v34 = swift_getWitnessTable();
  sub_25AFB4FC4(v23, v20, v34);
  v35 = *(v21 + 8);
  v35(v23, v20);
  sub_25AFB4FC4(v27, v20, v34);
  return (v35)(v27, v20);
}

uint64_t sub_25AF49DE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10)
{
  v18 = sub_25B005674();
  (*(*(v18 - 8) + 32))(a9, a1, v18);
  v19 = type metadata accessor for MaterialOrColorEffect();
  (*(*(a10 - 8) + 32))(a9 + v19[9], a2, a10);
  *(a9 + v19[10]) = a3;
  *(a9 + v19[11]) = a4;
  *(a9 + v19[12]) = a5;
  *(a9 + v19[13]) = a6;
  v20 = a9 + v19[14];
  *v20 = a7;
  *(v20 + 8) = a8 & 1;
  v21 = a9 + v19[15];
  result = swift_getKeyPath();
  *v21 = result;
  *(v21 + 8) = 0;
  return result;
}

uint64_t sub_25AF49F2C(uint64_t result)
{
  if ((result - 1) >= 2)
  {
  }

  return result;
}

void sub_25AF49F58()
{
  sub_25B005674();
  if (v0 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v1 <= 0x3F)
    {
      sub_25AF4A598();
      if (v2 <= 0x3F)
      {
        sub_25AF4A5F0(319, &qword_27FA24270, &qword_27FA24278);
        if (v3 <= 0x3F)
        {
          sub_25AF4A5F0(319, &qword_27FA249D0, &qword_27FA249D8);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_25AF4A06C(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_25B005674();
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(*(a3 + 16) - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (v10 <= v8)
  {
    v12 = *(v7 + 84);
  }

  else
  {
    v12 = *(v9 + 84);
  }

  if (v12 <= 0x7FFFFFFE)
  {
    v12 = 2147483646;
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(*(v6 - 8) + 64) + v11;
  v14 = *(v9 + 64) + 7;
  if (v12 >= a2)
  {
    goto LABEL_30;
  }

  v15 = ((((((v14 + (v13 & ~v11)) & 0xFFFFFFFFFFFFFFF8) + 17) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v15 <= 3)
  {
    v16 = ((a2 - v12 + 255) >> 8) + 1;
  }

  else
  {
    v16 = 2;
  }

  if (v16 >= 0x10000)
  {
    v17 = 4;
  }

  else
  {
    v17 = 2;
  }

  if (v16 < 0x100)
  {
    v17 = 1;
  }

  if (v16 >= 2)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  if (v18 > 1)
  {
    if (v18 == 2)
    {
      v19 = *&a1[v15];
      if (!*&a1[v15])
      {
        goto LABEL_30;
      }
    }

    else
    {
      v19 = *&a1[v15];
      if (!v19)
      {
        goto LABEL_30;
      }
    }

LABEL_26:
    v21 = (v19 - 1) << (8 * v15);
    if (v15 <= 3)
    {
      v22 = *a1;
    }

    else
    {
      v21 = 0;
      v22 = *a1;
    }

    return v12 + (v22 | v21) + 1;
  }

  if (v18)
  {
    v19 = a1[v15];
    if (a1[v15])
    {
      goto LABEL_26;
    }
  }

LABEL_30:
  if (v8 == v12)
  {
    v23 = *(v7 + 48);

    return v23(a1);
  }

  else
  {
    v24 = &a1[v13] & ~v11;
    if (v10 == v12)
    {
      v25 = *(v9 + 48);

      return v25(v24, v10);
    }

    else
    {
      v26 = *((((v14 + v24) & 0xFFFFFFFFFFFFFFF8) + 17) & 0xFFFFFFFFFFFFFFF8);
      if (v26 >= 0xFFFFFFFF)
      {
        LODWORD(v26) = -1;
      }

      if ((v26 + 1) >= 2)
      {
        return v26;
      }

      else
      {
        return 0;
      }
    }
  }
}

void sub_25AF4A2D0(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(sub_25B005674() - 8);
  v9 = *(v8 + 84);
  v10 = *(*(a4 + 16) - 8);
  v11 = *(v10 + 84);
  v12 = *(v8 + 64);
  v13 = *(v10 + 80);
  v14 = *(v10 + 64);
  if (v11 <= v9)
  {
    v15 = *(v8 + 84);
  }

  else
  {
    v15 = *(v10 + 84);
  }

  if (v15 <= 0x7FFFFFFE)
  {
    v15 = 2147483646;
  }

  v16 = v12 + v13;
  v17 = (v12 + v13) & ~v13;
  v18 = v14 + 7;
  v19 = ((((((v14 + 7 + v17) & 0xFFFFFFFFFFFFFFF8) + 17) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v15 >= a3)
  {
    v22 = 0;
    if (v15 >= a2)
    {
      goto LABEL_19;
    }
  }

  else
  {
    if (v19 <= 3)
    {
      v20 = ((a3 - v15 + 255) >> 8) + 1;
    }

    else
    {
      v20 = 2;
    }

    if (v20 >= 0x10000)
    {
      v21 = 4;
    }

    else
    {
      v21 = 2;
    }

    if (v20 < 0x100)
    {
      v21 = 1;
    }

    if (v20 >= 2)
    {
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }

    if (v15 >= a2)
    {
LABEL_19:
      if (v22 > 1)
      {
        if (v22 != 2)
        {
          *&a1[v19] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_34;
        }

        *&a1[v19] = 0;
      }

      else if (v22)
      {
        a1[v19] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_34;
      }

      if (!a2)
      {
        return;
      }

LABEL_34:
      if (v9 == v15)
      {
        v25 = *(v8 + 56);

        v25(a1, a2);
      }

      else
      {
        v26 = &a1[v16] & ~v13;
        if (v11 == v15)
        {
          v27 = *(v10 + 56);

          v27(v26, a2, v11);
        }

        else
        {
          v28 = ((((v18 + v26) & 0xFFFFFFFFFFFFFFF8) + 17) & 0xFFFFFFFFFFFFFFF8);
          if (a2 > 0x7FFFFFFE)
          {
            *v28 = 0;
            *v28 = a2 - 0x7FFFFFFF;
          }

          else
          {
            *v28 = a2;
          }
        }
      }

      return;
    }
  }

  v23 = ~v15 + a2;
  bzero(a1, v19);
  if (v19 <= 3)
  {
    v24 = (v23 >> 8) + 1;
  }

  else
  {
    v24 = 1;
  }

  if (v19 <= 3)
  {
    *a1 = v23;
    if (v22 > 1)
    {
LABEL_29:
      if (v22 == 2)
      {
        *&a1[v19] = v24;
      }

      else
      {
        *&a1[v19] = v24;
      }

      return;
    }
  }

  else
  {
    *a1 = v23;
    if (v22 > 1)
    {
      goto LABEL_29;
    }
  }

  if (v22)
  {
    a1[v19] = v24;
  }
}

void sub_25AF4A598()
{
  if (!qword_27FA249C8)
  {
    type metadata accessor for ControlCenterStyle.VisualsModel(255);
    v0 = sub_25B005E04();
    if (!v1)
    {
      atomic_store(v0, &qword_27FA249C8);
    }
  }
}

void sub_25AF4A5F0(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v4 = sub_25B0045A4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_25AF4A688(uint64_t a1)
{
  v3 = sub_25B004B14();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = v1 + *(a1 + 56);
  v8 = *v7;
  if (*(v7 + 8) != 1)
  {

    sub_25B005CC4();
    v9 = sub_25B004F24();
    sub_25B0044A4();

    sub_25B004B04();
    swift_getAtKeyPath();
    sub_25AF241CC(v8, 0);
    (*(v4 + 8))(v6, v3);
    return v11[15];
  }

  return v8;
}

void sub_25AF4A7DC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v113 = a1;
  v115 = a3;
  v6 = *(a2 + 16);
  v98 = *(v6 - 8);
  MEMORY[0x28223BE20](a1);
  v97 = &v83[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v103 = sub_25B005814();
  v102 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v99 = &v83[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_getWitnessTable();
  v9 = sub_25B004D14();
  WitnessTable = swift_getWitnessTable();
  v123 = v9;
  v124 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v104 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v101 = &v83[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v100 = &v83[-v14];
  v90 = sub_25B005674();
  v89 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v88 = &v83[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = sub_25B005694();
  v116 = *(v16 - 8);
  v117 = v16;
  MEMORY[0x28223BE20](v16);
  v95 = &v83[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v18);
  v107 = &v83[-v19];
  MEMORY[0x28223BE20](v20);
  v105 = &v83[-v21];
  v93 = sub_25B0054F4();
  v92 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v23 = &v83[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v24);
  v91 = &v83[-v25];
  v26 = *(a2 + 24);
  v118 = v6;
  v119 = v9;
  v123 = v9;
  v124 = v6;
  v108 = WitnessTable;
  v125 = WitnessTable;
  v126 = v26;
  v106 = v26;
  v27 = swift_getOpaqueTypeMetadata2();
  v96 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v29 = &v83[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v30);
  v94 = &v83[-v31];
  v109 = v32;
  v114 = OpaqueTypeMetadata2;
  v33 = sub_25B004C84();
  v111 = *(v33 - 8);
  v112 = v33;
  MEMORY[0x28223BE20](v33);
  v110 = &v83[-v34];
  v35 = sub_25B004B14();
  v36 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v39 = &v83[-((v38 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v40 = *(v4 + *(a2 + 40));
  if (v40 == 2)
  {
    if (!*(v4 + *(a2 + 52)))
    {
      goto LABEL_12;
    }

    v85 = v37;
    if (qword_27FA30B10)
    {
      v87 = *(v4 + *(a2 + 44));
      v86 = *(qword_27FA30B10 + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_isCompanionReachable);
      v44 = sub_25AF4A688(a2);
      v45 = v4 + *(a2 + 60);
      v46 = *v45;
      if (*(v45 + 8) == 1)
      {
        LOBYTE(v123) = *v45;
      }

      else
      {
        v84 = v44;

        sub_25B005CC4();
        v47 = sub_25B004F24();
        sub_25B0044A4();

        sub_25B004B04();
        swift_getAtKeyPath();
        sub_25AF241CC(v46, 0);
        (*(v36 + 8))(v39, v85);
        LOBYTE(v44) = v84;
        LOBYTE(v46) = v123;
      }

      v120 = v46;
      v43 = sub_25AFA8BE8(v87, v86, v44, &v120);
      goto LABEL_15;
    }

LABEL_24:
    __break(1u);
    return;
  }

  v41 = *(v4 + *(a2 + 40));
  if (v40 != 1)
  {
    goto LABEL_16;
  }

  v41 = *(v4 + *(a2 + 52));
  if (!v41)
  {
    goto LABEL_16;
  }

  if (!qword_27FA30B10)
  {
    __break(1u);
    goto LABEL_24;
  }

  sub_25AF4A688(a2);
  if (swift_weakLoadStrong())
  {
    v42 = [objc_opt_self() systemWhiteColor];

    if (v42)
    {
      v43 = sub_25B005434();
LABEL_15:
      v41 = v43;
      goto LABEL_16;
    }
  }

LABEL_12:
  v41 = 0;
LABEL_16:
  if (*(v4 + *(a2 + 48)))
  {
    sub_25AF49F2C(v40);
    if (v41)
    {

      v48 = v88;
      sub_25B005664();
      v49 = v95;
      sub_25B005684();

      (*(v89 + 8))(v48, v90);
      v50 = v118;
      v105 = v41;
    }

    else
    {
      v49 = v95;
      sub_25B005684();
      v105 = 0;
      v50 = v118;
    }

    (*(v116 + 32))(v107, v49, v117);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA249E0);
    sub_25B0057E4();
    *(swift_allocObject() + 16) = xmmword_25B00A900;
    v68 = v4 + *(a2 + 36);
    v69 = v50;
    (*(v98 + 16))(v97, v68, v50);
    v70 = v106;
    sub_25B0057F4();
    v71 = v99;
    sub_25B005804();
    v72 = swift_checkMetadataState();
    v73 = v101;
    v60 = v108;
    sub_25B0051B4();
    (*(v102 + 8))(v71, v103);
    v123 = v72;
    v124 = v60;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v75 = v100;
    v76 = v114;
    sub_25AFB4FC4(v73, v114, OpaqueTypeConformance2);
    v77 = *(v104 + 8);
    v77(v73, v76);
    sub_25AFB4FC4(v75, v76, OpaqueTypeConformance2);
    v123 = v72;
    v66 = v69;
    v67 = v70;
    v124 = v66;
    v125 = v60;
    v126 = v70;
    swift_getOpaqueTypeConformance2();
    v65 = v110;
    sub_25AFA89E0(v73, v109, v76);

    v77(v73, v76);
    v77(v75, v76);
    (*(v116 + 8))(v107, v117);
  }

  else
  {
    sub_25AF49F2C(v40);
    v51 = v105;
    sub_25B005684();
    sub_25B0054D4();
    (*(v116 + 8))(v51, v117);
    v52 = v91;
    sub_25B0054E4();
    v105 = v41;
    v53 = *(v92 + 8);
    v54 = v23;
    v55 = v93;
    v53(v54, v93);
    v56 = swift_checkMetadataState();
    v57 = v118;
    v58 = v108;
    v59 = v106;
    sub_25B005134();
    v53(v52, v55);
    v60 = v58;
    v123 = v56;
    v124 = v57;
    v125 = v58;
    v126 = v59;
    v61 = swift_getOpaqueTypeConformance2();
    v62 = v94;
    v63 = v109;
    sub_25AFB4FC4(v29, v109, v61);
    v64 = *(v96 + 8);
    v64(v29, v63);
    sub_25AFB4FC4(v62, v63, v61);
    v123 = v56;
    v124 = v60;
    swift_getOpaqueTypeConformance2();
    v65 = v110;
    v66 = v118;
    v67 = v59;
    sub_25AFA88E8(v29, v63);

    v64(v29, v63);
    v64(v62, v63);
  }

  v78 = v119;
  v123 = v119;
  v124 = v66;
  v125 = v60;
  v126 = v67;
  v79 = swift_getOpaqueTypeConformance2();
  v123 = v78;
  v124 = v60;
  v80 = swift_getOpaqueTypeConformance2();
  v121 = v79;
  v122 = v80;
  v81 = v112;
  v82 = swift_getWitnessTable();
  sub_25AFB4FC4(v65, v81, v82);
  (*(v111 + 8))(v65, v81);
}

uint64_t sub_25AF4B5E4()
{
  type metadata accessor for MaterialOrColorEffect();
  swift_getWitnessTable();
  sub_25B004D14();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeMetadata2();
  sub_25B004C84();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getWitnessTable();
}

void *sub_25AF4B750(int64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v4 = 0;
    v5 = a2 + 32;
    v6 = MEMORY[0x277D84F90];
    v7 = MEMORY[0x277D84F90];
    v26 = a2 + 32;
    do
    {
      v27 = v7;
      v7 = (v5 + 112 * v4);
      v8 = v4;
      while (1)
      {
        if (v8 >= v2)
        {
          __break(1u);
LABEL_27:
          __break(1u);
          goto LABEL_28;
        }

        v9 = *(v7 + 5);
        v33 = *(v7 + 4);
        v34[0] = v9;
        *(v34 + 10) = *(v7 + 90);
        v10 = *(v7 + 1);
        v29 = *v7;
        v30 = v10;
        v11 = *(v7 + 3);
        v31 = *(v7 + 2);
        v32 = v11;
        v4 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          goto LABEL_27;
        }

        sub_25AF50200(&v29, v28);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = sub_25AFCD594(0, *(v6 + 2) + 1, 1, v6);
        }

        v13 = *(v6 + 2);
        v12 = *(v6 + 3);
        v14 = v13 + 1;
        if (v13 >= v12 >> 1)
        {
          v6 = sub_25AFCD594((v12 > 1), v13 + 1, 1, v6);
        }

        *(v6 + 2) = v14;
        v15 = &v6[112 * v13];
        v16 = v29;
        v17 = v31;
        *(v15 + 3) = v30;
        *(v15 + 4) = v17;
        *(v15 + 2) = v16;
        v18 = v32;
        v19 = v33;
        v20 = v34[0];
        *(v15 + 122) = *(v34 + 10);
        *(v15 + 6) = v19;
        *(v15 + 7) = v20;
        *(v15 + 5) = v18;
        if (v14 >= a1)
        {
          break;
        }

        ++v8;
        v7 += 14;
        if (v4 == v2)
        {
          v7 = v27;
          goto LABEL_18;
        }
      }

      v7 = v27;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_25AFCD6B8(0, v27[2] + 1, 1, v27);
      }

      v5 = v26;
      v22 = v7[2];
      v21 = v7[3];
      if (v22 >= v21 >> 1)
      {
        v7 = sub_25AFCD6B8((v21 > 1), v22 + 1, 1, v7);
      }

      v7[2] = v22 + 1;
      v7[v22 + 4] = v6;

      v6 = MEMORY[0x277D84F90];
    }

    while (v4 != v2);
LABEL_18:
    if (!*(v6 + 2))
    {
      goto LABEL_24;
    }
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
    v6 = MEMORY[0x277D84F90];
    if (!*(MEMORY[0x277D84F90] + 16))
    {
LABEL_24:

      return v7;
    }
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_28:
    v7 = sub_25AFCD6B8(0, v7[2] + 1, 1, v7);
  }

  v24 = v7[2];
  v23 = v7[3];
  if (v24 >= v23 >> 1)
  {
    v7 = sub_25AFCD6B8((v23 > 1), v24 + 1, 1, v7);
  }

  v7[2] = v24 + 1;
  v7[v24 + 4] = v6;
  return v7;
}

void *sub_25AF4B9E4(int64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = *(a2 + 16);
  v5 = a2 + 64;
  v6 = MEMORY[0x277D84F90];
  v22 = a2 + 64;
  v23 = MEMORY[0x277D84F90];
  v25 = v4;
LABEL_2:
  v7 = (v5 + 40 * v3);
  while (v4 != v3)
  {
    if (v3 >= v4)
    {
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      v2 = sub_25AFCD6DC(0, v2[2] + 1, 1, v2);
      goto LABEL_18;
    }

    if (__OFADD__(v3, 1))
    {
      goto LABEL_24;
    }

    v24 = v3 + 1;
    v2 = *(v7 - 4);
    v8 = *(v7 - 3);
    v9 = *(v7 - 2);
    v10 = *(v7 - 1);
    v11 = *v7;
    sub_25AF181DC(v2, v8, v9, v10, *v7);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_25AFCD450(0, *(v6 + 2) + 1, 1, v6);
    }

    v13 = *(v6 + 2);
    v12 = *(v6 + 3);
    v14 = v13 + 1;
    if (v13 >= v12 >> 1)
    {
      v6 = sub_25AFCD450((v12 > 1), v13 + 1, 1, v6);
    }

    *(v6 + 2) = v14;
    v15 = &v6[40 * v13];
    *(v15 + 4) = v2;
    *(v15 + 5) = v8;
    *(v15 + 6) = v9;
    *(v15 + 7) = v10;
    v15[64] = v11;
    ++v3;
    v7 += 40;
    v4 = v25;
    if (v14 >= a1)
    {

      v16 = v23;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_25AFCD6DC(0, v23[2] + 1, 1, v23);
      }

      v18 = v16[2];
      v17 = v16[3];
      v2 = (v18 + 1);
      if (v18 >= v17 >> 1)
      {
        v16 = sub_25AFCD6DC((v17 > 1), v18 + 1, 1, v16);
      }

      v16[2] = v2;
      v23 = v16;
      v16[v18 + 4] = v6;

      v3 = v24;
      v5 = v22;
      v6 = MEMORY[0x277D84F90];
      goto LABEL_2;
    }
  }

  if (!*(v6 + 2))
  {

    return v23;
  }

  v2 = v23;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_18:
  v20 = v2[2];
  v19 = v2[3];
  if (v20 >= v19 >> 1)
  {
    v2 = sub_25AFCD6DC((v19 > 1), v20 + 1, 1, v2);
  }

  v2[2] = v20 + 1;
  v2[v20 + 4] = v6;
  return v2;
}

uint64_t sub_25AF4BD28()
{

  return swift_deallocClassInstance();
}

int *sub_25AF4BD84@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_25B004194();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v28 - v9;
  sub_25B004184();
  if ((a1 - 1) < 2)
  {
    v11 = a1 != 1;
    if (a1 == 1)
    {
      v12 = 0x4018000000000000;
    }

    else
    {
      v12 = 0;
    }

    if (a1 == 1)
    {
      v13 = 0.5;
    }

    else
    {
      v13 = 1.75;
    }

    v14 = qword_25B00C230[a1 != 1];
    v28[0] = qword_25B00C240[a1 != 1];
    v15 = *(v5 + 32);
    v15(v7, v10, v4);
    if (a1 == 2)
    {
      v16 = 0.5;
    }

    else
    {
      v16 = 1.2;
    }

    v15(a2, v7, v4);
    v17 = 0;
    v18 = 0;
    v19 = 15.0;
    v20 = 0.0;
    v21 = 1.0;
    v22 = 1;
    v23 = 1.0;
    v24 = 0.0;
    goto LABEL_14;
  }

  if (!a1)
  {
    (*(v5 + 32))(a2, v10, v4);
    v22 = 0;
    v11 = 0;
    v12 = 0;
    v28[0] = 1.75;
    v13 = 0.5;
    v24 = 15.0;
    v18 = 0x4018000000000000;
    v20 = 1.0;
    v21 = 0.0;
    v14 = 0x3F9999999999999ALL;
    v23 = 1.2;
    v17 = 1;
    v16 = 1.0;
    v19 = 0.0;
LABEL_14:
    result = type metadata accessor for ButtonAnimator.Params();
    *&a2[result[5]] = a1;
    *&a2[result[6]] = 100;
    a2[result[7]] = v17;
    a2[result[8]] = v22;
    *&a2[result[9]] = v21;
    *&a2[result[10]] = v20;
    *&a2[result[11]] = v23;
    *&a2[result[12]] = v16;
    v26 = &a2[result[13]];
    *v26 = v18;
    v26[8] = v11;
    v27 = &a2[result[14]];
    *v27 = v12;
    v27[8] = v11;
    *&a2[result[15]] = v24;
    *&a2[result[16]] = v19;
    *&a2[result[17]] = v13;
    *&a2[result[18]] = v14;
    *&a2[result[19]] = v28[0];
    return result;
  }

  type metadata accessor for ButtonsTransition(0);
  v28[1] = a1;
  result = sub_25B0061E4();
  __break(1u);
  return result;
}

uint64_t sub_25AF4C064(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA252B0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA24790);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v17 - v9;
  v11 = sub_25B005B64();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  (*(v5 + 16))(v7, a2, v4);
  sub_25B005B34();

  v12 = sub_25B005B24();
  v13 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v14 = swift_allocObject();
  v15 = MEMORY[0x277D85700];
  *(v14 + 2) = v12;
  *(v14 + 3) = v15;
  *(v14 + 4) = a1;
  (*(v5 + 32))(&v14[v13], v7, v4);
  sub_25AF6C7F8(0, 0, v10, &unk_25B00C320, v14);
}

uint64_t sub_25AF4C26C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  sub_25B005B34();
  v5[7] = sub_25B005B24();
  v7 = sub_25B005AE4();

  return MEMORY[0x2822009F8](sub_25AF4C304, v7, v6);
}

uint64_t sub_25AF4C304()
{
  v10 = v0;
  v1 = *(v0 + 40);

  swift_beginAccess();
  if (*(v1 + 16) == 1)
  {
    if (qword_27FA23800 != -1)
    {
      swift_once();
    }

    v2 = sub_25B0044C4();
    __swift_project_value_buffer(v2, qword_27FA30C28);
    v3 = sub_25B0044B4();
    v4 = sub_25B005CB4();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v9 = v6;
      *v5 = 136315138;
      *(v5 + 4) = sub_25AF8E7DC(0xD000000000000062, 0x800000025B0174F0, &v9);
      _os_log_impl(&dword_25AF0B000, v3, v4, "%s continuation was never resumed. This indicates serious programmer error. Resuming continuation on sync rescue codepath.", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v6);
      MEMORY[0x25F85EC30](v6, -1, -1);
      MEMORY[0x25F85EC30](v5, -1, -1);
    }

    *(v0 + 64) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA252B0);
    sub_25B005B04();
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_25AF4C4CC(uint64_t a1)
{
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  *(a1 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA252B0);
  sub_25B005B04();
}

uint64_t sub_25AF4C5B4(uint64_t a1, uint64_t a2, uint64_t a3, int a4, char a5, uint64_t a6)
{
  v307 = a6;
  v293 = a2;
  v300 = a1;
  v9 = sub_25B005834();
  v278 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v276 = &v268 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v277 = sub_25B005854();
  v275 = *(v277 - 8);
  MEMORY[0x28223BE20](v277);
  v274 = &v268 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_25B005824();
  v272 = *(v12 - 8);
  v273 = v12;
  MEMORY[0x28223BE20](v12);
  v271 = (&v268 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v281 = sub_25B005884();
  v286 = *(v281 - 8);
  MEMORY[0x28223BE20](v281);
  v282 = &v268 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v280 = &v268 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA249E8);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v268 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v283 = &v268 - v21;
  MEMORY[0x28223BE20](v22);
  *&v306 = &v268 - v23;
  v301 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA252B0);
  v24 = *(v301 - 8);
  MEMORY[0x28223BE20](v301);
  v287 = &v268 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v284 = &v268 - v27;
  v285 = v28;
  MEMORY[0x28223BE20](v29);
  v31 = &v268 - v30;
  v32 = type metadata accessor for ButtonAnimator.Params();
  MEMORY[0x28223BE20](v32);
  v34 = &v268 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a5)
  {
    v35 = 1.0;
  }

  else
  {
    v35 = -1.0;
  }

  v288 = v34;
  sub_25AF4BD84(a3, v34);
  v36 = [objc_opt_self() processInfo];
  v37 = [v36 isLowPowerModeEnabled];

  LODWORD(v304) = a4;
  if (v37)
  {
    if (a4)
    {
      v38 = v288;
      if (qword_27FA23740 != -1)
      {
        goto LABEL_193;
      }

      goto LABEL_7;
    }

    v291 = 0;
    v292 = 0;
    v43 = v32[7];
    v40 = v288;
LABEL_31:
    v39 = *(v40 + v43);
    v46 = 0.0;
    v47 = 9;
    goto LABEL_32;
  }

  *(&v322[0] + 1) = &type metadata for ControlCenterFlags;
  *&v322[1] = sub_25AF1935C();
  LOBYTE(v321) = 3;
  v41 = sub_25B004284();
  __swift_destroy_boxed_opaque_existential_0Tm(&v321);
  if ((v41 & 1) == 0)
  {
    v40 = v288;
    if (v304)
    {
      if (qword_27FA23738 != -1)
      {
        swift_once();
      }

      v44 = qword_27FA23740;
      v292 = qword_27FA30B18;

      if (v44 != -1)
      {
        swift_once();
      }

      v45 = v288;
      v39 = v288[v32[8]];
      v291 = qword_27FA30B20;

      v40 = v45;
      goto LABEL_22;
    }

    v291 = 0;
    v292 = 0;
    v43 = v32[7];
    goto LABEL_31;
  }

  if (v304)
  {
    if (qword_27FA23738 != -1)
    {
      swift_once();
    }

    v42 = qword_27FA23740;
    v292 = qword_27FA30B18;

    if (v42 != -1)
    {
      swift_once();
    }

    v291 = qword_27FA30B20;
  }

  else
  {
    v291 = 0;
    v292 = 0;
  }

  v40 = v288;
  v48 = v32[14];
  v49 = &v288[v32[13]];
  v50 = 0.0;
  if (v49[8])
  {
    v46 = 0.0;
  }

  else
  {
    v46 = *v49;
  }

  if (v288[v48 + 8] == 1)
  {
    v51 = *&v288[v32[15]];
    v52 = *&v288[v32[16]];
    if ((v304 & 1) == 0)
    {
      goto LABEL_175;
    }

LABEL_174:
    v39 = *(v40 + v32[8]);
    v47 = 10;
    v46 = v50;
    goto LABEL_33;
  }

  v51 = *&v288[v32[15]];
  v52 = *&v288[v32[16]];
  v40 = v288;
  if (v304)
  {
    v50 = *&v288[v48];
    goto LABEL_174;
  }

LABEL_175:
  v39 = *(v40 + v32[7]);
  v47 = 9;
LABEL_33:
  while (1)
  {
    v53 = *(v40 + v32[v47]);
    v54 = v39 ? 10.0 : 0.0;
    v55 = sub_25AFEC930();
    v56 = sub_25AF4B9E4(2, v55);

    v296 = v56[2];
    if (!v296)
    {
      break;
    }

    v305 = v32;
    v32 = v9;
    v299 = v56;
    v57 = v24 + 48;
    v58 = *(v24 + 48);
    v19 = v300;
    v59 = v24;
    v60 = v301;
    v61 = v58(v300, 1, v301) != 1;
    v9 = swift_allocObject();
    *(v9 + 16) = v61;
    v62 = v306;
    sub_25AF25FC4(v19, v306, &qword_27FA249E8);
    v297 = v58;
    v298 = v57;
    v63 = v58(v62, 1, v60);
    v268 = v32;
    v279 = v59;
    v270 = v9;
    if (v63 == 1)
    {
      sub_25AF2602C(v62, &qword_27FA249E8);
      v269 = 0;
    }

    else
    {
      v66 = *(v59 + 32);
      v66(v31, v62, v60);
      v32 = v284;
      (*(v59 + 16))(v284, v31, v60);
      v67 = (*(v59 + 80) + 24) & ~*(v59 + 80);
      v68 = swift_allocObject();
      *(v68 + 16) = v9;
      v66((v68 + v67), v32, v60);
      sub_25B0044E4();
      v19 = swift_allocObject();

      v269 = sub_25B0044F4();
      (*(v59 + 8))(v31, v60);
    }

    v335 = 0;
    sub_25B0045D4();
    v69 = 0;
    v70 = *&v288[*(v305 + 18)];
    v71 = -(v35 * v46);
    v72 = v304;
    v73 = v35 * v46;
    v302 = 0;
    v303 = OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_buttonModels;
    v290 = OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_controlsShouldBeMarkedVisible;
    v289 = OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_controlsShouldBeMarkedNotSettledVisible;
    if ((v304 & 1) == 0)
    {
      v52 = v51;
    }

    __asm { FMOV            V0.2D, #1.0 }

    v79 = v299;
    v306 = _Q0;
    do
    {
      v31 = v79[v69 + 4];
      v24 = *(v31 + 2);
      if (!v24)
      {
        __break(1u);
LABEL_189:
        __break(1u);
LABEL_190:
        __break(1u);
LABEL_191:
        __break(1u);
        goto LABEL_192;
      }

      v305 = v69;
      v80 = *(v31 + 3);
      v387 = *(v31 + 2);
      v388 = v80;
      v389 = v31[64];
      v81 = v307;
      v82 = v303;
      swift_beginAccess();

      sub_25AF196CC(&v387, &v321);
      v9 = sub_25AF7EB28((v81 + v82), &v387);
      swift_endAccess();
      v321 = v387;
      v322[0] = v388;
      LOBYTE(v322[1]) = v389;
      sub_25AF7EF38(&v321, v9);
      v19 = *(v9 + 48);
      if (v19 <= 0xFD && (v19 & 0xC0) == 0x40)
      {
        v294 = v24;
        v84 = *(v9 + 16);
        v83 = *(v9 + 24);
        v85 = *(v9 + 32);
        v86 = *(v9 + 40);
        v87 = v307;
        v88 = v290;
        swift_beginAccess();
        v89 = *(v87 + v88);
        v90 = *(v89 + 16);
        v295 = v19;
        sub_25AF181DC(v84, v83, v85, v86, v19);
        if (v90 && (v91 = sub_25AF8F1B4(v84, v83, v85, v86), (v92 & 1) != 0))
        {
          v93 = v85;
          v94 = v83;
          v95 = v84;
          v96 = *(*(v89 + 56) + 8 * v91);
          swift_endAccess();
          v19 = *(v96 + 16) != 0;
        }

        else
        {
          v93 = v85;
          v94 = v83;
          v95 = v84;
          swift_endAccess();
          v19 = 0;
        }

        v97 = v307;
        v98 = v289;
        swift_beginAccess();
        v99 = *(v97 + v98);
        v100 = v95;
        v101 = v94;
        v102 = v93;
        v103 = v86;
        if (*(v99 + 16) && (v104 = sub_25AF8F1B4(v100, v101, v102, v86), (v105 & 1) != 0))
        {
          v106 = *(*(v99 + 56) + 8 * v104);
          swift_endAccess();
          v107 = v295;
          if (v19)
          {
            v108 = 1;
            if (!*(v106 + 16))
            {
              v108 = 2;
            }

            goto LABEL_64;
          }

LABEL_63:
          v108 = 0;
        }

        else
        {
          swift_endAccess();
          v107 = v295;
          if (!v19)
          {
            goto LABEL_63;
          }

          v108 = 2;
        }

LABEL_64:
        v109 = *(v9 + OBJC_IVAR____TtC17NanoControlCenter17GlanceButtonModel_controlVisibility);
        *(v9 + OBJC_IVAR____TtC17NanoControlCenter17GlanceButtonModel_controlVisibility) = v108;
        if (v108 != v109)
        {
          sub_25AFB9D68();
        }

        sub_25AF231D0(v100, v101, v102, v103, v107);
        v72 = v304;
        v24 = v294;
      }

      v110 = sub_25AFB6D8C();

      if (v24 == 1)
      {

        v9 = 0;
        v19 = v301;
        v32 = &unk_25B011DD0;
      }

      else
      {
        v32 = &unk_25B011DD0;
        if (v24 > *(v31 + 2))
        {
          goto LABEL_189;
        }

        v111 = &v31[40 * v24 + 32];
        v112 = *(v111 - 40);
        v113 = *(v111 - 24);
        v386 = *(v111 - 8);
        v384 = v112;
        v385 = v113;
        sub_25AF196CC(&v384, &v321);

        v114 = v307;
        v115 = v303;
        swift_beginAccess();
        v116 = sub_25AF7EB28((v114 + v115), &v384);
        swift_endAccess();
        v321 = v384;
        v322[0] = v385;
        LOBYTE(v322[1]) = v386;
        sub_25AF7EF38(&v321, v116);
        v117 = *(v116 + 48);
        if (v117 <= 0xFD && (v117 & 0xC0) == 0x40)
        {
          v119 = *(v116 + 16);
          v118 = *(v116 + 24);
          v121 = *(v116 + 32);
          v120 = *(v116 + 40);
          *&v321 = v119;
          *(&v321 + 1) = v118;
          *&v322[0] = v121;
          *(&v322[0] + 1) = v120;
          sub_25AF181DC(v119, v118, v121, v120, v117);
          v122 = sub_25AF81740(&v321);
          v123 = *(v116 + OBJC_IVAR____TtC17NanoControlCenter17GlanceButtonModel_controlVisibility);
          *(v116 + OBJC_IVAR____TtC17NanoControlCenter17GlanceButtonModel_controlVisibility) = v122;
          if (v122 != v123)
          {
            sub_25AFB9D68();
          }

          sub_25AF1C414(&v384);
          sub_25AF231D0(v119, v118, v121, v120, v117);
          v19 = v301;
          v32 = &unk_25B011DD0;
        }

        else
        {
          sub_25AF1C414(&v384);
          v19 = v301;
        }

        v9 = sub_25AFB6D8C();

        v72 = v304;
      }

      v124 = v305;
      v125 = v305 + 1;
      v126 = v52 * (v305 + 1);
      if (v297(v300, 1, v19) != 1)
      {
        v35 = v70 * v124;
        if (v292)
        {
          v32 = sub_25B0056D4();
          if (v291)
          {
LABEL_83:
            v134 = sub_25B0056D4();
            v135 = v293;
            if (!v293)
            {
              goto LABEL_45;
            }

            goto LABEL_89;
          }
        }

        else
        {
          v32 = 0;
          if (v291)
          {
            goto LABEL_83;
          }
        }

        v134 = 0;
        v135 = v293;
        if (!v293)
        {
LABEL_45:

LABEL_46:

          sub_25AF1C414(&v387);
          goto LABEL_47;
        }

LABEL_89:
        v305 = v134;
        v141 = *(v135 + 16);

        [v141 lock];
        v19 = *(v135 + 24);
        [v141 unlock];
        if (v19)
        {

          sub_25AF1C414(&v387);

          goto LABEL_47;
        }

        if (v72)
        {
          *&v329 = v54;
          *(&v329 + 1) = v71;
          *v330 = v126;
          *(v330 + 8) = v306;
          *(&v330[1] + 1) = 0x3FF0000000000000;
          v331 = v32;
          v348 = v329;
          v349 = v330[0];
          v350 = v330[1];
          v351 = v32;
          v142 = *(v110 + 5);
          v143 = *(v110 + 6);
          v144 = *(v110 + 8);
          v333[1] = *(v110 + 7);
          v334 = v144;
          v145 = *(v110 + 6);
          v146 = *(v110 + 7);
          v147 = *(v110 + 5);
          v332 = v142;
          v333[0] = v145;
          v311 = v147;
          v312 = v143;
          v313 = v146;
          v148 = v334;
          if (v334 == 1)
          {
            if (v32 == 1)
            {
              v149 = *(v110 + 6);
              v321 = *(v110 + 5);
              v322[0] = v149;
              v322[1] = *(v110 + 7);
              *&v323 = 1;
              *(&v323 + 1) = *(&v334 + 1);
              sub_25AF4F820(&v329, &v318);
              sub_25AF25FC4(&v332, &v318, &qword_27FA249F0);
              sub_25AF4F820(&v329, &v318);
              sub_25AF2602C(&v321, &qword_27FA249F0);
              goto LABEL_134;
            }

LABEL_121:
            v321 = v311;
            v322[0] = v312;
            v322[1] = v313;
            v323 = v334;
            v324 = v329;
            v325 = v330[0];
            v326 = v330[1];
            v327 = v32;
            v328 = 0;
            sub_25AF4F820(&v329, &v318);
            sub_25AF25FC4(&v332, &v318, &qword_27FA249F0);
            sub_25AF4F820(&v329, &v318);
            sub_25AF2602C(&v321, &unk_27FA25680);
            goto LABEL_122;
          }

          if (v32 == 1)
          {
            goto LABEL_121;
          }

          v318 = v329;
          v319[0] = v330[0];
          v319[1] = v330[1];
          v320 = v32;
          v353[0] = v329;
          v353[1] = v330[0];
          v353[2] = v330[1];
          v353[3] = v32;
          v203 = *(v110 + 5);
          v204 = *(v110 + 6);
          v352[2] = *(v110 + 7);
          v352[1] = v204;
          v352[0] = v203;
          v352[3] = v334;
          sub_25AF4F820(&v329, &v321);
          sub_25AF25FC4(&v332, &v321, &qword_27FA249F0);
          sub_25AF25FC4(&v332, &v321, &qword_27FA249F0);
          sub_25AF4F820(&v329, &v321);
          v295 = sub_25AFBFC64(v352, v353);
          sub_25AF2602C(&v318, &qword_27FA249F0);
          v321 = v311;
          v322[0] = v312;
          v322[1] = v313;
          v323 = v148;
          sub_25AF2602C(&v321, &qword_27FA249F0);
          sub_25AF2602C(&v332, &qword_27FA249F0);
          if (v295)
          {
LABEL_134:
            v205 = *(v110 + 6);
            v321 = *(v110 + 5);
            v322[0] = v205;
            v206 = *(v110 + 8);
            v322[1] = *(v110 + 7);
            v323 = v206;
            v207 = v349;
            *(v110 + 5) = v348;
            *(v110 + 6) = v207;
            v208 = v351;
            *(v110 + 7) = v350;
            *(v110 + 8) = v208;
            goto LABEL_137;
          }

LABEL_122:
          KeyPath = swift_getKeyPath();
          MEMORY[0x28223BE20](KeyPath);
          *(&v268 - 2) = v110;
          *(&v268 - 1) = &v348;
          *&v321 = v110;
          sub_25AF4FB38(&unk_27FA25670, type metadata accessor for GlanceButtonModel.TransitionModel);
LABEL_126:
          v72 = v304;
          v189 = v302;
          sub_25B004224();
          v302 = v189;
          sub_25AF4F8A0(&v329);

LABEL_138:
          v19 = v305;
          *&v332 = v54;
          *(&v332 + 1) = v71;
          *v333 = v126;
          *(v333 + 8) = v306;
          *(&v333[1] + 1) = 0x3FF0000000000000;
          v334 = v32;
          sub_25AF4F8A0(&v332);
          if (!v9)
          {
            sub_25AFB6E40(v72 & 1, v19, v53);

            sub_25AF1C414(&v387);

            goto LABEL_47;
          }

          if (v72)
          {
            *&v318 = v54;
            *(&v318 + 1) = v73;
            *v319 = v126;
            *(v319 + 8) = v306;
            *(&v319[1] + 1) = 0x3FF0000000000000;
            v320 = v32;
            v336 = v318;
            v337 = v319[0];
            v338 = v319[1];
            v339 = v32;
            v214 = *(v9 + 80);
            v215 = *(v9 + 96);
            v216 = *(v9 + 128);
            v330[1] = *(v9 + 112);
            v331 = v216;
            v217 = *(v9 + 96);
            v218 = *(v9 + 112);
            v219 = *(v9 + 80);
            v329 = v214;
            v330[0] = v217;
            v315 = v219;
            v316 = v215;
            v317 = v218;
            v220 = v331;
            if (v331 == 1)
            {
              if (v32 == 1)
              {
                v221 = *(v9 + 96);
                v321 = *(v9 + 80);
                v322[0] = v221;
                v322[1] = *(v9 + 112);
                *&v323 = 1;
                *(&v323 + 1) = *(&v331 + 1);
                sub_25AF4F820(&v318, &v311);
                sub_25AF25FC4(&v329, &v311, &qword_27FA249F0);
                sub_25AF4F820(&v318, &v311);
                sub_25AF2602C(&v321, &qword_27FA249F0);
                goto LABEL_155;
              }

LABEL_148:
              v321 = v315;
              v322[0] = v316;
              v322[1] = v317;
              v323 = v331;
              v324 = v318;
              v325 = v319[0];
              v326 = v319[1];
              v327 = v32;
              v328 = 0;
              sub_25AF4F820(&v318, &v311);
              sub_25AF25FC4(&v329, &v311, &qword_27FA249F0);
              sub_25AF4F820(&v318, &v311);
              sub_25AF2602C(&v321, &unk_27FA25680);
              goto LABEL_149;
            }

            if (v32 == 1)
            {
              goto LABEL_148;
            }

            v311 = v318;
            v312 = v319[0];
            v313 = v319[1];
            v314 = v32;
            v341[0] = v318;
            v341[1] = v319[0];
            v341[2] = v319[1];
            v341[3] = v32;
            v231 = *(v9 + 80);
            v232 = *(v9 + 112);
            v340[1] = *(v9 + 96);
            v340[2] = v232;
            v340[0] = v231;
            v340[3] = v331;
            sub_25AF4F820(&v318, &v321);
            sub_25AF25FC4(&v329, &v321, &qword_27FA249F0);
            sub_25AF25FC4(&v329, &v321, &qword_27FA249F0);
            sub_25AF4F820(&v318, &v321);
            v295 = sub_25AFBFC64(v340, v341);
            sub_25AF2602C(&v311, &qword_27FA249F0);
            v321 = v315;
            v322[0] = v316;
            v322[1] = v317;
            v323 = v220;
            sub_25AF2602C(&v321, &qword_27FA249F0);
            sub_25AF2602C(&v329, &qword_27FA249F0);
            if (v295)
            {
LABEL_155:
              v233 = *(v9 + 96);
              v321 = *(v9 + 80);
              v322[0] = v233;
              v234 = *(v9 + 128);
              v322[1] = *(v9 + 112);
              v323 = v234;
              v235 = v337;
              *(v9 + 80) = v336;
              *(v9 + 96) = v235;
              v236 = v339;
              *(v9 + 112) = v338;
              *(v9 + 128) = v236;
              goto LABEL_158;
            }

LABEL_149:
            v227 = swift_getKeyPath();
            MEMORY[0x28223BE20](v227);
            *(&v268 - 2) = v9;
            *(&v268 - 1) = &v336;
            *&v321 = v9;
            sub_25AF4FB38(&unk_27FA25670, type metadata accessor for GlanceButtonModel.TransitionModel);
LABEL_153:
            v72 = v304;
            v230 = v302;
            sub_25B004224();
            v302 = v230;
            sub_25AF4F8A0(&v318);

LABEL_159:
            *&v321 = v54;
            *(&v321 + 1) = v73;
            *v322 = v126;
            *(v322 + 8) = v306;
            *(&v322[1] + 1) = 0x3FF0000000000000;
            v323 = v32;
            sub_25AF4F8A0(&v321);
            v19 = v305;
            sub_25AFB6E40(v72 & 1, v305, v53);
            sub_25AFB6E40(v72 & 1, v19, v53);

            sub_25AF1C414(&v387);

            goto LABEL_160;
          }

          *&v318 = v54;
          *(&v318 + 1) = v73;
          *v319 = v126;
          *(v319 + 8) = v306;
          *(&v319[1] + 1) = 0x3FF0000000000000;
          v320 = v32;
          v345 = v32;
          v344 = v319[1];
          v343 = v319[0];
          v342 = v318;
          v222 = *(v9 + 16);
          v223 = *(v9 + 32);
          v224 = *(v9 + 64);
          v330[1] = *(v9 + 48);
          v331 = v224;
          v329 = v222;
          v330[0] = v223;
          v225 = *(v9 + 32);
          v315 = *(v9 + 16);
          v316 = v225;
          v317 = *(v9 + 48);
          v226 = v224;
          if (v224 == 1)
          {
            if (v32 == 1)
            {
              v321 = v315;
              v322[0] = v316;
              v322[1] = v317;
              *&v323 = 1;
              *(&v323 + 1) = *(&v224 + 1);
              sub_25AF4F820(&v318, &v311);
              sub_25AF25FC4(&v329, &v311, &qword_27FA249F0);
              sub_25AF4F820(&v318, &v311);
              sub_25AF2602C(&v321, &qword_27FA249F0);
              goto LABEL_157;
            }

LABEL_151:
            v321 = v315;
            v322[0] = v316;
            v322[1] = v317;
            v323 = v224;
            v324 = v318;
            v325 = v319[0];
            v326 = v319[1];
            v327 = v32;
            v328 = 0;
            sub_25AF4F820(&v318, &v311);
            sub_25AF25FC4(&v329, &v311, &qword_27FA249F0);
            sub_25AF4F820(&v318, &v311);
            sub_25AF2602C(&v321, &unk_27FA25680);
          }

          else
          {
            v228 = *(v9 + 32);
            v308 = *(v9 + 16);
            v309 = v228;
            v310 = *(v9 + 48);
            if (v32 == 1)
            {
              goto LABEL_151;
            }

            v311 = v318;
            v312 = v319[0];
            v313 = v319[1];
            v314 = v32;
            v347[0] = v318;
            v347[1] = v319[0];
            v347[2] = v319[1];
            v347[3] = v32;
            v346[2] = v310;
            v346[1] = v309;
            v346[0] = v308;
            v346[3] = v224;
            sub_25AF4F820(&v318, &v321);
            sub_25AF25FC4(&v329, &v321, &qword_27FA249F0);
            sub_25AF25FC4(&v329, &v321, &qword_27FA249F0);
            sub_25AF4F820(&v318, &v321);
            v295 = sub_25AFBFC64(v346, v347);
            sub_25AF2602C(&v311, &qword_27FA249F0);
            v321 = v315;
            v322[0] = v316;
            v322[1] = v317;
            v323 = v226;
            sub_25AF2602C(&v321, &qword_27FA249F0);
            sub_25AF2602C(&v329, &qword_27FA249F0);
            if (v295)
            {
LABEL_157:
              v237 = *(v9 + 16);
              v238 = *(v9 + 32);
              v239 = *(v9 + 64);
              v322[1] = *(v9 + 48);
              v323 = v239;
              v321 = v237;
              v322[0] = v238;
              v240 = v345;
              *(v9 + 48) = v344;
              *(v9 + 64) = v240;
              v241 = v343;
              *(v9 + 16) = v342;
              *(v9 + 32) = v241;
LABEL_158:
              sub_25AF2602C(&v321, &qword_27FA249F0);
              goto LABEL_159;
            }
          }

          v229 = swift_getKeyPath();
          MEMORY[0x28223BE20](v229);
          *(&v268 - 2) = v9;
          *(&v268 - 1) = &v342;
          *&v321 = v9;
          sub_25AF4FB38(&unk_27FA25670, type metadata accessor for GlanceButtonModel.TransitionModel);
          goto LABEL_153;
        }

        *&v329 = v54;
        *(&v329 + 1) = v71;
        *v330 = v126;
        *(v330 + 8) = v306;
        *(&v330[1] + 1) = 0x3FF0000000000000;
        v331 = v32;
        v357 = v32;
        v356 = v330[1];
        v355 = v330[0];
        v354 = v329;
        v153 = *(v110 + 1);
        v154 = *(v110 + 2);
        v155 = *(v110 + 4);
        v333[1] = *(v110 + 3);
        v334 = v155;
        v332 = v153;
        v333[0] = v154;
        v156 = *(v110 + 2);
        v311 = *(v110 + 1);
        v312 = v156;
        v313 = *(v110 + 3);
        v157 = v155;
        if (v155 == 1)
        {
          if (v32 == 1)
          {
            v321 = v311;
            v322[0] = v312;
            v322[1] = v313;
            *&v323 = 1;
            *(&v323 + 1) = *(&v155 + 1);
            sub_25AF4F820(&v329, &v318);
            sub_25AF25FC4(&v332, &v318, &qword_27FA249F0);
            sub_25AF4F820(&v329, &v318);
            sub_25AF2602C(&v321, &qword_27FA249F0);
            goto LABEL_136;
          }

LABEL_124:
          v321 = v311;
          v322[0] = v312;
          v322[1] = v313;
          v323 = v155;
          v324 = v329;
          v325 = v330[0];
          v326 = v330[1];
          v327 = v32;
          v328 = 0;
          sub_25AF4F820(&v329, &v318);
          sub_25AF25FC4(&v332, &v318, &qword_27FA249F0);
          sub_25AF4F820(&v329, &v318);
          sub_25AF2602C(&v321, &unk_27FA25680);
        }

        else
        {
          v187 = *(v110 + 2);
          v315 = *(v110 + 1);
          v316 = v187;
          v317 = *(v110 + 3);
          if (v32 == 1)
          {
            goto LABEL_124;
          }

          v318 = v329;
          v319[0] = v330[0];
          v319[1] = v330[1];
          v320 = v32;
          v359[0] = v329;
          v359[1] = v330[0];
          v359[2] = v330[1];
          v359[3] = v32;
          v358[2] = v317;
          v358[1] = v316;
          v358[0] = v315;
          v358[3] = v155;
          sub_25AF4F820(&v329, &v321);
          sub_25AF25FC4(&v332, &v321, &qword_27FA249F0);
          sub_25AF25FC4(&v332, &v321, &qword_27FA249F0);
          sub_25AF4F820(&v329, &v321);
          v295 = sub_25AFBFC64(v358, v359);
          sub_25AF2602C(&v318, &qword_27FA249F0);
          v321 = v311;
          v322[0] = v312;
          v322[1] = v313;
          v323 = v157;
          sub_25AF2602C(&v321, &qword_27FA249F0);
          sub_25AF2602C(&v332, &qword_27FA249F0);
          if (v295)
          {
LABEL_136:
            v209 = *(v110 + 1);
            v210 = *(v110 + 2);
            v211 = *(v110 + 4);
            v322[1] = *(v110 + 3);
            v323 = v211;
            v321 = v209;
            v322[0] = v210;
            v212 = v357;
            *(v110 + 3) = v356;
            *(v110 + 4) = v212;
            v213 = v355;
            *(v110 + 1) = v354;
            *(v110 + 2) = v213;
LABEL_137:
            sub_25AF2602C(&v321, &qword_27FA249F0);
            goto LABEL_138;
          }
        }

        v188 = swift_getKeyPath();
        MEMORY[0x28223BE20](v188);
        *(&v268 - 2) = v110;
        *(&v268 - 1) = &v354;
        *&v321 = v110;
        sub_25AF4FB38(&unk_27FA25670, type metadata accessor for GlanceButtonModel.TransitionModel);
        goto LABEL_126;
      }

      if (v72)
      {
        *&v329 = v54;
        *(&v329 + 1) = v71;
        *v330 = v126;
        *(v330 + 8) = v306;
        *(&v330[1] + 1) = 0x3FF0000000000000;
        v331 = 0uLL;
        v372 = v329;
        v373 = v330[0];
        v374 = v330[1];
        v375 = 0uLL;
        v127 = *(v110 + 5);
        v128 = *(v110 + 6);
        v129 = *(v110 + 8);
        v333[1] = *(v110 + 7);
        v334 = v129;
        v130 = *(v110 + 6);
        v131 = *(v110 + 7);
        v132 = *(v110 + 5);
        v332 = v127;
        v333[0] = v130;
        v311 = v132;
        v312 = v128;
        v313 = v131;
        v19 = *(&v334 + 1);
        v133 = v334;
        if (v334 == 1)
        {
          v321 = v311;
          v322[0] = v312;
          v322[1] = v313;
          v323 = v334;
          v324 = v329;
          v325 = v330[0];
          v326 = v330[1];
          v327 = 0;
          v328 = 0;
          sub_25AF4F820(&v329, &v318);
          sub_25AF4F820(&v329, &v318);
          sub_25AF25FC4(&v332, &v318, &qword_27FA249F0);
          sub_25AF2602C(&v321, &unk_27FA25680);
LABEL_96:
          v150 = swift_getKeyPath();
          MEMORY[0x28223BE20](v150);
          *(&v268 - 2) = v110;
          *(&v268 - 1) = &v372;
          *&v321 = v110;
          sub_25AF4FB38(&unk_27FA25670, type metadata accessor for GlanceButtonModel.TransitionModel);
          goto LABEL_99;
        }

        v318 = v329;
        v319[0] = v330[0];
        v319[1] = v330[1];
        v320 = 0uLL;
        v377[0] = v329;
        v377[1] = v330[0];
        v377[2] = v330[1];
        v377[3] = 0uLL;
        v158 = *(v110 + 5);
        v159 = *(v110 + 6);
        v376[2] = *(v110 + 7);
        v376[1] = v159;
        v376[0] = v158;
        v376[3] = v334;
        sub_25AF4F820(&v329, &v321);
        sub_25AF25FC4(&v332, &v321, &qword_27FA249F0);
        sub_25AF4F820(&v329, &v321);
        sub_25AF25FC4(&v332, &v321, &qword_27FA249F0);
        v160 = sub_25AFBFC64(v376, v377);
        sub_25AF2602C(&v332, &qword_27FA249F0);
        sub_25AF2602C(&v318, &qword_27FA249F0);
        v321 = v311;
        v322[0] = v312;
        v322[1] = v313;
        v323 = __PAIR128__(v19, v133);
        sub_25AF2602C(&v321, &qword_27FA249F0);
        if ((v160 & 1) == 0)
        {
          goto LABEL_96;
        }

        v161 = *(v110 + 6);
        v321 = *(v110 + 5);
        v322[0] = v161;
        v162 = *(v110 + 8);
        v322[1] = *(v110 + 7);
        v323 = v162;
        v163 = v373;
        *(v110 + 5) = v372;
        *(v110 + 6) = v163;
        v164 = v375;
        *(v110 + 7) = v374;
        *(v110 + 8) = v164;
      }

      else
      {
        *&v329 = v54;
        *(&v329 + 1) = v71;
        *v330 = v126;
        *(v330 + 8) = v306;
        *(&v330[1] + 1) = 0x3FF0000000000000;
        v331 = 0uLL;
        v381 = 0uLL;
        v380 = v330[1];
        v379 = v330[0];
        v378 = v329;
        v136 = *(v110 + 1);
        v137 = *(v110 + 2);
        v138 = *(v110 + 4);
        v333[1] = *(v110 + 3);
        v334 = v138;
        v332 = v136;
        v333[0] = v137;
        v139 = *(v110 + 2);
        v311 = *(v110 + 1);
        v312 = v139;
        v313 = *(v110 + 3);
        v19 = *(&v138 + 1);
        v140 = v138;
        if (v138 == 1)
        {
          v321 = v311;
          v322[0] = v312;
          v322[1] = v313;
          v323 = v138;
          v324 = v329;
          v325 = v330[0];
          v326 = v330[1];
          v327 = 0;
          v328 = 0;
          sub_25AF4F820(&v329, &v318);
          sub_25AF4F820(&v329, &v318);
          sub_25AF25FC4(&v332, &v318, &qword_27FA249F0);
          sub_25AF2602C(&v321, &unk_27FA25680);
LABEL_98:
          v152 = swift_getKeyPath();
          MEMORY[0x28223BE20](v152);
          *(&v268 - 2) = v110;
          *(&v268 - 1) = &v378;
          *&v321 = v110;
          sub_25AF4FB38(&unk_27FA25670, type metadata accessor for GlanceButtonModel.TransitionModel);
LABEL_99:
          v72 = v304;
          v19 = v302;
          sub_25B004224();
          v302 = v19;
          sub_25AF4F8A0(&v329);

          goto LABEL_108;
        }

        v151 = *(v110 + 2);
        v315 = *(v110 + 1);
        v316 = v151;
        v317 = *(v110 + 3);
        v318 = v329;
        v319[0] = v330[0];
        v319[1] = v330[1];
        v320 = 0uLL;
        v383[0] = v329;
        v383[1] = v330[0];
        v383[2] = v330[1];
        v383[3] = 0uLL;
        v382[2] = v317;
        v382[1] = v316;
        v382[0] = v315;
        v382[3] = v138;
        sub_25AF4F820(&v329, &v321);
        sub_25AF25FC4(&v332, &v321, &qword_27FA249F0);
        sub_25AF4F820(&v329, &v321);
        sub_25AF25FC4(&v332, &v321, &qword_27FA249F0);
        v165 = sub_25AFBFC64(v382, v383);
        sub_25AF2602C(&v332, &qword_27FA249F0);
        sub_25AF2602C(&v318, &qword_27FA249F0);
        v321 = v311;
        v322[0] = v312;
        v322[1] = v313;
        v323 = __PAIR128__(v19, v140);
        sub_25AF2602C(&v321, &qword_27FA249F0);
        if ((v165 & 1) == 0)
        {
          goto LABEL_98;
        }

        v166 = *(v110 + 1);
        v167 = *(v110 + 2);
        v168 = *(v110 + 4);
        v322[1] = *(v110 + 3);
        v323 = v168;
        v321 = v166;
        v322[0] = v167;
        v169 = v381;
        *(v110 + 3) = v380;
        *(v110 + 4) = v169;
        v170 = v379;
        *(v110 + 1) = v378;
        *(v110 + 2) = v170;
      }

      sub_25AF2602C(&v321, &qword_27FA249F0);
LABEL_108:
      *&v332 = v54;
      *(&v332 + 1) = v71;
      *v333 = v126;
      *(v333 + 8) = v306;
      *(&v333[1] + 1) = 0x3FF0000000000000;
      v334 = 0uLL;
      sub_25AF4F8A0(&v332);
      if (!v9)
      {
        sub_25AFB6E40(v72 & 1, 0, v53);
        goto LABEL_46;
      }

      if (v72)
      {
        *&v318 = v54;
        *(&v318 + 1) = v73;
        *v319 = v126;
        *(v319 + 8) = v306;
        *(&v319[1] + 1) = 0x3FF0000000000000;
        v320 = 0uLL;
        v360 = v318;
        v361 = v319[0];
        v362 = v319[1];
        v363 = 0uLL;
        v171 = *(v9 + 80);
        v172 = *(v9 + 96);
        v173 = *(v9 + 128);
        v330[1] = *(v9 + 112);
        v331 = v173;
        v174 = *(v9 + 96);
        v175 = *(v9 + 112);
        v176 = *(v9 + 80);
        v329 = v171;
        v330[0] = v174;
        v315 = v176;
        v316 = v172;
        v317 = v175;
        v19 = *(&v331 + 1);
        v177 = v331;
        if (v331 == 1)
        {
          v321 = v315;
          v322[0] = v316;
          v322[1] = v317;
          v323 = v331;
          v324 = v318;
          v325 = v319[0];
          v326 = v319[1];
          v327 = 0;
          v328 = 0;
          sub_25AF4F820(&v318, &v311);
          sub_25AF25FC4(&v329, &v311, &qword_27FA249F0);
          sub_25AF4F820(&v318, &v311);
          sub_25AF2602C(&v321, &unk_27FA25680);
        }

        else
        {
          v311 = v318;
          v312 = v319[0];
          v313 = v319[1];
          v314 = 0uLL;
          v365[0] = v318;
          v365[1] = v319[0];
          v365[2] = v319[1];
          v365[3] = 0uLL;
          v190 = *(v9 + 80);
          v191 = *(v9 + 96);
          v364[2] = *(v9 + 112);
          v364[1] = v191;
          v364[0] = v190;
          v364[3] = v331;
          sub_25AF4F820(&v318, &v321);
          sub_25AF25FC4(&v329, &v321, &qword_27FA249F0);
          sub_25AF25FC4(&v329, &v321, &qword_27FA249F0);
          sub_25AF4F820(&v318, &v321);
          v192 = sub_25AFBFC64(v364, v365);
          sub_25AF2602C(&v311, &qword_27FA249F0);
          v321 = v315;
          v322[0] = v316;
          v322[1] = v317;
          v323 = __PAIR128__(v19, v177);
          sub_25AF2602C(&v321, &qword_27FA249F0);
          sub_25AF2602C(&v329, &qword_27FA249F0);
          if (v192)
          {
            v193 = *(v9 + 96);
            v321 = *(v9 + 80);
            v322[0] = v193;
            v194 = *(v9 + 128);
            v322[1] = *(v9 + 112);
            v323 = v194;
            v195 = v361;
            *(v9 + 80) = v360;
            *(v9 + 96) = v195;
            v196 = v363;
            *(v9 + 112) = v362;
            *(v9 + 128) = v196;
LABEL_131:
            sub_25AF2602C(&v321, &qword_27FA249F0);
            goto LABEL_132;
          }
        }

        v183 = swift_getKeyPath();
        MEMORY[0x28223BE20](v183);
        *(&v268 - 2) = v9;
        *(&v268 - 1) = &v360;
        *&v321 = v9;
        sub_25AF4FB38(&unk_27FA25670, type metadata accessor for GlanceButtonModel.TransitionModel);
      }

      else
      {
        *&v318 = v54;
        *(&v318 + 1) = v73;
        *v319 = v126;
        *(v319 + 8) = v306;
        *(&v319[1] + 1) = 0x3FF0000000000000;
        v320 = 0uLL;
        v369 = 0uLL;
        v368 = v319[1];
        v367 = v319[0];
        v366 = v318;
        v178 = *(v9 + 16);
        v179 = *(v9 + 32);
        v180 = *(v9 + 64);
        v330[1] = *(v9 + 48);
        v331 = v180;
        v329 = v178;
        v330[0] = v179;
        v181 = *(v9 + 32);
        v315 = *(v9 + 16);
        v316 = v181;
        v317 = *(v9 + 48);
        v19 = *(&v180 + 1);
        v182 = v180;
        if (v180 == 1)
        {
          v321 = v315;
          v322[0] = v316;
          v322[1] = v317;
          v323 = v180;
          v324 = v318;
          v325 = v319[0];
          v326 = v319[1];
          v327 = 0;
          v328 = 0;
          sub_25AF4F820(&v318, &v311);
          sub_25AF25FC4(&v329, &v311, &qword_27FA249F0);
          sub_25AF4F820(&v318, &v311);
          sub_25AF2602C(&v321, &unk_27FA25680);
        }

        else
        {
          v184 = *(v9 + 32);
          v308 = *(v9 + 16);
          v309 = v184;
          v310 = *(v9 + 48);
          v311 = v318;
          v312 = v319[0];
          v313 = v319[1];
          v314 = 0uLL;
          v371[0] = v318;
          v371[1] = v319[0];
          v371[2] = v319[1];
          v371[3] = 0uLL;
          v370[2] = v310;
          v370[1] = v309;
          v370[0] = v308;
          v370[3] = v180;
          sub_25AF4F820(&v318, &v321);
          sub_25AF25FC4(&v329, &v321, &qword_27FA249F0);
          sub_25AF25FC4(&v329, &v321, &qword_27FA249F0);
          sub_25AF4F820(&v318, &v321);
          v197 = sub_25AFBFC64(v370, v371);
          sub_25AF2602C(&v311, &qword_27FA249F0);
          v321 = v315;
          v322[0] = v316;
          v322[1] = v317;
          v323 = __PAIR128__(v19, v182);
          sub_25AF2602C(&v321, &qword_27FA249F0);
          sub_25AF2602C(&v329, &qword_27FA249F0);
          if (v197)
          {
            v198 = *(v9 + 16);
            v199 = *(v9 + 32);
            v200 = *(v9 + 64);
            v322[1] = *(v9 + 48);
            v323 = v200;
            v321 = v198;
            v322[0] = v199;
            v201 = v369;
            *(v9 + 48) = v368;
            *(v9 + 64) = v201;
            v202 = v367;
            *(v9 + 16) = v366;
            *(v9 + 32) = v202;
            goto LABEL_131;
          }
        }

        v185 = swift_getKeyPath();
        MEMORY[0x28223BE20](v185);
        *(&v268 - 2) = v9;
        *(&v268 - 1) = &v366;
        *&v321 = v9;
        sub_25AF4FB38(&unk_27FA25670, type metadata accessor for GlanceButtonModel.TransitionModel);
      }

      v72 = v304;
      v19 = v302;
      sub_25B004224();
      v302 = v19;
      sub_25AF4F8A0(&v318);

LABEL_132:
      *&v321 = v54;
      *(&v321 + 1) = v73;
      *v322 = v126;
      *(v322 + 8) = v306;
      *(&v322[1] + 1) = 0x3FF0000000000000;
      v323 = 0uLL;
      sub_25AF4F8A0(&v321);
      sub_25AFB6E40(v72 & 1, 0, v53);
      sub_25AFB6E40(v72 & 1, 0, v53);

      sub_25AF1C414(&v387);
LABEL_160:

LABEL_47:
      v69 = v125;
      v79 = v299;
    }

    while (v296 != v125);
    v242 = v299[2];

    v32 = sub_25AFB6D8C();
    v243 = v283;
    sub_25AF25FC4(v300, v283, &qword_27FA249E8);
    v31 = v301;
    v244 = v297(v243, 1, v301);
    v24 = v279;
    if (v244 == 1)
    {
      sub_25AF2602C(v243, &qword_27FA249E8);
      v332 = 0uLL;
      *v333 = v52 * (v242 + 1);
      *(v333 + 8) = v306;
      *(&v333[1] + 1) = 0x3FF0000000000000;
      v334 = 0uLL;
      v321 = 0u;
      v322[0] = v333[0];
      v322[1] = v333[1];
      v323 = 0uLL;
      sub_25AF4F820(&v332, &v329);
      if (v72)
      {
        sub_25AFBF5B0(&v321);
      }

      else
      {
        sub_25AFBF280(&v321);
      }

      v332 = 0uLL;
      *v333 = v52 * (v242 + 1);
      *(v333 + 8) = v306;
      *(&v333[1] + 1) = 0x3FF0000000000000;
      v334 = 0uLL;
      sub_25AF4F8A0(&v332);
      sub_25AFB6E40(v72 & 1, 0, v53);

      sub_25AF4F8F4(v288);
    }

    v9 = v279 + 32;
    v245 = *(v279 + 32);
    v245(v287, v243, v31);
    v35 = v70 * v242;
    if (v292)
    {
      v246 = sub_25B0056D4();
      if (v291)
      {
        goto LABEL_166;
      }

LABEL_177:
      v307 = 0;
      v19 = v293;
      if (!v293)
      {
        goto LABEL_178;
      }

LABEL_167:
      v305 = v245;
      v247 = *(v19 + 16);

      [v247 lock];
      v248 = *(v19 + 24);
      [v247 unlock];
      if (v248)
      {

        v249 = 0;
        v245 = v305;
      }

      else
      {

        v19 = v304;
        v332 = 0uLL;
        *v333 = v52 * (v242 + 1);
        *(v333 + 8) = v306;
        *(&v333[1] + 1) = 0x3FF0000000000000;
        v334 = v246;
        v321 = 0u;
        v322[0] = v333[0];
        v322[1] = v333[1];
        v323 = v246;
        if (v304)
        {
          sub_25AF4F820(&v332, &v329);
          sub_25AFBF5B0(&v321);
        }

        else
        {
          sub_25AF4F820(&v332, &v329);
          sub_25AFBF280(&v321);
        }

        v245 = v305;
        v332 = 0uLL;
        *v333 = v52 * (v242 + 1);
        *(v333 + 8) = v306;
        *(&v333[1] + 1) = 0x3FF0000000000000;
        v334 = v246;
        sub_25AF4F8A0(&v332);
        sub_25AFB6E40(v19 & 1, v307, v53);

        v249 = 1;
      }
    }

    else
    {
      v246 = 0;
      if (!v291)
      {
        goto LABEL_177;
      }

LABEL_166:
      v307 = sub_25B0056D4();
      v19 = v293;
      if (v293)
      {
        goto LABEL_167;
      }

LABEL_178:
      v249 = 0;
    }

    sub_25B005864();
    v250 = v35 * 1000000000.0;
    if (COERCE__INT64(fabs(v35 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_190;
    }

    if (v250 <= -9.22337204e18)
    {
      goto LABEL_191;
    }

    if (v250 < 9.22337204e18)
    {
      v305 = v32;
      v252 = v271;
      v251 = v272;
      *v271 = v250;
      v253 = v273;
      (*(v251 + 104))(v252, *MEMORY[0x277D85168], v273);
      LODWORD(v302) = v249;
      v254 = v282;
      sub_25B005874();
      (*(v251 + 8))(v252, v253);
      v255 = *(v286 + 8);
      v286 += 8;
      *&v306 = v255;
      v255(v254, v281);
      sub_25AF4F950();
      v303 = sub_25B005D34();
      v304 = v246;
      v256 = v284;
      (*(v24 + 16))(v284, v287, v31);
      v257 = v31;
      v258 = (*(v24 + 80) + 24) & ~*(v24 + 80);
      v259 = v258 + v285;
      v260 = (v258 + v285) & 0xFFFFFFFFFFFFFFF8;
      v261 = swift_allocObject();
      *(v261 + 16) = v270;
      v245((v261 + v258), v256, v257);
      *(v261 + v259) = v302;
      *(v261 + v260 + 8) = v269;
      *&v333[1] = sub_25AF4FA80;
      *(&v333[1] + 1) = v261;
      *&v332 = MEMORY[0x277D85DD0];
      *(&v332 + 1) = 1107296256;
      *&v333[0] = sub_25AF43684;
      *(&v333[0] + 1) = &block_descriptor_1;
      v262 = _Block_copy(&v332);

      v263 = v274;
      sub_25B005844();
      *&v329 = MEMORY[0x277D84F90];
      sub_25AF4FB38(&qword_27FA246C0, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA25690);
      sub_25AF4FB80();
      v264 = v276;
      v265 = v268;
      sub_25B005E54();
      v266 = v280;
      v267 = v303;
      MEMORY[0x25F85DB10](v280, v263, v264, v262);
      _Block_release(v262);

      (*(v278 + 8))(v264, v265);
      (*(v275 + 8))(v263, v277);
      (v306)(v266, v281);
      (*(v279 + 8))(v287, v301);

      sub_25AF4F8F4(v288);
    }

LABEL_192:
    __break(1u);
LABEL_193:
    swift_once();
    v38 = v288;
LABEL_7:
    v39 = *(v38 + v32[8]);
    v291 = qword_27FA30B20;

    v40 = v288;
    v292 = 0;
LABEL_22:
    v46 = 0.0;
    v47 = 10;
LABEL_32:
    v52 = 0.0;
    v51 = 0.0;
  }

  sub_25AF25FC4(v300, v19, &qword_27FA249E8);
  v64 = v301;
  if ((*(v24 + 48))(v19, 1, v301) == 1)
  {
    sub_25AF4F8F4(v288);

    return sub_25AF2602C(v19, &qword_27FA249E8);
  }

  else
  {
    LOBYTE(v321) = 1;
    sub_25B005B04();

    sub_25AF4F8F4(v288);
    return (*(v24 + 8))(v19, v64);
  }
}