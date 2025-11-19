uint64_t sub_1CFC25EE0()
{
  v2 = *v1;
  v3 = *(*v1 + 256);
  v9 = *v1;
  *(*v1 + 264) = v0;

  if (v0)
  {
    v4 = v2[23];
    v5 = v2[24];
    v6 = sub_1CFC260EC;
  }

  else
  {
    v7 = v2[31];

    v4 = v2[23];
    v5 = v2[24];
    v6 = sub_1CFC25FFC;
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

uint64_t sub_1CFC25FFC()
{
  v1 = v0[30];
  v3 = v0[21];
  v2 = v0[22];
  v4 = v0[17];
  v5 = v0[18];

  (*(v5 + 8))(v3, v4);
  v7 = v0[20];
  v6 = v0[21];
  v8 = v0[19];
  v9 = v0[16];
  v11 = v0[12];
  v10 = v0[13];
  v13 = v0[10];
  v12 = v0[11];

  v14 = v0[1];

  return v14();
}

uint64_t sub_1CFC260EC()
{
  v53 = v0;
  v1 = v0[31];
  v2 = v0[22];

  if (qword_1EE050010 != -1)
  {
    swift_once();
  }

  v3 = v0[33];
  v5 = v0[28];
  v4 = v0[29];
  v6 = v0[21];
  v7 = v0[19];
  v8 = v0[17];
  v9 = sub_1CFC9D938();
  __swift_project_value_buffer(v9, qword_1EE052308);
  v5(v7, v6, v8);
  v10 = v3;
  v11 = sub_1CFC9D918();
  v12 = sub_1CFC9FAD8();

  if (os_log_type_enabled(v11, v12))
  {
    v48 = v0[33];
    v14 = v0[18];
    v13 = v0[19];
    v15 = v0[17];
    v16 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v52 = v50;
    *v16 = 136315394;
    sub_1CFC1FED8(&unk_1EC4EDA68, MEMORY[0x1E69695A8]);
    v17 = sub_1CFCA0288();
    v19 = v18;
    v20 = *(v14 + 8);
    v20(v13, v15);
    v21 = sub_1CFBB531C(v17, v19, &v52);

    *(v16 + 4) = v21;
    *(v16 + 12) = 2112;
    v22 = v48;
    v23 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 14) = v23;
    *v47 = v23;
    _os_log_impl(&dword_1CFB9F000, v11, v12, "Failed to mark messageUUID: %s as read, error: %@.", v16, 0x16u);
    sub_1CFBC2FB0(v47, &qword_1EC4ED770, &qword_1CFCA2CF0);
    MEMORY[0x1D3873280](v47, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v50);
    MEMORY[0x1D3873280](v50, -1, -1);
    MEMORY[0x1D3873280](v16, -1, -1);
  }

  else
  {
    v25 = v0[18];
    v24 = v0[19];
    v26 = v0[17];

    v20 = *(v25 + 8);
    v20(v24, v26);
  }

  v27 = v0[27];
  v28 = v0[9];
  v29 = v0[33];
  v30 = v0[30];
  if (*(v28 + v27))
  {
    v32 = v0[25];
    v31 = v0[26];
    v49 = v0[21];
    v51 = v20;
    v34 = v0[17];
    v33 = v0[18];
    swift_getKeyPath();
    v35 = swift_task_alloc();
    *(v35 + 16) = v28;
    *(v35 + 24) = 0;
    v0[8] = v28;
    sub_1CFC9C148();

    v51(v49, v34);
  }

  else
  {
    v36 = v0[18] + 8;
    v20(v0[21], v0[17]);

    *(v28 + v27) = 0;
  }

  v38 = v0[20];
  v37 = v0[21];
  v39 = v0[19];
  v40 = v0[16];
  v42 = v0[12];
  v41 = v0[13];
  v44 = v0[10];
  v43 = v0[11];

  v45 = v0[1];

  return v45();
}

uint64_t sub_1CFC2651C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a5;
  v5[4] = sub_1CFC9F968();
  v5[5] = sub_1CFC9F958();
  v6 = *(MEMORY[0x1E69E86C0] + 4);
  v7 = swift_task_alloc();
  v5[6] = v7;
  *v7 = v5;
  v7[1] = sub_1CFC265DC;

  return MEMORY[0x1EEE6DA40]();
}

uint64_t sub_1CFC265DC()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 32);
  v7 = *v0;

  v5 = sub_1CFC9F938();

  return MEMORY[0x1EEE6DFA0](sub_1CFC26718, v5, v4);
}

uint64_t sub_1CFC26718()
{
  v1 = v0[5];
  v2 = v0[3];

  swift_getKeyPath();
  v0[2] = v2;
  sub_1CFC1FED8(&qword_1EE04DF70, type metadata accessor for VoicemailDetailContainerViewModel);
  sub_1CFC9C158();

  [*(v2 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__player) play];
  v3 = v0[1];

  return v3();
}

id sub_1CFC26838(char a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v8 = v4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED950, &qword_1CFCA2710);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v19 - v11;
  sub_1CFC1EAAC(a1);
  v13 = *(v4 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel_playerLoadingTask);
  if (v13)
  {
    v14 = sub_1CFC9F998();
    (*(*(v14 - 8) + 56))(v12, 1, 1, v14);
    sub_1CFC9F968();
    swift_retain_n();

    v15 = sub_1CFC9F958();
    v16 = swift_allocObject();
    v17 = MEMORY[0x1E69E85E0];
    v16[2] = v15;
    v16[3] = v17;
    v16[4] = v13;
    v16[5] = v8;
    sub_1CFBDC030(0, 0, v12, a3, v16);
  }

  else
  {
    swift_getKeyPath();
    v19[1] = v4;
    sub_1CFC1FED8(&qword_1EE04DF70, type metadata accessor for VoicemailDetailContainerViewModel);
    sub_1CFC9C158();

    return [*(v4 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__player) *a4];
  }
}

uint64_t sub_1CFC26A1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a5;
  v5[4] = sub_1CFC9F968();
  v5[5] = sub_1CFC9F958();
  v6 = *(MEMORY[0x1E69E86C0] + 4);
  v7 = swift_task_alloc();
  v5[6] = v7;
  *v7 = v5;
  v7[1] = sub_1CFC26ADC;

  return MEMORY[0x1EEE6DA40]();
}

uint64_t sub_1CFC26ADC()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 32);
  v7 = *v0;

  v5 = sub_1CFC9F938();

  return MEMORY[0x1EEE6DFA0](sub_1CFC26C18, v5, v4);
}

uint64_t sub_1CFC26C18()
{
  v1 = v0[5];
  v2 = v0[3];

  swift_getKeyPath();
  v0[2] = v2;
  sub_1CFC1FED8(&qword_1EE04DF70, type metadata accessor for VoicemailDetailContainerViewModel);
  sub_1CFC9C158();

  [*(v2 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__player) pause];
  v3 = v0[1];

  return v3();
}

id sub_1CFC26D0C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = a2;
  v8 = HIDWORD(a2);
  v9 = (v3 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__currentTime);
  v10 = *v9;
  v11 = v9[1];
  v12 = v9[2];
  if (sub_1CFC9FD48())
  {
    *v9 = a1;
    *(v9 + 2) = v6;
    *(v9 + 3) = v8;
    v9[2] = a3;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v16 = v4;
    sub_1CFC1FED8(&qword_1EE04DF70, type metadata accessor for VoicemailDetailContainerViewModel);
    sub_1CFC9C148();
  }

  swift_getKeyPath();
  v16 = v4;
  sub_1CFC1FED8(&qword_1EE04DF70, type metadata accessor for VoicemailDetailContainerViewModel);
  sub_1CFC9C158();

  v14 = *(v4 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__player);
  v16 = a1;
  v17 = v6;
  v18 = v8;
  v19 = a3;
  return [v14 seekToTime_];
}

uint64_t sub_1CFC26EF4(uint64_t a1, uint64_t a2)
{
  v43 = a2;
  v4 = sub_1CFC9D4D8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v45 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v35 = &v34 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v46 = &v34 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v36 = &v34 - v13;
  swift_getKeyPath();
  v47 = v2;
  sub_1CFC1FED8(&qword_1EE04DF70, type metadata accessor for VoicemailDetailContainerViewModel);
  sub_1CFC9C158();

  v37 = v2;
  v14 = *(v2 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__availableAudioRoutes);
  v15 = *(v14 + 16);

  v42 = v15;
  if (v15)
  {
    v17 = 0;
    v41 = v5 + 16;
    v38 = (v5 + 8);
    v44 = (v5 + 32);
    v18 = MEMORY[0x1E69E7CC0];
    v39 = v14;
    v40 = v4;
    v19 = v5;
    while (1)
    {
      if (v17 >= *(v14 + 16))
      {
        __break(1u);
        return result;
      }

      v20 = (*(v19 + 80) + 32) & ~*(v19 + 80);
      v21 = *(v19 + 72);
      (*(v19 + 16))(v46, v14 + v20 + v21 * v17, v4);
      if (sub_1CFC9D4A8() == a1 && v22 == v43)
      {
        break;
      }

      v23 = sub_1CFCA02B8();

      if (v23)
      {
        goto LABEL_10;
      }

      result = (*v38)(v46, v4);
LABEL_4:
      if (v42 == ++v17)
      {
        goto LABEL_16;
      }
    }

LABEL_10:
    v24 = a1;
    v25 = v19;
    v26 = *v44;
    (*v44)(v45, v46, v4);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v47 = v18;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1CFBCAA08(0, *(v18 + 16) + 1, 1);
      v18 = v47;
    }

    v29 = *(v18 + 16);
    v28 = *(v18 + 24);
    if (v29 >= v28 >> 1)
    {
      sub_1CFBCAA08(v28 > 1, v29 + 1, 1);
      v18 = v47;
    }

    *(v18 + 16) = v29 + 1;
    v30 = v18 + v20 + v29 * v21;
    v4 = v40;
    result = (v26)(v30, v45, v40);
    v19 = v25;
    a1 = v24;
    v14 = v39;
    goto LABEL_4;
  }

  v18 = MEMORY[0x1E69E7CC0];
  v19 = v5;
LABEL_16:

  if (!*(v18 + 16))
  {
  }

  v31 = v35;
  (*(v19 + 16))(v35, v18 + ((*(v19 + 80) + 32) & ~*(v19 + 80)), v4);

  v32 = v36;
  (*(v19 + 32))(v36, v31, v4);
  v33 = *(v37 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel_audioRouteService);
  sub_1CFC9D578();
  return (*(v19 + 8))(v32, v4);
}

void sub_1CFC27310()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE6F8, &qword_1CFCA6060);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v27 - v4;
  v6 = sub_1CFC9D4D8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v30 = v0;
  sub_1CFC1FED8(&qword_1EE04DF70, type metadata accessor for VoicemailDetailContainerViewModel);
  sub_1CFC9C158();

  v11 = OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__currentPickedAudioRoute;
  swift_beginAccess();
  sub_1CFBA29FC(v1 + v11, v5, &qword_1EC4EE6F8, &qword_1CFCA6060);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1CFBC2FB0(v5, &qword_1EC4EE6F8, &qword_1CFCA6060);
LABEL_5:
    v16 = [objc_opt_self() currentDevice];
    [v16 setProximityMonitoringEnabled_];

    return;
  }

  (*(v7 + 32))(v10, v5, v6);
  v12 = objc_opt_self();
  v13 = v7;
  v14 = [v12 currentDevice];
  v15 = [v14 userInterfaceIdiom];

  if (v15)
  {
    (*(v13 + 8))(v10, v6);
    goto LABEL_5;
  }

  v27 = v13;
  v28 = v6;
  v17 = v10;
  if ((sub_1CFC9D478() & 1) != 0 && (swift_getKeyPath(), v29 = v1, sub_1CFC9C158(), , *(v1 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__isPlaying[0]) == 1))
  {
    if (qword_1EE050010 != -1)
    {
      swift_once();
    }

    v18 = sub_1CFC9D938();
    __swift_project_value_buffer(v18, qword_1EE052308);
    v19 = sub_1CFC9D918();
    v20 = sub_1CFC9FAF8();
    v21 = &_swift_FORCE_LOAD___swiftCoreImage___CallsAppUI;
    if (!os_log_type_enabled(v19, v20))
    {
      v23 = 1;
      goto LABEL_19;
    }

    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_1CFB9F000, v19, v20, "Enabling proximity monitoring for voicemail", v22, 2u);
    v23 = 1;
  }

  else
  {
    if (qword_1EE050010 != -1)
    {
      swift_once();
    }

    v24 = sub_1CFC9D938();
    __swift_project_value_buffer(v24, qword_1EE052308);
    v19 = sub_1CFC9D918();
    v25 = sub_1CFC9FAF8();
    v21 = &_swift_FORCE_LOAD___swiftCoreImage___CallsAppUI;
    if (!os_log_type_enabled(v19, v25))
    {
      v23 = 0;
      goto LABEL_19;
    }

    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_1CFB9F000, v19, v25, "Disabling proximity monitoring for voicemail", v22, 2u);
    v23 = 0;
  }

  MEMORY[0x1D3873280](v22, -1, -1);
LABEL_19:

  v26 = [v12 v21[154]];
  [v26 setProximityMonitoringEnabled_];

  (*(v27 + 8))(v17, v28);
}

Swift::Void __swiftcall VoicemailDetailContainerViewModel.messageStoreDidUpdateMessages(_:)(Swift::OpaquePointer a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED950, &qword_1CFCA2710);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v12 - v6;
  v8 = sub_1CFC9F998();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  sub_1CFC9F968();

  v9 = sub_1CFC9F958();
  v10 = swift_allocObject();
  v11 = MEMORY[0x1E69E85E0];
  v10[2]._rawValue = v9;
  v10[3]._rawValue = v11;
  v10[4]._rawValue = a1._rawValue;
  v10[5]._rawValue = v2;
  sub_1CFBDC030(0, 0, v7, &unk_1CFCA4EB0, v10);
}

uint64_t sub_1CFC27904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  v6 = sub_1CFC9C008();
  v5[12] = v6;
  v7 = *(v6 - 8);
  v5[13] = v7;
  v8 = *(v7 + 64) + 15;
  v5[14] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE730, &qword_1CFCA51D0);
  v5[15] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v5[16] = swift_task_alloc();
  v11 = sub_1CFC9C448();
  v5[17] = v11;
  v12 = *(v11 - 8);
  v5[18] = v12;
  v13 = *(v12 + 64) + 15;
  v5[19] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED570, &unk_1CFCA2470) - 8) + 64) + 15;
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();
  v5[22] = swift_task_alloc();
  sub_1CFC9F968();
  v5[23] = sub_1CFC9F958();
  v16 = sub_1CFC9F938();

  return MEMORY[0x1EEE6DFA0](sub_1CFC27AE0, v16, v15);
}

uint64_t sub_1CFC27AE0()
{
  v1 = v0[23];
  v2 = v0[10];
  v3 = v0[11];

  swift_weakInit();
  v73 = MEMORY[0x1E69E7CC0];
  if (v2 >> 62)
  {
    goto LABEL_38;
  }

  v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  swift_beginAccess();
  v72 = v0;
  if (v4)
  {
    v5 = 0;
    v63 = v2 & 0xFFFFFFFFFFFFFF8;
    v64 = v2 & 0xC000000000000001;
    v6 = v0[13];
    v61 = (v6 + 56);
    v62 = v0[10] + 32;
    v7 = v0[18];
    v59 = (v7 + 8);
    v60 = (v7 + 16);
    v71 = (v6 + 48);
    v57 = v4;
    v58 = v0[15];
    v55 = (v6 + 32);
    v56 = (v6 + 8);
    while (1)
    {
      if (v64)
      {
        v8 = MEMORY[0x1D3872640](v5, v0[10]);
      }

      else
      {
        if (v5 >= *(v63 + 16))
        {
          goto LABEL_37;
        }

        v8 = *(v62 + 8 * v5);
      }

      v9 = v8;
      v2 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        if (v0[10] < 0)
        {
          v47 = v0[10];
        }

        v4 = sub_1CFC9FFD8();
        goto LABEL_3;
      }

      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        break;
      }

LABEL_6:
      ++v5;
      if (v2 == v4)
      {
        v35 = v73;
        goto LABEL_25;
      }
    }

    v11 = Strong;
    v66 = v5;
    v70 = v5 + 1;
    v12 = v0[22];
    v65 = v0[21];
    v13 = v0[19];
    v14 = v0[16];
    v15 = v0[17];
    v16 = v72[12];
    v67 = v16;
    v69 = v9;
    sub_1CFC9D598();
    (*v61)(v12, 0, 1, v16);
    swift_getKeyPath();
    v72[9] = v11;
    sub_1CFC1FED8(&qword_1EE04DF70, type metadata accessor for VoicemailDetailContainerViewModel);
    sub_1CFC9C158();

    v17 = OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__item;
    swift_beginAccess();
    (*v60)(v13, v11 + v17, v15);
    sub_1CFC9C3C8();
    (*v59)(v13, v15);
    v18 = *(v58 + 48);
    sub_1CFBA29FC(v12, v14, &qword_1EC4ED570, &unk_1CFCA2470);
    v19 = v14;
    sub_1CFBA29FC(v65, v14 + v18, &qword_1EC4ED570, &unk_1CFCA2470);
    v20 = *v71;
    v21 = (*v71)(v14, 1, v67);
    v22 = v72[12];
    if (v21 == 1)
    {
      v24 = v72[21];
      v23 = v72[22];

      sub_1CFBC2FB0(v24, &qword_1EC4ED570, &unk_1CFCA2470);
      sub_1CFBC2FB0(v23, &qword_1EC4ED570, &unk_1CFCA2470);
      if (v20(v19 + v18, 1, v22) == 1)
      {
        sub_1CFBC2FB0(v72[16], &qword_1EC4ED570, &unk_1CFCA2470);
LABEL_20:
        sub_1CFCA0138();
        v34 = *(v73 + 16);
        sub_1CFCA0178();
        sub_1CFCA0188();
        sub_1CFCA0148();
        goto LABEL_21;
      }
    }

    else
    {
      sub_1CFBA29FC(v72[16], v72[20], &qword_1EC4ED570, &unk_1CFCA2470);
      v25 = v20(v14 + v18, 1, v22);
      v27 = v72[21];
      v26 = v72[22];
      v28 = v72[20];
      if (v25 != 1)
      {
        v68 = v72[16];
        v30 = v72[14];
        v31 = v72[12];
        (*v55)(v30, v19 + v18, v31);
        sub_1CFC1FED8(&qword_1EC4EE738, MEMORY[0x1E69695A8]);
        v32 = sub_1CFC9F6F8();

        v33 = *v56;
        (*v56)(v30, v31);
        sub_1CFBC2FB0(v27, &qword_1EC4ED570, &unk_1CFCA2470);
        sub_1CFBC2FB0(v26, &qword_1EC4ED570, &unk_1CFCA2470);
        v33(v28, v31);
        sub_1CFBC2FB0(v68, &qword_1EC4ED570, &unk_1CFCA2470);
        if (v32)
        {
          goto LABEL_20;
        }

LABEL_18:

LABEL_21:
        v4 = v57;
        v2 = v70;
        v0 = v72;
        v5 = v66;
        goto LABEL_6;
      }

      v29 = v72[12];

      sub_1CFBC2FB0(v27, &qword_1EC4ED570, &unk_1CFCA2470);
      sub_1CFBC2FB0(v26, &qword_1EC4ED570, &unk_1CFCA2470);
      (*v56)(v28, v29);
    }

    sub_1CFBC2FB0(v72[16], &qword_1EC4EE730, &qword_1CFCA51D0);
    goto LABEL_18;
  }

  v35 = MEMORY[0x1E69E7CC0];
LABEL_25:
  result = swift_weakDestroy();
  if (v35 < 0 || (v35 & 0x4000000000000000) != 0)
  {
    result = sub_1CFC9FFD8();
    if (result)
    {
      goto LABEL_28;
    }

LABEL_42:

    goto LABEL_43;
  }

  if (!*(v35 + 16))
  {
    goto LABEL_42;
  }

LABEL_28:
  if ((v35 & 0xC000000000000001) != 0)
  {
    v37 = MEMORY[0x1D3872640](0, v35);
  }

  else
  {
    if (!*(v35 + 16))
    {
      __break(1u);
      return result;
    }

    v37 = *(v35 + 32);
  }

  v38 = v37;

  v39 = qword_1EE050010;
  v40 = v38;
  if (v39 != -1)
  {
    swift_once();
  }

  v41 = sub_1CFC9D938();
  __swift_project_value_buffer(v41, qword_1EE052308);
  v42 = sub_1CFC9D918();
  v43 = sub_1CFC9FAF8();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    *v44 = 0;
    _os_log_impl(&dword_1CFB9F000, v42, v43, "Updating voicemail UI with new message.", v44, 2u);
    v0 = v72;
    MEMORY[0x1D3873280](v44, -1, -1);
  }

  v45 = v0[11];

  v46 = v40;
  sub_1CFC1DF78(v40);

LABEL_43:
  v49 = v0[21];
  v48 = v0[22];
  v51 = v0[19];
  v50 = v0[20];
  v52 = v0[16];
  v53 = v0[14];

  v54 = v0[1];

  return v54();
}

uint64_t sub_1CFC28368(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_1CFCA02B8() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1CFC283F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    for (i = 0; ; i += 56)
    {
      v4 = *(a1 + i + 48);
      v5 = *(a1 + i + 56);
      v6 = *(a1 + i + 64);
      v7 = *(a1 + i + 72);
      v9 = *(a2 + i + 48);
      v8 = *(a2 + i + 56);
      v10 = *(a2 + i + 64);
      v11 = *(a2 + i + 72);
      v12 = *(a1 + i + 32) == *(a2 + i + 32) && *(a1 + i + 40) == *(a2 + i + 40);
      if (!v12 && (sub_1CFCA02B8() & 1) == 0)
      {
        break;
      }

      if (v5)
      {
        if (!v8)
        {
          return 0;
        }

        v13 = v4 == v9 && v5 == v8;
        if (!v13 && (sub_1CFCA02B8() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v8)
      {
        return 0;
      }

      v14 = v6 == v10 && v7 == v11;
      if (!v14 && (sub_1CFCA02B8() & 1) == 0)
      {
        return 0;
      }

      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1CFC28528(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CFC9D4D8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v25 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
    v22 = 0;
    return v22 & 1;
  }

  if (!v12 || a1 == a2)
  {
    v22 = 1;
    return v22 & 1;
  }

  v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v14 = a1 + v13;
  v15 = a2 + v13;
  v17 = *(v5 + 16);
  v16 = v5 + 16;
  v18 = (v16 - 8);
  v25 = *(v16 + 56);
  v26 = v17;
  while (1)
  {
    v19 = v26;
    result = (v26)(v11, v14, v4);
    if (!v12)
    {
      break;
    }

    v21 = v16;
    v19(v9, v15, v4);
    sub_1CFC1FED8(&qword_1EC4EE718, MEMORY[0x1E6995D28]);
    v22 = sub_1CFC9F6F8();
    v23 = *v18;
    (*v18)(v9, v4);
    v23(v11, v4);
    if (v22)
    {
      v15 += v25;
      v14 += v25;
      v24 = v12-- == 1;
      v16 = v21;
      if (!v24)
      {
        continue;
      }
    }

    return v22 & 1;
  }

  __break(1u);
  return result;
}

void *sub_1CFC2873C(void *__src, uint64_t a2, void *__dst)
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

uint64_t sub_1CFC287B0@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_1CFC287E0(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(char *, uint64_t, uint64_t, uint64_t), void (*a7)(char *, uint64_t, uint64_t, uint64_t), uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v12 = v11;
  v96 = a8;
  v83 = a7;
  v82 = a6;
  v81 = a4;
  LODWORD(v80) = a2;
  v95 = a11;
  v84 = a10;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE750, &unk_1CFCA5250);
  v92 = *(v16 - 8);
  v93 = v16;
  v17 = *(v92 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v91 = v79 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF860, &qword_1CFCA4AD0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v88 = v79 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE758, &qword_1CFCA5260);
  v86 = *(v22 - 8);
  v87 = v22;
  v23 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v85 = v79 - v24;
  v25 = OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__message;
  *(v11 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__message) = 0;
  *(v11 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__hasSmartActions) = 0;
  v26 = MEMORY[0x1E69E7CC0];
  *(v11 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__smartActionCustomRanges) = MEMORY[0x1E69E7CC0];
  *(v11 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__smartActionMenuItems) = v26;
  v27 = OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__smartActionId;
  v28 = sub_1CFC9C008();
  (*(*(v28 - 8) + 56))(v12 + v27, 1, 1, v28);
  *(v12 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__isDeletedMessage) = 0;
  *(v12 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__markedAsRead) = 0;
  *(v12 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__isPlaying[0]) = 0;
  *(v12 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__player) = 0;
  v29 = *MEMORY[0x1E6960CC0];
  v30 = *(MEMORY[0x1E6960CC0] + 8);
  v31 = *(MEMORY[0x1E6960CC0] + 12);
  v32 = *(MEMORY[0x1E6960CC0] + 16);
  v33 = v12 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__duration;
  *v33 = *MEMORY[0x1E6960CC0];
  *(v33 + 8) = v30;
  *(v33 + 12) = v31;
  *(v33 + 16) = v32;
  v34 = v12 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__currentTime;
  *v34 = v29;
  *(v34 + 8) = v30;
  *(v34 + 12) = v31;
  *(v34 + 16) = v32;
  v35 = (v12 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__timeObserver);
  *v35 = 0u;
  v35[1] = 0u;
  *(v12 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel_playerLoadingTask) = 0;
  v36 = OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel_timeIntervalFormatter;
  v37 = [objc_allocWithZone(MEMORY[0x1E696AB70]) init];
  [v37 setAllowedUnits_];
  [v37 setZeroFormattingBehavior_];
  *(v12 + v36) = v37;
  v38 = (v12 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel_transcriptPrefix);
  *v38 = sub_1CFC1F77C();
  v38[1] = v39;
  v40 = (v12 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel_transcriptSuffix);
  *v40 = sub_1CFC1F8C8();
  v40[1] = v41;
  v42 = OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel_audioRouteService;
  sub_1CFC9D588();
  sub_1CFC9D528();
  sub_1CFC9D518();
  *(v12 + v42) = sub_1CFC9D548();
  v43 = OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__currentPickedAudioRoute;
  v44 = sub_1CFC9D4D8();
  (*(*(v44 - 8) + 56))(v12 + v43, 1, 1, v44);
  *(v12 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__availableAudioRoutes) = v26;
  *(v12 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel_defaultTranscriptLowConfidenceLimit) = 1060115369;
  *(v12 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__cancellables) = MEMORY[0x1E69E7CD0];
  sub_1CFC9C188();
  v45 = OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__item;
  v46 = sub_1CFC9C448();
  v89 = *(v46 - 8);
  v90 = v46;
  (*(v89 + 16))(v12 + v45, a1);
  v94 = a1;
  v47 = sub_1CFC9C408();

  *(v12 + v25) = v47;
  *(v12 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__isUnknownCaller) = v80;
  *(v12 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel_messageStoreController) = a3;
  v48 = (v12 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel_deleteAction);
  *v48 = v81;
  v48[1] = a5;
  v49 = (v12 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel_activityAction);
  v50 = v83;
  *v49 = v82;
  v49[1] = v50;
  v51 = (v12 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel_createContactAction);
  v52 = v95;
  *v51 = v96;
  v51[1] = a9;
  v53 = (v12 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel_reportSpamAction);
  *v53 = v84;
  v53[1] = v52;
  swift_getKeyPath();
  v54 = OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel___observationRegistrar;
  aBlock[0] = v12;
  v55 = sub_1CFC1FED8(&qword_1EE04DF70, type metadata accessor for VoicemailDetailContainerViewModel);

  v95 = v55;
  sub_1CFC9C158();

  v56 = *(v12 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__message);
  if (v56)
  {
    v57 = v56;
    sub_1CFC9D5B8();
    v58 = sub_1CFC9D758();
    if (v58 == sub_1CFC9D758())
    {
      v59 = OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__isDeletedMessage;
      if (*(v12 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__isDeletedMessage) == 1)
      {

        *(v12 + v59) = 1;
      }

      else
      {
        KeyPath = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](KeyPath);
        v79[-2] = v12;
        LOBYTE(v79[-1]) = 1;
        aBlock[0] = v12;
        sub_1CFC9C148();
      }
    }

    else
    {
    }
  }

  sub_1CFC9D6E8();

  v84 = OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel_audioRouteService;
  v61 = *(v12 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel_audioRouteService);
  aBlock[0] = sub_1CFC9D558();
  sub_1CFBA2D80(0, &qword_1EE04FF80, 0x1E69E9610);
  v62 = sub_1CFC9FC28();
  v98 = v62;
  v63 = sub_1CFC9FBF8();
  v64 = *(v63 - 8);
  v82 = *(v64 + 56);
  v83 = (v64 + 56);
  v96 = v54;
  v65 = v88;
  v82(v88, 1, 1, v63);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE760, &qword_1CFCA5268);
  v81 = MEMORY[0x1E695BED8];
  sub_1CFBA57C0(&qword_1EE04D5C0, &qword_1EC4EE760, &qword_1CFCA5268);
  v80 = sub_1CFC18FBC();
  v66 = v85;
  sub_1CFC9DD88();
  sub_1CFBC2FB0(v65, &qword_1EC4EF860, &qword_1CFCA4AD0);

  swift_allocObject();
  swift_weakInit();
  v79[1] = MEMORY[0x1E695BE98];
  sub_1CFBA57C0(&qword_1EE04D5D8, &qword_1EC4EE758, &qword_1CFCA5260);

  v67 = v87;
  sub_1CFC9DDA8();

  (*(v86 + 8))(v66, v67);
  swift_getKeyPath();
  aBlock[0] = v12;
  sub_1CFC9C158();

  aBlock[0] = v12;
  swift_getKeyPath();
  sub_1CFC9C178();

  v87 = OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__cancellables;
  swift_beginAccess();
  sub_1CFC9DC88();
  swift_endAccess();

  aBlock[0] = v12;
  swift_getKeyPath();
  sub_1CFC9C168();

  v68 = *(v12 + v84);
  aBlock[0] = sub_1CFC9D538();
  v69 = sub_1CFC9FC28();
  v98 = v69;
  v82(v65, 1, 1, v63);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE768, &qword_1CFCA5270);
  sub_1CFBA57C0(&qword_1EE04D5D0, &qword_1EC4EE768, &qword_1CFCA5270);
  v70 = v91;
  sub_1CFC9DD88();
  sub_1CFBC2FB0(v65, &qword_1EC4EF860, &qword_1CFCA4AD0);

  swift_allocObject();
  swift_weakInit();
  sub_1CFBA57C0(&qword_1EE04D5E8, &qword_1EC4EE750, &unk_1CFCA5250);
  v71 = v93;
  sub_1CFC9DDA8();

  (*(v92 + 8))(v70, v71);
  swift_getKeyPath();
  aBlock[0] = v12;
  sub_1CFC9C158();

  aBlock[0] = v12;
  swift_getKeyPath();
  sub_1CFC9C178();

  swift_beginAccess();
  sub_1CFC9DC88();
  swift_endAccess();

  aBlock[0] = v12;
  swift_getKeyPath();
  sub_1CFC9C168();

  v72 = [objc_opt_self() defaultCenter];
  v73 = *MEMORY[0x1E69DDCC0];
  v74 = [objc_opt_self() mainQueue];
  v75 = swift_allocObject();
  swift_weakInit();

  aBlock[4] = sub_1CFC2A9B0;
  aBlock[5] = v75;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CFC22290;
  aBlock[3] = &block_descriptor_219;
  v76 = _Block_copy(aBlock);

  v77 = [v72 addObserverForName:v73 object:0 queue:v74 usingBlock:v76];
  _Block_release(v76);
  swift_unknownObjectRelease();

  (*(v89 + 8))(v94, v90);
  return v12;
}

