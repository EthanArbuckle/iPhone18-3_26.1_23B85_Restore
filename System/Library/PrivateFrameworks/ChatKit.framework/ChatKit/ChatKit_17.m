unint64_t sub_190939114()
{
  result = qword_1EAD574E0;
  if (!qword_1EAD574E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD574E0);
  }

  return result;
}

unint64_t sub_19093916C()
{
  result = qword_1EAD574E8;
  if (!qword_1EAD574E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD574E8);
  }

  return result;
}

unint64_t sub_1909391C4()
{
  result = qword_1EAD574F0;
  if (!qword_1EAD574F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD574F0);
  }

  return result;
}

unint64_t sub_19093929C()
{
  result = qword_1EAD574F8;
  if (!qword_1EAD574F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD574F8);
  }

  return result;
}

uint64_t sub_1909392F0()
{
  v0 = sub_190D51460();
  __swift_allocate_value_buffer(v0, qword_1EAD9DB10);
  __swift_project_value_buffer(v0, qword_1EAD9DB10);
  return sub_190D51430();
}

uint64_t sub_190939354(uint64_t a1)
{
  v1[3] = a1;
  v2 = sub_190D52130();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_190939414, 0, 0);
}

uint64_t sub_190939414()
{
  sub_190D572A0();
  *(v0 + 56) = sub_190D57290();
  v2 = sub_190D57240();

  return MEMORY[0x1EEE6DFA0](sub_1909394A8, v2, v1);
}

uint64_t sub_1909394A8()
{

  v1 = [objc_opt_self() sharedList];
  v2 = [v1 mutedChatList];

  sub_19021DC70();
  *(v0 + 64) = sub_190D56D90();

  return MEMORY[0x1EEE6DFA0](sub_19093957C, 0, 0);
}

void sub_19093957C()
{
  v1 = 0;
  v2 = *(v0 + 64);
  v5 = *(v2 + 64);
  v4 = v2 + 64;
  v3 = v5;
  v6 = -1;
  v7 = -1 << *(*(v0 + 64) + 32);
  if (-v7 < 64)
  {
    v6 = ~(-1 << -v7);
  }

  v8 = v6 & v3;
  v9 = (63 - v7) >> 6;
  v18 = *(v0 + 40);
  v10 = MEMORY[0x1E69E7CC0];
  if ((v6 & v3) != 0)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v11 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      __break(1u);
      return;
    }

    if (v11 >= v9)
    {
      break;
    }

    v8 = *(v4 + 8 * v11);
    ++v1;
    if (v8)
    {
      v1 = v11;
      do
      {
LABEL_8:
        v12 = *(*(v19 + 56) + 8 * (__clz(__rbit64(v8)) | (v1 << 6)));
        sub_190D52690();
        sub_190D52120();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_190836510(0, v10[2] + 1, 1, v10);
        }

        v14 = v10[2];
        v13 = v10[3];
        if (v14 >= v13 >> 1)
        {
          v10 = sub_190836510(v13 > 1, v14 + 1, 1, v10);
        }

        v8 &= v8 - 1;
        v15 = v20[6];
        v16 = v20[4];

        v10[2] = v14 + 1;
        (*(v18 + 32))(v10 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v14, v15, v16);
      }

      while (v8);
    }
  }

  v20[2] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57510);
  sub_1909399C8();
  sub_190D506A0();

  v17 = v20[1];

  v17();
}

uint64_t sub_1909397D8@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EAD51A28 != -1)
  {
    swift_once();
  }

  v2 = sub_190D51460();
  v3 = __swift_project_value_buffer(v2, qword_1EAD9DB10);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_190939880(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_190221DA4;

  return sub_190939354(a1);
}

uint64_t sub_190939918(uint64_t a1)
{
  v2 = sub_19093929C();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

unint64_t sub_190939964()
{
  result = qword_1EAD57500;
  if (!qword_1EAD57500)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD57508);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD57500);
  }

  return result;
}

unint64_t sub_1909399C8()
{
  result = qword_1EAD57518;
  if (!qword_1EAD57518)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD57510);
    sub_190939A4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD57518);
  }

  return result;
}

unint64_t sub_190939A4C()
{
  result = qword_1EAD57520;
  if (!qword_1EAD57520)
  {
    sub_190D52130();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD57520);
  }

  return result;
}

void __swiftcall CKConversationListCollectionViewController.reportConcern(for:)(UIAction *__return_ptr retstr, IMChat *a2)
{
  v3 = CKFrameworkBundle();
  if (v3)
  {
    v4 = v3;
    sub_1908D84D0();
    v5 = sub_190D56ED0();
    v6 = sub_190D56ED0();
    v7 = [v4 localizedStringForKey:v5 value:0 table:v6];

    sub_190D56F10();
    v8 = sub_190D56ED0();
    v9 = [objc_opt_self() systemImageNamed_];

    v10 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v11 = swift_allocObject();
    *(v11 + 16) = v10;
    *(v11 + 24) = a2;
    v12 = a2;
    sub_190D57DC0();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_190939C70(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5BAF0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v14 - v6;
  v8 = sub_190D572E0();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  sub_190D572A0();
  sub_190D50920();
  v9 = a3;
  v10 = sub_190D57290();
  v11 = swift_allocObject();
  v12 = MEMORY[0x1E69E85E0];
  v11[2] = v10;
  v11[3] = v12;
  v11[4] = a2;
  v11[5] = v9;
  sub_190858700(0, 0, v7, &unk_190DE0048, v11);
}

uint64_t sub_190939DB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  sub_190D572A0();
  v5[8] = sub_190D57290();
  v7 = sub_190D57240();
  v5[9] = v7;
  v5[10] = v6;

  return MEMORY[0x1EEE6DFA0](sub_190939E50, v7, v6);
}

uint64_t sub_190939E50()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 88) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 96) = v2;
    *v2 = v0;
    v2[1] = sub_190939F5C;
    v3 = *(v0 + 56);

    return sub_19093A464(v3, 1);
  }

  else
  {

    **(v0 + 40) = *(v0 + 88) == 0;
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_190939F5C()
{
  v1 = *v0;
  v2 = *(*v0 + 88);

  v3 = *(v1 + 80);
  v4 = *(v1 + 72);

  return MEMORY[0x1EEE6DFA0](sub_19093A09C, v4, v3);
}

uint64_t sub_19093A09C()
{

  **(v0 + 40) = *(v0 + 88) == 0;
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_19093A170(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_190221DA4;

  return sub_190939DB4(a1, v4, v5, v7, v6);
}

uint64_t sub_19093A230(uint64_t a1, unint64_t a2, void *a3)
{
  v6 = sub_190D56ED0();
  v7 = [a3 messageForGUID_];

  if (v7 && (v8 = [v7 plainBody], v7, v8))
  {
    v9 = sub_190D56F10();

    return v9;
  }

  else
  {
    if (qword_1EAD51A30 != -1)
    {
      swift_once();
    }

    v11 = sub_190D53040();
    __swift_project_value_buffer(v11, qword_1EAD9DB28);
    sub_190D52690();
    v12 = sub_190D53020();
    v13 = sub_190D576A0();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v16 = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_19021D9F8(a1, a2, &v16);
      _os_log_impl(&dword_19020E000, v12, v13, "Message body is nil for %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x193AF7A40](v15, -1, -1);
      MEMORY[0x193AF7A40](v14, -1, -1);
    }

    return 0;
  }
}

uint64_t sub_19093A3F8()
{
  v0 = sub_190D53040();
  __swift_allocate_value_buffer(v0, qword_1EAD9DB28);
  __swift_project_value_buffer(v0, qword_1EAD9DB28);
  sub_190D53010();
  return sub_190D53030();
}

uint64_t sub_19093A464(uint64_t a1, char a2)
{
  *(v2 + 168) = a2;
  *(v2 + 16) = a1;
  v3 = sub_190D52ED0();
  *(v2 + 24) = v3;
  *(v2 + 32) = *(v3 - 8);
  *(v2 + 40) = swift_task_alloc();
  v4 = sub_190D52EE0();
  *(v2 + 48) = v4;
  *(v2 + 56) = *(v4 - 8);
  *(v2 + 64) = swift_task_alloc();
  v5 = sub_190D52F10();
  *(v2 + 72) = v5;
  *(v2 + 80) = *(v5 - 8);
  *(v2 + 88) = swift_task_alloc();
  v6 = sub_190D52F00();
  *(v2 + 96) = v6;
  *(v2 + 104) = *(v6 - 8);
  *(v2 + 112) = swift_task_alloc();
  *(v2 + 120) = swift_task_alloc();
  sub_190D572A0();
  *(v2 + 128) = sub_190D57290();
  v8 = sub_190D57240();
  *(v2 + 136) = v8;
  *(v2 + 144) = v7;

  return MEMORY[0x1EEE6DFA0](sub_19093A67C, v8, v7);
}

uint64_t sub_19093A67C()
{
  v42 = v0;
  v1 = [*(v0 + 16) chatSummaryMessageGUID];
  if (v1)
  {
    v2 = *(v0 + 104);
    v3 = *(v0 + 168);
    v4 = v1;
    v5 = sub_190D56F10();
    v7 = v6;

    v8 = *(v2 + 104);
    v9 = *(v0 + 120);
    v10 = *(v0 + 96);
    v38 = v7;
    v39 = v5;
    if (v3)
    {
      v8(v9, *MEMORY[0x1E69C5C60], v10);
      if (qword_1EAD51A30 != -1)
      {
        swift_once();
      }

      v11 = sub_190D53040();
      __swift_project_value_buffer(v11, qword_1EAD9DB28);
      sub_190D52690();
      v12 = sub_190D53020();
      v13 = sub_190D57680();

      if (!os_log_type_enabled(v12, v13))
      {
        goto LABEL_19;
      }

      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v41 = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_19021D9F8(v5, v7, &v41);
      v16 = "Handling thumbs down for GUID %s";
    }

    else
    {
      v8(v9, *MEMORY[0x1E69C5C68], v10);
      if (qword_1EAD51A30 != -1)
      {
        swift_once();
      }

      v23 = sub_190D53040();
      __swift_project_value_buffer(v23, qword_1EAD9DB28);
      sub_190D52690();
      v12 = sub_190D53020();
      v13 = sub_190D57680();

      if (!os_log_type_enabled(v12, v13))
      {
        goto LABEL_19;
      }

      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v41 = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_19021D9F8(v5, v7, &v41);
      v16 = "Handling thumbs up for GUID %s";
    }

    _os_log_impl(&dword_19020E000, v12, v13, v16, v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x193AF7A40](v15, -1, -1);
    MEMORY[0x193AF7A40](v14, -1, -1);
LABEL_19:

    v24 = *(v0 + 112);
    v25 = *(v0 + 104);
    v35 = *(v0 + 96);
    v36 = *(v0 + 120);
    v26 = *(v0 + 56);
    v27 = *(v0 + 64);
    v29 = *(v0 + 40);
    v28 = *(v0 + 48);
    v30 = *(v0 + 32);
    v37 = *(v0 + 24);
    v31 = *(v0 + 16);
    sub_190D52F30();
    *(v0 + 152) = sub_190D52F20();
    (*(v26 + 104))(v27, *MEMORY[0x1E69C5C58], v28);
    (*(v25 + 16))(v24, v36, v35);
    *v29 = v39;
    v29[1] = v38;
    (*(v30 + 104))(v29, *MEMORY[0x1E69C5C50], v37);
    *(swift_allocObject() + 16) = v31;
    v32 = v31;
    sub_190D52EF0();
    v40 = (*MEMORY[0x1E69C5C70] + MEMORY[0x1E69C5C70]);
    v33 = swift_task_alloc();
    *(v0 + 160) = v33;
    *v33 = v0;
    v33[1] = sub_19093ABC0;
    v34 = *(v0 + 88);

    return v40(v34);
  }

  if (qword_1EAD51A30 != -1)
  {
    swift_once();
  }

  v17 = sub_190D53040();
  __swift_project_value_buffer(v17, qword_1EAD9DB28);
  v18 = sub_190D53020();
  v19 = sub_190D576A0();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_19020E000, v18, v19, "We didn't find any message that contains the summary. Unable to provide feedback.", v20, 2u);
    MEMORY[0x193AF7A40](v20, -1, -1);
  }

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_19093ABC0()
{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 80);
  v4 = *(*v0 + 72);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 144);
  v6 = *(v1 + 136);

  return MEMORY[0x1EEE6DFA0](sub_19093AD60, v6, v5);
}

uint64_t sub_19093AD60()
{
  v1 = v0[15];
  v2 = v0[12];
  v3 = v0[13];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_19093AE20()
{
  swift_getKeyPath();
  sub_19093B898();
  sub_190D51C20();

  return *(v0 + 24);
}

uint64_t sub_19093AE94(uint64_t result, uint64_t a2, char a3)
{
  *(result + 24) = a2;
  *(result + 32) = a3 & 1;
  return result;
}

uint64_t sub_19093AEA4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_190221DA4;

  return sub_19093B314();
}

id sub_19093AF34()
{
  v1 = v0;
  swift_getKeyPath();
  sub_19093B898();
  sub_190D51C20();

  v2 = *(v0 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53040);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_190DD1D90;
  v4 = [*(v1 + 16) chat];
  if (v2)
  {
    if (v4 && (v5 = v4, v6 = [v4 countOfAttachmentsNotCachedLocally], v5, v6))
    {
      v7 = [v6 integerValue];
    }

    else
    {
      v7 = 0;
    }

    v11 = MEMORY[0x1E69E65A8];
    *(v3 + 56) = MEMORY[0x1E69E6530];
    *(v3 + 64) = v11;
    *(v3 + 32) = v7;
    result = CKFrameworkBundle();
    if (result)
    {
      v13 = result;
LABEL_14:
      v15 = sub_190D56ED0();
      v16 = sub_190D56ED0();
      v17 = [v13 localizedStringForKey:v15 value:0 table:v16];

      sub_190D56F10();
      v18 = sub_190D56EE0();

      return v18;
    }

    __break(1u);
  }

  else
  {
    if (v4 && (v8 = v4, v9 = [v4 countOfAttachmentsNotCachedLocally], v8, v9))
    {
      v10 = [v9 integerValue];
    }

    else
    {
      v10 = 0;
    }

    v14 = MEMORY[0x1E69E65A8];
    *(v3 + 56) = MEMORY[0x1E69E6530];
    *(v3 + 64) = v14;
    *(v3 + 32) = v10;
    result = CKFrameworkBundle();
    if (result)
    {
      v13 = result;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

void sub_19093B1B8()
{
  v1 = *(v0 + 16);
  v2 = [v1 chat];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 countOfAttachmentsNotCachedLocally];

    if (v4)
    {
      [v4 integerValue];
    }
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  sub_19093B898();
  sub_190D51C10();

  v6 = [v1 chat];
  [v6 downloadPurgedAttachments];
}

uint64_t sub_19093B334()
{
  v0[4] = *(v0[3] + 16);
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_19093B3CC;

  return sub_190B1EAA8();
}

uint64_t sub_19093B3CC(char a1)
{
  *(*v1 + 48) = a1;

  return MEMORY[0x1EEE6DFA0](sub_19093B4CC, 0, 0);
}

uint64_t sub_19093B4CC()
{
  if (*(v0 + 48) == 1 && (v1 = [*(v0 + 32) chat]) != 0 && (v2 = v1, v3 = objc_msgSend(v1, sel_countOfAttachmentsNotCachedLocally), v2, v3))
  {
    v4 = [v3 integerValue];
  }

  else
  {
    v4 = 0;
  }

  v5 = *(v0 + 48);
  v6 = *(v0 + 24);
  swift_getKeyPath();
  v7 = swift_task_alloc();
  *(v7 + 16) = v6;
  *(v7 + 24) = v4;
  *(v7 + 32) = (v5 & 1) == 0;
  *(v0 + 16) = v6;
  sub_19093B898();
  sub_190D51C10();

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_19093B634()
{
  v1 = OBJC_IVAR____TtCVV7ChatKit18DetailsInfoTabView29DownloadPurgedAttachmentsView9ViewModel___observationRegistrar;
  v2 = sub_190D51C60();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t _s14descr1F03EBF51O9ViewModelCMa()
{
  result = qword_1EAD57530;
  if (!qword_1EAD57530)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_19093B72C()
{
  result = sub_190D51C60();
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

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t _s14descr1F03EBF51O9ViewModelC13DownloadStateOwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s14descr1F03EBF51O9ViewModelC13DownloadStateOwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_19093B838(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_19093B854(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

void sub_19093B884()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  *(v1 + 24) = *(v0 + 24);
  *(v1 + 32) = v2;
}

unint64_t sub_19093B898()
{
  result = qword_1EAD57540;
  if (!qword_1EAD57540)
  {
    _s14descr1F03EBF51O9ViewModelCMa();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD57540);
  }

  return result;
}

id sub_19093B908()
{
  v0 = sub_190D56ED0();
  v1 = [objc_opt_self() _systemImageNamed_];

  v2 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithImage_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_190DD55F0;
  *(v3 + 32) = [objc_opt_self() whiteColor];
  sub_1902495E8();
  v4 = sub_190D57160();

  v5 = [objc_opt_self() configurationWithPaletteColors_];

  [v2 setPreferredSymbolConfiguration_];
  [v2 setContentMode_];

  return v2;
}

char *sub_19093BA6C(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC7ChatKit22CKDownloadProgressView_circularProgressView;
  type metadata accessor for CircularProgressView();
  *&v4[v9] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v10 = OBJC_IVAR____TtC7ChatKit22CKDownloadProgressView_stopImageView;
  *&v4[v10] = sub_19093B908();
  v15.receiver = v4;
  v15.super_class = type metadata accessor for CKDownloadProgressView();
  v11 = objc_msgSendSuper2(&v15, sel_initWithFrame_, a1, a2, a3, a4);
  v12 = *&v11[OBJC_IVAR____TtC7ChatKit22CKDownloadProgressView_circularProgressView];
  v13 = v11;
  [v13 addSubview_];
  [v13 addSubview_];

  return v13;
}

id sub_19093BD80(uint64_t *a1, SEL *a2, double a3)
{
  v4 = *a1;
  v5 = *(v3 + *a1);
  if (v5)
  {
    v6 = *(v3 + *a1);
  }

  else
  {
    v7 = sub_19093C304(a2, a3);
    v8 = *(v3 + v4);
    *(v3 + v4) = v7;
    v6 = v7;

    v5 = 0;
  }

  v9 = v5;
  return v6;
}

id sub_19093BDE0(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC7ChatKit20CircularProgressView_lineWidth] = 0x4008000000000000;
  *&v4[OBJC_IVAR____TtC7ChatKit20CircularProgressView_progressValue] = 0;
  *&v4[OBJC_IVAR____TtC7ChatKit20CircularProgressView____lazy_storage___backgroundLayer] = 0;
  *&v4[OBJC_IVAR____TtC7ChatKit20CircularProgressView____lazy_storage___progressLayer] = 0;
  v15.receiver = v4;
  v15.super_class = type metadata accessor for CircularProgressView();
  v9 = objc_msgSendSuper2(&v15, sel_initWithFrame_, a1, a2, a3, a4);
  v10 = [v9 layer];
  v11 = sub_19093BD50();
  [v10 addSublayer_];

  v12 = [v9 layer];
  v13 = sub_19093BD68();
  [v12 addSublayer_];

  return v9;
}

void sub_19093BFDC()
{
  v21.receiver = v0;
  v21.super_class = type metadata accessor for CircularProgressView();
  objc_msgSendSuper2(&v21, sel_layoutSubviews);
  v1 = sub_19093BD50();
  [v0 bounds];
  x = v22.origin.x;
  y = v22.origin.y;
  width = v22.size.width;
  height = v22.size.height;
  MidX = CGRectGetMidX(v22);
  v23.origin.x = x;
  v23.origin.y = y;
  v23.size.width = width;
  v23.size.height = height;
  MidY = CGRectGetMidY(v23);
  [v0 bounds];
  v8 = CGRectGetWidth(v24) * 0.5 + -1.5;
  v9 = objc_opt_self();
  v10 = [v9 bezierPathWithArcCenter:1 radius:MidX startAngle:MidY endAngle:v8 clockwise:{-1.57079633, 4.71238898}];
  v11 = [v10 CGPath];

  [v1 setPath_];
  v12 = sub_19093BD68();
  [v0 bounds];
  v13 = v25.origin.x;
  v14 = v25.origin.y;
  v15 = v25.size.width;
  v16 = v25.size.height;
  v17 = CGRectGetMidX(v25);
  v26.origin.x = v13;
  v26.origin.y = v14;
  v26.size.width = v15;
  v26.size.height = v16;
  v18 = CGRectGetMidY(v26);
  [v0 bounds];
  v19 = [v9 bezierPathWithArcCenter:1 radius:v17 startAngle:v18 endAngle:CGRectGetWidth(v27) * 0.5 + -1.5 clockwise:{-1.57079633, 4.71238898}];
  v20 = [v19 CGPath];

  [v12 setPath_];
}

id sub_19093C25C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_19093C304(SEL *a1, double a2)
{
  v4 = [objc_allocWithZone(MEMORY[0x1E69794A0]) init];
  [v4 setLineWidth_];
  [v4 setLineCap_];
  [v4 setStrokeStart_];
  [v4 setStrokeEnd_];
  [v4 setFillColor_];
  v5 = [objc_opt_self() *a1];
  v6 = [v5 CGColor];

  [v4 setStrokeColor_];
  return v4;
}

id CKPhotoStackBalloonView.currentAssetChatItem.getter()
{
  v1 = [v0 currentAssetReference];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 asset];

    if (v3)
    {
      objc_opt_self();
      v4 = swift_dynamicCastObjCClass();
      if (v4)
      {
        v5 = [v4 chatItem];
        swift_unknownObjectRelease();
        return v5;
      }

      swift_unknownObjectRelease();
    }
  }

  if (qword_1EAD51CD0 != -1)
  {
    swift_once();
  }

  v7 = sub_190D53040();
  __swift_project_value_buffer(v7, qword_1EAD9E0A0);
  v8 = sub_190D53020();
  v9 = sub_190D576A0();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_19020E000, v8, v9, "Unexpected: currentAssetReference.asset not recognized as CKMediaObjectBackedAsset", v10, 2u);
    MEMORY[0x193AF7A40](v10, -1, -1);
  }

  return 0;
}

id CKPhotoStackBalloonView.currentAssetRegionOfInterest.getter()
{
  v1 = [v0 currentAssetReference];
  if (v1)
  {
    v2 = v1;
    v3 = [v0 stackView];
    v4 = [v3 regionOfInterestForAssetReference_];
  }

  else
  {
    if (qword_1EAD51CD0 != -1)
    {
      swift_once();
    }

    v5 = sub_190D53040();
    __swift_project_value_buffer(v5, qword_1EAD9E0A0);
    v6 = sub_190D53020();
    v7 = sub_190D576A0();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_19020E000, v6, v7, "Unexpected: currentAssetReference is nil. Cannot generate region of interest", v8, 2u);
      MEMORY[0x193AF7A40](v8, -1, -1);
    }

    return 0;
  }

  return v4;
}

id CKPhotoStackBalloonView.currentAssetSnapshot.getter()
{
  v1 = [v0 currentAssetRegionOfInterest];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 placeholderViewFactory];
    if (v3)
    {
      v4 = v3;
      v5 = (*(v3 + 2))(v3, v2);
      _Block_release(v4);
      v6 = v5;
      swift_unknownObjectRelease();

      return v6;
    }

    if (qword_1EAD51CD0 != -1)
    {
      swift_once();
    }

    v11 = sub_190D53040();
    __swift_project_value_buffer(v11, qword_1EAD9E0A0);
    v12 = sub_190D53020();
    v13 = sub_190D576A0();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_19020E000, v12, v13, "Unexpected: placeholderViewFactory undefined", v14, 2u);
      MEMORY[0x193AF7A40](v14, -1, -1);
    }
  }

  else
  {
    if (qword_1EAD51CD0 != -1)
    {
      swift_once();
    }

    v8 = sub_190D53040();
    __swift_project_value_buffer(v8, qword_1EAD9E0A0);
    v2 = sub_190D53020();
    v9 = sub_190D576A0();
    if (os_log_type_enabled(v2, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_19020E000, v2, v9, "Unexpected: currentAssetRegionOfInterest is nil. Cannot generate snapshot", v10, 2u);
      MEMORY[0x193AF7A40](v10, -1, -1);
    }
  }

  return 0;
}

BOOL CKPhotoStackBalloonView.canPresentTapbackPicker.getter()
{
  v1 = [v0 currentAssetReference];
  v2 = v1;
  if (v1)
  {
  }

  return v2 != 0;
}

id CKTranscriptBackgroundEnvironment.__allocating_init(transcriptLayoutDelegate:)()
{
  v1 = objc_allocWithZone(v0);
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v4.receiver = v1;
  v4.super_class = v0;
  v2 = objc_msgSendSuper2(&v4, sel_init);
  swift_unknownObjectRelease();
  return v2;
}

id CKTranscriptBackgroundEnvironment.init(transcriptLayoutDelegate:)()
{
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v3.receiver = v0;
  v3.super_class = type metadata accessor for CKTranscriptBackgroundEnvironment();
  v1 = objc_msgSendSuper2(&v3, sel_init);
  swift_unknownObjectRelease();
  return v1;
}

uint64_t sub_19093CCF4()
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_19093CD54(uint64_t *a1))(void **a1, char a2)
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
  v5 = OBJC_IVAR____TtC7ChatKit33CKTranscriptBackgroundEnvironment_transcriptLayoutDelegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_190863E2C;
}

id CKTranscriptBackgroundEnvironment.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CKTranscriptBackgroundEnvironment.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CKTranscriptBackgroundEnvironment();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_19093CF8C(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC7ChatKit25LegacyStoragePluginCounts_nonPurgableFileTypeToSizeMap;
  swift_beginAccess();
  v6 = *(v2 + v5);
  if (!*(v6 + 16))
  {
    return 0;
  }

  sub_190D52690();
  v7 = sub_19022DCEC(a1, a2);
  if (v8)
  {
    v9 = *(*(v6 + 56) + 8 * v7);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t sub_19093D024(char a1, uint64_t a2)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = v2;
  *(v3 + 88) = a1;
  v4 = sub_190D53040();
  *(v3 + 32) = v4;
  *(v3 + 40) = *(v4 - 8);
  *(v3 + 48) = swift_task_alloc();
  v5 = sub_190D521F0();
  *(v3 + 56) = v5;
  *(v3 + 64) = *(v5 - 8);
  *(v3 + 72) = swift_task_alloc();
  *(v3 + 80) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19093D150, 0, 0);
}

uint64_t sub_19093D150()
{
  v27 = v0;
  if (qword_1EAD51A38 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 88);
  v6 = __swift_project_value_buffer(v4, qword_1EAD9DB40);
  v7 = *(v2 + 16);
  v7(v1, v6, v4);
  sub_190D521A0();
  *(v3 + OBJC_IVAR____TtC7ChatKit25LegacyStoragePluginCounts_didCalculateForCloudKit) = v5;
  sub_19093D488(v5);
  v7(v1, v6, v4);
  sub_190D521A0();
  if ((v5 & 1) == 0)
  {
    v8 = *(v0 + 24);
    sub_19093E9A0();
    *(v8 + OBJC_IVAR____TtC7ChatKit25LegacyStoragePluginCounts_spaceSavedByDeletingNonSyncedAttachments) = IMDAttachmentRecordGetNonSyncedAttachmentDiskSpace();
  }

  v10 = *(v0 + 64);
  v9 = *(v0 + 72);
  v11 = *(v0 + 56);
  v13 = *(v0 + 16);
  v12 = *(v0 + 24);
  *(v12 + OBJC_IVAR____TtC7ChatKit25LegacyStoragePluginCounts_spaceTakenBySyncedConversations) = sub_190940928(2, v13);
  *(v12 + OBJC_IVAR____TtC7ChatKit25LegacyStoragePluginCounts_spaceTakenByUnsyncedConversations) = sub_190940928(1, v13);
  sub_190D521D0();
  v14 = *(v10 + 8);
  v14(v9, v11);
  sub_190D50920();
  v15 = sub_190D53020();
  v16 = sub_190D57680();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v26 = v18;
    *v17 = 136315138;
    v19 = sub_19093D74C();
    v21 = sub_19021D9F8(v19, v20, &v26);

    *(v17 + 4) = v21;
    _os_log_impl(&dword_19020E000, v15, v16, "Finished Loading: %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x193AF7A40](v18, -1, -1);
    MEMORY[0x193AF7A40](v17, -1, -1);
  }

  v22 = *(v0 + 80);
  v23 = *(v0 + 56);
  sub_190D521D0();
  v14(v22, v23);

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_19093D488(char a1)
{
  v2 = v1;
  v4 = sub_190D53040();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_190D521F0();
  v20 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EAD51A38 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v4, qword_1EAD9DB40);
  v12 = sub_190D53020();
  v13 = sub_190D57680();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v19 = v8;
    v15 = v2;
    v16 = v14;
    *v14 = 67109120;
    *(v14 + 4) = a1 & 1;
    _os_log_impl(&dword_19020E000, v12, v13, "Starting to set counts, isCloudKitEnabled: %{BOOL}d...", v14, 8u);
    v17 = v16;
    v2 = v15;
    v8 = v19;
    MEMORY[0x193AF7A40](v17, -1, -1);
  }

  (*(v5 + 16))(v7, v11, v4);
  sub_190D521A0();
  if (a1)
  {
    sub_19093E320();
  }

  else
  {
    *(v2 + OBJC_IVAR____TtC7ChatKit25LegacyStoragePluginCounts_totalSpaceOfAttachments) = sub_1909401C0();
  }

  sub_190D521D0();
  return (*(v20 + 8))(v10, v8);
}

uint64_t sub_19093D74C()
{
  sub_190D582B0();
  MEMORY[0x193AF28B0](0xD000000000000038, 0x8000000190E67AC0);
  v1 = sub_190D58720();
  MEMORY[0x193AF28B0](v1);

  MEMORY[0x193AF28B0](0xD00000000000002FLL, 0x8000000190E67B00);
  v2 = sub_190D58720();
  MEMORY[0x193AF28B0](v2);

  MEMORY[0x193AF28B0](0xD000000000000023, 0x8000000190E67B30);
  swift_beginAccess();
  sub_190D52690();
  v3 = sub_190D56DA0();
  v5 = v4;

  MEMORY[0x193AF28B0](v3, v5);

  MEMORY[0x193AF28B0](0xD000000000000027, 0x8000000190E67B60);
  v6 = sub_190D58720();
  MEMORY[0x193AF28B0](v6);

  MEMORY[0x193AF28B0](0xD000000000000026, 0x8000000190E67B90);
  v7 = OBJC_IVAR____TtC7ChatKit25LegacyStoragePluginCounts_spaceTakenBySyncedConversations;
  v8 = sub_190D58720();
  MEMORY[0x193AF28B0](v8);

  MEMORY[0x193AF28B0](0xD000000000000028, 0x8000000190E67BC0);
  v9 = OBJC_IVAR____TtC7ChatKit25LegacyStoragePluginCounts_spaceTakenByUnsyncedConversations;
  v10 = sub_190D58720();
  MEMORY[0x193AF28B0](v10);

  result = MEMORY[0x193AF28B0](0xD000000000000023, 0x8000000190E67BF0);
  if (__OFADD__(*(v0 + v7), *(v0 + v9)))
  {
    __break(1u);
  }

  else
  {
    v12 = sub_190D58720();
    MEMORY[0x193AF28B0](v12);

    MEMORY[0x193AF28B0](0xD000000000000027, 0x8000000190E67C20);
    v13 = sub_190D58720();
    MEMORY[0x193AF28B0](v13);

    MEMORY[0x193AF28B0](0xD00000000000001ELL, 0x8000000190E67C50);
    if (*(v0 + OBJC_IVAR____TtC7ChatKit25LegacyStoragePluginCounts_didCalculateForCloudKit))
    {
      v14 = 1702195828;
    }

    else
    {
      v14 = 0x65736C6166;
    }

    if (*(v0 + OBJC_IVAR____TtC7ChatKit25LegacyStoragePluginCounts_didCalculateForCloudKit))
    {
      v15 = 0xE400000000000000;
    }

    else
    {
      v15 = 0xE500000000000000;
    }

    MEMORY[0x193AF28B0](v14, v15);

    return 0;
  }

  return result;
}

