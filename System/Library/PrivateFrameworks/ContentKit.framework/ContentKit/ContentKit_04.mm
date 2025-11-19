uint64_t sub_21E230C70()
{
  OUTLINED_FUNCTION_240();

  OUTLINED_FUNCTION_8();

  return v0();
}

uint64_t sub_21E230D20()
{
  OUTLINED_FUNCTION_10();
  *(v1 + 91) = v2;
  *(v1 + 16) = v3;
  *(v1 + 24) = v0;
  v4 = sub_21E3434D0();
  *(v1 + 32) = v4;
  OUTLINED_FUNCTION_62_0(v4);
  *(v1 + 40) = v5;
  *(v1 + 48) = OUTLINED_FUNCTION_378();
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_21E230DCC()
{
  OUTLINED_FUNCTION_212();
  v1 = v0[3];
  v2 = sub_21E232B60();
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC10ContentKit26WFGeneratedResponseFactory_modelSession), *(v1 + OBJC_IVAR____TtC10ContentKit26WFGeneratedResponseFactory_modelSession + 24));
  if (v2)
  {
    OUTLINED_FUNCTION_39_3();
    v11 = (v3 + *v3);
    swift_task_alloc();
    OUTLINED_FUNCTION_146_0();
    v0[7] = v4;
    *v4 = v5;
    v4[1] = sub_21E230FF0;
    OUTLINED_FUNCTION_25_4();
    v6 = v11;
  }

  else
  {
    OUTLINED_FUNCTION_39_3();
    v12 = (v7 + *v7);
    swift_task_alloc();
    OUTLINED_FUNCTION_146_0();
    v0[9] = v8;
    *v8 = v9;
    v8[1] = sub_21E2312B0;
    OUTLINED_FUNCTION_25_4();
    v6 = v12;
  }

  return v6();
}

uint64_t sub_21E230FF0()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_87();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;
  *(v6 + 64) = v0;

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_21E2310E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_41_2();
  a21 = v23;
  a22 = v24;
  OUTLINED_FUNCTION_48_3();
  a20 = v22;
  v25 = *(v22 + 89);
  sub_21E343100();
  v26 = sub_21E3434C0();
  v27 = sub_21E343B50();
  if (OUTLINED_FUNCTION_32(v27))
  {
    v28 = *(v22 + 40);
    a9 = *(v22 + 48);
    v29 = *(v22 + 32);
    v30 = OUTLINED_FUNCTION_34();
    v31 = OUTLINED_FUNCTION_7_0();
    a10 = v31;
    *v30 = 136315138;
    *(v22 + 90) = v25;
    v32 = sub_21E343830();
    v34 = sub_21E1C80B4(v32, v33, &a10);

    *(v30 + 4) = v34;
    _os_log_impl(&dword_21E1BD000, v26, v27, "Using advance BOOLean output structure, response: %s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v31);
    OUTLINED_FUNCTION_5_0();
    OUTLINED_FUNCTION_5_0();

    (*(v28 + 8))(a9, v29);
    if (v25)
    {
      goto LABEL_3;
    }

LABEL_6:

    OUTLINED_FUNCTION_40_2();
    goto LABEL_8;
  }

  v35 = OUTLINED_FUNCTION_7();
  v36(v35);
  if (!v25)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (v25 == 1)
  {
    goto LABEL_6;
  }

  sub_21E1E8290();
  swift_allocError();
  OUTLINED_FUNCTION_82_1(v37, 2);

  OUTLINED_FUNCTION_40_2();
LABEL_8:
  OUTLINED_FUNCTION_29_5();

  return v40(v38, v39, v40, v41, v42, v43, v44, v45, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_21E2312B0()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_87();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;
  *(v6 + 80) = v0;

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_21E2313A8()
{
  OUTLINED_FUNCTION_10();
  v1 = *(v0 + 88);

  OUTLINED_FUNCTION_40_2();

  return v2(v1);
}

uint64_t sub_21E23140C()
{
  OUTLINED_FUNCTION_10();

  OUTLINED_FUNCTION_40_2();

  return v0(0);
}

uint64_t sub_21E23146C()
{
  OUTLINED_FUNCTION_10();

  OUTLINED_FUNCTION_40_2();

  return v0(0);
}

uint64_t sub_21E2314CC(uint64_t a1, char a2)
{
  *(v3 + 56) = a2;
  *(v3 + 24) = a1;
  *(v3 + 32) = v2;
  return OUTLINED_FUNCTION_0_4();
}

uint64_t sub_21E2314E4()
{
  OUTLINED_FUNCTION_212();
  OUTLINED_FUNCTION_17_6(*(v0 + 32));
  OUTLINED_FUNCTION_33_4();
  swift_task_alloc();
  OUTLINED_FUNCTION_146_0();
  *(v0 + 40) = v1;
  *v1 = v2;
  v1[1] = sub_21E2315F0;
  v3 = OUTLINED_FUNCTION_22_6();

  return v4(v3);
}

uint64_t sub_21E2315F0()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_87();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;
  *(v6 + 48) = v0;

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_21E231734()
{
  OUTLINED_FUNCTION_10();
  *(v1 + 224) = v2;
  *(v1 + 128) = v3;
  *(v1 + 136) = v0;
  v4 = sub_21E343820();
  *(v1 + 144) = v4;
  OUTLINED_FUNCTION_62_0(v4);
  *(v1 + 152) = v5;
  *(v1 + 160) = OUTLINED_FUNCTION_378();
  v6 = sub_21E3434D0();
  *(v1 + 168) = v6;
  OUTLINED_FUNCTION_62_0(v6);
  *(v1 + 176) = v7;
  *(v1 + 184) = swift_task_alloc();
  *(v1 + 192) = swift_task_alloc();
  *(v1 + 200) = swift_task_alloc();
  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_21E231878()
{
  OUTLINED_FUNCTION_212();
  OUTLINED_FUNCTION_17_6(*(v0 + 136));
  OUTLINED_FUNCTION_39_3();
  v4 = (v1 + *v1);
  v2 = swift_task_alloc();
  *(v0 + 208) = v2;
  *v2 = v0;
  v2[1] = sub_21E2319BC;
  OUTLINED_FUNCTION_25_4();

  return v4();
}

uint64_t sub_21E2319BC()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_87();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;
  *(v6 + 216) = v0;

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

void sub_21E231AE4()
{
  v49[1] = *MEMORY[0x277D85DE8];
  v2 = v0[10];
  v1 = v0[11];
  sub_21E343100();

  v3 = sub_21E3434C0();
  v4 = sub_21E343B50();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[25];
  v8 = v0[21];
  v7 = v0[22];
  if (v5)
  {
    v9 = OUTLINED_FUNCTION_34();
    v10 = OUTLINED_FUNCTION_7_0();
    v49[0] = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_21E1C80B4(v2, v1, v49);
    _os_log_impl(&dword_21E1BD000, v3, v4, "WFGeneratedResponseFactory generated dictionary value: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    OUTLINED_FUNCTION_5_0();
    OUTLINED_FUNCTION_5_0();
  }

  v11 = *(v7 + 8);
  v11(v6, v8);
  v12 = sub_21E2320D8(123, 0xE100000000000000, v2, v1);
  if (v13 & 1) != 0 || (v14 = v12, v0[12] = 125, v0[13] = 0xE100000000000000, v15 = swift_task_alloc(), *(v15 + 16) = v0 + 12, v16 = sub_21E232FCC(sub_21E2330FC, v15, v2, v1), v18 = v17, , (v18))
  {

    sub_21E343100();
    v19 = sub_21E3434C0();
    v20 = sub_21E343B60();
    if (!OUTLINED_FUNCTION_32(v20))
    {
      goto LABEL_18;
    }

    v21 = swift_slowAlloc();
    *v21 = 0;
    v22 = "WFGeneratedResponse generated dictionary value missing bracket";
  }

  else
  {
    if (v16 >> 14 < v14 >> 14)
    {
      __break(1u);
    }

    v23 = v0[19];
    v24 = v0[20];
    v48 = v0[18];
    sub_21E3438C0();
    v25 = sub_21E343980();
    v27 = v26;
    v29 = v28;
    v31 = v30;

    v0[2] = v25;
    v0[3] = v27;
    v0[4] = v29;
    v0[5] = v31;
    sub_21E343810();
    sub_21E23311C();
    v32 = sub_21E343CC0();
    v34 = v33;
    (*(v23 + 8))(v24, v48);

    if (v34 >> 60 != 15)
    {
      v35 = objc_opt_self();
      v36 = sub_21E342BC0();
      v0[14] = 0;
      v37 = [v35 JSONObjectWithData:v36 options:0 error:v0 + 14];

      v38 = v0[14];
      if (v37)
      {
        v39 = v38;
        sub_21E343CE0();
        sub_21E1D8430(v32, v34);
        swift_unknownObjectRelease();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB92E0);
        if (swift_dynamicCast())
        {
          OUTLINED_FUNCTION_72_0();

          OUTLINED_FUNCTION_40_2();
          OUTLINED_FUNCTION_335();

          __asm { BRAA            X2, X16 }
        }
      }

      else
      {
        v42 = v38;
        v43 = sub_21E342B50();

        swift_willThrow();
        sub_21E1D8430(v32, v34);
      }
    }

    sub_21E343100();
    v19 = sub_21E3434C0();
    v20 = sub_21E343B60();
    if (!OUTLINED_FUNCTION_32(v20))
    {
LABEL_18:

      v44 = OUTLINED_FUNCTION_7();
      (v11)(v44);
      sub_21E1E8290();
      swift_allocError();
      OUTLINED_FUNCTION_82_1(v45, 3);
      OUTLINED_FUNCTION_72_0();

      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_335();

      __asm { BRAA            X1, X16 }
    }

    v21 = swift_slowAlloc();
    *v21 = 0;
    v22 = "WFGeneratedResponse generated invalid JSON string.";
  }

  _os_log_impl(&dword_21E1BD000, v19, v20, v22, v21, 2u);
  OUTLINED_FUNCTION_5_0();
  goto LABEL_18;
}

uint64_t sub_21E232028()
{
  OUTLINED_FUNCTION_212();
  OUTLINED_FUNCTION_72_0();

  OUTLINED_FUNCTION_8();

  return v0();
}

unint64_t sub_21E2320D8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v6 = a3 & 0xFFFFFFFFFFFFLL;
  }

  v7 = 4 * v6;
  for (i = 15; ; i = sub_21E3438C0())
  {
    if (i >> 14 == v7)
    {
      return 0;
    }

    if (sub_21E343970() == a1 && v9 == a2)
    {
      break;
    }

    v11 = sub_21E343F80();

    if (v11)
    {
      return i;
    }
  }

  return i;
}

uint64_t sub_21E2321C0(uint64_t a1, char a2)
{
  *(v3 + 56) = a2;
  *(v3 + 24) = a1;
  *(v3 + 32) = v2;
  return OUTLINED_FUNCTION_0_4();
}

uint64_t sub_21E2321D8()
{
  OUTLINED_FUNCTION_212();
  OUTLINED_FUNCTION_17_6(*(v0 + 32));
  OUTLINED_FUNCTION_33_4();
  swift_task_alloc();
  OUTLINED_FUNCTION_146_0();
  *(v0 + 40) = v1;
  *v1 = v2;
  v1[1] = sub_21E2322E4;
  v3 = OUTLINED_FUNCTION_22_6();

  return v4(v3);
}

uint64_t sub_21E2322E4()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_87();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;
  *(v6 + 48) = v0;

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_21E232404(uint64_t a1, char a2)
{
  *(v3 + 56) = a2;
  *(v3 + 24) = a1;
  *(v3 + 32) = v2;
  return OUTLINED_FUNCTION_0_4();
}

uint64_t sub_21E23241C()
{
  OUTLINED_FUNCTION_212();
  OUTLINED_FUNCTION_17_6(*(v0 + 32));
  OUTLINED_FUNCTION_33_4();
  swift_task_alloc();
  OUTLINED_FUNCTION_146_0();
  *(v0 + 40) = v1;
  *v1 = v2;
  v1[1] = sub_21E232528;
  v3 = OUTLINED_FUNCTION_22_6();

  return v4(v3);
}

uint64_t sub_21E232528()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_87();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;
  *(v6 + 48) = v0;

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_21E232620()
{
  OUTLINED_FUNCTION_10();
  v1 = *(v0 + 32);
  sub_21E232690(*(v0 + 16));
  OUTLINED_FUNCTION_1();

  OUTLINED_FUNCTION_40_2();

  return v2(v1);
}

uint64_t sub_21E232690(uint64_t a1)
{
  v25 = a1;
  v24 = sub_21E342C60();
  v2 = *(v24 - 8);
  result = MEMORY[0x28223BE20](v24);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x277D84F90];
  v6 = *(v1 + OBJC_IVAR____TtC10ContentKit26WFGeneratedResponseFactory_entityList);
  if (!(v6 >> 62))
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_3;
    }

    return MEMORY[0x277D84F90];
  }

  result = sub_21E343DF0();
  v7 = result;
  if (!result)
  {
    return MEMORY[0x277D84F90];
  }

LABEL_3:
  if (v7 >= 1)
  {
    v8 = 0;
    v23 = v6 & 0xC000000000000001;
    v9 = (v2 + 8);
    v22 = MEMORY[0x277D84F90];
    v10 = v6;
    do
    {
      if (v23)
      {
        v11 = MEMORY[0x223D556A0](v8, v6);
      }

      else
      {
        v11 = *(v6 + 8 * v8 + 32);
      }

      v12 = v11;
      v13 = [v11 cachingIdentifier];
      sub_21E342C50();

      v14 = sub_21E342C40();
      v16 = v15;
      v17 = (*v9)(v5, v24);
      v26[0] = v14;
      v26[1] = v16;
      MEMORY[0x28223BE20](v17);
      OUTLINED_FUNCTION_73_0();
      *(v18 - 16) = v26;
      LOBYTE(v14) = sub_21E229CFC(sub_21E233F28, v19, v25);

      if (v14)
      {
        v20 = v12;
        MEMORY[0x223D55300]();
        v21 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18);
        if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v21 >> 1)
        {
          OUTLINED_FUNCTION_42_0(v21);
          sub_21E3439F0();
        }

        sub_21E343A20();

        v22 = v27;
      }

      else
      {
      }

      ++v8;
      v6 = v10;
    }

    while (v7 != v8);
    return v22;
  }

  __break(1u);
  return result;
}

uint64_t sub_21E23290C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = a1;
    v23 = xmmword_21E3561D0;
    MEMORY[0x28223BE20](a1);
    OUTLINED_FUNCTION_73_0();
    *(v4 - 16) = &v23;
    v6 = sub_21E229C58(sub_21E233E00, v5, v3);
    if (v6)
    {
      v23 = xmmword_21E352320;
      MEMORY[0x28223BE20](v6);
      OUTLINED_FUNCTION_73_0();
      *(v7 - 16) = &v23;
      result = sub_21E229C58(sub_21E233F00, v8, v3);
      if (result)
      {
        v10 = (v3 + 40);
        v11 = v2 + 1;
        while (--v11)
        {
          v12 = *v10;
          v10 += 2;
          if (v12 >= 8)
          {
            v13 = 0;
            v14 = v3 + 40;
            v3 = MEMORY[0x277D84F90];
LABEL_8:
            v15 = (v14 + 16 * v13);
            while (v2 != v13)
            {
              if (v13 >= v2)
              {
                __break(1u);
LABEL_30:
                __break(1u);
                return result;
              }

              if (__OFADD__(v13, 1))
              {
                goto LABEL_30;
              }

              v16 = *(v15 - 1);
              v17 = *v15;
              if (*v15 != 6)
              {
                if (*v15 >= 6 && v17 != 7)
                {
                  sub_21E1DF880(*(v15 - 1), *v15);
                }

                sub_21E1DFA50(v16, v17);
                sub_21E1DFA50(0, 6uLL);
                result = swift_isUniquelyReferenced_nonNull_native();
                *&v23 = v3;
                if ((result & 1) == 0)
                {
                  result = sub_21E1D5B1C(0, *(v3 + 16) + 1, 1);
                  v3 = v23;
                }

                v20 = *(v3 + 16);
                v19 = *(v3 + 24);
                if (v20 >= v19 >> 1)
                {
                  v22 = OUTLINED_FUNCTION_42_0(v19);
                  result = sub_21E1D5B1C(v22, v20 + 1, 1);
                  v3 = v23;
                }

                *(v3 + 16) = v20 + 1;
                v21 = v3 + 16 * v20;
                *(v21 + 32) = v16;
                *(v21 + 40) = v17;
                ++v13;
                goto LABEL_8;
              }

              sub_21E1DFA50(*(v15 - 1), 6uLL);
              result = sub_21E1DFA50(0, 6uLL);
              ++v13;
              v15 += 2;
            }

            return v3;
          }
        }
      }
    }
  }

  else if (sub_21E1C905C(*(v1 + OBJC_IVAR____TtC10ContentKit26WFGeneratedResponseFactory_entityList)))
  {
    return &unk_282F4E2C8;
  }

  else
  {
    return &unk_282F4E2F8;
  }

  return v3;
}

id sub_21E232B60()
{
  v0 = sub_21E3437E0();
  v2 = v1;
  v3 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v4 = sub_21E232D14(v0, v2);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = sub_21E3437A0();
  v7 = [v5 BOOLForKey_];

  return v7;
}

id WFGeneratedResponseFactory.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_21E232C9C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_21E232D14(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_21E3437A0();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithSuiteName_];

  return v4;
}

id sub_21E232D78(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7, void *a8)
{
  v9 = v8;
  if (a2)
  {
    v16 = sub_21E3437A0();

    if (a3)
    {
      goto LABEL_3;
    }

LABEL_6:
    v17 = 0;
    if (a6)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v16 = 0;
  if (!a3)
  {
    goto LABEL_6;
  }

LABEL_3:
  sub_21E1C868C(0, &qword_280CD7A40);
  v17 = sub_21E3439C0();

  if (a6)
  {
LABEL_4:
    v18 = sub_21E343730();

    goto LABEL_8;
  }

LABEL_7:
  v18 = 0;
LABEL_8:
  v19 = sub_21E342C30();
  v20 = 0;
  if (__swift_getEnumTagSinglePayload(a7, 1, v19) != 1)
  {
    v20 = sub_21E342C10();
    (*(*(v19 - 8) + 8))(a7, v19);
  }

  v21 = [v9 initWithRawResponse:v16 list:v17 BOOLeanValue:a4 numberValue:a5 dictionary:v18 date:v20 responseDataModel:a8];

  return v21;
}

uint64_t sub_21E232F20(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB92A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21E232F88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[1] = a2;
  v5[1] = a4;
  v6[0] = a1;
  v5[0] = a3;
  return static WFGeneratedOutputType.== infix(_:_:)(v6, v5) & 1;
}

unint64_t sub_21E232FCC(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v6 = a3;
  }

  v7 = 7;
  if (((a4 >> 60) & ((a3 & 0x800000000000000) == 0)) != 0)
  {
    v7 = 11;
  }

  v8 = v7 | (v6 << 16);
  while (1)
  {
    if (v8 < 0x4000)
    {
      return 0;
    }

    v8 = sub_21E3438D0();
    v13[0] = sub_21E343970();
    v13[1] = v9;
    v10 = a1(v13);
    if (v4)
    {
      break;
    }

    v11 = v10;

    if (v11)
    {
      return v8;
    }
  }

  return v8;
}

unint64_t sub_21E23311C()
{
  result = qword_27CEB92D8;
  if (!qword_27CEB92D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEB92D8);
  }

  return result;
}

uint64_t dispatch thunk of WFGeneratedResponseFactory.__allocating_init(dataModel:)()
{
  OUTLINED_FUNCTION_20();
  v1 = v0;
  OUTLINED_FUNCTION_39_3();
  v7 = (v2 + *v2);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_55_2(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_54_2(v4);

  return v7(v1);
}

uint64_t dispatch thunk of WFGeneratedResponseFactory.generateResponse(userPrompt:resultType:inferredTypes:isFinalRequest:)()
{
  OUTLINED_FUNCTION_240();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  OUTLINED_FUNCTION_80_1();
  v13 = (*(v8 + 120) + **(v8 + 120));
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_55_2(v9);
  *v10 = v11;
  OUTLINED_FUNCTION_54_2(v10);

  return v13(v7, v5, v3, v1);
}

uint64_t dispatch thunk of WFGeneratedResponseFactory.generateTextResponse(userPrompt:isFinalRequest:)()
{
  OUTLINED_FUNCTION_212();
  OUTLINED_FUNCTION_43_2();
  OUTLINED_FUNCTION_80_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_55_2(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_21_5(v1);

  return v4(v3);
}

uint64_t sub_21E2335A4()
{
  OUTLINED_FUNCTION_20();
  v2 = v1;
  v4 = v3;
  OUTLINED_FUNCTION_22();
  v5 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v6 = v5;

  v7 = *(v5 + 8);

  return v7(v4, v2);
}

uint64_t dispatch thunk of WFGeneratedResponseFactory.generateDateResponse(userPrompt:isFinalRequest:)()
{
  OUTLINED_FUNCTION_212();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  OUTLINED_FUNCTION_80_1();
  v11 = (*(v7 + 160) + **(v7 + 160));
  swift_task_alloc();
  OUTLINED_FUNCTION_146_0();
  *(v0 + 16) = v8;
  *v8 = v9;
  v8[1] = sub_21E1C7A24;

  return v11(v6, v4, v2);
}

uint64_t dispatch thunk of WFGeneratedResponseFactory.generateBooleanResponse(userPrompt:isFinalRequest:)()
{
  OUTLINED_FUNCTION_212();
  OUTLINED_FUNCTION_43_2();
  OUTLINED_FUNCTION_80_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_55_2(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_21_5(v1);

  return v4(v3);
}

uint64_t sub_21E2338F4()
{
  OUTLINED_FUNCTION_10();
  v2 = v1;
  OUTLINED_FUNCTION_22();
  v3 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;

  OUTLINED_FUNCTION_40_2();

  return v5(v2);
}

uint64_t dispatch thunk of WFGeneratedResponseFactory.generateNumberResponse(userPrompt:isFinalRequest:)()
{
  OUTLINED_FUNCTION_212();
  OUTLINED_FUNCTION_43_2();
  OUTLINED_FUNCTION_80_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_55_2(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_21_5(v1);

  return v4(v3);
}

uint64_t sub_21E233AF0()
{
  OUTLINED_FUNCTION_10();
  v2 = v1;
  OUTLINED_FUNCTION_22();
  v3 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;

  OUTLINED_FUNCTION_8();
  v6.n128_u64[0] = v2;

  return v5(v6);
}

uint64_t dispatch thunk of WFGeneratedResponseFactory.generateDictionaryResponse(userPrompt:isFinalRequest:)()
{
  OUTLINED_FUNCTION_212();
  OUTLINED_FUNCTION_43_2();
  OUTLINED_FUNCTION_80_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_55_2(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_21_5(v1);

  return v4(v3);
}

uint64_t dispatch thunk of WFGeneratedResponseFactory.generateListResponse(userPrompt:isFinalRequest:)()
{
  OUTLINED_FUNCTION_212();
  OUTLINED_FUNCTION_43_2();
  OUTLINED_FUNCTION_80_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_55_2(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_21_5(v1);

  return v4(v3);
}

uint64_t sub_21E233E20(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB92A8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21E233E90(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB92A8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

BOOL OUTLINED_FUNCTION_7_8()
{

  return sub_21E229C58(sub_21E233F00, v0, v1);
}

id OUTLINED_FUNCTION_12_6(void *a1)
{

  return sub_21E232D78(v2, v3, 0, v4, v5, v6, v1, a1);
}

uint64_t OUTLINED_FUNCTION_17_6@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 + v1 + 32);
  __swift_project_boxed_opaque_existential_1((a1 + v1), *(a1 + v1 + 24));
  return v2;
}

uint64_t OUTLINED_FUNCTION_19_6()
{
  v2 = *(v0 + 168);
  v3 = *(v0 + 152);

  return sub_21E233E20(v2, v3);
}

id OUTLINED_FUNCTION_27_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{

  return WFGeneratedResponseFactoryDataModel.init(entityList:model:conversation:)(v14, &a13, v13);
}

uint64_t OUTLINED_FUNCTION_49_3()
{
  v2 = *(v0 + 168);

  return sub_21E232F20(v2);
}

uint64_t OUTLINED_FUNCTION_62_2()
{

  return swift_allocObject();
}

id OUTLINED_FUNCTION_63_1(uint64_t a1, char *a2)
{

  return WFGeneratedResponseFactoryDataModel.init(entityList:model:conversation:)(a1, a2, v2);
}

uint64_t OUTLINED_FUNCTION_64_1()
{
}

uint64_t OUTLINED_FUNCTION_68_1()
{
}

uint64_t OUTLINED_FUNCTION_79_1(__n128 a1)
{
  v1[7] = a1;

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_81_1()
{
}

uint64_t OUTLINED_FUNCTION_82_1@<X0>(_BYTE *a1@<X1>, char a2@<W8>)
{
  *a1 = a2;
  a1[56] = 0;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_83_1()
{
}

uint64_t OUTLINED_FUNCTION_84_1()
{
}

uint64_t OUTLINED_FUNCTION_92_0(__n128 a1)
{
  v1[6] = a1;

  return swift_task_alloc();
}

uint64_t sub_21E234520(uint64_t a1, uint64_t *a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t *))
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2);
    v5 = sub_21E343E20();
  }

  else
  {
    v5 = MEMORY[0x277D84F98];
  }

  v8 = v5;

  a4(v6, 1, &v8);

  return v8;
}

uint64_t sub_21E2345D4()
{
  KeyPath = swift_getKeyPath();
  sub_21E234994(KeyPath, &unk_21E356528, 0, &unk_282F50508, sub_21E23CF70, &block_descriptor_84);
  OUTLINED_FUNCTION_1();

  return v0;
}

void sub_21E23464C(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 rawResponse];
  if (v3)
  {
    v4 = v3;
    v5 = sub_21E3437E0();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_21E2346B4(uint64_t a1, void **a2)
{
  v2 = *a2;
  if (*(a1 + 8))
  {
    v3 = sub_21E3437A0();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setRawResponse_];
}

uint64_t sub_21E234724(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v4 = swift_task_alloc();
  v3[4] = v4;
  *v4 = v3;
  v4[1] = sub_21E2347C0;

  return sub_21E22FCD8();
}

uint64_t sub_21E2347C0()
{
  OUTLINED_FUNCTION_212();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_22();
  v7 = v6;
  OUTLINED_FUNCTION_42_1();
  *v8 = v7;
  v9 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v10 = v9;

  if (v0)
  {
    v11 = *(v9 + 8);

    return v11();
  }

  else
  {
    *(v7 + 40) = v3;
    *(v7 + 48) = v5;
    OUTLINED_FUNCTION_23();

    return MEMORY[0x2822009F8](v13, v14, v15);
  }
}

uint64_t sub_21E234900()
{
  OUTLINED_FUNCTION_20();
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = *(v0 + 16);
  v4 = [*(v0 + 24) response];
  v5 = OUTLINED_FUNCTION_60_1();
  sub_21E23C9D4(v5, v6, v4);
  *v3 = v2;
  v3[1] = v1;
  v7 = *(v0 + 8);

  return v7(v4);
}

void *sub_21E234994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = objc_opt_self();
  v12 = swift_allocObject();
  v12[2] = a1;
  v12[3] = a2;
  v12[4] = a3;
  v19[4] = a5;
  v20 = v12;
  OUTLINED_FUNCTION_20_7();
  OUTLINED_FUNCTION_19_7();
  v19[2] = v13;
  v19[3] = a6;
  v14 = _Block_copy(v19);
  v15 = v20;

  v16 = [v11 asynchronousBlock_];
  v17 = OUTLINED_FUNCTION_1();
  _Block_release(v17);
  return v15;
}

uint64_t sub_21E234AA0()
{
  KeyPath = swift_getKeyPath();
  sub_21E234994(KeyPath, &unk_21E3564D0, 0, &unk_282F50490, sub_21E23CE88, &block_descriptor_66);
  OUTLINED_FUNCTION_1();

  return v0;
}

void sub_21E234B18(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 dictionary];
  if (v3)
  {
    v4 = v3;
    v5 = sub_21E343740();
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
}

void sub_21E234B94(void *a1, void **a2)
{
  v2 = *a2;
  if (*a1)
  {
    v3 = sub_21E343730();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setDictionary_];
}

uint64_t sub_21E234C18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v4 = swift_task_alloc();
  v3[4] = v4;
  *v4 = v3;
  v4[1] = sub_21E234CB4;

  return sub_21E231734();
}

uint64_t sub_21E234CB4()
{
  OUTLINED_FUNCTION_20();
  v3 = v2;
  OUTLINED_FUNCTION_22();
  v5 = v4;
  OUTLINED_FUNCTION_42_1();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v8 = v7;

  if (v0)
  {
    v9 = *(v7 + 8);

    return v9();
  }

  else
  {
    *(v5 + 40) = v3;
    OUTLINED_FUNCTION_23();

    return MEMORY[0x2822009F8](v11, v12, v13);
  }
}

uint64_t sub_21E234DE4()
{
  OUTLINED_FUNCTION_20();
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  v3 = [*(v0 + 24) response];
  v4 = OUTLINED_FUNCTION_60_1();
  sub_21E23CA2C(v4, v5);
  *v2 = v1;
  v6 = OUTLINED_FUNCTION_10_9();

  return v7(v6);
}

uint64_t sub_21E234E90()
{
  KeyPath = swift_getKeyPath();
  sub_21E234994(KeyPath, &unk_21E356490, 0, &unk_282F50418, sub_21E23CDD4, &block_descriptor_42);
  OUTLINED_FUNCTION_1();

  return v0;
}

id sub_21E234F08@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 BOOLeanValue];
  *a2 = result;
  return result;
}

uint64_t sub_21E234F44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_21E234F68, 0, 0);
}

