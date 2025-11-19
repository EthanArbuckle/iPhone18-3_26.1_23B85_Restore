uint64_t sub_1D52ACEC8()
{
  OUTLINED_FUNCTION_91();
  v2 = *(v1 + 122);
  OUTLINED_FUNCTION_48_30();
  v3 = OUTLINED_FUNCTION_6_93();
  sub_1D51D29D8(v3, v4, v5, v6, v0);
  OUTLINED_FUNCTION_351();
  v7 = *(v1 + 72);

  OUTLINED_FUNCTION_47_34();
  v9 = *(v1 + 200);

  return v8(v9, v2 & 1);
}

uint64_t sub_1D52ACF54(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_12_6(sub_1D52ACF70, v1);
}

uint64_t sub_1D52ACF70()
{
  OUTLINED_FUNCTION_60();
  v1 = v0[2];
  v2 = v0[3];

  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = sub_1D52AD014;
  v4 = v0[2];
  v5 = v0[3];

  return sub_1D52AD208(v5, v4);
}

uint64_t sub_1D52AD014()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  v3 = v2;
  v4 = *v1;
  v5 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v6 = v5;
  v7 = *(v4 + 32);
  *v6 = *v1;
  *(v5 + 40) = v0;

  v8 = *(v4 + 24);
  if (!v0)
  {
    *(v5 + 48) = v3;
  }

  OUTLINED_FUNCTION_153_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D52AD13C()
{
  OUTLINED_FUNCTION_60();
  v2 = v0[2];
  v1 = v0[3];

  OUTLINED_FUNCTION_50();
  v4 = v0[6];

  return v3(v4);
}

uint64_t sub_1D52AD1A4()
{
  OUTLINED_FUNCTION_60();
  v2 = v0[2];
  v1 = v0[3];

  OUTLINED_FUNCTION_55();
  v4 = v0[5];

  return v3();
}

uint64_t sub_1D52AD208(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = 0xD000000000000013;
  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 24) = 0x80000001D5689D90;
  *(v2 + 48) = 0;
  v3 = swift_task_alloc();
  *(v2 + 88) = v3;
  *v3 = v2;
  v3[1] = sub_1D52AD2E4;

  return (sub_1D52AC37C)(v2 + 16);
}

uint64_t sub_1D52AD2E4()
{
  OUTLINED_FUNCTION_80();
  v3 = v2;
  OUTLINED_FUNCTION_59_1();
  v5 = v4;
  OUTLINED_FUNCTION_44();
  *v6 = v5;
  v8 = *(v7 + 88);
  v9 = *v1;
  *v6 = *v1;
  *(v5 + 96) = v10;

  if (v0)
  {
    v11 = *(v9 + 8);

    return v11();
  }

  else
  {
    *(v5 + 49) = v3;
    OUTLINED_FUNCTION_10_84();

    return MEMORY[0x1EEE6DFA0](v13, v14, v15);
  }
}

void sub_1D52AD41C()
{
  OUTLINED_FUNCTION_160();
  if (*(v0 + 49))
  {
    sub_1D5615E08();
    OUTLINED_FUNCTION_71_17();
  }

  else
  {
    v1 = *(v0 + 96);
    v2 = *(v0 + 80);
    *(v0 + 56) = v1;
    *(v0 + 64) = sub_1D52ADF94(v1, v2);
    v3 = *(v0 + 96);
    *(v0 + 104) = MEMORY[0x1E69E7CC0];
    sub_1D52AE098(v3);
    *(v0 + 112) = v4;
    *(v0 + 120) = v5;
    if (!v4)
    {
      v10 = *(v0 + 64);
      if (*(v10 + 16))
      {

        sub_1D552B9CC(0, 0, v10);
        OUTLINED_FUNCTION_62_27();
        sub_1D52AE748();
        v11 = OUTLINED_FUNCTION_121_0();
        OUTLINED_FUNCTION_64_20(v11, v12);
        OUTLINED_FUNCTION_55();
        OUTLINED_FUNCTION_71_17();

        __asm { BRAA            X1, X16 }
      }

      v15 = *(v0 + 64);

      OUTLINED_FUNCTION_50();
      OUTLINED_FUNCTION_71_17();

      __asm { BRAA            X2, X16 }
    }

    v6 = swift_task_alloc();
    *(v0 + 128) = v6;
    *v6 = v0;
    OUTLINED_FUNCTION_34_44(v6);
    OUTLINED_FUNCTION_71_17();

    sub_1D54DF868(v7, v8);
  }
}

uint64_t sub_1D52AD5EC()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  v3 = v2;
  OUTLINED_FUNCTION_59_1();
  v5 = v4;
  OUTLINED_FUNCTION_44();
  *v6 = v5;
  v8 = *(v7 + 128);
  v9 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v10 = v9;
  v5[17] = v3;

  if (v0)
  {
    v11 = v5[13];

    v5[25] = v0;
    OUTLINED_FUNCTION_15_73();
    OUTLINED_FUNCTION_10_84();
    OUTLINED_FUNCTION_153_1();

    return MEMORY[0x1EEE6DFA0](v12, v13, v14);
  }

  else
  {
    v17 = v5[14];
    v16 = v5[15];
    v18 = swift_task_alloc();
    v5[18] = v18;
    *v18 = v9;
    v18[1] = sub_1D52AD75C;
    OUTLINED_FUNCTION_153_1();

    return sub_1D52AE144(v19, v20, v21, v22, v23);
  }
}

uint64_t sub_1D52AD75C()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v6 = *(v5 + 144);
  v7 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v8 = v7;
  v3[19] = v0;

  if (v0)
  {
    v9 = v3[9];

    return MEMORY[0x1EEE6DFA0](sub_1D52AD9D0, v9, 0);
  }

  else
  {
    v10 = swift_task_alloc();
    v3[20] = v10;
    *v10 = v7;
    v10[1] = sub_1D52AD8B0;
    v11 = v3[17];

    return sub_1D54DFEC4();
  }
}

uint64_t sub_1D52AD8B0()
{
  OUTLINED_FUNCTION_80();
  v2 = *v1;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v5 = *(v2 + 160);
  *v4 = *v1;
  *(v3 + 168) = v0;

  v6 = *(v2 + 72);
  if (v0)
  {
    v7 = sub_1D52ADC4C;
  }

  else
  {
    v7 = sub_1D52ADA40;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, 0);
}

uint64_t sub_1D52AD9D0()
{
  OUTLINED_FUNCTION_60();
  *(v0 + 176) = *(v0 + 152);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_46_29(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_43_31(v2);

  return sub_1D54E0170();
}

uint64_t sub_1D52ADA40()
{
  OUTLINED_FUNCTION_60();
  v1 = *(v0 + 136);

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1D52ADAA0()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  v1 = *(v0 + 104);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *(v0 + 104);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v34 = *(v3 + 16);
    v35 = *(v0 + 104);
    sub_1D4F00D10();
    v3 = v36;
  }

  v4 = *(v3 + 16);
  if (v4 >= *(v3 + 24) >> 1)
  {
    OUTLINED_FUNCTION_61_27();
    sub_1D4F00D10();
    v3 = v37;
  }

  v5 = *(v0 + 112);
  *(v3 + 16) = v4 + 1;
  *(v3 + 16 * v4 + 32) = v5;
  v6 = *(v0 + 56);
  *(v0 + 104) = v3;
  sub_1D52AE098(v6);
  *(v0 + 112) = v7;
  *(v0 + 120) = v8;
  if (v7)
  {
    v9 = swift_task_alloc();
    *(v0 + 128) = v9;
    *v9 = v0;
    OUTLINED_FUNCTION_34_44();
    OUTLINED_FUNCTION_153_1();

    return sub_1D54DF868(v10, v11);
  }

  else
  {
    v14 = *(v0 + 64);
    if (*(v14 + 16))
    {

      sub_1D552B9CC(0, 0, v14);
      OUTLINED_FUNCTION_62_27();
      sub_1D52AE748();
      v15 = OUTLINED_FUNCTION_121_0();
      OUTLINED_FUNCTION_64_20(v15, v16);
      OUTLINED_FUNCTION_55();
      OUTLINED_FUNCTION_153_1();

      return v18(v17, v18, v19, v20, v21, v22, v23, v24);
    }

    else
    {
      v25 = *(v0 + 64);

      OUTLINED_FUNCTION_50();
      OUTLINED_FUNCTION_153_1();

      return v28(v26, v27, v28, v29, v30, v31, v32, v33);
    }
  }
}

uint64_t sub_1D52ADC4C()
{
  OUTLINED_FUNCTION_60();
  *(v0 + 176) = *(v0 + 168);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_46_29(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_43_31(v2);

  return sub_1D54E0170();
}

uint64_t sub_1D52ADCBC()
{
  OUTLINED_FUNCTION_80();
  v2 = *v1;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v5 = *(v2 + 184);
  *v4 = *v1;
  *(v3 + 192) = v0;

  v6 = *(v2 + 72);
  if (v0)
  {
    v7 = sub_1D52ADE58;
  }

  else
  {
    v7 = sub_1D52ADDDC;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, 0);
}

uint64_t sub_1D52ADDDC()
{
  OUTLINED_FUNCTION_80();
  v1 = v0[22];
  v2 = v0[17];
  v3 = v0[13];
  swift_willThrow();

  v0[25] = v0[22];
  OUTLINED_FUNCTION_15_73();
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1D52ADE58()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  v1 = v0[24];
  v2 = v0[22];
  v3 = v0[17];
  v4 = v0[13];
  sub_1D52AF5B8();
  v5 = OUTLINED_FUNCTION_121_0();
  *v6 = v1;
  v6[1] = v2;
  swift_willThrow();

  v0[25] = v5;
  OUTLINED_FUNCTION_15_73();
  OUTLINED_FUNCTION_57_1();
  OUTLINED_FUNCTION_153_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D52ADEF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_160();
  v14 = v13[25];
  sub_1D552B9CC(v13[14], v13[15], v13[8]);
  OUTLINED_FUNCTION_62_27();
  v16 = v15 & 1;
  sub_1D52AE748();
  OUTLINED_FUNCTION_121_0();
  *v17 = v11;
  v17[1] = v10;
  v17[2] = v16;
  v17[3] = v12;
  v17[4] = v14;
  swift_willThrow();
  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_14_47();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10);
}

uint64_t sub_1D52ADF94(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v4 = (a2 + 32);
  v5 = MEMORY[0x1E69E7CC0];
  do
  {
    v11 = *v4;
    if ((*(*(v4 + 1) + 8))() >= a1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = *(v5 + 16);
        sub_1D4F00D10();
        v5 = v8;
      }

      v6 = *(v5 + 16);
      if (v6 >= *(v5 + 24) >> 1)
      {
        sub_1D4F00D10();
        v5 = v9;
      }

      *(v5 + 16) = v6 + 1;
      *(v5 + 16 * v6 + 32) = v11;
    }

    ++v4;
    --v2;
  }

  while (v2);
  return v5;
}

void sub_1D52AE098(uint64_t a1)
{
  v3 = 0;
  v4 = *v1;
  v5 = *(*v1 + 16);
  v6 = *v1 + 40;
  while (v5 != v3)
  {
    if (v3 >= *(v4 + 16))
    {
      __break(1u);
      return;
    }

    v7 = *(v6 - 8);
    if ((*(*v6 + 8))() == a1)
    {
      sub_1D525CA60(v3);
      return;
    }

    ++v3;
    v6 += 16;
  }
}

uint64_t sub_1D52AE144(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  v5[8] = a2;
  v5[9] = a3;
  v9 = *(a4 + 16);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  v5[12] = v11;
  *v11 = v5;
  v11[1] = sub_1D52AE26C;

  return v13(a2, a3, a4);
}

uint64_t sub_1D52AE26C()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = *(v2 + 96);
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;

  if (v0)
  {
    OUTLINED_FUNCTION_55();

    return v6();
  }

  else
  {
    OUTLINED_FUNCTION_57_1();

    return MEMORY[0x1EEE6DFA0](v8, v9, v10);
  }
}

uint64_t sub_1D52AE384()
{
  sub_1D4F0029C();
  v2 = v1;
  v3 = *(v1 + 16);
  if (v3 >= *(v1 + 24) >> 1)
  {
    OUTLINED_FUNCTION_61_27();
    sub_1D4F0029C();
    v2 = v25;
  }

  v4 = v0[9];
  v5 = v0[10];
  *(v2 + 16) = v3 + 1;
  v6 = v2 + 80 * v3;
  *(v6 + 32) = 0xD000000000000016;
  *(v6 + 40) = 0x80000001D5689E30;
  *(v6 + 104) = 0;
  v7 = *(v5 + 8);
  v0[13] = v7;
  v7();
  v0[7] = v8;
  v9 = sub_1D56160F8();
  v11 = v10;
  v12 = *(v2 + 16);
  v13 = v12 + 1;
  if (v12 >= *(v2 + 24) >> 1)
  {
    OUTLINED_FUNCTION_61_27();
    sub_1D4F0029C();
    v2 = v26;
  }

  *(v2 + 16) = v13;
  v14 = v2 + 80 * v12;
  *(v14 + 32) = v9;
  *(v14 + 40) = v11;
  OUTLINED_FUNCTION_3_99(v14, v28, v30, v32, v34);
  if ((v12 + 2) > *(v2 + 24) >> 1)
  {
    sub_1D4F0029C();
    v2 = v27;
  }

  *(v2 + 16) = v12 + 2;
  v15 = v2 + 80 * v13;
  *(v15 + 32) = 0;
  *(v15 + 40) = 0xE000000000000000;
  OUTLINED_FUNCTION_3_99(v15, v29, v31, v33, v35);
  OUTLINED_FUNCTION_57_1();
  sub_1D54F08F4(v16, v17, v18, v19, v20);
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  v0[14] = v21;
  *v21 = v22;
  v21[1] = sub_1D52AE578;
  v23 = v0[8];

  return sub_1D54F1FF0((v0 + 2));
}

uint64_t sub_1D52AE578()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v6 = *(v5 + 112);
  v7 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v8 = v7;
  *(v3 + 120) = v0;

  if (!v0)
  {
    sub_1D51D2984(v3 + 16);
  }

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D52AE678()
{
  OUTLINED_FUNCTION_60();
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  v3 = *(v0 + 72);
  (*(v0 + 104))();
  *v2 = v4;
  OUTLINED_FUNCTION_22_1();

  return v5();
}

uint64_t sub_1D52AE6EC()
{
  OUTLINED_FUNCTION_60();
  sub_1D51D2984(v0 + 16);
  v1 = *(v0 + 120);
  OUTLINED_FUNCTION_55();

  return v2();
}

unint64_t sub_1D52AE748()
{
  result = qword_1EC7F3790;
  if (!qword_1EC7F3790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F3790);
  }

  return result;
}

uint64_t sub_1D52AE79C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[16] = a3;
  v4[17] = a4;
  v4[14] = a1;
  v4[15] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D52AE7C0, 0, 0);
}

uint64_t sub_1D52AE7C0()
{
  OUTLINED_FUNCTION_91();
  v1 = v0[16];
  if ((v0[17] & 0x8000000000000000) != 0)
  {
    OUTLINED_FUNCTION_27_0(&unk_1D564E070);
    swift_task_alloc();
    OUTLINED_FUNCTION_58();
    v0[21] = v8;
    *v8 = v9;
    v10 = OUTLINED_FUNCTION_16_71(v8);

    return v11(v10);
  }

  else
  {
    v2 = OUTLINED_FUNCTION_78_19();
    OUTLINED_FUNCTION_54_27(v2);
    OUTLINED_FUNCTION_27_0(dword_1D5650BD8);
    swift_task_alloc();
    OUTLINED_FUNCTION_58();
    v0[19] = v3;
    *v3 = v4;
    v3[1] = sub_1D52AE8EC;
    v5 = OUTLINED_FUNCTION_30_47();

    return v6(v5);
  }
}

uint64_t sub_1D52AE8EC()
{
  OUTLINED_FUNCTION_160();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v6 = *(v5 + 152);
  v7 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v8 = v7;
  *(v3 + 160) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_57_1();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = OUTLINED_FUNCTION_26_55();
    OUTLINED_FUNCTION_4_95(v12, v13, v14, v15, v16, v17, v18, v19, v22, v23);

    return v20();
  }
}

uint64_t sub_1D52AEA10()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v6 = *(v5 + 168);
  v7 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v8 = v7;

  if (!v0)
  {
    v9 = *(v3 + 56);
    v10 = *(v3 + 112);
    v11 = *(v3 + 24);
    v12 = *(v3 + 40);
    *v10 = *(v3 + 16);
    *(v10 + 8) = v11;
    *(v10 + 24) = v12;
    *(v10 + 40) = v9;
  }

  v13 = *(v7 + 8);

  return v13();
}

uint64_t sub_1D52AEB20()
{
  OUTLINED_FUNCTION_60();
  v1 = *(v0 + 144);

  v2 = *(v0 + 160);
  OUTLINED_FUNCTION_55();

  return v3();
}

uint64_t sub_1D52AEB7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[16] = a3;
  v4[17] = a4;
  v4[14] = a1;
  v4[15] = a2;
  return OUTLINED_FUNCTION_12_6(sub_1D52AEB9C, 0);
}

uint64_t sub_1D52AEB9C()
{
  OUTLINED_FUNCTION_91();
  v1 = v0[16];
  if ((v0[17] & 0x8000000000000000) != 0)
  {
    OUTLINED_FUNCTION_27_0(&unk_1D564E0E8);
    swift_task_alloc();
    OUTLINED_FUNCTION_58();
    v0[21] = v8;
    *v8 = v9;
    v10 = OUTLINED_FUNCTION_16_71(v8);

    return v11(v10);
  }

  else
  {
    v2 = OUTLINED_FUNCTION_78_19();
    OUTLINED_FUNCTION_54_27(v2);
    OUTLINED_FUNCTION_27_0(dword_1D5650C98);
    swift_task_alloc();
    OUTLINED_FUNCTION_58();
    v0[19] = v3;
    *v3 = v4;
    v3[1] = sub_1D52AECC8;
    v5 = OUTLINED_FUNCTION_30_47();

    return v6(v5);
  }
}

uint64_t sub_1D52AECC8()
{
  OUTLINED_FUNCTION_160();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v6 = *(v5 + 152);
  v7 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v8 = v7;
  *(v3 + 160) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_57_1();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = OUTLINED_FUNCTION_26_55();
    OUTLINED_FUNCTION_4_95(v12, v13, v14, v15, v16, v17, v18, v19, v22, v23);

    return v20();
  }
}

uint64_t sub_1D52AEDEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[16] = a3;
  v4[17] = a4;
  v4[14] = a1;
  v4[15] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D52AEE10, 0, 0);
}

uint64_t sub_1D52AEE10()
{
  OUTLINED_FUNCTION_91();
  v1 = v0[16];
  if ((v0[17] & 0x8000000000000000) != 0)
  {
    OUTLINED_FUNCTION_27_0(&unk_1D564E128);
    swift_task_alloc();
    OUTLINED_FUNCTION_58();
    v0[21] = v8;
    *v8 = v9;
    v10 = OUTLINED_FUNCTION_16_71(v8);

    return v11(v10);
  }

  else
  {
    v2 = OUTLINED_FUNCTION_78_19();
    OUTLINED_FUNCTION_54_27(v2);
    OUTLINED_FUNCTION_27_0(dword_1D5650D00);
    swift_task_alloc();
    OUTLINED_FUNCTION_58();
    v0[19] = v3;
    *v3 = v4;
    v3[1] = sub_1D52AECC8;
    v5 = OUTLINED_FUNCTION_30_47();

    return v6(v5);
  }
}

uint64_t sub_1D52AEF3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[16] = a3;
  v4[17] = a4;
  v4[14] = a1;
  v4[15] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D52AEF60, 0, 0);
}

uint64_t sub_1D52AEF60()
{
  OUTLINED_FUNCTION_91();
  v1 = v0[16];
  if ((v0[17] & 0x8000000000000000) != 0)
  {
    OUTLINED_FUNCTION_27_0(&unk_1D564E0B0);
    swift_task_alloc();
    OUTLINED_FUNCTION_58();
    v0[21] = v8;
    *v8 = v9;
    v10 = OUTLINED_FUNCTION_16_71(v8);

    return v11(v10);
  }

  else
  {
    v2 = OUTLINED_FUNCTION_78_19();
    OUTLINED_FUNCTION_54_27(v2);
    OUTLINED_FUNCTION_27_0(dword_1D5650C60);
    swift_task_alloc();
    OUTLINED_FUNCTION_58();
    v0[19] = v3;
    *v3 = v4;
    v3[1] = sub_1D52AECC8;
    v5 = OUTLINED_FUNCTION_30_47();

    return v6(v5);
  }
}

uint64_t sub_1D52AF08C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 64) = a1;
  v5 = swift_task_alloc();
  *(v3 + 72) = v5;
  *v5 = v3;
  v5[1] = sub_1D52B2BB0;

  return sub_1D52AF38C(v3 + 16, a3);
}

uint64_t sub_1D52AF14C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 64) = a1;
  v5 = swift_task_alloc();
  *(v3 + 72) = v5;
  *v5 = v3;
  v5[1] = sub_1D52B2BB0;

  return sub_1D52AF478(v3 + 16, a3);
}

uint64_t sub_1D52AF20C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 64) = a1;
  v5 = swift_task_alloc();
  *(v3 + 72) = v5;
  *v5 = v3;
  v5[1] = sub_1D52B2BB0;

  return sub_1D52AF478(v3 + 16, a3);
}

uint64_t sub_1D52AF2CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 64) = a1;
  v5 = swift_task_alloc();
  *(v3 + 72) = v5;
  *v5 = v3;
  v5[1] = sub_1D52B2BB0;

  return sub_1D52AF478(v3 + 16, a3);
}

uint64_t sub_1D52AF38C(uint64_t a1, uint64_t a2)
{
  *(v3 + 64) = a2;
  *(v3 + 72) = v2;
  *(v3 + 56) = a1;
  v4 = *(a2 + 16);
  *(v3 + 80) = *a2;
  *(v3 + 96) = v4;
  *(v3 + 49) = *(a2 + 32);
  return MEMORY[0x1EEE6DFA0](sub_1D52AF3C0, v2, 0);
}

uint64_t sub_1D52AF3C0()
{
  v1 = *(*(v0 + 72) + OBJC_IVAR____TtC16MusicKitInternal11SQLDatabase_connection);
  if (v1)
  {
    OUTLINED_FUNCTION_160();
    v2 = *(v0 + 49);
    v4 = *(v0 + 56);
    v3 = *(v0 + 64);

    v7 = *(v0 + 96);
    v8 = *(v0 + 80);
    sub_1D51D2F74(v3, v0 + 16);
    *v4 = v1;
    *(v4 + 24) = v7;
    *(v4 + 8) = v8;
    *(v4 + 40) = v2 & 1;
    OUTLINED_FUNCTION_22_1();

    return v5();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D52AF478(uint64_t a1, uint64_t a2)
{
  *(v3 + 64) = a2;
  *(v3 + 72) = v2;
  *(v3 + 56) = a1;
  v4 = *(a2 + 16);
  *(v3 + 80) = *a2;
  *(v3 + 96) = v4;
  *(v3 + 49) = *(a2 + 32);
  return MEMORY[0x1EEE6DFA0](sub_1D52B2B98, v2, 0);
}

uint64_t sub_1D52AF4AC(uint64_t a1, uint64_t a2)
{
  *(v3 + 64) = a2;
  *(v3 + 72) = v2;
  *(v3 + 56) = a1;
  v4 = *(a2 + 16);
  *(v3 + 80) = *a2;
  *(v3 + 96) = v4;
  *(v3 + 49) = *(a2 + 32);
  return MEMORY[0x1EEE6DFA0](sub_1D52AF4E0, v2, 0);
}

uint64_t sub_1D52AF4E0()
{
  OUTLINED_FUNCTION_160();
  v1 = *(v0 + 49);
  v2 = *(v0 + 64);
  v3 = *(v0 + 56);
  v4 = *(*(v0 + 72) + 128);

  v7 = *(v0 + 96);
  v8 = *(v0 + 80);
  sub_1D51D2F74(v2, v0 + 16);
  *v3 = v4;
  *(v3 + 24) = v7;
  *(v3 + 8) = v8;
  *(v3 + 40) = v1 & 1;
  OUTLINED_FUNCTION_22_1();

  return v5();
}

uint64_t sub_1D52AF584(uint64_t a1, uint64_t a2)
{
  *(v3 + 64) = a2;
  *(v3 + 72) = v2;
  *(v3 + 56) = a1;
  v4 = *(a2 + 16);
  *(v3 + 80) = *a2;
  *(v3 + 96) = v4;
  *(v3 + 49) = *(a2 + 32);
  return MEMORY[0x1EEE6DFA0](sub_1D52B2B9C, v2, 0);
}

unint64_t sub_1D52AF5B8()
{
  result = qword_1EC7F3798;
  if (!qword_1EC7F3798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F3798);
  }

  return result;
}

void sub_1D52AF60C(uint64_t a1)
{
  v2 = sub_1D54F6560();
  v5 = 0;
  v4 = MEMORY[0x1E69E6158];
  v3 = &off_1F50C0528;
  sub_1D54F459C(MEMORY[0x1E69E6158], &v5, v2, a1, 1, &v4, MEMORY[0x1E69E6158], &v3);
}

void sub_1D52AF68C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v14 = sub_1D54F6560();
  v4 = 0;
  v5 = 0;
  v25 = 0;
  v6 = 8;
  v16 = a2;
  while (1)
  {
    if (v4 == 112)
    {
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAF50, &qword_1D561DD10);
      __swift_storeEnumTagSinglePayload(a2, 0, 1, v11);
      return;
    }

    if (v4)
    {
      v7 = &_s13PersistedBoolVN;
      switch(v5)
      {
        case 2:
          break;
        case 3:
          v7 = &_s10DescriptorV19FulfilledPropertiesVN;
          break;
        case 4:
          goto LABEL_6;
        default:
          v7 = _s13PersistedDateVMa();
          break;
      }
    }

    else
    {
LABEL_6:
      v7 = MEMORY[0x1E69E6530];
    }

    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAF50, &qword_1D561DD10);
    v9 = *(v8 + v4 + 32);
    v10 = MEMORY[0x1E69E6530];
    v18 = MEMORY[0x1E69E6530];
    v19 = _s13PersistedDateVMa();
    v20 = &_s13PersistedBoolVN;
    v21 = &_s10DescriptorV19FulfilledPropertiesVN;
    v22 = v10;
    v23 = v19;
    v24 = v19;
    v17[0] = &off_1F50BFF68;
    v17[1] = &off_1F50B88F0;
    v17[2] = &off_1F50B5318;
    v17[3] = &off_1F50B5998;
    v17[4] = &off_1F50BFF68;
    v17[5] = &off_1F50B88F0;
    v17[6] = &off_1F50B88F0;
    a2 = v16;
    sub_1D54F459C(v7, &v25, v14, a1, 7, &v18, v7, v17);
    if (v2)
    {
      break;
    }

    ++v5;
    v4 += 16;
    v6 -= 8;
  }

  if (v4)
  {
    v12 = (&v18 - v6);
    do
    {
      v13 = *v12--;
      (*(*(v13 - 8) + 8))(v16 + *(v8 + 16 + v4));
      v4 -= 16;
    }

    while (v4);
  }
}

void sub_1D52AF8C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D54F6560();
  v8 = a2;
  v9 = 0;
  v7 = a3;
  sub_1D54F459C(a2, &v9, v6, a1, 1, &v8, a2, &v7);
}

uint64_t sub_1D52AF96C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_160();
  OUTLINED_FUNCTION_1_129();
  if (v12)
  {
    if (v12 == 1)
    {
      OUTLINED_FUNCTION_23_53(dword_1D566D6C0);

      v13 = swift_task_alloc();
      v14 = OUTLINED_FUNCTION_46_29(v13);
      *v14 = v15;
      OUTLINED_FUNCTION_17_63(v14);
      OUTLINED_FUNCTION_71_17();
    }

    else
    {
      OUTLINED_FUNCTION_42_34();
      OUTLINED_FUNCTION_14_47();
    }

    return v19(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10);
  }

  else
  {
    OUTLINED_FUNCTION_7_95(v11);
    OUTLINED_FUNCTION_22_52();
    swift_task_alloc();
    OUTLINED_FUNCTION_58();
    *(v10 + 160) = v24;
    *v24 = v25;
    OUTLINED_FUNCTION_39_37(v24);
    OUTLINED_FUNCTION_14_47();

    return sub_1D54F6844();
  }
}

uint64_t sub_1D52AFAB8()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v6 = *(v5 + 160);
  *v4 = *v1;
  OUTLINED_FUNCTION_76_14(v7);
  if (!v0)
  {
    OUTLINED_FUNCTION_50_26();
  }

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1D52AFBB4()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  v4 = v3;
  OUTLINED_FUNCTION_13_71();
  v6 = v5;
  OUTLINED_FUNCTION_44();
  *v7 = v6;
  v9 = *(v8 + 184);
  v10 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v11 = v10;
  v6[24] = v0;

  if (!v0)
  {
    v6[29] = v4;
    v6[30] = v2;
  }

  OUTLINED_FUNCTION_10_84();
  OUTLINED_FUNCTION_153_1();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1D52AFD60()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  v4 = v3;
  OUTLINED_FUNCTION_13_71();
  v6 = v5;
  OUTLINED_FUNCTION_44();
  *v7 = v6;
  v9 = *(v8 + 200);
  v10 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v11 = v10;
  v6[26] = v0;

  if (!v0)
  {
    v6[27] = v4;
    v6[28] = v2;
  }

  OUTLINED_FUNCTION_10_84();
  OUTLINED_FUNCTION_153_1();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1D52AFE68()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_52_28();

  v1 = *(v0 + 176);
  OUTLINED_FUNCTION_55();

  return v2();
}