uint64_t sub_19093DAF4(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_190D53040();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = sub_190D521F0();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_19093DC10, 0, 0);
}

uint64_t sub_19093DC10()
{
  if (qword_1EAD51F80 != -1)
  {
    swift_once();
  }

  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = __swift_project_value_buffer(v3, qword_1EAD9E510);
  (*(v2 + 16))(v1, v4, v3);
  sub_190D521A0();
  result = IMDAttachmentRecordEstimateSpaceTakenByAttachmentsOlderThanDays();
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = v0[8];
    v6 = v0[9];
    v8 = v0[7];
    *(v0[3] + OBJC_IVAR____TtC7ChatKit25LegacyStoragePluginCounts_spaceSavedByAutoDeletingMessages) = result;
    sub_190D521D0();
    (*(v7 + 8))(v6, v8);

    v9 = v0[1];

    return v9();
  }

  return result;
}

void sub_19093DD8C()
{
  if (qword_1EAD51A38 != -1)
  {
    swift_once();
  }

  v0 = sub_190D53040();
  __swift_project_value_buffer(v0, qword_1EAD9DB40);
  sub_190D50920();
  oslog = sub_190D53020();
  v1 = sub_190D57680();

  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v8 = v3;
    *v2 = 136315138;
    v4 = sub_19093D74C();
    v6 = sub_19021D9F8(v4, v5, &v8);

    *(v2 + 4) = v6;
    _os_log_impl(&dword_19020E000, oslog, v1, "Finished Loading: %s", v2, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v3);
    MEMORY[0x193AF7A40](v3, -1, -1);
    MEMORY[0x193AF7A40](v2, -1, -1);
  }
}

uint64_t sub_19093DEF0()
{
  sub_19022EEA4(v0 + OBJC_IVAR____TtC7ChatKit25LegacyStoragePluginCounts_cachedDate, &unk_1EAD5E5D0);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for LegacyStoragePluginCounts()
{
  result = qword_1EAD57590;
  if (!qword_1EAD57590)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_19093DFD8()
{
  sub_1908808B4();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_19093E154()
{
  v1 = *(*v0 + OBJC_IVAR____TtC7ChatKit25LegacyStoragePluginCounts_spaceTakenBySyncedConversations);
  v2 = *(*v0 + OBJC_IVAR____TtC7ChatKit25LegacyStoragePluginCounts_spaceTakenByUnsyncedConversations);
  result = v1 + v2;
  if (__OFADD__(v1, v2))
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_19093E1BC(char a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_190221DA4;

  return sub_19093D024(a1, a2);
}

uint64_t sub_19093E264(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_190221DA0;

  return sub_19093DAF4(a1);
}

uint64_t sub_19093E320()
{
  v0 = sub_190D53040();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_190D521F0();
  v39 = *(v41 - 8);
  v4 = MEMORY[0x1EEE9AC00](v41);
  v37 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v34 - v6;
  if (qword_1EAD51A38 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v0, qword_1EAD9DB40);
  v9 = *(v1 + 16);
  v9(v3, v8, v0);
  v32 = 133;
  v36 = "gMessages(withThresholdDays:)";
  v38 = v7;
  sub_190D521A0();
  v10 = sub_190D53020();
  v11 = sub_190D57680();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_19020E000, v10, v11, "Setting counts for CloudKit enabled storage.", v12, 2u);
    MEMORY[0x193AF7A40](v12, -1, -1);
  }

  v45 = 0;
  v46 = 0;
  v43 = 0;
  v44 = 0;
  v42 = 0;
  v9(v3, v8, v0);
  v35 = v9;
  v13 = v40;
  v32 = sub_190940E58;
  v33 = v40;
  v14 = v37;
  sub_190D521B0();
  v15 = v39[1];
  v16 = v41;
  v15(v14, v41);
  v17 = [*(v13 + OBJC_IVAR____TtC7ChatKit25LegacyStoragePluginCounts_messageDirectoryContents) allDirectoryContents];
  v18 = v0;
  v19 = v17;
  v20 = v35(v3, v8, v18);
  MEMORY[0x1EEE9AC00](v20);
  v39 = v19;
  *(&v34 - 8) = v19;
  *(&v34 - 7) = v13;
  *(&v34 - 6) = &v44;
  *(&v34 - 5) = &v46;
  *(&v34 - 4) = &v42;
  *(&v34 - 3) = &v45;
  v32 = sub_190940E70;
  v33 = &v34 - 10;
  sub_190D521B0();
  v15(v14, v16);
  v21 = sub_190D53020();
  v22 = sub_190D57680();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 134217984;
    swift_beginAccess();
    *(v23 + 4) = v42;
    _os_log_impl(&dword_19020E000, v21, v22, "Total size of live photo videos attributed to photos section: %lld", v23, 0xCu);
    MEMORY[0x193AF7A40](v23, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD575A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_190DDD0E0;
  *(inited + 32) = 0x6F746F6850;
  v25 = v46;
  *(inited + 40) = 0xE500000000000000;
  *(inited + 48) = v25;
  *(inited + 56) = 0x6F65646956;
  *(inited + 64) = 0xE500000000000000;
  *(inited + 72) = v45;
  strcpy((inited + 80), "GIFOrSticker");
  v26 = v44;
  *(inited + 93) = 0;
  *(inited + 94) = -5120;
  *(inited + 96) = v26;
  *(inited + 104) = 0x726568744FLL;
  *(inited + 112) = 0xE500000000000000;
  *(inited + 120) = v43;
  v27 = sub_190822234(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD575A8);
  swift_arrayDestroy();

  v28 = OBJC_IVAR____TtC7ChatKit25LegacyStoragePluginCounts_nonPurgableFileTypeToSizeMap;
  v29 = v40;
  swift_beginAccess();
  *(v29 + v28) = v27;

  *(v29 + OBJC_IVAR____TtC7ChatKit25LegacyStoragePluginCounts_spaceSavedByDeletingNonSyncedAttachments) = *(v29 + OBJC_IVAR____TtC7ChatKit25LegacyStoragePluginCounts_totalSpaceOfNonPurgeableAttachments);
  v30 = v38;
  sub_190D521D0();
  return (v15)(v30, v41);
}

uint64_t sub_19093E9A0()
{
  v1 = v0;
  v2 = sub_190D53040();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  isUniquelyReferenced_nonNull_native = sub_190D521F0();
  v7 = *(isUniquelyReferenced_nonNull_native - 8);
  MEMORY[0x1EEE9AC00](isUniquelyReferenced_nonNull_native);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EAD51A38 != -1)
  {
LABEL_31:
    swift_once();
  }

  v10 = __swift_project_value_buffer(v2, qword_1EAD9DB40);
  (*(v3 + 16))(v5, v10, v2);
  sub_190D521A0();
  v11 = sub_190822234(MEMORY[0x1E69E7CC0]);
  v12 = OBJC_IVAR____TtC7ChatKit25LegacyStoragePluginCounts_nonPurgableFileTypeToSizeMap;
  swift_beginAccess();
  v49 = v12;
  *(v1 + v12) = v11;

  v2 = OBJC_IVAR____TtC7ChatKit25LegacyStoragePluginCounts_totalSpaceOfAttachments;
  *(v1 + OBJC_IVAR____TtC7ChatKit25LegacyStoragePluginCounts_totalSpaceOfAttachments) = 0;
  v13 = IMDAttachmentSpaceTakenByAttachmentClass();
  if (!v13)
  {
LABEL_26:
    sub_190D521D0();
    return (*(v7 + 8))(v9, isUniquelyReferenced_nonNull_native);
  }

  v5 = v13;
  v41 = v9;
  v42 = v7;
  v43 = isUniquelyReferenced_nonNull_native;
  sub_1902188FC(0, &qword_1EAD46510);
  v14 = sub_190D56D90();

  v7 = 0;
  v16 = v14 + 64;
  v15 = *(v14 + 64);
  v46 = v14;
  v17 = 1 << *(v14 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v15;
  v3 = (v17 + 63) >> 6;
  v44 = v1;
  v45 = v3;
  while (1)
  {
    if (!v19)
    {
      while (1)
      {
        v21 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        if (v21 >= v3)
        {

          v7 = v42;
          isUniquelyReferenced_nonNull_native = v43;
          v9 = v41;
          goto LABEL_26;
        }

        v19 = *(v16 + 8 * v21);
        ++v7;
        if (v19)
        {
          v7 = v21;
          goto LABEL_13;
        }
      }

      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

LABEL_13:
    v22 = __clz(__rbit64(v19)) | (v7 << 6);
    v23 = (*(v46 + 48) + 16 * v22);
    v24 = *v23;
    v9 = v23[1];
    v25 = *(*(v46 + 56) + 8 * v22);
    sub_190D52690();
    v5 = v25;
    v26 = [v5 longLongValue];
    v27 = *(v1 + v2);
    v28 = __OFADD__(v27, v26);
    v29 = &v26[v27];
    if (v28)
    {
      goto LABEL_28;
    }

    v47 = v5;
    v48 = v26;
    v3 = v2;
    *(v1 + v2) = v29;
    v2 = v49;
    swift_beginAccess();
    sub_190D52690();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v50 = *(v1 + v2);
    v5 = v50;
    *(v1 + v2) = 0x8000000000000000;
    v30 = sub_19022DCEC(v24, v9);
    v32 = *(v5 + 16);
    v33 = (v31 & 1) == 0;
    v28 = __OFADD__(v32, v33);
    v34 = v32 + v33;
    if (v28)
    {
      goto LABEL_29;
    }

    v1 = v31;
    if (*(v5 + 24) < v34)
    {
      break;
    }

    v2 = v24;
    v36 = v3;
    if (isUniquelyReferenced_nonNull_native)
    {
      v3 = v45;
      if (v31)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v5 = &v50;
      isUniquelyReferenced_nonNull_native = v30;
      sub_190B6893C();
      v30 = isUniquelyReferenced_nonNull_native;
      v3 = v45;
      if (v1)
      {
LABEL_6:
        v5 = v30;

        v20 = v50;
        *(v50[7] + 8 * v5) = v48;
        goto LABEL_7;
      }
    }

LABEL_21:
    v20 = v50;
    v50[(v30 >> 6) + 8] |= 1 << v30;
    v37 = (v20[6] + 16 * v30);
    *v37 = v2;
    v37[1] = v9;
    *(v20[7] + 8 * v30) = v48;
    v38 = v20[2];
    v28 = __OFADD__(v38, 1);
    v39 = v38 + 1;
    if (v28)
    {
      goto LABEL_30;
    }

    v20[2] = v39;
LABEL_7:
    v19 &= v19 - 1;
    v1 = v44;
    *(v44 + v49) = v20;
    swift_endAccess();

    v2 = v36;
  }

  sub_190B63ED8(v34, isUniquelyReferenced_nonNull_native);
  v5 = v50;
  v2 = v24;
  v30 = sub_19022DCEC(v24, v9);
  if ((v1 & 1) == (v35 & 1))
  {
    v36 = v3;
    v3 = v45;
    if (v1)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

  result = sub_190D587C0();
  __break(1u);
  return result;
}

void sub_19093EEB0(void *a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v148 = a7;
  v151 = a6;
  v147 = a5;
  v152 = a4;
  v155 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55088);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v167 = &v146 - v10;
  v176 = sub_190D52E90();
  v11 = *(v176 - 8);
  v12 = MEMORY[0x1EEE9AC00](v176);
  v164 = &v146 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v159 = &v146 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v165 = &v146 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD575B0);
  v18 = MEMORY[0x1EEE9AC00](v17 - 8);
  v181 = &v146 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v186 = &v146 - v20;
  v179 = sub_190D515F0();
  v21 = *(v179 - 8);
  v22 = MEMORY[0x1EEE9AC00](v179 - 8);
  v171 = &v146 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v185 = &v146 - v24;
  v150 = a1;
  v25 = [a1 fileInfoMap];
  v149 = sub_1902188FC(0, &qword_1EAD575B8);
  v26 = sub_190D56D90();

  v28 = a2;
  v29 = 0;
  v180 = 0;
  v31 = v26 + 64;
  v30 = *(v26 + 64);
  v184 = v26;
  v32 = 1 << *(v26 + 32);
  v33 = -1;
  if (v32 < 64)
  {
    v33 = ~(-1 << v32);
  }

  v34 = v33 & v30;
  v172 = OBJC_IVAR____TtC7ChatKit25LegacyStoragePluginCounts_totalSpaceOfAttachments;
  v163 = OBJC_IVAR____TtC7ChatKit25LegacyStoragePluginCounts_totalSpaceOfNonPurgeableAttachments;
  v35 = (v32 + 63) >> 6;
  v170 = (v21 + 16);
  v178 = (v21 + 8);
  v169 = *MEMORY[0x1E695DAA0];
  v162 = (v11 + 48);
  v158 = (v11 + 32);
  v156 = (v11 + 16);
  v157 = v11 + 8;
  v161 = (v11 + 56);
  *&v27 = 136315138;
  v173 = v27;
  *&v27 = 136315394;
  v160 = v27;
  *(&v36 + 1) = 2;
  v168 = xmmword_190DD1D90;
  *&v36 = 136315650;
  v154 = v36;
  v166 = a2;
  v182 = v35;
  v183 = v26 + 64;
  while (v34)
  {
    v37 = v29;
LABEL_10:
    v38 = __clz(__rbit64(v34)) | (v37 << 6);
    v39 = (*(v184 + 48) + 16 * v38);
    v41 = *v39;
    v40 = v39[1];
    v42 = *(*(v184 + 56) + 8 * v38);
    v43 = qword_1EAD51A38;
    sub_190D52690();
    v44 = v42;
    if (v43 != -1)
    {
      swift_once();
    }

    v45 = sub_190D53040();
    v46 = __swift_project_value_buffer(v45, qword_1EAD9DB40);
    sub_190D52690();
    v187 = v46;
    v47 = sub_190D53020();
    v48 = sub_190D57690();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = v41;
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v188[0] = v51;
      *v50 = v173;
      *(v50 + 4) = sub_19021D9F8(v49, v40, v188);
      _os_log_impl(&dword_19020E000, v47, v48, "checking: %s", v50, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v51);
      v52 = v51;
      v31 = v183;
      MEMORY[0x193AF7A40](v52, -1, -1);
      v53 = v50;
      v41 = v49;
      MEMORY[0x193AF7A40](v53, -1, -1);
    }

    v54 = v44;
    if ([v54 isAttachment])
    {
      [v54 fileSize];
      if (v55 < 0)
      {
        goto LABEL_74;
      }

      v56 = *(v28 + v172);
      v57 = __OFADD__(v56, v55);
      v58 = v56 + v55;
      if (v57)
      {
        goto LABEL_75;
      }

      *(v28 + v172) = v58;
    }

    v34 &= v34 - 1;
    if ([v54 isPurgableOnDisk])
    {
      if ([v54 isAttachment])
      {
        [v54 fileSize];
        if (v59 < 0)
        {
          goto LABEL_76;
        }

        v60 = *(v28 + v163);
        v57 = __OFADD__(v60, v59);
        v61 = v60 + v59;
        if (v57)
        {
          goto LABEL_77;
        }

        *(v28 + v163) = v61;
      }

      v62 = v185;
      sub_190D51540();
      v63 = v171;
      v64 = v179;
      (*v170)(v171, v62, v179);
      sub_190D52690();
      v65 = sub_190D53020();
      v66 = sub_190D57690();

      v67 = os_log_type_enabled(v65, v66);
      v177 = v54;
      v175 = v41;
      if (v67)
      {
        v68 = swift_slowAlloc();
        v69 = swift_slowAlloc();
        v188[0] = v69;
        *v68 = v160;
        sub_190940EE0();
        v70 = sub_190D58720();
        v71 = v63;
        v73 = v72;
        v174 = *v178;
        v174(v71, v64);
        v74 = sub_19021D9F8(v70, v73, v188);

        *(v68 + 4) = v74;
        *(v68 + 12) = 2080;
        *(v68 + 14) = sub_19021D9F8(v175, v40, v188);
        _os_log_impl(&dword_19020E000, v65, v66, "url: %s, attachmentPath: %s", v68, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x193AF7A40](v69, -1, -1);
        MEMORY[0x193AF7A40](v68, -1, -1);
      }

      else
      {

        v174 = *v178;
        v174(v63, v64);
      }

      v75 = v167;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD575C0);
      inited = swift_initStackObject();
      *(inited + 16) = v168;
      v77 = v169;
      *(inited + 32) = v169;
      v78 = v77;
      sub_1908AFE58(inited);
      swift_setDeallocating();
      sub_190940E84(inited + 32);
      v79 = v180;
      sub_190D51530();
      if (v79)
      {

        v180 = 0;
        v80 = 1;
      }

      else
      {
        v180 = 0;
        v80 = 0;
      }

      v81 = sub_190D51270();
      v82 = *(v81 - 8);
      v83 = v186;
      (*(v82 + 56))(v186, v80, 1, v81);
      v84 = v181;
      sub_19022FD14(v83, v181, &qword_1EAD575B0);
      if ((*(v82 + 48))(v84, 1, v81) == 1)
      {
        v85 = v177;

        sub_19022EEA4(v84, &qword_1EAD575B0);
        (*v161)(v75, 1, 1, v176);
        goto LABEL_33;
      }

      sub_190D51240();
      (*(v82 + 8))(v181, v81);
      v86 = v176;
      if ((*v162)(v75, 1, v176) == 1)
      {
        v85 = v177;

LABEL_33:
        sub_19022EEA4(v75, &qword_1EAD55088);
        sub_190D52690();
        v87 = sub_190D53020();
        v88 = sub_190D576A0();

        if (os_log_type_enabled(v87, v88))
        {
          v89 = v85;
          v90 = swift_slowAlloc();
          v91 = swift_slowAlloc();
          v188[0] = v91;
          *v90 = v173;
          v92 = sub_19021D9F8(v175, v40, v188);

          *(v90 + 4) = v92;
          _os_log_impl(&dword_19020E000, v87, v88, "Failed to get UTI type for file at path: %s", v90, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v91);
          MEMORY[0x193AF7A40](v91, -1, -1);
          MEMORY[0x193AF7A40](v90, -1, -1);
        }

        else
        {
        }

        sub_19022EEA4(v186, &qword_1EAD575B0);
        v174(v185, v179);
        v29 = v37;
        v28 = v166;
        v35 = v182;
        v31 = v183;
      }

      else
      {
        v93 = v165;
        (*v158)(v165, v75, v86);
        [v177 fileSize];
        v94 = v159;
        v153 = v95;
        if (v95 < 0)
        {
          goto LABEL_78;
        }

        (*v156)(v159, v93, v86);
        sub_190D52690();
        v96 = sub_190D53020();
        v97 = sub_190D57690();

        if (os_log_type_enabled(v96, v97))
        {
          v98 = swift_slowAlloc();
          v187 = swift_slowAlloc();
          v188[0] = v187;
          *v98 = v154;
          v99 = sub_19021D9F8(v175, v40, v188);

          *(v98 + 4) = v99;
          *(v98 + 12) = 2080;
          v100 = sub_190D52DF0();
          v102 = v101;
          v103 = *v157;
          v104 = v157 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
          (*v157)(v94, v176);
          v105 = sub_19021D9F8(v100, v102, v188);

          *(v98 + 14) = v105;
          *(v98 + 22) = 2048;
          v106 = v153;
          *(v98 + 24) = v153;
          v107 = v104;
          _os_log_impl(&dword_19020E000, v96, v97, "%s, utitype: %s, size: %lld", v98, 0x20u);
          v108 = v187;
          swift_arrayDestroy();
          MEMORY[0x193AF7A40](v108, -1, -1);
          MEMORY[0x193AF7A40](v98, -1, -1);

          v109 = v106;
        }

        else
        {

          v103 = *v157;
          v110 = v94;
          v107 = v157 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
          (*v157)(v110, v176);
          v109 = v153;
        }

        sub_190D52E20();
        v111 = sub_190D52E70();
        v112 = v164;
        v113 = v111;
        v114 = v176;
        v187 = v103;
        v175 = v107;
        v103(v164, v176);
        v115 = v177;
        if ((v113 & 1) != 0 || [v177 isSticker])
        {

          v187(v165, v114);
          sub_19022EEA4(v186, &qword_1EAD575B0);
          v174(v185, v179);
          v116 = v155;
          v117 = *v155 + v109;
          if (__OFADD__(*v155, v109))
          {
            goto LABEL_79;
          }

LABEL_44:
          *v116 = v117;
          v29 = v37;
          v35 = v182;
          v31 = v183;
          v28 = v166;
        }

        else
        {
          sub_190D52E40();
          v118 = v112;
          v119 = v165;
          v120 = sub_190D52E70();
          v121 = v176;
          v122 = v120;
          v123 = v187;
          v187(v118, v176);
          if (v122)
          {

            v123(v119, v121);
            sub_19022EEA4(v186, &qword_1EAD575B0);
            v174(v185, v179);
            v116 = v152;
            v117 = *v152 + v153;
            if (__OFADD__(*v152, v153))
            {
              goto LABEL_80;
            }

            goto LABEL_44;
          }

          sub_190D52E60();
          v124 = sub_190D52E70();
          v123(v118, v176);
          if ((v124 & 1) == 0)
          {
            v125 = v164;
            sub_190D52E50();
            v126 = sub_190D52E70();
            v127 = v176;
            v128 = v126;
            v123(v125, v176);
            if ((v128 & 1) == 0)
            {

              v123(v119, v127);
              sub_19022EEA4(v186, &qword_1EAD575B0);
              v174(v185, v179);
              v116 = v148;
              v117 = *v148 + v153;
              if (__OFADD__(*v148, v153))
              {
                goto LABEL_82;
              }

              goto LABEL_44;
            }
          }

          v129 = [v115 path];
          if (!v129)
          {
            sub_190D56F10();
            v129 = sub_190D56ED0();
          }

          v130 = [v129 im_livePhotoImagePath];

          v131 = v115;
          if (!v130)
          {
            goto LABEL_69;
          }

          v132 = sub_190D56F10();
          v134 = v133;

          v135 = [v150 fileInfoMap];
          v136 = sub_190D56D90();

          if (!*(v136 + 16))
          {

LABEL_68:

            v115 = v177;
            v131 = v177;
LABEL_69:

            v187(v165, v176);
            sub_19022EEA4(v186, &qword_1EAD575B0);
            v174(v185, v179);
            goto LABEL_70;
          }

          v137 = sub_19022DCEC(v132, v134);
          v139 = v138;

          if ((v139 & 1) == 0)
          {
            goto LABEL_68;
          }

          v131 = *(*(v136 + 56) + 8 * v137);

          v115 = v177;
          v140 = [v177 path];

          if (!v140)
          {
            sub_190D56F10();
            v140 = sub_190D56ED0();
          }

          v141 = [v140 im_isLivePhoto];

          if (!v141)
          {
            goto LABEL_69;
          }

          v142 = [v131 isPurgableOnDisk];

          v187(v165, v176);
          sub_19022EEA4(v186, &qword_1EAD575B0);
          v174(v185, v179);
          if ((v142 & 1) == 0)
          {
            v143 = v153;
            v35 = v182;
            v31 = v183;
            v28 = v166;
            if (__OFADD__(*v147, v153))
            {
              goto LABEL_83;
            }

            *v147 += v153;
            v144 = v152;
            v145 = *v152 + v143;
            if (__OFADD__(*v152, v143))
            {
              goto LABEL_84;
            }

            goto LABEL_71;
          }

LABEL_70:
          v144 = v151;
          v145 = *v151 + v153;
          v35 = v182;
          v31 = v183;
          v28 = v166;
          if (__OFADD__(*v151, v153))
          {
            goto LABEL_81;
          }

LABEL_71:
          *v144 = v145;
          v29 = v37;
        }
      }
    }

    else
    {

      v29 = v37;
      v35 = v182;
    }
  }

  while (1)
  {
    v37 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v37 >= v35)
    {

      return;
    }

    v34 = *(v31 + 8 * v37);
    ++v29;
    if (v34)
    {
      goto LABEL_10;
    }
  }

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
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
}

uint64_t sub_190940154()
{
  v0 = sub_190D53040();
  __swift_allocate_value_buffer(v0, qword_1EAD9DB40);
  __swift_project_value_buffer(v0, qword_1EAD9DB40);
  sub_190D53010();
  return sub_190D53030();
}

id sub_1909401C0()
{
  v44 = sub_190D51270();
  v43 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v1 = &v39 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F20);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v39 - v3;
  v5 = sub_190D515F0();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v51 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v39 - v9;
  v11 = sub_190D53040();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_190D521F0();
  v15 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EAD51A38 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v11, qword_1EAD9DB40);
  (*(v12 + 16))(v14, v18, v11);
  v41 = v17;
  sub_190D521A0();
  v19 = [objc_opt_self() defaultManager];
  result = CKAttachmentsDirectoryURL();
  if (result)
  {
    v21 = result;
    sub_190D515B0();

    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD575C0);
    v22 = swift_allocObject();
    v49 = xmmword_190DD1D90;
    *(v22 + 16) = xmmword_190DD1D90;
    v23 = *MEMORY[0x1E695DC58];
    *(v22 + 32) = *MEMORY[0x1E695DC58];
    v48 = v23;
    v24 = sub_190D57660();

    v25 = *(v6 + 8);
    v47 = v6 + 8;
    v46 = v25;
    v25(v10, v5);
    v26 = v51;
    v52 = v24;
    if (v24)
    {
      v40 = v15;
      v45 = 0;
      v27 = (v6 + 56);
      v15 = v6 + 48;
      v39 = v6;
      v6 += 32;
      ++v43;
      while (1)
      {
        if ([v52 nextObject])
        {
          sub_190D58140();
          swift_unknownObjectRelease();
        }

        else
        {
          v53 = 0u;
          v54 = 0u;
        }

        v55 = v53;
        v56 = v54;
        if (!*(&v54 + 1))
        {

          v6 = v39;
          v37 = v42;
          v15 = v40;
          v36 = v45;
          goto LABEL_17;
        }

        v28 = swift_dynamicCast();
        (*v27)(v4, v28 ^ 1u, 1, v5);
        if ((*v15)(v4, 1, v5) == 1)
        {
          break;
        }

        (*v6)(v26, v4, v5);
        inited = swift_initStackObject();
        *(inited + 16) = v49;
        v30 = v48;
        *(inited + 32) = v48;
        v31 = v30;
        sub_1908AFE58(inited);
        swift_setDeallocating();
        v26 = v51;
        sub_190940E84(inited + 32);
        sub_190D51530();

        v32 = sub_190D51260();
        v34 = v33;
        (*v43)(v1, v44);
        v46(v26, v5);
        if ((v34 & 1) == 0)
        {
          v35 = __OFADD__(v45, v32);
          v45 += v32;
          if (v35)
          {
            __break(1u);
            goto LABEL_15;
          }
        }
      }

      v37 = v42;
      v15 = v40;
      v38 = v41;
      v36 = v45;
    }

    else
    {
LABEL_15:
      v36 = 0;
      v55 = 0u;
      v56 = 0u;
      v37 = v42;
LABEL_17:
      sub_19022EEA4(&v55, &unk_1EAD551C0);
      (*(v6 + 56))(v4, 1, 1, v5);
      v38 = v41;
    }

    sub_19022EEA4(v4, &unk_1EAD55F20);
    sub_190D521D0();
    (*(v15 + 8))(v38, v37);
    return v36;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_190940928(uint64_t a1, uint64_t a2)
{
  v4 = sub_190D53040();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_190D521F0();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EAD51A38 != -1)
  {
    goto LABEL_23;
  }

  while (1)
  {
    v12 = __swift_project_value_buffer(v4, qword_1EAD9DB40);
    (*(v5 + 16))(v7, v12, v4);
    result = sub_190D521A0();
    if (a1 < 0)
    {
      __break(1u);
      return result;
    }

    v14 = IMDAttachmentFindLargestConversations();
    if (!v14)
    {
      break;
    }

    v15 = v14;
    v38 = v11;
    v39 = v9;
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD5C270);
    v9 = sub_190D57180();

    sub_190D52690();
    v17 = sub_190D53020();
    v18 = sub_190D57680();

    v19 = os_log_type_enabled(v17, v18);
    v40 = v8;
    v41 = a1;
    v37 = v12;
    if (v19)
    {
      v20 = a2;
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v44[0] = v22;
      *v21 = 136315138;
      v23 = MEMORY[0x193AF2A20](v9, v16);
      v25 = sub_19021D9F8(v23, v24, v44);

      *(v21 + 4) = v25;
      _os_log_impl(&dword_19020E000, v17, v18, "Found dbLargestConversations: %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x193AF7A40](v22, -1, -1);
      v26 = v21;
      a2 = v20;
      MEMORY[0x193AF7A40](v26, -1, -1);
    }

    v36 = objc_autoreleasePoolPush();
    v8 = 0;
    v7 = 0;
    a1 = *(v9 + 16);
    v4 = (a2 & ~(a2 >> 63)) + 1;
    v5 = 1702521203;
    v11 = MEMORY[0x1E69E6158];
    a2 = 0xE400000000000000;
    while (1)
    {
      if (a1 == v8)
      {
LABEL_16:

        objc_autoreleasePoolPop(v36);
        v8 = v40;
        a1 = v41;
        v11 = v38;
        v9 = v39;
        goto LABEL_18;
      }

      if (v8 >= *(v9 + 16))
      {
        break;
      }

      v27 = *(v9 + 8 * v8 + 32);
      v42 = 1702521203;
      v43 = 0xE400000000000000;
      sub_190D52690();
      sub_190D58230();
      if (*(v27 + 16) && (v28 = sub_190875C84(v44), (v29 & 1) != 0))
      {
        sub_19021834C(*(v27 + 56) + 32 * v28, v45);
        sub_19084CFD0(v44);

        sub_1902188FC(0, &qword_1EAD46510);
        if (swift_dynamicCast())
        {
          v30 = v42;
          v5 = [v42 longLongValue];

          v31 = __OFADD__(v7, v5);
          v7 += v5;
          if (v31)
          {
            goto LABEL_22;
          }

          v5 = 1702521203;
        }
      }

      else
      {

        sub_19084CFD0(v44);
      }

      if (v4 == ++v8)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    swift_once();
  }

  v7 = 0;
LABEL_18:
  v32 = sub_190D53020();
  v33 = sub_190D57680();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 134218240;
    *(v34 + 4) = v7;
    *(v34 + 12) = 2048;
    *(v34 + 14) = a1;
    _os_log_impl(&dword_19020E000, v32, v33, "Fetched cached space used for conversations: %lld with option: %lu", v34, 0x16u);
    MEMORY[0x193AF7A40](v34, -1, -1);
  }

  sub_190D521D0();
  (*(v9 + 8))(v11, v8);
  return v7;
}

