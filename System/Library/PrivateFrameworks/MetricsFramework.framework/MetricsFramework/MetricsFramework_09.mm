uint64_t RequestWithNoAssetData.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98A120, &unk_258F13DB0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = v28 - v7;
  v9 = *v1;
  v10 = v1[1];
  v60 = v1[2];
  LODWORD(v59) = *(v1 + 24);
  v11 = v1[4];
  v57 = v1[5];
  v58 = v11;
  v12 = v1[6];
  v55 = v1[7];
  v56 = v12;
  v13 = v1[8];
  v53 = v1[9];
  v54 = v13;
  v14 = v1[11];
  v51 = v1[10];
  v52 = v14;
  v15 = v1[13];
  v49 = v1[12];
  v50 = v15;
  v16 = v1[15];
  v47 = v1[14];
  v48 = v16;
  v17 = v1[17];
  v45 = v1[16];
  v46 = v17;
  v18 = v1[19];
  v43 = v1[18];
  v44 = v18;
  v19 = v1[21];
  v42 = v1[20];
  v39 = v19;
  v20 = v1[23];
  v41 = v1[22];
  v40 = v20;
  v38 = *(v1 + 48);
  v63 = *(v1 + 196);
  v37 = *(v1 + 50);
  v36 = *(v1 + 204);
  v35 = *(v1 + 52);
  v34 = *(v1 + 212);
  v21 = v1[28];
  v32 = v1[27];
  v33 = v21;
  v30 = v1[29];
  v31 = *(v1 + 240);
  v22 = v1[32];
  v28[1] = v1[31];
  v28[2] = v22;
  v29 = v1[33];
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_258EA2328();
  sub_258F0AEE0();
  LOBYTE(v62) = 0;
  v24 = v61;
  sub_258F0ACA0();
  if (v24)
  {
    return (*(v4 + 8))(v8, v3);
  }

  v61 = v4;
  LOBYTE(v62) = 1;
  sub_258F0ACC0();
  LOBYTE(v62) = 2;
  sub_258F0ACA0();
  LOBYTE(v62) = 3;
  sub_258F0ACA0();
  LOBYTE(v62) = 4;
  sub_258F0ACA0();
  LOBYTE(v62) = 5;
  sub_258F0ACA0();
  LOBYTE(v62) = 6;
  sub_258F0ACA0();
  LOBYTE(v62) = 7;
  sub_258F0ACA0();
  LOBYTE(v62) = 8;
  sub_258F0ACA0();
  LOBYTE(v62) = 9;
  v59 = v8;
  v60 = v3;
  sub_258F0ACA0();
  LOBYTE(v62) = 10;
  sub_258F0ACA0();
  LOBYTE(v62) = 11;
  sub_258F0ACA0();
  LOBYTE(v62) = 12;
  v64 = v63;
  sub_258F0ACE0();
  LOBYTE(v62) = 13;
  v64 = v36;
  sub_258F0ACE0();
  LOBYTE(v62) = 14;
  v64 = v34;
  sub_258F0ACE0();
  LOBYTE(v62) = 15;
  sub_258F0ACA0();
  LOBYTE(v62) = 16;
  sub_258F0ACF0();
  LOBYTE(v62) = 17;
  sub_258F0ACA0();
  v62 = v29;
  v64 = 18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988DB0, &unk_258F13940);
  sub_258EA2FE8(&qword_27F98A130);
  v26 = v59;
  v27 = v60;
  sub_258F0ACD0();
  return (*(v61 + 8))(v26, v27);
}

unint64_t sub_258EA2328()
{
  result = qword_27F98A128;
  if (!qword_27F98A128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F98A128);
  }

  return result;
}

uint64_t RequestWithNoAssetData.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98A138, &qword_258F13DC0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v40 - v9;
  v11 = a1[3];
  v12 = a1[4];
  v135 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v11);
  sub_258EA2328();
  sub_258F0AED0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(v135);
  }

  v13 = v6;
  LOBYTE(v77[0]) = 0;
  v15 = sub_258F0ABF0();
  v74 = v16;
  LOBYTE(v77[0]) = 1;
  v17 = sub_258F0AC10();
  v134 = v18 & 1;
  LOBYTE(v77[0]) = 2;
  v73 = sub_258F0ABF0();
  v71 = v19;
  LOBYTE(v77[0]) = 3;
  v72 = sub_258F0ABF0();
  v70 = v20;
  LOBYTE(v77[0]) = 4;
  v61 = sub_258F0ABF0();
  v69 = v21;
  LOBYTE(v77[0]) = 5;
  v60 = sub_258F0ABF0();
  v68 = v22;
  LOBYTE(v77[0]) = 6;
  v59 = sub_258F0ABF0();
  v67 = v23;
  LOBYTE(v77[0]) = 7;
  v58 = sub_258F0ABF0();
  v66 = v24;
  LOBYTE(v77[0]) = 8;
  v57 = sub_258F0ABF0();
  v65 = v25;
  v75 = 0;
  LOBYTE(v77[0]) = 9;
  v26 = sub_258F0ABF0();
  v64 = v27;
  v75 = 0;
  v28 = v26;
  LOBYTE(v77[0]) = 10;
  v56 = sub_258F0ABF0();
  v63 = v29;
  v75 = 0;
  LOBYTE(v77[0]) = 11;
  v55 = sub_258F0ABF0();
  v62 = v30;
  v75 = 0;
  LOBYTE(v77[0]) = 12;
  v54 = sub_258F0AC30();
  v75 = 0;
  v132 = BYTE4(v54) & 1;
  LOBYTE(v77[0]) = 13;
  v53 = sub_258F0AC30();
  v75 = 0;
  v129 = BYTE4(v53) & 1;
  LOBYTE(v77[0]) = 14;
  v52 = sub_258F0AC30();
  v75 = 0;
  v126 = BYTE4(v52) & 1;
  LOBYTE(v77[0]) = 15;
  v49 = sub_258F0ABF0();
  v50 = v31;
  v51 = 0;
  LOBYTE(v77[0]) = 16;
  v47 = sub_258F0AC40();
  v75 = 0;
  v123 = v32 & 1;
  LOBYTE(v77[0]) = 17;
  v46 = sub_258F0ABF0();
  v48 = v33;
  v75 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988DB0, &unk_258F13940);
  v120 = 18;
  sub_258EA2FE8(&qword_27F989BA0);
  v34 = v75;
  sub_258F0AC20();
  v75 = v34;
  if (v34)
  {
    (*(v13 + 8))(v10, v5);
    __swift_destroy_boxed_opaque_existential_1Tm(v135);

    if (!v51)
    {
    }
  }

  else
  {
    (*(v13 + 8))(v10, v5);
    v41 = v121;
    v76[0] = v15;
    v76[1] = v74;
    v43 = v17;
    v76[2] = v17;
    v42 = v134;
    LOBYTE(v76[3]) = v134;
    v76[4] = v73;
    v76[5] = v71;
    v76[6] = v72;
    v76[7] = v70;
    v76[8] = v61;
    v76[9] = v69;
    v76[10] = v60;
    v76[11] = v68;
    v76[12] = v59;
    v76[13] = v67;
    v76[14] = v58;
    v76[15] = v66;
    v76[16] = v57;
    v76[17] = v65;
    v76[18] = v28;
    v45 = v28;
    v76[19] = v64;
    v76[20] = v55;
    v76[21] = v62;
    v76[22] = v56;
    v76[23] = v63;
    LODWORD(v76[24]) = v54;
    LODWORD(v51) = v132;
    BYTE4(v76[24]) = v132;
    *(&v76[24] + 5) = v130;
    HIBYTE(v76[24]) = v131;
    LODWORD(v76[25]) = v53;
    v44 = v129;
    BYTE4(v76[25]) = v129;
    *(&v76[25] + 5) = v127;
    HIBYTE(v76[25]) = v128;
    LODWORD(v76[26]) = v52;
    *(&v76[26] + 5) = v124;
    HIDWORD(v76[30]) = *&v122[3];
    *(&v76[30] + 1) = *v122;
    v35 = v126;
    BYTE4(v76[26]) = v126;
    HIBYTE(v76[26]) = v125;
    v37 = v49;
    v36 = v50;
    v76[27] = v49;
    v76[28] = v50;
    v38 = v47;
    v76[29] = v47;
    v39 = v123;
    LOBYTE(v76[30]) = v123;
    v76[31] = v46;
    v76[32] = v48;
    v76[33] = v121;
    memcpy(a2, v76, 0x110uLL);
    sub_258EA3054(v76, v77);
    __swift_destroy_boxed_opaque_existential_1Tm(v135);
    v77[0] = v15;
    v77[1] = v74;
    v77[2] = v43;
    v78 = v42;
    v80 = v73;
    v81 = v71;
    v82 = v72;
    v83 = v70;
    *v79 = *v133;
    *&v79[3] = *&v133[3];
    v84 = v61;
    v85 = v69;
    v86 = v60;
    v87 = v68;
    v88 = v59;
    v89 = v67;
    v90 = v58;
    v91 = v66;
    v92 = v57;
    v93 = v65;
    v94 = v45;
    v95 = v64;
    v96 = v55;
    v97 = v62;
    v98 = v56;
    v99 = v63;
    v100 = v54;
    v101 = v51;
    v102 = v130;
    v103 = v131;
    v104 = v53;
    v105 = v44;
    v106 = v127;
    v107 = v128;
    v108 = v52;
    v109 = v35;
    v110 = v124;
    v111 = v125;
    v112 = v37;
    v113 = v36;
    v114 = v38;
    v115 = v39;
    *&v116[3] = *&v122[3];
    *v116 = *v122;
    v117 = v46;
    v118 = v48;
    v119 = v41;
    return sub_258EA308C(v77);
  }
}

uint64_t sub_258EA2FE8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F988DB0, &unk_258F13940);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_258EA30F4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 272))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_258EA3150(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 264) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 272) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 272) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_258EA3250()
{
  result = qword_27F98A150;
  if (!qword_27F98A150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F98A150);
  }

  return result;
}

unint64_t sub_258EA32A8()
{
  result = qword_27F98A158;
  if (!qword_27F98A158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F98A158);
  }

  return result;
}

unint64_t sub_258EA3300()
{
  result = qword_27F98A160;
  if (!qword_27F98A160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F98A160);
  }

  return result;
}

uint64_t sub_258EA3354@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = -1 << *(a1 + 32);
  v4 = ~v3;
  *a3 = a1;
  v7 = *(a1 + 64);
  result = a1 + 64;
  v6 = v7;
  v8 = -v3;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  *(a3 + 8) = result;
  *(a3 + 16) = v4;
  *(a3 + 24) = 0;
  *(a3 + 32) = v9 & v6;
  v10 = -1 << *(a2 + 32);
  v11 = ~v10;
  *(a3 + 40) = a2;
  v14 = *(a2 + 64);
  v12 = a2 + 64;
  v13 = v14;
  v15 = -v10;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  else
  {
    v16 = -1;
  }

  *(a3 + 48) = v12;
  *(a3 + 56) = v11;
  *(a3 + 64) = 0;
  *(a3 + 72) = v16 & v13;
  *(a3 + 80) = 0;
  return result;
}

void sub_258EA33C0(uint64_t a1@<X8>)
{
  if (*(v1 + 80) == 1)
  {
    *(a1 + 64) = 0;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    return;
  }

  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (!v7)
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v33 = 0;
        v31 = 0u;
        v32 = 0u;
        *v1 = v3;
        v1[1] = v4;
        v1[2] = v6;
        v1[3] = v11;
        v1[4] = 0;
        goto LABEL_25;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
    goto LABEL_31;
  }

  v8 = v1[3];
LABEL_12:
  v12 = (v7 - 1) & v7;
  sub_258DEB85C(*(v3 + 48) + 40 * (__clz(__rbit64(v7)) | (v8 << 6)), &v31);
  v13 = *(&v32 + 1);
  *v1 = v3;
  v1[1] = v4;
  v1[2] = v6;
  v1[3] = v8;
  v1[4] = v12;
  if (v13)
  {
    v34 = v31;
    v35 = v32;
    v36 = v33;
    v14 = v1[5];
    v15 = v1[6];
    v17 = v1[7];
    v16 = v1[8];
    v18 = v1[9];
    if (v18)
    {
      v19 = v1[8];
LABEL_22:
      v23 = (v18 - 1) & v18;
      sub_258DE4090(*(v14 + 56) + ((v19 << 11) | (32 * __clz(__rbit64(v18)))), &v29);
      v24 = *(&v30 + 1);
      v1[5] = v14;
      v1[6] = v15;
      v1[7] = v17;
      v1[8] = v19;
      v1[9] = v23;
      if (v24)
      {
        sub_258DEB8B8(&v29, &v31);
        v25 = v35;
        *a1 = v34;
        *(a1 + 16) = v25;
        *(a1 + 32) = v36;
        sub_258DEB8B8(&v31, (a1 + 40));
        return;
      }

LABEL_27:
      sub_258E0F590(&v34);
      v26 = &unk_27F989868;
      v27 = &unk_258F12D70;
      v28 = &v29;
      goto LABEL_28;
    }

    v20 = (v17 + 64) >> 6;
    if (v20 <= v16 + 1)
    {
      v21 = v16 + 1;
    }

    else
    {
      v21 = (v17 + 64) >> 6;
    }

    v22 = v21 - 1;
    while (1)
    {
      v19 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v19 >= v20)
      {
        v29 = 0u;
        v30 = 0u;
        v1[5] = v14;
        v1[6] = v15;
        v1[7] = v17;
        v1[8] = v22;
        v1[9] = 0;
        goto LABEL_27;
      }

      v18 = *(v15 + 8 * v19);
      ++v16;
      if (v18)
      {
        goto LABEL_22;
      }
    }

LABEL_31:
    __break(1u);
    return;
  }

LABEL_25:
  v26 = &unk_27F98A170;
  v27 = &unk_258F14080;
  v28 = &v31;
LABEL_28:
  sub_258DE2184(v28, v26, v27);
  *(v1 + 80) = 1;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
}

uint64_t sub_258EA35F0()
{
  v0 = sub_258F0AD90();

  if (v0 >= 0x13)
  {
    return 19;
  }

  else
  {
    return v0;
  }
}

double sub_258EA3644(_OWORD *a1)
{
  result = 0.0;
  *a1 = xmmword_258F0FD10;
  a1[1] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[12] = 0u;
  a1[13] = 0u;
  a1[14] = 0u;
  a1[15] = 0u;
  a1[16] = 0u;
  return result;
}

uint64_t sub_258EA36AC()
{
  v1 = *(v0 + 16) + OBJC_IVAR____TtC16MetricsFramework30RequestWithNoAssetDataProvider_logger;
  v2 = sub_258F0A350();
  v3 = sub_258F0A810();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_258DD8000, v2, v3, "no-op data provider invoked: RequestWithNoAssetDataProvider", v4, 2u);
    MEMORY[0x259C9EF40](v4, -1, -1);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_258EA378C()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework30RequestWithNoAssetDataProvider_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RequestWithNoAssetDataProvider()
{
  result = qword_27F98A180;
  if (!qword_27F98A180)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_258EA387C()
{
  result = qword_27F98A190;
  if (!qword_27F98A190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F98A190);
  }

  return result;
}

uint64_t sub_258EA38D0()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_258DE1DC4;

  return sub_258EA368C();
}

uint64_t RequestWithNoAssetMetrics.__allocating_init(defaults:logger:fbfBundleId:)(void *a1, void *a2, unint64_t *a3, uint64_t a4)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  v11 = swift_allocObject();
  RequestWithNoAssetMetrics.init(defaults:logger:fbfBundleId:)(a1, a2, a3, a4);
  return v11;
}

uint64_t RequestWithNoAssetMetrics.init(defaults:logger:fbfBundleId:)(void *a1, void *a2, unint64_t *a3, uint64_t a4)
{
  v141 = a3;
  v140 = a4;
  v146 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988720, &qword_258F0B830);
  v6 = *(*(v5 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v5 - 8, v7);
  v130 = &v119 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v10);
  v137 = &v119 - v11;
  v125 = sub_258F09B00();
  v124 = *(v125 - 8);
  v12 = *(v124 + 64);
  MEMORY[0x28223BE20](v125, v13);
  v122 = &v119 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = sub_258F09A20();
  v121 = *(v123 - 8);
  v15 = *(v121 + 64);
  MEMORY[0x28223BE20](v123, v16);
  v120 = &v119 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_258F09A70();
  v147 = *(v18 - 8);
  v19 = *(v147 + 64);
  v21 = MEMORY[0x28223BE20](v18, v20);
  v135 = &v119 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v23);
  v25 = &v119 - v24;
  v26 = sub_258F0A370();
  v27 = *(v26 - 8);
  v28 = v27[8];
  v30 = MEMORY[0x28223BE20](v26, v29);
  v132 = &v119 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v30, v32);
  v138 = &v119 - v34;
  MEMORY[0x28223BE20](v33, v35);
  v37 = &v119 - v36;
  v38 = v27 + 2;
  v39 = v27[2];
  v39(&v119 - v36, a2, v26);
  v40 = type metadata accessor for RequestWithNoAssetDataProvider();
  v41 = *(v40 + 48);
  v42 = *(v40 + 52);
  v43 = swift_allocObject();
  v143 = v27;
  v44 = v27[4];
  v136 = v37;
  v129 = v27 + 4;
  v128 = v44;
  v44(v43 + OBJC_IVAR____TtC16MetricsFramework30RequestWithNoAssetDataProvider_logger, v37, v26);
  v45 = v154;
  *(v154 + 16) = v43;
  v131 = OBJC_IVAR____TtC16MetricsFramework25RequestWithNoAssetMetrics_logger;
  v46 = v45;
  v47 = a2;
  v39((v45 + OBJC_IVAR____TtC16MetricsFramework25RequestWithNoAssetMetrics_logger), a2, v26);
  sub_258F09A60();
  v48 = *(v147 + 32);
  v139 = OBJC_IVAR____TtC16MetricsFramework25RequestWithNoAssetMetrics_oddId;
  v134 = v25;
  v145 = v18;
  v127 = v147 + 32;
  v126 = v48;
  v48(v46 + OBJC_IVAR____TtC16MetricsFramework25RequestWithNoAssetMetrics_oddId, v25, v18);
  v49 = (v46 + OBJC_IVAR____TtC16MetricsFramework25RequestWithNoAssetMetrics_fbfBundleId);
  v50 = v140;
  *v49 = v141;
  v49[1] = v50;
  v141 = v49;
  v51 = sub_258F0A1F0();
  v52 = *(v51 + 48);
  v53 = *(v51 + 52);
  swift_allocObject();
  v54 = v146;
  v55 = sub_258F0A1E0();
  v152 = v51;
  v153 = MEMORY[0x277D04548];
  v151 = v55;
  v146 = v47;
  v144 = v26;
  v133 = v38;
  v39(v138, v47, v26);
  v56 = sub_258F09C20();
  v57 = *(v56 + 48);
  v58 = *(v56 + 52);
  swift_allocObject();
  v59 = v142;
  v60 = sub_258F09BE0();
  v142 = v59;
  if (v59)
  {
    v61 = v144;
    v62 = v143[1];
    v62(v146, v144);

    v63 = v154;
    v64 = *(v154 + 16);

    v62(v131 + v63, v61);
    (*(v147 + 8))(&v139[v63], v145);
    v65 = v141[1];

    type metadata accessor for RequestWithNoAssetMetrics();
    v66 = *(*v63 + 48);
    v67 = *(*v63 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v68 = v60;
    v69 = v120;
    sub_258F0A090();
    v70 = v122;
    sub_258F09AC0();
    v140 = v68;
    sub_258F09C10();
    (*(v124 + 8))(v70, v125);
    (*(v121 + 8))(v69, v123);
    v71 = v136;
    v72 = v144;
    v39(v136, v146, v144);
    v138 = v56;
    v73 = v39;
    v131 = *(v147 + 16);
    v74 = v134;
    v75 = v145;
    (v131)(v134, &v139[v154], v145);
    v139 = v54;

    v76 = v137;
    sub_258EA4518(v137);
    v73(v132, v71, v72);
    v77 = v73;
    v78 = v130;
    sub_258DECF90(v76, v130);
    (v131)(v135, v74, v75);
    type metadata accessor for BiomeResultsWrapperFactory();
    v79 = swift_allocObject();
    v80 = type metadata accessor for CAAnalyticsEventSubmitter();
    v81 = swift_allocObject();
    v152 = v80;
    v153 = &off_286A2C648;
    v151 = v81;
    v82 = type metadata accessor for RequestWithNoAssetsCalculator(0);
    v83 = *(v82 + 48);
    v84 = *(v82 + 52);
    v85 = swift_allocObject();
    v86 = __swift_mutable_project_boxed_opaque_existential_1(&v151, v80);
    v131 = &v119;
    v87 = *(*(v80 - 8) + 64);
    MEMORY[0x28223BE20](v86, v86);
    v89 = (&v119 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v90 + 16))(v89);
    v91 = *v89;
    v149 = v80;
    v150 = &off_286A2C648;
    *&v148 = v91;
    v92 = v132;
    v93 = v144;
    v77(v85 + OBJC_IVAR____TtC16MetricsFramework29RequestWithNoAssetsCalculator_logger, v132, v144);
    sub_258DECF90(v78, v85 + OBJC_IVAR____TtC16MetricsFramework29RequestWithNoAssetsCalculator_sqlFileURL);
    v94 = (v85 + OBJC_IVAR____TtC16MetricsFramework29RequestWithNoAssetsCalculator_bookmarkService);
    v94[3] = v138;
    v94[4] = &off_286A2FA30;
    *v94 = v140;
    sub_258DED000(v78);
    v95 = v143[1];
    v96 = v93;
    v95(v92, v93);
    sub_258DED000(v137);
    v97 = v145;
    (*(v147 + 8))(v134, v145);
    v98 = v136;
    v95(v136, v96);
    v126(v85 + OBJC_IVAR____TtC16MetricsFramework29RequestWithNoAssetsCalculator_oddId, v135, v97);
    *(v85 + OBJC_IVAR____TtC16MetricsFramework29RequestWithNoAssetsCalculator_biomeResultsFactory) = v79;
    sub_258DEE384(&v148, v85 + 16);
    *(v85 + OBJC_IVAR____TtC16MetricsFramework29RequestWithNoAssetsCalculator_defaults) = v139;
    __swift_destroy_boxed_opaque_existential_1Tm(&v151);
    *(v154 + OBJC_IVAR____TtC16MetricsFramework25RequestWithNoAssetMetrics_calculator) = v85;
    v99 = v98;
    v100 = v146;
    v77(v98, v146, v96);
    v102 = *v141;
    v101 = v141[1];

    v103 = _s16MetricsFramework20SELFReportingServiceC13messageStream11fbfBundleIdACSo026SiriAnalyticsClientMessageF0CSg_SSSgtcfC_0(0, v102, v101);
    v104 = type metadata accessor for RequestWithNoAssetSELFReporter();
    v105 = *(v104 + 48);
    v106 = *(v104 + 52);
    v107 = swift_allocObject();
    v108 = (v107 + OBJC_IVAR____TtC16MetricsFramework30RequestWithNoAssetSELFReporter_reportingService);
    v108[3] = type metadata accessor for SELFReportingService();
    v108[4] = &protocol witness table for SELFReportingService;
    *v108 = v103;
    v128(v107 + OBJC_IVAR____TtC16MetricsFramework30RequestWithNoAssetSELFReporter_logger, v99, v96);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988A80, &unk_258F0F3E0);
    v109 = swift_allocObject();
    *(v109 + 16) = xmmword_258F0CA20;
    *(v109 + 32) = v107;
    v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98A1B8, &qword_258F14160);
    v111 = *(v110 + 48);
    v112 = *(v110 + 52);
    swift_allocObject();

    v151 = sub_258F09BA0();
    v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98A1C0, qword_258F14168);
    v114 = *(v113 + 48);
    v115 = *(v113 + 52);
    swift_allocObject();
    v116 = sub_258F09BC0();

    v95(v100, v96);
    v117 = v154;
    *(v154 + OBJC_IVAR____TtC16MetricsFramework25RequestWithNoAssetMetrics_reporter) = v116;
    return v117;
  }

  return v63;
}

