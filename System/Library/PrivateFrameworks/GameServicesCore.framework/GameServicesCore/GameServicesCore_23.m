uint64_t sub_227D2B298()
{
  OUTLINED_FUNCTION_6();
  v1 = *(v0 + 136);
  v2 = *(v0 + 88);
  *(v0 + 144) = (*(v0 + 128))();
  v3 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_227D2B2FC()
{
  OUTLINED_FUNCTION_6();
  v1 = sub_227D25174(v0[2], v0[18], &qword_27D7E83F8, &unk_227D61E50, &qword_27D7E9FF8, &qword_27D7EA020);

  v2 = v0[11];
  if (!v1)
  {
    sub_227D4A548();
    sub_227D4CE28();
  }

  v3 = v0[6];

  v4 = OUTLINED_FUNCTION_8_0();

  return v5(v4);
}

uint64_t sub_227D2B3CC()
{
  OUTLINED_FUNCTION_6();
  v1[3] = v2;
  v1[4] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E83F8, &unk_227D61E50);
  v1[5] = v3;
  OUTLINED_FUNCTION_10_0(v3);
  v1[6] = v4;
  v6 = *(v5 + 64);
  v1[7] = OUTLINED_FUNCTION_30();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6908, &unk_227D4E690);
  OUTLINED_FUNCTION_5(v7);
  v9 = *(v8 + 64);
  v1[8] = OUTLINED_FUNCTION_30();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8468, &unk_227D59010);
  v1[9] = v10;
  OUTLINED_FUNCTION_10_0(v10);
  v1[10] = v11;
  v13 = *(v12 + 64);
  v1[11] = OUTLINED_FUNCTION_30();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  v1[12] = v14;
  OUTLINED_FUNCTION_10_0(v14);
  v1[13] = v15;
  v17 = *(v16 + 64);
  v1[14] = OUTLINED_FUNCTION_30();
  v18 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v18, v19, v20);
}

uint64_t sub_227D2B558()
{
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_51_0();
  v1 = v0[13];
  v2 = *(v0[3] + 16);
  v3 = MEMORY[0x277D84F90];
  v0[16] = 0;
  v0[17] = v3;
  v0[15] = v2;
  if (v2)
  {
    v4 = v0[14];
    v5 = v0[12];
    v6 = OUTLINED_FUNCTION_106_5(v1);
    v7(v6);
    v0[18] = sub_227D4A6A8();
    v0[19] = v8;
    OUTLINED_FUNCTION_42_10();
    v22 = swift_task_alloc();
    v23 = OUTLINED_FUNCTION_67_4(v22);
    *v23 = v24;
    OUTLINED_FUNCTION_90_6(v23);
    OUTLINED_FUNCTION_30_0();
    OUTLINED_FUNCTION_164();

    return sub_227CACB7C();
  }

  else
  {
    v9 = v0[14];
    v10 = v0[11];
    v12 = v0[7];
    v11 = v0[8];

    OUTLINED_FUNCTION_115();
    OUTLINED_FUNCTION_164();

    return v15(v13, v14, v15, v16, v17, v18, v19, v20);
  }
}

uint64_t sub_227D2B704()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  v6 = *(v5 + 160);
  v7 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v8 = v7;
  *(v3 + 168) = v0;

  if (v0)
  {
    *(v3 + 240) = v0;
  }

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_227D2B80C()
{
  v1 = *(v0[4] + 96);
  v0[22] = v1;
  v2 = (*v1 + 96) & 0xFFFFFFFFFFFFLL | 0xA83A000000000000;
  v0[23] = *(*v1 + 96);
  v0[24] = v2;
  return OUTLINED_FUNCTION_2_0(sub_227D2B848, v1);
}

uint64_t sub_227D2B848()
{
  OUTLINED_FUNCTION_6();
  v1 = *(v0 + 192);
  v2 = *(v0 + 176);
  *(v0 + 200) = (*(v0 + 184))();
  v3 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_227D2B8AC()
{
  OUTLINED_FUNCTION_119();
  if (*(v0[25] + 16) && (v1 = sub_227B2664C(v0[18], v0[19]), v2 = v0[25], (v3 & 1) != 0))
  {
    OUTLINED_FUNCTION_102_6(v1);

    OUTLINED_FUNCTION_66_10();
    v4 += 67;
    v0[27] = *v4;
    v0[28] = v4 & 0xFFFFFFFFFFFFLL | 0x1E30000000000000;
  }

  else
  {
    v6 = v0[18];
    v5 = v0[19];

    OUTLINED_FUNCTION_35_9();

    OUTLINED_FUNCTION_8_19();
    OUTLINED_FUNCTION_110_6();
    OUTLINED_FUNCTION_0_56();
    sub_227B12A9C(v7, v8);
    v9 = OUTLINED_FUNCTION_23_6();
    OUTLINED_FUNCTION_57_0();
    sub_227D49D98();

    swift_willThrow();
    v0[30] = v9;
  }

  OUTLINED_FUNCTION_141_5();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_227D2B9F4()
{
  OUTLINED_FUNCTION_6();
  v1 = *(v0 + 224);
  v2 = *(v0 + 208);
  *(v0 + 232) = (*(v0 + 216))();
  v3 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_227D2BE94()
{
  OUTLINED_FUNCTION_6();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6908, &unk_227D4E690);
  OUTLINED_FUNCTION_5(v3);
  v5 = *(v4 + 64);
  v1[4] = OUTLINED_FUNCTION_30();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E82C8, &unk_227D64BF0);
  v1[5] = v6;
  OUTLINED_FUNCTION_10_0(v6);
  v1[6] = v7;
  v9 = *(v8 + 64);
  v1[7] = OUTLINED_FUNCTION_30();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  v1[8] = v10;
  OUTLINED_FUNCTION_10_0(v10);
  v1[9] = v11;
  v13 = *(v12 + 64);
  v1[10] = OUTLINED_FUNCTION_30();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E83F8, &unk_227D61E50);
  v1[11] = v14;
  OUTLINED_FUNCTION_10_0(v14);
  v1[12] = v15;
  v17 = *(v16 + 64);
  v1[13] = OUTLINED_FUNCTION_30();
  v18 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v18, v19, v20);
}

uint64_t sub_227D2C020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_177_1();
  OUTLINED_FUNCTION_119();
  v11 = v10[12];
  v12 = *(v10[2] + 16);
  v13 = MEMORY[0x277D84F90];
  v10[15] = 0;
  v10[16] = v13;
  v10[14] = v12;
  if (v12)
  {
    v14 = v10[13];
    v16 = v10[10];
    v15 = v10[11];
    v17 = OUTLINED_FUNCTION_106_5(v11);
    v18(v17);
    sub_227D4A808();
    v19 = v10[10];
    v10[17] = sub_227D4A6A8();
    v10[18] = v20;
    OUTLINED_FUNCTION_42_10();
    v34 = v10[13];
    v35 = OUTLINED_FUNCTION_91();
    v36(v35);
    v10[19] = sub_227D4A7F8();
    v10[20] = v37;
    v38 = swift_task_alloc();
    v10[21] = v38;
    *v38 = v10;
    v38[1] = sub_227D2C22C;
    v39 = v10[3];
    OUTLINED_FUNCTION_30_0();
    OUTLINED_FUNCTION_128();

    return sub_227CACB7C();
  }

  else
  {
    v21 = v10[13];
    v22 = v10[10];
    v23 = v10[7];
    v24 = v10[4];

    OUTLINED_FUNCTION_115();
    OUTLINED_FUNCTION_128();

    return v27(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10);
  }
}

uint64_t sub_227D2C22C()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  v6 = *(v5 + 168);
  v7 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v8 = v7;
  *(v3 + 176) = v0;

  if (v0)
  {
    *(v3 + 248) = v0;
  }

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_227D2C334()
{
  v1 = *(v0[3] + 96);
  v0[23] = v1;
  v2 = (*v1 + 96) & 0xFFFFFFFFFFFFLL | 0xA83A000000000000;
  v0[24] = *(*v1 + 96);
  v0[25] = v2;
  return OUTLINED_FUNCTION_2_0(sub_227D2C370, v1);
}

uint64_t sub_227D2C370()
{
  OUTLINED_FUNCTION_6();
  v1 = *(v0 + 200);
  v2 = *(v0 + 184);
  *(v0 + 208) = (*(v0 + 192))();
  v3 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_227D2C3D4()
{
  OUTLINED_FUNCTION_119();
  if (*(v0[26] + 16) && (v1 = sub_227B2664C(v0[17], v0[18]), (v2 & 1) != 0))
  {
    v3 = v0[18];
    v0[27] = *(*(v0[26] + 56) + 8 * v1);

    OUTLINED_FUNCTION_66_10();
    v4 += 93;
    v0[28] = *v4;
    v0[29] = v4 & 0xFFFFFFFFFFFFLL | 0x6619000000000000;
  }

  else
  {
    v6 = v0[17];
    v5 = v0[18];

    OUTLINED_FUNCTION_35_9();

    OUTLINED_FUNCTION_8_19();
    OUTLINED_FUNCTION_110_6();
    OUTLINED_FUNCTION_0_56();
    sub_227B12A9C(v7, v8);
    v9 = OUTLINED_FUNCTION_23_6();
    OUTLINED_FUNCTION_57_0();
    sub_227D49D98();

    swift_willThrow();
    v0[31] = v9;
  }

  OUTLINED_FUNCTION_141_5();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_227D2C530()
{
  OUTLINED_FUNCTION_20();
  v1 = *(v0 + 232);
  v2 = *(v0 + 216);
  v3 = *(v0 + 176);
  (*(v0 + 224))(*(v0 + 152), *(v0 + 160));
  *(v0 + 240) = v3;
  if (v3)
  {
    v4 = sub_227D2CAF0;
    v5 = 0;
  }

  else
  {
    v6 = *(v0 + 216);
    v7 = *(v0 + 160);

    OUTLINED_FUNCTION_45();
    v8 += 584;
    *(v0 + 256) = *v8;
    *(v0 + 264) = v8 & 0xFFFFFFFFFFFFLL | 0x736D000000000000;
    v4 = sub_227D2C6B0;
    v5 = v6;
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

uint64_t sub_227D2C5F4()
{
  OUTLINED_FUNCTION_51_0();
  v1 = v0[20];
  v2 = v0[18];

  v3 = v0[31];
  v4 = v0[16];
  v5 = v0[13];
  OUTLINED_FUNCTION_28_15(v0[12]);
  v6(v5);

  OUTLINED_FUNCTION_18();

  return v7();
}

uint64_t sub_227D2C6B0()
{
  OUTLINED_FUNCTION_6();
  v1 = *(v0 + 264);
  v2 = *(v0 + 216);
  *(v0 + 272) = (*(v0 + 256))();
  v3 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_227D2C714()
{
  if (*(v0[34] + 16))
  {
    v1 = v0[34];
    v2 = sub_227D2CBAC(v0[13], &qword_27D7E83F8, &unk_227D61E50, &qword_27D7E9FF8, &qword_27D7EA020);
    if (v3)
    {
      v4 = *(*(v0[34] + 56) + 8 * v2);
      sub_227D4CE58();
    }
  }

  v5 = v0[27];
  v6 = v0[16];
  v8 = v0[12];
  v7 = v0[13];
  v9 = v0[11];
  v10 = v0[7];
  v11 = v0[4];

  (*(v8 + 8))(v7, v9);
  v12 = sub_227D4A958();
  OUTLINED_FUNCTION_57_1(v11, v13, v14, v12);
  v15 = OUTLINED_FUNCTION_141();
  __swift_instantiateConcreteTypeFromMangledNameV2(v15, v16);
  OUTLINED_FUNCTION_14_4();
  OUTLINED_FUNCTION_20_6();
  sub_227B69F68(v17, v18, v19);
  OUTLINED_FUNCTION_13_4();
  OUTLINED_FUNCTION_20_6();
  sub_227B69F68(v20, v21, v22);
  sub_227D4A948();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v24 = v0[16];
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v62 = *(v24 + 16);
    OUTLINED_FUNCTION_51_10();
    sub_227D2CC5C();
    v24 = v63;
  }

  OUTLINED_FUNCTION_23_12();
  if (v25)
  {
    OUTLINED_FUNCTION_51_10();
    sub_227D2CC5C();
    v24 = v64;
  }

  v27 = v0[6];
  v26 = v0[7];
  v28 = v0[5];
  *(v24 + 16) = v6;
  OUTLINED_FUNCTION_12_17(v27);
  v31(v30 + *(v29 + 40) * v11);
  v32 = v0[30];
  v33 = v0[14];
  v34 = v0[15] + 1;
  v0[15] = v34;
  v0[16] = v24;
  v35 = v0[13];
  if (v34 == v33)
  {
    v36 = v0[10];
    v37 = v0[7];
    v38 = v0[4];
    v39 = v0[13];

    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_135_0();

    __asm { BRAA            X2, X16 }
  }

  v42 = v0[11];
  v43 = v0[12];
  v44 = v0[10];
  v45 = v0[2];
  OUTLINED_FUNCTION_1_38(v34);
  v46(v35);
  sub_227D4A808();
  if (v32)
  {
    v53 = v0[16];
    v54 = v0[13];
    OUTLINED_FUNCTION_28_15(v0[12]);
    v55(v54);

    OUTLINED_FUNCTION_19_0();
    OUTLINED_FUNCTION_135_0();

    __asm { BRAA            X1, X16 }
  }

  v47 = v0[10];
  v0[17] = sub_227D4A6A8();
  v0[18] = v48;
  OUTLINED_FUNCTION_42_10();
  v49 = v0[13];
  v50 = OUTLINED_FUNCTION_91();
  v51(v50);
  v0[19] = sub_227D4A7F8();
  v0[20] = v52;
  v58 = swift_task_alloc();
  v0[21] = v58;
  *v58 = v0;
  v58[1] = sub_227D2C22C;
  v59 = v0[3];
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_135_0();

  return sub_227CACB7C();
}

uint64_t sub_227D2CAF0()
{
  OUTLINED_FUNCTION_51_0();
  v1 = v0[27];
  v2 = v0[20];

  v3 = v0[30];
  v4 = v0[16];
  v5 = v0[13];
  OUTLINED_FUNCTION_28_15(v0[12]);
  v6(v5);

  OUTLINED_FUNCTION_18();

  return v7();
}

unint64_t sub_227D2CBAC(uint64_t a1, uint64_t *a2, uint64_t *a3, unint64_t *a4, unint64_t *a5)
{
  v10 = *(v5 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  sub_227B69F68(a4, a2, a3);
  sub_227D4CE98();
  v11 = OUTLINED_FUNCTION_78_0();
  return sub_227D2D0B4(v11, v12, a2, a3, a5);
}

void sub_227D2CC5C()
{
  OUTLINED_FUNCTION_189_0();
  if (v7)
  {
    v8 = *(v0 + 24);
    v9 = v8 >> 1;
    if ((v8 >> 1) < v4)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= v4)
      {
        v9 = v4;
      }
    }
  }

  else
  {
    v9 = v4;
  }

  v10 = *(v0 + 16);
  v11 = sub_227CFBA84(v10, v9, v5, v6);
  v12 = OUTLINED_FUNCTION_87_1();
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(v12, v13) - 8);
  if (v3)
  {
    v15 = (*(v14 + 80) + 32) & ~*(v14 + 80);
    sub_227D2CF4C(v0 + v15, v10, v11 + v15, v2, v1);
    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

size_t sub_227D2CD64(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  v9 = sub_227D2CE50(v8, v7);
  v10 = *(sub_227D4A0E8() - 8);
  if (v5)
  {
    v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    sub_227CFBC60(a4 + v11, v8, v9 + v11);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v9;
}

size_t sub_227D2CE50(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9FC8, &qword_227D633E0);
  v4 = *(sub_227D4A0E8() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if (result - v6 != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_227D2CF4C(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t *a4, uint64_t *a5)
{
  if (a3 < a1 || (v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5), result = OUTLINED_FUNCTION_62_0(v10), a1 + *(v12 + 72) * a2 <= a3))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    OUTLINED_FUNCTION_87_1();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {
    OUTLINED_FUNCTION_87_1();

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_227D2D030()
{
  v1 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6938, &qword_227D4E760) - 8) + 80);
  v2 = *(v0 + 16);
  swift_arrayDestroy();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

unint64_t sub_227D2D0B4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unint64_t *a5)
{
  v19 = a4;
  v20 = a5;
  v16 = a1;
  v18 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v16 - v10;
  v21 = v5 + 64;
  v17 = v5;
  v12 = ~(-1 << *(v5 + 32));
  for (i = a2 & v12; ((1 << i) & *(v21 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v12)
  {
    (*(v8 + 16))(v11, *(v17 + 48) + *(v8 + 72) * i, v7);
    sub_227B69F68(v20, v18, v19);
    v14 = sub_227D4CF38();
    (*(v8 + 8))(v11, v7);
    if (v14)
    {
      break;
    }
  }

  return i;
}

void sub_227D2D260()
{
  v1 = *v0;
  sub_227D2D2A0();
  *v0 = v2;
}

void sub_227D2D2A0()
{
  OUTLINED_FUNCTION_189_0();
  if (v7)
  {
    v8 = *(v0 + 24);
    v9 = v8 >> 1;
    if ((v8 >> 1) < v4)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
LABEL_25:
        __break(1u);
        return;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= v4)
      {
        v9 = v4;
      }
    }
  }

  else
  {
    v9 = v4;
  }

  v10 = *(v0 + 16);
  if (v9 <= v10)
  {
    v11 = *(v0 + 16);
  }

  else
  {
    v11 = v9;
  }

  if (!v11)
  {
    v19 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  v12 = OUTLINED_FUNCTION_87_1();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(v12, v13);
  OUTLINED_FUNCTION_10_0(v14);
  v16 = *(v15 + 72);
  v18 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v19 = swift_allocObject();
  v20 = _swift_stdlib_malloc_size(v19);
  if (!v16)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v20 - v18 == 0x8000000000000000 && v16 == -1)
  {
    goto LABEL_24;
  }

  v19[2] = v10;
  v19[3] = 2 * ((v20 - v18) / v16);
LABEL_19:
  v22 = OUTLINED_FUNCTION_87_1();
  v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(v22, v23) - 8);
  if (v3)
  {
    v25 = (*(v24 + 80) + 32) & ~*(v24 + 80);
    sub_227D2CF4C(v0 + v25, v10, v19 + v25, v2, v1);
    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

uint64_t sub_227D2D450(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8288, &unk_227D58A00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_227D2D4C0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_62_0(v6);
  (*(v7 + 32))(a2, a1);
  return a2;
}

uint64_t OUTLINED_FUNCTION_41_10()
{
  v3 = v2[7];
  v4 = v2[19];
  v6 = v2[10];
  v5 = v2[11];
  v8 = v2[8];
  v7 = v2[9];
  v9 = *(v0 + 56) + *(v7 + 72) * v1;
  v10 = *(v7 + 16);
  return v6;
}

unint64_t OUTLINED_FUNCTION_51_12()
{
  *(v0 + 16) = v1;
  v4 = *(v3 + 32);
  return v0 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v2;
}

uint64_t OUTLINED_FUNCTION_55_12()
{
  result = *v4;
  v6 = *(v3 + 40);
  *(v1 + 16) = v0;
  v7 = v1 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_56_8(unint64_t *a1)
{

  return sub_227B12A9C(a1, v1);
}

void OUTLINED_FUNCTION_60_14()
{
  v6 = *(v0 + 248);
  *(v3 + 16) = v2;
  v7 = v3 + 16 * v1;
  *(v7 + 32) = v4;
  *(v7 + 40) = v5;
}

uint64_t OUTLINED_FUNCTION_74_8()
{
  v2 = v0[28];
  v1 = v0[29];
  v3 = v0[27];
  result = v0[24];
  v5 = v0[22];
  v6 = *(v0[23] + 8);
  return result;
}

void OUTLINED_FUNCTION_85_10()
{
  v2 = v1[21];
  v3 = v1[15];
  ++v1[16];
  v1[17] = v0;
  v4 = v1[14];
}

uint64_t OUTLINED_FUNCTION_86_9()
{
  result = *(v0 + 296);
  v2 = *(v0 + 240);
  return result;
}

void OUTLINED_FUNCTION_87_9()
{
  v1 = v0[31];
  v2 = v0[28];
  v3 = v0[7];
}

uint64_t OUTLINED_FUNCTION_90_6(uint64_t result)
{
  *(result + 8) = v1;
  v3 = *(v2 + 32);
  return result;
}

uint64_t OUTLINED_FUNCTION_92_5()
{
  result = v0[15];
  v2 = v0[12];
  v3 = *(v0[13] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_97_6()
{
  v4 = *(v2 + 16);
  v5 = v0 + *(v1 + 28);
  return v3;
}

uint64_t OUTLINED_FUNCTION_100_7()
{
  result = v0[11];
  v2 = v0[9];
  v3 = *(v0[10] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_102_6(uint64_t a1)
{
  v4 = *(v2 + 152);
  *(v2 + 208) = *(*(v1 + 56) + 8 * a1);
}

uint64_t OUTLINED_FUNCTION_108_8()
{
  v2 = *(v0 + 64) + 16;

  return sub_227B11EE8(v2, v0 + 16);
}

uint64_t OUTLINED_FUNCTION_110_6()
{

  return sub_227D49E08();
}

uint64_t OUTLINED_FUNCTION_115_6()
{
  v1 = v0[30];
  v2 = v0[27];
  v3 = v0[28];
  result = v0[26];
  v5 = v0[22];
  v6 = v0[23];
  return result;
}

uint64_t OUTLINED_FUNCTION_123_2(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = *(v3 + 32);
  return v2;
}

void OUTLINED_FUNCTION_124_5()
{
  v3 = *(v2 + 136);
  *(v0 + 144) = *(v2 + 144) + 1;
  *(v0 + 152) = v1;
}

uint64_t OUTLINED_FUNCTION_131_6()
{
  v2 = v0[27];
  v3 = v0[28];
  v4 = v0[18];
  v6 = v0[13];
  v5 = v0[14];
  v7 = v0[12];
}

char *OUTLINED_FUNCTION_132_7()
{

  return sub_227B3CA88(0, v0, 0);
}

uint64_t OUTLINED_FUNCTION_135_8()
{
  v2 = v0[16];
  v3 = v0[14];
  v5 = v0[10];
  v4 = v0[11];
  v7 = v0[6];
  v6 = v0[7];
}

uint64_t OUTLINED_FUNCTION_137_7(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, Swift::OpaquePointer from)
{
  v20 = v17[13];
  v19 = v17[14];
  v21 = v17[12];

  return Locale.getClosestLocale(from:)(from).value._countAndFlagsBits;
}

uint64_t OUTLINED_FUNCTION_139_5()
{
  __swift_storeEnumTagSinglePayload(v0, 0, 1, v1);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t sub_227D2D958()
{
  v1 = *(v0 + 288);
  v2 = *(v0 + 296);
  v3 = OUTLINED_FUNCTION_58();
  sub_227B3D9FC(v3, v4);
  return OUTLINED_FUNCTION_58();
}

uint64_t sub_227D2D984()
{
  v1 = v0[38];
  v2 = v0[39];
  v3 = v0[40];
  sub_227D2D9CC(v1);
  return v1;
}

uint64_t sub_227D2D9CC(uint64_t result)
{
  if (result != 1)
  {
    sub_227D4CE58();
    sub_227D4CE58();

    return sub_227D4CE58();
  }

  return result;
}

uint64_t sub_227D2DA3C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8E30, &qword_227D66BC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_227D2DAAC()
{
  result = *(v0 + 168);
  v2 = *(v0 + 176);
  return result;
}

uint64_t sub_227D2DAB8()
{
  result = *(v0 + 184);
  v2 = *(v0 + 192);
  return result;
}

uint64_t sub_227D2DAC4()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 208);
  sub_227D4CE58();
  return OUTLINED_FUNCTION_58();
}

uint64_t sub_227D2DAF0()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 224);
  sub_227D4CE58();
  return OUTLINED_FUNCTION_58();
}

uint64_t sub_227D2DB1C()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 240);
  sub_227D4CE58();
  return OUTLINED_FUNCTION_58();
}

void sub_227D2DB50()
{
  OUTLINED_FUNCTION_351();
  v2 = v1;
  v3 = v0;
  v91 = v4;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v92 = v11;
  v13 = v12;
  v89 = sub_227D49F28();
  v14 = OUTLINED_FUNCTION_9(v89);
  v88 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_3();
  v90 = v19 - v18;
  v86 = sub_227D49918();
  v20 = OUTLINED_FUNCTION_9(v86);
  v85 = v21;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_3();
  v87 = v25 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67F0, &unk_227D5BBE0);
  OUTLINED_FUNCTION_5(v26);
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v29);
  v99 = v72 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6CD8, &qword_227D5C1C0);
  OUTLINED_FUNCTION_5(v31);
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v34);
  v93 = v72 - v35;
  v36 = *(v3 + 40);
  if (v36 == 1 && (*(v3 + 176) & 1) != 0)
  {
    v94 = 0;
    v95 = 0xE000000000000000;
    sub_227D4D668();
    v38 = *v3;
    v37 = *(v3 + 8);
    sub_227D4CE58();

    v94 = v38;
    v95 = v37;
    MEMORY[0x22AAA5DA0](0xD000000000000020, 0x8000000227D791C0);
    v39 = v94;
    v40 = v95;
    v94 = 0xD000000000000039;
    v95 = 0x8000000227D79180;
    MEMORY[0x22AAA5DA0](v39, v40);

    v41 = v94;
    v42 = v95;
    v43 = sub_227D49D88();
    sub_227D2E5D0();
    OUTLINED_FUNCTION_10_6();
    swift_allocError();
    *v44 = v41;
    v44[1] = v42;
    (*(*(v43 - 8) + 104))(v44, *MEMORY[0x277D0CE48], v43);
    swift_willThrow();
  }

  else
  {
    if (v6)
    {
      v83 = v6;
    }

    else
    {
      v8 = *v3;
      v83 = *(v3 + 8);
      sub_227D4CE58();
    }

    v45 = *(v3 + 16);
    v82 = v36;
    if (v45)
    {
      v46 = *(v3 + 8);
      v81 = *v3;
      v80 = v46;
      sub_227D4CE58();
    }

    else
    {
      v81 = 0;
      v80 = 0;
    }

    sub_227B11EE8(v10, &v94);
    v47 = *(v3 + 32);
    v79 = *(v3 + 24);
    v48 = *(v3 + 208);
    v77 = *(v3 + 200);
    v49 = *(v3 + 160);
    v76 = v48;
    sub_227D4CE58();
    sub_227D4CE58();
    v78 = v47;
    sub_227D4CE58();
    v50 = v49;
    if (!v49)
    {
      v50 = sub_227D4CE28();
    }

    v75 = v50;
    if (*(v3 + 224))
    {
      v51 = *(v3 + 216);
      sub_227D4CE58();
      sub_227D4CE58();
      sub_227D49168();
    }

    else
    {
      v52 = sub_227D49188();
      __swift_storeEnumTagSinglePayload(v93, 1, 1, v52);
      sub_227D4CE58();
    }

    v53 = *(v3 + 56);
    if (v53)
    {
      v54 = *(v3 + 48);
      memcpy(v98, (v3 + 64), sizeof(v98));
      v96 = v54;
      v97 = v53;
      sub_227D2E2EC(v99);
    }

    else
    {
      v55 = sub_227D4AA38();
      __swift_storeEnumTagSinglePayload(v99, 1, 1, v55);
    }

    v62 = *(v3 + 192) == 1;
    v84 = v2;
    if (v62)
    {
      if (*(v3 + 176))
      {
        v74 = *(v3 + 168);
        v73 = 1;
      }

      else
      {
        v74 = sub_227D49988();
        v73 = 0;
      }
    }

    else
    {
      v73 = 0;
      v74 = *(v3 + 184);
    }

    v56 = *(v3 + 240);
    v57 = MEMORY[0x277D0CB40];
    v72[2] = v13;
    v72[1] = v8;
    if (v56)
    {
      v58 = *(v3 + 232);
      v59 = sub_227D4D008();
      v61 = v60;
      v62 = v59 == 1668184435 && v60 == 0xE400000000000000;
      if (v62 || (v63 = v59, (OUTLINED_FUNCTION_104_9() & 1) != 0) || (v63 == 0x6E6F7268636E7973 ? (v64 = v61 == 0xEB0000000073756FLL) : (v64 = 0), v64 || (OUTLINED_FUNCTION_104_9() & 1) != 0))
      {

        v57 = MEMORY[0x277D0CB38];
      }

      else
      {
        v69 = v63 == 0x636E797361 && v61 == 0xE500000000000000;
        if (v69 || (OUTLINED_FUNCTION_104_9() & 1) != 0 || (v63 == 0x6F7268636E797361 ? (v70 = v61 == 0xEC00000073756F6ELL) : (v70 = 0), v70))
        {

          v57 = MEMORY[0x277D0CB48];
        }

        else
        {
          v71 = OUTLINED_FUNCTION_104_9();

          v57 = MEMORY[0x277D0CB48];
          if ((v71 & 1) == 0)
          {
            v57 = MEMORY[0x277D0CB40];
          }
        }
      }
    }

    (*(v85 + 104))(v87, *v57, v86);
    if ((*(v3 + 17) == 2) | *(v3 + 17) & 1)
    {
      v65 = MEMORY[0x277D0CEE8];
    }

    else
    {
      v65 = MEMORY[0x277D0CEF0];
    }

    (*(v88 + 104))(v90, *v65, v89);
    v66 = *(v3 + 248);
    v67 = *(v3 + 168);
    v68 = *(v3 + 176);
    sub_227D4CE58();
    sub_227D4CE58();
    sub_227D4CE58();
    sub_227D4CE58();
    sub_227D49928();
  }

  OUTLINED_FUNCTION_100_8();
  OUTLINED_FUNCTION_352();
}

uint64_t sub_227D2E2EC@<X0>(uint64_t a1@<X8>)
{
  v4 = sub_227D4AA28();
  v5 = OUTLINED_FUNCTION_5(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6800, &qword_227D64440);
  OUTLINED_FUNCTION_5(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v14);
  v16 = v42 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6830, &unk_227D5E270);
  v18 = OUTLINED_FUNCTION_0_59(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v18);
  v25 = v42 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = v42 - v26;
  v28 = *v1;
  v29 = v1[1];
  sub_227D4CE58();
  sub_227D4A768();
  __swift_storeEnumTagSinglePayload(v16, 0, 1, v2);
  (*(v20 + 32))(v27, v16, v2);
  (*(v20 + 16))(v25, v27, v2);
  v30 = v1[2];
  v31 = v1[3];
  sub_227D4A9F8();
  v32 = v1[4];
  v33 = v1[5];
  v42[5] = v1[6];
  v42[6] = v32;
  v42[3] = v10;
  v34 = v1[7];
  v42[4] = v1[8];
  v35 = a1;
  v37 = v1[9];
  v36 = v1[10];
  v38 = v1[11];
  v42[1] = v1[12];
  v42[2] = v36;
  v39 = v1[13];
  sub_227D4CE58();
  sub_227D4CE58();
  sub_227D4CE58();
  sub_227D4CE58();
  sub_227D4CE58();
  sub_227D4A9C8();
  (*(v20 + 8))(v27, v2);
  v40 = sub_227D4AA38();
  return __swift_storeEnumTagSinglePayload(v35, 0, 1, v40);
}

unint64_t sub_227D2E5D0()
{
  result = qword_27D7EA4B0;
  if (!qword_27D7EA4B0)
  {
    sub_227D49D88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7EA4B0);
  }

  return result;
}