uint64_t sub_21E234F68()
{
  OUTLINED_FUNCTION_212();
  v1 = [*(v0 + 32) response];
  v2 = [v1 numberValue];

  if (v2)
  {
    sub_21E1C868C(0, &qword_27CEB92B8);
    v3 = sub_21E343C40();
    OUTLINED_FUNCTION_7();
    v4 = sub_21E343C60();

    if (v4 & 1) != 0 || (v5 = sub_21E343C40(), OUTLINED_FUNCTION_7(), v6 = sub_21E343C60(), v5, (v6))
    {
      [v2 BOOLValue];

      v7 = *(v0 + 16);
      v8 = [*(v0 + 32) response];
      v9 = sub_21E343A40();
      [v8 setBooleanValue_];

      *v7 = sub_21E343A40();
      v10 = OUTLINED_FUNCTION_10_9();

      return v11(v10);
    }
  }

  v13 = swift_task_alloc();
  *(v0 + 40) = v13;
  *v13 = v0;
  OUTLINED_FUNCTION_40_3(v13);

  return sub_21E230D20();
}

uint64_t sub_21E235130()
{
  OUTLINED_FUNCTION_20();
  v3 = v2;
  OUTLINED_FUNCTION_22();
  v5 = v4;
  OUTLINED_FUNCTION_42_1();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v8 = v7;

  if (v0)
  {
    v9 = *(v7 + 8);

    return v9();
  }

  else
  {
    *(v5 + 48) = v3 & 1;
    OUTLINED_FUNCTION_23();

    return MEMORY[0x2822009F8](v11, v12, v13);
  }
}

uint64_t sub_21E235264()
{
  OUTLINED_FUNCTION_20();
  v1 = *(v0 + 16);
  v2 = [*(v0 + 32) response];
  v3 = sub_21E343A40();
  [v2 setBooleanValue_];

  *v1 = sub_21E343A40();
  v4 = OUTLINED_FUNCTION_10_9();

  return v5(v4);
}

uint64_t sub_21E235338()
{
  KeyPath = swift_getKeyPath();
  sub_21E234994(KeyPath, &unk_21E356440, 0, &unk_282F50418, sub_21E23CDD4, &block_descriptor_42);
  OUTLINED_FUNCTION_1();

  return v0;
}

id sub_21E2353B0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 numberValue];
  *a2 = result;
  return result;
}

uint64_t sub_21E2353EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_21E235410, 0, 0);
}

uint64_t sub_21E235410()
{
  OUTLINED_FUNCTION_212();
  v1 = [*(v0 + 32) response];
  v2 = [v1 BOOLeanValue];

  if (v2)
  {
    [v2 BOOLValue];

    v3 = *(v0 + 16);
    v4 = [*(v0 + 32) response];
    v5 = sub_21E343B20();
    [v4 setNumberValue_];

    *v3 = sub_21E343B20();
    v6 = OUTLINED_FUNCTION_48_4();

    return v7(v6);
  }

  else
  {
    v9 = swift_task_alloc();
    *(v0 + 40) = v9;
    *v9 = v0;
    v10 = OUTLINED_FUNCTION_40_3(v9);

    return sub_21E2314CC(v10, v11);
  }
}

uint64_t sub_21E235588()
{
  OUTLINED_FUNCTION_20();
  v3 = v2;
  OUTLINED_FUNCTION_22();
  v5 = v4;
  OUTLINED_FUNCTION_42_1();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v8 = v7;

  if (v0)
  {
    v9 = *(v7 + 8);

    return v9();
  }

  else
  {
    *(v5 + 48) = v3;
    OUTLINED_FUNCTION_5_2();

    return MEMORY[0x2822009F8](v11, v12, v13);
  }
}

uint64_t sub_21E2356B4()
{
  OUTLINED_FUNCTION_20();
  v1 = *(v0 + 16);
  v2 = [*(v0 + 32) response];
  v3 = sub_21E343B20();
  [v2 setNumberValue_];

  *v1 = sub_21E343B20();
  v4 = OUTLINED_FUNCTION_48_4();

  return v5(v4);
}

uint64_t sub_21E235788()
{
  KeyPath = swift_getKeyPath();
  sub_21E234994(KeyPath, &unk_21E3563D8, 0, &unk_282F50350, sub_21E23CB9C, &block_descriptor_14);
  OUTLINED_FUNCTION_1();

  return v0;
}

uint64_t sub_21E235800@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 date];
  if (v3)
  {
    v4 = v3;
    sub_21E342C20();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_21E342C30();

  return __swift_storeEnumTagSinglePayload(a2, v5, 1, v6);
}

void sub_21E235880(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB92A8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10 - v5;
  sub_21E23CD60(a1, &v10 - v5, &qword_27CEB92A8);
  v7 = *a2;
  v8 = sub_21E342C30();
  v9 = 0;
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) != 1)
  {
    v9 = sub_21E342C10();
    (*(*(v8 - 8) + 8))(v6, v8);
  }

  [v7 setDate_];
}

uint64_t sub_21E23599C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v4 = swift_task_alloc();
  v3[4] = v4;
  *v4 = v3;
  v4[1] = sub_21E235A44;

  return sub_21E23015C();
}

uint64_t sub_21E235A44()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_22();
  v2 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v3 = v2;

  if (v0)
  {
    OUTLINED_FUNCTION_8();

    return v4();
  }

  else
  {
    OUTLINED_FUNCTION_23();

    return MEMORY[0x2822009F8](v6, v7, v8);
  }
}

uint64_t sub_21E235B5C()
{
  OUTLINED_FUNCTION_10();
  v1 = [*(v0 + 24) response];
  v2 = sub_21E342C10();
  [v1 setDate_];

  v3 = OUTLINED_FUNCTION_10_9();

  return v4(v3);
}

id sub_21E235C10()
{
  v0 = objc_opt_self();
  v5[4] = sub_21E235CAC;
  v5[5] = 0;
  OUTLINED_FUNCTION_20_7();
  OUTLINED_FUNCTION_19_7();
  v5[2] = v1;
  v5[3] = &block_descriptor_2;
  v2 = _Block_copy(v5);
  v3 = [v0 asynchronousBlock_];
  _Block_release(v2);
  return v3;
}

uint64_t sub_21E235CAC(void *a1, uint64_t a2, void (*a3)(__int128 *, void), uint64_t a4)
{
  v7 = sub_21E3434D0();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v72 - v12;
  objc_opt_self();
  v14 = swift_dynamicCastObjCClass();
  if (v14)
  {
    v15 = v14;
    v16 = a1;
    v17 = sub_21E23CB10(v15, &selRef_textResponse);
    if (v18)
    {
      v79 = v16;
      v81 = a4;
      v80 = a3;
      v77 = v17;
      v76 = v18;
      v78 = [objc_opt_self() preferredFontForTextStyle_];
      v19 = sub_21E343C80();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB9328);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_21E356320;
      v21 = *MEMORY[0x277D6F250];
      v22 = *MEMORY[0x277D6F258];
      *(inited + 32) = *MEMORY[0x277D6F250];
      *(inited + 40) = v22;
      v23 = *MEMORY[0x277D6F260];
      v24 = *MEMORY[0x277D6F268];
      *(inited + 48) = *MEMORY[0x277D6F260];
      *(inited + 56) = v24;
      v25 = *MEMORY[0x277D6F270];
      v26 = *MEMORY[0x277D6F278];
      *(inited + 64) = *MEMORY[0x277D6F270];
      *(inited + 72) = v26;
      v27 = *MEMORY[0x277D6F280];
      v28 = *MEMORY[0x277D6F288];
      *(inited + 80) = *MEMORY[0x277D6F280];
      *(inited + 88) = v28;
      v29 = *MEMORY[0x277D6F290];
      v74 = *MEMORY[0x277D6F298];
      v30 = v74;
      *(inited + 96) = v29;
      *(inited + 104) = v30;
      v73 = *MEMORY[0x277D6F2A0];
      v75 = *MEMORY[0x277D6F2A8];
      v31 = v75;
      *(inited + 112) = v73;
      *(inited + 120) = v31;
      v32 = v21;
      v33 = v22;
      v34 = v23;
      v35 = v24;
      v36 = v25;
      v37 = v26;
      v38 = v27;
      v39 = v28;
      v40 = v29;
      v41 = v74;
      v42 = v73;
      v43 = v75;
      v44 = sub_21E3437A0();

      *&v82 = MEMORY[0x277D84F90];
      sub_21E1D5B3C(0, 12, 0);
      v45 = 32;
      v46 = v82;
      do
      {
        v47 = *(inited + v45);
        *&v82 = v46;
        v49 = *(v46 + 16);
        v48 = *(v46 + 24);
        v50 = v47;
        v51 = v19;
        if (v49 >= v48 >> 1)
        {
          sub_21E1D5B3C((v48 > 1), v49 + 1, 1);
          v46 = v82;
        }

        *(v46 + 16) = v49 + 1;
        v52 = v46 + 16 * v49;
        *(v52 + 32) = v50;
        *(v52 + 40) = v51;
        v45 += 8;
      }

      while (v45 != 128);
      v53 = objc_opt_self();
      sub_21E1C868C(0, &qword_27CEB9330);
      swift_setDeallocating();
      sub_21E23BB80();
      sub_21E234520(v46, &qword_27CEB9340, &unk_21E356390, sub_21E23BECC);
      v54 = sub_21E236368();
      v55 = [v53 reconstituteAttributedStringFromFormattedString:v44 formatOptions:v54 attributes:0];

      *(&v83 + 1) = sub_21E1C868C(0, &qword_27CEB9338);
      *&v82 = v55;
      v56 = v55;
      v80(&v82, 0);
    }

    else
    {
      sub_21E343100();
      v68 = sub_21E3434C0();
      v69 = sub_21E343B60();
      if (os_log_type_enabled(v68, v69))
      {
        v70 = swift_slowAlloc();
        *v70 = 0;
        _os_log_impl(&dword_21E1BD000, v68, v69, "Coercion to NSAttributedString failed because the WFGeneratedContentItem had no textResponse", v70, 2u);
        MEMORY[0x223D57360](v70, -1, -1);
      }

      (*(v8 + 8))(v13, v7);
      v82 = 0u;
      v83 = 0u;
      a3(&v82, 0);
    }
  }

  else
  {
    sub_21E343100();
    v57 = a1;
    v58 = sub_21E3434C0();
    v59 = sub_21E343B60();

    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v81 = a4;
      v62 = v61;
      *&v82 = v61;
      *v60 = 136315138;
      swift_getObjectType();
      v63 = sub_21E3440B0();
      v65 = sub_21E1C80B4(v63, v64, &v82);

      *(v60 + 4) = v65;
      _os_log_impl(&dword_21E1BD000, v58, v59, "Coercion to NSAttributedString failed. Wanted a WFGeneratedContentItem, got %s", v60, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v62);
      MEMORY[0x223D57360](v62, -1, -1);
      MEMORY[0x223D57360](v60, -1, -1);
    }

    (*(v8 + 8))(v11, v7);
    sub_21E1E8290();
    v82 = 0u;
    v83 = 0u;
    v66 = swift_allocError();
    *v67 = 4;
    v67[56] = 0;
    a3(&v82, v66);
  }

  return sub_21E1C377C(&v82, &unk_27CEB9230);
}

id sub_21E236368()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  type metadata accessor for TCFormatFeature(0);
  sub_21E1C868C(0, &qword_27CEB92B8);
  sub_21E23C98C(&qword_27CEB8068, type metadata accessor for TCFormatFeature);
  v1 = sub_21E343730();

  v2 = [v0 initWithOptions_];

  return v2;
}

void sub_21E23643C(uint64_t a1, void *a2, void *a3, void *aBlock)
{
  v6 = *(a1 + 32);
  v7 = _Block_copy(aBlock);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;

  v10 = a2;
  v9 = a3;
  v6(v10, v9, sub_21E23CB88, v8);
}

void sub_21E236510(uint64_t a1, void *a2, uint64_t a3)
{
  sub_21E23CD60(a1, v11, &unk_27CEB9230);
  v5 = v12;
  if (!v12)
  {
    v10 = 0;
    if (!a2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v6 = __swift_project_boxed_opaque_existential_1(v11, v12);
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9);
  v10 = sub_21E343F70();
  (*(v7 + 8))(v9, v5);
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  if (a2)
  {
LABEL_3:
    a2 = sub_21E342B40();
  }

LABEL_4:
  (*(a3 + 16))(a3, v10, a2);
  swift_unknownObjectRelease();
}

uint64_t sub_21E2366AC(void *a1, uint64_t a2, void (*a3)(__int128 *, void *), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v46 = a6;
  v47 = a7;
  v50 = a5;
  v51 = a3;
  v52 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8190);
  MEMORY[0x28223BE20](v8 - 8);
  v45 = &v44 - v9;
  v10 = sub_21E342C60();
  v48 = *(v10 - 8);
  v49 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_21E3434D0();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v44 - v18;
  sub_21E343100();
  v20 = sub_21E3434C0();
  v21 = sub_21E343B50();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_21E1BD000, v20, v21, "Running text coercion handler", v22, 2u);
    MEMORY[0x223D57360](v22, -1, -1);
  }

  v23 = *(v14 + 8);
  v23(v19, v13);
  objc_opt_self();
  v24 = swift_dynamicCastObjCClass();
  if (!v24)
  {
    sub_21E343100();
    v28 = sub_21E3434C0();
    v29 = sub_21E343B60();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_21E1BD000, v28, v29, "Error getting WFGeneratedContentItem from text coercion handler, throwing an error... ", v30, 2u);
      MEMORY[0x223D57360](v30, -1, -1);
    }

    v23(v17, v13);
    sub_21E1E8290();
    v54 = 0u;
    v55 = 0u;
    v31 = swift_allocError();
    *v32 = 5;
    v32[56] = 0;
    v51(&v54, v31);

    return sub_21E1C377C(&v54, &unk_27CEB9230);
  }

  v25 = v24;
  v26 = a1;
  v27 = [v25 response];
  v53 = v27;
  swift_getAtKeyPath();

  if (*(&v54 + 1))
  {
    *(&v55 + 1) = MEMORY[0x277D837D0];

    v51(&v54, 0);

LABEL_6:

    return sub_21E1C377C(&v54, &unk_27CEB9230);
  }

  if (qword_27CEB7FE8 != -1)
  {
    swift_once();
  }

  v34 = [v25 cachingIdentifier];
  sub_21E342C50();

  sub_21E342C40();
  (*(v48 + 8))(v12, v49);
  v35 = sub_21E23B9F0();

  if (v35)
  {
    v53 = v35;
    v36 = v35;
    swift_getAtKeyPath();

    if (*(&v54 + 1))
    {
      *(&v55 + 1) = MEMORY[0x277D837D0];

      v51(&v54, 0);

      goto LABEL_6;
    }
  }

  v37 = [v25 response];
  v38 = [v37 responseDataModel];

  v39 = sub_21E343AB0();
  v40 = v45;
  __swift_storeEnumTagSinglePayload(v45, 1, 1, v39);
  v41 = swift_allocObject();
  v41[2] = 0;
  v41[3] = 0;
  v42 = v46;
  v41[4] = v38;
  v41[5] = v42;
  v41[6] = v47;
  v41[7] = v25;
  v43 = v52;
  v41[8] = v51;
  v41[9] = v43;

  sub_21E239E94(0, 0, v40, &unk_21E356538, v41);
}

uint64_t sub_21E236C70(void *a1, uint64_t a2, void (*a3)(__int128 *, void *), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v48 = a6;
  v49 = a7;
  v52 = a5;
  v53 = a3;
  v54 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8190);
  MEMORY[0x28223BE20](v8 - 8);
  v47 = &v46 - v9;
  v10 = sub_21E342C60();
  v50 = *(v10 - 8);
  v51 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_21E3434D0();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v46 - v18;
  sub_21E343100();
  v20 = sub_21E3434C0();
  v21 = sub_21E343B50();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_21E1BD000, v20, v21, "Running text coercion handler", v22, 2u);
    MEMORY[0x223D57360](v22, -1, -1);
  }

  v23 = *(v14 + 8);
  v23(v19, v13);
  objc_opt_self();
  v24 = swift_dynamicCastObjCClass();
  if (!v24)
  {
    sub_21E343100();
    v29 = sub_21E3434C0();
    v30 = sub_21E343B60();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_21E1BD000, v29, v30, "Error getting WFGeneratedContentItem from text coercion handler, throwing an error... ", v31, 2u);
      MEMORY[0x223D57360](v31, -1, -1);
    }

    v23(v17, v13);
    sub_21E1E8290();
    v56 = 0u;
    v57 = 0u;
    v32 = swift_allocError();
    *v33 = 5;
    v33[56] = 0;
    v53(&v56, v32);

    return sub_21E1C377C(&v56, &unk_27CEB9230);
  }

  v25 = v24;
  v26 = a1;
  v27 = [v25 response];
  *&v56 = v27;
  swift_getAtKeyPath();

  v28 = v55;
  if (v55)
  {
    *(&v57 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB92E0);
    *&v56 = v28;

    v53(&v56, 0);

LABEL_6:

    return sub_21E1C377C(&v56, &unk_27CEB9230);
  }

  if (qword_27CEB7FE8 != -1)
  {
    swift_once();
  }

  v35 = [v25 cachingIdentifier];
  sub_21E342C50();

  sub_21E342C40();
  (*(v50 + 8))(v12, v51);
  v36 = sub_21E23B9F0();

  if (v36)
  {
    *&v56 = v36;
    v37 = v36;
    swift_getAtKeyPath();

    v38 = v55;
    if (v55)
    {
      *(&v57 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB92E0);
      *&v56 = v38;

      v53(&v56, 0);

      goto LABEL_6;
    }
  }

  v39 = [v25 response];
  v40 = [v39 responseDataModel];

  v41 = sub_21E343AB0();
  v42 = v47;
  __swift_storeEnumTagSinglePayload(v47, 1, 1, v41);
  v43 = swift_allocObject();
  v43[2] = 0;
  v43[3] = 0;
  v44 = v48;
  v43[4] = v40;
  v43[5] = v44;
  v43[6] = v49;
  v43[7] = v25;
  v45 = v54;
  v43[8] = v53;
  v43[9] = v45;

  sub_21E239E94(0, 0, v42, &unk_21E3564E0, v43);
}

uint64_t sub_21E237244(void *a1, uint64_t a2, void (*a3)(__int128 *, void *), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v50 = a6;
  v51 = a7;
  v54 = a5;
  v55 = a3;
  v56 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8190);
  MEMORY[0x28223BE20](v8 - 8);
  v49 = &v48 - v9;
  v10 = sub_21E342C60();
  v52 = *(v10 - 8);
  v53 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_21E3434D0();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v48 - v18;
  sub_21E343100();
  v20 = sub_21E3434C0();
  v21 = sub_21E343B50();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_21E1BD000, v20, v21, "Running text coercion handler", v22, 2u);
    MEMORY[0x223D57360](v22, -1, -1);
  }

  v23 = *(v14 + 8);
  v23(v19, v13);
  objc_opt_self();
  v24 = swift_dynamicCastObjCClass();
  if (!v24)
  {
    sub_21E343100();
    v30 = sub_21E3434C0();
    v31 = sub_21E343B60();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_21E1BD000, v30, v31, "Error getting WFGeneratedContentItem from text coercion handler, throwing an error... ", v32, 2u);
      MEMORY[0x223D57360](v32, -1, -1);
    }

    v23(v17, v13);
    sub_21E1E8290();
    v58 = 0u;
    v59 = 0u;
    v33 = swift_allocError();
    *v34 = 5;
    v34[56] = 0;
    v55(&v58, v33);

    return sub_21E1C377C(&v58, &unk_27CEB9230);
  }

  v25 = v24;
  v26 = a1;
  v27 = [v25 response];
  *&v58 = v27;
  swift_getAtKeyPath();

  v28 = v57;
  if (v57)
  {
    *(&v59 + 1) = sub_21E1C868C(0, &qword_27CEB92B8);
    *&v58 = v28;
    v29 = v28;
    v55(&v58, 0);

    return sub_21E1C377C(&v58, &unk_27CEB9230);
  }

  if (qword_27CEB7FE8 != -1)
  {
    swift_once();
  }

  v36 = [v25 cachingIdentifier];
  sub_21E342C50();

  sub_21E342C40();
  (*(v52 + 8))(v12, v53);
  v37 = sub_21E23B9F0();

  if (v37)
  {
    *&v58 = v37;
    v38 = v37;
    swift_getAtKeyPath();

    v39 = v57;
    if (v57)
    {
      *(&v59 + 1) = sub_21E1C868C(0, &qword_27CEB92B8);
      *&v58 = v39;
      v40 = v39;
      v55(&v58, 0);

      return sub_21E1C377C(&v58, &unk_27CEB9230);
    }
  }

  v41 = [v25 response];
  v42 = [v41 responseDataModel];

  v43 = sub_21E343AB0();
  v44 = v49;
  __swift_storeEnumTagSinglePayload(v49, 1, 1, v43);
  v45 = swift_allocObject();
  v45[2] = 0;
  v45[3] = 0;
  v46 = v50;
  v45[4] = v42;
  v45[5] = v46;
  v45[6] = v51;
  v45[7] = v25;
  v47 = v56;
  v45[8] = v55;
  v45[9] = v47;

  sub_21E239E94(0, 0, v44, &unk_21E356450, v45);
}

