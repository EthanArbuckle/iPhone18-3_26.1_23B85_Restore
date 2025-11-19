void sub_1C4D60770(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = [a1 eventBody];
  if (v5)
  {
    v6 = v5;
    swift_beginAccess();
    v7 = *(a3 + 16);
    *(a3 + 16) = v6;
  }

  else
  {
    if (qword_1EDDFECB0 != -1)
    {
      swift_once();
    }

    v8 = sub_1C4F00978();
    sub_1C442B738(v8, qword_1EDDFECB8);

    oslog = sub_1C4F00968();
    v9 = sub_1C4F01CF8();

    if (os_log_type_enabled(oslog, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v18 = v11;
      *v10 = 136315138;
      v12 = [*(a2 + 16) description];
      v13 = sub_1C4F01138();
      v15 = v14;

      v16 = sub_1C441D828(v13, v15, &v18);

      *(v10 + 4) = v16;
      _os_log_impl(&dword_1C43F8000, oslog, v9, "BiomeLibraryUtils: Unable to parse event body from stream: %s", v10, 0xCu);
      sub_1C440962C(v11);
      MEMORY[0x1C6942830](v11, -1, -1);
      MEMORY[0x1C6942830](v10, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_1C4D60960(uint64_t a1)
{
  v2 = sub_1C4D601D8(a1);
  if (!v2)
  {
    if (qword_1EDDFECB0 != -1)
    {
      goto LABEL_34;
    }

    goto LABEL_6;
  }

  v3 = v2;
  v4 = sub_1C4D5F898(a1);
  if (!v4)
  {
    if (qword_1EDDFECB0 != -1)
    {
      sub_1C43FFB88();
    }

    v12 = sub_1C4F00978();
    sub_1C442B738(v12, qword_1EDDFECB8);
    v13 = sub_1C4F00968();
    v14 = sub_1C4F01CF8();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1C43F8000, v13, v14, "WorkoutSignal: Could not fetch workout events", v15, 2u);
      sub_1C43FBE2C();
    }

    sub_1C4577DBC();
    v16 = sub_1C4F00F28();

    return v16;
  }

  v5 = v4;
  v6 = [v3 eventType] == 1 || objc_msgSend(v3, sel_eventType) == 3;
  v17 = sub_1C4428DA0();
  v18 = 0;
  while (1)
  {
    v19 = v18;
    if (v17 == v18)
    {
LABEL_30:

      goto LABEL_31;
    }

    if ((v5 & 0xC000000000000001) != 0)
    {
      v20 = MEMORY[0x1C6940F90](v18, v5);
    }

    else
    {
      if (v18 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_33;
      }

      v20 = *(v5 + 8 * v18 + 32);
    }

    v21 = v20;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (sub_1C4412A34() == 1 || sub_1C4412A34() == 3 || sub_1C4412A34() == 4)
    {

LABEL_31:
      v23 = v17 != v19;
      sub_1C456902C(&qword_1EC0BAAD8, &qword_1C4F16BE0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1C4F0CE60;
      *(inited + 32) = 0x5F676E696B726F77;
      *(inited + 40) = 0xEB0000000074756FLL;
      sub_1C4577DBC();
      *(inited + 48) = sub_1C4A3B8F8(v6);
      *(inited + 56) = 0xD000000000000026;
      *(inited + 64) = 0x80000001C4FC7B50;
      *(inited + 72) = sub_1C4A3B8F8(v23);
      sub_1C456902C(&qword_1EC0BA860, &unk_1C4F1EF30);
      v25 = sub_1C4F00F28();
      v26 = sub_1C467894C(v25);

      return v26;
    }

    v22 = sub_1C4412A34();

    v18 = v19 + 1;
    if (v22 == 2)
    {
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  sub_1C43FFB88();
LABEL_6:
  v7 = sub_1C4F00978();
  sub_1C442B738(v7, qword_1EDDFECB8);
  v8 = sub_1C4F00968();
  v9 = sub_1C4F01CF8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_1C43F8000, v8, v9, "WorkoutSignal: Unable to fetch most recent workout event", v10, 2u);
    sub_1C43FBE2C();
  }

  sub_1C4577DBC();

  return sub_1C4F00F28();
}

void sub_1C4D60D5C(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  v40 = sub_1C4EF9CD8();
  v7 = sub_1C43FCDF8(v40);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBCC4();
  v14 = v13 - v12;
  v15 = type metadata accessor for FeatureProviderSnapshot(0);
  v16 = sub_1C43FCDF8(v15);
  v38 = v17;
  v39 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FBCC4();
  v22 = v21 - v20;
  v23 = *(a2 + 16);
  v24 = MEMORY[0x1E69E7CC0];
  if (v23)
  {
    v35 = a3;
    v43 = MEMORY[0x1E69E7CC0];
    v42 = v22;
    sub_1C459D0A8();
    v25 = v42;
    v24 = v43;
    v27 = *(v9 + 16);
    v26 = v9 + 16;
    v28 = a2 + ((*(v26 + 64) + 32) & ~*(v26 + 64));
    v36 = *(v26 + 56);
    v37 = v27;
    do
    {
      v37(v14, v28, v40);
      v37(v25, v14, v40);
      v29 = sub_1C4D60960(v14);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v30 = v4;
      v31 = sub_1C4D615A4(v29, a1);

      sub_1C465CF34(v31);
      v33 = v32;
      v25 = v42;

      (*(v26 - 8))(v14, v40);
      *(v42 + *(v39 + 20)) = v33;
      v34 = *(v43 + 16);
      if (v34 >= *(v43 + 24) >> 1)
      {
        sub_1C459D0A8();
        v25 = v42;
      }

      *(v43 + 16) = v34 + 1;
      sub_1C4586A54(v25, v43 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v34);
      v28 += v36;
      --v23;
      v4 = v30;
    }

    while (v23);
    a3 = v35;
  }

  *a3 = v24;
}

uint64_t sub_1C4D61010()
{
  v0 = sub_1C4EF9CD8();
  v1 = sub_1C43FCDF8(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  sub_1C43FBCC4();
  v8 = v7 - v6;
  sub_1C4EF9C88();
  v9 = sub_1C4D60960(v8);
  v10 = *(v3 + 8);
  v11 = sub_1C4404C28();
  v12(v11);
  return v9;
}

uint64_t sub_1C4D61340()
{
  sub_1C44067F0();

  return swift_deallocClassInstance();
}

uint64_t sub_1C4D61394()
{
  v1 = [BiomeLibrary() Health];
  swift_unknownObjectRelease();
  v2 = [v1 Workout];
  swift_unknownObjectRelease();
  *(v0 + 16) = v2;
  return v0;
}

unint64_t sub_1C4D61490(uint64_t a1)
{
  result = sub_1C4D614B8();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1C4D614B8()
{
  result = qword_1EC0C6A28;
  if (!qword_1EC0C6A28)
  {
    type metadata accessor for WorkoutSignal();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C6A28);
  }

  return result;
}

uint64_t sub_1C4D6155C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

void *sub_1C4D615A4(_BYTE *a1, uint64_t a2)
{
  v4 = a1;
  v14[1] = *MEMORY[0x1E69E9840];
  v5 = a1[32];
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = swift_bridgeObjectRetain_n();
  if (v6 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v13 = swift_slowAlloc();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v4 = sub_1C45867F0(v13, v7, v4, a2);
      MEMORY[0x1C6942830](v13, -1, -1);
      swift_bridgeObjectRelease_n();
      goto LABEL_6;
    }
  }

  MEMORY[0x1EEE9AC00](v8);
  v9 = v14 - ((8 * v7 + 15) & 0x3FFFFFFFFFFFFFF0);
  sub_1C4501018(0, v7, v9);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4586AB8(v9, v7, v4, a2);
  if (v2)
  {
    swift_willThrow();
  }

  else
  {
    v4 = v10;
  }

  swift_bridgeObjectRelease_n();
LABEL_6:

  v11 = *MEMORY[0x1E69E9840];
  return v4;
}

uint64_t sub_1C4D61780(uint64_t a1)
{
  v3 = sub_1C4EFDF28();
  v4 = sub_1C43FCDF8(v3);
  v105 = v5;
  v106 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1C442DA88();
  v8 = sub_1C4EFFD78();
  v9 = sub_1C43FCDF8(v8);
  v109 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v98 = &v90 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v14);
  v107 = &v90 - v15;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v16);
  v99 = &v90 - v17;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v18);
  v103 = &v90 - v19;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v20);
  v108 = &v90 - v21;
  v22 = type metadata accessor for Configuration();
  v23 = sub_1C43FCF7C(v22);
  v25 = v24;
  v27 = *(v26 + 64);
  v28 = (a1 + *(MEMORY[0x1EEE9AC00](v23) + 28));
  v30 = *v28;
  v29 = v28[1];
  if (qword_1EDDFFA78 != -1)
  {
    swift_once();
  }

  v31 = (xmmword_1EDDFFA80 & ~v30 | *(&xmmword_1EDDFFA80 + 1) & ~v29) == 0;
  if (qword_1EDDFEBA0 != -1)
  {
    swift_once();
  }

  v104 = v1;
  if ((xmmword_1EDDFEBA8 & ~v30) == 0)
  {
    LODWORD(v101) = (*(&xmmword_1EDDFEBA8 + 1) & v29) == *(&xmmword_1EDDFEBA8 + 1);
    if (!v31)
    {
      goto LABEL_10;
    }

LABEL_9:
    sub_1C4EFDF58();
    sub_1C44098F0(a1, &v90 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
    v32 = (*(v25 + 80) + 16) & ~*(v25 + 80);
    v33 = swift_allocObject();
    sub_1C4409954(&v90 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0), v33 + v32);
    sub_1C4EFDF48();
    v34 = *MEMORY[0x1E69A9B98];
    v35 = v108;
    v36 = v109;
    goto LABEL_11;
  }

  LODWORD(v101) = 0;
  if (v31)
  {
    goto LABEL_9;
  }

LABEL_10:
  v35 = v108;
  v36 = v109;
  v34 = *MEMORY[0x1E69A9B90];
LABEL_11:
  v100 = *(v36 + 104);
  v100(v35, v34, v8);
  v37 = v106;
  v38 = sub_1C4EFDF58();
  v39 = v104;
  sub_1C4EFDF38();
  v40 = v103;
  sub_1C4EFDF18();
  v42 = v105 + 8;
  v41 = *(v105 + 8);
  v41(v39, v37);
  v105 = sub_1C4D62D28(&qword_1EDDFF9B8, MEMORY[0x1E69A9BA0]);
  v43 = sub_1C4F010B8();
  v46 = *(v36 + 8);
  v45 = v36 + 8;
  v44 = v46;
  v47 = sub_1C4404C28();
  v46(v47);
  v102 = v46;
  if ((v43 & 1) == 0)
  {
    v97 = v41;
    if (qword_1EDDFA678 != -1)
    {
      sub_1C43FFCC0();
    }

    v48 = sub_1C4F00978();
    sub_1C442B738(v48, qword_1EDE2DCD8);
    v49 = *(v109 + 16);
    v50 = v99;
    v49(v99, v108, v8);
    v51 = sub_1C4F00968();
    v52 = sub_1C4F01CE8();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v96 = v53;
      v93 = swift_slowAlloc();
      v110[0] = v93;
      *v53 = 136315394;
      v39 = v104;
      v94 = v51;
      sub_1C4EFDF38();
      v92 = v52;
      v40 = v103;
      sub_1C4EFDF18();
      v37 = v106;
      v91 = v49;
      v41 = v97;
      v97(v39, v106);
      sub_1C4404C28();
      v54 = sub_1C4F01198();
      v56 = sub_1C441D828(v54, v55, v110);
      v95 = v45;
      v57 = v56;

      v58 = v96;
      *(v96 + 1) = v57;
      *(v58 + 6) = 2080;
      v59 = v99;
      v91(v40, v99, v8);
      sub_1C4404C28();
      v91 = sub_1C4F01198();
      v61 = v60;
      v44 = v102;
      (v102)(v59, v8);
      v62 = sub_1C441D828(v91, v61, v110);

      v63 = v96;
      *(v96 + 14) = v62;
      swift_arrayDestroy();
      sub_1C43FBE2C();
      sub_1C43FBE2C();
    }

    else
    {

      v44 = v102;
      (v102)(v50, v8);
      v37 = v106;
      v40 = v103;
      v39 = v104;
      v41 = v97;
    }
  }

  v64 = MEMORY[0x1E69A9B90];
  if (v101)
  {
    v64 = MEMORY[0x1E69A9B98];
  }

  v65 = v38;
  v66 = v37;
  v67 = v107;
  v100(v107, *v64, v8);
  v104 = v65;
  sub_1C4EFDF38();
  sub_1C4EFDF08();
  v41(v39, v66);
  LOBYTE(v65) = sub_1C4F010B8();
  v68 = sub_1C4404C28();
  v44(v68);
  if (v65)
  {
    (v44)(v67, v8);
    return (v44)(v108, v8);
  }

  else
  {
    v70 = v40;
    v105 = v42;
    if (qword_1EDDFA678 != -1)
    {
      sub_1C43FFCC0();
    }

    v71 = sub_1C4F00978();
    sub_1C442B738(v71, qword_1EDE2DCD8);
    v72 = *(v109 + 16);
    v73 = v98;
    v72(v98, v107, v8);
    v74 = sub_1C4F00968();
    LODWORD(v109) = sub_1C4F01CE8();
    if (os_log_type_enabled(v74, v109))
    {
      v75 = swift_slowAlloc();
      v103 = swift_slowAlloc();
      v110[0] = v103;
      *v75 = 136315394;
      v101 = v74;
      sub_1C4EFDF38();
      sub_1C4EFDF08();
      v41(v39, v106);
      v76 = sub_1C4F01198();
      v78 = v70;
      v79 = sub_1C441D828(v76, v77, v110);

      *(v75 + 4) = v79;
      *(v75 + 12) = 2080;
      v72(v78, v73, v8);
      v80 = sub_1C4F01198();
      v82 = v81;
      v83 = sub_1C4402E08();
      v84 = v102;
      v102(v83);
      v85 = sub_1C441D828(v80, v82, v110);

      *(v75 + 14) = v85;
      v86 = v101;
      swift_arrayDestroy();
      sub_1C43FBE2C();
      sub_1C43FBE2C();

      v84(v107, v8);
      return (v84)(v108, v8);
    }

    else
    {

      v87 = sub_1C4402E08();
      v88 = v102;
      v102(v87);
      v89 = sub_1C4404C28();
      v88(v89);
      return (v88)(v108, v8);
    }
  }
}

uint64_t sub_1C4D62120(uint64_t a1)
{
  v58 = sub_1C4EFFD18();
  v3 = sub_1C43FCDF8(v58);
  v60 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1C442DA88();
  v7 = sub_1C4EFFF98();
  v8 = sub_1C43FCDF8(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v8);
  v15 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v53 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v53 - v19;
  v21 = type metadata accessor for Configuration();
  v22 = sub_1C43FCF7C(v21);
  v24 = v23;
  v26 = *(v25 + 64);
  v27 = *(a1 + *(MEMORY[0x1EEE9AC00](v22) + 28));
  if (qword_1EDDFFA40 != -1)
  {
    v57 = v27;
    swift_once();
    v27 = v57;
  }

  v28 = vmovn_s64(vceqq_s64(vandq_s8(xmmword_1EDDFFA48, v27), xmmword_1EDDFFA48));
  v59 = v15;
  if (v28.i32[0] & v28.i32[1])
  {
    sub_1C44098F0(a1, &v53 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
    v29 = (*(v24 + 80) + 16) & ~*(v24 + 80);
    v30 = swift_allocObject();
    sub_1C4409954(&v53 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0), v30 + v29);
    sub_1C4EFFCE8();
    v31 = MEMORY[0x1E69A9C48];
  }

  else
  {
    v31 = MEMORY[0x1E69A9C40];
  }

  v32 = v20;
  (*(v10 + 104))(v20, *v31, v7);
  sub_1C4EFFD28();
  sub_1C4EFFD08();
  v33 = *(v60 + 8);
  v34 = v58;
  v60 += 8;
  v33(v1, v58);
  sub_1C4D62D28(&qword_1EDDFF9B0, MEMORY[0x1E69A9C50]);
  v35 = sub_1C4F010B8();
  v36 = *(v10 + 8);
  v37 = sub_1C4402E08();
  v36(v37);
  if (v35)
  {
    goto LABEL_12;
  }

  if (qword_1EDDFA678 != -1)
  {
    sub_1C43FFCC0();
  }

  v38 = sub_1C4F00978();
  sub_1C442B738(v38, qword_1EDE2DCD8);
  v56 = *(v10 + 16);
  v56(v59, v32, v7);
  v39 = sub_1C4F00968();
  v57.i32[0] = sub_1C4F01CE8();
  if (!os_log_type_enabled(v39, v57.i8[0]))
  {

    (v36)(v59, v7);
LABEL_12:
    v51 = v32;
    return (v36)(v51, v7);
  }

  v40 = swift_slowAlloc();
  v55 = v32;
  v41 = v40;
  v54 = swift_slowAlloc();
  v61 = v54;
  *v41 = 136315394;
  sub_1C4EFFD28();
  v53 = v39;
  sub_1C4EFFD08();
  v33(v1, v34);
  sub_1C4402E08();
  v42 = sub_1C4F01198();
  v44 = sub_1C441D828(v42, v43, &v61);

  *(v41 + 4) = v44;
  *(v41 + 12) = 2080;
  v45 = v59;
  v56(v18, v59, v7);
  sub_1C4402E08();
  v46 = sub_1C4F01198();
  v48 = v47;
  (v36)(v45, v7);
  v49 = sub_1C441D828(v46, v48, &v61);

  *(v41 + 14) = v49;
  v50 = v53;
  swift_arrayDestroy();
  sub_1C43FBE2C();
  sub_1C43FBE2C();

  v51 = v55;
  return (v36)(v51, v7);
}

uint64_t sub_1C4D62674(uint64_t a1)
{
  v2 = type metadata accessor for Configuration();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1C44098F0(a1, &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_1C4409954(&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  sub_1C44098F0(a1, &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = swift_allocObject();
  sub_1C4409954(&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v5);
  type metadata accessor for AssetRegistryRemoteBackendInProcess();
  type metadata accessor for AssetRegistryRemoteWritableBackendInProcess();
  sub_1C4D62D28(&qword_1EDDFD468, type metadata accessor for AssetRegistryRemoteBackendInProcess);
  sub_1C4D62D28(&qword_1EDDDC220, type metadata accessor for AssetRegistryRemoteWritableBackendInProcess);
  return sub_1C4EFDEF8();
}

uint64_t sub_1C4D6285C(uint64_t a1)
{
  v2 = type metadata accessor for Configuration();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1C44098F0(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_1C4409954(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  type metadata accessor for AssetRegistryRemoteBackendInProcess();
  sub_1C456902C(&qword_1EC0B94F8, &unk_1C4F0F260);
  sub_1C4D62D28(&qword_1EDDFD468, type metadata accessor for AssetRegistryRemoteBackendInProcess);
  sub_1C4D62E34();
  return sub_1C4EFDEF8();
}

uint64_t sub_1C4D629E8(uint64_t a1)
{
  v2 = type metadata accessor for Configuration();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1C44098F0(a1, &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_1C4409954(&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  sub_1C44098F0(a1, &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = swift_allocObject();
  sub_1C4409954(&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v5);
  type metadata accessor for InferenceSupportRemoteBackendInProcess();
  sub_1C4D62D28(&qword_1EDDFD418, type metadata accessor for InferenceSupportRemoteBackendInProcess);
  return sub_1C4EFFCF8();
}

uint64_t sub_1C4D62B9C()
{
  v0 = type metadata accessor for Configuration();
  sub_1C43FBD18(v0);
  sub_1C4420A78(*(v1 + 80));
  return sub_1C4933370();
}

uint64_t sub_1C4D62C24(uint64_t (*a1)(uint64_t))
{
  v1 = type metadata accessor for Configuration();
  sub_1C43FBD18(v1);
  v3 = sub_1C4420A78(*(v2 + 80));

  return a1(v3);
}

uint64_t *sub_1C4D62CC8@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for Configuration();
  sub_1C43FBD18(v2);
  v4 = sub_1C4420A78(*(v3 + 80));
  return sub_1C45A4868(v4, a1);
}

uint64_t sub_1C4D62D28(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C4D62D70()
{
  v1 = type metadata accessor for Configuration();
  sub_1C43FCF7C(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v6 = *(v5 + 64);
  v7 = sub_1C4EF98F8();
  (*(*(v7 - 8) + 8))(v0 + v4, v7);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v6, v3 | 7);
}

unint64_t sub_1C4D62E34()
{
  result = qword_1EDDFCC78;
  if (!qword_1EDDFCC78)
  {
    sub_1C4572308(&qword_1EC0B94F8, &unk_1C4F0F260);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFCC78);
  }

  return result;
}

void sub_1C4D62E98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FE96C();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v149 = v25;
  v27 = v26;
  v28 = sub_1C4F00DD8();
  v143 = sub_1C43FCDF8(v28);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v143);
  sub_1C43FD2D8();
  sub_1C43FBE44();
  v31 = sub_1C4F00DC8();
  v32 = sub_1C43FCDF8(v31);
  v144 = v33;
  v145 = v32;
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v32);
  sub_1C43FBFDC();
  v141 = v36;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v37);
  sub_1C43FD230();
  v142 = v38;
  sub_1C43FBE44();
  v39 = sub_1C4F01188();
  v40 = sub_1C43FCDF8(v39);
  v147 = v41;
  v148 = v40;
  v43 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v40);
  sub_1C43FD2D8();
  v146 = v44;
  sub_1C43FBE44();
  v154 = sub_1C4EFD548();
  v45 = sub_1C43FCDF8(v154);
  v47 = v46;
  v49 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v45);
  sub_1C43FBFDC();
  v138 = v50;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v51);
  sub_1C440D100();
  v52 = sub_1C4EFF0C8();
  v53 = sub_1C43FCDF8(v52);
  v139 = v54;
  v140 = v53;
  v56 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v53);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v57);
  sub_1C43FD230();
  v135 = v58;
  v59 = sub_1C43FBE44();
  v60 = type metadata accessor for BMAppleMusicEventStructs.Event(v59);
  v61 = v60[5];
  v62 = sub_1C4EFEEF8();
  v137 = v61;
  sub_1C43FCF64();
  sub_1C440BAA8(v63, v64, v65, v62);
  v66 = v60[6];
  _s24IntelligencePlatformCore12EventMatcherV11entityClass0aB006EntityG0Vvg_0();
  v67 = (v27 + v60[7]);
  if (qword_1EDDFD268 != -1)
  {
    sub_1C4404CEC();
  }

  v68 = type metadata accessor for Source();
  sub_1C442B738(v68, &qword_1EDDFD270);
  sub_1C441AB98();
  sub_1C448D2B4(v69, v67, v70);
  v134 = v60[8];
  sub_1C4EFECC8();
  v71 = (v27 + v60[9]);
  *v71 = 0;
  v71[1] = 0;
  v72 = v60[10];
  type metadata accessor for BMAppleMusicEventStructs.DateRelationshipType(0);
  sub_1C43FCF64();
  sub_1C440BAA8(v73, v74, v75, v76);
  v77 = v60[11];
  type metadata accessor for BMAppleMusicEventStructs.SongRelationshipType(0);
  sub_1C43FCF64();
  sub_1C440BAA8(v78, v79, v80, v81);
  if (qword_1EDDFD028 != -1)
  {
    sub_1C43FE9B4();
  }

  v82 = sub_1C4F00978();
  sub_1C442B738(v82, qword_1EDE2DE10);
  v133 = *(v47 + 16);
  v133(v20, v27 + v66, v154);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v83 = sub_1C4F00968();
  v84 = sub_1C4F01CB8();

  v150 = v27;
  v151 = v66;
  if (os_log_type_enabled(v83, v84))
  {
    v85 = swift_slowAlloc();
    v131 = v67;
    v152 = swift_slowAlloc();
    *v85 = 136381187;
    v86 = v47;
    v87 = v149;
    *(v85 + 4) = sub_1C441D828(v149, v24, &v152);
    *(v85 + 12) = 2080;
    sub_1C4420A88();
    sub_1C44CD310(v88, v89);
    v130 = v84;
    v90 = v62;
    v91 = sub_1C4F02858();
    v93 = v92;
    v132 = *(v86 + 8);
    v132(v20, v154);
    v94 = sub_1C441D828(v91, v93, &v152);
    v62 = v90;

    *(v85 + 14) = v94;
    *(v85 + 22) = 1024;
    *(v85 + 24) = 0;
    _os_log_impl(&dword_1C43F8000, v83, v130, "Source: generating identifier for: %{private}s : %s : %{BOOL}d", v85, 0x1Cu);
    swift_arrayDestroy();
    v67 = v131;
    sub_1C43FBE2C();
    sub_1C43FBE2C();
  }

  else
  {

    v132 = *(v47 + 8);
    v132(v20, v154);
    v87 = v149;
  }

  v95 = *v67;
  v96 = v67[1];
  v152 = v87;
  v153 = v24;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C6940010](v95, v96);

  v97 = v152;
  v98 = v153;
  sub_1C4F01178();
  sub_1C4F01148();
  v100 = v99;
  (*(v147 + 8))(v146, v148);
  if (v100 >> 60 == 15)
  {
    v101 = v67;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v102 = sub_1C4F00968();
    v103 = sub_1C4F01CD8();

    if (os_log_type_enabled(v102, v103))
    {
      v104 = swift_slowAlloc();
      v105 = swift_slowAlloc();
      v152 = v105;
      *v104 = 136380675;
      v106 = sub_1C441D828(v97, v98, &v152);

      *(v104 + 4) = v106;
      sub_1C4403218(&dword_1C43F8000, v107, v108, "Source: failed to encode identifier as UTF8 data: %{private}s");
      sub_1C440962C(v105);
      sub_1C43FBE2C();
      sub_1C43FBE2C();
    }

    else
    {
    }

    sub_1C45CF650();
    sub_1C43FFB2C();
    *v122 = 5;
    swift_willThrow();
    sub_1C4420C3C(v150 + v137, &qword_1EC0B9A08, &unk_1C4F107B0);
    v132(v150 + v151, v154);
    sub_1C4411564();
    sub_1C4D6D038(v101, v123);
    (*(*(v62 - 8) + 8))(v150 + v134, v62);
    v124 = sub_1C4429108(&a15);
    sub_1C4420C3C(v124, v125, v126);
    v127 = sub_1C4429108(&a14);
    sub_1C4420C3C(v127, v128, v129);
  }

  else
  {

    sub_1C4435D68();
    sub_1C44CD310(v109, v110);
    sub_1C4F00DB8();
    v111 = sub_1C440DE18();
    sub_1C44344B8(v111, v112);
    v113 = sub_1C440DE18();
    sub_1C4498FD8(v113, v114);
    v115 = sub_1C440DE18();
    sub_1C441DFEC(v115, v116);
    sub_1C4F00DA8();
    v117 = sub_1C4416968();
    v118(v117, v143);
    v133(v138, v150 + v151, v154);
    (*(v144 + 16))(v141, v142, v145);
    sub_1C4EFF028();
    v119 = sub_1C440DE18();
    sub_1C441DFEC(v119, v120);
    (*(v144 + 8))(v142, v145);
    v121 = *(v139 + 32);
    v121(v135, v136, v140);
    v121(v150, v135, v140);
  }

  sub_1C43FBC80();
}