uint64_t sub_227D2E628(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD00000000000001BLL && 0x8000000227D791F0 == a2;
  if (v3 || (OUTLINED_FUNCTION_5_1() & 1) != 0)
  {

    return 0;
  }

  else
  {
    OUTLINED_FUNCTION_119_9();
    v7 = v3 && a2 == v6;
    if (v7 || (OUTLINED_FUNCTION_5_1() & 1) != 0)
    {

      return 1;
    }

    else
    {
      OUTLINED_FUNCTION_120_6();
      v9 = v3 && a2 == v8;
      if (v9 || (OUTLINED_FUNCTION_27_16() & 1) != 0)
      {

        return 2;
      }

      else
      {
        OUTLINED_FUNCTION_139_6();
        v10 = v3 && a2 == 0xE500000000000000;
        if (v10 || (OUTLINED_FUNCTION_5_1() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v11 = a1 == 0xD000000000000011 && 0x8000000227D75AA0 == a2;
          if (v11 || (OUTLINED_FUNCTION_5_1() & 1) != 0)
          {

            return 4;
          }

          else
          {
            OUTLINED_FUNCTION_117_6();
            v12 = v3 && a2 == 0xE700000000000000;
            if (v12 || (OUTLINED_FUNCTION_5_1() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v13 = a1 == 0xD000000000000011 && 0x8000000227D774C0 == a2;
              if (v13 || (OUTLINED_FUNCTION_5_1() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v14 = a1 == 0x6579616C506E696DLL && a2 == 0xEA00000000007372;
                if (v14 || (OUTLINED_FUNCTION_5_1() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v15 = a1 == 0x6579616C5078616DLL && a2 == 0xEA00000000007372;
                  if (v15 || (OUTLINED_FUNCTION_5_1() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v17 = a1 == OUTLINED_FUNCTION_7_2() && a2 == v16;
                    if (v17 || (OUTLINED_FUNCTION_5_1() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v19 = a1 == OUTLINED_FUNCTION_138_3() && a2 == v18;
                      if (v19 || (OUTLINED_FUNCTION_5_1() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v20 = a1 == 0x6C79745379616C70 && a2 == 0xE900000000000065;
                        if (v20 || (OUTLINED_FUNCTION_5_1() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          OUTLINED_FUNCTION_121_8();
                          if (v3 && a2 == 0xEA00000000006465)
                          {

                            return 12;
                          }

                          else
                          {
                            OUTLINED_FUNCTION_27_16();
                            OUTLINED_FUNCTION_265_1();
                            if (a1)
                            {
                              return 12;
                            }

                            else
                            {
                              return 13;
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_227D2E920()
{
  result = OUTLINED_FUNCTION_151_3();
  switch(v1)
  {
    case 1:
      return result;
    case 2:
      result = 0x7361656C65527369;
      break;
    case 3:
      result = OUTLINED_FUNCTION_90_7();
      break;
    case 4:
      result = 0xD000000000000011;
      break;
    case 5:
      result = OUTLINED_FUNCTION_76_9();
      break;
    case 6:
      result = 0xD000000000000011;
      break;
    case 7:
      v2 = 1349413229;
      goto LABEL_16;
    case 8:
      v2 = 1350066541;
LABEL_16:
      result = v2 | 0x6579616C00000000;
      break;
    case 9:
      result = OUTLINED_FUNCTION_7_2();
      break;
    case 10:
      result = OUTLINED_FUNCTION_138_3();
      break;
    case 11:
      result = 0x6C79745379616C70;
      break;
    case 12:
      result = 0x7669686372417369;
      break;
    default:
      result = 0xD00000000000001BLL;
      break;
  }

  return result;
}

uint64_t sub_227D2EA68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_227D2E628(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_227D2EA98()
{
  sub_227D2EE34();
  v0 = OUTLINED_FUNCTION_10_6();

  return MEMORY[0x2821FE718](v0, v1);
}

uint64_t sub_227D2EAD0()
{
  sub_227D2EE34();
  v0 = OUTLINED_FUNCTION_10_6();

  return MEMORY[0x2821FE720](v0, v1);
}

void sub_227D2EB08()
{
  OUTLINED_FUNCTION_351();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA4B8, &unk_227D66BC8);
  OUTLINED_FUNCTION_0_59(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_104();
  OUTLINED_FUNCTION_23_13();
  sub_227D2EE34();
  OUTLINED_FUNCTION_39_11();
  OUTLINED_FUNCTION_69_10();
  sub_227D4DC08();
  v6 = *v0;
  v7 = v0[1];
  v28[0] = 0;
  OUTLINED_FUNCTION_40_11();
  sub_227D4D9C8();
  if (!v1)
  {
    v8 = *(v0 + 16);
    OUTLINED_FUNCTION_35_10(1);
    OUTLINED_FUNCTION_40_11();
    sub_227D4D9D8();
    v9 = *(v0 + 17);
    OUTLINED_FUNCTION_35_10(2);
    OUTLINED_FUNCTION_40_11();
    sub_227D4D988();
    v10 = v0[3];
    v11 = v0[4];
    v28[0] = 3;
    OUTLINED_FUNCTION_40_11();
    sub_227D4D9C8();
    v12 = *(v0 + 40);
    OUTLINED_FUNCTION_35_10(4);
    OUTLINED_FUNCTION_40_11();
    sub_227D4D9D8();
    memcpy(v29, v0 + 6, 0x70uLL);
    memcpy(v28, v0 + 6, sizeof(v28));
    sub_227D2DA3C(v29, v27);
    sub_227D2EE88();
    OUTLINED_FUNCTION_40_11();
    sub_227D4D9A8();
    memcpy(v27, v28, sizeof(v27));
    sub_227B2746C(v27, &qword_27D7E8E30, &qword_227D66BC0);
    v26 = v0[20];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7940, &qword_227D54700);
    sub_227BA4C90(&qword_27D7E7958);
    OUTLINED_FUNCTION_40_11();
    sub_227D4D9A8();
    v13 = v0[21];
    v14 = *(v0 + 176);
    OUTLINED_FUNCTION_18_18(7);
    sub_227D4D998();
    v15 = v0[23];
    v16 = *(v0 + 192);
    OUTLINED_FUNCTION_18_18(8);
    sub_227D4D998();
    v17 = v0[25];
    v18 = v0[26];
    OUTLINED_FUNCTION_18_18(9);
    sub_227D4D978();
    v19 = v0[27];
    v20 = v0[28];
    OUTLINED_FUNCTION_18_18(10);
    sub_227D4D978();
    v21 = v0[29];
    v22 = v0[30];
    OUTLINED_FUNCTION_18_18(11);
    sub_227D4D978();
    v23 = *(v0 + 248);
    OUTLINED_FUNCTION_40_11();
    sub_227D4D988();
  }

  v24 = OUTLINED_FUNCTION_30_14();
  v25(v24);
  OUTLINED_FUNCTION_100_8();
  OUTLINED_FUNCTION_352();
}

unint64_t sub_227D2EE34()
{
  result = qword_27D8029B0;
  if (!qword_27D8029B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8029B0);
  }

  return result;
}

unint64_t sub_227D2EE88()
{
  result = qword_27D7EA4C0;
  if (!qword_27D7EA4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7EA4C0);
  }

  return result;
}

void sub_227D2EEDC()
{
  OUTLINED_FUNCTION_351();
  v2 = v1;
  v4 = v3;
  v73[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA4C8, &qword_227D66BD8);
  OUTLINED_FUNCTION_9(v73[0]);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_68_3();
  v8 = v2[3];
  v9 = v2[4];
  v10 = OUTLINED_FUNCTION_236();
  OUTLINED_FUNCTION_256(v10, v11);
  sub_227D2EE34();
  OUTLINED_FUNCTION_131_7();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_0(v2);
  }

  else
  {
    LOBYTE(v44[0]) = 0;
    OUTLINED_FUNCTION_48_12();
    v12 = sub_227D4D8F8();
    v42 = v13;
    OUTLINED_FUNCTION_9_16(1);
    v36 = sub_227D4D908();
    OUTLINED_FUNCTION_9_16(2);
    v35 = sub_227D4D8B8();
    OUTLINED_FUNCTION_9_16(3);
    v34 = sub_227D4D8F8();
    v41 = v14;
    OUTLINED_FUNCTION_9_16(4);
    v33 = sub_227D4D908();
    v66 = 5;
    sub_227D2F580();
    OUTLINED_FUNCTION_48_12();
    sub_227D4D8D8();
    memcpy(&v72[7], v67, 0x70uLL);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7940, &qword_227D54700);
    LOBYTE(v43[0]) = 6;
    sub_227BA4C90(&qword_27D7E7948);
    OUTLINED_FUNCTION_48_12();
    sub_227D4D8D8();
    v40 = v44[0];
    OUTLINED_FUNCTION_9_16(7);
    v31 = sub_227D4D8C8();
    v32 = v4;
    v71 = v15 & 1;
    OUTLINED_FUNCTION_9_16(8);
    v16 = sub_227D4D8C8();
    v30 = v12;
    v69 = v17 & 1;
    OUTLINED_FUNCTION_9_16(9);
    v18 = sub_227D4D8A8();
    v39 = v19;
    v20 = v18;
    OUTLINED_FUNCTION_48_12();
    v21 = sub_227D4D8A8();
    v38 = v22;
    v23 = v21;
    LOBYTE(v44[0]) = 11;
    OUTLINED_FUNCTION_48_12();
    v29 = sub_227D4D8A8();
    v37 = v24;
    v65 = 12;
    OUTLINED_FUNCTION_48_12();
    v28 = sub_227D4D8B8();
    v25 = OUTLINED_FUNCTION_57_9();
    v26(v25);
    v43[0] = v30;
    v43[1] = v42;
    LOBYTE(v43[2]) = v36 & 1;
    BYTE1(v43[2]) = v35;
    v43[3] = v34;
    v43[4] = v41;
    LOBYTE(v43[5]) = v33 & 1;
    memcpy(&v43[5] + 1, v72, 0x77uLL);
    v43[20] = v40;
    v43[21] = v31;
    v27 = v71;
    LOBYTE(v43[22]) = v71;
    v43[23] = v16;
    v74 = v69;
    LOBYTE(v43[24]) = v69;
    v43[25] = v20;
    v43[26] = v39;
    v43[27] = v23;
    v43[28] = v38;
    v43[29] = v29;
    v43[30] = v37;
    LOBYTE(v43[31]) = v28;
    sub_227D2D920(v43, v44);
    __swift_destroy_boxed_opaque_existential_0(v2);
    v44[0] = v30;
    v44[1] = v42;
    v45 = v36 & 1;
    v46 = v35;
    v47 = v34;
    v48 = v41;
    v49 = v33 & 1;
    memcpy(v50, v72, sizeof(v50));
    v51 = v40;
    v52 = v31;
    v53 = v27;
    *v54 = *v70;
    *&v54[3] = *&v70[3];
    v55 = v16;
    v56 = v74;
    *v57 = *v68;
    *&v57[3] = *&v68[3];
    v58 = v20;
    v59 = v39;
    v60 = v23;
    v61 = v38;
    v62 = v29;
    v63 = v37;
    v64 = v28;
    sub_227D2F5D4(v44);
    memcpy(v32, v43, 0xF9uLL);
  }

  OUTLINED_FUNCTION_352();
}

unint64_t sub_227D2F580()
{
  result = qword_27D7EA4D0;
  if (!qword_27D7EA4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7EA4D0);
  }

  return result;
}

__n128 sub_227D2F604@<Q0>(void *__src@<X7>, uint64_t a2@<X0>, uint64_t a3@<X1>, char a4@<W2>, char a5@<W3>, uint64_t a6@<X4>, uint64_t a7@<X5>, char a8@<W6>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char a14, __int128 a15, __int128 a16, uint64_t a17, uint64_t a18, char a19)
{
  memcpy(&__srca[7], __src, 0x70uLL);
  *a9 = a2;
  *(a9 + 8) = a3;
  *(a9 + 16) = a4;
  *(a9 + 17) = a5;
  *(a9 + 24) = a6;
  *(a9 + 32) = a7;
  *(a9 + 40) = a8;
  memcpy((a9 + 41), __srca, 0x77uLL);
  *(a9 + 160) = a10;
  *(a9 + 168) = a11;
  *(a9 + 176) = a12 & 1;
  *(a9 + 184) = a13;
  *(a9 + 192) = a14 & 1;
  result = a16;
  *(a9 + 200) = a15;
  *(a9 + 216) = a16;
  *(a9 + 232) = a17;
  *(a9 + 240) = a18;
  *(a9 + 248) = a19;
  return result;
}

void sub_227D2F72C(void *a1@<X8>)
{
  sub_227D2EEDC();
  if (!v1)
  {
    memcpy(a1, v3, 0xF9uLL);
  }
}

uint64_t sub_227D2F7A0(uint64_t a1)
{
  if (!a1)
  {
    return MEMORY[0x277D84F90];
  }

  v4 = MEMORY[0x277D84F90];
  if (*(a1 + 16))
  {
    OUTLINED_FUNCTION_133_6();
    v4 = v7;
    do
    {
      OUTLINED_FUNCTION_132_8();
      if (v2 >= v3 >> 1)
      {
        sub_227B3CA88((v3 > 1), v1, 1);
        v4 = v7;
      }

      OUTLINED_FUNCTION_122_4();
    }

    while (!v5);
  }

  return v4;
}

uint64_t sub_227D2F844(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return MEMORY[0x277D84F90];
  }

  v5 = MEMORY[0x277D84F90];
  if (*(a2 + 16))
  {
    OUTLINED_FUNCTION_133_6();
    v5 = v8;
    do
    {
      OUTLINED_FUNCTION_132_8();
      if (v3 >= v4 >> 1)
      {
        sub_227B3CA88((v4 > 1), v2, 1);
        v5 = v8;
      }

      OUTLINED_FUNCTION_122_4();
    }

    while (!v6);
  }

  return v5;
}

uint64_t sub_227D2F8E8()
{
  OUTLINED_FUNCTION_43_11();
  v2 = v2 && v1 == 0xE200000000000000;
  if (v2 || (OUTLINED_FUNCTION_22_14() & 1) != 0)
  {

    return 0;
  }

  else
  {
    OUTLINED_FUNCTION_107_7();
    v4 = v2 && v0 == 0xE400000000000000;
    if (v4 || (OUTLINED_FUNCTION_5_1() & 1) != 0)
    {

      return 1;
    }

    else
    {
      OUTLINED_FUNCTION_8_20();
      if (v2 && v0 == v5)
      {

        return 2;
      }

      else
      {
        OUTLINED_FUNCTION_27_16();
        OUTLINED_FUNCTION_265_1();
        OUTLINED_FUNCTION_145_5();
        if (v2)
        {
          return v7 + 1;
        }

        else
        {
          return v7;
        }
      }
    }
  }
}

uint64_t sub_227D2F990(char a1)
{
  if (!a1)
  {
    return OUTLINED_FUNCTION_81_10();
  }

  if (a1 == 1)
  {
    return 1701869940;
  }

  return 0x7475626972747461;
}

uint64_t sub_227D2F9D8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_227D2F8E8();
  *a1 = result;
  return result;
}

uint64_t sub_227D2FA00()
{
  sub_227D3716C();
  v0 = OUTLINED_FUNCTION_10_6();

  return MEMORY[0x2821FE718](v0, v1);
}

uint64_t sub_227D2FA38()
{
  sub_227D3716C();
  v0 = OUTLINED_FUNCTION_10_6();

  return MEMORY[0x2821FE720](v0, v1);
}

void sub_227D2FA70()
{
  OUTLINED_FUNCTION_116_7();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA4D8, &qword_227D66BE0);
  OUTLINED_FUNCTION_9(v2);
  v4 = v3;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_103();
  OUTLINED_FUNCTION_192();
  sub_227D3716C();
  OUTLINED_FUNCTION_101_10();
  OUTLINED_FUNCTION_155();
  sub_227D4DC08();
  v8 = *v0;
  v9 = v0[1];
  OUTLINED_FUNCTION_140_3();
  OUTLINED_FUNCTION_5_0();
  sub_227D4D9C8();
  if (!v1)
  {
    v10 = v0[2];
    v11 = v0[3];
    OUTLINED_FUNCTION_227_0();
    OUTLINED_FUNCTION_5_0();
    sub_227D4D9C8();
    v15 = v0[4];
    OUTLINED_FUNCTION_125_4();
    sub_227D371C0();
    OUTLINED_FUNCTION_2_1();
    sub_227D4DA08();
  }

  v12 = *(v4 + 8);
  v13 = OUTLINED_FUNCTION_193();
  v14(v13);
  OUTLINED_FUNCTION_115_7();
}

void sub_227D2FBBC()
{
  OUTLINED_FUNCTION_351();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA4E8, &qword_227D66BE8);
  OUTLINED_FUNCTION_9(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_104();
  v9 = v2[4];
  OUTLINED_FUNCTION_256(v2, v2[3]);
  sub_227D3716C();
  OUTLINED_FUNCTION_39_11();
  OUTLINED_FUNCTION_69_10();
  sub_227D4DBF8();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_0(v2);
  }

  else
  {
    OUTLINED_FUNCTION_79_10();
    v10 = sub_227D4D8F8();
    v12 = v11;
    v18 = v10;
    OUTLINED_FUNCTION_54_12();
    v16 = sub_227D4D8F8();
    v17 = v13;
    sub_227D37214();
    OUTLINED_FUNCTION_114_7();
    sub_227D4D938();
    v14 = OUTLINED_FUNCTION_0_22();
    v15(v14);
    __swift_destroy_boxed_opaque_existential_0(v2);
    *v4 = v18;
    v4[1] = v12;
    v4[2] = v16;
    v4[3] = v17;
    v4[4] = v19;
  }

  OUTLINED_FUNCTION_352();
}

double sub_227D2FDA8()
{
  sub_227D2FBBC();
  if (!v0)
  {
    v9.n128_u64[0] = OUTLINED_FUNCTION_126_6(v1, v2, v3, v4, v5, v6, v7, v8, v11, v9, v12, v13).n128_u64[0];
  }

  return v9.n128_f64[0];
}

uint64_t sub_227D2FDFC()
{
  sub_227D37268();
  v0 = OUTLINED_FUNCTION_10_6();

  return MEMORY[0x2821FE718](v0, v1);
}

uint64_t sub_227D2FE34()
{
  sub_227D37268();
  v0 = OUTLINED_FUNCTION_10_6();

  return MEMORY[0x2821FE720](v0, v1);
}

void sub_227D2FE6C()
{
  OUTLINED_FUNCTION_116_7();
  OUTLINED_FUNCTION_21_9();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA4F8, &qword_227D66BF0);
  OUTLINED_FUNCTION_0_59(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_104();
  OUTLINED_FUNCTION_192();
  sub_227D37268();
  OUTLINED_FUNCTION_26_16();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA500, &qword_227D66BF8);
  sub_227D372BC();
  OUTLINED_FUNCTION_12_18();
  OUTLINED_FUNCTION_102_7();
  v4 = OUTLINED_FUNCTION_5_29();
  v5(v4);
  OUTLINED_FUNCTION_64_9();
  OUTLINED_FUNCTION_115_7();
}

void sub_227D2FF58()
{
  OUTLINED_FUNCTION_116_7();
  OUTLINED_FUNCTION_52_12();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA518, &qword_227D66C00);
  OUTLINED_FUNCTION_0_59(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_104();
  OUTLINED_FUNCTION_2_39();
  sub_227D37268();
  OUTLINED_FUNCTION_14_17();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0(v0);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA500, &qword_227D66BF8);
    sub_227D37394();
    OUTLINED_FUNCTION_6_21();
    v6 = OUTLINED_FUNCTION_4_30();
    v7(v6);
    OUTLINED_FUNCTION_94_8();
  }

  OUTLINED_FUNCTION_17_18();
  OUTLINED_FUNCTION_115_7();
}

uint64_t sub_227D30058()
{
  OUTLINED_FUNCTION_37();
  v3 = v1 == OUTLINED_FUNCTION_137_8() && v0 == v2;
  if (v3 || (OUTLINED_FUNCTION_5_1() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v5 = v1 == 0x6D65766569686361 && v0 == 0xEC00000073746E65;
    if (v5 || (OUTLINED_FUNCTION_5_1() & 1) != 0)
    {

      return 1;
    }

    else if (v1 == 1936748641 && v0 == 0xE400000000000000)
    {

      return 2;
    }

    else
    {
      OUTLINED_FUNCTION_5_1();
      OUTLINED_FUNCTION_265_1();
      OUTLINED_FUNCTION_145_5();
      if (v3)
      {
        return v7 + 1;
      }

      else
      {
        return v7;
      }
    }
  }
}

uint64_t sub_227D30124(char a1)
{
  if (!a1)
  {
    return OUTLINED_FUNCTION_137_8();
  }

  if (a1 == 1)
  {
    return 0x6D65766569686361;
  }

  return 1936748641;
}

void sub_227D3017C(void *a1@<X8>)
{
  sub_227D2FF58();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_227D301CC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_227D30058();
  *a1 = result;
  return result;
}

uint64_t sub_227D301F4()
{
  sub_227D3746C();
  v0 = OUTLINED_FUNCTION_10_6();

  return MEMORY[0x2821FE718](v0, v1);
}

uint64_t sub_227D3022C()
{
  sub_227D3746C();
  v0 = OUTLINED_FUNCTION_10_6();

  return MEMORY[0x2821FE720](v0, v1);
}

void sub_227D30264()
{
  OUTLINED_FUNCTION_351();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA530, &qword_227D66C08);
  OUTLINED_FUNCTION_9(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_103();
  v9 = v2[4];
  OUTLINED_FUNCTION_256(v2, v2[3]);
  sub_227D3746C();
  OUTLINED_FUNCTION_101_10();
  sub_227D4DC08();
  sub_227D374C0();
  OUTLINED_FUNCTION_5_0();
  sub_227D4D9A8();
  if (!v0)
  {
    OUTLINED_FUNCTION_118_5();
    OUTLINED_FUNCTION_5_0();
    sub_227D4D9A8();
    OUTLINED_FUNCTION_125_4();
    sub_227D37514();
    OUTLINED_FUNCTION_20_12();
    sub_227D4D9A8();
  }

  v10 = *(v5 + 8);
  v11 = OUTLINED_FUNCTION_193();
  v12(v11);
  OUTLINED_FUNCTION_78_12();
  OUTLINED_FUNCTION_352();
}

void sub_227D303E8()
{
  OUTLINED_FUNCTION_351();
  OUTLINED_FUNCTION_52_12();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA548, &qword_227D66C10);
  OUTLINED_FUNCTION_0_59(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_104();
  OUTLINED_FUNCTION_2_39();
  sub_227D3746C();
  OUTLINED_FUNCTION_14_17();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0(v0);
  }

  else
  {
    sub_227D37568();
    OUTLINED_FUNCTION_28_16();
    OUTLINED_FUNCTION_40_11();
    sub_227D4D8D8();
    OUTLINED_FUNCTION_118_5();
    OUTLINED_FUNCTION_28_16();
    OUTLINED_FUNCTION_40_11();
    sub_227D4D8D8();
    OUTLINED_FUNCTION_125_4();
    sub_227D375BC();
    OUTLINED_FUNCTION_28_16();
    sub_227D4D8D8();
    v6 = OUTLINED_FUNCTION_30_14();
    v7(v6);
    OUTLINED_FUNCTION_94_8();
  }

  OUTLINED_FUNCTION_100_8();
  OUTLINED_FUNCTION_352();
}

uint64_t sub_227D30590()
{
  OUTLINED_FUNCTION_43_11();
  v3 = v3 && v2 == 0xE200000000000000;
  if (v3 || (OUTLINED_FUNCTION_22_14() & 1) != 0)
  {

    return 0;
  }

  else
  {
    OUTLINED_FUNCTION_107_7();
    v5 = v3 && v0 == 0xE400000000000000;
    if (v5 || (OUTLINED_FUNCTION_5_1() & 1) != 0)
    {

      return 1;
    }

    else
    {
      OUTLINED_FUNCTION_8_20();
      v7 = v3 && v0 == v6;
      if (v7 || (OUTLINED_FUNCTION_27_16() & 1) != 0)
      {

        return 2;
      }

      else
      {
        OUTLINED_FUNCTION_109_8();
        v8 = v3 && v0 == 0xE400000000000000;
        if (v8 || (OUTLINED_FUNCTION_5_1() & 1) != 0)
        {

          return 3;
        }

        else if (v1 == OUTLINED_FUNCTION_13_20() && v0 == v9)
        {

          return 4;
        }

        else
        {
          OUTLINED_FUNCTION_5_1();
          OUTLINED_FUNCTION_265_1();
          if (v1)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

uint64_t sub_227D30698(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 1701869940;
      break;
    case 2:
      result = OUTLINED_FUNCTION_70_10();
      break;
    case 3:
      result = 1635018093;
      break;
    case 4:
      result = OUTLINED_FUNCTION_13_20();
      break;
    default:
      return result;
  }

  return result;
}

void sub_227D30704(void *a1@<X8>)
{
  sub_227D303E8();
  if (!v1)
  {
    *a1 = v3;
    a1[1] = v4;
    a1[2] = v5;
  }
}

void sub_227D30734()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_227D30264();
}

uint64_t sub_227D3075C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_227D30590();
  *a1 = result;
  return result;
}

uint64_t sub_227D30784()
{
  sub_227D37610();
  v0 = OUTLINED_FUNCTION_10_6();

  return MEMORY[0x2821FE718](v0, v1);
}

uint64_t sub_227D307BC()
{
  sub_227D37610();
  v0 = OUTLINED_FUNCTION_10_6();

  return MEMORY[0x2821FE720](v0, v1);
}

void sub_227D307F4()
{
  OUTLINED_FUNCTION_351();
  OUTLINED_FUNCTION_85_11();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA560, &qword_227D66C18);
  OUTLINED_FUNCTION_0_59(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_105_1();
  OUTLINED_FUNCTION_23_13();
  sub_227D37610();
  OUTLINED_FUNCTION_124_6();
  OUTLINED_FUNCTION_69_10();
  sub_227D4DC08();
  v6 = *v1;
  v7 = v1[1];
  v16[0] = 0;
  OUTLINED_FUNCTION_34_12();
  sub_227D4D9C8();
  if (!v0)
  {
    v8 = v1[2];
    v9 = v1[3];
    v16[0] = 1;
    OUTLINED_FUNCTION_34_12();
    sub_227D4D9C8();
    memcpy(v17, v1 + 4, 0xF9uLL);
    memcpy(v16, v1 + 4, sizeof(v16));
    OUTLINED_FUNCTION_147_4();
    sub_227D2D920(v17, v15);
    sub_227D37664();
    OUTLINED_FUNCTION_16_13();
    sub_227D4DA08();
    memcpy(v15, v16, 0xF9uLL);
    sub_227D2F5D4(v15);
    v12 = *(v1 + 18);
    sub_227D376B8();
    OUTLINED_FUNCTION_16_13();
    sub_227D4D9A8();
    v13 = *(v1 + 19);
    v14 = v1[40];
    sub_227D3770C();
    OUTLINED_FUNCTION_16_13();
    sub_227D4D9A8();
  }

  v10 = OUTLINED_FUNCTION_84_4();
  v11(v10);
  OUTLINED_FUNCTION_78_12();
  OUTLINED_FUNCTION_352();
}

void sub_227D309F4()
{
  OUTLINED_FUNCTION_351();
  v2 = v1;
  v4 = v3;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA580, &qword_227D66C20);
  OUTLINED_FUNCTION_9(v24);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v7);
  v8 = v2[4];
  OUTLINED_FUNCTION_256(v2, v2[3]);
  sub_227D37610();
  OUTLINED_FUNCTION_155();
  sub_227D4DBF8();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_0(v2);
  }

  else
  {
    v23 = v4;
    v9 = sub_227D4D8F8();
    v22 = v10;
    LOBYTE(v26) = 1;
    v11 = sub_227D4D8F8();
    v21 = v12;
    v20 = v11;
    OUTLINED_FUNCTION_147_4();
    sub_227D37760();
    OUTLINED_FUNCTION_108_9();
    sub_227D4D938();
    memcpy(v40, v39, sizeof(v40));
    LOBYTE(v25[0]) = 3;
    sub_227D377B4();
    OUTLINED_FUNCTION_108_9();
    sub_227D4D8D8();
    v13 = v26;
    v19 = v27;
    sub_227D37808();
    OUTLINED_FUNCTION_108_9();
    sub_227D4D8D8();
    v14 = OUTLINED_FUNCTION_58_11();
    v15(v14);
    v16 = v36;
    v17 = v37;
    v18 = v38;
    v25[0] = v9;
    v25[1] = v22;
    v25[2] = v20;
    v25[3] = v21;
    memcpy(&v25[4], v40, 0xF9uLL);
    v25[36] = v13;
    v25[37] = v19;
    v25[38] = v36;
    v25[39] = v37;
    v25[40] = v38;
    sub_227C53A88(v25, &v26);
    __swift_destroy_boxed_opaque_existential_0(v2);
    v26 = v9;
    v27 = v22;
    v28 = v20;
    v29 = v21;
    memcpy(v30, v40, sizeof(v30));
    v31 = v13;
    v32 = v19;
    v33 = v16;
    v34 = v17;
    v35 = v18;
    sub_227C53AE4(&v26);
    memcpy(v23, v25, 0x148uLL);
  }

  OUTLINED_FUNCTION_100_8();
  OUTLINED_FUNCTION_352();
}

void *sub_227D30DA4@<X0>(void *__src@<X4>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11)
{
  *a9 = a2;
  a9[1] = a3;
  a9[2] = a4;
  a9[3] = a5;
  result = memcpy(a9 + 4, __src, 0xF9uLL);
  a9[36] = a6;
  a9[37] = a7;
  a9[38] = a8;
  a9[39] = a10;
  a9[40] = a11;
  return result;
}

void sub_227D30E08(void *a1@<X8>)
{
  sub_227D309F4();
  if (!v1)
  {
    memcpy(a1, __src, 0x148uLL);
  }
}

uint64_t sub_227D30E74()
{
  sub_227D3785C();
  v0 = OUTLINED_FUNCTION_10_6();

  return MEMORY[0x2821FE718](v0, v1);
}

uint64_t sub_227D30EAC()
{
  sub_227D3785C();
  v0 = OUTLINED_FUNCTION_10_6();

  return MEMORY[0x2821FE720](v0, v1);
}

void sub_227D30EE4()
{
  OUTLINED_FUNCTION_116_7();
  OUTLINED_FUNCTION_21_9();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA5A0, &qword_227D66C28);
  OUTLINED_FUNCTION_0_59(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_104();
  OUTLINED_FUNCTION_192();
  sub_227D3785C();
  OUTLINED_FUNCTION_26_16();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA5A8, &qword_227D66C30);
  sub_227D378B0();
  OUTLINED_FUNCTION_12_18();
  OUTLINED_FUNCTION_102_7();
  v4 = OUTLINED_FUNCTION_5_29();
  v5(v4);
  OUTLINED_FUNCTION_64_9();
  OUTLINED_FUNCTION_115_7();
}

void sub_227D30FD0()
{
  OUTLINED_FUNCTION_116_7();
  OUTLINED_FUNCTION_52_12();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA5C0, &qword_227D66C38);
  OUTLINED_FUNCTION_0_59(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_104();
  OUTLINED_FUNCTION_2_39();
  sub_227D3785C();
  OUTLINED_FUNCTION_14_17();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0(v0);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA5A8, &qword_227D66C30);
    sub_227D37988();
    OUTLINED_FUNCTION_6_21();
    v6 = OUTLINED_FUNCTION_4_30();
    v7(v6);
    OUTLINED_FUNCTION_94_8();
  }

  OUTLINED_FUNCTION_17_18();
  OUTLINED_FUNCTION_115_7();
}

uint64_t sub_227D310D0()
{
  OUTLINED_FUNCTION_141_6();
  if (v2 == 0x6974697669746361 && v1 == 0xEA00000000007365)
  {

    v4 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_385_1();
    OUTLINED_FUNCTION_265_1();
    v4 = v0 ^ 1;
  }

  return v4 & 1;
}

void sub_227D3113C(void *a1@<X8>)
{
  sub_227D30FD0();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_227D311C4()
{
  sub_227D37A60();
  v0 = OUTLINED_FUNCTION_10_6();

  return MEMORY[0x2821FE718](v0, v1);
}

uint64_t sub_227D311FC()
{
  sub_227D37A60();
  v0 = OUTLINED_FUNCTION_10_6();

  return MEMORY[0x2821FE720](v0, v1);
}

void sub_227D31234()
{
  OUTLINED_FUNCTION_116_7();
  OUTLINED_FUNCTION_21_9();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA5D8, &qword_227D66C40);
  OUTLINED_FUNCTION_0_59(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_104();
  OUTLINED_FUNCTION_192();
  sub_227D37A60();
  OUTLINED_FUNCTION_26_16();
  sub_227D37AB4();
  OUTLINED_FUNCTION_65_11();
  OUTLINED_FUNCTION_102_7();
  v4 = OUTLINED_FUNCTION_5_29();
  v5(v4);
  OUTLINED_FUNCTION_64_9();
  OUTLINED_FUNCTION_115_7();
}

void sub_227D31314()
{
  OUTLINED_FUNCTION_116_7();
  OUTLINED_FUNCTION_52_12();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA5E8, &qword_227D66C48);
  OUTLINED_FUNCTION_0_59(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_104();
  OUTLINED_FUNCTION_2_39();
  sub_227D37A60();
  OUTLINED_FUNCTION_14_17();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0(v0);
  }

  else
  {
    sub_227D37B08();
    OUTLINED_FUNCTION_82_10();
    OUTLINED_FUNCTION_40_11();
    sub_227D4D938();
    v6 = OUTLINED_FUNCTION_4_30();
    v7(v6);
    OUTLINED_FUNCTION_94_8();
  }

  OUTLINED_FUNCTION_17_18();
  OUTLINED_FUNCTION_115_7();
}

uint64_t sub_227D31414()
{
  OUTLINED_FUNCTION_141_6();
  v2 = OUTLINED_FUNCTION_13_20();
  if (v4 == v2 && v0 == v3)
  {

    v6 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_385_1();
    OUTLINED_FUNCTION_265_1();
    v6 = v1 ^ 1;
  }

  return v6 & 1;
}

void sub_227D31464(void *a1@<X8>)
{
  sub_227D31314();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_227D314F8()
{
  sub_227D37B5C();
  v0 = OUTLINED_FUNCTION_10_6();

  return MEMORY[0x2821FE718](v0, v1);
}

uint64_t sub_227D31530()
{
  sub_227D37B5C();
  v0 = OUTLINED_FUNCTION_10_6();

  return MEMORY[0x2821FE720](v0, v1);
}

void sub_227D31568()
{
  OUTLINED_FUNCTION_116_7();
  OUTLINED_FUNCTION_21_9();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA5F8, &qword_227D66C50);
  OUTLINED_FUNCTION_0_59(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_104();
  OUTLINED_FUNCTION_192();
  sub_227D37B5C();
  OUTLINED_FUNCTION_26_16();
  sub_227D37BB0();
  OUTLINED_FUNCTION_65_11();
  OUTLINED_FUNCTION_102_7();
  v4 = OUTLINED_FUNCTION_5_29();
  v5(v4);
  OUTLINED_FUNCTION_64_9();
  OUTLINED_FUNCTION_115_7();
}

void sub_227D31648()
{
  OUTLINED_FUNCTION_116_7();
  OUTLINED_FUNCTION_52_12();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA608, &qword_227D66C58);
  OUTLINED_FUNCTION_0_59(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_104();
  OUTLINED_FUNCTION_2_39();
  sub_227D37B5C();
  OUTLINED_FUNCTION_14_17();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0(v0);
  }

  else
  {
    sub_227D37C04();
    OUTLINED_FUNCTION_82_10();
    OUTLINED_FUNCTION_40_11();
    sub_227D4D938();
    v6 = OUTLINED_FUNCTION_4_30();
    v7(v6);
    OUTLINED_FUNCTION_94_8();
  }

  OUTLINED_FUNCTION_17_18();
  OUTLINED_FUNCTION_115_7();
}

void sub_227D31748(void *a1@<X8>)
{
  sub_227D31648();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_227D31790()
{
  sub_227D37C58();
  v0 = OUTLINED_FUNCTION_10_6();

  return MEMORY[0x2821FE718](v0, v1);
}

uint64_t sub_227D317C8()
{
  sub_227D37C58();
  v0 = OUTLINED_FUNCTION_10_6();

  return MEMORY[0x2821FE720](v0, v1);
}

void sub_227D31800()
{
  OUTLINED_FUNCTION_116_7();
  OUTLINED_FUNCTION_21_9();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA618, &qword_227D66C60);
  OUTLINED_FUNCTION_0_59(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_104();
  OUTLINED_FUNCTION_192();
  sub_227D37C58();
  OUTLINED_FUNCTION_26_16();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA620, &qword_227D66C68);
  sub_227D37CAC();
  OUTLINED_FUNCTION_12_18();
  OUTLINED_FUNCTION_102_7();
  v4 = OUTLINED_FUNCTION_5_29();
  v5(v4);
  OUTLINED_FUNCTION_64_9();
  OUTLINED_FUNCTION_115_7();
}

void sub_227D318EC()
{
  OUTLINED_FUNCTION_116_7();
  OUTLINED_FUNCTION_52_12();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA638, &qword_227D66C70);
  OUTLINED_FUNCTION_0_59(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_104();
  OUTLINED_FUNCTION_2_39();
  sub_227D37C58();
  OUTLINED_FUNCTION_14_17();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0(v0);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA620, &qword_227D66C68);
    sub_227D37D84();
    OUTLINED_FUNCTION_6_21();
    v6 = OUTLINED_FUNCTION_4_30();
    v7(v6);
    OUTLINED_FUNCTION_94_8();
  }

  OUTLINED_FUNCTION_17_18();
  OUTLINED_FUNCTION_115_7();
}

void sub_227D319EC(void *a1@<X8>)
{
  sub_227D318EC();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_227D31A50()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 176);
  sub_227D4CE58();
  return OUTLINED_FUNCTION_58();
}

uint64_t sub_227D31A7C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_113_9();
  v5 = v5 && v4 == a2;
  if (v5 || (v6 = v3, (OUTLINED_FUNCTION_5_1() & 1) != 0))
  {

    return 0;
  }

  else
  {
    OUTLINED_FUNCTION_119_9();
    v8 = v5 && a2 == 0xE900000000000064;
    if (v8 || (OUTLINED_FUNCTION_5_1() & 1) != 0)
    {

      return 1;
    }

    else
    {
      OUTLINED_FUNCTION_121_8();
      v9 = v5 && a2 == 0xEA00000000006465;
      if (v9 || (OUTLINED_FUNCTION_27_16() & 1) != 0)
      {

        return 2;
      }

      else
      {
        OUTLINED_FUNCTION_120_6();
        v10 = v5 && a2 == 0xEA00000000006465;
        if (v10 || (OUTLINED_FUNCTION_27_16() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v12 = v6 == OUTLINED_FUNCTION_136_6() && a2 == v11;
          if (v12 || (OUTLINED_FUNCTION_5_1() & 1) != 0)
          {

            return 4;
          }

          else
          {
            OUTLINED_FUNCTION_139_6();
            v13 = v5 && a2 == 0xE500000000000000;
            if (v13 || (OUTLINED_FUNCTION_5_1() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v14 = v6 == 0x7374706D65747461 && a2 == 0xE800000000000000;
              if (v14 || (OUTLINED_FUNCTION_5_1() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v15 = v6 == 0x6E6F697461727564 && a2 == 0xE900000000000073;
                if (v15 || (OUTLINED_FUNCTION_5_1() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  OUTLINED_FUNCTION_117_6();
                  v16 = v5 && a2 == 0xE700000000000000;
                  if (v16 || (OUTLINED_FUNCTION_5_1() & 1) != 0)
                  {

                    return 8;
                  }

                  else if (v6 == OUTLINED_FUNCTION_7_2() && a2 == v17)
                  {

                    return 9;
                  }

                  else
                  {
                    OUTLINED_FUNCTION_5_1();
                    OUTLINED_FUNCTION_265_1();
                    if (v6)
                    {
                      return 9;
                    }

                    else
                    {
                      return 10;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_227D31C98()
{
  OUTLINED_FUNCTION_151_3();
  switch(v0)
  {
    case 2:
    case 3:
      OUTLINED_FUNCTION_97_7();
      break;
    case 4:
      OUTLINED_FUNCTION_136_6();
      break;
    case 5:
      OUTLINED_FUNCTION_90_7();
      break;
    case 8:
      OUTLINED_FUNCTION_76_9();
      break;
    case 9:
      OUTLINED_FUNCTION_7_2();
      break;
    default:
      return;
  }
}

uint64_t sub_227D31D84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_227D31A7C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_227D31DB4()
{
  sub_227D37E5C();
  v0 = OUTLINED_FUNCTION_10_6();

  return MEMORY[0x2821FE718](v0, v1);
}

uint64_t sub_227D31DEC()
{
  sub_227D37E5C();
  v0 = OUTLINED_FUNCTION_10_6();

  return MEMORY[0x2821FE720](v0, v1);
}

void sub_227D31E24()
{
  OUTLINED_FUNCTION_351();
  OUTLINED_FUNCTION_85_11();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA650, &unk_227D66C78);
  OUTLINED_FUNCTION_0_59(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_105_1();
  OUTLINED_FUNCTION_23_13();
  sub_227D37E5C();
  OUTLINED_FUNCTION_124_6();
  OUTLINED_FUNCTION_69_10();
  sub_227D4DC08();
  v6 = *v1;
  v7 = v1[1];
  LOBYTE(v19[0]) = 0;
  OUTLINED_FUNCTION_34_12();
  sub_227D4D9C8();
  if (!v0)
  {
    v8 = *(v1 + 16);
    LOBYTE(v19[0]) = 1;
    OUTLINED_FUNCTION_16_13();
    sub_227D4D9D8();
    v9 = *(v1 + 17);
    LOBYTE(v19[0]) = 2;
    OUTLINED_FUNCTION_16_13();
    sub_227D4D988();
    v10 = *(v1 + 18);
    LOBYTE(v19[0]) = 3;
    OUTLINED_FUNCTION_16_13();
    sub_227D4D988();
    v11 = *(v1 + 19);
    LOBYTE(v19[0]) = 4;
    OUTLINED_FUNCTION_16_13();
    sub_227D4D988();
    v12 = v1[3];
    v13 = v1[4];
    LOBYTE(v19[0]) = 5;
    OUTLINED_FUNCTION_34_12();
    sub_227D4D9C8();
    v19[0] = v1[5];
    LOBYTE(v18[0]) = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7710, &qword_227D531D0);
    sub_227BAD30C(&qword_27D7E7C10);
    OUTLINED_FUNCTION_69_10();
    sub_227D4D9A8();
    v19[0] = v1[6];
    LOBYTE(v18[0]) = 7;
    OUTLINED_FUNCTION_69_10();
    sub_227D4DA08();
    memcpy(v20, v1 + 7, 0x70uLL);
    memcpy(v19, v1 + 7, sizeof(v19));
    sub_227D2DA3C(v20, v18);
    sub_227D2EE88();
    OUTLINED_FUNCTION_16_13();
    sub_227D4D9A8();
    memcpy(v18, v19, sizeof(v18));
    sub_227B2746C(v18, &qword_27D7E8E30, &qword_227D66BC0);
    v14 = v1[21];
    v15 = v1[22];
    OUTLINED_FUNCTION_34_12();
    sub_227D4D978();
  }

  v16 = OUTLINED_FUNCTION_84_4();
  v17(v16);
  OUTLINED_FUNCTION_78_12();
  OUTLINED_FUNCTION_352();
}

void sub_227D3211C()
{
  OUTLINED_FUNCTION_351();
  v3 = v2;
  v5 = v4;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA658, &qword_227D66C88);
  OUTLINED_FUNCTION_9(v32);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_68_3();
  v11 = v3[3];
  v12 = v3[4];
  v13 = OUTLINED_FUNCTION_236();
  OUTLINED_FUNCTION_256(v13, v14);
  sub_227D37E5C();
  OUTLINED_FUNCTION_131_7();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_0(v3);
  }

  else
  {
    v15 = v7;
    v31 = v5;
    LOBYTE(v34[0]) = 0;
    OUTLINED_FUNCTION_48_12();
    v16 = sub_227D4D8F8();
    v18 = v17;
    v29 = v16;
    OUTLINED_FUNCTION_19_18(1);
    v48 = sub_227D4D908();
    OUTLINED_FUNCTION_19_18(2);
    v28 = sub_227D4D8B8();
    OUTLINED_FUNCTION_19_18(3);
    v27 = sub_227D4D8B8();
    OUTLINED_FUNCTION_19_18(4);
    v26 = sub_227D4D8B8();
    OUTLINED_FUNCTION_19_18(5);
    v24 = sub_227D4D8F8();
    v30 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7710, &qword_227D531D0);
    sub_227BAD30C(&qword_27D7E7C20);
    OUTLINED_FUNCTION_48_12();
    sub_227D4D8D8();
    v23 = v34[0];
    LOBYTE(v33[0]) = 7;
    OUTLINED_FUNCTION_48_12();
    sub_227D4D938();
    v25 = v34[0];
    sub_227D2F580();
    OUTLINED_FUNCTION_48_12();
    sub_227D4D8D8();
    memcpy(v47, v46, sizeof(v47));
    OUTLINED_FUNCTION_48_12();
    v20 = sub_227D4D8A8();
    v22 = v21;
    v48 &= 1u;
    (*(v15 + 8))(v1, v32);
    v33[0] = v29;
    v33[1] = v18;
    LOBYTE(v33[2]) = v48;
    BYTE1(v33[2]) = v28;
    BYTE2(v33[2]) = v27;
    BYTE3(v33[2]) = v26;
    v33[3] = v24;
    v33[4] = v30;
    v33[5] = v23;
    v33[6] = v25;
    memcpy(&v33[7], v47, 0x70uLL);
    v33[21] = v20;
    v33[22] = v22;
    sub_227B3DC88(v33, v34);
    __swift_destroy_boxed_opaque_existential_0(v3);
    v34[0] = v29;
    v34[1] = v18;
    v35 = v48;
    v36 = v28;
    v37 = v27;
    v38 = v26;
    v39 = v24;
    v40 = v30;
    v41 = v23;
    v42 = v25;
    memcpy(v43, v47, sizeof(v43));
    v44 = v20;
    v45 = v22;
    sub_227B3DC34(v34);
    memcpy(v31, v33, 0xB8uLL);
  }

  OUTLINED_FUNCTION_352();
}

void *sub_227D32624@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, char a5@<W4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, const void *a12, uint64_t a13, uint64_t a14)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 17) = a4;
  *(a9 + 18) = a5;
  *(a9 + 19) = a6;
  *(a9 + 24) = a7;
  *(a9 + 32) = a8;
  *(a9 + 40) = a10;
  *(a9 + 48) = a11;
  result = memcpy((a9 + 56), a12, 0x70uLL);
  *(a9 + 168) = a13;
  *(a9 + 176) = a14;
  return result;
}

void sub_227D32688(void *a1@<X8>)
{
  sub_227D3211C();
  if (!v1)
  {
    memcpy(a1, __src, 0xB8uLL);
  }
}

uint64_t sub_227D326EC()
{
  OUTLINED_FUNCTION_141_6();
  v1 = OUTLINED_FUNCTION_130_6();
  if (v3 == v1 && v2 == 0xE700000000000000)
  {

    v5 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_385_1();
    OUTLINED_FUNCTION_265_1();
    v5 = v0 ^ 1;
  }

  return v5 & 1;
}

uint64_t sub_227D32788()
{
  sub_227D37EB0();
  v0 = OUTLINED_FUNCTION_10_6();

  return MEMORY[0x2821FE718](v0, v1);
}

uint64_t sub_227D327C0()
{
  sub_227D37EB0();
  v0 = OUTLINED_FUNCTION_10_6();

  return MEMORY[0x2821FE720](v0, v1);
}

void sub_227D327F8()
{
  OUTLINED_FUNCTION_116_7();
  OUTLINED_FUNCTION_21_9();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA660, &qword_227D66C90);
  OUTLINED_FUNCTION_0_59(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_104();
  OUTLINED_FUNCTION_192();
  sub_227D37EB0();
  OUTLINED_FUNCTION_26_16();
  sub_227D374C0();
  OUTLINED_FUNCTION_65_11();
  OUTLINED_FUNCTION_102_7();
  v4 = OUTLINED_FUNCTION_5_29();
  v5(v4);
  OUTLINED_FUNCTION_64_9();
  OUTLINED_FUNCTION_115_7();
}

void sub_227D328D8()
{
  OUTLINED_FUNCTION_116_7();
  OUTLINED_FUNCTION_52_12();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA668, &qword_227D66C98);
  OUTLINED_FUNCTION_0_59(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_104();
  OUTLINED_FUNCTION_2_39();
  sub_227D37EB0();
  OUTLINED_FUNCTION_14_17();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0(v0);
  }

  else
  {
    sub_227D37568();
    OUTLINED_FUNCTION_82_10();
    OUTLINED_FUNCTION_40_11();
    sub_227D4D938();
    v6 = OUTLINED_FUNCTION_4_30();
    v7(v6);
    OUTLINED_FUNCTION_94_8();
  }

  OUTLINED_FUNCTION_17_18();
  OUTLINED_FUNCTION_115_7();
}

void sub_227D329D8(void *a1@<X8>)
{
  sub_227D328D8();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_227D32A2C()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);
  v3 = OUTLINED_FUNCTION_58();
  sub_227B3D9FC(v3, v4);
  return OUTLINED_FUNCTION_58();
}

uint64_t sub_227D32A58()
{
  OUTLINED_FUNCTION_43_11();
  v3 = v3 && v2 == 0xE200000000000000;
  if (v3 || (OUTLINED_FUNCTION_22_14() & 1) != 0)
  {

    return 0;
  }

  else
  {
    OUTLINED_FUNCTION_8_20();
    v6 = v3 && v0 == v5;
    if (v6 || (OUTLINED_FUNCTION_27_16() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v8 = v1 == OUTLINED_FUNCTION_13_20() && v0 == v7;
      if (v8 || (OUTLINED_FUNCTION_5_1() & 1) != 0)
      {

        return 2;
      }

      else
      {
        OUTLINED_FUNCTION_109_8();
        if (v3 && v0 == 0xE400000000000000)
        {

          return 3;
        }

        else
        {
          OUTLINED_FUNCTION_5_1();
          OUTLINED_FUNCTION_265_1();
          if (v1)
          {
            return 3;
          }

          else
          {
            return 4;
          }
        }
      }
    }
  }
}

uint64_t sub_227D32B2C(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = OUTLINED_FUNCTION_70_10();
      break;
    case 2:
      result = OUTLINED_FUNCTION_13_20();
      break;
    case 3:
      result = 1635018093;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_227D32B90@<X0>(_BYTE *a1@<X8>)
{
  result = sub_227D32A58();
  *a1 = result;
  return result;
}

uint64_t sub_227D32BB8()
{
  sub_227D37F04();
  v0 = OUTLINED_FUNCTION_10_6();

  return MEMORY[0x2821FE718](v0, v1);
}

uint64_t sub_227D32BF0()
{
  sub_227D37F04();
  v0 = OUTLINED_FUNCTION_10_6();

  return MEMORY[0x2821FE720](v0, v1);
}

void sub_227D32C28()
{
  OUTLINED_FUNCTION_351();
  OUTLINED_FUNCTION_85_11();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA670, &qword_227D66CA0);
  OUTLINED_FUNCTION_0_59(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_105_1();
  OUTLINED_FUNCTION_23_13();
  sub_227D37F04();
  OUTLINED_FUNCTION_124_6();
  OUTLINED_FUNCTION_69_10();
  sub_227D4DC08();
  v6 = *v1;
  v7 = v1[1];
  v16[0] = 0;
  OUTLINED_FUNCTION_34_12();
  sub_227D4D9C8();
  if (!v0)
  {
    OUTLINED_FUNCTION_150_6(v17);
    OUTLINED_FUNCTION_150_6(v16);
    OUTLINED_FUNCTION_96_10();
    sub_227B3DC88(v17, v15);
    sub_227D37F58();
    OUTLINED_FUNCTION_16_13();
    sub_227D4DA08();
    v8 = OUTLINED_FUNCTION_146_7();
    memcpy(v8, v9, v10);
    sub_227B3DC34(v15);
    v13 = v1[25];
    sub_227D37FAC();
    OUTLINED_FUNCTION_16_13();
    sub_227D4D9A8();
    v14 = *(v1 + 13);
    sub_227D376B8();
    OUTLINED_FUNCTION_16_13();
    sub_227D4D9A8();
  }

  v11 = OUTLINED_FUNCTION_84_4();
  v12(v11);
  OUTLINED_FUNCTION_78_12();
  OUTLINED_FUNCTION_352();
}

void sub_227D32DE4()
{
  OUTLINED_FUNCTION_351();
  v2 = v1;
  v4 = v3;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA688, &qword_227D66CA8);
  OUTLINED_FUNCTION_9(v20);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_68_3();
  v8 = v2[4];
  OUTLINED_FUNCTION_256(v2, v2[3]);
  sub_227D37F04();
  sub_227D4DBF8();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_0(v2);
  }

  else
  {
    v19 = v4;
    LOBYTE(v22[0]) = 0;
    v9 = sub_227D4D8F8();
    v11 = v10;
    v18 = v9;
    OUTLINED_FUNCTION_96_10();
    sub_227D38000();
    OUTLINED_FUNCTION_59_9();
    sub_227D4D938();
    memcpy(v30, v29, sizeof(v30));
    LOBYTE(v21[0]) = 2;
    sub_227D38054();
    OUTLINED_FUNCTION_59_9();
    sub_227D4D8D8();
    v17 = v22[0];
    sub_227D377B4();
    OUTLINED_FUNCTION_59_9();
    sub_227D4D8D8();
    v12 = OUTLINED_FUNCTION_0_15();
    v13(v12);
    v14 = v11;
    v15 = v27;
    v16 = v28;
    v21[0] = v18;
    v21[1] = v14;
    memcpy(&v21[2], v30, 0xB8uLL);
    v21[25] = v17;
    v21[26] = v27;
    v21[27] = v28;
    sub_227B3CA2C(v21, v22);
    __swift_destroy_boxed_opaque_existential_0(v2);
    v22[0] = v18;
    v22[1] = v14;
    memcpy(v23, v30, sizeof(v23));
    v24 = v17;
    v25 = v15;
    v26 = v16;
    sub_227D380A8(v22);
    memcpy(v19, v21, 0xE0uLL);
  }

  OUTLINED_FUNCTION_100_8();
  OUTLINED_FUNCTION_352();
}

void *sub_227D330E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  result = OUTLINED_FUNCTION_149_3(a3, a1, a2, a7);
  a7[25] = a4;
  a7[26] = a5;
  a7[27] = a6;
  return result;
}

void sub_227D33124(void *a1@<X8>)
{
  sub_227D32DE4();
  if (!v1)
  {
    memcpy(a1, v3, 0xE0uLL);
  }
}

uint64_t sub_227D33188()
{
  sub_227D380D8();
  v0 = OUTLINED_FUNCTION_10_6();

  return MEMORY[0x2821FE718](v0, v1);
}

uint64_t sub_227D331C0()
{
  sub_227D380D8();
  v0 = OUTLINED_FUNCTION_10_6();

  return MEMORY[0x2821FE720](v0, v1);
}

void sub_227D331F8()
{
  OUTLINED_FUNCTION_116_7();
  OUTLINED_FUNCTION_21_9();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA6A0, &qword_227D66CB0);
  OUTLINED_FUNCTION_0_59(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_104();
  OUTLINED_FUNCTION_192();
  sub_227D380D8();
  OUTLINED_FUNCTION_26_16();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA6A8, &qword_227D66CB8);
  sub_227D3812C();
  OUTLINED_FUNCTION_12_18();
  OUTLINED_FUNCTION_102_7();
  v4 = OUTLINED_FUNCTION_5_29();
  v5(v4);
  OUTLINED_FUNCTION_64_9();
  OUTLINED_FUNCTION_115_7();
}

void sub_227D332E4()
{
  OUTLINED_FUNCTION_116_7();
  OUTLINED_FUNCTION_52_12();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA6C0, &qword_227D66CC0);
  OUTLINED_FUNCTION_0_59(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_104();
  OUTLINED_FUNCTION_2_39();
  sub_227D380D8();
  OUTLINED_FUNCTION_14_17();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0(v0);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA6A8, &qword_227D66CB8);
    sub_227D38204();
    OUTLINED_FUNCTION_6_21();
    v6 = OUTLINED_FUNCTION_4_30();
    v7(v6);
    OUTLINED_FUNCTION_94_8();
  }

  OUTLINED_FUNCTION_17_18();
  OUTLINED_FUNCTION_115_7();
}

void sub_227D333E4(void *a1@<X8>)
{
  sub_227D332E4();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_227D3342C()
{
  OUTLINED_FUNCTION_141_6();
  if (v2 == 0x676E656C6C616863 && v1 == 0xEA00000000007365)
  {

    v4 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_385_1();
    OUTLINED_FUNCTION_265_1();
    v4 = v0 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_227D334D8()
{
  sub_227D382DC();
  v0 = OUTLINED_FUNCTION_10_6();

  return MEMORY[0x2821FE718](v0, v1);
}

uint64_t sub_227D33510()
{
  sub_227D382DC();
  v0 = OUTLINED_FUNCTION_10_6();

  return MEMORY[0x2821FE720](v0, v1);
}

void sub_227D33548()
{
  OUTLINED_FUNCTION_116_7();
  OUTLINED_FUNCTION_21_9();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA6D8, &qword_227D66CC8);
  OUTLINED_FUNCTION_0_59(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_104();
  OUTLINED_FUNCTION_192();
  sub_227D382DC();
  OUTLINED_FUNCTION_26_16();
  sub_227D38330();
  OUTLINED_FUNCTION_65_11();
  OUTLINED_FUNCTION_102_7();
  v4 = OUTLINED_FUNCTION_5_29();
  v5(v4);
  OUTLINED_FUNCTION_64_9();
  OUTLINED_FUNCTION_115_7();
}

void sub_227D33628()
{
  OUTLINED_FUNCTION_116_7();
  OUTLINED_FUNCTION_52_12();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA6E8, &qword_227D66CD0);
  OUTLINED_FUNCTION_0_59(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_104();
  OUTLINED_FUNCTION_2_39();
  sub_227D382DC();
  OUTLINED_FUNCTION_14_17();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0(v0);
  }

  else
  {
    sub_227D38384();
    OUTLINED_FUNCTION_82_10();
    OUTLINED_FUNCTION_40_11();
    sub_227D4D938();
    v6 = OUTLINED_FUNCTION_4_30();
    v7(v6);
    OUTLINED_FUNCTION_94_8();
  }

  OUTLINED_FUNCTION_17_18();
  OUTLINED_FUNCTION_115_7();
}

void sub_227D33728(void *a1@<X8>)
{
  sub_227D33628();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_227D33770()
{
  OUTLINED_FUNCTION_37();
  sub_227D4CE58();
  return OUTLINED_FUNCTION_57_0();
}

uint64_t sub_227D337A4(char a1)
{
  if (!a1)
  {
    return OUTLINED_FUNCTION_81_10();
  }

  if (a1 == 1)
  {
    return 0x7475626972747461;
  }

  return 0x6E6F6974616C6572;
}

uint64_t sub_227D33800@<X0>(_BYTE *a1@<X8>)
{
  result = sub_227D34B48();
  *a1 = result;
  return result;
}

uint64_t sub_227D33828()
{
  sub_227D383D8();
  v0 = OUTLINED_FUNCTION_10_6();

  return MEMORY[0x2821FE718](v0, v1);
}

uint64_t sub_227D33860()
{
  sub_227D383D8();
  v0 = OUTLINED_FUNCTION_10_6();

  return MEMORY[0x2821FE720](v0, v1);
}

void sub_227D33898()
{
  OUTLINED_FUNCTION_351();
  OUTLINED_FUNCTION_112_8();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA6F8, &qword_227D66CD8);
  OUTLINED_FUNCTION_9(v2);
  v4 = v3;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_103();
  v8 = v0[4];
  OUTLINED_FUNCTION_256(v0, v0[3]);
  sub_227D383D8();
  OUTLINED_FUNCTION_101_10();
  sub_227D4DC08();
  OUTLINED_FUNCTION_114();
  OUTLINED_FUNCTION_5_0();
  sub_227D4D9C8();
  if (!v1)
  {
    OUTLINED_FUNCTION_118_5();
    sub_227D371C0();
    OUTLINED_FUNCTION_20_12();
    sub_227D4DA08();
    OUTLINED_FUNCTION_125_4();
    sub_227D3842C();
    OUTLINED_FUNCTION_20_12();
    sub_227D4DA08();
  }

  v9 = *(v4 + 8);
  v10 = OUTLINED_FUNCTION_193();
  v11(v10);
  OUTLINED_FUNCTION_78_12();
  OUTLINED_FUNCTION_352();
}

void sub_227D339F4()
{
  OUTLINED_FUNCTION_351();
  OUTLINED_FUNCTION_52_12();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA708, &qword_227D66CE0);
  OUTLINED_FUNCTION_0_59(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_104();
  OUTLINED_FUNCTION_2_39();
  sub_227D383D8();
  OUTLINED_FUNCTION_14_17();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0(v0);
  }

  else
  {
    OUTLINED_FUNCTION_40_11();
    sub_227D4D8F8();
    OUTLINED_FUNCTION_118_5();
    sub_227D37214();
    OUTLINED_FUNCTION_28_16();
    OUTLINED_FUNCTION_40_11();
    sub_227D4D938();
    OUTLINED_FUNCTION_125_4();
    sub_227D38480();
    OUTLINED_FUNCTION_28_16();
    sub_227D4D938();
    v6 = OUTLINED_FUNCTION_30_14();
    v7(v6);
    OUTLINED_FUNCTION_94_8();
  }

  OUTLINED_FUNCTION_100_8();
  OUTLINED_FUNCTION_352();
}

void sub_227D33BB0(void *a1@<X8>)
{
  sub_227D339F4();
  if (!v1)
  {
    *a1 = v3;
    a1[1] = v4;
    a1[2] = v5;
    a1[3] = v6;
  }
}

void sub_227D33BE0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_227D33898();
}

uint64_t sub_227D33C00()
{
  sub_227D384D4();
  v0 = OUTLINED_FUNCTION_10_6();

  return MEMORY[0x2821FE718](v0, v1);
}

uint64_t sub_227D33C38()
{
  sub_227D384D4();
  v0 = OUTLINED_FUNCTION_10_6();

  return MEMORY[0x2821FE720](v0, v1);
}

void sub_227D33C70()
{
  OUTLINED_FUNCTION_116_7();
  OUTLINED_FUNCTION_21_9();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA718, &qword_227D66CE8);
  OUTLINED_FUNCTION_0_59(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_104();
  OUTLINED_FUNCTION_192();
  sub_227D384D4();
  OUTLINED_FUNCTION_26_16();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA720, &qword_227D66CF0);
  sub_227D38528();
  OUTLINED_FUNCTION_12_18();
  OUTLINED_FUNCTION_102_7();
  v4 = OUTLINED_FUNCTION_5_29();
  v5(v4);
  OUTLINED_FUNCTION_64_9();
  OUTLINED_FUNCTION_115_7();
}

void sub_227D33D5C()
{
  OUTLINED_FUNCTION_116_7();
  OUTLINED_FUNCTION_52_12();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA738, &qword_227D66CF8);
  OUTLINED_FUNCTION_0_59(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_104();
  OUTLINED_FUNCTION_2_39();
  sub_227D384D4();
  OUTLINED_FUNCTION_14_17();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0(v0);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA720, &qword_227D66CF0);
    sub_227D38600();
    OUTLINED_FUNCTION_6_21();
    v6 = OUTLINED_FUNCTION_4_30();
    v7(v6);
    OUTLINED_FUNCTION_94_8();
  }

  OUTLINED_FUNCTION_17_18();
  OUTLINED_FUNCTION_115_7();
}

void sub_227D33E5C(void *a1@<X8>)
{
  sub_227D33D5C();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_227D33EA4()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = OUTLINED_FUNCTION_58();
  sub_227B3D9FC(v3, v4);
  return OUTLINED_FUNCTION_58();
}

uint64_t sub_227D33ED0()
{
  OUTLINED_FUNCTION_43_11();
  v2 = v2 && v1 == 0xE200000000000000;
  if (v2 || (OUTLINED_FUNCTION_22_14() & 1) != 0)
  {

    return 0;
  }

  else
  {
    OUTLINED_FUNCTION_8_20();
    v5 = v2 && v0 == v4;
    if (v5 || (OUTLINED_FUNCTION_27_16() & 1) != 0)
    {

      return 1;
    }

    else
    {
      OUTLINED_FUNCTION_109_8();
      if (v2 && v0 == 0xE400000000000000)
      {

        return 2;
      }

      else
      {
        OUTLINED_FUNCTION_5_1();
        OUTLINED_FUNCTION_265_1();
        OUTLINED_FUNCTION_145_5();
        if (v2)
        {
          return v7 + 1;
        }

        else
        {
          return v7;
        }
      }
    }
  }
}

uint64_t sub_227D33F78(char a1)
{
  if (!a1)
  {
    return OUTLINED_FUNCTION_81_10();
  }

  if (a1 == 1)
  {
    return 0x7475626972747461;
  }

  return 1635018093;
}

uint64_t sub_227D33FC0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_227D33ED0();
  *a1 = result;
  return result;
}

uint64_t sub_227D33FE8()
{
  sub_227D386D8();
  v0 = OUTLINED_FUNCTION_10_6();

  return MEMORY[0x2821FE718](v0, v1);
}

uint64_t sub_227D34020()
{
  sub_227D386D8();
  v0 = OUTLINED_FUNCTION_10_6();

  return MEMORY[0x2821FE720](v0, v1);
}

void sub_227D34058()
{
  OUTLINED_FUNCTION_116_7();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA750, &qword_227D66D00);
  OUTLINED_FUNCTION_9(v2);
  v4 = v3;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_103();
  OUTLINED_FUNCTION_192();
  sub_227D386D8();
  OUTLINED_FUNCTION_101_10();
  OUTLINED_FUNCTION_155();
  sub_227D4DC08();
  v8 = *v0;
  v9 = v0[1];
  OUTLINED_FUNCTION_5_0();
  sub_227D4D9C8();
  if (!v1)
  {
    v13 = v0[2];
    OUTLINED_FUNCTION_96_10();
    sub_227D371C0();
    OUTLINED_FUNCTION_2_1();
    sub_227D4DA08();
    v14 = *(v0 + 3);
    OUTLINED_FUNCTION_147_4();
    sub_227D376B8();
    OUTLINED_FUNCTION_2_1();
    sub_227D4D9A8();
  }

  v10 = *(v4 + 8);
  v11 = OUTLINED_FUNCTION_193();
  v12(v11);
  OUTLINED_FUNCTION_115_7();
}

