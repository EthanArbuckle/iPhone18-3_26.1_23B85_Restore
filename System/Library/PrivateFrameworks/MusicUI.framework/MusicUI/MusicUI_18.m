void sub_21685A234(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8DF8);
  OUTLINED_FUNCTION_36(v3);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_111_1();
  if (__swift_getEnumTagSinglePayload(a1, 1, v5) != 1)
  {
    v6 = OUTLINED_FUNCTION_7_4();
    sub_216861304(v6, v7);
    sub_2168593AC(v1);
  }

  sub_216810F48(0);
  if (sub_2168587EC() == 2)
  {
    if (qword_280E416F8 != -1)
    {
      OUTLINED_FUNCTION_0_3();
    }

    v8 = sub_217007CA4();
    __swift_project_value_buffer(v8, qword_280E73D20);
    OUTLINED_FUNCTION_47();

    v9 = sub_217007C84();
    v10 = sub_21700EDA4();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = OUTLINED_FUNCTION_115_0();
      v21 = OUTLINED_FUNCTION_114();
      *v11 = 136315394;
      OUTLINED_FUNCTION_64_6();
      v14 = sub_2166A85FC(0xD000000000000016, v12, v13);
      OUTLINED_FUNCTION_49_8(v14);
      v15 = OUTLINED_FUNCTION_54_3();
      MEMORY[0x21CE9F490](v15);

      OUTLINED_FUNCTION_85_4();
      OUTLINED_FUNCTION_47();

      *(v11 + 14) = &v20;
      OUTLINED_FUNCTION_112_2(&dword_216679000, v16, v17, "💬 %s do not pull for %s since there is a pushed message already displayed");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_6();
    }

    else
    {
    }
  }

  else
  {
    v18 = OUTLINED_FUNCTION_15_17();
    sub_21685A69C(v18, v19, &unk_21701F198, sub_216858D5C);
  }
}

uint64_t type metadata accessor for BannerProvider()
{
  result = qword_27CAB9E08;
  if (!qword_27CAB9E08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21685A4A0()
{
  sub_21685A5E4();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_21685A5E4()
{
  if (!qword_27CAB9E18)
  {
    v0 = sub_217007E14();
    if (!v1)
    {
      atomic_store(v0, &qword_27CAB9E18);
    }
  }
}

unint64_t get_enum_tag_for_layout_string_7MusicUI14BannerProviderC9PlacementO(uint64_t *a1)
{
  if (*a1 >= 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return (*a1 >> 3) + 2;
  }
}

void sub_21685A69C(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v7 = v4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0);
  OUTLINED_FUNCTION_36(v8);
  OUTLINED_FUNCTION_29();
  v10 = MEMORY[0x28223BE20](v9);
  if (a1(v10))
  {

    if (qword_280E416F8 != -1)
    {
      OUTLINED_FUNCTION_0_3();
    }

    v11 = sub_217007CA4();
    __swift_project_value_buffer(v11, qword_280E73D20);
    OUTLINED_FUNCTION_47();

    v25 = sub_217007C84();
    v12 = sub_21700EDA4();
    if (os_log_type_enabled(v25, v12))
    {
      v13 = OUTLINED_FUNCTION_115_0();
      v26[2] = OUTLINED_FUNCTION_114();
      *v13 = 136315394;
      OUTLINED_FUNCTION_64_6();
      *(v13 + 4) = sub_2166A85FC(0xD000000000000010, v14, v15);
      *(v13 + 12) = 2080;
      v16 = *(v4 + 40);
      v17 = *(v4 + 48);
      v26[0] = 46;
      v26[1] = 0xE100000000000000;
      sub_21700DF14();
      MEMORY[0x21CE9F490](v16, v17);

      OUTLINED_FUNCTION_85_4();
      OUTLINED_FUNCTION_47();

      *(v13 + 14) = v26;
      _os_log_impl(&dword_216679000, v25, v12, "💬 %s for %s is still in flight, ignoring redundant request", v13, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_26_4();
    }

    else
    {
    }
  }

  else
  {
    sub_21700EA74();
    OUTLINED_FUNCTION_38_2();
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
    sub_21700EA34();
    OUTLINED_FUNCTION_47();

    v22 = sub_21700EA24();
    OUTLINED_FUNCTION_181();
    v23 = swift_allocObject();
    v24 = MEMORY[0x277D85700];
    v23[2] = v22;
    v23[3] = v24;
    v23[4] = v7;
    OUTLINED_FUNCTION_138();
    sub_21677BBA0();
    a4();
  }
}

uint64_t sub_21685A91C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[19] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE1F0);
  v4[20] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9E80);
  v4[21] = v5;
  v4[22] = *(v5 - 8);
  v4[23] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9E88);
  v4[24] = v6;
  v4[25] = *(v6 - 8);
  v4[26] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7198);
  v4[27] = swift_task_alloc();
  v4[28] = type metadata accessor for MusicMetrics.PageFields(0);
  v4[29] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8DF8);
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();
  v7 = sub_21700D194();
  v4[32] = v7;
  v4[33] = *(v7 - 8);
  v4[34] = swift_task_alloc();
  sub_21700EA34();
  v4[35] = sub_21700EA24();
  v9 = sub_21700E9B4();
  v4[36] = v9;
  v4[37] = v8;

  return MEMORY[0x2822009F8](sub_21685ABC4, v9, v8);
}

uint64_t sub_21685ABC4()
{
  if (sub_216858EE4())
  {
    OUTLINED_FUNCTION_37_10();
    v3 = v1[31];
    v0 = v1[32];
    v4 = MEMORY[0x277D84F70];
    if (v1[5])
    {
      v5 = OUTLINED_FUNCTION_80_4();
      OUTLINED_FUNCTION_79_7(v5);
      if (!v6)
      {
        OUTLINED_FUNCTION_91_6();
        v7 = OUTLINED_FUNCTION_78_5();
        v8(v7);
        OUTLINED_FUNCTION_71_0();
        v9();
        OUTLINED_FUNCTION_41();
        __swift_storeEnumTagSinglePayload(v10, v11, v12, v3);
        sub_2168592F8(v2);
        v13 = OUTLINED_FUNCTION_116();
        v14(v13);
        goto LABEL_11;
      }
    }

    else
    {
      sub_216697664((v1 + 2), &unk_27CABF7A0);
      OUTLINED_FUNCTION_38_2();
      __swift_storeEnumTagSinglePayload(v15, v16, v17, v0);
    }

    sub_216697664(v1[31], &qword_27CAB8DF8);
    OUTLINED_FUNCTION_47_9();

    v0 = v1[27];
    v18 = v1[28];
    if (v1[9])
    {
      v19 = OUTLINED_FUNCTION_89_6();
      __swift_storeEnumTagSinglePayload(v0, v19 ^ 1u, 1, v18);
      v20 = OUTLINED_FUNCTION_12_17();
      if (__swift_getEnumTagSinglePayload(v20, v21, v18) != 1)
      {
        OUTLINED_FUNCTION_88_2();
        sub_216F0D610(v3, v0);
        OUTLINED_FUNCTION_41();
        __swift_storeEnumTagSinglePayload(v22, v23, v24, v4);
        sub_2168592F8(v0);
        OUTLINED_FUNCTION_24_14();
        goto LABEL_11;
      }
    }

    else
    {
      sub_216697664((v1 + 6), &unk_27CABF7A0);
      OUTLINED_FUNCTION_38_2();
      __swift_storeEnumTagSinglePayload(v25, v26, v27, v18);
    }

    sub_216697664(v1[27], &qword_27CAB7198);
  }

LABEL_11:
  OUTLINED_FUNCTION_58_5();
  sub_216859140(v0);
  v28 = swift_task_alloc();
  v1[38] = v28;
  *v28 = v1;
  v29 = OUTLINED_FUNCTION_56_6(v28);

  return sub_2169FF314(v29, v30, v31);
}

uint64_t sub_21685ADF4()
{
  OUTLINED_FUNCTION_31();
  v1 = *v0;
  OUTLINED_FUNCTION_26_0();
  *v3 = v2;
  v4 = *(v1 + 240);
  v5 = *v0;
  OUTLINED_FUNCTION_11();
  *v6 = v5;
  *(v8 + 312) = v7;

  sub_216697664(v4, &qword_27CAB8DF8);
  OUTLINED_FUNCTION_100_5();

  OUTLINED_FUNCTION_100_5();
  v10 = *(v9 + 296);
  v11 = *(v1 + 288);

  return MEMORY[0x2822009F8](sub_21685AF50, v11, v10);
}

uint64_t sub_21685AF50()
{

  v6 = sub_216DE0BE8();
  if (v6)
  {
    sub_2170076F4();
    OUTLINED_FUNCTION_41_2();

    v7 = [v0 identifier];

    if (v7)
    {
      v8 = sub_21700E514();
      v6 = v9;
    }

    else
    {
      v8 = 0;
      v6 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v10 = *(v1 + 312);
  if (v10)
  {
    v11 = [*(v1 + 312) identifier];
    if (v11)
    {
      v2 = v11;
      v12 = sub_21700E514();
      v14 = v13;

      if (!v6)
      {
        goto LABEL_9;
      }

LABEL_12:
      if (!v14)
      {
        goto LABEL_20;
      }

      if (v8 == v12 && v6 == v14)
      {
      }

      else
      {
        v8 = OUTLINED_FUNCTION_87_4();

        if ((v8 & 1) == 0)
        {
          if (!v10)
          {
LABEL_21:
            OUTLINED_FUNCTION_138();
            sub_21685C93C();
            goto LABEL_25;
          }

          goto LABEL_19;
        }
      }

LABEL_23:
      v38 = *(v1 + 312);
      goto LABEL_24;
    }
  }

  v12 = 0;
  v14 = 0;
  if (v6)
  {
    goto LABEL_12;
  }

LABEL_9:
  if (!v14)
  {
    goto LABEL_23;
  }

LABEL_20:

  if (!v10)
  {
    goto LABEL_21;
  }

LABEL_19:
  OUTLINED_FUNCTION_39_8();
  v45 = sub_217007654();
  OUTLINED_FUNCTION_91_1();
  v43 = v8;
  v48 = sub_217007644();
  sub_21685CEB8(v48);
  sub_217007704();
  sub_2166AF2EC();
  v16 = sub_21700EE84();
  *(v1 + 120) = v16;
  sub_21700EE64();
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
  OUTLINED_FUNCTION_5_0();
  sub_2166D9530(v21, v22);
  OUTLINED_FUNCTION_17_20();
  sub_2168612BC(v23, v24);
  OUTLINED_FUNCTION_45_9();
  sub_216697664(v2, &qword_27CABE1F0);

  (*(v5 + 8))(v4, v3);
  OUTLINED_FUNCTION_181();
  v25 = swift_allocObject();
  OUTLINED_FUNCTION_75_3(v25, v26, v27, v28, v29, v30, v31, v32, v42, v43, v45, v47, v48);
  OUTLINED_FUNCTION_35_2(&qword_280E48548, &qword_27CAB9E88);
  v44 = v2;

  OUTLINED_FUNCTION_67_5();

  v33 = OUTLINED_FUNCTION_105_2();
  v34(v33);
  v35 = swift_task_alloc();
  *v35 = v46;
  v35[1] = &off_280E485F8;
  OUTLINED_FUNCTION_229();
  swift_getKeyPath();
  OUTLINED_FUNCTION_41_2();

  *(v1 + 128) = v10;
  OUTLINED_FUNCTION_34_1(qword_280E419B0, &qword_27CAB8DE0);
  OUTLINED_FUNCTION_9_29();
  sub_2170066D4();

  *(v1 + 136) = v10;
  v36 = swift_task_alloc();
  OUTLINED_FUNCTION_23_11(v36);
  OUTLINED_FUNCTION_41_2();

  OUTLINED_FUNCTION_9_29();
  sub_2170066F4();

  OUTLINED_FUNCTION_21_6();
  swift_beginAccess();
  sub_217007D24();
  swift_endAccess();

  *(v1 + 144) = v10;
  v37 = swift_task_alloc();
  OUTLINED_FUNCTION_23_11(v37);
  OUTLINED_FUNCTION_41_2();

  OUTLINED_FUNCTION_9_29();
  sub_2170066E4();

  sub_2168588A0(1);

  v38 = v44;
LABEL_24:

LABEL_25:
  v39 = OUTLINED_FUNCTION_43_10();
  sub_216858C10(v39);

  OUTLINED_FUNCTION_3();

  return v40();
}

uint64_t sub_21685B3C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[19] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE1F0);
  v4[20] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9E80);
  v4[21] = v5;
  v4[22] = *(v5 - 8);
  v4[23] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9E88);
  v4[24] = v6;
  v4[25] = *(v6 - 8);
  v4[26] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7198);
  v4[27] = swift_task_alloc();
  v4[28] = type metadata accessor for MusicMetrics.PageFields(0);
  v4[29] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8DF8);
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();
  v7 = sub_21700D194();
  v4[32] = v7;
  v4[33] = *(v7 - 8);
  v4[34] = swift_task_alloc();
  sub_21700EA34();
  v4[35] = sub_21700EA24();
  v9 = sub_21700E9B4();
  v4[36] = v9;
  v4[37] = v8;

  return MEMORY[0x2822009F8](sub_21685B670, v9, v8);
}

uint64_t sub_21685B670()
{
  if (sub_216858FA4())
  {
    OUTLINED_FUNCTION_37_10();
    v3 = v1[31];
    v0 = v1[32];
    v4 = MEMORY[0x277D84F70];
    if (v1[5])
    {
      v5 = OUTLINED_FUNCTION_80_4();
      OUTLINED_FUNCTION_79_7(v5);
      if (!v6)
      {
        OUTLINED_FUNCTION_91_6();
        v7 = OUTLINED_FUNCTION_78_5();
        v8(v7);
        OUTLINED_FUNCTION_71_0();
        v9();
        OUTLINED_FUNCTION_41();
        __swift_storeEnumTagSinglePayload(v10, v11, v12, v3);
        sub_2168593AC(v2);
        v13 = OUTLINED_FUNCTION_116();
        v14(v13);
        goto LABEL_11;
      }
    }

    else
    {
      sub_216697664((v1 + 2), &unk_27CABF7A0);
      OUTLINED_FUNCTION_38_2();
      __swift_storeEnumTagSinglePayload(v15, v16, v17, v0);
    }

    sub_216697664(v1[31], &qword_27CAB8DF8);
    OUTLINED_FUNCTION_47_9();

    v0 = v1[27];
    v18 = v1[28];
    if (v1[9])
    {
      v19 = OUTLINED_FUNCTION_89_6();
      __swift_storeEnumTagSinglePayload(v0, v19 ^ 1u, 1, v18);
      v20 = OUTLINED_FUNCTION_12_17();
      if (__swift_getEnumTagSinglePayload(v20, v21, v18) != 1)
      {
        OUTLINED_FUNCTION_88_2();
        sub_216F0D610(v3, v0);
        OUTLINED_FUNCTION_41();
        __swift_storeEnumTagSinglePayload(v22, v23, v24, v4);
        sub_2168593AC(v0);
        OUTLINED_FUNCTION_24_14();
        goto LABEL_11;
      }
    }

    else
    {
      sub_216697664((v1 + 6), &unk_27CABF7A0);
      OUTLINED_FUNCTION_38_2();
      __swift_storeEnumTagSinglePayload(v25, v26, v27, v18);
    }

    sub_216697664(v1[27], &qword_27CAB7198);
  }

LABEL_11:
  OUTLINED_FUNCTION_58_5();
  sub_21685921C(v0);
  v28 = swift_task_alloc();
  v1[38] = v28;
  *v28 = v1;
  v29 = OUTLINED_FUNCTION_56_6(v28);

  return sub_2169FF314(v29, v30, v31);
}

uint64_t sub_21685B8A0()
{
  OUTLINED_FUNCTION_31();
  v1 = *v0;
  OUTLINED_FUNCTION_26_0();
  *v3 = v2;
  v4 = *(v1 + 240);
  v5 = *v0;
  OUTLINED_FUNCTION_11();
  *v6 = v5;
  *(v8 + 312) = v7;

  sub_216697664(v4, &qword_27CAB8DF8);
  OUTLINED_FUNCTION_100_5();

  OUTLINED_FUNCTION_100_5();
  v10 = *(v9 + 296);
  v11 = *(v1 + 288);

  return MEMORY[0x2822009F8](sub_21685B9FC, v11, v10);
}

uint64_t sub_21685B9FC()
{

  v6 = sub_216DE0C84();
  if (v6)
  {
    sub_2170076F4();
    OUTLINED_FUNCTION_41_2();

    v7 = [v0 identifier];

    if (v7)
    {
      v8 = sub_21700E514();
      v6 = v9;
    }

    else
    {
      v8 = 0;
      v6 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v10 = *(v1 + 312);
  if (v10)
  {
    v11 = [*(v1 + 312) identifier];
    if (v11)
    {
      v2 = v11;
      v12 = sub_21700E514();
      v14 = v13;

      if (!v6)
      {
        goto LABEL_9;
      }

LABEL_12:
      if (!v14)
      {
        goto LABEL_20;
      }

      if (v8 == v12 && v6 == v14)
      {
      }

      else
      {
        v8 = OUTLINED_FUNCTION_87_4();

        if ((v8 & 1) == 0)
        {
          if (!v10)
          {
LABEL_21:
            OUTLINED_FUNCTION_138();
            sub_21685C93C();
            goto LABEL_25;
          }

          goto LABEL_19;
        }
      }

LABEL_23:
      v38 = *(v1 + 312);
      goto LABEL_24;
    }
  }

  v12 = 0;
  v14 = 0;
  if (v6)
  {
    goto LABEL_12;
  }

LABEL_9:
  if (!v14)
  {
    goto LABEL_23;
  }

LABEL_20:

  if (!v10)
  {
    goto LABEL_21;
  }

LABEL_19:
  OUTLINED_FUNCTION_39_8();
  v45 = sub_217007784();
  OUTLINED_FUNCTION_91_1();
  v43 = v8;
  v48 = sub_217007774();
  sub_21685D480(v48);
  sub_217007704();
  sub_2166AF2EC();
  v16 = sub_21700EE84();
  *(v1 + 120) = v16;
  sub_21700EE64();
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
  OUTLINED_FUNCTION_5_0();
  sub_2166D9530(v21, v22);
  OUTLINED_FUNCTION_17_20();
  sub_2168612BC(v23, v24);
  OUTLINED_FUNCTION_45_9();
  sub_216697664(v2, &qword_27CABE1F0);

  (*(v5 + 8))(v4, v3);
  OUTLINED_FUNCTION_181();
  v25 = swift_allocObject();
  OUTLINED_FUNCTION_75_3(v25, v26, v27, v28, v29, v30, v31, v32, v42, v43, v45, v47, v48);
  OUTLINED_FUNCTION_35_2(&qword_280E48548, &qword_27CAB9E88);
  v44 = v2;

  OUTLINED_FUNCTION_67_5();

  v33 = OUTLINED_FUNCTION_105_2();
  v34(v33);
  v35 = swift_task_alloc();
  *v35 = v46;
  v35[1] = &off_280E485D8;
  OUTLINED_FUNCTION_229();
  swift_getKeyPath();
  OUTLINED_FUNCTION_41_2();

  *(v1 + 128) = v10;
  OUTLINED_FUNCTION_34_1(&qword_27CAB9E50, &qword_27CAB9E28);
  OUTLINED_FUNCTION_9_29();
  sub_2170066D4();

  *(v1 + 136) = v10;
  v36 = swift_task_alloc();
  OUTLINED_FUNCTION_23_11(v36);
  OUTLINED_FUNCTION_41_2();

  OUTLINED_FUNCTION_9_29();
  sub_2170066F4();

  OUTLINED_FUNCTION_21_6();
  swift_beginAccess();
  sub_217007D24();
  swift_endAccess();

  *(v1 + 144) = v10;
  v37 = swift_task_alloc();
  OUTLINED_FUNCTION_23_11(v37);
  OUTLINED_FUNCTION_41_2();

  OUTLINED_FUNCTION_9_29();
  sub_2170066E4();

  sub_2168589A0(1);

  v38 = v44;
LABEL_24:

LABEL_25:
  v39 = OUTLINED_FUNCTION_43_10();
  sub_216858D5C(v39);

  OUTLINED_FUNCTION_3();

  return v40();
}

uint64_t sub_21685BE74(uint64_t result)
{
  if (result)
  {
    return sub_21685C93C();
  }

  return result;
}

uint64_t sub_21685BEBC(uint64_t result)
{
  if (result)
  {
    return sub_21685C93C();
  }

  return result;
}

uint64_t sub_21685BF04()
{
  v0 = swift_allocObject();
  swift_weakInit();
  v1 = swift_allocObject();
  *(v1 + 16) = sub_216861598;
  *(v1 + 24) = v0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9E48);
  sub_2166D9530(&qword_280E48510, &qword_27CAB9E48);
  sub_217007E84();

  sub_217007654();
  swift_getKeyPath();
  sub_2166D9530(qword_280E419B0, &qword_27CAB8DE0);
  sub_2170066D4();

  swift_getKeyPath();
  sub_2170066F4();

  swift_beginAccess();
  sub_217007D24();
  swift_endAccess();

  swift_getKeyPath();
  sub_2170066E4();
}

uint64_t sub_21685C158()
{
  v0 = swift_allocObject();
  swift_weakInit();
  v1 = swift_allocObject();
  *(v1 + 16) = sub_216861058;
  *(v1 + 24) = v0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9E48);
  sub_2166D9530(&qword_280E48510, &qword_27CAB9E48);
  sub_217007E84();

  sub_217007784();
  swift_getKeyPath();
  sub_2166D9530(&qword_27CAB9E50, &qword_27CAB9E28);
  sub_2170066D4();

  swift_getKeyPath();
  sub_2170066F4();

  swift_beginAccess();
  sub_217007D24();
  swift_endAccess();

  swift_getKeyPath();
  sub_2170066E4();
}

uint64_t sub_21685C3AC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, char a5)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v11 = *(result + 40) == a1 && *(result + 48) == a2;
    if (!v11 && (sub_21700F7D4() & 1) == 0)
    {
    }

    v12 = sub_216DE0BE8();
    if (v12)
    {
      v13 = sub_2170076F4();

      v14 = [v13 identifier];

      if (v14)
      {
        v15 = sub_21700E514();
        v12 = v16;

        if (!a3)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v15 = 0;
        v12 = 0;
        if (!a3)
        {
          goto LABEL_18;
        }
      }
    }

    else
    {
      v15 = 0;
      if (!a3)
      {
        goto LABEL_18;
      }
    }

    v17 = [a3 identifier];
    if (v17)
    {
      v18 = v17;
      v19 = sub_21700E514();
      v21 = v20;

      if (v12)
      {
        goto LABEL_19;
      }

      goto LABEL_16;
    }

LABEL_18:
    v19 = 0;
    v21 = 0;
    if (v12)
    {
LABEL_19:
      if (v21)
      {
        if (v15 == v19 && v12 == v21)
        {
        }

        v23 = sub_21700F7D4();

        if (v23)
        {
        }

        if (a3)
        {
          goto LABEL_26;
        }

        goto LABEL_28;
      }

LABEL_27:

      if (a3)
      {
LABEL_26:
        sub_217007654();
        swift_allocObject();
        v24 = a3;
        sub_217007644();

        sub_21685CEB8(v25);

        v26 = v24;

        sub_21685C93C();

        sub_2168588A0(2);
      }

LABEL_28:
      if (a5 & 1) != 0 || a4 != 2 || (sub_2168596E8())
      {
        sub_21685C93C();
      }

      else
      {
        sub_2168594C8(1);
      }
    }

LABEL_16:
    if (!v21)
    {
    }

    goto LABEL_27;
  }

  return result;
}

uint64_t sub_21685C668(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, char a5)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v11 = *(result + 40) == a1 && *(result + 48) == a2;
    if (!v11 && (sub_21700F7D4() & 1) == 0)
    {
    }

    v12 = sub_216DE0C84();
    if (v12)
    {
      v13 = sub_2170076F4();

      v14 = [v13 identifier];

      if (v14)
      {
        v15 = sub_21700E514();
        v12 = v16;

        if (!a3)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v15 = 0;
        v12 = 0;
        if (!a3)
        {
          goto LABEL_18;
        }
      }
    }

    else
    {
      v15 = 0;
      if (!a3)
      {
        goto LABEL_18;
      }
    }

    v17 = [a3 identifier];
    if (v17)
    {
      v18 = v17;
      v19 = sub_21700E514();
      v21 = v20;

      if (v12)
      {
        goto LABEL_19;
      }

      goto LABEL_16;
    }

LABEL_18:
    v19 = 0;
    v21 = 0;
    if (v12)
    {
LABEL_19:
      if (v21)
      {
        if (v15 == v19 && v12 == v21)
        {
        }

        v23 = sub_21700F7D4();

        if (v23)
        {
        }

        if (a3)
        {
          goto LABEL_26;
        }

        goto LABEL_28;
      }

LABEL_27:

      if (a3)
      {
LABEL_26:
        sub_217007784();
        swift_allocObject();
        v24 = a3;
        sub_217007774();

        sub_21685D480(v25);

        v26 = v24;

        sub_21685C93C();

        sub_2168589A0(2);
      }

LABEL_28:
      if (a5 & 1) != 0 || a4 != 2 || (sub_2168597A4())
      {
        sub_21685C93C();
      }

      else
      {
        sub_2168595D8(1);
      }
    }

LABEL_16:
    if (!v21)
    {
    }

    goto LABEL_27;
  }

  return result;
}

uint64_t sub_21685C998(uint64_t a1, uint64_t a2, uint64_t a3)
{

  sub_216859EE4();
  sub_217007654();
  swift_getKeyPath();
  sub_2166D9530(qword_280E419B0, &qword_27CAB8DE0);
  sub_2170066D4();

  v6 = qword_280E41A48;
  if (*(a1 + qword_280E41A48))
  {

    sub_2170076D4();
  }

  MEMORY[0x28223BE20](v5);
  swift_getKeyPath();
  sub_2170066D4();

  if (*(a1 + v6))
  {

    sub_2170076E4();
  }

  if (a3)
  {
    MEMORY[0x28223BE20](v7);
    swift_getKeyPath();
    sub_2170066D4();

    if (*(a1 + v6))
    {

      sub_2170076C4();
    }
  }

  return sub_217007D74();
}

uint64_t sub_21685CC28(uint64_t a1, uint64_t a2, uint64_t a3)
{

  sub_216859064();
  sub_217007784();
  swift_getKeyPath();
  sub_2166D9530(&qword_27CAB9E50, &qword_27CAB9E28);
  sub_2170066D4();

  v6 = qword_280E41A48;
  if (*(a1 + qword_280E41A48))
  {

    sub_2170076D4();
  }

  MEMORY[0x28223BE20](v5);
  swift_getKeyPath();
  sub_2170066D4();

  if (*(a1 + v6))
  {

    sub_2170076E4();
  }

  if (a3)
  {
    MEMORY[0x28223BE20](v7);
    swift_getKeyPath();
    sub_2170066D4();

    if (*(a1 + v6))
    {

      sub_2170076C4();
    }
  }

  return sub_217007D74();
}

uint64_t sub_21685CEB8(uint64_t a1)
{
  v28 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE1F0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v23 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9E58);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9E60);
  v10 = *(v9 - 8);
  v24 = v9;
  v25 = v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9E68);
  v14 = *(v13 - 8);
  v26 = v13;
  v27 = v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v23 - v15;
  sub_217007684();
  sub_2166AF2EC();
  v17 = sub_21700EE84();
  v35 = v17;
  v18 = sub_21700EE64();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v18);
  sub_2166D9530(&qword_280E48488, &qword_27CAB9E58);
  sub_2168612BC(&qword_280E29CD8, sub_2166AF2EC);
  sub_217007E54();
  sub_216697664(v4, &qword_27CABE1F0);

  (*(v6 + 8))(v8, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9E70);
  sub_2166D9530(&qword_280E48540, &qword_27CAB9E60);
  v19 = v24;
  sub_217007E34();
  (*(v25 + 8))(v12, v19);
  swift_allocObject();
  swift_weakInit();
  sub_2166D9530(&unk_280E485A0, &qword_27CAB9E68);
  v20 = v26;
  sub_217007E84();

  (*(v27 + 8))(v16, v20);
  v21 = sub_217007654();
  v33 = v21;
  v34 = &off_280E485F8;
  swift_getKeyPath();
  v35 = v1;
  sub_2166D9530(qword_280E419B0, &qword_27CAB8DE0);
  sub_2170066D4();

  v35 = v1;
  v31 = v21;
  v32 = &off_280E485F8;
  swift_getKeyPath();
  sub_2170066F4();

  swift_beginAccess();
  sub_217007D24();
  swift_endAccess();

  v35 = v1;
  v29 = v21;
  v30 = &off_280E485F8;
  swift_getKeyPath();
  sub_2170066E4();

  swift_allocObject();
  swift_weakInit();

  sub_217007694();
}