uint64_t sub_21E23781C(void *a1, uint64_t a2, void (*a3)(__int128 *, void *), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v71 = a6;
  v72 = a7;
  v77 = a5;
  v79 = a3;
  v80 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8190);
  MEMORY[0x28223BE20](v8 - 8);
  v70 = &v67 - v9;
  v10 = sub_21E342C60();
  v74 = *(v10 - 8);
  v75 = v10;
  MEMORY[0x28223BE20](v10);
  v73 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB92A8);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v69 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v67 - v15;
  v78 = sub_21E342C30();
  v76 = *(v78 - 8);
  v17 = MEMORY[0x28223BE20](v78);
  v68 = &v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v67 - v19;
  v21 = sub_21E3434D0();
  v22 = *(v21 - 8);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v67 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = &v67 - v26;
  sub_21E343100();
  v28 = sub_21E3434C0();
  v29 = sub_21E343B50();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v67 = v22;
    v31 = v25;
    v32 = v21;
    v33 = v16;
    v34 = v20;
    v35 = a1;
    v36 = v30;
    *v30 = 0;
    _os_log_impl(&dword_21E1BD000, v28, v29, "Running text coercion handler", v30, 2u);
    v37 = v36;
    a1 = v35;
    v20 = v34;
    v16 = v33;
    v21 = v32;
    v25 = v31;
    v22 = v67;
    MEMORY[0x223D57360](v37, -1, -1);
  }

  v38 = *(v22 + 8);
  v38(v27, v21);
  objc_opt_self();
  v39 = swift_dynamicCastObjCClass();
  if (v39)
  {
    v40 = v39;
    v41 = a1;
    v42 = [v40 response];
    *&v81 = v42;
    swift_getAtKeyPath();

    v43 = v78;
    if (__swift_getEnumTagSinglePayload(v16, 1, v78) == 1)
    {
      sub_21E1C377C(v16, &qword_27CEB92A8);
      if (qword_27CEB7FE8 != -1)
      {
        swift_once();
      }

      v44 = [v40 cachingIdentifier];
      v45 = v73;
      sub_21E342C50();

      sub_21E342C40();
      (*(v74 + 8))(v45, v75);
      v46 = sub_21E23B9F0();

      if (!v46)
      {
        goto LABEL_10;
      }

      *&v81 = v46;
      v47 = v46;
      v48 = v69;
      swift_getAtKeyPath();

      if (__swift_getEnumTagSinglePayload(v48, 1, v43) == 1)
      {

        sub_21E1C377C(v48, &qword_27CEB92A8);
LABEL_10:
        v49 = [v40 response];
        v50 = [v49 responseDataModel];

        v51 = sub_21E343AB0();
        v52 = v70;
        __swift_storeEnumTagSinglePayload(v70, 1, 1, v51);
        v53 = swift_allocObject();
        v53[2] = 0;
        v53[3] = 0;
        v54 = v71;
        v53[4] = v50;
        v53[5] = v54;
        v53[6] = v72;
        v53[7] = v40;
        v55 = v80;
        v53[8] = v79;
        v53[9] = v55;

        sub_21E239E94(0, 0, v52, &unk_21E3563E8, v53);
      }

      v64 = v76;
      v65 = v68;
      (*(v76 + 32))(v68, v48, v43);
      *(&v82 + 1) = v43;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v81);
      (*(v64 + 16))(boxed_opaque_existential_1, v65, v43);
      v79(&v81, 0);

      (*(v64 + 8))(v65, v43);
    }

    else
    {
      v62 = v76;
      (*(v76 + 32))(v20, v16, v43);
      *(&v82 + 1) = v43;
      v63 = __swift_allocate_boxed_opaque_existential_1(&v81);
      (*(v62 + 16))(v63, v20, v43);
      v79(&v81, 0);

      (*(v62 + 8))(v20, v43);
    }
  }

  else
  {
    sub_21E343100();
    v57 = sub_21E3434C0();
    v58 = sub_21E343B60();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&dword_21E1BD000, v57, v58, "Error getting WFGeneratedContentItem from text coercion handler, throwing an error... ", v59, 2u);
      MEMORY[0x223D57360](v59, -1, -1);
    }

    v38(v25, v21);
    sub_21E1E8290();
    v81 = 0u;
    v82 = 0u;
    v60 = swift_allocError();
    *v61 = 5;
    v61[56] = 0;
    v79(&v81, v60);
  }

  return sub_21E1C377C(&v81, &unk_27CEB9230);
}

uint64_t sub_21E238000(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[15] = a8;
  v8[16] = v16;
  v8[13] = a6;
  v8[14] = a7;
  v8[12] = a5;
  v10 = sub_21E3434D0();
  v8[17] = v10;
  v8[18] = *(v10 - 8);
  v8[19] = swift_task_alloc();
  v11 = sub_21E342C60();
  v8[20] = v11;
  v8[21] = *(v11 - 8);
  v8[22] = swift_task_alloc();
  objc_allocWithZone(type metadata accessor for WFGeneratedResponseFactory());
  v12 = a4;
  v13 = swift_task_alloc();
  v8[23] = v13;
  *v13 = v8;
  v13[1] = sub_21E23818C;

  return WFGeneratedResponseFactory.init(dataModel:)(v12);
}

uint64_t sub_21E23818C()
{
  OUTLINED_FUNCTION_212();
  v3 = v2;
  OUTLINED_FUNCTION_22();
  v5 = v4;
  OUTLINED_FUNCTION_42_1();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v8 = v7;
  v5[24] = v3;
  v5[25] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_5_2();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_0_11();
    swift_task_alloc();
    OUTLINED_FUNCTION_50_3();
    v5[26] = v12;
    *v12 = v13;
    v12[1] = sub_21E238320;
    v14 = OUTLINED_FUNCTION_37_4();

    return v15(v14);
  }
}

uint64_t sub_21E238320()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_3_3();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 216) = v4;
  *(v2 + 224) = v0;

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_21E238424(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_107_0();
  OUTLINED_FUNCTION_240();
  v11 = v10[25];
  sub_21E343100();
  v12 = v11;
  v13 = sub_21E3434C0();
  sub_21E343B60();
  OUTLINED_FUNCTION_338();
  if (OUTLINED_FUNCTION_46_4())
  {
    OUTLINED_FUNCTION_34();
    v14 = OUTLINED_FUNCTION_205();
    OUTLINED_FUNCTION_340(5.7779e-34);
    v15 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_241(v15);
    OUTLINED_FUNCTION_12_7(&dword_21E1BD000, v16, v17, "WFGeneratedContentItem error lazy executing prompt: %@");
    sub_21E1C377C(v14, &qword_27CEB80E0);
    OUTLINED_FUNCTION_21_6();
    OUTLINED_FUNCTION_25_5();
  }

  v18 = v10[19];
  v19 = v10[15];

  v20 = OUTLINED_FUNCTION_8_6();
  v21(v20);
  OUTLINED_FUNCTION_6_8();
  v22 = OUTLINED_FUNCTION_3_0();
  v19(v22);

  sub_21E1C377C(v18, &unk_27CEB9230);

  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_104_0();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10);
}

uint64_t sub_21E23857C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_272();
  OUTLINED_FUNCTION_279();
  if (qword_27CEB7FE8 != -1)
  {
    OUTLINED_FUNCTION_1_11();
  }

  v13 = *(v12 + 216);
  v28 = *(v12 + 192);
  v14 = *(v12 + 120);
  v15 = [*(v12 + 112) cachingIdentifier];
  sub_21E342C50();

  sub_21E342C40();
  v16 = OUTLINED_FUNCTION_14_8();
  v17(v16);
  OUTLINED_FUNCTION_32_4();

  *(v12 + 72) = MEMORY[0x277D837D0];
  v18 = *(v12 + 88);
  *(v12 + 48) = *(v12 + 80);
  *(v12 + 56) = v18;

  v14(v12 + 48, 0);

  sub_21E1C377C(v12 + 48, &unk_27CEB9230);

  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_189();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, v28, a10, a11, a12);
}

uint64_t sub_21E2386D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_107_0();
  OUTLINED_FUNCTION_240();

  v11 = *(v10 + 224);
  sub_21E343100();
  v12 = v11;
  v13 = sub_21E3434C0();
  sub_21E343B60();
  OUTLINED_FUNCTION_338();
  if (OUTLINED_FUNCTION_46_4())
  {
    OUTLINED_FUNCTION_34();
    v14 = OUTLINED_FUNCTION_205();
    OUTLINED_FUNCTION_340(5.7779e-34);
    v15 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_241(v15);
    OUTLINED_FUNCTION_12_7(&dword_21E1BD000, v16, v17, "WFGeneratedContentItem error lazy executing prompt: %@");
    sub_21E1C377C(v14, &qword_27CEB80E0);
    OUTLINED_FUNCTION_21_6();
    OUTLINED_FUNCTION_25_5();
  }

  v18 = *(v10 + 152);
  v19 = *(v10 + 120);

  v20 = OUTLINED_FUNCTION_8_6();
  v21(v20);
  OUTLINED_FUNCTION_6_8();
  v22 = OUTLINED_FUNCTION_3_0();
  v19(v22);

  sub_21E1C377C(v18, &unk_27CEB9230);

  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_104_0();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10);
}

uint64_t sub_21E238834(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[14] = a8;
  v8[15] = v16;
  v8[12] = a6;
  v8[13] = a7;
  v8[11] = a5;
  v10 = sub_21E3434D0();
  v8[16] = v10;
  v8[17] = *(v10 - 8);
  v8[18] = swift_task_alloc();
  v11 = sub_21E342C60();
  v8[19] = v11;
  v8[20] = *(v11 - 8);
  v8[21] = swift_task_alloc();
  objc_allocWithZone(type metadata accessor for WFGeneratedResponseFactory());
  v12 = a4;
  v13 = swift_task_alloc();
  v8[22] = v13;
  *v13 = v8;
  v13[1] = sub_21E2389C0;

  return WFGeneratedResponseFactory.init(dataModel:)(v12);
}

uint64_t sub_21E2389C0()
{
  OUTLINED_FUNCTION_212();
  v3 = v2;
  OUTLINED_FUNCTION_22();
  v5 = v4;
  OUTLINED_FUNCTION_42_1();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v8 = v7;
  v5[23] = v3;
  v5[24] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_5_2();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_0_11();
    swift_task_alloc();
    OUTLINED_FUNCTION_50_3();
    v5[25] = v12;
    *v12 = v13;
    v12[1] = sub_21E238B54;
    v14 = OUTLINED_FUNCTION_37_4();

    return v15(v14);
  }
}

uint64_t sub_21E238B54()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_3_3();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 208) = v4;
  *(v2 + 216) = v0;

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_21E238C58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_107_0();
  OUTLINED_FUNCTION_240();
  v11 = v10[24];
  sub_21E343100();
  v12 = v11;
  v13 = sub_21E3434C0();
  sub_21E343B60();
  OUTLINED_FUNCTION_338();
  if (OUTLINED_FUNCTION_46_4())
  {
    OUTLINED_FUNCTION_34();
    v14 = OUTLINED_FUNCTION_205();
    OUTLINED_FUNCTION_340(5.7779e-34);
    v15 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_241(v15);
    OUTLINED_FUNCTION_12_7(&dword_21E1BD000, v16, v17, "WFGeneratedContentItem error lazy executing prompt: %@");
    sub_21E1C377C(v14, &qword_27CEB80E0);
    OUTLINED_FUNCTION_21_6();
    OUTLINED_FUNCTION_25_5();
  }

  v18 = v10[18];
  v19 = v10[14];

  v20 = OUTLINED_FUNCTION_8_6();
  v21(v20);
  OUTLINED_FUNCTION_6_8();
  v22 = OUTLINED_FUNCTION_3_0();
  v19(v22);

  sub_21E1C377C(v18, &unk_27CEB9230);
  OUTLINED_FUNCTION_54_3();

  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_104_0();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10);
}

uint64_t sub_21E238DA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_272();
  OUTLINED_FUNCTION_279();
  if (qword_27CEB7FE8 != -1)
  {
    OUTLINED_FUNCTION_1_11();
  }

  v15 = [OUTLINED_FUNCTION_27_5() cachingIdentifier];
  sub_21E342C50();

  sub_21E342C40();
  v16 = OUTLINED_FUNCTION_14_8();
  v17(v16);
  OUTLINED_FUNCTION_32_4();

  v13[9] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB92E0);
  v13[6] = v13[10];

  v14(v13 + 6, 0);

  sub_21E1C377C((v13 + 6), &unk_27CEB9230);
  OUTLINED_FUNCTION_54_3();

  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_189();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
}

uint64_t sub_21E238EE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_107_0();
  OUTLINED_FUNCTION_240();

  v11 = *(v10 + 216);
  sub_21E343100();
  v12 = v11;
  v13 = sub_21E3434C0();
  sub_21E343B60();
  OUTLINED_FUNCTION_338();
  if (OUTLINED_FUNCTION_46_4())
  {
    OUTLINED_FUNCTION_34();
    v14 = OUTLINED_FUNCTION_205();
    OUTLINED_FUNCTION_340(5.7779e-34);
    v15 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_241(v15);
    OUTLINED_FUNCTION_12_7(&dword_21E1BD000, v16, v17, "WFGeneratedContentItem error lazy executing prompt: %@");
    sub_21E1C377C(v14, &qword_27CEB80E0);
    OUTLINED_FUNCTION_21_6();
    OUTLINED_FUNCTION_25_5();
  }

  v18 = *(v10 + 144);
  v19 = *(v10 + 112);

  v20 = OUTLINED_FUNCTION_8_6();
  v21(v20);
  OUTLINED_FUNCTION_6_8();
  v22 = OUTLINED_FUNCTION_3_0();
  v19(v22);

  sub_21E1C377C(v18, &unk_27CEB9230);
  OUTLINED_FUNCTION_54_3();

  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_104_0();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10);
}

uint64_t sub_21E239040(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[14] = a8;
  v8[15] = v16;
  v8[12] = a6;
  v8[13] = a7;
  v8[11] = a5;
  v10 = sub_21E3434D0();
  v8[16] = v10;
  v8[17] = *(v10 - 8);
  v8[18] = swift_task_alloc();
  v11 = sub_21E342C60();
  v8[19] = v11;
  v8[20] = *(v11 - 8);
  v8[21] = swift_task_alloc();
  objc_allocWithZone(type metadata accessor for WFGeneratedResponseFactory());
  v12 = a4;
  v13 = swift_task_alloc();
  v8[22] = v13;
  *v13 = v8;
  v13[1] = sub_21E2391CC;

  return WFGeneratedResponseFactory.init(dataModel:)(v12);
}

uint64_t sub_21E2391CC()
{
  OUTLINED_FUNCTION_212();
  v3 = v2;
  OUTLINED_FUNCTION_22();
  v5 = v4;
  OUTLINED_FUNCTION_42_1();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v8 = v7;
  v5[23] = v3;
  v5[24] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_5_2();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_0_11();
    swift_task_alloc();
    OUTLINED_FUNCTION_50_3();
    v5[25] = v12;
    *v12 = v13;
    v12[1] = sub_21E239360;
    v14 = OUTLINED_FUNCTION_37_4();

    return v15(v14);
  }
}

uint64_t sub_21E239360()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_3_3();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 208) = v4;
  *(v2 + 216) = v0;

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_21E239464(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_272();
  OUTLINED_FUNCTION_279();
  if (qword_27CEB7FE8 != -1)
  {
    OUTLINED_FUNCTION_1_11();
  }

  v15 = [OUTLINED_FUNCTION_27_5() cachingIdentifier];
  sub_21E342C50();

  sub_21E342C40();
  v16 = OUTLINED_FUNCTION_14_8();
  v17(v16);
  OUTLINED_FUNCTION_32_4();

  v13[9] = sub_21E1C868C(0, &qword_27CEB92B8);
  v18 = v13[10];
  v13[6] = v18;
  v19 = v18;
  v14(v13 + 6, 0);

  sub_21E1C377C((v13 + 6), &unk_27CEB9230);
  OUTLINED_FUNCTION_54_3();

  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_189();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12);
}

uint64_t sub_21E2395A4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[13] = a8;
  v8[14] = v17;
  v8[11] = a6;
  v8[12] = a7;
  v8[10] = a5;
  v10 = sub_21E3434D0();
  v8[15] = v10;
  v8[16] = *(v10 - 8);
  v8[17] = swift_task_alloc();
  v11 = sub_21E342C60();
  v8[18] = v11;
  v8[19] = *(v11 - 8);
  v8[20] = swift_task_alloc();
  v12 = sub_21E342C30();
  v8[21] = v12;
  v8[22] = *(v12 - 8);
  v8[23] = swift_task_alloc();
  objc_allocWithZone(type metadata accessor for WFGeneratedResponseFactory());
  v13 = a4;
  v14 = swift_task_alloc();
  v8[24] = v14;
  *v14 = v8;
  v14[1] = sub_21E23978C;

  return WFGeneratedResponseFactory.init(dataModel:)(v13);
}

uint64_t sub_21E23978C()
{
  OUTLINED_FUNCTION_212();
  v3 = v2;
  OUTLINED_FUNCTION_22();
  v5 = v4;
  OUTLINED_FUNCTION_42_1();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v8 = v7;
  v5[25] = v3;
  v5[26] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_5_2();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_0_11();
    v18 = v12;
    swift_task_alloc();
    OUTLINED_FUNCTION_50_3();
    v5[27] = v13;
    *v13 = v14;
    v13[1] = sub_21E239928;
    v15 = v5[23];
    v16 = v5[12];

    return v18(v15, v3, v16);
  }
}

uint64_t sub_21E239928()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_3_3();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 224) = v4;
  *(v2 + 232) = v0;

  OUTLINED_FUNCTION_23();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_21E239A2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_107_0();
  OUTLINED_FUNCTION_240();
  v11 = v10[26];
  sub_21E343100();
  v12 = v11;
  v13 = sub_21E3434C0();
  sub_21E343B60();
  OUTLINED_FUNCTION_338();
  if (OUTLINED_FUNCTION_46_4())
  {
    OUTLINED_FUNCTION_34();
    v14 = OUTLINED_FUNCTION_205();
    OUTLINED_FUNCTION_340(5.7779e-34);
    v15 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_241(v15);
    OUTLINED_FUNCTION_12_7(&dword_21E1BD000, v16, v17, "WFGeneratedContentItem error lazy executing prompt: %@");
    sub_21E1C377C(v14, &qword_27CEB80E0);
    OUTLINED_FUNCTION_21_6();
    OUTLINED_FUNCTION_25_5();
  }

  v18 = v10[17];
  v19 = v10[13];

  v20 = OUTLINED_FUNCTION_8_6();
  v21(v20);
  OUTLINED_FUNCTION_6_8();
  v22 = OUTLINED_FUNCTION_3_0();
  v19(v22);

  sub_21E1C377C(v18, &unk_27CEB9230);
  OUTLINED_FUNCTION_45_2();

  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_104_0();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10);
}

uint64_t sub_21E239B84()
{
  if (qword_27CEB7FE8 != -1)
  {
    OUTLINED_FUNCTION_1_11();
  }

  v1 = *(v0 + 224);
  v2 = *(v0 + 176);
  v3 = *(v0 + 160);
  v4 = *(v0 + 168);
  v6 = *(v0 + 144);
  v5 = *(v0 + 152);
  v18 = *(v0 + 200);
  v16 = *(v0 + 184);
  v17 = *(v0 + 104);
  v7 = [*(v0 + 96) cachingIdentifier];
  sub_21E342C50();

  v8 = sub_21E342C40();
  v10 = v9;
  (*(v5 + 8))(v3, v6);
  sub_21E23B1A8(v8, v10, v1);

  *(v0 + 72) = v4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 48));
  (*(v2 + 16))(boxed_opaque_existential_1, v16, v4);
  v17(v0 + 48, 0);

  v12 = OUTLINED_FUNCTION_7();
  v13(v12);
  sub_21E1C377C(v0 + 48, &unk_27CEB9230);
  OUTLINED_FUNCTION_45_2();

  OUTLINED_FUNCTION_8();

  return v14();
}

uint64_t sub_21E239D34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_107_0();
  OUTLINED_FUNCTION_240();

  v11 = *(v10 + 232);
  sub_21E343100();
  v12 = v11;
  v13 = sub_21E3434C0();
  sub_21E343B60();
  OUTLINED_FUNCTION_338();
  if (OUTLINED_FUNCTION_46_4())
  {
    OUTLINED_FUNCTION_34();
    v14 = OUTLINED_FUNCTION_205();
    OUTLINED_FUNCTION_340(5.7779e-34);
    v15 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_241(v15);
    OUTLINED_FUNCTION_12_7(&dword_21E1BD000, v16, v17, "WFGeneratedContentItem error lazy executing prompt: %@");
    sub_21E1C377C(v14, &qword_27CEB80E0);
    OUTLINED_FUNCTION_21_6();
    OUTLINED_FUNCTION_25_5();
  }

  v18 = *(v10 + 136);
  v19 = *(v10 + 104);

  v20 = OUTLINED_FUNCTION_8_6();
  v21(v20);
  OUTLINED_FUNCTION_6_8();
  v22 = OUTLINED_FUNCTION_3_0();
  v19(v22);

  sub_21E1C377C(v18, &unk_27CEB9230);
  OUTLINED_FUNCTION_45_2();

  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_104_0();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10);
}

uint64_t sub_21E239E94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8190);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v24 - v10;
  sub_21E23CD60(a3, v24 - v10, &qword_27CEB8190);
  v12 = sub_21E343AB0();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v12);

  if (EnumTagSinglePayload == 1)
  {
    sub_21E1C377C(v11, &qword_27CEB8190);
  }

  else
  {
    sub_21E343AA0();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_21E343A50();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_21E343850() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      else
      {
        v20 = 0;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v22 = swift_task_create();

      sub_21E1C377C(a3, &qword_27CEB8190);

      return v22;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_21E1C377C(a3, &qword_27CEB8190);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_21E23A178(void *a1)
{
  sub_21E342C60();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_0_1();
  v3 = sub_21E23CAA0([a1 response]);
  if (v4)
  {
    return v3;
  }

  if (qword_27CEB7FE8 != -1)
  {
    OUTLINED_FUNCTION_1_11();
  }

  v6 = [a1 cachingIdentifier];
  sub_21E342C50();

  sub_21E342C40();
  v7 = OUTLINED_FUNCTION_60_1();
  v8(v7);
  v9 = sub_21E23B9F0();

  if (!v9)
  {
    return 0;
  }

  v5 = sub_21E23CB10(v9, &selRef_rawResponse);
  if (v10)
  {
    v5 = sub_21E343880();
  }

  return v5;
}

uint64_t sub_21E23A394(void *a1)
{
  v1 = [a1 response];
  v2 = [v1 responseDataModel];

  v3 = *&v2[OBJC_IVAR____TtC10ContentKit35WFGeneratedResponseFactoryDataModel_conversation];
  v4 = sub_21E1D370C();

  return v4;
}

uint64_t sub_21E23A43C(void *a1)
{
  v22 = sub_21E3434D0();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_0_1();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8260);
  MEMORY[0x28223BE20](v4 - 8);
  OUTLINED_FUNCTION_49_4();
  sub_21E343610();
  OUTLINED_FUNCTION_5();
  v21 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_0_1();
  v7 = [a1 response];
  v8 = [v7 responseDataModel];

  v9 = v8[OBJC_IVAR____TtC10ContentKit35WFGeneratedResponseFactoryDataModel_model];
  if (v9)
  {
    if (v9 == 1)
    {
      v10 = type metadata accessor for WFChatGPTModel();
      v11 = swift_allocObject();
      *(v11 + 16) = 1;
      v12 = &protocol witness table for WFChatGPTModel;
    }

    else
    {
      v10 = type metadata accessor for WFAFMDevice3BModel();
      v11 = swift_allocObject();
      v12 = &protocol witness table for WFAFMDevice3BModel;
    }
  }

  else
  {
    v10 = type metadata accessor for WFAFMInstructServerV1Model();
    v11 = swift_allocObject();
    v12 = &protocol witness table for WFAFMInstructServerV1Model;
  }

  v23[3] = v10;
  v23[4] = v12;
  v23[0] = v11;
  v13 = [a1 response];
  v14 = [v13 responseDataModel];

  v15 = *&v14[OBJC_IVAR____TtC10ContentKit35WFGeneratedResponseFactoryDataModel_conversation];
  v16 = sub_21E342CA0();
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v16);
  sub_21E1D3A90();
  sub_21E1C377C(v1, &qword_27CEB8260);

  sub_21E343620();
  sub_21E23C98C(&qword_27CEB9320, MEMORY[0x277D42E30]);
  sub_21E343760();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEB8670);
  sub_21E343760();
  v18 = sub_21E3435A0();
  v19 = OUTLINED_FUNCTION_51_2();
  v20(v19);

  __swift_destroy_boxed_opaque_existential_1Tm(v23);
  return v18;
}

