uint64_t sub_1D20F67E0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7A48, &unk_1D2117D50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D20F6848(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D20F6894@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1D20ECE18();
  if (v3)
  {
    v4 = v2;
    v5 = v3;
    if (sub_1D211391C())
    {
      sub_1D20F0EB0(a1);
    }

    else
    {
      MEMORY[0x1D38961A0](v4, v5);
      sub_1D20F0EB0(a1);
    }

    v10 = 0;
  }

  else
  {
    if (qword_1EE083DE8 != -1)
    {
      swift_once();
    }

    v6 = sub_1D211362C();
    __swift_project_value_buffer(v6, qword_1EE0874C0);
    v7 = sub_1D21135FC();
    v8 = sub_1D2113A7C();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1D209F000, v7, v8, "No Server Base URL Found!!", v9, 2u);
      MEMORY[0x1D3896EB0](v9, -1, -1);
    }

    v10 = 1;
  }

  v11 = sub_1D2112F9C();
  v12 = *(*(v11 - 8) + 56);

  return v12(a1, v10, 1, v11);
}

uint64_t sub_1D20F6A60@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7250, &qword_1D21149C0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v17[-v4];
  v6 = sub_1D2112F9C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v17[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D20ECA00(v18);
  if (*(&v18[0] + 1) != 1)
  {
    v19 = v18[3];
    sub_1D20A8580(&v19, v17, &qword_1EC6C7510, &unk_1D2115710);
    sub_1D20A862C(v18, &qword_1EC6C7518, &unk_1D2116AB0);
    if (*(&v19 + 1))
    {
      sub_1D20F6894(v5);
      if ((*(v7 + 48))(v5, 1, v6) != 1)
      {
        (*(v7 + 32))(v10, v5, v6);
        sub_1D2112F3C();
        sub_1D20A862C(&v19, &qword_1EC6C7510, &unk_1D2115710);
        (*(v7 + 8))(v10, v6);
        v15 = 0;
        return (*(v7 + 56))(a1, v15, 1, v6);
      }

      sub_1D20A862C(&v19, &qword_1EC6C7510, &unk_1D2115710);
      sub_1D20A862C(v5, &qword_1EC6C7250, &qword_1D21149C0);
    }
  }

  if (qword_1EE083DE8 != -1)
  {
    swift_once();
  }

  v11 = sub_1D211362C();
  __swift_project_value_buffer(v11, qword_1EE0874C0);
  v12 = sub_1D21135FC();
  v13 = sub_1D2113A7C();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_1D209F000, v12, v13, "Unable to compute API Path for EK forecast signal.", v14, 2u);
    MEMORY[0x1D3896EB0](v14, -1, -1);
  }

  v15 = 1;
  return (*(v7 + 56))(a1, v15, 1, v6);
}

uint64_t sub_1D20F6D64@<X0>(uint64_t a1@<X8>)
{
  v131 = a1;
  v132[1] = *MEMORY[0x1E69E9840];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7508, &unk_1D2116AA0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v120 = &v113 - v4;
  v5 = sub_1D2112B1C();
  v130 = *(v5 - 8);
  v6 = *(v130 + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v118 = &v113 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v122 = &v113 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C75A8, &qword_1D2115B80);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v113 - v12;
  v14 = type metadata accessor for HSRatePlan(0);
  v126 = *(v14 - 8);
  v15 = *(v126 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = (&v113 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7250, &qword_1D21149C0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8);
  v127 = &v113 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v128 = &v113 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v113 - v24;
  v26 = sub_1D2112F9C();
  v27 = *(v26 - 8);
  v28 = v27[8];
  v29 = MEMORY[0x1EEE9AC00](v26);
  v119 = &v113 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x1EEE9AC00](v29);
  v123 = &v113 - v32;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v121 = &v113 - v34;
  MEMORY[0x1EEE9AC00](v33);
  v36 = &v113 - v35;
  sub_1D20F6A60(v25);
  v129 = v27[6];
  if (v129(v25, 1, v26) == 1)
  {
    v37 = v131;
    v38 = v1;
    sub_1D20A862C(v25, &qword_1EC6C7250, &qword_1D21149C0);
    if (qword_1EE083DE8 != -1)
    {
      swift_once();
    }

    v39 = sub_1D211362C();
    __swift_project_value_buffer(v39, qword_1EE0874C0);

    v40 = sub_1D21135FC();
    v41 = sub_1D2113A7C();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = v5;
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v132[0] = v44;
      *v43 = 136315138;
      *(v43 + 4) = sub_1D20B75F0(*(v38 + OBJC_IVAR____TtC12HomeServices30GuidanceForecastRequestBuilder_requestId), *(v38 + OBJC_IVAR____TtC12HomeServices30GuidanceForecastRequestBuilder_requestId + 8), v132);
      _os_log_impl(&dword_1D209F000, v40, v41, "Request URL for EK Guidance Forecast not found | requestId: %s", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v44);
      MEMORY[0x1D3896EB0](v44, -1, -1);
      v45 = v43;
      v5 = v42;
      MEMORY[0x1D3896EB0](v45, -1, -1);
    }

    result = (*(v130 + 56))(v37, 1, 1, v5);
    goto LABEL_29;
  }

  v117 = v5;
  v116 = v27;
  v47 = v27[4];
  v124 = v36;
  v125 = v26;
  v115 = v27 + 4;
  v114 = v47;
  v47(v36, v25, v26);
  if (*(v1 + 32))
  {
    v48 = 0x454355444552;
  }

  else
  {
    v48 = 0x5446494853;
  }

  if (*(v1 + 32))
  {
    v49 = 0xE600000000000000;
  }

  else
  {
    v49 = 0xE500000000000000;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C73B0, &unk_1D2115420);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D2115280;
  *(inited + 32) = 0x64692D64697267;
  *(inited + 40) = 0xE700000000000000;
  v51 = *(v1 + 24);
  *(inited + 48) = *(v1 + 16);
  *(inited + 56) = v51;
  *(inited + 64) = 1701080941;
  *(inited + 72) = 0xE400000000000000;
  *(inited + 80) = v48;
  *(inited + 88) = v49;
  v52 = v1;
  sub_1D20A8580(v1 + OBJC_IVAR____TtC12HomeServices30GuidanceForecastRequestBuilder_ratePlan, v13, &qword_1EC6C75A8, &qword_1D2115B80);
  if ((*(v126 + 48))(v13, 1, v14) == 1)
  {

    sub_1D20A862C(v13, &qword_1EC6C75A8, &qword_1D2115B80);
    v53 = v125;
    v54 = v129;
  }

  else
  {
    v55 = v14;
    sub_1D20F9360(v13, v17);
    v56 = *v17;
    v57 = v17[1];

    inited = sub_1D20B7234(1, 3, 1, inited);
    *(inited + 16) = 3;
    *(inited + 96) = 0x2D7974696C697475;
    *(inited + 104) = 0xEA00000000006469;
    *(inited + 112) = v56;
    *(inited + 120) = v57;
    v59 = v17[2];
    v58 = v17[3];
    v60 = *(inited + 24);

    v54 = v129;
    if (v60 <= 7)
    {
      inited = sub_1D20B7234((v60 > 1), 4, 1, inited);
    }

    v53 = v125;
    *(inited + 16) = 4;
    *(inited + 128) = 0x692D666669726174;
    *(inited + 136) = 0xE900000000000064;
    *(inited + 144) = v59;
    *(inited + 152) = v58;
    v61 = v17 + *(v55 + 24);
    v62 = sub_1D211330C();
    v64 = v63;
    v66 = *(inited + 16);
    v65 = *(inited + 24);
    if (v66 >= v65 >> 1)
    {
      inited = sub_1D20B7234((v65 > 1), v66 + 1, 1, inited);
    }

    sub_1D20F93C4(v17);
    *(inited + 16) = v66 + 1;
    v67 = (inited + 32 * v66);
    v67[4] = 0x656E6F7A656D6974;
    v67[5] = 0xE800000000000000;
    v67[6] = v62;
    v67[7] = v64;
  }

  v68 = v124;
  sub_1D2112F1C();
  v69 = v127;
  sub_1D2112F7C();
  v70 = v54(v69, 1, v53);
  v71 = v130;
  v72 = v52;
  if (v70 == 1)
  {

    sub_1D20A862C(v69, &qword_1EC6C7250, &qword_1D21149C0);
    v73 = v116;
    v74 = v128;
    (v116[7])(v128, 1, 1, v53);
LABEL_23:
    sub_1D20A862C(v74, &qword_1EC6C7250, &qword_1D21149C0);
    if (qword_1EE083DE8 != -1)
    {
      swift_once();
    }

    v81 = sub_1D211362C();
    __swift_project_value_buffer(v81, qword_1EE0874C0);

    v82 = sub_1D21135FC();
    v83 = sub_1D2113A7C();

    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      v85 = v68;
      v86 = swift_slowAlloc();
      v132[0] = v86;
      *v84 = 136315138;
      *(v84 + 4) = sub_1D20B75F0(*(v72 + OBJC_IVAR____TtC12HomeServices30GuidanceForecastRequestBuilder_requestId), *(v72 + OBJC_IVAR____TtC12HomeServices30GuidanceForecastRequestBuilder_requestId + 8), v132);
      _os_log_impl(&dword_1D209F000, v82, v83, "Unable to create EK Guidance Forecast URL with required query parameters | requestId:%s", v84, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v86);
      MEMORY[0x1D3896EB0](v86, -1, -1);
      MEMORY[0x1D3896EB0](v84, -1, -1);

      (v73[1])(v85, v125);
    }

    else
    {

      (v73[1])(v68, v125);
    }

    result = (*(v71 + 56))(v131, 1, 1, v117);
    goto LABEL_29;
  }

  v75 = v52;
  v76 = v130;
  v77 = v123;
  v114(v123, v69, v53);
  v78 = v128;
  sub_1D20F108C(inited, 1, 0, v128);
  v74 = v78;

  v73 = v116;
  v79 = v116[1];
  v80 = v77;
  v71 = v76;
  v72 = v75;
  v68 = v124;
  v79(v80, v53);
  if (v129(v78, 1, v53) == 1)
  {
    goto LABEL_23;
  }

  v129 = v79;
  v88 = v121;
  v114(v121, v74, v53);
  (v73[2])(v119, v88, v53);
  v89 = v122;
  sub_1D2112ACC();
  sub_1D2112A8C();
  if (sub_1D20CF7E0())
  {
    v90 = &unk_1F4D9E0E0;
  }

  else
  {
    v90 = &unk_1F4D9E120;
  }

  v91 = v53;
  v92 = sub_1D20BABD4(v90, &unk_1F4D9E080);
  v94 = v93;
  sub_1D20CF7E0();
  v95 = v120;
  sub_1D20D94F0(v92, v94, 49, 0xE100000000000000, v120);

  v96 = v117;
  if ((*(v71 + 48))(v95, 1, v117) == 1)
  {
    sub_1D20A862C(v95, &qword_1EC6C7508, &unk_1D2116AA0);
    if (qword_1EE083DE8 != -1)
    {
      swift_once();
    }

    v97 = sub_1D211362C();
    __swift_project_value_buffer(v97, qword_1EE0874C0);

    v98 = sub_1D21135FC();
    v99 = sub_1D2113A7C();

    if (os_log_type_enabled(v98, v99))
    {
      v100 = swift_slowAlloc();
      v101 = swift_slowAlloc();
      v132[0] = v101;
      *v100 = 136315138;
      *(v100 + 4) = sub_1D20B75F0(*(v72 + OBJC_IVAR____TtC12HomeServices30GuidanceForecastRequestBuilder_requestId), *(v72 + OBJC_IVAR____TtC12HomeServices30GuidanceForecastRequestBuilder_requestId + 8), v132);
      _os_log_impl(&dword_1D209F000, v98, v99, "Unable to create signed EK forecast request | requestId: %s", v100, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v101);
      MEMORY[0x1D3896EB0](v101, -1, -1);
      v102 = v100;
      v96 = v117;
      MEMORY[0x1D3896EB0](v102, -1, -1);
    }

    (*(v71 + 8))(v89, v96);
    v103 = v125;
    v104 = v129;
    (v129)(v88, v125);
    v104(v124, v103);
    result = (*(v71 + 56))(v131, 1, 1, v96);
  }

  else
  {
    v105 = *(v72 + OBJC_IVAR____TtC12HomeServices30GuidanceForecastRequestBuilder_requestId);
    v106 = *(v72 + OBJC_IVAR____TtC12HomeServices30GuidanceForecastRequestBuilder_requestId + 8);
    v107 = v118;
    (*(v71 + 16))(v118, v95, v96);
    sub_1D2112AEC();
    v108 = v88;
    v109 = v96;
    v110 = *(v71 + 8);
    v110(v95, v109);
    v111 = v131;
    (*(v71 + 32))(v131, v107, v109);
    sub_1D2112B0C();
    v110(v89, v109);
    v112 = v129;
    (v129)(v108, v91);
    v112(v124, v91);
    result = (*(v71 + 56))(v111, 0, 1, v109);
  }

LABEL_29:
  v87 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1D20F7C28()
{
  v1 = v0[3];

  sub_1D20A862C(v0 + OBJC_IVAR____TtC12HomeServices30GuidanceForecastRequestBuilder_ratePlan, &qword_1EC6C75A8, &qword_1D2115B80);
  v2 = *(v0 + OBJC_IVAR____TtC12HomeServices30GuidanceForecastRequestBuilder_requestId + 8);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for GuidanceForecastRequestBuilder()
{
  result = qword_1EE083EC0;
  if (!qword_1EE083EC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D20F7D0C()
{
  sub_1D20F7DC0();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_1D20F7DC0()
{
  if (!qword_1EE084378[0])
  {
    type metadata accessor for HSRatePlan(255);
    v0 = sub_1D2113B0C();
    if (!v1)
    {
      atomic_store(v0, qword_1EE084378);
    }
  }
}

uint64_t sub_1D20F7E1C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7AA0, &qword_1D2118250);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D20F976C();
  sub_1D2113F3C();
  v11 = *v3;
  v12 = v3[1];
  v18[15] = 0;
  sub_1D2113DBC();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = v3[2];
  v14 = v3[3];
  v18[14] = 1;
  sub_1D2113DBC();
  v15 = v3[4];
  v18[13] = 2;
  sub_1D2113DCC();
  v17 = v3[5];
  v18[12] = 3;
  sub_1D2113DCC();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1D20F7FDC(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7AA8, &qword_1D2118258);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D20F9670();
  sub_1D2113F3C();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v17) = 0;
  sub_1D2113DBC();
  if (!v2)
  {
    v14 = v3[2];
    v15 = v3[3];
    LOBYTE(v17) = 1;
    sub_1D2113DBC();
    v17 = v3[4];
    HIBYTE(v16) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7530, &qword_1D2117B10);
    sub_1D20C0650(&qword_1EC6C7538);
    sub_1D2113DEC();
    v17 = v3[5];
    HIBYTE(v16) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7A80, &qword_1D2118238);
    sub_1D20F97C0(&qword_1EC6C7AB0, sub_1D20F9838);
    sub_1D2113DAC();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1D20F8278(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7A88, &qword_1D2118240);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v12 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D20F92B8();
  sub_1D2113F3C();
  v10 = v2[1];
  v12[0] = *v2;
  v12[1] = v10;
  v12[2] = v2[2];
  sub_1D20F9718();
  sub_1D2113DEC();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1D20F83CC(uint64_t a1)
{
  v2 = sub_1D20F976C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D20F8408(uint64_t a1)
{
  v2 = sub_1D20F976C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1D20F8444@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1D20F89D4(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

uint64_t sub_1D20F84A0()
{
  v1 = 0x636E657571657266;
  v2 = 0x7365756C6176;
  if (*v0 != 2)
  {
    v2 = 0x6C6F687365726874;
  }

  if (*v0)
  {
    v1 = 0x6D69547472617473;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D20F8520@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D20F8C4C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D20F8548(uint64_t a1)
{
  v2 = sub_1D20F9670();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D20F8584(uint64_t a1)
{
  v2 = sub_1D20F9670();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1D20F85C0@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1D20F8DC4(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

uint64_t sub_1D20F861C(uint64_t a1)
{
  v2 = sub_1D20F92B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D20F8658(uint64_t a1)
{
  v2 = sub_1D20F92B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1D20F8694@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1D20F911C(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

uint64_t sub_1D20F86F0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  sub_1D2113ECC();
  sub_1D211375C();
  sub_1D211375C();
  sub_1D20D7E7C(v8, v6);
  sub_1D2113EEC();
  if (v5)
  {
    sub_1D20D9020(v8, v5);
  }

  return sub_1D2113F1C();
}

uint64_t sub_1D20F87A0(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v8 = v1[4];
  v7 = v1[5];
  sub_1D211375C();
  sub_1D211375C();
  sub_1D20D7E7C(a1, v8);
  if (!v7)
  {
    return sub_1D2113EEC();
  }

  sub_1D2113EEC();

  return sub_1D20D9020(a1, v7);
}

uint64_t sub_1D20F8844()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  sub_1D2113ECC();
  sub_1D211375C();
  sub_1D211375C();
  sub_1D20D7E7C(v8, v6);
  sub_1D2113EEC();
  if (v5)
  {
    sub_1D20D9020(v8, v5);
  }

  return sub_1D2113F1C();
}

uint64_t sub_1D20F88F0(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1D2113E2C() & 1) == 0)
  {
    return 0;
  }

  result = a1[2];
  if (result != a2[2] || a1[3] != a2[3])
  {
    result = sub_1D2113E2C();
    if ((result & 1) == 0)
    {
      return 0;
    }
  }

  v7 = a1[4];
  v8 = a2[4];
  v9 = *(v7 + 16);
  if (v9 != *(v8 + 16))
  {
    return 0;
  }

  if (v9)
  {
    v10 = v7 == v8;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
LABEL_20:
    v13 = a2[5];
    if (a1[5])
    {
      if (v13 && (sub_1D2109264() & 1) != 0)
      {
        return 1;
      }
    }

    else if (!v13)
    {
      return 1;
    }

    return 0;
  }

  v11 = (v7 + 32);
  v12 = (v8 + 32);
  while (v9)
  {
    if (*v11 != *v12)
    {
      return 0;
    }

    ++v11;
    ++v12;
    if (!--v9)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D20F89D4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7A98, &qword_1D2118248);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D20F976C();
  sub_1D2113F2C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v28 = 0;
  v11 = sub_1D2113D4C();
  v24 = v12;
  v27 = 1;
  v22 = sub_1D2113D4C();
  v23 = v13;
  v26 = 2;
  sub_1D2113D5C();
  v15 = v14;
  v25 = 3;
  sub_1D2113D5C();
  v17 = v16;
  (*(v6 + 8))(v9, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  v19 = v24;
  *a2 = v11;
  a2[1] = v19;
  v20 = v23;
  a2[2] = v22;
  a2[3] = v20;
  a2[4] = v15;
  a2[5] = v17;
  return result;
}

uint64_t sub_1D20F8C4C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x636E657571657266 && a2 == 0xE900000000000079 || (sub_1D2113E2C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D69547472617473 && a2 == 0xE900000000000065 || (sub_1D2113E2C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7365756C6176 && a2 == 0xE600000000000000 || (sub_1D2113E2C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C6F687365726874 && a2 == 0xEA00000000007364)
  {

    return 3;
  }

  else
  {
    v5 = sub_1D2113E2C();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1D20F8DC4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7A78, &unk_1D2118228);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v19 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D20F9670();
  sub_1D2113F2C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v25) = 0;
  v11 = sub_1D2113D4C();
  v23 = v12;
  LOBYTE(v25) = 1;
  v13 = sub_1D2113D4C();
  v22 = v14;
  v21 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7530, &qword_1D2117B10);
  v24 = 2;
  sub_1D20C0650(&qword_1EE083DB8);
  sub_1D2113D7C();
  v20 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7A80, &qword_1D2118238);
  v24 = 3;
  sub_1D20F97C0(&qword_1EE083DC0, sub_1D20F96C4);
  sub_1D2113D3C();
  (*(v6 + 8))(v9, v5);
  v15 = v25;
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  v17 = v23;
  *a2 = v11;
  a2[1] = v17;
  v18 = v22;
  a2[2] = v21;
  a2[3] = v18;
  a2[4] = v20;
  a2[5] = v15;
  return result;
}

uint64_t sub_1D20F911C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7A50, &qword_1D2117E28);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D20F92B8();
  sub_1D2113F2C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  sub_1D20F930C();
  sub_1D2113D7C();
  (*(v6 + 8))(v9, v5);
  v11 = v18;
  v12 = v20;
  v15 = v19;
  v16 = v17;
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  v14 = v15;
  *a2 = v16;
  *(a2 + 16) = v11;
  *(a2 + 24) = v14;
  *(a2 + 40) = v12;
  return result;
}

unint64_t sub_1D20F92B8()
{
  result = qword_1EE083EF8;
  if (!qword_1EE083EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE083EF8);
  }

  return result;
}

unint64_t sub_1D20F930C()
{
  result = qword_1EE083F00;
  if (!qword_1EE083F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE083F00);
  }

  return result;
}

uint64_t sub_1D20F9360(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HSRatePlan(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D20F93C4(uint64_t a1)
{
  v2 = type metadata accessor for HSRatePlan(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D20F9464()
{
  result = qword_1EC6C7A58;
  if (!qword_1EC6C7A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C7A58);
  }

  return result;
}

unint64_t sub_1D20F94BC()
{
  result = qword_1EC6C7A60;
  if (!qword_1EC6C7A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C7A60);
  }

  return result;
}

unint64_t sub_1D20F9514()
{
  result = qword_1EC6C7A68;
  if (!qword_1EC6C7A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C7A68);
  }

  return result;
}

unint64_t sub_1D20F956C()
{
  result = qword_1EC6C7A70;
  if (!qword_1EC6C7A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C7A70);
  }

  return result;
}

unint64_t sub_1D20F95C4()
{
  result = qword_1EE083EE8;
  if (!qword_1EE083EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE083EE8);
  }

  return result;
}

unint64_t sub_1D20F961C()
{
  result = qword_1EE083EF0;
  if (!qword_1EE083EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE083EF0);
  }

  return result;
}

unint64_t sub_1D20F9670()
{
  result = qword_1EE083F18;
  if (!qword_1EE083F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE083F18);
  }

  return result;
}

unint64_t sub_1D20F96C4()
{
  result = qword_1EE083F20;
  if (!qword_1EE083F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE083F20);
  }

  return result;
}

unint64_t sub_1D20F9718()
{
  result = qword_1EC6C7A90;
  if (!qword_1EC6C7A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C7A90);
  }

  return result;
}

unint64_t sub_1D20F976C()
{
  result = qword_1EE083F38;
  if (!qword_1EE083F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE083F38);
  }

  return result;
}

uint64_t sub_1D20F97C0(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6C7A80, &qword_1D2118238);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D20F9838()
{
  result = qword_1EC6C7AB8;
  if (!qword_1EC6C7AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C7AB8);
  }

  return result;
}

unint64_t sub_1D20F98B0()
{
  result = qword_1EC6C7AC0;
  if (!qword_1EC6C7AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C7AC0);
  }

  return result;
}

unint64_t sub_1D20F9908()
{
  result = qword_1EC6C7AC8;
  if (!qword_1EC6C7AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C7AC8);
  }

  return result;
}

unint64_t sub_1D20F9960()
{
  result = qword_1EE083F28;
  if (!qword_1EE083F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE083F28);
  }

  return result;
}

unint64_t sub_1D20F99B8()
{
  result = qword_1EE083F30;
  if (!qword_1EE083F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE083F30);
  }

  return result;
}

unint64_t sub_1D20F9A10()
{
  result = qword_1EE083F08;
  if (!qword_1EE083F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE083F08);
  }

  return result;
}

unint64_t sub_1D20F9A68()
{
  result = qword_1EE083F10;
  if (!qword_1EE083F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE083F10);
  }

  return result;
}

uint64_t sub_1D20F9ACC()
{
  v0 = [objc_opt_self() defaultManager];
  sub_1D2112F5C();
  v1 = sub_1D21137BC();

  v2 = [v0 fileExistsAtPath_];

  if (v2)
  {
    return sub_1D2112FBC();
  }

  if (qword_1EC6C7178 != -1)
  {
    swift_once();
  }

  v4 = sub_1D211362C();
  __swift_project_value_buffer(v4, qword_1EC6CE868);
  v5 = sub_1D21135FC();
  v6 = sub_1D2113A7C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1D209F000, v5, v6, "File not found in provided location!", v7, 2u);
    MEMORY[0x1D3896EB0](v7, -1, -1);
  }

  return 0;
}

uint64_t sub_1D20F9D84@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for HSCleanGuidanceThresholds(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a2 + 16);
  if (v12)
  {
    v19 = a3;
    v13 = a2 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v14 = *(v8 + 72);
    while (1)
    {
      sub_1D2107AD8(v13, v11, type metadata accessor for HSCleanGuidanceThresholds);
      v15 = a1(v11);
      if (v3)
      {
        return sub_1D2107B40(v11, type metadata accessor for HSCleanGuidanceThresholds);
      }

      if (v15)
      {
        break;
      }

      sub_1D2107B40(v11, type metadata accessor for HSCleanGuidanceThresholds);
      v13 += v14;
      if (!--v12)
      {
        v16 = 1;
        a3 = v19;
        return (*(v8 + 56))(a3, v16, 1, v7);
      }
    }

    a3 = v19;
    sub_1D21071D4(v11, v19, type metadata accessor for HSCleanGuidanceThresholds);
    v16 = 0;
  }

  else
  {
    v16 = 1;
  }

  return (*(v8 + 56))(a3, v16, 1, v7);
}