uint64_t sub_1D52AFEC8()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_69_24();

  v2 = *(v0 + 216);
  v1 = *(v0 + 224);
  OUTLINED_FUNCTION_47_34();

  return v3();
}

uint64_t sub_1D52AFF2C()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_69_24();

  v1 = *(v0 + 208);
  OUTLINED_FUNCTION_55();

  return v2();
}

uint64_t sub_1D52AFF8C()
{
  OUTLINED_FUNCTION_60();
  v2 = v0[15];
  v1 = v0[16];

  v4 = v0[29];
  v3 = v0[30];
  OUTLINED_FUNCTION_47_34();

  return v5();
}

uint64_t sub_1D52AFFF4()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_49_26();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB730, &qword_1D5621A30);
  OUTLINED_FUNCTION_71();
  if (swift_dynamicCast() & 1) != 0 && (OUTLINED_FUNCTION_36_40(), , (OUTLINED_FUNCTION_55_25()))
  {
    OUTLINED_FUNCTION_75_19();
    *(v1 + 248) = *(v0 + 16);
    *(v1 + 256) = *(v0 + 24);
    v2 = *(v1 + 120);

    v3 = OUTLINED_FUNCTION_138_7();

    return MEMORY[0x1EEE6DFA0](v3, v4, v5);
  }

  else
  {
    v7 = *(v1 + 120);
    v6 = *(v1 + 128);

    v8 = *(v1 + 192);
    OUTLINED_FUNCTION_55();

    return v9();
  }
}

uint64_t sub_1D52B0104()
{
  OUTLINED_FUNCTION_80();
  v1 = v0[15];
  sub_1D54F81FC(v0[31], v0[32]);
  v0[33] = 0;
  v2 = v0[32];

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1D52B0194()
{
  OUTLINED_FUNCTION_160();
  OUTLINED_FUNCTION_53_27();

  v2 = OUTLINED_FUNCTION_6_93();
  sub_1D51D2AD0(v2, v3, v4, v5, v0, v1);
  OUTLINED_FUNCTION_45_33();
  v6 = OUTLINED_FUNCTION_42_34();

  return v7(v6, 0);
}

uint64_t sub_1D52B0224()
{
  OUTLINED_FUNCTION_60();
  v1 = *(v0 + 256);
  v2 = *(v0 + 120);
  v3 = *(v0 + 128);

  v4 = *(v0 + 264);
  OUTLINED_FUNCTION_55();

  return v5();
}

uint64_t sub_1D52B02BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_160();
  OUTLINED_FUNCTION_1_129();
  if (v12)
  {
    if (v12 == 1)
    {
      OUTLINED_FUNCTION_23_53(dword_1D566D6A8);

      v13 = swift_task_alloc();
      v14 = OUTLINED_FUNCTION_46_29(v13);
      *v14 = v15;
      OUTLINED_FUNCTION_17_63(v14);
      OUTLINED_FUNCTION_71_17();
    }

    else
    {
      OUTLINED_FUNCTION_42_34();
      OUTLINED_FUNCTION_14_47();
    }

    return v19(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10);
  }

  else
  {
    OUTLINED_FUNCTION_7_95(v11);
    OUTLINED_FUNCTION_22_52();
    swift_task_alloc();
    OUTLINED_FUNCTION_58();
    *(v10 + 160) = v24;
    *v24 = v25;
    OUTLINED_FUNCTION_39_37(v24);
    OUTLINED_FUNCTION_14_47();

    return sub_1D54F6844();
  }
}

uint64_t sub_1D52B0408()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v6 = *(v5 + 160);
  *v4 = *v1;
  OUTLINED_FUNCTION_76_14(v7);
  if (!v0)
  {
    OUTLINED_FUNCTION_50_26();
  }

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1D52B0504()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_8_88();
  v5 = v4;
  OUTLINED_FUNCTION_44();
  *v6 = v5;
  v8 = *(v7 + 184);
  v9 = *v2;
  OUTLINED_FUNCTION_23_0();
  *v10 = v9;
  *(v5 + 192) = v1;

  if (!v1)
  {
    *(v5 + 99) = v0;
    *(v5 + 224) = v3;
  }

  OUTLINED_FUNCTION_10_84();
  OUTLINED_FUNCTION_153_1();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1D52B06B0()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_8_88();
  v5 = v4;
  OUTLINED_FUNCTION_44();
  *v6 = v5;
  v8 = *(v7 + 200);
  v9 = *v2;
  OUTLINED_FUNCTION_23_0();
  *v10 = v9;
  *(v5 + 208) = v1;

  if (!v1)
  {
    *(v5 + 98) = v0;
    *(v5 + 216) = v3;
  }

  OUTLINED_FUNCTION_10_84();
  OUTLINED_FUNCTION_153_1();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1D52B07B8()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_49_26();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB730, &qword_1D5621A30);
  OUTLINED_FUNCTION_71();
  if (swift_dynamicCast() & 1) != 0 && (OUTLINED_FUNCTION_36_40(), , (OUTLINED_FUNCTION_55_25()))
  {
    OUTLINED_FUNCTION_75_19();
    OUTLINED_FUNCTION_41_37();

    v1 = OUTLINED_FUNCTION_138_7();

    return MEMORY[0x1EEE6DFA0](v1, v2, v3);
  }

  else
  {
    v5 = *(v0 + 120);
    v4 = *(v0 + 128);

    v6 = *(v0 + 192);
    OUTLINED_FUNCTION_55();

    return v7();
  }
}

uint64_t sub_1D52B08B8()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_70_18();
  *(v1 + 248) = v0;
  if (!v0)
  {
    v2 = *(v1 + 240);
  }

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1D52B0958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_160();
  OUTLINED_FUNCTION_1_129();
  if (v12)
  {
    if (v12 == 1)
    {
      OUTLINED_FUNCTION_23_53(dword_1D566D6F0);

      v13 = swift_task_alloc();
      v14 = OUTLINED_FUNCTION_46_29(v13);
      *v14 = v15;
      OUTLINED_FUNCTION_17_63(v14);
      OUTLINED_FUNCTION_71_17();

      return v19(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10);
    }

    else
    {
      OUTLINED_FUNCTION_50();
      OUTLINED_FUNCTION_14_47();

      return v30(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7_95(v11);
    OUTLINED_FUNCTION_22_52();
    swift_task_alloc();
    OUTLINED_FUNCTION_58();
    *(v10 + 160) = v25;
    *v25 = v26;
    OUTLINED_FUNCTION_39_37(v25);
    OUTLINED_FUNCTION_14_47();

    return sub_1D54F6844();
  }
}

uint64_t sub_1D52B0AA4()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v6 = *(v5 + 160);
  *v4 = *v1;
  OUTLINED_FUNCTION_76_14(v7);
  if (!v0)
  {
    OUTLINED_FUNCTION_50_26();
  }

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1D52B0BA0()
{
  OUTLINED_FUNCTION_80();
  v3 = v2;
  OUTLINED_FUNCTION_59_1();
  v5 = v4;
  OUTLINED_FUNCTION_44();
  *v6 = v5;
  v8 = *(v7 + 184);
  v9 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v10 = v9;
  *(v5 + 192) = v0;

  if (!v0)
  {
    *(v5 + 224) = v3;
  }

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1D52B0D50()
{
  OUTLINED_FUNCTION_80();
  v3 = v2;
  OUTLINED_FUNCTION_59_1();
  v5 = v4;
  OUTLINED_FUNCTION_44();
  *v6 = v5;
  v8 = *(v7 + 200);
  v9 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v10 = v9;
  *(v5 + 208) = v0;

  if (!v0)
  {
    *(v5 + 216) = v3;
  }

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1D52B0E5C()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_69_24();

  v1 = *(v0 + 216);
  OUTLINED_FUNCTION_50();

  return v2();
}

uint64_t sub_1D52B0EC0()
{
  OUTLINED_FUNCTION_60();
  v2 = v0[15];
  v1 = v0[16];

  v3 = v0[28];
  OUTLINED_FUNCTION_50();

  return v4();
}

uint64_t sub_1D52B0F28()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_49_26();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB730, &qword_1D5621A30);
  OUTLINED_FUNCTION_71();
  if (swift_dynamicCast() & 1) != 0 && (OUTLINED_FUNCTION_36_40(), , (OUTLINED_FUNCTION_55_25()))
  {
    OUTLINED_FUNCTION_75_19();
    OUTLINED_FUNCTION_41_37();

    v1 = OUTLINED_FUNCTION_138_7();

    return MEMORY[0x1EEE6DFA0](v1, v2, v3);
  }

  else
  {
    v5 = *(v0 + 120);
    v4 = *(v0 + 128);

    v6 = *(v0 + 192);
    OUTLINED_FUNCTION_55();

    return v7();
  }
}

uint64_t sub_1D52B1028()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_70_18();
  *(v1 + 248) = v0;
  if (!v0)
  {
    v2 = *(v1 + 240);
  }

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1D52B10AC()
{
  OUTLINED_FUNCTION_160();
  OUTLINED_FUNCTION_53_27();

  v2 = OUTLINED_FUNCTION_6_93();
  sub_1D51D2AD0(v2, v3, v4, v5, v0, v1);
  OUTLINED_FUNCTION_45_33();
  OUTLINED_FUNCTION_50();

  return v6(0);
}

uint64_t sub_1D52B113C()
{
  OUTLINED_FUNCTION_60();
  v1 = *(v0 + 240);
  v2 = *(v0 + 120);
  v3 = *(v0 + 128);

  v4 = *(v0 + 248);
  OUTLINED_FUNCTION_55();

  return v5();
}

uint64_t sub_1D52B11B4(uint64_t a1)
{
  *(v2 + 112) = a1;
  *(v2 + 120) = v1;
  return OUTLINED_FUNCTION_12_6(sub_1D52B11D0, 0);
}

uint64_t sub_1D52B11D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_160();
  v11 = *(v10 + 120);
  *(v10 + 128) = *v11;
  *(v10 + 136) = *(v11 + 8);
  *(v10 + 144) = *(v11 + 16);
  *(v10 + 152) = *(v11 + 24);
  *(v10 + 160) = *(v11 + 32);
  v12 = *(v11 + 40);
  *(v10 + 97) = v12;
  if (v12 >> 6)
  {
    if (v12 >> 6 == 1)
    {
      OUTLINED_FUNCTION_23_53(dword_1D566D6E0);

      swift_task_alloc();
      OUTLINED_FUNCTION_58();
      *(v10 + 192) = v13;
      *v13 = v14;
      v13[1] = sub_1D52B14A0;
      v15 = *(v10 + 112);
      v16 = *(v10 + 120);
      OUTLINED_FUNCTION_71_17();

      return v21(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
    }

    else
    {
      v29 = *(v10 + 112);
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAF50, &qword_1D561DD10);
      __swift_storeEnumTagSinglePayload(v29, 1, 1, v30);
      OUTLINED_FUNCTION_22_1();
      OUTLINED_FUNCTION_14_47();

      return v32(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7_95(v12);
    OUTLINED_FUNCTION_22_52();
    swift_task_alloc();
    OUTLINED_FUNCTION_58();
    *(v10 + 168) = v26;
    *v26 = v27;
    OUTLINED_FUNCTION_39_37(v26);
    OUTLINED_FUNCTION_14_47();

    return sub_1D54F6844();
  }
}

uint64_t sub_1D52B138C()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v6 = *(v5 + 168);
  *v4 = *v1;
  *(v3 + 176) = v7;
  *(v3 + 184) = v0;

  if (!v0)
  {
    sub_1D51D29D8(*(v3 + 136), *(v3 + 144), *(v3 + 152), *(v3 + 160), *(v3 + 97) & 1);
  }

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1D52B14A0()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = *(v2 + 192);
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 200) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D52B15A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_161_0();
  OUTLINED_FUNCTION_75_0();
  v13 = *(v12 + 176);
  v15 = *(v12 + 152);
  v14 = *(v12 + 160);
  v17 = *(v12 + 136);
  v16 = *(v12 + 144);
  v19 = *(v12 + 120);
  v18 = *(v12 + 128);
  v20 = *(v12 + 97);

  OUTLINED_FUNCTION_18_67();
  OUTLINED_FUNCTION_11_86();
  OUTLINED_FUNCTION_27_0(&unk_1D564E0D8);
  v35 = v21;
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  *(v12 + 208) = v22;
  *v22 = v23;
  v22[1] = sub_1D52B166C;
  v24 = *(v12 + 112);
  v25 = *(v12 + 120);
  OUTLINED_FUNCTION_19_45();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, v35, a11, a12);
}

uint64_t sub_1D52B166C()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = *(v2 + 208);
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 216) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D52B176C()
{
  OUTLINED_FUNCTION_60();
  v1 = *(v0 + 128);
  sub_1D51D29D8(*(v0 + 136), *(v0 + 144), *(v0 + 152), *(v0 + 160), *(v0 + 97) & 1);

  v2 = *(v0 + 184);
  OUTLINED_FUNCTION_55();

  return v3();
}

uint64_t sub_1D52B17E0()
{
  OUTLINED_FUNCTION_60();
  v1 = *(v0 + 176);
  v2 = *(v0 + 128);

  OUTLINED_FUNCTION_22_1();

  return v3();
}

uint64_t sub_1D52B1844()
{
  OUTLINED_FUNCTION_60();
  v1 = v0[22];
  v2 = v0[16];

  v3 = v0[27];
  OUTLINED_FUNCTION_55();

  return v4();
}

uint64_t sub_1D52B18AC()
{
  OUTLINED_FUNCTION_60();
  v2 = *(v0 + 128);
  v1 = *(v0 + 136);

  OUTLINED_FUNCTION_22_1();

  return v3();
}

uint64_t sub_1D52B190C()
{
  OUTLINED_FUNCTION_80();
  v1 = *(v0 + 200);
  *(v0 + 104) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB730, &qword_1D5621A30);
  OUTLINED_FUNCTION_71();
  if (swift_dynamicCast() & 1) != 0 && (OUTLINED_FUNCTION_36_40(), , (OUTLINED_FUNCTION_55_25()))
  {
    v3 = *(v0 + 136);

    *(v0 + 224) = *(v3 + 16);
    *(v0 + 232) = *(v3 + 24);
    v4 = *(v0 + 128);

    v5 = OUTLINED_FUNCTION_138_7();

    return MEMORY[0x1EEE6DFA0](v5, v6, v7);
  }

  else
  {
    v9 = *(v0 + 128);
    v8 = *(v0 + 136);

    v10 = *(v0 + 200);
    OUTLINED_FUNCTION_55();

    return v11();
  }
}

uint64_t sub_1D52B1A34()
{
  OUTLINED_FUNCTION_80();
  v1 = v0[16];
  sub_1D54F81FC(v0[28], v0[29]);
  v0[30] = 0;
  v2 = v0[29];

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1D52B1AC4()
{
  OUTLINED_FUNCTION_160();
  v1 = *(v0 + 152);
  v2 = *(v0 + 160);
  v4 = *(v0 + 136);
  v3 = *(v0 + 144);
  v6 = *(v0 + 120);
  v5 = *(v0 + 128);
  v7 = *(v0 + 112);
  v8 = *(v0 + 97);

  v9 = OUTLINED_FUNCTION_6_93();
  sub_1D51D2AD0(v9, v10, v11, v12, v2, v8);
  *(v6 + 32) = 0;
  *v6 = 0u;
  *(v6 + 16) = 0u;
  *(v6 + 40) = 0x80;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAF50, &qword_1D561DD10);
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v13);

  OUTLINED_FUNCTION_22_1();

  return v14();
}

uint64_t sub_1D52B1BA4()
{
  OUTLINED_FUNCTION_60();
  v1 = *(v0 + 232);
  v2 = *(v0 + 128);
  v3 = *(v0 + 136);

  v4 = *(v0 + 240);
  OUTLINED_FUNCTION_55();

  return v5();
}

uint64_t sub_1D52B1C3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_160();
  OUTLINED_FUNCTION_1_129();
  if (v12)
  {
    if (v12 == 1)
    {
      OUTLINED_FUNCTION_23_53(dword_1D566D6D0);

      v13 = swift_task_alloc();
      v14 = OUTLINED_FUNCTION_46_29(v13);
      *v14 = v15;
      OUTLINED_FUNCTION_17_63(v14);
      OUTLINED_FUNCTION_71_17();
    }

    else
    {
      OUTLINED_FUNCTION_42_34();
      OUTLINED_FUNCTION_14_47();
    }

    return v19(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10);
  }

  else
  {
    OUTLINED_FUNCTION_7_95(v11);
    OUTLINED_FUNCTION_22_52();
    swift_task_alloc();
    OUTLINED_FUNCTION_58();
    *(v10 + 160) = v24;
    *v24 = v25;
    OUTLINED_FUNCTION_39_37(v24);
    OUTLINED_FUNCTION_14_47();

    return sub_1D54F6844();
  }
}

uint64_t sub_1D52B1D88()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v6 = *(v5 + 160);
  *v4 = *v1;
  OUTLINED_FUNCTION_76_14(v7);
  if (!v0)
  {
    OUTLINED_FUNCTION_50_26();
  }

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1D52B1E84()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_8_88();
  v5 = v4;
  OUTLINED_FUNCTION_44();
  *v6 = v5;
  v8 = *(v7 + 184);
  v9 = *v2;
  OUTLINED_FUNCTION_23_0();
  *v10 = v9;
  *(v5 + 192) = v1;

  if (!v1)
  {
    *(v5 + 99) = v0;
    *(v5 + 224) = v3;
  }

  OUTLINED_FUNCTION_10_84();
  OUTLINED_FUNCTION_153_1();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1D52B2030()
{
  OUTLINED_FUNCTION_154_0();
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_8_88();
  v5 = v4;
  OUTLINED_FUNCTION_44();
  *v6 = v5;
  v8 = *(v7 + 200);
  v9 = *v2;
  OUTLINED_FUNCTION_23_0();
  *v10 = v9;
  *(v5 + 208) = v1;

  if (!v1)
  {
    *(v5 + 98) = v0;
    *(v5 + 216) = v3;
  }

  OUTLINED_FUNCTION_10_84();
  OUTLINED_FUNCTION_153_1();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1D52B2138()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_69_24();

  v1 = *(v0 + 216);
  v2 = *(v0 + 98);
  OUTLINED_FUNCTION_47_34();

  return v3();
}

uint64_t sub_1D52B21A4()
{
  OUTLINED_FUNCTION_60();
  v2 = *(v0 + 120);
  v1 = *(v0 + 128);

  v3 = *(v0 + 224);
  v4 = *(v0 + 99);
  OUTLINED_FUNCTION_47_34();

  return v5();
}

uint64_t sub_1D52B2214()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_49_26();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB730, &qword_1D5621A30);
  OUTLINED_FUNCTION_71();
  if (swift_dynamicCast() & 1) != 0 && (OUTLINED_FUNCTION_36_40(), , (OUTLINED_FUNCTION_55_25()))
  {
    OUTLINED_FUNCTION_75_19();
    OUTLINED_FUNCTION_41_37();

    v1 = OUTLINED_FUNCTION_138_7();

    return MEMORY[0x1EEE6DFA0](v1, v2, v3);
  }

  else
  {
    v5 = *(v0 + 120);
    v4 = *(v0 + 128);

    v6 = *(v0 + 192);
    OUTLINED_FUNCTION_55();

    return v7();
  }
}

uint64_t sub_1D52B2314()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_70_18();
  *(v1 + 248) = v0;
  if (!v0)
  {
    v2 = *(v1 + 240);
  }

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1D52B2398()
{
  OUTLINED_FUNCTION_160();
  OUTLINED_FUNCTION_53_27();

  v2 = OUTLINED_FUNCTION_6_93();
  sub_1D51D2AD0(v2, v3, v4, v5, v0, v1);
  OUTLINED_FUNCTION_45_33();
  v6 = OUTLINED_FUNCTION_42_34();

  return v7(v6, 1);
}

void sub_1D52B24D8(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1D52B2440(a1);
  if (!v2)
  {
    *a2 = v4;
    a2[1] = v5;
  }
}

uint64_t sub_1D52B2504(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 64) = a1;
  v6 = swift_task_alloc();
  *(v3 + 72) = v6;
  *v6 = v3;
  v6[1] = sub_1D52B25AC;

  return sub_1D52AF08C(v3 + 16, a2, a3);
}

uint64_t sub_1D52B25AC()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v6 = *(v5 + 72);
  v7 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v8 = v7;

  if (!v0)
  {
    v9 = *(v3 + 64);
    v10 = *(v3 + 16);
    v11 = *(v3 + 32);
    *(v9 + 25) = *(v3 + 41);
    *v9 = v10;
    v9[1] = v11;
  }

  v12 = *(v7 + 8);

  return v12();
}

uint64_t sub_1D52B26D8()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_17_56();
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  *(v0 + 16) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_23_8(v1);

  return v4(v3);
}

uint64_t sub_1D52B276C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 64) = a1;
  v6 = swift_task_alloc();
  *(v3 + 72) = v6;
  *v6 = v3;
  v6[1] = sub_1D52B2BB0;

  return sub_1D52AF14C(v3 + 16, a2, a3);
}

uint64_t sub_1D52B2814(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 64) = a1;
  v6 = swift_task_alloc();
  *(v3 + 72) = v6;
  *v6 = v3;
  v6[1] = sub_1D52B2BB0;

  return sub_1D52AF20C(v3 + 16, a2, a3);
}

uint64_t sub_1D52B28E8@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t a2@<X8>)
{
  result = a1();
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5 & 1;
  }

  return result;
}

uint64_t sub_1D52B2920(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 64) = a1;
  v6 = swift_task_alloc();
  *(v3 + 72) = v6;
  *v6 = v3;
  v6[1] = sub_1D52B2BB0;

  return sub_1D52AF2CC(v3 + 16, a2, a3);
}

uint64_t sub_1D52B29C8()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_17_56();
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  *(v0 + 16) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_23_8(v1);

  return v4(v3);
}

uint64_t sub_1D52B2A5C()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_17_56();
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  *(v0 + 16) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_23_8(v1);

  return v4(v3);
}

uint64_t sub_1D52B2AF0()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_17_56();
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  *(v0 + 16) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_23_8(v1);

  return v4(v3);
}

uint64_t OUTLINED_FUNCTION_23_53@<X0>(int *a1@<X8>)
{
  v2 = a1[1];
  v4 = a1 + *a1;
}

uint64_t OUTLINED_FUNCTION_25_51()
{
  v2 = *(v0 + 168);
  v4 = *(v0 + 144);
  v3 = *(v0 + 152);
  v6 = *(v0 + 128);
  v5 = *(v0 + 136);
  v8 = *(v0 + 112);
  v7 = *(v0 + 120);
  v9 = *(v0 + 97);
}

uint64_t OUTLINED_FUNCTION_31_40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *(a1 + 8) = v10;
  v12 = *(v11 + 112);
  return a10;
}

uint64_t OUTLINED_FUNCTION_34_44(uint64_t a1)
{
  *(a1 + 8) = sub_1D52AD5EC;
  v2 = *(v1 + 72);
  return 0x6F6974617267696DLL;
}

const char *OUTLINED_FUNCTION_70_18()
{
  v2 = v0[29];
  v3 = v0[30];
  v4 = v0[15];

  return sub_1D54F81FC(v2, v3);
}

void OUTLINED_FUNCTION_75_19()
{
  v2 = *(v0 + 192);
  v3 = *(v0 + 128);
}

uint64_t OUTLINED_FUNCTION_76_14(uint64_t a1)
{
  *(v1 + 168) = a1;
  *(v1 + 176) = v2;
}

uint64_t OUTLINED_FUNCTION_78_19()
{
  v2 = *(v0 + 120);

  return swift_task_alloc();
}

uint64_t MusicPlatformMigration.Error.hashValue.getter()
{
  v1 = *v0;
  sub_1D56162D8();
  MEMORY[0x1DA6EC0D0](v1);
  return sub_1D5616328();
}

unint64_t sub_1D52B2DDC()
{
  result = qword_1EC7F37A0;
  if (!qword_1EC7F37A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F37A0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MusicPlatformMigration(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for MusicPlatformMigration.Error(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1D52B2FBC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return MusicPlayer.Queue.presto_playActivityFeatureName.setter(v2, v3);
}

uint64_t (*MusicPlayer.Queue.presto_playActivityFeatureName.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = _s8MusicKit0A6PlayerC5QueueC0aB8InternalE23playActivityFeatureNameSSSgvg_0();
  a1[1] = v3;
  return sub_1D50BA264;
}

uint64_t sub_1D52B304C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  sub_1D50BA3D8(*a1, v3);
  return MusicPlayer.Queue.presto_playActivityRecommendationData.setter(v2, v3);
}

uint64_t (*MusicPlayer.Queue.presto_playActivityRecommendationData.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = _s8MusicKit0A6PlayerC5QueueC0aB8InternalE30playActivityRecommendationData10Foundation0I0VSgvg_0();
  a1[1] = v3;
  return sub_1D50BA36C;
}

double MusicPlayer.Queue.presto_container.getter@<D0>(uint64_t a1@<X8>)
{
  sub_1D560EF38();
  if (!v4)
  {
    sub_1D4E6C9CC(v3, &unk_1EC7F65C0, &qword_1D562E6B0);
    goto LABEL_5;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EADC8, &qword_1D561DBB8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F37A8, &qword_1D564E230);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1D52B3184(uint64_t a1, uint64_t *a2)
{
  sub_1D52B32B0(a1, v5);
  v3 = *a2;
  return MusicPlayer.Queue.presto_container.setter(v5);
}

uint64_t MusicPlayer.Queue.presto_container.setter(uint64_t a1)
{
  sub_1D52B32B0(a1, v7);
  v2 = v8;
  if (v8)
  {
    v3 = v9;
    v4 = __swift_project_boxed_opaque_existential_1(v7, v8);
    *(&v11 + 1) = v2;
    v12 = *(v3 + 8);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v10);
    (*(*(v2 - 8) + 16))(boxed_opaque_existential_0, v4, v2);
    __swift_destroy_boxed_opaque_existential_1(v7);
  }

  else
  {
    sub_1D4E6C9CC(v7, qword_1EC7F37B0, &qword_1D564E238);
    v10 = 0u;
    v11 = 0u;
    v12 = 0;
  }

  sub_1D560EF48();
  return sub_1D4E6C9CC(a1, qword_1EC7F37B0, &qword_1D564E238);
}

uint64_t sub_1D52B32B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC7F37B0, &qword_1D564E238);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void (*MusicPlayer.Queue.presto_container.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x58uLL);
  *a1 = v3;
  v3[10] = v1;
  MusicPlayer.Queue.presto_container.getter(v3);
  return sub_1D52B3384;
}

void sub_1D52B3384(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 80);
  if (a2)
  {
    sub_1D52B32B0(*a1, v2 + 40);
    MusicPlayer.Queue.presto_container.setter(v2 + 40);
    sub_1D4E6C9CC(v2, qword_1EC7F37B0, &qword_1D564E238);
  }

  else
  {
    MusicPlayer.Queue.presto_container.setter(*a1);
  }

  free(v2);
}

uint64_t sub_1D52B33FC@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3 & 1;
  return result;
}

uint64_t sub_1D52B342C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1D52B3468(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 17))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D52B34A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

BOOL static MusicDownloadedSongCatalogStore.Status.== infix(_:_:)(uint64_t a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  if (!*(a1 + 8))
  {
    if (*(a2 + 8))
    {
      goto LABEL_16;
    }

    v9 = *a2;
    sub_1D52B3634(*a1, 0);
    sub_1D52B3634(v4, 0);
    return *&v2 == *&v4;
  }

  if (v3 == 1)
  {
    v6 = *a1;
    if (v5 == 1)
    {
      v7 = sub_1D4FB8200(v6, *a2);
      sub_1D52B3620(v4, 1);
      sub_1D52B3620(v2, 1);
      sub_1D52B3634(v2, 1);
      sub_1D52B3634(v4, 1);
      return v7 & 1;
    }

    goto LABEL_16;
  }

  if (v5 == 2 && v4 == 0)
  {
    sub_1D52B3634(*a1, 2);
    sub_1D52B3634(0, 2);
    return 1;
  }

LABEL_16:
  sub_1D52B3620(v4, v5);
  sub_1D52B3634(v2, v3);
  sub_1D52B3634(v4, v5);
  return 0;
}

uint64_t sub_1D52B3620(uint64_t a1, char a2)
{
  if (a2 == 1)
  {
  }

  return result;
}

uint64_t sub_1D52B3634(uint64_t a1, char a2)
{
  if (a2 == 1)
  {
  }

  return result;
}

uint64_t MusicDownloadedSongCatalogStore.Status.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  if (*(v1 + 8))
  {
    if (*(v1 + 8) == 1)
    {
      MEMORY[0x1DA6EC0D0](2);

      return sub_1D4FB8204(a1, v3);
    }

    else
    {
      return MEMORY[0x1DA6EC0D0](0);
    }
  }

  else
  {
    MEMORY[0x1DA6EC0D0](1);
    if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v5 = v3;
    }

    else
    {
      v5 = 0;
    }

    return MEMORY[0x1DA6EC100](v5);
  }
}

