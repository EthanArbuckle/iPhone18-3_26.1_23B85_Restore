uint64_t sub_1AB0C8E54(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v7 = v2[3];
  v8 = v2[4];
  v15[1] = __swift_project_boxed_opaque_existential_1Tm(v2, v7);
  v10 = v2[5];
  v9 = v2[6];
  (*(v5 + 16))(v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  v11 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v12 = swift_allocObject();
  *(v12 + 2) = v4;
  *(v12 + 3) = v10;
  *(v12 + 4) = v9;
  (*(v5 + 32))(&v12[v11], v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  v13 = *(v8 + 8);

  v13(sub_1AB0C9894, v12, v7, v8);
}

uint64_t sub_1AB0C90A0(void (*a1)(unint64_t *))
{
  v3 = sub_1AB01B220(MEMORY[0x1E69E7CC0]);
  a1(&v3);
}

BOOL sub_1AB0C9104()
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
  }

  return Strong != 0;
}

uint64_t sub_1AB0C9140(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4384A0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v14[-v4 - 8];
  v7 = *a1;
  v6 = a1[1];
  v8 = sub_1AB460BE4();
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  sub_1AB0C92D8(v1, v14);
  sub_1AB460BA4();

  v9 = sub_1AB460B94();
  v10 = swift_allocObject();
  v11 = MEMORY[0x1E69E85E0];
  v10[2] = v9;
  v10[3] = v11;
  sub_1AB0C9310(v14, (v10 + 4));
  v10[5] = v7;
  v10[6] = v6;
  sub_1AB2310D0(0, 0, v5, &unk_1AB4ED2D8, v10);
}

uint64_t sub_1AB0C9290()
{
  swift_unknownObjectRelease();
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

Swift::Void __swiftcall AppMetricsPresenter.didResignActive(using:)(JetEngine::MetricsFieldsContext using)
{
  v2 = v1;
  v4 = sub_1AB460224();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *using.storage._rawValue;
  sub_1AB015664();
  *v7 = sub_1AB461124();
  (*(v5 + 104))(v7, *MEMORY[0x1E69E8020], v4);
  v9 = sub_1AB460244();
  (*(v5 + 8))(v7, v4);
  if ((v9 & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v10 = *(v2 + 224);
  v11 = *(v10 + 16);
  [v11 lock];
  sub_1AB0C9664(v10, 1953069157, 0xE400000000000000);
  [v11 unlock];
  v13 = *(v2 + 232);
  v12 = *(v2 + 240);
  swift_beginAccess();

  v14 = sub_1AB07EF00(1953069157);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436E78);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AB4D4720;
  *(inited + 32) = 0x707954746E657665;
  v16 = inited + 32;
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 40) = 0xE900000000000065;
  *(inited + 48) = 1953069157;
  *(inited + 56) = 0xE400000000000000;
  v17 = sub_1AB01B220(inited);
  swift_setDeallocating();
  sub_1AB014AC0(v16, &qword_1EB439AA0);
  v21[0] = v13;
  v21[1] = v12;
  v22 = v14 & 1;
  v23 = v17;
  v24 = MEMORY[0x1E69E7CD0];
  v25 = MEMORY[0x1E69E7CD0];
  v20 = v8;
  MetricsPipeline.process(_:using:)(v21, &v20);
  swift_bridgeObjectRelease_n();

  v9 = 1;
  *(v2 + 209) = 1;
  if (qword_1EB432698 != -1)
  {
LABEL_5:
    swift_once();
  }

  v18 = off_1EB4326A0;
  os_unfair_lock_lock(off_1EB4326A0 + 5);
  *(v18 + 16) = v9;
  os_unfair_lock_unlock(v18 + 5);
}

uint64_t sub_1AB0C9664(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v4 = *(a1 + 24);
  v5 = *(v4 + 16);

  if (v5)
  {
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
LABEL_3:
    v9 = v7;
    while (v9 < *(v4 + 16))
    {
      v10 = *(v4 + 32 + 8 * v9);
      v11 = *(*v10 + 88);

      if ((v11(v12) & 1) == 0 || (v21[0] = a2, v21[1] = a3, v13 = (*(*v10 + 104))(v21), (v11(v13) & 1) == 0))
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1AB2B0528(0, *(v8 + 2) + 1, 1, v8);
        }

        v15 = *(v8 + 2);
        v14 = *(v8 + 3);
        if (v15 >= v14 >> 1)
        {
          v8 = sub_1AB2B0528((v14 > 1), v15 + 1, 1, v8);
        }

        *(v8 + 2) = v15 + 1;
        *&v8[8 * v15 + 32] = v9;
        v7 = v9 + 1;
        if (v5 - 1 != v9)
        {
          goto LABEL_3;
        }

        goto LABEL_16;
      }

      ++v9;

      if (v5 == v9)
      {
        goto LABEL_16;
      }
    }
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_16:

    v16 = *(v8 + 2);
    if (!v16)
    {
    }

    while (v16 <= *(v8 + 2))
    {
      v17 = v16 - 1;
      v18 = *&v8[8 * v16 + 24];
      swift_beginAccess();
      sub_1AB3C1C18(v18, &v22);
      swift_endAccess();

      v16 = v17;
      if (!v17)
      {
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1AB0C9898(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1AB027554;

  return sub_1AB0C9950(a1, v4);
}

uint64_t sub_1AB0C9950(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_1AB0CF40C;

  return v5(v2 + 32);
}

uint64_t sub_1AB0C9A44(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[5];
  v7 = v1[6];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1AB027460;

  return sub_1AB0C9B08(a1, v4, v5, (v1 + 4), v6, v7);
}

uint64_t sub_1AB0C9B08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a4;
  sub_1AB460BA4();
  v6[6] = sub_1AB460B94();
  v8 = sub_1AB460AE4();

  return MEMORY[0x1EEE6DFA0](sub_1AB0C9BA4, v8, v7);
}

uint64_t sub_1AB0C9BA4()
{
  v6 = v0;

  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = *(v0 + 40);
    v5[0] = *(v0 + 32);
    v5[1] = v2;
    sub_1AB0C9C40(v5);
  }

  **(v0 + 16) = Strong == 0;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1AB0C9C40(uint64_t result)
{
  if (*(v1 + 232) == 1)
  {
    v2 = *result;
    v3 = *(result + 8);
    result = 0x7265746E65;
    v4 = v2 == 0x7265746E65 && v3 == 0xE500000000000000;
    if (v4 || (result = sub_1AB461DA4(), (result & 1) != 0))
    {
      if (*(v1 + 233) == 1)
      {
        v5 = 0x7265746E45707061;
        v6 = 0xE800000000000000;
        _s9JetEngine20PageMetricsPresenterC19processInstructions3for25waitUntilProcessingStartsyAA0cD0V15InvocationPointV_SbtF_0(&v5);

        *(v1 + 233) = 0;
      }
    }

    else if (v2 == 1953069157 && v3 == 0xE400000000000000 || (sub_1AB461DA4() & 1) != 0)
    {
      v5 = 0x74697845707061;
      v6 = 0xE700000000000000;
      _s9JetEngine20PageMetricsPresenterC19processInstructions3for25waitUntilProcessingStartsyAA0cD0V15InvocationPointV_SbtF_0(&v5);

      *(v1 + 233) = 1;
    }

    else
    {
      result = sub_1AB461884();
      __break(1u);
    }
  }

  return result;
}

void _s9JetEngine20PageMetricsPresenterC19processInstructions3for25waitUntilProcessingStartsyAA0cD0V15InvocationPointV_SbtF_0(uint64_t a1)
{
  v5 = v1;
  v7 = sub_1AB460224();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v113 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(a1 + 8);
  *&v119 = *a1;
  *(&v119 + 1) = v11;
  sub_1AB015664();
  *v10 = sub_1AB461124();
  (*(v8 + 104))(v10, *MEMORY[0x1E69E8020], v7);
  v12 = sub_1AB460244();
  (*(v8 + 8))(v10, v7);
  if ((v12 & 1) == 0)
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  v114 = v5;
  v13 = *(v5 + 240);
  os_unfair_lock_lock((v13 + 48));
  v5 = *(v13 + 16);
  v3 = *(v13 + 24);
  v2 = *(v13 + 32);
  v14 = *(v13 + 40);
  sub_1AB0CADDC(v5);
  os_unfair_lock_unlock((v13 + 48));
  if (!v5)
  {
    if (qword_1ED4D1FC0 != -1)
    {
      swift_once();
    }

    v45 = qword_1ED4D1FC8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_1AB4D47F0;
    v127 = sub_1AB0168A8(0, 38, 0, MEMORY[0x1E69E7CC0]);
    v47._countAndFlagsBits = 0;
    v47._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v47);

    *&v120 = sub_1AB4604F4();
    sub_1AB02F088();
    v48 = sub_1AB4607B4();
    v50 = v49;
    swift_getObjectType();
    *&v120 = sub_1AB462314();
    *(&v120 + 1) = v51;
    MEMORY[0x1AC59BA20](7876666, 0xE300000000000000);
    MEMORY[0x1AC59BA20](v48, v50);

    v53 = *(&v120 + 1);
    v52 = v120;
    v54 = MEMORY[0x1E69E6158];
    v126 = MEMORY[0x1E69E6158];

    v125 = __PAIR128__(v53, v52);
    v120 = 0u;
    v121 = 0u;
    sub_1AB0169C4(&v125, &v120);
    LOBYTE(v122) = 0;
    v55 = v127;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v55 = sub_1AB0168A8(0, *(v55 + 2) + 1, 1, v55);
    }

    v57 = *(v55 + 2);
    v56 = *(v55 + 3);
    if (v57 >= v56 >> 1)
    {
      v55 = sub_1AB0168A8((v56 > 1), v57 + 1, 1, v55);
    }

    *(v55 + 2) = v57 + 1;
    v58 = &v55[40 * v57];
    v59 = v120;
    v60 = v121;
    v58[64] = v122;
    *(v58 + 2) = v59;
    *(v58 + 3) = v60;
    v127 = v55;
    v61._countAndFlagsBits = 0xD000000000000023;
    v61._object = 0x80000001AB50A970;
    LogMessage.StringInterpolation.appendLiteral(_:)(v61);
    v126 = &type metadata for PageMetrics.InvocationPoint;
    v125 = v119;
    sub_1AB01522C(&v125, v124);
    v120 = 0u;
    v121 = 0u;

    sub_1AB0169C4(v124, &v120);
    LOBYTE(v122) = 0;
    v62 = v127;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v62 = sub_1AB0168A8(0, *(v62 + 2) + 1, 1, v62);
      v127 = v62;
    }

    v64 = *(v62 + 2);
    v63 = *(v62 + 3);
    if (v64 >= v63 >> 1)
    {
      v62 = sub_1AB0168A8((v63 > 1), v64 + 1, 1, v62);
    }

    *(v62 + 2) = v64 + 1;
    v65 = &v62[40 * v64];
    v66 = v120;
    v67 = v121;
    v65[64] = v122;
    *(v65 + 2) = v66;
    *(v65 + 3) = v67;
    v127 = v62;
    sub_1AB0167A8(&v125);
    v68._countAndFlagsBits = 44;
    v68._object = 0xE100000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v68);
    *(v46 + 32) = v127;
    v69 = 0x80000001AB50A9A0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520);
    v70 = swift_allocObject();
    v71 = v70;
    v70[1] = xmmword_1AB4D4720;
    *(&v121 + 1) = v54;
    *&v120 = 0xD000000000000027;
    goto LABEL_41;
  }

  a1 = &unk_1ED4D1000;
  v4 = &unk_1AB4D4000;
  if (!*(v5 + 16))
  {
    sub_1AB0CAE64(v5);
    if (qword_1ED4D1FC0 != -1)
    {
      swift_once();
    }

    v45 = qword_1ED4D1FC8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_1AB4D47F0;
    v127 = sub_1AB0168A8(0, 38, 0, MEMORY[0x1E69E7CC0]);
    v72._countAndFlagsBits = 0;
    v72._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v72);

    *&v120 = sub_1AB4604F4();
    sub_1AB02F088();
    v73 = sub_1AB4607B4();
    v75 = v74;
    swift_getObjectType();
    *&v120 = sub_1AB462314();
    *(&v120 + 1) = v76;
    MEMORY[0x1AC59BA20](7876666, 0xE300000000000000);
    MEMORY[0x1AC59BA20](v73, v75);

    v78 = *(&v120 + 1);
    v77 = v120;
    v126 = MEMORY[0x1E69E6158];

    v125 = __PAIR128__(v78, v77);
    v120 = 0u;
    v121 = 0u;
    sub_1AB0169C4(&v125, &v120);
    LOBYTE(v122) = 0;
    v79 = v127;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v79 = sub_1AB0168A8(0, *(v79 + 2) + 1, 1, v79);
    }

    v81 = *(v79 + 2);
    v80 = *(v79 + 3);
    if (v81 >= v80 >> 1)
    {
      v79 = sub_1AB0168A8((v80 > 1), v81 + 1, 1, v79);
    }

    *(v79 + 2) = v81 + 1;
    v82 = &v79[40 * v81];
    v83 = v120;
    v84 = v121;
    v82[64] = v122;
    *(v82 + 2) = v83;
    *(v82 + 3) = v84;
    v127 = v79;
    v85._countAndFlagsBits = 0xD000000000000023;
    v85._object = 0x80000001AB50A970;
    LogMessage.StringInterpolation.appendLiteral(_:)(v85);
    v126 = &type metadata for PageMetrics.InvocationPoint;
    v125 = v119;
    sub_1AB01522C(&v125, v124);
    v120 = 0u;
    v121 = 0u;

    sub_1AB0169C4(v124, &v120);
    LOBYTE(v122) = 0;
    v86 = v127;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v86 = sub_1AB0168A8(0, *(v86 + 2) + 1, 1, v86);
      v127 = v86;
    }

    v88 = *(v86 + 2);
    v87 = *(v86 + 3);
    if (v88 >= v87 >> 1)
    {
      v86 = sub_1AB0168A8((v87 > 1), v88 + 1, 1, v86);
    }

    *(v86 + 2) = v88 + 1;
    v89 = &v86[40 * v88];
    v90 = v120;
    v91 = v121;
    v89[64] = v122;
    *(v89 + 2) = v90;
    *(v89 + 3) = v91;
    v127 = v86;
    sub_1AB0167A8(&v125);
    v92._countAndFlagsBits = 44;
    v92._object = 0xE100000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v92);
    *(v46 + 32) = v127;
    v69 = 0x80000001AB50A9F0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520);
    v70 = swift_allocObject();
    v71 = v70;
    v70[1] = xmmword_1AB4D4720;
    *(&v121 + 1) = MEMORY[0x1E69E6158];
    *&v120 = 0xD00000000000001DLL;
LABEL_41:
    *(&v120 + 1) = v69;
    v70[3] = 0u;
    v70[2] = 0u;
    sub_1AB0169C4(&v120, (v70 + 2));
    *(v71 + 64) = 0;
    *(v46 + 40) = v71;
    *&v120 = v45;
    LOBYTE(v125) = 3;
    OSLogger.log(contentsOf:withLevel:)(v46, &v125);

    return;
  }

  v118 = v14;
  if (qword_1ED4D1FC0 != -1)
  {
LABEL_66:
    swift_once();
  }

  v15 = *(a1 + 4040);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
  v16 = swift_allocObject();
  v117 = v4[114];
  *(v16 + 16) = v117;
  v127 = sub_1AB0168A8(0, 31, 0, MEMORY[0x1E69E7CC0]);
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v17);

  *&v120 = sub_1AB4604F4();
  sub_1AB02F088();
  v18 = sub_1AB4607B4();
  v4 = v19;
  swift_getObjectType();
  *&v120 = sub_1AB462314();
  *(&v120 + 1) = v20;
  MEMORY[0x1AC59BA20](7876666, 0xE300000000000000);
  MEMORY[0x1AC59BA20](v18, v4);

  v22 = *(&v120 + 1);
  v21 = v120;
  v126 = MEMORY[0x1E69E6158];

  v125 = __PAIR128__(v22, v21);
  v120 = 0u;
  v121 = 0u;
  sub_1AB0169C4(&v125, &v120);
  LOBYTE(v122) = 0;
  v23 = v127;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v23 = sub_1AB0168A8(0, *(v23 + 2) + 1, 1, v23);
  }

  v25 = *(v23 + 2);
  v24 = *(v23 + 3);
  if (v25 >= v24 >> 1)
  {
    v23 = sub_1AB0168A8((v24 > 1), v25 + 1, 1, v23);
  }

  *(v23 + 2) = v25 + 1;
  v26 = &v23[40 * v25];
  v27 = v120;
  v28 = v121;
  v26[64] = v122;
  *(v26 + 2) = v27;
  *(v26 + 3) = v28;
  v127 = v23;
  v29._object = 0x80000001AB50A9D0;
  v29._countAndFlagsBits = 0xD00000000000001DLL;
  LogMessage.StringInterpolation.appendLiteral(_:)(v29);
  v126 = &type metadata for PageMetrics.InvocationPoint;
  v125 = v119;
  sub_1AB01522C(&v125, v124);
  v120 = 0u;
  v121 = 0u;

  sub_1AB0169C4(v124, &v120);
  LOBYTE(v122) = 0;
  v30 = v127;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v30 = sub_1AB0168A8(0, *(v30 + 2) + 1, 1, v30);
    v127 = v30;
  }

  v32 = *(v30 + 2);
  v31 = *(v30 + 3);
  if (v32 >= v31 >> 1)
  {
    v30 = sub_1AB0168A8((v31 > 1), v32 + 1, 1, v30);
  }

  *(v30 + 2) = v32 + 1;
  v33 = &v30[40 * v32];
  v34 = v120;
  v35 = v121;
  v33[64] = v122;
  *(v33 + 2) = v34;
  *(v33 + 3) = v35;
  v127 = v30;
  sub_1AB0167A8(&v125);
  v36._countAndFlagsBits = 0;
  v36._object = 0xE000000000000000;
  LogMessage.StringInterpolation.appendLiteral(_:)(v36);
  *(v16 + 32) = v127;
  v37 = sub_1AB461094();
  if (os_log_type_enabled(v15, v37))
  {
    if (qword_1EB4359F8 != -1)
    {
      swift_once();
    }

    v38 = off_1EB435A00;
    os_unfair_lock_lock(off_1EB435A00 + 5);
    os_unfair_lock_opaque_low = LOBYTE(v38[4]._os_unfair_lock_opaque);
    os_unfair_lock_unlock(v38 + 5);
    v40 = v5;
    if (os_unfair_lock_opaque_low == 2)
    {
      LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
    }

    v41 = swift_allocObject();
    *(v41 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
    *&v120 = v16;
    *(&v120 + 1) = sub_1AB01A8D8;
    *&v121 = v41;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A00);
    sub_1AB016A34();
    v42 = sub_1AB460484();
    v44 = v43;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A10);
    v4 = swift_allocObject();
    v4[1] = v117;
    *(v4 + 7) = MEMORY[0x1E69E6158];
    *(v4 + 8) = sub_1AB016854();
    *(v4 + 4) = v42;
    *(v4 + 5) = v44;
    sub_1AB45FF14();

    v5 = v40;
  }

  else
  {
  }

  sub_1AB07F7DC();
  v93 = v114;
  swift_beginAccess();
  v94 = *(v93 + 248);
  a1 = "Dispatcher.swift";
  *(&v121 + 1) = &type metadata for ScalarDictionary;
  *&v120 = v2;
  sub_1AB014B78(&v120, &v125);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v127 = v94;
  sub_1AB01AE18(&v125, 0xD000000000000021, 0x80000001AB502A10, isUniquelyReferenced_nonNull_native);
  v96 = v127;

  if (v3)
  {
    a1 = "me type. Returning nil.";
    *(&v121 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436B70);
    *&v120 = v3;
    sub_1AB014B78(&v120, &v125);

    v97 = swift_isUniquelyReferenced_nonNull_native();
    v127 = v96;
    sub_1AB01AE18(&v125, 0xD00000000000001ELL, 0x80000001AB501090, v97);
    v113 = v127;
  }

  else
  {
    v113 = v96;
  }

  sub_1AB0CAE64(v98);
  *&v117 = *(v5 + 16);
  if (v117)
  {
    v99 = 0;
    v115 = v5 + 32;
    v116 = v5;
    while (1)
    {
      if (v99 >= *(v5 + 16))
      {
        __break(1u);
        goto LABEL_65;
      }

      v100 = v115 + 56 * v99;
      v4 = *v100;
      v101 = *(v100 + 8);
      LODWORD(v118) = *(v100 + 16);
      v2 = *(v100 + 24);
      v3 = *(v100 + 32);
      v103 = *(v100 + 40);
      v102 = *(v100 + 48);
      if (!*(v102 + 16))
      {
        break;
      }

      sub_1AB4620A4();

      a1 = *(&v119 + 1);
      v104 = v119;
      sub_1AB460684();
      v105 = sub_1AB462104();
      v106 = v104;
      v107 = -1 << *(v102 + 32);
      v108 = v105 & ~v107;
      if ((*(v102 + 56 + ((v108 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v108))
      {
        v109 = a1;
        a1 = ~v107;
        do
        {
          v110 = (*(v102 + 48) + 16 * v108);
          if (*v110 == v106 && v110[1] == v109)
          {
            goto LABEL_62;
          }

          v112 = sub_1AB461DA4();
          v109 = *(&v119 + 1);
          v106 = v119;
          if (v112)
          {
            goto LABEL_62;
          }

          v108 = (v108 + 1) & a1;
        }

        while (((*(v102 + 56 + ((v108 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v108) & 1) != 0);
      }

LABEL_49:

      ++v99;
      v5 = v116;
      if (v99 == v117)
      {
        goto LABEL_63;
      }
    }

LABEL_62:
    *&v120 = v4;
    *(&v120 + 1) = v101;
    LOBYTE(v121) = v118;
    *(&v121 + 1) = v2;
    v122 = v3;
    v123 = v103;
    a1 = v113;
    *&v125 = v113;

    MetricsPipeline.process(_:using:)(&v120, &v125);

    goto LABEL_49;
  }

LABEL_63:

  sub_1AB0CF1DC();
}

uint64_t sub_1AB0CADDC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1AB0CAE64(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1AB0CAEC4(uint64_t a1)
{
  v2 = *v1;
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EB43B378);
  sub_1AB4603C4();
  sub_1AB01A1F0(sub_1AB0CCE40, v4, v2);
  return v7;
}

uint64_t sub_1AB0CAF68(uint64_t a1, char a2, uint64_t *a3)
{
  v4 = v3;
  v6 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v37 = a2;
  result = sub_1AB461914();
  v8 = result;
  if (*(v6 + 16))
  {
    v36 = v6;
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v22 = v19 | (v9 << 6);
      v23 = (*(v6 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(v6 + 56) + 24 * v22;
      v38 = *v26;
      v27 = *(v26 + 16);
      if ((v37 & 1) == 0)
      {
      }

      sub_1AB4620A4();
      sub_1AB460684();
      result = sub_1AB462104();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = *(v8 + 56) + 24 * v16;
      *v18 = v38;
      *(v18 + 16) = v27;
      ++*(v8 + 16);
      v6 = v36;
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v4 = v3;
      goto LABEL_33;
    }

    v35 = 1 << *(v6 + 32);
    v4 = v3;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v6 + 16) = 0;
  }

LABEL_33:
  *v4 = v8;
  return result;
}

uint64_t sub_1AB0CB220()
{
  v1 = *(v0[3] + 16);
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_1AB091FE0;
  v3 = v0[2];

  return sub_1AB0CB2D4(v3, v1);
}

uint64_t sub_1AB0CB2D4(uint64_t a1, uint64_t a2)
{
  v2[25] = a1;
  v2[26] = a2;
  v3 = type metadata accessor for PageIntentInstrumentation();
  v2[27] = v3;
  v2[28] = *(v3 - 8);
  v2[29] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AB0CB394, 0, 0);
}

uint64_t sub_1AB0CB394()
{
  if (!*(*(v0 + 208) + 16) || (v1 = sub_1AB016558(*(v0 + 216)), (v2 & 1) == 0))
  {
    if (qword_1ED4D19F0 != -1)
    {
      swift_once();
    }

    v6 = off_1ED4D19F8;
    v7 = *(off_1ED4D19F8 + 2);

    if (!v7)
    {
      goto LABEL_15;
    }

    v8 = 0;
    while (1)
    {
      *(v0 + 128) = v6[v8 + 2];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436590);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436620);
      result = swift_dynamicCast();
      if (result)
      {
        if (*(v0 + 112))
        {
          break;
        }
      }

      if (v7 == ++v8)
      {
        v8 = v7;
        break;
      }
    }

    v10 = *(v6 + 2);
    if (v8 == v10)
    {
LABEL_15:
      v11 = *(v0 + 216);
      v12 = *(v0 + 224);
      v13 = *(v0 + 200);

      (*(v12 + 56))(v13, 1, 1, v11);
LABEL_25:

      v23 = *(v0 + 8);

      return v23();
    }

    if (v8 >= v10)
    {
      __break(1u);
    }

    else
    {
      *(v0 + 160) = v6[v8 + 2];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436590);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436620);
      result = swift_dynamicCast();
      if (result)
      {
        v14 = *(v0 + 144);
        if (v14)
        {
          v15 = *(v0 + 152);

          v16 = swift_task_alloc();
          *(v0 + 240) = v16;
          *v16 = v0;
          v16[1] = sub_1AB343AD8;
          v17 = *(v0 + 208);
          v18 = *(v0 + 216);
          v19 = *(v0 + 200);

          return sub_1AB0AB648(v19, v14, v17, v18, v14, v15);
        }
      }
    }

    __break(1u);
    return result;
  }

  sub_1AB0165C4(*(*(v0 + 208) + 56) + 32 * v1, v0 + 48);
  sub_1AB014B78((v0 + 48), (v0 + 16));
  sub_1AB0165C4(v0 + 16, v0 + 80);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 224);
    v4 = *(v0 + 216);
    v5 = *(v0 + 200);
    sub_1AB342038(*(v0 + 232), v5, type metadata accessor for PageIntentInstrumentation);
    (*(v3 + 56))(v5, 0, 1, v4);
