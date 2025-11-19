void sub_24B998694()
{
  v0 = [objc_opt_self() sharedApplication];
  v1 = [v0 connectedScenes];

  sub_24B8F37E8(0, &qword_27F066AB0);
  sub_24B8F1128(&qword_27F066AB8, &qword_27F066AB0);
  v2 = sub_24BAAA20C();

  v3 = sub_24B981258(v2);

  if (v3)
  {
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    v5 = v4;
    if (v4)
    {
      v6 = [v4 interfaceOrientation];
      goto LABEL_7;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = 1;
LABEL_7:
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_24B997350(v6);
  }
}

void sub_24B9987F8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

BOOL sub_24B998864()
{
  if (!*(v0 + 24))
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_24BAA81BC();

    v1 = swift_allocObject();
    swift_weakInit();
    type metadata accessor for ActivityConfigurationManager();
    swift_allocObject();
    v2 = v0;
    v3 = sub_24B8F0DEC(v8, v9, sub_24B9A2F9C, v1);

    *(v2 + 24) = v3;
  }

  v4 = sub_24B8D7188();
  if (v4)
  {
    v5 = v4;
    v6 = [v4 dimsLockScreen];

    return v6 == 2;
  }

  else
  {

    return 0;
  }
}

BOOL sub_24B9989BC()
{
  sub_24B984444();
  v0 = sub_24B8D7188();
  if (v0 && (v1 = v0, v2 = [v0 configuration], v1, v2))
  {
    v3 = [v2 suppressionType];

    return v3 == 1;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_24B998A4C()
{
  sub_24B984444();
  v0 = sub_24B8D7188();
  if (v0)
  {
    v1 = v0;
    v2 = [v0 configuration];

    [v2 suppressionMode];
  }

  return DNDResolvedInterruptionSuppressionMode();
}

uint64_t sub_24B998ADC(unint64_t a1)
{
  v52 = sub_24BAA7E4C();
  v2 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v4 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    if (a1)
    {
      v7 = qword_27F0630F0;

      if (v7 != -1)
      {
        goto LABEL_46;
      }

      while (1)
      {
        v8 = sub_24BAA812C();
        __swift_project_value_buffer(v8, qword_27F077038);
        v9 = sub_24BAAA28C();

        v10 = sub_24BAA810C();

        v11 = a1 >> 62;
        if (os_log_type_enabled(v10, v9))
        {
          v12 = swift_slowAlloc();
          v45 = swift_slowAlloc();
          v56 = v45;
          *v12 = 136315138;
          v46 = v12;
          v47 = a1 & 0xFFFFFFFFFFFFFF8;
          if (v11)
          {
            v13 = sub_24BAAA52C();
          }

          else
          {
            v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v14 = MEMORY[0x277D84F90];
          if (v13)
          {
            HIDWORD(v41) = v9;
            v42 = a1 >> 62;
            v43 = v10;
            v44 = v6;
            v55 = MEMORY[0x277D84F90];
            result = sub_24B914D68(0, v13 & ~(v13 >> 63), 0);
            if (v13 < 0)
            {
              __break(1u);
              return result;
            }

            v6 = 0;
            v14 = v55;
            v50 = a1;
            v51 = a1 & 0xC000000000000001;
            v48 = (v2 + 2);
            v49 = v13;
            v15 = (v2 + 1);
            do
            {
              v16 = v6 + 1;
              if (__OFADD__(v6, 1))
              {
                goto LABEL_44;
              }

              if (v51)
              {
                v17 = MEMORY[0x24C2506E0](v6, a1);
              }

              else
              {
                if (v6 >= *(v47 + 16))
                {
                  goto LABEL_45;
                }

                v17 = *(a1 + 8 * v6 + 32);
              }

              v18 = *(v17 + OBJC_IVAR____TtC15FocusSettingsUI9WatchFace_faceName + 8);
              v53 = *(v17 + OBJC_IVAR____TtC15FocusSettingsUI9WatchFace_faceName);
              v54 = v18;

              MEMORY[0x24C250160](32, 0xE100000000000000);
              v19 = v52;
              (*v48)(v4, v17 + OBJC_IVAR____TtC15FocusSettingsUI9WatchFace_faceIdentifier, v52);
              sub_24B9A1DBC(&qword_27F066AA8, MEMORY[0x277CC95F0]);
              v20 = sub_24BAAA76C();
              MEMORY[0x24C250160](v20);

              (*v15)(v4, v19);
              MEMORY[0x24C250160](32, 0xE100000000000000);
              if (*(v17 + OBJC_IVAR____TtC15FocusSettingsUI9WatchFace_isSelected))
              {
                v21 = 1702195828;
              }

              else
              {
                v21 = 0x65736C6166;
              }

              if (*(v17 + OBJC_IVAR____TtC15FocusSettingsUI9WatchFace_isSelected))
              {
                v22 = 0xE400000000000000;
              }

              else
              {
                v22 = 0xE500000000000000;
              }

              MEMORY[0x24C250160](v21, v22);

              v23 = v53;
              v24 = v54;
              v55 = v14;
              v26 = *(v14 + 16);
              v25 = *(v14 + 24);
              v2 = (v26 + 1);
              if (v26 >= v25 >> 1)
              {
                sub_24B914D68((v25 > 1), v26 + 1, 1);
                v14 = v55;
              }

              *(v14 + 16) = v2;
              v27 = v14 + 16 * v26;
              *(v27 + 32) = v23;
              *(v27 + 40) = v24;
              ++v6;
              a1 = v50;
            }

            while (v16 != v49);
            v10 = v43;
            v6 = v44;
            v11 = v42;
            LOBYTE(v9) = BYTE4(v41);
          }

          v33 = MEMORY[0x24C2501F0](v14, MEMORY[0x277D837D0]);
          v35 = v34;

          v36 = sub_24B8E49D4(v33, v35, &v56);

          v37 = v46;
          *(v46 + 1) = v36;
          _os_log_impl(&dword_24B8D3000, v10, v9, "Fetched watch faces:%s", v37, 0xCu);
          v38 = v45;
          __swift_destroy_boxed_opaque_existential_0(v45);
          MEMORY[0x24C251390](v38, -1, -1);
          MEMORY[0x24C251390](v37, -1, -1);
        }

        if (v11)
        {
          v39 = sub_24BAAA52C();
          if (!v39)
          {
LABEL_48:
            v32 = 0;
            goto LABEL_49;
          }
        }

        else
        {
          v39 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v39)
          {
            goto LABEL_48;
          }
        }

        v40 = 0;
        v2 = &OBJC_IVAR____TtC15FocusSettingsUI9WatchFace_isSelected;
        while ((a1 & 0xC000000000000001) != 0)
        {
          v32 = MEMORY[0x24C2506E0](v40, a1);
          v4 = (v40 + 1);
          if (__OFADD__(v40, 1))
          {
            goto LABEL_42;
          }

LABEL_37:
          if (*(v32 + OBJC_IVAR____TtC15FocusSettingsUI9WatchFace_isSelected))
          {
            goto LABEL_49;
          }

          ++v40;
          if (v4 == v39)
          {
            goto LABEL_48;
          }
        }

        if (v40 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_43;
        }

        v4 = (v40 + 1);
        if (!__OFADD__(v40, 1))
        {
          goto LABEL_37;
        }

LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        swift_once();
      }
    }

    if (qword_27F0630F0 != -1)
    {
      swift_once();
    }

    v28 = sub_24BAA812C();
    __swift_project_value_buffer(v28, qword_27F077038);
    v29 = sub_24BAAA2AC();
    v30 = sub_24BAA810C();
    if (os_log_type_enabled(v30, v29))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_24B8D3000, v30, v29, "Error updating watch faces, no faces returned.", v31, 2u);
      MEMORY[0x24C251390](v31, -1, -1);
    }

    v32 = 0;
    a1 = MEMORY[0x277D84F90];
LABEL_49:
    *(v6 + OBJC_IVAR____TtC15FocusSettingsUI23ActivityConfigViewModel_selectedWatchFace) = v32;

    type metadata accessor for ActivityConfigViewModel();
    sub_24B9A1DBC(&qword_27F066AA0, type metadata accessor for ActivityConfigViewModel);
    sub_24BAA814C();
    sub_24BAA816C();

    *(v6 + OBJC_IVAR____TtC15FocusSettingsUI23ActivityConfigViewModel_watchFacesToList) = a1;
  }

  return result;
}

uint64_t sub_24B999150(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0669D0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v13 - v3;
  if (qword_27F0630C0 != -1)
  {
    swift_once();
  }

  if (a1)
  {
    v5 = OBJC_IVAR____TtC15FocusSettingsUI9WatchFace_faceIdentifier;
    v6 = sub_24BAA7E4C();
    v7 = *(v6 - 8);
    (*(v7 + 16))(v4, a1 + v5, v6);
    (*(v7 + 56))(v4, 0, 1, v6);
  }

  else
  {
    v8 = sub_24BAA7E4C();
    (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_24BAA81BC();

  v9 = v13[0];
  v10 = v13[1];
  v11 = swift_allocObject();
  swift_weakInit();

  sub_24B9EA0EC(v4, v9, v10, sub_24B9A1E64, v11);

  sub_24B8F35E4(v4, &qword_27F0669D0);
}

uint64_t sub_24B9993C4()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (qword_27F0630C0 != -1)
    {
      swift_once();
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_24BAA81BC();

    v1 = swift_allocObject();
    swift_weakInit();

    sub_24B9E6944(v2, v3, sub_24B9A1E6C, v1);
  }

  return result;
}

BOOL sub_24B99950C()
{
  if (!*(v0 + 24))
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_24BAA81BC();

    v1 = swift_allocObject();
    swift_weakInit();
    type metadata accessor for ActivityConfigurationManager();
    swift_allocObject();
    v2 = v0;
    v3 = sub_24B8F0DEC(v10, v11, sub_24B9A2F9C, v1);

    *(v2 + 24) = v3;
  }

  v4 = sub_24B8D7188();
  if (v4)
  {
    v5 = v4;
    v6 = [v4 configuration];
    v7 = [v6 phoneCallBypassSettings];

    v8 = [v7 repeatEventSourceBehaviorEnabledSetting];

    return (v8 & 0xFFFFFFFFFFFFFFFDLL) == 0;
  }

  else
  {

    return 0;
  }
}

BOOL sub_24B9996A0()
{
  sub_24B984444();
  v0 = sub_24B8D686C();

  v1 = sub_24BAA9FDC();

  v2 = [v0 canRemoveModeConfigurationForModeIdentifier_];

  if (v2)
  {
    v3 = sub_24B8D7188();
    if (v3)
    {
      v4 = v3;
      v5 = [v3 resolvedCompatibilityVersion];

      v6 = *MEMORY[0x277D05818];

      return v6 >= v5;
    }

    else
    {

      return 1;
    }
  }

  else
  {

    return 0;
  }
}

uint64_t sub_24B999778()
{
  if (!*(v0 + 24))
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_24BAA81BC();

    v1 = swift_allocObject();
    swift_weakInit();
    type metadata accessor for ActivityConfigurationManager();
    swift_allocObject();
    v2 = v0;
    v3 = sub_24B8F0DEC(v5, v6, sub_24B9A1E3C, v1);

    *(v2 + 24) = v3;
  }

  sub_24B8E20F4();
}

void sub_24B99989C()
{
  if (!qword_27F0668A0)
  {
    v0 = sub_24BAA81DC();
    if (!v1)
    {
      atomic_store(v0, &qword_27F0668A0);
    }
  }
}

uint64_t sub_24B999934@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ActivityConfigViewModel();
  result = sub_24BAA814C();
  *a1 = result;
  return result;
}

char *sub_24B999AD4(char *result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = *&result[*a5];
  if (v5)
  {
    v6 = result;
    v7 = sub_24B9A1C7C(v5);
    v5(v7);

    return sub_24B926B78(v5);
  }

  return result;
}