uint64_t sub_258EA4518@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for RequestWithNoAssetsCalculator(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_258F0A4E0();
  v5 = sub_258F0A4E0();
  v6 = [v3 URLForResource:v4 withExtension:v5];

  if (v6)
  {
    sub_258F098B0();

    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = sub_258F098D0();
  v9 = *(*(v8 - 8) + 56);

  return v9(a1, v7, 1, v8);
}

uint64_t type metadata accessor for RequestWithNoAssetMetrics()
{
  result = qword_27F98A1F0;
  if (!qword_27F98A1F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_258EA469C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_258EA46BC, 0, 0);
}

uint64_t sub_258EA46BC()
{
  v1 = *(v0[3] + 16);
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_258DEE374;
  v3 = v0[2];

  return sub_258EA368C();
}

uint64_t sub_258EA4758(uint64_t a1)
{
  *(v2 + 40) = v1;
  *(v2 + 48) = *a1;
  *(v2 + 64) = *(a1 + 16);
  return MEMORY[0x2822009F8](sub_258EA4788, 0, 0);
}

uint64_t sub_258EA4788()
{
  v1 = *(v0 + 64);
  v2 = *(*(v0 + 40) + OBJC_IVAR____TtC16MetricsFramework25RequestWithNoAssetMetrics_reporter);
  *(v0 + 16) = *(v0 + 48);
  *(v0 + 32) = v1;
  v3 = *(MEMORY[0x277D04448] + 4);
  v6 = (*MEMORY[0x277D04448] + MEMORY[0x277D04448]);
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  *v4 = v0;
  v4[1] = sub_258DED218;

  return v6(v0 + 16);
}

uint64_t sub_258EA4854(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_258EA4874, 0, 0);
}

uint64_t sub_258EA4874()
{
  v1 = v0[3] + OBJC_IVAR____TtC16MetricsFramework25RequestWithNoAssetMetrics_logger;
  v2 = sub_258F0A350();
  v3 = sub_258F0A840();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_258DD8000, v2, v3, "Doing work", v4, 2u);
    MEMORY[0x259C9EF40](v4, -1, -1);
  }

  v5 = v0[3];

  v6 = *(v5 + OBJC_IVAR____TtC16MetricsFramework25RequestWithNoAssetMetrics_calculator);
  v7 = swift_task_alloc();
  v0[4] = v7;
  *v7 = v0;
  v7[1] = sub_258DED984;
  v8 = v0[2];

  return sub_258EA5D8C(v8);
}

uint64_t RequestWithNoAssetMetrics.deinit()
{
  v1 = *(v0 + 16);

  v2 = OBJC_IVAR____TtC16MetricsFramework25RequestWithNoAssetMetrics_logger;
  v3 = sub_258F0A370();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = OBJC_IVAR____TtC16MetricsFramework25RequestWithNoAssetMetrics_oddId;
  v5 = sub_258F09A70();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = *(v0 + OBJC_IVAR____TtC16MetricsFramework25RequestWithNoAssetMetrics_calculator);

  v7 = *(v0 + OBJC_IVAR____TtC16MetricsFramework25RequestWithNoAssetMetrics_reporter);

  v8 = *(v0 + OBJC_IVAR____TtC16MetricsFramework25RequestWithNoAssetMetrics_fbfBundleId + 8);

  return v0;
}

uint64_t RequestWithNoAssetMetrics.__deallocating_deinit()
{
  v1 = *(v0 + 2);

  v2 = OBJC_IVAR____TtC16MetricsFramework25RequestWithNoAssetMetrics_logger;
  v3 = sub_258F0A370();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = OBJC_IVAR____TtC16MetricsFramework25RequestWithNoAssetMetrics_oddId;
  v5 = sub_258F09A70();
  (*(*(v5 - 8) + 8))(&v0[v4], v5);
  v6 = *&v0[OBJC_IVAR____TtC16MetricsFramework25RequestWithNoAssetMetrics_calculator];

  v7 = *&v0[OBJC_IVAR____TtC16MetricsFramework25RequestWithNoAssetMetrics_reporter];

  v8 = *&v0[OBJC_IVAR____TtC16MetricsFramework25RequestWithNoAssetMetrics_fbfBundleId + 8];

  v9 = *(*v0 + 48);
  v10 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_258EA4B90(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_258EA4BB4, 0, 0);
}

uint64_t sub_258EA4BB4()
{
  v1 = *(v0[3] + 16);
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_258DED7D0;
  v3 = v0[2];

  return sub_258EA368C();
}

uint64_t sub_258EA4C50(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_258DE1DC4;

  return sub_258EA4854(a1);
}

uint64_t sub_258EA4CEC(uint64_t a1)
{
  *(v2 + 40) = *v1;
  *(v2 + 48) = *a1;
  *(v2 + 64) = *(a1 + 16);
  return MEMORY[0x2822009F8](sub_258EA4D20, 0, 0);
}

uint64_t sub_258EA4D20()
{
  v1 = *(v0 + 64);
  v2 = *(*(v0 + 40) + OBJC_IVAR____TtC16MetricsFramework25RequestWithNoAssetMetrics_reporter);
  *(v0 + 16) = *(v0 + 48);
  *(v0 + 32) = v1;
  v3 = *(MEMORY[0x277D04448] + 4);
  v6 = (*MEMORY[0x277D04448] + MEMORY[0x277D04448]);
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  *v4 = v0;
  v4[1] = sub_258DEDBC8;

  return v6(v0 + 16);
}

uint64_t sub_258EA4E88(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for RequestWithNoAssetMetrics();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_258EA4ECC()
{
  result = qword_27F98A1E8;
  if (!qword_27F98A1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F98A1E8);
  }

  return result;
}

uint64_t sub_258EA4F28()
{
  result = sub_258F0A370();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_258F09A70();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t dispatch thunk of RequestWithNoAssetMetrics.loadData()(uint64_t a1)
{
  v4 = *(*v1 + 136);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_258DEE37C;

  return v8(a1);
}

uint64_t dispatch thunk of RequestWithNoAssetMetrics.report(_:)(uint64_t a1)
{
  v4 = *(*v1 + 144);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_258DEE37C;

  return v8(a1);
}

uint64_t dispatch thunk of RequestWithNoAssetMetrics.doWork(_:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 152);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_258DE1DC4;

  return v10(a1, a2);
}

uint64_t sub_258EA5480(uint64_t a1)
{
  v4 = *(**v1 + 80);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_258DE1DC4;

  return v8(a1);
}

uint64_t dispatch thunk of RequestWithNoAssetReporter.report(_:)(uint64_t a1)
{
  v4 = *(*v1 + 80);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_258DE1DC4;

  return v8(a1);
}

void *RequestWithNoAssetsCalculator.__allocating_init(logger:sqlFileURL:bookmarkService:oddId:userDefaults:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v51 = a5;
  v52 = a4;
  v50 = a3;
  v46 = a2;
  v48 = a1;
  v6 = sub_258F09A70();
  v7 = *(v6 - 8);
  v8 = v7;
  v44 = v6;
  v45 = v7;
  v9 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v10);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988720, &qword_258F0B830);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8, v15);
  v17 = &v42 - v16;
  v18 = sub_258F0A370();
  v19 = *(v18 - 8);
  v20 = v19[8];
  MEMORY[0x28223BE20](v18, v21);
  v42 = v19[2];
  v43 = &v42 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42();
  sub_258DE20C0(a2, v17, &qword_27F988720, &qword_258F0B830);
  (*(v8 + 16))(v12, v52, v6);
  type metadata accessor for BiomeResultsWrapperFactory();
  v47 = swift_allocObject();
  v23 = type metadata accessor for CAAnalyticsEventSubmitter();
  v24 = swift_allocObject();
  v53[3] = v23;
  v53[4] = &off_286A2C648;
  v53[0] = v24;
  v25 = type metadata accessor for RequestWithNoAssetsCalculator(0);
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  v28 = swift_allocObject();
  v29 = __swift_mutable_project_boxed_opaque_existential_1(v53, v23);
  v30 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v29, v29);
  v32 = (&v42 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v33 + 16))(v32);
  v34 = *v32;
  v28[5] = v23;
  v28[6] = &off_286A2C648;
  v28[2] = v34;
  v35 = v43;
  (v42)(v28 + OBJC_IVAR____TtC16MetricsFramework29RequestWithNoAssetsCalculator_logger, v43, v18);
  v36 = v17;
  sub_258DE20C0(v17, v28 + OBJC_IVAR____TtC16MetricsFramework29RequestWithNoAssetsCalculator_sqlFileURL, &qword_27F988720, &qword_258F0B830);
  v37 = (v28 + OBJC_IVAR____TtC16MetricsFramework29RequestWithNoAssetsCalculator_bookmarkService);
  v37[3] = sub_258F09C20();
  v37[4] = &off_286A2FA30;
  *v37 = v50;
  v38 = v44;
  v39 = v45;
  (*(v45 + 8))(v52, v44);
  sub_258DE2184(v46, &qword_27F988720, &qword_258F0B830);
  v40 = v19[1];
  v40(v48, v18);
  sub_258DE2184(v36, &qword_27F988720, &qword_258F0B830);
  v40(v35, v18);
  (*(v39 + 32))(v28 + OBJC_IVAR____TtC16MetricsFramework29RequestWithNoAssetsCalculator_oddId, v49, v38);
  *(v28 + OBJC_IVAR____TtC16MetricsFramework29RequestWithNoAssetsCalculator_biomeResultsFactory) = v47;
  *(v28 + OBJC_IVAR____TtC16MetricsFramework29RequestWithNoAssetsCalculator_defaults) = v51;
  __swift_destroy_boxed_opaque_existential_1Tm(v53);
  return v28;
}

uint64_t RequestWithNoAssetResults.eventStreamMetadata.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t RequestWithNoAssetResults.conversationStreamMetadata.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t RequestWithNoAssetResults.combinedRequestNoAssetData.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t CombinedRequestNoAssetData.requestWithNoAssetData.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t CombinedRequestNoAssetData.eventMetadata.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for CombinedRequestNoAssetData(0) + 20);

  return sub_258DDE438(v3, a1);
}

uint64_t CombinedRequestNoAssetData.eventMetadata.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for CombinedRequestNoAssetData(0) + 20);

  return sub_258DDE4E0(a1, v3);
}

uint64_t sub_258EA5D8C(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = sub_258F09B00();
  v2[8] = v3;
  v4 = *(v3 - 8);
  v2[9] = v4;
  v5 = *(v4 + 64) + 15;
  v2[10] = swift_task_alloc();
  v6 = sub_258F09A20();
  v2[11] = v6;
  v7 = *(v6 - 8);
  v2[12] = v7;
  v8 = *(v7 + 64) + 15;
  v2[13] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988720, &qword_258F0B830) - 8) + 64) + 15;
  v2[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_258EA5EE0, 0, 0);
}

uint64_t sub_258EA5EE0()
{
  v62 = v0;
  v1 = v0[7];

  v2 = sub_258F0A350();
  v3 = sub_258F0A810();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[7];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v61[0] = v6;
    *v5 = 136315138;
    sub_258F09A70();
    sub_258EA7E04(&qword_27F988758, MEMORY[0x277CC95F0]);
    v7 = sub_258F0AD60();
    v9 = sub_258DE3018(v7, v8, v61);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_258DD8000, v2, v3, "SQL calculator invoked: RequestWithNoAssetsCalculator %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x259C9EF40](v6, -1, -1);
    MEMORY[0x259C9EF40](v5, -1, -1);
  }

  v10 = v0[14];
  sub_258DE20C0(v0[7] + OBJC_IVAR____TtC16MetricsFramework29RequestWithNoAssetsCalculator_sqlFileURL, v10, &qword_27F988720, &qword_258F0B830);
  v11 = sub_258F098D0();
  v12 = (*(*(v11 - 8) + 48))(v10, 1, v11);
  sub_258DE2184(v10, &qword_27F988720, &qword_258F0B830);
  if (v12 == 1)
  {
    v13 = sub_258F0A350();
    v14 = sub_258F0A840();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_258DD8000, v13, v14, "No URL provided for the sql file", v15, 2u);
      MEMORY[0x259C9EF40](v15, -1, -1);
    }

    sub_258DE1858();
    swift_allocError();
    *v16 = 9;
    swift_willThrow();
    v39 = v0[13];
    v38 = v0[14];
    v40 = v0[10];

    v41 = v0[1];
  }

  else
  {
    v17 = v0[7];
    sub_258DE0310();
    v18 = v0[7];
    v19 = sub_258DE05FC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988740, &qword_258F0B850);
    v20 = *(sub_258F0A190() - 8);
    v21 = *(v20 + 72);
    v22 = (*(v20 + 80) + 32) & ~*(v20 + 80);
    *(swift_allocObject() + 16) = xmmword_258F0F8A0;
    v23 = sub_258F0A1B0();
    v25 = v24;
    v26 = swift_allocObject();
    *(v26 + 16) = v23;
    *(v26 + 24) = v25;
    sub_258F0A160();
    sub_258F0A160();
    v27 = v19;
    v28 = sub_258F0A350();
    v29 = sub_258F0A810();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v61[0] = v31;
      *v30 = 136315138;
      *(v30 + 4) = sub_258DE3018(0xD000000000000013, 0x8000000258F1A7D0, v61);
      _os_log_impl(&dword_258DD8000, v28, v29, "%s: current date data NOT included for aggregation.", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v31);
      MEMORY[0x259C9EF40](v31, -1, -1);
      MEMORY[0x259C9EF40](v30, -1, -1);
    }

    v32 = v0[7];
    sub_258F0A050();
    v33 = v27;

    v34 = sub_258F0A010();
    v35 = sub_258F0A040();

    type metadata accessor for BiomeResultsWrapper();
    inited = swift_initStackObject();
    *(inited + 16) = v35;
    v37 = MEMORY[0x259C9E880]();
    sub_258EA6630(inited, v32, v0 + 5, v61);
    v43 = v0[13];
    v58 = v33;
    v44 = v0[11];
    v45 = v0[12];
    v47 = v0[9];
    v46 = v0[10];
    v48 = v0[7];
    v49 = v0[8];
    v59 = v0[6];
    v60 = v0[14];
    objc_autoreleasePoolPop(v37);
    v50 = v61[0];
    sub_258F09AC0();
    sub_258F09BB0();
    (*(v47 + 8))(v46, v49);
    v57 = sub_258F09B70();
    v51 = *(v45 + 8);
    v51(v43, v44);
    v52 = sub_258F09B50();
    v53 = MEMORY[0x259C9E880](v52);
    v54 = sub_258EA6764(v50);

    objc_autoreleasePoolPop(v53);
    swift_setDeallocating();
    v55 = *(inited + 16);

    v51(v43, v44);
    v56 = MEMORY[0x277D84F90];
    *v59 = v57;
    v59[1] = v56;
    v59[2] = v54;

    v41 = v0[1];
  }

  return v41();
}

uint64_t sub_258EA65EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = sub_258EDECA4(a1);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98A258, qword_258F145E0);
  *(a2 + 24) = result;
  *a2 = v3;
  return result;
}

void sub_258EA6630(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, char **a4@<X8>)
{
  v8 = sub_258E9FDD8(*(a1 + 16), a2 + OBJC_IVAR____TtC16MetricsFramework29RequestWithNoAssetsCalculator_logger);
  sub_258DFCFC4(a1, 0);
  if (v4)
  {

    *a3 = v4;
  }

  else
  {

    v9 = sub_258F0A350();
    v10 = sub_258F0A810();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 134217984;
      *(v11 + 4) = *(v8 + 2);

      _os_log_impl(&dword_258DD8000, v9, v10, "RequestWithNoAssetsCalculator query yielded %ld results", v11, 0xCu);
      MEMORY[0x259C9EF40](v11, -1, -1);
    }

    else
    {
    }

    *a4 = v8;
  }
}