uint64_t sub_21685D480(uint64_t a1)
{
  v28 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE1F0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v23 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9E58);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9E60);
  v10 = *(v9 - 8);
  v24 = v9;
  v25 = v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9E68);
  v14 = *(v13 - 8);
  v26 = v13;
  v27 = v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v23 - v15;
  sub_217007684();
  sub_2166AF2EC();
  v17 = sub_21700EE84();
  v35 = v17;
  v18 = sub_21700EE64();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v18);
  sub_2166D9530(&qword_280E48488, &qword_27CAB9E58);
  sub_2168612BC(&qword_280E29CD8, sub_2166AF2EC);
  sub_217007E54();
  sub_216697664(v4, &qword_27CABE1F0);

  (*(v6 + 8))(v8, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9E70);
  sub_2166D9530(&qword_280E48540, &qword_27CAB9E60);
  v19 = v24;
  sub_217007E34();
  (*(v25 + 8))(v12, v19);
  swift_allocObject();
  swift_weakInit();
  sub_2166D9530(&unk_280E485A0, &qword_27CAB9E68);
  v20 = v26;
  sub_217007E84();

  (*(v27 + 8))(v16, v20);
  v21 = sub_217007784();
  v33 = v21;
  v34 = &off_280E485D8;
  swift_getKeyPath();
  v35 = v1;
  sub_2166D9530(&qword_27CAB9E50, &qword_27CAB9E28);
  sub_2170066D4();

  v35 = v1;
  v31 = v21;
  v32 = &off_280E485D8;
  swift_getKeyPath();
  sub_2170066F4();

  swift_beginAccess();
  sub_217007D24();
  swift_endAccess();

  v35 = v1;
  v29 = v21;
  v30 = &off_280E485D8;
  swift_getKeyPath();
  sub_2170066E4();

  swift_allocObject();
  swift_weakInit();

  sub_217007694();
}

uint64_t sub_21685DA48(void *a1, char a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (a2)
    {
      sub_216860AA8(a1);
    }

    else
    {
      sub_21685DCD8();
    }
  }

  return result;
}

uint64_t sub_21685DB2C(void *a1, char a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (a2)
    {
      sub_216860AA8(a1);
    }

    else
    {
      sub_21685DCD8();
    }
  }

  return result;
}

uint64_t sub_21685DC10(void *a1, void (*a2)(uint64_t *), uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = *(Strong + qword_280E41B78);

    v8 = sub_216A2AA3C(a1, v7, a2, a3);
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

void sub_21685DCD8()
{
  OUTLINED_FUNCTION_49();
  v114 = v1;
  v115 = v2;
  v116 = v3;
  v117 = v4;
  v120 = v5;
  v121 = v6;
  v119 = v7;
  v123 = v0;
  v9 = v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0);
  OUTLINED_FUNCTION_36(v10);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v11);
  v122 = &v107 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820);
  v14 = OUTLINED_FUNCTION_36(v13);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v107 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v107 - v18;
  v20 = sub_217005EF4();
  OUTLINED_FUNCTION_1();
  v118 = v21;
  v23 = *(v22 + 64);
  v25 = MEMORY[0x28223BE20](v24);
  v26 = &v107 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v107 - v28;
  MEMORY[0x28223BE20](v27);
  v31 = &v107 - v30;
  v32 = [v9 originalRequest];
  v33 = [v9 selectedActionIdentifier];
  if (!v33)
  {
    sub_21700E514();
    v33 = sub_21700E4D4();
  }

  v34 = [v32 locateActionWithIdentifier_];

  v35 = MEMORY[0x277D85700];
  if (!v34)
  {
    OUTLINED_FUNCTION_38_2();
    __swift_storeEnumTagSinglePayload(v45, v46, v47, v20);
LABEL_15:
    sub_216697664(v19, &qword_27CABA820);
    OUTLINED_FUNCTION_108_4();
    v41 = v123;
    if (!v36)
    {
      OUTLINED_FUNCTION_0_3();
    }

    v51 = sub_217007CA4();
    __swift_project_value_buffer(v51, qword_280E73D20);
    v52 = sub_217007C84();
    v53 = sub_21700EDA4();
    if (OUTLINED_FUNCTION_90_3(v53))
    {
      v54 = OUTLINED_FUNCTION_43();
      OUTLINED_FUNCTION_36_5(v54);
      OUTLINED_FUNCTION_50_0(&dword_216679000, v55, v56, "💬 Action not supported");
      OUTLINED_FUNCTION_26_4();
    }

    goto LABEL_26;
  }

  if ([v34 style] == 2)
  {
    OUTLINED_FUNCTION_108_4();
    if (!v36)
    {
      OUTLINED_FUNCTION_0_3();
    }

    v37 = sub_217007CA4();
    __swift_project_value_buffer(v37, qword_280E73D20);
    v38 = sub_217007C84();
    v39 = sub_21700EDA4();
    v40 = OUTLINED_FUNCTION_90_3(v39);
    v41 = v123;
    if (v40)
    {
      v42 = OUTLINED_FUNCTION_43();
      OUTLINED_FUNCTION_36_5(v42);
      OUTLINED_FUNCTION_50_0(&dword_216679000, v43, v44, "💬 Closing placement");
      OUTLINED_FUNCTION_26_4();
    }

    OUTLINED_FUNCTION_138();
    sub_21685C93C();
    goto LABEL_26;
  }

  v48 = [v34 deepLink];
  if (v48)
  {
    v49 = v48;
    sub_217005E64();

    v50 = 0;
  }

  else
  {
    v50 = 1;
  }

  __swift_storeEnumTagSinglePayload(v17, v50, 1, v20);
  sub_2166CF4DC(v17, v19);
  if (__swift_getEnumTagSinglePayload(v19, 1, v20) == 1)
  {
    goto LABEL_15;
  }

  v57 = v118;
  v112 = *(v118 + 32);
  v113 = v118 + 32;
  v112(v31, v19, v20);
  if (qword_280E416F8 != -1)
  {
    OUTLINED_FUNCTION_0_3();
  }

  v58 = sub_217007CA4();
  __swift_project_value_buffer(v58, qword_280E73D20);
  v111 = *(v57 + 16);
  v111(v29, v31, v20);
  v59 = sub_217007C84();
  v60 = sub_21700EDA4();
  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    v107 = v61;
    v109 = swift_slowAlloc();
    v124 = v109;
    *v61 = 136446210;
    v108 = v60;
    v62 = sub_217005DE4();
    v64 = v63;
    v65 = OUTLINED_FUNCTION_59_5(v118);
    v66(v65);
    v67 = sub_2166A85FC(v62, v64, &v124);
    v57 = v118;

    v68 = v107;
    *(v107 + 1) = v67;
    _os_log_impl(&dword_216679000, v59, v108, "💬 Opening URL: %{public}s", v68, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v109);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
  }

  else
  {

    v69 = OUTLINED_FUNCTION_59_5(v57);
    v70(v69);
  }

  sub_21700EA74();
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v71, v72, v73, v74);
  v111(v26, v31, v20);
  sub_21700EA34();
  v41 = v123;

  v75 = sub_21700EA24();
  v76 = (*(v57 + 80) + 32) & ~*(v57 + 80);
  v77 = (v23 + v76 + 7) & 0xFFFFFFFFFFFFFFF8;
  v78 = swift_allocObject();
  *(v78 + 16) = v75;
  v79 = MEMORY[0x277D85700];
  *(v78 + 24) = MEMORY[0x277D85700];
  v80 = v78 + v76;
  v35 = v79;
  v112(v80, v26, v20);
  *(v78 + v77) = v41;
  OUTLINED_FUNCTION_138();
  sub_21677BBA0();

  v110(v31, v20);
LABEL_26:
  OUTLINED_FUNCTION_138();
  sub_21685C93C();
  v81 = sub_21700EA74();
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v82, v83, v84, v81);
  sub_21700EA34();

  v85 = sub_21700EA24();
  OUTLINED_FUNCTION_181();
  v86 = swift_allocObject();
  v86[2] = v85;
  v86[3] = v35;
  v86[4] = v41;
  OUTLINED_FUNCTION_138();
  sub_21677BBA0();

  if (v34 && (v87 = [v34 clickstreamMetricsEvent]) != 0 && (v88 = v87, v89 = sub_21700E354(), v88, v90 = sub_2169F7F6C(v89), , v90))
  {
    OUTLINED_FUNCTION_108_4();
    if (!v36)
    {
      OUTLINED_FUNCTION_0_3();
    }

    v91 = sub_217007CA4();
    __swift_project_value_buffer(v91, qword_280E73D20);
    v92 = sub_217007C84();
    v93 = sub_21700ED74();
    if (os_log_type_enabled(v92, v93))
    {
      v94 = OUTLINED_FUNCTION_43();
      *v94 = 0;
      _os_log_impl(&dword_216679000, v92, v93, "💬 Processing action clickstream metrics event", v94, 2u);
      OUTLINED_FUNCTION_6();
    }

    v95 = swift_allocObject();
    *(v95 + 16) = v90;
    OUTLINED_FUNCTION_38_2();
    __swift_storeEnumTagSinglePayload(v96, v97, v98, v81);

    v99 = sub_21700EA24();
    v100 = swift_allocObject();
    v100[2] = v99;
    v100[3] = v35;
    v100[4] = v41;
    v100[5] = v95;
    OUTLINED_FUNCTION_138();
    sub_21677E228();
  }

  else
  {
    OUTLINED_FUNCTION_108_4();
    if (!v36)
    {
      OUTLINED_FUNCTION_0_3();
    }

    v101 = sub_217007CA4();
    __swift_project_value_buffer(v101, qword_280E73D20);
    v102 = sub_217007C84();
    v103 = sub_21700ED74();
    if (OUTLINED_FUNCTION_90_3(v103))
    {
      v104 = OUTLINED_FUNCTION_43();
      OUTLINED_FUNCTION_36_5(v104);
      OUTLINED_FUNCTION_50_0(&dword_216679000, v105, v106, "💬 Skipping action clickstream metrics event reporting; none available");
      OUTLINED_FUNCTION_26_4();
    }
  }

  OUTLINED_FUNCTION_26();
}

uint64_t sub_21685E59C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABD770);
  v5[13] = v6;
  v5[14] = *(v6 - 8);
  v5[15] = swift_task_alloc();
  v7 = sub_21700D2A4();
  v5[16] = v7;
  v5[17] = *(v7 - 8);
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0);
  v5[22] = v8;
  v5[23] = *(v8 - 8);
  v5[24] = swift_task_alloc();
  v5[25] = type metadata accessor for ProcessDeepLinkAction();
  v5[26] = swift_task_alloc();
  sub_21700EA34();
  v5[27] = sub_21700EA24();
  v10 = sub_21700E9B4();
  v5[28] = v10;
  v5[29] = v9;

  return MEMORY[0x2822009F8](sub_21685E7B4, v10, v9);
}

uint64_t sub_21685E7B4()
{
  OUTLINED_FUNCTION_14_1();
  OUTLINED_FUNCTION_115_1();
  OUTLINED_FUNCTION_48_8();
  v4 = *(v3 + 20);
  sub_217005EF4();
  OUTLINED_FUNCTION_34();
  (*(v5 + 16))(v1 + v4, v2);
  type metadata accessor for ReferrerInfo();
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  *(v1 + *(v3 + 28)) = 1;
  type metadata accessor for ObjectGraph();
  OUTLINED_FUNCTION_86_6();
  v0[5] = v3;
  OUTLINED_FUNCTION_18_12();
  v0[6] = sub_2168612BC(v10, v11);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_2167D3B48(v1, boxed_opaque_existential_1);
  v13 = OUTLINED_FUNCTION_77_5();
  v14(v13);
  v0[30] = OUTLINED_FUNCTION_113_3();
  v15 = OUTLINED_FUNCTION_116();
  v16(v15);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2));
  v17 = OUTLINED_FUNCTION_116();
  __swift_instantiateConcreteTypeFromMangledNameV2(v17);
  OUTLINED_FUNCTION_20_2(&qword_280E2A120);
  swift_task_alloc();
  OUTLINED_FUNCTION_52();
  v0[31] = v18;
  *v18 = v19;
  OUTLINED_FUNCTION_72_6(v18);
  OUTLINED_FUNCTION_7_3();

  return MEMORY[0x282180360](v20);
}

uint64_t sub_21685E970()
{
  OUTLINED_FUNCTION_31();
  v2 = *v1;
  OUTLINED_FUNCTION_26_0();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 256) = v0;

  v5 = *(v2 + 232);
  v6 = *(v2 + 224);
  if (v0)
  {
    v7 = sub_21685EEAC;
  }

  else
  {
    v7 = sub_21685EABC;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_21685EABC()
{
  v50 = v0;
  v1 = v0[16];
  v2 = v0[17];

  v3 = *(v2 + 16);
  v4 = OUTLINED_FUNCTION_61_3();
  v3(v4);
  v5 = OUTLINED_FUNCTION_116();
  v7 = v6(v5);
  if (v7 == *MEMORY[0x277D21CA8] || v7 == *MEMORY[0x277D21CA0])
  {
    if (qword_280E416F8 != -1)
    {
      OUTLINED_FUNCTION_0_3();
    }

    v9 = sub_217007CA4();
    __swift_project_value_buffer(v9, qword_280E73D20);
    v10 = OUTLINED_FUNCTION_61_3();
    v3(v10);
    v11 = sub_217007C84();
    v12 = sub_21700EDA4();
    v13 = os_log_type_enabled(v11, v12);
    v14 = v0[23];
    v15 = v0[24];
    v47 = v0[21];
    v48 = v0[22];
    v16 = v0[19];
    if (v13)
    {
      v45 = v12;
      v44 = v0[17];
      v17 = v0[16];
      v18 = swift_slowAlloc();
      v46 = v15;
      v19 = swift_slowAlloc();
      v49 = v19;
      *v18 = 136446210;
      v20 = OUTLINED_FUNCTION_61_3();
      v3(v20);
      OUTLINED_FUNCTION_116();
      v21 = sub_21700E594();
      v23 = v22;
      log = v11;
      v24 = *(v44 + 8);
      v25 = OUTLINED_FUNCTION_7_4();
      v24(v25);
      v26 = sub_2166A85FC(v21, v23, &v49);

      *(v18 + 4) = v26;
      _os_log_impl(&dword_216679000, log, v45, "💬 Opening URL outcome: %{public}s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_6();

      (v24)(v47, v17);
      (*(v14 + 8))(v46, v48);
      OUTLINED_FUNCTION_1_37();
    }

    else
    {
      v38 = v0[16];
      v39 = v0[17];

      v40 = *(v39 + 8);
      v40(v16, v38);
      v40(v47, v38);
      (*(v14 + 8))(v15, v48);
      OUTLINED_FUNCTION_1_37();
    }

    sub_2168614CC();
  }

  else
  {
    if (qword_280E416F8 != -1)
    {
      OUTLINED_FUNCTION_0_3();
    }

    v27 = sub_217007CA4();
    __swift_project_value_buffer(v27, qword_280E73D20);
    v28 = sub_217007C84();
    v29 = sub_21700ED84();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = OUTLINED_FUNCTION_43();
      OUTLINED_FUNCTION_36_5(v30);
      _os_log_impl(&dword_216679000, v28, v29, "💬 Unknown opening URL outcome", v1, 2u);
      OUTLINED_FUNCTION_26_4();
    }

    v31 = v0[21];
    v32 = v0[16];
    v33 = v0[17];

    v34 = *(v33 + 8);
    v34(v31, v32);
    v35 = OUTLINED_FUNCTION_63_4();
    v36(v35);
    OUTLINED_FUNCTION_1_37();
    sub_2168614CC();
    v37 = OUTLINED_FUNCTION_54_3();
    (v34)(v37);
  }

  OUTLINED_FUNCTION_83_6();

  OUTLINED_FUNCTION_3();

  return v41();
}

uint64_t sub_21685EEAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_15_11();
  a21 = v23;
  a22 = v24;
  a20 = v22;

  if (qword_280E416F8 != -1)
  {
    OUTLINED_FUNCTION_0_3();
  }

  v25 = v22[32];
  v26 = sub_217007CA4();
  __swift_project_value_buffer(v26, qword_280E73D20);
  v27 = OUTLINED_FUNCTION_47();
  v28 = sub_217007C84();
  v29 = sub_21700ED84();

  v30 = os_log_type_enabled(v28, v29);
  v31 = v22[32];
  v32 = v22[26];
  v34 = v22[23];
  v33 = v22[24];
  v35 = v22[22];
  if (v30)
  {
    v36 = OUTLINED_FUNCTION_115_0();
    a11 = OUTLINED_FUNCTION_114();
    *v36 = 136446466;
    *(v36 + 4) = sub_2166A85FC(0xD000000000000015, 0x8000000217083160, &a11);
    *(v36 + 12) = 2082;
    swift_getErrorValue();
    a10 = v32;
    v37 = sub_21700F884();
    a9 = v35;
    v39 = v33;
    v40 = sub_2166A85FC(v37, v38, &a11);

    *(v36 + 14) = v40;
    _os_log_impl(&dword_216679000, v28, v29, "💬 Unable to perform '%{public}s' error='%{public}s'", v36, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();

    (*(v34 + 8))(v39, a9);
  }

  else
  {

    (*(v34 + 8))(v33, v35);
  }

  OUTLINED_FUNCTION_1_37();
  sub_2168614CC();
  OUTLINED_FUNCTION_83_6();

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_120();

  return v42(v41, v42, v43, v44, v45, v46, v47, v48, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_21685F0F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABD770);
  v5[13] = v6;
  v5[14] = *(v6 - 8);
  v5[15] = swift_task_alloc();
  v7 = sub_21700D2A4();
  v5[16] = v7;
  v5[17] = *(v7 - 8);
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0);
  v5[22] = v8;
  v5[23] = *(v8 - 8);
  v5[24] = swift_task_alloc();
  v5[25] = type metadata accessor for ProcessDeepLinkAction();
  v5[26] = swift_task_alloc();
  sub_21700EA34();
  v5[27] = sub_21700EA24();
  v10 = sub_21700E9B4();
  v5[28] = v10;
  v5[29] = v9;

  return MEMORY[0x2822009F8](sub_21685F310, v10, v9);
}

uint64_t sub_21685F310()
{
  OUTLINED_FUNCTION_14_1();
  OUTLINED_FUNCTION_115_1();
  OUTLINED_FUNCTION_48_8();
  v4 = *(v3 + 20);
  sub_217005EF4();
  OUTLINED_FUNCTION_34();
  (*(v5 + 16))(v1 + v4, v2);
  type metadata accessor for ReferrerInfo();
  OUTLINED_FUNCTION_38_2();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  *(v1 + *(v3 + 28)) = 1;
  type metadata accessor for ObjectGraph();
  OUTLINED_FUNCTION_86_6();
  v0[5] = v3;
  OUTLINED_FUNCTION_18_12();
  v0[6] = sub_2168612BC(v10, v11);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_2167D3B48(v1, boxed_opaque_existential_1);
  v13 = OUTLINED_FUNCTION_77_5();
  v14(v13);
  v0[30] = OUTLINED_FUNCTION_113_3();
  v15 = OUTLINED_FUNCTION_116();
  v16(v15);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2));
  v17 = OUTLINED_FUNCTION_116();
  __swift_instantiateConcreteTypeFromMangledNameV2(v17);
  OUTLINED_FUNCTION_20_2(&qword_280E2A120);
  swift_task_alloc();
  OUTLINED_FUNCTION_52();
  v0[31] = v18;
  *v18 = v19;
  OUTLINED_FUNCTION_72_6(v18);
  OUTLINED_FUNCTION_7_3();

  return MEMORY[0x282180360](v20);
}

uint64_t sub_21685F4CC()
{
  OUTLINED_FUNCTION_31();
  v2 = *v1;
  OUTLINED_FUNCTION_26_0();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 256) = v0;

  v5 = *(v2 + 232);
  v6 = *(v2 + 224);
  if (v0)
  {
    v7 = sub_216861BF4;
  }

  else
  {
    v7 = sub_216861C10;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_21685F618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  sub_21700EA34();
  v4[5] = sub_21700EA24();
  v6 = sub_21700E9B4();
  v4[6] = v6;
  v4[7] = v5;

  return MEMORY[0x2822009F8](sub_21685F6B0, v6, v5);
}

uint64_t sub_21685F6B0()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_76_5();
  sub_21700DF14();

  return MEMORY[0x2822009F8](sub_21685F718, v0, 0);
}

uint64_t sub_21685F718()
{
  OUTLINED_FUNCTION_33();
  sub_2169FDC30();

  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return MEMORY[0x2822009F8](sub_21685F784, v1, v2);
}

uint64_t sub_21685F784()
{
  OUTLINED_FUNCTION_33();

  OUTLINED_FUNCTION_3();

  return v0();
}

uint64_t sub_21685F7DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  sub_21700EA34();
  v4[5] = sub_21700EA24();
  v6 = sub_21700E9B4();
  v4[6] = v6;
  v4[7] = v5;

  return MEMORY[0x2822009F8](sub_21685F874, v6, v5);
}

uint64_t sub_21685F874()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_76_5();
  sub_21700DF14();

  return MEMORY[0x2822009F8](sub_21685F8DC, v0, 0);
}

uint64_t sub_21685F8DC()
{
  OUTLINED_FUNCTION_33();
  sub_2169FDC30();

  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return MEMORY[0x2822009F8](sub_216861C18, v1, v2);
}

uint64_t sub_21685F948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v6 = sub_21700D7E4();
  v5[13] = v6;
  v5[14] = *(v6 - 8);
  v5[15] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB40);
  v5[16] = v7;
  v5[17] = *(v7 - 8);
  v5[18] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8148);
  v5[19] = v8;
  v5[20] = *(v8 - 8);
  v5[21] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8DF8);
  v5[22] = swift_task_alloc();
  v5[23] = swift_task_alloc();
  v9 = sub_21700CFB4();
  v5[24] = v9;
  v5[25] = *(v9 - 8);
  v5[26] = swift_task_alloc();
  v10 = sub_21700DA84();
  v5[27] = v10;
  v5[28] = *(v10 - 8);
  v5[29] = swift_task_alloc();
  sub_21700EA34();
  v5[30] = sub_21700EA24();
  v12 = sub_21700E9B4();
  v5[31] = v12;
  v5[32] = v11;

  return MEMORY[0x2822009F8](sub_21685FC08, v12, v11);
}

uint64_t sub_21685FC08(uint64_t a1)
{
  v2 = *(v1[11] + 56);
  v3 = OBJC_IVAR____TtCO7MusicUI15UnifiedMessages11Coordinator_metricsOverlay;
  v1[33] = v2;
  v1[34] = v3;
  return OUTLINED_FUNCTION_30_9(a1, v2);
}

uint64_t sub_21685FC30()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_103_5();
  sub_21700DF14();

  return MEMORY[0x2822009F8](sub_21685FCA0, v0, v1);
}

void sub_21685FCA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_14_1();
  OUTLINED_FUNCTION_115_1();
  if (v13[35])
  {
    OUTLINED_FUNCTION_21_6();
    swift_beginAccess();
    v14 = sub_21700DF14();
    OUTLINED_FUNCTION_14_16(v14);
    swift_endAccess();
    if (v12)
    {
      OUTLINED_FUNCTION_7_3();
      return;
    }
  }

  sub_21700DA74();
  OUTLINED_FUNCTION_84_6();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9E78);
  OUTLINED_FUNCTION_31_0();
  v15 = sub_21700DEE4();
  OUTLINED_FUNCTION_1();
  v16 = OUTLINED_FUNCTION_68_5();
  *(v16 + 16) = xmmword_217013DA0;
  v17 = qword_280E2A160;
  sub_21700DF14();
  if (v17 != -1)
  {
    OUTLINED_FUNCTION_25_9();
  }

  __swift_project_value_buffer(v15, qword_280E73A08);
  v18 = OUTLINED_FUNCTION_98_4();
  v19(v18);
  sub_216F0F260(v16);
  OUTLINED_FUNCTION_66_7();
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_229();
  sub_217007DE4();

  v20 = sub_21700D194();
  v21 = OUTLINED_FUNCTION_12_17();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v21, v22, v20);
  v24 = v13[23];
  if (EnumTagSinglePayload)
  {
    sub_216697664(v13[23], &qword_27CAB8DF8);
  }

  else
  {
    v29 = sub_21700D0F4();
    sub_216697664(v24, &qword_27CAB8DF8);
    if (v29)
    {
      goto LABEL_14;
    }
  }

  sub_216859140(v13[22]);
  v25 = OUTLINED_FUNCTION_12_17();
  v27 = __swift_getEnumTagSinglePayload(v25, v26, v20);
  v28 = v13[22];
  if (v27)
  {
    sub_216697664(v13[22], &qword_27CAB8DF8);
LABEL_15:

    goto LABEL_16;
  }

  v30 = sub_21700D0F4();
  sub_216697664(v28, &qword_27CAB8DF8);

  if (v30)
  {
LABEL_14:
    OUTLINED_FUNCTION_82_5();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20);
    sub_21700DA64();
    v31 = OUTLINED_FUNCTION_20_13();
    v32(v31);
    goto LABEL_15;
  }

LABEL_16:
  v33 = sub_2169FDD04();
  if (v33)
  {
    OUTLINED_FUNCTION_69_6(v33, v34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB60);
    sub_21700DA64();
    v35 = OUTLINED_FUNCTION_20_13();
    v36(v35);
    swift_unknownObjectRelease();
  }

  swift_task_alloc();
  OUTLINED_FUNCTION_52();
  v13[36] = v37;
  *v37 = v38;
  OUTLINED_FUNCTION_55_8(v37);
  OUTLINED_FUNCTION_7_3();

  MEMORY[0x28217F3A8](v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12);
}

uint64_t sub_21686001C()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  v3 = v2;
  OUTLINED_FUNCTION_26_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_11();
  *v6 = v5;
  v3[37] = v0;

  if (v0)
  {
    v7 = v3[31];
    v8 = v3[32];
    v9 = sub_2168601F8;
  }

  else
  {
    (*(v3[14] + 8))(v3[15], v3[13]);
    v7 = v3[31];
    v8 = v3[32];
    v9 = sub_216860134;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_216860134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_15_11();
  OUTLINED_FUNCTION_46_9();
  v17 = OUTLINED_FUNCTION_63_4();
  v18(v17);
  (*(v16 + 8))(v15, v14);

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_120();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_2168601F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_15_11();
  OUTLINED_FUNCTION_46_9();
  v17 = OUTLINED_FUNCTION_63_4();
  v18(v17);
  (*(v16 + 8))(v15, v14);

  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_120();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_2168602BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v6 = sub_21700D7E4();
  v5[13] = v6;
  v5[14] = *(v6 - 8);
  v5[15] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB40);
  v5[16] = v7;
  v5[17] = *(v7 - 8);
  v5[18] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8148);
  v5[19] = v8;
  v5[20] = *(v8 - 8);
  v5[21] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8DF8);
  v5[22] = swift_task_alloc();
  v5[23] = swift_task_alloc();
  v9 = sub_21700CFB4();
  v5[24] = v9;
  v5[25] = *(v9 - 8);
  v5[26] = swift_task_alloc();
  v10 = sub_21700DA84();
  v5[27] = v10;
  v5[28] = *(v10 - 8);
  v5[29] = swift_task_alloc();
  sub_21700EA34();
  v5[30] = sub_21700EA24();
  v12 = sub_21700E9B4();
  v5[31] = v12;
  v5[32] = v11;

  return MEMORY[0x2822009F8](sub_21686057C, v12, v11);
}

uint64_t sub_21686057C(uint64_t a1)
{
  v2 = *(v1[11] + 56);
  v3 = OBJC_IVAR____TtCO7MusicUI15UnifiedMessages11Coordinator_metricsOverlay;
  v1[33] = v2;
  v1[34] = v3;
  return OUTLINED_FUNCTION_30_9(a1, v2);
}

uint64_t sub_2168605A4()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_103_5();
  sub_21700DF14();

  return MEMORY[0x2822009F8](sub_216860614, v0, v1);
}