void sub_1C4D637D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FE96C();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v160 = v24;
  v26 = v25;
  v27 = sub_1C4F00DD8();
  v152 = sub_1C43FCDF8(v27);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v152);
  sub_1C43FD2D8();
  sub_1C43FBE44();
  v30 = sub_1C4F00DC8();
  v31 = sub_1C43FCDF8(v30);
  v153 = v32;
  v154 = v31;
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v31);
  sub_1C43FBFDC();
  v150 = v35;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v36);
  sub_1C43FD230();
  v151 = v37;
  sub_1C43FBE44();
  v38 = sub_1C4F01188();
  v39 = sub_1C43FCDF8(v38);
  v156 = v40;
  v157 = v39;
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v39);
  sub_1C43FD2D8();
  v155 = v43;
  sub_1C43FBE44();
  a10 = sub_1C4EFD548();
  v44 = sub_1C43FCDF8(a10);
  v46 = v45;
  v48 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v44);
  sub_1C43FBFDC();
  v147 = v49;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v50);
  sub_1C43FD230();
  v52 = v51;
  sub_1C43FBE44();
  v53 = sub_1C4EFF0C8();
  v54 = sub_1C43FCDF8(v53);
  v148 = v55;
  v149 = v54;
  v57 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v54);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v58);
  sub_1C43FD230();
  v144 = v59;
  v60 = sub_1C43FBE44();
  v61 = type metadata accessor for BMAppleMusicEventStructs.Song(v60);
  v62 = v61[5];
  v63 = sub_1C4EFEEF8();
  v146 = v62;
  sub_1C43FCF64();
  sub_1C440BAA8(v64, v65, v66, v63);
  v67 = v61[6];
  sub_1C4EFD3E8();
  v68 = (v26 + v61[7]);
  if (qword_1EDDFD268 != -1)
  {
    sub_1C4404CEC();
  }

  v69 = type metadata accessor for Source();
  sub_1C442B738(v69, &qword_1EDDFD270);
  sub_1C441AB98();
  sub_1C448D2B4(v70, v68, v71);
  sub_1C442AA98(v61[8]);
  sub_1C4EFEBF8();
  sub_1C4401738(v61[9]);
  sub_1C442AA98(v61[10]);
  sub_1C4EFEC48();
  sub_1C4401738(v61[11]);
  sub_1C442AA98(v61[12]);
  sub_1C4EFE298();
  sub_1C4401738(v61[13]);
  sub_1C442AA98(v61[14]);
  sub_1C4EFE768();
  sub_1C4401738(v61[15]);
  sub_1C442AA98(v61[16]);
  sub_1C4EFE718();
  sub_1C4401738(v61[17]);
  sub_1C442AA98(v61[18]);
  sub_1C4EFEE28();
  sub_1C4401738(v61[19]);
  v72 = v61[20];
  type metadata accessor for BMAppleMusicEventStructs.QuantityRelationshipType(0);
  sub_1C43FCF64();
  sub_1C440BAA8(v73, v74, v75, v76);
  v77 = v61[21];
  type metadata accessor for BMAppleMusicEventStructs.IdentifierRelationshipType(0);
  sub_1C43FCF64();
  sub_1C440BAA8(v78, v79, v80, v81);
  if (qword_1EDDFD028 != -1)
  {
    sub_1C43FE9B4();
  }

  v82 = sub_1C4F00978();
  sub_1C442B738(v82, qword_1EDE2DE10);
  v159 = v67;
  v83 = v52;
  v143 = *(v46 + 16);
  v143(v52, v26 + v67, a10);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v84 = sub_1C4F00968();
  v85 = sub_1C4F01CB8();

  v158 = v68;
  if (os_log_type_enabled(v84, v85))
  {
    v86 = v46;
    v87 = swift_slowAlloc();
    v161 = swift_slowAlloc();
    *v87 = 136381187;
    *(v87 + 4) = sub_1C441D828(v160, v23, &v161);
    *(v87 + 12) = 2080;
    sub_1C4420A88();
    sub_1C44CD310(v88, v89);
    v141 = v85;
    v142 = v23;
    v90 = a10;
    v91 = sub_1C4F02858();
    v92 = v90;
    v93 = v63;
    v95 = v94;
    v96 = v86;
    v68 = v158;
    v97 = *(v96 + 8);
    v97(v83, v92);
    v98 = sub_1C441D828(v91, v95, &v161);
    v63 = v93;
    v23 = v142;

    *(v87 + 14) = v98;
    v99 = v160;
    *(v87 + 22) = 1024;
    *(v87 + 24) = 0;
    _os_log_impl(&dword_1C43F8000, v84, v141, "Source: generating identifier for: %{private}s : %s : %{BOOL}d", v87, 0x1Cu);
    swift_arrayDestroy();
    sub_1C43FBE2C();
    sub_1C43FBE2C();
  }

  else
  {

    v97 = *(v46 + 8);
    v97(v83, a10);
    v99 = v160;
  }

  v100 = *v68;
  v101 = v68[1];
  v161 = v99;
  v162 = v23;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C6940010](v100, v101);

  v103 = v161;
  v102 = v162;
  sub_1C4F01178();
  sub_1C4F01148();
  v105 = v104;
  (*(v156 + 8))(v155, v157);
  if (v105 >> 60 == 15)
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v106 = sub_1C4F00968();
    v107 = sub_1C4F01CD8();

    if (os_log_type_enabled(v106, v107))
    {
      v108 = swift_slowAlloc();
      v109 = swift_slowAlloc();
      v161 = v109;
      *v108 = 136380675;
      v110 = sub_1C441D828(v103, v102, &v161);

      *(v108 + 4) = v110;
      sub_1C4403218(&dword_1C43F8000, v111, v112, "Source: failed to encode identifier as UTF8 data: %{private}s");
      sub_1C440962C(v109);
      sub_1C43FBE2C();
      sub_1C43FBE2C();
    }

    else
    {
    }

    sub_1C45CF650();
    sub_1C43FFB2C();
    *v126 = 5;
    swift_willThrow();
    sub_1C4420C3C(v26 + v146, &qword_1EC0B9A08, &unk_1C4F107B0);
    v97(v26 + v159, a10);
    sub_1C4411564();
    sub_1C4D6D038(v158, v127);
    v128 = *(*(v63 - 8) + 8);
    v129 = sub_1C4401918(&a16);
    v128(v129);
    v130 = sub_1C4401918(&a15);
    v128(v130);
    v131 = sub_1C4401918(&a14);
    v128(v131);
    v132 = sub_1C4401918(&a13);
    v128(v132);
    v133 = sub_1C4401918(&a12);
    v128(v133);
    v134 = sub_1C4401918(&a11);
    v128(v134);
    v135 = sub_1C4429108(&a10);
    sub_1C4420C3C(v135, v136, v137);
    v138 = sub_1C4429108(&a9);
    sub_1C4420C3C(v138, v139, v140);
  }

  else
  {

    sub_1C4435D68();
    sub_1C44CD310(v113, v114);
    sub_1C4F00DB8();
    v115 = sub_1C43FD018();
    sub_1C44344B8(v115, v116);
    v117 = sub_1C43FD018();
    sub_1C4498FD8(v117, v118);
    v119 = sub_1C43FD018();
    sub_1C441DFEC(v119, v120);
    sub_1C4F00DA8();
    v121 = sub_1C4416968();
    v122(v121, v152);
    v143(v147, v26 + v159, a10);
    (*(v153 + 16))(v150, v151, v154);
    sub_1C4EFF028();
    v123 = sub_1C43FD018();
    sub_1C441DFEC(v123, v124);
    (*(v153 + 8))(v151, v154);
    v125 = *(v148 + 32);
    v125(v144, v145, v149);
    v125(v26, v144, v149);
  }

  sub_1C43FBC80();
}

uint64_t sub_1C4D641D0(uint64_t a1)
{
  v2 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C44042B0();
  v7 = type metadata accessor for BMAppleMusicEventStructs.Song(v6);
  v8 = *(v7 + 84);
  sub_1C441E0D8(v7, v9, &qword_1EC0BA6B8, &unk_1C4F70150);
  v10 = type metadata accessor for BMAppleMusicEventStructs.IdentifierRelationshipType(0);
  if (sub_1C446250C(v10))
  {
    return sub_1C4420C3C(a1, &qword_1EC0BA6B8, &unk_1C4F70150);
  }

  sub_1C4EFE308();
  sub_1C4420C3C(a1, &qword_1EC0BA6B8, &unk_1C4F70150);
  v12 = sub_1C4EFEEF8();
  v13 = sub_1C440CBF4(v12);
  return sub_1C445BAB4(v13, v14, &qword_1EC0B9A08, &unk_1C4F107B0);
}

uint64_t sub_1C4D642C0(uint64_t a1)
{
  v2 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C44042B0();
  v7 = type metadata accessor for BMAppleMusicEventStructs.Song(v6);
  v8 = *(v7 + 80);
  sub_1C441E0D8(v7, v9, &qword_1EC0BA6B0, &unk_1C4F145F0);
  v10 = type metadata accessor for BMAppleMusicEventStructs.QuantityRelationshipType(0);
  if (sub_1C446250C(v10))
  {
    return sub_1C4420C3C(a1, &qword_1EC0BA6B0, &unk_1C4F145F0);
  }

  sub_1C4EFED58();
  sub_1C4420C3C(a1, &qword_1EC0BA6B0, &unk_1C4F145F0);
  v12 = sub_1C4EFEEF8();
  v13 = sub_1C440CBF4(v12);
  return sub_1C445BAB4(v13, v14, &qword_1EC0B9A08, &unk_1C4F107B0);
}

uint64_t sub_1C4D643B0(uint64_t a1)
{
  v4 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v4);
  v6 = *(v5 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v7);
  v8 = sub_1C44042B0();
  v9 = v2 + *(type metadata accessor for BMAppleMusicEventStructs.SongRelationshipType(v8) + 28);
  sub_1C44D7768(a1, v9, &qword_1EC0BA6A8, &qword_1C4F145E8);
  v10 = type metadata accessor for BMAppleMusicEventStructs.Song(0);
  if (sub_1C44157D4(v9, 1, v10))
  {
    return sub_1C4420C3C(a1, &qword_1EC0BA6A8, &qword_1C4F145E8);
  }

  sub_1C4EFE6D8();
  sub_1C4420C3C(a1, &qword_1EC0BA6A8, &qword_1C4F145E8);
  v12 = sub_1C4EFEEF8();
  sub_1C440CBF4(v12);
  return sub_1C444088C(v1, v9 + *(v10 + 20), &qword_1EC0B9A08, &unk_1C4F107B0);
}

uint64_t sub_1C4D644D0(uint64_t a1)
{
  v2 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C44042B0();
  v7 = type metadata accessor for BMAppleMusicEventStructs.Event(v6);
  v8 = *(v7 + 44);
  sub_1C441E0D8(v7, v9, &qword_1EC0BA6A0, &qword_1C4F145E0);
  v10 = type metadata accessor for BMAppleMusicEventStructs.SongRelationshipType(0);
  if (sub_1C446250C(v10))
  {
    return sub_1C4420C3C(a1, &qword_1EC0BA6A0, &qword_1C4F145E0);
  }

  sub_1C4EFED08();
  sub_1C4420C3C(a1, &qword_1EC0BA6A0, &qword_1C4F145E0);
  v12 = sub_1C4EFEEF8();
  v13 = sub_1C440CBF4(v12);
  return sub_1C445BAB4(v13, v14, &qword_1EC0B9A08, &unk_1C4F107B0);
}

uint64_t sub_1C4D645C0(uint64_t a1)
{
  v2 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C44042B0();
  v7 = type metadata accessor for BMAppleMusicEventStructs.Event(v6);
  v8 = *(v7 + 40);
  sub_1C441E0D8(v7, v9, &qword_1EC0BA698, &qword_1C4F145D8);
  v10 = type metadata accessor for BMAppleMusicEventStructs.DateRelationshipType(0);
  if (sub_1C446250C(v10))
  {
    return sub_1C4420C3C(a1, &qword_1EC0BA698, &qword_1C4F145D8);
  }

  sub_1C4EFECF8();
  sub_1C4420C3C(a1, &qword_1EC0BA698, &qword_1C4F145D8);
  v12 = sub_1C4EFEEF8();
  v13 = sub_1C440CBF4(v12);
  return sub_1C445BAB4(v13, v14, &qword_1EC0B9A08, &unk_1C4F107B0);
}

void sub_1C4D646B0()
{
  sub_1C43FE628();
  v5 = v4;
  v123 = v6;
  v8 = v7;
  v9 = sub_1C456902C(&qword_1EC0BA6A0, &qword_1C4F145E0);
  sub_1C43FBD18(v9);
  v11 = *(v10 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FBC74();
  v121 = v13;
  v14 = sub_1C43FBE44();
  v15 = type metadata accessor for BMAppleMusicEventStructs.SongRelationshipType(v14);
  v16 = sub_1C43FBCE0(v15);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FD2D8();
  v119 = v19;
  v20 = sub_1C456902C(&qword_1EC0BA698, &qword_1C4F145D8);
  sub_1C43FBD18(v20);
  v22 = *(v21 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v23);
  v24 = sub_1C43FECFC();
  v120 = type metadata accessor for BMAppleMusicEventStructs.DateRelationshipType(v24);
  v25 = sub_1C43FBCE0(v120);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25);
  sub_1C43FD2D8();
  v116 = v28;
  v29 = sub_1C43FBE44();
  v30 = type metadata accessor for EntityTriple(v29);
  v118 = sub_1C43FCDF8(v30);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v118);
  sub_1C43FBFDC();
  v117 = v33;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v34);
  sub_1C440D100();
  v122 = *v5;
  v35 = v0;
  v124 = MEMORY[0x1E69E7CC0];
  v36 = type metadata accessor for BMAppleMusicEventStructs.Event(0);
  v37 = (v35 + v36[9]);
  v38 = v37[1];
  if (v38)
  {
    v39 = *v37;
    v40 = HIBYTE(v38) & 0xF;
    if ((v38 & 0x2000000000000000) == 0)
    {
      v40 = v39 & 0xFFFFFFFFFFFFLL;
    }

    if (v40)
    {
      v115 = v15;
      v41 = sub_1C445AC50();
      sub_1C43FCE50(v41);
      (*(v42 + 16))(v3, v35);
      v43 = v36[8];
      v44 = v118[5];
      v45 = sub_1C4EFEEF8();
      sub_1C43FCE50(v45);
      (*(v46 + 16))(v3 + v44, v35 + v43);
      v47 = v36[7];
      v48 = v118[9];
      sub_1C441AB98();
      sub_1C448D2B4(v35 + v49, v3 + v50, v51);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EF9AE8();
      v53 = v52;
      v54 = v3 + v118[6];
      sub_1C4EFF888();
      v55 = v3 + v118[7];
      sub_1C4EFEC38();
      v56 = (v3 + v118[8]);
      *v56 = v114;
      v56[1] = v38;
      v57 = (v3 + v118[10]);
      *v57 = v8;
      v57[1] = v123;
      *(v3 + v118[11]) = v53;
      *(v3 + v118[12]) = v122;
      v58 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4401EC4(v58, v59, v60, MEMORY[0x1E69E7CC0]);
      v62 = v61;
      v64 = *(v61 + 16);
      v63 = *(v61 + 24);
      if (v64 >= v63 >> 1)
      {
        v103 = sub_1C43FCFE8(v63);
        sub_1C44C9240(v103, v64 + 1, 1, v62);
        v62 = v104;
      }

      *(v62 + 16) = v64 + 1;
      sub_1C43FBF6C();
      v66 = *(v65 + 72);
      sub_1C440835C();
      sub_1C44DD858(v3, v67, v68);
      v124 = v62;
      v15 = v115;
    }
  }

  sub_1C445FFA8(v35 + v36[10], v2, &qword_1EC0BA698, &qword_1C4F145D8);
  sub_1C440175C(v2, 1, v120);
  if (v69)
  {
    sub_1C4420C3C(v2, &qword_1EC0BA698, &qword_1C4F145D8);
  }

  else
  {
    sub_1C44DD858(v2, v116, type metadata accessor for BMAppleMusicEventStructs.DateRelationshipType);
    sub_1C43FE664();
    sub_1C4D64D58();
    if (v1)
    {
      sub_1C440941C();
      sub_1C4D6D038(v116, v71);
LABEL_19:

      goto LABEL_27;
    }

    sub_1C49D3614(v70);
    sub_1C440941C();
    sub_1C4D6D038(v116, v72);
  }

  sub_1C445FFA8(v35 + v36[11], v121, &qword_1EC0BA6A0, &qword_1C4F145E0);
  sub_1C440175C(v121, 1, v15);
  if (v69)
  {
    v73 = v8;
    sub_1C4420C3C(v121, &qword_1EC0BA6A0, &qword_1C4F145E0);
  }

  else
  {
    sub_1C44DD858(v121, v119, type metadata accessor for BMAppleMusicEventStructs.SongRelationshipType);
    sub_1C43FE664();
    sub_1C4D6AE90();
    if (v1)
    {
      sub_1C442E76C();
      sub_1C4D6D038(v119, v75);
      goto LABEL_19;
    }

    v73 = v8;
    sub_1C49D3614(v74);
    sub_1C442E76C();
    sub_1C4D6D038(v119, v76);
  }

  v77 = v124;
  if (*(v124 + 16))
  {
    v78 = sub_1C4EFF0C8();
    sub_1C43FCE50(v78);
    (*(v79 + 16))(v117, v35);
    v80 = v117 + v118[5];
    sub_1C4EFEBB8();
    v81 = v36;
    v82 = v35 + v36[6];
    v83 = sub_1C4EFD2F8();
    v85 = v84;
    v86 = v81[7];
    v87 = v118[9];
    sub_1C441AB98();
    sub_1C448D2B4(v35 + v88, v117 + v89, v90);
    sub_1C4EF9AE8();
    v92 = v91;
    v93 = v117 + v118[6];
    sub_1C4EFF888();
    v94 = v117 + v118[7];
    sub_1C4EFEC38();
    v95 = (v117 + v118[8]);
    *v95 = v83;
    v95[1] = v85;
    v96 = (v117 + v118[10]);
    *v96 = v73;
    v96[1] = v123;
    *(v117 + v118[11]) = v92;
    *(v117 + v118[12]) = v122;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v105 = *(v124 + 16);
      v106 = sub_1C43FCEC0();
      sub_1C44C9240(v106, v107, v108, v124);
      v77 = v109;
    }

    sub_1C440F0B4();
    if (v98)
    {
      v110 = sub_1C43FFD98(v97);
      sub_1C44C9240(v110, v111, v112, v77);
      v77 = v113;
    }

    *(v77 + 16) = v83;
    sub_1C43FBF6C();
    v100 = *(v99 + 72);
    sub_1C440835C();
    sub_1C44DD858(v117, v101, v102);
  }

LABEL_27:
  sub_1C4403810();
  sub_1C44109F8();
}

void sub_1C4D64D58()
{
  sub_1C43FE96C();
  v5 = v4;
  v218 = v6;
  v212 = type metadata accessor for EntityTriple(0);
  v7 = sub_1C43FCDF8(v212);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBFDC();
  v211 = v10;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBF38();
  v209 = v12;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBF38();
  v208 = v14;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v15);
  sub_1C43FBF38();
  v207 = v16;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v17);
  sub_1C43FD230();
  v206 = v18;
  sub_1C43FBE44();
  v217 = sub_1C4EFD548();
  v19 = sub_1C43FCDF8(v217);
  v214 = v20;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v19);
  sub_1C43FD2D8();
  v210 = v23;
  sub_1C43FBE44();
  v24 = sub_1C4EFF8A8();
  v25 = sub_1C43FCDF8(v24);
  v220 = v26;
  v221 = v25;
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v25);
  sub_1C43FBCC4();
  sub_1C440DED0();
  v29 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v29);
  v31 = *(v30 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v32);
  sub_1C4413644();
  v33 = sub_1C4EFEEF8();
  v34 = sub_1C43FCDF8(v33);
  v36 = v35;
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v34);
  sub_1C43FBCC4();
  sub_1C4422BD8();
  v213 = *v5;
  v39 = v0;
  sub_1C445FFA8(v0, v2, &qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C440175C(v2, 1, v33);
  if (v40)
  {
    sub_1C4420C3C(v2, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C45CF650();
    v41 = sub_1C43FFB2C();
    sub_1C4414040(v41, v42);
  }

  else
  {
    v219 = v36;
    (*(v36 + 32))(v3, v2, v33);
    v43 = type metadata accessor for BMAppleMusicEventStructs.DateRelationshipType(0);
    v44 = v39;
    v45 = v39 + v43[5];
    v46 = v210;
    (*(v214 + 16))(v210, v45, v217);
    sub_1C4EFF838();
    v222 = v43;
    v47 = (v44 + v43[8]);
    v48 = v47[1];
    v216 = v1;
    v215 = v3;
    if (!v48)
    {
      goto LABEL_11;
    }

    v49 = *v47;
    v50 = HIBYTE(v48) & 0xF;
    if ((v48 & 0x2000000000000000) == 0)
    {
      v50 = v49 & 0xFFFFFFFFFFFFLL;
    }

    if (v50)
    {
      v51 = sub_1C445AC50();
      sub_1C43FCE50(v51);
      v53 = *(v52 + 16);
      v54 = sub_1C443E050();
      v55(v54);
      v56 = *(v219 + 16);
      (v56)(v206 + v212[5], v3, v33);
      v57 = sub_1C4401940(v212[6]);
      v58(v57, v1);
      v59 = v206 + v212[7];
      sub_1C447CE84(v43[7]);
      v56();
      v60 = v43[6];
      v61 = v212[9];
      sub_1C441AB98();
      sub_1C448D2B4(v44 + v62, v206 + v63, v64);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EF9AE8();
      v65 = (v206 + v212[8]);
      *v65 = v210;
      v65[1] = v48;
      sub_1C441695C((v206 + v212[10]));
      *(v206 + v212[11]) = v66;
      v67 = v213;
      *(v206 + v212[12]) = v213;
      v68 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4401EC4(v68, v69, v70, MEMORY[0x1E69E7CC0]);
      v72 = v71;
      v46 = *(v71 + 16);
      v73 = *(v71 + 24);
      if (v46 >= v73 >> 1)
      {
        v175 = sub_1C4413F5C(v73);
        sub_1C44C9240(v175, v176, v177, v72);
        v72 = v178;
      }

      *(v72 + 16) = v46 + 1;
      sub_1C4426314();
      sub_1C440835C();
      sub_1C44DD858(v206, v74, v75);
      v76 = v219;
    }

    else
    {
LABEL_11:
      v72 = MEMORY[0x1E69E7CC0];
      v76 = v219;
      v67 = v213;
    }

    v77 = (v44 + v43[10]);
    v78 = v77[1];
    if (v78)
    {
      sub_1C43FF988(v77);
      if (v79)
      {
        v80 = sub_1C445AC50();
        sub_1C43FCE50(v80);
        v82 = *(v81 + 16);
        v46 = v207;
        v83 = sub_1C443E050();
        v84(v83);
        v85 = *(v76 + 16);
        (v85)(v207 + v212[5], v215, v33);
        sub_1C442A554();
        v87(v207 + v86, v216);
        v88 = v207 + v212[7];
        sub_1C447CE84(v222[9]);
        v85();
        v89 = v222[6];
        v90 = v212[9];
        sub_1C441AB98();
        sub_1C448D2B4(v44 + v91, v207 + v92, v93);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EF9AE8();
        v94 = (v207 + v212[8]);
        *v94 = v210;
        v94[1] = v78;
        sub_1C441B1E0((v207 + v212[10]));
        *(v207 + v95) = v96;
        *(v207 + v212[12]) = v67;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v179 = *(v72 + 16);
          v180 = sub_1C43FCEC0();
          sub_1C44C9240(v180, v181, v182, v72);
          v72 = v183;
        }

        sub_1C4414030();
        v76 = v219;
        if (v98)
        {
          v184 = sub_1C43FFD98(v97);
          sub_1C44C9240(v184, v185, v186, v72);
          v72 = v187;
        }

        *(v72 + 16) = v78;
        sub_1C4426314();
        sub_1C440835C();
        sub_1C44DD858(v207, v99, v100);
      }
    }

    v101 = (v44 + v222[12]);
    v102 = v101[1];
    if (v102)
    {
      sub_1C43FF988(v101);
      if (v103)
      {
        v104 = sub_1C445AC50();
        sub_1C43FCE50(v104);
        (*(v105 + 16))(v208, v218);
        v106 = *(v76 + 16);
        v46 = v67;
        (v106)(v208 + v212[5], v215, v33);
        sub_1C442A554();
        v108(v208 + v107, v216);
        v109 = v212[7];
        sub_1C447CE84(v222[11]);
        v106();
        v110 = v222[6];
        v111 = v212[9];
        sub_1C441AB98();
        sub_1C448D2B4(v44 + v112, v208 + v113, v114);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EF9AE8();
        v115 = (v208 + v212[8]);
        *v115 = v210;
        v115[1] = v102;
        sub_1C441B1E0((v208 + v212[10]));
        *(v208 + v116) = v117;
        *(v208 + v212[12]) = v67;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v188 = *(v72 + 16);
          v189 = sub_1C43FCEC0();
          sub_1C44C9240(v189, v190, v191, v72);
          v72 = v192;
        }

        sub_1C4414030();
        v76 = v219;
        if (v98)
        {
          v193 = sub_1C43FFD98(v118);
          sub_1C44C9240(v193, v194, v195, v72);
          v72 = v196;
        }

        *(v72 + 16) = v102;
        sub_1C4426314();
        sub_1C440835C();
        sub_1C44DD858(v208, v119, v120);
      }
    }

    v121 = (v44 + v222[14]);
    v122 = v121[1];
    if (v122)
    {
      sub_1C44026DC(v121);
      if (v123)
      {
        v124 = sub_1C4EFF0C8();
        sub_1C43FCE50(v124);
        (*(v125 + 16))(v209, v218);
        v126 = *(v76 + 16);
        (v126)(v209 + v212[5], v215, v33);
        sub_1C442A554();
        v128(v209 + v127, v216);
        v129 = v209 + v212[7];
        sub_1C447CE84(v222[13]);
        v126();
        v130 = v222[6];
        v131 = v212[9];
        sub_1C441AB98();
        sub_1C448D2B4(v44 + v132, v209 + v133, v134);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EF9AE8();
        v135 = (v209 + v212[8]);
        *v135 = v46;
        v135[1] = v122;
        sub_1C441B1E0((v209 + v212[10]));
        *(v209 + v136) = v137;
        *(v209 + v212[12]) = v213;
        LOBYTE(v67) = v213;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v197 = *(v72 + 16);
          v198 = sub_1C43FCEC0();
          sub_1C44C9240(v198, v199, v200, v72);
          v72 = v201;
        }

        sub_1C4414030();
        v76 = v219;
        if (v98)
        {
          v202 = sub_1C43FFD98(v138);
          sub_1C44C9240(v202, v203, v204, v72);
          v72 = v205;
        }

        *(v72 + 16) = v122;
        sub_1C4426314();
        sub_1C440835C();
        sub_1C44DD858(v209, v139, v140);
      }
    }

    if (*(v72 + 16))
    {
      v141 = sub_1C4EFF0C8();
      sub_1C43FCE50(v141);
      v143 = *(v142 + 16);
      v144 = sub_1C443E050();
      v145(v144);
      v146 = sub_1C4401940(v212[5]);
      v147(v146, v215, v33);
      sub_1C442A554();
      v149(v211 + v148, v216);
      v150 = v211 + v212[7];
      sub_1C4EFEBB8();
      v151 = sub_1C4EFD2F8();
      v153 = v152;
      v154 = v222[6];
      v155 = v212[9];
      sub_1C441AB98();
      sub_1C448D2B4(v44 + v156, v211 + v157, v158);
      sub_1C4EF9AE8();
      v159 = (v211 + v212[8]);
      *v159 = v151;
      v159[1] = v153;
      sub_1C441B1E0((v211 + v212[10]));
      *(v211 + v160) = v161;
      *(v211 + v212[12]) = v67;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v166 = *(v72 + 16);
        v167 = sub_1C43FCEC0();
        sub_1C44C9240(v167, v168, v169, v72);
        v72 = v170;
      }

      v163 = *(v72 + 16);
      v162 = *(v72 + 24);
      if (v163 >= v162 >> 1)
      {
        v171 = sub_1C43FFD98(v162);
        sub_1C44C9240(v171, v172, v173, v72);
        v72 = v174;
      }

      (*(v220 + 8))(v216, v221);
      (*(v219 + 8))(v215, v33);
      *(v72 + 16) = v163 + 1;
      sub_1C4426314();
      sub_1C440835C();
      sub_1C44DD858(v211, v164, v165);
    }

    else
    {
      (*(v220 + 8))(v216, v221);
      (*(v76 + 8))(v215, v33);
    }
  }

  sub_1C43FBC80();
}