uint64_t MusicDownloadedSongCatalogStore.Status.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1D56162D8();
  if (v2)
  {
    if (v2 == 1)
    {
      MEMORY[0x1DA6EC0D0](2);
      sub_1D4FB8204(v5, v1);
    }

    else
    {
      MEMORY[0x1DA6EC0D0](0);
    }
  }

  else
  {
    MEMORY[0x1DA6EC0D0](1);
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v3 = v1;
    }

    else
    {
      v3 = 0;
    }

    MEMORY[0x1DA6EC100](v3);
  }

  return sub_1D5616328();
}

uint64_t sub_1D52B3780()
{
  v1 = *(v0 + 8);
  v4 = *v0;
  v5 = v1;
  sub_1D56162D8();
  MusicDownloadedSongCatalogStore.Status.hash(into:)(v3);
  return sub_1D5616328();
}

uint64_t MusicDownloadedSongCatalogStore.Status.StallReason.hashValue.getter()
{
  v1 = *v0;
  sub_1D56162D8();
  MEMORY[0x1DA6EC0D0](v1);
  return sub_1D5616328();
}

uint64_t MusicDownloadedSongCatalogStore.Status.description.getter()
{
  v1 = sub_1D560BED8();
  v2 = OUTLINED_FUNCTION_4(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v8 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D560C388();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F3838, &qword_1D564E620);
  v12 = OUTLINED_FUNCTION_4(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v12);
  v19 = v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = v26 - v20;
  v22 = *v0;
  if (!*(v0 + 8))
  {
    v26[1] = *v0;
    sub_1D560C378();
    sub_1D52B3F2C();
    sub_1D560BEA8();
    sub_1D560BEC8();
    MEMORY[0x1DA6E1CA0](v8, v11);
    (*(v4 + 8))(v8, v1);
    v24 = *(v14 + 8);
    v24(v19, v11);
    sub_1D4E62A60(&qword_1EDD5CF98, &qword_1EC7F3838, &qword_1D564E620);
    sub_1D5614B88();
    v24(v21, v11);
    return v27;
  }

  if (*(v0 + 8) == 1)
  {
    v27 = 0x2064656C6C617453;
    v28 = 0xE800000000000000;
    v23 = sub_1D52B3B3C(v22);
    MEMORY[0x1DA6EAC70](v23);

    return v27;
  }

  return 0x6574656C706D6F43;
}

uint64_t sub_1D52B3B3C(uint64_t a1)
{
  if (sub_1D52CC4F0(0, a1))
  {
    sub_1D4EFF8E4();
    v3 = v2;
    v4 = *(v2 + 16);
    if (v4 >= *(v2 + 24) >> 1)
    {
      sub_1D4EFF8E4();
      v3 = v18;
    }

    *(v3 + 16) = v4 + 1;
    v5 = v3 + 16 * v4;
    *(v5 + 32) = 2744222196;
    *(v5 + 40) = 0xA400000000000000;
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  if (sub_1D52CC4F0(1, a1))
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v19 = *(v3 + 16);
      sub_1D4EFF8E4();
      v3 = v20;
    }

    v6 = *(v3 + 16);
    if (v6 >= *(v3 + 24) >> 1)
    {
      sub_1D4EFF8E4();
      v3 = v21;
    }

    *(v3 + 16) = v6 + 1;
    v7 = v3 + 16 * v6;
    *(v7 + 32) = 2726920692;
    *(v7 + 40) = 0xA400000000000000;
  }

  if (sub_1D52CC4F0(2, a1))
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v22 = *(v3 + 16);
      sub_1D4EFF8E4();
      v3 = v23;
    }

    v8 = *(v3 + 16);
    if (v8 >= *(v3 + 24) >> 1)
    {
      sub_1D4EFF8E4();
      v3 = v24;
    }

    *(v3 + 16) = v8 + 1;
    v9 = v3 + 16 * v8;
    *(v9 + 32) = 3214967284;
    *(v9 + 40) = 0xA400000000000000;
  }

  if (sub_1D52CC4F0(3, a1))
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v25 = *(v3 + 16);
      sub_1D4EFF8E4();
      v3 = v26;
    }

    v10 = *(v3 + 16);
    if (v10 >= *(v3 + 24) >> 1)
    {
      sub_1D4EFF8E4();
      v3 = v27;
    }

    *(v3 + 16) = v10 + 1;
    v11 = v3 + 16 * v10;
    *(v11 + 32) = 2711847412;
    *(v11 + 40) = 0xA400000000000000;
  }

  if (sub_1D52CC4F0(4, a1))
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v28 = *(v3 + 16);
      sub_1D4EFF8E4();
      v3 = v29;
    }

    v12 = *(v3 + 16);
    if (v12 >= *(v3 + 24) >> 1)
    {
      sub_1D4EFF8E4();
      v3 = v30;
    }

    *(v3 + 16) = v12 + 1;
    v13 = v3 + 16 * v12;
    *(v13 + 32) = 2778235380;
    *(v13 + 40) = 0xA400000000000000;
  }

  if (sub_1D52CC4F0(5, a1))
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v31 = *(v3 + 16);
      sub_1D4EFF8E4();
      v3 = v32;
    }

    v14 = *(v3 + 16);
    if (v14 >= *(v3 + 24) >> 1)
    {
      sub_1D4EFF8E4();
      v3 = v33;
    }

    *(v3 + 16) = v14 + 1;
    v15 = v3 + 16 * v14;
    *(v15 + 32) = 2425585908;
    *(v15 + 40) = 0xA400000000000000;
  }

  else if (!*(v3 + 16))
  {

    return 0x7974706D65;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EABD8, &unk_1D561D780);
  sub_1D4E62A60(&qword_1EDD52780, &qword_1EC7EABD8, &unk_1D561D780);
  v16 = sub_1D5614CF8();

  return v16;
}

unint64_t sub_1D52B3F2C()
{
  result = qword_1EDD52A28;
  if (!qword_1EDD52A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD52A28);
  }

  return result;
}

unint64_t sub_1D52B3F84()
{
  result = qword_1EC7F3840;
  if (!qword_1EC7F3840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F3840);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_16MusicKitInternal0A26DownloadedSongCatalogStoreC6StatusO(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

_BYTE *_s6StatusO11StallReasonOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1D52B40E0()
{
  v9 = MEMORY[0x1E69E7CD0];
  v0 = [objc_opt_self() processInfo];
  v1 = [v0 isLowPowerModeEnabled];

  if (v1)
  {
    sub_1D52C8F20(&v5, 0);
  }

  sub_1D5612AE8();
  sub_1D5612AD8();
  v2 = sub_1D5612A98();

  if (v2)
  {
    sub_1D52C8F20(&v6, 1);
  }

  sub_1D5612AD8();
  v3 = sub_1D5612AA8();

  if (v3)
  {
    sub_1D52C8F20(&v7, 2);
  }

  if ((sub_1D52B41F4() & 1) == 0)
  {
    sub_1D52C8F20(&v8, 3);
  }

  return v9;
}

uint64_t sub_1D52B41F4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F3848, &unk_1D564E460);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v35 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F3850, &qword_1D564E8F0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v35 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v35 - v15;
  sub_1D52B4978(v1, v5);
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    sub_1D4E6C9CC(v5, &qword_1EC7F3848, &unk_1D564E460);
    v17 = objc_opt_self();
    v18 = *(_s24DeviceConstraintsMonitorVMa() + 20);
    v19 = sub_1D560BA08();
    v20 = [v17 stringFromMeasurement:v19 countStyle:0];

    v21 = sub_1D5614D68();
    v23 = v22;

    if (qword_1EDD54478 != -1)
    {
      swift_once();
    }

    v24 = sub_1D560C758();
    __swift_project_value_buffer(v24, qword_1EDD76A90);

    v25 = sub_1D560C738();
    v26 = sub_1D56156C8();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v35 = v18;
      v28 = v27;
      v29 = swift_slowAlloc();
      v36 = v29;
      *v28 = 136446210;
      v30 = sub_1D4E6835C(v21, v23, &v36);

      *(v28 + 4) = v30;
      _os_log_impl(&dword_1D4E3F000, v25, v26, "Monitor: Estimated disk usage not provided, defaulting to using only the availableStorageMargin=%{public}s.", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v29);
      MEMORY[0x1DA6ED200](v29, -1, -1);
      MEMORY[0x1DA6ED200](v28, -1, -1);
    }

    else
    {
    }

    sub_1D52B49E8();
    sub_1D4E62A60(&qword_1EDD5CFE8, &qword_1EC7F3850, &qword_1D564E8F0);
    v32 = sub_1D5614D08();
    (*(v7 + 8))(v14, v6);
  }

  else
  {
    (*(v7 + 32))(v16, v5, v6);
    sub_1D52B49E8();
    v31 = *(_s24DeviceConstraintsMonitorVMa() + 20);
    sub_1D52B4E00();
    sub_1D560BA68();
    sub_1D4E62A60(&qword_1EDD5CFE8, &qword_1EC7F3850, &qword_1D564E8F0);
    v32 = sub_1D5614D08();
    v33 = *(v7 + 8);
    v33(v11, v6);
    v33(v14, v6);
    v33(v16, v6);
  }

  return v32 & 1;
}

void sub_1D52B4674()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F3848, &unk_1D564E460);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v23 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F3850, &qword_1D564E8F0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v23 - v9;
  sub_1D52B4978(v1, v5);
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    sub_1D4E6C9CC(v5, &qword_1EC7F3848, &unk_1D564E460);
    v11 = 0xE300000000000000;
    v12 = 7104878;
  }

  else
  {
    (*(v7 + 32))(v10, v5, v6);
    v13 = objc_opt_self();
    v14 = sub_1D560BA08();
    v15 = [v13 stringFromMeasurement:v14 countStyle:0];

    v12 = sub_1D5614D68();
    v11 = v16;

    (*(v7 + 8))(v10, v6);
  }

  if (qword_1EDD54478 != -1)
  {
    swift_once();
  }

  v17 = sub_1D560C758();
  __swift_project_value_buffer(v17, qword_1EDD76A90);

  v18 = sub_1D560C738();
  v19 = sub_1D56156E8();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v24 = v21;
    *v20 = 136446210;
    v22 = sub_1D4E6835C(v12, v11, &v24);

    *(v20 + 4) = v22;
    _os_log_impl(&dword_1D4E3F000, v18, v19, "􀭟 Estimated disk usage: %{public}s.", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v21);
    MEMORY[0x1DA6ED200](v21, -1, -1);
    MEMORY[0x1DA6ED200](v20, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_1D52B4978(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F3848, &unk_1D564E460);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D52B49E8()
{
  v24 = *MEMORY[0x1E69E9840];
  v0 = [objc_opt_self() defaultManager];
  v1 = NSHomeDirectory();
  if (!v1)
  {
    sub_1D5614D68();
    v1 = sub_1D5614D38();
  }

  v21 = 0;
  v2 = [v0 attributesOfFileSystemForPath:v1 error:&v21];

  v3 = v21;
  if (v2)
  {
    type metadata accessor for FileAttributeKey();
    sub_1D52B4E44();
    v4 = sub_1D5614BB8();
    v5 = v3;

    sub_1D4ED0978(*MEMORY[0x1E696A3C0], v4);

    if (v23)
    {
      swift_dynamicCast();
    }

    else
    {
      sub_1D4E6C9CC(&v21, &qword_1EC7E9F98, &qword_1D561C420);
    }

    v6 = [objc_opt_self() bytes];
    sub_1D52B4E00();
    result = sub_1D560BA48();
    v8 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v9 = v21;
    v10 = sub_1D560BE98();

    swift_willThrow();
    if (qword_1EDD54478 != -1)
    {
      swift_once();
    }

    v11 = sub_1D560C758();
    __swift_project_value_buffer(v11, qword_1EDD76A90);
    v12 = v10;
    v13 = sub_1D560C738();
    v14 = sub_1D56156C8();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v21 = v16;
      *v15 = 136446210;
      swift_getErrorValue();
      v17 = sub_1D5616268();
      v19 = sub_1D4E6835C(v17, v18, &v21);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_1D4E3F000, v13, v14, "Monitor: Unable to obtain system free space: %{public}s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x1DA6ED200](v16, -1, -1);
      MEMORY[0x1DA6ED200](v15, -1, -1);
    }

    v21 = 0;
    v22 = 0xE000000000000000;
    sub_1D5615B68();

    v21 = 0xD00000000000002DLL;
    v22 = 0x80000001D5689EA0;
    swift_getErrorValue();
    v20 = sub_1D5616268();
    MEMORY[0x1DA6EAC70](v20);

    result = sub_1D5615E08();
    __break(1u);
  }

  return result;
}

uint64_t _s24DeviceConstraintsMonitorVMa()
{
  result = qword_1EDD5A178;
  if (!qword_1EDD5A178)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1D52B4E00()
{
  result = qword_1EDD52658;
  if (!qword_1EDD52658)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDD52658);
  }

  return result;
}

unint64_t sub_1D52B4E44()
{
  result = qword_1EDD52690;
  if (!qword_1EDD52690)
  {
    type metadata accessor for FileAttributeKey();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD52690);
  }

  return result;
}

_BYTE *_s16DeviceConstraintOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

void sub_1D52B4FA0()
{
  sub_1D52B5024();
  if (v0 <= 0x3F)
  {
    sub_1D52B5088();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D52B5024()
{
  if (!qword_1EDD5CFD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7F3850, &qword_1D564E8F0);
    v0 = sub_1D56158D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDD5CFD8);
    }
  }
}

void sub_1D52B5088()
{
  if (!qword_1EDD5CFE0)
  {
    sub_1D52B4E00();
    v0 = sub_1D560BA88();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDD5CFE0);
    }
  }
}

unint64_t sub_1D52B50E4()
{
  result = qword_1EC7F3858;
  if (!qword_1EC7F3858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F3858);
  }

  return result;
}