void sub_216860614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_14_1();
  OUTLINED_FUNCTION_115_1();
  if (v13[35])
  {
    OUTLINED_FUNCTION_21_6();
    swift_beginAccess();
    v14 = sub_21700DF14();
    OUTLINED_FUNCTION_14_16(v14);
    swift_endAccess();
    if (v12)
    {
      OUTLINED_FUNCTION_7_3();
      return;
    }
  }

  sub_21700DA74();
  OUTLINED_FUNCTION_84_6();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9E78);
  OUTLINED_FUNCTION_31_0();
  v15 = sub_21700DEE4();
  OUTLINED_FUNCTION_1();
  v16 = OUTLINED_FUNCTION_68_5();
  *(v16 + 16) = xmmword_217013DA0;
  v17 = qword_280E2A160;
  sub_21700DF14();
  if (v17 != -1)
  {
    OUTLINED_FUNCTION_25_9();
  }

  __swift_project_value_buffer(v15, qword_280E73A08);
  v18 = OUTLINED_FUNCTION_98_4();
  v19(v18);
  sub_216F0F260(v16);
  OUTLINED_FUNCTION_66_7();
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_229();
  sub_217007DE4();

  v20 = sub_21700D194();
  v21 = OUTLINED_FUNCTION_12_17();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v21, v22, v20);
  v24 = v13[23];
  if (EnumTagSinglePayload)
  {
    sub_216697664(v13[23], &qword_27CAB8DF8);
  }

  else
  {
    v29 = sub_21700D0F4();
    sub_216697664(v24, &qword_27CAB8DF8);
    if (v29)
    {
      goto LABEL_14;
    }
  }

  sub_21685921C(v13[22]);
  v25 = OUTLINED_FUNCTION_12_17();
  v27 = __swift_getEnumTagSinglePayload(v25, v26, v20);
  v28 = v13[22];
  if (v27)
  {
    sub_216697664(v13[22], &qword_27CAB8DF8);
LABEL_15:

    goto LABEL_16;
  }

  v30 = sub_21700D0F4();
  sub_216697664(v28, &qword_27CAB8DF8);

  if (v30)
  {
LABEL_14:
    OUTLINED_FUNCTION_82_5();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20);
    sub_21700DA64();
    v31 = OUTLINED_FUNCTION_20_13();
    v32(v31);
    goto LABEL_15;
  }

LABEL_16:
  v33 = sub_2169FDD04();
  if (v33)
  {
    OUTLINED_FUNCTION_69_6(v33, v34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB60);
    sub_21700DA64();
    v35 = OUTLINED_FUNCTION_20_13();
    v36(v35);
    swift_unknownObjectRelease();
  }

  swift_task_alloc();
  OUTLINED_FUNCTION_52();
  v13[36] = v37;
  *v37 = v38;
  OUTLINED_FUNCTION_55_8(v37);
  OUTLINED_FUNCTION_7_3();

  MEMORY[0x28217F3A8](v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12);
}

uint64_t sub_216860990()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  v3 = v2;
  OUTLINED_FUNCTION_26_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_11();
  *v6 = v5;
  v3[37] = v0;

  if (v0)
  {
    v7 = v3[31];
    v8 = v3[32];
    v9 = sub_216861BD0;
  }

  else
  {
    (*(v3[14] + 8))(v3[15], v3[13]);
    v7 = v3[31];
    v8 = v3[32];
    v9 = sub_216861BEC;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

void sub_216860AA8(void *a1)
{
  if (qword_280E416F8 != -1)
  {
    OUTLINED_FUNCTION_0_3();
  }

  v2 = sub_217007CA4();
  __swift_project_value_buffer(v2, qword_280E73D20);
  v3 = OUTLINED_FUNCTION_47();
  oslog = sub_217007C84();
  v4 = sub_21700ED84();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138543362;
    v7 = a1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_216679000, oslog, v4, "💬 %{public}@", v5, 0xCu);
    sub_216697664(v6, &qword_27CABF880);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_26_4();
  }
}

BOOL sub_216860CE4(uint64_t a1, uint64_t a2)
{
  v2 = (a1 | a2) == 0;
  if (a1 && a2)
  {
    v2 = sub_21700EAE4();
  }

  return (v2 & 1) == 0;
}

uint64_t sub_216860D3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *a4;
  result = sub_216860DB0(a1, a2, a3, isUniquelyReferenced_nonNull_native, &v10);
  *a4 = v10;
  return result;
}

uint64_t sub_216860DB0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  sub_216ABEAA0(v30);
  v28[2] = v30[0];
  v28[3] = v30[1];
  v28[4] = v30[2];
  v29 = v31;
  sub_21700DF14();

  while (1)
  {
    sub_216ABDB24(&v27);
    v7 = *(&v27 + 1);
    if (!*(&v27 + 1))
    {
      sub_216687978();
    }

    v8 = v27;
    sub_2166EF9C4(v28, v26);
    v9 = *a5;
    v11 = sub_2166AF66C(v8, v7);
    v12 = v9[2];
    v13 = (v10 & 1) == 0;
    if (__OFADD__(v12, v13))
    {
      break;
    }

    v14 = v10;
    if (v9[3] >= v12 + v13)
    {
      if (a4)
      {
        if (v10)
        {
          goto LABEL_10;
        }
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB82A8);
        sub_21700F564();
        if (v14)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
      sub_216AB9018();
      v15 = sub_2166AF66C(v8, v7);
      if ((v14 & 1) != (v16 & 1))
      {
        goto LABEL_18;
      }

      v11 = v15;
      if (v14)
      {
LABEL_10:
        v17 = *a5;
        sub_2166A6DF8(v26, v25);
        __swift_destroy_boxed_opaque_existential_1Tm(v26);

        v18 = (v17[7] + 32 * v11);
        __swift_destroy_boxed_opaque_existential_1Tm(v18);
        sub_2166EF9C4(v25, v18);
        goto LABEL_14;
      }
    }

    v19 = *a5;
    *(*a5 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    v20 = (v19[6] + 16 * v11);
    *v20 = v8;
    v20[1] = v7;
    sub_2166EF9C4(v26, (v19[7] + 32 * v11));
    v21 = v19[2];
    v22 = __OFADD__(v21, 1);
    v23 = v21 + 1;
    if (v22)
    {
      goto LABEL_17;
    }

    v19[2] = v23;
LABEL_14:
    a4 = 1;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  result = sub_21700F824();
  __break(1u);
  return result;
}

uint64_t sub_216861094()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_31_15();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_20_0(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_3_3(v2);

  return sub_21685F7DC(v4, v5, v6, v0);
}

uint64_t sub_216861124()
{
  OUTLINED_FUNCTION_93();
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_20_0(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_3_3(v4);

  return sub_2168602BC(v6, v7, v8, v2, v1);
}

uint64_t sub_2168611C8()
{
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_31_0();
  sub_217005EF4();
  OUTLINED_FUNCTION_71_6();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_20_0(v1);
  *v2 = v3;
  v2[1] = sub_216861BF0;
  v4 = OUTLINED_FUNCTION_4_25();

  return sub_21685F0F8(v4, v5, v6, v7, v0);
}

uint64_t sub_2168612BC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_216861304(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8DF8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2168613B0()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_31_15();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_20_0(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_3_3(v2);

  return sub_21685B3C8(v4, v5, v6, v0);
}

uint64_t sub_216861468(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MusicMetrics.PageFields(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2168614CC()
{
  v1 = OUTLINED_FUNCTION_31_0();
  v2(v1);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_216861520(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8DF8);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_2168615BC()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_31_15();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_20_0(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_3_3(v2);

  return sub_21685F618(v4, v5, v6, v0);
}

uint64_t sub_21686164C()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  v1 = *v0;
  OUTLINED_FUNCTION_11();
  *v2 = v1;

  OUTLINED_FUNCTION_3();

  return v3();
}

uint64_t objectdestroy_43Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_216861778()
{
  OUTLINED_FUNCTION_93();
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_20_0(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_3_3(v4);

  return sub_21685F948(v6, v7, v8, v2, v1);
}

uint64_t objectdestroy_47Tm()
{
  v1 = sub_217005EF4();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v4, v1);

  return swift_deallocObject();
}

uint64_t sub_2168618E8()
{
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_31_0();
  sub_217005EF4();
  OUTLINED_FUNCTION_71_6();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_20_0(v1);
  *v2 = v3;
  v2[1] = sub_216861BF0;
  v4 = OUTLINED_FUNCTION_4_25();

  return sub_21685E59C(v4, v5, v6, v7, v0);
}

uint64_t objectdestroy_36Tm()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_181();

  return swift_deallocObject();
}

uint64_t sub_216861A6C()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_31_15();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_20_0(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_3_3(v2);

  return sub_21685A91C(v4, v5, v6, v0);
}

uint64_t objectdestroy_90Tm()
{

  OUTLINED_FUNCTION_181();

  return swift_deallocObject();
}

uint64_t OUTLINED_FUNCTION_88_2()
{
  v2 = *(v0 + 216);
  v3 = *(v0 + 232);

  return sub_216861468(v2, v3);
}

uint64_t OUTLINED_FUNCTION_89_6()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_103_5()
{
  result = *(v0[33] + v0[34]);
  v0[35] = result;
  return result;
}

void sub_216861D18()
{
  sub_216861DD0();
  if (v0 <= 0x3F)
  {
    sub_21686B1D4(319, &qword_280E2B4C0, MEMORY[0x277D7EC08]);
    if (v1 <= 0x3F)
    {
      sub_21680D428();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_216861DD0()
{
  if (!qword_280E458C8)
  {
    type metadata accessor for PosterLockup();
    sub_2166D5AB0(qword_280E44990);
    sub_2166D5AB0(&qword_280E44978);
    v0 = type metadata accessor for MappedItem();
    if (!v1)
    {
      atomic_store(v0, &qword_280E458C8);
    }
  }
}

uint64_t sub_216861EC8@<X0>(uint64_t a1@<X8>)
{
  v51 = a1;
  v52 = sub_217009314();
  OUTLINED_FUNCTION_1();
  v50 = v2;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_7();
  v49 = v5 - v4;
  v6 = type metadata accessor for PosterLockup();
  v7 = OUTLINED_FUNCTION_36(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_7();
  v10 = v9 - v8;
  v44 = sub_2170099D4();
  OUTLINED_FUNCTION_1();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_7();
  v16 = v15 - v14;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9EE0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v18);
  v20 = &v44 - v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9EE8);
  OUTLINED_FUNCTION_1();
  v46 = v21;
  v47 = v22;
  MEMORY[0x28223BE20](v21);
  v24 = &v44 - v23;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9EF0);
  OUTLINED_FUNCTION_34();
  v26 = MEMORY[0x28223BE20](v25);
  v28 = &v44 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v45 = &v44 - v29;
  *v20 = sub_2170093C4();
  *(v20 + 1) = 0;
  v20[16] = 1;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9EF8);
  sub_216862498(v1, &v20[*(v30 + 44)]);
  v55[3] = sub_2170067A4();
  v55[4] = sub_2166D5AB0(&qword_280E4A480);
  __swift_allocate_boxed_opaque_existential_1(v55);
  sub_216CCAF90();
  v31 = &v20[*(v17 + 36)];
  sub_2167B7D58(v55, (v31 + 2));
  type metadata accessor for MusicEntityAnnotationWrapper();
  sub_2166D5AB0(&qword_280E46810);
  OUTLINED_FUNCTION_42_0();
  *v31 = sub_217008CF4();
  v31[1] = v32;
  __swift_destroy_boxed_opaque_existential_1Tm(v55);
  sub_2170099A4();
  v33 = sub_21686A790();
  sub_21700A784();
  (*(v12 + 8))(v16, v44);
  sub_2167FDB84(v20, &qword_27CAB9EE0);
  sub_216DE9538();
  v55[0] = sub_2167B29C8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74F8);
  sub_21686C6A0(&qword_280E29E38);
  v34 = sub_21700E454();
  v36 = v35;
  sub_21686A9EC(v10, type metadata accessor for PosterLockup);

  v55[0] = v34;
  v55[1] = v36;
  v53 = v17;
  v54 = v33;
  OUTLINED_FUNCTION_5_5();
  swift_getOpaqueTypeConformance2();
  sub_2167B2E14();
  v37 = v46;
  sub_21700A6B4();

  (*(v47 + 8))(v24, v37);
  sub_216DE9538();
  sub_2167B2894();
  sub_21686A9EC(v10, type metadata accessor for PosterLockup);
  v38 = v45;
  sub_2170089C4();

  sub_2167FDB84(v28, &qword_27CAB9EF0);
  v39 = v49;
  sub_2170092F4();
  v40 = v51;
  sub_2170089A4();
  (*(v50 + 8))(v39, v52);
  sub_2167FDB84(v38, &qword_27CAB9EF0);
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9F18);
  v43 = v40 + *(result + 36);
  *v43 = KeyPath;
  *(v43 + 8) = 0;
  return result;
}

uint64_t sub_216862498@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v116 = a2;
  v3 = type metadata accessor for PosterLockupView(0);
  v109 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v110 = v4;
  v111 = &KeyPath - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9F20);
  MEMORY[0x28223BE20](v119);
  v118 = (&KeyPath - v5);
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9F28);
  v114 = *(v115 - 8);
  v6 = MEMORY[0x28223BE20](v115);
  v113 = &KeyPath - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v112 = &KeyPath - v8;
  v102 = sub_21700D864();
  v9 = *(v102 - 8);
  MEMORY[0x28223BE20](v102);
  v11 = &KeyPath - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = sub_21700D8E4();
  v105 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  v13 = &KeyPath - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PosterLockup();
  v15 = v14 - 8;
  MEMORY[0x28223BE20](v14);
  v17 = &KeyPath - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9F30);
  v103 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v98 = &KeyPath - v18;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9F38);
  MEMORY[0x28223BE20](v94);
  v96 = &KeyPath - v19;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9F40);
  MEMORY[0x28223BE20](v93);
  v99 = &KeyPath - v20;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9F48);
  MEMORY[0x28223BE20](v97);
  v101 = &KeyPath - v21;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9F50);
  v22 = MEMORY[0x28223BE20](v100);
  v107 = &KeyPath - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v95 = &KeyPath - v25;
  MEMORY[0x28223BE20](v24);
  v117 = &KeyPath - v26;
  v108 = a1;
  sub_216DE9538();
  v27 = &v17[*(v15 + 36)];
  v28 = *v27;
  v29 = v27[1];
  sub_21700DF14();
  sub_21686A9EC(v17, type metadata accessor for PosterLockup);
  if (v29)
  {
    v30 = v28;
  }

  else
  {
    v30 = 0;
  }

  if (v29)
  {
    v31 = MEMORY[0x277D84F90];
  }

  else
  {
    v31 = 0;
  }

  if (qword_27CAB5960 != -1)
  {
    swift_once();
  }

  v32 = qword_27CAB9EC0;
  KeyPath = swift_getKeyPath();
  v122 = v30;
  v123 = v29;
  v124 = 0;
  v125 = v31;
  v126 = KeyPath;
  v127 = v32;
  v33 = v11;
  v34 = v11;
  v35 = v102;
  (*(v9 + 104))(v34, *MEMORY[0x277D22068], v102);
  memset(v121, 0, sizeof(v121));
  memset(v120, 0, sizeof(v120));

  sub_21700D874();
  sub_2167FDB84(v120, &unk_27CABF7A0);
  sub_2167FDB84(v121, &unk_27CABF7A0);
  (*(v9 + 8))(v33, v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7660);
  sub_2167C4CBC();
  v36 = v98;
  sub_21700A204();
  (*(v105 + 8))(v13, v106);
  sub_2167C4DF0(v30, v29, 0, v31);

  v37 = sub_21700AD34();
  v38 = swift_getKeyPath();
  v39 = v96;
  (*(v103 + 32))(v96, v36, v104);
  v40 = &v39[*(v94 + 36)];
  *v40 = v38;
  v40[1] = v37;
  v41 = swift_getKeyPath();
  v42 = v39;
  v43 = v99;
  sub_2167C5834(v42, v99, &qword_27CAB9F38);
  v44 = v43 + *(v93 + 36);
  *v44 = v41;
  *(v44 + 8) = 1;
  *(v44 + 16) = 0;
  LOBYTE(v41) = sub_217009C94();
  sub_217007F24();
  v46 = v45;
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v53 = v43;
  v54 = v101;
  sub_2167C5834(v53, v101, &qword_27CAB9F40);
  v55 = v54 + *(v97 + 36);
  *v55 = v41;
  *(v55 + 8) = v46;
  *(v55 + 16) = v48;
  *(v55 + 24) = v50;
  *(v55 + 32) = v52;
  *(v55 + 40) = 0;
  LOBYTE(v41) = sub_217009CA4();
  sub_217007F24();
  v57 = v56;
  v59 = v58;
  v61 = v60;
  v63 = v62;
  v64 = v54;
  v65 = v95;
  sub_2167C5834(v64, v95, &qword_27CAB9F48);
  v66 = v65 + *(v100 + 36);
  *v66 = v41;
  *(v66 + 8) = v57;
  *(v66 + 16) = v59;
  *(v66 + 24) = v61;
  *(v66 + 32) = v63;
  *(v66 + 40) = 0;
  sub_2167C5834(v65, v117, &qword_27CAB9F50);
  v67 = sub_2170093B4();
  v68 = v118;
  *v118 = v67;
  v68[1] = 0;
  *(v68 + 16) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9F58);
  v69 = v108;
  sub_216863194(v108);
  v70 = v68 + *(v119 + 36);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8A90);
  sub_217008C64();
  if (qword_280E2C2C0 != -1)
  {
    swift_once();
  }

  v72 = sub_217008B34();
  v73 = __swift_project_value_buffer(v72, qword_280E73A88);
  v74 = sub_21686A858(v73, v70, MEMORY[0x277CDFBC8]);
  *(v70 + *(v71 + 36)) = 0;
  v75 = MEMORY[0x28223BE20](v74);
  MEMORY[0x28223BE20](v75);
  v76 = v111;
  sub_21686A858(v69, v111, type metadata accessor for PosterLockupView);
  v77 = (*(v109 + 80) + 16) & ~*(v109 + 80);
  v78 = swift_allocObject();
  sub_21686AA40(v76, v78 + v77, type metadata accessor for PosterLockupView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8AA0);
  type metadata accessor for ContextMenuPreview(0);
  sub_21686A908();
  sub_21686C6A0(qword_280E2BAE8);
  sub_2166D5AB0(qword_280E3F158);
  v79 = v112;
  v80 = v118;
  sub_21700A394();

  sub_2167FDB84(v80, &qword_27CAB9F20);
  v81 = v117;
  v82 = v107;
  sub_216683A80(v117, v107, &qword_27CAB9F50);
  v83 = v114;
  v84 = *(v114 + 16);
  v85 = v113;
  v86 = v115;
  v84(v113, v79, v115);
  v87 = v116;
  sub_216683A80(v82, v116, &qword_27CAB9F50);
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9F78);
  v89 = v87 + *(v88 + 48);
  *v89 = 0;
  *(v89 + 8) = 0;
  v84((v87 + *(v88 + 64)), v85, v86);
  v90 = *(v83 + 8);
  v90(v79, v86);
  sub_2167FDB84(v81, &qword_27CAB9F50);
  v90(v85, v86);
  return sub_2167FDB84(v82, &qword_27CAB9F50);
}

uint64_t sub_216863194(uint64_t a1)
{
  v2 = type metadata accessor for PosterLockupView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = type metadata accessor for PosterLockup();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9F80);
  v9 = (v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = (&v19 - v10);
  sub_216DE9538();
  sub_21691A23C(v11);
  sub_21686A9EC(v7, type metadata accessor for PosterLockup);
  v12 = v9[13];
  v13 = sub_217007F04();
  __swift_storeEnumTagSinglePayload(v11 + v12, 1, 1, v13);
  sub_21686A858(a1, &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PosterLockupView);
  v14 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v15 = swift_allocObject();
  sub_21686AA40(&v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14, type metadata accessor for PosterLockupView);
  v16 = v9[14];
  *(v11 + v16) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0);
  swift_storeEnumTagMultiPayload();
  v17 = v11 + v9[15];
  *v17 = swift_getKeyPath();
  v17[40] = 0;
  v11[5] = sub_21686AA9C;
  v11[6] = v15;
  v11[7] = 0;
  v11[8] = 0;
  sub_216E3169C();
  return sub_2167FDB84(v11, &qword_27CAB9F80);
}

uint64_t sub_216863428@<X0>(void (*a1)(char *, uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v113 = a2;
  v111 = type metadata accessor for PosterLockup();
  MEMORY[0x28223BE20](v111);
  v112 = &v92 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9F88);
  v107 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v105 = &v92 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9F90);
  v108 = *(v5 - 8);
  v109 = v5;
  MEMORY[0x28223BE20](v5);
  v106 = &v92 - v6;
  v7 = sub_2170067A4();
  v99 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7);
  v98 = &v92 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v96 = &v92 - v11;
  v97 = v12;
  MEMORY[0x28223BE20](v10);
  v104 = &v92 - v13;
  v14 = sub_217008B44();
  MEMORY[0x28223BE20](v14);
  v16 = &v92 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for PosterLockupView.Card(0);
  v18 = v17 - 8;
  MEMORY[0x28223BE20](v17);
  v20 = &v92 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9F98);
  v93 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v22 = &v92 - v21;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9FA0);
  MEMORY[0x28223BE20](v114);
  v116 = &v92 - v23;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9FA8);
  v102 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v101 = &v92 - v24;
  v100 = a1;
  v25 = *a1;
  *v20 = *a1;
  *(v20 + 1) = swift_getKeyPath();
  v20[16] = 0;
  v26 = *(v18 + 32);
  *&v20[v26] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7580);
  swift_storeEnumTagMultiPayload();
  v27 = *(v18 + 36);
  *&v20[v27] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9128);
  swift_storeEnumTagMultiPayload();
  v95 = v14;
  v28 = *(v14 + 20);
  v29 = *MEMORY[0x277CE0118];
  v30 = sub_217009294();
  v31 = *(*(v30 - 8) + 104);
  v31(&v16[v28], v29, v30);
  __asm { FMOV            V0.2D, #14.0 }

  v92 = _Q0;
  *v16 = _Q0;
  v37 = qword_280E2C2C8;
  v115 = v25;

  if (v37 != -1)
  {
    swift_once();
  }

  sub_216E2F888();
  sub_21686A9EC(v16, MEMORY[0x277CDFC08]);
  sub_21686A9EC(v20, type metadata accessor for PosterLockupView.Card);
  sub_216788294(v115 + 16, &v119);
  v38 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9FB0);
  v39 = sub_21686AB20();
  v117 = v38;
  v118 = v39;
  swift_getOpaqueTypeConformance2();
  v40 = v94;
  sub_21700A6E4();
  sub_216788110(&v119);
  (*(v93 + 8))(v22, v40);
  if (qword_27CAB5958 != -1)
  {
    swift_once();
  }

  v41 = xmmword_27CAB9E98;
  v42 = qword_27CAB9EA8;
  v43 = qword_27CAB9EB0;
  v31(&v16[*(v95 + 5)], v29, v30);
  *v16 = v92;
  v44 = sub_21700B3B4();
  v46 = v45;
  v47 = &v116[*(v114 + 36)];
  sub_21686A858(v16, v47, MEMORY[0x277CDFC08]);
  v48 = v47 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB73B0) + 36);
  *v48 = v43;
  *(v48 + 8) = v42;
  *(v48 + 16) = v41;

  LOBYTE(v43) = sub_217009C84();
  sub_217007F24();
  v50 = v49;
  v52 = v51;
  v54 = v53;
  v56 = v55;
  v57 = v47 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB73B8) + 36);
  *v57 = v43;
  *(v57 + 8) = v50;
  *(v57 + 16) = v52;
  *(v57 + 24) = v54;
  *(v57 + 32) = v56;
  *(v57 + 40) = 0;
  v58 = (v47 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9FF8) + 36));
  *v58 = v44;
  v58[1] = v46;
  sub_21686A9EC(v16, MEMORY[0x277CDFC08]);
  v59 = v104;
  v60 = sub_216CCAF90();
  v95 = &v92;
  MEMORY[0x28223BE20](v60);
  v61 = v99;
  v62 = *(v99 + 16);
  v63 = v96;
  v62(v96, v59, v7);
  LODWORD(v94) = (*(v61 + 88))(v63, v7) != *MEMORY[0x277D2A410];
  v100 = *(v61 + 8);
  v100(v63, v7);
  v122 = v7;
  v64 = __swift_allocate_boxed_opaque_existential_1(&v119);
  v62(v64, v59, v7);
  v65 = v98;
  v62(v98, v59, v7);
  v66 = (*(v61 + 80) + 16) & ~*(v61 + 80);
  v67 = swift_allocObject();
  v68 = (*(v61 + 32))(v67 + v66, v65, v7);
  v98 = &v92;
  MEMORY[0x28223BE20](v68);
  v99 = v7;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA000);
  v90 = sub_21686AE08();
  v91 = sub_21686AF54();
  v70 = v114;
  v71 = v105;
  v72 = v116;
  sub_21700AA24();

  sub_2167FDB84(&v119, &unk_27CABF7A0);
  v119 = v70;
  v120 = v69;
  v121 = v90;
  v122 = v91;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v74 = v106;
  v75 = v110;
  sub_21700A724();
  (*(v107 + 8))(v71, v75);
  v119 = v75;
  v120 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v76 = v101;
  v77 = v109;
  sub_21700A8D4();
  (*(v108 + 8))(v74, v77);
  v100(v59, v99);
  sub_2167FDB84(v72, &qword_27CAB9FA0);
  v78 = sub_21700B354();
  v80 = v79;
  v81 = v112;
  sub_216DE9538();
  v82 = v81 + *(v111 + 40);
  v84 = *v82;
  v83 = *(v82 + 8);
  v85 = *(v82 + 16);
  sub_21700DF14();
  sub_21686A9EC(v81, type metadata accessor for PosterLockup);
  if (v83)
  {
    v86 = v85 & 1;
  }

  else
  {
    v84 = 0;
    v86 = 0;
  }

  v87 = v113;
  (*(v102 + 32))(v113, v76, v103);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA018);
  v89 = v87 + *(result + 36);
  *v89 = v84;
  *(v89 + 8) = v83;
  *(v89 + 16) = v86;
  *(v89 + 24) = v78;
  *(v89 + 32) = v80;
  return result;
}

uint64_t sub_2168640B0@<X0>(uint64_t a1@<X8>)
{
  v50 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA020);
  MEMORY[0x28223BE20](v1 - 8);
  v49 = &v44 - v2;
  v47 = sub_217009D24();
  MEMORY[0x28223BE20](v47);
  v48 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF770);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v44 - v5;
  v45 = sub_217007474();
  v7 = *(v45 - 8);
  v8 = MEMORY[0x28223BE20](v45);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v44 - v11;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7680);
  MEMORY[0x28223BE20](v46);
  v14 = &v44 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA028);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v18 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v44 - v19;
  v51[3] = sub_2170067A4();
  v51[4] = sub_2166D5AB0(&qword_280E4A480);
  __swift_allocate_boxed_opaque_existential_1(v51);
  sub_216CCAF90();
  sub_2167BB664(v51);
  __swift_destroy_boxed_opaque_existential_1Tm(v51);
  sub_216683A80(v20, v18, &qword_27CABA028);
  v21 = type metadata accessor for ContextMenuPreview.ContextPreviewArtwork(0);
  if (__swift_getEnumTagSinglePayload(v18, 1, v21) == 1)
  {
    sub_2167FDB84(v20, &qword_27CABA028);
    sub_2167FDB84(v18, &qword_27CABA028);
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA010);
    v23 = v50;
    v24 = 1;
  }

  else
  {
    sub_216683A80(v18, v6, &qword_27CABF770);
    sub_217007434();
    sub_2170073E4();
    v25 = *(v7 + 8);
    v44 = v14;
    v26 = v45;
    v25(v10, v45);
    v27 = &v18[*(v21 + 20)];
    v28 = *v27;
    v29 = v27[1];
    v30 = swift_allocObject();
    *(v30 + 16) = v28;
    *(v30 + 24) = v29;
    sub_2167B8890(v28, v29);
    sub_2167C505C();
    v31 = v44;
    sub_2170073F4();

    v25(v12, v26);
    if (qword_280E2C2C8 != -1)
    {
      swift_once();
    }

    v32 = qword_280E73AA0;
    v33 = byte_280E73AA8;
    v34 = qword_280E73AB0;
    v35 = v49;
    sub_217009D14();
    __swift_storeEnumTagSinglePayload(v35, 0, 1, v47);
    sub_217009D04();
    sub_2167FDB84(v35, &qword_27CABA020);
    v36 = v31 + *(v46 + 36);
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB76F0);
    v38 = v31;
    v39 = v36 + *(v37 + 36);
    sub_217009374();
    sub_2167FDB84(v20, &qword_27CABA028);
    *(v39 + *(type metadata accessor for InsettableConcentricRectangle() + 20)) = 0;
    v40 = v38 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB76E0) + 36);
    sub_21686A858(v39, v40, type metadata accessor for InsettableConcentricRectangle);
    *(v40 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB76E8) + 36)) = 256;
    *v36 = v32;
    *(v36 + 8) = v33;
    *(v36 + 16) = v34;
    v41 = v36 + *(v37 + 40);
    *v41 = swift_getKeyPath();
    *(v41 + 8) = 0;

    sub_21686A9EC(v18, type metadata accessor for ContextMenuPreview.ContextPreviewArtwork);
    v42 = v50;
    sub_2167C5834(v38, v50, &qword_27CAB7680);
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA010);
    *(v42 + *(v22 + 36)) = xmmword_21701F260;
    v23 = v42;
    v24 = 0;
  }

  return __swift_storeEnumTagSinglePayload(v23, v24, 1, v22);
}