LABEL_24:
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 80);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
    goto LABEL_25;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436628);
  if (swift_dynamicCast())
  {
    v20 = *(v0 + 216);
    v21 = *(v0 + 224);
    v22 = *(v0 + 200);
    sub_1AB131AAC();

    (*(v21 + 56))(v22, 0, 1, v20);
    goto LABEL_24;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436630);
  if (swift_dynamicCast())
  {
    sub_1AB1334E8();
    (*(*(v0 + 224) + 56))(*(v0 + 200), 0, 1, *(v0 + 216));

    goto LABEL_24;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AFD0);
  if (swift_dynamicCast())
  {
    *(v0 + 248) = *(v0 + 192);
    v24 = swift_task_alloc();
    *(v0 + 256) = v24;
    *v24 = v0;
    v24[1] = sub_1AB32A60C;
    v25 = *(v0 + 200);

    return sub_1AB33E84C(v25);
  }

  else
  {
    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0x60207463656A624FLL, 0xE800000000000000);
    __swift_project_boxed_opaque_existential_1Tm((v0 + 16), *(v0 + 40));
    sub_1AB461D64();
    MEMORY[0x1AC59BA20](0x3C20726F662060, 0xE700000000000000);
    MEMORY[0x1AC59BA20](0xD000000000000019, 0x80000001AB4FF030);
    MEMORY[0x1AC59BA20](0xD000000000000016, 0x80000001AB4FEF10);
    return sub_1AB461884();
  }
}

uint64_t sub_1AB0CB9CC()
{
  *(*v1 + 576) = v0;

  if (v0)
  {
    v2 = sub_1AB2192A0;
  }

  else
  {
    v2 = sub_1AB0CBAE0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AB0CBAE0()
{
  v1 = v0[65];
  v2 = v0[64];
  v3 = *(v0[66] + 48);
  if (v3(v2, 1, v1) == 1)
  {
    swift_storeEnumTagMultiPayload();
    if (v3(v2, 1, v1) != 1)
    {
      sub_1AB014AC0(v0[64], qword_1EB43D2B0);
    }
  }

  else
  {
    sub_1AB053FFC(v2, v0[69], type metadata accessor for PageIntentInstrumentation);
  }

  v4 = v0[72];
  v5 = v0[62];
  v7 = v0[47];
  v6 = v0[48];
  (*(v0[61] + 16))(v5, v0[45], v7);
  sub_1AB0CD2A4(v5, v7, v6, (v0 + 20));
  if (v4)
  {
    sub_1AB04A54C(v0[69], type metadata accessor for PageIntentInstrumentation);

    v8 = v0[1];

    return v8();
  }

  else
  {
    v0[42] = v0[46];
    v10 = swift_task_alloc();
    v0[73] = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438A38);
    *v10 = v0;
    v10[1] = sub_1AB0CBE8C;
    v11 = v0[46];

    return MEMORY[0x1EEE6DE98](v0 + 39, v0 + 42, &unk_1AB4DEFE0, v11, 0, 0, 0xD00000000000001FLL, 0x80000001AB4FEE90);
  }
}

_OWORD *sub_1AB0CBDB8(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

uint64_t sub_1AB0CBDD0(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1AB027460;

  return sub_1AB0CBE6C(a1, v1);
}

uint64_t sub_1AB0CBE6C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1AB0CDE50, 0, 0);
}

uint64_t sub_1AB0CBE8C()
{
  *(*v1 + 592) = v0;

  if (v0)
  {
    v2 = sub_1AB21939C;
  }

  else
  {
    v2 = sub_1AB0CDB8C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AB0CBFA0(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1AB027554;

  return sub_1AB0CE028(a1, v1);
}

uint64_t sub_1AB0CC03C()
{
  v1 = *(v0[3] + 16);
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_1AB091FE0;
  v3 = v0[2];

  return sub_1AB0CC66C(v3, v1);
}

uint64_t sub_1AB0CC0F0()
{
  if (!*(*(v0 + 248) + 16) || (v1 = sub_1AB016558(*(v0 + 256)), (v2 & 1) == 0))
  {
    if (qword_1ED4D19F0 != -1)
    {
      swift_once();
    }

    v3 = off_1ED4D19F8;
    v4 = *(off_1ED4D19F8 + 2);

    if (!v4)
    {
      goto LABEL_15;
    }

    v5 = 0;
    while (1)
    {
      *(v0 + 168) = v3[v5 + 2];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436590);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AF98);
      result = swift_dynamicCast();
      if (result)
      {
        if (*(v0 + 152))
        {
          break;
        }
      }

      if (v4 == ++v5)
      {
        v5 = v4;
        break;
      }
    }

    v7 = *(v3 + 2);
    if (v5 == v7)
    {
LABEL_15:
      v8 = *(v0 + 240);

      *(v8 + 32) = 0;
      *v8 = 0u;
      *(v8 + 16) = 0u;
LABEL_25:
      v15 = *(v0 + 8);

      return v15();
    }

    if (v5 >= v7)
    {
      __break(1u);
    }

    else
    {
      *(v0 + 200) = v3[v5 + 2];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436590);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AF98);
      result = swift_dynamicCast();
      if (result)
      {
        v9 = *(v0 + 184);
        if (v9)
        {
          v10 = *(v0 + 192);

          v11 = swift_task_alloc();
          *(v0 + 264) = v11;
          *v11 = v0;
          v11[1] = sub_1AB343AA0;
          v12 = *(v0 + 248);
          v13 = *(v0 + 256);
          v14 = *(v0 + 240);

          return sub_1AB0AB648(v14, v9, v12, v13, v9, v10);
        }
      }
    }

    __break(1u);
    return result;
  }

  sub_1AB0165C4(*(*(v0 + 248) + 56) + 32 * v1, v0 + 88);
  sub_1AB014B78((v0 + 88), (v0 + 56));
  sub_1AB0165C4(v0 + 56, v0 + 120);
  if (swift_dynamicCast())
  {
    sub_1AB0149B0((v0 + 16), *(v0 + 240));
LABEL_24:
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 120);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 56);
    goto LABEL_25;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AFA0);
  if (swift_dynamicCast())
  {
    sub_1AB1318F0();

    goto LABEL_24;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AFA8);
  if (swift_dynamicCast())
  {
    sub_1AB133328();

    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 120);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 56);
    goto LABEL_25;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AFB0);
  if (swift_dynamicCast())
  {
    *(v0 + 272) = *(v0 + 232);
    v16 = swift_task_alloc();
    *(v0 + 280) = v16;
    *v16 = v0;
    v16[1] = sub_1AB32A200;
    v17 = *(v0 + 240);

    return sub_1AB33E1B8(v17);
  }

  else
  {
    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0x60207463656A624FLL, 0xE800000000000000);
    __swift_project_boxed_opaque_existential_1Tm((v0 + 56), *(v0 + 80));
    sub_1AB461D64();
    MEMORY[0x1AC59BA20](0x3C20726F662060, 0xE700000000000000);
    MEMORY[0x1AC59BA20](0xD000000000000021, 0x80000001AB4FF090);
    MEMORY[0x1AC59BA20](0xD000000000000016, 0x80000001AB4FEF10);
    return sub_1AB461884();
  }
}

uint64_t sub_1AB0CC66C(uint64_t a1, uint64_t a2)
{
  v2[30] = a1;
  v2[31] = a2;
  v2[32] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436690);

  return MEMORY[0x1EEE6DFA0](sub_1AB0CC0F0, 0, 0);
}

uint64_t sub_1AB0CC6E8()
{
  *(*v1 + 624) = v0;

  if (v0)
  {

    v2 = sub_1AB2194BC;
  }

  else
  {
    v2 = sub_1AB0CFB18;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AB0CC804()
{
  v1 = *v0;

  return v1;
}

uint64_t AnyActionTypes.init<A>(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v5 = a2;
  v70 = a4;
  v7 = *(a2 - 8);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v73 = &v69 - v11;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB43B370);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v82 = sub_1AB461354();
  v13 = *(v82 - 8);
  v14 = MEMORY[0x1EEE9AC00](v82);
  v84 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v83 = &v69 - v16;
  v91 = *a1;
  v79 = a3;
  v17 = type metadata accessor for ActionTypes();
  v18 = sub_1AB0CAEC4(v17);

  v19 = 0;
  v20 = *(v18 + 64);
  v71 = v18 + 64;
  v75 = v18;
  v21 = 1 << *(v18 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & v20;
  v24 = (v21 + 63) >> 6;
  v81 = TupleTypeMetadata2 - 8;
  v72 = v7 + 16;
  v85 = (v7 + 32);
  v80 = (v13 + 32);
  v74 = v7;
  v78 = (v7 + 8);
  v25 = MEMORY[0x1E69E7CC8];
  v76 = v24;
  v77 = TupleTypeMetadata2;
  while (v23)
  {
    v28 = v19;
LABEL_15:
    v33 = __clz(__rbit64(v23));
    v23 &= v23 - 1;
    v34 = v33 | (v28 << 6);
    v36 = v74;
    v35 = v75;
    v37 = v73;
    (*(v74 + 16))(v73, *(v75 + 48) + *(v74 + 72) * v34, v5);
    v38 = *(v35 + 56) + 24 * v34;
    v39 = *(v38 + 16);
    v40 = &v84[*(TupleTypeMetadata2 + 48)];
    v41 = *(v36 + 32);
    v32 = v84;
    v89 = *v38;
    v41(v84, v37, v5);
    v42 = 0;
    *v40 = v89;
    *(v40 + 2) = v39;
    v30 = v28;
    v31 = v83;
LABEL_16:
    v43 = *(TupleTypeMetadata2 - 8);
    (*(v43 + 56))(v32, v42, 1, TupleTypeMetadata2);
    (*v80)(v31, v32, v82);
    if ((*(v43 + 48))(v31, 1, TupleTypeMetadata2) == 1)
    {

      v68 = v70;
      *v70 = v25;
      v68[1] = 0;
      return result;
    }

    v44 = &v31[*(TupleTypeMetadata2 + 48)];
    v46 = *v44;
    v45 = *(v44 + 1);
    v86 = v30;
    v87 = v46;
    v47 = *(v44 + 2);
    v88 = v45;
    *&v89 = v47;
    (*v85)(v10, v31, v5);
    v48 = v10;
    v49 = v5;
    sub_1AB4608B4();
    v50 = v91;
    v51 = v92;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v90 = v25;
    v54 = sub_1AB014DB4(v50, v51);
    v55 = v25[2];
    v56 = (v53 & 1) == 0;
    v57 = v55 + v56;
    if (__OFADD__(v55, v56))
    {
      goto LABEL_31;
    }

    v58 = v53;
    if (v25[3] >= v57)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v5 = v49;
        if (v53)
        {
          goto LABEL_4;
        }
      }

      else
      {
        sub_1AB1D970C();
        v5 = v49;
        if (v58)
        {
          goto LABEL_4;
        }
      }
    }

    else
    {
      sub_1AB0CAE40(v57, isUniquelyReferenced_nonNull_native);
      v59 = sub_1AB014DB4(v50, v51);
      if ((v58 & 1) != (v60 & 1))
      {
        goto LABEL_33;
      }

      v54 = v59;
      v5 = v49;
      if (v58)
      {
LABEL_4:

        v25 = v90;
        v26 = (v90[7] + 24 * v54);
        v27 = v88;
        *v26 = v87;
        v26[1] = v27;
        v26[2] = v89;
        v10 = v48;
        (*v78)(v48, v5);
        goto LABEL_5;
      }
    }

    v25 = v90;
    v90[(v54 >> 6) + 8] |= 1 << v54;
    v61 = (v25[6] + 16 * v54);
    *v61 = v50;
    v61[1] = v51;
    v62 = (v25[7] + 24 * v54);
    v63 = v88;
    *v62 = v87;
    v62[1] = v63;
    v62[2] = v89;
    v10 = v48;
    (*v78)(v48, v5);
    v64 = v25[2];
    v65 = __OFADD__(v64, 1);
    v66 = v64 + 1;
    if (v65)
    {
      goto LABEL_32;
    }

    v25[2] = v66;
LABEL_5:
    v19 = v86;
    v24 = v76;
    TupleTypeMetadata2 = v77;
  }

  if (v24 <= v19 + 1)
  {
    v29 = v19 + 1;
  }

  else
  {
    v29 = v24;
  }

  v30 = v29 - 1;
  v31 = v83;
  v32 = v84;
  while (1)
  {
    v28 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v28 >= v24)
    {
      v23 = 0;
      v42 = 1;
      goto LABEL_16;
    }

    v23 = *(v71 + 8 * v28);
    ++v19;
    if (v23)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  result = sub_1AB461FC4();
  __break(1u);
  return result;
}

uint64_t sub_1AB0CCE60()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[8];
  static StaticIntent._unwrapData<A>(of:)(v3, v0[5], v0[6], v1);
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    (*(v0[10] + 8))(v0[11], v0[9]);
    v4 = swift_task_alloc();
    v0[14] = v4;
    *v4 = v0;
    v4[1] = sub_1AB0C6B88;
    v5 = v0[6];
    v6 = v0[4];
    v7 = v0[5];
    v8 = v0[2];
    v9 = v0[3];

    return sub_1AB0CCFF4(v8, v9, v6, v7, v5);
  }

  else
  {
    v11 = v0[13];
    v12 = v0[8];
    v13 = v0[2];
    v14 = *(v0[12] + 32);
    v14(v11, v0[11], v12);
    v14(v13, v11, v12);

    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_1AB0CCFF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[48] = a5;
  v6[49] = v5;
  v6[46] = a3;
  v6[47] = a4;
  v6[44] = a1;
  v6[45] = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6[50] = AssociatedTypeWitness;
  v6[51] = *(AssociatedTypeWitness - 8);
  v6[52] = swift_task_alloc();
  v6[53] = type metadata accessor for JSResponse();
  v6[54] = swift_task_alloc();
  v6[55] = swift_task_alloc();
  v6[56] = type metadata accessor for PageRenderEvent();
  v6[57] = swift_task_alloc();
  v6[58] = swift_task_alloc();
  v6[59] = type metadata accessor for JSStack.DecoratedIntent();
  v6[60] = swift_task_alloc();
  v6[61] = *(a4 - 8);
  v6[62] = swift_task_alloc();
  v6[63] = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB43D2B0);
  v6[64] = swift_task_alloc();
  v9 = type metadata accessor for PageIntentInstrumentation();
  v6[65] = v9;
  v6[66] = *(v9 - 8);
  v6[67] = swift_task_alloc();
  v6[68] = swift_task_alloc();
  v6[69] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AB0CDF04, 0, 0);
}

uint64_t sub_1AB0CD284(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1AB0CB220, 0, 0);
}

uint64_t sub_1AB0CD2A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(a3 + 40))(v12, a2, a3);
  v12[6] = swift_getAssociatedTypeWitness();
  swift_getExtendedExistentialTypeMetadata();
  if (swift_dynamicCast())
  {
    (*(*(a2 - 8) + 8))(a1, a2);
    v7 = v10[1];
    *a4 = v10[0];
    *(a4 + 16) = v7;
    *(a4 + 32) = v11[0];
    *(a4 + 41) = *(v11 + 9);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43D688);
    if (swift_dynamicCast())
    {
      (*(*(a2 - 8) + 8))(a1, a2);
      sub_1AB0CBDB8(v10, a4);
      *(a4 + 48) = 0;
      *(a4 + 56) = 1;
    }

    else
    {
      sub_1AB24F240();
      swift_allocError();
      *v8 = 2;
      swift_willThrow();
      (*(*(a2 - 8) + 8))(a1, a2);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v12);
}

