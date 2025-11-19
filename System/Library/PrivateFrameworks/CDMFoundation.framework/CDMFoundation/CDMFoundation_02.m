uint64_t sub_1DC2BE044(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BED8, &qword_1DC522250);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1DC2BE0B4()
{
  result = qword_1ECC7BE70;
  if (!qword_1ECC7BE70)
  {
    sub_1DC510BDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7BE70);
  }

  return result;
}

void sub_1DC2BE13C()
{
  OUTLINED_FUNCTION_33();
  v50 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C950, &unk_1DC523CF0);
  v4 = OUTLINED_FUNCTION_10(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_19_9();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_23_9();
  v8 = sub_1DC5109BC();
  v9 = OUTLINED_FUNCTION_0(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_8();
  v16 = v14 - v15;
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v47[-v19];
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v47[-v21];
  sub_1DC29D640();
  OUTLINED_FUNCTION_2_6(v1);
  if (!v23)
  {
    v26 = *(v11 + 32);
    v26(v22, v1, v8);
    v27 = sub_1DC517B9C();
    sub_1DC297814();
    v28 = sub_1DC296DBC();
    (*(v11 + 16))(v20, v22, v8);
    if (os_log_type_enabled(v28, v27))
    {
      v30 = swift_slowAlloc();
      v49 = v26;
      v31 = v30;
      v32 = swift_slowAlloc();
      v48 = v27;
      v33 = v32;
      v51 = v32;
      *v31 = 136315138;
      v34 = sub_1DC5108DC();
      v36 = v35;
      v37 = *(v11 + 8);
      v38 = OUTLINED_FUNCTION_60();
      v39(v38);
      v40 = sub_1DC291244(v34, v36, &v51);

      *(v31 + 4) = v40;
      _os_log_impl(&dword_1DC287000, v28, v48, "AgentKeywords Loads from side loaded URL %s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v33);
      OUTLINED_FUNCTION_66();
      v26 = v49;
      OUTLINED_FUNCTION_66();
    }

    else
    {

      v44 = *(v11 + 8);
      v45 = OUTLINED_FUNCTION_60();
      v46(v45);
    }

    v43 = v50;
    v26(v50, v22, v8);
    goto LABEL_10;
  }

  sub_1DC2A17A4(v1);
  sub_1DC2A1B8C();
  OUTLINED_FUNCTION_2_6(v0);
  if (!v23)
  {
    v41 = *(v11 + 32);
    OUTLINED_FUNCTION_26_1();
    v41();
    sub_1DC517B9C();
    OUTLINED_FUNCTION_18_7();
    v42 = sub_1DC296DBC();
    OUTLINED_FUNCTION_9_7();
    sub_1DC516F0C();

    v43 = v50;
    (v41)(v50, v16, v8);
LABEL_10:
    v25 = 0;
    goto LABEL_11;
  }

  sub_1DC2A17A4(v0);
  sub_1DC517BAC();
  OUTLINED_FUNCTION_18_7();
  v24 = sub_1DC296DBC();
  OUTLINED_FUNCTION_9_7();
  sub_1DC516F0C();

  v25 = 1;
  v43 = v50;
LABEL_11:
  __swift_storeEnumTagSinglePayload(v43, v25, 1, v8);
  OUTLINED_FUNCTION_34();
}

uint64_t sub_1DC2BE530(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t OUTLINED_FUNCTION_102_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_1DC3137AC(a1, &a9);
}

uint64_t sub_1DC2BE60C()
{
  OUTLINED_FUNCTION_1_0();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  v5 = *(v4 + 16);
  v6 = *v1;
  OUTLINED_FUNCTION_4_0();
  *v7 = v6;

  if (v0)
  {
    OUTLINED_FUNCTION_2_2();

    return v8();
  }

  else
  {
    v10 = *(v6 + 8);

    return v10(v3 & 1);
  }
}

void sub_1DC2BE728()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_11_30();
  v3 = sub_1DC510B6C();
  v4 = OUTLINED_FUNCTION_0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2_4();
  v9 = sub_1DC516F7C();
  v10 = OUTLINED_FUNCTION_0(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_1();
  v17 = v16 - v15;
  sub_1DC28D414();
  OUTLINED_FUNCTION_55_10();
  v18(v17);
  v19 = v2;
  v20 = sub_1DC516F6C();
  sub_1DC517B9C();

  if (OUTLINED_FUNCTION_63_10())
  {
    OUTLINED_FUNCTION_63();
    v30 = v6;
    v21 = OUTLINED_FUNCTION_31_17();
    OUTLINED_FUNCTION_36_18(v21, 5.7779e-34);
    OUTLINED_FUNCTION_66_0(&dword_1DC287000, v22, v23, "NLRequestProcessor received message: %@");
    sub_1DC28EB30(v21, &qword_1ECC7DFE0, &qword_1DC5227F0);
    v6 = v30;
    OUTLINED_FUNCTION_66();
    OUTLINED_FUNCTION_66();
  }

  (*(v12 + 8))(v17, v9);
  OUTLINED_FUNCTION_233();
  v25 = (*(v24 + qword_1ECC8F590 + 336))();
  v26 = OUTLINED_FUNCTION_110(v25);
  (*(v27 + 144))(v26);

  sub_1DC28FB9C(v1 + qword_1ECC7BCF0, v31);
  __swift_project_boxed_opaque_existential_1(v31, v31[3]);
  sub_1DC5169EC();
  sub_1DC515D6C();
  v28 = OUTLINED_FUNCTION_38_13();
  v29(v28);

  (*(v6 + 8))(v0, v3);
  __swift_destroy_boxed_opaque_existential_1Tm(v31);
  OUTLINED_FUNCTION_34();
}

uint64_t OUTLINED_FUNCTION_60_1(uint64_t a1)
{
  v5 = v1;
  v6 = *(v3 - 128);
  v7 = v2;
  v8 = *(v3 - 112);

  return sub_1DC28EB30(a1, v5, v7);
}

uint64_t OUTLINED_FUNCTION_60_2()
{
}

uint64_t OUTLINED_FUNCTION_60_3()
{
  v5 = v0;
  v6 = *(v3 - 264);

  return sub_1DC28EB30(v2, v5, v1);
}

uint64_t OUTLINED_FUNCTION_60_5()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_60_6()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_60_10()
{

  return sub_1DC312FB4(0);
}

uint64_t sub_1DC2BEAE8(uint64_t *a1)
{
  v2 = *a1;
  OUTLINED_FUNCTION_9_10();
  v3 = *(v1 + v2);
}

uint64_t OUTLINED_FUNCTION_100_2(uint64_t a1)
{

  return sub_1DC31360C(a1, v1 - 80);
}

uint64_t OUTLINED_FUNCTION_100_4(uint64_t a1)
{
  *(a1 + 8) = sub_1DC423CAC;
  v2 = v1[36];
  v3 = v1[31];
  return v1[9];
}

uint64_t sub_1DC2BEBAC()
{
  v1 = *(v0 + 16);
  OUTLINED_FUNCTION_27_5();
  v2 = swift_allocObject();
  *(v2 + 16) = sub_1DC2BECD8;
  *(v2 + 24) = v0;
  v6[4] = sub_1DC292A1C;
  v6[5] = v2;
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_0_26();
  v6[2] = v3;
  v6[3] = &block_descriptor_20_0;
  v4 = _Block_copy(v6);

  dispatch_sync(v1, v4);
  _Block_release(v4);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }

  return result;
}

_BYTE *sub_1DC2BECE0(uint64_t a1)
{
  v2 = sub_1DC516F7C();
  v3 = OUTLINED_FUNCTION_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_1();
  v10 = v9 - v8;
  v11 = sub_1DC28D414();
  (*(v5 + 16))(v10, v11, v2);
  v12 = sub_1DC516F6C();
  v13 = sub_1DC517B9C();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_1DC287000, v12, v13, "NLURequestTimeoutManager: canceling and removing all sendNluRequestTimeoutTimers", v14, 2u);
    OUTLINED_FUNCTION_66();
  }

  v15 = (*(v5 + 8))(v10, v2);
  result = (*(*a1 + 96))(v15);
  v17 = result;
  v18 = 0;
  v19 = 1 << result[32];
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = result + 64;
  v22 = v20 & *(result + 8);
  for (i = (v19 + 63) >> 6; v22; result = [*(*(v17 + 7) + ((v24 << 9) | (8 * v25))) cancelIfNotAlreadyCanceled])
  {
    v24 = v18;
LABEL_11:
    v25 = __clz(__rbit64(v22));
    v22 &= v22 - 1;
  }

  while (1)
  {
    v24 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v24 >= i)
    {

      sub_1DC298C74(0, &qword_1ECC7B9A0, 0x1E698D278);
      v26 = sub_1DC51764C();
      return (*(*a1 + 104))(v26);
    }

    v22 = *&v21[8 * v24];
    ++v18;
    if (v22)
    {
      v18 = v24;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DC2BEF4C()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
}

uint64_t sub_1DC2BEF84(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 24);
  *(v1 + 24) = a1;
}

void sub_1DC2BF018()
{
  OUTLINED_FUNCTION_33();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = sub_1DC510B6C();
  v8 = OUTLINED_FUNCTION_0(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_158_0();
  v15 = v13 - v14;
  v16 = *(v0 + 32);
  OUTLINED_FUNCTION_90();
  v17(v15, v6, v7);
  v18 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = v0;
  (*(v10 + 32))(v19 + v18, v15, v7);
  v20 = (v19 + ((v12 + v18 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v20 = v4;
  v20[1] = v2;
  OUTLINED_FUNCTION_27_5();
  v21 = swift_allocObject();
  *(v21 + 16) = sub_1DC2BF258;
  *(v21 + 24) = v19;
  v26[4] = sub_1DC292A1C;
  v26[5] = v21;
  OUTLINED_FUNCTION_5_4();
  v26[1] = 1107296256;
  OUTLINED_FUNCTION_5_0();
  v26[2] = v22;
  v26[3] = &block_descriptor_61;
  v23 = _Block_copy(v26);

  v24 = OUTLINED_FUNCTION_187();
  dispatch_sync(v24, v25);
  _Block_release(v23);
  LOBYTE(v2) = OUTLINED_FUNCTION_173();

  if (v2)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_34();
  }
}

void sub_1DC2BF258()
{
  v1 = sub_1DC510B6C();
  OUTLINED_FUNCTION_52(v1);
  v3 = v2;
  v5 = v4;
  v6 = *(v3 + 80);
  v7 = *(v5 + 64);
  OUTLINED_FUNCTION_21_10();
  v8 = *(v0 + 16);
  v10 = (v0 + v9);
  v11 = *v10;
  v12 = v10[1];

  sub_1DC2BF2D8();
}

void sub_1DC2BF2D8()
{
  OUTLINED_FUNCTION_33();
  v110 = v3;
  v111 = v4;
  v109 = v5;
  OUTLINED_FUNCTION_38_2();
  v6 = sub_1DC516F7C();
  v7 = OUTLINED_FUNCTION_0(v6);
  v112 = v8;
  v113 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_15();
  v108 = v11;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_62();
  v106 = v13;
  OUTLINED_FUNCTION_12();
  v14 = sub_1DC510B6C();
  v15 = OUTLINED_FUNCTION_0(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_2_1();
  v105 = v20;
  v21 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CE20, &unk_1DC523AC8) - 8);
  v22 = *(*v21 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v105 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7CA30, &qword_1DC522A00);
  v27 = OUTLINED_FUNCTION_10(v26);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_54_8();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_98_1();
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v105 - v32;
  OUTLINED_FUNCTION_38_1();
  v35 = *(v34 + 464);
  v107 = v1;
  v35();
  OUTLINED_FUNCTION_126_0();
  v36(v0, v109, v14);
  OUTLINED_FUNCTION_61();
  __swift_storeEnumTagSinglePayload(v37, v38, v39, v14);
  v40 = v21[14];
  sub_1DC28F308(v33, v25, &unk_1ECC7CA30, &qword_1DC522A00);
  sub_1DC28F308(v0, &v25[v40], &unk_1ECC7CA30, &qword_1DC522A00);
  OUTLINED_FUNCTION_39(v25, 1, v14);
  if (v52)
  {
    OUTLINED_FUNCTION_62_3();
    sub_1DC28EB30(v41, v42, v43);
    OUTLINED_FUNCTION_62_3();
    sub_1DC28EB30(v44, v45, v46);
    OUTLINED_FUNCTION_39(&v25[v40], 1, v14);
    if (v52)
    {
      sub_1DC28EB30(v25, &unk_1ECC7CA30, &qword_1DC522A00);
      v47 = v112;
LABEL_14:
      sub_1DC28D414();
      OUTLINED_FUNCTION_18_13();
      v86(v106);

      v87 = sub_1DC516F6C();
      sub_1DC517B9C();

      if (OUTLINED_FUNCTION_172())
      {
        OUTLINED_FUNCTION_63();
        v88 = OUTLINED_FUNCTION_111();
        v115 = v88;
        *v33 = 136315138;
        v89 = OUTLINED_FUNCTION_89();
        *(v33 + 4) = sub_1DC291244(v89, v90, v91);
        OUTLINED_FUNCTION_16_0();
        _os_log_impl(v92, v93, v94, v95, v96, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v88);
        OUTLINED_FUNCTION_40_0();
        OUTLINED_FUNCTION_31();
      }

      v97 = *(v47 + 8);
      v98 = OUTLINED_FUNCTION_174();
      v99(v98);
      OUTLINED_FUNCTION_12_0();
      v101 = (*(v100 + 624))(v114);
      v102 = OUTLINED_FUNCTION_89();
      sub_1DC2BFB38(v102, v103, v104);
      sub_1DC28EB30(&v115, &qword_1ECC7CE28, &unk_1DC524E10);
      v101(v114, 0);
      goto LABEL_17;
    }

    goto LABEL_9;
  }

  v48 = OUTLINED_FUNCTION_205();
  sub_1DC28F308(v48, v49, v50, v51);
  OUTLINED_FUNCTION_39(&v25[v40], 1, v14);
  if (v52)
  {
    OUTLINED_FUNCTION_70_4();
    sub_1DC28EB30(v53, v54, v55);
    OUTLINED_FUNCTION_70_4();
    sub_1DC28EB30(v56, v57, v58);
    (*(v17 + 8))(v2, v14);
LABEL_9:
    sub_1DC28EB30(v25, &qword_1ECC7CE20, &unk_1DC523AC8);
    v47 = v112;
    goto LABEL_10;
  }

  v73 = v105;
  (*(v17 + 32))(v105, &v25[v40], v14);
  OUTLINED_FUNCTION_2_11();
  sub_1DC293BE4(v74, v75);
  OUTLINED_FUNCTION_55();
  v76 = sub_1DC5176CC();
  v77 = *(v17 + 8);
  v77(v73, v14);
  OUTLINED_FUNCTION_179();
  sub_1DC28EB30(v78, v79, v80);
  OUTLINED_FUNCTION_179();
  sub_1DC28EB30(v81, v82, v83);
  v77(v2, v14);
  v84 = OUTLINED_FUNCTION_174();
  sub_1DC28EB30(v84, v85, &qword_1DC522A00);
  v47 = v112;
  if (v76)
  {
    goto LABEL_14;
  }

LABEL_10:
  sub_1DC28D414();
  OUTLINED_FUNCTION_18_13();
  v59(v108);

  v60 = sub_1DC516F6C();
  sub_1DC517BAC();

  if (OUTLINED_FUNCTION_172())
  {
    OUTLINED_FUNCTION_63();
    v61 = OUTLINED_FUNCTION_111();
    v115 = v61;
    *v33 = 136315138;
    v62 = OUTLINED_FUNCTION_89();
    *(v33 + 4) = sub_1DC291244(v62, v63, v64);
    OUTLINED_FUNCTION_16_0();
    _os_log_impl(v65, v66, v67, v68, v69, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v61);
    OUTLINED_FUNCTION_40_0();
    OUTLINED_FUNCTION_31();
  }

  v70 = *(v47 + 8);
  v71 = OUTLINED_FUNCTION_174();
  v72(v71);
LABEL_17:
  OUTLINED_FUNCTION_34();
}

uint64_t OUTLINED_FUNCTION_163_0()
{

  return sub_1DC516F0C();
}

uint64_t OUTLINED_FUNCTION_163_1()
{

  return sub_1DC51154C();
}

uint64_t OUTLINED_FUNCTION_163_2@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *a1 = a2;
  *(a1 + 8) = v2;
  *(a1 + 16) = 1;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_192_1()
{
  v3 = v0[56];
  v2 = v0[57];
  v5 = v0[54];
  v4 = v0[55];
  v6 = v0[53];
  v7 = v0[50];
  v8 = v0[46];
  v9 = v0[47];
  v11 = v0[44];
  v10 = v0[45];
  v13 = v0[41];
  v14 = v0[40];
  v15 = v0[37];
  v16 = v0[34];
  v17 = v0[32];
  v18 = v0[31];
}

void OUTLINED_FUNCTION_128_0(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0xCu);
}

void OUTLINED_FUNCTION_56_4(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 2u);
}

void OUTLINED_FUNCTION_157(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 0x16u);
}

uint64_t OUTLINED_FUNCTION_56_5()
{
  v1 = *(*(v0 - 264) + 8);
  v3 = *(v0 - 256);
  return *(v0 - 248);
}

uint64_t OUTLINED_FUNCTION_56_6()
{
}

uint64_t OUTLINED_FUNCTION_56_10()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_56_12()
{

  return swift_once();
}

double sub_1DC2BFB38@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_1DC2AEB04(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    swift_isUniquelyReferenced_nonNull_native();
    v14 = *v4;
    v11 = *(*v4 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CE48, qword_1DC524E30);
    sub_1DC517FFC();
    v12 = *(*(v14 + 48) + 16 * v9 + 8);

    sub_1DC28F9B0((*(v14 + 56) + 40 * v9), a3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CD18, &unk_1DC524D10);
    sub_1DC51800C();
    *v4 = v14;
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1DC2BFC38()
{
  v0 = sub_1DC2BFC8C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1DC2BFC8C()
{
  v0 = sub_1DC5169FC();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + qword_1ECC7BCF0));
  sub_1DC28EB30(v0 + qword_1ECC8F5E0, &unk_1ECC7D340, &qword_1DC525380);
  sub_1DC28EB30(v0 + qword_1ECC8F5C8, &qword_1ECC7D948, &unk_1DC52A108);
  v1 = *(v0 + qword_1ECC8F5B0);

  v2 = *(v0 + qword_1ECC8F5A8);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + qword_1ECC8F5D8));
  v3 = *(v0 + qword_1EDAC95A0);

  v4 = qword_1ECC8F5D0;
  v5 = sub_1DC5162DC();
  OUTLINED_FUNCTION_35(v5);
  (*(v6 + 8))(v0 + v4);
  v7 = *(v0 + qword_1ECC8F5E8);

  v8 = *(v0 + qword_1EDAC95B0 + 8);

  v9 = *(v0 + qword_1ECC8F5A0);

  v10 = *(v0 + qword_1ECC8F5F8);

  v11 = *(v0 + qword_1ECC8F5F0);

  return v0;
}

uint64_t sub_1DC2BFDD8()
{
  sub_1DC2BFE08();
  OUTLINED_FUNCTION_27_5();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1DC2BFE08()
{
  v1 = *(v0 + 24);

  return v0;
}

_BYTE *std::string::basic_string[abi:ne200100]<0>(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

id SiriNLUOverrideProxy.init(useTrie:useMemory:)()
{
  v1 = sub_1DC517BCC();
  v2 = OUTLINED_FUNCTION_35(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_1();
  v5 = sub_1DC5173CC();
  v6 = OUTLINED_FUNCTION_10(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1();
  v9 = sub_1DC517BEC();
  v10 = OUTLINED_FUNCTION_0(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_1();
  v17 = v16 - v15;
  *&v0[OBJC_IVAR___SiriNLUOverrideProxy_componentOverrideStore] = 0;
  *&v0[OBJC_IVAR___SiriNLUOverrideProxy_overrideResults] = 0;
  *&v0[OBJC_IVAR___SiriNLUOverrideProxy_swiftifiedInputs] = 0;
  sub_1DC51637C();
  *&v0[OBJC_IVAR___SiriNLUOverrideProxy_store] = sub_1DC51631C();
  sub_1DC298C74(0, &qword_1EDAC7FA0, 0x1E69E9610);
  (*(v12 + 104))(v17, *MEMORY[0x1E69E8098], v9);
  sub_1DC51739C();
  v20 = MEMORY[0x1E69E7CC0];
  sub_1DC293C74(&qword_1EDAC7FA8, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7CD20, &qword_1DC525300);
  sub_1DC2BC7DC();
  sub_1DC517E9C();
  *&v0[OBJC_IVAR___SiriNLUOverrideProxy_queue] = sub_1DC517C1C();
  v19.receiver = v0;
  v19.super_class = type metadata accessor for SiriNLUOverrideProxy();
  return objc_msgSendSuper2(&v19, sel_init);
}

uint64_t sub_1DC2C0E20(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v6 = sub_1DC51772C();
  v8 = v7;
  v9 = a1;
  LOBYTE(a4) = a4(v6, v8);

  return a4 & 1;
}

uint64_t sub_1DC2C0E88(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_1DC517B9C();
  sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
  v6 = sub_1DC2C0F8C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7C290, &qword_1DC524690);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1DC522F20;
  *(v7 + 56) = MEMORY[0x1E69E6158];
  *(v7 + 64) = sub_1DC2C0FA4();
  *(v7 + 32) = a1;
  *(v7 + 40) = a2;

  sub_1DC516F0C();

  v8 = *(v3 + OBJC_IVAR___SiriNLUOverrideProxy_store);
  return sub_1DC51632C() & 1;
}

unint64_t sub_1DC2C0FA4()
{
  result = qword_1EDAC7FC8;
  if (!qword_1EDAC7FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAC7FC8);
  }

  return result;
}

uint64_t sub_1DC2C1010()
{
  v1 = *(v0 + OBJC_IVAR___SiriNLUOverrideProxy_queue);
  OUTLINED_FUNCTION_16_14();
  return v3;
}

uint64_t sub_1DC2C1070@<X0>(char *a1@<X8>)
{
  v3 = v1[2];
  v2 = v1[3];
  v4 = v1[4];
  sub_1DC517B9C();
  sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
  v5 = sub_1DC2C0F8C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7C290, &qword_1DC524690);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1DC522F20;
  *(v6 + 56) = MEMORY[0x1E69E6158];
  v7 = sub_1DC2C0FA4();
  *(v6 + 64) = v7;
  *(v6 + 32) = v3;
  *(v6 + 40) = v2;

  sub_1DC516F0C();

  v8 = sub_1DC51637C();
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  swift_allocObject();
  sub_1DC51636C();
  if (sub_1DC51632C())
  {
    v11 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x80);

    v11(v12);
    sub_1DC517B9C();
    v13 = sub_1DC2C0F8C();
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1DC522F20;
    *(v14 + 56) = MEMORY[0x1E69E6158];
    *(v14 + 64) = v7;
    *(v14 + 32) = v3;
    *(v14 + 40) = v2;

    sub_1DC516F0C();

    v15 = 1;
  }

  else
  {
    v15 = 0;
  }

  *a1 = v15;
  return result;
}

uint64_t sub_1DC2C1648(unint64_t a1, _BYTE *a2)
{
  v4 = sub_1DC51122C();
  v5 = OUTLINED_FUNCTION_0(v4);
  v107 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8();
  v11 = v9 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v97 - v13;
  v111 = sub_1DC51639C();
  v15 = OUTLINED_FUNCTION_0(v111);
  v108 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_8();
  v106 = (v19 - v20);
  MEMORY[0x1EEE9AC00](v21);
  v110 = &v97 - v22;
  OUTLINED_FUNCTION_12();
  v104 = sub_1DC511A4C();
  v23 = OUTLINED_FUNCTION_0(v104);
  v103 = v24;
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_1();
  v102 = v28 - v27;
  OUTLINED_FUNCTION_12();
  v29 = sub_1DC51670C();
  v30 = OUTLINED_FUNCTION_10(v29);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_1();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D7A8, &unk_1DC529770);
  v34 = OUTLINED_FUNCTION_10(v33);
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v109 = &v97 - v37;
  OUTLINED_FUNCTION_12();
  v38 = sub_1DC51231C();
  v39 = OUTLINED_FUNCTION_0(v38);
  v118 = v40;
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_8();
  v101 = v43 - v44;
  v46 = MEMORY[0x1EEE9AC00](v45);
  v48 = &v97 - v47;
  MEMORY[0x1EEE9AC00](v46);
  v112 = &v97 - v49;
  *a2 = 0;
  v117 = a1;
  v50 = sub_1DC2C20B8(a1);
  v119 = v38;
  v113 = v11;
  v99 = a2;
  v100 = v14;
  if (v50)
  {
    v51 = v50;
    v123 = MEMORY[0x1E69E7CC0];
    sub_1DC2C22A4(0, v50 & ~(v50 >> 63), 0);
    if ((v51 & 0x8000000000000000) == 0)
    {
      v98 = v4;
      v52 = 0;
      v53 = v123;
      v114 = v117 & 0xFFFFFFFFFFFFFF8;
      v115 = v118 + 32;
      v116 = v117 & 0xC000000000000001;
      while (1)
      {
        v54 = v52 + 1;
        if (__OFADD__(v52, 1))
        {
          break;
        }

        if (v116)
        {
          v55 = MEMORY[0x1E1296800](v52, v117);
        }

        else
        {
          if (v52 >= *(v114 + 16))
          {
            goto LABEL_35;
          }

          v55 = *(v117 + 8 * v52 + 32);
        }

        v56 = v55;
        sub_1DC2C22C4(v55);
        if (v57 >> 60 == 15)
        {
          goto LABEL_37;
        }

        v122 = 0;
        v120 = 0u;
        v121 = 0u;
        sub_1DC5166FC();
        OUTLINED_FUNCTION_2_31();
        sub_1DC293C74(&qword_1EDAC8038, v58);
        sub_1DC51677C();

        v123 = v53;
        v60 = *(v53 + 16);
        v59 = *(v53 + 24);
        if (v60 >= v59 >> 1)
        {
          sub_1DC2C22A4(v59 > 1, v60 + 1, 1);
          v53 = v123;
        }

        *(v53 + 16) = v60 + 1;
        v38 = v119;
        (*(v118 + 32))(v53 + ((*(v118 + 80) + 32) & ~*(v118 + 80)) + *(v118 + 72) * v60, v48, v119);
        ++v52;
        if (v54 == v51)
        {
          v4 = v98;
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
    }

    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v53 = MEMORY[0x1E69E7CC0];
LABEL_15:
  v61 = v109;
  sub_1DC2C2328(v53, MEMORY[0x1E69D0D28], v109);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v61, 1, v38);
  v63 = v111;
  if (EnumTagSinglePayload == 1)
  {

    sub_1DC28EB30(v61, &qword_1ECC7D7A8, &unk_1DC529770);
    return MEMORY[0x1E69E7CC0];
  }

  v65 = v118;
  (*(v118 + 32))(v112, v61, v38);
  v66 = *(v105 + OBJC_IVAR___SiriNLUOverrideProxy_store);
  v67 = v103;
  v68 = v102;
  v69 = v104;
  (*(v103 + 104))(v102, *MEMORY[0x1E69D0B88], v104);
  sub_1DC51634C();
  (*(v67 + 8))(v68, v69);
  v70 = v108;
  (*(v65 + 16))(v101, v112, v38);

  v71 = v110;
  OUTLINED_FUNCTION_29_0();
  sub_1DC51638C();
  v72 = v106;
  (*(v70 + 16))(v106, v71, v63);
  v73 = (*(v70 + 88))(v72, v63);
  if (v73 == *MEMORY[0x1E69D0918])
  {

    v74 = OUTLINED_FUNCTION_17_16();
    v75(v74);
    v76 = v107 + 32;
    v77 = *(v107 + 32);
    v78 = v100;
    v77(v100, v72, v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D370, &unk_1DC5283D0);
    v79 = *(v76 + 40);
    v80 = (*(v76 + 48) + 32) & ~*(v76 + 48);
    v81 = swift_allocObject();
    *(v81 + 16) = xmmword_1DC522F20;
    v77((v81 + v80), v78, v4);
LABEL_23:
    *&v120 = MEMORY[0x1E69E7CC0];
    v84 = *(v81 + 16);
    v85 = v113;
    if (v84)
    {
      v117 = *(v107 + 16);
      v86 = *(v107 + 80);
      v115 = v81;
      v87 = v81 + ((v86 + 32) & ~v86);
      v88 = *(v107 + 72);
      v89 = (v107 + 8);
      v116 = MEMORY[0x1E69E7CC0];
      do
      {
        (v117)(v85, v87, v4);
        sub_1DC293C74(&qword_1ECC7BE18, MEMORY[0x1E69D09E0]);
        v90 = sub_1DC51678C();
        v92 = v91;
        v93 = objc_allocWithZone(MEMORY[0x1E69D1240]);
        v94 = sub_1DC339190(v90, v92);
        v95 = (*v89)(v85, v4);
        if (v94)
        {
          MEMORY[0x1E12962A0](v95);
          if (*((v120 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v120 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1DC517A3C();
          }

          OUTLINED_FUNCTION_29_0();
          sub_1DC517A5C();
          v116 = v120;
        }

        v85 = v113;
        v87 += v88;
        --v84;
      }

      while (v84);

      v63 = v111;
      v70 = v108;
      v64 = v116;
    }

    else
    {

      v64 = MEMORY[0x1E69E7CC0];
    }

    (*(v70 + 8))(v110, v63);
    (*(v118 + 8))(v112, v119);
    return v64;
  }

  if (v73 == *MEMORY[0x1E69D0910])
  {

    v82 = OUTLINED_FUNCTION_17_16();
    v83(v82);
    v81 = *v72;
    *v99 = 1;
    goto LABEL_23;
  }

  if (v73 == *MEMORY[0x1E69D0908])
  {

    v81 = MEMORY[0x1E69E7CC0];
    goto LABEL_23;
  }

LABEL_38:
  result = sub_1DC51824C();
  __break(1u);
  return result;
}

uint64_t sub_1DC2C20B8(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_1DC51802C();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

size_t sub_1DC2C20DC(size_t result, int64_t a2, char a3, uint64_t a4)
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
LABEL_25:
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
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D7B8, &unk_1DC5297B0);
  v10 = *(sub_1DC51231C() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_1DC51231C() - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_1DC4021E0(a4 + v16, v8, v13 + v16, MEMORY[0x1E69D0D28]);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

size_t sub_1DC2C22A4(size_t a1, int64_t a2, char a3)
{
  result = sub_1DC2C20DC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1DC2C22C4(void *a1)
{
  v1 = [a1 data];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1DC510A0C();

  return v3;
}

uint64_t sub_1DC2C2328@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 16);
  v6 = a2(0);
  v7 = v6;
  if (v5)
  {
    (*(*(v6 - 8) + 16))(a3, a1 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)), v6);
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a3, v8, 1, v7);
}

void sub_1DC2C2600(_Unwind_Exception *a1)
{
  MEMORY[0x1E1297AF0](v1, 0x10F3C40F4CE41AFLL);
  _Unwind_Resume(a1);
}

void sub_1DC2C2770(_Unwind_Exception *a1)
{
  MEMORY[0x1E1297AF0](v1, 0x10F3C40F4CE41AFLL);
  _Unwind_Resume(a1);
}

uint64_t sub_1DC2C29A0(uint64_t a1, uint64_t *a2, uint64_t (*a3)(uint64_t))
{
  v6 = *a2;
  swift_beginAccess();
  v7 = *(v3 + v6);
  *(v3 + v6) = a1;
  return a3(v7);
}

void sub_1DC2C2FD0(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t sub_1DC2C435C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v5 = sub_1DC510C8C();
  OUTLINED_FUNCTION_52(v5);
  v7 = v6;
  v9 = v8;
  v10 = *(v7 + 80);
  v11 = *(v9 + 64);
  OUTLINED_FUNCTION_21_10();
  v13 = *(v3 + 16);
  v15 = (v3 + v14);
  v16 = *v15;
  v17 = v15[1];

  return a3(a2, v13, v3 + v12, v16, v17);
}

void sub_1DC2C4400(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_33();
  a19 = v22;
  a20 = v23;
  v92 = OUTLINED_FUNCTION_245(v24, v25, v26, v27, v28);
  v29 = OUTLINED_FUNCTION_0(v92);
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_12();
  v91 = sub_1DC5173CC();
  v32 = OUTLINED_FUNCTION_0(v91);
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_2_1();
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CE60, &qword_1DC524EF0);
  OUTLINED_FUNCTION_0(v90);
  v36 = *(v35 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_12();
  v89 = sub_1DC510C8C();
  v38 = OUTLINED_FUNCTION_0(v89);
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v38);
  v41 = OUTLINED_FUNCTION_169_1();
  v42 = OUTLINED_FUNCTION_0(v41);
  v44 = v43;
  v46 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_19_9();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_56_1();
  OUTLINED_FUNCTION_36_7();
  Strong = swift_weakLoadStrong();
  sub_1DC28D414();
  OUTLINED_FUNCTION_18_13();
  if (Strong)
  {
    v50 = OUTLINED_FUNCTION_215();
    v51(v50);
    v52 = sub_1DC516F6C();
    v53 = sub_1DC517B9C();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = OUTLINED_FUNCTION_35_8();
      OUTLINED_FUNCTION_181(v54);
      OUTLINED_FUNCTION_246(&dword_1DC287000, v55, v56, "Received successFromSetup from CDM");
      OUTLINED_FUNCTION_66();
    }

    (*(v44 + 8))(v20, v41);
    v57 = OUTLINED_FUNCTION_85_3();
    v58(v57);
    OUTLINED_FUNCTION_115_1();
    v59 = OUTLINED_FUNCTION_225();
    v60(v59);
    OUTLINED_FUNCTION_78_4();
    v61 = OUTLINED_FUNCTION_244();
    v62 = OUTLINED_FUNCTION_135_0(v61);
    v63(v62);
    v64 = OUTLINED_FUNCTION_130_1();
    v65(v64);
    v93[4] = sub_1DC2C4C10;
    v93[5] = v20;
    OUTLINED_FUNCTION_19_13();
    v93[1] = 1107296256;
    OUTLINED_FUNCTION_3_14();
    v93[2] = v66;
    v93[3] = &block_descriptor_192;
    v67 = _Block_copy(v93);

    sub_1DC51739C();
    OUTLINED_FUNCTION_1_14();
    sub_1DC293BE4(v68, v69);
    v70 = OUTLINED_FUNCTION_74();
    __swift_instantiateConcreteTypeFromMangledNameV2(v70, v71);
    OUTLINED_FUNCTION_62_3();
    sub_1DC2C4B5C(v72, v73, v74);
    OUTLINED_FUNCTION_123_1();
    OUTLINED_FUNCTION_171();
    _Block_release(v67);
    OUTLINED_FUNCTION_62_0(&a16);
    v75 = OUTLINED_FUNCTION_55();
    v76(v75);
    v77 = OUTLINED_FUNCTION_222();
    v78(v77);
  }

  else
  {
    v49(v21);
    v79 = sub_1DC516F6C();
    v80 = sub_1DC517B9C();
    if (OUTLINED_FUNCTION_14_7(v80))
    {
      v81 = OUTLINED_FUNCTION_35_8();
      OUTLINED_FUNCTION_81_2(v81);
      OUTLINED_FUNCTION_16_0();
      _os_log_impl(v82, v83, v84, v85, v86, 2u);
      OUTLINED_FUNCTION_31();
    }

    v87 = OUTLINED_FUNCTION_150_0();
    v88(v87, v41);
  }

  OUTLINED_FUNCTION_34();
}