uint64_t sub_216864744@<X0>(void (**a1)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)@<X8>)
{
  v28 = a1;
  v26 = type metadata accessor for MenuContext(0);
  MEMORY[0x28223BE20](v26);
  v2 = &v25 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for PosterLockup();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MenuConfiguration(0);
  v27 = *(v6 - 8);
  v7 = *(v27 + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v25 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v25 - v9;
  v11 = sub_2170067A4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v15 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v25 - v16;
  sub_216CCAF90();
  sub_216DE9538();
  swift_storeEnumTagMultiPayload();
  sub_2168A6778();
  sub_21686A9EC(v2, type metadata accessor for MenuContext);
  sub_21686A9EC(v5, type metadata accessor for PosterLockup);
  v18 = *(v12 + 32);
  v18(v15, v17, v11);
  v19 = v25;
  sub_21686AA40(v10, v25, type metadata accessor for MenuConfiguration);
  v20 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v21 = (v13 + *(v27 + 80) + v20) & ~*(v27 + 80);
  v22 = swift_allocObject();
  v18((v22 + v20), v15, v11);
  result = sub_21686AA40(v19, v22 + v21, type metadata accessor for MenuConfiguration);
  v24 = v28;
  *v28 = sub_21680CDC8;
  v24[1] = v22;
  return result;
}

uint64_t sub_216864A7C@<X0>(uint64_t a1@<X8>)
{
  v38 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7530);
  MEMORY[0x28223BE20](v1 - 8);
  v39 = &v38 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v38 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF770);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v38 - v10;
  v12 = type metadata accessor for PosterLockup();
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v38 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v38 - v19;
  v43 = sub_2170067A4();
  v44 = sub_2166D5AB0(&qword_280E4A480);
  __swift_allocate_boxed_opaque_existential_1(&v42);
  sub_216CCAF90();
  sub_216DE9538();
  sub_21691A23C(v40);
  sub_21686A9EC(v20, type metadata accessor for PosterLockup);
  v21 = v41;
  sub_2167FDB84(v40, &qword_27CAB6DB0);
  sub_216DE9538();
  sub_216683A80(&v18[*(v12 + 48)], v8, &qword_27CAB6D60);
  sub_21686A9EC(v18, type metadata accessor for PosterLockup);
  v22 = type metadata accessor for Artwork();
  if (__swift_getEnumTagSinglePayload(v8, 1, v22) == 1)
  {
    sub_2167FDB84(v8, &qword_27CAB6D60);
    v23 = sub_21700C4B4();
    v24 = v11;
    v25 = 1;
  }

  else
  {
    v26 = sub_21700C4B4();
    (*(*(v26 - 8) + 16))(v11, v8, v26);
    sub_21686A9EC(v8, type metadata accessor for Artwork);
    v24 = v11;
    v25 = 0;
    v23 = v26;
  }

  __swift_storeEnumTagSinglePayload(v24, v25, 1, v23);
  sub_216DE9538();
  sub_216683A80(&v15[*(v12 + 48)], v6, &qword_27CAB6D60);
  sub_21686A9EC(v15, type metadata accessor for PosterLockup);
  if (__swift_getEnumTagSinglePayload(v6, 1, v22) == 1)
  {
    sub_2167FDB84(v6, &qword_27CAB6D60);
    v27 = sub_21700C444();
    v28 = v39;
    v29 = v39;
    v30 = 1;
  }

  else
  {
    v31 = *(v22 + 20);
    v32 = sub_21700C444();
    v33 = &v6[v31];
    v28 = v39;
    (*(*(v32 - 8) + 16))(v39, v33, v32);
    sub_21686A9EC(v6, type metadata accessor for Artwork);
    v29 = v28;
    v30 = 0;
    v27 = v32;
  }

  __swift_storeEnumTagSinglePayload(v29, v30, 1, v27);
  v34 = type metadata accessor for ContextMenuPreview(0);
  v35 = v38;
  sub_2167B8EF0(&v42, v38 + v34[6]);
  *(v35 + v34[5]) = v21 != 0;
  sub_2167C5834(v11, v35 + v34[7], &qword_27CABF770);
  sub_2167C5834(v28, v35 + v34[8], &qword_27CAB7530);
  v36 = type metadata accessor for ContextMenuPreview.ViewModel(0);
  return __swift_storeEnumTagSinglePayload(v35, 1, 1, v36);
}

uint64_t sub_216864FA8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DE8);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v26 - v1;
  v27 = sub_2170075A4();
  v3 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2170067A4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PosterLockup();
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_216DE9538();
  sub_21691A23C(&v33);
  sub_21686A9EC(v12, type metadata accessor for PosterLockup);
  sub_216CCAF90();
  type metadata accessor for PosterLockupView(0);
  v13 = sub_216C0C534(&v28);
  sub_216C0C548(v13, v14, v15, v16, v17, v18, v19, v20, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37);
  v21 = type metadata accessor for MenuContext(0);
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v21);
  sub_2167B9BDC(&v33, v9, &v28, v5, v2, v22, v23, v24, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37);
  sub_2167FDB84(v2, &qword_27CAB6DE8);
  (*(v3 + 8))(v5, v27);
  sub_2167FDB84(&v28, &qword_27CAB7310);
  (*(v7 + 8))(v9, v6);
  return sub_2167FDB84(&v33, &qword_27CAB6DB0);
}

uint64_t sub_21686528C@<X0>(uint64_t a1@<X8>)
{
  v246 = a1;
  v2 = sub_2170080D4();
  v203 = *(v2 - 8);
  v204 = v2;
  v3 = MEMORY[0x28223BE20](v2);
  v200 = &v193 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v199 = &v193 - v5;
  v197 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB75D0);
  MEMORY[0x28223BE20](v197);
  v220 = &v193 - v6;
  v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA050);
  MEMORY[0x28223BE20](v196);
  v219 = (&v193 - v7);
  v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA058);
  MEMORY[0x28223BE20](v198);
  v202 = &v193 - v8;
  v248 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA060);
  v9 = MEMORY[0x28223BE20](v248);
  v201 = &v193 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v205 = &v193 - v11;
  v213 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA068);
  v224 = *(v213 - 8);
  MEMORY[0x28223BE20](v213);
  v223 = &v193 - v12;
  v222 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA070);
  MEMORY[0x28223BE20](v222);
  v237 = &v193 - v13;
  v233 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA078);
  MEMORY[0x28223BE20](v233);
  v212 = &v193 - v14;
  v242 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA080);
  v226 = *(v242 - 8);
  MEMORY[0x28223BE20](v242);
  v225 = &v193 - v15;
  v244 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA088);
  MEMORY[0x28223BE20](v244);
  v247 = &v193 - v16;
  v239 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA090);
  MEMORY[0x28223BE20](v239);
  v240 = &v193 - v17;
  v245 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA098);
  MEMORY[0x28223BE20](v245);
  v241 = &v193 - v18;
  v214 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA0A0);
  v221 = *(v214 - 8);
  MEMORY[0x28223BE20](v214);
  v211 = &v193 - v19;
  v195 = type metadata accessor for PosterLockupView.Card(0);
  v209 = *(v195 - 8);
  MEMORY[0x28223BE20](v195);
  v210 = v20;
  v217 = &v193 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v218 = &v193 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v208 = &v193 - v25;
  MEMORY[0x28223BE20](v24);
  v207 = &v193 - v26;
  v27 = sub_2170090F4();
  v228 = *(v27 - 8);
  v229 = v27;
  MEMORY[0x28223BE20](v27);
  v227 = &v193 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v230 = sub_2170071B4();
  v236 = *(v230 - 8);
  v29 = MEMORY[0x28223BE20](v230);
  v234 = &v193 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v235 = &v193 - v31;
  v216 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA0A8);
  MEMORY[0x28223BE20](v216);
  v33 = &v193 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA0B0);
  v243 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v36 = &v193 - v35;
  v238 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA0B8);
  v37 = MEMORY[0x28223BE20](v238);
  v39 = &v193 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v41 = &v193 - v40;
  v42 = type metadata accessor for PosterLockup();
  v43 = MEMORY[0x28223BE20](v42);
  v215 = &v193 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = MEMORY[0x28223BE20](v43);
  v206 = &v193 - v46;
  v47 = MEMORY[0x28223BE20](v45);
  v231 = &v193 - v48;
  v49 = MEMORY[0x28223BE20](v47);
  v232 = &v193 - v50;
  v51 = MEMORY[0x28223BE20](v49);
  v53 = &v193 - v52;
  MEMORY[0x28223BE20](v51);
  v55 = &v193 - v54;
  v249 = v1;
  v251 = *v1;
  sub_216DE9538();
  v250 = v42;
  memcpy(v273, &v55[*(v42 + 24)], 0x54uLL);
  sub_21686B3F0(v273, v272);
  sub_21686A9EC(v55, type metadata accessor for PosterLockup);
  memcpy(__dst, v273, 0x54uLL);
  if (!BYTE3(__dst[5]))
  {
    v224 = v53;
    v225 = v33;
    v226 = v39;
    v237 = v36;
    v194 = v34;
    v234 = v41;
    memcpy(v271, v273, 0x41uLL);
    v255 = v250;
    v256 = &off_28291BFF8;
    v257 = &off_28291C020;
    v258 = &off_28291BFE8;
    __swift_allocate_boxed_opaque_existential_1(&v254);
    sub_216DE9538();
    sub_217007174();
    v59 = v249;
    v60 = v249[1];
    if (*(v249 + 16) == 1)
    {
      v228 = v249[1];
    }

    else
    {

      sub_21700ED94();
      v100 = sub_217009C34();
      sub_217007BC4();

      v101 = v227;
      sub_2170090E4();
      swift_getAtKeyPath();
      sub_216684F5C(v60, 0);
      v102 = v229;
      v103 = *(v228 + 8);
      v103(v101, v229);
      v228 = *v272;

      sub_21700ED94();
      v104 = sub_217009C34();
      sub_217007BC4();

      v59 = v249;
      sub_2170090E4();
      swift_getAtKeyPath();
      sub_216684F5C(v60, 0);
      v103(v101, v102);
      v60 = *v272;
    }

    v105 = v211;
    v106 = v209;
    v107 = v207;
    v108 = v224;
    v109 = sub_216867164();
    sub_216DE9538();
    sub_216683A80(v108 + *(v250 + 60), v107, &qword_27CAB6A00);
    sub_21686A9EC(v108, type metadata accessor for PosterLockup);
    v110 = type metadata accessor for ContentDescriptor();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v107, 1, v110);
    v112 = v217;
    if (EnumTagSinglePayload == 1)
    {
      sub_2167FDB84(v107, &qword_27CAB6A00);
      v113 = 23;
    }

    else
    {
      v113 = *v107;
      sub_21686A9EC(v107, type metadata accessor for ContentDescriptor);
    }

    v272[0] = v113;
    v114 = sub_216E41068(v272, 0);
    v116 = v115;
    sub_21686A858(v59, v112, type metadata accessor for PosterLockupView.Card);
    v117 = (*(v106 + 80) + 81) & ~*(v106 + 80);
    v118 = swift_allocObject();
    memcpy((v118 + 16), v271, 0x41uLL);
    sub_21686AA40(v112, v118 + v117, type metadata accessor for PosterLockupView.Card);
    v119 = v216;
    v120 = *(v216 + 56);
    KeyPath = swift_getKeyPath();
    v122 = v225;
    *&v225[v120] = KeyPath;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9128);
    swift_storeEnumTagMultiPayload();
    sub_21686BC70(&v254, v122);
    (*(v236 + 32))(v122 + v119[9], v235, v230);
    v123 = v122 + v119[10];
    *v123 = v228;
    *(v123 + 8) = v60;
    *(v123 + 16) = 0;
    *(v122 + v119[12]) = v109;
    v124 = (v122 + v119[13]);
    *v124 = sub_21686BD40;
    v124[1] = v118;
    v125 = (v122 + v119[11]);
    *v125 = v114;
    v125[1] = v116;
    sub_21686BDB0(__dst, v272);
    sub_21686C6A0(&unk_27CABA0F0);
    sub_21700A2A4();
    sub_2167FDB84(v122, &qword_27CABA0A8);
    v126 = v105;
    v127 = v232;
    sub_216DE9538();
    v128 = v231;
    sub_216DE9538();
    memcpy(v270, (v128 + *(v250 + 24)), 0x54uLL);
    sub_21686B3F0(v270, v272);
    sub_21686A9EC(v128, type metadata accessor for PosterLockup);
    sub_216856030(v270);
    sub_21686B44C(v270);
    sub_21686A9EC(v127, type metadata accessor for PosterLockup);
    v129 = v214;
    sub_2170064C4();

    (*(v221 + 8))(v126, v129);
    v130 = sub_21700B394();
    v250 = v131;
    v251 = v130;
    if (*(&__dst[3] + 1) == 1)
    {
      v132 = 0;
      v133 = 0;
      v134 = 0;
      v135 = 0;
      v136 = 0;
      v137 = 0;
      v138 = 0;
      v139 = 0;
      v140 = 0;
      v141 = 0;
      v142 = 0;
      v143 = v194;
      v144 = v243;
      v53 = v226;
LABEL_33:
      v231 = v140;
      v232 = v133;
      v235 = v132;
      v236 = v141;
      v249 = v142;
      *&v253[0] = v132;
      *(&v253[0] + 1) = v133;
      *&v253[1] = v134;
      *(&v253[1] + 1) = v135;
      *&v253[2] = v136;
      *(&v253[2] + 1) = v137;
      *&v253[3] = v138;
      *(&v253[3] + 1) = v139;
      *&v253[4] = v140;
      *(&v253[4] + 1) = v141;
      *&v253[5] = v142;
      v174 = v250;
      v173 = v251;
      *(&v253[5] + 1) = v251;
      *&v253[6] = v250;
      v175 = v143;
      v176 = v136;
      (*(v144 + 16))(v53, v237, v175);
      v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA0E8);
      memcpy(&v53[*(v177 + 36)], v253, 0x68uLL);
      *v272 = v235;
      *&v272[8] = v232;
      *&v272[16] = v134;
      *&v272[24] = v135;
      *&v272[32] = v176;
      *&v272[40] = v137;
      *&v272[48] = v138;
      *&v272[56] = v139;
      *&v272[64] = v231;
      *&v272[72] = v236;
      *&v272[80] = v249;
      *&v272[88] = v173;
      *&v272[96] = v174;
      sub_216683A80(v253, v252, &qword_27CABA0F8);
      sub_2167FDB84(v272, &qword_27CABA0F8);
      v178 = sub_21700B354();
      v180 = v179;
      v181 = &v53[*(v238 + 36)];
      sub_216BA97AC(v271, v181);
      sub_21686B44C(v273);
      (*(v243 + 8))(v237, v194);
      v182 = (v181 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA108) + 36));
      *v182 = v178;
      v182[1] = v180;
      v171 = &qword_27CABA0B8;
      v172 = v234;
      sub_2167C5834(v53, v234, &qword_27CABA0B8);
      sub_216683A80(v172, v240, &qword_27CABA0B8);
      swift_storeEnumTagMultiPayload();
      sub_21686B570();
      v183 = sub_21686B750();
      v252[0] = v233;
      v252[1] = v183;
      swift_getOpaqueTypeConformance2();
      v184 = v241;
      sub_217009554();
      sub_216683A80(v184, v247, &qword_27CABA098);
      swift_storeEnumTagMultiPayload();
      sub_21686B4A0();
      sub_21686BA5C();
      sub_217009554();
      sub_2167FDB84(v184, &qword_27CABA098);
      return sub_2167FDB84(v172, v171);
    }

    v143 = v194;
    v144 = v243;
    v53 = v226;
    if ((__dst[4] & 1) == 0)
    {
      v132 = 0;
      v133 = 0;
      v134 = 0;
      v135 = 0;
      v136 = 0;
      v137 = 0;
      v138 = 0;
      v139 = 0;
      v140 = 0;
      v141 = 0;
      v142 = 0;
      goto LABEL_33;
    }

    if (qword_27CAB5940 == -1)
    {
LABEL_26:
      v145 = qword_27CB22858;
      sub_21700DF14();
      sub_21700B544();
      sub_21700B554();
      MEMORY[0x21CE9C070](v145);
      sub_2170085D4();
      sub_21700B3B4();
      sub_2170083C4();
      v132 = v259;
      v133 = v260;
      v134 = v261;
      v135 = v262;
      v136 = v263;
      v137 = v264;
      v138 = v265;
      v139 = v266;
      v140 = v267;
      v141 = v268;
      v142 = v269;
      v143 = v194;
      v144 = v243;
      goto LABEL_33;
    }

LABEL_39:
    swift_once();
    goto LABEL_26;
  }

  if (BYTE3(__dst[5]) != 1)
  {
    v253[0] = __dst[0];
    v253[1] = __dst[1];
    *&v253[2] = *&__dst[2];
    BYTE10(v253[2]) = BYTE10(__dst[2]);
    WORD4(v253[2]) = WORD4(__dst[2]);
    v61 = sub_2170093B4();
    v62 = v219;
    *v219 = v61;
    *(v62 + 8) = 0;
    *(v62 + 16) = 0;
    v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA0C0);
    v64 = v249;
    sub_216867B68(v249, v253, v62 + *(v63 + 44));
    sub_21686B44C(v273);
    v65 = *MEMORY[0x277CDF9A8];
    v66 = sub_217008844();
    v67 = v220;
    (*(*(v66 - 8) + 104))(v220, v65, v66);
    sub_2166D5AB0(&qword_280E2B340);
    if (sub_21700E494())
    {
      sub_21686C6A0(&unk_27CABA0C8);
      sub_21686C6A0(&qword_280E29AE8);
      v68 = v202;
      sub_21700A5B4();
      sub_2167FDB84(v67, &qword_27CAB75D0);
      sub_2167FDB84(v62, &qword_27CABA050);
      v69 = *(v64 + 8);
      if (*(v64 + 16) != 1)
      {

        sub_21700ED94();
        v146 = sub_217009C34();
        sub_217007BC4();

        v147 = v227;
        sub_2170090E4();
        swift_getAtKeyPath();
        sub_216684F5C(v69, 0);
        (*(v228 + 8))(v147, v229);
      }

      v149 = v247;
      v148 = v248;
      sub_216867164();
      sub_21700B3B4();
      v150 = sub_2170083C4();
      v151 = v199;
      v152 = (v68 + *(v198 + 36));
      v153 = *&v272[16];
      *v152 = *v272;
      v152[1] = v153;
      v152[2] = *&v272[32];
      sub_216C0C924(v150, v154, v155, v156, v157, v158, v159, v160, v193, v194, v195, v196, v197, v198, v199, v200, v201, v202, v203, v204);
      v162 = v203;
      v161 = v204;
      v163 = v200;
      (*(v203 + 104))(v200, *MEMORY[0x277CDF3C0], v204);
      v164 = sub_2170080C4();
      v165 = *(v162 + 8);
      v165(v163, v161);
      v165(v151, v161);
      if (v164)
      {
        [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.149019608 green:0.149019608 blue:0.160784314 alpha:1.0];
      }

      else
      {
        v166 = [objc_opt_self() secondarySystemBackgroundColor];
      }

      v167 = sub_21700AC44();
      v168 = sub_217009C84();
      v169 = v201;
      sub_2167C5834(v68, v201, &qword_27CABA058);
      v170 = v169 + *(v148 + 36);
      *v170 = v167;
      *(v170 + 8) = v168;
      v171 = &qword_27CABA060;
      v172 = v205;
      sub_2167C5834(v169, v205, &qword_27CABA060);
      sub_216683A80(v172, v149, &qword_27CABA060);
      swift_storeEnumTagMultiPayload();
      sub_21686B4A0();
      sub_21686BA5C();
      sub_217009554();
      return sub_2167FDB84(v172, v171);
    }

    __break(1u);
    goto LABEL_39;
  }

  memcpy(v271, v273, 0x53uLL);
  v56 = v250;
  v255 = v250;
  v256 = &off_28291BFF8;
  v257 = &off_28291C020;
  v258 = &off_28291BFE8;
  __swift_allocate_boxed_opaque_existential_1(&v254);
  sub_216DE9538();
  sub_217007144();
  v57 = v249[1];
  if (*(v249 + 16) == 1)
  {
    v58 = *(v249 + 1);
  }

  else
  {

    sub_21700ED94();
    v70 = sub_217009C34();
    sub_217007BC4();

    v71 = v227;
    sub_2170090E4();
    swift_getAtKeyPath();
    sub_216684F5C(v57, 0);
    v72 = v229;
    v73 = *(v228 + 8);
    v73(v71, v229);
    v243 = *v272;

    sub_21700ED94();
    v74 = sub_217009C34();
    v56 = v250;
    sub_217007BC4();

    sub_2170090E4();
    swift_getAtKeyPath();
    sub_216684F5C(v57, 0);
    v73(v71, v72);
    v58 = *v272;
    v57 = v243;
  }

  v75 = v230;
  v76 = v208;
  v77 = v206;
  v78 = sub_216867164();
  v79 = sub_216867164();
  sub_216DE9538();
  sub_216683A80(v77 + *(v56 + 60), v76, &qword_27CAB6A00);
  sub_21686A9EC(v77, type metadata accessor for PosterLockup);
  v80 = type metadata accessor for ContentDescriptor();
  if (__swift_getEnumTagSinglePayload(v76, 1, v80) == 1)
  {
    sub_2167FDB84(v76, &qword_27CAB6A00);
    v81 = 23;
  }

  else
  {
    v81 = *v76;
    sub_21686A9EC(v76, type metadata accessor for ContentDescriptor);
  }

  v272[0] = v81;
  v82 = sub_216E41068(v272, 0);
  v84 = v83;
  v85 = v222;
  v86 = *(v222 + 56);
  v87 = swift_getKeyPath();
  v88 = v237;
  *&v237[v86] = v87;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9128);
  swift_storeEnumTagMultiPayload();
  sub_21686BC70(&v254, v88);
  (*(v236 + 32))(v88 + v85[9], v234, v75);
  v89 = v88 + v85[10];
  *v89 = v57;
  *(v89 + 8) = v58 + v78;
  *(v89 + 16) = 0;
  *(v88 + v85[12]) = v79;
  v90 = (v88 + v85[13]);
  *v90 = 0;
  v90[1] = 0;
  v91 = (v88 + v85[11]);
  *v91 = v82;
  v91[1] = v84;
  v92 = v215;
  sub_216DE9538();
  v93 = v218;
  sub_216683A80(v92 + *(v56 + 60), v218, &qword_27CAB6A00);
  if (__swift_getEnumTagSinglePayload(v93, 1, v80) == 1)
  {
    sub_21686A9EC(v92, type metadata accessor for PosterLockup);
    sub_2167FDB84(v93, &qword_27CAB6A00);
    v253[0] = xmmword_217016ED0;
    memset(&v253[1], 0, 104);
    v94 = v231;
    v95 = v232;
    v96 = v212;
    v97 = v213;
    v98 = v233;
  }

  else
  {
    memcpy(v272, (v93 + 8), 0x69uLL);
    sub_21686BC90(v272, v253);
    sub_21686A9EC(v93, type metadata accessor for ContentDescriptor);
    v99 = *(v92 + *(v56 + 32));
    sub_21686A9EC(v92, type metadata accessor for PosterLockup);
    v95 = v232;
    v98 = v233;
    v96 = v212;
    if (v99 < 1)
    {
      sub_21686BCEC(v272);
      v253[0] = xmmword_217016ED0;
      memset(&v253[1], 0, 104);
    }

    else
    {
      memcpy(v253, v272, 0x69uLL);
      *&v253[7] = v99;
    }

    v94 = v231;
    v97 = v213;
  }

  memcpy(v272, v253, sizeof(v272));
  v186 = v237;
  sub_2168675D4(v271);
  sub_21686B44C(v273);
  sub_2167FDB84(v253, &qword_27CABA180);
  sub_2167FDB84(v186, &qword_27CABA070);
  v187 = sub_21686B750();
  v188 = v223;
  sub_21700A2A4();
  sub_2167FDB84(v96, &qword_27CABA078);
  sub_216DE9538();
  sub_216DE9538();
  memcpy(v252, (v94 + *(v250 + 24)), 0x54uLL);
  sub_21686B3F0(v252, v270);
  sub_21686A9EC(v94, type metadata accessor for PosterLockup);
  sub_216856030(v252);
  sub_21686B44C(v252);
  sub_21686A9EC(v95, type metadata accessor for PosterLockup);
  v189 = v225;
  sub_2170064C4();

  (*(v224 + 1))(v188, v97);
  v190 = v226;
  v191 = v242;
  (*(v226 + 2))(v240, v189, v242);
  swift_storeEnumTagMultiPayload();
  sub_21686B570();
  v270[0] = v98;
  v270[1] = v187;
  swift_getOpaqueTypeConformance2();
  v192 = v241;
  sub_217009554();
  sub_216683A80(v192, v247, &qword_27CABA098);
  swift_storeEnumTagMultiPayload();
  sub_21686B4A0();
  sub_21686BA5C();
  sub_217009554();
  sub_2167FDB84(v192, &qword_27CABA098);
  return (*(v190 + 1))(v189, v191);
}

double sub_216867164()
{
  v1 = sub_217008844();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v30 - v6;
  v8 = sub_2170090F4();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v0 + 8);
  if (*(v0 + 16) == 1)
  {
    v14 = *(v0 + 8);
  }

  else
  {
    v30 = v10;

    sub_21700ED94();
    v15 = sub_217009C34();
    sub_217007BC4();

    sub_2170090E4();
    swift_getAtKeyPath();
    sub_216684F5C(v13, 0);
    (*(v9 + 8))(v12, v30);
    v14 = v31;
  }

  v16 = v14 / 3.0;
  v17 = type metadata accessor for PosterLockupView.Card(0);
  sub_216C0C570(v17, v18, v19, v20, v21, v22, v23, v24, v30, *&v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41);
  (*(v2 + 104))(v5, *MEMORY[0x277CDF988], v1);
  sub_2166D5AB0(&unk_27CABA188);
  v25 = sub_21700E464();
  v26 = *(v2 + 8);
  v26(v5, v1);
  v26(v7, v1);
  if (v25)
  {
    v27 = [objc_opt_self() defaultMetrics];
    [v27 scaledValueForValue_];
    v16 = v28;

    if (v16 > 162.0)
    {
      return 162.0;
    }
  }

  return v16;
}