id sub_24B999BD0(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t get_witness_table_7SwiftUI4ViewRzlAA15ModifiedContentVyxAA30_EnvironmentKeyWritingModifierVy013FocusSettingsB028ActivityConfigurationContextOSgGGAaBHPxAaBHD1__AkA0cI0HPyHCHCTm(uint64_t a1, uint64_t *a2, uint64_t a3, unint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
  sub_24BAA85EC();
  sub_24B8F384C(a4, a2);
  return swift_getWitnessTable();
}

uint64_t sub_24B999D6C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = sub_24BAAA52C();
  if (v3 != result)
  {
    return 0;
  }

  v5 = 0;
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 56);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v8 &= v8 - 1;
LABEL_12:

    v12 = sub_24BAAA57C();

    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

  v10 = v5;
  while (1)
  {
    v5 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v5 >= v9)
    {
      return 1;
    }

    v11 = *(a2 + 56 + 8 * v5);
    ++v10;
    if (v11)
    {
      v8 = (v11 - 1) & v11;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

void sub_24B999E70(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3 == sub_24BAAA52C())
  {
    v4 = 0;
    v5 = 1 << *(a2 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(a2 + 56);
    v8 = (v5 + 63) >> 6;
    while (v7)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_12:
      v12 = *(*(a2 + 48) + 8 * (v9 | (v4 << 6)));
      v13 = sub_24BAAA57C();

      if ((v13 & 1) == 0)
      {
        return;
      }
    }

    v10 = v4;
    while (1)
    {
      v4 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        return;
      }

      v11 = *(a2 + 56 + 8 * v4);
      ++v10;
      if (v11)
      {
        v9 = __clz(__rbit64(v11));
        v7 = (v11 - 1) & v11;
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t sub_24B999F70(void (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

uint64_t sub_24B999FA8(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24B9A2FB0;

  return v6(a1);
}

uint64_t sub_24B99A0A0(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24B99A198;

  return v6(a1);
}

uint64_t sub_24B99A198()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

char *sub_24B99A290(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F0669E0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_24B99A39C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0669D8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_24B99A4EC(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066A10);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066A18);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_24B99A620(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066A20);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_24B99A740(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066B68);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_24B99A860(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0669F8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_24B99A96C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0669F0);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_24B99AA9C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 25;
    }

    v14[2] = v12;
    v14[3] = 2 * (v16 >> 3);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 8 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

size_t sub_24B99ABF8(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_24B99ADD4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F066B80);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_24B99AEF4@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_24B99AF24(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_24B9A0630(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_24B99B4F4(v6);
  return sub_24BAAA67C();
}

uint64_t sub_24B99AFA0(void **a1)
{
  v2 = *(type metadata accessor for FocusConfigurationAction(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_24B9A0658(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_24B99B5F8(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_24B99B048(void **a1, void (*a2)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a3)(void, uint64_t, uint64_t, uint64_t))
{
  v6 = *(type metadata accessor for FocusSystemConfigurationAction(0) - 8);
  v7 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = sub_24B9A066C(v7);
  }

  v8 = v7[2];
  v10[0] = v7 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v10[1] = v8;
  result = sub_24B99B724(v10, a2, a3);
  *a1 = v7;
  return result;
}

void sub_24B99B108(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      v8 = MEMORY[0x277D84F90];
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0645E8);
      v8 = swift_allocObject();
      v9 = _swift_stdlib_malloc_size(v8);
      v8[2] = v5;
      v8[3] = 2 * v9 - 64;
      if (v4 != a3)
      {
LABEL_5:
        memcpy(v8 + 4, (a2 + a3), v5);
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

void sub_24B99B1F4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F0669E0);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 17;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 4);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_24B99B30C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t *a5)
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v6)
  {
    if (v6 < 1)
    {
      if (v5 != a3)
      {
LABEL_7:
        sub_24B8F37E8(0, a5);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064710);
      v9 = swift_allocObject();
      v10 = _swift_stdlib_malloc_size(v9);
      v11 = v10 - 32;
      if (v10 < 32)
      {
        v11 = v10 - 25;
      }

      v9[2] = v6;
      v9[3] = (2 * (v11 >> 3)) | 1;
      if (v5 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

char *sub_24B99B434(uint64_t a1, char *a2, uint64_t (*a3)(uint64_t *, char *, uint64_t, uint64_t))
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v6 = sub_24BAAA52C();
  if (!v6)
  {
    return MEMORY[0x277D84F90];
  }

  while (1)
  {
    a2 = (a2)(v6, 0);

    a3 = a3(&v8, a2 + 32, v6, a1);
    sub_24B8F0C5C();
    if (a3 == v6)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v6 = *(a1 + 16);
    if (!v6)
    {
      return MEMORY[0x277D84F90];
    }
  }

  return a2;
}

uint64_t sub_24B99B4F4(uint64_t *a1)
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
        type metadata accessor for EventSource();
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

uint64_t sub_24B99B5F8(uint64_t *a1)
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
        type metadata accessor for FocusConfigurationAction(0);
        v6 = sub_24BAAA15C();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for FocusConfigurationAction(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_24B99C934(v8, v9, a1, v4);
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
    return sub_24B99BA58(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_24B99B724(uint64_t a1, void (*a2)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a3)(void, uint64_t, uint64_t, uint64_t))
{
  v6 = *(a1 + 8);
  result = sub_24BAAA75C();
  if (result < v6)
  {
    if (v6 >= -1)
    {
      v8 = result;
      v9 = v6 / 2;
      if (v6 <= 1)
      {
        v10 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for FocusSystemConfigurationAction(0);
        v10 = sub_24BAAA15C();
        *(v10 + 16) = v9;
      }

      v11 = *(type metadata accessor for FocusSystemConfigurationAction(0) - 8);
      v12[0] = v10 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
      v12[1] = v9;
      a2(v12, v13, a1, v8);
      *(v10 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v6 < 0)
  {
    goto LABEL_12;
  }

  if (v6)
  {
    return a3(0, v6, 1, a1);
  }

  return result;
}

uint64_t sub_24B99B860(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = result;
    v6 = *a4;
    sub_24B8F5E3C();
    v7 = v6 + 8 * v4 - 8;
    v8 = v5 - v4;
LABEL_5:
    v9 = v8;
    v10 = v7;
    while (1)
    {
      result = sub_24BAAA43C();
      if (result != -1)
      {
LABEL_4:
        ++v4;
        v7 += 8;
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

      v11 = *v10;
      *v10 = v10[1];
      v10[1] = v11;
      --v10;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_24B99B958(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *, uint64_t *))
{
  if (a3 != a2)
  {
    v7 = *v4;
    v8 = (*v4 + 8 * a3 - 8);
    v9 = result - a3;
LABEL_4:
    v16 = v8;
    v17 = a3;
    v10 = *(v7 + 8 * a3);
    v15 = v9;
    while (1)
    {
      v19 = v10;
      v18 = *v8;

      v11 = a4(&v19, &v18);

      if (v5)
      {
        break;
      }

      if (v11)
      {
        if (!v7)
        {
          __break(1u);
          return result;
        }

        v12 = *v8;
        v10 = v8[1];
        *v8 = v10;
        v8[1] = v12;
        --v8;
        if (!__CFADD__(v9++, 1))
        {
          continue;
        }
      }

      a3 = v17 + 1;
      v8 = v16 + 1;
      v9 = v15 - 1;
      if (v17 + 1 != a2)
      {
        goto LABEL_4;
      }

      return result;
    }
  }

  return result;
}

uint64_t sub_24B99BA58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for FocusConfigurationAction(0);
  v9 = MEMORY[0x28223BE20](v8);
  v47 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v54 = &v38 - v12;
  result = MEMORY[0x28223BE20](v11);
  v49 = &v38 - v15;
  v40 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v17 = *(v14 + 72);
    v18 = *a4 + v17 * (a3 - 1);
    v45 = -v17;
    v46 = v16;
    v19 = a1 - a3;
    v39 = v17;
    v20 = v16 + v17 * a3;
    v48 = v8;
LABEL_5:
    v43 = v18;
    v44 = a3;
    v41 = v20;
    v42 = v19;
    while (1)
    {
      v21 = v49;
      sub_24B9A1C8C(v20, v49, type metadata accessor for FocusConfigurationAction);
      v22 = v54;
      sub_24B9A1C8C(v18, v54, type metadata accessor for FocusConfigurationAction);
      v23 = (v21 + *(v8 + 32));
      v25 = *v23;
      v24 = v23[1];

      v26 = _s15FocusSettingsUI12InstalledAppC16bundleIdentifierACSS_tcfC_0(v25, v24);
      v27 = v26[3];
      v28 = v26[4];

      v52 = v27;
      v53 = v28;
      v29 = (v22 + *(v8 + 32));
      v31 = *v29;
      v30 = v29[1];

      v32 = _s15FocusSettingsUI12InstalledAppC16bundleIdentifierACSS_tcfC_0(v31, v30);
      v33 = v32[3];
      v34 = v32[4];

      v50 = v33;
      v51 = v34;
      sub_24B8F5E3C();
      v35 = sub_24BAAA43C();

      v8 = v48;

      sub_24B9A1CF4(v22, type metadata accessor for FocusConfigurationAction);
      result = sub_24B9A1CF4(v21, type metadata accessor for FocusConfigurationAction);
      if (v35 != -1)
      {
LABEL_4:
        a3 = v44 + 1;
        v18 = v43 + v39;
        v19 = v42 - 1;
        v20 = v41 + v39;
        if (v44 + 1 == v40)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v46)
      {
        break;
      }

      v36 = v47;
      sub_24B9A1D54(v20, v47, type metadata accessor for FocusConfigurationAction);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_24B9A1D54(v36, v18, type metadata accessor for FocusConfigurationAction);
      v18 += v45;
      v20 += v45;
      if (__CFADD__(v19++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_24B99BD5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v44 = type metadata accessor for FocusSystemConfigurationAction(0);
  v8 = MEMORY[0x28223BE20](v44);
  v39 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v31 - v11;
  result = MEMORY[0x28223BE20](v10);
  v16 = &v31 - v15;
  v33 = a2;
  if (a3 != a2)
  {
    v17 = *(v14 + 72);
    v18 = *a4 + v17 * (a3 - 1);
    v19 = -v17;
    v20 = a1 - a3;
    v38 = *a4;
    v32 = v17;
    v21 = v38 + v17 * a3;
LABEL_5:
    v36 = v18;
    v37 = a3;
    v34 = v21;
    v35 = v20;
    v22 = v44;
    while (1)
    {
      sub_24B9A1C8C(v21, v16, type metadata accessor for FocusSystemConfigurationAction);
      sub_24B9A1C8C(v18, v12, type metadata accessor for FocusSystemConfigurationAction);
      v23 = *(v22 + 28);
      v24 = *&v16[v23 + 8];
      v42 = *&v16[v23];
      v43 = v24;
      v25 = &v12[v23];
      v27 = *v25;
      v26 = *(v25 + 1);
      v40 = v27;
      v41 = v26;
      sub_24B8F5E3C();
      v28 = sub_24BAAA43C();
      sub_24B9A1CF4(v12, type metadata accessor for FocusSystemConfigurationAction);
      result = sub_24B9A1CF4(v16, type metadata accessor for FocusSystemConfigurationAction);
      if (v28 != -1)
      {
LABEL_4:
        a3 = v37 + 1;
        v18 = v36 + v32;
        v20 = v35 - 1;
        v21 = v34 + v32;
        if (v37 + 1 == v33)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v38)
      {
        break;
      }

      v29 = v39;
      sub_24B9A1D54(v21, v39, type metadata accessor for FocusSystemConfigurationAction);
      v22 = v44;
      swift_arrayInitWithTakeFrontToBack();
      result = sub_24B9A1D54(v29, v18, type metadata accessor for FocusSystemConfigurationAction);
      v18 += v19;
      v21 += v19;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_24B99BFE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for FocusSystemConfigurationAction(0);
  v9 = MEMORY[0x28223BE20](v8);
  v44 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v45 = &v35 - v12;
  result = MEMORY[0x28223BE20](v11);
  v51 = &v35 - v15;
  v37 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v17 = *(v14 + 72);
    v18 = *a4 + v17 * (a3 - 1);
    v42 = -v17;
    v43 = v16;
    v19 = a1 - a3;
    v36 = v17;
    v20 = v16 + v17 * a3;
LABEL_5:
    v40 = v18;
    v41 = a3;
    v38 = v20;
    v39 = v19;
    v46 = v19;
    while (1)
    {
      v21 = v51;
      sub_24B9A1C8C(v20, v51, type metadata accessor for FocusSystemConfigurationAction);
      v22 = v45;
      sub_24B9A1C8C(v18, v45, type metadata accessor for FocusSystemConfigurationAction);
      v23 = [*(v21 + *(v8 + 32)) title];
      v24 = sub_24BAAA01C();
      v26 = v25;

      v49 = v24;
      v50 = v26;
      v27 = [*(v22 + *(v8 + 32)) title];
      v28 = sub_24BAAA01C();
      v29 = v8;
      v31 = v30;

      v47 = v28;
      v48 = v31;
      sub_24B8F5E3C();
      v32 = sub_24BAAA43C();

      v8 = v29;

      sub_24B9A1CF4(v22, type metadata accessor for FocusSystemConfigurationAction);
      result = sub_24B9A1CF4(v51, type metadata accessor for FocusSystemConfigurationAction);
      if (v32 != -1)
      {
LABEL_4:
        a3 = v41 + 1;
        v18 = v40 + v36;
        v19 = v39 - 1;
        v20 = v38 + v36;
        if (v41 + 1 == v37)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v43)
      {
        break;
      }

      v33 = v44;
      sub_24B9A1D54(v20, v44, type metadata accessor for FocusSystemConfigurationAction);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_24B9A1D54(v33, v18, type metadata accessor for FocusSystemConfigurationAction);
      v18 += v42;
      v20 += v42;
      if (__CFADD__(v46++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_24B99C2DC(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v86 = result;
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    while (1)
    {
      v9 = v7++;
      if (v7 < v6)
      {
        v87 = v6;
        v82 = v5;
        v10 = 8 * v9;
        v11 = v9;
        v12 = *a3 + 8 * v9 + 16;
        sub_24B8F5E3C();
        result = sub_24BAAA43C();
        v13 = result;
        v84 = v11;
        v14 = (v11 + 2);
        while (1)
        {
          v7 = v87;
          if (v87 == v14)
          {
            break;
          }

          result = sub_24BAAA43C();
          ++v14;
          v12 += 8;
          if ((v13 == -1) == (result != -1))
          {
            v7 = (v14 - 1);
            break;
          }
        }

        v9 = v84;
        if (v13 == -1)
        {
          if (v7 < v84)
          {
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
            return result;
          }

          if (v84 < v7)
          {
            v15 = 8 * v7 - 8;
            v16 = v7;
            v17 = v84;
            do
            {
              if (v17 != --v16)
              {
                v19 = *a3;
                if (!*a3)
                {
                  goto LABEL_125;
                }

                v18 = *(v19 + v10);
                *(v19 + v10) = *(v19 + v15);
                *(v19 + v15) = v18;
              }

              ++v17;
              v15 -= 8;
              v10 += 8;
            }

            while (v17 < v16);
          }
        }

        v5 = v82;
      }

      v20 = a3[1];
      if (v7 < v20)
      {
        if (__OFSUB__(v7, v9))
        {
          goto LABEL_117;
        }

        if (v7 - v9 < a4)
        {
          if (__OFADD__(v9, a4))
          {
            goto LABEL_118;
          }

          if (v9 + a4 >= v20)
          {
            v21 = a3[1];
          }

          else
          {
            v21 = (v9 + a4);
          }

          if (v21 < v9)
          {
LABEL_119:
            __break(1u);
            goto LABEL_120;
          }

          if (v7 != v21)
          {
            v83 = v5;
            v22 = *a3;
            sub_24B8F5E3C();
            v23 = v22 + 8 * v7 - 8;
            v85 = v9;
            v24 = v9 - v7;
            do
            {
              v88 = v7;
              v25 = v24;
              v26 = v23;
              do
              {
                result = sub_24BAAA43C();
                if (result != -1)
                {
                  break;
                }

                if (!v22)
                {
                  goto LABEL_122;
                }

                v27 = *v26;
                *v26 = v26[1];
                v26[1] = v27;
                --v26;
              }

              while (!__CFADD__(v25++, 1));
              v7 = (v88 + 1);
              v23 += 8;
              --v24;
            }

            while (v88 + 1 != v21);
            v7 = v21;
            v5 = v83;
            v9 = v85;
          }
        }
      }

      if (v7 < v9)
      {
        goto LABEL_116;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_24B99A39C(0, *(v8 + 2) + 1, 1, v8);
        v8 = result;
      }

      v30 = *(v8 + 2);
      v29 = *(v8 + 3);
      v31 = v30 + 1;
      if (v30 >= v29 >> 1)
      {
        result = sub_24B99A39C((v29 > 1), v30 + 1, 1, v8);
        v8 = result;
      }

      *(v8 + 2) = v31;
      v32 = &v8[16 * v30];
      *(v32 + 4) = v9;
      *(v32 + 5) = v7;
      v33 = *v86;
      if (!*v86)
      {
        goto LABEL_126;
      }

      if (v30)
      {
        while (1)
        {
          v34 = v31 - 1;
          if (v31 >= 4)
          {
            break;
          }

          if (v31 == 3)
          {
            v35 = *(v8 + 4);
            v36 = *(v8 + 5);
            v45 = __OFSUB__(v36, v35);
            v37 = v36 - v35;
            v38 = v45;
LABEL_57:
            if (v38)
            {
              goto LABEL_105;
            }

            v51 = &v8[16 * v31];
            v53 = *v51;
            v52 = *(v51 + 1);
            v54 = __OFSUB__(v52, v53);
            v55 = v52 - v53;
            v56 = v54;
            if (v54)
            {
              goto LABEL_108;
            }

            v57 = &v8[16 * v34 + 32];
            v59 = *v57;
            v58 = *(v57 + 1);
            v45 = __OFSUB__(v58, v59);
            v60 = v58 - v59;
            if (v45)
            {
              goto LABEL_111;
            }

            if (__OFADD__(v55, v60))
            {
              goto LABEL_112;
            }

            if (v55 + v60 >= v37)
            {
              if (v37 < v60)
              {
                v34 = v31 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          v61 = &v8[16 * v31];
          v63 = *v61;
          v62 = *(v61 + 1);
          v45 = __OFSUB__(v62, v63);
          v55 = v62 - v63;
          v56 = v45;
LABEL_71:
          if (v56)
          {
            goto LABEL_107;
          }

          v64 = &v8[16 * v34];
          v66 = *(v64 + 4);
          v65 = *(v64 + 5);
          v45 = __OFSUB__(v65, v66);
          v67 = v65 - v66;
          if (v45)
          {
            goto LABEL_110;
          }

          if (v67 < v55)
          {
            goto LABEL_3;
          }

LABEL_78:
          v72 = v34 - 1;
          if (v34 - 1 >= v31)
          {
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
LABEL_118:
            __break(1u);
            goto LABEL_119;
          }

          if (!*a3)
          {
            goto LABEL_123;
          }

          v73 = *&v8[16 * v72 + 32];
          v74 = *&v8[16 * v34 + 40];
          sub_24B99E984((*a3 + 8 * v73), (*a3 + 8 * *&v8[16 * v34 + 32]), (*a3 + 8 * v74), v33);
          if (v5)
          {
          }

          if (v74 < v73)
          {
            goto LABEL_101;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v8 = sub_24B99FEB4(v8);
          }

          if (v72 >= *(v8 + 2))
          {
            goto LABEL_102;
          }

          v75 = &v8[16 * v72];
          *(v75 + 4) = v73;
          *(v75 + 5) = v74;
          result = sub_24B99FE28(v34);
          v31 = *(v8 + 2);
          if (v31 <= 1)
          {
            goto LABEL_3;
          }
        }

        v39 = &v8[16 * v31 + 32];
        v40 = *(v39 - 64);
        v41 = *(v39 - 56);
        v45 = __OFSUB__(v41, v40);
        v42 = v41 - v40;
        if (v45)
        {
          goto LABEL_103;
        }

        v44 = *(v39 - 48);
        v43 = *(v39 - 40);
        v45 = __OFSUB__(v43, v44);
        v37 = v43 - v44;
        v38 = v45;
        if (v45)
        {
          goto LABEL_104;
        }

        v46 = &v8[16 * v31];
        v48 = *v46;
        v47 = *(v46 + 1);
        v45 = __OFSUB__(v47, v48);
        v49 = v47 - v48;
        if (v45)
        {
          goto LABEL_106;
        }

        v45 = __OFADD__(v37, v49);
        v50 = v37 + v49;
        if (v45)
        {
          goto LABEL_109;
        }

        if (v50 >= v42)
        {
          v68 = &v8[16 * v34 + 32];
          v70 = *v68;
          v69 = *(v68 + 1);
          v45 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v45)
          {
            goto LABEL_113;
          }

          if (v37 < v71)
          {
            v34 = v31 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_57;
      }

LABEL_3:
      v6 = a3[1];
      if (v7 >= v6)
      {
        goto LABEL_88;
      }
    }
  }

  v8 = MEMORY[0x277D84F90];
LABEL_88:
  v7 = *v86;
  if (!*v86)
  {
    goto LABEL_127;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_120:
    result = sub_24B99FEB4(v8);
    v8 = result;
  }

  v76 = v5;
  v77 = *(v8 + 2);
  if (v77 >= 2)
  {
    while (*a3)
    {
      v5 = v77 - 1;
      v78 = *&v8[16 * v77];
      v79 = *&v8[16 * v77 + 24];
      sub_24B99E984((*a3 + 8 * v78), (*a3 + 8 * *&v8[16 * v77 + 16]), (*a3 + 8 * v79), v7);
      if (v76)
      {
      }

      if (v79 < v78)
      {
        goto LABEL_114;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_24B99FEB4(v8);
      }

      if (v77 - 2 >= *(v8 + 2))
      {
        goto LABEL_115;
      }

      v80 = &v8[16 * v77];
      *v80 = v78;
      *(v80 + 1) = v79;
      result = sub_24B99FE28(v5);
      v77 = *(v8 + 2);
      if (v77 <= 1)
      {
      }
    }

    goto LABEL_124;
  }
}

uint64_t sub_24B99C934(unint64_t *a1, uint64_t a2, void *a3, unint64_t a4)
{
  v5 = v4;
  v141 = a1;
  v8 = type metadata accessor for FocusConfigurationAction(0);
  v150 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v143 = &v138 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v155 = &v138 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v157 = &v138 - v14;
  result = MEMORY[0x28223BE20](v13);
  v156 = &v138 - v16;
  v17 = a3[1];
  if (v17 >= 1)
  {
    v139 = a4;
    v18 = 0;
    v19 = MEMORY[0x277D84F90];
    v158 = v8;
    v142 = a3;
    while (1)
    {
      if (v18 + 1 >= v17)
      {
        v40 = v18 + 1;
      }

      else
      {
        v152 = v17;
        v20 = *(v150 + 72);
        v21 = *a3 + v20 * (v18 + 1);
        v22 = *a3;
        v153 = type metadata accessor for FocusConfigurationAction;
        v154 = v22;
        v23 = v156;
        sub_24B9A1C8C(v21, v156, type metadata accessor for FocusConfigurationAction);
        sub_24B9A1C8C(v22 + v20 * v18, v157, type metadata accessor for FocusConfigurationAction);
        v24 = (v23 + *(v8 + 32));
        v26 = *v24;
        v25 = v24[1];

        v27 = _s15FocusSettingsUI12InstalledAppC16bundleIdentifierACSS_tcfC_0(v26, v25);
        v29 = v27[3];
        v28 = v27[4];

        v161 = v29;
        v162 = v28;
        v30 = v157;
        v31 = (v157 + *(v8 + 32));
        v33 = *v31;
        v32 = v31[1];

        v34 = _s15FocusSettingsUI12InstalledAppC16bundleIdentifierACSS_tcfC_0(v33, v32);
        v35 = v18;
        v36 = v34[3];
        v37 = v34[4];

        v159 = v36;
        v160 = v37;
        v147 = sub_24B8F5E3C();
        v149 = sub_24BAAA43C();

        a4 = v153;
        sub_24B9A1CF4(v30, v153);
        result = sub_24B9A1CF4(v156, a4);
        v140 = v35;
        v38 = v35 + 2;
        v153 = v20;
        v39 = v154 + v20 * (v35 + 2);
        v148 = v19;
        while (1)
        {
          v40 = v152;
          if (v152 == v38)
          {
            break;
          }

          LODWORD(v154) = v149 == -1;
          a4 = type metadata accessor for FocusConfigurationAction;
          v41 = v156;
          sub_24B9A1C8C(v39, v156, type metadata accessor for FocusConfigurationAction);
          v151 = v5;
          v42 = v157;
          sub_24B9A1C8C(v21, v157, type metadata accessor for FocusConfigurationAction);
          v43 = v158;
          v44 = (v41 + *(v158 + 32));
          v46 = *v44;
          v45 = v44[1];

          v47 = _s15FocusSettingsUI12InstalledAppC16bundleIdentifierACSS_tcfC_0(v46, v45);
          v48 = v47[3];
          v49 = v47[4];

          v161 = v48;
          v162 = v49;
          v50 = (v42 + *(v43 + 32));
          v52 = *v50;
          v51 = v50[1];

          v53 = _s15FocusSettingsUI12InstalledAppC16bundleIdentifierACSS_tcfC_0(v52, v51);
          v54 = v53[3];
          v55 = v53[4];

          v159 = v54;
          v160 = v55;
          v56 = sub_24BAAA43C();

          v57 = v42;
          v5 = v151;
          sub_24B9A1CF4(v57, type metadata accessor for FocusConfigurationAction);
          result = sub_24B9A1CF4(v41, type metadata accessor for FocusConfigurationAction);
          v19 = v148;
          ++v38;
          v39 += v153;
          v21 += v153;
          if (((v154 ^ (v56 != -1)) & 1) == 0)
          {
            v40 = v38 - 1;
            break;
          }
        }

        v8 = v158;
        a3 = v142;
        v18 = v140;
        if (v149 == -1)
        {
          if (v40 < v140)
          {
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
            return result;
          }

          if (v140 < v40)
          {
            v58 = v153 * (v40 - 1);
            v59 = v40 * v153;
            v152 = v40;
            v60 = v40;
            v61 = v140;
            v62 = v140 * v153;
            do
            {
              if (v61 != --v60)
              {
                v63 = *v142;
                if (!*v142)
                {
                  goto LABEL_131;
                }

                a4 = v63 + v62;
                sub_24B9A1D54(v63 + v62, v143, type metadata accessor for FocusConfigurationAction);
                if (v62 < v58 || a4 >= v63 + v59)
                {
                  swift_arrayInitWithTakeFrontToBack();
                }

                else if (v62 != v58)
                {
                  swift_arrayInitWithTakeBackToFront();
                }

                result = sub_24B9A1D54(v143, v63 + v58, type metadata accessor for FocusConfigurationAction);
                v8 = v158;
              }

              ++v61;
              v58 -= v153;
              v59 -= v153;
              v62 += v153;
            }

            while (v61 < v60);
            a3 = v142;
            v18 = v140;
            v40 = v152;
          }
        }
      }

      v64 = a3[1];
      if (v40 >= v64)
      {
        goto LABEL_32;
      }

      if (__OFSUB__(v40, v18))
      {
        goto LABEL_123;
      }

      if (v40 - v18 >= v139)
      {
        goto LABEL_32;
      }

      if (__OFADD__(v18, v139))
      {
        goto LABEL_124;
      }

      if (v18 + v139 >= v64)
      {
        v65 = a3[1];
      }

      else
      {
        v65 = v18 + v139;
      }

      if (v65 < v18)
      {
LABEL_125:
        __break(1u);
        goto LABEL_126;
      }

      if (v40 == v65)
      {
LABEL_32:
        v66 = v40;
        if (v40 < v18)
        {
          goto LABEL_122;
        }
      }

      else
      {
        v148 = v19;
        v151 = v5;
        v112 = *a3;
        v113 = *(v150 + 72);
        v114 = *a3 + v113 * (v40 - 1);
        v153 = -v113;
        v140 = v18;
        v115 = v18 - v40;
        v154 = v112;
        v144 = v113;
        v145 = v65;
        a4 = v112 + v40 * v113;
        do
        {
          v152 = v40;
          v146 = a4;
          v147 = v115;
          v149 = v114;
          v116 = v114;
          while (1)
          {
            v117 = v156;
            sub_24B9A1C8C(a4, v156, type metadata accessor for FocusConfigurationAction);
            v118 = v157;
            sub_24B9A1C8C(v116, v157, type metadata accessor for FocusConfigurationAction);
            v119 = (v117 + *(v8 + 32));
            v121 = *v119;
            v120 = v119[1];

            v122 = _s15FocusSettingsUI12InstalledAppC16bundleIdentifierACSS_tcfC_0(v121, v120);
            v123 = v122[3];
            v124 = v122[4];

            v161 = v123;
            v162 = v124;
            v125 = (v118 + *(v8 + 32));
            v127 = *v125;
            v126 = v125[1];

            v128 = _s15FocusSettingsUI12InstalledAppC16bundleIdentifierACSS_tcfC_0(v127, v126);
            v129 = v128[3];
            v130 = v128[4];

            v159 = v129;
            v160 = v130;
            sub_24B8F5E3C();
            v131 = sub_24BAAA43C();

            sub_24B9A1CF4(v118, type metadata accessor for FocusConfigurationAction);
            result = sub_24B9A1CF4(v117, type metadata accessor for FocusConfigurationAction);
            if (v131 != -1)
            {
              break;
            }

            if (!v154)
            {
              goto LABEL_128;
            }

            v132 = v155;
            sub_24B9A1D54(a4, v155, type metadata accessor for FocusConfigurationAction);
            v8 = v158;
            swift_arrayInitWithTakeFrontToBack();
            sub_24B9A1D54(v132, v116, type metadata accessor for FocusConfigurationAction);
            v116 += v153;
            a4 += v153;
            if (__CFADD__(v115++, 1))
            {
              goto LABEL_84;
            }
          }

          v8 = v158;
LABEL_84:
          v40 = v152 + 1;
          v66 = v145;
          v114 = v149 + v144;
          v115 = v147 - 1;
          a4 = v146 + v144;
        }

        while (v152 + 1 != v145);
        v5 = v151;
        a3 = v142;
        v19 = v148;
        v18 = v140;
        if (v145 < v140)
        {
          goto LABEL_122;
        }
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_24B99A39C(0, *(v19 + 2) + 1, 1, v19);
        v19 = result;
      }

      a4 = *(v19 + 2);
      v67 = *(v19 + 3);
      v68 = a4 + 1;
      if (a4 >= v67 >> 1)
      {
        result = sub_24B99A39C((v67 > 1), a4 + 1, 1, v19);
        v19 = result;
      }

      *(v19 + 2) = v68;
      v69 = &v19[16 * a4];
      *(v69 + 4) = v18;
      *(v69 + 5) = v66;
      v145 = v66;
      v70 = *v141;
      if (!*v141)
      {
        goto LABEL_132;
      }

      if (a4)
      {
        while (1)
        {
          a4 = v68 - 1;
          if (v68 >= 4)
          {
            break;
          }

          if (v68 == 3)
          {
            v71 = *(v19 + 4);
            v72 = *(v19 + 5);
            v81 = __OFSUB__(v72, v71);
            v73 = v72 - v71;
            v74 = v81;
LABEL_52:
            if (v74)
            {
              goto LABEL_111;
            }

            v87 = &v19[16 * v68];
            v89 = *v87;
            v88 = *(v87 + 1);
            v90 = __OFSUB__(v88, v89);
            v91 = v88 - v89;
            v92 = v90;
            if (v90)
            {
              goto LABEL_114;
            }

            v93 = &v19[16 * a4 + 32];
            v95 = *v93;
            v94 = *(v93 + 1);
            v81 = __OFSUB__(v94, v95);
            v96 = v94 - v95;
            if (v81)
            {
              goto LABEL_117;
            }

            if (__OFADD__(v91, v96))
            {
              goto LABEL_118;
            }

            if (v91 + v96 >= v73)
            {
              if (v73 < v96)
              {
                a4 = v68 - 2;
              }

              goto LABEL_73;
            }

            goto LABEL_66;
          }

          v97 = &v19[16 * v68];
          v99 = *v97;
          v98 = *(v97 + 1);
          v81 = __OFSUB__(v98, v99);
          v91 = v98 - v99;
          v92 = v81;
LABEL_66:
          if (v92)
          {
            goto LABEL_113;
          }

          v100 = &v19[16 * a4];
          v102 = *(v100 + 4);
          v101 = *(v100 + 5);
          v81 = __OFSUB__(v101, v102);
          v103 = v101 - v102;
          if (v81)
          {
            goto LABEL_116;
          }

          if (v103 < v91)
          {
            goto LABEL_3;
          }

LABEL_73:
          v108 = a4 - 1;
          if (a4 - 1 >= v68)
          {
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
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
            goto LABEL_125;
          }

          if (!*a3)
          {
            goto LABEL_129;
          }

          v109 = *&v19[16 * v108 + 32];
          v110 = *&v19[16 * a4 + 40];
          sub_24B99EC34(*a3 + *(v150 + 72) * v109, *a3 + *(v150 + 72) * *&v19[16 * a4 + 32], *a3 + *(v150 + 72) * v110, v70);
          if (v5)
          {
          }

          if (v110 < v109)
          {
            goto LABEL_107;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v19 = sub_24B99FEB4(v19);
          }

          if (v108 >= *(v19 + 2))
          {
            goto LABEL_108;
          }

          v111 = &v19[16 * v108];
          *(v111 + 4) = v109;
          *(v111 + 5) = v110;
          v163 = v19;
          result = sub_24B99FE28(a4);
          v19 = v163;
          v68 = *(v163 + 2);
          if (v68 <= 1)
          {
            goto LABEL_3;
          }
        }

        v75 = &v19[16 * v68 + 32];
        v76 = *(v75 - 64);
        v77 = *(v75 - 56);
        v81 = __OFSUB__(v77, v76);
        v78 = v77 - v76;
        if (v81)
        {
          goto LABEL_109;
        }

        v80 = *(v75 - 48);
        v79 = *(v75 - 40);
        v81 = __OFSUB__(v79, v80);
        v73 = v79 - v80;
        v74 = v81;
        if (v81)
        {
          goto LABEL_110;
        }

        v82 = &v19[16 * v68];
        v84 = *v82;
        v83 = *(v82 + 1);
        v81 = __OFSUB__(v83, v84);
        v85 = v83 - v84;
        if (v81)
        {
          goto LABEL_112;
        }

        v81 = __OFADD__(v73, v85);
        v86 = v73 + v85;
        if (v81)
        {
          goto LABEL_115;
        }

        if (v86 >= v78)
        {
          v104 = &v19[16 * a4 + 32];
          v106 = *v104;
          v105 = *(v104 + 1);
          v81 = __OFSUB__(v105, v106);
          v107 = v105 - v106;
          if (v81)
          {
            goto LABEL_119;
          }

          if (v73 < v107)
          {
            a4 = v68 - 2;
          }

          goto LABEL_73;
        }

        goto LABEL_52;
      }

LABEL_3:
      v17 = a3[1];
      v18 = v145;
      if (v145 >= v17)
      {
        goto LABEL_95;
      }
    }
  }

  v19 = MEMORY[0x277D84F90];
LABEL_95:
  a4 = *v141;
  if (!*v141)
  {
    goto LABEL_133;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_126:
    result = sub_24B99FEB4(v19);
    v19 = result;
  }

  v163 = v19;
  v134 = *(v19 + 2);
  if (v134 >= 2)
  {
    while (*a3)
    {
      v135 = *&v19[16 * v134];
      v136 = *&v19[16 * v134 + 24];
      sub_24B99EC34(*a3 + *(v150 + 72) * v135, *a3 + *(v150 + 72) * *&v19[16 * v134 + 16], *a3 + *(v150 + 72) * v136, a4);
      if (v5)
      {
      }

      if (v136 < v135)
      {
        goto LABEL_120;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_24B99FEB4(v19);
      }

      if (v134 - 2 >= *(v19 + 2))
      {
        goto LABEL_121;
      }

      v137 = &v19[16 * v134];
      *v137 = v135;
      *(v137 + 1) = v136;
      v163 = v19;
      result = sub_24B99FE28(v134 - 1);
      v19 = v163;
      v134 = *(v163 + 2);
      if (v134 <= 1)
      {
      }
    }

    goto LABEL_130;
  }
}

uint64_t sub_24B99D47C(unint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = v4;
  v124 = a1;
  v8 = type metadata accessor for FocusSystemConfigurationAction(0);
  v130 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v120 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v135 = &v120 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v137 = &v120 - v15;
  result = MEMORY[0x28223BE20](v14);
  v136 = &v120 - v17;
  v132 = a3;
  v18 = *(a3 + 8);
  if (v18 >= 1)
  {
    v138 = result;
    v120 = a4;
    v19 = 0;
    v20 = MEMORY[0x277D84F90];
    v121 = v11;
    while (1)
    {
      v21 = v19;
      v22 = v19 + 1;
      v131 = v20;
      if (v19 + 1 >= v18)
      {
        v34 = v19 + 1;
      }

      else
      {
        v133 = v18;
        v123 = v5;
        v23 = *(v130 + 72);
        a3 = *v132 + v23 * v22;
        v128 = *v132;
        v24 = v128;
        v25 = v136;
        sub_24B9A1C8C(v128 + v23 * v22, v136, type metadata accessor for FocusSystemConfigurationAction);
        v26 = v137;
        sub_24B9A1C8C(v24 + v23 * v19, v137, type metadata accessor for FocusSystemConfigurationAction);
        v27 = *(v138 + 28);
        v28 = *(v25 + v27 + 8);
        v141 = *(v25 + v27);
        v142 = v28;
        v29 = (v26 + v27);
        v31 = *v29;
        v30 = v29[1];
        v139 = v31;
        v140 = v30;
        sub_24B8F5E3C();
        v129 = sub_24BAAA43C();
        sub_24B9A1CF4(v26, type metadata accessor for FocusSystemConfigurationAction);
        result = sub_24B9A1CF4(v25, type metadata accessor for FocusSystemConfigurationAction);
        v122 = v19;
        v32 = v19 + 2;
        v134 = v23;
        v33 = v128 + v23 * (v19 + 2);
        while (1)
        {
          v34 = v133;
          if (v133 == v32)
          {
            break;
          }

          v35 = v129 == -1;
          v36 = v136;
          sub_24B9A1C8C(v33, v136, type metadata accessor for FocusSystemConfigurationAction);
          v37 = v137;
          sub_24B9A1C8C(a3, v137, type metadata accessor for FocusSystemConfigurationAction);
          v38 = *(v138 + 28);
          v39 = *(v36 + v38 + 8);
          v141 = *(v36 + v38);
          v142 = v39;
          v40 = (v37 + v38);
          v42 = *v40;
          v41 = v40[1];
          v139 = v42;
          v140 = v41;
          v43 = sub_24BAAA43C();
          sub_24B9A1CF4(v37, type metadata accessor for FocusSystemConfigurationAction);
          result = sub_24B9A1CF4(v36, type metadata accessor for FocusSystemConfigurationAction);
          v44 = v35 ^ (v43 != -1);
          v20 = v131;
          ++v32;
          v33 += v134;
          a3 += v134;
          if ((v44 & 1) == 0)
          {
            v34 = v32 - 1;
            break;
          }
        }

        v21 = v122;
        v5 = v123;
        v45 = v121;
        if (v129 == -1)
        {
          if (v34 < v122)
          {
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
            return result;
          }

          if (v122 < v34)
          {
            v46 = v134 * (v34 - 1);
            v47 = v34 * v134;
            v48 = v34;
            v49 = v34;
            v50 = v122;
            v51 = v122 * v134;
            do
            {
              if (v50 != --v49)
              {
                v52 = *v132;
                if (!*v132)
                {
                  goto LABEL_130;
                }

                a3 = v52 + v51;
                sub_24B9A1D54(v52 + v51, v45, type metadata accessor for FocusSystemConfigurationAction);
                if (v51 < v46 || a3 >= v52 + v47)
                {
                  swift_arrayInitWithTakeFrontToBack();
                }

                else if (v51 != v46)
                {
                  swift_arrayInitWithTakeBackToFront();
                }

                result = sub_24B9A1D54(v45, v52 + v46, type metadata accessor for FocusSystemConfigurationAction);
                v20 = v131;
              }

              ++v50;
              v46 -= v134;
              v47 -= v134;
              v51 += v134;
            }

            while (v50 < v49);
            v21 = v122;
            v5 = v123;
            v34 = v48;
          }
        }
      }

      v53 = v132[1];
      if (v34 >= v53)
      {
        goto LABEL_32;
      }

      if (__OFSUB__(v34, v21))
      {
        goto LABEL_122;
      }

      if (v34 - v21 >= v120)
      {
        goto LABEL_32;
      }

      if (__OFADD__(v21, v120))
      {
        goto LABEL_123;
      }

      if (v21 + v120 >= v53)
      {
        v54 = v132[1];
      }

      else
      {
        v54 = v21 + v120;
      }

      if (v54 < v21)
      {
LABEL_124:
        __break(1u);
        goto LABEL_125;
      }

      if (v34 == v54)
      {
LABEL_32:
        v19 = v34;
        if (v34 < v21)
        {
          goto LABEL_121;
        }
      }

      else
      {
        v122 = v21;
        v123 = v5;
        v100 = *(v130 + 72);
        v101 = *v132 + v100 * (v34 - 1);
        v102 = -v100;
        v103 = v21 - v34;
        v134 = *v132;
        v125 = v100;
        v126 = v54;
        a3 = v134 + v34 * v100;
        do
        {
          v133 = v34;
          v127 = a3;
          v128 = v103;
          v129 = v101;
          v104 = v101;
          v105 = v138;
          do
          {
            v106 = v136;
            sub_24B9A1C8C(a3, v136, type metadata accessor for FocusSystemConfigurationAction);
            v107 = v137;
            sub_24B9A1C8C(v104, v137, type metadata accessor for FocusSystemConfigurationAction);
            v108 = *(v105 + 28);
            v109 = *(v106 + v108 + 8);
            v141 = *(v106 + v108);
            v142 = v109;
            v110 = (v107 + v108);
            v112 = *v110;
            v111 = v110[1];
            v139 = v112;
            v140 = v111;
            sub_24B8F5E3C();
            v113 = sub_24BAAA43C();
            sub_24B9A1CF4(v107, type metadata accessor for FocusSystemConfigurationAction);
            result = sub_24B9A1CF4(v106, type metadata accessor for FocusSystemConfigurationAction);
            if (v113 != -1)
            {
              break;
            }

            if (!v134)
            {
              goto LABEL_127;
            }

            v114 = v135;
            sub_24B9A1D54(a3, v135, type metadata accessor for FocusSystemConfigurationAction);
            v105 = v138;
            swift_arrayInitWithTakeFrontToBack();
            sub_24B9A1D54(v114, v104, type metadata accessor for FocusSystemConfigurationAction);
            v104 += v102;
            a3 += v102;
          }

          while (!__CFADD__(v103++, 1));
          v34 = v133 + 1;
          v19 = v126;
          v101 = v129 + v125;
          v103 = v128 - 1;
          a3 = v127 + v125;
        }

        while (v133 + 1 != v126);
        v21 = v122;
        v5 = v123;
        v20 = v131;
        if (v126 < v122)
        {
          goto LABEL_121;
        }
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_24B99A39C(0, *(v20 + 2) + 1, 1, v20);
        v20 = result;
      }

      a3 = *(v20 + 2);
      v55 = *(v20 + 3);
      v56 = a3 + 1;
      if (a3 >= v55 >> 1)
      {
        result = sub_24B99A39C((v55 > 1), a3 + 1, 1, v20);
        v20 = result;
      }

      *(v20 + 2) = v56;
      v57 = &v20[16 * a3];
      *(v57 + 4) = v21;
      *(v57 + 5) = v19;
      v58 = *v124;
      if (!*v124)
      {
        goto LABEL_131;
      }

      if (a3)
      {
        while (1)
        {
          a3 = v56 - 1;
          if (v56 >= 4)
          {
            break;
          }

          if (v56 == 3)
          {
            v59 = *(v20 + 4);
            v60 = *(v20 + 5);
            v69 = __OFSUB__(v60, v59);
            v61 = v60 - v59;
            v62 = v69;
LABEL_52:
            if (v62)
            {
              goto LABEL_110;
            }

            v75 = &v20[16 * v56];
            v77 = *v75;
            v76 = *(v75 + 1);
            v78 = __OFSUB__(v76, v77);
            v79 = v76 - v77;
            v80 = v78;
            if (v78)
            {
              goto LABEL_113;
            }

            v81 = &v20[16 * a3 + 32];
            v83 = *v81;
            v82 = *(v81 + 1);
            v69 = __OFSUB__(v82, v83);
            v84 = v82 - v83;
            if (v69)
            {
              goto LABEL_116;
            }

            if (__OFADD__(v79, v84))
            {
              goto LABEL_117;
            }

            if (v79 + v84 >= v61)
            {
              if (v61 < v84)
              {
                a3 = v56 - 2;
              }

              goto LABEL_73;
            }

            goto LABEL_66;
          }

          v85 = &v20[16 * v56];
          v87 = *v85;
          v86 = *(v85 + 1);
          v69 = __OFSUB__(v86, v87);
          v79 = v86 - v87;
          v80 = v69;
LABEL_66:
          if (v80)
          {
            goto LABEL_112;
          }

          v88 = &v20[16 * a3];
          v90 = *(v88 + 4);
          v89 = *(v88 + 5);
          v69 = __OFSUB__(v89, v90);
          v91 = v89 - v90;
          if (v69)
          {
            goto LABEL_115;
          }

          if (v91 < v79)
          {
            goto LABEL_3;
          }

LABEL_73:
          v96 = a3 - 1;
          if (a3 - 1 >= v56)
          {
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
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
            goto LABEL_124;
          }

          if (!*v132)
          {
            goto LABEL_128;
          }

          v97 = *&v20[16 * v96 + 32];
          v98 = *&v20[16 * a3 + 40];
          sub_24B99F278(*v132 + *(v130 + 72) * v97, *v132 + *(v130 + 72) * *&v20[16 * a3 + 32], *v132 + *(v130 + 72) * v98, v58);
          if (v5)
          {
          }

          if (v98 < v97)
          {
            goto LABEL_106;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v20 = sub_24B99FEB4(v20);
          }

          if (v96 >= *(v20 + 2))
          {
            goto LABEL_107;
          }

          v99 = &v20[16 * v96];
          *(v99 + 4) = v97;
          *(v99 + 5) = v98;
          v143 = v20;
          result = sub_24B99FE28(a3);
          v20 = v143;
          v56 = *(v143 + 2);
          if (v56 <= 1)
          {
            goto LABEL_3;
          }
        }

        v63 = &v20[16 * v56 + 32];
        v64 = *(v63 - 64);
        v65 = *(v63 - 56);
        v69 = __OFSUB__(v65, v64);
        v66 = v65 - v64;
        if (v69)
        {
          goto LABEL_108;
        }

        v68 = *(v63 - 48);
        v67 = *(v63 - 40);
        v69 = __OFSUB__(v67, v68);
        v61 = v67 - v68;
        v62 = v69;
        if (v69)
        {
          goto LABEL_109;
        }

        v70 = &v20[16 * v56];
        v72 = *v70;
        v71 = *(v70 + 1);
        v69 = __OFSUB__(v71, v72);
        v73 = v71 - v72;
        if (v69)
        {
          goto LABEL_111;
        }

        v69 = __OFADD__(v61, v73);
        v74 = v61 + v73;
        if (v69)
        {
          goto LABEL_114;
        }

        if (v74 >= v66)
        {
          v92 = &v20[16 * a3 + 32];
          v94 = *v92;
          v93 = *(v92 + 1);
          v69 = __OFSUB__(v93, v94);
          v95 = v93 - v94;
          if (v69)
          {
            goto LABEL_118;
          }

          if (v61 < v95)
          {
            a3 = v56 - 2;
          }

          goto LABEL_73;
        }

        goto LABEL_52;
      }

LABEL_3:
      v18 = v132[1];
      if (v19 >= v18)
      {
        goto LABEL_94;
      }
    }
  }

  v20 = MEMORY[0x277D84F90];
LABEL_94:
  a3 = *v124;
  if (!*v124)
  {
    goto LABEL_132;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_125:
    result = sub_24B99FEB4(v20);
    v20 = result;
  }

  v143 = v20;
  v116 = *(v20 + 2);
  if (v116 >= 2)
  {
    while (*v132)
    {
      v117 = *&v20[16 * v116];
      v118 = *&v20[16 * v116 + 24];
      sub_24B99F278(*v132 + *(v130 + 72) * v117, *v132 + *(v130 + 72) * *&v20[16 * v116 + 16], *v132 + *(v130 + 72) * v118, a3);
      if (v5)
      {
      }

      if (v118 < v117)
      {
        goto LABEL_119;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_24B99FEB4(v20);
      }

      if (v116 - 2 >= *(v20 + 2))
      {
        goto LABEL_120;
      }

      v119 = &v20[16 * v116];
      *v119 = v117;
      *(v119 + 1) = v118;
      v143 = v20;
      result = sub_24B99FE28(v116 - 1);
      v20 = v143;
      v116 = *(v143 + 2);
      if (v116 <= 1)
      {
      }
    }

    goto LABEL_129;
  }
}

uint64_t sub_24B99DE4C(unint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = v4;
  v130 = a1;
  v8 = type metadata accessor for FocusSystemConfigurationAction(0);
  v139 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v132 = &v128 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v144 = &v128 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v147 = &v128 - v14;
  result = MEMORY[0x28223BE20](v13);
  v146 = &v128 - v16;
  v140 = a3;
  v17 = *(a3 + 8);
  if (v17 >= 1)
  {
    v145 = result;
    v128 = a4;
    v18 = 0;
    v19 = MEMORY[0x277D84F90];
    while (1)
    {
      v20 = v18;
      if (v18 + 1 >= v17)
      {
        v38 = v18 + 1;
      }

      else
      {
        v141 = v17;
        v129 = v5;
        v21 = *(v139 + 72);
        v22 = *v140 + v21 * (v18 + 1);
        v136 = *v140;
        v23 = v136;
        v148 = type metadata accessor for FocusSystemConfigurationAction;
        v24 = v22;
        v25 = v146;
        sub_24B9A1C8C(v22, v146, type metadata accessor for FocusSystemConfigurationAction);
        v26 = v147;
        sub_24B9A1C8C(v23 + v21 * v20, v147, type metadata accessor for FocusSystemConfigurationAction);
        v131 = v20;
        v27 = v145;
        v28 = [*(v25 + *(v145 + 32)) title];
        v29 = sub_24BAAA01C();
        v31 = v30;

        v151 = v29;
        v152 = v31;
        v32 = [*(v26 + *(v27 + 32)) title];
        v33 = sub_24BAAA01C();
        v35 = v34;

        v149 = v33;
        v150 = v35;
        v137 = sub_24B8F5E3C();
        v142 = sub_24BAAA43C();

        a3 = v148;
        sub_24B9A1CF4(v26, v148);
        result = sub_24B9A1CF4(v25, a3);
        v36 = v131 + 2;
        v143 = v21;
        v37 = v136 + v21 * (v131 + 2);
        v138 = v19;
        while (1)
        {
          v38 = v141;
          if (v141 == v36)
          {
            break;
          }

          LODWORD(v148) = v142 == -1;
          a3 = type metadata accessor for FocusSystemConfigurationAction;
          v39 = v146;
          sub_24B9A1C8C(v37, v146, type metadata accessor for FocusSystemConfigurationAction);
          v40 = v147;
          sub_24B9A1C8C(v24, v147, type metadata accessor for FocusSystemConfigurationAction);
          v41 = v145;
          v42 = [*(v39 + *(v145 + 32)) title];
          v43 = sub_24BAAA01C();
          v45 = v44;

          v151 = v43;
          v152 = v45;
          v46 = [*(v40 + *(v41 + 32)) title];
          v47 = sub_24BAAA01C();
          v49 = v48;

          v149 = v47;
          v150 = v49;
          v50 = sub_24BAAA43C();

          v19 = v138;

          sub_24B9A1CF4(v147, type metadata accessor for FocusSystemConfigurationAction);
          result = sub_24B9A1CF4(v146, type metadata accessor for FocusSystemConfigurationAction);
          ++v36;
          v37 += v143;
          v24 += v143;
          if (((v148 ^ (v50 != -1)) & 1) == 0)
          {
            v38 = v36 - 1;
            break;
          }
        }

        v5 = v129;
        v20 = v131;
        if (v142 == -1)
        {
          if (v38 < v131)
          {
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
            return result;
          }

          if (v131 < v38)
          {
            v51 = v143 * (v38 - 1);
            v52 = v38 * v143;
            v53 = v38;
            v54 = v131;
            v55 = v131 * v143;
            do
            {
              if (v54 != --v53)
              {
                v56 = *v140;
                if (!*v140)
                {
                  goto LABEL_131;
                }

                a3 = v56 + v55;
                sub_24B9A1D54(v56 + v55, v132, type metadata accessor for FocusSystemConfigurationAction);
                if (v55 < v51 || a3 >= v56 + v52)
                {
                  swift_arrayInitWithTakeFrontToBack();
                }

                else if (v55 != v51)
                {
                  swift_arrayInitWithTakeBackToFront();
                }

                result = sub_24B9A1D54(v132, v56 + v51, type metadata accessor for FocusSystemConfigurationAction);
              }

              ++v54;
              v51 -= v143;
              v52 -= v143;
              v55 += v143;
            }

            while (v54 < v53);
            v5 = v129;
            v20 = v131;
          }
        }
      }

      v57 = v140[1];
      if (v38 >= v57)
      {
        goto LABEL_32;
      }

      if (__OFSUB__(v38, v20))
      {
        goto LABEL_123;
      }

      if (v38 - v20 >= v128)
      {
        goto LABEL_32;
      }

      if (__OFADD__(v20, v128))
      {
        goto LABEL_124;
      }

      if (v20 + v128 >= v57)
      {
        v58 = v140[1];
      }

      else
      {
        v58 = v20 + v128;
      }

      if (v58 < v20)
      {
LABEL_125:
        __break(1u);
        goto LABEL_126;
      }

      if (v38 == v58)
      {
LABEL_32:
        v18 = v38;
        if (v38 < v20)
        {
          goto LABEL_122;
        }
      }

      else
      {
        v138 = v19;
        v129 = v5;
        v104 = *v140;
        v105 = *(v139 + 72);
        v106 = *v140 + v105 * (v38 - 1);
        v142 = -v105;
        v131 = v20;
        v107 = (v20 - v38);
        v141 = v38;
        v143 = v104;
        v133 = v105;
        v134 = v58;
        a3 = v104 + v38 * v105;
        v108 = v145;
        do
        {
          v135 = a3;
          v136 = v107;
          v109 = v107;
          v137 = v106;
          while (1)
          {
            v148 = v109;
            v110 = v146;
            sub_24B9A1C8C(a3, v146, type metadata accessor for FocusSystemConfigurationAction);
            v111 = v147;
            sub_24B9A1C8C(v106, v147, type metadata accessor for FocusSystemConfigurationAction);
            v112 = [*(v110 + *(v108 + 32)) title];
            v113 = sub_24BAAA01C();
            v115 = v114;

            v151 = v113;
            v152 = v115;
            v116 = [*(v111 + *(v108 + 32)) title];
            v117 = sub_24BAAA01C();
            v119 = v118;

            v149 = v117;
            v150 = v119;
            sub_24B8F5E3C();
            v120 = sub_24BAAA43C();

            sub_24B9A1CF4(v111, type metadata accessor for FocusSystemConfigurationAction);
            result = sub_24B9A1CF4(v110, type metadata accessor for FocusSystemConfigurationAction);
            if (v120 != -1)
            {
              break;
            }

            v121 = v148;
            if (!v143)
            {
              goto LABEL_128;
            }

            v122 = v144;
            sub_24B9A1D54(a3, v144, type metadata accessor for FocusSystemConfigurationAction);
            v108 = v145;
            swift_arrayInitWithTakeFrontToBack();
            sub_24B9A1D54(v122, v106, type metadata accessor for FocusSystemConfigurationAction);
            v106 += v142;
            a3 += v142;
            v123 = __CFADD__(v121, 1);
            v109 = (v121 + 1);
            if (v123)
            {
              goto LABEL_84;
            }
          }

          v108 = v145;
LABEL_84:
          v18 = v134;
          v106 = v137 + v133;
          v107 = (v136 - 1);
          a3 = v135 + v133;
          ++v141;
        }

        while (v141 != v134);
        v5 = v129;
        v19 = v138;
        v20 = v131;
        if (v134 < v131)
        {
          goto LABEL_122;
        }
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_24B99A39C(0, *(v19 + 2) + 1, 1, v19);
        v19 = result;
      }

      a3 = *(v19 + 2);
      v59 = *(v19 + 3);
      v60 = a3 + 1;
      if (a3 >= v59 >> 1)
      {
        result = sub_24B99A39C((v59 > 1), a3 + 1, 1, v19);
        v19 = result;
      }

      *(v19 + 2) = v60;
      v61 = &v19[16 * a3];
      *(v61 + 4) = v20;
      *(v61 + 5) = v18;
      v62 = *v130;
      if (!*v130)
      {
        goto LABEL_132;
      }

      if (a3)
      {
        while (1)
        {
          a3 = v60 - 1;
          if (v60 >= 4)
          {
            break;
          }

          if (v60 == 3)
          {
            v63 = *(v19 + 4);
            v64 = *(v19 + 5);
            v73 = __OFSUB__(v64, v63);
            v65 = v64 - v63;
            v66 = v73;
LABEL_52:
            if (v66)
            {
              goto LABEL_111;
            }

            v79 = &v19[16 * v60];
            v81 = *v79;
            v80 = *(v79 + 1);
            v82 = __OFSUB__(v80, v81);
            v83 = v80 - v81;
            v84 = v82;
            if (v82)
            {
              goto LABEL_114;
            }

            v85 = &v19[16 * a3 + 32];
            v87 = *v85;
            v86 = *(v85 + 1);
            v73 = __OFSUB__(v86, v87);
            v88 = v86 - v87;
            if (v73)
            {
              goto LABEL_117;
            }

            if (__OFADD__(v83, v88))
            {
              goto LABEL_118;
            }

            if (v83 + v88 >= v65)
            {
              if (v65 < v88)
              {
                a3 = v60 - 2;
              }

              goto LABEL_73;
            }

            goto LABEL_66;
          }

          v89 = &v19[16 * v60];
          v91 = *v89;
          v90 = *(v89 + 1);
          v73 = __OFSUB__(v90, v91);
          v83 = v90 - v91;
          v84 = v73;
LABEL_66:
          if (v84)
          {
            goto LABEL_113;
          }

          v92 = &v19[16 * a3];
          v94 = *(v92 + 4);
          v93 = *(v92 + 5);
          v73 = __OFSUB__(v93, v94);
          v95 = v93 - v94;
          if (v73)
          {
            goto LABEL_116;
          }

          if (v95 < v83)
          {
            goto LABEL_3;
          }

LABEL_73:
          v100 = a3 - 1;
          if (a3 - 1 >= v60)
          {
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
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
            goto LABEL_125;
          }

          if (!*v140)
          {
            goto LABEL_129;
          }

          v101 = *&v19[16 * v100 + 32];
          v102 = *&v19[16 * a3 + 40];
          sub_24B99F7F4(*v140 + *(v139 + 72) * v101, *v140 + *(v139 + 72) * *&v19[16 * a3 + 32], *v140 + *(v139 + 72) * v102, v62);
          if (v5)
          {
          }

          if (v102 < v101)
          {
            goto LABEL_107;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v19 = sub_24B99FEB4(v19);
          }

          if (v100 >= *(v19 + 2))
          {
            goto LABEL_108;
          }

          v103 = &v19[16 * v100];
          *(v103 + 4) = v101;
          *(v103 + 5) = v102;
          v153 = v19;
          result = sub_24B99FE28(a3);
          v19 = v153;
          v60 = *(v153 + 2);
          if (v60 <= 1)
          {
            goto LABEL_3;
          }
        }

        v67 = &v19[16 * v60 + 32];
        v68 = *(v67 - 64);
        v69 = *(v67 - 56);
        v73 = __OFSUB__(v69, v68);
        v70 = v69 - v68;
        if (v73)
        {
          goto LABEL_109;
        }

        v72 = *(v67 - 48);
        v71 = *(v67 - 40);
        v73 = __OFSUB__(v71, v72);
        v65 = v71 - v72;
        v66 = v73;
        if (v73)
        {
          goto LABEL_110;
        }

        v74 = &v19[16 * v60];
        v76 = *v74;
        v75 = *(v74 + 1);
        v73 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v73)
        {
          goto LABEL_112;
        }

        v73 = __OFADD__(v65, v77);
        v78 = v65 + v77;
        if (v73)
        {
          goto LABEL_115;
        }

        if (v78 >= v70)
        {
          v96 = &v19[16 * a3 + 32];
          v98 = *v96;
          v97 = *(v96 + 1);
          v73 = __OFSUB__(v97, v98);
          v99 = v97 - v98;
          if (v73)
          {
            goto LABEL_119;
          }

          if (v65 < v99)
          {
            a3 = v60 - 2;
          }

          goto LABEL_73;
        }

        goto LABEL_52;
      }

LABEL_3:
      v17 = v140[1];
      if (v18 >= v17)
      {
        goto LABEL_95;
      }
    }
  }

  v19 = MEMORY[0x277D84F90];
LABEL_95:
  a3 = *v130;
  if (!*v130)
  {
    goto LABEL_133;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_126:
    result = sub_24B99FEB4(v19);
    v19 = result;
  }

  v153 = v19;
  v124 = *(v19 + 2);
  if (v124 >= 2)
  {
    while (*v140)
    {
      v125 = *&v19[16 * v124];
      v126 = *&v19[16 * v124 + 24];
      sub_24B99F7F4(*v140 + *(v139 + 72) * v125, *v140 + *(v139 + 72) * *&v19[16 * v124 + 16], *v140 + *(v139 + 72) * v126, a3);
      if (v5)
      {
      }

      if (v126 < v125)
      {
        goto LABEL_120;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_24B99FEB4(v19);
      }

      if (v124 - 2 >= *(v19 + 2))
      {
        goto LABEL_121;
      }

      v127 = &v19[16 * v124];
      *v127 = v125;
      *(v127 + 1) = v126;
      v153 = v19;
      result = sub_24B99FE28(v124 - 1);
      v19 = v153;
      v124 = *(v153 + 2);
      if (v124 <= 1)
      {
      }
    }

    goto LABEL_130;
  }
}

uint64_t sub_24B99E984(char *__src, char *__dst, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = __dst - __src;
  v9 = __dst - __src + 7;
  if (__dst - __src >= 0)
  {
    v9 = __dst - __src;
  }

  v10 = v9 >> 3;
  v11 = a3 - __dst;
  v12 = a3 - __dst + 7;
  if (a3 - __dst >= 0)
  {
    v12 = a3 - __dst;
  }

  v13 = v12 >> 3;
  if (v10 >= v12 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v13] <= a4)
    {
      memmove(a4, __dst, 8 * v13);
    }

    v14 = &v4[8 * v13];
    if (v11 >= 8 && v6 > v7)
    {
      sub_24B8F5E3C();
      do
      {
        v21 = v6;
        v17 = v6 - 8;
        v5 -= 8;
        v18 = v14;
        while (1)
        {
          v19 = v5 + 8;
          v18 -= 8;
          v6 = v17;
          if (sub_24BAAA43C() == -1)
          {
            break;
          }

          if (v19 != v14)
          {
            *v5 = *v18;
          }

          v5 -= 8;
          v14 = v18;
          v17 = v6;
          if (v18 <= v4)
          {
            v14 = v18;
            v6 = v21;
            goto LABEL_39;
          }
        }

        if (v19 != v21)
        {
          *v5 = *v6;
        }
      }

      while (v14 > v4 && v6 > v7);
    }
  }

  else
  {
    if (a4 != __src || &__src[8 * v10] <= a4)
    {
      memmove(a4, __src, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 >= 8 && v6 < v5)
    {
      sub_24B8F5E3C();
      while (sub_24BAAA43C() == -1)
      {
        v15 = v6;
        v16 = v7 == v6;
        v6 += 8;
        if (!v16)
        {
          goto LABEL_14;
        }

LABEL_15:
        v7 += 8;
        if (v4 >= v14 || v6 >= v5)
        {
          goto LABEL_37;
        }
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 8;
      if (v16)
      {
        goto LABEL_15;
      }

LABEL_14:
      *v7 = *v15;
      goto LABEL_15;
    }

LABEL_37:
    v6 = v7;
  }

LABEL_39:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * ((v14 - v4) / 8));
  }

  return 1;
}

uint64_t sub_24B99EC34(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v72 = a3;
  v71 = type metadata accessor for FocusConfigurationAction(0);
  v7 = MEMORY[0x28223BE20](v71);
  v70 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v7);
  v69 = &v62 - v10;
  v12 = *(v11 + 72);
  if (!v12)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v12 == -1)
  {
    goto LABEL_62;
  }

  v13 = v72 - a2;
  if (v72 - a2 == 0x8000000000000000 && v12 == -1)
  {
    goto LABEL_63;
  }

  v14 = (a2 - a1) / v12;
  v79 = a1;
  v78 = a4;
  if (v14 >= v13 / v12)
  {
    v16 = v13 / v12 * v12;
    if (a4 < a2 || a2 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v36 = a4 + v16;
    if (v16 >= 1)
    {
      v37 = -v12;
      v38 = v36;
      v65 = -v12;
      v66 = a4;
      v64 = a1;
      while (2)
      {
        while (1)
        {
          v62 = v36;
          v39 = a2;
          v67 = a2;
          v68 = a2 + v37;
          while (1)
          {
            v41 = v72;
            if (v39 <= a1)
            {
              v79 = v39;
              v77 = v62;
              goto LABEL_60;
            }

            v63 = v36;
            v72 += v37;
            v42 = v38 + v37;
            v43 = v69;
            sub_24B9A1C8C(v42, v69, type metadata accessor for FocusConfigurationAction);
            v44 = v70;
            sub_24B9A1C8C(v68, v70, type metadata accessor for FocusConfigurationAction);
            v45 = v71;
            v46 = (v43 + *(v71 + 32));
            v48 = *v46;
            v47 = v46[1];

            v49 = _s15FocusSettingsUI12InstalledAppC16bundleIdentifierACSS_tcfC_0(v48, v47);
            v50 = v49[3];
            v51 = v49[4];

            v75 = v50;
            v76 = v51;
            v52 = (v44 + *(v45 + 32));
            v54 = *v52;
            v53 = v52[1];

            v55 = _s15FocusSettingsUI12InstalledAppC16bundleIdentifierACSS_tcfC_0(v54, v53);
            v56 = v55[3];
            v57 = v55[4];

            v73 = v56;
            v74 = v57;
            sub_24B8F5E3C();
            v58 = sub_24BAAA43C();

            sub_24B9A1CF4(v44, type metadata accessor for FocusConfigurationAction);
            sub_24B9A1CF4(v43, type metadata accessor for FocusConfigurationAction);
            if (v58 == -1)
            {
              break;
            }

            v36 = v42;
            v59 = v66;
            if (v41 < v38 || v72 >= v38)
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v64;
            }

            else
            {
              a1 = v64;
              if (v41 != v38)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v38 = v42;
            v40 = v42 > v59;
            v37 = v65;
            v39 = v67;
            if (!v40)
            {
              a2 = v67;
              goto LABEL_59;
            }
          }

          v60 = v66;
          if (v41 < v67 || v72 >= v67)
          {
            break;
          }

          v61 = v41 == v67;
          a2 = v68;
          v36 = v63;
          a1 = v64;
          v37 = v65;
          if (!v61)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v38 <= v60)
          {
            goto LABEL_59;
          }
        }

        a2 = v68;
        swift_arrayInitWithTakeFrontToBack();
        v36 = v63;
        a1 = v64;
        v37 = v65;
        if (v38 > v60)
        {
          continue;
        }

        break;
      }
    }

LABEL_59:
    v79 = a2;
    v77 = v36;
  }

  else
  {
    v15 = v14 * v12;
    if (a4 < a1 || a1 + v15 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v68 = a4 + v15;
    v77 = a4 + v15;
    if (v15 >= 1 && a2 < v72)
    {
      v67 = v12;
      do
      {
        v18 = v69;
        sub_24B9A1C8C(a2, v69, type metadata accessor for FocusConfigurationAction);
        v19 = v70;
        sub_24B9A1C8C(a4, v70, type metadata accessor for FocusConfigurationAction);
        v20 = v71;
        v21 = (v18 + *(v71 + 32));
        v23 = *v21;
        v22 = v21[1];

        v24 = _s15FocusSettingsUI12InstalledAppC16bundleIdentifierACSS_tcfC_0(v23, v22);
        v26 = v24[3];
        v25 = v24[4];

        v75 = v26;
        v76 = v25;
        v27 = (v19 + *(v20 + 32));
        v29 = *v27;
        v28 = v27[1];

        v30 = _s15FocusSettingsUI12InstalledAppC16bundleIdentifierACSS_tcfC_0(v29, v28);
        v31 = v30[3];
        v32 = v30[4];

        v73 = v31;
        v74 = v32;
        sub_24B8F5E3C();
        v33 = sub_24BAAA43C();

        sub_24B9A1CF4(v19, type metadata accessor for FocusConfigurationAction);
        sub_24B9A1CF4(v18, type metadata accessor for FocusConfigurationAction);
        if (v33 == -1)
        {
          v34 = v67;
          if (a1 < a2 || a1 >= a2 + v67)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v34;
        }

        else
        {
          v34 = v67;
          v35 = a4 + v67;
          if (a1 < a4 || a1 >= v35)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v78 = v35;
          a4 += v34;
        }

        a1 += v34;
        v79 = a1;
      }

      while (a4 < v68 && a2 < v72);
    }
  }

LABEL_60:
  sub_24B99FEC8(&v79, &v78, &v77, type metadata accessor for FocusConfigurationAction);
  return 1;
}

uint64_t sub_24B99F278(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v52 = type metadata accessor for FocusSystemConfigurationAction(0);
  v8 = MEMORY[0x28223BE20](v52);
  v51 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v50 = &v44 - v11;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_62;
  }

  v14 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_63;
  }

  v15 = (a2 - a1) / v13;
  v59 = a1;
  v58 = a4;
  if (v15 >= v14 / v13)
  {
    v17 = v14 / v13 * v13;
    if (a4 < a2 || a2 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v49 = a2;
    v27 = a4 + v17;
    if (v17 >= 1)
    {
      v28 = -v13;
      v29 = a4 + v17;
      v46 = -v13;
      v47 = a1;
      while (2)
      {
        while (1)
        {
          v44 = v27;
          v30 = v49;
          v48 = v49;
          v49 += v28;
          while (1)
          {
            if (v30 <= a1)
            {
              v59 = v30;
              v57 = v44;
              goto LABEL_60;
            }

            v32 = a3;
            v45 = v27;
            v33 = a4;
            v34 = a3 + v28;
            v35 = v29 + v28;
            v36 = v50;
            sub_24B9A1C8C(v35, v50, type metadata accessor for FocusSystemConfigurationAction);
            v37 = v51;
            sub_24B9A1C8C(v49, v51, type metadata accessor for FocusSystemConfigurationAction);
            v38 = *(v52 + 28);
            v39 = *(v36 + v38 + 8);
            v55 = *(v36 + v38);
            v56 = v39;
            v40 = (v37 + v38);
            v42 = *v40;
            v41 = v40[1];
            v53 = v42;
            v54 = v41;
            sub_24B8F5E3C();
            v43 = sub_24BAAA43C();
            sub_24B9A1CF4(v37, type metadata accessor for FocusSystemConfigurationAction);
            sub_24B9A1CF4(v36, type metadata accessor for FocusSystemConfigurationAction);
            if (v43 == -1)
            {
              break;
            }

            v27 = v35;
            a3 = v34;
            a4 = v33;
            if (v32 < v29 || v34 >= v29)
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v47;
            }

            else
            {
              a1 = v47;
              if (v32 != v29)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v29 = v35;
            v31 = v35 > a4;
            v28 = v46;
            v30 = v48;
            if (!v31)
            {
              v49 = v48;
              goto LABEL_59;
            }
          }

          a3 = v34;
          a4 = v33;
          if (v32 < v48 || v34 >= v48)
          {
            break;
          }

          v28 = v46;
          a1 = v47;
          v27 = v45;
          if (v32 != v48)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v29 <= a4)
          {
            goto LABEL_59;
          }
        }

        swift_arrayInitWithTakeFrontToBack();
        v28 = v46;
        a1 = v47;
        v27 = v45;
        if (v29 > a4)
        {
          continue;
        }

        break;
      }
    }

LABEL_59:
    v59 = v49;
    v57 = v27;
  }

  else
  {
    v16 = v15 * v13;
    if (a4 < a1 || a1 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v49 = a4 + v16;
    v57 = a4 + v16;
    if (v16 >= 1 && a2 < a3)
    {
      v19 = v51;
      do
      {
        v20 = v50;
        sub_24B9A1C8C(a2, v50, type metadata accessor for FocusSystemConfigurationAction);
        sub_24B9A1C8C(a4, v19, type metadata accessor for FocusSystemConfigurationAction);
        v21 = *(v52 + 28);
        v22 = *(v20 + v21 + 8);
        v55 = *(v20 + v21);
        v56 = v22;
        v23 = (v19 + v21);
        v25 = *v23;
        v24 = v23[1];
        v53 = v25;
        v54 = v24;
        sub_24B8F5E3C();
        v26 = sub_24BAAA43C();
        sub_24B9A1CF4(v19, type metadata accessor for FocusSystemConfigurationAction);
        sub_24B9A1CF4(v20, type metadata accessor for FocusSystemConfigurationAction);
        if (v26 == -1)
        {
          if (a1 < a2 || a1 >= a2 + v13)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 += v13;
          }

          else
          {
            if (a1 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 += v13;
          }
        }

        else
        {
          if (a1 < a4 || a1 >= a4 + v13)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v58 = a4 + v13;
          a4 += v13;
        }

        a1 += v13;
        v59 = a1;
      }

      while (a4 < v49 && a2 < a3);
    }
  }

LABEL_60:
  sub_24B99FEC8(&v59, &v58, &v57, type metadata accessor for FocusSystemConfigurationAction);
  return 1;
}

uint64_t sub_24B99F7F4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v64 = type metadata accessor for FocusSystemConfigurationAction(0);
  v8 = MEMORY[0x28223BE20](v64);
  v59 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v61 = &v54 - v11;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_61;
  }

  v14 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_62;
  }

  v15 = (a2 - a1) / v13;
  v71 = a1;
  v70 = a4;
  if (v15 >= v14 / v13)
  {
    v17 = v14 / v13 * v13;
    if (a4 < a2 || a2 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v63 = a2;
    v33 = a4 + v17;
    if (v17 >= 1)
    {
      v34 = -v13;
      v35 = v33;
      v62 = a4;
      v56 = a1;
      v57 = v34;
      v36 = v59;
      while (2)
      {
        while (1)
        {
          v54 = v33;
          v37 = v63;
          v63 += v34;
          v58 = v37;
          while (1)
          {
            if (v37 <= a1)
            {
              v71 = v37;
              v69 = v54;
              goto LABEL_59;
            }

            v39 = a3;
            v55 = v33;
            v60 = a3 + v34;
            v40 = v35 + v34;
            v41 = v61;
            sub_24B9A1C8C(v40, v61, type metadata accessor for FocusSystemConfigurationAction);
            sub_24B9A1C8C(v63, v36, type metadata accessor for FocusSystemConfigurationAction);
            v42 = v64;
            v43 = [*(v41 + *(v64 + 32)) title];
            v44 = sub_24BAAA01C();
            v46 = v45;

            v67 = v44;
            v68 = v46;
            v47 = [*(v36 + *(v42 + 32)) title];
            v48 = sub_24BAAA01C();
            v50 = v49;

            v65 = v48;
            v66 = v50;
            sub_24B8F5E3C();
            v51 = sub_24BAAA43C();

            sub_24B9A1CF4(v36, type metadata accessor for FocusSystemConfigurationAction);
            sub_24B9A1CF4(v61, type metadata accessor for FocusSystemConfigurationAction);
            if (v51 == -1)
            {
              break;
            }

            v33 = v40;
            a3 = v60;
            v52 = v62;
            if (v39 < v35 || v60 >= v35)
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v56;
            }

            else
            {
              a1 = v56;
              if (v39 != v35)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v35 = v40;
            v38 = v40 > v52;
            v34 = v57;
            v37 = v58;
            if (!v38)
            {
              v63 = v58;
              goto LABEL_58;
            }
          }

          a3 = v60;
          v53 = v62;
          if (v39 < v58 || v60 >= v58)
          {
            break;
          }

          v33 = v55;
          a1 = v56;
          v34 = v57;
          if (v39 != v58)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v35 <= v53)
          {
            goto LABEL_58;
          }
        }

        swift_arrayInitWithTakeFrontToBack();
        v33 = v55;
        a1 = v56;
        v34 = v57;
        if (v35 > v53)
        {
          continue;
        }

        break;
      }
    }

LABEL_58:
    v71 = v63;
    v69 = v33;
  }

  else
  {
    v16 = v15 * v13;
    if (a4 < a1 || a1 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v58 = a4 + v16;
    v69 = a4 + v16;
    if (v16 >= 1 && a2 < a3)
    {
      v60 = a3;
      v57 = v13;
      v19 = v61;
      do
      {
        v62 = a4;
        v63 = a2;
        sub_24B9A1C8C(a2, v19, type metadata accessor for FocusSystemConfigurationAction);
        v20 = v59;
        sub_24B9A1C8C(a4, v59, type metadata accessor for FocusSystemConfigurationAction);
        v21 = v64;
        v22 = [*(v19 + *(v64 + 32)) title];
        v23 = sub_24BAAA01C();
        v25 = v24;

        v67 = v23;
        v68 = v25;
        v26 = [*(v20 + *(v21 + 32)) title];
        v27 = sub_24BAAA01C();
        v29 = v28;

        v65 = v27;
        v66 = v29;
        sub_24B8F5E3C();
        v30 = sub_24BAAA43C();

        sub_24B9A1CF4(v20, type metadata accessor for FocusSystemConfigurationAction);
        sub_24B9A1CF4(v19, type metadata accessor for FocusSystemConfigurationAction);
        if (v30 == -1)
        {
          v31 = v57;
          a4 = v62;
          a2 = v63 + v57;
          if (a1 < v63 || a1 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
            v32 = v60;
          }

          else
          {
            v32 = v60;
            if (a1 != v63)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          goto LABEL_33;
        }

        a2 = v63;
        v31 = v57;
        a4 = v62 + v57;
        if (a1 < v62 || a1 >= a4)
        {
          swift_arrayInitWithTakeFrontToBack();
          v32 = v60;
        }

        else
        {
          v32 = v60;
          if (a1 != v62)
          {
            swift_arrayInitWithTakeBackToFront();
            v70 = a4;
            goto LABEL_33;
          }
        }

        v70 = a4;
LABEL_33:
        a1 += v31;
        v71 = a1;
      }

      while (a4 < v58 && a2 < v32);
    }
  }

LABEL_59:
  sub_24B99FEC8(&v71, &v70, &v69, type metadata accessor for FocusSystemConfigurationAction);
  return 1;
}

uint64_t sub_24B99FE28(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_24B99FEB4(v3);
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
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_24B99FEC8(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  result = a4(0);
  v8 = *(*(result - 8) + 72);
  if (!v8)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_17;
  }

  if (v4 < v5 || v4 >= v5 + (v6 - v5) / v8 * v8)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

void *sub_24B99FFB0(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void *, uint64_t, uint64_t))
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

void sub_24B9A0078(unint64_t a1, uint64_t a2, char a3, uint64_t a4, unint64_t *a5)
{
  v8 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v9 = a4;
      }

      else
      {
        v9 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x24C250600](a1, a2, v9);
      sub_24B8F37E8(0, a5);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_24B8F37E8(0, a5);
    if (sub_24BAAA50C() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_24BAAA51C();
    swift_dynamicCast();
    v5 = v17;
    v10 = sub_24BAAA3BC();
    v11 = -1 << *(a4 + 32);
    v8 = v10 & ~v11;
    if ((*(a4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
    {
      v12 = ~v11;
      do
      {
        v13 = *(*(a4 + 48) + 8 * v8);
        v14 = sub_24BAAA3CC();

        if (v14)
        {
          goto LABEL_19;
        }

        v8 = (v8 + 1) & v12;
      }

      while (((*(a4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
    }

    __break(1u);
  }

  if ((v8 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v8)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v8 >> 6) + 56) >> v8) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v15 = *(*(a4 + 48) + 8 * v8);

  v16 = v15;
}

uint64_t sub_24B9A0290(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
    if (a3)
    {
      result = sub_24BAAA50C();
      if (result != *(a4 + 36))
      {
        __break(1u);
        goto LABEL_23;
      }

      sub_24BAAA51C();
      type metadata accessor for EventSource();
      swift_dynamicCast();
      sub_24BAAA7FC();
      v7 = sub_24BAAA84C();
      v8 = -1 << *(a4 + 32);
      v5 = v7 & ~v8;
      if ((*(a4 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
      {
        v9 = ~v8;
        while (([*(*(*(a4 + 48) + 8 * v5) + 16) isEqual_] & 1) == 0)
        {
          v5 = (v5 + 1) & v9;
          if (((*(a4 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
          {
            goto LABEL_13;
          }
        }

        goto LABEL_19;
      }

LABEL_13:

      __break(1u);
    }

    if ((v5 & 0x8000000000000000) == 0 && 1 << *(a4 + 32) > v5)
    {
      if ((*(a4 + 8 * (v5 >> 6) + 56) >> v5))
      {
        if (*(a4 + 36) == a2)
        {
        }

        __break(1u);
LABEL_19:
      }

LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if ((a3 & 1) == 0)
  {
LABEL_25:
    __break(1u);
    return result;
  }

  if (a4 < 0)
  {
    v6 = a4;
  }

  else
  {
    v6 = a4 & 0xFFFFFFFFFFFFFF8;
  }

  MEMORY[0x24C250600](result, a2, v6);
  type metadata accessor for EventSource();
  swift_dynamicCast();
  return v10;
}

uint64_t sub_24B9A0460(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
    if (a3)
    {
      result = sub_24BAAA50C();
      if (result != *(a4 + 36))
      {
        __break(1u);
        goto LABEL_23;
      }

      sub_24BAAA51C();
      type metadata accessor for InstalledApp();
      swift_dynamicCast();
      sub_24BAAA7FC();
      v7 = sub_24BAAA84C();
      v8 = -1 << *(a4 + 32);
      v5 = v7 & ~v8;
      if ((*(a4 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
      {
        v9 = ~v8;
        while (([*(*(*(a4 + 48) + 8 * v5) + 16) isEqual_] & 1) == 0)
        {
          v5 = (v5 + 1) & v9;
          if (((*(a4 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
          {
            goto LABEL_13;
          }
        }

        goto LABEL_19;
      }

LABEL_13:

      __break(1u);
    }

    if ((v5 & 0x8000000000000000) == 0 && 1 << *(a4 + 32) > v5)
    {
      if ((*(a4 + 8 * (v5 >> 6) + 56) >> v5))
      {
        if (*(a4 + 36) == a2)
        {
        }

        __break(1u);
LABEL_19:
      }

LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if ((a3 & 1) == 0)
  {
LABEL_25:
    __break(1u);
    return result;
  }

  if (a4 < 0)
  {
    v6 = a4;
  }

  else
  {
    v6 = a4 & 0xFFFFFFFFFFFFFF8;
  }

  MEMORY[0x24C250600](result, a2, v6);
  type metadata accessor for InstalledApp();
  swift_dynamicCast();
  return v10;
}

uint64_t sub_24B9A0694(uint64_t a1)
{
  v1[20] = a1;
  v1[21] = type metadata accessor for FocusConfigurationAction(0);
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  sub_24BAAA1BC();
  v1[24] = sub_24BAAA1AC();
  v2 = sub_24BAAA17C();
  v1[25] = v2;
  v1[26] = v3;

  return MEMORY[0x2822009F8](sub_24B9A079C, v2, v3);
}

uint64_t sub_24B9A079C()
{
  v34 = v0;
  v33[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0[20] + *(v0[21] + 40));
  v0[27] = v1;
  if (v1)
  {
    v2 = [objc_opt_self() policyWithActionMetadata_];
    v0[18] = 0;
    v0[28] = v2;
    v3 = [v2 connectionWithError_];
    v0[29] = v3;
    v4 = v0[18];
    if (v3)
    {
      v5 = v3;
      v6 = *(v0[20] + *(v0[21] + 36));
      v7 = v4;
      v8 = [v6 parameters];
      if (!v8)
      {
        sub_24B8F37E8(0, &qword_27F066A90);
        sub_24BAAA12C();
        v8 = sub_24BAAA11C();
      }

      v9 = [v2 actionWithParameters_];
      v0[30] = v9;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F064710);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_24BAAE690;
      *(v10 + 32) = v9;
      sub_24B8F37E8(0, &qword_27F066B10);
      v11 = v9;
      v12 = sub_24BAAA11C();
      v0[31] = v12;

      v0[2] = v0;
      v0[7] = v0 + 19;
      v0[3] = sub_24B9A0CC8;
      v13 = swift_continuation_init();
      v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066B18);
      v0[10] = MEMORY[0x277D85DD0];
      v0[11] = 1107296256;
      v0[12] = sub_24B98798C;
      v0[13] = &block_descriptor_406;
      v0[14] = v13;
      [v5 fetchDisplayRepresentationForActions:v12 completionHandler:v0 + 10];

      return MEMORY[0x282200938](v0 + 2);
    }

    v14 = v4;

    v15 = sub_24BAA7CCC();

    swift_willThrow();
    if (qword_27F0630F8 != -1)
    {
      swift_once();
    }

    v16 = v0[22];
    v17 = v0[20];
    v18 = sub_24BAA812C();
    __swift_project_value_buffer(v18, qword_27F077050);
    v19 = sub_24BAAA2AC();
    sub_24B9A1C8C(v17, v16, type metadata accessor for FocusConfigurationAction);
    v20 = sub_24BAA810C();
    v21 = os_log_type_enabled(v20, v19);
    v22 = v0[27];
    v23 = v0[22];
    if (v21)
    {
      v24 = v0[21];
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v33[0] = v26;
      *v25 = 136446210;
      v27 = (v23 + *(v24 + 32));
      v28 = *v27;
      v29 = v27[1];

      sub_24B9A1CF4(v23, type metadata accessor for FocusConfigurationAction);
      v30 = sub_24B8E49D4(v28, v29, v33);

      *(v25 + 4) = v30;
      _os_log_impl(&dword_24B8D3000, v20, v19, "Failed to fetch displayRepresentation for action; bundleIdentifier=%{public}s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x24C251390](v26, -1, -1);
      MEMORY[0x24C251390](v25, -1, -1);
    }

    else
    {

      sub_24B9A1CF4(v23, type metadata accessor for FocusConfigurationAction);
    }
  }

  else
  {
  }

  v31 = v0[1];

  return v31(0);
}

uint64_t sub_24B9A0CC8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 256) = v2;
  v3 = *(v1 + 208);
  v4 = *(v1 + 200);
  if (v2)
  {
    v5 = sub_24B9A11DC;
  }

  else
  {
    v5 = sub_24B9A0E24;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_24B9A0E24()
{
  v36 = v0;
  v35[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 248);

  v2 = *(v0 + 152);

  if (v2 >> 62)
  {
    if (sub_24BAAA52C())
    {
      goto LABEL_3;
    }

LABEL_8:
    v4 = 0;
    goto LABEL_9;
  }

  if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v2 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x24C2506E0](0, v2);
  }

  else
  {
    if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
    }

    v3 = *(v2 + 32);
  }

  v4 = v3;
LABEL_9:

  v5 = [v4 displayRepresentation];

  if (qword_27F0630F8 != -1)
  {
    swift_once();
  }

  v6 = *(v0 + 184);
  v7 = *(v0 + 160);
  v8 = sub_24BAA812C();
  __swift_project_value_buffer(v8, qword_27F077050);
  sub_24B9A1C8C(v7, v6, type metadata accessor for FocusConfigurationAction);
  v9 = v5;
  v10 = sub_24BAA810C();
  v11 = sub_24BAAA2CC();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v35[0] = v13;
    *v12 = 136446466;
    if (v9)
    {
      v14 = [v9 description];
      v15 = sub_24BAAA01C();
      v17 = v16;
    }

    else
    {
      v17 = 0xE300000000000000;
      v15 = 7104878;
    }

    v31 = *(v0 + 240);
    v32 = *(v0 + 232);
    v33 = *(v0 + 224);
    v34 = *(v0 + 216);
    v22 = *(v0 + 184);
    v23 = *(v0 + 168);
    v24 = sub_24B8E49D4(v15, v17, v35);

    *(v12 + 4) = v24;
    *(v12 + 12) = 2082;
    v25 = (v22 + *(v23 + 32));
    v26 = *v25;
    v27 = v25[1];

    sub_24B9A1CF4(v22, type metadata accessor for FocusConfigurationAction);
    v28 = sub_24B8E49D4(v26, v27, v35);

    *(v12 + 14) = v28;
    _os_log_impl(&dword_24B8D3000, v10, v11, "Found displayRepresentation for action; displayRepresentation=%{public}s bundleIdentifier=%{public}s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C251390](v13, -1, -1);
    MEMORY[0x24C251390](v12, -1, -1);
  }

  else
  {
    v18 = *(v0 + 232);
    v20 = *(v0 + 216);
    v19 = *(v0 + 224);
    v21 = *(v0 + 184);

    sub_24B9A1CF4(v21, type metadata accessor for FocusConfigurationAction);
  }

  v29 = *(v0 + 8);

  return v29(v9);
}

uint64_t sub_24B9A11DC()
{
  v24 = v0;
  v23[1] = *MEMORY[0x277D85DE8];
  v1 = v0[31];
  v3 = v0[29];
  v2 = v0[30];
  v4 = v0[28];

  swift_willThrow();

  v5 = v0[32];
  if (qword_27F0630F8 != -1)
  {
    swift_once();
  }

  v6 = v0[22];
  v7 = v0[20];
  v8 = sub_24BAA812C();
  __swift_project_value_buffer(v8, qword_27F077050);
  v9 = sub_24BAAA2AC();
  sub_24B9A1C8C(v7, v6, type metadata accessor for FocusConfigurationAction);
  v10 = sub_24BAA810C();
  v11 = os_log_type_enabled(v10, v9);
  v12 = v0[27];
  v13 = v0[22];
  if (v11)
  {
    v14 = v0[21];
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v23[0] = v16;
    *v15 = 136446210;
    v17 = (v13 + *(v14 + 32));
    v18 = *v17;
    v19 = v17[1];

    sub_24B9A1CF4(v13, type metadata accessor for FocusConfigurationAction);
    v20 = sub_24B8E49D4(v18, v19, v23);

    *(v15 + 4) = v20;
    _os_log_impl(&dword_24B8D3000, v10, v9, "Failed to fetch displayRepresentation for action; bundleIdentifier=%{public}s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x24C251390](v16, -1, -1);
    MEMORY[0x24C251390](v15, -1, -1);
  }

  else
  {

    sub_24B9A1CF4(v13, type metadata accessor for FocusConfigurationAction);
  }

  v21 = v0[1];

  return v21(0);
}

BOOL sub_24B9A1468()
{
  v0 = [objc_opt_self() sharedConnection];
  v1 = v0;
  if (v0 && ([v0 isWallpaperModificationAllowed] & 1) == 0)
  {
    if (qword_27F0630F0 != -1)
    {
      swift_once();
    }

    v8 = sub_24BAA812C();
    __swift_project_value_buffer(v8, qword_27F077038);
    v9 = sub_24BAA810C();
    v10 = sub_24BAAA2CC();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_24B8D3000, v9, v10, "Wallpaper modification denied by ManagedConfiguration: isWallpaperModificationAllowed = false", v11, 2u);
      MEMORY[0x24C251390](v11, -1, -1);
    }

    return 0;
  }

  else
  {
    v2 = objc_opt_self();
    v3 = [v2 currentDevice];
    v4 = [v3 userInterfaceIdiom];

    if (v4)
    {
      v5 = [v2 currentDevice];
      v6 = [v5 userInterfaceIdiom];

      return v6 == 1;
    }

    else
    {

      return 1;
    }
  }
}

uint64_t sub_24B9A1610()
{
  v1 = v0;
  v2 = sub_24B984444();
  v3 = *(v2 + 104);
  if (v3)
  {
  }

  else
  {
    v4 = sub_24B8D7188();
    if (v4)
    {
      v5 = v4;
      v3 = DNDModeConfiguration.appsWithExceptions.getter();

      *(v2 + 104) = v3;
    }

    else
    {

      v3 = MEMORY[0x277D84F90];
    }
  }

  v6 = sub_24B8F154C(v3);

  v7 = OBJC_IVAR____TtC15FocusSettingsUI23ActivityConfigViewModel__appsWithExceptions;
  v8 = *(v1 + OBJC_IVAR____TtC15FocusSettingsUI23ActivityConfigViewModel__appsWithExceptions);

  v9 = sub_24B9817E4(v6, v8);

  if ((v9 & 1) == 0)
  {
    *(v1 + v7) = v6;

    v11 = sub_24B99B434(v6, sub_24BAA74CC, sub_24BAA4680);
    sub_24B99AF24(&v11);

    *(v1 + OBJC_IVAR____TtC15FocusSettingsUI23ActivityConfigViewModel_sortedAppsWithExceptions) = v11;
  }

  return *(v1 + OBJC_IVAR____TtC15FocusSettingsUI23ActivityConfigViewModel_sortedAppsWithExceptions);
}

uint64_t sub_24B9A179C()
{
  v1 = v0;
  sub_24B984444();
  sub_24B8DF01C();
  v3 = v2;

  v4 = OBJC_IVAR____TtC15FocusSettingsUI23ActivityConfigViewModel__peopleWithExceptions;
  v5 = *(v0 + OBJC_IVAR____TtC15FocusSettingsUI23ActivityConfigViewModel__peopleWithExceptions);

  sub_24B981A38(v3, v5);
  v7 = v6;

  if ((v7 & 1) == 0)
  {
    *(v1 + v4) = v3;

    if (qword_27F0630D0 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v8 = sub_24BA1B820(v3);
    swift_endAccess();

    *(v1 + OBJC_IVAR____TtC15FocusSettingsUI23ActivityConfigViewModel_sortedPeopleWithExceptions) = v8;
  }

  return *(v1 + OBJC_IVAR____TtC15FocusSettingsUI23ActivityConfigViewModel_sortedPeopleWithExceptions);
}

id sub_24B9A18C0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0669D0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v13 - v1;
  v3 = [objc_opt_self() currentDevice];
  v4 = [v3 userInterfaceIdiom];

  if (v4)
  {
    return 0;
  }

  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v6 = result;
    v7 = [result getActivePairedDevice];
    if (!v7)
    {

      return 0;
    }

    v8 = v7;
    sub_24BAA7DDC();
    v9 = sub_24BAA7E4C();
    v10 = *(v9 - 8);
    v11 = 0;
    if ((*(v10 + 48))(v2, 1, v9) != 1)
    {
      v11 = sub_24BAA7DFC();
      (*(v10 + 8))(v2, v9);
    }

    v12 = [v8 supportsCapability_];

    return v12;
  }

  return result;
}

uint64_t sub_24B9A1AA0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24B919380;

  return sub_24B9826BC(a1, v4, v5, v6);
}

uint64_t sub_24B9A1B54(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0646E8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B9A1BC4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24B919380;

  return sub_24B999FA8(a1, v4);
}

uint64_t sub_24B9A1C7C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_24B9A1C8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B9A1CF4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24B9A1D54(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24B9A1DBC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24B9A1E04()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_240Tm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24B9A1F68()
{
  MEMORY[0x24C251450](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24B9A1FD0()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24B9A201C()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24B9A2094()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24B9A210C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Trigger(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B9A21B4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24B919380;

  return sub_24B98E570(a1, v4, v5, v7, v6);
}

uint64_t sub_24B9A2274(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_24B919380;

  return sub_24B98D990(a1, a2, v6, v7, v8);
}

uint64_t sub_24B9A2338()
{
  v1 = (type metadata accessor for FocusSystemConfigurationAction(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*v1 + 64);
  swift_unknownObjectRelease();

  v5 = sub_24BAA7E4C();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_24B9A2440(uint64_t a1)
{
  v4 = *(type metadata accessor for FocusSystemConfigurationAction(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_24B919380;

  return sub_24B98E330(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_24B9A2538(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24B919380;

  return sub_24B999FA8(a1, v4);
}

uint64_t objectdestroy_317Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24B9A26E0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_24B919380;

  return sub_24B98A494(a1, v4, v5, v7, v6);
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_24B9A27FC(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_24B919380;

  return sub_24B9855FC(a1, a2, v6, v7, v8);
}

uint64_t objectdestroy_259Tm(void (*a1)(void))
{

  a1(*(v1 + 24));

  return MEMORY[0x2821FE8E8](v1, 32, 7);
}

uint64_t sub_24B9A294C()
{
  v1 = (type metadata accessor for FocusConfigurationAction(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  v5 = v0 + v3;
  v6 = sub_24BAA7E4C();
  (*(*(v6 - 8) + 8))(v5, v6);

  return MEMORY[0x2821FE8E8](v0, v4 + 8, v2 | 7);
}

uint64_t sub_24B9A2A90(uint64_t a1)
{
  v4 = *(type metadata accessor for FocusConfigurationAction(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_24B918F0C;

  return sub_24B98669C(a1, v6, v7, v8, v1 + v5, v9);
}

uint64_t sub_24B9A2BC0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24B918F0C;

  return sub_24B99A0A0(a1, v4);
}

uint64_t sub_24B9A2C78(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3 + OBJC_IVAR____TtC15FocusSettingsUI23ActivityConfigViewModel_meDevice;
  *v4 = a1;
  *(v4 + 8) = a2;
  *(v4 + 16) = a3;
}

uint64_t objectdestroy_205Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24B9A2D08(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24B919380;

  return sub_24B9834AC(a1, v4, v5, v6);
}

unint64_t sub_24B9A2DD4()
{
  result = qword_27F066B48;
  if (!qword_27F066B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F066B48);
  }

  return result;
}

unint64_t sub_24B9A2E30()
{
  result = qword_27F066B50;
  if (!qword_27F066B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F066B50);
  }

  return result;
}

unint64_t sub_24B9A2EA4()
{
  result = qword_27F066B58;
  if (!qword_27F066B58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F066B60);
    sub_24B9822BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F066B58);
  }

  return result;
}

uint64_t sub_24B9A3024(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063A18);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24B9A30B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063A18);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for TriggerCardLeadingImageModifier()
{
  result = qword_27F066BF0;
  if (!qword_27F066BF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24B9A3178()
{
  sub_24B980E74();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_24B9A3200@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_24BAA991C();
  v3 = [objc_opt_self() tertiaryLabelColor];
  v4 = sub_24BAA973C();
  KeyPath = swift_getKeyPath();
  v6 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066C30) + 36));
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066C38) + 28);
  v8 = *MEMORY[0x277CE1050];
  v9 = sub_24BAA996C();
  (*(*(v9 - 8) + 104))(v6 + v7, v8, v9);
  *v6 = swift_getKeyPath();
  *a1 = v2;
  a1[1] = KeyPath;
  a1[2] = v4;
  sub_24BAA916C();
  v10 = sub_24BAA917C();

  v11 = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066C40);
  v13 = (a1 + *(result + 36));
  *v13 = v11;
  v13[1] = v10;
  return result;
}

uint64_t sub_24B9A3374@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_24BAA89FC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063A08);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_24B9A39B0(v2, &v14 - v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_24BAA8B9C();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_24BAAA2BC();
    v13 = sub_24BAA907C();
    sub_24BAA80FC();

    sub_24BAA89EC();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_24B9A3560@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a1;
  v26 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063CD8);
  MEMORY[0x28223BE20](v2 - 8);
  v25 = &v23 - v3;
  v4 = sub_24BAA8B9C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066C00);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v23 = &v23 - v10;
  sub_24B9A3374(v7);
  sub_24BAA8B8C();
  v11 = *(v5 + 8);
  v11(v7, v4);
  sub_24B9A3374(v7);
  sub_24BAA8B8C();
  v11(v7, v4);
  sub_24BAA9D1C();
  sub_24BAA83BC();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066C08);
  v13 = v23;
  (*(*(v12 - 8) + 16))(v23, v24, v12);
  v14 = (v13 + *(v9 + 44));
  v15 = v28;
  *v14 = v27;
  v14[1] = v15;
  v14[2] = v29;
  sub_24B9A3374(v7);
  sub_24BAA8B8C();
  v11(v7, v4);
  v16 = sub_24BAA919C();
  v17 = v25;
  (*(*(v16 - 8) + 56))(v25, 1, 1, v16);
  v18 = sub_24BAA91FC();
  sub_24B9A38D0(v17);
  KeyPath = swift_getKeyPath();
  v20 = v26;
  sub_24B9A3940(v13, v26);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066C10);
  v22 = (v20 + *(result + 36));
  *v22 = KeyPath;
  v22[1] = v18;
  return result;
}

uint64_t sub_24B9A38D0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063CD8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24B9A3940(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066C00);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B9A39B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F063A08);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24B9A3A24()
{
  result = qword_27F066C18;
  if (!qword_27F066C18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F066C10);
    sub_24B9A3ADC();
    sub_24B8F384C(&unk_27F069050, &qword_27F064F70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F066C18);
  }

  return result;
}

unint64_t sub_24B9A3ADC()
{
  result = qword_27F066C20;
  if (!qword_27F066C20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F066C00);
    sub_24B8F384C(&qword_27F066C28, &qword_27F066C08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F066C20);
  }

  return result;
}

unint64_t sub_24B9A3BD4()
{
  result = qword_27F066C48;
  if (!qword_27F066C48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F066C40);
    sub_24B9A3C8C();
    sub_24B8F384C(&unk_27F069050, &qword_27F064F70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F066C48);
  }

  return result;
}

unint64_t sub_24B9A3C8C()
{
  result = qword_27F066C50;
  if (!qword_27F066C50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F066C30);
    sub_24B96C3DC();
    sub_24B8F384C(&qword_27F066C58, &qword_27F066C38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F066C50);
  }

  return result;
}

id sub_24B9A3D44()
{
  result = [objc_allocWithZone(MEMORY[0x277CEB5F0]) init];
  qword_27F076FB0 = result;
  return result;
}

void static Suggestions.suggestedBundleIds(semanticType:exceptionType:completionHandler:)(uint64_t a1, char a2, uint64_t a3, void (*a4)(void), uint64_t a5)
{
  if (a2)
  {
    a4(MEMORY[0x277D84F90]);
  }

  else
  {
    if (qword_27F0630F0 != -1)
    {
      swift_once();
    }

    v9 = sub_24BAA812C();
    __swift_project_value_buffer(v9, qword_27F077038);
    v10 = sub_24BAA810C();
    v11 = sub_24BAAA29C();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      aBlock = v13;
      *v12 = 136446466;
      *(v12 + 4) = sub_24B8E49D4(0x6974736567677553, 0xEB00000000736E6FLL, &aBlock);
      *(v12 + 12) = 2080;
      type metadata accessor for DNDModeSemanticType(0);
      v14 = sub_24BAAA04C();
      v16 = sub_24B8E49D4(v14, v15, &aBlock);

      *(v12 + 14) = v16;
      _os_log_impl(&dword_24B8D3000, v10, v11, "[%{public}s] suggestedBundleIds for semanticType: %s", v12, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C251390](v13, -1, -1);
      MEMORY[0x24C251390](v12, -1, -1);
    }

    v17 = swift_allocObject();
    v17[2] = a3;
    v17[3] = a4;
    v17[4] = a5;
    v18 = qword_27F0630A8;

    if (a3 == 1)
    {
      if (v18 != -1)
      {
        swift_once();
      }

      v19 = qword_27F076FB0;
      v26 = sub_24B9A879C;
      v27 = v17;
      aBlock = MEMORY[0x277D85DD0];
      v23 = 1107296256;
      v24 = sub_24B9A3000;
      v25 = &block_descriptor_3;
      v20 = _Block_copy(&aBlock);

      [v19 recommendedAndCandidateDeniedAppsForDNDModeSemanticType:a1 reply:v20];
    }

    else
    {
      if (v18 != -1)
      {
        swift_once();
      }

      v21 = qword_27F076FB0;
      v26 = sub_24B9A879C;
      v27 = v17;
      aBlock = MEMORY[0x277D85DD0];
      v23 = 1107296256;
      v24 = sub_24B9A3000;
      v25 = &block_descriptor_5;
      v20 = _Block_copy(&aBlock);

      [v21 recommendedAndCandidateAllowedAppsForDNDModeSemanticType:a1 reply:v20];
    }

    _Block_release(v20);
  }
}

void static Suggestions.recommendedAndCandidateSuggestedBundleIds(semanticType:exceptionType:completionHandler:)(uint64_t a1, char a2, uint64_t a3, void (*a4)(void, void), uint64_t a5)
{
  if (a2)
  {
    a4(MEMORY[0x277D84F90], MEMORY[0x277D84F90]);
  }

  else
  {
    if (qword_27F0630F0 != -1)
    {
      swift_once();
    }

    v9 = sub_24BAA812C();
    __swift_project_value_buffer(v9, qword_27F077038);
    v10 = sub_24BAA810C();
    v11 = sub_24BAAA29C();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      aBlock = v13;
      *v12 = 136446466;
      *(v12 + 4) = sub_24B8E49D4(0x6974736567677553, 0xEB00000000736E6FLL, &aBlock);
      *(v12 + 12) = 2080;
      type metadata accessor for DNDModeSemanticType(0);
      v14 = sub_24BAAA04C();
      v16 = sub_24B8E49D4(v14, v15, &aBlock);

      *(v12 + 14) = v16;
      _os_log_impl(&dword_24B8D3000, v10, v11, "[%{public}s] recommended and candidate suggestedBundleIds for semanticType: %s", v12, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C251390](v13, -1, -1);
      MEMORY[0x24C251390](v12, -1, -1);
    }

    v17 = swift_allocObject();
    v17[2] = a3;
    v17[3] = a4;
    v17[4] = a5;
    v18 = qword_27F0630A8;

    if (a3 == 1)
    {
      if (v18 != -1)
      {
        swift_once();
      }

      v19 = qword_27F076FB0;
      v26 = sub_24B9A87D4;
      v27 = v17;
      aBlock = MEMORY[0x277D85DD0];
      v23 = 1107296256;
      v24 = sub_24B9A3000;
      v25 = &block_descriptor_12;
      v20 = _Block_copy(&aBlock);

      [v19 recommendedAndCandidateDeniedAppsForDNDModeSemanticType:a1 reply:v20];
    }

    else
    {
      if (v18 != -1)
      {
        swift_once();
      }

      v21 = qword_27F076FB0;
      v26 = sub_24B9A87D4;
      v27 = v17;
      aBlock = MEMORY[0x277D85DD0];
      v23 = 1107296256;
      v24 = sub_24B9A3000;
      v25 = &block_descriptor_9;
      v20 = _Block_copy(&aBlock);

      [v21 recommendedAndCandidateAllowedAppsForDNDModeSemanticType:a1 reply:v20];
    }

    _Block_release(v20);
  }
}

uint64_t static Suggestions.suggestedBundleIds(modeUUID:exceptionType:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  v42 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0669D0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v39 - v8;
  v10 = sub_24BAA7E4C();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v39 - v15;
  sub_24B9A87F4(a1, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_24B9A8864(v9);
    return v42(MEMORY[0x277D84F90]);
  }

  else
  {
    (*(v11 + 32))(v16, v9, v10);
    if (qword_27F0630F0 != -1)
    {
      swift_once();
    }

    v18 = sub_24BAA812C();
    __swift_project_value_buffer(v18, qword_27F077038);
    (*(v11 + 16))(v14, v16, v10);
    v19 = sub_24BAA810C();
    v20 = sub_24BAAA29C();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v41 = a2;
      v22 = v21;
      v40 = swift_slowAlloc();
      aBlock = v40;
      *v22 = 136446466;
      *(v22 + 4) = sub_24B8E49D4(0x6974736567677553, 0xEB00000000736E6FLL, &aBlock);
      *(v22 + 12) = 2080;
      sub_24B9A88CC();
      v23 = sub_24BAAA76C();
      v39 = v16;
      v24 = a4;
      v26 = v25;
      v27 = *(v11 + 8);
      v27(v14, v10);
      v28 = sub_24B8E49D4(v23, v26, &aBlock);
      a4 = v24;
      v16 = v39;

      *(v22 + 14) = v28;
      _os_log_impl(&dword_24B8D3000, v19, v20, "[%{public}s] suggestedBundleIds for dndMode: %s", v22, 0x16u);
      v29 = v40;
      swift_arrayDestroy();
      MEMORY[0x24C251390](v29, -1, -1);
      v30 = v22;
      a2 = v41;
      MEMORY[0x24C251390](v30, -1, -1);

      v31 = v27;
    }

    else
    {

      v31 = *(v11 + 8);
      v31(v14, v10);
    }

    v32 = swift_allocObject();
    v33 = v42;
    v32[2] = a2;
    v32[3] = v33;
    v32[4] = a4;
    v34 = qword_27F0630A8;

    if (a2 == 1)
    {
      if (v34 != -1)
      {
        swift_once();
      }

      v35 = qword_27F076FB0;
      v36 = sub_24BAA7DFC();
      v47 = sub_24B9A96B4;
      v48 = v32;
      aBlock = MEMORY[0x277D85DD0];
      v44 = 1107296256;
      v45 = sub_24B9A3000;
      v46 = &block_descriptor_21;
      v37 = _Block_copy(&aBlock);

      [v35 recommendedAndCandidateDeniedAppsForDNDMode:v36 reply:v37];
    }

    else
    {
      if (v34 != -1)
      {
        swift_once();
      }

      v38 = qword_27F076FB0;
      v36 = sub_24BAA7DFC();
      v47 = sub_24B9A96B4;
      v48 = v32;
      aBlock = MEMORY[0x277D85DD0];
      v44 = 1107296256;
      v45 = sub_24B9A3000;
      v46 = &block_descriptor_18;
      v37 = _Block_copy(&aBlock);

      [v38 recommendedAndCandidateAllowedAppsForDNDMode:v36 reply:v37];
    }

    _Block_release(v37);

    return (v31)(v16, v10);
  }
}

uint64_t sub_24B9A4A14(void *a1, uint64_t a2, char **a3, uint64_t (*a4)(char *))
{
  if (!a1)
  {
    return a4(MEMORY[0x277D84F90]);
  }

  v5 = qword_27F0630F0;
  v6 = a1;
  if (v5 != -1)
  {
LABEL_37:
    swift_once();
  }

  v7 = sub_24BAA812C();
  __swift_project_value_buffer(v7, qword_27F077038);
  v8 = v6;
  v9 = sub_24BAA810C();
  v10 = sub_24BAAA29C();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v40 = v12;
    *v11 = 136446722;
    *(v11 + 4) = sub_24B8E49D4(0x6974736567677553, 0xEB00000000736E6FLL, &v40);
    *(v11 + 12) = 2048;
    *(v11 + 14) = a3;
    *(v11 + 22) = 2048;
    v13 = [v8 recommendedApps];
    sub_24B8F37E8(0, &qword_27F066C70);
    v14 = sub_24BAAA12C();

    if (v14 >> 62)
    {
      v15 = sub_24BAAA52C();
    }

    else
    {
      v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v11 + 24) = v15;

    _os_log_impl(&dword_24B8D3000, v9, v10, "[%{public}s] for exceptionType: %lu suggestedBundleIds returned recommended count: %ld", v11, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x24C251390](v12, -1, -1);
    MEMORY[0x24C251390](v11, -1, -1);
  }

  else
  {
  }

  v17 = [v8 recommendedApps];
  sub_24B8F37E8(0, &qword_27F066C70);
  v18 = sub_24BAAA12C();

  if (v18 >> 62)
  {
    v19 = sub_24BAAA52C();
  }

  else
  {
    v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v37 = a3;
  v38 = v8;
  if (v19)
  {
    v20 = 0;
    v6 = (v18 & 0xC000000000000001);
    v21 = MEMORY[0x277D84F90];
    a3 = &selRef_candidateContacts;
    do
    {
      v22 = v20;
      while (1)
      {
        if (v6)
        {
          v23 = MEMORY[0x24C2506E0](v22, v18);
        }

        else
        {
          if (v22 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_36;
          }

          v23 = *(v18 + 8 * v22 + 32);
        }

        v24 = v23;
        v20 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          __break(1u);
LABEL_36:
          __break(1u);
          goto LABEL_37;
        }

        v25 = [v23 bundleId];
        if (v25)
        {
          break;
        }

        ++v22;
        if (v20 == v19)
        {
          goto LABEL_29;
        }
      }

      v26 = v25;
      v27 = sub_24BAAA01C();
      v36 = v28;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_24B99A290(0, *(v21 + 2) + 1, 1, v21);
      }

      v30 = *(v21 + 2);
      v29 = *(v21 + 3);
      if (v30 >= v29 >> 1)
      {
        v21 = sub_24B99A290((v29 > 1), v30 + 1, 1, v21);
      }

      *(v21 + 2) = v30 + 1;
      v31 = &v21[16 * v30];
      *(v31 + 4) = v27;
      *(v31 + 5) = v36;
    }

    while (v20 != v19);
  }

  else
  {
    v21 = MEMORY[0x277D84F90];
  }

LABEL_29:

  v32 = sub_24BAA810C();
  v33 = sub_24BAAA29C();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v40 = v35;
    *v34 = 136446722;
    *(v34 + 4) = sub_24B8E49D4(0x6974736567677553, 0xEB00000000736E6FLL, &v40);
    *(v34 + 12) = 2048;
    *(v34 + 14) = v37;
    *(v34 + 22) = 2048;
    *(v34 + 24) = *(v21 + 2);

    _os_log_impl(&dword_24B8D3000, v32, v33, "[%{public}s] for exceptionType: %lu suggestedBundleIds returned bundleIds: %ld", v34, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v35);
    MEMORY[0x24C251390](v35, -1, -1);
    MEMORY[0x24C251390](v34, -1, -1);
  }

  else
  {
  }

  a4(v21);
}

uint64_t static Suggestions.recommendedAndCandidateSuggestedBundleIds(modeUUID:exceptionType:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, void), uint64_t a4)
{
  v42 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0669D0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v39 - v8;
  v10 = sub_24BAA7E4C();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v39 - v15;
  sub_24B9A87F4(a1, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_24B9A8864(v9);
    return v42(MEMORY[0x277D84F90], MEMORY[0x277D84F90]);
  }

  else
  {
    (*(v11 + 32))(v16, v9, v10);
    if (qword_27F0630F0 != -1)
    {
      swift_once();
    }

    v18 = sub_24BAA812C();
    __swift_project_value_buffer(v18, qword_27F077038);
    (*(v11 + 16))(v14, v16, v10);
    v19 = sub_24BAA810C();
    v20 = sub_24BAAA29C();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v41 = a2;
      v22 = v21;
      v40 = swift_slowAlloc();
      aBlock = v40;
      *v22 = 136446466;
      *(v22 + 4) = sub_24B8E49D4(0x6974736567677553, 0xEB00000000736E6FLL, &aBlock);
      *(v22 + 12) = 2080;
      sub_24B9A88CC();
      v23 = sub_24BAAA76C();
      v39 = v16;
      v24 = a4;
      v26 = v25;
      v27 = *(v11 + 8);
      v27(v14, v10);
      v28 = sub_24B8E49D4(v23, v26, &aBlock);
      a4 = v24;
      v16 = v39;

      *(v22 + 14) = v28;
      _os_log_impl(&dword_24B8D3000, v19, v20, "[%{public}s] recommended and suggested suggestedBundleIds for dndMode: %s", v22, 0x16u);
      v29 = v40;
      swift_arrayDestroy();
      MEMORY[0x24C251390](v29, -1, -1);
      v30 = v22;
      a2 = v41;
      MEMORY[0x24C251390](v30, -1, -1);

      v31 = v27;
    }

    else
    {

      v31 = *(v11 + 8);
      v31(v14, v10);
    }

    v32 = swift_allocObject();
    v33 = v42;
    v32[2] = a2;
    v32[3] = v33;
    v32[4] = a4;
    v34 = qword_27F0630A8;

    if (a2 == 1)
    {
      if (v34 != -1)
      {
        swift_once();
      }

      v35 = qword_27F076FB0;
      v36 = sub_24BAA7DFC();
      v47 = sub_24B9A96B8;
      v48 = v32;
      aBlock = MEMORY[0x277D85DD0];
      v44 = 1107296256;
      v45 = sub_24B9A3000;
      v46 = &block_descriptor_30;
      v37 = _Block_copy(&aBlock);

      [v35 recommendedAndCandidateDeniedAppsForDNDMode:v36 reply:v37];
    }

    else
    {
      if (v34 != -1)
      {
        swift_once();
      }

      v38 = qword_27F076FB0;
      v36 = sub_24BAA7DFC();
      v47 = sub_24B9A96B8;
      v48 = v32;
      aBlock = MEMORY[0x277D85DD0];
      v44 = 1107296256;
      v45 = sub_24B9A3000;
      v46 = &block_descriptor_27;
      v37 = _Block_copy(&aBlock);

      [v38 recommendedAndCandidateAllowedAppsForDNDMode:v36 reply:v37];
    }

    _Block_release(v37);

    return (v31)(v16, v10);
  }
}

uint64_t sub_24B9A54B0(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, char *))
{
  if (!a1)
  {
    return a4(MEMORY[0x277D84F90], MEMORY[0x277D84F90]);
  }

  v4 = qword_27F0630F0;
  v5 = a1;
  if (v4 != -1)
  {
    goto LABEL_53;
  }

  while (1)
  {
    v6 = sub_24BAA812C();
    __swift_project_value_buffer(v6, qword_27F077038);
    v7 = v5;
    v8 = sub_24BAA810C();
    v9 = sub_24BAAA29C();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v54 = v11;
      *v10 = 136446978;
      *(v10 + 4) = sub_24B8E49D4(0x6974736567677553, 0xEB00000000736E6FLL, &v54);
      *(v10 + 12) = 2048;
      *(v10 + 14) = a3;
      *(v10 + 22) = 2048;
      v12 = [v7 recommendedApps];
      sub_24B8F37E8(0, &qword_27F066C70);
      v13 = sub_24BAAA12C();

      v14 = v13 >> 62 ? sub_24BAAA52C() : *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);

      *(v10 + 24) = v14;

      *(v10 + 32) = 2048;
      v15 = [v7 candidateApps];
      v16 = sub_24BAAA12C();

      v17 = v16 >> 62 ? sub_24BAAA52C() : *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);

      *(v10 + 34) = v17;

      _os_log_impl(&dword_24B8D3000, v8, v9, "[%{public}s] for exceptionType: %lu suggestedBundleIds returned recommended count: %ld and candidate count: %ld", v10, 0x2Au);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x24C251390](v11, -1, -1);
      MEMORY[0x24C251390](v10, -1, -1);
    }

    else
    {
    }

    v5 = [v7 recommendedApps];
    sub_24B8F37E8(0, &qword_27F066C70);
    v19 = sub_24BAAA12C();

    v20 = v19 >> 62 ? sub_24BAAA52C() : *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v53 = v7;
    if (v20)
    {
      v21 = 0;
      v22 = MEMORY[0x277D84F90];
      do
      {
        v23 = v21;
        while (1)
        {
          if ((v19 & 0xC000000000000001) != 0)
          {
            v24 = MEMORY[0x24C2506E0](v23, v19);
          }

          else
          {
            if (v23 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_50;
            }

            v24 = *(v19 + 8 * v23 + 32);
          }

          v5 = v24;
          v21 = v23 + 1;
          if (__OFADD__(v23, 1))
          {
            __break(1u);
LABEL_50:
            __break(1u);
            goto LABEL_51;
          }

          v25 = [v24 bundleId];
          if (v25)
          {
            break;
          }

          ++v23;
          if (v21 == v20)
          {
            goto LABEL_31;
          }
        }

        v26 = v25;
        v49 = sub_24BAAA01C();
        v28 = v27;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v22 = sub_24B99A290(0, *(v22 + 2) + 1, 1, v22);
        }

        v30 = *(v22 + 2);
        v29 = *(v22 + 3);
        v5 = (v30 + 1);
        if (v30 >= v29 >> 1)
        {
          v22 = sub_24B99A290((v29 > 1), v30 + 1, 1, v22);
        }

        *(v22 + 2) = v5;
        v31 = &v22[16 * v30];
        *(v31 + 4) = v49;
        *(v31 + 5) = v28;
      }

      while (v21 != v20);
    }

    else
    {
      v22 = MEMORY[0x277D84F90];
    }

LABEL_31:

    v5 = [v53 candidateApps];
    v32 = sub_24BAAA12C();

    if (v32 >> 62)
    {
      break;
    }

    v33 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v51 = v22;
    if (!v33)
    {
      goto LABEL_56;
    }

LABEL_33:
    v34 = 0;
    v35 = MEMORY[0x277D84F90];
LABEL_34:
    v36 = v34;
    while (1)
    {
      if ((v32 & 0xC000000000000001) != 0)
      {
        v37 = MEMORY[0x24C2506E0](v36, v32);
      }

      else
      {
        if (v36 >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_52;
        }

        v37 = *(v32 + 8 * v36 + 32);
      }

      v5 = v37;
      v34 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      v38 = [v37 bundleId];
      if (v38)
      {
        v39 = v38;
        v40 = sub_24BAAA01C();
        v49 = v41;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v35 = sub_24B99A290(0, *(v35 + 2) + 1, 1, v35);
        }

        v43 = *(v35 + 2);
        v42 = *(v35 + 3);
        v5 = (v43 + 1);
        if (v43 >= v42 >> 1)
        {
          v35 = sub_24B99A290((v42 > 1), v43 + 1, 1, v35);
        }

        *(v35 + 2) = v5;
        v44 = &v35[16 * v43];
        *(v44 + 4) = v40;
        *(v44 + 5) = v49;
        if (v34 != v33)
        {
          goto LABEL_34;
        }

        goto LABEL_57;
      }

      ++v36;
      if (v34 == v33)
      {
        goto LABEL_57;
      }
    }

LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    swift_once();
  }

  v33 = sub_24BAAA52C();
  v51 = v22;
  if (v33)
  {
    goto LABEL_33;
  }

LABEL_56:
  v35 = MEMORY[0x277D84F90];
LABEL_57:

  v45 = sub_24BAA810C();
  v46 = sub_24BAAA29C();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v54 = v48;
    *v47 = 136446978;
    *(v47 + 4) = sub_24B8E49D4(0x6974736567677553, 0xEB00000000736E6FLL, &v54);
    *(v47 + 12) = 2048;
    *(v47 + 14) = a3;
    *(v47 + 22) = 2048;
    *(v47 + 24) = *(v51 + 2);

    *(v47 + 32) = 2048;
    *(v47 + 34) = *(v35 + 2);

    _os_log_impl(&dword_24B8D3000, v45, v46, "[%{public}s] for exceptionType: %lu suggestedBundleIds returned recommended bundleIds: %ld and candidateBundleIds: %ld", v47, 0x2Au);
    __swift_destroy_boxed_opaque_existential_0(v48);
    MEMORY[0x24C251390](v48, -1, -1);
    MEMORY[0x24C251390](v47, -1, -1);
  }

  else
  {
  }

  a4(v51, v35);
}

void static Suggestions.suggestedContactIds(semanticType:exceptionType:completionHandler:)(uint64_t a1, char a2, uint64_t a3, void (*a4)(void), uint64_t a5)
{
  if (a2)
  {
    a4(MEMORY[0x277D84F90]);
  }

  else
  {
    if (qword_27F0630F0 != -1)
    {
      swift_once();
    }

    v9 = sub_24BAA812C();
    __swift_project_value_buffer(v9, qword_27F077038);
    v10 = sub_24BAA810C();
    v11 = sub_24BAAA29C();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      aBlock = v13;
      *v12 = 136446466;
      *(v12 + 4) = sub_24B8E49D4(0x6974736567677553, 0xEB00000000736E6FLL, &aBlock);
      *(v12 + 12) = 2080;
      type metadata accessor for DNDModeSemanticType(0);
      v14 = sub_24BAAA04C();
      v16 = sub_24B8E49D4(v14, v15, &aBlock);

      *(v12 + 14) = v16;
      _os_log_impl(&dword_24B8D3000, v10, v11, "[%{public}s] suggestedContactIds for semanticType: %s", v12, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C251390](v13, -1, -1);
      MEMORY[0x24C251390](v12, -1, -1);
    }

    v17 = swift_allocObject();
    v17[2] = a3;
    v17[3] = a4;
    v17[4] = a5;
    v18 = qword_27F0630A8;

    if (a3 == 1)
    {
      if (v18 != -1)
      {
        swift_once();
      }

      v19 = qword_27F076FB0;
      v26 = sub_24B9A8924;
      v27 = v17;
      aBlock = MEMORY[0x277D85DD0];
      v23 = 1107296256;
      v24 = sub_24B9A5F78;
      v25 = &block_descriptor_39;
      v20 = _Block_copy(&aBlock);

      [v19 recommendedDeniedContactsForDNDModeSemanticType:a1 reply:v20];
    }

    else
    {
      if (v18 != -1)
      {
        swift_once();
      }

      v21 = qword_27F076FB0;
      v26 = sub_24B9A8924;
      v27 = v17;
      aBlock = MEMORY[0x277D85DD0];
      v23 = 1107296256;
      v24 = sub_24B9A5F78;
      v25 = &block_descriptor_36;
      v20 = _Block_copy(&aBlock);

      [v21 recommendedAllowedContactsForDNDModeSemanticType:a1 reply:v20];
    }

    _Block_release(v20);
  }
}

uint64_t sub_24B9A5F78(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_24B8F37E8(0, &qword_27F066C68);
    v4 = sub_24BAAA12C();
  }

  v6 = a3;
  v5(v4, a3);
}

void static Suggestions.recommendedAndCandidateSuggestedContactIds(semanticType:exceptionType:completionHandler:)(uint64_t a1, char a2, uint64_t a3, void (*a4)(void, void), uint64_t a5)
{
  if (a2)
  {
    a4(MEMORY[0x277D84F90], MEMORY[0x277D84F90]);
  }

  else
  {
    if (qword_27F0630F0 != -1)
    {
      swift_once();
    }

    v9 = sub_24BAA812C();
    __swift_project_value_buffer(v9, qword_27F077038);
    v10 = sub_24BAA810C();
    v11 = sub_24BAAA29C();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      aBlock = v13;
      *v12 = 136446466;
      *(v12 + 4) = sub_24B8E49D4(0x6974736567677553, 0xEB00000000736E6FLL, &aBlock);
      *(v12 + 12) = 2080;
      type metadata accessor for DNDModeSemanticType(0);
      v14 = sub_24BAAA04C();
      v16 = sub_24B8E49D4(v14, v15, &aBlock);

      *(v12 + 14) = v16;
      _os_log_impl(&dword_24B8D3000, v10, v11, "[%{public}s] recommended and candidate suggestedContactIds for semanticType: %s", v12, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C251390](v13, -1, -1);
      MEMORY[0x24C251390](v12, -1, -1);
    }

    v17 = swift_allocObject();
    v17[2] = a3;
    v17[3] = a4;
    v17[4] = a5;
    v18 = qword_27F0630A8;

    if (a3 == 1)
    {
      if (v18 != -1)
      {
        swift_once();
      }

      v19 = qword_27F076FB0;
      v26 = sub_24B9A894C;
      v27 = v17;
      aBlock = MEMORY[0x277D85DD0];
      v23 = 1107296256;
      v24 = sub_24B9A3000;
      v25 = &block_descriptor_48;
      v20 = _Block_copy(&aBlock);

      [v19 recommendedAndCandidateDeniedContactsForDNDModeSemanticType:a1 reply:v20];
    }

    else
    {
      if (v18 != -1)
      {
        swift_once();
      }

      v21 = qword_27F076FB0;
      v26 = sub_24B9A894C;
      v27 = v17;
      aBlock = MEMORY[0x277D85DD0];
      v23 = 1107296256;
      v24 = sub_24B9A3000;
      v25 = &block_descriptor_45;
      v20 = _Block_copy(&aBlock);

      [v21 recommendedAndCandidateAllowedContactsForDNDModeSemanticType:a1 reply:v20];
    }

    _Block_release(v20);
  }
}

uint64_t static Suggestions.suggestedContactIds(modeUUID:exceptionType:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  v42 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0669D0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v39 - v8;
  v10 = sub_24BAA7E4C();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v39 - v15;
  sub_24B9A87F4(a1, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_24B9A8864(v9);
    return v42(MEMORY[0x277D84F90]);
  }

  else
  {
    (*(v11 + 32))(v16, v9, v10);
    if (qword_27F0630F0 != -1)
    {
      swift_once();
    }

    v18 = sub_24BAA812C();
    __swift_project_value_buffer(v18, qword_27F077038);
    (*(v11 + 16))(v14, v16, v10);
    v19 = sub_24BAA810C();
    v20 = sub_24BAAA29C();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v41 = a2;
      v22 = v21;
      v40 = swift_slowAlloc();
      aBlock = v40;
      *v22 = 136446466;
      *(v22 + 4) = sub_24B8E49D4(0x6974736567677553, 0xEB00000000736E6FLL, &aBlock);
      *(v22 + 12) = 2080;
      sub_24B9A88CC();
      v23 = sub_24BAAA76C();
      v39 = v16;
      v24 = a4;
      v26 = v25;
      v27 = *(v11 + 8);
      v27(v14, v10);
      v28 = sub_24B8E49D4(v23, v26, &aBlock);
      a4 = v24;
      v16 = v39;

      *(v22 + 14) = v28;
      _os_log_impl(&dword_24B8D3000, v19, v20, "[%{public}s] suggestedContactIds for dndMode: %s", v22, 0x16u);
      v29 = v40;
      swift_arrayDestroy();
      MEMORY[0x24C251390](v29, -1, -1);
      v30 = v22;
      a2 = v41;
      MEMORY[0x24C251390](v30, -1, -1);

      v31 = v27;
    }

    else
    {

      v31 = *(v11 + 8);
      v31(v14, v10);
    }

    v32 = swift_allocObject();
    v33 = v42;
    v32[2] = a2;
    v32[3] = v33;
    v32[4] = a4;
    v34 = qword_27F0630A8;

    if (a2 == 1)
    {
      if (v34 != -1)
      {
        swift_once();
      }

      v35 = qword_27F076FB0;
      v36 = sub_24BAA7DFC();
      v47 = sub_24B9A896C;
      v48 = v32;
      aBlock = MEMORY[0x277D85DD0];
      v44 = 1107296256;
      v45 = sub_24B9A5F78;
      v46 = &block_descriptor_57;
      v37 = _Block_copy(&aBlock);

      [v35 recommendedDeniedContactsForDNDMode:v36 reply:v37];
    }

    else
    {
      if (v34 != -1)
      {
        swift_once();
      }

      v38 = qword_27F076FB0;
      v36 = sub_24BAA7DFC();
      v47 = sub_24B9A896C;
      v48 = v32;
      aBlock = MEMORY[0x277D85DD0];
      v44 = 1107296256;
      v45 = sub_24B9A5F78;
      v46 = &block_descriptor_54;
      v37 = _Block_copy(&aBlock);

      [v38 recommendedAllowedContactsForDNDMode:v36 reply:v37];
    }

    _Block_release(v37);

    return (v31)(v16, v10);
  }
}

uint64_t sub_24B9A6930(unint64_t a1, uint64_t a2, const char *a3, uint64_t (*a4)(void *), uint64_t a5, const char *a6)
{
  if (!a1)
  {
    return a4(MEMORY[0x277D84F90]);
  }

  if (qword_27F0630F0 != -1)
  {
LABEL_29:
    swift_once();
  }

  v9 = sub_24BAA812C();
  __swift_project_value_buffer(v9, qword_27F077038);

  v10 = sub_24BAA810C();
  v11 = sub_24BAAA29C();
  v12 = a1 >> 62;
  if (os_log_type_enabled(v10, v11))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v34[0] = v14;
    *v13 = 136446722;
    *(v13 + 4) = sub_24B8E49D4(0x6974736567677553, 0xEB00000000736E6FLL, v34);
    *(v13 + 12) = 2048;
    *(v13 + 14) = a3;
    *(v13 + 22) = 2048;
    if (v12)
    {
      v15 = sub_24BAAA52C();
    }

    else
    {
      v15 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v13 + 24) = v15;

    _os_log_impl(&dword_24B8D3000, v10, v11, a6, v13, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x24C251390](v14, -1, -1);
    MEMORY[0x24C251390](v13, -1, -1);
  }

  else
  {
  }

  if (v12)
  {
    a6 = sub_24BAAA52C();
    if (a6)
    {
LABEL_11:
      v17 = 0;
      v18 = MEMORY[0x277D84F90];
      do
      {
        a3 = v17;
        while (1)
        {
          if ((a1 & 0xC000000000000001) != 0)
          {
            v19 = MEMORY[0x24C2506E0](a3, a1);
          }

          else
          {
            if (a3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_28;
            }

            v19 = *(a1 + 8 * a3 + 32);
          }

          v20 = v19;
          v17 = a3 + 1;
          if (__OFADD__(a3, 1))
          {
            __break(1u);
LABEL_28:
            __break(1u);
            goto LABEL_29;
          }

          v21 = [v19 cnContactId];
          if (v21)
          {
            break;
          }

          ++a3;
          if (v17 == a6)
          {
            goto LABEL_32;
          }
        }

        v22 = v21;
        v23 = sub_24BAAA01C();
        v32 = v24;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = sub_24B99A290(0, *(v18 + 2) + 1, 1, v18);
        }

        v26 = *(v18 + 2);
        v25 = *(v18 + 3);
        if (v26 >= v25 >> 1)
        {
          v18 = sub_24B99A290((v25 > 1), v26 + 1, 1, v18);
        }

        *(v18 + 2) = v26 + 1;
        v27 = &v18[16 * v26];
        *(v27 + 4) = v23;
        *(v27 + 5) = v32;
      }

      while (v17 != a6);
      goto LABEL_32;
    }
  }

  else
  {
    a6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (a6)
    {
      goto LABEL_11;
    }
  }

  v18 = MEMORY[0x277D84F90];
LABEL_32:
  if (qword_27F0630D0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v28 = xmmword_27F076FF0;

  v29 = v28;
  v30 = *(&v28 + 1);

  v31 = sub_24BA22340(v18, v30);

  a4(v31);
}

uint64_t static Suggestions.recommendedAndCandidateSuggestedContactIds(modeUUID:exceptionType:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, void), uint64_t a4)
{
  v42 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0669D0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v39 - v8;
  v10 = sub_24BAA7E4C();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v39 - v15;
  sub_24B9A87F4(a1, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_24B9A8864(v9);
    return v42(MEMORY[0x277D84F90], MEMORY[0x277D84F90]);
  }

  else
  {
    (*(v11 + 32))(v16, v9, v10);
    if (qword_27F0630F0 != -1)
    {
      swift_once();
    }

    v18 = sub_24BAA812C();
    __swift_project_value_buffer(v18, qword_27F077038);
    (*(v11 + 16))(v14, v16, v10);
    v19 = sub_24BAA810C();
    v20 = sub_24BAAA29C();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v41 = a2;
      v22 = v21;
      v40 = swift_slowAlloc();
      aBlock = v40;
      *v22 = 136446466;
      *(v22 + 4) = sub_24B8E49D4(0x6974736567677553, 0xEB00000000736E6FLL, &aBlock);
      *(v22 + 12) = 2080;
      sub_24B9A88CC();
      v23 = sub_24BAAA76C();
      v39 = v16;
      v24 = a4;
      v26 = v25;
      v27 = *(v11 + 8);
      v27(v14, v10);
      v28 = sub_24B8E49D4(v23, v26, &aBlock);
      a4 = v24;
      v16 = v39;

      *(v22 + 14) = v28;
      _os_log_impl(&dword_24B8D3000, v19, v20, "[%{public}s] recommended and candidate suggestedContactIds for dndMode: %s", v22, 0x16u);
      v29 = v40;
      swift_arrayDestroy();
      MEMORY[0x24C251390](v29, -1, -1);
      v30 = v22;
      a2 = v41;
      MEMORY[0x24C251390](v30, -1, -1);

      v31 = v27;
    }

    else
    {

      v31 = *(v11 + 8);
      v31(v14, v10);
    }

    v32 = swift_allocObject();
    v33 = v42;
    v32[2] = a2;
    v32[3] = v33;
    v32[4] = a4;
    v34 = qword_27F0630A8;

    if (a2 == 1)
    {
      if (v34 != -1)
      {
        swift_once();
      }

      v35 = qword_27F076FB0;
      v36 = sub_24BAA7DFC();
      v47 = sub_24B9A96BC;
      v48 = v32;
      aBlock = MEMORY[0x277D85DD0];
      v44 = 1107296256;
      v45 = sub_24B9A3000;
      v46 = &block_descriptor_66_0;
      v37 = _Block_copy(&aBlock);

      [v35 recommendedAndCandidateDeniedContactsForDNDMode:v36 reply:v37];
    }

    else
    {
      if (v34 != -1)
      {
        swift_once();
      }

      v38 = qword_27F076FB0;
      v36 = sub_24BAA7DFC();
      v47 = sub_24B9A96BC;
      v48 = v32;
      aBlock = MEMORY[0x277D85DD0];
      v44 = 1107296256;
      v45 = sub_24B9A3000;
      v46 = &block_descriptor_63;
      v37 = _Block_copy(&aBlock);

      [v38 recommendedAndCandidateAllowedContactsForDNDMode:v36 reply:v37];
    }

    _Block_release(v37);

    return (v31)(v16, v10);
  }
}