void OUTLINED_FUNCTION_226(void *a1@<X8>)
{
  v3 = v1[48];
  v4 = v1[49];
  v5 = v1[35];
  v6 = v1[32];
  v7 = v1[30];
}

uint64_t OUTLINED_FUNCTION_226_0@<X0>(uint64_t a1@<X8>)
{
  v7 = (v5 + a1);
  v8 = v7[1];
  *v1 = *v7;
  v1[1] = v8;
  v9 = v3 + 5 * v4 + *(v2 + 56);
}

uint64_t OUTLINED_FUNCTION_225()
{
  v1 = *(v0 - 248);
  result = *(v0 - 256);
  v3 = *(v0 - 232);
  return result;
}

uint64_t OUTLINED_FUNCTION_225_0()
{
  *(v1 + 4) = v0;
  *(v1 + 12) = 2080;

  return sub_1DC32B2D8();
}

unint64_t OUTLINED_FUNCTION_135()
{

  return sub_1DC297814();
}

uint64_t OUTLINED_FUNCTION_135_0(uint64_t a1)
{
  *(a1 + 16) = v3;
  v5 = *(v1 + 32);
  result = a1 + v2;
  v7 = *(v4 - 296);
  return result;
}

uint64_t OUTLINED_FUNCTION_135_1(uint64_t result)
{
  *(v1 + 408) = result;
  *(v2 - 128) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_224_0()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_224_1()
{
  result = v0;
  v4 = *(v2 - 152);
  *(v2 - 576) = *(v1 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_124_0()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_117_3()
{

  return sub_1DC517E9C();
}

BOOL OUTLINED_FUNCTION_117_4(NSObject *a1)
{

  return os_log_type_enabled(a1, v1);
}

uint64_t OUTLINED_FUNCTION_117_5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 - 320);

  return __swift_storeEnumTagSinglePayload(a1, a2, a3, v5);
}

uint64_t OUTLINED_FUNCTION_117_6()
{
  v2 = *(v0 - 200);
}

uint64_t OUTLINED_FUNCTION_117_7()
{

  return sub_1DC517F6C();
}

uint64_t sub_1DC2C4B5C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_166_0()
{
  v3 = *(v1 - 160);

  return sub_1DC301FE0(v3, v0);
}

uint64_t OUTLINED_FUNCTION_166_1()
{

  return sub_1DC51501C();
}

void OUTLINED_FUNCTION_166_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 - 112) = a7;
  *(v8 - 104) = a8;
  *(v8 - 120) = a6;
  *(v8 - 124) = a5;
  *(v8 - 144) = a3;
  *(v8 - 136) = a4;
  v9 = *(v8 + 24);
  *(v8 - 96) = *(v8 + 16);
  *(v8 - 88) = v9;
}

uint64_t sub_1DC2C4C10()
{
  OUTLINED_FUNCTION_178();
  v1 = sub_1DC510C8C();
  OUTLINED_FUNCTION_52(v1);
  v4 = (*(v3 + 64) + ((*(v2 + 80) + 24) & ~*(v2 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = OUTLINED_FUNCTION_56_0();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_10(v7);
  v9 = (v4 + *(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = *(v0 + 16);
  v11 = v0 + v4;
  v12 = *(v0 + v4);
  v13 = *(v11 + 8);
  v14 = OUTLINED_FUNCTION_56_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v14, v15);
  sub_1DC51089C();
  OUTLINED_FUNCTION_233();
  v17 = *(v16 + 856);
  OUTLINED_FUNCTION_179();
  return v18();
}

uint64_t OUTLINED_FUNCTION_168_0()
{

  return sub_1DC51777C();
}

uint64_t OUTLINED_FUNCTION_168_2()
{
}

void sub_1DC2C4D9C()
{
  OUTLINED_FUNCTION_33();
  v128 = v3;
  v127 = v4;
  v123 = v5;
  v132 = v6;
  v7 = sub_1DC516F7C();
  v8 = OUTLINED_FUNCTION_0(v7);
  v130 = v9;
  v131 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_15();
  v129 = v12;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_23_1();
  v125 = v14;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_23_1();
  v122 = v16;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_62();
  v124 = v18;
  OUTLINED_FUNCTION_12();
  v19 = sub_1DC510C8C();
  v20 = OUTLINED_FUNCTION_0(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_2_1();
  v126 = v25;
  v26 = (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7CD30, &qword_1DC524D20) - 8);
  v27 = *(*v26 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v121 - v29;
  v31 = OUTLINED_FUNCTION_147_0();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(v31, v32);
  v34 = OUTLINED_FUNCTION_10(v33);
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_53_4();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_101_0();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_42_3();
  OUTLINED_FUNCTION_90();
  v39(v2, v132, v19);
  OUTLINED_FUNCTION_61();
  __swift_storeEnumTagSinglePayload(v40, v41, v42, v19);
  OUTLINED_FUNCTION_38_1();
  v44 = *(v43 + 320);
  v132 = v0;
  v44();
  v45 = v26[14];
  sub_1DC28F308(v2, v30, &qword_1ECC7CD00, &unk_1DC5259F0);
  sub_1DC28F308(v1, &v30[v45], &qword_1ECC7CD00, &unk_1DC5259F0);
  OUTLINED_FUNCTION_30_8(v30);
  if (v60)
  {
    OUTLINED_FUNCTION_59_2();
    sub_1DC28EB30(v46, v47, v48);
    OUTLINED_FUNCTION_59_2();
    sub_1DC28EB30(v49, v50, v51);
    OUTLINED_FUNCTION_30_8(&v30[v45]);
    if (v60)
    {
      v52 = sub_1DC28EB30(v30, &qword_1ECC7CD00, &unk_1DC5259F0);
      v54 = v131;
      v53 = v132;
      v55 = v130;
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  v56 = OUTLINED_FUNCTION_146_1();
  sub_1DC28F308(v56, v57, v58, v59);
  OUTLINED_FUNCTION_30_8(&v30[v45]);
  if (v60)
  {
    OUTLINED_FUNCTION_59_2();
    sub_1DC28EB30(v61, v62, v63);
    OUTLINED_FUNCTION_59_2();
    sub_1DC28EB30(v64, v65, v66);
    v67 = *(v22 + 8);
    v68 = OUTLINED_FUNCTION_30();
    v69(v68);
LABEL_9:
    sub_1DC28EB30(v30, &unk_1ECC7CD30, &qword_1DC524D20);
    v54 = v131;
    v55 = v130;
    goto LABEL_10;
  }

  (*(v22 + 32))(v126, &v30[v45], v19);
  OUTLINED_FUNCTION_8_9();
  sub_1DC293BE4(v74, v75);
  OUTLINED_FUNCTION_42_2();
  v76 = sub_1DC5176CC();
  v77 = *(v22 + 8);
  v78 = OUTLINED_FUNCTION_35_0();
  v77(v78);
  v79 = OUTLINED_FUNCTION_62_2();
  sub_1DC28EB30(v79, v80, &unk_1DC5259F0);
  OUTLINED_FUNCTION_119_1();
  sub_1DC28EB30(v81, v82, v83);
  v84 = OUTLINED_FUNCTION_30();
  v77(v84);
  OUTLINED_FUNCTION_119_1();
  v52 = sub_1DC28EB30(v85, v86, v87);
  v54 = v131;
  v53 = v132;
  v55 = v130;
  if ((v76 & 1) == 0)
  {
LABEL_10:
    sub_1DC28D414();
    OUTLINED_FUNCTION_18_13();
    v70 = v129;
    v71(v129);
    v72 = sub_1DC516F6C();
    v73 = sub_1DC517BAC();
    if (OUTLINED_FUNCTION_14_7(v73))
    {
      goto LABEL_24;
    }

    goto LABEL_25;
  }

LABEL_13:
  v88 = (*(*v53 + 344))(v52);
  if (v127)
  {
    v90 = v128;
    if (!v89)
    {
      goto LABEL_23;
    }

    if (v88 != v123 || v89 != v127)
    {
      sub_1DC51825C();
      OUTLINED_FUNCTION_23_2();

      if (v53)
      {
        goto LABEL_28;
      }

LABEL_23:
      sub_1DC28D414();
      OUTLINED_FUNCTION_18_13();
      v70 = v125;
      v92(v125);
      v72 = sub_1DC516F6C();
      v93 = sub_1DC517BAC();
      if (OUTLINED_FUNCTION_14_7(v93))
      {
LABEL_24:
        v94 = OUTLINED_FUNCTION_35_8();
        OUTLINED_FUNCTION_81_2(v94);
        OUTLINED_FUNCTION_16_0();
        _os_log_impl(v95, v96, v97, v98, v99, 2u);
        OUTLINED_FUNCTION_31();
      }

LABEL_25:

      (*(v55 + 8))(v70, v54);
      OUTLINED_FUNCTION_233();
      (*(v100 + 376))(0);
      goto LABEL_26;
    }
  }

  else
  {
    v90 = v128;
    if (v89)
    {

      goto LABEL_23;
    }
  }

LABEL_28:
  if (v90 == 2)
  {
    sub_1DC28D414();
    OUTLINED_FUNCTION_18_13();
    v101 = v122;
    v102(v122);
    v103 = sub_1DC516F6C();
    v104 = sub_1DC517BAC();
    if (OUTLINED_FUNCTION_14_7(v104))
    {
      v105 = OUTLINED_FUNCTION_35_8();
      OUTLINED_FUNCTION_81_2(v105);
      OUTLINED_FUNCTION_16_0();
      _os_log_impl(v106, v107, v108, v109, v110, 2u);
      OUTLINED_FUNCTION_31();
    }

    (*(v55 + 8))(v101, v54);
    OUTLINED_FUNCTION_233();
    (*(v111 + 376))(0);
  }

  else
  {
    (*(*v53 + 376))(v90);
    sub_1DC28D414();
    OUTLINED_FUNCTION_18_13();
    v112(v124);
    v113 = sub_1DC516F6C();
    v114 = sub_1DC517B8C();
    if (OUTLINED_FUNCTION_14_7(v114))
    {
      v115 = OUTLINED_FUNCTION_249();
      *v115 = 67109120;
      v115[1] = v90 & 1;
      OUTLINED_FUNCTION_16_0();
      _os_log_impl(v116, v117, v118, v119, v120, 8u);
      OUTLINED_FUNCTION_31();
    }

    (*(v55 + 8))(v124, v54);
  }

  sub_1DC2C5568();
LABEL_26:
  OUTLINED_FUNCTION_34();
}

void sub_1DC2C5568()
{
  OUTLINED_FUNCTION_33();
  HIDWORD(v48) = v1;
  OUTLINED_FUNCTION_38_2();
  v49 = sub_1DC516F7C();
  v2 = OUTLINED_FUNCTION_0(v49);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_56_2();
  v7 = sub_1DC5168FC();
  v8 = OUTLINED_FUNCTION_0(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_1();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7CD08, &unk_1DC524D00);
  OUTLINED_FUNCTION_10(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v48 - v17;
  v19 = sub_1DC516F5C();
  v20 = OUTLINED_FUNCTION_0(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_1();
  v27 = v26 - v25;
  sub_1DC29B898();
  OUTLINED_FUNCTION_38_1();
  (*(v28 + 440))();
  OUTLINED_FUNCTION_39(v18, 1, v19);
  if (v29)
  {
    sub_1DC28EB30(v18, &unk_1ECC7CD08, &unk_1DC524D00);
    sub_1DC28D414();
    OUTLINED_FUNCTION_55_10();
    v30(v0);
    v31 = sub_1DC516F6C();
    sub_1DC517BAC();
    OUTLINED_FUNCTION_116();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = OUTLINED_FUNCTION_35_8();
      OUTLINED_FUNCTION_52_1(v33);
      OUTLINED_FUNCTION_51_8(&dword_1DC287000, v34, v35, "Can't get end setup signpost id, that should not happen");
      OUTLINED_FUNCTION_58();
    }

    v36 = *(v4 + 8);
    v37 = OUTLINED_FUNCTION_187();
    v38(v37);
  }

  else
  {
    (*(v22 + 32))(v27, v18, v19);
    v39 = sub_1DC29BA28();
    static SignpostLogger.end(_:_:)(v27, *v39, v39[1], *(v39 + 16), &unk_1F57F9698, &off_1F57F95E8);
    sub_1DC2A0AE0();
    OUTLINED_FUNCTION_82_2();
    v40 = OUTLINED_FUNCTION_213_0();
    v41(v40);
    *(swift_allocObject() + 16) = BYTE4(v48);
    sub_1DC5168CC();

    v42 = *(v10 + 8);
    v43 = OUTLINED_FUNCTION_16();
    v44(v43);
    v45 = *(v22 + 8);
    v46 = OUTLINED_FUNCTION_89();
    v47(v46);
  }

  OUTLINED_FUNCTION_34();
}

void static SignpostLogger.end(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1DC517CDC();
  v7 = *(a6 + 8);
  v8 = OUTLINED_FUNCTION_31_0();
  v10 = v9(v8);
  OUTLINED_FUNCTION_17_9();
  sub_1DC516F2C();
}

id sub_1DC2C599C(uint64_t a1, uint64_t a2, void *a3, void **a4)
{
  if (*a3 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_8_11();
  v5 = *a4;

  return v5;
}

uint64_t sub_1DC2C5A20()
{
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CE30, &unk_1DC524E20);
  v2 = (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7CE38, &unk_1DC528570) - 8);
  v3 = *(*v2 + 72);
  v4 = (*(*v2 + 80) + 32) & ~*(*v2 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1DC522F00;
  v6 = v5 + v4;
  v7 = (v5 + v4 + v2[14]);
  sub_1DC51680C();
  v8 = sub_1DC2A0C74();
  v10 = *v8;
  v9 = *(v8 + 1);
  *v7 = v10;
  v7[1] = v9;
  v11 = (v6 + v3 + v2[14]);

  sub_1DC51687C();
  *v11 = sub_1DC2A0C80(2);
  v11[1] = v12;
  v13 = v6 + 2 * v3;
  sub_1DC51685C();
  v14 = 1702195828;
  if ((v1 & 1) == 0)
  {
    v14 = 0x65736C6166;
  }

  v15 = 0xE500000000000000;
  if (v1)
  {
    v15 = 0xE400000000000000;
  }

  if (v1 == 2)
  {
    v16 = 7104846;
  }

  else
  {
    v16 = v14;
  }

  if (v1 == 2)
  {
    v17 = 0xE300000000000000;
  }

  else
  {
    v17 = v15;
  }

  v18 = (v13 + v2[14]);
  MEMORY[0x1E1296160](v16, v17);

  *v18 = 0;
  v18[1] = 0xE000000000000000;
  return v5;
}

uint64_t sub_1DC2C5CD4()
{
  v0 = sub_1DC510C8C();
  v1 = OUTLINED_FUNCTION_0(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_1();
  v8 = v7 - v6;
  v9 = sub_1DC516F5C();
  v10 = OUTLINED_FUNCTION_0(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_1();
  v17 = v16 - v15;
  sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
  sub_1DC2C5EF4();
  sub_1DC516F3C();
  sub_1DC517CEC();
  v18 = sub_1DC2C5EF4();
  sub_1DC516F2C();

  v19 = *(v22 + OBJC_IVAR___SiriNLUOverrideProxy_store);

  sub_1DC510B7C();
  sub_1DC51635C();
  (*(v3 + 8))(v8, v0);
  sub_1DC517CDC();
  v20 = sub_1DC2C5EF4();
  sub_1DC516F2C();

  return (*(v12 + 8))(v17, v9);
}

id sub_1DC2C5EF4()
{
  if (_MergedGlobals_17 != -1)
  {
    swift_once();
  }

  v0 = qword_1EDAC9590;

  return v0;
}

uint64_t sub_1DC2C5F70@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_referenceResolutionProxy;
  OUTLINED_FUNCTION_72_6();
  swift_beginAccess();
  return sub_1DC2C5FC4(v1 + v3, a1);
}

uint64_t sub_1DC2C5FC4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  OUTLINED_FUNCTION_7_1(v3);
  (*v4)(a2);
  return a2;
}

void sub_1DC2C6024()
{
  OUTLINED_FUNCTION_33();
  v2 = v0;
  v60 = v3;
  v61 = v4;
  v62 = v5;
  v64 = v6;
  v65 = v7;
  v8 = sub_1DC510B6C();
  v9 = OUTLINED_FUNCTION_0(v8);
  v66 = v10;
  v67 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_1();
  v63 = v14 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D340, &qword_1DC525380);
  OUTLINED_FUNCTION_10(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v18);
  v59 = &v59 - v19;
  OUTLINED_FUNCTION_12();
  v20 = sub_1DC515DFC();
  v21 = OUTLINED_FUNCTION_0(v20);
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_40_3();
  v26 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C1D0, &qword_1DC522FB0) - 8);
  v27 = *(*v26 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v59 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C1D8, &qword_1DC529390);
  v32 = OUTLINED_FUNCTION_10(v31);
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_8();
  v37 = v35 - v36;
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v59 - v39;
  (*(v23 + 104))(&v59 - v39, *MEMORY[0x1E69D04C8], v20);
  OUTLINED_FUNCTION_61();
  __swift_storeEnumTagSinglePayload(v41, v42, v43, v20);
  v44 = v26[14];
  sub_1DC28F308(v62, v30, &qword_1ECC7C1D8, &qword_1DC529390);
  sub_1DC28F308(v40, &v30[v44], &qword_1ECC7C1D8, &qword_1DC529390);
  OUTLINED_FUNCTION_14_2(v30);
  if (!v47)
  {
    sub_1DC28F308(v30, v37, &qword_1ECC7C1D8, &qword_1DC529390);
    OUTLINED_FUNCTION_14_2(&v30[v44]);
    if (!v47)
    {
      (*(v23 + 32))(v1, &v30[v44], v20);
      sub_1DC2C9418(&qword_1ECC7BB50, MEMORY[0x1E69D04D0]);
      v46 = sub_1DC5176CC();
      v48 = *(v23 + 8);
      v48(v1, v20);
      sub_1DC28EB30(v40, &qword_1ECC7C1D8, &qword_1DC529390);
      v48(v37, v20);
      sub_1DC28EB30(v30, &qword_1ECC7C1D8, &qword_1DC529390);
      v45 = v64;
      v49 = v65;
      goto LABEL_11;
    }

    sub_1DC28EB30(v40, &qword_1ECC7C1D8, &qword_1DC529390);
    (*(v23 + 8))(v37, v20);
    v45 = v64;
    goto LABEL_9;
  }

  sub_1DC28EB30(v40, &qword_1ECC7C1D8, &qword_1DC529390);
  OUTLINED_FUNCTION_14_2(&v30[v44]);
  v45 = v64;
  if (!v47)
  {
LABEL_9:
    sub_1DC28EB30(v30, &qword_1ECC7C1D0, &qword_1DC522FB0);
    v46 = 0;
    goto LABEL_10;
  }

  sub_1DC28EB30(v30, &qword_1ECC7C1D8, &qword_1DC529390);
  v46 = 1;
LABEL_10:
  v49 = v65;
LABEL_11:
  *(v2 + _MergedGlobals_18) = v46 & 1;
  sub_1DC2C664C();
  if ((*(*v2 + qword_1ECC8F590 + 232))())
  {
    v50 = v59;
    (*(*v2 + qword_1ECC8F590 + 160))();
    OUTLINED_FUNCTION_183();
    (*(v51 + 672))(v45, v49, v60, v61, v50);

    sub_1DC28EB30(v50, &unk_1ECC7D340, &qword_1DC525380);
  }

  sub_1DC28FB9C(v2 + qword_1ECC7BCF0, v69);
  v52 = v70;
  v53 = v71;
  __swift_project_boxed_opaque_existential_1(v69, v70);
  v54 = v63;
  sub_1DC5169EC();
  v68[3] = type metadata accessor for NLRequestProcessor();
  v68[4] = &off_1F57FCBA0;
  v68[0] = v2;
  v55 = *(*v2 + qword_1ECC8F590 + 328);

  v57 = v55(v56);
  (*(v53 + 40))(v54, v45, v49, v68, v57, v58, v52, v53);

  (*(v66 + 8))(v54, v67);
  __swift_destroy_boxed_opaque_existential_1Tm(v68);
  __swift_destroy_boxed_opaque_existential_1Tm(v69);
  OUTLINED_FUNCTION_34();
}

void sub_1DC2C664C()
{
  OUTLINED_FUNCTION_33();
  v3 = v1;
  v4 = sub_1DC515E1C();
  v5 = OUTLINED_FUNCTION_0(v4);
  v88 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1();
  v87 = v10 - v9;
  OUTLINED_FUNCTION_12();
  v11 = sub_1DC516F7C();
  v12 = OUTLINED_FUNCTION_0(v11);
  v90 = v13;
  v91 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_8();
  v89 = v16 - v17;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v87 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D340, &qword_1DC525380);
  v22 = OUTLINED_FUNCTION_10(v21);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_2_34();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_98_1();
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v87 - v27;
  OUTLINED_FUNCTION_38_1();
  v30 = *(v29 + qword_1ECC8F590 + 160);
  v30();
  if (OUTLINED_FUNCTION_69_0(v28) == 1)
  {
LABEL_2:
    sub_1DC28EB30(v28, &unk_1ECC7D340, &qword_1DC525380);
    v31 = sub_1DC28D414();
    v32 = v89;
    v33 = v90;
    v34 = v91;
    (*(v90 + 16))(v89, v31, v91);

    v35 = sub_1DC516F6C();
    v36 = sub_1DC517BAC();

    if (OUTLINED_FUNCTION_63_10())
    {
      v37 = OUTLINED_FUNCTION_63();
      v38 = OUTLINED_FUNCTION_82();
      *&v92[0] = v38;
      *v37 = 136315138;
      v30();
      if (OUTLINED_FUNCTION_69_0(v2))
      {
        sub_1DC28EB30(v2, &unk_1ECC7D340, &qword_1DC525380);
        v39 = 0xE300000000000000;
        v40 = 7104878;
      }

      else
      {
        v65 = v87;
        v64 = v88;
        (*(v88 + 16))(v87, v2, v4);
        sub_1DC28EB30(v2, &unk_1ECC7D340, &qword_1DC525380);
        v40 = sub_1DC515E0C();
        v39 = v66;
        (*(v64 + 8))(v65, v4);
      }

      v67 = v89;
      v68 = sub_1DC291244(v40, v39, v92);

      *(v37 + 4) = v68;
      _os_log_impl(&dword_1DC287000, v35, v36, "Unexpected requestType %s", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v38);
      OUTLINED_FUNCTION_66();
      OUTLINED_FUNCTION_66();

      (*(v90 + 8))(v67, v91);
    }

    else
    {

      (*(v33 + 8))(v32, v34);
    }

    goto LABEL_46;
  }

  sub_1DC28F308(v28, v0, &unk_1ECC7D340, &qword_1DC525380);
  v41 = *(v88 + 88);
  v42 = OUTLINED_FUNCTION_115();
  v44 = v43(v42);
  if (v44 != *MEMORY[0x1E69D0548] && v44 != *MEMORY[0x1E69D0530] && v44 != *MEMORY[0x1E69D0510] && v44 != *MEMORY[0x1E69D0508])
  {
    if (v44 == *MEMORY[0x1E69D0538] || v44 == *MEMORY[0x1E69D0528] || v44 == *MEMORY[0x1E69D0558] || v44 == *MEMORY[0x1E69D0540] || v44 == *MEMORY[0x1E69D0560])
    {
      goto LABEL_2;
    }

    if (v44 == *MEMORY[0x1E69D0518])
    {
      OUTLINED_FUNCTION_64_2();
      if ((*(v63 + qword_1ECC8F590 + 256))())
      {
      }

      else
      {
        v91 = type metadata accessor for DictationNLRequestHandler();
        v74 = sub_1DC51699C();
        v76 = v75;
        v77 = sub_1DC51697C();
        v79 = v78;
        v80 = sub_1DC5169DC();
        v82 = v81;
        v83 = sub_1DC5169BC();
        sub_1DC28FB9C(v3 + qword_1ECC7BCF0, v92);
        v84 = *sub_1DC2C98E0();

        sub_1DC450F3C(v74, v76, v77, v79, v80, v82, v83, v92, v85);
        OUTLINED_FUNCTION_64_2();
        (*(v86 + qword_1ECC8F590 + 264))();
      }

      sub_1DC28EB30(v28, &unk_1ECC7D340, &qword_1DC525380);
      goto LABEL_46;
    }

    if (v44 != *MEMORY[0x1E69D0550])
    {
      v71 = *(v88 + 8);
      v72 = OUTLINED_FUNCTION_115();
      v73(v72);
      goto LABEL_2;
    }
  }

  v48 = sub_1DC28EB30(v28, &unk_1ECC7D340, &qword_1DC525380);
  v49 = *(*v1 + qword_1ECC8F590 + 232);
  if (v49(v48))
  {

    v51 = v49(v50);
    if (v51)
    {
      (*(*v51 + 520))(*(v1 + _MergedGlobals_18));
    }

    v52 = sub_1DC28D414();
    v54 = v90;
    v53 = v91;
    (*(v90 + 16))(v20, v52, v91);
    v55 = sub_1DC516F6C();
    v56 = sub_1DC517BAC();
    if (os_log_type_enabled(v55, v56))
    {
      *OUTLINED_FUNCTION_35_8() = 0;
      OUTLINED_FUNCTION_20_2(&dword_1DC287000, v57, v58, "assistantRequestHandler had already been constructed by the time we entered initializeRequestHandler");
      OUTLINED_FUNCTION_31();
    }

    (*(v54 + 8))(v20, v53);
  }

  else
  {
    OUTLINED_FUNCTION_64_2();
    v70 = (*(v69 + qword_1ECC8F590 + 632))();
    (*(*v1 + qword_1ECC8F590 + 240))(v70);
  }

LABEL_46:
  OUTLINED_FUNCTION_34();
}

uint64_t sub_1DC2C6E10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, __int128 *a8, __int128 *a9, __int128 *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, char a18, char a19, __int128 *a20, __int128 *a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, __int128 *a26)
{
  v30 = OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_turnInputsByRcId;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D320, &qword_1DC5283A0);
  OUTLINED_FUNCTION_74_0();
  *(v26 + v30) = sub_1DC51764C();
  v31 = OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_turnInputsByTcuId;
  OUTLINED_FUNCTION_74_0();
  *(v26 + v31) = sub_1DC51764C();
  v32 = OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_nluRequestIdToResultCandidate;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D328, &qword_1DC5283A8);
  OUTLINED_FUNCTION_74_0();
  v33 = sub_1DC51764C();

  *(v26 + v32) = v33;
  v34 = (v26 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_selectedRcId);
  *v34 = 0;
  v34[1] = 0;
  *(v26 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_didUpdateTurnContainer) = 0;
  v35 = OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_isMUXEnabled;
  *(v26 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_isMUXEnabled) = 0;
  v36 = OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_pullingEntitiesOnSiriPrompt;
  *(v26 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_pullingEntitiesOnSiriPrompt) = 0;
  v37 = MEMORY[0x1E69E7CC8];
  *(v26 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_turnConstructionCandidateIdToTrpId) = MEMORY[0x1E69E7CC8];
  *(v26 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_trpIdToTcuIdMapping) = v37;
  *(v26 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_deviceSupportsPersona) = 0;
  *(v26 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_turnConstructionCandidateIdToNLUResponse) = v37;
  *(v26 + 56) = a1;
  *(v26 + 64) = a2;
  v38 = OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_sessionId;
  v39 = sub_1DC510B6C();
  OUTLINED_FUNCTION_35(v39);
  (*(v40 + 32))(v26 + v38, a3);
  v41 = (v26 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_rootRequestId);
  *v41 = a4;
  v41[1] = a5;
  v42 = (v26 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_requestId);
  *v42 = a6;
  v42[1] = a7;
  sub_1DC28F9B0(a8, v26 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_messagePublisher);
  sub_1DC28F9B0(a9, v26 + 16);
  sub_1DC28F9B0(a10, v26 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_sessionState);
  *(v26 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_turnInputManager) = a11;
  *(v26 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_instrumentationUtil) = a12;
  v43 = OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_sessionUserId;
  v44 = sub_1DC5162DC();
  OUTLINED_FUNCTION_35(v44);
  (*(v45 + 32))(v26 + v43, a13);
  *(v26 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_userIdDict) = a14;
  v46 = (v26 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_siriInputLocale);
  *v46 = a16;
  v46[1] = a17;
  *(v26 + v35) = a18;
  swift_beginAccess();
  *(v26 + v36) = a19;
  sub_1DC28F9B0(a20, v26 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_referenceResolutionProxy);
  sub_1DC28F9B0(a21, v26 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_serverFallbackDisablingUtils);
  *(v26 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_lvcHistory) = a22;
  *(v26 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_rvsHistory) = a23;
  *(v26 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_isMultilingualResponseVariantSelectorEnabled) = a24;
  *(v26 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_serviceHelper) = a25;
  sub_1DC28F9B0(a26, v26 + OBJC_IVAR____TtC13CDMFoundation25AssistantNLRequestHandler_cmdPersonaManager);
  return v26;
}

uint64_t sub_1DC2C71A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, __int128 *a8, __int128 *a9, __int128 *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, char a18, char a19, __int128 *a20, __int128 *a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, __int128 *a26)
{
  v28 = *(v26 + 48);
  v29 = *(v26 + 52);
  v30 = swift_allocObject();
  sub_1DC2C6E10(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
  return v30;
}

void sub_1DC2C72A0()
{
  OUTLINED_FUNCTION_33();
  v3 = sub_1DC5162DC();
  v4 = OUTLINED_FUNCTION_0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2_4();
  v9 = sub_1DC510B6C();
  v10 = OUTLINED_FUNCTION_10(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_65();
  v34 = v2;
  type metadata accessor for AssistantNLRequestHandler(0);
  v36 = sub_1DC51699C();
  v35 = v13;
  sub_1DC5169EC();
  v33 = sub_1DC51697C();
  v32 = v14;
  v31 = sub_1DC5169DC();
  v30 = v15;
  sub_1DC5169CC();
  sub_1DC28FB9C(v0 + qword_1ECC7BCF0, v41);
  sub_1DC28FB9C(v0 + qword_1ECC8F5D8, v40);
  v29 = *(v0 + qword_1EDAC95A0);

  v28 = *sub_1DC2C98E0();
  (*(v6 + 16))(v1, v0 + qword_1ECC8F5D0, v3);
  v16 = *(v0 + qword_1ECC8F5E8);

  v27 = sub_1DC5169AC();
  v17 = *(v0 + qword_1EDAC95B0 + 8);
  v26 = *(v0 + qword_1EDAC95B0);
  v18 = *(v0 + qword_1EDAC95A8);
  v19 = *(v0 + _MergedGlobals_18);
  v20 = *(*v0 + qword_1ECC8F590 + 360);

  v22 = v20(v21);
  OUTLINED_FUNCTION_38_1();
  v24 = (*(v23 + qword_1ECC8F590 + 384))();
  v25 = sub_1DC5169BC();
  sub_1DC36549C();
  sub_1DC2C7648(v38);
  LOBYTE(v6) = sub_1DC2C7704();
  sub_1DC2C760C();
  sub_1DC2C71A8(v36, v35, v34, v33, v32, v31, v30, v42, v41, v40, v29, v28, v1, v16, v27, v26, v17, v18, v19, &v39, v38, v22, v24, v6 & 1, v25, &v37);
  OUTLINED_FUNCTION_34();
}

uint64_t sub_1DC2C760C()
{
  OUTLINED_FUNCTION_57_0();
  v1 = type metadata accessor for CDMPersonaManager();
  result = sub_1DC2BA4FC();
  v0[3] = v1;
  v0[4] = &off_1F57F9B10;
  *v0 = result;
  return result;
}

uint64_t sub_1DC2C7648@<X0>(uint64_t *a1@<X8>)
{
  v2 = [objc_opt_self() sharedPreferences];
  OUTLINED_FUNCTION_38_2();
  v3 = sub_1DC516ABC();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_1DC516ACC();
  v7 = MEMORY[0x1E69D2B28];
  a1[3] = v3;
  a1[4] = v7;
  *a1 = result;
  return result;
}

uint64_t sub_1DC2C7730()
{
  OUTLINED_FUNCTION_36_7();
  v1 = *(v0 + 16);
}

uint64_t sub_1DC2C7760()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7CA30, &qword_1DC522A00);
  OUTLINED_FUNCTION_10(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_113();
  v5 = sub_1DC510B6C();
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1();
  v13 = v12 - v11;
  sub_1DC510B0C();
  if (__swift_getEnumTagSinglePayload(v0, 1, v5) == 1)
  {
    sub_1DC510B5C();
    if (__swift_getEnumTagSinglePayload(v0, 1, v5) != 1)
    {
      sub_1DC2BE530(v0, &unk_1ECC7CA30, &qword_1DC522A00);
    }
  }

  else
  {
    (*(v8 + 32))(v13, v0, v5);
  }

  OUTLINED_FUNCTION_12_0();
  (*(v14 + 320))(v13);
  v15 = *(v8 + 8);
  v16 = OUTLINED_FUNCTION_30_6();
  return v17(v16);
}

uint64_t sub_1DC2C7908()
{
  v0 = sub_1DC516F7C();
  v1 = OUTLINED_FUNCTION_0(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_1();
  v8 = v7 - v6;
  OUTLINED_FUNCTION_12_0();
  if ((*(v9 + 120))())
  {
    sub_1DC516E2C();
  }

  else
  {
    sub_1DC28D414();
    OUTLINED_FUNCTION_10_7();
    v11(v8);
    v12 = sub_1DC516F6C();
    v13 = sub_1DC517BAC();
    if (OUTLINED_FUNCTION_25_0(v13))
    {
      OUTLINED_FUNCTION_11();
      v14 = swift_slowAlloc();
      OUTLINED_FUNCTION_19_3();
      v15 = swift_slowAlloc();
      v22 = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_1DC291244(0xD00000000000001DLL, 0x80000001DC53E620, &v22);
      OUTLINED_FUNCTION_40_8();
      _os_log_impl(v16, v17, v18, v19, v20, v21);
      __swift_destroy_boxed_opaque_existential_1Tm(v15);
      OUTLINED_FUNCTION_8_0();
      MEMORY[0x1E1298840]();
      OUTLINED_FUNCTION_8_0();
      MEMORY[0x1E1298840]();
    }

    return (*(v3 + 8))(v8, v0);
  }
}

uint64_t sub_1DC2C7AEC()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_1DC2C7760();
}

uint64_t sub_1DC2C7AF8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v2 + 64);
  OUTLINED_FUNCTION_37_3();
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = a1;
  v7[4] = a2;
  OUTLINED_FUNCTION_27_5();
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1DC2C7AEC;
  *(v8 + 24) = v7;
  v12[4] = sub_1DC2929F4;
  v12[5] = v8;
  OUTLINED_FUNCTION_13_1();
  v12[1] = 1107296256;
  OUTLINED_FUNCTION_5_0();
  v12[2] = v9;
  v12[3] = &block_descriptor_1;
  v10 = _Block_copy(v12);

  dispatch_sync(v6, v10);
  _Block_release(v10);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DC2C7C3C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  OUTLINED_FUNCTION_37_3();

  return MEMORY[0x1EEE6BDD0](v3, v4, v5);
}