uint64_t _s12HomeServices06EnergyB0V26generateHSGuidanceForecast11currentTime03useC9Threshold05avoidcJ04type12valueRatings10forceIndex16endValidInterval06strideS012guidanceTypeAA0eF0V10Foundation4DateV_S2dAO04MockV0OSaySdGSgSbARSgSiAA0eV0OtAA0E5ErrorOYKFZ@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unsigned __int8 *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>)
{
  v195 = a8;
  v209 = a6;
  v218 = a5;
  v219 = a4;
  v221 = a3;
  v191 = a9;
  v222 = type metadata accessor for HSGuidanceValue(0);
  v213 = *(v222 - 8);
  v16 = *(v213 + 64);
  v17 = MEMORY[0x1EEE9AC00](v222);
  v214 = &v184[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v17);
  v225 = &v184[-v19];
  v207 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7278, &unk_1D2115720);
  v20 = *(*(v207 - 8) + 64);
  MEMORY[0x1EEE9AC00](v207);
  v212 = &v184[-v21];
  v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7240, &unk_1D21149B0);
  v22 = *(*(v194 - 8) + 64);
  MEMORY[0x1EEE9AC00](v194);
  v199 = &v184[-v23];
  v227 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7280, &qword_1D21149E0);
  v24 = *(*(v227 - 1) + 64);
  v25 = MEMORY[0x1EEE9AC00](v227);
  v203 = &v184[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v25);
  v210 = &v184[-v27];
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7248, &qword_1D2114A80);
  v29 = *(*(v28 - 8) + 64);
  v30 = MEMORY[0x1EEE9AC00](v28 - 8);
  v201 = &v184[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v32 = MEMORY[0x1EEE9AC00](v30);
  v208 = &v184[-v33];
  MEMORY[0x1EEE9AC00](v32);
  v193 = &v184[-v34];
  v35 = sub_1D211319C();
  v220 = *(v35 - 8);
  v36 = v220[8];
  v37 = MEMORY[0x1EEE9AC00](v35);
  v223 = &v184[-((v38 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v39 = MEMORY[0x1EEE9AC00](v37);
  v215 = &v184[-v40];
  v41 = MEMORY[0x1EEE9AC00](v39);
  v211 = &v184[-v42];
  v43 = MEMORY[0x1EEE9AC00](v41);
  v206 = &v184[-v44];
  v45 = MEMORY[0x1EEE9AC00](v43);
  v226 = &v184[-v46];
  v47 = MEMORY[0x1EEE9AC00](v45);
  v216 = &v184[-v48];
  v49 = MEMORY[0x1EEE9AC00](v47);
  v188 = &v184[-v50];
  v51 = MEMORY[0x1EEE9AC00](v49);
  v224 = &v184[-v52];
  MEMORY[0x1EEE9AC00](v51);
  v192 = &v184[-v53];
  v197 = type metadata accessor for HSGuidanceError(0);
  v54 = *(*(v197 - 8) + 64);
  v55 = MEMORY[0x1EEE9AC00](v197);
  v187 = &v184[-((v56 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v57 = MEMORY[0x1EEE9AC00](v55);
  v196 = &v184[-v58];
  v59 = MEMORY[0x1EEE9AC00](v57);
  v61 = &v184[-v60];
  MEMORY[0x1EEE9AC00](v59);
  v63 = &v184[-v62];
  v64 = sub_1D2112C2C();
  v204 = *(v64 - 8);
  v65 = *(v204 + 64);
  v66 = MEMORY[0x1EEE9AC00](v64);
  v68 = &v184[-((v67 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v66);
  v70 = &v184[-v69];
  v71 = *a2;
  v72 = *a7;
  v73 = v228;
  sub_1D20FE6E4(v63, &v184[-v69]);
  v74 = v195;
  if (v73)
  {
    return sub_1D21071D4(v63, v74, type metadata accessor for HSGuidanceError);
  }

  v200 = a1;
  v202 = v61;
  v205 = v71;
  v185 = v72;
  v186 = 0;
  v189 = v68;
  v190 = v70;
  v198 = v64;
  v75 = v193;
  sub_1D20A8580(v218, v193, &qword_1EC6C7248, &qword_1D2114A80);
  v76 = v220;
  v217 = v220[6];
  v218 = v220 + 6;
  if (v217(v75, 1, v35) == 1)
  {
    sub_1D20A862C(v75, &qword_1EC6C7248, &qword_1D2114A80);
    v77 = v211;
    v78 = v212;
    v79 = v210;
    v80 = v200;
  }

  else
  {
    v81 = v192;
    (v76[4])(v192, v75, v35);
    v82 = v200;
    v83 = sub_1D211310C();
    v78 = v212;
    v79 = v210;
    if (v83)
    {
      v84 = v76[2];
      v84();
      v228 = v84;
      (v84)(v188, v81, v35);
      sub_1D2112BEC();
      (v76[1])(v81, v35);
      v77 = v211;
      goto LABEL_8;
    }

    (v76[1])(v81, v35);
    v77 = v211;
    v80 = v82;
  }

  v228 = v76[2];
  (v228)(v224, v80, v35);
  sub_1D2112BFC();
LABEL_8:
  v85 = v194;
  if (!v221)
  {
    v124 = v199;
    sub_1D2112C0C();
    v226 = *(v85 + 36);
    sub_1D2112BDC();
    v125 = v203;
    v216 = &v203[*(v227 + 11)];
    v126 = *(v207 + 48);
    v128 = v76[4];
    v127 = v76 + 4;
    (v128)(&v216[v126], v124, v35);
    v129 = v227;
    v209 = *(v227 + 9);
    v130 = &v124[v226];
    v131 = v216;
    v210 = v128;
    (v128)(&v125[v209], v130, v35);
    v132 = *(v129 + 10);
    v133 = v213;
    v206 = v132;
    *&v132[v125] = 0x409C200000000000;
    v226 = (v127 - 2);
    (v228)(v125, v131 + v126, v35);
    v134 = v127;
    v135 = 0;
    *v131 = 0;
    v225 = v134 - 3;
    v202 = v134 + 1;
    v220 = v134;
    v208 = v134 + 3;
    v227 = MEMORY[0x1E69E7CC0];
    *(v131 + 8) = 0;
    v136 = v205;
    v221 = v126;
    while (1)
    {
      (v228)(v77, v131 + v126, v35);
      sub_1D20FE9D8(&qword_1EE0843E0, MEMORY[0x1E6969530]);
      if (sub_1D211378C())
      {
        v137 = *v225;
        (*v225)(v77, v35);
        v138 = 1;
        v139 = v198;
        v140 = v204;
        v141 = v201;
        v142 = v210;
      }

      else
      {
        sub_1D20A8580(v131, v78, &qword_1EC6C7278, &unk_1D2115720);
        v143 = *v78;
        v144 = v78[8];
        v145 = *(v207 + 48);
        sub_1D20FE9D8(&qword_1EC6C7288, MEMORY[0x1E6969530]);
        v146 = v224;
        v147 = sub_1D2113B1C();
        v149 = v148;
        v150 = *v225;
        v151 = &v78[v145];
        v133 = v213;
        (*v225)(v151, v35);
        *v131 = v147;
        *(v131 + 8) = v149 & 1;
        v152 = v131 + v221;
        v137 = v150;
        v153 = v146;
        v136 = v205;
        (*v202)(v152, v153, v35);
        v141 = v201;
        v142 = v210;
        (v210)(v201, v211, v35);
        v138 = 0;
        v139 = v198;
        v140 = v204;
      }

      (*v208)(v141, v138, 1, v35);
      if (v217(v141, 1, v35) == 1)
      {
        v166 = &v229;
LABEL_63:
        sub_1D20A862C(*(v166 - 32), &qword_1EC6C7280, &qword_1D21149E0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C73F0, &unk_1D2115730);
        v169 = (type metadata accessor for HSCleanGuidanceThresholds(0) - 8);
        v170 = *(*v169 + 72);
        v171 = (*(*v169 + 80) + 32) & ~*(*v169 + 80);
        v172 = swift_allocObject();
        *(v172 + 16) = xmmword_1D2114850;
        v173 = v172 + v171;
        v174 = v204;
        v175 = v190;
        (*(v204 + 16))(v173, v190, v139);
        *(v173 + v169[7]) = a10;
        *(v173 + v169[8]) = a11;
        v176 = type metadata accessor for HSGuidanceForecast(0);
        v177 = *(v174 + 32);
        v178 = v191;
        v177(v191 + v176[6], v175, v139);
        result = (v177)(v178 + v176[8], v189, v139);
        *v178 = v185;
        *(v178 + 8) = v172;
        *(v178 + v176[7]) = v227;
        return result;
      }

      v154 = v215;
      v142();
      result = sub_1D20FDFE4(v154);
      if (v155)
      {
        break;
      }

      v156 = v135;
      if ((v219 & 1) == 0)
      {
        v157 = result / 30.0;
        if (COERCE__INT64(fabs(v157)) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_78;
        }

        if (v157 <= -9.22337204e18)
        {
          goto LABEL_79;
        }

        if (v157 >= 9.22337204e18)
        {
          goto LABEL_80;
        }

        v156 = v157;
      }

      (v228)(v223, v154, v35);
      if (!v135 && v136 == 5)
      {
        v158 = v224;
        sub_1D21130DC();
        v159 = v223;
        v137(v223, v35);
        (v142)(v159, v158, v35);
      }

      v160 = v156 % 48;
      (v228)(v224, v223, v35);
      v161 = v214;
      result = sub_1D2112BFC();
      if (v160 < 0)
      {
        goto LABEL_72;
      }

      *&v161[*(v222 + 20)] = qword_1F4D9E420[v160 + 4];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v227 = sub_1D20B720C(0, v227[2] + 1, 1, v227);
      }

      v162 = v215;
      v164 = v227[2];
      v163 = v227[3];
      if (v164 >= v163 >> 1)
      {
        v227 = sub_1D20B720C(v163 > 1, v164 + 1, 1, v227);
      }

      v137(v223, v35);
      v137(v162, v35);
      v165 = v227;
      v227[2] = v164 + 1;
      result = sub_1D21071D4(v214, v165 + ((*(v133 + 80) + 32) & ~*(v133 + 80)) + *(v133 + 72) * v164, type metadata accessor for HSGuidanceValue);
      v123 = __OFADD__(v135++, 1);
      v77 = v211;
      v78 = v212;
      v131 = v216;
      v126 = v221;
      if (v123)
      {
LABEL_73:
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
        goto LABEL_81;
      }
    }

    v179 = v187;
    *v187 = 0xD00000000000001BLL;
    v179[1] = 0x80000001D211A5C0;
    swift_storeEnumTagMultiPayload();
    sub_1D20FE9D8(&qword_1EE083C08, type metadata accessor for HSGuidanceError);
    swift_willThrowTypedImpl();
    v137(v154, v35);
    v180 = *(v140 + 8);
    v180(v189, v139);
    v180(v190, v139);
    sub_1D20A862C(v203, &qword_1EC6C7280, &qword_1D21149E0);
    v63 = v179;
LABEL_67:
    v74 = v195;
    return sub_1D21071D4(v63, v74, type metadata accessor for HSGuidanceError);
  }

  v86 = v199;
  sub_1D2112C0C();
  v223 = *(v85 + 36);
  result = sub_1D2112BDC();
  v88 = v209;
  if (v209)
  {
    v89 = v209;
    v90 = v227;
    v91 = &v79[*(v227 + 11)];
    v92 = *(v207 + 48);
    v94 = v76[4];
    v93 = v76 + 4;
    (v94)(&v92[v91], v86, v35);
    v201 = *(v90 + 9);
    v220 = v94;
    (v94)(&v201[v79], v223 + v86, v35);
    v194 = *(v90 + 10);
    *&v79[v194] = v89;
    v214 = v92;
    (v228)(v79, &v92[v91], v35);
    v95 = 0;
    *v91 = 0;
    v215 = v91;
    *(v91 + 8) = 0;
    v223 = (v93 - 3);
    v193 = v93 + 1;
    v203 = v93 + 3;
    v199 = (v221 + 32);
    v227 = MEMORY[0x1E69E7CC0];
    v96 = v224;
    v211 = v93 - 2;
    while (1)
    {
      v97 = v216;
      (v228)(v216, &v214[v215], v35);
      sub_1D20FE9D8(&qword_1EE0843E0, MEMORY[0x1E6969530]);
      if (v88 <= 0)
      {
        if (sub_1D211379C())
        {
LABEL_13:
          v98 = *v223;
          (*v223)(v97, v35);
          v99 = 1;
          v100 = v222;
          v101 = v202;
          v102 = v208;
          goto LABEL_16;
        }
      }

      else if (sub_1D211378C())
      {
        goto LABEL_13;
      }

      v103 = v215;
      v104 = v93;
      v105 = v212;
      sub_1D20A8580(v215, v212, &qword_1EC6C7278, &unk_1D2115720);
      v106 = *v105;
      v107 = v105[8];
      v108 = *(v207 + 48);
      sub_1D20FE9D8(&qword_1EC6C7288, MEMORY[0x1E6969530]);
      v109 = sub_1D2113B1C();
      LOBYTE(v107) = v110;
      v98 = *v223;
      v111 = &v105[v108];
      v93 = v104;
      v96 = v224;
      (*v223)(v111, v35);
      *v103 = v109;
      *(v103 + 8) = v107 & 1;
      (*v193)(&v214[v103], v96, v35);
      v102 = v208;
      (v220)(v208, v216, v35);
      v99 = 0;
      v100 = v222;
      v101 = v202;
LABEL_16:
      (*v203)(v102, v99, 1, v35);
      if (v217(v102, 1, v35) == 1)
      {
        v139 = v198;
        v166 = &v230;
        goto LABEL_63;
      }

      v112 = v102;
      v113 = v226;
      (v220)(v226, v112, v35);
      result = sub_1D20FDFE4(v113);
      if (v114)
      {

        *v101 = 0xD00000000000001BLL;
        v101[1] = 0x80000001D211A5C0;
        swift_storeEnumTagMultiPayload();
        sub_1D20FE9D8(&qword_1EE083C08, type metadata accessor for HSGuidanceError);
        swift_willThrowTypedImpl();
        v98(v226, v35);
        v167 = *(v204 + 8);
        v168 = v198;
        v167(v189, v198);
        v167(v190, v168);
        sub_1D20A862C(v210, &qword_1EC6C7280, &qword_1D21149E0);
LABEL_66:
        v63 = v101;
        goto LABEL_67;
      }

      v115 = *(v221 + 16);
      if (v219)
      {
        v116 = v206;
        if (!v115)
        {
          goto LABEL_74;
        }

        v117 = v95 % v115;
      }

      else
      {
        v118 = v196;
        v116 = v206;
        if (!v115)
        {
          *v196 = 0xD000000000000029;
          v118[1] = 0x80000001D211A5E0;
          v181 = v118;
          swift_storeEnumTagMultiPayload();
          sub_1D20FE9D8(&qword_1EE083C08, type metadata accessor for HSGuidanceError);
          swift_willThrowTypedImpl();
          v98(v226, v35);
          v182 = *(v204 + 8);
          v183 = v198;
          v182(v189, v198);
          v182(v190, v183);
          sub_1D20A862C(v210, &qword_1EC6C7280, &qword_1D21149E0);

          sub_1D21071D4(v181, v101, type metadata accessor for HSGuidanceError);
          goto LABEL_66;
        }

        v119 = result / (v89 / 60.0);
        if (COERCE__INT64(fabs(v119)) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_75;
        }

        if (v119 <= -9.22337204e18)
        {
          goto LABEL_76;
        }

        if (v119 >= 9.22337204e18)
        {
          goto LABEL_77;
        }

        v117 = v119 % v115;
      }

      (v228)(v116, v226, v35);
      if (!v95 && v205 == 5)
      {
        sub_1D21130DC();
        v100 = v222;
        v98(v116, v35);
        (v220)(v116, v96, v35);
      }

      (v228)(v96, v116, v35);
      result = sub_1D2112BFC();
      if ((v117 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
        goto LABEL_73;
      }

      if (v117 >= *(v221 + 16))
      {
        goto LABEL_70;
      }

      *(v225 + *(v100 + 20)) = *&v199[8 * v117];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v227 = sub_1D20B720C(0, v227[2] + 1, 1, v227);
      }

      v121 = v227[2];
      v120 = v227[3];
      if (v121 >= v120 >> 1)
      {
        v227 = sub_1D20B720C(v120 > 1, v121 + 1, 1, v227);
      }

      v98(v116, v35);
      v98(v226, v35);
      v122 = v227;
      v227[2] = v121 + 1;
      result = sub_1D21071D4(v225, v122 + ((*(v213 + 80) + 32) & ~*(v213 + 80)) + *(v213 + 72) * v121, type metadata accessor for HSGuidanceValue);
      v123 = __OFADD__(v95++, 1);
      v88 = v209;
      if (v123)
      {
        goto LABEL_71;
      }
    }
  }

LABEL_81:
  __break(1u);
  return result;
}

uint64_t sub_1D20FB87C@<X0>(uint64_t a1@<X8>)
{
  v52 = a1;
  v1 = sub_1D2112E7C();
  v50 = *(v1 - 8);
  v2 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D211321C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D21132EC();
  v48 = *(v10 - 8);
  v49 = v10;
  v11 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v51 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7298, &unk_1D21149F0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v44 - v15;
  v17 = sub_1D211335C();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v44 - v23;
  sub_1D21132FC();
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_1D20A862C(v16, &qword_1EC6C7298, &unk_1D21149F0);
    v25 = sub_1D211319C();
    return (*(*(v25 - 8) + 56))(v52, 1, 1, v25);
  }

  v47 = v1;
  (*(v18 + 32))(v24, v16, v17);
  (*(v6 + 104))(v9, *MEMORY[0x1E6969868], v5);
  v27 = v17;
  v28 = v51;
  sub_1D211322C();
  (*(v6 + 8))(v9, v5);
  v29 = *(v18 + 16);
  v45 = v27;
  v46 = v24;
  v29(v22, v24, v27);
  v30 = v28;
  sub_1D21132BC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6C72A0, &qword_1D2115390);
  v31 = sub_1D21132CC();
  v32 = *(v31 - 8);
  v33 = *(v32 + 72);
  v34 = (*(v32 + 80) + 32) & ~*(v32 + 80);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_1D2116DB0;
  v36 = v35 + v34;
  v37 = *(v32 + 104);
  v37(v36, *MEMORY[0x1E6969A88], v31);
  v37(v36 + v33, *MEMORY[0x1E6969A98], v31);
  v37(v36 + 2 * v33, *MEMORY[0x1E6969A00], v31);
  sub_1D20BFD3C(v35);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_1D211324C();

  sub_1D2112E1C();
  sub_1D2112E2C();
  v38 = sub_1D2112E4C();
  if (v39)
  {
    v40 = 0;
  }

  else
  {
    v40 = v38;
  }

  result = -v40;
  if (__OFSUB__(0, v40))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  sub_1D2112E5C();
  v41 = sub_1D2112D8C();
  if (v42)
  {
    v43 = 0;
  }

  else
  {
    v43 = v41;
  }

  result = -v43;
  if (__OFSUB__(0, v43))
  {
    goto LABEL_14;
  }

  sub_1D2112D9C();
  sub_1D211328C();
  (*(v50 + 8))(v4, v47);
  (*(v48 + 8))(v30, v49);
  return (*(v18 + 8))(v46, v45);
}

uint64_t HSCleanGuidanceThresholds.init(applicableOver:useEnergy:avoidEnergy:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v8 = sub_1D2112C2C();
  (*(*(v8 - 8) + 32))(a2, a1, v8);
  result = type metadata accessor for HSCleanGuidanceThresholds(0);
  *(a2 + *(result + 20)) = a3;
  *(a2 + *(result + 24)) = a4;
  return result;
}

uint64_t HSGuidanceValue.init(interval:rating:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v6 = sub_1D2112C2C();
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  result = type metadata accessor for HSGuidanceValue(0);
  *(a2 + *(result + 20)) = a3;
  return result;
}

uint64_t HSGuidanceForecast.init(type:thresholds:interval:values:validInterval:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = *a1;
  *(a6 + 8) = a2;
  v10 = type metadata accessor for HSGuidanceForecast(0);
  v11 = v10[6];
  v12 = sub_1D2112C2C();
  v15 = *(*(v12 - 8) + 32);
  (v15)((v12 - 8), a6 + v11, a3, v12);
  *(a6 + v10[7]) = a4;
  v13 = a6 + v10[8];

  return v15(v13, a5, v12);
}

uint64_t HSHistoricalGuidance.init(interval:values:thresholds:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1D2112C2C();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  result = type metadata accessor for HSHistoricalGuidance(0);
  *(a4 + *(result + 20)) = a2;
  *(a4 + *(result + 24)) = a3;
  return result;
}

uint64_t sub_1D20FC0FC(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    result = v6 == v7;
    if (v6 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D20FC158(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    for (i = 0; ; i += 48)
    {
      v7 = *(a1 + i + 48);
      v8 = *(a1 + i + 56);
      v10 = *(a1 + i + 64);
      v9 = *(a1 + i + 72);
      v11 = *(a2 + i + 48);
      v12 = *(a2 + i + 56);
      v14 = *(a2 + i + 64);
      v13 = *(a2 + i + 72);
      v15 = *(a1 + i + 32) == *(a2 + i + 32) && *(a1 + i + 40) == *(a2 + i + 40);
      if (!v15 && (sub_1D2113E2C() & 1) == 0)
      {
        break;
      }

      if (v7 == v11 && v8 == v12)
      {
        if (v10 != v14 || v9 != v13)
        {
          return 0;
        }
      }

      else
      {
        v17 = sub_1D2113E2C();
        result = 0;
        if ((v17 & 1) == 0)
        {
          return result;
        }

        if (v10 != v14 || v9 != v13)
        {
          return result;
        }
      }

      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1D20FC26C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D211345C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7BD8, &qword_1D2119238);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v80 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v66 - v13;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7BE0, &qword_1D2119240);
  v15 = *(*(v82 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v82);
  v81 = &v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v66 - v18;
  v83 = type metadata accessor for HSIntervalBlockPayload.IntervalReading(0);
  v20 = *(*(v83 - 1) + 64);
  v21 = MEMORY[0x1EEE9AC00](v83);
  v23 = &v66 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v26 = &v66 - v25;
  v27 = *(a1 + 16);
  if (v27 != *(a2 + 16))
  {
LABEL_48:
    v64 = 0;
    return v64 & 1;
  }

  if (!v27 || a1 == a2)
  {
    v64 = 1;
    return v64 & 1;
  }

  v77 = v4;
  v67 = v14;
  v28 = (*(v24 + 80) + 32) & ~*(v24 + 80);
  v29 = a1 + v28;
  v30 = 0;
  v72 = a2 + v28;
  v78 = v27;
  v79 = (v5 + 48);
  v69 = (v5 + 32);
  v70 = v8;
  v71 = (v5 + 8);
  v73 = *(v24 + 72);
  v74 = v29;
  v31 = v81;
  v76 = v23;
  while (1)
  {
    v32 = v73 * v30;
    result = sub_1D2107AD8(v74 + v73 * v30, v26, type metadata accessor for HSIntervalBlockPayload.IntervalReading);
    if (v30 == v78)
    {
      goto LABEL_51;
    }

    v75 = v30;
    result = sub_1D2107AD8(v72 + v32, v23, type metadata accessor for HSIntervalBlockPayload.IntervalReading);
    v34 = v79;
    if (*v26 != *v23)
    {
      goto LABEL_47;
    }

    v35 = *(v26 + 1);
    v36 = *(v23 + 1);
    v37 = *(v35 + 16);
    if (v37 != *(v36 + 16))
    {
      goto LABEL_47;
    }

    if (v37 && v35 != v36)
    {
      break;
    }

LABEL_13:
    v39 = v83[7];
    v40 = v23;
    v41 = *(v82 + 48);
    sub_1D20A8580(&v26[v39], v19, &qword_1EC6C7BD8, &qword_1D2119238);
    sub_1D20A8580(&v40[v39], &v19[v41], &qword_1EC6C7BD8, &qword_1D2119238);
    v42 = *v34;
    v43 = v77;
    if ((*v34)(v19, 1, v77) == 1)
    {
      if (v42(&v19[v41], 1, v43) != 1)
      {
        goto LABEL_46;
      }

      sub_1D20A862C(v19, &qword_1EC6C7BD8, &qword_1D2119238);
      v23 = v76;
    }

    else
    {
      v44 = v67;
      sub_1D20A8580(v19, v67, &qword_1EC6C7BD8, &qword_1D2119238);
      if (v42(&v19[v41], 1, v43) == 1)
      {
        v65 = v44;
        goto LABEL_44;
      }

      v45 = v70;
      (*v69)(v70, &v19[v41], v43);
      sub_1D20FE9D8(&qword_1EC6C7BE8, MEMORY[0x1E69AA900]);
      v68 = sub_1D21137AC();
      v46 = *v71;
      v47 = v45;
      v31 = v81;
      (*v71)(v47, v43);
      v46(v44, v43);
      sub_1D20A862C(v19, &qword_1EC6C7BD8, &qword_1D2119238);
      v23 = v76;
      if ((v68 & 1) == 0)
      {
        goto LABEL_47;
      }
    }

    v48 = v83[8];
    v49 = v23;
    v50 = *(v82 + 48);
    sub_1D20A8580(&v26[v48], v31, &qword_1EC6C7BD8, &qword_1D2119238);
    sub_1D20A8580(&v49[v48], v31 + v50, &qword_1EC6C7BD8, &qword_1D2119238);
    v51 = v77;
    if (v42(v31, 1, v77) == 1)
    {
      if (v42((v31 + v50), 1, v51) != 1)
      {
        v19 = v31;
        goto LABEL_46;
      }

      sub_1D20A862C(v31, &qword_1EC6C7BD8, &qword_1D2119238);
      v23 = v76;
    }

    else
    {
      sub_1D20A8580(v31, v80, &qword_1EC6C7BD8, &qword_1D2119238);
      if (v42((v31 + v50), 1, v51) == 1)
      {
        v65 = v80;
        v19 = v31;
LABEL_44:
        (*v71)(v65, v77);
LABEL_46:
        v23 = v76;
        sub_1D20A862C(v19, &qword_1EC6C7BE0, &qword_1D2119240);
LABEL_47:
        sub_1D2107B40(v23, type metadata accessor for HSIntervalBlockPayload.IntervalReading);
        sub_1D2107B40(v26, type metadata accessor for HSIntervalBlockPayload.IntervalReading);
        goto LABEL_48;
      }

      v57 = (v31 + v50);
      v58 = v70;
      (*v69)(v70, v57, v51);
      sub_1D20FE9D8(&qword_1EC6C7BE8, MEMORY[0x1E69AA900]);
      v59 = v80;
      v60 = sub_1D21137AC();
      v61 = *v71;
      v62 = v58;
      v31 = v81;
      (*v71)(v62, v51);
      v61(v59, v51);
      sub_1D20A862C(v31, &qword_1EC6C7BD8, &qword_1D2119238);
      v23 = v76;
      if ((v60 & 1) == 0)
      {
        goto LABEL_47;
      }
    }

    v63 = v83[6];
    sub_1D211348C();
    sub_1D20FE9D8(&qword_1EC6C7848, MEMORY[0x1E69AAC08]);
    v64 = sub_1D21137AC();
    sub_1D2107B40(v23, type metadata accessor for HSIntervalBlockPayload.IntervalReading);
    sub_1D2107B40(v26, type metadata accessor for HSIntervalBlockPayload.IntervalReading);
    if (v64)
    {
      v30 = v75 + 1;
      if (v75 + 1 != v78)
      {
        continue;
      }
    }

    return v64 & 1;
  }

  v52 = (v35 + 32);
  v53 = (v36 + 40);
  while (v37)
  {
    v55 = *v52;
    v52 += 2;
    v54 = v55;
    v56 = *(v53 - 1);
    if (*v53 == 1)
    {
      if (v56 > 1)
      {
        if (v56 == 2)
        {
          if (v54 != 2)
          {
            goto LABEL_47;
          }
        }

        else if (v54 != 3)
        {
          goto LABEL_47;
        }
      }

      else if (v56)
      {
        if (v54 != 1)
        {
          goto LABEL_47;
        }
      }

      else if (v54)
      {
        goto LABEL_47;
      }
    }

    else if (v54 != v56)
    {
      goto LABEL_47;
    }

    v53 += 16;
    if (!--v37)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_51:
  __break(1u);
  return result;
}

uint64_t sub_1D20FCAB4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 40);
    do
    {
      v6 = *v3;
      v3 += 2;
      v5 = v6;
      v7 = *(v4 - 1);
      if (*v4 == 1)
      {
        if (v7 > 1)
        {
          if (v7 == 2)
          {
            if (v5 != 2)
            {
              return 0;
            }
          }

          else if (v5 != 3)
          {
            return 0;
          }
        }

        else if (v7)
        {
          if (v5 != 1)
          {
            return 0;
          }
        }

        else if (v5)
        {
          return 0;
        }
      }

      else if (v5 != v7)
      {
        return 0;
      }

      v4 += 16;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_1D20FCB58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HSGuidanceValue(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v11 = &v21 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
    return 0;
  }

  if (!v12 || a1 == a2)
  {
    return 1;
  }

  v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v14 = a1 + v13;
  v15 = a2 + v13;
  v16 = *(v9 + 72);
  while (1)
  {
    result = sub_1D2107AD8(v14, v11, type metadata accessor for HSGuidanceValue);
    if (!v12)
    {
      break;
    }

    sub_1D2107AD8(v15, v8, type metadata accessor for HSGuidanceValue);
    if ((sub_1D2112BCC() & 1) == 0)
    {
      sub_1D2107B40(v8, type metadata accessor for HSGuidanceValue);
      sub_1D2107B40(v11, type metadata accessor for HSGuidanceValue);
      return 0;
    }

    v18 = *&v11[*(v4 + 20)];
    sub_1D2107B40(v11, type metadata accessor for HSGuidanceValue);
    v19 = *&v8[*(v4 + 20)];
    sub_1D2107B40(v8, type metadata accessor for HSGuidanceValue);
    result = v18 == v19;
    v20 = v18 != v19 || v12-- == 1;
    v15 += v16;
    v14 += v16;
    if (v20)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D20FCD58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HSCleanGuidanceThresholds(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v11 = &v21 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
    return 0;
  }

  if (!v12 || a1 == a2)
  {
    return 1;
  }

  v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v14 = a1 + v13;
  v15 = a2 + v13;
  v16 = *(v9 + 72);
  while (1)
  {
    result = sub_1D2107AD8(v14, v11, type metadata accessor for HSCleanGuidanceThresholds);
    if (!v12)
    {
      break;
    }

    sub_1D2107AD8(v15, v8, type metadata accessor for HSCleanGuidanceThresholds);
    if ((sub_1D2112BCC() & 1) == 0 || *&v11[*(v4 + 20)] != *&v8[*(v4 + 20)])
    {
      sub_1D2107B40(v8, type metadata accessor for HSCleanGuidanceThresholds);
      sub_1D2107B40(v11, type metadata accessor for HSCleanGuidanceThresholds);
      return 0;
    }

    v18 = *&v11[*(v4 + 24)];
    sub_1D2107B40(v11, type metadata accessor for HSCleanGuidanceThresholds);
    v19 = *&v8[*(v4 + 24)];
    sub_1D2107B40(v8, type metadata accessor for HSCleanGuidanceThresholds);
    result = v18 == v19;
    v20 = v18 != v19 || v12-- == 1;
    v15 += v16;
    v14 += v16;
    if (v20)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D20FCF6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EnergyWindow(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v11 = &v19 - v10;
  v12 = *(a1 + 16);
  if (v12 == *(a2 + 16))
  {
    if (!v12 || a1 == a2)
    {
      v17 = 1;
    }

    else
    {
      v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v14 = a1 + v13;
      v15 = a2 + v13;
      v16 = *(v9 + 72);
      do
      {
        sub_1D2107AD8(v14, v11, type metadata accessor for EnergyWindow);
        sub_1D2107AD8(v15, v8, type metadata accessor for EnergyWindow);
        v17 = static EnergyWindow.== infix(_:_:)(v11, v8);
        sub_1D2107B40(v8, type metadata accessor for EnergyWindow);
        sub_1D2107B40(v11, type metadata accessor for EnergyWindow);
        if ((v17 & 1) == 0)
        {
          break;
        }

        v15 += v16;
        v14 += v16;
        --v12;
      }

      while (v12);
    }
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t sub_1D20FD114(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_1D2113E2C() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1D20FD1A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GridGuidance();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v11 = &v22 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
    return 0;
  }

  if (!v12 || a1 == a2)
  {
    return 1;
  }

  v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v14 = a1 + v13;
  v15 = a2 + v13;
  v16 = *(v9 + 72);
  while (1)
  {
    result = sub_1D2107AD8(v14, v11, type metadata accessor for GridGuidance);
    if (!v12)
    {
      break;
    }

    sub_1D2107AD8(v15, v8, type metadata accessor for GridGuidance);
    if ((sub_1D211315C() & 1) == 0 || (v18 = *(v4 + 20), (sub_1D211315C() & 1) == 0))
    {
      sub_1D2107B40(v8, type metadata accessor for GridGuidance);
      sub_1D2107B40(v11, type metadata accessor for GridGuidance);
      return 0;
    }

    v19 = *&v11[*(v4 + 24)];
    sub_1D2107B40(v11, type metadata accessor for GridGuidance);
    v20 = *&v8[*(v4 + 24)];
    sub_1D2107B40(v8, type metadata accessor for GridGuidance);
    result = v19 == v20;
    v21 = v19 != v20 || v12-- == 1;
    v15 += v16;
    v14 += v16;
    if (v21)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t _s12HomeServices06EnergyB0V19getForecastGuidance8withType0G6GridId0G8RatePlan0G11TimeService0G7SessionAA010HSGuidanceE0VAA0pH0O_SSAA06HSRateL0VSgAA0mN0CSgSo12NSURLSessionCtYaAA0P5ErrorOYKFZ(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 16) = a8;
  v15 = *(*(type metadata accessor for HSGuidanceError(0) - 8) + 64) + 15;
  v16 = swift_task_alloc();
  *(v8 + 24) = v16;
  *(v8 + 40) = *a2;
  v17 = swift_task_alloc();
  *(v8 + 32) = v17;
  *v17 = v8;
  v17[1] = sub_1D20FD4D4;

  return sub_1D20C0CFC(a1, a3, a4, (v8 + 40), a5, a7, v16);
}

uint64_t sub_1D20FD4D4()
{
  v2 = *v1;
  v3 = *(*v1 + 32);
  v4 = *v1;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D20FD60C, 0, 0);
  }

  else
  {
    v5 = *(v2 + 24);

    v6 = *(v4 + 8);

    return v6();
  }
}

uint64_t sub_1D20FD60C()
{
  sub_1D21071D4(v0[3], v0[2], type metadata accessor for HSGuidanceError);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1D20FD690@<X0>(uint64_t a1@<X8>)
{
  v52 = a1;
  v1 = sub_1D2112E7C();
  v50 = *(v1 - 8);
  v2 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D211321C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D21132EC();
  v48 = *(v10 - 8);
  v49 = v10;
  v11 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v51 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7298, &unk_1D21149F0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v44 - v15;
  v17 = sub_1D211335C();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v44 - v23;
  sub_1D21132FC();
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_1D20A862C(v16, &qword_1EC6C7298, &unk_1D21149F0);
    v25 = sub_1D211319C();
    return (*(*(v25 - 8) + 56))(v52, 1, 1, v25);
  }

  v47 = v1;
  (*(v18 + 32))(v24, v16, v17);
  (*(v6 + 104))(v9, *MEMORY[0x1E6969868], v5);
  v27 = v17;
  v28 = v51;
  sub_1D211322C();
  (*(v6 + 8))(v9, v5);
  v29 = *(v18 + 16);
  v45 = v27;
  v46 = v24;
  v29(v22, v24, v27);
  v30 = v28;
  sub_1D21132BC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6C72A0, &qword_1D2115390);
  v31 = sub_1D21132CC();
  v32 = *(v31 - 8);
  v33 = *(v32 + 72);
  v34 = (*(v32 + 80) + 32) & ~*(v32 + 80);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_1D2116DB0;
  v36 = v35 + v34;
  v37 = *(v32 + 104);
  v37(v36, *MEMORY[0x1E6969A88], v31);
  v37(v36 + v33, *MEMORY[0x1E6969A98], v31);
  v37(v36 + 2 * v33, *MEMORY[0x1E6969A00], v31);
  sub_1D20BFD3C(v35);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_1D211324C();

  sub_1D2112E1C();
  sub_1D2112E2C();
  v38 = sub_1D2112E4C();
  if (v39)
  {
    v40 = 0;
  }

  else
  {
    v40 = v38;
  }

  result = -v40;
  if (__OFSUB__(0, v40))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  sub_1D2112E5C();
  v41 = sub_1D2112D8C();
  if (v42)
  {
    v43 = 0;
  }

  else
  {
    v43 = v41;
  }

  result = -v43;
  if (__OFSUB__(0, v43))
  {
    goto LABEL_14;
  }

  sub_1D2112D9C();
  sub_1D211328C();
  (*(v50 + 8))(v4, v47);
  (*(v48 + 8))(v30, v49);
  return (*(v18 + 8))(v46, v45);
}

uint64_t _s12HomeServices06EnergyB0V19getForecastGuidance8withType0G6GridId0G8RatePlan0G7SessionAA010HSGuidanceE0VAA0nH0O_SSAA06HSRateL0VSgSo12NSURLSessionCtYaAA0N5ErrorOYKFZ(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 48) = a6;
  *(v7 + 56) = a7;
  *(v7 + 32) = a4;
  *(v7 + 40) = a5;
  *(v7 + 16) = a1;
  *(v7 + 24) = a3;
  v9 = *(*(type metadata accessor for HSGuidanceError(0) - 8) + 64) + 15;
  *(v7 + 64) = swift_task_alloc();
  *(v7 + 81) = *a2;

  return MEMORY[0x1EEE6DFA0](sub_1D20FDD48, 0, 0);
}

uint64_t sub_1D20FDD48()
{
  if (qword_1EE084300 != -1)
  {
    swift_once();
  }

  *(v0 + 80) = *(v0 + 81);
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = sub_1D20FDE28;
  v2 = *(v0 + 64);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 24);
  v6 = *(v0 + 32);
  v7 = *(v0 + 16);

  return sub_1D20C0CFC(v7, v5, v6, (v0 + 80), v3, v4, v2);
}

uint64_t sub_1D20FDE28()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *v1;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D20FDF60, 0, 0);
  }

  else
  {
    v5 = *(v2 + 64);

    v6 = *(v4 + 8);

    return v6();
  }
}

uint64_t sub_1D20FDF60()
{
  sub_1D21071D4(v0[8], v0[7], type metadata accessor for HSGuidanceError);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1D20FDFE4(uint64_t a1)
{
  v44 = a1;
  v1 = sub_1D2112E7C();
  v46 = *(v1 - 8);
  v2 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v45 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D211321C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D21132EC();
  v42 = *(v9 - 8);
  v43 = v9;
  v10 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7298, &unk_1D21149F0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v41 - v15;
  v17 = sub_1D211335C();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v41 - v23;
  sub_1D21132FC();
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_1D20A862C(v16, &qword_1EC6C7298, &unk_1D21149F0);
    return 0;
  }

  v41 = v1;
  (*(v18 + 32))(v24, v16, v17);
  (*(v5 + 104))(v8, *MEMORY[0x1E6969868], v4);
  sub_1D211322C();
  (*(v5 + 8))(v8, v4);
  (*(v18 + 16))(v22, v24, v17);
  sub_1D21132BC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6C72A0, &qword_1D2115390);
  v25 = sub_1D21132CC();
  v26 = *(v25 - 8);
  v27 = *(v26 + 72);
  v28 = (*(v26 + 80) + 32) & ~*(v26 + 80);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1D2115280;
  v30 = v29 + v28;
  v31 = *(v26 + 104);
  v31(v30, *MEMORY[0x1E6969A58], v25);
  v31(v30 + v27, *MEMORY[0x1E6969A88], v25);
  sub_1D20BFD3C(v29);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v32 = v45;
  sub_1D211324C();

  v33 = sub_1D2112DCC();
  if (v34)
  {
    (*(v46 + 8))(v32, v41);
    (*(v42 + 8))(v12, v43);
    (*(v18 + 8))(v24, v17);
    return 0;
  }

  v35 = v33;
  v36 = sub_1D2112E1C();
  v38 = v37;
  (*(v46 + 8))(v32, v41);
  (*(v42 + 8))(v12, v43);
  result = (*(v18 + 8))(v24, v17);
  if (v38)
  {
    return 0;
  }

  v40 = 60 * v35;
  if ((v35 * 60) >> 64 != (60 * v35) >> 63)
  {
    __break(1u);
    goto LABEL_12;
  }

  result = v40 + v36;
  if (__OFADD__(v40, v36))
  {
LABEL_12:
    __break(1u);
  }

  return result;
}

uint64_t _s12HomeServices06EnergyB0V26generateGuidanceValueIndex14strideInterval11minuteOfDay19guidanceRatingCountSiSd_S2itAA15HSGuidanceErrorOYKFZ(uint64_t result, uint64_t a2, void *a3, double a4)
{
  if (a2 <= 0)
  {
    *a3 = 0xD000000000000029;
    a3[1] = 0x80000001D211A5E0;
    type metadata accessor for HSGuidanceError(0);
    swift_storeEnumTagMultiPayload();
    sub_1D20FE9D8(&qword_1EE083C08, type metadata accessor for HSGuidanceError);
    return swift_willThrowTypedImpl();
  }

  v4 = result / (a4 / 60.0);
  if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
  }

  else if (v4 > -9.22337204e18)
  {
    if (v4 < 9.22337204e18)
    {
      return v4 % a2;
    }

    goto LABEL_9;
  }

  __break(1u);
LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1D20FE6E4@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  v24[1] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7248, &qword_1D2114A80);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = v24 - v5;
  v7 = sub_1D211319C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = v24 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = v24 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = v24 - v19;
  sub_1D20D4E80(v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1D20A862C(v6, &qword_1EC6C7248, &qword_1D2114A80);
    *a1 = 0xD00000000000001DLL;
    a1[1] = 0x80000001D211B9C0;
    type metadata accessor for HSGuidanceError(0);
    swift_storeEnumTagMultiPayload();
    sub_1D20FE9D8(&qword_1EE083C08, type metadata accessor for HSGuidanceError);
    return swift_willThrowTypedImpl();
  }

  else
  {
    (*(v8 + 32))(v20, v6, v7);
    sub_1D21130DC();
    v22 = *(v8 + 16);
    v22(v15, v20, v7);
    v22(v12, v18, v7);
    sub_1D2112BEC();
    v23 = *(v8 + 8);
    v23(v18, v7);
    return (v23)(v20, v7);
  }
}

uint64_t sub_1D20FE9D8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s12HomeServices06EnergyB0V26generateHSGuidanceForecast11currentTime10thresholds4type12valueRatings10forceIndex7endDate14strideInterval12guidanceTypeAA0eF0V10Foundation0P0V_SayAA25HSCleanGuidanceThresholdsVGAN04MockT0OSaySdGSgSbAQSgSiAA0eT0OtAA0E5ErrorOYKFZ@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X6>, unsigned __int8 *a7@<X7>, uint64_t a8@<X8>, uint64_t a9)
{
  v168 = a6;
  v174 = a5;
  v180 = a4;
  v155 = a2;
  v154 = a8;
  v178 = type metadata accessor for HSGuidanceValue(0);
  v173 = *(v178 - 8);
  v12 = *(v173 + 64);
  v13 = MEMORY[0x1EEE9AC00](v178);
  v179 = (&v148 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v184 = (&v148 - v15);
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7278, &unk_1D2115720);
  v16 = *(*(v166 - 8) + 64);
  MEMORY[0x1EEE9AC00](v166);
  v177 = &v148 - v17;
  v18 = sub_1D211319C();
  v186 = *(v18 - 8);
  v19 = *(v186 + 64);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v182 = &v148 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v181 = &v148 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v175 = &v148 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v187 = &v148 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v185 = &v148 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v183 = &v148 - v31;
  MEMORY[0x1EEE9AC00](v30);
  v176 = (&v148 - v32);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7248, &qword_1D2114A80);
  v34 = *(*(v33 - 8) + 64);
  v35 = MEMORY[0x1EEE9AC00](v33 - 8);
  v172 = &v148 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v167 = &v148 - v37;
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7240, &unk_1D21149B0);
  v38 = *(*(v164 - 8) + 64);
  MEMORY[0x1EEE9AC00](v164);
  v162 = &v148 - v39;
  v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7280, &qword_1D21149E0);
  v40 = *(*(v188 - 1) + 64);
  v41 = MEMORY[0x1EEE9AC00](v188);
  v165 = (&v148 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v41);
  v169 = (&v148 - v43);
  v156 = type metadata accessor for HSGuidanceError(0);
  v44 = *(*(v156 - 8) + 64);
  v45 = MEMORY[0x1EEE9AC00](v156);
  v159 = (&v148 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0));
  v47 = MEMORY[0x1EEE9AC00](v45);
  v49 = &v148 - v48;
  v50 = MEMORY[0x1EEE9AC00](v47);
  v52 = &v148 - v51;
  MEMORY[0x1EEE9AC00](v50);
  v54 = (&v148 - v53);
  v55 = sub_1D2112C2C();
  v157 = *(v55 - 8);
  v56 = *(v157 + 64);
  MEMORY[0x1EEE9AC00](v55);
  v58 = &v148 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = *a3;
  v60 = *a7;
  v61 = v189;
  sub_1D20FE6E4(v54, v58);
  if (v61)
  {
    return sub_1D21071D4(v54, a9, type metadata accessor for HSGuidanceError);
  }

  v160 = v49;
  v149 = v52;
  v171 = v59;
  v151 = v60;
  v152 = 0;
  v63 = v186;
  v170 = v58;
  v161 = a1;
  v153 = v55;
  v64 = v162;
  if (v180)
  {
    sub_1D2112C0C();
    v189 = *(v164 + 36);
    result = sub_1D2112BDC();
    v65 = v168;
    v66 = v188;
    if (v168)
    {
      v67 = v169;
      v68 = v169 + *(v188 + 11);
      v175 = *(v166 + 48);
      v69 = *(v63 + 32);
      v69(&v175[v68], v64, v18);
      v163 = *(v66 + 9);
      v181 = (v63 + 32);
      v179 = v69;
      v69(v163 + v67, &v189[v64], v18);
      v159 = *(v66 + 10);
      *(v159 + v67) = v65;
      v71 = *(v63 + 16);
      v70 = v63 + 16;
      v150 = (v63 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v189 = v71;
      (v71)(v67, &v175[v68], v18);
      v72 = 0;
      *v68 = 0;
      v172 = v68;
      *(v68 + 8) = 0;
      v182 = (v70 - 8);
      v158 = (v70 + 24);
      v165 = (v70 + 40);
      v164 = v70 + 32;
      v162 = (v180 + 32);
      v188 = MEMORY[0x1E69E7CC0];
      v73 = v65 / 60.0;
      v74 = v174;
      v75 = v173;
      v76 = v176;
      v186 = v70;
      while (1)
      {
        (v189)(v76, &v175[v172], v18);
        sub_1D20FE9D8(&qword_1EE0843E0, MEMORY[0x1E6969530]);
        if (v65 <= 0)
        {
          if (sub_1D211379C())
          {
LABEL_8:
            v77 = *v182;
            (*v182)(v76, v18);
            v78 = 1;
            v79 = v183;
            v80 = v185;
            v81 = v167;
            goto LABEL_11;
          }
        }

        else if (sub_1D211378C())
        {
          goto LABEL_8;
        }

        v82 = v172;
        v83 = v177;
        sub_1D20A8580(v172, v177, &qword_1EC6C7278, &unk_1D2115720);
        v84 = *v83;
        v85 = *(v83 + 8);
        v86 = *(v166 + 48);
        sub_1D20FE9D8(&qword_1EC6C7288, MEMORY[0x1E6969530]);
        v87 = v183;
        v88 = sub_1D2113B1C();
        LOBYTE(v85) = v89;
        v77 = *v182;
        v90 = v83 + v86;
        v74 = v174;
        (*v182)(v90, v18);
        *v82 = v88;
        v79 = v87;
        v75 = v173;
        *(v82 + 8) = v85 & 1;
        (*v158)(&v175[v82], v79, v18);
        v81 = v167;
        v179(v167, v176, v18);
        v78 = 0;
        v80 = v185;
LABEL_11:
        (*v165)(v81, v78, 1, v18);
        if ((*v164)(v81, 1, v18) == 1)
        {
          v136 = v161;
          v137 = v169;
          goto LABEL_58;
        }

        v179(v80, v81, v18);
        result = sub_1D20FDFE4(v80);
        if (v91)
        {

          v138 = v149;
          *v149 = 0xD00000000000001BLL;
          v138[1] = 0x80000001D211A5C0;
          swift_storeEnumTagMultiPayload();
          sub_1D20FE9D8(&qword_1EE083C08, type metadata accessor for HSGuidanceError);
          swift_willThrowTypedImpl();
          (v77)(v80, v18);
          (*(v157 + 8))(v170, v153);
          sub_1D20A862C(v169, &qword_1EC6C7280, &qword_1D21149E0);
          v54 = v138;
          return sub_1D21071D4(v54, a9, type metadata accessor for HSGuidanceError);
        }

        v92 = *(v180 + 16);
        if (v74)
        {
          if (!v92)
          {
            goto LABEL_66;
          }

          v93 = v72 % v92;
        }

        else
        {
          v94 = v160;
          if (!v92)
          {
            *v160 = 0xD000000000000029;
            v94[1] = 0x80000001D211A5E0;
            v147 = v94;
            swift_storeEnumTagMultiPayload();
            sub_1D20FE9D8(&qword_1EE083C08, type metadata accessor for HSGuidanceError);
            swift_willThrowTypedImpl();
            (v77)(v80, v18);
            (*(v157 + 8))(v170, v153);
            sub_1D20A862C(v169, &qword_1EC6C7280, &qword_1D21149E0);

            v54 = v149;
            sub_1D21071D4(v147, v149, type metadata accessor for HSGuidanceError);
            return sub_1D21071D4(v54, a9, type metadata accessor for HSGuidanceError);
          }

          v95 = result / v73;
          if (COERCE__INT64(fabs(v95)) > 0x7FEFFFFFFFFFFFFFLL)
          {
            goto LABEL_67;
          }

          if (v95 <= -9.22337204e18)
          {
            goto LABEL_68;
          }

          if (v95 >= 9.22337204e18)
          {
            goto LABEL_69;
          }

          v93 = v95 % v92;
        }

        (v189)(v187, v185, v18);
        if (!v72 && v171 == 5)
        {
          sub_1D21130DC();
          v79 = v183;
          v96 = v187;
          (v77)(v187, v18);
          v179(v96, v79, v18);
        }

        (v189)(v79, v187, v18);
        result = sub_1D2112BFC();
        if ((v93 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_62:
          __break(1u);
LABEL_63:
          __break(1u);
LABEL_64:
          __break(1u);
          goto LABEL_65;
        }

        if (v93 >= *(v180 + 16))
        {
          goto LABEL_62;
        }

        *(v184 + *(v178 + 20)) = *&v162[8 * v93];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v188 = sub_1D20B720C(0, v188[2] + 1, 1, v188);
        }

        v98 = v188[2];
        v97 = v188[3];
        if (v98 >= v97 >> 1)
        {
          v188 = sub_1D20B720C(v97 > 1, v98 + 1, 1, v188);
        }

        v77();
        (v77)(v185, v18);
        v99 = v188;
        v188[2] = v98 + 1;
        result = sub_1D21071D4(v184, v99 + ((*(v75 + 80) + 32) & ~*(v75 + 80)) + *(v75 + 72) * v98, type metadata accessor for HSGuidanceValue);
        v100 = __OFADD__(v72++, 1);
        v65 = v168;
        v76 = v176;
        if (v100)
        {
          goto LABEL_63;
        }
      }
    }

LABEL_73:
    __break(1u);
  }

  else
  {
    v101 = v170;
    sub_1D2112C0C();
    v189 = *(v164 + 36);
    v102 = v101;
    sub_1D2112BDC();
    v103 = v165;
    v104 = v165 + *(v188 + 11);
    v105 = *(v166 + 48);
    v106 = v63;
    v107 = (v63 + 32);
    v108 = *(v63 + 32);
    v108(&v105[v104], v64, v18);
    v180 = *(v188 + 9);
    v184 = v108;
    v185 = v107;
    v108(v103 + v180, &v189[v64], v18);
    v164 = *(v188 + 10);
    *(v103 + v164) = 0x409C200000000000;
    v109 = *(v106 + 16);
    v106 += 16;
    v150 = v106 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v189 = v109;
    (v109)(v103, &v105[v104], v18);
    v110 = 0;
    v187 = (v106 - 8);
    *v104 = 0;
    v163 = (v106 + 24);
    v176 = (v106 + 40);
    v186 = v106;
    v169 = (v106 + 32);
    v188 = MEMORY[0x1E69E7CC0];
    *(v104 + 8) = 0;
    v111 = v172;
    v168 = v104;
    v167 = v105;
    while (1)
    {
      v112 = v175;
      (v189)(v175, &v105[v104], v18);
      sub_1D20FE9D8(&qword_1EE0843E0, MEMORY[0x1E6969530]);
      if (sub_1D211378C())
      {
        v113 = *v187;
        (*v187)(v112, v18);
        v114 = 1;
        v115 = v183;
        v116 = v184;
      }

      else
      {
        v118 = v177;
        sub_1D20A8580(v104, v177, &qword_1EC6C7278, &unk_1D2115720);
        v119 = *v118;
        v120 = *(v118 + 8);
        v121 = *(v166 + 48);
        sub_1D20FE9D8(&qword_1EC6C7288, MEMORY[0x1E6969530]);
        v122 = v183;
        v123 = sub_1D2113B1C();
        LOBYTE(v120) = v124;
        v113 = *v187;
        (*v187)(v177 + v121, v18);
        *v104 = v123;
        v115 = v122;
        v102 = v170;
        *(v104 + 8) = v120 & 1;
        (*v163)(&v105[v104], v115, v18);
        v111 = v172;
        v116 = v184;
        v184(v172, v175, v18);
        v114 = 0;
      }

      v117 = v181;
      (*v176)(v111, v114, 1, v18);
      if ((*v169)(v111, 1, v18) == 1)
      {
        break;
      }

      v116(v117, v111, v18);
      result = sub_1D20FDFE4(v117);
      if (v125)
      {

        v146 = v159;
        *v159 = 0xD00000000000001BLL;
        v146[1] = 0x80000001D211A5C0;
        swift_storeEnumTagMultiPayload();
        sub_1D20FE9D8(&qword_1EE083C08, type metadata accessor for HSGuidanceError);
        swift_willThrowTypedImpl();
        v113(v117, v18);
        (*(v157 + 8))(v102, v153);
        sub_1D20A862C(v165, &qword_1EC6C7280, &qword_1D21149E0);
        v54 = v146;
        return sub_1D21071D4(v54, a9, type metadata accessor for HSGuidanceError);
      }

      v126 = v110;
      v127 = v171;
      if ((v174 & 1) == 0)
      {
        v128 = result / 30.0;
        if (COERCE__INT64(fabs(v128)) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_70;
        }

        if (v128 <= -9.22337204e18)
        {
          goto LABEL_71;
        }

        if (v128 >= 9.22337204e18)
        {
          goto LABEL_72;
        }

        v126 = v128;
      }

      (v189)(v182, v181, v18);
      if (!v110 && v127 == 5)
      {
        sub_1D21130DC();
        v129 = v182;
        v115 = v183;
        v113(v182, v18);
        v116(v129, v115, v18);
      }

      v130 = v115;
      v131 = v126 % 48;
      (v189)(v130, v182, v18);
      v132 = v179;
      result = sub_1D2112BFC();
      if (v131 < 0)
      {
        goto LABEL_64;
      }

      *(v132 + *(v178 + 20)) = qword_1F4D9E420[v131 + 4];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v188 = sub_1D20B720C(0, v188[2] + 1, 1, v188);
      }

      v102 = v170;
      v134 = v188[2];
      v133 = v188[3];
      if (v134 >= v133 >> 1)
      {
        v188 = sub_1D20B720C(v133 > 1, v134 + 1, 1, v188);
      }

      v113(v182, v18);
      v113(v181, v18);
      v135 = v188;
      v188[2] = v134 + 1;
      result = sub_1D21071D4(v179, v135 + ((*(v173 + 80) + 32) & ~*(v173 + 80)) + *(v173 + 72) * v134, type metadata accessor for HSGuidanceValue);
      v100 = __OFADD__(v110++, 1);
      v104 = v168;
      v105 = v167;
      if (v100)
      {
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
        goto LABEL_73;
      }
    }

    v137 = v165;
    v136 = v161;
LABEL_58:
    sub_1D20A862C(v137, &qword_1EC6C7280, &qword_1D21149E0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7AD0, &qword_1D2118488);
    v139 = swift_allocObject();
    *(v139 + 16) = xmmword_1D2114850;
    *(v139 + 56) = MEMORY[0x1E69E6158];
    *(v139 + 32) = 0xD000000000000021;
    *(v139 + 40) = 0x80000001D211B930;
    sub_1D2113EBC();

    v140 = type metadata accessor for HSGuidanceForecast(0);
    v141 = v157;
    v142 = v154;
    v143 = v170;
    v144 = v153;
    (*(v157 + 16))(v154 + v140[6], v170, v153);
    (v189)(v183, v136, v18);
    v145 = v142 + v140[8];
    sub_1D2112BFC();
    (*(v141 + 8))(v143, v144);
    *v142 = v151;
    *(v142 + 8) = v155;
    *(v142 + v140[7]) = v188;
  }

  return result;
}