uint64_t sub_24B9A72AC(void *a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(void *, void *))
{
  if (!a1)
  {
    return a4(MEMORY[0x277D84F90], MEMORY[0x277D84F90]);
  }

  v5 = qword_27F0630F0;
  v6 = a1;
  if (v5 != -1)
  {
    goto LABEL_55;
  }

  while (1)
  {
    v7 = sub_24BAA812C();
    __swift_project_value_buffer(v7, qword_27F077038);
    v8 = v6;
    v9 = sub_24BAA810C();
    v10 = sub_24BAAA29C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v56[0] = v12;
      *v11 = 136446978;
      *(v11 + 4) = sub_24B8E49D4(0x6974736567677553, 0xEB00000000736E6FLL, v56);
      *(v11 + 12) = 2048;
      *(v11 + 14) = a3;
      *(v11 + 22) = 2048;
      v13 = [v8 recommendedContacts];
      sub_24B8F37E8(0, &qword_27F066C68);
      v14 = sub_24BAAA12C();

      v15 = v14 >> 62 ? sub_24BAAA52C() : *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);

      *(v11 + 24) = v15;

      *(v11 + 32) = 2048;
      v16 = [v8 candidateContacts];
      v17 = sub_24BAAA12C();

      v18 = v17 >> 62 ? sub_24BAAA52C() : *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);

      *(v11 + 34) = v18;

      _os_log_impl(&dword_24B8D3000, v9, v10, "[%{public}s] for exceptionType: %lu suggestedContactIds returned recommended count: %ld and candidate count: %ld", v11, 0x2Au);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x24C251390](v12, -1, -1);
      MEMORY[0x24C251390](v11, -1, -1);
    }

    else
    {
    }

    v6 = [v8 recommendedContacts];
    sub_24B8F37E8(0, &qword_27F066C68);
    v20 = sub_24BAAA12C();

    v21 = v20 >> 62 ? sub_24BAAA52C() : *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v55 = v8;
    if (v21)
    {
      v22 = 0;
      v23 = MEMORY[0x277D84F90];
      do
      {
        a3 = v22;
        while (1)
        {
          if ((v20 & 0xC000000000000001) != 0)
          {
            v24 = MEMORY[0x24C2506E0](a3, v20);
          }

          else
          {
            if (a3 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_52;
            }

            v24 = *(v20 + 8 * a3 + 32);
          }

          v25 = v24;
          v22 = a3 + 1;
          if (__OFADD__(a3, 1))
          {
            __break(1u);
LABEL_52:
            __break(1u);
            goto LABEL_53;
          }

          v26 = [v24 cnContactId];
          if (v26)
          {
            break;
          }

          ++a3;
          if (v22 == v21)
          {
            goto LABEL_31;
          }
        }

        v27 = v26;
        v28 = sub_24BAAA01C();
        v52 = v29;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v23 = sub_24B99A290(0, *(v23 + 2) + 1, 1, v23);
        }

        v31 = *(v23 + 2);
        v30 = *(v23 + 3);
        v6 = (v31 + 1);
        if (v31 >= v30 >> 1)
        {
          v23 = sub_24B99A290((v30 > 1), v31 + 1, 1, v23);
        }

        *(v23 + 2) = v6;
        v32 = &v23[16 * v31];
        *(v32 + 4) = v28;
        *(v32 + 5) = v52;
      }

      while (v22 != v21);
    }

    else
    {
      v23 = MEMORY[0x277D84F90];
    }