uint64_t sub_190940E84(uint64_t a1)
{
  type metadata accessor for URLResourceKey(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_190940EE0()
{
  result = qword_1EAD55F30;
  if (!qword_1EAD55F30)
  {
    sub_190D515F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD55F30);
  }

  return result;
}

Swift::Void __swiftcall CKTranscriptBalloonCell.configureContactImageStrokeView()()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  v3 = [v2 isTranscriptBackgroundActive];

  if (v3)
  {
    v36 = [v1 contactImageView];
    if (v36)
    {
      v4 = [v1 avatarStrokeView];
      if (!v4)
      {
        type metadata accessor for VibrancyCircleBackgroundView();
        v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
        [v1 setAvatarStrokeView_];
        v4 = v5;
      }

      v6 = [v1 avatarStrokeView];
      if (!v6)
      {
        goto LABEL_20;
      }

      v7 = v6;
      v8 = [v1 traitCollection];
      [v8 displayScale];
      v10 = v9;

      [v36 frame];
      v12 = v11;
      v14 = v13;
      v16 = v15;
      v18 = v17;
      v19 = [objc_opt_self() sharedBehaviors];
      if (!v19)
      {
        __break(1u);
        return;
      }

      v20 = v19;
      [v19 balloonOutlineWidthForScreenScale_];
      v22 = v21;

      v23 = UIEdgeInsetsOutsetRect(v12, v14, v16, v18, v22, v22);
      v25 = v24;
      v27 = v26;
      v29 = v28;
      v30 = [v7 superview];
      v31 = [v1 contentView];
      v32 = v31;
      if (v30)
      {
        if (v31)
        {
          sub_190861700();
          v33 = sub_190D57D90();

          if (v33)
          {
            goto LABEL_19;
          }

          goto LABEL_18;
        }

        v32 = v30;
      }

      else if (!v31)
      {
        goto LABEL_19;
      }

LABEL_18:
      v35 = [v1 contentView];
      [v35 insertSubview:v7 belowSubview:v36];

LABEL_19:
      [v7 setHidden_];
      [v7 setFrame_];

LABEL_20:

      return;
    }
  }

  v34 = [v1 avatarStrokeView];
  [v34 removeFromSuperview];

  [v1 setAvatarStrokeView_];
}

id sub_19094135C(void *a1, void *a2, double a3, double a4)
{
  v8 = [objc_opt_self() blackColor];
  [v8 set];

  [a1 fillRect_];
  [a2 size];
  v10 = (a3 - v9) * 0.5;
  [a2 size];
  v12 = (a4 - v11) * 0.5;

  return [a2 drawAtPoint_];
}

id CKAudioMessageImageUtilities.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CKAudioMessageImageUtilities.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CKAudioMessageImageUtilities();
  return objc_msgSendSuper2(&v2, sel_init);
}

id CKAudioMessageImageUtilities.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CKAudioMessageImageUtilities();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_190941520(void *a1, double a2)
{
  [a1 size];
  v5 = v4 * a2;
  [a1 size];
  v7 = v6 * a2;
  v8 = [objc_allocWithZone(MEMORY[0x1E69DCA78]) initWithSize_];
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  *(v9 + 24) = v7;
  *(v9 + 32) = a1;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_190941DFC;
  *(v10 + 24) = v9;
  v15[4] = sub_1908986D0;
  v15[5] = v10;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 1107296256;
  v15[2] = sub_190233A24;
  v15[3] = &block_descriptor_14_0;
  v11 = _Block_copy(v15);
  v12 = a1;
  sub_190D50920();

  v13 = [v8 imageWithActions_];

  _Block_release(v11);
  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if ((v8 & 1) == 0)
  {
    return v13;
  }

  __break(1u);
  return result;
}

uint64_t sub_1909416DC(void *a1)
{
  [a1 size];
  v3 = v2;
  v5 = v4;
  v6 = sub_190941520(a1, 0.85);
  v7 = [objc_allocWithZone(MEMORY[0x1E69DCA78]) initWithSize_];
  v8 = swift_allocObject();
  v8[2] = v3;
  v8[3] = v5;
  *(v8 + 4) = v6;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_190941DF0;
  *(v9 + 24) = v8;
  v14[4] = sub_190233AFC;
  v14[5] = v9;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = sub_190233A24;
  v14[3] = &block_descriptor_40;
  v10 = _Block_copy(v14);
  v11 = v6;
  sub_190D50920();

  v12 = [v7 imageWithActions_];

  _Block_release(v10);
  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  if ((v7 & 1) == 0)
  {
    return v12;
  }

  __break(1u);
  return result;
}

void sub_1909418B0()
{
  v0 = [objc_opt_self() whiteColor];
  v1 = objc_opt_self();
  v2 = [v1 configurationWithHierarchicalColor_];

  v3 = [objc_opt_self() systemFontOfSize_];
  v4 = [v1 configurationWithFont:v3 scale:3];
  v5 = [v2 configurationByApplyingConfiguration_];
  v6 = sub_190D56ED0();
  v7 = [objc_opt_self() systemImageNamed:v6 withConfiguration:v5];

  if (v7)
  {
  }

  else
  {
    __break(1u);
  }
}

uint64_t _s7ChatKit28CKAudioMessageImageUtilitiesC05audiodE03for4withSo7UIImageCSo9IMMessageCSg_So6CGSizeVtFZ_0(void *a1, double a2, double a3)
{
  v32[1] = *MEMORY[0x1E69E9840];
  v5 = [a1 sender];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_190DD55F0;
  *(v6 + 32) = [objc_opt_self() descriptorForRequiredKeys];
  if (v5)
  {
    v7 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53E20);
    v8 = sub_190D57160();

    v9 = [v7 cnContactWithKeys_];

    if (!v9)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v10 = [objc_allocWithZone(MEMORY[0x1E695CE28]) init];
    v11 = [objc_allocWithZone(MEMORY[0x1E695CE18]) initWithConfiguration_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53E20);
    v12 = sub_190D57160();

    v32[0] = 0;
    v9 = [v11 _crossPlatformUnifiedMeContactWithKeysToFetch_error_];

    if (!v9)
    {
      v28 = v32[0];
      v29 = sub_190D51420();

      swift_willThrow();
LABEL_8:
      sub_1909418B0();
      v24 = v30;
      v27 = sub_1909416DC(v30);
      goto LABEL_9;
    }

    v13 = v32[0];
  }

  v14 = objc_opt_self();
  v15 = objc_opt_self();
  v16 = v9;
  v17 = [v15 mainScreen];
  [v17 scale];
  v19 = v18;

  v20 = [v14 scopeWithPointSize:0 scale:0 rightToLeft:a2 style:{a3, v19}];
  v21 = [objc_opt_self() defaultSettings];
  v22 = [objc_allocWithZone(MEMORY[0x1E695D098]) initWithSettings_];

  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_190DD55F0;
  *(v23 + 32) = v16;
  sub_1908C9E7C();
  v24 = v16;
  v25 = sub_190D57160();

  v26 = [v22 avatarImageForContacts:v25 scope:v20];

  v27 = sub_1909416DC(v26);
  swift_unknownObjectRelease();

  v5 = v24;
LABEL_9:

  return v27;
}

id sub_190941E20(void *a1, void *a2)
{
  [a1 transcriptTypingIndicatorSmallBubbleFrame];
  [a1 transcriptTypingIndicatorMediumBubbleSize];
  [a1 transcriptTypingIndicatorMediumBubbleOffset];
  [a1 transcriptTypingIndicatorLargeBubbleSize];
  [a1 transcriptTypingIndicatorLargeBubbleOffset];
  result = [a2 transcriptTypingIndicatorBubbleColor];
  if (result)
  {
    v5 = objc_opt_self();
    v6 = [v5 tertiaryLabelColor];
    v7 = [v5 quaternaryLabelColor];
    v8 = objc_allocWithZone(sub_190D51F30());
    return sub_190D51F20();
  }

  else
  {
    __break(1u);
  }

  return result;
}

id CKDownloadingPendingMessagesViewBuilder.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CKDownloadingPendingMessagesViewBuilder.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CKDownloadingPendingMessagesViewBuilder();
  return objc_msgSendSuper2(&v2, sel_init);
}

id CKDownloadingPendingMessagesViewBuilder.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CKDownloadingPendingMessagesViewBuilder();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id _s7ChatKit39CKDownloadingPendingMessagesViewBuilderC017createDownloadingdef11InstanceForaB0So6UIViewCyFZ_0()
{
  v0 = [objc_opt_self() sharedBehaviors];
  if (!v0)
  {
    goto LABEL_5;
  }

  v1 = v0;
  v2 = [v0 theme];
  if (!v2)
  {

LABEL_5:
    v5 = objc_opt_self();
    v6 = [v5 grayColor];
    v7 = [v5 tertiaryLabelColor];
    v8 = [v5 quaternaryLabelColor];
    v9 = objc_allocWithZone(sub_190D51F30());
    v4 = sub_190D51F20();
    goto LABEL_6;
  }

  v3 = v2;
  v4 = sub_190941E20(v1, v2);

LABEL_6:
  v10 = [objc_allocWithZone(MEMORY[0x1E69B1800]) initWithConfiguration_];

  return v10;
}

id SendMenuParentView.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SendMenuParentView.init()()
{
  v0[OBJC_IVAR____TtC7ChatKit18SendMenuParentView_allowsHitTesting] = 1;
  v6.receiver = v0;
  v6.super_class = type metadata accessor for SendMenuParentView();
  v1 = objc_msgSendSuper2(&v6, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v2 = objc_opt_self();
  v3 = v1;
  v4 = [v2 clearColor];
  [v3 setBackgroundColor_];

  [v3 setAccessibilityViewIsModal_];
  return v3;
}

uint64_t sub_1909424A0()
{
  v1 = OBJC_IVAR____TtC7ChatKit18SendMenuParentView_allowsHitTesting;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1909424E4(char a1)
{
  v3 = OBJC_IVAR____TtC7ChatKit18SendMenuParentView_allowsHitTesting;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id SendMenuParentView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id SendMenuParentView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SendMenuParentView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_190942870(void *a1, double a2, double a3, double a4, double a5, uint64_t a6, uint64_t (*a7)(void))
{
  v12.receiver = a1;
  v12.super_class = a7();
  return objc_msgSendSuper2(&v12, sel_initWithFrame_, a2, a3, a4, a5);
}

id sub_1909428FC(void *a1, uint64_t a2, void *a3, uint64_t (*a4)(void))
{
  v8.receiver = a1;
  v8.super_class = a4();
  v5 = a3;
  v6 = objc_msgSendSuper2(&v8, sel_initWithCoder_, v5);

  if (v6)
  {
  }

  return v6;
}

_BYTE *sub_1909429B4(void *a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(type metadata accessor for TapbackPickerPickerPillView());
  *&v4[OBJC_IVAR____TtC7ChatKit27TapbackPickerPickerPillView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v4[OBJC_IVAR____TtC7ChatKit27TapbackPickerPickerPillView_showsContent] = 1;
  v5 = sub_190C7EC20(0.0, 0.0, 0.0, 0.0);
  *(v5 + OBJC_IVAR____TtC7ChatKit27TapbackPickerPickerPillView_delegate + 8) = 0;
  swift_unknownObjectWeakAssign();
  v6 = OBJC_IVAR____TtC7ChatKit27TapbackPickerPickerPillView_showsContent;
  *(v5 + OBJC_IVAR____TtC7ChatKit27TapbackPickerPickerPillView_showsContent) = 1;
  v7 = v5;

  if (*(v5 + v6) == 1)
  {
    if (qword_1EAD51FD8 != -1)
    {
      swift_once();
    }

    v8 = qword_1EAD9E5A0;
    v9 = [objc_opt_self() systemFillColor];
    sub_190C7E8A8(v8, v9, 0.6);
  }

  *(v2 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_pickerPill) = v7;
  v10 = OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_emojiTail;
  v11 = objc_allocWithZone(type metadata accessor for TapbackPickerEmojiTailView());
  *&v11[OBJC_IVAR____TtC7ChatKit26TapbackPickerEmojiTailView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v11[OBJC_IVAR____TtC7ChatKit26TapbackPickerEmojiTailView_showsContent] = 1;
  v12 = sub_190C7EC20(0.0, 0.0, 0.0, 0.0);
  *(v12 + OBJC_IVAR____TtC7ChatKit26TapbackPickerEmojiTailView_delegate + 8) = 0;
  swift_unknownObjectWeakAssign();
  *(v12 + OBJC_IVAR____TtC7ChatKit26TapbackPickerEmojiTailView_showsContent) = 1;
  v13 = v12;
  v14 = [v13 traitCollection];
  sub_190C7F178(v14);

  *(v2 + v10) = v13;
  v15 = OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_mediumTail;
  type metadata accessor for TapbackMediumTail();
  *(v2 + v15) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v16 = OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_smallTail;
  type metadata accessor for TapbackSmallTail();
  *(v2 + v16) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v17 = OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_platterContentContainer;
  v18 = type metadata accessor for TapbackBlurView();
  v19 = objc_allocWithZone(v18);
  v19[OBJC_IVAR____TtC7ChatKit15TapbackBlurView_isBlurEnabled] = 0;
  v33.receiver = v19;
  v33.super_class = v18;
  v20 = objc_msgSendSuper2(&v33, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v20[OBJC_IVAR____TtC7ChatKit15TapbackBlurView_isBlurEnabled] = 1;
  v21 = *MEMORY[0x1E6979928];
  v22 = objc_allocWithZone(MEMORY[0x1E6979378]);
  v23 = v20;
  v24 = [v22 initWithType_];
  sub_190A86CA4(v24);

  *(v2 + v17) = v23;
  *(v2 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_activeLayout) = 0;
  v25 = OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_gyroSpring;
  *(v2 + v25) = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:3.5 stiffness:197.72094 damping:26.0 initialVelocity:{0.0, 0.0}];
  *(v2 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_hasPresented) = 0;
  v26 = a1;
  v27 = sub_190C76818(v26);
  v28 = [v27 layer];
  [v28 setAllowsEdgeAntialiasing_];

  v29 = MEMORY[0x1E69E7D40];
  v30 = (*((*MEMORY[0x1E69E7D40] & *v27) + 0x298))();
  (*((*v29 & *v27) + 0x2A0))(v30);
  v31 = sub_190D56ED0();
  [v27 setAccessibilityIdentifier_];

  return v27;
}

id sub_190942E1C()
{
  [v0 addSubview_];
  [v0 addSubview_];
  [v0 addSubview_];
  v1 = *&v0[OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_pickerPill];

  return [v0 addSubview_];
}

id sub_190942EA8()
{
  v1 = *(v0 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_pickerPill);
  v2 = objc_opt_self();
  v3 = [v2 whiteColor];
  [v1 setBackgroundColor_];

  v4 = *(v0 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_emojiTail);
  v5 = [v2 whiteColor];
  [v4 setBackgroundColor_];

  v6 = *(v0 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_mediumTail);
  v7 = [v2 whiteColor];
  [v6 setBackgroundColor_];

  v8 = *(v0 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_smallTail);
  v9 = [v2 whiteColor];
  [v8 setBackgroundColor_];

  v4[OBJC_IVAR____TtC7ChatKit26TapbackPickerEmojiTailView_showsContent] = 0;
  result = *&v4[OBJC_IVAR____TtC7ChatKit27TapbackPickerImageShapeView_imageView];
  if (result)
  {

    return [result setImage_];
  }

  return result;
}

void sub_190943028()
{
  if ((v0[OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_hasPresented] & 1) == 0)
  {
    v0[OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_hasPresented] = 1;
    v1 = *&v0[OBJC_IVAR____TtC7ChatKit26TapbackPickerContainerView_displayConfiguration];
    type metadata accessor for TapbackPickerMessageOriginLayout();
    swift_initStackObject();
    v2 = v1;
    v3 = v0;
    v4 = sub_1909DB588(v2);
    v5 = [v0 layer];
    v6 = sub_190D51C70();
    v7 = sub_190D56ED0();
    [v5 setValue:v6 forKeyPath:v7];

    v8 = *&v3[OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_pickerPill];
    swift_beginAccess();
    v9 = *(v4 + 16);
    v10 = *(v4 + 24);
    v11 = *(v4 + 32);
    v12 = *(v4 + 40);
    sub_190D50920();
    [v8 setBounds_];
    [v8 setCenter_];
    v13 = [v8 layer];
    [v13 setCornerRadius_];

    v14 = *&v3[OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_emojiTail];
    swift_beginAccess();
    v15 = *(v4 + 80);
    v16 = *(v4 + 88);
    v17 = *(v4 + 104);
    [v14 setBounds_];
    [v14 setCenter_];
    v18 = [v14 layer];
    [v18 setCornerRadius_];

    v19 = *&v3[OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_mediumTail];
    swift_beginAccess();
    v20 = *(v4 + 144);
    v21 = *(v4 + 152);
    v22 = *(v4 + 168);
    [v19 setBounds_];
    [v19 setCenter_];
    v23 = [v19 layer];
    [v23 setCornerRadius_];

    v24 = *&v3[OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_smallTail];
    swift_beginAccess();
    v25 = *(v4 + 208);
    v26 = *(v4 + 216);
    v27 = *(v4 + 224);
    v28 = *(v4 + 232);

    [v24 setBounds_];
    [v24 setCenter_];
    v29 = [v24 layer];
    [v29 setCornerRadius_];
  }
}

void sub_19094335C()
{
  v1 = *&v0[OBJC_IVAR____TtC7ChatKit26TapbackPickerContainerView_displayConfiguration];
  type metadata accessor for TapbackPickerStagingLayout();
  swift_allocObject();
  v2 = sub_1909DB754(v1);
  v17 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:240.915 damping:38.1725 initialVelocity:{6.0, 6.0}];
  v3 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v17 timingParameters:0.0];
  v4 = swift_allocObject();
  *(v4 + 16) = v0;
  *(v4 + 24) = v2;
  v22 = sub_190950A4C;
  v23 = v4;
  aBlock = MEMORY[0x1E69E9820];
  v19 = 1107296256;
  v20 = sub_190840E6C;
  v21 = &block_descriptor_742;
  v5 = _Block_copy(&aBlock);
  v6 = v0;
  sub_190D50920();

  [v3 addAnimations_];
  _Block_release(v5);
  [v3 startAnimationAfterDelay_];
  v7 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:290.915 damping:33.1725 initialVelocity:{0.0, 0.0}];
  v8 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v7 timingParameters:0.0];
  v9 = swift_allocObject();
  *(v9 + 16) = v6;
  *(v9 + 24) = v2;
  v22 = sub_190950820;
  v23 = v9;
  aBlock = MEMORY[0x1E69E9820];
  v19 = 1107296256;
  v20 = sub_190840E6C;
  v21 = &block_descriptor_748;
  v10 = _Block_copy(&aBlock);
  v11 = v6;
  sub_190D50920();

  [v8 addAnimations_];
  _Block_release(v10);
  [v8 startAnimationAfterDelay_];
  v12 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:305.855 damping:20.0938 initialVelocity:{0.0, 0.0}];
  v13 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v12 timingParameters:0.0];
  v14 = swift_allocObject();
  *(v14 + 16) = v11;
  *(v14 + 24) = v2;
  v22 = sub_190950874;
  v23 = v14;
  aBlock = MEMORY[0x1E69E9820];
  v19 = 1107296256;
  v20 = sub_190840E6C;
  v21 = &block_descriptor_754;
  v15 = _Block_copy(&aBlock);
  v16 = v11;
  sub_190D50920();

  [v13 addAnimations_];
  _Block_release(v15);
  [v13 startAnimationAfterDelay_];
}

void sub_19094374C(uint64_t a1, double *a2)
{
  type metadata accessor for TapbackPickerBalloonAccessoryView();
  if (!swift_dynamicCastClass())
  {
    v4 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_emojiTail);
    swift_beginAccess();
    v5 = a2[13] * 0.5;
    [v4 setBounds_];
    v6 = [v4 layer];
    [v6 setCornerRadius_];
  }

  v7 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_mediumTail);
  swift_beginAccess();
  v8 = a2[21] * 0.5;
  [v7 setBounds_];
  v9 = [v7 layer];
  [v9 setCornerRadius_];

  v10 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_smallTail);
  swift_beginAccess();
  v11 = a2[29] * 0.5;
  [v10 setBounds_];
  v12 = [v10 layer];
  [v12 setCornerRadius_];
}

id sub_190943900(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_pickerPill);
  swift_beginAccess();
  [v2 center];
  [v2 setCenter_];
  v3 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_emojiTail);
  swift_beginAccess();
  [v3 center];
  [v3 setCenter_];
  v4 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_mediumTail);
  swift_beginAccess();
  [v4 center];
  [v4 setCenter_];
  v5 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_smallTail);
  swift_beginAccess();
  [v5 center];
  return [v5 setCenter_];
}

void sub_190943A4C(uint64_t a1)
{
  v2 = v1;
  sub_190C76C8C();
  if (a1)
  {
    v5 = *(a1 + OBJC_IVAR___CKAggregateAcknowledgmentBalloonView_tapbackPlatters);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_190DD55F0;
    v7 = *(a1 + OBJC_IVAR___CKAggregateAcknowledgmentBalloonView_bottomPeekPlatter);
    *(inited + 32) = v7;
    sub_190D52690();
    v8 = v7;
    sub_190CAA054(inited);
    if (v5 >> 62)
    {
      goto LABEL_16;
    }

    v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
      while (1)
      {
        v10 = 0;
        while ((v5 & 0xC000000000000001) != 0)
        {
          v11 = MEMORY[0x193AF3B90](v10, v5);
          v12 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
LABEL_13:
            __break(1u);
LABEL_14:
            v13 = v11;

            (*((*MEMORY[0x1E69E7D40] & *v2) + 0x2C8))(v13);

            return;
          }

LABEL_8:
          if (*(v11 + OBJC_IVAR___CKTapbackPlatterView_isSent))
          {
            goto LABEL_14;
          }

          ++v10;
          if (v12 == v9)
          {
            goto LABEL_17;
          }
        }

        if (v10 < *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          break;
        }

        __break(1u);
LABEL_16:
        v9 = sub_190D581C0();
        if (!v9)
        {
          goto LABEL_17;
        }
      }

      v11 = *(v5 + 8 * v10 + 32);
      v12 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_13;
      }

      goto LABEL_8;
    }

LABEL_17:
  }

  (*((*MEMORY[0x1E69E7D40] & *v2) + 0x2B8))(v4);
}

void sub_190943C40()
{
  sub_190943028();
  sub_19094335C();
  v1 = *&v0[OBJC_IVAR____TtC7ChatKit26TapbackPickerContainerView_displayConfiguration];
  type metadata accessor for TapbackPickerSelectionLayout();
  swift_allocObject();
  v2 = sub_1909DBC0C(v1);
  *&v0[OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_activeLayout] = v2;
  sub_190D50920();

  v53 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:4898.18 damping:116.588 initialVelocity:{0.0, 0.0}];
  v3 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v53 timingParameters:0.0];
  v4 = swift_allocObject();
  *(v4 + 16) = v0;
  v58 = sub_19095071C;
  v59 = v4;
  aBlock = MEMORY[0x1E69E9820];
  v55 = 1107296256;
  v56 = sub_190840E6C;
  v57 = &block_descriptor_688;
  v5 = _Block_copy(&aBlock);
  v6 = v0;

  v52 = v3;
  [v3 addAnimations_];
  _Block_release(v5);
  [v3 startAnimationAfterDelay_];
  v51 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:320.0 damping:28.0217 initialVelocity:{0.0, 0.0}];
  v7 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v51 timingParameters:0.0];
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v8 + 24) = v2;
  v58 = sub_19095074C;
  v59 = v8;
  aBlock = MEMORY[0x1E69E9820];
  v55 = 1107296256;
  v56 = sub_190840E6C;
  v57 = &block_descriptor_694;
  v9 = _Block_copy(&aBlock);
  sub_190D50920();
  v10 = v6;

  v50 = v7;
  [v7 &selRef_animatingIn];
  _Block_release(v9);
  [v7 startAnimationAfterDelay_];
  v49 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:400.0 damping:35.3217 initialVelocity:{1.75, 1.75}];
  v11 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v49 timingParameters:0.0];
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  *(v12 + 24) = v2;
  v58 = sub_190950768;
  v59 = v12;
  aBlock = MEMORY[0x1E69E9820];
  v55 = 1107296256;
  v56 = sub_190840E6C;
  v57 = &block_descriptor_700;
  v13 = _Block_copy(&aBlock);
  sub_190D50920();
  v14 = v10;

  [v11 &selRef_animatingIn];
  _Block_release(v13);
  [v11 startAnimationAfterDelay_];
  v48 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:165.025 damping:18.1227 initialVelocity:{0.2, 0.2}];
  v15 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v48 timingParameters:0.0];
  v16 = swift_allocObject();
  *(v16 + 16) = v14;
  *(v16 + 24) = v2;
  v58 = sub_190950770;
  v59 = v16;
  aBlock = MEMORY[0x1E69E9820];
  v55 = 1107296256;
  v56 = sub_190840E6C;
  v57 = &block_descriptor_706;
  v17 = _Block_copy(&aBlock);
  sub_190D50920();
  v18 = v14;

  v47 = v15;
  [v15 addAnimations_];
  _Block_release(v17);
  [v15 startAnimationAfterDelay_];
  v46 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:149.639 damping:18.5413 initialVelocity:{4.0, 4.0}];
  v19 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v46 timingParameters:0.0];
  v20 = swift_allocObject();
  *(v20 + 16) = v18;
  *(v20 + 24) = v2;
  v58 = sub_19095078C;
  v59 = v20;
  aBlock = MEMORY[0x1E69E9820];
  v55 = 1107296256;
  v56 = sub_190840E6C;
  v57 = &block_descriptor_712;
  v21 = _Block_copy(&aBlock);
  sub_190D50920();
  v22 = v18;

  v45 = v19;
  [v19 addAnimations_];
  _Block_release(v21);
  [v19 startAnimationAfterDelay_];
  v44 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:144.639 damping:17.6413 initialVelocity:{4.0, 4.0}];
  v23 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v44 timingParameters:0.0];
  v24 = swift_allocObject();
  *(v24 + 16) = v22;
  *(v24 + 24) = v2;
  v58 = sub_1909507A8;
  v59 = v24;
  aBlock = MEMORY[0x1E69E9820];
  v55 = 1107296256;
  v56 = sub_190840E6C;
  v57 = &block_descriptor_718;
  v25 = _Block_copy(&aBlock);
  sub_190D50920();
  v26 = v22;

  v43 = v23;
  [v23 addAnimations_];
  _Block_release(v25);
  [v23 startAnimationAfterDelay_];
  v42 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:147.639 damping:18.5413 initialVelocity:{3.0, 3.0}];
  v27 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v42 timingParameters:0.0];
  v28 = swift_allocObject();
  *(v28 + 16) = v26;
  *(v28 + 24) = v2;
  v58 = sub_1909507C4;
  v59 = v28;
  aBlock = MEMORY[0x1E69E9820];
  v55 = 1107296256;
  v56 = sub_190840E6C;
  v57 = &block_descriptor_724;
  v29 = _Block_copy(&aBlock);
  sub_190D50920();
  v30 = v26;

  v41 = v27;
  [v27 addAnimations_];
  _Block_release(v29);
  [v27 startAnimationAfterDelay_];
  v31 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:142.639 damping:17.6413 initialVelocity:{3.0, 3.0}];
  v32 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v31 timingParameters:0.0];
  v33 = swift_allocObject();
  *(v33 + 16) = v30;
  *(v33 + 24) = v2;
  v58 = sub_1909507E0;
  v59 = v33;
  aBlock = MEMORY[0x1E69E9820];
  v55 = 1107296256;
  v56 = sub_190840E6C;
  v57 = &block_descriptor_730;
  v34 = _Block_copy(&aBlock);
  sub_190D50920();
  v35 = v30;

  [v32 addAnimations_];
  _Block_release(v34);
  [v32 startAnimationAfterDelay_];
  v36 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:2798.18 damping:116.588 initialVelocity:{0.0, 0.0}];
  v37 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v36 timingParameters:0.0];
  v38 = swift_allocObject();
  *(v38 + 16) = v35;
  v58 = sub_1909507FC;
  v59 = v38;
  aBlock = MEMORY[0x1E69E9820];
  v55 = 1107296256;
  v56 = sub_190840E6C;
  v57 = &block_descriptor_736;
  v39 = _Block_copy(&aBlock);
  v40 = v35;

  [v37 addAnimations_];
  _Block_release(v39);
  [v37 startAnimationAfterDelay_];
}

id sub_190944774(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_pickerPill);
  swift_beginAccess();
  [v3 bounds];
  [v3 setBounds_];
  return [v3 setCenter_];
}

void sub_190944804(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC7ChatKit26TapbackPickerContainerView_displayConfiguration);
  v4 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x198))();
  type metadata accessor for TapbackPickerPlatterLayout();
  swift_initStackObject();
  v5 = v3;
  v6 = v1;
  v7 = sub_1909DCA94(v5, a1, v4 & 1, v6);
  v8 = [v6 layer];
  v9 = sub_190D51C70();
  v10 = sub_190D56ED0();
  [v8 setValue:v9 forKeyPath:v10];

  v11 = *(v6 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_pickerPill);
  swift_beginAccess();
  v12 = *(v7 + 16);
  v13 = *(v7 + 24);
  v14 = *(v7 + 32);
  v15 = *(v7 + 40);
  sub_190D50920();
  [v11 setBounds_];
  [v11 setCenter_];
  v16 = [v11 layer];
  [v16 setCornerRadius_];

  v17 = *(v6 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_emojiTail);
  swift_beginAccess();
  v18 = *(v7 + 80);
  v19 = *(v7 + 88);
  v20 = *(v7 + 104);
  [v17 setBounds_];
  [v17 setCenter_];
  v21 = [v17 layer];
  [v21 setCornerRadius_];

  v22 = *(v6 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_mediumTail);
  swift_beginAccess();
  v23 = *(v7 + 144);
  v24 = *(v7 + 152);
  v25 = *(v7 + 168);
  [v22 setBounds_];
  [v22 setCenter_];
  v26 = [v22 layer];
  [v26 setCornerRadius_];

  v27 = *(v6 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_smallTail);
  swift_beginAccess();
  v28 = *(v7 + 208);
  v29 = *(v7 + 216);
  v30 = *(v7 + 224);
  v31 = *(v7 + 232);

  [v27 setBounds_];
  [v27 setCenter_];
  v32 = [v27 layer];
  [v32 setCornerRadius_];
}