uint64_t sub_1C4D6580C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7461636964657270 && a2 == 0xE900000000000065;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6C43797469746E65 && a2 == 0xEB00000000737361;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000013 && 0x80000001C4FC7CA0 == a2;
        if (v8 || (sub_1C4F02938() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6D69547472617473 && a2 == 0xE900000000000065;
          if (v9 || (sub_1C4F02938() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000011 && 0x80000001C4FC7CC0 == a2;
            if (v10 || (sub_1C4F02938() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x656D6954646E65 && a2 == 0xE700000000000000;
              if (v11 || (sub_1C4F02938() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD00000000000001ALL && 0x80000001C4FC7CE0 == a2;
                if (v12 || (sub_1C4F02938() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD000000000000010 && 0x80000001C4FC7D00 == a2;
                  if (v13 || (sub_1C4F02938() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD000000000000018 && 0x80000001C4FC7D20 == a2;
                    if (v14 || (sub_1C4F02938() & 1) != 0)
                    {

                      return 9;
                    }

                    else if (a1 == 0x4564657475706D69 && a2 == 0xEE00656D6954646ELL)
                    {

                      return 10;
                    }

                    else
                    {
                      v16 = sub_1C4F02938();

                      if (v16)
                      {
                        return 10;
                      }

                      else
                      {
                        return 11;
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

unint64_t sub_1C4D65B70(char a1)
{
  result = 0x7461636964657270;
  switch(a1)
  {
    case 1:
      result = 0x6C43797469746E65;
      break;
    case 2:
      result = 0x656372756F73;
      break;
    case 3:
      result = 0xD000000000000013;
      break;
    case 4:
      result = 0x6D69547472617473;
      break;
    case 5:
      result = 0xD000000000000011;
      break;
    case 6:
      result = 0x656D6954646E65;
      break;
    case 7:
      result = 0xD00000000000001ALL;
      break;
    case 8:
      result = 0xD000000000000010;
      break;
    case 9:
      result = 0xD000000000000018;
      break;
    case 10:
      result = 0x4564657475706D69;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1C4D65CD4()
{
  sub_1C43FE96C();
  v2 = sub_1C456902C(&qword_1EC0C6BA0, &qword_1C4F704E8);
  sub_1C43FCDF8(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C4402A68();
  sub_1C43FD870();
  sub_1C4D6DE28();
  sub_1C444FECC();
  sub_1C440F9B8();
  sub_1C4F02BF8();
  sub_1C441D6E4();
  sub_1C4EFEEF8();
  sub_1C442DAA4();
  sub_1C44CD310(v6, v7);
  sub_1C4405570();
  sub_1C4F02778();
  if (!v1)
  {
    v19 = type metadata accessor for BMAppleMusicEventStructs.DateRelationshipType(0);
    v8 = v19[5];
    sub_1C440CE38();
    sub_1C4EFD548();
    sub_1C4420A88();
    sub_1C44CD310(v9, v10);
    sub_1C43FBF44();
    sub_1C4F027E8();
    v11 = v19[6];
    sub_1C4401FFC();
    type metadata accessor for Source();
    sub_1C44014A4();
    sub_1C44CD310(v12, v13);
    sub_1C43FBF44();
    sub_1C4F027E8();
    sub_1C4401958(v19);
    sub_1C4405570();
    sub_1C4F027E8();
    sub_1C440C15C((v0 + v19[8]));
    sub_1C4F02738();
    v14 = v19[9];
    sub_1C4405570();
    sub_1C4F027E8();
    sub_1C4401774(v19[10]);
    sub_1C43FBF44();
    sub_1C4F02738();
    v15 = v19[11];
    sub_1C4405570();
    sub_1C4F027E8();
    sub_1C4401774(v19[12]);
    sub_1C43FBF44();
    sub_1C4F02738();
    v16 = v19[13];
    sub_1C4405570();
    sub_1C4F027E8();
    sub_1C4401774(v19[14]);
    sub_1C43FBF44();
    sub_1C4F02738();
  }

  v17 = sub_1C440231C();
  v18(v17);
  sub_1C43FBC80();
}

void sub_1C4D66008()
{
  sub_1C43FE96C();
  v3 = v2;
  v60 = v4;
  v5 = sub_1C4EFEEF8();
  v6 = sub_1C43FCDF8(v5);
  v63 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBFDC();
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FBF38();
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBF38();
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FD230();
  v64 = v13;
  v14 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v14);
  v16 = *(v15 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v17);
  sub_1C43FBC74();
  v65 = v18;
  v67 = sub_1C456902C(&qword_1EC0C6B90, &qword_1C4F704E0);
  sub_1C43FCDF8(v67);
  v20 = *(v19 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v21);
  sub_1C43FBC74();
  v22 = sub_1C43FBE44();
  v23 = type metadata accessor for BMAppleMusicEventStructs.DateRelationshipType(v22);
  v24 = sub_1C43FBCE0(v23);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  sub_1C43FBCC4();
  sub_1C440DED0();
  sub_1C43FCF64();
  v66 = v5;
  sub_1C440BAA8(v27, v28, v29, v5);
  v30 = v1 + v23[5];
  sub_1C4EFD168();
  v31 = v23[6];
  if (qword_1EDDFD268 != -1)
  {
    sub_1C4404CEC();
  }

  v32 = type metadata accessor for Source();
  sub_1C442B738(v32, &qword_1EDDFD270);
  sub_1C441AB98();
  sub_1C448D2B4(v33, v1 + v31, v34);
  v62 = v23[7];
  sub_1C4EFEEE8();
  v35 = (v1 + v23[8]);
  *v35 = 0;
  v35[1] = 0;
  v61 = v23[9];
  sub_1C4EFECE8();
  v36 = (v1 + v23[10]);
  *v36 = 0;
  v36[1] = 0;
  v37 = v23[11];
  sub_1C4EFE7B8();
  v38 = (v1 + v23[12]);
  *v38 = 0;
  v38[1] = 0;
  v39 = v23[13];
  sub_1C4EFE668();
  v70 = v1;
  v40 = (v1 + v23[14]);
  *v40 = 0;
  v40[1] = 0;
  v41 = v3;
  v42 = v3[3];
  v43 = v3[4];
  v68 = v41;
  sub_1C4409678(v41, v42);
  sub_1C4D6DE28();
  sub_1C4F02BC8();
  if (!v0)
  {
    v69 = v35;
    sub_1C442DAA4();
    sub_1C44CD310(v44, v45);
    sub_1C4F02658();
    sub_1C444088C(v65, v70, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C441405C();
    sub_1C4F026C8();
    v46 = *(v63 + 40);
    v46(v70 + v62, v64, v66);
    sub_1C4428F20();
    v47 = sub_1C4F02618();
    sub_1C44147E8(v47, v49, v69);
    sub_1C4423DB4();
    sub_1C4F026C8();
    v50 = sub_1C4401928(v61);
    (v46)(v50);
    sub_1C440CE58();
    sub_1C4424818();
    *v36 = sub_1C4F02618();
    v36[1] = v51;
    sub_1C4423DB4();
    sub_1C4424818();
    sub_1C4F026C8();
    v52 = sub_1C4401928(v37);
    (v46)(v52);
    sub_1C4424818();
    *v38 = sub_1C4F02618();
    v38[1] = v53;
    sub_1C4423DB4();
    sub_1C4424818();
    sub_1C4F026C8();
    v54 = sub_1C4401928(v39);
    (v46)(v54);
    sub_1C4424818();
    v55 = sub_1C4F02618();
    v57 = v56;
    v58 = sub_1C43FE5EC();
    v59(v58, v67);
    *v40 = v55;
    v40[1] = v57;
    sub_1C448D2B4(v70, v60, type metadata accessor for BMAppleMusicEventStructs.DateRelationshipType);
  }

  sub_1C440962C(v68);
  sub_1C440941C();
  sub_1C4D6D038(v70, v48);
  sub_1C43FBC80();
}

uint64_t sub_1C4D665EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4D6580C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4D66614(uint64_t a1)
{
  v2 = sub_1C4D6DE28();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4D66650(uint64_t a1)
{
  v2 = sub_1C4D6DE28();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1C4D666D4()
{
  sub_1C43FE96C();
  v3 = v0;
  v125 = v4;
  v126 = v5;
  v121 = v6;
  v124 = v7;
  v123 = type metadata accessor for EntityTriple(0);
  v8 = sub_1C43FCDF8(v123);
  v119 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBFDC();
  v118 = v12;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FD230();
  v115 = v14;
  sub_1C43FBE44();
  v116 = sub_1C4EFD548();
  v15 = sub_1C43FCDF8(v116);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v15);
  sub_1C43FBCC4();
  sub_1C4422BD8();
  v129 = sub_1C4EFF8A8();
  v20 = sub_1C43FCDF8(v129);
  v128 = v21;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v20);
  sub_1C43FBCC4();
  v26 = v25 - v24;
  v27 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v27);
  v29 = *(v28 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v30);
  sub_1C4413644();
  v31 = sub_1C4EFEEF8();
  v32 = sub_1C43FCDF8(v31);
  v34 = v33;
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v32);
  sub_1C43FBCC4();
  v39 = v38 - v37;
  v120 = *v126;
  v41 = v40;
  sub_1C445FFA8(v3, v1, &qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C440175C(v1, 1, v41);
  if (v42)
  {
    sub_1C4420C3C(v1, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C45CF650();
    v43 = sub_1C43FFB2C();
    sub_1C4414040(v43, v44);
    goto LABEL_21;
  }

  v122 = v39;
  v127 = v41;
  (*(v34 + 32))(v39, v1, v41);
  v45 = type metadata accessor for BMAppleMusicEventStructs.QuantityRelationshipType(0);
  (*(v17 + 16))(v2, v3 + *(v45 + 20), v116);
  sub_1C4EFF838();
  v117 = v45;
  v46 = (v3 + *(v45 + 32));
  v47 = v46[1];
  v48 = v26;
  if (v47)
  {
    v114 = v26;
    v49 = *v46;
    v50 = HIBYTE(v47) & 0xF;
    if ((v47 & 0x2000000000000000) == 0)
    {
      v50 = v49 & 0xFFFFFFFFFFFFLL;
    }

    v51 = v129;
    if (v50)
    {
      v52 = sub_1C4EFF0C8();
      sub_1C43FCE50(v52);
      (*(v53 + 16))(v115, v121);
      v54 = *(v34 + 16);
      v54(v115 + v123[5], v122, v127);
      v55 = v123[6];
      sub_1C443F008();
      v57(v115 + v56, v114, v129);
      v54(v115 + v123[7], v3 + *(v117 + 28), v127);
      v58 = *(v117 + 24);
      v59 = v123[9];
      sub_1C441AB98();
      sub_1C448D2B4(v3 + v60, v115 + v61, v62);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EF9AE8();
      v63 = (v115 + v123[8]);
      *v63 = v49;
      v63[1] = v47;
      v64 = (v115 + v123[10]);
      *v64 = v124;
      v64[1] = v125;
      *(v115 + v123[11]) = v65;
      *(v115 + v123[12]) = v120;
      v66 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4401EC4(v66, v67, v68, MEMORY[0x1E69E7CC0]);
      v70 = v69;
      v72 = *(v69 + 16);
      v71 = *(v69 + 24);
      if (v72 >= v71 >> 1)
      {
        v112 = sub_1C43FCFE8(v71);
        sub_1C44C9240(v112, v72 + 1, 1, v70);
        v70 = v113;
      }

      *(v70 + 16) = v72 + 1;
      v74 = v118;
      v73 = v119;
      v75 = v70 + ((*(v73 + 80) + 32) & ~*(v73 + 80)) + *(v119 + 72) * v72;
      sub_1C440835C();
      sub_1C44DD858(v115, v76, v77);
      v48 = v114;
      v78 = v122;
      v51 = v129;
      goto LABEL_14;
    }

    v70 = MEMORY[0x1E69E7CC0];
    v74 = v118;
    v73 = v119;
    v48 = v114;
  }

  else
  {
    v70 = MEMORY[0x1E69E7CC0];
    v74 = v118;
    v73 = v119;
    v51 = v129;
  }

  v78 = v122;
LABEL_14:
  if (*(v70 + 16))
  {
    v79 = sub_1C4EFF0C8();
    sub_1C43FCE50(v79);
    (*(v80 + 16))(v74, v121);
    (*(v34 + 16))(v74 + v123[5], v78, v127);
    v81 = v123[6];
    sub_1C443F008();
    v83(v74 + v82, v48, v51);
    v84 = v74 + v123[7];
    sub_1C4EFEBB8();
    v85 = sub_1C4EFD2F8();
    v87 = v86;
    v88 = *(v117 + 24);
    v89 = v123[9];
    sub_1C441AB98();
    sub_1C44BBD20(v90, v91);
    sub_1C4EF9AE8();
    v92 = (v74 + v123[8]);
    *v92 = v85;
    v92[1] = v87;
    v93 = (v74 + v123[10]);
    *v93 = v124;
    v93[1] = v125;
    *(v74 + v123[11]) = v94;
    *(v74 + v123[12]) = v120;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v103 = *(v70 + 16);
      v104 = sub_1C43FCEC0();
      sub_1C44C9240(v104, v105, v106, v70);
      v70 = v107;
    }

    sub_1C440F0B4();
    if (v96)
    {
      v108 = sub_1C43FFD98(v95);
      sub_1C44C9240(v108, v109, v110, v70);
      v70 = v111;
    }

    v97 = sub_1C43FEBB4();
    v98(v97);
    (*(v34 + 8))(v122, v127);
    *(v70 + 16) = v85;
    v99 = v70 + ((*(v73 + 80) + 32) & ~*(v73 + 80));
    v100 = *(v73 + 72);
    sub_1C440835C();
    sub_1C44DD858(v74, v101, v102);
  }

  else
  {
    (*(v128 + 8))(v48, v51);
    (*(v34 + 8))(v78, v127);
  }

LABEL_21:
  sub_1C43FBC80();
}

uint64_t sub_1C4D66D84(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7461636964657270 && a2 == 0xE900000000000065;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6C43797469746E65 && a2 == 0xEB00000000737361;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000012 && 0x80000001C4FC7BE0 == a2;
        if (v8 || (sub_1C4F02938() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x797469746E617571 && a2 == 0xE800000000000000)
        {

          return 4;
        }

        else
        {
          v10 = sub_1C4F02938();

          if (v10)
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

unint64_t sub_1C4D66F34(char a1)
{
  result = 0x7461636964657270;
  switch(a1)
  {
    case 1:
      result = 0x6C43797469746E65;
      break;
    case 2:
      result = 0x656372756F73;
      break;
    case 3:
      result = 0xD000000000000012;
      break;
    case 4:
      result = 0x797469746E617571;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1C4D66FDC()
{
  sub_1C43FE96C();
  sub_1C440EDD4();
  v2 = sub_1C456902C(&qword_1EC0C6B58, &qword_1C4F704B8);
  sub_1C43FCDF8(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C4402A68();
  sub_1C43FD870();
  sub_1C4D6DD2C();
  sub_1C444FECC();
  sub_1C440F9B8();
  sub_1C4F02BF8();
  sub_1C441D6E4();
  sub_1C4EFEEF8();
  sub_1C442DAA4();
  sub_1C44CD310(v6, v7);
  sub_1C4405570();
  sub_1C4F02778();
  if (!v1)
  {
    v16 = type metadata accessor for BMAppleMusicEventStructs.QuantityRelationshipType(0);
    v8 = v16[5];
    sub_1C440CE38();
    sub_1C4EFD548();
    sub_1C4420A88();
    sub_1C44CD310(v9, v10);
    sub_1C443F014();
    sub_1C43FCB2C();
    sub_1C4F027E8();
    v11 = v16[6];
    sub_1C4401FFC();
    type metadata accessor for Source();
    sub_1C44014A4();
    sub_1C44CD310(v12, v13);
    sub_1C443F014();
    sub_1C43FCB2C();
    sub_1C4F027E8();
    sub_1C4401958(v16);
    sub_1C4405570();
    sub_1C4F027E8();
    sub_1C440C15C((v0 + v16[8]));
    sub_1C4F02738();
  }

  v14 = sub_1C440231C();
  v15(v14);
  sub_1C43FBC80();
}

void sub_1C4D671E8()
{
  sub_1C43FE96C();
  v3 = v2;
  v46 = v4;
  v5 = sub_1C4EFEEF8();
  v6 = sub_1C43FCDF8(v5);
  v47 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FD2D8();
  v48 = v10;
  v11 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v11);
  v13 = *(v12 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FBC74();
  v49 = v15;
  v16 = sub_1C456902C(&qword_1EC0C6B48, &qword_1C4F704B0);
  v50 = sub_1C43FCDF8(v16);
  v18 = *(v17 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v19);
  v20 = sub_1C43FECFC();
  v21 = type metadata accessor for BMAppleMusicEventStructs.QuantityRelationshipType(v20);
  v22 = sub_1C43FBCE0(v21);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  sub_1C43FBCC4();
  sub_1C44058BC();
  sub_1C43FCF64();
  sub_1C440BAA8(v25, v26, v27, v5);
  v28 = v1 + v21[5];
  sub_1C4EFD208();
  v29 = v21[6];
  if (qword_1EDDFD268 != -1)
  {
    sub_1C4404CEC();
  }

  v30 = type metadata accessor for Source();
  sub_1C442B738(v30, &qword_1EDDFD270);
  sub_1C441AB98();
  sub_1C448D2B4(v31, v1 + v29, v32);
  v33 = v21[7];
  sub_1C4EFEE08();
  v34 = (v1 + v21[8]);
  *v34 = 0;
  v34[1] = 0;
  v35 = v3[4];
  sub_1C4409678(v3, v3[3]);
  sub_1C4D6DD2C();
  sub_1C4F02BC8();
  if (!v0)
  {
    sub_1C442DAA4();
    sub_1C44CD310(v36, v37);
    sub_1C43FE6CC();
    sub_1C43FE664();
    sub_1C4F02658();
    sub_1C444088C(v49, v1, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C441405C();
    sub_1C43FE664();
    sub_1C4F026C8();
    (*(v47 + 40))(v1 + v33, v48, v5);
    sub_1C4428F20();
    sub_1C43FE664();
    v39 = sub_1C4F02618();
    v41 = v40;
    v42 = sub_1C4416968();
    v43(v42, v50);
    *v34 = v39;
    v34[1] = v41;
    v44 = sub_1C442A548();
    sub_1C448D2B4(v44, v46, v45);
  }

  sub_1C440962C(v3);
  sub_1C4406354();
  sub_1C4D6D038(v1, v38);
  sub_1C4403810();
  sub_1C43FBC80();
}

uint64_t sub_1C4D67578@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4D66D84(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4D675A0(uint64_t a1)
{
  v2 = sub_1C4D6DD2C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4D675DC(uint64_t a1)
{
  v2 = sub_1C4D6DD2C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1C4D67660()
{
  sub_1C43FE96C();
  v3 = v0;
  v158 = v4;
  v156 = v5;
  v157 = type metadata accessor for EntityTriple(0);
  v6 = sub_1C43FCDF8(v157);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBFDC();
  v152 = v9;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FBF38();
  v151 = v11;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FD230();
  v150 = v13;
  sub_1C43FBE44();
  v154 = sub_1C4EFD548();
  v14 = sub_1C43FCDF8(v154);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FBCC4();
  sub_1C440DED0();
  v160 = sub_1C4EFF8A8();
  v19 = sub_1C43FCDF8(v160);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  sub_1C43FBCC4();
  v24 = v23 - v22;
  v25 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v25);
  v27 = *(v26 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v28);
  sub_1C44058BC();
  v29 = sub_1C4EFEEF8();
  v30 = sub_1C43FCDF8(v29);
  v32 = v31;
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v30);
  sub_1C43FBCC4();
  v37 = v36 - v35;
  v159 = *v158;
  v39 = v38;
  sub_1C445FFA8(v3, v1, &qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C440175C(v1, 1, v39);
  if (v40)
  {
    sub_1C4420C3C(v1, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C45CF650();
    v41 = sub_1C43FFB2C();
    sub_1C4414040(v41, v42);
  }

  else
  {
    (*(v32 + 32))(v37, v1, v39);
    v43 = type metadata accessor for BMAppleMusicEventStructs.IdentifierRelationshipType(0);
    (*(v16 + 16))(v2, v3 + *(v43 + 20), v154);
    sub_1C4EFF838();
    v153 = v3;
    v155 = v43;
    v44 = (v3 + *(v43 + 32));
    v45 = v44[1];
    v46 = v24;
    v149 = v24;
    v47 = v32;
    if (!v45)
    {
      goto LABEL_11;
    }

    v48 = *v44;
    v49 = HIBYTE(v45) & 0xF;
    if ((v45 & 0x2000000000000000) == 0)
    {
      v49 = v48 & 0xFFFFFFFFFFFFLL;
    }

    if (v49)
    {
      v50 = sub_1C4EFF0C8();
      sub_1C43FCE50(v50);
      (*(v51 + 16))(v150, v156);
      v52 = *(v32 + 16);
      v52(v150 + v157[5], v37, v39);
      v53 = v157[6];
      sub_1C443F008();
      v55(v150 + v54, v46, v160);
      v52(v150 + v157[7], v3 + v155[7], v39);
      v56 = v155[6];
      v57 = v157[9];
      sub_1C441AB98();
      sub_1C448D2B4(v3 + v58, v150 + v59, v60);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EF9AE8();
      v61 = (v150 + v157[8]);
      *v61 = v48;
      v61[1] = v45;
      sub_1C441695C((v150 + v157[10]));
      *(v150 + v157[11]) = v62;
      *(v150 + v157[12]) = v159;
      v63 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4401EC4(v63, v64, v65, MEMORY[0x1E69E7CC0]);
      v67 = v66;
      v69 = *(v66 + 16);
      v68 = *(v66 + 24);
      if (v69 >= v68 >> 1)
      {
        v136 = sub_1C4413F5C(v68);
        sub_1C44C9240(v136, v137, v138, v67);
        v67 = v139;
      }

      *(v67 + 16) = v69 + 1;
      sub_1C43FBF6C();
      v71 = *(v70 + 72);
      sub_1C440835C();
      sub_1C44DD858(v150, v72, v73);
      v46 = v149;
    }

    else
    {
LABEL_11:
      v67 = MEMORY[0x1E69E7CC0];
    }

    v74 = (v3 + v155[10]);
    v75 = v74[1];
    if (!v75)
    {
      goto LABEL_21;
    }

    v76 = *v74;
    v77 = HIBYTE(v75) & 0xF;
    if ((v75 & 0x2000000000000000) == 0)
    {
      v77 = v76 & 0xFFFFFFFFFFFFLL;
    }

    if (v77)
    {
      v78 = sub_1C4EFF0C8();
      sub_1C43FCE50(v78);
      v80 = *(v79 + 16);
      v81 = sub_1C443E050();
      v82(v81);
      v83 = *(v47 + 16);
      v83(v151 + v157[5]);
      v84 = sub_1C4401940(v157[6]);
      v85(v84, v46, v160);
      (v83)(v151 + v157[7], v153 + v155[9], v39);
      v3 = v153;
      v86 = v155[6];
      v87 = v157[9];
      sub_1C441AB98();
      sub_1C448D2B4(v153 + v88, v151 + v89, v90);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EF9AE8();
      v91 = (v151 + v157[8]);
      *v91 = v76;
      v91[1] = v75;
      sub_1C441695C((v151 + v157[10]));
      *(v151 + v157[11]) = v92;
      *(v151 + v157[12]) = v159;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v140 = *(v67 + 16);
        v141 = sub_1C43FCEC0();
        sub_1C44C9240(v141, v142, v143, v67);
        v67 = v144;
      }

      v94 = *(v67 + 16);
      v93 = *(v67 + 24);
      v95 = v152;
      if (v94 >= v93 >> 1)
      {
        v145 = sub_1C4413F5C(v93);
        sub_1C44C9240(v145, v146, v147, v67);
        v67 = v148;
      }

      *(v67 + 16) = v94 + 1;
      sub_1C43FBF6C();
      v97 = *(v96 + 72);
      sub_1C440835C();
      sub_1C44DD858(v151, v98, v99);
      v46 = v149;
    }

    else
    {
LABEL_21:
      v95 = v152;
    }

    if (*(v67 + 16))
    {
      v100 = sub_1C4EFF0C8();
      sub_1C43FCE50(v100);
      (*(v101 + 16))(v95, v156);
      v102 = v37;
      (*(v47 + 16))(v95 + v157[5], v37, v39);
      v103 = v157[6];
      sub_1C443F008();
      v105(v95 + v104, v46, v160);
      v106 = v95 + v157[7];
      sub_1C4EFEBB8();
      v107 = sub_1C4EFD2F8();
      v109 = v108;
      v110 = v155[6];
      v111 = v157[9];
      sub_1C441AB98();
      sub_1C448D2B4(v3 + v112, v95 + v113, v114);
      sub_1C4EF9AE8();
      v115 = (v95 + v157[8]);
      *v115 = v107;
      v115[1] = v109;
      sub_1C441695C((v95 + v157[10]));
      *(v95 + v157[11]) = v116;
      *(v95 + v157[12]) = v159;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v127 = *(v67 + 16);
        v128 = sub_1C43FCEC0();
        sub_1C44C9240(v128, v129, v130, v67);
        v67 = v131;
      }

      sub_1C440F0B4();
      if (v118)
      {
        v132 = sub_1C43FFD98(v117);
        sub_1C44C9240(v132, v133, v134, v67);
        v67 = v135;
      }

      v119 = sub_1C43FEBB4();
      v120(v119);
      (*(v47 + 8))(v102, v39);
      *(v67 + 16) = v107;
      sub_1C43FBF6C();
      v122 = *(v121 + 72);
      sub_1C440835C();
      sub_1C44DD858(v95, v123, v124);
    }

    else
    {
      v125 = sub_1C43FEBB4();
      v126(v125);
      (*(v47 + 8))(v37, v39);
    }
  }

  sub_1C43FBC80();
}

uint64_t sub_1C4D67E9C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7461636964657270 && a2 == 0xE900000000000065;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6C43797469746E65 && a2 == 0xEB00000000737361;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000016 && 0x80000001C4FC7BA0 == a2;
        if (v8 || (sub_1C4F02938() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x696669746E656469 && a2 == 0xEC00000064497265;
          if (v9 || (sub_1C4F02938() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000018 && 0x80000001C4FC7BC0 == a2;
            if (v10 || (sub_1C4F02938() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0x696669746E656469 && a2 == 0xEE00657079547265)
            {

              return 6;
            }

            else
            {
              v12 = sub_1C4F02938();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1C4D680E4(char a1)
{
  result = 0x7461636964657270;
  switch(a1)
  {
    case 1:
      result = 0x6C43797469746E65;
      break;
    case 2:
      result = 0x656372756F73;
      break;
    case 3:
      result = 0xD000000000000016;
      break;
    case 4:
    case 6:
      result = 0x696669746E656469;
      break;
    case 5:
      result = 0xD000000000000018;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1C4D681C8()
{
  sub_1C43FE96C();
  sub_1C440EDD4();
  v2 = sub_1C456902C(&qword_1EC0C6B40, &qword_1C4F704A8);
  sub_1C43FCDF8(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C4402A68();
  sub_1C43FD870();
  sub_1C4D6DCD8();
  sub_1C444FECC();
  sub_1C440F9B8();
  sub_1C4F02BF8();
  sub_1C441D6E4();
  sub_1C4EFEEF8();
  sub_1C442DAA4();
  sub_1C44CD310(v6, v7);
  sub_1C4405570();
  sub_1C4F02778();
  if (!v1)
  {
    v20 = type metadata accessor for BMAppleMusicEventStructs.IdentifierRelationshipType(0);
    v8 = v20[5];
    sub_1C440CE38();
    sub_1C4EFD548();
    sub_1C4420A88();
    sub_1C44CD310(v9, v10);
    sub_1C443F014();
    sub_1C43FCB2C();
    sub_1C4F027E8();
    v11 = v20[6];
    sub_1C4401FFC();
    type metadata accessor for Source();
    sub_1C44014A4();
    sub_1C44CD310(v12, v13);
    sub_1C443F014();
    sub_1C43FCB2C();
    sub_1C4F027E8();
    sub_1C4401958(v20);
    sub_1C4405570();
    sub_1C4F027E8();
    sub_1C440C15C((v0 + v20[8]));
    sub_1C4F02738();
    v14 = v20[9];
    sub_1C4405570();
    sub_1C4F027E8();
    v15 = (v0 + v20[10]);
    v16 = *v15;
    v17 = v15[1];
    sub_1C4402150();
    sub_1C4F02738();
  }

  v18 = sub_1C440231C();
  v19(v18);
  sub_1C43FBC80();
}

void sub_1C4D68430()
{
  sub_1C43FE96C();
  v3 = v2;
  v54 = v4;
  v5 = sub_1C4EFEEF8();
  v6 = sub_1C43FCDF8(v5);
  v56 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBFDC();
  v55 = v10;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FD230();
  v57 = v12;
  v13 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v13);
  v15 = *(v14 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FBC74();
  v58 = v17;
  v18 = sub_1C456902C(&qword_1EC0C6B30, &qword_1C4F704A0);
  v60 = sub_1C43FCDF8(v18);
  v20 = *(v19 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v21);
  sub_1C43FBC74();
  v22 = sub_1C43FBE44();
  v23 = type metadata accessor for BMAppleMusicEventStructs.IdentifierRelationshipType(v22);
  v24 = sub_1C43FBCE0(v23);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  sub_1C43FBCC4();
  sub_1C44058BC();
  sub_1C43FCF64();
  v59 = v5;
  sub_1C440BAA8(v27, v28, v29, v5);
  v30 = v1 + v23[5];
  sub_1C4EFD258();
  v31 = v23[6];
  if (qword_1EDDFD268 != -1)
  {
    sub_1C4404CEC();
  }

  v32 = type metadata accessor for Source();
  sub_1C442B738(v32, &qword_1EDDFD270);
  sub_1C441AB98();
  sub_1C448D2B4(v33, v1 + v31, v34);
  v35 = v23[7];
  sub_1C4EFE558();
  v36 = (v1 + v23[8]);
  *v36 = 0;
  v36[1] = 0;
  v37 = v23[9];
  sub_1C4EFE658();
  v38 = (v1 + v23[10]);
  *v38 = 0;
  v38[1] = 0;
  v39 = v3[4];
  sub_1C4409678(v3, v3[3]);
  sub_1C4D6DCD8();
  sub_1C4F02BC8();
  if (!v0)
  {
    v53 = v36;
    sub_1C442DAA4();
    sub_1C44CD310(v40, v41);
    sub_1C44147D8();
    sub_1C4F02658();
    sub_1C444088C(v58, v1, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C441405C();
    sub_1C44147D8();
    sub_1C4F026C8();
    v42 = *(v56 + 40);
    v42(v1 + v35, v57, v59);
    sub_1C4428F20();
    sub_1C43FE664();
    v43 = sub_1C4F02618();
    sub_1C44147E8(v43, v44, v53);
    sub_1C44147D8();
    sub_1C43FE664();
    sub_1C4F026C8();
    v42(v1 + v37, v55, v59);
    sub_1C440CE58();
    sub_1C43FE664();
    v46 = sub_1C4F02618();
    v48 = v47;
    v49 = sub_1C4416968();
    v50(v49, v60);
    *v38 = v46;
    v38[1] = v48;
    v51 = sub_1C442A548();
    sub_1C448D2B4(v51, v54, v52);
  }

  sub_1C440962C(v3);
  sub_1C442C1D4();
  sub_1C4D6D038(v1, v45);
  sub_1C4403810();
  sub_1C43FBC80();
}

uint64_t sub_1C4D68884@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4D67E9C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4D688AC(uint64_t a1)
{
  v2 = sub_1C4D6DCD8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4D688E8(uint64_t a1)
{
  v2 = sub_1C4D6DCD8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1C4D6896C()
{
  sub_1C43FE628();
  v304 = v1;
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v306 = v7;
  v8 = sub_1C456902C(&qword_1EC0BA6B8, &unk_1C4F70150);
  sub_1C43FBD18(v8);
  v10 = *(v9 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBC74();
  v294 = v12;
  v13 = sub_1C43FBE44();
  v293 = type metadata accessor for BMAppleMusicEventStructs.IdentifierRelationshipType(v13);
  v14 = sub_1C43FBCE0(v293);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FD2D8();
  v295 = v17;
  v18 = sub_1C456902C(&qword_1EC0BA6B0, &unk_1C4F145F0);
  sub_1C43FBD18(v18);
  v20 = *(v19 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v21);
  sub_1C43FBC74();
  v301 = v22;
  v23 = sub_1C43FBE44();
  v300 = type metadata accessor for BMAppleMusicEventStructs.QuantityRelationshipType(v23);
  v24 = sub_1C43FBCE0(v300);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  sub_1C43FD2D8();
  v302 = v27;
  v28 = sub_1C43FBE44();
  v29 = type metadata accessor for EntityTriple(v28);
  v30 = sub_1C43FCDF8(v29);
  v305 = v31;
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v30);
  sub_1C43FBFDC();
  v292 = v34;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v35);
  sub_1C43FBF38();
  v299 = v36;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v37);
  sub_1C43FBF38();
  v298 = v38;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v39);
  sub_1C43FBF38();
  v297 = v40;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v41);
  sub_1C43FBF38();
  v296 = v42;
  sub_1C43FD1D0();
  v44 = MEMORY[0x1EEE9AC00](v43);
  v46 = &v291 - v45;
  MEMORY[0x1EEE9AC00](v44);
  v48 = &v291 - v47;
  v307 = *v4;
  v49 = MEMORY[0x1E69E7CC0];
  v310 = MEMORY[0x1E69E7CC0];
  v50 = type metadata accessor for BMAppleMusicEventStructs.Song(0);
  v51 = (v0 + v50[9]);
  v52 = v51[1];
  v303 = v6;
  if (v52)
  {
    v53 = *v51;
    v54 = HIBYTE(v52) & 0xF;
    if ((v52 & 0x2000000000000000) == 0)
    {
      v54 = v53 & 0xFFFFFFFFFFFFLL;
    }

    if (v54)
    {
      v55 = sub_1C4EFF0C8();
      sub_1C43FCE50(v55);
      (*(v56 + 16))(v48, v0);
      v57 = v50[8];
      v58 = sub_1C4480478();
      sub_1C43FCE50(v58);
      v60 = *(v59 + 16);
      sub_1C43FE790();
      v61();
      v62 = v50[7];
      v63 = v29[9];
      sub_1C441AB98();
      sub_1C448D2B4(v2 + v64, &v48[v65], v66);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EF9AE8();
      v68 = v67;
      v69 = &v48[v29[6]];
      sub_1C4EFF888();
      v70 = &v48[v29[7]];
      sub_1C4EFEC38();
      v71 = &v48[v29[8]];
      *v71 = v53;
      *(v71 + 1) = v52;
      v72 = &v48[v29[10]];
      *v72 = v306;
      *(v72 + 1) = v6;
      *&v48[v29[11]] = v68;
      v48[v29[12]] = v307;
      v73 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4401EC4(v73, v74, v75, MEMORY[0x1E69E7CC0]);
      v49 = v76;
      v78 = *(v76 + 16);
      v77 = *(v76 + 24);
      if (v78 >= v77 >> 1)
      {
        v241 = sub_1C43FCFE8(v77);
        sub_1C44C9240(v241, v78 + 1, 1, v49);
        v49 = v242;
      }

      *(v49 + 16) = v78 + 1;
      sub_1C4417C1C();
      sub_1C440835C();
      sub_1C44DD858(v48, v79, v80);
      v310 = v49;
    }

    else
    {
      v49 = MEMORY[0x1E69E7CC0];
    }
  }

  v81 = (v2 + v50[11]);
  v82 = v81[1];
  if (v82)
  {
    v83 = *v81;
    v84 = HIBYTE(v82) & 0xF;
    if ((v82 & 0x2000000000000000) == 0)
    {
      v84 = v83 & 0xFFFFFFFFFFFFLL;
    }

    if (v84)
    {
      v85 = sub_1C4EFF0C8();
      sub_1C43FCE50(v85);
      (*(v86 + 16))(v46, v2);
      v87 = v50[10];
      v88 = sub_1C4480478();
      sub_1C43FCE50(v88);
      v90 = *(v89 + 16);
      sub_1C43FE790();
      v91();
      v92 = v50[7];
      v93 = v29[9];
      sub_1C441AB98();
      sub_1C448D2B4(v2 + v94, &v46[v95], v96);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EF9AE8();
      v98 = v97;
      v99 = &v46[v29[6]];
      sub_1C4EFF888();
      v100 = &v46[v29[7]];
      sub_1C4EFEC38();
      v101 = &v46[v29[8]];
      *v101 = v83;
      *(v101 + 1) = v82;
      v102 = &v46[v29[10]];
      *v102 = v306;
      *(v102 + 1) = v6;
      *&v46[v29[11]] = v98;
      v46[v29[12]] = v307;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v243 = *(v49 + 16);
        v244 = sub_1C43FCEC0();
        sub_1C44C9240(v244, v245, v246, v49);
        v49 = v247;
      }

      v104 = *(v49 + 16);
      v103 = *(v49 + 24);
      v82 = v104 + 1;
      if (v104 >= v103 >> 1)
      {
        v248 = sub_1C4413F5C(v103);
        sub_1C44C9240(v248, v249, v250, v49);
        v49 = v251;
      }

      *(v49 + 16) = v82;
      sub_1C4417C1C();
      sub_1C440835C();
      sub_1C44DD858(v46, v105, v106);
      v310 = v49;
    }
  }

  v107 = (v2 + v50[13]);
  v108 = v107[1];
  if (v108 && (sub_1C4434384(v107), v109))
  {
    v110 = sub_1C4EFF0C8();
    sub_1C43FCE50(v110);
    v112 = *(v111 + 16);
    v113 = sub_1C4400068();
    v114(v113);
    v115 = v50[12];
    v116 = sub_1C4480478();
    sub_1C43FCE50(v116);
    v118 = *(v117 + 16);
    sub_1C43FE790();
    v119();
    v120 = v50[7];
    v121 = v29[9];
    sub_1C441AB98();
    sub_1C44BBD20(v122, v123);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4EF9AE8();
    sub_1C4461DE4();
    sub_1C4428F30();
    sub_1C445BE50();
    *v124 = v82;
    v124[1] = v108;
    sub_1C4480894();
    v125 = v306;
    *v126 = v306;
    v126[1] = v6;
    sub_1C441BF2C();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v252 = *(v49 + 16);
      v253 = sub_1C43FCEC0();
      sub_1C44C9240(v253, v254, v255, v49);
      v49 = v256;
    }

    v128 = *(v49 + 16);
    v127 = *(v49 + 24);
    if (v128 >= v127 >> 1)
    {
      v257 = sub_1C43FCFE8(v127);
      sub_1C44C9240(v257, v128 + 1, 1, v49);
      v49 = v258;
    }

    *(v49 + 16) = v128 + 1;
    sub_1C4417C1C();
    sub_1C440835C();
    sub_1C44DD858(v296, v129, v130);
    v310 = v49;
  }

  else
  {
    v125 = v306;
  }

  v131 = (v2 + v50[15]);
  v132 = v131[1];
  if (v132)
  {
    sub_1C4434384(v131);
    if (v133)
    {
      v134 = sub_1C4EFF0C8();
      sub_1C43FCE50(v134);
      v136 = *(v135 + 16);
      v137 = sub_1C4400068();
      v138(v137);
      v139 = v50[14];
      v140 = sub_1C4480478();
      sub_1C43FCE50(v140);
      v142 = *(v141 + 16);
      sub_1C43FE790();
      v143();
      v144 = v50[7];
      v145 = v29[9];
      sub_1C441AB98();
      sub_1C44BBD20(v146, v147);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EF9AE8();
      sub_1C4461DE4();
      sub_1C4428F30();
      sub_1C445BE50();
      *v148 = v125;
      v148[1] = v132;
      sub_1C4480894();
      v125 = v306;
      *v149 = v306;
      v149[1] = v6;
      sub_1C441BF2C();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v259 = *(v49 + 16);
        v260 = sub_1C43FCEC0();
        sub_1C44C9240(v260, v261, v262, v49);
        v49 = v263;
      }

      v151 = *(v49 + 16);
      v150 = *(v49 + 24);
      v132 = v151 + 1;
      if (v151 >= v150 >> 1)
      {
        v264 = sub_1C43FCFE8(v150);
        sub_1C44C9240(v264, v151 + 1, 1, v49);
        v49 = v265;
      }

      *(v49 + 16) = v132;
      sub_1C4417C1C();
      sub_1C440835C();
      sub_1C44DD858(v297, v152, v153);
      v310 = v49;
    }

    else
    {
      v125 = v306;
    }
  }

  v154 = (v2 + v50[17]);
  v155 = v154[1];
  if (v155)
  {
    sub_1C44026DC(v154);
    if (v156)
    {
      v157 = sub_1C4EFF0C8();
      sub_1C43FCE50(v157);
      v159 = *(v158 + 16);
      v160 = v298;
      v161 = sub_1C4400068();
      v162(v161);
      v163 = v50[16];
      v164 = sub_1C4480478();
      sub_1C43FCE50(v164);
      v166 = v160 + v6;
      v6 = v303;
      v167 = v2 + v163;
      v125 = v306;
      (*(v165 + 16))(v166, v167);
      v168 = v50[7];
      v169 = v29[9];
      sub_1C441AB98();
      sub_1C44BBD20(v170, v171);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EF9AE8();
      sub_1C4461DE4();
      sub_1C4428F30();
      sub_1C445BE50();
      *v172 = v132;
      v172[1] = v155;
      sub_1C4480894();
      *v173 = v125;
      v173[1] = v6;
      sub_1C441BF2C();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v266 = *(v49 + 16);
        v267 = sub_1C43FCEC0();
        sub_1C44C9240(v267, v268, v269, v49);
        v49 = v270;
      }

      sub_1C4414030();
      if (v175)
      {
        v271 = sub_1C43FFD98(v174);
        sub_1C44C9240(v271, v272, v273, v49);
        v49 = v274;
      }

      *(v49 + 16) = v155;
      sub_1C4417C1C();
      sub_1C440835C();
      sub_1C44DD858(v298, v176, v177);
      v310 = v49;
    }
  }

  v178 = (v2 + v50[19]);
  v179 = v178[1];
  if (v179)
  {
    sub_1C44026DC(v178);
    if (v180)
    {
      v181 = sub_1C4EFF0C8();
      sub_1C43FCE50(v181);
      v183 = *(v182 + 16);
      v184 = v50;
      v185 = v299;
      v186 = sub_1C4400068();
      v187(v186);
      v188 = v50[18];
      v189 = sub_1C4480478();
      sub_1C43FCE50(v189);
      v191 = v185 + v6;
      v6 = v303;
      v192 = v2 + v188;
      v193 = v306;
      (*(v190 + 16))(v191, v192);
      v298 = v184;
      v194 = *(v184 + 28);
      v125 = v193;
      v195 = v29[9];
      sub_1C441AB98();
      sub_1C44BBD20(v196, v197);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EF9AE8();
      sub_1C4461DE4();
      sub_1C4428F30();
      sub_1C445BE50();
      *v198 = v132;
      v198[1] = v179;
      sub_1C4480894();
      *v199 = v193;
      v199[1] = v6;
      sub_1C441BF2C();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v275 = *(v49 + 16);
        v276 = sub_1C43FCEC0();
        sub_1C44C9240(v276, v277, v278, v49);
        v49 = v279;
      }

      sub_1C4414030();
      v50 = v298;
      if (v175)
      {
        v280 = sub_1C43FFD98(v200);
        sub_1C44C9240(v280, v281, v282, v49);
        v49 = v283;
      }

      *(v49 + 16) = v179;
      sub_1C4417C1C();
      sub_1C440835C();
      sub_1C44DD858(v299, v201, v202);
      v310 = v49;
    }
  }

  v203 = v301;
  sub_1C445FFA8(v2 + v50[20], v301, &qword_1EC0BA6B0, &unk_1C4F145F0);
  sub_1C440175C(v203, 1, v300);
  v204 = v302;
  if (v205)
  {
    sub_1C4420C3C(v203, &qword_1EC0BA6B0, &unk_1C4F145F0);
  }

  else
  {
    sub_1C44DD858(v203, v302, type metadata accessor for BMAppleMusicEventStructs.QuantityRelationshipType);
    v308 = v307;
    sub_1C4485E00();
    v206 = v304;
    sub_1C4D666D4();
    v304 = v206;
    if (v206)
    {
      sub_1C4406354();
      sub_1C4D6D038(v204, v208);

      goto LABEL_66;
    }

    sub_1C49D3614(v207);
    sub_1C4406354();
    sub_1C4D6D038(v204, v209);
  }

  v210 = v294;
  sub_1C445FFA8(v2 + v50[21], v294, &qword_1EC0BA6B8, &unk_1C4F70150);
  sub_1C440175C(v210, 1, v293);
  v211 = v295;
  v212 = v304;
  if (v205)
  {
    sub_1C4420C3C(v210, &qword_1EC0BA6B8, &unk_1C4F70150);
  }

  else
  {
    sub_1C44DD858(v210, v295, type metadata accessor for BMAppleMusicEventStructs.IdentifierRelationshipType);
    v309 = v307;
    sub_1C4485E00();
    sub_1C4D67660();
    if (v212)
    {
      sub_1C442C1D4();
      sub_1C4D6D038(v211, v214);

      goto LABEL_66;
    }

    sub_1C49D3614(v213);
    sub_1C442C1D4();
    sub_1C4D6D038(v211, v215);
  }

  v216 = v310;
  if (*(v310 + 16))
  {
    v304 = v212;
    v217 = sub_1C4EFF0C8();
    sub_1C43FCE50(v217);
    v219 = *(v218 + 16);
    v220 = v292;
    v221 = sub_1C4400068();
    v222(v221);
    v223 = v220 + v29[5];
    sub_1C4EFEBB8();
    v224 = v2 + v50[6];
    v225 = sub_1C4EFD2F8();
    v226 = v125;
    v228 = v227;
    v229 = v50[7];
    v230 = v29[9];
    sub_1C441AB98();
    sub_1C44BBD20(v231, v232);
    sub_1C4EF9AE8();
    sub_1C4461DE4();
    sub_1C4428F30();
    sub_1C445BE50();
    *v233 = v225;
    v233[1] = v228;
    sub_1C4480894();
    *v234 = v226;
    v234[1] = v6;
    sub_1C441BF2C();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v284 = *(v216 + 16);
      v285 = sub_1C43FCEC0();
      sub_1C44C9240(v285, v286, v287, v216);
      v216 = v288;
    }

    v236 = *(v216 + 16);
    v235 = *(v216 + 24);
    if (v236 >= v235 >> 1)
    {
      v289 = sub_1C43FCFE8(v235);
      sub_1C44C9240(v289, v236 + 1, 1, v216);
      v216 = v290;
    }

    *(v216 + 16) = v236 + 1;
    sub_1C43FBF6C();
    v238 = *(v237 + 72);
    sub_1C440835C();
    sub_1C44DD858(v292, v239, v240);
  }

LABEL_66:
  sub_1C44109F8();
}

uint64_t sub_1C4D695D0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x80000001C4F855E0 == a2;
  if (v3 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7461636964657270 && a2 == 0xE900000000000065;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6C43797469746E65 && a2 == 0xEB00000000737361;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
        if (v8 || (sub_1C4F02938() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6572705F656D616ELL && a2 == 0xEE00657461636964;
          if (v9 || (sub_1C4F02938() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 1701667182 && a2 == 0xE400000000000000;
            if (v10 || (sub_1C4F02938() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x72705F65726E6567 && a2 == 0xEF65746163696465;
              if (v11 || (sub_1C4F02938() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x65726E6567 && a2 == 0xE500000000000000;
                if (v12 || (sub_1C4F02938() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD000000000000014 && 0x80000001C4FC7C00 == a2;
                  if (v13 || (sub_1C4F02938() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x614E747369747261 && a2 == 0xEA0000000000656DLL;
                    if (v14 || (sub_1C4F02938() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0xD00000000000001ALL && 0x80000001C4FC7C20 == a2;
                      if (v15 || (sub_1C4F02938() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0xD000000000000010 && 0x80000001C4FC7C40 == a2;
                        if (v16 || (sub_1C4F02938() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0xD000000000000019 && 0x80000001C4FC7C60 == a2;
                          if (v17 || (sub_1C4F02938() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0x6564496D75626C61 && a2 == 0xEF7265696669746ELL;
                            if (v18 || (sub_1C4F02938() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0xD000000000000013 && 0x80000001C4FC7C80 == a2;
                              if (v19 || (sub_1C4F02938() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0x6D614E6D75626C61 && a2 == 0xE900000000000065;
                                if (v20 || (sub_1C4F02938() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v21 = a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000;
                                  if (v21 || (sub_1C4F02938() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265)
                                  {

                                    return 17;
                                  }

                                  else
                                  {
                                    v23 = sub_1C4F02938();

                                    if (v23)
                                    {
                                      return 17;
                                    }

                                    else
                                    {
                                      return 18;
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
      }
    }
  }
}

unint64_t sub_1C4D69B48(char a1)
{
  result = 0x7461636964657270;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x6C43797469746E65;
      break;
    case 3:
      result = 0x656372756F73;
      break;
    case 4:
      result = 0x6572705F656D616ELL;
      break;
    case 5:
      result = 1701667182;
      break;
    case 6:
      result = 0x72705F65726E6567;
      break;
    case 7:
      result = 0x65726E6567;
      break;
    case 8:
      result = 0xD000000000000014;
      break;
    case 9:
      result = 0x614E747369747261;
      break;
    case 10:
      v3 = 10;
      goto LABEL_19;
    case 11:
      result = 0xD000000000000010;
      break;
    case 12:
      v3 = 9;
LABEL_19:
      result = v3 | 0xD000000000000010;
      break;
    case 13:
      result = 0x6564496D75626C61;
      break;
    case 14:
      result = 0xD000000000000013;
      break;
    case 15:
      result = 0x6D614E6D75626C61;
      break;
    case 16:
      result = 0x6E6F697461727564;
      break;
    case 17:
      result = 0x696669746E656469;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

void sub_1C4D69D60()
{
  sub_1C43FE96C();
  v2 = sub_1C456902C(&qword_1EC0C6B70, &qword_1C4F704C8);
  sub_1C43FCDF8(v2);
  v4 = v3;
  v6 = *(v5 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C44058BC();
  sub_1C43FD870();
  sub_1C4D6DD80();
  sub_1C440F9B8();
  sub_1C4F02BF8();
  sub_1C441D6E4();
  sub_1C4EFF0C8();
  sub_1C43FF970();
  sub_1C44CD310(v8, v9);
  sub_1C43FE6CC();
  sub_1C4F027E8();
  if (!v0)
  {
    v10 = type metadata accessor for BMAppleMusicEventStructs.Song(0);
    v11 = v10[5];
    sub_1C4424DE8(1);
    sub_1C4EFEEF8();
    sub_1C442DAA4();
    sub_1C44CD310(v12, v13);
    sub_1C4417C38();
    sub_1C4F02778();
    v14 = v10[6];
    sub_1C4424DE8(2);
    sub_1C4EFD548();
    sub_1C4420A88();
    sub_1C44CD310(v15, v16);
    sub_1C4425608();
    sub_1C4F027E8();
    v17 = v10[7];
    sub_1C4424DE8(3);
    type metadata accessor for Source();
    sub_1C44014A4();
    sub_1C44CD310(v18, v19);
    sub_1C4425608();
    sub_1C4F027E8();
    sub_1C4405584(v10[8]);
    sub_1C440A38C();
    sub_1C4F027E8();
    sub_1C4401774(v10[9]);
    sub_1C44151C4(5);
    v20 = v10[10];
    sub_1C4417C38();
    sub_1C4F027E8();
    sub_1C4401774(v10[11]);
    sub_1C44151C4(7);
    v21 = v10[12];
    sub_1C4417C38();
    sub_1C4F027E8();
    sub_1C4401774(v10[13]);
    sub_1C44151C4(9);
    v22 = v10[14];
    sub_1C4417C38();
    sub_1C4F027E8();
    sub_1C4401774(v10[15]);
    sub_1C44151C4(11);
    sub_1C4405584(v10[16]);
    sub_1C440A38C();
    sub_1C4F027E8();
    sub_1C4401774(v10[17]);
    sub_1C44151C4(13);
    sub_1C4405584(v10[18]);
    sub_1C440A38C();
    sub_1C4F027E8();
    sub_1C4401774(v10[19]);
    sub_1C44151C4(15);
    v23 = v10[20];
    v24 = sub_1C4424DE8(16);
    type metadata accessor for BMAppleMusicEventStructs.QuantityRelationshipType(v24);
    sub_1C443F8AC();
    sub_1C44CD310(v25, v26);
    sub_1C4425608();
    sub_1C4F02778();
    v27 = v10[21];
    v28 = sub_1C4424DE8(17);
    type metadata accessor for BMAppleMusicEventStructs.IdentifierRelationshipType(v28);
    sub_1C4418634();
    sub_1C44CD310(v29, v30);
    sub_1C4425608();
    sub_1C4F02778();
  }

  (*(v4 + 8))(v1, v2);
  sub_1C4403810();
  sub_1C43FBC80();
}

void sub_1C4D6A18C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FE96C();
  a19 = v22;
  a20 = v23;
  v25 = v24;
  v123 = v26;
  v27 = sub_1C456902C(&qword_1EC0BA6B8, &unk_1C4F70150);
  sub_1C43FBD18(v27);
  v29 = *(v28 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v30);
  sub_1C43FBC74();
  v124 = v31;
  v32 = sub_1C456902C(&qword_1EC0BA6B0, &unk_1C4F145F0);
  sub_1C43FBD18(v32);
  v34 = *(v33 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v35);
  sub_1C43FBC74();
  v125 = v36;
  sub_1C43FBE44();
  v37 = sub_1C4EFEEF8();
  v38 = sub_1C43FCDF8(v37);
  v144 = v39;
  v41 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v38);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v42);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v43);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v44);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v45);
  sub_1C43FBF38();
  v132 = v46;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v47);
  sub_1C43FD230();
  v133 = v48;
  v49 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v49);
  v51 = *(v50 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v52);
  sub_1C43FBC74();
  v134 = v53;
  sub_1C43FBE44();
  v54 = sub_1C4EFF0C8();
  v55 = sub_1C43FCDF8(v54);
  v131 = v56;
  v58 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v55);
  sub_1C43FBCC4();
  sub_1C4422BD8();
  v130 = sub_1C456902C(&qword_1EC0C6B60, &qword_1C4F704C0);
  sub_1C43FCDF8(v130);
  v60 = *(v59 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v61);
  sub_1C4402A68();
  v62 = type metadata accessor for BMAppleMusicEventStructs.Song(0);
  v63 = sub_1C43FBCE0(v62);
  v65 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v63);
  sub_1C43FBCC4();
  sub_1C44058BC();
  v146 = *(v66 + 20);
  v147 = v37;
  sub_1C43FCF64();
  sub_1C440BAA8(v67, v68, v69, v37);
  v137 = v62[6];
  sub_1C4EFD3E8();
  v70 = v62[7];
  if (qword_1EDDFD268 != -1)
  {
    sub_1C4404CEC();
  }

  v71 = type metadata accessor for Source();
  sub_1C442B738(v71, &qword_1EDDFD270);
  sub_1C441AB98();
  v138 = v70;
  sub_1C448D2B4(v72, v21 + v70, v73);
  v145 = v62[8];
  sub_1C4EFEBF8();
  v143 = v62[10];
  sub_1C4EFEC48();
  v142 = v62[12];
  sub_1C4EFE298();
  v141 = v62[14];
  sub_1C4EFE768();
  v140 = v62[16];
  sub_1C4EFE718();
  v139 = v62[18];
  sub_1C4EFEE28();
  v74 = v62[20];
  v75 = type metadata accessor for BMAppleMusicEventStructs.QuantityRelationshipType(0);
  v135 = v74;
  sub_1C43FCF64();
  sub_1C440BAA8(v76, v77, v78, v75);
  v79 = v62[21];
  v80 = type metadata accessor for BMAppleMusicEventStructs.IdentifierRelationshipType(0);
  v136 = v79;
  sub_1C43FCF64();
  sub_1C440BAA8(v81, v82, v83, v80);
  v84 = v25[4];
  sub_1C4409678(v25, v25[3]);
  sub_1C4D6DD80();
  sub_1C444FECC();
  sub_1C4F02BC8();
  if (v20)
  {
    sub_1C440962C(v25);
    sub_1C4420C3C(v21 + v146, &qword_1EC0B9A08, &unk_1C4F107B0);
    v87 = sub_1C4EFD548();
    sub_1C43FBCE0(v87);
    (*(v88 + 8))(v21 + v137);
    sub_1C4411564();
    sub_1C4D6D038(v21 + v138, v89);
    v90 = *(v144 + 8);
    v91 = sub_1C443E494(v145);
    v90(v91);

    v92 = sub_1C443E494(v143);
    v90(v92);

    v93 = sub_1C443E494(v142);
    v90(v93);

    v94 = sub_1C443E494(v141);
    v90(v94);

    v95 = sub_1C443E494(v140);
    v90(v95);

    v96 = sub_1C443E494(v139);
    v90(v96);

    sub_1C4420C3C(v21 + v135, &qword_1EC0BA6B0, &unk_1C4F145F0);
    sub_1C4420C3C(v21 + v136, &qword_1EC0BA6B8, &unk_1C4F70150);
  }

  else
  {
    sub_1C43FF970();
    sub_1C44CD310(v85, v86);
    sub_1C43FE6CC();
    sub_1C4F026C8();
    v97 = sub_1C447553C(v131);
    v98(v97);
    sub_1C442DAA4();
    sub_1C44CD310(v99, v100);
    sub_1C4F02658();
    sub_1C444088C(v134, v21 + v146, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C441599C(4);
    sub_1C4F026C8();
    v101 = *(v144 + 40);
    v101(v21 + v145, v133, v147);
    sub_1C443500C(5);
    v102 = sub_1C4F02618();
    sub_1C44160B4(v102, v103, v62[9]);
    sub_1C441599C(6);
    sub_1C4D6E9D4();
    sub_1C4F026C8();
    v101(v21 + v143, v132, v147);
    sub_1C443500C(7);
    v104 = sub_1C4F02618();
    sub_1C44160B4(v104, v105, v62[11]);
    sub_1C441599C(8);
    sub_1C4D6E9D4();
    sub_1C4F026C8();
    v101(v21 + v142, v129, v147);
    sub_1C443500C(9);
    v106 = sub_1C4F02618();
    sub_1C44160B4(v106, v107, v62[13]);
    sub_1C441599C(10);
    sub_1C4D6E9D4();
    sub_1C4F026C8();
    v101(v21 + v141, v128, v147);
    sub_1C443500C(11);
    v108 = sub_1C4F02618();
    sub_1C44160B4(v108, v109, v62[15]);
    sub_1C441599C(12);
    sub_1C442A564(&a15);
    v101(v21 + v140, v127, v147);
    sub_1C443500C(13);
    sub_1C444AE84();
    v110 = sub_1C4F02618();
    sub_1C44160B4(v110, v111, v62[17]);
    sub_1C441599C(14);
    sub_1C442A564(&a14);
    v101(v21 + v139, v126, v147);
    sub_1C443500C(15);
    sub_1C444AE84();
    v112 = sub_1C4F02618();
    sub_1C44160B4(v112, v113, v62[19]);
    sub_1C443F8AC();
    sub_1C44CD310(v114, v115);
    sub_1C43FE6CC();
    sub_1C444AE84();
    sub_1C4F02658();
    sub_1C444088C(v125, v21 + v135, &qword_1EC0BA6B0, &unk_1C4F145F0);
    sub_1C4418634();
    sub_1C44CD310(v116, v117);
    sub_1C43FE6CC();
    sub_1C444AE84();
    sub_1C4F02658();
    v118 = sub_1C441D068();
    v119(v118);
    sub_1C444088C(v124, v21 + v136, &qword_1EC0BA6B8, &unk_1C4F70150);
    v120 = sub_1C442A548();
    sub_1C448D2B4(v120, v123, v121);
    sub_1C440962C(v25);
    sub_1C440FFA0();
    sub_1C4D6D038(v21, v122);
  }

  sub_1C43FBC80();
}

uint64_t sub_1C4D6AD80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4D695D0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4D6ADA8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C4D69B40();
  *a1 = result;
  return result;
}

uint64_t sub_1C4D6ADD0(uint64_t a1)
{
  v2 = sub_1C4D6DD80();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4D6AE0C(uint64_t a1)
{
  v2 = sub_1C4D6DD80();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1C4D6AE90()
{
  sub_1C43FE628();
  v163 = v4;
  v164 = v1;
  v169 = v5;
  v153 = v6;
  v165 = v7;
  v8 = sub_1C4EFF0C8();
  v9 = sub_1C43FCDF8(v8);
  v158 = v10;
  v159 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FD2D8();
  v148 = v13;
  v14 = sub_1C43FBE44();
  v15 = type metadata accessor for EntityTriple(v14);
  v154 = sub_1C43FCDF8(v15);
  v155 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v154);
  sub_1C43FBFDC();
  v157 = v19;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v20);
  sub_1C43FD230();
  v149 = v21;
  v22 = sub_1C456902C(&qword_1EC0BA6A8, &qword_1C4F145E8);
  sub_1C43FBD18(v22);
  v24 = *(v23 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v25);
  sub_1C43FBC74();
  v162 = v26;
  v27 = sub_1C43FBE44();
  v166 = type metadata accessor for BMAppleMusicEventStructs.Song(v27);
  v28 = sub_1C43FBCE0(v166);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  sub_1C43FD2D8();
  v156 = v31;
  sub_1C43FBE44();
  v32 = sub_1C4EFD548();
  v33 = sub_1C43FCDF8(v32);
  v160 = v34;
  v161 = v33;
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v33);
  sub_1C43FBCC4();
  sub_1C43FECFC();
  v37 = sub_1C4EFF8A8();
  v38 = sub_1C43FCDF8(v37);
  v167 = v39;
  v168 = v38;
  v41 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v38);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v42);
  v44 = &v143 - v43;
  v45 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  v46 = sub_1C43FBD18(v45);
  v48 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v46);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v49);
  sub_1C440D100();
  v50 = sub_1C4EFEEF8();
  v51 = sub_1C43FCDF8(v50);
  v53 = v52;
  v55 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v51);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v56);
  v58 = &v143 - v57;
  LODWORD(v169) = *v169;
  sub_1C445FFA8(v0, v3, &qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C440175C(v3, 1, v50);
  if (v68)
  {
    sub_1C4420C3C(v3, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C45CF650();
    v59 = sub_1C43FFB2C();
    sub_1C4414040(v59, v60);
LABEL_25:
    sub_1C44109F8();
    return;
  }

  v151 = v58;
  v152 = v53;
  v61 = *(v53 + 32);
  v62 = sub_1C440DE18();
  v150 = v50;
  v61(v62);
  v63 = type metadata accessor for BMAppleMusicEventStructs.SongRelationshipType(0);
  v64 = *(v160 + 16);
  v144 = *(v63 + 20);
  v64(v2, v0 + v144, v161);
  v161 = v44;
  sub_1C4EFF838();
  v171 = MEMORY[0x1E69E7CC0];
  v160 = v63;
  v65 = v0;
  v66 = v0 + *(v63 + 28);
  v67 = v162;
  sub_1C445FFA8(v66, v162, &qword_1EC0BA6A8, &qword_1C4F145E8);
  sub_1C440175C(v67, 1, v166);
  if (v68)
  {
    sub_1C4420C3C(v67, &qword_1EC0BA6A8, &qword_1C4F145E8);
    v69 = MEMORY[0x1E69E7CC0];
    v75 = v163;
    v70 = v157;
    v71 = v168;
    v72 = v150;
    goto LABEL_18;
  }

  v73 = v156;
  sub_1C44DD858(v67, v156, type metadata accessor for BMAppleMusicEventStructs.Song);
  v170 = v169;
  v74 = v164;
  v75 = v163;
  sub_1C4D6896C();
  if (v74)
  {
    sub_1C440FFA0();
    sub_1C4D6D038(v73, v77);
    (*(v167 + 8))(v161, v168);
    (*(v152 + 8))(v151, v150);
    goto LABEL_25;
  }

  v72 = v150;
  if (!*(v76 + 16))
  {
    sub_1C440FFA0();
    sub_1C4D6D038(v73, v101);

    v69 = MEMORY[0x1E69E7CC0];
    v70 = v157;
LABEL_17:
    v71 = v168;
LABEL_18:
    if (*(v69 + 16))
    {
      (*(v158 + 16))(v70, v153, v159);
      v102 = v154;
      v103 = sub_1C4401940(*(v154 + 20));
      v104(v103);
      v105 = sub_1C4401940(v102[6]);
      v106(v105, v161, v71);
      v107 = v70 + v102[7];
      sub_1C4EFEBB8();
      v108 = sub_1C4EFD2F8();
      v110 = v109;
      v111 = *(v160 + 24);
      v112 = v102[9];
      sub_1C441AB98();
      sub_1C448D2B4(v65 + v113, v70 + v114, v115);
      sub_1C4EF9AE8();
      v116 = (v70 + v102[8]);
      *v116 = v108;
      v116[1] = v110;
      v117 = (v70 + v102[10]);
      *v117 = v165;
      v117[1] = v75;
      *(v70 + v102[11]) = v118;
      *(v70 + v102[12]) = v169;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v129 = *(v69 + 16);
        v130 = sub_1C43FCEC0();
        sub_1C44C9240(v130, v131, v132, v69);
        v69 = v133;
      }

      v120 = *(v69 + 16);
      v119 = *(v69 + 24);
      v122 = v151;
      v121 = v152;
      if (v120 >= v119 >> 1)
      {
        v134 = sub_1C43FCFE8(v119);
        sub_1C44C9240(v134, v120 + 1, 1, v69);
        v69 = v135;
      }

      v123 = sub_1C43FE5EC();
      v124(v123);
      (*(v121 + 8))(v122, v150);
      *(v69 + 16) = v120 + 1;
      sub_1C43FBF6C();
      v126 = *(v125 + 72);
      sub_1C440835C();
      sub_1C44DD858(v70, v127, v128);
    }

    else
    {
      (*(v167 + 8))(v161, v71, v159);
      (*(v152 + 8))(v151, v72);
    }

    goto LABEL_25;
  }

  v78 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C49D3614(v78);
  (*(v158 + 16))(v148, v153, v159);
  (*(v152 + 16))(v145, v151, v72);
  (*(v167 + 16))(v147, v161, v168);
  v79 = v146;
  sub_1C445FFA8(v73 + *(v166 + 20), v146, &qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C440175C(v79, 1, v72);
  if (!v68)
  {

    v166 = sub_1C4EFF048();
    v81 = v80;
    v82 = *(v160 + 24);
    v83 = v154;
    v84 = *(v154 + 36);
    sub_1C441AB98();
    v86 = v149;
    sub_1C448D2B4(v65 + v85, v149 + v87, v88);
    sub_1C4EF9AE8();
    v90 = v89;
    (*(v158 + 32))(v86, v148, v159);
    (v61)(v86 + v83[5], v145, v72);
    (*(v167 + 32))(v86 + v83[6], v147, v168);
    (v61)(v86 + v83[7], v146, v72);
    v91 = (v86 + v83[8]);
    v92 = v165;
    *v91 = v166;
    v91[1] = v81;
    v93 = (v86 + v83[10]);
    *v93 = v92;
    v93[1] = v75;
    *(v86 + v83[11]) = v90;
    *(v86 + v83[12]) = v169;
    v69 = v171;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v136 = *(v69 + 16);
      v137 = sub_1C43FCEC0();
      sub_1C44C9240(v137, v138, v139, v69);
      v69 = v140;
    }

    v70 = v157;
    v95 = *(v69 + 16);
    v94 = *(v69 + 24);
    if (v95 >= v94 >> 1)
    {
      v141 = sub_1C43FCFE8(v94);
      sub_1C44C9240(v141, v95 + 1, 1, v69);
      v69 = v142;
    }

    sub_1C440FFA0();
    sub_1C4D6D038(v156, v96);
    *(v69 + 16) = v95 + 1;
    sub_1C43FBF6C();
    v98 = *(v97 + 72);
    sub_1C440835C();
    sub_1C44DD858(v149, v99, v100);
    goto LABEL_17;
  }

  __break(1u);
}

uint64_t sub_1C4D6B818(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7461636964657270 && a2 == 0xE900000000000065;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6C43797469746E65 && a2 == 0xEB00000000737361;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x6E656449676E6F73 && a2 == 0xEE00726569666974)
      {

        return 3;
      }

      else
      {
        v9 = sub_1C4F02938();

        if (v9)
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

uint64_t sub_1C4D6B980(char a1)
{
  result = 0x7461636964657270;
  switch(a1)
  {
    case 1:
      result = 0x6C43797469746E65;
      break;
    case 2:
      result = 0x656372756F73;
      break;
    case 3:
      result = 0x6E656449676E6F73;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C4D6BA18()
{
  sub_1C440EDD4();
  v2 = sub_1C456902C(&qword_1EC0C6B88, &qword_1C4F704D8);
  sub_1C43FCDF8(v2);
  v4 = v3;
  v6 = *(v5 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C4402A68();
  sub_1C43FD870();
  sub_1C4D6DDD4();
  sub_1C444FECC();
  sub_1C440F9B8();
  sub_1C4F02BF8();
  sub_1C441D6E4();
  sub_1C4EFEEF8();
  sub_1C442DAA4();
  sub_1C44CD310(v8, v9);
  sub_1C43FE6CC();
  sub_1C43FCB2C();
  sub_1C4F02778();
  if (!v0)
  {
    v10 = type metadata accessor for BMAppleMusicEventStructs.SongRelationshipType(0);
    v11 = v10[5];
    sub_1C440CE38();
    sub_1C4EFD548();
    sub_1C4420A88();
    sub_1C44CD310(v12, v13);
    sub_1C43FCB2C();
    sub_1C4F027E8();
    v14 = v10[6];
    sub_1C4401FFC();
    type metadata accessor for Source();
    sub_1C44014A4();
    sub_1C44CD310(v15, v16);
    sub_1C43FCB2C();
    sub_1C4F027E8();
    v17 = v10[7];
    type metadata accessor for BMAppleMusicEventStructs.Song(0);
    sub_1C441DF40();
    sub_1C44CD310(v18, v19);
    sub_1C4416C08();
    sub_1C43FCB2C();
    sub_1C4F02778();
  }

  return (*(v4 + 8))(v1, v2);
}

void sub_1C4D6BC40()
{
  sub_1C43FE96C();
  v3 = v2;
  v47 = v4;
  v5 = sub_1C456902C(&qword_1EC0BA6A8, &qword_1C4F145E8);
  sub_1C43FBD18(v5);
  v7 = *(v6 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBC74();
  v48 = v9;
  v10 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v10);
  v12 = *(v11 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBC74();
  v49 = v14;
  v15 = sub_1C456902C(&qword_1EC0C6B78, &qword_1C4F704D0);
  sub_1C43FCDF8(v15);
  v50 = v16;
  v18 = *(v17 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v19);
  v20 = type metadata accessor for BMAppleMusicEventStructs.SongRelationshipType(0);
  v21 = sub_1C43FBCE0(v20);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  sub_1C43FBCC4();
  sub_1C440DED0();
  v24 = sub_1C4EFEEF8();
  sub_1C43FCF64();
  sub_1C440BAA8(v25, v26, v27, v24);
  v28 = v1 + v20[5];
  sub_1C4EFD178();
  v29 = v20[6];
  if (qword_1EDDFD268 != -1)
  {
    sub_1C4404CEC();
  }

  v30 = type metadata accessor for Source();
  sub_1C442B738(v30, &qword_1EDDFD270);
  sub_1C441AB98();
  sub_1C448D2B4(v31, v1 + v29, v32);
  v33 = v20[7];
  v34 = type metadata accessor for BMAppleMusicEventStructs.Song(0);
  sub_1C43FCF64();
  sub_1C440BAA8(v35, v36, v37, v34);
  v38 = v3[4];
  sub_1C4409678(v3, v3[3]);
  sub_1C4D6DDD4();
  sub_1C4F02BC8();
  if (!v0)
  {
    sub_1C442DAA4();
    sub_1C44CD310(v39, v40);
    sub_1C43FE6CC();
    sub_1C4F02658();
    sub_1C444088C(v49, v1, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C441DF40();
    sub_1C44CD310(v41, v42);
    sub_1C4F02658();
    v43 = *(v50 + 8);
    v44 = sub_1C43FD018();
    v45(v44);
    sub_1C444088C(v48, v1 + v33, &qword_1EC0BA6A8, &qword_1C4F145E8);
    sub_1C448D2B4(v1, v47, type metadata accessor for BMAppleMusicEventStructs.SongRelationshipType);
  }

  sub_1C440962C(v3);
  sub_1C442E76C();
  sub_1C4D6D038(v1, v46);
  sub_1C43FBC80();
}

uint64_t sub_1C4D6BFE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4D6B818(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4D6C00C(uint64_t a1)
{
  v2 = sub_1C4D6DDD4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4D6C048(uint64_t a1)
{
  v2 = sub_1C4D6DDD4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4D6C0CC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x80000001C4F855E0 == a2;
  if (v3 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7461636964657270 && a2 == 0xE900000000000065;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6C43797469746E65 && a2 == 0xEB00000000737361;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
        if (v8 || (sub_1C4F02938() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000010 && 0x80000001C4FC7B80 == a2;
          if (v9 || (sub_1C4F02938() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x737574617473 && a2 == 0xE600000000000000;
            if (v10 || (sub_1C4F02938() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x65746144736168 && a2 == 0xE700000000000000;
              if (v11 || (sub_1C4F02938() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0x676E6F53736168 && a2 == 0xE700000000000000)
              {

                return 7;
              }

              else
              {
                v13 = sub_1C4F02938();

                if (v13)
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

unint64_t sub_1C4D6C358(char a1)
{
  result = 0x7461636964657270;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x6C43797469746E65;
      break;
    case 3:
      result = 0x656372756F73;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0x737574617473;
      break;
    case 6:
      result = 0x65746144736168;
      break;
    case 7:
      result = 0x676E6F53736168;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

void sub_1C4D6C440()
{
  sub_1C43FE96C();
  sub_1C440EDD4();
  v2 = sub_1C456902C(&qword_1EC0C6B28, &qword_1C4F70498);
  sub_1C43FCDF8(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C4402A68();
  sub_1C43FD870();
  sub_1C4D6DC84();
  sub_1C444FECC();
  sub_1C440F9B8();
  sub_1C4F02BF8();
  sub_1C441D6E4();
  sub_1C4EFF0C8();
  sub_1C43FF970();
  sub_1C44CD310(v6, v7);
  sub_1C43FE6CC();
  sub_1C43FCB2C();
  sub_1C4F027E8();
  if (!v0)
  {
    v8 = type metadata accessor for BMAppleMusicEventStructs.Event(0);
    v9 = *(v8 + 20);
    sub_1C440CE38();
    sub_1C4EFEEF8();
    sub_1C442DAA4();
    sub_1C44CD310(v10, v11);
    sub_1C4402150();
    sub_1C4F02778();
    v30 = v8;
    v12 = *(v8 + 24);
    sub_1C4401FFC();
    sub_1C4EFD548();
    sub_1C4420A88();
    sub_1C44CD310(v13, v14);
    sub_1C4416C08();
    sub_1C43FCB2C();
    sub_1C4F027E8();
    v15 = v30[7];
    type metadata accessor for Source();
    sub_1C44014A4();
    sub_1C44CD310(v16, v17);
    sub_1C4416C08();
    sub_1C43FCB2C();
    sub_1C4F027E8();
    v18 = v30[8];
    sub_1C4402150();
    sub_1C4F027E8();
    v19 = (v1 + v30[9]);
    v20 = *v19;
    v21 = v19[1];
    sub_1C4402150();
    sub_1C4F02738();
    v22 = v30[10];
    type metadata accessor for BMAppleMusicEventStructs.DateRelationshipType(0);
    sub_1C441B1C8();
    sub_1C44CD310(v23, v24);
    sub_1C4416C08();
    sub_1C43FCB2C();
    sub_1C4F02778();
    v25 = v30[11];
    type metadata accessor for BMAppleMusicEventStructs.SongRelationshipType(0);
    sub_1C443436C();
    sub_1C44CD310(v26, v27);
    sub_1C4416C08();
    sub_1C43FCB2C();
    sub_1C4F02778();
  }

  v28 = sub_1C440231C();
  v29(v28);
  sub_1C43FBC80();
}

void sub_1C4D6C774()
{
  sub_1C43FE96C();
  v3 = v2;
  v79 = v4;
  v5 = sub_1C456902C(&qword_1EC0BA6A0, &qword_1C4F145E0);
  sub_1C43FBD18(v5);
  v7 = *(v6 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBC74();
  v80 = v9;
  v10 = sub_1C456902C(&qword_1EC0BA698, &qword_1C4F145D8);
  sub_1C43FBD18(v10);
  v12 = *(v11 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBC74();
  v81 = v14;
  sub_1C43FBE44();
  v15 = sub_1C4EFEEF8();
  v16 = sub_1C43FCDF8(v15);
  v90 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FD2D8();
  v82 = v20;
  v21 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v21);
  v23 = *(v22 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v24);
  sub_1C43FBC74();
  v83 = v25;
  sub_1C43FBE44();
  v85 = sub_1C4EFF0C8();
  v26 = sub_1C43FCDF8(v85);
  v84 = v27;
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v26);
  sub_1C43FBCC4();
  sub_1C4422BD8();
  v30 = sub_1C456902C(&qword_1EC0C6B18, &qword_1C4F70490);
  sub_1C43FCDF8(v30);
  v32 = *(v31 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v33);
  v34 = sub_1C4413644();
  v35 = type metadata accessor for BMAppleMusicEventStructs.Event(v34);
  v36 = sub_1C43FBCE0(v35);
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v36);
  sub_1C43FBCC4();
  sub_1C44058BC();
  v92 = *(v39 + 20);
  v93 = v15;
  sub_1C43FCF64();
  sub_1C440BAA8(v40, v41, v42, v15);
  v86 = v35[6];
  _s24IntelligencePlatformCore12EventMatcherV11entityClass0aB006EntityG0Vvg_0();
  v43 = v35[7];
  if (qword_1EDDFD268 != -1)
  {
    sub_1C4404CEC();
  }

  v44 = type metadata accessor for Source();
  sub_1C442B738(v44, &qword_1EDDFD270);
  sub_1C441AB98();
  v87 = v43;
  sub_1C448D2B4(v45, v1 + v43, v46);
  v91 = v35[8];
  sub_1C4EFECC8();
  v47 = v35[10];
  v48 = type metadata accessor for BMAppleMusicEventStructs.DateRelationshipType(0);
  v89 = v47;
  sub_1C43FCF64();
  sub_1C440BAA8(v49, v50, v51, v48);
  v52 = v35[11];
  v53 = type metadata accessor for BMAppleMusicEventStructs.SongRelationshipType(0);
  sub_1C43FCF64();
  sub_1C440BAA8(v54, v55, v56, v53);
  v57 = v3;
  v59 = v3[3];
  v58 = v3[4];
  v88 = v57;
  sub_1C4409678(v57, v59);
  sub_1C4D6DC84();
  sub_1C4F02BC8();
  if (v0)
  {
    sub_1C440962C(v88);
    sub_1C4420C3C(v1 + v92, &qword_1EC0B9A08, &unk_1C4F107B0);
    v62 = sub_1C4EFD548();
    sub_1C43FBCE0(v62);
    (*(v63 + 8))(v1 + v86);
    sub_1C4411564();
    sub_1C4D6D038(v1 + v87, v64);
    (*(v90 + 8))(v1 + v91, v93);

    sub_1C4420C3C(v1 + v89, &qword_1EC0BA698, &qword_1C4F145D8);
    sub_1C4420C3C(v1 + v52, &qword_1EC0BA6A0, &qword_1C4F145E0);
  }

  else
  {
    sub_1C43FF970();
    sub_1C44CD310(v60, v61);
    sub_1C43FE6CC();
    sub_1C440194C();
    sub_1C4F026C8();
    v65 = sub_1C447553C(v84);
    v66(v65);
    sub_1C442DAA4();
    sub_1C44CD310(v67, v68);
    sub_1C440194C();
    sub_1C4F02658();
    sub_1C444088C(v83, v1 + v92, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C440194C();
    sub_1C4F026C8();
    (*(v90 + 40))(v1 + v91, v82, v93);
    sub_1C440194C();
    v69 = sub_1C4F02618();
    sub_1C44160B4(v69, v70, v35[9]);
    sub_1C441B1C8();
    sub_1C44CD310(v71, v72);
    sub_1C440194C();
    sub_1C4F02658();
    sub_1C444088C(v81, v1 + v89, &qword_1EC0BA698, &qword_1C4F145D8);
    sub_1C443436C();
    sub_1C44CD310(v73, v74);
    sub_1C440194C();
    sub_1C4F02658();
    v75 = sub_1C44151B0();
    v76(v75);
    sub_1C444088C(v80, v1 + v52, &qword_1EC0BA6A0, &qword_1C4F145E0);
    v77 = sub_1C442A548();
    sub_1C448D2B4(v77, v79, v78);
    sub_1C440962C(v88);
    sub_1C4D6D038(v1, type metadata accessor for BMAppleMusicEventStructs.Event);
  }

  sub_1C43FBC80();
}

uint64_t sub_1C4D6CEFC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1C4F02AF8();
  a4(v8, v6);
  return sub_1C4F02B68();
}

uint64_t sub_1C4D6CF50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4D6C0CC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4D6CF78(uint64_t a1)
{
  v2 = sub_1C4D6DC84();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4D6CFB4(uint64_t a1)
{
  v2 = sub_1C4D6DC84();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C4D6D038(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1C43FBCE0(v3);
  (*(v4 + 8))(a1);
  return a1;
}

void sub_1C4D6D118()
{
  sub_1C4EFF0C8();
  if (v0 <= 0x3F)
  {
    sub_1C4D6D280(319, &qword_1EDDFA1D0, MEMORY[0x1E69A9748]);
    if (v1 <= 0x3F)
    {
      sub_1C4EFD548();
      if (v2 <= 0x3F)
      {
        type metadata accessor for Source();
        if (v3 <= 0x3F)
        {
          sub_1C4EFEEF8();
          if (v4 <= 0x3F)
          {
            sub_1C4700EB8();
            if (v5 <= 0x3F)
            {
              sub_1C4D6D280(319, &qword_1EC0C6A40, type metadata accessor for BMAppleMusicEventStructs.DateRelationshipType);
              if (v6 <= 0x3F)
              {
                sub_1C4D6D280(319, &qword_1EC0C6A48, type metadata accessor for BMAppleMusicEventStructs.SongRelationshipType);
                if (v7 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1C4D6D280(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C4F01F48();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1C4D6D2FC()
{
  sub_1C4D6D280(319, &qword_1EDDFA1D0, MEMORY[0x1E69A9748]);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    v1 = sub_1C4EFD548();
    if (v3 <= 0x3F)
    {
      v1 = type metadata accessor for Source();
      if (v4 <= 0x3F)
      {
        v1 = sub_1C4EFEEF8();
        if (v5 <= 0x3F)
        {
          sub_1C4700EB8();
          if (v7 > 0x3F)
          {
            return v6;
          }

          else
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return v1;
}

void sub_1C4D6D434()
{
  sub_1C4D6D280(319, &qword_1EDDFA1D0, MEMORY[0x1E69A9748]);
  if (v0 <= 0x3F)
  {
    sub_1C4EFD548();
    if (v1 <= 0x3F)
    {
      type metadata accessor for Source();
      if (v2 <= 0x3F)
      {
        sub_1C4EFEEF8();
        if (v3 <= 0x3F)
        {
          sub_1C4700EB8();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1C4D6D544()
{
  v0 = sub_1C4EFF0C8();
  if (v1 <= 0x3F)
  {
    sub_1C4D6D280(319, &qword_1EDDFA1D0, MEMORY[0x1E69A9748]);
    v0 = v2;
    if (v3 <= 0x3F)
    {
      v0 = sub_1C4EFD548();
      if (v4 <= 0x3F)
      {
        v0 = type metadata accessor for Source();
        if (v5 <= 0x3F)
        {
          v0 = sub_1C4EFEEF8();
          if (v6 <= 0x3F)
          {
            sub_1C4700EB8();
            if (v8 > 0x3F)
            {
              return v7;
            }

            else
            {
              sub_1C4D6D280(319, &qword_1EC0C6A80, type metadata accessor for BMAppleMusicEventStructs.QuantityRelationshipType);
              v0 = v9;
              if (v10 <= 0x3F)
              {
                sub_1C4D6D280(319, &qword_1EC0C6A88, type metadata accessor for BMAppleMusicEventStructs.IdentifierRelationshipType);
                v0 = v11;
                if (v12 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                  return 0;
                }
              }
            }
          }
        }
      }
    }
  }

  return v0;
}

void sub_1C4D6D72C()
{
  sub_1C4D6D280(319, &qword_1EDDFA1D0, MEMORY[0x1E69A9748]);
  if (v0 <= 0x3F)
  {
    sub_1C4EFD548();
    if (v1 <= 0x3F)
    {
      type metadata accessor for Source();
      if (v2 <= 0x3F)
      {
        sub_1C4D6D280(319, &qword_1EC0C6AA0, type metadata accessor for BMAppleMusicEventStructs.Song);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1C4D6D850()
{
  sub_1C4D6D280(319, &qword_1EDDFA1D0, MEMORY[0x1E69A9748]);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    v1 = sub_1C4EFD548();
    if (v3 <= 0x3F)
    {
      v1 = type metadata accessor for Source();
      if (v4 <= 0x3F)
      {
        v1 = sub_1C4EFEEF8();
        if (v5 <= 0x3F)
        {
          sub_1C4700EB8();
          if (v7 > 0x3F)
          {
            return v6;
          }

          else
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return v1;
}

uint64_t sub_1C4D6D96C(uint64_t a1)
{
  *(a1 + 8) = sub_1C44CD310(&qword_1EC0C6AB8, type metadata accessor for BMAppleMusicEventStructs.DateRelationshipType);
  result = sub_1C44CD310(&qword_1EC0C6AC0, type metadata accessor for BMAppleMusicEventStructs.DateRelationshipType);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C4D6D9F0(uint64_t a1)
{
  *(a1 + 8) = sub_1C44CD310(&qword_1EC0C6AC8, type metadata accessor for BMAppleMusicEventStructs.SongRelationshipType);
  result = sub_1C44CD310(&qword_1EC0C6AD0, type metadata accessor for BMAppleMusicEventStructs.SongRelationshipType);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C4D6DA74(uint64_t a1)
{
  *(a1 + 8) = sub_1C44CD310(&qword_1EC0C6AD8, type metadata accessor for BMAppleMusicEventStructs.Song);
  result = sub_1C44CD310(&qword_1EC0C6AE0, type metadata accessor for BMAppleMusicEventStructs.Song);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C4D6DAF8(uint64_t a1)
{
  *(a1 + 8) = sub_1C44CD310(&qword_1EC0C6AE8, type metadata accessor for BMAppleMusicEventStructs.QuantityRelationshipType);
  result = sub_1C44CD310(&qword_1EC0C6AF0, type metadata accessor for BMAppleMusicEventStructs.QuantityRelationshipType);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C4D6DB7C(uint64_t a1)
{
  *(a1 + 8) = sub_1C44CD310(&qword_1EC0C6AF8, type metadata accessor for BMAppleMusicEventStructs.IdentifierRelationshipType);
  result = sub_1C44CD310(&qword_1EC0C6B00, type metadata accessor for BMAppleMusicEventStructs.IdentifierRelationshipType);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C4D6DC00(uint64_t a1)
{
  *(a1 + 8) = sub_1C44CD310(&qword_1EC0C6B08, type metadata accessor for BMAppleMusicEventStructs.Event);
  result = sub_1C44CD310(&qword_1EC0C6B10, type metadata accessor for BMAppleMusicEventStructs.Event);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1C4D6DC84()
{
  result = qword_1EC0C6B20;
  if (!qword_1EC0C6B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C6B20);
  }

  return result;
}

unint64_t sub_1C4D6DCD8()
{
  result = qword_1EC0C6B38;
  if (!qword_1EC0C6B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C6B38);
  }

  return result;
}

unint64_t sub_1C4D6DD2C()
{
  result = qword_1EC0C6B50;
  if (!qword_1EC0C6B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C6B50);
  }

  return result;
}

unint64_t sub_1C4D6DD80()
{
  result = qword_1EC0C6B68;
  if (!qword_1EC0C6B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C6B68);
  }

  return result;
}

unint64_t sub_1C4D6DDD4()
{
  result = qword_1EC0C6B80;
  if (!qword_1EC0C6B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C6B80);
  }

  return result;
}

unint64_t sub_1C4D6DE28()
{
  result = qword_1EC0C6B98;
  if (!qword_1EC0C6B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C6B98);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for BMAppleMusicEventStructs.DateRelationshipType.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for BMAppleMusicEventStructs.SongRelationshipType.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for BMAppleMusicEventStructs.Song.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 17 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 17) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xEF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEE)
  {
    v6 = ((a2 - 239) >> 8) + 1;
    *result = a2 + 17;
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
          *result = a2 + 17;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for BMAppleMusicEventStructs.QuantityRelationshipType.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for BMAppleMusicEventStructs.IdentifierRelationshipType.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for BMAppleMusicEventStructs.Event.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C4D6E3A8()
{
  result = qword_1EC0C6BA8;
  if (!qword_1EC0C6BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C6BA8);
  }

  return result;
}

unint64_t sub_1C4D6E400()
{
  result = qword_1EC0C6BB0;
  if (!qword_1EC0C6BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C6BB0);
  }

  return result;
}

unint64_t sub_1C4D6E458()
{
  result = qword_1EC0C6BB8;
  if (!qword_1EC0C6BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C6BB8);
  }

  return result;
}

unint64_t sub_1C4D6E4B0()
{
  result = qword_1EC0C6BC0;
  if (!qword_1EC0C6BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C6BC0);
  }

  return result;
}

unint64_t sub_1C4D6E508()
{
  result = qword_1EC0C6BC8;
  if (!qword_1EC0C6BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C6BC8);
  }

  return result;
}

unint64_t sub_1C4D6E560()
{
  result = qword_1EC0C6BD0;
  if (!qword_1EC0C6BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C6BD0);
  }

  return result;
}

unint64_t sub_1C4D6E5B8()
{
  result = qword_1EC0C6BD8;
  if (!qword_1EC0C6BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C6BD8);
  }

  return result;
}

unint64_t sub_1C4D6E610()
{
  result = qword_1EC0C6BE0;
  if (!qword_1EC0C6BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C6BE0);
  }

  return result;
}

unint64_t sub_1C4D6E668()
{
  result = qword_1EC0C6BE8;
  if (!qword_1EC0C6BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C6BE8);
  }

  return result;
}

unint64_t sub_1C4D6E6C0()
{
  result = qword_1EC0C6BF0;
  if (!qword_1EC0C6BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C6BF0);
  }

  return result;
}

unint64_t sub_1C4D6E718()
{
  result = qword_1EC0C6BF8;
  if (!qword_1EC0C6BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C6BF8);
  }

  return result;
}

unint64_t sub_1C4D6E770()
{
  result = qword_1EC0C6C00;
  if (!qword_1EC0C6C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C6C00);
  }

  return result;
}

unint64_t sub_1C4D6E7C8()
{
  result = qword_1EC0C6C08;
  if (!qword_1EC0C6C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C6C08);
  }

  return result;
}

unint64_t sub_1C4D6E820()
{
  result = qword_1EC0C6C10;
  if (!qword_1EC0C6C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C6C10);
  }

  return result;
}

unint64_t sub_1C4D6E878()
{
  result = qword_1EC0C6C18;
  if (!qword_1EC0C6C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C6C18);
  }

  return result;
}

unint64_t sub_1C4D6E8D0()
{
  result = qword_1EC0C6C20;
  if (!qword_1EC0C6C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C6C20);
  }

  return result;
}

unint64_t sub_1C4D6E928()
{
  result = qword_1EC0C6C28;
  if (!qword_1EC0C6C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C6C28);
  }

  return result;
}

unint64_t sub_1C4D6E980()
{
  result = qword_1EC0C6C30;
  if (!qword_1EC0C6C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0C6C30);
  }

  return result;
}

void sub_1C4D6E9E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FE96C();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v28 = sub_1C4F00DD8();
  v29 = sub_1C43FCDF8(v28);
  v138 = v30;
  v139 = v29;
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v29);
  sub_1C43FD2D8();
  v136 = v33;
  sub_1C43FBE44();
  v34 = sub_1C4F00DC8();
  v35 = sub_1C43FCDF8(v34);
  v140 = v36;
  v141 = v35;
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v35);
  sub_1C43FBFDC();
  v135 = v39;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v40);
  sub_1C43FD230();
  v137 = v41;
  sub_1C43FBE44();
  v42 = sub_1C4F01188();
  v43 = sub_1C43FCDF8(v42);
  v142 = v44;
  v143 = v43;
  v46 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v43);
  sub_1C43FD2D8();
  sub_1C43FBE44();
  v47 = sub_1C4EFD548();
  v48 = sub_1C43FCDF8(v47);
  v50 = v49;
  v52 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v48);
  sub_1C43FBFDC();
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v53);
  sub_1C43FD230();
  v55 = v54;
  sub_1C43FBE44();
  v56 = sub_1C4EFF0C8();
  v57 = sub_1C43FCDF8(v56);
  v132 = v58;
  v133 = v57;
  v60 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v57);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v61);
  sub_1C43FD230();
  v63 = sub_1C43FD2C8(v62);
  v64 = type metadata accessor for CNContactStructs.Organization(v63);
  v65 = v64[5];
  sub_1C4EFEEF8();
  sub_1C43FCF64();
  v134 = v66;
  sub_1C440BAA8(v67, v68, v69, v66);
  v70 = v64[6];
  _s24IntelligencePlatformCore19OrganizationMatcherV11entityClass0aB006EntityG0Vvg_0();
  v149 = (v27 + v64[7]);
  if (qword_1EDDFED28 != -1)
  {
    sub_1C44133AC();
    swift_once();
  }

  v71 = type metadata accessor for Source();
  sub_1C442B738(v71, &unk_1EDDFD088);
  sub_1C4408374();
  sub_1C44CC80C(v72, v149, v73);
  v129 = v64[8];
  sub_1C4EFEBF8();
  v74 = (v27 + v64[9]);
  *v74 = 0;
  v74[1] = 0;
  v128 = v64[10];
  sub_1C4EFE578();
  v75 = (v27 + v64[11]);
  *v75 = 0;
  v75[1] = 0;
  if (qword_1EDDFD028 != -1)
  {
    sub_1C43FE9B4();
  }

  v76 = sub_1C4F00978();
  sub_1C442B738(v76, qword_1EDE2DE10);
  v77 = *(v50 + 16);
  v144 = v27;
  sub_1C4D871A8(v50 + 16);
  v78();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v79 = sub_1C4F00968();
  v80 = sub_1C4F01CB8();

  v145 = v70;
  v146 = v47;
  if (os_log_type_enabled(v79, v80))
  {
    swift_slowAlloc();
    v147 = sub_1C441D7BC();
    *v70 = 136381187;
    v81 = sub_1C4404DC8();
    v84 = sub_1C441D828(v81, v82, v83);
    sub_1C44587AC(v84);
    sub_1C4432F18();
    sub_1C44CD358(v85, v86);
    v87 = sub_1C4F02858();
    v88 = v47;
    v90 = v89;
    v91 = *(v50 + 8);
    v91(v55, v88);
    v92 = sub_1C441D828(v87, v90, &v147);

    *(v70 + 14) = v92;
    sub_1C44A18E0();
    _os_log_impl(&dword_1C43F8000, v79, v80, "Source: generating identifier for: %{private}s : %s : %{BOOL}d", v70, 0x1Cu);
    swift_arrayDestroy();
    sub_1C43FBE2C();
    sub_1C43FBE2C();
  }

  else
  {

    v91 = *(v50 + 8);
    v91(v55, v47);
  }

  v93 = *v149;
  v94 = v149[1];
  v147 = v25;
  v148 = v23;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  MEMORY[0x1C6940010](v93, v94);

  v95 = v147;
  v96 = v148;
  sub_1C450B3B4();
  sub_1C4F01178();
  sub_1C4F01148();
  v98 = v97;
  (*(v142 + 8))(v79, v143);
  if (v98 >> 60 == 15)
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v99 = sub_1C4F00968();
    v100 = sub_1C4F01CD8();

    if (os_log_type_enabled(v99, v100))
    {
      v101 = swift_slowAlloc();
      v102 = v91;
      v103 = swift_slowAlloc();
      v147 = v103;
      *v101 = 136380675;
      v104 = sub_1C441D828(v95, v96, &v147);

      *(v101 + 4) = v104;
      _os_log_impl(&dword_1C43F8000, v99, v100, "Source: failed to encode identifier as UTF8 data: %{private}s", v101, 0xCu);
      sub_1C440962C(v103);
      v91 = v102;
      sub_1C43FBE2C();
      sub_1C43FBE2C();
    }

    else
    {
    }

    sub_1C45CF650();
    sub_1C43FFB2C();
    sub_1C43FE7A8(v120, 5);
    sub_1C440C668();
    sub_1C4420C3C(v144 + v121, v122, v123);
    v91(v144 + v145, v146);
    sub_1C440636C();
    sub_1C44D474C(v149, v124);
    v125 = *(*(v134 - 8) + 8);
    v126 = sub_1C4429108(&a15);
    v125(v126, v134);
    v127 = sub_1C4429108(&a14);
    v125(v127, v134);
  }

  else
  {

    sub_1C442A594();
    sub_1C44CD358(v105, v106);
    sub_1C4F00DB8();
    v107 = sub_1C4404DC8();
    sub_1C44344B8(v107, v108);
    v109 = sub_1C4404DC8();
    sub_1C4498FD8(v109, v110);
    v111 = sub_1C4404DC8();
    sub_1C441DFEC(v111, v112);
    sub_1C4F00DA8();
    (*(v138 + 8))(v136, v139);
    sub_1C4D87134();
    v113();
    (*(v140 + 16))(v135, v137, v141);
    sub_1C4EFF028();
    v114 = sub_1C4404DC8();
    sub_1C441DFEC(v114, v115);
    v116 = *(v140 + 8);
    v117 = sub_1C4410CBC();
    v118(v117);
    v119 = *(v132 + 32);
    v119(v130, v131, v133);
    v119(v144, v130, v133);
  }

  sub_1C44103B4();
  sub_1C43FBC80();
}

uint64_t sub_1C4D6F26C(uint64_t a1)
{
  v4 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v4);
  v6 = *(v5 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v7);
  v8 = sub_1C44042B0();
  v9 = v2 + *(type metadata accessor for CNContactStructs.EmploymentRelationshipType(v8) + 36);
  sub_1C44D7768(a1, v9, &qword_1EC0BAD40, &qword_1C4F175A0);
  v10 = type metadata accessor for CNContactStructs.Organization(0);
  sub_1C44101EC();
  if (sub_1C44157D4(v11, v12, v13))
  {
    return sub_1C4420C3C(a1, &qword_1EC0BAD40, &qword_1C4F175A0);
  }

  sub_1C4EFEDF8();
  sub_1C4420C3C(a1, &qword_1EC0BAD40, &qword_1C4F175A0);
  v15 = sub_1C4EFEEF8();
  sub_1C440CBF4(v15);
  return sub_1C444088C(v1, v9 + *(v10 + 20), &qword_1EC0B9A08, &unk_1C4F107B0);
}

uint64_t sub_1C4D6F388(uint64_t a1)
{
  v4 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v4);
  v6 = *(v5 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v7);
  v8 = sub_1C44042B0();
  v9 = *(type metadata accessor for CNContactStructs.Person(v8) + 236);
  sub_1C44D7768(a1, v2 + v9, &qword_1EC0BAD38, &unk_1C4F70B40);
  v10 = type metadata accessor for CNContactStructs.EmploymentRelationshipType(0);
  if (sub_1C44157D4(v2 + v9, 1, v10))
  {
    return sub_1C4420C3C(a1, &qword_1EC0BAD38, &unk_1C4F70B40);
  }

  sub_1C4EFED68();
  sub_1C4420C3C(a1, &qword_1EC0BAD38, &unk_1C4F70B40);
  v12 = sub_1C4EFEEF8();
  sub_1C440CBF4(v12);
  return sub_1C444088C(v1, v2 + v9, &qword_1EC0B9A08, &unk_1C4F107B0);
}

void sub_1C4D6F494()
{
  sub_1C43FE628();
  v963 = v1;
  v5 = v4;
  v979 = v6;
  v8 = v7;
  v9 = type metadata accessor for CNContactStructs.AddressRelationshipType(0);
  v10 = sub_1C43FCF7C(v9);
  v964 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FD2D8();
  v15 = sub_1C43FD2C8(v14);
  v16 = type metadata accessor for CNContactStructs.LocationRelationshipType(v15);
  v17 = sub_1C43FCF7C(v16);
  v967 = v18;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v17);
  sub_1C43FD2D8();
  v966 = v21;
  v22 = sub_1C43FBE44();
  v23 = type metadata accessor for CNContactStructs.AgentAffiliationRelationshipType(v22);
  v24 = sub_1C43FCF7C(v23);
  v969 = v25;
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v24);
  sub_1C43FD2D8();
  v968 = v28;
  v29 = sub_1C43FBE44();
  v30 = type metadata accessor for CNContactStructs.EntityAliasRelationshipType(v29);
  v31 = sub_1C43FCF7C(v30);
  v970 = v32;
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v31);
  sub_1C43FD2D8();
  v971 = v35;
  v36 = sub_1C456902C(&qword_1EC0C6C38, &qword_1C4F70B38);
  sub_1C43FBD18(v36);
  v38 = *(v37 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v39);
  sub_1C43FBC74();
  v972 = v40;
  v41 = sub_1C43FBE44();
  v942 = type metadata accessor for CNContactStructs.VisualIdentifierRelationshipType(v41);
  v42 = sub_1C43FBCE0(v942);
  v44 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v42);
  sub_1C43FD2D8();
  v941 = v45;
  v46 = sub_1C456902C(&qword_1EC0BAD38, &unk_1C4F70B40);
  sub_1C43FBD18(v46);
  v48 = *(v47 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v49);
  sub_1C43FBC74();
  v976 = v50;
  v51 = sub_1C43FBE44();
  v944 = type metadata accessor for CNContactStructs.EmploymentRelationshipType(v51);
  v52 = sub_1C43FBCE0(v944);
  v54 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v52);
  sub_1C43FD2D8();
  v975 = v55;
  v56 = sub_1C43FBE44();
  v57 = type metadata accessor for CNContactStructs.IdentifierRelationshipType(v56);
  v58 = sub_1C43FCF7C(v57);
  v974 = v59;
  v61 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v58);
  sub_1C43FD2D8();
  v973 = v62;
  v63 = sub_1C43FBE44();
  v64 = type metadata accessor for EntityTriple(v63);
  v65 = sub_1C43FCDF8(v64);
  v977 = v66;
  v68 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v65);
  sub_1C43FBFDC();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v69);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v70);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v71);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v72);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v73);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v74);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v75);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v76);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v77);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v78);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v79);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v80);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v81);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v82);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v83);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v84);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v85);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v86);
  sub_1C43FBF38();
  sub_1C43FBF28();
  v88 = MEMORY[0x1EEE9AC00](v87);
  v90 = &v938 - v89;
  MEMORY[0x1EEE9AC00](v88);
  sub_1C43FBF38();
  v965 = v91;
  sub_1C43FD1D0();
  v93 = MEMORY[0x1EEE9AC00](v92);
  v95 = &v938 - v94;
  MEMORY[0x1EEE9AC00](v93);
  sub_1C4402CA8();
  v96 = *v5;
  v97 = MEMORY[0x1E69E7CC0];
  v989[0] = MEMORY[0x1E69E7CC0];
  v981 = type metadata accessor for CNContactStructs.Person(0);
  v982 = v0;
  v98 = (v0 + v981[9]);
  v99 = v98[1];
  v978 = v8;
  v980 = v96;
  if (!v99)
  {
    goto LABEL_8;
  }

  v100 = *v98;
  v101 = HIBYTE(v99) & 0xF;
  if ((v99 & 0x2000000000000000) == 0)
  {
    v101 = v100 & 0xFFFFFFFFFFFFLL;
  }

  if (!v101)
  {
    v97 = MEMORY[0x1E69E7CC0];
    goto LABEL_8;
  }

  v943 = v90;
  v102 = sub_1C4EFF0C8();
  sub_1C43FCE50(v102);
  v104 = v982;
  (*(v103 + 16))(v2, v982);
  v0 = v981;
  v105 = v981[8];
  v106 = sub_1C4428F48();
  sub_1C43FCE50(v106);
  v108 = v104 + v105;
  v8 = v978;
  (*(v107 + 16))(v2 + v96, v108);
  v109 = *(v0 + 7);
  v110 = v64[9];
  sub_1C4408374();
  sub_1C44CC80C(v104 + v111, v2 + v112, v113);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EF9AE8();
  sub_1C440EEE0();
  sub_1C4EFF888();
  v114 = v2 + v64[7];
  sub_1C4EFEC38();
  v115 = (v2 + v64[8]);
  *v115 = v100;
  v115[1] = v99;
  sub_1C4D86EE8((v2 + v64[10]));
  *(v2 + v116) = v3;
  *(v2 + v64[12]) = v980;
  v117 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4401EC4(v117, v118, v119, MEMORY[0x1E69E7CC0]);
  v97 = v120;
  v96 = *(v120 + 16);
  v99 = v96 + 1;
  if (v96 >= *(v120 + 24) >> 1)
  {
    goto LABEL_260;
  }

  while (1)
  {
    *(v97 + 16) = v99;
    sub_1C43FCC40();
    sub_1C4420AA0();
    sub_1C44D4624(v2, v121, v122);
    v989[0] = v97;
    v90 = v943;
LABEL_8:
    sub_1C4488B70(v981[11]);
    if (v2)
    {
      sub_1C4416C2C(v123);
      if (v125)
      {
        v943 = v124;
        v126 = sub_1C4EFF0C8();
        sub_1C43FCE50(v126);
        v0 = v982;
        (*(v127 + 16))(v95, v982);
        v99 = v981;
        v128 = v981[10];
        v129 = sub_1C4428F48();
        sub_1C43FCE50(v129);
        v131 = &v95[v96];
        v96 = v980;
        v132 = v0 + v128;
        v8 = v978;
        (*(v130 + 16))(v131, v132);
        v133 = *(v99 + 28);
        v134 = v64[9];
        sub_1C4408374();
        sub_1C44CC80C(v0 + v135, &v95[v136], v137);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EF9AE8();
        sub_1C440EEE0();
        sub_1C4EFF888();
        sub_1C4D87234();
        v138 = &v95[v64[8]];
        *v138 = v943;
        *(v138 + 1) = v2;
        sub_1C4D86EE8(&v95[v64[10]]);
        *&v95[v139] = v3;
        v95[v64[12]] = v96;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v736 = *(v97 + 16);
          v737 = sub_1C43FCEC0();
          sub_1C44C9240(v737, v738, v739, v97);
          v97 = v740;
        }

        sub_1C44C1338();
        if (v141)
        {
          v741 = sub_1C4405AF4(v140);
          sub_1C44C9240(v741, v742, v743, v97);
          v97 = v744;
        }

        *(v97 + 16) = v2;
        sub_1C43FCC40();
        sub_1C4420AA0();
        sub_1C44D4624(v95, v142, v143);
        v989[0] = v97;
      }
    }

    sub_1C4488B70(v981[13]);
    if (v2)
    {
      sub_1C4434384(v144);
      if (v145)
      {
        v943 = v90;
        v146 = sub_1C4EFF0C8();
        sub_1C43FCE50(v146);
        v148 = v965;
        v95 = v982;
        (*(v147 + 16))(v965, v982);
        v0 = v981;
        v149 = v981[12];
        v150 = sub_1C4428F48();
        sub_1C43FCE50(v150);
        v152 = v148 + v96;
        v96 = v980;
        v153 = &v95[v149];
        v8 = v978;
        (*(v151 + 16))(v152, v153);
        v154 = *(v0 + 7);
        v155 = v64[9];
        sub_1C4408374();
        sub_1C44CC80C(&v95[v156], v148 + v157, v158);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EF9AE8();
        sub_1C440EEE0();
        sub_1C4EFF888();
        v159 = v148 + v64[7];
        sub_1C4EFEC38();
        v160 = (v148 + v64[8]);
        *v160 = v99;
        v160[1] = v2;
        sub_1C4D86EE8((v148 + v64[10]));
        *(v148 + v161) = v3;
        *(v148 + v64[12]) = v96;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v745 = *(v97 + 16);
          v746 = sub_1C43FCEC0();
          sub_1C44C9240(v746, v747, v748, v97);
          v97 = v749;
        }

        sub_1C44C1338();
        v90 = v943;
        if (v141)
        {
          v750 = sub_1C4405AF4(v162);
          sub_1C44C9240(v750, v751, v752, v97);
          v97 = v753;
        }

        *(v97 + 16) = v2;
        sub_1C43FCC40();
        sub_1C4420AA0();
        sub_1C44D4624(v965, v163, v164);
        v989[0] = v97;
      }
    }

    sub_1C4488B70(v981[15]);
    if (v2)
    {
      sub_1C4434384(v165);
      if (v166)
      {
        v167 = sub_1C4EFF0C8();
        sub_1C43FCE50(v167);
        v169 = v982;
        (*(v168 + 16))(v90, v982);
        v0 = v981;
        v170 = v981[14];
        v171 = sub_1C4428F48();
        sub_1C43FCE50(v171);
        v173 = *(v172 + 16);
        v174 = (v90 + v96);
        v965 = v97;
        v175 = v90;
        v90 = v980;
        v176 = v169 + v170;
        v8 = v978;
        v96 = v979;
        v173(v174, v176);
        v177 = *(v0 + 7);
        v178 = v64[9];
        sub_1C4408374();
        sub_1C44CC80C(v169 + v179, v175 + v180, v181);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EF9AE8();
        sub_1C440EEE0();
        sub_1C4EFF888();
        v182 = v175 + v64[7];
        sub_1C4EFEC38();
        v183 = (v175 + v64[8]);
        *v183 = v99;
        v183[1] = v2;
        v184 = (v175 + v64[10]);
        *v184 = v8;
        v184[1] = v96;
        *(v175 + v64[11]) = v3;
        *(v175 + v64[12]) = v90;
        v95 = v175;
        v97 = v965;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v754 = *(v97 + 16);
          v755 = sub_1C43FCEC0();
          sub_1C44C9240(v755, v756, v757, v97);
          v97 = v758;
        }

        sub_1C44C1338();
        if (v141)
        {
          v759 = sub_1C4405AF4(v185);
          sub_1C44C9240(v759, v760, v761, v97);
          v97 = v762;
        }

        *(v97 + 16) = v2;
        sub_1C43FCC40();
        sub_1C4420AA0();
        sub_1C44D4624(v95, v186, v187);
        v989[0] = v97;
      }
    }

    sub_1C4488B70(v981[17]);
    if (v2)
    {
      sub_1C4416C2C(v188);
      if (v189)
      {
        v190 = sub_1C44D71D4();
        sub_1C43FCE50(v190);
        v192 = *(v191 + 16);
        v193 = sub_1C445BB90();
        v90 = v982;
        v194(v193, v982);
        v0 = v981;
        v8 = v981[16];
        v195 = sub_1C4428F48();
        sub_1C43FCE50(v195);
        v197 = *(v196 + 16);
        v198 = sub_1C4D87008();
        v199(v198);
        v200 = *(v0 + 7);
        v201 = v64[9];
        sub_1C4408374();
        sub_1C44CC80C(v90 + v202, &v95[v203], v204);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EF9AE8();
        sub_1C440EEE0();
        sub_1C4EFF888();
        sub_1C4D87234();
        sub_1C4460BC8();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v763 = *(v97 + 16);
          v764 = sub_1C43FCEC0();
          sub_1C44C9240(v764, v765, v766, v97);
          v97 = v767;
        }

        sub_1C44C1338();
        if (v141)
        {
          v768 = sub_1C4405AF4(v205);
          sub_1C44C9240(v768, v769, v770, v97);
          v97 = v771;
        }

        *(v97 + 16) = v2;
        sub_1C43FCC40();
        sub_1C4420AA0();
        sub_1C44D4624(v945, v206, v207);
        v989[0] = v97;
      }
    }

    sub_1C4488B70(v981[19]);
    if (v2)
    {
      sub_1C4416C2C(v208);
      if (v209)
      {
        v210 = sub_1C44D71D4();
        sub_1C43FCE50(v210);
        v212 = *(v211 + 16);
        v213 = sub_1C445BB90();
        v90 = v982;
        v214(v213, v982);
        v0 = v981;
        v8 = v981[18];
        v215 = sub_1C4428F48();
        sub_1C43FCE50(v215);
        v217 = *(v216 + 16);
        v218 = sub_1C4D87008();
        v219(v218);
        v220 = *(v0 + 7);
        v221 = v64[9];
        sub_1C4408374();
        sub_1C44CC80C(v90 + v222, &v95[v223], v224);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EF9AE8();
        sub_1C440EEE0();
        sub_1C4EFF888();
        sub_1C4D87234();
        sub_1C4460BC8();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v772 = *(v97 + 16);
          v773 = sub_1C43FCEC0();
          sub_1C44C9240(v773, v774, v775, v97);
          v97 = v776;
        }

        sub_1C44C1338();
        if (v141)
        {
          v777 = sub_1C4405AF4(v225);
          sub_1C44C9240(v777, v778, v779, v97);
          v97 = v780;
        }

        *(v97 + 16) = v2;
        sub_1C43FCC40();
        sub_1C4420AA0();
        sub_1C44D4624(v946, v226, v227);
        v989[0] = v97;
      }
    }

    sub_1C4488B70(v981[21]);
    if (v2)
    {
      sub_1C4416C2C(v228);
      if (v229)
      {
        v230 = sub_1C44D71D4();
        sub_1C43FCE50(v230);
        v232 = *(v231 + 16);
        v90 = v982;
        v233 = sub_1C445BB90();
        v234(v233, v90);
        v0 = v981;
        v8 = v981[20];
        v235 = sub_1C4428F48();
        sub_1C43FCE50(v235);
        v237 = *(v236 + 16);
        v238 = sub_1C4D87008();
        v239(v238);
        v240 = *(v0 + 7);
        v241 = v64[9];
        sub_1C4408374();
        sub_1C44CC80C(v90 + v242, &v95[v243], v244);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EF9AE8();
        sub_1C440EEE0();
        sub_1C4EFF888();
        sub_1C4D87234();
        sub_1C4460BC8();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v781 = *(v97 + 16);
          v782 = sub_1C43FCEC0();
          sub_1C44C9240(v782, v783, v784, v97);
          v97 = v785;
        }

        sub_1C44C1338();
        if (v141)
        {
          v786 = sub_1C4405AF4(v245);
          sub_1C44C9240(v786, v787, v788, v97);
          v97 = v789;
        }

        *(v97 + 16) = v2;
        sub_1C43FCC40();
        sub_1C4420AA0();
        sub_1C44D4624(v947, v246, v247);
        v989[0] = v97;
      }
    }

    sub_1C4488B70(v981[23]);
    if (v2)
    {
      sub_1C4416C2C(v248);
      if (v249)
      {
        v250 = sub_1C44D71D4();
        sub_1C43FCE50(v250);
        v252 = *(v251 + 16);
        v99 = v982;
        v253 = sub_1C445BB90();
        v254(v253, v99);
        v255 = v981;
        v256 = v981[22];
        v257 = sub_1C4428F48();
        sub_1C43FCE50(v257);
        v259 = &v95[v96];
        v260 = v64;
        v261 = v980;
        v262 = v99 + v256;
        v8 = v978;
        v263 = v979;
        (*(v258 + 16))(v259, v262);
        v264 = v255[7];
        v265 = v260[9];
        sub_1C4408374();
        sub_1C4D87070(v266, v267);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EF9AE8();
        v3 = v268;
        v269 = &v95[v260[6]];
        sub_1C4EFF888();
        v270 = &v95[v260[7]];
        sub_1C4EFEC38();
        v271 = &v95[v260[8]];
        *v271 = v965;
        *(v271 + 1) = v2;
        v272 = &v95[v260[10]];
        v90 = v8;
        *v272 = v8;
        v272[1] = v263;
        *&v95[v260[11]] = v3;
        v965 = v260;
        v95[v260[12]] = v261;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v0 = v97;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v790 = *(v97 + 16);
          v791 = sub_1C43FCEC0();
          sub_1C44C9240(v791, v792, v793, v97);
          v0 = v794;
        }

        sub_1C440C4FC();
        v64 = v965;
        if (v141)
        {
          v795 = sub_1C4405AF4(v273);
          sub_1C44C9240(v795, v796, v797, v0);
          v0 = v798;
        }

        v0[2] = v2;
        sub_1C43FCC58();
        v275 = *(v274 + 72);
        sub_1C4420AA0();
        sub_1C44D4624(v948, v276, v277);
        v989[0] = v0;
      }
    }

    sub_1C4488B70(v981[25]);
    if (v2)
    {
      sub_1C4416C2C(v278);
      if (v280)
      {
        v948 = v279;
        v281 = sub_1C4EFF0C8();
        sub_1C43FCE50(v281);
        v283 = *(v282 + 16);
        v99 = v982;
        v284 = sub_1C445BB90();
        v285(v284, v99);
        v0 = v981;
        v286 = v981[24];
        v287 = sub_1C4428F48();
        sub_1C43FCE50(v287);
        v289 = *(v288 + 16);
        v290 = sub_1C4D86FB4();
        v291(v290);
        v292 = *(v0 + 7);
        v293 = *(v90 + 36);
        sub_1C4408374();
        sub_1C4D87070(v294, v295);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EF9AE8();
        v3 = v296;
        v297 = &v95[*(v90 + 24)];
        sub_1C4EFF888();
        v298 = &v95[*(v90 + 28)];
        sub_1C4EFEC38();
        sub_1C44A152C(&v95[*(v90 + 32)]);
        v299 = v965;
        v95[v300] = v64;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v799 = *(v299 + 16);
          v800 = sub_1C43FCEC0();
          sub_1C44C9240(v800, v801, v802, v299);
          v299 = v803;
        }

        sub_1C44C1338();
        v64 = v0;
        if (v141)
        {
          v804 = sub_1C4405AF4(v301);
          sub_1C44C9240(v804, v805, v806, v299);
          v299 = v807;
        }

        v8 = v978;
        *(v299 + 16) = v2;
        sub_1C43FCC40();
        sub_1C4420AA0();
        sub_1C44D4624(v949, v302, v303);
        v989[0] = v299;
      }
    }

    sub_1C4488B70(v981[27]);
    if (v2)
    {
      sub_1C4416C2C(v305);
      if (v307)
      {
        v949 = v306;
        v308 = sub_1C4EFF0C8();
        sub_1C43FCE50(v308);
        v310 = *(v309 + 16);
        v311 = v982;
        v312 = sub_1C445BB90();
        v313(v312, v311);
        v0 = v981;
        v314 = v981[26];
        v315 = sub_1C4428F48();
        sub_1C43FCE50(v315);
        v317 = *(v316 + 16);
        v318 = sub_1C4D86FB4();
        v319(v318);
        v320 = *(v0 + 7);
        v321 = *(v90 + 36);
        sub_1C4408374();
        sub_1C4D87070(v322, v323);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EF9AE8();
        v3 = v324;
        v325 = &v95[*(v90 + 24)];
        sub_1C4EFF888();
        v326 = &v95[*(v90 + 28)];
        sub_1C4EFEC38();
        sub_1C44A152C(&v95[*(v90 + 32)]);
        v327 = v965;
        v95[v328] = v64;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v808 = *(v327 + 16);
          v809 = sub_1C43FCEC0();
          sub_1C44C9240(v809, v810, v811, v327);
          v327 = v812;
        }

        v99 = *(v327 + 16);
        v329 = *(v327 + 24);
        v2 = v99 + 1;
        v64 = v0;
        if (v99 >= v329 >> 1)
        {
          v813 = sub_1C4405AF4(v329);
          sub_1C44C9240(v813, v814, v815, v327);
          v327 = v816;
        }

        v8 = v978;
        *(v327 + 16) = v2;
        sub_1C445EB4C();
        sub_1C4420AA0();
        v304 = sub_1C44D4624(v950, v330, v331);
        v989[0] = v327;
      }
    }

    v332 = *(v982 + v981[29]);
    if (v332)
    {
      v333 = v972;
      v334 = v963;
      if (*(v332 + 16))
      {
        v0 = &v938;
        MEMORY[0x1EEE9AC00](v304);
        sub_1C4D86F18();
        *(v335 - 32) = v336;
        *(v335 - 24) = v8;
        sub_1C4D86E98(v335);
        sub_1C45DA100(sub_1C4D83D04, v337, v338, v339, v340, v341, v342, v343, v938, v939);
        v304 = sub_1C4D87100(v344);
      }
    }

    else
    {
      v333 = v972;
      v334 = v963;
    }

    v345 = *(v982 + v981[31]);
    if (v345 && *(v345 + 16))
    {
      v0 = &v938;
      MEMORY[0x1EEE9AC00](v304);
      sub_1C4D86F18();
      *(v346 - 32) = v347;
      *(v346 - 24) = v8;
      sub_1C4D86E98(v346);
      sub_1C45DA100(sub_1C4D83CE8, v348, v349, v350, v351, v352, v353, v354, v938, v939);
      sub_1C4D87100(v355);
    }

    sub_1C44AB2C8(v981[33]);
    if (v0)
    {
      sub_1C44026DC(v356);
      if (v357)
      {
        v358 = sub_1C4EFF0C8();
        sub_1C43FCE50(v358);
        v360 = *(v359 + 16);
        v361 = sub_1C4418D90();
        v362(v361);
        v363 = v981;
        v99 = v981[32];
        v364 = sub_1C4D86F84();
        sub_1C43FCE50(v364);
        v366 = *(v365 + 16);
        v367 = sub_1C44D0BB4();
        v368(v367);
        v369 = v363[7];
        v370 = v64[9];
        sub_1C4408374();
        sub_1C44F0D58(v371, v372);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EF9AE8();
        sub_1C440EEE0();
        sub_1C4EFF888();
        sub_1C4D86F6C();
        sub_1C441157C();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v817 = v0[2];
          v818 = sub_1C43FCEC0();
          sub_1C44C9240(v818, v819, v820, v0);
          v0 = v821;
        }

        sub_1C440C4FC();
        v333 = v972;
        if (v141)
        {
          v822 = sub_1C4405AF4(v373);
          sub_1C44C9240(v822, v823, v824, v0);
          v0 = v825;
        }

        v0[2] = v2;
        sub_1C43FCC58();
        v375 = *(v374 + 72);
        sub_1C4420AA0();
        sub_1C44D4624(v951, v376, v377);
        v989[0] = v0;
      }
    }

    sub_1C44AB2C8(v981[35]);
    if (v0)
    {
      sub_1C44026DC(v379);
      if (v380)
      {
        v381 = sub_1C4EFF0C8();
        sub_1C43FCE50(v381);
        v383 = *(v382 + 16);
        v384 = sub_1C4418D90();
        v385(v384);
        v386 = v981;
        v99 = v981[34];
        v387 = sub_1C4D86F84();
        sub_1C43FCE50(v387);
        v389 = *(v388 + 16);
        v390 = sub_1C44D0BB4();
        v391(v390);
        v392 = v386[7];
        v393 = v64[9];
        sub_1C4408374();
        sub_1C44F0D58(v394, v395);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EF9AE8();
        sub_1C440EEE0();
        sub_1C4EFF888();
        sub_1C4D86F6C();
        sub_1C441157C();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v826 = v0[2];
          v827 = sub_1C43FCEC0();
          sub_1C44C9240(v827, v828, v829, v0);
          v0 = v830;
        }

        sub_1C440C4FC();
        v333 = v972;
        if (v141)
        {
          v831 = sub_1C4405AF4(v396);
          sub_1C44C9240(v831, v832, v833, v0);
          v0 = v834;
        }

        v0[2] = v2;
        sub_1C43FCC58();
        v398 = *(v397 + 72);
        sub_1C4420AA0();
        v378 = sub_1C44D4624(v952, v399, v400);
        v989[0] = v0;
      }
    }

    v401 = *(v982 + v981[37]);
    if (v401 && *(v401 + 16))
    {
      v0 = &v938;
      MEMORY[0x1EEE9AC00](v378);
      sub_1C4D86F18();
      *(v402 - 32) = v403;
      *(v402 - 24) = v404;
      sub_1C4D86E98(v402);
      sub_1C45DA100(sub_1C4D83CCC, v405, v406, v407, v408, v409, v410, v411, v938, v939);
      sub_1C4D87100(v412);
    }

    sub_1C44AB2C8(v981[39]);
    if (v0)
    {
      sub_1C44026DC(v413);
      if (v414)
      {
        v415 = sub_1C4EFF0C8();
        sub_1C43FCE50(v415);
        v417 = *(v416 + 16);
        v418 = sub_1C4418D90();
        v419(v418);
        v420 = v981;
        v99 = v981[38];
        v421 = sub_1C4D86F84();
        sub_1C43FCE50(v421);
        v423 = *(v422 + 16);
        v424 = sub_1C44D0BB4();
        v425(v424);
        v426 = v420[7];
        v427 = v64[9];
        sub_1C4408374();
        sub_1C44F0D58(v428, v429);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EF9AE8();
        sub_1C440EEE0();
        sub_1C4EFF888();
        sub_1C4D86F6C();
        sub_1C441157C();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v835 = v0[2];
          v836 = sub_1C43FCEC0();
          sub_1C44C9240(v836, v837, v838, v0);
          v0 = v839;
        }

        sub_1C440C4FC();
        v333 = v972;
        if (v141)
        {
          v840 = sub_1C4405AF4(v430);
          sub_1C44C9240(v840, v841, v842, v0);
          v0 = v843;
        }

        v0[2] = v2;
        sub_1C43FCC58();
        v432 = *(v431 + 72);
        sub_1C4420AA0();
        sub_1C44D4624(v953, v433, v434);
        v989[0] = v0;
      }
    }

    sub_1C44AB2C8(v981[41]);
    if (v0)
    {
      sub_1C44026DC(v435);
      if (v436)
      {
        v437 = sub_1C4EFF0C8();
        sub_1C43FCE50(v437);
        v439 = *(v438 + 16);
        v440 = sub_1C4418D90();
        v441(v440);
        v442 = v981;
        v99 = v981[40];
        v443 = sub_1C4D86F84();
        sub_1C43FCE50(v443);
        v445 = *(v444 + 16);
        v446 = sub_1C44D0BB4();
        v447(v446);
        v448 = v442[7];
        v449 = v64[9];
        sub_1C4408374();
        sub_1C44F0D58(v450, v451);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EF9AE8();
        sub_1C440EEE0();
        sub_1C4EFF888();
        sub_1C4D86F6C();
        sub_1C441157C();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v844 = v0[2];
          v845 = sub_1C43FCEC0();
          sub_1C44C9240(v845, v846, v847, v0);
          v0 = v848;
        }

        sub_1C440C4FC();
        v333 = v972;
        if (v141)
        {
          v849 = sub_1C4405AF4(v452);
          sub_1C44C9240(v849, v850, v851, v0);
          v0 = v852;
        }

        v0[2] = v2;
        sub_1C43FCC58();
        v454 = *(v453 + 72);
        sub_1C4420AA0();
        sub_1C44D4624(v954, v455, v456);
        v989[0] = v0;
      }
    }

    sub_1C44AB2C8(v981[43]);
    if (v0)
    {
      sub_1C44026DC(v457);
      if (v458)
      {
        v459 = sub_1C4EFF0C8();
        sub_1C43FCE50(v459);
        v461 = *(v460 + 16);
        v462 = sub_1C4418D90();
        v463(v462);
        v464 = v981;
        v99 = v981[42];
        v465 = sub_1C4D86F84();
        sub_1C43FCE50(v465);
        v467 = *(v466 + 16);
        v468 = sub_1C44D0BB4();
        v469(v468);
        v470 = v464[7];
        v471 = v64[9];
        sub_1C4408374();
        sub_1C44F0D58(v472, v473);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EF9AE8();
        sub_1C440EEE0();
        sub_1C4EFF888();
        sub_1C4D86F6C();
        sub_1C441157C();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v853 = v0[2];
          v854 = sub_1C43FCEC0();
          sub_1C44C9240(v854, v855, v856, v0);
          v0 = v857;
        }

        sub_1C440C4FC();
        v333 = v972;
        if (v141)
        {
          v858 = sub_1C4405AF4(v474);
          sub_1C44C9240(v858, v859, v860, v0);
          v0 = v861;
        }

        v0[2] = v2;
        sub_1C43FCC58();
        v476 = *(v475 + 72);
        sub_1C4420AA0();
        sub_1C44D4624(v955, v477, v478);
        v989[0] = v0;
      }
    }

    sub_1C44AB2C8(v981[45]);
    if (v0)
    {
      sub_1C44026DC(v479);
      if (v480)
      {
        v481 = sub_1C4EFF0C8();
        sub_1C43FCE50(v481);
        v483 = *(v482 + 16);
        v484 = sub_1C4418D90();
        v485(v484);
        v486 = v981;
        v99 = v981[44];
        v487 = sub_1C4D86F84();
        sub_1C43FCE50(v487);
        v489 = *(v488 + 16);
        v490 = sub_1C44D0BB4();
        v491(v490);
        v492 = v486[7];
        v493 = v64[9];
        sub_1C4408374();
        sub_1C44F0D58(v494, v495);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EF9AE8();
        sub_1C440EEE0();
        sub_1C4EFF888();
        sub_1C4D86F6C();
        sub_1C441157C();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v862 = v0[2];
          v863 = sub_1C43FCEC0();
          sub_1C44C9240(v863, v864, v865, v0);
          v0 = v866;
        }

        sub_1C440C4FC();
        v333 = v972;
        if (v141)
        {
          v867 = sub_1C4405AF4(v496);
          sub_1C44C9240(v867, v868, v869, v0);
          v0 = v870;
        }

        v0[2] = v2;
        sub_1C43FCC58();
        v498 = *(v497 + 72);
        sub_1C4420AA0();
        sub_1C44D4624(v956, v499, v500);
        v989[0] = v0;
      }
    }

    sub_1C44AB2C8(v981[47]);
    if (v0)
    {
      sub_1C44026DC(v501);
      if (v502)
      {
        v503 = sub_1C4EFF0C8();
        sub_1C43FCE50(v503);
        v505 = *(v504 + 16);
        v506 = sub_1C4418D90();
        v507(v506);
        v508 = v981;
        v99 = v981[46];
        v509 = sub_1C4D86F84();
        sub_1C43FCE50(v509);
        v511 = *(v510 + 16);
        v512 = sub_1C44D0BB4();
        v513(v512);
        v514 = v508[7];
        v515 = v64[9];
        sub_1C4408374();
        sub_1C44F0D58(v516, v517);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EF9AE8();
        sub_1C440EEE0();
        sub_1C4EFF888();
        sub_1C4D86F6C();
        sub_1C441157C();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v871 = v0[2];
          v872 = sub_1C43FCEC0();
          sub_1C44C9240(v872, v873, v874, v0);
          v0 = v875;
        }

        sub_1C440C4FC();
        v333 = v972;
        if (v141)
        {
          v876 = sub_1C4405AF4(v518);
          sub_1C44C9240(v876, v877, v878, v0);
          v0 = v879;
        }

        v0[2] = v2;
        sub_1C43FCC58();
        v520 = *(v519 + 72);
        sub_1C4420AA0();
        sub_1C44D4624(v957, v521, v522);
        v989[0] = v0;
      }
    }

    sub_1C44AB2C8(v981[49]);
    if (v0)
    {
      sub_1C44026DC(v523);
      if (v524)
      {
        v525 = sub_1C4EFF0C8();
        sub_1C43FCE50(v525);
        v527 = *(v526 + 16);
        v528 = sub_1C4418D90();
        v529(v528);
        v530 = v981;
        v99 = v981[48];
        v531 = sub_1C4D86F84();
        sub_1C43FCE50(v531);
        v533 = *(v532 + 16);
        v534 = sub_1C44D0BB4();
        v535(v534);
        v536 = v530[7];
        v537 = v64[9];
        sub_1C4408374();
        sub_1C44F0D58(v538, v539);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EF9AE8();
        sub_1C440EEE0();
        sub_1C4EFF888();
        sub_1C4D86F6C();
        sub_1C441157C();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v880 = v0[2];
          v881 = sub_1C43FCEC0();
          sub_1C44C9240(v881, v882, v883, v0);
          v0 = v884;
        }

        sub_1C440C4FC();
        v333 = v972;
        if (v141)
        {
          v885 = sub_1C4405AF4(v540);
          sub_1C44C9240(v885, v886, v887, v0);
          v0 = v888;
        }

        v0[2] = v2;
        sub_1C43FCC58();
        v542 = *(v541 + 72);
        sub_1C4420AA0();
        sub_1C44D4624(v958, v543, v544);
        v989[0] = v0;
      }
    }

    sub_1C44AB2C8(v981[51]);
    if (v0)
    {
      sub_1C44026DC(v545);
      if (v546)
      {
        v547 = sub_1C4EFF0C8();
        sub_1C43FCE50(v547);
        v549 = *(v548 + 16);
        v550 = sub_1C4418D90();
        v551(v550);
        v552 = v981;
        v99 = v981[50];
        v553 = sub_1C4D86F84();
        sub_1C43FCE50(v553);
        v555 = *(v554 + 16);
        v556 = sub_1C44D0BB4();
        v557(v556);
        v558 = v552[7];
        v559 = v64[9];
        sub_1C4408374();
        sub_1C44F0D58(v560, v561);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EF9AE8();
        sub_1C440EEE0();
        sub_1C4EFF888();
        sub_1C4D86F6C();
        sub_1C441157C();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v889 = v0[2];
          v890 = sub_1C43FCEC0();
          sub_1C44C9240(v890, v891, v892, v0);
          v0 = v893;
        }

        sub_1C440C4FC();
        v333 = v972;
        if (v141)
        {
          v894 = sub_1C4405AF4(v562);
          sub_1C44C9240(v894, v895, v896, v0);
          v0 = v897;
        }

        v0[2] = v2;
        sub_1C43FCC58();
        v564 = *(v563 + 72);
        sub_1C4420AA0();
        sub_1C44D4624(v959, v565, v566);
        v989[0] = v0;
      }
    }

    sub_1C44AB2C8(v981[53]);
    if (v0)
    {
      sub_1C44026DC(v567);
      if (v568)
      {
        v569 = sub_1C4EFF0C8();
        sub_1C43FCE50(v569);
        v571 = *(v570 + 16);
        v572 = sub_1C4418D90();
        v573(v572);
        v574 = v981;
        v99 = v981[52];
        v575 = sub_1C4D86F84();
        sub_1C43FCE50(v575);
        v577 = *(v576 + 16);
        v578 = sub_1C44D0BB4();
        v579(v578);
        v580 = v574[7];
        v581 = v64[9];
        sub_1C4408374();
        sub_1C44F0D58(v582, v583);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EF9AE8();
        sub_1C440EEE0();
        sub_1C4EFF888();
        sub_1C4D86F6C();
        sub_1C441157C();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v898 = v0[2];
          v899 = sub_1C43FCEC0();
          sub_1C44C9240(v899, v900, v901, v0);
          v0 = v902;
        }

        sub_1C440C4FC();
        v333 = v972;
        if (v141)
        {
          v903 = sub_1C4405AF4(v584);
          sub_1C44C9240(v903, v904, v905, v0);
          v0 = v906;
        }

        v0[2] = v2;
        sub_1C43FCC58();
        v586 = *(v585 + 72);
        sub_1C4420AA0();
        sub_1C44D4624(v960, v587, v588);
        v989[0] = v0;
      }
    }

    sub_1C44AB2C8(v981[55]);
    if (v0)
    {
      sub_1C44026DC(v589);
      if (v590)
      {
        v591 = sub_1C4EFF0C8();
        sub_1C43FCE50(v591);
        v593 = *(v592 + 16);
        v594 = sub_1C4418D90();
        v595(v594);
        v596 = v981;
        v99 = v981[54];
        v597 = sub_1C4D86F84();
        sub_1C43FCE50(v597);
        v599 = *(v598 + 16);
        v600 = sub_1C44D0BB4();
        v601(v600);
        v602 = v596[7];
        v603 = v64[9];
        sub_1C4408374();
        sub_1C44F0D58(v604, v605);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EF9AE8();
        sub_1C440EEE0();
        sub_1C4EFF888();
        sub_1C4D86F6C();
        sub_1C441157C();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v907 = v0[2];
          v908 = sub_1C43FCEC0();
          sub_1C44C9240(v908, v909, v910, v0);
          v0 = v911;
        }

        sub_1C440C4FC();
        v333 = v972;
        if (v141)
        {
          v912 = sub_1C4405AF4(v606);
          sub_1C44C9240(v912, v913, v914, v0);
          v0 = v915;
        }

        v0[2] = v2;
        sub_1C43FCC58();
        v608 = *(v607 + 72);
        sub_1C4420AA0();
        sub_1C44D4624(v961, v609, v610);
        v989[0] = v0;
      }
    }

    sub_1C44AB2C8(v981[57]);
    if (v0)
    {
      sub_1C44026DC(v611);
      if (v612)
      {
        v613 = sub_1C4EFF0C8();
        sub_1C43FCE50(v613);
        v615 = *(v614 + 16);
        v616 = sub_1C4418D90();
        v617(v616);
        v618 = v981;
        v99 = v981[56];
        v619 = sub_1C4D86F84();
        sub_1C43FCE50(v619);
        v621 = *(v620 + 16);
        v622 = sub_1C44D0BB4();
        v623(v622);
        v624 = v618[7];
        v625 = v64[9];
        sub_1C4408374();
        sub_1C44F0D58(v626, v627);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EF9AE8();
        sub_1C440EEE0();
        sub_1C4EFF888();
        sub_1C4D86F6C();
        sub_1C441157C();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v916 = v0[2];
          v917 = sub_1C43FCEC0();
          sub_1C44C9240(v917, v918, v919, v0);
          v0 = v920;
        }

        sub_1C440C4FC();
        v333 = v972;
        if (v141)
        {
          v921 = sub_1C4405AF4(v628);
          sub_1C44C9240(v921, v922, v923, v0);
          v0 = v924;
        }

        v0[2] = v2;
        sub_1C43FCC58();
        v630 = *(v629 + 72);
        sub_1C4420AA0();
        sub_1C44D4624(v962, v631, v632);
        v989[0] = v0;
      }
    }

    v95 = *(v982 + v981[58]);
    v8 = v978;
    if (!v95)
    {
      break;
    }

    v633 = 0;
    v96 = *(v95 + 2);
    v2 = v975;
    v0 = v976;
    while (1)
    {
      if (v96 == v633)
      {
        v333 = v972;
        goto LABEL_186;
      }

      if (v633 >= *(v95 + 2))
      {
        break;
      }

      v2 = v973;
      sub_1C43FBF6C();
      v635 = *(v634 + 72);
      sub_1C4D86E80();
      sub_1C44CC80C(v636, v2, v637);
      v983 = v980;
      sub_1C4D87018();
      sub_1C4D71E58();
      if (v334)
      {
        v659 = type metadata accessor for CNContactStructs.IdentifierRelationshipType;
        goto LABEL_198;
      }

      v0 = v638;
      sub_1C442EE4C();
      sub_1C44D474C(v2, v639);
      v99 = v0[2];
      v2 = v989[0];
      v640 = *(v989[0] + 16);
      v8 = v640 + v99;
      if (__OFADD__(v640, v99))
      {
        goto LABEL_248;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || (v642 = *(v2 + 24) >> 1, v642 < v8))
      {
        if (*(v2 + 16) <= v8)
        {
          v643 = v8;
        }

        else
        {
          v643 = *(v2 + 16);
        }

        sub_1C44C9240(isUniquelyReferenced_nonNull_native, v643, 1, v2);
        v2 = v644;
        v642 = *(v644 + 24) >> 1;
      }

      v8 = v978;
      if (v0[2])
      {
        v645 = *(v2 + 16);
        if (v642 - v645 < v99)
        {
          goto LABEL_250;
        }

        v646 = v2 + ((*(v977 + 80) + 32) & ~*(v977 + 80)) + *(v977 + 72) * v645;
        swift_arrayInitWithCopy();

        v0 = v976;
        if (v99)
        {
          v647 = *(v2 + 16);
          v648 = __OFADD__(v647, v99);
          v649 = v647 + v99;
          if (v648)
          {
            goto LABEL_251;
          }

          *(v2 + 16) = v649;
        }
      }

      else
      {

        v0 = v976;
        if (v99)
        {
          goto LABEL_249;
        }
      }

      v989[0] = v2;
      ++v633;
      v2 = v975;
    }

    __break(1u);
LABEL_248:
    __break(1u);
LABEL_249:
    __break(1u);
LABEL_250:
    __break(1u);
LABEL_251:
    __break(1u);
LABEL_252:
    __break(1u);
LABEL_253:
    __break(1u);
LABEL_254:
    __break(1u);
LABEL_255:
    __break(1u);
LABEL_256:
    __break(1u);
LABEL_257:
    __break(1u);
LABEL_258:
    __break(1u);
LABEL_259:
    __break(1u);
LABEL_260:
    sub_1C4401E28();
    sub_1C44C9240(v731, v732, v733, v734);
    v97 = v735;
  }

  v2 = v975;
  v0 = v976;
LABEL_186:
  v95 = v982;
  sub_1C445FFA8(v982 + v981[59], v0, &qword_1EC0BAD38, &unk_1C4F70B40);
  sub_1C440175C(v0, 1, v944);
  if (v650)
  {
    sub_1C4420C3C(v0, &qword_1EC0BAD38, &unk_1C4F70B40);
  }

  else
  {
    sub_1C44D4624(v0, v2, type metadata accessor for CNContactStructs.EmploymentRelationshipType);
    v984 = v980;
    sub_1C4488870();
    v935 = sub_1C4D73960;
    v934 = type metadata accessor for CNContactStructs.Organization;
    sub_1C449F488();
    v651 = sub_1C4409F48();
    sub_1C4D7E0C4(v651, v652, v95, v653, v654, v655, v656, v657, v934, v935, v936, v937, v938, v939, v940, v941, v942, v943, v944, v945, v946, v947, v948);
    if (v334)
    {
      v659 = type metadata accessor for CNContactStructs.EmploymentRelationshipType;
LABEL_198:
      v664 = v659;
      v665 = v2;
LABEL_245:
      sub_1C44D474C(v665, v664);

      goto LABEL_246;
    }

    v0 = v989;
    sub_1C49D3614(v658);
    sub_1C4D86E68();
    sub_1C44D474C(v2, v660);
  }

  sub_1C445FFA8(&v95[v981[60]], v333, &qword_1EC0C6C38, &qword_1C4F70B38);
  v661 = sub_1C440180C();
  sub_1C440175C(v661, v662, v942);
  if (v650)
  {
    sub_1C4420C3C(v333, &qword_1EC0C6C38, &qword_1C4F70B38);
  }

  else
  {
    v2 = v941;
    sub_1C44D4624(v333, v941, type metadata accessor for CNContactStructs.VisualIdentifierRelationshipType);
    v985 = v980;
    sub_1C4409F48();
    sub_1C4D7562C();
    if (v334)
    {
      v659 = type metadata accessor for CNContactStructs.VisualIdentifierRelationshipType;
      goto LABEL_198;
    }

    v0 = v989;
    sub_1C49D3614(v663);
    sub_1C4462528();
    sub_1C44D474C(v2, v666);
  }

  v96 = *&v95[v981[61]];
  if (v96)
  {
    v95 = 0;
    v667 = *(v96 + 16);
    while (1)
    {
      if (v667 == v95)
      {
        v95 = v982;
        goto LABEL_214;
      }

      if (v95 >= *(v96 + 16))
      {
        goto LABEL_252;
      }

      sub_1C43FBF6C();
      sub_1C447E804();
      sub_1C4482D64();
      v0 = v668;
      sub_1C44CC80C(v669, v668, v670);
      v986 = v980;
      sub_1C4D87018();
      sub_1C4D76B7C();
      if (v334)
      {
        break;
      }

      v2 = v671;
      sub_1C440CE6C();
      sub_1C44D474C(v0, v672);
      v99 = *(v2 + 16);
      v673 = *(v989[0] + 16);
      if (__OFADD__(v673, v99))
      {
        goto LABEL_253;
      }

      sub_1C4B60840(v673 + v99, 1);
      v0 = v989[0];
      if (*(v2 + 16))
      {
        v674 = *(v989[0] + 16);
        if ((*(v989[0] + 24) >> 1) - v674 < v99)
        {
          goto LABEL_256;
        }

        v675 = v989[0] + ((*(v977 + 80) + 32) & ~*(v977 + 80)) + *(v977 + 72) * v674;
        swift_arrayInitWithCopy();

        if (v99)
        {
          v676 = v0[2];
          v648 = __OFADD__(v676, v99);
          v677 = v676 + v99;
          if (v648)
          {
            goto LABEL_258;
          }

          v0[2] = v677;
        }
      }

      else
      {

        if (v99)
        {
          goto LABEL_254;
        }
      }

      v989[0] = v0;
      ++v95;
    }

    v684 = type metadata accessor for CNContactStructs.EntityAliasRelationshipType;
    goto LABEL_244;
  }

LABEL_214:
  v99 = *&v95[v981[62]];
  if (v99)
  {
    v96 = 0;
    v95 = *(v99 + 16);
    while (1)
    {
      if (v95 == v96)
      {
        v95 = v982;
        goto LABEL_222;
      }

      if (v96 >= *(v99 + 16))
      {
        goto LABEL_255;
      }

      v0 = v968;
      sub_1C43FBF6C();
      v679 = *(v678 + 72);
      sub_1C44805A4();
      sub_1C44CC80C(v680, v0, v681);
      v987 = v980;
      sub_1C4409F48();
      sub_1C4D783F0();
      if (v334)
      {
        break;
      }

      v2 = v682;
      ++v96;
      sub_1C441D4E4();
      sub_1C44D474C(v0, v683);
      v0 = v989;
      sub_1C49D3614(v2);
    }

    v684 = type metadata accessor for CNContactStructs.AgentAffiliationRelationshipType;
    goto LABEL_244;
  }

LABEL_222:
  v96 = *&v95[v981[63]];
  if (v96)
  {
    v685 = 0;
    v2 = *(v96 + 16);
    v99 = &unk_1C4F175D0;
    while (v2 != v685)
    {
      if (v685 >= *(v96 + 16))
      {
        goto LABEL_257;
      }

      v0 = v966;
      sub_1C43FBF6C();
      sub_1C447E804();
      sub_1C44758A0();
      sub_1C44CC80C(v686, v0, v687);
      v988[0] = v980;
      sub_1C447F738();
      sub_1C4D7E0C4(v8, v979, v95, v988, &qword_1EC0BADB8, &unk_1C4F175D0, type metadata accessor for CNContactStructs.Place, type metadata accessor for CNContactStructs.LocationRelationshipType, type metadata accessor for CNContactStructs.Place, sub_1C4D7D290, v936, v937, v938, v939, v940, v941, v942, v943, v944, v945, v946, v947, v948);
      if (v334)
      {
        v684 = type metadata accessor for CNContactStructs.LocationRelationshipType;
        goto LABEL_244;
      }

      v689 = v688;
      ++v685;
      sub_1C444AE90();
      sub_1C44D474C(v0, v690);
      v0 = v989;
      sub_1C49D3614(v689);
      v95 = v982;
    }
  }

  v691 = v940;
  v99 = *&v95[v981[64]];
  if (v99)
  {
    v96 = 0;
    v95 = *(v99 + 16);
    while (1)
    {
      if (v95 == v96)
      {
        v95 = v982;
        goto LABEL_237;
      }

      if (v96 >= *(v99 + 16))
      {
        goto LABEL_259;
      }

      sub_1C43FBF6C();
      v693 = *(v692 + 72);
      sub_1C44F1A00();
      v0 = v691;
      sub_1C44CC80C(v694, v691, v695);
      v988[1] = v980;
      v696 = sub_1C4D87018();
      sub_1C4D7A0FC(v696, v697, v698, v699, v700, v701, v702, v703, v938, v939, v940, v941, v942, v943, v944, v945, v946, v947, v948, v949);
      if (v334)
      {
        break;
      }

      v2 = v704;
      ++v96;
      sub_1C44401A4();
      sub_1C44D474C(v691, v705);
      v0 = v989;
      sub_1C49D3614(v2);
    }

    v684 = type metadata accessor for CNContactStructs.AddressRelationshipType;
LABEL_244:
    v664 = v684;
    v665 = v0;
    goto LABEL_245;
  }

LABEL_237:
  v706 = v989[0];
  v707 = v939;
  if (*(v989[0] + 16))
  {
    v708 = sub_1C4EFF0C8();
    sub_1C43FCE50(v708);
    v710 = *(v709 + 16);
    v711 = sub_1C4404044();
    v712(v711);
    v713 = v707 + v64[5];
    sub_1C4EFEBB8();
    v714 = v981;
    v715 = &v95[v981[6]];
    v716 = sub_1C4EFD2F8();
    v718 = v717;
    v719 = v714[7];
    v720 = v64[9];
    sub_1C4408374();
    sub_1C44F0D58(v721, v722);
    sub_1C4EF9AE8();
    sub_1C440EEE0();
    sub_1C4EFF888();
    sub_1C4D86F6C();
    v723 = (v707 + v64[8]);
    *v723 = v716;
    v723[1] = v718;
    sub_1C4D86EE8((v707 + v64[10]));
    *(v707 + v724) = v3;
    *(v707 + v64[12]) = v980;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v925 = *(v706 + 16);
      v926 = sub_1C43FCEC0();
      sub_1C44C9240(v926, v927, v928, v706);
      v706 = v929;
    }

    v726 = *(v706 + 16);
    v725 = *(v706 + 24);
    if (v726 >= v725 >> 1)
    {
      v930 = sub_1C43FFD98(v725);
      sub_1C44C9240(v930, v931, v932, v706);
      v706 = v933;
    }

    *(v706 + 16) = v726 + 1;
    sub_1C43FCC58();
    v728 = *(v727 + 72);
    sub_1C4420AA0();
    sub_1C44D4624(v707, v729, v730);
  }

LABEL_246:
  sub_1C4402144();
  sub_1C44109F8();
}

void sub_1C4D71E58()
{
  sub_1C43FE96C();
  v5 = v4;
  v274 = v6;
  v275 = v7;
  v267 = type metadata accessor for EntityTriple(0);
  v8 = sub_1C43FCDF8(v267);
  v276 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBFDC();
  v266 = v12;
  sub_1C43FD1D0();
  v14 = MEMORY[0x1EEE9AC00](v13);
  sub_1C4461E00(v14, v15, v16, v17, v18, v19, v20, v21, v259);
  MEMORY[0x1EEE9AC00](v22);
  sub_1C43FBF38();
  v263 = v23;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v24);
  sub_1C44055D8();
  MEMORY[0x1EEE9AC00](v25);
  sub_1C43FBF38();
  v261 = v26;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v27);
  sub_1C43FD230();
  v260 = v28;
  sub_1C43FBE44();
  v279 = sub_1C4EFD548();
  v29 = sub_1C43FCDF8(v279);
  v277 = v30;
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v29);
  sub_1C43FD2D8();
  v265 = v33;
  sub_1C43FBE44();
  v34 = sub_1C4EFF8A8();
  v35 = sub_1C43FCDF8(v34);
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v35);
  sub_1C440F400();
  v38 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v38);
  v40 = *(v39 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v41);
  sub_1C44042B0();
  v42 = sub_1C4EFEEF8();
  v43 = sub_1C43FCDF8(v42);
  v45 = v44;
  v47 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v43);
  sub_1C43FBCC4();
  sub_1C4422BD8();
  v272 = *v5;
  v48 = v1;
  sub_1C445FFA8(v1, v0, &qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C440175C(v0, 1, v42);
  if (v49)
  {
    sub_1C4420C3C(v0, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C45CF650();
    v50 = sub_1C43FFB2C();
    sub_1C44559D0(v50, v51);
  }

  else
  {
    v270 = v45;
    v273 = v3;
    v52 = v42;
    (*(v45 + 32))(v3, v0, v42);
    v53 = type metadata accessor for CNContactStructs.IdentifierRelationshipType(0);
    (*(v277 + 16))(v265, v1 + v53[5], v279);
    v271 = v2;
    sub_1C4EFF838();
    v278 = v1;
    v54 = (v1 + v53[8]);
    v55 = v54[1];
    if (v55)
    {
      sub_1C4404978(v54);
      v56 = v267;
      if (v57)
      {
        v58 = sub_1C4EFF0C8();
        sub_1C43FCE50(v58);
        (*(v59 + 16))(v260, v274);
        sub_1C4D8717C();
        v60 = *(v48 + 16);
        v60(v260 + v61, v3, v42);
        sub_1C442A554();
        v63(v260 + v62, v2);
        v60(v260 + v267[7], v278 + v53[7], v42);
        v64 = v53[6];
        v65 = v267[9];
        sub_1C4408374();
        v56 = v267;
        sub_1C44CC80C(v278 + v66, v260 + v67, v68);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EF9AE8();
        v69 = (v260 + v267[8]);
        *v69 = v53;
        v69[1] = v55;
        sub_1C44367DC(v275, (v260 + v267[10]));
        *(v260 + v70) = v71;
        *(v260 + v267[12]) = v272;
        v72 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4401EC4(v72, v73, v74, MEMORY[0x1E69E7CC0]);
        v76 = v75;
        v55 = *(v75 + 16);
        v77 = *(v75 + 24);
        sub_1C4424824();
        if (v79)
        {
          v219 = sub_1C43FF640(v78);
          sub_1C44C9240(v219, v220, v221, v76);
          v76 = v222;
        }

        v80 = v276;
        *(v76 + 16) = v53;
        v81 = *(v276 + 80);
        sub_1C43FF9D4();
        v82 = *(v276 + 72);
        sub_1C4420AA0();
        sub_1C44D4624(v260, v83, v84);
      }

      else
      {
        v76 = MEMORY[0x1E69E7CC0];
        v80 = v276;
      }
    }

    else
    {
      v76 = MEMORY[0x1E69E7CC0];
      v80 = v276;
      v56 = v267;
    }

    v85 = v278;
    sub_1C441406C(v53[10]);
    v269 = v52;
    if (v55)
    {
      sub_1C43FF988(v86);
      if (v88)
      {
        v268 = v87;
        v89 = sub_1C4EFF0C8();
        sub_1C43FCE50(v89);
        v91 = *(v90 + 16);
        v92 = sub_1C443F470();
        v93(v92);
        sub_1C4D8717C();
        v95 = sub_1C448F290(v94);
        v278(v95);
        sub_1C442A554();
        v97 = sub_1C449DBB0(v96);
        v98(v97);
        v99 = sub_1C441BF68(v53[9]);
        v278(v99);
        v85 = v278;
        v100 = v53[6];
        v101 = v56[9];
        sub_1C4408374();
        sub_1C4D86FD0(v102, v103);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EF9AE8();
        sub_1C4418DA4();
        *v104 = v268;
        v104[1] = v55;
        sub_1C43FCC6C(v105);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v223 = *(v76 + 16);
          v224 = sub_1C43FCEC0();
          sub_1C44C9240(v224, v225, v226, v76);
          v76 = v227;
        }

        sub_1C441C66C();
        if (v79)
        {
          v228 = sub_1C43FF640(v106);
          sub_1C44C9240(v228, v229, v230, v76);
          v76 = v231;
        }

        *(v76 + 16) = v53;
        v107 = *(v80 + 80);
        sub_1C43FF9D4();
        v108 = *(v80 + 72);
        sub_1C4420AA0();
        sub_1C44D4624(v261, v109, v110);
      }
    }

    sub_1C441406C(v53[12]);
    if (v55)
    {
      sub_1C4404978(v111);
      if (v112)
      {
        v113 = sub_1C4EFF0C8();
        sub_1C43FCE50(v113);
        v115 = *(v114 + 16);
        v116 = sub_1C443F470();
        v117(v116);
        sub_1C4D8717C();
        v119 = sub_1C448F290(v118);
        v85(v119);
        sub_1C442A554();
        v121 = sub_1C449DBB0(v120);
        v122(v121);
        v123 = sub_1C441BF68(v53[11]);
        v85(v123);
        v85 = v278;
        v124 = v53[6];
        v125 = v56[9];
        sub_1C4408374();
        sub_1C4D86FD0(v126, v127);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EF9AE8();
        sub_1C4418DA4();
        *v128 = v53;
        v128[1] = v55;
        sub_1C43FCC6C(v129);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v232 = *(v76 + 16);
          v233 = sub_1C43FCEC0();
          sub_1C44C9240(v233, v234, v235, v76);
          v76 = v236;
        }

        sub_1C441C66C();
        if (v79)
        {
          v237 = sub_1C43FF640(v130);
          sub_1C44C9240(v237, v238, v239, v76);
          v76 = v240;
        }

        *(v76 + 16) = v53;
        v131 = *(v276 + 80);
        sub_1C43FF9D4();
        v132 = *(v276 + 72);
        sub_1C4420AA0();
        sub_1C44D4624(v262, v133, v134);
      }
    }

    sub_1C441406C(v53[14]);
    if (v55)
    {
      sub_1C4404978(v135);
      if (v136)
      {
        v137 = sub_1C4EFF0C8();
        sub_1C43FCE50(v137);
        v139 = *(v138 + 16);
        v140 = sub_1C443F470();
        v141(v140);
        sub_1C4D8717C();
        v143 = sub_1C448F290(v142);
        v85(v143);
        sub_1C442A554();
        v145 = sub_1C449DBB0(v144);
        v146(v145);
        v147 = sub_1C441BF68(v53[13]);
        v85(v147);
        v85 = v278;
        v148 = v53[6];
        v149 = v56[9];
        sub_1C4408374();
        sub_1C4D86FD0(v150, v151);
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4EF9AE8();
        sub_1C4418DA4();
        *v152 = v53;
        v152[1] = v55;
        sub_1C43FCC6C(v153);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v241 = *(v76 + 16);
          v242 = sub_1C43FCEC0();
          sub_1C44C9240(v242, v243, v244, v76);
          v76 = v245;
        }

        sub_1C441C66C();
        if (v79)
        {
          v246 = sub_1C43FF640(v154);
          sub_1C44C9240(v246, v247, v248, v76);
          v76 = v249;
        }

        *(v76 + 16) = v53;
        v155 = *(v276 + 80);
        sub_1C43FF9D4();
        v156 = *(v276 + 72);
        sub_1C4420AA0();
        sub_1C44D4624(v263, v157, v158);
      }
    }

    sub_1C441406C(v53[16]);
    if (v55 && (sub_1C4404978(v159), v160))
    {
      v161 = sub_1C4EFF0C8();
      sub_1C43FCE50(v161);
      v163 = *(v162 + 16);
      v164 = sub_1C443F470();
      v165(v164);
      v166 = sub_1C448F290(v56[5]);
      v85(v166);
      sub_1C442A554();
      v168 = sub_1C449DBB0(v167);
      v169(v168);
      v170 = sub_1C441BF68(v53[15]);
      v85(v170);
      v85 = v278;
      v171 = v53[6];
      v172 = v56[9];
      sub_1C4408374();
      sub_1C4D86FD0(v173, v174);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EF9AE8();
      sub_1C4418DA4();
      *v175 = v53;
      v175[1] = v55;
      sub_1C43FCC6C(v176);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v250 = *(v76 + 16);
        v251 = sub_1C43FCEC0();
        sub_1C44C9240(v251, v252, v253, v76);
        v76 = v254;
      }

      sub_1C441C66C();
      v178 = v270;
      v179 = v271;
      if (v79)
      {
        v255 = sub_1C43FF640(v177);
        sub_1C44C9240(v255, v256, v257, v76);
        v76 = v258;
      }

      *(v76 + 16) = v53;
      sub_1C43FBF6C();
      v181 = *(v180 + 72);
      sub_1C4420AA0();
      sub_1C44D4624(v264, v182, v183);
    }

    else
    {
      v178 = v270;
      v179 = v271;
    }

    if (*(v76 + 16))
    {
      v184 = sub_1C4EFF0C8();
      sub_1C43FCE50(v184);
      (*(v185 + 16))(v266, v274);
      v186 = sub_1C4401940(v56[5]);
      v187(v186, v273, v269);
      sub_1C442A554();
      v189(v266 + v188, v179);
      v190 = v266 + v56[7];
      sub_1C4EFEBB8();
      sub_1C440C668();
      v192 = (v85 + v191);
      sub_1C4EFD2F8();
      sub_1C440D158();
      v193 = v53[6];
      v194 = v56[9];
      sub_1C4408374();
      sub_1C44CC80C(v85 + v195, v266 + v196, v197);
      sub_1C4EF9AE8();
      sub_1C44D4800();
      *v198 = v53;
      v198[1] = v192;
      sub_1C44367DC(v275, (v266 + v56[10]));
      *(v266 + v199) = v200;
      *(v266 + v56[12]) = v272;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v210 = *(v76 + 16);
        v211 = sub_1C43FCEC0();
        sub_1C44C9240(v211, v212, v213, v76);
        v76 = v214;
      }

      sub_1C441C66C();
      if (v79)
      {
        v215 = sub_1C43FF640(v201);
        sub_1C44C9240(v215, v216, v217, v76);
        v76 = v218;
      }

      v202 = sub_1C4485C30();
      v203(v202);
      (*(v178 + 8))(v273, v269);
      *(v76 + 16) = v53;
      sub_1C43FBF6C();
      v205 = *(v204 + 72);
      sub_1C4420AA0();
      sub_1C44D4624(v266, v206, v207);
    }

    else
    {
      v208 = sub_1C4485C30();
      v209(v208);
      (*(v178 + 8))(v273, v269);
    }
  }

  sub_1C4402144();
  sub_1C43FBC80();
}