uint64_t sub_1AB0CD4A8(uint64_t a1, uint64_t a2)
{
  *(v2 + 216) = a1;
  *(v2 + 224) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1AB0CD4C8, 0, 0);
}

uint64_t sub_1AB0CD4C8()
{
  if (!*(*(v0 + 224) + 16) || (v1 = sub_1AB016558(&type metadata for IntentDispatchTimeout), (v2 & 1) == 0))
  {
    if (qword_1ED4D19F0 != -1)
    {
      swift_once();
    }

    v5 = off_1ED4D19F8;
    v6 = *(off_1ED4D19F8 + 2);

    if (!v6)
    {
      goto LABEL_15;
    }

    v7 = 0;
    while (1)
    {
      *(v0 + 128) = v5[v7 + 2];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436590);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436648);
      result = swift_dynamicCast();
      if (result)
      {
        if (*(v0 + 112))
        {
          break;
        }
      }

      if (v6 == ++v7)
      {
        v7 = v6;
        break;
      }
    }

    v9 = *(v5 + 2);
    if (v7 == v9)
    {
LABEL_15:
      v10 = *(v0 + 216);

      *v10 = 0;
      *(v10 + 8) = 256;
LABEL_25:
      v17 = *(v0 + 8);

      return v17();
    }

    if (v7 >= v9)
    {
      __break(1u);
    }

    else
    {
      *(v0 + 160) = v5[v7 + 2];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436590);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436648);
      result = swift_dynamicCast();
      if (result)
      {
        v11 = *(v0 + 144);
        if (v11)
        {
          v12 = *(v0 + 152);

          v13 = swift_task_alloc();
          *(v0 + 232) = v13;
          *v13 = v0;
          v13[1] = sub_1AB32A314;
          v14 = *(v0 + 216);
          v15 = *(v0 + 224);

          return sub_1AB0AB648(v14, v11, v15, &type metadata for IntentDispatchTimeout, v11, v12);
        }
      }
    }

    __break(1u);
    return result;
  }

  sub_1AB0165C4(*(*(v0 + 224) + 56) + 32 * v1, v0 + 48);
  sub_1AB014B78((v0 + 48), (v0 + 16));
  sub_1AB0165C4(v0 + 16, v0 + 80);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 216);
    v4 = *(v0 + 184);
    *v3 = *(v0 + 176);
    *(v3 + 8) = v4;
LABEL_24:
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 80);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
    goto LABEL_25;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436650);
  if (swift_dynamicCast())
  {
    v16 = *(v0 + 216);
    sub_1AB131918(v16);

    *(v16 + 9) = 0;
    goto LABEL_24;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436658);
  if (swift_dynamicCast())
  {
    sub_1AB133364(*(v0 + 216));
    *(*(v0 + 216) + 9) = 0;

    goto LABEL_24;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AFC0);
  if (swift_dynamicCast())
  {
    *(v0 + 240) = *(v0 + 208);
    v18 = swift_task_alloc();
    *(v0 + 248) = v18;
    *v18 = v0;
    v18[1] = sub_1AB32A408;
    v19 = *(v0 + 216);

    return sub_1AB33E4CC(v19);
  }

  else
  {
    sub_1AB4615D4();
    MEMORY[0x1AC59BA20](0x60207463656A624FLL, 0xE800000000000000);
    __swift_project_boxed_opaque_existential_1Tm((v0 + 16), *(v0 + 40));
    sub_1AB461D64();
    MEMORY[0x1AC59BA20](0x3C20726F662060, 0xE700000000000000);
    MEMORY[0x1AC59BA20](0xD000000000000015, 0x80000001AB4FF050);
    MEMORY[0x1AC59BA20](0xD000000000000016, 0x80000001AB4FEF10);
    return sub_1AB461884();
  }
}

uint64_t sub_1AB0CDA8C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1AB027554;

  return sub_1AB0CD284(a1, v1);
}

uint64_t sub_1AB0CDB28(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1AB0CDB8C()
{
  if ((*(v0 + 321) & 1) == 0 && (*(v0 + 320) & 1) == 0)
  {
    *(v0 + 208) = *(v0 + 312);
    *(v0 + 216) = 0;
  }

  v1 = *(v0 + 552);
  v2 = *(v0 + 544);
  v3 = *(v0 + 472);
  v4 = *(v0 + 480);
  sub_1AB0CDB28(v0 + 160, v0 + 224);
  sub_1AB053F94(v1, v4 + *(v3 + 24), type metadata accessor for PageIntentInstrumentation);
  v21 = *(v0 + 248);
  v5 = *(v0 + 248);
  v6 = __swift_project_boxed_opaque_existential_1Tm((v0 + 224), v5);
  *(v4 + 24) = v21;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v4);
  (*(*(v5 - 8) + 16))(boxed_opaque_existential_0, v6, v5);
  v8 = *(v0 + 248);
  v9 = *(v0 + 264);
  __swift_project_boxed_opaque_existential_1Tm((v0 + 224), v8);
  *(v4 + 40) = (*(v9 + 32))(v8, v9);
  *(v4 + 48) = v10;
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 224);
  sub_1AB053F94(v1, v2, type metadata accessor for PageIntentInstrumentation);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v12 = *(v0 + 544);
  if (EnumCaseMultiPayload)
  {
    sub_1AB04A54C(v12, type metadata accessor for PageIntentInstrumentation);
    v13 = 0;
    v14 = 0;
  }

  else
  {
    v15 = *(v0 + 464);
    v16 = *(v0 + 448);
    sub_1AB053FFC(v12, v15, type metadata accessor for PageRenderEvent);
    v17 = (v15 + *(v16 + 24));
    v13 = *v17;
    v14 = v17[1];

    sub_1AB04A54C(v15, type metadata accessor for PageRenderEvent);
  }

  *(v0 + 608) = v14;
  *(v0 + 600) = v13;
  *(v0 + 344) = *(v0 + 368);
  v18 = swift_task_alloc();
  *(v0 + 616) = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4389E0);
  *v18 = v0;
  v18[1] = sub_1AB0CC6E8;
  v19 = *(v0 + 368);

  return MEMORY[0x1EEE6DE98](v0 + 272, v0 + 344, &unk_1AB4DEFF0, v19, 0, 0, 0xD00000000000001FLL, 0x80000001AB4FEE90);
}

uint64_t sub_1AB0CDE50()
{
  v1 = *(v0[3] + 16);
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_1AB091FE0;
  v3 = v0[2];

  return sub_1AB0CD4A8(v3, v1);
}

uint64_t sub_1AB0CDF04()
{
  if (qword_1EB4359B0 != -1)
  {
    swift_once();
  }

  v1 = v0[46];
  v0[70] = qword_1EB4359A0;
  v0[41] = v1;
  v2 = swift_task_alloc();
  v0[71] = v2;
  *v2 = v0;
  v2[1] = sub_1AB0CB9CC;
  v3 = v0[64];
  v4 = v0[46];

  return MEMORY[0x1EEE6DE98](v3, v0 + 41, &unk_1AB4DEFD8, v4, 0, 0, 0xD00000000000001FLL, 0x80000001AB4FEE90);
}

uint64_t sub_1AB0CE028(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1AB0CC03C, 0, 0);
}

void sub_1AB0CE048(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v5 = *v2;
  v4 = v3;
  ImpressionsMetricsFieldsProvider.addMetricsFields(into:using:)(a1, &v4);
}

void ImpressionsMetricsFieldsProvider.addMetricsFields(into:using:)(uint64_t a1, uint64_t *a2)
{
  v5 = sub_1AB45F9B4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a2;
  v10 = *v2;
  if (!sub_1AB0CE6D8(0xD000000000000026, 0x80000001AB500E60, *a2))
  {
    sub_1AB1A52C8(0xD000000000000026, 0x80000001AB500E90, v9, &v35);
    if (!v35)
    {
      if (qword_1EB433A00 != -1)
      {
        swift_once();
      }

      if ((byte_1EB432CF0 & 1) == 0)
      {
        sub_1AB407D2C("JetEngine/ImpressionsMetricsFieldsProvider.swift", 0x30uLL, 2, 0x24uLL);
        return;
      }
    }

    sub_1AB1A52C8(0xD000000000000026, 0x80000001AB500E90, v9, &v35);
    if (v35 == 1)
    {
      if (qword_1ED4D1FC0 != -1)
      {
        swift_once();
      }

      v24 = qword_1ED4D1FC8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_1AB4D47F0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520);
      v26 = swift_allocObject();
      v34 = xmmword_1AB4D4720;
      *(v26 + 16) = xmmword_1AB4D4720;
      v27 = MEMORY[0x1E69E6158];
      v37 = MEMORY[0x1E69E6158];
      v35 = 0xD000000000000055;
      v36 = 0x80000001AB500F50;
      *(v26 + 48) = 0u;
      *(v26 + 32) = 0u;
      sub_1AB0169C4(&v35, v26 + 32);
      *(v26 + 64) = 0;
      *(v25 + 32) = v26;
      v28 = swift_allocObject();
      *(v28 + 16) = v34;
      v37 = v27;
      v35 = 0xD000000000000043;
      v36 = 0x80000001AB500FB0;
      *(v28 + 48) = 0u;
      *(v28 + 32) = 0u;
      sub_1AB0169C4(&v35, v28 + 32);
      *(v28 + 64) = 0;
      *(v25 + 40) = v28;
    }

    else
    {
      sub_1AB1A52C8(0xD000000000000026, 0x80000001AB500E90, v9, &v35);
      if (v35 != 2)
      {
        return;
      }

      if (qword_1ED4D1FC0 != -1)
      {
        swift_once();
      }

      v24 = qword_1ED4D1FC8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
      v25 = swift_allocObject();
      v34 = xmmword_1AB4D4720;
      *(v25 + 16) = xmmword_1AB4D4720;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520);
      v29 = swift_allocObject();
      *(v29 + 16) = v34;
      v37 = MEMORY[0x1E69E6158];
      v35 = 0xD000000000000087;
      v36 = 0x80000001AB500EC0;
      *(v29 + 48) = 0u;
      *(v29 + 32) = 0u;
      sub_1AB0169C4(&v35, v29 + 32);
      *(v29 + 64) = 0;
      *(v25 + 32) = v29;
    }

    v35 = v24;
    v38 = 0;
    OSLogger.log(contentsOf:withLevel:)(v25, &v38);

    return;
  }

  v12 = v11;
  ObjectType = swift_getObjectType();
  v38 = v10;
  _s9JetEngine18SystemDateProviderV3now10Foundation0D0Vvg_0();
  (*(v12 + 72))(&v35, &v38, v8, ObjectType, v12);
  (*(v6 + 8))(v8, v5);
  v14 = v35;
  v33 = v36;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436DA8);
  v37 = v15;
  v35 = v14;
  v32 = v10;
  v17 = *(a1 + 24);
  v16 = *(a1 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(a1, v17);
  v18 = *(v16 + 16);

  v19 = v34;
  v18(&v35, 0x6973736572706D69, 0xEB00000000736E6FLL, v17, v16);
  if (v19 || (__swift_destroy_boxed_opaque_existential_1Tm(&v35), v37 = v15, *&v34 = 0, v35 = v33, v20 = *(a1 + 24), v21 = *(a1 + 32), __swift_mutable_project_boxed_opaque_existential_1(a1, v20), v22 = *(v21 + 16), , v23 = v34, v22(&v35, 0x4363696D616E7964, 0xEE007365676E6168, v20, v21), v23))
  {
    swift_unknownObjectRelease();
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm(&v35);
    v37 = MEMORY[0x1E69E6530];
    v35 = v32 + 3;
    v30 = *(a1 + 24);
    v31 = *(a1 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(a1, v30);
    (*(v31 + 16))(&v35, 0x726556746E657665, 0xEC0000006E6F6973, v30, v31);
    swift_unknownObjectRelease();
  }

  __swift_destroy_boxed_opaque_existential_1Tm(&v35);
}

uint64_t sub_1AB0CE6D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    v6 = sub_1AB014DB4(a1, a2);
    if (v7)
    {
      sub_1AB0165C4(*(a3 + 56) + 32 * v6, &v30);
      sub_1AB014B78(&v30, v35);
      sub_1AB0165C4(v35, &v30);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437DF8);
      if (swift_dynamicCast())
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v35);
        return v33[0];
      }

      if (qword_1ED4D1FC0 != -1)
      {
        swift_once();
      }

      v9 = qword_1ED4D1FC8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_1AB4D47F0;
      v34 = sub_1AB0168A8(0, 27, 0, MEMORY[0x1E69E7CC0]);
      v11._object = 0x80000001AB501040;
      v11._countAndFlagsBits = 0xD00000000000001ALL;
      LogMessage.StringInterpolation.appendLiteral(_:)(v11);
      v33[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437E00);
      v33[0] = a1;
      v33[1] = a2;
      sub_1AB01522C(v33, v29);
      v30 = 0u;
      v31 = 0u;

      sub_1AB0169C4(v29, &v30);
      v32 = 1;
      v12 = v34;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_1AB0168A8(0, *(v12 + 2) + 1, 1, v12);
        v34 = v12;
      }

      v14 = *(v12 + 2);
      v13 = *(v12 + 3);
      if (v14 >= v13 >> 1)
      {
        v12 = sub_1AB0168A8((v13 > 1), v14 + 1, 1, v12);
      }

      *(v12 + 2) = v14 + 1;
      v15 = &v12[40 * v14];
      v16 = v30;
      v17 = v31;
      v15[64] = v32;
      *(v15 + 2) = v16;
      *(v15 + 3) = v17;
      v34 = v12;
      sub_1AB014AC0(v33, &unk_1EB437E60);
      v18._countAndFlagsBits = 0;
      v18._object = 0xE000000000000000;
      LogMessage.StringInterpolation.appendLiteral(_:)(v18);
      *(v10 + 32) = v34;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_1AB4D4720;
      v20 = MEMORY[0x1E69E6158];
      *(&v31 + 1) = MEMORY[0x1E69E6158];
      *&v30 = 0xD000000000000027;
      *(&v30 + 1) = 0x80000001AB501060;
      *(v19 + 48) = 0u;
      *(v19 + 32) = 0u;
      sub_1AB0169C4(&v30, v19 + 32);
      *(v19 + 64) = 0;
      *(v10 + 40) = v19;
      v21 = sub_1AB461094();
      if (os_log_type_enabled(v9, v21))
      {
        if (qword_1EB4359F8 != -1)
        {
          swift_once();
        }

        v22 = off_1EB435A00;
        os_unfair_lock_lock(off_1EB435A00 + 5);
        os_unfair_lock_opaque_low = LOBYTE(v22[4]._os_unfair_lock_opaque);
        os_unfair_lock_unlock(v22 + 5);
        if (os_unfair_lock_opaque_low == 2)
        {
          LOBYTE(os_unfair_lock_opaque_low) = os_variant_has_internal_content();
        }

        v24 = swift_allocObject();
        *(v24 + 16) = (os_unfair_lock_opaque_low & 1) == 0;
        *&v30 = v10;
        *(&v30 + 1) = sub_1AB0223E4;
        *&v31 = v24;

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A00);
        sub_1AB016A34();
        v25 = sub_1AB460484();
        v27 = v26;

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB439A10);
        v28 = swift_allocObject();
        *(v28 + 16) = xmmword_1AB4D4720;
        *(v28 + 56) = v20;
        *(v28 + 64) = sub_1AB016854();
        *(v28 + 32) = v25;
        *(v28 + 40) = v27;
        sub_1AB45FF14();
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v35);
    }
  }

  return 0;
}