LABEL_31:

    if (qword_27F0630D0 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v33 = xmmword_27F076FF0;

    v34 = v33;
    v35 = *(&v33 + 1);

    v52 = sub_24BA22340(v23, v35);

    v6 = [v55 candidateContacts];
    v36 = sub_24BAAA12C();

    if (v36 >> 62)
    {
      break;
    }

    a3 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!a3)
    {
      goto LABEL_58;
    }

LABEL_35:
    v37 = 0;
    v38 = MEMORY[0x277D84F90];
LABEL_36:
    v39 = v37;
    while (1)
    {
      if ((v36 & 0xC000000000000001) != 0)
      {
        v40 = MEMORY[0x24C2506E0](v39, v36);
      }

      else
      {
        if (v39 >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_54;
        }

        v40 = *(v36 + 8 * v39 + 32);
      }

      v6 = v40;
      v37 = v39 + 1;
      if (__OFADD__(v39, 1))
      {
        break;
      }

      v41 = [v40 cnContactId];
      if (v41)
      {
        v42 = v41;
        v43 = sub_24BAAA01C();
        v54 = v44;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v38 = sub_24B99A290(0, *(v38 + 2) + 1, 1, v38);
        }

        v46 = *(v38 + 2);
        v45 = *(v38 + 3);
        v6 = (v46 + 1);
        if (v46 >= v45 >> 1)
        {
          v38 = sub_24B99A290((v45 > 1), v46 + 1, 1, v38);
        }

        *(v38 + 2) = v6;
        v47 = &v38[16 * v46];
        *(v47 + 4) = v43;
        *(v47 + 5) = v54;
        if (v37 != a3)
        {
          goto LABEL_36;
        }

        goto LABEL_59;
      }

      ++v39;
      if (v37 == a3)
      {
        goto LABEL_59;
      }
    }

LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    swift_once();
  }

  a3 = sub_24BAAA52C();
  if (a3)
  {
    goto LABEL_35;
  }

LABEL_58:
  v38 = MEMORY[0x277D84F90];
LABEL_59:

  v48 = xmmword_27F076FF0;

  v49 = v48;
  v50 = *(&v48 + 1);

  v51 = sub_24BA22340(v38, v50);

  a4(v52, v51);
}

uint64_t ConfigurationUIFlowLogging.UIContext.hashValue.getter()
{
  v1 = *v0;
  sub_24BAAA7FC();
  MEMORY[0x24C2508C0](v1);
  return sub_24BAAA84C();
}

void static ConfigurationUIFlowLogging.logContactsChangesOnBoarding(modeUUID:exceptionType:suggestedContactIDs:candidateContactIDs:allowedContacts:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v44 = a4;
  v9 = sub_24BAA7E4C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = [objc_allocWithZone(MEMORY[0x277CEB688]) init];
  if (qword_27F0630F0 != -1)
  {
    swift_once();
  }

  v13 = sub_24BAA812C();
  __swift_project_value_buffer(v13, qword_27F077038);
  (*(v10 + 16))(v12, a1, v9);

  v14 = sub_24BAA810C();
  v15 = sub_24BAAA2CC();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v41 = a2;
    v17 = v16;
    v40 = swift_slowAlloc();
    v45 = v40;
    *v17 = 136447746;
    *(v17 + 4) = sub_24B8E49D4(0xD00000000000001ALL, 0x800000024BAB5320, &v45);
    *(v17 + 12) = 2080;
    sub_24B9A88CC();
    v18 = sub_24BAAA76C();
    v42 = a1;
    v20 = v19;
    (*(v10 + 8))(v12, v9);
    v21 = sub_24B8E49D4(v18, v20, &v45);

    *(v17 + 14) = v21;
    *(v17 + 22) = 1024;
    *(v17 + 24) = 0;
    *(v17 + 28) = 1024;
    *(v17 + 30) = 1;
    *(v17 + 34) = 2080;
    v22 = MEMORY[0x277D837D0];
    v23 = MEMORY[0x24C2501F0](MEMORY[0x277D84F90], MEMORY[0x277D837D0]);
    v25 = sub_24B8E49D4(v23, v24, &v45);

    *(v17 + 36) = v25;
    *(v17 + 44) = 2080;
    v26 = MEMORY[0x24C2501F0](a3, v22);
    v28 = sub_24B8E49D4(v26, v27, &v45);

    *(v17 + 46) = v28;
    *(v17 + 54) = 2080;
    v29 = MEMORY[0x24C2501F0](a5, v22);
    v31 = sub_24B8E49D4(v29, v30, &v45);

    *(v17 + 56) = v31;
    _os_log_impl(&dword_24B8D3000, v14, v15, "[%{public}s] logModeConfigurationChanges forModeUUID: %s, modeConfigurationUI: %d, modeConfigurationEntityType: %d, previousEntityIdentifiers: %s, suggestedEntityIdentifiers: %s, currentEntityIdentifiers: %s", v17, 0x40u);
    v32 = v40;
    swift_arrayDestroy();
    MEMORY[0x24C251390](v32, -1, -1);
    v33 = v17;
    a2 = v41;
    MEMORY[0x24C251390](v33, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v12, v9);
  }

  v34 = sub_24BAA7DFC();
  v35 = sub_24BAAA11C();
  v36 = sub_24BAAA11C();
  v37 = sub_24BAAA11C();
  v38 = sub_24BAAA11C();
  v39 = v43;
  [v43 logModeConfigurationChangesForModeUUID:v34 modeConfigurationUI:0 modeConfigurationEntityType:1 modeConfigurationType:a2 != 0 previousEntityIdentifiers:v35 suggestedEntityIdentifiers:v36 candidateEntityIdentifiers:v37 currentEntityIdentifiers:v38];
}