uint64_t _s12HomeServices06EnergyB0V21getHistoricalGuidance10withGridId11forIntervalAA012HSHistoricalF0VSS_10Foundation04DateK0VtYaAA15HSGuidanceErrorOYKFZ(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = sub_1D2112C2C();
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v8 = *(v7 + 64) + 15;
  v5[9] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7248, &qword_1D2114A80) - 8) + 64) + 15;
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();
  v5[12] = swift_task_alloc();
  v10 = sub_1D211319C();
  v5[13] = v10;
  v11 = *(v10 - 8);
  v5[14] = v11;
  v12 = *(v11 + 64) + 15;
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();
  v5[22] = swift_task_alloc();
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();
  v5[25] = swift_task_alloc();
  v13 = type metadata accessor for HSGuidanceError(0);
  v5[26] = v13;
  v14 = *(*(v13 - 8) + 64) + 15;
  v5[27] = swift_task_alloc();
  v5[28] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D21002F8, 0, 0);
}

uint64_t sub_1D21002F8()
{
  if (qword_1EE084300 != -1)
  {
    swift_once();
  }

  v1 = v0[25];
  v2 = v0[23];
  v3 = v0[13];
  v4 = v0[5];
  v5 = [objc_opt_self() sharedSession];
  v0[29] = v5;
  sub_1D211318C();
  sub_1D2112BDC();
  sub_1D20FE9D8(&qword_1EE0843E0, MEMORY[0x1E6969530]);
  if (sub_1D211377C())
  {
    v7 = v0[24];
    v6 = v0[25];
    v9 = v0[13];
    v8 = v0[14];
    (*(v8 + 8))(v0[23], v9);
    (*(v8 + 16))(v7, v6, v9);
  }

  else
  {
    (*(v0[14] + 32))(v0[24], v0[23], v0[13]);
  }

  v10 = v0[24];
  v11 = v0[21];
  v12 = v0[13];
  v13 = v0[5];
  sub_1D2112C0C();
  if (sub_1D211377C())
  {
    v14 = v0[24];
    v15 = v0[22];
    v17 = v0[13];
    v16 = v0[14];
    (*(v16 + 8))(v0[21], v17);
    (*(v16 + 16))(v15, v14, v17);
  }

  else
  {
    (*(v0[14] + 32))(v0[22], v0[21], v0[13]);
  }

  v18 = v0[22];
  v19 = v0[13];
  v20 = v0[14];
  v21 = v0[12];
  sub_1D20FB87C(v21);
  v22 = *(v20 + 48);
  if (v22(v21, 1, v19) == 1)
  {
    v23 = v0[28];
    v24 = v0[25];
    v25 = v0[26];
    v26 = v0[24];
    v27 = v0[22];
    v29 = v0[13];
    v28 = v0[14];
    sub_1D20A862C(v0[12], &qword_1EC6C7248, &qword_1D2114A80);
    *v23 = 0xD00000000000001FLL;
    v23[1] = 0x80000001D211B960;
    swift_storeEnumTagMultiPayload();
    sub_1D20FE9D8(&qword_1EE083C08, type metadata accessor for HSGuidanceError);
    swift_willThrowTypedImpl();

    v30 = *(v28 + 8);
    v30(v27, v29);
    v30(v26, v29);
    v30(v24, v29);
LABEL_18:
    v51 = v0[27];
    v52 = v0[24];
    v53 = v0[25];
    v55 = v0[22];
    v54 = v0[23];
    v57 = v0[20];
    v56 = v0[21];
    v58 = v0[19];
    v73 = v0[18];
    v74 = v0[17];
    v75 = v0[16];
    v77 = v0[15];
    v79 = v0[12];
    v81 = v0[11];
    v83 = v0[10];
    v85 = v0[9];
    sub_1D21071D4(v0[28], v0[6], type metadata accessor for HSGuidanceError);

    v59 = v0[1];

    return v59();
  }

  v31 = v0 + 11;
  v32 = v0[11];
  v33 = v0[24];
  v34 = v0[13];
  v82 = *(v0[14] + 32);
  v84 = v5;
  v82(v0[20], v0[12], v34);
  sub_1D20FD690(v32);
  if (v22(v32, 1, v34) == 1)
  {
LABEL_17:
    v41 = *v31;
    v42 = v0[28];
    v43 = v0[25];
    v44 = v0[26];
    v45 = v0[24];
    v46 = v0[22];
    v47 = v0[20];
    v49 = v0[13];
    v48 = v0[14];
    sub_1D20A862C(v41, &qword_1EC6C7248, &qword_1D2114A80);
    *v42 = 0xD00000000000001CLL;
    v42[1] = 0x80000001D211B980;
    swift_storeEnumTagMultiPayload();
    sub_1D20FE9D8(&qword_1EE083C08, type metadata accessor for HSGuidanceError);
    swift_willThrowTypedImpl();

    v50 = *(v48 + 8);
    v50(v47, v49);
    v50(v46, v49);
    v50(v45, v49);
    v50(v43, v49);
    goto LABEL_18;
  }

  v31 = v0 + 10;
  v35 = v0[25];
  v36 = v0[19];
  v76 = v0[17];
  v78 = v0[10];
  v38 = v0[13];
  v37 = v0[14];
  v82(v36, v0[11], v38);
  if (sub_1D211377C())
  {
    v39 = v35;
  }

  else
  {
    v39 = v36;
  }

  v80 = *(v37 + 16);
  v80(v76, v39, v38);
  sub_1D20FB87C(v78);
  v40 = *(v37 + 8);
  v0[30] = v40;
  v0[31] = (v37 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v40(v76, v38);
  if (v22(v78, 1, v38) == 1)
  {
    v40(v0[19], v0[13]);
    goto LABEL_17;
  }

  v61 = v0[20];
  v62 = v0[18];
  v64 = v0[15];
  v63 = v0[16];
  v65 = v0[13];
  v66 = v0[9];
  v82(v62, v0[10], v65);
  v80(v63, v61, v65);
  v80(v64, v62, v65);
  sub_1D2112BEC();
  v67 = swift_task_alloc();
  v0[32] = v67;
  *v67 = v0;
  v67[1] = sub_1D2100A64;
  v68 = v0[27];
  v69 = v0[9];
  v70 = v0[3];
  v71 = v0[4];
  v72 = v0[2];

  return sub_1D20C4B9C(v72, v70, v71, v69, v84, v68);
}

uint64_t sub_1D2100A64()
{
  v2 = *(*v1 + 256);
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  v5 = *(*v1 + 56);
  v8 = *v1;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_1D2100D68;
  }

  else
  {
    v6 = sub_1D2100BD0;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1D2100BD0()
{
  v2 = *(v0 + 240);
  v1 = *(v0 + 248);
  v12 = *(v0 + 224);
  v13 = *(v0 + 216);
  v3 = *(v0 + 192);
  v4 = *(v0 + 200);
  v5 = *(v0 + 176);
  v6 = *(v0 + 160);
  v14 = *(v0 + 184);
  v15 = *(v0 + 168);
  v7 = *(v0 + 144);
  v8 = *(v0 + 152);
  v16 = *(v0 + 136);
  v17 = *(v0 + 128);
  v9 = *(v0 + 104);
  v18 = *(v0 + 120);
  v19 = *(v0 + 96);
  v20 = *(v0 + 88);
  v21 = *(v0 + 80);
  v22 = *(v0 + 72);

  v2(v7, v9);
  v2(v8, v9);
  v2(v6, v9);
  v2(v5, v9);
  v2(v3, v9);
  v2(v4, v9);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1D2100D68()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 248);
  v26 = *(v0 + 216);
  v28 = *(v0 + 224);
  v4 = *(v0 + 192);
  v3 = *(v0 + 200);
  v5 = *(v0 + 176);
  v7 = *(v0 + 152);
  v6 = *(v0 + 160);
  v8 = *(v0 + 144);
  v9 = *(v0 + 104);

  v1(v8, v9);
  v1(v7, v9);
  v1(v6, v9);
  v1(v5, v9);
  v1(v4, v9);
  v1(v3, v9);
  sub_1D21071D4(v26, v28, type metadata accessor for HSGuidanceError);
  v10 = *(v0 + 216);
  v11 = *(v0 + 192);
  v12 = *(v0 + 200);
  v14 = *(v0 + 176);
  v13 = *(v0 + 184);
  v16 = *(v0 + 160);
  v15 = *(v0 + 168);
  v19 = *(v0 + 152);
  v20 = *(v0 + 144);
  v21 = *(v0 + 136);
  v22 = *(v0 + 128);
  v23 = *(v0 + 120);
  v24 = *(v0 + 96);
  v25 = *(v0 + 88);
  v27 = *(v0 + 80);
  v29 = *(v0 + 72);
  sub_1D21071D4(*(v0 + 224), *(v0 + 48), type metadata accessor for HSGuidanceError);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t _s12HomeServices06EnergyB0V21getHistoricalGuidance10withGridId11forInterval0G11TimeService0G7SessionAA012HSHistoricalF0VSS_10Foundation04DateK0VAA0lM0CSo12NSURLSessionCtYaAA15HSGuidanceErrorOYKFZ(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[6] = a6;
  v7[7] = a7;
  v7[4] = a3;
  v7[5] = a4;
  v7[2] = a1;
  v7[3] = a2;
  v8 = type metadata accessor for HSGuidanceError(0);
  v7[8] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v7[9] = swift_task_alloc();
  v10 = sub_1D2112C2C();
  v7[10] = v10;
  v11 = *(v10 - 8);
  v7[11] = v11;
  v12 = *(v11 + 64) + 15;
  v7[12] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7248, &qword_1D2114A80) - 8) + 64) + 15;
  v7[13] = swift_task_alloc();
  v7[14] = swift_task_alloc();
  v7[15] = swift_task_alloc();
  v14 = sub_1D211319C();
  v7[16] = v14;
  v15 = *(v14 - 8);
  v7[17] = v15;
  v16 = *(v15 + 64) + 15;
  v7[18] = swift_task_alloc();
  v7[19] = swift_task_alloc();
  v7[20] = swift_task_alloc();
  v7[21] = swift_task_alloc();
  v7[22] = swift_task_alloc();
  v7[23] = swift_task_alloc();
  v7[24] = swift_task_alloc();
  v7[25] = swift_task_alloc();
  v7[26] = swift_task_alloc();
  v7[27] = swift_task_alloc();
  v7[28] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D2101160, 0, 0);
}