void sub_190944B80(void *a1)
{
  v2 = v1;
  sub_190944804(a1);
  v4 = OBJC_IVAR____TtC7ChatKit26TapbackPickerContainerView_displayConfiguration;
  v5 = *&v1[OBJC_IVAR____TtC7ChatKit26TapbackPickerContainerView_displayConfiguration];
  v6 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x198))();
  type metadata accessor for TapbackPickerPlatterLayout();
  swift_allocObject();
  v7 = v5;
  v8 = v2;
  v9 = a1;
  v115 = sub_1909DCA94(v7, v9, v6 & 1, v8);
  v10 = *&v2[v4];
  type metadata accessor for TapbackPickerStagingLayout();
  swift_allocObject();
  v11 = sub_1909DB754(v10);
  v12 = *&v2[v4];
  type metadata accessor for TapbackPickerSelectionLayout();
  swift_allocObject();
  v13 = sub_1909DBC0C(v12);
  *&v8[OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_activeLayout] = v13;
  v114 = v13;
  sub_190D50920();

  v14 = *&v8[OBJC_IVAR____TtC7ChatKit26TapbackPickerContainerView_backingBalloon];
  if (v14)
  {
    [v14 setAlpha_];
  }

  v15 = [v8 layer];
  v16 = sub_190D51C70();
  v17 = sub_190D56ED0();
  [v15 setValue:v16 forKeyPath:v17];

  swift_beginAccess();
  v18 = *(v115 + 24);
  swift_beginAccess();
  v104 = v8;
  if (v9[OBJC_IVAR___CKTapbackPlatterView_showTail] == 1)
  {
    v19 = (v18 - *(v11 + 24)) * 0.5;
    v98 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:305.855 damping:20.0938 initialVelocity:{0.0, 0.0}];
    v20 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v98 timingParameters:0.0];
    v21 = swift_allocObject();
    *(v21 + 16) = v8;
    *(v21 + 24) = v11;
    *(v21 + 32) = v115;
    *(v21 + 40) = v19;
    v120 = sub_1909506EC;
    v121 = v21;
    aBlock = MEMORY[0x1E69E9820];
    v117 = 1107296256;
    v118 = sub_190840E6C;
    v119 = &block_descriptor_640;
    v22 = _Block_copy(&aBlock);
    v23 = v8;
    sub_190D50920();
    sub_190D50920();

    v100 = v20;
    [v20 addAnimations_];
    _Block_release(v22);
    [v20 startAnimationAfterDelay_];
    v24 = [objc_allocWithZone(MEMORY[0x1E69DD278]) &selRef:v98 initWithConversation:0.0 tapHandler:?];
    v25 = swift_allocObject();
    *(v25 + 16) = v23;
    *(v25 + 24) = v114;
    v120 = sub_1909506FC;
    v121 = v25;
    aBlock = MEMORY[0x1E69E9820];
    v117 = 1107296256;
    v118 = sub_190840E6C;
    v119 = &block_descriptor_646;
    v26 = _Block_copy(&aBlock);
    v27 = v23;
    sub_190D50920();

    v97 = v24;
    [v24 addAnimations_];
    _Block_release(v26);
    [v24 startAnimationAfterDelay_];
    v96 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:280.915 damping:38.1725 initialVelocity:{9.0, 9.0}];
    v28 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v96 timingParameters:0.0];
    v29 = swift_allocObject();
    *(v29 + 16) = v27;
    *(v29 + 24) = v11;
    v120 = sub_190950A4C;
    v121 = v29;
    aBlock = MEMORY[0x1E69E9820];
    v117 = 1107296256;
    v118 = sub_190840E6C;
    v119 = &block_descriptor_652;
    v30 = _Block_copy(&aBlock);
    v31 = v27;
    sub_190D50920();

    [v28 addAnimations_];
    _Block_release(v30);
    v112 = v28;
    [v28 startAnimationAfterDelay_];
    v110 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:260.915 damping:38.1725 initialVelocity:{9.0, 9.0}];
    v32 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v110 timingParameters:0.0];
    v33 = swift_allocObject();
    *(v33 + 16) = v31;
    *(v33 + 24) = v11;
    v120 = sub_190950704;
    v121 = v33;
    aBlock = MEMORY[0x1E69E9820];
    v117 = 1107296256;
    v118 = sub_190840E6C;
    v119 = &block_descriptor_658;
    v34 = _Block_copy(&aBlock);
    v35 = v31;
    sub_190D50920();

    [v32 addAnimations_];
    _Block_release(v34);
    v108 = v32;
    [v32 startAnimationAfterDelay_];
    v106 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:180.915 damping:33.1725 initialVelocity:{0.0, 0.0}];
    v102 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v106 timingParameters:0.0];
    v36 = swift_allocObject();
    *(v36 + 16) = v35;
    *(v36 + 24) = v11;
    v120 = sub_19095070C;
    v121 = v36;
    aBlock = MEMORY[0x1E69E9820];
    v117 = 1107296256;
    v118 = sub_190840E6C;
    v119 = &block_descriptor_664;
    v37 = _Block_copy(&aBlock);
    v38 = v35;
    sub_190D50920();

    [v102 addAnimations_];
    _Block_release(v37);
    [v102 startAnimationAfterDelay_];
    v39 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:320.0 damping:28.0217 initialVelocity:{0.0, 0.0}];
    v40 = [objc_allocWithZone(MEMORY[0x1E69DD278]) &selRef:v39 initWithConversation:0.0 tapHandler:?];
    v41 = swift_allocObject();
    *(v41 + 16) = v38;
    *(v41 + 24) = v114;
    v120 = sub_190950714;
    v121 = v41;
    aBlock = MEMORY[0x1E69E9820];
    v117 = 1107296256;
    v118 = sub_190840E6C;
    v119 = &block_descriptor_670;
    v42 = _Block_copy(&aBlock);
    v43 = v38;
    sub_190D50920();

    [v40 addAnimations_];
    _Block_release(v42);
    [v40 startAnimationAfterDelay_];
    v44 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:165.025 damping:19.5227 initialVelocity:{0.2, 0.2}];
    v45 = [objc_allocWithZone(MEMORY[0x1E69DD278]) &selRef:v44 initWithConversation:0.0 tapHandler:?];
    v46 = swift_allocObject();
    *(v46 + 16) = v43;
    *(v46 + 24) = v114;
    v120 = sub_190950A64;
    v121 = v46;
    aBlock = MEMORY[0x1E69E9820];
    v117 = 1107296256;
    v118 = sub_190840E6C;
    v119 = &block_descriptor_676;
    v47 = _Block_copy(&aBlock);
    v48 = v43;
    sub_190D50920();

    [v45 addAnimations_];
    _Block_release(v47);
    [v45 startAnimationAfterDelay_];
    v49 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v39 timingParameters:0.0];
    v50 = swift_allocObject();
    *(v50 + 16) = v48;
    *(v50 + 24) = v114;
    v120 = sub_190950A30;
    v121 = v50;
    aBlock = MEMORY[0x1E69E9820];
    v117 = 1107296256;
    v118 = sub_190840E6C;
    v119 = &block_descriptor_682;
    v51 = _Block_copy(&aBlock);
    v52 = v48;
    sub_190D50920();

    [v49 addAnimations_];
    _Block_release(v51);
    [v49 startAnimationAfterDelay_];
  }

  else
  {
    v112 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:280.915 damping:38.1725 initialVelocity:{9.0, 9.0}];
    v53 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v112 timingParameters:0.0];
    v54 = swift_allocObject();
    *(v54 + 16) = v8;
    *(v54 + 24) = v11;
    v120 = sub_190950A4C;
    v121 = v54;
    aBlock = MEMORY[0x1E69E9820];
    v117 = 1107296256;
    v118 = sub_190840E6C;
    v119 = &block_descriptor_574;
    v55 = _Block_copy(&aBlock);
    v56 = v8;
    sub_190D50920();

    [v53 addAnimations_];
    _Block_release(v55);
    v110 = v53;
    [v53 startAnimationAfterDelay_];
    v108 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) &selRef:1.0 initWithActivityItems:180.915 applicationActivities:{33.1725, 0.0, 0.0} + 3];
    v57 = [objc_allocWithZone(MEMORY[0x1E69DD278]) &selRef:v108 initWithConversation:0.0 tapHandler:?];
    v58 = swift_allocObject();
    *(v58 + 16) = v56;
    *(v58 + 24) = v11;
    v120 = sub_1909506CC;
    v121 = v58;
    aBlock = MEMORY[0x1E69E9820];
    v117 = 1107296256;
    v118 = sub_190840E6C;
    v119 = &block_descriptor_580;
    v59 = _Block_copy(&aBlock);
    v60 = v56;
    sub_190D50920();

    [v57 addAnimations_];
    _Block_release(v59);
    v106 = v57;
    [v57 startAnimationAfterDelay_];
    v102 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:305.855 damping:20.0938 initialVelocity:{0.0, 0.0}];
    v39 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v102 timingParameters:0.0];
    v61 = swift_allocObject();
    *(v61 + 16) = v60;
    *(v61 + 24) = v11;
    v120 = sub_1909506D4;
    v121 = v61;
    aBlock = MEMORY[0x1E69E9820];
    v117 = 1107296256;
    v118 = sub_190840E6C;
    v119 = &block_descriptor_586;
    v62 = _Block_copy(&aBlock);
    v63 = v60;
    sub_190D50920();

    [v39 addAnimations_];
    _Block_release(v62);
    [v39 startAnimationAfterDelay_];
    v40 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:320.0 damping:28.0217 initialVelocity:{0.0, 0.0}];
    v44 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v40 timingParameters:0.0];
    v64 = swift_allocObject();
    *(v64 + 16) = v63;
    *(v64 + 24) = v114;
    v120 = sub_190950A60;
    v121 = v64;
    aBlock = MEMORY[0x1E69E9820];
    v117 = 1107296256;
    v118 = sub_190840E6C;
    v119 = &block_descriptor_592;
    v65 = _Block_copy(&aBlock);
    v66 = v63;
    sub_190D50920();

    [v44 addAnimations_];
    _Block_release(v65);
    [v44 startAnimationAfterDelay_];
    v45 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:165.025 damping:19.5227 initialVelocity:{0.2, 0.2}];
    v49 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v45 timingParameters:0.0];
    v67 = swift_allocObject();
    *(v67 + 16) = v66;
    *(v67 + 24) = v114;
    v120 = sub_1909506DC;
    v121 = v67;
    aBlock = MEMORY[0x1E69E9820];
    v117 = 1107296256;
    v118 = sub_190840E6C;
    v119 = &block_descriptor_598;
    v68 = _Block_copy(&aBlock);
    v69 = v66;
    sub_190D50920();

    [v49 addAnimations_];
    _Block_release(v68);
    [v49 startAnimationAfterDelay_];
  }

  v113 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:430.0 damping:35.3217 initialVelocity:{2.75, 2.75}];
  v70 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v113 timingParameters:0.0];
  v71 = swift_allocObject();
  *(v71 + 16) = v104;
  *(v71 + 24) = v114;
  v120 = sub_1909506E4;
  v121 = v71;
  aBlock = MEMORY[0x1E69E9820];
  v117 = 1107296256;
  v118 = sub_190840E6C;
  v119 = &block_descriptor_604;
  v72 = _Block_copy(&aBlock);
  v73 = v104;
  sub_190D50920();

  v111 = v70;
  [v70 addAnimations_];
  _Block_release(v72);
  [v70 startAnimationAfterDelay_];
  v109 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) &selRef:1.0 initWithActivityItems:149.639 applicationActivities:{18.5413, 4.0, 4.0} + 3];
  v74 = [objc_allocWithZone(MEMORY[0x1E69DD278]) &selRef:v109 initWithConversation:0.0 tapHandler:?];
  v75 = swift_allocObject();
  *(v75 + 16) = v73;
  *(v75 + 24) = v114;
  v120 = sub_190950A3C;
  v121 = v75;
  aBlock = MEMORY[0x1E69E9820];
  v117 = 1107296256;
  v118 = sub_190840E6C;
  v119 = &block_descriptor_610;
  v76 = _Block_copy(&aBlock);
  v77 = v73;
  sub_190D50920();

  v107 = v74;
  [v74 addAnimations_];
  _Block_release(v76);
  [v74 startAnimationAfterDelay_];
  v105 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) &selRef:1.0 initWithActivityItems:144.639 applicationActivities:{17.6413, 4.0, 4.0} + 3];
  v78 = [objc_allocWithZone(MEMORY[0x1E69DD278]) &selRef:v105 initWithConversation:0.0 tapHandler:?];
  v79 = swift_allocObject();
  *(v79 + 16) = v77;
  *(v79 + 24) = v114;
  v120 = sub_190950A54;
  v121 = v79;
  aBlock = MEMORY[0x1E69E9820];
  v117 = 1107296256;
  v118 = sub_190840E6C;
  v119 = &block_descriptor_616;
  v80 = _Block_copy(&aBlock);
  v81 = v77;
  sub_190D50920();

  v103 = v78;
  [v78 addAnimations_];
  _Block_release(v80);
  [v78 startAnimationAfterDelay_];
  v101 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) &selRef:1.0 initWithActivityItems:147.639 applicationActivities:{18.5413, 3.0, 3.0} + 3];
  v82 = [objc_allocWithZone(MEMORY[0x1E69DD278]) &selRef:v101 initWithConversation:0.0 tapHandler:?];
  v83 = swift_allocObject();
  *(v83 + 16) = v81;
  *(v83 + 24) = v114;
  v120 = sub_190950A34;
  v121 = v83;
  aBlock = MEMORY[0x1E69E9820];
  v117 = 1107296256;
  v118 = sub_190840E6C;
  v119 = &block_descriptor_622;
  v84 = _Block_copy(&aBlock);
  v85 = v81;
  sub_190D50920();

  v99 = v82;
  [v82 addAnimations_];
  _Block_release(v84);
  [v82 startAnimationAfterDelay_];
  v86 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:142.639 damping:17.6413 initialVelocity:{3.0, 3.0}];
  v87 = [objc_allocWithZone(MEMORY[0x1E69DD278]) &selRef:v86 initWithConversation:0.0 tapHandler:?];
  v88 = swift_allocObject();
  *(v88 + 16) = v85;
  *(v88 + 24) = v114;
  v120 = sub_190950A5C;
  v121 = v88;
  aBlock = MEMORY[0x1E69E9820];
  v117 = 1107296256;
  v118 = sub_190840E6C;
  v119 = &block_descriptor_628;
  v89 = _Block_copy(&aBlock);
  v90 = v85;
  sub_190D50920();

  [v87 addAnimations_];
  _Block_release(v89);
  [v87 startAnimationAfterDelay_];
  v91 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:758.18 damping:60.588 initialVelocity:{0.0, 0.0}];
  v92 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v91 timingParameters:0.0];
  v93 = swift_allocObject();
  *(v93 + 16) = v90;
  v120 = sub_190950B64;
  v121 = v93;
  aBlock = MEMORY[0x1E69E9820];
  v117 = 1107296256;
  v118 = sub_190840E6C;
  v119 = &block_descriptor_634;
  v94 = _Block_copy(&aBlock);
  v95 = v90;

  [v92 addAnimations_];
  _Block_release(v94);
  [v92 startAnimationAfterDelay_];
}

id sub_19094636C(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_pickerPill);
  swift_beginAccess();
  [v2 center];
  [v2 setCenter_];
  v3 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_platterContentContainer);
  [v2 center];
  [v3 center];
  [v3 setCenter_];
  v4 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_emojiTail);
  swift_beginAccess();
  [v4 center];
  [v4 setCenter_];
  v5 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_mediumTail);
  swift_beginAccess();
  [v5 center];
  [v5 setCenter_];
  v6 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_smallTail);
  swift_beginAccess();
  [v6 center];
  return [v6 setCenter_];
}

id sub_190946504(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_pickerPill);
  swift_beginAccess();
  [v2 center];
  [v2 setCenter_];
  v3 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_platterContentContainer);
  [v2 center];
  [v3 center];
  return [v3 setCenter_];
}

void sub_1909465C8(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() sharedBehaviors];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 usesTapbackRefreshStyling];

    if (v6 || (type metadata accessor for TapbackPickerBalloonAccessoryView(), !swift_dynamicCastClass()))
    {
      v7 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_emojiTail);
      swift_beginAccess();
      v8 = *(a2 + 104) * 0.5;
      [v7 setBounds_];
      v9 = [v7 layer];
      [v9 setCornerRadius_];
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1909466DC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_mediumTail);
  swift_beginAccess();
  v5 = *(a2 + 168) * 0.5;
  [v4 setBounds_];
  v6 = [v4 layer];
  [v6 setCornerRadius_];

  v7 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_smallTail);
  swift_beginAccess();
  v8 = *(a2 + 232) * 0.5;
  [v7 setBounds_];
  v9 = [v7 layer];
  [v9 setCornerRadius_];
}

id sub_190946808(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_mediumTail);
  swift_beginAccess();
  v5 = *(a2 + 80);
  [v4 center];
  [v4 setCenter_];
  v6 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_smallTail);
  v7 = *(a2 + 80);
  [v6 center];
  return [v6 setCenter_];
}

id sub_1909468C0(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_emojiTail);
  swift_beginAccess();
  [v2 center];
  [v2 setCenter_];
  v3 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_mediumTail);
  [v3 center];
  [v3 setCenter_];
  v4 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_smallTail);
  [v4 center];
  return [v4 setCenter_];
}

void sub_1909469A4(uint64_t a1, double *a2)
{
  v4 = [objc_opt_self() sharedBehaviors];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 usesTapbackRefreshStyling];

    if (v6 || (type metadata accessor for TapbackPickerBalloonAccessoryView(), !swift_dynamicCastClass()))
    {
      v7 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_emojiTail);
      swift_beginAccess();
      v8 = a2[13] * 0.5;
      [v7 setBounds_];
      v9 = [v7 layer];
      [v9 setCornerRadius_];
    }

    v10 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_mediumTail);
    swift_beginAccess();
    v11 = a2[21] * 0.5;
    [v10 setBounds_];
    v12 = [v10 layer];
    [v12 setCornerRadius_];

    v13 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_smallTail);
    swift_beginAccess();
    v14 = a2[29] * 0.5;
    [v13 setBounds_];
    v15 = [v13 layer];
    [v15 setCornerRadius_];
  }

  else
  {
    __break(1u);
  }
}

id sub_190946BA4(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_pickerPill);
  swift_beginAccess();
  [v2 center];
  [v2 setCenter_];
  v3 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_platterContentContainer);
  [v2 center];
  [v3 center];
  [v3 setCenter_];
  v4 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_emojiTail);
  [v2 center];
  [v4 center];
  [v4 setCenter_];
  v5 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_mediumTail);
  [v2 center];
  [v5 center];
  [v5 setCenter_];
  v6 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_smallTail);
  [v2 center];
  [v6 center];
  return [v6 setCenter_];
}

id sub_190946D10(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_emojiTail);
  swift_beginAccess();
  v5 = *(a2 + 80);
  [v4 center];
  [v4 setCenter_];
  v6 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_mediumTail);
  [v4 center];
  v8 = v7;
  [v6 center];
  [v6 setCenter_];
  v9 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_smallTail);
  [v4 center];
  v11 = v10;
  [v9 center];
  return [v9 setCenter_];
}

id sub_190946E0C(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_pickerPill);
  swift_beginAccess();
  [v2 center];
  [v2 setCenter_];
  v3 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_platterContentContainer);
  [v2 center];
  [v3 center];
  [v3 setCenter_];
  v4 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_emojiTail);
  swift_beginAccess();
  [v4 center];
  return [v4 setCenter_];
}

id sub_190946F10(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_pickerPill);
  swift_beginAccess();
  [v4 bounds];
  [v4 setBounds_];
  v5 = *(a2 + 16);
  [v4 center];
  [v4 setCenter_];
  v6 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_platterContentContainer);
  [v4 center];
  v8 = v7;
  [v6 center];
  return [v6 setCenter_];
}

void sub_190947000(uint64_t a1)
{
  v2 = v1;
  sub_190C76C8C();
  if (a1)
  {
    v5 = *(a1 + OBJC_IVAR___CKAggregateAcknowledgmentBalloonView_tapbackPlatters);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_190DD55F0;
    v7 = *(a1 + OBJC_IVAR___CKAggregateAcknowledgmentBalloonView_bottomPeekPlatter);
    *(inited + 32) = v7;
    sub_190D52690();
    v8 = v7;
    sub_190CAA054(inited);
    if (v5 >> 62)
    {
      goto LABEL_16;
    }

    v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
      while (1)
      {
        v10 = 0;
        while ((v5 & 0xC000000000000001) != 0)
        {
          v11 = MEMORY[0x193AF3B90](v10, v5);
          v12 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
LABEL_13:
            __break(1u);
LABEL_14:
            v13 = v11;

            (*((*MEMORY[0x1E69E7D40] & *v2) + 0x2D0))(v13);

            return;
          }

LABEL_8:
          if (*(v11 + OBJC_IVAR___CKTapbackPlatterView_isSent))
          {
            goto LABEL_14;
          }

          ++v10;
          if (v12 == v9)
          {
            goto LABEL_17;
          }
        }

        if (v10 < *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          break;
        }

        __break(1u);
LABEL_16:
        v9 = sub_190D581C0();
        if (!v9)
        {
          goto LABEL_17;
        }
      }

      v11 = *(v5 + 8 * v10 + 32);
      v12 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_13;
      }

      goto LABEL_8;
    }

LABEL_17:
  }

  (*((*MEMORY[0x1E69E7D40] & *v2) + 0x2D8))(v4);
}

void sub_1909471F4(void *a1)
{
  v2 = v1;
  sub_190944804(a1);
  v3 = OBJC_IVAR____TtC7ChatKit26TapbackPickerContainerView_displayConfiguration;
  v4 = *&v1[OBJC_IVAR____TtC7ChatKit26TapbackPickerContainerView_displayConfiguration];
  type metadata accessor for TapbackPickerEmojiInputLayout();
  swift_allocObject();
  v5 = sub_1909DC4F8(v4);
  *&v1[OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_activeLayout] = v5;
  sub_190D50920();

  v6 = *&v1[OBJC_IVAR____TtC7ChatKit26TapbackPickerContainerView_backingBalloon];
  if (v6)
  {
    [v6 setAlpha_];
  }

  v7 = [v1 layer];
  v8 = sub_190D51C70();
  v9 = sub_190D56ED0();
  [v7 setValue:v8 forKeyPath:v9];

  v77 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:2.0 stiffness:300.0 damping:50.0 initialVelocity:{0.0, 0.0}];
  v10 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v77 timingParameters:0.0];
  v11 = swift_allocObject();
  *(v11 + 16) = v2;
  v82 = sub_190950B64;
  v83 = v11;
  aBlock = MEMORY[0x1E69E9820];
  v79 = 1107296256;
  v80 = sub_190840E6C;
  v81 = &block_descriptor_502;
  v12 = _Block_copy(&aBlock);
  v13 = v2;

  [v10 addAnimations_];
  _Block_release(v12);
  [v10 startAnimation];
  v14 = *&v2[v3];
  v15 = OBJC_IVAR___CKTapbackPickerBalloonDisplayConfiguration_wantsBottomTail;
  swift_beginAccess();
  if (*(v14 + v15))
  {
    v16 = 15.0;
  }

  else
  {
    v16 = -15.0;
  }

  v76 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) &selRef:1.0 initWithActivityItems:300.0 applicationActivities:{45.0, 0.0, 0.0} + 3];
  v17 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v76 timingParameters:0.0];
  v18 = swift_allocObject();
  *(v18 + 16) = v13;
  *(v18 + 24) = v5;
  *(v18 + 32) = v16;
  v82 = sub_190950694;
  v83 = v18;
  aBlock = MEMORY[0x1E69E9820];
  v79 = 1107296256;
  v80 = sub_190840E6C;
  v81 = &block_descriptor_508;
  v19 = _Block_copy(&aBlock);
  sub_190D50920();
  v20 = v13;

  [v17 addAnimations_];
  _Block_release(v19);
  [v17 startAnimationAfterDelay_];
  v75 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) &selRef:1.0 initWithActivityItems:280.0 applicationActivities:{45.0, 0.0, 0.0} + 3];
  v21 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v75 timingParameters:0.0];
  v22 = swift_allocObject();
  *(v22 + 16) = v20;
  *(v22 + 24) = v5;
  v82 = sub_1909506A0;
  v83 = v22;
  aBlock = MEMORY[0x1E69E9820];
  v79 = 1107296256;
  v80 = sub_190840E6C;
  v81 = &block_descriptor_514;
  v23 = _Block_copy(&aBlock);
  sub_190D50920();
  v24 = v20;

  v74 = v21;
  [v21 addAnimations_];
  _Block_release(v23);
  [v21 startAnimationAfterDelay_];
  v73 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) &selRef:1.0 initWithActivityItems:280.0 applicationActivities:{14.6197, 0.0, 0.0} + 3];
  v25 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v73 timingParameters:0.0];
  v26 = swift_allocObject();
  *(v26 + 16) = v24;
  *(v26 + 24) = v5;
  v82 = sub_190950A30;
  v83 = v26;
  aBlock = MEMORY[0x1E69E9820];
  v79 = 1107296256;
  v80 = sub_190840E6C;
  v81 = &block_descriptor_520;
  v27 = _Block_copy(&aBlock);
  sub_190D50920();
  v28 = v24;

  v72 = v25;
  [v25 addAnimations_];
  _Block_release(v27);
  [v25 startAnimationAfterDelay_];
  v70 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) &selRef:1.0 initWithActivityItems:260.0 applicationActivities:{29.0, 0.0, 0.0} + 3];
  v29 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v70 timingParameters:0.0];
  v30 = swift_allocObject();
  *(v30 + 16) = v28;
  *(v30 + 24) = v5;
  *(v30 + 32) = v16;
  v82 = sub_1909506A8;
  v83 = v30;
  aBlock = MEMORY[0x1E69E9820];
  v79 = 1107296256;
  v80 = sub_190840E6C;
  v81 = &block_descriptor_526;
  v31 = _Block_copy(&aBlock);
  sub_190D50920();
  v32 = v28;

  v71 = v29;
  [v29 addAnimations_];
  _Block_release(v31);
  [v29 startAnimationAfterDelay_];
  v33 = [objc_allocWithZone(MEMORY[0x1E69DD278]) &selRef:v70 initWithConversation:0.0 tapHandler:?];
  v34 = swift_allocObject();
  *(v34 + 16) = v32;
  *(v34 + 24) = v5;
  v82 = sub_190950A58;
  v83 = v34;
  aBlock = MEMORY[0x1E69E9820];
  v79 = 1107296256;
  v80 = sub_190840E6C;
  v81 = &block_descriptor_532;
  v35 = _Block_copy(&aBlock);
  sub_190D50920();
  v36 = v32;

  v69 = v33;
  [v33 addAnimations_];
  _Block_release(v35);
  [v33 startAnimationAfterDelay_];
  v68 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:260.0 damping:29.0 initialVelocity:{0.0, 0.0}];
  v37 = [objc_allocWithZone(MEMORY[0x1E69DD278]) &selRef:v68 initWithConversation:0.0 tapHandler:?];
  v38 = swift_allocObject();
  *(v38 + 16) = v36;
  *(v38 + 24) = v5;
  v82 = sub_190950A34;
  v83 = v38;
  aBlock = MEMORY[0x1E69E9820];
  v79 = 1107296256;
  v80 = sub_190840E6C;
  v81 = &block_descriptor_538;
  v39 = _Block_copy(&aBlock);
  sub_190D50920();
  v40 = v36;

  v67 = v37;
  [v37 &selRef_animatingIn];
  _Block_release(v39);
  [v37 startAnimationAfterDelay_];
  v41 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:260.0 damping:29.0 initialVelocity:{0.0, 0.0}];
  v42 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v41 timingParameters:0.0];
  v43 = swift_allocObject();
  *(v43 + 16) = v40;
  *(v43 + 24) = v5;
  *(v43 + 32) = v16;
  v82 = sub_1909506B4;
  v83 = v43;
  aBlock = MEMORY[0x1E69E9820];
  v79 = 1107296256;
  v80 = sub_190840E6C;
  v81 = &block_descriptor_544;
  v44 = _Block_copy(&aBlock);
  sub_190D50920();
  v45 = v40;

  v66 = v42;
  [v42 &selRef_animatingIn];
  _Block_release(v44);
  [v42 startAnimationAfterDelay_];
  v46 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v41 timingParameters:0.0];
  v47 = swift_allocObject();
  *(v47 + 16) = v45;
  *(v47 + 24) = v5;
  v82 = sub_190950A5C;
  v83 = v47;
  aBlock = MEMORY[0x1E69E9820];
  v79 = 1107296256;
  v80 = sub_190840E6C;
  v81 = &block_descriptor_550;
  v48 = _Block_copy(&aBlock);
  sub_190D50920();
  v49 = v45;

  [v46 &selRef_animatingIn];
  _Block_release(v48);
  [v46 startAnimationAfterDelay_];
  v65 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:240.0 damping:29.0 initialVelocity:{0.0, 0.0}];
  v50 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v65 timingParameters:0.0];
  v51 = swift_allocObject();
  *(v51 + 16) = v49;
  *(v51 + 24) = v5;
  v82 = sub_190950A3C;
  v83 = v51;
  aBlock = MEMORY[0x1E69E9820];
  v79 = 1107296256;
  v80 = sub_190840E6C;
  v81 = &block_descriptor_556;
  v52 = _Block_copy(&aBlock);
  sub_190D50920();
  v53 = v49;

  v64 = v50;
  [v50 &selRef_animatingIn];
  _Block_release(v52);
  [v50 startAnimationAfterDelay_];
  v63 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:240.0 damping:29.0 initialVelocity:{0.0, 0.0}];
  v54 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v63 timingParameters:0.0];
  v55 = swift_allocObject();
  *(v55 + 16) = v53;
  *(v55 + 24) = v5;
  *(v55 + 32) = v16;
  v82 = sub_1909506C0;
  v83 = v55;
  aBlock = MEMORY[0x1E69E9820];
  v79 = 1107296256;
  v80 = sub_190840E6C;
  v81 = &block_descriptor_562;
  v56 = _Block_copy(&aBlock);
  sub_190D50920();
  v57 = v53;

  [v54 addAnimations_];
  _Block_release(v56);
  [v54 startAnimationAfterDelay_];
  v58 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:240.0 damping:29.0 initialVelocity:{0.0, 0.0}];
  v59 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v58 timingParameters:0.0];
  v60 = swift_allocObject();
  *(v60 + 16) = v57;
  *(v60 + 24) = v5;
  v82 = sub_190950A54;
  v83 = v60;
  aBlock = MEMORY[0x1E69E9820];
  v79 = 1107296256;
  v80 = sub_190840E6C;
  v81 = &block_descriptor_568;
  v61 = _Block_copy(&aBlock);
  sub_190D50920();
  v62 = v57;

  [v59 addAnimations_];
  _Block_release(v61);
  [v59 startAnimationAfterDelay_];
}

id sub_1909480CC(uint64_t a1, double *a2)
{
  v4 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_pickerPill);
  swift_beginAccess();
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[5];
  [v4 setBounds_];
  [v4 setCenter_];
  v8 = [v4 layer];
  [v8 setCornerRadius_];

  [v4 center];
  [v4 setCenter_];
  v9 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_platterContentContainer);
  [v4 center];
  return [v9 setCenter_];
}

id sub_1909481F8(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_pickerPill);
  swift_beginAccess();
  [v4 setCenter_];
  v5 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_platterContentContainer);
  [v4 center];
  return [v5 setCenter_];
}

void sub_190948288(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_emojiTail);
  swift_beginAccess();
  [v3 center];
  [v3 setCenter_];
  v4 = *(a2 + 104) * 0.5;
  [v3 setBounds_];
  v5 = [v3 layer];
  [v5 setCornerRadius_];
}

void sub_190948364(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_mediumTail);
  swift_beginAccess();
  [v3 center];
  [v3 setCenter_];
  v4 = *(a2 + 168) * 0.5;
  [v3 setBounds_];
  v5 = [v3 layer];
  [v5 setCornerRadius_];
}

void sub_190948440(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_smallTail);
  swift_beginAccess();
  [v3 center];
  [v3 setCenter_];
  v4 = *(a2 + 232) * 0.5;
  [v3 setBounds_];
  v5 = [v3 layer];
  [v5 setCornerRadius_];
}