uint64_t sub_1D52B517C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_0_6();
  result = sub_1D560F5D8();
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1D52B51C0(uint64_t a1)
{
  v53 = sub_1D560C328();
  v3 = *(v53 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v53);
  v52 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = _s10DescriptorVMa();
  v6 = *(v51 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v51);
  v50 = (&v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v43 - v10;
  v12 = *(a1 + 16);
  v13 = MEMORY[0x1E69E7CC0];
  if (!v12)
  {
    return v13;
  }

  v43 = v1;
  v59 = MEMORY[0x1E69E7CC0];
  sub_1D4F04614();
  v13 = v59;
  result = sub_1D53FF658(a1);
  v17 = result;
  v18 = 0;
  v58 = a1 + 56;
  v48 = (v3 + 8);
  v49 = (v3 + 16);
  v44 = a1 + 64;
  v45 = v12;
  v46 = a1;
  v47 = v6;
  if ((result & 0x8000000000000000) == 0)
  {
    while (v17 < 1 << *(a1 + 32))
    {
      v19 = v17 >> 6;
      if ((*(v58 + 8 * (v17 >> 6)) & (1 << v17)) == 0)
      {
        goto LABEL_25;
      }

      if (*(a1 + 36) != v15)
      {
        goto LABEL_26;
      }

      LODWORD(v57) = v16;
      v54 = v18;
      v55 = v15;
      v20 = *(a1 + 48);
      v56 = *(v6 + 72);
      v21 = v50;
      sub_1D52CB248(v20 + v56 * v17, v50);
      v23 = *v21;
      v22 = v21[1];

      v24 = v13;
      v25 = v52;
      sub_1D560C2F8();
      *v11 = v23;
      *(v11 + 1) = v22;
      v26 = v51;
      v27 = v53;
      (*v49)(&v11[*(v51 + 20)], v25, v53);
      v11[v26[6]] = 0;
      *&v11[v26[7]] = 0;
      *&v11[v26[8]] = 0;
      v28 = &v11[v26[9]];
      sub_1D560C218();
      v29 = v25;
      v13 = v24;
      (*v48)(v29, v27);
      v30 = v26[10];
      v31 = _s13PersistedDateVMa();
      __swift_storeEnumTagSinglePayload(&v11[v30], 1, 1, v31);
      sub_1D4E58614();
      v59 = v24;
      v32 = *(v24 + 16);
      if (v32 >= *(v24 + 24) >> 1)
      {
        sub_1D4F04614();
        v13 = v59;
      }

      *(v13 + 16) = v32 + 1;
      v6 = v47;
      result = sub_1D52C994C(v11, v13 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + v32 * v56);
      if (v57)
      {
        goto LABEL_30;
      }

      a1 = v46;
      v33 = 1 << *(v46 + 32);
      if (v17 >= v33)
      {
        goto LABEL_27;
      }

      v34 = *(v58 + 8 * v19);
      if ((v34 & (1 << v17)) == 0)
      {
        goto LABEL_28;
      }

      if (*(v46 + 36) != v55)
      {
        goto LABEL_29;
      }

      v35 = v34 & (-2 << (v17 & 0x3F));
      if (v35)
      {
        v33 = __clz(__rbit64(v35)) | v17 & 0x7FFFFFFFFFFFFFC0;
        v36 = v45;
      }

      else
      {
        v57 = v13;
        v37 = v6;
        v38 = v19 << 6;
        v39 = v19 + 1;
        v36 = v45;
        v40 = (v44 + 8 * v19);
        while (v39 < (v33 + 63) >> 6)
        {
          v42 = *v40++;
          v41 = v42;
          v38 += 64;
          ++v39;
          if (v42)
          {
            result = sub_1D4ECC79C(v17, v55, 0);
            v33 = __clz(__rbit64(v41)) + v38;
            goto LABEL_19;
          }
        }

        result = sub_1D4ECC79C(v17, v55, 0);
LABEL_19:
        v6 = v37;
        v13 = v57;
      }

      v18 = v54 + 1;
      if (v54 + 1 == v36)
      {
        return v13;
      }

      v16 = 0;
      v15 = *(a1 + 36);
      v17 = v33;
      if (v33 < 0)
      {
        break;
      }
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

void sub_1D52B565C(uint64_t a1)
{
  v3 = _s10DescriptorVMa();
  v32 = *(v3 - 8);
  v4 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v31 = (v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(a1 + 16);
  if (v6)
  {
    v27[1] = v1;
    v36 = MEMORY[0x1E69E7CC0];
    sub_1D4F03CA4();
    v7 = v36;
    v10 = sub_1D53FF658(a1);
    v11 = 0;
    v35 = a1 + 56;
    v28 = a1 + 64;
    v29 = v6;
    v30 = a1;
    if ((v10 & 0x8000000000000000) == 0)
    {
      while (v10 < 1 << *(a1 + 32))
      {
        v12 = v10 >> 6;
        if ((*(v35 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
        {
          goto LABEL_24;
        }

        if (*(a1 + 36) != v8)
        {
          goto LABEL_25;
        }

        v34 = v9;
        v33 = v8;
        v13 = v31;
        sub_1D52CB248(*(a1 + 48) + *(v32 + 72) * v10, v31);
        v15 = *v13;
        v14 = v13[1];

        sub_1D4E58614();
        v36 = v7;
        v16 = *(v7 + 16);
        if (v16 >= *(v7 + 24) >> 1)
        {
          sub_1D4F03CA4();
          v7 = v36;
        }

        *(v7 + 16) = v16 + 1;
        v17 = v7 + 16 * v16;
        *(v17 + 32) = v15;
        *(v17 + 40) = v14;
        if (v34)
        {
          goto LABEL_29;
        }

        a1 = v30;
        v18 = 1 << *(v30 + 32);
        if (v10 >= v18)
        {
          goto LABEL_26;
        }

        v19 = *(v35 + 8 * v12);
        if ((v19 & (1 << v10)) == 0)
        {
          goto LABEL_27;
        }

        if (*(v30 + 36) != v33)
        {
          goto LABEL_28;
        }

        v20 = v19 & (-2 << (v10 & 0x3F));
        if (v20)
        {
          v18 = __clz(__rbit64(v20)) | v10 & 0x7FFFFFFFFFFFFFC0;
          v21 = v29;
        }

        else
        {
          v22 = v12 << 6;
          v23 = v12 + 1;
          v21 = v29;
          v24 = (v28 + 8 * v12);
          while (v23 < (v18 + 63) >> 6)
          {
            v26 = *v24++;
            v25 = v26;
            v22 += 64;
            ++v23;
            if (v26)
            {
              sub_1D4ECC79C(v10, v33, 0);
              v18 = __clz(__rbit64(v25)) + v22;
              goto LABEL_19;
            }
          }

          sub_1D4ECC79C(v10, v33, 0);
        }

LABEL_19:
        if (++v11 == v21)
        {
          return;
        }

        v9 = 0;
        v8 = *(a1 + 36);
        v10 = v18;
        if (v18 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }
}

uint64_t sub_1D52B595C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1D4F53BAC();
  result = MEMORY[0x1DA6EB390](v2, MEMORY[0x1E6975528], v3);
  v5 = 0;
  v11 = result;
  v6 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v6 == v5)
    {

      return v11;
    }

    if (v5 >= *(a1 + 16))
    {
      break;
    }

    ++v5;
    v9 = *(i - 1);
    v8 = *i;

    sub_1D52C7E84(&v10, v9, v8);
  }

  __break(1u);
  return result;
}

void sub_1D52B5A20()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_64_1();
  v1 = sub_1D560D838();
  v2 = OUTLINED_FUNCTION_4(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_59_0();
  v9 = (v7 - v8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v27 - v11;
  v13 = *(v0 + 16);
  OUTLINED_FUNCTION_161_6();
  sub_1D52CB2A0(v14, v15);
  v16 = OUTLINED_FUNCTION_222();
  v27[1] = MEMORY[0x1DA6EB390](v16);
  v17 = *(v0 + 16);
  if (v17)
  {
    v20 = *(v4 + 16);
    v18 = v4 + 16;
    v19 = v20;
    v21 = (*(v18 + 64) + 32) & ~*(v18 + 64);
    v27[0] = v0;
    v22 = v0 + v21;
    v23 = *(v18 + 56);
    do
    {
      v19(v9, v22, v1);
      sub_1D52C85A4(v12, v9);
      v24 = *(v18 - 8);
      v25 = OUTLINED_FUNCTION_93();
      v26(v25);
      v22 += v23;
      --v17;
    }

    while (v17);
  }

  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D52B5BA0(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1D50120D0();
  v4 = MEMORY[0x1DA6EB390](v2, &type metadata for MusicDownloadedSongCatalogProperties.FulfilledProperty, v3);
  v10 = v4;
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = 32;
    do
    {
      sub_1D52C8F38(&v9, *(a1 + v6++), sub_1D54B0378);
      --v5;
    }

    while (v5);

    return v10;
  }

  else
  {
    v7 = v4;
  }

  return v7;
}

uint64_t sub_1D52B5C4C(uint64_t a1)
{
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB478, &unk_1D5623530);
  v2 = *(*(v61 - 8) + 64);
  MEMORY[0x1EEE9AC00](v61);
  v73 = &v59 - v3;
  v75 = _s13PersistedDateVMa();
  v4 = *(*(v75 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v75);
  v59 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v62 = &v59 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB470, &qword_1D561F3D0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v63 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v69 = &v59 - v12;
  v13 = _s10DescriptorVMa();
  v68 = *(v13 - 1);
  v14 = *(v68 + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = (&v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = MEMORY[0x1EEE9AC00](v15);
  v64 = &v59 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = (&v59 - v21);
  MEMORY[0x1EEE9AC00](v20);
  v67 = &v59 - v23;
  v24 = *(a1 + 16);
  v25 = sub_1D52CB2A0(qword_1EDD59BE8, _s10DescriptorVMa);
  result = MEMORY[0x1DA6EB390](v24, v13, v25);
  v77 = result;
  v27 = 0;
  v71 = a1;
  v30 = *(a1 + 64);
  v29 = a1 + 64;
  v28 = v30;
  v31 = 1 << *(v29 - 32);
  if (v31 < 64)
  {
    v32 = ~(-1 << v31);
  }

  else
  {
    v32 = -1;
  }

  v33 = v32 & v28;
  v34 = (v31 + 63) >> 6;
  v66 = v29;
  v65 = v34;
  v81 = v22;
  v60 = v13;
  if ((v32 & v28) == 0)
  {
    goto LABEL_5;
  }

  do
  {
LABEL_9:
    v36 = *(v71 + 56);
    v82 = *(v68 + 72);
    v37 = v67;
    sub_1D52CB248(v36 + v82 * (__clz(__rbit64(v33)) | (v27 << 6)), v67);
    sub_1D52C994C(v37, v22);
    v38 = *(v77 + 40);
    sub_1D56162D8();
    v40 = *v22;
    v39 = v22[1];
    sub_1D5614E28();
    v41 = v13[5];
    v42 = sub_1D560C328();
    sub_1D52CB2A0(&qword_1EDD5CF60, MEMORY[0x1E6969530]);
    v80 = v41;
    sub_1D5614CB8();
    v79 = *(v22 + v13[6]);
    sub_1D56162F8();
    v78 = *(v22 + v13[7]);
    MEMORY[0x1DA6EC0D0]();
    v76 = *(v22 + v13[8]);
    MEMORY[0x1DA6EC0D0]();
    v74 = v13[9];
    v72 = v42;
    sub_1D5614CB8();
    v70 = v13[10];
    v43 = v69;
    sub_1D52CB1F8(v22 + v70, v69, &qword_1EC7EB470, &qword_1D561F3D0);
    if (__swift_getEnumTagSinglePayload(v43, 1, v75) == 1)
    {
      sub_1D56162F8();
    }

    else
    {
      sub_1D52C994C(v43, v62);
      sub_1D56162F8();
      sub_1D5614CB8();
      sub_1D4E58614();
    }

    v44 = sub_1D5616328();
    v45 = v77;
    v46 = -1 << *(v77 + 32);
    v47 = v44 & ~v46;
    if (((*(v77 + 56 + ((v47 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v47) & 1) == 0)
    {
LABEL_32:
      swift_isUniquelyReferenced_nonNull_native();
      v58 = v45;
      v22 = v81;
      sub_1D52CB248(v81, v64);
      v83 = v58;
      sub_1D54B0500();
      v77 = v83;
      goto LABEL_33;
    }

    v48 = ~v46;
    while (1)
    {
      sub_1D52CB248(*(v45 + 48) + v47 * v82, v17);
      v49 = *v17 == v40 && v17[1] == v39;
      if (!v49 && (sub_1D5616168() & 1) == 0)
      {
        goto LABEL_31;
      }

      v50 = v17 + v13[5];
      if ((sub_1D560C2E8() & 1) == 0)
      {
        goto LABEL_31;
      }

      if (v79 != *(v17 + v13[6]))
      {
        goto LABEL_31;
      }

      if (*(v17 + v13[7]) != v78)
      {
        goto LABEL_31;
      }

      if (*(v17 + v13[8]) != v76)
      {
        goto LABEL_31;
      }

      v51 = v17 + v13[9];
      if ((sub_1D560C2E8() & 1) == 0)
      {
        goto LABEL_31;
      }

      v52 = v13[10];
      v72 = *(v61 + 48);
      v53 = v73;
      sub_1D52CB1F8(v17 + v52, v73, &qword_1EC7EB470, &qword_1D561F3D0);
      sub_1D52CB1F8(v81 + v70, v53 + v72, &qword_1EC7EB470, &qword_1D561F3D0);
      v54 = v53;
      v55 = v75;
      if (__swift_getEnumTagSinglePayload(v54, 1, v75) == 1)
      {
        break;
      }

      v57 = v73;
      sub_1D52CB1F8(v73, v63, &qword_1EC7EB470, &qword_1D561F3D0);
      if (__swift_getEnumTagSinglePayload(v57 + v72, 1, v75) == 1)
      {
        sub_1D4E58614();
        v13 = v60;
        goto LABEL_29;
      }

      sub_1D52C994C(v73 + v72, v59);
      LODWORD(v72) = sub_1D560C2E8();
      sub_1D4E58614();
      sub_1D4E58614();
      sub_1D4E50004(v73, &qword_1EC7EB470, &qword_1D561F3D0);
      v13 = v60;
      if (v72)
      {
        goto LABEL_35;
      }

LABEL_31:
      sub_1D4E58614();
      v47 = (v47 + 1) & v48;
      if (((*(v45 + 56 + ((v47 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v47) & 1) == 0)
      {
        goto LABEL_32;
      }
    }

    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v73 + v72, 1, v55);
    v13 = v60;
    if (EnumTagSinglePayload != 1)
    {
LABEL_29:
      sub_1D4E50004(v73, &qword_1EC7EB478, &unk_1D5623530);
      goto LABEL_31;
    }

    sub_1D4E50004(v73, &qword_1EC7EB470, &qword_1D561F3D0);
LABEL_35:
    sub_1D4E58614();
    v22 = v81;
LABEL_33:
    v33 &= v33 - 1;
    result = sub_1D4E58614();
    v29 = v66;
    v34 = v65;
  }

  while (v33);
LABEL_5:
  while (2)
  {
    v35 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      __break(1u);
    }

    else
    {
      if (v35 < v34)
      {
        v33 = *(v29 + 8 * v35);
        ++v27;
        if (!v33)
        {
          continue;
        }

        v27 = v35;
        goto LABEL_9;
      }

      return v77;
    }

    return result;
  }
}

uint64_t sub_1D52B6568(uint64_t a1)
{
  v2 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAE30, &unk_1D561DC30);
  sub_1D52C99A4();
  v3 = OUTLINED_FUNCTION_222();
  result = MEMORY[0x1DA6EB390](v3);
  v5 = 0;
  v10 = result;
  v6 = *(a1 + 16);
  while (1)
  {
    if (v6 == v5)
    {

      return v10;
    }

    if (v5 >= *(a1 + 16))
    {
      break;
    }

    v7 = v5 + 1;
    v8 = *(a1 + 8 * v5 + 32);

    sub_1D52C9030(&v9, v8);

    v5 = v7;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D52B6630()
{
  OUTLINED_FUNCTION_64_1();
  v1 = type metadata accessor for MusicSuggestedSongsEntry();
  v2 = OUTLINED_FUNCTION_4(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_59_0();
  v9 = v7 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v23 - v11;
  v13 = *(v0 + 16);
  v14 = sub_1D52CB2A0(&qword_1EC7F3870, type metadata accessor for MusicSuggestedSongsEntry);
  v15 = MEMORY[0x1DA6EB390](v13, v1, v14);
  v24 = v15;
  v16 = *(v0 + 16);
  if (v16)
  {
    v17 = v0 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v18 = *(v4 + 72);
    do
    {
      v19 = OUTLINED_FUNCTION_93();
      sub_1D52CB248(v19, v20);
      sub_1D52C918C(v12, v9);
      sub_1D4E58614();
      v17 += v18;
      --v16;
    }

    while (v16);

    return v24;
  }

  else
  {
    v21 = v15;
  }

  return v21;
}

uint64_t MusicDownloadedSongCatalogStoreUpdater.init(databaseFilePath:readWrite:)()
{
  OUTLINED_FUNCTION_60();
  *(v0 + 80) = v1;
  *(v0 + 16) = v2;
  *(v0 + 24) = v3;
  v4 = _s8LocationVMa();
  OUTLINED_FUNCTION_22(v4);
  v6 = *(v5 + 64);
  *(v0 + 32) = OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D52B684C()
{
  OUTLINED_FUNCTION_80();
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  v3 = *(v0 + 80);
  v4 = *(v0 + 16);
  _s16MusicKitInternal0A18UserProfileRequestVACycfC_0();
  v5 = sub_1D560C0A8();
  *(v0 + 40) = v5;
  OUTLINED_FUNCTION_25_0(v5);
  *(v0 + 48) = v6;
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_128();
  v9(v8);
  type metadata accessor for SQLDatabase.Location(0);
  swift_storeEnumTagMultiPayload();
  v10 = _s8DatabaseCMa();
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  v13 = swift_task_alloc();
  *(v0 + 56) = v13;
  *v13 = v0;
  v13[1] = sub_1D52B6974;
  OUTLINED_FUNCTION_93_0(*(v0 + 32));

  return sub_1D52F2114();
}

uint64_t sub_1D52B6974()
{
  OUTLINED_FUNCTION_80();
  v3 = v2;
  OUTLINED_FUNCTION_59_1();
  v5 = v4;
  OUTLINED_FUNCTION_44();
  *v6 = v5;
  v8 = *(v7 + 56);
  v9 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v10 = v9;
  *(v5 + 64) = v0;

  if (!v0)
  {
    *(v5 + 72) = v3;
  }

  OUTLINED_FUNCTION_73_1();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1D52B6A7C()
{
  OUTLINED_FUNCTION_80();
  v1 = v0[9];
  v2 = v0[4];
  v3 = v0[2];
  (*(v0[6] + 8))(v0[3], v0[5]);
  *(v3 + *(type metadata accessor for MusicDownloadedSongCatalogStoreUpdater(0) + 20)) = v1;

  OUTLINED_FUNCTION_22_1();

  return v4();
}

uint64_t sub_1D52B6B0C()
{
  OUTLINED_FUNCTION_60();
  v1 = v0[4];
  v2 = v0[2];
  (*(v0[6] + 8))(v0[3], v0[5]);
  v3 = sub_1D560CD48();
  OUTLINED_FUNCTION_14(v3);
  (*(v4 + 8))(v2);

  OUTLINED_FUNCTION_55();
  v6 = v0[8];

  return v5();
}

uint64_t MusicDownloadedSongCatalogStoreUpdater.configuration.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = OUTLINED_FUNCTION_85_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  v5 = OUTLINED_FUNCTION_22(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_59_0();
  v10 = v8 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v22 - v12;
  sub_1D560CCE8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA840, &qword_1D561D790);
  v14 = type metadata accessor for MusicRequestConfiguration();
  v15 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(v13, v15 ^ 1u, 1, v14);
  OUTLINED_FUNCTION_179_5();
  sub_1D52CB1F8(v16, v17, v18, v19);
  OUTLINED_FUNCTION_57(v10, 1, v14);
  if (v20)
  {
    static MusicRequestConfiguration.globalDefault.getter(a1);
    OUTLINED_FUNCTION_57(v10, 1, v14);
    if (!v20)
    {
      sub_1D4E50004(v10, &qword_1EC7EA838, &unk_1D561CB10);
    }
  }

  else
  {
    sub_1D52C994C(v10, a1);
  }

  return sub_1D4E50004(v13, &qword_1EC7EA838, &unk_1D561CB10);
}

uint64_t sub_1D52B6D48(uint64_t a1)
{
  v2 = type metadata accessor for MusicRequestConfiguration();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1D52CB248(a1, &v6 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  return MusicDownloadedSongCatalogStoreUpdater.configuration.setter();
}

uint64_t MusicDownloadedSongCatalogStoreUpdater.configuration.setter()
{
  OUTLINED_FUNCTION_147();
  v1 = sub_1D560CD48();
  v2 = OUTLINED_FUNCTION_4(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MusicRequestConfiguration();
  OUTLINED_FUNCTION_29_46();
  sub_1D52CB2A0(v9, v10);
  sub_1D560E6C8();
  OUTLINED_FUNCTION_69_25();
  sub_1D4E58614();
  return (*(v4 + 40))(v0, v8, v1);
}

void (*MusicDownloadedSongCatalogStoreUpdater.configuration.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = sub_1D560CD48();
  v3[1] = v4;
  OUTLINED_FUNCTION_69(v4);
  v3[2] = v5;
  v3[3] = __swift_coroFrameAllocStub(*(v6 + 64));
  v7 = type metadata accessor for MusicRequestConfiguration();
  v3[4] = v7;
  OUTLINED_FUNCTION_22(v7);
  v9 = *(v8 + 64);
  v3[5] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[6] = v10;
  MusicDownloadedSongCatalogStoreUpdater.configuration.getter(v10);
  return sub_1D52B6FE0;
}

void sub_1D52B6FE0(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v4 = (*a1)[6];
  v6 = (*a1)[3];
  v5 = (*a1)[4];
  v7 = (*a1)[1];
  v8 = (*a1)[2];
  v9 = **a1;
  if (a2)
  {
    v10 = OUTLINED_FUNCTION_93();
    sub_1D52CB248(v10, v11);
    OUTLINED_FUNCTION_29_46();
    sub_1D52CB2A0(v12, v13);
    sub_1D560E6C8();
    sub_1D4E58614();
    v14 = OUTLINED_FUNCTION_4_63();
    v15(v14);
    sub_1D4E58614();
  }

  else
  {
    OUTLINED_FUNCTION_29_46();
    sub_1D52CB2A0(v16, v17);
    sub_1D560E6C8();
    OUTLINED_FUNCTION_69_25();
    sub_1D4E58614();
    v18 = OUTLINED_FUNCTION_4_63();
    v19(v18);
  }

  free(v4);
  free(v3);
  free(v6);

  free(v2);
}

uint64_t sub_1D52B7154()
{
  OUTLINED_FUNCTION_60();
  v1 = *(v0 + 16);
  OUTLINED_FUNCTION_85_16();
  *(v0 + 24) = v2;
  v3 = OUTLINED_FUNCTION_226_3();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1D52B71B4()
{
  OUTLINED_FUNCTION_80();
  v1 = v0[3];
  v0[4] = *(v1 + OBJC_IVAR____TtCC16MusicKitInternal31MusicDownloadedSongCatalogStore8Database_connection);
  v0[5] = *(v1 + OBJC_IVAR____TtCC16MusicKitInternal31MusicDownloadedSongCatalogStore8Database_databaseQueue);

  v2 = swift_task_alloc();
  v0[6] = v2;
  *v2 = v0;
  v2[1] = sub_1D52B7284;
  v3 = OUTLINED_FUNCTION_159();

  return sub_1D51C48A4(v3, v4);
}

uint64_t sub_1D52B7284()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v6 = *(v5 + 48);
  v7 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v8 = v7;
  v3[7] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_57_1();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = v3[4];
    v13 = v3[5];

    v14 = OUTLINED_FUNCTION_183_5();

    return v15(v14);
  }
}

uint64_t sub_1D52B73B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a2;
  *(v4 + 24) = a4;
  v5 = OUTLINED_FUNCTION_226_3();
  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1D52B73E0()
{
  OUTLINED_FUNCTION_80();
  v2 = v0[2];
  v1 = v0[3];
  v3 = _s10PropertiesVMa(0);
  v0[4] = v3;
  v4 = *(v1 + *(v3 + 32));

  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  OUTLINED_FUNCTION_82_18(v5);

  return sub_1D51C7D54();
}

uint64_t sub_1D52B7490()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_154_7();
  v3 = *(v1 + 40);
  v4 = *v2;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;

  OUTLINED_FUNCTION_153_4();
  v7 = *(v6 + 16);
  if (v0)
  {
    v8 = *(v6 + 16);

    OUTLINED_FUNCTION_71_0();

    return v9();
  }

  else
  {
    OUTLINED_FUNCTION_204();

    return MEMORY[0x1EEE6DFA0](v11, v12, v13);
  }
}

uint64_t sub_1D52B75CC()
{
  OUTLINED_FUNCTION_60();
  v1 = v0[2];
  v2 = *(v0[3] + *(v0[4] + 28));
  v3 = swift_task_alloc();
  v0[6] = v3;
  *v3 = v0;
  v4 = OUTLINED_FUNCTION_82_18(v3);

  return sub_1D51CB21C(v4, v5, v6);
}

uint64_t sub_1D52B7660()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_154_7();
  v3 = *(v1 + 48);
  v4 = *v2;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;

  OUTLINED_FUNCTION_153_4();
  v7 = *(v6 + 16);
  if (v0)
  {
    v8 = *(v6 + 16);

    OUTLINED_FUNCTION_71_0();

    return v9();
  }

  else
  {
    OUTLINED_FUNCTION_204();

    return MEMORY[0x1EEE6DFA0](v11, v12, v13);
  }
}

uint64_t sub_1D52B779C()
{
  OUTLINED_FUNCTION_60();
  v1 = v0[2];
  v2 = *(v0[3] + *(v0[4] + 36));
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  OUTLINED_FUNCTION_82_18(v3);

  return sub_1D51C8930();
}

uint64_t sub_1D52B7830()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_154_7();
  v3 = *(v1 + 56);
  v4 = *v2;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;

  OUTLINED_FUNCTION_153_4();
  v7 = *(v6 + 16);
  if (v0)
  {
    v8 = *(v6 + 16);

    OUTLINED_FUNCTION_71_0();

    return v9();
  }

  else
  {
    OUTLINED_FUNCTION_204();

    return MEMORY[0x1EEE6DFA0](v11, v12, v13);
  }
}

uint64_t sub_1D52B796C()
{
  OUTLINED_FUNCTION_60();
  v1 = v0[2];
  v2 = *(v0[3] + *(v0[4] + 40));
  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  OUTLINED_FUNCTION_82_18(v3);

  return sub_1D51C9D50();
}

uint64_t sub_1D52B7A00()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_154_7();
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v5 = *(v1 + 64);
  *v4 = *v2;
  *(v3 + 72) = v0;

  OUTLINED_FUNCTION_153_4();
  v7 = *(v6 + 16);
  if (v0)
  {
    OUTLINED_FUNCTION_204();

    return MEMORY[0x1EEE6DFA0](v8, v9, v10);
  }

  else
  {
    v11 = *(v6 + 16);

    OUTLINED_FUNCTION_71_0();

    return v12();
  }
}

uint64_t sub_1D52B7B3C()
{
  OUTLINED_FUNCTION_60();
  v1 = *(v0 + 16);

  v2 = *(v0 + 72);
  OUTLINED_FUNCTION_55();

  return v3();
}

uint64_t MusicDownloadedSongCatalogStoreUpdater.get(_:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_32_0();
}

uint64_t sub_1D52B7BAC()
{
  OUTLINED_FUNCTION_60();
  v1 = *(v0 + 24);
  OUTLINED_FUNCTION_85_16();
  *(v0 + 32) = v2;
  v3 = OUTLINED_FUNCTION_226_3();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1D52B7C0C()
{
  OUTLINED_FUNCTION_60();
  v1 = v0[4];
  v0[5] = *(v1 + OBJC_IVAR____TtCC16MusicKitInternal31MusicDownloadedSongCatalogStore8Database_connection);
  v0[6] = *(v1 + OBJC_IVAR____TtCC16MusicKitInternal31MusicDownloadedSongCatalogStore8Database_databaseQueue);

  v2 = OUTLINED_FUNCTION_138_9();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1D52B7C98()
{
  OUTLINED_FUNCTION_80();
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[2];
  v0[7] = sub_1D52B5BA0(&unk_1F50A4020);

  v0[8] = sub_1D52B595C(v4);
  v5 = swift_task_alloc();
  v0[9] = v5;
  *v5 = v0;
  v5[1] = sub_1D52B7D70;
  OUTLINED_FUNCTION_93_0(MEMORY[0x1E69E7CD0]);

  return sub_1D51BA21C();
}

uint64_t sub_1D52B7D70()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v6 = *(v5 + 72);
  v7 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v8 = v7;
  v3[10] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_57_1();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v13 = v3[7];
    v12 = v3[8];
    v16 = v3 + 5;
    v14 = v3[5];
    v15 = v16[1];

    v17 = OUTLINED_FUNCTION_183_5();

    return v18(v17);
  }
}

uint64_t sub_1D52B7EB8()
{
  OUTLINED_FUNCTION_80();
  v2 = v0[7];
  v1 = v0[8];
  v4 = v0[5];
  v3 = v0[6];

  OUTLINED_FUNCTION_55();
  v6 = v0[10];

  return v5();
}

uint64_t sub_1D52B7F4C()
{
  OUTLINED_FUNCTION_60();
  v1 = *(v0 + 16);
  OUTLINED_FUNCTION_85_16();
  *(v0 + 24) = v2;
  v3 = OUTLINED_FUNCTION_226_3();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1D52B7FAC()
{
  OUTLINED_FUNCTION_80();
  v1 = v0[3];
  v0[4] = *(v1 + OBJC_IVAR____TtCC16MusicKitInternal31MusicDownloadedSongCatalogStore8Database_connection);
  v0[5] = *(v1 + OBJC_IVAR____TtCC16MusicKitInternal31MusicDownloadedSongCatalogStore8Database_databaseQueue);

  v2 = swift_task_alloc();
  v0[6] = v2;
  *v2 = v0;
  v2[1] = sub_1D52B807C;
  OUTLINED_FUNCTION_159();

  return sub_1D51C5404();
}

uint64_t sub_1D52B807C()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v6 = *(v5 + 48);
  v7 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v8 = v7;
  v3[7] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_57_1();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    v12 = v3[4];
    v13 = v3[5];

    v14 = OUTLINED_FUNCTION_183_5();

    return v15(v14);
  }
}

uint64_t sub_1D52B81B0()
{
  OUTLINED_FUNCTION_60();
  v1 = v0[4];
  v2 = v0[5];

  OUTLINED_FUNCTION_55();
  v4 = v0[7];

  return v3();
}

uint64_t MusicDownloadedSongCatalogStoreUpdater._removeDownloadedSongCatalogProperties(assetAdamID:)(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  return OUTLINED_FUNCTION_32_0();
}

uint64_t sub_1D52B822C()
{
  OUTLINED_FUNCTION_60();
  v1 = *(v0 + 80);
  OUTLINED_FUNCTION_85_16();
  *(v0 + 88) = v2;
  v3 = OUTLINED_FUNCTION_226_3();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1D52B828C()
{
  OUTLINED_FUNCTION_60();
  v1 = v0[11];
  v0[12] = *(v1 + OBJC_IVAR____TtCC16MusicKitInternal31MusicDownloadedSongCatalogStore8Database_connection);
  v0[13] = *(v1 + OBJC_IVAR____TtCC16MusicKitInternal31MusicDownloadedSongCatalogStore8Database_databaseQueue);

  v2 = OUTLINED_FUNCTION_138_9();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1D52B8318()
{
  OUTLINED_FUNCTION_91();
  v1 = v0[12];
  v2 = v0[13];
  v4 = v0[8];
  v3 = v0[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAF40, &qword_1D561DD00);
  inited = swift_initStackObject();
  v0[14] = inited;
  *(inited + 16) = xmmword_1D561C050;
  *(inited + 32) = v4;
  *(inited + 40) = v3;

  v6 = swift_task_alloc();
  v0[15] = v6;
  *v6 = v0;
  v6[1] = sub_1D52B8404;

  return sub_1D51C7704(inited, v1, v2);
}

uint64_t sub_1D52B8404()
{
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_154_7();
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v5 = v1[15];
  v6 = *v2;
  *v4 = *v2;
  *(v3 + 128) = v0;

  OUTLINED_FUNCTION_153_4();
  v8 = *(v7 + 112);
  v9 = v1[13];
  v10 = v1[12];
  if (v0)
  {
    swift_setDeallocating();
    sub_1D4EFF24C();

    OUTLINED_FUNCTION_57_1();

    return MEMORY[0x1EEE6DFA0](v11, v12, v13);
  }

  else
  {

    swift_setDeallocating();
    sub_1D4EFF24C();
    v14 = *(v6 + 8);

    return v14();
  }
}

uint64_t sub_1D52B85BC()
{
  OUTLINED_FUNCTION_55();
  v1 = *(v0 + 128);
  return v2();
}

uint64_t sub_1D52B85E0()
{
  OUTLINED_FUNCTION_60();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F15A0, &qword_1D5640960);
  OUTLINED_FUNCTION_22(v5);
  v7 = *(v6 + 64);
  v1[6] = OUTLINED_FUNCTION_127();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB478, &unk_1D5623530);
  v1[7] = v8;
  OUTLINED_FUNCTION_22(v8);
  v10 = *(v9 + 64);
  v1[8] = OUTLINED_FUNCTION_127();
  v11 = _s13PersistedDateVMa();
  v1[9] = v11;
  OUTLINED_FUNCTION_22(v11);
  v13 = *(v12 + 64) + 15;
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB470, &qword_1D561F3D0);
  OUTLINED_FUNCTION_22(v14);
  v16 = *(v15 + 64) + 15;
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v17 = sub_1D560C328();
  v1[14] = v17;
  OUTLINED_FUNCTION_69(v17);
  v1[15] = v18;
  v20 = *(v19 + 64);
  v1[16] = OUTLINED_FUNCTION_127();
  v21 = _s10DescriptorVMa();
  v1[17] = v21;
  OUTLINED_FUNCTION_69(v21);
  v1[18] = v22;
  v24 = *(v23 + 64) + 15;
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v25 = sub_1D560D3F8();
  v1[22] = v25;
  OUTLINED_FUNCTION_69(v25);
  v1[23] = v26;
  v28 = *(v27 + 64);
  v1[24] = OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v29, v30, v31);
}

uint64_t sub_1D52B8818()
{
  v120 = v0;
  v3 = v0[23];
  v2 = v0[24];
  v4 = v0[22];
  v5 = v0[5];
  sub_1D560D3C8();
  OUTLINED_FUNCTION_222();
  LOBYTE(v5) = sub_1D560D3E8();
  v6 = *(v3 + 8);
  v7 = OUTLINED_FUNCTION_159();
  v8(v7);
  if ((v5 & 1) == 0)
  {
    if (qword_1EDD54478 != -1)
    {
      OUTLINED_FUNCTION_2_5();
    }

    v79 = v0[4];
    v80 = sub_1D560C758();
    __swift_project_value_buffer(v80, qword_1EDD76A90);
    OUTLINED_FUNCTION_0_6();

    v81 = sub_1D560C738();
    sub_1D56156C8();
    OUTLINED_FUNCTION_221_2();
    if (OUTLINED_FUNCTION_165_0())
    {
      v83 = v0[3];
      v82 = v0[4];
      OUTLINED_FUNCTION_142();
      v119[0] = OUTLINED_FUNCTION_119_9();
      *v1 = 136315138;
      v84 = OUTLINED_FUNCTION_93();
      *(v1 + 4) = sub_1D4E6835C(v84, v85, v86);
      OUTLINED_FUNCTION_163(&dword_1D4E3F000, v87, v88, "Expected feature flag is disabled, unable to download catalog tracks. Tried to download songs because %s.");
      OUTLINED_FUNCTION_19_22();
      OUTLINED_FUNCTION_83();
    }

    OUTLINED_FUNCTION_191_3();

    OUTLINED_FUNCTION_22_1();

    return v89();
  }

  sub_1D4EF1814(0xD000000000000040, 0x80000001D567E560, 0x15uLL);
  v0[25] = v9;
  v0[26] = v10;
  if (qword_1EDD54478 != -1)
  {
LABEL_53:
    OUTLINED_FUNCTION_2_5();
  }

  v11 = v0[4];
  v12 = sub_1D560C758();
  v0[27] = __swift_project_value_buffer(v12, qword_1EDD76A90);

  v13 = sub_1D560C738();
  v14 = sub_1D56156E8();

  if (os_log_type_enabled(v13, v14))
  {
    v16 = v0[3];
    v15 = v0[4];
    v17 = OUTLINED_FUNCTION_144();
    v119[0] = OUTLINED_FUNCTION_34_24();
    *v17 = 136446466;
    v18 = OUTLINED_FUNCTION_98();
    *(v17 + 4) = sub_1D4E6835C(v18, v19, v20);
    *(v17 + 12) = 2080;
    *(v17 + 14) = sub_1D4E6835C(v16, v15, v119);
    _os_log_impl(&dword_1D4E3F000, v13, v14, "[%{public}s] 􀀀􀀀􀀁 􀏥 Updating downloaded songs because %s.", v17, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_122();
    OUTLINED_FUNCTION_83();
  }

  v106 = v0[21];
  v116 = v0[19];
  v118 = v0[17];
  v21 = v0[15];
  v99 = v0[7];
  v100 = v0[18];
  v22 = v0[2];
  v25 = *(v22 + 56);
  v24 = v22 + 56;
  v23 = v25;
  v26 = -1 << *(v0[2] + 32);
  if (-v26 < 64)
  {
    v27 = ~(-1 << -v26);
  }

  else
  {
    v27 = -1;
  }

  v28 = v27 & v23;
  v29 = (63 - v26) >> 6;
  v101 = (v21 + 8);
  v102 = (v21 + 16);
  v105 = v0[2];

  v30 = 0;
  v117 = MEMORY[0x1E69E7CD0];
  v103 = v29;
  v104 = v24;
  while (2)
  {
    v0[28] = v117;
    if (v28)
    {
LABEL_14:
      v32 = v0[21];
      v33 = v0[16];
      v34 = v0[14];
      v108 = v0[13];
      v113 = v0[9];
      v35 = (*(v105 + 48) + ((v30 << 10) | (16 * __clz(__rbit64(v28)))));
      v37 = *v35;
      v36 = v35[1];

      sub_1D560C2F8();
      *v32 = v37;
      *(v106 + 8) = v36;
      (*v102)(&v32[v118[5]], v33, v34);
      v32[v118[6]] = 0;
      *&v32[v118[7]] = 511;
      *&v32[v118[8]] = 0;
      v112 = v118[9];
      sub_1D560C218();
      v38 = *v101;
      v39 = OUTLINED_FUNCTION_20_5();
      v40(v39);
      v41 = v118[10];
      OUTLINED_FUNCTION_33();
      __swift_storeEnumTagSinglePayload(v42, v43, v44, v113);
      v45 = *(v117 + 40);
      sub_1D56162D8();
      sub_1D5614E28();
      OUTLINED_FUNCTION_158_7();
      sub_1D52CB2A0(&qword_1EDD5CF60, v46);
      sub_1D5614CB8();
      sub_1D56162F8();
      MEMORY[0x1DA6EC0D0](511);
      MEMORY[0x1DA6EC0D0](0);
      sub_1D5614CB8();
      v107 = v41;
      sub_1D52CB1F8(&v32[v41], v108, &qword_1EC7EB470, &qword_1D561F3D0);
      v47 = OUTLINED_FUNCTION_35_1();
      OUTLINED_FUNCTION_57(v47, v48, v113);
      v111 = v28;
      if (v62)
      {
        sub_1D56162F8();
      }

      else
      {
        v49 = v0[13];
        v50 = v0[14];
        v51 = v0[11];
        OUTLINED_FUNCTION_157_7();
        sub_1D52C994C(v52, v51);
        sub_1D56162F8();
        sub_1D5614CB8();
        OUTLINED_FUNCTION_156_5();
        sub_1D4E58614();
      }

      sub_1D5616328();
      v53 = *(v117 + 32);
      OUTLINED_FUNCTION_168_5();
      v56 = v55 & ~v54;
      if (((*(v117 + 56 + ((v56 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v56) & 1) == 0)
      {
LABEL_39:
        v74 = v0[20];
        v73 = v0[21];
        swift_isUniquelyReferenced_nonNull_native();
        OUTLINED_FUNCTION_1_130();
        v75 = OUTLINED_FUNCTION_222();
        sub_1D52CB248(v75, v76);
        v119[0] = v117;
        sub_1D54B0500();
        v117 = v119[0];
        goto LABEL_40;
      }

      v57 = ~v54;
      v58 = *(v100 + 72);
      while (1)
      {
        v59 = v0[19];
        v60 = *(v117 + 48);
        OUTLINED_FUNCTION_1_130();
        sub_1D52CB248(v61, v59);
        v62 = *v59 == v37 && *(v116 + 8) == v36;
        if (!v62 && (sub_1D5616168() & 1) == 0)
        {
          goto LABEL_38;
        }

        v63 = v0[19] + v118[5];
        if ((sub_1D560C2E8() & 1) == 0)
        {
          goto LABEL_38;
        }

        v64 = v0[19];
        if (*(v64 + v118[6]))
        {
          goto LABEL_38;
        }

        if (*(v64 + v118[7]) != 511)
        {
          goto LABEL_38;
        }

        if (*(v64 + v118[8]))
        {
          goto LABEL_38;
        }

        v65 = v118[9];
        if ((sub_1D560C2E8() & 1) == 0)
        {
          goto LABEL_38;
        }

        v66 = v0[8];
        v109 = v0[9];
        v114 = *(v99 + 48);
        sub_1D52CB1F8(v0[19] + v118[10], v66, &qword_1EC7EB470, &qword_1D561F3D0);
        sub_1D52CB1F8(&v32[v107], v66 + v114, &qword_1EC7EB470, &qword_1D561F3D0);
        v67 = OUTLINED_FUNCTION_35_1();
        OUTLINED_FUNCTION_57(v67, v68, v109);
        if (v62)
        {
          break;
        }

        v110 = v0[9];
        sub_1D52CB1F8(v0[8], v0[12], &qword_1EC7EB470, &qword_1D561F3D0);
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v66 + v114, 1, v110);
        v70 = v0[12];
        if (EnumTagSinglePayload == 1)
        {
          OUTLINED_FUNCTION_156_5();
          sub_1D4E58614();
LABEL_36:
          sub_1D4E50004(v0[8], &qword_1EC7EB478, &unk_1D5623530);
          goto LABEL_38;
        }

        v97 = v0[10];
        v98 = v0[8];
        OUTLINED_FUNCTION_157_7();
        sub_1D52C994C(v66 + v114, v71);
        v115 = sub_1D560C2E8();
        sub_1D4E58614();
        sub_1D4E58614();
        sub_1D4E50004(v98, &qword_1EC7EB470, &qword_1D561F3D0);
        if (v115)
        {
          goto LABEL_41;
        }

LABEL_38:
        v72 = v0[19];
        OUTLINED_FUNCTION_0_167();
        sub_1D4E58614();
        v56 = (v56 + 1) & v57;
        if (((*(v117 + 56 + ((v56 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v56) & 1) == 0)
        {
          goto LABEL_39;
        }
      }

      OUTLINED_FUNCTION_57(v66 + v114, 1, v0[9]);
      if (v62)
      {
        sub_1D4E50004(v0[8], &qword_1EC7EB470, &qword_1D561F3D0);
LABEL_41:
        v78 = v0[19];
        OUTLINED_FUNCTION_0_167();
        sub_1D4E58614();
LABEL_40:
        v28 = (v111 - 1) & v111;
        v77 = v0[21];
        OUTLINED_FUNCTION_0_167();
        sub_1D4E58614();
        v29 = v103;
        v24 = v104;
        continue;
      }

      goto LABEL_36;
    }

    break;
  }

  while (1)
  {
    v31 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      __break(1u);
      goto LABEL_53;
    }

    if (v31 >= v29)
    {
      break;
    }

    v28 = *(v24 + 8 * v31);
    ++v30;
    if (v28)
    {
      v30 = v31;
      goto LABEL_14;
    }
  }

  v91 = v0[5];
  v92 = v0[2];

  OUTLINED_FUNCTION_85_16();
  v0[29] = v93;
  v94 = OUTLINED_FUNCTION_226_3();

  return MEMORY[0x1EEE6DFA0](v94, v95, v96);
}

uint64_t sub_1D52B9138()
{
  OUTLINED_FUNCTION_60();
  v1 = v0[29];
  v0[30] = *(v1 + OBJC_IVAR____TtCC16MusicKitInternal31MusicDownloadedSongCatalogStore8Database_connection);
  v0[31] = *(v1 + OBJC_IVAR____TtCC16MusicKitInternal31MusicDownloadedSongCatalogStore8Database_databaseQueue);

  v2 = OUTLINED_FUNCTION_138_9();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1D52B91C4()
{
  OUTLINED_FUNCTION_80();
  v1 = v0[30];
  v2 = v0[31];
  v3 = v0[6];
  sub_1D560BB08();
  v4 = OUTLINED_FUNCTION_87_14();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  v8 = swift_task_alloc();
  v0[32] = v8;
  *v8 = v0;
  v8[1] = sub_1D52B927C;
  OUTLINED_FUNCTION_93_0(v0[6]);

  return sub_1D51C1ABC();
}

uint64_t sub_1D52B927C()
{
  OUTLINED_FUNCTION_91();
  v3 = v2;
  v4 = *v1;
  v5 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v6 = v5;
  v7 = v4[32];
  *v6 = *v1;
  v5[33] = v0;

  v8 = v4[31];
  v9 = v4[30];
  if (v0)
  {
    v10 = v5[28];
    v11 = v5[6];

    sub_1D4E50004(v11, &qword_1EC7F15A0, &qword_1D5640960);
  }

  else
  {
    v12 = v5[6];
    v5[34] = v3;
    sub_1D4E50004(v12, &qword_1EC7F15A0, &qword_1D5640960);
  }

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_1D52B9420(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_90_1();
  OUTLINED_FUNCTION_100();
  v15 = v14[33];
  v16 = v14[34];
  v17 = v14[27];
  v18 = v14[28];
  v19 = v14[26];
  v20 = OUTLINED_FUNCTION_201();
  sub_1D52C9C78(v20, v21);
  v23 = v22;

  v14[35] = v23;

  v25 = sub_1D52B51C0(v24);
  v14[36] = v25;
  swift_bridgeObjectRelease_n();

  v26 = sub_1D560C738();
  sub_1D56156E8();

  if (OUTLINED_FUNCTION_302_1())
  {
    v28 = v14[25];
    v27 = v14[26];
    v29 = OUTLINED_FUNCTION_138_0();
    a10 = OUTLINED_FUNCTION_138_0();
    *v29 = 136446722;
    *(v29 + 4) = OUTLINED_FUNCTION_223_3(a10);
    *(v29 + 12) = 2050;
    *(v29 + 14) = *(v23 + 16);

    *(v29 + 22) = 2050;
    *(v29 + 24) = *(v25 + 16);

    OUTLINED_FUNCTION_271_0();
    _os_log_impl(v30, v31, v32, v33, v29, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(a10);
    OUTLINED_FUNCTION_122();
    OUTLINED_FUNCTION_118();
  }

  else
  {
  }

  v35 = v14[25];
  v34 = v14[26];
  v36 = v14[5];
  v37 = swift_task_alloc();
  v14[37] = v37;
  v37[2] = v36;
  v37[3] = v35;
  v37[4] = v34;
  v37[5] = v23;
  v37[6] = v25;
  OUTLINED_FUNCTION_27_0(dword_1D5650B80);
  v50 = v38;
  v39 = swift_task_alloc();
  v14[38] = v39;
  *v39 = v14;
  v39[1] = sub_1D52B9668;
  v40 = v14[29];
  OUTLINED_FUNCTION_89();

  return v41(v41, v42, v43, v44, v45, v46, v47, v48, v50, a10, a11, a12, a13, a14);
}

uint64_t sub_1D52B9668()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v6 = *(v5 + 304);
  v7 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v8 = v7;
  v3[39] = v0;

  if (!v0)
  {
    v10 = v3[36];
    v9 = v3[37];
    v11 = v3[35];
  }

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1D52B9784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_90_1();
  OUTLINED_FUNCTION_100();
  v16 = v14[26];
  v17 = v14[27];

  v18 = sub_1D560C738();
  sub_1D56156E8();

  if (OUTLINED_FUNCTION_152_0())
  {
    v20 = v14[25];
    v19 = v14[26];
    OUTLINED_FUNCTION_142();
    a11 = OUTLINED_FUNCTION_119_9();
    *(v15 + 4) = OUTLINED_FUNCTION_219_1(4.8751e-34, a11, v21);
    OUTLINED_FUNCTION_12_68();
    _os_log_impl(v22, v23, v24, v25, v15, 0xCu);
    OUTLINED_FUNCTION_19_22();
    OUTLINED_FUNCTION_83();
  }

  else
  {
    v26 = v14[26];
  }

  OUTLINED_FUNCTION_191_3();
  v37 = v27;

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_89();

  return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, v37, a11, a12, a13, a14);
}

uint64_t sub_1D52B98C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_90_1();
  OUTLINED_FUNCTION_100();
  v16 = v14[26];
  v17 = v14[27];

  v18 = sub_1D560C738();
  sub_1D56156E8();

  v19 = OUTLINED_FUNCTION_152_0();
  v20 = v14[26];
  if (v19)
  {
    v21 = v14[25];
    OUTLINED_FUNCTION_142();
    a11 = OUTLINED_FUNCTION_119_9();
    *(v15 + 4) = OUTLINED_FUNCTION_219_1(4.8751e-34, a11, v22);
    OUTLINED_FUNCTION_12_68();
    _os_log_impl(v23, v24, v25, v26, v15, 0xCu);
    OUTLINED_FUNCTION_19_22();
    OUTLINED_FUNCTION_83();
  }

  v27 = v14[33];
  OUTLINED_FUNCTION_194_5();

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_89();

  return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1D52B9A00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_90_1();
  OUTLINED_FUNCTION_100();
  v16 = v14[36];
  v17 = v14[37];
  v18 = v14[35];
  v20 = v14[26];
  v19 = v14[27];

  v21 = sub_1D560C738();
  sub_1D56156E8();
  OUTLINED_FUNCTION_146_1();

  if (OUTLINED_FUNCTION_152_0())
  {
    v23 = v14[25];
    v22 = v14[26];
    OUTLINED_FUNCTION_142();
    a11 = OUTLINED_FUNCTION_119_9();
    *(v15 + 4) = OUTLINED_FUNCTION_219_1(4.8751e-34, a11, v24);
    OUTLINED_FUNCTION_12_68();
    _os_log_impl(v25, v26, v27, v28, v15, 0xCu);
    OUTLINED_FUNCTION_19_22();
    OUTLINED_FUNCTION_83();
  }

  else
  {
    v29 = v14[26];
  }

  v30 = v14[39];
  OUTLINED_FUNCTION_194_5();

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_89();

  return v32(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1D52B9B58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[9] = a6;
  v7[10] = a7;
  v7[7] = a4;
  v7[8] = a5;
  v7[6] = a2;
  v9 = sub_1D560C328();
  v7[11] = v9;
  v10 = *(v9 - 8);
  v7[12] = v10;
  v11 = *(v10 + 64) + 15;
  v7[13] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370) - 8) + 64) + 15;
  v7[14] = swift_task_alloc();
  v7[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D52B9C68, a2, 0);
}

uint64_t sub_1D52B9C68()
{
  OUTLINED_FUNCTION_80();
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  v3 = *(v0 + 64);
  v4 = *(v0 + 48);

  *(v0 + 16) = v4;
  *(v0 + 24) = 0x8000000000000000;

  v5 = swift_task_alloc();
  *(v0 + 128) = v5;
  *v5 = v0;
  v5[1] = sub_1D52B9D40;
  v6 = *(v0 + 72);
  v7 = *(v0 + 80);
  v8 = *(v0 + 56);
  v9 = *(v0 + 64);

  return sub_1D52BA5C8(v5, (v0 + 16), v8, v9, v6, v7);
}

uint64_t sub_1D52B9D40()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_154_7();
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v5 = *(v1 + 128);
  *v4 = *v2;
  *(v3 + 136) = v0;

  OUTLINED_FUNCTION_153_4();
  v7 = *(v6 + 48);
  OUTLINED_FUNCTION_204();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1D52B9E54()
{
  OUTLINED_FUNCTION_91();
  v1 = v0[15];
  v3 = v0[10];
  v2 = v0[11];
  v5 = v0[8];
  v4 = v0[9];
  v6 = v0[6];

  v7 = OUTLINED_FUNCTION_35_1();
  __swift_storeEnumTagSinglePayload(v7, v8, 1, v2);

  v0[4] = v6;
  v0[5] = 0x8000000000000000;

  v9 = swift_task_alloc();
  v0[18] = v9;
  *v9 = v0;
  v9[1] = sub_1D52B9F5C;
  v10 = v0[15];
  v11 = v0[7];
  v12 = v0[8];

  return sub_1D52BAD04(v9, v0 + 4, v11, v12, v10);
}

uint64_t sub_1D52B9F5C()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_154_7();
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v5 = *(v1 + 144);
  *v4 = *v2;
  *(v3 + 152) = v0;

  OUTLINED_FUNCTION_153_4();
  v7 = *(v6 + 48);
  OUTLINED_FUNCTION_204();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1D52BA070()
{
  OUTLINED_FUNCTION_80();
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[8];
  v4 = v0[6];

  v5 = v0[17];
  v7 = v0[14];
  v6 = v0[15];
  v8 = v0[13];

  OUTLINED_FUNCTION_55();

  return v9();
}

uint64_t sub_1D52BA110()
{
  OUTLINED_FUNCTION_91();
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[11];
  v4 = v0[8];
  v5 = v0[6];

  v6 = OUTLINED_FUNCTION_159();
  sub_1D52CB1F8(v6, v7, v8, v9);
  if (__swift_getEnumTagSinglePayload(v1, 1, v3) == 1)
  {
    v10 = v0[14];
    OUTLINED_FUNCTION_102();
    sub_1D4E50004(v11, v12, v13);
    v15 = v0[14];
    v14 = v0[15];
    v16 = v0[13];
    OUTLINED_FUNCTION_102();
    sub_1D4E50004(v17, v18, v19);

    OUTLINED_FUNCTION_22_1();

    return v20();
  }

  else
  {
    v22 = v0[6];
    (*(v0[12] + 32))(v0[13], v0[14], v0[11]);

    v23 = swift_task_alloc();
    v0[20] = v23;
    *v23 = v0;
    v23[1] = sub_1D52BA354;
    v24 = v0[13];

    return sub_1D51C1534();
  }
}

uint64_t sub_1D52BA2AC()
{
  OUTLINED_FUNCTION_80();
  v1 = v0[15];
  v2 = v0[8];
  v3 = v0[6];

  sub_1D4E50004(v1, &qword_1EC7EA3B8, &unk_1D561E370);
  v4 = v0[19];
  v6 = v0[14];
  v5 = v0[15];
  v7 = v0[13];

  OUTLINED_FUNCTION_55();

  return v8();
}

uint64_t sub_1D52BA354()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v6 = *(v5 + 160);
  v7 = *(v5 + 48);
  v8 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v9 = v8;
  *(v3 + 168) = v0;

  v10 = *(v3 + 48);
  if (v0)
  {
    v11 = sub_1D52BA51C;
  }

  else
  {
    v11 = sub_1D52BA474;
  }

  return MEMORY[0x1EEE6DFA0](v11, v10, 0);
}

uint64_t sub_1D52BA474()
{
  OUTLINED_FUNCTION_80();
  (*(v0[12] + 8))(v0[13], v0[11]);
  v1 = v0[14];
  v2 = v0[13];
  sub_1D4E50004(v0[15], &qword_1EC7EA3B8, &unk_1D561E370);

  OUTLINED_FUNCTION_22_1();

  return v3();
}

uint64_t sub_1D52BA51C()
{
  OUTLINED_FUNCTION_80();
  v1 = v0[15];
  (*(v0[12] + 8))(v0[13], v0[11]);
  sub_1D4E50004(v1, &qword_1EC7EA3B8, &unk_1D561E370);
  v2 = v0[21];
  v4 = v0[14];
  v3 = v0[15];
  v5 = v0[13];

  OUTLINED_FUNCTION_55();

  return v6();
}

uint64_t sub_1D52BA5C8(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 72) = a5;
  *(v6 + 80) = a6;
  *(v6 + 56) = a3;
  *(v6 + 64) = a4;
  *(v6 + 88) = *a2;
  return MEMORY[0x1EEE6DFA0](sub_1D52BA5F4, 0, 0);
}

uint64_t sub_1D52BA8B8()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v6 = *(v5 + 120);
  v7 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v8 = v7;
  *(v3 + 128) = v0;

  if (!v0)
  {
    v9 = *(v3 + 112);
  }

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1D52BAB30()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v6 = *(v5 + 136);
  v7 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v8 = v7;
  *(v3 + 144) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_57_1();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1((v3 + 16));
    OUTLINED_FUNCTION_55();

    return v12();
  }
}

uint64_t sub_1D52BAC4C()
{
  OUTLINED_FUNCTION_60();
  v1 = *(v0 + 112);

  v2 = *(v0 + 128);
  OUTLINED_FUNCTION_55();

  return v3();
}

uint64_t sub_1D52BACA8()
{
  OUTLINED_FUNCTION_60();
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 144);
  OUTLINED_FUNCTION_55();

  return v2();
}

uint64_t sub_1D52BAD04(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a3;
  v7 = sub_1D560C328();
  v5[5] = v7;
  v8 = *(v7 - 8);
  v5[6] = v8;
  v9 = *(v8 + 64) + 15;
  v5[7] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370) - 8) + 64) + 15;
  v11 = swift_task_alloc();
  v13 = *a2;
  v12 = a2[1];
  v5[8] = v11;
  v5[9] = v13;
  v5[10] = v12;
  v14 = swift_task_alloc();
  v5[11] = v14;
  *v14 = v5;
  v14[1] = sub_1D52BAE74;

  return sub_1D535C70C(v11, 0x6C6C69666B636162, 0xEE0068636F70655FLL, v13, v12);
}

uint64_t sub_1D52BAE74()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_8();
  *v3 = v2;
  v5 = *(v4 + 88);
  v6 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v7 = v6;
  *(v8 + 96) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D52BAF70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_161_0();
  OUTLINED_FUNCTION_75_0();
  v13 = v12[8];
  v14 = v12[5];
  v15 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v15, v16, v17);
  if (v18)
  {
    if (qword_1EDD54478 != -1)
    {
      OUTLINED_FUNCTION_2_5();
    }

    v19 = v12[3];
    v20 = sub_1D560C758();
    OUTLINED_FUNCTION_285_1(v20, qword_1EDD76A90);
    v21 = sub_1D560C738();
    sub_1D56156E8();

    if (OUTLINED_FUNCTION_302_1())
    {
      v23 = v12[2];
      v22 = v12[3];
      v24 = OUTLINED_FUNCTION_144();
      v66 = OUTLINED_FUNCTION_34_24();
      *v24 = 136446466;
      *(v24 + 4) = OUTLINED_FUNCTION_223_3(v66);
      *(v24 + 12) = 2082;
      v25 = OUTLINED_FUNCTION_98();
      *(v24 + 14) = sub_1D4E6835C(v25, v26, v27);
      OUTLINED_FUNCTION_271_0();
      _os_log_impl(v28, v29, v30, v31, v24, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_122();
      OUTLINED_FUNCTION_118();
    }

    v32 = v12[7];
    sub_1D560C2F8();
    sub_1D560C208();
    sub_1D5615558();
    v12[13] = v33;
    v34 = swift_task_alloc();
    v12[14] = v34;
    *v34 = v12;
    v34[1] = sub_1D52BB1C4;
    v35 = v12[9];
    v36 = v12[10];
    OUTLINED_FUNCTION_68_4();
    OUTLINED_FUNCTION_134();

    return sub_1D52FAA28(v37, v38, v39, v40, v41, v42);
  }

  else
  {
    v45 = v12[4];
    v46 = OUTLINED_FUNCTION_222();
    sub_1D4E50004(v46, v47, &unk_1D561E370);
    v48 = OUTLINED_FUNCTION_128();
    sub_1D4E50004(v48, v49, &unk_1D561E370);
    v50 = v12[7];
    v51 = v12[8];
    v52 = v12[4];
    v53 = v12[5];
    OUTLINED_FUNCTION_33();
    __swift_storeEnumTagSinglePayload(v54, v55, v56, v57);

    OUTLINED_FUNCTION_22_1();
    OUTLINED_FUNCTION_134();

    return v59(v58, v59, v60, v61, v62, v63, v64, v65, a9, a10, a11, a12);
  }
}

uint64_t sub_1D52BB1C4()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v6 = *(v5 + 112);
  v7 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v8 = v7;
  *(v3 + 120) = v0;

  if (!v0)
  {
    v9 = *(v3 + 104);
  }

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1D52BB2C4()
{
  OUTLINED_FUNCTION_91();
  v1 = v0[7];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[4];
  sub_1D4E50004(v0[8], &qword_1EC7EA3B8, &unk_1D561E370);
  sub_1D4E50004(v4, &qword_1EC7EA3B8, &unk_1D561E370);
  v5 = *(v3 + 32);
  OUTLINED_FUNCTION_102();
  v6();
  v7 = v0[7];
  v8 = v0[8];
  __swift_storeEnumTagSinglePayload(v0[4], 0, 1, v0[5]);

  OUTLINED_FUNCTION_22_1();

  return v9();
}

uint64_t sub_1D52BB398()
{
  OUTLINED_FUNCTION_80();
  v1 = v0[13];
  v2 = v0[7];
  v3 = v0[8];
  v4 = v0[5];
  v5 = v0[6];

  v6 = *(v5 + 8);
  v7 = OUTLINED_FUNCTION_128();
  v8(v7);
  sub_1D4E50004(v3, &qword_1EC7EA3B8, &unk_1D561E370);
  v9 = v0[15];
  v11 = v0[7];
  v10 = v0[8];

  OUTLINED_FUNCTION_55();

  return v12();
}

uint64_t sub_1D52BB440()
{
  OUTLINED_FUNCTION_60();
  v1 = v0[12];
  v3 = v0[7];
  v2 = v0[8];

  OUTLINED_FUNCTION_55();

  return v4();
}

uint64_t sub_1D52BB4A4()
{
  OUTLINED_FUNCTION_60();
  *(v1 + 88) = v2;
  *(v1 + 96) = v0;
  *(v1 + 72) = v3;
  *(v1 + 80) = v4;
  *(v1 + 200) = v5;
  *(v1 + 56) = v6;
  *(v1 + 64) = v7;
  v8 = type metadata accessor for MusicDownloadedSongCatalogStoreUpdater.Report(0);
  *(v1 + 104) = v8;
  OUTLINED_FUNCTION_22(v8);
  v10 = *(v9 + 64);
  *(v1 + 112) = OUTLINED_FUNCTION_127();
  v11 = _s10PropertiesVMa(0);
  OUTLINED_FUNCTION_22(v11);
  v13 = *(v12 + 64);
  *(v1 + 120) = OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v14, v15, v16);
}

uint64_t sub_1D52BB550()
{
  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_160();
  if (*(v0 + 200) == 1)
  {
    if (qword_1EDD54478 != -1)
    {
      OUTLINED_FUNCTION_2_5();
    }

    v2 = *(v0 + 88);
    v3 = sub_1D560C758();
    __swift_project_value_buffer(v3, qword_1EDD76A90);
    OUTLINED_FUNCTION_0_6();

    v4 = sub_1D560C738();
    sub_1D56156E8();
    OUTLINED_FUNCTION_221_2();
    if (OUTLINED_FUNCTION_165_0())
    {
      v6 = *(v0 + 80);
      v5 = *(v0 + 88);
      OUTLINED_FUNCTION_142();
      OUTLINED_FUNCTION_119_9();
      *v1 = 136446210;
      v7 = OUTLINED_FUNCTION_93();
      *(v1 + 4) = sub_1D4E6835C(v7, v8, v9);
      v12 = "[%{public}s] 􁘿 Backfill state: 􀐒 Including backfill.";
LABEL_10:
      OUTLINED_FUNCTION_163(&dword_1D4E3F000, v10, v11, v12);
      OUTLINED_FUNCTION_19_22();
      OUTLINED_FUNCTION_83();
    }
  }

  else
  {
    if (qword_1EDD54478 != -1)
    {
      OUTLINED_FUNCTION_2_5();
    }

    v13 = *(v0 + 88);
    v14 = sub_1D560C758();
    __swift_project_value_buffer(v14, qword_1EDD76A90);
    OUTLINED_FUNCTION_0_6();

    v4 = sub_1D560C738();
    sub_1D56156E8();
    OUTLINED_FUNCTION_221_2();
    if (OUTLINED_FUNCTION_165_0())
    {
      v16 = *(v0 + 80);
      v15 = *(v0 + 88);
      OUTLINED_FUNCTION_142();
      OUTLINED_FUNCTION_119_9();
      *v1 = 136446210;
      v17 = OUTLINED_FUNCTION_93();
      *(v1 + 4) = sub_1D4E6835C(v17, v18, v19);
      v12 = "[%{public}s] 􁘿 Backfill state: 􀐔 Excluding backfill.";
      goto LABEL_10;
    }
  }

  if (qword_1EDD54478 != -1)
  {
    OUTLINED_FUNCTION_2_5();
  }

  v20 = *(v0 + 120);
  v21 = *(v0 + 88);
  v22 = *(v0 + 64);
  v23 = sub_1D560C758();
  *(v0 + 128) = __swift_project_value_buffer(v23, qword_1EDD76A90);
  v24 = OUTLINED_FUNCTION_71();
  sub_1D52CB248(v24, v25);

  v26 = sub_1D560C738();
  sub_1D56156E8();
  OUTLINED_FUNCTION_221_2();
  v27 = OUTLINED_FUNCTION_165_0();
  v28 = *(v0 + 120);
  if (v27)
  {
    v30 = *(v0 + 80);
    v29 = *(v0 + 88);
    v31 = OUTLINED_FUNCTION_144();
    OUTLINED_FUNCTION_138_0();
    OUTLINED_FUNCTION_279_0();
    *v31 = 136446466;
    v32 = OUTLINED_FUNCTION_45_3();
    *(v31 + 4) = sub_1D4E6835C(v32, v33, v34);
    *(v31 + 12) = 2050;
    v35 = *v28;
    sub_1D4E58614();
    *(v31 + 14) = v35;
    OUTLINED_FUNCTION_128_2(&dword_1D4E3F000, v36, v37, "[%{public}s] Getting up to %{public}ld unfulfilled descriptors...");
    OUTLINED_FUNCTION_139();
    OUTLINED_FUNCTION_54();
  }

  else
  {
    v38 = *(v0 + 120);
    sub_1D4E58614();
  }

  v39 = *(v0 + 96);
  OUTLINED_FUNCTION_85_16();
  *(v0 + 136) = v40;
  OUTLINED_FUNCTION_226_3();
  OUTLINED_FUNCTION_25_3();

  return MEMORY[0x1EEE6DFA0](v41, v42, v43);
}

uint64_t sub_1D52BB824()
{
  OUTLINED_FUNCTION_60();
  v1 = v0[17];
  v0[18] = *(v1 + OBJC_IVAR____TtCC16MusicKitInternal31MusicDownloadedSongCatalogStore8Database_connection);
  v0[19] = *(v1 + OBJC_IVAR____TtCC16MusicKitInternal31MusicDownloadedSongCatalogStore8Database_databaseQueue);

  v2 = OUTLINED_FUNCTION_138_9();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1D52BB8B0()
{
  OUTLINED_FUNCTION_80();
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);
  v3 = *(v0 + 64);
  v5 = *v3;
  v4 = v3[1];
  v6 = swift_task_alloc();
  *(v0 + 160) = v6;
  *v6 = v0;
  v6[1] = sub_1D52BB968;
  v7 = *(v0 + 72);
  v8 = *(v0 + 200);

  return sub_1D51C2D3C();
}

uint64_t sub_1D52BB968()
{
  OUTLINED_FUNCTION_80();
  v3 = v2;
  OUTLINED_FUNCTION_59_1();
  v5 = v4;
  OUTLINED_FUNCTION_44();
  *v6 = v5;
  v8 = *(v7 + 160);
  v9 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v10 = v9;
  v5[21] = v0;

  if (!v0)
  {
    v11 = v5[18];
    v12 = v5[19];

    v5[22] = v3;
  }

  OUTLINED_FUNCTION_73_1();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_1D52BBA80()
{
  OUTLINED_FUNCTION_80();
  v1 = *(v0 + 176);
  v2 = OUTLINED_FUNCTION_159();
  *(v0 + 40) = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_72_22();
  OUTLINED_FUNCTION_102();
  *(v0 + 48) = sub_1D4E62A60(v4, v5, v6);
  *(v0 + 16) = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  *(v0 + 184) = v7;
  *v7 = v8;
  v7[1] = sub_1D52BBB68;
  v9 = *(v0 + 112);
  v10 = *(v0 + 88);
  v11 = *(v0 + 96);
  v12 = *(v0 + 72);
  v13 = *(v0 + 80);
  v14 = *(v0 + 64);
  v15 = *(v0 + 200);

  return sub_1D52BBF80(v9, v15, v0 + 16, v14, v12, v13, v10);
}

uint64_t sub_1D52BBB68()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v6 = *(v5 + 184);
  v7 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v8 = v7;
  *(v3 + 192) = v0;

  if (!v0)
  {
    __swift_destroy_boxed_opaque_existential_1((v3 + 16));
  }

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D52BBC68()
{
  OUTLINED_FUNCTION_60();
  sub_1D52C994C(v0[14], v0[7]);
  v2 = v0[14];
  v1 = v0[15];

  OUTLINED_FUNCTION_55();

  return v3();
}

uint64_t sub_1D52BBCE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_161_0();
  a19 = v22;
  a20 = v23;
  OUTLINED_FUNCTION_75_0();
  a18 = v20;
  v24 = v20[21];
  v25 = v20[18];
  v26 = v20[19];
  v27 = v20[16];
  v28 = v20[11];

  v29 = v24;
  v30 = sub_1D560C738();
  sub_1D56156C8();
  OUTLINED_FUNCTION_146_1();

  if (OUTLINED_FUNCTION_152_0())
  {
    v31 = v20[21];
    v33 = v20[10];
    v32 = v20[11];
    OUTLINED_FUNCTION_144();
    OUTLINED_FUNCTION_259();
    OUTLINED_FUNCTION_119_9();
    OUTLINED_FUNCTION_88_12();
    *v24 = 136446466;
    v36 = OUTLINED_FUNCTION_230_3(v34, v35, &a10);
    OUTLINED_FUNCTION_217_3(v36);
    v37 = _swift_stdlib_bridgeErrorToNSError();
    *(v24 + 14) = v37;
    *v21 = v37;
    OUTLINED_FUNCTION_12_68();
    _os_log_impl(v38, v39, v40, v41, v24, 0x16u);
    sub_1D4E50004(v21, &unk_1EC7F2C00, &qword_1D5623260);
    OUTLINED_FUNCTION_83();
    __swift_destroy_boxed_opaque_existential_1(v28);
    OUTLINED_FUNCTION_118();
    OUTLINED_FUNCTION_122();
  }

  v42 = v20[21];
  OUTLINED_FUNCTION_291_1();
  OUTLINED_FUNCTION_212_4();

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_134();

  return v44(v43, v44, v45, v46, v47, v48, v49, v50, a9, a10, a11, a12);
}

uint64_t sub_1D52BBE38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t *a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_161_0();
  a19 = v22;
  a20 = v23;
  OUTLINED_FUNCTION_75_0();
  a18 = v20;
  v24 = v20[24];
  v25 = v20[16];
  v26 = v20[11];
  __swift_destroy_boxed_opaque_existential_1(v20 + 2);

  v27 = v24;
  v28 = sub_1D560C738();
  sub_1D56156C8();
  OUTLINED_FUNCTION_146_1();

  if (OUTLINED_FUNCTION_152_0())
  {
    v29 = v20[24];
    v31 = v20[10];
    v30 = v20[11];
    OUTLINED_FUNCTION_144();
    OUTLINED_FUNCTION_259();
    OUTLINED_FUNCTION_119_9();
    OUTLINED_FUNCTION_88_12();
    *v24 = 136446466;
    v34 = OUTLINED_FUNCTION_230_3(v32, v33, &a10);
    OUTLINED_FUNCTION_217_3(v34);
    v35 = _swift_stdlib_bridgeErrorToNSError();
    *(v24 + 14) = v35;
    *v21 = v35;
    OUTLINED_FUNCTION_12_68();
    _os_log_impl(v36, v37, v38, v39, v24, 0x16u);
    sub_1D4E50004(v21, &unk_1EC7F2C00, &qword_1D5623260);
    OUTLINED_FUNCTION_83();
    __swift_destroy_boxed_opaque_existential_1(v26);
    OUTLINED_FUNCTION_118();
    OUTLINED_FUNCTION_122();
  }

  v40 = v20[24];
  OUTLINED_FUNCTION_291_1();
  OUTLINED_FUNCTION_212_4();

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_134();

  return v42(v41, v42, v43, v44, v45, v46, v47, v48, a9, a10, a11, a12);
}

uint64_t sub_1D52BBF80(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 112) = a7;
  *(v8 + 120) = v7;
  *(v8 + 96) = a5;
  *(v8 + 104) = a6;
  *(v8 + 80) = a3;
  *(v8 + 88) = a4;
  *(v8 + 224) = a2;
  *(v8 + 72) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D52BBFB0, 0, 0);
}

uint64_t sub_1D52BBFB0()
{
  OUTLINED_FUNCTION_160();
  v2 = v0[10];
  v3 = *(v2 + 24);
  v4 = *(v2 + 32);
  v5 = OUTLINED_FUNCTION_128();
  __swift_project_boxed_opaque_existential_1(v5, v6);
  OUTLINED_FUNCTION_0_6();
  if (sub_1D5615628())
  {
    if (qword_1EDD54478 != -1)
    {
      OUTLINED_FUNCTION_2_5();
    }

    v7 = v0[14];
    v8 = sub_1D560C758();
    __swift_project_value_buffer(v8, qword_1EDD76A90);
    OUTLINED_FUNCTION_0_6();

    v9 = sub_1D560C738();
    sub_1D56156E8();
    OUTLINED_FUNCTION_221_2();
    if (OUTLINED_FUNCTION_165_0())
    {
      v11 = v0[13];
      v10 = v0[14];
      OUTLINED_FUNCTION_142();
      OUTLINED_FUNCTION_119_9();
      *v1 = 136446210;
      v12 = OUTLINED_FUNCTION_93();
      *(v1 + 4) = sub_1D4E6835C(v12, v13, v14);
      OUTLINED_FUNCTION_163(&dword_1D4E3F000, v15, v16, "[%{public}s] 􀔩 No descriptors to download.");
      OUTLINED_FUNCTION_19_22();
      OUTLINED_FUNCTION_83();
    }

    v17 = v0[15];
    v18 = OUTLINED_FUNCTION_85_16();
    v20 = OUTLINED_FUNCTION_149_5(v18, v19);

    return MEMORY[0x1EEE6DFA0](v20, v21, v22);
  }

  else
  {
    v24 = *(v2 + 24);
    v23 = *(v2 + 32);
    __swift_project_boxed_opaque_existential_1(v0[10], v24);
    v25 = *(v23 + 8);
    sub_1D56150A8();
    v26 = swift_task_alloc();
    v0[16] = v26;
    *v26 = v0;
    v26[1] = sub_1D52BC1A4;
    v27 = v0[14];
    v28 = v0[15];
    v29 = v0[13];
    v30 = v0[11];
    v31 = OUTLINED_FUNCTION_93_0(v0[10]);

    return sub_1D52BCD4C(v31, v32, v33, v34, v35);
  }
}

uint64_t sub_1D52BC1A4()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_8();
  *v3 = v2;
  v5 = *(v4 + 128);
  *v3 = *v1;
  *(v2 + 136) = v6;
  *(v2 + 144) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D52BC2A8()
{
  OUTLINED_FUNCTION_161_0();
  v13 = v1;
  OUTLINED_FUNCTION_75_0();
  v2 = v0[17];
  v4 = v0[14];
  v3 = v0[15];
  v5 = v0[13];
  v6 = v0[11];
  v7 = *(v3 + *(type metadata accessor for MusicDownloadedSongCatalogStoreUpdater(0) + 20));
  v8 = swift_task_alloc();
  v0[19] = v8;
  v8[2] = v2;
  v8[3] = v5;
  v8[4] = v4;
  v8[5] = v3;
  v8[6] = v6;
  OUTLINED_FUNCTION_27_0(&unk_1D564E618);
  v12 = v9;
  v10 = swift_task_alloc();
  v0[20] = v10;
  *v10 = v0;
  v10[1] = sub_1D52BC3B8;

  return v12();
}

uint64_t sub_1D52BC3B8()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_154_7();
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v5 = *(v1 + 160);
  *v4 = *v2;
  *(v3 + 168) = v0;

  OUTLINED_FUNCTION_153_4();
  v7 = *(v6 + 152);
  v8 = *(v1 + 136);

  OUTLINED_FUNCTION_73_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D52BC4EC()
{
  OUTLINED_FUNCTION_60();
  v1 = *(v0 + 120);
  v2 = OUTLINED_FUNCTION_85_16();
  v4 = OUTLINED_FUNCTION_149_5(v2, v3);

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1D52BC53C()
{
  OUTLINED_FUNCTION_60();
  v1 = v0[22];
  v0[23] = *(v1 + OBJC_IVAR____TtCC16MusicKitInternal31MusicDownloadedSongCatalogStore8Database_connection);
  v0[24] = *(v1 + OBJC_IVAR____TtCC16MusicKitInternal31MusicDownloadedSongCatalogStore8Database_databaseQueue);

  v2 = OUTLINED_FUNCTION_138_9();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1D52BC5C8()
{
  OUTLINED_FUNCTION_80();
  v1 = *(v0 + 184);
  v2 = *(v0 + 192);
  v3 = *(*(v0 + 88) + 8);
  v4 = swift_task_alloc();
  *(v0 + 200) = v4;
  *v4 = v0;
  v4[1] = sub_1D52BC67C;
  v5 = *(v0 + 96);
  v6 = *(v0 + 224);

  return sub_1D51C4BB0(v6, v5, v3, v1, v2);
}

uint64_t sub_1D52BC67C()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v6 = *(v5 + 200);
  v7 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v8 = v7;
  v3[26] = v9;
  v3[27] = v0;

  if (!v0)
  {
    v10 = v3[23];
    v11 = v3[24];
  }

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1D52BC788()
{
  OUTLINED_FUNCTION_75_0();
  v26 = v0;
  if (qword_1EDD54478 != -1)
  {
    OUTLINED_FUNCTION_2_5();
  }

  v1 = *(v0 + 112);
  v2 = *(v0 + 80);
  v3 = sub_1D560C758();
  __swift_project_value_buffer(v3, qword_1EDD76A90);
  sub_1D4E628D4(v2, v0 + 16);

  v4 = sub_1D560C738();
  v5 = sub_1D56156E8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 208);
    v8 = *(v0 + 104);
    v7 = *(v0 + 112);
    OUTLINED_FUNCTION_138_0();
    v25 = OUTLINED_FUNCTION_198_5();
    *v1 = 136446722;
    v9 = sub_1D4E6835C(v8, v7, &v25);
    OUTLINED_FUNCTION_137_10(v9);
    v10 = sub_1D52C5CA8(v6);
    v12 = sub_1D4E6835C(v10, v11, &v25);

    *(v1 + 14) = v12;
    *(v1 + 22) = 2050;
    v13 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    OUTLINED_FUNCTION_97_1();
    v14 = sub_1D5615618();
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    *(v1 + 24) = v14;
    _os_log_impl(&dword_1D4E3F000, v4, v5, "[%{public}s] %{public}s complete - update request fulfilled %{public}ld descriptor(s).", v1, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_83();
    OUTLINED_FUNCTION_54();
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  }

  v15 = *(v0 + 208);
  v16 = *(v0 + 224);
  v18 = *(v0 + 72);
  v17 = *(v0 + 80);
  v19 = v17[4];
  __swift_project_boxed_opaque_existential_1(v17, v17[3]);
  OUTLINED_FUNCTION_0_6();
  v20 = sub_1D5615618();
  sub_1D560C2F8();
  v21 = type metadata accessor for MusicDownloadedSongCatalogStoreUpdater.Report(0);
  v22 = v18 + *(v21 + 20);
  *v22 = v20;
  *(v22 + 8) = v15;
  *(v22 + 16) = 0;
  *(v18 + *(v21 + 24)) = v16;
  OUTLINED_FUNCTION_22_1();

  return v23();
}

uint64_t sub_1D52BC9B0()
{
  OUTLINED_FUNCTION_75_0();
  v22 = v0;
  if (qword_1EDD54478 != -1)
  {
    OUTLINED_FUNCTION_2_5();
  }

  v1 = v0[18];
  v2 = v0[14];
  v3 = sub_1D560C758();
  OUTLINED_FUNCTION_285_1(v3, qword_1EDD76A90);
  v4 = v1;
  v5 = sub_1D560C738();
  sub_1D56156E8();

  if (OUTLINED_FUNCTION_165_0())
  {
    v6 = v0[18];
    v8 = v0[13];
    v7 = v0[14];
    OUTLINED_FUNCTION_144();
    OUTLINED_FUNCTION_198_5();
    OUTLINED_FUNCTION_88_12();
    *v1 = 136446466;
    v10 = OUTLINED_FUNCTION_223_3(v9);
    OUTLINED_FUNCTION_137_10(v10);
    v0[7] = v6;
    v11 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB730, &qword_1D5621A30);
    v12 = sub_1D5614DB8();
    v14 = sub_1D4E6835C(v12, v13, &v21);

    *(v1 + 14) = v14;
    OUTLINED_FUNCTION_128_2(&dword_1D4E3F000, v15, v16, "[%{public}s] 􀯨􀤆 Error while downloading: %{public}s.");
    OUTLINED_FUNCTION_303_0();
    OUTLINED_FUNCTION_118();
    OUTLINED_FUNCTION_54();
  }

  v17 = v0[18];
  swift_willThrow();
  v18 = v0[18];
  OUTLINED_FUNCTION_55();

  return v19();
}

uint64_t sub_1D52BCB30()
{
  OUTLINED_FUNCTION_75_0();
  v22 = v0;
  if (qword_1EDD54478 != -1)
  {
    OUTLINED_FUNCTION_2_5();
  }

  v1 = v0[21];
  v2 = v0[14];
  v3 = sub_1D560C758();
  OUTLINED_FUNCTION_285_1(v3, qword_1EDD76A90);
  v4 = v1;
  v5 = sub_1D560C738();
  sub_1D56156E8();

  if (OUTLINED_FUNCTION_165_0())
  {
    v6 = v0[21];
    v8 = v0[13];
    v7 = v0[14];
    OUTLINED_FUNCTION_144();
    OUTLINED_FUNCTION_198_5();
    OUTLINED_FUNCTION_88_12();
    *v1 = 136446466;
    v10 = OUTLINED_FUNCTION_223_3(v9);
    OUTLINED_FUNCTION_137_10(v10);
    v0[8] = v6;
    v11 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB730, &qword_1D5621A30);
    v12 = sub_1D5614DB8();
    v14 = sub_1D4E6835C(v12, v13, &v21);

    *(v1 + 14) = v14;
    OUTLINED_FUNCTION_128_2(&dword_1D4E3F000, v15, v16, "[%{public}s] 􀯨􀨪 Error while inserting into database: %{public}s.");
    OUTLINED_FUNCTION_303_0();
    OUTLINED_FUNCTION_118();
    OUTLINED_FUNCTION_54();
  }

  v17 = v0[21];
  swift_willThrow();
  v18 = v0[21];
  OUTLINED_FUNCTION_55();

  return v19();
}

uint64_t sub_1D52BCCB0()
{
  OUTLINED_FUNCTION_60();
  v1 = v0[23];
  v2 = v0[24];

  v3 = v0[27];
  OUTLINED_FUNCTION_55();

  return v4();
}

uint64_t sub_1D52BCD4C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 216) = a5;
  *(v6 + 224) = v5;
  *(v6 + 552) = a3;
  *(v6 + 200) = a1;
  *(v6 + 208) = a4;
  v7 = sub_1D560D338();
  *(v6 + 232) = v7;
  v8 = *(v7 - 8);
  *(v6 + 240) = v8;
  v9 = *(v8 + 64) + 15;
  *(v6 + 248) = swift_task_alloc();
  *(v6 + 256) = swift_task_alloc();
  *(v6 + 264) = swift_task_alloc();
  *(v6 + 272) = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F3890, &unk_1D564E660) - 8) + 64) + 15;
  *(v6 + 280) = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA978, &qword_1D5652B10);
  *(v6 + 288) = v11;
  v12 = *(v11 - 8);
  *(v6 + 296) = v12;
  v13 = *(v12 + 64) + 15;
  *(v6 + 304) = swift_task_alloc();
  *(v6 + 312) = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F15B0, &qword_1D5640980) - 8) + 64) + 15;
  *(v6 + 320) = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAA98, &qword_1D564E670);
  *(v6 + 328) = v15;
  v16 = *(v15 - 8);
  *(v6 + 336) = v16;
  v17 = *(v16 + 64) + 15;
  *(v6 + 344) = swift_task_alloc();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA428, &unk_1D561C410);
  *(v6 + 352) = v18;
  v19 = *(v18 - 8);
  *(v6 + 360) = v19;
  v20 = *(v19 + 64) + 15;
  *(v6 + 368) = swift_task_alloc();
  *(v6 + 376) = swift_task_alloc();
  *(v6 + 384) = swift_task_alloc();
  v21 = sub_1D560D358();
  *(v6 + 392) = v21;
  v22 = *(v21 - 8);
  *(v6 + 400) = v22;
  v23 = *(v22 + 64) + 15;
  *(v6 + 408) = swift_task_alloc();
  v24 = sub_1D560CD48();
  *(v6 + 416) = v24;
  v25 = *(v24 - 8);
  *(v6 + 424) = v25;
  v26 = *(v25 + 64) + 15;
  *(v6 + 432) = swift_task_alloc();
  *(v6 + 440) = swift_task_alloc();
  v27 = type metadata accessor for MusicRequestConfiguration();
  *(v6 + 448) = v27;
  v28 = *(*(v27 - 8) + 64) + 15;
  *(v6 + 456) = swift_task_alloc();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAAA0, &unk_1D561D6A0);
  *(v6 + 464) = v29;
  v30 = *(v29 - 8);
  *(v6 + 472) = v30;
  v31 = *(v30 + 64) + 15;
  *(v6 + 480) = swift_task_alloc();
  v32 = _s10DescriptorVMa();
  *(v6 + 488) = v32;
  v33 = *(v32 - 8);
  *(v6 + 496) = v33;
  v34 = *(v33 + 64) + 15;
  *(v6 + 504) = swift_task_alloc();
  *(v6 + 512) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D52BD1C8, 0, 0);
}