void ConfigurationUIFlowLogging.logContactsChanges(modeUUID:exceptionType:context:previousContactIDs:suggestedContactIDs:candidateContactIDs:currentContactIds:)(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v51 = a6;
  v14 = sub_24BAA7E4C();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = *a3;
  v49 = *v7;
  if (qword_27F0630F0 != -1)
  {
    swift_once();
  }

  v18 = sub_24BAA812C();
  __swift_project_value_buffer(v18, qword_27F077038);
  v19 = *(v15 + 16);
  v48 = a1;
  v19(v17, a1, v14);

  v20 = sub_24BAA810C();
  v21 = sub_24BAAA2CC();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v47 = a7;
    v23 = v22;
    v45 = swift_slowAlloc();
    v52 = v45;
    *v23 = 136447746;
    *(v23 + 4) = sub_24B8E49D4(0xD00000000000001ALL, 0x800000024BAB5320, &v52);
    *(v23 + 12) = 2080;
    sub_24B9A88CC();
    v24 = sub_24BAAA76C();
    v46 = a2;
    v26 = v25;
    (*(v15 + 8))(v17, v14);
    v27 = sub_24B8E49D4(v24, v26, &v52);

    *(v23 + 14) = v27;
    *(v23 + 22) = 1024;
    v28 = v50;
    *(v23 + 24) = v50;
    *(v23 + 28) = 1024;
    *(v23 + 30) = 1;
    *(v23 + 34) = 2080;
    v29 = MEMORY[0x277D837D0];
    v30 = MEMORY[0x24C2501F0](a4, MEMORY[0x277D837D0]);
    v32 = sub_24B8E49D4(v30, v31, &v52);

    *(v23 + 36) = v32;
    *(v23 + 44) = 2080;
    v33 = MEMORY[0x24C2501F0](a5, v29);
    v35 = sub_24B8E49D4(v33, v34, &v52);

    *(v23 + 46) = v35;
    *(v23 + 54) = 2080;
    v36 = MEMORY[0x24C2501F0](v47, v29);
    v38 = sub_24B8E49D4(v36, v37, &v52);

    *(v23 + 56) = v38;
    a2 = v46;
    _os_log_impl(&dword_24B8D3000, v20, v21, "[%{public}s] logModeConfigurationChanges forModeUUID: %s, modeConfigurationUI: %d, modeConfigurationEntityType: %d, previousEntityIdentifiers: %s, suggestedEntityIdentifiers: %s, currentEntityIdentifiers: %s", v23, 0x40u);
    v39 = v45;
    swift_arrayDestroy();
    MEMORY[0x24C251390](v39, -1, -1);
    MEMORY[0x24C251390](v23, -1, -1);
  }

  else
  {

    (*(v15 + 8))(v17, v14);
    v28 = v50;
  }

  v40 = sub_24BAA7DFC();
  v41 = sub_24BAAA11C();
  v42 = sub_24BAAA11C();
  v43 = sub_24BAAA11C();
  v44 = sub_24BAAA11C();
  [v49 logModeConfigurationChangesForModeUUID:v40 modeConfigurationUI:v28 modeConfigurationEntityType:1 modeConfigurationType:a2 != 0 previousEntityIdentifiers:v41 suggestedEntityIdentifiers:v42 candidateEntityIdentifiers:v43 currentEntityIdentifiers:v44];
}