void sub_19094851C()
{
  v1 = v0;
  sub_190943028();
  v2 = OBJC_IVAR____TtC7ChatKit26TapbackPickerContainerView_displayConfiguration;
  v3 = *&v0[OBJC_IVAR____TtC7ChatKit26TapbackPickerContainerView_displayConfiguration];
  type metadata accessor for TapbackPickerEmojiInputLayout();
  swift_allocObject();
  v37 = sub_1909DC4F8(v3);
  *&v0[OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_activeLayout] = v37;
  sub_190D50920();

  v45 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:4898.18 damping:116.588 initialVelocity:{0.0, 0.0}];
  v4 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v45 timingParameters:0.0];
  v5 = swift_allocObject();
  *(v5 + 16) = v0;
  v50 = sub_190950A28;
  v51 = v5;
  aBlock = MEMORY[0x1E69E9820];
  v47 = 1107296256;
  v48 = sub_190840E6C;
  v49 = &block_descriptor_460;
  v6 = _Block_copy(&aBlock);
  v7 = v0;

  v44 = v4;
  [v4 addAnimations_];
  _Block_release(v6);
  [v4 startAnimationAfterDelay_];
  v43 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) &selRef:2.0 initWithActivityItems:650.0 applicationActivities:{50.0, 0.0, 0.0} + 3];
  v8 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v43 timingParameters:0.0];
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  v50 = sub_190950B64;
  v51 = v9;
  aBlock = MEMORY[0x1E69E9820];
  v47 = 1107296256;
  v48 = sub_190840E6C;
  v49 = &block_descriptor_466;
  v10 = _Block_copy(&aBlock);
  v11 = v7;

  [v8 addAnimations_];
  _Block_release(v10);
  [v8 &selRef:0.05 ck:? applyGlassBackgroundWithFlexible:?];
  v12 = *&v1[v2];
  v13 = OBJC_IVAR___CKTapbackPickerBalloonDisplayConfiguration_wantsBottomTail;
  swift_beginAccess();
  if (*(v12 + v13))
  {
    v14 = 35.0;
  }

  else
  {
    v14 = -35.0;
  }

  v42 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:350.0 damping:45.0 initialVelocity:{0.0, 0.0}];
  v15 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v42 timingParameters:0.0];
  v16 = swift_allocObject();
  *(v16 + 16) = v11;
  *(v16 + 24) = v37;
  *(v16 + 32) = v14;
  v50 = sub_1909505FC;
  v51 = v16;
  aBlock = MEMORY[0x1E69E9820];
  v47 = 1107296256;
  v48 = sub_190840E6C;
  v49 = &block_descriptor_472;
  v17 = _Block_copy(&aBlock);
  sub_190D50920();
  v18 = v11;

  [v15 addAnimations_];
  _Block_release(v17);
  [v15 startAnimationAfterDelay_];
  v41 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:300.0 damping:45.0 initialVelocity:{1.0, 1.0}];
  v19 = [objc_allocWithZone(MEMORY[0x1E69DD278]) &selRef:v41 initWithConversation:0.0 tapHandler:?];
  v20 = swift_allocObject();
  *(v20 + 16) = v18;
  *(v20 + 24) = v37;
  v50 = sub_190950608;
  v51 = v20;
  aBlock = MEMORY[0x1E69E9820];
  v47 = 1107296256;
  v48 = sub_190840E6C;
  v49 = &block_descriptor_478;
  v21 = _Block_copy(&aBlock);
  sub_190D50920();
  v22 = v18;

  v40 = v19;
  [v19 addAnimations_];
  _Block_release(v21);
  [v19 startAnimationAfterDelay_];
  v39 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:1080.0 damping:45.0 initialVelocity:{0.0, 0.0}];
  v23 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v39 timingParameters:0.0];
  v24 = swift_allocObject();
  *(v24 + 16) = v22;
  *(v24 + 24) = v37;
  v50 = sub_190950624;
  v51 = v24;
  aBlock = MEMORY[0x1E69E9820];
  v47 = 1107296256;
  v48 = sub_190840E6C;
  v49 = &block_descriptor_484;
  v25 = _Block_copy(&aBlock);
  sub_190D50920();
  v26 = v22;

  v38 = v23;
  [v23 addAnimations_];
  _Block_release(v25);
  [v23 startAnimationAfterDelay_];
  v27 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:260.0 damping:25.0 initialVelocity:{0.0, 0.0}];
  v28 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v27 timingParameters:0.0];
  v29 = swift_allocObject();
  *(v29 + 16) = v26;
  *(v29 + 24) = v37;
  v50 = sub_19095062C;
  v51 = v29;
  aBlock = MEMORY[0x1E69E9820];
  v47 = 1107296256;
  v48 = sub_190840E6C;
  v49 = &block_descriptor_490;
  v30 = _Block_copy(&aBlock);
  sub_190D50920();
  v31 = v26;

  [v28 addAnimations_];
  _Block_release(v30);
  [v28 startAnimationAfterDelay_];
  v32 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:260.0 damping:25.0 initialVelocity:{0.0, 0.0}];
  v33 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v32 timingParameters:0.0];
  v34 = swift_allocObject();
  *(v34 + 16) = v31;
  *(v34 + 24) = v37;
  v50 = sub_19095068C;
  v51 = v34;
  aBlock = MEMORY[0x1E69E9820];
  v47 = 1107296256;
  v48 = sub_190840E6C;
  v49 = &block_descriptor_496;
  v35 = _Block_copy(&aBlock);
  sub_190D50920();
  v36 = v31;

  [v33 addAnimations_];
  _Block_release(v35);
  [v33 startAnimationAfterDelay_];
}

id sub_190948E44(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_pickerPill);
  swift_beginAccess();
  [v4 setCenter_];
  [v4 center];
  [v4 setCenter_];
  v5 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_emojiTail);
  [v4 center];
  [v5 setCenter_];
  v6 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_mediumTail);
  [v4 center];
  [v6 setCenter_];
  v7 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_smallTail);
  [v4 center];
  return [v7 setCenter_];
}

void sub_190948F4C(uint64_t a1, double *a2)
{
  v4 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_emojiTail);
  swift_beginAccess();
  v5 = a2[13] * 0.5;
  [v4 setBounds_];
  v6 = [v4 layer];
  [v6 setCornerRadius_];

  v7 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_mediumTail);
  swift_beginAccess();
  v8 = a2[21] * 0.5;
  [v7 setBounds_];
  v9 = [v7 layer];
  [v9 setCornerRadius_];

  v10 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_smallTail);
  swift_beginAccess();
  v11 = a2[29] * 0.5;
  [v10 setBounds_];
  v12 = [v10 layer];
  [v12 setCornerRadius_];
}

id sub_1909490E4(uint64_t a1, double *a2)
{
  v4 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_emojiTail);
  swift_beginAccess();
  [v4 setCenter_];
  v5 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_mediumTail);
  swift_beginAccess();
  [v5 setCenter_];
  v6 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_smallTail);
  swift_beginAccess();
  return [v6 setCenter_];
}

void sub_1909491AC(uint64_t a1)
{
  v2 = v1;
  if (!a1)
  {
    goto LABEL_21;
  }

  v3 = *(a1 + OBJC_IVAR___CKAggregateAcknowledgmentBalloonView_tapbackPlatters);
  v4 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_190DD55F0;
  v6 = *(v4 + OBJC_IVAR___CKAggregateAcknowledgmentBalloonView_bottomPeekPlatter);
  *(inited + 32) = v6;
  sub_190D52690();
  v7 = v6;
  sub_190CAA054(inited);
  if (v3 >> 62)
  {
LABEL_19:
    v8 = sub_190D581C0();
    if (v8)
    {
      goto LABEL_4;
    }

    goto LABEL_20;
  }

  v8 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v8)
  {
LABEL_20:

LABEL_21:
    (*((*MEMORY[0x1E69E7D40] & *v2) + 0x2E8))(a1);
    sub_190C76A0C(0.2);
    return;
  }

LABEL_4:
  v9 = 0;
  while ((v3 & 0xC000000000000001) != 0)
  {
    v10 = MEMORY[0x193AF3B90](v9, v3);
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      goto LABEL_13;
    }

LABEL_8:
    if (v10[OBJC_IVAR___CKTapbackPlatterView_isSent])
    {
      goto LABEL_14;
    }

    ++v9;
    if (v11 == v8)
    {
      goto LABEL_20;
    }
  }

  if (v9 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_19;
  }

  v10 = *(v3 + 8 * v9 + 32);
  v11 = v9 + 1;
  if (!__OFADD__(v9, 1))
  {
    goto LABEL_8;
  }

LABEL_13:
  __break(1u);
LABEL_14:
  v12 = v10;

  v13 = [v2 tintColor];
  v14 = *(v2 + OBJC_IVAR____TtC7ChatKit26TapbackPickerContainerView_presentationTintColor);
  *(v2 + OBJC_IVAR____TtC7ChatKit26TapbackPickerContainerView_presentationTintColor) = v13;

  (*((*MEMORY[0x1E69E7D40] & *v2) + 0x2E0))(v12);
  type metadata accessor for TapbackPickerPrimaryContainer();
  if (swift_dynamicCastClass())
  {
    v15 = 0.4;
  }

  else
  {
    v15 = 0.2;
  }

  sub_190C76A0C(v15);
}

void sub_19094941C(void *a1)
{
  v2 = v1;
  v103 = OBJC_IVAR____TtC7ChatKit26TapbackPickerContainerView_displayConfiguration;
  v4 = *&v1[OBJC_IVAR____TtC7ChatKit26TapbackPickerContainerView_displayConfiguration];
  v5 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x198))();
  type metadata accessor for TapbackPickerPlatterLayout();
  swift_allocObject();
  v6 = v4;
  v7 = v2;
  v8 = a1;
  v9 = sub_1909DCA94(v6, v8, v5 & 1, v7);
  v10 = [*&v8[OBJC_IVAR___CKTapbackPlatterView_backgroundSolidStroke] backgroundColor];
  v11 = *&v7[OBJC_IVAR____TtC7ChatKit26TapbackPickerContainerView_presentationTintColor];
  *&v7[OBJC_IVAR____TtC7ChatKit26TapbackPickerContainerView_presentationTintColor] = v10;

  v12 = *&v7[OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_pickerPill];
  v13 = *&v7[OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_platterContentContainer];
  v14 = *&v7[OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_emojiTail];
  v15 = *&v7[OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_mediumTail];
  v16 = *&v7[OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_smallTail];
  v108 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:375.0 damping:50.0 initialVelocity:{0.0, 0.0}];
  v17 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v108 timingParameters:0.0];
  v18 = swift_allocObject();
  v18[2] = v7;
  v18[3] = v12;
  v18[4] = v9;
  v18[5] = v13;
  v18[6] = v14;
  v18[7] = v15;
  v18[8] = v16;
  v124 = sub_1909504CC;
  v125 = v18;
  aBlock = MEMORY[0x1E69E9820];
  v121 = 1107296256;
  v122 = sub_190840E6C;
  v123 = &block_descriptor_376;
  v19 = _Block_copy(&aBlock);
  v20 = v7;
  v110 = v12;
  sub_190D50920();
  v21 = v13;
  v118 = v14;
  v116 = v15;
  v114 = v16;

  [v17 addAnimations_];
  _Block_release(v19);
  v107 = v17;
  [v17 startAnimationAfterDelay_];
  v119 = v20;
  v112 = OBJC_IVAR____TtC7ChatKit26TapbackPickerContainerView_currentDisplayMode;
  v22 = *&v2[v103];
  if (*&v20[OBJC_IVAR____TtC7ChatKit26TapbackPickerContainerView_currentDisplayMode] == 2)
  {
    type metadata accessor for TapbackPickerEmojiInputLayout();
    swift_allocObject();
    v23 = sub_1909DC4F8(v22);
    v104 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:375.0 damping:50.0 initialVelocity:{0.0, 0.0}];
    v24 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v104 timingParameters:0.0];
    v25 = swift_allocObject();
    v25[2] = v110;
    v25[3] = v23;
    v25[4] = v21;
    v124 = sub_190950594;
    v125 = v25;
    aBlock = MEMORY[0x1E69E9820];
    v121 = 1107296256;
    v122 = sub_190840E6C;
    v123 = &block_descriptor_448;
    v26 = _Block_copy(&aBlock);
    v27 = v110;
    v28 = v21;
    sub_190D50920();

    [v24 addAnimations_];
    _Block_release(v26);
    v100 = v24;
    [v24 startAnimationAfterDelay_];
    v29 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:375.0 damping:50.0 initialVelocity:{0.0, 0.0}];
    v30 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v29 timingParameters:0.0];
    v31 = swift_allocObject();
    v31[2] = v118;
    v31[3] = v23;
    v31[4] = v116;
    v31[5] = v114;
    v124 = sub_1909505F0;
    v125 = v31;
    aBlock = MEMORY[0x1E69E9820];
    v121 = 1107296256;
    v122 = sub_190840E6C;
    v123 = &block_descriptor_454;
    v32 = _Block_copy(&aBlock);
    v33 = v118;
    v34 = v116;
    v35 = v114;
    sub_190D50920();

    [v30 addAnimations_];
    v36 = 0x1E69DC000;
  }

  else
  {
    type metadata accessor for TapbackPickerSelectionLayout();
    swift_allocObject();
    v37 = sub_1909DBC0C(v22);
    v104 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:375.0 damping:50.0 initialVelocity:{0.0, 0.0}];
    v38 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v104 timingParameters:0.0];
    v39 = swift_allocObject();
    v39[2] = v110;
    v39[3] = v37;
    v39[4] = v21;
    v124 = sub_1909504E0;
    v125 = v39;
    aBlock = MEMORY[0x1E69E9820];
    v121 = 1107296256;
    v122 = sub_190840E6C;
    v123 = &block_descriptor_382;
    v40 = _Block_copy(&aBlock);
    v41 = v110;
    v42 = v21;
    sub_190D50920();

    [v38 addAnimations_];
    _Block_release(v40);
    v100 = v38;
    [v38 startAnimationAfterDelay_];
    v29 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:375.0 damping:50.0 initialVelocity:{0.0, 0.0}];
    v30 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v29 timingParameters:0.0];
    v43 = swift_allocObject();
    v43[2] = v118;
    v43[3] = v37;
    v43[4] = v116;
    v43[5] = v114;
    v124 = sub_1909504EC;
    v125 = v43;
    aBlock = MEMORY[0x1E69E9820];
    v121 = 1107296256;
    v122 = sub_190840E6C;
    v123 = &block_descriptor_388;
    v32 = _Block_copy(&aBlock);
    v44 = v118;
    v45 = v116;
    v46 = v114;
    sub_190D50920();

    [v30 addAnimations_];
    v36 = 0x1E69DC000uLL;
  }

  _Block_release(v32);
  [v30 startAnimationAfterDelay_];

  v47 = *&v119[v112];
  v48 = objc_allocWithZone(*(v36 + 3976));
  if (v47 == 2)
  {
    v49 = 220.255;
    v50 = 45.4281;
  }

  else
  {
    v49 = 400.255;
    v50 = 48.4281;
  }

  v51 = v110;
  v111 = [v48 initWithMass:1.0 stiffness:v49 damping:v50 initialVelocity:{1.4, 1.4}];
  v52 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v111 timingParameters:0.0];
  v53 = swift_allocObject();
  *(v53 + 16) = v51;
  *(v53 + 24) = v9;
  v124 = sub_1909504F8;
  v125 = v53;
  aBlock = MEMORY[0x1E69E9820];
  v121 = 1107296256;
  v122 = sub_190840E6C;
  v123 = &block_descriptor_394;
  v54 = _Block_copy(&aBlock);
  v97 = v51;
  sub_190D50920();

  [v52 addAnimations_];
  _Block_release(v54);
  v109 = v52;
  [v52 startAnimationAfterDelay_];
  v106 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:375.255 damping:55.5281 initialVelocity:{0.0, 0.0}];
  v55 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v106 timingParameters:0.0];
  v56 = swift_allocObject();
  v56[2] = v118;
  v56[3] = v9;
  v56[4] = v116;
  v56[5] = v114;
  v124 = sub_190950500;
  v125 = v56;
  aBlock = MEMORY[0x1E69E9820];
  v121 = 1107296256;
  v122 = sub_190840E6C;
  v123 = &block_descriptor_400;
  v57 = _Block_copy(&aBlock);
  sub_190D50920();
  v94 = v118;
  v101 = v116;
  v99 = v114;

  [v55 addAnimations_];
  _Block_release(v57);
  v117 = v55;
  [v55 startAnimationAfterDelay_];
  if (*&v119[v112] == 2)
  {
    v58 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:2.0 stiffness:375.0 damping:50.0 initialVelocity:{0.0, 0.0}];
  }

  else
  {
    v58 = v111;
  }

  v115 = v58;
  v59 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v58 timingParameters:0.0];
  v60 = swift_allocObject();
  v60[2] = v97;
  v60[3] = v9;
  v60[4] = v21;
  v124 = sub_19095050C;
  v125 = v60;
  aBlock = MEMORY[0x1E69E9820];
  v121 = 1107296256;
  v122 = sub_190840E6C;
  v123 = &block_descriptor_406;
  v61 = _Block_copy(&aBlock);
  v62 = v97;
  sub_190D50920();
  v63 = v21;

  v105 = v59;
  [v59 addAnimations_];
  _Block_release(v61);
  [v59 startAnimationAfterDelay_];
  v113 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) &selRef:1.3 initWithActivityItems:450.0 applicationActivities:{39.0, 0.0, 0.0} + 3];
  v64 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v113 timingParameters:0.0];
  v65 = swift_allocObject();
  v65[2] = v62;
  v65[3] = v9;
  v65[4] = v63;
  v124 = sub_190950518;
  v125 = v65;
  aBlock = MEMORY[0x1E69E9820];
  v121 = 1107296256;
  v122 = sub_190840E6C;
  v123 = &block_descriptor_412;
  v66 = _Block_copy(&aBlock);
  v67 = v62;
  sub_190D50920();
  v68 = v63;

  [v64 addAnimations_];
  _Block_release(v66);
  [v64 startAnimationAfterDelay_];
  v98 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) &selRef:1.3 initWithActivityItems:275.0 applicationActivities:{36.0, 0.0, 0.0} + 3];
  v69 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v98 timingParameters:0.0];
  v70 = swift_allocObject();
  *(v70 + 16) = v94;
  *(v70 + 24) = v9;
  v124 = sub_190950524;
  v125 = v70;
  aBlock = MEMORY[0x1E69E9820];
  v121 = 1107296256;
  v122 = sub_190840E6C;
  v123 = &block_descriptor_418;
  v71 = _Block_copy(&aBlock);
  sub_190D50920();
  v72 = v94;

  v96 = v69;
  [v69 addAnimations_];
  _Block_release(v71);
  [v69 startAnimationAfterDelay_];
  v95 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:1.3 stiffness:375.0 damping:36.0 initialVelocity:{0.0, 0.0}];
  v73 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v95 timingParameters:0.0];
  v74 = swift_allocObject();
  *(v74 + 16) = v72;
  *(v74 + 24) = v9;
  v124 = sub_19095052C;
  v125 = v74;
  aBlock = MEMORY[0x1E69E9820];
  v121 = 1107296256;
  v122 = sub_190840E6C;
  v123 = &block_descriptor_424;
  v75 = _Block_copy(&aBlock);
  sub_190D50920();
  v76 = v72;

  v93 = v73;
  [v73 addAnimations_];
  _Block_release(v75);
  [v73 startAnimationAfterDelay_];
  v92 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:1.3 stiffness:275.0 damping:35.0 initialVelocity:{0.0, 0.0}];
  v77 = [objc_allocWithZone(MEMORY[0x1E69DD278]) &selRef:v92 initWithConversation:0.0 tapHandler:?];
  v78 = swift_allocObject();
  v78[2] = v101;
  v78[3] = v9;
  v78[4] = v99;
  v124 = sub_190950534;
  v125 = v78;
  aBlock = MEMORY[0x1E69E9820];
  v121 = 1107296256;
  v122 = sub_190840E6C;
  v123 = &block_descriptor_430;
  v79 = _Block_copy(&aBlock);
  sub_190D50920();
  v80 = v101;
  v81 = v99;

  [v77 addAnimations_];
  _Block_release(v79);
  [v77 startAnimationAfterDelay_];
  v102 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) &selRef:1.3 initWithActivityItems:325.0 applicationActivities:{35.0, 0.0, 0.0} + 3];
  v82 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v102 timingParameters:0.0];
  v83 = swift_allocObject();
  v83[2] = v80;
  v83[3] = v9;
  v83[4] = v81;
  v124 = sub_190950540;
  v125 = v83;
  aBlock = MEMORY[0x1E69E9820];
  v121 = 1107296256;
  v122 = sub_190840E6C;
  v123 = &block_descriptor_436;
  v84 = _Block_copy(&aBlock);
  sub_190D50920();
  v85 = v80;
  v86 = v81;

  [v82 addAnimations_];
  _Block_release(v84);
  [v82 startAnimationAfterDelay_];
  v87 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) &selRef:1.0 initWithActivityItems:300.0 applicationActivities:{50.0, 0.0, 0.0} + 3];
  v88 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v87 timingParameters:0.0];
  v89 = swift_allocObject();
  *(v89 + 16) = v119;
  v124 = sub_19085EA38;
  v125 = v89;
  aBlock = MEMORY[0x1E69E9820];
  v121 = 1107296256;
  v122 = sub_190840E6C;
  v123 = &block_descriptor_442;
  v90 = _Block_copy(&aBlock);
  v91 = v119;

  [v88 addAnimations_];
  _Block_release(v90);
  [v88 startAnimationAfterDelay_];
}

id sub_19094A7A0(uint64_t a1, void *a2, double *a3, void *a4, void *a5, void *a6, void *a7)
{
  if (*(a1 + OBJC_IVAR____TtC7ChatKit26TapbackPickerContainerView_currentDisplayMode) == 2)
  {
    swift_beginAccess();
    v13 = a3[2];
    [a2 center];
    [a2 setCenter_];
    [a2 center];
    v15 = v14;
    [a4 center];
    [a4 setCenter_];
  }

  swift_beginAccess();
  v16 = a3[10];
  [a5 center];
  [a5 setCenter_];
  swift_beginAccess();
  v17 = a3[18];
  [a6 center];
  [a6 setCenter_];
  [a6 center];
  v19 = v18;
  [a7 center];
  return [a7 setCenter_];
}

id sub_19094A910(void *a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  [a1 center];
  [a1 setCenter_];
  [a1 center];
  [a3 center];
  return [a3 setCenter_];
}

id sub_19094A9C0(void *a1, uint64_t a2, void *a3, void *a4)
{
  swift_beginAccess();
  [a1 center];
  [a1 setCenter_];
  swift_beginAccess();
  [a3 center];
  [a3 setCenter_];
  [a3 center];
  [a4 center];
  return [a4 setCenter_];
}

id sub_19094AAB8(void *a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  [a1 center];
  [a1 setCenter_];
  [a1 center];
  [a3 center];
  return [a3 setCenter_];
}

id sub_19094AB68(void *a1, uint64_t a2, void *a3, void *a4)
{
  swift_beginAccess();
  [a1 center];
  [a1 setCenter_];
  swift_beginAccess();
  [a3 center];
  [a3 setCenter_];
  [a3 center];
  [a4 center];
  return [a4 setCenter_];
}

void sub_19094AC70(void *a1, uint64_t a2)
{
  swift_beginAccess();
  [a1 bounds];
  [a1 setBounds_];
  v4 = [a1 layer];
  [v4 setCornerRadius_];
}

void sub_19094AD1C(void *a1, uint64_t a2, void *a3, void *a4)
{
  swift_beginAccess();
  [a1 bounds];
  [a1 setBounds_];
  v8 = [a1 layer];
  [v8 setCornerRadius_];

  swift_beginAccess();
  [a3 bounds];
  [a3 setBounds_];
  v9 = [a3 layer];
  [v9 setCornerRadius_];

  [a3 bounds];
  [a4 bounds];
  [a4 setBounds_];
  v10 = [a4 layer];
  v11 = [a3 layer];
  [v11 cornerRadius];
  v13 = v12;

  [v10 setCornerRadius_];
}

id sub_19094AEE0(void *a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  v6 = *(a2 + 16);
  [a1 center];
  [a1 setCenter_];
  [a1 center];
  v8 = v7;
  [a3 center];
  return [a3 setCenter_];
}

id sub_19094AF88(void *a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  [a1 center];
  [a1 setCenter_];
  [a1 center];
  [a3 center];
  return [a3 setCenter_];
}

id sub_19094B030(void *a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a2 + 80);
  [a1 center];
  return [a1 setCenter_];
}

id sub_19094B0A0(void *a1)
{
  swift_beginAccess();
  [a1 center];
  return [a1 setCenter_];
}

id sub_19094B110(void *a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  v6 = *(a2 + 144);
  [a1 center];
  [a1 setCenter_];
  [a1 center];
  v8 = v7;
  [a3 center];
  return [a3 setCenter_];
}

id sub_19094B1B8(void *a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  [a1 center];
  [a1 setCenter_];
  [a1 center];
  [a3 center];
  return [a3 setCenter_];
}

uint64_t sub_19094B260()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC7ChatKit26TapbackPickerContainerView_displayConfiguration;
  v3 = *&v0[OBJC_IVAR____TtC7ChatKit26TapbackPickerContainerView_displayConfiguration];
  type metadata accessor for TapbackPickerStagingLayout();
  swift_allocObject();
  v101 = sub_1909DB754(v3);
  v4 = *&v0[v2];
  type metadata accessor for TapbackPickerMessageOriginLayout();
  swift_allocObject();
  v5 = sub_1909DB588(v4);
  *&v1[OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_activeLayout] = v5;
  sub_190D50920();

  v100 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:500.0 damping:40.0365 initialVelocity:{0.0, 0.0}];
  v6 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v100 timingParameters:0.0];
  v7 = swift_allocObject();
  *(v7 + 16) = v1;
  *(v7 + 24) = v5;
  v106 = sub_19095032C;
  v107 = v7;
  aBlock = MEMORY[0x1E69E9820];
  v103 = 1107296256;
  v104 = sub_190840E6C;
  v105 = &block_descriptor_268;
  v8 = _Block_copy(&aBlock);
  sub_190D50920();
  v9 = v1;

  [v6 addAnimations_];
  _Block_release(v8);
  v99 = v6;
  [v6 startAnimationAfterDelay_];
  v98 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) &selRef:1.0 initWithActivityItems:600.0 applicationActivities:{50.0, 0.0, 0.0} + 3];
  v10 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v98 timingParameters:0.0];
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  v106 = sub_190950334;
  v107 = v11;
  aBlock = MEMORY[0x1E69E9820];
  v103 = 1107296256;
  v104 = sub_190840E6C;
  v105 = &block_descriptor_274;
  v12 = _Block_copy(&aBlock);
  v13 = v9;

  [v10 addAnimations_];
  _Block_release(v12);
  v97 = v10;
  [v10 startAnimationAfterDelay_];
  v96 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) &selRef:1.0 initWithActivityItems:350.0 applicationActivities:{29.5469, 0.0, 0.0} + 3];
  v14 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v96 timingParameters:0.4];
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  *(v15 + 24) = v5;
  v106 = sub_190950354;
  v107 = v15;
  aBlock = MEMORY[0x1E69E9820];
  v103 = 1107296256;
  v104 = sub_190840E6C;
  v105 = &block_descriptor_280;
  v16 = _Block_copy(&aBlock);
  sub_190D50920();
  v17 = v13;

  [v14 addAnimations_];
  _Block_release(v16);
  v95 = v14;
  [v14 startAnimationAfterDelay_];
  if (*&v17[OBJC_IVAR____TtC7ChatKit26TapbackPickerContainerView_currentDisplayMode] == 1)
  {
    v90 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:600.0 damping:50.0 initialVelocity:{0.0, 0.0}];
    v18 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v90 timingParameters:0.0];
    v19 = swift_allocObject();
    *(v19 + 16) = v17;
    v106 = sub_190950370;
    v107 = v19;
    aBlock = MEMORY[0x1E69E9820];
    v103 = 1107296256;
    v104 = sub_190840E6C;
    v105 = &block_descriptor_310;
    v20 = _Block_copy(&aBlock);
    v21 = v17;

    v89 = v18;
    [v18 addAnimations_];
    _Block_release(v20);
    [v18 startAnimationAfterDelay_];
    v88 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:375.0 damping:40.0365 initialVelocity:{0.0, 0.0}];
    v22 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v88 timingParameters:0.0];
    v23 = swift_allocObject();
    *(v23 + 16) = v21;
    *(v23 + 24) = v5;
    v106 = sub_190950378;
    v107 = v23;
    aBlock = MEMORY[0x1E69E9820];
    v103 = 1107296256;
    v104 = sub_190840E6C;
    v105 = &block_descriptor_316;
    v24 = _Block_copy(&aBlock);
    sub_190D50920();
    v25 = v21;

    v87 = v22;
    [v22 addAnimations_];
    _Block_release(v24);
    [v22 startAnimationAfterDelay_];
    v86 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:800.0 damping:40.0365 initialVelocity:{0.0, 0.0}];
    v26 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v86 timingParameters:0.0];
    v27 = swift_allocObject();
    *(v27 + 16) = v25;
    *(v27 + 24) = v101;
    v106 = sub_190950380;
    v107 = v27;
    aBlock = MEMORY[0x1E69E9820];
    v103 = 1107296256;
    v104 = sub_190840E6C;
    v105 = &block_descriptor_322;
    v28 = _Block_copy(&aBlock);
    v29 = v25;
    sub_190D50920();

    v85 = v26;
    [v26 addAnimations_];
    _Block_release(v28);
    [v26 startAnimationAfterDelay_];
    v84 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:180.0 damping:29.5469 initialVelocity:{0.0, 0.0}];
    v30 = [objc_allocWithZone(MEMORY[0x1E69DD278]) &selRef:v84 initWithConversation:0.4 tapHandler:?];
    v31 = swift_allocObject();
    *(v31 + 16) = v29;
    *(v31 + 24) = v5;
    v106 = sub_190950A4C;
    v107 = v31;
    aBlock = MEMORY[0x1E69E9820];
    v103 = 1107296256;
    v104 = sub_190840E6C;
    v105 = &block_descriptor_328;
    v32 = _Block_copy(&aBlock);
    sub_190D50920();
    v33 = v29;

    v83 = v30;
    [v30 addAnimations_];
    _Block_release(v32);
    [v30 startAnimationAfterDelay_];
    v82 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:358.255 damping:29.5469 initialVelocity:{0.0, 0.0}];
    v34 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v82 timingParameters:0.0];
    v35 = swift_allocObject();
    *(v35 + 16) = v33;
    *(v35 + 24) = v5;
    v106 = sub_190950A50;
    v107 = v35;
    aBlock = MEMORY[0x1E69E9820];
    v103 = 1107296256;
    v104 = sub_190840E6C;
    v105 = &block_descriptor_334;
    v36 = _Block_copy(&aBlock);
    sub_190D50920();
    v37 = v33;

    v81 = v34;
    [v34 addAnimations_];
    _Block_release(v36);
    [v34 startAnimationAfterDelay_];
    v80 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) &selRef:1.0 initWithActivityItems:288.255 applicationActivities:{25.5469, 0.0, 0.0} + 3];
    v38 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v80 timingParameters:0.0];
    v39 = swift_allocObject();
    *(v39 + 16) = v37;
    *(v39 + 24) = v101;
    v106 = sub_19095039C;
    v107 = v39;
    aBlock = MEMORY[0x1E69E9820];
    v103 = 1107296256;
    v104 = sub_190840E6C;
    v105 = &block_descriptor_340;
    v40 = _Block_copy(&aBlock);
    v41 = v37;
    sub_190D50920();

    [v38 addAnimations_];
    _Block_release(v40);
    [v38 startAnimationAfterDelay_];
    v79 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:298.255 damping:29.5469 initialVelocity:{0.0, 0.0}];
    v42 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v79 timingParameters:0.0];
    v43 = swift_allocObject();
    *(v43 + 16) = v41;
    *(v43 + 24) = v5;
    v106 = sub_190950A54;
    v107 = v43;
    aBlock = MEMORY[0x1E69E9820];
    v103 = 1107296256;
    v104 = sub_190840E6C;
    v105 = &block_descriptor_346;
    v44 = _Block_copy(&aBlock);
    sub_190D50920();
    v45 = v41;

    v78 = v42;
    [v42 addAnimations_];
    _Block_release(v44);
    [v42 startAnimationAfterDelay_];
    v94 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:230.255 damping:25.5469 initialVelocity:{0.0, 0.0}];
    v46 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v94 timingParameters:0.0];
    v47 = swift_allocObject();
    *(v47 + 16) = v45;
    *(v47 + 24) = v101;
    v106 = sub_1909503F8;
    v107 = v47;
    aBlock = MEMORY[0x1E69E9820];
    v103 = 1107296256;
    v104 = sub_190840E6C;
    v105 = &block_descriptor_352;
    v48 = _Block_copy(&aBlock);
    v49 = v45;
    sub_190D50920();

    [v46 addAnimations_];
    _Block_release(v48);
    v93 = v46;
    [v46 startAnimationAfterDelay_];
    v92 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:240.255 damping:29.5469 initialVelocity:{0.0, 0.0}];
    v91 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v92 timingParameters:0.0];
    v50 = swift_allocObject();
    *(v50 + 16) = v49;
    *(v50 + 24) = v5;
    v106 = sub_190950A5C;
    v107 = v50;
    aBlock = MEMORY[0x1E69E9820];
    v103 = 1107296256;
    v104 = sub_190840E6C;
    v105 = &block_descriptor_358;
    v51 = _Block_copy(&aBlock);
    sub_190D50920();
    v52 = v49;

    [v91 addAnimations_];
    _Block_release(v51);
    [v91 startAnimationAfterDelay_];
    v53 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:220.255 damping:25.5469 initialVelocity:{0.0, 0.0}];
    v54 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v53 timingParameters:0.0];
    v55 = swift_allocObject();
    *(v55 + 16) = v52;
    *(v55 + 24) = v101;
    v106 = sub_190950454;
    v107 = v55;
    aBlock = MEMORY[0x1E69E9820];
    v103 = 1107296256;
    v104 = sub_190840E6C;
    v105 = &block_descriptor_364;
    v56 = _Block_copy(&aBlock);
    v57 = v52;
    sub_190D50920();

    [v54 addAnimations_];
    _Block_release(v56);
    [v54 startAnimationAfterDelay_];
    v58 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:150.255 damping:29.5469 initialVelocity:{0.0, 0.0}];
    v59 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v58 timingParameters:0.0];
    v60 = swift_allocObject();
    *(v60 + 16) = v57;
    *(v60 + 24) = v5;
    v106 = sub_1909504B0;
    v107 = v60;
    aBlock = MEMORY[0x1E69E9820];
    v103 = 1107296256;
    v104 = sub_190840E6C;
    v105 = &block_descriptor_370;
    v61 = _Block_copy(&aBlock);
    sub_190D50920();
    v62 = v57;

    [v59 addAnimations_];
    _Block_release(v61);
    [v59 startAnimationAfterDelay_];
  }

  else
  {
    [*&v17[OBJC_IVAR____TtC7ChatKit26TapbackPickerContainerView_backingBalloon] setAlpha_];
    v94 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:180.0 damping:85.5469 initialVelocity:{0.0, 0.0}];
    v63 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v94 timingParameters:0.0];
    v64 = swift_allocObject();
    v64[2] = v17;
    v64[3] = v101;
    v64[4] = 0x4034000000000000;
    v106 = sub_19095035C;
    v107 = v64;
    aBlock = MEMORY[0x1E69E9820];
    v103 = 1107296256;
    v104 = sub_190840E6C;
    v105 = &block_descriptor_286;
    v65 = _Block_copy(&aBlock);
    v66 = v17;
    sub_190D50920();

    [v63 addAnimations_];
    _Block_release(v65);
    v93 = v63;
    [v63 startAnimationAfterDelay_];
    v92 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) &selRef:1.0 initWithActivityItems:180.255 applicationActivities:{85.5469, 0.0, 0.0} + 3];
    v67 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v92 timingParameters:0.0];
    v68 = swift_allocObject();
    *(v68 + 16) = v66;
    *(v68 + 24) = v5;
    v106 = sub_190950A4C;
    v107 = v68;
    aBlock = MEMORY[0x1E69E9820];
    v103 = 1107296256;
    v104 = sub_190840E6C;
    v105 = &block_descriptor_292;
    v69 = _Block_copy(&aBlock);
    sub_190D50920();
    v70 = v66;

    [v67 addAnimations_];
    _Block_release(v69);
    v91 = v67;
    [v67 startAnimationAfterDelay_];
    v53 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) &selRef:1.0 initWithActivityItems:350.255 applicationActivities:{85.5469, 0.0, 0.0} + 3];
    v54 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v53 timingParameters:0.0];
    v71 = swift_allocObject();
    *(v71 + 16) = v70;
    *(v71 + 24) = v5;
    v106 = sub_190950A24;
    v107 = v71;
    aBlock = MEMORY[0x1E69E9820];
    v103 = 1107296256;
    v104 = sub_190840E6C;
    v105 = &block_descriptor_298;
    v72 = _Block_copy(&aBlock);
    sub_190D50920();
    v73 = v70;

    [v54 &selRef_animatingIn];
    _Block_release(v72);
    [v54 startAnimationAfterDelay_];
    v58 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) &selRef:1.0 initWithActivityItems:275.255 applicationActivities:{29.5469, 0.0, 0.0} + 3];
    v59 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v58 timingParameters:0.0];
    v74 = swift_allocObject();
    *(v74 + 16) = v73;
    *(v74 + 24) = v5;
    v106 = sub_190950368;
    v107 = v74;
    aBlock = MEMORY[0x1E69E9820];
    v103 = 1107296256;
    v104 = sub_190840E6C;
    v105 = &block_descriptor_304;
    v75 = _Block_copy(&aBlock);
    sub_190D50920();
    v76 = v73;

    [v59 &selRef_animatingIn];
    _Block_release(v75);
    [v59 startAnimationAfterDelay_];
  }
}