uint64_t sub_1D2101160()
{
  v1 = v0[28];
  v2 = v0[26];
  v3 = v0[16];
  v4 = v0[5];
  sub_1D211318C();
  sub_1D2112BDC();
  sub_1D20FE9D8(&qword_1EE0843E0, MEMORY[0x1E6969530]);
  if (sub_1D211377C())
  {
    v6 = v0[27];
    v5 = v0[28];
    v8 = v0[16];
    v7 = v0[17];
    (*(v7 + 8))(v0[26], v8);
    (*(v7 + 16))(v6, v5, v8);
  }

  else
  {
    (*(v0[17] + 32))(v0[27], v0[26], v0[16]);
  }

  v9 = v0[27];
  v10 = v0[24];
  v11 = v0[16];
  v12 = v0[5];
  sub_1D2112C0C();
  if (sub_1D211377C())
  {
    v13 = v0[27];
    v14 = v0[25];
    v16 = v0[16];
    v15 = v0[17];
    (*(v15 + 8))(v0[24], v16);
    (*(v15 + 16))(v14, v13, v16);
  }

  else
  {
    (*(v0[17] + 32))(v0[25], v0[24], v0[16]);
  }

  v17 = v0[25];
  v18 = v0[16];
  v19 = v0[17];
  v20 = v0[15];
  sub_1D20FB87C(v20);
  v21 = *(v19 + 48);
  v22 = v21(v20, 1, v18);
  v23 = v0[16];
  v24 = v0[17];
  v25 = v0[15];
  if (v22 == 1)
  {
    v26 = v0[27];
    v27 = v0[28];
    v28 = v0[25];
    v30 = v0[7];
    v29 = v0[8];
    sub_1D20A862C(v0[15], &qword_1EC6C7248, &qword_1D2114A80);
    *v30 = 0xD00000000000001FLL;
    v30[1] = 0x80000001D211B960;
    swift_storeEnumTagMultiPayload();
    sub_1D20FE9D8(&qword_1EE083C08, type metadata accessor for HSGuidanceError);
    swift_willThrowTypedImpl();
    v31 = *(v24 + 8);
    v31(v28, v23);
    v31(v26, v23);
    v31(v27, v23);
LABEL_16:
    v52 = v0[27];
    v51 = v0[28];
    v54 = v0[25];
    v53 = v0[26];
    v56 = v0[23];
    v55 = v0[24];
    v58 = v0[21];
    v57 = v0[22];
    v59 = v0[19];
    v60 = v0[20];
    v76 = v0[18];
    v77 = v0[15];
    v79 = v0[14];
    v81 = v0[13];
    v83 = v0[12];
    v85 = v0[9];

    v61 = v0[1];

    return v61();
  }

  v32 = v0 + 14;
  v33 = v0[14];
  v34 = v0[27];
  v84 = *(v24 + 32);
  v84(v0[23], v0[15], v0[16]);
  sub_1D20FD690(v33);
  if (v21(v33, 1, v23) == 1)
  {
LABEL_15:
    v41 = *v32;
    v43 = v0[27];
    v42 = v0[28];
    v44 = v0[25];
    v45 = v0[23];
    v46 = v0[16];
    v47 = v0[17];
    v49 = v0[7];
    v48 = v0[8];
    sub_1D20A862C(v41, &qword_1EC6C7248, &qword_1D2114A80);
    *v49 = 0xD00000000000001CLL;
    v49[1] = 0x80000001D211B980;
    swift_storeEnumTagMultiPayload();
    sub_1D20FE9D8(&qword_1EE083C08, type metadata accessor for HSGuidanceError);
    swift_willThrowTypedImpl();
    v50 = *(v47 + 8);
    v50(v45, v46);
    v50(v44, v46);
    v50(v43, v46);
    v50(v42, v46);
    goto LABEL_16;
  }

  v32 = v0 + 13;
  v35 = v0[28];
  v36 = v0[22];
  v80 = v0[20];
  v82 = v0[13];
  v38 = v0[16];
  v37 = v0[17];
  v84(v36, v0[14], v38);
  if (sub_1D211377C())
  {
    v39 = v35;
  }

  else
  {
    v39 = v36;
  }

  v78 = *(v37 + 16);
  v78(v80, v39, v38);
  sub_1D20FB87C(v82);
  v40 = *(v37 + 8);
  v0[29] = v40;
  v0[30] = (v37 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v40(v80, v38);
  if (v21(v82, 1, v38) == 1)
  {
    v40(v0[22], v0[16]);
    goto LABEL_15;
  }

  v63 = v0[23];
  v64 = v0[21];
  v66 = v0[18];
  v65 = v0[19];
  v67 = v0[16];
  v68 = v0[12];
  v84(v64, v0[13], v67);
  v78(v65, v63, v67);
  v78(v66, v64, v67);
  sub_1D2112BEC();
  v69 = swift_task_alloc();
  v0[31] = v69;
  *v69 = v0;
  v69[1] = sub_1D2101830;
  v70 = v0[12];
  v71 = v0[9];
  v72 = v0[6];
  v73 = v0[3];
  v74 = v0[4];
  v75 = v0[2];

  return sub_1D20C4B9C(v75, v73, v74, v70, v72, v71);
}

uint64_t sub_1D2101830()
{
  v2 = *(*v1 + 248);
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 88);
  v5 = *(*v1 + 80);
  v8 = *v1;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_1D2101B20;
  }

  else
  {
    v6 = sub_1D210199C;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1D210199C()
{
  v2 = v0[29];
  v1 = v0[30];
  v4 = v0[27];
  v3 = v0[28];
  v5 = v0[25];
  v6 = v0[23];
  v12 = v0[26];
  v13 = v0[24];
  v7 = v0[22];
  v14 = v0[20];
  v15 = v0[19];
  v8 = v0[16];
  v16 = v0[14];
  v17 = v0[13];
  v9 = v0[12];
  v18 = v0[9];
  v2(v0[21], v8);
  v2(v7, v8);
  v2(v6, v8);
  v2(v5, v8);
  v2(v4, v8);
  v2(v3, v8);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1D2101B20()
{
  v1 = v0[29];
  v2 = v0[30];
  v3 = v0[27];
  v4 = v0[28];
  v5 = v0[25];
  v7 = v0[22];
  v6 = v0[23];
  v8 = v0[16];
  v27 = v0[9];
  v9 = v0[7];
  v1(v0[21], v8);
  v1(v7, v8);
  v1(v6, v8);
  v1(v5, v8);
  v1(v3, v8);
  v1(v4, v8);
  sub_1D21071D4(v27, v9, type metadata accessor for HSGuidanceError);
  v11 = v0[27];
  v10 = v0[28];
  v13 = v0[25];
  v12 = v0[26];
  v15 = v0[23];
  v14 = v0[24];
  v17 = v0[21];
  v16 = v0[22];
  v18 = v0[19];
  v19 = v0[20];
  v22 = v0[18];
  v23 = v0[15];
  v24 = v0[14];
  v25 = v0[13];
  v26 = v0[12];
  v28 = v0[9];

  v20 = v0[1];

  return v20();
}

uint64_t _s12HomeServices06EnergyB0V21getHistoricalGuidance10withGridId11forInterval0G7SessionAA012HSHistoricalF0VSS_10Foundation04DateK0VSo12NSURLSessionCtYaAA15HSGuidanceErrorOYKFZ(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = sub_1D2112C2C();
  v6[8] = v7;
  v8 = *(v7 - 8);
  v6[9] = v8;
  v9 = *(v8 + 64) + 15;
  v6[10] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7248, &qword_1D2114A80) - 8) + 64) + 15;
  v6[11] = swift_task_alloc();
  v6[12] = swift_task_alloc();
  v6[13] = swift_task_alloc();
  v11 = sub_1D211319C();
  v6[14] = v11;
  v12 = *(v11 - 8);
  v6[15] = v12;
  v13 = *(v12 + 64) + 15;
  v6[16] = swift_task_alloc();
  v6[17] = swift_task_alloc();
  v6[18] = swift_task_alloc();
  v6[19] = swift_task_alloc();
  v6[20] = swift_task_alloc();
  v6[21] = swift_task_alloc();
  v6[22] = swift_task_alloc();
  v6[23] = swift_task_alloc();
  v6[24] = swift_task_alloc();
  v6[25] = swift_task_alloc();
  v6[26] = swift_task_alloc();
  v14 = type metadata accessor for HSGuidanceError(0);
  v6[27] = v14;
  v15 = *(*(v14 - 8) + 64) + 15;
  v6[28] = swift_task_alloc();
  v6[29] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D2101EF8, 0, 0);
}