uint64_t sub_1CFC294F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CFC9C008();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED570, &unk_1CFCA2470);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE730, &qword_1CFCA51D0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_1CFBA29FC(a1, &v24 - v16, &qword_1EC4ED570, &unk_1CFCA2470);
  sub_1CFBA29FC(a2, &v17[v18], &qword_1EC4ED570, &unk_1CFCA2470);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) != 1)
  {
    sub_1CFBA29FC(v17, v12, &qword_1EC4ED570, &unk_1CFCA2470);
    if (v19(&v17[v18], 1, v4) != 1)
    {
      (*(v5 + 32))(v8, &v17[v18], v4);
      sub_1CFC1FED8(&qword_1EC4EE738, MEMORY[0x1E69695A8]);
      v21 = sub_1CFC9F6F8();
      v22 = *(v5 + 8);
      v22(v8, v4);
      v22(v12, v4);
      sub_1CFBC2FB0(v17, &qword_1EC4ED570, &unk_1CFCA2470);
      v20 = v21 ^ 1;
      return v20 & 1;
    }

    (*(v5 + 8))(v12, v4);
    goto LABEL_6;
  }

  if (v19(&v17[v18], 1, v4) != 1)
  {
LABEL_6:
    sub_1CFBC2FB0(v17, &qword_1EC4EE730, &qword_1CFCA51D0);
    v20 = 1;
    return v20 & 1;
  }

  sub_1CFBC2FB0(v17, &qword_1EC4ED570, &unk_1CFCA2470);
  v20 = 0;
  return v20 & 1;
}

uint64_t sub_1CFC29810(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CFC9D4D8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE6F8, &qword_1CFCA6060);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE720, &qword_1CFCA5178);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_1CFBA29FC(a1, &v24 - v16, &qword_1EC4EE6F8, &qword_1CFCA6060);
  sub_1CFBA29FC(a2, &v17[v18], &qword_1EC4EE6F8, &qword_1CFCA6060);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) != 1)
  {
    sub_1CFBA29FC(v17, v12, &qword_1EC4EE6F8, &qword_1CFCA6060);
    if (v19(&v17[v18], 1, v4) != 1)
    {
      (*(v5 + 32))(v8, &v17[v18], v4);
      sub_1CFC1FED8(&qword_1EC4EE718, MEMORY[0x1E6995D28]);
      v21 = sub_1CFC9F6F8();
      v22 = *(v5 + 8);
      v22(v8, v4);
      v22(v12, v4);
      sub_1CFBC2FB0(v17, &qword_1EC4EE6F8, &qword_1CFCA6060);
      v20 = v21 ^ 1;
      return v20 & 1;
    }

    (*(v5 + 8))(v12, v4);
    goto LABEL_6;
  }

  if (v19(&v17[v18], 1, v4) != 1)
  {
LABEL_6:
    sub_1CFBC2FB0(v17, &qword_1EC4EE720, &qword_1CFCA5178);
    v20 = 1;
    return v20 & 1;
  }

  sub_1CFBC2FB0(v17, &qword_1EC4EE6F8, &qword_1CFCA6060);
  v20 = 0;
  return v20 & 1;
}

void sub_1CFC29B30()
{
  v0 = sub_1CFC9F728();
  v1 = PHPreferencesGetValue();

  if (v1)
  {
    sub_1CFC9FF18();
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0u;
    v4 = 0u;
  }

  v5[0] = v3;
  v5[1] = v4;
  if (*(&v4 + 1))
  {
    sub_1CFBA2D80(0, &qword_1EC4EE748, 0x1E696AEC0);
    if (swift_dynamicCast())
    {
      [v2 floatValue];
    }
  }

  else
  {
    sub_1CFBC2FB0(v5, &qword_1EC4EE650, &qword_1CFCA4B10);
  }
}

uint64_t sub_1CFC29C48(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1CFBD4A14;

  return sub_1CFC27904(a1, v4, v5, v7, v6);
}

void sub_1CFC29D10()
{
  v0 = sub_1CFC9C448();
  if (v1 <= 0x3F)
  {
    v8 = *(v0 - 8) + 64;
    sub_1CFC2A0A8(319, &qword_1EE04D6F8, MEMORY[0x1E69695A8]);
    if (v3 <= 0x3F)
    {
      v9 = *(v2 - 8) + 64;
      sub_1CFC2A0A8(319, &qword_1EE04D630, MEMORY[0x1E6995D28]);
      if (v5 <= 0x3F)
      {
        v10 = *(v4 - 8) + 64;
        v6 = sub_1CFC9C198();
        if (v7 <= 0x3F)
        {
          v11 = *(v6 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_1CFC2A0A8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1CFC9FEB8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1CFC2A11C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1CFBD4A14;

  return sub_1CFC26A1C(a1, v4, v5, v7, v6);
}

uint64_t objectdestroyTm_2(void (*a1)(void))
{
  v3 = v1[2];
  swift_unknownObjectRelease();
  a1(v1[4]);
  v4 = v1[5];

  return MEMORY[0x1EEE6BDD0](v1, 48, 7);
}

uint64_t sub_1CFC2A234(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1CFBD4A14;

  return sub_1CFC2651C(a1, v4, v5, v7, v6);
}

uint64_t sub_1CFC2A30C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1CFBD4A14;

  return sub_1CFC2543C();
}

uint64_t sub_1CFC2A3C0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1CFBD4A14;

  return sub_1CFC23158(a1, v4, v5, v6);
}

uint64_t sub_1CFC2A4A8(uint64_t a1)
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
  v10[1] = sub_1CFBD4A14;

  return sub_1CFC24B9C(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1CFC2A57C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1CFBD431C;

  return sub_1CFC23F0C(a1, v4, v5, v6);
}

uint64_t sub_1CFC2A648(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1CFBD431C;

  return sub_1CFC23C34(a1, v4, v5, v6);
}

double sub_1CFC2A78C(void *a1)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 16) + *a1;
  result = *(v1 + 32);
  *v3 = *(v1 + 24);
  *(v3 + 8) = result;
  *(v3 + 16) = v2;
  return result;
}

void sub_1CFC2A7B0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__player);
  *(v1 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__player) = v2;
  v4 = v2;
}

uint64_t keypath_set_109Tm(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = *a1;
  v7 = *a2;

  return a5(v8);
}

uint64_t sub_1CFC2A8E8(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v2 + *a1);
  *(v2 + *a1) = *(v1 + 24);
}

void sub_1CFC2A944()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__message);
  *(v1 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__message) = v2;
  v4 = v2;
}

uint64_t objectdestroy_136Tm(uint64_t a1)
{
  v3 = *(v1 + 16);
  swift_unknownObjectRelease();
  v4 = *(v1 + 32);

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

uint64_t sub_1CFC2AA04(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1CFBD4A14;

  return sub_1CFC220EC(a1, v4, v5, v6);
}

id sub_1CFC2AB48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = &v3[OBJC_IVAR____TtC10CallsAppUI28FavoritePickerViewController_completion];
  *v6 = 0;
  *(v6 + 1) = 0;
  *&v3[OBJC_IVAR____TtC10CallsAppUI28FavoritePickerViewController_favoritesEntryPicker] = 0;
  *&v3[OBJC_IVAR____TtC10CallsAppUI28FavoritePickerViewController_dataSource] = a1;
  *v6 = a2;
  *(v6 + 1) = a3;

  sub_1CFBB2568(a2, a3);
  v13.receiver = v3;
  v13.super_class = type metadata accessor for FavoritePickerViewController();
  v7 = objc_msgSendSuper2(&v13, sel_initWithNibName_bundle_, 0, 0);
  [v7 setAllowsEditing_];
  [v7 setAutocloses_];
  [v7 setDelegate_];
  [v7 setHidesSearchableSources_];
  [v7 setMode_];
  [v7 setOnlyRealContacts_];
  sub_1CFC2B5B8();
  v8 = sub_1CFC9FAA8();
  [v7 setPredicateForEnablingContact_];

  type metadata accessor for BundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10 = [objc_opt_self() bundleForClass_];
  sub_1CFC9BE28();

  v11 = sub_1CFC9F728();

  [v7 setPrompt_];

  sub_1CFBB2564(a2, a3);

  return v7;
}

id sub_1CFC2AE48()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FavoritePickerViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1CFC2AFD8(void *a1, void *a2)
{
  [a1 invalidateSelectionAnimated_];
  v5 = sub_1CFC2B63C(a2);
  if (v5)
  {
    v6 = v5;
    v7 = [objc_allocWithZone(MEMORY[0x1E695D1C8]) initWithContact_];
    v8 = *(v2 + OBJC_IVAR____TtC10CallsAppUI28FavoritePickerViewController_favoritesEntryPicker);
    *(v2 + OBJC_IVAR____TtC10CallsAppUI28FavoritePickerViewController_favoritesEntryPicker) = v7;
    v9 = v7;

    [v9 setDelegate_];
    v10 = [v9 viewController];
    [v10 setModalPresentationStyle_];
    [a1 presentViewController:v10 animated:1 completion:0];
  }
}

uint64_t sub_1CFC2B178()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC10CallsAppUI28FavoritePickerViewController_favoritesEntryPicker;
  v3 = *&v1[OBJC_IVAR____TtC10CallsAppUI28FavoritePickerViewController_favoritesEntryPicker];
  if (v3)
  {
    v4 = [v3 viewController];
    [v4 dismissViewControllerAnimated:1 completion:0];
  }

  [v1 dismissViewControllerAnimated:1 completion:0];
  v5 = *&v1[v2];
  *&v1[v2] = 0;

  v6 = *&v1[OBJC_IVAR____TtC10CallsAppUI28FavoritePickerViewController_dataSource];
  result = sub_1CFC9C708();
  v8 = &v1[OBJC_IVAR____TtC10CallsAppUI28FavoritePickerViewController_completion];
  v9 = *&v1[OBJC_IVAR____TtC10CallsAppUI28FavoritePickerViewController_completion];
  if (v9)
  {
    v10 = *(v8 + 1);

    v9(1);

    return sub_1CFBB2564(v9, v10);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_SbIegy_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1CFC2B324(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1CFC2B36C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1CFC2B3C0()
{
  result = qword_1EC4EE850;
  if (!qword_1EC4EE850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4EE850);
  }

  return result;
}

id sub_1CFC2B414()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = objc_allocWithZone(type metadata accessor for FavoritePickerViewController());

  sub_1CFBB2568(v2, v3);
  return sub_1CFC2AB48(v1, v2, v3);
}

uint64_t sub_1CFC2B474(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1CFC2B564();

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t sub_1CFC2B4D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1CFC2B564();

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void sub_1CFC2B53C()
{
  sub_1CFC2B564();
  sub_1CFC9EAD8();
  __break(1u);
}

unint64_t sub_1CFC2B564()
{
  result = qword_1EC4EE858;
  if (!qword_1EC4EE858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4EE858);
  }

  return result;
}

unint64_t sub_1CFC2B5B8()
{
  result = qword_1EC4EE860;
  if (!qword_1EC4EE860)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC4EE860);
  }

  return result;
}

uint64_t sub_1CFC2B604(void (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

id sub_1CFC2B63C(id a1)
{
  v26 = *MEMORY[0x1E69E9840];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED760, &qword_1CFCA2690);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1CFCA2540;
  *(v2 + 32) = [objc_opt_self() descriptorForRequiredKeys];
  v25 = v2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE870, &unk_1CFCA53E0);
  v3 = sub_1CFC9F898();

  v4 = [a1 areKeysAvailable_];

  if (v4)
  {

    v5 = a1;
  }

  else
  {
    if ([a1 availableKeyDescriptor])
    {
      v6 = swift_unknownObjectRetain();
      MEMORY[0x1D3871DC0](v6);
      if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v23 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1CFC9F8C8();
      }

      sub_1CFC9F8F8();
      swift_unknownObjectRelease();
    }

    v7 = [objc_allocWithZone(MEMORY[0x1E695CE18]) init];
    v8 = [a1 identifier];
    if (!v8)
    {
      sub_1CFC9F768();
      v8 = sub_1CFC9F728();
    }

    v9 = sub_1CFC9F898();

    v24 = 0;
    a1 = [v7 unifiedContactWithIdentifier:v8 keysToFetch:v9 error:&v24];

    v10 = v24;
    if (!a1)
    {
      v11 = v10;
      v12 = sub_1CFC9BE88();

      swift_willThrow();
      if (qword_1EE050010 != -1)
      {
        swift_once();
      }

      v13 = sub_1CFC9D938();
      __swift_project_value_buffer(v13, qword_1EE052308);
      v14 = v12;
      v15 = sub_1CFC9D918();
      v16 = sub_1CFC9FAD8();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        *v17 = 138412290;
        v19 = v12;
        v20 = _swift_stdlib_bridgeErrorToNSError();
        *(v17 + 4) = v20;
        *v18 = v20;
        _os_log_impl(&dword_1CFB9F000, v15, v16, "Error fetching contact for favorite entry: %@", v17, 0xCu);
        sub_1CFBFDC3C(v18);
        MEMORY[0x1D3873280](v18, -1, -1);
        MEMORY[0x1D3873280](v17, -1, -1);
      }

      else
      {
      }

      a1 = 0;
    }
  }

  v21 = *MEMORY[0x1E69E9840];
  return a1;
}

double preferredKeyPadSize(idiom:)(uint64_t a1)
{
  result = 310.0;
  v2 = 310.0;
  if (a1 != 5)
  {
    v2 = 0.0;
  }

  if (a1 != 1)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1CFC2BA24()
{
  swift_getKeyPath();
  v4 = v0;
  sub_1CFC2CED0(&qword_1EE04D8E0, type metadata accessor for VoicemailSmartActionsBannerViewModel);
  sub_1CFC9C158();

  v2 = *(v0 + 16);
  v1 = *(v4 + 24);

  return v2;
}

uint64_t sub_1CFC2BAD4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1CFC2CED0(&qword_1EE04D8E0, type metadata accessor for VoicemailSmartActionsBannerViewModel);
  sub_1CFC9C158();

  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t sub_1CFC2BB80(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_1CFC2BBC0(v2, v3);
}

uint64_t sub_1CFC2BBC0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16) == a1 && *(v2 + 24) == a2;
  if (v5 || (v6 = *(v2 + 24), (sub_1CFCA02B8() & 1) != 0))
  {
    *(v2 + 16) = a1;
    *(v2 + 24) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1CFC2CED0(&qword_1EE04D8E0, type metadata accessor for VoicemailSmartActionsBannerViewModel);
    sub_1CFC9C148();
  }
}

uint64_t sub_1CFC2BD20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 24);
  *(a1 + 16) = a2;
  *(a1 + 24) = a3;
}

uint64_t sub_1CFC2BD5C()
{
  swift_getKeyPath();
  sub_1CFC2CED0(&qword_1EE04D8E0, type metadata accessor for VoicemailSmartActionsBannerViewModel);
  sub_1CFC9C158();

  v1 = *(v0 + 32);
}

uint64_t sub_1CFC2BE00@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1CFC2CED0(&qword_1EE04D8E0, type metadata accessor for VoicemailSmartActionsBannerViewModel);
  sub_1CFC9C158();

  *a2 = *(v3 + 32);
}

uint64_t sub_1CFC2BEAC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1CFC2BED8(v4);
}

uint64_t sub_1CFC2BED8(uint64_t a1)
{
  v3 = *(v1 + 32);

  v5 = sub_1CFC2C8F0(v4, a1);

  if (v5)
  {
    v6 = *(v1 + 32);
    *(v1 + 32) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1CFC2CED0(&qword_1EE04D8E0, type metadata accessor for VoicemailSmartActionsBannerViewModel);
    sub_1CFC9C148();
  }
}

uint64_t sub_1CFC2C02C()
{
  swift_getKeyPath();
  sub_1CFC2CED0(&qword_1EE04D8E0, type metadata accessor for VoicemailSmartActionsBannerViewModel);
  sub_1CFC9C158();

  v1 = *(v0 + 40);
}

uint64_t sub_1CFC2C0D0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1CFC2CED0(&qword_1EE04D8E0, type metadata accessor for VoicemailSmartActionsBannerViewModel);
  sub_1CFC9C158();

  *a2 = *(v3 + 40);
}

uint64_t sub_1CFC2C17C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_1CFC2C1A8(v4);
}

uint64_t sub_1CFC2C1A8(uint64_t a1)
{
  v3 = *(v1 + 40);

  v5 = sub_1CFC2C710(v4, a1);

  if (v5)
  {
    v6 = *(v1 + 40);
    *(v1 + 40) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1CFC2CED0(&qword_1EE04D8E0, type metadata accessor for VoicemailSmartActionsBannerViewModel);
    sub_1CFC9C148();
  }
}

uint64_t sub_1CFC2C2FC()
{
  swift_getKeyPath();
  sub_1CFC2CED0(&qword_1EE04D8E0, type metadata accessor for VoicemailSmartActionsBannerViewModel);
  sub_1CFC9C158();

  return *(v0 + 48);
}

uint64_t sub_1CFC2C39C(uint64_t result)
{
  if (*(v1 + 48) == (result & 1))
  {
    *(v1 + 48) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1CFC2CED0(&qword_1EE04D8E0, type metadata accessor for VoicemailSmartActionsBannerViewModel);
    sub_1CFC9C148();
  }

  return result;
}

char *VoicemailSmartActionsBannerViewModel.deinit()
{
  v1 = *(v0 + 3);

  v2 = *(v0 + 4);

  v3 = *(v0 + 5);

  v4 = OBJC_IVAR____TtC10CallsAppUI36VoicemailSmartActionsBannerViewModel___observationRegistrar;
  v5 = sub_1CFC9C198();
  (*(*(v5 - 8) + 8))(&v0[v4], v5);
  return v0;
}

uint64_t VoicemailSmartActionsBannerViewModel.__deallocating_deinit()
{
  v1 = *(v0 + 3);

  v2 = *(v0 + 4);

  v3 = *(v0 + 5);

  v4 = OBJC_IVAR____TtC10CallsAppUI36VoicemailSmartActionsBannerViewModel___observationRegistrar;
  v5 = sub_1CFC9C198();
  (*(*(v5 - 8) + 8))(&v0[v4], v5);
  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for VoicemailSmartActionsBannerViewModel()
{
  result = qword_1EE04D8D0;
  if (!qword_1EE04D8D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1CFC2C634()
{
  result = sub_1CFC9C198();
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

uint64_t sub_1CFC2C710(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v26 = (v7 - 1) & v7;
LABEL_14:
    v12 = 16 * (v9 | (v3 << 6));
    v13 = result;
    v14 = (*(result + 48) + v12);
    v15 = *v14;
    v16 = v14[1];
    v17 = (*(result + 56) + v12);
    v19 = *v17;
    v18 = v17[1];

    v20 = sub_1CFC94B54(v15, v16);
    v22 = v21;

    if ((v22 & 1) == 0)
    {

      return 0;
    }

    v23 = (*(a2 + 56) + 16 * v20);
    if (*v23 == v19 && v23[1] == v18)
    {

      result = v13;
      v7 = v26;
    }

    else
    {
      v25 = sub_1CFCA02B8();

      result = v13;
      v7 = v26;
      if ((v25 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v26 = (v11 - 1) & v11;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1CFC2C8B4()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 40);
  *(v1 + 40) = *(v0 + 24);
}

uint64_t sub_1CFC2C8F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CFC9C008();
  v63 = *(v4 - 8);
  v5 = *(v63 + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v62 = &v52 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE878, &qword_1CFCA5520);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  result = MEMORY[0x1EEE9AC00](v12);
  v58 = a2;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(v58 + 16))
  {
    return 0;
  }

  v56 = (&v52 - v14);
  v57 = v15;
  v55 = v8;
  v16 = 0;
  v53 = a1;
  v17 = *(a1 + 64);
  v52 = a1 + 64;
  v18 = 1 << *(a1 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & v17;
  v21 = (v18 + 63) >> 6;
  v59 = v63 + 16;
  v60 = (v63 + 32);
  v54 = (v63 + 8);
  while (1)
  {
    v22 = v57;
    if (!v20)
    {
      break;
    }

    v61 = (v20 - 1) & v20;
    v23 = __clz(__rbit64(v20)) | (v16 << 6);
LABEL_16:
    v28 = (*(v53 + 48) + 16 * v23);
    v29 = *v28;
    v30 = v28[1];
    v32 = v62;
    v31 = v63;
    (*(v63 + 16))(v62, *(v53 + 56) + *(v63 + 72) * v23, v4);
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE880, &qword_1CFCA5528);
    v34 = *(v33 + 48);
    *v22 = v29;
    *(v22 + 1) = v30;
    (*(v31 + 32))(&v22[v34], v32, v4);
    (*(*(v33 - 8) + 56))(v22, 0, 1, v33);

LABEL_17:
    v35 = v56;
    sub_1CFC2CE60(v22, v56);
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE880, &qword_1CFCA5528);
    v37 = (*(*(v36 - 8) + 48))(v35, 1, v36);
    v38 = v37 == 1;
    if (v37 == 1)
    {
      return v38;
    }

    v39 = *(v36 + 48);
    v41 = *v35;
    v40 = v35[1];
    v42 = v58;
    v43 = v55;
    (*v60)(v55, v35 + v39, v4);
    v44 = sub_1CFC94B54(v41, v40);
    v46 = v45;

    if ((v46 & 1) == 0)
    {
      (*v54)(v43, v4);
      return 0;
    }

    v48 = v62;
    v47 = v63;
    (*(v63 + 16))(v62, *(v42 + 56) + *(v63 + 72) * v44, v4);
    sub_1CFC2CED0(&qword_1EC4EE738, MEMORY[0x1E69695A8]);
    v49 = sub_1CFC9F6F8();
    v50 = *(v47 + 8);
    v50(v48, v4);
    result = (v50)(v43, v4);
    v20 = v61;
    if ((v49 & 1) == 0)
    {
      return v38;
    }
  }

  if (v21 <= v16 + 1)
  {
    v24 = v16 + 1;
  }

  else
  {
    v24 = v21;
  }

  v25 = v24 - 1;
  while (1)
  {
    v26 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v26 >= v21)
    {
      v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE880, &qword_1CFCA5528);
      (*(*(v51 - 8) + 56))(v22, 1, 1, v51);
      v61 = 0;
      v16 = v25;
      goto LABEL_17;
    }

    v27 = *(v52 + 8 * v26);
    ++v16;
    if (v27)
    {
      v61 = (v27 - 1) & v27;
      v23 = __clz(__rbit64(v27)) | (v26 << 6);
      v16 = v26;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t keypath_set_27Tm(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = *a1;
  v7 = *a2;

  return a5(v8);
}

uint64_t sub_1CFC2CE24()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 32);
  *(v1 + 32) = *(v0 + 24);
}

uint64_t sub_1CFC2CE60(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE878, &qword_1CFCA5520);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CFC2CED0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1CFC2CF18()
{
  v1 = v0[2];
  v2 = v0[4];
  v3 = *(v1 + 24);
  *(v1 + 16) = v0[3];
  *(v1 + 24) = v2;
}

uint64_t sub_1CFC2CF58(void (*a1)(uint64_t *__return_ptr, void *), uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  v8 = a3;
  if (!a6)
  {
    return v8;
  }

  v12[0] = a3;
  v12[1] = a4;
  v10 = a5 & 1;
  v13 = a5 & 1;
  v14 = a6;
  sub_1CFBB45F4(a3, a4, a5 & 1);

  a1(&v15, v12);
  if (!v6)
  {
    sub_1CFBB44C0(v8, a4, v10);

    return v15;
  }

  sub_1CFBB44C0(v8, a4, v10);

  __break(1u);
  return result;
}

uint64_t sub_1CFC2D06C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE898, &qword_1CFCA55A0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1CFBA29FC(a1, &v6 - v4, &qword_1EC4EE898, &qword_1CFCA55A0);
  return sub_1CFC9E468();
}

uint64_t sub_1CFC2D138(uint64_t a1)
{
  v2 = sub_1CFC9D848();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_1CFC9E2E8();
}

uint64_t sub_1CFC2D200@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v37 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE360, &unk_1CFCA5700);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = (&v34 - v6);
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  v10 = type metadata accessor for IntervenableWrapperView.Wrapped();
  v36 = *(v10 - 8);
  v11 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v34 - v12;
  WitnessTable = swift_getWitnessTable();
  v38 = v10;
  v39 = WitnessTable;
  v15 = WitnessTable;
  v35 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v17 = sub_1CFC06888();
  v38 = v10;
  v39 = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v38 = v10;
  v39 = &type metadata for NudityDetectionFlagEnabled;
  v40 = OpaqueTypeMetadata2;
  v41 = v15;
  v42 = v17;
  v43 = OpaqueTypeConformance2;
  v19 = swift_getOpaqueTypeMetadata2();
  v20 = *(v19 - 8);
  v21 = v20[8];
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = &v34 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v34 - v25;
  v27 = (v2 + *(a1 + 36));
  v29 = *v27;
  v28 = v27[1];
  sub_1CFC2D524(v7);
  sub_1CFBCCE88(v7, v13, &qword_1EC4EE360, &unk_1CFCA5700);
  v30 = &v13[*(v10 + 36)];
  *v30 = v29;
  *(v30 + 1) = v28;

  sub_1CFC2D5F8(v2, v10, v35, v24);
  (*(v36 + 8))(v13, v10);
  v31 = v20[2];
  v31(v26, v24, v19);
  v32 = v20[1];
  v32(v24, v19);
  v31(v37, v26, v19);
  return (v32)(v26, v19);
}

uint64_t sub_1CFC2D524@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE3A0, &qword_1CFCA5830);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1CFC2D584@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_1CFBCCE88(a1, a4, &qword_1EC4EE360, &unk_1CFCA5700);
  result = type metadata accessor for IntervenableWrapperView.Wrapped();
  v8 = (a4 + *(result + 36));
  *v8 = a2;
  v8[1] = a3;
  return result;
}

uint64_t sub_1CFC2D5F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v19 = a4;
  v23 = a2;
  v24 = &type metadata for NudityDetectionFlagEnabled;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v26 = a3;
  v27 = sub_1CFC06888();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v7 = swift_getOpaqueTypeMetadata2();
  v8 = *(v7 - 8);
  v9 = v8[8];
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v18 - v13;
  v20 = a2;
  v21 = a3;
  v22 = a1;
  swift_checkMetadataState();
  sub_1CFC9F098();
  v15 = v8[2];
  v15(v14, v12, v7);
  v16 = v8[1];
  v16(v12, v7);
  v15(v19, v14, v7);
  return (v16)(v14, v7);
}

uint64_t sub_1CFC2D820@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1CFC9E4E8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE3A0, &qword_1CFCA5830);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (&v17 - v11);
  sub_1CFBA29FC(v2, &v17 - v11, &qword_1EC4EE3A0, &qword_1CFCA5830);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_1CFC9D848();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    sub_1CFC9FAE8();
    v16 = sub_1CFC9EB68();
    sub_1CFC9D858();

    sub_1CFC9E4D8();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_1CFC2DA20@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v25 = a2;
  v4 = sub_1CFC9D848();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  v11 = *(v10 - 8);
  v12 = v11[8];
  v13 = MEMORY[0x1EEE9AC00](v7);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v24 - v16;
  v18 = v2 + *(a1 + 36);
  v19 = *v18;
  v20 = *(v18 + 8);
  sub_1CFC2D820(v9);
  v19(v9);
  (*(v5 + 8))(v9, v4);
  v21 = v11[2];
  v21(v17, v15, v10);
  v22 = v11[1];
  v22(v15, v10);
  v21(v25, v17, v10);
  return (v22)(v17, v10);
}

uint64_t sub_1CFC2DC20@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1CFC9E4E8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE890, &qword_1CFCA5598);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v16 - v10);
  v12 = type metadata accessor for FavoritesList(0);
  sub_1CFBA29FC(v1 + *(v12 + 44), v11, &qword_1EC4EE890, &qword_1CFCA5598);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_1CFBCCE88(v11, a1, &qword_1EC4EE898, &qword_1CFCA55A0);
  }

  v14 = *v11;
  sub_1CFC9FAE8();
  v15 = sub_1CFC9EB68();
  sub_1CFC9D858();

  sub_1CFC9E4D8();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v7, v3);
}

uint64_t FavoritesList.init(dataSource:detailsPresenter:isInTab:editOnAppear:dismiss:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE888, &qword_1CFCA5560);
  sub_1CFC9F228();
  *(a7 + 40) = v16;
  *(a7 + 48) = v17;
  sub_1CFC9F228();
  *(a7 + 56) = v16;
  *(a7 + 64) = v17;
  v14 = *(type metadata accessor for FavoritesList(0) + 44);
  *(a7 + v14) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE890, &qword_1CFCA5598);
  result = swift_storeEnumTagMultiPayload();
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 17) = a4;
  *(a7 + 24) = a5;
  *(a7 + 32) = a6;
  return result;
}