uint64_t objectdestroyTm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t objectdestroyTm_0(void (*a1)(void), void (*a2)(void))
{
  v5 = v2[2];
  swift_unknownObjectRelease();
  v6 = v2[4];

  a1(v2[5]);
  a2(v2[6]);

  return MEMORY[0x1EEE6BDD0](v2, 56, 7);
}

uint64_t OUTLINED_FUNCTION_165_0()
{
  *(v1 - 192) = v0;

  return swift_unknownObjectRetain();
}

uint64_t OUTLINED_FUNCTION_165_2()
{

  return sub_1DC5111AC();
}

uint64_t OUTLINED_FUNCTION_165_3()
{
  v3 = v0;
  v4 = *(v1 - 224);

  return MEMORY[0x1EEE3C3C0](v3);
}

void sub_1DC2C7E10()
{
  OUTLINED_FUNCTION_33();
  v3 = v2;
  v139 = v4;
  v6 = v5;
  v8 = v7;
  v9 = sub_1DC51735C();
  v10 = OUTLINED_FUNCTION_0(v9);
  v137 = v11;
  v138 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_113();
  v136 = sub_1DC5173EC();
  v14 = OUTLINED_FUNCTION_0(v136);
  v135 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_8();
  v20 = v18 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v130 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D330, &unk_1DC5283B0);
  OUTLINED_FUNCTION_10(v24);
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v27);
  v147 = &v130 - v28;
  OUTLINED_FUNCTION_12();
  v144 = sub_1DC516F7C();
  v29 = OUTLINED_FUNCTION_0(v144);
  v148 = v30;
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_23_1();
  v146 = v34;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v130 - v37;
  v39 = sub_1DC516F5C();
  v40 = OUTLINED_FUNCTION_0(v39);
  v142 = v41;
  v143 = v40;
  v43 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_28_0();
  v44 = sub_1DC2C8E84();
  v45 = *v44;
  v46 = v44[1];
  v140 = v44;
  v47 = *(v44 + 16);
  v141 = v0;
  OUTLINED_FUNCTION_33_6(v45, v46, v47, v48, &unk_1F57F9698, &off_1F57F95E8);
  v49 = v6[6];
  v149 = v3;
  v145 = v8;
  if (!v49 || !v3)
  {
    goto LABEL_9;
  }

  v50 = v6[5];
  v51 = v6[7];
  v52 = OUTLINED_FUNCTION_28_6();
  sub_1DC312D3C(v52, v53);
  v54 = OUTLINED_FUNCTION_28_6();
  sub_1DC312D3C(v54, v55);

  v56 = OUTLINED_FUNCTION_28_6();
  sub_1DC2B5848(v56, v57);
  if (v50 == v139 && v49 == v3)
  {

    goto LABEL_22;
  }

  v59 = sub_1DC51825C();

  if (v59)
  {
LABEL_22:
    v116 = sub_1DC28D414();
    v117 = v148;
    v118 = v144;
    (*(v148 + 16))(v38, v116, v144);
    v119 = v149;

    v120 = sub_1DC516F6C();
    v121 = sub_1DC517B9C();

    if (os_log_type_enabled(v120, v121))
    {
      OUTLINED_FUNCTION_11();
      v122 = swift_slowAlloc();
      OUTLINED_FUNCTION_19_3();
      v123 = v117;
      v124 = swift_slowAlloc();
      v151 = v124;
      *v122 = 136315138;
      *(v122 + 4) = sub_1DC291244(v139, v119, &v151);
      OUTLINED_FUNCTION_38_0();
      _os_log_impl(v125, v126, v127, v128, v122, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v124);
      OUTLINED_FUNCTION_8_0();
      MEMORY[0x1E1298840]();
      OUTLINED_FUNCTION_8_0();
      MEMORY[0x1E1298840]();

      (*(v123 + 8))(v38, v118);
    }

    else
    {

      (*(v117 + 8))(v38, v118);
    }

    *v145 = v51;

    goto LABEL_26;
  }

LABEL_9:
  sub_1DC51713C();
  v60 = v147;
  OUTLINED_FUNCTION_19();
  __swift_storeEnumTagSinglePayload(v61, v62, v63, v64);
  v65 = swift_allocObject();
  *(v65 + 16) = MEMORY[0x1E69E7CC0];
  v133 = v65 + 16;
  v66 = dispatch_semaphore_create(0);
  OUTLINED_FUNCTION_37_3();
  v67 = swift_allocObject();
  v67[2] = v66;
  v67[3] = v65;
  v67[4] = v6;
  v68 = *(*v6 + 328);
  v69 = v66;
  v70 = v6;
  v71 = v69;

  v131 = v70;
  v68(v60, sub_1DC312CE4, v67);

  sub_1DC5173DC();
  *v1 = 1500;
  v73 = v137;
  v72 = v138;
  (*(v137 + 104))(v1, *MEMORY[0x1E69E7F38], v138);
  MEMORY[0x1E1295CB0](v20, v1);
  (*(v73 + 8))(v1, v72);
  v74 = *(v135 + 8);
  v75 = v136;
  v74(v20, v136);
  v138 = v71;
  sub_1DC517D0C();
  v74(v23, v75);
  v76 = sub_1DC51736C();
  v77 = v144;
  v78 = v148;
  if (v76)
  {
    sub_1DC28D414();
    OUTLINED_FUNCTION_10_7();
    v79 = v132;
    v80(v132);
    v81 = sub_1DC516F6C();
    v82 = sub_1DC517BAC();
    if (os_log_type_enabled(v81, v82))
    {
      v83 = OUTLINED_FUNCTION_35_8();
      *v83 = 0;
      OUTLINED_FUNCTION_38_0();
      _os_log_impl(v84, v85, v86, v87, v83, 2u);
      OUTLINED_FUNCTION_8_0();
      MEMORY[0x1E1298840]();
    }

    (*(v78 + 8))(v79, v77);
  }

  v88 = sub_1DC28D414();
  v89 = *(v78 + 16);
  v90 = OUTLINED_FUNCTION_31_0();
  v89(v90);

  v91 = sub_1DC516F6C();
  v92 = sub_1DC517B9C();
  if (OUTLINED_FUNCTION_25_0(v92))
  {
    OUTLINED_FUNCTION_11();
    v93 = swift_slowAlloc();
    *v93 = 134217984;
    OUTLINED_FUNCTION_36_7();
    *(v93 + 4) = *(*(v65 + 16) + 16);

    _os_log_impl(&dword_1DC287000, v91, v92, "rrCandidate size = %ld", v93, 0xCu);
    OUTLINED_FUNCTION_8_0();
    MEMORY[0x1E1298840]();
  }

  else
  {
  }

  v94 = v149;

  v95 = *(v78 + 8);
  v148 = v78 + 8;
  v95(v146, v77);
  sub_1DC2BE530(v147, &unk_1ECC7D330, &unk_1DC5283B0);
  OUTLINED_FUNCTION_36_7();
  v96 = *(v65 + 16);

  if (v94)
  {
    v97 = v95;
    v98 = v131;
    v99 = v131[5];
    v100 = v131[6];
    v101 = v131[7];
    v102 = v139;
    v103 = v149;
    v131[5] = v139;
    v98[6] = v103;
    v98[7] = v96;

    v104 = v100;
    v105 = v149;
    sub_1DC2B5848(v99, v104);
    v106 = v89;
    v107 = v134;
    v106(v134, v88, v77);

    v108 = sub_1DC516F6C();
    LOBYTE(v99) = sub_1DC517B9C();

    if (os_log_type_enabled(v108, v99))
    {
      OUTLINED_FUNCTION_11();
      v109 = v105;
      v110 = swift_slowAlloc();
      OUTLINED_FUNCTION_19_3();
      v111 = swift_slowAlloc();
      v150 = v111;
      *v110 = 136315138;
      *(v110 + 4) = sub_1DC291244(v102, v109, &v150);
      OUTLINED_FUNCTION_38_0();
      _os_log_impl(v112, v113, v114, v115, v110, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v111);
      OUTLINED_FUNCTION_8_0();
      MEMORY[0x1E1298840]();
      OUTLINED_FUNCTION_8_0();
      MEMORY[0x1E1298840]();
    }

    v97(v107, v77);
  }

  *v145 = v96;
LABEL_26:
  v129 = v141;
  static SignpostLogger.end(_:_:)(v141, *v140, v140[1], *(v140 + 16), &unk_1F57F9698, &off_1F57F95E8);
  (*(v142 + 8))(v129, v143);
  OUTLINED_FUNCTION_34();
}

uint64_t sub_1DC2C879C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DC2C87D4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  OUTLINED_FUNCTION_37_3();

  return MEMORY[0x1EEE6BDD0](v3, v4, v5);
}

void sub_1DC2C8818()
{
  OUTLINED_FUNCTION_33();
  v1 = v0;
  v2 = sub_1DC516F7C();
  v3 = OUTLINED_FUNCTION_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_1();
  v10 = v9 - v8;
  OUTLINED_FUNCTION_12_0();
  if ((*(v11 + 120))())
  {
    sub_1DC516E0C();
    OUTLINED_FUNCTION_34();
  }

  else
  {
    v13 = sub_1DC28D414();
    (*(v5 + 16))(v10, v13, v2);
    v14 = sub_1DC516F6C();
    v15 = sub_1DC517BAC();
    if (OUTLINED_FUNCTION_25_0(v15))
    {
      OUTLINED_FUNCTION_11();
      v16 = swift_slowAlloc();
      OUTLINED_FUNCTION_19_3();
      v17 = swift_slowAlloc();
      v20 = v17;
      *v16 = 136315138;
      *(v16 + 4) = sub_1DC291244(0xD000000000000032, 0x80000001DC53E640, &v20);
      _os_log_impl(&dword_1DC287000, v14, v15, "%s called before ReferenceResolutionClient has been initialized. Cannot proceed further.", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v17);
      OUTLINED_FUNCTION_8_0();
      MEMORY[0x1E1298840]();
      OUTLINED_FUNCTION_8_0();
      MEMORY[0x1E1298840]();
    }

    (*(v5 + 8))(v10, v2);
    v18 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v19 = OUTLINED_FUNCTION_18_6();
    v1(v19, 1);

    OUTLINED_FUNCTION_34();
  }
}

void sub_1DC2C8A34()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  sub_1DC2C7E10();
}

void sub_1DC2C8A64()
{
  OUTLINED_FUNCTION_33();
  v1 = sub_1DC516F7C();
  v2 = OUTLINED_FUNCTION_0(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_28_0();
  v7 = sub_1DC28D414();
  (*(v4 + 16))(v0, v7, v1);
  v8 = sub_1DC516F6C();
  v9 = sub_1DC517B9C();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = OUTLINED_FUNCTION_35_8();
    *v10 = 0;
    _os_log_impl(&dword_1DC287000, v8, v9, "Calling RRaaS for salientEntities", v10, 2u);
    OUTLINED_FUNCTION_8_0();
    MEMORY[0x1E1298840]();
  }

  v11 = (*(v4 + 8))(v0, v1);
  v12 = *(v0 + 64);
  MEMORY[0x1EEE9AC00](v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C8D0, &qword_1DC523740);
  sub_1DC517BFC();
  OUTLINED_FUNCTION_34();
}

uint64_t sub_1DC2C8C58@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *a1;
  swift_beginAccess();
  return sub_1DC28F308(v4 + v8, a4, a2, a3);
}

void sub_1DC2C8CC4()
{
  OUTLINED_FUNCTION_33();
  v1 = sub_1DC516F7C();
  v2 = OUTLINED_FUNCTION_0(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_28_0();
  sub_1DC28D414();
  OUTLINED_FUNCTION_4_2();
  v7(v0);
  v8 = sub_1DC516F6C();
  v9 = sub_1DC517B9C();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = OUTLINED_FUNCTION_35_8();
    *v10 = 0;
    _os_log_impl(&dword_1DC287000, v8, v9, "Calling SRR for warm-up only", v10, 2u);
    OUTLINED_FUNCTION_146_3();
  }

  v11 = *(v4 + 8);
  v12 = OUTLINED_FUNCTION_151();
  v13(v12);
  OUTLINED_FUNCTION_343();
  (*(v14 + 344))(v17);
  OUTLINED_FUNCTION_121_1(v17, v17[3]);
  OUTLINED_FUNCTION_44_8();
  v15 = OUTLINED_FUNCTION_73();
  v16(v15);

  __swift_destroy_boxed_opaque_existential_1Tm(v17);
  OUTLINED_FUNCTION_34();
}

void sub_1DC2C8EB0()
{
  OUTLINED_FUNCTION_33();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C1D8, &qword_1DC529390);
  OUTLINED_FUNCTION_10(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v55 - v6;
  v8 = sub_1DC516F7C();
  v9 = OUTLINED_FUNCTION_0(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_8();
  v58 = (v14 - v15);
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v55 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D340, &qword_1DC525380);
  OUTLINED_FUNCTION_10(v19);
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_42_11();
  v23 = *MEMORY[0x1E69D0548];
  v24 = sub_1DC515E1C();
  OUTLINED_FUNCTION_35(v24);
  v26 = *(v25 + 104);
  v27 = OUTLINED_FUNCTION_62_12();
  v28(v27);
  v29 = OUTLINED_FUNCTION_25_16();
  __swift_storeEnumTagSinglePayload(v29, v30, v31, v24);
  OUTLINED_FUNCTION_183();
  v33 = OUTLINED_FUNCTION_44_13(v32 + qword_1ECC8F590);
  v34(v33);
  v35 = sub_1DC28D414();
  v56 = *(v11 + 16);
  v57 = v35;
  v36 = v8;
  v56(v18);
  v37 = v1;
  v38 = sub_1DC516F6C();
  v39 = sub_1DC517B9C();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = OUTLINED_FUNCTION_63();
    v55 = v7;
    v41 = v40;
    v42 = OUTLINED_FUNCTION_249();
    *v41 = 138412290;
    *(v41 + 4) = v37;
    *v42 = v37;
    v43 = v37;
    _os_log_impl(&dword_1DC287000, v38, v39, "NLRequestProcessor received message: %@", v41, 0xCu);
    sub_1DC28EB30(v42, &qword_1ECC7DFE0, &qword_1DC5227F0);
    OUTLINED_FUNCTION_66();
    v7 = v55;
    OUTLINED_FUNCTION_66();
  }

  v44 = *(v11 + 8);
  v44(v18, v36);
  OUTLINED_FUNCTION_183();
  if ((*(v45 + qword_1ECC8F590 + 304))())
  {
    v46 = v58;
    (v56)(v58, v57, v36);
    v47 = sub_1DC516F6C();
    v48 = sub_1DC517B9C();
    if (os_log_type_enabled(v47, v48))
    {
      *OUTLINED_FUNCTION_35_8() = 0;
      OUTLINED_FUNCTION_20_2(&dword_1DC287000, v49, v50, "Skipping StartSpeechRequest processing");
      OUTLINED_FUNCTION_31();
    }

    v44(v46, v36);
  }

  else
  {
    sub_1DC515BBC();
    if (swift_dynamicCastClass())
    {
      sub_1DC515BAC();
    }

    sub_1DC515D6C();
    sub_1DC5152AC();
    sub_1DC515DFC();
    OUTLINED_FUNCTION_61();
    __swift_storeEnumTagSinglePayload(v51, v52, v53, v54);
    sub_1DC2C6024();

    sub_1DC28EB30(v7, &qword_1ECC7C1D8, &qword_1DC529390);
  }

  OUTLINED_FUNCTION_34();
}