id sub_19094C84C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_pickerPill);
  swift_beginAccess();
  v4 = *(a2 + 16);
  [v3 center];
  return [v3 setCenter_];
}

void sub_19094C8C4(uint64_t a1, double *a2)
{
  v4 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_mediumTail);
  swift_beginAccess();
  v5 = a2[21] * 0.5;
  [v4 setBounds_];
  v6 = [v4 layer];
  [v6 setCornerRadius_];

  v7 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_smallTail);
  swift_beginAccess();
  v8 = a2[29] * 0.5;
  [v7 setBounds_];
  v9 = [v7 layer];
  [v9 setCornerRadius_];

  v10 = [objc_opt_self() sharedBehaviors];
  if (v10)
  {
    v11 = v10;
    v12 = [v10 usesTapbackRefreshStyling];

    if (v12 || (type metadata accessor for TapbackPickerBalloonAccessoryView(), !swift_dynamicCastClass()))
    {
      v13 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_emojiTail);
      swift_beginAccess();
      v14 = a2[13] * 0.5;
      [v13 setBounds_];
      v15 = [v13 layer];
      [v15 setCornerRadius_];
    }
  }

  else
  {
    __break(1u);
  }
}

id sub_19094CAC4(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_pickerPill);
  swift_beginAccess();
  [v1 bounds];
  return [v1 setBounds_];
}

id sub_19094CB3C(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_pickerPill);
  swift_beginAccess();
  [v1 center];
  return [v1 setCenter_];
}

id sub_19094CBB4(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_mediumTail);
  swift_beginAccess();
  [v1 center];
  return [v1 setCenter_];
}

id sub_19094CC2C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_pickerPill);
  swift_beginAccess();
  v5 = *(a2 + 16);
  [v4 center];
  [v4 setCenter_];
  [v4 center];
  [v4 setCenter_];
  v6 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_smallTail);
  [v4 center];
  [v6 setCenter_];
  v7 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_mediumTail);
  [v4 center];
  [v7 setCenter_];
  v8 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_emojiTail);
  [v4 center];
  return [v8 setCenter_];
}

void sub_19094CD4C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_pickerPill);
  swift_beginAccess();
  v4 = *(a2 + 40) * 0.5;
  [v3 setBounds_];
  v5 = [v3 layer];
  [v5 setCornerRadius_];
}

id sub_19094CDF8(uint64_t a1, double *a2)
{
  v4 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_smallTail);
  swift_beginAccess();
  [v4 setCenter_];
  v5 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_mediumTail);
  swift_beginAccess();
  [v5 setCenter_];
  v6 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_emojiTail);
  swift_beginAccess();
  return [v6 setCenter_];
}

void sub_19094CEC0()
{
  v1 = *&v0[OBJC_IVAR____TtC7ChatKit26TapbackPickerContainerView_displayConfiguration];
  type metadata accessor for TapbackPickerEmojiTailTouchedDownLayout();
  swift_allocObject();
  v2 = v1;
  v3 = sub_1909DDE08(v2);

  *&v0[OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_activeLayout] = v3;
  sub_190D50920();

  v18 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:2.0 stiffness:350.0 damping:31.749 initialVelocity:{0.0, 0.0}];
  v4 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v18 timingParameters:0.0];
  v5 = swift_allocObject();
  *(v5 + 16) = v0;
  *(v5 + 24) = v3;
  v23 = sub_1909502D8;
  v24 = v5;
  aBlock = MEMORY[0x1E69E9820];
  v20 = 1107296256;
  v21 = sub_190840E6C;
  v22 = &block_descriptor_250;
  v6 = _Block_copy(&aBlock);
  sub_190D50920();
  v7 = v0;

  [v4 addAnimations_];
  _Block_release(v6);
  [v4 startAnimationAfterDelay_];
  v8 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:2.0 stiffness:300.0 damping:39.0 initialVelocity:{0.0, 0.0}];
  v9 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v8 timingParameters:0.0];
  v10 = swift_allocObject();
  *(v10 + 16) = v7;
  *(v10 + 24) = v3;
  v23 = sub_1909502F4;
  v24 = v10;
  aBlock = MEMORY[0x1E69E9820];
  v20 = 1107296256;
  v21 = sub_190840E6C;
  v22 = &block_descriptor_256;
  v11 = _Block_copy(&aBlock);
  sub_190D50920();
  v12 = v7;

  [v9 addAnimations_];
  _Block_release(v11);
  [v9 startAnimationAfterDelay_];
  v13 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:2.0 stiffness:300.0 damping:50.0 initialVelocity:{0.0, 0.0}];
  v14 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v13 timingParameters:0.0];
  v15 = swift_allocObject();
  *(v15 + 16) = v12;
  *(v15 + 24) = v3;
  v23 = sub_190950310;
  v24 = v15;
  aBlock = MEMORY[0x1E69E9820];
  v20 = 1107296256;
  v21 = sub_190840E6C;
  v22 = &block_descriptor_262;
  v16 = _Block_copy(&aBlock);
  sub_190D50920();
  v17 = v12;

  [v14 addAnimations_];
  _Block_release(v16);
  [v14 startAnimationAfterDelay_];
}

void sub_19094D2E4()
{
  v1 = *&v0[OBJC_IVAR____TtC7ChatKit26TapbackPickerContainerView_displayConfiguration];
  type metadata accessor for TapbackPickerSelectionLayout();
  swift_allocObject();
  v2 = sub_1909DBC0C(v1);
  *&v0[OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_activeLayout] = v2;
  sub_190D50920();

  v17 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:2.0 stiffness:350.0 damping:31.749 initialVelocity:{0.0, 0.0}];
  v3 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v17 timingParameters:0.0];
  v4 = swift_allocObject();
  *(v4 + 16) = v0;
  *(v4 + 24) = v2;
  v22 = sub_190950A40;
  v23 = v4;
  aBlock = MEMORY[0x1E69E9820];
  v19 = 1107296256;
  v20 = sub_190840E6C;
  v21 = &block_descriptor_232_0;
  v5 = _Block_copy(&aBlock);
  sub_190D50920();
  v6 = v0;

  [v3 addAnimations_];
  _Block_release(v5);
  [v3 startAnimationAfterDelay_];
  v7 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:2.0 stiffness:300.0 damping:39.0 initialVelocity:{0.0, 0.0}];
  v8 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v7 timingParameters:0.0];
  v9 = swift_allocObject();
  *(v9 + 16) = v6;
  *(v9 + 24) = v2;
  v22 = sub_190950A44;
  v23 = v9;
  aBlock = MEMORY[0x1E69E9820];
  v19 = 1107296256;
  v20 = sub_190840E6C;
  v21 = &block_descriptor_238;
  v10 = _Block_copy(&aBlock);
  sub_190D50920();
  v11 = v6;

  [v8 addAnimations_];
  _Block_release(v10);
  [v8 startAnimationAfterDelay_];
  v12 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:2.0 stiffness:300.0 damping:50.0 initialVelocity:{0.0, 0.0}];
  v13 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v12 timingParameters:0.0];
  v14 = swift_allocObject();
  *(v14 + 16) = v11;
  *(v14 + 24) = v2;
  v22 = sub_190950A48;
  v23 = v14;
  aBlock = MEMORY[0x1E69E9820];
  v19 = 1107296256;
  v20 = sub_190840E6C;
  v21 = &block_descriptor_244;
  v15 = _Block_copy(&aBlock);
  sub_190D50920();
  v16 = v11;

  [v13 addAnimations_];
  _Block_release(v15);
  [v13 startAnimationAfterDelay_];
  sub_19094FFB0(*&v16[OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_pickerPill], 0.05, 1.07);
}

void sub_19094D724(uint64_t a1, double *a2)
{
  v3 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_emojiTail);
  swift_beginAccess();
  v4 = a2[10];
  v5 = a2[11];
  v6 = a2[13];
  [v3 setBounds_];
  [v3 setCenter_];
  v7 = [v3 layer];
  [v7 setCornerRadius_];
}

void sub_19094D7EC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_mediumTail);
  swift_beginAccess();
  [v3 bounds];
  [v3 setBounds_];
  v4 = [v3 layer];
  [v4 setCornerRadius_];
}

void sub_19094D8A0(uint64_t a1, double *a2)
{
  v4 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_mediumTail);
  swift_beginAccess();
  [v4 setCenter_];
  v5 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_smallTail);
  swift_beginAccess();
  v6 = a2[26];
  v7 = a2[27];
  v8 = a2[29];
  [v5 setBounds_];
  [v5 setCenter_];
  v9 = [v5 layer];
  [v9 setCornerRadius_];
}

void sub_19094D9A4(double *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_pickerPill);
  v4 = [v3 layer];
  v5 = sub_190D51C70();
  v6 = sub_190D56ED0();
  [v4 setValue:v5 forKeyPath:v6];

  v34 = *(v1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_emojiTail);
  v7 = [v34 &selRef_lastContentSizeInterfaceOrientation];
  v8 = sub_190D51C70();
  v9 = sub_190D56ED0();
  [v7 &selRef:v8 setViewControllers:v9 direction:? animated:? completion:?];

  v10 = *(v1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_mediumTail);
  v11 = [v10 &selRef_lastContentSizeInterfaceOrientation];
  v12 = sub_190D51C70();
  v13 = sub_190D56ED0();
  [v11 &selRef:v12 setViewControllers:v13 direction:? animated:? completion:?];

  v14 = *(v1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_smallTail);
  v15 = [v14 &selRef_lastContentSizeInterfaceOrientation];
  v16 = sub_190D51C70();
  v17 = sub_190D56ED0();
  [v15 &selRef:v16 setViewControllers:v17 direction:? animated:? completion:?];

  swift_beginAccess();
  v18 = a1[2];
  v19 = a1[3];
  v20 = a1[5];
  [v3 setBounds_];
  [v3 setCenter_];
  v21 = [v3 &selRef_lastContentSizeInterfaceOrientation];
  [v21 setCornerRadius_];

  swift_beginAccess();
  v22 = a1[10];
  v23 = a1[11];
  v24 = a1[13];
  [v34 setBounds_];
  [v34 setCenter_];
  v25 = [v34 &selRef_lastContentSizeInterfaceOrientation];
  [v25 setCornerRadius_];

  swift_beginAccess();
  v26 = a1[18];
  v27 = a1[19];
  v28 = a1[21];
  [v10 setBounds_];
  [v10 setCenter_];
  v29 = [v10 &selRef_lastContentSizeInterfaceOrientation];
  [v29 setCornerRadius_];

  swift_beginAccess();
  v30 = a1[26];
  v31 = a1[27];
  v32 = a1[29];
  [v14 setBounds_];
  [v14 setCenter_];
  v33 = [v14 &selRef_lastContentSizeInterfaceOrientation];
  [v33 setCornerRadius_];
}

void sub_19094DD88(char a1)
{
  v3 = *&v1[OBJC_IVAR____TtC7ChatKit26TapbackPickerContainerView_displayConfiguration];
  type metadata accessor for TapbackPickerEmojiInputLayout();
  swift_allocObject();
  v4 = sub_1909DC4F8(v3);
  *&v1[OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_activeLayout] = v4;
  sub_190D50920();

  if (a1)
  {
    v48 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:2.0 stiffness:360.0 damping:45.0 initialVelocity:{0.0, 0.0}];
    v5 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v48 timingParameters:0.0];
    v6 = swift_allocObject();
    *(v6 + 16) = v1;
    *(v6 + 24) = v4;
    v53 = sub_190950A2C;
    v54 = v6;
    aBlock = MEMORY[0x1E69E9820];
    v50 = 1107296256;
    v51 = sub_190840E6C;
    v52 = &block_descriptor_184;
    v7 = _Block_copy(&aBlock);
    sub_190D50920();
    v8 = v1;

    v47 = v5;
    [v5 addAnimations_];
    _Block_release(v7);
    [v5 startAnimationAfterDelay_];
    v46 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) &selRef:1.0 initWithActivityItems:84.3138 applicationActivities:{14.6197, 0.0, 0.0} + 3];
    v9 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v46 timingParameters:0.0];
    v10 = swift_allocObject();
    *(v10 + 16) = v8;
    *(v10 + 24) = v4;
    v53 = sub_190950A30;
    v54 = v10;
    aBlock = MEMORY[0x1E69E9820];
    v50 = 1107296256;
    v51 = sub_190840E6C;
    v52 = &block_descriptor_190;
    v11 = _Block_copy(&aBlock);
    sub_190D50920();
    v12 = v8;

    v45 = v9;
    [v9 addAnimations_];
    _Block_release(v11);
    [v9 startAnimationAfterDelay_];
    v44 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:2.0 stiffness:300.0 damping:39.0 initialVelocity:{0.0, 0.0}];
    v13 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v44 timingParameters:0.0];
    v14 = swift_allocObject();
    *(v14 + 16) = v12;
    *(v14 + 24) = v4;
    v53 = sub_1909502C8;
    v54 = v14;
    aBlock = MEMORY[0x1E69E9820];
    v50 = 1107296256;
    v51 = sub_190840E6C;
    v52 = &block_descriptor_196;
    v15 = _Block_copy(&aBlock);
    sub_190D50920();
    v16 = v12;

    v43 = v13;
    [v13 addAnimations_];
    _Block_release(v15);
    [v13 startAnimationAfterDelay_];
    v42 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:2.0 stiffness:300.0 damping:39.0 initialVelocity:{0.0, 0.0}];
    v17 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v42 timingParameters:0.0];
    v18 = swift_allocObject();
    *(v18 + 16) = v16;
    *(v18 + 24) = v4;
    v53 = sub_190950A34;
    v54 = v18;
    aBlock = MEMORY[0x1E69E9820];
    v50 = 1107296256;
    v51 = sub_190840E6C;
    v52 = &block_descriptor_202;
    v19 = _Block_copy(&aBlock);
    sub_190D50920();
    v20 = v16;

    v41 = v17;
    [v17 addAnimations_];
    _Block_release(v19);
    [v17 startAnimationAfterDelay_];
    v40 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:2.0 stiffness:300.0 damping:39.0 initialVelocity:{0.0, 0.0}];
    v21 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v40 timingParameters:0.0];
    v22 = swift_allocObject();
    *(v22 + 16) = v20;
    *(v22 + 24) = v4;
    v53 = sub_190950A38;
    v54 = v22;
    aBlock = MEMORY[0x1E69E9820];
    v50 = 1107296256;
    v51 = sub_190840E6C;
    v52 = &block_descriptor_208;
    v23 = _Block_copy(&aBlock);
    sub_190D50920();
    v24 = v20;

    [v21 addAnimations_];
    _Block_release(v23);
    [v21 startAnimationAfterDelay_];
    v39 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:2.0 stiffness:300.0 damping:39.0 initialVelocity:{0.0, 0.0}];
    v25 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v39 timingParameters:0.0];
    v26 = swift_allocObject();
    *(v26 + 16) = v24;
    *(v26 + 24) = v4;
    v53 = sub_190950A3C;
    v54 = v26;
    aBlock = MEMORY[0x1E69E9820];
    v50 = 1107296256;
    v51 = sub_190840E6C;
    v52 = &block_descriptor_214;
    v27 = _Block_copy(&aBlock);
    sub_190D50920();
    v28 = v24;

    [v25 addAnimations_];
    _Block_release(v27);
    [v25 startAnimationAfterDelay_];
    v38 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) &selRef:2.0 initWithActivityItems:300.0 applicationActivities:{39.0, 0.0, 0.0} + 3];
    v29 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v38 timingParameters:0.0];
    v30 = swift_allocObject();
    *(v30 + 16) = v28;
    *(v30 + 24) = v4;
    v53 = sub_190950A54;
    v54 = v30;
    aBlock = MEMORY[0x1E69E9820];
    v50 = 1107296256;
    v51 = sub_190840E6C;
    v52 = &block_descriptor_220;
    v31 = _Block_copy(&aBlock);
    sub_190D50920();
    v32 = v28;

    [v29 addAnimations_];
    _Block_release(v31);
    [v29 startAnimationAfterDelay_];
    v33 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:2.0 stiffness:300.0 damping:39.0 initialVelocity:{0.0, 0.0}];
    v34 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v33 timingParameters:0.0];
    v35 = swift_allocObject();
    *(v35 + 16) = v32;
    *(v35 + 24) = v4;
    v53 = sub_1909502D0;
    v54 = v35;
    aBlock = MEMORY[0x1E69E9820];
    v50 = 1107296256;
    v51 = sub_190840E6C;
    v52 = &block_descriptor_226_0;
    v36 = _Block_copy(&aBlock);
    sub_190D50920();
    v37 = v32;

    [v34 addAnimations_];
    _Block_release(v36);
    [v34 startAnimationAfterDelay_];
  }

  else
  {
    sub_19094D9A4(v4);
  }
}

void sub_19094E7BC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_emojiTail);
  swift_beginAccess();
  [v3 center];
  [v3 setCenter_];
  [v3 bounds];
  [v3 setBounds_];
  v4 = [v3 layer];
  [v4 setCornerRadius_];
}

id sub_19094E898(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_smallTail);
  swift_beginAccess();
  [v1 center];
  return [v1 setCenter_];
}

void sub_19094E910(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_smallTail);
  swift_beginAccess();
  [v3 bounds];
  [v3 setBounds_];
  v4 = [v3 layer];
  [v4 setCornerRadius_];
}

void sub_19094E9C4(char a1)
{
  v2 = v1;
  v3 = *&v1[OBJC_IVAR____TtC7ChatKit26TapbackPickerContainerView_displayConfiguration];
  if (a1)
  {
    type metadata accessor for TapbackPickerSelectionLayout();
    swift_allocObject();
    v4 = sub_1909DBC0C(v3);
  }

  else
  {
    type metadata accessor for TapbackPickerSuggestionsScrolledLayout();
    swift_allocObject();
    v4 = sub_1909DD19C(v3);
  }

  v5 = v4;
  *&v1[OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_activeLayout] = v4;
  sub_190D50920();

  v6 = *&v1[OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_smallTail];
  swift_beginAccess();
  [v6 bounds];
  [v6 setBounds_];
  v7 = [v6 layer];
  [v7 setCornerRadius_];

  v8 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:2.0 stiffness:300.0 damping:39.0 initialVelocity:{0.0, 0.0}];
  v9 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v8 timingParameters:0.0];
  v10 = swift_allocObject();
  *(v10 + 16) = v2;
  *(v10 + 24) = v5;
  v49 = sub_190950264;
  v50 = v10;
  aBlock = MEMORY[0x1E69E9820];
  v46 = 1107296256;
  v47 = sub_190840E6C;
  v48 = &block_descriptor_136;
  v11 = _Block_copy(&aBlock);
  sub_190D50920();
  v12 = v2;

  v44 = v9;
  [v9 addAnimations_];
  _Block_release(v11);
  [v9 startAnimationAfterDelay_];
  v13 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v8 timingParameters:0.0];
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  *(v14 + 24) = v5;
  v49 = sub_190950280;
  v50 = v14;
  aBlock = MEMORY[0x1E69E9820];
  v46 = 1107296256;
  v47 = sub_190840E6C;
  v48 = &block_descriptor_142_0;
  v15 = _Block_copy(&aBlock);
  sub_190D50920();
  v16 = v12;

  v43 = v13;
  [v13 addAnimations_];
  _Block_release(v15);
  [v13 startAnimationAfterDelay_];
  v17 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v8 timingParameters:0.0];
  v18 = swift_allocObject();
  *(v18 + 16) = v16;
  *(v18 + 24) = v5;
  v49 = sub_190950A58;
  v50 = v18;
  aBlock = MEMORY[0x1E69E9820];
  v46 = 1107296256;
  v47 = sub_190840E6C;
  v48 = &block_descriptor_148;
  v19 = _Block_copy(&aBlock);
  sub_190D50920();
  v20 = v16;

  v42 = v17;
  [v17 addAnimations_];
  _Block_release(v19);
  [v17 startAnimationAfterDelay_];
  v21 = v8;
  v22 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v8 timingParameters:0.0];
  v23 = swift_allocObject();
  *(v23 + 16) = v20;
  *(v23 + 24) = v5;
  v49 = sub_19095029C;
  v50 = v23;
  aBlock = MEMORY[0x1E69E9820];
  v46 = 1107296256;
  v47 = sub_190840E6C;
  v48 = &block_descriptor_154;
  v24 = _Block_copy(&aBlock);
  sub_190D50920();
  v25 = v20;

  [v22 addAnimations_];
  _Block_release(v24);
  [v22 startAnimationAfterDelay_];
  v26 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v21 timingParameters:0.0];
  v27 = swift_allocObject();
  *(v27 + 16) = v25;
  *(v27 + 24) = v5;
  v49 = sub_190950A34;
  v50 = v27;
  aBlock = MEMORY[0x1E69E9820];
  v46 = 1107296256;
  v47 = sub_190840E6C;
  v48 = &block_descriptor_160;
  v28 = _Block_copy(&aBlock);
  sub_190D50920();
  v29 = v25;

  [v26 addAnimations_];
  _Block_release(v28);
  [v26 startAnimationAfterDelay_];
  v30 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v21 timingParameters:0.0];
  v31 = swift_allocObject();
  *(v31 + 16) = v29;
  *(v31 + 24) = v5;
  v49 = sub_1909502A4;
  v50 = v31;
  aBlock = MEMORY[0x1E69E9820];
  v46 = 1107296256;
  v47 = sub_190840E6C;
  v48 = &block_descriptor_166;
  v32 = _Block_copy(&aBlock);
  sub_190D50920();
  v33 = v29;

  [v30 addAnimations_];
  _Block_release(v32);
  [v30 startAnimationAfterDelay_];
  v34 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v21 timingParameters:0.0];
  v35 = swift_allocObject();
  *(v35 + 16) = v33;
  *(v35 + 24) = v5;
  v49 = sub_190950A3C;
  v50 = v35;
  aBlock = MEMORY[0x1E69E9820];
  v46 = 1107296256;
  v47 = sub_190840E6C;
  v48 = &block_descriptor_172_0;
  v36 = _Block_copy(&aBlock);
  sub_190D50920();
  v37 = v33;

  [v34 addAnimations_];
  _Block_release(v36);
  [v34 startAnimationAfterDelay_];
  v38 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v21 timingParameters:0.0];
  v39 = swift_allocObject();
  *(v39 + 16) = v37;
  *(v39 + 24) = v5;
  v49 = sub_1909502C0;
  v50 = v39;
  aBlock = MEMORY[0x1E69E9820];
  v46 = 1107296256;
  v47 = sub_190840E6C;
  v48 = &block_descriptor_178;
  v40 = _Block_copy(&aBlock);
  sub_190D50920();
  v41 = v37;

  [v38 addAnimations_];
  _Block_release(v40);
  [v38 startAnimationAfterDelay_];
}

void sub_19094F2BC(uint64_t a1, double *a2)
{
  v3 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_pickerPill);
  swift_beginAccess();
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[5];
  [v3 setBounds_];
  [v3 setCenter_];
  v7 = [v3 layer];
  [v7 setCornerRadius_];
}

id sub_19094F384(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_emojiTail);
  swift_beginAccess();
  v4 = *(a2 + 80);
  [v3 center];
  return [v3 setCenter_];
}

id sub_19094F3FC(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_emojiTail);
  swift_beginAccess();
  [v1 center];
  return [v1 setCenter_];
}

void sub_19094F474(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_emojiTail);
  swift_beginAccess();
  [v3 bounds];
  [v3 setBounds_];
  v4 = [v3 layer];
  [v4 setCornerRadius_];
}

id sub_19094F528(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_mediumTail);
  swift_beginAccess();
  v4 = *(a2 + 144);
  [v3 center];
  return [v3 setCenter_];
}

void sub_19094F5A0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_mediumTail);
  swift_beginAccess();
  [v3 center];
  [v3 setCenter_];
  [v3 bounds];
  [v3 setBounds_];
  v4 = [v3 layer];
  [v4 setCornerRadius_];
}

id sub_19094F67C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_smallTail);
  swift_beginAccess();
  v4 = *(a2 + 208);
  [v3 center];
  return [v3 setCenter_];
}

void sub_19094F6F4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_smallTail);
  swift_beginAccess();
  [v4 center];
  [v4 setCenter_];
  v5 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_emojiTail);
  swift_beginAccess();
  v6 = *(a2 + 104) * 0.5;
  [v5 setBounds_];
  v7 = [v5 layer];
  [v7 setCornerRadius_];
}

void sub_19094F7F4(void *a1)
{
  v1 = [a1 layer];
  v2 = sub_190D51C70();
  v3 = sub_190D56ED0();
  [v1 setValue:v2 forKeyPath:v3];
}

void sub_19094F89C(void *a1)
{
  v1 = [a1 layer];
  v2 = sub_190D51C70();
  v3 = sub_190D56ED0();
  [v1 setValue:v2 forKeyPath:v3];
}

void sub_19094F938()
{
  sub_19094FFB0(*(v0 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_pickerPill), 0.15, 1.25);
  sub_19094FFB0(*(v0 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_emojiTail), 0.2, 1.35);
  sub_19094FFB0(*(v0 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_mediumTail), 0.25, 1.45);
  v1 = *(v0 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_smallTail);

  sub_19094FFB0(v1, 0.3, 1.55);
}

void sub_19094F9DC()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC7ChatKit26TapbackPickerContainerView_displayConfiguration];
  type metadata accessor for TapbackPickerSuggestionsScrolledLayout();
  swift_allocObject();
  v3 = sub_1909DD19C(v2);
  v4 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:1.0 stiffness:275.0 damping:25.0217 initialVelocity:{0.0, 0.0}];
  v5 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v4 timingParameters:0.0];
  v6 = swift_allocObject();
  *(v6 + 16) = v1;
  *(v6 + 24) = v3;
  v9[4] = sub_19095025C;
  v9[5] = v6;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_190840E6C;
  v9[3] = &block_descriptor_130;
  v7 = _Block_copy(v9);
  v8 = v1;
  sub_190D50920();

  [v5 addAnimations_];
  _Block_release(v7);
  [v5 startAnimationAfterDelay_];
}

void sub_19094FB7C(uint64_t a1, double *a2)
{
  v4 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_pickerPill);
  swift_beginAccess();
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[5];
  [v4 setBounds_];
  [v4 setCenter_];
  v8 = [v4 layer];
  [v8 setCornerRadius_];

  v9 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_emojiTail);
  swift_beginAccess();
  v10 = a2[10];
  v11 = a2[11];
  v12 = a2[13];
  [v9 setBounds_];
  [v9 setCenter_];
  v13 = [v9 layer];
  [v13 setCornerRadius_];

  v14 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_mediumTail);
  swift_beginAccess();
  v15 = a2[18];
  v16 = a2[19];
  v17 = a2[21];
  [v14 setBounds_];
  [v14 setCenter_];
  v18 = [v14 layer];
  [v18 setCornerRadius_];

  v19 = *(a1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_smallTail);
  swift_beginAccess();
  v20 = a2[26];
  v21 = a2[27];
  v22 = a2[29];
  [v19 setBounds_];
  [v19 setCenter_];
  v23 = [v19 layer];
  [v23 setCornerRadius_];
}

void sub_19094FDD4()
{

  v1 = *(v0 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_gyroSpring);
}