void sub_227D341BC()
{
  OUTLINED_FUNCTION_351();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA758, &qword_227D66D08);
  OUTLINED_FUNCTION_9(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v8);
  v9 = v2[4];
  OUTLINED_FUNCTION_256(v2, v2[3]);
  sub_227D386D8();
  OUTLINED_FUNCTION_69_10();
  sub_227D4DBF8();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_0(v2);
  }

  else
  {
    LOBYTE(v16) = 0;
    v10 = sub_227D4D8F8();
    v12 = v11;
    v15 = v10;
    OUTLINED_FUNCTION_96_10();
    sub_227D37214();
    OUTLINED_FUNCTION_123_3();
    sub_227D4D938();
    OUTLINED_FUNCTION_147_4();
    sub_227D377B4();
    OUTLINED_FUNCTION_123_3();
    sub_227D4D8D8();
    v13 = OUTLINED_FUNCTION_2_4();
    v14(v13);
    __swift_destroy_boxed_opaque_existential_0(v2);
    *v4 = v15;
    v4[1] = v12;
    v4[2] = v16;
    v4[3] = v16;
    v4[4] = v17;
  }

  OUTLINED_FUNCTION_78_12();
  OUTLINED_FUNCTION_352();
}

double sub_227D343BC()
{
  sub_227D341BC();
  if (!v0)
  {
    v9.n128_u64[0] = OUTLINED_FUNCTION_126_6(v1, v2, v3, v4, v5, v6, v7, v8, v11, v9, v12, v13).n128_u64[0];
  }

  return v9.n128_f64[0];
}