uint64_t sub_1DC2C92DC()
{
  v1 = qword_1ECC8F5B8;
  OUTLINED_FUNCTION_9_10();
  return *(v0 + v1);
}

uint64_t OUTLINED_FUNCTION_103(uint64_t a1, uint64_t a2)
{
  *(v2 - 96) = a1;
  *(v2 - 88) = a2;
  return v2 - 96;
}

uint64_t OUTLINED_FUNCTION_103_0()
{

  return sub_1DC312FB4(0);
}

uint64_t OUTLINED_FUNCTION_103_1()
{
  v1 = *(v0 - 160);
  v2 = *(*(v0 - 168) + 8);
  return *(v0 - 208);
}

uint64_t sub_1DC2C9418(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DC2C9460()
{
  v2 = v1[11];
  v3 = v1[12];
  v44 = v1[10];
  v45 = v1[13];
  v52 = v1[9];
  v47 = v1[14];
  v49 = v1[8];
  v46 = v1[7];
  v50 = v1[6];
  v4 = v1[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CEC0, &qword_1DC5257C0);
  v5 = sub_1DC516DAC();
  OUTLINED_FUNCTION_0(v5);
  v7 = v6;
  v9 = *(v8 + 72);
  v10 = *(v6 + 80);
  OUTLINED_FUNCTION_190();
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1DC522F10;
  v12 = v11 + v0;
  v13 = *(v7 + 104);
  v13(v12, *MEMORY[0x1E69A9150], v5);
  v13(v12 + v9, *MEMORY[0x1E69A9148], v5);
  sub_1DC5169DC();
  (*(v2 + 16))(v45, v47, v44);
  sub_1DC5169EC();
  sub_1DC510B1C();
  v14 = *(v2 + 8);
  v1[19] = v14;
  v1[20] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v48 = v14;
  (v14)(v3, v44);
  sub_1DC516D2C();
  v15 = objc_allocWithZone(sub_1DC516D0C());
  v53 = sub_1DC516CEC();
  v1[21] = v53;
  v16 = sub_1DC29120C();
  (*(v46 + 16))(v49, v16, v50);
  v17 = sub_1DC516F6C();
  v18 = sub_1DC517B9C();
  if (OUTLINED_FUNCTION_25_0(v18))
  {
    *OUTLINED_FUNCTION_35_8() = 0;
    OUTLINED_FUNCTION_96_1();
    _os_log_impl(v19, v20, v21, v22, v23, 2u);
    OUTLINED_FUNCTION_58();
  }

  v24 = v1[13];
  v25 = v1[10];
  v27 = v1[7];
  v26 = v1[8];
  v29 = v1[5];
  v28 = v1[6];
  v30 = v1[2];

  v31 = *(v27 + 8);
  v32 = OUTLINED_FUNCTION_54_2();
  v33(v32);
  sub_1DC5169EC();
  sub_1DC510B1C();
  v34 = OUTLINED_FUNCTION_45_2();
  v48(v34);
  OUTLINED_FUNCTION_151();
  sub_1DC5151CC();
  v35 = *(v30 + qword_1EDAC9430 + 24);
  v36 = *(v30 + qword_1EDAC9430 + 32);
  OUTLINED_FUNCTION_121_1((v30 + qword_1EDAC9430), v35);
  v37 = *(v36 + 8);
  OUTLINED_FUNCTION_6();
  v51 = (v38 + *v38);
  v40 = *(v39 + 4);
  v41 = swift_task_alloc();
  v1[22] = v41;
  *v41 = v1;
  v41[1] = sub_1DC36BCAC;
  v42 = v1[5];

  return v51(v53, v42, v35, v36);
}

uint64_t sub_1DC2C9834(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = *(MEMORY[0x1E69A8EC8] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1DC37CB8C;

  return MEMORY[0x1EEE11F50](a1, a2);
}

uint64_t *sub_1DC2C98E0()
{
  if (qword_1ECC7FC98 != -1)
  {
    OUTLINED_FUNCTION_5_19();
  }

  return &qword_1ECC8F410;
}

uint64_t sub_1DC2C99C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C0D0, &qword_1DC522A28);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, a2, v4);
  if (EnumTagSinglePayload >= 2)
  {
    return EnumTagSinglePayload - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DC2C9A1C(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C0D0, &qword_1DC522A28);

  return __swift_storeEnumTagSinglePayload(a1, v5, a3, v6);
}

uint64_t sub_1DC2C9A84(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_54(*a1);
  }

  v7 = type metadata accessor for NLRouterOverride(0);
  v8 = a1 + *(a3 + 20);

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

void *sub_1DC2C9B00(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for NLRouterOverride(0);
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DC2C9BA8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DC2C9BE8()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  OUTLINED_FUNCTION_28_4();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1DC2C9C1C()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_27_5();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1DC2C9CD8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DC2C9D18()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  OUTLINED_FUNCTION_27_5();

  return MEMORY[0x1EEE6BDD0](v3, v4, v5);
}

uint64_t sub_1DC2C9E34()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DC2C9E6C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DC2C9EDC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DC2C9FDC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BEB8, &unk_1DC527150);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_1DC2CA030(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BEB8, &unk_1DC527150);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_1DC2CA11C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DC2CA170()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DC2CA1B0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DC2CA1F0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DC2CA230()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DC2CA318()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DC2CA358()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DC2CA398()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DC2CA3DC()
{
  OUTLINED_FUNCTION_33();
  v1 = sub_1DC510C8C();
  OUTLINED_FUNCTION_0(v1);
  v3 = *(v2 + 80);
  v5 = *(v4 + 64);
  v6 = sub_1DC51623C();
  OUTLINED_FUNCTION_0(v6);
  v8 = v7;
  v9 = (((v3 + 24) & ~v3) + v5 + *(v8 + 80)) & ~*(v8 + 80);
  v11 = (*(v10 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(v0 + 16);

  v13 = OUTLINED_FUNCTION_95_0();
  v14(v13);
  (*(v8 + 8))(v0 + v9, v6);
  v15 = *(v0 + v11 + 8);

  OUTLINED_FUNCTION_34();

  return MEMORY[0x1EEE6BDD0](v16, v17, v18);
}

uint64_t sub_1DC2CA514()
{
  v1 = sub_1DC51623C();
  OUTLINED_FUNCTION_0(v1);
  v3 = *(v2 + 80);
  v5 = *(v4 + 64);
  v6 = *(v0 + 16);

  v7 = OUTLINED_FUNCTION_50_9();
  v8(v7);
  v9 = OUTLINED_FUNCTION_177();

  return MEMORY[0x1EEE6BDD0](v9, v10, v11);
}

uint64_t sub_1DC2CA5C0()
{
  v1 = sub_1DC510B6C();
  OUTLINED_FUNCTION_0(v1);
  v4 = (*(v3 + 64) + ((*(v2 + 80) + 24) & ~*(v2 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);

  v6 = OUTLINED_FUNCTION_50_9();
  v7(v6);
  v8 = *(v0 + v4 + 8);

  OUTLINED_FUNCTION_248();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + ((((v4 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)));
  v9 = OUTLINED_FUNCTION_177();

  return MEMORY[0x1EEE6BDD0](v9, v10, v11);
}

uint64_t sub_1DC2CA6A8()
{
  v1 = sub_1DC510B6C();
  OUTLINED_FUNCTION_0(v1);
  v4 = (((*(v3 + 64) + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 24);

  v6 = OUTLINED_FUNCTION_50_9();
  v7(v6);
  v8 = OUTLINED_FUNCTION_177();

  return MEMORY[0x1EEE6BDD0](v8, v9, v10);
}

uint64_t sub_1DC2CA768()
{
  OUTLINED_FUNCTION_241();
  v2 = sub_1DC510B6C();
  OUTLINED_FUNCTION_0(v2);
  v4 = *(v3 + 80);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_160_0();
  v7 = (v1 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = sub_1DC51373C();
  OUTLINED_FUNCTION_0(v8);
  v10 = v9;
  v11 = (v7 + *(v10 + 80) + 16) & ~*(v10 + 80);
  v22 = *(v12 + 64);
  v13 = *(v0 + 16);

  v14 = OUTLINED_FUNCTION_95_0();
  v15(v14);
  OUTLINED_FUNCTION_248();
  v16 = *(v0 + v7 + 8);

  (*(v10 + 8))(v0 + v11, v8);
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_240();

  return MEMORY[0x1EEE6BDD0](v17, v18, v19);
}

uint64_t sub_1DC2CA8A0()
{
  v1 = sub_1DC51110C();
  OUTLINED_FUNCTION_35(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4);

  v7 = *(v0 + v6);

  return MEMORY[0x1EEE6BDD0](v0, v6 + 8, v3 | 7);
}

uint64_t sub_1DC2CA944()
{
  v1 = *(v0 + 16);

  OUTLINED_FUNCTION_27_5();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1DC2CA980()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_27_5();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1DC2CA9B8()
{
  v1 = sub_1DC51373C();
  OUTLINED_FUNCTION_0(v1);
  v3 = *(v2 + 80);
  v5 = *(v4 + 64);
  v6 = v0[2];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 3);
  v7 = v0[9];

  v8 = v0[11];

  v9 = OUTLINED_FUNCTION_50_9();
  v10(v9);
  v11 = OUTLINED_FUNCTION_177();

  return MEMORY[0x1EEE6BDD0](v11, v12, v13);
}

uint64_t sub_1DC2CAA7C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DC2CAAE0()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[6];

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1DC2CAB28()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_27_5();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1DC2CAB5C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DC2CABA0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DC2CABE0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DC2CAC20()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DC2CAC60()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DC2CACA0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DC2CACE8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DC2CAD30()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_195();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1DC2CAD64()
{
  v1 = sub_1DC516F5C();
  OUTLINED_FUNCTION_0(v1);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = v0[2];
  swift_unknownObjectRelease();
  v7 = v0[4];

  v8 = v0[5];

  v9 = OUTLINED_FUNCTION_50_9();
  v10(v9);
  v11 = OUTLINED_FUNCTION_150_1();

  return MEMORY[0x1EEE6BDD0](v11, v12, v13);
}

uint64_t sub_1DC2CAE6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 4);
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = sub_1DC510B6C();
    v11 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v11, a2, v10);
  }
}

uint64_t sub_1DC2CAEF4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 4) = a2 + 1;
  }

  else
  {
    v7 = sub_1DC510B6C();
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DC2CAF70()
{
  OUTLINED_FUNCTION_33();
  v2 = type metadata accessor for NLRouterServiceRequest(0);
  v3 = (*(*(v2 - 1) + 80) + 24) & ~*(*(v2 - 1) + 80);
  v4 = *(*(v2 - 1) + 64);
  v5 = *(v0 + 16);

  v6 = v0 + v3;
  v7 = *(v0 + v3 + 8);

  v8 = (v0 + v3 + v2[5]);
  v9 = type metadata accessor for NLRouterTurnContext(0);
  v10 = OUTLINED_FUNCTION_100();
  if (!__swift_getEnumTagSinglePayload(v10, v11, v9))
  {
    v12 = *v8;

    v13 = *(v8 + 1);

    v14 = *(v8 + 2);

    v15 = v9[7];
    v16 = sub_1DC5167EC();
    if (!OUTLINED_FUNCTION_123_2(v16))
    {
      OUTLINED_FUNCTION_7_1(v1);
      (*(v17 + 8))(&v8[v15], v1);
    }

    v18 = v9[8];
    v19 = sub_1DC51190C();
    if (!OUTLINED_FUNCTION_123_2(v19))
    {
      OUTLINED_FUNCTION_7_1(v1);
      (*(v20 + 8))(&v8[v18], v1);
    }

    v21 = *&v8[v9[9]];

    v22 = *&v8[v9[10]];

    v23 = v9[12];
    v24 = sub_1DC515DFC();
    if (!__swift_getEnumTagSinglePayload(&v8[v23], 1, v24))
    {
      OUTLINED_FUNCTION_7_1(v24);
      (*(v25 + 8))(&v8[v23], v24);
    }
  }

  v26 = *(v6 + v2[6]);

  v27 = *(v6 + v2[7]);

  v28 = (v6 + v2[8]);
  v29 = type metadata accessor for NLRouterTurnProbingResult(0);
  v30 = OUTLINED_FUNCTION_100();
  if (!__swift_getEnumTagSinglePayload(v30, v31, v29))
  {
    v32 = type metadata accessor for NLRouterNLParseResponse(0);
    v33 = OUTLINED_FUNCTION_100();
    if (!__swift_getEnumTagSinglePayload(v33, v34, v32))
    {
      v35 = *v28;

      v36 = *(v32 + 20);
      v37 = sub_1DC511E5C();
      if (!OUTLINED_FUNCTION_123_2(v37))
      {
        OUTLINED_FUNCTION_7_1(v32);
        (*(v38 + 8))(&v28[v36], v32);
      }
    }

    v39 = *&v28[*(v29 + 20) + 8];
  }

  v40 = *(v6 + v2[10] + 8);

  v41 = *(v6 + v2[11] + 8);

  v42 = v2[12];
  v43 = sub_1DC510C8C();
  OUTLINED_FUNCTION_0_2(v43);
  (*(v44 + 8))(v6 + v42);
  OUTLINED_FUNCTION_34();

  return MEMORY[0x1EEE6BDD0](v45, v46, v47);
}

uint64_t sub_1DC2CB258()
{
  v1 = sub_1DC516F5C();
  OUTLINED_FUNCTION_0(v1);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = *(v0 + 16);

  v7 = *(v0 + 24);

  v8 = OUTLINED_FUNCTION_50_9();
  v9(v8);
  v10 = OUTLINED_FUNCTION_150_1();

  return MEMORY[0x1EEE6BDD0](v10, v11, v12);
}

uint64_t sub_1DC2CB308()
{
  v1 = sub_1DC516F5C();
  OUTLINED_FUNCTION_0(v1);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = v0[2];

  v7 = v0[3];

  sub_1DC372E70(v0[4]);
  v8 = OUTLINED_FUNCTION_50_9();
  v9(v8);
  v10 = OUTLINED_FUNCTION_150_1();

  return MEMORY[0x1EEE6BDD0](v10, v11, v12);
}

uint64_t sub_1DC2CB3C0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  v4 = *(v0 + 56);
  OUTLINED_FUNCTION_186();
  if (!v6)
  {
    sub_1DC372E70(v5);
  }

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1DC2CB424()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  OUTLINED_FUNCTION_37_3();

  return MEMORY[0x1EEE6BDD0](v3, v4, v5);
}

uint64_t sub_1DC2CB460()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_27_5();

  return MEMORY[0x1EEE6BDD0](v2, v3, v4);
}

uint64_t sub_1DC2CB4C4()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1DC2CB4FC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DC2CB53C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1DC5157EC();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = sub_1DC510B6C();
    v8 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_1DC2CB5D8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1DC5157EC();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = sub_1DC510B6C();
    v10 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

void sub_1DC2CB67C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1DC5176FC();
  [a3 setRefId_];
}

uint64_t sub_1DC2CB6D4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DC2CB7DC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DC2CB86C()
{
  v1 = type metadata accessor for NLRouterPromptSignals();
  OUTLINED_FUNCTION_52(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v6 = *(v5 + 64);
  v7 = *(v0 + 16);
  swift_unknownObjectRelease();
  v8 = *(v0 + 32);

  v9 = v0 + v4;
  v10 = type metadata accessor for QDContextState(0);
  v11 = OUTLINED_FUNCTION_44();
  if (!__swift_getEnumTagSinglePayload(v11, v12, v10))
  {
    v13 = *(v10 + 24);
    v14 = sub_1DC51724C();
    if (!__swift_getEnumTagSinglePayload(v9 + v13, 1, v14))
    {
      OUTLINED_FUNCTION_7_1(v14);
      (*(v15 + 8))(v9 + v13, v14);
    }
  }

  v16 = (v6 + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  return MEMORY[0x1EEE6BDD0](v0, v16 + 8, v3 | 7);
}

uint64_t sub_1DC2CB99C()
{
  v1 = sub_1DC510B6C();
  OUTLINED_FUNCTION_0(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 56) & ~v4;
  v7 = *(v6 + 64);
  v8 = *(v0 + 16);
  swift_unknownObjectRelease();
  v9 = *(v0 + 32);

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v7, v4 | 7);
}

uint64_t sub_1DC2CBAAC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DC2CBB14()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DC2CBBCC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DC2CBC44(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CD00, &unk_1DC5259F0);
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1DC2CBCD8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CD00, &unk_1DC5259F0);
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DC2CBD64(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DC510C8C();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_1DC2CBDAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DC510C8C();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_1DC2CBDF8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DC2CBE38(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D390, &qword_1DC527790);
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1DC2CBECC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D390, &qword_1DC527790);
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DC2CBF58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CFB0, qword_1DC526050);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D3A0, &unk_1DC522560);
    v8 = a1 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_1DC2CC00C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CFB0, qword_1DC526050);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = a1;
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D3A0, &unk_1DC522560);
    v10 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v10, a2, a2, v9);
}

uint64_t sub_1DC2CC118()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DC2CC158(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1DC51119C();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1DC2CC1E0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1DC51119C();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DC2CC260()
{
  v1 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1DC2CC2D0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 33, 7);
}

uint64_t sub_1DC2CC3F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BEB8, &unk_1DC527150);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_1DC2CC44C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BEB8, &unk_1DC527150);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_1DC2CC4A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 1);
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BEC0, &unk_1DC5221E0);
    v11 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v11, a2, v10);
  }
}

uint64_t sub_1DC2CC538(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 1) = a2 + 1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BEC0, &unk_1DC5221E0);
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DC2CC65C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DC2CC69C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DC2CC704()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1DC2CC7AC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for NLRouterServiceRequest(0);
  v7 = OUTLINED_FUNCTION_50(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
  }

  else
  {
    v11 = sub_1DC5157EC();
    v12 = OUTLINED_FUNCTION_50(v11);
    if (*(v13 + 84) == a2)
    {
      v9 = v12;
      v14 = a3[5];
    }

    else
    {
      if (a2 == 0x7FFFFFFF)
      {
        return OUTLINED_FUNCTION_54(*(a1 + a3[6] + 8));
      }

      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C1E0, qword_1DC52A6E0);
      v17 = OUTLINED_FUNCTION_50(v16);
      if (*(v18 + 84) == a2)
      {
        v9 = v17;
        v14 = a3[8];
      }

      else
      {
        v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CD00, &unk_1DC5259F0);
        v14 = a3[9];
      }
    }

    v10 = a1 + v14;
  }

  return __swift_getEnumTagSinglePayload(v10, a2, v9);
}

uint64_t sub_1DC2CC908()
{
  v4 = OUTLINED_FUNCTION_6_27();
  v5 = type metadata accessor for NLRouterServiceRequest(v4);
  v6 = OUTLINED_FUNCTION_50(v5);
  if (*(v7 + 84) == v3)
  {
    v8 = v6;
    v9 = v1;
  }

  else
  {
    v10 = sub_1DC5157EC();
    result = OUTLINED_FUNCTION_50(v10);
    if (*(v12 + 84) == v3)
    {
      v8 = result;
      v13 = v2[5];
    }

    else
    {
      if (v3 == 0x7FFFFFFF)
      {
        *(v1 + v2[6] + 8) = (v0 - 1);
        return result;
      }

      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C1E0, qword_1DC52A6E0);
      v15 = OUTLINED_FUNCTION_50(v14);
      if (*(v16 + 84) == v3)
      {
        v8 = v15;
        v13 = v2[8];
      }

      else
      {
        v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CD00, &unk_1DC5259F0);
        v13 = v2[9];
      }
    }

    v9 = v1 + v13;
  }

  return __swift_storeEnumTagSinglePayload(v9, v0, v0, v8);
}

uint64_t sub_1DC2CCA5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_155();
  v6 = sub_1DC5157EC();
  v7 = OUTLINED_FUNCTION_50(v6);
  if (*(v8 + 84) != a2)
  {
    return OUTLINED_FUNCTION_54(*(v3 + *(a3 + 20) + 8));
  }

  return __swift_getEnumTagSinglePayload(v3, a2, v7);
}

uint64_t sub_1DC2CCAF8()
{
  OUTLINED_FUNCTION_6_27();
  v4 = sub_1DC5157EC();
  result = OUTLINED_FUNCTION_50(v4);
  if (*(v6 + 84) == v3)
  {
    v7 = OUTLINED_FUNCTION_20_18();

    return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  }

  else
  {
    *(v1 + *(v2 + 20) + 8) = (v0 - 1);
  }

  return result;
}

uint64_t sub_1DC2CCB84()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DC2CCBC4()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DC2CCC1C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DC2CCC74()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DC2CCCB4()
{
  v1 = sub_1DC51373C();
  OUTLINED_FUNCTION_0(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = *(v6 + 64) + v5;
  v8 = *(v0 + 16);

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x1EEE6BDD0](v0, v7 + 1, v4 | 7);
}

uint64_t sub_1DC2CD07C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DC2CD0C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_155();
  v6 = sub_1DC5157EC();
  OUTLINED_FUNCTION_50(v6);
  if (*(v7 + 84) == a2)
  {
    v8 = OUTLINED_FUNCTION_262_0();

    return __swift_getEnumTagSinglePayload(v8, a2, v9);
  }

  else
  {
    v11 = *(v3 + *(a3 + 20));
    if (v11 <= 5)
    {
      v12 = 5;
    }

    else
    {
      v12 = *(v3 + *(a3 + 20));
    }

    v13 = v12 - 5;
    if (v11 >= 5)
    {
      return v13;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1DC2CD16C()
{
  OUTLINED_FUNCTION_114_3();
  v4 = sub_1DC5157EC();
  result = OUTLINED_FUNCTION_50(v4);
  if (*(v6 + 84) == v3)
  {
    OUTLINED_FUNCTION_282();
    OUTLINED_FUNCTION_249_1();

    return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  }

  else
  {
    *(v1 + *(v2 + 20)) = v0 + 5;
  }

  return result;
}

uint64_t sub_1DC2CD1FC(uint64_t a1, int a2)
{
  if (a2 == 2147483646)
  {
    return OUTLINED_FUNCTION_87_2(*(a1 + 8));
  }

  OUTLINED_FUNCTION_324();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFC8, &unk_1DC524050);
  OUTLINED_FUNCTION_50(v5);
  if (*(v6 + 84) == v2)
  {
    v7 = *(v3 + 28);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CA40, &unk_1DC5233A0);
    v7 = *(v3 + 36);
  }

  v8 = OUTLINED_FUNCTION_234_0(v7);

  return __swift_getEnumTagSinglePayload(v8, v9, v10);
}

uint64_t sub_1DC2CD2C8(uint64_t result, unsigned int a2, int a3, uint64_t a4)
{
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFC8, &unk_1DC524050);
    OUTLINED_FUNCTION_50(v6);
    if (*(v7 + 84) == a3)
    {
      v8 = *(a4 + 28);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CA40, &unk_1DC5233A0);
      v8 = *(a4 + 36);
    }

    v9 = OUTLINED_FUNCTION_137_2(v8);

    return __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  }

  return result;
}

uint64_t sub_1DC2CD39C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFD8, &unk_1DC5270D0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, a2, v4);
  if (EnumTagSinglePayload >= 5)
  {
    return EnumTagSinglePayload - 4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DC2CD3F0(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v4 = (a2 + 4);
  }

  else
  {
    v4 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFD8, &unk_1DC5270D0);
  v5 = OUTLINED_FUNCTION_282();

  return __swift_storeEnumTagSinglePayload(v5, v4, a3, v6);
}

uint64_t sub_1DC2CD458()
{
  OUTLINED_FUNCTION_266_0();
  if (v3)
  {
    return OUTLINED_FUNCTION_54(*v1);
  }

  OUTLINED_FUNCTION_324();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFE0, &unk_1DC5253A0);
  OUTLINED_FUNCTION_50(v5);
  if (*(v6 + 84) == v0)
  {
    v7 = v2[7];
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D3A0, &unk_1DC522560);
    OUTLINED_FUNCTION_50(v8);
    if (*(v9 + 84) == v0)
    {
      v7 = v2[8];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C1D8, &qword_1DC529390);
      v7 = v2[12];
    }
  }

  v10 = OUTLINED_FUNCTION_234_0(v7);

  return __swift_getEnumTagSinglePayload(v10, v11, v12);
}

void sub_1DC2CD568()
{
  OUTLINED_FUNCTION_112_6();
  if (v4)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    v5 = v3;
    v6 = v2;
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFE0, &unk_1DC5253A0);
    OUTLINED_FUNCTION_50(v7);
    if (*(v8 + 84) == v6)
    {
      v9 = v5[7];
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D3A0, &unk_1DC522560);
      OUTLINED_FUNCTION_50(v10);
      if (*(v11 + 84) == v6)
      {
        v9 = v5[8];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C1D8, &qword_1DC529390);
        v9 = v5[12];
      }
    }

    v12 = OUTLINED_FUNCTION_137_2(v9);

    __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  }
}

uint64_t sub_1DC2CD67C()
{
  OUTLINED_FUNCTION_324();
  OUTLINED_FUNCTION_38_2();
  v3 = sub_1DC51122C();
  v4 = OUTLINED_FUNCTION_50(v3);
  if (*(v5 + 84) == v0)
  {
    v6 = v4;
    v7 = v1;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DBF0, &qword_1DC52A8B0);
    OUTLINED_FUNCTION_50(v8);
    if (*(v9 + 84) != v0)
    {
      return OUTLINED_FUNCTION_87_2(*(v1 + *(v2 + 24) + 8));
    }

    OUTLINED_FUNCTION_455();
    v7 = v1 + v10;
  }

  return __swift_getEnumTagSinglePayload(v7, v0, v6);
}

uint64_t sub_1DC2CD760()
{
  OUTLINED_FUNCTION_114_3();
  v4 = sub_1DC51122C();
  OUTLINED_FUNCTION_50(v4);
  if (*(v5 + 84) == v3)
  {
    OUTLINED_FUNCTION_282();
  }

  else
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7DBF0, &qword_1DC52A8B0);
    result = OUTLINED_FUNCTION_50(v6);
    if (*(v8 + 84) != v3)
    {
      *(v1 + *(v2 + 24) + 8) = v0;
      return result;
    }

    OUTLINED_FUNCTION_452();
  }

  OUTLINED_FUNCTION_249_1();

  return __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
}