uint64_t sub_216867478@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2170067A4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = a1[1];
  v14 = *a1;
  v15[0] = v8;
  *(v15 + 11) = *(a1 + 27);
  sub_21686BE0C(&v14, v13);
  sub_216CCAF90();
  v9 = sub_216EB939C();
  (*(v5 + 8))(v7, v4);
  v10 = v15[0];
  *a2 = v14;
  *(a2 + 16) = v10;
  *(a2 + 27) = *(v15 + 11);
  *(a2 + 43) = v9 & 1;
  v11 = *(type metadata accessor for PosterLockupView.ChinText(0) + 24);
  *(a2 + v11) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7580);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_2168675D4(uint64_t a1)
{
  v2 = MEMORY[0x28223BE20](a1);
  v3 = v1;
  v57 = v4;
  v5 = v2;
  v63 = v6;
  v7 = sub_21700B394();
  v9 = v8;
  v62 = v5;
  if (*(v5 + 8) == 1 || (*(v5 + 32) & 1) == 0)
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v17 = 0;
    v16 = 0;
    v18 = 0;
    v19 = 0;
    v21 = 0;
    v20 = 0;
  }

  else
  {
    if (qword_27CAB5940 != -1)
    {
      swift_once();
    }

    v10 = qword_27CB22858;
    sub_21700DF14();
    sub_21686A644(v5);
    sub_21686A6F4(v5);
    MEMORY[0x21CE9C070](v10);
    sub_2170085D4();
    sub_21700B3B4();
    sub_2170083C4();
    v11 = v73[13];
    v12 = v73[14];
    v13 = v73[15];
    v14 = v73[16];
    v15 = v73[17];
    v17 = v73[18];
    v16 = v73[19];
    v18 = v73[20];
    v19 = v73[21];
    v21 = v73[22];
    v20 = v73[23];
  }

  v54 = v21;
  v58 = v20;
  v60 = v9;
  __src[0] = v11;
  __src[1] = v12;
  __src[2] = v13;
  __src[3] = v14;
  __src[4] = v15;
  __src[5] = v17;
  __src[6] = v16;
  __src[7] = v18;
  __src[8] = v19;
  __src[9] = v21;
  __src[10] = v20;
  __src[11] = v7;
  __src[12] = v9;
  v22 = v3;
  v23 = v18;
  v24 = v19;
  sub_216683A80(v22, v63, &qword_27CABA070);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA140);
  memcpy((v63 + *(v25 + 36)), __src, 0x68uLL);
  v73[0] = v11;
  v73[1] = v12;
  v73[2] = v13;
  v73[3] = v14;
  v73[4] = v15;
  v73[5] = v17;
  v73[6] = v16;
  v73[7] = v23;
  v73[8] = v24;
  v73[9] = v54;
  v73[10] = v58;
  v73[11] = v7;
  v73[12] = v60;
  sub_216683A80(__src, v69, &qword_27CABA0F8);
  sub_2167FDB84(v73, &qword_27CABA0F8);
  v26 = sub_21700B3A4();
  v59 = v27;
  v61 = v26;
  v28 = *(v62 + 80);
  v29 = *(v62 + 48) == 1 || v28 == 2;
  if (v29 || (v28 & 1) == 0)
  {
    v37 = 0;
    v35 = 0;
    v36 = 0;
    v34 = 0;
    v33 = 0;
    v32 = 0;
    v31 = 0;
    v38 = 0;
    v40 = 0;
    v39 = 0;
    v41 = 0;
  }

  else
  {
    if (qword_27CAB5940 != -1)
    {
      swift_once();
    }

    v30 = qword_27CB22858;
    sub_21700DF14();
    sub_21700B554();
    sub_21700B544();
    MEMORY[0x21CE9C070](v30);
    sub_2170085D4();
    sub_21700B3B4();
    sub_2170083C4();
    v31 = v73[24];
    v32 = v73[25];
    v33 = v73[26];
    v34 = v73[27];
    v36 = v73[28];
    v35 = v73[29];
    v37 = v73[30];
    v38 = v73[31];
    v40 = v73[32];
    v39 = v73[33];
    v41 = v73[34];
  }

  v53 = v39;
  v55 = v37;
  v56 = v41;
  v66[0] = v31;
  v66[1] = v32;
  v66[2] = v33;
  v66[3] = v34;
  v66[4] = v36;
  v66[5] = v35;
  v66[6] = v37;
  v66[7] = v38;
  v66[8] = v40;
  v66[9] = v39;
  v66[10] = v41;
  v66[11] = v61;
  v66[12] = v59;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA130);
  memcpy((v63 + *(v42 + 36)), v66, 0x68uLL);
  v67[0] = v31;
  v67[1] = v32;
  v67[2] = v33;
  v67[3] = v34;
  v67[4] = v36;
  v67[5] = v35;
  v67[6] = v55;
  v67[7] = v38;
  v67[8] = v40;
  v67[9] = v53;
  v67[10] = v56;
  v67[11] = v61;
  v67[12] = v59;
  sub_216683A80(v66, v69, &qword_27CABA0F8);
  sub_2167FDB84(v67, &qword_27CABA0F8);
  v43 = sub_21700B394();
  v45 = v44;
  v46 = v63 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA120) + 36);
  sub_2168CF840(v62, v46);
  v47 = (v46 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA158) + 36));
  *v47 = v43;
  v47[1] = v45;
  v48 = sub_21700B3A4();
  v50 = v49;
  sub_2168D0408(v62, v57, v65);
  memcpy(__dst, v65, 0x390uLL);
  __dst[114] = v48;
  __dst[115] = v50;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA078);
  memcpy((v63 + *(v51 + 36)), __dst, 0x3A0uLL);
  memcpy(v69, v65, sizeof(v69));
  v70 = v48;
  v71 = v50;
  sub_216683A80(__dst, v64, &qword_27CABA168);
  return sub_2167FDB84(v69, &qword_27CABA168);
}

uint64_t sub_216867B68@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v167 = a2;
  v176 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA190);
  v172 = *(v4 - 8);
  v173 = v4;
  MEMORY[0x28223BE20](v4);
  v171 = &v148 - v5;
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA198);
  v6 = MEMORY[0x28223BE20](v170);
  v175 = &v148 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v169 = &v148 - v9;
  MEMORY[0x28223BE20](v8);
  v174 = &v148 - v10;
  v11 = sub_2170080D4();
  v12 = *(v11 - 8);
  v182 = v11;
  v183 = v12;
  v13 = MEMORY[0x28223BE20](v11);
  v181 = &v148 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v180 = &v148 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA1A0);
  v165 = *(v16 - 8);
  v166 = v16;
  MEMORY[0x28223BE20](v16);
  KeyPath = &v148 - v17;
  v18 = type metadata accessor for PosterLockup();
  v19 = MEMORY[0x28223BE20](v18);
  v162 = &v148 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v163 = &v148 - v22;
  MEMORY[0x28223BE20](v21);
  v24 = &v148 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00);
  MEMORY[0x28223BE20](v25 - 8);
  v27 = &v148 - v26;
  v28 = sub_2170090F4();
  v151 = *(v28 - 8);
  v152 = v28;
  MEMORY[0x28223BE20](v28);
  v30 = &v148 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_2170071B4();
  v155 = *(v31 - 8);
  v156 = v31;
  MEMORY[0x28223BE20](v31);
  v33 = &v148 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA070);
  MEMORY[0x28223BE20](v34);
  v36 = &v148 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA1A8);
  v160 = *(v37 - 8);
  v161 = v37;
  MEMORY[0x28223BE20](v37);
  v159 = &v148 - v38;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA1B0);
  v39 = MEMORY[0x28223BE20](v158);
  v168 = &v148 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x28223BE20](v39);
  v157 = (&v148 - v42);
  MEMORY[0x28223BE20](v41);
  v179 = &v148 - v43;
  v44 = *a1;
  v178 = v18;
  *&v198[24] = v18;
  *&v198[32] = &off_28291BFF8;
  *&v198[40] = &off_28291C020;
  *&v198[48] = &off_28291BFE8;
  __swift_allocate_boxed_opaque_existential_1(v198);
  v153 = v44;
  sub_216DE9538();
  v154 = v33;
  sub_217007174();
  v45 = *(a1 + 8);
  v46 = *(a1 + 16);
  v177 = a1;
  if (v46 != 1)
  {

    sub_21700ED94();
    v47 = sub_217009C34();
    v150 = v24;
    v48 = v47;
    sub_217007BC4();

    sub_2170090E4();
    swift_getAtKeyPath();
    sub_216684F5C(v45, 0);
    v149 = v27;
    v49 = v152;
    v50 = *(v151 + 8);
    v50(v30, v152);

    sub_21700ED94();
    v51 = sub_217009C34();
    v24 = v150;
    sub_217007BC4();

    sub_2170090E4();
    swift_getAtKeyPath();
    sub_216684F5C(v45, 0);
    v50(v30, v49);
    v27 = v149;
  }

  sub_21700ED34();
  sub_21700F064();
  v53 = v52;
  v55 = v54;
  v56 = sub_216867164();
  sub_216DE9538();
  sub_216683A80(&v24[*(v178 + 60)], v27, &qword_27CAB6A00);
  sub_21686A9EC(v24, type metadata accessor for PosterLockup);
  v57 = type metadata accessor for ContentDescriptor();
  if (__swift_getEnumTagSinglePayload(v27, 1, v57) == 1)
  {
    sub_2167FDB84(v27, &qword_27CAB6A00);
    v58 = 23;
  }

  else
  {
    v58 = *v27;
    sub_21686A9EC(v27, type metadata accessor for ContentDescriptor);
  }

  LOBYTE(v186[0]) = v58;
  v59 = sub_216E41068(v186, 0);
  v61 = v60;
  v62 = v34[14];
  *&v36[v62] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9128);
  swift_storeEnumTagMultiPayload();
  sub_21686BC70(v198, v36);
  (*(v155 + 32))(&v36[v34[9]], v154, v156);
  v63 = &v36[v34[10]];
  *v63 = v53;
  *(v63 + 1) = v55;
  v63[16] = 0;
  *&v36[v34[12]] = v56;
  v64 = &v36[v34[13]];
  *v64 = 0;
  *(v64 + 1) = 0;
  v65 = &v36[v34[11]];
  *v65 = v59;
  v65[1] = v61;
  sub_21686C6A0(&unk_27CABA148);
  v66 = KeyPath;
  sub_21700A2A4();
  sub_2167FDB84(v36, &qword_27CABA070);
  v67 = v163;
  sub_216DE9538();
  v68 = v162;
  sub_216DE9538();
  memcpy(__dst, (v68 + *(v178 + 24)), 0x54uLL);
  sub_21686B3F0(__dst, v198);
  sub_21686A9EC(v68, type metadata accessor for PosterLockup);
  sub_216856030(__dst);
  sub_21686B44C(__dst);
  sub_21686A9EC(v67, type metadata accessor for PosterLockup);
  v69 = v159;
  v70 = v166;
  sub_2170064C4();

  (*(v165 + 8))(v66, v70);
  LOBYTE(v59) = sub_217009C84();
  sub_217007F24();
  v72 = v71;
  v74 = v73;
  v76 = v75;
  v78 = v77;
  v79 = v157;
  (*(v160 + 32))(v157, v69, v161);
  v80 = &v79[*(v158 + 36)];
  *v80 = v59;
  *(v80 + 1) = v72;
  *(v80 + 2) = v74;
  *(v80 + 3) = v76;
  *(v80 + 4) = v78;
  v80[40] = 0;
  sub_2167C5834(v79, v179, &qword_27CABA1B0);
  v81 = 0;
  v82 = 0;
  v83 = 0;
  v84 = v167[1];
  v156 = v167[2];
  if (v84 >= 2)
  {
    v81 = *v167;
    sub_21700DF14();
    v83 = MEMORY[0x277D84F90];
    v82 = v84;
  }

  v166 = v82;
  v167 = v83;
  v178 = v81;
  if (qword_27CAB5968 != -1)
  {
    swift_once();
  }

  v85 = qword_27CAB9EC8;
  KeyPath = swift_getKeyPath();
  v163 = swift_getKeyPath();
  v86 = *(type metadata accessor for PosterLockupView.Card(0) + 28);
  v165 = v85;

  v88 = v180;
  sub_216C0C924(v87, v89, v90, v91, v92, v93, v94, v95, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v86, v159);
  v96 = *MEMORY[0x277CDF3C0];
  v97 = v182;
  v98 = v183;
  v99 = v181;
  v157 = *(v183 + 104);
  (v157)(v181, v96, v182);
  LOBYTE(v85) = sub_2170080C4();
  v100 = *(v98 + 8);
  v100(v99, v97);
  v183 = v98 + 8;
  v100(v88, v97);
  if (v85)
  {
    v101 = sub_21700ACF4();
  }

  else
  {
    v101 = sub_21700ACC4();
  }

  v162 = v101;
  v161 = swift_getKeyPath();
  v160 = swift_getKeyPath();
  v199 = 0;
  LODWORD(v159) = sub_217009C74();
  sub_217007F24();
  v103 = v102;
  v105 = v104;
  v107 = v106;
  v109 = v108;
  v110 = 0;
  v200 = 0;
  v111 = 0;
  v112 = 0;
  if (v84 != 1 && v156)
  {
    v110 = sub_216B80C28(v156);
    v112 = MEMORY[0x277D84F90];
  }

  v155 = v112;
  v156 = v111;
  if (qword_27CAB5970 != -1)
  {
    swift_once();
  }

  v113 = qword_27CAB9ED0;
  v114 = swift_getKeyPath();

  v116 = v180;
  sub_216C0C924(v115, v117, v118, v119, v120, v121, v122, v123, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159);
  v124 = v181;
  v125 = v96;
  v126 = v182;
  (v157)(v181, v125, v182);
  v127 = sub_2170080C4();
  v100(v124, v126);
  v100(v116, v126);
  if (v127)
  {
    v128 = sub_21700ACF4();
  }

  else
  {
    v128 = sub_21700ACC4();
  }

  v129 = v128;
  v130 = swift_getKeyPath();
  v131 = swift_getKeyPath();
  *v198 = v110;
  *&v198[8] = v156;
  *&v198[16] = 0;
  *&v198[24] = v155;
  *&v198[32] = v114;
  *&v198[40] = v113;
  *&v198[48] = v130;
  *&v198[56] = v129;
  *&v198[64] = v131;
  v198[72] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA1B8);
  sub_21686BE88();
  v132 = v171;
  sub_21700ABA4();
  memcpy(v197, v198, 0x49uLL);
  sub_2167FDB84(v197, &qword_27CABA1B8);
  LOBYTE(v129) = sub_217009C74();
  sub_217007F24();
  v134 = v133;
  v136 = v135;
  v138 = v137;
  v140 = v139;
  v141 = v169;
  (*(v172 + 32))(v169, v132, v173);
  v142 = v141 + *(v170 + 36);
  *v142 = v129;
  *(v142 + 8) = v134;
  *(v142 + 16) = v136;
  *(v142 + 24) = v138;
  *(v142 + 32) = v140;
  *(v142 + 40) = 0;
  v143 = v174;
  sub_2167C5834(v141, v174, &qword_27CABA198);
  v189 = 0;
  v190 = 1;
  v191 = &v189;
  v144 = v179;
  v145 = v168;
  sub_216683A80(v179, v168, &qword_27CABA1B0);
  v187 = 0;
  v188 = 1;
  v192 = v145;
  v193 = &v187;
  v186[0] = v178;
  v186[1] = v166;
  v186[2] = 0;
  v186[3] = v167;
  v186[4] = KeyPath;
  v186[5] = v165;
  v186[6] = v163;
  LOBYTE(v186[7]) = 1;
  v186[8] = v161;
  v186[9] = v162;
  v186[10] = v160;
  v186[11] = 1;
  LOBYTE(v186[12]) = 0;
  LOBYTE(v186[13]) = v159;
  v186[14] = v103;
  v186[15] = v105;
  v186[16] = v107;
  v186[17] = v109;
  LOBYTE(v186[18]) = 0;
  v194 = v186;
  v146 = v175;
  sub_216683A80(v143, v175, &qword_27CABA198);
  v184 = 0;
  v185 = 1;
  v195 = v146;
  v196 = &v184;
  sub_2168AA734();
  sub_2167FDB84(v143, &qword_27CABA198);
  sub_2167FDB84(v144, &qword_27CABA1B0);
  sub_2167FDB84(v146, &qword_27CABA198);
  memcpy(v198, v186, sizeof(v198));
  sub_2167FDB84(v198, &qword_27CABA1C8);
  return sub_2167FDB84(v145, &qword_27CABA1B0);
}

uint64_t sub_216868B44@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v44 = a1;
  v45 = sub_2170099D4();
  v43 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v42 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA1F0);
  v40 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v5 = &v38 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA1F8);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v38 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA200);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v38 - v12;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA208);
  MEMORY[0x28223BE20](v39);
  v15 = &v38 - v14;
  sub_2170093B4();
  v46 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA210);
  sub_21686C6A0(&unk_27CABA218);
  sub_217006594();
  sub_21700B3B4();
  sub_217008BB4();
  (*(v40 + 32))(v9, v5, v41);
  memcpy(&v9[*(v7 + 44)], __src, 0x70uLL);
  v16 = sub_217009C74();
  sub_217007F24();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  sub_2167C5834(v9, v13, &qword_27CABA1F8);
  v25 = &v13[*(v11 + 44)];
  *v25 = v16;
  *(v25 + 1) = v18;
  *(v25 + 2) = v20;
  *(v25 + 3) = v22;
  *(v25 + 4) = v24;
  v25[40] = 0;
  v26 = sub_217009CE4();
  sub_217007F24();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  sub_2167C5834(v13, v15, &qword_27CABA200);
  v35 = &v15[*(v39 + 36)];
  *v35 = v26;
  *(v35 + 1) = v28;
  *(v35 + 2) = v30;
  *(v35 + 3) = v32;
  *(v35 + 4) = v34;
  v35[40] = 0;
  v36 = v42;
  sub_2170099A4();
  sub_21686C170(&unk_27CABA220);
  sub_21700A784();
  (*(v43 + 8))(v36, v45);
  return sub_2167FDB84(v15, &qword_27CABA208);
}

uint64_t sub_216869000@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v189 = a2;
  v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA240);
  MEMORY[0x28223BE20](v188);
  v173 = &v163 - v3;
  v4 = sub_21700D864();
  v182 = *(v4 - 8);
  v183 = v4;
  MEMORY[0x28223BE20](v4);
  v180 = &v163 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21700D8E4();
  v184 = *(v6 - 8);
  v185 = v6;
  MEMORY[0x28223BE20](v6);
  v181 = &v163 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA248);
  v176 = *(v8 - 8);
  v177 = v8;
  v9 = MEMORY[0x28223BE20](v8);
  v167 = &v163 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v165 = &v163 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA250);
  v178 = *(v12 - 8);
  v179 = v12;
  v13 = MEMORY[0x28223BE20](v12);
  v168 = &v163 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v166 = &v163 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA258);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v172 = &v163 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v171 = &v163 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v190 = &v163 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v170 = &v163 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v169 = &v163 - v26;
  MEMORY[0x28223BE20](v25);
  v193 = &v163 - v27;
  v196 = sub_217008844();
  v28 = *(v196 - 8);
  MEMORY[0x28223BE20](v196);
  v195 = &v163 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA260);
  v31 = MEMORY[0x28223BE20](v30 - 8);
  v187 = &v163 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v34 = &v163 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA268);
  v174 = *(v35 - 8);
  v175 = v35;
  MEMORY[0x28223BE20](v35);
  v164 = &v163 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA270);
  v38 = MEMORY[0x28223BE20](v37 - 8);
  v186 = &v163 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x28223BE20](v38);
  v42 = &v163 - v41;
  MEMORY[0x28223BE20](v40);
  v197 = &v163 - v43;
  v198 = a1;
  v44 = *(a1 + 8);
  v194 = *a1;
  v45 = *(a1 + 42);
  v46 = *(a1 + 43);
  v47 = qword_27CAB5968;
  sub_21700DF14();
  if (v47 != -1)
  {
    swift_once();
  }

  v48 = qword_27CAB9EC8;
  type metadata accessor for ExplicitBadgingPresenter();
  sub_2166D5AB0(&qword_280E36A20);

  v50 = sub_217008CF4();
  v191 = v34;
  if (!v44)
  {
    goto LABEL_10;
  }

  v51 = HIBYTE(v44) & 0xF;
  if ((v44 & 0x2000000000000000) == 0)
  {
    v51 = v194 & 0xFFFFFFFFFFFFLL;
  }

  if (!v51)
  {

LABEL_10:

    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA278);
    __swift_storeEnumTagSinglePayload(v42, 1, 1, v54);
    v55 = v198;
    goto LABEL_13;
  }

  v52 = v49;
  v192 = v28;
  if (v45)
  {
    v53 = sub_217009154();
  }

  else
  {
    v53 = sub_2170091A4();
  }

  *&v200 = v50;
  *(&v200 + 1) = v52;
  *&v201 = v194;
  *(&v201 + 1) = v44;
  LOBYTE(v202) = v45 & 1;
  BYTE1(v202) = v46;
  *(&v202 + 1) = v48;
  LOBYTE(v203) = 0;
  *(&v203 + 1) = v53;
  v204[0] = v50;
  v204[1] = v52;
  v204[2] = v194;
  v204[3] = v44;
  v205 = v45 & 1;
  v206 = v46;
  v207 = v48;
  v208 = 0;
  v209 = v53;
  sub_21680DAEC(&v200, v210);
  sub_21680DB48(v204);
  KeyPath = swift_getKeyPath();
  v212 = v200;
  v213 = v201;
  v214 = v202;
  v215 = v203;
  v57 = swift_getKeyPath();

  v58 = sub_21700ACF4();
  v59 = swift_getKeyPath();
  v60 = v198;
  v61 = (sub_21686A1E4)();
  v62 = swift_getKeyPath();
  v211 = 0;
  v210[0] = v212;
  v210[1] = v213;
  v210[2] = v214;
  v210[3] = v215;
  *&v210[4] = KeyPath;
  *(&v210[4] + 1) = v48;
  *&v210[5] = v57;
  BYTE8(v210[5]) = 1;
  *&v210[6] = v59;
  *(&v210[6] + 1) = v58;
  *&v210[7] = v62;
  *(&v210[7] + 1) = v61;
  LOBYTE(v210[8]) = 0;
  memcpy(v199, v210, 0x81uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA2A8);
  sub_21686C36C();
  v63 = v164;
  sub_21700A2A4();
  v55 = v60;
  v64 = sub_2167FDB84(v210, &qword_27CABA2A8);
  sub_21686A1E4(v64);
  v65 = v175;
  sub_217006484();
  (*(v174 + 1))(v63, v65);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA278);
  __swift_storeEnumTagSinglePayload(v42, 0, 1, v66);
  v34 = v191;
  v28 = v192;
LABEL_13:
  sub_2167C5834(v42, v197, &qword_27CABA270);
  v67 = type metadata accessor for PosterLockupView.ChinText(0);
  v175 = *(v67 + 24);
  v68 = v195;
  sub_216C0C570(v67, v69, v70, v71, v72, v73, v74, v75, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174);
  v76 = sub_217008834();
  v78 = *(v28 + 8);
  v77 = v28 + 8;
  v174 = v78;
  v78(v68, v196);
  if ((v76 & 1) != 0 && (sub_216E1A4B8(v194, v44) & 1) == 0)
  {
    v156 = 1;
  }

  else
  {
    v192 = v77;
    v79 = *(v55 + 16);
    if (v79)
    {
      sub_216B80C28(v79);
      if (qword_27CAB5970 != -1)
      {
        swift_once();
      }

      v80 = sub_21700A094();
      v82 = v81;
      v84 = v83;

      sub_21700ACF4();
      v85 = sub_21700A034();
      v87 = v86;
      v89 = v88;
      v91 = v90;

      sub_21678817C(v80, v82, v84 & 1);

      v92 = swift_getKeyPath();
      *&v210[0] = v85;
      *(&v210[0] + 1) = v87;
      LOBYTE(v210[1]) = v89 & 1;
      *(&v210[1] + 1) = v91;
      *&v210[2] = v92;
      BYTE8(v210[2]) = 1;
      v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA298);
      v93 = sub_21686C2B4();
      v94 = v165;
      sub_21700A2A4();
      sub_21678817C(v85, v87, v89 & 1);

      v96 = v195;
      sub_216C0C570(v95, v97, v98, v99, v100, v101, v102, v103, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174);
      sub_217008834();
      v174(v96, v196);
      v104 = v166;
      v105 = v177;
      sub_217006484();
      (*(v176 + 8))(v94, v105);
      v107 = v182;
      v106 = v183;
      v108 = v180;
      (*(v182 + 104))(v180, *MEMORY[0x277D22070], v183);
      memset(v210, 0, 32);
      memset(v199, 0, 32);
      v109 = v181;
      sub_21700D874();
      sub_2167FDB84(v199, &unk_27CABF7A0);
      sub_2167FDB84(v210, &unk_27CABF7A0);
      (*(v107 + 8))(v108, v106);
      *&v210[0] = v194;
      *(&v210[0] + 1) = v93;
      swift_getOpaqueTypeConformance2();
      v110 = v169;
      v111 = v179;
      sub_21700A204();
      (*(v184 + 8))(v109, v185);
      v112 = v111;
      v55 = v198;
      (*(v178 + 8))(v104, v112);
      v113 = 0;
      v34 = v191;
    }

    else
    {
      v113 = 1;
      v110 = v169;
    }

    v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA280);
    v115 = 1;
    __swift_storeEnumTagSinglePayload(v110, v113, 1, v114);
    sub_2167C5834(v110, v193, &qword_27CABA258);
    v116 = v190;
    if (*(v55 + 32))
    {
      v117 = qword_27CAB5978;
      sub_21700DF14();
      if (v117 != -1)
      {
        swift_once();
      }

      v118 = sub_21700A094();
      v120 = v119;
      v122 = v121;

      sub_21700ACF4();
      v123 = sub_21700A034();
      v125 = v124;
      v127 = v126;
      v129 = v128;

      sub_21678817C(v118, v120, v122 & 1);

      v130 = swift_getKeyPath();
      *&v210[0] = v123;
      *(&v210[0] + 1) = v125;
      LOBYTE(v210[1]) = v127 & 1;
      *(&v210[1] + 1) = v129;
      *&v210[2] = v130;
      BYTE8(v210[2]) = 1;
      v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA298);
      v131 = sub_21686C2B4();
      v132 = v167;
      sub_21700A2A4();
      sub_21678817C(v123, v125, v127 & 1);

      v134 = v195;
      sub_216C0C570(v133, v135, v136, v137, v138, v139, v140, v141, v163, v164, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174);
      sub_217008834();
      v174(v134, v196);
      v142 = v168;
      v143 = v177;
      sub_217006484();
      (*(v176 + 8))(v132, v143);
      v145 = v182;
      v144 = v183;
      v146 = v180;
      (*(v182 + 104))(v180, *MEMORY[0x277D22038], v183);
      memset(v210, 0, 32);
      memset(v199, 0, 32);
      v147 = v181;
      sub_21700D874();
      sub_2167FDB84(v199, &unk_27CABF7A0);
      sub_2167FDB84(v210, &unk_27CABF7A0);
      (*(v145 + 8))(v146, v144);
      *&v210[0] = v194;
      *(&v210[0] + 1) = v131;
      swift_getOpaqueTypeConformance2();
      v116 = v190;
      v148 = v179;
      sub_21700A204();
      (*(v184 + 8))(v147, v185);
      (*(v178 + 8))(v142, v148);
      v115 = 0;
      v34 = v191;
    }

    v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA280);
    __swift_storeEnumTagSinglePayload(v116, v115, 1, v149);
    v150 = v170;
    sub_2167C5834(v116, v170, &qword_27CABA258);
    v151 = v193;
    v152 = v171;
    sub_216683A80(v193, v171, &qword_27CABA258);
    v153 = v172;
    sub_216683A80(v150, v172, &qword_27CABA258);
    v154 = v173;
    sub_216683A80(v152, v173, &qword_27CABA258);
    v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA288);
    sub_216683A80(v153, v154 + *(v155 + 48), &qword_27CABA258);
    sub_2167FDB84(v150, &qword_27CABA258);
    sub_2167FDB84(v151, &qword_27CABA258);
    sub_2167FDB84(v153, &qword_27CABA258);
    sub_2167FDB84(v152, &qword_27CABA258);
    sub_2167C5834(v154, v34, &qword_27CABA240);
    v156 = 0;
  }

  __swift_storeEnumTagSinglePayload(v34, v156, 1, v188);
  v157 = v197;
  v158 = v186;
  sub_216683A80(v197, v186, &qword_27CABA270);
  v159 = v187;
  sub_216683A80(v34, v187, &qword_27CABA260);
  v160 = v189;
  sub_216683A80(v158, v189, &qword_27CABA270);
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA290);
  sub_216683A80(v159, v160 + *(v161 + 48), &qword_27CABA260);
  sub_2167FDB84(v34, &qword_27CABA260);
  sub_2167FDB84(v157, &qword_27CABA270);
  sub_2167FDB84(v159, &qword_27CABA260);
  return sub_2167FDB84(v158, &qword_27CABA270);
}

uint64_t sub_21686A3E4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  v3 = type metadata accessor for PosterLockupView(0);
  v4 = *(v3 + 20);
  *(a2 + v4) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0);
  swift_storeEnumTagMultiPayload();
  v5 = a2 + *(v3 + 24);
  result = swift_getKeyPath();
  *v5 = result;
  v5[40] = 0;
  return result;
}