uint64_t sub_1D2101EF8()
{
  if (qword_1EE084300 != -1)
  {
    swift_once();
  }

  v1 = v0[26];
  v2 = v0[24];
  v3 = v0[14];
  v4 = v0[5];
  sub_1D211318C();
  sub_1D2112BDC();
  sub_1D20FE9D8(&qword_1EE0843E0, MEMORY[0x1E6969530]);
  if (sub_1D211377C())
  {
    v6 = v0[25];
    v5 = v0[26];
    v8 = v0[14];
    v7 = v0[15];
    (*(v7 + 8))(v0[24], v8);
    (*(v7 + 16))(v6, v5, v8);
  }

  else
  {
    (*(v0[15] + 32))(v0[25], v0[24], v0[14]);
  }

  v9 = v0[25];
  v10 = v0[22];
  v11 = v0[14];
  v12 = v0[5];
  sub_1D2112C0C();
  if (sub_1D211377C())
  {
    v13 = v0[25];
    v14 = v0[23];
    v16 = v0[14];
    v15 = v0[15];
    (*(v15 + 8))(v0[22], v16);
    (*(v15 + 16))(v14, v13, v16);
  }

  else
  {
    (*(v0[15] + 32))(v0[23], v0[22], v0[14]);
  }

  v17 = v0[23];
  v18 = v0[14];
  v19 = v0[15];
  v20 = v0[13];
  sub_1D20FB87C(v20);
  v21 = *(v19 + 48);
  if (v21(v20, 1, v18) == 1)
  {
    v22 = v0[29];
    v23 = v0[26];
    v24 = v0[27];
    v25 = v0[25];
    v26 = v0[23];
    v27 = v0[14];
    v28 = v0[15];
    sub_1D20A862C(v0[13], &qword_1EC6C7248, &qword_1D2114A80);
    *v22 = 0xD00000000000001FLL;
    v22[1] = 0x80000001D211B960;
    swift_storeEnumTagMultiPayload();
    sub_1D20FE9D8(&qword_1EE083C08, type metadata accessor for HSGuidanceError);
    swift_willThrowTypedImpl();
    v29 = *(v28 + 8);
    v29(v26, v27);
    v29(v25, v27);
    v29(v23, v27);
LABEL_18:
    v49 = v0[28];
    v50 = v0[25];
    v51 = v0[26];
    v53 = v0[23];
    v52 = v0[24];
    v55 = v0[21];
    v54 = v0[22];
    v56 = v0[20];
    v72 = v0[19];
    v73 = v0[18];
    v74 = v0[17];
    v75 = v0[16];
    v77 = v0[13];
    v79 = v0[12];
    v81 = v0[11];
    v83 = v0[10];
    sub_1D21071D4(v0[29], v0[7], type metadata accessor for HSGuidanceError);

    v57 = v0[1];

    return v57();
  }

  v31 = v0 + 12;
  v30 = v0[12];
  v32 = v0[25];
  v33 = v0[14];
  v82 = *(v0[15] + 32);
  v82(v0[21], v0[13], v33);
  sub_1D20FD690(v30);
  if (v21(v30, 1, v33) == 1)
  {
LABEL_17:
    v40 = v0[29];
    v41 = v0[26];
    v42 = v0[27];
    v43 = v0[25];
    v44 = v0[23];
    v45 = v0[21];
    v46 = v0[14];
    v47 = v0[15];
    sub_1D20A862C(*v31, &qword_1EC6C7248, &qword_1D2114A80);
    *v40 = 0xD00000000000001CLL;
    v40[1] = 0x80000001D211B980;
    swift_storeEnumTagMultiPayload();
    sub_1D20FE9D8(&qword_1EE083C08, type metadata accessor for HSGuidanceError);
    swift_willThrowTypedImpl();
    v48 = *(v47 + 8);
    v48(v45, v46);
    v48(v44, v46);
    v48(v43, v46);
    v48(v41, v46);
    goto LABEL_18;
  }

  v31 = v0 + 11;
  v34 = v0[26];
  v35 = v0[20];
  v78 = v0[18];
  v80 = v0[11];
  v37 = v0[14];
  v36 = v0[15];
  v82(v35, v0[12], v37);
  if (sub_1D211377C())
  {
    v38 = v34;
  }

  else
  {
    v38 = v35;
  }

  v76 = *(v36 + 16);
  v76(v78, v38, v37);
  sub_1D20FB87C(v80);
  v39 = *(v36 + 8);
  v0[30] = v39;
  v0[31] = (v36 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v39(v78, v37);
  if (v21(v80, 1, v37) == 1)
  {
    v39(v0[20], v0[14]);
    goto LABEL_17;
  }

  v59 = v0[21];
  v60 = v0[19];
  v62 = v0[16];
  v61 = v0[17];
  v63 = v0[14];
  v64 = v0[10];
  v82(v60, v0[11], v63);
  v76(v61, v59, v63);
  v76(v62, v60, v63);
  sub_1D2112BEC();
  v65 = swift_task_alloc();
  v0[32] = v65;
  *v65 = v0;
  v65[1] = sub_1D2102630;
  v66 = v0[28];
  v67 = v0[10];
  v68 = v0[6];
  v69 = v0[3];
  v70 = v0[4];
  v71 = v0[2];

  return sub_1D20C4B9C(v71, v69, v70, v67, v68, v66);
}

uint64_t sub_1D2102630()
{
  v2 = *(*v1 + 256);
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  v5 = *(*v1 + 64);
  v8 = *v1;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_1D210292C;
  }

  else
  {
    v6 = sub_1D210279C;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1D210279C()
{
  v1 = v0[30];
  v2 = v0[31];
  v11 = v0[29];
  v12 = v0[28];
  v3 = v0[25];
  v4 = v0[26];
  v5 = v0[23];
  v6 = v0[21];
  v13 = v0[24];
  v14 = v0[22];
  v7 = v0[20];
  v15 = v0[18];
  v16 = v0[17];
  v8 = v0[14];
  v17 = v0[12];
  v18 = v0[11];
  v19 = v0[10];
  v1(v0[19], v8);
  v1(v7, v8);
  v1(v6, v8);
  v1(v5, v8);
  v1(v3, v8);
  v1(v4, v8);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1D210292C()
{
  v1 = v0[30];
  v2 = v0[31];
  v3 = v0[28];
  v27 = v0[29];
  v5 = v0[25];
  v4 = v0[26];
  v6 = v0[23];
  v8 = v0[20];
  v7 = v0[21];
  v9 = v0[14];
  v1(v0[19], v9);
  v1(v8, v9);
  v1(v7, v9);
  v1(v6, v9);
  v1(v5, v9);
  v1(v4, v9);
  sub_1D21071D4(v3, v27, type metadata accessor for HSGuidanceError);
  v10 = v0[28];
  v11 = v0[25];
  v12 = v0[26];
  v14 = v0[23];
  v13 = v0[24];
  v16 = v0[21];
  v15 = v0[22];
  v19 = v0[20];
  v20 = v0[19];
  v21 = v0[18];
  v22 = v0[17];
  v23 = v0[16];
  v24 = v0[13];
  v25 = v0[12];
  v26 = v0[11];
  v28 = v0[10];
  sub_1D21071D4(v0[29], v0[7], type metadata accessor for HSGuidanceError);

  v17 = v0[1];

  return v17();
}

uint64_t HSGuidanceForecast.values.getter()
{
  v1 = *(v0 + *(type metadata accessor for HSGuidanceForecast(0) + 28));
}

uint64_t HSGuidanceForecast.validInterval.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for HSGuidanceForecast(0) + 32);
  v4 = sub_1D2112C2C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1D2102BF4()
{
  v1 = *v0;
  v2 = 1701869940;
  v3 = 0x6C61767265746E69;
  v4 = 0x7365756C6176;
  if (v1 != 3)
  {
    v4 = 0x746E4964696C6176;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6C6F687365726874;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D2102C94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D2108CE4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D2102CC8(uint64_t a1)
{
  v2 = sub_1D21078B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2102D04(uint64_t a1)
{
  v2 = sub_1D21078B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t HSGuidanceForecast.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7AD8, &qword_1D21184A8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D21078B8();
  sub_1D2113F3C();
  LOBYTE(v16) = *v3;
  v17 = 0;
  sub_1D20D884C();
  sub_1D2113DEC();
  if (!v2)
  {
    v16 = *(v3 + 8);
    v17 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7AE0, &unk_1D21184B0);
    sub_1D21079A8(&qword_1EE083690, qword_1EE083F40);
    sub_1D2113DAC();
    v11 = type metadata accessor for HSGuidanceForecast(0);
    v12 = v11[6];
    LOBYTE(v16) = 2;
    sub_1D2112C2C();
    sub_1D20FE9D8(&qword_1EE0843E8, MEMORY[0x1E6968130]);
    sub_1D2113DEC();
    v16 = *(v3 + v11[7]);
    v17 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7788, &qword_1D21167C0);
    sub_1D210790C(&qword_1EE083DC8, qword_1EE084048);
    sub_1D2113DEC();
    v13 = v11[8];
    LOBYTE(v16) = 4;
    sub_1D2113DEC();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t HSGuidanceForecast.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  sub_1D2113EFC();
  v5 = *(v1 + 1);
  sub_1D2113EEC();
  if (v5)
  {
    sub_1D20D7FC0(a1, v5);
  }

  v6 = type metadata accessor for HSGuidanceForecast(0);
  v7 = v6[6];
  sub_1D2112C2C();
  sub_1D20FE9D8(&qword_1EC6C7798, MEMORY[0x1E6968130]);
  sub_1D211374C();
  sub_1D20D8184(a1, *&v2[v6[7]]);
  v8 = &v2[v6[8]];
  return sub_1D211374C();
}

uint64_t HSGuidanceForecast.hashValue.getter()
{
  v1 = v0;
  sub_1D2113ECC();
  v2 = *v0;
  sub_1D2113EFC();
  v3 = *(v0 + 1);
  sub_1D2113EEC();
  if (v3)
  {
    sub_1D20D7FC0(v8, v3);
  }

  v4 = type metadata accessor for HSGuidanceForecast(0);
  v5 = v4[6];
  sub_1D2112C2C();
  sub_1D20FE9D8(&qword_1EC6C7798, MEMORY[0x1E6968130]);
  sub_1D211374C();
  sub_1D20D8184(v8, *&v1[v4[7]]);
  v6 = &v1[v4[8]];
  sub_1D211374C();
  return sub_1D2113F1C();
}

uint64_t HSGuidanceForecast.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v3 = sub_1D2112C2C();
  v35 = *(v3 - 8);
  v36 = v3;
  v4 = *(v35 + 64);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v30 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7AE8, &qword_1D21184C0);
  v37 = *(v10 - 8);
  v38 = v10;
  v11 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v30 - v12;
  v14 = type metadata accessor for HSGuidanceForecast(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[3];
  v19 = a1[4];
  v40 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_1D21078B8();
  v20 = v39;
  sub_1D2113F2C();
  if (v20)
  {
    return __swift_destroy_boxed_opaque_existential_1(v40);
  }

  v21 = v9;
  v33 = v7;
  v39 = v14;
  v22 = v17;
  v23 = v35;
  v24 = v36;
  v42 = 0;
  sub_1D20D8908();
  sub_1D2113D7C();
  *v22 = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7AE0, &unk_1D21184B0);
  v42 = 1;
  sub_1D21079A8(&qword_1EE083688, &qword_1EE083908);
  sub_1D2113D3C();
  *(v22 + 8) = v41;
  LOBYTE(v41) = 2;
  v25 = sub_1D20FE9D8(&qword_1EE083DB0, MEMORY[0x1E6968130]);
  sub_1D2113D7C();
  v32 = v25;
  v26 = *(v23 + 32);
  v26(v22 + *(v39 + 24), v21, v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7788, &qword_1D21167C0);
  v42 = 3;
  sub_1D210790C(&qword_1EE0836A0, &qword_1EE083C00);
  sub_1D2113D7C();
  v31 = v26;
  v27 = v39;
  *(v22 + *(v39 + 28)) = v41;
  LOBYTE(v41) = 4;
  v28 = v33;
  sub_1D2113D7C();
  (*(v37 + 8))(v13, v38);
  v31(v22 + *(v27 + 32), v28, v24);
  sub_1D2107AD8(v22, v34, type metadata accessor for HSGuidanceForecast);
  __swift_destroy_boxed_opaque_existential_1(v40);
  return sub_1D2107B40(v22, type metadata accessor for HSGuidanceForecast);
}

uint64_t sub_1D2103848(uint64_t a1, int *a2)
{
  v4 = v2;
  v6 = *v2;
  sub_1D2113EFC();
  v7 = *(v2 + 1);
  sub_1D2113EEC();
  if (v7)
  {
    sub_1D20D7FC0(a1, v7);
  }

  v8 = a2[6];
  sub_1D2112C2C();
  sub_1D20FE9D8(&qword_1EC6C7798, MEMORY[0x1E6968130]);
  sub_1D211374C();
  sub_1D20D8184(a1, *&v4[a2[7]]);
  v9 = &v4[a2[8]];
  return sub_1D211374C();
}

uint64_t sub_1D2103940(uint64_t a1, int *a2)
{
  v4 = v2;
  sub_1D2113ECC();
  v5 = *v2;
  sub_1D2113EFC();
  v6 = *(v2 + 1);
  sub_1D2113EEC();
  if (v6)
  {
    sub_1D20D7FC0(v10, v6);
  }

  v7 = a2[6];
  sub_1D2112C2C();
  sub_1D20FE9D8(&qword_1EC6C7798, MEMORY[0x1E6968130]);
  sub_1D211374C();
  sub_1D20D8184(v10, *&v4[a2[7]]);
  v8 = &v4[a2[8]];
  sub_1D211374C();
  return sub_1D2113F1C();
}

uint64_t HSGuidanceForecast.thresholdsForGuidanceValue(value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(v2 + 8))
  {
    MEMORY[0x1EEE9AC00](a1);
    return sub_1D20F9D84(sub_1D2107A44, v3, v4);
  }

  else
  {
    v7 = type metadata accessor for HSCleanGuidanceThresholds(0);
    v8 = *(*(v7 - 8) + 56);

    return v8(a2, 1, 1, v7);
  }
}

uint64_t sub_1D2103B30()
{
  v0 = sub_1D211319C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D2112C0C();
  v5 = sub_1D2112C1C();
  v6 = *(v1 + 8);
  v6(v4, v0);
  if (v5)
  {
    sub_1D2112BDC();
    v7 = sub_1D2112C1C();
    v6(v4, v0);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t HSRatePlan.utilityId.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t HSRatePlan.tariffId.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_1D2103CF0@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 24);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t HSRatePlan.init(utilityId:tariffId:timezone:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  *a6 = a1;
  *(a6 + 1) = a2;
  *(a6 + 2) = a3;
  *(a6 + 3) = a4;
  v8 = *(type metadata accessor for HSRatePlan(0) + 24);
  v9 = sub_1D211335C();
  v10 = *(*(v9 - 8) + 32);

  return v10(&a6[v8], a5, v9);
}

uint64_t static HSRatePlan.== infix(_:_:)(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (sub_1D2113E2C() & 1) != 0)
  {
    v5 = a1[2] == a2[2] && a1[3] == a2[3];
    if (v5 || (sub_1D2113E2C() & 1) != 0)
    {
      v6 = *(type metadata accessor for HSRatePlan(0) + 24);

      JUMPOUT(0x1D3895C50);
    }
  }

  return 0;
}

uint64_t sub_1D2103EA0()
{
  v1 = 0x6449666669726174;
  if (*v0 != 1)
  {
    v1 = 0x656E6F7A656D6974;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x497974696C697475;
  }
}

uint64_t sub_1D2103F00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D2108EA0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D2103F28(uint64_t a1)
{
  v2 = sub_1D2107A84();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2103F64(uint64_t a1)
{
  v2 = sub_1D2107A84();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t HSRatePlan.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7AF0, &qword_1D21184C8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2107A84();
  sub_1D2113F3C();
  v11 = *v3;
  v12 = v3[1];
  v17[15] = 0;
  sub_1D2113DBC();
  if (!v2)
  {
    v14 = v3[2];
    v15 = v3[3];
    v17[14] = 1;
    sub_1D2113DBC();
    v16 = *(type metadata accessor for HSRatePlan(0) + 24);
    v17[13] = 2;
    sub_1D211335C();
    sub_1D20FE9D8(&qword_1EC6C7B00, MEMORY[0x1E6969BC0]);
    sub_1D2113DEC();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t HSRatePlan.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1D211375C();
  v3 = v0[2];
  v4 = v0[3];
  sub_1D211375C();
  v5 = *(type metadata accessor for HSRatePlan(0) + 24);
  sub_1D211335C();
  sub_1D20FE9D8(&qword_1EC6C7B08, MEMORY[0x1E6969BC0]);
  return sub_1D211374C();
}

uint64_t HSRatePlan.hashValue.getter()
{
  sub_1D2113ECC();
  v1 = *v0;
  v2 = v0[1];
  sub_1D211375C();
  v3 = v0[2];
  v4 = v0[3];
  sub_1D211375C();
  v5 = *(type metadata accessor for HSRatePlan(0) + 24);
  sub_1D211335C();
  sub_1D20FE9D8(&qword_1EC6C7B08, MEMORY[0x1E6969BC0]);
  sub_1D211374C();
  return sub_1D2113F1C();
}

uint64_t HSRatePlan.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v28 = sub_1D211335C();
  v25 = *(v28 - 8);
  v4 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7B10, &qword_1D21184D0);
  v27 = *(v29 - 8);
  v7 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v9 = v22 - v8;
  v10 = type metadata accessor for HSRatePlan(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = (v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2107A84();
  sub_1D2113F2C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v23 = v6;
  v24 = a1;
  v16 = v27;
  v15 = v28;
  v17 = v13;
  v32 = 0;
  *v13 = sub_1D2113D4C();
  v13[1] = v18;
  v22[2] = v18;
  v31 = 1;
  v13[2] = sub_1D2113D4C();
  v13[3] = v19;
  v30 = 2;
  sub_1D20FE9D8(&qword_1EC6C7B18, MEMORY[0x1E6969BC0]);
  v20 = v23;
  v22[1] = 0;
  sub_1D2113D7C();
  (*(v16 + 8))(v9, v29);
  (*(v25 + 32))(v17 + *(v10 + 24), v20, v15);
  sub_1D2107AD8(v17, v26, type metadata accessor for HSRatePlan);
  __swift_destroy_boxed_opaque_existential_1(v24);
  return sub_1D2107B40(v17, type metadata accessor for HSRatePlan);
}

uint64_t sub_1D21046E8(uint64_t a1)
{
  sub_1D2113ECC();
  v3 = *v1;
  v4 = v1[1];
  sub_1D211375C();
  v5 = v1[2];
  v6 = v1[3];
  sub_1D211375C();
  v7 = *(a1 + 24);
  sub_1D211335C();
  sub_1D20FE9D8(&qword_1EC6C7B08, MEMORY[0x1E6969BC0]);
  sub_1D211374C();
  return sub_1D2113F1C();
}

uint64_t sub_1D210479C(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = v2[1];
  sub_1D211375C();
  v6 = v2[2];
  v7 = v2[3];
  sub_1D211375C();
  v8 = *(a2 + 24);
  sub_1D211335C();
  sub_1D20FE9D8(&qword_1EC6C7B08, MEMORY[0x1E6969BC0]);
  return sub_1D211374C();
}

uint64_t sub_1D2104834(uint64_t a1, uint64_t a2)
{
  sub_1D2113ECC();
  v4 = *v2;
  v5 = v2[1];
  sub_1D211375C();
  v6 = v2[2];
  v7 = v2[3];
  sub_1D211375C();
  v8 = *(a2 + 24);
  sub_1D211335C();
  sub_1D20FE9D8(&qword_1EC6C7B08, MEMORY[0x1E6969BC0]);
  sub_1D211374C();
  return sub_1D2113F1C();
}

uint64_t sub_1D21048E4(void *a1, void *a2, uint64_t a3)
{
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (sub_1D2113E2C() & 1) != 0)
  {
    v7 = a1[2] == a2[2] && a1[3] == a2[3];
    if (v7 || (sub_1D2113E2C() & 1) != 0)
    {
      v8 = *(a3 + 24);

      JUMPOUT(0x1D3895C50);
    }
  }

  return 0;
}

uint64_t HSHistoricalGuidance.values.getter()
{
  v1 = *(v0 + *(type metadata accessor for HSHistoricalGuidance(0) + 20));
}

uint64_t HSHistoricalGuidance.thresholds.getter()
{
  v1 = *(v0 + *(type metadata accessor for HSHistoricalGuidance(0) + 24));
}

uint64_t static HSHistoricalGuidance.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_1D2112BCC() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for HSHistoricalGuidance(0);
  if ((sub_1D20FCB58(*(a1 + *(v4 + 20)), *(a2 + *(v4 + 20))) & 1) == 0)
  {
    return 0;
  }

  v5 = *(v4 + 24);
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);

  return sub_1D20FCD58(v6, v7);
}

uint64_t sub_1D2104A74()
{
  v1 = 0x7365756C6176;
  if (*v0 != 1)
  {
    v1 = 0x6C6F687365726874;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C61767265746E69;
  }
}

uint64_t sub_1D2104AD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D2108FC0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D2104AF8(uint64_t a1)
{
  v2 = sub_1D2107BA0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D2104B34(uint64_t a1)
{
  v2 = sub_1D2107BA0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t HSHistoricalGuidance.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7B20, &qword_1D21184D8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2107BA0();
  sub_1D2113F3C();
  LOBYTE(v14) = 0;
  sub_1D2112C2C();
  sub_1D20FE9D8(&qword_1EE0843E8, MEMORY[0x1E6968130]);
  sub_1D2113DEC();
  if (!v2)
  {
    v11 = type metadata accessor for HSHistoricalGuidance(0);
    v14 = *(v3 + *(v11 + 20));
    HIBYTE(v13) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7788, &qword_1D21167C0);
    sub_1D210790C(&qword_1EE083DC8, qword_1EE084048);
    sub_1D2113DEC();
    v14 = *(v3 + *(v11 + 24));
    HIBYTE(v13) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7AE0, &unk_1D21184B0);
    sub_1D21079A8(&qword_1EE083690, qword_1EE083F40);
    sub_1D2113DEC();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t HSHistoricalGuidance.hash(into:)(uint64_t a1)
{
  sub_1D2112C2C();
  sub_1D20FE9D8(&qword_1EC6C7798, MEMORY[0x1E6968130]);
  sub_1D211374C();
  v3 = type metadata accessor for HSHistoricalGuidance(0);
  sub_1D20D8184(a1, *(v1 + *(v3 + 20)));
  v4 = *(v1 + *(v3 + 24));

  return sub_1D20D7FC0(a1, v4);
}

uint64_t HSHistoricalGuidance.hashValue.getter()
{
  sub_1D2113ECC();
  sub_1D2112C2C();
  sub_1D20FE9D8(&qword_1EC6C7798, MEMORY[0x1E6968130]);
  sub_1D211374C();
  v1 = type metadata accessor for HSHistoricalGuidance(0);
  sub_1D20D8184(v3, *(v0 + *(v1 + 20)));
  sub_1D20D7FC0(v3, *(v0 + *(v1 + 24)));
  return sub_1D2113F1C();
}

uint64_t HSHistoricalGuidance.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = sub_1D2112C2C();
  v24 = *(v4 - 8);
  v5 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v25 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7B28, &qword_1D21184E0);
  v26 = *(v7 - 8);
  v27 = v7;
  v8 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v22 - v9;
  v11 = type metadata accessor for HSHistoricalGuidance(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2107BA0();
  v28 = v10;
  sub_1D2113F2C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v22 = a1;
  v16 = v14;
  v17 = v24;
  LOBYTE(v30) = 0;
  sub_1D20FE9D8(&qword_1EE083DB0, MEMORY[0x1E6968130]);
  v18 = v25;
  v19 = v27;
  sub_1D2113D7C();
  (*(v17 + 32))(v16, v18, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7788, &qword_1D21167C0);
  v29 = 1;
  sub_1D210790C(&qword_1EE0836A0, &qword_1EE083C00);
  sub_1D2113D7C();
  v20 = v26;
  v25 = v11;
  *(v16 + *(v11 + 20)) = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7AE0, &unk_1D21184B0);
  v29 = 2;
  sub_1D21079A8(&qword_1EE083688, &qword_1EE083908);
  sub_1D2113D7C();
  (*(v20 + 8))(v28, v19);
  *(v16 + *(v25 + 6)) = v30;
  sub_1D2107AD8(v16, v23, type metadata accessor for HSHistoricalGuidance);
  __swift_destroy_boxed_opaque_existential_1(v22);
  return sub_1D2107B40(v16, type metadata accessor for HSHistoricalGuidance);
}

uint64_t sub_1D2105440(uint64_t a1)
{
  sub_1D2113ECC();
  sub_1D2112C2C();
  sub_1D20FE9D8(&qword_1EC6C7798, MEMORY[0x1E6968130]);
  sub_1D211374C();
  sub_1D20D8184(v4, *(v1 + *(a1 + 20)));
  sub_1D20D7FC0(v4, *(v1 + *(a1 + 24)));
  return sub_1D2113F1C();
}

uint64_t sub_1D21054F4(uint64_t a1, uint64_t a2)
{
  sub_1D2112C2C();
  sub_1D20FE9D8(&qword_1EC6C7798, MEMORY[0x1E6968130]);
  sub_1D211374C();
  sub_1D20D8184(a1, *(v2 + *(a2 + 20)));
  v5 = *(v2 + *(a2 + 24));

  return sub_1D20D7FC0(a1, v5);
}

uint64_t sub_1D210559C(uint64_t a1, uint64_t a2)
{
  sub_1D2113ECC();
  sub_1D2112C2C();
  sub_1D20FE9D8(&qword_1EC6C7798, MEMORY[0x1E6968130]);
  sub_1D211374C();
  sub_1D20D8184(v5, *(v2 + *(a2 + 20)));
  sub_1D20D7FC0(v5, *(v2 + *(a2 + 24)));
  return sub_1D2113F1C();
}

uint64_t sub_1D210564C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_1D2112BCC() & 1) == 0 || (sub_1D20FCB58(*(a1 + *(a3 + 20)), *(a2 + *(a3 + 20))) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 24);
  v7 = *(a1 + v6);
  v8 = *(a2 + v6);

  return sub_1D20FCD58(v7, v8);
}

BOOL static HSCleanGuidanceThresholds.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_1D2112BCC() & 1) != 0 && (v4 = type metadata accessor for HSCleanGuidanceThresholds(0), *(a1 + *(v4 + 20)) == *(a2 + *(v4 + 20))))
  {
    return *(a1 + *(v4 + 24)) == *(a2 + *(v4 + 24));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D2105774()
{
  v1 = 0x6772656E45657375;
  if (*v0 != 1)
  {
    v1 = 0x656E4564696F7661;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x626163696C707061;
  }
}

uint64_t sub_1D21057E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D21090DC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D2105810(uint64_t a1)
{
  v2 = sub_1D2107BF4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D210584C(uint64_t a1)
{
  v2 = sub_1D2107BF4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t HSCleanGuidanceThresholds.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7B30, &qword_1D21184E8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2107BF4();
  sub_1D2113F3C();
  v15[15] = 0;
  sub_1D2112C2C();
  sub_1D20FE9D8(&qword_1EE0843E8, MEMORY[0x1E6968130]);
  sub_1D2113DEC();
  if (!v2)
  {
    v11 = type metadata accessor for HSCleanGuidanceThresholds(0);
    v12 = *(v3 + *(v11 + 20));
    v15[14] = 1;
    sub_1D2113DCC();
    v13 = *(v3 + *(v11 + 24));
    v15[13] = 2;
    sub_1D2113DCC();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t HSCleanGuidanceThresholds.hash(into:)()
{
  sub_1D2112C2C();
  sub_1D20FE9D8(&qword_1EC6C7798, MEMORY[0x1E6968130]);
  sub_1D211374C();
  v1 = type metadata accessor for HSCleanGuidanceThresholds(0);
  v2 = *(v0 + *(v1 + 20));
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x1D3896810](*&v2);
  v3 = *(v0 + *(v1 + 24));
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  return MEMORY[0x1D3896810](*&v3);
}

uint64_t HSCleanGuidanceThresholds.hashValue.getter()
{
  sub_1D2113ECC();
  HSCleanGuidanceThresholds.hash(into:)();
  return sub_1D2113F1C();
}

uint64_t HSCleanGuidanceThresholds.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v4 = sub_1D2112C2C();
  v26 = *(v4 - 8);
  v5 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v29 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7B38, &qword_1D21184F0);
  v27 = *(v7 - 8);
  v28 = v7;
  v8 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v25 - v9;
  v11 = type metadata accessor for HSCleanGuidanceThresholds(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2107BF4();
  sub_1D2113F2C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v16 = v14;
  v17 = v26;
  v32 = 0;
  sub_1D20FE9D8(&qword_1EE083DB0, MEMORY[0x1E6968130]);
  v18 = v28;
  sub_1D2113D7C();
  v19 = *(v17 + 32);
  v20 = v29;
  v29 = v4;
  v19(v16, v20, v4);
  v31 = 1;
  sub_1D2113D5C();
  *(v16 + *(v11 + 20)) = v21;
  v30 = 2;
  sub_1D2113D5C();
  v23 = v22;
  (*(v27 + 8))(v10, v18);
  *(v16 + *(v11 + 24)) = v23;
  sub_1D2107AD8(v16, v25, type metadata accessor for HSCleanGuidanceThresholds);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1D2107B40(v16, type metadata accessor for HSCleanGuidanceThresholds);
}

uint64_t sub_1D2105F40()
{
  sub_1D2113ECC();
  HSCleanGuidanceThresholds.hash(into:)();
  return sub_1D2113F1C();
}

uint64_t sub_1D2105F84()
{
  sub_1D2113ECC();
  HSCleanGuidanceThresholds.hash(into:)();
  return sub_1D2113F1C();
}

HomeServices::HSGuidanceType_optional __swiftcall HSGuidanceType.init(rawValue:)(Swift::Int16 rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

_WORD *sub_1D210605C@<X0>(_WORD *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t sub_1D2106138()
{
  v1 = *v0;
  sub_1D2113ECC();
  sub_1D2113EFC();
  return sub_1D2113F1C();
}

uint64_t sub_1D21061AC()
{
  v1 = *v0;
  sub_1D2113ECC();
  sub_1D2113EFC();
  return sub_1D2113F1C();
}

uint64_t sub_1D2106204@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D2112C2C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

BOOL static HSGuidanceValue.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_1D2112BCC() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for HSGuidanceValue(0);
  return *(a1 + *(v4 + 20)) == *(a2 + *(v4 + 20));
}

uint64_t sub_1D21062E0()
{
  if (*v0)
  {
    result = 0x676E69746172;
  }

  else
  {
    result = 0x6C61767265746E69;
  }

  *v0;
  return result;
}

uint64_t sub_1D2106318@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6C61767265746E69 && a2 == 0xE800000000000000;
  if (v6 || (sub_1D2113E2C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x676E69746172 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D2113E2C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1D21063F0(uint64_t a1)
{
  v2 = sub_1D2107C48();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D210642C(uint64_t a1)
{
  v2 = sub_1D2107C48();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t HSGuidanceValue.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7B40, &qword_1D21184F8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2107C48();
  sub_1D2113F3C();
  v13[15] = 0;
  sub_1D2112C2C();
  sub_1D20FE9D8(&qword_1EE0843E8, MEMORY[0x1E6968130]);
  sub_1D2113DEC();
  if (!v2)
  {
    v11 = *(v3 + *(type metadata accessor for HSGuidanceValue(0) + 20));
    v13[14] = 1;
    sub_1D2113DCC();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t HSGuidanceValue.hash(into:)()
{
  sub_1D2112C2C();
  sub_1D20FE9D8(&qword_1EC6C7798, MEMORY[0x1E6968130]);
  sub_1D211374C();
  v1 = *(v0 + *(type metadata accessor for HSGuidanceValue(0) + 20));
  if (v1 == 0.0)
  {
    v1 = 0.0;
  }

  return MEMORY[0x1D3896810](*&v1);
}

uint64_t HSGuidanceValue.hashValue.getter()
{
  sub_1D2113ECC();
  sub_1D2112C2C();
  sub_1D20FE9D8(&qword_1EC6C7798, MEMORY[0x1E6968130]);
  sub_1D211374C();
  v1 = *(v0 + *(type metadata accessor for HSGuidanceValue(0) + 20));
  if (v1 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x1D3896810](*&v1);
  return sub_1D2113F1C();
}

uint64_t HSGuidanceValue.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v4 = sub_1D2112C2C();
  v28 = *(v4 - 8);
  v29 = v4;
  v5 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7B48, &qword_1D2118500);
  v27 = *(v30 - 8);
  v8 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v10 = &v24 - v9;
  v11 = type metadata accessor for HSGuidanceValue(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D2107C48();
  sub_1D2113F2C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v25 = v14;
  v16 = v27;
  v17 = v28;
  v32 = 0;
  sub_1D20FE9D8(&qword_1EE083DB0, MEMORY[0x1E6968130]);
  v18 = v29;
  sub_1D2113D7C();
  (*(v17 + 32))(v25, v7, v18);
  v31 = 1;
  sub_1D2113D5C();
  v20 = v19;
  (*(v16 + 8))(v10, v30);
  v22 = v25;
  v21 = v26;
  *&v25[*(v11 + 20)] = v20;
  sub_1D2107AD8(v22, v21, type metadata accessor for HSGuidanceValue);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1D2107B40(v22, type metadata accessor for HSGuidanceValue);
}

uint64_t sub_1D2106AF0(uint64_t a1, uint64_t a2)
{
  sub_1D2112C2C();
  sub_1D20FE9D8(&qword_1EC6C7798, MEMORY[0x1E6968130]);
  sub_1D211374C();
  v4 = *(v2 + *(a2 + 20));
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  return MEMORY[0x1D3896810](*&v4);
}

uint64_t sub_1D2106B8C(uint64_t a1, uint64_t a2)
{
  sub_1D2113ECC();
  sub_1D2112C2C();
  sub_1D20FE9D8(&qword_1EC6C7798, MEMORY[0x1E6968130]);
  sub_1D211374C();
  v4 = *(v2 + *(a2 + 20));
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  MEMORY[0x1D3896810](*&v4);
  return sub_1D2113F1C();
}

unint64_t HSGuidanceError.errorDescription.getter()
{
  v1 = v0;
  v2 = sub_1D21133BC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for HSGuidanceError(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D2107AD8(v1, v10, type metadata accessor for HSGuidanceError);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        return 0xD000000000000020;
      }

      else
      {
        return 0xD00000000000002ALL;
      }
    }

    else if (EnumCaseMultiPayload == 4)
    {
      return 0xD00000000000002ELL;
    }

    else
    {
      return 0xD000000000000038;
    }
  }

  else
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload != 2)
      {
        sub_1D2107B40(v10, type metadata accessor for HSGuidanceError);
        return 0xD00000000000003ALL;
      }

      v14 = *v10;
      v21 = 0;
      v22 = 0xE000000000000000;
      sub_1D2113C2C();
      MEMORY[0x1D38961A0](0xD000000000000035, 0x80000001D211A320);
      v19 = v14;
      v15 = sub_1D2113E0C();
      MEMORY[0x1D38961A0](v15);

      MEMORY[0x1D38961A0](46, 0xE100000000000000);
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {
        (*(v3 + 32))(v6, v10, v2);
        v21 = 0;
        v22 = 0xE000000000000000;
        sub_1D2113C2C();
        MEMORY[0x1D38961A0](0xD000000000000023, 0x80000001D211A490);
        sub_1D2113CBC();
        MEMORY[0x1D38961A0](46, 0xE100000000000000);
        v12 = v21;
        (*(v3 + 8))(v6, v2);
        return v12;
      }

      v16 = *v10;
      v21 = 0xD00000000000003ELL;
      v22 = 0x80000001D211A360;
      if (v16)
      {
        if (v16 == 1)
        {
          v17 = "LocalizedDescription ";
          v18 = 0xD000000000000032;
        }

        else
        {
          v17 = "trying to process the request.";
          v18 = 0xD000000000000027;
        }
      }

      else
      {
        v18 = 0xD00000000000002BLL;
        v17 = "ponse from server.";
      }

      v19 = 0;
      v20 = 0xE000000000000000;
      sub_1D2113C2C();

      v19 = 0xD000000000000015;
      v20 = 0x80000001D211A3D0;
      MEMORY[0x1D38961A0](v18, v17 | 0x8000000000000000);

      MEMORY[0x1D38961A0](v19, v20);
    }

    return v21;
  }
}

unint64_t HSNetworkInternalError.errorDescription.getter()
{
  v1 = 0xD000000000000027;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000032;
  }

  if (*v0)
  {
    result = v1;
  }

  else
  {
    result = 0xD00000000000002BLL;
  }

  *v0;
  return result;
}

uint64_t HSNetworkInternalError.hashValue.getter()
{
  v1 = *v0;
  sub_1D2113ECC();
  MEMORY[0x1D38967E0](v1);
  return sub_1D2113F1C();
}

uint64_t sub_1D210718C()
{
  type metadata accessor for TimeService();
  result = swift_initStaticObject();
  qword_1EE087510 = result;
  return result;
}

uint64_t sub_1D21071D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t _s12HomeServices15HSGuidanceErrorO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D21133BC();
  v44 = *(v4 - 8);
  v45 = v4;
  v5 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v43 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for HSGuidanceError(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = (&v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = (&v42 - v13);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v42 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v42 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7BF0, &qword_1D2119248);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v20 - 8);
  v24 = &v42 - v23;
  v25 = (&v42 + *(v22 + 56) - v23);
  sub_1D2107AD8(a1, &v42 - v23, type metadata accessor for HSGuidanceError);
  sub_1D2107AD8(a2, v25, type metadata accessor for HSGuidanceError);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        if (swift_getEnumCaseMultiPayload() != 6)
        {
          goto LABEL_36;
        }
      }

      else if (swift_getEnumCaseMultiPayload() != 7)
      {
        goto LABEL_36;
      }
    }

    else if (EnumCaseMultiPayload == 4)
    {
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        goto LABEL_36;
      }
    }

    else if (swift_getEnumCaseMultiPayload() != 5)
    {
      goto LABEL_36;
    }

    goto LABEL_34;
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_1D2107AD8(v24, v14, type metadata accessor for HSGuidanceError);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_36;
      }

      v27 = *v14 == *v25;
      goto LABEL_18;
    }

    sub_1D2107AD8(v24, v11, type metadata accessor for HSGuidanceError);
    v31 = *v11;
    v30 = v11[1];
    if (swift_getEnumCaseMultiPayload() != 3)
    {

      goto LABEL_36;
    }

    v32 = v25[1];
    if (v30)
    {
      if (v32)
      {
        if (v31 == *v25 && v30 == v32)
        {
        }

        else
        {
          v34 = v25[1];
          v35 = sub_1D2113E2C();

          if ((v35 & 1) == 0)
          {
            goto LABEL_42;
          }
        }

LABEL_34:
        sub_1D2107B40(v24, type metadata accessor for HSGuidanceError);
        return 1;
      }
    }

    else
    {
      if (!v32)
      {
        goto LABEL_34;
      }

      v41 = v25[1];
    }