uint64_t sub_1DC2CD840()
{
  OUTLINED_FUNCTION_266_0();
  if (v1)
  {
    return OUTLINED_FUNCTION_54(*(v0 + 8));
  }

  OUTLINED_FUNCTION_324();
  type metadata accessor for NLRouterSiriXParse(0);
  OUTLINED_FUNCTION_455();
  v4 = OUTLINED_FUNCTION_234_0(v3);

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_1DC2CD8A8()
{
  OUTLINED_FUNCTION_112_6();
  if (v2)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    type metadata accessor for NLRouterSiriXParse(0);
    OUTLINED_FUNCTION_452();
    v4 = OUTLINED_FUNCTION_137_2(v3);

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

uint64_t sub_1DC2CD910()
{
  OUTLINED_FUNCTION_266_0();
  if (v1)
  {
    return OUTLINED_FUNCTION_54(*v0);
  }

  OUTLINED_FUNCTION_324();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D398, &qword_1DC5283F8);
  OUTLINED_FUNCTION_455();
  v4 = OUTLINED_FUNCTION_234_0(v3);

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_1DC2CD984()
{
  OUTLINED_FUNCTION_112_6();
  if (v2)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D398, &qword_1DC5283F8);
    OUTLINED_FUNCTION_452();
    v4 = OUTLINED_FUNCTION_137_2(v3);

    __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  }
}

uint64_t sub_1DC2CD9F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C160, qword_1DC5233B0);
  OUTLINED_FUNCTION_50(v6);
  if (*(v7 + 84) != a2)
  {
    return OUTLINED_FUNCTION_87_2(*(a1 + *(a3 + 20) + 8));
  }

  v8 = OUTLINED_FUNCTION_262_0();

  return __swift_getEnumTagSinglePayload(v8, a2, v9);
}

uint64_t sub_1DC2CDAA0()
{
  OUTLINED_FUNCTION_114_3();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C160, qword_1DC5233B0);
  result = OUTLINED_FUNCTION_50(v4);
  if (*(v6 + 84) == v3)
  {
    OUTLINED_FUNCTION_282();
    OUTLINED_FUNCTION_249_1();

    return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  }

  else
  {
    *(v1 + *(v2 + 20) + 8) = v0;
  }

  return result;
}

uint64_t sub_1DC2CDB40()
{
  OUTLINED_FUNCTION_266_0();
  if (v3)
  {
    return OUTLINED_FUNCTION_54(*(v1 + 8));
  }

  OUTLINED_FUNCTION_324();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFD0, &unk_1DC522550);
  OUTLINED_FUNCTION_50(v5);
  if (*(v6 + 84) == v0)
  {
    OUTLINED_FUNCTION_455();
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C158, &unk_1DC5234A0);
    OUTLINED_FUNCTION_50(v8);
    if (*(v9 + 84) == v0)
    {
      v7 = *(v2 + 32);
    }

    else
    {
      sub_1DC510C8C();
      v7 = *(v2 + 48);
    }
  }

  v10 = OUTLINED_FUNCTION_234_0(v7);

  return __swift_getEnumTagSinglePayload(v10, v11, v12);
}

void sub_1DC2CDC40()
{
  OUTLINED_FUNCTION_112_6();
  if (v4)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v5 = v3;
    v6 = v2;
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFD0, &unk_1DC522550);
    OUTLINED_FUNCTION_50(v7);
    if (*(v8 + 84) == v6)
    {
      OUTLINED_FUNCTION_452();
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C158, &unk_1DC5234A0);
      OUTLINED_FUNCTION_50(v10);
      if (*(v11 + 84) == v6)
      {
        v9 = *(v5 + 32);
      }

      else
      {
        sub_1DC510C8C();
        v9 = *(v5 + 48);
      }
    }

    v12 = OUTLINED_FUNCTION_137_2(v9);

    __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  }
}

uint64_t sub_1DC2CDD44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_155();
  v6 = sub_1DC5157EC();
  OUTLINED_FUNCTION_50(v6);
  if (*(v7 + 84) == a2)
  {
    v8 = OUTLINED_FUNCTION_262_0();

    return __swift_getEnumTagSinglePayload(v8, a2, v9);
  }

  else
  {
    v11 = *(v3 + *(a3 + 24) + 8);
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    v12 = v11 - 4;
    if (v12 < 0)
    {
      v12 = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_1DC2CDDF4()
{
  OUTLINED_FUNCTION_114_3();
  v4 = sub_1DC5157EC();
  result = OUTLINED_FUNCTION_50(v4);
  if (*(v6 + 84) == v3)
  {
    OUTLINED_FUNCTION_282();
    OUTLINED_FUNCTION_249_1();

    return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  }

  else
  {
    *(v1 + *(v2 + 24) + 8) = (v0 + 3);
  }

  return result;
}

uint64_t sub_1DC2CDFF0()
{
  v2 = sub_1DC510B6C();
  OUTLINED_FUNCTION_3_33(v2);
  v4 = v3;
  v5 = *(v3 + 80);
  v6 = (v5 + 48) & ~v5;
  v8 = (*(v7 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 23) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v1 + 16);
  swift_unknownObjectRelease();

  (*(v4 + 8))(v1 + v6, v0);
  v11 = *(v1 + v8 + 8);

  v12 = *(v1 + v9 + 8);

  return MEMORY[0x1EEE6BDD0](v1, v9 + 16, v5 | 7);
}

uint64_t sub_1DC2CE0E8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DC2CE128()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DC2CE270()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DC2CE2B0()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

id sub_1DC2CE3D4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CDMXPCDefines();
  return objc_msgSendSuper2(&v2, sel_init);
}

id CDMXPCDefines.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CDMXPCDefines();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t Siri_Nlu_External_ResponseStatus.StatusCode.toOrchestrationStatusCode()@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1DC51170C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_0_0();
  sub_1DC2CE5E8(a1);
  (*(v5 + 16))(v8, v2, v4);
  v9 = (*(v5 + 88))(v8, v4);
  if (v9 == *MEMORY[0x1E69D0AA0] || v9 == *MEMORY[0x1E69D0A98])
  {
    (*(v5 + 104))(a1, v9, v4);
    return __swift_storeEnumTagSinglePayload(a1, 0, 1, v4);
  }

  else
  {
    OUTLINED_FUNCTION_0_0();
    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_1DC2CE5E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D420, &unk_1DC528440);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1DC2CE698()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C440, &qword_1DC522EF0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1DC5221A0;
  v1 = sub_1DC3EAAE8();
  v3 = *v1;
  v2 = *(v1 + 1);
  *(v0 + 32) = v3;
  *(v0 + 40) = v2;

  v4 = sub_1DC3EAADC();
  v6 = *v4;
  v5 = v4[1];
  *(v0 + 48) = v6;
  *(v0 + 56) = v5;

  v7 = sub_1DC3EAAD0();
  v9 = *v7;
  v8 = v7[1];
  *(v0 + 64) = v9;
  *(v0 + 72) = v8;

  v10 = sub_1DC3EAAF4();
  v12 = *v10;
  v11 = v10[1];
  *(v0 + 80) = v12;
  *(v0 + 88) = v11;

  v13 = sub_1DC3EAB00();
  v15 = *v13;
  v14 = v13[1];
  *(v0 + 96) = v15;
  *(v0 + 104) = v14;
  qword_1EDAC8160 = v0;
}

uint64_t sub_1DC2CE748@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1DC516F5C();
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1();
  v12 = v11 - v10;
  sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
  v13 = sub_1DC2BE518();
  v14 = OUTLINED_FUNCTION_130();
  sub_1DC2A2ED0("HeuristicRules.PlannerWritingToolsRule", 38, 2, v13, v14 & 1, v12);

  sub_1DC298C74(0, &qword_1ECC7B9B0, 0x1E695E000);
  v15 = sub_1DC34563C();
  v17 = v16;
  if (v15 == sub_1DC312FB4(0) && v17 == v18)
  {

LABEL_11:
    v22 = sub_1DC5157EC();
    __swift_storeEnumTagSinglePayload(a2, 1, 1, v22);
    goto LABEL_12;
  }

  v20 = sub_1DC51825C();

  if (v20)
  {
    goto LABEL_11;
  }

  if ((sub_1DC2CE964(a1) & 1) == 0)
  {
    goto LABEL_11;
  }

  if (!sub_1DC2CED34())
  {
    goto LABEL_11;
  }

  sub_1DC34563C();
  v21 = sub_1DC312F68();
  if (v21 == 4)
  {
    goto LABEL_11;
  }

  sub_1DC312E7C(v21, a2);
LABEL_12:
  v23 = sub_1DC2BE518();
  sub_1DC2B8848();

  return (*(v7 + 8))(v12, v4);
}

uint64_t sub_1DC2CE964(uint64_t a1)
{
  v2 = sub_1DC5161CC();
  v3 = OUTLINED_FUNCTION_0(v2);
  v47 = v4;
  v48 = v3;
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v3);
  v46 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v45 = &v45 - v9;
  v10 = sub_1DC515EDC();
  v11 = OUTLINED_FUNCTION_0(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_1();
  v18 = v17 - v16;
  v19 = sub_1DC5157EC();
  v20 = OUTLINED_FUNCTION_0(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_1();
  v27 = v26 - v25;
  v28 = sub_1DC515F3C();
  v29 = OUTLINED_FUNCTION_0(v28);
  v31 = v30;
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_1();
  v36 = v35 - v34;
  v37 = type metadata accessor for HeuristicRoutingRequest(0);
  (*(v22 + 16))(v27, a1 + *(v37 + 20), v19);
  if ((*(v22 + 88))(v27, v19) != *MEMORY[0x1E69D02E0])
  {
    (*(v22 + 8))(v27, v19);
LABEL_6:
    v42 = 0;
    return v42 & 1;
  }

  (*(v22 + 96))(v27, v19);
  (*(v31 + 32))(v36, v27, v28);
  sub_1DC515EFC();
  if ((*(v13 + 88))(v18, v10) != *MEMORY[0x1E69D0608])
  {
    (*(v31 + 8))(v36, v28);
    (*(v13 + 8))(v18, v10);
    goto LABEL_6;
  }

  (*(v13 + 8))(v18, v10);
  v38 = v45;
  sub_1DC515E2C();
  v40 = v46;
  v39 = v47;
  v41 = v48;
  (*(v47 + 104))(v46, *MEMORY[0x1E69D0720], v48);
  v42 = sub_1DC5161BC();
  v43 = *(v39 + 8);
  v43(v40, v41);
  v43(v38, v41);
  (*(v31 + 8))(v36, v28);
  return v42 & 1;
}

BOOL sub_1DC2CED34()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BEB8, &unk_1DC527150);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v20[-v2];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BEC0, &unk_1DC5221E0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v20[-v6];
  sub_1DC3EAD64(v3);
  v8 = type metadata accessor for QDContextState(0);
  if (__swift_getEnumTagSinglePayload(v3, 1, v8) == 1)
  {
    v9 = &qword_1ECC7BEB8;
    v10 = &unk_1DC527150;
    v11 = v3;
LABEL_5:
    sub_1DC2BE530(v11, v9, v10);
    return 0;
  }

  sub_1DC2CEF88(&v3[*(v8 + 24)], v7);
  sub_1DC2CEFF8(v3);
  v12 = sub_1DC51724C();
  if (__swift_getEnumTagSinglePayload(v7, 1, v12) == 1)
  {
    v9 = &qword_1ECC7BEC0;
    v10 = &unk_1DC5221E0;
    v11 = v7;
    goto LABEL_5;
  }

  v14 = sub_1DC51723C();
  v16 = v15;
  v17 = (*(*(v12 - 8) + 8))(v7, v12);
  if (_MergedGlobals_3 != -1)
  {
    v17 = swift_once();
  }

  v21[0] = v14;
  v21[1] = v16;
  MEMORY[0x1EEE9AC00](v17);
  *&v20[-16] = v21;
  v13 = sub_1DC2CF098(sub_1DC2CF174, &v20[-32], v18);

  return v13;
}

uint64_t sub_1DC2CEF88(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BEC0, &unk_1DC5221E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DC2CEFF8(uint64_t a1)
{
  v2 = type metadata accessor for QDContextState(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DC2CF054(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_1DC51825C() & 1;
  }
}

BOOL sub_1DC2CF098(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 40);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = *v5;
    v11[0] = *(v5 - 1);
    v11[1] = v7;

    v8 = a1(v11);
    if (v3)
    {

      return v6 != 0;
    }

    v9 = v8;
    v5 += 2;
  }

  while ((v9 & 1) == 0);
  return v6 != 0;
}

uint64_t sub_1DC2CF194(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < -15)
  {
    goto LABEL_112;
  }

  v9 = a2 / 16;
  if ((a2 + 15) <= 0x1E)
  {
    v60 = a3;
    v61 = a2;
    v10 = *(result + 16);
    v11 = a3;
LABEL_36:
    v4 = MEMORY[0x1E69E7CC0];
    v27 = v10 & 0xF;
    if ((v10 & 0xF) == 0)
    {
LABEL_55:
      v5 = v60;
      v3 = v61;
      v6 = 0x4CF5AD432745937FLL;
      v7 = 0x87C37B91114253D5;
      switch(v61 & 0xF)
      {
        case 1:
          if (!*(v4 + 2))
          {
            goto LABEL_114;
          }

          v51 = 0;
          goto LABEL_98;
        case 2:
          if (*(v4 + 2) < 2uLL)
          {
            goto LABEL_115;
          }

          v47 = 0;
          goto LABEL_97;
        case 3:
          if (*(v4 + 2) < 3uLL)
          {
            goto LABEL_116;
          }

          v49 = 0;
          goto LABEL_96;
        case 4:
          if (*(v4 + 2) < 4uLL)
          {
            goto LABEL_117;
          }

          v44 = 0;
          goto LABEL_95;
        case 5:
          if (*(v4 + 2) < 5uLL)
          {
            goto LABEL_118;
          }

          v52 = 0;
          goto LABEL_94;
        case 6:
          if (*(v4 + 2) < 6uLL)
          {
            goto LABEL_119;
          }

          v54 = 0;
          goto LABEL_93;
        case 7:
          if (*(v4 + 2) < 7uLL)
          {
            goto LABEL_120;
          }

          v50 = 0;
          goto LABEL_92;
        case 8:
          if (*(v4 + 2) >= 8uLL)
          {
            goto LABEL_91;
          }

          __break(1u);
          goto LABEL_107;
        case 9:
          if (*(v4 + 2) < 9uLL)
          {
            goto LABEL_121;
          }

          v46 = 0;
          goto LABEL_90;
        case 0xALL:
          if (*(v4 + 2) < 0xAuLL)
          {
            goto LABEL_122;
          }

          v53 = 0;
          goto LABEL_89;
        case 0xBLL:
          if (*(v4 + 2) < 0xBuLL)
          {
            goto LABEL_123;
          }

          v43 = 0;
          goto LABEL_88;
        case 0xCLL:
          if (*(v4 + 2) < 0xCuLL)
          {
            goto LABEL_124;
          }

          v45 = 0;
          goto LABEL_87;
        case 0xDLL:
          if (*(v4 + 2) < 0xDuLL)
          {
            goto LABEL_125;
          }

          v48 = 0;
          goto LABEL_86;
        case 0xELL:
          goto LABEL_61;
        case 0xFLL:
          if (*(v4 + 2) < 0xFuLL)
          {
            goto LABEL_127;
          }

          v42 = v4[46] << 48;
          goto LABEL_75;
        default:

          goto LABEL_99;
      }
    }

    v28 = 16 * v9;
    v29 = result + 32;
    v30 = *(MEMORY[0x1E69E7CC0] + 16);
    while (1)
    {
      if (v30 >= 0xF)
      {
        result = sub_1DC291E08(14, 0);
        v31 = *(v4 + 33);
        *(result + 38) = *(v4 + 39);
        *(result + 32) = v31;
        v32 = *(v4 + 2);
        if (v32 < 0xE)
        {
          goto LABEL_108;
        }

        v33 = result;
        v34 = *(result + 16);
        v35 = v32 + v34 - 14;
        if (__OFADD__(v32, v34 - 14))
        {
          goto LABEL_109;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (!isUniquelyReferenced_nonNull_native || v35 > *(v4 + 3) >> 1)
        {
          if (v32 <= v35)
          {
            v37 = v32 + v34 - 14;
          }

          else
          {
            v37 = v32;
          }

          v4 = sub_1DC2CF8DC(isUniquelyReferenced_nonNull_native, v37, 1, v4);
        }

        result = sub_1DC2CF804(0, 14, v34, v33);
        v38 = *(v4 + 2);
        if (!v38)
        {
          goto LABEL_110;
        }

        *(v4 + 2) = v38 - 1;
      }

      if (v28 >= v10)
      {
        break;
      }

      v39 = *(v29 + v28);
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1DC2CF8DC(0, *(v4 + 2) + 1, 1, v4);
        v4 = result;
      }

      v41 = *(v4 + 2);
      v40 = *(v4 + 3);
      v30 = v41 + 1;
      if (v41 >= v40 >> 1)
      {
        result = sub_1DC2CF8DC((v40 > 1), v41 + 1, 1, v4);
        v4 = result;
      }

      *(v4 + 2) = v30;
      v4[v41 + 32] = v39;
      ++v28;
      if (!--v27)
      {
        goto LABEL_55;
      }
    }

LABEL_107:
    __break(1u);
LABEL_108:
    __break(1u);
LABEL_109:
    __break(1u);
LABEL_110:
    __break(1u);
    goto LABEL_111;
  }

  v12 = 0;
  v13 = 0;
  v14 = result + 32;
  v10 = *(result + 16);
  v15 = result + 40;
  v11 = a3;
LABEL_5:
  if (v13 == v9)
  {
LABEL_111:
    __break(1u);
LABEL_112:
    __break(1u);
    goto LABEL_113;
  }

  v16 = 0;
  v17 = 0;
  ++v13;
LABEL_7:
  v18 = 8 * v16;
  for (i = v16; v12 + i < v10; ++i)
  {
    if (i == 0x1000000000000000)
    {
      goto LABEL_58;
    }

    if (v18 > -65 && v18 < 65)
    {
      if (v18 < 0)
      {
        v20 = *(v14 + i) >> (-v18 & 0x38);
LABEL_17:
        v17 |= v20;
        v16 = i + 1;
        if (i == 7)
        {
LABEL_20:
          v21 = 0;
          v22 = 0;
LABEL_21:
          v23 = 8 * v21;
          for (j = v21; ; ++j)
          {
            if (v12 + j + 8 >= v10)
            {
              goto LABEL_59;
            }

            if (j == 0x1000000000000000)
            {
              goto LABEL_60;
            }

            if (v23 > -65 && v23 < 65)
            {
              if (v23 < 0)
              {
                v25 = *(v15 + j) >> (-v23 & 0x38);
LABEL_31:
                v22 |= v25;
                v21 = j + 1;
                if (j != 7)
                {
                  goto LABEL_21;
                }

LABEL_34:
                v11 = 5 * (__ROR8__((0x4CF5AD432745937FLL * ((0x88A129EA80000000 * v17) | ((0x87C37B91114253D5 * v17) >> 33))) ^ v11, 37) + a3) + 1390208809;
                v26 = 5 * (__ROR8__((0x87C37B91114253D5 * ((0x4E8B26FE00000000 * v22) | ((0x4CF5AD432745937FLL * v22) >> 31))) ^ a3, 33) + v11);
                a3 = v26 + 944331445;
                v14 += 16;
                v12 += 16;
                v15 += 16;
                if (v13 != v9)
                {
                  goto LABEL_5;
                }

                v60 = v26 + 944331445;
                v61 = a2;
                goto LABEL_36;
              }

              if (v23 != 64)
              {
                v25 = *(v15 + j) << (v23 & 0x38);
                goto LABEL_31;
              }
            }

            if (j == 7)
            {
              goto LABEL_34;
            }

            v23 += 8;
          }
        }

        goto LABEL_7;
      }

      if (v18 != 64)
      {
        v20 = *(v14 + i) << (v18 & 0x38);
        goto LABEL_17;
      }
    }

    if (i == 7)
    {
      goto LABEL_20;
    }

    v18 += 8;
  }

  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  if (*(v4 + 2) < 0xEuLL)
  {
    goto LABEL_126;
  }

  v42 = 0;
LABEL_75:
  v48 = v42 | (v4[45] << 40);
LABEL_86:
  v45 = v48 ^ (v4[44] << 32);
LABEL_87:
  v43 = v45 ^ (v4[43] << 24);
LABEL_88:
  v53 = v43 ^ (v4[42] << 16);
LABEL_89:
  v46 = v53 ^ (v4[41] << 8);
LABEL_90:
  v5 ^= __ROR8__((v46 ^ v4[40]) * v6, 31) * v7;
LABEL_91:
  v50 = v4[39] << 56;
LABEL_92:
  v54 = v50 | (v4[38] << 48);
LABEL_93:
  v52 = v54 ^ (v4[37] << 40);
LABEL_94:
  v44 = v52 ^ (v4[36] << 32);
LABEL_95:
  v49 = v44 ^ (v4[35] << 24);
LABEL_96:
  v47 = v49 ^ (v4[34] << 16);
LABEL_97:
  v51 = v47 ^ (v4[33] << 8);
LABEL_98:
  v55 = v4[32];

  v11 ^= __ROR8__((v51 ^ v55) * v7, 33) * v6;
LABEL_99:
  if ((v3 & 0x8000000000000000) == 0)
  {
    v56 = (v11 ^ v3) + (v5 ^ v3);
    v57 = v56 + (v5 ^ v3);
    v58 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v56 ^ (v56 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v56 ^ (v56 >> 33))) >> 33));
    v59 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v57 ^ (v57 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v57 ^ (v57 >> 33))) >> 33));
    return (v59 ^ (v59 >> 33)) + (v58 ^ (v58 >> 33));
  }

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
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
  return result;
}

char *sub_1DC2CF804(char *result, uint64_t a2, int64_t __n, uint64_t a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_19;
  }

  v7 = __n - v5;
  if (__OFSUB__(__n, v5))
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v9 = *v4;
  v10 = &result[v9 + 32];
  if (!v7)
  {
    goto LABEL_12;
  }

  v11 = *(v9 + 16);
  v12 = v11 - a2;
  if (__OFSUB__(v11, a2))
  {
    goto LABEL_20;
  }

  result = &v10[__n];
  v13 = (v9 + 32 + a2);
  if (&v10[__n] != v13 || &v13[v12] <= result)
  {
    result = memmove(result, v13, v12);
    v11 = *(v9 + 16);
  }

  v15 = __OFADD__(v11, v7);
  v16 = v11 + v7;
  if (v15)
  {
    goto LABEL_21;
  }

  *(v9 + 16) = v16;
LABEL_12:
  if (__n >= 1)
  {
    if (*(a4 + 16) == __n)
    {
      memcpy(v10, (a4 + 32), __n);
      goto LABEL_15;
    }

LABEL_22:
    __break(1u);
    return result;
  }

LABEL_15:
}

char *sub_1DC2CF8DC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CE50, &unk_1DC522990);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for SwiftMurmurHash3.Result(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SwiftMurmurHash3.Result(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

uint64_t sub_1DC2CFA44()
{
  sub_1DC2D2720();
  result = sub_1DC51764C();
  qword_1ECC8F580 = result;
  return result;
}

uint64_t sub_1DC2CFA84()
{
  v336 = sub_1DC510BDC();
  v3 = OUTLINED_FUNCTION_0(v336);
  v341 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_1();
  v334 = v8 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BED0, qword_1DC52A730);
  v10 = OUTLINED_FUNCTION_35(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_23_1();
  v323 = v22;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_23_1();
  v325 = v24;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_23_1();
  v329 = v26;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_23_1();
  v332 = v28;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_23_1();
  v335 = v30;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v311[-v32];
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BED8, &qword_1DC522250);
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x1EEE9AC00](v34 - 8);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_23_1();
  v339 = v44;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_23_1();
  v340 = v46;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_23_1();
  v337 = v48;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_23_1();
  v338 = v50;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_23_1();
  v322 = v57;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_23_1();
  v326 = v60;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_23_1();
  v328 = v63;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v64);
  OUTLINED_FUNCTION_23_1();
  v324 = v65;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_23_1();
  v331 = v67;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v68);
  OUTLINED_FUNCTION_23_1();
  v327 = v69;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v70);
  OUTLINED_FUNCTION_23_1();
  v333 = v71;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v72);
  OUTLINED_FUNCTION_23_1();
  v330 = v73;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v74);
  OUTLINED_FUNCTION_36_0();
  MEMORY[0x1EEE9AC00](v75);
  OUTLINED_FUNCTION_53();
  v77 = MEMORY[0x1EEE9AC00](v76);
  v79 = &v311[-v78];
  MEMORY[0x1EEE9AC00](v77);
  v80 = OUTLINED_FUNCTION_57();
  v81 = OUTLINED_FUNCTION_0(v80);
  v83 = v82;
  v85 = *(v84 + 64);
  MEMORY[0x1EEE9AC00](v81);
  OUTLINED_FUNCTION_1();
  v88 = v87 - v86;
  sub_1DC510C7C();
  sub_1DC510C5C();
  v89 = v88;
  v90 = v0;
  (*(v83 + 8))(v89, v80);
  v91 = v336;
  sub_1DC510BCC();
  __swift_storeEnumTagSinglePayload(v79, 0, 1, v91);
  v342 = v9;
  v92 = *(v9 + 48);
  v93 = OUTLINED_FUNCTION_55();
  sub_1DC2BE044(v93, v94);
  sub_1DC2BE044(v0, &v33[v92]);
  OUTLINED_FUNCTION_2_0(v33);
  if (v95)
  {
    sub_1DC28EB30(v79, &qword_1ECC7BED8, &qword_1DC522250);
    OUTLINED_FUNCTION_2_0(&v33[v92]);
    if (v95)
    {
      goto LABEL_90;
    }

    goto LABEL_9;
  }

  sub_1DC2BE044(v33, v2);
  OUTLINED_FUNCTION_2_0(&v33[v92]);
  if (v95)
  {
    sub_1DC28EB30(v79, &qword_1ECC7BED8, &qword_1DC522250);
    v96 = OUTLINED_FUNCTION_9();
    v97(v96);
LABEL_9:
    sub_1DC28EB30(v33, &qword_1ECC7BED0, qword_1DC52A730);
    v98 = v339;
    v99 = v340;
    v101 = v337;
    v100 = v338;
    v102 = v335;
    goto LABEL_10;
  }

  v110 = v341;
  v111 = &v33[v92];
  v92 = v90;
  v112 = v334;
  (*(v341 + 32))(v334, v111, v91);
  sub_1DC2BE0B4();
  v312 = OUTLINED_FUNCTION_40_5();
  v113 = *(v110 + 8);
  v113(v112, v91);
  sub_1DC28EB30(v79, &qword_1ECC7BED8, &qword_1DC522250);
  v113(v2, v91);
  v90 = v92;
  sub_1DC28EB30(v33, &qword_1ECC7BED8, &qword_1DC522250);
  v98 = v339;
  v99 = v340;
  v101 = v337;
  v100 = v338;
  v102 = v335;
  if (v312)
  {
    goto LABEL_91;
  }

LABEL_10:
  sub_1DC510BCC();
  OUTLINED_FUNCTION_1_1(v1);
  v103 = OUTLINED_FUNCTION_45_0();
  sub_1DC2BE044(v103, v104);
  sub_1DC2BE044(v90, v102 + v92);
  OUTLINED_FUNCTION_2_0(v102);
  if (v95)
  {
    sub_1DC28EB30(v1, &qword_1ECC7BED8, &qword_1DC522250);
    OUTLINED_FUNCTION_2_0(v102 + v92);
    if (v95)
    {
      v33 = v102;
LABEL_90:
      sub_1DC28EB30(v33, &qword_1ECC7BED8, &qword_1DC522250);
      goto LABEL_91;
    }

    goto LABEL_18;
  }

  sub_1DC2BE044(v102, v330);
  OUTLINED_FUNCTION_2_0(v102 + v92);
  if (v105)
  {
    sub_1DC28EB30(v1, &qword_1ECC7BED8, &qword_1DC522250);
    OUTLINED_FUNCTION_24_2();
    v106 = OUTLINED_FUNCTION_56();
    v107(v106);
LABEL_18:
    sub_1DC28EB30(v102, &qword_1ECC7BED0, qword_1DC52A730);
    goto LABEL_19;
  }

  v122 = v341;
  v123 = v334;
  (*(v341 + 32))(v334, v102 + v92, v91);
  sub_1DC2BE0B4();
  v92 = OUTLINED_FUNCTION_40_5();
  v124 = *(v122 + 8);
  v124(v123, v91);
  sub_1DC28EB30(v1, &qword_1ECC7BED8, &qword_1DC522250);
  v125 = OUTLINED_FUNCTION_56();
  (v124)(v125);
  v98 = v339;
  v99 = v340;
  v101 = v337;
  v100 = v338;
  sub_1DC28EB30(v102, &qword_1ECC7BED8, &qword_1DC522250);
  if (v92)
  {
    goto LABEL_91;
  }

