uint64_t sub_1DC327DC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v74 = a2;
  v4 = a1 - 8;
  v72 = *(a1 - 8);
  v5 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](a1);
  OUTLINED_FUNCTION_15();
  v71 = v6;
  MEMORY[0x1EEE9AC00](v7);
  v70 = &v60 - v8;
  v9 = *(v4 + 24);
  v10 = sub_1DC517D8C();
  OUTLINED_FUNCTION_2_3();
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v60 - v16;
  OUTLINED_FUNCTION_2_3();
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_15();
  v69 = v23;
  v25 = MEMORY[0x1EEE9AC00](v24);
  v27 = &v60 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v73 = &v60 - v28;
  v29 = *&v2[*(v4 + 48)];
  v30 = *v2;
  v31 = *(v2 + 1);
  v32 = sub_1DC5176FC();
  v33 = [v29 objectForKey_];

  if (!v33)
  {
    return (*(v19 + 16))(v74, &v2[*(a1 + 28)], v9);
  }

  sub_1DC517E8C();
  swift_unknownObjectRelease();
  sub_1DC291F78(v76, v75);
  if ((swift_dynamicCast() & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v76);
    __swift_storeEnumTagSinglePayload(v17, 1, 1, v9);
    (*(v12 + 8))(v17, v10);
    return (*(v19 + 16))(v74, &v2[*(a1 + 28)], v9);
  }

  __swift_storeEnumTagSinglePayload(v17, 0, 1, v9);
  v34 = v73;
  v67 = *(v19 + 32);
  v68 = v19 + 32;
  v67(v73, v17, v9);
  v35 = sub_1DC517B9C();
  v36 = *&v2[*(a1 + 32)];
  v37 = *(v72 + 16);
  v37(v70, v2, a1);
  v65 = a1;
  v37(v71, v2, a1);
  v38 = *(v19 + 16);
  v66 = v27;
  v38(v27, v34, v9);
  v63 = v35;
  v64 = v36;
  if (os_log_type_enabled(v36, v35))
  {
    v39 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v75[0] = v62;
    *v39 = 136315650;
    v61 = v38;
    v40 = v65;
    v41 = v70;
    v42 = &v70[*(v65 + 36)];
    v43 = *v42;
    v44 = v42[1];
    v72 = *(v72 + 8);
    v45 = v72;

    v45(v41, v40);
    v46 = sub_1DC291244(v43, v44, v75);

    *(v39 + 4) = v46;
    *(v39 + 12) = 2080;
    v47 = v71;
    v48 = *v71;
    v49 = v71[1];

    (v72)(v47, v40);
    v50 = sub_1DC291244(v48, v49, v75);

    *(v39 + 14) = v50;
    *(v39 + 22) = 2080;
    v51 = v66;
    v61(v69, v66, v9);
    v52 = sub_1DC51777C();
    v54 = v53;
    (*(v19 + 8))(v51, v9);
    v55 = sub_1DC291244(v52, v54, v75);

    *(v39 + 24) = v55;
    _os_log_impl(&dword_1DC287000, v64, v63, "defaults read %s %s -> %s", v39, 0x20u);
    v56 = v62;
    swift_arrayDestroy();
    MEMORY[0x1E1298840](v56, -1, -1);
    MEMORY[0x1E1298840](v39, -1, -1);
  }

  else
  {
    (*(v19 + 8))(v66, v9);
    v58 = *(v72 + 8);
    v59 = v65;
    v58(v71, v65);
    v58(v70, v59);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v76);
  return (v67)(v74, v73, v9);
}