LABEL_42:
    sub_1D2107B40(v24, type metadata accessor for HSGuidanceError);
    return 0;
  }

  if (EnumCaseMultiPayload)
  {
    sub_1D2107AD8(v24, v17, type metadata accessor for HSGuidanceError);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      goto LABEL_36;
    }

    v27 = *v17 == *v25;
LABEL_18:
    v28 = v27;
    sub_1D2107B40(v24, type metadata accessor for HSGuidanceError);
    return v28;
  }

  sub_1D2107AD8(v24, v19, type metadata accessor for HSGuidanceError);
  if (swift_getEnumCaseMultiPayload())
  {
    (*(v44 + 8))(v19, v45);
LABEL_36:
    sub_1D20A862C(v24, &qword_1EC6C7BF0, &qword_1D2119248);
    return 0;
  }

  v37 = v43;
  v36 = v44;
  v38 = v45;
  (*(v44 + 32))(v43, v25, v45);
  sub_1D20FE9D8(&qword_1EE0843C8, MEMORY[0x1E6969BF8]);
  sub_1D211396C();
  sub_1D211396C();
  v39 = *(v36 + 8);
  v39(v37, v38);
  v40 = v47 == v46;
  v39(v19, v38);
  sub_1D2107B40(v24, type metadata accessor for HSGuidanceError);
  return v40;
}

uint64_t _s12HomeServices18HSGuidanceForecastV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v5 = *(a1 + 1);
  v6 = *(a2 + 1);
  if (v5)
  {
    if (!v6)
    {
      return 0;
    }

    v7 = *(a2 + 1);

    v8 = sub_1D20FCD58(v5, v6);

    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  v9 = type metadata accessor for HSGuidanceForecast(0);
  v10 = v9[6];
  if ((sub_1D2112BCC() & 1) == 0 || (sub_1D20FCB58(*&a1[v9[7]], *&a2[v9[7]]) & 1) == 0)
  {
    return 0;
  }

  v11 = v9[8];

  return sub_1D2112BCC();
}

unint64_t sub_1D21078B8()
{
  result = qword_1EE084010;
  if (!qword_1EE084010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE084010);
  }

  return result;
}

uint64_t sub_1D210790C(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6C7788, &qword_1D21167C0);
    sub_1D20FE9D8(a2, type metadata accessor for HSGuidanceValue);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D21079A8(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6C7AE0, &unk_1D21184B0);
    sub_1D20FE9D8(a2, type metadata accessor for HSCleanGuidanceThresholds);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D2107A84()
{
  result = qword_1EC6C7AF8;
  if (!qword_1EC6C7AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C7AF8);
  }

  return result;
}

uint64_t sub_1D2107AD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D2107B40(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1D2107BA0()
{
  result = qword_1EE083AB0;
  if (!qword_1EE083AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE083AB0);
  }

  return result;
}

unint64_t sub_1D2107BF4()
{
  result = qword_1EE084550[0];
  if (!qword_1EE084550[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE084550);
  }

  return result;
}

unint64_t sub_1D2107C48()
{
  result = qword_1EE084698;
  if (!qword_1EE084698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE084698);
  }

  return result;
}

unint64_t sub_1D2107DC0()
{
  result = qword_1EC6C7B70;
  if (!qword_1EC6C7B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C7B70);
  }

  return result;
}

unint64_t sub_1D2107E18()
{
  result = qword_1EC6C7B78;
  if (!qword_1EC6C7B78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6C7B80, &qword_1D21188D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C7B78);
  }

  return result;
}

unint64_t sub_1D2107F10()
{
  result = qword_1EC6C7B90;
  if (!qword_1EC6C7B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C7B90);
  }

  return result;
}

unint64_t sub_1D2107F68()
{
  result = qword_1EC6C7B98;
  if (!qword_1EC6C7B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C7B98);
  }

  return result;
}

void sub_1D2107FE4()
{
  sub_1D21080B0();
  if (v0 <= 0x3F)
  {
    sub_1D2112C2C();
    if (v1 <= 0x3F)
    {
      sub_1D21082B4(319, &qword_1EE084428, type metadata accessor for HSGuidanceValue);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1D21080B0()
{
  if (!qword_1EE084420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6C7AE0, &unk_1D21184B0);
    v0 = sub_1D2113B0C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE084420);
    }
  }
}

uint64_t sub_1D210813C()
{
  result = sub_1D211335C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1D21081E0()
{
  sub_1D2112C2C();
  if (v0 <= 0x3F)
  {
    sub_1D21082B4(319, &qword_1EE084428, type metadata accessor for HSGuidanceValue);
    if (v1 <= 0x3F)
    {
      sub_1D21082B4(319, &qword_1EE083698, type metadata accessor for HSCleanGuidanceThresholds);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1D21082B4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D2113A0C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D2108330()
{
  result = sub_1D2112C2C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_37Tm(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D2112C2C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t __swift_store_extra_inhabitant_index_38Tm(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D2112C2C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1D21084C0()
{
  result = sub_1D2112C2C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1D2108534()
{
  sub_1D21133BC();
  if (v0 <= 0x3F)
  {
    sub_1D20AD83C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t getEnumTagSinglePayload for HSGuidanceForecast.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HSGuidanceForecast.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D21087C0()
{
  result = qword_1EC6C7BA0;
  if (!qword_1EC6C7BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C7BA0);
  }

  return result;
}

unint64_t sub_1D2108818()
{
  result = qword_1EC6C7BA8;
  if (!qword_1EC6C7BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C7BA8);
  }

  return result;
}

unint64_t sub_1D2108870()
{
  result = qword_1EC6C7BB0;
  if (!qword_1EC6C7BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C7BB0);
  }

  return result;
}

unint64_t sub_1D21088C8()
{
  result = qword_1EC6C7BB8;
  if (!qword_1EC6C7BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C7BB8);
  }

  return result;
}

unint64_t sub_1D2108920()
{
  result = qword_1EC6C7BC0;
  if (!qword_1EC6C7BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C7BC0);
  }

  return result;
}

unint64_t sub_1D2108978()
{
  result = qword_1EE084688;
  if (!qword_1EE084688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE084688);
  }

  return result;
}

unint64_t sub_1D21089D0()
{
  result = qword_1EE084690;
  if (!qword_1EE084690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE084690);
  }

  return result;
}

unint64_t sub_1D2108A28()
{
  result = qword_1EE084540;
  if (!qword_1EE084540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE084540);
  }

  return result;
}

unint64_t sub_1D2108A80()
{
  result = qword_1EE084548;
  if (!qword_1EE084548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE084548);
  }

  return result;
}

unint64_t sub_1D2108AD8()
{
  result = qword_1EE083AA0;
  if (!qword_1EE083AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE083AA0);
  }

  return result;
}

unint64_t sub_1D2108B30()
{
  result = qword_1EE083AA8;
  if (!qword_1EE083AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE083AA8);
  }

  return result;
}

unint64_t sub_1D2108B88()
{
  result = qword_1EC6C7BC8;
  if (!qword_1EC6C7BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C7BC8);
  }

  return result;
}

unint64_t sub_1D2108BE0()
{
  result = qword_1EC6C7BD0;
  if (!qword_1EC6C7BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C7BD0);
  }

  return result;
}

unint64_t sub_1D2108C38()
{
  result = qword_1EE084000;
  if (!qword_1EE084000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE084000);
  }

  return result;
}

unint64_t sub_1D2108C90()
{
  result = qword_1EE084008;
  if (!qword_1EE084008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE084008);
  }

  return result;
}