LABEL_19:
  v108 = v333;
  sub_1DC510BCC();
  OUTLINED_FUNCTION_1_1(v108);
  v109 = v332;
  sub_1DC2BE044(v108, v332);
  OUTLINED_FUNCTION_43_1();
  OUTLINED_FUNCTION_2_0(v109);
  if (v95)
  {
    sub_1DC28EB30(v108, &qword_1ECC7BED8, &qword_1DC522250);
    OUTLINED_FUNCTION_2_0(v109 + v92);
    if (v95)
    {
      goto LABEL_89;
    }

    goto LABEL_29;
  }

  sub_1DC2BE044(v109, v327);
  OUTLINED_FUNCTION_2_0(v109 + v92);
  if (v114)
  {
    sub_1DC28EB30(v333, &qword_1ECC7BED8, &qword_1DC522250);
    OUTLINED_FUNCTION_24_2();
    v115 = OUTLINED_FUNCTION_41();
    v116(v115);
LABEL_29:
    sub_1DC28EB30(v109, &qword_1ECC7BED0, qword_1DC52A730);
    goto LABEL_30;
  }

  v130 = OUTLINED_FUNCTION_0_1();
  v131(v130);
  sub_1DC2BE0B4();
  OUTLINED_FUNCTION_30_0();
  v132 = OUTLINED_FUNCTION_8_1();
  v101(v132);
  OUTLINED_FUNCTION_26_1();
  sub_1DC28EB30(v133, v134, v135);
  v136 = OUTLINED_FUNCTION_41();
  v101(v136);
  v101 = v337;
  v100 = v338;
  v137 = OUTLINED_FUNCTION_18_1();
  v98 = v339;
  v99 = v340;
  sub_1DC28EB30(v137, v138, v139);
  if (v92)
  {
    goto LABEL_91;
  }

LABEL_30:
  v117 = v100;
  v118 = v101;
  v119 = v99;
  v120 = v98;
  v121 = v331;
  sub_1DC510BCC();
  OUTLINED_FUNCTION_1_1(v121);
  v109 = v329;
  sub_1DC2BE044(v121, v329);
  OUTLINED_FUNCTION_43_1();
  OUTLINED_FUNCTION_2_0(v109);
  if (v95)
  {
    sub_1DC28EB30(v121, &qword_1ECC7BED8, &qword_1DC522250);
    OUTLINED_FUNCTION_2_0(v109 + v92);
    if (v95)
    {
      goto LABEL_89;
    }

    goto LABEL_40;
  }

  sub_1DC2BE044(v109, v324);
  OUTLINED_FUNCTION_2_0(v109 + v92);
  if (v126)
  {
    sub_1DC28EB30(v331, &qword_1ECC7BED8, &qword_1DC522250);
    v127 = OUTLINED_FUNCTION_9();
    v128(v127);
LABEL_40:
    sub_1DC28EB30(v109, &qword_1ECC7BED0, qword_1DC52A730);
    v154 = v120;
    v155 = v119;
    v152 = v118;
    v151 = v117;
    goto LABEL_41;
  }

  v144 = OUTLINED_FUNCTION_0_1();
  v145(v144);
  sub_1DC2BE0B4();
  OUTLINED_FUNCTION_21_3();
  v146 = OUTLINED_FUNCTION_8_1();
  (v119)(v146);
  OUTLINED_FUNCTION_26_1();
  sub_1DC28EB30(v147, v148, v149);
  v150 = OUTLINED_FUNCTION_34_0();
  (v119)(v150);
  v152 = v337;
  v151 = v338;
  v153 = OUTLINED_FUNCTION_18_1();
  v154 = v339;
  v155 = v340;
  sub_1DC28EB30(v153, v156, v157);
  if (v92)
  {
    goto LABEL_91;
  }

LABEL_41:
  v129 = v328;
  sub_1DC510BCC();
  OUTLINED_FUNCTION_1_1(v129);
  v109 = v325;
  sub_1DC2BE044(v129, v325);
  OUTLINED_FUNCTION_43_1();
  OUTLINED_FUNCTION_2_0(v109);
  if (v95)
  {
    sub_1DC28EB30(v129, &qword_1ECC7BED8, &qword_1DC522250);
    OUTLINED_FUNCTION_2_0(v109 + v92);
    if (v95)
    {
      goto LABEL_89;
    }

    goto LABEL_51;
  }

  OUTLINED_FUNCTION_51_0(v109, &v349);
  OUTLINED_FUNCTION_2_0(v109 + v92);
  if (v140)
  {
    sub_1DC28EB30(v328, &qword_1ECC7BED8, &qword_1DC522250);
    v141 = OUTLINED_FUNCTION_9();
    v142(v141);
LABEL_51:
    sub_1DC28EB30(v109, &qword_1ECC7BED0, qword_1DC52A730);
    goto LABEL_52;
  }

  v162 = OUTLINED_FUNCTION_0_1();
  v163(v162);
  sub_1DC2BE0B4();
  OUTLINED_FUNCTION_21_3();
  v164 = OUTLINED_FUNCTION_8_1();
  v152(v164);
  OUTLINED_FUNCTION_26_1();
  sub_1DC28EB30(v165, v166, v167);
  v168 = OUTLINED_FUNCTION_34_0();
  v152(v168);
  v152 = v337;
  v151 = v338;
  v169 = OUTLINED_FUNCTION_18_1();
  v154 = v339;
  v155 = v340;
  sub_1DC28EB30(v169, v170, v171);
  if (v92)
  {
    goto LABEL_91;
  }

LABEL_52:
  v143 = v326;
  sub_1DC510BCC();
  OUTLINED_FUNCTION_1_1(v143);
  v109 = v323;
  sub_1DC2BE044(v143, v323);
  OUTLINED_FUNCTION_43_1();
  OUTLINED_FUNCTION_2_0(v109);
  if (v95)
  {
    sub_1DC28EB30(v326, &qword_1ECC7BED8, &qword_1DC522250);
    OUTLINED_FUNCTION_2_0(v109 + v92);
    if (v95)
    {
      goto LABEL_89;
    }

    goto LABEL_62;
  }

  OUTLINED_FUNCTION_51_0(v109, &v347);
  OUTLINED_FUNCTION_2_0(v109 + v92);
  if (v158)
  {
    sub_1DC28EB30(v326, &qword_1ECC7BED8, &qword_1DC522250);
    v159 = OUTLINED_FUNCTION_9();
    v160(v159);
LABEL_62:
    sub_1DC28EB30(v109, &qword_1ECC7BED0, qword_1DC52A730);
    goto LABEL_63;
  }

  v176 = OUTLINED_FUNCTION_0_1();
  v177(v176);
  sub_1DC2BE0B4();
  OUTLINED_FUNCTION_21_3();
  v178 = OUTLINED_FUNCTION_8_1();
  v152(v178);
  OUTLINED_FUNCTION_26_1();
  sub_1DC28EB30(v179, v180, v181);
  v182 = OUTLINED_FUNCTION_34_0();
  v152(v182);
  v152 = v337;
  v151 = v338;
  v183 = OUTLINED_FUNCTION_18_1();
  v154 = v339;
  v155 = v340;
  sub_1DC28EB30(v183, v184, v185);
  if (v92)
  {
    goto LABEL_91;
  }

LABEL_63:
  v161 = v322;
  sub_1DC510BCC();
  OUTLINED_FUNCTION_1_1(v161);
  OUTLINED_FUNCTION_48_1(v161, &v348);
  OUTLINED_FUNCTION_43_1();
  OUTLINED_FUNCTION_2_0(v109);
  if (v95)
  {
    sub_1DC28EB30(v161, &qword_1ECC7BED8, &qword_1DC522250);
    OUTLINED_FUNCTION_2_0(v109 + v92);
    if (v95)
    {
      goto LABEL_89;
    }

    goto LABEL_73;
  }

  OUTLINED_FUNCTION_51_0(v109, &v345);
  OUTLINED_FUNCTION_2_0(v109 + v92);
  if (v172)
  {
    sub_1DC28EB30(v322, &qword_1ECC7BED8, &qword_1DC522250);
    v173 = OUTLINED_FUNCTION_9();
    v174(v173);
LABEL_73:
    sub_1DC28EB30(v109, &qword_1ECC7BED0, qword_1DC52A730);
    goto LABEL_74;
  }

  v192 = OUTLINED_FUNCTION_0_1();
  v193(v192);
  sub_1DC2BE0B4();
  OUTLINED_FUNCTION_21_3();
  v194 = OUTLINED_FUNCTION_8_1();
  v152(v194);
  OUTLINED_FUNCTION_26_1();
  sub_1DC28EB30(v195, v196, v197);
  v198 = OUTLINED_FUNCTION_34_0();
  v152(v198);
  v152 = v337;
  v151 = v338;
  v199 = OUTLINED_FUNCTION_18_1();
  v154 = v339;
  v155 = v340;
  sub_1DC28EB30(v199, v200, v201);
  if (v92)
  {
    goto LABEL_91;
  }

LABEL_74:
  v175 = v321;
  sub_1DC510BCC();
  OUTLINED_FUNCTION_1_1(v175);
  OUTLINED_FUNCTION_48_1(v175, &v346);
  OUTLINED_FUNCTION_43_1();
  OUTLINED_FUNCTION_2_0(v109);
  if (v95)
  {
    sub_1DC28EB30(v175, &qword_1ECC7BED8, &qword_1DC522250);
    OUTLINED_FUNCTION_2_0(v109 + v92);
    if (!v95)
    {
      goto LABEL_84;
    }

LABEL_89:
    v33 = v109;
    goto LABEL_90;
  }

  OUTLINED_FUNCTION_51_0(v109, &v343);
  OUTLINED_FUNCTION_2_0(v109 + v92);
  if (v186)
  {
    sub_1DC28EB30(v321, &qword_1ECC7BED8, &qword_1DC522250);
    v187 = OUTLINED_FUNCTION_9();
    v188(v187);
LABEL_84:
    sub_1DC28EB30(v109, &qword_1ECC7BED0, qword_1DC52A730);
    goto LABEL_85;
  }

  v207 = OUTLINED_FUNCTION_0_1();
  v208(v207);
  sub_1DC2BE0B4();
  OUTLINED_FUNCTION_21_3();
  v209 = OUTLINED_FUNCTION_8_1();
  v152(v209);
  OUTLINED_FUNCTION_26_1();
  sub_1DC28EB30(v210, v211, v212);
  v213 = OUTLINED_FUNCTION_34_0();
  v152(v213);
  v152 = v337;
  v151 = v338;
  v214 = OUTLINED_FUNCTION_18_1();
  v154 = v339;
  v155 = v340;
  sub_1DC28EB30(v214, v215, v216);
  if (v92)
  {
    goto LABEL_91;
  }

LABEL_85:
  v189 = v320;
  sub_1DC510BCC();
  OUTLINED_FUNCTION_1_1(v189);
  OUTLINED_FUNCTION_48_1(v189, &v344);
  OUTLINED_FUNCTION_43_1();
  OUTLINED_FUNCTION_2_0(v109);
  if (v95)
  {
    sub_1DC28EB30(v189, &qword_1ECC7BED8, &qword_1DC522250);
    OUTLINED_FUNCTION_2_0(v109 + v92);
    if (!v95)
    {
      goto LABEL_98;
    }

    goto LABEL_89;
  }

  OUTLINED_FUNCTION_51_0(v109, &v341);
  OUTLINED_FUNCTION_2_0(v109 + v92);
  if (v202)
  {
    sub_1DC28EB30(v320, &qword_1ECC7BED8, &qword_1DC522250);
    v203 = OUTLINED_FUNCTION_9();
    v204(v203);
LABEL_98:
    sub_1DC28EB30(v109, &qword_1ECC7BED0, qword_1DC52A730);
    goto LABEL_99;
  }

  v219 = OUTLINED_FUNCTION_0_1();
  v220(v219);
  sub_1DC2BE0B4();
  OUTLINED_FUNCTION_21_3();
  v221 = OUTLINED_FUNCTION_8_1();
  v152(v221);
  OUTLINED_FUNCTION_26_1();
  sub_1DC28EB30(v222, v223, v224);
  v225 = OUTLINED_FUNCTION_34_0();
  v152(v225);
  v152 = v337;
  v151 = v338;
  v226 = OUTLINED_FUNCTION_18_1();
  v154 = v339;
  v155 = v340;
  sub_1DC28EB30(v226, v227, v228);
  if ((v92 & 1) == 0)
  {
LABEL_99:
    sub_1DC510BCC();
    OUTLINED_FUNCTION_1_1(v151);
    OUTLINED_FUNCTION_48_1(v151, &v342);
    OUTLINED_FUNCTION_43_1();
    OUTLINED_FUNCTION_2_0(v109);
    if (v95)
    {
      sub_1DC28EB30(v151, &qword_1ECC7BED8, &qword_1DC522250);
      OUTLINED_FUNCTION_2_0(v109 + v92);
      v205 = v319;
      v206 = v318;
      if (v95)
      {
        goto LABEL_148;
      }
    }

    else
    {
      sub_1DC2BE044(v109, v152);
      OUTLINED_FUNCTION_2_0(v109 + v92);
      v205 = v319;
      v206 = v318;
      if (!v217)
      {
        v232 = OUTLINED_FUNCTION_0_1();
        v233(v232);
        sub_1DC2BE0B4();
        LODWORD(v337) = OUTLINED_FUNCTION_30_0();
        v92 = v152;
        v234 = OUTLINED_FUNCTION_13_2();
        v152(v234);
        OUTLINED_FUNCTION_26_1();
        sub_1DC28EB30(v235, v236, v237);
        (v152)(v152, v91);
        v238 = OUTLINED_FUNCTION_18_1();
        v154 = v339;
        v155 = v340;
        sub_1DC28EB30(v238, v239, v240);
        if (v337)
        {
          goto LABEL_149;
        }

LABEL_110:
        sub_1DC510BCC();
        OUTLINED_FUNCTION_1_1(v155);
        OUTLINED_FUNCTION_48_1(v155, &v340);
        OUTLINED_FUNCTION_43_1();
        OUTLINED_FUNCTION_2_0(v109);
        if (v95)
        {
          sub_1DC28EB30(v155, &qword_1ECC7BED8, &qword_1DC522250);
          OUTLINED_FUNCTION_2_0(v109 + v92);
          if (v95)
          {
            goto LABEL_148;
          }
        }

        else
        {
          sub_1DC2BE044(v109, v154);
          OUTLINED_FUNCTION_2_0(v109 + v92);
          if (!v229)
          {
            v245 = OUTLINED_FUNCTION_0_1();
            v246(v245);
            sub_1DC2BE0B4();
            v92 = v154;
            LODWORD(v339) = OUTLINED_FUNCTION_40_5();
            v247 = OUTLINED_FUNCTION_13_2();
            v152(v247);
            v155 = &qword_1DC522250;
            OUTLINED_FUNCTION_26_1();
            sub_1DC28EB30(v248, v249, v250);
            (v152)(v154, v91);
            v251 = OUTLINED_FUNCTION_18_1();
            sub_1DC28EB30(v251, v252, v253);
            if (v339)
            {
              goto LABEL_149;
            }

LABEL_121:
            v231 = v317;
            sub_1DC510BCC();
            OUTLINED_FUNCTION_1_1(v231);
            sub_1DC2BE044(v231, v206);
            sub_1DC2BE044(v90, v206 + v92);
            OUTLINED_FUNCTION_2_0(v206);
            if (v95)
            {
              sub_1DC28EB30(v231, &qword_1ECC7BED8, &qword_1DC522250);
              OUTLINED_FUNCTION_2_0(v206 + v92);
              if (v95)
              {
                v109 = v206;
LABEL_148:
                sub_1DC28EB30(v109, &qword_1ECC7BED8, &qword_1DC522250);
                goto LABEL_149;
              }
            }

            else
            {
              OUTLINED_FUNCTION_48_1(v206, &v335);
              OUTLINED_FUNCTION_2_0(v206 + v92);
              if (!v241)
              {
                OUTLINED_FUNCTION_14_1();
                v258 = OUTLINED_FUNCTION_10_2();
                v259(v258);
                sub_1DC2BE0B4();
                OUTLINED_FUNCTION_30_0();
                v260 = OUTLINED_FUNCTION_8_1();
                v152(v260);
                v155 = &qword_1DC522250;
                OUTLINED_FUNCTION_26_1();
                sub_1DC28EB30(v261, v262, v263);
                v264 = OUTLINED_FUNCTION_46_0();
                v152(v264);
                OUTLINED_FUNCTION_26_1();
                sub_1DC28EB30(v265, v266, v267);
                if (v92)
                {
                  goto LABEL_149;
                }

LABEL_132:
                v244 = v315;
                sub_1DC510BCC();
                OUTLINED_FUNCTION_1_1(v244);
                OUTLINED_FUNCTION_62_4(v244, &v337);
                v340 = v90;
                sub_1DC2BE044(v90, v90 + v92);
                OUTLINED_FUNCTION_2_0(v90);
                if (v95)
                {
                  sub_1DC28EB30(v244, &qword_1ECC7BED8, &qword_1DC522250);
                  OUTLINED_FUNCTION_2_0(v90 + v92);
                  if (v95)
                  {
LABEL_147:
                    v109 = v90;
                    v90 = v340;
                    goto LABEL_148;
                  }
                }

                else
                {
                  OUTLINED_FUNCTION_48_1(v90, &v333);
                  OUTLINED_FUNCTION_2_0(v90 + v92);
                  if (!v254)
                  {
                    OUTLINED_FUNCTION_14_1();
                    v273 = OUTLINED_FUNCTION_10_2();
                    v274(v273);
                    sub_1DC2BE0B4();
                    OUTLINED_FUNCTION_31_5();
                    v92 = v244;
                    v275 = OUTLINED_FUNCTION_40_5();
                    v276 = OUTLINED_FUNCTION_13_2();
                    v244(v276);
                    v155 = &qword_1DC522250;
                    OUTLINED_FUNCTION_26_1();
                    sub_1DC28EB30(v277, v278, v279);
                    v280 = OUTLINED_FUNCTION_46_0();
                    v244(v280);
                    OUTLINED_FUNCTION_26_1();
                    sub_1DC28EB30(v281, v282, v283);
                    if (v275)
                    {
                      v90 = v340;
                      goto LABEL_149;
                    }

                    goto LABEL_143;
                  }

                  sub_1DC28EB30(v244, &qword_1ECC7BED8, &qword_1DC522250);
                  OUTLINED_FUNCTION_24_2();
                  v255 = OUTLINED_FUNCTION_46_0();
                  v256(v255);
                }

                sub_1DC28EB30(v90, &qword_1ECC7BED0, qword_1DC52A730);
LABEL_143:
                v257 = v316;
                sub_1DC510BCC();
                OUTLINED_FUNCTION_1_1(v257);
                OUTLINED_FUNCTION_62_4(v257, &v334);
                sub_1DC2BE044(v340, v90 + v92);
                OUTLINED_FUNCTION_2_0(v90);
                if (!v95)
                {
                  sub_1DC2BE044(v90, v205);
                  OUTLINED_FUNCTION_2_0(v90 + v92);
                  if (!v268)
                  {
                    OUTLINED_FUNCTION_14_1();
                    v288 = OUTLINED_FUNCTION_10_2();
                    v289(v288);
                    sub_1DC2BE0B4();
                    OUTLINED_FUNCTION_30_0();
                    v290 = OUTLINED_FUNCTION_8_1();
                    v244(v290);
                    v155 = &qword_1DC522250;
                    OUTLINED_FUNCTION_26_1();
                    sub_1DC28EB30(v291, v292, v293);
                    v294 = OUTLINED_FUNCTION_41();
                    v244(v294);
                    OUTLINED_FUNCTION_26_1();
                    sub_1DC28EB30(v295, v296, v297);
                    v90 = v340;
                    if (v92)
                    {
                      goto LABEL_149;
                    }

                    goto LABEL_157;
                  }

                  sub_1DC28EB30(v316, &qword_1ECC7BED8, &qword_1DC522250);
                  OUTLINED_FUNCTION_24_2();
                  v269 = OUTLINED_FUNCTION_41();
                  v270(v269);
LABEL_156:
                  sub_1DC28EB30(v90, &qword_1ECC7BED0, qword_1DC52A730);
                  v90 = v340;
LABEL_157:
                  v271 = v313;
                  sub_1DC510BCC();
                  OUTLINED_FUNCTION_1_1(v271);
                  v272 = v314;
                  sub_1DC2BE044(v271, v314);
                  sub_1DC2D24EC(v90, v272 + v92);
                  OUTLINED_FUNCTION_2_0(v272);
                  if (!v95)
                  {
                    OUTLINED_FUNCTION_62_4(v272, &v330);
                    OUTLINED_FUNCTION_2_0(v272 + v92);
                    if (!v284)
                    {
                      v298 = v341;
                      v299 = *(v341 + 32);
                      v300 = OUTLINED_FUNCTION_10_2();
                      v301(v300);
                      sub_1DC2BE0B4();
                      v302 = OUTLINED_FUNCTION_30_0();
                      v303 = *(v298 + 8);
                      v303(v155, v91);
                      v304 = OUTLINED_FUNCTION_18_1();
                      sub_1DC28EB30(v304, v305, v306);
                      v307 = OUTLINED_FUNCTION_56();
                      (v303)(v307);
                      OUTLINED_FUNCTION_26_1();
                      sub_1DC28EB30(v308, v309, v310);
                      if (v302)
                      {
                        goto LABEL_150;
                      }

LABEL_168:
                      v190 = 0;
                      return v190 & 1;
                    }

                    sub_1DC28EB30(v271, &qword_1ECC7BED8, &qword_1DC522250);
                    v285 = *(v341 + 8);
                    v286 = OUTLINED_FUNCTION_56();
                    v287(v286);
LABEL_167:
                    sub_1DC28EB30(v272, &qword_1ECC7BED0, qword_1DC52A730);
                    goto LABEL_168;
                  }

                  sub_1DC28EB30(v271, &qword_1ECC7BED8, &qword_1DC522250);
                  OUTLINED_FUNCTION_2_0(v272 + v92);
                  if (!v95)
                  {
                    goto LABEL_167;
                  }

                  v90 = v272;
LABEL_149:
                  sub_1DC28EB30(v90, &qword_1ECC7BED8, &qword_1DC522250);
LABEL_150:
                  v190 = sub_1DC29F950(6u);
                  return v190 & 1;
                }

                sub_1DC28EB30(v316, &qword_1ECC7BED8, &qword_1DC522250);
                OUTLINED_FUNCTION_2_0(v90 + v92);
                if (!v95)
                {
                  goto LABEL_156;
                }

                goto LABEL_147;
              }

              sub_1DC28EB30(v317, &qword_1ECC7BED8, &qword_1DC522250);
              OUTLINED_FUNCTION_24_2();
              v242 = OUTLINED_FUNCTION_46_0();
              v243(v242);
            }

            sub_1DC28EB30(v206, &qword_1ECC7BED0, qword_1DC52A730);
            goto LABEL_132;
          }

          sub_1DC28EB30(v155, &qword_1ECC7BED8, &qword_1DC522250);
          OUTLINED_FUNCTION_24_2();
          v230(v154, v91);
        }

        sub_1DC28EB30(v109, &qword_1ECC7BED0, qword_1DC52A730);
        goto LABEL_121;
      }

      sub_1DC28EB30(v151, &qword_1ECC7BED8, &qword_1DC522250);
      OUTLINED_FUNCTION_24_2();
      v218(v152, v91);
    }

    sub_1DC28EB30(v109, &qword_1ECC7BED0, qword_1DC52A730);
    goto LABEL_110;
  }

LABEL_91:
  sub_1DC28EB30(v90, &qword_1ECC7BED8, &qword_1DC522250);
  v190 = 1;
  return v190 & 1;
}