uint64_t sub_1D52BDB74()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v6 = *(v5 + 536);
  v7 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v8 = v7;
  *(v3 + 544) = v0;

  if (!v0)
  {
    v9 = *(v3 + 520);
  }

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1D52BF1E4(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 576) = a7;
  *(v7 + 568) = a6;
  *(v7 + 560) = a5;
  *(v7 + 552) = a4;
  *(v7 + 544) = a3;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2608, &qword_1D5648878) - 8) + 64) + 15;
  *(v7 + 584) = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2678, &qword_1D5648BC0) - 8) + 64) + 15;
  *(v7 + 592) = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1558, &unk_1D5649E60) - 8) + 64) + 15;
  *(v7 + 600) = swift_task_alloc();
  *(v7 + 608) = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA4F8, &unk_1D5648890);
  *(v7 + 616) = v12;
  v13 = *(v12 - 8);
  *(v7 + 624) = v13;
  v14 = *(v13 + 64) + 15;
  *(v7 + 632) = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7D8, &unk_1D561E8B0) - 8) + 64) + 15;
  *(v7 + 640) = swift_task_alloc();
  v16 = sub_1D560CD48();
  *(v7 + 648) = v16;
  v17 = *(v16 - 8);
  *(v7 + 656) = v17;
  v18 = *(v17 + 64) + 15;
  *(v7 + 664) = swift_task_alloc();
  v19 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2688, &unk_1D5648BD0) - 8) + 64) + 15;
  *(v7 + 672) = swift_task_alloc();
  v20 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1548, &unk_1D5649E50) - 8) + 64) + 15;
  *(v7 + 680) = swift_task_alloc();
  *(v7 + 688) = swift_task_alloc();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA508, &unk_1D561C480);
  *(v7 + 696) = v21;
  v22 = *(v21 - 8);
  *(v7 + 704) = v22;
  v23 = *(v22 + 64) + 15;
  *(v7 + 712) = swift_task_alloc();
  v24 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA788, &unk_1D56223A0) - 8) + 64) + 15;
  *(v7 + 720) = swift_task_alloc();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA378, &qword_1D561D140);
  *(v7 + 728) = v25;
  v26 = *(v25 - 8);
  *(v7 + 736) = v26;
  v27 = *(v26 + 64) + 15;
  *(v7 + 744) = swift_task_alloc();
  v28 = sub_1D560C328();
  *(v7 + 752) = v28;
  v29 = *(v28 - 8);
  *(v7 + 760) = v29;
  v30 = *(v29 + 64) + 15;
  *(v7 + 768) = swift_task_alloc();
  *(v7 + 776) = swift_task_alloc();
  v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA978, &qword_1D5652B10) - 8);
  *(v7 + 784) = v31;
  v32 = *(v31 + 64) + 15;
  *(v7 + 792) = swift_task_alloc();
  *(v7 + 800) = swift_task_alloc();
  *(v7 + 808) = swift_task_alloc();
  *(v7 + 816) = swift_task_alloc();
  *(v7 + 824) = swift_task_alloc();
  *(v7 + 832) = swift_task_alloc();
  *(v7 + 840) = swift_task_alloc();
  *(v7 + 848) = swift_task_alloc();
  v33 = _s10DescriptorVMa();
  *(v7 + 856) = v33;
  v34 = *(v33 - 8);
  *(v7 + 864) = v34;
  v35 = *(v34 + 64) + 15;
  *(v7 + 872) = swift_task_alloc();
  *(v7 + 880) = swift_task_alloc();
  *(v7 + 888) = swift_task_alloc();
  *(v7 + 896) = swift_task_alloc();
  v36 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F3878, &qword_1D564E640) - 8) + 64) + 15;
  *(v7 + 904) = swift_task_alloc();
  *(v7 + 912) = swift_task_alloc();
  *(v7 + 920) = *a2;

  return MEMORY[0x1EEE6DFA0](sub_1D52BF780, 0, 0);
}