void ConfigurationUIFlowLogging.logOnboardingDismissed(modeUUID:context:)(uint64_t a1, _BYTE *a2)
{
  if (*a2 == 2)
  {
    v4 = *v2;
    v5 = sub_24BAA7DFC();
    [v4 logModeConfigurationChangesOnboardingDismissedForModeUUID_];
  }
}

void ConfigurationUIFlowLogging.logAppsChanges(modeUUID:exceptionType:context:previousBundleIDs:suggestedBundleIDs:candidateBundleIDs:currentBundleIds:)(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v49 = a6;
  v46 = a2;
  v13 = sub_24BAA7E4C();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = *a3;
  v47 = *v7;
  if (qword_27F0630F0 != -1)
  {
    swift_once();
  }

  v17 = sub_24BAA812C();
  __swift_project_value_buffer(v17, qword_27F077038);
  (*(v14 + 16))(v16, a1, v13);

  v18 = sub_24BAA810C();
  v19 = sub_24BAAA2CC();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v45 = a7;
    v21 = v20;
    v44[0] = swift_slowAlloc();
    v50 = v44[0];
    *v21 = 136447746;
    *(v21 + 4) = sub_24B8E49D4(0xD00000000000001ALL, 0x800000024BAB5320, &v50);
    *(v21 + 12) = 2080;
    sub_24B9A88CC();
    v22 = sub_24BAAA76C();
    v44[1] = a1;
    v24 = v23;
    (*(v14 + 8))(v16, v13);
    v25 = sub_24B8E49D4(v22, v24, &v50);

    *(v21 + 14) = v25;
    *(v21 + 22) = 1024;
    v26 = v48;
    *(v21 + 24) = v48;
    *(v21 + 28) = 1024;
    *(v21 + 30) = 0;
    *(v21 + 34) = 2080;
    v27 = MEMORY[0x277D837D0];
    v28 = MEMORY[0x24C2501F0](a4, MEMORY[0x277D837D0]);
    v30 = sub_24B8E49D4(v28, v29, &v50);

    *(v21 + 36) = v30;
    *(v21 + 44) = 2080;
    v31 = MEMORY[0x24C2501F0](a5, v27);
    v33 = sub_24B8E49D4(v31, v32, &v50);

    *(v21 + 46) = v33;
    *(v21 + 54) = 2080;
    v34 = MEMORY[0x24C2501F0](v45, v27);
    v36 = sub_24B8E49D4(v34, v35, &v50);

    *(v21 + 56) = v36;
    _os_log_impl(&dword_24B8D3000, v18, v19, "[%{public}s] logModeConfigurationChanges forModeUUID: %s, modeConfigurationUI: %d, modeConfigurationEntityType: %d, previousEntityIdentifiers: %s, suggestedEntityIdentifiers: %s, currentEntityIdentifiers: %s", v21, 0x40u);
    v37 = v44[0];
    swift_arrayDestroy();
    MEMORY[0x24C251390](v37, -1, -1);
    MEMORY[0x24C251390](v21, -1, -1);
  }

  else
  {

    (*(v14 + 8))(v16, v13);
    v26 = v48;
  }

  v38 = v46 != 0;
  v39 = sub_24BAA7DFC();
  v40 = sub_24BAAA11C();
  v41 = sub_24BAAA11C();
  v42 = sub_24BAAA11C();
  v43 = sub_24BAAA11C();
  [v47 logModeConfigurationChangesForModeUUID:v39 modeConfigurationUI:v26 modeConfigurationEntityType:0 modeConfigurationType:v38 previousEntityIdentifiers:v40 suggestedEntityIdentifiers:v41 candidateEntityIdentifiers:v42 currentEntityIdentifiers:v43];
}