uint64_t sub_1AB0CEB68@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = *(v3 + 4);
  v8 = *(v3 + 5);
  swift_beginAccess();
  v9 = *(v3 + 2);
  v10 = *(v9 + 16);
  v11 = MEMORY[0x1E69E7CC0];
  if (!v10)
  {
    v12 = MEMORY[0x1E69E7CC0];
    goto LABEL_5;
  }

  v17 = a3;
  v12 = sub_1AB1AFFBC(v10, 0);
  v13 = sub_1AB1AF6B8(&v18, v12 + 4, v10, v9);

  result = sub_1AB0309A4();
  if (v13 == v10)
  {
    a3 = v17;
    v11 = MEMORY[0x1E69E7CC0];
LABEL_5:
    v15 = v3[3];
    LOBYTE(v18) = a1;
    v16 = sub_1AB45BD64(v7, v8, v12, &v18, a2, v11, 0, v15);

    sub_1AB0CEEA8(v16, 0);
    *(v3 + 2) = MEMORY[0x1E69E7CC8];

    *a3 = v16;
    a3[1] = v11;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_1AB0CECC4(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1AB059040();
  result = MEMORY[0x1AC59C180](v2, &type metadata for ImpressionMetrics.ID, v3);
  v8 = result;
  if (v2)
  {
    v5 = a1 + 32;
    do
    {
      v6 = *(v5 + 16);
      v9[0] = *v5;
      v9[1] = v6;
      v9[2] = *(v5 + 32);
      v10 = *(v5 + 48);
      sub_1AB077970(v9, &v7);
      sub_1AB248D84(&v7, v9);

      v5 += 56;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_1AB0CED94(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v9 = MEMORY[0x1E69E7CC0];
    sub_1AB17783C(0, v1, 0);
    v2 = v9;
    v4 = a1 + 32;
    do
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436B70);
      swift_dynamicCast();
      v9 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1AB17783C((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      *(v2 + 16) = v6 + 1;
      sub_1AB014B78(&v8, (v2 + 32 * v6 + 32));
      v4 += 8;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void sub_1AB0CEEA8(uint64_t a1, char a2)
{
  v20[8] = *MEMORY[0x1E69E9840];
  v4 = sub_1AB4605C4();
  MEMORY[0x1EEE9AC00](v4 - 8);
  if (qword_1EB4359F8 != -1)
  {
    swift_once();
  }

  v5 = off_1EB435A00;
  os_unfair_lock_lock(off_1EB435A00 + 5);
  os_unfair_lock_opaque_low = LOBYTE(v5[4]._os_unfair_lock_opaque);
  os_unfair_lock_unlock(v5 + 5);
  if (os_unfair_lock_opaque_low == 2)
  {
    if ((os_variant_has_internal_content() & 1) == 0)
    {
      return;
    }
  }

  else if ((os_unfair_lock_opaque_low & 1) == 0)
  {
    return;
  }

  if (qword_1ED4D1D40 != -1)
  {
    swift_once();
  }

  if (qword_1EB434958 != -1)
  {
    swift_once();
  }

  v7 = sub_1AB026D00(qword_1EB434960, *algn_1EB434968);
  if (v7 != 2 && (v7 & 1) != 0)
  {
    v8 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4383F0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1AB4D4720;
    *(inited + 32) = 0x6973736572706D69;
    *(inited + 40) = 0xEB00000000736E6FLL;
    *(inited + 48) = a1;

    sub_1AB1DA7A4(inited);
    swift_setDeallocating();
    sub_1AB1E40EC(inited + 32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436DA8);
    v10 = sub_1AB4602D4();

    v20[0] = 0;
    v11 = [v8 dataWithJSONObject:v10 options:3 error:v20];

    v12 = v20[0];
    if (v11)
    {
      v13 = sub_1AB45F854();
      v15 = v14;

      sub_1AB460594();
      v16 = sub_1AB460564();
      if (v17)
      {
        sub_1AB3853CC(v16, v17, a2 & 1);
        sub_1AB017254(v13, v15);
      }

      else
      {
        sub_1AB017254(v13, v15);
      }
    }

    else
    {
      v18 = v12;
      v19 = sub_1AB45F594();

      swift_willThrow();
    }
  }
}

void sub_1AB0CF1DC()
{
  if (qword_1EB4359C0 != -1)
  {
    swift_once();
  }

  if ((byte_1EB435998 & 1) == 0)
  {
    if (qword_1ED4D1FC0 != -1)
    {
      swift_once();
    }

    v0 = qword_1ED4D1FC8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_1AB4D4720;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_1AB4D4720;
    v15 = MEMORY[0x1E69E6158];
    v12 = 0xD00000000000002ALL;
    v13 = 0x80000001AB507D40;
    *(v2 + 48) = 0u;
    *(v2 + 32) = 0u;
    sub_1AB0169C4(&v12, v2 + 32);
    *(v2 + 64) = 0;
    *(v1 + 32) = v2;
    v12 = v0;
    v11 = 3;
    OSLogger.log(contentsOf:withLevel:)(v1, &v11);

    if (qword_1ED4D0810 != -1)
    {
      swift_once();
    }

    v3 = off_1ED4D0818;
    v4 = *(off_1ED4D0818 + 2);
    os_unfair_recursive_lock_lock_with_options();
    v5 = v4[2];
    v6 = v4[3];
    v7 = v4[4];
    sub_1AB0CFAD0(v5, v6);
    os_unfair_recursive_lock_unlock();
    if (v5)
    {
      v12 = v5;
      v13 = v6;
      v14 = v7;
      if (ProcessAssertion.invalidate()())
      {
        v8 = v3[2];
        os_unfair_recursive_lock_lock_with_options();
        v9 = v8[2];
        v10 = v8[3];
        v8[3] = 0;
        v8[4] = 0;
        v8[2] = 0;
        sub_1AB05D770(v9, v10);
        os_unfair_recursive_lock_unlock();
      }

      sub_1AB05D770(v5, v6);
    }
  }
}

uint64_t sub_1AB0CF40C()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_1AB0CF520(unint64_t a1, uint64_t a2)
{

  v4 = sub_1AB0CECC4(a2);

  v5 = MEMORY[0x1E69E7CC0];
  v6 = sub_1AB0CF9BC(MEMORY[0x1E69E7CC0]);
  v7 = sub_1AB0CED80(v5);
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v8)
  {
    while (1)
    {
      if (v8 < 1)
      {
        __break(1u);
LABEL_48:
        result = sub_1AB461FC4();
        __break(1u);
        return result;
      }

      v47 = v6;
      v9 = 0;
      v6 = (a1 & 0xC000000000000001);
      v10 = MEMORY[0x1E69E7CC0];
      v11 = 1;
      v44 = v8;
      v45 = v4;
      v43 = a1 & 0xC000000000000001;
      v46 = a1;
      while (1)
      {
        if (v6)
        {
          v13 = MEMORY[0x1AC59C990](v9, a1);
        }

        else
        {
          v13 = *(a1 + 8 * v9 + 32);
        }

        swift_beginAccess();
        v14 = *(v13 + 32);
        v50[0] = *(v13 + 16);
        v50[1] = v14;
        v50[2] = *(v13 + 48);
        v51 = *(v13 + 64);
        sub_1AB077970(v50, v49);
        v15 = sub_1AB15A648(v50, v4);
        sub_1AB1B0358(v50);
        if ((v15 & 1) == 0)
        {
          break;
        }

        v12 = __OFADD__(v11++, 1);
        if (v12)
        {
          goto LABEL_41;
        }

LABEL_6:
        if (v8 == ++v9)
        {

          return v10;
        }
      }

      swift_retain_n();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_1AB2AFE3C(0, v10[2] + 1, 1, v10);
      }

      v17 = v10[2];
      v16 = v10[3];
      if (v17 >= v16 >> 1)
      {
        v10 = sub_1AB2AFE3C((v16 > 1), v17 + 1, 1, v10);
      }

      v10[2] = v17 + 1;
      v18 = &v10[2 * v17];
      v18[4] = v13;
      v18[5] = v11;
      v19 = *(v13 + 112);
      if (v19)
      {
        v20 = *(v13 + 104);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v49[0] = v47;
        sub_1AB1D584C(v13, v11, v20, v19, isUniquelyReferenced_nonNull_native);

        v47 = v49[0];
      }

      if (*(v7 + 16) && (v22 = *(v13 + 32), v23 = *(v13 + 40), , v24 = sub_1AB014DB4(v22, v23), v26 = v25, , (v26 & 1) != 0))
      {
        v6 = *(*(v7 + 56) + 8 * v24);
      }

      else
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_1AB2AFE3C(0, v6[2] + 1, 1, v6);
      }

      v28 = v6[2];
      v27 = v6[3];
      v48 = v10;
      if (v28 >= v27 >> 1)
      {
        v6 = sub_1AB2AFE3C((v27 > 1), v28 + 1, 1, v6);
      }

      v6[2] = v28 + 1;
      v29 = &v6[2 * v28];
      v29[4] = v13;
      v29[5] = v11;
      v30 = *(v13 + 32);
      a1 = *(v13 + 40);

      v4 = v7;
      v7 = swift_isUniquelyReferenced_nonNull_native();
      v49[0] = v4;
      v32 = sub_1AB014DB4(v30, a1);
      v33 = v4[2];
      v34 = (v31 & 1) == 0;
      v35 = v33 + v34;
      if (!__OFADD__(v33, v34))
      {
        break;
      }

      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      v8 = sub_1AB4618F4();
      if (!v8)
      {
        goto LABEL_45;
      }
    }

    v36 = v31;
    if (v4[3] < v35)
    {
      sub_1AB1D1E84(v35, v7);
      v4 = v49[0];
      v37 = sub_1AB014DB4(v30, a1);
      if ((v36 & 1) != (v38 & 1))
      {
        goto LABEL_48;
      }

      v32 = v37;
      v7 = v49[0];
      if ((v36 & 1) == 0)
      {
        goto LABEL_29;
      }

LABEL_33:
      *(*(v7 + 56) + 8 * v32) = v6;

      goto LABEL_34;
    }

    if (v7)
    {
      v7 = v49[0];
      if (v31)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v4 = v49;
      sub_1AB1D79CC();
      v7 = v49[0];
      if (v36)
      {
        goto LABEL_33;
      }
    }

LABEL_29:
    *(v7 + 8 * (v32 >> 6) + 64) |= 1 << v32;
    v39 = (*(v7 + 48) + 16 * v32);
    *v39 = v30;
    v39[1] = a1;
    *(*(v7 + 56) + 8 * v32) = v6;
    v40 = *(v7 + 16);
    v12 = __OFADD__(v40, 1);
    v41 = v40 + 1;
    if (v12)
    {
      goto LABEL_43;
    }

    *(v7 + 16) = v41;

LABEL_34:
    v12 = __OFADD__(v11++, 1);
    v4 = v45;
    a1 = v46;
    v6 = v43;
    v8 = v44;
    v10 = v48;
    if (v12)
    {
      goto LABEL_42;
    }

    goto LABEL_6;
  }

LABEL_45:

  return MEMORY[0x1E69E7CC0];
}

unint64_t sub_1AB0CF9BC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438198);
    v3 = sub_1AB461924();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      result = sub_1AB014DB4(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void *sub_1AB0CFAD0(void *result, void *a2)
{
  if (result)
  {
    v3 = result;
    v4 = a2;
  }

  return result;
}

uint64_t sub_1AB0CFB18()
{
  *(v0 + 632) = *(v0 + 624);
  v1 = *(v0 + 608);
  v2 = *(v0 + 600);
  v3 = *(v0 + 480);
  v4 = *(v0 + 392);
  v5 = *(v0 + 184);
  v6 = *(v0 + 200);
  __swift_project_boxed_opaque_existential_1Tm((v0 + 160), v5);
  v7 = (*(v6 + 32))(v5, v6);
  *(v0 + 640) = sub_1AB21EAD4(0x656D69746E757224, 0xE800000000000000, 0x6863746170736964, 0xE800000000000000, v7, v8, *(v0 + 208), *(v0 + 216), v3, v2, v1, v0 + 272, 0, v4);

  swift_bridgeObjectRelease_n();

  return MEMORY[0x1EEE6DFA0](sub_1AB0CFCB8, 0, 0);
}

unint64_t CustomJSValueConvertible.jsRepresentation(in:)@<X0>(uint64_t a1@<X2>, uint64_t *a2@<X8>)
{
  v3 = (*(a1 + 24))();
  result = sub_1AB054C38();
  a2[3] = result;
  a2[4] = &protocol witness table for JSValue;
  *a2 = v3;
  return result;
}

uint64_t sub_1AB0CFCB8()
{
  v1 = v0 + 2;
  v2 = v0[54];
  v0[2] = v0;
  v0[7] = v2;
  v0[3] = sub_1AB0C6888;
  v0[10] = swift_continuation_init();
  v3 = (v0 + 10);
  *(v3 + 72) = 1;
  sub_1AB0CFD84(v3);
  sub_1AB014AC0(v3, &unk_1EB4397D0);

  return MEMORY[0x1EEE6DEC8](v1);
}

void sub_1AB0CFD84(uint64_t a1)
{
  v3 = type metadata accessor for JSResponse();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB4378F0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v23 - v10);
  v12 = v1[2];
  os_unfair_lock_lock(v12 + 4);
  v13 = *(*v1 + 96);
  swift_beginAccess();
  sub_1AB014A58(v1 + v13, v11, &unk_1EB4378F0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    v22 = *v11;
    os_unfair_lock_unlock(v12 + 4);
    sub_1AB2AA78C(v22);
  }

  else if (EnumCaseMultiPayload)
  {
    sub_1AB03C564(v11, v5, type metadata accessor for JSResponse);
    os_unfair_lock_unlock(v12 + 4);
    sub_1AB437A88(v5);
    sub_1AB059DC8(v5, type metadata accessor for JSResponse);
  }

  else
  {
    v15 = *v11;
    sub_1AB014A58(a1, v24, &unk_1EB4397D0);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v15 = sub_1AB0D0060(0, v15[2] + 1, 1, v15);
    }

    v17 = v15[2];
    v16 = v15[3];
    if (v17 >= v16 >> 1)
    {
      v15 = sub_1AB0D0060((v16 > 1), v17 + 1, 1, v15);
    }

    v15[2] = v17 + 1;
    v18 = &v15[10 * v17];
    v18[2] = v24[0];
    v19 = v24[1];
    v20 = v24[2];
    v21 = v25[0];
    *(v18 + 89) = *(v25 + 9);
    v18[4] = v20;
    v18[5] = v21;
    v18[3] = v19;
    *v8 = v15;
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    sub_1AB017CC4(v8, v1 + v13, &unk_1EB4378F0);
    swift_endAccess();
    os_unfair_lock_unlock(v12 + 4);
  }
}

uint64_t sub_1AB0D00B4()
{

  return MEMORY[0x1EEE6BDD0](v0, 41, 7);
}

uint64_t Optional<A>.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v21 = a4;
  v10 = sub_1AB461354();
  v19 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v19 - v11;
  v13 = *a2;
  sub_1AB01EC0C(a1, v22);
  v14 = v23;
  if (!v23)
  {

    sub_1AB18977C(v22);
    goto LABEL_5;
  }

  v20 = a5;
  v15 = v24;
  __swift_project_boxed_opaque_existential_1Tm(v22, v23);
  v16 = (*(v15 + 128))(v14, v15);
  __swift_destroy_boxed_opaque_existential_1Tm(v22);
  if (v16)
  {

    a5 = v20;
LABEL_5:
    sub_1AB066D84(a1);
    return (*(*(a3 - 8) + 56))(a5, 1, 1, a3);
  }

  sub_1AB0B9254(a1, v22);
  v25 = v13;
  (*(v21 + 8))(v22, &v25, a3);
  result = sub_1AB066D84(a1);
  v18 = v20;
  if (!v5)
  {
    (*(*(a3 - 8) + 56))(v12, 0, 1, a3);
    return (*(v19 + 32))(v18, v12, v10);
  }

  return result;
}

uint64_t sub_1AB0D0354(uint64_t a1, char a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = v6;
  sub_1AB014A58(v8, v22, a3);
  v11 = v22[0];
  if (v24)
  {
    LOBYTE(v19[0]) = a2 & 1;
    v12 = *(*(v22[0] + 64) + 40);
    *v12 = a1;
    *(v12 + 8) = a2 & 1;
    return swift_continuation_throwingResume();
  }

  else
  {
    v14 = v22[1];

    sub_1AB0149B0(&v23, v19);
    v15 = v20;
    v16 = v21;
    __swift_project_boxed_opaque_existential_1Tm(v19, v20);
    v17 = swift_allocObject();
    *(v17 + 16) = v11;
    *(v17 + 24) = v14;
    *(v17 + 32) = a1;
    *(v17 + 40) = a2 & 1;
    v18 = *(v16 + 8);

    v18(a6, v17, v15, v16);

    return __swift_destroy_boxed_opaque_existential_1Tm(v19);
  }
}

uint64_t sub_1AB0D049C()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 304) = v3;
  if (v3)
  {
    swift_willThrow();

    return MEMORY[0x1EEE6DFA0](sub_1AB255E9C, 0, 0);
  }

  else
  {

    v4 = *(v1 + 160);
    v5 = *(v1 + 168);
    v6 = *(v2 + 8);

    return v6(v4, v5);
  }
}

uint64_t sub_1AB0D05F0(uint64_t a1, char a2)
{
  v3 = *v2;
  *(v3 + 32) = a2;
  *(v3 + 16) = v2;
  *(v3 + 24) = a1;
  *(v3 + 112) = a2;

  return MEMORY[0x1EEE6DFA0](sub_1AB0D0714, 0, 0);
}

uint64_t sub_1AB0D0714()
{
  if (*(v0 + 112))
  {
    v1 = *(v0 + 72);
    MEMORY[0x1AC59BA20](*(v0 + 40), *(v0 + 48));
    v2 = sub_1AB460514();

    v3 = [v1 integerForKey_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB4386C0);
    v4 = swift_allocObject();
    *(v0 + 96) = v4;
    v4[2] = v3;
    v4[3] = sub_1AB0D08A8;
    v4[4] = 0;
    v5 = swift_task_alloc();
    *(v0 + 104) = v5;
    *v5 = v0;
    v5[1] = sub_1AB0D08D8;

    return sub_1AB087008(v4);
  }

  else
  {
    v7 = *(v0 + 24);
    v8 = *(v0 + 8);

    return v8(v7, 0);
  }
}

id sub_1AB0D08A8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = [a1 integerValue];
  *a2 = result;
  return result;
}

uint64_t sub_1AB0D08DC(uint64_t a1, char a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2 & 1);
}

uint64_t sub_1AB0D0A04(uint64_t a1, char a2)
{
  v3 = *v2;
  *(v3 + 136) = a2;
  *(v3 + 120) = v2;
  *(v3 + 128) = a1;
  *(v3 + 200) = a2;

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6DFA0](sub_1AB0D0B48, 0, 0);
}

uint64_t sub_1AB0D0B48()
{
  if (*(v0 + 200))
  {
    if (qword_1EB435768 != -1)
    {
      swift_once();
    }

    sub_1AB4622E4();
    v2 = *(v0 + 40);
    v1 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1Tm((v0 + 16), v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_1AB4D4720;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1AB4D4720;
    *(v0 + 80) = MEMORY[0x1E69E6158];
    *(v0 + 56) = 0xD00000000000002BLL;
    *(v0 + 64) = 0x80000001AB503670;
    *(v4 + 48) = 0u;
    *(v4 + 32) = 0u;
    sub_1AB0169C4(v0 + 56, v4 + 32);
    *(v4 + 64) = 0;
    *(v3 + 32) = v4;
    Logger.error(_:)(v3, v2, v1);

    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  }

  else
  {
    *(v0 + 88) = *(v0 + 128);
    v5 = *(v0 + 152);
    *(v0 + 112) = MEMORY[0x1E69E6530];
    v6 = *(v5 + 24);
    v7 = *(v5 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(v5, v6);
    (*(v7 + 16))(v0 + 88, 0x724674736F507078, 0xEF79636E65757165, v6, v7);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 88);
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1AB0D0D74(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1AB027460;

  return sub_1AB0D0E08(a1);
}

uint64_t sub_1AB0D0E08(uint64_t a1)
{
  *(v2 + 88) = a1;
  *(v2 + 96) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1AB0D0E28, 0, 0);
}

uint64_t sub_1AB0D0E28()
{
  v29 = v0;
  v1 = v0[11];
  v2 = v0[12];
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1Tm(v1, v3);
  v5 = (*(v4 + 24))(v3, v4);
  v6 = v5;
  if (*v2)
  {
    if (!*(v5 + 16) || (v7 = sub_1AB014DB4(0x707954746E657665, 0xE900000000000065), (v8 & 1) == 0) || (sub_1AB0165C4(*(v6 + 56) + 32 * v7, (v0 + 2)), (swift_dynamicCast() & 1) == 0))
    {

      goto LABEL_16;
    }

    v9 = sub_1AB07EF00(v0[7]);

    if ((v9 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
  }

  v10 = v0[12];
  v11 = v10[4];
  v12 = v10[5];
  __swift_project_boxed_opaque_existential_1Tm(v10 + 1, v11);
  (*(v12 + 8))(v28, v11, v12);
  if (v28[0])
  {
    v13 = v28[0];
    v14 = [v13 ams_storefront];
    if (v14)
    {
      v15 = v0[11];
      v16 = v14;
      v17 = sub_1AB460544();
      v19 = v18;

      v0[5] = MEMORY[0x1E69E6158];
      v0[2] = v17;
      v0[3] = v19;
      v21 = v1[3];
      v20 = v1[4];
      __swift_mutable_project_boxed_opaque_existential_1(v15, v21);
      (*(v20 + 16))(v0 + 2, 0xD000000000000010, 0x80000001AB4FEB00, v21, v20);
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2));
      goto LABEL_16;
    }
  }

  if (qword_1EB435768 != -1)
  {
    swift_once();
  }

  sub_1AB4622E4();
  v23 = v0[5];
  v22 = v0[6];
  __swift_project_boxed_opaque_existential_1Tm(v0 + 2, v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1AB4D4720;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1AB4D4720;
  v0[10] = MEMORY[0x1E69E6158];
  v0[7] = 0xD00000000000003ELL;
  v0[8] = 0x80000001AB5085E0;
  *(v25 + 48) = 0u;
  *(v25 + 32) = 0u;
  sub_1AB0169C4((v0 + 7), v25 + 32);
  *(v25 + 64) = 0;
  *(v24 + 32) = v25;
  Logger.error(_:)(v24, v23, v22);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2));
LABEL_16:
  v26 = v0[1];

  return v26();
}

uint64_t sub_1AB0D11A4(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1AB027460;

  return sub_1AB0D1240(a1, v6, v4);
}

uint64_t sub_1AB0D1240(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 64) = a1;
  *(v3 + 72) = a3;
  return MEMORY[0x1EEE6DFA0](sub_1AB0D1260, 0, 0);
}

id sub_1AB0D1260()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1Tm(v1, v3);
  v5 = (*(v4 + 24))(v3, v4);
  v6 = v5;
  if (!v2)
  {

    goto LABEL_9;
  }

  if (*(v5 + 16))
  {
    v7 = sub_1AB014DB4(0x707954746E657665, 0xE900000000000065);
    if (v8)
    {
      sub_1AB0165C4(*(v6 + 56) + 32 * v7, (v0 + 2));
      if (swift_dynamicCast())
      {
        v9 = sub_1AB07EF00(v0[6]);

        if ((v9 & 1) == 0)
        {
          goto LABEL_31;
        }

LABEL_9:
        result = [objc_opt_self() sharedInstance];
        if (!result)
        {
          __break(1u);
          return result;
        }

        v11 = result;
        v12 = [result networkType];

        if (v12 <= 4)
        {
          if (v12 > 2)
          {
            v13 = 0xE200000000000000;
            if (v12 == 3)
            {
              v14 = 18228;
            }

            else
            {
              v14 = 18229;
            }

            goto LABEL_30;
          }

          if (v12 == 1)
          {
            v13 = 0xE200000000000000;
            v14 = 18226;
            goto LABEL_30;
          }

          if (v12 == 2)
          {
            v13 = 0xE200000000000000;
            v14 = 18227;
            goto LABEL_30;
          }
        }

        else
        {
          if (v12 <= 6)
          {
            v13 = 0xE200000000000000;
            if (v12 == 5)
            {
              v14 = 18230;
            }

            else
            {
              v14 = 18231;
            }

            goto LABEL_30;
          }

          switch(v12)
          {
            case 7:
              v13 = 0xE200000000000000;
              v14 = 18232;
              goto LABEL_30;
            case 8:
              v13 = 0xE200000000000000;
              v14 = 18233;
              goto LABEL_30;
            case 1000:
              v13 = 0xE400000000000000;
              v14 = 1766222167;
LABEL_30:
              v15 = v0[8];
              v0[5] = MEMORY[0x1E69E6158];
              v0[2] = v14;
              v0[3] = v13;
              v17 = v1[3];
              v16 = v1[4];
              __swift_mutable_project_boxed_opaque_existential_1(v15, v17);
              (*(v16 + 16))(v0 + 2, 0x697463656E6E6F63, 0xEA00000000006E6FLL, v17, v16);
              __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2));
              goto LABEL_31;
          }
        }

        v14 = 0;
        v13 = 0xE000000000000000;
        goto LABEL_30;
      }
    }
  }

LABEL_31:
  v18 = v0[1];

  return v18();
}

uint64_t sub_1AB0D1540(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *(v3 + 32) = a1;
  *(v3 + 40) = v4;
  *(v3 + 16) = *v2;
  return MEMORY[0x1EEE6DFA0](sub_1AB0D1F58, 0, 0);
}