uint64_t sub_1D52BF780()
{
  v251 = v1;
  v3 = *(v1 + 864);
  v4 = *(v1 + 784);
  v5 = *(v1 + 544);
  v6 = *(v5 + 32);
  *(v1 + 1160) = v6;
  v7 = -1;
  v8 = -1 << v6;
  if (-(-1 << v6) < 64)
  {
    v7 = ~(-1 << -v8);
  }

  v9 = v7 & *(v5 + 64);

  if (v9)
  {
    v10 = 0;
LABEL_8:
    v13 = *(v1 + 904);
    v0 = *(v1 + 896);
    v2 = *(v1 + 848);
    v14 = __clz(__rbit64(v9));
    v15 = (v9 - 1) & v9;
    v16 = v14 | (v10 << 6);
    v17 = *(v5 + 48);
    v18 = *(v3 + 72);
    OUTLINED_FUNCTION_1_130();
    sub_1D52CB248(v19, v0);
    v20 = *(v5 + 56) + *(v4 + 72) * v16;
    v21 = &qword_1EC7EA978;
    sub_1D52CB1F8(v20, v2, &qword_1EC7EA978, &qword_1D5652B10);
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F3880, &qword_1D564E648);
    v23 = *(v22 + 48);
    OUTLINED_FUNCTION_19_62();
    v24 = OUTLINED_FUNCTION_98();
    sub_1D52C994C(v24, v25);
    sub_1D52C9BD4(v2, v13 + v23, &qword_1EC7EA978, &qword_1D5652B10);
    __swift_storeEnumTagSinglePayload(v13, 0, 1, v22);
    v12 = v10;
  }

  else
  {
    v11 = 0;
    v12 = ((63 - v8) >> 6) - 1;
    while (v12 != v11)
    {
      v10 = v11 + 1;
      v9 = *(v5 + 72 + 8 * v11++);
      if (v9)
      {
        goto LABEL_8;
      }
    }

    v21 = *(v1 + 904);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F3880, &qword_1D564E648);
    v201 = OUTLINED_FUNCTION_35_1();
    __swift_storeEnumTagSinglePayload(v201, v202, 1, v203);
    v15 = 0;
  }

  *(v1 + 944) = v12;
  *(v1 + 936) = v15;
  sub_1D52C9BD4(*(v1 + 904), *(v1 + 912), &qword_1EC7F3878, &qword_1D564E640);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F3880, &qword_1D564E648);
  OUTLINED_FUNCTION_304_0(v26);
  if (v127)
  {
    OUTLINED_FUNCTION_104_16();

    OUTLINED_FUNCTION_22_1();
    OUTLINED_FUNCTION_80_12();

    __asm { BRAA            X1, X16 }
  }

  v29 = *(v1 + 888);
  v30 = *(v1 + 840);
  v31 = *(v21 + 12);
  OUTLINED_FUNCTION_19_62();
  sub_1D52C994C(v2, v32);
  sub_1D52C9BD4(v2 + v31, v30, &qword_1EC7EA978, &qword_1D5652B10);
  if (qword_1EDD54478 != -1)
  {
    OUTLINED_FUNCTION_2_5();
  }

  v33 = OUTLINED_FUNCTION_295_1();
  v34 = __swift_project_value_buffer(v33, qword_1EDD76A90);
  *(v1 + 952) = v34;
  OUTLINED_FUNCTION_1_130();
  v35 = OUTLINED_FUNCTION_159();
  sub_1D52CB248(v35, v36);

  v37 = sub_1D560C738();
  sub_1D56156E8();
  OUTLINED_FUNCTION_221_2();
  v38 = OUTLINED_FUNCTION_165_0();
  v39 = *(v1 + 880);
  v40 = MEMORY[0x1E69E7CA0];
  if (v38)
  {
    v41 = *(v1 + 560);
    v42 = *(v1 + 552);
    OUTLINED_FUNCTION_144();
    v34 = OUTLINED_FUNCTION_198_5();
    v250[0] = v34;
    *v0 = 136446466;
    v43 = OUTLINED_FUNCTION_274_1();
    v45 = sub_1D4E6835C(v43, v41, v44);
    OUTLINED_FUNCTION_137_10(v45);
    v46 = *v39;
    v47 = v39[1];
    sub_1D560EEC8();
    OUTLINED_FUNCTION_0_167();
    sub_1D4E58614();
    v48 = OUTLINED_FUNCTION_97_1();
    v39 = sub_1D4E6835C(v48, v49, v50);

    *(v0 + 14) = v39;
    OUTLINED_FUNCTION_128_2(&dword_1D4E3F000, v51, v52, "[%{public}s] 􁉃􀨪 Inserting %{public}s into database.");
    OUTLINED_FUNCTION_303_0();
    OUTLINED_FUNCTION_118();
    OUTLINED_FUNCTION_54();
  }

  else
  {

    OUTLINED_FUNCTION_0_167();
    sub_1D4E58614();
  }

  v53 = *(v1 + 888);
  v54 = *(v1 + 856);
  v55 = *(v1 + 776);
  v56 = sub_1D560C2F8();
  v64 = OUTLINED_FUNCTION_298_0(v56, v57, v58, v59, v60, v61, v62, v63);
  OUTLINED_FUNCTION_120_9(v64);
LABEL_20:
  OUTLINED_FUNCTION_190_5();
  if (v66)
  {
    v67 = *(v1 + 960);
    goto LABEL_27;
  }

  while (!__OFADD__(v65, 1))
  {
    v68 = OUTLINED_FUNCTION_34_45();
    if (v69 == v70)
    {

      if (v40)
      {
        v181 = *(v1 + 952);
        v182 = *(v1 + 888);
        v183 = *(v1 + 872);
        v184 = *(v1 + 560);
        OUTLINED_FUNCTION_1_130();
        sub_1D52CB248(v185, v186);

        v187 = sub_1D560C738();
        sub_1D56156E8();
        OUTLINED_FUNCTION_146_1();

        v188 = OUTLINED_FUNCTION_152_0();
        v189 = *(v1 + 872);
        if (v188)
        {
          OUTLINED_FUNCTION_101_8();
          v190 = OUTLINED_FUNCTION_165_7();
          v250[0] = v190;
          *v184 = 136446722;
          v192 = OUTLINED_FUNCTION_230_3(v190, v191, v250);
          OUTLINED_FUNCTION_100_10(v192);
          v194 = v193;
          OUTLINED_FUNCTION_0_167();
          sub_1D4E58614();
          v195 = OUTLINED_FUNCTION_274_1();
          sub_1D4E6835C(v195, v194, v196);
          OUTLINED_FUNCTION_256_0();
          v197 = OUTLINED_FUNCTION_167_4();
          v54 = v198;
          sub_1D4E6835C(v197, v198, v250);
          OUTLINED_FUNCTION_255_0();
          *(v184 + 24) = v189;
          OUTLINED_FUNCTION_99_13(&dword_1D4E3F000, v199, v200, "[%{public}s] 􀃞 %{public}s is missing properties (%{public}s) from the catalog response. This may be expected as some information will never be available.");
          OUTLINED_FUNCTION_166_3();
          OUTLINED_FUNCTION_83();
          OUTLINED_FUNCTION_118();
        }

        else
        {

          OUTLINED_FUNCTION_0_167();
          sub_1D4E58614();
        }
      }

      OUTLINED_FUNCTION_48_31();
      v205 = *v54;
      v204 = *(v54 + 8);
      v206 = swift_task_alloc();
      v207 = OUTLINED_FUNCTION_207_2(v206);
      *v207 = v208;
      OUTLINED_FUNCTION_7_96(v207);
      OUTLINED_FUNCTION_80_12();

      return sub_1D51BDA4C();
    }

    v67 = OUTLINED_FUNCTION_89_15(v68);
    if (v72)
    {
      v65 = v71;
LABEL_27:
      OUTLINED_FUNCTION_23_54(v67, v65);
      switch(v73)
      {
        case 1:
          v103 = OUTLINED_FUNCTION_189_4();
          v104 = *(v1 + 824);
          OUTLINED_FUNCTION_118_10(v103);
          v105 = sub_1D5613838();
          OUTLINED_FUNCTION_13_72(v105);
          v106 = OUTLINED_FUNCTION_200_3();
          if (v127)
          {
            v107 = *(v1 + 696);
            v108 = *(v1 + 688);
            OUTLINED_FUNCTION_237_0(v106);
            v109 = OUTLINED_FUNCTION_49_27();
            __swift_storeEnumTagSinglePayload(v109, v110, v111, v107);
            v39 = v249;
          }

          else
          {
            v248 = v34;
            OUTLINED_FUNCTION_164_6();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2690, &unk_1D564E650);
            OUTLINED_FUNCTION_12_7(v39);
            if (v134)
            {
              v172 = sub_1D4E50004(*(v1 + 672), &qword_1EC7F2688, &unk_1D5648BD0);
              v173 = 1;
            }

            else
            {
              OUTLINED_FUNCTION_187_2();
              v165 = sub_1D560CD98();
              OUTLINED_FUNCTION_20_62(v165);
              type metadata accessor for AudioAnalysis();
              OUTLINED_FUNCTION_14_66();
              sub_1D52CB2A0(&qword_1EC7F2698, &qword_1D5652B10);
              OUTLINED_FUNCTION_12_72();
              sub_1D52CB2A0(&qword_1EC7F26A0, &qword_1D5652B10);
              OUTLINED_FUNCTION_44_31();
              OUTLINED_FUNCTION_143_8();
              sub_1D5612368();
              sub_1D4E50004(v39, &qword_1EC7EA7D8, &unk_1D561E8B0);
              v166 = OUTLINED_FUNCTION_61_28();
              v167(v166);
              OUTLINED_FUNCTION_45_34();
              v169 = *(v168 + 8);
              v170 = OUTLINED_FUNCTION_20_5();
              v172 = v171(v170);
              v173 = 0;
            }

            v174 = *(v1 + 824);
            v175 = *(v1 + 696);
            v176 = *(v1 + 688);
            OUTLINED_FUNCTION_16_72(v172, v173);
            v178 = *(v177 + 8);
            v179 = OUTLINED_FUNCTION_74_0();
            v180(v179);
            OUTLINED_FUNCTION_39_7();
            v34 = v248;
            v39 = v249;
            if (!v127)
            {
              v215 = OUTLINED_FUNCTION_18_68();
              v216(v215);
              v217 = OUTLINED_FUNCTION_27_50();
              v218(v217);
              OUTLINED_FUNCTION_21_57();
              v219 = swift_task_alloc();
              v220 = OUTLINED_FUNCTION_209_3(v219);
              *v220 = v221;
              OUTLINED_FUNCTION_3_126(v220);
              OUTLINED_FUNCTION_80_12();

              return sub_1D51BF27C();
            }
          }

          sub_1D4E50004(*(v1 + 688), &qword_1EC7F1548, &unk_1D5649E50);
          if ((v54 & 4) == 0)
          {
            v54 |= 4uLL;
            OUTLINED_FUNCTION_108_12();
          }

          if ((v54 & 8) == 0)
          {
            v34 = v54 | 8;
            goto LABEL_84;
          }

          goto LABEL_85;
        case 2:
        case 5:
        case 7:
          goto LABEL_85;
        case 3:
          v87 = OUTLINED_FUNCTION_189_4();
          v88 = *(v1 + 816);
          OUTLINED_FUNCTION_118_10(v87);
          v89 = sub_1D5613838();
          OUTLINED_FUNCTION_33_43(v89);
          if (v127)
          {
            v90 = OUTLINED_FUNCTION_20_5();
            sub_1D4E50004(v90, v91, &qword_1D5652B10);
          }

          else
          {
            sub_1D5613818();
            OUTLINED_FUNCTION_35_44();
            v122 = *(v121 + 8);
            v123 = OUTLINED_FUNCTION_121();
            v124(v123);
            if ((&qword_1D5652B10 & 1) == 0)
            {
              goto LABEL_95;
            }
          }

          if (v54)
          {
            goto LABEL_67;
          }

          v34 = v54 | 1;
          OUTLINED_FUNCTION_174_6();
          goto LABEL_85;
        case 4:
          v92 = *(v1 + 808);
          OUTLINED_FUNCTION_118_10(*(v1 + 840));
          v93 = sub_1D5613838();
          OUTLINED_FUNCTION_13_72(v93);
          v94 = OUTLINED_FUNCTION_201_4();
          if (v127)
          {
            OUTLINED_FUNCTION_299_1(v94);
            v95 = OUTLINED_FUNCTION_87_14();
            __swift_storeEnumTagSinglePayload(v95, v96, v97, v92);
          }

          else
          {
            v247 = v34;
            v125 = *(v1 + 592);
            OUTLINED_FUNCTION_144_4();
            sub_1D5613608();
            v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2680, &qword_1D5648BC8);
            OUTLINED_FUNCTION_81_2(v126);
            if (v127)
            {
              v156 = sub_1D4E50004(*(v1 + 592), &qword_1EC7F2678, &qword_1D5648BC0);
              v157 = 1;
            }

            else
            {
              OUTLINED_FUNCTION_172_5();
              v148 = sub_1D560CD98();
              OUTLINED_FUNCTION_20_62(v148);
              type metadata accessor for FlexAnalysis();
              OUTLINED_FUNCTION_15_74();
              sub_1D52CB2A0(&qword_1EC7ED018, v125);
              OUTLINED_FUNCTION_11_87();
              sub_1D52CB2A0(&qword_1EC7ECFF0, v125);
              OUTLINED_FUNCTION_44_31();
              OUTLINED_FUNCTION_143_8();
              sub_1D5612368();
              v149 = v39;
              v39 = v249;
              sub_1D4E50004(v149, &qword_1EC7EA7D8, &unk_1D561E8B0);
              v150 = OUTLINED_FUNCTION_61_28();
              v151(v150);
              OUTLINED_FUNCTION_45_34();
              v153 = *(v152 + 8);
              v154 = OUTLINED_FUNCTION_20_5();
              v156 = v155(v154);
              v157 = 0;
            }

            v158 = *(v1 + 808);
            v159 = *(v1 + 616);
            v160 = *(v1 + 608);
            OUTLINED_FUNCTION_16_72(v156, v157);
            v162 = *(v161 + 8);
            v163 = OUTLINED_FUNCTION_74_0();
            v164(v163);
            OUTLINED_FUNCTION_39_7();
            v34 = v247;
            if (!v127)
            {
              v233 = OUTLINED_FUNCTION_17_64();
              v234(v233);
              v235 = OUTLINED_FUNCTION_27_50();
              v236(v235);
              OUTLINED_FUNCTION_21_57();
              v237 = swift_task_alloc();
              v238 = OUTLINED_FUNCTION_208_1(v237);
              *v238 = v239;
              OUTLINED_FUNCTION_4_96(v238);
              OUTLINED_FUNCTION_80_12();

              return sub_1D51BFB20();
            }
          }

          sub_1D4E50004(*(v1 + 608), &qword_1EC7F1558, &unk_1D5649E60);
          if ((v54 & 0x10) == 0)
          {
            v54 |= 0x10uLL;
            OUTLINED_FUNCTION_108_12();
          }

          if ((v54 & 0x20) != 0)
          {
            goto LABEL_85;
          }

          v34 = v54 | 0x20;
          goto LABEL_84;
        case 6:
          v84 = *(v1 + 800);
          OUTLINED_FUNCTION_118_10(*(v1 + 840));
          v85 = sub_1D5613838();
          OUTLINED_FUNCTION_13_72(v85);
          v86 = OUTLINED_FUNCTION_202_4();
          if (v127)
          {
            OUTLINED_FUNCTION_237_0(v86);
            if ((v54 & 0x40) != 0)
            {
              goto LABEL_34;
            }

LABEL_33:
            v54 |= 0x40uLL;
            OUTLINED_FUNCTION_108_12();
            goto LABEL_34;
          }

          v249 = v39;
          v112 = *(v1 + 584);
          OUTLINED_FUNCTION_144_4();
          sub_1D5613768();
          v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2610, &unk_1D5648880);
          v114 = OUTLINED_FUNCTION_77_14(v113);
          v115 = *(v1 + 800);
          v116 = *(v1 + 584);
          if (v114 == 1)
          {
            sub_1D4E50004(*(v1 + 584), &qword_1EC7F2608, &qword_1D5648878);
            OUTLINED_FUNCTION_4_20();
            v118 = *(v117 + 8);
            v119 = OUTLINED_FUNCTION_201();
            v120(v119);
          }

          else
          {
            sub_1D5431B8C((v1 + 16));
            OUTLINED_FUNCTION_45_34();
            v141 = *(v140 + 8);
            v142 = OUTLINED_FUNCTION_20_5();
            v143(v142);
            OUTLINED_FUNCTION_163_7();
            OUTLINED_FUNCTION_4_20();
            v145 = *(v144 + 8);
            v146 = OUTLINED_FUNCTION_201();
            v147(v146);
            if ((*(v1 + 344) & 1) == 0)
            {
              OUTLINED_FUNCTION_79_16();
              v241 = *v112;
              v242 = v112[1];
              v243 = swift_task_alloc();
              v244 = OUTLINED_FUNCTION_90_17(v243);
              *v244 = v245;
              OUTLINED_FUNCTION_6_94(v244);
              OUTLINED_FUNCTION_80_12();

              return sub_1D51C0448();
            }

            sub_1D524528C(v1 + 192);
          }

          v39 = v249;
          if ((v54 & 0x40) == 0)
          {
            goto LABEL_33;
          }