id sub_21E23A924(uint64_t a1, uint64_t a2, void *a3, void (*a4)(void))
{
  v5 = a3;
  a4();

  OUTLINED_FUNCTION_7();
  v6 = sub_21E3437A0();

  return v6;
}

uint64_t sub_21E23A990()
{
  type metadata accessor for WFGeneratedResponseCache();
  swift_allocObject();
  result = sub_21E23AA1C();
  qword_27CEB92E8 = result;
  return result;
}

uint64_t static WFGeneratedResponseCache.shared.getter()
{
  if (qword_27CEB7FE8 != -1)
  {
    OUTLINED_FUNCTION_1_11();
  }
}

uint64_t sub_21E23AA1C()
{
  v1 = sub_21E3434D0();
  v51 = *(v1 - 8);
  v52 = v1;
  v2 = MEMORY[0x28223BE20](v1);
  v49 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v50 = &v49 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8010);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v53 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v49 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v49 - v11;
  v13 = sub_21E342BB0();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v49 - v19;
  MEMORY[0x28223BE20](v18);
  v54 = &v49 - v21;
  v55 = v0;
  v22 = OBJC_IVAR____TtC10ContentKit24WFGeneratedResponseCache_cacheURL;
  v23 = 1;
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtC10ContentKit24WFGeneratedResponseCache_cacheURL, 1, 1, v13);
  v24 = [objc_opt_self() sharedAppGroupDirectoryURL];
  if (v24)
  {
    v25 = v24;
    sub_21E342B90();

    v23 = 0;
  }

  __swift_storeEnumTagSinglePayload(v10, v23, 1, v13);
  sub_21E23D064(v10, v12);
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    sub_21E1C377C(v12, &qword_27CEB8010);
    v26 = v53;
    __swift_storeEnumTagSinglePayload(v53, 1, 1, v13);
    v27 = v55;
    swift_beginAccess();
    sub_21E23D0D4(v26, v27 + v22);
    swift_endAccess();
    sub_21E1C868C(0, &qword_27CEB92F8);
    *(v27 + 16) = sub_21E343760();
    v28 = v50;
    sub_21E343100();
    v29 = sub_21E3434C0();
    v30 = sub_21E343B60();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_21E1BD000, v29, v30, "Error constructing cache URL, returning empty cache", v31, 2u);
      MEMORY[0x223D57360](v31, -1, -1);
    }

    (*(v51 + 8))(v28, v52);
  }

  else
  {
    sub_21E342B70();
    v32 = *(v14 + 8);
    v32(v12, v13);
    sub_21E342B80();
    v50 = v32;
    v32(v17, v13);
    v33 = v54;
    (*(v14 + 32))(v54, v20, v13);
    v34 = v53;
    (*(v14 + 16))(v53, v33, v13);
    __swift_storeEnumTagSinglePayload(v34, 0, 1, v13);
    v27 = v55;
    swift_beginAccess();
    sub_21E23D0D4(v34, v27 + v22);
    swift_endAccess();
    v35 = objc_opt_self();
    v36 = sub_21E342B60();
    v37 = [v35 fileWithURL:v36 options:0];

    if (v37 && (sub_21E1C868C(0, &qword_27CEB9358), sub_21E1C868C(0, &qword_27CEB8898), sub_21E1C868C(0, &qword_27CEB92F8), v38 = [v37 data], v39 = sub_21E342BF0(), v41 = v40, v38, v48 = sub_21E343BB0(), v37, sub_21E1C99C4(v39, v41), v48 && (v57 = v48, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB9360), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB9368), (swift_dynamicCast() & 1) != 0)))
    {
      (v50)(v54, v13);
      *(v27 + 16) = v56;
    }

    else
    {
      v42 = v49;
      sub_21E343100();
      v43 = sub_21E3434C0();
      v44 = sub_21E343B50();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        *v45 = 0;
        _os_log_impl(&dword_21E1BD000, v43, v44, "File is empty or corrupted, returning empty cache", v45, 2u);
        MEMORY[0x223D57360](v45, -1, -1);
      }

      (*(v51 + 8))(v42, v52);
      sub_21E1C868C(0, &qword_27CEB92F8);
      v46 = sub_21E343760();
      (v50)(v54, v13);
      *(v27 + 16) = v46;
    }
  }

  return v27;
}

uint64_t sub_21E23B1A8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = v3;
  v47[4] = *MEMORY[0x277D85DE8];
  sub_21E3434D0();
  OUTLINED_FUNCTION_5();
  v45 = v10;
  v46 = v9;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_0_1();
  v44 = v12 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8010);
  MEMORY[0x28223BE20](v13 - 8);
  OUTLINED_FUNCTION_49_4();
  v14 = sub_21E342BB0();
  OUTLINED_FUNCTION_5();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_0_1();
  v20 = v19 - v18;
  swift_beginAccess();
  v21 = a3;
  swift_isUniquelyReferenced_nonNull_native();
  v47[0] = *(v5 + 16);
  sub_21E1E362C(v21, a1, a2);
  *(v5 + 16) = v47[0];
  swift_endAccess();
  v22 = OBJC_IVAR____TtC10ContentKit24WFGeneratedResponseCache_cacheURL;
  swift_beginAccess();
  sub_21E23CD60(v5 + v22, v4, &qword_27CEB8010);
  if (__swift_getEnumTagSinglePayload(v4, 1, v14) == 1)
  {
    return sub_21E1C377C(v4, &qword_27CEB8010);
  }

  (*(v16 + 32))(v20, v4, v14);
  v24 = objc_opt_self();

  sub_21E23B684(v25);

  sub_21E1C868C(0, &qword_27CEB8898);
  sub_21E1C868C(0, &qword_27CEB92F8);
  sub_21E23C778();
  v26 = sub_21E343730();

  v47[0] = 0;
  v27 = [v24 archivedDataWithRootObject:v26 requiringSecureCoding:1 error:v47];

  v28 = v47[0];
  if (v27)
  {
    sub_21E342BF0();

    sub_21E342C00();
    v40 = OUTLINED_FUNCTION_36_3();
    v41(v40);
    v42 = OUTLINED_FUNCTION_60_1();
    return sub_21E1C99C4(v42, v43);
  }

  else
  {
    v29 = v28;
    v30 = sub_21E342B50();

    swift_willThrow();
    v31 = OUTLINED_FUNCTION_36_3();
    v32(v31);
    sub_21E343100();
    v33 = v30;
    v34 = sub_21E3434C0();
    v35 = sub_21E343B60();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = OUTLINED_FUNCTION_34();
      v37 = swift_slowAlloc();
      *v36 = 138412290;
      v38 = v30;
      v39 = _swift_stdlib_bridgeErrorToNSError();
      *(v36 + 4) = v39;
      *v37 = v39;
      _os_log_impl(&dword_21E1BD000, v34, v35, "WFGeneratedResponseCache error writing to file: %@", v36, 0xCu);
      sub_21E1C377C(v37, &qword_27CEB80E0);
      MEMORY[0x223D57360](v37, -1, -1);
      MEMORY[0x223D57360](v36, -1, -1);
    }

    else
    {
    }

    return (*(v45 + 8))(v44, v46);
  }
}

void sub_21E23B684(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB9350);
    v2 = sub_21E343E20();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = sub_21E1C868C(0, &qword_27CEB8898);
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;
  if (v3 == MEMORY[0x277D837D0])
  {

    v24 = 0;
    while (v7)
    {
      v25 = v24;
LABEL_30:
      v26 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v27 = *(*(a1 + 56) + 8 * (v26 | (v25 << 6)));

      v28 = v27;
      v29 = sub_21E3437A0();

      v30 = sub_21E1E7908(v29);
      v31 = v30;
      if (v32)
      {
        v33 = *(v2 + 48);
        v34 = *(v33 + 8 * v30);
        *(v33 + 8 * v30) = v29;

        v35 = *(v2 + 56);
        v36 = *(v35 + 8 * v31);
        *(v35 + 8 * v31) = v28;

        v24 = v25;
      }

      else
      {
        v37 = *(v2 + 16);
        if (v37 >= *(v2 + 24))
        {
          goto LABEL_38;
        }

        *(v2 + 64 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v30;
        *(*(v2 + 48) + 8 * v30) = v29;
        *(*(v2 + 56) + 8 * v30) = v28;
        *(v2 + 16) = v37 + 1;
        v24 = v25;
      }
    }

    while (1)
    {
      v25 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v25 >= v8)
      {
LABEL_34:

        return;
      }

      v7 = *(v4 + 8 * v25);
      ++v24;
      if (v7)
      {
        goto LABEL_30;
      }
    }
  }

  else
  {
    v9 = v2 + 64;

    v10 = 0;
    if (v7)
    {
      goto LABEL_13;
    }

    do
    {
LABEL_9:
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v8)
      {
        goto LABEL_34;
      }

      v7 = *(v4 + 8 * v11);
      ++v10;
    }

    while (!v7);
    v10 = v11;