uint64_t FavoritesList.body.getter@<X0>(uint64_t a1@<X8>)
{
  v97 = a1;
  v80 = sub_1CFC9F448();
  v79 = *(v80 - 8);
  v2 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v80);
  v78 = &v78 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE898, &qword_1CFCA55A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v96 = &v78 - v6;
  v7 = type metadata accessor for FavoritesList(0);
  v93 = *(v7 - 8);
  v100 = *(v93 + 8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v103 = &v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE8A0, &qword_1CFCA55A8);
  v82 = *(v9 - 8);
  v10 = *(v82 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v78 - v11;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE8A8, &qword_1CFCA55B0);
  v86 = *(v85 - 8);
  v13 = v86[8];
  MEMORY[0x1EEE9AC00](v85);
  v15 = &v78 - v14;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE8B0, &qword_1CFCA55B8);
  v88 = *(v87 - 8);
  v16 = *(v88 + 8);
  MEMORY[0x1EEE9AC00](v87);
  v83 = &v78 - v17;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE8B8, &qword_1CFCA55C0);
  v89 = *(v90 - 8);
  v18 = *(v89 + 64);
  MEMORY[0x1EEE9AC00](v90);
  v84 = &v78 - v19;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE8C0, &qword_1CFCA55C8);
  v20 = *(*(v99 - 8) + 64);
  MEMORY[0x1EEE9AC00](v99);
  v98 = &v78 - v21;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE8C8, &qword_1CFCA55D0);
  v94 = *(v95 - 8);
  v22 = *(v94 + 64);
  MEMORY[0x1EEE9AC00](v95);
  v92 = &v78 - v23;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE8D0, &qword_1CFCA55D8);
  v24 = *(*(v101 - 8) + 64);
  MEMORY[0x1EEE9AC00](v101);
  v91 = &v78 - v25;
  v105 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE8D8, &qword_1CFCA55E0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EE8E0, &qword_1CFCA55E8);
  v27 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EE8E8, &qword_1CFCA55F0);
  v28 = sub_1CFC2F07C();
  v106 = v27;
  v107 = v28;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v106 = v26;
  v107 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_1CFC9ECF8();
  v30 = [objc_opt_self() currentDevice];
  [v30 userInterfaceIdiom];

  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE9A8, &qword_1CFCA5650);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE9B0, &qword_1CFCA5658);
  v32 = sub_1CFBA57C0(&qword_1EC4EE9B8, &qword_1EC4EE8A0, &qword_1CFCA55A8);
  v33 = sub_1CFC9E0B8();
  v34 = v9;
  v106 = v9;
  v107 = v33;
  v108 = v32;
  v109 = MEMORY[0x1E697C0D8];
  v35 = swift_getOpaqueTypeConformance2();
  v36 = sub_1CFC9E1F8();
  v106 = v9;
  v107 = v36;
  v108 = v32;
  v109 = MEMORY[0x1E697C200];
  v37 = swift_getOpaqueTypeConformance2();
  sub_1CFC9EE18();
  (*(v82 + 8))(v12, v34);
  *(v102 + 16);
  *(v102 + 16);
  type metadata accessor for BundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v39 = [objc_opt_self() bundleForClass_];
  v40 = sub_1CFC9BE28();
  v42 = v41;

  v112 = v40;
  v113 = v42;
  v106 = v34;
  v107 = v31;
  v108 = v81;
  v109 = v32;
  v110 = v35;
  v111 = v37;
  v43 = swift_getOpaqueTypeConformance2();
  v44 = sub_1CFBB4460();
  v45 = MEMORY[0x1E69E6158];
  v46 = v83;
  v47 = v85;
  sub_1CFC9EF48();

  (v86[1])(v15, v47);
  v86 = &v78;
  v48 = v102;
  v104 = v102;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE9C0, &unk_1CFCA5660);
  v106 = v47;
  v107 = v45;
  v108 = v43;
  v109 = v44;
  swift_getOpaqueTypeConformance2();
  sub_1CFBA57C0(&qword_1EC4EE9C8, &qword_1EC4EE9C0, &unk_1CFCA5660);
  v49 = v84;
  v50 = v87;
  sub_1CFC9F058();
  (*(v88 + 1))(v46, v50);
  v51 = *v48;
  v52 = sub_1CFC9C6B8();
  v53 = v48;
  v54 = v103;
  v88 = type metadata accessor for FavoritesList;
  sub_1CFC35288(v48, v103, type metadata accessor for FavoritesList);
  v55 = *(v93 + 80);
  v56 = (v55 + 16) & ~v55;
  v57 = swift_allocObject();
  v93 = type metadata accessor for FavoritesList;
  sub_1CFC352F0(v54, v57 + v56, type metadata accessor for FavoritesList);
  v58 = v98;
  (*(v89 + 32))(v98, v49, v90);
  v59 = v99;
  *&v58[*(v99 + 52)] = v52;
  v60 = &v58[*(v59 + 56)];
  *v60 = sub_1CFC344D8;
  v60[1] = v57;
  v61 = v53[8];
  LOBYTE(v112) = *(v53 + 56);
  v113 = v61;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDEE0, &qword_1CFCA5670);
  sub_1CFC9F258();
  v62 = v53;
  v63 = v103;
  sub_1CFC35288(v62, v103, type metadata accessor for FavoritesList);
  v64 = swift_allocObject();
  sub_1CFC352F0(v63, v64 + v56, type metadata accessor for FavoritesList);
  sub_1CFBA57C0(&qword_1EC4EE9D0, &qword_1EC4EE8C0, &qword_1CFCA55C8);
  sub_1CFC2B3C0();
  v65 = v92;
  v66 = v98;
  sub_1CFC9F038();
  v67 = v96;

  v68 = v102;
  v69 = v91;

  v70 = v103;

  sub_1CFBC2FB0(v66, &qword_1EC4EE8C0, &qword_1CFCA55C8);
  sub_1CFC35288(v68, v70, v88);
  v99 = v55;
  v71 = swift_allocObject();
  sub_1CFC352F0(v70, v71 + v56, v93);
  (*(v94 + 32))(v69, v65, v95);
  v72 = (v69 + *(v101 + 36));
  *v72 = sub_1CFC34774;
  v72[1] = v71;
  v72[2] = 0;
  v72[3] = 0;
  sub_1CFC2DC20(v67);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDAF8, &qword_1CFCA2F60);
  if ((*(*(v73 - 8) + 48))(v67, 1, v73) == 1)
  {
    sub_1CFBC2FB0(v67, &qword_1EC4EE898, &qword_1CFCA55A0);
    v74 = 0;
  }

  else
  {
    v75 = v78;
    MEMORY[0x1D3871890](v73);
    sub_1CFBC2FB0(v67, &qword_1EC4EDAF8, &qword_1CFCA2F60);
    v74 = sub_1CFC9F438();
    (*(v79 + 8))(v75, v80);
  }

  LOBYTE(v106) = v74 & 1;
  sub_1CFC35288(v68, v70, type metadata accessor for FavoritesList);
  v76 = swift_allocObject();
  sub_1CFC352F0(v70, v76 + v56, type metadata accessor for FavoritesList);
  sub_1CFC34828();
  sub_1CFC9F088();

  return sub_1CFBC2FB0(v69, &qword_1EC4EE8D0, &qword_1CFCA55D8);
}

uint64_t sub_1CFC2EDA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v18[1] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE8E8, &qword_1CFCA55F0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v18 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE8E0, &qword_1CFCA55E8);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v18 - v11;
  v18[4] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE900, &qword_1CFCA55F8);
  sub_1CFC2F10C();
  sub_1CFC9F3E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EEBA8, &unk_1CFCA5900);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CFCA1DC0;
  v14 = sub_1CFC9DF08();
  *(inited + 32) = v14;
  v15 = sub_1CFC9DF18();
  *(inited + 33) = v15;
  sub_1CFC9DF28();
  sub_1CFC9DF28();
  if (sub_1CFC9DF28() != v14)
  {
    sub_1CFC9DF28();
  }

  sub_1CFC9DF28();
  if (sub_1CFC9DF28() != v15)
  {
    sub_1CFC9DF28();
  }

  v16 = sub_1CFC2F07C();
  sub_1CFC9EFC8();
  (*(v4 + 8))(v7, v3);
  sub_1CFC9EBC8();
  v18[5] = v3;
  v18[6] = v16;
  swift_getOpaqueTypeConformance2();
  sub_1CFC9EF88();
  return (*(v9 + 8))(v12, v8);
}

unint64_t sub_1CFC2F07C()
{
  result = qword_1EC4EE8F0;
  if (!qword_1EC4EE8F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EE8E8, &qword_1CFCA55F0);
    sub_1CFC2F10C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4EE8F0);
  }

  return result;
}

unint64_t sub_1CFC2F10C()
{
  result = qword_1EC4EE8F8;
  if (!qword_1EC4EE8F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EE900, &qword_1CFCA55F8);
    sub_1CFC2F1C4();
    sub_1CFBA57C0(&qword_1EC4EE998, &qword_1EC4EE9A0, &qword_1CFCA5648);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4EE8F8);
  }

  return result;
}

unint64_t sub_1CFC2F1C4()
{
  result = qword_1EC4EE908;
  if (!qword_1EC4EE908)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EE910, &qword_1CFCA5600);
    sub_1CFC2F27C();
    sub_1CFBA57C0(&qword_1EC4EE988, &qword_1EC4EE990, &qword_1CFCA5640);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4EE908);
  }

  return result;
}

unint64_t sub_1CFC2F27C()
{
  result = qword_1EC4EE918;
  if (!qword_1EC4EE918)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EE920, &qword_1CFCA5608);
    sub_1CFC2F300();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4EE918);
  }

  return result;
}

unint64_t sub_1CFC2F300()
{
  result = qword_1EC4EE928;
  if (!qword_1EC4EE928)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EE930, &qword_1CFCA5610);
    sub_1CFC2F38C();
    sub_1CFC2F564();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4EE928);
  }

  return result;
}

unint64_t sub_1CFC2F38C()
{
  result = qword_1EC4EE938;
  if (!qword_1EC4EE938)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EE940, &qword_1CFCA5618);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EE948, &qword_1CFCA5620);
    sub_1CFC2F480();
    swift_getOpaqueTypeConformance2();
    sub_1CFBA57C0(&qword_1EC4EE970, &qword_1EC4EE978, &qword_1CFCA5638);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4EE938);
  }

  return result;
}

unint64_t sub_1CFC2F480()
{
  result = qword_1EC4EE950;
  if (!qword_1EC4EE950)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EE948, &qword_1CFCA5620);
    sub_1CFBA57C0(&qword_1EC4EE958, &qword_1EC4EE960, &qword_1CFCA5628);
    sub_1CFBA57C0(&qword_1EE04D260, &qword_1EC4EE968, &qword_1CFCA5630);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4EE950);
  }

  return result;
}

unint64_t sub_1CFC2F564()
{
  result = qword_1EC4EE980;
  if (!qword_1EC4EE980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4EE980);
  }

  return result;
}

uint64_t sub_1CFC2F5B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v3 = type metadata accessor for FavoritesList(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = *(a1 + 48);
  v23 = *(a1 + 40);
  v24 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EEAD0, &qword_1CFCA5860);
  sub_1CFC9F238();
  v21 = type metadata accessor for FavoritesList;
  sub_1CFC35288(a1, v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FavoritesList);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = swift_allocObject();
  v20 = type metadata accessor for FavoritesList;
  sub_1CFC352F0(v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for FavoritesList);
  v19[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE888, &qword_1CFCA5560);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE930, &qword_1CFCA5610);
  sub_1CFBA57C0(&qword_1EC4EEBB0, &qword_1EC4EE888, &qword_1CFCA5560);
  sub_1CFC2F300();
  sub_1CFC35220(&qword_1EC4EEBB8, MEMORY[0x1E6993700]);
  v9 = v22;
  sub_1CFC9F3C8();
  v10 = v21;
  sub_1CFC35288(a1, v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v21);
  v11 = swift_allocObject();
  v12 = v20;
  sub_1CFC352F0(v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v7, v20);
  v13 = swift_allocObject();
  *(v13 + 16) = sub_1CFC357F4;
  *(v13 + 24) = v11;
  v14 = (v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE910, &qword_1CFCA5600) + 36));
  *v14 = sub_1CFC35868;
  v14[1] = v13;
  sub_1CFC35288(a1, v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  v15 = swift_allocObject();
  sub_1CFC352F0(v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v7, v12);
  v16 = swift_allocObject();
  *(v16 + 16) = sub_1CFC35890;
  *(v16 + 24) = v15;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE900, &qword_1CFCA55F8);
  v18 = (v9 + *(result + 36));
  *v18 = sub_1CFC35910;
  v18[1] = v16;
  return result;
}

uint64_t sub_1CFC2F920@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v26 = a2;
  v28 = a3;
  v4 = sub_1CFC9C608();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = type metadata accessor for FavoritesList(0);
  v25 = *(v7 - 8);
  v8 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE948, &qword_1CFCA5620);
  v10 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27);
  v12 = &v24 - v11;
  v13 = *(v5 + 16);
  v13(&v24 - v11, a1, v4);
  sub_1CFC35288(v26, v9, type metadata accessor for FavoritesList);
  v13(&v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  v14 = (*(v25 + 80) + 16) & ~*(v25 + 80);
  v15 = (v8 + *(v5 + 80) + v14) & ~*(v5 + 80);
  v16 = swift_allocObject();
  sub_1CFC352F0(v9, v16 + v14, type metadata accessor for FavoritesList);
  (*(v5 + 32))(v16 + v15, &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  v17 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE960, &qword_1CFCA5628) + 36)];
  *v17 = sub_1CFC3593C;
  v17[1] = v16;
  *&v12[*(v27 + 36)] = sub_1CFC9E8F8();
  sub_1CFC9EC18();
  sub_1CFC2F480();
  v18 = v28;
  sub_1CFC9EF08();
  sub_1CFBC2FB0(v12, &qword_1EC4EE948, &qword_1CFCA5620);
  v29 = sub_1CFC9F138();
  v19 = sub_1CFC9F348();
  *(v18 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE940, &qword_1CFCA5618) + 36)) = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED760, &qword_1CFCA2690);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1CFCA2540;
  *(v20 + 32) = sub_1CFC9C5E8();
  v21 = swift_allocObject();
  *(v21 + 16) = v20;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE930, &qword_1CFCA5610);
  v23 = v18 + *(result + 36);
  *v23 = sub_1CFC35A20;
  *(v23 + 8) = v21;
  *(v23 + 16) = 0;
  return result;
}

uint64_t sub_1CFC2FCD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v26 = a3;
  v27 = a4;
  v22 = a2;
  v24 = a1;
  v25 = sub_1CFC9C608();
  v5 = *(v25 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v21 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FavoritesList(0);
  v23 = *(v7 - 8);
  v8 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v20 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1CFC9D848();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v12, v24, v9);
  sub_1CFC35288(a2, &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FavoritesList);
  v14 = v25;
  v13 = v26;
  (*(v5 + 16))(&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v26, v25);
  v15 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v16 = (v11 + *(v23 + 80) + v15) & ~*(v23 + 80);
  v17 = (v8 + *(v5 + 80) + v16) & ~*(v5 + 80);
  v18 = swift_allocObject();
  (*(v10 + 32))(v18 + v15, v12, v9);
  sub_1CFC352F0(v20, v18 + v16, type metadata accessor for FavoritesList);
  (*(v5 + 32))(v18 + v17, v21, v14);
  v28 = v13;
  v29 = v22;
  type metadata accessor for FavoriteListCell(0);
  sub_1CFC35220(qword_1EC4EEBC0, type metadata accessor for FavoriteListCell);
  return sub_1CFC9F298();
}

uint64_t sub_1CFC30020(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1CFC9C608();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = type metadata accessor for FavoritesList(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  sub_1CFC35288(a2, &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FavoritesList);
  (*(v6 + 16))(&v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v5);
  v11 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v12 = (v10 + *(v6 + 80) + v11) & ~*(v6 + 80);
  v13 = swift_allocObject();
  sub_1CFC352F0(&v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v11, type metadata accessor for FavoritesList);
  (*(v6 + 32))(v13 + v12, &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  sub_1CFC9D838();
}

uint64_t sub_1CFC3022C(uint64_t a1)
{
  v27 = a1;
  v1 = sub_1CFC9C608();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED950, &qword_1CFCA2710);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v26 - v7;
  v9 = sub_1CFC9F448();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE898, &qword_1CFCA55A0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v26 - v16;
  sub_1CFC2DC20(&v26 - v16);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDAF8, &qword_1CFCA2F60);
  if ((*(*(v18 - 8) + 48))(v17, 1, v18) == 1)
  {
    sub_1CFBC2FB0(v17, &qword_1EC4EE898, &qword_1CFCA55A0);
  }

  else
  {
    MEMORY[0x1D3871890](v18);
    sub_1CFBC2FB0(v17, &qword_1EC4EDAF8, &qword_1CFCA2F60);
    v19 = sub_1CFC9F438();
    result = (*(v10 + 8))(v13, v9);
    if (v19)
    {
      return result;
    }
  }

  v21 = sub_1CFC9F998();
  (*(*(v21 - 8) + 56))(v8, 1, 1, v21);
  (*(v2 + 16))(&v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v27, v1);
  sub_1CFC9F968();
  v22 = sub_1CFC9F958();
  v23 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v24 = swift_allocObject();
  v25 = MEMORY[0x1E69E85E0];
  *(v24 + 16) = v22;
  *(v24 + 24) = v25;
  (*(v2 + 32))(v24 + v23, v4, v1);
  sub_1CFBDC330(0, 0, v8, &unk_1CFCA5918, v24);
}

uint64_t sub_1CFC305B0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v23 = a2;
  v5 = sub_1CFC9C608();
  v6 = *(v5 - 8);
  v24 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FavoritesList(0);
  v22 = *(v9 - 8);
  v10 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for FavoriteListCell(0);
  v13 = *(v6 + 16);
  v13(a3 + v12[5], a1, v5);
  v25 = *v23;
  sub_1CFC35288(v23, v11, type metadata accessor for FavoritesList);
  v14 = a1;
  v15 = v5;
  v13(v8, v14, v5);
  v16 = (*(v22 + 80) + 16) & ~*(v22 + 80);
  v17 = (v10 + *(v6 + 80) + v16) & ~*(v6 + 80);
  v18 = swift_allocObject();
  sub_1CFC352F0(v11, v18 + v16, type metadata accessor for FavoritesList);
  (*(v6 + 32))(v18 + v17, v8, v15);
  *(a3 + v12[9]) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE3A0, &qword_1CFCA5830);
  swift_storeEnumTagMultiPayload();
  *a3 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE890, &qword_1CFCA5598);
  swift_storeEnumTagMultiPayload();
  *(a3 + v12[6]) = v25;
  v19 = (a3 + v12[7]);
  *v19 = sub_1CFC35D9C;
  v19[1] = v18;
  v20 = v12[8];

  result = sub_1CFC9F178();
  *(a3 + v20) = result;
  return result;
}

uint64_t sub_1CFC30880(uint64_t a1)
{
  v1 = *(a1 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED760, &qword_1CFCA2690);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1CFCA2540;
  *(v2 + 32) = sub_1CFC9C5E8();
  sub_1CFC8C10C(v2);
}

uint64_t sub_1CFC30908(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  result = sub_1CFC9C098();
  if ((v5 & 1) == 0)
  {
    v6 = *a3;
    return sub_1CFC9C6C8();
  }

  return result;
}

uint64_t sub_1CFC309BC(uint64_t a1, uint64_t (*a2)(void), void (*a3)(uint64_t))
{
  v4 = a2(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v11 - v8;
  a3(v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE8A0, &qword_1CFCA55A8);
  sub_1CFBA57C0(&qword_1EC4EE9B8, &qword_1EC4EE8A0, &qword_1CFCA55A8);
  sub_1CFC9F0A8();
  return (*(v5 + 8))(v9, v4);
}

uint64_t sub_1CFC30B10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v182 = a1;
  v172 = a2;
  v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EEAD8, &qword_1CFCA5868);
  v2 = *(*(v176 - 8) + 64);
  MEMORY[0x1EEE9AC00](v176);
  v175 = v139 - v3;
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EEAE0, &qword_1CFCA5870);
  v160 = *(v174 - 8);
  v4 = *(v160 + 64);
  MEMORY[0x1EEE9AC00](v174);
  v159 = v139 - v5;
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EEAE8, &qword_1CFCA5878);
  v158 = *(v173 - 8);
  v6 = *(v158 + 64);
  MEMORY[0x1EEE9AC00](v173);
  v157 = v139 - v7;
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EEAF0, &qword_1CFCA5880);
  v143 = *(v165 - 8);
  v8 = *(v143 + 64);
  MEMORY[0x1EEE9AC00](v165);
  v142 = v139 - v9;
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EEAF8, &qword_1CFCA5888);
  v141 = *(v170 - 8);
  v10 = *(v141 + 64);
  MEMORY[0x1EEE9AC00](v170);
  v140 = v139 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EEB00, &qword_1CFCA5890);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = v139 - v14;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EEB08, &qword_1CFCA5898);
  v16 = *(*(v154 - 8) + 64);
  MEMORY[0x1EEE9AC00](v154);
  v153 = v139 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EEB10, &qword_1CFCA58A0);
  v167 = *(v18 - 8);
  v168 = v18;
  v19 = *(v167 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v155 = v139 - v20;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EEB18, &qword_1CFCA58A8);
  v151 = *(v152 - 8);
  v21 = *(v151 + 64);
  MEMORY[0x1EEE9AC00](v152);
  v147 = v139 - v22;
  v23 = sub_1CFC9DEF8();
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v144 = v139 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = sub_1CFC9DFE8();
  v146 = *(v150 - 8);
  v26 = *(v146 + 64);
  MEMORY[0x1EEE9AC00](v150);
  v145 = v139 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EEB20, &qword_1CFCA58B0);
  v29 = *(*(v28 - 8) + 64);
  v30 = MEMORY[0x1EEE9AC00](v28 - 8);
  v149 = v139 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v179 = v139 - v32;
  v166 = sub_1CFC9F448();
  v164 = *(v166 - 8);
  v33 = *(v164 + 64);
  MEMORY[0x1EEE9AC00](v166);
  v163 = v139 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE898, &qword_1CFCA55A0);
  v36 = *(*(v35 - 8) + 64);
  v37 = MEMORY[0x1EEE9AC00](v35 - 8);
  v162 = v139 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v40 = v139 - v39;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EEB28, &qword_1CFCA58B8);
  v42 = *(*(v41 - 8) + 64);
  v43 = MEMORY[0x1EEE9AC00](v41 - 8);
  v161 = v139 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v181 = v139 - v45;
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EEB30, &qword_1CFCA58C0);
  v46 = *(v169 - 8);
  v47 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v169);
  v148 = v139 - v48;
  v49 = sub_1CFC9E838();
  v50 = *(*(v49 - 8) + 64);
  v51 = MEMORY[0x1EEE9AC00](v49 - 8);
  v156 = v139 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = MEMORY[0x1EEE9AC00](v51);
  v55 = v139 - v54;
  MEMORY[0x1EEE9AC00](v53);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EEB38, &qword_1CFCA58C8);
  v177 = *(v56 - 8);
  v57 = *(v177 + 64);
  v58 = MEMORY[0x1EEE9AC00](v56);
  v178 = v139 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v58);
  v61 = v139 - v60;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EEB40, &unk_1CFCA58D0);
  v63 = *(*(v62 - 8) + 64);
  v64 = MEMORY[0x1EEE9AC00](v62 - 8);
  v66 = v139 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v64);
  v180 = v139 - v67;
  v68 = [objc_opt_self() currentDevice];
  v69 = [v68 userInterfaceIdiom];

  v171 = v15;
  v139[1] = v55;
  if (qword_1F4C6AC38 == v69 || qword_1F4C6AC40 == v69)
  {
    v74 = sub_1CFC9E7E8();
    v139[0] = v139;
    MEMORY[0x1EEE9AC00](v74);
    v139[-2] = v182;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4ED080, &unk_1CFCA1E20);
    sub_1CFBA57C0(&qword_1EE04D1B8, &unk_1EC4ED080, &unk_1CFCA1E20);
    sub_1CFC9DEA8();
    v75 = sub_1CFBA57C0(&qword_1EC4EEB48, &qword_1EC4EEB38, &qword_1CFCA58C8);
    v76 = v148;
    MEMORY[0x1D3870DB0](v61, v56, v75);
    v77 = v169;
    (*(v46 + 16))(v66, v76, v169);
    (*(v46 + 56))(v66, 0, 1, v77);
    v183 = v56;
    v184 = v75;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    MEMORY[0x1D3870DF0](v66, v77, OpaqueTypeConformance2);
    sub_1CFBC2FB0(v66, &qword_1EC4EEB40, &unk_1CFCA58D0);
    (*(v46 + 8))(v76, v77);
    v79 = v61;
    v72 = v56;
    (*(v177 + 8))(v79, v56);
  }

  else
  {
    v70 = v169;
    (*(v46 + 56))(v66, 1, 1, v169);
    v71 = sub_1CFBA57C0(&qword_1EC4EEB48, &qword_1EC4EEB38, &qword_1CFCA58C8);
    v72 = v56;
    v183 = v56;
    v184 = v71;
    v73 = swift_getOpaqueTypeConformance2();
    MEMORY[0x1D3870DF0](v66, v70, v73);
    sub_1CFBC2FB0(v66, &qword_1EC4EEB40, &unk_1CFCA58D0);
  }

  sub_1CFC2DC20(v40);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDAF8, &qword_1CFCA2F60);
  v81 = *(v80 - 8);
  v82 = *(v81 + 48);
  v83 = (v81 + 48);
  if (v82(v40, 1, v80) == 1)
  {
    sub_1CFBC2FB0(v40, &qword_1EC4EE898, &qword_1CFCA55A0);
  }

  else
  {
    v84 = v163;
    MEMORY[0x1D3871890](v80);
    sub_1CFBC2FB0(v40, &qword_1EC4EDAF8, &qword_1CFCA2F60);
    v85 = sub_1CFC9F438();
    (*(v164 + 8))(v84, v166);
    if (v85)
    {
      goto LABEL_9;
    }
  }

  if (*(v182 + 16) != 1)
  {
    v91 = v168;
    v92 = v161;
    (*(v167 + 56))(v161, 1, 1, v168);
    v93 = sub_1CFBA57C0(&qword_1EC4EEB50, &qword_1EC4EEB10, &qword_1CFCA58A0);
    MEMORY[0x1D3870DF0](v92, v91, v93);
    sub_1CFBC2FB0(v92, &qword_1EC4EEB28, &qword_1CFCA58B8);
    v94 = 0;
    goto LABEL_14;
  }

LABEL_9:
  v148 = v83;
  v169 = v82;
  v86 = sub_1CFC9E7F8();
  v87 = v182;
  MEMORY[0x1EEE9AC00](v86);
  v139[-2] = v87;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4ED080, &unk_1CFCA1E20);
  sub_1CFBA57C0(&qword_1EE04D1B8, &unk_1EC4ED080, &unk_1CFCA1E20);
  sub_1CFC9DEA8();
  LODWORD(v139[0]) = *(v87 + 16);
  if (v139[0])
  {
    v88 = v149;
    v89 = v152;
    (*(v151 + 56))(v149, 1, 1, v152);
    v183 = v150;
    v184 = MEMORY[0x1E697BFF0];
    v90 = swift_getOpaqueTypeConformance2();
    MEMORY[0x1D3870DE0](v88, v89, v90);
    sub_1CFBC2FB0(v88, &qword_1EC4EEB20, &qword_1CFCA58B0);
  }

  else
  {
    sub_1CFC9E7F8();
    sub_1CFC9DEE8();
    v95 = v145;
    sub_1CFC9DFF8();
    v96 = MEMORY[0x1E697BFF0];
    v97 = v147;
    v98 = v150;
    MEMORY[0x1D3870DA0](v95, v150, MEMORY[0x1E697BFF0]);
    v99 = v151;
    v100 = v149;
    v101 = v152;
    (*(v151 + 16))(v149, v97, v152);
    (*(v99 + 56))(v100, 0, 1, v101);
    v183 = v98;
    v184 = v96;
    v102 = swift_getOpaqueTypeConformance2();
    MEMORY[0x1D3870DE0](v100, v101, v102);
    sub_1CFBC2FB0(v100, &qword_1EC4EEB20, &qword_1CFCA58B0);
    (*(v99 + 8))(v97, v101);
    (*(v146 + 8))(v95, v98);
  }

  v103 = *(v154 + 48);
  v105 = v177;
  v104 = v178;
  v106 = v153;
  (*(v177 + 16))(v153, v178, v72);
  v107 = v179;
  sub_1CFBA29FC(v179, &v106[v103], &qword_1EC4EEB20, &qword_1CFCA58B0);
  v108 = v155;
  sub_1CFC9E6A8();
  v110 = v167;
  v109 = v168;
  v111 = v161;
  (*(v167 + 16))(v161, v108, v168);
  (*(v110 + 56))(v111, 0, 1, v109);
  v112 = sub_1CFBA57C0(&qword_1EC4EEB50, &qword_1EC4EEB10, &qword_1CFCA58A0);
  MEMORY[0x1D3870DF0](v111, v109, v112);
  sub_1CFBC2FB0(v111, &qword_1EC4EEB28, &qword_1CFCA58B8);
  (*(v110 + 8))(v108, v109);
  sub_1CFBC2FB0(v107, &qword_1EC4EEB20, &qword_1CFCA58B0);
  (*(v105 + 8))(v104, v72);
  v82 = v169;
  v94 = v139[0];
LABEL_14:
  v113 = v162;
  sub_1CFC2DC20(v162);
  if (v82(v113, 1, v80) == 1)
  {
    sub_1CFBC2FB0(v113, &qword_1EC4EE898, &qword_1CFCA55A0);
    v114 = v171;
LABEL_19:
    if (v94)
    {
      sub_1CFC9E7E8();
    }

    else
    {
      sub_1CFC9E7F8();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EEB58, &qword_1CFCA58E0);
    sub_1CFC35478();
    v118 = v157;
    sub_1CFC9DEA8();
    v119 = sub_1CFBA57C0(&qword_1EC4EEB68, &qword_1EC4EEAE8, &qword_1CFCA5878);
    v120 = v159;
    v121 = v173;
    MEMORY[0x1D3870DB0](v118, v173, v119);
    v122 = sub_1CFBA57C0(&qword_1EC4EEB70, &qword_1EC4EEAF8, &qword_1CFCA5888);
    v183 = v170;
    v184 = v122;
    v123 = swift_getOpaqueTypeConformance2();
    v183 = v121;
    v184 = v119;
    v124 = swift_getOpaqueTypeConformance2();
    v125 = v174;
    MEMORY[0x1D3870DD0](v120, v165, v174, v123, v124);
    (*(v160 + 8))(v120, v125);
    v126 = &v185;
    goto LABEL_25;
  }

  v115 = v163;
  MEMORY[0x1D3871890](v80);
  sub_1CFBC2FB0(v113, &qword_1EC4EDAF8, &qword_1CFCA2F60);
  v116 = sub_1CFC9F438();
  (*(v164 + 8))(v115, v166);
  v114 = v171;
  if ((v116 & 1) == 0)
  {
    goto LABEL_19;
  }

  if (v94)
  {
    v117 = sub_1CFC9E7E8();
  }

  else
  {
    v117 = sub_1CFC9E7F8();
  }

  MEMORY[0x1EEE9AC00](v117);
  v139[-2] = v182;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EEB78, &qword_1CFCA58E8);
  sub_1CFBA57C0(&qword_1EC4EEB80, &qword_1EC4EEB78, &qword_1CFCA58E8);
  v118 = v140;
  sub_1CFC9DEA8();
  v127 = sub_1CFBA57C0(&qword_1EC4EEB70, &qword_1EC4EEAF8, &qword_1CFCA5888);
  v128 = v142;
  v121 = v170;
  MEMORY[0x1D3870DB0](v118, v170, v127);
  v183 = v121;
  v184 = v127;
  v129 = swift_getOpaqueTypeConformance2();
  v130 = sub_1CFBA57C0(&qword_1EC4EEB68, &qword_1EC4EEAE8, &qword_1CFCA5878);
  v183 = v173;
  v184 = v130;
  v131 = swift_getOpaqueTypeConformance2();
  v132 = v165;
  MEMORY[0x1D3870DC0](v128, v165, v174, v129, v131);
  (*(v143 + 8))(v128, v132);
  v126 = &v173;