uint64_t sub_1D2108CE4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_1D2113E2C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C6F687365726874 && a2 == 0xEA00000000007364 || (sub_1D2113E2C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C61767265746E69 && a2 == 0xE800000000000000 || (sub_1D2113E2C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7365756C6176 && a2 == 0xE600000000000000 || (sub_1D2113E2C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x746E4964696C6176 && a2 == 0xED00006C61767265)
  {

    return 4;
  }

  else
  {
    v6 = sub_1D2113E2C();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1D2108EA0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x497974696C697475 && a2 == 0xE900000000000064;
  if (v4 || (sub_1D2113E2C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6449666669726174 && a2 == 0xE800000000000000 || (sub_1D2113E2C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656E6F7A656D6974 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D2113E2C();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1D2108FC0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C61767265746E69 && a2 == 0xE800000000000000;
  if (v4 || (sub_1D2113E2C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7365756C6176 && a2 == 0xE600000000000000 || (sub_1D2113E2C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C6F687365726874 && a2 == 0xEA00000000007364)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D2113E2C();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1D21090DC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x626163696C707061 && a2 == 0xEE007265764F656CLL;
  if (v4 || (sub_1D2113E2C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6772656E45657375 && a2 == 0xE900000000000079 || (sub_1D2113E2C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656E4564696F7661 && a2 == 0xEB00000000796772)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D2113E2C();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

unint64_t sub_1D2109208()
{
  result = qword_1EE0846A0[0];
  if (!qword_1EE0846A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE0846A0);
  }

  return result;
}

uint64_t sub_1D2109278()
{
  sub_1D211375C();
}

void AutoBugCaptureIssue.init(type:subType:subTypeContext:payload:)(_BYTE *a1@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = *a2;
  v8 = *a3;
  *a5 = *a1;
  *(a5 + 1) = v7;
  *(a5 + 2) = v8;
  v9 = [objc_opt_self() processInfo];
  v10 = [v9 processName];

  v11 = sub_1D21137CC();
  v13 = v12;

  *(a5 + 8) = v11;
  *(a5 + 16) = v13;
  *(a5 + 24) = a4;
}

uint64_t static AutoBugCaptureManager.sendIssue(_:)(char *a1)
{
  v2 = sub_1D211363C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D211365C();
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v12 = *a1;
  v13 = a1[1];
  v14 = a1[2];
  v16 = *(a1 + 1);
  v15 = *(a1 + 2);
  v17 = *(a1 + 3);
  v18 = off_1EC6C7BF8;
  if (off_1EC6C7BF8)
  {
    LOBYTE(aBlock) = v12;
    BYTE1(aBlock) = v13;
    BYTE2(aBlock) = v14;
    v32 = v16;
    v33 = v15;
    v34 = v17;

    v18(&aBlock);
    return sub_1D210B884(v18);
  }

  else
  {
    v20 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    v26 = v11;
    v27 = v6;
    v28 = v9;
    v29 = v3;
    v25 = v2;
    if (qword_1EE0839F8 != -1)
    {
      swift_once();
    }

    v21 = swift_allocObject();
    *(v21 + 16) = v12;
    *(v21 + 17) = v13;
    *(v21 + 18) = v14;
    *(v21 + 24) = v16;
    *(v21 + 32) = v15;
    *(v21 + 40) = v17;
    v35 = sub_1D210B810;
    v36 = v21;
    aBlock = MEMORY[0x1E69E9820];
    v32 = 1107296256;
    v33 = sub_1D210B828;
    v34 = &block_descriptor;
    v22 = _Block_copy(&aBlock);

    sub_1D211364C();
    v30 = MEMORY[0x1E69E7CC0];
    sub_1D210C9B4(&qword_1EE0836B8, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7C08, &unk_1D2119260);
    sub_1D210C9FC(&qword_1EE083678, &qword_1EC6C7C08, &unk_1D2119260);
    v23 = v27;
    v24 = v25;
    sub_1D2113B8C();
    MEMORY[0x1D38963D0](0, v20, v23, v22);
    _Block_release(v22);
    (*(v29 + 8))(v23, v24);
    (*(v26 + 8))(v20, v28);
  }
}

uint64_t AutoBugCaptureDomain.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1D2113D0C();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1D21098B0()
{
  sub_1D2113ECC();
  sub_1D211375C();
  return sub_1D2113F1C();
}

uint64_t sub_1D2109934()
{
  sub_1D2113ECC();
  sub_1D211375C();
  return sub_1D2113F1C();
}

uint64_t sub_1D2109990@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1D2113D0C();

  *a2 = v5 != 0;
  return result;
}

HomeServices::AutoBugCaptureType_optional __swiftcall AutoBugCaptureType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D2113D0C();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t AutoBugCaptureType.rawValue.getter()
{
  v1 = 0x5720796772656E45;
  if (*v0 != 1)
  {
    v1 = 0x6F6F4C2064697247;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x65636E6164697547;
  }
}

uint64_t sub_1D2109AE4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x5720796772656E45;
  v4 = 0xEE0073776F646E69;
  if (v2 != 1)
  {
    v3 = 0x6F6F4C2064697247;
    v4 = 0xEB0000000070756BLL;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x65636E6164697547;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xEF6C616E67695320;
  }

  v7 = 0x5720796772656E45;
  v8 = 0xEE0073776F646E69;
  if (*a2 != 1)
  {
    v7 = 0x6F6F4C2064697247;
    v8 = 0xEB0000000070756BLL;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x65636E6164697547;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xEF6C616E67695320;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D2113E2C();
  }

  return v11 & 1;
}

uint64_t sub_1D2109C18()
{
  v1 = *v0;
  sub_1D2113ECC();
  sub_1D211375C();

  return sub_1D2113F1C();
}

uint64_t sub_1D2109CDC()
{
  *v0;
  *v0;
  sub_1D211375C();
}

uint64_t sub_1D2109D8C()
{
  v1 = *v0;
  sub_1D2113ECC();
  sub_1D211375C();

  return sub_1D2113F1C();
}

void sub_1D2109E58(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEF6C616E67695320;
  v4 = 0xEE0073776F646E69;
  v5 = 0x5720796772656E45;
  if (v2 != 1)
  {
    v5 = 0x6F6F4C2064697247;
    v4 = 0xEB0000000070756BLL;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x65636E6164697547;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

HomeServices::AutoBugCaptureSubType_optional __swiftcall AutoBugCaptureSubType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D2113D0C();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t AutoBugCaptureSubType.rawValue.getter()
{
  v1 = 0x726576726553;
  if (*v0 != 1)
  {
    v1 = 0x73795320656C6946;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x72756769666E6F43;
  }
}

uint64_t sub_1D2109FA0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x726576726553;
  if (v2 != 1)
  {
    v4 = 0x73795320656C6946;
    v3 = 0xEB000000006D6574;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x72756769666E6F43;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xED00006E6F697461;
  }

  v7 = 0xE600000000000000;
  v8 = 0x726576726553;
  if (*a2 != 1)
  {
    v8 = 0x73795320656C6946;
    v7 = 0xEB000000006D6574;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x72756769666E6F43;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xED00006E6F697461;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D2113E2C();
  }

  return v11 & 1;
}

uint64_t sub_1D210A0B4()
{
  v1 = *v0;
  sub_1D2113ECC();
  sub_1D211375C();

  return sub_1D2113F1C();
}

uint64_t sub_1D210A168()
{
  *v0;
  *v0;
  sub_1D211375C();
}

uint64_t sub_1D210A208()
{
  v1 = *v0;
  sub_1D2113ECC();
  sub_1D211375C();

  return sub_1D2113F1C();
}

void sub_1D210A2C4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED00006E6F697461;
  v4 = 0xE600000000000000;
  v5 = 0x726576726553;
  if (v2 != 1)
  {
    v5 = 0x73795320656C6946;
    v4 = 0xEB000000006D6574;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x72756769666E6F43;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

HomeServices::AutoBugCaptureSubTypeContext_optional __swiftcall AutoBugCaptureSubTypeContext.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D2113D0C();

  v5 = 10;
  if (v3 < 0xA)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t AutoBugCaptureSubTypeContext.rawValue.getter()
{
  v1 = *v0;
  if (v1 > 4)
  {
    v6 = 0xD00000000000001DLL;
    if (v1 != 7)
    {
      v6 = 0xD000000000000022;
    }

    v7 = 0xD000000000000035;
    if (v1 == 5)
    {
      v7 = 0x206E776F6E6B6E55;
    }

    if (*v0 <= 6u)
    {
      return v7;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v2 = 0x20676E697373694DLL;
    v3 = 0xD00000000000001FLL;
    v4 = 0xD000000000000017;
    if (v1 == 3)
    {
      v4 = 0xD00000000000001FLL;
    }

    if (v1 != 2)
    {
      v3 = v4;
    }

    if (*v0)
    {
      v2 = 0xD00000000000001ELL;
    }

    if (*v0 <= 1u)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }
}

uint64_t sub_1D210A4F8()
{
  v1 = *v0;
  sub_1D2113ECC();
  sub_1D2109278();
  return sub_1D2113F1C();
}

uint64_t sub_1D210A548()
{
  v1 = *v0;
  sub_1D2113ECC();
  sub_1D2109278();
  return sub_1D2113F1C();
}

unint64_t sub_1D210A598@<X0>(unint64_t *a1@<X8>)
{
  result = AutoBugCaptureSubTypeContext.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D210A5C0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7248, &qword_1D2114A80);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x1EEE9AC00](v1 - 8);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v24 - v6;
  v8 = sub_1D211319C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v24 - v14;
  sub_1D211317C();
  v16 = OBJC_IVAR____TtC12HomeServices22AutoBugCaptureReporter_lastReportedDate;
  swift_beginAccess();
  sub_1D20ACFE8(v0 + v16, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1D210B894(v7);
    (*(v9 + 32))(v5, v15, v8);
LABEL_6:
    v22 = v5;
    v21 = 1;
    (*(v9 + 56))(v22, 0, 1, v8);
    swift_beginAccess();
    sub_1D20AD058(v22, v0 + v16);
    swift_endAccess();
    return v21;
  }

  v24 = v5;
  v25 = v0;
  v17 = *(v9 + 32);
  v17(v13, v7, v8);
  sub_1D211305C();
  v19 = v18;
  v20 = *(v9 + 8);
  v20(v13, v8);
  if (v19 >= 86400.0)
  {
    v5 = v24;
    v0 = v25;
    v17(v24, v15, v8);
    goto LABEL_6;
  }

  v20(v15, v8);
  return 0;
}

void sub_1D210A870(char *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v7 = *(a1 + 1);
  v6 = *(a1 + 2);
  v8 = *(a1 + 3);
  if (sub_1D210A5C0())
  {
    v9 = *(v1 + 16);
    v10 = sub_1D21137BC();
    v38 = v3;
    v11 = sub_1D21137BC();

    v37 = v4;
    v12 = sub_1D21137BC();

    v39 = v7;
    v21 = sub_1D21137BC();

    v22 = sub_1D21137BC();
    osloga = v9;
    v23 = [v9 signatureWithDomain:v10 type:v11 subType:v12 subtypeContext:v21 detectedProcess:v22 triggerThresholdValues:0];

    if (qword_1EE0836C0 != -1)
    {
      swift_once();
    }

    v24 = sub_1D211362C();
    __swift_project_value_buffer(v24, qword_1EE087420);

    v25 = sub_1D21135FC();
    v26 = sub_1D2113A9C();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v48 = v28;
      *v27 = 136315138;
      LOBYTE(aBlock) = v38;
      BYTE1(aBlock) = v37;
      BYTE2(aBlock) = v5;
      v43 = v39;
      v44 = v6;
      v45 = v8;

      v29 = AutoBugCaptureIssue.description.getter();
      v31 = v30;

      v32 = sub_1D20B75F0(v29, v31, &v48);

      *(v27 + 4) = v32;
      _os_log_impl(&dword_1D209F000, v25, v26, "Submitting snapshot request to ABC for signature: %s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v28);
      MEMORY[0x1D3896EB0](v28, -1, -1);
      MEMORY[0x1D3896EB0](v27, -1, -1);
    }

    if (v23)
    {
      aBlock = 0;
      v33 = v23;
      sub_1D211370C();
    }

    sub_1D20CE9EC(MEMORY[0x1E69E7CC0]);
    v34 = sub_1D21136FC();

    sub_1D210B074(v8);
    v35 = sub_1D21136FC();

    v46 = sub_1D210C2E0;
    v47 = v2;
    aBlock = MEMORY[0x1E69E9820];
    v43 = 1107296256;
    v44 = sub_1D210B33C;
    v45 = &block_descriptor_38;
    v36 = _Block_copy(&aBlock);

    [osloga snapshotWithSignature:0 duration:v34 event:v35 payload:v36 reply:0.0];
    _Block_release(v36);
  }

  else
  {
    if (qword_1EE0836C0 != -1)
    {
      swift_once();
    }

    v13 = sub_1D211362C();
    __swift_project_value_buffer(v13, qword_1EE087420);

    oslog = sub_1D21135FC();
    v14 = sub_1D2113A9C();

    if (os_log_type_enabled(oslog, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v48 = v16;
      *v15 = 136315138;
      LOBYTE(aBlock) = v3;
      BYTE1(aBlock) = v4;
      BYTE2(aBlock) = v5;
      v43 = v7;
      v44 = v6;
      v45 = v8;

      v17 = AutoBugCaptureIssue.description.getter();
      v19 = v18;

      v20 = sub_1D20B75F0(v17, v19, &v48);

      *(v15 + 4) = v20;
      _os_log_impl(&dword_1D209F000, oslog, v14, "Not reporting to AutoBugCapture because we are rate limited: %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x1D3896EB0](v16, -1, -1);
      MEMORY[0x1D3896EB0](v15, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_1D210B074(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7620, &qword_1D2115F18);
    v2 = sub_1D2113CFC();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_1D20B7E10(*(a1 + 56) + 32 * v13, v36);
    *&v35 = v16;
    *(&v35 + 1) = v15;
    v33[2] = v35;
    v34[0] = v36[0];
    v34[1] = v36[1];
    v33[0] = v35;

    swift_dynamicCast();
    sub_1D20B3388(v34, v28);
    v29 = v25;
    v30 = v26;
    v31 = v27;
    sub_1D20B3388(v28, v32);
    v25 = v29;
    v26 = v30;
    v27 = v31;
    sub_1D20B3388(v32, v33);
    v17 = *(v2 + 40);
    result = sub_1D2113BAC();
    v18 = -1 << *(v2 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v7 + 8 * (v19 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v18) >> 6;
      while (++v20 != v22 || (v21 & 1) == 0)
      {
        v23 = v20 == v22;
        if (v20 == v22)
        {
          v20 = 0;
        }

        v21 |= v23;
        v24 = *(v7 + 8 * v20);
        if (v24 != -1)
        {
          v10 = __clz(__rbit64(~v24)) + (v20 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v19) & ~*(v7 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v25;
    *(v11 + 16) = v26;
    *(v11 + 32) = v27;
    result = sub_1D20B3388(v33, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1D210B33C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (a2)
  {
    v4 = sub_1D211371C();
  }

  else
  {
    v4 = 0;
  }

  v3(v4);
}

uint64_t AutoBugCaptureReporter.__deallocating_deinit()
{
  sub_1D210B894(v0 + OBJC_IVAR____TtC12HomeServices22AutoBugCaptureReporter_lastReportedDate);
  v1 = *(*v0 + 12);
  v2 = *(*v0 + 26);

  return swift_deallocClassInstance();
}

uint64_t sub_1D210B468()
{
  v10 = sub_1D2113ABC();
  v0 = *(v10 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D2113AAC();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v6 = sub_1D211365C();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9[1] = sub_1D210C968();
  sub_1D211364C();
  v11 = MEMORY[0x1E69E7CC0];
  sub_1D210C9B4(&qword_1EE083660, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7C30, &unk_1D21196A0);
  sub_1D210C9FC(&qword_1EE083668, &qword_1EC6C7C30, &unk_1D21196A0);
  sub_1D2113B8C();
  (*(v0 + 104))(v3, *MEMORY[0x1E69E8090], v10);
  result = sub_1D2113ADC();
  qword_1EE083A00 = result;
  return result;
}

uint64_t sub_1D210B6B8()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69D4F78]) init];
  v1 = type metadata accessor for AutoBugCaptureReporter();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  v4 = swift_allocObject();
  v5 = OBJC_IVAR____TtC12HomeServices22AutoBugCaptureReporter_lastReportedDate;
  v6 = sub_1D211319C();
  result = (*(*(v6 - 8) + 56))(v4 + v5, 1, 1, v6);
  *(v4 + 16) = v0;
  qword_1EE0839E8 = v4;
  return result;
}

void sub_1D210B764(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_1EE0839E0 != -1)
  {
    v4 = a1;
    v5 = a2;
    v6 = a4;
    v7 = a3;
    swift_once();
    a1 = v4;
    a2 = v5;
    a3 = v7;
    a4 = v6;
  }

  v8 = a1;
  v9 = BYTE2(a1);
  v10 = a2;
  v11 = a3;
  v12 = a4;
  sub_1D210A870(&v8);
}

uint64_t sub_1D210B828(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D210B884(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1D210B894(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7248, &qword_1D2114A80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static AutoBugCaptureManager.withMockReportIssue(_:block:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D210B920, 0, 0);
}

uint64_t sub_1D210B920()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = off_1EC6C7BF8;
  off_1EC6C7BF8 = v0[2];
  qword_1EC6C7C00 = v1;
  sub_1D210B884(v3);

  v8 = (v2 + *v2);
  v4 = v2[1];
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_1D210BA30;
  v6 = v0[5];

  return v8();
}

uint64_t sub_1D210BA30()
{
  v2 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = sub_1D210BBB4;
  }

  else
  {
    v3 = sub_1D210BB44;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D210BB44()
{
  v1 = off_1EC6C7BF8;
  off_1EC6C7BF8 = 0;
  qword_1EC6C7C00 = 0;
  sub_1D210B884(v1);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D210BBB4()
{
  v1 = off_1EC6C7BF8;
  off_1EC6C7BF8 = 0;
  qword_1EC6C7C00 = 0;
  sub_1D210B884(v1);
  v2 = *(v0 + 8);
  v3 = *(v0 + 56);

  return v2();
}

uint64_t AutoBugCaptureIssue.process.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t AutoBugCaptureIssue.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  MEMORY[0x1D38961A0](0x6553796772656E45, 0xEE00736563697672);
  MEMORY[0x1D38961A0](46, 0xE100000000000000);
  v4 = 0xEE0073776F646E69;
  v5 = 0x5720796772656E45;
  if (v1 != 1)
  {
    v5 = 0x6F6F4C2064697247;
    v4 = 0xEB0000000070756BLL;
  }

  if (v1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0x65636E6164697547;
  }

  if (v1)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xEF6C616E67695320;
  }

  MEMORY[0x1D38961A0](v6, v7);

  MEMORY[0x1D38961A0](46, 0xE100000000000000);
  v8 = 0xE600000000000000;
  v9 = 0x726576726553;
  if (v2 != 1)
  {
    v9 = 0x73795320656C6946;
    v8 = 0xEB000000006D6574;
  }

  if (v2)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0x72756769666E6F43;
  }

  if (v2)
  {
    v11 = v8;
  }

  else
  {
    v11 = 0xED00006E6F697461;
  }

  MEMORY[0x1D38961A0](v10, v11);

  MEMORY[0x1D38961A0](46, 0xE100000000000000);
  sub_1D2113CBC();
  return 0;
}

unint64_t sub_1D210BE4C()
{
  result = qword_1EC6C7C10;
  if (!qword_1EC6C7C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C7C10);
  }

  return result;
}

unint64_t sub_1D210BEA4()
{
  result = qword_1EC6C7C18;
  if (!qword_1EC6C7C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C7C18);
  }

  return result;
}

unint64_t sub_1D210BEFC()
{
  result = qword_1EC6C7C20;
  if (!qword_1EC6C7C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C7C20);
  }

  return result;
}

unint64_t sub_1D210BF54()
{
  result = qword_1EC6C7C28;
  if (!qword_1EC6C7C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C7C28);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AutoBugCaptureSubTypeContext(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
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

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AutoBugCaptureSubTypeContext(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t type metadata accessor for AutoBugCaptureReporter()
{
  result = qword_1EE0839C0;
  if (!qword_1EE0839C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D210C180()
{
  sub_1D20AD7E4();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1D210C248(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D210C290(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1D210C2E4(uint64_t a1)
{
  if (a1)
  {
    v2 = *MEMORY[0x1E69D50C8];
    v41 = sub_1D21137CC();
    sub_1D2113BCC();
    if (*(a1 + 16) && (v3 = sub_1D20E459C(v47), (v4 & 1) != 0))
    {
      sub_1D20B7E10(*(a1 + 56) + 32 * v3, v48);
      sub_1D20BC128(v47);
      if ((swift_dynamicCast() & 1) != 0 && v41 == 1)
      {
        v5 = *MEMORY[0x1E69D50B8];
        v42 = sub_1D21137CC();
        v45 = v6;
        sub_1D2113BCC();
        if (*(a1 + 16) && (v7 = sub_1D20E459C(v47), (v8 & 1) != 0))
        {
          sub_1D20B7E10(*(a1 + 56) + 32 * v7, v48);
          sub_1D20BC128(v47);
          if (swift_dynamicCast())
          {
            v10 = v42;
            v9 = v45;
            goto LABEL_42;
          }
        }

        else
        {
          sub_1D20BC128(v47);
        }

        v10 = 0x6E776F6E6B6E55;
        v9 = 0xE700000000000000;
LABEL_42:
        if (qword_1EE0836C0 != -1)
        {
          swift_once();
        }

        v36 = sub_1D211362C();
        __swift_project_value_buffer(v36, qword_1EE087420);

        v29 = sub_1D21135FC();
        v37 = sub_1D2113A9C();

        if (os_log_type_enabled(v29, v37))
        {
          v38 = swift_slowAlloc();
          v39 = swift_slowAlloc();
          v47[0] = v39;
          *v38 = 136315138;
          v40 = sub_1D20B75F0(v10, v9, v47);

          *(v38 + 4) = v40;
          _os_log_impl(&dword_1D209F000, v29, v37, "Diagnostic reporter snapshot accepted with sessionID [%s]", v38, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v39);
          MEMORY[0x1D3896EB0](v39, -1, -1);
          v35 = v38;
          goto LABEL_46;
        }

LABEL_47:

        return;
      }
    }

    else
    {
      sub_1D20BC128(v47);
    }

    v11 = *MEMORY[0x1E69D5098];
    v43 = sub_1D21137CC();
    sub_1D2113BCC();
    if (*(a1 + 16) && (v12 = sub_1D20E459C(v47), (v13 & 1) != 0))
    {
      sub_1D20B7E10(*(a1 + 56) + 32 * v12, v48);
      sub_1D20BC128(v47);
      if (swift_dynamicCast())
      {
        v14 = v43;
        v15 = *MEMORY[0x1E69D50A8];
        v44 = sub_1D21137CC();
        v46 = v16;
        sub_1D2113BCC();
        if (*(a1 + 16) && (v17 = sub_1D20E459C(v47), (v18 & 1) != 0))
        {
          sub_1D20B7E10(*(a1 + 56) + 32 * v17, v48);
          sub_1D20BC128(v47);
          if (swift_dynamicCast())
          {
            v20 = v44;
            v19 = v46;
            goto LABEL_27;
          }
        }

        else
        {
          sub_1D20BC128(v47);
        }

        v20 = 0x6E776F6E6B6E55;
        v19 = 0xE700000000000000;
LABEL_27:
        v25 = 0x6465746365707865;
        v26 = 0xE800000000000000;
        if (v14 != *MEMORY[0x1E69D4FD8] && v14 != *MEMORY[0x1E69D4FF0])
        {
          if (v14 == *MEMORY[0x1E69D4FC8] || v14 == *MEMORY[0x1E69D5018])
          {
            v26 = 0xE800000000000000;
          }

          else
          {
            v25 = 0x7463657078656E75;
            v26 = 0xEA00000000006465;
          }
        }

        if (qword_1EE0836C0 != -1)
        {
          swift_once();
        }

        v28 = sub_1D211362C();
        __swift_project_value_buffer(v28, qword_1EE087420);

        v29 = sub_1D21135FC();
        v30 = sub_1D2113A9C();

        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          v32 = swift_slowAlloc();
          v47[0] = v32;
          *v31 = 136315650;
          v33 = sub_1D20B75F0(v25, v26, v47);

          *(v31 + 4) = v33;
          *(v31 + 12) = 2048;
          *(v31 + 14) = v14;
          *(v31 + 22) = 2080;
          v34 = sub_1D20B75F0(v20, v19, v47);

          *(v31 + 24) = v34;
          _os_log_impl(&dword_1D209F000, v29, v30, "Diagnostic reporter snapshot rejected with%s\nreason: %ld (%s)", v31, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x1D3896EB0](v32, -1, -1);
          v35 = v31;
LABEL_46:
          MEMORY[0x1D3896EB0](v35, -1, -1);

          return;
        }

        goto LABEL_47;
      }
    }

    else
    {
      sub_1D20BC128(v47);
    }

    if (qword_1EE0836C0 != -1)
    {
      swift_once();
    }

    v21 = sub_1D211362C();
    __swift_project_value_buffer(v21, qword_1EE087420);
    v22 = sub_1D21135FC();
    v23 = sub_1D2113A9C();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_1D209F000, v22, v23, "Diagnostic reporter snapshot rejected with unknown reason", v24, 2u);
      MEMORY[0x1D3896EB0](v24, -1, -1);
    }
  }
}

unint64_t sub_1D210C968()
{
  result = qword_1EE083658;
  if (!qword_1EE083658)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE083658);
  }

  return result;
}

uint64_t sub_1D210C9B4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D210C9FC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_1D210CA58@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1D20ECE18();
  if (v3)
  {
    v4 = v2;
    v5 = v3;
    if (sub_1D211391C())
    {
      sub_1D20F0EB0(a1);
    }

    else
    {
      MEMORY[0x1D38961A0](v4, v5);
      sub_1D20F0EB0(a1);
    }

    v10 = 0;
  }

  else
  {
    if (qword_1EE083DE8 != -1)
    {
      swift_once();
    }

    v6 = sub_1D211362C();
    __swift_project_value_buffer(v6, qword_1EE0874C0);
    v7 = sub_1D21135FC();
    v8 = sub_1D2113A7C();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1D209F000, v7, v8, "No Server Base URL Found!!", v9, 2u);
      MEMORY[0x1D3896EB0](v9, -1, -1);
    }

    v10 = 1;
  }

  v11 = sub_1D2112F9C();
  v12 = *(*(v11 - 8) + 56);

  return v12(a1, v10, 1, v11);
}

uint64_t sub_1D210CC48@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7250, &qword_1D21149C0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v17[-v4];
  v6 = sub_1D2112F9C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v17[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D20ECA00(v18);
  if (*(&v18[0] + 1) != 1)
  {
    v19 = v18[0];
    sub_1D20BD1B0(&v19, v17);
    sub_1D20A862C(v18, &qword_1EC6C7518, &unk_1D2116AB0);
    if (*(&v19 + 1))
    {
      sub_1D210CA58(v5);
      if ((*(v7 + 48))(v5, 1, v6) != 1)
      {
        (*(v7 + 32))(v10, v5, v6);
        sub_1D2112F3C();
        sub_1D20A862C(&v19, &qword_1EC6C7510, &unk_1D2115710);
        (*(v7 + 8))(v10, v6);
        v15 = 0;
        return (*(v7 + 56))(a1, v15, 1, v6);
      }

      sub_1D20A862C(&v19, &qword_1EC6C7510, &unk_1D2115710);
      sub_1D20A862C(v5, &qword_1EC6C7250, &qword_1D21149C0);
    }
  }

  if (qword_1EE083DE8 != -1)
  {
    swift_once();
  }

  v11 = sub_1D211362C();
  __swift_project_value_buffer(v11, qword_1EE0874C0);
  v12 = sub_1D21135FC();
  v13 = sub_1D2113A7C();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_1D209F000, v12, v13, "Unable to compute API Path for grid tile lookup.", v14, 2u);
    MEMORY[0x1D3896EB0](v14, -1, -1);
  }

  v15 = 1;
  return (*(v7 + 56))(a1, v15, 1, v6);
}

uint64_t sub_1D210CF3C@<X0>(void (*a1)(char *, uint64_t)@<X0>, char *a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, char *a7@<X8>)
{
  v106 = a5;
  v107 = a6;
  v98 = a4;
  v97 = a3;
  v103 = a1;
  v104 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7508, &unk_1D2116AA0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v100 = &v92 - v10;
  v11 = sub_1D2112B1C();
  v108 = *(v11 - 8);
  v109 = v11;
  v12 = *(v108 + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v95 = &v92 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v96 = &v92 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v102 = &v92 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7250, &qword_1D21149C0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8);
  v22 = &v92 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v20);
  v105 = &v92 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v92 - v25;
  v27 = sub_1D2112F9C();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  v30 = MEMORY[0x1EEE9AC00](v27);
  v99 = &v92 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x1EEE9AC00](v30);
  v34 = &v92 - v33;
  v35 = MEMORY[0x1EEE9AC00](v32);
  v101 = &v92 - v36;
  MEMORY[0x1EEE9AC00](v35);
  v38 = &v92 - v37;
  sub_1D210CC48(v26);
  v39 = *(v28 + 48);
  if (v39(v26, 1, v27) == 1)
  {
    sub_1D20A862C(v26, &qword_1EC6C7250, &qword_1D21149C0);
    if (qword_1EE083DE8 != -1)
    {
      swift_once();
    }

    v40 = sub_1D211362C();
    __swift_project_value_buffer(v40, qword_1EE0874C0);
    v41 = v107;

    v42 = sub_1D21135FC();
    v43 = sub_1D2113A7C();

    v44 = os_log_type_enabled(v42, v43);
    v45 = v108;
    if (v44)
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v110[0] = v47;
      *v46 = 136315138;
      *(v46 + 4) = sub_1D20B75F0(v106, v41, v110);
      _os_log_impl(&dword_1D209F000, v42, v43, "Request URL for Grid Tile Lookup API not found | traceId: %s", v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v47);
      MEMORY[0x1D3896EB0](v47, -1, -1);
      MEMORY[0x1D3896EB0](v46, -1, -1);
    }

    return (*(v45 + 56))(a7, 1, 1, v109);
  }

  v94 = a7;
  v93 = *(v28 + 32);
  v93(v38, v26, v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C73B0, &unk_1D2115420);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D2114850;
  *(inited + 32) = 104;
  *(inited + 40) = 0xE100000000000000;
  *(inited + 48) = v103;
  *(inited + 56) = v104;

  v104 = v38;
  sub_1D2112F1C();
  sub_1D2112F7C();
  if (v39(v22, 1, v27) == 1)
  {

    sub_1D20A862C(v22, &qword_1EC6C7250, &qword_1D21149C0);
    v50 = v105;
    (*(v28 + 56))(v105, 1, 1, v27);
    v51 = v107;
    v52 = v28;
LABEL_10:
    sub_1D20A862C(v50, &qword_1EC6C7250, &qword_1D21149C0);
    if (qword_1EE083DE8 != -1)
    {
      swift_once();
    }

    v56 = sub_1D211362C();
    __swift_project_value_buffer(v56, qword_1EE0874C0);

    v57 = sub_1D21135FC();
    v58 = sub_1D2113A7C();

    v59 = os_log_type_enabled(v57, v58);
    v60 = v94;
    v61 = v109;
    v62 = v104;
    if (v59)
    {
      v63 = swift_slowAlloc();
      v64 = v27;
      v65 = swift_slowAlloc();
      v110[0] = v65;
      *v63 = 136315138;
      *(v63 + 4) = sub_1D20B75F0(v106, v51, v110);
      _os_log_impl(&dword_1D209F000, v57, v58, "Unable to create Grid Tile Request URL with required query parameters | traceId: %s", v63, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v65);
      MEMORY[0x1D3896EB0](v65, -1, -1);
      MEMORY[0x1D3896EB0](v63, -1, -1);

      (*(v52 + 8))(v62, v64);
    }

    else
    {

      (*(v52 + 8))(v62, v27);
    }

    return (*(v108 + 56))(v60, 1, 1, v61);
  }

  v93(v34, v22, v27);
  v53 = v105;
  sub_1D20F108C(inited, 1, 0, v105);
  v50 = v53;

  v54 = *(v28 + 8);
  v54(v34, v27);
  v55 = v39(v53, 1, v27);
  v51 = v107;
  v52 = v28;
  if (v55 == 1)
  {
    goto LABEL_10;
  }

  v103 = v54;
  v66 = v101;
  v93(v101, v53, v27);
  (*(v28 + 16))(v99, v66, v27);
  sub_1D2112ACC();
  sub_1D2112A8C();
  if (sub_1D20CF7E0())
  {
    v67 = &unk_1F4D9E0E0;
  }

  else
  {
    v67 = &unk_1F4D9E120;
  }

  v68 = sub_1D20BABD4(v67, &unk_1F4D9E080);
  v70 = v69;
  sub_1D20CF7E0();
  v71 = v100;
  sub_1D20D94F0(v68, v70, 49, 0xE100000000000000, v100);

  v73 = v108;
  v72 = v109;
  if ((*(v108 + 48))(v71, 1, v109) == 1)
  {
    sub_1D20A862C(v71, &qword_1EC6C7508, &unk_1D2116AA0);
    v74 = v94;
    if (qword_1EE083DE8 != -1)
    {
      swift_once();
    }

    v75 = sub_1D211362C();
    __swift_project_value_buffer(v75, qword_1EE0874C0);

    v76 = sub_1D21135FC();
    v77 = sub_1D2113A7C();

    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      v79 = v27;
      v80 = swift_slowAlloc();
      v110[0] = v80;
      *v78 = 136315138;
      *(v78 + 4) = sub_1D20B75F0(v106, v51, v110);
      _os_log_impl(&dword_1D209F000, v76, v77, "Unable to create signed Grid Look up request | traceId: %s", v78, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v80);
      MEMORY[0x1D3896EB0](v80, -1, -1);
      MEMORY[0x1D3896EB0](v78, -1, -1);

      (*(v73 + 8))(v102, v72);
      v81 = v103;
      v103(v101, v79);
      v82 = v104;
      v83 = v79;
    }

    else
    {

      (*(v73 + 8))(v102, v72);
      v81 = v103;
      v103(v101, v27);
      v82 = v104;
      v83 = v27;
    }

    v81(v82, v83);
    return (*(v73 + 56))(v74, 1, 1, v72);
  }

  else
  {
    v105 = v27;
    v84 = v95;
    (*(v73 + 16))(v95, v71, v72);
    sub_1D2112AEC();
    sub_1D2112AEC();
    v85 = *(v73 + 8);
    v85(v71, v72);
    v86 = *(v73 + 32);
    v87 = v96;
    v86(v96, v84, v72);
    sub_1D2112B0C();
    v88 = v94;
    if (v98)
    {
      v89 = HIBYTE(v98) & 0xF;
      if ((v98 & 0x2000000000000000) == 0)
      {
        v89 = v97 & 0xFFFFFFFFFFFFLL;
      }

      if (v89)
      {
        sub_1D2112AEC();
      }
    }

    v85(v102, v72);
    v90 = v105;
    v91 = v103;
    v103(v101, v105);
    v91(v104, v90);
    v86(v88, v87, v72);
    return (*(v73 + 56))(v88, 0, 1, v72);
  }
}

uint64_t HSIntervalBlockPayload.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for HSIntervalBlockPayload(0) + 48);
  v4 = sub_1D211348C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t HSIntervalBlockPayload.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for HSIntervalBlockPayload(0) + 48);
  v4 = sub_1D211348C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_1D210DD1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D210F2D4();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1D210DD68(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D210F280();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1D210DDB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D210F22C();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1D210DE00@<X0>(uint64_t (*a1)(void)@<X3>, uint64_t a2@<X8>)
{
  result = a1();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 9) = v5 & 1;
  return result;
}

uint64_t sub_1D210DE38@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  result = a2(*a1);
  *a3 = result;
  *(a3 + 8) = v5;
  *(a3 + 9) = v6 & 1;
  return result;
}

uint64_t sub_1D210DE74(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D2112744();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t HSIntervalBlockPayload.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0xE000000000000000;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0xE000000000000000;
  *(a1 + 64) = 0;
  *(a1 + 72) = 1;
  *(a1 + 80) = 0;
  *(a1 + 88) = 1;
  *(a1 + 96) = 0;
  *(a1 + 104) = 1;
  *(a1 + 112) = MEMORY[0x1E69E7CC0];
  v2 = type metadata accessor for HSIntervalBlockPayload(0);
  v3 = a1 + v2[12];
  sub_1D211347C();
  v4 = v2[13];
  v5 = sub_1D211345C();
  v8 = *(*(v5 - 8) + 56);
  (v8)((v5 - 8), a1 + v4, 1, 1, v5);
  v8(a1 + v2[14], 1, 1, v5);
  v6 = a1 + v2[15];

  return (v8)(v6, 1, 1, v5);
}

uint64_t sub_1D210E044()
{
  v0 = sub_1D21135EC();
  __swift_allocate_value_buffer(v0, qword_1EC6C7C58);
  __swift_project_value_buffer(v0, qword_1EC6C7C58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7838, qword_1D2116EA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7840, qword_1D2116D70) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1D2119710;
  v4 = v28 + v3;
  v5 = v28 + v3 + v1[14];
  *(v28 + v3) = 1;
  *v5 = "utilityID";
  *(v5 + 8) = 9;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1D21135CC();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v28 + v3 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "subscriptionID";
  *(v9 + 8) = 14;
  *(v9 + 16) = 2;
  v8();
  v10 = (v28 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "usagePointID";
  *(v11 + 1) = 12;
  v11[16] = 2;
  v8();
  v12 = (v28 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "meterID";
  *(v13 + 1) = 7;
  v13[16] = 2;
  v8();
  v14 = (v28 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "sourceTime";
  *(v15 + 1) = 10;
  v15[16] = 2;
  v8();
  v16 = (v28 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "start";
  *(v17 + 1) = 5;
  v17[16] = 2;
  v8();
  v18 = (v28 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "end";
  *(v19 + 1) = 3;
  v19[16] = 2;
  v8();
  v20 = (v28 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "unit";
  *(v21 + 1) = 4;
  v21[16] = 2;
  v8();
  v22 = v28 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "commodity";
  *(v22 + 8) = 9;
  *(v22 + 16) = 2;
  v8();
  v23 = (v28 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "flowDirection";
  *(v24 + 1) = 13;
  v24[16] = 2;
  v8();
  v25 = (v28 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "readings";
  *(v26 + 1) = 8;
  v26[16] = 2;
  v8();
  return sub_1D21135DC();
}

uint64_t static HSIntervalBlockPayload._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC6C71A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1D21135EC();
  v3 = __swift_project_value_buffer(v2, qword_1EC6C7C58);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t HSIntervalBlockPayload.decodeMessage<A>(decoder:)()
{
  result = sub_1D21134CC();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result <= 5)
      {
        if (result <= 2)
        {
          if (result == 1 || result == 2)
          {
LABEL_4:
            sub_1D211350C();
          }
        }

        else
        {
          if (result == 3 || result == 4)
          {
            goto LABEL_4;
          }

          sub_1D210E720();
        }
      }

      else
      {
        if (result <= 8)
        {
          if (result == 6)
          {
            sub_1D210E7D4();
            goto LABEL_5;
          }

          if (result == 7)
          {
            sub_1D210E888();
            goto LABEL_5;
          }

          v3 = v0;
          sub_1D210F22C();
          goto LABEL_29;
        }

        switch(result)
        {
          case 9:
            v3 = v0;
            sub_1D210F280();
            goto LABEL_29;
          case 10:
            v3 = v0;
            sub_1D210F2D4();
LABEL_29:
            v0 = v3;
            sub_1D21134EC();
            break;
          case 11:
            type metadata accessor for HSIntervalBlockPayload.IntervalReading(0);
            sub_1D21116E4(&qword_1EC6C7C88, type metadata accessor for HSIntervalBlockPayload.IntervalReading);
            sub_1D211351C();
            break;
        }
      }

LABEL_5:
      result = sub_1D21134CC();
    }
  }

  return result;
}

uint64_t sub_1D210E720()
{
  v0 = *(type metadata accessor for HSIntervalBlockPayload(0) + 52);
  sub_1D211345C();
  sub_1D21116E4(&qword_1EC6C7DB0, MEMORY[0x1E69AA900]);
  return sub_1D211352C();
}

uint64_t sub_1D210E7D4()
{
  v0 = *(type metadata accessor for HSIntervalBlockPayload(0) + 56);
  sub_1D211345C();
  sub_1D21116E4(&qword_1EC6C7DB0, MEMORY[0x1E69AA900]);
  return sub_1D211352C();
}

uint64_t sub_1D210E888()
{
  v0 = *(type metadata accessor for HSIntervalBlockPayload(0) + 60);
  sub_1D211345C();
  sub_1D21116E4(&qword_1EC6C7DB0, MEMORY[0x1E69AA900]);
  return sub_1D211352C();
}

uint64_t HSIntervalBlockPayload.traverse<A>(visitor:)()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4 || (result = sub_1D211359C(), !v1))
  {
    v6 = *(v0 + 24);
    v7 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v7 = *(v0 + 16) & 0xFFFFFFFFFFFFLL;
    }

    if (!v7 || (result = sub_1D211359C(), !v1))
    {
      v8 = *(v0 + 40);
      v9 = HIBYTE(v8) & 0xF;
      if ((v8 & 0x2000000000000000) == 0)
      {
        v9 = *(v0 + 32) & 0xFFFFFFFFFFFFLL;
      }

      if (!v9 || (result = sub_1D211359C(), !v1))
      {
        v10 = *(v0 + 56);
        v11 = HIBYTE(v10) & 0xF;
        if ((v10 & 0x2000000000000000) == 0)
        {
          v11 = *(v0 + 48) & 0xFFFFFFFFFFFFLL;
        }

        if (!v11 || (result = sub_1D211359C(), !v1))
        {
          result = sub_1D210EC14(v0);
          if (!v1)
          {
            sub_1D210EE1C(v0);
            sub_1D210F024(v0);
            if (*(v0 + 64))
            {
              v13 = *(v0 + 64);
              v16 = *(v0 + 72);
              sub_1D210F22C();
              sub_1D211357C();
            }

            if (*(v0 + 80))
            {
              v14 = *(v0 + 80);
              v17 = *(v0 + 88);
              sub_1D210F280();
              sub_1D211357C();
            }

            if (*(v0 + 96))
            {
              v15 = *(v0 + 96);
              v18 = *(v0 + 104);
              sub_1D210F2D4();
              sub_1D211357C();
            }

            if (*(*(v0 + 112) + 16))
            {
              type metadata accessor for HSIntervalBlockPayload.IntervalReading(0);
              sub_1D21116E4(&qword_1EC6C7C88, type metadata accessor for HSIntervalBlockPayload.IntervalReading);
              sub_1D21135AC();
            }

            v12 = v0 + *(type metadata accessor for HSIntervalBlockPayload(0) + 48);
            return sub_1D211346C();
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1D210EC14(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7BD8, &qword_1D2119238);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = v13 - v4;
  v6 = sub_1D211345C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for HSIntervalBlockPayload(0);
  sub_1D2112798(a1 + *(v11 + 52), v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_1D20A862C(v5, &qword_1EC6C7BD8, &qword_1D2119238);
  }

  (*(v7 + 32))(v10, v5, v6);
  sub_1D21116E4(&qword_1EC6C7DB0, MEMORY[0x1E69AA900]);
  sub_1D21135BC();
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1D210EE1C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7BD8, &qword_1D2119238);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = v13 - v4;
  v6 = sub_1D211345C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for HSIntervalBlockPayload(0);
  sub_1D2112798(a1 + *(v11 + 56), v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_1D20A862C(v5, &qword_1EC6C7BD8, &qword_1D2119238);
  }

  (*(v7 + 32))(v10, v5, v6);
  sub_1D21116E4(&qword_1EC6C7DB0, MEMORY[0x1E69AA900]);
  sub_1D21135BC();
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1D210F024(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7BD8, &qword_1D2119238);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = v13 - v4;
  v6 = sub_1D211345C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for HSIntervalBlockPayload(0);
  sub_1D2112798(a1 + *(v11 + 60), v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_1D20A862C(v5, &qword_1EC6C7BD8, &qword_1D2119238);
  }

  (*(v7 + 32))(v10, v5, v6);
  sub_1D21116E4(&qword_1EC6C7DB0, MEMORY[0x1E69AA900]);
  sub_1D21135BC();
  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_1D210F22C()
{
  result = qword_1EC6C7C70;
  if (!qword_1EC6C7C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C7C70);
  }

  return result;
}

unint64_t sub_1D210F280()
{
  result = qword_1EC6C7C78;
  if (!qword_1EC6C7C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C7C78);
  }

  return result;
}

unint64_t sub_1D210F2D4()
{
  result = qword_1EC6C7C80;
  if (!qword_1EC6C7C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C7C80);
  }

  return result;
}

uint64_t HSIntervalBlockPayload.hashValue.getter()
{
  sub_1D2113ECC();
  type metadata accessor for HSIntervalBlockPayload(0);
  sub_1D21116E4(&qword_1EC6C7C90, type metadata accessor for HSIntervalBlockPayload);
  sub_1D211374C();
  return sub_1D2113F1C();
}

uint64_t sub_1D210F3D4@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0xE000000000000000;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0xE000000000000000;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0xE000000000000000;
  *(a2 + 64) = 0;
  *(a2 + 72) = 1;
  *(a2 + 80) = 0;
  *(a2 + 88) = 1;
  *(a2 + 96) = 0;
  *(a2 + 104) = 1;
  *(a2 + 112) = MEMORY[0x1E69E7CC0];
  v4 = a2 + a1[12];
  sub_1D211347C();
  v5 = a1[13];
  v6 = sub_1D211345C();
  v9 = *(*(v6 - 8) + 56);
  (v9)((v6 - 8), a2 + v5, 1, 1, v6);
  v9(a2 + a1[14], 1, 1, v6);
  v7 = a2 + a1[15];

  return (v9)(v7, 1, 1, v6);
}

uint64_t sub_1D210F510@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 48);
  v5 = sub_1D211348C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1D210F584(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  v5 = sub_1D211348C();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_1D210F5F8(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 48);
  return result;
}

uint64_t sub_1D210F64C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D21116E4(&qword_1EC6C7DB8, type metadata accessor for HSIntervalBlockPayload);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1D210F6EC(uint64_t a1)
{
  v2 = sub_1D21116E4(&qword_1EC6C7CA0, type metadata accessor for HSIntervalBlockPayload);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1D210F758()
{
  sub_1D21116E4(&qword_1EC6C7CA0, type metadata accessor for HSIntervalBlockPayload);

  return sub_1D211355C();
}

uint64_t sub_1D210F7D8()
{
  v0 = sub_1D21135EC();
  __swift_allocate_value_buffer(v0, qword_1EC6CE8E0);
  __swift_project_value_buffer(v0, qword_1EC6CE8E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7838, qword_1D2116EA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7840, qword_1D2116D70) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D2119720;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "FLOW_DIRECTION_UNSPECIFIED";
  *(v6 + 8) = 26;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1D21135CC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "DELIVERED";
  *(v10 + 8) = 9;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "REVERSE";
  *(v12 + 1) = 7;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "NET";
  *(v14 + 1) = 3;
  v14[16] = 2;
  v9();
  return sub_1D21135DC();
}

uint64_t sub_1D210FA3C()
{
  v0 = sub_1D21135EC();
  __swift_allocate_value_buffer(v0, qword_1EC6CE8F8);
  __swift_project_value_buffer(v0, qword_1EC6CE8F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7838, qword_1D2116EA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7840, qword_1D2116D70) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D2115280;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "COMMODITY_UNSPECIFIED";
  *(v6 + 8) = 21;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1D21135CC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "ELECTRIC";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  return sub_1D21135DC();
}

uint64_t sub_1D210FC28()
{
  v0 = sub_1D21135EC();
  __swift_allocate_value_buffer(v0, qword_1EC6CE910);
  __swift_project_value_buffer(v0, qword_1EC6CE910);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7838, qword_1D2116EA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7840, qword_1D2116D70) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D2115280;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "UNIT_UNSPECIFIED";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1D21135CC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "KWH";
  *(v10 + 1) = 3;
  v10[16] = 2;
  v9();
  return sub_1D21135DC();
}

uint64_t sub_1D210FE14()
{
  v0 = sub_1D21135EC();
  __swift_allocate_value_buffer(v0, qword_1EC6CE928);
  __swift_project_value_buffer(v0, qword_1EC6CE928);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7838, qword_1D2116EA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7840, qword_1D2116D70) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D2119720;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "value";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1D21135CC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "qualities";
  *(v10 + 8) = 9;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "start";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "end";
  *(v14 + 1) = 3;
  v14[16] = 2;
  v9();
  return sub_1D21135DC();
}

uint64_t sub_1D211005C()
{
  result = sub_1D21134CC();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result > 2)
      {
        if (result == 3)
        {
          sub_1D2110168();
        }

        else if (result == 4)
        {
          sub_1D211021C();
        }
      }

      else if (result == 1)
      {
        sub_1D21134FC();
      }

      else if (result == 2)
      {
        sub_1D2112744();
        sub_1D21134DC();
      }

      result = sub_1D21134CC();
    }
  }

  return result;
}