void PageMetricsFieldsProvider.addMetricsFields(into:using:)(void *a1, uint64_t *a2)
{
  v4 = v3;
  v5 = *a2;
  v7 = *v2;
  v6 = v2[1];
  v8 = a1[3];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, v8);
  v10 = (*(v9 + 24))(v8, v9);
  v11 = v10;
  if (v7)
  {
    if (!*(v10 + 16))
    {
      goto LABEL_55;
    }

    v12 = sub_1AB014DB4(0x707954746E657665, 0xE900000000000065);
    if ((v13 & 1) == 0)
    {
      goto LABEL_55;
    }

    sub_1AB0165C4(*(v11 + 56) + 32 * v12, &v80);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_55;
    }

    v14 = sub_1AB07EF00(v77);

    if ((v14 & 1) == 0)
    {
      return;
    }
  }

  else
  {
  }

  v15 = sub_1AB1A6B50(0xD00000000000001ELL, 0x80000001AB501090, v5);
  if (v15)
  {
    v73 = v5;
    v74 = v6;
    v16 = v15 + 64;
    v17 = 1 << *(v15 + 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & *(v15 + 64);
    v20 = (v17 + 63) >> 6;
    v82 = v15;

    v21 = 0;
    if (v19)
    {
      while (1)
      {
        v22 = v21;
LABEL_20:
        v25 = __clz(__rbit64(v19));
        v19 &= v19 - 1;
        v26 = v25 | (v22 << 6);
        v27 = (v82[6] + 16 * v26);
        v29 = *v27;
        v28 = v27[1];
        sub_1AB0165C4(v82[7] + 32 * v26, v76);
        *&v77 = v29;
        *(&v77 + 1) = v28;
        sub_1AB014B78(v76, &v78);

        v24 = v22;
LABEL_21:
        v80 = v77;
        v81[0] = v78;
        v81[1] = v79;
        v30 = *(&v77 + 1);
        if (!*(&v77 + 1))
        {
          break;
        }

        v31 = v80;
        sub_1AB014B78(v81, &v77);
        v32 = v4;
        v33 = a1[3];
        v34 = a1[4];
        __swift_mutable_project_boxed_opaque_existential_1(a1, v33);
        (*(v34 + 16))(&v77, v31, v30, v33, v34);
        v4 = v32;
        __swift_destroy_boxed_opaque_existential_1Tm(&v77);

        if (v32)
        {

          goto LABEL_55;
        }

        v21 = v24;
        if (!v19)
        {
          goto LABEL_13;
        }
      }

      v40 = v82;

      if (v40[2])
      {
        v41 = sub_1AB014DB4(1701273968, 0xE400000000000000);
        if (v42)
        {
          sub_1AB0165C4(v40[7] + 32 * v41, &v80);

          sub_1AB0167A8(&v80);
          return;
        }
      }

      v80 = 0u;
      v81[0] = 0u;
      sub_1AB0167A8(&v80);
      if (!v40[2])
      {
        goto LABEL_55;
      }

      v44 = sub_1AB014DB4(0x6570795465676170, 0xE800000000000000);
      if ((v45 & 1) == 0)
      {
        goto LABEL_55;
      }

      sub_1AB0165C4(v40[7] + 32 * v44, &v80);
      v46 = MEMORY[0x1E69E6158];
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_55;
      }

      v47 = *(&v77 + 1);
      if (v40[2])
      {
        v48 = v77;
        v49 = sub_1AB014DB4(0x644965676170, 0xE600000000000000);
        if (v50)
        {
          sub_1AB0165C4(v40[7] + 32 * v49, &v77);

          sub_1AB014B78(&v77, &v80);
          v51 = v74;
          if (!v74)
          {
            v63 = 0xE100000000000000;
            v64 = 95;
LABEL_69:
            *&v77 = 0;
            *(&v77 + 1) = 0xE000000000000000;
            MEMORY[0x1AC59BA20](v48, v47);

            MEMORY[0x1AC59BA20](v64, v63);

            __swift_project_boxed_opaque_existential_1Tm(&v80, *(&v81[0] + 1));
            sub_1AB461D64();
            *(&v78 + 1) = v46;
            v70 = a1[3];
            v71 = a1[4];
            __swift_mutable_project_boxed_opaque_existential_1(a1, v70);
            (*(v71 + 16))(&v77, 1701273968, 0xE400000000000000, v70, v71);
            __swift_destroy_boxed_opaque_existential_1Tm(&v77);
            __swift_destroy_boxed_opaque_existential_1Tm(&v80);
            return;
          }

          v72 = v47;
          v52 = sub_1AB080F70(0xD000000000000019, 0x80000001AB4FF760, v73);
          *&v77 = v74;
          v54 = sub_1AB0D56EC(0xD000000000000011, 0x80000001AB501230, v52, v53);

          v55 = *(v54 + 16);
          v82 = v54;
          v56 = v54 + 32;
          swift_unknownObjectRetain_n();
          if (v55)
          {
            v57 = 0;
            while (1)
            {
              v58 = *(v56 + 8 * v57);
              v59 = [v74 stringForKey_];
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB4395C0);
              v60 = swift_allocObject();
              v60[2] = v59;
              v60[3] = sub_1AB08A8AC;
              v60[4] = 0;
              sub_1AB0B77A4(v60);
              v62 = v61;

              if (v62)
              {
                break;
              }

              if (v55 == ++v57)
              {
                goto LABEL_62;
              }
            }

            v55 = v57;
LABEL_62:
            v51 = v74;
          }

          v65 = v82[2];
          if (v55 == v65)
          {

            swift_unknownObjectRelease_n();
            v63 = 0xE100000000000000;
            v64 = 95;
LABEL_68:
            v46 = MEMORY[0x1E69E6158];
            v47 = v72;
            goto LABEL_69;
          }

          if (v55 >= v65)
          {
            __break(1u);
          }

          else
          {
            v66 = *(v56 + 8 * v55);
            v67 = [v51 stringForKey_];
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB4395C0);
            v68 = swift_allocObject();
            v68[2] = v67;
            v68[3] = sub_1AB08A8AC;
            v68[4] = 0;
            v64 = sub_1AB0B77A4(v68);
            v63 = v69;

            swift_unknownObjectRelease_n();
            if (v63)
            {

              goto LABEL_68;
            }
          }

          __break(1u);
          return;
        }
      }
    }

    else
    {
LABEL_13:
      if (v20 <= v21 + 1)
      {
        v23 = v21 + 1;
      }

      else
      {
        v23 = v20;
      }

      v24 = v23 - 1;
      while (1)
      {
        v22 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          break;
        }

        if (v22 >= v20)
        {
          v19 = 0;
          v78 = 0u;
          v79 = 0u;
          v77 = 0u;
          goto LABEL_21;
        }

        v19 = *(v16 + 8 * v22);
        ++v21;
        if (v19)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
    }
  }

  else
  {
    sub_1AB1A52C8(0xD000000000000026, 0x80000001AB500E90, v5, &v80);
    if (v80 != 3 && !v80)
    {
      if (qword_1EB433A00 != -1)
      {
        swift_once();
      }

      if ((byte_1EB432CF0 & 1) == 0)
      {
        sub_1AB407744("JetEngine/PageMetricsFieldsProvider.swift", 0x29uLL, 2, 0x38uLL);
        return;
      }
    }

    sub_1AB1A52C8(0xD000000000000026, 0x80000001AB500E90, v5, &v80);
    if (v80 == 1)
    {
      if (qword_1ED4D1FC0 != -1)
      {
        swift_once();
      }

      v35 = qword_1ED4D1FC8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
      v36 = swift_allocObject();
      *(v36 + 16) = xmmword_1AB4D47F0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520);
      v37 = swift_allocObject();
      *(v37 + 16) = xmmword_1AB4D4720;
      v38 = MEMORY[0x1E69E6158];
      *(&v81[0] + 1) = MEMORY[0x1E69E6158];
      *&v80 = 0xD000000000000050;
      *(&v80 + 1) = 0x80000001AB501140;
      *(v37 + 48) = 0u;
      *(v37 + 32) = 0u;
      sub_1AB0169C4(&v80, v37 + 32);
      *(v37 + 64) = 0;
      *(v36 + 32) = v37;
      v39 = swift_allocObject();
      *(v39 + 16) = xmmword_1AB4D4720;
      *(&v81[0] + 1) = v38;
      *&v80 = 0xD000000000000053;
      *(&v80 + 1) = 0x80000001AB5011A0;
      *(v39 + 48) = 0u;
      *(v39 + 32) = 0u;
      sub_1AB0169C4(&v80, v39 + 32);
      *(v39 + 64) = 0;
      *(v36 + 40) = v39;
    }

    else
    {
      sub_1AB1A52C8(0xD000000000000026, 0x80000001AB500E90, v5, &v80);
      if (v80 != 2)
      {
        return;
      }

      if (qword_1ED4D1FC0 != -1)
      {
        swift_once();
      }

      v35 = qword_1ED4D1FC8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
      v36 = swift_allocObject();
      *(v36 + 16) = xmmword_1AB4D4720;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520);
      v43 = swift_allocObject();
      *(v43 + 16) = xmmword_1AB4D4720;
      *(&v81[0] + 1) = MEMORY[0x1E69E6158];
      *&v80 = 0xD000000000000082;
      *(&v80 + 1) = 0x80000001AB5010B0;
      *(v43 + 48) = 0u;
      *(v43 + 32) = 0u;
      sub_1AB0169C4(&v80, v43 + 32);
      *(v43 + 64) = 0;
      *(v36 + 32) = v43;
    }

    *&v80 = v35;
    LOBYTE(v77) = 0;
    OSLogger.log(contentsOf:withLevel:)(v36, &v77);
  }

LABEL_55:
}

uint64_t sub_1AB0D1F58()
{
  v5 = v0;
  v1 = v0[4];
  v4 = v0[5];
  PageMetricsFieldsProvider.addMetricsFields(into:using:)(v1, &v4);
  v2 = v0[1];

  return v2();
}

uint64_t sub_1AB0D1FE0(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3[3] = a1;
  v3[4] = v4;
  v3[2] = *v2;
  return MEMORY[0x1EEE6DFA0](sub_1AB0D200C, 0, 0);
}

uint64_t sub_1AB0D200C()
{
  AppMetricsFieldProvider.addMetricsFields(into:using:)(*(v0 + 24));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t AppMetricsFieldProvider.addMetricsFields(into:using:)(uint64_t a1)
{
  v3 = *v1;
  v4 = [*v1 bundleIdentifier];
  if (v4)
  {
    v5 = v4;
    v6 = sub_1AB460544();
    v8 = v7;

    *(&v26 + 1) = MEMORY[0x1E69E6158];
    *&v25 = v6;
    *(&v25 + 1) = v8;
    v9 = *(a1 + 24);
    v10 = *(a1 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(a1, v9);
    (*(v10 + 16))(&v25, 7368801, 0xE300000000000000, v9, v10);
    return __swift_destroy_boxed_opaque_existential_1Tm(&v25);
  }

  else
  {
    if (qword_1ED4D1FC0 != -1)
    {
      swift_once();
    }

    v12 = qword_1ED4D1FC8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AE10);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1AB4D47F0;
    v29 = sub_1AB0168A8(0, 39, 0, MEMORY[0x1E69E7CC0]);
    v14._countAndFlagsBits = 0xD000000000000026;
    v14._object = 0x80000001AB509830;
    LogMessage.StringInterpolation.appendLiteral(_:)(v14);
    v28[3] = sub_1AB0A96EC();
    v28[0] = v3;
    sub_1AB01522C(v28, v24);
    v25 = 0u;
    v26 = 0u;
    v15 = v3;
    sub_1AB0169C4(v24, &v25);
    v27 = 1;
    v16 = v29;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v16 = sub_1AB0168A8(0, *(v16 + 2) + 1, 1, v16);
    }

    v18 = *(v16 + 2);
    v17 = *(v16 + 3);
    if (v18 >= v17 >> 1)
    {
      v16 = sub_1AB0168A8((v17 > 1), v18 + 1, 1, v16);
    }

    *(v16 + 2) = v18 + 1;
    v19 = &v16[40 * v18];
    v20 = v25;
    v21 = v26;
    v19[64] = v27;
    *(v19 + 2) = v20;
    *(v19 + 3) = v21;
    v29 = v16;
    sub_1AB0167A8(v28);
    v22._countAndFlagsBits = 0;
    v22._object = 0xE000000000000000;
    LogMessage.StringInterpolation.appendLiteral(_:)(v22);
    *(v13 + 32) = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB438520);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1AB4D4720;
    *(&v26 + 1) = MEMORY[0x1E69E6158];
    *&v25 = 0xD00000000000001BLL;
    *(&v25 + 1) = 0x80000001AB509860;
    *(v23 + 48) = 0u;
    *(v23 + 32) = 0u;
    sub_1AB0169C4(&v25, v23 + 32);
    *(v23 + 64) = 0;
    *(v13 + 40) = v23;
    *&v25 = v12;
    LOBYTE(v28[0]) = 0;
    OSLogger.log(contentsOf:withLevel:)(v13, v28);
  }
}

uint64_t sub_1AB0D2388(uint64_t a1, uint64_t *a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1AB027460;

  return sub_1AB0D242C(a1, a2);
}

uint64_t sub_1AB0D242C(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3[40] = a1;
  v3[41] = v4;
  v5 = v2[1];
  v3[42] = *v2;
  v3[43] = v5;
  return MEMORY[0x1EEE6DFA0](sub_1AB0D2458, 0, 0);
}

uint64_t sub_1AB0D2458()
{
  v1 = v0[42];
  v2 = v0[40];
  v3 = v2[3];
  v4 = v2[4];
  __swift_project_boxed_opaque_existential_1Tm(v2, v3);
  v5 = (*(v4 + 24))(v3, v4);
  LOBYTE(v1) = sub_1AB08675C(v5, v1);

  if (v1)
  {
    v6 = v0[43];
    v7 = sub_1AB460514();
    v8 = [v6 dictionaryForKey_];

    v0[44] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4386E0);
    v9 = swift_allocObject();
    v0[45] = v9;
    v9[2] = v8;
    v9[3] = sub_1AB098790;
    v9[4] = 0;
    v10 = swift_task_alloc();
    v0[46] = v10;
    *v10 = v0;
    v10[1] = sub_1AB0A4008;

    return (sub_1AB0D2620)(v9);
  }

  else
  {
    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_1AB0D2640()
{
  *(v0 + 296) = (*(**(v0 + 288) + 88))();

  return MEMORY[0x1EEE6DFA0](sub_1AB0D26CC, 0, 0);
}

uint64_t sub_1AB0D26CC()
{
  v1 = v0 + 2;
  v0[2] = v0;
  v0[7] = v0 + 20;
  v0[3] = sub_1AB0A3E70;
  v0[10] = swift_continuation_init();
  v2 = (v0 + 10);
  *(v2 + 72) = 1;
  sub_1AB09F37C(v2);
  sub_1AB014AC0(v2, &unk_1EB439A90);

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_1AB0D27CC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = v5;
  sub_1AB014A58(v7, v19, a2);
  v9 = v19[0];
  if (v21)
  {
    **(*(v19[0] + 64) + 40) = a1;

    return swift_continuation_throwingResume();
  }

  else
  {
    v11 = v19[1];

    sub_1AB0149B0(&v20, v16);
    v12 = v17;
    v13 = v18;
    __swift_project_boxed_opaque_existential_1Tm(v16, v17);
    v14 = swift_allocObject();
    v14[2] = v9;
    v14[3] = v11;
    v14[4] = a1;
    v15 = *(v13 + 8);

    v15(a5, v14, v12, v13);

    return __swift_destroy_boxed_opaque_existential_1Tm(v16);
  }
}

uint64_t sub_1AB0D290C(uint64_t a1)
{
  *(*v1 + 400) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1AB0D2A2C, 0, 0);
}

void sub_1AB0D2A2C()
{
  v30 = v0;
  v1 = *(v0 + 400);
  v2 = *(v0 + 376);
  if (v1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v29 = v2;
    sub_1AB3B14C0(v1, sub_1AB3B147C, 0, isUniquelyReferenced_nonNull_native, &v29);

    v2 = v29;
  }

  v4 = 0;
  v5 = v2 + 64;
  v6 = -1;
  v7 = -1 << *(v2 + 32);
  if (-v7 < 64)
  {
    v6 = ~(-1 << -v7);
  }

  v8 = v6 & *(v2 + 64);
  v9 = (63 - v7) >> 6;
  v10 = MEMORY[0x1E69E69B8];
  v27 = v2 + 64;
  v28 = v2;
  if (!v8)
  {
    goto LABEL_9;
  }

  do
  {
    while (1)
    {
      v11 = v4;
LABEL_16:
      v14 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v15 = v14 | (v11 << 6);
      sub_1AB02B4BC(*(v2 + 48) + 40 * v15, v0 + 160);
      sub_1AB0165C4(*(v2 + 56) + 32 * v15, v0 + 240);
      v16 = *(v0 + 176);
      *(v0 + 88) = *(v0 + 160);
      *(v0 + 104) = v16;
      *(v0 + 120) = *(v0 + 192);
      sub_1AB014B78((v0 + 240), (v0 + 128));
      v13 = v11;
LABEL_17:
      *(v0 + 80) = *(v0 + 152);
      v17 = *(v0 + 136);
      *(v0 + 48) = *(v0 + 120);
      *(v0 + 64) = v17;
      v18 = *(v0 + 104);
      *(v0 + 16) = *(v0 + 88);
      *(v0 + 32) = v18;
      if (!*(v0 + 40))
      {

        v26 = *(v0 + 8);

        v26();
        return;
      }

      sub_1AB014B78((v0 + 56), (v0 + 272));
      v19 = *(v0 + 32);
      *(v0 + 200) = *(v0 + 16);
      *(v0 + 216) = v19;
      *(v0 + 232) = *(v0 + 48);
      if (swift_dynamicCast())
      {
        break;
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 272);
      v4 = v13;
      if (!v8)
      {
        goto LABEL_9;
      }
    }

    v20 = v10;
    v22 = *(v0 + 312);
    v21 = *(v0 + 320);
    v23 = *(v0 + 304);
    v24 = *(v21 + 24);
    v25 = *(v21 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(v21, v24);
    (*(v25 + 16))(v0 + 272, v23, v22, v24, v25);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 272);

    v4 = v13;
    v10 = v20;
    v5 = v27;
    v2 = v28;
  }

  while (v8);
LABEL_9:
  if (v9 <= v4 + 1)
  {
    v12 = v4 + 1;
  }

  else
  {
    v12 = v9;
  }

  v13 = v12 - 1;
  while (1)
  {
    v11 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v11 >= v9)
    {
      v8 = 0;
      *(v0 + 152) = 0;
      *(v0 + 136) = 0u;
      *(v0 + 120) = 0u;
      *(v0 + 104) = 0u;
      *(v0 + 88) = 0u;
      goto LABEL_17;
    }

    v8 = *(v5 + 8 * v11);
    ++v4;
    if (v8)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
}

uint64_t sub_1AB0D2D14(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1AB027460;

  return UserAgentFieldProvider.addExpensiveMetricsFields(into:using:)(a1);
}

uint64_t UserAgentFieldProvider.addExpensiveMetricsFields(into:using:)(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 64) = a1;
  *(v2 + 72) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1AB0D2DCC, 0, 0);
}

uint64_t sub_1AB0D2DCC()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1Tm(v1, v3);
  v5 = (*(v4 + 24))(v3, v4);
  v6 = v5;
  if (!v2)
  {

LABEL_9:
    v10 = v0[8];
    v11 = objc_opt_self();
    v12 = [objc_opt_self() currentProcess];
    v13 = [v11 userAgentForProcessInfo_];

    v14 = sub_1AB460544();
    v16 = v15;

    v0[5] = MEMORY[0x1E69E6158];
    v0[2] = v14;
    v0[3] = v16;
    v18 = v1[3];
    v17 = v1[4];
    __swift_mutable_project_boxed_opaque_existential_1(v10, v18);
    (*(v17 + 16))(v0 + 2, 0x6E65674172657375, 0xE900000000000074, v18, v17);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2));
    goto LABEL_10;
  }

  if (!*(v5 + 16) || (v7 = sub_1AB014DB4(0x707954746E657665, 0xE900000000000065), (v8 & 1) == 0) || (sub_1AB0165C4(*(v6 + 56) + 32 * v7, (v0 + 2)), (swift_dynamicCast() & 1) == 0))
  {

    goto LABEL_10;
  }

  v9 = sub_1AB07EF00(v0[6]);

  if (v9)
  {
    goto LABEL_9;
  }

LABEL_10:
  v19 = v0[1];

  return v19();
}

uint64_t sub_1AB0D3008(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1AB027460;

  return BaseVersionFieldProvider.addExpensiveMetricsFields(into:using:)(a1);
}