uint64_t sub_1DC2D14F0()
{
  v163 = sub_1DC510BDC();
  v4 = OUTLINED_FUNCTION_0(v163);
  v166 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_1();
  v158 = v9 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BED0, qword_1DC52A730);
  v11 = OUTLINED_FUNCTION_35(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_15();
  v148 = v14;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_23_1();
  v150 = v16;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_23_1();
  v151 = v18;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_23_1();
  v153 = v20;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_23_1();
  v162 = v22;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_23_1();
  v165 = v24;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v146 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BED8, &qword_1DC522250);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28 - 8);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_23_1();
  v147 = v31;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_23_1();
  v160 = v33;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_23_1();
  v149 = v35;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_23_1();
  v159 = v37;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_23_1();
  v152 = v39;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_23_1();
  v161 = v41;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_23_1();
  v155 = v43;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_23_1();
  v157 = v45;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_23_1();
  v156 = v47;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_23_1();
  v154 = v49;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_52_2();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_53();
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_36_0();
  MEMORY[0x1EEE9AC00](v53);
  v54 = OUTLINED_FUNCTION_57();
  v55 = OUTLINED_FUNCTION_0(v54);
  v57 = v56;
  v59 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_1();
  sub_1DC510C7C();
  sub_1DC510C5C();
  v61 = *(v57 + 8);
  v60 = v57 + 8;
  v62 = OUTLINED_FUNCTION_55();
  v63 = v163;
  v64(v62);
  sub_1DC510BCC();
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v63);
  v167 = v10;
  v65 = *(v10 + 48);
  v66 = OUTLINED_FUNCTION_45_0();
  sub_1DC2BE044(v66, v67);
  v164 = v0;
  sub_1DC2BE044(v0, &v27[v65]);
  OUTLINED_FUNCTION_5_3(v27);
  if (!v69)
  {
    sub_1DC2BE044(v27, v3);
    OUTLINED_FUNCTION_5_3(&v27[v65]);
    if (!v69)
    {
      OUTLINED_FUNCTION_38_4();
      v83(v158);
      sub_1DC2BE0B4();
      HIDWORD(v146) = sub_1DC5176CC();
      v84 = *(v60 + 8);
      v60 += 8;
      v65 = v84;
      v85 = OUTLINED_FUNCTION_55();
      v84(v85);
      sub_1DC28EB30(v2, &qword_1ECC7BED8, &qword_1DC522250);
      (v84)(v3, v63);
      sub_1DC28EB30(v27, &qword_1ECC7BED8, &qword_1DC522250);
      v68 = v164;
      v71 = v161;
      v72 = v162;
      if ((v146 & 0x100000000) != 0)
      {
        goto LABEL_25;
      }

LABEL_10:
      sub_1DC510BCC();
      OUTLINED_FUNCTION_12_2(v1);
      v73 = v165;
      sub_1DC2BE044(v1, v165);
      sub_1DC2BE044(v68, v73 + v65);
      OUTLINED_FUNCTION_5_3(v73);
      if (v69)
      {
        sub_1DC28EB30(v1, &qword_1ECC7BED8, &qword_1DC522250);
        OUTLINED_FUNCTION_5_3(v73 + v65);
        v75 = v159;
        v74 = v160;
        v76 = v157;
        if (v69)
        {
          v77 = v165;
          goto LABEL_57;
        }
      }

      else
      {
        v78 = v154;
        sub_1DC2BE044(v73, v154);
        OUTLINED_FUNCTION_5_3(v73 + v65);
        if (!v79)
        {
          OUTLINED_FUNCTION_38_4();
          v92(v158);
          sub_1DC2BE0B4();
          v93 = sub_1DC5176CC();
          v65 = v68;
          v94 = *(v60 + 8);
          v95 = OUTLINED_FUNCTION_55();
          v94(v95);
          sub_1DC28EB30(v1, &qword_1ECC7BED8, &qword_1DC522250);
          (v94)(v78, v63);
          v72 = v162;
          sub_1DC28EB30(v73, &qword_1ECC7BED8, &qword_1DC522250);
          v75 = v159;
          v74 = v160;
          v76 = v157;
          if (v93)
          {
            goto LABEL_58;
          }

LABEL_19:
          v81 = v156;
          sub_1DC510BCC();
          OUTLINED_FUNCTION_12_2(v81);
          sub_1DC2BE044(v81, v72);
          sub_1DC2BE044(v68, v72 + v65);
          OUTLINED_FUNCTION_5_3(v72);
          if (v69)
          {
            sub_1DC28EB30(v81, &qword_1ECC7BED8, &qword_1DC522250);
            OUTLINED_FUNCTION_5_3(v72 + v65);
            v82 = v155;
            if (v69)
            {
              v77 = v72;
              goto LABEL_57;
            }
          }

          else
          {
            sub_1DC2BE044(v72, v76);
            OUTLINED_FUNCTION_5_3(v72 + v65);
            v82 = v155;
            if (!v87)
            {
              OUTLINED_FUNCTION_28_2();
              v102 = OUTLINED_FUNCTION_37_0();
              v103(v102);
              sub_1DC2BE0B4();
              OUTLINED_FUNCTION_31_5();
              v65 = v75;
              sub_1DC5176CC();
              v104 = OUTLINED_FUNCTION_27_0();
              (v74)(v104);
              sub_1DC28EB30(v156, &qword_1ECC7BED8, &qword_1DC522250);
              v105 = OUTLINED_FUNCTION_45_0();
              (v74)(v105);
              v63 = v75;
              v75 = v159;
              v74 = v160;
              v71 = v161;
              sub_1DC28EB30(v72, &qword_1ECC7BED8, &qword_1DC522250);
              if (v65)
              {
                goto LABEL_58;
              }

              goto LABEL_30;
            }

            sub_1DC28EB30(v156, &qword_1ECC7BED8, &qword_1DC522250);
            OUTLINED_FUNCTION_24_2();
            v88(v76, v63);
          }

          sub_1DC28EB30(v72, &qword_1ECC7BED0, qword_1DC52A730);
LABEL_30:
          sub_1DC510BCC();
          OUTLINED_FUNCTION_12_2(v82);
          v89 = v82;
          v90 = v82;
          v91 = v153;
          sub_1DC2BE044(v89, v153);
          sub_1DC2BE044(v68, v91 + v65);
          OUTLINED_FUNCTION_5_3(v91);
          if (!v69)
          {
            v96 = OUTLINED_FUNCTION_39_0();
            sub_1DC2BE044(v96, v97);
            OUTLINED_FUNCTION_5_3(v91 + v65);
            if (!v98)
            {
              OUTLINED_FUNCTION_28_2();
              v112 = OUTLINED_FUNCTION_37_0();
              v113(v112);
              sub_1DC2BE0B4();
              OUTLINED_FUNCTION_42_4();
              v114 = OUTLINED_FUNCTION_27_0();
              (v74)(v114);
              sub_1DC28EB30(v155, &qword_1ECC7BED8, &qword_1DC522250);
              (v74)(v71, v75);
              v63 = v75;
              v75 = v159;
              v74 = v160;
              v115 = OUTLINED_FUNCTION_39_0();
              sub_1DC28EB30(v115, v116, &qword_1DC522250);
              if (v65)
              {
                goto LABEL_58;
              }

LABEL_41:
              v100 = v152;
              sub_1DC510BCC();
              OUTLINED_FUNCTION_12_2(v100);
              v101 = v151;
              sub_1DC2BE044(v100, v151);
              sub_1DC2BE044(v68, v101 + v65);
              OUTLINED_FUNCTION_5_3(v101);
              if (v69)
              {
                sub_1DC28EB30(v100, &qword_1ECC7BED8, &qword_1DC522250);
                OUTLINED_FUNCTION_5_3(v101 + v65);
                if (v69)
                {
LABEL_56:
                  v77 = v101;
                  goto LABEL_57;
                }
              }

              else
              {
                v106 = OUTLINED_FUNCTION_45_0();
                sub_1DC2BE044(v106, v107);
                OUTLINED_FUNCTION_5_3(v101 + v65);
                if (!v108)
                {
                  OUTLINED_FUNCTION_28_2();
                  v123 = OUTLINED_FUNCTION_37_0();
                  v124(v123);
                  sub_1DC2BE0B4();
                  OUTLINED_FUNCTION_42_4();
                  v125 = OUTLINED_FUNCTION_27_0();
                  (v74)(v125);
                  sub_1DC28EB30(v152, &qword_1ECC7BED8, &qword_1DC522250);
                  (v74)(v75, v75);
                  v63 = v75;
                  v74 = v160;
                  sub_1DC28EB30(v101, &qword_1ECC7BED8, &qword_1DC522250);
                  if (v65)
                  {
                    goto LABEL_58;
                  }

                  goto LABEL_52;
                }

                sub_1DC28EB30(v152, &qword_1ECC7BED8, &qword_1DC522250);
                OUTLINED_FUNCTION_24_2();
                v109(v75, v63);
              }

              sub_1DC28EB30(v101, &qword_1ECC7BED0, qword_1DC52A730);
LABEL_52:
              v110 = v149;
              sub_1DC510BCC();
              OUTLINED_FUNCTION_12_2(v110);
              v101 = v150;
              sub_1DC2BE044(v110, v150);
              sub_1DC2BE044(v68, v101 + v65);
              OUTLINED_FUNCTION_5_3(v101);
              if (!v69)
              {
                v117 = OUTLINED_FUNCTION_46_0();
                sub_1DC2BE044(v117, v118);
                OUTLINED_FUNCTION_5_3(v101 + v65);
                if (!v119)
                {
                  v91 = v74;
                  OUTLINED_FUNCTION_28_2();
                  v127 = OUTLINED_FUNCTION_37_0();
                  v128(v127);
                  sub_1DC2BE0B4();
                  OUTLINED_FUNCTION_42_4();
                  v129 = OUTLINED_FUNCTION_27_0();
                  (v74)(v129);
                  OUTLINED_FUNCTION_32();
                  sub_1DC28EB30(v130, v131, v132);
                  (v74)(v74, v75);
                  v63 = v75;
                  OUTLINED_FUNCTION_32();
                  sub_1DC28EB30(v133, v134, v135);
                  if (v65)
                  {
                    goto LABEL_58;
                  }

                  goto LABEL_67;
                }

                sub_1DC28EB30(v110, &qword_1ECC7BED8, &qword_1DC522250);
                OUTLINED_FUNCTION_24_2();
                v120(v74, v63);
LABEL_66:
                sub_1DC28EB30(v101, &qword_1ECC7BED0, qword_1DC52A730);
LABEL_67:
                v121 = v147;
                sub_1DC510BCC();
                OUTLINED_FUNCTION_12_2(v121);
                v122 = v148;
                sub_1DC2BE044(v121, v148);
                sub_1DC2D24EC(v68, v122 + v65);
                OUTLINED_FUNCTION_5_3(v122);
                if (!v69)
                {
                  OUTLINED_FUNCTION_62_4(v122, &v168);
                  OUTLINED_FUNCTION_5_3(v122 + v65);
                  if (!v126)
                  {
                    OUTLINED_FUNCTION_38_4();
                    v136 = v158;
                    v137(v158);
                    sub_1DC2BE0B4();
                    OUTLINED_FUNCTION_39_0();
                    v138 = sub_1DC5176CC();
                    v139 = *(v74 + 8);
                    v139(v136, v63);
                    OUTLINED_FUNCTION_32();
                    sub_1DC28EB30(v140, v141, v142);
                    v139(v91, v63);
                    OUTLINED_FUNCTION_32();
                    sub_1DC28EB30(v143, v144, v145);
                    if (v138)
                    {
                      goto LABEL_59;
                    }

LABEL_78:
                    v86 = 0;
                    return v86 & 1;
                  }

                  sub_1DC28EB30(v121, &qword_1ECC7BED8, &qword_1DC522250);
                  (*(v166 + 8))(v91, v63);
LABEL_77:
                  sub_1DC28EB30(v122, &qword_1ECC7BED0, qword_1DC52A730);
                  goto LABEL_78;
                }

                sub_1DC28EB30(v121, &qword_1ECC7BED8, &qword_1DC522250);
                OUTLINED_FUNCTION_5_3(v122 + v65);
                if (!v69)
                {
                  goto LABEL_77;
                }

                v68 = v122;
LABEL_58:
                sub_1DC28EB30(v68, &qword_1ECC7BED8, &qword_1DC522250);
LABEL_59:
                v86 = sub_1DC29F950(7u);
                return v86 & 1;
              }

              sub_1DC28EB30(v110, &qword_1ECC7BED8, &qword_1DC522250);
              OUTLINED_FUNCTION_5_3(v101 + v65);
              if (!v69)
              {
                goto LABEL_66;
              }

              goto LABEL_56;
            }

            sub_1DC28EB30(v155, &qword_1ECC7BED8, &qword_1DC522250);
            OUTLINED_FUNCTION_24_2();
            v99(v71, v63);
LABEL_40:
            sub_1DC28EB30(v91, &qword_1ECC7BED0, qword_1DC52A730);
            goto LABEL_41;
          }

          sub_1DC28EB30(v90, &qword_1ECC7BED8, &qword_1DC522250);
          OUTLINED_FUNCTION_5_3(v91 + v65);
          if (!v69)
          {
            goto LABEL_40;
          }

          v77 = v91;
LABEL_57:
          sub_1DC28EB30(v77, &qword_1ECC7BED8, &qword_1DC522250);
          goto LABEL_58;
        }

        sub_1DC28EB30(v1, &qword_1ECC7BED8, &qword_1DC522250);
        OUTLINED_FUNCTION_24_2();
        v80(v78, v63);
        v75 = v159;
        v74 = v160;
        v76 = v157;
      }

      sub_1DC28EB30(v165, &qword_1ECC7BED0, qword_1DC52A730);
      goto LABEL_19;
    }

    sub_1DC28EB30(v2, &qword_1ECC7BED8, &qword_1DC522250);
    OUTLINED_FUNCTION_24_2();
    v70(v3, v63);
LABEL_9:
    sub_1DC28EB30(v27, &qword_1ECC7BED0, qword_1DC52A730);
    v68 = v164;
    v71 = v161;
    v72 = v162;
    goto LABEL_10;
  }

  sub_1DC28EB30(v2, &qword_1ECC7BED8, &qword_1DC522250);
  OUTLINED_FUNCTION_5_3(&v27[v65]);
  if (!v69)
  {
    goto LABEL_9;
  }

  sub_1DC28EB30(v27, &qword_1ECC7BED8, &qword_1DC522250);
  v68 = v164;
LABEL_25:
  sub_1DC28EB30(v68, &qword_1ECC7BED8, &qword_1DC522250);
  v86 = 1;
  return v86 & 1;
}

uint64_t sub_1DC2D2378(unsigned __int8 a1)
{
  sub_1DC5182FC();
  MEMORY[0x1E1296BB0](a1);
  return sub_1DC51833C();
}

uint64_t sub_1DC2D23DC()
{
  v1 = *v0;
  sub_1DC5182FC();
  MEMORY[0x1E1296BB0](v1);
  return sub_1DC51833C();
}

unint64_t sub_1DC2D2420(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  sub_1DC5182FC();
  MEMORY[0x1E1296BB0](a1);
  v4 = sub_1DC51833C();

  return sub_1DC2D248C(a1, v4);
}

unint64_t sub_1DC2D248C(unsigned __int8 a1, uint64_t a2)
{
  v3 = a1;
  v4 = ~(-1 << *(v2 + 32));
    ;
  }

  return result;
}