uint64_t sub_227D3440C()
{
  sub_227D3872C();
  v0 = OUTLINED_FUNCTION_10_6();

  return MEMORY[0x2821FE718](v0, v1);
}

uint64_t sub_227D34444()
{
  sub_227D3872C();
  v0 = OUTLINED_FUNCTION_10_6();

  return MEMORY[0x2821FE720](v0, v1);
}

void sub_227D3447C()
{
  OUTLINED_FUNCTION_116_7();
  OUTLINED_FUNCTION_21_9();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA760, &qword_227D66D10);
  OUTLINED_FUNCTION_0_59(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_104();
  OUTLINED_FUNCTION_192();
  sub_227D3872C();
  OUTLINED_FUNCTION_26_16();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA768, &qword_227D66D18);
  sub_227D38780();
  OUTLINED_FUNCTION_12_18();
  OUTLINED_FUNCTION_102_7();
  v4 = OUTLINED_FUNCTION_5_29();
  v5(v4);
  OUTLINED_FUNCTION_64_9();
  OUTLINED_FUNCTION_115_7();
}

void sub_227D34568()
{
  OUTLINED_FUNCTION_116_7();
  OUTLINED_FUNCTION_52_12();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA780, &qword_227D66D20);
  OUTLINED_FUNCTION_0_59(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_104();
  OUTLINED_FUNCTION_2_39();
  sub_227D3872C();
  OUTLINED_FUNCTION_14_17();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0(v0);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA768, &qword_227D66D18);
    sub_227D38858();
    OUTLINED_FUNCTION_6_21();
    v6 = OUTLINED_FUNCTION_4_30();
    v7(v6);
    OUTLINED_FUNCTION_94_8();
  }

  OUTLINED_FUNCTION_17_18();
  OUTLINED_FUNCTION_115_7();
}

void sub_227D34668(void *a1@<X8>)
{
  sub_227D34568();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_227D346B0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1936748641 && a2 == 0xE400000000000000;
  if (v3 || (OUTLINED_FUNCTION_5_1() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == OUTLINED_FUNCTION_130_6() && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    OUTLINED_FUNCTION_5_1();
    OUTLINED_FUNCTION_265_1();
    if (a1)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_227D3474C(char a1)
{
  if (a1)
  {
    return 0x73656372756F73;
  }

  else
  {
    return 1936748641;
  }
}

uint64_t sub_227D34784@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_227D346B0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_227D347AC()
{
  sub_227D38930();
  v0 = OUTLINED_FUNCTION_10_6();

  return MEMORY[0x2821FE718](v0, v1);
}

uint64_t sub_227D347E4()
{
  sub_227D38930();
  v0 = OUTLINED_FUNCTION_10_6();

  return MEMORY[0x2821FE720](v0, v1);
}

void sub_227D3481C()
{
  OUTLINED_FUNCTION_351();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA798, &qword_227D66D28);
  OUTLINED_FUNCTION_9(v1);
  v3 = v2;
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_103();
  OUTLINED_FUNCTION_23_13();
  sub_227D38930();
  OUTLINED_FUNCTION_101_10();
  OUTLINED_FUNCTION_69_10();
  sub_227D4DC08();
  sub_227D38984();
  OUTLINED_FUNCTION_20_12();
  sub_227D4DA08();
  if (!v0)
  {
    OUTLINED_FUNCTION_118_5();
    sub_227D374C0();
    OUTLINED_FUNCTION_20_12();
    sub_227D4DA08();
  }

  v7 = *(v3 + 8);
  v8 = OUTLINED_FUNCTION_193();
  v9(v8);
  OUTLINED_FUNCTION_78_12();
  OUTLINED_FUNCTION_352();
}

void sub_227D34948()
{
  OUTLINED_FUNCTION_116_7();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA7A8, &qword_227D66D30);
  OUTLINED_FUNCTION_9(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_104();
  OUTLINED_FUNCTION_2_39();
  sub_227D38930();
  OUTLINED_FUNCTION_39_11();
  OUTLINED_FUNCTION_155();
  sub_227D4DBF8();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_0(v2);
  }

  else
  {
    sub_227D389D8();
    OUTLINED_FUNCTION_114_7();
    sub_227D4D938();
    sub_227D37568();
    OUTLINED_FUNCTION_114_7();
    sub_227D4D938();
    v9 = *(v5 + 8);
    v10 = OUTLINED_FUNCTION_236();
    v11(v10);
    OUTLINED_FUNCTION_94_8();
  }

  OUTLINED_FUNCTION_115_7();
}

void sub_227D34ACC(void *a1@<X8>)
{
  sub_227D34948();
  if (!v1)
  {
    *a1 = v3;
    a1[1] = v4;
  }
}

void sub_227D34AF8()
{
  v1 = *v0;
  v2 = v0[1];
  sub_227D3481C();
}

uint64_t sub_227D34B14()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 208);
  sub_227D4CE58();
  sub_227D4CE58();
  return OUTLINED_FUNCTION_58();
}

uint64_t sub_227D34B48()
{
  OUTLINED_FUNCTION_43_11();
  v3 = v3 && v2 == 0xE200000000000000;
  if (v3 || (OUTLINED_FUNCTION_22_14() & 1) != 0)
  {

    return 0;
  }

  else
  {
    OUTLINED_FUNCTION_8_20();
    v6 = v3 && v0 == v5;
    if (v6 || (OUTLINED_FUNCTION_27_16() & 1) != 0)
    {

      return 1;
    }

    else if (v1 == OUTLINED_FUNCTION_13_20() && v0 == v7)
    {

      return 2;
    }

    else
    {
      OUTLINED_FUNCTION_5_1();
      OUTLINED_FUNCTION_265_1();
      OUTLINED_FUNCTION_145_5();
      if (v3)
      {
        return v9 + 1;
      }

      else
      {
        return v9;
      }
    }
  }
}

uint64_t sub_227D34BE4()
{
  sub_227D38A2C();
  v0 = OUTLINED_FUNCTION_10_6();

  return MEMORY[0x2821FE718](v0, v1);
}

uint64_t sub_227D34C1C()
{
  sub_227D38A2C();
  v0 = OUTLINED_FUNCTION_10_6();

  return MEMORY[0x2821FE720](v0, v1);
}

void sub_227D34C54()
{
  OUTLINED_FUNCTION_351();
  OUTLINED_FUNCTION_85_11();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA7B8, &qword_227D66D38);
  OUTLINED_FUNCTION_0_59(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_105_1();
  OUTLINED_FUNCTION_23_13();
  sub_227D38A2C();
  OUTLINED_FUNCTION_124_6();
  OUTLINED_FUNCTION_69_10();
  sub_227D4DC08();
  v6 = *v1;
  v7 = v1[1];
  v15[0] = 0;
  OUTLINED_FUNCTION_34_12();
  sub_227D4D9C8();
  if (!v0)
  {
    OUTLINED_FUNCTION_150_6(v16);
    OUTLINED_FUNCTION_150_6(v15);
    OUTLINED_FUNCTION_96_10();
    sub_227B3DC88(v16, v14);
    sub_227D37F58();
    OUTLINED_FUNCTION_16_13();
    sub_227D4DA08();
    v8 = OUTLINED_FUNCTION_146_7();
    memcpy(v8, v9, v10);
    sub_227B3DC34(v14);
    v13 = *(v1 + 25);
    sub_227D38A80();
    OUTLINED_FUNCTION_16_13();
    sub_227D4DA08();
  }

  v11 = OUTLINED_FUNCTION_84_4();
  v12(v11);
  OUTLINED_FUNCTION_78_12();
  OUTLINED_FUNCTION_352();
}

void sub_227D34DD8()
{
  OUTLINED_FUNCTION_351();
  v2 = v1;
  v4 = v3;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA7C8, &qword_227D66D40);
  OUTLINED_FUNCTION_9(v17);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v7);
  v8 = v2[4];
  OUTLINED_FUNCTION_256(v2, v2[3]);
  sub_227D38A2C();
  sub_227D4DBF8();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_0(v2);
  }

  else
  {
    v16 = v4;
    LOBYTE(v19[0]) = 0;
    v14 = sub_227D4D8F8();
    v15 = v9;
    OUTLINED_FUNCTION_96_10();
    sub_227D38000();
    sub_227D4D938();
    memcpy(v26, v25, sizeof(v26));
    sub_227D38AD4();
    sub_227D4D938();
    v10 = OUTLINED_FUNCTION_0_26();
    v11(v10);
    v12 = v23;
    v13 = v24;
    v18[0] = v14;
    v18[1] = v15;
    memcpy(&v18[2], v26, 0xB8uLL);
    v18[25] = v23;
    v18[26] = v24;
    sub_227B3E28C(v18, v19);
    __swift_destroy_boxed_opaque_existential_0(v2);
    v19[0] = v14;
    v19[1] = v15;
    memcpy(v20, v26, sizeof(v20));
    v21 = v12;
    v22 = v13;
    sub_227D38B28(v19);
    memcpy(v16, v18, 0xD8uLL);
  }

  OUTLINED_FUNCTION_78_12();
  OUTLINED_FUNCTION_352();
}

void *sub_227D35070@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  result = OUTLINED_FUNCTION_149_3(a3, a1, a2, a6);
  a6[25] = a4;
  a6[26] = a5;
  return result;
}

void sub_227D350A8(void *a1@<X8>)
{
  sub_227D34DD8();
  if (!v1)
  {
    memcpy(a1, __src, 0xD8uLL);
  }
}

uint64_t sub_227D3510C()
{
  sub_227D38B58();
  v0 = OUTLINED_FUNCTION_10_6();

  return MEMORY[0x2821FE718](v0, v1);
}

uint64_t sub_227D35144()
{
  sub_227D38B58();
  v0 = OUTLINED_FUNCTION_10_6();

  return MEMORY[0x2821FE720](v0, v1);
}

void sub_227D3517C()
{
  OUTLINED_FUNCTION_116_7();
  OUTLINED_FUNCTION_21_9();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA7D8, &qword_227D66D48);
  OUTLINED_FUNCTION_0_59(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_104();
  OUTLINED_FUNCTION_192();
  sub_227D38B58();
  OUTLINED_FUNCTION_26_16();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA7E0, &qword_227D66D50);
  sub_227D38BAC();
  OUTLINED_FUNCTION_12_18();
  OUTLINED_FUNCTION_102_7();
  v4 = OUTLINED_FUNCTION_5_29();
  v5(v4);
  OUTLINED_FUNCTION_64_9();
  OUTLINED_FUNCTION_115_7();
}

void sub_227D35268()
{
  OUTLINED_FUNCTION_116_7();
  OUTLINED_FUNCTION_52_12();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA7F8, &qword_227D66D58);
  OUTLINED_FUNCTION_0_59(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_104();
  OUTLINED_FUNCTION_2_39();
  sub_227D38B58();
  OUTLINED_FUNCTION_14_17();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0(v0);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA7E0, &qword_227D66D50);
    sub_227D38C84();
    OUTLINED_FUNCTION_6_21();
    v6 = OUTLINED_FUNCTION_4_30();
    v7(v6);
    OUTLINED_FUNCTION_94_8();
  }

  OUTLINED_FUNCTION_17_18();
  OUTLINED_FUNCTION_115_7();
}

void sub_227D35368(void *a1@<X8>)
{
  sub_227D35268();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_227D353E0()
{
  OUTLINED_FUNCTION_37();
  v3 = v1 == 0x6449656C646E7562 && v2 == 0xE800000000000000;
  if (v3 || (OUTLINED_FUNCTION_5_1() & 1) != 0)
  {

    return 0;
  }

  else if (v1 == 0xD000000000000020 && 0x8000000227D78040 == v0)
  {

    return 1;
  }

  else
  {
    OUTLINED_FUNCTION_5_1();
    OUTLINED_FUNCTION_265_1();
    if (v1)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_227D3548C(char a1)
{
  if (a1)
  {
    return 0xD000000000000020;
  }

  else
  {
    return 0x6449656C646E7562;
  }
}

uint64_t sub_227D354D0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_227D353E0();
  *a1 = result;
  return result;
}

uint64_t sub_227D354F8()
{
  sub_227D38D5C();
  v0 = OUTLINED_FUNCTION_10_6();

  return MEMORY[0x2821FE718](v0, v1);
}

uint64_t sub_227D35530()
{
  sub_227D38D5C();
  v0 = OUTLINED_FUNCTION_10_6();

  return MEMORY[0x2821FE720](v0, v1);
}

void sub_227D35568()
{
  OUTLINED_FUNCTION_351();
  OUTLINED_FUNCTION_112_8();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA810, &qword_227D66D60);
  OUTLINED_FUNCTION_9(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_104();
  v9 = v0[4];
  OUTLINED_FUNCTION_256(v0, v0[3]);
  sub_227D38D5C();
  OUTLINED_FUNCTION_39_11();
  sub_227D4DC08();
  OUTLINED_FUNCTION_140_3();
  OUTLINED_FUNCTION_114();
  OUTLINED_FUNCTION_80_8();
  sub_227D4D978();
  if (!v1)
  {
    OUTLINED_FUNCTION_227_0();
    OUTLINED_FUNCTION_80_8();
    sub_227D4D978();
  }

  (*(v5 + 8))(v2, v3);
  OUTLINED_FUNCTION_352();
}

void sub_227D3568C()
{
  OUTLINED_FUNCTION_351();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA818, &qword_227D66D68);
  OUTLINED_FUNCTION_9(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_104();
  OUTLINED_FUNCTION_2_39();
  sub_227D38D5C();
  OUTLINED_FUNCTION_39_11();
  OUTLINED_FUNCTION_155();
  sub_227D4DBF8();
  if (!v0)
  {
    OUTLINED_FUNCTION_79_10();
    sub_227D4D8A8();
    OUTLINED_FUNCTION_54_12();
    sub_227D4D8A8();
    v7 = OUTLINED_FUNCTION_0_22();
    v8(v7);
  }

  __swift_destroy_boxed_opaque_existential_0(v2);
  OUTLINED_FUNCTION_103_8();
  OUTLINED_FUNCTION_352();
}

void sub_227D357DC(void *a1@<X8>)
{
  sub_227D3568C();
  if (!v1)
  {
    *a1 = v3;
    a1[1] = v4;
    a1[2] = v5;
    a1[3] = v6;
  }
}

void sub_227D3580C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_227D35568();
}

uint64_t sub_227D3582C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_113_9();
  v5 = v5 && v4 == a2;
  if (v5)
  {

    v6 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_385_1();
    OUTLINED_FUNCTION_265_1();
    v6 = v2 ^ 1;
  }

  return v6 & 1;
}

uint64_t sub_227D358EC()
{
  sub_227D38DB0();
  v0 = OUTLINED_FUNCTION_10_6();

  return MEMORY[0x2821FE718](v0, v1);
}

uint64_t sub_227D35924()
{
  sub_227D38DB0();
  v0 = OUTLINED_FUNCTION_10_6();

  return MEMORY[0x2821FE720](v0, v1);
}

void sub_227D3595C()
{
  OUTLINED_FUNCTION_116_7();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA820, &qword_227D66D70);
  OUTLINED_FUNCTION_0_59(v2);
  v4 = v3;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_105_1();
  OUTLINED_FUNCTION_192();
  sub_227D38DB0();
  OUTLINED_FUNCTION_124_6();
  OUTLINED_FUNCTION_155();
  sub_227D4DC08();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA828, &qword_227D66D78);
  sub_227D38E58(&qword_27D7EA830, sub_227D38E04);
  OUTLINED_FUNCTION_12_18();
  sub_227D4DA08();
  (*(v4 + 8))(v1, v0);
  OUTLINED_FUNCTION_64_9();
  OUTLINED_FUNCTION_115_7();
}

void sub_227D35AA4()
{
  OUTLINED_FUNCTION_116_7();
  OUTLINED_FUNCTION_52_12();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA840, &qword_227D66D80);
  OUTLINED_FUNCTION_0_59(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_104();
  OUTLINED_FUNCTION_2_39();
  sub_227D38DB0();
  OUTLINED_FUNCTION_14_17();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0(v0);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA828, &qword_227D66D78);
    sub_227D38E58(&qword_27D7EA848, sub_227D38EDC);
    OUTLINED_FUNCTION_6_21();
    v6 = OUTLINED_FUNCTION_4_30();
    v7(v6);
    OUTLINED_FUNCTION_94_8();
  }

  OUTLINED_FUNCTION_17_18();
  OUTLINED_FUNCTION_115_7();
}

void sub_227D35BDC(void *a1@<X8>)
{
  sub_227D35AA4();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_227D35C24(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_113_9();
  v5 = v5 && v4 == a2;
  if (v5)
  {

    v6 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_385_1();
    OUTLINED_FUNCTION_265_1();
    v6 = v2 ^ 1;
  }

  return v6 & 1;
}

uint64_t sub_227D35CE4()
{
  sub_227D38F30();
  v0 = OUTLINED_FUNCTION_10_6();

  return MEMORY[0x2821FE718](v0, v1);
}

uint64_t sub_227D35D1C()
{
  sub_227D38F30();
  v0 = OUTLINED_FUNCTION_10_6();

  return MEMORY[0x2821FE720](v0, v1);
}

void sub_227D35D54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_351();
  a19 = v20;
  a20 = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA858, &qword_227D66D88);
  OUTLINED_FUNCTION_9(v22);
  v24 = v23;
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v27);
  v29 = &a9 - v28;
  OUTLINED_FUNCTION_23_13();
  sub_227D38F30();
  OUTLINED_FUNCTION_69_10();
  sub_227D4DC08();
  sub_227D4D978();
  (*(v24 + 8))(v29, v22);
  OUTLINED_FUNCTION_352();
}

void sub_227D35E60()
{
  OUTLINED_FUNCTION_116_7();
  OUTLINED_FUNCTION_52_12();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA860, &qword_227D66D90);
  OUTLINED_FUNCTION_0_59(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_104();
  OUTLINED_FUNCTION_2_39();
  sub_227D38F30();
  OUTLINED_FUNCTION_14_17();
  if (!v1)
  {
    OUTLINED_FUNCTION_40_11();
    sub_227D4D8A8();
    v6 = OUTLINED_FUNCTION_4_30();
    v7(v6);
  }

  __swift_destroy_boxed_opaque_existential_0(v0);
  OUTLINED_FUNCTION_115_7();
}

void sub_227D35F60(void *a1@<X8>)
{
  sub_227D35E60();
  if (!v1)
  {
    *a1 = v3;
    a1[1] = v4;
  }
}

uint64_t sub_227D35FB8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7107189 && a2 == 0xE300000000000000;
  if (v3 || (OUTLINED_FUNCTION_5_1() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6874646977 && a2 == 0xE500000000000000;
    if (v6 || (OUTLINED_FUNCTION_5_1() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x746867696568 && a2 == 0xE600000000000000;
      if (v7 || (OUTLINED_FUNCTION_5_1() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x726F6C6F436762 && a2 == 0xE700000000000000;
        if (v8 || (OUTLINED_FUNCTION_5_1() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6F6C6F4374786574 && a2 == 0xEA00000000003172;
          if (v9 || (OUTLINED_FUNCTION_27_16() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6F6C6F4374786574 && a2 == 0xEA00000000003272;
            if (v10 || (OUTLINED_FUNCTION_5_1() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6F6C6F4374786574 && a2 == 0xEA00000000003372;
              if (v11 || (OUTLINED_FUNCTION_5_1() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0x6F6C6F4374786574 && a2 == 0xEA00000000003472)
              {

                return 7;
              }

              else
              {
                OUTLINED_FUNCTION_5_1();
                OUTLINED_FUNCTION_265_1();
                if (a1)
                {
                  return 7;
                }

                else
                {
                  return 8;
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_227D361A0(char a1)
{
  switch(a1)
  {
    case 4:
      OUTLINED_FUNCTION_97_7();
      break;
    case 5:
    case 6:
    case 7:
      OUTLINED_FUNCTION_601();
      break;
    default:
      return;
  }
}

uint64_t sub_227D36288@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_227D35FB8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_227D362B8()
{
  sub_227D38F84();
  v0 = OUTLINED_FUNCTION_10_6();

  return MEMORY[0x2821FE718](v0, v1);
}

uint64_t sub_227D362F0()
{
  sub_227D38F84();
  v0 = OUTLINED_FUNCTION_10_6();

  return MEMORY[0x2821FE720](v0, v1);
}

void sub_227D36328()
{
  OUTLINED_FUNCTION_116_7();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA868, &qword_227D66D98);
  OUTLINED_FUNCTION_9(v2);
  v4 = v3;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_103();
  OUTLINED_FUNCTION_192();
  sub_227D38F84();
  OUTLINED_FUNCTION_101_10();
  OUTLINED_FUNCTION_155();
  sub_227D4DC08();
  v8 = *v0;
  v9 = v0[1];
  OUTLINED_FUNCTION_140_3();
  OUTLINED_FUNCTION_2_5();
  sub_227D4D9C8();
  if (!v1)
  {
    v10 = v0[2];
    OUTLINED_FUNCTION_227_0();
    sub_227D4D9E8();
    v11 = v0[3];
    sub_227D4D9E8();
    v12 = v0[4];
    v13 = v0[5];
    OUTLINED_FUNCTION_2_5();
    sub_227D4D978();
    v14 = v0[6];
    v15 = v0[7];
    OUTLINED_FUNCTION_2_5();
    sub_227D4D978();
    v16 = v0[8];
    v17 = v0[9];
    OUTLINED_FUNCTION_2_5();
    sub_227D4D978();
    v18 = v0[10];
    v19 = v0[11];
    OUTLINED_FUNCTION_2_5();
    sub_227D4D978();
    v20 = v0[12];
    v21 = v0[13];
    OUTLINED_FUNCTION_2_5();
    sub_227D4D978();
  }

  v22 = *(v4 + 8);
  v23 = OUTLINED_FUNCTION_193();
  v24(v23);
  OUTLINED_FUNCTION_115_7();
}

void *sub_227D36508@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA870, &qword_227D66DA0);
  OUTLINED_FUNCTION_9(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v10);
  v12 = &v33 - v11;
  v13 = a1[4];
  OUTLINED_FUNCTION_256(a1, a1[3]);
  sub_227D38F84();
  sub_227D4DBF8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  LOBYTE(v43[0]) = 0;
  v14 = sub_227D4D8F8();
  v16 = v15;
  OUTLINED_FUNCTION_66(1);
  sub_227D4D918();
  v18 = v17;
  OUTLINED_FUNCTION_66(2);
  sub_227D4D918();
  v20 = v19;
  OUTLINED_FUNCTION_66(3);
  v37 = sub_227D4D8A8();
  v41 = v21;
  OUTLINED_FUNCTION_66(4);
  v36 = sub_227D4D8A8();
  v40 = v22;
  OUTLINED_FUNCTION_66(5);
  v35 = sub_227D4D8A8();
  v39 = v23;
  OUTLINED_FUNCTION_66(6);
  v34 = sub_227D4D8A8();
  v38 = v24;
  v44 = 7;
  v25 = sub_227D4D8A8();
  v26 = *(v7 + 8);
  v27 = v25;
  v33 = v28;
  v26(v12, v5);
  __src[0] = v14;
  __src[1] = v16;
  __src[2] = v18;
  __src[3] = v20;
  __src[4] = v37;
  __src[5] = v41;
  __src[6] = v36;
  v29 = v40;
  __src[7] = v40;
  __src[8] = v35;
  __src[9] = v39;
  __src[10] = v34;
  v30 = v38;
  __src[11] = v38;
  __src[12] = v27;
  v31 = v33;
  __src[13] = v33;
  sub_227D38FD8(__src, v43);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v43[0] = v14;
  v43[1] = v16;
  v43[2] = v18;
  v43[3] = v20;
  v43[4] = v37;
  v43[5] = v41;
  v43[6] = v36;
  v43[7] = v29;
  v43[8] = v35;
  v43[9] = v39;
  v43[10] = v34;
  v43[11] = v30;
  v43[12] = v27;
  v43[13] = v31;
  sub_227D39010(v43);
  return memcpy(a2, __src, 0x70uLL);
}

uint64_t sub_227D369A0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, __int128 a12, uint64_t a13, uint64_t a14)
{
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a10;
  *(a9 + 24) = a11;
  *(a9 + 32) = a3;
  *(a9 + 40) = a4;
  *(a9 + 48) = a5;
  *(a9 + 56) = a6;
  *(a9 + 64) = a7;
  *(a9 + 72) = a8;
  *(a9 + 80) = a12;
  *(a9 + 96) = a13;
  *(a9 + 104) = a14;
  return result;
}

void *sub_227D369C8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_227D36508(a1, v5);
  if (!v2)
  {
    return memcpy(a2, v5, 0x70uLL);
  }

  return result;
}

uint64_t sub_227D36A2C()
{
  OUTLINED_FUNCTION_43_11();
  v3 = v3 && v2 == 0xE200000000000000;
  if (v3 || (OUTLINED_FUNCTION_22_14() & 1) != 0)
  {

    return 0;
  }

  else
  {
    OUTLINED_FUNCTION_107_7();
    if (v3 && v0 == 0xE400000000000000)
    {

      return 1;
    }

    else
    {
      OUTLINED_FUNCTION_5_1();
      OUTLINED_FUNCTION_265_1();
      if (v1)
      {
        return 1;
      }

      else
      {
        return 2;
      }
    }
  }
}

uint64_t sub_227D36AB0(char a1)
{
  if (a1)
  {
    return 1701869940;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_227D36ADC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_227D36A2C();
  *a1 = result;
  return result;
}

uint64_t sub_227D36B04()
{
  sub_227D39040();
  v0 = OUTLINED_FUNCTION_10_6();

  return MEMORY[0x2821FE718](v0, v1);
}

uint64_t sub_227D36B3C()
{
  sub_227D39040();
  v0 = OUTLINED_FUNCTION_10_6();

  return MEMORY[0x2821FE720](v0, v1);
}

void sub_227D36B74()
{
  OUTLINED_FUNCTION_351();
  OUTLINED_FUNCTION_112_8();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA878, &qword_227D66DA8);
  OUTLINED_FUNCTION_9(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_104();
  v9 = v0[4];
  OUTLINED_FUNCTION_256(v0, v0[3]);
  sub_227D39040();
  OUTLINED_FUNCTION_39_11();
  sub_227D4DC08();
  OUTLINED_FUNCTION_140_3();
  OUTLINED_FUNCTION_114();
  OUTLINED_FUNCTION_80_8();
  sub_227D4D9C8();
  if (!v1)
  {
    OUTLINED_FUNCTION_227_0();
    OUTLINED_FUNCTION_80_8();
    sub_227D4D9C8();
  }

  (*(v5 + 8))(v2, v3);
  OUTLINED_FUNCTION_352();
}

void sub_227D36C98()
{
  OUTLINED_FUNCTION_351();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA880, &qword_227D66DB0);
  OUTLINED_FUNCTION_9(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_104();
  OUTLINED_FUNCTION_2_39();
  sub_227D39040();
  OUTLINED_FUNCTION_39_11();
  OUTLINED_FUNCTION_155();
  sub_227D4DBF8();
  if (!v0)
  {
    OUTLINED_FUNCTION_79_10();
    sub_227D4D8F8();
    OUTLINED_FUNCTION_54_12();
    sub_227D4D8F8();
    v7 = OUTLINED_FUNCTION_0_22();
    v8(v7);
  }

  __swift_destroy_boxed_opaque_existential_0(v2);
  OUTLINED_FUNCTION_103_8();
  OUTLINED_FUNCTION_352();
}

void sub_227D36DE8(void *a1@<X8>)
{
  sub_227D36C98();
  if (!v1)
  {
    *a1 = v3;
    a1[1] = v4;
    a1[2] = v5;
    a1[3] = v6;
  }
}

void sub_227D36E18()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_227D36B74();
}

uint64_t sub_227D36E38(uint64_t a1, uint64_t a2)
{
  if (a1 == 1635017060 && a2 == 0xE400000000000000)
  {

    v4 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_385_1();
    OUTLINED_FUNCTION_265_1();
    v4 = v2 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_227D36EC8()
{
  sub_227D39094();
  v0 = OUTLINED_FUNCTION_10_6();

  return MEMORY[0x2821FE718](v0, v1);
}

uint64_t sub_227D36F00()
{
  sub_227D39094();
  v0 = OUTLINED_FUNCTION_10_6();

  return MEMORY[0x2821FE720](v0, v1);
}

void sub_227D36F38()
{
  OUTLINED_FUNCTION_116_7();
  OUTLINED_FUNCTION_21_9();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA888, &qword_227D66DB8);
  OUTLINED_FUNCTION_0_59(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_104();
  OUTLINED_FUNCTION_192();
  sub_227D39094();
  OUTLINED_FUNCTION_26_16();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA890, &qword_227D66DC0);
  sub_227D390E8();
  OUTLINED_FUNCTION_12_18();
  OUTLINED_FUNCTION_102_7();
  v4 = OUTLINED_FUNCTION_5_29();
  v5(v4);
  OUTLINED_FUNCTION_64_9();
  OUTLINED_FUNCTION_115_7();
}

void sub_227D37024()
{
  OUTLINED_FUNCTION_116_7();
  OUTLINED_FUNCTION_52_12();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA8A8, &qword_227D66DC8);
  OUTLINED_FUNCTION_0_59(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_104();
  OUTLINED_FUNCTION_2_39();
  sub_227D39094();
  OUTLINED_FUNCTION_14_17();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0(v0);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA890, &qword_227D66DC0);
    sub_227D391C0();
    OUTLINED_FUNCTION_6_21();
    v6 = OUTLINED_FUNCTION_4_30();
    v7(v6);
    OUTLINED_FUNCTION_94_8();
  }

  OUTLINED_FUNCTION_17_18();
  OUTLINED_FUNCTION_115_7();
}

void sub_227D37124(void *a1@<X8>)
{
  sub_227D37024();
  if (!v1)
  {
    *a1 = v3;
  }
}

unint64_t sub_227D3716C()
{
  result = qword_27D8029B8;
  if (!qword_27D8029B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8029B8);
  }

  return result;
}

unint64_t sub_227D371C0()
{
  result = qword_27D7EA4E0;
  if (!qword_27D7EA4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7EA4E0);
  }

  return result;
}

unint64_t sub_227D37214()
{
  result = qword_27D7EA4F0;
  if (!qword_27D7EA4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7EA4F0);
  }

  return result;
}

unint64_t sub_227D37268()
{
  result = qword_27D8029C0;
  if (!qword_27D8029C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8029C0);
  }

  return result;
}

unint64_t sub_227D372BC()
{
  result = qword_27D7EA508;
  if (!qword_27D7EA508)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7EA500, &qword_227D66BF8);
    sub_227D37340();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7EA508);
  }

  return result;
}

unint64_t sub_227D37340()
{
  result = qword_27D7EA510;
  if (!qword_27D7EA510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7EA510);
  }

  return result;
}

unint64_t sub_227D37394()
{
  result = qword_27D7EA520;
  if (!qword_27D7EA520)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7EA500, &qword_227D66BF8);
    sub_227D37418();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7EA520);
  }

  return result;
}

unint64_t sub_227D37418()
{
  result = qword_27D7EA528;
  if (!qword_27D7EA528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7EA528);
  }

  return result;
}

unint64_t sub_227D3746C()
{
  result = qword_27D8029C8;
  if (!qword_27D8029C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8029C8);
  }

  return result;
}

unint64_t sub_227D374C0()
{
  result = qword_27D7EA538;
  if (!qword_27D7EA538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7EA538);
  }

  return result;
}