LABEL_25:
  (*(*(v126 - 32) + 8))(v118, v121);
  v133 = v175;
  v134 = *(v176 + 48);
  v135 = *(v176 + 64);
  v136 = v180;
  sub_1CFBA29FC(v180, v175, &qword_1EC4EEB40, &unk_1CFCA58D0);
  v137 = v181;
  sub_1CFBA29FC(v181, v133 + v134, &qword_1EC4EEB28, &qword_1CFCA58B8);
  sub_1CFBA29FC(v114, v133 + v135, &qword_1EC4EEB00, &qword_1CFCA5890);
  sub_1CFC9E6A8();
  sub_1CFBC2FB0(v114, &qword_1EC4EEB00, &qword_1CFCA5890);
  sub_1CFBC2FB0(v137, &qword_1EC4EEB28, &qword_1CFCA58B8);
  return sub_1CFBC2FB0(v136, &qword_1EC4EEB40, &unk_1CFCA58D0);
}

uint64_t sub_1CFC32200@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1CFC9F1A8();
  *a1 = result;
  return result;
}

uint64_t sub_1CFC32238(uint64_t a1)
{
  v2 = type metadata accessor for FavoritesList(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1CFC35288(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FavoritesList);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_1CFC352F0(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5, type metadata accessor for FavoritesList);
  return sub_1CFC9F298();
}

uint64_t sub_1CFC3237C(uint64_t a1)
{
  v1 = *(a1 + 56);
  v2 = *(a1 + 64);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDEE0, &qword_1CFCA5670);
  sub_1CFC9F238();
  sub_1CFC9F248();
}

uint64_t sub_1CFC32414(uint64_t a1)
{
  v2 = type metadata accessor for FavoritesList(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1CFC35288(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FavoritesList);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_1CFC352F0(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5, type metadata accessor for FavoritesList);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EEB88, &qword_1CFCA58F0);
  sub_1CFC3562C();
  return sub_1CFC9F298();
}

uint64_t sub_1CFC3257C()
{
  sub_1CFC9F568();
  sub_1CFC9E018();
}

uint64_t sub_1CFC325E8(uint64_t a1)
{
  v2 = sub_1CFC9F448();
  v27 = *(v2 - 8);
  v28 = v2;
  v3 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v26 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CFC9E4E8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE890, &qword_1CFCA5598);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = (&v25 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE898, &qword_1CFCA55A0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v25 - v16;
  v18 = type metadata accessor for FavoritesList(0);
  sub_1CFBA29FC(a1 + *(v18 + 44), v13, &qword_1EC4EE890, &qword_1CFCA5598);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1CFBCCE88(v13, v17, &qword_1EC4EE898, &qword_1CFCA55A0);
  }

  else
  {
    v19 = *v13;
    sub_1CFC9FAE8();
    v20 = sub_1CFC9EB68();
    sub_1CFC9D858();

    sub_1CFC9E4D8();
    swift_getAtKeyPath();

    (*(v6 + 8))(v9, v5);
  }

  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDAF8, &qword_1CFCA2F60);
  if ((*(*(v21 - 8) + 48))(v17, 1, v21) == 1)
  {
    v22 = &qword_1EC4EE898;
    v23 = &qword_1CFCA55A0;
  }

  else
  {
    (*(v27 + 104))(v26, *MEMORY[0x1E697D710], v28);
    sub_1CFC9F368();
    v22 = &qword_1EC4EDAF8;
    v23 = &qword_1CFCA2F60;
  }

  return sub_1CFBC2FB0(v17, v22, v23);
}

uint64_t sub_1CFC32958@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1CFC9F1A8();
  v3 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EEB88, &qword_1CFCA58F0) + 36);
  result = sub_1CFC9E0F8();
  *a1 = v2;
  return result;
}

uint64_t sub_1CFC329BC@<X0>(uint64_t a1@<X8>)
{
  sub_1CFC9DE28();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EEB58, &qword_1CFCA58E0);
  *(a1 + *(result + 36)) = 257;
  return result;
}

uint64_t sub_1CFC32A00(uint64_t *a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  v5 = *(a2 + 48);
  v3 = *a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EEAD0, &qword_1CFCA5860);
  return sub_1CFC9F248();
}

uint64_t sub_1CFC32A5C(uint64_t a1)
{
  v2 = sub_1CFC9F448();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1CFC9E4E8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE890, &qword_1CFCA5598);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = (&v27 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE898, &qword_1CFCA55A0);
  v17 = *(*(v16 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v27 - v19;
  if (*(a1 + 17) == 1)
  {
    v21 = type metadata accessor for FavoritesList(0);
    sub_1CFBA29FC(a1 + *(v21 + 44), v15, &qword_1EC4EE890, &qword_1CFCA5598);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1CFBCCE88(v15, v20, &qword_1EC4EE898, &qword_1CFCA55A0);
    }

    else
    {
      v22 = *v15;
      sub_1CFC9FAE8();
      v23 = sub_1CFC9EB68();
      sub_1CFC9D858();

      sub_1CFC9E4D8();
      swift_getAtKeyPath();

      (*(v8 + 8))(v11, v7);
    }

    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDAF8, &qword_1CFCA2F60);
    if ((*(*(v24 - 8) + 48))(v20, 1, v24) == 1)
    {
      v25 = &qword_1EC4EE898;
      v26 = &qword_1CFCA55A0;
    }

    else
    {
      (*(v3 + 104))(v6, *MEMORY[0x1E697D708], v2);
      sub_1CFC9F368();
      v25 = &qword_1EC4EDAF8;
      v26 = &qword_1CFCA2F60;
    }

    return sub_1CFBC2FB0(v20, v25, v26);
  }

  return result;
}

uint64_t sub_1CFC32DC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[18] = a1;
  v4[19] = a4;
  sub_1CFC9F968();
  v4[20] = sub_1CFC9F958();
  v6 = sub_1CFC9F938();
  v4[21] = v6;
  v4[22] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1CFC32E60, v6, v5);
}

uint64_t sub_1CFC32E60()
{
  v1 = v0[19];
  v2 = sub_1CFC9C5D8();
  v0[23] = v2;
  v0[2] = v0;
  v0[3] = sub_1CFC32F80;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED778, &qword_1CFCA26B0);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1CFBD24BC;
  v0[13] = &block_descriptor_11;
  v0[14] = v3;
  [v2 performActionWithCompletion_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1CFC32F80()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 192) = v3;
  v4 = *(v1 + 176);
  v5 = *(v1 + 168);
  if (v3)
  {
    v6 = sub_1CFC3312C;
  }

  else
  {
    v6 = sub_1CFC330B0;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, v4);
}

uint64_t sub_1CFC330B0()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 160);

  **(v0 + 144) = *(v0 + 192) != 0;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1CFC3312C()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 192);
  v3 = *(v0 + 160);

  swift_willThrow();

  **(v0 + 144) = *(v0 + 192) != 0;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1CFC331C4()
{
  v1 = v0;
  v2 = type metadata accessor for FavoriteListCell(0);
  v3 = v0 + *(v2 + 20);
  v4 = sub_1CFC9C5D8();
  v5 = [v4 name];

  v6 = sub_1CFC9F768();
  v8 = v7;

  v11[0] = v6;
  v11[1] = v8;
  sub_1CFBB4460();
  sub_1CFC9EDF8();
  v9 = *(v1 + *(v2 + 32));
  v11[3] = sub_1CFC9D018();
  v11[4] = MEMORY[0x1E6995C08];
  __swift_allocate_boxed_opaque_existential_0Tm(v11);

  sub_1CFC9D008();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EEAA8, &qword_1CFCA5838);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EEAB0, &unk_1CFCA5840);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED7C0, &qword_1CFCA3EB0);
  sub_1CFC35084();
  sub_1CFC3516C();
  sub_1CFBB76B4();
  return sub_1CFC9CE48();
}

uint64_t sub_1CFC33420@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED760, &qword_1CFCA2690);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1CFCA2540;
  v5 = a1 + *(type metadata accessor for FavoriteListCell(0) + 20);
  *(v4 + 32) = sub_1CFC9C5E8();
  sub_1CFC9D028();
  v6 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EEAA8, &qword_1CFCA5838) + 36));
  *v6 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE3A0, &qword_1CFCA5830);
  swift_storeEnumTagMultiPayload();
  result = type metadata accessor for SensitiveContentButtonBadgeModifier();
  *(v6 + *(result + 20)) = 1;
  return result;
}

uint64_t sub_1CFC3352C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = type metadata accessor for FavoriteListCell(0);
  v30 = *(v3 - 8);
  v4 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = type metadata accessor for RecentCellAccessoryButton(0);
  v6 = *(v5 - 1);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = (&v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_1CFC9F448();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE898, &qword_1CFCA55A0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v29 - v17;
  v31 = a1;
  sub_1CFC4C450(&v29 - v17);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDAF8, &qword_1CFCA2F60);
  if ((*(*(v19 - 8) + 48))(v18, 1, v19) == 1)
  {
    sub_1CFBC2FB0(v18, &qword_1EC4EE898, &qword_1CFCA55A0);
LABEL_5:
    v23 = v5[5];
    v24 = sub_1CFC9C448();
    (*(*(v24 - 8) + 56))(v9 + v23, 1, 1, v24);
    sub_1CFC35288(v31, &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FavoriteListCell);
    v25 = (*(v30 + 80) + 16) & ~*(v30 + 80);
    v26 = swift_allocObject();
    sub_1CFC352F0(&v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v26 + v25, type metadata accessor for FavoriteListCell);
    *v9 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE3A0, &qword_1CFCA5830);
    swift_storeEnumTagMultiPayload();
    *(v9 + v5[6]) = 1;
    v27 = (v9 + v5[7]);
    *v27 = sub_1CFC35358;
    v27[1] = v26;
    v22 = v32;
    sub_1CFC352F0(v9, v32, type metadata accessor for RecentCellAccessoryButton);
    v21 = 0;
    return (*(v6 + 56))(v22, v21, 1, v5);
  }

  MEMORY[0x1D3871890](v19);
  sub_1CFBC2FB0(v18, &qword_1EC4EDAF8, &qword_1CFCA2F60);
  v20 = sub_1CFC9F438();
  (*(v11 + 8))(v14, v10);
  if ((v20 & 1) == 0)
  {
    goto LABEL_5;
  }

  v21 = 1;
  v22 = v32;
  return (*(v6 + 56))(v22, v21, 1, v5);
}

uint64_t sub_1CFC33948@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for FavoriteListCell(0);
  v5 = *(v4 + 20);
  v6 = *(a1 + *(v4 + 24));
  v7 = sub_1CFC9C6D8();
  if (v8)
  {
    v24[5] = v7;
    v24[6] = v8;
    sub_1CFBB4460();
    v7 = sub_1CFC9EDF8();
    v9 = v7;
    v11 = v10;
    v13 = v12;
    v15 = v14 & 1;
  }

  else
  {
    v9 = 0;
    v11 = 0;
    v15 = 0;
    v13 = 0;
  }

  MEMORY[0x1EEE9AC00](v7);
  v24[2] = a1;
  v16 = sub_1CFC2CF58(sub_1CFC35268, v24, v9, v11, v15, v13);
  v18 = v17;
  v20 = v19;
  v22 = v21;
  result = sub_1CFBB74FC(v9, v11, v15, v13);
  *a2 = v16;
  a2[1] = v18;
  a2[2] = v20;
  a2[3] = v22;
  return result;
}

uint64_t sub_1CFC33A6C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 16);
  v26 = a1[3];
  v7 = a2 + *(type metadata accessor for FavoriteListCell(0) + 20);
  if (FavoriteContact.icon.getter())
  {

    v8 = sub_1CFC9EE08();
    v10 = v9;
    v12 = v11;
    v13 = sub_1CFC9ED98();
    v15 = v14;
    v17 = v16;
    sub_1CFBB44C0(v8, v10, v12 & 1);
  }

  else
  {
    v13 = 0;
    v17 = 0;
    v15 = 0xE000000000000000;
  }

  v18 = sub_1CFC9ED98();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  sub_1CFBB44C0(v13, v15, v17 & 1);

  *a3 = v18;
  *(a3 + 8) = v20;
  *(a3 + 16) = v22 & 1;
  *(a3 + 24) = v24;
  return result;
}

uint64_t sub_1CFC33BDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v30[1] = a3;
  v30[2] = a4;
  v34 = a1;
  v35 = a5;
  v31 = sub_1CFC9C608();
  v8 = *(v31 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v11 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1CFC9D808();
  v32 = *(v12 - 8);
  v33 = v12;
  v13 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = a3;
  v37 = a4;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v17 = *(OpaqueTypeMetadata2 - 8);
  v18 = v17[8];
  v19 = MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v21 = v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = v30 - v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4ED580, &qword_1CFCA2480);
  v24 = *(sub_1CFC9D7E8() - 8);
  v25 = *(v24 + 72);
  v26 = (*(v24 + 80) + 32) & ~*(v24 + 80);
  *(swift_allocObject() + 16) = xmmword_1CFCA1DD0;
  (*(v8 + 16))(v11, a2, v31);
  sub_1CFC340B0(v11);
  sub_1CFC33F38();
  sub_1CFC9D7F8();

  sub_1CFC9EE58();
  (*(v32 + 8))(v15, v33);
  v27 = v17[2];
  v27(v23, v21, OpaqueTypeMetadata2);
  v28 = v17[1];
  v28(v21, OpaqueTypeMetadata2);
  v27(v35, v23, OpaqueTypeMetadata2);
  return (v28)(v23, OpaqueTypeMetadata2);
}

uint64_t sub_1CFC33F38()
{
  v0 = sub_1CFC9C5D8();
  v1 = [v0 bundleIdentifier];

  v2 = sub_1CFC9F768();
  v4 = v3;

  v5 = *MEMORY[0x1E695C118];
  if (v2 == sub_1CFC9F768() && v4 == v6)
  {
  }

  else
  {
    v8 = sub_1CFCA02B8();

    if ((v8 & 1) == 0)
    {
      return 3;
    }
  }

  v10 = sub_1CFC9C5D8();
  v11 = [v10 actionType];

  v12 = *MEMORY[0x1E695C1B8];
  v13 = sub_1CFC9F768();
  v15 = v14;
  if (v13 == sub_1CFC9F768() && v15 == v16)
  {

    return 1;
  }

  else
  {
    v17 = sub_1CFCA02B8();

    if (v17)
    {
      return 1;
    }

    else
    {
      return 4;
    }
  }
}

char *sub_1CFC340B0(uint64_t a1)
{
  v2 = sub_1CFC9C5E8();
  v3 = [v2 tuHandlesForPhoneNumbers];

  sub_1CFBA2D80(0, &qword_1EE04CF00, 0x1E69D8C00);
  v4 = sub_1CFC9F8A8();

  if (v4 >> 62)
  {
    v5 = sub_1CFC9FFD8();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = MEMORY[0x1E69E7CC0];
  v41 = a1;
  if (v5)
  {
    v42 = MEMORY[0x1E69E7CC0];
    result = sub_1CFBCAA4C(0, v5 & ~(v5 >> 63), 0);
    if (v5 < 0)
    {
      __break(1u);
      goto LABEL_36;
    }

    v8 = 0;
    v9 = v42;
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x1D3872640](v8, v4);
      }

      else
      {
        v10 = *(v4 + 8 * v8 + 32);
      }

      v11 = v10;
      v12 = [v11 value];
      v13 = sub_1CFC9F768();
      v15 = v14;

      v17 = *(v42 + 16);
      v16 = *(v42 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_1CFBCAA4C((v16 > 1), v17 + 1, 1);
      }

      ++v8;
      *(v42 + 16) = v17 + 1;
      v18 = v42 + 16 * v17;
      *(v18 + 32) = v13;
      *(v18 + 40) = v15;
    }

    while (v5 != v8);

    a1 = v41;
    v6 = MEMORY[0x1E69E7CC0];
  }

  else
  {

    v9 = MEMORY[0x1E69E7CC0];
  }

  sub_1CFC34E24(v9);

  v19 = sub_1CFC9C5E8();
  v20 = [v19 tuHandlesForEmailAddresses];

  v21 = sub_1CFC9F8A8();
  if (v21 >> 62)
  {
    v22 = sub_1CFC9FFD8();
    if (v22)
    {
LABEL_16:
      result = sub_1CFBCAA4C(0, v22 & ~(v22 >> 63), 0);
      if ((v22 & 0x8000000000000000) == 0)
      {
        v23 = 0;
        v24 = v6;
        do
        {
          if ((v21 & 0xC000000000000001) != 0)
          {
            v25 = MEMORY[0x1D3872640](v23, v21);
          }

          else
          {
            v25 = *(v21 + 8 * v23 + 32);
          }

          v26 = v25;
          v27 = [v26 value];
          v28 = sub_1CFC9F768();
          v30 = v29;

          v32 = *(v24 + 16);
          v31 = *(v24 + 24);
          if (v32 >= v31 >> 1)
          {
            sub_1CFBCAA4C((v31 > 1), v32 + 1, 1);
          }

          ++v23;
          *(v24 + 16) = v32 + 1;
          v33 = v24 + 16 * v32;
          *(v33 + 32) = v28;
          *(v33 + 40) = v30;
        }

        while (v22 != v23);

        a1 = v41;
        goto LABEL_28;
      }

LABEL_36:
      __break(1u);
      return result;
    }
  }

  else
  {
    v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v22)
    {
      goto LABEL_16;
    }
  }

  v24 = MEMORY[0x1E69E7CC0];
LABEL_28:
  sub_1CFC34FFC(v24);

  v34 = sub_1CFC9C5C8();
  v36 = HIBYTE(v35) & 0xF;
  if ((v35 & 0x2000000000000000) == 0)
  {
    v36 = v34 & 0xFFFFFFFFFFFFLL;
  }

  if (!v36)
  {

    v37 = sub_1CFC9C5D8();
    v38 = [v37 name];

    sub_1CFC9F768();
  }

  sub_1CFC9D7D8();
  v39 = sub_1CFC9C608();
  v40 = *(*(v39 - 8) + 8);

  return v40(a1, v39);
}

uint64_t sub_1CFC344D8(uint64_t *a1)
{
  v3 = *(type metadata accessor for FavoritesList(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1CFC32A00(a1, v4);
}

uint64_t objectdestroyTm_3()
{
  v1 = type metadata accessor for FavoritesList(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = (v0 + v3);
  v6 = *(v0 + v3);

  v7 = *(v0 + v3 + 8);

  if (*(v0 + v3 + 24))
  {
    v8 = v5[4];
  }

  v9 = v5[5];

  v10 = v5[6];

  v11 = v5[8];

  v12 = v5 + *(v1 + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE890, &qword_1CFCA5598);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDAF8, &qword_1CFCA2F60);
    if (!(*(*(v13 - 8) + 48))(v12, 1, v13))
    {
      v14 = *v12;

      v15 = *(v12 + 1);

      v16 = *(v13 + 32);
      v17 = sub_1CFC9F448();
      (*(*(v17 - 8) + 8))(&v12[v16], v17);
    }
  }

  else
  {
    v18 = *v12;
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1CFC34700@<X0>(void *a1@<X8>)
{
  v3 = *(type metadata accessor for FavoritesList(0) - 8);
  v4 = *(v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));
  a1[1] = 0;
  a1[2] = 0;
  *a1 = v4;
}

uint64_t sub_1CFC3478C(_BYTE *a1, _BYTE *a2)
{
  v5 = type metadata accessor for FavoritesList(0);
  v8 = *(v5 - 8);
  result = v5 - 8;
  v7 = v8;
  if (*a1 == 1 && (*a2 & 1) == 0)
  {
    v9 = v2 + ((*(v7 + 80) + 16) & ~*(v7 + 80));
    if (*(v9 + 17) == 1)
    {
      v10 = *(v9 + 24);
      if (v10)
      {
        v11 = *(v9 + 32);
        return v10();
      }
    }
  }

  return result;
}

unint64_t sub_1CFC34828()
{
  result = qword_1EC4EE9D8;
  if (!qword_1EC4EE9D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EE8D0, &qword_1CFCA55D8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EE8C0, &qword_1CFCA55C8);
    sub_1CFBA57C0(&qword_1EC4EE9D0, &qword_1EC4EE8C0, &qword_1CFCA55C8);
    sub_1CFC2B3C0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4EE9D8);
  }

  return result;
}

void sub_1CFC3497C()
{
  sub_1CFC9C728();
  if (v0 <= 0x3F)
  {
    type metadata accessor for DetailsPresenter();
    if (v1 <= 0x3F)
    {
      sub_1CFC34B44(319, &qword_1EC4EE9F8, &qword_1EC4EEA00, &qword_1CFCA56F8, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1CFC34B44(319, &qword_1EC4EEA08, &qword_1EC4EE888, &qword_1CFCA5560, MEMORY[0x1E6981790]);
        if (v3 <= 0x3F)
        {
          sub_1CFC34AF4();
          if (v4 <= 0x3F)
          {
            sub_1CFC34B44(319, &qword_1EC4EEA10, &qword_1EC4EE898, &qword_1CFCA55A0, MEMORY[0x1E697DCC0]);
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

void sub_1CFC34AF4()
{
  if (!qword_1EE04FFC0)
  {
    v0 = sub_1CFC9F268();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE04FFC0);
    }
  }
}

void sub_1CFC34B44(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1CFC34BF0()
{
  sub_1CFC34B44(319, &qword_1EC4EEA10, &qword_1EC4EE898, &qword_1CFCA55A0, MEMORY[0x1E697DCC0]);
  if (v0 <= 0x3F)
  {
    sub_1CFC9C608();
    if (v1 <= 0x3F)
    {
      sub_1CFC9C728();
      if (v2 <= 0x3F)
      {
        sub_1CFBB02CC();
        if (v3 <= 0x3F)
        {
          sub_1CFC34CF0();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1CFC34CF0()
{
  if (!qword_1EE04D578)
  {
    sub_1CFC9D848();
    v0 = sub_1CFC9DE88();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE04D578);
    }
  }
}

uint64_t sub_1CFC34E24(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1D3871F20](v2, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_1CFBC7E38(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_1CFC34EBC(unint64_t a1)
{
  j = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1CFC9FFD8())
  {
    v4 = sub_1CFBA2D80(0, &qword_1EC4ED538, 0x1E69D8B80);
    v5 = sub_1CFC353C4();
    result = MEMORY[0x1D3871F20](i, v4, v5);
    v12 = result;
    if (j)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1D3872640](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v9 = *(a1 + 8 * j + 32);
      }

      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      sub_1CFBC7F88(&v11, v9);

      if (v10 == v7)
      {
        return v12;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = sub_1CFC9FFD8();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1CFC34FFC(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 40);
    do
    {
      v4 = *(v2 - 1);
      v3 = *v2;

      sub_1CFBC7E38(&v5, v4, v3);

      v2 += 2;
      --v1;
    }

    while (v1);
  }

  return result;
}

unint64_t sub_1CFC35084()
{
  result = qword_1EC4EEAB8;
  if (!qword_1EC4EEAB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EEAA8, &qword_1CFCA5838);
    sub_1CFBA57C0(&qword_1EC4ED7E0, &qword_1EC4ED7E8, &unk_1CFCA5850);
    sub_1CFC35220(&unk_1EE04D980, type metadata accessor for SensitiveContentButtonBadgeModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4EEAB8);
  }

  return result;
}

unint64_t sub_1CFC3516C()
{
  result = qword_1EC4EEAC0;
  if (!qword_1EC4EEAC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EEAB0, &unk_1CFCA5840);
    sub_1CFC35220(qword_1EE04ECD8, type metadata accessor for RecentCellAccessoryButton);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4EEAC0);
  }

  return result;
}

uint64_t sub_1CFC35220(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1CFC35288(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CFC352F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CFC35358()
{
  v1 = type metadata accessor for FavoriteListCell(0);
  v2 = v0 + *(v1 + 28) + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  v3 = *(v2 + 8);
  return (*v2)();
}

unint64_t sub_1CFC353C4()
{
  result = qword_1EC4EEAC8;
  if (!qword_1EC4EEAC8)
  {
    sub_1CFBA2D80(255, &qword_1EC4ED538, 0x1E69D8B80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4EEAC8);
  }

  return result;
}

unint64_t sub_1CFC35478()
{
  result = qword_1EC4EEB60;
  if (!qword_1EC4EEB60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EEB58, &qword_1CFCA58E0);
    sub_1CFC35220(&qword_1EC4EDDE0, MEMORY[0x1E697BDD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4EEB60);
  }

  return result;
}

uint64_t sub_1CFC355A0(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for FavoritesList(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_1CFC3562C()
{
  result = qword_1EC4EEB90;
  if (!qword_1EC4EEB90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EEB88, &qword_1CFCA58F0);
    sub_1CFBA57C0(&qword_1EC4EEB98, &qword_1EC4EEBA0, &qword_1CFCA58F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4EEB90);
  }

  return result;
}

uint64_t sub_1CFC35700()
{
  v1 = type metadata accessor for FavoritesList(0);
  v3 = *(v1 - 8);
  result = v1 - 8;
  v4 = v0 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  v5 = *(v4 + 24);
  if (v5)
  {
    v6 = *(v4 + 32);
    return v5();
  }

  return result;
}

uint64_t sub_1CFC35774@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for FavoritesList(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1CFC2F920(a1, v6, a2);
}

uint64_t sub_1CFC357F4()
{
  v1 = *(*(type metadata accessor for FavoritesList(0) - 8) + 80);
  result = sub_1CFC9C098();
  if ((v3 & 1) == 0)
  {
    v4 = *(v0 + ((v1 + 16) & ~v1));
    return sub_1CFC9C6E8();
  }

  return result;
}

uint64_t sub_1CFC35868()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1CFC35890(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for FavoritesList(0) - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  return sub_1CFC30908(a1, a2, v6);
}

uint64_t sub_1CFC35910(uint64_t a1, void *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return v3(a1, *a2);
}

uint64_t sub_1CFC3593C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for FavoritesList(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_1CFC9C608() - 8);
  v9 = v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_1CFC2FCD0(a1, v2 + v6, v9, a2);
}

uint64_t sub_1CFC35A28()
{
  v1 = *(sub_1CFC9D848() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for FavoritesList(0) - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(sub_1CFC9C608() - 8);
  v8 = v0 + ((v5 + v6 + *(v7 + 80)) & ~*(v7 + 80));

  return sub_1CFC30020(v0 + v2, v0 + v5, v8);
}

uint64_t objectdestroy_73Tm()
{
  v1 = type metadata accessor for FavoritesList(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = sub_1CFC9C608();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);
  v9 = (v0 + v3);
  v10 = *(v0 + v3);

  v11 = *(v0 + v3 + 8);

  if (*(v0 + v3 + 24))
  {
    v12 = v9[4];
  }

  v13 = v9[5];

  v14 = v9[6];

  v15 = v9[8];

  v16 = v9 + *(v1 + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE890, &qword_1CFCA5598);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDAF8, &qword_1CFCA2F60);
    if (!(*(*(v17 - 8) + 48))(v16, 1, v17))
    {
      v18 = *v16;

      v19 = *(v16 + 1);

      v20 = *(v17 + 32);
      v21 = sub_1CFC9F448();
      (*(*(v21 - 8) + 8))(&v16[v20], v21);
    }
  }

  else
  {
    v22 = *v16;
  }

  v23 = (v3 + v4 + v7) & ~v7;
  (*(v6 + 8))(v0 + v23, v5);

  return MEMORY[0x1EEE6BDD0](v0, v23 + v8, v2 | v7 | 7);
}

uint64_t sub_1CFC35D9C()
{
  v1 = *(type metadata accessor for FavoritesList(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_1CFC9C608() - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_1CFC30880(v0 + v2);
}

uint64_t sub_1CFC35E68()
{
  v1 = *(type metadata accessor for FavoritesList(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_1CFC9C608() - 8);
  return sub_1CFC3022C(v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80)));
}

uint64_t sub_1CFC35F28(uint64_t a1)
{
  v4 = *(sub_1CFC9C608() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1CFBD431C;

  return sub_1CFC32DC8(a1, v6, v7, v1 + v5);
}

unint64_t sub_1CFC36030(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    result = sub_1CFBB02CC();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1CFC36150()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EFC50, &qword_1CFCA4600);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1CFCA1DD0;
  sub_1CFCA0078();
  return v0;
}

uint64_t sub_1CFC36200()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EEC68, &unk_1CFCA5AC0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v9[-v3];
  *(v0 + 16) = &unk_1F4C6AC48;
  *(v0 + 32) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + 48) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + 56) = 0;
  v5 = OBJC_IVAR____TtC10CallsAppUI33CallScreeningTipSectionController_cellRegistration;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EEC58, &qword_1CFCA5A38);
  v7 = *(*(v6 - 8) + 56);
  v7(v0 + v5, 1, 1, v6);
  swift_beginAccess();
  *(v0 + 56) = 0;
  swift_allocObject();
  swift_weakInit();
  sub_1CFC9DC68();
  sub_1CFC9FB68();
  v7(v4, 0, 1, v6);
  swift_beginAccess();
  sub_1CFC373B0(v4, v0 + v5);
  swift_endAccess();
  return v0;
}

uint64_t sub_1CFC363CC(void *a1)
{
  v2 = sub_1CFC9F728();
  [a1 setAccessibilityIdentifier_];

  sub_1CFC9D1B8();
  sub_1CFC9D1A8();
  swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();
  swift_allocObject();
  swift_weakLoadStrong();

  swift_weakInit();

  sub_1CFC9D168();
}

uint64_t sub_1CFC36560()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    sub_1CFC9F968();
    v0[7] = sub_1CFC9F958();
    v4 = sub_1CFC9F938();

    return MEMORY[0x1EEE6DFA0](sub_1CFC3664C, v4, v3);
  }

  else
  {
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_1CFC3664C()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);

  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(*(v0 + 48) + 32);
    ObjectType = swift_getObjectType();
    (*(v3 + 8))(ObjectType, v3);
    swift_unknownObjectRelease();
  }

  return MEMORY[0x1EEE6DFA0](sub_1CFC37540, 0, 0);
}

uint64_t sub_1CFC36710()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    sub_1CFC9F968();
    v0[7] = sub_1CFC9F958();
    v4 = sub_1CFC9F938();

    return MEMORY[0x1EEE6DFA0](sub_1CFC367FC, v4, v3);
  }

  else
  {
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_1CFC367FC()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);

  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(*(v0 + 48) + 32);
    ObjectType = swift_getObjectType();
    (*(v3 + 16))(ObjectType, v3);
    swift_unknownObjectRelease();
  }

  return MEMORY[0x1EEE6DFA0](sub_1CFC368A0, 0, 0);
}