LABEL_34:
          if ((v54 & 0x80) != 0)
          {
            goto LABEL_85;
          }

          v34 = v54 | 0x80;
          goto LABEL_84;
        case 8:
          v98 = OUTLINED_FUNCTION_189_4();
          v99 = *(v1 + 792);
          OUTLINED_FUNCTION_118_10(v98);
          v100 = sub_1D5613838();
          if (OUTLINED_FUNCTION_78_20(v100) == 1)
          {
            v101 = OUTLINED_FUNCTION_97_1();
            sub_1D4E50004(v101, v102, &qword_1D5652B10);
          }

          else
          {
            v128 = *(v1 + 792);
            v129 = _s8MusicKit4SongV0aB8InternalE24supportsSmartTransitionsSbSgvg_0();
            OUTLINED_FUNCTION_62_28();
            v131 = *(v130 + 8);
            v132 = OUTLINED_FUNCTION_45_3();
            v133(v132);
            if (v129 != 2)
            {
              OUTLINED_FUNCTION_210_4();
              v229 = swift_task_alloc();
              v230 = OUTLINED_FUNCTION_91_16(v229);
              *v230 = v231;
              OUTLINED_FUNCTION_9_86(v230);
              OUTLINED_FUNCTION_80_12();

              return sub_1D51C0DDC();
            }
          }

          if ((v54 & 0x100) != 0)
          {
LABEL_67:
            v39 = v249;
          }

          else
          {
            v34 = v54 | 0x100;
LABEL_84:
            OUTLINED_FUNCTION_174_6();
          }

          goto LABEL_85;
        default:
          v74 = OUTLINED_FUNCTION_189_4();
          v75 = *(v1 + 832);
          OUTLINED_FUNCTION_118_10(v74);
          v76 = sub_1D5613838();
          v54 = &qword_1EC7EA978;
          v77 = OUTLINED_FUNCTION_32_44(v76);
          v78 = *(v1 + 720);
          if (v77 == 1)
          {
            v79 = OUTLINED_FUNCTION_159();
            sub_1D4E50004(v79, v80, &qword_1D5652B10);
            OUTLINED_FUNCTION_33();
            __swift_storeEnumTagSinglePayload(v81, v82, v83, v39);
          }

          else
          {
            v135 = *(v1 + 720);
            _s8MusicKit4SongV0aB8InternalE9allGenresAA0A14ItemCollectionVyAA5GenreVGSgvg_0();
            OUTLINED_FUNCTION_45_34();
            v137 = *(v136 + 8);
            v138 = OUTLINED_FUNCTION_20_5();
            v139(v138);
            OUTLINED_FUNCTION_73_18();
            if (!v127)
            {
              v223 = OUTLINED_FUNCTION_26_56();
              v224(v223);
              v225 = swift_task_alloc();
              v226 = OUTLINED_FUNCTION_205_4(v225);
              *v226 = v227;
              OUTLINED_FUNCTION_5_97(v226);
              OUTLINED_FUNCTION_80_12();

              return sub_1D51BE964();
            }
          }

          sub_1D4E50004(*(v1 + 720), &qword_1EC7EA788, &unk_1D56223A0);
          OUTLINED_FUNCTION_268_1();
          if (v127)
          {
            v40 = &qword_1EC7EA978;
          }

          v39 = &qword_1EC7EA978;
LABEL_85:
          OUTLINED_FUNCTION_288_0();
          break;
      }

      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_95:
  OUTLINED_FUNCTION_93_15();
  v211 = swift_task_alloc();
  v212 = OUTLINED_FUNCTION_206_3(v211);
  *v212 = v213;
  OUTLINED_FUNCTION_8_89(v212);
  OUTLINED_FUNCTION_80_12();

  return sub_1D51BE110();
}

uint64_t sub_1D52C0638()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_8();
  *v3 = v2;
  v5 = *(v4 + 1048);
  v6 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v7 = v6;
  *(v8 + 1056) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D52C1138()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_154_7();
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v5 = *(v1 + 1064);
  *v4 = *v2;
  *(v3 + 1072) = v0;

  OUTLINED_FUNCTION_153_4();
  sub_1D4E50004(*(v6 + 680), &qword_1EC7F1548, &unk_1D5649E50);
  OUTLINED_FUNCTION_73_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D52C1C64()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_8();
  *v3 = v2;
  v5 = *(v4 + 1080);
  v6 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v7 = v6;
  *(v8 + 1088) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D52C1D60()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_154_7();
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v5 = *(v1 + 1096);
  *v4 = *v2;
  *(v3 + 1104) = v0;

  OUTLINED_FUNCTION_153_4();
  sub_1D4E50004(*(v6 + 600), &qword_1EC7F1558, &unk_1D5649E60);
  OUTLINED_FUNCTION_73_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D52C288C()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v6 = *(v5 + 1112);
  v7 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v8 = v7;
  *(v3 + 1120) = v0;

  if (!v0)
  {
    sub_1D524528C(v3 + 192);
  }

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D52C3374()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_8();
  *v3 = v2;
  v5 = *(v4 + 1128);
  v6 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v7 = v6;
  *(v8 + 1136) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D52C3E58()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_8();
  *v3 = v2;
  v5 = *(v4 + 1144);
  v6 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v7 = v6;
  *(v8 + 1152) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D52C3F54()
{
  v254 = v0;
  v1 = *(v0 + 888);
  v2 = *(v0 + 840);
  v3 = *(v0 + 776);
  v4 = *(v0 + 752);
  v5 = *(*(v0 + 760) + 8);
  v5(*(v0 + 768), v4);
  v5(v3, v4);
  sub_1D4E50004(v2, &qword_1EC7EA978, &qword_1D5652B10);
  OUTLINED_FUNCTION_0_167();
  sub_1D4E58614();
  v6 = *(v0 + 944);
  v7 = *(v0 + 936);
  if (v7)
  {
    v4 = *(v0 + 544);
LABEL_7:
    v9 = *(v0 + 904);
    v10 = *(v0 + 896);
    v3 = *(v0 + 848);
    v11 = *(v0 + 784);
    v12 = (v7 - 1) & v7;
    v13 = v4[6];
    v14 = *(*(v0 + 864) + 72);
    OUTLINED_FUNCTION_1_130();
    sub_1D52CB248(v15, v10);
    v16 = v4[7];
    v17 = *(v11 + 72);
    v4 = &qword_1EC7EA978;
    OUTLINED_FUNCTION_179_5();
    sub_1D52CB1F8(v18, v19, v20, v21);
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F3880, &qword_1D564E648);
    v23 = *(v22 + 48);
    OUTLINED_FUNCTION_19_62();
    v24 = OUTLINED_FUNCTION_71();
    sub_1D52C994C(v24, v25);
    OUTLINED_FUNCTION_179_5();
    sub_1D52C9BD4(v26, v27, v28, v29);
    __swift_storeEnumTagSinglePayload(v9, 0, 1, v22);
LABEL_8:
    *(v0 + 944) = v6;
    *(v0 + 936) = v12;
    sub_1D52C9BD4(*(v0 + 904), *(v0 + 912), &qword_1EC7F3878, &qword_1D564E640);
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F3880, &qword_1D564E648);
    OUTLINED_FUNCTION_304_0(v30);
    if (v130)
    {
      OUTLINED_FUNCTION_104_16();

      OUTLINED_FUNCTION_22_1();
      OUTLINED_FUNCTION_80_12();

      __asm { BRAA            X1, X16 }
    }

    v33 = *(v0 + 888);
    v34 = *(v0 + 840);
    v35 = *(v9 + 48);
    OUTLINED_FUNCTION_19_62();
    sub_1D52C994C(v4, v36);
    sub_1D52C9BD4(v4 + v35, v34, &qword_1EC7EA978, &qword_1D5652B10);
    if (qword_1EDD54478 != -1)
    {
      OUTLINED_FUNCTION_2_5();
    }

    v37 = OUTLINED_FUNCTION_295_1();
    v38 = __swift_project_value_buffer(v37, qword_1EDD76A90);
    *(v0 + 952) = v38;
    OUTLINED_FUNCTION_1_130();
    v39 = OUTLINED_FUNCTION_159();
    sub_1D52CB248(v39, v40);

    v41 = sub_1D560C738();
    sub_1D56156E8();
    OUTLINED_FUNCTION_221_2();
    v42 = OUTLINED_FUNCTION_165_0();
    v43 = *(v0 + 880);
    v44 = MEMORY[0x1E69E7CA0];
    if (v42)
    {
      v45 = *(v0 + 560);
      v46 = *(v0 + 552);
      OUTLINED_FUNCTION_144();
      v38 = OUTLINED_FUNCTION_198_5();
      v253[0] = v38;
      *v3 = 136446466;
      v47 = OUTLINED_FUNCTION_274_1();
      v49 = sub_1D4E6835C(v47, v45, v48);
      OUTLINED_FUNCTION_137_10(v49);
      v50 = *v43;
      v51 = v43[1];
      sub_1D560EEC8();
      OUTLINED_FUNCTION_0_167();
      sub_1D4E58614();
      v52 = OUTLINED_FUNCTION_97_1();
      v43 = sub_1D4E6835C(v52, v53, v54);

      *(v3 + 14) = v43;
      OUTLINED_FUNCTION_128_2(&dword_1D4E3F000, v55, v56, "[%{public}s] 􁉃􀨪 Inserting %{public}s into database.");
      OUTLINED_FUNCTION_303_0();
      OUTLINED_FUNCTION_118();
      OUTLINED_FUNCTION_54();
    }

    else
    {

      OUTLINED_FUNCTION_0_167();
      sub_1D4E58614();
    }

    v57 = *(v0 + 888);
    v58 = *(v0 + 856);
    v59 = *(v0 + 776);
    v60 = sub_1D560C2F8();
    v68 = OUTLINED_FUNCTION_298_0(v60, v61, v62, v63, v64, v65, v66, v67);
    OUTLINED_FUNCTION_120_9(v68);
LABEL_19:
    OUTLINED_FUNCTION_190_5();
    if (v70)
    {
      v71 = *(v0 + 960);
      goto LABEL_26;
    }

    while (!__OFADD__(v69, 1))
    {
      v72 = OUTLINED_FUNCTION_34_45();
      if (v73 == v74)
      {

        if (v44)
        {
          v184 = *(v0 + 952);
          v185 = *(v0 + 888);
          v186 = *(v0 + 872);
          v187 = *(v0 + 560);
          OUTLINED_FUNCTION_1_130();
          sub_1D52CB248(v188, v189);

          v190 = sub_1D560C738();
          sub_1D56156E8();
          OUTLINED_FUNCTION_146_1();

          v191 = OUTLINED_FUNCTION_152_0();
          v192 = *(v0 + 872);
          if (v191)
          {
            OUTLINED_FUNCTION_101_8();
            v193 = OUTLINED_FUNCTION_165_7();
            v253[0] = v193;
            *v187 = 136446722;
            v195 = OUTLINED_FUNCTION_230_3(v193, v194, v253);
            OUTLINED_FUNCTION_100_10(v195);
            v197 = v196;
            OUTLINED_FUNCTION_0_167();
            sub_1D4E58614();
            v198 = OUTLINED_FUNCTION_274_1();
            sub_1D4E6835C(v198, v197, v199);
            OUTLINED_FUNCTION_256_0();
            v200 = OUTLINED_FUNCTION_167_4();
            v58 = v201;
            sub_1D4E6835C(v200, v201, v253);
            OUTLINED_FUNCTION_255_0();
            *(v187 + 24) = v192;
            OUTLINED_FUNCTION_99_13(&dword_1D4E3F000, v202, v203, "[%{public}s] 􀃞 %{public}s is missing properties (%{public}s) from the catalog response. This may be expected as some information will never be available.");
            OUTLINED_FUNCTION_166_3();
            OUTLINED_FUNCTION_83();
            OUTLINED_FUNCTION_118();
          }

          else
          {

            OUTLINED_FUNCTION_0_167();
            sub_1D4E58614();
          }
        }

        OUTLINED_FUNCTION_48_31();
        v208 = *v58;
        v207 = *(v58 + 8);
        v209 = swift_task_alloc();
        v210 = OUTLINED_FUNCTION_207_2(v209);
        *v210 = v211;
        OUTLINED_FUNCTION_7_96(v210);
        OUTLINED_FUNCTION_80_12();

        return sub_1D51BDA4C();
      }

      v71 = OUTLINED_FUNCTION_89_15(v72);
      if (v76)
      {
        v69 = v75;
LABEL_26:
        OUTLINED_FUNCTION_23_54(v71, v69);
        switch(v77)
        {
          case 1:
            v107 = OUTLINED_FUNCTION_189_4();
            v108 = *(v0 + 824);
            OUTLINED_FUNCTION_118_10(v107);
            v109 = sub_1D5613838();
            OUTLINED_FUNCTION_13_72(v109);
            v110 = OUTLINED_FUNCTION_200_3();
            if (v130)
            {
              v111 = *(v0 + 696);
              v112 = *(v0 + 688);
              OUTLINED_FUNCTION_237_0(v110);
              v113 = OUTLINED_FUNCTION_49_27();
              __swift_storeEnumTagSinglePayload(v113, v114, v115, v111);
              v43 = v252;
            }

            else
            {
              v251 = v38;
              OUTLINED_FUNCTION_164_6();
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2690, &unk_1D564E650);
              OUTLINED_FUNCTION_12_7(v43);
              if (v137)
              {
                v175 = sub_1D4E50004(*(v0 + 672), &qword_1EC7F2688, &unk_1D5648BD0);
                v176 = 1;
              }

              else
              {
                OUTLINED_FUNCTION_187_2();
                v168 = sub_1D560CD98();
                OUTLINED_FUNCTION_20_62(v168);
                type metadata accessor for AudioAnalysis();
                OUTLINED_FUNCTION_14_66();
                sub_1D52CB2A0(&qword_1EC7F2698, &qword_1D5652B10);
                OUTLINED_FUNCTION_12_72();
                sub_1D52CB2A0(&qword_1EC7F26A0, &qword_1D5652B10);
                OUTLINED_FUNCTION_44_31();
                OUTLINED_FUNCTION_143_8();
                sub_1D5612368();
                sub_1D4E50004(v43, &qword_1EC7EA7D8, &unk_1D561E8B0);
                v169 = OUTLINED_FUNCTION_61_28();
                v170(v169);
                OUTLINED_FUNCTION_45_34();
                v172 = *(v171 + 8);
                v173 = OUTLINED_FUNCTION_20_5();
                v175 = v174(v173);
                v176 = 0;
              }

              v177 = *(v0 + 824);
              v178 = *(v0 + 696);
              v179 = *(v0 + 688);
              OUTLINED_FUNCTION_16_72(v175, v176);
              v181 = *(v180 + 8);
              v182 = OUTLINED_FUNCTION_74_0();
              v183(v182);
              OUTLINED_FUNCTION_39_7();
              v38 = v251;
              v43 = v252;
              if (!v130)
              {
                v218 = OUTLINED_FUNCTION_18_68();
                v219(v218);
                v220 = OUTLINED_FUNCTION_27_50();
                v221(v220);
                OUTLINED_FUNCTION_21_57();
                v222 = swift_task_alloc();
                v223 = OUTLINED_FUNCTION_209_3(v222);
                *v223 = v224;
                OUTLINED_FUNCTION_3_126(v223);
                OUTLINED_FUNCTION_80_12();

                return sub_1D51BF27C();
              }
            }

            sub_1D4E50004(*(v0 + 688), &qword_1EC7F1548, &unk_1D5649E50);
            if ((v58 & 4) == 0)
            {
              v58 |= 4uLL;
              OUTLINED_FUNCTION_108_12();
            }

            if ((v58 & 8) == 0)
            {
              v38 = v58 | 8;
              goto LABEL_83;
            }

            goto LABEL_84;
          case 2:
          case 5:
          case 7:
            goto LABEL_84;
          case 3:
            v91 = OUTLINED_FUNCTION_189_4();
            v92 = *(v0 + 816);
            OUTLINED_FUNCTION_118_10(v91);
            v93 = sub_1D5613838();
            OUTLINED_FUNCTION_33_43(v93);
            if (v130)
            {
              v94 = OUTLINED_FUNCTION_20_5();
              sub_1D4E50004(v94, v95, &qword_1D5652B10);
            }

            else
            {
              sub_1D5613818();
              OUTLINED_FUNCTION_35_44();
              v125 = *(v124 + 8);
              v126 = OUTLINED_FUNCTION_121();
              v127(v126);
              if ((&qword_1D5652B10 & 1) == 0)
              {
                goto LABEL_94;
              }
            }

            if (v58)
            {
              goto LABEL_66;
            }

            v38 = v58 | 1;
            OUTLINED_FUNCTION_174_6();
            goto LABEL_84;
          case 4:
            v96 = *(v0 + 808);
            OUTLINED_FUNCTION_118_10(*(v0 + 840));
            v97 = sub_1D5613838();
            OUTLINED_FUNCTION_13_72(v97);
            v98 = OUTLINED_FUNCTION_201_4();
            if (v130)
            {
              OUTLINED_FUNCTION_299_1(v98);
              v99 = OUTLINED_FUNCTION_87_14();
              __swift_storeEnumTagSinglePayload(v99, v100, v101, v96);
            }

            else
            {
              v250 = v38;
              v128 = *(v0 + 592);
              OUTLINED_FUNCTION_144_4();
              sub_1D5613608();
              v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2680, &qword_1D5648BC8);
              OUTLINED_FUNCTION_81_2(v129);
              if (v130)
              {
                v159 = sub_1D4E50004(*(v0 + 592), &qword_1EC7F2678, &qword_1D5648BC0);
                v160 = 1;
              }

              else
              {
                OUTLINED_FUNCTION_172_5();
                v151 = sub_1D560CD98();
                OUTLINED_FUNCTION_20_62(v151);
                type metadata accessor for FlexAnalysis();
                OUTLINED_FUNCTION_15_74();
                sub_1D52CB2A0(&qword_1EC7ED018, v128);
                OUTLINED_FUNCTION_11_87();
                sub_1D52CB2A0(&qword_1EC7ECFF0, v128);
                OUTLINED_FUNCTION_44_31();
                OUTLINED_FUNCTION_143_8();
                sub_1D5612368();
                v152 = v43;
                v43 = v252;
                sub_1D4E50004(v152, &qword_1EC7EA7D8, &unk_1D561E8B0);
                v153 = OUTLINED_FUNCTION_61_28();
                v154(v153);
                OUTLINED_FUNCTION_45_34();
                v156 = *(v155 + 8);
                v157 = OUTLINED_FUNCTION_20_5();
                v159 = v158(v157);
                v160 = 0;
              }

              v161 = *(v0 + 808);
              v162 = *(v0 + 616);
              v163 = *(v0 + 608);
              OUTLINED_FUNCTION_16_72(v159, v160);
              v165 = *(v164 + 8);
              v166 = OUTLINED_FUNCTION_74_0();
              v167(v166);
              OUTLINED_FUNCTION_39_7();
              v38 = v250;
              if (!v130)
              {
                v236 = OUTLINED_FUNCTION_17_64();
                v237(v236);
                v238 = OUTLINED_FUNCTION_27_50();
                v239(v238);
                OUTLINED_FUNCTION_21_57();
                v240 = swift_task_alloc();
                v241 = OUTLINED_FUNCTION_208_1(v240);
                *v241 = v242;
                OUTLINED_FUNCTION_4_96(v241);
                OUTLINED_FUNCTION_80_12();

                return sub_1D51BFB20();
              }
            }

            sub_1D4E50004(*(v0 + 608), &qword_1EC7F1558, &unk_1D5649E60);
            if ((v58 & 0x10) == 0)
            {
              v58 |= 0x10uLL;
              OUTLINED_FUNCTION_108_12();
            }

            if ((v58 & 0x20) != 0)
            {
              goto LABEL_84;
            }

            v38 = v58 | 0x20;
            goto LABEL_83;
          case 6:
            v88 = *(v0 + 800);
            OUTLINED_FUNCTION_118_10(*(v0 + 840));
            v89 = sub_1D5613838();
            OUTLINED_FUNCTION_13_72(v89);
            v90 = OUTLINED_FUNCTION_202_4();
            if (v130)
            {
              OUTLINED_FUNCTION_237_0(v90);
              if ((v58 & 0x40) != 0)
              {
                goto LABEL_33;
              }

LABEL_32:
              v58 |= 0x40uLL;
              OUTLINED_FUNCTION_108_12();
              goto LABEL_33;
            }

            v252 = v43;
            v3 = *(v0 + 584);
            OUTLINED_FUNCTION_144_4();
            sub_1D5613768();
            v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F2610, &unk_1D5648880);
            v117 = OUTLINED_FUNCTION_77_14(v116);
            v118 = *(v0 + 800);
            v119 = *(v0 + 584);
            if (v117 == 1)
            {
              sub_1D4E50004(*(v0 + 584), &qword_1EC7F2608, &qword_1D5648878);
              OUTLINED_FUNCTION_4_20();
              v121 = *(v120 + 8);
              v122 = OUTLINED_FUNCTION_201();
              v123(v122);
            }

            else
            {
              sub_1D5431B8C((v0 + 16));
              OUTLINED_FUNCTION_45_34();
              v144 = *(v143 + 8);
              v145 = OUTLINED_FUNCTION_20_5();
              v146(v145);
              OUTLINED_FUNCTION_163_7();
              OUTLINED_FUNCTION_4_20();
              v148 = *(v147 + 8);
              v149 = OUTLINED_FUNCTION_201();
              v150(v149);
              if ((*(v0 + 344) & 1) == 0)
              {
                goto LABEL_110;
              }

              sub_1D524528C(v0 + 192);
            }

            v43 = v252;
            if ((v58 & 0x40) == 0)
            {
              goto LABEL_32;
            }

LABEL_33:
            if ((v58 & 0x80) != 0)
            {
              goto LABEL_84;
            }

            v38 = v58 | 0x80;
            goto LABEL_83;
          case 8:
            v102 = OUTLINED_FUNCTION_189_4();
            v103 = *(v0 + 792);
            OUTLINED_FUNCTION_118_10(v102);
            v104 = sub_1D5613838();
            if (OUTLINED_FUNCTION_78_20(v104) == 1)
            {
              v105 = OUTLINED_FUNCTION_97_1();
              sub_1D4E50004(v105, v106, &qword_1D5652B10);
            }

            else
            {
              v131 = *(v0 + 792);
              v132 = _s8MusicKit4SongV0aB8InternalE24supportsSmartTransitionsSbSgvg_0();
              OUTLINED_FUNCTION_62_28();
              v134 = *(v133 + 8);
              v135 = OUTLINED_FUNCTION_45_3();
              v136(v135);
              if (v132 != 2)
              {
                OUTLINED_FUNCTION_210_4();
                v232 = swift_task_alloc();
                v233 = OUTLINED_FUNCTION_91_16(v232);
                *v233 = v234;
                OUTLINED_FUNCTION_9_86(v233);
                OUTLINED_FUNCTION_80_12();

                return sub_1D51C0DDC();
              }
            }

            if ((v58 & 0x100) != 0)
            {
LABEL_66:
              v43 = v252;
            }

            else
            {
              v38 = v58 | 0x100;
LABEL_83:
              OUTLINED_FUNCTION_174_6();
            }

            goto LABEL_84;
          default:
            v78 = OUTLINED_FUNCTION_189_4();
            v79 = *(v0 + 832);
            OUTLINED_FUNCTION_118_10(v78);
            v80 = sub_1D5613838();
            v58 = &qword_1EC7EA978;
            v81 = OUTLINED_FUNCTION_32_44(v80);
            v82 = *(v0 + 720);
            if (v81 == 1)
            {
              v83 = OUTLINED_FUNCTION_159();
              sub_1D4E50004(v83, v84, &qword_1D5652B10);
              OUTLINED_FUNCTION_33();
              __swift_storeEnumTagSinglePayload(v85, v86, v87, v43);
            }

            else
            {
              v138 = *(v0 + 720);
              _s8MusicKit4SongV0aB8InternalE9allGenresAA0A14ItemCollectionVyAA5GenreVGSgvg_0();
              OUTLINED_FUNCTION_45_34();
              v140 = *(v139 + 8);
              v141 = OUTLINED_FUNCTION_20_5();
              v142(v141);
              OUTLINED_FUNCTION_73_18();
              if (!v130)
              {
                v226 = OUTLINED_FUNCTION_26_56();
                v227(v226);
                v228 = swift_task_alloc();
                v229 = OUTLINED_FUNCTION_205_4(v228);
                *v229 = v230;
                OUTLINED_FUNCTION_5_97(v229);
                OUTLINED_FUNCTION_80_12();

                return sub_1D51BE964();
              }
            }

            sub_1D4E50004(*(v0 + 720), &qword_1EC7EA788, &unk_1D56223A0);
            OUTLINED_FUNCTION_268_1();
            if (v130)
            {
              v44 = &qword_1EC7EA978;
            }

            v43 = &qword_1EC7EA978;