unint64_t sub_227D37514()
{
  result = qword_27D7EA540;
  if (!qword_27D7EA540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7EA540);
  }

  return result;
}

unint64_t sub_227D37568()
{
  result = qword_27D7EA550;
  if (!qword_27D7EA550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7EA550);
  }

  return result;
}

unint64_t sub_227D375BC()
{
  result = qword_27D7EA558;
  if (!qword_27D7EA558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7EA558);
  }

  return result;
}

unint64_t sub_227D37610()
{
  result = qword_27D8029D0;
  if (!qword_27D8029D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8029D0);
  }

  return result;
}

unint64_t sub_227D37664()
{
  result = qword_27D7EA568;
  if (!qword_27D7EA568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7EA568);
  }

  return result;
}

unint64_t sub_227D376B8()
{
  result = qword_27D7EA570;
  if (!qword_27D7EA570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7EA570);
  }

  return result;
}

unint64_t sub_227D3770C()
{
  result = qword_27D7EA578;
  if (!qword_27D7EA578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7EA578);
  }

  return result;
}

unint64_t sub_227D37760()
{
  result = qword_27D7EA588;
  if (!qword_27D7EA588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7EA588);
  }

  return result;
}

unint64_t sub_227D377B4()
{
  result = qword_27D7EA590;
  if (!qword_27D7EA590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7EA590);
  }

  return result;
}

unint64_t sub_227D37808()
{
  result = qword_27D7EA598;
  if (!qword_27D7EA598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7EA598);
  }

  return result;
}

unint64_t sub_227D3785C()
{
  result = qword_27D8029D8;
  if (!qword_27D8029D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8029D8);
  }

  return result;
}

unint64_t sub_227D378B0()
{
  result = qword_27D7EA5B0;
  if (!qword_27D7EA5B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7EA5A8, &qword_227D66C30);
    sub_227D37934();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7EA5B0);
  }

  return result;
}

unint64_t sub_227D37934()
{
  result = qword_27D7EA5B8;
  if (!qword_27D7EA5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7EA5B8);
  }

  return result;
}

unint64_t sub_227D37988()
{
  result = qword_27D7EA5C8;
  if (!qword_27D7EA5C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7EA5A8, &qword_227D66C30);
    sub_227D37A0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7EA5C8);
  }

  return result;
}

unint64_t sub_227D37A0C()
{
  result = qword_27D7EA5D0;
  if (!qword_27D7EA5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7EA5D0);
  }

  return result;
}

unint64_t sub_227D37A60()
{
  result = qword_27D8029E0;
  if (!qword_27D8029E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8029E0);
  }

  return result;
}

unint64_t sub_227D37AB4()
{
  result = qword_27D7EA5E0;
  if (!qword_27D7EA5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7EA5E0);
  }

  return result;
}

unint64_t sub_227D37B08()
{
  result = qword_27D7EA5F0;
  if (!qword_27D7EA5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7EA5F0);
  }

  return result;
}

unint64_t sub_227D37B5C()
{
  result = qword_27D8029E8;
  if (!qword_27D8029E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8029E8);
  }

  return result;
}

unint64_t sub_227D37BB0()
{
  result = qword_27D7EA600;
  if (!qword_27D7EA600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7EA600);
  }

  return result;
}

unint64_t sub_227D37C04()
{
  result = qword_27D7EA610;
  if (!qword_27D7EA610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7EA610);
  }

  return result;
}

unint64_t sub_227D37C58()
{
  result = qword_27D8029F0;
  if (!qword_27D8029F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8029F0);
  }

  return result;
}

unint64_t sub_227D37CAC()
{
  result = qword_27D7EA628;
  if (!qword_27D7EA628)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7EA620, &qword_227D66C68);
    sub_227D37D30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7EA628);
  }

  return result;
}

unint64_t sub_227D37D30()
{
  result = qword_27D7EA630;
  if (!qword_27D7EA630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7EA630);
  }

  return result;
}

unint64_t sub_227D37D84()
{
  result = qword_27D7EA640;
  if (!qword_27D7EA640)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7EA620, &qword_227D66C68);
    sub_227D37E08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7EA640);
  }

  return result;
}

unint64_t sub_227D37E08()
{
  result = qword_27D7EA648;
  if (!qword_27D7EA648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7EA648);
  }

  return result;
}

unint64_t sub_227D37E5C()
{
  result = qword_27D8029F8;
  if (!qword_27D8029F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8029F8);
  }

  return result;
}

unint64_t sub_227D37EB0()
{
  result = qword_27D802A00;
  if (!qword_27D802A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D802A00);
  }

  return result;
}

unint64_t sub_227D37F04()
{
  result = qword_27D802A08;
  if (!qword_27D802A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D802A08);
  }

  return result;
}

unint64_t sub_227D37F58()
{
  result = qword_27D7EA678;
  if (!qword_27D7EA678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7EA678);
  }

  return result;
}

unint64_t sub_227D37FAC()
{
  result = qword_27D7EA680;
  if (!qword_27D7EA680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7EA680);
  }

  return result;
}

unint64_t sub_227D38000()
{
  result = qword_27D7EA690;
  if (!qword_27D7EA690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7EA690);
  }

  return result;
}

unint64_t sub_227D38054()
{
  result = qword_27D7EA698;
  if (!qword_27D7EA698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7EA698);
  }

  return result;
}

unint64_t sub_227D380D8()
{
  result = qword_27D802A10;
  if (!qword_27D802A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D802A10);
  }

  return result;
}

unint64_t sub_227D3812C()
{
  result = qword_27D7EA6B0;
  if (!qword_27D7EA6B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7EA6A8, &qword_227D66CB8);
    sub_227D381B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7EA6B0);
  }

  return result;
}

unint64_t sub_227D381B0()
{
  result = qword_27D7EA6B8;
  if (!qword_27D7EA6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7EA6B8);
  }

  return result;
}

unint64_t sub_227D38204()
{
  result = qword_27D7EA6C8;
  if (!qword_27D7EA6C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7EA6A8, &qword_227D66CB8);
    sub_227D38288();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7EA6C8);
  }

  return result;
}

unint64_t sub_227D38288()
{
  result = qword_27D7EA6D0;
  if (!qword_27D7EA6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7EA6D0);
  }

  return result;
}

unint64_t sub_227D382DC()
{
  result = qword_27D802A18;
  if (!qword_27D802A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D802A18);
  }

  return result;
}

unint64_t sub_227D38330()
{
  result = qword_27D7EA6E0;
  if (!qword_27D7EA6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7EA6E0);
  }

  return result;
}

unint64_t sub_227D38384()
{
  result = qword_27D7EA6F0;
  if (!qword_27D7EA6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7EA6F0);
  }

  return result;
}

unint64_t sub_227D383D8()
{
  result = qword_27D802A20;
  if (!qword_27D802A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D802A20);
  }

  return result;
}

unint64_t sub_227D3842C()
{
  result = qword_27D7EA700;
  if (!qword_27D7EA700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7EA700);
  }

  return result;
}

unint64_t sub_227D38480()
{
  result = qword_27D7EA710;
  if (!qword_27D7EA710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7EA710);
  }

  return result;
}

unint64_t sub_227D384D4()
{
  result = qword_27D802A28;
  if (!qword_27D802A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D802A28);
  }

  return result;
}

unint64_t sub_227D38528()
{
  result = qword_27D7EA728;
  if (!qword_27D7EA728)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7EA720, &qword_227D66CF0);
    sub_227D385AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7EA728);
  }

  return result;
}

unint64_t sub_227D385AC()
{
  result = qword_27D7EA730;
  if (!qword_27D7EA730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7EA730);
  }

  return result;
}

unint64_t sub_227D38600()
{
  result = qword_27D7EA740;
  if (!qword_27D7EA740)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7EA720, &qword_227D66CF0);
    sub_227D38684();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7EA740);
  }

  return result;
}

unint64_t sub_227D38684()
{
  result = qword_27D7EA748;
  if (!qword_27D7EA748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7EA748);
  }

  return result;
}

unint64_t sub_227D386D8()
{
  result = qword_27D802A30;
  if (!qword_27D802A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D802A30);
  }

  return result;
}

unint64_t sub_227D3872C()
{
  result = qword_27D802A38;
  if (!qword_27D802A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D802A38);
  }

  return result;
}

unint64_t sub_227D38780()
{
  result = qword_27D7EA770;
  if (!qword_27D7EA770)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7EA768, &qword_227D66D18);
    sub_227D38804();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7EA770);
  }

  return result;
}

unint64_t sub_227D38804()
{
  result = qword_27D7EA778;
  if (!qword_27D7EA778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7EA778);
  }

  return result;
}

unint64_t sub_227D38858()
{
  result = qword_27D7EA788;
  if (!qword_27D7EA788)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7EA768, &qword_227D66D18);
    sub_227D388DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7EA788);
  }

  return result;
}

unint64_t sub_227D388DC()
{
  result = qword_27D7EA790;
  if (!qword_27D7EA790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7EA790);
  }

  return result;
}

unint64_t sub_227D38930()
{
  result = qword_27D802A40;
  if (!qword_27D802A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D802A40);
  }

  return result;
}

unint64_t sub_227D38984()
{
  result = qword_27D7EA7A0;
  if (!qword_27D7EA7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7EA7A0);
  }

  return result;
}

unint64_t sub_227D389D8()
{
  result = qword_27D7EA7B0;
  if (!qword_27D7EA7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7EA7B0);
  }

  return result;
}

unint64_t sub_227D38A2C()
{
  result = qword_27D802A48;
  if (!qword_27D802A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D802A48);
  }

  return result;
}

unint64_t sub_227D38A80()
{
  result = qword_27D7EA7C0;
  if (!qword_27D7EA7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7EA7C0);
  }

  return result;
}

unint64_t sub_227D38AD4()
{
  result = qword_27D7EA7D0;
  if (!qword_27D7EA7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7EA7D0);
  }

  return result;
}

unint64_t sub_227D38B58()
{
  result = qword_27D802A50;
  if (!qword_27D802A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D802A50);
  }

  return result;
}

unint64_t sub_227D38BAC()
{
  result = qword_27D7EA7E8;
  if (!qword_27D7EA7E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7EA7E0, &qword_227D66D50);
    sub_227D38C30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7EA7E8);
  }

  return result;
}

unint64_t sub_227D38C30()
{
  result = qword_27D7EA7F0;
  if (!qword_27D7EA7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7EA7F0);
  }

  return result;
}

unint64_t sub_227D38C84()
{
  result = qword_27D7EA800;
  if (!qword_27D7EA800)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7EA7E0, &qword_227D66D50);
    sub_227D38D08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7EA800);
  }

  return result;
}

unint64_t sub_227D38D08()
{
  result = qword_27D7EA808;
  if (!qword_27D7EA808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7EA808);
  }

  return result;
}

unint64_t sub_227D38D5C()
{
  result = qword_27D802A58;
  if (!qword_27D802A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D802A58);
  }

  return result;
}

unint64_t sub_227D38DB0()
{
  result = qword_27D802A60;
  if (!qword_27D802A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D802A60);
  }

  return result;
}

unint64_t sub_227D38E04()
{
  result = qword_27D7EA838;
  if (!qword_27D7EA838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7EA838);
  }

  return result;
}

uint64_t sub_227D38E58(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7EA828, &qword_227D66D78);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_227D38EDC()
{
  result = qword_27D7EA850;
  if (!qword_27D7EA850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7EA850);
  }

  return result;
}

unint64_t sub_227D38F30()
{
  result = qword_27D802A68;
  if (!qword_27D802A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D802A68);
  }

  return result;
}

unint64_t sub_227D38F84()
{
  result = qword_27D802A70;
  if (!qword_27D802A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D802A70);
  }

  return result;
}

unint64_t sub_227D39040()
{
  result = qword_27D802A78;
  if (!qword_27D802A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D802A78);
  }

  return result;
}

unint64_t sub_227D39094()
{
  result = qword_27D802A80[0];
  if (!qword_27D802A80[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D802A80);
  }

  return result;
}

unint64_t sub_227D390E8()
{
  result = qword_27D7EA898;
  if (!qword_27D7EA898)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7EA890, &qword_227D66DC0);
    sub_227D3916C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7EA898);
  }

  return result;
}

unint64_t sub_227D3916C()
{
  result = qword_27D7EA8A0;
  if (!qword_27D7EA8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7EA8A0);
  }

  return result;
}

unint64_t sub_227D391C0()
{
  result = qword_27D7EA8B0;
  if (!qword_27D7EA8B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7EA890, &qword_227D66DC0);
    sub_227D39244();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7EA8B0);
  }

  return result;
}

unint64_t sub_227D39244()
{
  result = qword_27D7EA8B8;
  if (!qword_27D7EA8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7EA8B8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_16GameServicesCore12AMSResponsesO17AppWithActivitiesV4DataV8ActivityV0I13RelationshipsVSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_227D392E8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_161(-1);
  }

  if (a2 < 0 && *(a1 + 328))
  {
    v2 = *a1 + 0x7FFFFFFF;
  }

  else
  {
    OUTLINED_FUNCTION_142_7(a1);
  }

  return OUTLINED_FUNCTION_161(v2);
}

uint64_t sub_227D39328(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    result = OUTLINED_FUNCTION_33_11(result, 0);
    *(result + 296) = v3;
    *(result + 280) = v3;
    *(result + 264) = v3;
    *(result + 312) = v3;
    *result = v4;
    if (v5 < 0)
    {
      *(result + 328) = 1;
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

      return OUTLINED_FUNCTION_17_10(result, a2);
    }

    *(result + 328) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_17_10(result, a2);
    }
  }

  return result;
}

uint64_t sub_227D393B4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_161(-1);
  }

  if (a2 < 0 && *(a1 + 249))
  {
    v2 = *a1 + 0x7FFFFFFF;
  }

  else
  {
    OUTLINED_FUNCTION_142_7(a1);
  }

  return OUTLINED_FUNCTION_161(v2);
}

uint64_t sub_227D393F4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    result = OUTLINED_FUNCTION_33_11(result, 0);
    *(result + 248) = 0;
    *result = v3;
    if (v4 < 0)
    {
      *(result + 249) = 1;
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

      return OUTLINED_FUNCTION_17_10(result, a2);
    }

    *(result + 249) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_17_10(result, a2);
    }
  }

  return result;
}

uint64_t sub_227D39464(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 24))
    {
      return OUTLINED_FUNCTION_161(*a1 + 2147483646);
    }

    v3 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v3) = -1;
    }

    v4 = v3 - 1;
    if (v4 < 0)
    {
      return OUTLINED_FUNCTION_161(-1);
    }
  }

  else
  {
    v4 = -1;
  }

  return OUTLINED_FUNCTION_161(v4);
}

uint64_t sub_227D394B4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_227D3954C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_161(-1);
  }

  if (a2 < 0 && *(a1 + 184))
  {
    v2 = *a1 + 0x7FFFFFFF;
  }

  else
  {
    OUTLINED_FUNCTION_142_7(a1);
  }

  return OUTLINED_FUNCTION_161(v2);
}

uint64_t sub_227D3958C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0u;
    result = OUTLINED_FUNCTION_33_11(result, 0);
    *result = v3;
    if (v4 < 0)
    {
      *(result + 184) = 1;
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

      return OUTLINED_FUNCTION_17_10(result, a2);
    }

    *(result + 184) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_17_10(result, a2);
    }
  }

  return result;
}

uint64_t sub_227D39620(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_161(-1);
  }

  if (a2 < 0 && *(a1 + 224))
  {
    v2 = *a1 + 0x7FFFFFFF;
  }

  else
  {
    OUTLINED_FUNCTION_142_7(a1);
  }

  return OUTLINED_FUNCTION_161(v2);
}

uint64_t sub_227D39660(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 216) = 0;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    result = OUTLINED_FUNCTION_33_11(result, 0);
    *result = v3;
    if (v4 < 0)
    {
      *(result + 224) = 1;
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

      return OUTLINED_FUNCTION_17_10(result, a2);
    }

    *(result + 224) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_17_10(result, a2);
    }
  }

  return result;
}

uint64_t sub_227D396E8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_161(-1);
  }

  if (a2 < 0 && *(a1 + 216))
  {
    v2 = *a1 + 0x7FFFFFFF;
  }

  else
  {
    OUTLINED_FUNCTION_142_7(a1);
  }

  return OUTLINED_FUNCTION_161(v2);
}

uint64_t sub_227D39728(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    result = OUTLINED_FUNCTION_33_11(result, 0);
    *result = v3;
    if (v4 < 0)
    {
      *(result + 216) = 1;
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

      return OUTLINED_FUNCTION_17_10(result, a2);
    }

    *(result + 216) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_17_10(result, a2);
    }
  }

  return result;
}

uint64_t sub_227D3978C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_161(-1);
  }

  if (a2 < 0 && *(a1 + 16))
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

  return OUTLINED_FUNCTION_161(v2);
}

uint64_t sub_227D397E0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_161(-1);
  }

  if (a2 < 0 && *(a1 + 40))
  {
    v2 = *a1 + 0x7FFFFFFF;
  }

  else
  {
    OUTLINED_FUNCTION_142_7(a1);
  }

  return OUTLINED_FUNCTION_161(v2);
}

uint64_t sub_227D39820(uint64_t result, int a2, int a3)
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

      return OUTLINED_FUNCTION_17_10(result, a2);
    }

    *(result + 40) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_17_10(result, a2);
    }
  }

  return result;
}

uint64_t sub_227D39878(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 32))
    {
      return OUTLINED_FUNCTION_161(*a1 + 2147483646);
    }

    OUTLINED_FUNCTION_142_7(a1);
    v4 = v3 - 1;
    if (v4 < 0)
    {
      return OUTLINED_FUNCTION_161(-1);
    }
  }

  else
  {
    v4 = -1;
  }

  return OUTLINED_FUNCTION_161(v4);
}

uint64_t sub_227D398CC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_129_6(result, a2);
    }
  }

  return result;
}

uint64_t sub_227D39924(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 16))
    {
      return OUTLINED_FUNCTION_161(*a1 + 2147483646);
    }

    OUTLINED_FUNCTION_142_7(a1);
    v4 = v3 - 1;
    if (v4 < 0)
    {
      return OUTLINED_FUNCTION_161(-1);
    }
  }

  else
  {
    v4 = -1;
  }

  return OUTLINED_FUNCTION_161(v4);
}

uint64_t sub_227D39978(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_129_6(result, a2);
    }
  }

  return result;
}

uint64_t sub_227D399CC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_161(-1);
  }

  if (a2 < 0 && *(a1 + 112))
  {
    v2 = *a1 + 0x7FFFFFFF;
  }

  else
  {
    OUTLINED_FUNCTION_142_7(a1);
  }

  return OUTLINED_FUNCTION_161(v2);
}

uint64_t sub_227D39A0C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

      return OUTLINED_FUNCTION_17_10(result, a2);
    }

    *(result + 112) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_17_10(result, a2);
    }
  }

  return result;
}

uint64_t sub_227D39A7C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_161(-1);
  }

  if (a2 < 0 && *(a1 + 32))
  {
    v2 = *a1 + 0x7FFFFFFF;
  }

  else
  {
    OUTLINED_FUNCTION_142_7(a1);
  }

  return OUTLINED_FUNCTION_161(v2);
}

_BYTE *sub_227D39AE0(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_14_2(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_12_0(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_13_9(result, v6);
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
          result = OUTLINED_FUNCTION_3_0(result, a2 + 7);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_227D39BEC(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_14_2(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_12_0(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_13_9(result, v6);
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
          result = OUTLINED_FUNCTION_3_0(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_227D39CFC(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_14_2(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_12_0(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_13_9(result, v6);
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
          result = OUTLINED_FUNCTION_3_0(result, a2 + 3);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_227D39DD0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_161(-1);
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return OUTLINED_FUNCTION_161((*a1 | (v4 << 8)) - 10);
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

      return OUTLINED_FUNCTION_161((*a1 | (v4 << 8)) - 10);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_161((*a1 | (v4 << 8)) - 10);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_161(v8);
}

_BYTE *sub_227D39E54(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_14_2(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_12_0(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_13_9(result, v6);
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
          result = OUTLINED_FUNCTION_3_0(result, a2 + 9);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_227D39F4C(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_14_2(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_12_0(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_13_9(result, v6);
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
          result = OUTLINED_FUNCTION_3_0(result, a2 + 4);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_227D3A028(_BYTE *result, int a2, int a3)
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

_BYTE *sub_227D3A0D0(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_14_2(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_12_0(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_13_9(result, v6);
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
          result = OUTLINED_FUNCTION_3_0(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_227D3A198(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_161(-1);
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
      return OUTLINED_FUNCTION_161((*a1 | (v4 << 8)) - 13);
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

      return OUTLINED_FUNCTION_161((*a1 | (v4 << 8)) - 13);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_161((*a1 | (v4 << 8)) - 13);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_161(v8);
}

_BYTE *sub_227D3A21C(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF3)
  {
    v6 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_14_2(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_12_0(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_13_9(result, v6);
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
          result = OUTLINED_FUNCTION_3_0(result, a2 + 12);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_227D3A2E8()
{
  result = qword_27D804690[0];
  if (!qword_27D804690[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D804690);
  }

  return result;
}

unint64_t sub_227D3A340()
{
  result = qword_27D8048A0[0];
  if (!qword_27D8048A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D8048A0);
  }

  return result;
}

unint64_t sub_227D3A398()
{
  result = qword_27D804AB0[0];
  if (!qword_27D804AB0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D804AB0);
  }

  return result;
}

unint64_t sub_227D3A3F0()
{
  result = qword_27D804CC0[0];
  if (!qword_27D804CC0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D804CC0);
  }

  return result;
}

unint64_t sub_227D3A448()
{
  result = qword_27D804ED0[0];
  if (!qword_27D804ED0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D804ED0);
  }

  return result;
}

unint64_t sub_227D3A4A0()
{
  result = qword_27D8050E0[0];
  if (!qword_27D8050E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D8050E0);
  }

  return result;
}

unint64_t sub_227D3A4F8()
{
  result = qword_27D8052F0[0];
  if (!qword_27D8052F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D8052F0);
  }

  return result;
}

unint64_t sub_227D3A550()
{
  result = qword_27D805500[0];
  if (!qword_27D805500[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D805500);
  }

  return result;
}

unint64_t sub_227D3A5A8()
{
  result = qword_27D805710[0];
  if (!qword_27D805710[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D805710);
  }

  return result;
}

unint64_t sub_227D3A600()
{
  result = qword_27D805920[0];
  if (!qword_27D805920[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D805920);
  }

  return result;
}

unint64_t sub_227D3A658()
{
  result = qword_27D805B30[0];
  if (!qword_27D805B30[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D805B30);
  }

  return result;
}

unint64_t sub_227D3A6B0()
{
  result = qword_27D805D40[0];
  if (!qword_27D805D40[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D805D40);
  }

  return result;
}

unint64_t sub_227D3A708()
{
  result = qword_27D805F50[0];
  if (!qword_27D805F50[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D805F50);
  }

  return result;
}

unint64_t sub_227D3A760()
{
  result = qword_27D806160[0];
  if (!qword_27D806160[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D806160);
  }

  return result;
}

unint64_t sub_227D3A7B8()
{
  result = qword_27D806370[0];
  if (!qword_27D806370[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D806370);
  }

  return result;
}

unint64_t sub_227D3A810()
{
  result = qword_27D806580[0];
  if (!qword_27D806580[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D806580);
  }

  return result;
}

unint64_t sub_227D3A868()
{
  result = qword_27D806790[0];
  if (!qword_27D806790[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D806790);
  }

  return result;
}

unint64_t sub_227D3A8C0()
{
  result = qword_27D8069A0[0];
  if (!qword_27D8069A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D8069A0);
  }

  return result;
}

unint64_t sub_227D3A918()
{
  result = qword_27D806BB0[0];
  if (!qword_27D806BB0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D806BB0);
  }

  return result;
}

unint64_t sub_227D3A970()
{
  result = qword_27D806DC0[0];
  if (!qword_27D806DC0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D806DC0);
  }

  return result;
}

unint64_t sub_227D3A9C8()
{
  result = qword_27D806FD0[0];
  if (!qword_27D806FD0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D806FD0);
  }

  return result;
}

unint64_t sub_227D3AA20()
{
  result = qword_27D8071E0[0];
  if (!qword_27D8071E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D8071E0);
  }

  return result;
}

unint64_t sub_227D3AA78()
{
  result = qword_27D8073F0[0];
  if (!qword_27D8073F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D8073F0);
  }

  return result;
}

unint64_t sub_227D3AAD0()
{
  result = qword_27D807600[0];
  if (!qword_27D807600[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D807600);
  }

  return result;
}

unint64_t sub_227D3AB28()
{
  result = qword_27D807810[0];
  if (!qword_27D807810[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D807810);
  }

  return result;
}

unint64_t sub_227D3AB80()
{
  result = qword_27D807A20[0];
  if (!qword_27D807A20[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D807A20);
  }

  return result;
}

unint64_t sub_227D3ABD8()
{
  result = qword_27D807C30[0];
  if (!qword_27D807C30[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D807C30);
  }

  return result;
}

unint64_t sub_227D3AC30()
{
  result = qword_27D807D40;
  if (!qword_27D807D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D807D40);
  }

  return result;
}

unint64_t sub_227D3AC88()
{
  result = qword_27D807D48[0];
  if (!qword_27D807D48[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D807D48);
  }

  return result;
}

unint64_t sub_227D3ACE0()
{
  result = qword_27D807DD0;
  if (!qword_27D807DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D807DD0);
  }

  return result;
}

unint64_t sub_227D3AD38()
{
  result = qword_27D807DD8[0];
  if (!qword_27D807DD8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D807DD8);
  }

  return result;
}

unint64_t sub_227D3AD90()
{
  result = qword_27D807E60;
  if (!qword_27D807E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D807E60);
  }

  return result;
}

unint64_t sub_227D3ADE8()
{
  result = qword_27D807E68[0];
  if (!qword_27D807E68[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D807E68);
  }

  return result;
}

unint64_t sub_227D3AE40()
{
  result = qword_27D807EF0;
  if (!qword_27D807EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D807EF0);
  }

  return result;
}

unint64_t sub_227D3AE98()
{
  result = qword_27D807EF8[0];
  if (!qword_27D807EF8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D807EF8);
  }

  return result;
}

unint64_t sub_227D3AEF0()
{
  result = qword_27D807F80;
  if (!qword_27D807F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D807F80);
  }

  return result;
}

unint64_t sub_227D3AF48()
{
  result = qword_27D807F88[0];
  if (!qword_27D807F88[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D807F88);
  }

  return result;
}

unint64_t sub_227D3AFA0()
{
  result = qword_27D808010;
  if (!qword_27D808010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D808010);
  }

  return result;
}

unint64_t sub_227D3AFF8()
{
  result = qword_27D808018[0];
  if (!qword_27D808018[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D808018);
  }

  return result;
}

unint64_t sub_227D3B050()
{
  result = qword_27D8080A0;
  if (!qword_27D8080A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8080A0);
  }

  return result;
}

unint64_t sub_227D3B0A8()
{
  result = qword_27D8080A8[0];
  if (!qword_27D8080A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D8080A8);
  }

  return result;
}

unint64_t sub_227D3B100()
{
  result = qword_27D808130;
  if (!qword_27D808130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D808130);
  }

  return result;
}

unint64_t sub_227D3B158()
{
  result = qword_27D808138[0];
  if (!qword_27D808138[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D808138);
  }

  return result;
}

unint64_t sub_227D3B1B0()
{
  result = qword_27D8081C0;
  if (!qword_27D8081C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8081C0);
  }

  return result;
}

unint64_t sub_227D3B208()
{
  result = qword_27D8081C8[0];
  if (!qword_27D8081C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D8081C8);
  }

  return result;
}

unint64_t sub_227D3B260()
{
  result = qword_27D808250;
  if (!qword_27D808250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D808250);
  }

  return result;
}

unint64_t sub_227D3B2B8()
{
  result = qword_27D808258[0];
  if (!qword_27D808258[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D808258);
  }

  return result;
}

unint64_t sub_227D3B310()
{
  result = qword_27D8082E0;
  if (!qword_27D8082E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8082E0);
  }

  return result;
}

unint64_t sub_227D3B368()
{
  result = qword_27D8082E8[0];
  if (!qword_27D8082E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D8082E8);
  }

  return result;
}

unint64_t sub_227D3B3C0()
{
  result = qword_27D808370;
  if (!qword_27D808370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D808370);
  }

  return result;
}

unint64_t sub_227D3B418()
{
  result = qword_27D808378;
  if (!qword_27D808378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D808378);
  }

  return result;
}

unint64_t sub_227D3B470()
{
  result = qword_27D808400;
  if (!qword_27D808400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D808400);
  }

  return result;
}

unint64_t sub_227D3B4C8()
{
  result = qword_27D808408[0];
  if (!qword_27D808408[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D808408);
  }

  return result;
}

unint64_t sub_227D3B520()
{
  result = qword_27D808490;
  if (!qword_27D808490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D808490);
  }

  return result;
}

unint64_t sub_227D3B578()
{
  result = qword_27D808498[0];
  if (!qword_27D808498[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D808498);
  }

  return result;
}

unint64_t sub_227D3B5D0()
{
  result = qword_27D808520;
  if (!qword_27D808520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D808520);
  }

  return result;
}

unint64_t sub_227D3B628()
{
  result = qword_27D808528[0];
  if (!qword_27D808528[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D808528);
  }

  return result;
}

unint64_t sub_227D3B680()
{
  result = qword_27D8085B0;
  if (!qword_27D8085B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8085B0);
  }

  return result;
}

unint64_t sub_227D3B6D8()
{
  result = qword_27D8085B8[0];
  if (!qword_27D8085B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D8085B8);
  }

  return result;
}

unint64_t sub_227D3B730()
{
  result = qword_27D808640;
  if (!qword_27D808640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D808640);
  }

  return result;
}

unint64_t sub_227D3B788()
{
  result = qword_27D808648[0];
  if (!qword_27D808648[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D808648);
  }

  return result;
}

unint64_t sub_227D3B7E0()
{
  result = qword_27D8086D0;
  if (!qword_27D8086D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8086D0);
  }

  return result;
}

unint64_t sub_227D3B838()
{
  result = qword_27D8086D8[0];
  if (!qword_27D8086D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D8086D8);
  }

  return result;
}

unint64_t sub_227D3B890()
{
  result = qword_27D808760;
  if (!qword_27D808760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D808760);
  }

  return result;
}

unint64_t sub_227D3B8E8()
{
  result = qword_27D808768[0];
  if (!qword_27D808768[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D808768);
  }

  return result;
}

unint64_t sub_227D3B940()
{
  result = qword_27D8087F0;
  if (!qword_27D8087F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8087F0);
  }

  return result;
}

unint64_t sub_227D3B998()
{
  result = qword_27D8087F8[0];
  if (!qword_27D8087F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D8087F8);
  }

  return result;
}

unint64_t sub_227D3B9F0()
{
  result = qword_27D808880;
  if (!qword_27D808880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D808880);
  }

  return result;
}

unint64_t sub_227D3BA48()
{
  result = qword_27D808888[0];
  if (!qword_27D808888[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D808888);
  }

  return result;
}

unint64_t sub_227D3BAA0()
{
  result = qword_27D808910;
  if (!qword_27D808910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D808910);
  }

  return result;
}

unint64_t sub_227D3BAF8()
{
  result = qword_27D808918[0];
  if (!qword_27D808918[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D808918);
  }

  return result;
}

unint64_t sub_227D3BB50()
{
  result = qword_27D8089A0;
  if (!qword_27D8089A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8089A0);
  }

  return result;
}

unint64_t sub_227D3BBA8()
{
  result = qword_27D8089A8[0];
  if (!qword_27D8089A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D8089A8);
  }

  return result;
}

unint64_t sub_227D3BC00()
{
  result = qword_27D808A30;
  if (!qword_27D808A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D808A30);
  }

  return result;
}

unint64_t sub_227D3BC58()
{
  result = qword_27D808A38[0];
  if (!qword_27D808A38[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D808A38);
  }

  return result;
}

unint64_t sub_227D3BCB0()
{
  result = qword_27D808AC0;
  if (!qword_27D808AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D808AC0);
  }

  return result;
}

unint64_t sub_227D3BD08()
{
  result = qword_27D808AC8[0];
  if (!qword_27D808AC8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D808AC8);
  }

  return result;
}

unint64_t sub_227D3BD60()
{
  result = qword_27D808B50;
  if (!qword_27D808B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D808B50);
  }

  return result;
}

unint64_t sub_227D3BDB8()
{
  result = qword_27D808B58[0];
  if (!qword_27D808B58[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D808B58);
  }

  return result;
}

unint64_t sub_227D3BE10()
{
  result = qword_27D808BE0;
  if (!qword_27D808BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D808BE0);
  }

  return result;
}