uint64_t sub_1CFC368A0()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1CFC36900()
{
  v1 = v0[2];

  sub_1CFBA79B8((v0 + 3));
  sub_1CFBA79B8((v0 + 5));
  sub_1CFC37340(v0 + OBJC_IVAR____TtC10CallsAppUI33CallScreeningTipSectionController_cellRegistration);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CallScreeningTipSectionController()
{
  result = qword_1EE04E2B8;
  if (!qword_1EE04E2B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1CFC369D0()
{
  sub_1CFC36A84();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1CFC36A84()
{
  if (!qword_1EE04D0B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EEC58, &qword_1CFCA5A38);
    v0 = sub_1CFC9FEB8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE04D0B0);
    }
  }
}

unint64_t sub_1CFC36AF8(uint64_t a1)
{
  result = sub_1CFC36B20();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1CFC36B20()
{
  result = qword_1EE04E2D0;
  if (!qword_1EE04E2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE04E2D0);
  }

  return result;
}

unint64_t sub_1CFC36B78()
{
  result = qword_1EC4EEC60;
  if (!qword_1EC4EEC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4EEC60);
  }

  return result;
}

unint64_t sub_1CFC36BCC@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = &type metadata for Sections;
  result = sub_1CFBA4AE4();
  *(a1 + 32) = result;
  *a1 = 4;
  return result;
}

uint64_t sub_1CFC36C08()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v2 = *(v0 + 48);
  return result;
}

uint64_t sub_1CFC36C44(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 48) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1CFC36CA4(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 48);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_1CFC36D38;
}

void sub_1CFC36D38(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  *(*(*a1 + 40) + 48) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v5 = v3[3];
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t sub_1CFC36DF0(char a1)
{
  result = swift_beginAccess();
  *(v1 + 56) = a1;
  return result;
}

uint64_t sub_1CFC36E88()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EEC68, &unk_1CFCA5AC0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v10[-v3];
  v5 = OBJC_IVAR____TtC10CallsAppUI33CallScreeningTipSectionController_cellRegistration;
  swift_beginAccess();
  sub_1CFC372D0(v0 + v5, v4);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EEC58, &qword_1CFCA5A38);
  v7 = *(v6 - 8);
  result = (*(v7 + 48))(v4, 1, v6);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v10[7] = 0;
    sub_1CFC9DC68();
    v9 = sub_1CFC9FBA8();
    (*(v7 + 8))(v4, v6);
    return v9;
  }

  return result;
}

uint64_t sub_1CFC36FF4()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = *(v0 + 32);
    ObjectType = swift_getObjectType();
    (*(v2 + 8))(ObjectType, v2);

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_1CFC37060()
{
  v0 = objc_opt_self();
  v1 = [v0 fractionalWidthDimension_];
  v2 = [v0 estimatedDimension_];
  v3 = objc_opt_self();
  v4 = [v3 sizeWithWidthDimension:v1 heightDimension:v2];

  v5 = [objc_opt_self() itemWithLayoutSize_];
  v6 = [v0 fractionalWidthDimension_];
  v7 = [v0 estimatedDimension_];
  v8 = [v3 sizeWithWidthDimension:v6 heightDimension:v7];

  v9 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED760, &qword_1CFCA2690);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1CFCA2540;
  *(v10 + 32) = v5;
  sub_1CFC37284();
  v11 = v5;
  v12 = sub_1CFC9F898();

  v13 = [v9 horizontalGroupWithLayoutSize:v8 subitems:v12];

  v14 = [objc_opt_self() sectionWithGroup_];
  return v14;
}

unint64_t sub_1CFC37284()
{
  result = qword_1EE04CF80;
  if (!qword_1EE04CF80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE04CF80);
  }

  return result;
}

uint64_t sub_1CFC372D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EEC68, &unk_1CFCA5AC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CFC37340(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EEC68, &unk_1CFCA5AC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1CFC373B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EEC68, &unk_1CFCA5AC0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CFC37420()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1CFBD4A14;

  return sub_1CFC36540(v0);
}

uint64_t sub_1CFC374B0()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1CFBD431C;

  return sub_1CFC366F0(v0);
}

uint64_t LegacyMailbox.accountID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1CFC9C008();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t LegacyMailbox.label.getter()
{
  v1 = (v0 + *(type metadata accessor for LegacyMailbox(0) + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t LegacyMailbox.init(accountID:label:hasUnreadMessages:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v10 = sub_1CFC9C008();
  (*(*(v10 - 8) + 32))(a5, a1, v10);
  result = type metadata accessor for LegacyMailbox(0);
  v12 = (a5 + *(result + 20));
  *v12 = a2;
  v12[1] = a3;
  *(a5 + *(result + 24)) = a4;
  return result;
}

uint64_t LegacyMailbox.hash(into:)()
{
  sub_1CFC9C008();
  sub_1CFC388B0(&qword_1EC4EEC70, MEMORY[0x1E69695A8]);
  sub_1CFC9F6C8();
  v1 = type metadata accessor for LegacyMailbox(0);
  v2 = (v0 + *(v1 + 20));
  if (v2[1])
  {
    v3 = *v2;
    sub_1CFCA0358();
    sub_1CFC9F7C8();
  }

  else
  {
    sub_1CFCA0358();
  }

  v4 = *(v0 + *(v1 + 24));
  return sub_1CFCA0358();
}

uint64_t LegacyMailbox.hashValue.getter()
{
  sub_1CFCA0338();
  sub_1CFC9C008();
  sub_1CFC388B0(&qword_1EC4EEC70, MEMORY[0x1E69695A8]);
  sub_1CFC9F6C8();
  v1 = type metadata accessor for LegacyMailbox(0);
  v2 = (v0 + *(v1 + 20));
  if (v2[1])
  {
    v3 = *v2;
    sub_1CFCA0358();
    sub_1CFC9F7C8();
  }

  else
  {
    sub_1CFCA0358();
  }

  v4 = *(v0 + *(v1 + 24));
  sub_1CFCA0358();
  return sub_1CFCA0378();
}

uint64_t sub_1CFC378A8(uint64_t a1, uint64_t a2)
{
  sub_1CFC9C008();
  sub_1CFC388B0(&qword_1EC4EEC70, MEMORY[0x1E69695A8]);
  sub_1CFC9F6C8();
  v4 = (v2 + *(a2 + 20));
  if (v4[1])
  {
    v5 = *v4;
    sub_1CFCA0358();
    sub_1CFC9F7C8();
  }

  else
  {
    sub_1CFCA0358();
  }

  v6 = *(v2 + *(a2 + 24));
  return sub_1CFCA0358();
}

uint64_t sub_1CFC37980(uint64_t a1, uint64_t a2)
{
  sub_1CFCA0338();
  sub_1CFC9C008();
  sub_1CFC388B0(&qword_1EC4EEC70, MEMORY[0x1E69695A8]);
  sub_1CFC9F6C8();
  v4 = (v2 + *(a2 + 20));
  if (v4[1])
  {
    v5 = *v4;
    sub_1CFCA0358();
    sub_1CFC9F7C8();
  }

  else
  {
    sub_1CFCA0358();
  }

  v6 = *(v2 + *(a2 + 24));
  sub_1CFCA0358();
  return sub_1CFCA0378();
}

uint64_t sub_1CFC37A70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v50 = sub_1CFC9E218();
  v48 = *(v50 - 8);
  v4 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v50);
  v46 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for LegacyMailboxCellView(0);
  v42 = *(v6 - 8);
  v7 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EECA8, &qword_1CFCA5C30);
  v44 = *(v8 - 8);
  v9 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v41 - v10;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EECB0, &qword_1CFCA5C38);
  v43 = *(v45 - 8);
  v12 = *(v43 + 64);
  v13 = MEMORY[0x1EEE9AC00](v45);
  v49 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v47 = &v41 - v15;
  v16 = type metadata accessor for LegacyMailbox(0);
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v53 = 0;
  v54 = 0;
  v51 = 0;
  v52 = 0;
  if (*(a1 + *(v16 + 24)) == 1)
  {
    v17 = sub_1CFC9F108();
    sub_1CFC9F538();
    sub_1CFC9DF68();
    v18 = v67;
    v19 = v68;
    v53 = v70;
    v54 = v69;
    v51 = v72;
    v52 = v71;
  }

  v41 = v19;
  v56 = sub_1CFC9E688();
  LOBYTE(v61[0]) = 0;
  sub_1CFC38094(a1, v58);
  *&v57[7] = v58[0];
  *&v57[23] = v58[1];
  *&v57[39] = v58[2];
  *&v57[55] = v58[3];
  v55 = LOBYTE(v61[0]);
  sub_1CFC38DE8(a1, &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = (*(v42 + 80) + 16) & ~*(v42 + 80);
  v21 = swift_allocObject();
  v22 = sub_1CFC38E4C(&v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20);
  MEMORY[0x1EEE9AC00](v22);
  *(&v41 - 2) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EECB8, &qword_1CFCA5C48);
  sub_1CFC38F24();
  sub_1CFC9F298();
  v23 = v46;
  sub_1CFC9E208();
  sub_1CFBA57C0(&qword_1EC4EECF8, &qword_1EC4EECA8, &qword_1CFCA5C30);
  sub_1CFC388B0(&qword_1EC4EED00, MEMORY[0x1E697C248]);
  v24 = v47;
  v25 = v50;
  sub_1CFC9EEC8();
  (*(v48 + 8))(v23, v25);
  (*(v44 + 8))(v11, v8);
  v26 = v43;
  v27 = *(v43 + 16);
  v28 = v49;
  v29 = v45;
  v27(v49, v24, v45);
  *a2 = v17;
  *(a2 + 8) = v18;
  v31 = v53;
  v30 = v54;
  *(a2 + 16) = v41;
  *(a2 + 24) = v30;
  v32 = v51;
  v33 = v52;
  *(a2 + 32) = v31;
  *(a2 + 40) = v33;
  *(a2 + 48) = v32;
  v59[0] = v56;
  v59[1] = 0;
  v60[0] = v55;
  *&v60[1] = *v57;
  *&v60[33] = *&v57[32];
  *&v60[17] = *&v57[16];
  *&v60[49] = *&v57[48];
  v34 = *&v57[63];
  *&v60[64] = *&v57[63];
  v35 = v56;
  *(a2 + 72) = *v60;
  *(a2 + 56) = v35;
  v36 = *&v60[16];
  v37 = *&v60[32];
  *(a2 + 120) = *&v60[48];
  *(a2 + 104) = v37;
  *(a2 + 88) = v36;
  *(a2 + 136) = v34;
  *(a2 + 144) = 0;
  *(a2 + 152) = 1;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EED08, &qword_1CFCA5C68);
  v27((a2 + *(v38 + 80)), v28, v29);

  sub_1CFC390EC(v59, v61);

  v39 = *(v26 + 8);
  v39(v24, v29);
  v39(v28, v29);
  v61[0] = v56;
  v61[1] = 0;
  v62 = v55;
  v64 = *&v57[16];
  v65 = *&v57[32];
  *v66 = *&v57[48];
  *&v66[15] = *&v57[63];
  v63 = *v57;
  sub_1CFC3915C(v61);
}

uint64_t sub_1CFC38094@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for BundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  sub_1CFC9BE28();

  sub_1CFBB4460();
  v6 = sub_1CFC9EDF8();
  v8 = v7;
  v10 = v9;
  v11 = sub_1CFC9EDB8();
  v13 = v12;
  v38 = v14;
  v16 = v15;
  sub_1CFBB44C0(v6, v8, v10 & 1);

  if (*(a1 + *(type metadata accessor for LegacyMailboxCellView(0) + 20)) == 1 && (v17 = (a1 + *(type metadata accessor for LegacyMailbox(0) + 20)), v17[1]))
  {
    v39 = *v17;
    v40 = v17[1];

    v18 = sub_1CFC9EDF8();
    v20 = v19;
    v22 = v21;
    sub_1CFC9EC48();
    v23 = sub_1CFC9EDC8();
    v36 = v24;
    v37 = v23;
    v35 = v25;

    sub_1CFBB44C0(v18, v20, v22 & 1);

    sub_1CFC9E908();
    v26 = sub_1CFC9ED68();
    v28 = v27;
    v34 = v29;
    v31 = v30;
    sub_1CFBB44C0(v37, v36, v35 & 1);

    v32 = v34 & 1;
    sub_1CFBB45F4(v26, v28, v34 & 1);
  }

  else
  {
    v26 = 0;
    v28 = 0;
    v32 = 0;
    v31 = 0;
  }

  sub_1CFBB45F4(v11, v13, v38 & 1);

  sub_1CFBB9654(v26, v28, v32, v31);
  sub_1CFBB74FC(v26, v28, v32, v31);
  *a2 = v11;
  *(a2 + 8) = v13;
  *(a2 + 16) = v38 & 1;
  *(a2 + 24) = v16;
  *(a2 + 32) = v26;
  *(a2 + 40) = v28;
  *(a2 + 48) = v32;
  *(a2 + 56) = v31;
  sub_1CFBB74FC(v26, v28, v32, v31);
  sub_1CFBB44C0(v11, v13, v38 & 1);
}

uint64_t sub_1CFC383A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1CFC9DE68();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v53 - v10;
  type metadata accessor for BundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v13 = [objc_opt_self() bundleForClass_];
  v14 = sub_1CFC9BE28();
  v16 = v15;

  v56 = v14;
  v57 = v16;
  sub_1CFBB4460();
  v17 = sub_1CFC9EDF8();
  v53 = v18;
  v20 = v19;
  v55 = v21;
  v54 = sub_1CFC9EBA8();
  sub_1CFC9DE18();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v30 = v20 & 1;
  LOBYTE(v56) = v20 & 1;
  LOBYTE(v61[0]) = 0;
  v31 = sub_1CFC9EC18();
  sub_1CFC9DE18();
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v58 = 0;
  v40 = a1 + *(type metadata accessor for LegacyMailboxCellView(0) + 28);
  sub_1CFC4C630(v11);
  (*(v5 + 104))(v9, *MEMORY[0x1E697DBB8], v4);
  LOBYTE(v40) = sub_1CFC9DE58();
  v41 = *(v5 + 8);
  v41(v9, v4);
  v41(v11, v4);
  v42 = objc_opt_self();
  v43 = &selRef_systemGroupedBackgroundColor;
  if ((v40 & 1) == 0)
  {
    v43 = &selRef_secondarySystemGroupedBackgroundColor;
  }

  v44 = [v42 *v43];
  v45 = sub_1CFC9F0C8();
  v46 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EECB8, &qword_1CFCA5C48) + 36));
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EECF0, &qword_1CFCA5C60);
  v48 = *(v47 + 52);
  v49 = *MEMORY[0x1E697F468];
  v50 = sub_1CFC9E608();
  result = (*(*(v50 - 8) + 104))(v46 + v48, v49, v50);
  *v46 = v45;
  *(v46 + *(v47 + 56)) = 256;
  v52 = v53;
  *a2 = v17;
  *(a2 + 8) = v52;
  *(a2 + 16) = v30;
  *(a2 + 17) = v56;
  *(a2 + 20) = *(&v56 + 3);
  *(a2 + 24) = v55;
  *(a2 + 32) = v54;
  *(a2 + 33) = v61[0];
  *(a2 + 36) = *(v61 + 3);
  *(a2 + 40) = v23;
  *(a2 + 48) = v25;
  *(a2 + 56) = v27;
  *(a2 + 64) = v29;
  *(a2 + 72) = 0;
  *(a2 + 76) = *&v60[3];
  *(a2 + 73) = *v60;
  *(a2 + 80) = v31;
  *(a2 + 84) = *&v59[3];
  *(a2 + 81) = *v59;
  *(a2 + 88) = v33;
  *(a2 + 96) = v35;
  *(a2 + 104) = v37;
  *(a2 + 112) = v39;
  *(a2 + 120) = 0;
  return result;
}

uint64_t sub_1CFC38768@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_1CFC9E588();
  *(a1 + 8) = 0x4026000000000000;
  *(a1 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EECA0, &qword_1CFCA5C28);
  return sub_1CFC37A70(v1, a1 + *(v3 + 44));
}

uint64_t _s10CallsAppUI13LegacyMailboxV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_1CFC9BFD8() & 1) == 0)
  {
    goto LABEL_11;
  }

  v4 = type metadata accessor for LegacyMailbox(0);
  v5 = *(v4 + 20);
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (v9)
    {
      if (*v6 == *v8 && v7 == v9)
      {
        goto LABEL_9;
      }

      v11 = v4;
      v12 = sub_1CFCA02B8();
      v4 = v11;
      if (v12)
      {
        goto LABEL_9;
      }
    }

LABEL_11:
    v13 = 0;
    return v13 & 1;
  }

  if (v9)
  {
    goto LABEL_11;
  }

LABEL_9:
  v13 = *(a1 + *(v4 + 24)) ^ *(a2 + *(v4 + 24)) ^ 1;
  return v13 & 1;
}

uint64_t sub_1CFC388B0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1CFC38920()
{
  sub_1CFC9C008();
  if (v0 <= 0x3F)
  {
    sub_1CFC389AC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1CFC389AC()
{
  if (!qword_1EE04FF98)
  {
    v0 = sub_1CFC9FEB8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE04FF98);
    }
  }
}

uint64_t dispatch thunk of LegacyMailboxServiceProtocol.fetchLegacyMailboxes()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 48);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1CFC38B78;

  return v9(a1, a2);
}

uint64_t sub_1CFC38B78(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

void sub_1CFC38CD0()
{
  type metadata accessor for LegacyMailbox(319);
  if (v0 <= 0x3F)
  {
    sub_1CFBB02CC();
    if (v1 <= 0x3F)
    {
      sub_1CFC38D74();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1CFC38D74()
{
  if (!qword_1EC4EEC98)
  {
    sub_1CFC9DE68();
    v0 = sub_1CFC9DE88();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC4EEC98);
    }
  }
}

uint64_t sub_1CFC38DE8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LegacyMailboxCellView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CFC38E4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LegacyMailboxCellView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CFC38EB0()
{
  v1 = type metadata accessor for LegacyMailboxCellView(0);
  v2 = v0 + *(v1 + 24) + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  v3 = *(v2 + 8);
  return (*v2)();
}

unint64_t sub_1CFC38F24()
{
  result = qword_1EC4EECC0;
  if (!qword_1EC4EECC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EECB8, &qword_1CFCA5C48);
    sub_1CFC38FDC();
    sub_1CFBA57C0(&qword_1EC4EECE8, &qword_1EC4EECF0, &qword_1CFCA5C60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4EECC0);
  }

  return result;
}

unint64_t sub_1CFC38FDC()
{
  result = qword_1EC4EECC8;
  if (!qword_1EC4EECC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EECD0, &qword_1CFCA5C50);
    sub_1CFC39068();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4EECC8);
  }

  return result;
}

unint64_t sub_1CFC39068()
{
  result = qword_1EC4EECD8;
  if (!qword_1EC4EECD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EECE0, &qword_1CFCA5C58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4EECD8);
  }

  return result;
}

uint64_t sub_1CFC390EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EED10, &qword_1CFCA5C70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CFC3915C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EED10, &qword_1CFCA5C70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1CFC39274()
{
  v1 = sub_1CFC9E7B8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EEDD0, &qword_1CFCA5D38);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v13[-v9];
  sub_1CFC9EB98();
  v14 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EEDD8, &qword_1CFCA5D40);
  sub_1CFC3BFB4();
  sub_1CFC9DE38();
  sub_1CFC9E7A8();
  v11 = sub_1CFC9EB98();
  sub_1CFC9EB88();
  sub_1CFC9EB88();
  if (sub_1CFC9EB88() != v11)
  {
    sub_1CFC9EB88();
  }

  sub_1CFBA57C0(&qword_1EC4EEE28, &qword_1EC4EEDD0, &qword_1CFCA5D38);
  sub_1CFC9EFD8();
  (*(v2 + 8))(v5, v1);
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1CFC394C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for LayoutTipView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  *a2 = sub_1CFC9E678();
  *(a2 + 8) = 0x4030000000000000;
  *(a2 + 16) = 0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EEE30, &unk_1CFCA5D68);
  sub_1CFC39684(a1, a2 + *(v7 + 44));
  *(a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EEE00, &qword_1CFCA5D50) + 36)) = 256;
  v8 = sub_1CFC9EBB8();
  v9 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EEDF0, &qword_1CFCA5D48) + 36);
  *v9 = v8;
  *(v9 + 8) = xmmword_1CFCA5C80;
  __asm { FMOV            V0.2D, #12.0 }

  *(v9 + 24) = _Q0;
  *(v9 + 40) = 0;
  sub_1CFC3C150(a1, &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v16 = swift_allocObject();
  sub_1CFC3C1B4(&v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EEDD8, &qword_1CFCA5D40);
  v18 = (a2 + *(result + 36));
  *v18 = sub_1CFC3AE34;
  v18[1] = 0;
  v18[2] = sub_1CFC3C218;
  v18[3] = v16;
  return result;
}

uint64_t sub_1CFC39684@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EEE40, &qword_1CFCA5D78);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v22 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EEE48, &qword_1CFCA5D80);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v22 - v17;
  *v18 = sub_1CFC9E578();
  *(v18 + 1) = 0;
  v18[16] = 1;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EEE50, &qword_1CFCA5D88);
  sub_1CFC398A8(a1, &v18[*(v19 + 44)]);
  *v11 = 0x4020000000000000;
  sub_1CFC3A268(a1, &v11[*(v5 + 52)]);
  sub_1CFBA29FC(v18, v16, &qword_1EC4EEE48, &qword_1CFCA5D80);
  sub_1CFBBEB3C(v11, v9);
  sub_1CFBA29FC(v16, a2, &qword_1EC4EEE48, &qword_1CFCA5D80);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EEE58, &qword_1CFCA5D90);
  sub_1CFBBEB3C(v9, a2 + *(v20 + 48));
  sub_1CFBC2FB0(v11, &qword_1EC4EEE40, &qword_1CFCA5D78);
  sub_1CFBC2FB0(v18, &qword_1EC4EEE48, &qword_1CFCA5D80);
  sub_1CFBC2FB0(v9, &qword_1EC4EEE40, &qword_1CFCA5D78);
  return sub_1CFBC2FB0(v16, &qword_1EC4EEE48, &qword_1CFCA5D80);
}

uint64_t sub_1CFC398A8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EEF10, &qword_1CFCA5EB0);
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v23 - v10;
  sub_1CFC9F4E8();
  v23[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EEF18, &qword_1CFCA5EB8);
  sub_1CFC3DEA4();
  sub_1CFC9F508();
  v12 = sub_1CFC9E688();
  LOBYTE(v28[0]) = 1;
  sub_1CFC39F4C(v25);
  *&v24[7] = v25[0];
  *&v24[23] = v25[1];
  *&v24[39] = v25[2];
  *&v24[55] = v25[3];
  v13 = v28[0];
  v14 = v5[2];
  v14(v9, v11, v4);
  v14(a2, v9, v4);
  v15 = &a2[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EEF78, &qword_1CFCA5EE8) + 48)];
  v26[0] = v12;
  v26[1] = 0;
  v27[0] = v13;
  *&v27[1] = *v24;
  *&v27[17] = *&v24[16];
  *&v27[33] = *&v24[32];
  *&v27[49] = *&v24[48];
  v16 = *&v24[63];
  *&v27[64] = *&v24[63];
  v17 = *v27;
  *v15 = v12;
  *(v15 + 1) = v17;
  v18 = *&v27[16];
  v19 = *&v27[32];
  v20 = *&v27[48];
  *(v15 + 10) = v16;
  *(v15 + 3) = v19;
  *(v15 + 4) = v20;
  *(v15 + 2) = v18;
  sub_1CFBA29FC(v26, v28, &qword_1EC4EEF80, &qword_1CFCA5EF0);
  v21 = v5[1];
  v21(v11, v4);
  v28[0] = v12;
  v28[1] = 0;
  v29 = v13;
  v31 = *&v24[16];
  v32 = *&v24[32];
  *v33 = *&v24[48];
  *&v33[15] = *&v24[63];
  v30 = *v24;
  sub_1CFBC2FB0(v28, &qword_1EC4EEF80, &qword_1CFCA5EF0);
  return (v21)(v9, v4);
}

double sub_1CFC39B64@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_1CFC9F1B8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v46[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_1CFC9E158();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v46[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1CFC4C228(v11);
  v12 = sub_1CFC9E148();
  (*(v8 + 8))(v11, v7);
  if (v12)
  {
    sub_1CFC3E148(&v62);
  }

  else
  {
    type metadata accessor for BundleClass();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v14 = [objc_opt_self() bundleForClass_];
    sub_1CFC9F1F8();
    (*(v3 + 104))(v6, *MEMORY[0x1E6981630], v2);
    v15 = sub_1CFC9F1E8();

    (*(v3 + 8))(v6, v2);
    sub_1CFC9F538();
    sub_1CFC9DF68();
    LOBYTE(v62) = 1;
    *&v47[6] = v59;
    *&v47[22] = v60;
    *&v47[38] = v61;
    v16 = sub_1CFC9EBC8();
    sub_1CFC9DE18();
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;
    LOBYTE(v48) = 0;
    v25 = sub_1CFC9EBE8();
    sub_1CFC9DE18();
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v33 = v32;
    LOBYTE(v62) = 0;
    v34 = sub_1CFC9EC08();
    sub_1CFC9DE18();
    *(v49 + 2) = *v47;
    v48 = v15;
    LOWORD(v49[0]) = 1;
    *(&v49[1] + 2) = *&v47[16];
    *(&v49[2] + 2) = *&v47[32];
    *&v49[3] = *&v47[46];
    BYTE8(v49[3]) = v16;
    *&v50 = v18;
    *(&v50 + 1) = v20;
    *&v51 = v22;
    *(&v51 + 1) = v24;
    LOBYTE(v52) = 0;
    BYTE8(v52) = v25;
    *&v53 = v27;
    *(&v53 + 1) = v29;
    *&v54 = v31;
    *(&v54 + 1) = v33;
    LOBYTE(v55) = 0;
    BYTE8(v55) = v34;
    *&v56 = v35;
    *(&v56 + 1) = v36;
    *&v57 = v37;
    *(&v57 + 1) = v38;
    v58 = 0;
    nullsub_1(&v48);
    v72 = v55;
    v73 = v56;
    v74 = v57;
    v68 = v51;
    v69 = v52;
    v75 = v58;
    v70 = v53;
    v71 = v54;
    v64 = v49[1];
    v65 = v49[2];
    v66 = v49[3];
    v67 = v50;
    v62 = v48;
    v63 = v49[0];
  }

  v39 = v73;
  *(a1 + 160) = v72;
  *(a1 + 176) = v39;
  *(a1 + 192) = v74;
  *(a1 + 208) = v75;
  v40 = v69;
  *(a1 + 96) = v68;
  *(a1 + 112) = v40;
  v41 = v71;
  *(a1 + 128) = v70;
  *(a1 + 144) = v41;
  v42 = v65;
  *(a1 + 32) = v64;
  *(a1 + 48) = v42;
  v43 = v67;
  *(a1 + 64) = v66;
  *(a1 + 80) = v43;
  result = *&v62;
  v45 = v63;
  *a1 = v62;
  *(a1 + 16) = v45;
  return result;
}

uint64_t sub_1CFC39F4C@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for BundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v33 = objc_opt_self();
  v2 = [v33 bundleForClass_];
  sub_1CFC9BE28();

  sub_1CFBB4460();
  v3 = sub_1CFC9EDF8();
  v5 = v4;
  v7 = v6;
  sub_1CFC9ECB8();
  v8 = sub_1CFC9EDC8();
  v10 = v9;
  v12 = v11;

  sub_1CFBB44C0(v3, v5, v7 & 1);

  v31 = sub_1CFC9EDB8();
  v32 = v13;
  v15 = v14;
  v30 = v16;
  sub_1CFBB44C0(v8, v10, v12 & 1);

  v17 = [v33 bundleForClass_];
  sub_1CFC9BE28();

  v18 = sub_1CFC9EDF8();
  v20 = v19;
  v22 = v21;
  sub_1CFC9E908();
  v23 = sub_1CFC9ED68();
  v25 = v24;
  LOBYTE(v3) = v26;
  v28 = v27;
  sub_1CFBB44C0(v18, v20, v22 & 1);

  *a1 = v31;
  *(a1 + 8) = v15;
  *(a1 + 16) = v30 & 1;
  *(a1 + 24) = v32;
  *(a1 + 32) = v23;
  *(a1 + 40) = v25;
  *(a1 + 48) = v3 & 1;
  *(a1 + 56) = v28;
  sub_1CFBB45F4(v31, v15, v30 & 1);

  sub_1CFBB45F4(v23, v25, v3 & 1);

  sub_1CFBB44C0(v23, v25, v3 & 1);

  sub_1CFBB44C0(v31, v15, v30 & 1);
}