unint64_t sub_21686A4C4(uint64_t a1)
{
  result = sub_2166D5AB0(&unk_280E40B68);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_21686A51C()
{
  if (qword_280E2C2D8 != -1)
  {
    swift_once();
  }

  xmmword_27CAB9E98 = xmmword_280E73AF0;
  qword_27CAB9EA8 = qword_280E73B00;
  qword_27CAB9EB0 = qword_280E73B08;
  qword_27CAB9EB8 = qword_280E73B10;
}

uint64_t sub_21686A5A0()
{
  result = sub_217009D44();
  qword_27CAB9EC0 = result;
  return result;
}

uint64_t sub_21686A5C0()
{
  sub_217009D44();
  sub_217009DE4();
  v0 = sub_217009E34();

  qword_27CAB9EC8 = v0;
  return result;
}

uint64_t sub_21686A604()
{
  result = sub_217009D44();
  qword_27CAB9ED0 = result;
  return result;
}

uint64_t sub_21686A624()
{
  result = sub_217009D44();
  qword_27CAB9ED8 = result;
  return result;
}

uint64_t sub_21686A644(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
LABEL_2:

    return sub_21700B544();
  }

  if (*(a1 + 33))
  {
  }

  else
  {
    v2 = sub_21700F7D4();

    if ((v2 & 1) == 0)
    {
      goto LABEL_2;
    }
  }

  return sub_21700B534();
}

double sub_21686A6F4(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    goto LABEL_2;
  }

  if (*(a1 + 33))
  {
  }

  else
  {
    v2 = sub_21700F7D4();

    if ((v2 & 1) == 0)
    {
LABEL_2:
      sub_21700B554();
      return result;
    }
  }

  return 0.2;
}

unint64_t sub_21686A790()
{
  result = qword_27CAB9F00;
  if (!qword_27CAB9F00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9EE0);
    sub_21686C6A0(&unk_27CAB9F08);
    sub_2167B8760();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB9F00);
  }

  return result;
}

uint64_t sub_21686A858(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  v4 = OUTLINED_FUNCTION_8();
  v5(v4);
  return a2;
}

uint64_t sub_21686A8B4()
{
  v0 = type metadata accessor for PosterLockupView(0);
  OUTLINED_FUNCTION_36(v0);
  OUTLINED_FUNCTION_31_3(*(v1 + 80));

  return sub_216864FA8();
}

unint64_t sub_21686A908()
{
  result = qword_27CAB9F60;
  if (!qword_27CAB9F60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9F20);
    sub_21686C6A0(&unk_27CAB9F68);
    sub_21686C6A0(&qword_280E2A810);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB9F60);
  }

  return result;
}

uint64_t sub_21686A9EC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_9_0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_21686AA40(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  v4 = OUTLINED_FUNCTION_8();
  v5(v4);
  return a2;
}

uint64_t sub_21686AA9C@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for PosterLockupView(0);
  OUTLINED_FUNCTION_36(v2);
  v4 = OUTLINED_FUNCTION_31_3(*(v3 + 80));

  return sub_216863428(v4, a1);
}

unint64_t sub_21686AB20()
{
  result = qword_27CAB9FB8;
  if (!qword_27CAB9FB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9FB0);
    sub_21686ABD8();
    sub_21686C6A0(&qword_280E2A808);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB9FB8);
  }

  return result;
}

unint64_t sub_21686ABD8()
{
  result = qword_27CAB9FC0;
  if (!qword_27CAB9FC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9FC8);
    sub_21686B064(&qword_27CAB9FD0);
    sub_21686C6A0(qword_280E382B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB9FC0);
  }

  return result;
}

unint64_t sub_21686ACBC()
{
  result = qword_27CAB9FE0;
  if (!qword_27CAB9FE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9FE8);
    sub_2166D5AB0(&unk_27CAB9FF0);
    sub_21686C6A0(&qword_280E2B390);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB9FE0);
  }

  return result;
}

uint64_t sub_21686ADAC()
{
  v0 = sub_2170067A4();
  OUTLINED_FUNCTION_36(v0);
  v2 = OUTLINED_FUNCTION_31_3(*(v1 + 80));

  return sub_216B9FBF4(v2);
}

unint64_t sub_21686AE08()
{
  result = qword_27CABA008;
  if (!qword_27CABA008)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9FA0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9F98);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9FB0);
    sub_21686AB20();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_21686C6A0(&unk_280E2AC00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABA008);
  }

  return result;
}

unint64_t sub_21686AF54()
{
  result = qword_280E2AE70;
  if (!qword_280E2AE70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABA000);
    sub_21686AFD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AE70);
  }

  return result;
}

unint64_t sub_21686AFD8()
{
  result = qword_280E2AE78;
  if (!qword_280E2AE78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABA010);
    sub_2167C50B0();
    sub_2167B8C60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AE78);
  }

  return result;
}

unint64_t sub_21686B064(uint64_t a1)
{
  result = OUTLINED_FUNCTION_8_10(a1);
  if (!result)
  {
    v5 = v4;
    v6 = OUTLINED_FUNCTION_100(0, v3);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v6);
    v5();
    result = OUTLINED_FUNCTION_4_26();
    atomic_store(result, v1);
  }

  return result;
}

void sub_21686B0E8()
{
  sub_216861DD0();
  if (v0 <= 0x3F)
  {
    sub_2167B8000();
    if (v1 <= 0x3F)
    {
      sub_21686B1D4(319, &qword_280E2B450, MEMORY[0x277CDFA28]);
      if (v2 <= 0x3F)
      {
        sub_21686B1D4(319, &qword_280E2B460, MEMORY[0x277CDF3E0]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_21686B1D4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    OUTLINED_FUNCTION_42_0();
    v4 = sub_2170080E4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_21686B224()
{
  result = qword_27CABA040;
  if (!qword_27CABA040)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9F18);
    sub_21686B2DC();
    sub_21686C6A0(&qword_280E2A700);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABA040);
  }

  return result;
}

unint64_t sub_21686B2DC()
{
  result = qword_27CABA048;
  if (!qword_27CABA048)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9EF0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB9EE0);
    sub_21686A790();
    swift_getOpaqueTypeConformance2();
    sub_2166D5AB0(&qword_280E2A6F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABA048);
  }

  return result;
}

unint64_t sub_21686B4A0()
{
  result = qword_27CABA0D0;
  if (!qword_27CABA0D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABA098);
    sub_21686B570();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABA078);
    sub_21686B750();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABA0D0);
  }

  return result;
}

unint64_t sub_21686B570()
{
  result = qword_27CABA0D8;
  if (!qword_27CABA0D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABA0B8);
    sub_21686B628();
    sub_21686C6A0(&unk_27CABA100);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABA0D8);
  }

  return result;
}

unint64_t sub_21686B628()
{
  result = qword_27CABA0E0;
  if (!qword_27CABA0E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABA0E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABA0A8);
    sub_21686C6A0(&unk_27CABA0F0);
    swift_getOpaqueTypeConformance2();
    sub_21686C6A0(&unk_280E2ACF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABA0E0);
  }

  return result;
}

unint64_t sub_21686B750()
{
  result = qword_27CABA110;
  if (!qword_27CABA110)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABA078);
    sub_21686B808();
    sub_21686C6A0(&unk_27CABA160);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABA110);
  }

  return result;
}

unint64_t sub_21686B808()
{
  result = qword_27CABA118;
  if (!qword_27CABA118)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABA120);
    sub_21686B8C0();
    sub_21686C6A0(&unk_27CABA150);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABA118);
  }

  return result;
}

unint64_t sub_21686B8C0()
{
  result = qword_27CABA128;
  if (!qword_27CABA128)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABA130);
    sub_21686B978();
    sub_21686C6A0(&unk_280E2ACF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABA128);
  }

  return result;
}

unint64_t sub_21686B978()
{
  result = qword_27CABA138;
  if (!qword_27CABA138)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABA140);
    sub_21686C6A0(&unk_27CABA148);
    sub_21686C6A0(&unk_280E2ACF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABA138);
  }

  return result;
}

unint64_t sub_21686BA5C()
{
  result = qword_27CABA170;
  if (!qword_27CABA170)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABA060);
    sub_21686BB14();
    sub_21686C6A0(&qword_280E2A840);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABA170);
  }

  return result;
}

unint64_t sub_21686BB14()
{
  result = qword_27CABA178;
  if (!qword_27CABA178)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABA058);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABA050);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB75D0);
    sub_21686C6A0(&unk_27CABA0C8);
    sub_21686C6A0(&qword_280E29AE8);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABA178);
  }

  return result;
}

uint64_t sub_21686BC70(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  *(a2 + 48) = *(a1 + 6);
  *(a2 + 16) = v3;
  *(a2 + 32) = v4;
  *a2 = v2;
  return a2;
}

uint64_t sub_21686BD40@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for PosterLockupView.Card(0);
  OUTLINED_FUNCTION_36(v3);

  return sub_216867478((v1 + 16), a1);
}

unint64_t sub_21686BE88()
{
  result = qword_280E2AF08;
  if (!qword_280E2AF08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABA1B8);
    sub_21686BF40();
    sub_21686C6A0(&qword_280E2A730);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AF08);
  }

  return result;
}

unint64_t sub_21686BF40()
{
  result = qword_280E2B008;
  if (!qword_280E2B008)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABA1C0);
    sub_2167C4CBC();
    sub_21686C6A0(&qword_280E2A718);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2B008);
  }

  return result;
}

void sub_21686C020()
{
  sub_21686B1D4(319, &qword_280E2B450, MEMORY[0x277CDFA28]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_21686C0C0()
{
  result = qword_27CABA1E0;
  if (!qword_27CABA1E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABA1E8);
    sub_21686B4A0();
    sub_21686BA5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABA1E0);
  }

  return result;
}

unint64_t sub_21686C170(uint64_t a1)
{
  result = OUTLINED_FUNCTION_8_10(a1);
  if (!result)
  {
    v5 = v4;
    v6 = OUTLINED_FUNCTION_100(0, v3);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v6);
    v5();
    result = OUTLINED_FUNCTION_4_26();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_21686C1FC()
{
  result = qword_27CABA230;
  if (!qword_27CABA230)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABA1F8);
    sub_21686C6A0(&unk_27CABA238);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABA230);
  }

  return result;
}

unint64_t sub_21686C2B4()
{
  result = qword_27CABA2A0;
  if (!qword_27CABA2A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABA298);
    sub_21686C6A0(&qword_280E2A730);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABA2A0);
  }

  return result;
}

unint64_t sub_21686C36C()
{
  result = qword_27CABA2B0;
  if (!qword_27CABA2B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABA2A8);
    sub_21686C424();
    sub_21686C6A0(&qword_280E2A6F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABA2B0);
  }

  return result;
}

unint64_t sub_21686C424()
{
  result = qword_27CABA2B8;
  if (!qword_27CABA2B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABA2C0);
    sub_21686C4DC();
    sub_21686C6A0(&qword_280E2A718);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABA2B8);
  }

  return result;
}

unint64_t sub_21686C4DC()
{
  result = qword_27CABA2C8;
  if (!qword_27CABA2C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABA2D0);
    sub_21686C594();
    sub_21686C6A0(&qword_280E2A730);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABA2C8);
  }

  return result;
}

unint64_t sub_21686C594()
{
  result = qword_27CABA2D8;
  if (!qword_27CABA2D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABA2E0);
    sub_21686C64C();
    sub_21686C6A0(&qword_280E2A720);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABA2D8);
  }

  return result;
}

unint64_t sub_21686C64C()
{
  result = qword_27CABA2E8;
  if (!qword_27CABA2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABA2E8);
  }

  return result;
}

unint64_t sub_21686C6A0(uint64_t a1)
{
  result = OUTLINED_FUNCTION_8_10(a1);
  if (!result)
  {
    v4 = OUTLINED_FUNCTION_100(0, v3);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v4);
    OUTLINED_FUNCTION_42_0();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_21686C6DC()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_217007DF4();
}

id sub_21686C74C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 path];
  *a2 = result;
  return result;
}

uint64_t sub_21686C788()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC7MusicUI33MusicUINetworkConnectivityMonitor_kvoToken;
  v3 = *(v0 + OBJC_IVAR____TtC7MusicUI33MusicUINetworkConnectivityMonitor_kvoToken);
  if (v3)
  {
    v4 = v3;
    sub_217005D04();

    v3 = *(v1 + v2);
  }

  *(v1 + v2) = 0;

  v5 = OBJC_IVAR____TtC7MusicUI33MusicUINetworkConnectivityMonitor__hasNetworkConnectivity;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3BD0);
  (*(*(v6 - 8) + 8))(v1 + v5, v6);

  return v1;
}

uint64_t sub_21686C844()
{
  sub_21686C788();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t __swift_get_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_21700D284();
    v10 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm_0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = sub_21700D284();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_21686CA08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  (*(*(a4 - 8) + 16))(a6, v6, a4);
  v12 = *(a5 + 24);

  return v12(a1, a2, a3 & 1, a4, a5);
}

uint64_t sub_21686CAF8(uint64_t a1)
{
  result = sub_21686CE54(qword_280E2FC48, type metadata accessor for ToggleContactCheckAllowedAction);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_21686CB7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v7 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_7();
  v13 = v12 - v11;
  v28 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_7();
  sub_21700D284();
  OUTLINED_FUNCTION_1();
  v24 = v18;
  v25 = v17;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_7();
  v21 = v20 - v19;
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  sub_21700CE04();
  (*(v9 + 16))(v13, a2, v7);
  sub_21700D224();
  (*(v9 + 8))(a2, v7);
  if (v27)
  {
    return (*(v15 + 8))(a1, v28);
  }

  (*(v15 + 8))(a1, v28);
  v23 = a3(0);
  return (*(v24 + 32))(a4 + *(v23 + 20), v21, v25);
}

uint64_t sub_21686CDFC(uint64_t a1)
{
  result = sub_21686CE54(&qword_280E2EDB0, type metadata accessor for ToggleDiscoverableByContactAction);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_21686CE54(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21686CE9C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_21686CF08()
{
  v16 = v0;
  if (qword_280E32630 != -1)
  {
    OUTLINED_FUNCTION_1_38();
  }

  v1 = *(v0 + 64);
  v2 = sub_217007CA4();
  __swift_project_value_buffer(v2, qword_280E32638);
  v3 = v1;
  v4 = sub_217007C84();
  v5 = sub_21700ED84();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 64);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136315394;
    *(v8 + 4) = sub_2166A85FC(0xD000000000000014, 0x80000002170832C0, &v15);
    *(v8 + 12) = 2082;
    swift_getErrorValue();
    v10 = sub_21700F884();
    v12 = sub_2166A85FC(v10, v11, &v15);

    *(v8 + 14) = v12;
    _os_log_impl(&dword_216679000, v4, v5, "%s could not get iCloud account status: %{public}s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CEA1440](v9, -1, -1);
    MEMORY[0x21CEA1440](v8, -1, -1);
  }

  else
  {
  }

  OUTLINED_FUNCTION_6_28();

  return v13(0);
}

uint64_t sub_21686D0F8(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v26[-v5 - 8];
  v7 = sub_217005974();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v26[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  if (qword_280E32630 != -1)
  {
    swift_once();
  }

  v11 = sub_217007CA4();
  __swift_project_value_buffer(v11, qword_280E32638);
  (*(v8 + 16))(v10, a1, v7);
  v12 = sub_217007C84();
  v13 = sub_21700ED64();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v25 = v2;
    v15 = v14;
    v16 = swift_slowAlloc();
    v27 = v16;
    *v15 = 136315394;
    *(v15 + 4) = sub_2166A85FC(0xD00000000000001ALL, 0x80000002170832A0, &v27);
    *(v15 + 12) = 2080;
    sub_217005954();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABF7A0);
    v17 = sub_21700F154();
    v19 = v18;
    sub_216697CFC(v26);
    (*(v8 + 8))(v10, v7);
    v20 = sub_2166A85FC(v17, v19, &v27);

    *(v15 + 14) = v20;
    _os_log_impl(&dword_216679000, v12, v13, "%s %s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CEA1440](v16, -1, -1);
    v21 = v15;
    v2 = v25;
    MEMORY[0x21CEA1440](v21, -1, -1);
  }

  else
  {

    (*(v8 + 8))(v10, v7);
  }

  v22 = sub_21700EA74();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v22);
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = v2;

  sub_21677BBA0();
}

uint64_t sub_21686D470(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v5 = swift_task_alloc();
  *(v4 + 24) = v5;
  *v5 = v4;
  v5[1] = sub_21686D504;

  return sub_2166CB974();
}

uint64_t sub_21686D504()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_69_0();
  OUTLINED_FUNCTION_0_51();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 32) = v3;
  *(v1 + 40) = v4;

  OUTLINED_FUNCTION_58();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_21686D5F4()
{

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

uint64_t sub_21686D630()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_2_10(v1);

  return sub_21686D470(v2, v3, v4, v5);
}

uint64_t sub_21686D6D0()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_21686D700()
{
  sub_21686D6D0();

  return MEMORY[0x282200960](v0);
}

BOOL sub_21686D76C(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  v4 = type metadata accessor for PaginatedPagePresenterState();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - v8;
  (*(a2 + 24))(a1, a2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v11 = sub_21700F164();
    (*(*(v11 - 8) + 8))(v9, v11);
  }

  else
  {
    (*(v6 + 8))(v9, v4);
  }

  return EnumCaseMultiPayload == 1;
}

BOOL sub_21686D8D0(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = sub_21700F164();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v20 - v9;
  v11 = type metadata accessor for PaginatedPagePresenterState();
  OUTLINED_FUNCTION_1();
  v13 = v12;
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v20 - v16;
  (*(a2 + 24))(a1, a2, v15);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v13 + 8))(v17, v11);
    return 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABDAE0);

    (*(v7 + 32))(v10, v17, v5);
    v18 = __swift_getEnumTagSinglePayload(v10, 1, AssociatedTypeWitness) != 1;
    (*(v7 + 8))(v10, v5);
  }

  return v18;
}

uint64_t sub_21686DB2C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6C6562616CLL && a2 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_21700F7D4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_21686DBB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21686DB2C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_21686DC00(uint64_t a1)
{
  v2 = sub_21686E6B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21686DC3C(uint64_t a1)
{
  v2 = sub_21686E6B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21686DC78(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA318);
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21686E6B0();
  sub_21700F974();
  sub_21700F724();
  return (*(v4 + 8))(v7, v2);
}

uint64_t sub_21686DDAC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA308);
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v11 - v7;
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21686E6B0();
  sub_21700F964();
  if (!v1)
  {
    v9 = sub_21700F664();
    (*(v5 + 8))(v8, v3);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v9;
}

void sub_21686DEFC(void *a1@<X8>)
{
  sub_216E2A304();
  if (!v1)
  {
    *a1 = v3;
    a1[1] = v4;
  }
}

uint64_t sub_21686DF28@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_21686DDAC(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_21686DF70@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v66 = a3;
  v5 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_0();
  v62 = v9;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v10);
  v63 = v55 - v11;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v12);
  v14 = v55 - v13;
  sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v67 = v15;
  v68 = v16;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_1_0();
  v61 = v17;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v18);
  v64 = v55 - v19;
  OUTLINED_FUNCTION_3_1();
  v21 = MEMORY[0x28223BE20](v20);
  v23 = v55 - v22;
  MEMORY[0x28223BE20](v21);
  v71 = a1;
  sub_21700CE04();
  v24 = a2;
  v25 = v7;
  v28 = *(v7 + 16);
  v26 = v7 + 16;
  v27 = v28;
  v28(v14, v24, v5);
  sub_21686E614();
  v29 = v65;
  v30 = sub_21700E924();
  if (v29)
  {
    (*(v25 + 8))(v24, v5);
    return (*(v68 + 8))(v71, v67);
  }

  else
  {
    v57 = v27;
    v58 = v26;
    v59 = v25;
    v60 = v5;
    v65 = v24;
    *v66 = v30;
    v32 = v30;
    sub_21700CE04();
    v33 = sub_21700CDB4();
    v35 = v34;
    v36 = v67;
    v37 = v68 + 8;
    v38 = *(v68 + 8);
    v38(v23, v67);
    if (v35)
    {
      v55[2] = v32;
      v56 = v38;
      v68 = v37;
      v69 = v33;
      v70 = v35;
      sub_21700F364();
      sub_21700D7A4();
      sub_21700CE04();
      v39 = v65;
      v40 = v60;
      v41 = v57;
      v57(v63, v65, v60);
      v55[0] = type metadata accessor for GradientListRowModel();
      v55[1] = *(v55[0] + 24);
      sub_21700D734();
      sub_21700CE04();
      v42 = v39;
      v41(v62, v39, v40);
      sub_216A17C24();
      v47 = v55[0];
      v48 = v66;
      v49 = (v66 + *(v55[0] + 36));
      *v49 = v50;
      v49[1] = v51;
      v52 = v48 + *(v47 + 28);
      *(v52 + 4) = 0;
      *v52 = 0u;
      *(v52 + 1) = 0u;
      v53 = v41;
      v54 = v71;
      sub_21700CE04();
      v53(v63, v42, v40);
      sub_216819D24();
      sub_21700D734();
      (*(v59 + 8))(v42, v40);
      return v56(v54, v67);
    }

    else
    {
      v43 = sub_21700E2E4();
      sub_21686E668(&qword_280E2A0F8, MEMORY[0x277D22548]);
      swift_allocError();
      v45 = v44;
      v46 = type metadata accessor for GradientListRowModel();
      *v45 = 25705;
      v45[1] = 0xE200000000000000;
      v45[2] = v46;
      (*(*(v43 - 8) + 104))(v45, *MEMORY[0x277D22530], v43);
      swift_willThrow();
      (*(v59 + 8))(v65, v60);
      v38(v71, v36);
    }
  }
}

unint64_t sub_21686E614()
{
  result = qword_27CABA300;
  if (!qword_27CABA300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABA300);
  }

  return result;
}

uint64_t sub_21686E668(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_21686E6B0()
{
  result = qword_27CABA310;
  if (!qword_27CABA310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABA310);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for GradientListRowModel.Component.CodingKeys(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_21686E7B4()
{
  result = qword_27CABA320;
  if (!qword_27CABA320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABA320);
  }

  return result;
}

unint64_t sub_21686E80C()
{
  result = qword_27CABA328;
  if (!qword_27CABA328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABA328);
  }

  return result;
}

unint64_t sub_21686E864()
{
  result = qword_27CABA330;
  if (!qword_27CABA330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABA330);
  }

  return result;
}

uint64_t sub_21686E8E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v43 = a3;
  v46 = a2;
  v45 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21700D284();
  OUTLINED_FUNCTION_1();
  v39 = v10;
  v40 = v9;
  MEMORY[0x28223BE20](v9);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v15 = v14;
  v17 = MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v17);
  v19 = &v38 - v18;
  v44 = a1;
  sub_21700CE04();
  v20 = sub_21700CDB4();
  v22 = v21;
  v23 = v19;
  v24 = *(v15 + 8);
  v24(v23, v13);
  if (v22)
  {
    v41 = v24;
    v25 = type metadata accessor for UnfollowUserAction();
    v26 = v44;
    v27 = (v43 + *(v25 + 20));
    *v27 = v20;
    v27[1] = v22;
    sub_21700CE04();
    (*(v5 + 16))(v8, v46, v45);
    v28 = v42;
    sub_21700D224();
    v29 = OUTLINED_FUNCTION_1_23();
    v30(v29);
    v41(v26, v13);
    if (v28)
    {
    }

    else
    {
      return (*(v39 + 32))(v43, v12, v40);
    }
  }

  else
  {
    v32 = sub_21700E2E4();
    sub_2167B1EA4();
    swift_allocError();
    v34 = v33;
    v35 = type metadata accessor for UnfollowUserAction();
    *v34 = 0x72506C6169636F73;
    v34[1] = 0xEF4449656C69666FLL;
    v34[2] = v35;
    (*(*(v32 - 8) + 104))(v34, *MEMORY[0x277D22530], v32);
    swift_willThrow();
    v36 = OUTLINED_FUNCTION_1_23();
    v37(v36);
    return (v24)(v44, v13);
  }
}

_BYTE *storeEnumTagSinglePayload for EmptyStateLockup.SystemType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_21686EDD4()
{
  v0 = sub_21700F5E4();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_21686EE20(char a1)
{
  result = 0x686372616573;
  switch(a1)
  {
    case 1:
      result = 0x647261646E617473;
      break;
    case 2:
      result = 0x656E696C6E69;
      break;
    case 3:
      result = 0x6B726F77747261;
      break;
    case 4:
      result = 0x676E6964616F6CLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_21686EED4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21686EDD4();
  *a1 = result;
  return result;
}

uint64_t sub_21686EF04@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21686EE20(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_21686EF34()
{
  result = qword_27CABA340;
  if (!qword_27CABA340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABA340);
  }

  return result;
}

uint64_t sub_21686EF88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v56 = a2;
  v53 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v51 = v5;
  MEMORY[0x28223BE20](v6);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v43 - v16;
  v18 = a1;
  sub_21700CE04();
  v19 = sub_21700CDB4();
  v21 = v20;
  v22 = *(v11 + 8);
  v52 = v9;
  v49 = v22;
  v50 = v11 + 8;
  v22(v17, v9);
  if (v21)
  {
    v54 = v19;
    v55 = v21;
    sub_21700F364();
    sub_21700D7A4();
    sub_21700CE04();
    v23 = *(v51 + 16);
    v47 = v51 + 16;
    v48 = v23;
    v45 = v8;
    v23(v8, v56, v53);
    v46 = type metadata accessor for EmptyStateLockup();
    OUTLINED_FUNCTION_0_53();
    v24 = v18;
    v44 = v18;
    sub_21700CE04();
    sub_21686F608();
    sub_21700CD14();
    v25 = v52;
    v26 = v49;
    v49(v15, v52);
    v27 = v46;
    *(a3 + *(v46 + 24)) = v54;
    sub_21700CE04();
    sub_21700CDB4();
    v28 = OUTLINED_FUNCTION_1_39();
    v29 = v25;
    v26(v28, v25);
    v30 = (a3 + v27[7]);
    *v30 = v15;
    v30[1] = v24;
    v18 = v44;
    sub_21700CE04();
    sub_21700CDB4();
    v31 = OUTLINED_FUNCTION_1_39();
    v26(v31, v29);
    v32 = (a3 + v27[8]);
    *v32 = v15;
    v32[1] = v24;
    sub_21700CE04();
    sub_21700CDB4();
    v33 = OUTLINED_FUNCTION_1_39();
    v26(v33, v29);
    v34 = (a3 + v27[9]);
    *v34 = v15;
    v34[1] = v24;
    type metadata accessor for Artwork();
    sub_21700CE04();
    v35 = v45;
    v36 = v56;
    v37 = v53;
    v48(v45, v56, v53);
    sub_21686F65C(&qword_280E2BF60, type metadata accessor for Artwork);
    OUTLINED_FUNCTION_0_53();
    type metadata accessor for ColorSchemeArtwork();
    sub_21700CE04();
    v48(v35, v36, v37);
    sub_21686F65C(&qword_27CABA350, type metadata accessor for ColorSchemeArtwork);
    OUTLINED_FUNCTION_0_53();
    (*(v51 + 8))(v36, v37);
  }

  else
  {
    v39 = sub_21700E2E4();
    sub_21686F65C(&qword_280E2A0F8, MEMORY[0x277D22548]);
    swift_allocError();
    v41 = v40;
    v42 = type metadata accessor for EmptyStateLockup();
    *v41 = 25705;
    v41[1] = 0xE200000000000000;
    v41[2] = v42;
    (*(*(v39 - 8) + 104))(v41, *MEMORY[0x277D22530], v39);
    swift_willThrow();
    (*(v51 + 8))(v56, v53);
  }

  return (v49)(v18, v52);
}

unint64_t sub_21686F608()
{
  result = qword_27CABA348;
  if (!qword_27CABA348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABA348);
  }

  return result;
}

uint64_t sub_21686F65C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t SocialProfileButtonDisplayStyle.hashValue.getter()
{
  v1 = *v0;
  sub_21700F8F4();
  MEMORY[0x21CEA0720](v1);
  return sub_21700F944();
}