LABEL_13:
    while (1)
    {
      v12 = *(*(a1 + 56) + 8 * (__clz(__rbit64(v7)) | (v10 << 6)));

      v13 = v12;
      v14 = sub_21E3437A0();

      v15 = sub_21E343C50();
      v16 = -1 << *(v2 + 32);
      v17 = v15 & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v9 + 8 * (v17 >> 6))) == 0)
      {
        break;
      }

      v19 = __clz(__rbit64((-1 << v17) & ~*(v9 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_22:
      v7 &= v7 - 1;
      *(v9 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      *(*(v2 + 48) + 8 * v19) = v14;
      *(*(v2 + 56) + 8 * v19) = v13;
      ++*(v2 + 16);
      if (!v7)
      {
        goto LABEL_9;
      }
    }

    v20 = 0;
    v21 = (63 - v16) >> 6;
    while (++v18 != v21 || (v20 & 1) == 0)
    {
      v22 = v18 == v21;
      if (v18 == v21)
      {
        v18 = 0;
      }

      v20 |= v22;
      v23 = *(v9 + 8 * v18);
      if (v23 != -1)
      {
        v19 = __clz(__rbit64(~v23)) + (v18 << 6);
        goto LABEL_22;
      }
    }

LABEL_36:
    __break(1u);
  }

  __break(1u);
LABEL_38:
  __break(1u);
}

void *sub_21E23B9F0()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  if (!*(v1 + 16))
  {
    return 0;
  }

  OUTLINED_FUNCTION_3_0();
  v2 = sub_21E1E76DC();
  if (v3)
  {
    v4 = *(*(v1 + 56) + 8 * v2);
    v5 = v4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t WFGeneratedResponseCache.deinit()
{

  sub_21E1C377C(v0 + OBJC_IVAR____TtC10ContentKit24WFGeneratedResponseCache_cacheURL, &qword_27CEB8010);
  return v0;
}

uint64_t WFGeneratedResponseCache.__deallocating_deinit()
{

  sub_21E1C377C(v0 + OBJC_IVAR____TtC10ContentKit24WFGeneratedResponseCache_cacheURL, &qword_27CEB8010);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_21E23BB3C()
{
  swift_arrayDestroy();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_21E23BB80()
{
  type metadata accessor for TCFormatFeature(0);
  swift_arrayDestroy();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

void sub_21E23BBD4(uint64_t a1, char a2, void *a3)
{
  v4 = 0;
  v27 = *(a1 + 16);
  for (i = (a1 + 64); ; i += 40)
  {
    if (v27 == v4)
    {

      return;
    }

    if (v4 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_21E343FA0();
      __break(1u);
      goto LABEL_22;
    }

    v29 = v4;
    v7 = *(i - 4);
    v6 = *(i - 3);
    v8 = *(i - 2);
    v9 = *(i - 1);
    v30 = *i;
    v10 = *a3;

    v12 = sub_21E1E76DC();
    v13 = v10[2];
    v14 = (v11 & 1) == 0;
    v15 = v13 + v14;
    if (__OFADD__(v13, v14))
    {
      goto LABEL_19;
    }

    v16 = v11;
    if (v10[3] < v15)
    {
      break;
    }

    if (a2)
    {
      if (v11)
      {
        goto LABEL_14;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB9378);
      sub_21E343DB0();
      if (v16)
      {
        goto LABEL_14;
      }
    }

LABEL_11:
    v19 = *a3;
    *(*a3 + 8 * (v12 >> 6) + 64) |= 1 << v12;
    v20 = (v19[6] + 16 * v12);
    *v20 = v7;
    v20[1] = v6;
    v21 = v19[7] + 24 * v12;
    *v21 = v8;
    *(v21 + 8) = v9;
    *(v21 + 16) = v30;
    v22 = v19[2];
    v23 = __OFADD__(v22, 1);
    v24 = v22 + 1;
    if (v23)
    {
      goto LABEL_20;
    }

    v19[2] = v24;
    v4 = v29 + 1;
    a2 = 1;
  }

  sub_21E23C198(v15, a2 & 1);
  v17 = sub_21E1E76DC();
  if ((v16 & 1) != (v18 & 1))
  {
    goto LABEL_21;
  }

  v12 = v17;
  if ((v16 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  v25 = swift_allocError();
  swift_willThrow();
  v26 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEB80E8);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_22:
  sub_21E343D20();
  MEMORY[0x223D55250](0xD00000000000001BLL, 0x800000021E35C0E0);
  sub_21E343D90();
  MEMORY[0x223D55250](39, 0xE100000000000000);
  sub_21E343DD0();
  __break(1u);
}

void sub_21E23BECC(uint64_t a1, char a2, void *a3)
{
  v5 = 0;
  v25 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v25 == v5)
    {

      return;
    }

    if (v5 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      type metadata accessor for TCFormatFeature(0);
      sub_21E343FA0();
      __break(1u);
      goto LABEL_22;
    }

    v7 = *i;
    v8 = *a3;
    v9 = *(i - 1);
    v10 = v7;
    v12 = sub_21E1E787C();
    v13 = v8[2];
    v14 = (v11 & 1) == 0;
    v15 = v13 + v14;
    if (__OFADD__(v13, v14))
    {
      goto LABEL_19;
    }

    v16 = v11;
    if (v8[3] < v15)
    {
      break;
    }

    if (a2)
    {
      if (v11)
      {
        goto LABEL_14;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB9348);
      sub_21E343DB0();
      if (v16)
      {
        goto LABEL_14;
      }
    }

LABEL_11:
    v19 = *a3;
    *(*a3 + 8 * (v12 >> 6) + 64) |= 1 << v12;
    *(v19[6] + 8 * v12) = v9;
    *(v19[7] + 8 * v12) = v10;
    v20 = v19[2];
    v21 = __OFADD__(v20, 1);
    v22 = v20 + 1;
    if (v21)
    {
      goto LABEL_20;
    }

    v19[2] = v22;
    ++v5;
    a2 = 1;
  }

  sub_21E23C454(v15, a2 & 1);
  v17 = sub_21E1E787C();
  if ((v16 & 1) != (v18 & 1))
  {
    goto LABEL_21;
  }

  v12 = v17;
  if ((v16 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  v23 = swift_allocError();
  swift_willThrow();
  v24 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEB80E8);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_22:
  sub_21E343D20();
  MEMORY[0x223D55250](0xD00000000000001BLL, 0x800000021E35C0E0);
  type metadata accessor for TCFormatFeature(0);
  sub_21E343D90();
  MEMORY[0x223D55250](39, 0xE100000000000000);
  sub_21E343DD0();
  __break(1u);
}

uint64_t sub_21E23C198(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB9370);
  v36 = a2;
  result = sub_21E343E10();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_31:

LABEL_32:
    *v3 = v7;
    return result;
  }

  v35 = v5;
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
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_32;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v2;
    if (v34 >= 64)
    {
      sub_21E23C714(0, (v34 + 63) >> 6, v9);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
    goto LABEL_31;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = v15 | (v8 << 6);
    v19 = (*(v5 + 48) + 16 * v18);
    v20 = *v19;
    v21 = v19[1];
    v22 = *(v5 + 56) + 24 * v18;
    v37 = *v22;
    v23 = *(v22 + 16);
    if ((v36 & 1) == 0)
    {
    }

    sub_21E344020();
    sub_21E3438A0();
    result = sub_21E344040();
    v24 = -1 << *(v7 + 32);
    v25 = result & ~v24;
    v26 = v25 >> 6;
    if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
    {
      break;
    }

    v27 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v14 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
    v32 = (*(v7 + 48) + 16 * v27);
    *v32 = v20;
    v32[1] = v21;
    v33 = *(v7 + 56) + 24 * v27;
    *v33 = v37;
    *(v33 + 16) = v23;
    ++*(v7 + 16);
    v5 = v35;
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v28 = 0;
  v29 = (63 - v24) >> 6;
  while (++v26 != v29 || (v28 & 1) == 0)
  {
    v30 = v26 == v29;
    if (v26 == v29)
    {
      v26 = 0;
    }

    v28 |= v30;
    v31 = *(v14 + 8 * v26);
    if (v31 != -1)
    {
      v27 = __clz(__rbit64(~v31)) + (v26 << 6);
      goto LABEL_23;
    }
  }

LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_21E23C454(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB9340);
  v36 = a2;
  result = sub_21E343E10();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_31:

LABEL_32:
    *v3 = v7;
    return result;
  }

  v34 = v2;
  v35 = v5;
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
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v37 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_32;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      sub_21E23C714(0, (v33 + 63) >> 6, v9);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
    goto LABEL_31;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v37 = (v12 - 1) & v12;
LABEL_12:
    v18 = v15 | (v8 << 6);
    v19 = *(v5 + 56);
    v20 = *(*(v5 + 48) + 8 * v18);
    v21 = *(v19 + 8 * v18);
    if ((v36 & 1) == 0)
    {
      v22 = v20;
      v23 = v21;
    }

    sub_21E3437E0();
    sub_21E344020();
    sub_21E3438A0();
    v24 = sub_21E344040();

    v25 = -1 << *(v7 + 32);
    v26 = v24 & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
    {
      break;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v14 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    *(*(v7 + 48) + 8 * v28) = v20;
    *(*(v7 + 56) + 8 * v28) = v21;
    ++*(v7 + 16);
    v5 = v35;
    v12 = v37;
    if (!v37)
    {
      goto LABEL_7;
    }
  }

  v29 = 0;
  v30 = (63 - v25) >> 6;
  while (++v27 != v30 || (v29 & 1) == 0)
  {
    v31 = v27 == v30;
    if (v27 == v30)
    {
      v27 = 0;
    }

    v29 |= v31;
    v32 = *(v14 + 8 * v27);
    if (v32 != -1)
    {
      v28 = __clz(__rbit64(~v32)) + (v27 << 6);
      goto LABEL_23;
    }
  }

LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_21E23C714(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_21E352320;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

unint64_t sub_21E23C778()
{
  result = qword_27CEB9300;
  if (!qword_27CEB9300)
  {
    sub_21E1C868C(255, &qword_27CEB8898);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEB9300);
  }

  return result;
}

uint64_t type metadata accessor for WFGeneratedResponseCache()
{
  result = qword_27CEB9308;
  if (!qword_27CEB9308)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21E23C834()
{
  sub_21E23C934();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_21E23C934()
{
  if (!qword_27CEB9318)
  {
    sub_21E342BB0();
    v0 = sub_21E343C70();
    if (!v1)
    {
      atomic_store(v0, &qword_27CEB9318);
    }
  }
}

uint64_t sub_21E23C98C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_21E23C9D4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_21E3437A0();
  [a3 setRawResponse_];
}

void sub_21E23CA2C(uint64_t a1, void *a2)
{
  v3 = sub_21E343730();
  [a2 setDictionary_];
}

uint64_t sub_21E23CAA0(void *a1)
{
  v2 = [a1 rawResponse];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_21E3437E0();

  return v3;
}

uint64_t sub_21E23CB10(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_21E3437E0();

  return v4;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_21E23CBA8()
{
  OUTLINED_FUNCTION_38_3();
  OUTLINED_FUNCTION_279();
  OUTLINED_FUNCTION_7_9();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_9(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2_9(v1);
  OUTLINED_FUNCTION_189();

  return sub_21E2395A4(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_21E23CC38()
{
  OUTLINED_FUNCTION_20();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_9(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_4_0(v1);

  return v4(v3);
}

uint64_t sub_21E23CCCC()
{
  OUTLINED_FUNCTION_20();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_9(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_4_0(v1);

  return v4(v3);
}

uint64_t sub_21E23CD60(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21E23CDE0()
{
  OUTLINED_FUNCTION_38_3();
  OUTLINED_FUNCTION_279();
  OUTLINED_FUNCTION_7_9();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_9(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2_9(v1);
  OUTLINED_FUNCTION_189();

  return sub_21E239040(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_21E23CE94()
{
  OUTLINED_FUNCTION_38_3();
  OUTLINED_FUNCTION_279();
  OUTLINED_FUNCTION_7_9();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_9(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2_9(v1);
  OUTLINED_FUNCTION_189();

  return sub_21E238834(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t objectdestroy_10Tm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t objectdestroy_16Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_21E23CFD4()
{
  OUTLINED_FUNCTION_38_3();
  OUTLINED_FUNCTION_279();
  OUTLINED_FUNCTION_7_9();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_9(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2_9(v1);
  OUTLINED_FUNCTION_189();

  return sub_21E238000(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_21E23D064(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8010);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21E23D0D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB8010);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_1_11()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_9(uint64_t a1)
{
  *(a1 + 8) = v1;
  *(v4 + 16) = v3;
  return v2;
}

id OUTLINED_FUNCTION_6_8()
{
  *(v1 + 32) = 0u;
  *(v1 + 16) = 0u;

  return v0;
}

void OUTLINED_FUNCTION_12_7(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v6, v4, a4, v5, 0xCu);
}

void OUTLINED_FUNCTION_21_6()
{

  JUMPOUT(0x223D57360);
}

void OUTLINED_FUNCTION_25_5()
{

  JUMPOUT(0x223D57360);
}

uint64_t OUTLINED_FUNCTION_32_4()
{

  return sub_21E23B1A8(v1, v2, v0);
}

uint64_t OUTLINED_FUNCTION_45_2()
{
}

BOOL OUTLINED_FUNCTION_46_4()
{

  return os_log_type_enabled(v1, v0);
}

uint64_t OUTLINED_FUNCTION_54_3()
{
}

uint64_t WFContentCollection.coerce(toInputClasses:options:)(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  return MEMORY[0x2822009F8](sub_21E23D444, 0, 0);
}

uint64_t sub_21E23D444()
{
  v1 = *(v0 + 48);
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *(v2 + 16) = *(v0 + 32);
  *(v2 + 32) = v1;
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB9380);
  *v3 = v0;
  v3[1] = sub_21E23D554;

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD00000000000001FLL, 0x800000021E35C100, sub_21E23D884, v2, v4);
}

uint64_t sub_21E23D554()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_21E23D68C;
  }

  else
  {

    v2 = sub_21E23D670;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21E23D68C()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_21E23D6F0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB9388);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v15 - v9;
  sub_21E23D890();
  (*(v8 + 16))(v10, a1, v7);
  v11 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v12 = swift_allocObject();
  (*(v8 + 32))(v12 + v11, v10, v7);

  v14 = sub_21E23D9F4(v13, sub_21E23D960, v12);
  [v14 setOptions_];
  [a4 performCoercion_];
}

unint64_t sub_21E23D890()
{
  result = qword_27CEB9390;
  if (!qword_27CEB9390)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CEB9390);
  }

  return result;
}

uint64_t sub_21E23D8D4(void *a1, void *a2, id a3)
{
  if (a3)
  {
    v3 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB9388);
    return sub_21E343A60();
  }

  else
  {
    v6 = a2;
    v7 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB9388);
    return sub_21E343A70();
  }
}

uint64_t sub_21E23D960(void *a1, void *a2, void *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB9388);

  return sub_21E23D8D4(a1, a2, a3);
}

id sub_21E23D9F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEB9398);
  v5 = sub_21E3439C0();

  if (a2)
  {
    v9[4] = a2;
    v9[5] = a3;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 1107296256;
    v9[2] = sub_21E23DB00;
    v9[3] = &block_descriptor_3;
    v6 = _Block_copy(v9);
  }

  else
  {
    v6 = 0;
  }

  v7 = [swift_getObjCClassFromMetadata() requestForCoercingToContentClasses:v5 completionHandler:v6];
  _Block_release(v6);

  return v7;
}

void sub_21E23DB00(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = *(a1 + 32);

  v10 = a2;
  v8 = a3;
  v9 = a4;
  v7(a2, a3, a4);
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_21E240F30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_21E2411E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21E24148C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21E241724(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21E242D04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

id WFFilenameByApplyingFormatStringToBasenameAndAppendPathExtension(void *a1, void *a2, uint64_t a3, void *a4, uint64_t a5)
{
  v9 = a1;
  v10 = a2;
  v11 = a4;
  if (a3)
  {
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:v10, v9];

    v9 = v12;
  }

  if (a5)
  {
    v13 = [v9 stringByAppendingPathExtension:v11];

    v9 = v13;
  }

  return v9;
}

uint64_t __WFSubstringByEncodingComposedCharacterSequencesToMaxLength_block_invoke(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  result = [a2 lengthOfBytesUsingEncoding:a1[6]];
  v11 = *(a1[4] + 8);
  v12 = *(v11 + 24) + result;
  if (v12 <= a1[7])
  {
    *(v11 + 24) = v12;
  }

  else
  {
    *(*(a1[5] + 8) + 24) = a3;
    *a7 = 1;
  }

  return result;
}

uint64_t file_softmagic(uint64_t *a1, __int128 *a2, unsigned __int16 *a3, unsigned __int16 *a4, unsigned int a5, unsigned int a6)
{
  v8 = a4;
  v16 = 0;
  v15 = 0;
  if (!a4)
  {
    v15 = 0;
    v8 = &v15;
  }

  v14 = 0;
  if (a3)
  {
    v11 = a3;
  }

  else
  {
    v11 = &v14;
  }

  v12 = *a1;
  while (1)
  {
    v12 = *(v12 + 24);
    if (v12 == *a1)
    {
      break;
    }

    result = match(a1, *v12, *(v12 + 8), a2, 0, a5, a6, 0, v11, v8, &v16 + 1, &v16, 0, 0);
    if (result)
    {
      return result;
    }
  }

  return 0;
}

uint64_t match(uint64_t a1, uint64_t a2, unsigned int a3, __int128 *a4, uint64_t a5, unsigned int a6, unsigned int a7, unsigned int a8, unsigned __int16 *a9, unsigned __int16 *a10, _DWORD *a11, int *a12, unsigned int *a13, char *a14)
{
  v19 = a14;
  v87[0] = 0;
  v85 = 0u;
  v86 = 0u;
  v84 = 0u;
  memset(&v83[2], 0, 112);
  if (a13)
  {
    v20 = a13;
  }

  else
  {
    v20 = v87;
  }

  memset(v83, 0, 32);
  if (!a14)
  {
    v19 = v87 + 4;
  }

  v79 = v20;
  v80 = v19;
  v21 = *(a1 + 68);
  result = file_check_mem(a1, 0);
  if (result == -1)
  {
    return result;
  }

  v25 = a1;
  if (!a3)
  {
    return *v79;
  }

  LODWORD(v26) = 0;
  v75 = v21 & 0x1000C10;
  v27 = a3 - 1;
  v76 = 1;
  v77 = a5;
  while (1)
  {
    v28 = v26;
    v29 = a2 + 376 * v26;
    v30 = *(v29 + 6);
    if (v30 <= 0x2E)
    {
      if (((1 << v30) & 0x4200001E2020) != 0)
      {
        v31 = *(v29 + 28) & 0x60;
        if (a7)
        {
          if (v31 == 64)
          {
            goto LABEL_41;
          }
        }

        else if (v31 == 32)
        {
          goto LABEL_41;
        }
      }

      else if (v30 == 45)
      {
        break;
      }
    }

    if ((a6 & ~*(v29 + 2)) == 0)
    {
      break;
    }

LABEL_41:
    if (v26 <= v27)
    {
      v45 = v27;
    }

    else
    {
      v45 = v26;
    }

    if (v28 <= v27)
    {
      v46 = v27;
    }

    else
    {
      v46 = v28;
    }

    v47 = v28 - 1;
    v48 = (a2 + 376 + 376 * v28);
    v49 = -v46;
    while (v49 + v47 != -1)
    {
      v50 = *v48;
      ++v47;
      v48 += 188;
      if (!v50)
      {
        v45 = v47;
        break;
      }
    }

    LODWORD(v26) = v45 + 1;
LABEL_52:
    if (v26 >= a3)
    {
      return *v79;
    }
  }

  v32 = v25;
  if (msetoffset(v25, v29, v83, a4, a5, 0, v23, v24) == -1)
  {
    v25 = v32;
LABEL_40:
    v27 = a3 - 1;
    goto LABEL_41;
  }

  *(v32 + 88) = *(v29 + 20);
  v33 = a5;
  v34 = v85;
  result = mget(v32, v29, a4, *(&v84 + 1), v85, v33, 0, a6, a7, a8, a9, a10, a11, a12, v79, v80);
  if (result)
  {
    if (result == -1)
    {
      return result;
    }

    if (*(v29 + 6) == 41)
    {
      *v80 = 1;
      *v79 = 1;
    }

    result = magiccheck(a1, v29, v35, v36, v37, v38, v23, v24);
    if (!result)
    {
      a5 = v77;
      v25 = a1;
      goto LABEL_40;
    }

    v25 = a1;
    if (result == -1)
    {
      return result;
    }
  }

  else
  {
    v25 = a1;
    if (*(v29 + 4) != 33)
    {
      a5 = v77;
      goto LABEL_40;
    }
  }

  if (*(v29 + 160))
  {
    *v80 = 1;
  }

  result = handle_annotation(v25, v29, v76, v36, v37, v38, v23, v24);
  if (result)
  {
    *a12 = 1;
LABEL_112:
    *a11 = 1;
    *v79 = 1;
    return result;
  }

  if (!v75 && *(v29 + 160))
  {
    *a12 = 1;
    *a11 = 1;
    *v79 = 1;
    if (!v76)
    {
      result = file_printf(a1, "\n- ", v39, v40, v41, v42, v43, v44, v73);
      if (result == -1)
      {
        return result;
      }
    }

    result = mprint(a1, v29);
    if (result == -1)
    {
      return result;
    }
  }

  if (moffset(a1, v29, v34, *(a1 + 24)) + 1 < 2)
  {
    a5 = v77;
    v25 = a1;
    goto LABEL_40;
  }

  result = file_check_mem(a1, 1u);
  if (result == -1)
  {
    return result;
  }

  v51 = 1;
  v25 = a1;
  while (2)
  {
    while (2)
    {
      while (2)
      {
        while (2)
        {
          v52 = v26;
          v53 = a2 + 376 * v26;
          v26 = v26;
          v27 = a3 - 1;
          while (2)
          {
            if (v26 + 1 >= a3)
            {
              if (v52 + 1 > a3)
              {
                LODWORD(v26) = v52 + 1;
              }

              else
              {
                LODWORD(v26) = a3;
              }

LABEL_102:
              v72 = v76;
              if (*a11)
              {
                v72 = 0;
              }

              a5 = v77;
              if (*v80)
              {
                if ((*(v25 + 68) & 0x20) == 0)
                {
                  return *v79;
                }

                v76 = 0;
                *a11 = 0;
              }

              else
              {
                v76 = v72;
              }

              goto LABEL_52;
            }

            v54 = *(v53 + 376);
            if (!*(v53 + 376))
            {
              LODWORD(v26) = v26 + 1;
              goto LABEL_102;
            }

            *(v25 + 88) = *(v53 + 396);
            v53 += 376;
            ++v26;
            if (v51 < v54)
            {
              continue;
            }

            break;
          }

          if (msetoffset(v25, v53, v83, a4, v77, v54, v23, v24) == -1)
          {
            v28 = v26;
            a5 = v77;
            v25 = a1;
            goto LABEL_40;
          }

          v25 = a1;
          if ((*(v53 + 2) & 2) != 0)
          {
            *(a1 + 56) += *(*(a1 + 24) + 16 * v54 - 16);
          }

          if ((*(v53 + 10) & 0xFE) == 2)
          {
            v51 = v54;
            if (*(*(a1 + 24) + 16 * v54 + 8) == 1)
            {
              continue;
            }
          }

          break;
        }

        v55 = v85;
        result = mget(a1, v53, a4, *(&v84 + 1), v85, v77, v54, a6, a7, a8, a9, a10, a11, a12, v79, v80);
        if (result)
        {
          if (result == -1)
          {
            return result;
          }

          if (*(v53 + 6) == 41)
          {
            *v80 = 1;
            *v79 = 1;
          }

          result = magiccheck(a1, v53, v56, v57, v58, v59, v23, v24);
          if (!result)
          {
            *(*(a1 + 24) + 16 * v54 + 8) = 0;
            v51 = v54;
            v25 = a1;
            continue;
          }

          v25 = a1;
          if (result == -1)
          {
            return result;
          }
        }

        else
        {
          v51 = v54;
          v25 = a1;
          if (*(v53 + 4) != 33)
          {
            continue;
          }
        }

        break;
      }

      v60 = *(v25 + 24) + 16 * v54;
      *(v60 + 8) = 1;
      v61 = *(v53 + 6);
      if (v61 == 47)
      {
        v62 = 0;
        goto LABEL_80;
      }

      if (*(v60 + 4))
      {
        v51 = v54;
        if (v61 == 3)
        {
          continue;
        }
      }

      else
      {
        v62 = 1;
LABEL_80:
        *(v60 + 4) = v62;
      }

      break;
    }

    if (*(v53 + 160))
    {
      *v80 = 1;
    }

    result = handle_annotation(v25, v53, v76, v57, v58, v59, v23, v24);
    if (result)
    {
      *a12 = 1;
      goto LABEL_112;
    }

    if (!v75 && *(v53 + 160))
    {
      if (!*a11)
      {
        *a11 = 1;
        if (!v76)
        {
          result = file_printf(a1, "\n- ", v63, v64, v65, v66, v67, v68, v74);
          if (result == -1)
          {
            return result;
          }
        }
      }

      v69 = a1;
      if (*a12)
      {
        if ((*(v53 + 2) & 0x10) == 0)
        {
          result = file_printf(a1, " ", v63, v64, v65, v66, v67, v68, v74);
          v69 = a1;
          if (result == -1)
          {
            return result;
          }
        }
      }

      *v79 = 1;
      *a12 = 0;
      result = mprint(v69, v53);
      if (result == -1)
      {
        return result;
      }

      *a12 = 1;
    }

    if (moffset(a1, v53, v55, (*(a1 + 24) + 16 * v54)) + 1 <= 1)
    {
      LODWORD(v54) = v54 - 1;
    }

    v51 = v54 + 1;
    v70 = file_check_mem(a1, v54 + 1);
    v25 = a1;
    v71 = v70;
    result = 0xFFFFFFFFLL;
    if (v71 != -1)
    {
      continue;
    }

    return result;
  }
}

uint64_t msetoffset(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = *(a2 + 2);
  v13 = *(a2 + 12);
  if ((v12 & 0x80000000) == 0)
  {
    if (a6)
    {
      v14 = *(a1 + 60) + v13;
      *(a1 + 56) = v14;
      goto LABEL_7;
    }

LABEL_6:
    v17 = *(a4 + 152);
    v18 = *(a4 + 160);
    *a3 = -1;
    *(a3 + 8) = 0u;
    *(a3 + 24) = 0u;
    *(a3 + 40) = 0u;
    *(a3 + 56) = 0u;
    *(a3 + 72) = 0u;
    *(a3 + 88) = 0u;
    *(a3 + 104) = 0u;
    *(a3 + 120) = 0u;
    *(a3 + 136) = 0u;
    *(a3 + 152) = v17;
    *(a3 + 160) = v18;
    *(a3 + 176) = 0;
    *(a3 + 184) = 0;
    *(a3 + 168) = 0;
    v14 = v13;
    *(a1 + 56) = v13;
    *(a1 + 60) = 0;
    goto LABEL_7;
  }

  v13 = -v13;
  if (a6 && (v12 & 6) != 0)
  {
    goto LABEL_6;
  }

  v20 = *(a4 + 184);
  if (v20 == -1)
  {
    return 0xFFFFFFFFLL;
  }

  if (!v20)
  {
    if ((*(a4 + 12) & 0xF000) == 0x8000)
    {
      v21 = *(a4 + 104) >= *(a4 + 160) ? *(a4 + 160) : *(a4 + 104);
      *(a4 + 184) = v21;
      v22 = malloc_type_malloc(v21, 0x24E36F2BuLL);
      *(a4 + 176) = v22;
      if (v22)
      {
        v23 = *(a4 + 184);
        v24 = *(a4 + 104) - v23;
        *(a4 + 168) = v24;
        if (pread(*a4, v22, v23, v24) != -1)
        {
          goto LABEL_19;
        }

        free(*(a4 + 176));
        *(a4 + 176) = 0;
      }
    }

    *(a4 + 184) = -1;
    return 0xFFFFFFFFLL;
  }

LABEL_19:
  if (a5)
  {
    file_magerror(a1, "non zero offset %zu at level %u", a3, a4, a5, a6, a7, a8, a5, a6);
    return 0xFFFFFFFFLL;
  }

  v25 = *(a4 + 184);
  result = 0xFFFFFFFFLL;
  if (v25 < *(a2 + 12))
  {
    return result;
  }

  v26 = *(a4 + 176);
  *a3 = -1;
  *(a3 + 8) = 0u;
  *(a3 + 24) = 0u;
  *(a3 + 40) = 0u;
  *(a3 + 56) = 0u;
  *(a3 + 72) = 0u;
  *(a3 + 88) = 0u;
  *(a3 + 104) = 0u;
  *(a3 + 120) = 0u;
  *(a3 + 136) = 0u;
  *(a3 + 152) = v26;
  *(a3 + 160) = v25;
  *(a3 + 176) = 0;
  *(a3 + 184) = 0;
  *(a3 + 168) = 0;
  v14 = *(a4 + 184) - *(a2 + 12);
  *(a1 + 56) = v14;
  *(a1 + 60) = v14;
LABEL_7:
  if (*(a1 + 68))
  {
    fprintf(*MEMORY[0x277D85DF8], "bb=[%p,%zu,%zu], %d [b=%p,%zu,%zu], [o=%#x, c=%d]\n", *(a3 + 152), *(a3 + 160), *(a3 + 184), v14, *(a4 + 152), *(a4 + 160), *(a4 + 184), v13, a6);
  }

  return 0;
}

uint64_t mget(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned int a9, unsigned int a10, unsigned __int16 *a11, unsigned __int16 *a12, uint64_t a13, int *a14, uint64_t a15, uint64_t a16)
{
  v17 = *(a1 + 56);
  v140 = 0u;
  v141 = 0u;
  v138 = 0u;
  v139 = 0u;
  v136 = 0u;
  v137 = 0u;
  v134 = 0u;
  v135 = 0u;
  v132 = 0u;
  v133 = 0u;
  v130 = 0u;
  v131 = 0u;
  v129 = 0;
  memset(v128, 0, sizeof(v128));
  if (*a11 >= *(a1 + 264))
  {
    file_error(a1, 0, "indirect count (%hu) exceeded", a4, a5, a6, a7, a8, *a11);
    return 0xFFFFFFFFLL;
  }

  if (*a12 >= *(a1 + 266))
  {
    file_error(a1, 0, "name use count (%hu) exceeded", a4, a5, a6, a7, a8, *a12);
    return 0xFFFFFFFFLL;
  }

  v18 = a7;
  v126 = a8;
  v23 = (a1 + 136);
  mcopy(a1, (a1 + 136), *(a2 + 6), *(a2 + 2) & 1, a4, v17 + a6, a5, a2);
  if (*(a1 + 68))
  {
    fprintf(*MEMORY[0x277D85DF8], "mget(type=%d, flag=%#x, offset=%u, o=%zu, nbytes=%zu, il=%hu, nc=%hu)\n", *(a2 + 6), *(a2 + 2), v17, a6, a5, *a11, *a12);
    mdebug(v17, (a1 + 136));
    file_mdump(a2);
  }

  if ((*(a2 + 2) & 1) == 0)
  {
    goto LABEL_157;
  }

  v30 = *(a2 + 16);
  v31 = *(a2 + 8);
  if (v31 < 0)
  {
    v32 = (a4 + v17 + v30);
    v33 = *(a2 + 7);
    if (a10)
    {
      v34 = v33 - 7;
      if (v33 - 7) <= 0x25 && ((0x30DB6C033FuLL >> v34))
      {
        v33 = *&asc_21E35671C[4 * v34];
      }
    }

    if (v33 <= 0xAu)
    {
      if (v33 <= 6u)
      {
        if (v33 != 1)
        {
          if (v33 == 2)
          {
            v35 = 0;
            if (a5 < (v30 + v17) || a5 - (v30 + v17) < 2)
            {
              return v35;
            }

            v30 = *v32;
            if ((*(a2 + 8) & 0x20) == 0)
            {
              v30 = *v32;
            }

            goto LABEL_71;
          }

          if (v33 == 4)
          {
            v35 = 0;
            if (a5 < (v30 + v17) || a5 - (v30 + v17) < 4)
            {
              return v35;
            }

            v30 = *v32;
            if ((*(a2 + 8) & 0x20) == 0)
            {
              v30 = v30;
            }

            goto LABEL_71;
          }

LABEL_148:
          if (*(a1 + 68))
          {
            fprintf(*MEMORY[0x277D85DF8], "bad op=%d\n");
          }

          return 0;
        }

        v35 = 0;
        if (v30 + v17 == a5 || (v30 + v17) > a5)
        {
          return v35;
        }

        v39 = *v32;
        v40 = v39;
        goto LABEL_49;
      }

      if (v33 == 7)
      {
        v35 = 0;
        if (a5 < (v30 + v17) || a5 - (v30 + v17) < 2)
        {
          return v35;
        }

        v37 = *v32;
        v38 = *(v32 + 1);
LABEL_55:
        v45 = v38 | (v37 << 8);
        v46 = (v38 | (v37 << 8));
        if ((*(a2 + 8) & 0x20) != 0)
        {
          v30 = v46;
        }

        else
        {
          v30 = v45;
        }

        goto LABEL_71;
      }

      if (v33 != 8)
      {
        if (v33 != 10)
        {
          goto LABEL_148;
        }

        v35 = 0;
        if (a5 < (v30 + v17) || a5 - (v30 + v17) < 2)
        {
          return v35;
        }

        v37 = *(v32 + 1);
        v38 = *v32;
        goto LABEL_55;
      }

      goto LABEL_43;
    }

    if (v33 > 0x19u)
    {
      if (v33 == 26)
      {
        v35 = 0;
        if (a5 < (v30 + v17) || a5 - (v30 + v17) < 8)
        {
          return v35;
        }

        v30 = bswap64(*v32);
        goto LABEL_71;
      }

      if (v33 == 39)
      {
LABEL_43:
        v35 = 0;
        if (a5 < (v30 + v17) || a5 - (v30 + v17) < 4)
        {
          return v35;
        }

        v41 = *v32;
        v42 = *(v32 + 1);
        v43 = *(v32 + 2);
        v44 = *(v32 + 3);
LABEL_68:
        v47 = (v41 << 24) | (v42 << 16) | (v43 << 8) | v44;
        v48 = (v41 << 24) | (v42 << 16) | (v43 << 8) | v44;
        if ((*(a2 + 8) & 0x20) != 0)
        {
          v30 = v48;
        }

        else
        {
          v30 = v47;
        }

        goto LABEL_71;
      }

      if (v33 != 40)
      {
        goto LABEL_148;
      }
    }

    else if (v33 != 11)
    {
      if (v33 != 23)
      {
        if (v33 == 25)
        {
          v35 = 0;
          if (a5 < (v30 + v17) || a5 - (v30 + v17) < 8)
          {
            return v35;
          }

          v30 = *v32;
          goto LABEL_71;
        }

        goto LABEL_148;
      }

      v35 = 0;
      if (a5 < (v30 + v17) || a5 - (v30 + v17) < 4)
      {
        return v35;
      }

      v41 = *(v32 + 1);
      v42 = *v32;
      v43 = *(v32 + 3);
      v44 = *(v32 + 2);
      goto LABEL_68;
    }

    v35 = 0;
    if (a5 < (v30 + v17) || a5 - (v30 + v17) < 4)
    {
      return v35;
    }

    v39 = *v32;
    v40 = v39;
LABEL_49:
    if ((*(a2 + 8) & 0x20) != 0)
    {
      v30 = v39;
    }

    else
    {
      v30 = v40;
    }

LABEL_71:
    if (*(a1 + 68))
    {
      v125 = *(a2 + 8);
      v49 = v30;
      fprintf(*MEMORY[0x277D85DF8], "indirect offs=%jd\n", v30);
      v30 = v49;
      v31 = v125;
    }

    v23 = (a1 + 136);
  }

  v50 = *(a2 + 7);
  if (a10)
  {
    v51 = v50 - 7;
    if (v50 - 7) <= 0x25 && ((0x30DB6C033FuLL >> v51))
    {
      v50 = *&asc_21E35671C[4 * v51];
    }
  }

  if (v50 <= 0xAu)
  {
    if (v50 <= 6u)
    {
      if (v50 == 1)
      {
        if (a5 <= v17)
        {
          return 0;
        }

        v53 = *v23;
        v54 = v53;
        goto LABEL_126;
      }

      v52 = v23;
      if (v50 == 2)
      {
        v35 = 0;
        if (a5 < v17 || a5 - v17 < 2)
        {
          return v35;
        }

        v23 = v52;
        v53 = *v52;
        v54 = v53;
        goto LABEL_126;
      }

      if (v50 == 4)
      {
        v35 = 0;
        if (a5 < v17 || a5 - v17 < 4)
        {
          return v35;
        }

        v23 = v52;
        v53 = *v52;
        v54 = v53;
LABEL_126:
        if ((v31 & 0x20) != 0)
        {
          v53 = v54;
        }

        goto LABEL_134;
      }

LABEL_142:
      if (*(a1 + 68))
      {
        fprintf(*MEMORY[0x277D85DF8], "bad in_type=%d\n");
      }

      return 0;
    }

    if (v50 == 7)
    {
      v35 = 0;
      if (a5 < v17 || a5 - v17 < 2)
      {
        return v35;
      }

      v55 = *(a1 + 136);
      v56 = *(a1 + 137);
      if ((v31 & 0x20) == 0)
      {
LABEL_99:
        v53 = v56 | (v55 << 8);
LABEL_133:
        v23 = (a1 + 136);
        goto LABEL_134;
      }

LABEL_119:
      v53 = (v56 | (v55 << 8));
      goto LABEL_133;
    }

    if (v50 != 8)
    {
      if (v50 != 10)
      {
        goto LABEL_142;
      }

      v35 = 0;
      if (a5 < v17 || a5 - v17 < 2)
      {
        return v35;
      }

      v55 = *(a1 + 137);
      v56 = *(a1 + 136);
      if ((v31 & 0x20) == 0)
      {
        goto LABEL_99;
      }

      goto LABEL_119;
    }

LABEL_110:
    v35 = 0;
    if (a5 < v17 || a5 - v17 < 4)
    {
      return v35;
    }

    v57 = bswap32(*(a1 + 136));
    if (v50 != 39)
    {
      goto LABEL_107;
    }

    goto LABEL_106;
  }

  if (v50 > 0x19u)
  {
    if (v50 == 26)
    {
      v35 = 0;
      if (a5 < v17 || a5 - v17 < 8)
      {
        return v35;
      }

      v53 = bswap64(*(a1 + 136));
      goto LABEL_133;
    }

    if (v50 == 39)
    {
      goto LABEL_110;
    }

    if (v50 != 40)
    {
      goto LABEL_142;
    }

LABEL_103:
    v35 = 0;
    if (a5 < v17 || a5 - v17 < 4)
    {
      return v35;
    }

    v57 = *(a1 + 136);
    if (v50 != 40)
    {
      goto LABEL_107;
    }

LABEL_106:
    v58 = v31;
    v59 = v30;
    v60 = cvt_id3(*(a1 + 68), v57);
    v30 = v59;
    v31 = v58;
    v57 = v60;
LABEL_107:
    v23 = (a1 + 136);
    v53 = v57;
    if ((v31 & 0x20) == 0)
    {
      v53 = v57;
    }

    goto LABEL_134;
  }

  if (v50 == 11)
  {
    goto LABEL_103;
  }

  if (v50 == 23)
  {
    v35 = 0;
    if (a5 < v17 || a5 - v17 < 4)
    {
      return v35;
    }

    v61 = *(a1 + 136);
    v62 = *(a1 + 139);
    v63 = *(a1 + 138);
    v53 = (*(a1 + 137) << 24) | (v61 << 16) | (v62 << 8) | v63;
    if ((v31 & 0x20) == 0)
    {
      v53 = (*(a1 + 137) << 24) | (v61 << 16) | (v62 << 8) | v63;
    }

    goto LABEL_133;
  }

  if (v50 != 25)
  {
    goto LABEL_142;
  }

  v35 = 0;
  if (a5 < v17 || a5 - v17 < 8)
  {
    return v35;
  }

  v23 = (a1 + 136);
  v53 = *(a1 + 136);
LABEL_134:
  v64 = *(a2 + 8);
  if (v30)
  {
    v65 = v64 & 7;
    if (v65 > 3)
    {
      if ((v64 & 7u) > 5)
      {
        if (v65 == 6)
        {
          v53 /= v30;
        }

        else
        {
          v53 %= v30;
        }
      }

      else if (v65 == 4)
      {
        LODWORD(v53) = v53 - v30;
      }

      else
      {
        LODWORD(v53) = v30 * v53;
      }
    }

    else if ((v64 & 7u) > 1)
    {
      if (v65 == 2)
      {
        LODWORD(v53) = v30 ^ v53;
      }

      else
      {
        LODWORD(v53) = v30 + v53;
      }
    }

    else if ((v64 & 7) != 0)
    {
      LODWORD(v53) = v30 | v53;
    }

    else
    {
      LODWORD(v53) = v30 & v53;
    }
  }

  LODWORD(v17) = v53 ^ ((2 * v64) >> 7);
  if ((*(a2 + 2) & 4) == 0)
  {
    goto LABEL_155;
  }

  if (!v18)
  {
    if (*(a1 + 68))
    {
      v71 = *MEMORY[0x277D85DF8];
      v72 = "indirect *zero* cont_level\n";
      v73 = 27;
LABEL_185:
      fwrite(v72, v73, 1uLL, v71);
    }

    return 0;
  }

  v70 = *(a1 + 68);
  LODWORD(v17) = *(*(a1 + 24) + 16 * v18 - 16) + v17;
  if (!v17)
  {
    if (v70)
    {
      v71 = *MEMORY[0x277D85DF8];
      v72 = "indirect *zero* offset\n";
      v73 = 23;
      goto LABEL_185;
    }

    return 0;
  }

  if (v70)
  {
    fprintf(*MEMORY[0x277D85DF8], "indirect +offs=%u\n", v17);
  }

LABEL_155:
  mcopy(a1, v23, *(a2 + 6), 0, a4, v17, a5, a2);
  *(a1 + 56) = v17;
  if (*(a1 + 68))
  {
    mdebug(v17, v23);
    file_mdump(a2);
  }

LABEL_157:
  v66 = v23;
  v67 = *(a2 + 6);
  switch(*(a2 + 6))
  {
    case 1:
      if (v17 >= a5)
      {
        return 0;
      }

      goto LABEL_160;
    case 2:
    case 7:
    case 0xA:
      v35 = 0;
      if (a5 < v17 || a5 - v17 < 2)
      {
        return v35;
      }

      goto LABEL_160;
    case 4:
    case 6:
    case 8:
    case 9:
    case 0xB:
    case 0xC:
    case 0xE:
    case 0xF:
    case 0x10:
    case 0x15:
    case 0x16:
    case 0x17:
    case 0x21:
    case 0x22:
    case 0x23:
      v35 = 0;
      if (a5 >= v17 && a5 - v17 >= 4)
      {
        goto LABEL_160;
      }

      return v35;
    case 5:
    case 0xD:
    case 0x14:
      if (a5 < v17 || a5 - v17 < *(a2 + 5))
      {
        return 0;
      }

      goto LABEL_160;
    case 0x11:
      if (v17 > a5)
      {
        return 0;
      }

      goto LABEL_160;
    case 0x24:
    case 0x25:
    case 0x26:
      v35 = 0;
      if (a5 < v17 || a5 - v17 < 8)
      {
        return v35;
      }

      goto LABEL_160;
    case 0x29:
      v85 = (*(a2 + 28) << 31 >> 31) & a6;
      v86 = (v85 + v17);
      if (!(v85 + v17) || a5 < v86)
      {
        return 0;
      }

      v87 = file_push_buffer(a1);
      if (!v87)
      {
        return 0xFFFFFFFFLL;
      }

      v88 = v87;
      ++*a11;
      v89 = a3[9];
      v138 = a3[8];
      v139 = v89;
      v90 = a3[11];
      v140 = a3[10];
      v141 = v90;
      v91 = a3[5];
      v134 = a3[4];
      v135 = v91;
      v92 = a3[7];
      v136 = a3[6];
      v137 = v92;
      v93 = a3[1];
      v130 = *a3;
      v131 = v93;
      v94 = a3[3];
      v132 = a3[2];
      v133 = v94;
      *(&v139 + 1) = a4 + v86;
      *&v140 = a5 - v86;
      v35 = file_softmagic(a1, &v130, a11, a12, 32, a9);
      if (*(a1 + 68))
      {
        fprintf(*MEMORY[0x277D85DF8], "indirect @offs=%u[%d]\n", v86, v35);
      }

      v101 = file_pop_buffer(a1, v88);
      if (!v101 && (*(a1 + 72) & 1) != 0)
      {
        return 0xFFFFFFFFLL;
      }

      if (v35 != 1 || ((*(a1 + 68) & 0x1000C10) != 0 || (v102 = file_fmtcheck(a1, (a2 + 160), "%u", 1854), file_printf(a1, v102, v103, v104, v105, v106, v107, v108, v86) != -1)) && file_printf(a1, "%s", v95, v96, v97, v98, v99, v100, v101) != -1)
      {
        free(v101);
        return v35;
      }

      free(v101);
      return 0xFFFFFFFFLL;
    case 0x2D:
      if ((*(a1 + 68) & 0x1000C10) != 0)
      {
        return 1;
      }

      if (file_printf(a1, "%s", v24, v25, v26, v27, v28, v29, a2 - 96) == -1)
      {
        return 0xFFFFFFFFLL;
      }

      else
      {
        return 1;
      }

    case 0x2E:
      v74 = v17;
      if (v17 > a5)
      {
        return 0;
      }

      v75 = *(a2 + 32);
      if (v75 == 94)
      {
        v76 = (a2 + 33);
      }

      else
      {
        v76 = (a2 + 32);
      }

      if (v75 == 94)
      {
        v77 = a10 == 0;
      }

      else
      {
        v77 = a10;
      }

      if (file_magicfind(*(a1 + 8), v76, v128) == -1)
      {
        return 0xFFFFFFFFLL;
      }

      ++*a12;
      v83 = *a14;
      if ((*(a2 + 2) & 0x10) != 0)
      {
        *a14 = 0;
      }

      v84 = match(a1, *&v128[0], DWORD2(v128[0]), a3, v74 + a6, v126, a9, v77, a11, a12, a13, a14, a15, a16);
      --*a12;
      if (v84 != 1)
      {
        v35 = v84;
        *a14 = v83;
        return v35;
      }

      return 1;
    case 0x31:
      v35 = 0;
      if (a5 < v17 || a5 - v17 < 0x10)
      {
        return v35;
      }

      goto LABEL_160;
    default:
LABEL_160:
      if (a10 && (v68 = v67 - 7, (v67 - 7) <= 0x25))
      {
        LOBYTE(v69) = *(a2 + 6);
        if ((0x30DB6C033FuLL >> v68))
        {
          v69 = *&asc_21E35671C[4 * v68];
        }
      }

      else
      {
        LOBYTE(v69) = *(a2 + 6);
      }

      break;
  }

  v35 = 1;
  switch(v69)
  {
    case 1:
      v121 = *(a2 + 24);
      if (!v121)
      {
        goto LABEL_267;
      }

      v122 = *(a2 + 9) & 7;
      if (v122 <= 3)
      {
        if ((*(a2 + 9) & 7u) > 1)
        {
          if (v122 == 2)
          {
            v123 = *v66 ^ v121;
          }

          else
          {
            v123 = *v66 + v121;
          }
        }

        else if ((*(a2 + 9) & 7) != 0)
        {
          v123 = *v66 | v121;
        }

        else
        {
          v123 = *v66 & v121;
        }

        goto LABEL_266;
      }

      if ((*(a2 + 9) & 7u) <= 5)
      {
        if (v122 == 4)
        {
          v123 = *v66 - v121;
        }

        else
        {
          v123 = *v66 * v121;
        }

        goto LABEL_266;
      }

      if (v122 != 6)
      {
        if (*(a2 + 24))
        {
          v123 = *v66 % *(a2 + 24);
          goto LABEL_266;
        }

LABEL_227:
        file_magerror(a1, "zerodivide in mconvert()", v24, v25, v26, v27, v28, v29, v124);
        return 0;
      }

      if (!*(a2 + 24))
      {
        goto LABEL_227;
      }

      v123 = *v66 / *(a2 + 24);
LABEL_266:
      *v66 = v123;
LABEL_267:
      if ((*(a2 + 9) & 0x40) != 0)
      {
        *v66 = ~*v66;
      }

      return 1;
    case 2:
    case 10:
      goto LABEL_247;
    case 3:
    case 17:
    case 20:
    case 45:
    case 46:
    case 47:
    case 48:
    case 49:
      return v35;
    case 4:
    case 6:
    case 11:
    case 12:
    case 14:
    case 16:
      goto LABEL_225;
    case 5:
    case 18:
    case 19:
      *(a1 + 263) = 0;
      return 1;
    case 7:
      *(a1 + 136) = bswap32(*(a1 + 136)) >> 16;
LABEL_247:
      v110 = cvt_16(v66, a2);
      goto LABEL_226;
    case 8:
    case 9:
    case 15:
      v109 = bswap32(*(a1 + 136));
      goto LABEL_224;
    case 13:
      v111 = file_pstring_length_size(a1, *(a2 + 28), v24, v25, v26, v27, v28, v29);
      if (v111 == -1)
      {
        return 0;
      }

      v117 = v111;
      length = file_pstring_get_length(a1, *(a2 + 28), v66, v112, v113, v114, v115, v116);
      if (length == -1)
      {
        return 0;
      }

      v119 = 128 - v117;
      if (length < 128 - v117)
      {
        v119 = length;
      }

      if (v119)
      {
        do
        {
          v120 = v66 + 1;
          *v66 = *(v66 + v117);
          v66 = (v66 + 1);
          --v119;
        }

        while (v119);
      }

      else
      {
        v120 = v66;
      }

      *v120 = 0;
      return 1;
    case 21:
    case 22:
    case 23:
      v109 = (*(a1 + 137) << 24) | (*(a1 + 136) << 16) | (*(a1 + 139) << 8) | *(a1 + 138);
LABEL_224:
      *(a1 + 136) = v109;
LABEL_225:
      v110 = cvt_32(v66, a2);
LABEL_226:
      if (v110 == -1)
      {
        goto LABEL_227;
      }

      return 1;
    case 24:
    case 25:
    case 27:
    case 28:
    case 30:
    case 31:
    case 42:
    case 43:
    case 50:
      goto LABEL_167;
    case 26:
    case 29:
    case 32:
    case 44:
      *(a1 + 136) = bswap64(*(a1 + 136));
LABEL_167:
      cvt_64(v66, a2);
      return 1;
    case 33:
    case 35:
      goto LABEL_230;
    case 34:
      *(a1 + 136) = bswap32(*(a1 + 136));
LABEL_230:
      cvt_float(v66, a2);
      return 1;
    case 36:
    case 38:
      goto LABEL_239;
    case 37:
      *(a1 + 136) = bswap64(*(a1 + 136));
LABEL_239:
      cvt_double(v66, a2);
      return 1;
    default:
      file_magerror(a1, "invalid type %d in mconvert()", v24, v25, v26, v27, v28, v29, *(a2 + 6));
      return 0;
  }
}

uint64_t magiccheck(uint64_t a1, char *__little, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v93 = *MEMORY[0x277D85DE8];
  v9 = (__little + 32);
  v11 = 0;
  v12 = 0;
  v13 = (a1 + 136);
  v14 = 1;
  switch(__little[6])
  {
    case 1:
      v12 = *v13;
      goto LABEL_4;
    case 2:
    case 7:
    case 10:
      v12 = *v13;
      goto LABEL_4;
    case 3:
    case 47:
      goto LABEL_5;
    case 4:
    case 6:
    case 8:
    case 9:
    case 11:
    case 12:
    case 14:
    case 15:
    case 16:
    case 21:
    case 22:
    case 23:
      v12 = *v13;
      goto LABEL_4;
    case 5:
    case 13:
      v12 = file_strncmp(__little + 32, v13, __little[5], 128, *(__little + 7));
      goto LABEL_50;
    case 17:
      v91 = 0u;
      v92 = 0u;
      *__str = 0u;
      v90 = 0u;
      if (!*(a1 + 104))
      {
        return 0;
      }

      if ((*(__little + 7) & 0xC) != 0)
      {
        v52 = 11;
      }

      else
      {
        v52 = 9;
      }

      v53 = file_regcomp(__str, __little + 32, v52);
      if (v53)
      {
        v54 = v53;
LABEL_91:
        file_regerror(__str, v54, a1);
        file_regfree(__str);
        return 0xFFFFFFFFLL;
      }

      v88.rm_so = 0;
      v88.rm_eo = 0;
      v58 = *(a1 + 112);
      if (v58)
      {
        v59 = malloc_type_malloc(*(a1 + 112), 0x100004077774924uLL);
        if (!v59)
        {
          file_regfree(__str);
          v78 = __error();
          file_error(a1, *v78, "can't allocate %zu bytes", v79, v80, v81, v82, v83, v58);
          return 0xFFFFFFFFLL;
        }

        v60 = v59;
        memcpy(v59, *(a1 + 104), v58);
        v58[v60 - 1] = 0;
        v58 = v60;
      }

      else
      {
        v60 = "";
      }

      v71 = file_regexec(__str, v60, 1uLL, &v88);
      free(v58);
      v12 = v71;
      if (v71 != 1)
      {
        if (v71)
        {
          v54 = v71;
          goto LABEL_91;
        }

        v12 = 0;
        rm_so = v88.rm_so;
        rm_eo = v88.rm_eo;
        *(a1 + 104) += SLODWORD(v88.rm_so);
        *(a1 + 120) += rm_so;
        *(a1 + 128) = rm_eo - rm_so;
      }

      file_regfree(__str);
LABEL_50:
      v11 = 0;
LABEL_5:
      v15 = file_signextend(a1, __little, v12, a4, a5, a6, a7, a8);
      v22 = __little[4];
      if (v22 <= 0x3C)
      {
        switch(v22)
        {
          case '!':
            v14 = v15 != v11;
            if (*(a1 + 68))
            {
              fprintf(*MEMORY[0x277D85DF8], "%llu != %llu = %d\n", v15, v11, v15 != v11);
            }

            return v14;
          case '&':
            v14 = (v11 & ~v15) == 0;
            if (*(a1 + 68))
            {
              fprintf(*MEMORY[0x277D85DF8], "((%llx & %llx) == %llx) = %d\n");
            }

            return v14;
          case '<':
            v24 = *(a1 + 68);
            if ((__little[2] & 8) != 0)
            {
              v14 = v15 < v11;
              if (v24)
              {
                fprintf(*MEMORY[0x277D85DF8], "%llu < %llu = %d\n");
              }
            }

            else
            {
              v14 = v15 < v11;
              if (v24)
              {
                fprintf(*MEMORY[0x277D85DF8], "%lld < %lld = %d\n");
              }
            }

            return v14;
        }

        goto LABEL_25;
      }

      if (__little[4] > 0x5Du)
      {
        if (v22 == 94)
        {
          v14 = (v11 & ~v15) != 0;
          if (*(a1 + 68))
          {
            fprintf(*MEMORY[0x277D85DF8], "((%llx & %llx) != %llx) = %d\n");
          }

          return v14;
        }

        if (v22 == 120)
        {
          if (*(a1 + 68))
          {
            fprintf(*MEMORY[0x277D85DF8], "%llu == *any* = 1\n", v15);
          }

          return 1;
        }

LABEL_25:
        return 0xFFFFFFFFLL;
      }

      if (v22 != 61)
      {
        if (v22 == 62)
        {
          v23 = *(a1 + 68);
          if ((__little[2] & 8) != 0)
          {
            v14 = v15 <= v11;
            if (v23)
            {
              fprintf(*MEMORY[0x277D85DF8], "%llu > %llu = %d\n");
            }
          }

          else
          {
            v14 = v15 > v11;
            if (v23)
            {
              fprintf(*MEMORY[0x277D85DF8], "%lld > %lld = %d\n");
            }
          }

          return v14;
        }

        goto LABEL_25;
      }

      v14 = v15 == v11;
      if (*(a1 + 68))
      {
        fprintf(*MEMORY[0x277D85DF8], "%llu == %llu = %d\n");
      }

      return v14;
    case 18:
    case 19:
      v32 = __little[5];
      v11 = 0;
      while (v32)
      {
        --v32;
        v34 = *v13++;
        v33 = v34;
        v35 = *v9++;
        v12 = v33 - v35;
        if (v33 != v35)
        {
          goto LABEL_5;
        }
      }

      v11 = 0;
      v12 = 0;
      goto LABEL_5;
    case 20:
      v43 = *(a1 + 104);
      if (!v43)
      {
        return 0;
      }

      if (__little[5] >= 0x80u)
      {
        v44 = 128;
      }

      else
      {
        v44 = __little[5];
      }

      if (!__little[5] || *(__little + 7))
      {
        v45 = 0;
        v46 = 0;
        while (1)
        {
          v47 = *(a1 + 112);
          if (v44 + v46 > v47)
          {
            return 0;
          }

          v12 = file_strncmp(v9, (*(a1 + 104) + v46), v44, v45 + v47, *(__little + 7));
          if (!v12)
          {
            v11 = 0;
            v62 = *(a1 + 112) - v46;
            *(a1 + 120) += v46;
            *(a1 + 128) = v62;
            goto LABEL_5;
          }

          ++v46;
          v48 = *(__little + 6);
          --v45;
          if (v48)
          {
            v11 = 0;
            if (v46 >= v48)
            {
              goto LABEL_5;
            }
          }
        }
      }

      v68 = *(__little + 6);
      if (v68)
      {
        v69 = v68 + v44;
        v70 = *(a1 + 112);
        if (v70 >= v69)
        {
          goto LABEL_146;
        }
      }

      else
      {
        v70 = *(a1 + 112);
      }

      v69 = v70;
LABEL_146:
      v74 = memmem(v43, v69, v9, v44);
      if (!v74)
      {
        return 0;
      }

      v11 = 0;
      v12 = 0;
      v75 = &v74[-*(a1 + 104)];
      v76 = &v75[*(a1 + 120)];
      v77 = *(a1 + 112) - v75;
      *(a1 + 120) = v76;
      *(a1 + 128) = v77;
      goto LABEL_5;
    case 24:
    case 25:
    case 26:
    case 27:
    case 28:
    case 29:
    case 30:
    case 31:
    case 32:
    case 42:
    case 43:
    case 44:
    case 50:
      v12 = *v13;
LABEL_4:
      v11 = *(__little + 4);
      goto LABEL_5;
    case 33:
    case 34:
    case 35:
      LODWORD(v25) = *(__little + 4);
      v26 = *v13;
      v27 = __little[4];
      if (v27 <= 0x3C)
      {
        if (v27 == 33)
        {
          v57 = v26 == v25;
          return !v57;
        }

        if (v27 == 60)
        {
          return v26 < v25;
        }
      }

      else
      {
        switch(v27)
        {
          case '=':
            return v26 == v25;
          case '>':
            v56 = v26 <= v25;
            return !v56;
          case 'x':
            return 1;
        }
      }

      return 0xFFFFFFFFLL;
    case 36:
    case 37:
    case 38:
      v28 = *(__little + 4);
      v29 = *v13;
      v30 = __little[4];
      if (v30 <= 0x3C)
      {
        if (v30 == 33)
        {
          v57 = v29 == v28;
          return !v57;
        }

        if (v30 == 60)
        {
          return v29 < v28;
        }
      }

      else
      {
        switch(v30)
        {
          case '=':
            return v29 == v28;
          case '>':
            v56 = v29 <= v28;
            return !v56;
          case 'x':
            return 1;
        }
      }

      return 0xFFFFFFFFLL;
    case 41:
    case 45:
    case 46:
      return v14;
    case 48:
      v88.rm_so = 0;
      v38 = *(a1 + 104);
      v37 = *(a1 + 112);
      v39 = gettag(v38, &v88, v37);
      if (v39 == -1 || (v40 = v39, v41 = getlength(v38, &v88, v37), v41 == -1))
      {
        if (*(a1 + 68))
        {
          fwrite("EOF comparing DER entries", 0x19uLL, 1uLL, *MEMORY[0x277D85DF8]);
        }

        return 0;
      }

      v42 = v41;
      if (v40 > 0x24)
      {
        snprintf(__str, 0x80uLL, "%#x", v40);
      }

      else
      {
        __strlcpy_chk();
      }

      if (*(a1 + 68))
      {
        fprintf(*MEMORY[0x277D85DF8], "%s: tag %p got=%s exp=%s\n", "der_cmp", v38, __str, v9);
      }

      v61 = strlen(__str);
      if (strncmp(__str, v9, v61))
      {
        return 0;
      }

      v63 = &v9[v61];
      v64 = v42;
      while (1)
      {
        v65 = *v63;
        if (!*v63)
        {
          return 1;
        }

        if (v65 == 61)
        {
          break;
        }

        if ((v65 - 48) <= 9)
        {
          v66 = 0;
          do
          {
            v66 = 10 * v66 + v65 - 48;
            v67 = *++v63;
            LOBYTE(v65) = v67;
          }

          while ((v67 - 48) < 0xA);
          if (*(a1 + 68))
          {
            fprintf(*MEMORY[0x277D85DF8], "%s: len %zu %u\n", "der_cmp", v66, v42);
          }

          if (v66 == v42)
          {
            continue;
          }
        }

        return 0;
      }

      v84 = &v38[v88.rm_so];
      if (v40 > 21)
      {
        if (v40 == 23)
        {
          if (v42 >= 0xC)
          {
            snprintf(__str, 0x80uLL, "20%c%c-%c%c-%c%c %c%c:%c%c:%c%c GMT", *v84, v84[1], v84[2], v84[3], v84[4], v84[5], v84[6]);
            goto LABEL_162;
          }

LABEL_157:
          if (v42)
          {
            v85 = 0;
            do
            {
              if (v85 <= 0x7D)
              {
                snprintf(&__str[v85], 128 - v85, "%.2x", *v84);
              }

              ++v84;
              v85 += 2;
            }

            while (2 * v64 != v85);
          }

LABEL_162:
          if (*(a1 + 68))
          {
            fprintf(*MEMORY[0x277D85DF8], "%s: data %s %s\n", "der_cmp", __str, v63 + 1);
          }

          if (!strcmp(__str, v63 + 1) || ((v86 = *(v63 + 1), v86 != 120) ? (v87 = 120 - v86) : (v87 = -*(v63 + 2)), !v87))
          {
            __strlcpy_chk();
            return 1;
          }

          return 0;
        }

        if (v40 != 22)
        {
          goto LABEL_157;
        }
      }

      else if (v40 != 12 && v40 != 19)
      {
        goto LABEL_157;
      }

      snprintf(__str, 0x80uLL, "%.*s");
      goto LABEL_162;
    case 49:
      v49 = bswap64(*v9);
      v50 = bswap64(*v13);
      if (v49 == v50 && (v49 = bswap64(*(__little + 5)), v50 = bswap64(*(a1 + 144)), v49 == v50))
      {
        v51 = 0;
      }

      else if (v49 < v50)
      {
        v51 = -1;
      }

      else
      {
        v51 = 1;
      }

      v11 = 0;
      v12 = v51;
      goto LABEL_5;
    default:
      file_magerror(a1, "invalid type %d in magiccheck()", a3, a4, a5, a6, a7, a8, __little[6]);
      return 0xFFFFFFFFLL;
  }
}

uint64_t handle_annotation(uint64_t a1, char *__s1, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = __s1;
  v17 = *MEMORY[0x277D85DE8];
  v10 = *(a1 + 68);
  if ((v10 & 0x800) == 0 || !__s1[304])
  {
    if ((v10 & 0x1000000) != 0 && __s1[312])
    {
      if (!a3)
      {
        result = file_printf(a1, "\n- ", a3, a4, a5, a6, a7, a8, v15);
        if (result == -1)
        {
          return result;
        }
      }

      LOBYTE(v13) = v8 + 56;
    }

    else
    {
      if ((v10 & 0x10) == 0)
      {
        return 0;
      }

      v14 = __s1 + 224;
      if (!__s1[224])
      {
        return 0;
      }

      if (!a3)
      {
        result = file_printf(a1, "\n- ", a3, a4, a5, a6, a7, a8, v15);
        if (result == -1)
        {
          return result;
        }
      }

      if (varexpand(a1, v16, 0x400uLL, v14) == -1)
      {
        LOBYTE(v13) = v14;
      }

      else
      {
        v13 = v16;
      }
    }

    v12 = file_printf(a1, "%s", a3, a4, a5, a6, a7, a8, v13);
LABEL_19:
    if (v12 == -1)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return 1;
    }
  }

  if (a3 || (result = file_printf(a1, "\n- ", a3, a4, a5, a6, a7, a8, v15), result != -1))
  {
    v12 = file_printf(a1, "%.8s", a3, a4, a5, a6, a7, a8, v8 + 48);
    goto LABEL_19;
  }

  return result;
}

uint64_t mprint(uint64_t a1, char *a2)
{
  v2 = a2;
  v176 = *MEMORY[0x277D85DE8];
  v4 = a2 + 160;
  v5 = v174;
  if (varexpand(a1, v174, 0x200uLL, a2 + 160) == -1)
  {
    v5 = v4;
  }

  v12 = a1 + 136;
  switch(v2[6])
  {
    case 1:
      v144 = file_signextend(a1, v2, *(a1 + 136), v7, v8, v9, v10, v11);
      v145 = check_fmt(a1, v5);
      v14 = v145;
      if (v145 != -1)
      {
        if (v145 == 1)
        {
          snprintf(__str, 0x80uLL, "%d", v144);
          v146 = file_fmtcheck(a1, v5, "%s", 592);
          v153 = file_printf(a1, v146, v147, v148, v149, v150, v151, v152, __str);
        }

        else
        {
          v161 = file_fmtcheck(a1, v5, "%d", 596);
          v153 = file_printf(a1, v161, v162, v163, v164, v165, v166, v167, v144);
        }

        if (v153 == -1)
        {
          return 0xFFFFFFFFLL;
        }

        return *(a1 + 56) + 1;
      }

      return v14;
    case 2:
    case 7:
    case 10:
      v48 = file_signextend(a1, v2, *(a1 + 136), v7, v8, v9, v10, v11);
      v49 = check_fmt(a1, v5);
      v14 = v49;
      if (v49 != -1)
      {
        if (v49 == 1)
        {
          snprintf(__str, 0x80uLL, "%u", v48);
          v50 = file_fmtcheck(a1, v5, "%s", 614);
          v57 = file_printf(a1, v50, v51, v52, v53, v54, v55, v56, __str);
        }

        else
        {
          v123 = file_fmtcheck(a1, v5, "%u", 618);
          v57 = file_printf(a1, v123, v124, v125, v126, v127, v128, v129, v48);
        }

        if (v57 == -1)
        {
          return 0xFFFFFFFFLL;
        }

        return *(a1 + 56) + 2;
      }

      return v14;
    case 3:
    case 47:
      v77 = file_printf(a1, "%s", v6, v7, v8, v9, v10, v11, v4);
      goto LABEL_72;
    case 4:
    case 8:
    case 11:
    case 23:
      LODWORD(v2) = file_signextend(a1, v2, *(a1 + 136), v7, v8, v9, v10, v11);
      v13 = check_fmt(a1, v5);
      v14 = v13;
      if (v13 == -1)
      {
        return v14;
      }

      if (v13 == 1)
      {
        v169 = v2;
        v2 = __str;
        snprintf(__str, 0x80uLL, "%u", v169);
        v15 = "%s";
        v16 = a1;
        v17 = v5;
        v18 = 637;
      }

      else
      {
        v15 = "%u";
        v16 = a1;
        v17 = v5;
        v18 = 641;
      }

      goto LABEL_36;
    case 5:
    case 13:
    case 18:
    case 19:
      v19 = v2[4];
      if (v19 == 61 || v19 == 33)
      {
        v20 = file_fmtcheck(a1, v5, "%s", 677);
        file_printable(__str, 512, (v2 + 32), 128);
        if (file_printf(a1, v20, v21, v22, v23, v24, v25, v26, __str) == -1)
        {
          return 0xFFFFFFFFLL;
        }

        return *(a1 + 56) + v2[5];
      }

      v85 = *(a1 + 56);
      v86 = strlen((a1 + 136));
      if (!v2[32])
      {
        *(v12 + strcspn((a1 + 136), "\r\n")) = 0;
      }

      v87 = a1 + 136;
      if ((v2[29] & 0x20) != 0)
      {
        v87 = a1 + 135;
        v88 = MEMORY[0x277D85DE0];
        do
        {
          v89 = *(v87 + 1);
          if (v89 < 0)
          {
            v90 = __maskrune(*(v87 + 1), 0x4000uLL);
          }

          else
          {
            v90 = *(v88 + 4 * v89 + 60) & 0x4000;
          }

          ++v87;
        }

        while (v90);
        v91 = v87;
          ;
        }

        do
        {
          v93 = *(v91 - 2);
          if (v93 < 0)
          {
            v94 = __maskrune(*(v91 - 2), 0x4000uLL);
          }

          else
          {
            v94 = *(v88 + 4 * v93 + 60) & 0x4000;
          }

          --v91;
        }

        while (v94);
        *v91 = 0;
      }

      v95 = file_fmtcheck(a1, v5, "%s", 705);
      file_printable(__str, 512, v87, v12 - v87 + 128);
      if (file_printf(a1, v95, v96, v97, v98, v99, v100, v101, __str) != -1)
      {
        v14 = v86 + v85;
        if (v2[6] != 13)
        {
          return v14;
        }

        v108 = file_pstring_length_size(a1, *(v2 + 7), v102, v103, v104, v105, v106, v107);
        if (v108 != -1)
        {
          v14 += v108;
          return v14;
        }
      }

      return 0xFFFFFFFFLL;
    case 6:
    case 9:
    case 12:
    case 21:
      v27 = file_fmtcheck(a1, v5, "%s", 723);
      v28 = *(a1 + 136);
      v29 = 0;
      goto LABEL_16;
    case 14:
    case 15:
    case 16:
    case 22:
      v27 = file_fmtcheck(a1, v5, "%s", 733);
      v28 = *(a1 + 136);
      v29 = 1;
LABEL_16:
      v171 = file_fmttime(__str, 0x1AuLL, v28, v29);
      v42 = file_printf(a1, v27, v36, v37, v38, v39, v40, v41, v171);
      goto LABEL_65;
    case 17:
    case 20:
      v67 = *(a1 + 128);
      v68 = strndup(*(a1 + 104), v67);
      if (!v68)
      {
        file_oomem(a1, v67);
        return 0xFFFFFFFFLL;
      }

      v69 = v68;
      v70 = file_fmtcheck(a1, v5, "%s", 818);
      file_printable(__str, 512, v69, *(a1 + 128));
      LODWORD(v70) = file_printf(a1, v70, v71, v72, v73, v74, v75, v76, __str);
      free(v69);
      if (v70 == -1)
      {
        return 0xFFFFFFFFLL;
      }

      v14 = *(a1 + 120);
      if ((v2[28] & 0x10) == 0)
      {
        v14 += *(a1 + 128);
      }

      return v14;
    case 24:
    case 25:
    case 26:
    case 50:
      v30 = file_signextend(a1, v2, *(a1 + 136), v7, v8, v9, v10, v11);
      v31 = check_fmt(a1, v5);
      v14 = v31;
      if (v31 == -1)
      {
        return v14;
      }

      if (v31 == 1)
      {
        v170 = v30;
        v30 = __str;
        snprintf(__str, 0x80uLL, "%llu", v170);
        v32 = "%s";
        v33 = a1;
        v34 = v5;
        v35 = 660;
      }

      else
      {
        v32 = "%llu";
        v33 = a1;
        v34 = v5;
        v35 = 664;
      }

      goto LABEL_57;
    case 27:
    case 28:
    case 29:
      v45 = file_fmtcheck(a1, v5, "%s", 742);
      v46 = *(a1 + 136);
      v47 = 0;
      goto LABEL_29;
    case 30:
    case 31:
    case 32:
      v45 = file_fmtcheck(a1, v5, "%s", 751);
      v46 = *(a1 + 136);
      v47 = 1;
      goto LABEL_29;
    case 33:
    case 34:
    case 35:
      v58 = *(a1 + 136);
      v59 = check_fmt(a1, v5);
      v14 = v59;
      if (v59 == -1)
      {
        return v14;
      }

      if (v59 == 1)
      {
        v2 = __str;
        snprintf(__str, 0x80uLL, "%g", v58);
        v15 = "%s";
        v16 = a1;
        v17 = v5;
        v18 = 776;
LABEL_36:
        v78 = file_fmtcheck(v16, v17, v15, v18);
        v42 = file_printf(a1, v78, v79, v80, v81, v82, v83, v84, v2);
      }

      else
      {
        v173 = v58;
        v130 = file_fmtcheck(a1, v5, "%g", 780);
        v42 = file_printf(a1, v130, v131, v132, v133, v134, v135, v136, SLOBYTE(v173));
      }

LABEL_65:
      if (v42 == -1)
      {
        return 0xFFFFFFFFLL;
      }

      return *(a1 + 56) + 4;
    case 36:
    case 37:
    case 38:
      v43 = *(a1 + 136);
      v44 = check_fmt(a1, v5);
      v14 = v44;
      if (v44 == -1)
      {
        return v14;
      }

      if (v44 == 1)
      {
        v30 = __str;
        snprintf(__str, 0x80uLL, "%g", v43);
        v32 = "%s";
        v33 = a1;
        v34 = v5;
        v35 = 796;
LABEL_57:
        v109 = file_fmtcheck(v33, v34, v32, v35);
        v66 = file_printf(a1, v109, v110, v111, v112, v113, v114, v115, v30);
      }

      else
      {
        v116 = file_fmtcheck(a1, v5, "%g", 800);
        v66 = file_printf(a1, v116, v117, v118, v119, v120, v121, v122, SLOBYTE(v43));
      }

LABEL_59:
      if (v66 == -1)
      {
        return 0xFFFFFFFFLL;
      }

      return *(a1 + 56) + 8;
    case 41:
    case 45:
    case 46:
      return *(a1 + 56);
    case 42:
    case 43:
    case 44:
      v45 = file_fmtcheck(a1, v5, "%s", 760);
      v46 = *(a1 + 136);
      v47 = 2;
LABEL_29:
      v172 = file_fmttime(__str, 0x1AuLL, v46, v47);
      v66 = file_printf(a1, v45, v60, v61, v62, v63, v64, v65, v172);
      goto LABEL_59;
    case 48:
      v137 = file_fmtcheck(a1, v5, "%s", 845);
      file_printable(__str, 512, a1 + 136, 128);
      v77 = file_printf(a1, v137, v138, v139, v140, v141, v142, v143, __str);
      goto LABEL_72;
    case 49:
      file_print_guid(__str, 0x80uLL, a1 + 136);
      v154 = file_fmtcheck(a1, v5, "%s", 853);
      v77 = file_printf(a1, v154, v155, v156, v157, v158, v159, v160, __str);
LABEL_72:
      if (v77 == -1)
      {
        return 0xFFFFFFFFLL;
      }

      return *(a1 + 56);
    default:
      file_magerror(a1, "invalid m->type (%d) in mprint()", v6, v7, v8, v9, v10, v11, v2[6]);
      return 0xFFFFFFFFLL;
  }
}

uint64_t moffset(uint64_t a1, unsigned __int16 *a2, unint64_t a3, _DWORD *a4)
{
  LODWORD(v6) = 0;
  v7 = *(a2 + 6);
  switch(*(a2 + 6))
  {
    case 1:
      LODWORD(v6) = *(a1 + 56) + 1;
      goto LABEL_31;
    case 2:
    case 7:
    case 0xA:
      LODWORD(v6) = *(a1 + 56) + 2;
      goto LABEL_31;
    case 3:
    case 0x29:
    case 0x2F:
    case 0x32:
      LODWORD(v6) = *(a1 + 56);
      goto LABEL_31;
    case 4:
    case 6:
    case 8:
    case 9:
    case 0xB:
    case 0xC:
    case 0xE:
    case 0xF:
    case 0x10:
    case 0x15:
    case 0x16:
    case 0x17:
    case 0x21:
    case 0x22:
    case 0x23:
      LODWORD(v6) = *(a1 + 56) + 4;
      goto LABEL_31;
    case 5:
    case 0xD:
    case 0x12:
    case 0x13:
      v10 = *(a2 + 4);
      if (v10 == 61 || v10 == 33)
      {
        LODWORD(v6) = *(a1 + 56) + *(a2 + 5);
        goto LABEL_31;
      }

      if (!*(a2 + 32))
      {
        *(a1 + 136 + strcspn((a1 + 136), "\r\n")) = 0;
        v7 = *(a2 + 6);
      }

      LODWORD(v6) = *(a1 + 56) + strlen((a1 + 136));
      if (v7 != 13)
      {
        goto LABEL_31;
      }

      v17 = file_pstring_length_size(a1, *(a2 + 7), v11, v12, v13, v14, v15, v16);
      if (v17 == -1)
      {
        return 0xFFFFFFFFLL;
      }

      LODWORD(v6) = v6 + v17;
      goto LABEL_31;
    case 0x11:
      v6 = *(a1 + 120);
      if ((a2[14] & 0x10) == 0)
      {
        LODWORD(v6) = *(a1 + 128) + v6;
      }

      goto LABEL_31;
    case 0x14:
      v6 = *(a1 + 120);
      if ((a2[14] & 0x10) == 0)
      {
        LODWORD(v6) = v6 + *(a2 + 5);
      }

      goto LABEL_31;
    case 0x18:
    case 0x19:
    case 0x1A:
    case 0x1B:
    case 0x1C:
    case 0x1D:
    case 0x1E:
    case 0x1F:
    case 0x20:
    case 0x24:
    case 0x25:
    case 0x26:
      LODWORD(v6) = *(a1 + 56) + 8;
      goto LABEL_31;
    case 0x30:
      v25 = 0;
      v18 = *(a1 + 104);
      if (*(a1 + 112))
      {
        v19 = *(a1 + 112);
      }

      else
      {
        v19 = a3;
      }

      if (gettag(*(a1 + 104), &v25, v19) == -1)
      {
        goto LABEL_21;
      }

      v20 = getlength(v18, &v25, v19);
      if (v20 == -1)
      {
        goto LABEL_21;
      }

      v21 = v25 + (*(a2 + 3) + *(a1 + 56));
      if (!*a2)
      {
        goto LABEL_36;
      }

      v22 = v21 + v20;
      if (v22 > a3)
      {
LABEL_21:
        LODWORD(v21) = -1;
LABEL_22:
        if (*(a1 + 68))
        {
          fprintf(*MEMORY[0x277D85DF8], "Bad DER offset %d nbytes=%zu", v21, a3);
        }

        LODWORD(v6) = 0;
        result = 0;
        goto LABEL_34;
      }

      *(*(a1 + 24) + 16 * (*a2 - 1)) = v22;
LABEL_36:
      v24 = v21 == -1 || v21 > a3;
      LODWORD(v6) = v21;
      if (v24)
      {
        goto LABEL_22;
      }

LABEL_31:
      if (v6 > a3)
      {
        return 0xFFFFFFFFLL;
      }

      result = 1;
LABEL_34:
      *a4 = v6;
      return result;
    case 0x31:
      LODWORD(v6) = *(a1 + 56) + 16;
      goto LABEL_31;
    default:
      goto LABEL_31;
  }
}

uint64_t varexpand(uint64_t a1, char *a2, size_t a3, char *__s1)
{
LABEL_1:
  v8 = strstr(__s1, "${");
  if (v8)
  {
    v9 = v8;
    v10 = v8 - __s1;
    v11 = a3 > v8 - __s1;
    v12 = a3 - (v8 - __s1);
    if (v11)
    {
      memcpy(a2, __s1, v10);
      v13 = v9[2];
      if (v9[2])
      {
        if (v9[3] == 63)
        {
          v14 = &a2[v10];
          v15 = v9 + 4;
          for (i = v9 + 4; *i; ++i)
          {
            if (*i == 58)
            {
              v17 = i + 1;
              for (j = i + 1; *j; ++j)
              {
                if (*j == 125)
                {
                  if (v13 == 120)
                  {
                    v19 = (i - v15);
                    v20 = (*(a1 + 96) & 0x49) != 0 ? v19 : j - v17;
                    v11 = v12 > v20;
                    a3 = v12 - v20;
                    if (v11)
                    {
                      if ((*(a1 + 96) & 0x49) != 0)
                      {
                        v21 = v15;
                      }

                      else
                      {
                        v21 = v17;
                      }

                      memcpy(v14, v21, v20);
                      a2 = &v14[v20];
                      __s1 = j + 1;
                      goto LABEL_1;
                    }
                  }

                  return 0xFFFFFFFFLL;
                }
              }

              return 0xFFFFFFFFLL;
            }
          }
        }
      }
    }
  }

  else
  {
    v22 = strlen(__s1);
    if (v22 < a3)
    {
      v23 = v22;
      memcpy(a2, __s1, v22);
      result = 0;
      a2[v23] = 0;
      return result;
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t check_fmt(uint64_t a1, char *__s)
{
  v17 = *MEMORY[0x277D85DE8];
  if (!strchr(__s, 37))
  {
    return 0;
  }

  memset(&v15, 0, sizeof(v15));
  memset(v14, 0, sizeof(v14));
  v4 = file_regcomp(v14, "%[-0-9\\.]*s", 5);
  if (v4)
  {
    v7 = v4;
    regerror(v4, &v15, v16, 0x200uLL);
    v5 = 0xFFFFFFFFLL;
  }

  else
  {
    v5 = file_regexec(v14, __s, 0, 0) == 0;
  }

  file_regfree(v14);
  return v5;
}

char *file_fmtcheck(uint64_t a1, char *__s, const char *a3, uint64_t a4)
{
  if (!strchr(__s, 37))
  {
    return __s;
  }

  v14 = fmtcheck(__s, a3);
  if (v14 == a3)
  {
  }

  return v14;
}

unint64_t file_strncmp(unsigned __int8 *a1, char *a2, uint64_t a3, uint64_t a4, int a5)
{
  v5 = a3;
  v6 = a2;
  if ((a5 & 3) != 0)
  {
    v8 = a4;
  }

  else
  {
    v8 = a3;
  }

  if (a5)
  {
    if (a3)
    {
      v9 = a5;
      v10 = &a2[v8];
      v11 = &a2[v8];
      v12 = &a2[v8 - 1];
      v13 = 1;
      v14 = MEMORY[0x277D85DE0];
      do
      {
        if (v6 >= v10)
        {
          return v13;
        }

        v15 = *a1;
        if ((v9 & 4) != 0)
        {
          if ((v15 & 0x80) != 0)
          {
            if (__maskrune(*a1, 0x1000uLL))
            {
LABEL_11:
              v16 = *v6++;
              v17 = __tolower(v16);
              goto LABEL_18;
            }
          }

          else if ((*(v14 + 4 * v15 + 60) & 0x1000) != 0)
          {
            goto LABEL_11;
          }

          LODWORD(v15) = *a1;
        }

        if ((v9 & 8) != 0)
        {
          if ((v15 & 0x80) != 0)
          {
            if (__maskrune(v15, 0x8000uLL))
            {
LABEL_17:
              v18 = *v6++;
              v17 = __toupper(v18);
LABEL_18:
              if (v17 != v15)
              {
                return v17 - v15;
              }

              goto LABEL_43;
            }
          }

          else if ((*(v14 + 4 * v15 + 60) & 0x8000) != 0)
          {
            goto LABEL_17;
          }

          LODWORD(v15) = *a1;
        }

        if ((v9 & 1) == 0)
        {
          goto LABEL_30;
        }

        if ((v15 & 0x80) != 0)
        {
          if (!__maskrune(v15, 0x4000uLL))
          {
LABEL_29:
            LODWORD(v15) = *a1;
LABEL_30:
            if ((v9 & 2) == 0)
            {
              goto LABEL_42;
            }

            if ((v15 & 0x80) != 0)
            {
              if (!__maskrune(v15, 0x4000uLL))
              {
LABEL_41:
                LODWORD(v15) = *a1;
LABEL_42:
                v22 = *v6++;
                v23 = v22 - v15;
                if (v22 != v15)
                {
                  return v23;
                }

LABEL_43:
                ++a1;
LABEL_44:
                v24 = v6;
                goto LABEL_45;
              }
            }

            else if ((*(v14 + 4 * v15 + 60) & 0x4000) == 0)
            {
              goto LABEL_41;
            }

            ++a1;
            v20 = v11 - v6;
            do
            {
              v21 = *v6;
              if (v21 < 0)
              {
                if (!__maskrune(*v6, 0x4000uLL))
                {
                  goto LABEL_44;
                }
              }

              else if ((*(v14 + 4 * v21 + 60) & 0x4000) == 0)
              {
                goto LABEL_44;
              }

              ++v6;
              --v20;
            }

            while (v20);
LABEL_59:
            v24 = v11;
            goto LABEL_45;
          }
        }

        else if ((*(v14 + 4 * v15 + 60) & 0x4000) == 0)
        {
          goto LABEL_29;
        }

        v19 = *v6;
        if (v19 < 0)
        {
          if (!__maskrune(*v6, 0x4000uLL))
          {
            return v13;
          }
        }

        else if ((*(v14 + 4 * v19 + 60) & 0x4000) == 0)
        {
          return v13;
        }

        v25 = *++a1;
        if (v25 < 0)
        {
          v26 = __maskrune(*a1, 0x4000uLL);
        }

        else
        {
          v26 = *(v14 + 4 * v25 + 60) & 0x4000;
        }

        v24 = (v6 + 1);
        if (!v26 && v24 < v10)
        {
          v27 = v12 - v6;
          do
          {
            v28 = *v24;
            if (v28 < 0)
            {
              if (!__maskrune(*v24, 0x4000uLL))
              {
                goto LABEL_45;
              }
            }

            else if ((*(v14 + 4 * v28 + 60) & 0x4000) == 0)
            {
              goto LABEL_45;
            }

            ++v24;
            --v27;
          }

          while (v27);
          goto LABEL_59;
        }

LABEL_45:
        v6 = v24;
        --v5;
      }

      while (v5);
    }
  }

  else
  {
    while (v5)
    {
      --v5;
      v30 = *v6++;
      v29 = v30;
      v31 = *a1++;
      v13 = v29 - v31;
      if (v29 != v31)
      {
        return v13;
      }
    }
  }

  return 0;
}

void mcopy(uint64_t a1, char *__dst, int a3, int a4, uint64_t a5, unsigned int a6, unint64_t a7, uint64_t a8)
{
  if (a4)
  {
    if (a3 == 50)
    {
LABEL_3:
      *(__dst + 15) = 0;
      *(__dst + 104) = 0u;
      *(__dst + 88) = 0u;
      *(__dst + 72) = 0u;
      *(__dst + 56) = 0u;
      *(__dst + 40) = 0u;
      *(__dst + 24) = 0u;
      *(__dst + 8) = 0u;
      *__dst = a6;
      return;
    }

    goto LABEL_33;
  }

  if (a3 > 19)
  {
    switch(a3)
    {
      case 20:
        goto LABEL_25;
      case 50:
        goto LABEL_3;
      case 48:
LABEL_25:
        if (a6 <= a7)
        {
          v16 = a6;
        }

        else
        {
          v16 = a7;
        }

        *(a1 + 104) = a5 + v16;
        *(a1 + 112) = a7 - v16;
        *(a1 + 120) = v16;
        return;
    }

    goto LABEL_33;
  }

  if ((a3 - 18) < 2)
  {
    if (a6 < a7)
    {
      v10 = a5 + a7;
      v11 = a5 + a6;
      if (a3 == 18)
      {
        ++v11;
      }

      if (v11 >= v10)
      {
LABEL_21:
        __dst[127] = 0;
        return;
      }

      v12 = 0;
      v13 = (a3 == 18) + a6 + a5 + 2;
      while (1)
      {
        v14 = *(v13 - 2);
        __dst[v12] = v14;
        if (v14)
        {
          goto LABEL_18;
        }

        if (a3 != 18)
        {
          break;
        }

        if (*(v13 - 3))
        {
          goto LABEL_17;
        }

LABEL_18:
        if (v13 < v10)
        {
          v13 += 2;
          if (v12++ < 0x7E)
          {
            continue;
          }
        }

        goto LABEL_21;
      }

      if (v13 - 1 >= v10 || !*(v13 - 1))
      {
        goto LABEL_18;
      }

LABEL_17:
      __dst[v12] = 32;
      goto LABEL_18;
    }

LABEL_33:
    if (a7 <= a6)
    {
      *(__dst + 6) = 0u;
      *(__dst + 7) = 0u;
      *(__dst + 4) = 0u;
      *(__dst + 5) = 0u;
      *(__dst + 2) = 0u;
      *(__dst + 3) = 0u;
      *__dst = 0u;
      *(__dst + 1) = 0u;
    }

    else
    {
      v17 = a7 - a6;
      if (v17 >= 0x80)
      {
        v18 = 128;
      }

      else
      {
        v18 = a7 - a6;
      }

      memcpy(__dst, (a5 + a6), v18);
      if (v17 <= 0x7F)
      {

        bzero(&__dst[v17], 128 - v17);
      }
    }

    return;
  }

  if (a3 != 17)
  {
    goto LABEL_33;
  }

  if (a5 && a7 >= a6)
  {
    v19 = a6;
    v20 = *(a8 + 24);
    if ((*(a8 + 28) & 0x800) != 0)
    {
      v21 = *(a8 + 24);
    }

    else
    {
      v21 = 0;
    }

    if ((*(a8 + 28) & 0x800) != 0)
    {
      v20 = 80 * *(a8 + 24);
    }

    if (v20 - 1 >= a7 - a6)
    {
      v20 = a7 - a6;
    }

    if (v20 >= *(a1 + 274))
    {
      v20 = *(a1 + 274);
    }

    v22 = a5 + a6;
    v23 = v22 + v20;
    if (v21 && v20)
    {
      v24 = v23 - 1;
      v25 = v21 - 1;
      v26 = (a5 + a6);
      while (1)
      {
        v27 = v25;
        v28 = memchr(v26, 10, v23 - v26);
        if (!v28)
        {
          v28 = memchr(v26, 13, v23 - v26);
          if (!v28)
          {
            break;
          }
        }

        if (v28 < v24 && *v28 == 13 && v28[1] == 10)
        {
          ++v28;
        }

        if (v28 < v24 && *v28 == 10)
        {
          ++v28;
        }

        v25 = v27 - 1;
        if (v27)
        {
          v26 = v28 + 1;
          if ((v28 + 1) < v23)
          {
            continue;
          }
        }

        if (!v27)
        {
          goto LABEL_68;
        }

        break;
      }
    }

    v28 = v23;
LABEL_68:
    *(a1 + 104) = v22;
    *(a1 + 112) = &v28[-v22];
    *(a1 + 120) = v19;
    *(a1 + 128) = 0;
  }

  else
  {
    *(a1 + 104) = 0;
    *(a1 + 112) = 0;
  }
}

uint64_t mdebug(int a1, _BYTE *a2)
{
  v3 = MEMORY[0x277D85DF8];
  fprintf(*MEMORY[0x277D85DF8], "mget/%zu @%d: ", 0x80uLL, a1);
  file_showstr(*v3, a2, 128);
  fputc(10, *v3);
  v4 = *v3;

  return fputc(10, v4);
}

uint64_t cvt_id3(char a1, unsigned int a2)
{
  v2 = a2 & 0x7F | (((a2 >> 8) & 0x7F) << 7) | (a2 >> 2) & 0x1FC000 | (a2 >> 3) & 0xFE00000;
  if (a1)
  {
    fprintf(*MEMORY[0x277D85DF8], "id3 offs=%u\n", a2 & 0x7F | (((a2 >> 8) & 0x7F) << 7) | (a2 >> 2) & 0x1FC000 | (a2 >> 3) & 0xFE00000);
  }

  return v2;
}

uint64_t cvt_16(_WORD *a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  if (v2)
  {
    v3 = *(a2 + 9) & 7;
    if (v3 <= 3)
    {
      if ((*(a2 + 9) & 7u) > 1)
      {
        if (v3 == 2)
        {
          v4 = *a1 ^ v2;
        }

        else
        {
          v4 = *a1 + v2;
        }
      }

      else if ((*(a2 + 9) & 7) != 0)
      {
        v4 = *a1 | v2;
      }

      else
      {
        v4 = *a1 & v2;
      }

      goto LABEL_19;
    }

    if ((*(a2 + 9) & 7u) <= 5)
    {
      if (v3 == 4)
      {
        v4 = *a1 - v2;
      }

      else
      {
        v4 = *a1 * v2;
      }

      goto LABEL_19;
    }

    if (v3 == 6)
    {
      if (*(a2 + 24))
      {
        v4 = *a1 / *(a2 + 24);
LABEL_19:
        *a1 = v4;
        goto LABEL_20;
      }
    }

    else if (*(a2 + 24))
    {
      v4 = *a1 % *(a2 + 24);
      goto LABEL_19;
    }

    return 0xFFFFFFFFLL;
  }

LABEL_20:
  v5 = 0;
  if ((*(a2 + 9) & 0x40) != 0)
  {
    *a1 = ~*a1;
  }

  return v5;
}

uint64_t cvt_32(_DWORD *a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  if (v2)
  {
    v3 = *(a2 + 9) & 7;
    if (v3 <= 3)
    {
      if ((*(a2 + 9) & 7u) > 1)
      {
        if (v3 == 2)
        {
          v4 = *a1 ^ v2;
        }

        else
        {
          v4 = *a1 + v2;
        }
      }

      else if ((*(a2 + 9) & 7) != 0)
      {
        v4 = *a1 | v2;
      }

      else
      {
        v4 = *a1 & v2;
      }

      goto LABEL_19;
    }

    if ((*(a2 + 9) & 7u) <= 5)
    {
      if (v3 == 4)
      {
        v4 = *a1 - v2;
      }

      else
      {
        v4 = *a1 * v2;
      }

      goto LABEL_19;
    }

    if (v3 == 6)
    {
      if (v2)
      {
        v4 = *a1 / v2;
LABEL_19:
        *a1 = v4;
        goto LABEL_20;
      }
    }

    else if (v2)
    {
      v4 = *a1 % v2;
      goto LABEL_19;
    }

    return 0xFFFFFFFFLL;
  }

LABEL_20:
  v5 = 0;
  if ((*(a2 + 9) & 0x40) != 0)
  {
    *a1 = ~*a1;
  }

  return v5;
}

uint64_t *cvt_64(uint64_t *result, uint64_t a2)
{
  v2 = *(a2 + 24);
  if (v2)
  {
    v3 = *(a2 + 9) & 7;
    v4 = *result;
    if (v3 > 3)
    {
      if ((*(a2 + 9) & 7u) > 5)
      {
        if (v3 == 6)
        {
          v7 = v4 / v2;
        }

        else
        {
          v7 = v4 % v2;
        }
      }

      else
      {
        v8 = v4 - v2;
        v7 = v4 * v2;
        if (v3 == 4)
        {
          v7 = v8;
        }
      }
    }

    else
    {
      v5 = v4 ^ v2;
      if (v3 != 2)
      {
        v5 = v4 + v2;
      }

      v6 = v4 & v2;
      v7 = v4 | v2;
      if ((*(a2 + 9) & 7) == 0)
      {
        v7 = v6;
      }

      if ((*(a2 + 9) & 7u) > 1)
      {
        v7 = v5;
      }
    }

    *result = v7;
  }

  if ((*(a2 + 9) & 0x40) != 0)
  {
    *result = ~*result;
  }

  return result;
}

float *cvt_float(float *result, uint64_t a2)
{
  v2 = *(a2 + 24);
  if (v2)
  {
    v3 = *(a2 + 9) & 7;
    if (v3 > 4)
    {
      if (v3 == 5)
      {
        v4 = *result * v2;
      }

      else
      {
        if (v3 != 6)
        {
          return result;
        }

        v4 = *result / v2;
      }
    }

    else if (v3 == 3)
    {
      v4 = *result + v2;
    }

    else
    {
      if (v3 != 4)
      {
        return result;
      }

      v4 = *result - v2;
    }

    *result = v4;
  }

  return result;
}

double *cvt_double(double *result, uint64_t a2)
{
  v2 = *(a2 + 24);
  if (v2)
  {
    v3 = *(a2 + 9) & 7;
    if (v3 > 4)
    {
      if (v3 == 5)
      {
        v4 = *result * v2;
      }

      else
      {
        if (v3 != 6)
        {
          return result;
        }

        v4 = *result / v2;
      }
    }

    else if (v3 == 3)
    {
      v4 = *result + v2;
    }

    else
    {
      if (v3 != 4)
      {
        return result;
      }

      v4 = *result - v2;
    }

    *result = v4;
  }

  return result;
}

int vasprintf(char **a1, const char *a2, va_list a3)
{
  v17 = a3;
  v13 = 0;
  *ptr = 0u;
  v12 = 0u;
  v10 = a2;
  v16 = 0;
  v14 = 2147483646;
  v15 = a3;
  if (!a2)
  {
    v10 = "(null)";
  }

  ptr[0] = 0;
  v12 = 0uLL;
  v13 = 0;
  v4 = malloc_type_realloc(0, 0x800uLL, 0x100004077774924uLL);
  if (v4)
  {
    ptr[1] = v4;
    *&v12 = 2048;
    v4[2047] = 1;
    ptr[0] = v4;
    while (*v10)
    {
      if (dispatch(&v10) == -1)
      {
LABEL_14:
        free(ptr[0]);
        goto LABEL_15;
      }

      if (*(&v12 + 1) >= v14)
      {
        v5 = ptr[0] + v14;
        goto LABEL_11;
      }
    }

    v5 = ptr[1];
LABEL_11:
    *v5 = 0;
    v6 = *(&v12 + 1);
    v7 = ptr[0] + *(&v12 + 1);
    while (*v10)
    {
      *(&v12 + 1) = 0;
      ptr[1] = v7;
      if (dispatch(&v10) == -1)
      {
        goto LABEL_14;
      }
    }

    ptr[0] = malloc_type_realloc(ptr[0], v6 + 1, 0x100004077774924uLL);
    if (ptr[0])
    {
      result = v13;
      if (v13 != -1)
      {
        v8 = ptr[0];
        goto LABEL_16;
      }
    }
  }

  else
  {
    ptr[0] = 0;
  }

LABEL_15:
  v8 = 0;
  result = -1;
LABEL_16:
  *a1 = v8;
  return result;
}

uint64_t dispatch(uint64_t a1)
{
  *&v50[22] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  if (*v2 != 37)
  {
    v8 = strcspn(v2, "%");
    result = realloc_buff(a1, v8);
    if (result == -1)
    {
      return result;
    }

    memcpy(*(a1 + 16), *a1, v8);
    result = 0;
    *a1 += v8;
    *(a1 + 16) += v8;
    v6 = *(a1 + 32);
    v7 = vdupq_n_s64(v8);
LABEL_7:
    *(a1 + 32) = vaddq_s64(v6, v7);
    return result;
  }

  v3 = v2 + 1;
  *a1 = v2 + 1;
  v4 = v2[1];
  if (v4 == 37)
  {
    result = realloc_buff(a1, 1);
    if (result == -1)
    {
      return result;
    }

    result = 0;
    *(*(a1 + 16))++ = 37;
    ++*a1;
    v6 = *(a1 + 32);
    v7 = vdupq_n_s64(1uLL);
    goto LABEL_7;
  }

  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  for (i = v2 + 2; ; ++i)
  {
    v15 = i - 1;
    if (v4 <= 0x2Au)
    {
      break;
    }

    switch(v4)
    {
      case '0':
        v9 = 1;
        break;
      case '-':
        v12 = 1;
        break;
      case '+':
        v13 = 1;
        break;
      default:
        goto LABEL_28;
    }

LABEL_21:
    *a1 = i;
    v16 = *i;
    LOBYTE(v4) = v16;
  }

  if (v4 <= 0x22u)
  {
    if (v4 == 32)
    {
      v11 = 1;
      goto LABEL_21;
    }

    if (!v4)
    {
      goto LABEL_59;
    }

    goto LABEL_28;
  }

  if (v4 == 35)
  {
    v10 = 1;
    goto LABEL_21;
  }

  if (v4 != 42)
  {
LABEL_28:
    if (v4 - 48 > 9)
    {
      v19 = -1;
    }

    else
    {
      v20 = 0;
      do
      {
        v15 = i;
        v20 = 10 * v20 + v4 - 48;
        *a1 = i;
        v21 = *i++;
        LOBYTE(v4) = v21;
      }

      while ((v21 - 48) < 0xA);
      if (v20 >= 0x7FFF)
      {
        v19 = 0x7FFF;
      }

      else
      {
        v19 = v20;
      }
    }

    goto LABEL_35;
  }

  *a1 = i;
  v17 = *(a1 + 56);
  *(a1 + 56) = v17 + 2;
  v18 = *v17;
  if (v18 >= 0x3FFF)
  {
    v19 = 0x3FFF;
  }

  else
  {
    v19 = v18;
  }

  LOBYTE(v4) = *i;
  v15 = i;
LABEL_35:
  if (v4 != 46)
  {
    if (v4)
    {
      v46 = -1;
      goto LABEL_49;
    }

LABEL_59:
    result = 0;
LABEL_60:
    *a1 = v3;
    return result;
  }

  *a1 = v15 + 1;
  v4 = v15[1];
  if (v4 == 42)
  {
    *a1 = v15 + 2;
    v22 = *(a1 + 56);
    *(a1 + 56) = v22 + 2;
    v23 = *v22;
    if (v23 >= 0x3FFF)
    {
      v23 = 0x3FFF;
    }

    v46 = v23;
    v4 = v15[2];
    v15 += 2;
    if (!v4)
    {
      goto LABEL_59;
    }
  }

  else
  {
    if ((v4 - 58) < 0xFFFFFFF6)
    {
      goto LABEL_59;
    }

    v24 = 0;
    v25 = v15 + 2;
    do
    {
      v15 = v25;
      v24 = 10 * v24 + v4 - 48;
      *a1 = v25;
      v26 = *v25++;
      v4 = v26;
    }

    while ((v26 - 48) < 0xA);
    if (v24 >= 0x7FFF)
    {
      v24 = 0x7FFF;
    }

    v46 = v24;
    if (!v4)
    {
      goto LABEL_59;
    }
  }

LABEL_49:
  v27 = v4;
  if (v4 - 76 > 0x2E || ((1 << (v4 - 76)) & 0x410110000001) == 0)
  {
    v27 = -1;
  }

  else
  {
    v29 = v15 + 1;
    *a1 = v15 + 1;
    if (v4 != 108)
    {
      goto LABEL_56;
    }

    v4 = *v29;
    if (v4 == 108)
    {
      v29 = v15 + 2;
      *a1 = v15 + 2;
      v27 = 76;
LABEL_56:
      v4 = *v29;
    }

    else
    {
      v27 = 108;
    }

    v15 = v29;
    if (!v4)
    {
      goto LABEL_59;
    }
  }

  v47 = v19;
  result = memchr("diouxXfegEGcspn", v4, 0x10uLL);
  if (!result)
  {
    goto LABEL_60;
  }

  *a1 = v15 + 1;
  v48 = 37;
  if (v13)
  {
    v49 = 43;
    v35 = v50;
  }

  else
  {
    v35 = &v49;
  }

  if (v12)
  {
    *v35++ = 45;
  }

  if (v11)
  {
    *v35++ = 32;
  }

  if (v10)
  {
    *v35++ = 35;
  }

  if (v9)
  {
    *v35++ = 48;
  }

  if (v47 != -1)
  {
    __sprintf_chk(v35, 0, 0x17uLL, "%i", v47);
    v35 += strlen(v35);
  }

  if (v46 != -1)
  {
    *v35 = 46;
    v36 = v35 + 1;
    sprintf(v36, "%i", v46);
    v35 = &v36[strlen(v36)];
  }

  v37 = v47;
  if (v27 != -1)
  {
    if (v27 == 76 && (v38 = memchr("diouxX", v4, 7uLL), v37 = v47, v38))
    {
      *v35 = 27756;
      v35 += 2;
    }

    else
    {
      *v35++ = v27;
    }
  }

  *v35 = v4;
  v35[1] = 0;
  v39 = (v46 + v37) & ~((v46 + v37) >> 31);
  if (v4 > 0x68u)
  {
    if (v4 <= 0x6Fu)
    {
      if (v4 == 105)
      {
        goto LABEL_109;
      }

      if (v4 == 110)
      {
        if (v27 != -1)
        {
          goto LABEL_59;
        }

        v44 = *(a1 + 56);
        *(a1 + 56) = v44 + 1;
        v45 = *v44;
        if (!v45)
        {
          return 0xFFFFFFFFLL;
        }

        result = 0;
        *v45 = *(a1 + 40);
        return result;
      }

      if (v4 != 111)
      {
        goto LABEL_59;
      }
    }

    else
    {
      if (v4 <= 0x74u)
      {
        if (v4 != 112)
        {
          if (v4 != 115)
          {
            goto LABEL_59;
          }

          v40 = *(a1 + 56);
          *(a1 + 56) = v40 + 1;
          return type_s(a1, v37, v46, &v48, *v40, v32, v33, v34);
        }

        if (v27 != -1)
        {
          goto LABEL_59;
        }

        goto LABEL_119;
      }

      if (v4 != 120 && v4 != 117)
      {
        goto LABEL_59;
      }
    }

LABEL_109:
    if (v27 > 107)
    {
      if (v27 != 108 && v27 != 116 && v27 != 122)
      {
        goto LABEL_59;
      }
    }

    else
    {
      if (v27 == -1)
      {
LABEL_124:
        v43 = *(a1 + 56);
        *(a1 + 56) = v43 + 2;
        LODWORD(v43) = *v43;
        return print_it(a1, v39, &v48, v30, v31, v32, v33, v34, v43);
      }

      if (v27 != 76)
      {
        if (v27 != 104)
        {
          goto LABEL_59;
        }

        goto LABEL_124;
      }
    }

LABEL_119:
    v42 = *(a1 + 56);
    *(a1 + 56) = v42 + 1;
    v43 = *v42;
    return print_it(a1, v39, &v48, v30, v31, v32, v33, v34, v43);
  }

  if (v4 > 0x62u)
  {
    if (v4 - 101 < 3)
    {
      goto LABEL_96;
    }

    if (v4 != 99)
    {
      if (v4 != 100)
      {
        goto LABEL_59;
      }

      goto LABEL_109;
    }

    if (v27 != -1)
    {
      goto LABEL_59;
    }

    goto LABEL_124;
  }

  if (v4 != 69 && v4 != 71)
  {
    if (v4 != 88)
    {
      goto LABEL_59;
    }

    goto LABEL_109;
  }

LABEL_96:
  if (v27 != 108 && v27 != 76 && v27 != -1)
  {
    goto LABEL_59;
  }

  v41 = *(a1 + 56);
  *(a1 + 56) = v41 + 1;
  return print_it(a1, v39, &v48, v30, v31, v32, v33, v34, *v41);
}

uint64_t realloc_buff(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32) + a2;
  if ((v2 + 1024) <= *(a1 + 24))
  {
    return 0;
  }

  v4 = v2 + 2048;
  v5 = malloc_type_realloc(*(a1 + 8), v2 + 2048, 0x100004077774924uLL);
  if (v5)
  {
    v6 = v5;
    result = 0;
    v8 = &v6[*(a1 + 16) - *(a1 + 8)];
    *(a1 + 8) = v6;
    *(a1 + 16) = v8;
    *(a1 + 24) = v4;
    v6[v4 - 1] = 1;
  }

  else
  {
    *(a1 + 8) = 0;
    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t print_it(uint64_t a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  result = realloc_buff(a1, a2);
  if (result != -1)
  {
    result = vsprintf(*(a1 + 16), a3, &a9);
    if (*(*(a1 + 8) + *(a1 + 24) - 1) != 1)
    {
      __assert_rtn("print_it", "vasprintf.c", 216, "(s->buffer_base)[s->buffer_len - 1] == 1");
    }

    if (result != -1)
    {
      *(a1 + 40) += result;
      v12 = *(a1 + 16);
      v13 = strlen(v12);
      result = 0;
      *(a1 + 32) += v13;
      *(a1 + 16) = &v12[v13];
    }
  }

  return result;
}

uint64_t type_s(uint64_t a1, int a2, int a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a5)
  {
    return print_it(a1, 6, "(null)", a4, 0, a6, a7, a8, 0);
  }

  v8 = 0;
  do
  {
    v9 = v8;
    if (a3 == v8)
    {
      break;
    }

    ++v8;
  }

  while (*(a5 + v9));
  v10 = a2;
  if (v9 > a2)
  {
    v10 = v9;
  }

  if (a2 == -1)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  return print_it(a1, v11, a4, a4, a5, a6, a7, a8, a5);
}

BOOL json_parse(unsigned __int8 **a1, unsigned __int8 *a2, uint64_t a3, unint64_t a4)
{
  v8 = *a1;
  if (*a1 < a2)
  {
    while (1)
    {
      v9 = *v8;
      v10 = v9 > 0x20;
      v11 = (1 << v9) & 0x100002600;
      if (v10 || v11 == 0)
      {
        break;
      }

      if (++v8 == a2)
      {
        v8 = a2;
        break;
      }
    }
  }

  if (v8 == a2)
  {
    v13 = 0;
    *a1 = v8;
    return v13;
  }

  if (a4 > 0x14)
  {
    return 0;
  }

  v14 = v8 + 1;
  v46 = v8 + 1;
  v15 = *v8;
  if (v15 > 0x6D)
  {
    switch(v15)
    {
      case 'n':
        if (v14 < a2)
        {
          v29 = -3;
          while (v29)
          {
            ++v14;
            ++v29;
            if (v14 >= a2)
            {
              goto LABEL_81;
            }
          }

          goto LABEL_82;
        }

        goto LABEL_81;
      case 't':
        if (v14 < a2)
        {
          v34 = -3;
          while (v34)
          {
            ++v14;
            ++v34;
            if (v14 >= a2)
            {
              goto LABEL_81;
            }
          }

          goto LABEL_82;
        }

LABEL_81:
        v21 = 0;
LABEL_83:
        v46 = v14;
        v28 = 1;
        goto LABEL_111;
      case '{':
        v47 = v8 + 1;
        while (1)
        {
          if (v14 >= a2)
          {
            goto LABEL_84;
          }

          while (1)
          {
            v17 = *v14;
            v10 = v17 > 0x20;
            v18 = (1 << v17) & 0x100002600;
            if (v10 || v18 == 0)
            {
              break;
            }

            if (++v14 == a2)
            {
              v14 = a2;
              break;
            }
          }

          v47 = v14;
          if (v14 == a2)
          {
            goto LABEL_84;
          }

          v20 = v14 + 1;
          if (*v14 == 125)
          {
            break;
          }

          v47 = v14 + 1;
          if (*v14 != 34)
          {
            goto LABEL_90;
          }

          v21 = json_parse_string(&v47, a2);
          v14 = v47;
          if (!v21)
          {
            goto LABEL_97;
          }

          if (v47 < a2)
          {
            while (1)
            {
              v22 = *v14;
              v10 = v22 > 0x20;
              v23 = (1 << v22) & 0x100002600;
              if (v10 || v23 == 0)
              {
                break;
              }

              if (++v14 == a2)
              {
                v14 = a2;
                break;
              }
            }
          }

          if (v14 == a2)
          {
            goto LABEL_84;
          }

          v20 = v14 + 1;
          v47 = v14 + 1;
          if (*v14 != 58)
          {
LABEL_90:
            v21 = 0;
            goto LABEL_96;
          }

          v21 = json_parse(&v47, a2, a3, a4 + 2);
          v14 = v47;
          if (!v21)
          {
            goto LABEL_97;
          }

          if (v47 == a2)
          {
            goto LABEL_84;
          }

          v26 = *v47;
          v14 = v47 + 1;
          v25 = v26;
          ++v47;
          if (v26 != 44)
          {
            if (v25 == 125)
            {
              v21 = 1;
              goto LABEL_97;
            }

LABEL_84:
            v21 = 0;
            goto LABEL_97;
          }
        }

        v21 = 1;
LABEL_96:
        v14 = v20;
LABEL_97:
        v46 = v14;
        v28 = 3;
        goto LABEL_111;
    }

LABEL_63:
    v46 = v8;
    v30 = v8 + 1;
    if (*v8 != 45)
    {
      v30 = v8;
    }

    if (v30 < a2 && *v30 - 58 >= 0xFFFFFFF6)
    {
      v35 = &v8[(*v8 == 45) + 1];
      while (v35 < a2)
      {
        v36 = *v35++;
        if ((v36 - 58) < 0xFFFFFFF6)
        {
          v30 = v35 - 1;
          v21 = 1;
          goto LABEL_68;
        }
      }

      v21 = 1;
      v30 = a2;
    }

    else
    {
      v21 = 0;
    }

LABEL_68:
    if (v30 == a2)
    {
      v31 = v30;
    }

    else
    {
      v31 = v30 + 1;
      if (*v30 != 46)
      {
        v31 = v30;
      }

      if (v31 < a2 && *v31 - 58 >= 0xFFFFFFF6)
      {
        v32 = &v30[(*v30 == 46) + 1];
        while (v32 < a2)
        {
          v33 = *v32++;
          if ((v33 - 58) < 0xFFFFFFF6)
          {
            v31 = v32 - 1;
            v21 = 1;
            goto LABEL_99;
          }
        }

        v21 = 1;
        v31 = a2;
      }

LABEL_99:
      if (v31 != a2 && v21)
      {
        if ((*v31 | 0x20) == 0x65)
        {
          v37 = v31 + 1;
          if (v31 + 1 == a2)
          {
            goto LABEL_108;
          }

          v38 = *v37;
          if (v38 == 45 || v38 == 43)
          {
            v37 = v31 + 2;
          }

          if (v37 >= a2 || *v37 - 58 < 0xFFFFFFF6)
          {
LABEL_108:
            v21 = 0;
            v31 = v37;
          }

          else
          {
            v44 = &a2[~v37];
            v31 = v37;
            v21 = 1;
            while (v44)
            {
              v45 = *++v31;
              --v44;
              if ((v45 - 58) < 0xFFFFFFF6)
              {
                goto LABEL_110;
              }
            }

            v21 = 1;
            v31 = a2;
          }
        }

        else
        {
          v21 = 1;
        }
      }
    }

LABEL_110:
    v46 = v31;
    v28 = 2;
    goto LABEL_111;
  }

  if (v15 != 34)
  {
    if (v15 == 91)
    {
      while (1)
      {
        v47 = v14;
        if (v14 >= a2)
        {
          goto LABEL_56;
        }

        if (*v14 == 93)
        {
          goto LABEL_92;
        }

        v21 = json_parse(&v47, a2, a3, a4 + 2);
        v14 = v47;
        if (!v21)
        {
          goto LABEL_93;
        }

        if (v47 == a2)
        {
          goto LABEL_56;
        }

        v27 = *v47;
        if (v27 != 44)
        {
          break;
        }

        v14 = v47 + 1;
      }

      if (v27 != 93)
      {
LABEL_56:
        v21 = 0;
        goto LABEL_93;
      }

LABEL_92:
      ++*(a3 + 40);
      ++v14;
      v21 = 1;
LABEL_93:
      v28 = 0;
      v46 = v14;
      goto LABEL_111;
    }

    if (v15 == 102)
    {
      if (v14 < a2)
      {
        v16 = -4;
        while (v16)
        {
          ++v14;
          ++v16;
          if (v14 >= a2)
          {
            goto LABEL_81;
          }
        }

LABEL_82:
        v21 = 1;
        goto LABEL_83;
      }

      goto LABEL_81;
    }

    goto LABEL_63;
  }

  v21 = json_parse_string(&v46, a2);
  v28 = 4;
LABEL_111:
  if (v21)
  {
    ++*(a3 + 8 * v28);
  }

  v39 = v46;
  if (v46 < a2)
  {
    while (1)
    {
      v40 = *v39;
      v10 = v40 > 0x20;
      v41 = (1 << v40) & 0x100002600;
      if (v10 || v41 == 0)
      {
        break;
      }

      if (++v39 == a2)
      {
        v39 = a2;
        break;
      }
    }
  }

  *a1 = v39;
  if (a4)
  {
    v13 = v21;
  }

  else
  {
    v13 = 0;
  }

  if (!a4 && v21)
  {
    return *(a3 + 40) || *(a3 + 24) != 0;
  }

  return v13;
}