uint64_t sub_1DC328378(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (v6 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v8 >= a2)
  {
LABEL_26:
    if ((v6 & 0x80000000) != 0)
    {
      return __swift_getEnumTagSinglePayload((result + v7 + 16) & ~v7, v6, v4);
    }

    else
    {
      v17 = *(result + 8);
      if (v17 >= 0xFFFFFFFF)
      {
        LODWORD(v17) = -1;
      }

      return (v17 + 1);
    }
  }

  else
  {
    v9 = ((((((*(*(v4 - 8) + 64) + ((v7 + 16) & ~v7) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
    v10 = a2 - v8;
    v11 = v9 & 0xFFFFFFF8;
    if ((v9 & 0xFFFFFFF8) != 0)
    {
      v12 = 2;
    }

    else
    {
      v12 = v10 + 1;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    switch(v14)
    {
      case 1:
        v15 = *(result + v9);
        if (!v15)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v15 = *(result + v9);
        if (!v15)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v15 = *(result + v9);
        if (!v15)
        {
          goto LABEL_26;
        }

LABEL_22:
        v16 = v15 - 1;
        if (v11)
        {
          v16 = 0;
          LODWORD(v11) = *result;
        }

        result = v8 + (v11 | v16) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_1DC3284D0(uint64_t *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(v7 + 80);
  v11 = ((((((*(*(v6 - 8) + 64) + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v9 >= a3)
  {
    v15 = 0;
  }

  else
  {
    v12 = a3 - v9;
    if (((((((*(*(v6 - 8) + 64) + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v13 = v12 + 1;
    }

    else
    {
      v13 = 2;
    }

    if (v13 >= 0x10000)
    {
      v14 = 4;
    }

    else
    {
      v14 = 2;
    }

    if (v13 < 0x100)
    {
      v14 = 1;
    }

    if (v13 >= 2)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }
  }

  if (a2 <= v9)
  {
    switch(v15)
    {
      case 1:
        *(a1 + v11) = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *(a1 + v11) = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_42:
        __break(1u);
        break;
      case 4:
        *(a1 + v11) = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          if ((v8 & 0x80000000) != 0)
          {
            v20 = (a1 + v10 + 16) & ~v10;

            __swift_storeEnumTagSinglePayload(v20, a2, v8, v6);
          }

          else if ((a2 & 0x80000000) != 0)
          {
            *a1 = a2 & 0x7FFFFFFF;
            a1[1] = 0;
          }

          else
          {
            a1[1] = (a2 - 1);
          }
        }

        break;
    }
  }

  else
  {
    if (((((((*(*(v6 - 8) + 64) + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v16 = a2 - v9;
    }

    else
    {
      v16 = 1;
    }

    if (((((((*(*(v6 - 8) + 64) + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v17 = ~v9 + a2;
      v18 = OUTLINED_FUNCTION_43();
      bzero(v18, v19);
      *a1 = v17;
    }

    switch(v15)
    {
      case 1:
        *(a1 + v11) = v16;
        break;
      case 2:
        *(a1 + v11) = v16;
        break;
      case 3:
        goto LABEL_42;
      case 4:
        *(a1 + v11) = v16;
        break;
      default:
        return;
    }
  }
}

id sub_1DC3286BC()
{
  type metadata accessor for RegexHelper();
  v1 = swift_allocObject();
  v2 = 0x1E696A000uLL;
  v3 = objc_allocWithZone(MEMORY[0x1E696AE70]);
  *(v1 + 16) = sub_1DC333108(0x2E3D3F2B2E5C5C1BLL, 0xEC0000005C5C3F2ALL, 0);
  if (qword_1ECC82558 != -1)
  {
    OUTLINED_FUNCTION_20_9();
  }

  v4 = sub_1DC43EA74();
  v5 = v4[2];
  if (v5)
  {
    v18 = v1;
    v19 = MEMORY[0x1E69E7CC0];
    sub_1DC2DF6FC(0, v5, 0);
    v6 = 32;
    v7 = v19;
    do
    {
      sub_1DC428688(*(v4 + v6));
      OUTLINED_FUNCTION_155_1();
      v9 = *(v19 + 16);
      v8 = *(v19 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_1DC2DF6FC((v8 > 1), v9 + 1, 1);
      }

      *(v19 + 16) = v9 + 1;
      v10 = v19 + 16 * v9;
      *(v10 + 32) = 0x1E696A000uLL;
      *(v10 + 40) = v0;
      ++v6;
      --v5;
    }

    while (v5);

    v1 = v18;
    v2 = 0x1E696A000;
  }

  else
  {

    v7 = MEMORY[0x1E69E7CC0];
  }

  sub_1DC3332AC(v7);
  v11 = OUTLINED_FUNCTION_48_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v11, v12);
  OUTLINED_FUNCTION_1_6();
  sub_1DC333268(v13, &qword_1ECC7C130, &unk_1DC5240F0);
  sub_1DC5176AC();
  OUTLINED_FUNCTION_137();

  v14 = objc_allocWithZone(*(v2 + 3696));
  v15 = OUTLINED_FUNCTION_48_0();
  result = sub_1DC333108(v15, v16, 0);
  *(v1 + 24) = result;
  qword_1ECC8F6F0 = v1;
  return result;
}

uint64_t *sub_1DC328998()
{
  if (qword_1ECC85140 != -1)
  {
    OUTLINED_FUNCTION_58_5();
  }

  return &qword_1ECC8F6F0;
}

uint64_t sub_1DC3289D8(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v21 = a1;
  v22 = a2;
  v20 = sub_1DC51588C();
  v6 = *(v20 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 + 16);
  v11 = MEMORY[0x1E69E7CC0];
  if (!v10)
  {
    return v11;
  }

  v23 = MEMORY[0x1E69E7CC0];
  sub_1DC2AA348(0, v10, 0);
  v11 = v23;
  v19 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v12 = a3 + v19;
  v18 = (v6 + 32);
  v13 = *(v6 + 72);
  while (1)
  {
    v21(v12);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v23 = v11;
    v15 = *(v11 + 16);
    v14 = *(v11 + 24);
    if (v15 >= v14 >> 1)
    {
      sub_1DC2AA348(v14 > 1, v15 + 1, 1);
      v11 = v23;
    }

    *(v11 + 16) = v15 + 1;
    (*v18)(v11 + v19 + v15 * v13, v9, v20);
    v12 += v13;
    if (!--v10)
    {
      return v11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DC328B94()
{
  OUTLINED_FUNCTION_144_0();
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = v1;
    OUTLINED_FUNCTION_73();
    v3 = sub_1DC5176FC();

    v4 = OUTLINED_FUNCTION_65_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
    sub_1DC333268(&qword_1ECC7CAF0, &qword_1ECC7CAE8, &unk_1DC5240C0);
    sub_1DC2A32B0();
    v6 = sub_1DC517D5C();
    v8 = v7;
    v9 = sub_1DC5176FC();
    v10 = [v2 stringByReplacingMatchesInString:v3 options:0 range:v6 withTemplate:{v8, v9}];

    sub_1DC51772C();
  }

  else
  {
    sub_1DC517BAC();
    OUTLINED_FUNCTION_21_2();
    v11 = sub_1DC296DBC();
    OUTLINED_FUNCTION_40_1();
    sub_1DC516F0C();
  }

  return OUTLINED_FUNCTION_73();
}

uint64_t sub_1DC328D20()
{
  if (*(v0 + 24))
  {
    OUTLINED_FUNCTION_140_0();
    v2 = v1;
    OUTLINED_FUNCTION_36();
    v3 = sub_1DC5176FC();
    v4 = OUTLINED_FUNCTION_36();
    v5 = [v2 firstMatchInString:v3 options:0 range:{0, MEMORY[0x1E12961D0](v4)}];

    if (!v5)
    {
      return 0;
    }

    v6 = 1;
  }

  else
  {
    sub_1DC517BAC();
    OUTLINED_FUNCTION_135();
    v5 = sub_1DC296DBC();
    sub_1DC516F0C();
    v6 = 0;
  }

  return v6;
}

void sub_1DC328E00()
{
  OUTLINED_FUNCTION_164();
  OUTLINED_FUNCTION_144_0();
  v1 = sub_1DC51072C();
  v2 = OUTLINED_FUNCTION_0(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_1();
  v7 = *(v0 + 24);
  if (v7)
  {
    v8 = v7;
    OUTLINED_FUNCTION_73();
    v9 = sub_1DC5176FC();
    v10 = OUTLINED_FUNCTION_73();
    v11 = MEMORY[0x1E12961D0](v10);
    v12 = sub_1DC5176FC();
    v13 = [v8 stringByReplacingMatchesInString:v9 options:0 range:0 withTemplate:{v11, v12}];

    sub_1DC51772C();
    sub_1DC51070C();
    sub_1DC2A32B0();
    sub_1DC517E0C();

    v14 = *(v4 + 8);
    v15 = OUTLINED_FUNCTION_29_0();
    v16(v15);
  }

  else
  {
    sub_1DC517BAC();
    OUTLINED_FUNCTION_21_2();
    v17 = sub_1DC296DBC();
    OUTLINED_FUNCTION_40_1();
    sub_1DC516F0C();
  }

  OUTLINED_FUNCTION_73();
  OUTLINED_FUNCTION_154();
}

uint64_t sub_1DC328FE8()
{
  sub_1DC328FC0();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

void sub_1DC32901C()
{
  OUTLINED_FUNCTION_33();
  v18 = sub_1DC51072C();
  v1 = OUTLINED_FUNCTION_0(v18);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_2_4();
  v6 = sub_1DC31D128();
  v7 = v6[2];
  if (v7)
  {
    v19 = MEMORY[0x1E69E7CC0];
    sub_1DC2DF6FC(0, v7, 0);
    v8 = v19;
    v17 = (v3 + 8);
    v9 = 32;
    do
    {
      v10 = v6;
      sub_1DC31CF60(*(v6 + v9));
      sub_1DC51070C();
      sub_1DC2A32B0();
      v11 = sub_1DC517E0C();
      v13 = v12;
      (*v17)(v0, v18);

      v15 = *(v19 + 16);
      v14 = *(v19 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_1DC2DF6FC((v14 > 1), v15 + 1, 1);
      }

      *(v19 + 16) = v15 + 1;
      v16 = v19 + 16 * v15;
      *(v16 + 32) = v11;
      *(v16 + 40) = v13;
      ++v9;
      --v7;
      v6 = v10;
    }

    while (v7);
  }

  else
  {

    v8 = MEMORY[0x1E69E7CC0];
  }

  qword_1ECC8F588 = v8;
  OUTLINED_FUNCTION_34();
}

BOOL sub_1DC3291C4()
{
  sub_1DC51808C();
  OUTLINED_FUNCTION_23_2();

  return v0 != 0;
}

uint64_t sub_1DC329230()
{
  sub_1DC5182FC();
  sub_1DC51769C();
  return sub_1DC51833C();
}

uint64_t sub_1DC3292B4()
{
  sub_1DC5182FC();
  sub_1DC51769C();
  return sub_1DC51833C();
}

BOOL sub_1DC32930C@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DC3291C4();
  *a2 = result;
  return result;
}

void sub_1DC329340(uint64_t a1@<X8>)
{
  strcpy(a1, "[[Redacted]]");
  *(a1 + 13) = 0;
  *(a1 + 14) = -5120;
}

int64_t sub_1DC329368(uint64_t a1)
{
  v2 = sub_1DC51783C();
  if (v2 < a1)
  {
    a1 = v2;
  }

  OUTLINED_FUNCTION_31_0();
  result = sub_1DC51783C();
  if (result < a1)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_57_2();

    return sub_1DC3293DC();
  }

  return result;
}

unint64_t sub_1DC3293DC()
{
  OUTLINED_FUNCTION_144_0();
  v2 = sub_1DC51783C();
  if (v2 >= v1)
  {
    v3 = v1;
  }

  else
  {
    v3 = v2;
  }

  v4 = v3 & ~(v3 >> 63);
  OUTLINED_FUNCTION_31_0();
  v5 = sub_1DC51783C();
  if ((v0 & ~(v0 >> 63)) >= v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = v0 & ~(v0 >> 63);
  }

  OUTLINED_FUNCTION_57_2();
  result = sub_1DC51786C();
  if (__OFSUB__(v6, v4))
  {
    __break(1u);
  }

  else
  {
    v8 = result;
    OUTLINED_FUNCTION_57_2();
    result = sub_1DC51786C();
    if (result >> 14 >= v8 >> 14)
    {
      OUTLINED_FUNCTION_57_2();
      v9 = sub_1DC5179AC();
      MEMORY[0x1E1296060](v9);
      OUTLINED_FUNCTION_123_0();

      return OUTLINED_FUNCTION_56_0();
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DC3294B4()
{
  sub_1DC428688(6);
  sub_1DC2A32B0();
  OUTLINED_FUNCTION_27_9();
  sub_1DC517E1C();
  OUTLINED_FUNCTION_137();

  v3 = &v3;
  v4 = v0;
  sub_1DC428688(7);
  OUTLINED_FUNCTION_27_9();
  sub_1DC517E1C();
  OUTLINED_FUNCTION_163();

  v3 = &v3;
  v4 = 0xE000000000000000;
  sub_1DC428688(2);
  v1 = sub_1DC517E6C();

  return v1;
}

void sub_1DC3295D4()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_42_0();
  v0 = sub_1DC51072C();
  v1 = OUTLINED_FUNCTION_0(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_1();
  v6 = sub_1DC43EAB8();
  v7 = v6[2];
  if (v7)
  {

    v8 = 32;
    do
    {
      sub_1DC428688(*(v6 + v8));
      sub_1DC2A32B0();
      OUTLINED_FUNCTION_27_9();
      sub_1DC517E1C();

      ++v8;
      --v7;
    }

    while (v7);
  }

  else
  {
  }

  sub_1DC5106FC();
  sub_1DC2A32B0();
  sub_1DC517E0C();
  OUTLINED_FUNCTION_137();
  v9 = *(v3 + 8);
  v10 = OUTLINED_FUNCTION_73();
  v11(v10);

  OUTLINED_FUNCTION_48_0();
  OUTLINED_FUNCTION_34();
}

uint64_t sub_1DC32977C()
{
  sub_1DC428688(1);
  v0 = sub_1DC42867C();
  v2 = *v0;
  v3 = *(v0 + 1);
  sub_1DC2A32B0();
  OUTLINED_FUNCTION_27_9();
  sub_1DC517E1C();
  OUTLINED_FUNCTION_123_0();

  return OUTLINED_FUNCTION_56_0();
}

uint64_t sub_1DC329804@<X0>(uint64_t a1@<X8>)
{
  sub_1DC428688(4);
  v34 = v2;
  v3 = sub_1DC2A32B0();
  OUTLINED_FUNCTION_32_7(v3, MEMORY[0x1E69E6158], v4, v5, v6, v7, v8, v9, v34);
  v10 = sub_1DC517E5C();

  if (v10)
  {
    v11 = MEMORY[0x1E69D02F8];
  }

  else
  {
    sub_1DC428688(26);
    OUTLINED_FUNCTION_32_7(v12, MEMORY[0x1E69E6158], v13, v14, v15, v16, v17, v18, v12);
    v19 = sub_1DC517E5C();

    if (v19)
    {
      v11 = MEMORY[0x1E69D02F0];
    }

    else
    {
      sub_1DC428688(27);
      OUTLINED_FUNCTION_32_7(v20, MEMORY[0x1E69E6158], v21, v22, v23, v24, v25, v26, v20);
      v27 = sub_1DC517E5C();

      if (v27)
      {
        sub_1DC515F3C();
        OUTLINED_FUNCTION_16_4();
        sub_1DC3339CC(v28, v29);
        OUTLINED_FUNCTION_56_7();
        sub_1DC51502C();
        sub_1DC51500C();

        v11 = MEMORY[0x1E69D02E0];
      }

      else
      {
        v11 = MEMORY[0x1E69D02D8];
      }
    }
  }

  v30 = *v11;
  v31 = sub_1DC5157EC();
  OUTLINED_FUNCTION_35(v31);
  return (*(v32 + 104))(a1, v30);
}

BOOL sub_1DC3299B0(uint64_t a1, uint64_t a2, uint64_t a3, os_log_type_t a4)
{
  OUTLINED_FUNCTION_42_0();
  sub_1DC428688(27);
  sub_1DC329B0C();
  v7 = v6;

  if ((v7 & 1) == 0)
  {
    return 0;
  }

  v8 = 0;
  v9 = (v4 + 40);
  v10 = *(v4 + 16) + 1;
  while (--v10)
  {
    v11 = v9 + 2;
    v17 = *(v9 - 1);
    v18 = *v9;
    sub_1DC2A32B0();
    v12 = sub_1DC517E5C();
    v9 = v11;
    v13 = __OFADD__(v8, v12 & 1);
    v8 += v12 & 1;
    if (v13)
    {
      __break(1u);
      return 0;
    }
  }

  sub_1DC517B9C();
  OUTLINED_FUNCTION_135();
  v15 = sub_1DC296DBC();
  if (os_log_type_enabled(v15, a4))
  {
    v16 = OUTLINED_FUNCTION_63();
    *v16 = 134217984;
    *(v16 + 4) = v8;
    _os_log_impl(&dword_1DC287000, v15, a4, "Number of tools found in model output %ld", v16, 0xCu);
    OUTLINED_FUNCTION_66();
  }

  return v8 == 1;
}

void sub_1DC329B0C()
{
  OUTLINED_FUNCTION_164();
  OUTLINED_FUNCTION_97_1();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CD00, &unk_1DC5259F0);
  OUTLINED_FUNCTION_10(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_31_3();
  OUTLINED_FUNCTION_35_0();
  v5 = sub_1DC51783C();
  OUTLINED_FUNCTION_47_0();
  if (v5 >= sub_1DC51783C())
  {
    OUTLINED_FUNCTION_47_0();
    sub_1DC51783C();
    sub_1DC51786C();
    v6 = sub_1DC510C8C();
    OUTLINED_FUNCTION_35(v6);
    v8 = *(v7 + 16);
    OUTLINED_FUNCTION_62_3();
    v13(v9, v10, v11, v12);
    OUTLINED_FUNCTION_61();
    __swift_storeEnumTagSinglePayload(v14, v15, v16, v6);
    sub_1DC2A32B0();
    sub_1DC517E4C();
    sub_1DC28EB30(v0, &qword_1ECC7CD00, &unk_1DC5259F0);
  }

  OUTLINED_FUNCTION_154();
}

void sub_1DC329C6C()
{
  OUTLINED_FUNCTION_33();
  v24 = v1;
  v25 = v2;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CAF8, &qword_1DC5240D0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_53_4();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v24 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CB00, &qword_1DC5240D8);
  v11 = *(v6 + 72);
  v12 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1DC522F20;
  v14 = (v13 + v12);
  v15 = *(v5 + 48);
  *v14 = 0x747067746168633CLL;
  *(v14 + 1) = 0xE90000000000003ELL;
  v16 = *MEMORY[0x1E69D0620];
  v17 = sub_1DC515F4C();
  v18 = *(v17 - 8);
  (*(v18 + 104))(&v14[v15], v16, v17);
  OUTLINED_FUNCTION_115();
  sub_1DC2DB2AC();
  v28 = v4;
  v29 = v24;
  v19 = v0[1];
  v26 = *v0;
  v27 = v19;
  sub_1DC2A32B0();
  if (OUTLINED_FUNCTION_50_7())
  {
    swift_setDeallocating();
    sub_1DC3331E4();
    sub_1DC2DB254();
    v20 = *(v10 + 1);

    v21 = v25;
    (*(v18 + 32))(v25, &v10[*(v5 + 48)], v17);
    v22 = 0;
    v23 = v21;
  }

  else
  {
    sub_1DC28EB30(v0, &qword_1ECC7CAF8, &qword_1DC5240D0);
    swift_setDeallocating();
    sub_1DC3331E4();
    v22 = 1;
    v23 = v25;
  }

  __swift_storeEnumTagSinglePayload(v23, v22, 1, v17);
  OUTLINED_FUNCTION_34();
}

uint64_t sub_1DC329EF0()
{
  OUTLINED_FUNCTION_144_0();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CB08, &unk_1DC5240E0);
  OUTLINED_FUNCTION_10(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_148();
  sub_1DC428688(28);
  sub_1DC2A32B0();
  v5 = OUTLINED_FUNCTION_110_0();

  if (v5)
  {
    return 1;
  }

  OUTLINED_FUNCTION_73();
  sub_1DC329C6C();
  sub_1DC515F4C();
  v7 = OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_39(v7, v8, v9);
  if (v10)
  {
    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  sub_1DC28EB30(v0, &qword_1ECC7CB08, &unk_1DC5240E0);
  return v6;
}

uint64_t sub_1DC329FF0()
{
  OUTLINED_FUNCTION_140_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C440, &qword_1DC522EF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DC523DA0;
  sub_1DC428688(3);
  *(inited + 32) = v2;
  *(inited + 40) = v3;
  sub_1DC428688(27);
  *(inited + 48) = v4;
  *(inited + 56) = v5;
  sub_1DC428688(4);
  *(inited + 64) = v6;
  *(inited + 72) = v7;
  sub_1DC428688(26);
  *(inited + 80) = v8;
  *(inited + 88) = v9;
  sub_1DC2A32B0();
  v10 = 0;
  v11 = 0;
  while (1)
  {
    v12 = v10 + 16;
    if (v10 == 64)
    {
      break;
    }

    v19 = *(inited + v10 + 32);
    v20 = *(inited + v10 + 40);
    v13 = sub_1DC517E5C();
    v10 = v12;
    v14 = __OFADD__(v11, v13 & 1);
    v11 += v13 & 1;
    if (v14)
    {
      __break(1u);
      break;
    }
  }

  swift_setDeallocating();
  sub_1DC2A180C();
  sub_1DC517B9C();
  OUTLINED_FUNCTION_135();
  v15 = sub_1DC296DBC();
  if (os_log_type_enabled(v15, v0))
  {
    v16 = OUTLINED_FUNCTION_63();
    *v16 = 134217984;
    *(v16 + 4) = v11;
    _os_log_impl(&dword_1DC287000, v15, v0, "Number of routing labels found in model output %ld", v16, 0xCu);
    OUTLINED_FUNCTION_66();
  }

  if (v11 <= 1)
  {
    v17 = 2;
  }

  else
  {
    v17 = 3;
  }

  if (v11 == 1)
  {
    return 5;
  }

  else
  {
    return v17;
  }
}

uint64_t sub_1DC32A17C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1DC428688(3);
  sub_1DC329B0C();
  v8 = v7;

  if ((v8 & 1) == 0)
  {
    goto LABEL_9;
  }

  sub_1DC428688(1);
  v32 = v9;
  v10 = sub_1DC2A32B0();
  OUTLINED_FUNCTION_32_7(v10, MEMORY[0x1E69E6158], v11, v12, v13, v14, v15, v16, v32);
  v17 = sub_1DC517E5C();

  if ((v17 & 1) == 0)
  {
    goto LABEL_11;
  }

  sub_1DC428688(1);
  v17 = v18;
  if (v19 == a4 && v18 == a5)
  {

    goto LABEL_11;
  }

  OUTLINED_FUNCTION_36();
  v21 = sub_1DC51825C();

  if (v21)
  {
LABEL_11:
    sub_1DC428688(8);
    OUTLINED_FUNCTION_32_7(v24, MEMORY[0x1E69E6158], v25, v26, v27, v28, v29, v30, v24);
    sub_1DC517E5C();
    OUTLINED_FUNCTION_168();
    v23 = v17 ^ 1;
    return v23 & 1;
  }

  sub_1DC517B9C();
  OUTLINED_FUNCTION_21_2();
  v22 = sub_1DC296DBC();
  OUTLINED_FUNCTION_40_1();
  sub_1DC516F0C();

LABEL_9:
  v23 = 0;
  return v23 & 1;
}

void sub_1DC32A2FC()
{
  OUTLINED_FUNCTION_164();
  OUTLINED_FUNCTION_97_1();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CD00, &unk_1DC5259F0);
  OUTLINED_FUNCTION_10(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_31_3();
  OUTLINED_FUNCTION_35_0();
  v5 = sub_1DC51783C();
  OUTLINED_FUNCTION_47_0();
  if (v5 >= sub_1DC51783C())
  {
    v6 = sub_1DC510C8C();
    OUTLINED_FUNCTION_35(v6);
    v8 = *(v7 + 16);
    OUTLINED_FUNCTION_62_3();
    v13(v9, v10, v11, v12);
    OUTLINED_FUNCTION_61();
    __swift_storeEnumTagSinglePayload(v14, v15, v16, v6);
    sub_1DC2A32B0();
    sub_1DC517E2C();
    sub_1DC28EB30(v0, &qword_1ECC7CD00, &unk_1DC5259F0);
  }

  OUTLINED_FUNCTION_154();
}

void sub_1DC32A444()
{
  OUTLINED_FUNCTION_33();
  v92 = v2;
  v3 = sub_1DC5157CC();
  v4 = OUTLINED_FUNCTION_0(v3);
  v94 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_40_3();
  v8 = sub_1DC51588C();
  v96 = OUTLINED_FUNCTION_0(v8);
  v97 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v96);
  OUTLINED_FUNCTION_4_6();
  v93 = sub_1DC515F3C();
  v12 = OUTLINED_FUNCTION_0(v93);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_2_4();
  v17 = sub_1DC5157EC();
  v18 = OUTLINED_FUNCTION_0(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_1();
  v25 = (v24 - v23);
  v26 = v20[2];
  v27 = OUTLINED_FUNCTION_54_4();
  v28(v27);
  v29 = v20[11];
  v30 = OUTLINED_FUNCTION_75();
  v32 = v31(v30);
  if (v32 == *MEMORY[0x1E69D02E8])
  {
    v33 = v20[12];
    v34 = OUTLINED_FUNCTION_75();
    v35(v34);
    OUTLINED_FUNCTION_42_5();
    v36 = OUTLINED_FUNCTION_47_6();
    v37(v36);
    sub_1DC5157AC();
    if (v38)
    {
      if (v92)
      {

        OUTLINED_FUNCTION_59_3();
        v39 = *(v94 + 8);
      }

      else
      {
        OUTLINED_FUNCTION_100_1();
        sub_1DC517F4C();

        OUTLINED_FUNCTION_146_0();
        v66 = OUTLINED_FUNCTION_73();
        MEMORY[0x1E1296160](v66);

        OUTLINED_FUNCTION_132_0();
        v67 = *(v94 + 8);
      }

      v40 = OUTLINED_FUNCTION_41();
      v41(v40);
    }

    else
    {
      OUTLINED_FUNCTION_143_0();
      v63 = *(v94 + 8);
      v64 = OUTLINED_FUNCTION_119();
      v65(v64);
    }

LABEL_33:
    OUTLINED_FUNCTION_30_6();
    OUTLINED_FUNCTION_34();
    return;
  }

  if (v32 == *MEMORY[0x1E69D02D0])
  {
    v42 = v20[12];
    v43 = OUTLINED_FUNCTION_75();
    v44(v43);
    v45 = *v25;
    if (v92)
    {
      v46 = *v25;

      OUTLINED_FUNCTION_59_3();
    }

    else
    {
      OUTLINED_FUNCTION_100_1();
      sub_1DC517F4C();

      OUTLINED_FUNCTION_146_0();
      v68 = *(v45 + 16);
      if (v68)
      {
        v99 = MEMORY[0x1E69E7CC0];
        sub_1DC2DF6FC(0, v68, 0);
        v69 = v99;
        v70 = (v45 + 40);
        do
        {
          v71 = *(v70 - 1);
          v72 = *v70;

          v73 = OUTLINED_FUNCTION_42_2();
          MEMORY[0x1E1296160](v73);
          OUTLINED_FUNCTION_132_0();

          v75 = *(v99 + 16);
          v74 = *(v99 + 24);
          if (v75 >= v74 >> 1)
          {
            v77 = OUTLINED_FUNCTION_26(v74);
            sub_1DC2DF6FC(v77, v75 + 1, 1);
          }

          *(v99 + 16) = v75 + 1;
          v76 = v99 + 16 * v75;
          *(v76 + 32) = 60;
          *(v76 + 40) = 0xE100000000000000;
          v70 += 2;
          --v68;
        }

        while (v68);
      }

      else
      {

        v69 = MEMORY[0x1E69E7CC0];
      }

      MEMORY[0x1E12962D0](v69, MEMORY[0x1E69E6158]);

      v88 = OUTLINED_FUNCTION_63_0();
      MEMORY[0x1E1296160](v88);
    }

    goto LABEL_33;
  }

  if (v32 != *MEMORY[0x1E69D02C8])
  {
    if (v32 == *MEMORY[0x1E69D02E0])
    {
      v78 = v20[12];
      v79 = OUTLINED_FUNCTION_75();
      v80(v79);
      (*(v14 + 32))(v0, v25, v93);
      sub_1DC32ABA4();
      v81 = *(v14 + 8);
      v82 = OUTLINED_FUNCTION_62_2();
      v83(v82);
    }

    else if (v32 == *MEMORY[0x1E69D02D8])
    {
      OUTLINED_FUNCTION_143_0();
    }

    else if (v32 != *MEMORY[0x1E69D02F8] && v32 != *MEMORY[0x1E69D02F0])
    {
      OUTLINED_FUNCTION_59_3();
      v89 = v20[1];
      v90 = OUTLINED_FUNCTION_75();
      v91(v90);
    }

    goto LABEL_33;
  }

  v47 = v20[12];
  v48 = OUTLINED_FUNCTION_75();
  v49(v48);
  v50 = *v25;
  v51 = *(*v25 + 16);
  if (!v51)
  {
    v84 = *v25;

    v53 = MEMORY[0x1E69E7CC0];
LABEL_30:
    OUTLINED_FUNCTION_100_1();
    sub_1DC517F4C();

    OUTLINED_FUNCTION_146_0();
    v85 = MEMORY[0x1E12962D0](v53, MEMORY[0x1E69E6158]);
    v87 = v86;

    MEMORY[0x1E1296160](v85, v87);

    OUTLINED_FUNCTION_132_0();
    goto LABEL_33;
  }

  v98 = MEMORY[0x1E69E7CC0];
  sub_1DC2DF6FC(0, v51, 0);
  v52 = 0;
  v53 = v98;
  v54 = *(v97 + 80);
  OUTLINED_FUNCTION_24();
  v95 = v50 + v55;
  while (v52 < *(v50 + 16))
  {
    (*(v97 + 16))(v1, v95 + *(v97 + 72) * v52, v96);
    sub_1DC32AE40();
    v56 = *(v97 + 8);
    v57 = OUTLINED_FUNCTION_107();
    v58(v57);
    v60 = *(v98 + 16);
    v59 = *(v98 + 24);
    if (v60 >= v59 >> 1)
    {
      v62 = OUTLINED_FUNCTION_26(v59);
      sub_1DC2DF6FC(v62, v60 + 1, 1);
    }

    ++v52;
    *(v98 + 16) = v60 + 1;
    v61 = v98 + 16 * v60;
    *(v61 + 32) = v100;
    *(v61 + 40) = v101;
    if (v51 == v52)
    {

      goto LABEL_30;
    }
  }

  __break(1u);
}

void sub_1DC32ABA4()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_38_2();
  v0 = sub_1DC5161CC();
  v1 = OUTLINED_FUNCTION_0(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_40();
  v6 = sub_1DC5162EC();
  v7 = OUTLINED_FUNCTION_0(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4_6();
  sub_1DC515F2C();
  v12 = *(v9 + 88);
  v13 = OUTLINED_FUNCTION_16();
  v15 = v14(v13);
  v16 = *MEMORY[0x1E69D08F0];
  v17 = *(v9 + 8);
  v18 = OUTLINED_FUNCTION_16();
  v19(v18);
  sub_1DC515E2C();
  OUTLINED_FUNCTION_145_0();
  v20 = OUTLINED_FUNCTION_30_6();
  v22 = v21(v20);
  if (v22 == *MEMORY[0x1E69D0720] || v22 == *MEMORY[0x1E69D0730] || v22 == *MEMORY[0x1E69D0718] || v22 == *MEMORY[0x1E69D0728])
  {
    OUTLINED_FUNCTION_59_3();
  }

  else
  {
    v25 = *(v3 + 8);
    v26 = OUTLINED_FUNCTION_30_6();
    v27(v26);
  }

  if (v15 == v16)
  {
    v23 = 0x6963696C706D693CLL;
  }

  else
  {
    v23 = 0x6963696C7078653CLL;
  }

  MEMORY[0x1E1296160](v23, 0xEA00000000003E74);

  v24 = OUTLINED_FUNCTION_30_6();
  MEMORY[0x1E1296160](v24);

  OUTLINED_FUNCTION_34();
}

void sub_1DC32AE40()
{
  OUTLINED_FUNCTION_33();
  v4 = v3;
  v6 = v5;
  v76 = v7;
  v8 = sub_1DC5158DC();
  v9 = OUTLINED_FUNCTION_0(v8);
  v73 = v10;
  v74 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_2_1();
  v72 = v13;
  OUTLINED_FUNCTION_12();
  v14 = sub_1DC51591C();
  v15 = OUTLINED_FUNCTION_0(v14);
  v75 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_4_6();
  v19 = sub_1DC51587C();
  v20 = OUTLINED_FUNCTION_0(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_18();
  v25 = sub_1DC51588C();
  v26 = OUTLINED_FUNCTION_0(v25);
  v28 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_129();
  (*(v28 + 16))(v2, v6, v25);
  v31 = *(v28 + 88);
  v32 = OUTLINED_FUNCTION_75_1();
  v34 = v33(v32);
  if (v34 != *MEMORY[0x1E69D0330])
  {
    if (v34 != *MEMORY[0x1E69D0340])
    {
      if (v34 != *MEMORY[0x1E69D0338])
      {
        OUTLINED_FUNCTION_146_0();
        *v76 = 0xD000000000000011;
        v76[1] = v64;
        v65 = *(v28 + 8);
        v66 = OUTLINED_FUNCTION_75_1();
        v67(v66);
        goto LABEL_16;
      }

      v56 = *(v28 + 96);
      v57 = OUTLINED_FUNCTION_75_1();
      v58(v57);
      (*(v73 + 32))(v72, v2, v74);
      if (v4)
      {
        OUTLINED_FUNCTION_59_3();
        v59 = *(v73 + 8);
        v60 = OUTLINED_FUNCTION_77_1();
        v61(v60);
        v42 = 0xD000000000000011;
        goto LABEL_11;
      }

      v68 = sub_1DC5158AC();
      MEMORY[0x1E1296160](v68);

      OUTLINED_FUNCTION_132_0();
      v51 = 0x3E6863726165533CLL;
      v52 = 0xE90000000000003CLL;
      v69 = *(v73 + 8);
      v70 = OUTLINED_FUNCTION_77_1();
      v71(v70);
LABEL_14:
      *v76 = v51;
      v76[1] = v52;
      goto LABEL_16;
    }

    v43 = *(v28 + 96);
    v44 = OUTLINED_FUNCTION_75_1();
    v45(v44);
    OUTLINED_FUNCTION_128();
    v46(v0, v2, v14);
    if (v4)
    {
      OUTLINED_FUNCTION_59_3();
      v47 = *(v75 + 8);
      v48 = OUTLINED_FUNCTION_16();
      v49(v48);
      v42 = 0xD000000000000012;
      goto LABEL_11;
    }

    v62 = sub_1DC5158EC();
    MEMORY[0x1E1296160](v62);

    OUTLINED_FUNCTION_132_0();
    v51 = 0x72656E6E616C503CLL;
    v52 = 0xEA00000000003C3ELL;
    v63 = *(v75 + 8);
    v54 = OUTLINED_FUNCTION_16();
LABEL_13:
    v55(v54);
    goto LABEL_14;
  }

  v35 = *(v28 + 96);
  v36 = OUTLINED_FUNCTION_75_1();
  v37(v36);
  OUTLINED_FUNCTION_128();
  v38(v1, v2, v19);
  if ((v4 & 1) == 0)
  {
    v50 = sub_1DC51582C();
    MEMORY[0x1E1296160](v50);

    OUTLINED_FUNCTION_132_0();
    v51 = 0x3C3E58697269533CLL;
    v52 = 0xE800000000000000;
    v53 = *(v22 + 8);
    v54 = OUTLINED_FUNCTION_89();
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_59_3();
  v39 = *(v22 + 8);
  v40 = OUTLINED_FUNCTION_89();
  v41(v40);
  v42 = 0xD000000000000010;
LABEL_11:
  *v76 = v42;
  v76[1] = v25;
LABEL_16:
  OUTLINED_FUNCTION_34();
}

uint64_t sub_1DC32B2D8()
{
  v0 = sub_1DC5106EC();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_1DC5106DC();
  OUTLINED_FUNCTION_38_2();
  sub_1DC5157EC();
  sub_1DC3339CC(&qword_1ECC7BB70, MEMORY[0x1E69D0300]);
  OUTLINED_FUNCTION_63_0();
  v3 = sub_1DC5106CC();
  v5 = v4;

  v6 = OUTLINED_FUNCTION_30_6();
  sub_1DC2A6784(v6, v7);
  v8 = OUTLINED_FUNCTION_30_6();
  sub_1DC333790(v8, v9);
  if (v10)
  {
    OUTLINED_FUNCTION_137();
    v11 = OUTLINED_FUNCTION_30_6();
    sub_1DC2AD740(v11, v12);
LABEL_9:
    v24 = OUTLINED_FUNCTION_30_6();
    sub_1DC2AD740(v24, v25);
    return OUTLINED_FUNCTION_48_0();
  }

  v29 = v3;
  v30 = v5;
  v13 = OUTLINED_FUNCTION_30_6();
  sub_1DC2A6784(v13, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CB10, &unk_1DC52AA50);
  if (!swift_dynamicCast())
  {
    v20 = OUTLINED_FUNCTION_30_6();
    sub_1DC2AD740(v20, v21);
    v28 = 0;
    memset(v27, 0, sizeof(v27));
    sub_1DC28EB30(v27, &qword_1ECC7CB18, &unk_1DC524100);
LABEL_8:
    v22 = OUTLINED_FUNCTION_30_6();
    sub_1DC3333D4(v22, v23);
    OUTLINED_FUNCTION_137();
    goto LABEL_9;
  }

  sub_1DC28F9B0(v27, v31);
  __swift_project_boxed_opaque_existential_1(v31, v32);
  OUTLINED_FUNCTION_42_2();
  v15 = sub_1DC51806C();
  v16 = OUTLINED_FUNCTION_30_6();
  sub_1DC2AD740(v16, v17);
  if ((v15 & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v31);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(v31, v32);
  sub_1DC51805C();
  v18 = OUTLINED_FUNCTION_30_6();
  sub_1DC2AD740(v18, v19);
  __swift_destroy_boxed_opaque_existential_1Tm(v31);
  return OUTLINED_FUNCTION_48_0();
}

void sub_1DC32B52C()
{
  OUTLINED_FUNCTION_164();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CB20, &unk_1DC529C40);
  OUTLINED_FUNCTION_10(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_24_1();
  v6 = sub_1DC51588C();
  v7 = OUTLINED_FUNCTION_0(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2_4();
  v12 = sub_1DC5157EC();
  v13 = OUTLINED_FUNCTION_0(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_4_6();
  v18 = v15[2];
  v19 = OUTLINED_FUNCTION_35_0();
  v20(v19);
  OUTLINED_FUNCTION_145_0();
  v21 = OUTLINED_FUNCTION_16();
  if (v22(v21) == *MEMORY[0x1E69D02C8])
  {
    v23 = v15[12];
    v24 = OUTLINED_FUNCTION_16();
    v25(v24);
    if (*(*v1 + 16) < 2uLL)
    {
      v30 = *v1;
    }

    else
    {
      sub_1DC32B76C(*v1, v0);

      OUTLINED_FUNCTION_39(v0, 1, v6);
      if (v26)
      {
        sub_1DC28EB30(v0, &qword_1ECC7CB20, &unk_1DC529C40);
      }

      else
      {
        v31 = *(v9 + 32);
        v32 = OUTLINED_FUNCTION_62_2();
        v33(v32);
        sub_1DC32B814();
        v34 = *(v9 + 8);
        v35 = OUTLINED_FUNCTION_36();
        v36(v35);
      }
    }
  }

  else
  {
    v27 = v15[1];
    v28 = OUTLINED_FUNCTION_16();
    v29(v28);
  }

  OUTLINED_FUNCTION_154();
}

uint64_t sub_1DC32B76C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = sub_1DC51588C();
  v6 = v5;
  if (v4)
  {
    (*(*(v5 - 8) + 16))(a2, a1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), v5);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a2, v7, 1, v6);
}

void sub_1DC32B814()
{
  OUTLINED_FUNCTION_33();
  v4 = sub_1DC5158DC();
  v5 = OUTLINED_FUNCTION_0(v4);
  v53 = v6;
  v54 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2_4();
  v9 = sub_1DC51591C();
  v10 = OUTLINED_FUNCTION_0(v9);
  v55 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_58_0();
  v14 = sub_1DC51587C();
  v15 = OUTLINED_FUNCTION_0(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_40_3();
  v20 = sub_1DC51588C();
  v21 = OUTLINED_FUNCTION_0(v20);
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_1();
  v28 = v27 - v26;
  (*(v23 + 16))(v27 - v26, v0, v20);
  v29 = *(v23 + 88);
  v30 = OUTLINED_FUNCTION_74_0();
  v32 = v31(v30);
  if (v32 == *MEMORY[0x1E69D0330])
  {
    v33 = *(v23 + 96);
    v34 = OUTLINED_FUNCTION_74_0();
    v35(v34);
    (*(v17 + 32))(v3, v28, v14);
    sub_1DC51582C();
    v36 = sub_1DC42867C();
    v56 = *v36;
    v59 = *(v36 + 1);
    sub_1DC2A32B0();
    OUTLINED_FUNCTION_50_7();
    OUTLINED_FUNCTION_168();
    v37 = *(v17 + 8);
    v38 = OUTLINED_FUNCTION_41();
    v39(v38);
  }

  else if (v32 == *MEMORY[0x1E69D0340])
  {
    v40 = *(v23 + 96);
    v41 = OUTLINED_FUNCTION_74_0();
    v42(v41);
    OUTLINED_FUNCTION_128();
    v43(v2, v28, v9);
    sub_1DC5158EC();
    v44 = sub_1DC42867C();
    v57 = *v44;
    v60 = *(v44 + 1);
    sub_1DC2A32B0();
    OUTLINED_FUNCTION_50_7();
    OUTLINED_FUNCTION_168();
    (*(v55 + 8))(v2, v9);
  }

  else
  {
    if (v32 == *MEMORY[0x1E69D0338])
    {
      v45 = *(v23 + 96);
      v46 = OUTLINED_FUNCTION_74_0();
      v47(v46);
      (*(v53 + 32))(v1, v28, v54);
      sub_1DC5158AC();
      v48 = sub_1DC42867C();
      v58 = *v48;
      v61 = *(v48 + 1);
      sub_1DC2A32B0();
      OUTLINED_FUNCTION_50_7();

      v49 = *(v53 + 8);
      v50 = OUTLINED_FUNCTION_36();
    }

    else
    {
      v52 = *(v23 + 8);
      v50 = OUTLINED_FUNCTION_74_0();
    }

    v51(v50);
  }

  OUTLINED_FUNCTION_34();
}

void sub_1DC32BBE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_33();
  a19 = v21;
  a20 = v22;
  v23 = sub_1DC5158DC();
  v24 = OUTLINED_FUNCTION_0(v23);
  v135 = v25;
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_40_3();
  v129 = sub_1DC51591C();
  v28 = OUTLINED_FUNCTION_0(v129);
  v131 = v29;
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_2_1();
  v128 = v32;
  OUTLINED_FUNCTION_12();
  v33 = sub_1DC51587C();
  v34 = OUTLINED_FUNCTION_0(v33);
  v130 = v35;
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_2_1();
  v133 = v38;
  OUTLINED_FUNCTION_12();
  v39 = sub_1DC51588C();
  v40 = OUTLINED_FUNCTION_0(v39);
  v142 = v41;
  v43 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_8();
  v46 = v44 - v45;
  MEMORY[0x1EEE9AC00](v47);
  v49 = &v121 - v48;
  v50 = sub_1DC5157EC();
  v51 = OUTLINED_FUNCTION_0(v50);
  v53 = v52;
  v55 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_1();
  v58 = (v57 - v56);
  v59 = v53[2];
  v60 = OUTLINED_FUNCTION_56_0();
  v61(v60);
  v62 = v53[11];
  v63 = OUTLINED_FUNCTION_74();
  if (v64(v63) != *MEMORY[0x1E69D02C8])
  {
    v118 = v53[1];
    v119 = OUTLINED_FUNCTION_74();
    v120(v119);
LABEL_18:
    OUTLINED_FUNCTION_34();
    return;
  }

  v65 = v53[12];
  v66 = OUTLINED_FUNCTION_74();
  v67(v66);
  v68 = *v58;
  v141 = *(*v58 + 16);
  if (!v141)
  {
LABEL_17:

    goto LABEL_18;
  }

  v122 = v20;
  v127 = v23;
  v69 = 0;
  v70 = *(v142 + 80);
  OUTLINED_FUNCTION_24();
  v140 = v68 + v71;
  v139 = v72 + 16;
  v138 = v72 + 88;
  v137 = *MEMORY[0x1E69D0330];
  v132 = *MEMORY[0x1E69D0340];
  v125 = *MEMORY[0x1E69D0338];
  v136 = (v72 + 8);
  v134 = v72 + 96;
  OUTLINED_FUNCTION_87_0(v135);
  v124 = v131 + 4;
  v123 = v131 + 1;
  OUTLINED_FUNCTION_156();
  v130 = v73;
  v131 = v74;
  v135 = v68;
  v126 = v33;
  while (v69 < *(v68 + 16))
  {
    v75 = v142;
    v76 = *(v142 + 16);
    v76(v49, v140 + *(v142 + 72) * v69, v39);
    v77 = OUTLINED_FUNCTION_75_1();
    (v76)(v77);
    v78 = *(v75 + 88);
    v79 = OUTLINED_FUNCTION_51();
    v81 = v80(v79);
    if (v81 == v137)
    {
      v82 = OUTLINED_FUNCTION_57_7();
      v83(v82);
      (*v131)(v133, v46, v33);
      v145 = sub_1DC51582C();
      v146 = v84;
      v85 = sub_1DC42867C();
      v86 = *(v85 + 1);
      v143 = *v85;
      v144 = v86;
      sub_1DC2A32B0();

      v87 = OUTLINED_FUNCTION_133_0();
      v88 = *v130;
      v89 = OUTLINED_FUNCTION_47_6();
      v90(v89);
      v91 = OUTLINED_FUNCTION_56_9();
      v92(v91);
      goto LABEL_7;
    }

    if (v81 == v132)
    {
      v93 = OUTLINED_FUNCTION_57_7();
      v94(v93);
      OUTLINED_FUNCTION_37(&a17);
      v96 = v128;
      v95 = v129;
      v97 = OUTLINED_FUNCTION_54_4();
      v98(v97);
      v145 = sub_1DC5158EC();
      v146 = v99;
      v100 = sub_1DC42867C();
      v101 = *(v100 + 1);
      v143 = *v100;
      v144 = v101;
      sub_1DC2A32B0();

      v87 = OUTLINED_FUNCTION_133_0();
      OUTLINED_FUNCTION_37(&a16);
      v102 = v96;
      v33 = v126;
      v103(v102, v95);
      v104 = OUTLINED_FUNCTION_56_9();
      v105(v104);
      v68 = v135;

      goto LABEL_10;
    }

    if (v81 == v125)
    {
      v106 = OUTLINED_FUNCTION_57_7();
      v107(v106);
      OUTLINED_FUNCTION_37(&a14);
      v108 = v122;
      v109(v122, v46, v127);
      v145 = sub_1DC5158AC();
      v146 = v110;
      v111 = sub_1DC42867C();
      v112 = *(v111 + 1);
      v143 = *v111;
      v144 = v112;
      sub_1DC2A32B0();

      v87 = OUTLINED_FUNCTION_133_0();
      OUTLINED_FUNCTION_37(&a13);
      v113(v108, v127);
      v114 = OUTLINED_FUNCTION_56_9();
      v115(v114);
LABEL_7:

      v68 = v135;
LABEL_10:

      if (v87)
      {
        goto LABEL_17;
      }

      goto LABEL_11;
    }

    v116 = *v136;
    (*v136)(v49, v39);
    v117 = OUTLINED_FUNCTION_51();
    (v116)(v117);
LABEL_11:
    if (v141 == ++v69)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
}

void sub_1DC32C260()
{
  OUTLINED_FUNCTION_164();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CB20, &unk_1DC529C40);
  OUTLINED_FUNCTION_10(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_24_1();
  v6 = sub_1DC51588C();
  v7 = OUTLINED_FUNCTION_0(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2_4();
  v12 = sub_1DC5157EC();
  v13 = OUTLINED_FUNCTION_0(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_4_6();
  v18 = v15[2];
  v19 = OUTLINED_FUNCTION_35_0();
  v20(v19);
  OUTLINED_FUNCTION_145_0();
  v21 = OUTLINED_FUNCTION_16();
  if (v22(v21) == *MEMORY[0x1E69D02C8])
  {
    v23 = v15[12];
    v24 = OUTLINED_FUNCTION_16();
    v25(v24);
    if (*(*v1 + 16) < 2uLL)
    {
      v30 = *v1;
    }

    else
    {
      sub_1DC32B76C(*v1, v0);

      OUTLINED_FUNCTION_39(v0, 1, v6);
      if (v26)
      {
        sub_1DC28EB30(v0, &qword_1ECC7CB20, &unk_1DC529C40);
      }

      else
      {
        v31 = *(v9 + 32);
        v32 = OUTLINED_FUNCTION_62_2();
        v33(v32);
        sub_1DC32B814();
        v34 = *(v9 + 8);
        v35 = OUTLINED_FUNCTION_36();
        v36(v35);
      }
    }
  }

  else
  {
    v27 = v15[1];
    v28 = OUTLINED_FUNCTION_16();
    v29(v28);
  }

  OUTLINED_FUNCTION_154();
}

void sub_1DC32C49C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_33();
  a19 = v22;
  a20 = v23;
  v150 = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CB20, &unk_1DC529C40);
  v26 = OUTLINED_FUNCTION_10(v25);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_8();
  v147 = v29 - v30;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_62();
  v148 = v32;
  OUTLINED_FUNCTION_12();
  v157 = sub_1DC5158DC();
  v33 = OUTLINED_FUNCTION_0(v157);
  v169 = v34;
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_2_1();
  v156 = v37;
  OUTLINED_FUNCTION_12();
  v159 = sub_1DC51591C();
  v38 = OUTLINED_FUNCTION_0(v159);
  v167 = v39;
  v41 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_2_1();
  v158 = v42;
  OUTLINED_FUNCTION_12();
  v164 = sub_1DC51587C();
  v43 = OUTLINED_FUNCTION_0(v164);
  v160 = v44;
  v46 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_2_1();
  v163 = v47;
  OUTLINED_FUNCTION_12();
  v48 = sub_1DC51588C();
  v49 = OUTLINED_FUNCTION_0(v48);
  v51 = v50;
  v53 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_8();
  v152 = (v54 - v55);
  OUTLINED_FUNCTION_22();
  v57 = MEMORY[0x1EEE9AC00](v56);
  v59 = v143 - v58;
  MEMORY[0x1EEE9AC00](v57);
  v61 = v143 - v60;
  v62 = sub_1DC5157EC();
  v63 = OUTLINED_FUNCTION_0(v62);
  v65 = v64;
  v67 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_129();
  v68 = *(v65 + 16);
  OUTLINED_FUNCTION_62_3();
  v68();
  v69 = (*(v65 + 88))(v21, v62);
  if (v69 == *MEMORY[0x1E69D02C8])
  {
    v144 = v69;
    v143[0] = v68;
    v143[1] = v65 + 16;
    v143[2] = v20;
    v145 = v65;
    v70 = *(v65 + 96);
    v146 = v62;
    v70(v21, v62);
    v71 = 0;
    v72 = *v21;
    v73 = *(*v21 + 16);
    v168 = v51 + 16;
    v171 = v51 + 88;
    v172 = v73;
    v170 = *MEMORY[0x1E69D0330];
    v162 = *MEMORY[0x1E69D0340];
    v155 = *MEMORY[0x1E69D0338];
    v165 = v51 + 8;
    v166 = (v51 + 96);
    OUTLINED_FUNCTION_87_0(v169);
    v154 = v167 + 32;
    v153 = v167 + 8;
    OUTLINED_FUNCTION_156();
    v160 = v74;
    v161 = v75;
    v149 = (v51 + 32);
    v151 = MEMORY[0x1E69E7CC0];
    v167 = v72;
    while (1)
    {
      while (1)
      {
        if (v172 == v71)
        {
          v126 = v151;
          if (*(v151 + 16))
          {

            *v150 = v126;
            (*(v145 + 104))();
            goto LABEL_35;
          }

          v127 = v148;
          sub_1DC32B76C(v72, v148);

          v128 = OUTLINED_FUNCTION_44();
          OUTLINED_FUNCTION_39(v128, v129, v48);
          v130 = v150;
          v131 = v146;
          v132 = v143[0];
          if (!v133)
          {
            v135 = v147;
            sub_1DC2DB2AC();
            OUTLINED_FUNCTION_162_0();
            v137 = v136(v135, v48);
            if (v137 == v170)
            {
              v138 = *MEMORY[0x1E69D02D8];
              v139 = v145;
              goto LABEL_33;
            }

            v139 = v145;
            if (v137 == v162)
            {
              v140 = MEMORY[0x1E69D02F8];
LABEL_32:
              v138 = *v140;
LABEL_33:
              (*(v139 + 104))(v130, v138, v131);
              OUTLINED_FUNCTION_71_3();
              v141(v135, v48);
LABEL_34:
              sub_1DC28EB30(v127, &qword_1ECC7CB20, &unk_1DC529C40);
              goto LABEL_35;
            }

            if (v137 == v155)
            {
              v140 = MEMORY[0x1E69D02F0];
              goto LABEL_32;
            }

            OUTLINED_FUNCTION_71_3();
            v142(v135, v48);
          }

          v134 = OUTLINED_FUNCTION_74();
          v132(v134);
          goto LABEL_34;
        }

        if (v71 >= *(v72 + 16))
        {
          __break(1u);
          return;
        }

        v76 = *(v51 + 80);
        OUTLINED_FUNCTION_24();
        v169 = v77;
        v78 = *(v51 + 72);
        v79 = *(v51 + 16);
        v79(v61, v72 + v77 + v78 * v71, v48);
        v79(v59, v61, v48);
        v80 = *(v51 + 88);
        v81 = OUTLINED_FUNCTION_41();
        v83 = v82(v81);
        if (v83 == v170)
        {
          v84 = *v166;
          v85 = OUTLINED_FUNCTION_41();
          v86(v85);
          v87 = *v161;
          v89 = v163;
          v88 = v164;
          v90 = OUTLINED_FUNCTION_121_0();
          v91(v90);
          v175 = sub_1DC51582C();
          v176 = v92;
          v93 = sub_1DC42867C();
          v94 = *(v93 + 1);
          v173 = *v93;
          v174 = v94;
          sub_1DC2A32B0();
          OUTLINED_FUNCTION_102_1();
          v95 = OUTLINED_FUNCTION_110_0();

          v96 = v160;
          goto LABEL_12;
        }

        if (v83 != v162)
        {
          break;
        }

        v97 = *v166;
        v98 = OUTLINED_FUNCTION_41();
        v99(v98);
        OUTLINED_FUNCTION_37(&a16);
        v89 = v158;
        v88 = v159;
        v100 = OUTLINED_FUNCTION_121_0();
        v101(v100);
        v175 = sub_1DC5158EC();
        v176 = v102;
        v103 = sub_1DC42867C();
        v104 = *(v103 + 1);
        v173 = *v103;
        v174 = v104;
        sub_1DC2A32B0();
        OUTLINED_FUNCTION_102_1();
        v95 = OUTLINED_FUNCTION_110_0();

        v105 = &a15;
LABEL_11:
        v96 = *(v105 - 32);
LABEL_12:
        v114 = v88;
        v72 = v167;
        (*v96)(v89, v114);
        if ((v95 & 1) == 0)
        {
          goto LABEL_15;
        }

        OUTLINED_FUNCTION_71_3();
        v115(v61, v48);
        ++v71;
      }

      if (v83 == v155)
      {
        v106 = *v166;
        v107 = OUTLINED_FUNCTION_41();
        v108(v107);
        OUTLINED_FUNCTION_37(&a14);
        v89 = v156;
        v109 = OUTLINED_FUNCTION_121_0();
        v88 = v157;
        v110(v109);
        v175 = sub_1DC5158AC();
        v176 = v111;
        v112 = sub_1DC42867C();
        v113 = *(v112 + 1);
        v173 = *v112;
        v174 = v113;
        sub_1DC2A32B0();
        OUTLINED_FUNCTION_102_1();
        v95 = OUTLINED_FUNCTION_110_0();

        v105 = &a13;
        goto LABEL_11;
      }

      OUTLINED_FUNCTION_71_3();
      v116 = OUTLINED_FUNCTION_41();
      v117(v116);
LABEL_15:
      v118 = *v149;
      (*v149)(v152, v61, v48);
      v119 = v151;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v177 = v119;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1DC2AA348(0, *(v119 + 16) + 1, 1);
        v119 = v177;
      }

      v122 = *(v119 + 16);
      v121 = *(v119 + 24);
      v123 = v122 + 1;
      if (v122 >= v121 >> 1)
      {
        v124 = OUTLINED_FUNCTION_26(v121);
        v151 = v125;
        sub_1DC2AA348(v124, v125, 1);
        v123 = v151;
        v119 = v177;
      }

      ++v71;
      *(v119 + 16) = v123;
      v151 = v119;
      v118(v119 + v169 + v122 * v78, v152, v48);
    }
  }

  (*(v65 + 8))(v21, v62);
  OUTLINED_FUNCTION_62_3();
  v68();
LABEL_35:
  OUTLINED_FUNCTION_34();
}

void sub_1DC32CDF4()
{
  OUTLINED_FUNCTION_33();
  v94 = v2;
  v3 = sub_1DC515EDC();
  v4 = OUTLINED_FUNCTION_0(v3);
  v90 = v5;
  v91 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2_1();
  v89 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CB28, &unk_1DC524110);
  OUTLINED_FUNCTION_10(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v12);
  v88 = v85 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BF98, &qword_1DC5224C0);
  OUTLINED_FUNCTION_10(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v17);
  v85[1] = v85 - v18;
  OUTLINED_FUNCTION_12();
  v19 = sub_1DC515F3C();
  v20 = OUTLINED_FUNCTION_0(v19);
  v86 = v21;
  v87 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_2_1();
  v85[2] = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CB20, &unk_1DC529C40);
  OUTLINED_FUNCTION_10(v25);
  v27 = *(v26 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_31_3();
  v92 = sub_1DC51588C();
  v29 = OUTLINED_FUNCTION_0(v92);
  v85[0] = v30;
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_24_1();
  v33 = sub_1DC5157EC();
  v34 = OUTLINED_FUNCTION_0(v33);
  v36 = v35;
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_8();
  v41 = (v39 - v40);
  MEMORY[0x1EEE9AC00](v42);
  v44 = (v85 - v43);
  v45 = *(v36 + 16);
  v93 = v0;
  v45(v85 - v43, v0, v33);
  v46 = *(v36 + 88);
  v47 = OUTLINED_FUNCTION_120_0();
  if (v46(v47) == *MEMORY[0x1E69D02C8])
  {
    v48 = *(v36 + 96);
    v49 = OUTLINED_FUNCTION_120_0();
    v50(v49);
    sub_1DC32B76C(*v44, v1);

    OUTLINED_FUNCTION_39(v1, 1, v92);
    if (!v51)
    {
      v78 = v85[0];
      v79 = *(v85[0] + 32);
      v80 = OUTLINED_FUNCTION_56_0();
      v81(v80);
      sub_1DC32D380();
      v82 = *(v78 + 8);
      v83 = OUTLINED_FUNCTION_48_0();
      v84(v83);
      goto LABEL_9;
    }

    sub_1DC28EB30(v1, &qword_1ECC7CB20, &unk_1DC529C40);
  }

  else
  {
    v52 = *(v36 + 8);
    v53 = OUTLINED_FUNCTION_120_0();
    v54(v53);
  }

  v55 = v93;
  v45(v41, v93, v33);
  v56 = (v46)(v41, v33);
  if (v56 == *MEMORY[0x1E69D02E0])
  {
    v57 = *(v36 + 96);
    LODWORD(v93) = v56;
    v57(v41, v33);
    v58 = v86;
    OUTLINED_FUNCTION_42_5();
    v59 = OUTLINED_FUNCTION_75_1();
    v60(v59);
    OUTLINED_FUNCTION_16_4();
    sub_1DC3339CC(v61, v62);
    sub_1DC51502C();
    swift_getKeyPath();
    sub_1DC515E2C();
    sub_1DC5161CC();
    OUTLINED_FUNCTION_61();
    __swift_storeEnumTagSinglePayload(v63, v64, v65, v66);
    OUTLINED_FUNCTION_60();
    sub_1DC514FFC();
    swift_getKeyPath();
    sub_1DC515EFC();
    sub_1DC32D574();
    v67 = v91;
    v68 = *(v90 + 8);
    v69 = OUTLINED_FUNCTION_19_6();
    v70(v69);
    OUTLINED_FUNCTION_61();
    __swift_storeEnumTagSinglePayload(v71, v72, v73, v67);
    OUTLINED_FUNCTION_77_1();
    sub_1DC514FFC();
    v74 = v94;
    sub_1DC51500C();

    v75 = *(v58 + 8);
    v76 = OUTLINED_FUNCTION_121_0();
    v77(v76);
    (*(v36 + 104))(v74, v93, v33);
  }

  else
  {
    (*(v36 + 8))(v41, v33);
    v45(v94, v55, v33);
  }

LABEL_9:
  OUTLINED_FUNCTION_34();
}

void sub_1DC32D380()
{
  OUTLINED_FUNCTION_33();
  v2 = v0;
  v32 = v3;
  v4 = sub_1DC51588C();
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_54_8();
  MEMORY[0x1EEE9AC00](v10);
  v30 = v7[2];
  v31 = v2;
  v30(&v29 - v11, v2, v4);
  v12 = v7[11];
  v13 = OUTLINED_FUNCTION_19_6();
  v14 = v12(v13);
  v15 = *MEMORY[0x1E69D0340];
  v16 = v7[1];
  v17 = OUTLINED_FUNCTION_19_6();
  v16(v17);
  if (v14 == v15)
  {
    v18 = *MEMORY[0x1E69D02F8];
    v19 = sub_1DC5157EC();
    OUTLINED_FUNCTION_35(v19);
    (*(v20 + 104))(v32, v18);
  }

  else
  {
    v21 = v32;
    v30(v1, v31, v4);
    v22 = OUTLINED_FUNCTION_72();
    v23 = v12(v22);
    v24 = *MEMORY[0x1E69D0338];
    v25 = OUTLINED_FUNCTION_72();
    v16(v25);
    v26 = sub_1DC5157EC();
    OUTLINED_FUNCTION_35(v26);
    if (v23 == v24)
    {
      v28 = MEMORY[0x1E69D02F0];
    }

    else
    {
      v28 = MEMORY[0x1E69D02D8];
    }

    (*(v27 + 104))(v21, *v28);
  }

  OUTLINED_FUNCTION_34();
}

void sub_1DC32D574()
{
  OUTLINED_FUNCTION_33();
  v73 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CB08, &unk_1DC5240E0);
  OUTLINED_FUNCTION_10(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v6);
  v69 = &v68 - v7;
  OUTLINED_FUNCTION_12();
  v8 = sub_1DC515E7C();
  v9 = OUTLINED_FUNCTION_0(v8);
  v70 = v10;
  v71 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_2_1();
  v68 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D090, &qword_1DC524180);
  OUTLINED_FUNCTION_10(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_18();
  v18 = sub_1DC515EBC();
  v19 = OUTLINED_FUNCTION_0(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_129();
  v24 = sub_1DC515EDC();
  v25 = OUTLINED_FUNCTION_0(v24);
  v27 = v26;
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_148();
  v30 = *(v27 + 16);
  OUTLINED_FUNCTION_26_1();
  v30();
  v31 = *(v27 + 88);
  v32 = OUTLINED_FUNCTION_63_0();
  v34 = v33(v32);
  if (v34 == *MEMORY[0x1E69D0608])
  {
    v35 = *(v27 + 96);
    v72 = v34;
    v36 = OUTLINED_FUNCTION_63_0();
    v37(v36);
    v38 = *(v21 + 32);
    v39 = OUTLINED_FUNCTION_75_1();
    v40(v39);
    OUTLINED_FUNCTION_44_6();
    sub_1DC3339CC(v41, v42);
    sub_1DC51502C();
    swift_getKeyPath();
    v43 = sub_1DC514FCC();

    sub_1DC515E8C();
    v43(v0);

    sub_1DC28EB30(v0, &qword_1ECC7D090, &qword_1DC524180);
    swift_getKeyPath();
    v44 = sub_1DC514FCC();

    v74[0] = sub_1DC515E9C();
    v74[1] = v45;
    v44(v74);

    v46 = v73;
    sub_1DC51500C();

    (*(v21 + 8))(v1, v18);
  }

  else
  {
    if (v34 != *MEMORY[0x1E69D0600])
    {
      OUTLINED_FUNCTION_26_1();
      v30();
      v65 = *(v27 + 8);
      v66 = OUTLINED_FUNCTION_63_0();
      v67(v66);
      goto LABEL_7;
    }

    v47 = *(v27 + 96);
    v72 = v34;
    v48 = OUTLINED_FUNCTION_63_0();
    v49(v48);
    v50 = v70;
    v51 = *(v70 + 32);
    v52 = OUTLINED_FUNCTION_107();
    v53(v52);
    OUTLINED_FUNCTION_43_9();
    sub_1DC3339CC(v54, v55);
    sub_1DC51502C();
    swift_getKeyPath();
    v56 = sub_1DC514FCC();

    sub_1DC515E3C();
    v56(v0);

    sub_1DC28EB30(v0, &qword_1ECC7D090, &qword_1DC524180);
    swift_getKeyPath();
    sub_1DC514FCC();
    OUTLINED_FUNCTION_155_1();

    v57 = sub_1DC515E4C();
    v59 = OUTLINED_FUNCTION_103(v57, v58);
    v0(v59);
    OUTLINED_FUNCTION_134_0();

    swift_getKeyPath();
    sub_1DC514FCC();
    OUTLINED_FUNCTION_155_1();

    v60 = v69;
    sub_1DC515E6C();
    v0(v60);
    OUTLINED_FUNCTION_134_0();
    sub_1DC28EB30(v60, &qword_1ECC7CB08, &unk_1DC5240E0);
    v46 = v73;
    sub_1DC51500C();

    v61 = *(v50 + 8);
    v62 = OUTLINED_FUNCTION_16();
    v64(v62, v63);
  }

  (*(v27 + 104))(v46, v72, v24);
LABEL_7:
  OUTLINED_FUNCTION_34();
}

BOOL sub_1DC32DB10()
{
  v0 = sub_1DC5157EC();
  v1 = OUTLINED_FUNCTION_0(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_2_4();
  v6 = v3[2];
  v7 = OUTLINED_FUNCTION_62_2();
  v8(v7);
  v9 = v3[11];
  v10 = OUTLINED_FUNCTION_36();
  v12 = v11(v10) == *MEMORY[0x1E69D02E0];
  v13 = v3[1];
  v14 = OUTLINED_FUNCTION_36();
  v15(v14);
  return v12;
}

void sub_1DC32DBF4()
{
  OUTLINED_FUNCTION_33();
  v1 = sub_1DC515EDC();
  v2 = OUTLINED_FUNCTION_0(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_2_4();
  v7 = sub_1DC5157EC();
  v8 = OUTLINED_FUNCTION_0(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4_6();
  v13 = sub_1DC515F3C();
  v14 = OUTLINED_FUNCTION_0(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_40_3();
  v19 = *(v10 + 16);
  v20 = OUTLINED_FUNCTION_35_0();
  v21(v20);
  if ((*(v10 + 88))(v0, v7) == *MEMORY[0x1E69D02E0])
  {
    (*(v10 + 96))(v0, v7);
    v22 = *(v16 + 32);
    v23 = OUTLINED_FUNCTION_41();
    v24(v23);
    sub_1DC515EFC();
    v25 = *(v16 + 8);
    v26 = OUTLINED_FUNCTION_47_0();
    v27(v26);
    OUTLINED_FUNCTION_145_0();
    v28 = OUTLINED_FUNCTION_36();
    v30 = v29(v28) == *MEMORY[0x1E69D0600];
    v31 = *(v4 + 8);
    v32 = OUTLINED_FUNCTION_36();
    v33(v32);
  }

  else
  {
    (*(v10 + 8))(v0, v7);
  }

  OUTLINED_FUNCTION_34();
}

void sub_1DC32DE40()
{
  OUTLINED_FUNCTION_33();
  v42 = v3;
  v43 = v0;
  OUTLINED_FUNCTION_38_2();
  v4 = sub_1DC5157EC();
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_53_4();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_42_3();
  v11 = v7[13];
  v40 = *MEMORY[0x1E69D02D8];
  v11(v2);
  OUTLINED_FUNCTION_12_3();
  v12 = sub_1DC5157DC();
  v13 = v7[1];
  v14 = OUTLINED_FUNCTION_119();
  v13(v14);
  if ((v12 & 1) == 0)
  {
    (v11)(v2, *MEMORY[0x1E69D02F8], v4);
    OUTLINED_FUNCTION_12_3();
    v15 = sub_1DC5157DC();
    v16 = OUTLINED_FUNCTION_119();
    v13(v16);
    if ((v15 & 1) == 0)
    {
      (v11)(v2, *MEMORY[0x1E69D02F0], v4);
      OUTLINED_FUNCTION_12_3();
      v17 = sub_1DC5157DC();
      v18 = OUTLINED_FUNCTION_119();
      v13(v18);
      if ((v17 & 1) == 0)
      {
        sub_1DC517BAC();
        sub_1DC297814();
        v34 = sub_1DC296DBC();
        OUTLINED_FUNCTION_163_0();

        v35 = v7[2];
        v36 = OUTLINED_FUNCTION_141_0();
        v37(v36);
        goto LABEL_18;
      }
    }
  }

  v41 = v0;
  v19 = v7[2];
  v19(v1, v43, v4);
  OUTLINED_FUNCTION_117_1();
  v20 = OUTLINED_FUNCTION_29_0();
  v22 = v21(v20);
  if (v22 != *MEMORY[0x1E69D02C8])
  {
    if (v22 == *MEMORY[0x1E69D02E0])
    {
      v31 = OUTLINED_FUNCTION_29_0();
      v13(v31);
    }

    else if (v22 != v40 && v22 != *MEMORY[0x1E69D02F8] && v22 != *MEMORY[0x1E69D02F0])
    {
      v38 = OUTLINED_FUNCTION_141_0();
      (v19)(v38);
      v39 = OUTLINED_FUNCTION_29_0();
      v13(v39);
      goto LABEL_18;
    }

    v19(v42, v41, v4);
    goto LABEL_18;
  }

  v23 = v7[12];
  v24 = OUTLINED_FUNCTION_29_0();
  v26 = v25(v24);
  v27 = *v1;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_66_1();
  *(v28 - 16) = v41;
  sub_1DC3289D8(sub_1DC33395C, v29, v27);

  v30 = OUTLINED_FUNCTION_139_0();
  v11(v30);
LABEL_18:
  OUTLINED_FUNCTION_34();
}

void sub_1DC32E170()
{
  OUTLINED_FUNCTION_33();
  v3 = v0;
  v5 = v4;
  v126 = v6;
  v113 = sub_1DC5158DC();
  v7 = OUTLINED_FUNCTION_0(v113);
  v115 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2_1();
  v114 = v11;
  OUTLINED_FUNCTION_12();
  v12 = sub_1DC51587C();
  v13 = OUTLINED_FUNCTION_0(v12);
  v124 = v14;
  v125 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_2_1();
  v123 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CB20, &unk_1DC529C40);
  v19 = OUTLINED_FUNCTION_10(v18);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_123();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_62();
  v117 = v24;
  OUTLINED_FUNCTION_12();
  v122 = sub_1DC51591C();
  v25 = OUTLINED_FUNCTION_0(v122);
  v119 = v26;
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_2_1();
  v118 = v29;
  OUTLINED_FUNCTION_12();
  v30 = sub_1DC51588C();
  v31 = OUTLINED_FUNCTION_0(v30);
  v33 = v32;
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_58_0();
  v36 = sub_1DC5157EC();
  v37 = OUTLINED_FUNCTION_0(v36);
  v39 = v38;
  v41 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_8();
  v111 = v42 - v43;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_23_1();
  v116 = v45;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_23_1();
  v112 = v47;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_107_0();
  sub_1DC32D380();
  v49 = sub_1DC5157DC();
  v120 = v39;
  v121 = v36;
  v50 = *(v39 + 8);
  v51 = OUTLINED_FUNCTION_36();
  v50(v51);
  if (v49)
  {
    (*(v33 + 16))(v126, v3, v30);
    goto LABEL_24;
  }

  v52 = OUTLINED_FUNCTION_120_0();
  v110 = v53;
  (v53)(v52);
  v54 = (*(v33 + 88))(v1, v30);
  if (v54 == *MEMORY[0x1E69D0330])
  {
    v55 = OUTLINED_FUNCTION_55_8();
    v56(v55, v30);
    v57 = OUTLINED_FUNCTION_105(v124);
    v58(v57);
    sub_1DC51582C();
    v60 = v59;
    sub_1DC51581C();
    sub_1DC32FF64();

    OUTLINED_FUNCTION_39(v2, 1, v30);
    if (!v61)
    {
      (*(v124 + 8))(v123, v125);
      (*(v33 + 32))(v126, v2, v30);
      goto LABEL_24;
    }

    sub_1DC28EB30(v2, &qword_1ECC7CB20, &unk_1DC529C40);
    sub_1DC517BAC();
    OUTLINED_FUNCTION_135();
    v62 = sub_1DC296DBC();
    (*(v120 + 16))(v116, v5, v121);
    if (os_log_type_enabled(v62, v60))
    {
      v63 = OUTLINED_FUNCTION_63();
      v127 = swift_slowAlloc();
      *v63 = 136315138;
      sub_1DC32A444();
      (v50)(v116, v121);
      v64 = OUTLINED_FUNCTION_12_3();
      v67 = sub_1DC291244(v64, v65, v66);

      *(v63 + 4) = v67;
      _os_log_impl(&dword_1DC287000, v62, v60, "Failed to update SiriXRewrite routing label to %s", v63, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v127);
      OUTLINED_FUNCTION_66();
      OUTLINED_FUNCTION_66();
    }

    else
    {

      OUTLINED_FUNCTION_54_9();
      v99();
    }

    (*(v124 + 8))(v123, v125);
    v100 = v126;
    v101 = v3;
    v102 = v30;
LABEL_20:
    v110(v100, v101, v102);
    goto LABEL_24;
  }

  if (v54 != *MEMORY[0x1E69D0340])
  {
    if (v54 != *MEMORY[0x1E69D0338])
    {
      v110(v126, v3, v30);
      v103 = *(v33 + 8);
      v104 = OUTLINED_FUNCTION_19_6();
      v105(v104);
      goto LABEL_24;
    }

    v81 = OUTLINED_FUNCTION_55_8();
    v82(v81, v30);
    v83 = OUTLINED_FUNCTION_105(v115);
    v84(v83);
    sub_1DC5158AC();
    v86 = v85;
    sub_1DC5158AC();
    OUTLINED_FUNCTION_107();
    v88 = v87;
    sub_1DC32FF64();

    v89 = OUTLINED_FUNCTION_44();
    OUTLINED_FUNCTION_39(v89, v90, v30);
    if (!v61)
    {
      (*(v115 + 8))(v114, v113);
      (*(v33 + 32))(v126, v88, v30);
      goto LABEL_24;
    }

    sub_1DC28EB30(v88, &qword_1ECC7CB20, &unk_1DC529C40);
    sub_1DC517BAC();
    OUTLINED_FUNCTION_135();
    v91 = sub_1DC296DBC();
    (*(v120 + 16))(v111, v5, v121);
    if (os_log_type_enabled(v91, v86))
    {
      v92 = OUTLINED_FUNCTION_63();
      v129 = swift_slowAlloc();
      *v92 = 136315138;
      sub_1DC32A444();
      OUTLINED_FUNCTION_163();
      OUTLINED_FUNCTION_54_9();
      v94(v93);
      v95 = OUTLINED_FUNCTION_151();
      v98 = sub_1DC291244(v95, v96, v97);

      *(v92 + 4) = v98;
      _os_log_impl(&dword_1DC287000, v91, v86, "Failed to update SearchRewrite routing label to %s", v92, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v129);
      OUTLINED_FUNCTION_66();
      OUTLINED_FUNCTION_66();
    }

    else
    {

      OUTLINED_FUNCTION_54_9();
      v108(v107);
    }

    (*(v115 + 8))(v114, v113);
    v100 = v126;
    v101 = v3;
    v102 = v30;
    goto LABEL_20;
  }

  v68 = OUTLINED_FUNCTION_55_8();
  v69(v68, v30);
  v70 = OUTLINED_FUNCTION_105(v119);
  v71(v70);
  sub_1DC5158EC();
  sub_1DC5158EC();
  sub_1DC32FF64();

  v72 = OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_39(v72, v73, v30);
  if (v61)
  {
    v109 = v50;
    sub_1DC28EB30(v117, &qword_1ECC7CB20, &unk_1DC529C40);
    v74 = sub_1DC517BAC();
    sub_1DC297814();
    v75 = sub_1DC296DBC();
    (*(v120 + 16))(v112, v5, v36);
    if (os_log_type_enabled(v75, v74))
    {
      v76 = OUTLINED_FUNCTION_63();
      v128 = swift_slowAlloc();
      *v76 = 136315138;
      sub_1DC32A444();
      v109(v112, v36);
      v77 = OUTLINED_FUNCTION_12_3();
      v80 = sub_1DC291244(v77, v78, v79);

      *(v76 + 4) = v80;
      _os_log_impl(&dword_1DC287000, v75, v74, "Failed to update PlannerRewrite routing label to %s", v76, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v128);
      OUTLINED_FUNCTION_66();
      OUTLINED_FUNCTION_66();
    }

    else
    {

      OUTLINED_FUNCTION_54_9();
      v106();
    }

    (*(v119 + 8))(v118, v122);
    v110(v126, v3, v30);
  }

  else
  {
    (*(v119 + 8))(v118, v122);
    (*(v33 + 32))(v126, v117, v30);
  }

LABEL_24:
  OUTLINED_FUNCTION_34();
}

void sub_1DC32EC6C()
{
  OUTLINED_FUNCTION_33();
  v1 = sub_1DC515F3C();
  v2 = OUTLINED_FUNCTION_0(v1);
  v151 = v3;
  v152 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_2_1();
  v150 = v6;
  OUTLINED_FUNCTION_12();
  v7 = sub_1DC5157CC();
  v8 = OUTLINED_FUNCTION_0(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_24_1();
  v139 = sub_1DC5158DC();
  v13 = OUTLINED_FUNCTION_0(v139);
  v141 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_2_1();
  v138 = v17;
  OUTLINED_FUNCTION_12();
  v146 = sub_1DC51587C();
  v18 = OUTLINED_FUNCTION_0(v146);
  v140 = v19;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_2_1();
  v145 = v22;
  OUTLINED_FUNCTION_12();
  v144 = sub_1DC51591C();
  v23 = OUTLINED_FUNCTION_0(v144);
  v137 = v24;
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_2_1();
  v143 = v27;
  OUTLINED_FUNCTION_12();
  v28 = sub_1DC51588C();
  v29 = OUTLINED_FUNCTION_0(v28);
  v153 = v30;
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_109();
  MEMORY[0x1EEE9AC00](v33);
  v35 = v132 - v34;
  v36 = sub_1DC5157EC();
  v37 = OUTLINED_FUNCTION_0(v36);
  v39 = v38;
  v41 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_40_3();
  v42 = v39[2];
  v43 = OUTLINED_FUNCTION_119();
  v44(v43);
  v45 = v39[11];
  v46 = OUTLINED_FUNCTION_41();
  v48 = v47(v46);
  if (v48 == *MEMORY[0x1E69D02E8])
  {
    v49 = v39[12];
    v50 = OUTLINED_FUNCTION_41();
    v51(v50);
    OUTLINED_FUNCTION_128();
    v52 = OUTLINED_FUNCTION_12_3();
    v53(v52);
    v54 = sub_1DC5157AC();
    if (v55)
    {
      v56 = v54;
      v57 = v55;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C440, &qword_1DC522EF0);
      v58 = swift_allocObject();
      *(v58 + 16) = xmmword_1DC522F20;
      *(v58 + 32) = v56;
      *(v58 + 40) = v57;
      v59 = *(v10 + 8);
    }

    else
    {
      v118 = *(v10 + 8);
    }

    v60 = OUTLINED_FUNCTION_151();
    v61(v60);
    goto LABEL_32;
  }

  if (v48 == *MEMORY[0x1E69D02D0])
  {
    v62 = v39[12];
    v63 = OUTLINED_FUNCTION_41();
    v64(v63);
    v65 = *v0;
    goto LABEL_32;
  }

  if (v48 == *MEMORY[0x1E69D02C8])
  {
    v66 = v39[12];
    v67 = OUTLINED_FUNCTION_41();
    v68(v67);
    v69 = *(*v0 + 16);
    if (!v69)
    {
LABEL_22:

      goto LABEL_32;
    }

    v152 = *(v153 + 16);
    v70 = *(v153 + 80);
    OUTLINED_FUNCTION_24();
    v132[1] = v71;
    v73 = v71 + v72;
    v151 = *(v74 + 56);
    v150 = (v74 + 72);
    v149 = *MEMORY[0x1E69D0330];
    v142 = *MEMORY[0x1E69D0340];
    v136 = *MEMORY[0x1E69D0338];
    v153 = v74;
    v147 = v74 + 80;
    v148 = (v74 - 8);
    OUTLINED_FUNCTION_156();
    v133 = v75;
    v134 = v76;
    v135 = v137 + 4;
    ++v137;
    OUTLINED_FUNCTION_156();
    v140 = v77;
    v141 = v78;
    v79 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v80 = v152;
      (v152)(v35, v73, v28);
      v81 = OUTLINED_FUNCTION_54_4();
      v80(v81);
      v82 = *v150;
      v83 = OUTLINED_FUNCTION_75();
      v85 = v84(v83);
      if (v85 == v149)
      {
        break;
      }

      if (v85 == v142)
      {
        OUTLINED_FUNCTION_162_0();
        v93 = OUTLINED_FUNCTION_75();
        v94(v93);
        v95 = *v135;
        v96 = v143;
        v97 = OUTLINED_FUNCTION_47_6();
        v98(v97);
        v91 = v96;
        sub_1DC5158EC();
        OUTLINED_FUNCTION_163();
        v92 = v137;
        goto LABEL_16;
      }

      if (v85 == v136)
      {
        OUTLINED_FUNCTION_162_0();
        v99 = OUTLINED_FUNCTION_75();
        v100(v99);
        v101 = *v134;
        v102 = v138;
        v103 = OUTLINED_FUNCTION_47_6();
        v104(v103);
        v91 = v102;
        sub_1DC5158AC();
        OUTLINED_FUNCTION_163();
        v92 = v133;
        goto LABEL_16;
      }

      v114 = *v148;
      v115 = OUTLINED_FUNCTION_51();
      v114(v115);
      v116 = OUTLINED_FUNCTION_75();
      v114(v116);
LABEL_21:
      v73 += v151;
      if (!--v69)
      {
        goto LABEL_22;
      }
    }

    OUTLINED_FUNCTION_162_0();
    v86 = OUTLINED_FUNCTION_75();
    v87(v86);
    OUTLINED_FUNCTION_71_3();
    v88 = v145;
    v89 = OUTLINED_FUNCTION_47_6();
    v90(v89);
    v91 = v88;
    sub_1DC51582C();
    OUTLINED_FUNCTION_163();
    v92 = v140;
LABEL_16:
    v105 = *v92;
    v106 = OUTLINED_FUNCTION_149();
    v107(v106);
    v108 = *v148;
    v109 = OUTLINED_FUNCTION_51();
    v110(v109);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v79 = sub_1DC2ACCD4(0, *(v79 + 2) + 1, 1, v79);
    }

    v112 = *(v79 + 2);
    v111 = *(v79 + 3);
    if (v112 >= v111 >> 1)
    {
      v117 = OUTLINED_FUNCTION_26(v111);
      v79 = sub_1DC2ACCD4(v117, v112 + 1, 1, v79);
    }

    *(v79 + 2) = v112 + 1;
    v113 = &v79[16 * v112];
    *(v113 + 4) = v91;
    *(v113 + 5) = v36;
    goto LABEL_21;
  }

  if (v48 == *MEMORY[0x1E69D02E0])
  {
    v119 = v39[12];
    v120 = OUTLINED_FUNCTION_41();
    v121(v120);
    v122 = v150;
    v123 = OUTLINED_FUNCTION_63_3(v151);
    v124(v123);
    sub_1DC32F78C();
    if (v125)
    {
      OUTLINED_FUNCTION_123_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C440, &qword_1DC522EF0);
      v126 = swift_allocObject();
      *(v126 + 16) = xmmword_1DC522F20;
      *(v126 + 32) = v122;
      *(v126 + 40) = v10;
    }

    v127 = OUTLINED_FUNCTION_98_0();
    v128(v127);
  }

  else
  {
    v129 = v39[1];
    v130 = OUTLINED_FUNCTION_41();
    v131(v130);
  }

LABEL_32:
  OUTLINED_FUNCTION_34();
}

void sub_1DC32F444()
{
  OUTLINED_FUNCTION_33();
  v1 = sub_1DC5158DC();
  v2 = OUTLINED_FUNCTION_0(v1);
  v54 = v3;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_12();
  v6 = sub_1DC51587C();
  v7 = OUTLINED_FUNCTION_0(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_58_0();
  v12 = sub_1DC51591C();
  v13 = OUTLINED_FUNCTION_0(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_18();
  v18 = sub_1DC51588C();
  v19 = OUTLINED_FUNCTION_0(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_40_3();
  v24 = v21[2];
  v25 = OUTLINED_FUNCTION_149();
  v26(v25);
  v27 = v21[11];
  v28 = OUTLINED_FUNCTION_47_6();
  v30 = v29(v28);
  if (v30 == *MEMORY[0x1E69D0330])
  {
    v31 = v21[12];
    v32 = OUTLINED_FUNCTION_47_6();
    v33(v32);
    v34 = OUTLINED_FUNCTION_63_3(v9);
    v35(v34);
    sub_1DC51582C();
    v36 = *(v9 + 8);
    v37 = OUTLINED_FUNCTION_60();
    v38(v37);
  }

  else if (v30 == *MEMORY[0x1E69D0340])
  {
    v39 = v21[12];
    v40 = OUTLINED_FUNCTION_47_6();
    v41(v40);
    v42 = *(v15 + 32);
    v43 = OUTLINED_FUNCTION_89();
    v44(v43);
    sub_1DC5158EC();
    (*(v15 + 8))(v0, v12);
  }

  else
  {
    if (v30 == *MEMORY[0x1E69D0338])
    {
      v45 = v21[12];
      v46 = OUTLINED_FUNCTION_47_6();
      v47(v46);
      OUTLINED_FUNCTION_128();
      v48 = OUTLINED_FUNCTION_12_3();
      v49(v48);
      sub_1DC5158AC();
      v50 = *(v54 + 8);
      v51 = OUTLINED_FUNCTION_31_0();
    }

    else
    {
      v53 = v21[1];
      v51 = OUTLINED_FUNCTION_47_6();
    }

    v52(v51);
  }

  OUTLINED_FUNCTION_34();
}

void sub_1DC32F78C()
{
  OUTLINED_FUNCTION_33();
  v2 = sub_1DC515EBC();
  v3 = OUTLINED_FUNCTION_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_40();
  v8 = sub_1DC515E7C();
  v9 = OUTLINED_FUNCTION_0(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_58_0();
  v14 = sub_1DC515EDC();
  v15 = OUTLINED_FUNCTION_0(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_40_3();
  sub_1DC515EFC();
  OUTLINED_FUNCTION_117_1();
  v20 = OUTLINED_FUNCTION_41();
  v22 = v21(v20);
  if (v22 == *MEMORY[0x1E69D0608])
  {
    v23 = *(v17 + 96);
    v24 = OUTLINED_FUNCTION_41();
    v25(v24);
    OUTLINED_FUNCTION_42_5();
    v26(v0, v1, v2);
    sub_1DC515EAC();
    OUTLINED_FUNCTION_163();
    v27 = *(v5 + 8);
    v28 = OUTLINED_FUNCTION_30_6();
    v29(v28);
  }

  else
  {
    if (v22 == *MEMORY[0x1E69D0600])
    {
      v30 = *(v17 + 96);
      v31 = OUTLINED_FUNCTION_41();
      v32(v31);
      v33 = OUTLINED_FUNCTION_63_3(v11);
      v34(v33);
      sub_1DC515E5C();
      OUTLINED_FUNCTION_163();
      v35 = *(v11 + 8);
      v36 = OUTLINED_FUNCTION_60();
    }

    else
    {
      v38 = *(v17 + 8);
      v36 = OUTLINED_FUNCTION_41();
    }

    v37(v36);
  }

  OUTLINED_FUNCTION_151();
  OUTLINED_FUNCTION_34();
}

void sub_1DC32F9DC()
{
  OUTLINED_FUNCTION_33();
  v49 = v2;
  v50 = v0;
  v48 = v3;
  OUTLINED_FUNCTION_38_2();
  v4 = sub_1DC5157EC();
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_53_4();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v46 - v11;
  v13 = v7[13];
  v47 = *MEMORY[0x1E69D02D8];
  v13(&v46 - v11);
  OUTLINED_FUNCTION_152();
  v14 = sub_1DC5157DC();
  v15 = v7[1];
  v16 = OUTLINED_FUNCTION_147_0();
  v15(v16);
  if ((v14 & 1) == 0)
  {
    (v13)(v12, *MEMORY[0x1E69D02F8], v4);
    OUTLINED_FUNCTION_152();
    v17 = sub_1DC5157DC();
    v18 = OUTLINED_FUNCTION_147_0();
    v15(v18);
    if ((v17 & 1) == 0)
    {
      (v13)(v12, *MEMORY[0x1E69D02F0], v4);
      OUTLINED_FUNCTION_152();
      v19 = sub_1DC5157DC();
      v20 = OUTLINED_FUNCTION_147_0();
      v15(v20);
      if ((v19 & 1) == 0)
      {
        sub_1DC517BAC();
        sub_1DC297814();
        v38 = sub_1DC296DBC();
        OUTLINED_FUNCTION_163_0();

        v39 = v7[2];
        v40 = OUTLINED_FUNCTION_141_0();
        v41(v40);
        goto LABEL_21;
      }
    }
  }

  v46 = v13;
  sub_1DC32FD38();
  v21 = v7[2];
  if ((v22 & 1) == 0)
  {
    v35 = v49;
    v36 = v50;
    goto LABEL_20;
  }

  v21(v1, v50, v4);
  v23 = v7[11];
  v24 = OUTLINED_FUNCTION_29_0();
  v26 = v25(v24);
  if (v26 != *MEMORY[0x1E69D02C8])
  {
    if (v26 == *MEMORY[0x1E69D02E0])
    {
      v37 = OUTLINED_FUNCTION_29_0();
      v15(v37);
    }

    else if (v26 != v47 && v26 != *MEMORY[0x1E69D02F8] && v26 != *MEMORY[0x1E69D02F0])
    {
      v44 = OUTLINED_FUNCTION_141_0();
      (v21)(v44);
      v45 = OUTLINED_FUNCTION_29_0();
      v15(v45);
      goto LABEL_21;
    }

    v35 = v49;
    v36 = v0;
LABEL_20:
    v21(v35, v36, v4);
    goto LABEL_21;
  }

  v27 = v7[12];
  v28 = OUTLINED_FUNCTION_29_0();
  v30 = v29(v28);
  v31 = *v1;
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_66_1();
  *(v32 - 16) = v0;
  sub_1DC3289D8(sub_1DC333C0C, v33, v31);

  v34 = OUTLINED_FUNCTION_139_0();
  v46(v34);
LABEL_21:
  OUTLINED_FUNCTION_34();
}

void sub_1DC32FD38()
{
  OUTLINED_FUNCTION_33();
  v3 = sub_1DC5157EC();
  v4 = OUTLINED_FUNCTION_0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2_4();
  v9 = OUTLINED_FUNCTION_74_0();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
  OUTLINED_FUNCTION_10(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_40_3();
  v15 = sub_1DC510C8C();
  v16 = OUTLINED_FUNCTION_0(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_12_3();
  sub_1DC2DB2AC();
  OUTLINED_FUNCTION_39(v2, 1, v15);
  if (v21)
  {
    sub_1DC28EB30(v2, &qword_1ECC7CD00, &unk_1DC5259F0);
  }

  else
  {
    (*(v18 + 32))(v1, v2, v15);
    (*(v6 + 104))(v0, *MEMORY[0x1E69D02F8], v3);
    v22 = sub_1DC5157DC();
    v23 = *(v6 + 8);
    v24 = OUTLINED_FUNCTION_36();
    v25(v24);
    if (v22)
    {
      sub_1DC2D14F0();
      v26 = *(v18 + 8);
    }

    else
    {
      v29 = *(v18 + 8);
    }

    v27 = OUTLINED_FUNCTION_35_0();
    v28(v27);
  }

  OUTLINED_FUNCTION_34();
}

void sub_1DC32FF64()
{
  OUTLINED_FUNCTION_33();
  v95 = v1;
  v97 = v5;
  v98 = v6;
  v100 = v7;
  v101 = v8;
  v99 = v9;
  v102 = v10;
  v94 = sub_1DC5158DC();
  v11 = OUTLINED_FUNCTION_0(v94);
  v89 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_2_1();
  v88[1] = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BF18, &qword_1DC522340);
  v17 = OUTLINED_FUNCTION_10(v16);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_8();
  v93 = v20 - v21;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_62();
  v91 = v23;
  OUTLINED_FUNCTION_12();
  v96 = sub_1DC51591C();
  v24 = OUTLINED_FUNCTION_0(v96);
  v92 = v25;
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_2_1();
  v90 = v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BF10, &unk_1DC522A50);
  v30 = OUTLINED_FUNCTION_10(v29);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_109();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_107_0();
  v34 = sub_1DC51587C();
  v35 = OUTLINED_FUNCTION_0(v34);
  v37 = v36;
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_1();
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BF00, &unk_1DC529C30);
  v41 = OUTLINED_FUNCTION_10(v40);
  v43 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_123();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_42_3();
  v45 = sub_1DC5157EC();
  v46 = OUTLINED_FUNCTION_0(v45);
  v48 = v47;
  v50 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_148();
  (*(v48 + 16))(v0, v99, v45);
  OUTLINED_FUNCTION_117_1();
  v52 = v51(v0, v45);
  if (v52 == *MEMORY[0x1E69D02D8])
  {
    MEMORY[0x1EEE9AC00](v52);
    v53 = v101;
    v88[-4] = v100;
    v88[-3] = v53;
    v54 = v98;
    v88[-2] = v97;
    v88[-1] = v54;
    sub_1DC51583C();
    OUTLINED_FUNCTION_41();
    sub_1DC2DB254();
    OUTLINED_FUNCTION_39(v3, 1, v34);
    if (!v55)
    {
      v66 = *(v37 + 32);
      v67 = OUTLINED_FUNCTION_42_2();
      v66(v67);
      v68 = OUTLINED_FUNCTION_106_0();
      v66(v68);
      v69 = MEMORY[0x1E69D0330];
LABEL_15:
      v85 = *v69;
      v86 = sub_1DC51588C();
      OUTLINED_FUNCTION_35(v86);
      (*(v87 + 104))(v2, v85, v86);
      OUTLINED_FUNCTION_61();
      v59 = v86;
      goto LABEL_16;
    }

    sub_1DC28EB30(v3, &qword_1ECC7BF00, &unk_1DC529C30);
    sub_1DC51588C();
    v56 = OUTLINED_FUNCTION_147_1();
LABEL_16:
    __swift_storeEnumTagSinglePayload(v56, v57, v58, v59);
    goto LABEL_17;
  }

  if (v52 == *MEMORY[0x1E69D02F8])
  {
    MEMORY[0x1EEE9AC00](v52);
    OUTLINED_FUNCTION_66_1();
    *(v60 - 16) = v62;
    *(v60 - 8) = v61;
    sub_1DC5158FC();
    sub_1DC2DB254();
    OUTLINED_FUNCTION_39(v4, 1, v96);
    if (!v55)
    {
      v75 = *(v92 + 32);
      v76 = OUTLINED_FUNCTION_120_0();
      v75(v76);
      v77 = OUTLINED_FUNCTION_106_0();
      v75(v77);
      v69 = MEMORY[0x1E69D0340];
      goto LABEL_15;
    }

    v63 = &qword_1ECC7BF10;
    v64 = &unk_1DC522A50;
    v65 = v4;
    goto LABEL_13;
  }

  if (v52 == *MEMORY[0x1E69D02F0])
  {
    MEMORY[0x1EEE9AC00](v52);
    OUTLINED_FUNCTION_66_1();
    *(v70 - 16) = v72;
    *(v70 - 8) = v71;
    sub_1DC5158BC();
    v2 = v93;
    sub_1DC2DB254();
    OUTLINED_FUNCTION_39(v93, 1, v94);
    if (!v55)
    {
      v82 = *(v89 + 32);
      v83 = OUTLINED_FUNCTION_60();
      v82(v83);
      v84 = OUTLINED_FUNCTION_106_0();
      v82(v84);
      v69 = MEMORY[0x1E69D0338];
      goto LABEL_15;
    }

    v63 = &qword_1ECC7BF18;
    v64 = &qword_1DC522340;
    v65 = v93;
LABEL_13:
    sub_1DC28EB30(v65, v63, v64);
    v73 = sub_1DC51588C();
    OUTLINED_FUNCTION_35(v73);
    (*(v74 + 16))(v102, v95, v73);
    OUTLINED_FUNCTION_61();
    v59 = v73;
    goto LABEL_16;
  }

  sub_1DC51588C();
  v78 = OUTLINED_FUNCTION_147_1();
  __swift_storeEnumTagSinglePayload(v78, v79, v80, v81);
  (*(v48 + 8))(v0, v45);
LABEL_17:
  OUTLINED_FUNCTION_34();
}

void sub_1DC3305F4()
{
  OUTLINED_FUNCTION_33();
  v4 = v1;
  v59 = v5;
  v60 = v6;
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BF00, &unk_1DC529C30);
  v10 = OUTLINED_FUNCTION_10(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_8();
  v15 = v13 - v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_42_3();
  v17 = sub_1DC51587C();
  v18 = OUTLINED_FUNCTION_0(v17);
  v63 = v19;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_4_6();
  v22 = sub_1DC51588C();
  v23 = OUTLINED_FUNCTION_0(v22);
  v25 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_148();
  v61 = *(v25 + 16);
  v62 = v4;
  v61(v0, v4, v22);
  v28 = *(v25 + 88);
  v29 = OUTLINED_FUNCTION_115();
  v31 = v30(v29);
  v32 = v31;
  if (v31 == *MEMORY[0x1E69D0330])
  {
    v58 = v8;
    v33 = *(v25 + 96);
    v34 = OUTLINED_FUNCTION_115();
    v35(v34);
    v36 = *(v63 + 32);
    v37 = OUTLINED_FUNCTION_107();
    v57[1] = v38;
    v39 = v38(v37);
    MEMORY[0x1EEE9AC00](v39);
    v41 = v59;
    v40 = v60;
    v57[-4] = v2;
    v57[-3] = v41;
    v57[-2] = v40;
    sub_1DC51583C();
    sub_1DC2DB2AC();
    OUTLINED_FUNCTION_39(v15, 1, v17);
    if (v45)
    {
      v42 = OUTLINED_FUNCTION_56_0();
      sub_1DC28EB30(v42, v43, &unk_1DC529C30);
      sub_1DC517BAC();
      OUTLINED_FUNCTION_21_2();
      v44 = sub_1DC296DBC();
      OUTLINED_FUNCTION_40_1();
      sub_1DC516F0C();

      sub_1DC28EB30(v3, &qword_1ECC7BF00, &unk_1DC529C30);
      v61(v58, v62, v22);
    }

    else
    {
      sub_1DC28EB30(v3, &qword_1ECC7BF00, &unk_1DC529C30);
      v49 = v58;
      OUTLINED_FUNCTION_62_3();
      v50();
      (*(v25 + 104))(v49, v32, v22);
    }

    v51 = *(v63 + 8);
    v52 = OUTLINED_FUNCTION_35_0();
    v53(v52);
  }

  else
  {
    v45 = v31 == *MEMORY[0x1E69D0340] || v31 == *MEMORY[0x1E69D0338];
    if (v45)
    {
      v46 = *(v25 + 8);
      v47 = OUTLINED_FUNCTION_115();
      v48(v47);
      v61(v8, v62, v22);
    }

    else
    {
      v61(v8, v62, v22);
      v54 = *(v25 + 8);
      v55 = OUTLINED_FUNCTION_115();
      v56(v55);
    }
  }

  OUTLINED_FUNCTION_34();
}

uint64_t sub_1DC3309CC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BF08, &unk_1DC522330);
  OUTLINED_FUNCTION_10(v0);
  v2 = *(v1 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v3);
  sub_1DC51582C();
  sub_1DC51586C();

  OUTLINED_FUNCTION_36();
  sub_1DC51585C();
  sub_1DC51580C();
  return sub_1DC51584C();
}

uint64_t sub_1DC330A88()
{
  OUTLINED_FUNCTION_140_0();
  sub_1DC5157CC();
  sub_1DC3339CC(&qword_1ECC7CB38, MEMORY[0x1E69D02C0]);
  return sub_1DC51501C();
}

void sub_1DC330B3C()
{
  OUTLINED_FUNCTION_164();
  OUTLINED_FUNCTION_42_0();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CB90, &unk_1DC524420);
  OUTLINED_FUNCTION_10(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_31_3();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D3D0, &qword_1DC529550);
  OUTLINED_FUNCTION_10(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_40_3();
  v9 = *v0;
  swift_getKeyPath();
  sub_1DC5157AC();
  sub_1DC514FDC();
  swift_getKeyPath();

  sub_1DC514FDC();
  swift_getKeyPath();
  sub_1DC51578C();
  OUTLINED_FUNCTION_149();
  sub_1DC514FDC();
  swift_getKeyPath();
  sub_1DC5157BC();
  OUTLINED_FUNCTION_65_1();
  sub_1DC514FDC();
  OUTLINED_FUNCTION_154();
}

uint64_t sub_1DC330CA4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DC5157AC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1DC330CD0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DC51579C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void sub_1DC330D44()
{
  OUTLINED_FUNCTION_33();
  v82 = v2;
  v83 = v3;
  v77 = sub_1DC515EBC();
  v4 = OUTLINED_FUNCTION_0(v77);
  v81 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2_1();
  v80 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D090, &qword_1DC524180);
  OUTLINED_FUNCTION_10(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_31_3();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CB28, &unk_1DC524110);
  OUTLINED_FUNCTION_10(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_40();
  v76 = sub_1DC515E7C();
  v17 = OUTLINED_FUNCTION_0(v76);
  v79 = v18;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_2_1();
  v78 = v21;
  OUTLINED_FUNCTION_12();
  v22 = sub_1DC515EDC();
  v23 = OUTLINED_FUNCTION_0(v22);
  v25 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_1();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BF98, &qword_1DC5224C0);
  OUTLINED_FUNCTION_10(v28);
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_129();
  sub_1DC515F3C();
  OUTLINED_FUNCTION_16_4();
  sub_1DC3339CC(v32, v33);
  OUTLINED_FUNCTION_56_7();
  sub_1DC51502C();
  swift_getKeyPath();
  sub_1DC515E2C();
  sub_1DC5161CC();
  OUTLINED_FUNCTION_61();
  __swift_storeEnumTagSinglePayload(v34, v35, v36, v37);
  OUTLINED_FUNCTION_121_0();
  sub_1DC514FFC();
  sub_1DC515EFC();
  v38 = *(v25 + 88);
  v39 = OUTLINED_FUNCTION_75();
  v41 = v40(v39);
  v42 = v41;
  if (v41 == *MEMORY[0x1E69D0608])
  {
    v43 = *(v25 + 96);
    v44 = OUTLINED_FUNCTION_54_4();
    v45(v44);
    v46 = *(v81 + 32);
    v47 = OUTLINED_FUNCTION_74_0();
    v48(v47);
    swift_getKeyPath();
    OUTLINED_FUNCTION_44_6();
    sub_1DC3339CC(v49, v50);
    sub_1DC51502C();
    swift_getKeyPath();
    v51 = sub_1DC514FCC();

    v52 = sub_1DC515EAC();
    v54 = OUTLINED_FUNCTION_103(v52, v53);
    v51(v54);
    OUTLINED_FUNCTION_134_0();

    swift_getKeyPath();
    v55 = sub_1DC514FCC();

    sub_1DC515E8C();
    v55(v0);
    OUTLINED_FUNCTION_134_0();
    sub_1DC28EB30(v0, &qword_1ECC7D090, &qword_1DC524180);
    swift_getKeyPath();
    v56 = sub_1DC514FCC();

    v84 = v82;
    v85 = v83;
    v56(&v84);

    sub_1DC51500C();

    (*(v25 + 104))(v1, v42, v22);
    OUTLINED_FUNCTION_61();
    __swift_storeEnumTagSinglePayload(v57, v58, v59, v22);
    sub_1DC514FFC();
    (*(v81 + 8))(v80, v77);
LABEL_5:
    sub_1DC51500C();

    OUTLINED_FUNCTION_34();
    return;
  }

  if (v41 == *MEMORY[0x1E69D0600])
  {
    v60 = *(v25 + 96);
    v61 = OUTLINED_FUNCTION_54_4();
    v62(v61);
    v63 = *(v79 + 32);
    v64 = OUTLINED_FUNCTION_74_0();
    v65(v64);
    swift_getKeyPath();
    OUTLINED_FUNCTION_43_9();
    sub_1DC3339CC(v66, v67);
    sub_1DC51502C();
    swift_getKeyPath();
    v68 = sub_1DC514FCC();

    v69 = sub_1DC515E5C();
    v71 = OUTLINED_FUNCTION_103(v69, v70);
    v68(v71);
    OUTLINED_FUNCTION_134_0();

    swift_getKeyPath();
    v72 = sub_1DC514FCC();

    sub_1DC515E3C();
    v72(v0);

    sub_1DC28EB30(v0, &qword_1ECC7D090, &qword_1DC524180);
    swift_getKeyPath();
    sub_1DC514FCC();
    OUTLINED_FUNCTION_155_1();

    v84 = v82;
    v85 = v83;
    v78(&v84);
    OUTLINED_FUNCTION_134_0();
    sub_1DC51500C();

    (*(v25 + 104))(v1, v42, v22);
    OUTLINED_FUNCTION_61();
    __swift_storeEnumTagSinglePayload(v73, v74, v75, v22);
    sub_1DC514FFC();
    (*(v79 + 8))(v78, v76);
    goto LABEL_5;
  }

  sub_1DC51824C();
  __break(1u);
}

uint64_t sub_1DC331434@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DC515E5C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1DC331484@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DC515E4C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1DC3314B0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DC515EAC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1DC331500@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DC515E9C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void sub_1DC33152C()
{
  OUTLINED_FUNCTION_33();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CB08, &unk_1DC5240E0);
  v5 = OUTLINED_FUNCTION_10(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_54_8();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_107_0();
  v9 = sub_1DC515E7C();
  v10 = OUTLINED_FUNCTION_0(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_4_6();
  v15 = sub_1DC515EDC();
  v16 = OUTLINED_FUNCTION_0(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_1();
  v23 = v22 - v21;
  sub_1DC515EFC();
  OUTLINED_FUNCTION_117_1();
  v24 = OUTLINED_FUNCTION_89();
  v26 = v25(v24);
  if (v26 != *MEMORY[0x1E69D0608])
  {
    if (v26 != *MEMORY[0x1E69D0600])
    {
      sub_1DC516E5C();
      v50 = OUTLINED_FUNCTION_60_0();
      __swift_storeEnumTagSinglePayload(v50, v51, v52, v53);
      v54 = *(v18 + 8);
      v55 = OUTLINED_FUNCTION_89();
      v56(v55);
      goto LABEL_14;
    }

    v34 = *(v18 + 96);
    v35 = OUTLINED_FUNCTION_89();
    v36(v35);
    (*(v12 + 32))(v1, v23, v9);
    sub_1DC515E6C();
    v37 = *(v12 + 8);
    v38 = OUTLINED_FUNCTION_16();
    v39(v38);
    v40 = sub_1DC515F4C();
    OUTLINED_FUNCTION_39(v0, 1, v40);
    if (!v46)
    {
      OUTLINED_FUNCTION_65_1();
      sub_1DC2DB2AC();
      v41 = *(v40 - 8);
      v42 = *(v41 + 88);
      v43 = OUTLINED_FUNCTION_72();
      v45 = v44(v43);
      v46 = v45 == *MEMORY[0x1E69D0620] || v45 == *MEMORY[0x1E69D0628];
      if (v46)
      {
        sub_1DC28EB30(v0, &qword_1ECC7CB08, &unk_1DC5240E0);
        v47 = *MEMORY[0x1E69A07D0];
        v48 = sub_1DC516E5C();
        OUTLINED_FUNCTION_35(v48);
        (*(v49 + 104))(v3, v47, v48);
        OUTLINED_FUNCTION_61();
        v33 = v48;
        goto LABEL_3;
      }

      v57 = *(v41 + 8);
      v58 = OUTLINED_FUNCTION_72();
      v59(v58);
    }

    sub_1DC516E5C();
    v60 = OUTLINED_FUNCTION_60_0();
    __swift_storeEnumTagSinglePayload(v60, v61, v62, v63);
    sub_1DC28EB30(v0, &qword_1ECC7CB08, &unk_1DC5240E0);
    goto LABEL_14;
  }

  v27 = *(v18 + 8);
  v28 = OUTLINED_FUNCTION_89();
  v29(v28);
  sub_1DC516E5C();
  v30 = OUTLINED_FUNCTION_60_0();
LABEL_3:
  __swift_storeEnumTagSinglePayload(v30, v31, v32, v33);
LABEL_14:
  OUTLINED_FUNCTION_34();
}

void sub_1DC3318A0()
{
  v0 = sub_1DC5161CC();
  v1 = OUTLINED_FUNCTION_0(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_1();
  v6 = v3[2];
  v7 = OUTLINED_FUNCTION_56_0();
  v8(v7);
  v9 = v3[11];
  v10 = OUTLINED_FUNCTION_31_0();
  v12 = v11(v10);
  if (v12 == *MEMORY[0x1E69D0720])
  {
    v13 = 29;
  }

  else
  {
    if (v12 != *MEMORY[0x1E69D0730] && v12 != *MEMORY[0x1E69D0718])
    {
      v15 = v3[1];
      v16 = OUTLINED_FUNCTION_31_0();
      v17(v16);
      return;
    }

    v13 = 30;
  }

  sub_1DC428688(v13);
}

void sub_1DC3319CC()
{
  OUTLINED_FUNCTION_33();
  v136 = v0;
  v134 = sub_1DC515E7C();
  v4 = OUTLINED_FUNCTION_0(v134);
  v130 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2_1();
  v133 = v8;
  OUTLINED_FUNCTION_12();
  v9 = sub_1DC515ECC();
  v10 = OUTLINED_FUNCTION_0(v9);
  v137 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2_1();
  v127 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CB40, &qword_1DC5242E0);
  v16 = OUTLINED_FUNCTION_35(v15);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_8();
  v129 = v19 - v20;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v126 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D090, &qword_1DC524180);
  v25 = OUTLINED_FUNCTION_10(v24);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_8();
  v126 = v28 - v29;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_23_1();
  v128 = v31;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_23_1();
  v131 = v33;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_23_1();
  v132 = v35;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_109();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_42_3();
  v38 = sub_1DC515EBC();
  v39 = OUTLINED_FUNCTION_0(v38);
  v135 = v40;
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_18();
  v43 = sub_1DC515EDC();
  v44 = OUTLINED_FUNCTION_0(v43);
  v46 = v45;
  v48 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_129();
  (*(v46 + 16))(v3, v136, v43);
  v49 = *(v46 + 88);
  v50 = OUTLINED_FUNCTION_122();
  v52 = v51(v50);
  if (v52 == *MEMORY[0x1E69D0608])
  {
    v53 = *(v46 + 96);
    v54 = OUTLINED_FUNCTION_122();
    v55(v54);
    (*(v135 + 32))(v1, v3, v38);
    sub_1DC515E8C();
    v56 = v137;
    (*(v137 + 104))(v2, *MEMORY[0x1E69D05E8], v9);
    OUTLINED_FUNCTION_61();
    __swift_storeEnumTagSinglePayload(v57, v58, v59, v9);
    v60 = *(v15 + 48);
    OUTLINED_FUNCTION_41();
    sub_1DC2DB2AC();
    sub_1DC2DB2AC();
    OUTLINED_FUNCTION_39(v23, 1, v9);
    if (v61)
    {
      OUTLINED_FUNCTION_62_3();
      sub_1DC28EB30(v62, v63, v64);
      OUTLINED_FUNCTION_62_3();
      sub_1DC28EB30(v65, v66, v67);
      v68 = *(v135 + 8);
      v69 = OUTLINED_FUNCTION_147_0();
      v70(v69);
      OUTLINED_FUNCTION_39(&v23[v60], 1, v9);
      if (!v61)
      {
        goto LABEL_15;
      }

      v71 = v23;
    }

    else
    {
      v89 = v56;
      v136 = v1;
      v90 = v135;
      sub_1DC2DB2AC();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(&v23[v60], 1, v9);
      v92 = (v56 + 8);
      if (EnumTagSinglePayload == 1)
      {
        OUTLINED_FUNCTION_62_3();
        sub_1DC28EB30(v93, v94, v95);
        OUTLINED_FUNCTION_62_3();
        sub_1DC28EB30(v96, v97, v98);
        (*(v90 + 8))(v136, v38);
        v99 = *v92;
        v100 = OUTLINED_FUNCTION_60();
        v101(v100);
LABEL_15:
        v102 = v23;
LABEL_20:
        sub_1DC28EB30(v102, &qword_1ECC7CB40, &qword_1DC5242E0);
        goto LABEL_24;
      }

      (*(v89 + 32))(v127, &v23[v60], v9);
      OUTLINED_FUNCTION_42_8();
      sub_1DC3339CC(v114, v115);
      OUTLINED_FUNCTION_48_0();
      sub_1DC5176CC();
      v116 = *(v89 + 8);
      v117 = OUTLINED_FUNCTION_60();
      v116(v117);
      sub_1DC28EB30(v2, &qword_1ECC7D090, &qword_1DC524180);
      v118 = OUTLINED_FUNCTION_47_6();
      sub_1DC28EB30(v118, v119, &qword_1DC524180);
      (*(v90 + 8))(v136, v38);
      (v116)(v132, v9);
      v71 = v23;
    }

LABEL_23:
    sub_1DC28EB30(v71, &qword_1ECC7D090, &qword_1DC524180);
    goto LABEL_24;
  }

  v72 = v137;
  if (v52 == *MEMORY[0x1E69D0600])
  {
    v73 = *(v46 + 96);
    v74 = OUTLINED_FUNCTION_122();
    v75(v74);
    v76 = v130;
    v77 = v133;
    (*(v130 + 32))(v133, v3, v134);
    sub_1DC515E3C();
    v78 = v9;
    (*(v72 + 104))(v128, *MEMORY[0x1E69D05E8], v9);
    OUTLINED_FUNCTION_61();
    __swift_storeEnumTagSinglePayload(v79, v80, v81, v9);
    v82 = *(v15 + 48);
    v83 = v129;
    sub_1DC2DB2AC();
    sub_1DC2DB2AC();
    OUTLINED_FUNCTION_39(v83, 1, v9);
    if (v61)
    {
      v84 = OUTLINED_FUNCTION_72();
      sub_1DC28EB30(v84, v85, &qword_1DC524180);
      OUTLINED_FUNCTION_26_1();
      sub_1DC28EB30(v86, v87, v88);
      (*(v76 + 8))(v77, v134);
      OUTLINED_FUNCTION_39(v83 + v82, 1, v9);
      if (v61)
      {
        v71 = v83;
        goto LABEL_23;
      }
    }

    else
    {
      v106 = v134;
      v107 = v126;
      sub_1DC2DB2AC();
      v108 = __swift_getEnumTagSinglePayload(v83 + v82, 1, v9);
      if (v108 != 1)
      {
        v120 = v127;
        (*(v72 + 32))(v127, v83 + v82, v78);
        OUTLINED_FUNCTION_42_8();
        sub_1DC3339CC(v121, v122);
        OUTLINED_FUNCTION_56_0();
        sub_1DC5176CC();
        v123 = *(v72 + 8);
        v123(v120, v78);
        v124 = OUTLINED_FUNCTION_73();
        sub_1DC28EB30(v124, v125, &qword_1DC524180);
        sub_1DC28EB30(v131, &qword_1ECC7D090, &qword_1DC524180);
        (*(v76 + 8))(v133, v106);
        v123(v126, v78);
        v71 = v83;
        goto LABEL_23;
      }

      v109 = OUTLINED_FUNCTION_72();
      sub_1DC28EB30(v109, v110, &qword_1DC524180);
      OUTLINED_FUNCTION_26_1();
      sub_1DC28EB30(v111, v112, v113);
      (*(v76 + 8))(v133, v106);
      (*(v72 + 8))(v107, v9);
    }

    v102 = v83;
    goto LABEL_20;
  }

  v103 = *(v46 + 8);
  v104 = OUTLINED_FUNCTION_122();
  v105(v104);
LABEL_24:
  OUTLINED_FUNCTION_34();
}

void sub_1DC3322BC()
{
  OUTLINED_FUNCTION_33();
  v0 = sub_1DC515E7C();
  v1 = OUTLINED_FUNCTION_0(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_24_1();
  v6 = sub_1DC515EBC();
  v7 = OUTLINED_FUNCTION_0(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_58_0();
  v12 = sub_1DC515EDC();
  v13 = OUTLINED_FUNCTION_0(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_40_3();
  v18 = v15[2];
  v19 = OUTLINED_FUNCTION_149();
  v20(v19);
  OUTLINED_FUNCTION_117_1();
  v21 = OUTLINED_FUNCTION_41();
  v23 = v22(v21);
  if (v23 == *MEMORY[0x1E69D0608])
  {
    v24 = v15[12];
    v25 = OUTLINED_FUNCTION_41();
    v26(v25);
    v27 = OUTLINED_FUNCTION_63_3(v9);
    v28(v27);
    sub_1DC515EAC();
    v30 = v29;
    v31 = *(v9 + 8);
    v32 = OUTLINED_FUNCTION_60();
    v33(v32);
    if (v30)
    {
LABEL_6:
    }
  }

  else
  {
    if (v23 != *MEMORY[0x1E69D0600])
    {
      v44 = v15[1];
      v45 = OUTLINED_FUNCTION_41();
      v46(v45);
      goto LABEL_8;
    }

    v34 = v15[12];
    v35 = OUTLINED_FUNCTION_41();
    v36(v35);
    OUTLINED_FUNCTION_42_5();
    v37 = OUTLINED_FUNCTION_12_3();
    v38(v37);
    sub_1DC515E5C();
    v40 = v39;
    v41 = *(v3 + 8);
    v42 = OUTLINED_FUNCTION_31_0();
    v43(v42);
    if (v40)
    {
      goto LABEL_6;
    }
  }

LABEL_8:
  OUTLINED_FUNCTION_34();
}

uint64_t sub_1DC332550()
{
  if (_MergedGlobals_5 != -1)
  {
    OUTLINED_FUNCTION_10_11();
  }

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_6_10();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CB50, &qword_1DC5242E8);
  OUTLINED_FUNCTION_167_0(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10, SWORD2(v10), SBYTE6(v10), SHIBYTE(v10));
  return v11;
}

void sub_1DC3325C0()
{
  OUTLINED_FUNCTION_166();
  sub_1DC327CBC();
  OUTLINED_FUNCTION_23_2();
  sub_1DC313670();
  OUTLINED_FUNCTION_39_6();
  OUTLINED_FUNCTION_161();
  OUTLINED_FUNCTION_17_7(27, v0, v1, v2, v3);
  OUTLINED_FUNCTION_165();
}

uint64_t sub_1DC332630()
{
  if (qword_1EDAC8188 != -1)
  {
    OUTLINED_FUNCTION_21_8();
  }

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_6_10();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CB58, &qword_1DC5242F0);
  OUTLINED_FUNCTION_167_0(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10, SWORD2(v10), SBYTE6(v10), SHIBYTE(v10));
  return v11;
}

void sub_1DC3326A0()
{
  OUTLINED_FUNCTION_166();
  sub_1DC327CBC();
  OUTLINED_FUNCTION_23_2();
  sub_1DC313670();
  OUTLINED_FUNCTION_39_6();
  OUTLINED_FUNCTION_161();
  OUTLINED_FUNCTION_17_7(32, v0, v1, v2, v3);
  OUTLINED_FUNCTION_165();
}

uint64_t sub_1DC332714()
{
  if (qword_1EDAC8190 != -1)
  {
    OUTLINED_FUNCTION_14_6();
  }

  OUTLINED_FUNCTION_22_1();
  v3 = xmmword_1EDAC8358;
  v4 = unk_1EDAC8368;
  v5 = xmmword_1EDAC8378;
  v6 = unk_1EDAC8388;
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CB60, &qword_1DC5242F8);
  sub_1DC327DC8(v0, &v2);
  return v2;
}

void sub_1DC332798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_166();
  a17 = v18;
  a18 = v19;
  a9 = 0;
  a10 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D0A0, &unk_1DC524070);
  sub_1DC327CBC();
  OUTLINED_FUNCTION_23_2();
  sub_1DC313670();
  v20 = OUTLINED_FUNCTION_39_6();
  OUTLINED_FUNCTION_17_7(32, 0x80000001DC53F730, &a9, v20, &xmmword_1EDAC8358);
  OUTLINED_FUNCTION_165();
}

uint64_t sub_1DC332818()
{
  if (qword_1EDAC8198 != -1)
  {
    OUTLINED_FUNCTION_13_8();
  }

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_94();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CB68, &qword_1DC524300);
  sub_1DC327DC8(v0, &v2);
  return v2;
}

void sub_1DC332890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_166();
  a17 = v18;
  a18 = v19;
  a10 = 5;
  sub_1DC327CBC();
  OUTLINED_FUNCTION_23_2();
  sub_1DC313670();
  v20 = OUTLINED_FUNCTION_39_6();
  OUTLINED_FUNCTION_17_7(35, 0x80000001DC53F700, &a10, v20, byte_1EDAC8240);
  OUTLINED_FUNCTION_165();
}

float sub_1DC332908()
{
  if (qword_1EDAC81A0 != -1)
  {
    OUTLINED_FUNCTION_12_9();
  }

  OUTLINED_FUNCTION_22_1();
  v3 = qword_1EDAC8278;
  v4 = unk_1EDAC8280;
  v5 = dword_1EDAC8288;
  v6 = qword_1EDAC8290;
  v7 = unk_1EDAC8298;
  v8 = unk_1EDAC82A0;
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CB70, &qword_1DC524308);
  sub_1DC327DC8(v0, &v2);
  return v2;
}

void sub_1DC33299C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  OUTLINED_FUNCTION_166();
  a18 = v19;
  a19 = v20;
  a11 = 0;
  sub_1DC327CBC();
  OUTLINED_FUNCTION_23_2();
  sub_1DC313670();
  v21 = OUTLINED_FUNCTION_39_6();
  OUTLINED_FUNCTION_17_7(42, 0x80000001DC53F6D0, &a11, v21, &qword_1EDAC8278);
  OUTLINED_FUNCTION_165();
}

uint64_t sub_1DC332A10()
{
  if (qword_1EDAC81A8 != -1)
  {
    OUTLINED_FUNCTION_11_10();
  }

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_94();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CB78, &qword_1DC524310);
  sub_1DC327DC8(v0, &v2);
  return v2;
}

void sub_1DC332A88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_166();
  a17 = v18;
  a18 = v19;
  a10 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CB88, &unk_1DC524410);
  sub_1DC327CBC();
  OUTLINED_FUNCTION_23_2();
  sub_1DC313670();
  v20 = OUTLINED_FUNCTION_39_6();
  OUTLINED_FUNCTION_17_7(37, 0x80000001DC53F6A0, &a10, v20, byte_1EDAC82B0);
  OUTLINED_FUNCTION_165();
}

uint64_t sub_1DC332B08()
{
  if (qword_1EDAC81B0 != -1)
  {
    OUTLINED_FUNCTION_19_10();
  }

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_6_10();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CB58, &qword_1DC5242F0);
  OUTLINED_FUNCTION_167_0(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10, SWORD2(v10), SBYTE6(v10), SHIBYTE(v10));
  return v11;
}

void sub_1DC332B78()
{
  OUTLINED_FUNCTION_166();
  nullsub_1(1, v0);
  sub_1DC327CBC();
  OUTLINED_FUNCTION_23_2();
  sub_1DC313670();
  OUTLINED_FUNCTION_39_6();
  OUTLINED_FUNCTION_161();
  OUTLINED_FUNCTION_17_7(37, v1, v2, v3, v4);
  OUTLINED_FUNCTION_165();
}

uint64_t sub_1DC332BF0()
{
  if (qword_1EDAC81B8 != -1)
  {
    OUTLINED_FUNCTION_18_9();
  }

  OUTLINED_FUNCTION_22_1();
  OUTLINED_FUNCTION_6_10();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CB58, &qword_1DC5242F0);
  OUTLINED_FUNCTION_167_0(v0, v1, v2, v3, v4, v5, v6, v7, v9, v10, SWORD2(v10), SBYTE6(v10), SHIBYTE(v10));
  return v11;
}

void sub_1DC332C60()
{
  OUTLINED_FUNCTION_166();
  sub_1DC323900(0);
  sub_1DC327CBC();
  OUTLINED_FUNCTION_23_2();
  sub_1DC313670();
  OUTLINED_FUNCTION_39_6();
  OUTLINED_FUNCTION_161();
  OUTLINED_FUNCTION_17_7(41, v0, v1, v2, v3);
  OUTLINED_FUNCTION_165();
}

uint64_t sub_1DC332CD8()
{
  v0 = sub_1DC51665C();
  v1 = OUTLINED_FUNCTION_0(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_2_4();
  sub_1DC332DF0();
  if (v6)
  {
    v7 = 1;
  }

  else
  {
    sub_1DC511E0C();
    v8 = sub_1DC51664C();
    v10 = v9;
    v11 = *(v3 + 8);
    v12 = OUTLINED_FUNCTION_36();
    v13(v12);
    if (v8 == 0xD000000000000015 && 0x80000001DC53F440 == v10)
    {
      v7 = 1;
    }

    else
    {
      OUTLINED_FUNCTION_72();
      v7 = sub_1DC51825C();
    }
  }

  return v7 & 1;
}

void sub_1DC332DF0()
{
  OUTLINED_FUNCTION_33();
  v0 = sub_1DC51665C();
  v1 = OUTLINED_FUNCTION_0(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_54_8();
  MEMORY[0x1EEE9AC00](v6);
  sub_1DC511E0C();
  v7 = sub_1DC51664C();
  v9 = v8;
  v10 = *(v3 + 8);
  v11 = OUTLINED_FUNCTION_77_1();
  v10(v11);
  if (v7 == 0xD000000000000014 && 0x80000001DC53F420 == v9)
  {
LABEL_12:

    goto LABEL_13;
  }

  OUTLINED_FUNCTION_19_6();
  v13 = sub_1DC51825C();

  if ((v13 & 1) == 0)
  {
    sub_1DC511E0C();
    v14 = sub_1DC51664C();
    v16 = v15;
    v17 = OUTLINED_FUNCTION_73();
    v10(v17);
    if (v14 != 0x6D754E656E6F6870 || v16 != 0xEB00000000726562)
    {
      v19 = sub_1DC51825C();

      if ((v19 & 1) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_13:
  if (qword_1EDAC81C0 != -1)
  {
    swift_once();
  }

  v20 = qword_1EDAC81C8;
  v21 = sub_1DC511DEC();
  sub_1DC332FF4(v21, v22, v20);
  OUTLINED_FUNCTION_168();
LABEL_16:
  OUTLINED_FUNCTION_34();
}

BOOL sub_1DC332FF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_1DC5182FC();
  sub_1DC51769C();
  v7 = sub_1DC51833C();
  v8 = ~(-1 << *(a3 + 32));
  do
  {
    v9 = v7 & v8;
    v10 = (1 << (v7 & v8)) & *(a3 + 56 + (((v7 & v8) >> 3) & 0xFFFFFFFFFFFFFF8));
    v11 = v10 != 0;
    if (!v10)
    {
      break;
    }

    v12 = (*(a3 + 48) + 16 * v9);
    if (*v12 == a1 && v12[1] == a2)
    {
      break;
    }

    v14 = sub_1DC51825C();
    v7 = v9 + 1;
  }

  while ((v14 & 1) == 0);
  return v11;
}

uint64_t sub_1DC3330E0()
{
  result = sub_1DC33347C(&unk_1F57F7468);
  qword_1EDAC81C8 = result;
  return result;
}

id sub_1DC333108(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v5 = sub_1DC5176FC();

  v11[0] = 0;
  v6 = [v3 initWithPattern:v5 options:a3 error:v11];

  if (v6)
  {
    v7 = v11[0];
  }

  else
  {
    v8 = v11[0];
    sub_1DC51085C();

    swift_willThrow();
  }

  v9 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t sub_1DC3331E4()
{
  v1 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CAF8, &qword_1DC5240D0) - 8) + 80);
  v2 = *(v0 + 16);
  swift_arrayDestroy();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t sub_1DC333268(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    OUTLINED_FUNCTION_56_7();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

int64_t sub_1DC3332AC(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sub_1DC33336C(result, 1);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  if ((*(v6 + 24) >> 1) - *(v6 + 16) < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v7 = *(v6 + 16);
  v8 = __OFADD__(v7, v3);
  v9 = v7 + v3;
  if (!v8)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

char *sub_1DC33336C(int64_t a1, char a2)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if (!result || a1 > *(v5 + 3) >> 1)
  {
    if (*(v5 + 2) <= a1)
    {
      v7 = a1;
    }

    else
    {
      v7 = *(v5 + 2);
    }

    result = sub_1DC2ACCD4(result, v7, a2 & 1, v5);
    *v2 = result;
  }

  return result;
}

uint64_t sub_1DC3333D4(uint64_t a1, unint64_t a2)
{
  sub_1DC2A6784(a1, a2);
  v4 = *(sub_1DC33360C(a1, a2) + 16);
  v5 = sub_1DC5177FC();

  return v5;
}

uint64_t sub_1DC333440@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DC5177FC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1DC33347C(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = MEMORY[0x1E69E7CD0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D510, &unk_1DC528A40);
  result = sub_1DC517F0C();
  v3 = result;
  v4 = *(a1 + 16);
  if (!v4)
  {
LABEL_19:

    return v3;
  }

  v5 = 0;
  v6 = result + 56;
  while (v5 < *(a1 + 16))
  {
    v7 = (a1 + 32 + 16 * v5);
    v9 = *v7;
    v8 = v7[1];
    ++v5;
    v10 = *(v3 + 40);
    sub_1DC5182FC();

    sub_1DC51769C();
    result = sub_1DC51833C();
    v11 = ~(-1 << *(v3 + 32));
    while (1)
    {
      v12 = result & v11;
      v13 = (result & v11) >> 6;
      v14 = *(v6 + 8 * v13);
      v15 = 1 << (result & v11);
      if ((v15 & v14) == 0)
      {
        break;
      }

      v16 = (*(v3 + 48) + 16 * v12);
      v17 = *v16 == v9 && v16[1] == v8;
      if (v17 || (sub_1DC51825C() & 1) != 0)
      {

        goto LABEL_16;
      }

      result = v12 + 1;
    }

    *(v6 + 8 * v13) = v15 | v14;
    v18 = (*(v3 + 48) + 16 * v12);
    *v18 = v9;
    v18[1] = v8;
    v19 = *(v3 + 16);
    v20 = __OFADD__(v19, 1);
    v21 = v19 + 1;
    if (v20)
    {
      goto LABEL_21;
    }

    *(v3 + 16) = v21;
LABEL_16:
    if (v5 == v4)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1DC33360C(uint64_t a1, unint64_t a2)
{
  v4 = sub_1DC510A3C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x1EEE9AC00](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  switch(a2 >> 62)
  {
    case 1uLL:
      if (!__OFSUB__(HIDWORD(a1), a1))
      {
        v10 = HIDWORD(a1) - a1;
        goto LABEL_6;
      }

      __break(1u);
      goto LABEL_12;
    case 2uLL:
      v12 = *(a1 + 16);
      v11 = *(a1 + 24);
      v10 = v11 - v12;
      if (!__OFSUB__(v11, v12))
      {
        goto LABEL_6;
      }

LABEL_12:
      __break(1u);
      return result;
    case 3uLL:
      goto LABEL_9;
    default:
      v10 = BYTE6(a2);
LABEL_6:
      if (!v10)
      {
        goto LABEL_9;
      }

      v13 = sub_1DC291E08(v10, 0);
      v14 = sub_1DC5109CC();
      sub_1DC2AD740(a1, a2);
      (*(v5 + 8))(v9, v4);
      if (v14 != v10)
      {
        __break(1u);
LABEL_9:
        sub_1DC2AD740(a1, a2);
        return MEMORY[0x1E69E7CC0];
      }

      return v13;
  }
}

uint64_t sub_1DC333790(uint64_t a1, unint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  switch(a2 >> 62)
  {
    case 1uLL:
      if (a1 >> 32 < a1)
      {
        __break(1u);
LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
      }

      v4 = a1;
      if (sub_1DC51074C() && __OFSUB__(v4, sub_1DC51076C()))
      {
        goto LABEL_14;
      }

LABEL_9:
      sub_1DC51075C();
LABEL_10:
      result = sub_1DC5177FC();
      v6 = *MEMORY[0x1E69E9840];
      return result;
    case 2uLL:
      v2 = *(a1 + 16);
      v3 = *(a1 + 24);
      if (sub_1DC51074C() && __OFSUB__(v2, sub_1DC51076C()))
      {
        goto LABEL_13;
      }

      if (!__OFSUB__(v3, v2))
      {
        goto LABEL_9;
      }

      goto LABEL_12;
    default:
      goto LABEL_10;
  }
}

uint64_t sub_1DC333990()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_1DC3309CC();
}

void sub_1DC33399C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  sub_1DC330B3C();
}

uint64_t sub_1DC3339CC(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_56_7();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DC333A14()
{
  result = qword_1ECC7CB80;
  if (!qword_1ECC7CB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7CB80);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for RedactedUtterance(_BYTE *result, int a2, int a3)
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

uint64_t sub_1DC333B68()
{
  OUTLINED_FUNCTION_140_0();
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);

  v4 = OUTLINED_FUNCTION_72();
  return v0(v4);
}

uint64_t sub_1DC333BAC()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];

  OUTLINED_FUNCTION_65_1();
  sub_1DC51586C();

  OUTLINED_FUNCTION_42_2();
  return sub_1DC51585C();
}

uint64_t OUTLINED_FUNCTION_110_0()
{

  return sub_1DC517E5C();
}

void OUTLINED_FUNCTION_132_0()
{

  JUMPOUT(0x1E1296160);
}

uint64_t OUTLINED_FUNCTION_141_0()
{
  result = *(v0 - 104);
  v2 = *(v0 - 96);
  return result;
}

uint64_t OUTLINED_FUNCTION_167_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{

  return sub_1DC327DC8(a1, &a13);
}

uint64_t sub_1DC333D10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a1;
  v66 = a2;
  v2 = sub_1DC5157EC();
  v3 = OUTLINED_FUNCTION_0(v2);
  v62 = v4;
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v3);
  v61 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v63 = &v59 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFD0, &unk_1DC522550);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v59 - v12;
  v14 = type metadata accessor for NLRouterTurnContext(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_1DC516F5C();
  v18 = OUTLINED_FUNCTION_0(v65);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v24 = &v59 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
  v25 = sub_1DC2BE518();
  v26 = OUTLINED_FUNCTION_130();
  sub_1DC2A2ED0("HeuristicRules.PromptRule", 25, 2, v25, v26 & 1, v24);

  sub_1DC298C74(0, &qword_1ECC7B9B0, 0x1E695E000);
  v27 = sub_1DC346164();
  v29 = v28;
  if (v27 == sub_1DC313520(1) && v29 == v30)
  {
  }

  else
  {
    v32 = sub_1DC51825C();

    if ((v32 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  v33 = type metadata accessor for NLRouterServiceRequest(0);
  v34 = v64;
  sub_1DC3342D0(v64 + *(v33 + 20), v13);
  if (__swift_getEnumTagSinglePayload(v13, 1, v14) != 1)
  {
    v60 = v20;
    sub_1DC3343A8(v13, v17);
    v37 = type metadata accessor for HeuristicRoutingRequest(0);
    v39 = v62;
    v38 = v63;
    (*(v62 + 16))(v63, v34 + *(v37 + 20), v2);
    type metadata accessor for NLRouterBypassUtils();
    if (sub_1DC309808(v17))
    {
      v36 = sub_1DC517B9C();
      v40 = sub_1DC2BE518();
      sub_1DC516F0C();

      (*(v39 + 8))(v38, v2);
      sub_1DC33440C(v17);
      v41 = *MEMORY[0x1E69D02D8];
      v42 = OUTLINED_FUNCTION_1_7();
      v43(v42);
      v35 = 0;
      v20 = v60;
      goto LABEL_22;
    }

    v44 = (v34 + *(v37 + 24));
    v45 = *v44;
    v46 = v44[1];
    v47 = sub_1DC309474(v34);
    v20 = v60;
    if (v47)
    {
      sub_1DC32DBF4();
      if ((v48 & 1) == 0)
      {
        v36 = sub_1DC517B9C();
        v49 = sub_1DC2BE518();
        sub_1DC516F0C();

        if (sub_1DC32DB10())
        {
          (*(v39 + 8))(v63, v2);
          sub_1DC33440C(v17);
          v50 = *MEMORY[0x1E69D02D8];
          v51 = OUTLINED_FUNCTION_1_7();
          v52(v51);
          goto LABEL_21;
        }

        v53 = v61;
        sub_1DC32CDF4();
        v54 = v63;
        (*(v39 + 8))(v63, v2);
        (*(v39 + 32))(v54, v53, v2);
      }
    }

    v55 = v63;
    v56 = sub_1DC5157DC();
    sub_1DC33440C(v17);
    if (v56)
    {
      (*(v39 + 8))(v55, v2);
      goto LABEL_10;
    }

    v36 = v66;
    (*(v39 + 32))(v66, v55, v2);
LABEL_21:
    v35 = 0;
    goto LABEL_22;
  }

  sub_1DC334340(v13);
LABEL_10:
  v35 = 1;
  v36 = v66;
LABEL_22:
  __swift_storeEnumTagSinglePayload(v36, v35, 1, v2);
  v57 = sub_1DC2BE518();
  sub_1DC2B8848();

  return (*(v20 + 8))(v24, v65);
}

uint64_t sub_1DC3342D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFD0, &unk_1DC522550);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DC334340(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFD0, &unk_1DC522550);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DC3343A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NLRouterTurnContext(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DC33440C(uint64_t a1)
{
  v2 = type metadata accessor for NLRouterTurnContext(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DC33456C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CB98, &qword_1DC524530);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1DC33463C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v8 = sub_1DC51772C();
  v10 = v9;
  v11 = sub_1DC51772C();
  v13 = v12;
  v14 = sub_1DC51772C();
  v16 = v15;
  v17 = sub_1DC51772C();
  v19 = v18;
  swift_getObjCClassMetadata();
  v20 = a7(v8, v10, v11, v13, v14, v16, v17, v19);

  return v20;
}

uint64_t sub_1DC3347DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t (*a10)(void), uint64_t (*a11)(void), uint64_t (*a12)(void), uint64_t (*a13)(void), void (*a14)(void, unint64_t), uint64_t (*a15)(uint64_t))
{
  v108 = a7;
  v109 = a8;
  v106 = a5;
  v107 = a6;
  v110 = a1;
  v111 = a2;
  v103 = a15;
  v104 = a3;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CB98, &qword_1DC524530);
  OUTLINED_FUNCTION_10(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v19);
  v102 = v93 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CBA0, &qword_1DC524538);
  OUTLINED_FUNCTION_10(v21);
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v24);
  v98 = v93 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CBA8, &qword_1DC524540);
  OUTLINED_FUNCTION_10(v26);
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v29);
  v94 = v93 - v30;
  v31 = sub_1DC51464C();
  v32 = OUTLINED_FUNCTION_0(v31);
  v96 = v33;
  v97 = v32;
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v95 = v93 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CBB0, &qword_1DC524548);
  OUTLINED_FUNCTION_10(v37);
  v39 = *(v38 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v40);
  v42 = v93 - v41;
  v43 = sub_1DC51468C();
  v44 = OUTLINED_FUNCTION_0(v43);
  v100 = v45;
  v101 = v44;
  v47 = *(v46 + 64);
  v48 = MEMORY[0x1EEE9AC00](v44);
  v112 = v93 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = MEMORY[0x1EEE9AC00](v48);
  v114 = v93 - v51;
  MEMORY[0x1EEE9AC00](v50);
  v113 = v93 - v52;
  v53 = a10(0);
  v54 = *(v53 + 48);
  v55 = *(v53 + 52);
  swift_allocObject();
  v99 = a11();
  v56 = a12(0);
  v57 = *(v56 + 48);
  v58 = *(v56 + 52);
  swift_allocObject();
  v59 = a13();
  v105 = v59;
  a14(0, 0xE000000000000000);
  v93[2] = *MEMORY[0x1E69D2468];
  sub_1DC51772C();
  v60 = *MEMORY[0x1E69D1760];
  v61 = sub_1DC51465C();
  OUTLINED_FUNCTION_2(v61);
  v63 = *(v62 + 104);
  v63(v42, v60, v59);
  OUTLINED_FUNCTION_1_8();

  v93[3] = a4;
  sub_1DC51466C();
  v93[1] = *MEMORY[0x1E69D2480];
  sub_1DC51772C();
  v63(v42, v60, v59);
  OUTLINED_FUNCTION_1_8();

  sub_1DC51466C();
  v64 = *MEMORY[0x1E69D2460];
  sub_1DC51772C();
  v65 = v60;
  v66 = v105;
  v63(v42, v65, v59);
  v67 = v103;
  OUTLINED_FUNCTION_1_8();

  v68 = v112;
  v69 = sub_1DC51466C();
  v70 = v67(v69);
  if (v70)
  {
    sub_1DC5145DC();
  }

  v71 = v67(v70);
  v72 = v114;
  if (v71)
  {
    sub_1DC5145DC();
  }

  v73 = v66;
  v74 = v67(v71);
  if (v74)
  {
    v73 = v74;
    sub_1DC5145DC();
  }

  if (a9)
  {
    v75 = *MEMORY[0x1E69D1738];
    v76 = sub_1DC51462C();
    OUTLINED_FUNCTION_2(v76);
    v78 = v94;
    (*(v77 + 104))(v94, v75, v73);
    __swift_storeEnumTagSinglePayload(v78, 0, 1, v73);
    v79 = sub_1DC514F7C();
    __swift_storeEnumTagSinglePayload(v98, 1, 1, v79);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CBB8, &qword_1DC524558);
    v80 = *(sub_1DC51461C() - 8);
    v81 = *(v80 + 72);
    v82 = (*(v80 + 80) + 32) & ~*(v80 + 80);
    *(swift_allocObject() + 16) = xmmword_1DC522F00;
    sub_1DC51772C();

    OUTLINED_FUNCTION_0_11();
    sub_1DC51460C();
    sub_1DC51772C();

    OUTLINED_FUNCTION_0_11();
    sub_1DC51460C();
    sub_1DC51772C();

    OUTLINED_FUNCTION_0_11();
    sub_1DC51460C();

    v115 = 1;
    v83 = v95;
    v84 = sub_1DC51463C();
    if (v103(v84))
    {
      sub_1DC5145EC();
    }

    (*(v96 + 8))(v83, v97);
    v68 = v112;
    v72 = v114;
  }

  v85 = v99;
  sub_1DC514BDC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C1C8, &qword_1DC524550);
  v86 = swift_allocObject();
  *(v86 + 16) = xmmword_1DC524520;
  *(v86 + 32) = v85;
  v87 = sub_1DC5146DC();
  v88 = v102;
  __swift_storeEnumTagSinglePayload(v102, 1, 1, v87);

  MEMORY[0x1E1292F50](v86, v88);

  sub_1DC33456C(v88);
  v89 = sub_1DC51390C();

  v90 = v101;
  v91 = *(v100 + 8);
  v91(v68, v101);
  v91(v72, v90);
  v91(v113, v90);
  return v89;
}

id sub_1DC335124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t (*a8)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, char))
{
  v10 = sub_1DC51772C();
  v12 = v11;
  v13 = sub_1DC51772C();
  v15 = v14;
  v16 = sub_1DC51772C();
  v18 = v17;
  v19 = sub_1DC51772C();
  v23 = a7;
  v21 = a8(v10, v12, v13, v15, v16, v18, v19, v20, v23);

  return v21;
}

id CDMCATIUSOParseHelpers.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CDMCATIUSOParseHelpers.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CDMCATIUSOParseHelpers();
  return objc_msgSendSuper2(&v2, sel_init);
}

id CDMCATIUSOParseHelpers.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CDMCATIUSOParseHelpers();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1DC335378@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v76 = a2;
  v73 = sub_1DC51122C();
  v3 = OUTLINED_FUNCTION_0(v73);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_1();
  v10 = v9 - v8;
  v11 = sub_1DC5157EC();
  v12 = OUTLINED_FUNCTION_0(v11);
  v72 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_1();
  v71 = v17 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C158, &unk_1DC5234A0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = v69 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C160, qword_1DC5233B0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v25 = (v69 - v24);
  v26 = sub_1DC516F5C();
  v27 = OUTLINED_FUNCTION_0(v26);
  v74 = v28;
  v75 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_1();
  v33 = v32 - v31;
  sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
  v34 = sub_1DC2BE518();
  v35 = OUTLINED_FUNCTION_130();
  sub_1DC2A2ED0("HeuristicRules.MDMRSpansRule", 28, 2, v34, v35 & 1, v33);

  sub_1DC298C74(0, &qword_1ECC7B9B0, 0x1E695E000);
  if ((sub_1DC344988() & 1) == 0)
  {
    sub_1DC517B9C();
    v42 = sub_1DC2BE518();
    sub_1DC516F0C();

    v43 = v76;
    v44 = 1;
    v45 = v11;
LABEL_9:
    __swift_storeEnumTagSinglePayload(v43, v44, 1, v45);
    v48 = v74;
    v47 = v75;
    v49 = sub_1DC2BE518();
    sub_1DC2B8848();

    return (*(v48 + 8))(v33, v47);
  }

  v36 = v76;
  v70 = v11;
  v37 = type metadata accessor for NLRouterServiceRequest(0);
  sub_1DC28F3B8(a1 + *(v37 + 32), v21, &qword_1ECC7C158, &unk_1DC5234A0);
  v38 = type metadata accessor for NLRouterTurnProbingResult(0);
  if (__swift_getEnumTagSinglePayload(v21, 1, v38) == 1)
  {
    v39 = &qword_1ECC7C158;
    v40 = &unk_1DC5234A0;
    v41 = v21;
    goto LABEL_7;
  }

  sub_1DC28F3B8(v21, v25, &qword_1ECC7C160, qword_1DC5233B0);
  sub_1DC2E5408(v21, type metadata accessor for NLRouterTurnProbingResult);
  v46 = type metadata accessor for NLRouterNLParseResponse(0);
  if (__swift_getEnumTagSinglePayload(v25, 1, v46) == 1)
  {
    v39 = &qword_1ECC7C160;
    v40 = qword_1DC5233B0;
    v41 = v25;
LABEL_7:
    sub_1DC28EB30(v41, v39, v40);
    v43 = v36;
LABEL_8:
    v44 = 1;
    v45 = v70;
    goto LABEL_9;
  }

  v51 = *v25;

  sub_1DC2E5408(v25, type metadata accessor for NLRouterNLParseResponse);
  v52 = type metadata accessor for HeuristicRoutingRequest(0);
  v53 = v72;
  v54 = v70;
  (*(v72 + 16))(v71, a1 + *(v52 + 20), v70);
  v55 = *(v53 + 88);
  v56 = OUTLINED_FUNCTION_43();
  if (v57(v56) != *MEMORY[0x1E69D02C8])
  {

    v66 = *(v53 + 8);
    v67 = OUTLINED_FUNCTION_43();
    v68(v67);
    v43 = v36;
    v44 = 1;
LABEL_17:
    v45 = v54;
    goto LABEL_9;
  }

  v58 = *(v53 + 8);
  v59 = OUTLINED_FUNCTION_43();
  result = v60(v59);
  v61 = 0;
  v71 = *(v51 + 16);
  v69[1] = v5 + 8;
  v69[2] = v5 + 16;
  while (1)
  {
    if (v71 == v61)
    {

      v43 = v76;
      goto LABEL_8;
    }

    if (v61 >= *(v51 + 16))
    {
      break;
    }

    v62 = v73;
    (*(v5 + 16))(v10, v51 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v61++, v73);
    type metadata accessor for NLRouterBypassUtils();
    sub_1DC305AEC();
    v64 = v63;
    (*(v5 + 8))(v10, v62);

    if (v64)
    {

      v65 = v76;
      v54 = v70;
      (*(v72 + 104))(v76, *MEMORY[0x1E69D02D8], v70);
      v43 = v65;
      v44 = 0;
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DC335988()
{
  result = sub_1DC33347C(&unk_1F57F75B8);
  qword_1EDAC83A0 = result;
  return result;
}

uint64_t sub_1DC3359B0()
{
  sub_1DC514D0C();
  if (!v7[1])
  {
    return 0;
  }

  sub_1DC5145FC();

  v0 = sub_1DC514F8C();

  v1 = sub_1DC2E4CBC(1701667182, 0xE400000000000000, v0);

  if (!v1)
  {
    return 0;
  }

  result = sub_1DC2C20B8(v1);
  v3 = result;
  for (i = 0; ; ++i)
  {
    if (v3 == i)
    {

      return 0;
    }

    if ((v1 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1E1296800](i, v1);
      v5 = result;
    }

    else
    {
      if (i >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }

      v5 = *(v1 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    v7[0] = v5;
    v6 = sub_1DC335AE8(v7);

    if (v6)
    {

      return 1;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1DC335AE8(uint64_t *a1)
{
  v2 = sub_1DC51468C();
  v3 = OUTLINED_FUNCTION_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_1();
  v10 = v9 - v8;
  v11 = *a1;
  result = sub_1DC514F2C();
  v13 = result;
  v27 = *(result + 16);
  if (v27)
  {
    v14 = 0;
    v28 = result + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v29 = (v5 + 8);
    v30 = v2;
    while (v14 < *(v13 + 16))
    {
      (*(v5 + 16))(v10, v28 + *(v5 + 72) * v14, v2);
      if (_MergedGlobals_6 != -1)
      {
        swift_once();
      }

      v15 = qword_1EDAC83A0;
      v16 = sub_1DC51467C();
      v18 = v17;
      if (*(v15 + 16))
      {
        v19 = v16;
        v20 = *(v15 + 40);
        sub_1DC5182FC();
        sub_1DC51769C();
        v21 = sub_1DC51833C();
        v22 = ~(-1 << *(v15 + 32));
        while (1)
        {
          v23 = v21 & v22;
          if (((*(v15 + 56 + (((v21 & v22) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v21 & v22)) & 1) == 0)
          {
            break;
          }

          v24 = (*(v15 + 48) + 16 * v23);
          if (*v24 != v19 || v24[1] != v18)
          {
            v26 = sub_1DC51825C();
            v21 = v23 + 1;
            if ((v26 & 1) == 0)
            {
              continue;
            }
          }

          (*v29)(v10, v30);

          return 1;
        }
      }

      ++v14;
      v2 = v30;
      (*v29)(v10, v30);

      if (v14 == v27)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_18:

    return 0;
  }

  return result;
}

uint64_t sub_1DC335D54()
{
  v0 = sub_1DC51164C();
  v1 = OUTLINED_FUNCTION_0(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_1();
  v8 = v7 - v6;
  result = sub_1DC5111AC();
  v10 = result;
  v11 = 0;
  v12 = *(result + 16);
  while (1)
  {
    v13 = v11;
    if (v12 == v11)
    {
LABEL_5:

      return v12 != v13;
    }

    if (v11 >= *(v10 + 16))
    {
      break;
    }

    (*(v3 + 16))(v8, v10 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v11, v0);
    v14 = sub_1DC335EA0();
    ++v11;
    result = (*(v3 + 8))(v8, v0);
    if (v14)
    {
      goto LABEL_5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DC335EA0()
{
  v0 = sub_1DC510FDC();
  v1 = OUTLINED_FUNCTION_0(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_1();
  v8 = v7 - v6;
  v9 = sub_1DC51179C();
  v10 = OUTLINED_FUNCTION_0(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_1();
  v17 = v16 - v15;
  sub_1DC51154C();
  v18 = sub_1DC51177C();
  v19 = *(v12 + 8);
  v19(v17, v9);
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

  type metadata accessor for NLRouterBypassUtils();
  sub_1DC51154C();
  sub_1DC51178C();
  v19(v17, v9);
  v20 = sub_1DC307E5C();
  (*(v3 + 8))(v8, v0);
  if (!v20)
  {
    goto LABEL_13;
  }

  sub_1DC51478C();

  sub_1DC28F358(v25, v23, &qword_1ECC7D3F0, &qword_1DC5238B0);
  if (v24)
  {
    sub_1DC514A8C();
    if (OUTLINED_FUNCTION_5_12())
    {
      goto LABEL_9;
    }
  }

  else
  {
    sub_1DC28EB30(v23, &qword_1ECC7D3F0, &qword_1DC5238B0);
  }

  sub_1DC28F358(v25, v23, &qword_1ECC7D3F0, &qword_1DC5238B0);
  if (!v24)
  {

    sub_1DC28EB30(v23, &qword_1ECC7D3F0, &qword_1DC5238B0);
LABEL_12:
    sub_1DC28EB30(v25, &qword_1ECC7D3F0, &qword_1DC5238B0);
LABEL_13:
    v21 = 0;
    return v21 & 1;
  }

  sub_1DC514B5C();
  if ((OUTLINED_FUNCTION_5_12() & 1) == 0)
  {

    goto LABEL_12;
  }

LABEL_9:
  v21 = sub_1DC3359B0();

  sub_1DC28EB30(v25, &qword_1ECC7D3F0, &qword_1DC5238B0);
  return v21 & 1;
}

uint64_t sub_1DC336174@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v135 = a2;
  v126 = sub_1DC51122C();
  v3 = OUTLINED_FUNCTION_0(v126);
  v131 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v112 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CA40, &unk_1DC5233A0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v124 = &v112 - v13;
  v136 = sub_1DC5157EC();
  v14 = OUTLINED_FUNCTION_0(v136);
  v130 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v20);
  v128 = &v112 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C158, &unk_1DC5234A0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v25 = &v112 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C160, qword_1DC5233B0);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v29 = &v112 - v28;
  v30 = type metadata accessor for NLRouterNLParseResponse(0);
  v31 = OUTLINED_FUNCTION_35(v30);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_1();
  v129 = (v35 - v34);
  v36 = sub_1DC516F5C();
  v37 = OUTLINED_FUNCTION_0(v36);
  v133 = v38;
  v134 = v37;
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_1();
  v43 = v42 - v41;
  sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
  v44 = sub_1DC2BE518();
  v45 = OUTLINED_FUNCTION_130();
  v132 = v43;
  sub_1DC2A2ED0("HeuristicRules.SettingRule", 26, 2, v44, v45 & 1, v43);

  v46 = *(type metadata accessor for NLRouterServiceRequest(0) + 32);
  v127 = a1;
  sub_1DC28F358(a1 + v46, v25, &qword_1ECC7C158, &unk_1DC5234A0);
  v47 = type metadata accessor for NLRouterTurnProbingResult(0);
  if (__swift_getEnumTagSinglePayload(v25, 1, v47) != 1)
  {
    sub_1DC28F358(v25, v29, &qword_1ECC7C160, qword_1DC5233B0);
    sub_1DC2E5408(v25, type metadata accessor for NLRouterTurnProbingResult);
    if (__swift_getEnumTagSinglePayload(v29, 1, v30) == 1)
    {
      goto LABEL_4;
    }

    sub_1DC2E53A4(v29, v129);
    v51 = type metadata accessor for HeuristicRoutingRequest(0);
    v52 = *(v130 + 16);
    v118 = *(v51 + 20);
    v53 = v136;
    v117 = v130 + 16;
    v116 = v52;
    v52(v128, v127 + v118, v136);
    sub_1DC298C74(0, &qword_1ECC7B9B0, 0x1E695E000);
    v54 = sub_1DC343964();
    v56 = v55;
    if (v54 == sub_1DC312FB4(0) && v56 == v57)
    {
    }

    else
    {
      v59 = sub_1DC51825C();

      if ((v59 & 1) == 0)
      {
        sub_1DC343964();
        v60 = sub_1DC312F68();
        if (v60 == 4)
        {
          v61 = v124;
          __swift_storeEnumTagSinglePayload(v124, 1, 1, v53);
        }

        else
        {
          v61 = v124;
          sub_1DC312E7C(v60, v124);
          if (__swift_getEnumTagSinglePayload(v61, 1, v53) != 1)
          {
            result = (*(v130 + 32))(v123, v61, v53);
            v70 = 0;
            v71 = *v129;
            v119 = *(*v129 + 16);
            v124 = v131 + 16;
            v72 = (v131 + 8);
            v114 = (v131 + 32);
            v115 = MEMORY[0x1E69E7CC0];
            v73 = v126;
            while (v119 != v70)
            {
              if (v70 >= *(v71 + 16))
              {
                __break(1u);
LABEL_41:
                __break(1u);
                return result;
              }

              v74 = (*(v131 + 80) + 32) & ~*(v131 + 80);
              v75 = *(v131 + 72);
              (*(v131 + 16))(v10, v71 + v74 + v75 * v70, v73);
              v76 = v73;
              sub_1DC5111CC();
              if (v77 > sub_1DC343A00())
              {
                v113 = *v114;
                v113(v122, v10, v73);
                v78 = v115;
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v80 = v78;
                v137 = v78;
                if (isUniquelyReferenced_nonNull_native)
                {
                  v73 = v76;
                }

                else
                {
                  sub_1DC2EBBE8(0, *(v78 + 16) + 1, 1);
                  v73 = v126;
                  v80 = v137;
                }

                v82 = *(v80 + 16);
                v81 = *(v80 + 24);
                v83 = v82 + 1;
                if (v82 >= v81 >> 1)
                {
                  v115 = v82 + 1;
                  sub_1DC2EBBE8(v81 > 1, v82 + 1, 1);
                  v83 = v115;
                  v73 = v126;
                  v80 = v137;
                }

                ++v70;
                *(v80 + 16) = v83;
                v115 = v80;
                result = (v113)(v80 + v74 + v82 * v75, v122, v73);
              }

              else
              {
                result = (*v72)(v10, v73);
                ++v70;
              }
            }

            v84 = 0;
            v85 = *(v115 + 16);
            v53 = v136;
            v86 = v130;
            v87 = v125;
            do
            {
              if (v85 == v84)
              {
                (*(v86 + 8))(v123, v53);

                goto LABEL_15;
              }

              if (v84 >= *(v115 + 16))
              {
                goto LABEL_41;
              }

              v88 = v131;
              v89 = v126;
              (*(v131 + 16))(v87, v115 + ((*(v88 + 80) + 32) & ~*(v88 + 80)) + *(v88 + 72) * v84++, v126);
              v90 = sub_1DC335D54();
              result = (*(v88 + 8))(v87, v89);
            }

            while ((v90 & 1) == 0);

            v91 = sub_1DC517B9C();
            v92 = sub_1DC2BE518();
            v93 = v120;
            OUTLINED_FUNCTION_4_10();
            v94();
            v95 = v53;
            if (os_log_type_enabled(v92, v91))
            {
              v96 = swift_slowAlloc();
              v131 = swift_slowAlloc();
              v137 = v131;
              *v96 = 136315394;
              v97 = v128;
              v98 = swift_beginAccess();
              LODWORD(v126) = v91;
              v99 = v93;
              v100 = j___s16SiriMessageTypes017NLRoutingDecisionB0C07RoutingE0O13CDMFoundationE16debugDescriptionSSvg(v98);
              v102 = sub_1DC291244(v100, v101, &v137);

              *(v96 + 4) = v102;
              *(v96 + 12) = 2080;
              v104 = j___s16SiriMessageTypes017NLRoutingDecisionB0C07RoutingE0O13CDMFoundationE16debugDescriptionSSvg(v103);
              v106 = v105;
              v107 = *(v130 + 8);
              v107(v99, v95);
              v108 = sub_1DC291244(v104, v106, &v137);
              v86 = v130;

              *(v96 + 14) = v108;
              _os_log_impl(&dword_1DC287000, v92, v126, "[SettingRule] Updating routing from %s to %s", v96, 0x16u);
              v109 = v131;
              swift_arrayDestroy();
              MEMORY[0x1E1298840](v109, -1, -1);
              MEMORY[0x1E1298840](v96, -1, -1);
            }

            else
            {

              v107 = *(v86 + 8);
              v107(v93, v95);
              v97 = v128;
            }

            swift_beginAccess();
            v110 = v121;
            v111 = v123;
            sub_1DC32DE40();
            v107(v111, v95);
            swift_beginAccess();
            (*(v86 + 40))(v97, v110, v95);
            v53 = v95;
            goto LABEL_15;
          }
        }

        sub_1DC28EB30(v61, &qword_1ECC7CA40, &unk_1DC5233A0);
      }
    }

LABEL_15:
    v62 = v128;
    swift_beginAccess();
    v63 = sub_1DC5157DC();
    sub_1DC2E5408(v129, type metadata accessor for NLRouterNLParseResponse);
    if (v63)
    {
      v64 = 1;
      v65 = v135;
    }

    else
    {
      v65 = v135;
      OUTLINED_FUNCTION_4_10();
      v66();
      v64 = 0;
    }

    v49 = v133;
    v48 = v134;
    v50 = v132;
    v67 = v130;
    __swift_storeEnumTagSinglePayload(v65, v64, 1, v53);
    (*(v67 + 8))(v62, v53);
    goto LABEL_19;
  }

  sub_1DC28EB30(v25, &qword_1ECC7C158, &unk_1DC5234A0);
  __swift_storeEnumTagSinglePayload(v29, 1, 1, v30);
LABEL_4:
  sub_1DC28EB30(v29, &qword_1ECC7C160, qword_1DC5233B0);
  __swift_storeEnumTagSinglePayload(v135, 1, 1, v136);
  v49 = v133;
  v48 = v134;
  v50 = v132;
LABEL_19:
  v68 = sub_1DC2BE518();
  sub_1DC2B8848();

  return (*(v49 + 8))(v50, v48);
}

void *sub_1DC336DEC@<X0>(void *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC13CDMFoundation18ServiceStoreHasher_storedHasher;
  swift_beginAccess();
  return memcpy(a1, (v1 + v3), 0x48uLL);
}

void *sub_1DC336E48(const void *a1)
{
  v3 = OBJC_IVAR____TtC13CDMFoundation18ServiceStoreHasher_storedHasher;
  swift_beginAccess();
  return memcpy((v1 + v3), a1, 0x48uLL);
}

void (*sub_1DC336F74(void *a1))(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x68))();
  return sub_1DC337000;
}

void sub_1DC337000(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_1DC33704C(const void *a1)
{
  v3 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x68))(v6);
  memcpy(v4, a1, 0x48uLL);
  return v3(v6, 0);
}

id sub_1DC3370E0(const void *a1)
{
  v3 = objc_allocWithZone(v1);
  memcpy(&v3[OBJC_IVAR____TtC13CDMFoundation18ServiceStoreHasher_storedHasher], a1, 0x48uLL);
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id sub_1DC337210(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = &v3[OBJC_IVAR____TtC13CDMFoundation24GraphServiceKeyingFields_serviceTypeName];
  *v5 = a1;
  *(v5 + 1) = a2;
  v6 = OBJC_IVAR____TtC13CDMFoundation24GraphServiceKeyingFields_locale;
  v7 = sub_1DC510C8C();
  v8 = *(v7 - 8);
  (*(v8 + 16))(&v3[v6], a3, v7);
  v11.receiver = v3;
  v11.super_class = type metadata accessor for GraphServiceKeyingFields();
  v9 = objc_msgSendSuper2(&v11, sel_init);
  (*(v8 + 8))(a3, v7);
  return v9;
}

uint64_t type metadata accessor for GraphServiceKeyingFields()
{
  result = qword_1ECC86C50;
  if (!qword_1ECC86C50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_1DC337398(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_1DC337458()
{
  result = sub_1DC510C8C();
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

uint64_t sub_1DC3374F4()
{
  v0 = sub_1DC5172FC();
  __swift_allocate_value_buffer(v0, qword_1ECC8F738);
  v1 = __swift_project_value_buffer(v0, qword_1ECC8F738);
  v2 = swift_allocObject();
  v2[2] = 0xD000000000000011;
  v2[3] = 0x80000001DC53FC90;
  v2[4] = 0xD000000000000012;
  v2[5] = 0x80000001DC524630;
  *v1 = v2;
  v3 = *MEMORY[0x1E69DB098];
  OUTLINED_FUNCTION_7_1(v0);
  v5 = *(v4 + 104);

  return v5(v1);
}

uint64_t sub_1DC3375CC(uint64_t a1)
{
  v2 = sub_1DC51721C();
  OUTLINED_FUNCTION_7_1(v2);
  (*(v3 + 8))(a1);
  return 1;
}

uint64_t sub_1DC337624@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECC86C60 != -1)
  {
    OUTLINED_FUNCTION_0_12();
  }

  v2 = sub_1DC5172FC();
  __swift_project_value_buffer(v2, qword_1ECC8F738);
  OUTLINED_FUNCTION_7_1(v2);
  v4 = *(v3 + 16);

  return v4(a1);
}

uint64_t sub_1DC3376B8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DC3375CC(a1);
  *a2 = 1;
  return result;
}

id sub_1DC3376F8()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC13CDMFoundation27CDMCcqrAerCbROverridesProxy____lazy_storage___captureGroupExpression;
  v3 = *(v0 + OBJC_IVAR____TtC13CDMFoundation27CDMCcqrAerCbROverridesProxy____lazy_storage___captureGroupExpression);
  v4 = v3;
  if (v3 == 1)
  {
    v5 = *(v1 + OBJC_IVAR____TtC13CDMFoundation27CDMCcqrAerCbROverridesProxy_templatePattern);
    v6 = *(v1 + OBJC_IVAR____TtC13CDMFoundation27CDMCcqrAerCbROverridesProxy_templatePattern + 8);
    objc_allocWithZone(MEMORY[0x1E696AE70]);

    v4 = sub_1DC333108(v5, v6, 0);
    v7 = *(v1 + v2);
    *(v1 + v2) = v4;
    v8 = v4;
    sub_1DC33A01C(v7);
  }

  sub_1DC33A658(v3);
  return v4;
}

id CDMCcqrAerCbROverridesProxy.init(useTrie:useMemory:templatePattern:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = (v4 + OBJC_IVAR____TtC13CDMFoundation27CDMCcqrAerCbROverridesProxy_defaultTemplatePattern);
  *v5 = 0x292B535C28245CLL;
  v5[1] = 0xE700000000000000;
  *(v4 + OBJC_IVAR____TtC13CDMFoundation27CDMCcqrAerCbROverridesProxy____lazy_storage___captureGroupExpression) = 1;
  if (a4)
  {
    v6 = a3;
  }

  else
  {
    v6 = 0x292B535C28245CLL;
  }

  if (a4)
  {
    v7 = a4;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  v8 = (v4 + OBJC_IVAR____TtC13CDMFoundation27CDMCcqrAerCbROverridesProxy_templatePattern);
  *v8 = v6;
  v8[1] = v7;
  return SiriNLUOverrideProxy.init(useTrie:useMemory:)();
}

uint64_t sub_1DC337998(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CBE8, &qword_1DC524670);
  OUTLINED_FUNCTION_10(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v12);
  v175 = &v148 - v13;
  v14 = sub_1DC5163EC();
  v15 = OUTLINED_FUNCTION_0(v14);
  v164 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_1();
  v21 = (v20 - v19);
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CBF0, &qword_1DC524678);
  OUTLINED_FUNCTION_35(v174);
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v24);
  v163 = (&v148 - v25);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CBF8, &qword_1DC524680);
  v27 = OUTLINED_FUNCTION_10(v26);
  v29 = *(v28 + 64);
  v30 = MEMORY[0x1EEE9AC00](v27);
  v173 = &v148 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v33 = &v148 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CC00, &qword_1DC524688);
  OUTLINED_FUNCTION_10(v34);
  v36 = *(v35 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v148 - v38;
  v40 = sub_1DC5163CC();
  v41 = OUTLINED_FUNCTION_0(v40);
  v43 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_1();
  v47 = v46 - v45;
  if (!a4)
  {
    goto LABEL_4;
  }

  v159 = v47;
  v160 = v44;
  sub_1DC33897C(a3, v39);
  if (__swift_getEnumTagSinglePayload(v39, 1, v40) == 1)
  {
    sub_1DC28EB30(v39, &qword_1ECC7CC00, &qword_1DC524688);
LABEL_4:
    sub_1DC517B9C();
    sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
    v48 = sub_1DC456868();
    OUTLINED_FUNCTION_40_1();
    sub_1DC516F0C();

    return OUTLINED_FUNCTION_43();
  }

  v170 = v33;
  v155 = a4;
  v171 = v14;
  v172 = v21;
  v49 = v160;
  v50 = *(v160 + 32);
  v178 = v4;
  v50(v159, v39, v40);
  v187 = a1;
  v188 = a2;

  sub_1DC517B9C();
  v51 = sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
  v52 = sub_1DC456868();
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7C290, &qword_1DC524690);
  v53 = swift_allocObject();
  v150 = xmmword_1DC522F20;
  *(v53 + 16) = xmmword_1DC522F20;
  v54 = v40;
  v55 = v187;
  v56 = v188;
  *(v53 + 56) = MEMORY[0x1E69E6158];
  v149 = sub_1DC2C0FA4();
  *(v53 + 64) = v149;
  *(v53 + 32) = v55;
  *(v53 + 40) = v56;

  sub_1DC516F0C();

  type metadata accessor for _NSRange(0);
  v186 = sub_1DC51764C();
  v57 = sub_1DC3376F8();
  if (!v57)
  {
    sub_1DC517BAC();
    v138 = sub_1DC456868();
    OUTLINED_FUNCTION_40_1();
    sub_1DC516F0C();

    (*(v49 + 8))(v159, v54);

    goto LABEL_58;
  }

  v169 = v51;
  v154 = v54;
  v58 = v57;

  v59 = sub_1DC5176FC();

  v185 = 15;
  aBlock = v187;
  v180 = v188;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CAE8, &unk_1DC5240C0);
  sub_1DC339204();
  sub_1DC2A32B0();
  v60 = sub_1DC517D5C();
  v62 = v61;
  v63 = swift_allocObject();
  *(v63 + 16) = &v187;
  *(v63 + 24) = &v186;
  v64 = swift_allocObject();
  *(v64 + 2) = sub_1DC339268;
  *(v64 + 3) = v63;
  v153 = v63;
  v183 = sub_1DC339444;
  v184 = v64;
  aBlock = MEMORY[0x1E69E9820];
  v180 = 1107296256;
  v181 = sub_1DC338A00;
  v182 = &block_descriptor_2;
  v65 = _Block_copy(&aBlock);

  v152 = v58;
  [v58 enumerateMatchesInString:v59 options:0 range:v60 usingBlock:{v62, v65}];

  _Block_release(v65);
  LOBYTE(v59) = swift_isEscapingClosureAtFileLocation();

  v66 = v172;
  if ((v59 & 1) == 0)
  {
    v161 = sub_1DC51764C();
    v67 = sub_1DC5163AC();
    v68 = *(v67 + 16);
    v162 = v164 + 16;
    v167 = (v164 + 32);
    v166 = (v164 + 8);
    v69 = v171;
    OUTLINED_FUNCTION_9_8();
    *(v73 - 256) = v72;
    v165 = v70;
LABEL_8:
    if (v71 == v70)
    {
      v74 = 1;
      v176 = v70;
LABEL_12:
      __swift_storeEnumTagSinglePayload(v58, v74, 1, v64);
      v80 = v170;
      sub_1DC33946C(v58, v170, &qword_1ECC7CBF8, &qword_1DC524680);
      if (__swift_getEnumTagSinglePayload(v80, 1, v64) != 1)
      {
        v168 = *v80;
        (*v167)(v66, &v80[v64[12]], v69);
        sub_1DC5163DC();
        v81 = sub_1DC51640C();
        if (__swift_getEnumTagSinglePayload(v65, 1, v81) == 1)
        {
          sub_1DC28EB30(v65, &qword_1ECC7CBE8, &qword_1DC524670);
          v82 = 0;
        }

        else
        {
          v82 = sub_1DC5163FC();
          (*(*(v81 - 8) + 8))(v65, v81);
        }

        v83 = v186 + 64;
        v84 = 1 << *(v186 + 32);
        if (v84 < 64)
        {
          v85 = ~(-1 << v84);
        }

        else
        {
          v85 = -1;
        }

        v86 = v85 & *(v186 + 64);
        v87 = (v84 + 63) >> 6;
        v177 = v186;

        v65 = 0;
        while (1)
        {
          do
          {
            if (!v86)
            {
              while (1)
              {
                v89 = v65 + 1;
                if (__OFADD__(v65, 1))
                {
                  break;
                }

                if (v89 >= v87)
                {
                  v69 = v171;
                  v66 = v172;
                  (*v166)(v172, v171);

                  OUTLINED_FUNCTION_9_8();
                  v67 = *(v120 - 256);
                  v70 = v165;
                  v71 = v176;
                  goto LABEL_8;
                }

                v88 = *(v83 + 8 * v89);
                ++v65;
                if (v88)
                {
                  v65 = v89;
                  goto LABEL_26;
                }
              }

              __break(1u);
LABEL_54:

              goto LABEL_55;
            }

            v88 = v86;
LABEL_26:
            v86 = (v88 - 1) & v88;
          }

          while (!v82);
          v178 = (v88 - 1) & v88;
          v90 = (*(v177 + 48) + ((v65 << 10) | (16 * __clz(__rbit64(v88)))));
          v58 = *v90;
          v91 = v90[1];

          v66 = v82;
          v92 = v82;
          v93 = sub_1DC5176FC();
          v64 = [v92 rangeWithName_];
          v95 = v94;

          if (v64 == sub_1DC51068C())
          {

            v82 = v66;
            goto LABEL_29;
          }

          v158 = v58;
          if (v161[2])
          {

            sub_1DC2AEB04(v158, v91);
            v97 = v96;

            if (v97)
            {

              sub_1DC517BAC();
              v145 = sub_1DC456868();
              v146 = swift_allocObject();
              *(v146 + 16) = v150;
              v147 = v149;
              *(v146 + 56) = MEMORY[0x1E69E6158];
              *(v146 + 64) = v147;
              *(v146 + 32) = v158;
              *(v146 + 40) = v91;
              OUTLINED_FUNCTION_40_1();
              sub_1DC516F0C();

              (*v166)(v172, v171);
              goto LABEL_57;
            }
          }

          v98 = v168;
          if ((v168 & 0x8000000000000000) != 0)
          {
            goto LABEL_64;
          }

          v99 = v155;
          if (v168 >= *(v155 + 16))
          {
            goto LABEL_65;
          }

          v100 = *(sub_1DC51231C() - 8);
          v101 = v99 + ((*(v100 + 80) + 32) & ~*(v100 + 80)) + *(v100 + 72) * v98;
          sub_1DC51230C();
          v102 = sub_1DC5176FC();

          v103 = [v102 substringWithRange_];

          v157 = sub_1DC51772C();
          v105 = v104;

          v106 = v161;
          swift_isUniquelyReferenced_nonNull_native();
          aBlock = v106;
          v107 = sub_1DC2AEB04(v158, v91);
          if (__OFADD__(v106[2], (v108 & 1) == 0))
          {
            goto LABEL_66;
          }

          v109 = v107;
          v156 = v105;
          v58 = v108;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D520, &qword_1DC522A60);
          if (sub_1DC517FFC())
          {
            v64 = v158;
            v110 = sub_1DC2AEB04(v158, v91);
            if ((v58 & 1) != (v111 & 1))
            {
              goto LABEL_69;
            }

            v109 = v110;
            v82 = v66;
            if (v58)
            {
LABEL_41:

              v161 = aBlock;
              v118 = (aBlock[7] + 16 * v109);
              v119 = v118[1];
              OUTLINED_FUNCTION_6_11(v118);

              goto LABEL_29;
            }
          }

          else
          {
            v82 = v66;
            v64 = v158;
            if (v58)
            {
              goto LABEL_41;
            }
          }

          v112 = aBlock;
          aBlock[(v109 >> 6) + 8] |= 1 << v109;
          v113 = (v112[6] + 16 * v109);
          *v113 = v64;
          v113[1] = v91;
          OUTLINED_FUNCTION_6_11((v112[7] + 16 * v109));
          v115 = v114[2];
          v116 = __OFADD__(v115, 1);
          v117 = v115 + 1;
          if (v116)
          {
            goto LABEL_68;
          }

          v161 = v114;
          v114[2] = v117;
LABEL_29:
          v86 = v178;
        }
      }

      if (v161[2] == *(v186 + 16))
      {

        aBlock = sub_1DC339534(v121);
        sub_1DC3394C8(&aBlock);

        v122 = 0;
        v123 = aBlock;
        v124 = aBlock[2];
        v66 = aBlock + 7;
        while (v124 != v122)
        {
          if (v122 >= v123[2])
          {
            goto LABEL_63;
          }

          v125 = *(v66 - 3);
          v126 = *(v66 - 2);
          v128 = *(v66 - 1);
          v127 = *v66;

          sub_1DC517B5C();
          v130 = v129;
          v131 = v161;

          if ((v130 & 1) != 0 || !v131[2])
          {
            goto LABEL_54;
          }

          v132 = sub_1DC2AEB04(v125, v126);
          v134 = v133;

          if ((v134 & 1) == 0)
          {
LABEL_55:

            sub_1DC517BAC();
            v139 = sub_1DC456868();
            OUTLINED_FUNCTION_40_1();
            goto LABEL_56;
          }

          v135 = v131[7] + 16 * v132;
          v137 = *v135;
          v136 = *(v135 + 8);
          aBlock = v137;
          v180 = v136;
          sub_1DC3395F0();
          sub_1DC5177CC();
          v66 += 4;
          ++v122;
        }

        v143 = OUTLINED_FUNCTION_5_13();
        v144(v143);

        return OUTLINED_FUNCTION_43();
      }

      sub_1DC517BAC();
      v139 = sub_1DC456868();
      OUTLINED_FUNCTION_40_1();
LABEL_56:
      sub_1DC516F0C();

LABEL_57:
      v140 = OUTLINED_FUNCTION_5_13();
      v141(v140);

LABEL_58:

      return OUTLINED_FUNCTION_43();
    }

    if (v71 < *(v67 + 16))
    {
      v75 = v71 + 1;
      v76 = v164;
      v77 = v67 + ((*(v76 + 80) + 32) & ~*(v76 + 80)) + *(v76 + 72) * v71;
      v78 = v64[12];
      v79 = v163;
      *v163 = v71;
      (*(v76 + 16))(v79 + v78, v77, v69);
      sub_1DC33946C(v79, v58, &qword_1ECC7CBF0, &qword_1DC524678);
      v74 = 0;
      v176 = v75;
      goto LABEL_12;
    }

    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
  }

  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  sub_1DC51829C();
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1DC33897C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CC00, &qword_1DC524688);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1DC338A00(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = a2;
  v8(a2, a3, a4);
}

uint64_t sub_1DC338A74()
{
  v1 = *(v0 + OBJC_IVAR___SiriNLUOverrideProxy_queue);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CC10, &qword_1DC524698);
  sub_1DC517BFC();
  return v3;
}

uint64_t sub_1DC338AFC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v43 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CC00, &qword_1DC524688);
  OUTLINED_FUNCTION_10(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v10);
  v12 = v42 - v11;
  v42[0] = sub_1DC511BDC();
  v13 = OUTLINED_FUNCTION_0(v42[0]);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_1();
  v20 = v19 - v18;
  v21 = sub_1DC511BCC();
  v22 = MEMORY[0x1E69E7D40];
  v23 = (*((*MEMORY[0x1E69E7D40] & *a1) + 0x90))(v21);
  if (!v23)
  {
    sub_1DC517B9C();
    sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
    v37 = sub_1DC456868();
    OUTLINED_FUNCTION_40_1();
LABEL_7:
    sub_1DC516F0C();

    v36 = 0;
    v32 = v42[0];
    goto LABEL_8;
  }

  sub_1DC338F3C(v23, v12);

  v25 = (*((*v22 & *a1) + 0xA8))(v24);
  v26 = (*((*v22 & *a1) + 0x150))(a2, a3, v12, v25);
  v28 = v27;

  sub_1DC28EB30(v12, &qword_1ECC7CC00, &qword_1DC524688);
  if (!v28)
  {
    sub_1DC517BAC();
    sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
    v37 = sub_1DC456868();
    OUTLINED_FUNCTION_40_1();
    goto LABEL_7;
  }

  sub_1DC517B9C();
  sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
  v29 = sub_1DC456868();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7C290, &qword_1DC524690);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1DC522F20;
  *(v30 + 56) = MEMORY[0x1E69E6158];
  *(v30 + 64) = sub_1DC2C0FA4();
  *(v30 + 32) = v26;
  *(v30 + 40) = v28;

  OUTLINED_FUNCTION_40_1();
  sub_1DC516F0C();

  sub_1DC511BBC();
  sub_1DC511BAC();
  sub_1DC33A1CC();
  v32 = v42[0];
  v31 = v42[1];
  v33 = sub_1DC51678C();
  if (v31)
  {
    sub_1DC517BAC();
    v35 = sub_1DC456868();
    OUTLINED_FUNCTION_40_1();
    sub_1DC516F0C();

    v36 = 0;
  }

  else
  {
    v39 = v33;
    v40 = v34;
    v41 = objc_allocWithZone(MEMORY[0x1E69D1368]);
    v36 = sub_1DC339190(v39, v40);
  }

LABEL_8:
  result = (*(v15 + 8))(v20, v32);
  *v43 = v36;
  return result;
}

uint64_t sub_1DC338F3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = sub_1DC5163CC();
  v6 = v5;
  if (v4)
  {
    (*(*(v5 - 8) + 16))(a2, a1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), v5);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a2, v7, 1, v6);
}

void sub_1DC3390A0()
{
  v1 = *(v0 + OBJC_IVAR____TtC13CDMFoundation27CDMCcqrAerCbROverridesProxy_defaultTemplatePattern + 8);

  v2 = *(v0 + OBJC_IVAR____TtC13CDMFoundation27CDMCcqrAerCbROverridesProxy_templatePattern + 8);

  v3 = *(v0 + OBJC_IVAR____TtC13CDMFoundation27CDMCcqrAerCbROverridesProxy____lazy_storage___captureGroupExpression);

  sub_1DC33A01C(v3);
}

id CDMCcqrAerCbROverridesProxy.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CDMCcqrAerCbROverridesProxy();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1DC339190(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v3 = sub_1DC5109EC();
    sub_1DC301FE0(a1, a2);
  }

  v6 = [v2 initWithData_];

  return v6;
}

unint64_t sub_1DC339204()
{
  result = qword_1ECC7CAF0;
  if (!qword_1ECC7CAF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC7CAE8, &unk_1DC5240C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7CAF0);
  }

  return result;
}

void sub_1DC339268(void *a1)
{
  if (a1)
  {
    v2 = *(v1 + 16);
    v3 = *(v1 + 24);
    v19 = a1;
    if ([v19 numberOfRanges] == 2)
    {
      v4 = [v19 rangeAtIndex_];
      v6 = v5;
      v7 = [v19 rangeAtIndex_];
      v9 = v8;
      v10 = *v2;
      v11 = v2[1];

      v12 = sub_1DC5176FC();

      v13 = [v12 substringWithRange_];

      v14 = sub_1DC51772C();
      v16 = v15;

      if (sub_1DC51783C() > 0)
      {
        v17 = *v3;
        swift_isUniquelyReferenced_nonNull_native();
        v20 = *v3;
        sub_1DC33A224(v4, v6, v14, v16);
        *v3 = v20;

        return;
      }

      sub_1DC517BAC();
      sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
      v18 = sub_1DC456868();
      OUTLINED_FUNCTION_40_1();
      sub_1DC516F0C();
    }
  }
}

uint64_t sub_1DC339444()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1DC33946C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_35(v5);
  v7 = *(v6 + 32);
  v8 = OUTLINED_FUNCTION_43();
  v9(v8);
  return a2;
}

uint64_t sub_1DC3394C8(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1DC33A514(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_1DC3396C0(v5);
  *a1 = v2;
  return result;
}

void *sub_1DC339534(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = sub_1DC339644(*(a1 + 16), 0);
  v4 = sub_1DC33A3B0(&v6, (v3 + 4), v1, a1);

  sub_1DC30D8A4();
  if (v4 != v1)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

unint64_t sub_1DC3395F0()
{
  result = qword_1ECC7CC08;
  if (!qword_1ECC7CC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7CC08);
  }

  return result;
}

void *sub_1DC339644(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CC30, &qword_1DC524738);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 32);
  return v4;
}

uint64_t sub_1DC3396C0(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1DC51822C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CC38, &unk_1DC524740);
        v6 = sub_1DC517A4C();
        *(v6 + 16) = v5;
      }

      v7[0] = v6 + 32;
      v7[1] = v5;
      sub_1DC33983C(v7, v8, a1, v4);
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
    return sub_1DC3397C4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1DC3397C4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 32 * a3 - 32;
    v6 = result - a3;
    while (2)
    {
      v7 = *(v4 + 32 * a3 + 16);
      v8 = v6;
      v9 = v5;
      do
      {
        if (*(v9 + 16) >= v7)
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        v10 = *(v9 + 32);
        v11 = *(v9 + 40);
        v12 = *(v9 + 56);
        v13 = *(v9 + 16);
        *(v9 + 32) = *v9;
        *(v9 + 48) = v13;
        *v9 = v10;
        *(v9 + 8) = v11;
        *(v9 + 16) = v7;
        *(v9 + 24) = v12;
        v9 -= 32;
      }

      while (!__CFADD__(v8++, 1));
      ++a3;
      v5 += 32;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_1DC33983C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v86 = result;
  v90 = MEMORY[0x1E69E7CC0];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    v85 = a4;
    while (1)
    {
      v9 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v10 = *(*a3 + 32 * v9 + 16);
        v11 = *a3 + 32 * v7;
        v12 = 32 * v7;
        v13 = *(v11 + 16);
        v14 = (v11 + 80);
        v15 = v7 + 2;
        v16 = v10;
        while (1)
        {
          v17 = v15;
          if (++v9 >= v6)
          {
            break;
          }

          v18 = *v14;
          v14 += 4;
          v19 = (v13 < v10) ^ (v16 >= v18);
          ++v15;
          v16 = v18;
          if ((v19 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        v9 = v6;
LABEL_9:
        if (v13 < v10)
        {
          if (v9 < v7)
          {
            goto LABEL_108;
          }

          if (v7 < v9)
          {
            if (v6 >= v17)
            {
              v6 = v17;
            }

            v20 = 32 * v6 - 16;
            v21 = v9;
            v22 = v7;
            do
            {
              if (v22 != --v21)
              {
                v23 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v24 = (v23 + v12);
                v25 = (v23 + v20);
                v26 = *v24;
                v27 = v24[1];
                v28 = *(v24 + 1);
                v29 = *v25;
                *v24 = *(v25 - 1);
                *(v24 + 1) = v29;
                *(v25 - 2) = v26;
                *(v25 - 1) = v27;
                *v25 = v28;
              }

              ++v22;
              v20 -= 32;
              v12 += 32;
            }

            while (v22 < v21);
            v6 = a3[1];
          }
        }
      }

      if (v9 < v6)
      {
        if (__OFSUB__(v9, v7))
        {
          goto LABEL_107;
        }

        if (v9 - v7 < a4)
        {
          if (__OFADD__(v7, a4))
          {
            goto LABEL_109;
          }

          if (v7 + a4 < v6)
          {
            v6 = v7 + a4;
          }

          if (v6 < v7)
          {
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
            return result;
          }

          if (v9 != v6)
          {
            v30 = *a3;
            v31 = *a3 + 32 * v9 - 32;
            v32 = v7 - v9;
            do
            {
              v33 = *(v30 + 32 * v9 + 16);
              v34 = v32;
              v35 = v31;
              do
              {
                if (*(v35 + 16) >= v33)
                {
                  break;
                }

                if (!v30)
                {
                  goto LABEL_111;
                }

                v36 = *(v35 + 32);
                v37 = *(v35 + 40);
                v38 = *(v35 + 56);
                v39 = *(v35 + 16);
                *(v35 + 32) = *v35;
                *(v35 + 48) = v39;
                *v35 = v36;
                *(v35 + 8) = v37;
                *(v35 + 16) = v33;
                *(v35 + 24) = v38;
                v35 -= 32;
              }

              while (!__CFADD__(v34++, 1));
              ++v9;
              v31 += 32;
              --v32;
            }

            while (v9 != v6);
            v9 = v6;
          }
        }
      }

      if (v9 < v7)
      {
        goto LABEL_106;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      v87 = v9;
      if ((result & 1) == 0)
      {
        result = sub_1DC30B0C0(0, *(v8 + 16) + 1, 1, v8);
        v8 = result;
      }

      v42 = *(v8 + 16);
      v41 = *(v8 + 24);
      v43 = v42 + 1;
      if (v42 >= v41 >> 1)
      {
        result = sub_1DC30B0C0((v41 > 1), v42 + 1, 1, v8);
        v8 = result;
      }

      *(v8 + 16) = v43;
      v44 = v8 + 32;
      v45 = (v8 + 32 + 16 * v42);
      *v45 = v7;
      v45[1] = v9;
      v88 = *v86;
      if (!*v86)
      {
        goto LABEL_114;
      }

      if (v42)
      {
        while (1)
        {
          v46 = v43 - 1;
          v47 = (v44 + 16 * (v43 - 1));
          v48 = (v8 + 16 * v43);
          if (v43 >= 4)
          {
            break;
          }

          if (v43 == 3)
          {
            v49 = *(v8 + 32);
            v50 = *(v8 + 40);
            v59 = __OFSUB__(v50, v49);
            v51 = v50 - v49;
            v52 = v59;
LABEL_56:
            if (v52)
            {
              goto LABEL_96;
            }

            v64 = *v48;
            v63 = v48[1];
            v65 = __OFSUB__(v63, v64);
            v66 = v63 - v64;
            v67 = v65;
            if (v65)
            {
              goto LABEL_99;
            }

            v68 = v47[1];
            v69 = v68 - *v47;
            if (__OFSUB__(v68, *v47))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v66, v69))
            {
              goto LABEL_104;
            }

            if (v66 + v69 >= v51)
            {
              if (v51 < v69)
              {
                v46 = v43 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v43 < 2)
          {
            goto LABEL_98;
          }

          v71 = *v48;
          v70 = v48[1];
          v59 = __OFSUB__(v70, v71);
          v66 = v70 - v71;
          v67 = v59;
LABEL_71:
          if (v67)
          {
            goto LABEL_101;
          }

          v73 = *v47;
          v72 = v47[1];
          v59 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v59)
          {
            goto LABEL_103;
          }

          if (v74 < v66)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v46 - 1 >= v43)
          {
            __break(1u);
LABEL_91:
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
LABEL_96:
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
            __break(1u);
LABEL_99:
            __break(1u);
LABEL_100:
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
            goto LABEL_110;
          }

          if (!*a3)
          {
            goto LABEL_112;
          }

          v78 = (v44 + 16 * (v46 - 1));
          v79 = *v78;
          v80 = (v44 + 16 * v46);
          v81 = v80[1];
          result = sub_1DC339E58((*a3 + 32 * *v78), (*a3 + 32 * *v80), (*a3 + 32 * v81), v88);
          if (v5)
          {
          }

          if (v81 < v79)
          {
            goto LABEL_91;
          }

          v82 = v8;
          v83 = *(v8 + 16);
          if (v46 > v83)
          {
            goto LABEL_92;
          }

          *v78 = v79;
          v78[1] = v81;
          if (v46 >= v83)
          {
            goto LABEL_93;
          }

          v43 = v83 - 1;
          result = memmove((v44 + 16 * v46), v80 + 2, 16 * (v83 - 1 - v46));
          *(v82 + 16) = v83 - 1;
          v84 = v83 > 2;
          v8 = v82;
          v5 = 0;
          if (!v84)
          {
            goto LABEL_85;
          }
        }

        v53 = v44 + 16 * v43;
        v54 = *(v53 - 64);
        v55 = *(v53 - 56);
        v59 = __OFSUB__(v55, v54);
        v56 = v55 - v54;
        if (v59)
        {
          goto LABEL_94;
        }

        v58 = *(v53 - 48);
        v57 = *(v53 - 40);
        v59 = __OFSUB__(v57, v58);
        v51 = v57 - v58;
        v52 = v59;
        if (v59)
        {
          goto LABEL_95;
        }

        v60 = v48[1];
        v61 = v60 - *v48;
        if (__OFSUB__(v60, *v48))
        {
          goto LABEL_97;
        }

        v59 = __OFADD__(v51, v61);
        v62 = v51 + v61;
        if (v59)
        {
          goto LABEL_100;
        }

        if (v62 >= v56)
        {
          v76 = *v47;
          v75 = v47[1];
          v59 = __OFSUB__(v75, v76);
          v77 = v75 - v76;
          if (v59)
          {
            goto LABEL_105;
          }

          if (v51 < v77)
          {
            v46 = v43 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v6 = a3[1];
      v7 = v87;
      a4 = v85;
      if (v87 >= v6)
      {
        v90 = v8;
        break;
      }
    }
  }

  if (!*v86)
  {
    goto LABEL_115;
  }

  sub_1DC339D2C(&v90, *v86, a3);
}

uint64_t sub_1DC339D2C(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1DC30D6B0(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_1DC339E58((*a3 + 32 * *v9), (*a3 + 32 * *v11), (*a3 + 32 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_1DC339E58(char *__src, char *__dst, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = (__dst - __src) / 32;
  v9 = (a3 - __dst) / 32;
  if (v8 < v9)
  {
    if (a4 != __src || &__src[32 * v8] <= a4)
    {
      memmove(a4, __src, 32 * v8);
    }

    v11 = &v4[32 * v8];
    while (1)
    {
      if (v4 >= v11 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_38;
      }

      if (*(v4 + 2) >= *(v6 + 2))
      {
        break;
      }

      v13 = v6;
      v14 = v7 == v6;
      v6 += 32;
      if (!v14)
      {
        goto LABEL_17;
      }

LABEL_18:
      v7 += 32;
    }

    v13 = v4;
    v14 = v7 == v4;
    v4 += 32;
    if (v14)
    {
      goto LABEL_18;
    }

LABEL_17:
    v15 = *(v13 + 1);
    *v7 = *v13;
    *(v7 + 1) = v15;
    goto LABEL_18;
  }

  if (a4 != __dst || &__dst[32 * v9] <= a4)
  {
    memmove(a4, __dst, 32 * v9);
  }

  v11 = &v4[32 * v9];
LABEL_25:
  for (v5 -= 32; v11 > v4 && v6 > v7; v5 -= 32)
  {
    if (*(v6 - 2) < *(v11 - 2))
    {
      v19 = v6 - 32;
      v14 = v5 + 32 == v6;
      v6 -= 32;
      if (!v14)
      {
        v20 = *(v19 + 1);
        *v5 = *v19;
        *(v5 + 1) = v20;
        v6 = v19;
      }

      goto LABEL_25;
    }

    if (v11 != v5 + 32)
    {
      v18 = *(v11 - 1);
      *v5 = *(v11 - 2);
      *(v5 + 1) = v18;
    }

    v11 -= 32;
  }

LABEL_38:
  v21 = (v11 - v4) / 32;
  if (v6 != v4 || v6 >= &v4[32 * v21])
  {
    memmove(v6, v4, 32 * v21);
  }

  return 1;
}

void sub_1DC33A01C(id a1)
{
  if (a1 != 1)
  {
  }
}

void sub_1DC33A180(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

unint64_t sub_1DC33A1CC()
{
  result = qword_1ECC7CC28;
  if (!qword_1ECC7CC28)
  {
    sub_1DC511BDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7CC28);
  }

  return result;
}

uint64_t sub_1DC33A224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1DC2AEB04(a3, a4);
  if (__OFADD__(*(v10 + 16), (v12 & 1) == 0))
  {
    __break(1u);
    goto LABEL_11;
  }

  v13 = v11;
  v14 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CC40, qword_1DC524750);
  result = sub_1DC517FFC();
  if ((result & 1) == 0)
  {
    goto LABEL_5;
  }

  v16 = *v5;
  result = sub_1DC2AEB04(a3, a4);
  if ((v14 & 1) != (v17 & 1))
  {
LABEL_11:
    result = sub_1DC51829C();
    __break(1u);
    return result;
  }

  v13 = result;
LABEL_5:
  v18 = *v5;
  if (v14)
  {
    v19 = (v18[7] + 16 * v13);
    *v19 = a1;
    v19[1] = a2;
  }

  else
  {
    sub_1DC33A364(v13, a3, a4, a1, a2, v18);
  }

  return result;
}

unint64_t sub_1DC33A364(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
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

uint64_t sub_1DC33A3B0(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v17 = (v15 << 10) | (16 * v16);
      v18 = (*(a4 + 48) + v17);
      v19 = v18[1];
      v20 = *(*(a4 + 56) + v17);
      *v11 = *v18;
      *(v11 + 8) = v19;
      *(v11 + 16) = v20;
      if (v14 == v10)
      {

        v13 = v15;
        goto LABEL_20;
      }

      v11 += 32;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1DC33A528(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CC30, &qword_1DC524738);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 32);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[4 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CC38, &unk_1DC524740);
    swift_arrayInitWithCopy();
  }

  return v10;
}

id sub_1DC33A658(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

uint64_t sub_1DC33A678()
{
  v0 = sub_1DC5172FC();
  __swift_allocate_value_buffer(v0, qword_1ECC8F750);
  v1 = OUTLINED_FUNCTION_43();
  v3 = __swift_project_value_buffer(v1, v2);
  v4 = swift_allocObject();
  v4[2] = 0xD000000000000028;
  v4[3] = 0x80000001DC540200;
  v4[4] = 0xD00000000000001CLL;
  v4[5] = 0x80000001DC524790;
  *v3 = v4;
  v5 = *MEMORY[0x1E69DB098];
  OUTLINED_FUNCTION_7_1(v0);
  v7 = *(v6 + 104);

  return v7(v3);
}

uint64_t sub_1DC33A74C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFF8, &qword_1DC522580);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v70 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v67 - v9;
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v67 - v12;
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v67 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v67 - v17;
  v19 = sub_1DC5172FC();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v67 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DC5171CC();
  if (qword_1ECC86C68 != -1)
  {
    OUTLINED_FUNCTION_0_13();
  }

  __swift_project_value_buffer(v19, qword_1ECC8F750);
  v24 = sub_1DC5172DC();
  (*(v20 + 8))(v23, v19);
  if (v24)
  {
    v25 = sub_1DC5171EC();
    sub_1DC30F668(0xD000000000000012, 0x80000001DC540100, v25, v18);

    v26 = sub_1DC5172AC();
    OUTLINED_FUNCTION_3_3(v18);
    if (v27)
    {
      sub_1DC30F72C(v18);
      v28 = v70;
    }

    else
    {
      sub_1DC382AC0();
      v69 = v42;
      v44 = v43;
      OUTLINED_FUNCTION_1_10();
      (*(v45 + 8))(v18, v26);
      v28 = v70;
      v68 = v44;
      if (v44)
      {
LABEL_10:
        v46 = sub_1DC5171EC();
        sub_1DC30F668(0x446C617669727261, 0xEF656D6954657461, v46, v16);

        OUTLINED_FUNCTION_3_3(v16);
        if (v27)
        {
          sub_1DC30F72C(v16);
        }

        else
        {
          sub_1DC382AC0();
          v70 = v47;
          v49 = v48;
          OUTLINED_FUNCTION_1_10();
          (*(v50 + 8))(v16, v26);
          v67 = v49;
          if (v49)
          {
LABEL_15:
            v51 = sub_1DC5171EC();
            sub_1DC30F668(0xD000000000000014, 0x80000001DC540120, v51, v13);

            OUTLINED_FUNCTION_3_3(v13);
            if (v27)
            {
              sub_1DC30F72C(v13);
            }

            else
            {
              sub_1DC382AC0();
              v34 = v52;
              v35 = v53;
              OUTLINED_FUNCTION_1_10();
              (*(v54 + 8))(v13, v26);
              if (v35)
              {
LABEL_20:
                v55 = sub_1DC5171EC();
                sub_1DC30F668(0xD000000000000011, 0x80000001DC540140, v55, v10);

                OUTLINED_FUNCTION_3_3(v10);
                if (v27)
                {
                  sub_1DC30F72C(v10);
                }

                else
                {
                  sub_1DC382AC0();
                  v36 = v56;
                  v37 = v57;
                  OUTLINED_FUNCTION_1_10();
                  (*(v58 + 8))(v10, v26);
                  if (v37)
                  {
LABEL_25:
                    v59 = sub_1DC5171EC();
                    sub_1DC30F668(0x65676E6573736170, 0xEE0073656D614E72, v59, v28);

                    OUTLINED_FUNCTION_3_3(v28);
                    if (v27)
                    {
                      sub_1DC30F72C(v28);
                    }

                    else
                    {
                      sub_1DC382748();
                      v32 = v60;
                      v33 = v61;
                      OUTLINED_FUNCTION_1_10();
                      (*(v62 + 8))(v28, v26);
                      if (v33)
                      {
                        v63 = sub_1DC51721C();
                        OUTLINED_FUNCTION_7_1(v63);
                        result = (*(v64 + 8))(a1);
LABEL_31:
                        v39 = v68;
                        v38 = v69;
                        v40 = v70;
                        v41 = v67;
                        goto LABEL_32;
                      }
                    }

                    v65 = sub_1DC51721C();
                    OUTLINED_FUNCTION_7_1(v65);
                    (*(v66 + 8))(a1);

                    v32 = 0;
                    v33 = 0xE000000000000000;
                    goto LABEL_31;
                  }
                }

                v36 = 0;
                v37 = 0xE000000000000000;
                goto LABEL_25;
              }
            }

            v34 = 0;
            v35 = 0xE000000000000000;
            goto LABEL_20;
          }
        }

        v70 = 0;
        v67 = 0xE000000000000000;
        goto LABEL_15;
      }
    }

    v68 = 0xE000000000000000;
    v69 = 0;
    goto LABEL_10;
  }

  v29 = sub_1DC51721C();
  OUTLINED_FUNCTION_7_1(v29);
  result = (*(v30 + 8))(a1);
  v32 = 0;
  v33 = 0;
  v34 = 0;
  v35 = 0;
  v36 = 0;
  v37 = 0;
  v38 = 0;
  v39 = 0;
  v40 = 0;
  v41 = 0;
LABEL_32:
  *a2 = v32;
  a2[1] = v33;
  a2[2] = v34;
  a2[3] = v35;
  a2[4] = v36;
  a2[5] = v37;
  a2[6] = v38;
  a2[7] = v39;
  a2[8] = v40;
  a2[9] = v41;
  return result;
}

uint64_t sub_1DC33AD74()
{
  v1 = v0;
  sub_1DC517F4C();
  OUTLINED_FUNCTION_5_14();
  MEMORY[0x1E1296160](0xD000000000000010);
  MEMORY[0x1E1296160](*v1, v1[1]);
  OUTLINED_FUNCTION_5_14();
  MEMORY[0x1E1296160]();
  MEMORY[0x1E1296160](v1[2], v1[3]);
  OUTLINED_FUNCTION_5_14();
  MEMORY[0x1E1296160]();
  MEMORY[0x1E1296160](v1[4], v1[5]);
  OUTLINED_FUNCTION_5_14();
  MEMORY[0x1E1296160]();
  MEMORY[0x1E1296160](v1[6], v1[7]);
  OUTLINED_FUNCTION_5_14();
  MEMORY[0x1E1296160]();
  MEMORY[0x1E1296160](v1[8], v1[9]);
  return 0;
}

uint64_t sub_1DC33AE88@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECC86C68 != -1)
  {
    OUTLINED_FUNCTION_0_13();
  }

  v2 = sub_1DC5172FC();
  __swift_project_value_buffer(v2, qword_1ECC8F750);
  OUTLINED_FUNCTION_7_1(v2);
  v4 = *(v3 + 16);

  return v4(a1);
}

uint64_t sub_1DC33AF68(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t sub_1DC33AFA8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DC33B00C()
{
  result = sub_1DC33C87C(&unk_1F57F78A8);
  qword_1ECC8F610 = result;
  return result;
}

uint64_t sub_1DC33B034(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (qword_1ECC82DB0 != -1)
    {
      OUTLINED_FUNCTION_1_11();
    }

    v3 = qword_1ECC8F610;
    swift_bridgeObjectRetain_n();

    while (1)
    {
      v4 = sub_1DC5178DC();
      if (!v5)
      {
        break;
      }

      v6 = v4;
      v7 = v5;
      if (*(v3 + 16))
      {
        v8 = *(v3 + 40);
        sub_1DC5182FC();
        sub_1DC51769C();
        v9 = sub_1DC51833C();
        v10 = ~(-1 << *(v3 + 32));
        while (1)
        {
          v11 = v9 & v10;
          if (((*(v3 + 56 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v9 & v10)) & 1) == 0)
          {
            break;
          }

          v12 = (*(v3 + 48) + 16 * v11);
          if (*v12 != v6 || v7 != v12[1])
          {
            v14 = sub_1DC51825C();
            v9 = v11 + 1;
            if ((v14 & 1) == 0)
            {
              continue;
            }
          }

          goto LABEL_16;
        }
      }

      MEMORY[0x1E1296150](v6, v7);
LABEL_16:
    }

    return 0;
  }

  return a1;
}

void AFSpeechRecognition.toNLXAsrHypotheses()()
{
  v1 = v0;
  v2 = sub_1DC510B6C();
  v3 = OUTLINED_FUNCTION_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_1();
  v146 = v9 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D350, &unk_1DC52EF90);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = v134 - v12;
  v14 = sub_1DC510F3C();
  v15 = OUTLINED_FUNCTION_0(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_1();
  v145 = v21 - v20;
  v150 = sub_1DC51141C();
  v22 = OUTLINED_FUNCTION_0(v150);
  v148 = v23;
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v26);
  v161 = v134 - v27;
  v164 = sub_1DC511D2C();
  v28 = OUTLINED_FUNCTION_0(v164);
  v158 = v29;
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v32);
  v34 = v134 - v33;
  v35 = sub_1DC516F7C();
  v36 = OUTLINED_FUNCTION_0(v35);
  v38 = v37;
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_8();
  v43 = v41 - v42;
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v45);
  v171 = v134 - v46;
  v47 = sub_1DC33CA00(v1, &selRef_utterances, &qword_1ECC7B990, 0x1E698D250);
  if (!v47)
  {
    goto LABEL_115;
  }

  v156 = v47;
  v181 = sub_1DC33CA00(v1, &selRef_phrases, &qword_1ECC7B9B8, 0x1E698D230);
  if (!v181)
  {

LABEL_115:
    v130 = sub_1DC28D414();
    (*(v38 + 16))(v43, v130, v35);
    v131 = sub_1DC516F6C();
    v132 = sub_1DC517B9C();
    if (os_log_type_enabled(v131, v132))
    {
      v133 = swift_slowAlloc();
      *v133 = 0;
      _os_log_impl(&dword_1DC287000, v131, v132, "AFSpeechRecognition utterances/phrases is nil", v133, 2u);
      MEMORY[0x1E1298840](v133, -1, -1);
    }

    (*(v38 + 8))(v43, v35);
    return;
  }

  v48 = v156;
  v160 = sub_1DC2C20B8(v156);
  if (!v160)
  {
    goto LABEL_111;
  }

  v159 = v48 & 0xC000000000000001;
  v144 = v48 & 0xFFFFFFFFFFFFFF8;
  v143 = v48 + 32;
  v49 = v181 & 0xFFFFFFFFFFFFFF8;
  v180 = v181 & 0xFFFFFFFFFFFFFF8;
  if (v181 < 0)
  {
    v49 = v181;
  }

  v134[1] = v49;
  v176 = v181 & 0xC000000000000001;
  v167 = (v38 + 8);
  v168 = (v38 + 16);
  v155 = v158 + 16;
  v154 = v158 + 8;
  v153 = v158 + 32;
  v140 = v5 + 8;
  v136 = v17 + 32;
  v50 = 0;
  v139 = v148 + 16;
  v138 = v148 + 8;
  v137 = v148 + 32;
  v157 = MEMORY[0x1E69E7CC0];
  v162 = v35;
  v51 = v147;
  v142 = v13;
  v141 = v14;
LABEL_7:
  if (v159)
  {
    v52 = MEMORY[0x1E1296800](v50, v156);
  }

  else
  {
    if (v50 >= *(v144 + 16))
    {
      goto LABEL_135;
    }

    v52 = *(v143 + 8 * v50);
  }

  v53 = __OFADD__(v50, 1);
  v54 = v50 + 1;
  if (v53)
  {
    goto LABEL_124;
  }

  v170 = v52;
  v55 = sub_1DC33CA00(v52, &selRef_interpretationIndices, &qword_1ECC7B920, 0x1E696AD98);
  v166 = v54;
  if (!v55)
  {
    goto LABEL_97;
  }

  v56 = v55;
  v179 = v55 >> 62;
  if (v55 >> 62)
  {
    v57 = sub_1DC51802C();
  }

  else
  {
    v57 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v181 >> 62)
  {
    v58 = sub_1DC51802C();
  }

  else
  {
    v58 = *(v180 + 16);
  }

  if (v57 != v58)
  {

LABEL_97:
    v113 = sub_1DC28D414();
    (*v168)(v51, v113, v35);
    v114 = sub_1DC516F6C();
    v115 = sub_1DC517B9C();
    if (os_log_type_enabled(v114, v115))
    {
      v116 = swift_slowAlloc();
      *v116 = 0;
      _os_log_impl(&dword_1DC287000, v114, v115, "Phrase length is not the same as interpretationIndices.", v116, 2u);
      MEMORY[0x1E1298840](v116, -1, -1);
    }

    (*v167)(v51, v35);
    goto LABEL_110;
  }

  v182 = 0;
  v183 = 0xE000000000000000;
  v59 = sub_1DC2C20B8(v181);
  v169 = 0;
  v60 = 0;
  v61 = v56 & 0xFFFFFFFFFFFFFF8;
  if (v56 < 0)
  {
    v62 = v56;
  }

  else
  {
    v62 = v56 & 0xFFFFFFFFFFFFFF8;
  }

  v172 = v62;
  v177 = v56 & 0xC000000000000001;
  v178 = -v59;
  v173 = MEMORY[0x1E69E7CC0];
  v174 = v56 & 0xFFFFFFFFFFFFFF8;
  v175 = v56;
LABEL_22:
  for (i = v60 + 4; ; ++i)
  {
    if (v178 + i == 4)
    {
      goto LABEL_101;
    }

    v64 = i - 4;
    if (v176)
    {
      v65 = MEMORY[0x1E1296800](i - 4, v181);
    }

    else
    {
      if (v64 >= *(v180 + 16))
      {
        goto LABEL_120;
      }

      v65 = *(v181 + 8 * i);
    }

    v66 = v65;
    v60 = i - 3;
    if (__OFADD__(v64, 1))
    {
      break;
    }

    if (v179)
    {
      v67 = sub_1DC51802C();
    }

    else
    {
      v67 = *(v61 + 16);
    }

    if (v64 == v67)
    {

LABEL_101:

      sub_1DC51140C();
      sub_1DC33C444();
      sub_1DC5113FC();
      [v170 confidenceScore];
      sub_1DC5113BC();
      sub_1DC51100C();
      v117 = v146;
      sub_1DC510B5C();
      v118 = v142;
      sub_1DC5138EC();
      OUTLINED_FUNCTION_37(&v172);
      v119(v117, v2);
      v120 = v141;
      if (__swift_getEnumTagSinglePayload(v118, 1, v141) == 1)
      {
        sub_1DC510F2C();
        if (__swift_getEnumTagSinglePayload(v118, 1, v120) != 1)
        {
          sub_1DC33CAD4(v118);
        }
      }

      else
      {
        OUTLINED_FUNCTION_37(&v168);
        v121(v145, v118, v120);
      }

      v122 = v161;
      sub_1DC5113CC();
      OUTLINED_FUNCTION_37(&v171);
      v123(v149, v122, v150);
      v124 = v157;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v124 = sub_1DC33C5A8(0, *(v124 + 16) + 1, 1, v124, &qword_1ECC7CC48, &unk_1DC5283C0, MEMORY[0x1E69D0A28], MEMORY[0x1E69D0A28]);
      }

      v157 = v124;
      v126 = *(v124 + 16);
      v125 = *(v124 + 24);
      if (v126 >= v125 >> 1)
      {
        v157 = sub_1DC33C5A8(v125 > 1, v126 + 1, 1, v157, &qword_1ECC7CC48, &unk_1DC5283C0, MEMORY[0x1E69D0A28], MEMORY[0x1E69D0A28]);
      }

      v127 = v148;
      v128 = v150;
      (*(v148 + 8))(v161, v150);
      v129 = v157;
      *(v157 + 16) = v126 + 1;
      (*(v127 + 32))(v129 + ((*(v127 + 80) + 32) & ~*(v127 + 80)) + *(v127 + 72) * v126, v149, v128);
      v51 = v147;
LABEL_110:
      v50 = v166;
      if (v166 == v160)
      {
LABEL_111:

        return;
      }

      goto LABEL_7;
    }

    if (v177)
    {
      v68 = MEMORY[0x1E1296800](i - 4, v56);
    }

    else
    {
      if (v64 >= *(v61 + 16))
      {
        goto LABEL_121;
      }

      v68 = *(v56 + 8 * i);
    }

    v69 = v68;
    v70 = sub_1DC33CA00(v66, &selRef_interpretations, &qword_1ECC7B950, 0x1E698D220);
    if (!v70)
    {

      continue;
    }

    v71 = v70;
    v72 = [v69 integerValue];
    if (v71 >> 62)
    {
      v73 = sub_1DC51802C();
    }

    else
    {
      v73 = *((v71 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v72 < v73)
    {
      v74 = [v69 integerValue];
      if ((v71 & 0xC000000000000001) != 0)
      {
        v75 = MEMORY[0x1E1296800](v74, v71);
      }

      else
      {
        if ((v74 & 0x8000000000000000) != 0)
        {
          goto LABEL_122;
        }

        if (v74 >= *((v71 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_123;
        }

        v75 = *(v71 + 8 * v74 + 32);
      }

      v76 = v75;

      v77 = sub_1DC33CA00(v76, &selRef_tokens, &qword_1ECC7B9C0, 0x1E698D248);
      v78 = v76;
      v61 = v174;
      v56 = v175;
      if (!v77)
      {

        goto LABEL_53;
      }

      v79 = v77;
      v165 = v78;
      if (!(v77 >> 62))
      {
        v80 = *((v77 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v80)
        {
          goto LABEL_60;
        }

LABEL_46:

LABEL_53:
        v35 = v162;
        continue;
      }

      v80 = sub_1DC51802C();
      if (!v80)
      {
        goto LABEL_46;
      }

LABEL_60:
      v135 = v2;
      if (v80 < 1)
      {
        goto LABEL_137;
      }

      v86 = 0;
      v152 = v79 & 0xC000000000000001;
      v151 = v80;
      while (2)
      {
        if (v152)
        {
          v87 = MEMORY[0x1E1296800](v86, v79);
        }

        else
        {
          v87 = *(v79 + 8 * v86 + 32);
        }

        v88 = v87;
        sub_1DC511D1C();
        [v88 removeSpaceBefore];
        sub_1DC511CDC();
        if (sub_1DC511CCC())
        {
          v89 = sub_1DC33C35C(v182, v183);
          if (v90)
          {
            v91 = v89 == 32 && v90 == 0xE100000000000000;
            if (v91)
            {
            }

            else
            {
              v92 = sub_1DC51825C();

              if ((v92 & 1) == 0)
              {
                goto LABEL_76;
              }
            }

            if (!v169)
            {
              goto LABEL_136;
            }

            --v169;
            sub_1DC33C3DC(v93);
          }
        }

LABEL_76:
        v94 = sub_1DC33CA74(v88, &selRef_text);
        sub_1DC33B034(v94, v95);

        sub_1DC511C3C();
        v96 = sub_1DC511C2C();
        MEMORY[0x1E1296160](v96);

        sub_1DC33CA74(v88, &selRef_phoneSequence);
        sub_1DC511C6C();
        sub_1DC33CA74(v88, &selRef_ipaPhoneSequence);
        sub_1DC511C9C();
        [v88 removeSpaceAfter];
        sub_1DC511CBC();
        sub_1DC511CAC();
        sub_1DC511C5C();
        [v88 confidenceScore];
        sub_1DC511C7C();
        sub_1DC511C1C();
        v97 = sub_1DC511C0C();
        v98 = sub_1DC511C2C();
        v99 = MEMORY[0x1E12961D0](v98);

        if ((v99 & 0x8000000000000000) != 0)
        {
          goto LABEL_125;
        }

        if (HIDWORD(v99))
        {
          goto LABEL_126;
        }

        if (__CFADD__(v97, v99))
        {
          goto LABEL_127;
        }

        sub_1DC511D0C();
        v100 = sub_1DC511CFC();
        if (sub_1DC511C4C())
        {
          if (__CFADD__(v100++, 1))
          {
            goto LABEL_134;
          }

          MEMORY[0x1E1296160](32, 0xE100000000000000);
        }

        [v88 startTime];
        v103 = OUTLINED_FUNCTION_6_12(v102);
        if (!(v104 ^ v53 | v91))
        {
          goto LABEL_128;
        }

        if (v103 <= -2147483650.0)
        {
          goto LABEL_129;
        }

        if (v103 >= 2147483650.0)
        {
          goto LABEL_130;
        }

        sub_1DC511CEC();
        [v88 endTime];
        v106 = OUTLINED_FUNCTION_6_12(v105);
        if (!(v104 ^ v53 | v91))
        {
          goto LABEL_131;
        }

        if (v106 <= -2147483650.0)
        {
          goto LABEL_132;
        }

        if (v106 >= 2147483650.0)
        {
          goto LABEL_133;
        }

        sub_1DC511C8C();
        OUTLINED_FUNCTION_37(&v184);
        v107(v163, v34, v164);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v173 = sub_1DC33C5A8(0, *(v173 + 16) + 1, 1, v173, &qword_1ECC7CC50, &qword_1DC5247E0, MEMORY[0x1E69D0BA0], MEMORY[0x1E69D0BA0]);
        }

        v109 = *(v173 + 16);
        v108 = *(v173 + 24);
        v169 = v100;
        if (v109 >= v108 >> 1)
        {
          v173 = sub_1DC33C5A8(v108 > 1, v109 + 1, 1, v173, &qword_1ECC7CC50, &qword_1DC5247E0, MEMORY[0x1E69D0BA0], MEMORY[0x1E69D0BA0]);
        }

        ++v86;

        v110 = v158;
        v111 = v164;
        (*(v158 + 8))(v34, v164);
        v112 = v173;
        *(v173 + 16) = v109 + 1;
        (*(v110 + 32))(v112 + ((*(v110 + 80) + 32) & ~*(v110 + 80)) + *(v110 + 72) * v109, v163, v111);
        if (v151 == v86)
        {

          v2 = v135;
          v35 = v162;
          v61 = v174;
          v56 = v175;
          goto LABEL_22;
        }

        continue;
      }
    }

    v81 = sub_1DC28D414();
    v82 = v171;
    (*v168)(v171, v81, v35);
    v83 = sub_1DC516F6C();
    v84 = sub_1DC517B9C();
    if (os_log_type_enabled(v83, v84))
    {
      v85 = swift_slowAlloc();
      *v85 = 0;
      _os_log_impl(&dword_1DC287000, v83, v84, "Invalid interpretation index.", v85, 2u);
      MEMORY[0x1E1298840](v85, -1, -1);

      (*v167)(v171, v35);
    }

    else
    {

      (*v167)(v82, v35);
    }

    v61 = v174;
    v56 = v175;
  }

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
}