id sub_19094FF54(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_19094FFB0(void *a1, double a2, double a3)
{
  v6 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:5.0 stiffness:300.0 damping:50.0 initialVelocity:{0.0, 0.0}];
  v7 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v6 timingParameters:0.0];
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a3;
  v20 = sub_190950248;
  v21 = v8;
  v16 = MEMORY[0x1E69E9820];
  v17 = 1107296256;
  v18 = sub_190840E6C;
  v19 = &block_descriptor_41;
  v9 = _Block_copy(&v16);
  v10 = a1;

  [v7 addAnimations_];
  _Block_release(v9);
  [v7 startAnimationAfterDelay_];
  v11 = [objc_allocWithZone(MEMORY[0x1E69DCF88]) initWithMass:5.0 stiffness:300.0 damping:50.0 initialVelocity:{0.0, 0.0}];
  v12 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v11 timingParameters:0.0];
  v13 = swift_allocObject();
  *(v13 + 16) = v10;
  v20 = sub_190950254;
  v21 = v13;
  v16 = MEMORY[0x1E69E9820];
  v17 = 1107296256;
  v18 = sub_190840E6C;
  v19 = &block_descriptor_124;
  v14 = _Block_copy(&v16);
  v15 = v10;

  [v12 addAnimations_];
  _Block_release(v14);
  [v12 startAnimationAfterDelay_];
}

id sub_19095039C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_smallTail);
  swift_beginAccess();
  return [v3 setCenter_];
}

id sub_1909503F8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_mediumTail);
  swift_beginAccess();
  return [v3 setCenter_];
}

id sub_190950454()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_emojiTail);
  swift_beginAccess();
  return [v3 setCenter_];
}

uint64_t objectdestroy_378Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t objectdestroy_384Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

id sub_190950630()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC7ChatKit24TapbackPickerBalloonView_pickerPill);
  swift_beginAccess();
  return [v3 setCenter_];
}

id sub_190950724()
{
  result = *(*(v0 + 16) + OBJC_IVAR____TtC7ChatKit26TapbackPickerContainerView_backingBalloon);
  if (result)
  {
    return [result setAlpha_];
  }

  return result;
}

uint64_t objectdestroy_126Tm(uint64_t a1)
{

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

void sub_190950C14(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD57940);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v19 - v8;
  v10 = sub_190D57FB0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 56);
  v12(v9, 1, 1, v10);
  sub_19022EEA4(v9, &unk_1EAD57940);
  v12(v9, 1, 1, v10);
  sub_1908DD2DC(v9, v7);
  if ((*(v11 + 48))(v7, 1, v10) == 1)
  {
    sub_19022EEA4(v7, &unk_1EAD57940);
    sub_190D57F70();
    sub_19022EEA4(v9, &unk_1EAD57940);
  }

  else
  {
    sub_19022EEA4(v9, &unk_1EAD57940);
    (*(v11 + 32))(a1, v7, v10);
  }

  v13 = [objc_opt_self() configurationWithPointSize:5 weight:2 scale:16.0];
  v14 = sub_190D56ED0();
  v15 = [objc_opt_self() systemImageNamed_];

  if (v15)
  {
    v16 = [v15 imageWithConfiguration_];

    v17 = v16;
    sub_190D57F60();
    v18 = *(v2 + OBJC_IVAR___CKGlassCancelAudioRecordingButton_foregroundColor);
    sub_190D57F00();
  }

  else
  {
    __break(1u);
  }
}

id GlassCancelAudioRecordingButton.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id GlassCancelAudioRecordingButton.init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD57940);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = aBlock - v10;
  v12 = OBJC_IVAR___CKGlassCancelAudioRecordingButton_foregroundColor;
  *&v4[v12] = [objc_opt_self() labelColor];
  v13 = type metadata accessor for GlassCancelAudioRecordingButton();
  v25.receiver = v4;
  v25.super_class = v13;
  v14 = objc_msgSendSuper2(&v25, sel_initWithFrame_, a1, a2, a3, a4);
  [v14 ck_applyGlassBackground];
  aBlock[4] = sub_190951248;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_19084156C;
  aBlock[3] = &block_descriptor_42;
  v15 = _Block_copy(aBlock);
  [v14 setConfigurationUpdateHandler_];
  _Block_release(v15);
  sub_190950C14(v11);
  v16 = sub_190D57FB0();
  (*(*(v16 - 8) + 56))(v11, 0, 1, v16);
  sub_190D57FE0();

  v17 = [objc_allocWithZone(MEMORY[0x1E6979378]) initWithType_];
  v18 = sub_190D574E0();
  [v17 setValue:v18 forKey:*MEMORY[0x1E6979BA8]];

  v19 = [v14 layer];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53C90);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_190DD1D90;
  *(v20 + 56) = sub_1909515A4();
  *(v20 + 32) = v17;
  v21 = v17;
  v22 = sub_190D57160();

  [v19 setFilters_];

  return v14;
}

uint64_t sub_190951248(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD57940);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v20 - v6;
  v8 = sub_190D57FB0();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for GlassCancelAudioRecordingButton();
  result = swift_dynamicCastClass();
  if (result)
  {
    v13 = result;
    v14 = a1;
    sub_190D57FD0();
    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {

      return sub_19022EEA4(v7, &unk_1EAD57940);
    }

    (*(v9 + 32))(v11, v7, v8);
    v15 = [v13 layer];
    v16 = sub_190D56ED0();
    v17 = [v15 valueForKeyPath_];

    if (v17)
    {
      sub_190D58140();
      swift_unknownObjectRelease();
    }

    else
    {
      v21 = 0u;
      v22 = 0u;
    }

    v23[0] = v21;
    v23[1] = v22;
    if (*(&v22 + 1))
    {
      if ((swift_dynamicCast() & 1) != 0 && v20[1] == 0.0)
      {
        v18 = *&v13[OBJC_IVAR___CKGlassCancelAudioRecordingButton_foregroundColor];
LABEL_13:
        sub_190D57F00();
        (*(v9 + 16))(v5, v11, v8);
        (*(v9 + 56))(v5, 0, 1, v8);
        sub_190D57FE0();

        return (*(v9 + 8))(v11, v8);
      }
    }

    else
    {
      sub_19022EEA4(v23, &unk_1EAD551C0);
    }

    v19 = [objc_opt_self() clearColor];
    goto LABEL_13;
  }

  return result;
}

unint64_t sub_1909515A4()
{
  result = qword_1ED7769D0;
  if (!qword_1ED7769D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED7769D0);
  }

  return result;
}

uint64_t sub_1909517A4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (a1 == 0xD000000000000020 && 0x8000000190E5F000 == a2 || (sub_190D58760() & 1) != 0)
    {
      return 1;
    }

    v4 = sub_190D56ED0();
  }

  else
  {
    v4 = 0;
  }

  v6.receiver = v2;
  v6.super_class = type metadata accessor for GlassCancelAudioRecordingButton();
  v5 = objc_msgSendSuper2(&v6, sel__shouldAnimatePropertyWithKey_, v4);

  return v5;
}

id sub_1909518D0()
{
  v1 = [v0 layer];
  v2 = sub_190D51C70();
  v3 = sub_190D56ED0();
  [v1 setValue:v2 forKeyPath:v3];

  return [v0 setNeedsUpdateConfiguration];
}

id GlassCancelAudioRecordingButton.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GlassCancelAudioRecordingButton();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for DetailsLinksTabView()
{
  result = qword_1EAD57628;
  if (!qword_1EAD57628)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_190951B5C()
{
  sub_190D52850();
  if (v0 <= 0x3F)
  {
    sub_190951D10(319, &qword_1EAD57638, _s9ViewModelCMa_3, MEMORY[0x1E6981790]);
    if (v1 <= 0x3F)
    {
      sub_190951D10(319, &qword_1EAD52C10, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
      if (v2 <= 0x3F)
      {
        sub_190951D10(319, &qword_1EAD5F6C0, MEMORY[0x1E697E7E0], MEMORY[0x1E697DCC0]);
        if (v3 <= 0x3F)
        {
          sub_190951D10(319, &qword_1EAD57640, MEMORY[0x1E697E178], MEMORY[0x1E697DCC0]);
          if (v4 <= 0x3F)
          {
            sub_190951D74();
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

void sub_190951D10(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_190951D74()
{
  if (!qword_1EAD57648)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EAD55F20);
    v0 = sub_190D56000();
    if (!v1)
    {
      atomic_store(v0, &qword_1EAD57648);
    }
  }
}

uint64_t sub_190951E20@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_190D54800();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5F690);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for DetailsLinksTabView();
  sub_19022FD14(v1 + *(v10 + 32), v9, &qword_1EAD5F690);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_190D54190();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_190D576B0();
    v13 = sub_190D55260();
    sub_190D52F50();

    sub_190D547F0();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_190952028@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_190D54800();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57650);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for DetailsLinksTabView();
  sub_19022FD14(v1 + *(v10 + 36), v9, &qword_1EAD57650);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_190D53DF0();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_190D576B0();
    v13 = sub_190D55260();
    sub_190D52F50();

    sub_190D547F0();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_190952230@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v15[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57658);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v15 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57660);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v15 - v11;
  v15[4] = a2;
  v15[5] = a1;
  sub_190D50920();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57668);
  sub_190233640(&qword_1EAD57670, &qword_1EAD57668);
  sub_190D52590();
  v13 = sub_190233640(&qword_1EAD57678, &qword_1EAD57658);
  sub_190D557E0();
  (*(v6 + 8))(v8, v5);
  v15[6] = v5;
  v15[7] = v13;
  swift_getOpaqueTypeConformance2();
  sub_190D55AA0();
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_1909524EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = sub_190D56500();
  a3[1] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57680);
  return sub_19095254C(a1, a2, (a3 + *(v7 + 44)));
}

uint64_t sub_19095254C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  *&v56 = a2;
  v5 = sub_190D54DF0();
  MEMORY[0x1EEE9AC00](v5);
  *&v64 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57688);
  v59 = *(v7 - 8);
  *&v60 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v55 - v8;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57690);
  MEMORY[0x1EEE9AC00](v57);
  v58 = &v55 - v10;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57698);
  v11 = MEMORY[0x1EEE9AC00](v61);
  v63 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v55 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v62 = &v55 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD576A0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v55 - v18;
  type metadata accessor for DetailsLinksTabView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57620);
  sub_190D55FF0();
  sub_190A50638(v56, v19, &v68);
  sub_19022EEA4(v19, &qword_1EAD576A0);
  sub_190D54AD0();
  v65 = a1;
  LODWORD(v67[0]) = 0;
  sub_190956370(&qword_1EAD5AB40, MEMORY[0x1E697FCB0]);
  sub_190D58970();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD576A8);
  sub_190233640(&qword_1EAD576B0, &qword_1EAD576A8);
  sub_190D53A10();
  v20 = sub_190D552A0();
  sub_190D525F0();
  v22 = v21;
  v23 = 0uLL;
  v64 = 0u;
  v24 = 0uLL;
  if ((v21 & 1) == 0)
  {
    sub_190D539C0();
    *(&v24 + 1) = v25;
    *(&v23 + 1) = v26;
  }

  v55 = v24;
  v56 = v23;
  v27 = v58;
  (*(v59 + 32))(v58, v9, v60);
  v28 = v27 + *(v57 + 36);
  *v28 = v20;
  v29 = v56;
  *(v28 + 24) = v55;
  *(v28 + 8) = v29;
  *(v28 + 40) = v22 & 1;
  v30 = sub_190D552D0();
  sub_190D525E0();
  v32 = v31;
  v33 = 0uLL;
  if ((v31 & 1) == 0)
  {
    sub_190D539C0();
    *(&v33 + 1) = v34;
    *(&v36 + 1) = v35;
    v64 = v36;
  }

  v60 = v33;
  sub_19081E40C(v27, v15, &qword_1EAD57690);
  v37 = v62;
  v38 = &v15[*(v61 + 36)];
  *v38 = v30;
  *(v38 + 24) = v60;
  *(v38 + 8) = v64;
  v38[40] = v32 & 1;
  sub_19081E40C(v15, v37, &qword_1EAD57698);
  v39 = v63;
  sub_19022FD14(v37, v63, &qword_1EAD57698);
  v40 = v79;
  v66[10] = v78;
  v66[11] = v79;
  v41 = v80;
  v42 = v81;
  v66[12] = v80;
  v66[13] = v81;
  v43 = v74;
  v44 = v75;
  v66[6] = v74;
  v66[7] = v75;
  v45 = v76;
  v46 = v77;
  v66[8] = v76;
  v66[9] = v77;
  v47 = v70;
  v48 = v71;
  v66[2] = v70;
  v66[3] = v71;
  v49 = v72;
  v50 = v73;
  v66[4] = v72;
  v66[5] = v73;
  v51 = v68;
  v52 = v69;
  v66[0] = v68;
  v66[1] = v69;
  a3[10] = v78;
  a3[11] = v40;
  a3[12] = v41;
  a3[13] = v42;
  a3[6] = v43;
  a3[7] = v44;
  a3[8] = v45;
  a3[9] = v46;
  a3[2] = v47;
  a3[3] = v48;
  a3[4] = v49;
  a3[5] = v50;
  *a3 = v51;
  a3[1] = v52;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD576B8);
  sub_19022FD14(v39, a3 + *(v53 + 48), &qword_1EAD57698);
  sub_19022FD14(v66, v67, &qword_1EAD576C0);
  sub_19022EEA4(v37, &qword_1EAD57698);
  sub_19022EEA4(v39, &qword_1EAD57698);
  v67[10] = v78;
  v67[11] = v79;
  v67[12] = v80;
  v67[13] = v81;
  v67[6] = v74;
  v67[7] = v75;
  v67[8] = v76;
  v67[9] = v77;
  v67[2] = v70;
  v67[3] = v71;
  v67[4] = v72;
  v67[5] = v73;
  v67[0] = v68;
  v67[1] = v69;
  return sub_19022EEA4(v67, &qword_1EAD576C0);
}

id sub_190952C3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v143 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD576C8);
  v139 = *(v3 - 8);
  v140 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v131 = v123 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD576D0);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v142 = v123 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v141 = v123 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD576D8);
  v144 = *(v9 - 8);
  v145 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v132 = v123 - v10;
  v11 = type metadata accessor for DetailsLinksTabView();
  v147 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v148 = v12;
  v149 = v123 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD576E0);
  v152 = *(v13 - 8);
  v153 = v13;
  v14 = MEMORY[0x1EEE9AC00](v13);
  v151 = v123 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v150 = v123 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD576E8);
  v18 = MEMORY[0x1EEE9AC00](v17 - 8);
  v138 = v123 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v21 = v123 - v20;
  v22 = *(a1 + 8);
  v23 = *(a1 + 16);
  v154 = a1;
  v162 = v22;
  v163 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD576F0);
  sub_190D55FD0();
  v24 = v158;
  swift_getKeyPath();
  v162 = v24;
  sub_190956370(&qword_1EAD576F8, _s9ViewModelCMa_3);
  sub_190D51C20();

  v25 = qword_1EAD5D3B8;
  swift_beginAccess();
  v26 = *&v24[v25];
  sub_190D52690();

  v162 = v22;
  v163 = v23;
  sub_190D55FD0();
  v27 = v158;
  swift_getKeyPath();
  v162 = v27;
  sub_190D51C20();

  v28 = qword_1EAD5D3C0;
  swift_beginAccess();
  v29 = *&v27[v28];
  sub_190D52690();

  if (!*(v26 + 2))
  {

    (*(v144 + 56))(v21, 1, 1, v145);
    if (*(v29 + 2))
    {
      v145 = 0;
      v146 = v21;
      v135 = 0;
      v136 = 0;
      v144 = 0;
      v137 = 0;
      v97 = 0;
      v99 = 0;
      v101 = 0;
      v103 = 0;
      v87 = v154;
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  v133 = v29;
  v146 = v21;
  result = CKFrameworkBundle();
  if (!result)
  {
    __break(1u);
    goto LABEL_12;
  }

  v31 = result;
  v32 = sub_190D56ED0();
  v123[2] = "AB_FILTER_SCREENSHOTS";
  v33 = sub_190D56ED0();
  v34 = [v31 localizedStringForKey:v32 value:0 table:v33];

  v35 = sub_190D56F10();
  v37 = v36;

  v162 = v35;
  v163 = v37;
  v123[1] = sub_19081E484();
  v38 = sub_190D555F0();
  v40 = v39;
  LOBYTE(v33) = v41;
  v42 = sub_190D555B0();
  v44 = v43;
  v46 = v45;
  sub_19081E474(v38, v40, v33 & 1);

  sub_190D55E00();
  v47 = sub_190D55570();
  v135 = v48;
  v136 = v47;
  LOBYTE(v33) = v49;
  v137 = v50;

  sub_19081E474(v42, v44, v46 & 1);

  v134 = sub_190D552E0();
  v51 = v154;
  sub_190D539C0();
  v53 = v52;
  v55 = v54;
  v57 = v56;
  v59 = v58;
  LOBYTE(v38) = v33 & 1;
  v175 = v33 & 1;
  v130 = v33 & 1;
  v172 = 0;
  v162 = v26;
  v60 = v149;
  sub_190956178(v51, v149, type metadata accessor for DetailsLinksTabView);
  v61 = (*(v147 + 80) + 16) & ~*(v147 + 80);
  v62 = swift_allocObject();
  sub_1909561E0(v60, v62 + v61, type metadata accessor for DetailsLinksTabView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57700);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57708);
  sub_190233640(&qword_1EAD57710, &qword_1EAD57700);
  sub_190955B54();
  sub_190956370(&qword_1EAD45BF0, _s4LinkVMa);
  v63 = v150;
  sub_190D56290();
  sub_190D56500();
  sub_190D53C60();
  v128 = v178;
  v129 = v176;
  v126 = v181;
  v127 = v180;
  v157 = 1;
  v156 = v177;
  v155 = v179;
  v64 = v151;
  v65 = v152;
  v66 = *(v152 + 16);
  v67 = v153;
  v66(v151, v63, v153);
  LOBYTE(v60) = v157;
  v124 = v156;
  v125 = v155;
  *&v158 = v136;
  *(&v158 + 1) = v135;
  LOBYTE(v159) = v38;
  *(&v159 + 1) = *v174;
  DWORD1(v159) = *&v174[3];
  *(&v159 + 1) = v137;
  LOBYTE(v160) = v134;
  *(&v160 + 1) = *v173;
  DWORD1(v160) = *&v173[3];
  *(&v160 + 1) = v53;
  *&v161[0] = v55;
  *(&v161[0] + 1) = v57;
  *&v161[1] = v59;
  BYTE8(v161[1]) = 0;
  v68 = v158;
  v69 = v159;
  v70 = v132;
  *(v132 + 57) = *(v161 + 9);
  v71 = v161[0];
  *(v70 + 2) = v160;
  *(v70 + 3) = v71;
  *v70 = v68;
  *(v70 + 1) = v69;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57758);
  v66(&v70[*(v72 + 48)], v64, v67);
  v73 = &v70[*(v72 + 64)];
  *v73 = 0;
  v73[8] = v60;
  *(v73 + 2) = v129;
  v73[24] = v124;
  *(v73 + 4) = v128;
  v73[40] = v125;
  v74 = v126;
  *(v73 + 6) = v127;
  *(v73 + 7) = v74;
  sub_19022FD14(&v158, &v162, &qword_1EAD596C0);
  v75 = *(v65 + 8);
  v75(v63, v67);
  v75(v64, v67);
  v162 = v136;
  v163 = v135;
  LOBYTE(v164) = v130;
  *(&v164 + 1) = *v174;
  HIDWORD(v164) = *&v174[3];
  v165 = v137;
  LOBYTE(v166) = v134;
  *(&v166 + 1) = *v173;
  HIDWORD(v166) = *&v173[3];
  v167 = v53;
  v168 = v55;
  v169 = v57;
  v170 = v59;
  v171 = 0;
  sub_19022EEA4(&v162, &qword_1EAD596C0);
  v21 = v146;
  sub_19081E40C(v70, v146, &qword_1EAD576D8);
  (*(v144 + 56))(v21, 0, 1, v145);
  if (!*(v133 + 2))
  {
LABEL_9:

    v118 = v141;
    (*(v139 + 56))(v141, 1, 1, v140);
    goto LABEL_10;
  }

  result = CKFrameworkBundle();
  if (result)
  {
    v76 = result;
    v77 = sub_190D56ED0();
    v78 = sub_190D56ED0();
    v79 = [v76 localizedStringForKey:v77 value:0 table:v78];

    v80 = sub_190D56F10();
    v82 = v81;

    v162 = v80;
    v163 = v82;
    v83 = sub_190D555F0();
    v85 = v84;
    LOBYTE(v78) = v86;
    v87 = v154;
    v88 = sub_190D555B0();
    v90 = v89;
    v92 = v91;
    sub_19081E474(v83, v85, v78 & 1);

    sub_190D55E00();
    v135 = sub_190D55570();
    v144 = v94;
    v145 = v93;
    LOBYTE(v78) = v95;

    sub_19081E474(v88, v90, v92 & 1);

    LOBYTE(v83) = sub_190D552E0();
    sub_190D539C0();
    v97 = v96;
    v99 = v98;
    v101 = v100;
    v103 = v102;
    LOBYTE(v162) = v78 & 1;
    LOBYTE(v158) = 0;
    v137 = v78 & 1;
    v136 = v83;
    v29 = v133;
LABEL_8:
    v162 = v29;
    v104 = v149;
    sub_190956178(v87, v149, type metadata accessor for DetailsLinksTabView);
    v105 = (*(v147 + 80) + 16) & ~*(v147 + 80);
    v106 = swift_allocObject();
    sub_1909561E0(v104, v106 + v105, type metadata accessor for DetailsLinksTabView);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57700);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57708);
    sub_190233640(&qword_1EAD57710, &qword_1EAD57700);
    sub_190955B54();
    sub_190956370(&qword_1EAD45BF0, _s4LinkVMa);
    v107 = v150;
    sub_190D56290();
    v109 = v151;
    v108 = v152;
    v110 = *(v152 + 16);
    v111 = v153;
    v110(v151, v107, v153);
    v112 = v135;
    *&v158 = v135;
    *(&v158 + 1) = v145;
    *&v159 = v137;
    *(&v159 + 1) = v144;
    *&v160 = v136;
    *(&v160 + 1) = v97;
    *&v161[0] = v99;
    *(&v161[0] + 1) = v101;
    *&v161[1] = v103;
    BYTE8(v161[1]) = 0;
    v113 = v161[0];
    v114 = v131;
    *(v131 + 2) = v160;
    v114[3] = v113;
    *(v114 + 57) = *(v161 + 9);
    v115 = v159;
    *v114 = v158;
    v114[1] = v115;
    v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57760);
    v110(v114 + *(v116 + 48), v109, v111);
    sub_19022FD14(&v158, &v162, &qword_1EAD57768);
    v117 = *(v108 + 8);
    v117(v107, v111);
    v117(v109, v111);
    v162 = v112;
    v163 = v145;
    v164 = v137;
    v165 = v144;
    v166 = v136;
    v167 = v97;
    v168 = v99;
    v169 = v101;
    v170 = v103;
    v171 = 0;
    sub_19022EEA4(&v162, &qword_1EAD57768);
    v118 = v141;
    sub_19081E40C(v114, v141, &qword_1EAD576C8);
    (*(v139 + 56))(v118, 0, 1, v140);
    v21 = v146;
LABEL_10:
    v119 = v138;
    sub_19022FD14(v21, v138, &qword_1EAD576E8);
    v120 = v142;
    sub_19022FD14(v118, v142, &qword_1EAD576D0);
    v121 = v143;
    sub_19022FD14(v119, v143, &qword_1EAD576E8);
    v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57770);
    sub_19022FD14(v120, v121 + *(v122 + 48), &qword_1EAD576D0);
    sub_19022EEA4(v118, &qword_1EAD576D0);
    sub_19022EEA4(v21, &qword_1EAD576E8);
    sub_19022EEA4(v120, &qword_1EAD576D0);
    return sub_19022EEA4(v119, &qword_1EAD576E8);
  }

LABEL_12:
  __break(1u);
  return result;
}

char *sub_190953BE4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v75 = a3;
  v5 = _s4LinkVMa(0);
  v89 = *(v5 - 8);
  v88 = *(v89 + 64);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v92 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v86 = &v75 - v8;
  v9 = type metadata accessor for DetailsLinksTabView();
  v85 = *(v9 - 8);
  v84 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v83 = &v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57730);
  MEMORY[0x1EEE9AC00](v82);
  v12 = &v75 - v11;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57728) - 8;
  MEMORY[0x1EEE9AC00](v87);
  v90 = &v75 - v13;
  v95 = _s4LinkVMa;
  v77 = a1;
  sub_190956178(a1, v12, _s4LinkVMa);
  v81 = a2;
  v14 = *(a2 + 16);
  *&v108 = *(a2 + 8);
  *(&v108 + 1) = v14;
  v15 = v108;
  v16 = v14;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD576F0);
  sub_190D55FD0();
  v17 = v105;
  v78 = *&v105[qword_1EAD629A0];
  v18 = v78;

  *&v108 = v15;
  *(&v108 + 1) = v16;
  sub_190D55FD0();
  v19 = v105;
  v103 = v5;
  v94 = v5;
  v20 = sub_190956370(&qword_1EAD555A8, _s4LinkVMa);
  v104 = v20;
  v80 = v20;
  swift_getKeyPath();
  *&v108 = v19;
  v79 = sub_190233640(&qword_1EAD566C0, &qword_1EAD566C8);
  sub_190D51C20();

  v21 = *&v19[qword_1EAD629B8];
  sub_190D52690();

  v76 = sub_190A4FBAC(a1, v21);

  v93 = v15;
  *&v108 = v15;
  *(&v108 + 1) = v16;
  v22 = v16;
  v91 = v16;
  sub_190D55FD0();
  v23 = v105;
  v101 = v5;
  v102 = v20;
  swift_getKeyPath();
  *&v108 = v23;
  sub_190D51C20();

  LOBYTE(v5) = v23[qword_1EAD629B0];

  *&v108 = v15;
  *(&v108 + 1) = v22;
  sub_190D55FD0();
  LOBYTE(v21) = v105[qword_1EAD62980];

  v24 = _s8CellViewVMa_0();
  v25 = v24[9];
  v105 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57778);
  sub_190D55FC0();
  *&v12[v25] = v108;
  *&v12[v24[8]] = v78;
  v12[v24[5]] = v76;
  v12[v24[6]] = v5;
  v12[v24[7]] = v21;
  v12[*(v82 + 36)] = 0;
  v26 = v83;
  sub_190956178(v81, v83, type metadata accessor for DetailsLinksTabView);
  v27 = v77;
  v28 = v86;
  v29 = v95;
  sub_190956178(v77, v86, v95);
  v30 = (*(v85 + 80) + 16) & ~*(v85 + 80);
  v31 = (v84 + *(v89 + 80) + v30) & ~*(v89 + 80);
  v32 = swift_allocObject();
  sub_1909561E0(v26, v32 + v30, type metadata accessor for DetailsLinksTabView);
  sub_1909561E0(v28, v32 + v31, v29);
  sub_190955CD8();
  v33 = v90;
  sub_190D557E0();

  sub_19022EEA4(v12, &qword_1EAD57730);
  v34 = v94;
  v35 = v33 + *(v87 + 44);
  v36 = v27;
  sub_19022FD14(v27 + *(v94 + 28), v35, &unk_1EAD55F20);
  KeyPath = swift_getKeyPath();
  *(v35 + *(type metadata accessor for DetailsDoubleTapGestureModifier() + 20)) = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57650);
  swift_storeEnumTagMultiPayload();
  v38 = v93;
  v39 = v91;
  *&v108 = v93;
  *(&v108 + 1) = v91;
  sub_190D55FD0();
  v40 = v105;
  v99 = v34;
  v41 = v34;
  v42 = v80;
  v100 = v80;
  swift_getKeyPath();
  *&v108 = v40;
  sub_190D51C20();

  v43 = *&v40[qword_1EAD629B8];
  sub_190D52690();

  v44 = sub_1908A203C(v43);

  sub_190956178(v36, v92, v95);
  *&v108 = v38;
  *(&v108 + 1) = v39;
  sub_190D55FD0();
  v45 = v105;
  v97 = v41;
  v98 = v42;
  swift_getKeyPath();
  *&v108 = v45;
  sub_190D51C20();

  v46 = qword_1EAD62988;
  swift_beginAccess();
  v47 = *&v45[v46];
  sub_190D52690();

  v48 = sub_190A504A0(v36, v47);
  v50 = v49;

  result = CKFrameworkBundle();
  if (result)
  {
    v52 = result;
    v53 = sub_190D56ED0();
    v54 = sub_190D56ED0();
    v55 = [v52 localizedStringForKey:v53 value:0 table:v54];

    v88 = sub_190D56F10();
    v87 = v56;

    *&v108 = v93;
    *(&v108 + 1) = v91;
    sub_190D55FD0();
    v57 = v105;
    v58 = *&v105[qword_1EAD629A0];
    v59 = v58;

    v109 = v94;
    v110 = v42;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v108);
    v61 = v92;
    sub_190956178(v92, boxed_opaque_existential_1, _s4LinkVMa);
    v62 = *(v44 + 16);
    v95 = v48;
    LODWORD(v89) = v50;
    if (!v62)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53C30);
      v44 = swift_allocObject();
      *(v44 + 16) = xmmword_190DD1D90;
      sub_19083B854(&v108, v44 + 32);
      v62 = *(v44 + 16);
    }

    sub_190D52690();
    result = (v44 + 32);
    v63 = -v62;
    v64 = -1;
    do
    {
      v65 = v63 + v64;
      if (v63 + v64 == -1)
      {
        break;
      }

      if (++v64 >= *(v44 + 16))
      {
        __break(1u);
        goto LABEL_13;
      }

      v66 = result + 40;
      sub_19083B854(result, &v105);
      v67 = v106;
      v68 = v107;
      __swift_project_boxed_opaque_existential_1(&v105, v106);
      v69 = (*(v68 + 64))(v67, v68);
      __swift_destroy_boxed_opaque_existential_0(&v105);
      result = v66;
    }

    while ((v69 & 1) == 0);
    v70 = v65 == -1;

    if (v89)
    {
      v71 = 0;
    }

    else
    {
      v71 = v95;
    }

    sub_190956314(v61);
    __swift_destroy_boxed_opaque_existential_0(&v108);
    v72 = v75;
    sub_19081E40C(v90, v75, &qword_1EAD57728);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57708);
    v73 = v72 + *(result + 9);
    *v73 = v44;
    *(v73 + 8) = v71;
    v74 = v87;
    *(v73 + 16) = v88;
    *(v73 + 24) = v74;
    *(v73 + 32) = v58;
    *(v73 + 40) = v70;
  }

  else
  {
LABEL_13:
    __break(1u);
  }

  return result;
}

void sub_1909546DC(uint64_t a1, void *a2)
{
  v27 = a2;
  v2 = sub_190D53DF0();
  v23 = *(v2 - 8);
  v24 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v22 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD55F20);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v20 - v5;
  v7 = sub_190D515F0();
  v25 = *(v7 - 8);
  v26 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v21 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_190956370(&qword_1EAD57780, type metadata accessor for DetailsLinksTabView);
  v10 = *(v9 + 56);
  v11 = type metadata accessor for DetailsLinksTabView();
  v12 = v10(v11, v9);
  v13 = _s4LinkVMa(0);
  v28 = v13;
  v29 = sub_190956370(&qword_1EAD555A8, _s4LinkVMa);
  swift_getKeyPath();
  v30 = v12;
  sub_190233640(&qword_1EAD566C0, &qword_1EAD566C8);
  sub_190D51C20();

  v14 = v12[qword_1EAD629B0];

  if (v14 == 1)
  {
    v15 = v10(v11, v9);
    sub_190A4D760(v27);
  }

  else
  {
    sub_19022FD14(v27 + *(v13 + 28), v6, &unk_1EAD55F20);
    v17 = v25;
    v16 = v26;
    if ((*(v25 + 48))(v6, 1, v26) == 1)
    {
      sub_19022EEA4(v6, &unk_1EAD55F20);
    }

    else
    {
      v18 = v21;
      (*(v17 + 32))(v21, v6, v16);
      v19 = v22;
      sub_190952028(v22);
      sub_190D53DE0();
      (*(v23 + 8))(v19, v24);
      (*(v17 + 8))(v18, v16);
    }
  }
}