unint64_t sub_227D3BE68()
{
  result = qword_27D808BE8[0];
  if (!qword_27D808BE8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D808BE8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_22_14()
{

  return sub_227D4DA78();
}

uint64_t OUTLINED_FUNCTION_33_11(uint64_t result, __n128 a2)
{
  *(result + 152) = a2;
  *(result + 136) = a2;
  *(result + 120) = a2;
  *(result + 104) = a2;
  *(result + 88) = a2;
  *(result + 72) = a2;
  *(result + 56) = a2;
  *(result + 40) = a2;
  *(result + 24) = a2;
  *(result + 8) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_94_8()
{
  v3 = *(v1 - 72);

  return __swift_destroy_boxed_opaque_existential_0(v0);
}

uint64_t OUTLINED_FUNCTION_102_7()
{

  return sub_227D4DA08();
}

void OUTLINED_FUNCTION_122_4()
{
  *(v0 + 16) = v2;
  v5 = v0 + 16 * v4;
  *(v5 + 32) = v3;
  *(v5 + 40) = v1;
}

uint64_t OUTLINED_FUNCTION_127_4()
{
  __swift_destroy_boxed_opaque_existential_0(v0);
}

uint64_t OUTLINED_FUNCTION_131_7()
{

  return sub_227D4DBF8();
}

uint64_t OUTLINED_FUNCTION_132_8()
{
  v4 = *(v1 - 1);
  v3 = *v1;
  v5 = *(v0 + 24);
  v6 = *(v0 + 16) + 1;

  return sub_227D4CE58();
}

char *OUTLINED_FUNCTION_133_6()
{

  return sub_227B3CA88(0, v0, 0);
}

void *OUTLINED_FUNCTION_150_6(void *a1)
{

  return memcpy(a1, (v1 + 16), 0xB8uLL);
}

uint64_t OnboardingService.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC16GameServicesCore17OnboardingService_id;
  v4 = sub_227D49EF8();
  v5 = OUTLINED_FUNCTION_62_0(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t sub_227D3C3B8()
{
  v0 = sub_227D49EF8();
  __swift_allocate_value_buffer(v0, qword_280E7BDE8);
  __swift_project_value_buffer(v0, qword_280E7BDE8);
  return sub_227D49E28();
}

uint64_t sub_227D3C404()
{
  if (_MergedGlobals_18 != -1)
  {
    OUTLINED_FUNCTION_29_14();
  }

  v0 = sub_227D49EF8();

  return __swift_project_value_buffer(v0, qword_280E7BDE8);
}

uint64_t static OnboardingService.actorID.getter@<X0>(uint64_t a1@<X8>)
{
  if (_MergedGlobals_18 != -1)
  {
    OUTLINED_FUNCTION_29_14();
  }

  v2 = sub_227D49EF8();
  v3 = __swift_project_value_buffer(v2, qword_280E7BDE8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_227D3C4F0()
{
  OUTLINED_FUNCTION_104_0();
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  sub_227D3C53C(v2, v0);
  return v5;
}

uint64_t sub_227D3C53C(uint64_t a1, uint64_t a2)
{
  v16 = a2;
  v15 = sub_227D49EF8();
  v4 = *(v15 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v15);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  v8 = OBJC_IVAR____TtC16GameServicesCore17OnboardingService_actorSystem;
  *(v2 + OBJC_IVAR____TtC16GameServicesCore17OnboardingService_actorSystem) = a1;
  type metadata accessor for OnboardingService();
  v17 = a1;
  sub_227D49D78();
  OUTLINED_FUNCTION_1_39();
  sub_227B0F95C(v9, v10);
  OUTLINED_FUNCTION_0_60();
  sub_227B0F95C(v11, v12);

  OUTLINED_FUNCTION_105();
  sub_227D493B8();
  (*(v4 + 32))(v2 + OBJC_IVAR____TtC16GameServicesCore17OnboardingService_id, v7, v15);
  *(v2 + OBJC_IVAR____TtC16GameServicesCore17OnboardingService_dataProvider) = v16;
  v17 = *(v2 + v8);

  OUTLINED_FUNCTION_105();
  sub_227D49398();

  return v2;
}

uint64_t type metadata accessor for OnboardingService()
{
  result = qword_27D809280;
  if (!qword_27D809280)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t OnboardingService.describeOnboarding(for:)()
{
  OUTLINED_FUNCTION_6();
  v3 = OUTLINED_FUNCTION_79_0(v1, v2);
  v0[5] = v3;
  OUTLINED_FUNCTION_10_0(v3);
  v0[6] = v4;
  v6 = *(v5 + 64);
  v0[7] = OUTLINED_FUNCTION_30();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
  v0[8] = v7;
  OUTLINED_FUNCTION_10_0(v7);
  v0[9] = v8;
  v10 = *(v9 + 64);
  v0[10] = OUTLINED_FUNCTION_30();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6E18, &qword_227D51060);
  v0[11] = v11;
  OUTLINED_FUNCTION_10_0(v11);
  v0[12] = v12;
  v14 = *(v13 + 64);
  v0[13] = OUTLINED_FUNCTION_30();
  v15 = sub_227D49D58();
  v0[14] = v15;
  OUTLINED_FUNCTION_10_0(v15);
  v0[15] = v16;
  v18 = *(v17 + 64);
  v0[16] = OUTLINED_FUNCTION_30();
  v19 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v19, v20, v21);
}

uint64_t sub_227D3C8F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  OUTLINED_FUNCTION_111();
  v19 = v18[4];
  if (swift_distributed_actor_is_remote())
  {
    OUTLINED_FUNCTION_45_3();
    OUTLINED_FUNCTION_36(v20);
    v21 = OUTLINED_FUNCTION_25_4();
    v22(v21);
    OUTLINED_FUNCTION_7_13();
    OUTLINED_FUNCTION_5_30(&qword_27D7E6BD8);
    OUTLINED_FUNCTION_4_31(&qword_27D7E6BE8);
    OUTLINED_FUNCTION_18_7();
    if (v17)
    {
      v28 = v18[15];
      v29 = OUTLINED_FUNCTION_64();
      v30(v29);
      (*(v28 + 8))(v18[16], v18[14]);
      OUTLINED_FUNCTION_89_0();
      v31 = v18[7];

      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_54_4();

      return v32();
    }

    else
    {
      v23 = v18[16];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
      sub_227D49D28();
      v24 = v18[16];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E81C8, &unk_227D69A00);
      sub_227D3D578(&qword_27D7E81D0, &qword_27D7E81D8);
      OUTLINED_FUNCTION_20_5();
      sub_227D3D578(v25, v26);
      OUTLINED_FUNCTION_17();
      v27 = v18[16];
      sub_227D49D08();
      v38 = v18[7];
      OUTLINED_FUNCTION_57();
      sub_227D49468();
      v39 = *(MEMORY[0x277D0CE28] + 4);
      v40 = swift_task_alloc();
      v18[17] = v40;
      type metadata accessor for OnboardingService();
      OUTLINED_FUNCTION_0_60();
      sub_227B0F95C(v41, v42);
      OUTLINED_FUNCTION_48_0();
      *v40 = v43;
      OUTLINED_FUNCTION_17_19(v44);
      OUTLINED_FUNCTION_33();

      return MEMORY[0x282164B00](v45, v46, v47, v48, v49, v50, v51, v52, a9, a10, a11, a12, a13, a14, a15, a16, a17);
    }
  }

  else
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_47();
    v18[19] = v35;
    *v35 = v36;
    OUTLINED_FUNCTION_50_4(v35);
    OUTLINED_FUNCTION_54_4();

    return sub_227D3D0BC();
  }
}

uint64_t sub_227D3CBF4()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_2();
  *v3 = v2;
  v5 = *(v4 + 136);
  v6 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v7 = v6;
  *(v8 + 144) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_227D3CCF0()
{
  OUTLINED_FUNCTION_51_0();
  v2 = v0[15];
  v1 = v0[16];
  v4 = v0[13];
  v3 = v0[14];
  v5 = v0[11];
  v6 = v0[12];
  v7 = OUTLINED_FUNCTION_62();
  v8(v7);
  v9 = OUTLINED_FUNCTION_42();
  v10(v9);
  v11 = OUTLINED_FUNCTION_22_1();
  v12(v11);
  OUTLINED_FUNCTION_89_0();
  v13 = v0[7];

  OUTLINED_FUNCTION_18();

  return v14();
}

uint64_t sub_227D3CDB4()
{
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_77_0();
  v2 = v0[19];
  v3 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v4 = v3;

  OUTLINED_FUNCTION_81_1();
  v6 = *(v5 + 128);
  v7 = v0[13];
  v8 = v0[10];
  v9 = v0[7];

  OUTLINED_FUNCTION_27();

  return v10();
}

uint64_t sub_227D3CF0C(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2[2] = *a2;
  v4 = *(v3 - 8);
  v2[3] = v4;
  v5 = *(v4 + 64) + 15;
  v2[4] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_227D49CF8();
  v7 = swift_task_alloc();
  v2[5] = v7;
  *v7 = v2;
  v7[1] = sub_227BC82EC;

  return OnboardingService.describeOnboarding(for:)();
}

uint64_t sub_227D3D0BC()
{
  OUTLINED_FUNCTION_6();
  v3 = v2;
  v1[8] = v2;
  v1[9] = v0;
  v1[7] = v4;
  v5 = swift_task_alloc();
  v1[10] = v5;
  *v5 = v1;
  OUTLINED_FUNCTION_35(v5);

  return sub_227D3D614(v3);
}

uint64_t sub_227D3D150()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  v6 = *(v5 + 80);
  v7 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v8 = v7;

  if (v0)
  {
    OUTLINED_FUNCTION_27();

    return v9();
  }

  else
  {
    v11 = *(v3 + 72);
    OUTLINED_FUNCTION_44_9();

    return MEMORY[0x2822009F8](v12, v13, v14);
  }
}

uint64_t sub_227D3D270()
{
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_65_12(*(v0[9] + OBJC_IVAR____TtC16GameServicesCore17OnboardingService_dataProvider));
  v1 = v0[5];
  v2 = v0[6];
  v3 = *(OUTLINED_FUNCTION_13_0(v0 + 2) + 168);
  OUTLINED_FUNCTION_36_0();
  v13 = v4 + *v4;
  v6 = *(v5 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  v0[11] = v7;
  *v7 = v8;
  v7[1] = sub_227D3D38C;
  v9 = v0[7];
  v10 = v0[8];
  OUTLINED_FUNCTION_62_9();

  return v11();
}

uint64_t sub_227D3D38C()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  v5 = *(v1 + 88);
  *v4 = *v2;
  *(v3 + 96) = v0;

  OUTLINED_FUNCTION_81_1();
  v7 = *(v6 + 72);
  OUTLINED_FUNCTION_44_9();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_227D3D4A0()
{
  OUTLINED_FUNCTION_6();
  v1 = *(v0 + 56);
  v2 = sub_227D49FE8();
  __swift_storeEnumTagSinglePayload(v1, 0, 1, v2);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  OUTLINED_FUNCTION_18();

  return v3();
}

uint64_t sub_227D3D51C()
{
  OUTLINED_FUNCTION_6();
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = *(v0 + 96);
  OUTLINED_FUNCTION_18();

  return v2();
}

uint64_t sub_227D3D578(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E81C8, &unk_227D69A00);
    sub_227B0F95C(a2, MEMORY[0x277D0D008]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_227D3D614(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return OUTLINED_FUNCTION_2_0(sub_227D3D630, v1);
}

uint64_t sub_227D3D630()
{
  OUTLINED_FUNCTION_119();
  v2 = v1[7];
  v3 = *(v1[8] + OBJC_IVAR____TtC16GameServicesCore17OnboardingService_dataProvider);
  v1[9] = v3;
  OUTLINED_FUNCTION_65_12(v3);
  OUTLINED_FUNCTION_41_11();
  v1[10] = v4;
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_0(v1 + 2);
    OUTLINED_FUNCTION_19_0();
    OUTLINED_FUNCTION_128();

    __asm { BRAA            X1, X16 }
  }

  v7 = swift_task_alloc();
  v1[11] = v7;
  *v7 = v1;
  OUTLINED_FUNCTION_10_21(v7);
  OUTLINED_FUNCTION_128();

  return sub_227BC0AB4();
}

uint64_t sub_227D3D72C()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  v6 = *(v5 + 88);
  v7 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v8 = v7;
  v3[12] = v0;

  if (v0)
  {
    v9 = v3[8];
    v10 = sub_227D3D9B8;
  }

  else
  {
    v11 = v3[10];
    v12 = v3[8];

    v10 = sub_227D3D83C;
    v9 = v12;
  }

  return MEMORY[0x2822009F8](v10, v9, 0);
}

uint64_t sub_227D3D83C()
{
  OUTLINED_FUNCTION_6();
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = swift_task_alloc();
  v0[13] = v1;
  *v1 = v0;
  v1[1] = sub_227D3D8D8;
  v2 = v0[9];
  OUTLINED_FUNCTION_53(v0[7]);

  return GameServicesDataProvider.refreshOnboarding(for:)();
}

uint64_t sub_227D3D8D8()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v2 = *(v1 + 104);
  v3 = *v0;
  OUTLINED_FUNCTION_5_4();
  *v4 = v3;

  OUTLINED_FUNCTION_18();

  return v5();
}

uint64_t sub_227D3D9B8()
{
  OUTLINED_FUNCTION_6();
  v1 = v0[10];

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v2 = v0[12];
  OUTLINED_FUNCTION_18();

  return v3();
}

uint64_t OnboardingService.refreshOnboarding(for:)()
{
  OUTLINED_FUNCTION_6();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_227D49458();
  v1[4] = v3;
  OUTLINED_FUNCTION_10_0(v3);
  v1[5] = v4;
  v6 = *(v5 + 64);
  v1[6] = OUTLINED_FUNCTION_30();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
  v1[7] = v7;
  OUTLINED_FUNCTION_10_0(v7);
  v1[8] = v8;
  v10 = *(v9 + 64);
  v1[9] = OUTLINED_FUNCTION_30();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6E18, &qword_227D51060);
  v1[10] = v11;
  OUTLINED_FUNCTION_10_0(v11);
  v1[11] = v12;
  v14 = *(v13 + 64);
  v1[12] = OUTLINED_FUNCTION_30();
  v15 = sub_227D49D58();
  v1[13] = v15;
  OUTLINED_FUNCTION_10_0(v15);
  v1[14] = v16;
  v18 = *(v17 + 64);
  v1[15] = OUTLINED_FUNCTION_30();
  v19 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v19, v20, v21);
}

uint64_t sub_227D3DBBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_111();
  v13 = v12[3];
  if (swift_distributed_actor_is_remote())
  {
    v14 = v12[15];
    v15 = v12[12];
    v17 = v12[8];
    v16 = v12[9];
    v18 = v12[7];
    v19 = v12[2];
    OUTLINED_FUNCTION_36(v12[3]);
    v20 = OUTLINED_FUNCTION_25_4();
    v21(v20);
    OUTLINED_FUNCTION_7_13();
    OUTLINED_FUNCTION_5_30(&qword_27D7E6BD8);
    OUTLINED_FUNCTION_4_31(&qword_27D7E6BE8);
    OUTLINED_FUNCTION_18_7();
    if (v14)
    {
      v24 = v12[14];
      (*(v12[11] + 8))(v12[12], v12[10]);
      (*(v24 + 8))(v12[15], v12[13]);
      v25 = v12[15];
      v26 = v12[12];
      v27 = v12[9];
      v28 = v12[6];

      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_33();

      __asm { BRAA            X1, X16 }
    }

    v22 = v12[15];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
    sub_227D49D28();
    v23 = v12[15];
    sub_227D49D08();
    v36 = v12[6];
    OUTLINED_FUNCTION_57();
    sub_227D49468();
    v37 = *(MEMORY[0x277D0CE38] + 4);
    v38 = swift_task_alloc();
    v12[16] = v38;
    type metadata accessor for OnboardingService();
    OUTLINED_FUNCTION_0_60();
    sub_227B0F95C(v39, v40);
    OUTLINED_FUNCTION_48_0();
    *v38 = v41;
    v38[1] = sub_227CCD834;
    v42 = v12[15];
    v43 = v12[6];
    v44 = v12[3];
    OUTLINED_FUNCTION_19_1();
    OUTLINED_FUNCTION_33();

    return MEMORY[0x282164B10](v45, v46, v47, v48, v49, v50, v51, v52, a9, a10, a11, a12);
  }

  else
  {
    v31 = swift_task_alloc();
    v12[18] = v31;
    *v31 = v12;
    v31[1] = sub_227D3DE5C;
    v32 = v12[3];
    OUTLINED_FUNCTION_53(v12[2]);
    OUTLINED_FUNCTION_33();

    return sub_227D3D614(v33);
  }
}

uint64_t sub_227D3DE5C()
{
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_77_0();
  v2 = v0[18];
  v3 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v4 = v3;

  OUTLINED_FUNCTION_81_1();
  v6 = *(v5 + 120);
  v7 = v0[12];
  v8 = v0[9];
  v9 = v0[6];

  OUTLINED_FUNCTION_27();

  return v10();
}

uint64_t sub_227D3DFB4(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2[2] = *a2;
  v4 = *(v3 - 8);
  v2[3] = v4;
  v5 = *(v4 + 64) + 15;
  v2[4] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_227D49CF8();
  v7 = swift_task_alloc();
  v2[5] = v7;
  *v7 = v2;
  v7[1] = sub_227BC49AC;

  return OnboardingService.refreshOnboarding(for:)();
}

uint64_t OnboardingService.describeOnboarding2(for:)()
{
  OUTLINED_FUNCTION_6();
  v3 = OUTLINED_FUNCTION_79_0(v1, v2);
  v0[5] = v3;
  OUTLINED_FUNCTION_10_0(v3);
  v0[6] = v4;
  v6 = *(v5 + 64);
  v0[7] = OUTLINED_FUNCTION_30();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
  v0[8] = v7;
  OUTLINED_FUNCTION_10_0(v7);
  v0[9] = v8;
  v10 = *(v9 + 64);
  v0[10] = OUTLINED_FUNCTION_30();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6E18, &qword_227D51060);
  v0[11] = v11;
  OUTLINED_FUNCTION_10_0(v11);
  v0[12] = v12;
  v14 = *(v13 + 64);
  v0[13] = OUTLINED_FUNCTION_30();
  v15 = sub_227D49D58();
  v0[14] = v15;
  OUTLINED_FUNCTION_10_0(v15);
  v0[15] = v16;
  v18 = *(v17 + 64);
  v0[16] = OUTLINED_FUNCTION_30();
  v19 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v19, v20, v21);
}

uint64_t sub_227D3E2E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  OUTLINED_FUNCTION_111();
  v19 = v18[4];
  if (swift_distributed_actor_is_remote())
  {
    OUTLINED_FUNCTION_45_3();
    OUTLINED_FUNCTION_36(v20);
    v21 = OUTLINED_FUNCTION_25_4();
    v22(v21);
    OUTLINED_FUNCTION_7_13();
    OUTLINED_FUNCTION_5_30(&qword_27D7E6BD8);
    OUTLINED_FUNCTION_4_31(&qword_27D7E6BE8);
    OUTLINED_FUNCTION_18_7();
    if (v17)
    {
      v28 = v18[15];
      v29 = OUTLINED_FUNCTION_64();
      v30(v29);
      (*(v28 + 8))(v18[16], v18[14]);
      OUTLINED_FUNCTION_89_0();
      v31 = v18[7];

      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_54_4();

      return v32();
    }

    else
    {
      v23 = v18[16];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
      sub_227D49D28();
      v24 = v18[16];
      sub_227D49FE8();
      v25 = MEMORY[0x277D0D008];
      sub_227B0F95C(&qword_27D7E81D8, MEMORY[0x277D0D008]);
      OUTLINED_FUNCTION_20_5();
      sub_227B0F95C(v26, v25);
      OUTLINED_FUNCTION_17();
      v27 = v18[16];
      sub_227D49D08();
      v40 = v18[7];
      OUTLINED_FUNCTION_57();
      sub_227D49468();
      v41 = *(MEMORY[0x277D0CE28] + 4);
      v42 = swift_task_alloc();
      v18[17] = v42;
      type metadata accessor for OnboardingService();
      OUTLINED_FUNCTION_0_60();
      sub_227B0F95C(v43, v44);
      OUTLINED_FUNCTION_48_0();
      *v42 = v45;
      OUTLINED_FUNCTION_17_19(v46);
      OUTLINED_FUNCTION_33();

      return MEMORY[0x282164B00](v47, v48, v49, v50, v51, v52, v53, v54, a9, a10, a11, a12, a13, a14, a15, a16, a17);
    }
  }

  else
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_47();
    v18[19] = v35;
    *v35 = v36;
    OUTLINED_FUNCTION_50_4(v35);
    OUTLINED_FUNCTION_54_4();

    return sub_227D3E864(v37, v38);
  }
}

uint64_t sub_227D3E5B8()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_2();
  *v3 = v2;
  v5 = *(v4 + 136);
  v6 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v7 = v6;
  *(v8 + 144) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_227D3E6B4(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2[2] = *a2;
  v4 = *(v3 - 8);
  v2[3] = v4;
  v5 = *(v4 + 64) + 15;
  v2[4] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_227D49CF8();
  v7 = swift_task_alloc();
  v2[5] = v7;
  *v7 = v2;
  v7[1] = sub_227BC82EC;

  return OnboardingService.describeOnboarding2(for:)();
}

uint64_t sub_227D3E864(uint64_t a1, uint64_t a2)
{
  v3[13] = a2;
  v3[14] = v2;
  v3[12] = a1;
  return OUTLINED_FUNCTION_2_0(sub_227D3E884, v2);
}

uint64_t sub_227D3E884()
{
  OUTLINED_FUNCTION_119();
  v2 = v1[13];
  v3 = *(v1[14] + OBJC_IVAR____TtC16GameServicesCore17OnboardingService_dataProvider);
  v1[15] = v3;
  OUTLINED_FUNCTION_65_12(v3);
  OUTLINED_FUNCTION_41_11();
  v1[16] = v4;
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_0(v1 + 2);
    OUTLINED_FUNCTION_19_0();
    OUTLINED_FUNCTION_128();

    __asm { BRAA            X1, X16 }
  }

  v7 = swift_task_alloc();
  v1[17] = v7;
  *v7 = v1;
  OUTLINED_FUNCTION_10_21(v7);
  OUTLINED_FUNCTION_128();

  return sub_227BC0AB4();
}

uint64_t sub_227D3E980()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  v6 = *(v5 + 136);
  v7 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v8 = v7;
  v3[18] = v0;

  if (v0)
  {
    v9 = v3[14];
    v10 = sub_227D3ED20;
  }

  else
  {
    v11 = v3[16];
    v12 = v3[14];

    v10 = sub_227D3EA90;
    v9 = v12;
  }

  return MEMORY[0x2822009F8](v10, v9, 0);
}

uint64_t sub_227D3EA90()
{
  OUTLINED_FUNCTION_51_0();
  v1 = v0[15];
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  sub_227B11EE8(v1 + 608, (v0 + 7));
  v2 = v0[10];
  v3 = v0[11];
  v4 = *(OUTLINED_FUNCTION_13_0(v0 + 7) + 168);
  OUTLINED_FUNCTION_36_0();
  v14 = v5 + *v5;
  v7 = *(v6 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  v0[19] = v8;
  *v8 = v9;
  v8[1] = sub_227D3EBB0;
  v10 = v0[12];
  v11 = v0[13];
  OUTLINED_FUNCTION_62_9();

  return v12();
}

uint64_t sub_227D3EBB0()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  v5 = *(v1 + 152);
  *v4 = *v2;
  *(v3 + 160) = v0;

  OUTLINED_FUNCTION_81_1();
  v7 = *(v6 + 112);
  OUTLINED_FUNCTION_44_9();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_227D3ECC4()
{
  OUTLINED_FUNCTION_6();
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  OUTLINED_FUNCTION_18();

  return v1();
}

uint64_t sub_227D3ED20()
{
  OUTLINED_FUNCTION_6();
  v1 = v0[16];

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v2 = v0[18];
  OUTLINED_FUNCTION_18();

  return v3();
}

uint64_t sub_227D3ED84()
{
  OUTLINED_FUNCTION_6();
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  v1 = *(v0 + 160);
  OUTLINED_FUNCTION_18();

  return v2();
}

uint64_t OnboardingService.setProfileSettings(_:for:)()
{
  OUTLINED_FUNCTION_6();
  v3 = OUTLINED_FUNCTION_79_0(v1, v2);
  v0[5] = v3;
  OUTLINED_FUNCTION_10_0(v3);
  v0[6] = v4;
  v6 = *(v5 + 64);
  v0[7] = OUTLINED_FUNCTION_30();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
  v0[8] = v7;
  OUTLINED_FUNCTION_10_0(v7);
  v0[9] = v8;
  v10 = *(v9 + 64);
  v0[10] = OUTLINED_FUNCTION_30();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6E18, &qword_227D51060);
  v0[11] = v11;
  OUTLINED_FUNCTION_10_0(v11);
  v0[12] = v12;
  v14 = *(v13 + 64);
  v0[13] = OUTLINED_FUNCTION_30();
  v15 = sub_227D4A038();
  v0[14] = v15;
  OUTLINED_FUNCTION_10_0(v15);
  v0[15] = v16;
  v18 = *(v17 + 64);
  v0[16] = OUTLINED_FUNCTION_30();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E81F0, &qword_227D69B80);
  v0[17] = v19;
  OUTLINED_FUNCTION_10_0(v19);
  v0[18] = v20;
  v22 = *(v21 + 64);
  v0[19] = OUTLINED_FUNCTION_30();
  v23 = sub_227D49D58();
  v0[20] = v23;
  OUTLINED_FUNCTION_10_0(v23);
  v0[21] = v24;
  v26 = *(v25 + 64);
  v0[22] = OUTLINED_FUNCTION_30();
  v27 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v27, v28, v29);
}

uint64_t sub_227D3F01C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_111();
  v13 = v12[4];
  if (swift_distributed_actor_is_remote())
  {
    v14 = v12[22];
    v15 = v12[19];
    v17 = v12[15];
    v16 = v12[16];
    v18 = v12[14];
    v19 = v12[2];
    OUTLINED_FUNCTION_36(v12[4]);
    (*(v17 + 16))(v16, v19, v18);
    sub_227D49478();
    v20 = MEMORY[0x277D0D020];
    sub_227B0F95C(&qword_27D7E81F8, MEMORY[0x277D0D020]);
    sub_227B0F95C(&qword_27D7E8200, v20);
    OUTLINED_FUNCTION_9_0();
    sub_227D49D18();
    v28 = v12[22];
    v29 = v12[13];
    (*(v12[9] + 16))(v12[10], v12[3], v12[8]);
    OUTLINED_FUNCTION_7_13();
    OUTLINED_FUNCTION_5_30(&qword_27D7E6BD8);
    OUTLINED_FUNCTION_4_31(&qword_27D7E6BE8);
    sub_227D49D18();
    v30 = v12[22];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
    sub_227D49D28();
    v31 = v12[22];
    sub_227D49D08();
    v32 = v12[7];
    OUTLINED_FUNCTION_57();
    sub_227D49468();
    v33 = *(MEMORY[0x277D0CE38] + 4);
    v34 = swift_task_alloc();
    v12[23] = v34;
    type metadata accessor for OnboardingService();
    OUTLINED_FUNCTION_0_60();
    sub_227B0F95C(v35, v36);
    OUTLINED_FUNCTION_48_0();
    *v34 = v37;
    v34[1] = sub_227D3F3F4;
    v38 = v12[22];
    v39 = v12[7];
    v40 = v12[4];
    OUTLINED_FUNCTION_19_1();
    OUTLINED_FUNCTION_33();

    return MEMORY[0x282164B10](v41, v42, v43, v44, v45, v46, v47, v48, a9, a10, a11, a12);
  }

  else
  {
    v21 = swift_task_alloc();
    v12[25] = v21;
    *v21 = v12;
    v21[1] = sub_227B455D4;
    v22 = v12[3];
    v23 = v12[4];
    OUTLINED_FUNCTION_53(v12[2]);
    OUTLINED_FUNCTION_33();

    return sub_227D3F890(v24, v25);
  }
}

uint64_t sub_227D3F3F4()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_2();
  *v3 = v2;
  v5 = *(v4 + 184);
  v6 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v7 = v6;
  *(v8 + 192) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_227D3F4F0()
{
  OUTLINED_FUNCTION_51_0();
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[17];
  v5 = v0[12];
  v4 = v0[13];
  v6 = v0[11];
  v7 = OUTLINED_FUNCTION_62();
  v8(v7);
  v9 = OUTLINED_FUNCTION_42();
  v10(v9);
  v11 = OUTLINED_FUNCTION_22_1();
  v12(v11);
  v13 = v0[24];
  (*(v0[21] + 8))(v0[22], v0[20]);
  v14 = v0[22];
  v15 = v0[19];
  v16 = v0[16];
  v17 = v0[13];
  v18 = v0[10];
  v19 = v0[7];

  OUTLINED_FUNCTION_18();

  return v20();
}

uint64_t sub_227D3F5F0(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v2[2] = *a2;
  v5 = *(v4 - 8);
  v2[3] = v5;
  v6 = *(v5 + 64) + 15;
  v2[4] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  sub_227D49CF8();
  v8 = a2[1];
  v2[5] = v8;
  v9 = *(v8 - 8);
  v2[6] = v9;
  v10 = *(v9 + 64) + 15;
  v2[7] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  sub_227D49CF8();
  v11 = swift_task_alloc();
  v2[8] = v11;
  *v11 = v2;
  v11[1] = sub_227BC6DB4;

  return OnboardingService.setProfileSettings(_:for:)();
}

uint64_t sub_227D3F890(uint64_t a1, uint64_t a2)
{
  v3[18] = a2;
  v3[19] = v2;
  v3[17] = a1;
  return OUTLINED_FUNCTION_2_0(sub_227D3F8B0, v2);
}

uint64_t sub_227D3F8B0()
{
  OUTLINED_FUNCTION_119();
  v2 = v1[18];
  v3 = *(v1[19] + OBJC_IVAR____TtC16GameServicesCore17OnboardingService_dataProvider);
  v1[20] = v3;
  OUTLINED_FUNCTION_65_12(v3);
  OUTLINED_FUNCTION_41_11();
  v1[21] = v4;
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_0(v1 + 2);
    OUTLINED_FUNCTION_19_0();
    OUTLINED_FUNCTION_128();

    __asm { BRAA            X1, X16 }
  }

  v7 = swift_task_alloc();
  v1[22] = v7;
  *v7 = v1;
  OUTLINED_FUNCTION_10_21(v7);
  OUTLINED_FUNCTION_128();

  return sub_227BC0AB4();
}

uint64_t sub_227D3F9AC()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  v6 = *(v5 + 176);
  v7 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v8 = v7;
  v3[23] = v0;

  if (v0)
  {
    v9 = v3[19];
    v10 = sub_227D40140;
  }

  else
  {
    v11 = v3[21];
    v12 = v3[19];

    v10 = sub_227D3FABC;
    v9 = v12;
  }

  return MEMORY[0x2822009F8](v10, v9, 0);
}

uint64_t sub_227D3FABC()
{
  OUTLINED_FUNCTION_51_0();
  v1 = v0[20];
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  sub_227B11EE8(v1 + 608, (v0 + 7));
  v2 = v0[10];
  v3 = v0[11];
  v4 = *(OUTLINED_FUNCTION_13_0(v0 + 7) + 184);
  OUTLINED_FUNCTION_36_0();
  v11 = (v5 + *v5);
  v7 = *(v6 + 4);
  v8 = swift_task_alloc();
  v0[24] = v8;
  *v8 = v0;
  v8[1] = sub_227D3FBE8;
  v9 = OUTLINED_FUNCTION_53(v0[17]);

  return v11(v9, v2, v3);
}

uint64_t sub_227D3FBE8()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  v5 = *(v1 + 192);
  *v4 = *v2;
  *(v3 + 200) = v0;

  OUTLINED_FUNCTION_81_1();
  v7 = *(v6 + 152);
  OUTLINED_FUNCTION_44_9();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_227D3FCFC()
{
  OUTLINED_FUNCTION_6();
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  v1 = swift_task_alloc();
  v0[26] = v1;
  *v1 = v0;
  v1[1] = sub_227D3FD98;
  v2 = v0[20];
  OUTLINED_FUNCTION_53(v0[17]);

  return GameServicesDataProvider.serverSetProfileSettings(_:)();
}

uint64_t sub_227D3FD98()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  v6 = *(v5 + 208);
  v7 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v8 = v7;

  if (v0)
  {
    OUTLINED_FUNCTION_27();

    return v9();
  }

  else
  {
    v11 = *(v3 + 152);
    OUTLINED_FUNCTION_44_9();

    return MEMORY[0x2822009F8](v12, v13, v14);
  }
}