uint64_t BaseVersionFieldProvider.addExpensiveMetricsFields(into:using:)(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 64) = a1;
  *(v2 + 72) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1AB0D30C0, 0, 0);
}

uint64_t sub_1AB0D30C0()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1Tm(v1, v3);
  v5 = (*(v4 + 24))(v3, v4);
  v6 = v5;
  if (!v2)
  {

LABEL_9:
    v10 = v0[8];
    v0[5] = MEMORY[0x1E69E6530];
    v0[2] = 1;
    v12 = v1[3];
    v11 = v1[4];
    __swift_mutable_project_boxed_opaque_existential_1(v10, v12);
    (*(v11 + 16))(v0 + 2, 0x7372655665736162, 0xEB000000006E6F69, v12, v11);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2));
    goto LABEL_10;
  }

  if (!*(v5 + 16) || (v7 = sub_1AB014DB4(0x707954746E657665, 0xE900000000000065), (v8 & 1) == 0) || (sub_1AB0165C4(*(v6 + 56) + 32 * v7, (v0 + 2)), (swift_dynamicCast() & 1) == 0))
  {

    goto LABEL_10;
  }

  v9 = sub_1AB07EF00(v0[6]);

  if (v9)
  {
    goto LABEL_9;
  }

LABEL_10:
  v13 = v0[1];

  return v13();
}

uint64_t sub_1AB0D3290(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1AB027460;

  return sub_1AB0D332C(a1, v6, v4);
}

uint64_t sub_1AB0D332C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 48) = a1;
  *(v3 + 56) = a3;
  return MEMORY[0x1EEE6DFA0](sub_1AB0D334C, 0, 0);
}

uint64_t sub_1AB0D334C()
{
  v1 = v0[6];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1Tm(v1, v2);
  sub_1AB0D3590();
  MetricsFieldsBuilder.subscript.getter(0x707954746E657665, 0xE900000000000065, v2, &type metadata for MetricsEventType, v3, (v0 + 2));
  if (v0[3])
  {
    if (*(v0[7] + 16))
    {
      v4 = sub_1AB0370A8(v0[2], v0[3]);
      v6 = v5;

      if (v6)
      {
        v7 = v0[6];
        v8 = *(*(v0[7] + 56) + 8 * v4);
        v0[5] = MEMORY[0x1E69E6530];
        v0[2] = v8;
        v10 = v1[3];
        v9 = v1[4];
        __swift_mutable_project_boxed_opaque_existential_1(v7, v10);
        (*(v9 + 16))(v0 + 2, 0x726556746E657665, 0xEC0000006E6F6973, v10, v9);
        __swift_destroy_boxed_opaque_existential_1Tm((v0 + 2));
      }
    }

    else
    {
    }
  }

  v11 = v0[1];

  return v11();
}

uint64_t MetricsFieldsBuilder.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  MetricsFieldsBuilder.subscript.getter(a1, a2, a3, a5);
  if (v8)
  {
    return sub_1AB4608C4();
  }

  v10 = *(*(a4 - 8) + 56);

  return v10(a6, 1, 1, a4);
}

unint64_t sub_1AB0D3590()
{
  result = qword_1ED4D0980;
  if (!qword_1ED4D0980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED4D0980);
  }

  return result;
}

uint64_t MetricsFieldsBuilder.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = (*(a4 + 24))(a3, a4);
  if (*(v6 + 16) && (v7 = sub_1AB014DB4(a1, a2), (v8 & 1) != 0))
  {
    sub_1AB0165C4(*(v6 + 56) + 32 * v7, v11);

    if (swift_dynamicCast())
    {
      return v10;
    }

    else
    {
      return 0;
    }
  }

  else
  {

    return 0;
  }
}

{
  v6 = (*(a4 + 24))(a3, a4);
  if (*(v6 + 16) && (v7 = sub_1AB014DB4(a1, a2), (v8 & 1) != 0))
  {
    sub_1AB0165C4(*(v6 + 56) + 32 * v7, v11);

    if (swift_dynamicCast())
    {
      return v10;
    }

    else
    {
      return 0;
    }
  }

  else
  {

    return 0;
  }
}

{
  v6 = (*(a4 + 24))(a3, a4);
  if (*(v6 + 16) && (v7 = sub_1AB014DB4(a1, a2), (v8 & 1) != 0))
  {
    sub_1AB0165C4(*(v6 + 56) + 32 * v7, v11);

    if (swift_dynamicCast())
    {
      return v10;
    }

    else
    {
      return 2;
    }
  }

  else
  {

    return 2;
  }
}

uint64_t sub_1AB0D36B0()
{
  v7 = v0;
  (*(v0[4] + 24))(v6, v0[3]);
  if (v6[0] == 2)
  {
    v1 = v0[3];
    v2 = v0[4];
    v3 = v0[2];
    *v6 = v0[6];
    (*(v2 + 32))(v3, v6, v1);
  }

  v4 = v0[1];

  return v4();
}

uint64_t sub_1AB0D3780(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3[2] = a1;
  v3[3] = v4;
  v3[4] = *v2;
  return MEMORY[0x1EEE6DFA0](sub_1AB0D37AC, 0, 0);
}

uint64_t sub_1AB0D37AC()
{
  PageHistoryFieldProvider.addMetricsFields(into:using:)(*(v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

void PageHistoryFieldProvider.addMetricsFields(into:using:)(void *a1)
{
  v3 = v1;
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, v5);
  sub_1AB0D3590();
  MetricsFieldsBuilder.subscript.getter(0x707954746E657665, 0xE900000000000065, v5, &type metadata for MetricsEventType, v6, &v21);
  if (v22)
  {
    if (v21 == 1701273968 && v22 == 0xE400000000000000)
    {

LABEL_14:
      v11 = a1[3];
      v12 = a1[4];
      __swift_project_boxed_opaque_existential_1Tm(a1, v11);
      v13 = MetricsFieldsBuilder.subscript.getter(1701273968, 0xE400000000000000, v11, v12);
      if (!v14)
      {
        return;
      }

      v15 = *(v3 + 24);
      MEMORY[0x1EEE9AC00](v13);

      os_unfair_lock_lock((v15 + 24));
      sub_1AB3BE518((v15 + 16), &v21);
      if (v2)
      {
        os_unfair_lock_unlock((v15 + 24));
        __break(1u);
        return;
      }

      os_unfair_lock_unlock((v15 + 24));

      v16 = v21;

      goto LABEL_20;
    }

    v8 = sub_1AB461DA4();

    if (v8)
    {
      goto LABEL_14;
    }
  }

  else
  {
  }

  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, v9);
  MetricsFieldsBuilder.subscript.getter(0x707954746E657665, 0xE900000000000065, v9, &type metadata for MetricsEventType, v10, &v21);
  if (!v22)
  {

    return;
  }

  if (v21 == 0x6E61684365676170 && v22 == 0xEA00000000006567)
  {
  }

  else
  {
    v17 = sub_1AB461DA4();

    if ((v17 & 1) == 0)
    {
      return;
    }
  }

  v18 = *(v3 + 24);

  os_unfair_lock_lock((v18 + 24));
  v16 = *(v18 + 16);

  os_unfair_lock_unlock((v18 + 24));

LABEL_20:
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4366C8);
  v21 = v16;
  v19 = a1[3];
  v20 = a1[4];
  __swift_mutable_project_boxed_opaque_existential_1(a1, v19);
  (*(v20 + 16))(&v21, 0x7473694865676170, 0xEB0000000079726FLL, v19, v20);
  __swift_destroy_boxed_opaque_existential_1Tm(&v21);
}

uint64_t sub_1AB0D3B94(uint64_t a1, uint64_t *a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1AB027460;

  return sub_1AB0D3C38(a1, a2);
}

uint64_t sub_1AB0D3C38(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3[10] = a1;
  v3[11] = v4;
  v5 = v2[1];
  v3[12] = *v2;
  v3[13] = v5;
  return MEMORY[0x1EEE6DFA0](sub_1AB0D3C64, 0, 0);
}

uint64_t sub_1AB0D3C64()
{
  v1 = v0[12];
  v2 = v0[10];
  v3 = v2[3];
  v4 = v2[4];
  __swift_project_boxed_opaque_existential_1Tm(v2, v3);
  v5 = (*(v4 + 24))(v3, v4);
  LOBYTE(v1) = sub_1AB08675C(v5, v1);

  if (v1)
  {
    v6 = v0[11];
    v0[9] = v0[13];
    swift_unknownObjectRetain();
    v7 = sub_1AB080F70(0xD000000000000019, 0x80000001AB4FF760, v6);
    v9 = v8;
    v0[14] = v8;
    v10 = swift_task_alloc();
    v0[15] = v10;
    *v10 = v0;
    v10[1] = sub_1AB0D5D44;

    return sub_1AB31DC2C(0xD00000000000001ELL, 0x80000001AB502510, v7, v9);
  }

  else
  {
    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_1AB0D3DF4()
{
  v2 = *v1;
  *(*v1 + 856) = v0;

  if (v0)
  {
    v3 = sub_1AB15E214;
    v4 = 0;
    v5 = 0;
  }

  else
  {
    v5 = *(v2 + 824);
    v4 = *(v2 + 816);
    v3 = sub_1AB0D4220;
  }

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1AB0D3F3C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = v4[8];
  __swift_project_boxed_opaque_existential_1Tm(v4 + 4, v4[7]);
  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, v9);
  (*(v10 + 24))(v9, v10);
  v11 = (*(v8 + 8))();

  sub_1AB014A58((v4 + 9), &v18, &qword_1EB436B50);
  if (v20)
  {
    sub_1AB0149B0(&v18, v25);
    v23 = &type metadata for SyncTaskScheduler;
    v24 = &protocol witness table for SyncTaskScheduler;
    sub_1AB01494C(v25, &v18);
    v12 = swift_allocObject();
    sub_1AB0149B0(&v18, v12 + 16);
    *(v12 + 56) = a2;
    *(v12 + 64) = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB436B58);
    v13 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690);
    v14 = swift_allocObject();
    *(v14 + 16) = 0;
    v15 = MEMORY[0x1E69E7CC0];
    *(v13 + 16) = v14;
    *(v13 + 24) = v15;
    *(v13 + 32) = 0;
    *(v13 + 40) = 0;
    v16 = swift_allocObject();
    v16[2] = sub_1AB0D4D00;
    v16[3] = v12;
    v16[4] = v13;
    *&v18 = sub_1AB0D4CF4;
    *(&v18 + 1) = v16;
    v19 = sub_1AB1606E0;
    v20 = v13;
    sub_1AB01494C(v22, v21);
    v21[40] = 0;

    swift_retain_n();
    sub_1AB0800FC(&v18);

    sub_1AB014AC0(&v18, &unk_1EB437970);
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
    return v13;
  }

  else
  {
    sub_1AB014AC0(&v18, &qword_1EB436B50);
  }

  return v11;
}

uint64_t sub_1AB0D41DC()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1AB0D4220()
{
  v1 = v0[100];
  v2 = *v1;
  v0[108] = *v1;
  v3 = v1[1];
  v0[109] = v3;
  v0[110] = sub_1AB0D3F3C(v0 + 56, v2, v3);

  return MEMORY[0x1EEE6DFA0](sub_1AB0D42B8, 0, 0);
}

uint64_t sub_1AB0D42B8()
{
  v1 = v0 + 2;
  v0[2] = v0;
  v0[7] = v0 + 92;
  v0[3] = sub_1AB15E0D8;
  v0[26] = swift_continuation_init();
  v2 = (v0 + 26);
  *(v2 + 72) = 1;
  sub_1AB0800FC(v2);
  sub_1AB014AC0(v2, &unk_1EB437970);

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_1AB0D4384(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1AB0D43C0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1AB0D4408(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438AB8);
  v2 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  v4 = MEMORY[0x1E69E7CC0];
  *(v2 + 16) = v3;
  *(v2 + 24) = v4;
  *(v2 + 32) = 0;
  v12 = sub_1AB225A4C;
  v13 = v2;
  v8 = MEMORY[0x1E69E9820];
  v9 = 1107296256;
  v10 = sub_1AB058080;
  v11 = &block_descriptor_21;
  v5 = _Block_copy(&v8);
  swift_retain_n();

  [a1 addSuccessBlock_];
  _Block_release(v5);
  v12 = sub_1AB225A54;
  v13 = v2;
  v8 = MEMORY[0x1E69E9820];
  v9 = 1107296256;
  v10 = sub_1AB058108;
  v11 = &block_descriptor_24;
  v6 = _Block_copy(&v8);

  [a1 addErrorBlock_];

  _Block_release(v6);
  return v2;
}

uint64_t AMSMetricsEventRecorder.flush()()
{
  sub_1AB0D4408([*(v0 + 16) flush]);
  v13 = sub_1AB016760(0, &qword_1ED4D2060);
  v14 = &protocol witness table for OS_dispatch_queue;
  v12[0] = sub_1AB461124();
  v6 = sub_1AB2F33C4;
  v7 = 0;
  v8 = sub_1AB2F35D0;
  v9 = 0;
  sub_1AB01494C(v12, v10);
  v11 = 0;
  sub_1AB0D482C(&v6);
  sub_1AB014AC0(&v6, &unk_1EB439860);
  __swift_destroy_boxed_opaque_existential_1Tm(v12);
  v13 = &type metadata for SyncTaskScheduler;
  v14 = &protocol witness table for SyncTaskScheduler;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43A8B8);
  v1 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437690);
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  v3 = MEMORY[0x1E69E7CC0];
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  *(v1 + 32) = 0;
  v4 = swift_allocObject();
  v4[2] = sub_1AB2F37F4;
  v4[3] = 0;
  v4[4] = v1;
  v6 = sub_1AB2F3B3C;
  v7 = v4;
  v8 = sub_1AB2F3B48;
  v9 = v1;
  sub_1AB01494C(v12, v10);
  v11 = 0;
  swift_retain_n();

  sub_1AB0D482C(&v6);

  sub_1AB014AC0(&v6, &unk_1EB439860);
  __swift_destroy_boxed_opaque_existential_1Tm(v12);
  return v1;
}

uint64_t sub_1AB0D47D8()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

void sub_1AB0D482C(uint64_t a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3 + 4);
  swift_beginAccess();
  v4 = *(v1 + 24);
  if (*(v1 + 32) > 1u)
  {
    if (*(v1 + 32) == 2)
    {
      v14 = v4;
      os_unfair_lock_unlock(v3 + 4);
      sub_1AB2AA45C(v4);
      v15 = v4;
      v16 = 2;
    }

    else
    {
      v18 = v4;
      os_unfair_lock_unlock(v3 + 4);
      sub_1AB2AA45C(v4);
      v15 = v4;
      v16 = 3;
    }

    goto LABEL_12;
  }

  if (*(v1 + 32))
  {
    v17 = v4;
    os_unfair_lock_unlock(v3 + 4);
    sub_1AB4369DC(v17);
    v15 = v4;
    v16 = 1;
LABEL_12:
    sub_1AB0171C8(v15, v16);
    return;
  }

  sub_1AB014A58(a1, v22, &unk_1EB439860);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_1AB2B04E0(0, v4[2] + 1, 1, v4);
  }

  v5 = v4[2];
  v6 = v4[3];
  v7 = v5 + 1;
  if (v5 >= v6 >> 1)
  {
    v19 = v4;
    v20 = v4[2];
    v21 = sub_1AB2B04E0((v6 > 1), v5 + 1, 1, v19);
    v5 = v20;
    v4 = v21;
  }

  v4[2] = v7;
  v8 = &v4[10 * v5];
  v8[2] = v22[0];
  v9 = v22[1];
  v10 = v22[2];
  v11 = v23[0];
  *(v8 + 89) = *(v23 + 9);
  v8[4] = v10;
  v8[5] = v11;
  v8[3] = v9;
  v12 = *(v1 + 24);
  *(v1 + 24) = v4;
  v13 = *(v1 + 32);
  *(v1 + 32) = 0;
  sub_1AB0171C8(v12, v13);
  os_unfair_lock_unlock(v3 + 4);
}

uint64_t LintedMetricsEvent.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a2;
  JSONObject.subscript.getter(0x73646C656966, 0xE600000000000000, v17);
  sub_1AB01EC0C(v17, v14);
  v6 = v15;
  if (!v15)
  {

    sub_1AB066D84(v17);
    sub_1AB014AC0(v14, &qword_1EB436BA0);
    v18 = 0u;
    v19 = 0u;
    v20 = 0;
LABEL_7:
    sub_1AB014AC0(&v18, &qword_1EB436BC0);
    goto LABEL_8;
  }

  v7 = v16;
  __swift_project_boxed_opaque_existential_1Tm(v14, v15);
  (*(v7 + 160))(&v18, v6, v7);
  sub_1AB066D84(v17);
  __swift_destroy_boxed_opaque_existential_1Tm(v14);
  v8 = *(&v19 + 1);
  if (!*(&v19 + 1))
  {

    goto LABEL_7;
  }

  v9 = v20;
  __swift_project_boxed_opaque_existential_1Tm(&v18, *(&v19 + 1));
  v10 = (*(v9 + 32))(MEMORY[0x1E69E6158], MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6168], v8, v9);
  sub_1AB07CDB0(&v18);
  if (v10)
  {
    JSONObject.subscript.getter(0x736575737369, 0xE600000000000000, &v18);
    v11 = sub_1AB0D4C0C(&v18, v5);
    result = sub_1AB066D84(a1);
    *a3 = v10;
    a3[1] = v11;
    return result;
  }

LABEL_8:
  sub_1AB163664();
  swift_allocError();
  *v13 = xmmword_1AB4DD110;
  *(v13 + 16) = 0x20000001F2007650uLL;
  *(v13 + 24) = 0;
  swift_willThrow();
  return sub_1AB066D84(a1);
}

uint64_t sub_1AB0D4C3C(__int128 *a1, void (*a2)(uint64_t *__return_ptr, __int128 *))
{
  v4 = *a1;
  a2(v3, &v4);
  sub_1AB42E99C(v3[0], v3[1]);
}

uint64_t sub_1AB0D4D00(__int128 *a1)
{
  v3 = v1[7];
  v4 = v1[8];
  v5 = v1[5];
  v6 = v1[6];
  __swift_project_boxed_opaque_existential_1Tm(v1 + 2, v5);
  v8 = *a1;
  return (*(v6 + 8))(&v8, v3, v4, v5, v6);
}

JetEngine::LintedMetricsEvent __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> CompoundTreatmentFilter.treat(_:on:)(JetEngine::LintedMetricsEvent _, Swift::String_optional on)
{
  v5 = v4;
  countAndFlagsBits = on.value._countAndFlagsBits;
  rawValue = _.issues._rawValue;
  v17 = v2;
  v7 = *_.fields._rawValue;
  v6 = *(_.fields._rawValue + 1);
  v8 = *v3;
  v9 = *(*v3 + 16);

  if (v9)
  {
    v12 = 0;
    v13 = v8 + 32;
    while (v12 < *(v8 + 16))
    {
      sub_1AB01494C(v13, v21);
      v15 = v22;
      v14 = v23;
      __swift_project_boxed_opaque_existential_1Tm(v21, v22);
      v19[0] = v7;
      v19[1] = v6;
      (*(v14 + 8))(v20, v19, rawValue, countAndFlagsBits, v15, v14);
      if (v5)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v21);

        goto LABEL_9;
      }

      ++v12;
      __swift_destroy_boxed_opaque_existential_1Tm(v21);

      v7 = v20[0];
      v6 = v20[1];
      v13 += 40;
      if (v9 == v12)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:
    *v17 = v7;
    v17[1] = v6;
  }

LABEL_9:
  result.issues._rawValue = v11;
  result.fields._rawValue = v10;
  return result;
}