uint64_t sub_24B9A8764()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24B9A87F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0669D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B9A8864(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0669D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24B9A88CC()
{
  result = qword_27F066AA8;
  if (!qword_27F066AA8)
  {
    sub_24BAA7E4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F066AA8);
  }

  return result;
}

void *sub_24B9A8994(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_24B9A89B4@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

unint64_t sub_24B9A89E8()
{
  result = qword_27F066C60;
  if (!qword_27F066C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F066C60);
  }

  return result;
}

uint64_t sub_24B9A8A58(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_24B9A8AA0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24B9A8AFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0669D0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v38 - v7;
  v9 = sub_24BAA7E4C();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v38 - v14;
  sub_24B9A87F4(a1, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {

    sub_24B9A8864(v8);
    sub_24BA0F840(MEMORY[0x277D84F90], MEMORY[0x277D84F90], a3);
  }

  else
  {
    v41 = a2;
    (*(v10 + 32))(v15, v8, v9);
    v16 = qword_27F0630F0;

    if (v16 != -1)
    {
      swift_once();
    }

    v17 = sub_24BAA812C();
    __swift_project_value_buffer(v17, qword_27F077038);
    (*(v10 + 16))(v13, v15, v9);
    v18 = sub_24BAA810C();
    v19 = sub_24BAAA29C();
    v20 = os_log_type_enabled(v18, v19);
    v40 = v10;
    if (v20)
    {
      v21 = swift_slowAlloc();
      v39 = a3;
      v22 = v21;
      v23 = swift_slowAlloc();
      aBlock = v23;
      *v22 = 136446466;
      *(v22 + 4) = sub_24B8E49D4(0x6974736567677553, 0xEB00000000736E6FLL, &aBlock);
      *(v22 + 12) = 2080;
      sub_24B9A88CC();
      v24 = sub_24BAAA76C();
      v26 = v25;
      v27 = *(v10 + 8);
      v27(v13, v9);
      v28 = sub_24B8E49D4(v24, v26, &aBlock);

      *(v22 + 14) = v28;
      _os_log_impl(&dword_24B8D3000, v18, v19, "[%{public}s] recommended and candidate suggestedContactIds for dndMode: %s", v22, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C251390](v23, -1, -1);
      v29 = v22;
      a3 = v39;
      MEMORY[0x24C251390](v29, -1, -1);
    }

    else
    {

      v27 = *(v10 + 8);
      v27(v13, v9);
    }

    v30 = swift_allocObject();
    v31 = v41;
    v30[2] = v41;
    v30[3] = sub_24B9A963C;
    v30[4] = a3;
    v32 = qword_27F0630A8;

    if (v31 == 1)
    {
      if (v32 != -1)
      {
        swift_once();
      }

      v33 = qword_27F076FB0;
      v34 = sub_24BAA7DFC();
      v46 = sub_24B9A96BC;
      v47 = v30;
      aBlock = MEMORY[0x277D85DD0];
      v43 = 1107296256;
      v44 = sub_24B9A3000;
      v45 = &block_descriptor_95;
      v35 = _Block_copy(&aBlock);

      [v33 recommendedAndCandidateDeniedContactsForDNDMode:v34 reply:v35];
    }

    else
    {
      if (v32 != -1)
      {
        swift_once();
      }

      v36 = qword_27F076FB0;
      v34 = sub_24BAA7DFC();
      v46 = sub_24B9A96BC;
      v47 = v30;
      aBlock = MEMORY[0x277D85DD0];
      v43 = 1107296256;
      v44 = sub_24B9A3000;
      v45 = &block_descriptor_92;
      v35 = _Block_copy(&aBlock);

      [v36 recommendedAndCandidateAllowedContactsForDNDMode:v34 reply:v35];
    }

    _Block_release(v35);

    v27(v15, v9);
  }
}

uint64_t sub_24B9A9098(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F0669D0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v38 - v7;
  v9 = sub_24BAA7E4C();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v38 - v14;
  sub_24B9A87F4(a1, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {

    sub_24B9A8864(v8);
    sub_24BA0F1C8(MEMORY[0x277D84F90], MEMORY[0x277D84F90], a3);
  }

  else
  {
    v41 = a2;
    (*(v10 + 32))(v15, v8, v9);
    v16 = qword_27F0630F0;

    if (v16 != -1)
    {
      swift_once();
    }

    v17 = sub_24BAA812C();
    __swift_project_value_buffer(v17, qword_27F077038);
    (*(v10 + 16))(v13, v15, v9);
    v18 = sub_24BAA810C();
    v19 = sub_24BAAA29C();
    v20 = os_log_type_enabled(v18, v19);
    v40 = v10;
    if (v20)
    {
      v21 = swift_slowAlloc();
      v39 = a3;
      v22 = v21;
      v23 = swift_slowAlloc();
      aBlock = v23;
      *v22 = 136446466;
      *(v22 + 4) = sub_24B8E49D4(0x6974736567677553, 0xEB00000000736E6FLL, &aBlock);
      *(v22 + 12) = 2080;
      sub_24B9A88CC();
      v24 = sub_24BAAA76C();
      v26 = v25;
      v27 = *(v10 + 8);
      v27(v13, v9);
      v28 = sub_24B8E49D4(v24, v26, &aBlock);

      *(v22 + 14) = v28;
      _os_log_impl(&dword_24B8D3000, v18, v19, "[%{public}s] recommended and suggested suggestedBundleIds for dndMode: %s", v22, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C251390](v23, -1, -1);
      v29 = v22;
      a3 = v39;
      MEMORY[0x24C251390](v29, -1, -1);
    }

    else
    {

      v27 = *(v10 + 8);
      v27(v13, v9);
    }

    v30 = swift_allocObject();
    v31 = v41;
    v30[2] = v41;
    v30[3] = sub_24B9A9634;
    v30[4] = a3;
    v32 = qword_27F0630A8;

    if (v31 == 1)
    {
      if (v32 != -1)
      {
        swift_once();
      }

      v33 = qword_27F076FB0;
      v34 = sub_24BAA7DFC();
      v46 = sub_24B9A96B8;
      v47 = v30;
      aBlock = MEMORY[0x277D85DD0];
      v43 = 1107296256;
      v44 = sub_24B9A3000;
      v45 = &block_descriptor_85;
      v35 = _Block_copy(&aBlock);

      [v33 recommendedAndCandidateDeniedAppsForDNDMode:v34 reply:v35];
    }

    else
    {
      if (v32 != -1)
      {
        swift_once();
      }

      v36 = qword_27F076FB0;
      v34 = sub_24BAA7DFC();
      v46 = sub_24B9A96B8;
      v47 = v30;
      aBlock = MEMORY[0x277D85DD0];
      v43 = 1107296256;
      v44 = sub_24B9A3000;
      v45 = &block_descriptor_82;
      v35 = _Block_copy(&aBlock);

      [v36 recommendedAndCandidateAllowedAppsForDNDMode:v34 reply:v35];
    }

    _Block_release(v35);

    v27(v15, v9);
  }
}

unint64_t sub_24B9A970C(uint64_t a1, unint64_t a2)
{
  v4 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_22:
    v5 = sub_24BAAA52C();
  }

  else
  {
    v5 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  while (1)
  {
    if (v5 == v6)
    {
      return 0;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x24C2506E0](v6, a2);
    }

    else
    {
      if (v6 >= *(v4 + 16))
      {
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      v7 = *(a2 + 8 * v6 + 32);
    }

    if (*(v7 + 16) == *(a1 + 16) && *(v7 + 24) == *(a1 + 24))
    {
      break;
    }

    v9 = sub_24BAAA78C();

    if (v9)
    {
      return v6;
    }

    if (__OFADD__(v6++, 1))
    {
      goto LABEL_21;
    }
  }

  return v6;
}

uint64_t sub_24B9A9810(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v5 = *(a3 + 16);
  if (v5)
  {
    v10 = 0;
    v11 = (a3 + 56);
    do
    {
      v14 = *(v11 - 3);
      v16 = *(v11 - 2);
      v15 = *(v11 - 1);
      v17 = *v11;
      if (v14)
      {
        if (!a1)
        {
          goto LABEL_10;
        }

        if ([*(v14 + 16) isEqual_])
        {
          v18 = v16 == a4;
        }

        else
        {
          v18 = 0;
        }
      }

      else
      {
        if (a1)
        {
          goto LABEL_10;
        }

        v18 = v16 == a4;
      }

      if (v18 && v15 == a5 && *&v17 == a2)
      {
        return v10;
      }

LABEL_10:
      v11 += 4;
      ++v10;
    }

    while (v5 != v10);
  }

  return 0;
}

uint64_t sub_24B9A98E8(uint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) == 0)
  {
    return a2;
  }

  __break(1u);
  return result;
}

unint64_t sub_24B9A9920(unint64_t result, uint64_t a2, uint64_t a3, int64_t a4, unint64_t a5)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v5 = a5 >> 1;
  if (__OFSUB__(a5 >> 1, a4))
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (!result || (v6 = a5 >> 1, (a5 >> 1) - a4 >= result))
  {
    v6 = a4 + result;
    if (__OFADD__(a4, result))
    {
      goto LABEL_17;
    }
  }

  if (v6 < a4)
  {
    goto LABEL_13;
  }

  if (v5 < a4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v5 >= v6)
  {
    if ((v6 & 0x8000000000000000) == 0)
    {
      return a2;
    }

    goto LABEL_16;
  }

LABEL_15:
  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_24B9A9998@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24BAA992C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24BAA89FC();
  v47 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v1 + 16);
  if (v10)
  {
    v46 = v4;
    v54 = *(v1 + 40);
    v11 = *(v1 + 32);
    v53 = v11;
    v12 = v54;
    swift_retain_n();
    if (v12 == 1)
    {
      v13 = v11;
    }

    else
    {
      sub_24B9AED8C(&v53, &v50);
      sub_24BAAA2BC();
      v14 = sub_24BAA907C();
      v45[1] = v10;
      v15 = v11;
      v16 = v9;
      v17 = v12;
      v18 = v6;
      v19 = v7;
      v20 = v3;
      v21 = a1;
      v22 = v14;
      sub_24BAA80FC();

      a1 = v21;
      v3 = v20;
      v7 = v19;
      v6 = v18;
      v12 = v17;
      v9 = v16;
      v11 = v15;
      sub_24BAA89EC();
      swift_getAtKeyPath();
      sub_24B8F35E4(&v53, &qword_27F066C80);
      (*(v47 + 8))(v9, v7);
      v13 = v50;
    }

    v23 = *v1;
    v24 = *(v1 + 8);
    v25 = sub_24B9AA28C(*v1, v24, v13);

    if (v25)
    {

      v26 = v46;
      (*(v46 + 104))(v6, *MEMORY[0x277CE0FE0], v3);
      v27 = sub_24BAA997C();
      (*(v26 + 8))(v6, v3);
      v48 = *&v27;
      LOBYTE(v49) = 0;
      swift_retain_n();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066C90);
      sub_24B9AEE88();
      sub_24BAA8D0C();
      v48 = v50;
      v49 = v51;
      j__swift_retain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066C88);
      sub_24B9AEDFC();
      sub_24BAA8D0C();

      j__swift_release();
    }

    else
    {
      v45[0] = a1;
      if (v12)
      {
        v29 = v11;
      }

      else
      {

        sub_24BAAA2BC();
        v30 = sub_24BAA907C();
        sub_24BAA80FC();

        sub_24BAA89EC();
        swift_getAtKeyPath();
        sub_24B8F35E4(&v53, &qword_27F066C80);
        (*(v47 + 8))(v9, v7);
        v29 = v50;
      }

      v31 = sub_24B9AA390(v23, v24, v29);

      if (v31)
      {
        if (v12)
        {
          v32 = v11;
        }

        else
        {

          sub_24BAAA2BC();
          v34 = sub_24BAA907C();
          sub_24BAA80FC();

          sub_24BAA89EC();
          swift_getAtKeyPath();
          sub_24B8F35E4(&v53, &qword_27F066C80);
          (*(v47 + 8))(v9, v7);
          v32 = v50;
        }

        a1 = v45[0];
        v35 = sub_24B9AA5DC([*(v23 + 16) platform], v24, v32);

        if (v35)
        {
          v36 = v35;
          sub_24BAA98FC();
          v37 = v46;
          (*(v46 + 104))(v6, *MEMORY[0x277CE0FE0], v3);
          v35 = sub_24BAA997C();

          (*(v37 + 8))(v6, v3);
        }

        v48 = *&v35;
        LOBYTE(v49) = 1;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066C90);
        sub_24B9AEE88();
        sub_24BAA8D0C();
        v48 = v50;
        v49 = v51;
        j__swift_retain();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066C88);
        sub_24B9AEDFC();
        sub_24BAA8D0C();

        j__swift_release();
      }

      else
      {
        if (v12)
        {
          v33 = v11;
        }

        else
        {

          sub_24BAAA2BC();
          v38 = sub_24BAA907C();
          sub_24BAA80FC();

          sub_24BAA89EC();
          swift_getAtKeyPath();
          sub_24B8F35E4(&v53, &qword_27F066C80);
          (*(v47 + 8))(v9, v7);
          v33 = v50;
        }

        a1 = v45[0];
        v39 = sub_24B9AA5DC([*(v23 + 16) platform], v24, v33);

        if (v39)
        {
          v40 = v39;
          sub_24BAA98FC();
          v41 = v46;
          (*(v46 + 104))(v6, *MEMORY[0x277CE0FE0], v3);
          v39 = sub_24BAA997C();

          (*(v41 + 8))(v6, v3);
        }

        v48 = *&v39;
        v49 = 256;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066C88);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F066C90);
        sub_24B9AEDFC();
        sub_24B9AEE88();
        sub_24BAA8D0C();
      }
    }

    v42 = v51;
    v43 = v52;
    *a1 = v50;
    *(a1 + 8) = v42;
    *(a1 + 9) = v43;
  }

  else
  {
    type metadata accessor for AppIconCache();
    sub_24B9B0B44(&qword_27F0651D0, v44, type metadata accessor for AppIconCache);
    result = sub_24BAA86DC();
    __break(1u);
  }

  return result;
}