uint64_t sub_227D3FEB8()
{
  OUTLINED_FUNCTION_51_0();
  sub_227B11EE8(v0[20] + 608, (v0 + 12));
  v1 = v0[15];
  v2 = v0[16];
  v3 = *(OUTLINED_FUNCTION_13_0(v0 + 12) + 192);
  OUTLINED_FUNCTION_36_0();
  v10 = (v4 + *v4);
  v6 = *(v5 + 4);
  v7 = swift_task_alloc();
  v0[27] = v7;
  *v7 = v0;
  OUTLINED_FUNCTION_35(v7);
  v8 = OUTLINED_FUNCTION_9_2();

  return v10(v8);
}

uint64_t sub_227D3FFD0()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  v5 = *(v1 + 216);
  *v4 = *v2;
  *(v3 + 224) = v0;

  OUTLINED_FUNCTION_81_1();
  v7 = *(v6 + 152);
  OUTLINED_FUNCTION_44_9();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_227D400E4()
{
  OUTLINED_FUNCTION_6();
  __swift_destroy_boxed_opaque_existential_0((v0 + 96));
  OUTLINED_FUNCTION_18();

  return v1();
}

uint64_t sub_227D40140()
{
  OUTLINED_FUNCTION_6();
  v1 = v0[21];

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v2 = v0[23];
  OUTLINED_FUNCTION_18();

  return v3();
}

uint64_t sub_227D401A4()
{
  OUTLINED_FUNCTION_6();
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  v1 = *(v0 + 200);
  OUTLINED_FUNCTION_18();

  return v2();
}

uint64_t sub_227D40200()
{
  OUTLINED_FUNCTION_6();
  __swift_destroy_boxed_opaque_existential_0((v0 + 96));
  v1 = *(v0 + 224);
  OUTLINED_FUNCTION_18();

  return v2();
}

uint64_t static OnboardingService.resolve(id:using:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for OnboardingService();
  sub_227D49D78();
  OUTLINED_FUNCTION_1_39();
  sub_227B0F95C(v5, v6);
  OUTLINED_FUNCTION_0_60();
  sub_227B0F95C(v7, v8);
  v9 = sub_227D493A8();
  v10 = v9;
  if (!v2 && !v9)
  {
    v10 = swift_distributedActor_remote_initialize();
    v11 = OBJC_IVAR____TtC16GameServicesCore17OnboardingService_id;
    v12 = sub_227D49EF8();
    OUTLINED_FUNCTION_62_0(v12);
    (*(v13 + 16))(v10 + v11, a1);
    *(v10 + OBJC_IVAR____TtC16GameServicesCore17OnboardingService_actorSystem) = a2;
  }

  return v10;
}

uint64_t OnboardingService.deinit()
{
  v1 = OBJC_IVAR____TtC16GameServicesCore17OnboardingService_id;
  v2 = OBJC_IVAR____TtC16GameServicesCore17OnboardingService_actorSystem;
  sub_227D49D78();
  OUTLINED_FUNCTION_1_39();
  sub_227B0F95C(v3, v4);
  sub_227D493C8();
  v5 = sub_227D49EF8();
  OUTLINED_FUNCTION_62_0(v5);
  (*(v6 + 8))(v0 + v1);
  v7 = *(v0 + v2);

  v8 = *(v0 + OBJC_IVAR____TtC16GameServicesCore17OnboardingService_dataProvider);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t OnboardingService.__deallocating_deinit()
{
  if (swift_distributed_actor_is_remote())
  {
    v1 = OBJC_IVAR____TtC16GameServicesCore17OnboardingService_id;
    v2 = sub_227D49EF8();
    OUTLINED_FUNCTION_62_0(v2);
    (*(v3 + 8))(v0 + v1);
    v4 = *(v0 + OBJC_IVAR____TtC16GameServicesCore17OnboardingService_actorSystem);

    swift_defaultActor_destroy();
  }

  else
  {
    OnboardingService.deinit();
  }

  return MEMORY[0x282200960](v0);
}

uint64_t sub_227D40508()
{
  sub_227D4DB58();
  type metadata accessor for OnboardingService();
  OUTLINED_FUNCTION_0_60();
  sub_227B0F95C(v0, v1);
  sub_227D4CEA8();
  return sub_227D4DB98();
}

uint64_t OnboardingService.unownedExecutor.getter()
{
  if ((sub_227D49448() & 1) == 0)
  {
    type metadata accessor for OnboardingService();
    OUTLINED_FUNCTION_0_60();
    sub_227B0F95C(v1, v2);
    OUTLINED_FUNCTION_57_0();
    return sub_227D49388();
  }

  return v0;
}

uint64_t sub_227D405FC@<X0>(uint64_t *a1@<X8>)
{
  result = OnboardingService.actorSystem.getter();
  *a1 = result;
  return result;
}

uint64_t sub_227D406A0()
{
  v1 = *v0;
  type metadata accessor for OnboardingService();
  OUTLINED_FUNCTION_0_60();
  sub_227B0F95C(v2, v3);
  OUTLINED_FUNCTION_9_2();
  return sub_227D49418();
}

uint64_t sub_227D40708()
{
  v2 = *v0;
  sub_227D4DB58();
  type metadata accessor for OnboardingService();
  sub_227D4CEA8();
  return sub_227D4DB98();
}

unint64_t sub_227D40768()
{
  result = qword_27D7EA8D0;
  if (!qword_27D7EA8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7EA8D0);
  }

  return result;
}

uint64_t sub_227D40968()
{
  OUTLINED_FUNCTION_6();
  v1 = *v0;
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_50(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_35(v3);

  return OnboardingService.refreshOnboarding(for:)();
}

uint64_t sub_227D409F4()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_104_0();
  v1 = *v0;
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_20_0(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_28_0(v3);

  return OnboardingService.describeOnboarding(for:)();
}

uint64_t sub_227D40A84()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_104_0();
  v1 = *v0;
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_20_0(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_28_0(v3);

  return OnboardingService.describeOnboarding2(for:)();
}

uint64_t sub_227D40B14()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_104_0();
  v1 = *v0;
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_50(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_35(v3);

  return OnboardingService.setProfileSettings(_:for:)();
}

uint64_t sub_227D40BAC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  type metadata accessor for OnboardingService();
  OUTLINED_FUNCTION_0_60();
  sub_227B0F95C(v4, v5);
  v6 = OUTLINED_FUNCTION_9_2();

  return MEMORY[0x2821FF4E0](v6);
}

uint64_t sub_227D40C24()
{
  v1 = *v0;
  type metadata accessor for OnboardingService();
  OUTLINED_FUNCTION_0_60();
  sub_227B0F95C(v2, v3);
  OUTLINED_FUNCTION_7_26();
  sub_227B0F95C(v4, v5);
  return sub_227D49428();
}

uint64_t sub_227D40CCC@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for OnboardingService();
  OUTLINED_FUNCTION_0_60();
  sub_227B0F95C(v3, v4);
  OUTLINED_FUNCTION_7_26();
  sub_227B0F95C(v5, v6);
  OUTLINED_FUNCTION_9_0();
  result = sub_227D49438();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_227D40D78()
{
  result = sub_227D49EF8();
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

uint64_t dispatch thunk of OnboardingService.describeOnboarding(for:)()
{
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_18_1();
  v1 = *(v0 + 120);
  v8 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_20_0(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_28_0(v4);

  return v8(v6);
}

uint64_t dispatch thunk of OnboardingService.refreshOnboarding(for:)()
{
  OUTLINED_FUNCTION_20();
  v2 = v1;
  v3 = *(*v0 + 128);
  v9 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_50(v5);
  *v6 = v7;
  OUTLINED_FUNCTION_35(v6);

  return v9(v2);
}

uint64_t dispatch thunk of OnboardingService.describeOnboarding2(for:)()
{
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_18_1();
  v1 = *(v0 + 136);
  v8 = (v1 + *v1);
  v2 = v1[1];
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_20_0(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_28_0(v4);

  return v8(v6);
}

uint64_t dispatch thunk of OnboardingService.setProfileSettings(_:for:)()
{
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_18_1();
  v3 = *(v2 + 144);
  v9 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_50(v5);
  *v6 = v7;
  OUTLINED_FUNCTION_35(v6);

  return v9(v1, v0);
}

_BYTE *storeEnumTagSinglePayload for OnboardingService.OnboardingError(_BYTE *result, int a2, int a3)
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

uint64_t OUTLINED_FUNCTION_4_31(unint64_t *a1)
{

  return sub_227CABA60(a1);
}

uint64_t OUTLINED_FUNCTION_41_11()
{
  v1 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);

  return sub_227D4A898();
}

uint64_t sub_227D41410(char a1)
{
  sub_227B11EE8(v1 + 120, v8);
  v4 = v8[4];
  __swift_project_boxed_opaque_existential_1(v8, v8[3]);
  v5 = a1;
  v6 = sub_227D4A6A8();
  if (!v2)
  {
    v5 = (*(v4 + 64))(v6);
  }

  __swift_destroy_boxed_opaque_existential_0(v8);
  return v5 & 1;
}

uint64_t ProfileService.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC16GameServicesCore14ProfileService_id;
  v4 = sub_227D49EF8();
  v5 = OUTLINED_FUNCTION_62_0(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t sub_227D4155C()
{
  v0 = sub_227D49EF8();
  __swift_allocate_value_buffer(v0, qword_280E7BE08);
  __swift_project_value_buffer(v0, qword_280E7BE08);
  return sub_227D49EE8();
}

uint64_t sub_227D415A8()
{
  if (_MergedGlobals_19 != -1)
  {
    OUTLINED_FUNCTION_17_20();
  }

  v0 = sub_227D49EF8();

  return __swift_project_value_buffer(v0, qword_280E7BE08);
}

uint64_t static ProfileService.actorID.getter@<X0>(uint64_t a1@<X8>)
{
  if (_MergedGlobals_19 != -1)
  {
    OUTLINED_FUNCTION_17_20();
  }

  v2 = sub_227D49EF8();
  v3 = __swift_project_value_buffer(v2, qword_280E7BE08);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_227D41694(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  sub_227D416E4(a1, a2);
  return v7;
}

uint64_t sub_227D416E4(uint64_t a1, uint64_t a2)
{
  v14 = a2;
  v13 = sub_227D49EF8();
  v4 = *(v13 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v13);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  v8 = OBJC_IVAR____TtC16GameServicesCore14ProfileService_actorSystem;
  *(v2 + OBJC_IVAR____TtC16GameServicesCore14ProfileService_actorSystem) = a1;
  type metadata accessor for ProfileService();
  v15 = a1;
  sub_227D49D78();
  OUTLINED_FUNCTION_1_40();
  sub_227B0F9A4(v9);
  OUTLINED_FUNCTION_0_61();
  sub_227B0F9A4(v10);

  OUTLINED_FUNCTION_105();
  sub_227D493B8();
  (*(v4 + 32))(v2 + OBJC_IVAR____TtC16GameServicesCore14ProfileService_id, v7, v13);
  *(v2 + OBJC_IVAR____TtC16GameServicesCore14ProfileService_dataProvider) = v14;
  v15 = *(v2 + v8);

  OUTLINED_FUNCTION_105();
  sub_227D49398();

  return v2;
}

uint64_t type metadata accessor for ProfileService()
{
  result = qword_27D809720;
  if (!qword_27D809720)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ProfileService.describeProfiles(players:)()
{
  OUTLINED_FUNCTION_6();
  v1[4] = v2;
  v1[5] = v0;
  v3 = sub_227D49458();
  v1[6] = v3;
  OUTLINED_FUNCTION_10_0(v3);
  v1[7] = v4;
  v6 = *(v5 + 64);
  v1[8] = OUTLINED_FUNCTION_30();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6BC0, &qword_227D4F1D0);
  v1[9] = v7;
  OUTLINED_FUNCTION_10_0(v7);
  v1[10] = v8;
  v10 = *(v9 + 64);
  v1[11] = OUTLINED_FUNCTION_30();
  v11 = sub_227D49D58();
  v1[12] = v11;
  OUTLINED_FUNCTION_10_0(v11);
  v1[13] = v12;
  v14 = *(v13 + 64);
  v1[14] = OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_227D41A54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  OUTLINED_FUNCTION_111();
  v18 = v17[5];
  if (swift_distributed_actor_is_remote())
  {
    v19 = v17[14];
    v20 = v17[11];
    v21 = v17[4];
    OUTLINED_FUNCTION_36(v17[5]);
    v17[2] = v21;
    sub_227D4CE58();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6BC8, &unk_227D4F1E0);
    sub_227D49478();
    sub_227D425DC(&qword_27D7E6BD0);
    sub_227D425DC(&qword_27D7E6BE0);
    OUTLINED_FUNCTION_10();
    sub_227D49D18();
    v22 = v17[14];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
    sub_227D49D28();
    v23 = v17[14];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9D68, &qword_227D62058);
    sub_227D42668(&qword_27D7E9D70);
    sub_227D42668(&qword_27D7E9D88);
    OUTLINED_FUNCTION_17();
    v24 = v17[14];
    sub_227D49D08();
    v30 = v17[8];
    sub_227D49468();
    v31 = *(MEMORY[0x277D0CE28] + 4);
    v32 = swift_task_alloc();
    v17[15] = v32;
    type metadata accessor for ProfileService();
    OUTLINED_FUNCTION_0_61();
    sub_227B0F9A4(v33);
    OUTLINED_FUNCTION_48();
    *v32 = v34;
    v32[1] = sub_227D41E30;
    v35 = v17[14];
    v36 = v17[8];
    v37 = v17[5];
    v39 = OUTLINED_FUNCTION_4(v38);

    return MEMORY[0x282164B00](v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12, a13, a14, a15, a16, a17);
  }

  else
  {
    v25 = swift_task_alloc();
    v17[17] = v25;
    *v25 = v17;
    v25[1] = sub_227D41FE8;
    v26 = v17[5];
    OUTLINED_FUNCTION_53(v17[4]);
    OUTLINED_FUNCTION_46();

    return sub_227D42520(v27);
  }
}

uint64_t sub_227D41E30()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_2();
  *v3 = v2;
  v5 = *(v4 + 120);
  v6 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v7 = v6;
  *(v8 + 128) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_227D41F2C()
{
  OUTLINED_FUNCTION_51_0();
  v3 = OUTLINED_FUNCTION_83();
  v4(v3);
  v5 = *(v2 + 8);
  v6 = OUTLINED_FUNCTION_91_0();
  v7(v6);
  v8 = *(v1 + 8);
  v9 = OUTLINED_FUNCTION_57_0();
  v10(v9);
  v11 = v0[3];
  v12 = v0[14];
  v13 = v0[11];
  v14 = v0[8];

  v15 = OUTLINED_FUNCTION_8_0();

  return v16(v15);
}

uint64_t sub_227D41FE8()
{
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_62_1();
  v4 = v3[17];
  v5 = *v2;
  OUTLINED_FUNCTION_5_4();
  *v6 = v5;

  v7 = v3[14];
  v8 = v3[11];
  v9 = v3[8];

  v11 = *(v5 + 8);
  if (!v1)
  {
    v10 = v0;
  }

  return v11(v10);
}

uint64_t sub_227D42140()
{
  OUTLINED_FUNCTION_51_0();
  v3 = OUTLINED_FUNCTION_83();
  v4(v3);
  v5 = *(v2 + 8);
  v6 = OUTLINED_FUNCTION_91_0();
  v7(v6);
  v8 = *(v1 + 8);
  v9 = OUTLINED_FUNCTION_57_0();
  v10(v9);
  v11 = v0[16];
  v12 = v0[14];
  v13 = v0[11];
  v14 = v0[8];

  OUTLINED_FUNCTION_18();

  return v15();
}

uint64_t sub_227D421FC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[2] = a3;
  v4 = *a2;
  v3[3] = *a2;
  v5 = *(v4 - 8);
  v3[4] = v5;
  v6 = *(v5 + 64) + 15;
  v7 = swift_task_alloc();
  v3[5] = v7;
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_227D49CF8();
  v9 = *v7;
  v10 = swift_task_alloc();
  v3[6] = v10;
  *v10 = v3;
  v10[1] = sub_227D4239C;

  return ProfileService.describeProfiles(players:)();
}

uint64_t sub_227D4239C()
{
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_14();
  v2 = *(v1 + 48);
  v3 = *(v1 + 40);
  v4 = *(v1 + 32);
  v5 = *(v1 + 24);
  v9 = *v0;
  **(v1 + 16) = v6;

  (*(v4 + 8))(v3, v5);

  OUTLINED_FUNCTION_18();

  return v7();
}

uint64_t sub_227D42520(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_2_0(sub_227D4253C, v1);
}

uint64_t sub_227D4253C()
{
  OUTLINED_FUNCTION_6();
  v1 = *(v0[3] + OBJC_IVAR____TtC16GameServicesCore14ProfileService_dataProvider);
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_227B44998;
  OUTLINED_FUNCTION_53(v0[2]);

  return sub_227D20BB0();
}

unint64_t sub_227D425DC(uint64_t a1)
{
  result = OUTLINED_FUNCTION_217(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E6BC8, &unk_227D4F1E0);
    sub_227B15ABC(v4);
    OUTLINED_FUNCTION_36_8();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_227D42668(uint64_t a1)
{
  result = OUTLINED_FUNCTION_217(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E9D68, &qword_227D62058);
    v4();
    OUTLINED_FUNCTION_36_8();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t ProfileService.listInteractions(player:participants:after:)()
{
  OUTLINED_FUNCTION_6();
  v1[6] = v2;
  v1[7] = v0;
  v1[4] = v3;
  v1[5] = v4;
  v5 = sub_227D49458();
  v1[8] = v5;
  OUTLINED_FUNCTION_10_0(v5);
  v1[9] = v6;
  v8 = *(v7 + 64);
  v1[10] = OUTLINED_FUNCTION_30();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6908, &unk_227D4E690);
  v1[11] = v9;
  v10 = *(*(v9 - 8) + 64);
  v1[12] = OUTLINED_FUNCTION_30();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6A20, &unk_227D4EC60);
  v1[13] = v11;
  OUTLINED_FUNCTION_10_0(v11);
  v1[14] = v12;
  v14 = *(v13 + 64);
  v1[15] = OUTLINED_FUNCTION_30();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA8F0, &unk_227D6A060);
  v1[16] = v15;
  OUTLINED_FUNCTION_10_0(v15);
  v1[17] = v16;
  v18 = *(v17 + 64);
  v1[18] = OUTLINED_FUNCTION_30();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
  v1[19] = v19;
  OUTLINED_FUNCTION_10_0(v19);
  v1[20] = v20;
  v22 = *(v21 + 64);
  v1[21] = OUTLINED_FUNCTION_30();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6E18, &qword_227D51060);
  v1[22] = v23;
  OUTLINED_FUNCTION_10_0(v23);
  v1[23] = v24;
  v26 = *(v25 + 64);
  v1[24] = OUTLINED_FUNCTION_30();
  v27 = sub_227D49D58();
  v1[25] = v27;
  OUTLINED_FUNCTION_10_0(v27);
  v1[26] = v28;
  v30 = *(v29 + 64);
  v1[27] = OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v31, v32, v33);
}

uint64_t sub_227D42960(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  OUTLINED_FUNCTION_111();
  v18 = v17[7];
  if (swift_distributed_actor_is_remote())
  {
    v19 = v17[27];
    v20 = v17[24];
    v22 = v17[20];
    v21 = v17[21];
    v23 = v17[19];
    v24 = v17[4];
    OUTLINED_FUNCTION_36(v17[7]);
    v25 = *(v22 + 16);
    v26 = OUTLINED_FUNCTION_173();
    v27(v26);
    OUTLINED_FUNCTION_7_6();
    OUTLINED_FUNCTION_7_1(&qword_27D7E6BD8);
    OUTLINED_FUNCTION_6_19(&qword_27D7E6BE8);
    OUTLINED_FUNCTION_10();
    sub_227D49D18();
    v28 = v17[27];
    v32 = v17[18];
    v17[2] = v17[5];
    sub_227D4CE58();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA8F8, &qword_227D6A078);
    sub_227D49478();
    sub_227D43B64();
    sub_227D43C18();
    OUTLINED_FUNCTION_10();
    sub_227D49D18();
    v33 = v17[27];
    v34 = v17[15];
    v35 = v17[11];
    sub_227B41B14(v17[6], v17[12]);
    sub_227D49478();
    sub_227B15FB0();
    sub_227B16064();
    sub_227D49D18();
    v36 = v17[27];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
    sub_227D49D28();
    v37 = v17[27];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA920, &qword_227D6A080);
    sub_227D43CCC(&unk_27D7EA928);
    sub_227D43CCC(&unk_27D7EA940);
    OUTLINED_FUNCTION_17();
    v38 = v17[27];
    sub_227D49D08();
    v39 = v17[10];
    sub_227D49468();
    v40 = *(MEMORY[0x277D0CE28] + 4);
    v41 = swift_task_alloc();
    v17[28] = v41;
    type metadata accessor for ProfileService();
    OUTLINED_FUNCTION_0_61();
    sub_227B0F9A4(v42);
    OUTLINED_FUNCTION_48();
    *v41 = v43;
    v41[1] = sub_227D42F38;
    v44 = v17[27];
    v45 = v17[10];
    v46 = v17[7];
    OUTLINED_FUNCTION_4(v47);
    OUTLINED_FUNCTION_135_0();

    return MEMORY[0x282164B00](v48, v49, v50, v51, v52, v53, v54, v55, a9, a10, a11, a12, a13, a14, a15, a16, a17);
  }

  else
  {
    v29 = swift_task_alloc();
    v17[30] = v29;
    *v29 = v17;
    v29[1] = sub_227D43154;
    v30 = v17[7];

    return sub_227D43A8C();
  }
}

uint64_t sub_227D42F38()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_2();
  *v3 = v2;
  v5 = *(v4 + 224);
  v6 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v7 = v6;
  *(v8 + 232) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_227D43034()
{
  v8 = OUTLINED_FUNCTION_53_0();
  v9(v8);
  (*(v2 + 8))(v5, v6);
  v10 = *(v0 + 8);
  v11 = OUTLINED_FUNCTION_141();
  v12(v11);
  (*(v1 + 8))(v20, v4);
  (*(v7 + 8))();
  v13 = v3[3];
  v14 = v3[27];
  v15 = v3[24];
  v16 = v3[21];
  OUTLINED_FUNCTION_115_0();

  v17 = OUTLINED_FUNCTION_8_0();

  return v18(v17);
}

uint64_t sub_227D43154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_111();
  OUTLINED_FUNCTION_62_1();
  v14 = v13[30];
  v15 = *v12;
  OUTLINED_FUNCTION_5_4();
  *v16 = v15;

  v17 = v13[27];
  v18 = v13[24];
  v19 = v13[21];
  v20 = v13[18];
  v21 = v13[15];
  v22 = v13[12];
  v23 = v13[10];

  v24 = *(v15 + 8);
  OUTLINED_FUNCTION_135_0();

  return v27(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12);
}

uint64_t sub_227D43314()
{
  v8 = OUTLINED_FUNCTION_53_0();
  v9(v8);
  (*(v2 + 8))(v5, v6);
  v10 = *(v0 + 8);
  v11 = OUTLINED_FUNCTION_141();
  v12(v11);
  (*(v1 + 8))(v19, v4);
  (*(v7 + 8))();
  v13 = v3[29];
  v14 = v3[27];
  v15 = v3[24];
  v16 = v3[21];
  OUTLINED_FUNCTION_115_0();

  OUTLINED_FUNCTION_18();

  return v17();
}

uint64_t sub_227D43434(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[2] = a3;
  v5 = *a2;
  v3[3] = *a2;
  v6 = *(v5 - 8);
  v3[4] = v6;
  v7 = *(v6 + 64) + 15;
  v3[5] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_227D49CF8();
  v9 = a2[1];
  v3[6] = v9;
  v10 = *(v9 - 8);
  v3[7] = v10;
  v11 = *(v10 + 64) + 15;
  v12 = swift_task_alloc();
  v3[8] = v12;
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  sub_227D49CF8();
  v17 = *v12;
  v13 = a2[2];
  v3[9] = v13;
  v14 = *(v13 - 8);
  v3[10] = v14;
  v15 = *(v14 + 64) + 15;
  v3[11] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  sub_227D49CF8();
  v16 = swift_task_alloc();
  v3[12] = v16;
  *v16 = v3;
  v16[1] = sub_227D437E8;

  return ProfileService.listInteractions(player:participants:after:)();
}

uint64_t sub_227D437E8()
{
  OUTLINED_FUNCTION_14();
  v2 = v1[12];
  v18 = v1[11];
  v17 = v1[10];
  v3 = v1[9];
  v4 = v1[8];
  v16 = v1[7];
  v5 = v1[6];
  v6 = v1[5];
  v7 = v1[4];
  v8 = v1[3];
  v9 = v1[2];
  v10 = *v0;
  OUTLINED_FUNCTION_2();
  *v11 = v10;
  *v13 = v12;

  (*(v7 + 8))(v6, v8);
  (*(v16 + 8))(v4, v5);
  (*(v17 + 8))(v18, v3);

  v14 = *(v10 + 8);

  return v14();
}

uint64_t sub_227D43AA4()
{
  OUTLINED_FUNCTION_20();
  sub_227D49E08();
  sub_227B0F9A4(&qword_27D7E67C8);
  swift_allocError();
  sub_227D49DC8();
  swift_willThrow();
  OUTLINED_FUNCTION_18();

  return v0();
}

unint64_t sub_227D43B64()
{
  result = qword_27D7EA900;
  if (!qword_27D7EA900)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7EA8F8, &qword_227D6A078);
    sub_227B0F9A4(&unk_27D7EA908);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7EA900);
  }

  return result;
}

unint64_t sub_227D43C18()
{
  result = qword_27D7EA910;
  if (!qword_27D7EA910)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7EA8F8, &qword_227D6A078);
    sub_227B0F9A4(&unk_27D7EA918);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7EA910);
  }

  return result;
}

unint64_t sub_227D43CCC(uint64_t a1)
{
  result = OUTLINED_FUNCTION_217(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7EA920, &qword_227D6A080);
    sub_227B15ABC(v4);
    OUTLINED_FUNCTION_36_8();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t ProfileService.listSuggestedNicknames(player:count:)()
{
  OUTLINED_FUNCTION_6();
  v1[5] = v2;
  v1[6] = v0;
  v1[4] = v3;
  v4 = sub_227D49458();
  v1[7] = v4;
  OUTLINED_FUNCTION_10_0(v4);
  v1[8] = v5;
  v7 = *(v6 + 64);
  v1[9] = OUTLINED_FUNCTION_30();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA950, &qword_227D6A160);
  v1[10] = v8;
  OUTLINED_FUNCTION_10_0(v8);
  v1[11] = v9;
  v11 = *(v10 + 64);
  v1[12] = OUTLINED_FUNCTION_30();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
  v1[13] = v12;
  OUTLINED_FUNCTION_10_0(v12);
  v1[14] = v13;
  v15 = *(v14 + 64);
  v1[15] = OUTLINED_FUNCTION_30();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6E18, &qword_227D51060);
  v1[16] = v16;
  OUTLINED_FUNCTION_10_0(v16);
  v1[17] = v17;
  v19 = *(v18 + 64);
  v1[18] = OUTLINED_FUNCTION_30();
  v20 = sub_227D49D58();
  v1[19] = v20;
  OUTLINED_FUNCTION_10_0(v20);
  v1[20] = v21;
  v23 = *(v22 + 64);
  v1[21] = OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v24, v25, v26);
}

uint64_t sub_227D43F58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  OUTLINED_FUNCTION_111();
  v18 = v17[6];
  if (swift_distributed_actor_is_remote())
  {
    v19 = v17[21];
    v20 = v17[18];
    v22 = v17[14];
    v21 = v17[15];
    v23 = v17[13];
    v24 = v17[4];
    OUTLINED_FUNCTION_36(v17[6]);
    v25 = *(v22 + 16);
    v26 = OUTLINED_FUNCTION_173();
    v27(v26);
    OUTLINED_FUNCTION_7_6();
    OUTLINED_FUNCTION_7_1(&qword_27D7E6BD8);
    OUTLINED_FUNCTION_6_19(&qword_27D7E6BE8);
    OUTLINED_FUNCTION_10();
    sub_227D49D18();
    v28 = v17[21];
    v36 = v17[12];
    v17[2] = v17[5];
    sub_227D49478();
    OUTLINED_FUNCTION_148();
    sub_227D49D18();
    v37 = v17[21];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
    sub_227D49D28();
    v38 = v17[21];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA958, &unk_227D6A170);
    sub_227D44CA4();
    sub_227D44D58();
    OUTLINED_FUNCTION_17();
    v39 = v17[21];
    sub_227D49D08();
    v40 = v17[9];
    sub_227D49468();
    v41 = *(MEMORY[0x277D0CE28] + 4);
    v42 = swift_task_alloc();
    v17[22] = v42;
    type metadata accessor for ProfileService();
    OUTLINED_FUNCTION_0_61();
    sub_227B0F9A4(v43);
    OUTLINED_FUNCTION_48();
    *v42 = v44;
    v42[1] = sub_227D44320;
    v45 = v17[21];
    v46 = v17[9];
    v47 = v17[6];
    v49 = OUTLINED_FUNCTION_4(v48);

    return MEMORY[0x282164B00](v49, v50, v51, v52, v53, v54, v55, v56, a9, a10, a11, a12, a13, a14, a15, a16, a17);
  }

  else
  {
    v29 = swift_task_alloc();
    v17[24] = v29;
    *v29 = v17;
    v29[1] = sub_227D444E8;
    v30 = v17[5];
    v31 = v17[6];
    OUTLINED_FUNCTION_53(v17[4]);
    OUTLINED_FUNCTION_46();

    return sub_227D44BE4(v32, v33);
  }
}

uint64_t sub_227D44320()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_2();
  *v3 = v2;
  v5 = *(v4 + 176);
  v6 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v7 = v6;
  *(v8 + 184) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_227D4441C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_111();
  v16 = OUTLINED_FUNCTION_156();
  v17(v16);
  v18 = *(v15 + 8);
  v19 = OUTLINED_FUNCTION_141();
  v20(v19);
  v21 = *(v14 + 8);
  v22 = OUTLINED_FUNCTION_91_0();
  v23(v22);
  v24 = *(v13 + 8);
  v25 = OUTLINED_FUNCTION_57_0();
  v26(v25);
  v27 = *(v12 + 24);
  OUTLINED_FUNCTION_69_0();

  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_135_0();

  return v30(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12);
}

uint64_t sub_227D444E8()
{
  OUTLINED_FUNCTION_62_1();
  v4 = v3[24];
  v5 = *v2;
  OUTLINED_FUNCTION_5_4();
  *v6 = v5;

  v7 = v3[21];
  v8 = v3[18];
  v9 = v3[15];
  v10 = v3[12];
  v11 = v3[9];

  v13 = *(v5 + 8);
  if (!v1)
  {
    v12 = v0;
  }

  return v13(v12);
}

uint64_t sub_227D44684(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_111();
  v16 = OUTLINED_FUNCTION_156();
  v17(v16);
  v18 = *(v15 + 8);
  v19 = OUTLINED_FUNCTION_141();
  v20(v19);
  v21 = *(v14 + 8);
  v22 = OUTLINED_FUNCTION_91_0();
  v23(v22);
  v24 = *(v13 + 8);
  v25 = OUTLINED_FUNCTION_57_0();
  v26(v25);
  v27 = *(v12 + 184);
  OUTLINED_FUNCTION_69_0();

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_135_0();

  return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12);
}

uint64_t sub_227D44750(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[2] = a3;
  v5 = *a2;
  v3[3] = *a2;
  v6 = *(v5 - 8);
  v3[4] = v6;
  v7 = *(v6 + 64) + 15;
  v3[5] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  sub_227D49CF8();
  v9 = a2[1];
  v3[6] = v9;
  v10 = *(v9 - 8);
  v3[7] = v10;
  v11 = *(v10 + 64) + 15;
  v12 = swift_task_alloc();
  v3[8] = v12;
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  sub_227D49CF8();
  v13 = *v12;
  v14 = swift_task_alloc();
  v3[9] = v14;
  *v14 = v3;
  v14[1] = sub_227D449F8;

  return ProfileService.listSuggestedNicknames(player:count:)();
}

uint64_t sub_227D449F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_111();
  OUTLINED_FUNCTION_14();
  v14 = *(v13 + 72);
  v15 = *(v13 + 64);
  v16 = *(v13 + 56);
  v17 = *(v13 + 40);
  v18 = *(v13 + 32);
  v19 = *(v13 + 24);
  v20 = *(v13 + 48) - 8;
  v34 = *v12;
  **(v13 + 16) = v21;

  (*(v18 + 8))(v17, v19);
  v22 = *(v16 + 8);
  v23 = OUTLINED_FUNCTION_91_0();
  v24(v23);

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_135_0();

  return v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12);
}

uint64_t sub_227D44BE4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_2_0(sub_227D44C04, v2);
}

uint64_t sub_227D44C04()
{
  OUTLINED_FUNCTION_6();
  v1 = *(v0[4] + OBJC_IVAR____TtC16GameServicesCore14ProfileService_dataProvider);
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_227B68F1C;
  v3 = v0[3];
  OUTLINED_FUNCTION_53(v0[2]);

  return sub_227D21B64();
}