uint64_t sub_1CFC3A268@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v101 = a1;
  v108 = a2;
  v3 = type metadata accessor for LayoutTipView(0);
  v100 = *(v3 - 8);
  v4 = *(v100 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v77 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EEE60, &qword_1CFCA5D98);
  v113 = *(v109 - 8);
  v6 = *(v113 + 64);
  MEMORY[0x1EEE9AC00](v109);
  v8 = &v77 - v7;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EEE68, &qword_1CFCA5DA0);
  v114 = *(v110 - 8);
  v9 = *(v114 + 64);
  MEMORY[0x1EEE9AC00](v110);
  v11 = &v77 - v10;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EEE70, &qword_1CFCA5DA8);
  v12 = *(*(v111 - 8) + 64);
  MEMORY[0x1EEE9AC00](v111);
  v14 = &v77 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EEE78, &qword_1CFCA5DB0);
  v107 = *(v15 - 8);
  v16 = *(v107 + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v106 = &v77 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v105 = &v77 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v104 = &v77 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v112 = &v77 - v23;
  type metadata accessor for BundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v103 = ObjCClassFromMetadata;
  v102 = objc_opt_self();
  v25 = [v102 bundleForClass_];
  v26 = sub_1CFC9BE28();
  v28 = v27;

  v95 = v5;
  sub_1CFC3C150(a1, v5);
  v29 = *(v100 + 80);
  v99 = v29;
  v30 = (v29 + 16) & ~v29;
  v100 = v30;
  v31 = (v4 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
  v96 = v31;
  v32 = swift_allocObject();
  sub_1CFC3C1B4(v5, v32 + v30);
  *(v32 + v31) = 0;
  v117 = v26;
  v118 = v28;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EEE80, &qword_1CFCA5DB8);
  v97 = sub_1CFC3C298();
  v33 = v8;
  sub_1CFC9F298();

  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EEE90, &qword_1CFCA5DC0);
  v35 = sub_1CFBA57C0(&qword_1EC4EEE98, &qword_1EC4EEE60, &qword_1CFCA5D98);
  v36 = sub_1CFC3C31C();
  v94 = sub_1CFC3B12C;
  v37 = v11;
  v38 = v109;
  v39 = v34;
  v91 = v34;
  v90 = v35;
  v40 = v36;
  v92 = v36;
  v89 = v33;
  sub_1CFC9EE28();
  v41 = *(v113 + 8);
  v113 += 8;
  v93 = v41;
  v41(v33, v38);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EEEC0, &qword_1CFCA5DE0);
  v119 = v38;
  v120 = v39;
  v121 = v35;
  v122 = v40;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v43 = sub_1CFC9EA68();
  v44 = sub_1CFC3E75C(&qword_1EE04D258, MEMORY[0x1E697CB70]);
  v45 = v110;
  v119 = v110;
  v120 = v43;
  v121 = OpaqueTypeConformance2;
  v122 = v44;
  v86 = OpaqueTypeConformance2;
  v88 = swift_getOpaqueTypeConformance2();
  v85 = sub_1CFC3B2FC;
  sub_1CFC9EE28();
  v46 = *(v114 + 8);
  v114 += 8;
  v84 = v46;
  v46(v37, v45);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EEED0, &qword_1CFCA5DE8);
  v47 = &v14[*(v83 + 36)];
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EEED8, &qword_1CFCA5DF0);
  v48 = v47 + *(v82 + 28);
  sub_1CFC9E288();
  *v47 = swift_getKeyPath();
  v49 = &v14[*(v111 + 36)];
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EEEE0, &qword_1CFCA3630);
  v50 = *(v81 + 28);
  v79 = *MEMORY[0x1E697DC10];
  v51 = v79;
  v52 = sub_1CFC9DE78();
  v53 = *(v52 - 8);
  v78 = *(v53 + 104);
  v80 = v53 + 104;
  v78(v49 + v50, v51, v52);
  *v49 = swift_getKeyPath();
  sub_1CFC9EC88();
  sub_1CFC3D88C();
  sub_1CFC9EE98();
  sub_1CFBC2FB0(v14, &qword_1EC4EEE70, &qword_1CFCA5DA8);
  v54 = [v102 bundleForClass_];
  v55 = sub_1CFC9BE28();
  v57 = v56;

  v58 = v95;
  sub_1CFC3C150(v101, v95);
  v59 = v96;
  v60 = swift_allocObject();
  sub_1CFC3C1B4(v58, v60 + v100);
  *(v60 + v59) = 1;
  v115 = v55;
  v116 = v57;
  v61 = v89;
  sub_1CFC9F298();

  v62 = v109;
  sub_1CFC9EE28();
  v93(v61, v62);
  v63 = v110;
  sub_1CFC9EE28();
  v84(v37, v63);
  v64 = &v14[*(v83 + 36)];
  v65 = v64 + *(v82 + 28);
  sub_1CFC9E288();
  *v64 = swift_getKeyPath();
  v66 = &v14[*(v111 + 36)];
  v78(v66 + *(v81 + 28), v79, v52);
  *v66 = swift_getKeyPath();
  sub_1CFC9EC88();
  v67 = v104;
  sub_1CFC9EE98();
  sub_1CFBC2FB0(v14, &qword_1EC4EEE70, &qword_1CFCA5DA8);
  v68 = v107;
  v69 = *(v107 + 16);
  v70 = v105;
  v71 = v112;
  v69(v105, v112, v15);
  v72 = v106;
  v69(v106, v67, v15);
  v73 = v108;
  v69(v108, v70, v15);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EEF08, &qword_1CFCA5E60);
  v69(&v73[*(v74 + 48)], v72, v15);
  v75 = *(v68 + 8);
  v75(v67, v15);
  v75(v71, v15);
  v75(v72, v15);
  return (v75)(v70, v15);
}

uint64_t sub_1CFC3AE34@<X0>(void *a1@<X8>)
{
  result = sub_1CFC9DFA8();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_1CFC3AE60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LayoutTipView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED950, &qword_1CFCA2710);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v19 - v10;
  v12 = sub_1CFC9F998();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  sub_1CFC3C150(a1, v7);
  sub_1CFC9F968();
  v13 = sub_1CFC9F958();
  v14 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v15 = (v6 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  v17 = MEMORY[0x1E69E85E0];
  *(v16 + 16) = v13;
  *(v16 + 24) = v17;
  sub_1CFC3C1B4(v7, v16 + v14);
  *(v16 + v15) = a2;
  sub_1CFBDC030(0, 0, v11, &unk_1CFCA5EA8, v16);
}

__n128 sub_1CFC3B034@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *&v12 = a1;
  *(&v12 + 1) = a2;
  sub_1CFBB4460();

  v4 = sub_1CFC9EDF8();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  sub_1CFC9F538();
  sub_1CFC9E268();
  *a3 = v4;
  *(a3 + 8) = v6;
  *(a3 + 16) = v8 & 1;
  *(a3 + 24) = v10;
  *(a3 + 96) = v16;
  *(a3 + 112) = v17;
  *(a3 + 128) = v18;
  *(a3 + 32) = v12;
  *(a3 + 48) = v13;
  result = v15;
  *(a3 + 64) = v14;
  *(a3 + 80) = v15;
  return result;
}

uint64_t sub_1CFC3B12C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1CFC9E668();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFC9E658();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EEE60, &qword_1CFCA5D98);
  sub_1CFBA57C0(&qword_1EC4EEE98, &qword_1EC4EEE60, &qword_1CFCA5D98);
  sub_1CFC3E75C(&qword_1EE04D360, MEMORY[0x1E697C540]);
  sub_1CFC9EEC8();
  (*(v3 + 8))(v6, v2);
  v7 = sub_1CFC9F188();
  KeyPath = swift_getKeyPath();
  v9 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4EEEB0, &qword_1CFCA5DC8) + 36));
  *v9 = KeyPath;
  v9[1] = v7;
  v10 = sub_1CFC9F108();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EEE90, &qword_1CFCA5DC0);
  *(a1 + *(result + 36)) = v10;
  return result;
}

uint64_t sub_1CFC3B2FC()
{
  v0 = sub_1CFC9EA68();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFC9EA58();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EEE68, &qword_1CFCA5DA0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EEE60, &qword_1CFCA5D98);
  v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EEE90, &qword_1CFCA5DC0);
  v7 = sub_1CFBA57C0(&qword_1EC4EEE98, &qword_1EC4EEE60, &qword_1CFCA5D98);
  v8 = sub_1CFC3C31C();
  v10[0] = v5;
  v10[1] = v6;
  v10[2] = v7;
  v10[3] = v8;
  swift_getOpaqueTypeConformance2();
  sub_1CFC3E75C(&qword_1EE04D258, MEMORY[0x1E697CB70]);
  sub_1CFC9EEC8();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_1CFC3B4DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_1CFC9F968();
  v5[4] = sub_1CFC9F958();
  v7 = sub_1CFC9F938();
  v5[5] = v7;
  v5[6] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1CFC3B574, v7, v6);
}

uint64_t sub_1CFC3B574()
{
  v1 = *(v0 + 16);
  v2 = (v1 + *(type metadata accessor for LayoutTipView(0) + 20));
  v3 = v2[1];
  v7 = (*v2 + **v2);
  v4 = (*v2)[1];
  v5 = swift_task_alloc();
  *(v0 + 56) = v5;
  *v5 = v0;
  v5[1] = sub_1CFC3B670;

  return v7();
}

uint64_t sub_1CFC3B670()
{
  v1 = *v0;
  v2 = *(*v0 + 56);
  v6 = *v0;

  v3 = *(v1 + 48);
  v4 = *(v1 + 40);

  return MEMORY[0x1EEE6DFA0](sub_1CFC3B790, v4, v3);
}

uint64_t sub_1CFC3B790()
{
  v2 = v0[3];
  v1 = v0[4];

  v3 = [objc_opt_self() shared];
  [v3 setLayout_];

  v4 = v0[1];

  return v4();
}

id sub_1CFC3B82C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1CFC9EB18();
  v30[0] = *(v4 - 8);
  v5 = *(v30[0] + 64);
  MEMORY[0x1EEE9AC00](v4);
  v6 = type metadata accessor for LayoutTipView(0);
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = (v30 - v12);
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  *v13 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE3F8, &qword_1CFCA43B0);
  swift_storeEnumTagMultiPayload();
  v15 = (v13 + *(v7 + 28));
  *v15 = a1;
  v15[1] = a2;
  v16 = (v13 + *(v7 + 32));
  *v16 = sub_1CFC3E170;
  v16[1] = v14;
  sub_1CFC3C150(v13, v11);

  v17 = sub_1CFC9E6C8();
  [v17 setModalPresentationStyle_];
  v18 = [v17 popoverPresentationController];

  if (v18)
  {
    [v18 setDelegate_];
  }

  v19 = [v17 popoverPresentationController];
  if (v19)
  {
    v20 = v19;
    [v19 setPopoverLayoutMargins_];
  }

  v21 = [v17 popoverPresentationController];
  if (v21)
  {
    v22 = v21;
    [v21 _setPrefersZoomTransitions_];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EEF88, &qword_1CFCA5F28);
  v23 = *(v30[0] + 72);
  v24 = (*(v30[0] + 80) + 32) & ~*(v30[0] + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1CFCA1DD0;
  sub_1CFC9EB08();
  v30[1] = v25;
  sub_1CFC3E75C(&qword_1EC4EEF90, MEMORY[0x1E697CC60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EEF98, &qword_1CFCA5F30);
  sub_1CFBA57C0(&qword_1EC4EEFA0, &qword_1EC4EEF98, &qword_1CFCA5F30);
  sub_1CFC9FF58();
  sub_1CFC9E6B8();
  sub_1CFC3E178(v13);
  v26 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  v27 = *(v14 + 16);
  v28 = *(v14 + 24);
  *(v14 + 16) = sub_1CFC3E1D4;
  *(v14 + 24) = v26;

  sub_1CFBABFA0(v27);

  return v17;
}

uint64_t sub_1CFC3BC34(uint64_t a1, double a2, double a3)
{
  result = swift_beginAccess();
  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = *(a1 + 24);

    v7(v9, a2, a3);
    return sub_1CFBABFA0(v7);
  }

  return result;
}

void sub_1CFC3BCB0(double a1, double a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = [v4 view];
    if (v5)
    {
      v6 = v5;
      [v5 intrinsicContentSize];
      v8 = v7;

      [v4 setPreferredContentSize_];
    }

    else
    {
      __break(1u);
    }
  }
}

id sub_1CFC3BE2C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LayoutTipViewController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1CFC3BEB4()
{
  sub_1CFC3BF38();
  if (v0 <= 0x3F)
  {
    sub_1CFBB02CC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1CFC3BF38()
{
  if (!qword_1EC4EEDC0)
  {
    sub_1CFC9E158();
    v0 = sub_1CFC9DE88();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC4EEDC0);
    }
  }
}

unint64_t sub_1CFC3BFB4()
{
  result = qword_1EC4EEDE0;
  if (!qword_1EC4EEDE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EEDD8, &qword_1CFCA5D40);
    sub_1CFC3DFB4(&qword_1EC4EEDE8, &qword_1EC4EEDF0, &qword_1CFCA5D48, sub_1CFC3C098);
    sub_1CFBA57C0(&qword_1EC4EEE18, &qword_1EC4EEE20, &qword_1CFCA5D60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4EEDE0);
  }

  return result;
}

unint64_t sub_1CFC3C098()
{
  result = qword_1EC4EEDF8;
  if (!qword_1EC4EEDF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EEE00, &qword_1CFCA5D50);
    sub_1CFBA57C0(&qword_1EC4EEE08, &qword_1EC4EEE10, &qword_1CFCA5D58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4EEDF8);
  }

  return result;
}

uint64_t sub_1CFC3C150(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LayoutTipView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CFC3C1B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LayoutTipView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CFC3C218(double *a1)
{
  v3 = type metadata accessor for LayoutTipView(0);
  v4 = v1 + *(v3 + 24) + ((*(*(v3 - 8) + 80) + 16) & ~*(*(v3 - 8) + 80));
  v5 = *(v4 + 8);
  return (*v4)(*a1, a1[1]);
}

unint64_t sub_1CFC3C298()
{
  result = qword_1EC4EEE88;
  if (!qword_1EC4EEE88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EEE80, &qword_1CFCA5DB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4EEE88);
  }

  return result;
}

unint64_t sub_1CFC3C31C()
{
  result = qword_1EC4EEEA0;
  if (!qword_1EC4EEEA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EEE90, &qword_1CFCA5DC0);
    sub_1CFC3C3D4();
    sub_1CFBA57C0(&qword_1EE04FFE0, &unk_1EC4ED090, &qword_1CFCA3F50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4EEEA0);
  }

  return result;
}

unint64_t sub_1CFC3C3D4()
{
  result = qword_1EC4EEEA8;
  if (!qword_1EC4EEEA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4EEEB0, &qword_1CFCA5DC8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EEE60, &qword_1CFCA5D98);
    sub_1CFC9E668();
    sub_1CFBA57C0(&qword_1EC4EEE98, &qword_1EC4EEE60, &qword_1CFCA5D98);
    sub_1CFC3E75C(&qword_1EE04D360, MEMORY[0x1E697C540]);
    swift_getOpaqueTypeConformance2();
    sub_1CFBA57C0(&qword_1EE04FFD0, &qword_1EC4EE3D0, &unk_1CFCA5DD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4EEEA8);
  }

  return result;
}

uint64_t sub_1CFC3C54C(uint64_t a1, char a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1CFC9E048();
  sub_1CFC3E75C(&qword_1EC4EEFB8, MEMORY[0x1E697E3C0]);
  sub_1CFC9FA18();
  result = sub_1CFC9FA48();
  if (v14 != v13)
  {
    if (a2)
    {
      v11 = INFINITY;
    }

    else
    {
      v11 = *&a1;
    }

    v12 = sub_1CFC3E29C(a6);
    if (sub_1CFC3C680(v12, v11, a3))
    {
      sub_1CFC3E514(v12, v11);
    }

    else
    {

      return sub_1CFC3C7C4(a6, v11, a3);
    }
  }

  return result;
}

BOOL sub_1CFC3C680(uint64_t a1, double a2, double a3)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    v18 = MEMORY[0x1E69E7CC0];
    sub_1CFBCAA8C(0, v5, 0);
    v7 = v18;
    v8 = (a1 + 32);
    v9 = *(v18 + 16);
    v10 = v5;
    do
    {
      v11 = *v8;
      v19 = v7;
      v12 = *(v7 + 24);
      v13 = v9 + 1;
      if (v9 >= v12 >> 1)
      {
        sub_1CFBCAA8C((v12 > 1), v9 + 1, 1);
        v7 = v19;
      }

      *(v7 + 16) = v13;
      *(v7 + 8 * v9 + 32) = v11;
      v8 += 2;
      ++v9;
      --v10;
    }

    while (v10);
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
    v13 = *(MEMORY[0x1E69E7CC0] + 16);
    if (!v13)
    {
      v14 = 0.0;
      goto LABEL_15;
    }
  }

  v14 = *(v7 + 32);
  v15 = v13 - 1;
  if (v13 != 1)
  {
    v16 = 40;
    do
    {
      if (v14 < *(v7 + v16))
      {
        v14 = *(v7 + v16);
      }

      v16 += 8;
      --v15;
    }

    while (v15);
  }

LABEL_15:

  return (v5 - 1) * a3 + v14 * v5 <= a2;
}

uint64_t sub_1CFC3C7C4(uint64_t a1, double a2, double a3)
{
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EEFC8, &qword_1CFCA6038);
  v6 = *(v80 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v80);
  v78 = &v69 - v8;
  v82 = sub_1CFC9DFD8();
  v9 = *(v82 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v82);
  v75 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v72 = &v69 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EEFD0, &qword_1CFCA6040);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8);
  v79 = &v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v19 = (&v69 - v18);
  v20 = sub_1CFC9E048();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v69 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EEFD8, &qword_1CFCA6048);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v28 = &v69 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EEFE0, &unk_1CFCA6050);
  v30 = v29 - 8;
  v31 = *(*(v29 - 8) + 64);
  MEMORY[0x1EEE9AC00](v29);
  v33 = &v69 - v32;
  v73 = a2;
  (*(v21 + 16))(v28, a1, v20);
  (*(v21 + 32))(v24, v28, v20);
  v34 = MEMORY[0x1E697E3C0];
  sub_1CFC3E75C(&qword_1EC4EEFE8, MEMORY[0x1E697E3C0]);
  sub_1CFC9F858();
  v70 = *(v30 + 44);
  *&v33[v70] = 0;
  v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EEFC0, &qword_1CFCA6030) + 36);
  v36 = sub_1CFC3E75C(&qword_1EC4EEFB8, v34);
  v76 = 0;
  v71 = (v9 + 16);
  v81 = (v9 + 32);
  v77 = (v6 + 56);
  v37 = (v6 + 48);
  v38 = (v9 + 8);
  v39 = 0.0;
  v40 = 0.0;
  v74 = v20;
  while (1)
  {
    sub_1CFC9FA48();
    if (*&v33[v35] == v84[0])
    {
      v41 = 1;
      v43 = v79;
      v42 = v80;
      goto LABEL_6;
    }

    v44 = v38;
    v45 = v19;
    v46 = v37;
    v47 = sub_1CFC9FA88();
    v48 = v72;
    v49 = v82;
    (*v71)(v72);
    v47(v84, 0);
    v50 = v36;
    v51 = v35;
    v52 = v50;
    sub_1CFC9FA58();
    v42 = v80;
    v53 = v81;
    v54 = *(v80 + 48);
    v55 = v78;
    v56 = v76;
    *v78 = v76;
    result = (*v53)(&v55[v54], v48, v49);
    v58 = __OFADD__(v56, 1);
    v59 = v56 + 1;
    if (v58)
    {
      break;
    }

    v76 = v59;
    *&v33[v70] = v59;
    v43 = v79;
    sub_1CFBCCE88(v78, v79, &qword_1EC4EEFC8, &qword_1CFCA6038);
    v41 = 0;
    v35 = v51;
    v36 = v52;
    v37 = v46;
    v19 = v45;
    v38 = v44;
LABEL_6:
    (*v77)(v43, v41, 1, v42);
    sub_1CFBCCE88(v43, v19, &qword_1EC4EEFD0, &qword_1CFCA6040);
    if ((*v37)(v19, 1, v42) == 1)
    {
      return sub_1CFBC2FB0(v33, &qword_1EC4EEFE0, &unk_1CFCA6050);
    }

    v60 = *v19;
    v61 = v82;
    v62 = v19 + *(v42 + 48);
    v63 = v75;
    (*v81)(v75, v62, v82);
    LOBYTE(v84[0]) = 0;
    v83 = 1;
    sub_1CFC9DFB8();
    v65 = v64;
    v67 = v66;
    (*v38)(v63, v61);
    if (v60 <= 0)
    {
      v68 = 0.0;
    }

    else
    {
      v68 = a3;
    }

    v39 = v39 + v68 + v67;
    if (v40 <= v65)
    {
      v40 = v65;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1CFC3CE3C(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, double a6)
{
  v12 = sub_1CFC9DFD8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EEFC0, &qword_1CFCA6030);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v33 - v19;
  v38.origin.x = a2;
  v38.origin.y = a3;
  v38.size.width = a4;
  v38.size.height = a5;
  Width = CGRectGetWidth(v38);
  v22 = sub_1CFC9E048();
  sub_1CFC3E75C(&qword_1EC4EEFB8, MEMORY[0x1E697E3C0]);
  sub_1CFC9FA18();
  sub_1CFC9FA48();
  result = sub_1CFC9FA38();
  if (__OFSUB__(result, 1))
  {
    __break(1u);
  }

  else
  {
    v34 = result - 1;
    v35 = v13;
    sub_1CFC9FA18();
    sub_1CFC9FA48();
    v24 = sub_1CFC9FA38();
    v39.origin.x = a2;
    v39.origin.y = a3;
    v39.size.width = a4;
    v39.size.height = a5;
    MinX = CGRectGetMinX(v39);
    (*(*(v22 - 8) + 16))(v20, a1, v22);
    v26 = *(v17 + 36);
    sub_1CFC9FA18();
    sub_1CFC9FA48();
    if (*&v20[v26] != v36[0])
    {
      v27 = v12;
      v28 = (Width - v34 * a6) / v24;
      v29 = (v35 + 16);
      v30 = v28 + a6;
      v31 = (v35 + 8);
      do
      {
        v32 = sub_1CFC9FA88();
        (*v29)(v16);
        v32(v36, 0);
        sub_1CFC9FA58();
        LOBYTE(v36[0]) = 0;
        v37 = 1;
        sub_1CFC9DFB8();
        v40.origin.x = a2;
        v40.origin.y = a3;
        v40.size.width = a4;
        v40.size.height = a5;
        CGRectGetMidY(v40);
        sub_1CFC9F5A8();
        LOBYTE(v36[0]) = 0;
        v37 = 1;
        sub_1CFC9DFC8();
        (*v31)(v16, v27);
        MinX = v30 + MinX;
        sub_1CFC9FA48();
      }

      while (*&v20[v26] != v36[0]);
    }

    return sub_1CFBC2FB0(v20, &qword_1EC4EEFC0, &qword_1CFCA6030);
  }

  return result;
}

uint64_t sub_1CFC3D240(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, double a6)
{
  v12 = sub_1CFC9DFD8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EEFC0, &qword_1CFCA6030);
  v18 = v17 - 8;
  v19 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v31 - v20;
  v36.origin.x = a2;
  v36.origin.y = a3;
  v36.size.width = a4;
  v36.size.height = a5;
  MinY = CGRectGetMinY(v36);
  v37.origin.x = a2;
  v37.origin.y = a3;
  v37.size.width = a4;
  v37.size.height = a5;
  Width = CGRectGetWidth(v37);
  v24 = sub_1CFC9E048();
  (*(*(v24 - 8) + 16))(v21, a1, v24);
  v25 = *(v18 + 44);
  sub_1CFC3E75C(&qword_1EC4EEFB8, MEMORY[0x1E697E3C0]);
  sub_1CFC9FA18();
  sub_1CFC9FA48();
  if (*&v21[v25] != v35[0])
  {
    v33 = Width;
    v32 = (v13 + 16);
    v26 = (v13 + 8);
    do
    {
      v27 = sub_1CFC9FA88();
      (*v32)(v16);
      v27(v35, 0);
      sub_1CFC9FA58();
      LOBYTE(v35[0]) = 0;
      v34 = 1;
      sub_1CFC9DFB8();
      v29 = v28;
      v38.origin.x = a2;
      v38.origin.y = a3;
      v38.size.width = a4;
      v38.size.height = a5;
      CGRectGetMinX(v38);
      sub_1CFC9F5A8();
      LOBYTE(v35[0]) = 0;
      v34 = 1;
      sub_1CFC9DFC8();
      (*v26)(v16, v12);
      MinY = MinY + v29 + a6;
      sub_1CFC9FA48();
    }

    while (*&v21[v25] != v35[0]);
  }

  return sub_1CFBC2FB0(v21, &qword_1EC4EEFC0, &qword_1CFCA6030);
}

void (*sub_1CFC3D690(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1CFC9DDD8();
  return sub_1CFC13DAC;
}

uint64_t sub_1CFC3D7BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = (*(*(a5(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00]();
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

unint64_t sub_1CFC3D88C()
{
  result = qword_1EC4EEEE8;
  if (!qword_1EC4EEEE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EEE70, &qword_1CFCA5DA8);
    sub_1CFC3D944();
    sub_1CFBA57C0(&qword_1EC4EEF00, &qword_1EC4EEEE0, &qword_1CFCA3630);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4EEEE8);
  }

  return result;
}

unint64_t sub_1CFC3D944()
{
  result = qword_1EC4EEEF0;
  if (!qword_1EC4EEEF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EEED0, &qword_1CFCA5DE8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EEE68, &qword_1CFCA5DA0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4EEEC0, &qword_1CFCA5DE0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EEE60, &qword_1CFCA5D98);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EEE90, &qword_1CFCA5DC0);
    sub_1CFBA57C0(&qword_1EC4EEE98, &qword_1EC4EEE60, &qword_1CFCA5D98);
    sub_1CFC3C31C();
    swift_getOpaqueTypeConformance2();
    sub_1CFC9EA68();
    sub_1CFC3E75C(&qword_1EE04D258, MEMORY[0x1E697CB70]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1CFBA57C0(&qword_1EE04D238, &qword_1EC4EEED8, &qword_1CFCA5DF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4EEEF0);
  }

  return result;
}

uint64_t objectdestroy_4Tm()
{
  v1 = type metadata accessor for LayoutTipView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = (v0 + v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE3F8, &qword_1CFCA43B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1CFC9E158();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  v8 = *(v5 + *(v1 + 20) + 8);

  v9 = *(v5 + *(v1 + 24) + 8);

  return MEMORY[0x1EEE6BDD0](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_1CFC3DC98()
{
  v1 = *(type metadata accessor for LayoutTipView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1CFC3AE60(v0 + v2, v3);
}

uint64_t sub_1CFC3DD24@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1CFC9E4B8();
  *a1 = result;
  return result;
}

uint64_t sub_1CFC3DD50(uint64_t *a1)
{
  v1 = *a1;

  return sub_1CFC9E4C8();
}

uint64_t sub_1CFC3DD7C(uint64_t a1)
{
  v4 = *(type metadata accessor for LayoutTipView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1CFBD431C;

  return sub_1CFC3B4DC(a1, v6, v7, v1 + v5, v8);
}

unint64_t sub_1CFC3DEA4()
{
  result = qword_1EC4EEF20;
  if (!qword_1EC4EEF20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EEF18, &qword_1CFCA5EB8);
    sub_1CFC3DFB4(&qword_1EC4EEF28, &qword_1EC4EEF30, &qword_1CFCA5EC0, sub_1CFC3DF54);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4EEF20);
  }

  return result;
}

uint64_t sub_1CFC3DFB4(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_1CFC3E038()
{
  result = qword_1EC4EEF58;
  if (!qword_1EC4EEF58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EEF60, &qword_1CFCA5ED8);
    sub_1CFC3E0C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4EEF58);
  }

  return result;
}

unint64_t sub_1CFC3E0C4()
{
  result = qword_1EC4EEF68;
  if (!qword_1EC4EEF68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4EEF70, &qword_1CFCA5EE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4EEF68);
  }

  return result;
}

double sub_1CFC3E148(uint64_t a1)
{
  *(a1 + 208) = 0;
  result = 0.0;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_1CFC3E178(uint64_t a1)
{
  v2 = type metadata accessor for LayoutTipView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1CFC3E1F0()
{
  result = qword_1EC4EEFA8;
  if (!qword_1EC4EEFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4EEFA8);
  }

  return result;
}

unint64_t sub_1CFC3E248()
{
  result = qword_1EC4EEFB0;
  if (!qword_1EC4EEFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4EEFB0);
  }

  return result;
}

uint64_t sub_1CFC3E29C(uint64_t a1)
{
  v22 = sub_1CFC9DFD8();
  v2 = *(v22 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFC9E048();
  sub_1CFC3E75C(&qword_1EC4EEFB8, MEMORY[0x1E697E3C0]);
  v6 = sub_1CFC9FA28();
  v7 = MEMORY[0x1E69E7CC0];
  if (!v6)
  {
    return v7;
  }

  v8 = v6;
  v25 = MEMORY[0x1E69E7CC0];
  sub_1CFBCAA6C(0, v6 & ~(v6 >> 63), 0);
  v7 = v25;
  result = sub_1CFC9FA18();
  if ((v8 & 0x8000000000000000) == 0)
  {
    v21 = (v2 + 16);
    do
    {
      v10 = sub_1CFC9FA88();
      v11 = v22;
      (*v21)(v5);
      v10(v24, 0);
      v24[0] = 1;
      v23 = 1;
      sub_1CFC9DFB8();
      v13 = v12;
      v15 = v14;
      (*(v2 + 8))(v5, v11);
      v25 = v7;
      v16 = a1;
      v18 = *(v7 + 16);
      v17 = *(v7 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_1CFBCAA6C((v17 > 1), v18 + 1, 1);
        v7 = v25;
      }

      *(v7 + 16) = v18 + 1;
      v19 = v7 + 16 * v18;
      *(v19 + 32) = v13;
      *(v19 + 40) = v15;
      sub_1CFC9FA58();
      --v8;
      a1 = v16;
    }

    while (v8);
    return v7;
  }

  __break(1u);
  return result;
}

double sub_1CFC3E514(uint64_t a1, double a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v15 = MEMORY[0x1E69E7CC0];
    sub_1CFBCAA8C(0, v3, 0);
    v5 = v15;
    v6 = *(v15 + 16);
    v7 = (a1 + 40);
    do
    {
      v8 = *v7;
      v16 = v5;
      v9 = *(v5 + 24);
      v10 = v6 + 1;
      if (v6 >= v9 >> 1)
      {
        sub_1CFBCAA8C((v9 > 1), v6 + 1, 1);
        v5 = v16;
      }

      *(v5 + 16) = v10;
      *(v5 + 8 * v6 + 32) = v8;
      v7 += 2;
      ++v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
    v10 = *(MEMORY[0x1E69E7CC0] + 16);
    if (!v10)
    {
      goto LABEL_13;
    }
  }

  v11 = *(v5 + 32);
  v12 = v10 - 1;
  if (v10 != 1)
  {
    v13 = 40;
    do
    {
      if (v11 < *(v5 + v13))
      {
        v11 = *(v5 + v13);
      }

      v13 += 8;
      --v12;
    }

    while (v12);
  }

LABEL_13:

  return a2;
}

uint64_t sub_1CFC3E630(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, double a6)
{
  sub_1CFC9E048();
  sub_1CFC3E75C(&qword_1EC4EEFB8, MEMORY[0x1E697E3C0]);
  sub_1CFC9FA18();
  result = sub_1CFC9FA48();
  if (v17 != v16)
  {
    v13 = sub_1CFC3E29C(a1);
    v18.origin.x = a2;
    v18.origin.y = a3;
    v18.size.width = a4;
    v18.size.height = a5;
    Width = CGRectGetWidth(v18);
    v15 = sub_1CFC3C680(v13, Width, a6);

    if (v15)
    {
      return sub_1CFC3CE3C(a1, a2, a3, a4, a5, a6);
    }

    else
    {
      return sub_1CFC3D240(a1, a2, a3, a4, a5, a6);
    }
  }

  return result;
}

uint64_t sub_1CFC3E75C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1CFC3E7AC@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE6F8, &qword_1CFCA6060);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v14 - v4;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result;
    swift_getKeyPath();
    v14 = v7;
    sub_1CFC46D78(&qword_1EE04DF70, type metadata accessor for VoicemailDetailContainerViewModel);
    sub_1CFC9C158();

    v8 = OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__currentPickedAudioRoute;
    swift_beginAccess();
    sub_1CFBA29FC(v7 + v8, v5, &qword_1EC4EE6F8, &qword_1CFCA6060);

    v9 = sub_1CFC9D4D8();
    v10 = *(v9 - 8);
    if ((*(v10 + 48))(v5, 1, v9) != 1)
    {
      v11 = sub_1CFC9D4A8();
      v12 = v13;
      result = (*(v10 + 8))(v5, v9);
      goto LABEL_6;
    }

    result = sub_1CFBC2FB0(v5, &qword_1EC4EE6F8, &qword_1CFCA6060);
  }

  v11 = 0;
  v12 = 0xE000000000000000;