LABEL_84:
            OUTLINED_FUNCTION_288_0();
            break;
        }

        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_94:
    OUTLINED_FUNCTION_93_15();
    v214 = swift_task_alloc();
    v215 = OUTLINED_FUNCTION_206_3(v214);
    *v215 = v216;
    OUTLINED_FUNCTION_8_89(v215);
    OUTLINED_FUNCTION_80_12();

    return sub_1D51BE110();
  }

  else
  {
    while (1)
    {
      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v8 >= (((1 << *(v0 + 1160)) + 63) >> 6))
      {
        v9 = *(v0 + 904);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F3880, &qword_1D564E648);
        v204 = OUTLINED_FUNCTION_35_1();
        __swift_storeEnumTagSinglePayload(v204, v205, 1, v206);
        v12 = 0;
        goto LABEL_8;
      }

      v4 = *(v0 + 544);
      v7 = v4[v8 + 8];
      ++v6;
      if (v7)
      {
        v6 = v8;
        goto LABEL_7;
      }
    }

    __break(1u);
LABEL_110:
    OUTLINED_FUNCTION_79_16();
    v244 = *v3;
    v245 = v3[1];
    v246 = swift_task_alloc();
    v247 = OUTLINED_FUNCTION_90_17(v246);
    *v247 = v248;
    OUTLINED_FUNCTION_6_94(v247);
    OUTLINED_FUNCTION_80_12();

    return sub_1D51C0448();
  }
}

uint64_t sub_1D52C4E44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_180_4();
  OUTLINED_FUNCTION_203_3();
  OUTLINED_FUNCTION_74_21();
  v34 = v33[95];
  v35 = v33[94];
  v36 = v33[93];
  v37 = v33[92];
  v38 = v33[91];
  v39 = v33[68];

  v40 = *(v37 + 8);
  v41 = OUTLINED_FUNCTION_97_1();
  v42(v41);
  v43 = *(v34 + 8);
  v44 = OUTLINED_FUNCTION_85_0();
  v45(v44);
  sub_1D4E50004(v32, &qword_1EC7EA978, &qword_1D5652B10);
  OUTLINED_FUNCTION_0_167();
  sub_1D4E58614();
  OUTLINED_FUNCTION_2_124(v33[132]);

  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_178_4();

  return v47(v46, v47, v48, v49, v50, v51, v52, v53, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32);
}

uint64_t sub_1D52C4FF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_180_4();
  OUTLINED_FUNCTION_203_3();
  OUTLINED_FUNCTION_74_21();
  v34 = v33[95];
  v35 = v33[94];
  v36 = v33[89];
  v37 = v33[88];
  v38 = v33[87];
  v39 = v33[68];

  v40 = *(v37 + 8);
  v41 = OUTLINED_FUNCTION_97_1();
  v42(v41);
  v43 = *(v34 + 8);
  v44 = OUTLINED_FUNCTION_85_0();
  v45(v44);
  sub_1D4E50004(v32, &qword_1EC7EA978, &qword_1D5652B10);
  OUTLINED_FUNCTION_0_167();
  sub_1D4E58614();
  OUTLINED_FUNCTION_2_124(v33[134]);

  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_178_4();

  return v47(v46, v47, v48, v49, v50, v51, v52, v53, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32);
}

uint64_t sub_1D52C51AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_180_4();
  OUTLINED_FUNCTION_203_3();
  OUTLINED_FUNCTION_74_21();
  OUTLINED_FUNCTION_225_2();

  v35 = *(v34 + 8);
  v36 = OUTLINED_FUNCTION_85_0();
  v37(v36);
  sub_1D4E50004(v32, &qword_1EC7EA978, &qword_1D5652B10);
  OUTLINED_FUNCTION_0_167();
  sub_1D4E58614();
  OUTLINED_FUNCTION_2_124(*(v33 + 1088));

  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_178_4();

  return v39(v38, v39, v40, v41, v42, v43, v44, v45, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32);
}

uint64_t sub_1D52C5334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_180_4();
  OUTLINED_FUNCTION_203_3();
  OUTLINED_FUNCTION_74_21();
  v34 = v33[95];
  v35 = v33[94];
  v36 = v33[79];
  v37 = v33[78];
  v38 = v33[77];
  v39 = v33[68];

  v40 = *(v37 + 8);
  v41 = OUTLINED_FUNCTION_97_1();
  v42(v41);
  v43 = *(v34 + 8);
  v44 = OUTLINED_FUNCTION_85_0();
  v45(v44);
  sub_1D4E50004(v32, &qword_1EC7EA978, &qword_1D5652B10);
  OUTLINED_FUNCTION_0_167();
  sub_1D4E58614();
  OUTLINED_FUNCTION_2_124(v33[138]);

  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_178_4();

  return v47(v46, v47, v48, v49, v50, v51, v52, v53, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32);
}

uint64_t sub_1D52C54E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_180_4();
  OUTLINED_FUNCTION_203_3();
  OUTLINED_FUNCTION_74_21();
  OUTLINED_FUNCTION_225_2();

  v35 = *(v34 + 8);
  v36 = OUTLINED_FUNCTION_85_0();
  v37(v36);
  sub_1D4E50004(v32, &qword_1EC7EA978, &qword_1D5652B10);
  OUTLINED_FUNCTION_0_167();
  sub_1D4E58614();
  sub_1D524528C(v33 + 192);
  OUTLINED_FUNCTION_2_124(*(v33 + 1120));

  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_178_4();

  return v39(v38, v39, v40, v41, v42, v43, v44, v45, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32);
}

uint64_t sub_1D52C5678(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_180_4();
  OUTLINED_FUNCTION_203_3();
  OUTLINED_FUNCTION_74_21();
  OUTLINED_FUNCTION_225_2();

  v35 = *(v34 + 8);
  v36 = OUTLINED_FUNCTION_85_0();
  v37(v36);
  sub_1D4E50004(v32, &qword_1EC7EA978, &qword_1D5652B10);
  OUTLINED_FUNCTION_0_167();
  sub_1D4E58614();
  OUTLINED_FUNCTION_2_124(*(v33 + 1136));

  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_178_4();

  return v39(v38, v39, v40, v41, v42, v43, v44, v45, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32);
}

uint64_t sub_1D52C5800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_180_4();
  OUTLINED_FUNCTION_203_3();
  v35 = v32[111];
  v36 = v32[105];
  v37 = v32[97];
  v38 = v32[96];
  OUTLINED_FUNCTION_225_2();
  v39 = *(v34 + 8);
  v40 = OUTLINED_FUNCTION_85_0();
  v39(v40);
  (v39)(v37, v33);
  sub_1D4E50004(v36, &qword_1EC7EA978, &qword_1D5652B10);
  OUTLINED_FUNCTION_0_167();
  sub_1D4E58614();
  OUTLINED_FUNCTION_2_124(v32[144]);

  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_178_4();

  return v42(v41, v42, v43, v44, v45, v46, v47, v48, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32);
}

void sub_1D52C59A0(uint64_t a1@<X0>, int64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBF80, &qword_1D561F600);
  v10 = OUTLINED_FUNCTION_4(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_117();
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v34 - v17;
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v34 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v34 - v22;
  if (*(a3 + 8) <= a2)
  {
    OUTLINED_FUNCTION_41_27();

    MEMORY[0x1EEDC4A38]();
  }

  else if (a2 < 0)
  {
    OUTLINED_FUNCTION_41_27();

    sub_1D560C218();
  }

  else
  {
    v36 = a4;
    v37 = a1;
    v35 = objc_opt_self();
    v24 = [v35 hours];
    sub_1D4F441CC();
    sub_1D560BA48();
    exp2(a2);
    sub_1D560BA18();
    v25 = *(_s10PropertiesVMa(0) + 24);
    sub_1D4E62A60(&qword_1EC7F3888, &qword_1EC7EBF80, &qword_1D561F600);
    v26 = sub_1D5614D08();
    v27 = *(v12 + 16);
    if (v26)
    {
      v28 = a3 + v25;
      v29 = v18;
    }

    else
    {
      v29 = OUTLINED_FUNCTION_85_0();
    }

    v27(v29, v28, v9);
    v32 = [v35 seconds];
    sub_1D560BA78();

    sub_1D560BA58();
    v33 = *(v12 + 8);
    v33(v4, v9);
    sub_1D560C2A8();
    v33(v18, v9);
    v33(v21, v9);
    v33(v23, v9);
    OUTLINED_FUNCTION_41_27();
  }
}

uint64_t sub_1D52C5CA8(double a1)
{
  v2 = sub_1D560BED8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D560C388();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F3838, &qword_1D564E620);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = v23 - v15;
  if (a1 >= 0.1)
  {
    if (a1 >= 0.33)
    {
      if (a1 < 0.5)
      {
        v17 = 2593161716;
      }

      else
      {
        v18 = a1 >= 1.0 || a1 < 0.5;
        v17 = 2609938932;
        if (!v18)
        {
          v17 = 3196944628;
        }
      }
    }

    else
    {
      v17 = 2310046196;
    }
  }

  else
  {
    v17 = 2576384500;
  }

  v23[0] = v17;
  v24 = 32;
  v25 = 0xE100000000000000;
  *&v23[1] = a1;
  sub_1D560C378();
  sub_1D52B3F2C();
  sub_1D560BEA8();
  sub_1D560BEC8();
  MEMORY[0x1DA6E1CA0](v6, v9);
  (*(v3 + 8))(v6, v2);
  v19 = *(v10 + 8);
  v19(v14, v9);
  sub_1D4E62A60(&qword_1EDD5CF98, &qword_1EC7F3838, &qword_1D564E620);
  sub_1D5614B88();
  v19(v16, v9);
  MEMORY[0x1DA6EAC70](v23[2], v23[3]);

  v20 = v24;
  v21 = v25;
  v24 = v23[0];
  v25 = 0xA400000000000000;

  MEMORY[0x1DA6EAC70](v20, v21);

  return v24;
}

uint64_t sub_1D52C6018()
{
  v0 = sub_1D5613838();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x1EEE9AC00](v0);
  v54 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v59 = &v50 - v6;
  MEMORY[0x1EEE9AC00](v5);
  v58 = &v50 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F24F0, &unk_1D5648560);
  v9 = v8 - 8;
  v10 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v50 - v11;
  v13 = MEMORY[0x1E69E7CC8];
  v62 = MEMORY[0x1E69E7CC8];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA428, &unk_1D561C410);
  sub_1D4E62A60(&qword_1EC7F38B0, &qword_1EC7EA428, &unk_1D561C410);
  sub_1D5614F98();
  v15 = v0;
  v16 = *(v9 + 44);
  v17 = sub_1D4E62A60(&qword_1EDD53BC8, &qword_1EC7EA428, &unk_1D561C410);
  v57 = (v1 + 16);
  v55 = v1;
  v60 = (v1 + 32);
  v51 = xmmword_1D561C050;
  v56 = v15;
  v52 = v17;
  for (i = v16; ; v16 = i)
  {
    sub_1D5615648();
    if (*&v12[v16] == v61[0])
    {
      sub_1D4E50004(v12, &qword_1EC7F24F0, &unk_1D5648560);
      return v13;
    }

    v18 = sub_1D5615688();
    v19 = v58;
    (*v57)(v58);
    v18(v61, 0);
    v20 = v14;
    sub_1D5615658();
    v21 = *v60;
    (*v60)(v59, v19, v15);
    v22 = sub_1D56137B8();
    v24 = v23;
    v26 = sub_1D4F15A78(v22, v23);
    v27 = v13[2];
    v28 = (v25 & 1) == 0;
    v29 = v27 + v28;
    if (__OFADD__(v27, v28))
    {
      break;
    }

    v30 = v25;
    if (v13[3] < v29)
    {
      sub_1D52C793C(v29, 1);
      v13 = v62;
      v31 = sub_1D4F15A78(v22, v24);
      if ((v30 & 1) != (v32 & 1))
      {
        goto LABEL_19;
      }

      v26 = v31;
    }

    if (v30)
    {

      v33 = v13[7];
      v21(v54, v59, v15);
      v34 = *(v33 + 8 * v26);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v33 + 8 * v26) = v34;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v46 = *(v34 + 16);
        sub_1D4F0271C();
        v34 = v47;
        *(v33 + 8 * v26) = v47;
      }

      v36 = *(v34 + 16);
      if (v36 >= *(v34 + 24) >> 1)
      {
        sub_1D4F0271C();
        v34 = v48;
        *(v33 + 8 * v26) = v48;
      }

      v14 = v20;
      *(v34 + 16) = v36 + 1;
      v37 = v34 + ((*(v55 + 80) + 32) & ~*(v55 + 80)) + *(v55 + 72) * v36;
      v15 = v56;
      v21(v37, v54, v56);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EACE0, &qword_1D561DAC0);
      v38 = *(v55 + 72);
      v39 = (*(v55 + 80) + 32) & ~*(v55 + 80);
      v40 = swift_allocObject();
      *(v40 + 16) = v51;
      v41 = v40 + v39;
      v15 = v56;
      v21(v41, v59, v56);
      v13[(v26 >> 6) + 8] |= 1 << v26;
      v42 = (v13[6] + 16 * v26);
      *v42 = v22;
      v42[1] = v24;
      *(v13[7] + 8 * v26) = v40;
      v43 = v13[2];
      v44 = __OFADD__(v43, 1);
      v45 = v43 + 1;
      if (v44)
      {
        goto LABEL_18;
      }

      v13[2] = v45;
      v14 = v20;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_1D5616238();
  __break(1u);
  return result;
}

uint64_t sub_1D52C650C(uint64_t a1)
{
  v2 = _s10DescriptorVMa();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v29 = (&v27 - v8);
  sub_1D4F53BAC();
  v9 = sub_1D5614BD8();
  v10 = *(a1 + 16);
  if (!v10)
  {
    return v9;
  }

  v11 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v28 = *(v3 + 72);
  while (1)
  {
    v12 = v29;
    sub_1D52CB248(v11, v29);
    v14 = *v12;
    v13 = v12[1];
    sub_1D52C994C(v12, v7);

    swift_isUniquelyReferenced_nonNull_native();
    v30 = v9;
    v15 = sub_1D4F15A78(v14, v13);
    if (__OFADD__(v9[2], (v16 & 1) == 0))
    {
      break;
    }

    v17 = v15;
    v18 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F38C0, &qword_1D564E6F8);
    if (sub_1D5615D78())
    {
      v19 = sub_1D4F15A78(v14, v13);
      if ((v18 & 1) != (v20 & 1))
      {
        goto LABEL_15;
      }

      v17 = v19;
    }

    if (v18)
    {

      v9 = v30;
      v21 = v28;
      sub_1D52CB194(v7, v30[7] + v17 * v28);
    }

    else
    {
      v9 = v30;
      v30[(v17 >> 6) + 8] |= 1 << v17;
      v22 = (v9[6] + 16 * v17);
      *v22 = v14;
      v22[1] = v13;
      v21 = v28;
      sub_1D52C994C(v7, v9[7] + v17 * v28);
      v23 = v9[2];
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        goto LABEL_14;
      }

      v9[2] = v25;
    }

    v11 += v21;
    if (!--v10)
    {
      return v9;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  result = sub_1D5616238();
  __break(1u);
  return result;
}

uint64_t sub_1D52C67EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D52C6814, v5, 0);
}

uint64_t sub_1D52C6814()
{
  OUTLINED_FUNCTION_80();
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *(v1 + 16) = *(v0 + 40);
  OUTLINED_FUNCTION_27_0(dword_1D5650B80);
  v10 = v2;
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  *(v0 + 72) = v3;
  *v3 = v4;
  v3[1] = sub_1D52C68E8;
  v5 = *(v0 + 56);
  v6 = *(v0 + 24);
  v7 = *(v0 + 32);
  v8 = *(v0 + 16);

  return v10(v8, v6, v7, &unk_1D564E630, v1);
}

uint64_t sub_1D52C68E8()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v6 = *(v5 + 72);
  v7 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v8 = v7;
  v3[10] = v0;

  if (v0)
  {
    v9 = v3[7];
    v10 = OUTLINED_FUNCTION_226_3();

    return MEMORY[0x1EEE6DFA0](v10, v11, v12);
  }

  else
  {
    v13 = v3[8];

    OUTLINED_FUNCTION_55();

    return v14();
  }
}

uint64_t sub_1D52C6A04()
{
  OUTLINED_FUNCTION_60();
  v1 = *(v0 + 64);

  OUTLINED_FUNCTION_55();
  v3 = *(v0 + 80);

  return v2();
}

uint64_t sub_1D52C6A60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a3;
  v4[7] = a4;
  v4[4] = a1;
  v4[5] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D52C6A80, a2, 0);
}

uint64_t sub_1D52C6A80()
{
  OUTLINED_FUNCTION_80();
  v1 = v0[6];
  v0[2] = v0[5];
  v0[3] = 0x8000000000000000;

  v8 = (v1 + *v1);
  v2 = v1[1];
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  v0[8] = v3;
  *v3 = v4;
  v3[1] = sub_1D52C6B88;
  v5 = v0[7];
  v6 = v0[4];

  return (v8)(v6, v0 + 2);
}

uint64_t sub_1D52C6B88()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_154_7();
  OUTLINED_FUNCTION_44();
  *v4 = v3;
  v5 = *(v1 + 64);
  *v4 = *v2;
  *(v3 + 72) = v0;

  OUTLINED_FUNCTION_153_4();
  v7 = *(v6 + 40);
  OUTLINED_FUNCTION_204();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1D52C6C9C()
{
  OUTLINED_FUNCTION_60();
  v1 = *(v0 + 40);

  OUTLINED_FUNCTION_22_1();

  return v2();
}

uint64_t sub_1D52C6CF4()
{
  OUTLINED_FUNCTION_60();
  v1 = *(v0 + 40);

  OUTLINED_FUNCTION_55();
  v3 = *(v0 + 72);

  return v2();
}

uint64_t sub_1D52C6D78()
{
  result = sub_1D560CD48();
  if (v1 <= 0x3F)
  {
    result = _s8DatabaseCMa();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1D52C6E68()
{
  OUTLINED_FUNCTION_47();
  v2 = v1;
  v4 = v3;
  v5 = v0;
  v7 = v6;
  v63 = OUTLINED_FUNCTION_260_0(v8, v6, v9, v10);
  OUTLINED_FUNCTION_4(v63);
  v12 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v15);
  v62 = &v55 - v16;
  v17 = *v0;
  if (*(*v0 + 24) > v0)
  {
    v18 = *(*v0 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(v4, v2);
  v60 = v7;
  v19 = sub_1D5615E78();
  if (!*(v17 + 16))
  {
LABEL_31:

LABEL_32:
    *v5 = v19;
    OUTLINED_FUNCTION_46();
    return;
  }

  v20 = 0;
  v22 = (v17 + 64);
  v21 = *(v17 + 64);
  v23 = *(v17 + 32);
  OUTLINED_FUNCTION_238_1();
  v26 = v25 & v24;
  v28 = (v27 + 63) >> 6;
  v56 = v5;
  v57 = (v12 + 16);
  v58 = v17;
  v59 = v12;
  v61 = (v12 + 32);
  v29 = v19 + 64;
  if ((v25 & v24) == 0)
  {
LABEL_6:
    v31 = v20;
    while (1)
    {
      v20 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v20 >= v28)
      {
        break;
      }

      v32 = v22[v20];
      ++v31;
      if (v32)
      {
        v30 = __clz(__rbit64(v32));
        v26 = (v32 - 1) & v32;
        goto LABEL_11;
      }
    }

    if ((v60 & 1) == 0)
    {

      v5 = v56;
      goto LABEL_32;
    }

    v53 = 1 << *(v17 + 32);
    v5 = v56;
    if (v53 >= 64)
    {
      sub_1D54ACE48(0, (v53 + 63) >> 6, v22);
    }

    else
    {
      OUTLINED_FUNCTION_168_5();
      *v22 = v54;
    }

    *(v17 + 16) = 0;
    goto LABEL_31;
  }

  while (1)
  {
    v30 = __clz(__rbit64(v26));
    v26 &= v26 - 1;
LABEL_11:
    v33 = v30 | (v20 << 6);
    v34 = *(v17 + 56);
    v35 = (*(v17 + 48) + 16 * v33);
    v37 = *v35;
    v36 = v35[1];
    v38 = *(v59 + 72);
    v39 = v34 + v38 * v33;
    if (v60)
    {
      (*v61)(v62, v39, v63);
    }

    else
    {
      (*v57)(v62, v39, v63);
    }

    v40 = *(v19 + 40);
    sub_1D56162D8();
    sub_1D5614E28();
    sub_1D5616328();
    v41 = *(v19 + 32);
    OUTLINED_FUNCTION_267_1();
    v45 = (v44 << v42) & ~*(v29 + 8 * v43);
    if (!v45)
    {
      break;
    }

    v46 = __clz(__rbit64(v45)) | v42 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v29 + ((v46 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v46;
    v52 = (*(v19 + 48) + 16 * v46);
    *v52 = v37;
    v52[1] = v36;
    (*v61)((*(v19 + 56) + v38 * v46), v62, v63);
    ++*(v19 + 16);
    v17 = v58;
    if (!v26)
    {
      goto LABEL_6;
    }
  }

  OUTLINED_FUNCTION_266_0();
  while (++v47 != v49 || (v48 & 1) == 0)
  {
    v50 = v47 == v49;
    if (v47 == v49)
    {
      v47 = 0;
    }

    v48 |= v50;
    v51 = *(v29 + 8 * v47);
    if (v51 != -1)
    {
      v46 = __clz(__rbit64(~v51)) + (v47 << 6);
      goto LABEL_23;
    }
  }

LABEL_34:
  __break(1u);
}

void sub_1D52C7190(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47();
  a19 = v21;
  a20 = v22;
  v23 = v20;
  v25 = v24;
  v27 = v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA358, &unk_1D561DF50);
  OUTLINED_FUNCTION_22(v28);
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v128 - v32;
  v34 = sub_1D5610088();
  v35 = OUTLINED_FUNCTION_4(v34);
  v147 = v36;
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_5_0();
  v133 = v39;
  OUTLINED_FUNCTION_70_0();
  v40 = sub_1D560D9A8();
  v41 = OUTLINED_FUNCTION_4(v40);
  v43 = v42;
  v45 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_59_0();
  v48 = v46 - v47;
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_13_2();
  v148 = v50;
  OUTLINED_FUNCTION_70_0();
  v51 = type metadata accessor for GenericMusicItem();
  v52 = OUTLINED_FUNCTION_69(v51);
  v144 = v53;
  v55 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_5_0();
  v150 = v56;
  OUTLINED_FUNCTION_70_0();
  v149 = type metadata accessor for LooselyComparableTypedIdentifier();
  v57 = OUTLINED_FUNCTION_4(v149);
  v143 = v58;
  v60 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_5_0();
  v146 = v61;
  v62 = *v20;
  if (*(*v20 + 24) > v27)
  {
    v63 = *(*v20 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F38E8, &unk_1D564E740);
  OUTLINED_FUNCTION_0_6();
  v145 = v25;
  v64 = sub_1D5615E78();
  if (!*(v62 + 16))
  {

    v75 = v64;
LABEL_40:
    *v23 = v75;
    OUTLINED_FUNCTION_46();
    return;
  }

  v141 = v48;
  v142 = v40;
  v129 = v23;
  v65 = 0;
  v67 = (v62 + 64);
  v66 = *(v62 + 64);
  v68 = *(v62 + 32);
  OUTLINED_FUNCTION_238_1();
  v71 = v70 & v69;
  v132 = (v72 + 63) >> 6;
  v138 = v43 + 16;
  v137 = (v43 + 8);
  v131 = v147 + 32;
  v130 = v147 + 8;
  v73 = v64 + 64;
  v135 = v33;
  v134 = v34;
  v74 = v148;
  v140 = v62;
  v75 = v64;
  v76 = v146;
  v139 = v64;
  if (!v71)
  {
LABEL_6:
    v79 = v65;
    while (1)
    {
      v65 = v79 + 1;
      if (__OFADD__(v79, 1))
      {
        __break(1u);
        goto LABEL_42;
      }

      if (v65 >= v132)
      {
        break;
      }

      v80 = v67[v65];
      ++v79;
      if (v80)
      {
        v77 = __clz(__rbit64(v80));
        v78 = (v80 - 1) & v80;
        goto LABEL_11;
      }
    }

    if (v145)
    {
      v126 = 1 << *(v62 + 32);
      v23 = v129;
      if (v126 >= 64)
      {
        sub_1D54ACE48(0, (v126 + 63) >> 6, v67);
      }

      else
      {
        OUTLINED_FUNCTION_168_5();
        *v67 = v127;
      }

      *(v62 + 16) = 0;
    }

    else
    {

      v23 = v129;
    }

    goto LABEL_40;
  }

  while (1)
  {
    v77 = __clz(__rbit64(v71));
    v78 = (v71 - 1) & v71;
LABEL_11:
    v81 = v77 | (v65 << 6);
    v82 = *(v62 + 48);
    v147 = *(v143 + 72);
    v148 = v78;
    v83 = v82 + v147 * v81;
    if (v145)
    {
      sub_1D52C994C(v83, v76);
      OUTLINED_FUNCTION_254_1();
      OUTLINED_FUNCTION_160_6();
      sub_1D52C994C(v84, v150);
    }

    else
    {
      sub_1D52CB248(v83, v76);
      v85 = OUTLINED_FUNCTION_254_1();
      sub_1D52CB248(v85, v150);
    }

    v86 = *(v75 + 40);
    sub_1D56162D8();
    v87 = *v76;
    v88 = v76[1];
    sub_1D5614E28();
    v89 = *(v149 + 20);
    OUTLINED_FUNCTION_195(&a17);
    v136 = v90;
    v91 = v142;
    v92(v74, v76 + v90, v142);
    v93 = v74;
    v94 = v141;
    sub_1D560D948();
    OUTLINED_FUNCTION_31_41();
    v96 = sub_1D52CB2A0(&qword_1EDD53C20, v95);
    v97 = OUTLINED_FUNCTION_218_4();
    v98 = *v137;
    (*v137)(v94, v91);
    if (v97 & 1) != 0 || (sub_1D560D998(), v99 = OUTLINED_FUNCTION_218_4(), v98(v94, v91), (v99))
    {
      v98(v93, v91);
      v74 = v93;
    }

    else
    {
      sub_1D560D918();
      OUTLINED_FUNCTION_218_4();
      v111 = OUTLINED_FUNCTION_146_1();
      v98(v111, v91);
      v98(v93, v91);
      v74 = v93;
      if ((v96 & 1) == 0)
      {
        OUTLINED_FUNCTION_31_41();
        sub_1D52CB2A0(&qword_1EDD53C28, v112);
        v76 = v146;
        sub_1D5614CB8();
        v75 = v139;
        goto LABEL_22;
      }
    }

    v76 = v146;
    v100 = v135;
    sub_1D52CB1F8(v146 + *(v149 + 24), v135, &qword_1EC7EA358, &unk_1D561DF50);
    v101 = OUTLINED_FUNCTION_35_1();
    v102 = v134;
    OUTLINED_FUNCTION_57(v101, v103, v134);
    v75 = v139;
    if (v104)
    {
      v105 = OUTLINED_FUNCTION_121();
      sub_1D4E50004(v105, v106, &unk_1D561DF50);
    }

    else
    {
      OUTLINED_FUNCTION_195(&a10);
      v107 = v133;
      v108(v133, v100, v102);
      OUTLINED_FUNCTION_159_7();
      sub_1D52CB2A0(&qword_1EDD53358, v109);
      sub_1D5614CB8();
      OUTLINED_FUNCTION_195(&a9);
      v110(v107, v102);
    }

LABEL_22:
    sub_1D5616328();
    v113 = *(v75 + 32);
    OUTLINED_FUNCTION_267_1();
    v117 = (v116 << v114) & ~*(v73 + 8 * v115);
    v62 = v140;
    if (!v117)
    {
      break;
    }

    v118 = __clz(__rbit64(v117)) | v114 & 0x7FFFFFFFFFFFFFC0;
LABEL_31:
    *(v73 + ((v118 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v118;
    sub_1D52C994C(v76, *(v75 + 48) + v147 * v118);
    v124 = *(v75 + 56);
    OUTLINED_FUNCTION_160_6();
    sub_1D52C994C(v150, v125);
    ++*(v75 + 16);
    v71 = v148;
    if (!v148)
    {
      goto LABEL_6;
    }
  }

  OUTLINED_FUNCTION_266_0();
  while (++v119 != v121 || (v120 & 1) == 0)
  {
    v122 = v119 == v121;
    if (v119 == v121)
    {
      v119 = 0;
    }

    v120 |= v122;
    v123 = *(v73 + 8 * v119);
    if (v123 != -1)
    {
      v118 = __clz(__rbit64(~v123)) + (v119 << 6);
      goto LABEL_31;
    }
  }

LABEL_42:
  __break(1u);
}