uint64_t sub_1D2110168()
{
  v0 = *(type metadata accessor for HSIntervalBlockPayload.IntervalReading(0) + 28);
  sub_1D211345C();
  sub_1D21116E4(&qword_1EC6C7DB0, MEMORY[0x1E69AA900]);
  return sub_1D211352C();
}

uint64_t sub_1D211021C()
{
  v0 = *(type metadata accessor for HSIntervalBlockPayload.IntervalReading(0) + 32);
  sub_1D211345C();
  sub_1D21116E4(&qword_1EC6C7DB0, MEMORY[0x1E69AA900]);
  return sub_1D211352C();
}

uint64_t sub_1D21102D0()
{
  if (*v0 == 0.0 || (result = sub_1D211358C(), !v1))
  {
    if (!*(*(v0 + 8) + 16) || (sub_1D2112744(), result = sub_1D211356C(), !v1))
    {
      result = sub_1D21103CC(v0);
      if (!v1)
      {
        sub_1D21105D4(v0);
        v3 = v0 + *(type metadata accessor for HSIntervalBlockPayload.IntervalReading(0) + 24);
        return sub_1D211346C();
      }
    }
  }

  return result;
}

uint64_t sub_1D21103CC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7BD8, &qword_1D2119238);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = v13 - v4;
  v6 = sub_1D211345C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for HSIntervalBlockPayload.IntervalReading(0);
  sub_1D2112798(a1 + *(v11 + 28), v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_1D20A862C(v5, &qword_1EC6C7BD8, &qword_1D2119238);
  }

  (*(v7 + 32))(v10, v5, v6);
  sub_1D21116E4(&qword_1EC6C7DB0, MEMORY[0x1E69AA900]);
  sub_1D21135BC();
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1D21105D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7BD8, &qword_1D2119238);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = v13 - v4;
  v6 = sub_1D211345C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for HSIntervalBlockPayload.IntervalReading(0);
  sub_1D2112798(a1 + *(v11 + 32), v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_1D20A862C(v5, &qword_1EC6C7BD8, &qword_1D2119238);
  }

  (*(v7 + 32))(v10, v5, v6);
  sub_1D21116E4(&qword_1EC6C7DB0, MEMORY[0x1E69AA900]);
  sub_1D21135BC();
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1D21107DC@<X0>(int *a1@<X0>, char *a2@<X8>)
{
  v4 = MEMORY[0x1E69E7CC0];
  *a2 = 0;
  *(a2 + 1) = v4;
  v5 = &a2[a1[6]];
  sub_1D211347C();
  v6 = a1[7];
  v7 = sub_1D211345C();
  v10 = *(*(v7 - 8) + 56);
  (v10)((v7 - 8), &a2[v6], 1, 1, v7);
  v8 = &a2[a1[8]];

  return v10(v8, 1, 1, v7);
}

uint64_t sub_1D21108C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_1D211348C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1D2110938(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = sub_1D211348C();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_1D21109AC(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 24);
  return result;
}

uint64_t sub_1D2110A00(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D21116E4(&qword_1EC6C7DA0, type metadata accessor for HSIntervalBlockPayload.IntervalReading);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1D2110AA0(uint64_t a1)
{
  v2 = sub_1D21116E4(&qword_1EC6C7C88, type metadata accessor for HSIntervalBlockPayload.IntervalReading);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1D2110B0C()
{
  sub_1D21116E4(&qword_1EC6C7C88, type metadata accessor for HSIntervalBlockPayload.IntervalReading);

  return sub_1D211355C();
}

uint64_t sub_1D2110B8C()
{
  v0 = sub_1D21135EC();
  __swift_allocate_value_buffer(v0, qword_1EC6CE940);
  __swift_project_value_buffer(v0, qword_1EC6CE940);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7838, qword_1D2116EA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7840, qword_1D2116D70) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D2119720;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "QUALITY_UNSPECIFIED";
  *(v6 + 8) = 19;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1D21135CC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "ESTIMATED";
  *(v10 + 8) = 9;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "VALIDATED";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "RAW";
  *(v14 + 1) = 3;
  v14[16] = 2;
  v9();
  return sub_1D21135DC();
}

uint64_t _s12HomeServices22HSIntervalBlockPayloadV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D211345C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v58[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7BD8, &qword_1D2119238);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = &v58[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = MEMORY[0x1EEE9AC00](v11);
  v67 = &v58[-v15];
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v58[-v16];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7BE0, &qword_1D2119240);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v66 = &v58[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = &v58[-v23];
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v58[-v25];
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_1D2113E2C() & 1) == 0 || (*(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24)) && (sub_1D2113E2C() & 1) == 0 || (*(a1 + 32) != *(a2 + 32) || *(a1 + 40) != *(a2 + 40)) && (sub_1D2113E2C() & 1) == 0 || (*(a1 + 48) != *(a2 + 48) || *(a1 + 56) != *(a2 + 56)) && (sub_1D2113E2C() & 1) == 0)
  {
    goto LABEL_34;
  }

  v62 = v13;
  v63 = v8;
  v27 = type metadata accessor for HSIntervalBlockPayload(0);
  v64 = v18;
  v65 = v27;
  v28 = *(v27 + 52);
  v29 = *(v18 + 48);
  sub_1D2112798(a1 + v28, v26);
  sub_1D2112798(a2 + v28, &v26[v29]);
  v30 = *(v5 + 48);
  if (v30(v26, 1, v4) == 1)
  {
    if (v30(&v26[v29], 1, v4) == 1)
    {
      sub_1D20A862C(v26, &qword_1EC6C7BD8, &qword_1D2119238);
      goto LABEL_20;
    }

LABEL_18:
    v31 = v26;
LABEL_33:
    sub_1D20A862C(v31, &qword_1EC6C7BE0, &qword_1D2119240);
    goto LABEL_34;
  }

  sub_1D2112798(v26, v17);
  v61 = v30;
  if (v30(&v26[v29], 1, v4) == 1)
  {
    (*(v5 + 8))(v17, v4);
    goto LABEL_18;
  }

  v32 = v63;
  (*(v5 + 32))(v63, &v26[v29], v4);
  sub_1D21116E4(&qword_1EC6C7BE8, MEMORY[0x1E69AA900]);
  v59 = sub_1D21137AC();
  v60 = v5;
  v33 = *(v5 + 8);
  v33(v32, v4);
  v33(v17, v4);
  v5 = v60;
  sub_1D20A862C(v26, &qword_1EC6C7BD8, &qword_1D2119238);
  v30 = v61;
  if ((v59 & 1) == 0)
  {
    goto LABEL_34;
  }

LABEL_20:
  v34 = v65[14];
  v35 = *(v64 + 48);
  sub_1D2112798(a1 + v34, v24);
  sub_1D2112798(a2 + v34, &v24[v35]);
  if (v30(v24, 1, v4) == 1)
  {
    if (v30(&v24[v35], 1, v4) == 1)
    {
      sub_1D20A862C(v24, &qword_1EC6C7BD8, &qword_1D2119238);
      goto LABEL_27;
    }

    goto LABEL_25;
  }

  v36 = v30;
  v37 = v67;
  sub_1D2112798(v24, v67);
  v61 = v36;
  if (v36(&v24[v35], 1, v4) == 1)
  {
    (*(v5 + 8))(v37, v4);
LABEL_25:
    v31 = v24;
    goto LABEL_33;
  }

  v38 = v63;
  (*(v5 + 32))(v63, &v24[v35], v4);
  sub_1D21116E4(&qword_1EC6C7BE8, MEMORY[0x1E69AA900]);
  v39 = sub_1D21137AC();
  v40 = *(v5 + 8);
  v40(v38, v4);
  v40(v67, v4);
  sub_1D20A862C(v24, &qword_1EC6C7BD8, &qword_1D2119238);
  v30 = v61;
  if ((v39 & 1) == 0)
  {
    goto LABEL_34;
  }

LABEL_27:
  v41 = v65[15];
  v42 = *(v64 + 48);
  v43 = v66;
  sub_1D2112798(a1 + v41, v66);
  sub_1D2112798(a2 + v41, &v43[v42]);
  if (v30(v43, 1, v4) != 1)
  {
    v44 = v30;
    v45 = v62;
    sub_1D2112798(v43, v62);
    if (v44(&v43[v42], 1, v4) != 1)
    {
      v48 = v63;
      (*(v5 + 32))(v63, &v43[v42], v4);
      sub_1D21116E4(&qword_1EC6C7BE8, MEMORY[0x1E69AA900]);
      v49 = sub_1D21137AC();
      v50 = *(v5 + 8);
      v50(v48, v4);
      v50(v45, v4);
      sub_1D20A862C(v43, &qword_1EC6C7BD8, &qword_1D2119238);
      if ((v49 & 1) == 0)
      {
        goto LABEL_34;
      }

      goto LABEL_37;
    }

    (*(v5 + 8))(v45, v4);
    goto LABEL_32;
  }

  if (v30(&v43[v42], 1, v4) != 1)
  {
LABEL_32:
    v31 = v43;
    goto LABEL_33;
  }

  sub_1D20A862C(v43, &qword_1EC6C7BD8, &qword_1D2119238);
LABEL_37:
  v51 = *(a1 + 64);
  v52 = *(a2 + 64);
  if (*(a1 + 72))
  {
    v51 = v51 != 0;
  }

  if (*(a2 + 72) == 1)
  {
    if (v52)
    {
      if (v51 != 1)
      {
        goto LABEL_34;
      }
    }

    else if (v51)
    {
      goto LABEL_34;
    }
  }

  else if (v51 != v52)
  {
    goto LABEL_34;
  }

  v53 = *(a1 + 80);
  v54 = *(a2 + 80);
  if (*(a1 + 88))
  {
    v53 = v53 != 0;
  }

  if (*(a2 + 88) == 1)
  {
    if (v54)
    {
      if (v53 != 1)
      {
        goto LABEL_34;
      }
    }

    else if (v53)
    {
      goto LABEL_34;
    }
  }

  else if (v53 != v54)
  {
    goto LABEL_34;
  }

  v55 = *(a1 + 96);
  v56 = *(a2 + 96);
  if (*(a2 + 104) == 1)
  {
    if (v56 > 1)
    {
      if (v56 == 2)
      {
        if (v55 != 2)
        {
          goto LABEL_34;
        }
      }

      else if (v55 != 3)
      {
        goto LABEL_34;
      }
    }

    else if (v56)
    {
      if (v55 != 1)
      {
        goto LABEL_34;
      }
    }

    else if (v55)
    {
      goto LABEL_34;
    }
  }

  else if (v55 != v56)
  {
    goto LABEL_34;
  }

  if (sub_1D20FC26C(*(a1 + 112), *(a2 + 112)))
  {
    v57 = v65[12];
    sub_1D211348C();
    sub_1D21116E4(&qword_1EC6C7848, MEMORY[0x1E69AAC08]);
    v46 = sub_1D21137AC();
    return v46 & 1;
  }

LABEL_34:
  v46 = 0;
  return v46 & 1;
}

uint64_t sub_1D21116E4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1D2111874()
{
  sub_1D21119B4(319, &qword_1EC6C7CC0, type metadata accessor for HSIntervalBlockPayload.IntervalReading, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1D211348C();
    if (v1 <= 0x3F)
    {
      sub_1D21119B4(319, &qword_1EC6C7CC8, MEMORY[0x1E69AA900], MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1D21119B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D2111A40()
{
  sub_1D2111B1C();
  if (v0 <= 0x3F)
  {
    sub_1D211348C();
    if (v1 <= 0x3F)
    {
      sub_1D21119B4(319, &qword_1EC6C7CC8, MEMORY[0x1E69AA900], MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1D2111B1C()
{
  if (!qword_1EC6C7CE0)
  {
    v0 = sub_1D2113A0C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC6C7CE0);
    }
  }
}

unint64_t sub_1D2111BB0()
{
  result = qword_1EC6C7CE8;
  if (!qword_1EC6C7CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C7CE8);
  }

  return result;
}

unint64_t sub_1D2111C08()
{
  result = qword_1EC6C7CF0;
  if (!qword_1EC6C7CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C7CF0);
  }

  return result;
}

unint64_t sub_1D2111C60()
{
  result = qword_1EC6C7CF8;
  if (!qword_1EC6C7CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C7CF8);
  }

  return result;
}

unint64_t sub_1D2111CB8()
{
  result = qword_1EC6C7D00;
  if (!qword_1EC6C7D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C7D00);
  }

  return result;
}

unint64_t sub_1D2111D10()
{
  result = qword_1EC6C7D08;
  if (!qword_1EC6C7D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C7D08);
  }

  return result;
}

unint64_t sub_1D2111D68()
{
  result = qword_1EC6C7D10;
  if (!qword_1EC6C7D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C7D10);
  }

  return result;
}

unint64_t sub_1D2111FA0()
{
  result = qword_1EC6C7D70;
  if (!qword_1EC6C7D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C7D70);
  }

  return result;
}

unint64_t sub_1D2111FF8()
{
  result = qword_1EC6C7D78;
  if (!qword_1EC6C7D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C7D78);
  }

  return result;
}

unint64_t sub_1D2112050()
{
  result = qword_1EC6C7D80;
  if (!qword_1EC6C7D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C7D80);
  }

  return result;
}

unint64_t sub_1D21120A8()
{
  result = qword_1EC6C7D88;
  if (!qword_1EC6C7D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C7D88);
  }

  return result;
}

unint64_t sub_1D2112100()
{
  result = qword_1EC6C7D90;
  if (!qword_1EC6C7D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C7D90);
  }

  return result;
}

unint64_t sub_1D2112158()
{
  result = qword_1EC6C7D98;
  if (!qword_1EC6C7D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C7D98);
  }

  return result;
}

uint64_t sub_1D21121AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D211345C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v41[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7BD8, &qword_1D2119238);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = &v41[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v41[-v14];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7BE0, &qword_1D2119240);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v41[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v41[-v21];
  if (*a1 != *a2 || (sub_1D20FCAB4(*(a1 + 8), *(a2 + 8)) & 1) == 0)
  {
    goto LABEL_17;
  }

  v45 = v13;
  v46 = v8;
  v47 = type metadata accessor for HSIntervalBlockPayload.IntervalReading(0);
  v23 = *(v47 + 28);
  v24 = *(v16 + 48);
  sub_1D2112798(a1 + v23, v22);
  sub_1D2112798(a2 + v23, &v22[v24]);
  v48 = v5;
  v25 = *(v5 + 48);
  if (v25(v22, 1, v4) != 1)
  {
    sub_1D2112798(v22, v15);
    if (v25(&v22[v24], 1, v4) != 1)
    {
      v27 = *(v48 + 32);
      v43 = v25;
      v28 = v46;
      v27(v46, &v22[v24], v4);
      sub_1D21116E4(&qword_1EC6C7BE8, MEMORY[0x1E69AA900]);
      v42 = sub_1D21137AC();
      v44 = *(v48 + 8);
      v29 = v28;
      v25 = v43;
      v44(v29, v4);
      v44(v15, v4);
      sub_1D20A862C(v22, &qword_1EC6C7BD8, &qword_1D2119238);
      if ((v42 & 1) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_10;
    }

    (*(v48 + 8))(v15, v4);
LABEL_8:
    v26 = v22;
LABEL_16:
    sub_1D20A862C(v26, &qword_1EC6C7BE0, &qword_1D2119240);
    goto LABEL_17;
  }

  if (v25(&v22[v24], 1, v4) != 1)
  {
    goto LABEL_8;
  }

  sub_1D20A862C(v22, &qword_1EC6C7BD8, &qword_1D2119238);
LABEL_10:
  v30 = v47;
  v31 = *(v47 + 32);
  v32 = *(v16 + 48);
  sub_1D2112798(a1 + v31, v20);
  sub_1D2112798(a2 + v31, &v20[v32]);
  if (v25(v20, 1, v4) == 1)
  {
    if (v25(&v20[v32], 1, v4) == 1)
    {
      sub_1D20A862C(v20, &qword_1EC6C7BD8, &qword_1D2119238);
LABEL_20:
      v40 = *(v30 + 24);
      sub_1D211348C();
      sub_1D21116E4(&qword_1EC6C7848, MEMORY[0x1E69AAC08]);
      v34 = sub_1D21137AC();
      return v34 & 1;
    }

    goto LABEL_15;
  }

  v33 = v45;
  sub_1D2112798(v20, v45);
  if (v25(&v20[v32], 1, v4) == 1)
  {
    (*(v48 + 8))(v33, v4);
LABEL_15:
    v26 = v20;
    goto LABEL_16;
  }

  v36 = v48;
  v37 = v46;
  (*(v48 + 32))(v46, &v20[v32], v4);
  sub_1D21116E4(&qword_1EC6C7BE8, MEMORY[0x1E69AA900]);
  v38 = sub_1D21137AC();
  v39 = *(v36 + 8);
  v39(v37, v4);
  v39(v33, v4);
  sub_1D20A862C(v20, &qword_1EC6C7BD8, &qword_1D2119238);
  if (v38)
  {
    goto LABEL_20;
  }

LABEL_17:
  v34 = 0;
  return v34 & 1;
}

unint64_t sub_1D2112744()
{
  result = qword_1EC6C7DA8;
  if (!qword_1EC6C7DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6C7DA8);
  }

  return result;
}

uint64_t sub_1D2112798(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6C7BD8, &qword_1D2119238);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D211284C()
{
  v1 = OBJC_IVAR____TtC12HomeServices12StreamReader_fileHandle;
  [*(v0 + OBJC_IVAR____TtC12HomeServices12StreamReader_fileHandle) closeFile];
  v2 = *(v0 + v1);
  *(v0 + v1) = 0;

  v3 = OBJC_IVAR____TtC12HomeServices12StreamReader_encoding;
  v4 = sub_1D211381C();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  sub_1D20DEC70(*(v0 + OBJC_IVAR____TtC12HomeServices12StreamReader_delimData), *(v0 + OBJC_IVAR____TtC12HomeServices12StreamReader_delimData + 8));
  return v0;
}

uint64_t sub_1D2112904()
{
  sub_1D211284C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for StreamReader()
{
  result = qword_1EE083D30;
  if (!qword_1EE083D30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D21129B0()
{
  result = sub_1D211381C();
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