LABEL_6:
  *a1 = v11;
  a1[1] = v12;
  return result;
}

uint64_t sub_1CFC3E9B0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1CFC26EF4(v1, v2);
  }

  return result;
}

uint64_t sub_1CFC3EA20@<X0>(uint64_t a1@<X8>)
{
  v42 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF050, &qword_1CFCA6190);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v41 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF058, &qword_1CFCA6198);
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v41 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF060, &qword_1CFCA61A0);
  v12 = v11 - 8;
  v13 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v41 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF068, &qword_1CFCA61A8);
  v17 = v16 - 8;
  v18 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v41 - v19;
  *v5 = sub_1CFC9E678();
  *(v5 + 1) = 0;
  v5[16] = 1;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF070, &qword_1CFCA61B0);
  sub_1CFC3EDA8(v1, &v5[*(v21 + 44)]);
  sub_1CFC9F538();
  sub_1CFC9E268();
  sub_1CFBCCE88(v5, v10, &qword_1EC4EF050, &qword_1CFCA6190);
  v22 = &v10[*(v7 + 44)];
  v23 = v48;
  *(v22 + 4) = v47;
  *(v22 + 5) = v23;
  *(v22 + 6) = v49;
  v24 = v44;
  *v22 = *&v43[168];
  *(v22 + 1) = v24;
  v25 = v46;
  *(v22 + 2) = v45;
  *(v22 + 3) = v25;
  v26 = swift_allocObject();
  v27 = *(v1 + 144);
  *(v26 + 144) = *(v1 + 128);
  *(v26 + 160) = v27;
  *(v26 + 176) = *(v1 + 160);
  v28 = *(v1 + 80);
  *(v26 + 80) = *(v1 + 64);
  *(v26 + 96) = v28;
  v29 = *(v1 + 112);
  *(v26 + 112) = *(v1 + 96);
  *(v26 + 128) = v29;
  v30 = *(v1 + 16);
  *(v26 + 16) = *v1;
  *(v26 + 32) = v30;
  v31 = *(v1 + 48);
  *(v26 + 48) = *(v1 + 32);
  *(v26 + 64) = v31;
  sub_1CFBCCE88(v10, v15, &qword_1EC4EF058, &qword_1CFCA6198);
  v32 = &v15[*(v12 + 44)];
  *v32 = sub_1CFC45F7C;
  v32[1] = v26;
  v32[2] = 0;
  v32[3] = 0;
  v33 = swift_allocObject();
  v34 = *(v1 + 144);
  *(v33 + 144) = *(v1 + 128);
  *(v33 + 160) = v34;
  *(v33 + 176) = *(v1 + 160);
  v35 = *(v1 + 80);
  *(v33 + 80) = *(v1 + 64);
  *(v33 + 96) = v35;
  v36 = *(v1 + 112);
  *(v33 + 112) = *(v1 + 96);
  *(v33 + 128) = v36;
  v37 = *(v1 + 16);
  *(v33 + 16) = *v1;
  *(v33 + 32) = v37;
  v38 = *(v1 + 48);
  *(v33 + 48) = *(v1 + 32);
  *(v33 + 64) = v38;
  sub_1CFBCCE88(v15, v20, &qword_1EC4EF060, &qword_1CFCA61A0);
  v39 = &v20[*(v17 + 44)];
  *v39 = 0;
  *(v39 + 1) = 0;
  *(v39 + 2) = sub_1CFC45F84;
  *(v39 + 3) = v33;
  sub_1CFBCCE88(v20, v42, &qword_1EC4EF068, &qword_1CFCA61A8);
  sub_1CFC45FA8(v1, v43);
  return sub_1CFC45FA8(v1, v43);
}

uint64_t sub_1CFC3EDA8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v111 = a1;
  v129 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF080, &qword_1CFCA61C8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v119 = (&v107 - v5);
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF088, &qword_1CFCA61D0);
  v6 = *(*(v118 - 8) + 64);
  MEMORY[0x1EEE9AC00](v118);
  v122 = &v107 - v7;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF090, &qword_1CFCA61D8);
  v8 = *(*(v121 - 8) + 64);
  MEMORY[0x1EEE9AC00](v121);
  v126 = &v107 - v9;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF098, &qword_1CFCA61E0);
  v10 = *(*(v125 - 8) + 64);
  MEMORY[0x1EEE9AC00](v125);
  v128 = &v107 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v123 = &v107 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v127 = &v107 - v15;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF0A0, &qword_1CFCA61E8);
  v114 = *(v115 - 8);
  v16 = *(v114 + 64);
  MEMORY[0x1EEE9AC00](v115);
  v108 = &v107 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF0A8, &qword_1CFCA61F0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v113 = &v107 - v20;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF0B0, &unk_1CFCA61F8);
  v21 = *(*(v116 - 8) + 64);
  MEMORY[0x1EEE9AC00](v116);
  v124 = &v107 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v112 = (&v107 - v24);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED0D0, &unk_1CFCA1FE0);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v27 = sub_1CFC9C448();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v31 = &v107 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF0B8, &qword_1CFCA6208);
  v33 = v32 - 8;
  v34 = *(*(v32 - 8) + 64);
  MEMORY[0x1EEE9AC00](v32);
  v120 = &v107 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v107 - v37;
  v39 = *a1;
  sub_1CFC202E8();
  v117 = v40;
  swift_getKeyPath();
  v110 = OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel___observationRegistrar;
  *&v130 = v39;
  v109 = sub_1CFC46D78(&qword_1EE04DF70, type metadata accessor for VoicemailDetailContainerViewModel);
  sub_1CFC9C158();

  v41 = OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__item;
  swift_beginAccess();
  (*(v28 + 16))(v31, v39 + v41, v27);
  sub_1CFC9C3A8();
  (*(v28 + 8))(v31, v27);
  sub_1CFC9CF98();
  LOBYTE(v31) = sub_1CFC9EBC8();
  sub_1CFC9DE18();
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v50 = &v38[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF0C0, &qword_1CFCA6238) + 36)];
  *v50 = v31;
  *(v50 + 1) = v43;
  *(v50 + 2) = v45;
  *(v50 + 3) = v47;
  *(v50 + 4) = v49;
  v50[40] = 0;
  v51 = objc_opt_self();
  v52 = [v51 currentDevice];
  v53 = [v52 userInterfaceIdiom];

  v54 = v111;
  v55 = v111[1];
  v56 = *(v33 + 44);
  v117 = v38;
  v57 = &v38[v56];
  *v57 = v53;
  *(v57 + 1) = v55;
  *(v57 + 2) = 0x4070000000000000;
  v58 = sub_1CFC9E588();
  v59 = v112;
  *v112 = v58;
  v59[1] = 0x4024000000000000;
  v60 = v59;
  *(v59 + 16) = 0;
  swift_getKeyPath();
  *&v130 = v39;
  sub_1CFC9C158();

  v61 = *(v39 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__player);
  if (v61)
  {
    v62 = v61;
    v63 = v108;
    sub_1CFC3FBA4(v62, v108);

    v64 = v113;
    sub_1CFBCCE88(v63, v113, &qword_1EC4EF0A0, &qword_1CFCA61E8);
    v65 = 0;
  }

  else
  {
    v65 = 1;
    v64 = v113;
  }

  (*(v114 + 56))(v64, v65, 1, v115);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF0C8, &qword_1CFCA6268);
  sub_1CFBCCE88(v64, v60 + *(v66 + 44), &qword_1EC4EF0A8, &qword_1CFCA61F0);
  v67 = [v51 currentDevice];
  v68 = [v67 userInterfaceIdiom];

  v69 = (v60 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF0D0, &qword_1CFCA6270) + 36));
  *v69 = v68;
  v69[1] = v55;
  v69[2] = 0x4070000000000000;
  LOBYTE(v67) = sub_1CFC9EBC8();
  sub_1CFC9CD28();
  sub_1CFC9DE18();
  v70 = v60 + *(v116 + 36);
  *v70 = v67;
  *(v70 + 8) = v71;
  *(v70 + 16) = v72;
  *(v70 + 24) = v73;
  *(v70 + 32) = v74;
  *(v70 + 40) = 0;
  v75 = sub_1CFC9E588();
  v76 = v119;
  *v119 = v75;
  *(v76 + 8) = 0;
  *(v76 + 16) = 1;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF0D8, &qword_1CFCA6278);
  sub_1CFC40904(v54, v39, v76 + *(v77 + 44));
  sub_1CFC9F538();
  sub_1CFC9E268();
  v78 = v122;
  sub_1CFBCCE88(v76, v122, &qword_1EC4EF080, &qword_1CFCA61C8);
  v79 = (v78 + *(v118 + 36));
  v80 = v135;
  v79[4] = v134;
  v79[5] = v80;
  v79[6] = v136;
  v81 = v131;
  *v79 = v130;
  v79[1] = v81;
  v82 = v133;
  v79[2] = v132;
  v79[3] = v82;
  LOBYTE(v76) = sub_1CFC9EBC8();
  sub_1CFC9CD28();
  sub_1CFC9DE18();
  v84 = v83;
  v86 = v85;
  v88 = v87;
  v90 = v89;
  v91 = v78;
  v92 = v126;
  sub_1CFBCCE88(v91, v126, &qword_1EC4EF088, &qword_1CFCA61D0);
  v93 = v92 + *(v121 + 36);
  *v93 = v76;
  *(v93 + 8) = v84;
  *(v93 + 16) = v86;
  *(v93 + 24) = v88;
  *(v93 + 32) = v90;
  *(v93 + 40) = 0;
  v94 = [v51 currentDevice];
  v95 = [v94 userInterfaceIdiom];

  v96 = v123;
  sub_1CFBCCE88(v92, v123, &qword_1EC4EF090, &qword_1CFCA61D8);
  v97 = (v96 + *(v125 + 36));
  *v97 = v95;
  v97[1] = v55;
  v97[2] = 0x4070000000000000;
  v98 = v127;
  sub_1CFBCCE88(v96, v127, &qword_1EC4EF098, &qword_1CFCA61E0);
  v99 = v117;
  v100 = v120;
  sub_1CFBA29FC(v117, v120, &qword_1EC4EF0B8, &qword_1CFCA6208);
  v101 = v60;
  v102 = v124;
  sub_1CFBA29FC(v60, v124, &qword_1EC4EF0B0, &unk_1CFCA61F8);
  v103 = v128;
  sub_1CFBA29FC(v98, v128, &qword_1EC4EF098, &qword_1CFCA61E0);
  v104 = v129;
  sub_1CFBA29FC(v100, v129, &qword_1EC4EF0B8, &qword_1CFCA6208);
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF0E0, &qword_1CFCA6280);
  sub_1CFBA29FC(v102, v104 + *(v105 + 48), &qword_1EC4EF0B0, &unk_1CFCA61F8);
  sub_1CFBA29FC(v103, v104 + *(v105 + 64), &qword_1EC4EF098, &qword_1CFCA61E0);
  sub_1CFBC2FB0(v98, &qword_1EC4EF098, &qword_1CFCA61E0);
  sub_1CFBC2FB0(v101, &qword_1EC4EF0B0, &unk_1CFCA61F8);
  sub_1CFBC2FB0(v99, &qword_1EC4EF0B8, &qword_1CFCA6208);
  sub_1CFBC2FB0(v103, &qword_1EC4EF098, &qword_1CFCA61E0);
  sub_1CFBC2FB0(v102, &qword_1EC4EF0B0, &unk_1CFCA61F8);
  return sub_1CFBC2FB0(v100, &qword_1EC4EF0B8, &qword_1CFCA6208);
}

uint64_t sub_1CFC3FACC(uint64_t *a1)
{
  v2 = *a1;
  sub_1CFC2262C();
  v5 = *(a1 + 1);
  v6 = v5;
  v7 = *(&v5 + 1);
  sub_1CFBA29FC(&v7, v4, &qword_1EC4EF078, &unk_1CFCA61B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDEE0, &qword_1CFCA5670);
  sub_1CFC9F238();
  if (v4[0] == 1)
  {
    sub_1CFC264F0();
    v5 = v6;
    v4[0] = 0;
    sub_1CFC9F248();
  }

  return sub_1CFBC2FB0(&v6, &qword_1EC4EDEE0, &qword_1CFCA5670);
}

void sub_1CFC3FBA4(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  sub_1CFC9F968();
  sub_1CFC45FA8(v2, &time);
  v5 = sub_1CFC9F958();
  v6 = swift_allocObject();
  v7 = MEMORY[0x1E69E85E0];
  *(v6 + 16) = v5;
  *(v6 + 24) = v7;
  v8 = *(v2 + 144);
  *(v6 + 160) = *(v2 + 128);
  *(v6 + 176) = v8;
  *(v6 + 192) = *(v2 + 160);
  v9 = *(v2 + 80);
  *(v6 + 96) = *(v2 + 64);
  *(v6 + 112) = v9;
  v10 = *(v2 + 112);
  *(v6 + 128) = *(v2 + 96);
  *(v6 + 144) = v10;
  v11 = *(v2 + 16);
  *(v6 + 32) = *v2;
  *(v6 + 48) = v11;
  v12 = *(v2 + 48);
  *(v6 + 64) = *(v2 + 32);
  *(v6 + 80) = v12;
  sub_1CFC45FA8(v2, &time);
  v13 = a1;
  v14 = sub_1CFC9F958();
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = v7;
  v16 = *(v3 + 144);
  *(v15 + 160) = *(v3 + 128);
  *(v15 + 176) = v16;
  v17 = *(v3 + 160);
  v18 = *(v3 + 80);
  *(v15 + 96) = *(v3 + 64);
  *(v15 + 112) = v18;
  v19 = *(v3 + 112);
  *(v15 + 128) = *(v3 + 96);
  *(v15 + 144) = v19;
  v20 = *(v3 + 16);
  *(v15 + 32) = *v3;
  *(v15 + 48) = v20;
  v21 = *(v3 + 48);
  *(v15 + 64) = *(v3 + 32);
  *(v15 + 80) = v21;
  *(v15 + 192) = v17;
  *(v15 + 200) = v13;
  sub_1CFC9F388();
  v22 = v63;
  v23 = v64;
  v24 = v65;
  v25 = *v3;
  swift_getKeyPath();
  time.value = v25;
  sub_1CFC46D78(&qword_1EE04DF70, type metadata accessor for VoicemailDetailContainerViewModel);
  sub_1CFC9C158();

  v26 = (v25 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__duration);
  v27 = *(v25 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__duration + 16);
  v28 = *(v25 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__duration + 8);
  time.value = *(v25 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__duration);
  *&time.timescale = v28;
  time.epoch = v27;
  Seconds = CMTimeGetSeconds(&time);
  if (Seconds < 0.0)
  {
    __break(1u);
  }

  else
  {
    v30 = Seconds;
    v31 = swift_allocObject();
    v32 = *(v3 + 144);
    *(v31 + 144) = *(v3 + 128);
    *(v31 + 160) = v32;
    *(v31 + 176) = *(v3 + 160);
    v33 = *(v3 + 80);
    *(v31 + 80) = *(v3 + 64);
    *(v31 + 96) = v33;
    v34 = *(v3 + 112);
    *(v31 + 112) = *(v3 + 96);
    *(v31 + 128) = v34;
    v35 = *(v3 + 16);
    *(v31 + 16) = *v3;
    *(v31 + 32) = v35;
    v36 = *(v3 + 48);
    *(v31 + 48) = *(v3 + 32);
    *(v31 + 64) = v36;
    v59 = v22;
    v60 = v23;
    v61 = v24;
    v57 = 0;
    v58 = v30;
    swift_getKeyPath();
    *&v56 = v25;
    sub_1CFC45FA8(v3, &time);
    sub_1CFC9C158();

    v37 = (v25 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__currentTime);
    sub_1CFC402B4(*(v25 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__currentTime), *(v25 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__currentTime + 8), *(v25 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__currentTime + 16), &time.value);
    swift_getKeyPath();
    *&v56 = v25;
    sub_1CFC9C158();

    v38 = *v37;
    v39 = v37[1];
    v40 = v37[2];
    swift_getKeyPath();
    *&v56 = v25;
    sub_1CFC9C158();

    v41 = *v26;
    v42 = v26[1];
    v43 = v26[2];
    v44 = sub_1CFC9FD38();
    sub_1CFC402B4(v44, v45, v46, &v56);
    sub_1CFBDA7AC();
    sub_1CFC9F338();
    v47 = sub_1CFC9F178();
    KeyPath = swift_getKeyPath();
    v49 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF0E8, &qword_1CFCA6308) + 36));
    *v49 = KeyPath;
    v49[1] = v47;
    v50 = swift_getKeyPath();
    v51 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF0A0, &qword_1CFCA61E8) + 36));
    v52 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF0F0, &qword_1CFCA6340) + 28);
    v53 = *MEMORY[0x1E697E7D0];
    v54 = sub_1CFC9E168();
    (*(*(v54 - 8) + 104))(v51 + v52, v53, v54);
    *v51 = v50;
  }
}

void sub_1CFC400A4(uint64_t a1@<X2>, double *a2@<X8>)
{
  *&time.value = *(a1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDEE0, &qword_1CFCA5670);
  sub_1CFC9F238();
  if (LOBYTE(v8) == 1)
  {
    *&time.value = *(a1 + 64);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF0F8, &qword_1CFCA6348);
    sub_1CFC9F238();
    Seconds = v8;
  }

  else
  {
    v5 = *a1;
    swift_getKeyPath();
    time.value = v5;
    sub_1CFC46D78(&qword_1EE04DF70, type metadata accessor for VoicemailDetailContainerViewModel);
    sub_1CFC9C158();

    v6 = *(v5 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__currentTime + 16);
    v7 = *(v5 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__currentTime + 8);
    time.value = *(v5 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__currentTime);
    *&time.timescale = v7;
    time.epoch = v6;
    Seconds = CMTimeGetSeconds(&time);
  }

  *a2 = Seconds;
}

id sub_1CFC401DC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = *a1;
  v11 = *(a4 + 64);
  v13 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF0F8, &qword_1CFCA6348);
  sub_1CFC9F248();
  v11 = *(a4 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDEE0, &qword_1CFCA5670);
  result = sub_1CFC9F238();
  if ((v7 & 1) == 0)
  {
    *&v11 = sub_1CFC9FD58();
    *(&v11 + 1) = v9;
    v12 = v10;
    return [a5 seekToTime_];
  }

  return result;
}

uint64_t sub_1CFC402B4@<X0>(CMTimeValue a1@<X0>, unint64_t a2@<X1>, CMTimeEpoch a3@<X2>, uint64_t *a4@<X8>)
{
  v47 = a3;
  v48 = a4;
  v4 = a2;
  v45 = a1;
  v46 = HIDWORD(a2);
  v5 = sub_1CFCA0298();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1CFCA03B8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1CFCA03C8();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  time.value = v45;
  time.timescale = v4;
  time.flags = v46;
  time.epoch = v47;
  CMTimeGetSeconds(&time);
  v47 = sub_1CFCA03E8();
  (*(v6 + 104))(v9, *MEMORY[0x1E69E7030], v5);
  sub_1CFCA03A8();
  (*(v6 + 8))(v9, v5);
  sub_1CFC9BD88();
  (*(v11 + 8))(v14, v10);
  sub_1CFC46D78(&unk_1EE04CEC0, MEMORY[0x1E696A188]);
  sub_1CFCA03D8();
  (*(v16 + 8))(v19, v15);
  sub_1CFBB4460();
  v20 = sub_1CFC9EDF8();
  v22 = v21;
  LOBYTE(v10) = v23;
  sub_1CFC9ECE8();
  v24 = sub_1CFC9EDC8();
  v26 = v25;
  LOBYTE(v14) = v27;

  sub_1CFBB44C0(v20, v22, v10 & 1);

  v28 = sub_1CFC9ED78();
  v30 = v29;
  LOBYTE(v10) = v31;
  sub_1CFBB44C0(v24, v26, v14 & 1);

  sub_1CFC9EC98();
  v32 = sub_1CFC9ED38();
  v34 = v33;
  LOBYTE(v26) = v35;
  sub_1CFBB44C0(v28, v30, v10 & 1);

  LODWORD(time.value) = sub_1CFC9E908();
  v36 = sub_1CFC9ED68();
  v38 = v37;
  LOBYTE(v10) = v39;
  v41 = v40;
  sub_1CFBB44C0(v32, v34, v26 & 1);

  v43 = v48;
  *v48 = v36;
  v43[1] = v38;
  *(v43 + 16) = v10 & 1;
  v43[3] = v41;
  return result;
}

id sub_1CFC406E4(char a1, uint64_t a2)
{
  *&v14.value = *(a2 + 32);
  LOBYTE(v15) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDEE0, &qword_1CFCA5670);
  sub_1CFC9F248();
  if (a1)
  {
    v4 = *a2;
    swift_getKeyPath();
    v14.value = v4;
    sub_1CFC46D78(&qword_1EE04DF70, type metadata accessor for VoicemailDetailContainerViewModel);
    sub_1CFC9C158();

    v5 = *(v4 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__currentTime + 16);
    v6 = *(v4 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__currentTime + 8);
    v14.value = *(v4 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__currentTime);
    *&v14.timescale = v6;
    v14.epoch = v5;
    Seconds = CMTimeGetSeconds(&v14);
    *&v14.value = *(a2 + 64);
    v15 = Seconds;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF0F8, &qword_1CFCA6348);
    sub_1CFC9F248();
    swift_getKeyPath();
    v14.value = v4;
    sub_1CFC9C158();

    v8 = *(v4 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__isPlaying[0]);
    *&v14.value = *(a2 + 48);
    LOBYTE(v15) = v8;
    sub_1CFC9F248();
    return sub_1CFC2680C();
  }

  else
  {
    *&v14.value = *(a2 + 64);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF0F8, &qword_1CFCA6348);
    sub_1CFC9F238();
    v10 = sub_1CFC9FD58();
    v11 = *a2;
    sub_1CFC26D0C(v10, v12, v13);
    *&v14.value = *(a2 + 48);
    result = sub_1CFC9F238();
    if (LOBYTE(v15) == 1)
    {
      return sub_1CFC264F0();
    }
  }

  return result;
}

uint64_t sub_1CFC40904@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v90 = a3;
  v91 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF100, &qword_1CFCA6378);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v103 = v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v102 = v84 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF108, &qword_1CFCA6380);
  v10 = *(v9 - 8);
  v88 = v9;
  v89 = v10;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v87 = v84 - v12;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF110, &qword_1CFCA6388);
  v104 = *(v101 - 8);
  v13 = v104[8];
  MEMORY[0x1EEE9AC00](v101);
  v99 = v84 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v98 = v84 - v16;
  v86 = sub_1CFC9E858();
  v105 = *(v86 - 8);
  v17 = *(v105 + 64);
  MEMORY[0x1EEE9AC00](v86);
  v93 = v84 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF118, &qword_1CFCA6390);
  v19 = *(v85 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v85);
  v22 = v84 - v21;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF120, &qword_1CFCA6398);
  v100 = *(v97 - 8);
  v23 = v100[8];
  MEMORY[0x1EEE9AC00](v97);
  v96 = v84 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v92 = v84 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF128, &qword_1CFCA63A0);
  v28 = v27 - 8;
  v29 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27);
  v95 = v84 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v33 = v84 - v32;
  v34 = *(a1 + 96);
  v35 = (v84 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF130, &qword_1CFCA63A8) + 36) - v32);
  v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF138, &qword_1CFCA63B0) + 28);
  v37 = *MEMORY[0x1E69816C0];
  v38 = sub_1CFC9F1D8();
  (*(*(v38 - 8) + 104))(v35 + v36, v37, v38);
  *v35 = swift_getKeyPath();
  *v33 = v34;
  *(v33 + 4) = 257;
  v39 = v34;
  v40 = sub_1CFC9F178();
  KeyPath = swift_getKeyPath();
  v42 = &v33[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF140, &qword_1CFCA63E8) + 36)];
  v94 = v33;
  *v42 = KeyPath;
  v42[1] = v40;
  sub_1CFC9CD28();
  sub_1CFC9CD28();
  sub_1CFC9F538();
  sub_1CFC9DF68();
  v43 = &v33[*(v28 + 44)];
  v44 = v107[12];
  *v43 = v107[11];
  *(v43 + 1) = v44;
  *(v43 + 2) = v107[13];
  v45 = swift_allocObject();
  v46 = *(a1 + 144);
  *(v45 + 144) = *(a1 + 128);
  *(v45 + 160) = v46;
  *(v45 + 176) = *(a1 + 160);
  v47 = *(a1 + 80);
  *(v45 + 80) = *(a1 + 64);
  *(v45 + 96) = v47;
  v48 = *(a1 + 112);
  *(v45 + 112) = *(a1 + 96);
  *(v45 + 128) = v48;
  v49 = *(a1 + 16);
  *(v45 + 16) = *a1;
  *(v45 + 32) = v49;
  v50 = *(a1 + 48);
  *(v45 + 48) = *(a1 + 32);
  *(v45 + 64) = v50;
  sub_1CFC45FA8(a1, v107);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF148, &qword_1CFCA63F0);
  sub_1CFC46790(&qword_1EE04D3A8, &qword_1EC4EF148, &qword_1CFCA63F0, sub_1CFC4600C);
  sub_1CFC9F298();
  v51 = v93;
  sub_1CFC9E848();
  v84[2] = MEMORY[0x1E697D680];
  sub_1CFBA57C0(&qword_1EE04D1D0, &qword_1EC4EF118, &qword_1CFCA6390);
  v84[1] = sub_1CFC46D78(&qword_1EE04FFF0, MEMORY[0x1E697C720]);
  v52 = v92;
  v54 = v85;
  v53 = v86;
  sub_1CFC9EEC8();
  v55 = *(v105 + 8);
  v105 += 8;
  v55(v51, v53);
  (*(v19 + 8))(v22, v54);
  v56 = swift_allocObject();
  v57 = *(a1 + 144);
  *(v56 + 144) = *(a1 + 128);
  *(v56 + 160) = v57;
  *(v56 + 176) = *(a1 + 160);
  v58 = *(a1 + 80);
  *(v56 + 80) = *(a1 + 64);
  *(v56 + 96) = v58;
  v59 = *(a1 + 112);
  *(v56 + 112) = *(a1 + 96);
  *(v56 + 128) = v59;
  v60 = *(a1 + 16);
  *(v56 + 16) = *a1;
  *(v56 + 32) = v60;
  v61 = *(a1 + 48);
  *(v56 + 48) = *(a1 + 32);
  *(v56 + 64) = v61;
  v106 = a1;
  sub_1CFC45FA8(a1, v107);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF168, &qword_1CFCA6418);
  sub_1CFC461BC(&qword_1EE04D398, &qword_1EC4EF168, &qword_1CFCA6418, sub_1CFC46240);
  v62 = v87;
  sub_1CFC9F298();
  v63 = v93;
  sub_1CFC9E848();
  sub_1CFBA57C0(&qword_1EE04D1C0, &qword_1EC4EF108, &qword_1CFCA6380);
  v64 = v98;
  v65 = v88;
  sub_1CFC9EEC8();
  v55(v63, v53);
  (*(v89 + 8))(v62, v65);
  v66 = v102;
  sub_1CFC4153C(v102);
  v67 = v95;
  sub_1CFBA29FC(v94, v95, &qword_1EC4EF128, &qword_1CFCA63A0);
  v93 = v100[2];
  v68 = v96;
  v69 = v97;
  (v93)(v96, v52, v97);
  v105 = v104[2];
  v70 = v99;
  (v105)(v99, v64, v101);
  v71 = v103;
  sub_1CFBA29FC(v66, v103, &qword_1EC4EF100, &qword_1CFCA6378);
  v72 = v67;
  v73 = v90;
  sub_1CFBA29FC(v72, v90, &qword_1EC4EF128, &qword_1CFCA63A0);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF198, &qword_1CFCA6450);
  v75 = v73 + v74[12];
  *v75 = 0;
  *(v75 + 8) = 1;
  (v93)(v73 + v74[16], v68, v69);
  v76 = v73 + v74[20];
  *v76 = 0;
  *(v76 + 8) = 1;
  v77 = v101;
  (v105)(v73 + v74[24], v70, v101);
  v78 = v73 + v74[28];
  *v78 = 0;
  *(v78 + 8) = 1;
  sub_1CFBA29FC(v71, v73 + v74[32], &qword_1EC4EF100, &qword_1CFCA6378);
  v79 = v73 + v74[36];
  *v79 = 0;
  *(v79 + 8) = 1;
  *(v73 + v74[40]) = v91;
  swift_retain_n();
  sub_1CFBC2FB0(v102, &qword_1EC4EF100, &qword_1CFCA6378);
  v80 = v104[1];
  v80(v98, v77);
  v81 = v100[1];
  v82 = v97;
  v81(v92, v97);
  sub_1CFBC2FB0(v94, &qword_1EC4EF128, &qword_1CFCA63A0);

  sub_1CFBC2FB0(v103, &qword_1EC4EF100, &qword_1CFCA6378);
  v80(v99, v77);
  v81(v96, v82);
  return sub_1CFBC2FB0(v95, &qword_1EC4EF128, &qword_1CFCA63A0);
}