unint64_t sub_21686F740()
{
  result = qword_27CABA358;
  if (!qword_27CABA358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABA358);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SocialProfileButtonDisplayStyle(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_21686F860(uint64_t a1, unsigned __int8 *a2)
{
  v30 = a1;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3BD0);
  OUTLINED_FUNCTION_1();
  v6 = v5;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_12_2();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA4A8);
  OUTLINED_FUNCTION_1();
  v10 = v9;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v11);
  v13 = &v27[-v12];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA498);
  OUTLINED_FUNCTION_1();
  v16 = v15;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v17);
  v19 = &v27[-v18];
  v28 = *a2;
  v20 = OBJC_IVAR____TtC7MusicUI22AccountButtonPresenter__userArtwork;
  v32 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA360);
  sub_217007DA4();
  (*(v16 + 32))(v2 + v20, v19, v14);
  v21 = OBJC_IVAR____TtC7MusicUI22AccountButtonPresenter__userFullName;
  v32 = 0;
  v33 = 0xE000000000000000;
  sub_217007DA4();
  (*(v10 + 32))(v2 + v21, v13, v8);
  v22 = OBJC_IVAR____TtC7MusicUI22AccountButtonPresenter__userHasNotifications;
  LOBYTE(v32) = 0;
  sub_217007DA4();
  v23 = *(v6 + 32);
  v24 = v29;
  v23(v2 + v22, v3, v29);
  v25 = OBJC_IVAR____TtC7MusicUI22AccountButtonPresenter__isUpdating;
  LOBYTE(v32) = 0;
  sub_217007DA4();
  v23(v2 + v25, v3, v24);
  *(v2 + OBJC_IVAR____TtC7MusicUI22AccountButtonPresenter_objectGraph) = v30;
  swift_beginAccess();
  v31 = v28;

  sub_217007DA4();
  swift_endAccess();
  type metadata accessor for UserSocialProfileCoordinator();
  type metadata accessor for ObjectGraph();
  sub_21700E094();
  *(v2 + 16) = v32;
  type metadata accessor for SocialGraphController();
  sub_21700E094();
  *(v2 + 24) = v32;
  sub_21686FC34();

  return v2;
}

uint64_t sub_21686FBC4()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_217007DF4();
}

uint64_t sub_21686FC34()
{
  v1 = v0;
  v29 = *v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA4B0);
  v23 = *(v2 - 8);
  v24 = v2;
  MEMORY[0x28223BE20](v2);
  v22 = &v21 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC5620);
  v27 = *(v4 - 8);
  v28 = v4;
  MEMORY[0x28223BE20](v4);
  v26 = &v21 - v5;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA4B8);
  v6 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v8 = &v21 - v7;
  v9 = v0[2];
  sub_21687099C();
  if (qword_280E464C0 != -1)
  {
    swift_once();
  }

  if ((sub_2166C129C() & 1) != 0 && v9[OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_isOfflineObjectGraph] != 1)
  {
    sub_216CAC6EC();
    v10 = sub_216685F4C(0, &qword_280E29CD0);
    swift_retain_n();
    v11 = sub_21700EE84();
    v30[3] = v10;
    v30[4] = MEMORY[0x277D225C0];
    v30[0] = v11;
    sub_21700E1C4();

    __swift_destroy_boxed_opaque_existential_1Tm(v30);
  }

  else
  {
    sub_216CAC834();
    sub_216870758();
    sub_21687099C();
  }

  v12 = swift_allocObject();
  swift_weakInit();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA4C0);
  sub_21669E098(&qword_280E2A2D8, &qword_27CABA4C0);
  v14 = v9;
  sub_21700D1D4();
  sub_21700D1F4();

  __swift_destroy_boxed_opaque_existential_1Tm(v30);
  (*(v6 + 8))(v8, v25);
  type metadata accessor for SubscriptionStatusCoordinator();
  type metadata accessor for ObjectGraph();
  sub_21700E094();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA4C8);
  sub_21669E098(&qword_280E2A310, &qword_27CABA4C8);
  sub_21700D1D4();
  v15 = v26;
  sub_21700D1E4();
  __swift_destroy_boxed_opaque_existential_1Tm(v30);
  (*(v27 + 8))(v15, v28);
  if (sub_21700B304())
  {
    v16 = v1[3];
    swift_allocObject();
    swift_weakInit();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA4D0);
    sub_21669E098(&unk_280E2A2E0, &qword_27CABA4D0);
    sub_21700D1D4();
    v17 = v22;
    sub_21700D1F4();

    __swift_destroy_boxed_opaque_existential_1Tm(v30);
    (*(v23 + 8))(v17, v24);
    v18 = *(v16 + 32);
    v19 = *(v18 + 16);

    os_unfair_lock_lock(v19);
    swift_beginAccess();
    os_unfair_lock_unlock(*(v18 + 16));

    sub_21687099C();
  }
}

uint64_t sub_2168702E0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA4D8);
  OUTLINED_FUNCTION_36(v1);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v2);
  v4 = &v20[-v3];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7530);
  OUTLINED_FUNCTION_36(v5);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_12_2();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D60);
  OUTLINED_FUNCTION_36(v7);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  v10 = &v20[-v9];
  v11 = type metadata accessor for Artwork();
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_7();
  v15 = v14 - v13;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_217007DE4();

  if ((v20[8] & 1) == 0 && qword_280E2C428 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_2166A6EA4();
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    sub_216699778(v10, &qword_27CAB6D60);
    return sub_21687099C();
  }

  else
  {
    sub_216875890();
    v17 = [objc_opt_self() currentTraitCollection];
    [v17 displayScale];

    v18 = sub_21700C444();
    __swift_storeEnumTagSinglePayload(v0, 1, 1, v18);
    v19 = sub_21700C3D4();
    __swift_storeEnumTagSinglePayload(v4, 1, 1, v19);

    sub_21700C3B4();

    sub_216699778(v4, &qword_27CABA4D8);
    sub_216699778(v0, &qword_27CAB7530);
    return sub_2168758F0(v15, type metadata accessor for Artwork);
  }
}

uint64_t sub_216870674()
{
  sub_216CAC834();
  sub_216870758();
  return sub_2168702E0();
}

uint64_t sub_2168706A8(void **a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_2168702E0();
    if (!v1 || (sub_216875980(v1), !v3))
    {
      sub_216CAC834();
    }

    sub_216870758();
  }

  return result;
}

uint64_t sub_216870758()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_217007DF4();
}

uint64_t sub_216870814()
{
  sub_216CAC834();
  sub_216870758();
  result = sub_216CAC8D0();
  if (result)
  {

    return sub_216870E50();
  }

  return result;
}

uint64_t (*sub_216870880())(__n128 *a1)
{
  v0 = sub_2168707D4();
  v2 = v1;
  v3 = swift_allocObject();
  *(v3 + 16) = v0;
  *(v3 + 24) = v2;
  return sub_216875948;
}

uint64_t sub_21687090C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_21687099C();
  }

  return result;
}

uint64_t sub_21687099C()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_217007DF4();
}

uint64_t sub_216870A08()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABD770);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v15[-1] - v3;
  v5 = type metadata accessor for OpenUserAccountSettingsPageAction();
  MEMORY[0x28223BE20](v5);
  v7 = &v15[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0);
  MEMORY[0x28223BE20](v8);
  v11 = &v15[-1] - v10;
  switch(*(*(v0 + 16) + OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_state))
  {
    case 1:

      break;
    default:
      v14 = v9;
      v13 = sub_21700F7D4();

      if ((v13 & 1) == 0)
      {
        type metadata accessor for ObjectGraph();
        sub_21700E094();
        sub_21700D234();
        v15[3] = v5;
        v15[4] = sub_2168752B0(&qword_27CABA428, type metadata accessor for OpenUserAccountSettingsPageAction);
        __swift_allocate_boxed_opaque_existential_1(v15);
        sub_216875708();
        (*(v2 + 104))(v4, *MEMORY[0x277D21E18], v1);
        sub_21700D5E4();

        (*(v2 + 8))(v4, v1);
        sub_2168758F0(v7, type metadata accessor for OpenUserAccountSettingsPageAction);
        (*(v14 + 8))(v11, v8);
        result = __swift_destroy_boxed_opaque_existential_1Tm(v15);
      }

      break;
  }

  return result;
}

uint64_t sub_216870DDC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_217007DE4();

  return v1;
}

uint64_t sub_216870E50()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_217007DF4();
}

uint64_t sub_216870EC0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_217007DE4();
}

uint64_t sub_216870F38()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_217007DE4();

  return v1;
}

uint64_t sub_216870FD4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_217007DE4();

  return v1;
}

uint64_t sub_216871040@<X0>(_BYTE *a1@<X8>)
{
  result = sub_216870EC0();
  *a1 = v3;
  return result;
}

uint64_t sub_2168710F4(void *a1)
{
  if (a1)
  {
    v1 = a1;
    sub_21700ADA4();
  }

  sub_216870E50();
  return sub_21687099C();
}

uint64_t sub_21687113C()
{

  v1 = OBJC_IVAR____TtC7MusicUI22AccountButtonPresenter__userArtwork;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA498);
  OUTLINED_FUNCTION_34();
  (*(v2 + 8))(v0 + v1);
  v3 = OBJC_IVAR____TtC7MusicUI22AccountButtonPresenter__displayStyle;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA4A0);
  OUTLINED_FUNCTION_34();
  (*(v4 + 8))(v0 + v3);
  v5 = OBJC_IVAR____TtC7MusicUI22AccountButtonPresenter__userFullName;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA4A8);
  OUTLINED_FUNCTION_34();
  (*(v6 + 8))(v0 + v5);
  v7 = OBJC_IVAR____TtC7MusicUI22AccountButtonPresenter__userHasNotifications;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3BD0);
  OUTLINED_FUNCTION_34();
  v10 = *(v9 + 8);
  v10(v0 + v7, v8);
  v10(v0 + OBJC_IVAR____TtC7MusicUI22AccountButtonPresenter__isUpdating, v8);

  return v0;
}

uint64_t sub_2168712BC()
{
  sub_21687113C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void sub_21687133C()
{
  sub_216871688(319, &qword_280E483F8, &qword_27CABA360, &unk_2170202C8, MEMORY[0x277CBCED0]);
  if (v0 <= 0x3F)
  {
    sub_2166B2E20(319, &qword_280E48418);
    if (v1 <= 0x3F)
    {
      sub_2166B2E20(319, &qword_280E483C8);
      if (v2 <= 0x3F)
      {
        sub_2166B2E20(319, &qword_280E48380);
        if (v3 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_216871544()
{
  sub_2168715F4();
  if (v0 <= 0x3F)
  {
    sub_216871688(319, &qword_280E2B440, &qword_27CAB8600, &unk_217020AD0, MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2168715F4()
{
  if (!qword_280E2B3E0)
  {
    type metadata accessor for AccountButtonPresenter(255);
    sub_2168752B0(&qword_280E398F0, type metadata accessor for AccountButtonPresenter);
    v0 = sub_2170081D4();
    if (!v1)
    {
      atomic_store(v0, &qword_280E2B3E0);
    }
  }
}

void sub_216871688(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
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

uint64_t sub_216871708(uint64_t a1, char a2)
{
  v5 = a2 & 1;
  type metadata accessor for AccountButtonPresenter(0);
  v2 = swift_allocObject();

  sub_21686F860(v3, &v5);
  return v2;
}

uint64_t sub_216871764@<X0>(uint64_t a1@<X8>)
{
  v59 = a1;
  sub_2170098C4();
  OUTLINED_FUNCTION_1();
  v57 = v4;
  v58 = v3;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_7();
  v56 = v6 - v5;
  v7 = type metadata accessor for SocialProfileButtonView(0);
  v55 = *(v7 - 8);
  v54 = *(v55 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v53 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2170099D4();
  OUTLINED_FUNCTION_1();
  v51 = v10;
  v52 = v9;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_7();
  v13 = v12 - v11;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA368);
  OUTLINED_FUNCTION_1();
  v45 = v15;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v16);
  v18 = &v43 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA370);
  OUTLINED_FUNCTION_1();
  v46 = v20;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_12_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA378);
  OUTLINED_FUNCTION_1();
  v47 = v22;
  v48 = v23;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v24);
  v26 = &v43 - v25;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA380);
  OUTLINED_FUNCTION_34();
  v28 = MEMORY[0x28223BE20](v27);
  v44 = &v43 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v49 = &v43 - v30;
  v60 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA388);
  v31 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABA390);
  v32 = sub_2168749CC();
  v61 = v31;
  v62 = v32;
  swift_getOpaqueTypeConformance2();
  sub_21700AF14();
  v33 = sub_21669E098(&qword_280E2A578, &qword_27CABA368);
  v34 = sub_2168752F8();
  sub_21700A364();
  (*(v45 + 8))(v18, v14);
  sub_2170099B4();
  v61 = v14;
  v62 = &type metadata for SocialProfileButtonStyle;
  v63 = v33;
  v64 = v34;
  OUTLINED_FUNCTION_2_9();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_21700A784();
  (*(v51 + 8))(v13, v52);
  (*(v46 + 8))(v2, v19);
  v61 = v19;
  v62 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v36 = v44;
  v37 = v47;
  sub_21700A864();
  (*(v48 + 8))(v26, v37);
  sub_216875708();
  swift_allocObject();
  sub_216875890();
  v38 = v56;
  sub_2170098B4();
  v39 = v49;
  sub_217008994();

  (*(v57 + 8))(v38, v58);
  sub_216699778(v36, &qword_27CABA380);
  v40 = OUTLINED_FUNCTION_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(v40);
  sub_21687534C();
  OUTLINED_FUNCTION_3_41();
  sub_21669E098(v41, &qword_27CABA420);
  sub_21700A944();
  return sub_216699778(v39, &qword_27CABA380);
}

uint64_t sub_216871E28@<X0>(uint64_t a1@<X8>)
{
  v11[1] = a1;
  v1 = type metadata accessor for SocialProfileButtonView(0);
  v11[0] = *(v1 - 8);
  MEMORY[0x28223BE20](v1 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA398);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v11 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA390);
  MEMORY[0x28223BE20](v5);
  v7 = v11 - v6;
  sub_2168720EC(v4);
  type metadata accessor for AccountButtonPresenter(0);
  sub_2168752B0(&qword_280E398F0, type metadata accessor for AccountButtonPresenter);
  sub_2170081B4();
  v8 = sub_216870FC0();

  if (v8)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = 1.0;
  }

  sub_216707110();
  *&v7[*(v5 + 36)] = v9;
  sub_216875708();
  swift_allocObject();
  sub_216875890();
  sub_2168749CC();
  sub_21700A494();

  return sub_216699778(v7, &qword_27CABA390);
}

uint64_t sub_2168720EC@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA410);
  MEMORY[0x28223BE20](v1);
  v3 = &v21 - v2;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA430);
  v21 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v5 = &v21 - v4;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA438);
  MEMORY[0x28223BE20](v22);
  v7 = &v21 - v6;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA3A8);
  MEMORY[0x28223BE20](v23);
  v9 = &v21 - v8;
  type metadata accessor for AccountButtonPresenter(0);
  sub_2168752B0(&qword_280E398F0, type metadata accessor for AccountButtonPresenter);
  sub_2170081B4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_217007DE4();

  if (v32)
  {
    *v3 = sub_2170091A4();
    *(v3 + 1) = 0x4024000000000000;
    v3[16] = 0;
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA440);
    sub_216872AAC(&v3[*(v10 + 44)]);
    sub_21700B314();
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA418);
    v12 = sub_21669E098(&qword_280E2A558, &qword_27CABA410);
    v26 = v1;
    v27 = v12;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v14 = MEMORY[0x277CE1350];
    sub_21700AB44();
    sub_216699778(v3, &qword_27CABA410);
    v15 = v21;
    v16 = v24;
    (*(v21 + 16))(v7, v5, v24);
    swift_storeEnumTagMultiPayload();
    sub_216874BE0();
    v26 = v1;
    v27 = v14;
    v28 = v11;
    v29 = v12;
    v30 = MEMORY[0x277CE1340];
    v31 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    sub_217009554();
    return (*(v15 + 8))(v5, v16);
  }

  else
  {
    sub_216872640(v9);
    sub_2166A6EA4();
    swift_storeEnumTagMultiPayload();
    sub_216874BE0();
    v18 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABA418);
    v19 = sub_21669E098(&qword_280E2A558, &qword_27CABA410);
    v26 = v1;
    v27 = v19;
    v20 = swift_getOpaqueTypeConformance2();
    v26 = v1;
    v27 = MEMORY[0x277CE1350];
    v28 = v18;
    v29 = v19;
    v30 = MEMORY[0x277CE1340];
    v31 = v20;
    swift_getOpaqueTypeConformance2();
    sub_217009554();
    return sub_216699778(v9, &qword_27CABA3A8);
  }
}

uint64_t sub_216872640@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v25 = sub_21700AC64();
  v24 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v23 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA3C8);
  MEMORY[0x28223BE20](v3);
  v5 = &v23 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA3B0);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v23 - v8;
  sub_2168735E0(v1, v5);
  v10 = sub_216874430();
  v12 = v11;
  v14 = v13;
  sub_216874EC4(&qword_280E2A5E8, &qword_27CABA3C8, &unk_2170203D8, sub_216874F3C);
  sub_21700A6A4();
  sub_21678817C(v10, v12, v14 & 1);

  sub_216699778(v5, &qword_27CABA3C8);
  *&v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA3B8) + 36)] = 256;
  sub_216874698();
  sub_216874698();
  sub_21700B3B4();
  sub_2170083C4();
  v15 = &v9[*(v7 + 44)];
  v16 = *&v27[39];
  *v15 = *&v27[31];
  *(v15 + 1) = v16;
  *(v15 + 2) = *&v27[47];
  (*(v24 + 104))(v23, *MEMORY[0x277CE0EE0], v25);
  v17 = sub_21700AD44();
  sub_2168747C0();
  sub_2168747C0();
  sub_21700B3B4();
  sub_2170083C4();
  *&v27[3] = *&v27[55];
  *&v27[11] = *&v27[63];
  *&v27[19] = *&v27[71];
  type metadata accessor for AccountButtonPresenter(0);
  sub_2168752B0(&qword_280E398F0, type metadata accessor for AccountButtonPresenter);
  sub_2170081B4();
  v18 = sub_216870FAC();

  __src = v17;
  if (v18)
  {
    v19 = 1.0;
  }

  else
  {
    v19 = 0.0;
  }

  v29 = 256;
  v30 = *v27;
  v31 = *&v27[8];
  *v32 = *&v27[16];
  *&v32[14] = *&v27[23];
  v33 = v19;
  v20 = sub_21700B364();
  sub_2168748B0(&__src, v20, v21, v26);
  sub_216699778(&__src, &unk_27CABA448);
  return sub_216699778(v9, &qword_27CABA3B0);
}

uint64_t sub_216872AAC@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA460);
  v26 = *(v28 - 8);
  v1 = v26;
  v2 = MEMORY[0x28223BE20](v28);
  v27 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v5 = &v26 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA3A8);
  MEMORY[0x28223BE20](v6);
  v8 = &v26 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA468);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v26 - v13;
  sub_216872640(v8);
  sub_216874BE0();
  sub_21700A4F4();
  sub_216699778(v8, &qword_27CABA3A8);
  v15 = v5;
  sub_216872DBC(v5);
  sub_2166A6EA4();
  v16 = *(v1 + 16);
  v17 = v27;
  v18 = v15;
  v19 = v15;
  v20 = v28;
  v16(v27, v18, v28);
  v21 = v29;
  sub_2166A6EA4();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA470);
  v16((v21 + *(v22 + 48)), v17, v20);
  v23 = v21 + *(v22 + 64);
  *v23 = 0;
  *(v23 + 8) = 0;
  v24 = *(v26 + 8);
  v24(v19, v20);
  sub_216699778(v14, &qword_27CABA468);
  v24(v17, v20);
  return sub_216699778(v12, &qword_27CABA468);
}

uint64_t sub_216872DBC@<X0>(uint64_t a1@<X8>)
{
  v12[1] = a1;
  v1 = sub_2170099D4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA478);
  MEMORY[0x28223BE20](v5);
  v7 = v12 - v6;
  type metadata accessor for AccountButtonPresenter(0);
  sub_2168752B0(&qword_280E398F0, type metadata accessor for AccountButtonPresenter);
  v8 = *(sub_2170081B4() + 16);

  v9 = sub_216CAC8D0();

  *v7 = sub_2170093C4();
  *(v7 + 1) = 0x3FF0000000000000;
  v7[16] = 0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA480);
  sub_216873250(v9 & 1, &v7[*(v10 + 44)]);
  sub_2170099B4();
  sub_21669E098(&qword_27CABA488, &qword_27CABA478);
  sub_21700A784();
  (*(v2 + 8))(v4, v1);
  return sub_216699778(v7, &qword_27CABA478);
}

uint64_t sub_216873018()
{
  v0 = sub_217009334();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217009324();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA410);
  sub_21669E098(&qword_280E2A558, &qword_27CABA410);
  sub_21700A704();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_21687314C()
{
  type metadata accessor for AccountButtonPresenter(0);
  sub_2168752B0(&qword_280E398F0, type metadata accessor for AccountButtonPresenter);
  OUTLINED_FUNCTION_8();
  sub_2170081B4();
  sub_216870A08();
}

uint64_t sub_2168731E8()
{
  sub_216983738(329);
  sub_2167B2E14();
  return sub_21700AE34();
}

uint64_t sub_216873250@<X0>(char a1@<W0>, char *a2@<X8>)
{
  v34 = a2;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7640);
  v3 = *(v35 - 8);
  v4 = MEMORY[0x28223BE20](v35);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v31 - v7;
  if (a1)
  {
    v9 = sub_216983738(25);
    v11 = v10;
  }

  else
  {
    type metadata accessor for AccountButtonPresenter(0);
    sub_2168752B0(&qword_280E398F0, type metadata accessor for AccountButtonPresenter);
    sub_2170081B4();
    v9 = sub_216870F38();
    v11 = v12;
  }

  v13 = sub_217009D54();
  KeyPath = swift_getKeyPath();
  v37 = v9;
  v38 = v11;
  v39 = 0;
  v40 = MEMORY[0x277D84F90];
  v41 = KeyPath;
  v42 = v13;
  sub_217009DC4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7660);
  sub_2167C4CBC();
  sub_21700A304();

  if (a1)
  {
    v36 = sub_216983738(320);
    v16 = v15;
    v17 = sub_217009E64();
    v18 = swift_getKeyPath();
    v19 = sub_217009834();
    v33 = v16;
    sub_21700DF14();

    v20 = MEMORY[0x277D84F90];
  }

  else
  {
    v36 = 0;
    v33 = 0;
    v20 = 0;
    v18 = 0;
    v17 = 0;
    v19 = 0;
  }

  v21 = v3;
  v22 = *(v3 + 16);
  v32 = v8;
  v23 = v8;
  v24 = v35;
  v22(v6, v23, v35);
  v25 = v34;
  v22(v34, v6, v24);
  v26 = &v25[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA490) + 48)];
  v27 = v36;
  v28 = v33;
  sub_2168757E0(v36, v33, 0, v20, v18);
  sub_21687582C(v27, v28, 0, v20, v18);
  *v26 = v27;
  *(v26 + 1) = v28;
  *(v26 + 2) = 0;
  *(v26 + 3) = v20;
  *(v26 + 4) = v18;
  *(v26 + 5) = v17;
  *(v26 + 12) = v19;
  v29 = *(v21 + 8);
  v29(v32, v24);
  sub_21687582C(v27, v28, 0, v20, v18);
  return (v29)(v6, v24);
}

uint64_t sub_2168735E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA3F0);
  MEMORY[0x28223BE20](v57);
  v47 = &v44 - v3;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA3E8);
  MEMORY[0x28223BE20](v50);
  v45 = &v44 - v4;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA450);
  MEMORY[0x28223BE20](v54);
  v55 = &v44 - v5;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA458);
  MEMORY[0x28223BE20](v48);
  v49 = (&v44 - v6);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA3D8);
  MEMORY[0x28223BE20](v53);
  v51 = &v44 - v7;
  v52 = sub_21700ADC4();
  v8 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = a1;
  type metadata accessor for AccountButtonPresenter(0);
  sub_2168752B0(&qword_280E398F0, type metadata accessor for AccountButtonPresenter);
  sub_2170081B4();
  v11 = sub_216870DDC();

  if (v11)
  {
    v12 = *(sub_2170081B4() + 16);

    v13 = sub_216CAC8D0();

    if ((v13 & 1) == 0)
    {
      v29 = v52;
      (*(v8 + 104))(v10, *MEMORY[0x277CE0FE0], v52);
      v30 = sub_21700AE04();
      (*(v8 + 8))(v10, v29);
      v31 = v49;
      *v49 = v30;
      v31[1] = 0;
      *(v31 + 8) = 1;
      swift_storeEnumTagMultiPayload();
      swift_retain_n();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA3E0);
      sub_216875080();
      sub_21669E098(&qword_280E2A538, &qword_27CABA3E8);
      v32 = v51;
      sub_217009554();
      sub_2166A6EA4();
      swift_storeEnumTagMultiPayload();
      sub_216874FC8();
      sub_216875104();
      sub_217009554();

      v33 = v32;
      v34 = &qword_27CABA3D8;
      return sub_216699778(v33, v34);
    }
  }

  sub_2170081B4();
  v14 = sub_216870F38();
  v16 = v15;

  v17 = HIBYTE(v16) & 0xF;
  if ((v16 & 0x2000000000000000) == 0)
  {
    v17 = v14 & 0xFFFFFFFFFFFFLL;
  }

  if (!v17 || (v18 = *(sub_2170081B4() + 16), , v19 = sub_216CAC8D0(), v18, (v19 & 1) != 0))
  {
    sub_21700ADB4();
    v20 = v52;
    (*(v8 + 104))(v10, *MEMORY[0x277CE0FE0], v52);
    v21 = sub_21700AE04();

    (*(v8 + 8))(v10, v20);
    v22 = sub_216873F78();
    v58 = v21;
    v59 = v22;
    sub_217009DC4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA3F8);
    sub_2168751F8();
    v23 = v47;
    sub_21700A304();

    v24 = (v23 + *(v57 + 36));
    v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7820) + 28);
    v26 = *MEMORY[0x277CE1048];
    v27 = sub_21700ADF4();
    (*(*(v27 - 8) + 104))(v24 + v25, v26, v27);
    *v24 = swift_getKeyPath();
    sub_2166A6EA4();
    swift_storeEnumTagMultiPayload();
    sub_216874FC8();
    sub_216875104();
    sub_217009554();
    return sub_216699778(v23, &qword_27CABA3F0);
  }

  sub_216685F4C(0, &qword_280E29B00);
  sub_2170081B4();
  v35 = sub_216870F38();
  v37 = v36;

  sub_216873ED4(v35, v37, 0);
  v38 = v45;
  sub_217006734();
  sub_2170081B4();
  v39 = sub_216870F38();
  v41 = v40;

  v42 = &v38[*(v50 + 52)];
  *v42 = v39;
  v42[1] = v41;
  sub_2166A6EA4();
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA3E0);
  sub_216875080();
  sub_21669E098(&qword_280E2A538, &qword_27CABA3E8);
  v43 = v51;
  sub_217009554();
  sub_2166A6EA4();
  swift_storeEnumTagMultiPayload();
  sub_216874FC8();
  sub_216875104();
  sub_217009554();
  sub_216699778(v43, &qword_27CABA3D8);
  v33 = v38;
  v34 = &qword_27CABA3E8;
  return sub_216699778(v33, v34);
}

id sub_216873ED4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    v4 = 0;
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = 0;
    goto LABEL_6;
  }

  v4 = sub_21700E4D4();

  if (!a3)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = sub_21700E804();

LABEL_6:
  v6 = [swift_getObjCClassFromMetadata() contactWithDisplayName:v4 handleStrings:v5];

  return v6;
}

uint64_t sub_216873F78()
{
  v0 = sub_2170098A4();
  v25 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v23 = &v22 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8708);
  MEMORY[0x28223BE20](v2);
  v4 = &v22 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8600);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v24 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v22 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v22 - v11;
  type metadata accessor for AccountButtonPresenter(0);
  sub_2168752B0(&qword_280E398F0, type metadata accessor for AccountButtonPresenter);
  v13 = *(sub_2170081B4() + 16);

  v14 = sub_216CAC8D0();

  if ((v14 & 1) == 0)
  {
    return sub_21700AC54();
  }

  type metadata accessor for SocialProfileButtonView(0);
  sub_216C0C900();
  v15 = v25;
  (*(v25 + 104))(v10, *MEMORY[0x277CE0560], v0);
  __swift_storeEnumTagSinglePayload(v10, 0, 1, v0);
  v16 = *(v2 + 48);
  sub_2166A6EA4();
  sub_2166A6EA4();
  if (__swift_getEnumTagSinglePayload(v4, 1, v0) == 1)
  {
    sub_216699778(v10, &qword_27CAB8600);
    sub_216699778(v12, &qword_27CAB8600);
    if (__swift_getEnumTagSinglePayload(&v4[v16], 1, v0) == 1)
    {
      sub_216699778(v4, &qword_27CAB8600);
      return sub_21700AD34();
    }

    goto LABEL_7;
  }

  v17 = v24;
  sub_2166A6EA4();
  if (__swift_getEnumTagSinglePayload(&v4[v16], 1, v0) == 1)
  {
    sub_216699778(v10, &qword_27CAB8600);
    sub_216699778(v12, &qword_27CAB8600);
    (*(v15 + 8))(v17, v0);
LABEL_7:
    sub_216699778(v4, &qword_27CAB8708);
    return sub_21700AC54();
  }

  v19 = v23;
  (*(v15 + 32))(v23, &v4[v16], v0);
  sub_2168752B0(&qword_280E2A858, MEMORY[0x277CE0570]);
  v20 = sub_21700E494();
  v21 = *(v15 + 8);
  v21(v19, v0);
  sub_216699778(v10, &qword_27CAB8600);
  sub_216699778(v12, &qword_27CAB8600);
  v21(v17, v0);
  sub_216699778(v4, &qword_27CAB8600);
  if (v20)
  {
    return sub_21700AD34();
  }

  return sub_21700AC54();
}