uint64_t sub_190954A9C@<X0>(uint64_t a1@<X0>, uint64_t (**a2)(uint64_t a1)@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1 - 8);
  sub_190956178(v2, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DetailsLinksTabView);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = sub_1909561E0(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for DetailsLinksTabView);
  *a2 = sub_190954C18;
  a2[1] = v7;
  return result;
}

uint64_t sub_190954BAC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD576F0);
  sub_190D55FD0();
  return v1;
}

uint64_t sub_190954C40(int a1, uint64_t a2)
{
  v106 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57788);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v107 = v97 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v104 = v97 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = v97 - v9;
  v112 = _s4LinkVMa(0);
  v114 = *(v112 - 8);
  v11 = MEMORY[0x1EEE9AC00](v112);
  v105 = v97 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v101 = v97 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v100 = v97 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v103 = v97 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v102 = v97 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = (v97 - v22);
  v24 = MEMORY[0x1EEE9AC00](v21);
  v108 = v97 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v27 = (v97 - v26);
  v28 = sub_190D54190();
  v29 = *(v28 - 8);
  v30 = MEMORY[0x1EEE9AC00](v28);
  v32 = v97 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v34 = v97 - v33;
  v113 = v2;
  sub_190951E20(v97 - v33);
  (*(v29 + 104))(v32, *MEMORY[0x1E697E7D8], v28);
  v35 = sub_190D54180();
  v36 = *(v29 + 8);
  v36(v32, v28);
  v36(v34, v28);
  v110 = v10;
  v115 = v27;
  if ((v35 & 1) == 0)
  {
LABEL_5:
    v109 = a1;
    goto LABEL_6;
  }

  if (a1 != 2)
  {
    if (a1 == 3)
    {
      v109 = 2;
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v109 = 3;
LABEL_6:
  v38 = *(v113 + 8);
  v37 = *(v113 + 16);
  v123 = v38;
  v124 = v37;
  v111 = v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD576F0);
  v40 = sub_190D55FD0();
  v41 = v121;
  MEMORY[0x1EEE9AC00](v40);
  v42 = v112;
  v97[-2] = v112;
  v43 = sub_190956370(&qword_1EAD555A8, _s4LinkVMa);
  v97[-1] = v43;
  swift_getKeyPath();
  v123 = v41;
  sub_190233640(&qword_1EAD566C0, &qword_1EAD566C8);
  sub_190D51C20();

  v44 = *&v41[qword_1EAD629B8];
  sub_190D52690();

  v45 = *(v44 + 16);

  if (v45 != 1)
  {
    return result;
  }

  v123 = v38;
  v124 = v111;
  v47 = sub_190D55FD0();
  v48 = v121;
  MEMORY[0x1EEE9AC00](v47);
  v97[-2] = v42;
  v97[-1] = v43;
  swift_getKeyPath();
  v123 = v48;
  sub_190D51C20();

  v49 = *&v48[qword_1EAD629B8];
  sub_190D52690();

  if (!*(v49 + 16))
  {
  }

  v50 = *(v114 + 80);
  v97[1] = v50;
  v51 = (v50 + 32) & ~v50;
  v52 = v108;
  sub_190956178(v49 + v51, v108, _s4LinkVMa);

  sub_1909561E0(v52, v115, _s4LinkVMa);
  v108 = v38;
  v123 = v38;
  v53 = v111;
  v124 = v111;
  v99 = v39;
  sub_190D55FD0();
  v54 = v121;
  swift_getKeyPath();
  v123 = v54;
  sub_190956370(&qword_1EAD576F8, _s9ViewModelCMa_3);
  sub_190D51C20();

  v55 = qword_1EAD5D3B8;
  swift_beginAccess();
  v56 = *&v54[v55];
  sub_190D52690();

  v57 = 0;
  v58 = *(v56 + 16);
  v98 = v51;
  v59 = v56 + v51;
  v60 = v109;
  while (1)
  {
    v61 = v57;
    if (v58 == v57)
    {

      v121 = v108;
      v122 = v53;
      sub_190D55FD0();
      v64 = v116;
      swift_getKeyPath();
      v121 = v64;
      sub_190D51C20();

      v65 = qword_1EAD5D3C0;
      goto LABEL_21;
    }

    sub_190956178(v59 + *(v114 + 9) * v57, v23, _s4LinkVMa);
    v62 = *v23 == *v115 && v23[1] == v115[1];
    if (v62)
    {
      break;
    }

    ++v57;
    v63 = sub_190D58760();
    sub_190956314(v23);
    if (v63)
    {
      goto LABEL_20;
    }
  }

  sub_190956314(v23);
LABEL_20:

  v121 = v108;
  v122 = v53;
  sub_190D55FD0();
  v64 = v116;
  swift_getKeyPath();
  v121 = v64;
  sub_190D51C20();

  v65 = qword_1EAD5D3B8;
LABEL_21:
  v66 = &v64[v65];
  swift_beginAccess();
  v67 = v114;
  v68 = *v66;
  sub_190D52690();

  v69 = v115;
  v70 = sub_190A52F08(v60, v68, v115);
  if (v71)
  {
    sub_190956314(v69);
  }

  v72 = v70;
  v73 = *(v67 + 7);
  v74 = v112;
  v73(v110, 1, 1, v112);
  if ((v72 & 0x8000000000000000) == 0 && v72 < *(v68 + 16))
  {
    v75 = v98;
    v76 = v68 + v98 + *(v67 + 9) * v72;
    v77 = v104;
    sub_190956178(v76, v104, _s4LinkVMa);

    v78 = v110;
    sub_19022EEA4(v110, &qword_1EAD57788);
    v73(v77, 0, 1, v74);
    sub_190956418(v77, v78);
    v79 = v108;
    goto LABEL_39;
  }

  v114 = v73;
  if (v58 == v61)
  {
    v62 = v60 == 0;
    v79 = v108;
    v75 = v98;
    v78 = v110;
    if (!v62)
    {
      goto LABEL_39;
    }

    v116 = v108;
    v117 = v111;
    sub_190D55FD0();
    v80 = v119;
    swift_getKeyPath();
    v116 = v80;
    sub_190D51C20();

    v81 = qword_1EAD5D3B8;
    swift_beginAccess();
    v82 = *&v80[v81];
    sub_190D52690();

    v83 = *(v82 + 16);
    if (v83)
    {
      v84 = v101;
      sub_190956178(v82 + v75 + *(v67 + 9) * (v83 - 1), v101, _s4LinkVMa);

      sub_19022EEA4(v78, &qword_1EAD57788);
      v85 = v84;
      v86 = &v125;
LABEL_37:
      v91 = *(v86 - 32);
      sub_1909561E0(v85, v91, _s4LinkVMa);
      sub_1909561E0(v91, v78, _s4LinkVMa);
      v74 = v112;
      v114(v78, 0, 1, v112);
      goto LABEL_39;
    }

    goto LABEL_38;
  }

  v62 = v60 == 1;
  v79 = v108;
  v75 = v98;
  v78 = v110;
  if (v62)
  {
    v116 = v108;
    v117 = v111;
    sub_190D55FD0();
    v87 = v119;
    swift_getKeyPath();
    v116 = v87;
    sub_190D51C20();

    v88 = qword_1EAD5D3C0;
    swift_beginAccess();
    v89 = *&v87[v88];
    sub_190D52690();

    if (*(v89 + 16))
    {
      v90 = v103;
      sub_190956178(v89 + v75, v103, _s4LinkVMa);

      sub_19022EEA4(v78, &qword_1EAD57788);
      v85 = v90;
      v86 = &v126;
      goto LABEL_37;
    }

LABEL_38:

    v74 = v112;
  }

LABEL_39:
  v92 = v107;
  sub_19022FD14(v78, v107, &qword_1EAD57788);
  if ((*(v67 + 6))(v92, 1, v74) == 1)
  {
    sub_19022EEA4(v78, &qword_1EAD57788);
    sub_190956314(v115);
    return sub_19022EEA4(v92, &qword_1EAD57788);
  }

  else
  {
    v93 = v105;
    sub_1909561E0(v92, v105, _s4LinkVMa);
    v119 = v79;
    v120 = v111;
    sub_190D55FD0();
    v94 = v118;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53EF8);
    v95 = swift_allocObject();
    *(v95 + 16) = xmmword_190DD1D90;
    sub_190956178(v93, v95 + v75, _s4LinkVMa);
    sub_1908EAF94(v95);

    MEMORY[0x1EEE9AC00](v96);
    v97[-2] = v106;
    v97[-1] = v93;
    sub_190D565A0();
    sub_190D53E40();

    sub_19022EEA4(v78, &qword_1EAD57788);
    sub_190956314(v115);
    return sub_190956314(v93);
  }
}

uint64_t sub_190955A10@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X4>, void *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_190956370(&qword_1EAD576F8, _s9ViewModelCMa_3);
  sub_190D51C20();

  v6 = *a2;
  swift_beginAccess();
  *a3 = *(v5 + v6);
  return sub_190D52690();
}

unint64_t sub_190955B54()
{
  result = qword_1EAD57718;
  if (!qword_1EAD57718)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD57708);
    sub_190955BE0();
    sub_190955DC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD57718);
  }

  return result;
}

unint64_t sub_190955BE0()
{
  result = qword_1EAD57720;
  if (!qword_1EAD57720)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD57728);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD57730);
    sub_190955CD8();
    swift_getOpaqueTypeConformance2();
    sub_190956370(&qword_1EAD57748, type metadata accessor for DetailsDoubleTapGestureModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD57720);
  }

  return result;
}

unint64_t sub_190955CD8()
{
  result = qword_1EAD57738;
  if (!qword_1EAD57738)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD57730);
    sub_190956370(&qword_1EAD57740, _s8CellViewVMa_0);
    sub_190233640(&qword_1EAD557A0, &qword_1EAD557A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD57738);
  }

  return result;
}

unint64_t sub_190955DC0()
{
  result = qword_1EAD57750;
  if (!qword_1EAD57750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD57750);
  }

  return result;
}

uint64_t objectdestroyTm_10()
{
  v1 = type metadata accessor for DetailsLinksTabView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;

  v6 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD52E60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_190D540E0();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  v8 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5F690);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_190D54190();
    (*(*(v9 - 8) + 8))(v5 + v8, v9);
  }

  else
  {
  }

  v10 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57650);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_190D53DF0();
    (*(*(v11 - 8) + 8))(v5 + v10, v11);
  }

  else
  {
  }

  v12 = v5 + v1[11];
  v13 = sub_190D515F0();
  v14 = *(v13 - 8);
  if (!(*(v14 + 48))(v12, 1, v13))
  {
    (*(v14 + 8))(v12, v13);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57620);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1909560E4(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for DetailsLinksTabView() - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_190956178(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1909561E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_190956248()
{
  v1 = *(type metadata accessor for DetailsLinksTabView() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(_s4LinkVMa(0) - 8);
  v5 = (v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80)));

  sub_1909546DC(v0 + v2, v5);
}

uint64_t sub_190956314(uint64_t a1)
{
  v2 = _s4LinkVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_190956370(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_190956418(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57788);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

Swift::Void __swiftcall CKTranscriptMessageCell.configureMessageDeliveryFailureButton(failed:)(Swift::Bool failed)
{
  v3 = [v1 failureButton];
  if (v3)
  {
    v4 = v3;
    [v3 removeFromSuperview];
  }

  [v1 setFailureButton_];
  if (failed)
  {
    sub_190956574();
    v6 = v5;
    v7 = [v1 contentView];
    [v7 addSubview_];

    [v6 sizeToFit];
    [v1 setFailureButton_];
  }

  [v1 setNeedsLayout];
}

void sub_190956574()
{
  v27 = sub_190D57E10();
  v1 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v3 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_190D57E40();
  v4 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_190D57FB0();
  v7 = *(v29 - 8);
  v8 = MEMORY[0x1EEE9AC00](v29);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v26 - v11;
  v28 = v0;
  v13 = [v0 traitCollection];
  v14 = [v13 isTranscriptBackgroundActive];

  if (v14)
  {
    v15 = [objc_opt_self() configurationPreferringMulticolor];
    v16 = sub_190D56ED0();
    v17 = [objc_opt_self() systemImageNamed_];

    v18 = [v17 imageByApplyingSymbolConfiguration_];
  }

  else
  {
    v15 = sub_190D56ED0();
    v18 = [objc_opt_self() systemImageNamed_];
  }

  v19 = v18;
  sub_190D57F70();
  sub_190D57F60();
  (*(v4 + 104))(v6, *MEMORY[0x1E69DC528], v26);
  sub_190D57E70();
  sub_190D57E60();
  (*(v1 + 104))(v3, *MEMORY[0x1E69DC508], v27);
  sub_190D57E20();
  sub_190956C24();
  v20 = v29;
  (*(v7 + 16))(v10, v12, v29);
  v21 = sub_190D57FC0();
  [v21 addTarget:v28 action:sel_didTapFailureButtonWithSender_ forControlEvents:64];
  v22 = [objc_opt_self() sharedBehaviors];
  if (v22)
  {
    v23 = v22;
    v24 = [v22 theme];

    if (v24)
    {
      v25 = [v24 statusFailureTextColor];

      [v21 setTintColor_];
      (*(v7 + 8))(v12, v20);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id CKTranscriptMessageCell.didTapFailureButton(sender:)(uint64_t a1)
{
  result = [v1 failureButtonDelegate];
  if (result)
  {
    v4 = result;
    sub_19023C414(a1, v11);
    v5 = v12;
    if (v12)
    {
      v6 = __swift_project_boxed_opaque_existential_1(v11, v12);
      v7 = *(v5 - 8);
      MEMORY[0x1EEE9AC00](v6);
      v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v7 + 16))(v9);
      v10 = sub_190D58740();
      (*(v7 + 8))(v9, v5);
      __swift_destroy_boxed_opaque_existential_0(v11);
    }

    else
    {
      v10 = 0;
    }

    [v4 transcriptMessageCell:v1 didTapMessageDeliveryFailureButton:v10];
    swift_unknownObjectRelease();
    return swift_unknownObjectRelease();
  }

  return result;
}

unint64_t sub_190956C24()
{
  result = qword_1EAD464E0;
  if (!qword_1EAD464E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EAD464E0);
  }

  return result;
}

void sub_190956C80()
{
  v0 = [objc_opt_self() sharedBehaviors];
  if (v0)
  {
    v1 = v0;
    v2 = [v0 usesTapbackRefreshStyling];

    v3 = 1.0;
    if (v2)
    {
      v3 = 0.5;
    }

    qword_1EAD9DB98 = *&v3;
  }

  else
  {
    __break(1u);
  }
}

uint64_t static TapbackPileTemplate.topTapbackCenterXOffsetFromSourcePoint.getter()
{
  if (qword_1EAD51A48 != -1)
  {
    result = swift_once();
  }

  if (qword_1EAD51A40 != -1)
  {
    return swift_once();
  }

  return result;
}

id TapbackPileTemplate.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TapbackPileTemplate.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TapbackPileTemplate();
  return objc_msgSendSuper2(&v2, sel_init);
}

id TapbackPileTemplate.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TapbackPileTemplate();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t _s21DatePickerButtonStyleVMa()
{
  result = qword_1EAD577A0;
  if (!qword_1EAD577A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_190956FF4()
{
  sub_1909570C0(319, &qword_1EAD55988, MEMORY[0x1E697DBD0]);
  if (v0 <= 0x3F)
  {
    sub_1909570C0(319, &qword_1EAD5F6C0, MEMORY[0x1E697E7E0]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1909570C0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_190D53A80();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_190957130@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_190D54800();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD55AC8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - v9;
  sub_19022FD14(v2, &v14 - v9, &qword_1EAD55AC8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_190D53A60();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_190D576B0();
    v13 = sub_190D55260();
    sub_190D52F50();

    sub_190D547F0();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_190957330@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_190D54800();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD5F690);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - v8;
  v10 = _s21DatePickerButtonStyleVMa();
  sub_19022FD14(v1 + *(v10 + 20), v9, &qword_1EAD5F690);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_190D54190();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_190D576B0();
    v13 = sub_190D55260();
    sub_190D52F50();

    sub_190D547F0();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

id sub_190957538()
{
  v0 = sub_190D543E0();
  v1 = MEMORY[0x1EEE9AC00](v0);
  v3 = (&v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v24 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD577E0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v24 - v7);
  v9 = [objc_opt_self() sharedFeatureFlags];
  v10 = [v9 isEntryViewRefreshEnabled];

  if (v10)
  {
    *v8 = sub_1909578E4;
    v8[1] = 0;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD577E8);
    sub_190233640(&qword_1EAD577F0, &qword_1EAD577E8);
    sub_190958994(&qword_1EAD577F8, MEMORY[0x1E697EAF0]);
    return sub_190D54C50();
  }

  v12 = objc_opt_self();
  result = [v12 sharedBehaviors];
  if (result)
  {
    v13 = result;
    [result entryViewCoverMinHeight];
    v15 = v14;

    result = [v12 sharedBehaviors];
    if (result)
    {
      v16 = result;
      v17 = v15 * 0.5;
      [result messageEntryContentViewSendLaterInsets];
      v19 = v18;

      v20 = v17 - v19;
      v21 = *(v0 + 20);
      v22 = *MEMORY[0x1E697F468];
      v23 = sub_190D54A20();
      (*(*(v23 - 8) + 104))(v3 + v21, v22, v23);
      *v3 = v20;
      v3[1] = v20;
      sub_1909585F0(v3, v5);
      sub_190958654(v5, v8);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD577E8);
      sub_190233640(&qword_1EAD577F0, &qword_1EAD577E8);
      sub_190958994(&qword_1EAD577F8, MEMORY[0x1E697EAF0]);
      sub_190D54C50();
      return sub_1909586B8(v5);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

int *sub_1909578E4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_190D543E0();
  MEMORY[0x1EEE9AC00](v2);
  v4 = (&v34[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_190AE89C8(v34);
  sub_190958714(v34);
  v5 = v34[0];
  result = [objc_opt_self() sharedBehaviors];
  if (result)
  {
    v7 = result;
    [result messageEntryContentViewSendLaterDateInsets];
    v9 = v8;
    v11 = v10;

    sub_190AE89C8(v35);
    sub_190958714(v35);
    v12 = v11 + v5 + v9 + v36 + v37;
    sub_190D53D30();
    if (v13 >= v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = v13;
    }

    v15 = (v14 + 2.0) * 0.5;
    sub_190D53D30();
    v17 = v16 + -2.0;
    sub_190D53D30();
    v19 = v15 * 6.28318531 + v17 + v18 + -2.0 + v15 * -4.0 + v17 + v18 + -2.0 + v15 * -4.0;
    v20 = v19 / floor(v19 / 11.0) * 0.5;
    v21 = *(v2 + 20);
    v22 = *MEMORY[0x1E697F468];
    v23 = sub_190D54A20();
    (*(*(v23 - 8) + 104))(v4 + v21, v22, v23);
    *v4 = v15;
    v4[1] = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD53CA8);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_190DD1DA0;
    *(v24 + 32) = v20;
    *(v24 + 40) = v20;
    sub_190D53AD0();
    sub_190958654(v4, a1);
    v25 = *&v38 * 0.5;
    v26 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57800) + 68);
    sub_190958654(v4, v26);
    *(v26 + *(sub_190D543D0() + 20)) = v25;
    v27 = v26 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57808) + 36);
    v28 = v39;
    *v27 = v38;
    *(v27 + 16) = v28;
    *(v27 + 32) = v40;
    *(v26 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57810) + 56)) = 256;
    v29 = sub_190D56500();
    v31 = v30;
    sub_1909586B8(v4);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD57818);
    v32 = (v26 + result[9]);
    *v32 = v29;
    v32[1] = v31;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_190957BD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a2;
  v60 = sub_190D53A60();
  v3 = *(v60 - 8);
  v4 = MEMORY[0x1EEE9AC00](v60);
  v58 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v57 = &v54 - v6;
  v7 = sub_190D565E0();
  v61 = *(v7 - 8);
  v62 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v59 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_190D54190();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v54 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD577B0);
  v17 = v16 - 8;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v54 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD577B8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v54 - v21;
  v56 = a1;
  sub_190D54F60();
  sub_190958130(&v64);
  *&v19[*(v17 + 44)] = v64;
  result = [objc_opt_self() sharedBehaviors];
  if (result)
  {
    v24 = result;
    [result messageEntryContentViewSendLaterDateInsets];
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v32 = v31;

    sub_190957330(v15);
    (*(v10 + 104))(v13, *MEMORY[0x1E697E7D8], v9);
    sub_190D54180();
    v33 = *(v10 + 8);
    v33(v13, v9);
    v33(v15, v9);
    v34 = sub_190D552B0();
    sub_19081E40C(v19, v22, &qword_1EAD577B0);
    v35 = &v22[*(v20 + 36)];
    *v35 = v34;
    *(v35 + 1) = v26;
    *(v35 + 2) = v28;
    *(v35 + 3) = v30;
    *(v35 + 4) = v32;
    v35[40] = 0;
    v36 = sub_190D56500();
    v54 = v37;
    v55 = v36;
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD577C0);
    v39 = v63;
    v40 = v63 + *(v38 + 36);
    sub_190957538();
    sub_190958240(&v64);
    v41 = v64;
    v42 = v57;
    sub_190957130(v57);
    v43 = v58;
    v44 = v60;
    (*(v3 + 104))(v58, *MEMORY[0x1E697DBB8], v60);
    LOBYTE(v24) = sub_190D53A50();
    v45 = *(v3 + 8);
    v45(v43, v44);
    v45(v42, v44);
    v47 = v61;
    v46 = v62;
    v48 = MEMORY[0x1E6981DA0];
    if ((v24 & 1) == 0)
    {
      v48 = MEMORY[0x1E6981DB8];
    }

    v49 = v59;
    (*(v61 + 104))(v59, *v48, v62);
    v50 = (v40 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD577C8) + 36));
    v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD577D0);
    (*(v47 + 32))(v50 + *(v51 + 36), v49, v46);
    *v50 = v41;
    v52 = (v40 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAD577D8) + 36));
    v53 = v54;
    *v52 = v55;
    v52[1] = v53;
    return sub_19081E40C(v22, v39, &qword_1EAD577B8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_190958130(uint64_t *a1@<X8>)
{
  v2 = [objc_opt_self() sharedFeatureFlags];
  v3 = [v2 isEntryViewRefreshEnabled];

  if (v3)
  {
    sub_190D55D50();
    v4 = sub_190D55DF0();

LABEL_7:
    *a1 = v4;
    return;
  }

  v5 = [objc_opt_self() sharedBehaviors];
  if (!v5)
  {
    __break(1u);
    goto LABEL_9;
  }

  v6 = v5;
  v7 = [v5 theme];

  if (!v7)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v8 = [v7 balloonTextColorForColorType_];

  if (v8)
  {
    v4 = sub_190D55CE0();
    goto LABEL_7;
  }

LABEL_10:
  __break(1u);
}

void sub_190958240(uint64_t *a1@<X8>)
{
  v3 = sub_190D53A60();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v25 - v8;
  v10 = [objc_opt_self() sharedFeatureFlags];
  v11 = [v10 isEntryViewRefreshEnabled];

  if (v11)
  {
    sub_190D55D50();
    v12 = _s21DatePickerButtonStyleVMa();
    if (*(v1 + *(v12 + 28)) & 1) != 0 || (*(v1 + *(v12 + 24)) & 1) != 0 || (sub_190D54F70())
    {
      sub_190957130(v9);
      (*(v4 + 104))(v7, *MEMORY[0x1E697DBA8], v3);
      sub_190D53A50();
      v13 = *(v4 + 8);
      v13(v7, v3);
      v13(v9, v3);
    }

    else
    {
      sub_190957130(v9);
      (*(v4 + 104))(v7, *MEMORY[0x1E697DBA8], v3);
      sub_190D53A50();
      v20 = *(v4 + 8);
      v20(v7, v3);
      v20(v9, v3);
    }

    v14 = sub_190D55DF0();

    goto LABEL_14;
  }

  v15 = _s21DatePickerButtonStyleVMa();
  if (*(v1 + *(v15 + 28)) & 1) != 0 || (*(v1 + *(v15 + 24)) & 1) != 0 || (sub_190D54F70())
  {
    v16 = [objc_opt_self() sharedBehaviors];
    if (v16)
    {
      v17 = v16;
      v18 = [v16 theme];

      if (v18)
      {
        v19 = [v18 entryFieldSendLaterPressedBalloonColor];

        if (v19)
        {
LABEL_13:
          v14 = sub_190D55CE0();
LABEL_14:
          *a1 = v14;
          return;
        }

        goto LABEL_22;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v21 = [objc_opt_self() sharedBehaviors];
  if (!v21)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v22 = v21;
  v23 = [v21 theme];

  if (v23)
  {
    v24 = [v23 entryFieldSendLaterBalloonColor];

    if (v24)
    {
      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_20;
  }

LABEL_24:
  __break(1u);
}

uint64_t sub_1909585F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_190D543E0();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_190958654(uint64_t a1, uint64_t a2)
{
  v4 = sub_190D543E0();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1909586B8(uint64_t a1)
{
  v2 = sub_190D543E0();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_190958768()
{
  result = qword_1EAD57820;
  if (!qword_1EAD57820)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD577C0);
    sub_190958820();
    sub_190233640(&qword_1EAD57838, &qword_1EAD577D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD57820);
  }

  return result;
}

unint64_t sub_190958820()
{
  result = qword_1EAD57828;
  if (!qword_1EAD57828)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD577B8);
    sub_1909588AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD57828);
  }

  return result;
}

unint64_t sub_1909588AC()
{
  result = qword_1EAD57830;
  if (!qword_1EAD57830)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAD577B0);
    sub_190958994(&qword_1EAD45210, MEMORY[0x1E697C8D0]);
    sub_190233640(&qword_1EAD53008, &qword_1EAD53010);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAD57830);
  }

  return result;
}

uint64_t sub_190958994(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_190958FBC()
{
  v1 = v0;
  v2 = [v0 containerView];
  v3 = [v0 titleLabel];
  [v2 addSubview_];

  v4 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_190DD86A0;
  v6 = [v1 containerView];
  v7 = [v6 leadingAnchor];

  v8 = [v1 titleLabel];
  v9 = [v8 leadingAnchor];

  v10 = [v7 constraintEqualToAnchor_];
  *(v5 + 32) = v10;
  v11 = [v1 containerView];
  v12 = [v11 trailingAnchor];

  v13 = [v1 titleLabel];
  v14 = [v13 trailingAnchor];

  v15 = [v12 constraintEqualToAnchor_];
  *(v5 + 40) = v15;
  v16 = [v1 containerView];
  v17 = [v16 topAnchor];

  v18 = [v1 titleLabel];
  v19 = [v18 topAnchor];

  v20 = [v17 constraintEqualToAnchor_];
  *(v5 + 48) = v20;
  v21 = [v1 containerView];
  v22 = [v21 bottomAnchor];

  v23 = [v1 titleLabel];
  v24 = [v23 bottomAnchor];

  v25 = [v22 constraintEqualToAnchor_];
  *(v5 + 56) = v25;
  sub_1902188FC(0, &qword_1EAD45040);
  v26 = sub_190D57160();

  [v4 activateConstraints_];
}

void sub_19095936C()
{
  v1 = v0;
  v2 = [v0 containerView];
  v3 = [v0 toggleButton];
  [v2 addSubview_];

  v4 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_190DD86A0;
  v6 = [v1 containerView];
  v7 = [v6 centerXAnchor];

  v8 = [v1 toggleButton];
  v9 = [v8 centerXAnchor];

  v10 = [v7 constraintEqualToAnchor_];
  *(v5 + 32) = v10;
  v11 = [v1 containerView];
  v12 = [v11 leadingAnchor];

  v13 = [v1 toggleButton];
  v14 = [v13 leadingAnchor];

  v15 = [v12 constraintLessThanOrEqualToAnchor_];
  *(v5 + 40) = v15;
  v16 = [v1 containerView];
  v17 = [v16 trailingAnchor];

  v18 = [v1 toggleButton];
  v19 = [v18 trailingAnchor];

  v20 = [v17 constraintGreaterThanOrEqualToAnchor_];
  *(v5 + 48) = v20;
  v21 = [v1 containerView];
  v22 = [v21 bottomAnchor];

  v23 = [v1 toggleButton];
  v24 = [v23 bottomAnchor];

  v25 = [v22 constraintEqualToAnchor_];
  *(v5 + 56) = v25;
  sub_1902188FC(0, &qword_1EAD45040);
  v26 = sub_190D57160();

  [v4 activateConstraints_];
}

void sub_190959724()
{
  v1 = [v0 containerView];
  v2 = [v0 titleLabel];
  [v1 addSubview_];

  v3 = [v0 containerView];
  v4 = [v0 toggleButton];
  [v3 addSubview_];

  v5 = [v0 &selRef_timeIntervalSince1970 + 2];
  LODWORD(v6) = 1148846080;
  [v5 setContentHuggingPriority:1 forAxis:v6];

  v7 = [v0 &selRef_timeIntervalSince1970 + 2];
  LODWORD(v8) = 1148846080;
  [v7 setContentCompressionResistancePriority:1 forAxis:v8];

  v50 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAD53820);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_190DDA050;
  v10 = [v0 containerView];
  v11 = [v10 leadingAnchor];

  v12 = [v0 titleLabel];
  v13 = [v12 &selRef_keyTransparencyDetailsStatusCellDidRequestVerification_ + 1];

  v14 = [v11 constraintEqualToAnchor_];
  *(v9 + 32) = v14;
  v15 = [v0 containerView];
  v16 = [v15 trailingAnchor];

  v17 = [v0 titleLabel];
  v18 = [v17 trailingAnchor];

  v19 = [v16 constraintEqualToAnchor_];
  *(v9 + 40) = v19;
  v20 = [v0 containerView];
  v21 = [v20 topAnchor];

  v22 = [v0 titleLabel];
  v23 = [v22 &selRef_tipKitLayoutSectionForEnvironment_];

  v24 = [v21 constraintEqualToAnchor_];
  *(v9 + 48) = v24;
  v25 = [v0 containerView];
  v26 = [v25 centerXAnchor];

  v27 = [v0 toggleButton];
  v28 = [v27 centerXAnchor];

  v29 = [v26 constraintEqualToAnchor_];
  *(v9 + 56) = v29;
  v30 = [v0 containerView];
  v31 = [v30 leadingAnchor];

  v32 = [v0 toggleButton];
  v33 = [v32 leadingAnchor];

  v34 = [v31 constraintLessThanOrEqualToAnchor_];
  *(v9 + 64) = v34;
  v35 = [v0 containerView];
  v36 = [v35 trailingAnchor];

  v37 = [v0 toggleButton];
  v38 = [v37 trailingAnchor];

  v39 = [v36 constraintGreaterThanOrEqualToAnchor_];
  *(v9 + 72) = v39;
  v40 = [v0 containerView];
  v41 = [v40 bottomAnchor];

  v42 = [v0 toggleButton];
  v43 = [v42 bottomAnchor];

  v44 = [v41 &selRef_conversationListPinnedConversationPreviewFontSizeOverrideStandard + 5];
  *(v9 + 80) = v44;
  sub_1902188FC(0, &qword_1EAD45040);
  v45 = sub_190D57160();

  [v50 activateConstraints_];

  v46 = [v0 toggleButton];
  v47 = [v46 topAnchor];

  v48 = [v0 titleLabel];
  v49 = [v48 bottomAnchor];

  v51 = [v47 &selRef_conversationListPinnedConversationPreviewFontSizeOverrideStandard + 5];
  [v51 setActive_];
  [v0 setTitleToButtonVerticalConstraint_];
  [v0 updateTitleToButtonVerticalConstraint];
}