uint64_t sub_1DC2D24EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BED8, &qword_1DC522250);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1DC2D2560()
{
  result = qword_1ECC7BCA8;
  if (!qword_1ECC7BCA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7BCA8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PlannerFeatureFlags(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF6)
  {
    if (a2 + 10 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 10) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 11;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v5 = v6 - 11;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for PlannerFeatureFlags(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
          *result = a2 + 10;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DC2D2720()
{
  result = qword_1ECC7BCB0;
  if (!qword_1ECC7BCB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7BCB0);
  }

  return result;
}

unint64_t sub_1DC2D2774()
{
  result = qword_1ECC7BEE8;
  if (!qword_1ECC7BEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7BEE8);
  }

  return result;
}

void NLRoutingDecisionMessage.RoutingDecision.protobuf.getter()
{
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_57_0();
  v3 = sub_1DC51342C();
  v4 = OUTLINED_FUNCTION_10(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_12();
  v7 = sub_1DC51313C();
  v8 = OUTLINED_FUNCTION_10(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_12();
  v11 = sub_1DC5133DC();
  v12 = OUTLINED_FUNCTION_10(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_12();
  v15 = sub_1DC515F3C();
  v16 = OUTLINED_FUNCTION_0(v15);
  v92 = v17;
  v93 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_2_1();
  v89 = v20;
  OUTLINED_FUNCTION_12();
  v96 = sub_1DC51588C();
  v21 = OUTLINED_FUNCTION_0(v96);
  v97 = v22;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_2_1();
  v91 = v25;
  OUTLINED_FUNCTION_12();
  v95 = sub_1DC51329C();
  v26 = OUTLINED_FUNCTION_0(v95);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_2_1();
  v101 = v29;
  OUTLINED_FUNCTION_12();
  v30 = sub_1DC51333C();
  v31 = OUTLINED_FUNCTION_10(v30);
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_4_4();
  v34 = sub_1DC51345C();
  v35 = OUTLINED_FUNCTION_10(v34);
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_18();
  v38 = sub_1DC5132DC();
  v39 = OUTLINED_FUNCTION_10(v38);
  v41 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_44_1();
  v42 = sub_1DC5132FC();
  v43 = OUTLINED_FUNCTION_10(v42);
  v45 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_24_1();
  v46 = sub_1DC5157EC();
  v47 = OUTLINED_FUNCTION_0(v46);
  v49 = v48;
  v51 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_1();
  v54 = (v53 - v52);
  sub_1DC51347C();
  (*(v49 + 16))(v54, v1, v46);
  v55 = (*(v49 + 88))(v54, v46);
  if (v55 == *MEMORY[0x1E69D02D0])
  {
    v56 = OUTLINED_FUNCTION_43_2();
    v57(v56);
    v58 = *v54;
    sub_1DC5132CC();
    sub_1DC51338C();
    v59 = sub_1DC51337C();
    sub_1DC5132BC();
    v60 = OUTLINED_FUNCTION_32_0();
    v59(v60);
LABEL_19:
    OUTLINED_FUNCTION_26_0();
    return;
  }

  if (v55 != *MEMORY[0x1E69D02C8])
  {
    if (v55 == *MEMORY[0x1E69D02E0])
    {
      v75 = OUTLINED_FUNCTION_43_2();
      v76(v75);
      (*(v92 + 32))(v89, v54, v93);
      sub_1DC5133CC();
      sub_1DC5133FC();
      AjaxMetadata.protobuf.getter();
      if (v2)
      {
        (*(v92 + 8))(v89, v93);
        v77 = sub_1DC51348C();
        OUTLINED_FUNCTION_0_2(v77);
        (*(v78 + 8))(v0);
      }

      else
      {
        v83 = sub_1DC5133EC();
        sub_1DC5133BC();
        v84 = OUTLINED_FUNCTION_32_0();
        v83(v84);
        (*(v92 + 8))(v89, v93);
      }
    }

    else if (v55 == *MEMORY[0x1E69D02D8])
    {
      sub_1DC512D5C();
      sub_1DC51339C();
    }

    else if (v55 == *MEMORY[0x1E69D02F8])
    {
      sub_1DC512D5C();
      sub_1DC51346C();
    }

    else if (v55 == *MEMORY[0x1E69D02F0])
    {
      sub_1DC512D5C();
      sub_1DC51343C();
    }

    else
    {
      OUTLINED_FUNCTION_36_1();
      OUTLINED_FUNCTION_3_4();
      MEMORY[0x1E1296160](0x44676E6974756F52, 0xEF6E6F6973696365);
      OUTLINED_FUNCTION_38_5();
      sub_1DC517FEC();
      sub_1DC2D2774();
      v85 = OUTLINED_FUNCTION_33_1();
      *v86 = v98;
      v86[1] = v100;
      OUTLINED_FUNCTION_27_1(v85, v86);
      v87 = sub_1DC51348C();
      OUTLINED_FUNCTION_0_2(v87);
      (*(v88 + 8))(v0);
      (*(v49 + 8))(v54, v46);
    }

    goto LABEL_19;
  }

  v61 = OUTLINED_FUNCTION_43_2();
  v62(v61);
  v63 = *v54;
  sub_1DC51332C();
  v90 = v0;
  sub_1DC51336C();
  v64 = *(v63 + 16);
  if (!v64)
  {
LABEL_11:

    v81 = sub_1DC51335C();
    sub_1DC5132BC();
    v82 = OUTLINED_FUNCTION_32_0();
    v81(v82);
    goto LABEL_19;
  }

  v99 = MEMORY[0x1E69E7CC0];
  sub_1DC2D4C74(0, v64, 0);
  v65 = 0;
  OUTLINED_FUNCTION_22_0();
  v94 = v63 + v66;
  v68 = (v67 + 8);
  v69 = v91;
  while (v65 < *(v63 + 16))
  {
    (*(v97 + 16))(v69, v94 + *(v97 + 72) * v65, v96);
    NLRoutingDecisionMessage.QueryRewrite.protobuf.getter();
    if (v2)
    {

      (*v68)(v69, v96);
      v79 = sub_1DC51348C();
      OUTLINED_FUNCTION_0_2(v79);
      (*(v80 + 8))(v90);

      goto LABEL_19;
    }

    v70 = v63;
    (*v68)(v69, v96);
    v72 = *(v99 + 16);
    v71 = *(v99 + 24);
    if (v72 >= v71 >> 1)
    {
      sub_1DC2D4C74(v71 > 1, v72 + 1, 1);
      v69 = v91;
    }

    ++v65;
    *(v99 + 16) = v72 + 1;
    OUTLINED_FUNCTION_22_0();
    (*(v74 + 32))(v99 + v73 + *(v74 + 72) * v72, v101, v95);
    v63 = v70;
    if (v64 == v65)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
}

void NLRoutingDecisionMessage.QueryRewrite.protobuf.getter()
{
  OUTLINED_FUNCTION_28_1();
  v5 = v4;
  v6 = sub_1DC5135BC();
  v7 = OUTLINED_FUNCTION_10(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_12();
  v10 = sub_1DC5131FC();
  v11 = OUTLINED_FUNCTION_10(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_12();
  v14 = sub_1DC5158DC();
  v84 = OUTLINED_FUNCTION_0(v14);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v84);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_12();
  v17 = sub_1DC5135EC();
  v18 = OUTLINED_FUNCTION_10(v17);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_12();
  v21 = sub_1DC51325C();
  v22 = OUTLINED_FUNCTION_10(v21);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_12();
  v25 = sub_1DC51591C();
  v85 = OUTLINED_FUNCTION_0(v25);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v85);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_12();
  v28 = sub_1DC5136CC();
  v29 = OUTLINED_FUNCTION_10(v28);
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_1();
  v32 = sub_1DC51317C();
  v33 = OUTLINED_FUNCTION_10(v32);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_24_1();
  v36 = sub_1DC51587C();
  v37 = OUTLINED_FUNCTION_0(v36);
  v39 = v38;
  v41 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_4_4();
  v42 = sub_1DC51588C();
  v43 = OUTLINED_FUNCTION_0(v42);
  v45 = v44;
  v47 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_17_0();
  sub_1DC51328C();
  (*(v45 + 16))(v2, v0, v42);
  v48 = *(v45 + 88);
  v49 = OUTLINED_FUNCTION_29_0();
  v51 = v50(v49);
  if (v51 == *MEMORY[0x1E69D0330])
  {
    v52 = *(v45 + 96);
    v53 = OUTLINED_FUNCTION_29_0();
    v54(v53);
    (*(v39 + 32))(v3, v2, v36);
    sub_1DC51316C();
    sub_1DC5131AC();
    NLRoutingDecisionMessage.SiriXQueryRewrite.protobuf.getter();
    if (v1)
    {
      v55 = OUTLINED_FUNCTION_55_1();
      v56(v55, v36);
      v57 = sub_1DC51329C();
      OUTLINED_FUNCTION_0_2(v57);
      (*(v58 + 8))(v5);
    }

    else
    {
      v76 = sub_1DC51319C();
      sub_1DC51315C();
      v77 = OUTLINED_FUNCTION_32_0();
      v76(v77);
      v78 = OUTLINED_FUNCTION_55_1();
      v79(v78, v36);
    }
  }

  else
  {
    if (v51 == *MEMORY[0x1E69D0340])
    {
      v59 = *(v45 + 96);
      v60 = OUTLINED_FUNCTION_29_0();
      v61(v60);
      v62 = OUTLINED_FUNCTION_9_0();
      v63 = v85;
      v64(v62, v2, v85);
      sub_1DC51324C();
      sub_1DC51327C();
      sub_1DC5135DC();
      sub_1DC5158EC();
      sub_1DC5130BC();
      v65 = sub_1DC51326C();
      sub_1DC51323C();
      v66 = OUTLINED_FUNCTION_32_0();
      v65(v66);
    }

    else
    {
      if (v51 != *MEMORY[0x1E69D0338])
      {
        OUTLINED_FUNCTION_36_1();
        OUTLINED_FUNCTION_3_4();
        MEMORY[0x1E1296160](0x7765527972657551, 0xEC00000065746972);
        OUTLINED_FUNCTION_38_5();
        sub_1DC517FEC();
        sub_1DC2D2774();
        v80 = OUTLINED_FUNCTION_33_1();
        *v81 = v86;
        v81[1] = v87;
        OUTLINED_FUNCTION_27_1(v80, v81);
        v82 = sub_1DC51329C();
        OUTLINED_FUNCTION_0_2(v82);
        (*(v83 + 8))(v5);
        (*(v45 + 8))(v2, v42);
        goto LABEL_11;
      }

      v67 = *(v45 + 96);
      v68 = OUTLINED_FUNCTION_29_0();
      v69(v68);
      v70 = OUTLINED_FUNCTION_9_0();
      v63 = v84;
      v71(v70, v2, v84);
      sub_1DC5131EC();
      sub_1DC51321C();
      sub_1DC5135AC();
      sub_1DC5158AC();
      sub_1DC5130BC();
      v72 = sub_1DC51320C();
      sub_1DC5131DC();
      v73 = OUTLINED_FUNCTION_32_0();
      v72(v73);
    }

    v74 = OUTLINED_FUNCTION_25_1();
    v75(v74, v63);
  }

LABEL_11:
  OUTLINED_FUNCTION_26_0();
}

void AjaxMetadata.protobuf.getter()
{
  OUTLINED_FUNCTION_28_1();
  v4 = v3;
  v5 = sub_1DC51358C();
  v6 = OUTLINED_FUNCTION_10(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_12();
  v9 = sub_1DC5161CC();
  v10 = OUTLINED_FUNCTION_0(v9);
  v26 = v11;
  v27 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_44_1();
  v14 = sub_1DC5130AC();
  v15 = OUTLINED_FUNCTION_10(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_23_0();
  v18 = sub_1DC5162EC();
  v19 = OUTLINED_FUNCTION_0(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_17_0();
  sub_1DC51312C();
  sub_1DC515F2C();
  QueryType.protobuf.getter();
  (*(v21 + 8))(v1, v18);
  if (v0)
  {
    v24 = sub_1DC51313C();
    OUTLINED_FUNCTION_0_2(v24);
    (*(v25 + 8))(v4);
  }

  else
  {
    sub_1DC51311C();
    sub_1DC515E2C();
    PrescribedAjaxTool.protobuf.getter();
    (*(v26 + 8))(v2, v27);
    sub_1DC5130FC();
  }

  OUTLINED_FUNCTION_51_1();
  OUTLINED_FUNCTION_26_0();
}

uint64_t NLRoutingDecisionMessage.PlannerQueryRewrite.init(protobuf:)()
{
  OUTLINED_FUNCTION_45_3();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BF10, &unk_1DC522A50);
  OUTLINED_FUNCTION_10(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_46_1();
  sub_1DC5158FC();
  v7 = sub_1DC51591C();
  OUTLINED_FUNCTION_34_1(v7);
  if (v8)
  {
    sub_1DC2AAF50(v1, &qword_1ECC7BF10, &unk_1DC522A50);
    OUTLINED_FUNCTION_58_1();
    OUTLINED_FUNCTION_33_1();
    OUTLINED_FUNCTION_15_0(v9, 96);
  }

  else
  {
    OUTLINED_FUNCTION_7_1(v2);
    v11 = *(v10 + 32);
    v12 = OUTLINED_FUNCTION_41_1();
    v13(v12);
  }

  v14 = sub_1DC5135EC();
  OUTLINED_FUNCTION_0_2(v14);
  return (*(v15 + 8))(v0);
}

uint64_t NLRoutingDecisionMessage.SearchQueryRewrite.init(protobuf:)()
{
  OUTLINED_FUNCTION_45_3();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BF18, &qword_1DC522340);
  OUTLINED_FUNCTION_10(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_46_1();
  sub_1DC5158BC();
  v7 = sub_1DC5158DC();
  OUTLINED_FUNCTION_34_1(v7);
  if (v8)
  {
    sub_1DC2AAF50(v1, &qword_1ECC7BF18, &qword_1DC522340);
    OUTLINED_FUNCTION_58_1();
    OUTLINED_FUNCTION_33_1();
    OUTLINED_FUNCTION_15_0(v9, 94);
  }

  else
  {
    OUTLINED_FUNCTION_7_1(v2);
    v11 = *(v10 + 32);
    v12 = OUTLINED_FUNCTION_41_1();
    v13(v12);
  }

  v14 = sub_1DC5135BC();
  OUTLINED_FUNCTION_0_2(v14);
  return (*(v15 + 8))(v0);
}

void NLRoutingDecisionMessage.SiriXQueryRewrite.protobuf.getter()
{
  OUTLINED_FUNCTION_28_1();
  v3 = v2;
  v4 = sub_1DC51365C();
  v5 = OUTLINED_FUNCTION_10(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_17_0();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BF08, &unk_1DC522330);
  OUTLINED_FUNCTION_10(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_18();
  v12 = sub_1DC5157FC();
  v13 = OUTLINED_FUNCTION_0(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_1();
  v20 = v19 - v18;
  sub_1DC5136BC();
  sub_1DC51582C();
  sub_1DC5130BC();
  sub_1DC51580C();
  OUTLINED_FUNCTION_39(v1, 1, v12);
  if (v21)
  {
    sub_1DC2AAF50(v1, &qword_1ECC7BF08, &unk_1DC522330);
  }

  else
  {
    (*(v15 + 32))(v20, v1, v12);
    NLRoutingDecisionMessage.SiriXQueryRewrite.CorrectionOutcome.protobuf.getter();
    v22 = (v15 + 8);
    if (v0)
    {
      (*v22)(v20, v12);
      v23 = sub_1DC5136CC();
      OUTLINED_FUNCTION_0_2(v23);
      (*(v24 + 8))(v3);
    }

    else
    {
      sub_1DC51367C();
      (*v22)(v20, v12);
    }
  }

  OUTLINED_FUNCTION_26_0();
}

void NLRoutingDecisionMessage.SiriXQueryRewrite.CorrectionOutcome.init(protobuf:)()
{
  OUTLINED_FUNCTION_28_1();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BF20, &qword_1DC522348);
  OUTLINED_FUNCTION_10(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_23_0();
  v9 = sub_1DC5135FC();
  v10 = OUTLINED_FUNCTION_0(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_42_3();
  sub_1DC51363C();
  OUTLINED_FUNCTION_39(v0, 1, v9);
  if (v16)
  {
    sub_1DC2AAF50(v0, &qword_1ECC7BF20, &qword_1DC522348);
    sub_1DC2D2774();
    v17 = OUTLINED_FUNCTION_33_1();
    *v18 = 0xD000000000000028;
    v18[1] = 0x80000001DC53CF90;
    OUTLINED_FUNCTION_35_2(v17, v18);
    v19 = sub_1DC51365C();
    OUTLINED_FUNCTION_0_2(v19);
    (*(v20 + 8))(v2);
  }

  else
  {
    v21 = OUTLINED_FUNCTION_48_2();
    v22(v21);
    v23 = OUTLINED_FUNCTION_49_1();
    v24(v23);
    v25 = *(v12 + 88);
    v26 = OUTLINED_FUNCTION_16();
    if (v27(v26) == *MEMORY[0x1E69D1000])
    {
      v28 = sub_1DC51365C();
      OUTLINED_FUNCTION_0_2(v28);
      (*(v29 + 8))(v2);
      v30 = *(v12 + 8);
      v31 = OUTLINED_FUNCTION_47_0();
      v30(v31);
      v32 = *MEMORY[0x1E69D0320];
      v33 = sub_1DC5157FC();
      OUTLINED_FUNCTION_35(v33);
      (*(v34 + 104))(v4, v32);
      v35 = OUTLINED_FUNCTION_16();
      v30(v35);
    }

    else
    {
      OUTLINED_FUNCTION_13_3();
      OUTLINED_FUNCTION_3_4();
      OUTLINED_FUNCTION_31_1();
      MEMORY[0x1E1296160](0xD000000000000011);
      OUTLINED_FUNCTION_38_5();
      sub_1DC517FEC();
      sub_1DC2D2774();
      v36 = OUTLINED_FUNCTION_33_1();
      *v37 = v43;
      v37[1] = v44;
      OUTLINED_FUNCTION_35_2(v36, v37);
      v38 = sub_1DC51365C();
      OUTLINED_FUNCTION_0_2(v38);
      (*(v39 + 8))(v2);
      v40 = *(v12 + 8);
      v41 = OUTLINED_FUNCTION_47_0();
      v40(v41);
      v42 = OUTLINED_FUNCTION_16();
      v40(v42);
    }
  }

  OUTLINED_FUNCTION_26_0();
}

uint64_t NLRoutingDecisionMessage.SiriXQueryRewrite.CorrectionOutcome.protobuf.getter()
{
  OUTLINED_FUNCTION_57_0();
  v3 = sub_1DC51361C();
  v4 = OUTLINED_FUNCTION_10(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_24_1();
  v7 = sub_1DC5157FC();
  v8 = OUTLINED_FUNCTION_0(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_17_0();
  sub_1DC51364C();
  (*(v10 + 16))(v2, v1, v7);
  v13 = *(v10 + 88);
  v14 = OUTLINED_FUNCTION_30();
  if (v15(v14) == *MEMORY[0x1E69D0320])
  {
    sub_1DC512D5C();
    return sub_1DC51362C();
  }

  else
  {
    sub_1DC517F4C();
    OUTLINED_FUNCTION_3_4();
    OUTLINED_FUNCTION_31_1();
    MEMORY[0x1E1296160](0xD000000000000011);
    OUTLINED_FUNCTION_38_5();
    sub_1DC517FEC();
    sub_1DC2D2774();
    v17 = OUTLINED_FUNCTION_33_1();
    *v18 = 0;
    v18[1] = 0xE000000000000000;
    OUTLINED_FUNCTION_27_1(v17, v18);
    v19 = sub_1DC51365C();
    OUTLINED_FUNCTION_0_2(v19);
    (*(v20 + 8))(v0);
    v21 = *(v10 + 8);
    v22 = OUTLINED_FUNCTION_30();
    return v23(v22);
  }
}

void QueryType.protobuf.getter()
{
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_57_0();
  v2 = sub_1DC51305C();
  v3 = OUTLINED_FUNCTION_10(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_12();
  v6 = sub_1DC5130DC();
  v7 = OUTLINED_FUNCTION_10(v6);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_18();
  v10 = sub_1DC51303C();
  v11 = OUTLINED_FUNCTION_10(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_40();
  v46 = sub_1DC515DEC();
  v14 = OUTLINED_FUNCTION_0(v46);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_4_4();
  v17 = sub_1DC5162EC();
  v18 = OUTLINED_FUNCTION_0(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_1();
  v25 = v24 - v23;
  sub_1DC51309C();
  (*(v20 + 16))(v25, v1, v17);
  v26 = *(v20 + 88);
  v27 = OUTLINED_FUNCTION_41();
  v29 = v28(v27);
  if (v29 == *MEMORY[0x1E69D08E8])
  {
    v30 = *(v20 + 96);
    v31 = OUTLINED_FUNCTION_41();
    v32(v31);
    v33 = OUTLINED_FUNCTION_9_0();
    v34(v33, v25, v46);
    sub_1DC51302C();
    sub_1DC51307C();
    sub_1DC5130CC();
    sub_1DC515DCC();
    sub_1DC5130BC();
    v35 = sub_1DC51306C();
    sub_1DC51301C();
    v36 = OUTLINED_FUNCTION_32_0();
    v35(v36);
    v37 = OUTLINED_FUNCTION_25_1();
    v38(v37, v46);
  }

  else if (v29 == *MEMORY[0x1E69D08F0])
  {
    sub_1DC512D5C();
    sub_1DC51308C();
  }

  else
  {
    OUTLINED_FUNCTION_36_1();
    OUTLINED_FUNCTION_3_4();
    MEMORY[0x1E1296160](0x7079547972657551, 0xE900000000000065);
    OUTLINED_FUNCTION_38_5();
    sub_1DC517FEC();
    sub_1DC2D2774();
    v39 = OUTLINED_FUNCTION_33_1();
    *v40 = v47;
    v40[1] = v48;
    OUTLINED_FUNCTION_27_1(v39, v40);
    v41 = sub_1DC5130AC();
    OUTLINED_FUNCTION_0_2(v41);
    (*(v42 + 8))(v0);
    v43 = *(v20 + 8);
    v44 = OUTLINED_FUNCTION_41();
    v45(v44);
  }

  OUTLINED_FUNCTION_51_1();
  OUTLINED_FUNCTION_26_0();
}

void PrescribedAjaxTool.protobuf.getter()
{
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_57_0();
  v1 = sub_1DC51350C();
  v2 = OUTLINED_FUNCTION_10(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_24_1();
  v5 = sub_1DC5134AC();
  v6 = OUTLINED_FUNCTION_10(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_18();
  v9 = sub_1DC51353C();
  v10 = OUTLINED_FUNCTION_10(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_23_0();
  v13 = sub_1DC5134CC();
  v14 = OUTLINED_FUNCTION_10(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_4_4();
  v17 = sub_1DC5161CC();
  v18 = OUTLINED_FUNCTION_0(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_1();
  sub_1DC51357C();
  v23 = v20[2];
  v24 = OUTLINED_FUNCTION_47_0();
  v25(v24);
  v26 = v20[11];
  v27 = OUTLINED_FUNCTION_41();
  v29 = v28(v27);
  if (v29 == *MEMORY[0x1E69D0720])
  {
    sub_1DC512D5C();
    sub_1DC5134EC();
  }

  else if (v29 == *MEMORY[0x1E69D0730])
  {
    sub_1DC512D5C();
    sub_1DC51354C();
  }

  else if (v29 == *MEMORY[0x1E69D0718])
  {
    sub_1DC512D5C();
    sub_1DC5134DC();
  }

  else if (v29 == *MEMORY[0x1E69D0728])
  {
    sub_1DC512D5C();
    sub_1DC51351C();
  }

  else
  {
    OUTLINED_FUNCTION_13_3();
    OUTLINED_FUNCTION_3_4();
    OUTLINED_FUNCTION_31_1();
    MEMORY[0x1E1296160](0xD000000000000012);
    OUTLINED_FUNCTION_38_5();
    sub_1DC517FEC();
    sub_1DC2D2774();
    v30 = OUTLINED_FUNCTION_33_1();
    *v31 = v37;
    v31[1] = v38;
    OUTLINED_FUNCTION_27_1(v30, v31);
    v32 = sub_1DC51358C();
    OUTLINED_FUNCTION_0_2(v32);
    (*(v33 + 8))(v0);
    v34 = v20[1];
    v35 = OUTLINED_FUNCTION_41();
    v36(v35);
  }

  OUTLINED_FUNCTION_51_1();
  OUTLINED_FUNCTION_26_0();
}

uint64_t sub_1DC2D4B88(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t), uint64_t (*a3)(uint64_t))
{
  v5 = a1();
  v6 = a2(v5);
  return a3(v6);
}

size_t sub_1DC2D4C74(size_t a1, int64_t a2, char a3)
{
  result = sub_1DC2A6D98(a1, a2, a3, *v3, &qword_1ECC7BF90, &qword_1DC5224B8, MEMORY[0x1E69D0F28], MEMORY[0x1E69D0F28]);
  *v3 = result;
  return result;
}

uint64_t sub_1DC2D4FE4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DC2D502C(unint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  if (a3 < a1 || (v8 = (a4)(0), result = OUTLINED_FUNCTION_35(v8), a1 + *(v10 + 72) * a2 <= a3))
  {
    a4(0);
    OUTLINED_FUNCTION_52_0();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {
    OUTLINED_FUNCTION_52_0();

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_1DC2D50EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (!a4)
  {
    return 0;
  }

  v7 = a5[4];
  __swift_project_boxed_opaque_existential_1(a5, a5[3]);
  v8 = *(v7 + 8);
  v9 = OUTLINED_FUNCTION_41();
  v11 = v10(v9);
  if (!v11)
  {
    sub_1DC517B9C();
    sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
    v23 = sub_1DC2A5914();
    sub_1DC516F0C();
LABEL_19:

    return 0;
  }

  v12 = v11;
  OUTLINED_FUNCTION_36();
  v13 = sub_1DC5176FC();
  OUTLINED_FUNCTION_36();
  v14 = [v12 matchesInString:v13 options:0 range:{0, sub_1DC51783C()}];

  sub_1DC298C74(0, &unk_1ECC7B958, 0x1E696AEF8);
  v15 = sub_1DC517A1C();

  v16 = sub_1DC2C20B8(v15);
  if (v16 != 1)
  {
    v24 = v16;

    if (v24 < 2)
    {
LABEL_17:

      return 0;
    }

    v25 = sub_1DC517BAC();
    sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
    v23 = sub_1DC2A5914();
    if (os_log_type_enabled(v23, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v28 = OUTLINED_FUNCTION_82();
      v12 = OUTLINED_FUNCTION_67_0(5.778e-34);
      v29 = OUTLINED_FUNCTION_36();
      *(v26 + 14) = sub_1DC291244(v29, v30, v31);
      v32 = "Regex matched the input more than once for pattern: %@ and utterance: %s";
LABEL_16:
      _os_log_impl(&dword_1DC287000, v23, v25, v32, v26, 0x16u);
      sub_1DC2AAF50(v27, &qword_1ECC7DFE0, &qword_1DC5227F0);
      OUTLINED_FUNCTION_66();
      __swift_destroy_boxed_opaque_existential_1Tm(v28);
      OUTLINED_FUNCTION_66();
      OUTLINED_FUNCTION_66();

      goto LABEL_17;
    }

    goto LABEL_18;
  }

  result = sub_1DC2C20B8(v15);
  if (!result)
  {

    v25 = sub_1DC517BAC();
    sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
    v23 = sub_1DC2A5914();
    if (os_log_type_enabled(v23, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v28 = OUTLINED_FUNCTION_82();
      v12 = OUTLINED_FUNCTION_67_0(5.778e-34);
      v33 = OUTLINED_FUNCTION_36();
      *(v26 + 14) = sub_1DC291244(v33, v34, v35);
      v32 = "Unable to retrieve first regex match for pattern: %@ and utterance: %s despite there being at least one match";
      goto LABEL_16;
    }

LABEL_18:

    goto LABEL_19;
  }

  if ((v15 & 0xC000000000000001) != 0)
  {
    v18 = MEMORY[0x1E1296800](0, v15);
  }

  else
  {
    if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v18 = *(v15 + 32);
  }

  v19 = v18;

  OUTLINED_FUNCTION_75();
  sub_1DC2D54A8();
  if (v20)
  {
    v21 = OUTLINED_FUNCTION_41();
    sub_1DC2DEFAC(v21, v22, a3, a4, v19);

    return 1;
  }

  return 0;
}

void sub_1DC2D54A8()
{
  OUTLINED_FUNCTION_33();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = sub_1DC516B8C();
  v12 = OUTLINED_FUNCTION_0(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_15();
  v188 = v17;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_23_1();
  v179 = v19;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v155 - v21;
  v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C020, &qword_1DC5227F8);
  OUTLINED_FUNCTION_35(v183);
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_25();
  v178 = v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFF8, &qword_1DC522580);
  OUTLINED_FUNCTION_10(v27);
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_25();
  v191 = v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C028, &qword_1DC522800);
  v33 = OUTLINED_FUNCTION_10(v32);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_15();
  v182 = v36;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_23_1();
  v187 = v38;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_62();
  v176 = v40;
  OUTLINED_FUNCTION_12();
  v41 = sub_1DC5172FC();
  v42 = OUTLINED_FUNCTION_0(v41);
  v169 = v43;
  v45 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_53_1();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_23_1();
  v173 = v47;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_62();
  v185 = v49;
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C030, &qword_1DC522808);
  OUTLINED_FUNCTION_35(v170);
  v51 = *(v50 + 64);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_25();
  v167 = v53;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C038, &unk_1DC522810);
  v55 = OUTLINED_FUNCTION_10(v54);
  v57 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v58);
  v61 = &v155 - v60;
  v184 = v10;
  if (v10 == 1)
  {
    goto LABEL_60;
  }

  if (!v8)
  {
    goto LABEL_60;
  }

  v62 = *(v8 + 16);
  if (!v62)
  {
    goto LABEL_60;
  }

  if (!v184)
  {
    sub_1DC517B9C();
    sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
    v135 = sub_1DC2A5914();
    sub_1DC516F0C();
LABEL_57:

    goto LABEL_60;
  }

  v159 = v0;
  v161 = v6;
  v155 = v4;
  v156 = v2;
  v63 = 0;
  v64 = v8 + 32;
  v180 = (v169 + 16);
  v172 = (v169 + 32);
  v175 = (v169 + 8);
  v194 = v14 + 16;
  v174 = (v14 + 8);
  v65 = v191;
  v66 = v176;
  v190 = v41;
  v177 = v11;
  v164 = v59;
  v163 = v61;
  v158 = v62;
  for (i = v8 + 32; ; v64 = i)
  {
    if (v63 == v62)
    {
      goto LABEL_60;
    }

    v162 = v63;
    v67 = (v64 + 24 * v63);
    v69 = v67[1];
    v68 = v67[2];
    v70 = *v67;

    v168 = v68;

    v160 = v69;
    v71 = sub_1DC5176FC();
    v72 = [v161 rangeWithName_];
    v74 = v73;

    if (v72 == sub_1DC51068C())
    {
      v152 = sub_1DC517B9C();
      sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
      v135 = sub_1DC2A5914();
      if (os_log_type_enabled(v135, v152))
      {
        v153 = swift_slowAlloc();
        v195[0] = swift_slowAlloc();
        *v153 = 136315394;
        OUTLINED_FUNCTION_78();

        v154 = sub_1DC291244(v70, v160, v195);

        *(v153 + 4) = v154;
        *(v153 + 12) = 2080;
        *(v153 + 14) = sub_1DC291244(v155, v156, v195);
        _os_log_impl(&dword_1DC287000, v135, v152, "Failed to match regex group: %s for utterance: %s", v153, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_66();
        OUTLINED_FUNCTION_66();
      }

      else
      {
LABEL_66:
        OUTLINED_FUNCTION_78();
      }

      goto LABEL_57;
    }

    v192 = v72;
    v193 = &v72[v74];
    if (__OFADD__(v72, v74))
    {
      goto LABEL_69;
    }

    ++v162;
    v75 = v168;

    v76 = 0;
    v77 = v178;
    v78 = v170;
LABEL_10:
    v79 = *(v75 + 16);
    if (v76 == v79)
    {
      v80 = 1;
      v81 = v164;
    }

    else
    {
      if (v76 >= v79)
      {
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
        return;
      }

      v82 = *(v169 + 80);
      OUTLINED_FUNCTION_24();
      v85 = v75 + v83 + *(v84 + 72) * v76;
      v86 = *(v78 + 48);
      v87 = v167;
      *v167 = v76;
      (*(v84 + 16))(&v87[v86], v85, v41);
      v81 = v164;
      sub_1DC2DB254();
      v80 = 0;
      ++v76;
      v77 = v178;
    }

    __swift_storeEnumTagSinglePayload(v81, v80, 1, v78);
    v88 = v163;
    sub_1DC2DB254();
    OUTLINED_FUNCTION_14_2(v88);
    if (!v110)
    {
      break;
    }

    OUTLINED_FUNCTION_78();
    swift_bridgeObjectRelease_n();
    v62 = v158;
    v63 = v162;
  }

  v165 = v76;
  v166 = *v88;
  v89 = v88 + *(v78 + 48);
  v171 = *v172;
  v171(v185, v89, v41);
  v189 = 0;
  v181 = *(v184 + 16);
LABEL_16:
  while (1)
  {
    v90 = v189;
    if (v189 == v181)
    {
      break;
    }

    v91 = sub_1DC516C7C();
    OUTLINED_FUNCTION_52(v91);
    v186 = v184 + ((*(v92 + 80) + 32) & ~*(v92 + 80)) + *(v93 + 72) * v90;
    sub_1DC516C5C();
    v94 = sub_1DC5172AC();
    OUTLINED_FUNCTION_39(v65, 1, v94);
    if (v110)
    {
      sub_1DC2AAF50(v65, &qword_1ECC7BFF8, &qword_1DC522580);
      v96 = 1;
    }

    else
    {
      sub_1DC51729C();
      OUTLINED_FUNCTION_7_1(v94);
      (*(v95 + 8))(v65, v94);
      v96 = 0;
    }

    v97 = v182;
    v189 = v90 + 1;
    v41 = v190;
    __swift_storeEnumTagSinglePayload(v66, v96, 1, v190);
    v98 = OUTLINED_FUNCTION_59();
    v99(v98, v185, v41);
    OUTLINED_FUNCTION_61();
    __swift_storeEnumTagSinglePayload(v100, v101, v102, v41);
    v103 = *(v183 + 48);
    sub_1DC2DB2AC();
    OUTLINED_FUNCTION_74_1();
    sub_1DC2DB2AC();
    v104 = OUTLINED_FUNCTION_44();
    OUTLINED_FUNCTION_39(v104, v105, v41);
    if (v110)
    {
      v106 = OUTLINED_FUNCTION_47_0();
      sub_1DC2AAF50(v106, v107, &qword_1DC522800);
      OUTLINED_FUNCTION_65_0(v66);
      OUTLINED_FUNCTION_39(v77 + v103, 1, v41);
      v108 = v177;
      v65 = v191;
      if (v110)
      {
        sub_1DC2AAF50(v77, &qword_1ECC7C028, &qword_1DC522800);
        v109 = v174;
LABEL_30:
        v118 = sub_1DC516C6C();
        v119 = 0;
        v120 = *(v118 + 16);
        while (v120 != v119)
        {
          if (v119 >= *(v118 + 16))
          {
            __break(1u);
            goto LABEL_60;
          }

          v121 = *(v14 + 80);
          OUTLINED_FUNCTION_24();
          OUTLINED_FUNCTION_76(v122);
          v123(v22);
          if (sub_1DC516B2C() < v192)
          {

            (*v109)(v22, v108);
LABEL_51:
            v41 = v190;
            v77 = v178;
            goto LABEL_16;
          }

          ++v119;
          v124 = sub_1DC516B7C();
          (*v109)(v22, v108);
          if (v193 < v124)
          {
            goto LABEL_50;
          }
        }

        v125 = v166;
        if (!v166)
        {
          v126 = sub_1DC516C6C();
          v127 = 0;
          v128 = *(v126 + 16);
          while (v128 != v127)
          {
            if (v127 >= *(v126 + 16))
            {
              __break(1u);
              goto LABEL_68;
            }

            v129 = *(v14 + 80);
            OUTLINED_FUNCTION_24();
            OUTLINED_FUNCTION_76(v130);
            v131 = v179;
            v132(v179);
            ++v127;
            v133 = sub_1DC516B2C();
            v134 = v131;
            v65 = v191;
            (*(v14 + 8))(v134, v108);
            if (v133 == v192)
            {

              v125 = v166;
              goto LABEL_42;
            }
          }

          goto LABEL_50;
        }

LABEL_42:
        v75 = v168;
        if (v125 == *(v168 + 16) - 1)
        {
          v135 = v186;
          v136 = sub_1DC516C6C();
          v137 = 0;
          v138 = *(v136 + 16);
          while (v138 != v137)
          {
            if (v137 >= *(v136 + 16))
            {
              __break(1u);
              goto LABEL_66;
            }

            v139 = *(v14 + 80);
            OUTLINED_FUNCTION_24();
            v135 = v188;
            (*(v14 + 16))(v188, v136 + v140 + *(v14 + 72) * v137++, v108);
            v141 = sub_1DC516B7C();
            (*(v14 + 8))(v135, v108);
            v110 = v141 == v193;
            v65 = v191;
            if (v110)
            {

              v75 = v168;
              goto LABEL_52;
            }
          }

LABEL_50:

          goto LABEL_51;
        }

LABEL_52:
        v41 = v190;
        (*v175)(v185, v190);
        v77 = v178;
        v78 = v170;
        v76 = v165;
        goto LABEL_10;
      }

LABEL_28:
      sub_1DC2AAF50(v77, &qword_1ECC7C020, &qword_1DC5227F8);
    }

    else
    {
      OUTLINED_FUNCTION_74_1();
      sub_1DC2DB2AC();
      OUTLINED_FUNCTION_39(v77 + v103, 1, v41);
      if (v110)
      {
        OUTLINED_FUNCTION_65_0(v187);
        v66 = v176;
        v111 = OUTLINED_FUNCTION_47_0();
        sub_1DC2AAF50(v111, v112, &qword_1DC522800);
        (*v175)(v97, v41);
        v65 = v191;
        goto LABEL_28;
      }

      v113 = v173;
      v171(v173, (v77 + v103), v41);
      sub_1DC2DB304(&qword_1ECC7C040, MEMORY[0x1E69DB0B8]);
      v114 = sub_1DC5176CC();
      v115 = *v175;
      (*v175)(v113, v190);
      OUTLINED_FUNCTION_65_0(v187);
      v66 = v176;
      v116 = OUTLINED_FUNCTION_47_0();
      sub_1DC2AAF50(v116, v117, &qword_1DC522800);
      v115(v97, v190);
      v41 = v190;
      v77 = v178;
      OUTLINED_FUNCTION_65_0(v178);
      v108 = v177;
      v109 = v174;
      v65 = v191;
      if (v114)
      {
        goto LABEL_30;
      }
    }
  }

  OUTLINED_FUNCTION_78();
  swift_bridgeObjectRelease_n();
  v142 = sub_1DC517B9C();
  sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
  v143 = sub_1DC2A5914();
  (*v180)(v159, v185, v41);
  if (os_log_type_enabled(v143, v142))
  {
    v144 = OUTLINED_FUNCTION_82();
    v145 = OUTLINED_FUNCTION_82();
    v195[0] = v145;
    *v144 = 136315650;
    v146 = sub_1DC5172CC();
    v148 = v147;
    v149 = OUTLINED_FUNCTION_45_4();
    v65(v149);
    v150 = sub_1DC291244(v146, v148, v195);

    *(v144 + 4) = v150;
    *(v144 + 12) = 2048;
    *(v144 + 14) = v192;
    *(v144 + 22) = 2048;
    *(v144 + 24) = v193;
    _os_log_impl(&dword_1DC287000, v143, v142, "Unable to find span with label: %s and within range: [%ld, %ld] returned by the EntitySpanMatcher", v144, 0x20u);
    __swift_destroy_boxed_opaque_existential_1Tm(v145);
    OUTLINED_FUNCTION_66();
    OUTLINED_FUNCTION_66();
  }

  else
  {

    v151 = OUTLINED_FUNCTION_45_4();
    v65(v151);
  }

  (v65)(v185, v41);
LABEL_60:
  OUTLINED_FUNCTION_34();
}

uint64_t sub_1DC2D637C(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = *(*a1 + 16);
  v6 = a1[4] >> 1;
  v19 = *a1;

  result = swift_unknownObjectRetain();
  v8 = 0;
  v9 = v3 + 16 * v4;
  v10 = v4 - 1;
  while (1)
  {
    if (!v5 || v10 - v6 == -1)
    {
      v17 = 1;
      goto LABEL_8;
    }

    if (++v10 >= v6)
    {
      break;
    }

    v11 = *(v19 + v8 + 32);
    v12 = *(v19 + v8 + 40);
    v13 = v8 + 16;
    --v5;
    v14 = (v9 + v8);
    v16 = *v14;
    v15 = v14[1];

    LOBYTE(v16) = sub_1DC2D50EC(v11, v12, v16, v15, a2);

    v8 = v13;
    if ((v16 & 1) == 0)
    {
      v17 = 0;
LABEL_8:
      swift_unknownObjectRelease();

      return v17;
    }
  }

  __break(1u);
  return result;
}

BOOL sub_1DC2D64AC(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v5 = a3 + 32;
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = a1(v5);
    if (v3)
    {
      break;
    }

    v5 += 40;
  }

  while ((v7 & 1) != 0);
  return v6 == 0;
}

BOOL sub_1DC2D650C(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = *(a3 + 16);
  do
  {
    v8 = v6;
    if (v7 == v6)
    {
      break;
    }

    v9 = *(sub_1DC5118BC() - 8);
    v10 = a1(a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v8);
    if (v3)
    {
      break;
    }

    v6 = v8 + 1;
  }

  while ((v10 & 1) == 0);
  return v7 != v8;
}

uint64_t sub_1DC2D65E0(uint64_t *a1)
{
  sub_1DC511FBC();
  v3 = *a1;
  v2 = a1[1];
  v4 = sub_1DC51778C();
  v6 = v5;
  OUTLINED_FUNCTION_60();
  if (v4 == sub_1DC51778C() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1DC51825C();
  }

  return v9 & 1;
}

uint64_t sub_1DC2D6684(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_42_0();
  v9 = *v8;
  v10 = v8[1];
  v11 = *(v6 + *(type metadata accessor for NLRouterServiceRequest(0) + 36));
  if (v11)
  {
    v11 = sub_1DC516D7C();
  }

  nullsub_1(v11, a5);
  OUTLINED_FUNCTION_73();
  OUTLINED_FUNCTION_74_1();
  v16 = sub_1DC2D50EC(v12, v13, v14, v15, v5);

  return v16 & 1;
}

void sub_1DC2D6740(uint64_t a1)
{
  v4 = *(sub_1DC511FEC() + 16);

  if (v4)
  {
    v5 = 0;
    v6 = *(a1 + *(type metadata accessor for NLRouterServiceRequest(0) + 24));
    v7 = *(v6 + 16);
    v8 = MEMORY[0x1E69E7CC0];
    v9 = 48;
LABEL_3:
    v10 = v6 + 48 * v5;
    while (v7 != v5)
    {
      if (v5 >= *(v6 + 16))
      {
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
        return;
      }

      ++v5;
      v11 = (v10 + 48);
      v12 = *(v10 + 56);
      v10 += 48;
      if (v12)
      {
        v1 = *v11;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v15 = *(v8 + 2);
          v16 = OUTLINED_FUNCTION_13_0();
          v8 = sub_1DC2ACCD4(v16, v17, v18, v8);
        }

        v2 = *(v8 + 2);
        v13 = *(v8 + 3);
        if (v2 >= v13 >> 1)
        {
          v19 = OUTLINED_FUNCTION_26(v13);
          v8 = sub_1DC2ACCD4(v19, v2 + 1, 1, v8);
        }

        *(v8 + 2) = v2 + 1;
        v14 = &v8[16 * v2];
        *(v14 + 4) = v1;
        *(v14 + 5) = v12;
        goto LABEL_3;
      }
    }

    v20 = *(v8 + 2);
    v21 = *(sub_1DC511FEC() + 16);

    if (v20 >= v21)
    {
      v22 = sub_1DC511FEC();
      v23 = *(sub_1DC511FEC() + 16);

      sub_1DC2D69A8(v23, v8);
      OUTLINED_FUNCTION_41_2();
      v36 = v24;
      v37 = v25;

      swift_unknownObjectRetain();
      OUTLINED_FUNCTION_63_1();
      while (v37 != v2)
      {
        if (v2 >= *(v22 + 16))
        {
          goto LABEL_31;
        }

        if (!(v1 + v2))
        {
          break;
        }

        if (&v8[v2] >= v36)
        {
          goto LABEL_32;
        }

        v26 = *(v9 - 8);
        v27 = *v9;
        v29 = *(v23 - 1);
        v28 = *v23;
        v30 = sub_1DC51778C();
        v32 = v31;
        OUTLINED_FUNCTION_47_0();
        if (v30 == sub_1DC51778C() && v32 == v33)
        {
        }

        else
        {
          OUTLINED_FUNCTION_35_0();
          v35 = sub_1DC51825C();

          if ((v35 & 1) == 0)
          {
            break;
          }
        }

        v23 += 2;
        v9 += 16;
        ++v2;
      }

      swift_unknownObjectRelease_n();
    }
  }
}