void *sub_258EA6764(int64_t a1)
{
  v183 = a1;
  v1 = type metadata accessor for CombinedRequestNoAssetData(0);
  v152 = *(v1 - 8);
  v153 = v1;
  v2 = *(v152 + 64);
  MEMORY[0x28223BE20](v1, v3);
  v156 = (&v149 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v151 = type metadata accessor for EventMetadata(0);
  v5 = *(*(v151 - 8) + 64);
  MEMORY[0x28223BE20](v151, v6);
  v155 = &v149 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988730, &unk_258F0F8E0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v157 = &v149 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98A240, &qword_258F145C8);
  v13 = *(*(v12 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v12 - 8, v14);
  v176 = &v149 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v149 - v18;
  v20 = sub_258F09B00();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20, v23);
  v25 = &v149 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = sub_258F09A20();
  v168 = *(v181 - 8);
  v26 = *(v168 + 64);
  v28 = MEMORY[0x28223BE20](v181, v27);
  v30 = &v149 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v28, v31);
  v34 = &v149 - v33;
  v36 = MEMORY[0x28223BE20](v32, v35);
  v182 = &v149 - v37;
  v39 = MEMORY[0x28223BE20](v36, v38);
  v166 = &v149 - v40;
  v42 = MEMORY[0x28223BE20](v39, v41);
  v177 = &v149 - v43;
  MEMORY[0x28223BE20](v42, v44);
  v46 = &v149 - v45;
  if (qword_27F988680 != -1)
  {
    goto LABEL_89;
  }

  while (1)
  {
    v179 = qword_280CC6068;
    sub_258F09AC0();
    sub_258F09930();
    v48 = *(v21 + 8);
    v47 = v21 + 8;
    v49 = v25;
    v174 = v48;
    v48(v25, v20);
    result = sub_258F099E0();
    if ((*&v51 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      break;
    }

    if (v51 <= -1.0)
    {
      goto LABEL_91;
    }

    if (v51 >= 1.84467441e19)
    {
      goto LABEL_92;
    }

    v169 = v51;
    if (!is_mul_ok(v51, 0x3E8uLL))
    {
      goto LABEL_93;
    }

    v163 = v46;
    v170 = v34;
    v161 = v30;
    v172 = v47;
    v173 = v20;
    v180 = v19;
    v188 = MEMORY[0x277D84FA0];
    v187 = sub_258DFC054(MEMORY[0x277D84F90]);
    v52 = v183;
    v20 = *(v183 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98A248, &qword_258F145D0);
    sub_258F0A430();
    v46 = v176;
    v34 = v177;
    v19 = v181;
    v171 = v49;
    if (!v20)
    {
LABEL_38:
      v20 = 0;
      v150 = 1000 * v169;
      v74 = v187 + 64;
      v73 = *(v187 + 64);
      v167 = v187;
      v75 = 1 << *(v187 + 32);
      v76 = -1;
      if (v75 < 64)
      {
        v76 = ~(-1 << v75);
      }

      v21 = v76 & v73;
      v162 = OBJC_IVAR____TtC16MetricsFramework29RequestWithNoAssetsCalculator_defaults;
      v149 = OBJC_IVAR____TtC16MetricsFramework29RequestWithNoAssetsCalculator_oddId;
      v183 = (v75 + 63) >> 6;
      v177 = (v168 + 16);
      v179 = (v168 + 32);
      v175 = (v168 + 8);
      v164 = "bmitter";
      v165 = OBJC_IVAR____TtC16MetricsFramework29RequestWithNoAssetsCalculator_logger;
      v158 = MEMORY[0x277D84F90];
      v34 = &qword_258F145D8;
      *&v53 = 67109120;
      v160 = v53;
      *&v53 = 134217984;
      v159 = v53;
      v30 = v180;
      v77 = v170;
      v169 = v187 + 64;
LABEL_41:
      v25 = v178;
      while (v21)
      {
        v79 = v46;
        v80 = v20;
LABEL_53:
        v83 = __clz(__rbit64(v21));
        v21 &= v21 - 1;
        v84 = v83 | (v80 << 6);
        v85 = v167;
        v86 = v168;
        v87 = v166;
        (*(v168 + 16))(v166, *(v167 + 48) + *(v168 + 72) * v84, v19);
        v88 = *(*(v85 + 56) + 8 * v84);
        v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98A250, &qword_258F145D8);
        v90 = v19;
        v91 = v89;
        v92 = *(v89 + 48);
        v93 = v87;
        v46 = v79;
        (*(v86 + 32))(v79, v93, v90);
        *&v79[v92] = v88;
        (*(*(v91 - 8) + 56))(v79, 0, 1, v91);

        v25 = v178;
        v77 = v170;
        v30 = v180;
LABEL_54:
        sub_258EA8228(v46, v30);
        v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98A250, &qword_258F145D8);
        if ((*(*(v94 - 8) + 48))(v30, 1, v94) == 1)
        {

          (*v175)(v163, v181);

          return v158;
        }

        v95 = v30;
        v96 = *&v30[*(v94 + 48)];
        v19 = v181;
        (*v179)(v182, v95, v181);
        v97 = v171;
        sub_258F09AC0();
        sub_258F09930();
        v174(v97, v173);
        sub_258F099E0();
        if (v98 > -1.0 && v98 < 1.84467441e19 && v98 == trunc(v98))
        {
          v99 = v98;
          sub_258EA7E04(&qword_27F989520, MEMORY[0x277CC9578]);
          if ((sub_258F0A4B0() & 1) == 0 || (v100 = *&v25[v162], v101 = sub_258F0A4E0(), v102 = [v100 BOOLForKey_], v101, v102))
          {
            v121 = v96 - 208;
            v122 = *(v96 + 16) + 1;
            do
            {
              if (!--v122)
              {
                v128 = sub_258F09A70();
                (*(*(v128 - 8) + 56))(v157, 1, 1, v128);
                goto LABEL_75;
              }

              v123 = (v121 + 272);
              v124 = *(v121 + 280);
              v121 += 272;
            }

            while (!v124);
            v125 = *v123;
            swift_bridgeObjectRetain_n();
            v126 = v157;
            sub_258F09A30();
            swift_bridgeObjectRelease_n();
            v127 = sub_258F09A70();
            if ((*(*(v127 - 8) + 48))(v126, 1, v127) != 1)
            {
              goto LABEL_78;
            }

LABEL_75:
            v129 = sub_258F0A350();
            v130 = sub_258F0A810();
            if (os_log_type_enabled(v129, v130))
            {
              v131 = swift_slowAlloc();
              *v131 = 0;
              _os_log_impl(&dword_258DD8000, v129, v130, "Request with no asset Calculator: Found no device aggregation Id", v131, 2u);
              MEMORY[0x259C9EF40](v131, -1, -1);
            }

LABEL_78:
            v132 = [objc_allocWithZone(MEMORY[0x277D593F8]) init];
            [v132 setStartTimestampInSecondsSince1970_];
            v154 = v132;
            if (v132)
            {
              [v154 setNumberOfSeconds_];
            }

            v133 = sub_258F09A70();
            v134 = *(v133 - 8);
            v135 = v155;
            (*(v134 + 16))(v155, &v178[v149], v133);
            v136 = *(v134 + 56);
            v136(v135, 0, 1, v133);
            v137 = v151;
            sub_258DE20C0(v157, v135 + *(v151 + 20), &qword_27F988730, &unk_258F0F8E0);
            v136(v135 + v137[6], 1, 1, v133);
            v138 = v135 + v137[7];
            *v138 = v150;
            *(v138 + 8) = 0;
            *(v135 + v137[8]) = v154;
            v139 = v135 + v137[9];
            *v139 = 0;
            *(v139 + 8) = 1;
            v140 = v135 + v137[10];
            *v140 = 0;
            *(v140 + 8) = 1;
            v141 = v135 + v137[11];
            *v141 = 0;
            *(v141 + 4) = 1;
            *(v135 + v137[12]) = 2;
            v142 = v156;
            sub_258DDE438(v135, v156 + *(v153 + 20));
            *v142 = v96;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v158 = sub_258DE2BE4(0, v158[2] + 1, 1, v158);
            }

            v143 = v176;
            v145 = v158[2];
            v144 = v158[3];
            if (v145 >= v144 >> 1)
            {
              v158 = sub_258DE2BE4(v144 > 1, v145 + 1, 1, v158);
            }

            sub_258DE2128(v155);
            v146 = *v175;
            v147 = v181;
            (*v175)(v77, v181);
            v146(v182, v147);
            v19 = v147;
            v148 = v158;
            v158[2] = v145 + 1;
            sub_258EA8298(v156, v148 + ((*(v152 + 80) + 32) & ~*(v152 + 80)) + *(v152 + 72) * v145);
            sub_258DE2184(v157, &qword_27F988730, &unk_258F0F8E0);
            v74 = v169;
            v46 = v143;
            v34 = &qword_258F145D8;
            v30 = v180;
            goto LABEL_41;
          }

          v103 = sub_258F0A350();
          v104 = sub_258F0A800();
          if (os_log_type_enabled(v103, v104))
          {
            v105 = swift_slowAlloc();
            *v105 = v160;
            v106 = sub_258F0A4E0();
            v107 = [v100 BOOLForKey_];

            v25 = v178;
            *(v105 + 4) = v107;

            _os_log_impl(&dword_258DD8000, v103, v104, "Skipping asset request metrics execution for current date; AssetMetricsWorker.includeCurrentDateForAggregation: %{BOOL}d", v105, 8u);
            MEMORY[0x259C9EF40](v105, -1, -1);
          }

          else
          {
          }

          v30 = v180;
          v34 = &qword_258F145D8;

          v118 = *v175;
          v19 = v181;
          (*v175)(v77, v181);
          v118(v182, v19);
          v46 = v176;
          v74 = v169;
        }

        else
        {

          sub_258F099E0();
          if (v108 > 0.0)
          {
            v78 = *v175;
            (*v175)(v77, v19);
            v78(v182, v19);
            v30 = v180;
            v74 = v169;
            v34 = &qword_258F145D8;
          }

          else
          {
            v109 = v77;
            v110 = v161;
            (*v177)(v161, v109, v19);
            v111 = sub_258F0A350();
            v112 = sub_258F0A820();
            if (os_log_type_enabled(v111, v112))
            {
              v113 = swift_slowAlloc();
              *v113 = v159;
              sub_258F099E0();
              v115 = v114;
              v116 = *v175;
              (*v175)(v110, v19);
              *(v113 + 4) = v115;
              _os_log_impl(&dword_258DD8000, v111, v112, "Request with no asset event contains date before 1970 %f", v113, 0xCu);
              v117 = v113;
              v25 = v178;
              MEMORY[0x259C9EF40](v117, -1, -1);

              v77 = v170;
              v116(v170, v19);
              v116(v182, v19);
              v34 = &qword_258F145D8;
              v30 = v180;
              v74 = v169;
              v46 = v176;
            }

            else
            {

              v120 = *v175;
              (*v175)(v110, v19);
              v120(v109, v19);
              v120(v182, v19);
              v30 = v180;
              v77 = v109;
              v74 = v169;
              v46 = v176;
              v34 = &qword_258F145D8;
            }
          }
        }
      }

      if (v183 <= (v20 + 1))
      {
        v81 = v20 + 1;
      }

      else
      {
        v81 = v183;
      }

      v82 = v81 - 1;
      while (1)
      {
        v80 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        if (v80 >= v183)
        {
          v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98A250, &qword_258F145D8);
          (*(*(v119 - 8) + 56))(v46, 1, 1, v119);
          v21 = 0;
          v20 = v82;
          goto LABEL_54;
        }

        v21 = *(v74 + 8 * v80);
        ++v20;
        if (v21)
        {
          v79 = v46;
          v20 = v80;
          goto LABEL_53;
        }
      }

      __break(1u);
      goto LABEL_87;
    }

    v54 = 0;
    v183 = v52 + 32;
    v175 = (v168 + 8);
    while (1)
    {
      v55 = (v183 + 272 * v54);
      v30 = v55[1];
      if (!v30)
      {
        goto LABEL_9;
      }

      v25 = *v55;
      v56 = v55[1];

      v57 = sub_258F0A4E0();
      v58 = [v179 dateFromString_];

      if (v58)
      {
        break;
      }

      v19 = v181;
LABEL_9:
      if (++v54 == v20)
      {
        goto LABEL_38;
      }
    }

    sub_258F09A00();

    v59 = v188;
    if (*(v188 + 16))
    {
      v60 = *(v188 + 40);
      sub_258F0AE40();
      sub_258F0A5B0();
      v61 = sub_258F0AE90();
      v62 = -1 << *(v59 + 32);
      v63 = v61 & ~v62;
      if ((*(v59 + 56 + ((v63 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v63))
      {
        v64 = ~v62;
        while (1)
        {
          v65 = (*(v59 + 48) + 16 * v63);
          v66 = *v65 == v25 && v30 == v65[1];
          if (v66 || (sub_258F0AD80() & 1) != 0)
          {
            break;
          }

          v63 = (v63 + 1) & v64;
          if (((*(v59 + 56 + ((v63 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v63) & 1) == 0)
          {
            goto LABEL_21;
          }
        }

        v19 = v181;
        (*v175)(v34, v181);

LABEL_37:
        v46 = v176;
        goto LABEL_9;
      }
    }

LABEL_21:
    v21 = 0;
    v19 = MEMORY[0x277D84F90];
LABEL_22:
    v67 = (v183 + 272 * v21);
    v46 = v21;
    while (v46 < v20)
    {
      memcpy(v185, v67, sizeof(v185));
      v21 = (v46 + 1);
      if (__OFADD__(v46, 1))
      {
        goto LABEL_88;
      }

      if (v185[1] && (v185[0] == v25 && v185[1] == v30 || (sub_258F0AD80() & 1) != 0))
      {
        sub_258EA3054(v185, &v184);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v186 = v19;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_258E14D98(0, *(v19 + 2) + 1, 1);
          v19 = v186;
        }

        v70 = *(v19 + 2);
        v69 = *(v19 + 3);
        if (v70 >= v69 >> 1)
        {
          sub_258E14D98((v69 > 1), v70 + 1, 1);
          v19 = v186;
        }

        *(v19 + 2) = v70 + 1;
        memcpy(&v19[272 * v70 + 32], v185, 0x110uLL);
        v34 = v177;
        if (v21 == v20)
        {
LABEL_35:
          v71 = v187;
          v72 = swift_isUniquelyReferenced_nonNull_native();
          v185[0] = v71;
          sub_258ED76A8(v19, v34, v72);
          v187 = v185[0];
          sub_258E05B1C(v185, v25, v30);

          v19 = v181;
          (*v175)(v34, v181);
          goto LABEL_37;
        }

        goto LABEL_22;
      }

      ++v46;
      v67 += 272;
      if (v21 == v20)
      {
        goto LABEL_35;
      }
    }

LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    swift_once();
  }

  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  __break(1u);
  return result;
}

uint64_t RequestWithNoAssetsCalculator.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v1 = OBJC_IVAR____TtC16MetricsFramework29RequestWithNoAssetsCalculator_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_258DE2184(v0 + OBJC_IVAR____TtC16MetricsFramework29RequestWithNoAssetsCalculator_sqlFileURL, &qword_27F988720, &qword_258F0B830);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC16MetricsFramework29RequestWithNoAssetsCalculator_bookmarkService));
  v3 = OBJC_IVAR____TtC16MetricsFramework29RequestWithNoAssetsCalculator_oddId;
  v4 = sub_258F09A70();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  v5 = *(v0 + OBJC_IVAR____TtC16MetricsFramework29RequestWithNoAssetsCalculator_biomeResultsFactory);

  return v0;
}

uint64_t RequestWithNoAssetsCalculator.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1 = OBJC_IVAR____TtC16MetricsFramework29RequestWithNoAssetsCalculator_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_258DE2184(v0 + OBJC_IVAR____TtC16MetricsFramework29RequestWithNoAssetsCalculator_sqlFileURL, &qword_27F988720, &qword_258F0B830);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC16MetricsFramework29RequestWithNoAssetsCalculator_bookmarkService));
  v3 = OBJC_IVAR____TtC16MetricsFramework29RequestWithNoAssetsCalculator_oddId;
  v4 = sub_258F09A70();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  v5 = *(v0 + OBJC_IVAR____TtC16MetricsFramework29RequestWithNoAssetsCalculator_biomeResultsFactory);

  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_258EA7C88@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC16MetricsFramework29RequestWithNoAssetsCalculator_logger;
  v4 = sub_258F0A370();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_258EA7D10(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_258DE1DC4;

  return sub_258EA5D8C(a1);
}

uint64_t sub_258EA7DAC(uint64_t a1)
{
  result = sub_258EA7E04(&qword_27F98A208, type metadata accessor for RequestWithNoAssetsCalculator);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_258EA7E04(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_258EA7E4C(uint64_t a1)
{
  result = sub_258EA7E04(&qword_27F98A210, type metadata accessor for RequestWithNoAssetsCalculator);
  *(a1 + 8) = result;
  return result;
}

void sub_258EA7EDC()
{
  sub_258EA7F60();
  if (v0 <= 0x3F)
  {
    type metadata accessor for EventMetadata(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_258EA7F60()
{
  if (!qword_27F98A228)
  {
    v0 = sub_258F0A710();
    if (!v1)
    {
      atomic_store(v0, &qword_27F98A228);
    }
  }
}

void sub_258EA7FB8()
{
  v0 = sub_258F0A370();
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_258DE3B74();
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      v4 = sub_258F09A70();
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t dispatch thunk of RequestWithNoAssetsCalculator.doWork(_:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 216);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_258DE1DC4;

  return v10(a1, a2);
}

uint64_t sub_258EA8228(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98A240, &qword_258F145C8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_258EA8298(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CombinedRequestNoAssetData(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_258EA82FC(void (*a1)(uint64_t *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v4 = MEMORY[0x277D84F90];
  v14 = MEMORY[0x277D84F90];
  v5 = *(a3 + 16);
  if (v5)
  {
    for (i = (a3 + 40); ; i += 2)
    {
      v8 = *i;
      v13[0] = *(i - 1);
      v13[1] = v8;

      a1(&v12, v13);
      if (v3)
      {
        break;
      }

      if (v12)
      {
        MEMORY[0x259C9DF50](v9);
        if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v10 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_258F0A6D0();
        }

        sub_258F0A700();
        v4 = v14;
      }

      if (!--v5)
      {
        return v4;
      }
    }
  }

  return v4;
}

uint64_t sub_258EA8418(void (*a1)(uint64_t *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    return v6;
  }

  v17 = MEMORY[0x277D84F90];
  sub_258E14D38(0, v5, 0);
  v6 = v17;
  v9 = (a3 + 40);
  while (1)
  {
    v10 = *v9;
    v15[0] = *(v9 - 1);
    v15[1] = v10;

    a1(&v16, v15);
    if (v4)
    {
      break;
    }

    v4 = 0;

    v11 = v16;
    v17 = v6;
    v13 = *(v6 + 16);
    v12 = *(v6 + 24);
    if (v13 >= v12 >> 1)
    {
      sub_258E14D38((v12 > 1), v13 + 1, 1);
      v6 = v17;
    }

    v9 += 2;
    *(v6 + 16) = v13 + 1;
    *(v6 + 8 * v13 + 32) = v11;
    if (!--v5)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_258EA855C(void (*a1)(uint64_t *__return_ptr, __int128 *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *(a3 + 16);
  result = MEMORY[0x277D84F90];
  if (v6)
  {
    v31 = MEMORY[0x277D84F90];
    sub_258F0AB40();
    v9 = a3 + 32;
    for (i = v6 - 1; ; --i)
    {
      v11 = *(v9 + 16);
      v12 = *(v9 + 48);
      v28 = *(v9 + 32);
      v29 = v12;
      v13 = *(v9 + 16);
      v27[0] = *v9;
      v27[1] = v13;
      v14 = *(v9 + 48);
      v23 = v28;
      v24 = v14;
      v30 = *(v9 + 64);
      v25 = *(v9 + 64);
      v21 = v27[0];
      v22 = v11;
      sub_258E1A4E0(v27, &v16);
      a1(&v26, &v21);
      if (v4)
      {
        break;
      }

      v4 = 0;
      v18 = v23;
      v19 = v24;
      v20 = v25;
      v16 = v21;
      v17 = v22;
      sub_258E1A518(&v16);
      sub_258F0AB20();
      v15 = *(v31 + 16);
      sub_258F0AB50();
      sub_258F0AB60();
      sub_258F0AB30();
      if (!i)
      {
        return v31;
      }

      v9 += 72;
    }

    v18 = v23;
    v19 = v24;
    v20 = v25;
    v16 = v21;
    v17 = v22;
    sub_258E1A518(&v16);

    __break(1u);
  }

  return result;
}

uint64_t sub_258EA86C8(void (*a1)(uint64_t *__return_ptr, __int128 *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *(a3 + 16);
  result = MEMORY[0x277D84F90];
  if (v6)
  {
    v47 = MEMORY[0x277D84F90];
    sub_258F0AB40();
    v9 = a3 + 32;
    for (i = v6 - 1; ; --i)
    {
      v11 = *(v9 + 80);
      v12 = *(v9 + 112);
      v44 = *(v9 + 96);
      v45 = v12;
      v13 = *(v9 + 16);
      v14 = *(v9 + 48);
      v40 = *(v9 + 32);
      v41 = v14;
      v15 = *(v9 + 48);
      v16 = *(v9 + 80);
      v42 = *(v9 + 64);
      v43 = v16;
      v17 = *(v9 + 16);
      v39[0] = *v9;
      v39[1] = v17;
      v18 = *(v9 + 112);
      v35 = v44;
      v36 = v18;
      v31 = v40;
      v32 = v15;
      v33 = v42;
      v34 = v11;
      v46 = *(v9 + 128);
      v37 = *(v9 + 128);
      v29 = v39[0];
      v30 = v13;
      sub_258E1976C(v39, &v20);
      a1(&v38, &v29);
      if (v4)
      {
        break;
      }

      v4 = 0;
      v26 = v35;
      v27 = v36;
      v28 = v37;
      v22 = v31;
      v23 = v32;
      v24 = v33;
      v25 = v34;
      v20 = v29;
      v21 = v30;
      sub_258E197A4(&v20);
      sub_258F0AB20();
      v19 = *(v47 + 16);
      sub_258F0AB50();
      sub_258F0AB60();
      sub_258F0AB30();
      if (!i)
      {
        return v47;
      }

      v9 += 136;
    }

    v26 = v35;
    v27 = v36;
    v28 = v37;
    v22 = v31;
    v23 = v32;
    v24 = v33;
    v25 = v34;
    v20 = v29;
    v21 = v30;
    sub_258E197A4(&v20);

    __break(1u);
  }

  return result;
}

uint64_t sub_258EA8874(void (*a1)(uint64_t *__return_ptr, _BYTE *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *(a3 + 16);
  result = MEMORY[0x277D84F90];
  if (v6)
  {
    v16 = MEMORY[0x277D84F90];
    sub_258F0AB40();
    v9 = (a3 + 32);
    for (i = v6 - 1; ; --i)
    {
      memcpy(__dst, v9, sizeof(__dst));
      memcpy(__src, v9, sizeof(__src));
      sub_258EA3054(__dst, v12);
      a1(&v14, __src);
      if (v4)
      {
        break;
      }

      v4 = 0;
      memcpy(v12, __src, sizeof(v12));
      sub_258EA308C(v12);
      sub_258F0AB20();
      v11 = *(v16 + 16);
      sub_258F0AB50();
      sub_258F0AB60();
      sub_258F0AB30();
      if (!i)
      {
        return v16;
      }

      v9 += 272;
    }

    memcpy(v12, __src, sizeof(v12));
    sub_258EA308C(v12);

    __break(1u);
  }

  return result;
}

uint64_t RequestWithNoAssetSELFReporter.__allocating_init(logger:reportingService:)(uint64_t a1, uint64_t *a2)
{
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a2, v5);
  v8 = sub_258EAB414(a1, v7, v2, v5, v6);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  return v8;
}

uint64_t RequestWithNoAssetSELFReporter.init(logger:reportingService:)(uint64_t a1, uint64_t *a2)
{
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a2, v5);
  v8 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v7, v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10);
  v12 = sub_258EAB000(a1, v10, v2, v5, v6);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  return v12;
}

uint64_t sub_258EA8B20(uint64_t a1)
{
  *(v2 + 24) = v1;
  v4 = sub_258F0A370();
  *(v2 + 32) = v4;
  v5 = *(v4 - 8);
  *(v2 + 40) = v5;
  v6 = *(v5 + 64) + 15;
  *(v2 + 48) = swift_task_alloc();
  v7 = type metadata accessor for CombinedRequestNoAssetData(0);
  *(v2 + 56) = v7;
  v8 = *(v7 - 8);
  *(v2 + 64) = v8;
  v9 = *(v8 + 64) + 15;
  *(v2 + 72) = swift_task_alloc();
  *(v2 + 80) = swift_task_alloc();
  *(v2 + 88) = swift_task_alloc();
  *(v2 + 96) = swift_task_alloc();
  *(v2 + 104) = *a1;
  *(v2 + 120) = *(a1 + 16);

  return MEMORY[0x2822009F8](sub_258EA8C74, 0, 0);
}

void sub_258EA8C74()
{
  v69 = v0;
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[13];
  v4 = v0[3];
  v0[16] = OBJC_IVAR____TtC16MetricsFramework30RequestWithNoAssetSELFReporter_logger;

  v5 = sub_258F0A350();
  v6 = sub_258F0A810();
  v7 = os_log_type_enabled(v5, v6);
  v9 = v0[14];
  v8 = v0[15];
  v10 = v0[13];
  if (v7)
  {
    v11 = swift_slowAlloc();
    *v11 = 134217984;
    *(v11 + 4) = *(v8 + 16);

    _os_log_impl(&dword_258DD8000, v5, v6, "RequestWithNoAssetSELFReporter reporting results for %ld days", v11, 0xCu);
    MEMORY[0x259C9EF40](v11, -1, -1);
  }

  else
  {
    v12 = v0[13];
  }

  v13 = v0[15];
  v14 = *(v13 + 16);
  v0[17] = v14;
  if (v14)
  {
    v15 = v0[8];
    v16 = v13 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v17 = *(v15 + 72);
    do
    {
      v21 = v0[11];
      v22 = v0[12];
      v23 = v0[7];
      sub_258EAB514(v16, v22);
      v24 = *(*v22 + 16);
      v67 = 0;
      v68 = 0xE000000000000000;
      sub_258F0AAE0();

      v67 = 0xD000000000000013;
      v68 = 0x8000000258F1D600;
      v0[2] = v24;
      v25 = sub_258F0AD60();
      MEMORY[0x259C9DEB0](v25);

      MEMORY[0x259C9DEB0](0xD000000000000010, 0x8000000258F1D620);
      sub_258EA8298(v22, v21);
      v26 = sub_258F0A550();
      MEMORY[0x259C9DEB0](v26);

      v28 = v67;
      v27 = v68;

      v29 = sub_258F0A350();
      v30 = sub_258F0A810();

      if (os_log_type_enabled(v29, v30))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v67 = v19;
        *v18 = 136315138;
        v20 = sub_258DE3018(v28, v27, &v67);

        *(v18 + 4) = v20;
        _os_log_impl(&dword_258DD8000, v29, v30, "%s", v18, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v19);
        MEMORY[0x259C9EF40](v19, -1, -1);
        MEMORY[0x259C9EF40](v18, -1, -1);
      }

      else
      {
      }

      v16 += v17;
      --v14;
    }

    while (v14);
    v31 = v0[8];
    v32 = v0[5];
    v33 = v0[3];
    v0[18] = OBJC_IVAR____TtC16MetricsFramework30RequestWithNoAssetSELFReporter_reportingService;
    v0[19] = 0;
    v34 = v0[15];
    if (!*(v34 + 16))
    {
      __break(1u);
      return;
    }

    v35 = v0[16];
    v36 = v0[10];
    v37 = v0[11];
    v38 = v0[6];
    v39 = v0[4];
    sub_258EAB514(v34 + ((*(v31 + 80) + 32) & ~*(v31 + 80)), v36);
    sub_258DEB8C8(0, &qword_27F98A270, 0x277D593C0);
    sub_258EAB514(v36, v37);
    (*(v32 + 16))(v38, v33 + v35, v39);
    v40 = sub_258EAA04C(v37, v38);
    v0[20] = v40;
    v41 = [objc_allocWithZone(MEMORY[0x277D593E0]) init];
    v0[21] = v41;
    if (v41)
    {
      v42 = v0[16];
      v43 = v0[10];
      v44 = v0[7];
      v45 = v0[3];
      v46 = (v45 + v0[18]);
      v47 = v41;
      [v41 setRequestsWithoutAssetsDigestReported_];
      v48 = *(v44 + 20);
      LOBYTE(v67) = 1;
      v49 = EventMetadata.transformToODDClientEventMetadata(eventOrigin:)(0x100000000);
      [v47 setEventMetadata_];

      v50 = v46[3];
      v51 = v46[4];
      __swift_project_boxed_opaque_existential_1(v46, v50);
      v52 = *(v51 + 8);
      v66 = (v52 + *v52);
      v53 = v52[1];
      v54 = swift_task_alloc();
      v0[22] = v54;
      *v54 = v0;
      v54[1] = sub_258EA92E4;

      v66(v47, v45 + v42, v50, v51);
      return;
    }

    v55 = v0[3] + v0[16];
    v56 = sub_258F0A350();
    v57 = sub_258F0A820();
    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&dword_258DD8000, v56, v57, "Failed to generate final payload", v58, 2u);
      MEMORY[0x259C9EF40](v58, -1, -1);
    }

    v59 = v0[10];

    sub_258EAB578(v59);
  }

  v61 = v0[11];
  v60 = v0[12];
  v63 = v0[9];
  v62 = v0[10];
  v64 = v0[6];

  v65 = v0[1];

  v65();
}

uint64_t sub_258EA92E4()
{
  v2 = *(*v1 + 176);
  v5 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {
    v3 = sub_258EA9C2C;
  }

  else
  {
    v3 = sub_258EA93F8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

void sub_258EA93F8()
{
  v91 = v0;
  v1 = *(v0 + 128);
  v2 = *(v0 + 24);
  sub_258EAB514(*(v0 + 80), *(v0 + 72));
  v3 = sub_258F0A350();
  v4 = sub_258F0A810();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 88);
    v6 = *(v0 + 72);
    v7 = *(v0 + 56);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v90 = v9;
    *v8 = 136315138;
    sub_258EAB514(v6, v5);
    v10 = sub_258F0A550();
    v12 = v11;
    sub_258EAB578(v6);
    v13 = sub_258DE3018(v10, v12, &v90);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_258DD8000, v3, v4, "Successfully reported final payload: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x259C9EF40](v9, -1, -1);
    MEMORY[0x259C9EF40](v8, -1, -1);
  }

  else
  {
    v14 = *(v0 + 72);

    sub_258EAB578(v14);
  }

  v15 = **(v0 + 80);
  if (*(v15 + 16))
  {
    v16 = *(v15 + 296);
    if (v16)
    {
      v17 = *(v0 + 128);
      v18 = *(v0 + 24);
      v19 = *(v15 + 296);

      v20 = sub_258F0A350();
      v21 = sub_258F0A810();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v90 = v23;
        *v22 = 136315138;
        v24 = MEMORY[0x259C9DF80](v16, MEMORY[0x277D837D0]);
        v26 = v25;

        v27 = sub_258DE3018(v24, v26, &v90);

        *(v22 + 4) = v27;
        _os_log_impl(&dword_258DD8000, v20, v21, "Original assetFailureReasons: %s", v22, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v23);
        MEMORY[0x259C9EF40](v23, -1, -1);
        MEMORY[0x259C9EF40](v22, -1, -1);
      }

      else
      {
      }
    }
  }

  v28 = [*(v0 + 160) digests];
  if (!v28)
  {
    goto LABEL_19;
  }

  v29 = v28;
  sub_258DEB8C8(0, &qword_27F98A278, 0x277D593B8);
  v30 = sub_258F0A6B0();

  if (!(v30 >> 62))
  {
    if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_12;
    }

LABEL_22:
    v52 = *(v0 + 160);
    v51 = *(v0 + 168);

    goto LABEL_23;
  }

  if (!sub_258F0AA20())
  {
    goto LABEL_22;
  }

LABEL_12:
  if ((v30 & 0xC000000000000001) != 0)
  {
    goto LABEL_36;
  }

  if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    for (i = *(v30 + 32); ; i = MEMORY[0x259C9E3B0](0, v30))
    {
      v32 = i;

      v33 = [v32 dimensions];

      if (v33 && (v34 = [v33 assetFailureReasons], v33, v34))
      {
        v35 = *(v0 + 128);
        v36 = *(v0 + 24);
        v37 = sub_258DEB8C8(0, &qword_27F988A10, 0x277CCABB0);
        v38 = sub_258F0A6B0();

        v39 = sub_258F0A350();
        v40 = sub_258F0A810();

        v41 = os_log_type_enabled(v39, v40);
        v43 = *(v0 + 160);
        v42 = *(v0 + 168);
        if (v41)
        {
          v44 = swift_slowAlloc();
          v45 = swift_slowAlloc();
          v90 = v45;
          *v44 = 136315138;
          v46 = MEMORY[0x259C9DF80](v38, v37);
          v48 = v47;

          v49 = sub_258DE3018(v46, v48, &v90);

          *(v44 + 4) = v49;
          _os_log_impl(&dword_258DD8000, v39, v40, "Reported assetFailureReasons: %s", v44, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v45);
          MEMORY[0x259C9EF40](v45, -1, -1);
          MEMORY[0x259C9EF40](v44, -1, -1);
        }

        else
        {
        }
      }

      else
      {
LABEL_19:
        v50 = *(v0 + 160);
      }

LABEL_23:
      v30 = *(v0 + 136);
      v53 = *(v0 + 152) + 1;
      sub_258EAB578(*(v0 + 80));
      if (v53 == v30)
      {
        break;
      }

      v54 = *(v0 + 152) + 1;
      *(v0 + 152) = v54;
      v55 = *(v0 + 120);
      if (v54 < *(v55 + 16))
      {
        v56 = *(v0 + 128);
        v57 = *(v0 + 80);
        v58 = *(v0 + 88);
        v60 = *(v0 + 40);
        v59 = *(v0 + 48);
        v62 = *(v0 + 24);
        v61 = *(v0 + 32);
        sub_258EAB514(v55 + ((*(*(v0 + 64) + 80) + 32) & ~*(*(v0 + 64) + 80)) + *(*(v0 + 64) + 72) * v54, v57);
        sub_258DEB8C8(0, &qword_27F98A270, 0x277D593C0);
        sub_258EAB514(v57, v58);
        (*(v60 + 16))(v59, v62 + v56, v61);
        v63 = sub_258EAA04C(v58, v59);
        *(v0 + 160) = v63;
        v64 = [objc_allocWithZone(MEMORY[0x277D593E0]) init];
        *(v0 + 168) = v64;
        if (v64)
        {
          v65 = *(v0 + 128);
          v66 = *(v0 + 80);
          v67 = *(v0 + 56);
          v68 = *(v0 + 24);
          v69 = (v68 + *(v0 + 144));
          v70 = v64;
          [v64 setRequestsWithoutAssetsDigestReported_];
          v71 = *(v67 + 20);
          LOBYTE(v90) = 1;
          v72 = EventMetadata.transformToODDClientEventMetadata(eventOrigin:)(0x100000000);
          [v70 setEventMetadata_];

          v73 = v69[3];
          v74 = v69[4];
          __swift_project_boxed_opaque_existential_1(v69, v73);
          v75 = *(v74 + 8);
          v89 = (v75 + *v75);
          v76 = v75[1];
          v77 = swift_task_alloc();
          *(v0 + 176) = v77;
          *v77 = v0;
          v77[1] = sub_258EA92E4;

          v89(v70, v68 + v65, v73, v74);
          return;
        }

        v78 = *(v0 + 24) + *(v0 + 128);
        v79 = sub_258F0A350();
        v80 = sub_258F0A820();
        if (os_log_type_enabled(v79, v80))
        {
          v81 = swift_slowAlloc();
          *v81 = 0;
          _os_log_impl(&dword_258DD8000, v79, v80, "Failed to generate final payload", v81, 2u);
          MEMORY[0x259C9EF40](v81, -1, -1);
        }

        v82 = *(v0 + 80);

        sub_258EAB578(v82);
        break;
      }

      __break(1u);
LABEL_36:
      ;
    }

    v84 = *(v0 + 88);
    v83 = *(v0 + 96);
    v86 = *(v0 + 72);
    v85 = *(v0 + 80);
    v87 = *(v0 + 48);

    v88 = *(v0 + 8);

    v88();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_258EA9C2C()
{
  v1 = v0[3] + v0[16];
  v2 = sub_258F0A350();
  v3 = sub_258F0A820();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[23];
  v7 = v0[20];
  v6 = v0[21];
  if (v4)
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_258DD8000, v2, v3, "Failed to report final payload", v8, 2u);
    MEMORY[0x259C9EF40](v8, -1, -1);
  }

  v9 = v0[17];
  v10 = v0[19] + 1;
  result = sub_258EAB578(v0[10]);
  if (v10 != v9)
  {
    v12 = v0[19] + 1;
    v0[19] = v12;
    v13 = v0[15];
    if (v12 >= *(v13 + 16))
    {
      __break(1u);
      return result;
    }

    v14 = v0[16];
    v15 = v0[10];
    v16 = v0[11];
    v18 = v0[5];
    v17 = v0[6];
    v20 = v0[3];
    v19 = v0[4];
    sub_258EAB514(v13 + ((*(v0[8] + 80) + 32) & ~*(v0[8] + 80)) + *(v0[8] + 72) * v12, v15);
    sub_258DEB8C8(0, &qword_27F98A270, 0x277D593C0);
    sub_258EAB514(v15, v16);
    (*(v18 + 16))(v17, v20 + v14, v19);
    v21 = sub_258EAA04C(v16, v17);
    v0[20] = v21;
    v22 = [objc_allocWithZone(MEMORY[0x277D593E0]) init];
    v0[21] = v22;
    if (v22)
    {
      v23 = v0[16];
      v24 = v0[10];
      v25 = v0[7];
      v26 = v0[3];
      v27 = (v26 + v0[18]);
      v28 = v22;
      [v22 setRequestsWithoutAssetsDigestReported_];
      v29 = v24 + *(v25 + 20);
      v30 = EventMetadata.transformToODDClientEventMetadata(eventOrigin:)(0x100000000);
      [v28 setEventMetadata_];

      v31 = v27[3];
      v32 = v27[4];
      __swift_project_boxed_opaque_existential_1(v27, v31);
      v33 = *(v32 + 8);
      v47 = (v33 + *v33);
      v34 = v33[1];
      v35 = swift_task_alloc();
      v0[22] = v35;
      *v35 = v0;
      v35[1] = sub_258EA92E4;

      return v47(v28, v26 + v23, v31, v32);
    }

    v36 = v0[3] + v0[16];
    v37 = sub_258F0A350();
    v38 = sub_258F0A820();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_258DD8000, v37, v38, "Failed to generate final payload", v39, 2u);
      MEMORY[0x259C9EF40](v39, -1, -1);
    }

    v40 = v0[10];

    sub_258EAB578(v40);
  }

  v42 = v0[11];
  v41 = v0[12];
  v44 = v0[9];
  v43 = v0[10];
  v45 = v0[6];

  v46 = v0[1];

  return v46();
}

char *sub_258EAA04C(uint64_t *a1, uint64_t a2)
{
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (!result)
  {
    goto LABEL_42;
  }

  v6 = *a1;
  v24[2] = a2;
  v7 = MEMORY[0x28223BE20](result, v5);
  sub_258EA8874(sub_258EAB750, v24, v6);
  sub_258DEB8C8(0, &qword_27F98A278, 0x277D593B8);
  v8 = sub_258F0A6A0();

  [v7 setDigests_];

  v9 = MEMORY[0x277D84F90];
  v30 = MEMORY[0x277D84F90];
  v10 = *(v6 + 16);
  if (v10)
  {
    v25 = v7;
    v26 = a1;
    v27 = a2;
    v7 = 0;
    v11 = (v6 + 32);
    a1 = &selRef_setSampledErrorAsset_;
    while (v7 < *(v6 + 16))
    {
      memcpy(v29, v11, sizeof(v29));
      v12 = objc_allocWithZone(MEMORY[0x277D59350]);
      sub_258EA3054(v29, v28);
      sub_258EA3054(v29, v28);
      result = [v12 init];
      if (!result)
      {
        goto LABEL_41;
      }

      v13 = result;
      if (v29[9])
      {
        v14 = result;

        v15 = sub_258F0A4E0();
      }

      else
      {
        v16 = result;
        v15 = 0;
      }

      a2 = v29[10];
      v17 = v29[11];
      [v13 setDeviceType_];

      if (v17)
      {

        sub_258EA308C(v29);
        v18 = sub_258F0A4E0();

        v19 = v18;
        if ([v19 isEqualToString:@"PROGRAMCODE_UNKNOWN"])
        {
          a2 = 0;
        }

        else if ([v19 isEqualToString:@"PROGRAMCODE_IOS"])
        {
          a2 = 1;
        }

        else if ([v19 isEqualToString:@"PROGRAMCODE_MACOS"])
        {
          a2 = 2;
        }

        else if ([v19 isEqualToString:@"PROGRAMCODE_TVOS"])
        {
          a2 = 3;
        }

        else if ([v19 isEqualToString:@"PROGRAMCODE_WATCHOS"])
        {
          a2 = 4;
        }

        else if ([v19 isEqualToString:@"PROGRAMCODE_VISIONOS"])
        {
          a2 = 5;
        }

        else
        {
          a2 = 0;
        }

        [v13 setProgramCode_];
      }

      else
      {
        sub_258EA308C(v29);
      }

      v20 = sub_258EA308C(v29);
      v9 = &v30;
      MEMORY[0x259C9DF50](v20);
      if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        a2 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_258F0A6D0();
      }

      ++v7;
      sub_258F0A700();
      v11 += 272;
      if (v10 == v7)
      {
        v9 = v30;
        a1 = v26;
        a2 = v27;
        v7 = v25;
        goto LABEL_29;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_29:
    if (!(v9 >> 62))
    {
      result = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
LABEL_37:
        v22 = 0;
        goto LABEL_38;
      }

      goto LABEL_31;
    }
  }

  result = sub_258F0AA20();
  if (!result)
  {
    goto LABEL_37;
  }

LABEL_31:
  if ((v9 & 0xC000000000000001) != 0)
  {
    v21 = MEMORY[0x259C9E3B0](0, v9);
    goto LABEL_34;
  }

  if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v21 = *(v9 + 32);
LABEL_34:
    v22 = v21;
LABEL_38:

    [v7 setFixedDimensions_];

    sub_258EAB578(a1);
    v23 = sub_258F0A370();
    (*(*(v23 - 8) + 8))(a2, v23);
    return v7;
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

uint64_t sub_258EAA484()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework30RequestWithNoAssetSELFReporter_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC16MetricsFramework30RequestWithNoAssetSELFReporter_reportingService));
}