void sub_1AB0D4EF4(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (a3)
  {
    v53 = *a1;
    v48 = a1[1];
    v5 = *v4;
    v56[0] = *v4;
    v6 = sub_1AB0D56EC(0xD000000000000011, 0x80000001AB50D2F0, a2, a3);
    v7 = *(v6 + 16);
    v52 = v6;
    v8 = v6 + 32;
    swift_unknownObjectRetain_n();
    if (v7)
    {
      v9 = 0;
      while (1)
      {
        v10 = *(v8 + 8 * v9);
        v11 = v5;
        v12 = [v5 dictionaryForKey_];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4386E0);
        v13 = swift_allocObject();
        v13[2] = v12;
        v13[3] = sub_1AB098790;
        v13[4] = 0;
        v14 = sub_1AB0A332C(v13);

        if (v14)
        {
          break;
        }

        ++v9;
        v5 = v11;
        if (v7 == v9)
        {
          goto LABEL_10;
        }
      }

      v7 = v9;
      v5 = v11;
    }

LABEL_10:
    v16 = *(v52 + 16);
    if (v7 == v16)
    {

      swift_unknownObjectRelease_n();
LABEL_12:
      *a4 = v53;
      a4[1] = v48;

      return;
    }

    if (v7 < v16)
    {
      v17 = *(v8 + 8 * v7);
      v18 = [v5 dictionaryForKey_];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4386E0);
      v19 = swift_allocObject();
      v19[2] = v18;
      v19[3] = sub_1AB098790;
      v19[4] = 0;
      v20 = sub_1AB0A332C(v19);

      swift_unknownObjectRelease_n();
      if (!v20)
      {
LABEL_44:
        __break(1u);
LABEL_45:
        swift_unknownObjectRelease();
        __break(1u);
        return;
      }

      MEMORY[0x1AC59BA20](0xD000000000000018, 0x80000001AB50D310);
      v21 = sub_1AB460514();

      v56[0] = 0x2F7363697274656DLL;
      v56[1] = 0xE800000000000000;
      MEMORY[0x1AC59BA20](a2, a3);
      MEMORY[0x1AC59BA20](47, 0xE100000000000000);
      MEMORY[0x1AC59BA20](0xD000000000000018, 0x80000001AB50D310);
      v22 = sub_1AB460514();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AEC0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1AB4D47F0;
      *(inited + 32) = v22;
      *(inited + 40) = v21;
      swift_unknownObjectRetain_n();
      *&v57 = v22;
      v24 = v22;
      sub_1AB31DC58(v5, &v57, v56);

      v25 = v56[0];

      if (v25)
      {
        v26 = 0;
      }

      else
      {
        *&v57 = *(inited + 40);
        v27 = v57;
        sub_1AB31DC58(v5, &v57, v56);

        v28 = v56[0];

        if (!v28)
        {

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();

          goto LABEL_12;
        }

        v26 = 1;
      }

      *&v57 = *(inited + 32 + 8 * v26);
      v29 = v57;
      sub_1AB31DC58(v5, &v57, v56);

      swift_unknownObjectRelease();
      v30 = v56[0];
      if (!v56[0])
      {
        goto LABEL_45;
      }

      swift_unknownObjectRelease();
      v31 = *(v30 + 16);
      if (v31)
      {
        v59 = MEMORY[0x1E69E7CC0];

        sub_1AB17783C(0, v31, 0);
        v32 = v59;
        v33 = (v30 + 40);
        do
        {
          v34 = *v33;
          *&v57 = *(v33 - 1);
          *(&v57 + 1) = v34;
          swift_bridgeObjectRetain_n();
          sub_1AB461564();
          if (*(v20 + 16) && (v35 = sub_1AB02B1D8(v56), (v36 & 1) != 0))
          {
            sub_1AB0165C4(*(v20 + 56) + 32 * v35, &v54);

            sub_1AB02B2E4(v56);
            sub_1AB014B78(&v54, &v57);
          }

          else
          {
            sub_1AB02B2E4(v56);
            v54 = 0u;
            v55 = 0u;
            v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438AE0);

            *&v57 = MEMORY[0x1E69E7CC8];
            if (*(&v55 + 1))
            {
              sub_1AB0167A8(&v54);
            }
          }

          v59 = v32;
          v38 = *(v32 + 16);
          v37 = *(v32 + 24);
          if (v38 >= v37 >> 1)
          {
            sub_1AB17783C((v37 > 1), v38 + 1, 1);
            v32 = v59;
          }

          *(v32 + 16) = v38 + 1;
          sub_1AB014B78(&v57, (v32 + 32 * v38 + 32));
          v33 += 2;
          --v31;
        }

        while (v31);
      }

      else
      {

        v32 = MEMORY[0x1E69E7CC0];
      }

      v49 = *(v32 + 16);
      if (!v49)
      {
LABEL_38:

        *a4 = v53;
        a4[1] = v48;

        return;
      }

      v39 = 0;
      v40 = v32 + 32;
      while (v39 < *(v32 + 16))
      {
        sub_1AB0165C4(v40, v56);
        __swift_project_boxed_opaque_existential_1Tm(v56, v56[3]);
        v41 = sub_1AB461D84();
        __swift_destroy_boxed_opaque_existential_1Tm(v56);
        v42 = sub_1AB460514();
        v43 = [objc_opt_self() treatmentProfileWithConfiguration:v41 topic:v42];
        swift_unknownObjectRelease();

        if (!v43)
        {

          sub_1AB1603E0();
          swift_allocError();
          *v15 = xmmword_1AB4CE300;
          goto LABEL_8;
        }

        v44 = sub_1AB4602D4();

        v45 = [v43 performTreatments_];

        if (!v45)
        {

          sub_1AB1603E0();
          swift_allocError();
          *v46 = xmmword_1AB4D6DE0;
          *(v46 + 16) = 5;
          swift_willThrow();

          return;
        }

        ++v39;
        v53 = sub_1AB4602F4();

        v40 += 32;
        if (v49 == v39)
        {
          goto LABEL_38;
        }
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_44;
  }

  sub_1AB1603E0();
  swift_allocError();
  *v15 = 0;
  *(v15 + 8) = 0;
LABEL_8:
  *(v15 + 16) = 5;
  swift_willThrow();
}

uint64_t sub_1AB0D56EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  MEMORY[0x1AC59BA20](a1, a2);
  v8 = sub_1AB460514();

  if (a4)
  {
    MEMORY[0x1AC59BA20](a3, a4);
    MEMORY[0x1AC59BA20](47, 0xE100000000000000);
    MEMORY[0x1AC59BA20](a1, a2);
    v9 = sub_1AB460514();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AEC0);
    result = swift_allocObject();
    *(result + 16) = xmmword_1AB4D47F0;
    *(result + 32) = v9;
    v11 = (result + 40);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43AEC0);
    result = swift_allocObject();
    *(result + 16) = xmmword_1AB4D4720;
    v11 = (result + 32);
  }

  *v11 = v8;
  return result;
}

uint64_t sub_1AB0D582C()
{
  v1 = v0[9];
  if (v0[8])
  {
    v2 = v0[6];
    v3 = v0[5];
    MEMORY[0x1AC59BA20](v0[7]);
    MEMORY[0x1AC59BA20](47, 0xE100000000000000);
    MEMORY[0x1AC59BA20](v3, v2);
    v4 = sub_1AB460514();

    v5 = [v1 doubleForKey_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4385A0);
    v6 = swift_allocObject();
    v0[10] = v6;
    v6[2] = v5;
    v6[3] = sub_1AB07DCEC;
    v6[4] = 0;
    v7 = swift_task_alloc();
    v0[11] = v7;
    *v7 = v0;
    v8 = sub_1AB0D5A8C;
  }

  else
  {
    MEMORY[0x1AC59BA20](v0[5], v0[6]);
    v9 = sub_1AB460514();

    v10 = [v1 doubleForKey_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4385A0);
    v6 = swift_allocObject();
    v0[12] = v6;
    v6[2] = v10;
    v6[3] = sub_1AB07DCEC;
    v6[4] = 0;
    v7 = swift_task_alloc();
    v0[13] = v7;
    *v7 = v0;
    v8 = sub_1AB0D08DC;
  }

  v7[1] = v8;

  return sub_1AB073108(v6);
}

uint64_t sub_1AB0D5A8C(uint64_t a1, char a2)
{
  v3 = *v2;
  *(v3 + 32) = a2;
  *(v3 + 16) = v2;
  *(v3 + 24) = a1;
  *(v3 + 112) = a2;

  return MEMORY[0x1EEE6DFA0](sub_1AB0D5BB0, 0, 0);
}

uint64_t sub_1AB0D5BB0()
{
  if (*(v0 + 112))
  {
    v1 = *(v0 + 72);
    MEMORY[0x1AC59BA20](*(v0 + 40), *(v0 + 48));
    v2 = sub_1AB460514();

    v3 = [v1 doubleForKey_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4385A0);
    v4 = swift_allocObject();
    *(v0 + 96) = v4;
    v4[2] = v3;
    v4[3] = sub_1AB07DCEC;
    v4[4] = 0;
    v5 = swift_task_alloc();
    *(v0 + 104) = v5;
    *v5 = v0;
    v5[1] = sub_1AB0D08DC;

    return sub_1AB073108(v4);
  }

  else
  {
    v7 = *(v0 + 24);
    v8 = *(v0 + 8);

    return v8(v7, 0);
  }
}

uint64_t sub_1AB0D5D44(uint64_t a1, char a2)
{
  v3 = *v2;
  *(v3 + 64) = a2;
  *(v3 + 48) = v2;
  *(v3 + 56) = a1;
  *(v3 + 128) = a2;

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6DFA0](sub_1AB0D5E88, 0, 0);
}

uint64_t sub_1AB0D5E88()
{
  if ((*(v0 + 128) & 1) == 0)
  {
    *(v0 + 16) = *(v0 + 56);
    v1 = *(v0 + 80);
    *(v0 + 40) = MEMORY[0x1E69E63B0];
    v2 = *(v1 + 24);
    v3 = *(v1 + 32);
    __swift_mutable_project_boxed_opaque_existential_1(v1, v2);
    (*(v3 + 16))(v0 + 16, 0xD000000000000014, 0x80000001AB500960, v2, v3);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t getEnumTagSinglePayload for MonotonicTime(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for MonotonicTime(uint64_t result, int a2, int a3)
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

uint64_t sub_1AB0D604C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1AB460544();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void *sub_1AB0D6084@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1AB0D60C4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AB0D60E4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_1AB0D60F4(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

void sub_1AB0D6104(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1AB0D6168()
{

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1AB0D61A8()
{

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1AB0D61E0()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1AB0D62F8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AB0D6338(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v9 = sub_1AB45F9B4();
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1AB0D63F0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = sub_1AB45F9B4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1AB0D6494(char a1)
{
  if (a1)
  {
    return 0x6C616974696E6924;
  }

  else
  {
    return 0x746E65746E6924;
  }
}

uint64_t sub_1AB0D6544@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X8>)
{
  result = ScalarDictionary.subscript.getter(*a1, a1[1]);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1AB0D6598@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X8>)
{
  result = ScalarDictionary.subscript.getter(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1AB0D6610()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AB0D6660()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  }

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1AB0D66B0()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1AB0D66F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1AB45F764();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1AB0D67B0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1AB45F764();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1AB0D686C()
{

  sub_1AB18CF34(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));

  return MEMORY[0x1EEE6BDD0](v0, 65, 7);
}

uint64_t sub_1AB0D68C0()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1AB0D68F8()
{

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1AB0D6948()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1AB0D69D0()
{
  v9 = *(v0 + 368);
  v10 = *(v0 + 384);
  v7 = *(v0 + 336);
  v8 = *(v0 + 352);
  v5 = *(v0 + 304);
  v6 = *(v0 + 320);
  v3 = *(v0 + 272);
  v4 = *(v0 + 288);
  v2 = *(v0 + 240);
  sub_1AB19A544(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144), *(v0 + 152), *(v0 + 160), *(v0 + 168), *(v0 + 176), *(v0 + 184), *(v0 + 192), *(v0 + 200), *(v0 + 208), *(v0 + 216), *(v0 + 224), *(v0 + 232), v2, *(&v2 + 1), *(v0 + 256), *(v0 + 264), v3, *(&v3 + 1), v4, *(&v4 + 1), v5, *(&v5 + 1), v6, *(&v6 + 1), v7, *(&v7 + 1), v8, *(&v8 + 1), v9, *(&v9 + 1), v10, *(&v10 + 1));

  return MEMORY[0x1EEE6BDD0](v0, 416, 7);
}

uint64_t sub_1AB0D6A7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1AB45F244();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437770);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_1AB0D6B94(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1AB45F244();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB437770);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1AB0D6CA8@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_1AB0D6CDC()
{
  v1 = (type metadata accessor for JetPackAMSRemoteStreamSource() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  v5 = v0 + v3;
  v6 = sub_1AB45F764();
  (*(*(v6 - 8) + 8))(v5, v6);

  return MEMORY[0x1EEE6BDD0](v0, v4 + 8, v2 | 7);
}

uint64_t sub_1AB0D6DF8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AB0D6E30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1AB45F764();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1AB0D6EEC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1AB45F764();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1AB0D6FA4()
{

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1AB0D6FF4()
{

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1AB0D7040()
{

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1AB0D70F8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB4371F0);
  v1 = sub_1AB460D74();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1AB0D720C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1AB45F764();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1AB0D72C8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1AB45F764();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1AB0D7380()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1AB0D73C0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1AB0D7408()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1AB0D7448()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1AB0D7480()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1AB0D74C0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AB0D74F8()
{

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1AB0D7548(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB4395B0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1AB0D7604(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB4395B0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1AB0D76B8()
{
  v1 = sub_1AB45F764();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1AB0D777C()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1AB0D77E0()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1AB0D7818()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1AB0D7858()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437FF0);
  (*(*(v1 - 8) + 8))(v0 + 16, v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437FF8);
  (*(*(v2 - 8) + 8))(v0 + 20, v2);

  return MEMORY[0x1EEE6BDD0](v0, 21, 7);
}

uint64_t sub_1AB0D7910()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for DaemonResponse();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB4371F0);
  v1 = sub_1AB460B24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 112) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 72);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1AB0D7A90()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for DaemonResponse();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB4371F0);
  v1 = sub_1AB460B24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1AB0D7C00()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

id sub_1AB0D7C50@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 unsignedLongLongValue];
  *a2 = result;
  return result;
}

id sub_1AB0D7C84@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 unsignedIntValue];
  *a2 = result;
  return result;
}

id sub_1AB0D7CB8@<X0>(id *a1@<X0>, _WORD *a2@<X8>)
{
  result = [*a1 unsignedShortValue];
  *a2 = result;
  return result;
}

id sub_1AB0D7CEC@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 unsignedCharValue];
  *a2 = result;
  return result;
}

id sub_1AB0D7D20@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 unsignedIntegerValue];
  *a2 = result;
  return result;
}

id sub_1AB0D7D54@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 longLongValue];
  *a2 = result;
  return result;
}

id sub_1AB0D7D88@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 intValue];
  *a2 = result;
  return result;
}

id sub_1AB0D7DBC@<X0>(id *a1@<X0>, _WORD *a2@<X8>)
{
  result = [*a1 shortValue];
  *a2 = result;
  return result;
}

id sub_1AB0D7DF0@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 charValue];
  *a2 = result;
  return result;
}

id sub_1AB0D7E24@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 integerValue];
  *a2 = result;
  return result;
}

id sub_1AB0D7E58@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 floatValue];
  *a2 = v4;
  return result;
}

id sub_1AB0D7E8C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 doubleValue];
  *a2 = v4;
  return result;
}

uint64_t sub_1AB0D7F24@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_1AB0D7F30(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v3 = a1[1];

  *a2 = v4;
  a2[1] = v3;
  return result;
}

double sub_1AB0D7F74@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(a1 + 16);
  *a2 = result;
  return result;
}

double sub_1AB0D7F80(double *a1, uint64_t a2)
{
  result = *a1;
  *(a2 + 16) = *a1;
  return result;
}

uint64_t sub_1AB0D7FA8()
{

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 48);

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t sub_1AB0D8030()
{

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1AB0D8078@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = [(_JEAtomicFlag *)*(*a1 + 24) currentValue];
  *a2 = result;
  return result;
}

uint64_t sub_1AB0D80BC()
{
  v1 = type metadata accessor for PageRenderEvent();
  v2 = *(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 64);
  if (*(v0 + 128))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 104);
  }

  v4 = (v2 + 257) & ~v2;
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 144);

  swift_unknownObjectRelease();

  v5 = sub_1AB45F9B4();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);

  return MEMORY[0x1EEE6BDD0](v0, ((v3 + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_1AB0D8238()
{

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 64);
  if (*(v0 + 128))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 104);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 144);

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 257, 7);
}

uint64_t sub_1AB0D82D8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AB0D8314()
{

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1AB0D835C()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1AB0D839C()
{
  v1 = type metadata accessor for PageRenderEvent();
  v2 = *(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 80);
  if (*(v0 + 144))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 120);
  }

  v4 = (v2 + 273) & ~v2;
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 160);

  swift_unknownObjectRelease();

  v5 = sub_1AB45F9B4();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);

  return MEMORY[0x1EEE6BDD0](v0, ((v3 + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_1AB0D8520()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1AB0D8578(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1AB45F764();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1AB0D8634(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1AB45F764();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1AB0D86EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JSBytecodeSource(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1AB0D8758(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JSBytecodeSource(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1AB0D87C8()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1AB0D8800()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1AB0D8874()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 24);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 64);

  return MEMORY[0x1EEE6BDD0](v0, 104, 7);
}

uint64_t sub_1AB0D88B8()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 56);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 96);

  return MEMORY[0x1EEE6BDD0](v0, 144, 7);
}

uint64_t sub_1AB0D8904()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

BOOL sub_1AB0D893C()
{
  v0 = sub_1AB4619B4();

  return v0 != 0;
}

uint64_t sub_1AB0D8984()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AB0D89BC()
{

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1AB0D8A04()
{

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1AB0D8A54()
{
  v1 = sub_1AB45F764();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1AB0D8AF4()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1AB0D8B34()
{

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 24);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 64);

  if (*(v0 + 160))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 136);
  }

  return MEMORY[0x1EEE6BDD0](v0, 296, 7);
}

uint64_t sub_1AB0D8BE4()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AB0D8C1C()
{
  v1 = (type metadata accessor for JSSource() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[7];
  v6 = sub_1AB45F764();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v0 + v3 + v5, 1, v6))
  {
    (*(v7 + 8))(v0 + v3 + v5, v6);
  }

  v8 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  return MEMORY[0x1EEE6BDD0](v0, v8 + 8, v2 | 7);
}

uint64_t sub_1AB0D8D58()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AB0D8DD0()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1AB0D8E0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for PageIntentInstrumentation();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1AB0D8EB8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for PageIntentInstrumentation();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1AB0D8FF8()
{

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1AB0D9040@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  *a2 = sub_1AB05231C;
  a2[1] = v5;
}

uint64_t sub_1AB0D90B0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AB0D90F0()
{
  v1 = (type metadata accessor for LocalizedStringTable() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  v5 = v0 + v3;
  v6 = sub_1AB45FAA4();
  (*(*(v6 - 8) + 8))(v5, v6);

  return MEMORY[0x1EEE6BDD0](v0, v4 + 16, v2 | 7);
}

uint64_t sub_1AB0D9224()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1AB0D925C()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1AB0D9294(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1AB45FAA4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1AB0D9350(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1AB45FAA4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1AB0D9408()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AB0D9454()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 32);

  sub_1AB18CF34(*(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120));

  return MEMORY[0x1EEE6BDD0](v0, 144, 7);
}

uint64_t sub_1AB0D94B4()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1AB0D94FC()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1AB0D9544()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1AB0D9584()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AB0D95D0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1AB0D9628()
{
  swift_getAssociatedTypeWitness();
  v1 = sub_1AB460C34();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1AB0D96D0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1AB0D9710()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1AB0D9750()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1AB0D97A0()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1AB0D97E0()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  }

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1AB0D9844()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AB0D987C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AB0D98B4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1AB45F764();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1AB0D9960(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1AB45F764();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1AB0D9A24()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1AB0D9A70@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for _Lazy_Many();
  result = _Lazy_Many.wrappedValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1AB0D9ADC()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 32);

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 176, 7);
}

uint64_t sub_1AB0D9B4C()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1AB0D9B8C()
{

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 48);

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_1AB0D9BD4()
{

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 56);

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t sub_1AB0D9C1C()
{

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1AB0D9C64()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1AB0D9CA0()
{

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_1AB0D9CF0()
{

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 88);

  return MEMORY[0x1EEE6BDD0](v0, 128, 7);
}

uint64_t sub_1AB0D9D40()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AB0D9D78()
{

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1AB0D9EEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AB45F9B4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1AB0D9F58(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AB45F9B4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1AB0D9FC8()
{
  v1 = sub_1AB45F764();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = (v4 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  (*(v2 + 8))(v0 + v4, v1);
  sub_1AB021B04(*(v0 + v5 + 8), *(v0 + v5 + 16));
  if (*(v0 + v5 + 48))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + v5 + 24);
  }

  return MEMORY[0x1EEE6BDD0](v0, v5 + 64, v3 | 7);
}

uint64_t sub_1AB0DA0B0()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1AB0DA0F0()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1AB0DA130()
{
  v1 = (type metadata accessor for SilverBulletJetPackAssetFetcher() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 144) & ~v2;
  v4 = *(*v1 + 64);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 56);

  swift_unknownObjectRelease();
  v5 = v0 + v3 + v1[7];

  if (*(v5 + 8))
  {
  }

  v6 = *(type metadata accessor for URLJetPackAssetFetcher() + 24);
  v7 = sub_1AB45F764();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v5 + v6, 1, v7))
  {
    (*(v8 + 8))(v5 + v6, v7);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1AB0DA2C0()
{
  v1 = (type metadata accessor for SilverBulletJetPackAssetFetcher() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 73) & ~v2;
  v4 = *(*v1 + 64);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  v5 = v0 + v3 + v1[7];

  if (*(v5 + 8))
  {
  }

  v6 = *(type metadata accessor for URLJetPackAssetFetcher() + 24);
  v7 = sub_1AB45F764();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v5 + v6, 1, v7))
  {
    (*(v8 + 8))(v5 + v6, v7);
  }

  v9 = (((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + v9);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + v9 + 40);

  return MEMORY[0x1EEE6BDD0](v0, v9 + 80, v2 | 7);
}