uint64_t sub_216874430()
{
  v0 = sub_217009254();
  MEMORY[0x28223BE20](v0 - 8);
  type metadata accessor for AccountButtonPresenter(0);
  sub_2168752B0(&qword_280E398F0, type metadata accessor for AccountButtonPresenter);
  v1 = *(sub_2170081B4() + 16);

  v2 = sub_216CAC8D0();

  if (v2)
  {
    sub_217009244();
    sub_217009234();
    sub_216983738(25);
    sub_217009224();

    sub_217009234();
    sub_216983738(320);
    sub_217009224();

    sub_217009234();
    sub_217009274();
    return sub_21700A154();
  }

  else
  {
    sub_2170081B4();
    v4 = sub_216870F38();
    v6 = v5;

    v7 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v7 = v4 & 0xFFFFFFFFFFFFLL;
    }

    if (v7)
    {
      sub_2170081B4();
      sub_216870F38();
    }

    else
    {
      sub_216983738(329);
    }

    sub_2167B2E14();
    return sub_21700A174();
  }
}

double sub_216874698()
{
  type metadata accessor for AccountButtonPresenter(0);
  sub_2168752B0(&qword_280E398F0, type metadata accessor for AccountButtonPresenter);
  sub_2170081B4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_217007DE4();

  if (v1)
  {
    return 32.0;
  }

  if (qword_280E2C428 != -1)
  {
    swift_once();
  }

  return *&qword_280E2C430;
}

double sub_2168747C0()
{
  type metadata accessor for AccountButtonPresenter(0);
  sub_2168752B0(&qword_280E398F0, type metadata accessor for AccountButtonPresenter);
  sub_2170081B4();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_217007DE4();

  result = 12.0;
  if (v1)
  {
    return 8.0;
  }

  return result;
}

uint64_t sub_2168748B0@<X0>(void *__src@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(__srca, __src, 0x48uLL);
  __srca[9] = a2;
  __srca[10] = a3;
  sub_2166A6EA4();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA3A8);
  memcpy((a4 + *(v8 + 36)), __srca, 0x58uLL);
  memcpy(v12, __dst, sizeof(v12));
  v13 = a2;
  v14 = a3;
  sub_2166A6EA4();
  sub_2166A6EA4();
  return sub_216699778(v12, &unk_27CABA408);
}

unint64_t sub_2168749CC()
{
  result = qword_280E2B0F0;
  if (!qword_280E2B0F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABA390);
    sub_216874EC4(&qword_280E2A600, &qword_27CABA398, &unk_2170203A8, sub_216874A84);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2B0F0);
  }

  return result;
}

unint64_t sub_216874A84()
{
  result = qword_280E2AA50;
  if (!qword_280E2AA50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABA3A0);
    sub_216874BE0();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABA410);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABA418);
    sub_21669E098(&qword_280E2A558, &qword_27CABA410);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AA50);
  }

  return result;
}

unint64_t sub_216874BE0()
{
  result = qword_280E2AE18;
  if (!qword_280E2AE18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABA3A8);
    sub_216874C98();
    sub_21669E098(&qword_280E2ACF0, &unk_27CABA408);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AE18);
  }

  return result;
}

unint64_t sub_216874C98()
{
  result = qword_280E2AEB8;
  if (!qword_280E2AEB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABA3B0);
    sub_216874D24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AEB8);
  }

  return result;
}

unint64_t sub_216874D24()
{
  result = qword_280E2AF90;
  if (!qword_280E2AF90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABA3B8);
    sub_216874DDC();
    sub_21669E098(&qword_280E2B388, &qword_27CAB76C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AF90);
  }

  return result;
}

unint64_t sub_216874DDC()
{
  result = qword_280E2B0E8;
  if (!qword_280E2B0E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABA3C0);
    sub_216874EC4(&qword_280E2A5E8, &qword_27CABA3C8, &unk_2170203D8, sub_216874F3C);
    sub_2168752B0(&qword_280E2A6F0, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2B0E8);
  }

  return result;
}

uint64_t sub_216874EC4(unint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = OUTLINED_FUNCTION_100(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v7);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_216874F3C()
{
  result = qword_280E2A970;
  if (!qword_280E2A970)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABA3D0);
    sub_216874FC8();
    sub_216875104();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2A970);
  }

  return result;
}

unint64_t sub_216874FC8()
{
  result = qword_280E2AA70;
  if (!qword_280E2AA70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABA3D8);
    sub_216875080();
    sub_21669E098(&qword_280E2A538, &unk_27CABA3E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AA70);
  }

  return result;
}

unint64_t sub_216875080()
{
  result = qword_280E2B0E0;
  if (!qword_280E2B0E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABA3E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2B0E0);
  }

  return result;
}

unint64_t sub_216875104()
{
  result = qword_280E2B1B0;
  if (!qword_280E2B1B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABA3F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABA3F8);
    sub_2168751F8();
    swift_getOpaqueTypeConformance2();
    sub_21669E098(&qword_280E2A710, &qword_27CAB7820);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2B1B0);
  }

  return result;
}

unint64_t sub_2168751F8()
{
  result = qword_280E2B0D8;
  if (!qword_280E2B0D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABA3F8);
    sub_21669E098(&qword_280E2A828, &qword_27CABA400);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2B0D8);
  }

  return result;
}

uint64_t sub_2168752B0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2168752F8()
{
  result = qword_280E35F80[0];
  if (!qword_280E35F80[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E35F80);
  }

  return result;
}

unint64_t sub_21687534C()
{
  result = qword_280E2B140;
  if (!qword_280E2B140)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABA380);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABA370);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABA368);
    sub_21669E098(&qword_280E2A578, &qword_27CABA368);
    sub_2168752F8();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_2168752B0(&qword_280E2A6F0, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2B140);
  }

  return result;
}

uint64_t sub_2168754D0()
{
  v0 = sub_217008AD4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_217009BE4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217009BF4();
  sub_217008AC4();
  sub_2168752B0(&qword_280E2A6D8, MEMORY[0x277CDE500]);
  sub_2168752B0(&qword_280E2AD60, MEMORY[0x277CDDB18]);
  sub_21700A364();
  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_2168756D0()
{
  result = sub_21700B304();
  v1 = 34.0;
  if (result)
  {
    v1 = 44.0;
  }

  qword_280E2C430 = *&v1;
  return result;
}

uint64_t sub_216875708()
{
  OUTLINED_FUNCTION_92();
  v1(0);
  OUTLINED_FUNCTION_34();
  v2 = OUTLINED_FUNCTION_8();
  v3(v2);
  return v0;
}

uint64_t sub_216875764()
{
  v0 = type metadata accessor for SocialProfileButtonView(0);
  OUTLINED_FUNCTION_36(v0);
  return sub_21687314C();
}

uint64_t sub_2168757E0(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
    sub_2167770D0(result, a2, a3, a4);
  }

  return result;
}

uint64_t sub_21687582C(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
    sub_2167C4DF0(result, a2, a3, a4);
  }

  return result;
}

uint64_t sub_216875890()
{
  OUTLINED_FUNCTION_92();
  v1(0);
  OUTLINED_FUNCTION_34();
  v2 = OUTLINED_FUNCTION_8();
  v3(v2);
  return v0;
}

uint64_t sub_2168758F0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_216875980(void *a1)
{
  v1 = [a1 name];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_21700E514();

  return v3;
}

uint64_t sub_216875A5C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_217007DE4();
}

uint64_t sub_216875AD4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA4E0);
  MEMORY[0x28223BE20](v2 - 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2166A6EA4();

  sub_217007DF4();
  return sub_216697664(a1, &qword_27CABA4E0);
}

uint64_t sub_216875BC4()
{
  v1 = OBJC_IVAR____TtCV7MusicUI24LibrarySearchResultsViewP33_29ABC8E274FD856D45A49733B4AC9A245Model__results;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA4E8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t sub_216875C6C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA4E8);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v12 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA4E0);
  MEMORY[0x28223BE20](v5);
  MEMORY[0x28223BE20](v6);
  v8 = &v12 - v7;
  v9 = OBJC_IVAR____TtCV7MusicUI24LibrarySearchResultsViewP33_29ABC8E274FD856D45A49733B4AC9A245Model__results;
  v10 = sub_2170068C4();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v10);
  sub_2166A6EA4();
  sub_217007DA4();
  sub_216697664(v8, &qword_27CABA4E0);
  (*(v2 + 32))(v0 + v9, v4, v1);
  return v0;
}

uint64_t sub_216875E24()
{
  v0 = sub_21700F5E4();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_216875E78(char a1)
{
  if (a1)
  {
    return 1684632167;
  }

  else
  {
    return 1953720684;
  }
}

uint64_t sub_216875EBC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_216875E24();
  *a1 = result;
  return result;
}

uint64_t sub_216875EEC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_216875E78(*v1);
  *a1 = result;
  a1[1] = 0xE400000000000000;
  return result;
}

uint64_t sub_216875F1C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v40 = a1;
  v35 = sub_2170090F4();
  OUTLINED_FUNCTION_1();
  v34 = v3;
  MEMORY[0x28223BE20](v4);
  v33 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA4F8);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v7);
  v9 = &v32 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA500);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v11);
  v13 = &v32 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA508);
  OUTLINED_FUNCTION_1();
  v38 = v15;
  v39 = v14;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v16);
  v18 = &v32 - v17;
  sub_2168763AC(v1, v13);
  sub_217006964();
  v19 = swift_allocObject();
  memcpy((v19 + 16), v1, 0x61uLL);
  sub_21687BF4C(v1, v42);
  OUTLINED_FUNCTION_3_42();
  v22 = sub_21687E120(v20, &qword_27CABA500, &unk_2170209E8, v21);
  v23 = sub_21687C2EC();
  v36 = v10;
  v37 = v6;
  v24 = v23;
  sub_21700AB14();

  sub_216697664(v9, &qword_27CABA4F8);
  sub_216697664(v13, &qword_27CABA500);
  v43 = *(v2 + 64);
  v44 = *(v2 + 72);
  LOBYTE(v13) = v44;

  if ((v13 & 1) == 0)
  {
    sub_21700ED94();
    v25 = sub_217009C34();
    sub_217007BC4();

    v26 = v33;
    sub_2170090E4();
    swift_getAtKeyPath();
    sub_216697664(&v43, &qword_27CABA548);
    (*(v34 + 8))(v26, v35);
  }

  v27 = sub_216C03B7C();

  if (v27)
  {
    v28 = sub_216C03990();
  }

  else
  {
    v28 = 0;
  }

  v41 = v28;
  v29 = swift_allocObject();
  memcpy((v29 + 16), v2, 0x61uLL);
  sub_21687BF4C(v2, v42);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA550);
  v42[0] = v36;
  v42[1] = v37;
  v42[2] = v22;
  v42[3] = v24;
  swift_getOpaqueTypeConformance2();
  sub_21687C5A0();
  v30 = v39;
  sub_21700AB14();

  return (*(v38 + 8))(v18, v30);
}

uint64_t sub_2168763AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v56 = a2;
  v3 = type metadata accessor for MusicMetrics.PageFields(0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v51 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v50 = (&v43 - v6);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA518);
  MEMORY[0x28223BE20](v55);
  v53 = &v43 - v7;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA570);
  MEMORY[0x28223BE20](v52);
  v54 = &v43 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9140);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v43 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA4F8);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v43 - v14;
  v16 = sub_21700B8D4();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v49 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v43 - v20;
  v22 = a1;
  sub_217006964();
  if (__swift_getEnumTagSinglePayload(v15, 1, v16) == 1)
  {
    sub_216697664(v15, &qword_27CABA4F8);
    sub_217007514();
    (*(v10 + 16))(v54, v12, v9);
    swift_storeEnumTagMultiPayload();
    sub_21687C03C();
    sub_2166D9530(qword_280E48638, &qword_27CAB9140);
    sub_217009554();
    return (*(v10 + 8))(v12, v9);
  }

  else
  {
    v45 = v17;
    v24 = *(v17 + 32);
    v46 = v17 + 32;
    v47 = v24;
    v24(v21, v15, v16);
    v44 = v21;
    v25 = v53;
    sub_216876A3C(a1, v53);
    v26 = *(sub_21700B8C4() + 16);

    v27 = v50;
    sub_21687714C(v26 != 0, v50);
    v48 = v9;
    v29 = v22[4];
    v28 = v22[5];
    v43 = v22[2];
    v30 = v51;
    sub_21687DB0C();
    v31 = v25 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA520) + 36);
    v32 = _s19PageMetricsModifierVMa();
    v33 = (v31 + v32[6]);
    *v33 = v29;
    v33[1] = v28;
    v34 = (v31 + v32[5]);
    *v34 = 0x686372616553;
    v34[1] = 0xE600000000000000;
    swift_unknownObjectRetain();
    sub_216F0D610(v30, v31);
    sub_21687DB64(v30, type metadata accessor for MusicMetrics.PageFields);
    sub_21687DB64(v27, type metadata accessor for MusicMetrics.PageFields);
    *(v31 + v32[7]) = v43;
    v35 = v45;
    v36 = v49;
    v37 = v44;
    (*(v45 + 16))(v49, v44, v16);
    v38 = (*(v35 + 80) + 113) & ~*(v35 + 80);
    v39 = swift_allocObject();
    memcpy((v39 + 16), v22, 0x61uLL);
    v47(v39 + v38, v36, v16);
    v40 = v53;
    v41 = (v53 + *(v55 + 36));
    *v41 = sub_21687D3A0;
    v41[1] = v39;
    v41[2] = 0;
    v41[3] = 0;
    v42 = v40;
    sub_2166A6EA4();
    swift_storeEnumTagMultiPayload();

    sub_21687BF4C(v22, v57);
    sub_21687C03C();
    sub_2166D9530(qword_280E48638, &qword_27CAB9140);
    sub_217009554();
    sub_216697664(v42, &qword_27CABA518);
    return (*(v35 + 8))(v37, v16);
  }
}

uint64_t sub_216876A3C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v50 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA540);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v37[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA578);
  MEMORY[0x28223BE20](v7);
  v9 = &v37[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8600);
  v48 = *(v10 - 8);
  v11 = *(v48 + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v49 = &v37[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v47 = &v37[-v13];
  v14 = sub_2170090F4();
  v46 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v37[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = *(sub_21700B8C4() + 16);

  if (v17)
  {
    v44 = v7;
    v45 = v3;
    v18 = *(a1 + 80);
    v19 = *(a1 + 88);
    v20 = *(a1 + 96);
    v21 = *(a1 + 16);
    v53 = *(a1 + 72);
    v52 = *(a1 + 64);
    v22 = v53;
    v42 = v19;
    v43 = v18;
    v41 = v20;
    sub_2167759EC();
    v40 = v21;

    sub_2166A6EA4();
    if (v22 != 1)
    {
      sub_21700ED94();
      v24 = sub_217009C34();
      sub_217007BC4();

      sub_2170090E4();
      swift_getAtKeyPath();
      sub_216697664(&v52, &qword_27CABA548);
      (*(v46 + 8))(v16, v14);
    }

    v25 = sub_216C03B7C();

    if (v25)
    {
      v39 = *(v25 + OBJC_IVAR____TtCC7MusicUI13FacetBarState4Data_onSelectionOfExistingItem);
    }

    else
    {
      v39 = 0;
    }

    v38 = *(a1 + 24);

    if ((v22 & 1) == 0)
    {
      sub_21700ED94();
      v26 = sub_217009C34();
      sub_217007BC4();

      sub_2170090E4();
      swift_getAtKeyPath();
      sub_216697664(&v52, &qword_27CABA548);
      (*(v46 + 8))(v16, v14);
    }

    v27 = sub_216C03B7C();

    if (v27)
    {
      v28 = sub_216C03990();

      v30 = (*(*v28 + 96))(v29);
      v27 = v31;
    }

    else
    {
      v30 = 0;
    }

    v32 = v41;
    LOBYTE(v51) = v41;
    v33 = sub_2170098A4();
    __swift_storeEnumTagSinglePayload(v47, 1, 1, v33);
    sub_2167A4788();
    v34 = swift_allocObject();
    *(v34 + 16) = v40;
    *(v34 + 24) = v38;
    v35 = v42;
    v36 = v43;
    *(v34 + 32) = v39;
    *(v34 + 40) = v36;
    *(v34 + 48) = v35;
    *(v34 + 56) = v32;
    *(v34 + 64) = v30;
    *(v34 + 72) = v27;
    sub_2167A4788();
    *v9 = sub_21687D434;
    v9[1] = v34;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA538);
    sub_2166D9530(&qword_280E2B360, &qword_27CABA538);
    sub_2166D9530(&qword_280E2A860, &qword_27CABA540);
    return sub_217009554();
  }

  else
  {
    sub_2170097E4();
    (*(v4 + 16))(v9, v6, v3);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA538);
    sub_2166D9530(&qword_280E2B360, &qword_27CABA538);
    sub_2166D9530(&qword_280E2A860, &qword_27CABA540);
    sub_217009554();
    return (*(v4 + 8))(v6, v3);
  }
}

double sub_21687714C@<D0>(int a1@<W0>, uint64_t *a2@<X8>)
{
  v47 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820);
  MEMORY[0x28223BE20](v4 - 8);
  v48 = &v45 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA4F8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v45 - v7;
  v45 = sub_2170090F4();
  v9 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA4E0);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v45 - v16;
  v18 = sub_2170068C4();
  v50 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v46 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = *(v2 + 64);
  v49 = v2;
  v53 = *(v2 + 72);
  v20 = v53;

  if ((v20 & 1) == 0)
  {
    sub_21700ED94();
    v21 = sub_217009C34();
    sub_217007BC4();

    sub_2170090E4();
    swift_getAtKeyPath();
    sub_216697664(&v52, &qword_27CABA548);
    (*(v9 + 8))(v11, v45);
  }

  v22 = sub_216C03B7C();

  if (v22)
  {
    v23 = sub_216C03990();

    (*(*v23 + 112))(v51, v24);

    v25 = swift_dynamicCast();
    __swift_storeEnumTagSinglePayload(v15, v25 ^ 1u, 1, v18);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v15, 1, v18);
    v27 = v49;
    if (EnumTagSinglePayload != 1)
    {
      (*(v50 + 32))(v17, v15, v18);
      __swift_storeEnumTagSinglePayload(v17, 0, 1, v18);
      goto LABEL_12;
    }
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v15, 1, 1, v18);
    v27 = v49;
  }

  sub_217006964();
  v28 = sub_21700B8D4();
  if (__swift_getEnumTagSinglePayload(v8, 1, v28) == 1)
  {
    sub_216697664(v8, &qword_27CABA4F8);
    __swift_storeEnumTagSinglePayload(v17, 1, 1, v18);
  }

  else
  {
    sub_21700B8C4();
    (*(*(v28 - 8) + 8))(v8, v28);
    sub_216CE09EC();
  }

  if (__swift_getEnumTagSinglePayload(v15, 1, v18) != 1)
  {
    sub_216697664(v15, &qword_27CABA4E0);
  }

LABEL_12:
  v29 = 0xE900000000000073;
  v30 = 0x746C757365526F6ELL;
  if (__swift_getEnumTagSinglePayload(v17, 1, v18) == 1)
  {
    sub_216697664(v17, &qword_27CABA4E0);
    v31 = type metadata accessor for MusicMetrics.PageFields(0);
    v32 = v31[7];
    v33 = sub_217005EF4();
    __swift_storeEnumTagSinglePayload(a2 + v32, 1, 1, v33);
    v34 = *v27;
    v35 = v27[1];
    sub_21700DF14();
    v36 = sub_21700E384();
    *a2 = 16;
    a2[1] = 0x746C757365526F6ELL;
    a2[2] = 0xE900000000000073;
    *(a2 + 24) = 35;
  }

  else
  {
    v49 = a2;
    v37 = v46;
    (*(v50 + 32))(v46, v17, v18);
    if (v47)
    {
      v30 = sub_217006894();
      v29 = v38;
      v39 = 0xE400000000000000;
      v40 = 1702195828;
    }

    else
    {
      v40 = 0x65736C6166;
      v39 = 0xE500000000000000;
    }

    v41 = sub_217005EF4();
    __swift_storeEnumTagSinglePayload(v48, 1, 1, v41);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF830);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_217013D90;
    *(inited + 32) = 0x6C75736552736168;
    *(inited + 40) = 0xEA00000000007374;
    v34 = *v27;
    v35 = v27[1];
    *(inited + 48) = v40;
    *(inited + 56) = v39;
    *(inited + 64) = 0xD000000000000014;
    *(inited + 72) = 0x800000021707F8F0;
    *(inited + 80) = 0x7972617262696CLL;
    *(inited + 88) = 0xE700000000000000;
    sub_21700DF14();
    v36 = sub_21700E384();
    (*(v50 + 8))(v37, v18);
    a2 = v49;
    *v49 = 16;
    a2[1] = v30;
    a2[2] = v29;
    *(a2 + 24) = 35;
    v31 = type metadata accessor for MusicMetrics.PageFields(0);
    sub_2167A4788();
  }

  *&result = 0x686372616553;
  *(a2 + v31[8]) = xmmword_217020730;
  v44 = (a2 + v31[9]);
  *v44 = v34;
  v44[1] = v35;
  *(a2 + v31[10]) = v36;
  return result;
}

uint64_t sub_2168778C0()
{
  v0 = type metadata accessor for MusicMetrics.PageFields(0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = (v5 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for MusicPageMetricsProvider();
  result = sub_21700D4B4();
  if (v5[1])
  {
    v4 = *(sub_21700B8C4() + 16);

    sub_21687714C(v4 != 0, v2);
    sub_216F0D464(v2);

    return sub_21687DB64(v2, type metadata accessor for MusicMetrics.PageFields);
  }

  return result;
}

uint64_t sub_2168779B4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA558);
  MEMORY[0x28223BE20](v2 - 8);
  v77 = &v69 - v3;
  v4 = sub_2170090F4();
  v82 = *(v4 - 8);
  v83 = v4;
  MEMORY[0x28223BE20](v4);
  v81 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA4E0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v69 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v69 - v13;
  v15 = sub_2170068C4();
  v84 = *(v15 - 8);
  v16 = MEMORY[0x28223BE20](v15);
  v75 = &v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v76 = &v69 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v80 = &v69 - v21;
  MEMORY[0x28223BE20](v20);
  v79 = &v69 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA4F8);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v69 - v24;
  v26 = sub_21700B8D4();
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = &v69 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217006964();
  if (__swift_getEnumTagSinglePayload(v25, 1, v26) == 1)
  {
    v30 = &qword_27CABA4F8;
    v31 = v25;
LABEL_13:
    sub_216697664(v31, v30);
LABEL_14:
    v86 = *(v1 + 72);
    v85 = *(v1 + 64);
    v40 = v86;

    if ((v40 & 1) == 0)
    {
      sub_21700ED94();
      v41 = sub_217009C34();
      sub_217007BC4();

      v42 = v81;
      sub_2170090E4();
      swift_getAtKeyPath();
      sub_216697664(&v85, &qword_27CABA548);
      (*(v82 + 8))(v42, v83);
    }

    sub_216C03C2C(0);

    type metadata accessor for LibrarySearchResultsView.Model();
    sub_21687DFB4(&qword_280E36798, type metadata accessor for LibrarySearchResultsView.Model);
    sub_2170081B4();
    __swift_storeEnumTagSinglePayload(v9, 1, 1, v15);
    sub_216875AD4(v9);
  }

  v78 = v9;
  v74 = v27;
  (*(v27 + 32))(v29, v25, v26);
  v88 = *(v0 + 72);
  v87 = *(v0 + 64);
  v32 = v88;

  if ((v32 & 1) == 0)
  {
    sub_21700ED94();
    v33 = sub_217009C34();
    sub_217007BC4();

    v34 = v81;
    sub_2170090E4();
    swift_getAtKeyPath();
    sub_216697664(&v87, &qword_27CABA548);
    (*(v82 + 8))(v34, v83);
  }

  v35 = sub_216C03B7C();

  if (v35)
  {
    v36 = sub_216C03990();

    (*(*v36 + 112))(&v85, v37);

    v38 = swift_dynamicCast();
    __swift_storeEnumTagSinglePayload(v12, v38 ^ 1u, 1, v15);
    if (__swift_getEnumTagSinglePayload(v12, 1, v15) != 1)
    {
      (*(v84 + 32))(v14, v12, v15);
      __swift_storeEnumTagSinglePayload(v14, 0, 1, v15);
      v9 = v78;
      goto LABEL_11;
    }
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v12, 1, 1, v15);
  }

  sub_21700B8C4();
  sub_216CE09EC();

  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v15);
  v9 = v78;
  if (EnumTagSinglePayload != 1)
  {
    sub_216697664(v12, &qword_27CABA4E0);
  }

LABEL_11:
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    (*(v74 + 8))(v29, v26);
    v30 = &qword_27CABA4E0;
    v31 = v14;
    goto LABEL_13;
  }

  v44 = v79;
  (*(v84 + 32))(v79, v14, v15);
  v45 = sub_21700B8C4();
  MEMORY[0x28223BE20](v45);
  *(&v69 - 2) = v44;
  v46 = sub_216CE0FB4(sub_21687C678, (&v69 - 4), v45);
  v48 = v47;

  if (v48)
  {
    v49 = *(sub_21700B8C4() + 16);

    v9 = v78;
    if (!v49)
    {
      (*(v74 + 8))(v29, v26);
      (*(v84 + 8))(v79, v15);
      goto LABEL_14;
    }

    v46 = 0;
  }

  result = sub_21700B8C4();
  if ((v46 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_30;
  }

  if (v46 >= *(result + 16))
  {
LABEL_30:
    __break(1u);
    return result;
  }

  v50 = v84 + 16;
  v51 = result + ((*(v84 + 80) + 32) & ~*(v84 + 80)) + *(v84 + 72) * v46;
  v73 = *(v84 + 16);
  v73(v80, v51, v15);

  v72 = v32;
  if ((v32 & 1) == 0)
  {
    sub_21700ED94();
    v52 = sub_217009C34();
    sub_217007BC4();

    v53 = v81;
    sub_2170090E4();
    swift_getAtKeyPath();
    sub_216697664(&v87, &qword_27CABA548);
    (*(v82 + 8))(v53, v83);
  }

  v54 = sub_21700B8C4();
  v70 = sub_216878748(v54);

  v55 = v76;
  v56 = v73;
  v73(v76, v80, v15);
  v57 = v75;
  v71 = v50;
  v56(v75, v55, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA560);
  swift_allocObject();
  v58 = sub_21687C698(v57);
  v59 = *(v84 + 8);
  v84 += 8;
  v76 = v59;
  (v59)(v55, v15);
  v60 = swift_allocObject();
  memcpy((v60 + 16), v1, 0x61uLL);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9E80);
  v62 = v77;
  __swift_storeEnumTagSinglePayload(v77, 1, 1, v61);
  type metadata accessor for FacetBarState.Data(0);
  swift_allocObject();
  sub_21687BF4C(v1, &v85);
  v63 = sub_216C03494(v70, v58, sub_21687C834, v60, v62);
  sub_216C03C2C(v63);

  if ((v72 & 1) == 0)
  {
    sub_21700ED94();
    v64 = sub_217009C34();
    sub_217007BC4();

    v65 = v81;
    sub_2170090E4();
    swift_getAtKeyPath();
    sub_216697664(&v87, &qword_27CABA548);
    (*(v82 + 8))(v65, v83);
  }

  sub_216C03D94(0);

  type metadata accessor for LibrarySearchResultsView.Model();
  sub_21687DFB4(&qword_280E36798, type metadata accessor for LibrarySearchResultsView.Model);
  sub_2170081B4();
  v66 = v78;
  v67 = v80;
  v73(v78, v80, v15);
  __swift_storeEnumTagSinglePayload(v66, 0, 1, v15);
  sub_216875AD4(v66);

  v68 = v76;
  (v76)(v67, v15);
  (*(v74 + 8))(v29, v26);
  return v68(v79, v15);
}