uint64_t RequestWithNoAssetSELFReporter.deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework30RequestWithNoAssetSELFReporter_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC16MetricsFramework30RequestWithNoAssetSELFReporter_reportingService));
  return v0;
}

uint64_t RequestWithNoAssetSELFReporter.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework30RequestWithNoAssetSELFReporter_logger;
  v2 = sub_258F0A370();
  v3 = *(*(v2 - 8) + 8);

  v3(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC16MetricsFramework30RequestWithNoAssetSELFReporter_reportingService));

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

id sub_258EAA630@<X0>(const void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = sub_258F0A370();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(v16, a1, 0x110uLL);
  sub_258DEB8C8(0, &qword_27F98A278, 0x277D593B8);
  memcpy(v15, a1, sizeof(v15));
  (*(v7 + 16))(v11, a2, v6);
  sub_258EA3054(v16, &v14);
  result = sub_258EAA77C(v15, v11);
  *a3 = result;
  return result;
}

id sub_258EAA77C(const void *a1, uint64_t a2)
{
  v4 = sub_258F0A370();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  memcpy(v17, a1, sizeof(v17));
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  v11 = result;
  sub_258DEB8C8(0, qword_27F98A290, 0x277D593C8);
  memcpy(v16, a1, sizeof(v16));
  (*(v5 + 16))(v9, a2, v4);
  v12 = v11;
  sub_258EA3054(v17, v15);
  v13 = sub_258EAA9BC(v16, v9);
  [v12 setDimensions_];

  result = [objc_allocWithZone(MEMORY[0x277D593B0]) init];
  if (!result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v14 = result;
  if ((v17[49] & 1) == 0)
  {
    [result setRequestsRequiringAssetsCount_];
  }

  if ((v17[51] & 1) == 0)
  {
    [v14 setRequestsMissingAssetsCount_];
  }

  sub_258EA308C(v17);
  if ((v17[53] & 1) == 0)
  {
    [v14 setRequestsWithFailuresCount_];
  }

  [v12 setCounts_];

  (*(v5 + 8))(a2, v4);
  return v12;
}

id sub_258EAA9BC(char *__src, uint64_t a2)
{
  memcpy(v18, __src, sizeof(v18));
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (result)
  {
    v5 = result;
    v19 = *(__src + 216);
    v6 = *(&v19 + 1);
    if (*(&v19 + 1))
    {
      v7 = result;
      sub_258E38B44(&v19, v17);
      v6 = sub_258F0A4E0();
      sub_258E38BB4(&v19);
    }

    else
    {
      v8 = result;
    }

    [v5 setAssetSetName_];

    if (v18[32])
    {

      v9 = sub_258F0A4E0();
    }

    else
    {
      v9 = 0;
    }

    [v5 setPreviousSystemBuild_];

    if ((v18[30] & 1) == 0)
    {
      [v5 setBuildInstallationTimestampInSecondsSince1970_];
    }

    sub_258EA3054(v18, v17);
    v10 = sub_258EAB0C0(v18);
    [v5 setAssistantDimensions_];

    v13 = v18[33];
    if (v18[33])
    {
      MEMORY[0x28223BE20](v11, v12);
      v16[2] = a2;

      sub_258EA82FC(sub_258EAB770, v16, v13);
      sub_258EA308C(v18);

      sub_258DEB8C8(0, &qword_27F988A10, 0x277CCABB0);
      v14 = sub_258F0A6A0();
    }

    else
    {
      sub_258EA308C(v18);
      v14 = 0;
    }

    [v5 setAssetFailureReasons_];

    v15 = sub_258F0A370();
    (*(*(v15 - 8) + 8))(a2, v15);
    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t *sub_258EAAC3C@<X0>(uint64_t *result@<X0>, uint64_t **a2@<X8>)
{
  v3 = *result;
  v4 = result[1];
  v5 = HIBYTE(v4) & 0xF;
  v6 = *result & 0xFFFFFFFFFFFFLL;
  if ((v4 & 0x2000000000000000) != 0)
  {
    v7 = HIBYTE(v4) & 0xF;
  }

  else
  {
    v7 = *result & 0xFFFFFFFFFFFFLL;
  }

  if (!v7)
  {
LABEL_63:

    v27 = sub_258F0A350();
    v28 = sub_258F0A820();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v33[0] = v30;
      *v29 = 136315138;
      *(v29 + 4) = sub_258DE3018(v3, v4, v33);
      _os_log_impl(&dword_258DD8000, v27, v28, "Invalid assetFailureReason value: %s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v30);
      MEMORY[0x259C9EF40](v30, -1, -1);
      MEMORY[0x259C9EF40](v29, -1, -1);
    }

    result = 0;
    goto LABEL_68;
  }

  if ((v4 & 0x1000000000000000) != 0)
  {
    v31 = result[1];

    v9 = sub_258EAF03C(v3, v4, 10);

    if ((v9 & 0x100000000) != 0)
    {
      goto LABEL_63;
    }

    goto LABEL_67;
  }

  if ((v4 & 0x2000000000000000) == 0)
  {
    if ((v3 & 0x1000000000000000) != 0)
    {
      result = ((v4 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v32 = *result;
      result = sub_258F0AB10();
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v6 >= 1)
      {
        v5 = v6 - 1;
        if (v6 != 1)
        {
          v9 = 0;
          if (result)
          {
            v16 = result + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                goto LABEL_61;
              }

              v18 = 10 * v9;
              if (v18 != v18)
              {
                goto LABEL_61;
              }

              v9 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                goto LABEL_61;
              }

              ++v16;
              if (!--v5)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_53;
        }

        goto LABEL_61;
      }

      goto LABEL_72;
    }

    if (v8 != 45)
    {
      if (v6)
      {
        v9 = 0;
        if (result)
        {
          while (1)
          {
            v22 = *result - 48;
            if (v22 > 9)
            {
              goto LABEL_61;
            }

            v23 = 10 * v9;
            if (v23 != v23)
            {
              goto LABEL_61;
            }

            v9 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              goto LABEL_61;
            }

            result = (result + 1);
            if (!--v6)
            {
              goto LABEL_53;
            }
          }
        }

        goto LABEL_53;
      }

LABEL_61:
      v9 = 0;
      LOBYTE(v5) = 1;
LABEL_62:
      v34 = v5;
      if (v5)
      {
        goto LABEL_63;
      }

LABEL_67:
      result = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInt_];
LABEL_68:
      *a2 = result;
      return result;
    }

    if (v6 >= 1)
    {
      v5 = v6 - 1;
      if (v6 != 1)
      {
        v9 = 0;
        if (result)
        {
          v10 = result + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              goto LABEL_61;
            }

            v12 = 10 * v9;
            if (v12 != v12)
            {
              goto LABEL_61;
            }

            v9 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              goto LABEL_61;
            }

            ++v10;
            if (!--v5)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_53:
        LOBYTE(v5) = 0;
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v33[0] = *result;
  v33[1] = v4 & 0xFFFFFFFFFFFFFFLL;
  if (v3 != 43)
  {
    if (v3 != 45)
    {
      if (v5)
      {
        LODWORD(v9) = 0;
        v24 = v33;
        while (1)
        {
          v25 = *v24 - 48;
          if (v25 > 9)
          {
            break;
          }

          v26 = 10 * v9;
          if (v26 != v26)
          {
            break;
          }

          v9 = v26 + v25;
          if (__OFADD__(v26, v25))
          {
            break;
          }

          v24 = (v24 + 1);
          if (!--v5)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    if (v5)
    {
      if (--v5)
      {
        LODWORD(v9) = 0;
        v13 = v33 + 1;
        while (1)
        {
          v14 = *v13 - 48;
          if (v14 > 9)
          {
            break;
          }

          v15 = 10 * v9;
          if (v15 != v15)
          {
            break;
          }

          v9 = v15 - v14;
          if (__OFSUB__(v15, v14))
          {
            break;
          }

          ++v13;
          if (!--v5)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_71;
  }

  if (v5)
  {
    if (--v5)
    {
      LODWORD(v9) = 0;
      v19 = v33 + 1;
      while (1)
      {
        v20 = *v19 - 48;
        if (v20 > 9)
        {
          break;
        }

        v21 = 10 * v9;
        if (v21 != v21)
        {
          break;
        }

        v9 = v21 + v20;
        if (__OFADD__(v21, v20))
        {
          break;
        }

        ++v19;
        if (!--v5)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_61;
  }

LABEL_73:
  __break(1u);
  return result;
}

uint64_t sub_258EAB000(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = (a3 + OBJC_IVAR____TtC16MetricsFramework30RequestWithNoAssetSELFReporter_reportingService);
  v9[3] = a4;
  v9[4] = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v9);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v11 = OBJC_IVAR____TtC16MetricsFramework30RequestWithNoAssetSELFReporter_logger;
  v12 = sub_258F0A370();
  (*(*(v12 - 8) + 32))(a3 + v11, a1, v12);
  return a3;
}

id sub_258EAB0C0(const void *a1)
{
  v30 = &type metadata for RequestWithNoAssetData;
  v31 = &off_286A2E4D0;
  v2 = swift_allocObject();
  v29[0] = v2;
  memcpy(v2 + 2, a1, 0x110uLL);
  result = [objc_allocWithZone(MEMORY[0x277D59248]) init];
  if (result)
  {
    v4 = result;
    if (v2[9])
    {
      v5 = v2[8];
      v6 = result;

      v7 = sub_258F0A4E0();
    }

    else
    {
      v8 = result;
      v7 = 0;
    }

    [v4 setSystemBuild_];

    v9 = __swift_project_boxed_opaque_existential_1(v29, &type metadata for RequestWithNoAssetData);
    if (v9[21])
    {
      v10 = v9[20];
      v11 = v9[21];

      v12 = sub_258F0A4E0();

      v13 = v12;
      if ([v13 isEqualToString:@"ORCHSIRIASRMODE_UNKNOWN"])
      {
        v14 = 0;
      }

      else if ([v13 isEqualToString:@"ORCHSIRIASRMODE_SERVER"])
      {
        v14 = 1;
      }

      else if ([v13 isEqualToString:@"ORCHSIRIASRMODE_DEVICE"])
      {
        v14 = 2;
      }

      else
      {
        v14 = 0;
      }

      [v4 setAsrLocation_];
    }

    v15 = __swift_project_boxed_opaque_existential_1(v29, v30);
    if (v15[23])
    {
      v16 = v15[22];
      v17 = v15[23];

      v18 = sub_258F0A4E0();

      v19 = v18;
      if ([v19 isEqualToString:@"ORCHSIRINLMODE_UNKNOWN"])
      {
        v20 = 0;
      }

      else if ([v19 isEqualToString:@"ORCHSIRINLMODE_NLV3_SERVER"])
      {
        v20 = 1;
      }

      else if ([v19 isEqualToString:@"ORCHSIRINLMODE_NLX_DEVICE"])
      {
        v20 = 2;
      }

      else
      {
        v20 = 0;
      }

      [v4 setNlLocation_];
    }

    if (v2[17])
    {
      v21 = v2[16];
      v22 = v2[17];

      v23 = sub_258F0A4E0();

      v24 = v23;
      if ([v24 isEqualToString:@"UNKNOWN"])
      {
        v25 = 0;
      }

      else if ([v24 isEqualToString:@"OPTED_IN"])
      {
        v25 = 1;
      }

      else if ([v24 isEqualToString:@"OPTED_OUT"])
      {
        v25 = 2;
      }

      else if ([v24 isEqualToString:@"DISMISSED"])
      {
        v25 = 3;
      }

      else
      {
        v25 = 0;
      }

      [v4 setDataSharingOptInStatus_];
    }

    v26 = v2[15];
    if (v26)
    {
      v27 = v2[14];

      v28 = _sSo17SISchemaISOLocaleC16MetricsFrameworkE10fromStringyABSgSSFZ_0(v27, v26);

      [v4 setSiriInputLocale_];
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v29);
    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_258EAB414(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a4 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for RequestWithNoAssetSELFReporter();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  v16 = swift_allocObject();
  (*(v9 + 16))(v12, a2, a4);
  return sub_258EAB000(a1, v12, v16, a4, a5);
}

uint64_t sub_258EAB514(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CombinedRequestNoAssetData(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_258EAB578(uint64_t a1)
{
  v2 = type metadata accessor for CombinedRequestNoAssetData(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for RequestWithNoAssetSELFReporter()
{
  result = qword_27F98A280;
  if (!qword_27F98A280)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_258EAB628()
{
  result = sub_258F0A370();
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

uint64_t sub_258EAB830()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t sub_258EAB850()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_258EAB918()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return v0;
}

uint64_t sub_258EAB940()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_258EAB9A4()
{
  v0 = sub_258F0A370();
  __swift_allocate_value_buffer(v0, qword_27F98A418);
  __swift_project_value_buffer(v0, qword_27F98A418);
  return sub_258F0A360();
}

uint64_t static SamplingUtils.getSiriLanguage()()
{
  v0 = [objc_opt_self() getSiriLanguageWithFallback_];
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = sub_258F0A4F0();

  return v2;
}

uint64_t sub_258EABAC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = swift_task_alloc();
  *(v5 + 16) = v8;
  *v8 = v5;
  v8[1] = sub_258DEE37C;

  return sub_258EB04AC(1, a4, a5);
}

uint64_t static SamplingUtils.setEnrollmentStatus(status:siriLanguage:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_258DE1DC4;

  return sub_258EB04AC(a1, a2, a3);
}

uint64_t sub_258EABC38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98A430, &qword_258F14810);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v13 = v28 - v12;
  sub_258EB4D4C(a3, v28 - v12);
  v14 = sub_258F0A790();
  v15 = *(v14 - 8);
  v16 = (*(v15 + 48))(v13, 1, v14);

  if (v16 == 1)
  {
    sub_258DE2184(v13, &qword_27F98A430, &qword_258F14810);
  }

  else
  {
    sub_258F0A780();
    (*(v15 + 8))(v13, v14);
  }

  v18 = *(a5 + 16);
  v17 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v18)
  {
    swift_getObjectType();
    v19 = sub_258F0A740();
    v21 = v20;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v22 = sub_258F0A570() + 32;
      v23 = swift_allocObject();
      *(v23 + 16) = a4;
      *(v23 + 24) = a5;

      if (v21 | v19)
      {
        v29[0] = 0;
        v29[1] = 0;
        v24 = v29;
        v29[2] = v19;
        v29[3] = v21;
      }

      else
      {
        v24 = 0;
      }

      v28[1] = 7;
      v28[2] = v24;
      v28[3] = v22;
      v26 = swift_task_create();

      sub_258DE2184(a3, &qword_27F98A430, &qword_258F14810);

      return v26;
    }
  }

  else
  {
    v19 = 0;
    v21 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_258DE2184(a3, &qword_27F98A430, &qword_258F14810);
  v25 = swift_allocObject();
  *(v25 + 16) = a4;
  *(v25 + 24) = a5;
  if (v21 | v19)
  {
    v29[4] = 0;
    v29[5] = 0;
    v29[6] = v19;
    v29[7] = v21;
  }

  return swift_task_create();
}

uint64_t sub_258EABF48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98A430, &qword_258F14810);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v11 = &v15 - v10;
  v12 = sub_258F0A790();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = a1;
  v13[5] = a2;

  sub_258EABC38(0, 0, v11, a4, v13);
}

uint64_t sub_258EAC054(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = swift_task_alloc();
  *(v5 + 16) = v8;
  *v8 = v5;
  v8[1] = sub_258DEE37C;

  return sub_258EB04AC(2, a4, a5);
}

uint64_t static SamplingUtils.getAudioIdWithRequestId(requestId:siriLanguage:date:)@<X0>(uint64_t a1@<X4>, char *a2@<X8>)
{
  v63 = a2;
  v65[1] = *MEMORY[0x277D85DE8];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988730, &unk_258F0F8E0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v7 = &v62 - v6;
  v64 = sub_258F09A70();
  v8 = *(v64 - 8);
  v9 = *(v8 + 64);
  v11 = MEMORY[0x28223BE20](v64, v10);
  v13 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v62 - v15;
  v17 = objc_opt_self();
  v18 = sub_258F0A4E0();
  v19 = sub_258F0A4E0();
  v65[0] = 0;
  v20 = [v17 getAudioIdWithRequestId:v18 languageCode:v19 date:a1 error:v65];

  v21 = v65[0];
  if (!v20)
  {
    v34 = v65[0];
    v35 = sub_258F09890();

    swift_willThrow();
    if (qword_27F988678 != -1)
    {
      swift_once();
    }

    v36 = sub_258F0A370();
    __swift_project_value_buffer(v36, qword_27F98A418);
    v37 = v35;
    v29 = sub_258F0A350();
    v38 = sub_258F0A820();

    v39 = os_log_type_enabled(v29, v38);
    v27 = v64;
    if (!v39)
    {

      goto LABEL_22;
    }

    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    *v40 = 138412290;
    v42 = v35;
    v43 = _swift_stdlib_bridgeErrorToNSError();
    *(v40 + 4) = v43;
    *v41 = v43;
    _os_log_impl(&dword_258DD8000, v29, v38, "#SamplingUtils: SSRRPISamplingXPCService.getAudioId failed with error: %@", v40, 0xCu);
    sub_258DE2184(v41, &qword_27F988C78, &qword_258F11A20);
    MEMORY[0x259C9EF40](v41, -1, -1);
    MEMORY[0x259C9EF40](v40, -1, -1);

LABEL_16:
LABEL_22:
    v57 = 1;
    v58 = v63;
    goto LABEL_23;
  }

  v22 = sub_258F0A4F0();
  v24 = v23;
  v25 = v21;

  v26 = HIBYTE(v24) & 0xF;
  if ((v24 & 0x2000000000000000) == 0)
  {
    v26 = v22 & 0xFFFFFFFFFFFFLL;
  }

  v27 = v64;
  if (!v26)
  {
LABEL_7:
    if (qword_27F988678 != -1)
    {
      swift_once();
    }

    v28 = sub_258F0A370();
    __swift_project_value_buffer(v28, qword_27F98A418);

    v29 = sub_258F0A350();
    v30 = sub_258F0A820();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v65[0] = v32;
      *v31 = 136315138;
      v33 = sub_258DE3018(v22, v24, v65);

      *(v31 + 4) = v33;
      _os_log_impl(&dword_258DD8000, v29, v30, "#SamplingUtils: SSRRPISamplingXPCService.getAudioId returned empty or invalid value: %s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v32);
      MEMORY[0x259C9EF40](v32, -1, -1);
      MEMORY[0x259C9EF40](v31, -1, -1);
    }

    else
    {
    }

    goto LABEL_16;
  }

  sub_258F09A30();
  if ((*(v8 + 48))(v7, 1, v27) == 1)
  {
    sub_258DE2184(v7, &qword_27F988730, &unk_258F0F8E0);
    goto LABEL_7;
  }

  v44 = *(v8 + 32);
  v44(v16, v7, v27);
  if (qword_27F988678 != -1)
  {
    swift_once();
  }

  v45 = sub_258F0A370();
  __swift_project_value_buffer(v45, qword_27F98A418);
  (*(v8 + 16))(v13, v16, v27);
  v46 = sub_258F0A350();
  v47 = sub_258F0A810();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v62 = v44;
    v49 = v48;
    v50 = swift_slowAlloc();
    v65[0] = v50;
    *v49 = 136315138;
    sub_258EB4ABC(&qword_27F988758, MEMORY[0x277CC95F0]);
    v51 = sub_258F0AD60();
    v53 = v52;
    (*(v8 + 8))(v13, v64);
    v54 = sub_258DE3018(v51, v53, v65);

    *(v49 + 4) = v54;
    _os_log_impl(&dword_258DD8000, v46, v47, "#SamplingUtils: SSRRPISamplingXPCService.getAudioId is %s", v49, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v50);
    v55 = v50;
    v27 = v64;
    MEMORY[0x259C9EF40](v55, -1, -1);
    v56 = v49;
    v44 = v62;
    MEMORY[0x259C9EF40](v56, -1, -1);
  }

  else
  {

    (*(v8 + 8))(v13, v27);
  }

  v61 = v63;
  v44(v63, v16, v27);
  v58 = v61;
  v57 = 0;
LABEL_23:
  result = (*(v8 + 56))(v58, v57, 1, v27);
  v60 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t static SamplingUtils.getEnrollementDate(siriLanguage:)@<X0>(char *a1@<X8>)
{
  v49[1] = *MEMORY[0x277D85DE8];
  v2 = sub_258F09A20();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v6 = MEMORY[0x28223BE20](v2, v5);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v6, v9);
  v12 = &v46 - v11;
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v46 - v14;
  v16 = [objc_opt_self() sharedManager];
  if (!v16)
  {
    __break(1u);
  }

  v17 = v16;
  v18 = sub_258F0A4E0();
  v49[0] = 0;
  v19 = [v17 getEnrollmentDateWithLocale:v18 error:v49];

  v20 = v49[0];
  if (v19)
  {
    sub_258F09A00();
    v21 = v20;

    v22 = *(v3 + 32);
    v22(v15, v12, v2);
    if (qword_27F988678 != -1)
    {
      swift_once();
    }

    v23 = sub_258F0A370();
    __swift_project_value_buffer(v23, qword_27F98A418);
    (*(v3 + 16))(v8, v15, v2);
    v24 = sub_258F0A350();
    v25 = sub_258F0A810();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v47 = v22;
      v27 = v26;
      v28 = swift_slowAlloc();
      v48 = a1;
      v46 = v28;
      v49[0] = v28;
      *v27 = 136315138;
      sub_258EB4ABC(&qword_27F988750, MEMORY[0x277CC9578]);
      v29 = sub_258F0AD60();
      v30 = v15;
      v31 = v2;
      v33 = v32;
      (*(v3 + 8))(v8, v31);
      v34 = sub_258DE3018(v29, v33, v49);
      v2 = v31;
      v15 = v30;

      *(v27 + 4) = v34;
      _os_log_impl(&dword_258DD8000, v24, v25, "#SamplingUtils: Current Enrollment Date: %s", v27, 0xCu);
      v35 = v46;
      __swift_destroy_boxed_opaque_existential_1Tm(v46);
      a1 = v48;
      MEMORY[0x259C9EF40](v35, -1, -1);
      v36 = v27;
      v22 = v47;
      MEMORY[0x259C9EF40](v36, -1, -1);
    }

    else
    {

      (*(v3 + 8))(v8, v2);
    }

    v22(a1, v15, v2);
    v43 = 0;
  }

  else
  {
    v37 = v49[0];
    v38 = sub_258F09890();

    swift_willThrow();
    if (qword_27F988678 != -1)
    {
      swift_once();
    }

    v39 = sub_258F0A370();
    __swift_project_value_buffer(v39, qword_27F98A418);
    v40 = sub_258F0A350();
    v41 = sub_258F0A820();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_258DD8000, v40, v41, "SSRSamplingManager.shared().getEnrollmentDate failed", v42, 2u);
      MEMORY[0x259C9EF40](v42, -1, -1);
    }

    v43 = 1;
  }

  result = (*(v3 + 56))(a1, v43, 1, v2);
  v45 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_258EACCF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[26] = v10;
  v8[27] = v11;
  v8[24] = a7;
  v8[25] = a8;
  v8[22] = a5;
  v8[23] = a6;
  v8[21] = a4;
  return MEMORY[0x2822009F8](sub_258EACD2C, 0, 0);
}

uint64_t sub_258EACD2C()
{
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[22];
  v4 = v0[23];
  v5 = v0[21];
  v6 = objc_opt_self();
  v7 = sub_258F0A4E0();
  v0[28] = v7;
  v8 = sub_258F0A4E0();
  v0[29] = v8;
  v9 = sub_258F099A0();
  v0[30] = v9;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_258EACEB8;
  v10 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98A440, &qword_258F148E0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_258EAD444;
  v0[13] = &block_descriptor_31;
  v0[14] = v10;
  [v6 uploadAudioFileWithRequestId:v7 audioId:v8 date:v9 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_258EACEB8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 248) = v2;
  if (v2)
  {
    v3 = sub_258EAD210;
  }

  else
  {
    v3 = sub_258EACFC8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_258EACFC8()
{
  v22 = v0;
  v1 = *(v0 + 232);
  v2 = *(v0 + 224);
  v3 = *(v0 + 144);
  v5 = *(v0 + 152);
  v4 = *(v0 + 160);

  if ((v3 & 1) == 0)
  {
    if (qword_27F988678 != -1)
    {
      swift_once();
    }

    v6 = *(v0 + 176);
    v7 = sub_258F0A370();
    __swift_project_value_buffer(v7, qword_27F98A418);

    v8 = sub_258F0A350();
    v9 = sub_258F0A820();

    if (os_log_type_enabled(v8, v9))
    {
      v11 = *(v0 + 168);
      v10 = *(v0 + 176);
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v21 = v13;
      *v12 = 136315394;
      *(v12 + 4) = sub_258DE3018(v11, v10, &v21);
      *(v12 + 12) = 2080;
      *(v0 + 80) = v5;
      *(v0 + 88) = v4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988958, &unk_258F0C100);
      v14 = sub_258F0A550();
      v16 = sub_258DE3018(v14, v15, &v21);

      *(v12 + 14) = v16;
      _os_log_impl(&dword_258DD8000, v8, v9, "#SamplingUtils: failed to upload requestId: %s due to issue: %s", v12, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C9EF40](v13, -1, -1);
      MEMORY[0x259C9EF40](v12, -1, -1);

      goto LABEL_8;
    }
  }

LABEL_8:
  v17 = *(v0 + 208);
  swift_beginAccess();
  *(v17 + 16) = v3;
  v18 = *(v0 + 216);
  sub_258F0A8A0();
  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_258EAD210()
{
  v24 = v0;
  v1 = v0[30];
  v2 = v0[31];
  v4 = v0[28];
  v3 = v0[29];
  swift_willThrow();

  if (qword_27F988678 != -1)
  {
    swift_once();
  }

  v5 = v0[31];
  v6 = v0[22];
  v7 = sub_258F0A370();
  __swift_project_value_buffer(v7, qword_27F98A418);

  v8 = v5;
  v9 = sub_258F0A350();
  v10 = sub_258F0A820();

  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[31];
  if (v11)
  {
    v14 = v0[21];
    v13 = v0[22];
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v23 = v17;
    *v15 = 136315394;
    *(v15 + 4) = sub_258DE3018(v14, v13, &v23);
    *(v15 + 12) = 2112;
    v18 = v12;
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 14) = v19;
    *v16 = v19;
    _os_log_impl(&dword_258DD8000, v9, v10, "#SamplingUtils: cannot upload requests for %s due to error: %@", v15, 0x16u);
    sub_258DE2184(v16, &qword_27F988C78, &qword_258F11A20);
    MEMORY[0x259C9EF40](v16, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
    MEMORY[0x259C9EF40](v17, -1, -1);
    MEMORY[0x259C9EF40](v15, -1, -1);
  }

  else
  {
  }

  v20 = v0[27];
  sub_258F0A8A0();
  v21 = v0[1];

  return v21();
}

uint64_t sub_258EAD444(uint64_t a1, char a2, uint64_t a3, void *a4)
{
  v7 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988B00, &unk_258F0D730);
    v8 = swift_allocError();
    *v9 = a4;
    v10 = a4;

    return MEMORY[0x282200958](v7, v8);
  }

  else
  {
    if (a3)
    {
      v11 = sub_258F0A4F0();
    }

    else
    {
      v11 = 0;
      v12 = 0;
    }

    v13 = *(*(v7 + 64) + 40);
    *v13 = a2;
    *(v13 + 8) = v11;
    *(v13 + 16) = v12;

    return MEMORY[0x282200950](v7);
  }
}

void sub_258EAD534(void *a1, uint64_t a2)
{
  v4 = sub_258F09A20();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = MEMORY[0x28223BE20](v4, v7);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v37 - v12;
  if (a1)
  {
    v14 = a1;
    if (qword_27F988678 != -1)
    {
      swift_once();
    }

    v15 = sub_258F0A370();
    __swift_project_value_buffer(v15, qword_27F98A418);
    (*(v5 + 16))(v10, a2, v4);
    v16 = a1;
    v17 = sub_258F0A350();
    v18 = sub_258F0A840();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v38 = v37;
      *v19 = 136315394;
      sub_258EB4ABC(&qword_27F988750, MEMORY[0x277CC9578]);
      v21 = sub_258F0AD60();
      v23 = v22;
      (*(v5 + 8))(v10, v4);
      v24 = sub_258DE3018(v21, v23, &v38);

      *(v19 + 4) = v24;
      *(v19 + 12) = 2112;
      v25 = a1;
      v26 = _swift_stdlib_bridgeErrorToNSError();
      *(v19 + 14) = v26;
      *v20 = v26;
      _os_log_impl(&dword_258DD8000, v17, v18, "removed audio id mapping on date: %s with error: %@", v19, 0x16u);
      sub_258DE2184(v20, &qword_27F988C78, &qword_258F11A20);
      MEMORY[0x259C9EF40](v20, -1, -1);
      v27 = v37;
      __swift_destroy_boxed_opaque_existential_1Tm(v37);
      MEMORY[0x259C9EF40](v27, -1, -1);
      MEMORY[0x259C9EF40](v19, -1, -1);
    }

    else
    {

      (*(v5 + 8))(v10, v4);
    }
  }

  else
  {
    if (qword_27F988678 != -1)
    {
      swift_once();
    }

    v28 = sub_258F0A370();
    __swift_project_value_buffer(v28, qword_27F98A418);
    (*(v5 + 16))(v13, a2, v4);
    v29 = sub_258F0A350();
    v30 = sub_258F0A840();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v38 = v32;
      *v31 = 136315138;
      sub_258EB4ABC(&qword_27F988750, MEMORY[0x277CC9578]);
      v33 = sub_258F0AD60();
      v35 = v34;
      (*(v5 + 8))(v13, v4);
      v36 = sub_258DE3018(v33, v35, &v38);

      *(v31 + 4) = v36;
      _os_log_impl(&dword_258DD8000, v29, v30, "removed audio id mapping on and before date: %s complete", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v32);
      MEMORY[0x259C9EF40](v32, -1, -1);
      MEMORY[0x259C9EF40](v31, -1, -1);
    }

    else
    {

      (*(v5 + 8))(v13, v4);
    }
  }
}

void sub_258EAD9F0(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

uint64_t static SamplingUtils.writeDeviceSelectionDate(forKey:defaults:)(uint64_t a1, unint64_t a2, void *a3)
{
  v39 = a3;
  v5 = sub_258F09B40();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_258F09A20();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v15 = MEMORY[0x28223BE20](v11, v14);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v18);
  v20 = &v39 - v19;
  sub_258F09B50();
  static SamplingUtils.convertGMTDateToLocalStartOfDay(date:)(v17, v20);
  v40 = *(v12 + 8);
  v41 = v11;
  v40(v17, v11);
  v21 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v22 = sub_258F0A4E0();
  [v21 setDateFormat_];

  sub_258F09B30();
  v23 = sub_258F09B20();
  (*(v6 + 8))(v10, v5);
  [v21 setTimeZone_];

  v24 = sub_258F099A0();
  v25 = [v21 stringFromDate_];

  v26 = v25;
  if (!v25)
  {
    sub_258F0A4F0();
    v26 = sub_258F0A4E0();
  }

  v27 = sub_258F0A4F0();
  v29 = v28;
  v30 = sub_258F0A4E0();
  [v39 setValue:v26 forKey:v30];

  v31 = a1;
  if (qword_27F988678 != -1)
  {
    swift_once();
  }

  v32 = sub_258F0A370();
  __swift_project_value_buffer(v32, qword_27F98A418);

  v33 = sub_258F0A350();
  v34 = sub_258F0A810();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v42 = v36;
    *v35 = 136315394;
    v37 = sub_258DE3018(v27, v29, &v42);

    *(v35 + 4) = v37;
    *(v35 + 12) = 2080;
    *(v35 + 14) = sub_258DE3018(v31, a2, &v42);
    _os_log_impl(&dword_258DD8000, v33, v34, "#SamplingUtils: Wrote %s to %s in UserDefaults", v35, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C9EF40](v36, -1, -1);
    MEMORY[0x259C9EF40](v35, -1, -1);
  }

  else
  {
  }

  return (v40)(v20, v41);
}

uint64_t static SamplingUtils.convertGMTDateToLocalStartOfDay(date:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v27 = sub_258F09A20();
  v3 = *(v27 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v27, v5);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_258F09B40();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v15 = sub_258F0A4E0();
  [v14 setDateFormat_];

  sub_258F09B30();
  v16 = sub_258F09B20();
  v17 = *(v9 + 8);
  v17(v13, v8);
  [v14 setTimeZone_];

  v26 = a1;
  v18 = sub_258F099A0();
  v19 = [v14 stringFromDate_];

  if (!v19)
  {
    sub_258F0A4F0();
    v19 = sub_258F0A4E0();
  }

  v20 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v21 = sub_258F0A4E0();
  [v20 setDateFormat_];

  sub_258F09B30();
  v22 = sub_258F09B20();
  v17(v13, v8);
  [v20 setTimeZone_];

  v23 = [v20 dateFromString_];
  if (!v23)
  {
    return (*(v3 + 16))(v28, v26, v27);
  }

  sub_258F09A00();

  return (*(v3 + 32))(v28, v7, v27);
}

id static SamplingUtils.defaultDateFormatter()()
{
  v0 = sub_258F09B40();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0, v3);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v7 = sub_258F0A4E0();
  [v6 setDateFormat_];

  sub_258F09B30();
  v8 = sub_258F09B20();
  (*(v1 + 8))(v5, v0);
  [v6 setTimeZone_];

  return v6;
}

uint64_t static SamplingUtils.getDeviceSelectionDate(forKey:defaults:)@<X0>(void *a1@<X2>, char *a2@<X8>)
{
  v38 = a2;
  v3 = sub_258F09B40();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_258F09A20();
  v36 = *(v9 - 8);
  v37 = v9;
  v10 = *(v36 + 64);
  v12 = MEMORY[0x28223BE20](v9, v11);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v35 - v16;
  v18 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v19 = sub_258F0A4E0();
  [v18 setDateFormat_];

  sub_258F09B30();
  v20 = sub_258F09B20();
  (*(v4 + 8))(v8, v3);
  [v18 setTimeZone_];

  v21 = sub_258F0A4E0();
  v22 = [a1 stringForKey_];

  if (v22)
  {
    sub_258F0A4F0();
  }

  v23 = sub_258F0A4E0();

  v24 = [v18 dateFromString_];

  if (v24)
  {
    sub_258F09A00();

    v26 = v36;
    v25 = v37;
    v27 = *(v36 + 32);
    v27(v17, v14, v37);
    v28 = v38;
    v27(v38, v17, v25);
    return (*(v26 + 56))(v28, 0, 1, v25);
  }

  else
  {
    v30 = sub_258F0A4E0();
    v31 = [a1 objectForKey_];

    if (v31)
    {
      sub_258F0A9C0();
      swift_unknownObjectRelease();
    }

    else
    {
      v39 = 0u;
      v40 = 0u;
    }

    v41[0] = v39;
    v41[1] = v40;
    if (*(&v40 + 1))
    {
      v33 = v37;
      v32 = v38;
      v34 = swift_dynamicCast();
      return (*(v36 + 56))(v32, v34 ^ 1u, 1, v33);
    }

    else
    {
      sub_258DE2184(v41, &qword_27F989868, &unk_258F12D70);
      return (*(v36 + 56))(v38, 1, 1, v37);
    }
  }
}

void static SamplingUtils.setUserSamplingIdForCollectionRotation(enrollmentId:userSamplingId:defaults:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a4)
  {
    v6 = sub_258F0A4E0();
  }

  else
  {
    v6 = 0;
  }

  MEMORY[0x259C9DEB0](0xD000000000000014, 0x8000000258F1D6C0);
  v7 = sub_258F0A4E0();

  [a5 setValue:v6 forKey:v7];
  swift_unknownObjectRelease();
}

uint64_t static SamplingUtils.getUserSamplingId(enrollmentId:defaults:)(uint64_t a1, uint64_t a2, void *a3)
{

  MEMORY[0x259C9DEB0](0xD000000000000014, 0x8000000258F1D6C0);
  v4 = sub_258F0A4E0();

  v5 = [a3 stringForKey_];

  if (!v5)
  {
    return 0;
  }

  v6 = sub_258F0A4F0();

  return v6;
}

uint64_t static SamplingUtils.getSISchemaTriggerPhrase(for:)(uint64_t a1)
{
  if (a1 == 1)
  {
    return 1;
  }

  else
  {
    return 2 * (a1 == 2);
  }
}

id static SamplingUtils.convertSISchemaLocale(for:)()
{
  sub_258DEF388();
  v0 = sub_258F0A970();
  v2 = _sSo17SISchemaISOLocaleC16MetricsFrameworkE10fromStringyABSgSSFZ_0(v0, v1);

  return v2;
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> static SamplingUtils.getSelectionDateKey(enrollmentId:)()
{

  MEMORY[0x259C9DEB0](45, 0xE100000000000000);

  MEMORY[0x259C9DEB0](0x6F697463656C6553, 0xED0000657461446ELL);
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> static SamplingUtils.getManifestCurrentSamplesUploadedKey(enrollmentId:)()
{

  MEMORY[0x259C9DEB0](45, 0xE100000000000000);

  MEMORY[0x259C9DEB0](0xD00000000000001DLL, 0x8000000258F1D6E0);
}

uint64_t sub_258EAEAF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98A430, &qword_258F14810);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v13 = &v17 - v12;
  v14 = sub_258F0A790();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = a1;
  v15[5] = a2;

  sub_258EABC38(0, 0, v13, a6, v15);
}

uint64_t sub_258EAEC08()
{
  v0 = [objc_opt_self() getSiriLanguageWithFallback_];
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = sub_258F0A4F0();

  return v2;
}

uint64_t sub_258EAED04(void (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

uint64_t sub_258EAED64(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_258EAEE5C;

  return v7(a1);
}

uint64_t sub_258EAEE5C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void *sub_258EAEF54(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988938, &qword_258F0C0E0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

void sub_258EAEFC8(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

unsigned __int8 *sub_258EAF03C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v70 = a1;
  v71 = a2;

  result = sub_258F0A650();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_258EAFB44();
    v40 = v39;

    v5 = v40;
    if ((v40 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_258F0AB10();
      v7 = v69;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v22 = v7 - 1;
        if (v22)
        {
          v23 = a3 + 48;
          v24 = a3 + 55;
          v25 = a3 + 87;
          if (a3 > 10)
          {
            v23 = 58;
          }

          else
          {
            v25 = 97;
            v24 = 65;
          }

          if (result)
          {
            v13 = 0;
            v26 = result + 1;
            v15 = 1;
            do
            {
              v27 = *v26;
              if (v27 < 0x30 || v27 >= v23)
              {
                if (v27 < 0x41 || v27 >= v24)
                {
                  v18 = 0;
                  if (v27 < 0x61 || v27 >= v25)
                  {
                    goto LABEL_127;
                  }

                  v28 = -87;
                }

                else
                {
                  v28 = -55;
                }
              }

              else
              {
                v28 = -48;
              }

              v29 = v13 * a3;
              if (v29 != v29)
              {
                goto LABEL_126;
              }

              v30 = v27 + v28;
              v21 = __OFADD__(v29, v30);
              v13 = v29 + v30;
              if (v21)
              {
                goto LABEL_126;
              }

              ++v26;
              --v22;
            }

            while (v22);
LABEL_46:
            v15 = 0;
            v18 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v18 = 0;
        v15 = 1;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v31 = a3 + 48;
        v32 = a3 + 55;
        v33 = a3 + 87;
        if (a3 > 10)
        {
          v31 = 58;
        }

        else
        {
          v33 = 97;
          v32 = 65;
        }

        if (result)
        {
          v34 = 0;
          v15 = 1;
          do
          {
            v35 = *result;
            if (v35 < 0x30 || v35 >= v31)
            {
              if (v35 < 0x41 || v35 >= v32)
              {
                v18 = 0;
                if (v35 < 0x61 || v35 >= v33)
                {
                  goto LABEL_127;
                }

                v36 = -87;
              }

              else
              {
                v36 = -55;
              }
            }

            else
            {
              v36 = -48;
            }

            v37 = v34 * a3;
            if (v37 != v37)
            {
              goto LABEL_126;
            }

            v38 = v35 + v36;
            v21 = __OFADD__(v37, v38);
            v34 = v37 + v38;
            if (v21)
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v15 = 0;
          v18 = v34;
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          v15 = 1;
          while (1)
          {
            v16 = *v14;
            if (v16 < 0x30 || v16 >= v10)
            {
              if (v16 < 0x41 || v16 >= v11)
              {
                v18 = 0;
                if (v16 < 0x61 || v16 >= v12)
                {
                  goto LABEL_127;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            v19 = v13 * a3;
            if (v19 != v19)
            {
              goto LABEL_126;
            }

            v20 = v16 + v17;
            v21 = __OFSUB__(v19, v20);
            v13 = v19 - v20;
            if (v21)
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v18 = 0;
        v15 = 0;
LABEL_127:

        LOBYTE(v70) = v15;
        return (v18 | (v15 << 32));
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v41 = HIBYTE(v5) & 0xF;
  v70 = v6;
  v71 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v41)
      {
        v43 = 0;
        v61 = a3 + 48;
        v62 = a3 + 55;
        v63 = a3 + 87;
        if (a3 > 10)
        {
          v61 = 58;
        }

        else
        {
          v63 = 97;
          v62 = 65;
        }

        v64 = &v70;
        v15 = 1;
        while (1)
        {
          v65 = *v64;
          if (v65 < 0x30 || v65 >= v61)
          {
            if (v65 < 0x41 || v65 >= v62)
            {
              v18 = 0;
              if (v65 < 0x61 || v65 >= v63)
              {
                goto LABEL_127;
              }

              v66 = -87;
            }

            else
            {
              v66 = -55;
            }
          }

          else
          {
            v66 = -48;
          }

          v67 = v43 * a3;
          if (v67 != v67)
          {
            goto LABEL_126;
          }

          v68 = v65 + v66;
          v21 = __OFADD__(v67, v68);
          v43 = v67 + v68;
          if (v21)
          {
            goto LABEL_126;
          }

          v64 = (v64 + 1);
          if (!--v41)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v41)
    {
      v42 = v41 - 1;
      if (v42)
      {
        v43 = 0;
        v44 = a3 + 48;
        v45 = a3 + 55;
        v46 = a3 + 87;
        if (a3 > 10)
        {
          v44 = 58;
        }

        else
        {
          v46 = 97;
          v45 = 65;
        }

        v47 = &v70 + 1;
        v15 = 1;
        while (1)
        {
          v48 = *v47;
          if (v48 < 0x30 || v48 >= v44)
          {
            if (v48 < 0x41 || v48 >= v45)
            {
              v18 = 0;
              if (v48 < 0x61 || v48 >= v46)
              {
                goto LABEL_127;
              }

              v49 = -87;
            }

            else
            {
              v49 = -55;
            }
          }

          else
          {
            v49 = -48;
          }

          v50 = v43 * a3;
          if (v50 != v50)
          {
            goto LABEL_126;
          }

          v51 = v48 + v49;
          v21 = __OFSUB__(v50, v51);
          v43 = v50 - v51;
          if (v21)
          {
            goto LABEL_126;
          }

          ++v47;
          if (!--v42)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v41)
  {
    v52 = v41 - 1;
    if (v52)
    {
      v43 = 0;
      v53 = a3 + 48;
      v54 = a3 + 55;
      v55 = a3 + 87;
      if (a3 > 10)
      {
        v53 = 58;
      }

      else
      {
        v55 = 97;
        v54 = 65;
      }

      v56 = &v70 + 1;
      v15 = 1;
      do
      {
        v57 = *v56;
        if (v57 < 0x30 || v57 >= v53)
        {
          if (v57 < 0x41 || v57 >= v54)
          {
            v18 = 0;
            if (v57 < 0x61 || v57 >= v55)
            {
              goto LABEL_127;
            }

            v58 = -87;
          }

          else
          {
            v58 = -55;
          }
        }

        else
        {
          v58 = -48;
        }

        v59 = v43 * a3;
        if (v59 != v59)
        {
          goto LABEL_126;
        }

        v60 = v57 + v58;
        v21 = __OFADD__(v59, v60);
        v43 = v59 + v60;
        if (v21)
        {
          goto LABEL_126;
        }

        ++v56;
        --v52;
      }

      while (v52);
LABEL_125:
      v15 = 0;
      v18 = v43;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

unsigned __int8 *sub_258EAF5B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_258F0A650();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_258EAFB44();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_258F0AB10();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_258EAFB44()
{
  v0 = sub_258F0A660();
  v4 = sub_258EAFBC4(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_258EAFBC4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_258F0A5A0();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_258F0A930();
  if (!v9)
  {
    v11 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_258EAEF54(v9, 0);
  v12 = sub_258EAFD1C(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_258F0A5A0();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_258F0AB10();
LABEL_4:

  return sub_258F0A5A0();
}

unint64_t sub_258EAFD1C(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_258EAFF3C(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_258F0A630();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_258F0AB10();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_258EAFF3C(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_258F0A610();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_258EAFF3C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_258F0A640();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x259C9DEE0](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

unint64_t sub_258EAFFB8(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = result;
    v5 = 0;
    MEMORY[0x259C9EF50](&v5, 8);
    v3 = v5 * v2;
    if (v3 < v1)
    {
      for (i = -v1 % v1; i > v3; v3 = v5 * v2)
      {
        v5 = 0;
        MEMORY[0x259C9EF50](&v5, 8);
      }
    }

    return HIDWORD(v3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL sub_258EB0044(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v3 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v3 >= 0x21 || ((0x100003E01uLL >> v3) & 1) == 0)
      {
LABEL_10:
        v5 = _swift_stdlib_strtof_clocale();
        return v5 && *v5 == 0;
      }

      return 0;
    }
  }

  sub_258F0AAD0();
  if (!v2)
  {
    return v7;
  }

  return v4;
}

id _s16MetricsFramework13SamplingUtilsC20getEnrollementStatus12siriLanguageSo022SSREnrollmentSelectionG0VSS_tFZ_0()
{
  v18[1] = *MEMORY[0x277D85DE8];
  v0 = objc_opt_self();
  v1 = sub_258F0A4E0();
  v18[0] = 0;
  v2 = [v0 getEnrollmentSelectionStatusWithLocale:v1 error:v18];

  v3 = v18[0];
  v4 = qword_27F988678;
  if (v18[0])
  {
    v5 = v18[0];
    if (v4 != -1)
    {
      swift_once();
    }

    v6 = sub_258F0A370();
    __swift_project_value_buffer(v6, qword_27F98A418);
    v7 = v5;
    v8 = sub_258F0A350();
    v9 = sub_258F0A820();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      *(v10 + 4) = v7;
      *v11 = v3;
      v12 = v7;
      _os_log_impl(&dword_258DD8000, v8, v9, "#SamplingUtils: getEnrollmentSelectionStatus failed with error: %@", v10, 0xCu);
      sub_258DE2184(v11, &qword_27F988C78, &qword_258F11A20);
      MEMORY[0x259C9EF40](v11, -1, -1);
      MEMORY[0x259C9EF40](v10, -1, -1);

      v8 = v12;
    }

    else
    {
    }
  }

  else
  {
    if (qword_27F988678 != -1)
    {
      swift_once();
    }

    v13 = sub_258F0A370();
    __swift_project_value_buffer(v13, qword_27F98A418);
    v8 = sub_258F0A350();
    v14 = sub_258F0A810();
    if (os_log_type_enabled(v8, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 134217984;
      *(v15 + 4) = v2;
      _os_log_impl(&dword_258DD8000, v8, v14, "#SamplingUtils: Current Enrollment Status: %lu", v15, 0xCu);
      MEMORY[0x259C9EF40](v15, -1, -1);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t sub_258EB03EC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_258DEE37C;

  return sub_258EABAC0(a1, v4, v5, v7, v6);
}

uint64_t sub_258EB04AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[19] = a2;
  v3[20] = a3;
  v3[18] = a1;
  return MEMORY[0x2822009F8](sub_258EB04D0, 0, 0);
}

uint64_t sub_258EB04D0()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInteger_];
  v0[21] = v3;
  v4 = objc_opt_self();
  v5 = v3;
  v6 = sub_258F0A4E0();
  v0[22] = v6;
  v0[2] = v0;
  v0[3] = sub_258EB0648;
  v7 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98A450, &qword_258F148E8);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_258EB5088;
  v0[13] = &block_descriptor_35_0;
  v0[14] = v7;
  [v4 updateStatus:v5 languageCode:v6 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_258EB0648()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 184) = v2;
  if (v2)
  {
    v3 = sub_258EB0880;
  }

  else
  {
    v3 = sub_258EB0758;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_258EB0758()
{
  v1 = *(v0 + 168);

  if (qword_27F988678 != -1)
  {
    swift_once();
  }

  v2 = sub_258F0A370();
  __swift_project_value_buffer(v2, qword_27F98A418);
  v3 = sub_258F0A350();
  v4 = sub_258F0A810();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 168);
  if (v5)
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_258DD8000, v3, v4, "#SamplingUtils: SSRRPISamplingXPCService.updateStatus completed", v7, 2u);
    MEMORY[0x259C9EF40](v7, -1, -1);
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_258EB0880()
{
  v1 = v0[22];
  v2 = v0[23];
  v3 = v0[21];
  swift_willThrow();

  if (qword_27F988678 != -1)
  {
    swift_once();
  }

  v4 = v0[23];
  v5 = sub_258F0A370();
  __swift_project_value_buffer(v5, qword_27F98A418);
  v6 = v4;
  v7 = sub_258F0A350();
  v8 = sub_258F0A820();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[23];
  v11 = v0[21];
  if (v9)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    v14 = v10;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 4) = v15;
    *v13 = v15;
    _os_log_impl(&dword_258DD8000, v7, v8, "#SamplingUtils: SSRRPISamplingXPCService.updateStatus failed with %@", v12, 0xCu);
    sub_258DE2184(v13, &qword_27F988C78, &qword_258F11A20);
    MEMORY[0x259C9EF40](v13, -1, -1);
    MEMORY[0x259C9EF40](v12, -1, -1);
  }

  else
  {
  }

  v16 = v0[1];

  return v16();
}

uint64_t sub_258EB0A4C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_258DEE37C;

  return sub_258EAC054(a1, v4, v5, v7, v6);
}

uint64_t _s16MetricsFramework13SamplingUtilsC16getEnrollementId12siriLanguageSSSgSS_tFZ_0()
{
  v22[1] = *MEMORY[0x277D85DE8];
  v0 = [objc_opt_self() sharedManager];
  if (!v0)
  {
    __break(1u);
  }

  v1 = v0;
  v2 = sub_258F0A4E0();
  v22[0] = 0;
  v3 = [v1 getEnrollmentIdWithLocale:v2 error:v22];

  v4 = v22[0];
  if (v3)
  {
    v5 = sub_258F0A4F0();
    v7 = v6;
    v8 = v4;

    if (qword_27F988678 != -1)
    {
      swift_once();
    }

    v9 = sub_258F0A370();
    __swift_project_value_buffer(v9, qword_27F98A418);

    v10 = sub_258F0A350();
    v11 = sub_258F0A810();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v22[0] = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_258DE3018(v5, v7, v22);
      _os_log_impl(&dword_258DD8000, v10, v11, "#SamplingUtils: Current Enrollment Id: %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v13);
      MEMORY[0x259C9EF40](v13, -1, -1);
      MEMORY[0x259C9EF40](v12, -1, -1);
    }
  }

  else
  {
    v14 = v22[0];
    v15 = sub_258F09890();

    swift_willThrow();
    if (qword_27F988678 != -1)
    {
      swift_once();
    }

    v16 = sub_258F0A370();
    __swift_project_value_buffer(v16, qword_27F98A418);
    v17 = sub_258F0A350();
    v18 = sub_258F0A820();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_258DD8000, v17, v18, "SSRSamplingManager.shared().getEnrollmentId failed", v19, 2u);
      MEMORY[0x259C9EF40](v19, -1, -1);
    }

    v5 = 0;
  }

  v20 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t _s16MetricsFramework13SamplingUtilsC35isEnrollmentDateWithinLastSixMonths12siriLanguageSbSS_tFZ_0()
{
  v0 = sub_258F09AF0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0, v3);
  v47 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_258F09B00();
  v46 = *(v5 - 8);
  v6 = *(v46 + 64);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988728, &unk_258F0B840);
  v11 = *(*(v10 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v10 - 8, v12);
  v49 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v40 - v16;
  v18 = sub_258F09A20();
  v19 = *(v18 - 8);
  v20 = v19[8];
  v22 = MEMORY[0x28223BE20](v18, v21);
  v24 = &v40 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v22, v25);
  v45 = &v40 - v27;
  MEMORY[0x28223BE20](v26, v28);
  v48 = &v40 - v29;
  type metadata accessor for SamplingUtils();
  static SamplingUtils.getEnrollementDate(siriLanguage:)(v17);
  v30 = v19[6];
  if (v30(v17, 1, v18) == 1)
  {
    v31 = v17;
  }

  else
  {
    v42 = v0;
    v43 = v5;
    v41 = v19[4];
    v41(v48, v17, v18);
    sub_258F09AE0();
    v32 = v47;
    (*(v1 + 104))(v47, *MEMORY[0x277CC9998], v0);
    sub_258F09A10();
    v33 = v49;
    sub_258F09AD0();
    v44 = v19[1];
    v44(v24, v18);
    (*(v1 + 8))(v32, v42);
    (*(v46 + 8))(v9, v43);
    if (v30(v33, 1, v18) != 1)
    {
      v35 = v45;
      v41(v45, v49, v18);
      sub_258EB4ABC(&qword_27F989870, MEMORY[0x277CC9578]);
      v36 = v48;
      v37 = sub_258F0A4A0();
      v38 = v44;
      v44(v35, v18);
      v38(v36, v18);
      v34 = v37 ^ 1;
      return v34 & 1;
    }

    v44(v48, v18);
    v31 = v49;
  }

  sub_258DE2184(v31, &qword_27F988728, &unk_258F0B840);
  v34 = 0;
  return v34 & 1;
}

uint64_t _s16MetricsFramework13SamplingUtilsC30getDonationIdsWithEnrollmentId010enrollmentJ0SaySSGSS_tFZ_0()
{
  v19[1] = *MEMORY[0x277D85DE8];
  v0 = [objc_opt_self() sharedManager];
  if (!v0)
  {
    __break(1u);
  }

  v1 = v0;
  v2 = sub_258F0A4E0();
  v19[0] = 0;
  v3 = [v1 getDonationIdsWithEnrollmentId:v2 error:v19];

  v4 = v19[0];
  if (v3)
  {
    v5 = sub_258F0A6B0();
    v6 = v4;

    if (qword_27F988678 != -1)
    {
      swift_once();
    }

    v7 = sub_258F0A370();
    __swift_project_value_buffer(v7, qword_27F98A418);

    v8 = sub_258F0A350();
    v9 = sub_258F0A810();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 134217984;
      *(v10 + 4) = *(v5 + 16);

      _os_log_impl(&dword_258DD8000, v8, v9, "#SamplingUtils: getDonationDataWithEnrollmentId: %ld", v10, 0xCu);
      MEMORY[0x259C9EF40](v10, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    v11 = v19[0];
    v12 = sub_258F09890();

    swift_willThrow();
    if (qword_27F988678 != -1)
    {
      swift_once();
    }

    v13 = sub_258F0A370();
    __swift_project_value_buffer(v13, qword_27F98A418);
    v14 = sub_258F0A350();
    v15 = sub_258F0A820();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_258DD8000, v14, v15, "SSRSamplingManager.shared().getDonationIds() failed", v16, 2u);
      MEMORY[0x259C9EF40](v16, -1, -1);
    }

    v5 = MEMORY[0x277D84F90];
  }

  v17 = *MEMORY[0x277D85DE8];
  return v5;
}

unint64_t _s16MetricsFramework13SamplingUtilsC36getDonationDataArrayWithEnrollmentId010enrollmentK0SaySo020SSRDonationUtteranceG0CGSS_tFZ_0()
{
  v20[1] = *MEMORY[0x277D85DE8];
  v0 = [objc_opt_self() sharedManager];
  if (!v0)
  {
    __break(1u);
  }

  v1 = v0;
  v2 = sub_258F0A4E0();
  v20[0] = 0;
  v3 = [v1 getDonationDataWithEnrollmentId:v2 error:v20];

  v4 = v20[0];
  if (v3)
  {
    sub_258EB4D00();
    v5 = sub_258F0A6B0();
    v6 = v4;

    if (qword_27F988678 != -1)
    {
      swift_once();
    }

    v7 = sub_258F0A370();
    __swift_project_value_buffer(v7, qword_27F98A418);

    v8 = sub_258F0A350();
    v9 = sub_258F0A810();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 134217984;
      if (v5 >> 62)
      {
        v11 = sub_258F0AA20();
      }

      else
      {
        v11 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v10 + 4) = v11;

      _os_log_impl(&dword_258DD8000, v8, v9, "#SamplingUtils: getDonationDataWithEnrollmentId: %ld", v10, 0xCu);
      MEMORY[0x259C9EF40](v10, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    v12 = v20[0];
    v13 = sub_258F09890();

    swift_willThrow();
    if (qword_27F988678 != -1)
    {
      swift_once();
    }

    v14 = sub_258F0A370();
    __swift_project_value_buffer(v14, qword_27F98A418);
    v15 = sub_258F0A350();
    v16 = sub_258F0A820();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_258DD8000, v15, v16, "SSRSamplingManager.shared().getDonationData() failed", v17, 2u);
      MEMORY[0x259C9EF40](v17, -1, -1);
    }

    v5 = MEMORY[0x277D84F90];
  }

  v18 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t _s16MetricsFramework13SamplingUtilsC24uploadAudioWithRequestId07requestI005audioI04dateSbSS_SS10Foundation4DateVtFZ_0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v49 = a5;
  v50 = a2;
  v52 = a3;
  v53 = a4;
  v57 = a1;
  v5 = sub_258F09A20();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v9 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98A430, &qword_258F14810);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v14 = &v45 - v13;
  v46 = &v45 - v13;
  v15 = sub_258F0A3D0();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v19 = MEMORY[0x28223BE20](v15, v18);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v22);
  v48 = &v45 - v23;
  v47 = dispatch_semaphore_create(0);
  sub_258F0A3C0();
  sub_258F0A3E0();
  v24 = *(v16 + 8);
  v54 = v15;
  v51 = v16 + 8;
  v56 = v24;
  v24(v21, v15);
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  v55 = v25 + 16;
  v26 = sub_258F0A790();
  (*(*(v26 - 8) + 56))(v14, 1, 1, v26);
  v27 = v5;
  (*(v6 + 16))(v9, v49, v5);
  v28 = (*(v6 + 80) + 64) & ~*(v6 + 80);
  v29 = (v7 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  *(v30 + 2) = 0;
  *(v30 + 3) = 0;
  v31 = v50;
  *(v30 + 4) = v57;
  *(v30 + 5) = v31;
  v32 = v53;
  *(v30 + 6) = v52;
  *(v30 + 7) = v32;
  (*(v6 + 32))(&v30[v28], v9, v27);
  *&v30[v29] = v25;
  v33 = v47;
  *&v30[(v29 + 15) & 0xFFFFFFFFFFFFFFF8] = v47;

  v34 = v25;

  v35 = v33;
  v36 = v48;
  sub_258EABC38(0, 0, v46, &unk_258F148D8, v30);

  sub_258F0A890();
  if (sub_258F0A3B0())
  {
    v37 = v54;
    if (qword_27F988678 != -1)
    {
      swift_once();
    }

    v38 = sub_258F0A370();
    __swift_project_value_buffer(v38, qword_27F98A418);

    v39 = sub_258F0A350();
    v40 = sub_258F0A820();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v58 = v42;
      *v41 = 136315138;
      *(v41 + 4) = sub_258DE3018(v57, v31, &v58);
      _os_log_impl(&dword_258DD8000, v39, v40, "#SamplingUtils: SSRRPISampledAudioUploader.uploadAudioFile for requestId: %s timed out.", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v42);
      MEMORY[0x259C9EF40](v42, -1, -1);
      MEMORY[0x259C9EF40](v41, -1, -1);
    }

    else
    {
    }

    v56(v36, v37);
  }

  else
  {
    v56(v36, v54);
  }

  swift_beginAccess();
  v43 = *(v34 + 16);

  return v43;
}

void _s16MetricsFramework13SamplingUtilsC31cleanUpAudioWithOnAndBeforeDate4datey10Foundation0L0V_tFZ_0(uint64_t a1)
{
  aBlock[6] = *MEMORY[0x277D85DE8];
  v2 = sub_258F09A20();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v6 = MEMORY[0x28223BE20](v2, v5);
  v7 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v11 = &v48 - v10;
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v48 - v13;
  v15 = objc_opt_self();
  v16 = sub_258F099A0();
  aBlock[0] = 0;
  [v15 cleanUpAudioOnAndBeforeDate:v16 error:aBlock];

  v17 = aBlock[0];
  if (aBlock[0])
  {
    v18 = qword_27F988678;
    v19 = aBlock[0];
    if (v18 != -1)
    {
      swift_once();
    }

    v20 = sub_258F0A370();
    __swift_project_value_buffer(v20, qword_27F98A418);
    (*(v3 + 16))(v14, a1, v2);
    v21 = v19;
    v22 = sub_258F0A350();
    v23 = sub_258F0A820();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = v2;
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      aBlock[0] = v50;
      *v24 = 136315394;
      sub_258EB4ABC(&qword_27F988750, MEMORY[0x277CC9578]);
      v26 = sub_258F0AD60();
      v28 = v27;
      (*(v3 + 8))(v14, v25);
      v29 = sub_258DE3018(v26, v28, aBlock);

      *(v24 + 4) = v29;
      *(v24 + 12) = 2112;
      *(v24 + 14) = v21;
      v30 = v49;
      *v49 = v17;
      v31 = v21;
      _os_log_impl(&dword_258DD8000, v22, v23, "#SamplingUtils: SSRRPISampledAudioUploader.cleanUpAudioOnAnd on date: %s failed with error: %@", v24, 0x16u);
      sub_258DE2184(v30, &qword_27F988C78, &qword_258F11A20);
      MEMORY[0x259C9EF40](v30, -1, -1);
      v32 = v50;
      __swift_destroy_boxed_opaque_existential_1Tm(v50);
      MEMORY[0x259C9EF40](v32, -1, -1);
      MEMORY[0x259C9EF40](v24, -1, -1);
    }

    else
    {

      (*(v3 + 8))(v14, v2);
    }
  }

  else
  {
    v49 = objc_opt_self();
    v33 = sub_258F099A0();
    v50 = *(v3 + 16);
    (v50)(v11, a1, v2);
    v34 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v35 = swift_allocObject();
    (*(v3 + 32))(&v35[v34], v11, v2);
    aBlock[4] = sub_258EB4B04;
    aBlock[5] = v35;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_258EAD9F0;
    aBlock[3] = &block_descriptor_5;
    v36 = _Block_copy(aBlock);

    [v49 removeMappingOnAndBefore:v33 completion:v36];
    _Block_release(v36);

    if (qword_27F988678 != -1)
    {
      swift_once();
    }

    v37 = sub_258F0A370();
    __swift_project_value_buffer(v37, qword_27F98A418);
    (v50)(v7, a1, v2);
    v38 = sub_258F0A350();
    v39 = sub_258F0A820();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      aBlock[0] = v42;
      *v40 = 136315394;
      sub_258EB4ABC(&qword_27F988750, MEMORY[0x277CC9578]);
      v43 = sub_258F0AD60();
      v45 = v44;
      (*(v3 + 8))(v7, v2);
      v46 = sub_258DE3018(v43, v45, aBlock);

      *(v40 + 4) = v46;
      *(v40 + 12) = 2112;
      *(v40 + 14) = 0;
      *v41 = 0;
      _os_log_impl(&dword_258DD8000, v38, v39, "#SamplingUtils: SSRRPISampledAudioUploader.cleanUpAudioOnAnd on date: %s failed with error: %@", v40, 0x16u);
      sub_258DE2184(v41, &qword_27F988C78, &qword_258F11A20);
      MEMORY[0x259C9EF40](v41, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v42);
      MEMORY[0x259C9EF40](v42, -1, -1);
      MEMORY[0x259C9EF40](v40, -1, -1);
    }

    else
    {

      (*(v3 + 8))(v7, v2);
    }
  }

  v47 = *MEMORY[0x277D85DE8];
}

void _s16MetricsFramework13SamplingUtilsC03getC30CycleDaysLimitForUserSelection4fromSiSo14NSUserDefaultsC_tFZ_0(void *a1)
{
  v2 = sub_258F0A4E0();
  v3 = [a1 stringForKey_];

  if (v3)
  {
    v4 = sub_258F0A4F0();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0xE000000000000000;
  }

  v7 = HIBYTE(v6) & 0xF;
  v8 = v4 & 0xFFFFFFFFFFFFLL;
  if ((v6 & 0x2000000000000000) != 0)
  {
    v9 = HIBYTE(v6) & 0xF;
  }

  else
  {
    v9 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {

    goto LABEL_67;
  }

  if ((v6 & 0x1000000000000000) == 0)
  {
    if ((v6 & 0x2000000000000000) != 0)
    {
      v36[0] = v4;
      v36[1] = v6 & 0xFFFFFFFFFFFFFFLL;
      if (v4 == 43)
      {
        if (v7)
        {
          if (--v7)
          {
            v12 = 0;
            v22 = v36 + 1;
            while (1)
            {
              v23 = *v22 - 48;
              if (v23 > 9)
              {
                break;
              }

              v24 = 10 * v12;
              if ((v12 * 10) >> 64 != (10 * v12) >> 63)
              {
                break;
              }

              v12 = v24 + v23;
              if (__OFADD__(v24, v23))
              {
                break;
              }

              ++v22;
              if (!--v7)
              {
                goto LABEL_65;
              }
            }
          }

          goto LABEL_64;
        }

LABEL_79:
        __break(1u);
        return;
      }

      if (v4 != 45)
      {
        if (v7)
        {
          v12 = 0;
          v27 = v36;
          while (1)
          {
            v28 = *v27 - 48;
            if (v28 > 9)
            {
              break;
            }

            v29 = 10 * v12;
            if ((v12 * 10) >> 64 != (10 * v12) >> 63)
            {
              break;
            }

            v12 = v29 + v28;
            if (__OFADD__(v29, v28))
            {
              break;
            }

            ++v27;
            if (!--v7)
            {
              goto LABEL_65;
            }
          }
        }

        goto LABEL_64;
      }

      if (v7)
      {
        if (--v7)
        {
          v12 = 0;
          v16 = v36 + 1;
          while (1)
          {
            v17 = *v16 - 48;
            if (v17 > 9)
            {
              break;
            }

            v18 = 10 * v12;
            if ((v12 * 10) >> 64 != (10 * v12) >> 63)
            {
              break;
            }

            v12 = v18 - v17;
            if (__OFSUB__(v18, v17))
            {
              break;
            }

            ++v16;
            if (!--v7)
            {
              goto LABEL_65;
            }
          }
        }

        goto LABEL_64;
      }
    }

    else
    {
      if ((v4 & 0x1000000000000000) != 0)
      {
        v10 = ((v6 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v10 = sub_258F0AB10();
      }

      v11 = *v10;
      if (v11 == 43)
      {
        if (v8 >= 1)
        {
          v7 = v8 - 1;
          if (v8 != 1)
          {
            v12 = 0;
            if (v10)
            {
              v19 = v10 + 1;
              while (1)
              {
                v20 = *v19 - 48;
                if (v20 > 9)
                {
                  goto LABEL_64;
                }

                v21 = 10 * v12;
                if ((v12 * 10) >> 64 != (10 * v12) >> 63)
                {
                  goto LABEL_64;
                }

                v12 = v21 + v20;
                if (__OFADD__(v21, v20))
                {
                  goto LABEL_64;
                }

                ++v19;
                if (!--v7)
                {
                  goto LABEL_65;
                }
              }
            }

            goto LABEL_56;
          }

          goto LABEL_64;
        }

        goto LABEL_78;
      }

      if (v11 != 45)
      {
        if (v8)
        {
          v12 = 0;
          if (v10)
          {
            while (1)
            {
              v25 = *v10 - 48;
              if (v25 > 9)
              {
                goto LABEL_64;
              }

              v26 = 10 * v12;
              if ((v12 * 10) >> 64 != (10 * v12) >> 63)
              {
                goto LABEL_64;
              }

              v12 = v26 + v25;
              if (__OFADD__(v26, v25))
              {
                goto LABEL_64;
              }

              ++v10;
              if (!--v8)
              {
                goto LABEL_56;
              }
            }
          }

          goto LABEL_56;
        }

LABEL_64:
        v12 = 0;
        LOBYTE(v7) = 1;
        goto LABEL_65;
      }

      if (v8 >= 1)
      {
        v7 = v8 - 1;
        if (v8 != 1)
        {
          v12 = 0;
          if (v10)
          {
            v13 = v10 + 1;
            while (1)
            {
              v14 = *v13 - 48;
              if (v14 > 9)
              {
                goto LABEL_64;
              }

              v15 = 10 * v12;
              if ((v12 * 10) >> 64 != (10 * v12) >> 63)
              {
                goto LABEL_64;
              }

              v12 = v15 - v14;
              if (__OFSUB__(v15, v14))
              {
                goto LABEL_64;
              }

              ++v13;
              if (!--v7)
              {
                goto LABEL_65;
              }
            }
          }

LABEL_56:
          LOBYTE(v7) = 0;
LABEL_65:
          v37 = v7;
          v30 = v7;
          goto LABEL_66;
        }

        goto LABEL_64;
      }

      __break(1u);
    }

    __break(1u);
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  v37 = 0;
  v12 = sub_258EAF5B8(v4, v6, 10);
  v30 = v35;
LABEL_66:

  if (v30)
  {
LABEL_67:
    v12 = 180;
  }

  if (qword_27F988678 != -1)
  {
    swift_once();
  }

  v31 = sub_258F0A370();
  __swift_project_value_buffer(v31, qword_27F98A418);
  v32 = sub_258F0A350();
  v33 = sub_258F0A810();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 134217984;
    *(v34 + 4) = v12;
    _os_log_impl(&dword_258DD8000, v32, v33, "#SamplingUtils: getSamplingCycleDaysLimitForUserSelection is %ld", v34, 0xCu);
    MEMORY[0x259C9EF40](v34, -1, -1);
  }
}

uint64_t _s16MetricsFramework13SamplingUtilsC27isDateWithinCollectionCycle4date010collectingF08defaultsSb10Foundation0F0V_AJSo14NSUserDefaultsCtFZ_0(uint64_t a1, uint64_t a2, void *a3)
{
  v31[1] = a2;
  v33 = a1;
  v4 = sub_258F09AF0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_258F09B00();
  v10 = *(v32 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v32, v12);
  v14 = v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988728, &unk_258F0B840);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8, v17);
  v19 = v31 - v18;
  v20 = sub_258F09A20();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20, v23);
  v31[0] = v31 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s16MetricsFramework13SamplingUtilsC03getC30CycleDaysLimitForUserSelection4fromSiSo14NSUserDefaultsC_tFZ_0(a3);
  v26 = v25;
  sub_258F09AE0();
  result = (*(v5 + 104))(v9, *MEMORY[0x277CC9968], v4);
  if (v26 == 0x8000000000000000)
  {
    __break(1u);
  }

  else
  {
    sub_258F09AD0();
    (*(v5 + 8))(v9, v4);
    (*(v10 + 8))(v14, v32);
    if ((*(v21 + 48))(v19, 1, v20) == 1)
    {
      sub_258DE2184(v19, &qword_27F988728, &unk_258F0B840);
      v28 = 0;
    }

    else
    {
      v29 = v31[0];
      (*(v21 + 32))(v31[0], v19, v20);
      sub_258EB4ABC(&qword_27F989870, MEMORY[0x277CC9578]);
      v30 = sub_258F0A4A0();
      (*(v21 + 8))(v29, v20);
      v28 = v30 ^ 1;
    }

    return v28 & 1;
  }

  return result;
}

uint64_t _s16MetricsFramework13SamplingUtilsC40isDeviceSelectionDateWithinCyclingPeriod06deviceG3Key8defaultsSbSS_So14NSUserDefaultsCtFZ_0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988728, &unk_258F0B840);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v22 - v7;
  v9 = sub_258F09A20();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v13 = MEMORY[0x28223BE20](v9, v12);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v22 - v17;
  type metadata accessor for SamplingUtils();
  static SamplingUtils.getDeviceSelectionDate(forKey:defaults:)(a3, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_258DE2184(v8, &qword_27F988728, &unk_258F0B840);
    v19 = 0;
  }

  else
  {
    (*(v10 + 32))(v18, v8, v9);
    sub_258F09A10();
    v19 = _s16MetricsFramework13SamplingUtilsC27isDateWithinCollectionCycle4date010collectingF08defaultsSb10Foundation0F0V_AJSo14NSUserDefaultsCtFZ_0(v15, v18, a3);
    v20 = *(v10 + 8);
    v20(v15, v9);
    v20(v18, v9);
  }

  return v19 & 1;
}

void _s16MetricsFramework13SamplingUtilsC03getC16CountPerDayLimit4fromSiSo14NSUserDefaultsC_tFZ_0(void *a1)
{
  v2 = sub_258F0A4E0();
  v3 = [a1 stringForKey_];

  if (v3)
  {
    v4 = sub_258F0A4F0();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0xE000000000000000;
  }

  v7 = HIBYTE(v6) & 0xF;
  v8 = v4 & 0xFFFFFFFFFFFFLL;
  if ((v6 & 0x2000000000000000) != 0)
  {
    v9 = HIBYTE(v6) & 0xF;
  }

  else
  {
    v9 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {

    goto LABEL_67;
  }

  if ((v6 & 0x1000000000000000) == 0)
  {
    if ((v6 & 0x2000000000000000) != 0)
    {
      v36[0] = v4;
      v36[1] = v6 & 0xFFFFFFFFFFFFFFLL;
      if (v4 == 43)
      {
        if (v7)
        {
          if (--v7)
          {
            v12 = 0;
            v22 = v36 + 1;
            while (1)
            {
              v23 = *v22 - 48;
              if (v23 > 9)
              {
                break;
              }

              v24 = 10 * v12;
              if ((v12 * 10) >> 64 != (10 * v12) >> 63)
              {
                break;
              }

              v12 = v24 + v23;
              if (__OFADD__(v24, v23))
              {
                break;
              }

              ++v22;
              if (!--v7)
              {
                goto LABEL_65;
              }
            }
          }

          goto LABEL_64;
        }

LABEL_79:
        __break(1u);
        return;
      }

      if (v4 != 45)
      {
        if (v7)
        {
          v12 = 0;
          v27 = v36;
          while (1)
          {
            v28 = *v27 - 48;
            if (v28 > 9)
            {
              break;
            }

            v29 = 10 * v12;
            if ((v12 * 10) >> 64 != (10 * v12) >> 63)
            {
              break;
            }

            v12 = v29 + v28;
            if (__OFADD__(v29, v28))
            {
              break;
            }

            ++v27;
            if (!--v7)
            {
              goto LABEL_65;
            }
          }
        }

        goto LABEL_64;
      }

      if (v7)
      {
        if (--v7)
        {
          v12 = 0;
          v16 = v36 + 1;
          while (1)
          {
            v17 = *v16 - 48;
            if (v17 > 9)
            {
              break;
            }

            v18 = 10 * v12;
            if ((v12 * 10) >> 64 != (10 * v12) >> 63)
            {
              break;
            }

            v12 = v18 - v17;
            if (__OFSUB__(v18, v17))
            {
              break;
            }

            ++v16;
            if (!--v7)
            {
              goto LABEL_65;
            }
          }
        }

        goto LABEL_64;
      }
    }

    else
    {
      if ((v4 & 0x1000000000000000) != 0)
      {
        v10 = ((v6 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v10 = sub_258F0AB10();
      }

      v11 = *v10;
      if (v11 == 43)
      {
        if (v8 >= 1)
        {
          v7 = v8 - 1;
          if (v8 != 1)
          {
            v12 = 0;
            if (v10)
            {
              v19 = v10 + 1;
              while (1)
              {
                v20 = *v19 - 48;
                if (v20 > 9)
                {
                  goto LABEL_64;
                }

                v21 = 10 * v12;
                if ((v12 * 10) >> 64 != (10 * v12) >> 63)
                {
                  goto LABEL_64;
                }

                v12 = v21 + v20;
                if (__OFADD__(v21, v20))
                {
                  goto LABEL_64;
                }

                ++v19;
                if (!--v7)
                {
                  goto LABEL_65;
                }
              }
            }

            goto LABEL_56;
          }

          goto LABEL_64;
        }

        goto LABEL_78;
      }

      if (v11 != 45)
      {
        if (v8)
        {
          v12 = 0;
          if (v10)
          {
            while (1)
            {
              v25 = *v10 - 48;
              if (v25 > 9)
              {
                goto LABEL_64;
              }

              v26 = 10 * v12;
              if ((v12 * 10) >> 64 != (10 * v12) >> 63)
              {
                goto LABEL_64;
              }

              v12 = v26 + v25;
              if (__OFADD__(v26, v25))
              {
                goto LABEL_64;
              }

              ++v10;
              if (!--v8)
              {
                goto LABEL_56;
              }
            }
          }

          goto LABEL_56;
        }

LABEL_64:
        v12 = 0;
        LOBYTE(v7) = 1;
        goto LABEL_65;
      }

      if (v8 >= 1)
      {
        v7 = v8 - 1;
        if (v8 != 1)
        {
          v12 = 0;
          if (v10)
          {
            v13 = v10 + 1;
            while (1)
            {
              v14 = *v13 - 48;
              if (v14 > 9)
              {
                goto LABEL_64;
              }

              v15 = 10 * v12;
              if ((v12 * 10) >> 64 != (10 * v12) >> 63)
              {
                goto LABEL_64;
              }

              v12 = v15 - v14;
              if (__OFSUB__(v15, v14))
              {
                goto LABEL_64;
              }

              ++v13;
              if (!--v7)
              {
                goto LABEL_65;
              }
            }
          }

LABEL_56:
          LOBYTE(v7) = 0;
LABEL_65:
          v37 = v7;
          v30 = v7;
          goto LABEL_66;
        }

        goto LABEL_64;
      }

      __break(1u);
    }

    __break(1u);
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  v37 = 0;
  v12 = sub_258EAF5B8(v4, v6, 10);
  v30 = v35;
LABEL_66:

  if (v30)
  {
LABEL_67:
    v12 = 4;
  }

  if (qword_27F988678 != -1)
  {
    swift_once();
  }

  v31 = sub_258F0A370();
  __swift_project_value_buffer(v31, qword_27F98A418);
  v32 = sub_258F0A350();
  v33 = sub_258F0A810();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 134217984;
    *(v34 + 4) = v12;
    _os_log_impl(&dword_258DD8000, v32, v33, "#SamplingUtils: getSamplingCountPerDayLimit is %ld ", v34, 0xCu);
    MEMORY[0x259C9EF40](v34, -1, -1);
  }
}

void _s16MetricsFramework13SamplingUtilsC21getManifestTotalLimit4fromSiSo14NSUserDefaultsC_tFZ_0(void *a1)
{
  v2 = sub_258F0A4E0();
  v3 = [a1 stringForKey_];

  if (v3)
  {
    v4 = sub_258F0A4F0();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0xE000000000000000;
  }

  v7 = HIBYTE(v6) & 0xF;
  v8 = v4 & 0xFFFFFFFFFFFFLL;
  if ((v6 & 0x2000000000000000) != 0)
  {
    v9 = HIBYTE(v6) & 0xF;
  }

  else
  {
    v9 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {

    goto LABEL_67;
  }

  if ((v6 & 0x1000000000000000) == 0)
  {
    if ((v6 & 0x2000000000000000) != 0)
    {
      v36[0] = v4;
      v36[1] = v6 & 0xFFFFFFFFFFFFFFLL;
      if (v4 == 43)
      {
        if (v7)
        {
          if (--v7)
          {
            v12 = 0;
            v22 = v36 + 1;
            while (1)
            {
              v23 = *v22 - 48;
              if (v23 > 9)
              {
                break;
              }

              v24 = 10 * v12;
              if ((v12 * 10) >> 64 != (10 * v12) >> 63)
              {
                break;
              }

              v12 = v24 + v23;
              if (__OFADD__(v24, v23))
              {
                break;
              }

              ++v22;
              if (!--v7)
              {
                goto LABEL_65;
              }
            }
          }

          goto LABEL_64;
        }

LABEL_79:
        __break(1u);
        return;
      }

      if (v4 != 45)
      {
        if (v7)
        {
          v12 = 0;
          v27 = v36;
          while (1)
          {
            v28 = *v27 - 48;
            if (v28 > 9)
            {
              break;
            }

            v29 = 10 * v12;
            if ((v12 * 10) >> 64 != (10 * v12) >> 63)
            {
              break;
            }

            v12 = v29 + v28;
            if (__OFADD__(v29, v28))
            {
              break;
            }

            ++v27;
            if (!--v7)
            {
              goto LABEL_65;
            }
          }
        }

        goto LABEL_64;
      }

      if (v7)
      {
        if (--v7)
        {
          v12 = 0;
          v16 = v36 + 1;
          while (1)
          {
            v17 = *v16 - 48;
            if (v17 > 9)
            {
              break;
            }

            v18 = 10 * v12;
            if ((v12 * 10) >> 64 != (10 * v12) >> 63)
            {
              break;
            }

            v12 = v18 - v17;
            if (__OFSUB__(v18, v17))
            {
              break;
            }

            ++v16;
            if (!--v7)
            {
              goto LABEL_65;
            }
          }
        }

        goto LABEL_64;
      }
    }

    else
    {
      if ((v4 & 0x1000000000000000) != 0)
      {
        v10 = ((v6 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v10 = sub_258F0AB10();
      }

      v11 = *v10;
      if (v11 == 43)
      {
        if (v8 >= 1)
        {
          v7 = v8 - 1;
          if (v8 != 1)
          {
            v12 = 0;
            if (v10)
            {
              v19 = v10 + 1;
              while (1)
              {
                v20 = *v19 - 48;
                if (v20 > 9)
                {
                  goto LABEL_64;
                }

                v21 = 10 * v12;
                if ((v12 * 10) >> 64 != (10 * v12) >> 63)
                {
                  goto LABEL_64;
                }

                v12 = v21 + v20;
                if (__OFADD__(v21, v20))
                {
                  goto LABEL_64;
                }

                ++v19;
                if (!--v7)
                {
                  goto LABEL_65;
                }
              }
            }

            goto LABEL_56;
          }

          goto LABEL_64;
        }

        goto LABEL_78;
      }

      if (v11 != 45)
      {
        if (v8)
        {
          v12 = 0;
          if (v10)
          {
            while (1)
            {
              v25 = *v10 - 48;
              if (v25 > 9)
              {
                goto LABEL_64;
              }

              v26 = 10 * v12;
              if ((v12 * 10) >> 64 != (10 * v12) >> 63)
              {
                goto LABEL_64;
              }

              v12 = v26 + v25;
              if (__OFADD__(v26, v25))
              {
                goto LABEL_64;
              }

              ++v10;
              if (!--v8)
              {
                goto LABEL_56;
              }
            }
          }

          goto LABEL_56;
        }

LABEL_64:
        v12 = 0;
        LOBYTE(v7) = 1;
        goto LABEL_65;
      }

      if (v8 >= 1)
      {
        v7 = v8 - 1;
        if (v8 != 1)
        {
          v12 = 0;
          if (v10)
          {
            v13 = v10 + 1;
            while (1)
            {
              v14 = *v13 - 48;
              if (v14 > 9)
              {
                goto LABEL_64;
              }

              v15 = 10 * v12;
              if ((v12 * 10) >> 64 != (10 * v12) >> 63)
              {
                goto LABEL_64;
              }

              v12 = v15 - v14;
              if (__OFSUB__(v15, v14))
              {
                goto LABEL_64;
              }

              ++v13;
              if (!--v7)
              {
                goto LABEL_65;
              }
            }
          }

LABEL_56:
          LOBYTE(v7) = 0;
LABEL_65:
          v37 = v7;
          v30 = v7;
          goto LABEL_66;
        }

        goto LABEL_64;
      }

      __break(1u);
    }

    __break(1u);
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  v37 = 0;
  v12 = sub_258EAF5B8(v4, v6, 10);
  v30 = v35;
LABEL_66:

  if (v30)
  {
LABEL_67:
    v12 = 150;
  }

  if (qword_27F988678 != -1)
  {
    swift_once();
  }

  v31 = sub_258F0A370();
  __swift_project_value_buffer(v31, qword_27F98A418);
  v32 = sub_258F0A350();
  v33 = sub_258F0A810();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 134217984;
    *(v34 + 4) = v12;
    _os_log_impl(&dword_258DD8000, v32, v33, "#SamplingUtils: getManifestTotalLimit is %ld ", v34, 0xCu);
    MEMORY[0x259C9EF40](v34, -1, -1);
  }
}

float _s16MetricsFramework13SamplingUtilsC22getUserSelectionChance4fromSfSo14NSUserDefaultsC_tFZ_0(void *a1)
{
  v2 = sub_258F0A4E0();
  v3 = [a1 stringForKey_];

  if (v3)
  {
    v4 = sub_258F0A4F0();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0xE000000000000000;
  }

  v7 = sub_258EB0044(v4, v6);

  if (v7)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = 0.12;
  }

  if (qword_27F988678 != -1)
  {
    swift_once();
  }

  v9 = sub_258F0A370();
  __swift_project_value_buffer(v9, qword_27F98A418);
  v10 = sub_258F0A350();
  v11 = sub_258F0A810();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 134217984;
    *(v12 + 4) = v8;
    _os_log_impl(&dword_258DD8000, v10, v11, "#SamplingUtils: getUserSelectionChance is %f ", v12, 0xCu);
    MEMORY[0x259C9EF40](v12, -1, -1);
  }

  return v8;
}

void _s16MetricsFramework13SamplingUtilsC28getManifestIntermediateLimit4fromSiSo14NSUserDefaultsC_tFZ_0(void *a1)
{
  v2 = sub_258F0A4E0();
  v3 = [a1 stringForKey_];

  if (v3)
  {
    v4 = sub_258F0A4F0();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0xE000000000000000;
  }

  v7 = HIBYTE(v6) & 0xF;
  v8 = v4 & 0xFFFFFFFFFFFFLL;
  if ((v6 & 0x2000000000000000) != 0)
  {
    v9 = HIBYTE(v6) & 0xF;
  }

  else
  {
    v9 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {

    goto LABEL_67;
  }

  if ((v6 & 0x1000000000000000) == 0)
  {
    if ((v6 & 0x2000000000000000) != 0)
    {
      v36[0] = v4;
      v36[1] = v6 & 0xFFFFFFFFFFFFFFLL;
      if (v4 == 43)
      {
        if (v7)
        {
          if (--v7)
          {
            v12 = 0;
            v22 = v36 + 1;
            while (1)
            {
              v23 = *v22 - 48;
              if (v23 > 9)
              {
                break;
              }

              v24 = 10 * v12;
              if ((v12 * 10) >> 64 != (10 * v12) >> 63)
              {
                break;
              }

              v12 = v24 + v23;
              if (__OFADD__(v24, v23))
              {
                break;
              }

              ++v22;
              if (!--v7)
              {
                goto LABEL_65;
              }
            }
          }

          goto LABEL_64;
        }

LABEL_79:
        __break(1u);
        return;
      }

      if (v4 != 45)
      {
        if (v7)
        {
          v12 = 0;
          v27 = v36;
          while (1)
          {
            v28 = *v27 - 48;
            if (v28 > 9)
            {
              break;
            }

            v29 = 10 * v12;
            if ((v12 * 10) >> 64 != (10 * v12) >> 63)
            {
              break;
            }

            v12 = v29 + v28;
            if (__OFADD__(v29, v28))
            {
              break;
            }

            ++v27;
            if (!--v7)
            {
              goto LABEL_65;
            }
          }
        }

        goto LABEL_64;
      }

      if (v7)
      {
        if (--v7)
        {
          v12 = 0;
          v16 = v36 + 1;
          while (1)
          {
            v17 = *v16 - 48;
            if (v17 > 9)
            {
              break;
            }

            v18 = 10 * v12;
            if ((v12 * 10) >> 64 != (10 * v12) >> 63)
            {
              break;
            }

            v12 = v18 - v17;
            if (__OFSUB__(v18, v17))
            {
              break;
            }

            ++v16;
            if (!--v7)
            {
              goto LABEL_65;
            }
          }
        }

        goto LABEL_64;
      }
    }

    else
    {
      if ((v4 & 0x1000000000000000) != 0)
      {
        v10 = ((v6 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v10 = sub_258F0AB10();
      }

      v11 = *v10;
      if (v11 == 43)
      {
        if (v8 >= 1)
        {
          v7 = v8 - 1;
          if (v8 != 1)
          {
            v12 = 0;
            if (v10)
            {
              v19 = v10 + 1;
              while (1)
              {
                v20 = *v19 - 48;
                if (v20 > 9)
                {
                  goto LABEL_64;
                }

                v21 = 10 * v12;
                if ((v12 * 10) >> 64 != (10 * v12) >> 63)
                {
                  goto LABEL_64;
                }

                v12 = v21 + v20;
                if (__OFADD__(v21, v20))
                {
                  goto LABEL_64;
                }

                ++v19;
                if (!--v7)
                {
                  goto LABEL_65;
                }
              }
            }

            goto LABEL_56;
          }

          goto LABEL_64;
        }

        goto LABEL_78;
      }

      if (v11 != 45)
      {
        if (v8)
        {
          v12 = 0;
          if (v10)
          {
            while (1)
            {
              v25 = *v10 - 48;
              if (v25 > 9)
              {
                goto LABEL_64;
              }

              v26 = 10 * v12;
              if ((v12 * 10) >> 64 != (10 * v12) >> 63)
              {
                goto LABEL_64;
              }

              v12 = v26 + v25;
              if (__OFADD__(v26, v25))
              {
                goto LABEL_64;
              }

              ++v10;
              if (!--v8)
              {
                goto LABEL_56;
              }
            }
          }

          goto LABEL_56;
        }

LABEL_64:
        v12 = 0;
        LOBYTE(v7) = 1;
        goto LABEL_65;
      }

      if (v8 >= 1)
      {
        v7 = v8 - 1;
        if (v8 != 1)
        {
          v12 = 0;
          if (v10)
          {
            v13 = v10 + 1;
            while (1)
            {
              v14 = *v13 - 48;
              if (v14 > 9)
              {
                goto LABEL_64;
              }

              v15 = 10 * v12;
              if ((v12 * 10) >> 64 != (10 * v12) >> 63)
              {
                goto LABEL_64;
              }

              v12 = v15 - v14;
              if (__OFSUB__(v15, v14))
              {
                goto LABEL_64;
              }

              ++v13;
              if (!--v7)
              {
                goto LABEL_65;
              }
            }
          }

LABEL_56:
          LOBYTE(v7) = 0;
LABEL_65:
          v37 = v7;
          v30 = v7;
          goto LABEL_66;
        }

        goto LABEL_64;
      }

      __break(1u);
    }

    __break(1u);
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  v37 = 0;
  v12 = sub_258EAF5B8(v4, v6, 10);
  v30 = v35;
LABEL_66:

  if (v30)
  {
LABEL_67:
    v12 = 25;
  }

  if (qword_27F988678 != -1)
  {
    swift_once();
  }

  v31 = sub_258F0A370();
  __swift_project_value_buffer(v31, qword_27F98A418);
  v32 = sub_258F0A350();
  v33 = sub_258F0A810();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 134217984;
    *(v34 + 4) = v12;
    _os_log_impl(&dword_258DD8000, v32, v33, "#SamplingUtils: getManifestIntermediateLimit is %ld ", v34, 0xCu);
    MEMORY[0x259C9EF40](v34, -1, -1);
  }
}

void _s16MetricsFramework13SamplingUtilsC23getManifestCurrentLimit6forKey4fromSiSS_So14NSUserDefaultsCtFZ_0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_258F0A4E0();
  v5 = [a3 stringForKey_];

  if (v5)
  {
    v6 = sub_258F0A4F0();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0xE000000000000000;
  }

  v9 = HIBYTE(v8) & 0xF;
  v10 = v6 & 0xFFFFFFFFFFFFLL;
  if ((v8 & 0x2000000000000000) != 0)
  {
    v11 = HIBYTE(v8) & 0xF;
  }

  else
  {
    v11 = v6 & 0xFFFFFFFFFFFFLL;
  }

  if (!v11)
  {

    goto LABEL_67;
  }

  if ((v8 & 0x1000000000000000) == 0)
  {
    if ((v8 & 0x2000000000000000) != 0)
    {
      v38[0] = v6;
      v38[1] = v8 & 0xFFFFFFFFFFFFFFLL;
      if (v6 == 43)
      {
        if (v9)
        {
          if (--v9)
          {
            v14 = 0;
            v24 = v38 + 1;
            while (1)
            {
              v25 = *v24 - 48;
              if (v25 > 9)
              {
                break;
              }

              v26 = 10 * v14;
              if ((v14 * 10) >> 64 != (10 * v14) >> 63)
              {
                break;
              }

              v14 = v26 + v25;
              if (__OFADD__(v26, v25))
              {
                break;
              }

              ++v24;
              if (!--v9)
              {
                goto LABEL_65;
              }
            }
          }

          goto LABEL_64;
        }

LABEL_79:
        __break(1u);
        return;
      }

      if (v6 != 45)
      {
        if (v9)
        {
          v14 = 0;
          v29 = v38;
          while (1)
          {
            v30 = *v29 - 48;
            if (v30 > 9)
            {
              break;
            }

            v31 = 10 * v14;
            if ((v14 * 10) >> 64 != (10 * v14) >> 63)
            {
              break;
            }

            v14 = v31 + v30;
            if (__OFADD__(v31, v30))
            {
              break;
            }

            ++v29;
            if (!--v9)
            {
              goto LABEL_65;
            }
          }
        }

        goto LABEL_64;
      }

      if (v9)
      {
        if (--v9)
        {
          v14 = 0;
          v18 = v38 + 1;
          while (1)
          {
            v19 = *v18 - 48;
            if (v19 > 9)
            {
              break;
            }

            v20 = 10 * v14;
            if ((v14 * 10) >> 64 != (10 * v14) >> 63)
            {
              break;
            }

            v14 = v20 - v19;
            if (__OFSUB__(v20, v19))
            {
              break;
            }

            ++v18;
            if (!--v9)
            {
              goto LABEL_65;
            }
          }
        }

        goto LABEL_64;
      }
    }

    else
    {
      if ((v6 & 0x1000000000000000) != 0)
      {
        v12 = ((v8 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v12 = sub_258F0AB10();
      }

      v13 = *v12;
      if (v13 == 43)
      {
        if (v10 >= 1)
        {
          v9 = v10 - 1;
          if (v10 != 1)
          {
            v14 = 0;
            if (v12)
            {
              v21 = v12 + 1;
              while (1)
              {
                v22 = *v21 - 48;
                if (v22 > 9)
                {
                  goto LABEL_64;
                }

                v23 = 10 * v14;
                if ((v14 * 10) >> 64 != (10 * v14) >> 63)
                {
                  goto LABEL_64;
                }

                v14 = v23 + v22;
                if (__OFADD__(v23, v22))
                {
                  goto LABEL_64;
                }

                ++v21;
                if (!--v9)
                {
                  goto LABEL_65;
                }
              }
            }

            goto LABEL_56;
          }

          goto LABEL_64;
        }

        goto LABEL_78;
      }

      if (v13 != 45)
      {
        if (v10)
        {
          v14 = 0;
          if (v12)
          {
            while (1)
            {
              v27 = *v12 - 48;
              if (v27 > 9)
              {
                goto LABEL_64;
              }

              v28 = 10 * v14;
              if ((v14 * 10) >> 64 != (10 * v14) >> 63)
              {
                goto LABEL_64;
              }

              v14 = v28 + v27;
              if (__OFADD__(v28, v27))
              {
                goto LABEL_64;
              }

              ++v12;
              if (!--v10)
              {
                goto LABEL_56;
              }
            }
          }

          goto LABEL_56;
        }

LABEL_64:
        v14 = 0;
        LOBYTE(v9) = 1;
        goto LABEL_65;
      }

      if (v10 >= 1)
      {
        v9 = v10 - 1;
        if (v10 != 1)
        {
          v14 = 0;
          if (v12)
          {
            v15 = v12 + 1;
            while (1)
            {
              v16 = *v15 - 48;
              if (v16 > 9)
              {
                goto LABEL_64;
              }

              v17 = 10 * v14;
              if ((v14 * 10) >> 64 != (10 * v14) >> 63)
              {
                goto LABEL_64;
              }

              v14 = v17 - v16;
              if (__OFSUB__(v17, v16))
              {
                goto LABEL_64;
              }

              ++v15;
              if (!--v9)
              {
                goto LABEL_65;
              }
            }
          }

LABEL_56:
          LOBYTE(v9) = 0;
LABEL_65:
          v39 = v9;
          v32 = v9;
          goto LABEL_66;
        }

        goto LABEL_64;
      }

      __break(1u);
    }

    __break(1u);
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  v39 = 0;
  v14 = sub_258EAF5B8(v6, v8, 10);
  v32 = v37;
LABEL_66:

  if (v32)
  {
LABEL_67:
    v14 = 0;
  }

  if (qword_27F988678 != -1)
  {
    swift_once();
  }

  v33 = sub_258F0A370();
  __swift_project_value_buffer(v33, qword_27F98A418);
  v34 = sub_258F0A350();
  v35 = sub_258F0A810();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 134217984;
    *(v36 + 4) = v14;
    _os_log_impl(&dword_258DD8000, v34, v35, "#SamplingUtils: getManifestCurrentLimit is %ld ", v36, 0xCu);
    MEMORY[0x259C9EF40](v36, -1, -1);
  }
}

id _s16MetricsFramework13SamplingUtilsC19getBypassSatTrigger8defaultsSbSo14NSUserDefaultsC_tFZ_0(void *a1)
{
  v2 = sub_258F0A4E0();
  v3 = [a1 BOOLForKey_];

  if (qword_27F988678 != -1)
  {
    swift_once();
  }

  v4 = sub_258F0A370();
  __swift_project_value_buffer(v4, qword_27F98A418);
  v5 = sub_258F0A350();
  v6 = sub_258F0A810();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 67109120;
    *(v7 + 4) = v3;
    _os_log_impl(&dword_258DD8000, v5, v6, "#SamplingUtils: getBypassSatTrigger is %{BOOL}d ", v7, 8u);
    MEMORY[0x259C9EF40](v7, -1, -1);
  }

  return v3;
}

void _s16MetricsFramework13SamplingUtilsC23setManifestCurrentCount6forKey_2inySS_SiSo14NSUserDefaultsCtFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_258F0A7D0();
  v7 = sub_258F0A4E0();
  [a4 setValue:v6 forKey:v7];

  if (qword_27F988678 != -1)
  {
    swift_once();
  }

  v8 = sub_258F0A370();
  __swift_project_value_buffer(v8, qword_27F98A418);
  v9 = a4;
  oslog = sub_258F0A350();
  v10 = sub_258F0A810();

  if (os_log_type_enabled(oslog, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 134218242;
    *(v11 + 4) = a3;
    *(v11 + 12) = 2112;
    *(v11 + 14) = v9;
    *v12 = v9;
    v13 = v9;
    _os_log_impl(&dword_258DD8000, oslog, v10, "#SamplingUtils: Set SpeakerId Sampling Manifest Current Count to %ld in UserDefaults %@", v11, 0x16u);
    sub_258DE2184(v12, &qword_27F988C78, &qword_258F11A20);
    MEMORY[0x259C9EF40](v12, -1, -1);
    MEMORY[0x259C9EF40](v11, -1, -1);
  }
}

uint64_t _s16MetricsFramework13SamplingUtilsC24getSISchemaTriggerPhrase3forSo0fgH0VSS_tFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98A438, &unk_258F166C0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = v12 - v7;
  v12[2] = a1;
  v12[3] = a2;
  v12[0] = 1769105747;
  v12[1] = 0xE400000000000000;
  v9 = sub_258F09AA0();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_258DEF388();
  v10 = sub_258F0A990();
  sub_258DE2184(v8, &qword_27F98A438, &unk_258F166C0);
  if (v10)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

uint64_t _s16MetricsFramework13SamplingUtilsC22getActiveRequestIdsFor6locale4dateSaySSGSgSS_10Foundation4DateVtFZ_0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v43[1] = *MEMORY[0x277D85DE8];
  v6 = sub_258F09A20();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = objc_opt_self();
  v13 = sub_258F0A4E0();
  v14 = sub_258F099A0();
  v43[0] = 0;
  v15 = [v12 getActiveRequestIdsForLocale:v13 date:v14 error:v43];

  v16 = v43[0];
  if (v15)
  {
    v17 = sub_258F0A6B0();
    v18 = v16;

    if (qword_27F988678 != -1)
    {
      swift_once();
    }

    v19 = sub_258F0A370();
    __swift_project_value_buffer(v19, qword_27F98A418);
    (*(v7 + 16))(v11, a3, v6);

    v20 = sub_258F0A350();
    v21 = sub_258F0A810();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v43[0] = v42;
      *v22 = 136315650;
      v23 = MEMORY[0x259C9DF80](v17, MEMORY[0x277D837D0]);
      v41 = v21;
      v25 = a1;
      v26 = sub_258DE3018(v23, v24, v43);

      *(v22 + 4) = v26;
      *(v22 + 12) = 2080;
      *(v22 + 14) = sub_258DE3018(v25, a2, v43);
      *(v22 + 22) = 2080;
      sub_258EB4ABC(&qword_27F988750, MEMORY[0x277CC9578]);
      v27 = sub_258F0AD60();
      v29 = v28;
      (*(v7 + 8))(v11, v6);
      v30 = sub_258DE3018(v27, v29, v43);

      *(v22 + 24) = v30;
      _os_log_impl(&dword_258DD8000, v20, v41, "#SamplingUtils: Current active requests: %s for locale: %s for date: %s", v22, 0x20u);
      v31 = v42;
      swift_arrayDestroy();
      MEMORY[0x259C9EF40](v31, -1, -1);
      MEMORY[0x259C9EF40](v22, -1, -1);
    }

    else
    {

      (*(v7 + 8))(v11, v6);
    }
  }

  else
  {
    v32 = v43[0];
    v33 = sub_258F09890();

    swift_willThrow();
    if (qword_27F988678 != -1)
    {
      swift_once();
    }

    v34 = sub_258F0A370();
    __swift_project_value_buffer(v34, qword_27F98A418);
    v35 = sub_258F0A350();
    v36 = sub_258F0A820();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_258DD8000, v35, v36, "#SamplingUtils: Current active requests faield", v37, 2u);
      MEMORY[0x259C9EF40](v37, -1, -1);
    }

    v17 = 0;
  }

  v38 = *MEMORY[0x277D85DE8];
  return v17;
}

uint64_t objectdestroyTm_0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

_BYTE *sub_258EB4A3C@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v3 = *result;
  v4 = v3 > 0x20;
  v5 = (1 << v3) & 0x100003E01;
  if (v4 || v5 == 0)
  {
    v8 = *(v2 + 16);
    result = _swift_stdlib_strtof_clocale();
    if (result)
    {
      v9 = *result == 0;
    }

    else
    {
      v9 = 0;
    }

    *a2 = v9;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

uint64_t sub_258EB4ABC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_258EB4B04(void *a1)
{
  v3 = *(sub_258F09A20() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_258EAD534(a1, v4);
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_258EB4B8C(uint64_t a1)
{
  v3 = v2;
  v4 = *(sub_258F09A20() - 8);
  v5 = (*(v4 + 80) + 64) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = v1[3];
  v16 = v1[2];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = v1[7];
  v12 = *(v1 + v6);
  v13 = *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_258DE1DC4;

  return sub_258EACCF8(a1, v16, v7, v8, v9, v10, v11, v1 + v5);
}

unint64_t sub_258EB4D00()
{
  result = qword_27F98A448;
  if (!qword_27F98A448)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F98A448);
  }

  return result;
}

uint64_t sub_258EB4D4C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F98A430, &qword_258F14810);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_258EB4DBC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_258DEE37C;

  return sub_258EAED64(a1, v5);
}

uint64_t sub_258EB4E74(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_258DE1DC4;

  return sub_258EAED64(a1, v5);
}