uint64_t sub_1C4D72990(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7461636964657270 && a2 == 0xE900000000000065;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6C43797469746E65 && a2 == 0xEB00000000737361;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000016 && 0x80000001C4FC7BA0 == a2;
        if (v8 || (sub_1C4F02938() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x696669746E656469 && a2 == 0xEC00000064497265;
          if (v9 || (sub_1C4F02938() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000018 && 0x80000001C4FC7BC0 == a2;
            if (v10 || (sub_1C4F02938() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x696669746E656469 && a2 == 0xEE00657079547265;
              if (v11 || (sub_1C4F02938() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000013 && 0x80000001C4FC8110 == a2;
                if (v12 || (sub_1C4F02938() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x5255656372756F73 && a2 == 0xE90000000000004CLL;
                  if (v13 || (sub_1C4F02938() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD000000000000012 && 0x80000001C4FC8130 == a2;
                    if (v14 || (sub_1C4F02938() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x656D616E72657375 && a2 == 0xE800000000000000;
                      if (v15 || (sub_1C4F02938() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0xD000000000000019 && 0x80000001C4FC8150 == a2;
                        if (v16 || (sub_1C4F02938() & 1) != 0)
                        {

                          return 11;
                        }

                        else if (a1 == 0x69666F7250736168 && a2 == 0xEF6567616D49656CLL)
                        {

                          return 12;
                        }

                        else
                        {
                          v18 = sub_1C4F02938();

                          if (v18)
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

unint64_t sub_1C4D72D8C(char a1)
{
  result = 0x7461636964657270;
  switch(a1)
  {
    case 1:
      result = 0x6C43797469746E65;
      break;
    case 2:
      result = 0x656372756F73;
      break;
    case 3:
      result = 0xD000000000000016;
      break;
    case 4:
    case 6:
      result = 0x696669746E656469;
      break;
    case 5:
      result = 0xD000000000000018;
      break;
    case 7:
      result = 0xD000000000000013;
      break;
    case 8:
      result = 0x5255656372756F73;
      break;
    case 9:
      result = 0xD000000000000012;
      break;
    case 10:
      result = 0x656D616E72657375;
      break;
    case 11:
      result = 0xD000000000000019;
      break;
    case 12:
      result = 0x69666F7250736168;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1C4D72F2C()
{
  sub_1C43FE96C();
  sub_1C44043C4();
  v2 = sub_1C456902C(&qword_1EC0C6DA8, &qword_1C4F71150);
  sub_1C4403200(v2);
  v4 = *(v3 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FE61C();
  sub_1C43FD870();
  sub_1C4D85354();
  sub_1C440F61C();
  sub_1C441D6E4();
  sub_1C4EFEEF8();
  sub_1C4412A4C();
  sub_1C44CD358(v6, v7);
  sub_1C44D7E30();
  sub_1C43FF9BC();
  sub_1C4F02778();
  if (!v0)
  {
    v17 = type metadata accessor for CNContactStructs.IdentifierRelationshipType(0);
    v8 = v17[5];
    sub_1C440CE38();
    sub_1C4EFD548();
    sub_1C4432F18();
    sub_1C44CD358(v9, v10);
    sub_1C44554E4();
    sub_1C43FEF68();
    sub_1C4F027E8();
    v11 = v17[6];
    sub_1C4401FFC();
    type metadata accessor for Source();
    sub_1C440EB5C();
    sub_1C44CD358(v12, v13);
    sub_1C44554E4();
    sub_1C43FEF68();
    sub_1C4F027E8();
    sub_1C4401958(v17);
    sub_1C43FF9BC();
    sub_1C4F027E8();
    sub_1C440C15C((v1 + v17[8]));
    sub_1C4F02738();
    sub_1C4D86E40();
    sub_1C43FF9BC();
    sub_1C4F027E8();
    sub_1C4459C78();
    sub_1C43FBF44();
    sub_1C4F02738();
    sub_1C4409434(v17[11]);
    sub_1C43FBF44();
    sub_1C4F027E8();
    sub_1C4416974();
    sub_1C43FBF44();
    sub_1C4F02738();
    sub_1C4D86EF8();
    sub_1C43FF9BC();
    sub_1C4F027E8();
    sub_1C4D8719C();
    sub_1C4401774(v14);
    sub_1C43FBF44();
    sub_1C4F02738();
    sub_1C4D87028();
    sub_1C43FF9BC();
    sub_1C4F027E8();
    sub_1C4401774(v17[16]);
    sub_1C43FBF44();
    sub_1C4F02738();
  }

  v15 = sub_1C440231C();
  v16(v15);
  sub_1C44103B4();
  sub_1C43FBC80();
}

void sub_1C4D73234(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FE96C();
  a19 = v23;
  a20 = v24;
  v26 = v25;
  v100 = v27;
  v28 = sub_1C4EFEEF8();
  v29 = sub_1C4403200(v28);
  v105 = v30;
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v29);
  sub_1C43FBFDC();
  v101 = v33;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v34);
  sub_1C4461E00(v35, v36, v37, v38, v39, v40, v41, v42, v95);
  MEMORY[0x1EEE9AC00](v43);
  sub_1C441816C();
  MEMORY[0x1EEE9AC00](v44);
  sub_1C44143D0();
  MEMORY[0x1EEE9AC00](v45);
  sub_1C43FD230();
  sub_1C4D86F60(v46);
  v47 = sub_1C456902C(&qword_1EC0B9A08, &unk_1C4F107B0);
  sub_1C43FBD18(v47);
  v49 = *(v48 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v50);
  sub_1C4416C44(v51, v96);
  v108 = sub_1C456902C(&qword_1EC0C6D98, &qword_1C4F71148);
  sub_1C43FCDF8(v108);
  v53 = *(v52 + 64);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v54);
  v56 = sub_1C4425644(v55, v97);
  v57 = type metadata accessor for CNContactStructs.IdentifierRelationshipType(v56);
  v58 = sub_1C43FBCE0(v57);
  v60 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v58);
  v62 = sub_1C4410790(v61, v98);
  v107 = v20;
  sub_1C44A1CA0(v62, v63, v64);
  sub_1C4EFD258();
  v65 = v57[6];
  if (qword_1EDDFED28 != -1)
  {
    sub_1C44133AC();
    swift_once();
  }

  v66 = type metadata accessor for Source();
  sub_1C442B738(v66, &unk_1EDDFD088);
  sub_1C4408374();
  sub_1C44CC80C(v67, v22 + v65, v68);
  sub_1C4D87038();
  sub_1C4EFE558();
  v69 = (v22 + v57[8]);
  *v69 = 0;
  v69[1] = 0;
  v104 = v57[9];
  sub_1C4EFE658();
  v70 = (v22 + v57[10]);
  *v70 = 0;
  v70[1] = 0;
  v103 = v57[11];
  sub_1C4EFEED8();
  v71 = (v22 + v57[12]);
  *v71 = 0;
  v71[1] = 0;
  v102 = v57[13];
  sub_1C4EFEE18();
  v72 = (v22 + v57[14]);
  *v72 = 0;
  v72[1] = 0;
  v73 = v57[15];
  sub_1C4EFE738();
  v109 = v22;
  v74 = (v22 + v57[16]);
  *v74 = 0;
  v74[1] = 0;
  v75 = v26[4];
  sub_1C4417F50(v26, v26[3]);
  sub_1C4D85354();
  sub_1C4D86FE8();
  sub_1C4F02BC8();
  if (!v21)
  {
    v99 = v74;
    sub_1C4412A4C();
    sub_1C44CD358(v76, v77);
    sub_1C4F02658();
    sub_1C444088C(v106, v109, &qword_1EC0B9A08, &unk_1C4F107B0);
    sub_1C441405C();
    sub_1C44151E8();
    sub_1C4F026C8();
    v79 = *(v105 + 40);
    sub_1C4D87170();
    v79();
    sub_1C4428F20();
    v80 = sub_1C440CE84();
    sub_1C44147E8(v80, v81, v69);
    sub_1C44151E8();
    sub_1C4F026C8();
    v82 = sub_1C4D8715C();
    (v79)(v82);
    sub_1C4402044();
    v83 = sub_1C440CE84();
    sub_1C440EEEC(v83, v84, v70);
    sub_1C44151E8();
    sub_1C4F026C8();
    sub_1C447565C(v103);
    sub_1C4D87170();
    v79();
    sub_1C4414078();
    v85 = sub_1C440CE84();
    sub_1C443E4B8(v85, v86, &a18);
    sub_1C43FE79C(9);
    sub_1C44151E8();
    sub_1C4F026C8();
    sub_1C447565C(v102);
    sub_1C4D87170();
    v79();
    v87 = sub_1C440CE84();
    sub_1C443E4B8(v87, v88, &a17);
    sub_1C44151E8();
    sub_1C4F026C8();
    v89 = sub_1C4456A14(&a16);
    (v79)(v89, v101, v107);
    v90 = sub_1C4F02618();
    v92 = v91;
    sub_1C441BF7C();
    v93(v110, v108);
    *v99 = v90;
    v99[1] = v92;
    sub_1C4D86E80();
    sub_1C44CC80C(v109, v100, v94);
  }

  sub_1C440962C(v26);
  sub_1C442EE4C();
  sub_1C44D474C(v109, v78);
  sub_1C43FBC80();
}

uint64_t sub_1C4D73850@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C4D72990(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C4D73878@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C4616EB0();
  *a1 = result;
  return result;
}

uint64_t sub_1C4D738A0(uint64_t a1)
{
  v2 = sub_1C4D85354();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C4D738DC(uint64_t a1)
{
  v2 = sub_1C4D85354();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1C4D73960()
{
  sub_1C43FE628();
  v3 = v1;
  v4 = v0;
  v6 = v5;
  v128 = v7;
  v129 = v8;
  v9 = type metadata accessor for EntityTriple(0);
  v10 = sub_1C43FCDF8(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FBD08();
  v17 = v15 - v16;
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v123 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v123 - v22;
  v127 = *v6;
  v130 = type metadata accessor for CNContactStructs.Organization(0);
  v24 = (v4 + v130[9]);
  v25 = v24[1];
  if (v25 && (sub_1C442EE64(v24), v27))
  {
    v125 = v12;
    v126 = v1;
    v124 = v26;
    v28 = sub_1C4EFF0C8();
    sub_1C43FCE50(v28);
    (*(v29 + 16))(v23, v4);
    v30 = v130;
    v31 = v130[8];
    v32 = v9[5];
    v33 = sub_1C4EFEEF8();
    sub_1C43FCE50(v33);
    (*(v34 + 16))(&v23[v32], v4 + v31);
    v35 = v30[7];
    v36 = v9[9];
    sub_1C4408374();
    sub_1C44CC80C(v4 + v37, &v23[v38], v39);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4EF9AE8();
    sub_1C4416C58();
    sub_1C4EFF888();
    v40 = &v23[v9[7]];
    sub_1C4EFEC38();
    sub_1C4418DA4();
    *v41 = v124;
    v41[1] = v25;
    sub_1C44367DC(v129, &v23[v9[10]]);
    *&v23[v42] = v2;
    v23[v9[12]] = v127;
    v43 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4401EC4(v43, v44, v45, MEMORY[0x1E69E7CC0]);
    v47 = v46;
    v49 = *(v46 + 16);
    v48 = *(v46 + 24);
    if (v49 >= v48 >> 1)
    {
      v110 = sub_1C4405AF4(v48);
      sub_1C44C9240(v110, v111, v112, v47);
      v47 = v113;
    }

    v12 = v125;
    *(v47 + 16) = v49 + 1;
    v50 = *(v12 + 80);
    sub_1C441B18C();
    v51 = *(v12 + 72);
    sub_1C4420AA0();
    sub_1C44D4624(v23, v52, v53);
    v3 = v126;
  }

  else
  {
    v47 = MEMORY[0x1E69E7CC0];
  }

  v54 = (v4 + v130[11]);
  v55 = v54[1];
  if (v55)
  {
    v56 = *v54;
    v57 = HIBYTE(v55) & 0xF;
    if ((v55 & 0x2000000000000000) == 0)
    {
      v57 = v56 & 0xFFFFFFFFFFFFLL;
    }

    if (v57)
    {
      v125 = v12;
      v126 = v3;
      v124 = v56;
      v58 = sub_1C4EFF0C8();
      sub_1C43FCE50(v58);
      (*(v59 + 16))(v21, v4);
      v60 = v130;
      v61 = v130[10];
      v62 = v9[5];
      v63 = sub_1C4EFEEF8();
      sub_1C43FCE50(v63);
      (*(v64 + 16))(&v21[v62], v4 + v61);
      v65 = v60[7];
      v66 = v9[9];
      sub_1C4408374();
      sub_1C44CC80C(v4 + v67, &v21[v68], v69);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C4EF9AE8();
      sub_1C4416C58();
      sub_1C4EFF888();
      v70 = &v21[v9[7]];
      sub_1C4EFEC38();
      v71 = &v21[v9[8]];
      *v71 = v124;
      *(v71 + 1) = v55;
      sub_1C44367DC(v129, &v21[v9[10]]);
      *&v21[v72] = v2;
      v21[v9[12]] = v127;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v114 = *(v47 + 16);
        v115 = sub_1C43FCEC0();
        sub_1C44C9240(v115, v116, v117, v47);
        v47 = v118;
      }

      v74 = *(v47 + 16);
      v73 = *(v47 + 24);
      v12 = v125;
      if (v74 >= v73 >> 1)
      {
        v119 = sub_1C4405AF4(v73);
        sub_1C44C9240(v119, v120, v121, v47);
        v47 = v122;
      }

      *(v47 + 16) = v74 + 1;
      v75 = *(v12 + 80);
      sub_1C441B18C();
      v76 = *(v12 + 72);
      sub_1C4420AA0();
      sub_1C44D4624(v21, v77, v78);
    }
  }

  if (*(v47 + 16))
  {
    v79 = sub_1C4EFF0C8();
    sub_1C43FCE50(v79);
    (*(v80 + 16))(v17, v4);
    v81 = v17 + v9[5];
    sub_1C4EFEBB8();
    v82 = v130;
    v83 = v4 + v130[6];
    v84 = sub_1C4EFD2F8();
    v86 = v85;
    v87 = v82[7];
    v88 = v9[9];
    sub_1C4408374();
    sub_1C44CC80C(v4 + v89, v17 + v90, v91);
    sub_1C4EF9AE8();
    sub_1C4416C58();
    sub_1C4EFF888();
    v92 = v17 + v9[7];
    sub_1C4EFEC38();
    v93 = (v17 + v9[8]);
    *v93 = v84;
    v93[1] = v86;
    sub_1C44367DC(v129, (v17 + v9[10]));
    *(v17 + v94) = v2;
    *(v17 + v9[12]) = v127;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v101 = *(v47 + 16);
      v102 = sub_1C43FCEC0();
      sub_1C44C9240(v102, v103, v104, v47);
      v47 = v105;
    }

    sub_1C440F0B4();
    if (v96)
    {
      v106 = sub_1C43FFD98(v95);
      sub_1C44C9240(v106, v107, v108, v47);
      v47 = v109;
    }

    *(v47 + 16) = v84;
    v97 = *(v12 + 80);
    sub_1C441B18C();
    v98 = *(v12 + 72);
    sub_1C4420AA0();
    sub_1C44D4624(v17, v99, v100);
  }

  sub_1C440EE0C();
  sub_1C44109F8();
}