uint64_t sub_1AB0DA478()
{
  v1 = *(v0 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 112) & ~v4;
  v6 = *(v1 - 8);
  v7 = *(v6 + 80);
  v8 = (((*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8) + v7 + 8) & ~v7;
  v9 = *(v6 + 64);
  v10 = v4 | v7;
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 32);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 72);
  (*(v3 + 8))(v0 + v5, AssociatedTypeWitness);

  (*(v6 + 8))(v0 + v8, v1);

  return MEMORY[0x1EEE6BDD0](v0, v8 + v9, v10 | 7);
}

uint64_t sub_1AB0DA5F0()
{
  v1 = *(v0 + 32);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 56) & ~v4;
  v6 = *(v1 - 8);
  v7 = *(v6 + 80);
  v8 = (v5 + *(v3 + 64) + v7) & ~v7;
  v9 = v4 | v7;
  v10 = (((*(v6 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v3 + 8))(v0 + v5, AssociatedTypeWitness);
  (*(v6 + 8))(v0 + v8, v1);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + v10);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + v10 + 40);

  return MEMORY[0x1EEE6BDD0](v0, v10 + 80, v9 | 7);
}

uint64_t sub_1AB0DA78C()
{
  v1 = *(type metadata accessor for URLJetPackAssetRequest() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);

  v5 = sub_1AB45F764();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1AB0DA880()
{
  v1 = *(type metadata accessor for URLJetPackAssetRequest() - 8);
  v15 = *(v1 + 80);
  v2 = (v15 + 96) & ~v15;
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = type metadata accessor for URLJetPackAssetFetcher();
  v5 = *(*(v4 - 8) + 80);
  v6 = (v3 + v5 + 8) & ~v5;
  v14 = *(*(v4 - 8) + 64);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 56);
  v7 = v0 + v2;
  v8 = sub_1AB45F764();
  v9 = *(v8 - 8);
  v13 = *(v9 + 8);
  v13(v7, v8);

  v10 = v0 + v6;

  if (*(v0 + v6 + 8))
  {
  }

  v11 = *(v4 + 24);
  if (!(*(v9 + 48))(v10 + v11, 1, v8))
  {
    v13(v10 + v11, v8);
  }

  return MEMORY[0x1EEE6BDD0](v0, v6 + v14, v15 | v5 | 7);
}

uint64_t sub_1AB0DAA9C()
{
  v1 = *(type metadata accessor for URLJetPackAssetRequest() - 8);
  v16 = *(v1 + 80);
  v2 = (v16 + 40) & ~v16;
  v3 = *(v1 + 64);
  v4 = type metadata accessor for URLJetPackAssetFetcher();
  v5 = *(*(v4 - 8) + 80);
  v6 = (v2 + v3 + v5) & ~v5;
  v15 = *(*(v4 - 8) + 64);
  swift_unknownObjectRelease();

  v7 = v0 + v2;
  v8 = sub_1AB45F764();
  v9 = *(v8 - 8);
  v10 = *(v9 + 8);
  v10(v7, v8);

  v11 = v0 + v6;

  if (*(v0 + v6 + 8))
  {
  }

  v12 = *(v4 + 24);
  if (!(*(v9 + 48))(v11 + v12, 1, v8))
  {
    v10(v11 + v12, v8);
  }

  v13 = (((v15 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + v13);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + v13 + 40);

  return MEMORY[0x1EEE6BDD0](v0, v13 + 80, v16 | v5 | 7);
}

uint64_t sub_1AB0DACE4()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AB0DAD20()
{
  v1 = sub_1AB4605C4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1AB0DADA8()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AB0DAE0C()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1AB0DAE58()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AB0DAEA4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4396F0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1AB0DAF44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB4395B0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1AB0DB000(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB4395B0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1AB0DB0B0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AB0DB0F8()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AB0DB130()
{

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1AB0DB180()
{
  v1 = sub_1AB45F0A4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1AB0DB208()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1AB0DB25C()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1AB0DB4B0()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (((((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v2 | 7);
}

uint64_t sub_1AB0DB58C()
{

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1AB0DB5DC()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1AB0DB61C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

__n128 sub_1AB0DB670(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

__n128 sub_1AB0DB6CC(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

void *sub_1AB0DB8E0@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v4 = *(a1 + a2 - 8);
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  result = Preferences.subscript.getter(v7, a1, v4);
  *a3 = result;
  a3[1] = &off_1F2006A80;
  return result;
}

__n128 sub_1AB0DB988(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1AB0DB994()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1AB0DB9E4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1AB0DBA34()
{
  v1 = sub_1AB45F0A4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_1AB0DBB4C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1AB0DBBAC()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1AB0DBBEC()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1AB0DBC34(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB4395B0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1AB0DBCF0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB4395B0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1AB0DBDB0()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = v4 + *(v2 + 64);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, AssociatedTypeWitness);

  return MEMORY[0x1EEE6BDD0](v0, v11 + 8, v10 | 7);
}

uint64_t sub_1AB0DBF1C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1AB0DBF64()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AB0DBF9C()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1AB0DBFD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AB45F9B4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1AB0DC040(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AB45F9B4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1AB0DC0C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AB45F764();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1AB0DC12C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AB45F764();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1AB0DC1B4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for URLJetPackAssetFetcher();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1AB0DC260(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for URLJetPackAssetFetcher();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1AB0DC304()
{
  v1 = sub_1AB4605C4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1AB0DC38C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AB0DC3C8()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1AB0DC408()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1AB0DC448()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AB0DC480@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___JEMediaActivity_type;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_1AB0DC4D8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___JEMediaActivity_type;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_1AB0DC52C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___JEMediaActivity_playlistItem;
  swift_beginAccess();
  *a2 = *(v3 + v4);
  return swift_unknownObjectRetain();
}

uint64_t sub_1AB0DC58C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AB0DC600(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MonotonicTimeReference();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1AB0DC6C0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for MonotonicTimeReference();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1AB0DC77C()
{

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1AB0DC7D4()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1AB0DC814()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1AB0DC854()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437FF0);
  (*(*(v1 - 8) + 8))(v0 + 16, v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB437FF8);
  (*(*(v2 - 8) + 8))(v0 + 20, v2);

  return MEMORY[0x1EEE6BDD0](v0, 21, 7);
}

uint64_t sub_1AB0DC934()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  sub_1AB18CF34(*(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104));

  return MEMORY[0x1EEE6BDD0](v0, 128, 7);
}

uint64_t sub_1AB0DC9B4()
{

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 72);

  return MEMORY[0x1EEE6BDD0](v0, 112, 7);
}

uint64_t sub_1AB0DCA1C()
{

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 72);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 112);

  return MEMORY[0x1EEE6BDD0](v0, 152, 7);
}

uint64_t sub_1AB0DCAB0()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1AB0DCAE8()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  }

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1AB0DCB38(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4395E0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1AB0DCBF4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4395E0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1AB0DCCA4()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1AB0DCD00()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AB0DCD58()
{

  if (*(v0 + 24))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1AB0DCDBC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

id sub_1AB0DCDF8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*(*a1 + 16) monitorsLifecycleEvents];
  *a2 = result;
  return result;
}

uint64_t sub_1AB0DCE48()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AB0DCE90()
{

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1AB0DCEE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AB45F764();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1AB0DCF4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AB45F764();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1AB0DCFBC()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  }

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1AB0DD00C()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 88);

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 185, 7);
}

uint64_t sub_1AB0DD084()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1AB0DD0CC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AB0DD10C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AB0DD144()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1AB0DD17C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AB0DD1B4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1AB0DD1FC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AB0DD244()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AB0DD27C()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AB0DD2DC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB4395B0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_1AB0DD398(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB4395B0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1AB0DD448()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1AB0DD488()
{

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1AB0DD630@<X0>(uint64_t *a1@<X8>)
{
  result = JSRequest.version.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1AB0DD688(uint64_t *a1)
{
  v1 = *a1;
  v3[3] = MEMORY[0x1E69E6810];
  v3[0] = v1;
  return sub_1AB01AD48(v3, 0x6E6F697372657624, 0xE800000000000000);
}

uint64_t sub_1AB0DD6E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AB45FB04();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AB0DD754(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_1AB45FB04();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1AB0DD7D4()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1AB0DD83C()
{
  v1 = *(v0 + 24);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64);

  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1AB0DD910()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 48) & ~v4;
  v6 = *(v3 + 64);
  v7 = *(type metadata accessor for _IntentAsJSIntentModel() - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v6 + v8) & ~v8;
  v10 = v4 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v3 + 8))(v0 + v5, v1);
  (*(*(v2 - 8) + 8))(v0 + v9, v2);

  return MEMORY[0x1EEE6BDD0](v0, v11 + 8, v10 | 7);
}

uint64_t sub_1AB0DDA78()
{
  v1 = *(v0 + 16);
  v2 = *(type metadata accessor for _IntentAsJSIntentModel() - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(*(v1 - 8) + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1AB0DDB68()
{

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t sub_1AB0DDBB0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1AB0DDBF8()
{
  v1 = *(v0 + 16);
  v2 = *(type metadata accessor for JSIntentRequest() - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  (*(*(v1 - 8) + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1AB0DDCCC()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AB0DDD78()
{
  _Block_release(*(v0 + 48));

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1AB0DDDFC()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AB0DDE34()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1AB0DDE6C()
{
  sub_1AB460A64();
  swift_getWitnessTable();
  sub_1AB461834();

  return swift_getWitnessTable();
}

uint64_t sub_1AB0DDF2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AB45F764();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1AB0DDF98(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AB45F764();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1AB0DE008()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1AB0DE040()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1AB0DE084()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AB0DE0C4()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AB0DE100()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  }

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1AB0DE158()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AB0DE198()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1AB0DE1D8()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AB0DE218()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1AB0DE2D0()
{

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1AB0DE310()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1AB0DE3B0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AB0DE3F0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1AB0DE438(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for NetRequest();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1AB0DE4E4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for NetRequest();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1AB0DE588()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1AB0DE5C8()
{

  if (*(v0 + 72))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 48);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 96);

  return MEMORY[0x1EEE6BDD0](v0, 152, 7);
}

uint64_t sub_1AB0DE640@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AB3700AC(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1AB0DE678()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AB0DE6B0()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1AB0DE6F0()
{
  v1 = sub_1AB45F764();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1AB0DE78C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1AB0DE7E4()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1AB0DE854(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1AB45F764();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1AB0DE920(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1AB45F764();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t sub_1AB0DE9DC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1AB0DEA1C()
{

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1AB0DEA6C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1AB0DEAB0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_1AB0DEABC(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];

  *(a2 + 24) = v4;
  *(a2 + 32) = v3;
  return result;
}

uint64_t sub_1AB0DEB18@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 56);
  *a2 = *(result + 48);
  *(a2 + 8) = v2;
  return result;
}

uint64_t sub_1AB0DEB2C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  *(a2 + 48) = *result;
  *(a2 + 56) = v2;
  return result;
}

uint64_t sub_1AB0DEB40(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for NetRequest();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1AB0DEBEC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for NetRequest();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1AB0DECA0()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1AB0DED04()
{

  return MEMORY[0x1EEE6BDD0](v0, 25, 7);
}

uint64_t sub_1AB0DED68()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1AB0DEDE4()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB438548) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);

  v5 = (v0 + v3);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v6 = sub_1AB45F9B4();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1AB0DEF48()
{

  return MEMORY[0x1EEE6BDD0](v0, 104, 7);
}

uint64_t sub_1AB0DEFA8()
{

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_1AB0DF004()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AB0DF054@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 32);
  *a2 = *(v3 + 24);
  a2[1] = v4;
}

uint64_t sub_1AB0DF0B8()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1AB0DF0F0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_1AB0DF148()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 81, 7);
}

uint64_t sub_1AB0DF190()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 72);

  return MEMORY[0x1EEE6BDD0](v0, 121, 7);
}

__n128 sub_1AB0DF1E8@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  v2 = a1[1].n128_u8[0];
  result = *a1;
  *a2 = *a1;
  a2[1].n128_u8[0] = v2;
  a2[1].n128_u8[1] = 1;
  return result;
}

uint64_t sub_1AB0DF230(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1AB45FD64();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1AB0DF2DC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1AB45FD64();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1AB0DF380()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AB0DF3DC()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1AB0DF464()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43BD68);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  if (*(v0 + 72))
  {
  }

  v5 = (v3 + 120) & ~v3;

  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v5, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v4, v3 | 7);
}

uint64_t sub_1AB0DF574()
{
  v1 = *(type metadata accessor for URLJetPackAssetRequest() - 8);
  v21 = *(v1 + 80);
  v2 = (v21 + 112) & ~v21;
  v3 = *(v1 + 64);
  v20 = type metadata accessor for URLJetPackAssetFetcher();
  v18 = *(*(v20 - 8) + 80);
  v4 = (v2 + v3 + v18) & ~v18;
  v17 = *(*(v20 - 8) + 64);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43BD68);
  v5 = *(v19 - 8);
  v15 = *(v5 + 80);
  v16 = *(v5 + 64);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  if (*(v0 + 72))
  {
  }

  v6 = v0 + v2;
  v7 = sub_1AB45F764();
  v8 = *(v7 - 8);
  v9 = *(v8 + 8);
  v9(v6, v7);

  v10 = v4;
  v11 = v0 + v4;

  if (*(v0 + v4 + 8))
  {
  }

  v12 = *(v20 + 24);
  if (!(*(v8 + 48))(v11 + v12, 1, v7))
  {
    v9(v11 + v12, v7);
  }

  v13 = (v17 + v10 + v15 + 2) & ~v15;

  (*(v5 + 8))(v0 + v13, v19);

  return MEMORY[0x1EEE6BDD0](v0, v13 + v16, v21 | v18 | v15 | 7);
}

uint64_t sub_1AB0DF854()
{
  v1 = *(type metadata accessor for URLJetPackAssetRequest() - 8);
  v21 = *(v1 + 80);
  v2 = (v21 + 104) & ~v21;
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = type metadata accessor for URLJetPackAssetFetcher();
  v18 = *(*(v20 - 8) + 80);
  v4 = (((v3 + 15) & 0xFFFFFFFFFFFFFFF8) + v18 + 8) & ~v18;
  v17 = *(*(v20 - 8) + 64);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43BD68);
  v5 = *(v19 - 8);
  v15 = *(v5 + 80);
  v16 = *(v5 + 64);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  if (*(v0 + 72))
  {
  }

  v6 = v0 + v2;
  v7 = sub_1AB45F764();
  v8 = *(v7 - 8);
  v9 = *(v8 + 8);
  v9(v6, v7);

  v10 = (((v3 + 15) & 0xFFFFFFFFFFFFFFF8) + v18 + 8) & ~v18;
  v11 = v0 + v4;

  if (*(v0 + v4 + 8))
  {
  }

  v12 = *(v20 + 24);
  if (!(*(v8 + 48))(v11 + v12, 1, v7))
  {
    v9(v11 + v12, v7);
  }

  v13 = (v17 + v10 + v15 + 2) & ~v15;

  (*(v5 + 8))(v0 + v13, v19);

  return MEMORY[0x1EEE6BDD0](v0, v13 + v16, v21 | v18 | v15 | 7);
}

uint64_t sub_1AB0DFB70()
{
  v1 = (type metadata accessor for ValidatedJetPackAssetLocations.URLLocation() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43BD68);
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);
  swift_unknownObjectRelease();
  v9 = sub_1AB45F764();
  (*(*(v9 - 8) + 8))(v0 + v3, v9);

  if (*(v0 + v3 + v1[9]))
  {
  }

  v10 = v2 | v7;
  v11 = (((((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v7 + 8) & ~v7;
  swift_unknownObjectRelease();

  (*(v6 + 8))(v0 + v11, v5);

  return MEMORY[0x1EEE6BDD0](v0, v11 + v8, v10 | 7);
}

uint64_t sub_1AB0DFD38()
{
  v1 = *(v0 + 32);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB43BD68);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 8) & ~v8;
  v12 = *(v7 + 64);
  v10 = v3 | v8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  swift_unknownObjectRelease();

  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x1EEE6BDD0](v0, v9 + v12, v10 | 7);
}

uint64_t sub_1AB0DFECC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 16);
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB4395B0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 36);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1AB0DFF94(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 16) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB4395B0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1AB0E0044()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AB0E0094()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t sub_1AB0E00EC()
{
  v1 = *(v0 + 24);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1AB0E01AC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1AB0E01E4()
{

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1AB0E0234()
{
  v1 = sub_1AB45F764();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1AB0E02F8()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1AB0E0360()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v4 + 8, v2 | 7);
}

uint64_t sub_1AB0E03F4()
{

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1AB0E043C()
{

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1AB0E0498()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  sub_1AB18CF34(*(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104));

  return MEMORY[0x1EEE6BDD0](v0, 128, 7);
}

uint64_t sub_1AB0E04F0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for JetPackAsset.Metadata(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1AB0E059C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for JetPackAsset.Metadata(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1AB0E0650()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1AB0E0688()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1AB0E06C4()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1AB0E071C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AB460C14();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1AB0E078C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AB460C14();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1AB0E084C()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1AB0E0894()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1AB0E08D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 24);
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB4395B0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1AB0E099C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 24) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB4395B0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1AB0E0A5C()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1AB0E0AB0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 161);
  return result;
}

uint64_t sub_1AB0E0AF8(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 161) = v2;
  return sub_1AB079D98();
}

uint64_t sub_1AB0E0B40@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 168);
}

uint64_t sub_1AB0E0B8C()
{

  sub_1AB07AD28(v0);
}

uint64_t sub_1AB0E0BD8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 176);
  return result;
}

void sub_1AB0E0C20(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 176) = v2;
  sub_1AB07AF14();
}

__n128 sub_1AB0E0C68@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = *(v3 + 184);
  v5 = *(v3 + 200);
  *a2 = result;
  *(a2 + 16) = v5;
  return result;
}

uint64_t sub_1AB0E0CB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AB45F764();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1AB0E0D24(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AB45F764();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t get_enum_tag_for_layout_string_9JetEngine17ContainerLocationC0C5ErrorO_0(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_1AB0E0DBC(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

__n128 sub_1AB0E0E3C(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

__n128 sub_1AB0E0EB4(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1AB0E0EC0@<X0>(void *a1@<X8>)
{
  result = NetRequest.subscript.getter(&v3);
  *a1 = v3;
  return result;
}

uint64_t sub_1AB0E0EFC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 16);
  v5 = *(a3 + a4 - 8);
  v7 = *a1;

  return sub_1AB3DECB0(&v7, v4, v5);
}

uint64_t sub_1AB0E0F5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1AB45F764();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1AB0E101C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1AB45F764();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1AB0E10D8()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  }

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1AB0E114C()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1AB0E1184()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1AB0E11D4()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
  }

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1AB0E1224()
{

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 24);
  if (*(v0 + 80))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 56);
  }

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t sub_1AB0E1274()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1AB0E12E0()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1AB0E1450(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4395E0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1AB0E150C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB4395E0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1AB0E1638(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1AB45F9B4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1AB0E16E4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1AB45F9B4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1AB0E17C0(uint64_t a1, uint64_t a2, void **a3)
{
  v4 = *a3;

  return sub_1AB3FB118(a1, v4);
}

double sub_1AB0E1888@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AB014A58(a1 + 24, v6, &qword_1EB43BCF0);
  v3 = v6[3];
  *(a2 + 32) = v6[2];
  *(a2 + 48) = v3;
  *(a2 + 64) = v6[4];
  *(a2 + 80) = v7;
  result = *v6;
  v5 = v6[1];
  *a2 = v6[0];
  *(a2 + 16) = v5;
  return result;
}

uint64_t sub_1AB0E18FC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 112);
  v3 = *(a1 + 120);
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_1AB0E1908(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];

  *(a2 + 112) = v4;
  *(a2 + 120) = v3;
  return result;
}

uint64_t sub_1AB0E194C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 128);
  v3 = *(a1 + 136);
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_1AB0E1958(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];

  *(a2 + 128) = v4;
  *(a2 + 136) = v3;
  return result;
}

uint64_t sub_1AB0E19A8(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;

  *(a2 + 144) = v3;
  return result;
}