unint64_t sub_227D44CA4()
{
  result = qword_27D7EA960;
  if (!qword_27D7EA960)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7EA958, &unk_227D6A170);
    sub_227B0F9A4(&unk_27D7EA968);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7EA960);
  }

  return result;
}

unint64_t sub_227D44D58()
{
  result = qword_27D7EA970;
  if (!qword_27D7EA970)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7EA958, &unk_227D6A170);
    sub_227B0F9A4(&unk_27D7EA978);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7EA970);
  }

  return result;
}

uint64_t static ProfileService.resolve(id:using:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ProfileService();
  sub_227D49D78();
  OUTLINED_FUNCTION_1_40();
  sub_227B0F9A4(v5);
  OUTLINED_FUNCTION_0_61();
  sub_227B0F9A4(v6);
  v7 = sub_227D493A8();
  v8 = v7;
  if (!v2 && !v7)
  {
    v8 = swift_distributedActor_remote_initialize();
    v9 = OBJC_IVAR____TtC16GameServicesCore14ProfileService_id;
    v10 = sub_227D49EF8();
    OUTLINED_FUNCTION_62_0(v10);
    (*(v11 + 16))(v8 + v9, a1);
    *(v8 + OBJC_IVAR____TtC16GameServicesCore14ProfileService_actorSystem) = a2;
  }

  return v8;
}

uint64_t ProfileService.deinit()
{
  v1 = OBJC_IVAR____TtC16GameServicesCore14ProfileService_id;
  v2 = OBJC_IVAR____TtC16GameServicesCore14ProfileService_actorSystem;
  sub_227D49D78();
  OUTLINED_FUNCTION_1_40();
  sub_227B0F9A4(v3);
  sub_227D493C8();
  v4 = sub_227D49EF8();
  OUTLINED_FUNCTION_62_0(v4);
  (*(v5 + 8))(v0 + v1);
  v6 = *(v0 + v2);

  v7 = *(v0 + OBJC_IVAR____TtC16GameServicesCore14ProfileService_dataProvider);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t ProfileService.__deallocating_deinit()
{
  if (swift_distributed_actor_is_remote())
  {
    v1 = OBJC_IVAR____TtC16GameServicesCore14ProfileService_id;
    v2 = sub_227D49EF8();
    OUTLINED_FUNCTION_62_0(v2);
    (*(v3 + 8))(v0 + v1);
    v4 = *(v0 + OBJC_IVAR____TtC16GameServicesCore14ProfileService_actorSystem);

    swift_defaultActor_destroy();
  }

  else
  {
    ProfileService.deinit();
  }

  return MEMORY[0x282200960](v0);
}

uint64_t sub_227D450B8()
{
  sub_227D4DB58();
  type metadata accessor for ProfileService();
  OUTLINED_FUNCTION_0_61();
  sub_227B0F9A4(v0);
  sub_227D4CEA8();
  return sub_227D4DB98();
}

uint64_t ProfileService.unownedExecutor.getter()
{
  if ((sub_227D49448() & 1) == 0)
  {
    type metadata accessor for ProfileService();
    OUTLINED_FUNCTION_0_61();
    sub_227B0F9A4(v1);
    OUTLINED_FUNCTION_57_0();
    return sub_227D49388();
  }

  return v0;
}

uint64_t sub_227D451AC@<X0>(uint64_t *a1@<X8>)
{
  result = ProfileService.actorSystem.getter();
  *a1 = result;
  return result;
}

uint64_t sub_227D4520C()
{
  v1 = *v0;
  OUTLINED_FUNCTION_45();
  return (*(v2 + 144))();
}

uint64_t sub_227D4524C()
{
  v1 = *v0;
  type metadata accessor for ProfileService();
  OUTLINED_FUNCTION_0_61();
  sub_227B0F9A4(v2);
  return sub_227D49418();
}

uint64_t sub_227D452B8()
{
  v2 = *v0;
  sub_227D4DB58();
  type metadata accessor for ProfileService();
  sub_227D4CEA8();
  return sub_227D4DB98();
}

uint64_t sub_227D454C0()
{
  OUTLINED_FUNCTION_6();
  v1 = *v0;
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_50(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_35(v3);

  return ProfileService.describeProfiles(players:)();
}

uint64_t sub_227D4554C()
{
  OUTLINED_FUNCTION_20();
  v1 = *v0;
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_50(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_35(v3);

  return ProfileService.listInteractions(player:participants:after:)();
}

uint64_t sub_227D455F0()
{
  OUTLINED_FUNCTION_20();
  v1 = *v0;
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_50(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_35(v3);

  return ProfileService.listSuggestedNicknames(player:count:)();
}

uint64_t sub_227D4568C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  type metadata accessor for ProfileService();
  OUTLINED_FUNCTION_0_61();
  sub_227B0F9A4(v4);

  return MEMORY[0x2821FF4E0](v2);
}

uint64_t sub_227D45708()
{
  v1 = *v0;
  type metadata accessor for ProfileService();
  OUTLINED_FUNCTION_0_61();
  sub_227B0F9A4(v2);
  OUTLINED_FUNCTION_3_28();
  sub_227B0F9A4(v3);
  return sub_227D49428();
}

uint64_t sub_227D457B0@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ProfileService();
  OUTLINED_FUNCTION_0_61();
  sub_227B0F9A4(v3);
  OUTLINED_FUNCTION_3_28();
  sub_227B0F9A4(v4);
  OUTLINED_FUNCTION_10();
  result = sub_227D49438();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_227D45860()
{
  result = sub_227D49EF8();
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

uint64_t dispatch thunk of ProfileService.describeProfiles(players:)()
{
  OUTLINED_FUNCTION_20();
  v1 = v0;
  OUTLINED_FUNCTION_45();
  v3 = *(v2 + 120);
  v9 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_50(v5);
  *v6 = v7;
  OUTLINED_FUNCTION_35(v6);

  return v9(v1);
}

uint64_t dispatch thunk of ProfileService.listInteractions(player:participants:after:)()
{
  OUTLINED_FUNCTION_51_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_45();
  v7 = *(v6 + 128);
  v13 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_50(v9);
  *v10 = v11;
  OUTLINED_FUNCTION_35(v10);

  return v13(v5, v3, v1);
}

uint64_t dispatch thunk of ProfileService.listSuggestedNicknames(player:count:)()
{
  OUTLINED_FUNCTION_51_0();
  v1 = v0;
  v3 = v2;
  OUTLINED_FUNCTION_45();
  v5 = *(v4 + 136);
  v11 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_50(v7);
  *v8 = v9;
  OUTLINED_FUNCTION_35(v8);

  return v11(v3, v1);
}

uint64_t sub_227D45C98(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return OUTLINED_FUNCTION_1();
}

uint64_t sub_227D45CAC()
{
  OUTLINED_FUNCTION_20();
  v1 = v0[3];
  v2 = swift_task_alloc();
  v0[5] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[6] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA9A0, &qword_227D6A478);
  OUTLINED_FUNCTION_133();
  *v3 = v4;
  v3[1] = sub_227D45D80;
  v5 = v0[4];
  OUTLINED_FUNCTION_80_1();

  return sub_227B4CC14();
}

uint64_t sub_227D45D80()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_2();
  *v4 = v3;
  v6 = *(v5 + 48);
  v7 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v8 = v7;
  *(v3 + 56) = v0;

  if (!v0)
  {
    v9 = *(v3 + 40);
  }

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_227D45E84()
{
  OUTLINED_FUNCTION_6();
  v0[3] = v1;
  v0[4] = v2;
  v0[2] = v3;
  v4 = sub_227D4AD98();
  v0[5] = v4;
  OUTLINED_FUNCTION_10_0(v4);
  v0[6] = v5;
  v7 = *(v6 + 64);
  v0[7] = OUTLINED_FUNCTION_30();
  v8 = sub_227D4BD88();
  OUTLINED_FUNCTION_5(v8);
  v10 = *(v9 + 64);
  v0[8] = OUTLINED_FUNCTION_30();
  v11 = sub_227D4BDA8();
  v0[9] = v11;
  OUTLINED_FUNCTION_10_0(v11);
  v0[10] = v12;
  v14 = *(v13 + 64);
  v0[11] = OUTLINED_FUNCTION_30();
  v15 = sub_227D4BD68();
  v0[12] = v15;
  OUTLINED_FUNCTION_10_0(v15);
  v0[13] = v16;
  v18 = *(v17 + 64);
  v0[14] = OUTLINED_FUNCTION_30();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA9D8, &qword_227D6A530);
  OUTLINED_FUNCTION_5(v19);
  v21 = *(v20 + 64);
  v0[15] = OUTLINED_FUNCTION_30();
  v22 = sub_227D4BDC8();
  OUTLINED_FUNCTION_5(v22);
  v24 = *(v23 + 64);
  v0[16] = OUTLINED_FUNCTION_30();
  v25 = sub_227D4AD68();
  v0[17] = v25;
  OUTLINED_FUNCTION_10_0(v25);
  v0[18] = v26;
  v28 = *(v27 + 64);
  v0[19] = OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v29, v30, v31);
}

uint64_t sub_227D46080()
{
  OUTLINED_FUNCTION_51_0();
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[17];
  v5 = v0[14];
  v4 = v0[15];
  v6 = v0[4];
  sub_227D4CE58();
  sub_227D4AD58();
  v7 = *(v2 + 16);
  v8 = OUTLINED_FUNCTION_11_13();
  v9(v8);
  v10 = sub_227D4BD48();
  OUTLINED_FUNCTION_17_21(v10);
  sub_227D47928();
  sub_227D4D1F8();
  OUTLINED_FUNCTION_4_32();
  sub_227D4BCB8();
  v11 = *(MEMORY[0x277D0C710] + 4);
  v12 = swift_task_alloc();
  v0[20] = v12;
  sub_227D4ACB8();
  OUTLINED_FUNCTION_133();
  *v12 = v13;
  v14 = OUTLINED_FUNCTION_81();

  return MEMORY[0x282163EE8](v14);
}

uint64_t sub_227D4619C()
{
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_2();
  *v3 = v2;
  v5 = v4[20];
  v6 = v4[15];
  v7 = v4[14];
  v8 = v4[13];
  v9 = v4[12];
  v10 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v11 = v10;
  *(v12 + 168) = v0;

  v13 = OUTLINED_FUNCTION_10_4();
  v14(v13);
  sub_227B1365C(v6, &qword_27D7EA9D8, &qword_227D6A530);
  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_227D464C0()
{
  OUTLINED_FUNCTION_20();
  v1 = *(v0 + 16);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_20_0(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_28_0(v3);

  return sub_227D45E84();
}

uint64_t sub_227D46558@<X0>(uint64_t *a1@<X8>)
{
  result = sub_227D4ACE8();
  *a1 = result;
  return result;
}

uint64_t sub_227D46584(uint64_t *a1)
{
  v1 = *a1;
  sub_227D4CE58();
  return sub_227D4ACF8();
}

uint64_t sub_227D465B0(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return OUTLINED_FUNCTION_1();
}

uint64_t sub_227D465C8()
{
  OUTLINED_FUNCTION_20();
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *(v1 + 16) = *(v0 + 24);
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA9A8, &qword_227D6A498);
  OUTLINED_FUNCTION_133();
  *v2 = v3;
  v2[1] = sub_227D4669C;
  v4 = *(v0 + 40);
  OUTLINED_FUNCTION_80_1();

  return sub_227B4CC14();
}

uint64_t sub_227D4669C()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_2();
  *v4 = v3;
  v6 = *(v5 + 56);
  v7 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v8 = v7;
  *(v3 + 64) = v0;

  if (!v0)
  {
    v9 = *(v3 + 48);
  }

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_227D467A0()
{
  OUTLINED_FUNCTION_6();
  v0[4] = v1;
  v0[5] = v2;
  v0[2] = v3;
  v0[3] = v4;
  v5 = sub_227D4B388();
  v0[6] = v5;
  OUTLINED_FUNCTION_10_0(v5);
  v0[7] = v6;
  v8 = *(v7 + 64);
  v0[8] = OUTLINED_FUNCTION_30();
  v9 = sub_227D4BCE8();
  OUTLINED_FUNCTION_5(v9);
  v11 = *(v10 + 64);
  v0[9] = OUTLINED_FUNCTION_30();
  v12 = sub_227D4BD08();
  v0[10] = v12;
  OUTLINED_FUNCTION_10_0(v12);
  v0[11] = v13;
  v15 = *(v14 + 64);
  v0[12] = OUTLINED_FUNCTION_30();
  v16 = sub_227D4BCC8();
  v0[13] = v16;
  OUTLINED_FUNCTION_10_0(v16);
  v0[14] = v17;
  v19 = *(v18 + 64);
  v0[15] = OUTLINED_FUNCTION_30();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA9C8, &qword_227D6A4F8);
  OUTLINED_FUNCTION_5(v20);
  v22 = *(v21 + 64);
  v0[16] = OUTLINED_FUNCTION_30();
  v23 = sub_227D4BD28();
  OUTLINED_FUNCTION_5(v23);
  v25 = *(v24 + 64);
  v0[17] = OUTLINED_FUNCTION_30();
  v26 = sub_227D4B358();
  v0[18] = v26;
  OUTLINED_FUNCTION_10_0(v26);
  v0[19] = v27;
  v29 = *(v28 + 64);
  v0[20] = OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v30, v31, v32);
}

uint64_t sub_227D4699C()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[18];
  v5 = v0[15];
  v4 = v0[16];
  v7 = v0[4];
  v6 = v0[5];
  sub_227D4CE58();
  sub_227D4CE58();
  sub_227D4B348();
  v8 = *(v2 + 16);
  v9 = OUTLINED_FUNCTION_11_13();
  v10(v9);
  v11 = sub_227D4BCA8();
  OUTLINED_FUNCTION_17_21(v11);
  sub_227D478D4();
  sub_227D4D1F8();
  OUTLINED_FUNCTION_4_32();
  sub_227D4BCB8();
  v12 = *(MEMORY[0x277D0C708] + 4);
  v13 = swift_task_alloc();
  v0[21] = v13;
  sub_227D4ACB8();
  OUTLINED_FUNCTION_133();
  *v13 = v14;
  v13[1] = sub_227D46ACC;
  v16 = v0[16];
  v15 = v0[17];
  v17 = v0[15];
  v18 = v0[3];

  return MEMORY[0x282163EE0](v15, v17, v16);
}

uint64_t sub_227D46ACC()
{
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_2();
  *v3 = v2;
  v5 = v4[21];
  v6 = v4[16];
  v7 = v4[15];
  v8 = v4[14];
  v9 = v4[13];
  v10 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v11 = v10;
  *(v12 + 176) = v0;

  v13 = OUTLINED_FUNCTION_10_4();
  v14(v13);
  sub_227B1365C(v6, &qword_27D7EA9C8, &qword_227D6A4F8);
  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_227D46E38()
{
  OUTLINED_FUNCTION_20();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_20_0(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_28_0(v4);

  return sub_227D467A0();
}

uint64_t sub_227D46ED4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_227D4B368();
  *a1 = result;
  return result;
}

uint64_t sub_227D46F00(uint64_t *a1)
{
  v1 = *a1;
  sub_227D4CE58();
  return sub_227D4B378();
}

uint64_t sub_227D46F2C(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return OUTLINED_FUNCTION_1();
}

uint64_t sub_227D46F40()
{
  OUTLINED_FUNCTION_20();
  v1 = v0[3];
  v2 = swift_task_alloc();
  v0[5] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[6] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA9B0, &qword_227D6A4B8);
  OUTLINED_FUNCTION_133();
  *v3 = v4;
  v3[1] = sub_227D47014;
  v5 = v0[4];
  OUTLINED_FUNCTION_80_1();

  return sub_227B4CC14();
}

uint64_t sub_227D47014()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_2();
  *v4 = v3;
  v6 = *(v5 + 48);
  v7 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v8 = v7;
  *(v3 + 56) = v0;

  if (!v0)
  {
    v9 = *(v3 + 40);
  }

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_227D47118()
{
  OUTLINED_FUNCTION_6();
  v0[3] = v1;
  v0[4] = v2;
  v0[2] = v3;
  v4 = sub_227D4B5E8();
  v0[5] = v4;
  OUTLINED_FUNCTION_10_0(v4);
  v0[6] = v5;
  v7 = *(v6 + 64);
  v0[7] = OUTLINED_FUNCTION_30();
  v8 = sub_227D4C5F8();
  OUTLINED_FUNCTION_5(v8);
  v10 = *(v9 + 64);
  v0[8] = OUTLINED_FUNCTION_30();
  v11 = sub_227D4C618();
  v0[9] = v11;
  OUTLINED_FUNCTION_10_0(v11);
  v0[10] = v12;
  v14 = *(v13 + 64);
  v0[11] = OUTLINED_FUNCTION_30();
  v15 = sub_227D4C5D8();
  v0[12] = v15;
  OUTLINED_FUNCTION_10_0(v15);
  v0[13] = v16;
  v18 = *(v17 + 64);
  v0[14] = OUTLINED_FUNCTION_30();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA9B8, &qword_227D6A4C0);
  OUTLINED_FUNCTION_5(v19);
  v21 = *(v20 + 64);
  v0[15] = OUTLINED_FUNCTION_30();
  v22 = sub_227D4C638();
  OUTLINED_FUNCTION_5(v22);
  v24 = *(v23 + 64);
  v0[16] = OUTLINED_FUNCTION_30();
  v25 = sub_227D4B5B8();
  v0[17] = v25;
  OUTLINED_FUNCTION_10_0(v25);
  v0[18] = v26;
  v28 = *(v27 + 64);
  v0[19] = OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v29, v30, v31);
}

uint64_t sub_227D47314(uint64_t a1)
{
  v3 = v1[4];
  if (v3 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v3 > 0x7FFFFFFF)
  {
LABEL_7:
    __break(1u);
    return MEMORY[0x282163F58](a1);
  }

  v5 = v1[18];
  v4 = v1[19];
  v6 = v1[17];
  v8 = v1[14];
  v7 = v1[15];
  sub_227D4B5A8();
  v9 = *(v5 + 16);
  v10 = OUTLINED_FUNCTION_11_13();
  v11(v10);
  v12 = sub_227D4C5B8();
  OUTLINED_FUNCTION_17_21(v12);
  sub_227D47828();
  sub_227D4D1F8();
  v13 = OUTLINED_FUNCTION_4_32();
  MEMORY[0x22AAA5310](v13);
  v14 = *(MEMORY[0x277D0C780] + 4);
  v15 = swift_task_alloc();
  v1[20] = v15;
  sub_227D4ACB8();
  OUTLINED_FUNCTION_133();
  *v15 = v16;
  a1 = OUTLINED_FUNCTION_81();

  return MEMORY[0x282163F58](a1);
}

uint64_t sub_227D4746C()
{
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_2();
  *v3 = v2;
  v5 = v4[20];
  v6 = v4[15];
  v7 = v4[14];
  v8 = v4[13];
  v9 = v4[12];
  v10 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v11 = v10;
  *(v12 + 168) = v0;

  v13 = OUTLINED_FUNCTION_10_4();
  v14(v13);
  sub_227B1365C(v6, &qword_27D7EA9B8, &qword_227D6A4C0);
  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_227D47790()
{
  OUTLINED_FUNCTION_20();
  v1 = *(v0 + 16);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_20_0(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_28_0(v3);

  return sub_227D47118();
}

unint64_t sub_227D47828()
{
  result = qword_27D7EA9C0;
  if (!qword_27D7EA9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7EA9C0);
  }

  return result;
}

uint64_t sub_227D4787C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_227D4ACE8();
  *a1 = result;
  return result;
}

uint64_t sub_227D478A8(uint64_t *a1)
{
  v1 = *a1;
  sub_227D4CE58();
  return sub_227D4ACF8();
}

unint64_t sub_227D478D4()
{
  result = qword_27D7EA9D0;
  if (!qword_27D7EA9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7EA9D0);
  }

  return result;
}

unint64_t sub_227D47928()
{
  result = qword_27D7EA9E0;
  if (!qword_27D7EA9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7EA9E0);
  }

  return result;
}

uint64_t sub_227D4797C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_15_6(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_227D479F0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_227D492A8();
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = sub_227D49FA8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v33 - v14;
  result = sub_227D47C80(&v33 - v14);
  if (!v1)
  {
    v33 = v7;
    v34 = a1;
    (*(v9 + 104))(v13, *MEMORY[0x277D0CFF0], v8);
    v17 = sub_227D47E7C();
    v18 = *(v9 + 8);
    v18(v13, v8);
    v19 = (v18)(v15, v8);
    if (v17)
    {
      v20 = MEMORY[0x22AAA4230](v19);
      v21 = v34;
      if (v22 & 1) != 0 || (v23 = v20, v24 = MEMORY[0x22AAA41D0](), (v25) || (v26 = v24, v27 = MEMORY[0x22AAA4220](), (v28))
      {
        v29 = 1;
      }

      else
      {
        v31 = v27;
        v37 = v23;
        sub_227C1897C();
        v32 = MEMORY[0x277D84A28];
        sub_227B27F4C(MEMORY[0x277D84A28]);
        v36 = v26;
        sub_227B27F4C(v32);
        v35 = v31;
        sub_227B27F84(v32);
        sub_227D4A5C8();
        v29 = 0;
      }
    }

    else
    {
      v29 = 1;
      v21 = v34;
    }

    v30 = sub_227D4A5D8();
    return __swift_storeEnumTagSinglePayload(v21, v29, 1, v30);
  }

  return result;
}

uint64_t sub_227D47C80@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA9E8, &qword_227D6A568);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v13 - v4;
  sub_227D4B4A8();
  sub_227D49F98();
  v6 = sub_227D49FA8();
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) != 1)
  {
    return (*(*(v6 - 8) + 32))(a1, v5, v6);
  }

  sub_227D47F5C(v5);
  v7 = sub_227D49E08();
  sub_227B12B28(&qword_27D7E67C8, MEMORY[0x277D0CE80]);
  swift_allocError();
  v9 = v8;
  v13 = 0;
  v14 = 0xE000000000000000;
  sub_227D4D668();

  v13 = 0xD00000000000001ELL;
  v14 = 0x8000000227D79290;
  v10 = sub_227D4B4A8();
  MEMORY[0x22AAA5DA0](v10);

  v11 = v14;
  *v9 = v13;
  v9[1] = v11;
  (*(*(v7 - 8) + 104))(v9, *MEMORY[0x277D0CE68], v7);
  return swift_willThrow();
}

uint64_t sub_227D47E7C()
{
  sub_227D49FA8();
  sub_227B12B28(&qword_27D7EA9F0, MEMORY[0x277D0CFF8]);
  sub_227D4D148();
  sub_227D4D148();
  if (v5 == v3 && v6 == v4)
  {
    v1 = 1;
  }

  else
  {
    v1 = sub_227D4DA78();
  }

  return v1 & 1;
}

uint64_t sub_227D47F5C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA9E8, &qword_227D6A568);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_227D47FC4(uint64_t a1, double a2, double a3)
{
  *(v4 + 200) = v3;
  *(v4 + 184) = a2;
  *(v4 + 192) = a3;
  *(v4 + 176) = a1;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6CD8, &qword_227D5C1C0) - 8) + 64) + 15;
  *(v4 + 208) = swift_task_alloc();
  v6 = sub_227D49188();
  *(v4 + 216) = v6;
  v7 = *(v6 - 8);
  *(v4 + 224) = v7;
  v8 = *(v7 + 64) + 15;
  *(v4 + 232) = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6830, &unk_227D5E270);
  *(v4 + 240) = v9;
  v10 = *(v9 - 8);
  *(v4 + 248) = v10;
  v11 = *(v10 + 64) + 15;
  *(v4 + 256) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227D4812C, 0, 0);
}

void sub_227D4812C()
{
  v1 = *(v0 + 31);
  v2 = *(v0 + 22);
  v3 = *(v2 + 16);
  v4 = MEMORY[0x277D84F90];
  v0[34] = 0.0;
  *(v0 + 35) = v4;
  *(v0 + 33) = v3;
  if (!v3)
  {
    v6 = *(v0 + 32);
    v7 = *(v0 + 29);
    v8 = *(v0 + 26);

    v9 = *(v0 + 1);
    OUTLINED_FUNCTION_2_40();

    __asm { BRAA            X2, X16 }
  }

  (*(v1 + 16))(*(v0 + 32), v2 + ((*(v1 + 80) + 32) & ~*(v1 + 80)), *(v0 + 30));
  v5 = sub_227D4A7A8();
  v16 = OUTLINED_FUNCTION_3_29(v5, v12);
  if (!(v14 ^ v15 | v13))
  {
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v16 <= -9.22337204e18)
  {
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_4_33();
  if (!v14)
  {
    goto LABEL_23;
  }

  v18 = *(v0 + 24);
  *(v0 + 20) = v17;
  sub_227D48CAC();
  *(v0 + 6) = sub_227D4D558();
  *(v0 + 7) = v19;
  sub_227BA2B5C();
  OUTLINED_FUNCTION_0_62();
  v20 = sub_227D4D518();
  v22 = v21;

  *(v0 + 8) = v20;
  *(v0 + 9) = v22;
  *(v0 + 10) = 8218747;
  v0[11] = -7.54792485e168;
  if ((v18 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v0[24] <= -9.22337204e18)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  OUTLINED_FUNCTION_4_33();
  if (v14)
  {
    v25 = *(v0 + 26);
    v24 = *(v0 + 27);
    *(v0 + 21) = v23;
    *(v0 + 12) = sub_227D4D558();
    *(v0 + 13) = v26;
    OUTLINED_FUNCTION_0_62();
    v27 = sub_227D4D518();
    v29 = v28;

    *(v0 + 14) = v27;
    *(v0 + 15) = v29;
    *(v0 + 16) = 8218235;
    v0[17] = -7.54792485e168;
    *(v0 + 18) = 6778480;
    v0[19] = -7.54792485e168;
    OUTLINED_FUNCTION_0_62();
    sub_227D4D518();

    sub_227D49168();

    if (__swift_getEnumTagSinglePayload(v25, 1, v24) == 1)
    {
      v31 = *(v0 + 31);
      v30 = *(v0 + 32);
      v32 = *(v0 + 30);
      v33 = *(v0 + 26);

      sub_227D48D00(v33);
      sub_227D49E08();
      sub_227BC0E2C();
      OUTLINED_FUNCTION_5_5();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EAA00, &qword_227D6A578);
      sub_227D49DB8();
      swift_willThrow();
      (*(v31 + 8))(v30, v32);
      OUTLINED_FUNCTION_6_23();

      v34 = *(v0 + 1);
      OUTLINED_FUNCTION_2_40();

      __asm { BRAA            X1, X16 }
    }

    v37 = *(v0 + 25);
    (*(*(v0 + 28) + 32))(*(v0 + 29), *(v0 + 26), *(v0 + 27));
    v38 = v37[14];
    __swift_project_boxed_opaque_existential_1(v37 + 10, v37[13]);
    OUTLINED_FUNCTION_5_31();
    v45 = v39 + *v39;
    v41 = *(v40 + 4);
    v42 = swift_task_alloc();
    *(v0 + 36) = v42;
    *v42 = v0;
    OUTLINED_FUNCTION_1_41(v42);
    OUTLINED_FUNCTION_2_40();

    __asm { BRAA            X3, X16 }
  }

LABEL_26:
  __break(1u);
}

uint64_t sub_227D485B4(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 288);
  v9 = *v3;
  v4[37] = a1;
  v4[38] = a2;
  v4[39] = v2;

  if (v2)
  {
    v6 = v4[35];

    v7 = sub_227D48C00;
  }

  else
  {
    v7 = sub_227D486D4;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

void sub_227D486D4()
{
  v1 = *(v0 + 35);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *(v0 + 35);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v3 = sub_227CB72A0(0, v3[2] + 1, 1, *(v0 + 35));
  }

  v5 = v3[2];
  v4 = v3[3];
  if (v5 >= v4 >> 1)
  {
    v3 = sub_227CB72A0((v4 > 1), v5 + 1, 1, v3);
  }

  v7 = *(v0 + 37);
  v6 = *(v0 + 38);
  v9 = *(v0 + 31);
  v8 = *(v0 + 32);
  v10 = *(v0 + 30);
  (*(*(v0 + 28) + 8))(*(v0 + 29), *(v0 + 27));
  (*(v9 + 8))(v8, v10);
  v3[2] = v5 + 1;
  v11 = &v3[2 * v5];
  v11[4] = v7;
  v11[5] = v6;
  v12 = *(v0 + 39);
  v13 = *(v0 + 33);
  v14 = *(v0 + 34) + 1;
  *(v0 + 34) = v14;
  *(v0 + 35) = v3;
  v15 = *(v0 + 32);
  if (v14 == v13)
  {
    v16 = *(v0 + 29);
    v17 = *(v0 + 26);
    v18 = *(v0 + 32);

    v19 = *(v0 + 1);
    OUTLINED_FUNCTION_2_40();

    __asm { BRAA            X2, X16 }
  }

  (*(*(v0 + 31) + 16))(*(v0 + 32), *(v0 + 22) + ((*(*(v0 + 31) + 80) + 32) & ~*(*(v0 + 31) + 80)) + *(*(v0 + 31) + 72) * v14, *(v0 + 30));
  v22 = sub_227D4A7A8();
  if (v12)
  {
    v24 = OUTLINED_FUNCTION_7_27();
    v25(v24);

    goto LABEL_22;
  }

  v26 = OUTLINED_FUNCTION_3_29(v22, v23);
  if (!(v28 ^ v29 | v27))
  {
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v26 <= -9.22337204e18)
  {
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_4_33();
  if (!v28)
  {
    goto LABEL_29;
  }

  v31 = *(v0 + 24);
  *(v0 + 20) = v30;
  sub_227D48CAC();
  *(v0 + 6) = sub_227D4D558();
  *(v0 + 7) = v32;
  sub_227BA2B5C();
  OUTLINED_FUNCTION_0_62();
  v33 = sub_227D4D518();
  v35 = v34;

  *(v0 + 8) = v33;
  *(v0 + 9) = v35;
  *(v0 + 10) = 8218747;
  v0[11] = -7.54792485e168;
  if ((v31 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v0[24] <= -9.22337204e18)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  OUTLINED_FUNCTION_4_33();
  if (v28)
  {
    v38 = *(v0 + 26);
    v37 = *(v0 + 27);
    *(v0 + 21) = v36;
    *(v0 + 12) = sub_227D4D558();
    *(v0 + 13) = v39;
    OUTLINED_FUNCTION_0_62();
    v40 = sub_227D4D518();
    v42 = v41;

    *(v0 + 14) = v40;
    *(v0 + 15) = v42;
    *(v0 + 16) = 8218235;
    v0[17] = -7.54792485e168;
    *(v0 + 18) = 6778480;
    v0[19] = -7.54792485e168;
    OUTLINED_FUNCTION_0_62();
    sub_227D4D518();

    sub_227D49168();

    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v38, 1, v37);
    v44 = *(v0 + 26);
    if (EnumTagSinglePayload != 1)
    {
      v51 = *(v0 + 25);
      (*(*(v0 + 28) + 32))(*(v0 + 29), *(v0 + 26), *(v0 + 27));
      v52 = v51[14];
      __swift_project_boxed_opaque_existential_1(v51 + 10, v51[13]);
      OUTLINED_FUNCTION_5_31();
      v62 = v53 + *v53;
      v55 = *(v54 + 4);
      v56 = swift_task_alloc();
      *(v0 + 36) = v56;
      *v56 = v0;
      OUTLINED_FUNCTION_1_41(v56, v57, v58, v59);
      OUTLINED_FUNCTION_2_40();

      __asm { BRAA            X3, X16 }
    }

    v46 = *(v0 + 31);
    v45 = *(v0 + 32);
    v47 = *(v0 + 30);

    sub_227D48D00(v44);
    sub_227D49E08();
    sub_227BC0E2C();
    OUTLINED_FUNCTION_5_5();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EAA00, &qword_227D6A578);
    sub_227D49DB8();
    swift_willThrow();
    (*(v46 + 8))(v45, v47);
LABEL_22:
    OUTLINED_FUNCTION_6_23();

    v48 = *(v0 + 1);
    OUTLINED_FUNCTION_2_40();

    __asm { BRAA            X1, X16 }
  }

LABEL_32:
  __break(1u);
}

uint64_t sub_227D48C00()
{
  v2 = v0[31];
  v1 = v0[32];
  v3 = v0[30];
  (*(v0[28] + 8))(v0[29], v0[27]);
  (*(v2 + 8))(v1, v3);
  v4 = v0[39];
  OUTLINED_FUNCTION_6_23();

  v5 = v0[1];

  return v5();
}

unint64_t sub_227D48CAC()
{
  result = qword_27D7EA9F8;
  if (!qword_27D7EA9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7EA9F8);
  }

  return result;
}

uint64_t sub_227D48D00(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6CD8, &qword_227D5C1C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}