uint64_t sub_1CFC4153C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v79 = a1;
  v70 = sub_1CFC9E648();
  v69 = *(v70 - 8);
  v3 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v70);
  v68 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF1A0, &qword_1CFCA6458);
  v64 = *(v5 - 8);
  v6 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v62 - v7;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF1A8, &qword_1CFCA6460);
  v65 = *(v66 - 8);
  v9 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v66);
  v11 = &v62 - v10;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF1B0, &qword_1CFCA6468);
  v12 = *(*(v78 - 8) + 64);
  MEMORY[0x1EEE9AC00](v78);
  v14 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v67 = &v62 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v71 = &v62 - v18;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF1B8, &qword_1CFCA6470);
  v19 = *(*(v76 - 8) + 64);
  MEMORY[0x1EEE9AC00](v76);
  v77 = &v62 - v20;
  v75 = sub_1CFC9E858();
  v72 = *(v75 - 8);
  v21 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v75);
  v23 = &v62 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF1C0, &qword_1CFCA6478);
  v24 = *(*(v73 - 8) + 64);
  MEMORY[0x1EEE9AC00](v73);
  v26 = &v62 - v25;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF1C8, &qword_1CFCA6480);
  v27 = *(v74 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v74);
  v30 = &v62 - v29;
  v31 = *(*v1 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel_audioRouteService);
  v32 = sub_1CFC9D568();
  if (v32)
  {
    v71 = &v62;
    MEMORY[0x1EEE9AC00](v32);
    MEMORY[0x1EEE9AC00](v33);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF1D8, &qword_1CFCA6490);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF1E0, &qword_1CFCA6498);
    sub_1CFC46790(&qword_1EC4EF1E8, &qword_1EC4EF1D8, &qword_1CFCA6490, sub_1CFC46844);
    sub_1CFC469B4();
    sub_1CFC9ED08();
    sub_1CFC9F538();
    sub_1CFC9DF68();
    v34 = v73;
    v35 = &v26[*(v73 + 36)];
    v36 = v85;
    *v35 = v84;
    *(v35 + 1) = v36;
    *(v35 + 2) = v86;
    sub_1CFC9E848();
    v37 = sub_1CFC4654C();
    v38 = sub_1CFC46D78(&qword_1EE04FFF0, MEMORY[0x1E697C720]);
    v39 = v75;
    sub_1CFC9EEC8();
    (*(v72 + 8))(v23, v39);
    sub_1CFBC2FB0(v26, &qword_1EC4EF1C0, &qword_1CFCA6478);
    v40 = v74;
    (*(v27 + 16))(v77, v30, v74);
    swift_storeEnumTagMultiPayload();
    v80 = v34;
    v81 = v39;
    v82 = v37;
    v83 = v38;
    swift_getOpaqueTypeConformance2();
    sub_1CFC46604();
    sub_1CFC9E798();
    return (*(v27 + 8))(v30, v40);
  }

  else
  {
    v42 = swift_allocObject();
    *(v42 + 176) = *(v2 + 160);
    v43 = *(v2 + 144);
    *(v42 + 144) = *(v2 + 128);
    *(v42 + 160) = v43;
    v44 = *(v2 + 80);
    *(v42 + 80) = *(v2 + 64);
    *(v42 + 96) = v44;
    v45 = *(v2 + 112);
    *(v42 + 112) = *(v2 + 96);
    *(v42 + 128) = v45;
    v46 = *(v2 + 16);
    *(v42 + 16) = *v2;
    *(v42 + 32) = v46;
    v47 = *(v2 + 48);
    *(v42 + 48) = *(v2 + 32);
    *(v42 + 64) = v47;
    MEMORY[0x1EEE9AC00](v42);
    sub_1CFC45FA8(v2, &v84);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF150, &qword_1CFCA63F8);
    sub_1CFC4600C();
    sub_1CFC9F298();
    sub_1CFC9E848();
    v48 = sub_1CFBA57C0(&qword_1EE04D1E0, &qword_1EC4EF1A0, &qword_1CFCA6458);
    v49 = sub_1CFC46D78(&qword_1EE04FFF0, MEMORY[0x1E697C720]);
    v50 = v75;
    v51 = v49;
    v63 = v49;
    sub_1CFC9EEC8();
    (*(v72 + 8))(v23, v50);
    (*(v64 + 8))(v8, v5);
    type metadata accessor for BundleClass();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v53 = [objc_opt_self() bundleForClass_];
    v54 = sub_1CFC9BE28();
    v56 = v55;

    v80 = v54;
    v81 = v56;
    *&v84 = v5;
    *(&v84 + 1) = v50;
    *&v85 = v48;
    *(&v85 + 1) = v51;
    swift_getOpaqueTypeConformance2();
    sub_1CFBB4460();
    v57 = v66;
    sub_1CFC9EF68();

    (*(v65 + 8))(v11, v57);
    v58 = v68;
    sub_1CFC9E638();
    v59 = v67;
    sub_1CFC9E1B8();
    (*(v69 + 8))(v58, v70);
    sub_1CFBC2FB0(v14, &qword_1EC4EF1B0, &qword_1CFCA6468);
    v84 = *(v2 + 104);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDEE0, &qword_1CFCA5670);
    sub_1CFC9F238();
    sub_1CFC9E5E8();
    v60 = v71;
    sub_1CFC9E198();

    sub_1CFBC2FB0(v59, &qword_1EC4EF1B0, &qword_1CFCA6468);
    sub_1CFBA29FC(v60, v77, &qword_1EC4EF1B0, &qword_1CFCA6468);
    swift_storeEnumTagMultiPayload();
    v61 = sub_1CFC4654C();
    *&v84 = v73;
    *(&v84 + 1) = v50;
    *&v85 = v61;
    *(&v85 + 1) = v63;
    swift_getOpaqueTypeConformance2();
    sub_1CFC46604();
    sub_1CFC9E798();
    return sub_1CFBC2FB0(v60, &qword_1EC4EF1B0, &qword_1CFCA6468);
  }
}

id sub_1CFC42104(uint64_t *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  v4[0] = v1;
  sub_1CFC46D78(&qword_1EE04DF70, type metadata accessor for VoicemailDetailContainerViewModel);
  sub_1CFC9C158();

  result = *(v1 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__player);
  if (result)
  {
    v3 = *(MEMORY[0x1E6960CC0] + 16);
    v4[0] = *MEMORY[0x1E6960CC0];
    v4[1] = *(MEMORY[0x1E6960CC0] + 8);
    v4[2] = v3;
    return [result seekToTime_];
  }

  return result;
}

uint64_t sub_1CFC421E0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF150, &qword_1CFCA63F8);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0);
  v3 = (v20 - v2);
  v4 = sub_1CFC9F1A8();
  v5 = (v3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF160, &unk_1CFCA6408) + 36));
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF138, &qword_1CFCA63B0) + 28);
  v7 = *MEMORY[0x1E69816C0];
  v8 = sub_1CFC9F1D8();
  (*(*(v8 - 8) + 104))(v5 + v6, v7, v8);
  *v5 = swift_getKeyPath();
  *v3 = v4;
  v9 = sub_1CFC9F178();
  KeyPath = swift_getKeyPath();
  v11 = (v3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF158, &qword_1CFCA6400) + 36));
  *v11 = KeyPath;
  v11[1] = v9;
  sub_1CFC9F538();
  sub_1CFC9DF68();
  v12 = (v3 + *(v0 + 36));
  v13 = v22;
  *v12 = v21;
  v12[1] = v13;
  v12[2] = v23;
  type metadata accessor for BundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v15 = [objc_opt_self() bundleForClass_];
  v16 = sub_1CFC9BE28();
  v18 = v17;

  v20[0] = v16;
  v20[1] = v18;
  sub_1CFC4600C();
  sub_1CFBB4460();
  sub_1CFC9EF68();

  return sub_1CFBC2FB0(v3, &qword_1EC4EF150, &qword_1CFCA63F8);
}

id sub_1CFC4248C(uint64_t *a1)
{
  v4 = *(a1 + 2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDEE0, &qword_1CFCA5670);
  sub_1CFC9F248();
  v5 = *(a1 + 3);
  sub_1CFC9F248();
  v2 = *a1;
  swift_getKeyPath();
  sub_1CFC46D78(&qword_1EE04DF70, type metadata accessor for VoicemailDetailContainerViewModel);
  sub_1CFC9C158();

  if (*(v2 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__isPlaying[0]) == 1)
  {
    return sub_1CFC2680C();
  }

  else
  {
    return sub_1CFC264F0();
  }
}

double sub_1CFC425A0@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v3 = sub_1CFC9F628();
  v53 = *(v3 - 8);
  v54 = v3;
  v4 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_1CFC9F5F8();
  v52 = *(v50 - 8);
  v7 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v50);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF188, &qword_1CFCA6438);
  v11 = v10 - 8;
  v12 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = (&v48 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF180, &qword_1CFCA6430);
  v16 = v15 - 8;
  v17 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v49 = &v48 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF178, &qword_1CFCA6428);
  v20 = v19 - 8;
  v21 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19);
  v48 = &v48 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF170, &qword_1CFCA6420);
  v24 = v23 - 8;
  v25 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23);
  v51 = &v48 - v26;
  v27 = *a1;
  swift_getKeyPath();
  *&v56 = v27;
  sub_1CFC46D78(&qword_1EE04DF70, type metadata accessor for VoicemailDetailContainerViewModel);
  sub_1CFC9C158();

  *(v27 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__isPlaying[0]);
  *(v27 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__isPlaying[0]);
  v28 = sub_1CFC9F1A8();
  sub_1CFC9F5E8();
  sub_1CFC9F608();
  v29 = (v14 + *(v11 + 44));
  LODWORD(v27) = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF190, &unk_1CFCA6440) + 28);
  sub_1CFC46D78(&unk_1EE04D138, MEMORY[0x1E6982178]);
  v30 = v50;
  sub_1CFC9E298();
  (*(v53 + 8))(v6, v54);
  (*(v52 + 8))(v9, v30);
  *v29 = swift_getKeyPath();
  *v14 = v28;
  v31 = sub_1CFC9EC38();
  KeyPath = swift_getKeyPath();
  v33 = v49;
  sub_1CFBCCE88(v14, v49, &qword_1EC4EF188, &qword_1CFCA6438);
  v34 = (v33 + *(v16 + 44));
  *v34 = KeyPath;
  v34[1] = v31;
  v35 = v48;
  v36 = &v48[*(v20 + 44)];
  v37 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF138, &qword_1CFCA63B0) + 28);
  v38 = *MEMORY[0x1E69816E0];
  v39 = sub_1CFC9F1D8();
  (*(*(v39 - 8) + 104))(v36 + v37, v38, v39);
  *v36 = swift_getKeyPath();
  sub_1CFBCCE88(v33, v35, &qword_1EC4EF180, &qword_1CFCA6430);
  v40 = sub_1CFC9F178();
  v41 = swift_getKeyPath();
  v42 = v51;
  sub_1CFBCCE88(v35, v51, &qword_1EC4EF178, &qword_1CFCA6428);
  v43 = (v42 + *(v24 + 44));
  *v43 = v41;
  v43[1] = v40;
  sub_1CFC9F538();
  sub_1CFC9DF68();
  v44 = v55;
  sub_1CFBCCE88(v42, v55, &qword_1EC4EF170, &qword_1CFCA6420);
  v45 = (v44 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF168, &qword_1CFCA6418) + 36));
  v46 = v57;
  *v45 = v56;
  v45[1] = v46;
  result = *&v58;
  v45[2] = v58;
  return result;
}

uint64_t sub_1CFC42B40()
{
  v3 = sub_1CFC9D4D8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v92 = &v91 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v93 = &v91 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v99 = &v91 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v108 = &v91 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v106 = &v91 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v109 = &v91 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v91 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE6F8, &qword_1CFCA6060);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v94 = &v91 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v96 = &v91 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v95 = &v91 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v100 = &v91 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v105 = &v91 - v30;
  v98 = v0;
  v31 = *v0;
  swift_getKeyPath();
  v32 = OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel___observationRegistrar;
  *&v116 = v31;
  v33 = sub_1CFC46D78(&qword_1EE04DF70, type metadata accessor for VoicemailDetailContainerViewModel);
  v103 = v32;
  v102 = v33;
  sub_1CFC9C158();

  v104 = v31;
  v101 = OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__availableAudioRoutes;
  v34 = *(v31 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__availableAudioRoutes);
  v35 = *(v34 + 16);

  v110 = v3;
  v112 = v35;
  v113 = v4;
  if (v35)
  {
    v36 = 0;
    v111 = v4 + 16;
    v107 = (v4 + 32);
    v37 = (v4 + 8);
    v38 = MEMORY[0x1E69E7CC0];
    while (v36 < *(v34 + 16))
    {
      v2 = (*(v4 + 80) + 32) & ~*(v4 + 80);
      v1 = *(v4 + 72);
      (*(v4 + 16))(v19, v34 + v2 + v1 * v36, v3);
      if ((sub_1CFC9D488() & 1) != 0 || (sub_1CFC9D478() & 1) == 0)
      {
        (*v37)(v19, v3);
      }

      else
      {
        v39 = *v107;
        (*v107)(v109, v19, v3);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v116 = v38;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1CFBCAA08(0, *(v38 + 16) + 1, 1);
          v38 = v116;
        }

        v42 = *(v38 + 16);
        v41 = *(v38 + 24);
        if (v42 >= v41 >> 1)
        {
          sub_1CFBCAA08(v41 > 1, v42 + 1, 1);
          v38 = v116;
        }

        *(v38 + 16) = v42 + 1;
        v43 = v38 + v2 + v42 * v1;
        v3 = v110;
        v39(v43, v109, v110);
        v4 = v113;
      }

      if (v112 == ++v36)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
    goto LABEL_55;
  }

  v38 = MEMORY[0x1E69E7CC0];
LABEL_14:

  if (*(v38 + 16))
  {
    v44 = v105;
    (*(v4 + 16))(v105, v38 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v3);
    v45 = 0;
  }

  else
  {
    v45 = 1;
    v44 = v105;
  }

  v46 = *(v4 + 56);
  v107 = (v4 + 56);
  v97 = v46;
  v46(v44, v45, 1, v3);
  swift_getKeyPath();
  v47 = v104;
  *&v116 = v104;
  sub_1CFC9C158();

  v48 = *(v47 + v101);
  v49 = *(v48 + 16);

  if (v49)
  {
    v50 = 0;
    v2 = v4 + 16;
    v112 = (v4 + 32);
    v51 = (v4 + 8);
    v52 = MEMORY[0x1E69E7CC0];
    v53 = v106;
    v111 = v49;
    v109 = v2;
    while (v50 < *(v48 + 16))
    {
      v54 = (*(v113 + 80) + 32) & ~*(v113 + 80);
      v1 = *(v113 + 72);
      (*(v113 + 16))(v53, v48 + v54 + v1 * v50, v3);
      if (sub_1CFC9D488() & 1) != 0 || (sub_1CFC9D478())
      {
        (*v51)(v53, v3);
      }

      else
      {
        v55 = v3;
        v56 = *v112;
        (*v112)(v108, v53, v55);
        v57 = swift_isUniquelyReferenced_nonNull_native();
        *&v116 = v52;
        if ((v57 & 1) == 0)
        {
          sub_1CFBCAA08(0, *(v52 + 16) + 1, 1);
          v52 = v116;
        }

        v59 = *(v52 + 16);
        v58 = *(v52 + 24);
        if (v59 >= v58 >> 1)
        {
          sub_1CFBCAA08(v58 > 1, v59 + 1, 1);
          v52 = v116;
        }

        *(v52 + 16) = v59 + 1;
        v60 = v110;
        v56((v52 + v54 + v59 * v1), v108, v110);
        v3 = v60;
        v53 = v106;
        v49 = v111;
        v2 = v109;
      }

      if (v49 == ++v50)
      {
        goto LABEL_30;
      }
    }

LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v52 = MEMORY[0x1E69E7CC0];
LABEL_30:

  if (*(v52 + 16))
  {
    v2 = v100;
    (*(v113 + 16))(v100, v52 + ((*(v113 + 80) + 32) & ~*(v113 + 80)), v3);
    v61 = 0;
    v1 = v105;
  }

  else
  {
    v61 = 1;
    v1 = v105;
    v2 = v100;
  }

  v62 = v99;
  v63 = v98;
  v64 = v97;

  v64(v2, v61, 1, v3);
  v117 = *(v63 + 13);
  v116 = *(v63 + 13);
  v118 = *(&v117 + 1);
  sub_1CFBA29FC(&v118, &v115, &qword_1EC4EF078, &unk_1CFCA61B8);
  sub_1CFBA29FC(&v118, &v115, &qword_1EC4EF078, &unk_1CFCA61B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDEE0, &qword_1CFCA5670);
  sub_1CFC9F238();
  if (v115 == 1)
  {
    sub_1CFBC2FB0(&v117, &qword_1EC4EDEE0, &qword_1CFCA5670);
    goto LABEL_35;
  }

  swift_getKeyPath();
  v73 = v104;
  *&v116 = v104;
  sub_1CFC9C158();

  v74 = OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__currentPickedAudioRoute;
  swift_beginAccess();
  v75 = v95;
  sub_1CFBA29FC(v73 + v74, v95, &qword_1EC4EE6F8, &qword_1CFCA6060);
  v76 = v113;
  v77 = *(v113 + 48);
  if (v77(v75, 1, v3) == 1)
  {
    sub_1CFBC2FB0(&v117, &qword_1EC4EDEE0, &qword_1CFCA5670);
    sub_1CFBC2FB0(v75, &qword_1EC4EE6F8, &qword_1CFCA6060);
LABEL_45:
    v83 = v94;
    sub_1CFBA29FC(v2, v94, &qword_1EC4EE6F8, &qword_1CFCA6060);
    v84 = v110;
    if (v77(v83, 1, v110) != 1)
    {
      v86 = v113;
      v87 = v92;
      (*(v113 + 32))(v92, v83, v84);
      v88 = sub_1CFC9D4A8();
      sub_1CFC26EF4(v88, v89);

      v115 = v117;
      v114 = 1;
      sub_1CFC9F248();
      sub_1CFBC2FB0(&v117, &qword_1EC4EDEE0, &qword_1CFCA5670);
      (*(v86 + 8))(v87, v84);
      goto LABEL_53;
    }

    sub_1CFBC2FB0(&v117, &qword_1EC4EDEE0, &qword_1CFCA5670);
    sub_1CFBC2FB0(v83, &qword_1EC4EE6F8, &qword_1CFCA6060);
    if (qword_1EE050010 != -1)
    {
      swift_once();
    }

    v85 = sub_1CFC9D938();
    __swift_project_value_buffer(v85, qword_1EE052308);
    v69 = sub_1CFC9D918();
    v70 = sub_1CFC9FAD8();
    if (!os_log_type_enabled(v69, v70))
    {
      goto LABEL_51;
    }

    v71 = swift_slowAlloc();
    *v71 = 0;
    v72 = "Voicemail: User tried to switch playback to speaker but no speaker route was found";
    goto LABEL_50;
  }

  (*(v76 + 32))(v62, v75, v3);
  v81 = (v76 + 8);
  if (sub_1CFC9D488())
  {
    sub_1CFBC2FB0(&v117, &qword_1EC4EDEE0, &qword_1CFCA5670);
    (*v81)(v62, v3);
    goto LABEL_45;
  }

  v82 = sub_1CFC9D478();
  (*v81)(v62, v3);
  sub_1CFBC2FB0(&v117, &qword_1EC4EDEE0, &qword_1CFCA5670);
  if (v82)
  {
    goto LABEL_45;
  }

LABEL_35:
  v65 = v96;
  sub_1CFBA29FC(v1, v96, &qword_1EC4EE6F8, &qword_1CFCA6060);
  v66 = v113;
  v67 = v110;
  if ((*(v113 + 48))(v65, 1, v110) == 1)
  {
    sub_1CFBC2FB0(&v117, &qword_1EC4EDEE0, &qword_1CFCA5670);
    sub_1CFBC2FB0(v65, &qword_1EC4EE6F8, &qword_1CFCA6060);
    if (qword_1EE050010 == -1)
    {
LABEL_37:
      v68 = sub_1CFC9D938();
      __swift_project_value_buffer(v68, qword_1EE052308);
      v69 = sub_1CFC9D918();
      v70 = sub_1CFC9FAD8();
      if (!os_log_type_enabled(v69, v70))
      {
LABEL_51:

        goto LABEL_53;
      }

      v71 = swift_slowAlloc();
      *v71 = 0;
      v72 = "Voicemail: User tried to switch playback to receiver but no receiver route was found";
LABEL_50:
      _os_log_impl(&dword_1CFB9F000, v69, v70, v72, v71, 2u);
      MEMORY[0x1D3873280](v71, -1, -1);
      goto LABEL_51;
    }

LABEL_56:
    swift_once();
    goto LABEL_37;
  }

  v78 = v93;
  (*(v66 + 32))(v93, v65, v67);
  v79 = sub_1CFC9D4A8();
  sub_1CFC26EF4(v79, v80);

  v115 = v117;
  v114 = 0;
  sub_1CFC9F248();
  sub_1CFBC2FB0(&v117, &qword_1EC4EDEE0, &qword_1CFCA5670);
  (*(v66 + 8))(v78, v67);
LABEL_53:
  sub_1CFBC2FB0(v2, &qword_1EC4EE6F8, &qword_1CFCA6060);
  return sub_1CFBC2FB0(v1, &qword_1EC4EE6F8, &qword_1CFCA6060);
}

double sub_1CFC43884@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE6F8, &qword_1CFCA6060);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v38 - v5;
  v7 = sub_1CFC9D4D8();
  v38 = *(v7 - 8);
  v8 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF160, &unk_1CFCA6408);
  v12 = v11 - 8;
  v13 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = (&v38 - v14);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF158, &qword_1CFCA6400);
  v16 = *(*(v39 - 8) + 64);
  MEMORY[0x1EEE9AC00](v39);
  v18 = &v38 - v17;
  v20 = a1[15];
  v19 = a1[16];

  v21 = sub_1CFC9F1A8();
  v22 = (v15 + *(v12 + 44));
  v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF138, &qword_1CFCA63B0) + 28);
  v24 = *MEMORY[0x1E69816C0];
  v25 = sub_1CFC9F1D8();
  (*(*(v25 - 8) + 104))(v22 + v23, v24, v25);
  *v22 = swift_getKeyPath();
  *v15 = v21;
  v42 = *(a1 + 13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDEE0, &qword_1CFCA5670);
  sub_1CFC9F238();
  if (v41)
  {
    goto LABEL_2;
  }

  v27 = *a1;
  swift_getKeyPath();
  *&v42 = v27;
  sub_1CFC46D78(&qword_1EE04DF70, type metadata accessor for VoicemailDetailContainerViewModel);
  sub_1CFC9C158();

  v28 = OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__currentPickedAudioRoute;
  swift_beginAccess();
  sub_1CFBA29FC(v27 + v28, v6, &qword_1EC4EE6F8, &qword_1CFCA6060);
  v29 = v38;
  if ((*(v38 + 48))(v6, 1, v7) == 1)
  {
    sub_1CFBC2FB0(v6, &qword_1EC4EE6F8, &qword_1CFCA6060);
LABEL_8:
    v26 = sub_1CFC9F178();
    goto LABEL_9;
  }

  (*(v29 + 32))(v10, v6, v7);
  if (sub_1CFC9D488())
  {
    (*(v29 + 8))(v10, v7);
    goto LABEL_8;
  }

  v30 = sub_1CFC9D478();
  (*(v29 + 8))(v10, v7);
  if (v30)
  {
    goto LABEL_8;
  }

LABEL_2:
  v26 = sub_1CFC9F0D8();
LABEL_9:
  v31 = v26;
  KeyPath = swift_getKeyPath();
  sub_1CFBCCE88(v15, v18, &qword_1EC4EF160, &unk_1CFCA6408);
  v33 = &v18[*(v39 + 36)];
  *v33 = KeyPath;
  v33[1] = v31;
  sub_1CFC9F538();
  sub_1CFC9DF68();
  v34 = v40;
  sub_1CFBCCE88(v18, v40, &qword_1EC4EF158, &qword_1CFCA6400);
  v35 = (v34 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF150, &qword_1CFCA63F8) + 36));
  v36 = v43;
  *v35 = v42;
  v35[1] = v36;
  result = *&v44;
  v35[2] = v44;
  return result;
}

uint64_t sub_1CFC43D1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v3 = sub_1CFC9E528();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF218, &qword_1CFCA64B0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v24 - v11;
  type metadata accessor for BundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v14 = [objc_opt_self() bundleForClass_];
  v15 = sub_1CFC9BE28();
  v17 = v16;

  v31 = v15;
  v32 = v17;
  v18 = *(a1 + 136);
  v19 = *(a1 + 144);
  v30 = *(a1 + 152);
  v34 = v18;
  v33 = v30;
  v28 = v18;
  v29 = v19;
  v26 = a1;
  sub_1CFC46B04(&v34, v27);

  sub_1CFBA44C0(&v33, v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF238, &qword_1CFCA64F0);
  sub_1CFC46B60();
  sub_1CFBB4460();
  sub_1CFC9F328();
  sub_1CFC9E518();
  sub_1CFBA57C0(&qword_1EC4EF220, &qword_1EC4EF218, &qword_1CFCA64B0);
  v20 = v25;
  sub_1CFC9EEE8();
  (*(v4 + 8))(v7, v3);
  (*(v9 + 8))(v12, v8);
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF1E0, &qword_1CFCA6498);
  v23 = v20 + *(result + 36);
  *v23 = KeyPath;
  *(v23 + 8) = 2;
  return result;
}

uint64_t sub_1CFC44064(uint64_t a1)
{
  v2 = *a1;
  swift_getKeyPath();
  v10[0] = v2;
  sub_1CFC46D78(&qword_1EE04DF70, type metadata accessor for VoicemailDetailContainerViewModel);
  sub_1CFC9C158();

  v10[21] = *(v2 + OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__availableAudioRoutes);
  swift_getKeyPath();
  v3 = swift_allocObject();
  v4 = *(a1 + 144);
  *(v3 + 144) = *(a1 + 128);
  *(v3 + 160) = v4;
  *(v3 + 176) = *(a1 + 160);
  v5 = *(a1 + 80);
  *(v3 + 80) = *(a1 + 64);
  *(v3 + 96) = v5;
  v6 = *(a1 + 112);
  *(v3 + 112) = *(a1 + 96);
  *(v3 + 128) = v6;
  v7 = *(a1 + 16);
  *(v3 + 16) = *a1;
  *(v3 + 32) = v7;
  v8 = *(a1 + 48);
  *(v3 + 48) = *(a1 + 32);
  *(v3 + 64) = v8;

  sub_1CFC45FA8(a1, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF258, &qword_1CFCA6590);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF250, &unk_1CFCA64F8);
  sub_1CFBA57C0(&qword_1EC4EF260, &qword_1EC4EF258, &qword_1CFCA6590);
  sub_1CFC46BE4();
  return sub_1CFC9F3B8();
}

uint64_t sub_1CFC4423C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF268, &qword_1CFCA6598);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v23 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4ED840, &qword_1CFCA29B0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v23 - v11;
  v13 = sub_1CFC9D498();
  if (!v14)
  {
    goto LABEL_7;
  }

  v15 = HIBYTE(v14) & 0xF;
  if ((v14 & 0x2000000000000000) == 0)
  {
    v15 = v13 & 0xFFFFFFFFFFFFLL;
  }

  if (!v15)
  {

LABEL_7:
    v23[0] = sub_1CFC9D4B8();
    v23[1] = v19;
    v20 = *(a2 + 120);
    v21 = *(a2 + 128);
    sub_1CFBB4460();

    sub_1CFC9F218();
    goto LABEL_8;
  }

  MEMORY[0x1EEE9AC00](v13);
  v23[-2] = a1;
  MEMORY[0x1EEE9AC00](v16);
  v23[-2] = v17;
  v23[-1] = v18;
  sub_1CFC9F208();

LABEL_8:
  (*(v9 + 16))(v7, v12, v8);
  swift_storeEnumTagMultiPayload();
  sub_1CFBA57C0(&qword_1EE04D200, &qword_1EC4ED840, &qword_1CFCA29B0);
  sub_1CFC9E798();
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_1CFC44510@<X0>(uint64_t a1@<X8>)
{
  sub_1CFC9D4B8();
  sub_1CFBB4460();
  result = sub_1CFC9EDF8();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_1CFC4456C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EE6F8, &qword_1CFCA6060);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v61 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v58 - v7;
  v9 = sub_1CFC9D4D8();
  v63 = *(v9 - 8);
  v64 = v9;
  v10 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v58 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF208, &qword_1CFCA64A8);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = (&v58 - v15);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF1F8, &qword_1CFCA64A0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v58 - v19;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF1D8, &qword_1CFCA6490);
  v21 = *(*(v60 - 8) + 64);
  MEMORY[0x1EEE9AC00](v60);
  v59 = &v58 - v22;
  sub_1CFC44C94();
  v23 = sub_1CFC9F1C8();
  v24 = (v16 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF160, &unk_1CFCA6408) + 36));
  v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EF138, &qword_1CFCA63B0) + 28);
  v26 = *MEMORY[0x1E69816E0];
  v27 = sub_1CFC9F1D8();
  (*(*(v27 - 8) + 104))(v24 + v25, v26, v27);
  *v24 = swift_getKeyPath();
  *v16 = v23;
  v28 = sub_1CFC9ECA8();
  KeyPath = swift_getKeyPath();
  v30 = (v16 + *(v13 + 44));
  *v30 = KeyPath;
  v30[1] = v28;
  v69 = *(a1 + 13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EDEE0, &qword_1CFCA5670);
  sub_1CFC9F238();
  if (v67)
  {
    goto LABEL_2;
  }

  v32 = *a1;
  swift_getKeyPath();
  *&v69 = v32;
  sub_1CFC46D78(&qword_1EE04DF70, type metadata accessor for VoicemailDetailContainerViewModel);
  sub_1CFC9C158();

  v33 = OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__currentPickedAudioRoute;
  swift_beginAccess();
  sub_1CFBA29FC(v32 + v33, v8, &qword_1EC4EE6F8, &qword_1CFCA6060);
  v35 = v63;
  v34 = v64;
  if ((*(v63 + 48))(v8, 1, v64) == 1)
  {
    sub_1CFBC2FB0(v8, &qword_1EC4EE6F8, &qword_1CFCA6060);
  }

  else
  {
    v36 = v58;
    (*(v35 + 32))();
    if (sub_1CFC9D488())
    {
      (*(v35 + 8))(v36, v34);
    }

    else
    {
      v37 = sub_1CFC9D478();
      (*(v35 + 8))(v36, v34);
      if ((v37 & 1) == 0)
      {
LABEL_2:
        v31 = sub_1CFC9F0D8();
        goto LABEL_9;
      }
    }
  }

  v31 = sub_1CFC9F178();
LABEL_9:
  v38 = v31;
  v39 = swift_getKeyPath();
  sub_1CFBCCE88(v16, v20, &qword_1EC4EF208, &qword_1CFCA64A8);
  v40 = &v20[*(v17 + 36)];
  *v40 = v39;
  v40[1] = v38;
  type metadata accessor for BundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v42 = [objc_opt_self() bundleForClass_];
  v43 = sub_1CFC9BE28();
  v45 = v44;

  v67 = v43;
  v68 = v45;
  sub_1CFC46844();
  sub_1CFBB4460();
  v46 = v59;
  sub_1CFC9EF68();

  sub_1CFBC2FB0(v20, &qword_1EC4EF1F8, &qword_1CFCA64A0);
  v47 = *a1;
  swift_getKeyPath();
  v67 = v47;
  sub_1CFC46D78(&qword_1EE04DF70, type metadata accessor for VoicemailDetailContainerViewModel);
  sub_1CFC9C158();

  v48 = OBJC_IVAR____TtC10CallsAppUI33VoicemailDetailContainerViewModel__currentPickedAudioRoute;
  swift_beginAccess();
  v49 = v47 + v48;
  v50 = v61;
  sub_1CFBA29FC(v49, v61, &qword_1EC4EE6F8, &qword_1CFCA6060);
  v51 = v63;
  v52 = v64;
  if ((*(v63 + 48))(v50, 1, v64) == 1)
  {
    sub_1CFBC2FB0(v50, &qword_1EC4EE6F8, &qword_1CFCA6060);
    v53 = 0;
    v54 = 0xE000000000000000;
  }

  else
  {
    v53 = sub_1CFC9D4B8();
    v55 = v51;
    v54 = v56;
    (*(v55 + 8))(v50, v52);
  }

  v65 = v53;
  v66 = v54;
  sub_1CFC9E1A8();

  return sub_1CFBC2FB0(v46, &qword_1EC4EF1D8, &qword_1CFCA6490);
}