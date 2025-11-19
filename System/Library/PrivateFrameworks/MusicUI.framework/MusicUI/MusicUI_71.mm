uint64_t sub_216DEDB24(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_216DEDB6C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  v4 = OUTLINED_FUNCTION_8();
  v5(v4);
  return a2;
}

uint64_t sub_216DEDBF0@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v100 = a3;
  v95 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v96 = v11;
  MEMORY[0x28223BE20](v12);
  v86 = &v84 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v87 = &v84 - v15;
  MEMORY[0x28223BE20](v16);
  v88 = &v84 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v84 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v84 - v22;
  sub_21700D7A4();
  sub_21700CE04();
  v91 = v6;
  v92 = a2;
  v24 = v6;
  v25 = v96;
  (*(v24 + 16))(v9, a2, v95);
  v85 = v23;
  sub_21700D734();
  sub_21700CE04();
  v26 = sub_21700CDB4();
  v27 = *(v25 + 8);
  v28 = v20;
  v30 = v29;
  v27(v28, v10);
  v96 = v25 + 8;
  v89 = v30;
  v90 = a1;
  v94 = v10;
  if (!v30)
  {
    v52 = sub_21700E2E4();
    OUTLINED_FUNCTION_0_225();
    sub_2166D3134(v53, v54);
    OUTLINED_FUNCTION_4();
    v56 = v55;
    v57 = type metadata accessor for AppsWithAccessComponentModel();
    *v56 = 25705;
    v56[1] = 0xE200000000000000;
    v56[2] = v57;
    OUTLINED_FUNCTION_2_12();
    (*(v58 + 104))(v56, v59, v52);
LABEL_9:
    v66 = 0;
    v67 = 0;
LABEL_10:
    v44 = v100;
    goto LABEL_11;
  }

  v93 = type metadata accessor for AppsWithAccessComponentModel();
  *&v99[0] = v26;
  *(&v99[0] + 1) = v30;
  sub_21700F364();
  v31 = v88;
  sub_21700CE04();
  v32 = sub_21700CDB4();
  v30 = v33;
  v27(v31, v10);
  if (!v30)
  {
    v60 = sub_21700E2E4();
    OUTLINED_FUNCTION_0_225();
    sub_2166D3134(v61, v62);
    v63 = OUTLINED_FUNCTION_4();
    v65 = OUTLINED_FUNCTION_3_153(v63, v64);
    (*(*(v60 - 8) + 104))(v65, *MEMORY[0x277D22530], v60);
    goto LABEL_9;
  }

  v34 = (v100 + v93[6]);
  *v34 = v32;
  v34[1] = v30;
  v35 = v87;
  sub_21700CE04();
  v36 = sub_21700CDB4();
  v38 = v37;
  v27(v35, v10);
  if (!v38)
  {
    sub_21700E2E4();
    OUTLINED_FUNCTION_0_225();
    sub_2166D3134(v71, v72);
    OUTLINED_FUNCTION_4();
    *v73 = 0x4449707061;
    v73[1] = 0xE500000000000000;
    v73[2] = v93;
    OUTLINED_FUNCTION_2_12();
    (*(v74 + 104))();
    v66 = 0;
    v67 = 0;
    LODWORD(v30) = 1;
    goto LABEL_10;
  }

  v39 = (v100 + v93[7]);
  *v39 = v36;
  v39[1] = v38;
  v40 = v86;
  sub_21700CE04();
  v41 = sub_21700CDB4();
  v43 = v42;
  v27(v40, v10);
  if (!v43)
  {
    sub_21700E2E4();
    OUTLINED_FUNCTION_0_225();
    sub_2166D3134(v75, v76);
    OUTLINED_FUNCTION_4();
    *v77 = 0x69546E6F74747562;
    v77[1] = 0xEB00000000656C74;
    v77[2] = v93;
    OUTLINED_FUNCTION_2_12();
    (*(v78 + 104))();
    v67 = 0;
    LODWORD(v30) = 1;
    v66 = 1;
    goto LABEL_10;
  }

  v44 = v100;
  v45 = (v100 + v93[8]);
  *v45 = v41;
  v45[1] = v43;
  v46 = v85;
  sub_21700CE04();
  sub_21700D2E4();
  v47 = v46;
  v48 = v94;
  v27(v47, v94);
  if (v98)
  {
    v49 = OUTLINED_FUNCTION_4_133();
    v50(v49);
    v27(a1, v48);
    sub_2166A0F18(&v97, v99);
    return sub_2166A0F18(v99, v44 + v93[9]);
  }

  sub_21669987C(&v97, &qword_27CAB6DB0);
  sub_21700E2E4();
  OUTLINED_FUNCTION_0_225();
  sub_2166D3134(v79, v80);
  v81 = OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3_153(v81, v82);
  OUTLINED_FUNCTION_2_12();
  (*(v83 + 104))();
  LODWORD(v30) = 1;
  v66 = 1;
  v67 = 1;
LABEL_11:
  swift_willThrow();
  v68 = OUTLINED_FUNCTION_4_133();
  v69(v68);
  v27(v90, v94);
  result = sub_21669987C(v44, &qword_27CAB6D58);
  if (v89)
  {
    v70 = type metadata accessor for AppsWithAccessComponentModel();
    result = sub_216788110(v44 + *(v70 + 20));
  }

  if (v30)
  {
    type metadata accessor for AppsWithAccessComponentModel();

    if (!v66)
    {
LABEL_15:
      if (!v67)
      {
        return result;
      }

      goto LABEL_16;
    }
  }

  else if (!v66)
  {
    goto LABEL_15;
  }

  type metadata accessor for AppsWithAccessComponentModel();

  if (v67)
  {
LABEL_16:
    type metadata accessor for AppsWithAccessComponentModel();
  }

  return result;
}

unint64_t UnifiedMessages.MLI.State.rawValue.getter()
{
  result = 0x6E776F6E6B6E75;
  switch(*v0)
  {
    case 1:
      return result;
    case 2:
      result = 0x6572676F72506E69;
      break;
    case 3:
      result = 0x6574656C706D6F63;
      break;
    default:
      result = OUTLINED_FUNCTION_9_11(30);
      break;
  }

  return result;
}

uint64_t UnifiedMessages.MLI.State.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_21700F5E4();

  v4 = 4;
  if (v2 < 4)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

unint64_t sub_216DEE560@<X0>(unint64_t *a1@<X8>)
{
  result = UnifiedMessages.MLI.State.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_216DEE6A8()
{
  result = qword_27CAC9C50;
  if (!qword_27CAC9C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC9C50);
  }

  return result;
}

_BYTE *_s3MLIOwst(_BYTE *result, int a2, int a3)
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

_BYTE *_s3MLIO5StateOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_216DEE884()
{
  result = qword_27CAC9C58;
  if (!qword_27CAC9C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC9C58);
  }

  return result;
}

uint64_t sub_216DEE900@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABE640);
  OUTLINED_FUNCTION_36(v3);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v4);
  v6 = &v28 - v5;
  v7 = sub_2170071B4();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_7();
  v13 = v12 - v11;
  v14 = sub_217006EC4();
  OUTLINED_FUNCTION_1();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_7();
  v20 = v19 - v18;
  v21 = *v1;
  if (*(v21 + 16))
  {
    v22 = sub_216E67EE8();
    if (v23)
    {
      (*(v16 + 16))(v20, *(v21 + 56) + *(v16 + 72) * v22, v14);
      (*(v16 + 32))(a1, v20, v14);
      v24 = a1;
      v25 = 0;
      return __swift_storeEnumTagSinglePayload(v24, v25, 1, v14);
    }
  }

  v26 = sub_21700DF14();
  sub_216CE0B64(v26, v6);

  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    sub_216697664(v6, &qword_27CABE640);
    v24 = a1;
    v25 = 1;
    return __swift_storeEnumTagSinglePayload(v24, v25, 1, v14);
  }

  (*(v9 + 32))(v13, v6, v7);
  sub_216935208();
  return (*(v9 + 8))(v13, v7);
}

void sub_216DEEB64()
{
  OUTLINED_FUNCTION_22_3();
  v2 = v1;
  v4 = v3;
  v124 = v5;
  sub_217006EC4();
  OUTLINED_FUNCTION_1();
  v135 = v7;
  v136 = v6;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7();
  v133 = v9 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBF10);
  v11 = OUTLINED_FUNCTION_36(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v12);
  v134 = &v112 - v13;
  v140 = sub_2170071B4();
  OUTLINED_FUNCTION_1();
  v131 = v14;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_1_0();
  v137 = v16;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v17);
  v139 = &v112 - v18;
  v19 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v21 = v20;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v23);
  v25 = &v112 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7D20);
  OUTLINED_FUNCTION_36(v26);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v27);
  v29 = &v112 - v28;
  sub_21700CE04();
  sub_21700CCB4();
  v31 = *(v21 + 8);
  v30 = v21 + 8;
  v132 = v31;
  v31(v25, v19);
  v32 = sub_21700D3E4();
  if (__swift_getEnumTagSinglePayload(v29, 1, v32) == 1)
  {
    sub_216697664(v29, &qword_27CAB7D20);
    goto LABEL_29;
  }

  v33 = sub_21700D3D4();
  OUTLINED_FUNCTION_50();
  (*(v34 + 8))(v29, v32);
  if (!v33)
  {
LABEL_29:
    sub_21700E2E4();
    OUTLINED_FUNCTION_15_66();
    sub_21668AF0C(v89, v90);
    OUTLINED_FUNCTION_12();
    v92 = v91;
    type metadata accessor for VideoArtwork();
    OUTLINED_FUNCTION_28_42();
    *v92 = v93;
    v92[1] = 0xEA00000000007972;
    v92[2] = v94;
    OUTLINED_FUNCTION_50();
    (*(v95 + 104))(v92);
    swift_willThrow();
    sub_21700CF34();
    OUTLINED_FUNCTION_34();
    (*(v96 + 8))(v2);
    v132(v4, v19);
LABEL_31:
    OUTLINED_FUNCTION_21_4();
    return;
  }

  v117 = v30;
  v118 = v19;
  v114 = v0;
  v119 = v2;
  v120 = v4;
  v35 = sub_21668AF0C(&qword_280E4A408, MEMORY[0x277D2ACB0]);
  v36 = v136;
  v116 = v35;
  v138 = sub_21700E384();
  v37 = v33 + 64;
  v38 = 1 << *(v33 + 32);
  v39 = -1;
  if (v38 < 64)
  {
    v39 = ~(-1 << v38);
  }

  v40 = v39 & *(v33 + 64);
  v41 = (v38 + 63) >> 6;
  v130 = (v131 + 16);
  v128 = (v135 + 32);
  v127 = (v131 + 8);
  v115 = v135 + 40;
  sub_21700DF14();
  v42 = 0;
  v126 = v41;
  v43 = v33;
  v122 = v33;
  v121 = v33 + 64;
  while (v40)
  {
    v44 = v36;
LABEL_13:
    v46 = __clz(__rbit64(v40)) | (v42 << 6);
    v47 = (*(v43 + 48) + 16 * v46);
    v49 = *v47;
    v48 = v47[1];
    sub_2166A6DF8(*(v43 + 56) + 32 * v46, &v144);
    v143[0] = v49;
    v143[1] = v48;
    sub_216681B04(v143, v141, &qword_27CAC1A80);
    sub_21700DF14();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20);
    if (!swift_dynamicCast())
    {

      sub_21700E2E4();
      OUTLINED_FUNCTION_15_66();
      sub_21668AF0C(v103, v104);
      OUTLINED_FUNCTION_12();
      v106 = v105;
      v107 = type metadata accessor for VideoArtwork();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB71E0);
      v108 = swift_allocObject();
      *(v108 + 16) = xmmword_217013DA0;
      sub_216DF1558();
      *(v108 + 32) = OUTLINED_FUNCTION_12();
      OUTLINED_FUNCTION_28_42();
      *v106 = v109;
      v106[1] = 0xEA00000000007972;
      v106[2] = v107;
      v106[3] = v108;
      OUTLINED_FUNCTION_50();
      (*(v110 + 104))(v106);
      swift_willThrow();
      sub_21700CF34();
      OUTLINED_FUNCTION_34();
      (*(v111 + 8))(v119);
      v132(v120, v118);
      sub_216697664(v143, &qword_27CAC1A80);

      goto LABEL_31;
    }

    v40 &= v40 - 1;
    sub_216681B04(v143, v141, &qword_27CAC1A80);
    v50 = v139;
    sub_2170071C4();
    __swift_destroy_boxed_opaque_existential_1Tm(&v142);
    v51 = v137;
    v125 = *v130;
    (v125)(v137, v50, v140);
    v52 = v134;
    sub_217006ED4();
    if (__swift_getEnumTagSinglePayload(v52, 1, v44) == 1)
    {
      sub_216697664(v52, &qword_27CABBF10);
      v53 = v138;
      v54 = sub_216E67EE8();
      if (v55)
      {
        v125 = v54;
        swift_isUniquelyReferenced_nonNull_native();
        v141[0] = v53;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD1A0);
        v56 = v140;
        sub_21700F554();
        v57 = v141[0];
        v58 = v125;
        v59 = *(v141[0] + 48) + *(v131 + 72) * v125;
        v113 = *(v131 + 8);
        v113(v59, v56);
        v60 = *(v57 + 56) + *(v135 + 72) * v58;
        v61 = v129;
        v36 = v136;
        (*(v135 + 32))(v129, v60, v136);
        v138 = v57;
        v43 = v122;
        sub_21700F574();
        v62 = v51;
        v63 = v113;
        v113(v62, v56);
        v63(v139, v56);
        sub_216697664(v143, &qword_27CAC1A80);
        v64 = 0;
      }

      else
      {
        v74 = *v127;
        v75 = v140;
        (*v127)(v51, v140);
        v74(v139, v75);
        sub_216697664(v143, &qword_27CAC1A80);
        v64 = 1;
        v36 = v136;
        v61 = v129;
      }

      __swift_storeEnumTagSinglePayload(v61, v64, 1, v36);
      sub_216697664(v61, &qword_27CABBF10);
      v41 = v126;
    }

    else
    {
      v65 = *v128;
      (*v128)(v133, v52, v44);
      v66 = v138;
      swift_isUniquelyReferenced_nonNull_native();
      v141[0] = v66;
      v67 = sub_216E67EE8();
      if (__OFADD__(*(v66 + 16), (v68 & 1) == 0))
      {
        goto LABEL_34;
      }

      v69 = v67;
      v70 = v68;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD1A0);
      if (sub_21700F554())
      {
        v71 = sub_216E67EE8();
        v73 = v136;
        if ((v70 & 1) != (v72 & 1))
        {
          goto LABEL_36;
        }

        v69 = v71;
      }

      else
      {
        v73 = v136;
      }

      v76 = v141[0];
      v138 = v141[0];
      if (v70)
      {
        v77 = v73;
        (*(v135 + 40))(*(v141[0] + 56) + *(v135 + 72) * v69, v133, v73);
        v78 = *v127;
        v79 = v140;
        (*v127)(v137, v140);
        v78(v139, v79);
        sub_216697664(v143, &qword_27CAC1A80);
      }

      else
      {
        *(v141[0] + 8 * (v69 >> 6) + 64) |= 1 << v69;
        v80 = v131;
        v81 = v137;
        v82 = v140;
        (v125)(*(v76 + 48) + *(v131 + 72) * v69, v137, v140);
        v77 = v73;
        v65(*(v138 + 56) + *(v135 + 72) * v69, v133, v73);
        v83 = v82;
        v84 = *(v80 + 8);
        v84(v81, v83);
        v84(v139, v83);
        v85 = v138;
        sub_216697664(v143, &qword_27CAC1A80);
        v86 = *(v85 + 16);
        v87 = __OFADD__(v86, 1);
        v88 = v86 + 1;
        if (v87)
        {
          goto LABEL_35;
        }

        *(v85 + 16) = v88;
      }

      v43 = v122;
      v41 = v126;
      v36 = v77;
      v37 = v121;
    }
  }

  while (1)
  {
    v45 = v42 + 1;
    if (__OFADD__(v42, 1))
    {
      break;
    }

    if (v45 >= v41)
    {

      *v124 = v138;
      v97 = v123;
      v98 = v120;
      sub_21700CE04();
      type metadata accessor for VideoArtwork();
      sub_21700C444();
      sub_21668AF0C(&qword_280E2A3B0, MEMORY[0x277D2B220]);
      sub_21700CCC4();
      sub_21700CF34();
      OUTLINED_FUNCTION_34();
      (*(v99 + 8))(v119);
      v100 = v98;
      v101 = v118;
      v102 = v132;
      v132(v100, v118);
      v102(v97, v101);
      goto LABEL_31;
    }

    v40 = *(v37 + 8 * v45);
    ++v42;
    if (v40)
    {
      v44 = v36;
      v42 = v45;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  sub_21700F824();
  __break(1u);
}

uint64_t sub_216DEF964@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CAB60B8 != -1)
  {
    swift_once();
  }

  v2 = sub_21700C444();
  v3 = __swift_project_value_buffer(v2, qword_27CAC9C60);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_216DEFA0C(uint64_t *a1, uint64_t *a2)
{
  sub_21698B9E8(*a1, *a2);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(type metadata accessor for VideoArtwork() + 20);

  return sub_21688ADC8(a1 + v5, a2 + v5);
}

uint64_t sub_216DEFA74()
{
  v0 = sub_21700C444();
  __swift_allocate_value_buffer(v0, qword_27CAC9C60);
  __swift_project_value_buffer(v0, qword_27CAC9C60);
  return sub_21700C404();
}

void sub_216DEFE44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_22_3();
  a19 = v21;
  a20 = v22;
  v307 = v20;
  v24 = v23;
  v25 = type metadata accessor for VideoArtwork.Dictionary.Item(0);
  v26 = OUTLINED_FUNCTION_36(v25);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v27);
  v29 = &v279 - v28;
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_6_4();
  v289 = v41;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_6_4();
  v290 = v43;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_6_4();
  v293 = v45;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_6_4();
  v294 = v47;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_6_4();
  v296 = v49;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_6_4();
  v297 = v51;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_6_4();
  v299 = v53;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_6_4();
  v305 = v55;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v56);
  v58 = &v279 - v57;
  MEMORY[0x28223BE20](v59);
  v61 = (&v279 - v60);
  sub_217006EC4();
  OUTLINED_FUNCTION_1();
  v302 = v63;
  v303 = v62;
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_6_4();
  v291 = v69;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_6_4();
  v288 = v71;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_6_4();
  v298 = v73;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v74);
  OUTLINED_FUNCTION_6_4();
  v300 = v75;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v76);
  OUTLINED_FUNCTION_6_4();
  v304 = v77;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v78);
  OUTLINED_FUNCTION_6_4();
  v301 = v79;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v80);
  v82 = &v279 - v81;
  v308 = sub_2170071B4();
  OUTLINED_FUNCTION_1();
  v84 = v83;
  MEMORY[0x28223BE20](v85);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v86);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v87);
  OUTLINED_FUNCTION_6_4();
  v306 = v88;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v89);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v90);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v91);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v92);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v93);
  OUTLINED_FUNCTION_6_4();
  v292 = v94;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v95);
  OUTLINED_FUNCTION_6_4();
  v295 = v96;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v97);
  v99 = &v279 - v98;
  MEMORY[0x28223BE20](v100);
  v102 = &v279 - v101;
  v103 = sub_216F6CCB4();
  v104 = MEMORY[0x277D84F98];
  if ((v103 & 1) == 0)
  {
    v280 = v29;
    v111 = v24;
    v106 = v307;
    v112 = v84;
    goto LABEL_6;
  }

  sub_2170071A4();
  sub_216F6CB08(v61);
  OUTLINED_FUNCTION_1_191();
  sub_216DF14A0(v61, v58, v105);
  v20 = v307;
  sub_216DF0D70();
  v106 = v20;
  if (!v20)
  {
    v280 = v29;
    v111 = v24;
    OUTLINED_FUNCTION_0_226();
    sub_216DF1500(v61, v113);
    v114 = v301;
    (*(v302 + 32))(v301, v82, v303);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    a10 = v104;
    sub_2169399B4(v114, v102, isUniquelyReferenced_nonNull_native, v116, v117, v118, v119, v120, v279, v280, v281, v282);
    v104 = a10;
    v112 = v84;
    v121 = OUTLINED_FUNCTION_21_60();
    v122(v121);
LABEL_6:
    v123 = sub_216F6CED0();
    v124 = v305;
    if (v123)
    {
      sub_2170071C4();
      sub_216F6CCCC(v124);
      OUTLINED_FUNCTION_1_191();
      sub_216DF14A0(v124, v299, v125);
      OUTLINED_FUNCTION_19_52();
      v126 = v104;
      v106 = v20;
      if (v20)
      {
        OUTLINED_FUNCTION_0_226();
        sub_216DF1500(v124, v127);
        OUTLINED_FUNCTION_2_162();
        sub_216DF1500(v111, v128);
        (*(v112 + 8))(v99, v308);
LABEL_40:

        goto LABEL_41;
      }

      OUTLINED_FUNCTION_0_226();
      sub_216DF1500(v124, v129);
      v130 = v301;
      OUTLINED_FUNCTION_24_39();
      v131();
      v132 = swift_isUniquelyReferenced_nonNull_native();
      a10 = v126;
      sub_2169399B4(v130, v99, v132, v133, v134, v135, v136, v137, v279, v280, v281, v282);
      OUTLINED_FUNCTION_9_91();
      v138(v99, v308);
    }

    v139 = sub_216F6D1C4();
    v140 = v306;
    if (v139)
    {
      v141 = v112;
      v142 = v295;
      sub_217007184();
      v143 = v297;
      sub_216F6D080(v297);
      OUTLINED_FUNCTION_1_191();
      sub_216DF14A0(v143, v296, v144);
      v20 = v106;
      sub_216DF0D70();
      if (v106)
      {
        OUTLINED_FUNCTION_0_226();
        sub_216DF1500(v143, v145);
        OUTLINED_FUNCTION_2_162();
        sub_216DF1500(v111, v146);
        (*(v141 + 8))(v142, v308);
        goto LABEL_40;
      }

      OUTLINED_FUNCTION_0_226();
      sub_216DF1500(v143, v147);
      OUTLINED_FUNCTION_8_100();
      OUTLINED_FUNCTION_29_45();
      v148();
      swift_isUniquelyReferenced_nonNull_native();
      v149 = OUTLINED_FUNCTION_4_134();
      v140 = v306;
      sub_2169399B4(v149, v142, v150, v151, v152, v153, v154, v155, v279, v280, v281, v282);
      v156 = v142;
      v112 = v141;
      (*(v141 + 8))(v156, v308);
    }

    if (sub_216F6D320())
    {
      v157 = v308;
      v158 = v292;
      sub_217007164();
      v159 = v294;
      sub_216F6D1DC(v294);
      OUTLINED_FUNCTION_1_191();
      sub_216DF14A0(v159, v293, v160);
      OUTLINED_FUNCTION_19_52();
      if (v20)
      {
        OUTLINED_FUNCTION_0_226();
        sub_216DF1500(v159, v161);
        OUTLINED_FUNCTION_2_162();
        sub_216DF1500(v111, v162);
        (*(v112 + 8))(v158, v157);
        goto LABEL_40;
      }

      OUTLINED_FUNCTION_0_226();
      sub_216DF1500(v159, v163);
      OUTLINED_FUNCTION_8_100();
      OUTLINED_FUNCTION_24_39();
      v164();
      swift_isUniquelyReferenced_nonNull_native();
      v165 = OUTLINED_FUNCTION_4_134();
      v140 = v306;
      sub_2169399B4(v165, v158, v166, v167, v168, v169, v170, v171, v279, v280, v281, v282);
      OUTLINED_FUNCTION_9_91();
      v172(v158, v157);
    }

    if (sub_216F6D47C())
    {
      v173 = v112;
      v174 = v287;
      sub_217007134();
      v175 = v290;
      sub_216F6D338(v290);
      OUTLINED_FUNCTION_1_191();
      sub_216DF14A0(v175, v289, v176);
      v177 = v288;
      OUTLINED_FUNCTION_22_54();
      if (v20)
      {
        OUTLINED_FUNCTION_0_226();
        sub_216DF1500(v175, v178);
        OUTLINED_FUNCTION_2_162();
        sub_216DF1500(v111, v179);
        v180 = OUTLINED_FUNCTION_21_60();
        v181(v180);
        goto LABEL_40;
      }

      OUTLINED_FUNCTION_0_226();
      sub_216DF1500(v175, v182);
      v183 = OUTLINED_FUNCTION_8_100();
      v184(v183, v177, v303);
      swift_isUniquelyReferenced_nonNull_native();
      v185 = OUTLINED_FUNCTION_4_134();
      v140 = v306;
      sub_2169399B4(v185, v174, v186, v187, v188, v189, v190, v191, v279, v280, v281, v282);
      v112 = v173;
      v192 = OUTLINED_FUNCTION_21_60();
      v193(v192);
    }

    if (sub_216F6D5D8())
    {
      v194 = v286;
      sub_217007124();
      OUTLINED_FUNCTION_12_81();
      sub_216F6D494(v195);
      OUTLINED_FUNCTION_1_191();
      OUTLINED_FUNCTION_27_48(v140, v196, &a16);
      OUTLINED_FUNCTION_19_52();
      if (v20)
      {
        OUTLINED_FUNCTION_0_226();
        sub_216DF1500(v140, v197);
        OUTLINED_FUNCTION_2_162();
        sub_216DF1500(v111, v198);
        v199 = *(v112 + 8);
        v200 = v194;
LABEL_39:
        v199(v200, v308);
        goto LABEL_40;
      }

      OUTLINED_FUNCTION_0_226();
      sub_216DF1500(v140, v201);
      OUTLINED_FUNCTION_8_100();
      OUTLINED_FUNCTION_24_39();
      v202();
      swift_isUniquelyReferenced_nonNull_native();
      v203 = OUTLINED_FUNCTION_4_134();
      v140 = v306;
      sub_2169399B4(v203, v194, v204, v205, v206, v207, v208, v209, v279, v280, v281, v282);
      OUTLINED_FUNCTION_9_91();
      v210(v194, v308);
    }

    if (sub_216F6D734())
    {
      v211 = v285;
      sub_217007194();
      OUTLINED_FUNCTION_12_81();
      sub_216F6D5F0(v212);
      OUTLINED_FUNCTION_1_191();
      OUTLINED_FUNCTION_27_48(v140, v213, &a13);
      OUTLINED_FUNCTION_22_54();
      if (v20)
      {
LABEL_38:
        sub_216DF1500(v140, type metadata accessor for VideoArtwork.Dictionary.Item);
        OUTLINED_FUNCTION_2_162();
        sub_216DF1500(v111, v253);
        v199 = *(v112 + 8);
        v200 = v211;
        goto LABEL_39;
      }

      OUTLINED_FUNCTION_0_226();
      sub_216DF1500(v140, v214);
      OUTLINED_FUNCTION_8_100();
      OUTLINED_FUNCTION_29_45();
      v215();
      swift_isUniquelyReferenced_nonNull_native();
      v216 = OUTLINED_FUNCTION_4_134();
      v140 = v306;
      sub_2169399B4(v216, v211, v217, v218, v219, v220, v221, v222, v279, v280, v281, v282);
      OUTLINED_FUNCTION_9_91();
      v223 = OUTLINED_FUNCTION_21_60();
      v224(v223);
    }

    if (sub_216F6D890())
    {
      v225 = v284;
      sub_217007174();
      OUTLINED_FUNCTION_12_81();
      sub_216F6D74C(v226);
      OUTLINED_FUNCTION_1_191();
      OUTLINED_FUNCTION_27_48(v140, v227, &a9);
      OUTLINED_FUNCTION_19_52();
      if (v20)
      {
LABEL_34:
        sub_216DF1500(v140, type metadata accessor for VideoArtwork.Dictionary.Item);
        OUTLINED_FUNCTION_2_162();
        sub_216DF1500(v111, v240);
        v199 = *(v112 + 8);
        v200 = v225;
        goto LABEL_39;
      }

      OUTLINED_FUNCTION_0_226();
      sub_216DF1500(v140, v228);
      OUTLINED_FUNCTION_8_100();
      OUTLINED_FUNCTION_24_39();
      v229();
      swift_isUniquelyReferenced_nonNull_native();
      v230 = OUTLINED_FUNCTION_4_134();
      sub_2169399B4(v230, v225, v231, v232, v233, v234, v235, v236, v279, v280, v281, v282);
      OUTLINED_FUNCTION_9_91();
      v237(v225, v308);
      v140 = v306;
    }

    if (sub_216F6D9EC())
    {
      sub_217007144();
      v225 = v140;
      OUTLINED_FUNCTION_12_81();
      sub_216F6D8A8(v238);
      OUTLINED_FUNCTION_1_191();
      OUTLINED_FUNCTION_27_48(v140, v239, &v306);
      OUTLINED_FUNCTION_19_52();
      if (v20)
      {
        goto LABEL_34;
      }

      OUTLINED_FUNCTION_0_226();
      sub_216DF1500(v140, v241);
      OUTLINED_FUNCTION_8_100();
      OUTLINED_FUNCTION_24_39();
      v242();
      swift_isUniquelyReferenced_nonNull_native();
      v243 = OUTLINED_FUNCTION_4_134();
      sub_2169399B4(v243, v140, v244, v245, v246, v247, v248, v249, v279, v280, v281, v282);
      OUTLINED_FUNCTION_9_91();
      v250(v140, v308);
    }

    if (sub_216F6DB48())
    {
      v211 = v282;
      sub_217007154();
      OUTLINED_FUNCTION_12_81();
      sub_216F6DA04(v251);
      OUTLINED_FUNCTION_1_191();
      OUTLINED_FUNCTION_27_48(v140, v252, &v301);
      OUTLINED_FUNCTION_22_54();
      if (v20)
      {
        goto LABEL_38;
      }

      OUTLINED_FUNCTION_0_226();
      sub_216DF1500(v140, v254);
      OUTLINED_FUNCTION_8_100();
      OUTLINED_FUNCTION_29_45();
      v255();
      swift_isUniquelyReferenced_nonNull_native();
      v256 = OUTLINED_FUNCTION_4_134();
      sub_2169399B4(v256, v211, v257, v258, v259, v260, v261, v262, v279, v280, v281, v282);
      OUTLINED_FUNCTION_9_91();
      v263 = OUTLINED_FUNCTION_21_60();
      v264(v263);
    }

    if (sub_216F6DEBC())
    {
      sub_2170071C4();
      OUTLINED_FUNCTION_12_81();
      sub_216F6DB60(v265);
      OUTLINED_FUNCTION_1_191();
      OUTLINED_FUNCTION_27_48(v140, v266, &v298);
      OUTLINED_FUNCTION_22_54();
      if (v20)
      {
        OUTLINED_FUNCTION_0_226();
        sub_216DF1500(v140, v267);
        OUTLINED_FUNCTION_2_162();
        sub_216DF1500(v111, v268);
        v199 = *(v112 + 8);
        v200 = v283;
        goto LABEL_39;
      }

      OUTLINED_FUNCTION_0_226();
      sub_216DF1500(v140, v269);
      OUTLINED_FUNCTION_29_45();
      v270();
      swift_isUniquelyReferenced_nonNull_native();
      v271 = OUTLINED_FUNCTION_4_134();
      v272 = v283;
      sub_2169399B4(v271, v283, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282);
      (*(v112 + 8))(v272, v308);
    }

    sub_216DF1500(v111, type metadata accessor for VideoArtwork.Dictionary);
    goto LABEL_41;
  }

  OUTLINED_FUNCTION_0_226();
  sub_216DF1500(v61, v107);
  OUTLINED_FUNCTION_2_162();
  sub_216DF1500(v24, v108);
  v109 = OUTLINED_FUNCTION_21_60();
  v110(v109);
LABEL_41:
  OUTLINED_FUNCTION_21_4();
}

void sub_216DF0D70()
{
  OUTLINED_FUNCTION_22_3();
  v70 = v0;
  v2 = v1;
  v62 = v3;
  v67 = type metadata accessor for VideoArtwork.Dictionary.Item.VideoFile(0);
  OUTLINED_FUNCTION_1();
  v69 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7();
  v66 = v7 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABBF10);
  OUTLINED_FUNCTION_36(v8);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  v63 = &v60 - v10;
  sub_2170078A4();
  OUTLINED_FUNCTION_1();
  v71 = v11;
  v72 = v12;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1_0();
  v68 = v13;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v14);
  v16 = &v60 - v15;
  v17 = type metadata accessor for VideoArtwork.Dictionary.Item.PreviewFrame(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_7();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9C90);
  OUTLINED_FUNCTION_36(v19);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v20);
  v22 = &v60 - v21;
  v23 = sub_21700E384();
  v64 = type metadata accessor for VideoArtwork.Dictionary.Item(0);
  sub_216681B04(v2 + *(v64 + 24), v22, &qword_27CAC9C90);
  if (__swift_getEnumTagSinglePayload(v22, 1, v17) == 1)
  {

    sub_216697664(v22, &qword_27CAC9C90);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9C98);
    sub_2167880BC();
    v24 = OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_33_5(xmmword_217061420, v24, v25);
    OUTLINED_FUNCTION_0_226();
    v27 = v2;
LABEL_6:
    sub_216DF1500(v27, v26);
LABEL_7:
    OUTLINED_FUNCTION_21_4();
    return;
  }

  sub_216697664(v22, &qword_27CAC9C90);
  sub_216F6DED4();
  sub_217007894();
  sub_21668AF0C(&qword_27CAC9CA0, type metadata accessor for VideoArtwork.Dictionary.Item.PreviewFrame);
  v28 = v70;
  v29 = sub_2170079E4();
  v31 = v28;
  v32 = v2;
  if (v28)
  {
    (*(v72 + 8))(v16, v71);
    OUTLINED_FUNCTION_17_64();

LABEL_5:
    OUTLINED_FUNCTION_0_226();
    v27 = v2;
    goto LABEL_6;
  }

  v33 = v29;
  v34 = v30;
  v35 = *(v72 + 8);
  v72 += 8;
  v65 = v35;
  v35(v16, v71);
  OUTLINED_FUNCTION_17_64();
  v36 = MEMORY[0x277D837D0];
  v75 = MEMORY[0x277D837D0];
  *&v74 = v33;
  *(&v74 + 1) = v34;
  sub_2166EF9C4(&v74, v73);
  swift_isUniquelyReferenced_nonNull_native();
  v76 = v23;
  sub_2166EF9D4();
  v37 = (v2 + *(v64 + 28));
  v38 = v37[1];
  if (!v38)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9C98);
    sub_2167880BC();
    v54 = OUTLINED_FUNCTION_12();
    OUTLINED_FUNCTION_33_5(xmmword_217061410, v54, v55);
    goto LABEL_5;
  }

  v39 = *v37;
  v75 = v36;
  *&v74 = v39;
  *(&v74 + 1) = v38;
  sub_2166EF9C4(&v74, v73);
  sub_21700DF14();
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_30_45();
  sub_2166EF9D4();
  v40 = *v2;
  v41 = *(*v2 + 16);
  v42 = MEMORY[0x277D84F90];
  if (v41)
  {
    v60 = v76;
    v61 = v2;
    *&v73[0] = MEMORY[0x277D84F90];
    sub_2166F4258();
    v43 = 0;
    v42 = *&v73[0];
    v44 = v68;
    v64 = v40 + ((*(v69 + 80) + 32) & ~*(v69 + 80));
    while (v43 < *(v40 + 16))
    {
      sub_216DF14A0(v64 + *(v69 + 72) * v43, v66, type metadata accessor for VideoArtwork.Dictionary.Item.VideoFile);
      sub_217007894();
      sub_21668AF0C(&qword_27CAC9CA8, type metadata accessor for VideoArtwork.Dictionary.Item.VideoFile);
      v45 = sub_2170079E4();
      if (v31)
      {
        v65(v44, v71);
        OUTLINED_FUNCTION_16_62();

        OUTLINED_FUNCTION_0_226();
        v27 = v61;
        goto LABEL_6;
      }

      v47 = v45;
      v48 = v46;
      v49 = v44;
      v50 = v41;
      v70 = 0;
      v65(v49, v71);
      OUTLINED_FUNCTION_16_62();
      *&v73[0] = v42;
      v51 = *(v42 + 16);
      if (v51 >= *(v42 + 24) >> 1)
      {
        sub_2166F4258();
        v42 = *&v73[0];
      }

      ++v43;
      *(v42 + 16) = v51 + 1;
      v52 = v42 + 16 * v51;
      *(v52 + 32) = v47;
      *(v52 + 40) = v48;
      v41 = v50;
      v53 = v50 == v43;
      v31 = v70;
      v44 = v68;
      if (v53)
      {
        v32 = v61;
        goto LABEL_20;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_20:
    v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74F8);
    *&v74 = v42;
    sub_2166EF9C4(&v74, v73);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_30_45();
    sub_2166EF9D4();
    sub_21700DF14();
    v56 = v63;
    sub_217006ED4();
    v57 = sub_217006EC4();
    if (__swift_getEnumTagSinglePayload(v56, 1, v57) != 1)
    {

      OUTLINED_FUNCTION_0_226();
      sub_216DF1500(v32, v58);
      OUTLINED_FUNCTION_50();
      (*(v59 + 32))(v62, v56, v57);
      goto LABEL_7;
    }
  }

  __break(1u);
}

uint64_t sub_216DF14A0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_216DF1500(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_216DF1558()
{
  result = qword_27CAC9CB0;
  if (!qword_27CAC9CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC9CB0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for VideoArtwork.JSONParseError(_BYTE *result, int a2, int a3)
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

unint64_t sub_216DF165C()
{
  result = qword_27CAC9CB8;
  if (!qword_27CAC9CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC9CB8);
  }

  return result;
}

uint64_t PopoverProvider.PopoverError.hashValue.getter()
{
  sub_21700F8F4();
  MEMORY[0x21CEA0720](0);
  return sub_21700F944();
}

uint64_t static PopoverProvider.Popover.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24) == *(a2 + 24) && *(a1 + 32) == *(a2 + 32);
  if (v2 || (v3 = 0, (sub_21700F7D4() & 1) != 0))
  {
    v4 = sub_2170076F4();
    v5 = sub_2167B3508(v4);
    v7 = v6;
    v8 = sub_2170076F4();
    v9 = sub_2167B3508(v8);
    if (v7)
    {
      if (v10)
      {
        if (v5 == v9 && v7 == v10)
        {

          v3 = 1;
        }

        else
        {
          v3 = sub_21700F7D4();
        }
      }

      else
      {
        v3 = 0;
      }
    }

    else
    {
      if (!v10)
      {
        v3 = 1;
        return v3 & 1;
      }

      v3 = 0;
    }
  }

  return v3 & 1;
}

uint64_t PopoverProvider.Popover.id.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = *(v1 + 24);
  a1[1] = v2;
  return sub_21700DF14();
}

uint64_t PopoverProvider.Popover.deinit()
{

  return v0;
}

uint64_t PopoverProvider.Popover.__deallocating_deinit()
{
  PopoverProvider.Popover.deinit();

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

void *sub_216DF1918(uint64_t a1, uint64_t a2)
{
  v2[2] = 0;
  v2[5] = 0;
  v2[6] = 0;
  v5 = MEMORY[0x277D84F90];
  v2[7] = MEMORY[0x277D84FA0];
  v2[8] = v5;
  sub_216A069B8();
  v6 = sub_21700E384();
  v2[10] = 0;
  v2[11] = 0;
  v2[9] = v6;
  v2[3] = a2;
  v2[4] = a1;

  sub_216DF19A4();

  return v2;
}

uint64_t sub_216DF19A4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC9DE0);
  OUTLINED_FUNCTION_16();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  v5 = &v7 - v4;
  OUTLINED_FUNCTION_21_6();
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6BB8);
  sub_217007DB4();
  swift_endAccess();
  sub_2166D9530(&qword_280E484E0, &unk_27CAC9DE0);

  sub_217007E84();

  (*(v2 + 8))(v5, v0);
  OUTLINED_FUNCTION_21_6();
  swift_beginAccess();
  sub_217007D24();
  swift_endAccess();
}

unint64_t sub_216DF1B50(unint64_t *a1)
{
  result = *a1;
  if (result >> 62)
  {
    v2 = 1;
  }

  else
  {
    v2 = (result & 0xF000000000000007) == 0xF000000000000007;
  }

  if (!v2)
  {
    return sub_216DF1B94(result);
  }

  return result;
}

uint64_t sub_216DF1B94(uint64_t a1)
{
  type metadata accessor for PopoverBubbleTipRequestManager(0);
  swift_allocObject();

  v3 = sub_216A544D8();
  v1[5] = v3;

  v4 = objc_allocWithZone(type metadata accessor for MessageHandler());

  v5 = sub_216DF3050(a1, v3);
  v6 = v1[6];
  v1[6] = v5;

  sub_216DF1CD0();
  swift_beginAccess();
  v7 = v1[8];
  v8 = *(v7 + 16);
  if (v8)
  {
    sub_21700DF14();
    v9 = (v7 + 40);
    do
    {
      v10 = *v9;
      v12[0] = *(v9 - 1);
      v12[1] = v10;
      sub_21700DF14();
      sub_216A54608(v12);

      v9 += 2;
      --v8;
    }

    while (v8);
  }

  v1[8] = MEMORY[0x277D84F90];
}

uint64_t sub_216DF1CD0()
{
  if (*(v0 + 40))
  {
    swift_allocObject();
    swift_weakInit();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC9CC0);
    sub_2166D9530(&qword_280E48508, &unk_27CAC9CC0);
    sub_217007E84();

    OUTLINED_FUNCTION_21_6();
    swift_beginAccess();
    sub_217007D24();
    swift_endAccess();
  }

  return result;
}

void *sub_216DF1DF0(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  v3 = result;
  v4 = result[2];
  if (!v4)
  {
    goto LABEL_12;
  }

  if (!v1)
  {

    goto LABEL_7;
  }

  type metadata accessor for PopoverProvider.Popover();

  v5 = static PopoverProvider.Popover.== infix(_:_:)(v4, v1);

  if ((v5 & 1) == 0)
  {
LABEL_7:
    if (v3[10])
    {
      v6 = v3[11];

      v7 = v6;
      v8 = [v7 presentingViewController];
      if (v8)
      {
        v9 = v8;
        [v8 dismissViewControllerAnimated:1 completion:0];
      }
    }

LABEL_12:
    if (!v1)
    {
LABEL_52:
      v3[2] = v1;
    }

    goto LABEL_13;
  }

LABEL_13:
  swift_beginAccess();

  sub_21700DF14();
  sub_21700DF14();
  sub_2169356F0();

  if ((~v91 & 0xFE) == 0)
  {

    sub_21669987C(&aBlock, &qword_27CAC9CD0);
    goto LABEL_52;
  }

  sub_21693B454(&aBlock, &v92);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v84 = Strong;
    v11 = sub_2170076F4();
    v12 = [objc_allocWithZone(type metadata accessor for PopoverViewController()) initWithRequest_];

    [v12 setDelegate_];
    v13 = *(v1 + 24) == 0xD00000000000001BLL && 0x800000021707F8A0 == *(v1 + 32);
    v14 = &selRef_animateAlongsideTransition_completion_;
    if (v13 || (sub_21700F7D4() & 1) != 0)
    {
      v15 = [v12 popoverPresentationController];
      if (v15)
      {
        v16 = v15;
        sub_216DF42E0(MEMORY[0x277D84F90], v15);
      }
    }

    v18 = v92;
    v17 = v93;
    v20 = v94;
    v19 = v95;
    v21 = v97;
    v82 = v96;
    if (v97 < 0)
    {
      swift_unknownObjectRetain();
      v39 = [v12 popoverPresentationController];
      if (!v39)
      {
        sub_216DF42C8(v18, v17, v20, v19, v82, v21);
LABEL_41:
        v45 = [v12 v14[437]];
        if (v45)
        {
          v46 = v45;
          [v45 setPermittedArrowDirections_];
        }

        v47 = swift_allocObject();
        v47[2] = v84;
        v47[3] = v12;
        v47[4] = v3;
        v47[5] = v1;

        v48 = v12;
        v49 = v84;

        v50 = [v49 presentedViewController];
        if (v50)
        {
          v51 = v50;
          if ([v50 isBeingDismissed])
          {
            v52 = [v51 transitionCoordinator];
            if (v52)
            {
              v53 = v52;
              v54 = swift_allocObject();
              *(v54 + 16) = sub_216DF42D4;
              *(v54 + 24) = v47;
              v90 = sub_2166EFCD4;
              v91 = v54;
              aBlock = MEMORY[0x277D85DD0];
              v87 = 1107296256;
              v88 = sub_216AC1614;
              v89 = &block_descriptor_58;
              v55 = _Block_copy(&aBlock);

              [v53 animateAlongsideTransition:0 completion:v55];

              _Block_release(v55);

LABEL_50:
              swift_unknownObjectRelease();
LABEL_51:
              sub_216DF4298(&v92);
              goto LABEL_52;
            }
          }
        }

        v56 = [v49 transitionCoordinator];
        if (v56)
        {
          v57 = v56;
          v58 = swift_allocObject();
          *(v58 + 16) = sub_216DF42D4;
          *(v58 + 24) = v47;
          v90 = sub_2168E4C64;
          v91 = v58;
          aBlock = MEMORY[0x277D85DD0];
          v87 = 1107296256;
          v88 = sub_216AC1614;
          v89 = &block_descriptor_38;
          v59 = _Block_copy(&aBlock);

          [v57 animateAlongsideTransition:0 completion:v59];
          _Block_release(v59);

          goto LABEL_50;
        }

        result = [v49 view];
        if (!result)
        {
          __break(1u);
          return result;
        }

        v60 = result;
        v61 = [result window];

        if (v61)
        {
          v62 = [v49 parentViewController];
          if (v62)
          {

LABEL_58:
            v63 = v48;
            [v49 presentViewController:v63 animated:1 completion:0];

            sub_216DF4298(&v92);

            v64 = v3[10];
            v65 = v3[11];
            v3[10] = v1;
            v3[11] = v63;
            sub_216DF3DD0(v64, v65);
            goto LABEL_52;
          }

          v66 = [v61 rootViewController];
          if (v66)
          {
            v67 = v66;
            sub_216685F4C(0, &qword_27CAC9DF0);
            v68 = v49;
            v69 = sub_21700F104();

            if (v69)
            {
              goto LABEL_58;
            }
          }
        }

        if (qword_280E416F8 != -1)
        {
          swift_once();
        }

        v70 = sub_217007CA4();
        __swift_project_value_buffer(v70, qword_280E73D20);

        v71 = v49;
        v72 = sub_217007C84();
        v73 = sub_21700ED84();

        if (os_log_type_enabled(v72, v73))
        {
          v74 = swift_slowAlloc();
          v75 = swift_slowAlloc();
          v83 = swift_slowAlloc();
          v85 = v83;
          *v74 = 136446466;
          v76 = *(v1 + 24);
          v77 = *(v1 + 32);
          aBlock = 46;
          v87 = 0xE100000000000000;
          loga = v72;
          MEMORY[0x21CE9F490](v76, v77);
          v78 = sub_2166A85FC(aBlock, v87, &v85);

          *(v74 + 4) = v78;
          *(v74 + 12) = 2114;
          *(v74 + 14) = v71;
          *v75 = v84;
          v79 = v71;
          _os_log_impl(&dword_216679000, loga, v73, "💬 Attempting to present popover with id %{public}s on an invalid view controller %{public}@", v74, 0x16u);
          sub_21669987C(v75, &qword_27CABF880);
          MEMORY[0x21CEA1440](v75, -1, -1);
          __swift_destroy_boxed_opaque_existential_1Tm(v83);
          MEMORY[0x21CEA1440](v83, -1, -1);
          MEMORY[0x21CEA1440](v74, -1, -1);
        }

        else
        {
        }

        goto LABEL_51;
      }

      v25 = v39;
      [v39 setSourceItem_];
      v40 = v18;
      v41 = v17;
      v42 = v20;
      v43 = v19;
      v44 = v82;
    }

    else
    {
      sub_216DF3D70(v92, v93, v94, v95, v96, v97);
      v22 = v12;
      v23 = [v22 &selRef_parentViewController + 5];
      if (v23)
      {
        v24 = v23;
        [v23 setSourceView_];
      }

      v25 = [v22 popoverPresentationController];

      if (!v25)
      {
        sub_216DF42C8(v18, v17, v20, v19, v82, v21);
        v14 = &selRef_animateAlongsideTransition_completion_;
        goto LABEL_41;
      }

      log = v19;
      if (v21)
      {
        v26 = *MEMORY[0x277CBF398];
        v27 = *(MEMORY[0x277CBF398] + 8);
        v28 = *(MEMORY[0x277CBF398] + 16);
        v29 = *(MEMORY[0x277CBF398] + 24);
        v14 = &selRef_animateAlongsideTransition_completion_;
        v30 = v82;
      }

      else
      {
        v26 = *&v17;
        v27 = *&v20;
        v28 = *&v19;
        v30 = v82;
        v29 = *&v82;
        v14 = &selRef_animateAlongsideTransition_completion_;
      }

      [v25 setSourceRect_];
      v40 = v18;
      v41 = v17;
      v42 = v20;
      v43 = log;
      v44 = v30;
    }

    sub_216DF42C8(v40, v41, v42, v43, v44, v21);

    goto LABEL_41;
  }

  if (qword_280E416F8 != -1)
  {
    swift_once();
  }

  v31 = sub_217007CA4();
  __swift_project_value_buffer(v31, qword_280E73D20);

  v32 = sub_217007C84();
  v33 = sub_21700ED84();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v85 = v35;
    *v34 = 136446210;
    v36 = *(v1 + 24);
    v37 = *(v1 + 32);
    aBlock = 46;
    v87 = 0xE100000000000000;
    MEMORY[0x21CE9F490](v36, v37);
    v38 = sub_2166A85FC(aBlock, v87, &v85);

    *(v34 + 4) = v38;
    _os_log_impl(&dword_216679000, v32, v33, "💬 Attempting to present popover with id %{public}s on a released view controller", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v35);
    MEMORY[0x21CEA1440](v35, -1, -1);
    MEMORY[0x21CEA1440](v34, -1, -1);
  }

  else
  {
  }

  return sub_216DF4298(&v92);
}

void sub_216DF291C(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  [a1 presentViewController:v7 animated:1 completion:0];
  v8 = *(a3 + 80);
  v9 = *(a3 + 88);
  *(a3 + 80) = a4;
  *(a3 + 88) = v7;

  sub_216DF3DD0(v8, v9);
}

uint64_t sub_216DF29A0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = a1[1];
  v4 = *(a3 + 32);
  v5 = *(a3 + 40);
  v11[0] = *a1;
  v11[1] = v3;
  v6 = *(a3 + 16);
  v8[0] = *a3;
  v8[1] = v6;
  v9 = v4;
  v10 = v5;
  return sub_216DF29EC(v11, a2, v8, 15);
}

uint64_t sub_216DF29EC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v6 = *a1;
  v7 = a1[1];
  v8 = *a3;
  v9 = *(a3 + 8);
  v10 = *(a3 + 16);
  v11 = *(a3 + 24);
  v19 = *(a3 + 32);
  v12 = *(a3 + 40);
  swift_beginAccess();
  sub_21700DF14();
  sub_2169356F0();

  v13 = ~v25 & 0xFE;
  sub_21669987C(&v20, &qword_27CAC9CD0);
  if (v13)
  {
    sub_216DF3D7C();
    swift_allocError();
    return swift_willThrow();
  }

  else
  {
    v20 = v8;
    v21 = v9;
    v22 = v10;
    v23 = v11;
    v24 = v19;
    LOBYTE(v25) = v12;
    swift_unknownObjectWeakInit();
    v26 = a4;
    OUTLINED_FUNCTION_21_6();
    swift_beginAccess();
    sub_21700DF14();
    sub_216DF3D70(v8, v9, v10, v11, v19, v12);
    sub_216A8C0D0();
    swift_endAccess();
    if (*(v5 + 40))
    {
      v20 = v6;
      v21 = v7;

      sub_216A54608(&v20);
    }

    else
    {
      OUTLINED_FUNCTION_21_6();
      swift_beginAccess();
      sub_21700DF14();
      sub_216DF3BBC(sub_2169393C0);
      v15 = *(*(v5 + 64) + 16);
      sub_216DF3D20(v15, sub_2169393C0);
      v16 = *(v5 + 64);
      *(v16 + 16) = v15 + 1;
      v17 = v16 + 16 * v15;
      *(v17 + 32) = v6;
      *(v17 + 40) = v7;
      *(v5 + 64) = v16;
      return swift_endAccess();
    }
  }
}

uint64_t sub_216DF2C18()
{
  OUTLINED_FUNCTION_21_6();
  swift_beginAccess();
  sub_21700DF14();
  sub_216A8C0D0();
  return swift_endAccess();
}

uint64_t sub_216DF2C90(uint64_t result)
{
  if (v1[10])
  {
    v2 = result;
    v3 = v1[11];

    v4 = v3;
    v5 = [v4 presentingViewController];
    if (v5)
    {
      v6 = v5;
      [v5 dismissViewControllerAnimated:v2 & 1 completion:0];
    }
  }

  if (v1[5])
  {

    sub_216A53C38(0);
  }

  return result;
}

uint64_t PopoverProvider.deinit()
{

  sub_216DF3DD0(*(v0 + 80), *(v0 + 88));
  return v0;
}

uint64_t PopoverProvider.__deallocating_deinit()
{
  PopoverProvider.deinit();

  return MEMORY[0x2821FE8D8](v0, 96, 7);
}

uint64_t sub_216DF2DF0@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for PopoverProvider();
  result = sub_217007D64();
  *a1 = result;
  return result;
}

id sub_216DF2E2C(void *a1)
{
  v6.receiver = v1;
  v6.super_class = type metadata accessor for PopoverViewController();
  v3 = objc_msgSendSuper2(&v6, sel_initWithRequest_, a1);
  [v3 setModalPresentationStyle_];
  v4 = [v3 popoverPresentationController];

  if (v4)
  {
    [v4 setDelegate_];
  }

  return v3;
}

id sub_216DF3050(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtC7MusicUI14MessageHandler_objectGraph] = a1;
  type metadata accessor for UnifiedMessages.Coordinator();
  type metadata accessor for ObjectGraph();

  sub_21700E094();
  *&v2[OBJC_IVAR____TtC7MusicUI14MessageHandler_coordinator] = v7;
  *&v2[OBJC_IVAR____TtC7MusicUI14MessageHandler_requestManager] = a2;
  v6.receiver = v2;
  v6.super_class = type metadata accessor for MessageHandler();
  v4 = objc_msgSendSuper2(&v6, sel_init);

  return v4;
}

void sub_216DF311C(uint64_t a1, void *a2)
{
  if (*(v2 + OBJC_IVAR____TtC7MusicUI14MessageHandler_requestManager))
  {
    sub_216A56F88(a2);
  }
}

unint64_t sub_216DF31C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_2169F7F6C(a2);
  if (result)
  {
    if (*(v4 + OBJC_IVAR____TtC7MusicUI14MessageHandler_requestManager))
    {
      sub_216A56CF0(result, a3, a4);
    }
  }

  return result;
}

uint64_t sub_216DF3308(int a1, void *a2, uint64_t a3, void *aBlock)
{
  _Block_copy(aBlock);
  if (qword_280E416F8 != -1)
  {
    swift_once();
  }

  v7 = sub_217007CA4();
  __swift_project_value_buffer(v7, qword_280E73D20);
  v8 = a2;
  v9 = sub_217007C84();
  v10 = sub_21700ED84();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v22 = v12;
    *v11 = 136315394;
    *(v11 + 4) = sub_2166A85FC(0xD000000000000032, 0x800000021708E420, &v22);
    *(v11 + 12) = 2080;
    v13 = [v8 identifier];
    v14 = sub_21700E514();
    v16 = v15;

    v17 = sub_2166A85FC(v14, v16, &v22);

    *(v11 + 14) = v17;
    _os_log_impl(&dword_216679000, v9, v10, "💬 %s need to handle delegateAction %s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CEA1440](v12, -1, -1);
    MEMORY[0x21CEA1440](v11, -1, -1);
  }

  v18 = *(a3 + OBJC_IVAR____TtC7MusicUI14MessageHandler_coordinator);
  v19 = *(a3 + OBJC_IVAR____TtC7MusicUI14MessageHandler_objectGraph);
  _Block_copy(aBlock);
  sub_216A2A094(v8, v19, v18, aBlock);
  LOBYTE(v18) = v20;
  _Block_release(aBlock);
  _Block_release(aBlock);
  return v18 & 1;
}

void sub_216DF352C(uint64_t a1, void (**a2)(void, void, void))
{
  sub_216681B64(a1, v28, &unk_27CAC9DD0);
  if (v29)
  {
    v3 = *&v28[0];
    memset(v27, 0, sizeof(v27));
    sub_216681B64(v27, v25, &unk_27CABF7A0);
    v4 = v26;
    if (v26)
    {
      __swift_project_boxed_opaque_existential_1(v25, v26);
      OUTLINED_FUNCTION_16();
      v6 = v5;
      v8 = MEMORY[0x28223BE20](v7);
      v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v6 + 16))(v10, v8);
      v11 = v3;
      v12 = sub_21700F7B4();
      (*(v6 + 8))(v10, v4);
      __swift_destroy_boxed_opaque_existential_1Tm(v25);
    }

    else
    {
      v21 = v3;
      v12 = 0;
    }

    v22 = sub_217005D24();
    (a2)[2](a2, v12, v22);
    swift_unknownObjectRelease();

    sub_21669987C(v27, &unk_27CABF7A0);
  }

  else
  {
    sub_2166EF9C4(v28, v27);
    sub_2166A6DF8(v27, v25);
    sub_216681B64(v25, v23, &unk_27CABF7A0);
    v13 = v24;
    if (v24)
    {
      __swift_project_boxed_opaque_existential_1(v23, v24);
      OUTLINED_FUNCTION_16();
      v15 = v14;
      v17 = MEMORY[0x28223BE20](v16);
      v19 = v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v15 + 16))(v19, v17);
      v20 = sub_21700F7B4();
      (*(v15 + 8))(v19, v13);
      __swift_destroy_boxed_opaque_existential_1Tm(v23);
    }

    else
    {
      v20 = 0;
    }

    a2[2](a2, v20, 0);
    swift_unknownObjectRelease();
    sub_21669987C(v25, &unk_27CABF7A0);
    __swift_destroy_boxed_opaque_existential_1Tm(v27);
  }

  _Block_release(a2);
}

uint64_t sub_216DF384C(uint64_t a1, void (*a2)(_OWORD *, id))
{
  sub_216681B64(a1, v8, &unk_27CAC9DD0);
  if (v9)
  {
    v3 = v8[0];
    memset(v7, 0, sizeof(v7));
    v4 = v8[0];
    a2(v7, v3);

    return sub_21669987C(v7, &unk_27CABF7A0);
  }

  else
  {
    sub_2166EF9C4(v8, v7);
    sub_2166A6DF8(v7, v6);
    a2(v6, 0);
    sub_21669987C(v6, &unk_27CABF7A0);
    return __swift_destroy_boxed_opaque_existential_1Tm(v7);
  }
}

id sub_216DF3A20(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_216DF3BBC(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result)
  {
    result = a1(result, *(v3 + 16) + 1, 1, v3);
    *v1 = result;
  }

  return result;
}

uint64_t sub_216DF3D20(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

id sub_216DF3D70(id a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6 < 0)
  {
    return swift_unknownObjectRetain();
  }

  else
  {
    return a1;
  }
}

unint64_t sub_216DF3D7C()
{
  result = qword_27CAC9CD8;
  if (!qword_27CAC9CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC9CD8);
  }

  return result;
}

void sub_216DF3DD0(uint64_t a1, void *a2)
{
  if (a1)
  {
  }
}

unint64_t sub_216DF3E14()
{
  result = qword_27CAC9CE0;
  if (!qword_27CAC9CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC9CE0);
  }

  return result;
}

uint64_t sub_216DF3FB8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7F && *(a1 + 41))
    {
      v2 = *a1 + 126;
    }

    else
    {
      v2 = (*(a1 + 40) & 0x7E | (*(a1 + 40) >> 7)) ^ 0x7F;
      if (v2 >= 0x7E)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_216DF4000(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 32) = 0;
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 40) = 2 * (((-a2 >> 1) & 0x3F) - (a2 << 6));
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PopoverProvider.PopoverError(_BYTE *result, int a2, int a3)
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

uint64_t sub_216DF41CC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7F && *(a1 + 64))
    {
      v2 = *a1 + 126;
    }

    else
    {
      v2 = (*(a1 + 40) & 0x7E | (*(a1 + 40) >> 7)) ^ 0x7F;
      if (v2 >= 0x7E)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_216DF4214(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 32) = 0;
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 40) = 2 * (((-a2 >> 1) & 0x3F) - (a2 << 6));
    }
  }

  return result;
}

void sub_216DF42C8(id a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6 < 0)
  {
    swift_unknownObjectRelease();
  }

  else
  {
  }
}

void sub_216DF42E0(uint64_t a1, void *a2)
{
  sub_216685F4C(0, &qword_27CAC9DF8);
  v3 = sub_21700E804();

  [a2 setPassthroughViews_];
}

uint64_t type metadata accessor for SearchResultsPageIntent()
{
  result = qword_280E37720;
  if (!qword_280E37720)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_216DF43E0()
{
  sub_2166CE38C();
  if (v0 <= 0x3F)
  {
    sub_216688154();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

id sub_216DF44BC(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v27 - v5;
  result = [objc_opt_self() valueWithNewObjectInContext_];
  if (result)
  {
    v8 = result;
    sub_2166F1DCC();
    v9 = type metadata accessor for SearchResultsPageIntent();
    v27 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2D48);
    v10 = sub_21700E594();
    v11 = MEMORY[0x277D837D0];
    v30 = MEMORY[0x277D837D0];
    v27 = v10;
    v28 = v12;
    v13 = a1;
    v14 = OUTLINED_FUNCTION_0_227();
    sub_2166F1F64(v14);
    v15 = *v1;
    v16 = v1[1];
    v30 = v11;
    v27 = v15;
    v28 = v16;
    v17 = v13;
    sub_21700DF14();
    v18 = OUTLINED_FUNCTION_0_227();
    sub_2166F1F64(v18);
    v19 = (v2 + *(v9 + 24));
    v20 = v19[1];
    if (v20)
    {
      v21 = *v19;
      v22 = MEMORY[0x277D837D0];
    }

    else
    {
      v21 = 0;
      v22 = 0;
      v29 = 0;
    }

    v27 = v21;
    v28 = v20;
    v30 = v22;
    v23 = v17;
    sub_21700DF14();
    v24 = OUTLINED_FUNCTION_0_227();
    sub_2166F1F64(v24);
    sub_2168CC268(v2 + *(v9 + 20), v6);
    v25 = type metadata accessor for ReferrerInfo();
    if (__swift_getEnumTagSinglePayload(v6, 1, v25) == 1)
    {
      sub_2168CC2D8(v6);
      isa = 0;
    }

    else
    {
      isa = ReferrerInfo.makeValue(in:)(v23).super.isa;
      sub_2168CC340(v6);
    }

    sub_2166F1F64(isa);
    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_216DF475C(uint64_t a1)
{
  result = sub_216DF4880(qword_280E37730, type metadata accessor for SearchResultsPageIntent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216DF47FC(uint64_t a1)
{
  *(a1 + 8) = sub_216DF4880(qword_280E37730, type metadata accessor for SearchResultsPageIntent);
  result = sub_216DF4880(&qword_27CAC9E00, type metadata accessor for SearchResultsPageIntent);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_216DF4880(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for CuratorDetailPageIntent()
{
  result = qword_27CAC9E08;
  if (!qword_27CAC9E08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_216DF4984@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v51 = a2;
  v47 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0);
  MEMORY[0x28223BE20](v4 - 8);
  v46 = &v43 - v5;
  v6 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_0();
  v45 = v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v43 - v12;
  v48 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_1_0();
  v44 = v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v43 - v19;
  v21 = type metadata accessor for ContentDescriptor();
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v43 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21700CE04();
  v24 = *(v8 + 16);
  v50 = v6;
  v24(v13, v51, v6);
  v25 = v49;
  ContentDescriptor.init(deserializing:using:)(v20, v13, v26, v27, v28, v29, v30, v31, v43, v44, SWORD2(v44), SBYTE6(v44), SHIBYTE(v44));
  if (v25)
  {
    (*(v8 + 8))(v51, v50);
    return (*(v15 + 8))(a1, v48);
  }

  else
  {
    v43 = v15;
    v49 = v8;
    v33 = v47;
    v34 = v48;
    sub_2168ED900(v23, v47);
    v35 = v44;
    sub_21700CE04();
    v36 = v45;
    v37 = v51;
    (v24)(v45);
    v38 = v46;
    ReferrerInfo.init(deserializing:using:)(v35, v36, v46);
    v39 = v34;
    v40 = v43;
    (*(v49 + 8))(v37, v50);
    (*(v40 + 8))(a1, v39);
    v41 = type metadata accessor for ReferrerInfo();
    __swift_storeEnumTagSinglePayload(v38, 0, 1, v41);
    v42 = type metadata accessor for CuratorDetailPageIntent();
    return sub_21693FB5C(v38, v33 + *(v42 + 20));
  }
}

id sub_216DF4D14(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v16 - v5;
  result = [objc_opt_self() valueWithNewObjectInContext_];
  if (result)
  {
    v8 = result;
    sub_2166F1DCC();
    v9 = type metadata accessor for CuratorDetailPageIntent();
    v16[0] = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC2D70);
    v10 = sub_21700E594();
    v16[3] = MEMORY[0x277D837D0];
    v16[0] = v10;
    v16[1] = v11;
    v12 = a1;
    v13 = sub_2166F1E10(v16, a1);
    sub_2166F1F64(v13);
    ContentDescriptor.makeValue(in:)(v12);
    sub_21700F0B4();
    sub_2168CC268(v2 + *(v9 + 20), v6);
    v14 = type metadata accessor for ReferrerInfo();
    if (__swift_getEnumTagSinglePayload(v6, 1, v14) == 1)
    {
      sub_2168CC2D8(v6);
      isa = 0;
    }

    else
    {
      isa = ReferrerInfo.makeValue(in:)(v12).super.isa;
      sub_2168CC340(v6);
    }

    sub_2166F1F64(isa);
    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_216DF4F68(uint64_t a1)
{
  result = sub_2166CE9CC(&qword_27CAC9E18, type metadata accessor for CuratorDetailPageIntent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_216DF5008(uint64_t a1)
{
  *(a1 + 8) = sub_2166CE9CC(&qword_27CAC9E18, type metadata accessor for CuratorDetailPageIntent);
  result = sub_2166CE9CC(&qword_27CAC9E20, type metadata accessor for CuratorDetailPageIntent);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_216DF508C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v8 - v5;
  *(v1 + 16) = a1;
  type metadata accessor for ObjectGraph();

  sub_21700E094();
  (*(v4 + 32))(v1 + OBJC_IVAR____TtC7MusicUI28ViewLyricsMenuActionProvider_actionDispatcher, v6, v3);
  type metadata accessor for SubscriptionStatusCoordinator();
  sub_21700E094();

  *(v1 + OBJC_IVAR____TtC7MusicUI28ViewLyricsMenuActionProvider_subscriptionStatusCoordinator) = v8[1];
  return v1;
}

uint64_t sub_216DF51D0()
{

  v1 = OBJC_IVAR____TtC7MusicUI28ViewLyricsMenuActionProvider_actionDispatcher;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_216DF5254()
{
  sub_216DF51D0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for ViewLyricsMenuActionProvider()
{
  result = qword_280E31BD0;
  if (!qword_280E31BD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_216DF5300@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  OUTLINED_FUNCTION_16();
  v41 = v21;
  (*(v22 + 16))(a9);
  v23 = type metadata accessor for PaginatingShelfCollection();
  v24 = (a9 + v23[28]);
  *v24 = a7;
  v24[1] = a8;
  v25 = a9 + v23[25];
  *v25 = a2;
  *(v25 + 8) = a3 & 1;
  *(a9 + v23[26]) = a5;
  *(a9 + v23[27]) = a6;
  v26 = (a9 + v23[29]);
  *v26 = a10;
  v26[1] = a11;
  v27 = swift_allocObject();
  v27[2] = a12;
  v27[3] = a13;
  v27[4] = a14;
  v27[5] = a15;
  v27[6] = a16;
  v27[7] = a17;
  v27[8] = a18;
  v27[9] = a19;
  v27[10] = a4;
  type metadata accessor for ShelfCollectionPaginatedPagePresenter();
  OUTLINED_FUNCTION_1_192();
  swift_getWitnessTable();
  v28 = sub_2170081A4();
  v30 = v29;
  v32 = v31;
  result = (*(v41 + 8))(a1, a12);
  v34 = a9 + v23[30];
  *v34 = v28;
  *(v34 + 8) = v30;
  *(v34 + 16) = v32 & 1;
  return result;
}

uint64_t sub_216DF555C()
{
  type metadata accessor for ShelfCollectionPaginatedPagePresenter();

  return sub_216C79DF0(v0);
}

void sub_216DF5600()
{
  swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    sub_216927B20();
    if (v1 <= 0x3F)
    {
      sub_2166B0B84();
      if (v2 <= 0x3F)
      {
        type metadata accessor for ShelfCollectionPaginatedPagePresenter();
        swift_getWitnessTable();
        sub_2170081D4();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_216DF5700(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0x7FFFFFFF)
    {
      v16 = *((((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 18) & 0xFFFFFFFFFFFFFFF8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }

    else
    {
      return __swift_getEnumTagSinglePayload(result, v5, v4);
    }
  }

  else
  {
    v8 = ((((((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 18) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 17;
    v9 = (a2 - v7 + 255) >> 8;
    if (v8 <= 3)
    {
      v10 = v9 + 1;
    }

    else
    {
      v10 = 2;
    }

    if (v10 >= 0x10000)
    {
      v11 = 4;
    }

    else
    {
      v11 = 2;
    }

    if (v10 < 0x100)
    {
      v11 = 1;
    }

    if (v10 >= 2)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    switch(v12)
    {
      case 1:
        v13 = *(result + v8);
        if (!*(result + v8))
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v13 = *(result + v8);
        if (!*(result + v8))
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v13 = *(result + v8);
        if (!v13)
        {
          goto LABEL_26;
        }

LABEL_22:
        v14 = (v13 - 1) << (8 * v8);
        if (v8 <= 3)
        {
          v15 = *result;
        }

        else
        {
          v14 = 0;
          v15 = *result;
        }

        result = v7 + (v15 | v14) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_216DF5874(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((((((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 18) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 17;
  if (v8 >= a3)
  {
    v14 = 0;
  }

  else
  {
    v11 = (a3 - v8 + 255) >> 8;
    if (v10 <= 3)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
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
  }

  if (v8 >= a2)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_30;
      default:
LABEL_30:
        if (a2)
        {
LABEL_31:
          if (v7 < 0x7FFFFFFF)
          {
            v17 = (((&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8) + 18) & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              v18 = a2 & 0x7FFFFFFF;
              v17[1] = 0;
            }

            else
            {
              v18 = (a2 - 1);
            }

            *v17 = v18;
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    v15 = ~v8 + a2;
    bzero(a1, ((((((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 18) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 17);
    if (v10 <= 3)
    {
      v16 = (v15 >> 8) + 1;
    }

    else
    {
      v16 = 1;
    }

    if (v10 > 3)
    {
      *a1 = v15;
    }

    else
    {
      *a1 = v15;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v16;
        break;
      case 2:
        *&a1[v10] = v16;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v10] = v16;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_216DF5AD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v66 = a2;
  OUTLINED_FUNCTION_16();
  v63 = v5;
  v65 = *(v6 + 64);
  MEMORY[0x28223BE20](v7);
  v61 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v9 + 16);
  OUTLINED_FUNCTION_16();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = v15;
  v17 = *(v16 + 24);
  v69 = *(v16 + 32);
  v70 = v17;
  v18 = *(v16 + 88);
  v72 = *(v16 + 80);
  v73 = v18;
  v74 = v10;
  v75 = v17;
  v76 = v69;
  v79 = v72;
  v80 = v18;
  v71 = *(v16 + 48);
  v68 = *(v16 + 64);
  v77 = v71;
  v78 = v68;
  v19 = type metadata accessor for ShelfCollection();
  OUTLINED_FUNCTION_16();
  v64 = v20;
  MEMORY[0x28223BE20](v21);
  v67 = &v55 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v60 = (&v55 - v24);
  v26 = MEMORY[0x28223BE20](v25);
  v62 = &v55 - v27;
  v28 = *(v12 + 16);
  v59 = v10;
  v28(v15, v3, v10, v26);
  v29 = *(a1 + 104);
  v30 = v3 + *(a1 + 100);
  v56 = *v30;
  HIDWORD(v57) = *(v3 + v29);
  v31 = *(v30 + 8);
  v32 = *(a1 + 112);
  v33 = *(v3 + *(a1 + 108));
  v34 = *(v3 + v32);
  v35 = *(v3 + v32 + 8);
  v36 = (v3 + *(a1 + 116));
  v37 = *v36;
  v38 = v36[1];

  sub_216922530(v58, v56, v31, HIDWORD(v57), v33, v34, v35, v37, v38, v10, v70, v69, v71, *(&v71 + 1), v68, v72, v73, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68);
  v39 = *(a1 + 40);
  v40 = *(a1 + 72);
  type metadata accessor for ShelfCollectionPaginatedPagePresenter();
  OUTLINED_FUNCTION_1_192();
  swift_getWitnessTable();
  sub_2170081B4();
  LOBYTE(v34) = sub_216C7AD44();

  v41 = v63;
  v42 = v61;
  (*(v63 + 16))(v61, v3, a1);
  v43 = v41;
  v44 = (*(v41 + 80) + 96) & ~*(v41 + 80);
  v45 = swift_allocObject();
  *&v46 = v59;
  *(&v46 + 1) = v70;
  *&v47 = v69;
  *(&v47 + 1) = v39;
  *(v45 + 16) = v46;
  *(v45 + 32) = v47;
  *&v46 = v68;
  *(&v46 + 1) = v40;
  *(v45 + 64) = v46;
  *(v45 + 48) = v71;
  v48 = v73;
  *(v45 + 80) = v72;
  *(v45 + 88) = v48;
  (*(v43 + 32))(v45 + v44, v42, a1);
  v49 = v60;
  v50 = v67;
  sub_216923DE0(v34 & 1, sub_216DF612C, v45, v60);

  v51 = *(v64 + 8);
  v51(v50, v19);
  OUTLINED_FUNCTION_0_228();
  swift_getWitnessTable();
  v52 = v62;
  sub_2166C24DC(v49, v19);
  v51(v49, v19);
  sub_2166C24DC(v52, v19);
  return (v51)(v52, v19);
}

uint64_t sub_216DF5FC0()
{
  type metadata accessor for PaginatingShelfCollection();
  v0 = type metadata accessor for ShelfCollectionPaginatedPagePresenter();
  swift_getWitnessTable();
  sub_2170081B4();
  WitnessTable = swift_getWitnessTable();
  v2 = sub_21686D8D0(v0, WitnessTable);

  if (v2)
  {
    sub_2170081B4();
    v4 = sub_21686D76C(v0, WitnessTable);

    if (!v4)
    {
      sub_2170081B4();
      sub_216C7AEA0();
    }
  }

  return result;
}

double sub_216DF6204@<D0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  if (*a1 == 1)
  {
    sub_216DF93CC(v12);
  }

  else
  {
    sub_216DFFFB8(v12);
  }

  sub_2166A6EA4();
  v4 = v10;
  if (v10)
  {
    v5 = v11;
    __swift_project_boxed_opaque_existential_1(v9, v10);
    v6 = sub_21700D3B4();
    v7 = MEMORY[0x277D21D10];
    *(a2 + 24) = v6;
    *(a2 + 32) = v7;
    __swift_allocate_boxed_opaque_existential_1(a2);
    sub_216E01584(v2, v4, v5);
    sub_216697664(v12, &qword_27CAB6DB0);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
  }

  else
  {
    OUTLINED_FUNCTION_9_64(v12);
    OUTLINED_FUNCTION_9_64(v9);
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

void sub_216DF6318()
{
  OUTLINED_FUNCTION_49();
  sub_2170070F4();
  OUTLINED_FUNCTION_1();
  v232 = v3;
  v233 = v2;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_6_0();
  v231 = v4;
  OUTLINED_FUNCTION_4_1();
  sub_217007064();
  OUTLINED_FUNCTION_1();
  v236 = v6;
  v237 = v5;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_6_0();
  v235 = v7;
  OUTLINED_FUNCTION_4_1();
  v8 = sub_21700E4C4();
  v9 = OUTLINED_FUNCTION_36(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_6_0();
  v238 = v10;
  OUTLINED_FUNCTION_4_1();
  sub_217007264();
  OUTLINED_FUNCTION_1();
  v240 = v12;
  v241 = v11;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_6_0();
  v239 = v13;
  OUTLINED_FUNCTION_4_1();
  sub_217007324();
  OUTLINED_FUNCTION_1();
  v245 = v15;
  v246 = v14;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_6_0();
  v243 = v16;
  OUTLINED_FUNCTION_4_1();
  sub_2170073D4();
  OUTLINED_FUNCTION_1();
  v252 = v18;
  v253 = v17;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_6_0();
  v251 = v19;
  OUTLINED_FUNCTION_4_1();
  sub_21700C084();
  OUTLINED_FUNCTION_1();
  v260 = v21;
  v261 = v20;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_6_0();
  v259 = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74E0);
  OUTLINED_FUNCTION_36(v23);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_105();
  v257 = v25;
  OUTLINED_FUNCTION_4_1();
  v258 = sub_21700BEF4();
  OUTLINED_FUNCTION_1();
  v248 = v26;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_6_0();
  v254 = v28;
  OUTLINED_FUNCTION_4_1();
  v255 = sub_21700C564();
  OUTLINED_FUNCTION_1();
  v247 = v29;
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_6_0();
  v234 = v31;
  v242 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9E60);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_105();
  v256 = v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9E68);
  OUTLINED_FUNCTION_36(v34);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_105();
  v264 = v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9E70);
  v38 = OUTLINED_FUNCTION_36(v37);
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_77();
  v244 = v39 - v40;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_6_4();
  v249 = v42;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v43);
  v250 = &v230 - v44;
  OUTLINED_FUNCTION_4_1();
  sub_21700C644();
  OUTLINED_FUNCTION_1();
  v262 = v46;
  v263 = v45;
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_6_0();
  v265 = v47;
  OUTLINED_FUNCTION_4_1();
  sub_217006FE4();
  OUTLINED_FUNCTION_1();
  v267 = v49;
  v268 = v48;
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_6_0();
  v266 = v50;
  OUTLINED_FUNCTION_4_1();
  sub_21700C924();
  OUTLINED_FUNCTION_1();
  v270 = v52;
  v271 = v51;
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_6_0();
  v269 = v53;
  OUTLINED_FUNCTION_4_1();
  sub_21700BA44();
  OUTLINED_FUNCTION_1();
  v273 = v55;
  v274 = v54;
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_6_0();
  v272 = v56;
  OUTLINED_FUNCTION_4_1();
  sub_217006274();
  OUTLINED_FUNCTION_1();
  v277 = v58;
  v278 = v57;
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_6_0();
  v279 = v59;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74E8);
  OUTLINED_FUNCTION_36(v60);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v61);
  v63 = &v230 - v62;
  sub_217006B84();
  OUTLINED_FUNCTION_1();
  v275 = v65;
  v276 = v64;
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_18_62();
  v66 = sub_21700C1E4();
  OUTLINED_FUNCTION_1();
  v68 = v67;
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_7();
  v72 = v71 - v70;
  v73 = sub_2170067A4();
  OUTLINED_FUNCTION_1();
  v75 = v74;
  MEMORY[0x28223BE20](v76);
  OUTLINED_FUNCTION_7();
  v79 = v78 - v77;
  (*(v75 + 16))(v78 - v77, v0, v73);
  v80 = (*(v75 + 88))(v79, v73);
  if (v80 == *MEMORY[0x277D2A400])
  {
    v81 = OUTLINED_FUNCTION_3_154();
    v82(v81);
    (*(v68 + 32))(v72, v79, v66);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7228);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_217013D90;
    sub_216DF7928();
    *(inited + 32) = v84;
    *(inited + 40) = v85;
    *(inited + 48) = sub_21700C0C4();
    *(inited + 56) = v86;
    sub_216B45A2C(inited);
    swift_setDeallocating();
    sub_2169FAC80();
    (*(v68 + 8))(v72, v66);
LABEL_8:
    OUTLINED_FUNCTION_26();
    return;
  }

  if (v80 == *MEMORY[0x277D2A418])
  {
LABEL_4:
    sub_216DF7928();
    (*(v75 + 8))(v79, v73);
    goto LABEL_8;
  }

  if (v80 == *MEMORY[0x277D2A438] || v80 == *MEMORY[0x277D2A3C8])
  {
LABEL_7:
    (*(v75 + 8))(v79, v73);
    goto LABEL_8;
  }

  if (v80 == *MEMORY[0x277D2A428] || v80 == *MEMORY[0x277D2A388] || v80 == *MEMORY[0x277D2A408])
  {
    goto LABEL_4;
  }

  if (v80 == *MEMORY[0x277D2A3B0])
  {
    v87 = OUTLINED_FUNCTION_3_154();
    v88(v87);
    v89 = v275;
    v90 = OUTLINED_FUNCTION_10_92();
    v91 = v276;
    v92(v90);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7228);
    v93 = swift_initStackObject();
    OUTLINED_FUNCTION_29_46(v93, xmmword_217013D90);
    v93[2].n128_u64[0] = v94;
    v93[2].n128_u64[1] = v95;
    sub_217006AF4();
    v96 = v279;
    sub_217006254();
    v97 = sub_216DF8E2C(v63, v96);
    v99 = v98;
    (*(v277 + 8))(v96, v278);
    sub_216697664(v63, &qword_27CAB74E8);
    v93[3].n128_u64[0] = v97;
    v93[3].n128_u64[1] = v99;
LABEL_14:
    sub_216B45A2C(v93);
    OUTLINED_FUNCTION_14_73();
    swift_setDeallocating();
    sub_2169FAC80();
    (*(v89 + 8))(v1, v91);
    goto LABEL_8;
  }

  if (v80 == *MEMORY[0x277D2A3B8])
  {
    v100 = OUTLINED_FUNCTION_3_154();
    v101(v100);
    v103 = v272;
    v102 = v273;
    OUTLINED_FUNCTION_15_67();
    v104 = v274;
    v105(v103, v79, v274);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7228);
    v106 = swift_initStackObject();
    OUTLINED_FUNCTION_29_46(v106, xmmword_217013D90);
    v106[2].n128_u64[0] = v107;
    v106[2].n128_u64[1] = v108;
    v106[3].n128_u64[0] = sub_21700B9B4();
    v106[3].n128_u64[1] = v109;
    sub_216B45A2C(v106);
    OUTLINED_FUNCTION_14_73();
    swift_setDeallocating();
    sub_2169FAC80();
    (*(v102 + 8))(v103, v104);
    goto LABEL_8;
  }

  if (v80 == *MEMORY[0x277D2A440])
  {
    v110 = OUTLINED_FUNCTION_3_154();
    v111(v110);
    v113 = v269;
    v112 = v270;
    OUTLINED_FUNCTION_15_67();
    v114 = v271;
    v115(v113, v79, v271);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7228);
    v116 = swift_initStackObject();
    *(v116 + 16) = xmmword_217013D90;
    sub_216DF7928();
    *(v116 + 32) = v117;
    *(v116 + 40) = v118;
    v119 = sub_21700C774();
LABEL_19:
    *(v116 + 48) = v119;
    *(v116 + 56) = v120;
    sub_216B45A2C(v116);
    OUTLINED_FUNCTION_14_73();
    swift_setDeallocating();
    sub_2169FAC80();
    (*(v112 + 8))(v113, v114);
    goto LABEL_8;
  }

  if (v80 == *MEMORY[0x277D2A450] || v80 == *MEMORY[0x277D2A3C0])
  {
    goto LABEL_4;
  }

  if (v80 != *MEMORY[0x277D2A3D0])
  {
    if (v80 == *MEMORY[0x277D2A3F8])
    {
      v136 = OUTLINED_FUNCTION_3_154();
      v137(v136);
      v113 = v259;
      v112 = v260;
      OUTLINED_FUNCTION_15_67();
      v114 = v261;
      v138(v113, v79, v261);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7228);
      v116 = swift_initStackObject();
      *(v116 + 16) = xmmword_217013D90;
      sub_216DF7928();
      *(v116 + 32) = v139;
      *(v116 + 40) = v140;
      v119 = sub_21700BF64();
      goto LABEL_19;
    }

    if (v80 != *MEMORY[0x277D2A430])
    {
      if (v80 == *MEMORY[0x277D2A458])
      {
        v149 = OUTLINED_FUNCTION_3_154();
        v150(v149);
        v152 = v251;
        v151 = v252;
        v153 = OUTLINED_FUNCTION_10_92();
        v154 = v253;
        v155(v153);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7228);
        v156 = swift_initStackObject();
        OUTLINED_FUNCTION_29_46(v156, xmmword_217013D90);
        v156[2].n128_u64[0] = v157;
        v156[2].n128_u64[1] = v158;
        v156[3].n128_u64[0] = sub_2170073B4();
        v156[3].n128_u64[1] = v159;
        sub_216B45A2C(v156);
        OUTLINED_FUNCTION_14_73();
        swift_setDeallocating();
        sub_2169FAC80();
        (*(v151 + 8))(v152, v154);
        goto LABEL_8;
      }

      if (v80 == *MEMORY[0x277D2A448])
      {
        v168 = OUTLINED_FUNCTION_3_154();
        v169(v168);
        v171 = v245;
        v170 = v246;
        OUTLINED_FUNCTION_23_50();
        v172 = v243;
        v173 = OUTLINED_FUNCTION_75();
        v174(v173);
        sub_217007314();
      }

      else
      {
        if (v80 == *MEMORY[0x277D2A420])
        {
          v190 = OUTLINED_FUNCTION_3_154();
          v191(v190);
          v1 = v239;
          v89 = v240;
          v192 = OUTLINED_FUNCTION_10_92();
          v91 = v241;
          v193(v192);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7228);
          v93 = swift_initStackObject();
          OUTLINED_FUNCTION_29_46(v93, xmmword_217013D90);
          v93[2].n128_u64[0] = v194;
          v93[2].n128_u64[1] = v195;
          sub_21700E4B4();
          sub_217006264();
          sub_21700E584();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7518);
          v196 = swift_allocObject();
          *(v196 + 16) = xmmword_217013DA0;
          v197 = sub_2170071E4();
          v198 = MEMORY[0x277D83C10];
          *(v196 + 56) = MEMORY[0x277D83B88];
          *(v196 + 64) = v198;
          *(v196 + 32) = v197;
          OUTLINED_FUNCTION_115();
          v199 = sub_21700E4E4();
          v201 = v200;

          v93[3].n128_u64[0] = v199;
          v93[3].n128_u64[1] = v201;
          goto LABEL_14;
        }

        if (v80 == *MEMORY[0x277D2A3D8])
        {
          v206 = OUTLINED_FUNCTION_3_154();
          v207(v206);
          v172 = v235;
          v171 = v236;
          OUTLINED_FUNCTION_23_50();
          v208 = OUTLINED_FUNCTION_75();
          v170 = v237;
          v209(v208);
          sub_217006FF4();
        }

        else
        {
          if (v80 != *MEMORY[0x277D2A3E0])
          {
            goto LABEL_7;
          }

          v223 = OUTLINED_FUNCTION_3_154();
          v224(v223);
          v172 = v231;
          v171 = v232;
          OUTLINED_FUNCTION_23_50();
          v225 = OUTLINED_FUNCTION_75();
          v170 = v233;
          v226(v225);
          sub_217007074();
        }
      }

      (*(v171 + 8))(v172, v170);
      goto LABEL_8;
    }

    v141 = OUTLINED_FUNCTION_3_154();
    v142(v141);
    v143 = OUTLINED_FUNCTION_75();
    v144(v143);
    v145 = v264;
    sub_21700C584();
    v146 = sub_21700C574();
    OUTLINED_FUNCTION_31_2(v145, 1, v146);
    if (v205)
    {
      v147 = &qword_27CAC9E68;
      v148 = v264;
    }

    else
    {
      v160 = *(v146 - 8);
      if ((*(*(v146 - 8) + 88))(v264, v146) != *MEMORY[0x277D2B260])
      {
        (*(v160 + 8))(v264, v146);
        goto LABEL_47;
      }

      (*(v160 + 96))(v264, v146);
      sub_2167A4788();
      v161 = v255;
      (*(v247 + 104))(v249, *MEMORY[0x277D2B248], v255);
      OUTLINED_FUNCTION_41();
      __swift_storeEnumTagSinglePayload(v162, v163, v164, v161);
      v165 = *(v242 + 48);
      v166 = v256;
      sub_2166A6EA4();
      sub_2166A6EA4();
      OUTLINED_FUNCTION_31_2(v166, 1, v161);
      if (v205)
      {
        OUTLINED_FUNCTION_9_64(v249);
        OUTLINED_FUNCTION_9_64(v250);
        OUTLINED_FUNCTION_31_2(v256 + v165, 1, v255);
        if (v205)
        {
          sub_216697664(v256, &qword_27CAC9E70);
          v167 = 1;
LABEL_48:
          sub_216DF7928();
          v176 = v175;
          v178 = v177;
          sub_216937ABC();
          v180 = v179;
          v181 = *(v179 + 16);
          if (v181 >= *(v179 + 24) >> 1)
          {
            sub_216937ABC();
            v180 = v227;
          }

          *(v180 + 16) = v181 + 1;
          v182 = v180 + 16 * v181;
          *(v182 + 32) = v176;
          *(v182 + 40) = v178;
          v183 = sub_21700C5E4();
          if (v184)
          {
            v185 = v183;
            v186 = v184;
            v187 = *(v180 + 16);
            if (v187 >= *(v180 + 24) >> 1)
            {
              sub_216937ABC();
              v180 = v228;
            }

            *(v180 + 16) = v187 + 1;
            v188 = v180 + 16 * v187;
            *(v188 + 32) = v185;
            *(v188 + 40) = v186;
          }

          else
          {
            v189 = v257;
            sub_21700C5D4();
            OUTLINED_FUNCTION_31_2(v189, 1, v258);
            if (v205)
            {
              sub_216697664(v257, &qword_27CAB74E0);
            }

            else
            {
              (*(v248 + 32))(v254, v257, v258);
              if (v167)
              {
                v202 = sub_21700BEE4();
              }

              else
              {
                v202 = sub_21700BED4();
              }

              v210 = v202;
              v211 = v203;
              v212 = *(v180 + 16);
              if (v212 >= *(v180 + 24) >> 1)
              {
                sub_216937ABC();
                v180 = v229;
              }

              (*(v248 + 8))(v254, v258);
              *(v180 + 16) = v212 + 1;
              v213 = v180 + 16 * v212;
              *(v213 + 32) = v210;
              *(v213 + 40) = v211;
            }
          }

          sub_216B45A2C(v180);
          OUTLINED_FUNCTION_14_73();

          (*(v262 + 8))(v265, v263);
          goto LABEL_8;
        }
      }

      else
      {
        v204 = v256;
        sub_2166A6EA4();
        OUTLINED_FUNCTION_31_2(v204 + v165, 1, v255);
        if (!v205)
        {
          v214 = v247;
          v215 = v255;
          v216 = v256;
          v217 = v256 + v165;
          v218 = v234;
          (*(v247 + 32))(v234, v217, v255);
          OUTLINED_FUNCTION_7_103();
          sub_216E09184(v219, v220);
          v221 = v244;
          v167 = sub_21700E494();
          v222 = *(v214 + 8);
          v222(v218, v215);
          OUTLINED_FUNCTION_22_55(v249);
          OUTLINED_FUNCTION_22_55(v250);
          v222(v221, v215);
          OUTLINED_FUNCTION_22_55(v216);
          goto LABEL_48;
        }

        OUTLINED_FUNCTION_9_64(v249);
        OUTLINED_FUNCTION_9_64(v250);
        (*(v247 + 8))(v244, v255);
      }

      v147 = &qword_27CAC9E60;
      v148 = v256;
    }

    sub_216697664(v148, v147);
LABEL_47:
    v167 = 0;
    goto LABEL_48;
  }

  v121 = OUTLINED_FUNCTION_3_154();
  v122(v121);
  v124 = v266;
  v123 = v267;
  v125 = OUTLINED_FUNCTION_10_92();
  v126 = v268;
  v127(v125);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7228);
  v128 = swift_initStackObject();
  *(v128 + 16) = xmmword_217013D90;
  sub_216DF7928();
  *(v128 + 32) = v129;
  *(v128 + 40) = v130;
  v131 = sub_217006FB4();
  if (!v132)
  {
    v135 = 0;
    goto LABEL_34;
  }

  v280 = 64;
  v281 = 0xE100000000000000;
  v133 = sub_217006FB4();
  if (v134)
  {
    MEMORY[0x21CE9F490](v133);

    v131 = v280;
    v135 = v281;
LABEL_34:
    *(v128 + 48) = v131;
    *(v128 + 56) = v135;
    sub_216B45A2C(v128);
    OUTLINED_FUNCTION_14_73();
    swift_setDeallocating();
    sub_2169FAC80();
    (*(v123 + 8))(v124, v126);
    goto LABEL_8;
  }

  __break(1u);
}

void sub_216DF7928()
{
  OUTLINED_FUNCTION_49();
  v1 = v0;
  sub_21700C564();
  OUTLINED_FUNCTION_1();
  v66 = v3;
  v67 = v2;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_7();
  v6 = v5 - v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9E60);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_105();
  v68 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9E68);
  OUTLINED_FUNCTION_36(v10);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v11);
  v13 = &v64[-v12];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9E70);
  v15 = OUTLINED_FUNCTION_36(v14);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_77();
  v18 = v16 - v17;
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v64[-v21];
  MEMORY[0x28223BE20](v20);
  v24 = &v64[-v23];
  sub_21700C644();
  OUTLINED_FUNCTION_1();
  v70 = v26;
  v71 = v25;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_6_0();
  v69 = v27;
  OUTLINED_FUNCTION_4_1();
  v28 = sub_2170067A4();
  OUTLINED_FUNCTION_1();
  v30 = v29;
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_7();
  v34 = v33 - v32;
  (*(v30 + 16))(v33 - v32, v1, v28);
  v35 = OUTLINED_FUNCTION_8();
  v37 = v36(v35);
  if (v37 != *MEMORY[0x277D2A400])
  {
    if (v37 == *MEMORY[0x277D2A418])
    {
      v38 = 28;
      goto LABEL_5;
    }

    if (v37 == *MEMORY[0x277D2A438] || v37 == *MEMORY[0x277D2A3C8])
    {
LABEL_9:
      v41 = OUTLINED_FUNCTION_8();
      v42(v41);
      goto LABEL_6;
    }

    if (v37 == *MEMORY[0x277D2A428])
    {
      v38 = 67;
      goto LABEL_5;
    }

    if (v37 == *MEMORY[0x277D2A388] || v37 == *MEMORY[0x277D2A408])
    {
      v38 = 45;
      goto LABEL_5;
    }

    if (v37 == *MEMORY[0x277D2A3B0])
    {
      v38 = 162;
      goto LABEL_5;
    }

    if (v37 == *MEMORY[0x277D2A3B8])
    {
      v38 = 163;
      goto LABEL_5;
    }

    if (v37 == *MEMORY[0x277D2A440])
    {
      v38 = 205;
      goto LABEL_5;
    }

    if (v37 == *MEMORY[0x277D2A450])
    {
      v38 = 221;
      goto LABEL_5;
    }

    if (v37 == *MEMORY[0x277D2A3C0])
    {
      v38 = 227;
      goto LABEL_5;
    }

    if (v37 == *MEMORY[0x277D2A3D0])
    {
      v38 = 329;
      goto LABEL_5;
    }

    if (v37 == *MEMORY[0x277D2A3F8])
    {
      v38 = 336;
      goto LABEL_5;
    }

    if (v37 != *MEMORY[0x277D2A430])
    {
      if (v37 == *MEMORY[0x277D2A458])
      {
        v38 = 346;
        goto LABEL_5;
      }

      if (v37 != *MEMORY[0x277D2A448] && v37 == *MEMORY[0x277D2A420])
      {
        v38 = 347;
        goto LABEL_5;
      }

      goto LABEL_9;
    }

    v43 = OUTLINED_FUNCTION_8();
    v44(v43);
    (*(v70 + 32))(v69, v34, v71);
    sub_21700C584();
    v45 = sub_21700C574();
    OUTLINED_FUNCTION_31_2(v13, 1, v45);
    if (v57)
    {
      v46 = &qword_27CAC9E68;
      v47 = v13;
    }

    else
    {
      v48 = *(v45 - 8);
      if ((*(*(v45 - 8) + 88))(v13, v45) != *MEMORY[0x277D2B260])
      {
        (*(v48 + 8))(v13, v45);
        goto LABEL_46;
      }

      (*(v48 + 96))(v13, v45);
      sub_2167A4788();
      v49 = v67;
      (*(v66 + 104))(v22, *MEMORY[0x277D2B248], v67);
      OUTLINED_FUNCTION_41();
      __swift_storeEnumTagSinglePayload(v50, v51, v52, v49);
      v53 = *(v7 + 48);
      v54 = v68;
      sub_2166A6EA4();
      sub_2166A6EA4();
      OUTLINED_FUNCTION_31_2(v54, 1, v49);
      if (v57)
      {
        OUTLINED_FUNCTION_30_46(v22);
        OUTLINED_FUNCTION_30_46(v24);
        OUTLINED_FUNCTION_31_2(v68 + v53, 1, v67);
        if (v57)
        {
          sub_216697664(v68, &qword_27CAC9E70);
LABEL_53:
          v55 = 220;
          goto LABEL_47;
        }
      }

      else
      {
        v56 = v68;
        sub_2166A6EA4();
        OUTLINED_FUNCTION_31_2(v56 + v53, 1, v67);
        if (!v57)
        {
          v58 = v66;
          v59 = v67;
          v60 = v68;
          (*(v66 + 32))(v6, v68 + v53, v67);
          OUTLINED_FUNCTION_7_103();
          sub_216E09184(v61, v62);
          v65 = sub_21700E494();
          v63 = *(v58 + 8);
          v63(v6, v59);
          OUTLINED_FUNCTION_9_64(v22);
          OUTLINED_FUNCTION_9_64(v24);
          v63(v18, v59);
          OUTLINED_FUNCTION_9_64(v60);
          if (v65)
          {
            goto LABEL_53;
          }

LABEL_46:
          v55 = 222;
LABEL_47:
          sub_216983738(v55);
          (*(v70 + 8))(v69, v71);
          goto LABEL_6;
        }

        OUTLINED_FUNCTION_30_46(v22);
        OUTLINED_FUNCTION_30_46(v24);
        (*(v66 + 8))(v18, v67);
      }

      v46 = &qword_27CAC9E60;
      v47 = v68;
    }

    sub_216697664(v47, v46);
    goto LABEL_46;
  }

  v38 = 16;
LABEL_5:
  sub_216983738(v38);
  v39 = OUTLINED_FUNCTION_8();
  v40(v39);
LABEL_6:
  OUTLINED_FUNCTION_26();
}

void sub_216DF8148()
{
  OUTLINED_FUNCTION_49();
  v84 = v0;
  sub_2170060D4();
  OUTLINED_FUNCTION_1();
  v80 = v3;
  v81 = v2;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_6_0();
  v79 = v4;
  OUTLINED_FUNCTION_4_1();
  sub_2170060F4();
  OUTLINED_FUNCTION_1();
  v75 = v6;
  v76 = v5;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_6_0();
  v74 = v7;
  OUTLINED_FUNCTION_4_1();
  sub_2170060B4();
  OUTLINED_FUNCTION_1();
  v71 = v9;
  v72 = v8;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_6_0();
  v69 = v10;
  OUTLINED_FUNCTION_4_1();
  sub_217006104();
  OUTLINED_FUNCTION_1();
  v77 = v12;
  v78 = v11;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_77();
  v15 = v13 - v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_6_4();
  v68 = v17;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_6_4();
  v70 = v19;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v20);
  v73 = &v66 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9E98);
  OUTLINED_FUNCTION_36(v22);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_18_62();
  sub_2170061E4();
  OUTLINED_FUNCTION_1();
  v82 = v25;
  v83 = v24;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_77();
  v28 = v26 - v27;
  MEMORY[0x28223BE20](v29);
  v31 = &v66 - v30;
  OUTLINED_FUNCTION_4_1();
  v32 = sub_21700C644();
  OUTLINED_FUNCTION_1();
  v34 = v33;
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_7();
  v38 = v37 - v36;
  v39 = sub_2170067A4();
  OUTLINED_FUNCTION_1();
  v41 = v40;
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_7();
  v45 = v44 - v43;
  (*(v41 + 16))(v44 - v43, v84, v39);
  v46 = OUTLINED_FUNCTION_1248();
  if (v47(v46) == *MEMORY[0x277D2A430])
  {
    v48 = OUTLINED_FUNCTION_1248();
    v49(v48);
    (*(v34 + 32))(v38, v45, v32);
    sub_21700C5B4();
    v50 = sub_21700C5A4();
    OUTLINED_FUNCTION_31_2(v1, 1, v50);
    if (v51)
    {
      (*(v34 + 8))(v38, v32);
      sub_216697664(v1, &qword_27CAC9E98);
    }

    else
    {
      sub_21700C594();
      (*(*(v50 - 8) + 8))(v1, v50);
      v54 = *(v82 + 32);
      v67 = v31;
      v55 = v54(v31, v28, v83);
      MEMORY[0x21CE96670](v55);
      v56 = v69;
      sub_2170060A4();
      v57 = v68;
      sub_217006074();
      (*(v71 + 8))(v56, v72);
      v58 = *(v77 + 8);
      v59 = v15;
      v60 = v78;
      v58(v59, v78);
      v61 = v74;
      sub_2170060E4();
      v62 = v70;
      sub_217006094();
      (*(v75 + 8))(v61, v76);
      v58(v57, v60);
      v63 = v79;
      sub_2170060C4();
      v64 = v73;
      sub_217006084();
      (*(v80 + 8))(v63, v81);
      v58(v62, v60);
      sub_216E09184(&qword_27CAB7500, MEMORY[0x277CC9428]);
      v65 = v67;
      sub_2170061C4();
      v58(v64, v60);
      (*(v82 + 8))(v65, v83);
      (*(v34 + 8))(v38, v32);
    }
  }

  else
  {
    v52 = OUTLINED_FUNCTION_1248();
    v53(v52);
  }

  OUTLINED_FUNCTION_26();
}

void sub_216DF87BC()
{
  OUTLINED_FUNCTION_49();
  v93 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9E30);
  OUTLINED_FUNCTION_36(v4);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_18_62();
  v90 = sub_217006B84();
  OUTLINED_FUNCTION_1();
  v88 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_7();
  v10 = v9 - v8;
  sub_21700BA44();
  OUTLINED_FUNCTION_1();
  v86 = v12;
  v87 = v11;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_6_0();
  v85 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7530);
  OUTLINED_FUNCTION_36(v14);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_105();
  v92 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF770);
  v18 = OUTLINED_FUNCTION_36(v17);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_77();
  v89 = v19 - v20;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_6_4();
  v91 = v22;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v23);
  v25 = &v84 - v24;
  v26 = sub_21700C924();
  OUTLINED_FUNCTION_1();
  v84 = v27;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_7();
  v31 = v30 - v29;
  v32 = sub_2170067A4();
  OUTLINED_FUNCTION_1();
  v34 = v33;
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_7();
  v38 = v37 - v36;
  (*(v34 + 16))(v37 - v36, v1, v32);
  v39 = OUTLINED_FUNCTION_115();
  v41 = v40(v39);
  if (v41 == *MEMORY[0x277D2A3B0])
  {
    v42 = OUTLINED_FUNCTION_115();
    v43(v42);
    v44 = v88;
    OUTLINED_FUNCTION_15_67();
    v45 = v90;
    v46(v10, v38, v90);
    sub_217006B44();
    sub_216CE0E40();

    v47 = sub_217007344();
    OUTLINED_FUNCTION_31_2(v2, 1, v47);
    v48 = v44;
    if (v65)
    {
      sub_216697664(v2, &qword_27CAC9E30);
      v64 = sub_21700C4B4();
      v63 = v89;
      __swift_storeEnumTagSinglePayload(v89, 1, 1, v64);
      v49 = v91;
    }

    else
    {
      v63 = v89;
      sub_217007334();
      (*(*(v47 - 8) + 8))(v2, v47);
      v64 = sub_21700C4B4();
      OUTLINED_FUNCTION_31_2(v63, 1, v64);
      v49 = v91;
      if (!v65)
      {
        (*(*(v64 - 8) + 32))(v91, v63, v64);
        OUTLINED_FUNCTION_41();
        __swift_storeEnumTagSinglePayload(v75, v76, v77, v64);
LABEL_13:
        v78 = sub_21700C444();
        OUTLINED_FUNCTION_31_46(v78);
        sub_216C7CDA8(v49, v64, v79);
        (*(v48 + 8))(v10, v45);
        goto LABEL_14;
      }
    }

    sub_217006B64();
    sub_21700C4B4();
    OUTLINED_FUNCTION_31_2(v63, 1, v64);
    if (!v65)
    {
      sub_216697664(v63, &qword_27CABF770);
    }

    goto LABEL_13;
  }

  if (v41 == *MEMORY[0x277D2A3B8])
  {
    v50 = OUTLINED_FUNCTION_115();
    v51(v50);
    v53 = v85;
    v52 = v86;
    OUTLINED_FUNCTION_23_50();
    v54 = v87;
    v55(v53, v38, v87);
    sub_21700BA34();
    sub_21700C424();
    sub_21700C444();
    OUTLINED_FUNCTION_41();
    __swift_storeEnumTagSinglePayload(v56, v57, v58, v59);
    v60 = OUTLINED_FUNCTION_1248();
    sub_216C7CDA8(v60, v61, v62);
    (*(v52 + 8))(v53, v54);
  }

  else if (v41 == *MEMORY[0x277D2A440])
  {
    v66 = OUTLINED_FUNCTION_115();
    v67(v66);
    v68 = v84;
    OUTLINED_FUNCTION_15_67();
    v69(v31, v38, v26);
    sub_21700C8F4();
    v70 = v92;
    sub_21700C3F4();
    sub_21700C444();
    OUTLINED_FUNCTION_41();
    __swift_storeEnumTagSinglePayload(v71, v72, v73, v74);
    sub_216C7CDA8(v25, v70, v93);
    (*(v68 + 8))(v31, v26);
  }

  else
  {
    sub_217006794();
    v80 = sub_21700C444();
    OUTLINED_FUNCTION_31_46(v80);
    sub_216C7CDA8(v25, v0, v81);
    v82 = OUTLINED_FUNCTION_115();
    v83(v82);
  }

LABEL_14:
  OUTLINED_FUNCTION_26();
}

uint64_t sub_216DF8E2C(uint64_t a1, uint64_t a2)
{
  v42 = a2;
  v43 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9E80);
  MEMORY[0x28223BE20](v2 - 8);
  v39 = &v36 - v3;
  v4 = sub_217005B54();
  v40 = *(v4 - 8);
  v41 = v4;
  MEMORY[0x28223BE20](v4);
  v38 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9E88);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v36 - v7;
  v9 = sub_217006284();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_217006304();
  v36 = *(v13 - 8);
  v37 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74E8);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v36 - v17;
  v19 = sub_2170061E4();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v36 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = v23;
  sub_2166A6EA4();
  if (__swift_getEnumTagSinglePayload(v18, 1, v24) == 1)
  {
    sub_216697664(v18, &qword_27CAB74E8);
    return 0;
  }

  (*(v20 + 32))(v22, v18, v24);
  (*(v10 + 104))(v12, *MEMORY[0x277CC9830], v9);
  sub_217006294();
  (*(v10 + 8))(v12, v9);
  sub_217006324();
  v26 = sub_217006344();
  result = __swift_getEnumTagSinglePayload(v8, 1, v26);
  if (result != 1)
  {
    sub_2170062E4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC50F8);
    v28 = sub_2170062F4();
    v29 = *(v28 - 8);
    v30 = (*(v29 + 80) + 32) & ~*(v29 + 80);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_217013DA0;
    (*(v29 + 104))(v31 + v30, *MEMORY[0x277CC9988], v28);
    sub_216F0FA7C(v31);
    v32 = v38;
    sub_2170062C4();

    v34 = v36;
    v33 = v37;
    v35 = v39;
    (*(v36 + 16))(v39, v15, v37);
    __swift_storeEnumTagSinglePayload(v35, 0, 1, v33);
    sub_217005B44();
    v25 = sub_216E08CA8();
    (*(v40 + 8))(v32, v41);
    (*(v34 + 8))(v15, v33);
    (*(v20 + 8))(v22, v24);
    return v25;
  }

  __break(1u);
  return result;
}

uint64_t sub_216DF93CC@<X0>(uint64_t *a1@<X8>)
{
  v861 = a1;
  v758 = sub_217007264();
  v757 = *(v758 - 8);
  MEMORY[0x28223BE20](v758);
  v759 = &v749 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v770 = sub_217006FE4();
  v769 = *(v770 - 8);
  MEMORY[0x28223BE20](v770);
  v771 = &v749 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v778 = sub_21700BEA4();
  v777 = *(v778 - 8);
  MEMORY[0x28223BE20](v778);
  v779 = &v749 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v787 = sub_21700C994();
  v786 = *(v787 - 8);
  MEMORY[0x28223BE20](v787);
  v788 = &v749 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v792 = sub_21700C924();
  v791 = *(v792 - 8);
  MEMORY[0x28223BE20](v792);
  v793 = &v749 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v802 = sub_21700C204();
  v801 = *(v802 - 8);
  v6 = MEMORY[0x28223BE20](v802);
  v800 = &v749 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v799 = &v749 - v8;
  v805 = sub_21700C254();
  v804 = *(v805 - 8);
  MEMORY[0x28223BE20](v805);
  v810 = &v749 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB81B0);
  MEMORY[0x28223BE20](v10 - 8);
  v803 = &v749 - v11;
  v854 = type metadata accessor for FlowAction(0);
  MEMORY[0x28223BE20](v854);
  v815 = &v749 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v821 = sub_217006F54();
  v820 = *(v821 - 8);
  MEMORY[0x28223BE20](v821);
  v819 = &v749 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v818 = sub_21700C514();
  v817 = *(v818 - 8);
  MEMORY[0x28223BE20](v818);
  v816 = &v749 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v825 = sub_21700C554();
  v824 = *(v825 - 8);
  MEMORY[0x28223BE20](v825);
  v829 = &v749 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v843 = type metadata accessor for ContentDescriptor();
  MEMORY[0x28223BE20](v843);
  v833 = &v749 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v832 = type metadata accessor for ArtistDetailPageIntent();
  MEMORY[0x28223BE20](v832);
  v834 = &v749 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v841 = sub_21700C384();
  v840 = *(v841 - 8);
  MEMORY[0x28223BE20](v841);
  v842 = &v749 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v850 = sub_217006224();
  v851 = *(v850 - 8);
  MEMORY[0x28223BE20](v850);
  v849 = &v749 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v848 = type metadata accessor for FlowAction.Destination(0);
  v20 = MEMORY[0x28223BE20](v848);
  v752 = &v749 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v785 = &v749 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v826 = (&v749 - v25);
  v26 = MEMORY[0x28223BE20](v24);
  v835 = (&v749 - v27);
  MEMORY[0x28223BE20](v26);
  v29 = &v749 - v28;
  v846 = sub_21700CFB4();
  v847 = *(v846 - 8);
  MEMORY[0x28223BE20](v846);
  v845 = &v749 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v862 = sub_217005EF4();
  v836 = *(v862 - 8);
  v31 = MEMORY[0x28223BE20](v862);
  v751 = &v749 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v31);
  v760 = &v749 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v763 = &v749 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v768 = &v749 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v776 = &v749 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v790 = &v749 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v797 = &v749 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v807 = &v749 - v46;
  v47 = MEMORY[0x28223BE20](v45);
  v830 = &v749 - v48;
  MEMORY[0x28223BE20](v47);
  v831 = &v749 - v49;
  v853 = sub_21700D704();
  v852 = *(v853 - 8);
  v50 = MEMORY[0x28223BE20](v853);
  v756 = &v749 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = MEMORY[0x28223BE20](v50);
  v767 = &v749 - v53;
  v54 = MEMORY[0x28223BE20](v52);
  v774 = &v749 - v55;
  v56 = MEMORY[0x28223BE20](v54);
  v783 = &v749 - v57;
  v58 = MEMORY[0x28223BE20](v56);
  v784 = &v749 - v59;
  v60 = MEMORY[0x28223BE20](v58);
  v798 = &v749 - v61;
  v62 = MEMORY[0x28223BE20](v60);
  v813 = &v749 - v63;
  v64 = MEMORY[0x28223BE20](v62);
  v823 = &v749 - v65;
  v66 = MEMORY[0x28223BE20](v64);
  v68 = &v749 - v67;
  v69 = MEMORY[0x28223BE20](v66);
  v844 = &v749 - v70;
  MEMORY[0x28223BE20](v69);
  v859 = &v749 - v71;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820);
  v73 = MEMORY[0x28223BE20](v72 - 8);
  v753 = &v749 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = MEMORY[0x28223BE20](v73);
  v754 = &v749 - v76;
  v77 = MEMORY[0x28223BE20](v75);
  v761 = &v749 - v78;
  v79 = MEMORY[0x28223BE20](v77);
  v765 = &v749 - v80;
  v81 = MEMORY[0x28223BE20](v79);
  v764 = &v749 - v82;
  v83 = MEMORY[0x28223BE20](v81);
  v773 = &v749 - v84;
  v85 = MEMORY[0x28223BE20](v83);
  v772 = &v749 - v86;
  v87 = MEMORY[0x28223BE20](v85);
  v782 = &v749 - v88;
  v89 = MEMORY[0x28223BE20](v87);
  v780 = &v749 - v90;
  v91 = MEMORY[0x28223BE20](v89);
  v781 = &v749 - v92;
  v93 = MEMORY[0x28223BE20](v91);
  v794 = &v749 - v94;
  v95 = MEMORY[0x28223BE20](v93);
  v796 = &v749 - v96;
  v97 = MEMORY[0x28223BE20](v95);
  v808 = &v749 - v98;
  v99 = MEMORY[0x28223BE20](v97);
  v809 = &v749 - v100;
  v101 = MEMORY[0x28223BE20](v99);
  v806 = &v749 - v102;
  v103 = MEMORY[0x28223BE20](v101);
  v812 = &v749 - v104;
  v105 = MEMORY[0x28223BE20](v103);
  v811 = &v749 - v106;
  v107 = MEMORY[0x28223BE20](v105);
  v822 = &v749 - v108;
  v109 = MEMORY[0x28223BE20](v107);
  v111 = &v749 - v110;
  v112 = MEMORY[0x28223BE20](v109);
  v837 = &v749 - v113;
  v114 = MEMORY[0x28223BE20](v112);
  v116 = &v749 - v115;
  MEMORY[0x28223BE20](v114);
  v857 = &v749 - v117;
  v118 = sub_21700D284();
  v119 = *(v118 - 8);
  v855 = v118;
  v856 = v119;
  v120 = MEMORY[0x28223BE20](v118);
  v755 = &v749 - ((v121 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = MEMORY[0x28223BE20](v120);
  v762 = &v749 - v123;
  v124 = MEMORY[0x28223BE20](v122);
  v766 = &v749 - v125;
  v126 = MEMORY[0x28223BE20](v124);
  v775 = &v749 - v127;
  v128 = MEMORY[0x28223BE20](v126);
  v789 = &v749 - v129;
  v130 = MEMORY[0x28223BE20](v128);
  v795 = &v749 - v131;
  v132 = MEMORY[0x28223BE20](v130);
  v814 = &v749 - v133;
  v134 = MEMORY[0x28223BE20](v132);
  v828 = &v749 - v135;
  v136 = MEMORY[0x28223BE20](v134);
  v827 = &v749 - v137;
  v138 = MEMORY[0x28223BE20](v136);
  v839 = &v749 - v139;
  MEMORY[0x28223BE20](v138);
  v858 = &v749 - v140;
  v141 = sub_21700C1E4();
  v142 = *(v141 - 8);
  MEMORY[0x28223BE20](v141);
  v144 = &v749 - ((v143 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = sub_2170067A4();
  v146 = *(v145 - 8);
  MEMORY[0x28223BE20](v145);
  v148 = &v749 - ((v147 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v146 + 16))(v148, v860, v145);
  v149 = (*(v146 + 88))(v148, v145);
  if (v149 == *MEMORY[0x277D2A400])
  {
    (*(v146 + 96))(v148, v145);
    (*(v142 + 32))(v144, v148, v141);
    v150 = sub_21700C0B4();
    v860 = v141;
    v152 = v144;
    if (v151)
    {
      v153 = v151;
      v842 = v150;
    }

    else
    {
      v842 = sub_21700C164();
      v153 = v160;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810);
    v161 = swift_allocObject();
    *(v161 + 16) = xmmword_217015230;
    *(v161 + 32) = 1684957547;
    *(v161 + 40) = 0xE400000000000000;
    v162 = MEMORY[0x277D837D0];
    *(v161 + 48) = 0x6D75626C61;
    *(v161 + 56) = 0xE500000000000000;
    *(v161 + 72) = v162;
    strcpy((v161 + 80), "lyricSnippet");
    *(v161 + 93) = 0;
    *(v161 + 94) = -5120;
    *(v161 + 96) = 0;
    *(v161 + 104) = 0xE000000000000000;
    *(v161 + 120) = v162;
    *(v161 + 128) = 0x614E747369747261;
    *(v161 + 136) = 0xEA0000000000656DLL;
    v163 = sub_21700C0C4();
    *(v161 + 168) = v162;
    *(v161 + 144) = v163;
    *(v161 + 152) = v164;
    v165 = sub_21700E384();
    v166 = v862;
    __swift_storeEnumTagSinglePayload(v857, 1, 1, v862);
    sub_21700D6F4();
    *(&v864 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20);
    *&v863 = v165;
    sub_2166EF9C4(&v863, &v867);
    v167 = MEMORY[0x277D84F98];
    swift_isUniquelyReferenced_nonNull_native();
    v866 = v167;
    sub_2166EF9D4();
    v168 = v866;
    *(&v864 + 1) = v162;
    *&v863 = 0x657461676976616ELL;
    *(&v863 + 1) = 0xE800000000000000;
    sub_2166EF9C4(&v863, &v867);
    swift_isUniquelyReferenced_nonNull_native();
    v866 = v168;
    sub_2166EF9D4();
    v169 = v866;
    *(&v864 + 1) = v162;
    strcpy(&v863, "album_detail");
    BYTE13(v863) = 0;
    HIWORD(v863) = -5120;
    sub_2166EF9C4(&v863, &v867);
    swift_isUniquelyReferenced_nonNull_native();
    v866 = v169;
    sub_2166EF9D4();
    v170 = v866;
    sub_2166A6EA4();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v116, 1, v166);
    v750 = v142;
    v838 = v152;
    if (EnumTagSinglePayload == 1)
    {
      sub_216697664(v116, &qword_27CABA820);
    }

    else
    {
      v172 = v836;
      v173 = v831;
      (*(v836 + 32))(v831, v116, v166);
      v174 = sub_217005DE4();
      *(&v864 + 1) = v162;
      *&v863 = v174;
      *(&v863 + 1) = v175;
      sub_2166EF9C4(&v863, &v867);
      swift_isUniquelyReferenced_nonNull_native();
      v866 = v170;
      sub_2166EF9D4();
      v170 = v866;
      (*(v172 + 8))(v173, v166);
    }

    v176 = v854;
    v177 = v852;
    if (qword_280E46040 != -1)
    {
      swift_once();
    }

    v178 = sub_21700CF84();
    v179 = __swift_project_value_buffer(v178, qword_280E73DB0);
    v180 = v845;
    MEMORY[0x21CE9DD70](v842, v153, 0x4C746E65746E6F43, 0xEF6D657449747369, v170, v179);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E20);
    v181 = v847;
    v182 = (*(v847 + 80) + 32) & ~*(v847 + 80);
    v183 = swift_allocObject();
    *(v183 + 16) = xmmword_217013DA0;
    v184 = v183 + v182;
    v185 = v846;
    (*(v181 + 16))(v184, v180, v846);
    v186 = v177;
    v187 = *(v177 + 16);
    v188 = v859;
    v189 = v853;
    v187(v844, v859, v853);
    sub_21700D244();
    (*(v181 + 8))(v180, v185);
    (*(v186 + 8))(v188, v189);
    sub_216697664(v857, &qword_27CABA820);
    v190 = sub_21700C0B4();
    if (!v191)
    {
      v190 = sub_21700C164();
    }

    v192 = v190;
    v193 = v191;
    v194 = v862;
    v195 = &v29[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB80F0) + 48)];
    LOBYTE(v867) = 1;
    __swift_storeEnumTagSinglePayload(&v29[*(v843 + 24)], 1, 1, v194);
    *v29 = 4;
    *(v29 + 8) = 0u;
    *(v29 + 24) = 0u;
    *(v29 + 40) = 0u;
    *(v29 + 56) = 0u;
    *(v29 + 72) = 0u;
    *(v29 + 11) = v192;
    *(v29 + 12) = v193;
    *(v29 + 13) = 0;
    v29[112] = 1;
    *v195 = 0;
    *(v195 + 1) = 0;
    swift_storeEnumTagMultiPayload();
    v865 = 0;
    v863 = 0u;
    v864 = 0u;
    v196 = v861;
    v861[3] = v176;
    v196[4] = sub_216E09184(qword_280E45BB8, type metadata accessor for FlowAction);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v196);
    __swift_storeEnumTagSinglePayload(boxed_opaque_existential_1 + v176[8], 1, 1, v194);
    v198 = v176[11];
    v199 = type metadata accessor for Page.Header(0);
    __swift_storeEnumTagSinglePayload(boxed_opaque_existential_1 + v198, 1, 1, v199);
    v200 = v176[9];
    v201 = type metadata accessor for ReferrerInfo();
    __swift_storeEnumTagSinglePayload(boxed_opaque_existential_1 + v200, 1, 1, v201);
    v202 = boxed_opaque_existential_1 + v176[10];
    *(v202 + 32) = 0;
    *v202 = 0u;
    *(v202 + 16) = 0u;
    v204 = v855;
    v203 = v856;
    v205 = v858;
    (*(v856 + 16))(boxed_opaque_existential_1, v858, v855);
    sub_216E0907C();
    v206 = v849;
    sub_217006214();
    v207 = sub_2170061F4();
    v862 = v208;
    (*(v851 + 8))(v206, v850);
    sub_216E090D4(v29, type metadata accessor for FlowAction.Destination);
    (*(v203 + 8))(v205, v204);
    v209 = (boxed_opaque_existential_1 + v176[6]);
    v210 = v862;
    *v209 = v207;
    v209[1] = v210;
    *(boxed_opaque_existential_1 + v176[7]) = 0;
    sub_2167A66B4(&v863, v202);
    return (*(v750 + 8))(v838, v860);
  }

  if (v149 == *MEMORY[0x277D2A418])
  {
    (*(v146 + 96))(v148, v145);
    (*(v840 + 32))(v842, v148, v841);
    v154 = sub_21700C324();
    if (v155)
    {
      v156 = v155;
      v157 = v154;
    }

    else
    {
      v157 = sub_21700C344();
      v156 = v211;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810);
    v212 = swift_allocObject();
    *(v212 + 16) = xmmword_217015230;
    *(v212 + 32) = 1684957547;
    *(v212 + 40) = 0xE400000000000000;
    v213 = MEMORY[0x277D837D0];
    *(v212 + 48) = 0x747369747261;
    *(v212 + 56) = 0xE600000000000000;
    *(v212 + 72) = v213;
    strcpy((v212 + 80), "lyricSnippet");
    *(v212 + 93) = 0;
    *(v212 + 94) = -5120;
    *(v212 + 96) = 0;
    *(v212 + 104) = 0xE000000000000000;
    *(v212 + 120) = v213;
    *(v212 + 128) = 0x614E747369747261;
    *(v212 + 136) = 0xEA0000000000656DLL;
    v214 = sub_21700C364();
    *(v212 + 168) = v213;
    *(v212 + 144) = v214;
    *(v212 + 152) = v215;
    v216 = sub_21700E384();
    v217 = v862;
    __swift_storeEnumTagSinglePayload(v837, 1, 1, v862);
    sub_21700D6F4();
    *(&v864 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20);
    *&v863 = v216;
    sub_2166EF9C4(&v863, &v867);
    v218 = MEMORY[0x277D84F98];
    swift_isUniquelyReferenced_nonNull_native();
    v866 = v218;
    sub_2166EF9D4();
    v219 = v866;
    *(&v864 + 1) = v213;
    *&v863 = 0x657461676976616ELL;
    *(&v863 + 1) = 0xE800000000000000;
    sub_2166EF9C4(&v863, &v867);
    swift_isUniquelyReferenced_nonNull_native();
    v866 = v219;
    sub_2166EF9D4();
    v220 = v866;
    *(&v864 + 1) = v213;
    strcpy(&v863, "artist_detail");
    HIWORD(v863) = -4864;
    sub_2166EF9C4(&v863, &v867);
    swift_isUniquelyReferenced_nonNull_native();
    v866 = v220;
    sub_2166EF9D4();
    v221 = v866;
    sub_2166A6EA4();
    if (__swift_getEnumTagSinglePayload(v111, 1, v217) == 1)
    {
      sub_216697664(v111, &qword_27CABA820);
    }

    else
    {
      v222 = v836;
      v223 = v830;
      (*(v836 + 32))(v830, v111, v217);
      v224 = sub_217005DE4();
      *(&v864 + 1) = v213;
      *&v863 = v224;
      *(&v863 + 1) = v225;
      sub_2166EF9C4(&v863, &v867);
      swift_isUniquelyReferenced_nonNull_native();
      v866 = v221;
      sub_2166EF9D4();
      v221 = v866;
      (*(v222 + 8))(v223, v217);
    }

    if (qword_280E46040 != -1)
    {
      swift_once();
    }

    v226 = sub_21700CF84();
    v227 = __swift_project_value_buffer(v226, qword_280E73DB0);
    v228 = v845;
    MEMORY[0x21CE9DD70](v157, v156, 0x4C746E65746E6F43, 0xEF6D657449747369, v221, v227);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E20);
    v229 = v847;
    v230 = (*(v847 + 80) + 32) & ~*(v847 + 80);
    v231 = swift_allocObject();
    *(v231 + 16) = xmmword_217013DA0;
    v232 = v231 + v230;
    v233 = v846;
    (*(v229 + 16))(v232, v228, v846);
    v234 = v852;
    v235 = v853;
    (*(v852 + 16))(v844, v68, v853);
    sub_21700D244();
    (*(v229 + 8))(v228, v233);
    (*(v234 + 8))(v68, v235);
    sub_216697664(v837, &qword_27CABA820);
    v236 = sub_21700C324();
    if (!v237)
    {
      v236 = sub_21700C344();
    }

    v238 = v236;
    v239 = v237;
    v240 = v861;
    v241 = v862;
    LOBYTE(v867) = 1;
    v242 = v833;
    __swift_storeEnumTagSinglePayload(&v833[*(v843 + 24)], 1, 1, v862);
    *v242 = 5;
    *(v242 + 8) = 0u;
    *(v242 + 24) = 0u;
    *(v242 + 40) = 0u;
    *(v242 + 56) = 0u;
    *(v242 + 72) = 0u;
    *(v242 + 11) = v238;
    *(v242 + 12) = v239;
    *(v242 + 13) = 0;
    v242[112] = 1;
    v243 = v832;
    v244 = *(v832 + 20);
    v245 = type metadata accessor for ReferrerInfo();
    __swift_storeEnumTagSinglePayload(&v834[v244], 1, 1, v245);
    sub_216E0912C();
    v246 = v835;
    v835[3] = v243;
    v246[4] = sub_216E09184(&qword_27CAC3E48, type metadata accessor for ArtistDetailPageIntent);
    __swift_allocate_boxed_opaque_existential_1(v246);
    sub_216E0912C();
    swift_storeEnumTagMultiPayload();
    v865 = 0;
    v863 = 0u;
    v864 = 0u;
    v247 = v854;
    v240[3] = v854;
    v240[4] = sub_216E09184(qword_280E45BB8, type metadata accessor for FlowAction);
    v248 = __swift_allocate_boxed_opaque_existential_1(v240);
    __swift_storeEnumTagSinglePayload(v248 + v247[8], 1, 1, v241);
    v249 = v247[11];
    v250 = type metadata accessor for Page.Header(0);
    __swift_storeEnumTagSinglePayload(v248 + v249, 1, 1, v250);
    __swift_storeEnumTagSinglePayload(v248 + v247[9], 1, 1, v245);
    v251 = v248 + v247[10];
    *(v251 + 32) = 0;
    *v251 = 0u;
    *(v251 + 16) = 0u;
    v252 = v855;
    v253 = v856;
    v254 = v839;
    (*(v856 + 16))(v248, v839, v855);
    sub_216E0907C();
    v255 = v849;
    sub_217006214();
    v256 = sub_2170061F4();
    v862 = v257;
    (*(v851 + 8))(v255, v850);
    (*(v253 + 8))(v254, v252);
    sub_216E090D4(v246, type metadata accessor for FlowAction.Destination);
    v258 = (v248 + v247[6]);
    v259 = v862;
    *v258 = v256;
    v258[1] = v259;
    *(v248 + v247[7]) = 0;
    sub_2167A66B4(&v863, v251);
    v260 = *(v840 + 8);
    v261 = v842;
    v262 = &v868;
    return v260(v261, *(v262 - 32));
  }

  if (v149 == *MEMORY[0x277D2A438] || v149 == *MEMORY[0x277D2A3C8])
  {
    goto LABEL_9;
  }

  if (v149 == *MEMORY[0x277D2A428])
  {
    v263 = v836;
    (*(v146 + 96))(v148, v145);
    (*(v824 + 32))(v829, v148, v825);
    v264 = sub_21700C4E4();
    v266 = v265;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810);
    v267 = swift_allocObject();
    *(v267 + 16) = xmmword_217015230;
    v268 = MEMORY[0x277D837D0];
    *(v267 + 32) = 1684957547;
    *(v267 + 40) = 0xE400000000000000;
    *(v267 + 48) = 0x726F7461727563;
    *(v267 + 56) = 0xE700000000000000;
    *(v267 + 72) = v268;
    strcpy((v267 + 80), "lyricSnippet");
    *(v267 + 93) = 0;
    *(v267 + 94) = -5120;
    *(v267 + 96) = 0;
    *(v267 + 104) = 0xE000000000000000;
    *(v267 + 120) = v268;
    *(v267 + 128) = 0x614E747369747261;
    *(v267 + 168) = v268;
    *(v267 + 136) = 0xEA0000000000656DLL;
    *(v267 + 144) = 16718;
    *(v267 + 152) = 0xE200000000000000;
    v269 = sub_21700E384();
    v270 = v862;
    __swift_storeEnumTagSinglePayload(v822, 1, 1, v862);
    sub_21700D6F4();
    *(&v864 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20);
    *&v863 = v269;
    sub_2166EF9C4(&v863, &v867);
    v271 = MEMORY[0x277D84F98];
    swift_isUniquelyReferenced_nonNull_native();
    v866 = v271;
    sub_2166EF9D4();
    v272 = v866;
    *(&v864 + 1) = v268;
    *&v863 = 0x657461676976616ELL;
    *(&v863 + 1) = 0xE800000000000000;
    sub_2166EF9C4(&v863, &v867);
    swift_isUniquelyReferenced_nonNull_native();
    v866 = v272;
    sub_2166EF9D4();
    v273 = v866;
    *(&v864 + 1) = v268;
    *&v863 = 0x726F7461727563;
    *(&v863 + 1) = 0xE700000000000000;
    sub_2166EF9C4(&v863, &v867);
    swift_isUniquelyReferenced_nonNull_native();
    v866 = v273;
    sub_2166EF9D4();
    v274 = v866;
    v275 = v811;
    sub_2166A6EA4();
    if (__swift_getEnumTagSinglePayload(v275, 1, v270) == 1)
    {
      sub_216697664(v275, &qword_27CABA820);
    }

    else
    {
      v288 = v263;
      v289 = *(v263 + 32);
      v290 = v807;
      v289(v807, v275, v270);
      v291 = sub_217005DE4();
      *(&v864 + 1) = v268;
      *&v863 = v291;
      *(&v863 + 1) = v292;
      sub_2166EF9C4(&v863, &v867);
      swift_isUniquelyReferenced_nonNull_native();
      v866 = v274;
      sub_2166EF9D4();
      v274 = v866;
      (*(v288 + 8))(v290, v270);
    }

    v293 = v854;
    v294 = v856;
    if (qword_280E46040 != -1)
    {
      swift_once();
    }

    v295 = sub_21700CF84();
    v296 = __swift_project_value_buffer(v295, qword_280E73DB0);
    v297 = v845;
    MEMORY[0x21CE9DD70](v264, v266, 0x4C746E65746E6F43, 0xEF6D657449747369, v274, v296);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E20);
    v298 = v847;
    v299 = (*(v847 + 80) + 32) & ~*(v847 + 80);
    v300 = swift_allocObject();
    *(v300 + 16) = xmmword_217013DA0;
    v301 = v300 + v299;
    v302 = v846;
    (*(v298 + 16))(v301, v297, v846);
    v303 = v852;
    v304 = v823;
    v305 = v853;
    (*(v852 + 16))(v844, v823, v853);
    sub_21700D244();
    (*(v298 + 8))(v297, v302);
    (*(v303 + 8))(v304, v305);
    sub_216697664(v822, &qword_27CABA820);
    v306 = v816;
    sub_21700C524();
    v307 = (*(v817 + 88))(v306, v818);
    if (v307 == *MEMORY[0x277CD8490])
    {
      v860 = *(v294 + 16);
      v860(v828, v827, v855);
      v308 = sub_21700C4E4();
      v310 = v309;
      LOBYTE(v863) = 1;
      v311 = type metadata accessor for AppleCuratorDetailPageIntent();
      v312 = v826;
      v826[3] = v311;
      v312[4] = sub_216E09184(&qword_27CAB94B8, type metadata accessor for AppleCuratorDetailPageIntent);
      v313 = __swift_allocate_boxed_opaque_existential_1(v312);
      v314 = v862;
      __swift_storeEnumTagSinglePayload(v313 + *(v843 + 24), 1, 1, v862);
      *v313 = 2;
      *(v313 + 1) = 0u;
      *(v313 + 3) = 0u;
      *(v313 + 5) = 0u;
      *(v313 + 7) = 0u;
      *(v313 + 9) = 0u;
      v313[11] = v308;
      v313[12] = v310;
      v313[13] = 0;
      *(v313 + 112) = 1;
      v315 = *(v311 + 20);
      v316 = type metadata accessor for ReferrerInfo();
      __swift_storeEnumTagSinglePayload(v313 + v315, 1, 1, v316);
      swift_storeEnumTagMultiPayload();
      v865 = 0;
      v863 = 0u;
      v864 = 0u;
      v317 = v861;
      v861[3] = v293;
      v317[4] = sub_216E09184(qword_280E45BB8, type metadata accessor for FlowAction);
      v318 = __swift_allocate_boxed_opaque_existential_1(v317);
      __swift_storeEnumTagSinglePayload(v318 + v293[8], 1, 1, v314);
      v319 = v293[11];
      v320 = type metadata accessor for Page.Header(0);
      __swift_storeEnumTagSinglePayload(v318 + v319, 1, 1, v320);
      __swift_storeEnumTagSinglePayload(v318 + v293[9], 1, 1, v316);
      v321 = v318 + v293[10];
      *(v321 + 32) = 0;
      *v321 = 0u;
      *(v321 + 16) = 0u;
      v322 = v828;
      v323 = v855;
      v860(v318, v828, v855);
      sub_216E0907C();
      v324 = v849;
      sub_217006214();
      v325 = sub_2170061F4();
      v327 = v326;
      (*(v851 + 8))(v324, v850);
      v328 = *(v856 + 8);
      v328(v322, v323);
      sub_216E090D4(v826, type metadata accessor for FlowAction.Destination);
      v329 = (v318 + v293[6]);
      *v329 = v325;
      v329[1] = v327;
      *(v318 + v293[7]) = 0;
      sub_2167A66B4(&v863, v321);
      v328(v827, v323);
    }

    else
    {
      v352 = v307;
      v353 = *MEMORY[0x277CD8488];
      v860 = *(v294 + 16);
      v860(v828, v827, v855);
      v354 = v826;
      if (v352 != v353)
      {
        v438 = sub_21700C4E4();
        v440 = v439;
        LOBYTE(v863) = 1;
        v441 = type metadata accessor for CuratorDetailPageIntent();
        v354[3] = v441;
        v354[4] = sub_216E09184(&qword_27CAB94B0, type metadata accessor for CuratorDetailPageIntent);
        v442 = __swift_allocate_boxed_opaque_existential_1(v354);
        v443 = v862;
        __swift_storeEnumTagSinglePayload(v442 + *(v843 + 24), 1, 1, v862);
        *v442 = 9;
        *(v442 + 1) = 0u;
        *(v442 + 3) = 0u;
        *(v442 + 5) = 0u;
        *(v442 + 7) = 0u;
        *(v442 + 9) = 0u;
        v442[11] = v438;
        v442[12] = v440;
        v442[13] = 0;
        *(v442 + 112) = 1;
        v444 = *(v441 + 20);
        v445 = type metadata accessor for ReferrerInfo();
        __swift_storeEnumTagSinglePayload(v442 + v444, 1, 1, v445);
        swift_storeEnumTagMultiPayload();
        v865 = 0;
        v863 = 0u;
        v864 = 0u;
        v446 = v861;
        v861[3] = v293;
        v446[4] = sub_216E09184(qword_280E45BB8, type metadata accessor for FlowAction);
        v447 = __swift_allocate_boxed_opaque_existential_1(v446);
        __swift_storeEnumTagSinglePayload(v447 + v293[8], 1, 1, v443);
        v448 = v293[11];
        v449 = type metadata accessor for Page.Header(0);
        __swift_storeEnumTagSinglePayload(v447 + v448, 1, 1, v449);
        __swift_storeEnumTagSinglePayload(v447 + v293[9], 1, 1, v445);
        v450 = v447 + v293[10];
        *(v450 + 32) = 0;
        *v450 = 0u;
        *(v450 + 16) = 0u;
        v451 = v828;
        v452 = v855;
        v860(v447, v828, v855);
        sub_216E0907C();
        v453 = v849;
        sub_217006214();
        v454 = sub_2170061F4();
        v456 = v455;
        (*(v851 + 8))(v453, v850);
        v457 = *(v856 + 8);
        v457(v451, v452);
        sub_216E090D4(v826, type metadata accessor for FlowAction.Destination);
        v458 = (v447 + v293[6]);
        *v458 = v454;
        v458[1] = v456;
        *(v447 + v293[7]) = 0;
        sub_2167A66B4(&v863, v450);
        v457(v827, v452);
        (*(v824 + 8))(v829, v825);
        v260 = *(v817 + 8);
        v261 = v816;
        v262 = &v850;
        return v260(v261, *(v262 - 32));
      }

      v355 = sub_21700C4E4();
      v357 = v356;
      LOBYTE(v863) = 1;
      v358 = type metadata accessor for CuratorDetailPageIntent();
      v354[3] = v358;
      v354[4] = sub_216E09184(&qword_27CAB94B0, type metadata accessor for CuratorDetailPageIntent);
      v359 = __swift_allocate_boxed_opaque_existential_1(v354);
      v360 = v862;
      __swift_storeEnumTagSinglePayload(v359 + *(v843 + 24), 1, 1, v862);
      *v359 = 9;
      *(v359 + 1) = 0u;
      *(v359 + 3) = 0u;
      *(v359 + 5) = 0u;
      *(v359 + 7) = 0u;
      *(v359 + 9) = 0u;
      v359[11] = v355;
      v359[12] = v357;
      v359[13] = 0;
      *(v359 + 112) = 1;
      v361 = *(v358 + 20);
      v362 = type metadata accessor for ReferrerInfo();
      __swift_storeEnumTagSinglePayload(v359 + v361, 1, 1, v362);
      swift_storeEnumTagMultiPayload();
      v865 = 0;
      v863 = 0u;
      v864 = 0u;
      v363 = v861;
      v861[3] = v293;
      v363[4] = sub_216E09184(qword_280E45BB8, type metadata accessor for FlowAction);
      v364 = __swift_allocate_boxed_opaque_existential_1(v363);
      __swift_storeEnumTagSinglePayload(v364 + v293[8], 1, 1, v360);
      v365 = v293[11];
      v366 = type metadata accessor for Page.Header(0);
      __swift_storeEnumTagSinglePayload(v364 + v365, 1, 1, v366);
      __swift_storeEnumTagSinglePayload(v364 + v293[9], 1, 1, v362);
      v367 = v364 + v293[10];
      *(v367 + 32) = 0;
      *v367 = 0u;
      *(v367 + 16) = 0u;
      v368 = v828;
      v369 = v855;
      v860(v364, v828, v855);
      v370 = v856;
      sub_216E0907C();
      v371 = v849;
      sub_217006214();
      v372 = sub_2170061F4();
      v374 = v373;
      (*(v851 + 8))(v371, v850);
      v375 = *(v370 + 8);
      v375(v368, v369);
      sub_216E090D4(v826, type metadata accessor for FlowAction.Destination);
      v376 = (v364 + v293[6]);
      *v376 = v372;
      v376[1] = v374;
      *(v364 + v293[7]) = 0;
      sub_2167A66B4(&v863, v367);
      v375(v827, v369);
    }

    v260 = *(v824 + 8);
    v261 = v829;
    v262 = &v857;
    return v260(v261, *(v262 - 32));
  }

  if (v149 != *MEMORY[0x277D2A388])
  {
    if (v149 != *MEMORY[0x277D2A408])
    {
      if (v149 != *MEMORY[0x277D2A3B0] && v149 != *MEMORY[0x277D2A3B8])
      {
        if (v149 == *MEMORY[0x277D2A440])
        {
          (*(v146 + 96))(v148, v145);
          (*(v791 + 32))(v793, v148, v792);
          v423 = sub_21700C764();
          if (!v424)
          {
            v423 = sub_21700C7C4();
          }

          v425 = v423;
          v426 = v424;
          v427 = v784;
          v428 = v781;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810);
          v429 = swift_allocObject();
          *(v429 + 16) = xmmword_217015230;
          v430 = MEMORY[0x277D837D0];
          *(v429 + 32) = 1684957547;
          *(v429 + 40) = 0xE400000000000000;
          *(v429 + 48) = 0x7473696C79616C70;
          *(v429 + 56) = 0xE800000000000000;
          *(v429 + 72) = v430;
          strcpy((v429 + 80), "lyricSnippet");
          *(v429 + 93) = 0;
          *(v429 + 94) = -5120;
          *(v429 + 96) = 0;
          *(v429 + 104) = 0xE000000000000000;
          *(v429 + 120) = v430;
          *(v429 + 128) = 0x614E747369747261;
          *(v429 + 168) = v430;
          *(v429 + 136) = 0xEA0000000000656DLL;
          *(v429 + 144) = 16718;
          *(v429 + 152) = 0xE200000000000000;
          v431 = sub_21700E384();
          v432 = v862;
          __swift_storeEnumTagSinglePayload(v428, 1, 1, v862);
          sub_21700D6F4();
          *(&v864 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20);
          *&v863 = v431;
          sub_2166EF9C4(&v863, &v867);
          v433 = MEMORY[0x277D84F98];
          swift_isUniquelyReferenced_nonNull_native();
          v866 = v433;
          sub_2166EF9D4();
          v434 = v866;
          *(&v864 + 1) = v430;
          *&v863 = 0x657461676976616ELL;
          *(&v863 + 1) = 0xE800000000000000;
          sub_2166EF9C4(&v863, &v867);
          swift_isUniquelyReferenced_nonNull_native();
          v866 = v434;
          sub_2166EF9D4();
          v435 = v866;
          *(&v864 + 1) = v430;
          *&v863 = 0x7473696C79616C70;
          *(&v863 + 1) = 0xEF6C69617465645FLL;
          sub_2166EF9C4(&v863, &v867);
          swift_isUniquelyReferenced_nonNull_native();
          v866 = v435;
          sub_2166EF9D4();
          v436 = v866;
          v437 = v780;
          sub_2166A6EA4();
          if (__swift_getEnumTagSinglePayload(v437, 1, v432) == 1)
          {
            sub_216697664(v437, &qword_27CABA820);
          }

          else
          {
            v521 = v836;
            v522 = v776;
            (*(v836 + 32))(v776, v437, v432);
            v523 = sub_217005DE4();
            *(&v864 + 1) = v430;
            *&v863 = v523;
            *(&v863 + 1) = v524;
            sub_2166EF9C4(&v863, &v867);
            swift_isUniquelyReferenced_nonNull_native();
            v866 = v436;
            sub_2166EF9D4();
            v436 = v866;
            (*(v521 + 8))(v522, v432);
          }

          if (qword_280E46040 != -1)
          {
            swift_once();
          }

          v525 = sub_21700CF84();
          v526 = __swift_project_value_buffer(v525, qword_280E73DB0);
          v527 = v845;
          MEMORY[0x21CE9DD70](v425, v426, 0x4C746E65746E6F43, 0xEF6D657449747369, v436, v526);

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E20);
          v528 = v847;
          v529 = (*(v847 + 80) + 32) & ~*(v847 + 80);
          v530 = swift_allocObject();
          *(v530 + 16) = xmmword_217013DA0;
          v531 = v530 + v529;
          v532 = v846;
          (*(v528 + 16))(v531, v527, v846);
          v533 = v852;
          v534 = v853;
          (*(v852 + 16))(v844, v427, v853);
          sub_21700D244();
          (*(v528 + 8))(v527, v532);
          (*(v533 + 8))(v427, v534);
          sub_216697664(v428, &qword_27CABA820);
          v535 = sub_21700C764();
          if (!v536)
          {
            v535 = sub_21700C7C4();
          }

          v537 = v535;
          v538 = v536;
          v539 = v861;
          v540 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB80F0);
          v541 = v785;
          v542 = &v785[*(v540 + 48)];
          LOBYTE(v867) = 1;
          v543 = v862;
          __swift_storeEnumTagSinglePayload(&v785[*(v843 + 24)], 1, 1, v862);
          *v541 = 14;
          *(v541 + 8) = 0u;
          *(v541 + 24) = 0u;
          *(v541 + 40) = 0u;
          *(v541 + 56) = 0u;
          *(v541 + 72) = 0u;
          *(v541 + 88) = v537;
          *(v541 + 96) = v538;
          *(v541 + 104) = 0;
          *(v541 + 112) = 1;
          *v542 = 0;
          *(v542 + 1) = 0;
          swift_storeEnumTagMultiPayload();
          v865 = 0;
          v863 = 0u;
          v864 = 0u;
          v544 = v854;
          v539[3] = v854;
          v539[4] = sub_216E09184(qword_280E45BB8, type metadata accessor for FlowAction);
          v545 = __swift_allocate_boxed_opaque_existential_1(v539);
          __swift_storeEnumTagSinglePayload(v545 + v544[8], 1, 1, v543);
          v546 = v544[11];
          v547 = type metadata accessor for Page.Header(0);
          __swift_storeEnumTagSinglePayload(v545 + v546, 1, 1, v547);
          v548 = v544[9];
          v549 = type metadata accessor for ReferrerInfo();
          __swift_storeEnumTagSinglePayload(v545 + v548, 1, 1, v549);
          v550 = v545 + v544[10];
          *(v550 + 32) = 0;
          *v550 = 0u;
          *(v550 + 16) = 0u;
          v551 = v855;
          v552 = v856;
          v553 = v789;
          (*(v856 + 16))(v545, v789, v855);
          sub_216E0907C();
          v554 = v849;
          sub_217006214();
          v555 = sub_2170061F4();
          v862 = v556;
          (*(v851 + 8))(v554, v850);
          sub_216E090D4(v541, type metadata accessor for FlowAction.Destination);
          (*(v552 + 8))(v553, v551);
          v557 = (v545 + v544[6]);
          v558 = v862;
          *v557 = v555;
          v557[1] = v558;
          *(v545 + v544[7]) = 0;
          sub_2167A66B4(&v863, v550);
          v260 = *(v791 + 8);
          v261 = v793;
          v262 = &v824;
          return v260(v261, *(v262 - 32));
        }

        if (v149 == *MEMORY[0x277D2A450])
        {
          v508 = v836;
          (*(v146 + 96))(v148, v145);
          (*(v786 + 32))(v788, v148, v787);
          v509 = sub_21700C954();
          v511 = v510;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810);
          v512 = swift_allocObject();
          *(v512 + 16) = xmmword_217015230;
          v513 = MEMORY[0x277D837D0];
          *(v512 + 32) = 1684957547;
          *(v512 + 40) = 0xE400000000000000;
          *(v512 + 48) = 0x726F7461727563;
          *(v512 + 56) = 0xE700000000000000;
          *(v512 + 72) = v513;
          strcpy((v512 + 80), "lyricSnippet");
          *(v512 + 93) = 0;
          *(v512 + 94) = -5120;
          *(v512 + 96) = 0;
          *(v512 + 104) = 0xE000000000000000;
          *(v512 + 120) = v513;
          *(v512 + 128) = 0x614E747369747261;
          *(v512 + 168) = v513;
          *(v512 + 136) = 0xEA0000000000656DLL;
          *(v512 + 144) = 16718;
          *(v512 + 152) = 0xE200000000000000;
          v514 = sub_21700E384();
          v515 = v862;
          __swift_storeEnumTagSinglePayload(v782, 1, 1, v862);
          sub_21700D6F4();
          *(&v864 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20);
          *&v863 = v514;
          sub_2166EF9C4(&v863, &v867);
          v516 = MEMORY[0x277D84F98];
          swift_isUniquelyReferenced_nonNull_native();
          v866 = v516;
          sub_2166EF9D4();
          v517 = v866;
          *(&v864 + 1) = v513;
          *&v863 = 0x657461676976616ELL;
          *(&v863 + 1) = 0xE800000000000000;
          sub_2166EF9C4(&v863, &v867);
          swift_isUniquelyReferenced_nonNull_native();
          v866 = v517;
          sub_2166EF9D4();
          v518 = v866;
          *(&v864 + 1) = v513;
          *&v863 = 0x726F7461727563;
          *(&v863 + 1) = 0xE700000000000000;
          sub_2166EF9C4(&v863, &v867);
          swift_isUniquelyReferenced_nonNull_native();
          v866 = v518;
          sub_2166EF9D4();
          v519 = v866;
          v520 = v772;
          sub_2166A6EA4();
          if (__swift_getEnumTagSinglePayload(v520, 1, v515) == 1)
          {
            sub_216697664(v520, &qword_27CABA820);
          }

          else
          {
            v569 = v508;
            v570 = *(v508 + 32);
            v571 = v768;
            v570(v768, v520, v515);
            v572 = sub_217005DE4();
            *(&v864 + 1) = v513;
            *&v863 = v572;
            *(&v863 + 1) = v573;
            sub_2166EF9C4(&v863, &v867);
            swift_isUniquelyReferenced_nonNull_native();
            v866 = v519;
            sub_2166EF9D4();
            v519 = v866;
            (*(v569 + 8))(v571, v515);
          }

          v574 = v854;
          if (qword_280E46040 != -1)
          {
            swift_once();
          }

          v575 = sub_21700CF84();
          v576 = __swift_project_value_buffer(v575, qword_280E73DB0);
          v577 = v845;
          MEMORY[0x21CE9DD70](v509, v511, 0x4C746E65746E6F43, 0xEF6D657449747369, v519, v576);

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E20);
          v578 = v847;
          v579 = (*(v847 + 80) + 32) & ~*(v847 + 80);
          v580 = swift_allocObject();
          *(v580 + 16) = xmmword_217013DA0;
          v581 = v580 + v579;
          v582 = v846;
          (*(v578 + 16))(v581, v577, v846);
          v583 = v852;
          v584 = v783;
          v585 = v853;
          (*(v852 + 16))(v844, v783, v853);
          v586 = v775;
          sub_21700D244();
          (*(v578 + 8))(v577, v582);
          (*(v583 + 8))(v584, v585);
          sub_216697664(v782, &qword_27CABA820);
          v587 = sub_21700C954();
          v589 = v588;
          LOBYTE(v863) = 1;
          v590 = type metadata accessor for AppleCuratorDetailPageIntent();
          v591 = v826;
          v826[3] = v590;
          v591[4] = sub_216E09184(&qword_27CAB94B8, type metadata accessor for AppleCuratorDetailPageIntent);
          v592 = __swift_allocate_boxed_opaque_existential_1(v591);
          v593 = v862;
          __swift_storeEnumTagSinglePayload(v592 + *(v843 + 24), 1, 1, v862);
          *v592 = 1;
          *(v592 + 1) = 0u;
          *(v592 + 3) = 0u;
          *(v592 + 5) = 0u;
          *(v592 + 7) = 0u;
          *(v592 + 9) = 0u;
          v592[11] = v587;
          v592[12] = v589;
          v592[13] = 0;
          *(v592 + 112) = 1;
          v594 = *(v590 + 20);
          v595 = type metadata accessor for ReferrerInfo();
          __swift_storeEnumTagSinglePayload(v592 + v594, 1, 1, v595);
          swift_storeEnumTagMultiPayload();
          v865 = 0;
          v863 = 0u;
          v864 = 0u;
          v596 = v861;
          v861[3] = v574;
          v596[4] = sub_216E09184(qword_280E45BB8, type metadata accessor for FlowAction);
          v597 = __swift_allocate_boxed_opaque_existential_1(v596);
          __swift_storeEnumTagSinglePayload(v597 + v574[8], 1, 1, v593);
          v598 = v574[11];
          v599 = type metadata accessor for Page.Header(0);
          __swift_storeEnumTagSinglePayload(v597 + v598, 1, 1, v599);
          __swift_storeEnumTagSinglePayload(v597 + v574[9], 1, 1, v595);
          v600 = v597 + v574[10];
          *(v600 + 32) = 0;
          *v600 = 0u;
          *(v600 + 16) = 0u;
          v601 = v856;
          v602 = v586;
          v603 = v586;
          v604 = v855;
          (*(v856 + 16))(v597, v603, v855);
          sub_216E0907C();
          v605 = v849;
          sub_217006214();
          v606 = sub_2170061F4();
          v608 = v607;
          (*(v851 + 8))(v605, v850);
          (*(v601 + 8))(v602, v604);
          sub_216E090D4(v826, type metadata accessor for FlowAction.Destination);
          v609 = (v597 + v574[6]);
          *v609 = v606;
          v609[1] = v608;
          *(v597 + v574[7]) = 0;
          sub_2167A66B4(&v863, v600);
          v260 = *(v786 + 8);
          v261 = v788;
          v262 = &v819;
          return v260(v261, *(v262 - 32));
        }

        if (v149 == *MEMORY[0x277D2A3C0])
        {
          v559 = v836;
          (*(v146 + 96))(v148, v145);
          (*(v777 + 32))(v779, v148, v778);
          v560 = sub_21700BE64();
          v562 = v561;
          v563 = v862;
          __swift_storeEnumTagSinglePayload(v773, 1, 1, v862);
          sub_21700D6F4();
          v564 = MEMORY[0x277D837D0];
          *(&v864 + 1) = MEMORY[0x277D837D0];
          *&v863 = 0x657461676976616ELL;
          *(&v863 + 1) = 0xE800000000000000;
          sub_2166EF9C4(&v863, &v867);
          v565 = MEMORY[0x277D84F98];
          swift_isUniquelyReferenced_nonNull_native();
          v866 = v565;
          sub_2166EF9D4();
          v566 = v866;
          *(&v864 + 1) = v564;
          *&v863 = 0x61705F6C6562616CLL;
          *(&v863 + 1) = 0xEA00000000006567;
          sub_2166EF9C4(&v863, &v867);
          swift_isUniquelyReferenced_nonNull_native();
          v866 = v566;
          sub_2166EF9D4();
          v567 = v866;
          v568 = v764;
          sub_2166A6EA4();
          if (__swift_getEnumTagSinglePayload(v568, 1, v563) == 1)
          {
            sub_216697664(v568, &qword_27CABA820);
          }

          else
          {
            v617 = v763;
            (*(v559 + 32))(v763, v568, v563);
            v618 = sub_217005DE4();
            *(&v864 + 1) = v564;
            *&v863 = v618;
            *(&v863 + 1) = v619;
            sub_2166EF9C4(&v863, &v867);
            swift_isUniquelyReferenced_nonNull_native();
            v866 = v567;
            sub_2166EF9D4();
            v567 = v866;
            (*(v559 + 8))(v617, v563);
          }

          v620 = v854;
          if (qword_280E46040 != -1)
          {
            swift_once();
          }

          v621 = sub_21700CF84();
          v622 = __swift_project_value_buffer(v621, qword_280E73DB0);
          v623 = v845;
          MEMORY[0x21CE9DD70](v560, v562, 0x4C746E65746E6F43, 0xEF6D657449747369, v567, v622);

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E20);
          v624 = v847;
          v625 = (*(v847 + 80) + 32) & ~*(v847 + 80);
          v626 = swift_allocObject();
          *(v626 + 16) = xmmword_217013DA0;
          v627 = v626 + v625;
          v628 = v846;
          (*(v624 + 16))(v627, v623, v846);
          v629 = v852;
          v630 = v774;
          v631 = v853;
          (*(v852 + 16))(v844, v774, v853);
          v632 = v766;
          sub_21700D244();
          (*(v624 + 8))(v623, v628);
          (*(v629 + 8))(v630, v631);
          sub_216697664(v773, &qword_27CABA820);
          v633 = sub_21700BE64();
          v635 = v634;
          LOBYTE(v863) = 1;
          v636 = type metadata accessor for RecordLabelDetailPageIntent();
          v637 = v826;
          v826[3] = v636;
          v637[4] = sub_216E09184(&qword_27CAC9E90, type metadata accessor for RecordLabelDetailPageIntent);
          v638 = __swift_allocate_boxed_opaque_existential_1(v637);
          v639 = v862;
          __swift_storeEnumTagSinglePayload(v638 + *(v843 + 24), 1, 1, v862);
          *v638 = 17;
          *(v638 + 1) = 0u;
          *(v638 + 3) = 0u;
          *(v638 + 5) = 0u;
          *(v638 + 7) = 0u;
          *(v638 + 9) = 0u;
          v638[11] = v633;
          v638[12] = v635;
          v638[13] = 0;
          *(v638 + 112) = 1;
          v640 = *(v636 + 20);
          v641 = type metadata accessor for ReferrerInfo();
          __swift_storeEnumTagSinglePayload(v638 + v640, 1, 1, v641);
          swift_storeEnumTagMultiPayload();
          v865 = 0;
          v863 = 0u;
          v864 = 0u;
          v642 = v861;
          v861[3] = v620;
          v642[4] = sub_216E09184(qword_280E45BB8, type metadata accessor for FlowAction);
          v643 = __swift_allocate_boxed_opaque_existential_1(v642);
          __swift_storeEnumTagSinglePayload(v643 + v620[8], 1, 1, v639);
          v644 = v620[11];
          v645 = type metadata accessor for Page.Header(0);
          __swift_storeEnumTagSinglePayload(v643 + v644, 1, 1, v645);
          __swift_storeEnumTagSinglePayload(v643 + v620[9], 1, 1, v641);
          v646 = v643 + v620[10];
          *(v646 + 32) = 0;
          *v646 = 0u;
          *(v646 + 16) = 0u;
          v647 = v856;
          v648 = v632;
          v649 = v632;
          v650 = v855;
          (*(v856 + 16))(v643, v649, v855);
          sub_216E0907C();
          v651 = v849;
          sub_217006214();
          v652 = sub_2170061F4();
          v654 = v653;
          (*(v851 + 8))(v651, v850);
          (*(v647 + 8))(v648, v650);
          sub_216E090D4(v826, type metadata accessor for FlowAction.Destination);
          v655 = (v643 + v620[6]);
          *v655 = v652;
          v655[1] = v654;
          *(v643 + v620[7]) = 0;
          sub_2167A66B4(&v863, v646);
          v260 = *(v777 + 8);
          v261 = v779;
          v262 = &v810;
          return v260(v261, *(v262 - 32));
        }

        if (v149 == *MEMORY[0x277D2A3D0])
        {
          v610 = v836;
          (*(v146 + 96))(v148, v145);
          (*(v769 + 32))(v771, v148, v770);
          v611 = v862;
          __swift_storeEnumTagSinglePayload(v765, 1, 1, v862);
          sub_21700D6F4();
          v612 = MEMORY[0x277D837D0];
          *(&v864 + 1) = MEMORY[0x277D837D0];
          *&v863 = 0x657461676976616ELL;
          *(&v863 + 1) = 0xE800000000000000;
          sub_2166EF9C4(&v863, &v867);
          v613 = MEMORY[0x277D84F98];
          swift_isUniquelyReferenced_nonNull_native();
          v866 = v613;
          sub_2166EF9D4();
          v614 = v866;
          *(&v864 + 1) = v612;
          strcpy(&v863, "social_profile");
          HIBYTE(v863) = -18;
          sub_2166EF9C4(&v863, &v867);
          swift_isUniquelyReferenced_nonNull_native();
          v866 = v614;
          sub_2166EF9D4();
          v615 = v866;
          v616 = v761;
          sub_2166A6EA4();
          if (__swift_getEnumTagSinglePayload(v616, 1, v611) == 1)
          {
            sub_216697664(v616, &qword_27CABA820);
          }

          else
          {
            v660 = v760;
            (*(v610 + 32))(v760, v616, v611);
            v661 = sub_217005DE4();
            *(&v864 + 1) = v612;
            *&v863 = v661;
            *(&v863 + 1) = v662;
            sub_2166EF9C4(&v863, &v867);
            swift_isUniquelyReferenced_nonNull_native();
            v866 = v615;
            sub_2166EF9D4();
            v615 = v866;
            (*(v610 + 8))(v660, v611);
          }

          v663 = v854;
          if (qword_280E46040 != -1)
          {
            swift_once();
          }

          v664 = sub_21700CF84();
          v665 = __swift_project_value_buffer(v664, qword_280E73DB0);
          v666 = v845;
          MEMORY[0x21CE9DD70](0x656C69666F7270, 0xE700000000000000, 0x4C746E65746E6F43, 0xEF6D657449747369, v615, v665);

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E20);
          v667 = v847;
          v668 = (*(v847 + 80) + 32) & ~*(v847 + 80);
          v669 = swift_allocObject();
          *(v669 + 16) = xmmword_217013DA0;
          v670 = v669 + v668;
          v671 = v846;
          (*(v667 + 16))(v670, v666, v846);
          v672 = v852;
          v673 = v767;
          v674 = v853;
          (*(v852 + 16))(v844, v767, v853);
          v675 = v762;
          sub_21700D244();
          (*(v667 + 8))(v666, v671);
          (*(v672 + 8))(v673, v674);
          sub_216697664(v765, &qword_27CABA820);
          v676 = sub_217006F84();
          v678 = v677;
          LOBYTE(v863) = 1;
          v679 = type metadata accessor for SocialProfilePageIntent();
          v680 = v826;
          v826[3] = v679;
          v680[4] = sub_216E09184(&qword_27CAB94A0, type metadata accessor for SocialProfilePageIntent);
          v681 = __swift_allocate_boxed_opaque_existential_1(v680);
          v682 = v862;
          __swift_storeEnumTagSinglePayload(v681 + *(v843 + 24), 1, 1, v862);
          *v681 = 18;
          v681[1] = 0;
          v681[2] = 0;
          v681[3] = v676;
          v681[4] = v678;
          *(v681 + 5) = 0u;
          *(v681 + 7) = 0u;
          *(v681 + 9) = 0u;
          *(v681 + 11) = 0u;
          v681[13] = 0;
          *(v681 + 112) = 1;
          v683 = *(v679 + 24);
          v684 = type metadata accessor for ReferrerInfo();
          __swift_storeEnumTagSinglePayload(v681 + v683, 1, 1, v684);
          *(v681 + *(v679 + 20)) = 0;
          swift_storeEnumTagMultiPayload();
          v865 = 0;
          v863 = 0u;
          v864 = 0u;
          v685 = v861;
          v861[3] = v663;
          v685[4] = sub_216E09184(qword_280E45BB8, type metadata accessor for FlowAction);
          v686 = __swift_allocate_boxed_opaque_existential_1(v685);
          __swift_storeEnumTagSinglePayload(v686 + v663[8], 1, 1, v682);
          v687 = v663[11];
          v688 = type metadata accessor for Page.Header(0);
          __swift_storeEnumTagSinglePayload(v686 + v687, 1, 1, v688);
          __swift_storeEnumTagSinglePayload(v686 + v663[9], 1, 1, v684);
          v689 = v686 + v663[10];
          *(v689 + 32) = 0;
          *v689 = 0u;
          *(v689 + 16) = 0u;
          v690 = v856;
          v691 = v675;
          v692 = v675;
          v693 = v855;
          (*(v856 + 16))(v686, v692, v855);
          sub_216E0907C();
          v694 = v849;
          sub_217006214();
          v695 = sub_2170061F4();
          v697 = v696;
          (*(v851 + 8))(v694, v850);
          (*(v690 + 8))(v691, v693);
          sub_216E090D4(v826, type metadata accessor for FlowAction.Destination);
          v698 = (v686 + v663[6]);
          *v698 = v695;
          v698[1] = v697;
          *(v686 + v663[7]) = 0;
          sub_2167A66B4(&v863, v689);
          v260 = *(v769 + 8);
          v261 = v771;
          v262 = &v802;
          return v260(v261, *(v262 - 32));
        }

        v656 = v853;
        if (v149 != *MEMORY[0x277D2A3F8])
        {
          v657 = v836;
          v658 = v852;
          v659 = v861;
          if (v149 != *MEMORY[0x277D2A430] && v149 != *MEMORY[0x277D2A458] && v149 != *MEMORY[0x277D2A448])
          {
            if (v149 == *MEMORY[0x277D2A420])
            {
              (*(v146 + 96))(v148, v145);
              (*(v757 + 32))(v759, v148, v758);
              v860 = sub_217007254();
              if (!v699)
              {
                v860 = sub_217007214();
              }

              v700 = v699;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810);
              v701 = swift_allocObject();
              *(v701 + 16) = xmmword_217015230;
              v702 = MEMORY[0x277D837D0];
              *(v701 + 32) = 1684957547;
              *(v701 + 40) = 0xE400000000000000;
              *(v701 + 48) = 0x776F68537674;
              *(v701 + 56) = 0xE600000000000000;
              *(v701 + 72) = v702;
              strcpy((v701 + 80), "lyricSnippet");
              *(v701 + 93) = 0;
              *(v701 + 94) = -5120;
              *(v701 + 96) = 0;
              *(v701 + 104) = 0xE000000000000000;
              *(v701 + 120) = v702;
              *(v701 + 128) = 0x614E747369747261;
              *(v701 + 168) = v702;
              *(v701 + 136) = 0xEA0000000000656DLL;
              *(v701 + 144) = 16718;
              *(v701 + 152) = 0xE200000000000000;
              v703 = sub_21700E384();
              v704 = v862;
              __swift_storeEnumTagSinglePayload(v754, 1, 1, v862);
              sub_21700D6F4();
              *(&v864 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20);
              *&v863 = v703;
              sub_2166EF9C4(&v863, &v867);
              v705 = MEMORY[0x277D84F98];
              swift_isUniquelyReferenced_nonNull_native();
              v866 = v705;
              sub_2166EF9D4();
              v706 = v866;
              *(&v864 + 1) = v702;
              *&v863 = 0x657461676976616ELL;
              *(&v863 + 1) = 0xE800000000000000;
              sub_2166EF9C4(&v863, &v867);
              swift_isUniquelyReferenced_nonNull_native();
              v866 = v706;
              sub_2166EF9D4();
              v707 = v866;
              *(&v864 + 1) = v702;
              strcpy(&v863, "tv_show_detail");
              HIBYTE(v863) = -18;
              sub_2166EF9C4(&v863, &v867);
              swift_isUniquelyReferenced_nonNull_native();
              v866 = v707;
              sub_2166EF9D4();
              v708 = v866;
              v709 = v753;
              sub_2166A6EA4();
              if (__swift_getEnumTagSinglePayload(v709, 1, v704) == 1)
              {
                sub_216697664(v753, &qword_27CABA820);
              }

              else
              {
                v711 = v657;
                v712 = *(v657 + 32);
                v713 = v751;
                v714 = v862;
                v712(v751, v753, v862);
                v715 = sub_217005DE4();
                *(&v864 + 1) = v702;
                *&v863 = v715;
                *(&v863 + 1) = v716;
                sub_2166EF9C4(&v863, &v867);
                swift_isUniquelyReferenced_nonNull_native();
                v866 = v708;
                sub_2166EF9D4();
                v708 = v866;
                (*(v711 + 8))(v713, v714);
              }

              if (qword_280E46040 != -1)
              {
                swift_once();
              }

              v717 = sub_21700CF84();
              v718 = __swift_project_value_buffer(v717, qword_280E73DB0);
              v719 = v845;
              MEMORY[0x21CE9DD70](v860, v700, 0x4C746E65746E6F43, 0xEF6D657449747369, v708, v718);

              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E20);
              v720 = v847;
              v721 = (*(v847 + 80) + 32) & ~*(v847 + 80);
              v722 = swift_allocObject();
              *(v722 + 16) = xmmword_217013DA0;
              v723 = v722 + v721;
              v724 = v846;
              (*(v720 + 16))(v723, v719, v846);
              v725 = v756;
              (*(v658 + 16))(v844, v756, v656);
              sub_21700D244();
              (*(v720 + 8))(v719, v724);
              (*(v658 + 8))(v725, v656);
              sub_216697664(v754, &qword_27CABA820);
              v726 = sub_217007254();
              if (!v727)
              {
                v726 = sub_217007214();
              }

              v728 = v726;
              v729 = v727;
              v730 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB80F0);
              v731 = v752;
              v732 = &v752[*(v730 + 48)];
              LOBYTE(v867) = 1;
              v733 = v862;
              __swift_storeEnumTagSinglePayload(&v752[*(v843 + 24)], 1, 1, v862);
              *v731 = 22;
              *(v731 + 8) = 0u;
              *(v731 + 24) = 0u;
              *(v731 + 40) = 0u;
              *(v731 + 56) = 0u;
              *(v731 + 72) = 0u;
              *(v731 + 88) = v728;
              *(v731 + 96) = v729;
              *(v731 + 104) = 0;
              *(v731 + 112) = 1;
              *v732 = 0;
              *(v732 + 1) = 0;
              swift_storeEnumTagMultiPayload();
              v865 = 0;
              v863 = 0u;
              v864 = 0u;
              v734 = v854;
              v659[3] = v854;
              v659[4] = sub_216E09184(qword_280E45BB8, type metadata accessor for FlowAction);
              v735 = __swift_allocate_boxed_opaque_existential_1(v659);
              __swift_storeEnumTagSinglePayload(v735 + v734[8], 1, 1, v733);
              v736 = v734[11];
              v737 = type metadata accessor for Page.Header(0);
              __swift_storeEnumTagSinglePayload(v735 + v736, 1, 1, v737);
              v738 = v734[9];
              v739 = type metadata accessor for ReferrerInfo();
              __swift_storeEnumTagSinglePayload(v735 + v738, 1, 1, v739);
              v740 = v735 + v734[10];
              *(v740 + 32) = 0;
              *v740 = 0u;
              *(v740 + 16) = 0u;
              v742 = v855;
              v741 = v856;
              v743 = v755;
              (*(v856 + 16))(v735, v755, v855);
              sub_216E0907C();
              v744 = v849;
              sub_217006214();
              v745 = sub_2170061F4();
              v862 = v746;
              (*(v851 + 8))(v744, v850);
              sub_216E090D4(v731, type metadata accessor for FlowAction.Destination);
              (*(v741 + 8))(v743, v742);
              v747 = (v735 + v734[6]);
              v748 = v862;
              *v747 = v745;
              v747[1] = v748;
              *(v735 + v734[7]) = 0;
              sub_2167A66B4(&v863, v740);
              v260 = *(v757 + 8);
              v261 = v759;
              v262 = &v790;
              return v260(v261, *(v262 - 32));
            }

            if (v149 != *MEMORY[0x277D2A3D8] && v149 != *MEMORY[0x277D2A3E0])
            {
              v710 = (v146 + 8);
              if (v149 == *MEMORY[0x277D2A410])
              {
                result = (*v710)(v148, v145);
                v659[4] = 0;
                *v659 = 0u;
                *(v659 + 1) = 0u;
              }

              else
              {
                v861[4] = 0;
                *v659 = 0u;
                *(v659 + 1) = 0u;
                return (*v710)(v148, v145);
              }

              return result;
            }
          }

          v861[4] = 0;
          *v659 = 0u;
          *(v659 + 1) = 0u;
          return (*(v146 + 8))(v148, v145);
        }
      }

LABEL_9:
      v158 = v861;
      v861[4] = 0;
      *v158 = 0u;
      *(v158 + 1) = 0u;
      return (*(v146 + 8))(v148, v145);
    }

    (*(v146 + 96))(v148, v145);
    v330 = v804;
    v331 = v810;
    v332 = v805;
    (*(v804 + 32))(v810, v148, v805);
    v333 = v799;
    sub_21700C214();
    v334 = v801;
    v335 = v800;
    v336 = v802;
    (*(v801 + 104))(v800, *MEMORY[0x277D2B1C0], v802);
    v337 = sub_21700C1F4();
    v338 = *(v334 + 8);
    v338(v335, v336);
    v338(v333, v336);
    if ((v337 & 1) == 0)
    {
      result = (*(v330 + 8))(v331, v332);
      v460 = v861;
      v861[4] = 0;
      *v460 = 0u;
      *(v460 + 1) = 0u;
      return result;
    }

    v339 = v852;
    v340 = sub_21700C234();
    v342 = v341;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810);
    v343 = swift_allocObject();
    *(v343 + 16) = xmmword_217015230;
    v344 = MEMORY[0x277D837D0];
    *(v343 + 32) = 1684957547;
    *(v343 + 40) = 0xE400000000000000;
    *(v343 + 48) = 0x726F7461727563;
    *(v343 + 56) = 0xE700000000000000;
    *(v343 + 72) = v344;
    strcpy((v343 + 80), "lyricSnippet");
    *(v343 + 93) = 0;
    *(v343 + 94) = -5120;
    *(v343 + 96) = 0;
    *(v343 + 104) = 0xE000000000000000;
    *(v343 + 120) = v344;
    *(v343 + 128) = 0x614E747369747261;
    *(v343 + 168) = v344;
    *(v343 + 136) = 0xEA0000000000656DLL;
    *(v343 + 144) = 16718;
    *(v343 + 152) = 0xE200000000000000;
    v345 = sub_21700E384();
    v346 = v862;
    __swift_storeEnumTagSinglePayload(v796, 1, 1, v862);
    sub_21700D6F4();
    *(&v864 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20);
    *&v863 = v345;
    sub_2166EF9C4(&v863, &v867);
    v347 = MEMORY[0x277D84F98];
    swift_isUniquelyReferenced_nonNull_native();
    v866 = v347;
    sub_2166EF9D4();
    v348 = v866;
    *(&v864 + 1) = v344;
    *&v863 = 0x657461676976616ELL;
    *(&v863 + 1) = 0xE800000000000000;
    sub_2166EF9C4(&v863, &v867);
    swift_isUniquelyReferenced_nonNull_native();
    v866 = v348;
    sub_2166EF9D4();
    v349 = v866;
    *(&v864 + 1) = v344;
    *&v863 = 0x7365726E6567;
    *(&v863 + 1) = 0xE600000000000000;
    sub_2166EF9C4(&v863, &v867);
    swift_isUniquelyReferenced_nonNull_native();
    v866 = v349;
    sub_2166EF9D4();
    v350 = v866;
    v351 = v794;
    sub_2166A6EA4();
    if (__swift_getEnumTagSinglePayload(v351, 1, v346) == 1)
    {
      sub_216697664(v351, &qword_27CABA820);
    }

    else
    {
      v467 = v836;
      v468 = v790;
      (*(v836 + 32))(v790, v351, v346);
      v469 = sub_217005DE4();
      *(&v864 + 1) = v344;
      *&v863 = v469;
      *(&v863 + 1) = v470;
      sub_2166EF9C4(&v863, &v867);
      swift_isUniquelyReferenced_nonNull_native();
      v866 = v350;
      sub_2166EF9D4();
      v350 = v866;
      (*(v467 + 8))(v468, v346);
    }

    v471 = v854;
    if (qword_280E46040 != -1)
    {
      swift_once();
    }

    v472 = sub_21700CF84();
    v473 = __swift_project_value_buffer(v472, qword_280E73DB0);
    v474 = v845;
    MEMORY[0x21CE9DD70](v340, v342, 0x4C746E65746E6F43, 0xEF6D657449747369, v350, v473);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E20);
    v475 = v847;
    v476 = (*(v847 + 80) + 32) & ~*(v847 + 80);
    v477 = swift_allocObject();
    *(v477 + 16) = xmmword_217013DA0;
    v478 = v477 + v476;
    v479 = v846;
    (*(v475 + 16))(v478, v474, v846);
    v480 = v339;
    v481 = *(v339 + 16);
    v482 = v798;
    v483 = v853;
    v481(v844, v798, v853);
    v484 = v795;
    sub_21700D244();
    (*(v475 + 8))(v474, v479);
    (*(v480 + 8))(v482, v483);
    sub_216697664(v796, &qword_27CABA820);
    v485 = sub_21700C234();
    v487 = v486;
    LOBYTE(v863) = 1;
    v488 = type metadata accessor for AppleCuratorDetailPageIntent();
    v489 = v826;
    v826[3] = v488;
    v489[4] = sub_216E09184(&qword_27CAB94B8, type metadata accessor for AppleCuratorDetailPageIntent);
    v490 = __swift_allocate_boxed_opaque_existential_1(v489);
    v491 = v862;
    __swift_storeEnumTagSinglePayload(v490 + *(v843 + 24), 1, 1, v862);
    *v490 = 0;
    *(v490 + 1) = 0u;
    *(v490 + 3) = 0u;
    *(v490 + 5) = 0u;
    *(v490 + 7) = 0u;
    *(v490 + 9) = 0u;
    v490[11] = v485;
    v490[12] = v487;
    v490[13] = 0;
    *(v490 + 112) = 1;
    v492 = *(v488 + 20);
    v493 = type metadata accessor for ReferrerInfo();
    __swift_storeEnumTagSinglePayload(v490 + v492, 1, 1, v493);
    swift_storeEnumTagMultiPayload();
    v865 = 0;
    v863 = 0u;
    v864 = 0u;
    v494 = v861;
    v861[3] = v471;
    v494[4] = sub_216E09184(qword_280E45BB8, type metadata accessor for FlowAction);
    v495 = __swift_allocate_boxed_opaque_existential_1(v494);
    __swift_storeEnumTagSinglePayload(v495 + v471[8], 1, 1, v491);
    v496 = v471[11];
    v497 = type metadata accessor for Page.Header(0);
    __swift_storeEnumTagSinglePayload(v495 + v496, 1, 1, v497);
    __swift_storeEnumTagSinglePayload(v495 + v471[9], 1, 1, v493);
    v498 = v495 + v471[10];
    *(v498 + 32) = 0;
    *v498 = 0u;
    *(v498 + 16) = 0u;
    v499 = v856;
    v500 = v484;
    v501 = v484;
    v502 = v855;
    (*(v856 + 16))(v495, v501, v855);
    sub_216E0907C();
    v503 = v849;
    sub_217006214();
    v504 = sub_2170061F4();
    v506 = v505;
    (*(v851 + 8))(v503, v850);
    (*(v499 + 8))(v500, v502);
    sub_216E090D4(v826, type metadata accessor for FlowAction.Destination);
    v507 = (v495 + v471[6]);
    *v507 = v504;
    v507[1] = v506;
    *(v495 + v471[7]) = 0;
    sub_2167A66B4(&v863, v498);
    v260 = *(v804 + 8);
    v261 = v810;
    v262 = &v837;
    return v260(v261, *(v262 - 32));
  }

  (*(v146 + 96))(v148, v145);
  (*(v820 + 32))(v819, v148, v821);
  v276 = sub_217006F04();
  v278 = v277;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810);
  v279 = swift_allocObject();
  *(v279 + 16) = xmmword_217015230;
  v280 = MEMORY[0x277D837D0];
  *(v279 + 32) = 1684957547;
  *(v279 + 40) = 0xE400000000000000;
  *(v279 + 48) = 0x726F7461727563;
  *(v279 + 56) = 0xE700000000000000;
  *(v279 + 72) = v280;
  strcpy((v279 + 80), "lyricSnippet");
  *(v279 + 93) = 0;
  *(v279 + 94) = -5120;
  *(v279 + 96) = 0;
  *(v279 + 104) = 0xE000000000000000;
  *(v279 + 120) = v280;
  *(v279 + 128) = 0x614E747369747261;
  *(v279 + 168) = v280;
  *(v279 + 136) = 0xEA0000000000656DLL;
  *(v279 + 144) = 16718;
  *(v279 + 152) = 0xE200000000000000;
  v281 = sub_21700E384();
  v282 = v862;
  __swift_storeEnumTagSinglePayload(v812, 1, 1, v862);
  sub_21700D6F4();
  *(&v864 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20);
  *&v863 = v281;
  sub_2166EF9C4(&v863, &v867);
  v283 = MEMORY[0x277D84F98];
  swift_isUniquelyReferenced_nonNull_native();
  v866 = v283;
  sub_2166EF9D4();
  v284 = v866;
  *(&v864 + 1) = v280;
  *&v863 = 0x657461676976616ELL;
  *(&v863 + 1) = 0xE800000000000000;
  sub_2166EF9C4(&v863, &v867);
  swift_isUniquelyReferenced_nonNull_native();
  v866 = v284;
  sub_2166EF9D4();
  v285 = v866;
  *(&v864 + 1) = v280;
  *&v863 = 0x726F7461727563;
  *(&v863 + 1) = 0xE700000000000000;
  sub_2166EF9C4(&v863, &v867);
  swift_isUniquelyReferenced_nonNull_native();
  v866 = v285;
  sub_2166EF9D4();
  v286 = v866;
  v287 = v806;
  sub_2166A6EA4();
  if (__swift_getEnumTagSinglePayload(v287, 1, v282) == 1)
  {
    sub_216697664(v287, &qword_27CABA820);
  }

  else
  {
    v377 = v836;
    v378 = v797;
    (*(v836 + 32))(v797, v287, v282);
    v379 = sub_217005DE4();
    *(&v864 + 1) = v280;
    *&v863 = v379;
    *(&v863 + 1) = v380;
    sub_2166EF9C4(&v863, &v867);
    swift_isUniquelyReferenced_nonNull_native();
    v866 = v286;
    sub_2166EF9D4();
    v286 = v866;
    (*(v377 + 8))(v378, v282);
  }

  v381 = v828;
  if (qword_280E46040 != -1)
  {
    swift_once();
  }

  v382 = sub_21700CF84();
  v383 = __swift_project_value_buffer(v382, qword_280E73DB0);
  v384 = v845;
  MEMORY[0x21CE9DD70](v276, v278, 0x4C746E65746E6F43, 0xEF6D657449747369, v286, v383);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E20);
  v385 = v847;
  v386 = (*(v847 + 80) + 32) & ~*(v847 + 80);
  v387 = swift_allocObject();
  *(v387 + 16) = xmmword_217013DA0;
  v388 = v387 + v386;
  v389 = v846;
  (*(v385 + 16))(v388, v384, v846);
  v390 = v852;
  v391 = v813;
  v392 = v853;
  (*(v852 + 16))(v844, v813, v853);
  v393 = v814;
  sub_21700D244();
  (*(v385 + 8))(v384, v389);
  (*(v390 + 8))(v391, v392);
  sub_216697664(v812, &qword_27CABA820);
  v394 = (v856 + 16);
  v395 = *(v856 + 16);
  v396 = v393;
  v397 = v855;
  v395(v381, v396, v855);
  v398 = v381;
  v399 = v826;
  (*(v820 + 16))(v826, v819, v821);
  swift_storeEnumTagMultiPayload();
  v865 = 0;
  v863 = 0u;
  v864 = 0u;
  v400 = v854;
  v401 = v815;
  v402 = v862;
  __swift_storeEnumTagSinglePayload(&v815[*(v854 + 32)], 1, 1, v862);
  v403 = v400[11];
  v404 = type metadata accessor for Page.Header(0);
  __swift_storeEnumTagSinglePayload(&v401[v403], 1, 1, v404);
  v405 = v400[9];
  v406 = type metadata accessor for ReferrerInfo();
  __swift_storeEnumTagSinglePayload(&v401[v405], 1, 1, v406);
  v407 = &v401[v400[10]];
  *(v407 + 32) = 0;
  *v407 = 0u;
  *(v407 + 16) = 0u;
  v859 = v395;
  v860 = v394;
  v395(v401, v398, v397);
  sub_216E0907C();
  v408 = v849;
  sub_217006214();
  v409 = sub_2170061F4();
  v411 = v410;
  (*(v851 + 8))(v408, v850);
  v412 = v399;
  v413 = v856;
  sub_216E090D4(v412, type metadata accessor for FlowAction.Destination);
  v414 = *(v413 + 8);
  v414(v828, v397);
  v415 = &v401[v400[6]];
  *v415 = v409;
  v415[1] = v411;
  v416 = v819;
  v401[v400[7]] = 0;
  sub_2167A66B4(&v863, v407);
  v417 = v808;
  sub_217006F14();
  if (__swift_getEnumTagSinglePayload(v417, 1, v402) == 1)
  {
    v418 = v803;
    sub_217006F24();
    v419 = sub_217007114();
    v420 = __swift_getEnumTagSinglePayload(v418, 1, v419);
    v421 = v809;
    if (v420 == 1)
    {
      sub_216697664(v418, &qword_27CAB81B0);
      v422 = 1;
    }

    else
    {
      sub_217007104();
      (*(*(v419 - 8) + 8))(v418, v419);
      v422 = 0;
    }

    __swift_storeEnumTagSinglePayload(v421, v422, 1, v402);
    if (__swift_getEnumTagSinglePayload(v417, 1, v402) != 1)
    {
      sub_216697664(v417, &qword_27CABA820);
    }
  }

  else
  {
    v459 = v809;
    (*(v836 + 32))(v809, v417, v402);
    __swift_storeEnumTagSinglePayload(v459, 0, 1, v402);
  }

  v461 = type metadata accessor for RoutedAction();
  v462 = v861;
  v861[3] = v461;
  v462[4] = sub_216E09184(&qword_27CABCAA0, type metadata accessor for RoutedAction);
  v463 = __swift_allocate_boxed_opaque_existential_1(v462);
  v464 = v814;
  v465 = v855;
  (v859)(v463, v814, v855);
  v466 = (v463 + *(v461 + 20));
  v466[3] = v854;
  v466[4] = sub_216E09184(qword_280E45BB8, type metadata accessor for FlowAction);
  __swift_allocate_boxed_opaque_existential_1(v466);
  sub_216E0912C();
  v414(v464, v465);
  (*(v820 + 8))(v416, v821);
  return sub_2167A4788();
}

uint64_t sub_216DFFFB8@<X0>(uint64_t *a1@<X8>)
{
  v168 = a1;
  v152 = sub_21700C734();
  v151 = *(v152 - 8);
  MEMORY[0x28223BE20](v152);
  v150 = v147 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = sub_21700C924();
  v154 = *(v155 - 8);
  MEMORY[0x28223BE20](v155);
  v153 = v147 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2170072A4();
  v157 = *(v4 - 8);
  v158 = v4;
  MEMORY[0x28223BE20](v4);
  v156 = v147 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21700C384();
  v160 = *(v6 - 8);
  v161 = v6;
  MEMORY[0x28223BE20](v6);
  v159 = v147 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_217006224();
  v165 = *(v8 - 8);
  v166 = v8;
  MEMORY[0x28223BE20](v8);
  v164 = v147 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6FD0);
  MEMORY[0x28223BE20](v10 - 8);
  v171 = v147 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6BF0);
  MEMORY[0x28223BE20](v12 - 8);
  v170 = v147 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820);
  MEMORY[0x28223BE20](v14 - 8);
  v169 = v147 - v15;
  v16 = type metadata accessor for FlowAction.Destination(0);
  MEMORY[0x28223BE20](v16);
  v18 = v147 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = sub_21700D284();
  v167 = *(v163 - 8);
  MEMORY[0x28223BE20](v163);
  v20 = v147 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_21700C1E4();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = v147 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_2170067A4();
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v28 = v147 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v26 + 16))(v28, v1, v25);
  v29 = (*(v26 + 88))(v28, v25);
  if (v29 == *MEMORY[0x277D2A400])
  {
    (*(v26 + 96))(v28, v25);
    v149 = v22;
    v30 = *(v22 + 32);
    v148 = v24;
    v147[1] = v21;
    v30(v24, v28, v21);
    LOBYTE(v172) = 0;
    v162 = v20;
    sub_216E08598(&v172, v20);
    v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB80C0) + 48);
    (*(v22 + 16))(v18, v24, v21);
    v32 = sub_21700C2F4();
    __swift_storeEnumTagSinglePayload(&v18[v31], 1, 1, v32);
    swift_storeEnumTagMultiPayload();
    v33 = sub_217005EF4();
    v172 = 0u;
    v173 = 0u;
    v174 = 0;
    __swift_storeEnumTagSinglePayload(v169, 1, 1, v33);
    v34 = type metadata accessor for Page.Header(0);
    __swift_storeEnumTagSinglePayload(v170, 1, 1, v34);
    v35 = type metadata accessor for ReferrerInfo();
    __swift_storeEnumTagSinglePayload(v171, 1, 1, v35);
    v36 = type metadata accessor for FlowAction(0);
    v37 = v168;
    v168[3] = v36;
    v37[4] = sub_216E09184(qword_280E45BB8, type metadata accessor for FlowAction);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v37);
    v39 = v18;
    v40 = boxed_opaque_existential_1 + v36[10];
    *(v40 + 32) = 0;
    *v40 = 0u;
    *(v40 + 16) = 0u;
    v41 = v167;
    v42 = v163;
    (*(v167 + 16))();
    sub_216E0907C();
    v43 = v164;
    sub_217006214();
    v44 = sub_2170061F4();
    v46 = v45;
    (*(v165 + 8))(v43, v166);
    sub_216E090D4(v39, type metadata accessor for FlowAction.Destination);
    (*(v41 + 8))(v162, v42);
    v47 = (boxed_opaque_existential_1 + v36[6]);
    *v47 = v44;
    v47[1] = v46;
    *(boxed_opaque_existential_1 + v36[7]) = 0;
    sub_2167A66B4(&v172, v40);
    sub_2167A4788();
    sub_2167A4788();
    sub_2167A4788();
    v48 = *(v149 + 8);
    v49 = v148;
    v50 = &v175;
LABEL_3:
    v51 = *(v50 - 32);
    return v48(v49, v51);
  }

  v147[0] = v18;
  v52 = v20;
  v53 = v169;
  v54 = v170;
  v55 = v171;
  if (v29 == *MEMORY[0x277D2A418])
  {
    (*(v26 + 96))(v28, v25);
    v56 = v159;
    v57 = v160;
    v58 = v161;
    (*(v160 + 32))(v159, v28, v161);
    LOBYTE(v172) = 3;
    v162 = v52;
    sub_216E08598(&v172, v52);
    v59 = v147[0];
    (*(v57 + 16))(v147[0], v56, v58);
    swift_storeEnumTagMultiPayload();
    v60 = sub_217005EF4();
    v172 = 0u;
    v173 = 0u;
    v174 = 0;
    __swift_storeEnumTagSinglePayload(v53, 1, 1, v60);
    v61 = type metadata accessor for Page.Header(0);
    __swift_storeEnumTagSinglePayload(v54, 1, 1, v61);
    v62 = type metadata accessor for ReferrerInfo();
    __swift_storeEnumTagSinglePayload(v55, 1, 1, v62);
    v63 = type metadata accessor for FlowAction(0);
    v64 = v168;
    v168[3] = v63;
    v64[4] = sub_216E09184(qword_280E45BB8, type metadata accessor for FlowAction);
    v65 = __swift_allocate_boxed_opaque_existential_1(v64);
    v66 = v65 + v63[10];
    *(v66 + 32) = 0;
    *v66 = 0u;
    *(v66 + 16) = 0u;
    v67 = v167;
    v68 = v163;
    (*(v167 + 16))();
    sub_216E0907C();
    v69 = v164;
    sub_217006214();
    v70 = sub_2170061F4();
    v72 = v71;
    (*(v165 + 8))(v69, v166);
    sub_216E090D4(v59, type metadata accessor for FlowAction.Destination);
    (*(v67 + 8))(v162, v68);
    v73 = (v65 + v63[6]);
    *v73 = v70;
    v73[1] = v72;
    *(v65 + v63[7]) = 0;
    sub_2167A66B4(&v172, v66);
    sub_2167A4788();
    sub_2167A4788();
    sub_2167A4788();
    return (*(v160 + 8))(v159, v161);
  }

  if (v29 == *MEMORY[0x277D2A438])
  {
    (*(v26 + 96))(v28, v25);
    v75 = v156;
    v76 = v157;
    v77 = v158;
    (*(v157 + 32))(v156, v28, v158);
    LOBYTE(v172) = 7;
    v162 = v52;
    sub_216E08598(&v172, v52);
    v78 = *(v76 + 16);
    v79 = v147[0];
    v78(v147[0], v75, v77);
    v80 = v79;
    swift_storeEnumTagMultiPayload();
    v81 = sub_217005EF4();
    v172 = 0u;
    v173 = 0u;
    v174 = 0;
    __swift_storeEnumTagSinglePayload(v53, 1, 1, v81);
    v82 = type metadata accessor for Page.Header(0);
    __swift_storeEnumTagSinglePayload(v54, 1, 1, v82);
    v83 = type metadata accessor for ReferrerInfo();
    __swift_storeEnumTagSinglePayload(v55, 1, 1, v83);
    v84 = type metadata accessor for FlowAction(0);
    v85 = v168;
    v168[3] = v84;
    v85[4] = sub_216E09184(qword_280E45BB8, type metadata accessor for FlowAction);
    v86 = __swift_allocate_boxed_opaque_existential_1(v85);
    v87 = v86 + v84[10];
    *(v87 + 32) = 0;
    *v87 = 0u;
    *(v87 + 16) = 0u;
    v88 = v167;
    v89 = v163;
    (*(v167 + 16))();
    v90 = v80;
    sub_216E0907C();
    v91 = v164;
    sub_217006214();
    v92 = sub_2170061F4();
    v94 = v93;
    (*(v165 + 8))(v91, v166);
    sub_216E090D4(v90, type metadata accessor for FlowAction.Destination);
    (*(v88 + 8))(v162, v89);
    v95 = (v86 + v84[6]);
    *v95 = v92;
    v95[1] = v94;
    *(v86 + v84[7]) = 0;
    sub_2167A66B4(&v172, v87);
    sub_2167A4788();
    sub_2167A4788();
    sub_2167A4788();
    v49 = v156;
    v48 = *(v157 + 8);
    v51 = v158;
    return v48(v49, v51);
  }

  v96 = v167;
  if (v29 == *MEMORY[0x277D2A3C8] || v29 == *MEMORY[0x277D2A428] || v29 == *MEMORY[0x277D2A388] || v29 == *MEMORY[0x277D2A408] || v29 == *MEMORY[0x277D2A3B0] || v29 == *MEMORY[0x277D2A3B8])
  {
    goto LABEL_16;
  }

  if (v29 == *MEMORY[0x277D2A440])
  {
    (*(v26 + 96))(v28, v25);
    v98 = v154;
    v99 = v153;
    v100 = v28;
    v101 = v155;
    (*(v154 + 32))(v153, v100, v155);
    LOBYTE(v172) = 26;
    sub_216E08598(&v172, v52);
    v102 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB80B8) + 48);
    v103 = *(v98 + 16);
    v104 = v147[0];
    v103(v147[0], v99, v101);
    v105 = sub_21700C8E4();
    __swift_storeEnumTagSinglePayload(v104 + v102, 1, 1, v105);
    swift_storeEnumTagMultiPayload();
    v106 = sub_217005EF4();
    v172 = 0u;
    v173 = 0u;
    v174 = 0;
    __swift_storeEnumTagSinglePayload(v53, 1, 1, v106);
    v107 = type metadata accessor for Page.Header(0);
    __swift_storeEnumTagSinglePayload(v54, 1, 1, v107);
    v108 = type metadata accessor for ReferrerInfo();
    __swift_storeEnumTagSinglePayload(v55, 1, 1, v108);
    v109 = type metadata accessor for FlowAction(0);
    v110 = v168;
    v168[3] = v109;
    v110[4] = sub_216E09184(qword_280E45BB8, type metadata accessor for FlowAction);
    v111 = __swift_allocate_boxed_opaque_existential_1(v110);
    v112 = v111 + v109[10];
    *(v112 + 32) = 0;
    *v112 = 0u;
    *(v112 + 16) = 0u;
    v113 = *(v96 + 16);
    v162 = v52;
    v114 = v96;
    v115 = v163;
    v113();
    sub_216E0907C();
    v116 = v164;
    sub_217006214();
    v117 = sub_2170061F4();
    v119 = v118;
    (*(v165 + 8))(v116, v166);
    sub_216E090D4(v104, type metadata accessor for FlowAction.Destination);
    (*(v114 + 8))(v162, v115);
    v120 = (v111 + v109[6]);
    *v120 = v117;
    v120[1] = v119;
    *(v111 + v109[7]) = 0;
    sub_2167A66B4(&v172, v112);
    sub_2167A4788();
    sub_2167A4788();
    sub_2167A4788();
    v48 = *(v154 + 8);
    v49 = v153;
    v50 = &v177;
    goto LABEL_3;
  }

  if (v29 == *MEMORY[0x277D2A3E8])
  {
    (*(v26 + 96))(v28, v25);
    v121 = v151;
    v122 = v150;
    v123 = v28;
    v124 = v152;
    (*(v151 + 32))(v150, v123, v152);
    LOBYTE(v172) = 27;
    sub_216E08598(&v172, v52);
    v125 = *(v121 + 16);
    v126 = v147[0];
    v125(v147[0], v122, v124);
    v127 = v126;
    swift_storeEnumTagMultiPayload();
    v128 = sub_217005EF4();
    v172 = 0u;
    v173 = 0u;
    v174 = 0;
    __swift_storeEnumTagSinglePayload(v53, 1, 1, v128);
    v129 = type metadata accessor for Page.Header(0);
    __swift_storeEnumTagSinglePayload(v54, 1, 1, v129);
    v130 = type metadata accessor for ReferrerInfo();
    __swift_storeEnumTagSinglePayload(v55, 1, 1, v130);
    v131 = type metadata accessor for FlowAction(0);
    v132 = v168;
    v168[3] = v131;
    v132[4] = sub_216E09184(qword_280E45BB8, type metadata accessor for FlowAction);
    v133 = __swift_allocate_boxed_opaque_existential_1(v132);
    v134 = v133 + v131[10];
    *(v134 + 32) = 0;
    *v134 = 0u;
    *(v134 + 16) = 0u;
    v135 = *(v96 + 16);
    v162 = v52;
    v136 = v96;
    v137 = v163;
    v135();
    sub_216E0907C();
    v138 = v164;
    sub_217006214();
    v139 = sub_2170061F4();
    v141 = v140;
    (*(v165 + 8))(v138, v166);
    sub_216E090D4(v127, type metadata accessor for FlowAction.Destination);
    (*(v136 + 8))(v162, v137);
    v142 = (v133 + v131[6]);
    *v142 = v139;
    v142[1] = v141;
    *(v133 + v131[7]) = 0;
    sub_2167A66B4(&v172, v134);
    sub_2167A4788();
    sub_2167A4788();
    sub_2167A4788();
    v48 = *(v151 + 8);
    v49 = v150;
    v50 = &v176;
    goto LABEL_3;
  }

  if (v29 == *MEMORY[0x277D2A450])
  {
    goto LABEL_16;
  }

  v143 = v168;
  if (v29 == *MEMORY[0x277D2A3C0] || v29 == *MEMORY[0x277D2A3D0])
  {
    v168[4] = 0;
    *v143 = 0u;
    *(v143 + 1) = 0u;
    return (*(v26 + 8))(v28, v25);
  }

  if (v29 == *MEMORY[0x277D2A3F8] || v29 == *MEMORY[0x277D2A430] || v29 == *MEMORY[0x277D2A458] || v29 == *MEMORY[0x277D2A448] || v29 == *MEMORY[0x277D2A420] || v29 == *MEMORY[0x277D2A3D8] || v29 == *MEMORY[0x277D2A3E0])
  {
LABEL_16:
    v97 = v168;
    v168[4] = 0;
    *v97 = 0u;
    *(v97 + 1) = 0u;
    return (*(v26 + 8))(v28, v25);
  }

  v144 = (v26 + 8);
  if (v29 == *MEMORY[0x277D2A410])
  {
    result = (*v144)(v28, v25);
    v145 = v168;
    v168[4] = 0;
    *v145 = 0u;
    *(v145 + 1) = 0u;
  }

  else
  {
    v146 = v168;
    v168[4] = 0;
    *v146 = 0u;
    *(v146 + 1) = 0u;
    return (*v144)(v28, v25);
  }

  return result;
}

uint64_t sub_216E01584(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_21700D284();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = type metadata accessor for AddRecentSearchMusicItemAction();
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v9 + 20);
  v13 = sub_2170067A4();
  (*(*(v13 - 8) + 16))(&v11[v12], a1, v13);
  sub_21700D234();
  sub_21700CE54();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3BE0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_217013D90;
  *(v14 + 56) = v8;
  *(v14 + 64) = sub_216E09184(&qword_280E47F78, type metadata accessor for AddRecentSearchMusicItemAction);
  __swift_allocate_boxed_opaque_existential_1((v14 + 32));
  sub_216E0907C();
  *(v14 + 96) = a2;
  *(v14 + 104) = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v14 + 72));
  (*(*(a2 - 8) + 16))(boxed_opaque_existential_1, v3, a2);
  sub_21700D394();
  return sub_216E090D4(v11, type metadata accessor for AddRecentSearchMusicItemAction);
}

uint64_t sub_216E017AC@<X0>(_BYTE *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v7 = sub_21700D3B4();
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_7();
  v13 = v12 - v11;
  if (*a1 == 1)
  {
    sub_216E01950(a2 & 1, v21);
  }

  else
  {
    sub_216E07128(a2 & 1, v21);
  }

  sub_2166A6EA4();
  v14 = v19;
  if (v19)
  {
    v15 = v20;
    __swift_project_boxed_opaque_existential_1(v18, v19);
    sub_216E01584(v3, v14, v15);
    sub_216E07D74();
    (*(v9 + 8))(v13, v7);
    sub_216697664(v21, &qword_27CAB6DB0);
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    v16 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_22_55(v21);
    OUTLINED_FUNCTION_22_55(v18);
    v16 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a3, v16, 1, v7);
}

uint64_t sub_216E01950@<X0>(int a1@<W0>, uint64_t *a2@<X8>)
{
  LODWORD(v633) = a1;
  v634 = a2;
  v546 = sub_2170070F4();
  v544 = *(v546 - 8);
  v2 = MEMORY[0x28223BE20](v546);
  v545 = &v536 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v547 = &v536 - v4;
  v553 = sub_217007064();
  v551 = *(v553 - 8);
  v5 = MEMORY[0x28223BE20](v553);
  v552 = &v536 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v554 = &v536 - v7;
  v565 = sub_2170073D4();
  v564 = *(v565 - 8);
  v8 = MEMORY[0x28223BE20](v565);
  v563 = &v536 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v566 = &v536 - v10;
  v580 = sub_21700C084();
  v579 = *(v580 - 8);
  v11 = MEMORY[0x28223BE20](v580);
  v578 = &v536 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v581 = &v536 - v13;
  v574 = sub_21700C644();
  v573 = *(v574 - 8);
  v14 = MEMORY[0x28223BE20](v574);
  v569 = &v536 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v572 = &v536 - v16;
  v591 = sub_21700C924();
  v590 = *(v591 - 8);
  v17 = MEMORY[0x28223BE20](v591);
  v588 = &v536 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v589 = &v536 - v19;
  v600 = sub_21700BA44();
  v599 = *(v600 - 8);
  v20 = MEMORY[0x28223BE20](v600);
  v598 = &v536 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v597 = &v536 - v22;
  v607 = sub_217006B84();
  v606 = *(v607 - 8);
  v23 = MEMORY[0x28223BE20](v607);
  v605 = &v536 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v604 = &v536 - v25;
  v610 = type metadata accessor for ContentDescriptor();
  MEMORY[0x28223BE20](v610);
  v615 = &v536 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v618 = sub_21700C384();
  v617 = *(v618 - 1);
  MEMORY[0x28223BE20](v618);
  v616 = &v536 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v623 = sub_21700CFB4();
  v624 = *(v623 - 8);
  MEMORY[0x28223BE20](v623);
  v622 = &v536 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v627 = sub_217005EF4();
  v613 = *(v627 - 8);
  v29 = MEMORY[0x28223BE20](v627);
  v538 = &v536 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v539 = &v536 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v555 = &v536 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v561 = &v536 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v556 = &v536 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v582 = &v536 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v586 = &v536 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v593 = &v536 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v608 = &v536 - v46;
  MEMORY[0x28223BE20](v45);
  v611 = &v536 - v47;
  v620 = sub_21700D704();
  v621 = *(v620 - 8);
  v48 = MEMORY[0x28223BE20](v620);
  v543 = &v536 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = MEMORY[0x28223BE20](v48);
  v550 = &v536 - v51;
  v52 = MEMORY[0x28223BE20](v50);
  v562 = &v536 - v53;
  v54 = MEMORY[0x28223BE20](v52);
  v577 = &v536 - v55;
  v56 = MEMORY[0x28223BE20](v54);
  v571 = &v536 - v57;
  v58 = MEMORY[0x28223BE20](v56);
  v587 = &v536 - v59;
  v60 = MEMORY[0x28223BE20](v58);
  v596 = &v536 - v61;
  v62 = MEMORY[0x28223BE20](v60);
  v603 = &v536 - v63;
  v64 = MEMORY[0x28223BE20](v62);
  v612 = &v536 - v65;
  v66 = MEMORY[0x28223BE20](v64);
  v619 = &v536 - v67;
  MEMORY[0x28223BE20](v66);
  v631 = &v536 - v68;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820);
  v70 = MEMORY[0x28223BE20](v69 - 8);
  v540 = &v536 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = MEMORY[0x28223BE20](v70);
  v542 = &v536 - v73;
  v74 = MEMORY[0x28223BE20](v72);
  v548 = &v536 - v75;
  v76 = MEMORY[0x28223BE20](v74);
  v549 = &v536 - v77;
  v78 = MEMORY[0x28223BE20](v76);
  v558 = &v536 - v79;
  v80 = MEMORY[0x28223BE20](v78);
  v560 = &v536 - v81;
  v82 = MEMORY[0x28223BE20](v80);
  v568 = &v536 - v83;
  v84 = MEMORY[0x28223BE20](v82);
  v575 = &v536 - v85;
  v86 = MEMORY[0x28223BE20](v84);
  v567 = &v536 - v87;
  v88 = MEMORY[0x28223BE20](v86);
  v570 = &v536 - v89;
  v90 = MEMORY[0x28223BE20](v88);
  v583 = &v536 - v91;
  v92 = MEMORY[0x28223BE20](v90);
  v584 = &v536 - v93;
  v94 = MEMORY[0x28223BE20](v92);
  v592 = &v536 - v95;
  v96 = MEMORY[0x28223BE20](v94);
  v594 = &v536 - v97;
  v98 = MEMORY[0x28223BE20](v96);
  v100 = &v536 - v99;
  v101 = MEMORY[0x28223BE20](v98);
  v601 = &v536 - v102;
  v103 = MEMORY[0x28223BE20](v101);
  v105 = &v536 - v104;
  v106 = MEMORY[0x28223BE20](v103);
  v614 = &v536 - v107;
  v108 = MEMORY[0x28223BE20](v106);
  v110 = &v536 - v109;
  MEMORY[0x28223BE20](v108);
  v628 = &v536 - v111;
  v112 = sub_21700D284();
  v113 = *(v112 - 8);
  v625 = v112;
  v626 = v113;
  v114 = MEMORY[0x28223BE20](v112);
  v116 = &v536 - ((v115 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = MEMORY[0x28223BE20](v114);
  v541 = &v536 - v118;
  v119 = MEMORY[0x28223BE20](v117);
  v557 = &v536 - v120;
  v121 = MEMORY[0x28223BE20](v119);
  v576 = &v536 - v122;
  v123 = MEMORY[0x28223BE20](v121);
  v559 = &v536 - v124;
  v125 = MEMORY[0x28223BE20](v123);
  v585 = &v536 - v126;
  v127 = MEMORY[0x28223BE20](v125);
  v595 = &v536 - v128;
  v129 = MEMORY[0x28223BE20](v127);
  v602 = &v536 - v130;
  v131 = MEMORY[0x28223BE20](v129);
  v609 = &v536 - v132;
  MEMORY[0x28223BE20](v131);
  v630 = &v536 - v133;
  v134 = sub_21700C1E4();
  v135 = *(v134 - 8);
  v136 = MEMORY[0x28223BE20](v134);
  v629 = &v536 - ((v137 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v136);
  v139 = &v536 - v138;
  v140 = sub_2170067A4();
  v141 = *(v140 - 8);
  MEMORY[0x28223BE20](v140);
  v143 = &v536 - ((v142 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v141 + 16))(v143, v632, v140);
  v144 = (*(v141 + 88))(v143, v140);
  if (v144 == *MEMORY[0x277D2A400])
  {
    (*(v141 + 96))(v143, v140);
    v145 = *(v135 + 32);
    v145(v139, v143, v134);
    if (v633)
    {
      v618 = v145;
      v632 = (v135 + 32);
      v633 = sub_21700C0B4();
      if (!v146)
      {
        v633 = sub_21700C164();
      }

      v617 = v146;
      v147 = v627;
      (*(v135 + 16))(v629, v139, v134);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810);
      v148 = swift_allocObject();
      *(v148 + 16) = xmmword_217015230;
      *(v148 + 32) = 1684957547;
      *(v148 + 40) = 0xE400000000000000;
      v149 = MEMORY[0x277D837D0];
      *(v148 + 48) = 0x6D75626C61;
      *(v148 + 56) = 0xE500000000000000;
      *(v148 + 72) = v149;
      strcpy((v148 + 80), "lyricSnippet");
      *(v148 + 93) = 0;
      *(v148 + 94) = -5120;
      *(v148 + 96) = 0;
      *(v148 + 104) = 0xE000000000000000;
      *(v148 + 120) = v149;
      *(v148 + 128) = 0x614E747369747261;
      *(v148 + 136) = 0xEA0000000000656DLL;
      v150 = sub_21700C0C4();
      *(v148 + 168) = v149;
      *(v148 + 144) = v150;
      *(v148 + 152) = v151;
      v152 = sub_21700E384();
      __swift_storeEnumTagSinglePayload(v628, 1, 1, v147);
      sub_21700D6F4();
      v638 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20);
      *&v637 = v152;
      sub_2166EF9C4(&v637, &v636);
      v153 = MEMORY[0x277D84F98];
      swift_isUniquelyReferenced_nonNull_native();
      v635 = v153;
      sub_2166EF9D4();
      v154 = v635;
      v638 = v149;
      *&v637 = 2036427888;
      *(&v637 + 1) = 0xE400000000000000;
      sub_2166EF9C4(&v637, &v636);
      swift_isUniquelyReferenced_nonNull_native();
      v635 = v154;
      sub_2166EF9D4();
      v155 = v635;
      sub_2166A6EA4();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v110, 1, v147);
      v537 = v135;
      if (EnumTagSinglePayload == 1)
      {
        sub_216697664(v110, &qword_27CABA820);
      }

      else
      {
        v178 = v613;
        v179 = v611;
        (*(v613 + 32))(v611, v110, v147);
        v180 = sub_217005DE4();
        v638 = v149;
        *&v637 = v180;
        *(&v637 + 1) = v181;
        sub_2166EF9C4(&v637, &v636);
        swift_isUniquelyReferenced_nonNull_native();
        v635 = v155;
        sub_2166EF9D4();
        v155 = v635;
        (*(v178 + 8))(v179, v147);
      }

      v627 = v134;
      if (qword_280E46040 != -1)
      {
        swift_once();
      }

      v182 = sub_21700CF84();
      v183 = __swift_project_value_buffer(v182, qword_280E73DB0);
      v184 = v622;
      v185 = v617;
      MEMORY[0x21CE9DD70](v633, v617, 0x4C746E65746E6F43, 0xEF6D657449747369, v155, v183);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E20);
      v186 = v624;
      v187 = (*(v624 + 80) + 32) & ~*(v624 + 80);
      v188 = swift_allocObject();
      *(v188 + 16) = xmmword_217013DA0;
      v189 = v188 + v187;
      v190 = v623;
      (*(v186 + 16))(v189, v184, v623);
      v191 = v621;
      v192 = v631;
      v193 = v620;
      (*(v621 + 16))(v619, v631, v620);
      sub_21700D244();
      (*(v186 + 8))(v184, v190);
      (*(v191 + 8))(v192, v193);
      sub_216697664(v628, &qword_27CABA820);
      v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6F20);
      v195 = v634;
      v634[3] = v194;
      v195[4] = sub_216E09028(&qword_27CAB6F28, &qword_27CAB6F20);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v195);
      v197 = (boxed_opaque_existential_1 + v194[13]);
      v198 = type metadata accessor for OpenFinancePageAction(0);
      v197[3] = v198;
      v197[4] = sub_216E09184(qword_280E3A550, type metadata accessor for OpenFinancePageAction);
      v199 = __swift_allocate_boxed_opaque_existential_1(v197);
      v200 = (v199 + v198[5]);
      v201 = v633;
      *v200 = v633;
      v200[1] = v185;
      *(v199 + v198[6]) = 2;
      type metadata accessor for OpenFinancePageAction.Kind(0);
      swift_storeEnumTagMultiPayload();
      sub_21700DF14();
      v202 = MEMORY[0x277D837D0];
      v203 = sub_21700E384();
      v638 = v202;
      *&v637 = v201;
      *(&v637 + 1) = v185;
      sub_2166EF9C4(&v637, &v636);
      swift_isUniquelyReferenced_nonNull_native();
      v635 = v203;
      sub_2166EF9D4();
      v204 = v635;
      v638 = v202;
      *&v637 = 0x6D75626C61;
      *(&v637 + 1) = 0xE500000000000000;
      sub_2166EF9C4(&v637, &v636);
      swift_isUniquelyReferenced_nonNull_native();
      v635 = v204;
      sub_2166EF9D4();
      *(v199 + v198[8]) = v635;
      sub_21700D234();
      *(v199 + v198[7]) = 0;
      *(v199 + v198[9]) = 0;
      v205 = v627;
      (*(v537 + 8))(v139, v627);
      v618(boxed_opaque_existential_1, v629, v205);
      *(boxed_opaque_existential_1 + v194[9]) = 0;
      result = (*(v626 + 32))(boxed_opaque_existential_1 + v194[10], v630, v625);
      *(boxed_opaque_existential_1 + v194[11]) = 0;
      v206 = v194[12];
      goto LABEL_24;
    }

    result = (*(v135 + 8))(v139, v134);
    goto LABEL_26;
  }

  v157 = v633;
  if (v144 != *MEMORY[0x277D2A418])
  {
    if (v144 == *MEMORY[0x277D2A438] || v144 == *MEMORY[0x277D2A3C8] || v144 == *MEMORY[0x277D2A428] || v144 == *MEMORY[0x277D2A388] || v144 == *MEMORY[0x277D2A408])
    {
      goto LABEL_19;
    }

    if (v144 == *MEMORY[0x277D2A3B0])
    {
      (*(v141 + 96))(v143, v140);
      v225 = v604;
      v632 = *(v606 + 32);
      v633 = v606 + 32;
      v632(v604, v143, v607);
      v226 = sub_217006B74();
      if (v227)
      {
        v228 = v226;
        v229 = v227;
        v230 = v613;
      }

      else
      {
        v230 = v613;
        v228 = sub_217006B24();
        v229 = v247;
      }

      (*(v606 + 16))(v605, v225, v607);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810);
      v248 = swift_allocObject();
      *(v248 + 16) = xmmword_217015230;
      *(v248 + 32) = 1684957547;
      *(v248 + 40) = 0xE400000000000000;
      v249 = MEMORY[0x277D837D0];
      *(v248 + 48) = 0x6569766F6DLL;
      *(v248 + 56) = 0xE500000000000000;
      *(v248 + 72) = v249;
      strcpy((v248 + 80), "lyricSnippet");
      *(v248 + 93) = 0;
      *(v248 + 94) = -5120;
      *(v248 + 96) = 0;
      *(v248 + 104) = 0xE000000000000000;
      *(v248 + 120) = v249;
      *(v248 + 128) = 0x614E747369747261;
      *(v248 + 168) = v249;
      *(v248 + 136) = 0xEA0000000000656DLL;
      *(v248 + 144) = 16718;
      *(v248 + 152) = 0xE200000000000000;
      v250 = sub_21700E384();
      v251 = v627;
      __swift_storeEnumTagSinglePayload(v601, 1, 1, v627);
      sub_21700D6F4();
      v638 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20);
      *&v637 = v250;
      sub_2166EF9C4(&v637, &v636);
      v252 = MEMORY[0x277D84F98];
      swift_isUniquelyReferenced_nonNull_native();
      v635 = v252;
      sub_2166EF9D4();
      v253 = v635;
      v638 = v249;
      *&v637 = 0x657461676976616ELL;
      *(&v637 + 1) = 0xE800000000000000;
      sub_2166EF9C4(&v637, &v636);
      swift_isUniquelyReferenced_nonNull_native();
      v635 = v253;
      sub_2166EF9D4();
      v254 = v635;
      sub_2166A6EA4();
      if (__swift_getEnumTagSinglePayload(v100, 1, v251) == 1)
      {
        sub_216697664(v100, &qword_27CABA820);
      }

      else
      {
        v255 = v593;
        (*(v230 + 32))(v593, v100, v251);
        v256 = sub_217005DE4();
        v638 = v249;
        *&v637 = v256;
        *(&v637 + 1) = v257;
        sub_2166EF9C4(&v637, &v636);
        swift_isUniquelyReferenced_nonNull_native();
        v635 = v254;
        sub_2166EF9D4();
        v254 = v635;
        (*(v230 + 8))(v255, v251);
      }

      if (qword_280E46040 != -1)
      {
        swift_once();
      }

      v258 = sub_21700CF84();
      v259 = __swift_project_value_buffer(v258, qword_280E73DB0);
      v260 = v622;
      MEMORY[0x21CE9DD70](v228, v229, 0x4C746E65746E6F43, 0xEF6D657449747369, v254, v259);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E20);
      v261 = v624;
      v262 = (*(v624 + 80) + 32) & ~*(v624 + 80);
      v263 = swift_allocObject();
      *(v263 + 16) = xmmword_217013DA0;
      v264 = v263 + v262;
      v265 = v623;
      (*(v261 + 16))(v264, v260, v623);
      v266 = v621;
      v267 = v603;
      v268 = v620;
      (*(v621 + 16))(v619, v603, v620);
      sub_21700D244();
      (*(v261 + 8))(v260, v265);
      (*(v266 + 8))(v267, v268);
      sub_216697664(v601, &qword_27CABA820);
      v269 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6EF0);
      v270 = v634;
      v634[3] = v269;
      v270[4] = sub_216E09028(&qword_27CAB6EF8, &qword_27CAB6EF0);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v270);
      v271 = (boxed_opaque_existential_1 + v269[13]);
      v272 = type metadata accessor for OpenFinancePageAction(0);
      v271[3] = v272;
      v271[4] = sub_216E09184(qword_280E3A550, type metadata accessor for OpenFinancePageAction);
      v273 = __swift_allocate_boxed_opaque_existential_1(v271);
      v274 = (v273 + v272[5]);
      *v274 = v228;
      v274[1] = v229;
      *(v273 + v272[6]) = 2;
      type metadata accessor for OpenFinancePageAction.Kind(0);
      swift_storeEnumTagMultiPayload();
      sub_21700DF14();
      v275 = MEMORY[0x277D837D0];
      v276 = sub_21700E384();
      v638 = v275;
      *&v637 = v228;
      *(&v637 + 1) = v229;
      sub_2166EF9C4(&v637, &v636);
      swift_isUniquelyReferenced_nonNull_native();
      v635 = v276;
      sub_2166EF9D4();
      v277 = v635;
      v638 = v275;
      *&v637 = 0x6569766F6DLL;
      *(&v637 + 1) = 0xE500000000000000;
      sub_2166EF9C4(&v637, &v636);
      swift_isUniquelyReferenced_nonNull_native();
      v635 = v277;
      sub_2166EF9D4();
      *(v273 + v272[8]) = v635;
      sub_21700D234();
      *(v273 + v272[7]) = 0;
      *(v273 + v272[9]) = 0;
      v278 = v607;
      (*(v606 + 8))(v604, v607);
      v632(boxed_opaque_existential_1, v605, v278);
      *(boxed_opaque_existential_1 + v269[9]) = 0;
      result = (*(v626 + 32))(boxed_opaque_existential_1 + v269[10], v602, v625);
      *(boxed_opaque_existential_1 + v269[11]) = 0;
      v206 = v269[12];
      goto LABEL_24;
    }

    if (v144 == *MEMORY[0x277D2A3B8])
    {
      (*(v141 + 96))(v143, v140);
      v231 = v597;
      v632 = *(v599 + 32);
      v633 = v599 + 32;
      v632(v597, v143, v600);
      v232 = sub_21700B994();
      if (v233)
      {
        v234 = v232;
        v235 = v233;
        v236 = v613;
      }

      else
      {
        v236 = v613;
        v234 = sub_21700B9F4();
        v235 = v299;
      }

      (*(v599 + 16))(v598, v231, v600);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810);
      v300 = swift_allocObject();
      *(v300 + 16) = xmmword_217015230;
      *(v300 + 32) = 1684957547;
      *(v300 + 40) = 0xE400000000000000;
      v301 = MEMORY[0x277D837D0];
      *(v300 + 48) = 0x69765F636973756DLL;
      *(v300 + 56) = 0xEB000000006F6564;
      *(v300 + 72) = v301;
      strcpy((v300 + 80), "lyricSnippet");
      *(v300 + 93) = 0;
      *(v300 + 94) = -5120;
      *(v300 + 96) = 0;
      *(v300 + 104) = 0xE000000000000000;
      *(v300 + 120) = v301;
      *(v300 + 128) = 0x614E747369747261;
      *(v300 + 168) = v301;
      *(v300 + 136) = 0xEA0000000000656DLL;
      *(v300 + 144) = 16718;
      *(v300 + 152) = 0xE200000000000000;
      v302 = sub_21700E384();
      v303 = v627;
      __swift_storeEnumTagSinglePayload(v594, 1, 1, v627);
      sub_21700D6F4();
      v638 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20);
      *&v637 = v302;
      sub_2166EF9C4(&v637, &v636);
      v304 = MEMORY[0x277D84F98];
      swift_isUniquelyReferenced_nonNull_native();
      v635 = v304;
      sub_2166EF9D4();
      v305 = v635;
      v638 = v301;
      *&v637 = 0x657461676976616ELL;
      *(&v637 + 1) = 0xE800000000000000;
      sub_2166EF9C4(&v637, &v636);
      swift_isUniquelyReferenced_nonNull_native();
      v635 = v305;
      sub_2166EF9D4();
      v306 = v635;
      v307 = v592;
      sub_2166A6EA4();
      if (__swift_getEnumTagSinglePayload(v307, 1, v303) == 1)
      {
        sub_216697664(v307, &qword_27CABA820);
      }

      else
      {
        v308 = v586;
        (*(v236 + 32))(v586, v307, v303);
        v309 = sub_217005DE4();
        v638 = v301;
        *&v637 = v309;
        *(&v637 + 1) = v310;
        sub_2166EF9C4(&v637, &v636);
        swift_isUniquelyReferenced_nonNull_native();
        v635 = v306;
        sub_2166EF9D4();
        v306 = v635;
        (*(v236 + 8))(v308, v303);
      }

      if (qword_280E46040 != -1)
      {
        swift_once();
      }

      v311 = sub_21700CF84();
      v312 = __swift_project_value_buffer(v311, qword_280E73DB0);
      v313 = v622;
      MEMORY[0x21CE9DD70](v234, v235, 0x4C746E65746E6F43, 0xEF6D657449747369, v306, v312);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E20);
      v314 = v624;
      v315 = (*(v624 + 80) + 32) & ~*(v624 + 80);
      v316 = swift_allocObject();
      *(v316 + 16) = xmmword_217013DA0;
      v317 = v316 + v315;
      v318 = v623;
      (*(v314 + 16))(v317, v313, v623);
      v319 = v234;
      v320 = v621;
      v321 = v596;
      v322 = v620;
      (*(v621 + 16))(v619, v596, v620);
      sub_21700D244();
      (*(v314 + 8))(v313, v318);
      (*(v320 + 8))(v321, v322);
      sub_216697664(v594, &qword_27CABA820);
      v323 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6EB8);
      v324 = v634;
      v634[3] = v323;
      v324[4] = sub_216E09028(&qword_27CAB6EC0, &qword_27CAB6EB8);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v324);
      v325 = (boxed_opaque_existential_1 + v323[13]);
      v326 = type metadata accessor for OpenFinancePageAction(0);
      v325[3] = v326;
      v325[4] = sub_216E09184(qword_280E3A550, type metadata accessor for OpenFinancePageAction);
      v327 = __swift_allocate_boxed_opaque_existential_1(v325);
      v328 = (v327 + v326[5]);
      *v328 = v319;
      v328[1] = v235;
      *(v327 + v326[6]) = 2;
      type metadata accessor for OpenFinancePageAction.Kind(0);
      swift_storeEnumTagMultiPayload();
      sub_21700DF14();
      v329 = MEMORY[0x277D837D0];
      v330 = sub_21700E384();
      v638 = v329;
      *&v637 = v319;
      *(&v637 + 1) = v235;
      sub_2166EF9C4(&v637, &v636);
      swift_isUniquelyReferenced_nonNull_native();
      v635 = v330;
      sub_2166EF9D4();
      v331 = v635;
      v638 = v329;
      *&v637 = 0x646956636973756DLL;
      *(&v637 + 1) = 0xEA00000000006F65;
      sub_2166EF9C4(&v637, &v636);
      swift_isUniquelyReferenced_nonNull_native();
      v635 = v331;
      sub_2166EF9D4();
      *(v327 + v326[8]) = v635;
      sub_21700D234();
      *(v327 + v326[7]) = 0;
      *(v327 + v326[9]) = 0;
      v332 = v600;
      (*(v599 + 8))(v597, v600);
      v632(boxed_opaque_existential_1, v598, v332);
      *(boxed_opaque_existential_1 + v323[9]) = 0;
      result = (*(v626 + 32))(boxed_opaque_existential_1 + v323[10], v595, v625);
      *(boxed_opaque_existential_1 + v323[11]) = 0;
      v206 = v323[12];
      goto LABEL_24;
    }

    if (v144 == *MEMORY[0x277D2A440])
    {
      (*(v141 + 96))(v143, v140);
      v237 = v590;
      v239 = (v590 + 32);
      v238 = *(v590 + 32);
      v240 = v589;
      v241 = v591;
      v238(v589, v143, v591);
      if ((v157 & 1) == 0)
      {
        result = (*(v237 + 8))(v240, v241);
        goto LABEL_26;
      }

      v632 = v239;
      v633 = v238;
      v242 = sub_21700C764();
      if (v243)
      {
        v244 = v242;
        v245 = v243;
        v246 = v613;
      }

      else
      {
        v246 = v613;
        v244 = sub_21700C7C4();
        v245 = v333;
      }

      (*(v237 + 16))(v588, v240, v241);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810);
      v334 = swift_allocObject();
      *(v334 + 16) = xmmword_217015230;
      *(v334 + 32) = 1684957547;
      *(v334 + 40) = 0xE400000000000000;
      v335 = MEMORY[0x277D837D0];
      *(v334 + 48) = 0x7473696C79616C70;
      *(v334 + 56) = 0xE800000000000000;
      *(v334 + 72) = v335;
      strcpy((v334 + 80), "lyricSnippet");
      *(v334 + 93) = 0;
      *(v334 + 94) = -5120;
      *(v334 + 96) = 0;
      *(v334 + 104) = 0xE000000000000000;
      *(v334 + 120) = v335;
      *(v334 + 128) = 0x614E747369747261;
      *(v334 + 168) = v335;
      *(v334 + 136) = 0xEA0000000000656DLL;
      *(v334 + 144) = 16718;
      *(v334 + 152) = 0xE200000000000000;
      v336 = sub_21700E384();
      v337 = v627;
      __swift_storeEnumTagSinglePayload(v584, 1, 1, v627);
      sub_21700D6F4();
      v638 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20);
      *&v637 = v336;
      sub_2166EF9C4(&v637, &v636);
      v338 = MEMORY[0x277D84F98];
      swift_isUniquelyReferenced_nonNull_native();
      v635 = v338;
      sub_2166EF9D4();
      v339 = v635;
      v638 = v335;
      *&v637 = 2036427888;
      *(&v637 + 1) = 0xE400000000000000;
      sub_2166EF9C4(&v637, &v636);
      swift_isUniquelyReferenced_nonNull_native();
      v635 = v339;
      sub_2166EF9D4();
      v340 = v635;
      v341 = v583;
      sub_2166A6EA4();
      if (__swift_getEnumTagSinglePayload(v341, 1, v337) == 1)
      {
        sub_216697664(v341, &qword_27CABA820);
      }

      else
      {
        v342 = v582;
        (*(v246 + 32))(v582, v341, v337);
        v343 = sub_217005DE4();
        v638 = v335;
        *&v637 = v343;
        *(&v637 + 1) = v344;
        sub_2166EF9C4(&v637, &v636);
        swift_isUniquelyReferenced_nonNull_native();
        v635 = v340;
        sub_2166EF9D4();
        v340 = v635;
        (*(v246 + 8))(v342, v337);
      }

      if (qword_280E46040 != -1)
      {
        swift_once();
      }

      v345 = sub_21700CF84();
      v346 = __swift_project_value_buffer(v345, qword_280E73DB0);
      v347 = v622;
      MEMORY[0x21CE9DD70](v244, v245, 0x4C746E65746E6F43, 0xEF6D657449747369, v340, v346);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E20);
      v348 = v624;
      v349 = (*(v624 + 80) + 32) & ~*(v624 + 80);
      v350 = swift_allocObject();
      *(v350 + 16) = xmmword_217013DA0;
      v351 = v350 + v349;
      v352 = v623;
      (*(v348 + 16))(v351, v347, v623);
      v353 = v244;
      v354 = v621;
      v355 = v587;
      v356 = v620;
      (*(v621 + 16))(v619, v587, v620);
      sub_21700D244();
      (*(v348 + 8))(v347, v352);
      (*(v354 + 8))(v355, v356);
      sub_216697664(v584, &qword_27CABA820);
      v357 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E90);
      v358 = v634;
      v634[3] = v357;
      v358[4] = sub_216E09028(&qword_27CAB6E98, &qword_27CAB6E90);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v358);
      v359 = (boxed_opaque_existential_1 + v357[13]);
      v360 = type metadata accessor for OpenFinancePageAction(0);
      v359[3] = v360;
      v359[4] = sub_216E09184(qword_280E3A550, type metadata accessor for OpenFinancePageAction);
      v361 = __swift_allocate_boxed_opaque_existential_1(v359);
      v362 = (v361 + v360[5]);
      *v362 = v353;
      v362[1] = v245;
      *(v361 + v360[6]) = 2;
      type metadata accessor for OpenFinancePageAction.Kind(0);
      swift_storeEnumTagMultiPayload();
      sub_21700DF14();
      v363 = MEMORY[0x277D837D0];
      v364 = sub_21700E384();
      v638 = v363;
      *&v637 = v353;
      *(&v637 + 1) = v245;
      sub_2166EF9C4(&v637, &v636);
      swift_isUniquelyReferenced_nonNull_native();
      v635 = v364;
      sub_2166EF9D4();
      v365 = v635;
      v638 = v363;
      *&v637 = 0x7473696C79616C70;
      *(&v637 + 1) = 0xE800000000000000;
      sub_2166EF9C4(&v637, &v636);
      swift_isUniquelyReferenced_nonNull_native();
      v635 = v365;
      sub_2166EF9D4();
      *(v361 + v360[8]) = v635;
      sub_21700D234();
      *(v361 + v360[7]) = 0;
      *(v361 + v360[9]) = 0;
      v366 = v591;
      (*(v590 + 8))(v589, v591);
      (v633)(boxed_opaque_existential_1, v588, v366);
      *(boxed_opaque_existential_1 + v357[9]) = 0;
      result = (*(v626 + 32))(boxed_opaque_existential_1 + v357[10], v585, v625);
LABEL_76:
      *(boxed_opaque_existential_1 + v357[11]) = 0;
      v206 = v357[12];
LABEL_24:
      *(boxed_opaque_existential_1 + v206) = 0;
      return result;
    }

    if (v144 != *MEMORY[0x277D2A450] && v144 != *MEMORY[0x277D2A3C0] && v144 != *MEMORY[0x277D2A3D0])
    {
      if (v144 == *MEMORY[0x277D2A3F8])
      {
        v279 = v613;
        (*(v141 + 96))(v143, v140);
        v632 = *(v579 + 32);
        v633 = v579 + 32;
        v632(v581, v143, v580);
        v280 = sub_21700BF44();
        if (!v281)
        {
          v280 = sub_21700BFF4();
        }

        v282 = v280;
        v283 = v281;
        (*(v579 + 16))(v578, v581, v580);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810);
        v284 = swift_allocObject();
        *(v284 + 16) = xmmword_217015230;
        *(v284 + 32) = 1684957547;
        *(v284 + 40) = 0xE400000000000000;
        v285 = MEMORY[0x277D837D0];
        *(v284 + 48) = 1735290739;
        *(v284 + 56) = 0xE400000000000000;
        *(v284 + 72) = v285;
        strcpy((v284 + 80), "lyricSnippet");
        *(v284 + 93) = 0;
        *(v284 + 94) = -5120;
        v286 = sub_21700BF24();
        if (v287)
        {
          v288 = v286;
        }

        else
        {
          v288 = 0;
        }

        v289 = 0xE000000000000000;
        if (v287)
        {
          v289 = v287;
        }

        *(v284 + 96) = v288;
        *(v284 + 104) = v289;
        *(v284 + 120) = v285;
        *(v284 + 128) = 0x614E747369747261;
        *(v284 + 136) = 0xEA0000000000656DLL;
        v290 = sub_21700BF64();
        *(v284 + 168) = v285;
        *(v284 + 144) = v290;
        *(v284 + 152) = v291;
        v292 = sub_21700E384();
        v293 = v627;
        __swift_storeEnumTagSinglePayload(v575, 1, 1, v627);
        sub_21700D6F4();
        v638 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20);
        *&v637 = v292;
        sub_2166EF9C4(&v637, &v636);
        v294 = MEMORY[0x277D84F98];
        swift_isUniquelyReferenced_nonNull_native();
        v635 = v294;
        sub_2166EF9D4();
        v295 = v635;
        v638 = v285;
        *&v637 = 2036427888;
        *(&v637 + 1) = 0xE400000000000000;
        sub_2166EF9C4(&v637, &v636);
        swift_isUniquelyReferenced_nonNull_native();
        v635 = v295;
        sub_2166EF9D4();
        v296 = v635;
        v638 = v285;
        *&v637 = 0x73676E6F73;
        *(&v637 + 1) = 0xE500000000000000;
        sub_2166EF9C4(&v637, &v636);
        swift_isUniquelyReferenced_nonNull_native();
        v635 = v296;
        sub_2166EF9D4();
        v297 = v635;
        v298 = v568;
        sub_2166A6EA4();
        if (__swift_getEnumTagSinglePayload(v298, 1, v293) == 1)
        {
          sub_216697664(v298, &qword_27CABA820);
        }

        else
        {
          v381 = v561;
          v382 = v627;
          (*(v279 + 32))(v561, v298, v627);
          v383 = sub_217005DE4();
          v638 = MEMORY[0x277D837D0];
          *&v637 = v383;
          *(&v637 + 1) = v384;
          sub_2166EF9C4(&v637, &v636);
          swift_isUniquelyReferenced_nonNull_native();
          v635 = v297;
          sub_2166EF9D4();
          v297 = v635;
          (*(v279 + 8))(v381, v382);
        }

        if (qword_280E46040 != -1)
        {
          swift_once();
        }

        v385 = sub_21700CF84();
        v386 = __swift_project_value_buffer(v385, qword_280E73DB0);
        v387 = v622;
        MEMORY[0x21CE9DD70](v282, v283, 0x4C746E65746E6F43, 0xEF6D657449747369, v297, v386);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E20);
        v388 = v624;
        v389 = (*(v624 + 80) + 32) & ~*(v624 + 80);
        v390 = swift_allocObject();
        *(v390 + 16) = xmmword_217013DA0;
        v391 = v390 + v389;
        v392 = v623;
        (*(v388 + 16))(v391, v387, v623);
        v393 = v621;
        v394 = v577;
        v395 = v620;
        (*(v621 + 16))(v619, v577, v620);
        sub_21700D244();
        (*(v388 + 8))(v387, v392);
        (*(v393 + 8))(v394, v395);
        sub_216697664(v575, &qword_27CABA820);
        v357 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9E58);
        v396 = v634;
        v634[3] = v357;
        v396[4] = sub_216E09028(qword_280E47CA0, &qword_27CAC9E58);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v396);
        v397 = (boxed_opaque_existential_1 + v357[13]);
        v398 = type metadata accessor for OpenFinancePageAction(0);
        v397[3] = v398;
        v397[4] = sub_216E09184(qword_280E3A550, type metadata accessor for OpenFinancePageAction);
        v399 = __swift_allocate_boxed_opaque_existential_1(v397);
        v400 = (v399 + v398[5]);
        *v400 = v282;
        v400[1] = v283;
        *(v399 + v398[6]) = 2;
        type metadata accessor for OpenFinancePageAction.Kind(0);
        swift_storeEnumTagMultiPayload();
        sub_21700DF14();
        v401 = MEMORY[0x277D837D0];
        v402 = sub_21700E384();
        v638 = v401;
        *&v637 = v282;
        *(&v637 + 1) = v283;
        sub_2166EF9C4(&v637, &v636);
        swift_isUniquelyReferenced_nonNull_native();
        v635 = v402;
        sub_2166EF9D4();
        v403 = v635;
        v638 = v401;
        *&v637 = 1735290739;
        *(&v637 + 1) = 0xE400000000000000;
        sub_2166EF9C4(&v637, &v636);
        swift_isUniquelyReferenced_nonNull_native();
        v635 = v403;
        sub_2166EF9D4();
        *(v399 + v398[8]) = v635;
        sub_21700D234();
        *(v399 + v398[7]) = 0;
        *(v399 + v398[9]) = 0;
        v404 = v580;
        (*(v579 + 8))(v581, v580);
        v632(boxed_opaque_existential_1, v578, v404);
        *(boxed_opaque_existential_1 + v357[9]) = 0;
        result = (*(v626 + 32))(boxed_opaque_existential_1 + v357[10], v576, v625);
        goto LABEL_76;
      }

      if (v144 == *MEMORY[0x277D2A430])
      {
        (*(v141 + 96))(v143, v140);
        v367 = v573;
        v368 = v572;
        v369 = v574;
        v633 = *(v573 + 32);
        (v633)(v572, v143, v574);
        (*(v367 + 16))(v569, v368, v369);
        v370 = sub_21700C604();
        v372 = v371;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810);
        v373 = swift_allocObject();
        *(v373 + 16) = xmmword_217015230;
        *(v373 + 32) = 1684957547;
        *(v373 + 40) = 0xE400000000000000;
        v374 = MEMORY[0x277D837D0];
        strcpy((v373 + 48), "radioStation");
        *(v373 + 61) = 0;
        *(v373 + 62) = -5120;
        *(v373 + 72) = v374;
        strcpy((v373 + 80), "lyricSnippet");
        *(v373 + 93) = 0;
        *(v373 + 94) = -5120;
        *(v373 + 96) = 0;
        *(v373 + 104) = 0xE000000000000000;
        *(v373 + 120) = v374;
        *(v373 + 128) = 0x614E747369747261;
        *(v373 + 168) = v374;
        *(v373 + 136) = 0xEA0000000000656DLL;
        *(v373 + 144) = 16718;
        *(v373 + 152) = 0xE200000000000000;
        v375 = sub_21700E384();
        v376 = v627;
        __swift_storeEnumTagSinglePayload(v570, 1, 1, v627);
        sub_21700D6F4();
        v638 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20);
        *&v637 = v375;
        sub_2166EF9C4(&v637, &v636);
        v377 = MEMORY[0x277D84F98];
        swift_isUniquelyReferenced_nonNull_native();
        v635 = v377;
        sub_2166EF9D4();
        v378 = v635;
        v638 = v374;
        *&v637 = 2036427888;
        *(&v637 + 1) = 0xE400000000000000;
        sub_2166EF9C4(&v637, &v636);
        swift_isUniquelyReferenced_nonNull_native();
        v635 = v378;
        sub_2166EF9D4();
        v379 = v635;
        v380 = v567;
        sub_2166A6EA4();
        if (__swift_getEnumTagSinglePayload(v380, 1, v376) == 1)
        {
          sub_216697664(v567, &qword_27CABA820);
        }

        else
        {
          v419 = v613;
          v420 = v556;
          v421 = v627;
          (*(v613 + 32))(v556, v567, v627);
          v422 = sub_217005DE4();
          v638 = v374;
          *&v637 = v422;
          *(&v637 + 1) = v423;
          sub_2166EF9C4(&v637, &v636);
          swift_isUniquelyReferenced_nonNull_native();
          v635 = v379;
          sub_2166EF9D4();
          v379 = v635;
          (*(v419 + 8))(v420, v421);
        }

        if (qword_280E46040 != -1)
        {
          swift_once();
        }

        v424 = sub_21700CF84();
        v425 = __swift_project_value_buffer(v424, qword_280E73DB0);
        v426 = v622;
        MEMORY[0x21CE9DD70](v370, v372, 0x4C746E65746E6F43, 0xEF6D657449747369, v379, v425);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E20);
        v427 = v624;
        v428 = (*(v624 + 80) + 32) & ~*(v624 + 80);
        v429 = swift_allocObject();
        *(v429 + 16) = xmmword_217013DA0;
        v430 = v429 + v428;
        v431 = v623;
        (*(v427 + 16))(v430, v426, v623);
        v432 = v621;
        v433 = v571;
        v434 = v620;
        (*(v621 + 16))(v619, v571, v620);
        v435 = v559;
        sub_21700D244();
        (*(v427 + 8))(v426, v431);
        (*(v432 + 8))(v433, v434);
        sub_216697664(v570, &qword_27CABA820);
        (*(v573 + 8))(v572, v574);
        v436 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E50);
        v437 = v634;
        v634[3] = v436;
        v437[4] = sub_216E09028(&qword_27CAB6E58, &qword_27CAB6E50);
        v438 = __swift_allocate_boxed_opaque_existential_1(v437);
        v439 = v438 + v436[13];
        *(v439 + 4) = 0;
        *v439 = 0u;
        *(v439 + 1) = 0u;
        (v633)();
        *(v438 + v436[9]) = 0;
        result = (*(v626 + 32))(v438 + v436[10], v435, v625);
        goto LABEL_95;
      }

      if (v144 == *MEMORY[0x277D2A458])
      {
        (*(v141 + 96))(v143, v140);
        v631 = *(v564 + 32);
        v632 = (v564 + 32);
        (v631)(v566, v143, v565);
        v633 = sub_2170073C4();
        if (!v405)
        {
          v633 = sub_217007374();
        }

        v406 = v405;
        (*(v564 + 16))(v563, v566, v565);
        v407 = sub_2170073C4();
        if (!v408)
        {
          v407 = sub_217007374();
        }

        v409 = v407;
        v410 = v408;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810);
        v411 = swift_allocObject();
        *(v411 + 16) = xmmword_217015230;
        *(v411 + 32) = 1684957547;
        *(v411 + 40) = 0xE400000000000000;
        v412 = MEMORY[0x277D837D0];
        *(v411 + 48) = 0x646F736970457674;
        *(v411 + 56) = 0xE900000000000065;
        v630 = 0xE900000000000065;
        *(v411 + 72) = v412;
        strcpy((v411 + 80), "lyricSnippet");
        *(v411 + 93) = 0;
        *(v411 + 94) = -5120;
        *(v411 + 96) = 0;
        *(v411 + 104) = 0xE000000000000000;
        *(v411 + 120) = v412;
        *(v411 + 128) = 0x614E747369747261;
        *(v411 + 168) = v412;
        *(v411 + 136) = 0xEA0000000000656DLL;
        *(v411 + 144) = 16718;
        *(v411 + 152) = 0xE200000000000000;
        v413 = sub_21700E384();
        v414 = v627;
        __swift_storeEnumTagSinglePayload(v560, 1, 1, v627);
        sub_21700D6F4();
        v638 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20);
        *&v637 = v413;
        sub_2166EF9C4(&v637, &v636);
        v415 = MEMORY[0x277D84F98];
        swift_isUniquelyReferenced_nonNull_native();
        v635 = v415;
        sub_2166EF9D4();
        v416 = v635;
        v638 = v412;
        *&v637 = 0x657461676976616ELL;
        *(&v637 + 1) = 0xE800000000000000;
        sub_2166EF9C4(&v637, &v636);
        swift_isUniquelyReferenced_nonNull_native();
        v635 = v416;
        sub_2166EF9D4();
        v417 = v635;
        v418 = v558;
        sub_2166A6EA4();
        if (__swift_getEnumTagSinglePayload(v418, 1, v414) == 1)
        {
          sub_216697664(v558, &qword_27CABA820);
        }

        else
        {
          v455 = v613;
          v456 = v555;
          v457 = v627;
          (*(v613 + 32))(v555, v558, v627);
          v458 = sub_217005DE4();
          v638 = MEMORY[0x277D837D0];
          *&v637 = v458;
          *(&v637 + 1) = v459;
          sub_2166EF9C4(&v637, &v636);
          swift_isUniquelyReferenced_nonNull_native();
          v635 = v417;
          sub_2166EF9D4();
          v417 = v635;
          (*(v455 + 8))(v456, v457);
        }

        if (qword_280E46040 != -1)
        {
          swift_once();
        }

        v460 = sub_21700CF84();
        v461 = __swift_project_value_buffer(v460, qword_280E73DB0);
        v462 = v622;
        MEMORY[0x21CE9DD70](v409, v410, 0x4C746E65746E6F43, 0xEF6D657449747369, v417, v461);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E20);
        v463 = v624;
        v464 = (*(v624 + 80) + 32) & ~*(v624 + 80);
        v465 = swift_allocObject();
        *(v465 + 16) = xmmword_217013DA0;
        v466 = v465 + v464;
        v467 = v623;
        (*(v463 + 16))(v466, v462, v623);
        v468 = v621;
        v469 = v562;
        v470 = v620;
        (*(v621 + 16))(v619, v562, v620);
        v471 = v557;
        sub_21700D244();
        (*(v463 + 8))(v462, v467);
        (*(v468 + 8))(v469, v470);
        sub_216697664(v560, &qword_27CABA820);
        v357 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9E48);
        v472 = v634;
        v634[3] = v357;
        v472[4] = sub_216E09028(&qword_27CAC9E50, &qword_27CAC9E48);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v472);
        v473 = (boxed_opaque_existential_1 + v357[13]);
        v474 = type metadata accessor for OpenFinancePageAction(0);
        v473[3] = v474;
        v473[4] = sub_216E09184(qword_280E3A550, type metadata accessor for OpenFinancePageAction);
        v475 = __swift_allocate_boxed_opaque_existential_1(v473);
        v476 = (v475 + v474[5]);
        v477 = v633;
        *v476 = v633;
        v476[1] = v406;
        *(v475 + v474[6]) = 2;
        type metadata accessor for OpenFinancePageAction.Kind(0);
        swift_storeEnumTagMultiPayload();
        sub_21700DF14();
        v478 = MEMORY[0x277D837D0];
        v479 = sub_21700E384();
        v638 = v478;
        *&v637 = v477;
        *(&v637 + 1) = v406;
        sub_2166EF9C4(&v637, &v636);
        swift_isUniquelyReferenced_nonNull_native();
        v635 = v479;
        sub_2166EF9D4();
        v480 = v635;
        v638 = v478;
        *&v637 = 0x646F736970457674;
        *(&v637 + 1) = v630;
        sub_2166EF9C4(&v637, &v636);
        swift_isUniquelyReferenced_nonNull_native();
        v635 = v480;
        sub_2166EF9D4();
        *(v475 + v474[8]) = v635;
        sub_21700D234();
        *(v475 + v474[7]) = 0;
        *(v475 + v474[9]) = 0;
        v481 = v565;
        (*(v564 + 8))(v566, v565);
        (v631)(boxed_opaque_existential_1, v563, v481);
        *(boxed_opaque_existential_1 + v357[9]) = 0;
        result = (*(v626 + 32))(boxed_opaque_existential_1 + v357[10], v471, v625);
        goto LABEL_76;
      }

      if (v144 != *MEMORY[0x277D2A448] && v144 != *MEMORY[0x277D2A420])
      {
        if (v144 == *MEMORY[0x277D2A3D8])
        {
          (*(v141 + 96))(v143, v140);
          v440 = v551;
          v441 = v554;
          v442 = v553;
          v633 = *(v551 + 32);
          (v633)(v554, v143, v553);
          (*(v440 + 16))(v552, v441, v442);
          v443 = sub_217007054();
          if (!v444)
          {
            v443 = sub_217007024();
          }

          v445 = v443;
          v446 = v444;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810);
          v447 = swift_allocObject();
          *(v447 + 16) = xmmword_217015230;
          *(v447 + 32) = 1684957547;
          *(v447 + 40) = 0xE400000000000000;
          v448 = MEMORY[0x277D837D0];
          strcpy((v447 + 48), "uploaded_audio");
          *(v447 + 63) = -18;
          *(v447 + 72) = v448;
          strcpy((v447 + 80), "lyricSnippet");
          *(v447 + 93) = 0;
          *(v447 + 94) = -5120;
          *(v447 + 96) = 0;
          *(v447 + 104) = 0xE000000000000000;
          *(v447 + 120) = v448;
          *(v447 + 128) = 0x614E747369747261;
          *(v447 + 168) = v448;
          *(v447 + 136) = 0xEA0000000000656DLL;
          *(v447 + 144) = 16718;
          *(v447 + 152) = 0xE200000000000000;
          v449 = sub_21700E384();
          v450 = v627;
          __swift_storeEnumTagSinglePayload(v549, 1, 1, v627);
          sub_21700D6F4();
          v638 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20);
          *&v637 = v449;
          sub_2166EF9C4(&v637, &v636);
          v451 = MEMORY[0x277D84F98];
          swift_isUniquelyReferenced_nonNull_native();
          v635 = v451;
          sub_2166EF9D4();
          v452 = v635;
          v638 = v448;
          *&v637 = 0x657461676976616ELL;
          *(&v637 + 1) = 0xE800000000000000;
          sub_2166EF9C4(&v637, &v636);
          swift_isUniquelyReferenced_nonNull_native();
          v635 = v452;
          sub_2166EF9D4();
          v453 = v635;
          v454 = v548;
          sub_2166A6EA4();
          if (__swift_getEnumTagSinglePayload(v454, 1, v450) == 1)
          {
            sub_216697664(v548, &qword_27CABA820);
          }

          else
          {
            v498 = v613;
            v499 = v539;
            v500 = v627;
            (*(v613 + 32))(v539, v548, v627);
            v501 = sub_217005DE4();
            v638 = v448;
            *&v637 = v501;
            *(&v637 + 1) = v502;
            sub_2166EF9C4(&v637, &v636);
            swift_isUniquelyReferenced_nonNull_native();
            v635 = v453;
            sub_2166EF9D4();
            v453 = v635;
            (*(v498 + 8))(v499, v500);
          }

          if (qword_280E46040 != -1)
          {
            swift_once();
          }

          v503 = sub_21700CF84();
          v504 = __swift_project_value_buffer(v503, qword_280E73DB0);
          v505 = v622;
          MEMORY[0x21CE9DD70](v445, v446, 0x4C746E65746E6F43, 0xEF6D657449747369, v453, v504);

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E20);
          v506 = v624;
          v507 = (*(v624 + 80) + 32) & ~*(v624 + 80);
          v508 = swift_allocObject();
          *(v508 + 16) = xmmword_217013DA0;
          v509 = v508 + v507;
          v510 = v623;
          (*(v506 + 16))(v509, v505, v623);
          v511 = v621;
          v512 = v550;
          v513 = v620;
          (*(v621 + 16))(v619, v550, v620);
          v482 = v541;
          sub_21700D244();
          (*(v506 + 8))(v505, v510);
          (*(v511 + 8))(v512, v513);
          sub_216697664(v549, &qword_27CABA820);
          (*(v551 + 8))(v554, v553);
          v436 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9E38);
          v514 = v634;
          v634[3] = v436;
          v514[4] = sub_216E09028(&qword_27CAC9E40, &qword_27CAC9E38);
          v438 = __swift_allocate_boxed_opaque_existential_1(v514);
          v515 = v438 + v436[13];
          *(v515 + 4) = 0;
          *v515 = 0u;
          *(v515 + 1) = 0u;
        }

        else
        {
          if (v144 != *MEMORY[0x277D2A3E0])
          {
            v516 = (v141 + 8);
            if (v144 != *MEMORY[0x277D2A410])
            {
              v535 = v634;
              v634[4] = 0;
              *v535 = 0u;
              *(v535 + 1) = 0u;
              return (*v516)(v143, v140);
            }

            result = (*v516)(v143, v140);
LABEL_26:
            v207 = v634;
            v634[4] = 0;
            *v207 = 0u;
            *(v207 + 1) = 0u;
            return result;
          }

          v482 = v116;
          (*(v141 + 96))(v143, v140);
          v483 = v544;
          v484 = v547;
          v485 = v546;
          v633 = *(v544 + 32);
          (v633)(v547, v143, v546);
          (*(v483 + 16))(v545, v484, v485);
          v486 = sub_2170070E4();
          if (!v487)
          {
            v486 = sub_2170070B4();
          }

          v488 = v486;
          v489 = v487;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810);
          v490 = swift_allocObject();
          *(v490 + 16) = xmmword_217015230;
          *(v490 + 32) = 1684957547;
          *(v490 + 40) = 0xE400000000000000;
          v491 = MEMORY[0x277D837D0];
          strcpy((v490 + 48), "uploaded_video");
          *(v490 + 63) = -18;
          *(v490 + 72) = v491;
          strcpy((v490 + 80), "lyricSnippet");
          *(v490 + 93) = 0;
          *(v490 + 94) = -5120;
          *(v490 + 96) = 0;
          *(v490 + 104) = 0xE000000000000000;
          *(v490 + 120) = v491;
          *(v490 + 128) = 0x614E747369747261;
          *(v490 + 168) = v491;
          *(v490 + 136) = 0xEA0000000000656DLL;
          *(v490 + 144) = 16718;
          *(v490 + 152) = 0xE200000000000000;
          v492 = sub_21700E384();
          v493 = v627;
          __swift_storeEnumTagSinglePayload(v542, 1, 1, v627);
          sub_21700D6F4();
          v638 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20);
          *&v637 = v492;
          sub_2166EF9C4(&v637, &v636);
          v494 = MEMORY[0x277D84F98];
          swift_isUniquelyReferenced_nonNull_native();
          v635 = v494;
          sub_2166EF9D4();
          v495 = v635;
          v638 = v491;
          *&v637 = 0x657461676976616ELL;
          *(&v637 + 1) = 0xE800000000000000;
          sub_2166EF9C4(&v637, &v636);
          swift_isUniquelyReferenced_nonNull_native();
          v635 = v495;
          sub_2166EF9D4();
          v496 = v635;
          v497 = v540;
          sub_2166A6EA4();
          if (__swift_getEnumTagSinglePayload(v497, 1, v493) == 1)
          {
            sub_216697664(v540, &qword_27CABA820);
          }

          else
          {
            v517 = v613;
            v518 = v538;
            v519 = v627;
            (*(v613 + 32))(v538, v540, v627);
            v520 = sub_217005DE4();
            v638 = v491;
            *&v637 = v520;
            *(&v637 + 1) = v521;
            sub_2166EF9C4(&v637, &v636);
            swift_isUniquelyReferenced_nonNull_native();
            v635 = v496;
            sub_2166EF9D4();
            v496 = v635;
            (*(v517 + 8))(v518, v519);
          }

          if (qword_280E46040 != -1)
          {
            swift_once();
          }

          v522 = sub_21700CF84();
          v523 = __swift_project_value_buffer(v522, qword_280E73DB0);
          v524 = v622;
          MEMORY[0x21CE9DD70](v488, v489, 0x4C746E65746E6F43, 0xEF6D657449747369, v496, v523);

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E20);
          v525 = v624;
          v526 = (*(v624 + 80) + 32) & ~*(v624 + 80);
          v527 = swift_allocObject();
          *(v527 + 16) = xmmword_217013DA0;
          v528 = v527 + v526;
          v529 = v623;
          (*(v525 + 16))(v528, v524, v623);
          v530 = v621;
          v531 = v543;
          v532 = v620;
          (*(v621 + 16))(v619, v543, v620);
          sub_21700D244();
          (*(v525 + 8))(v524, v529);
          (*(v530 + 8))(v531, v532);
          sub_216697664(v542, &qword_27CABA820);
          (*(v544 + 8))(v547, v546);
          v436 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E40);
          v533 = v634;
          v634[3] = v436;
          v533[4] = sub_216E09028(&qword_27CAB6E48, &qword_27CAB6E40);
          v438 = __swift_allocate_boxed_opaque_existential_1(v533);
          v534 = v438 + v436[13];
          *(v534 + 4) = 0;
          *v534 = 0u;
          *(v534 + 1) = 0u;
        }

        (v633)();
        *(v438 + v436[9]) = 0;
        result = (*(v626 + 32))(v438 + v436[10], v482, v625);
LABEL_95:
        *(v438 + v436[11]) = 0;
        *(v438 + v436[12]) = 0;
        return result;
      }
    }

LABEL_19:
    v177 = v634;
    v634[4] = 0;
    *v177 = 0u;
    *(v177 + 1) = 0u;
    return (*(v141 + 8))(v143, v140);
  }

  (*(v141 + 96))(v143, v140);
  v158 = v617;
  v159 = v616;
  v160 = v618;
  (*(v617 + 32))(v616, v143, v618);
  if ((v157 & 1) == 0)
  {
    result = (*(v158 + 8))(v159, v160);
    goto LABEL_26;
  }

  v161 = sub_21700C324();
  if (!v162)
  {
    v161 = sub_21700C344();
  }

  v163 = v161;
  v164 = v162;
  v165 = v615;
  v166 = v627;
  __swift_storeEnumTagSinglePayload(&v615[*(v610 + 24)], 1, 1, v627);
  *v165 = 5;
  *(v165 + 8) = 0u;
  *(v165 + 24) = 0u;
  *(v165 + 40) = 0u;
  *(v165 + 56) = 0u;
  *(v165 + 72) = 0u;
  v633 = v163;
  *(v165 + 11) = v163;
  *(v165 + 12) = v164;
  *(v165 + 13) = 0;
  v165[112] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810);
  v167 = swift_allocObject();
  *(v167 + 16) = xmmword_217015230;
  v168 = MEMORY[0x277D837D0];
  *(v167 + 32) = 1684957547;
  *(v167 + 40) = 0xE400000000000000;
  *(v167 + 48) = 0x747369747261;
  *(v167 + 56) = 0xE600000000000000;
  *(v167 + 72) = v168;
  strcpy((v167 + 80), "lyricSnippet");
  *(v167 + 93) = 0;
  *(v167 + 94) = -5120;
  *(v167 + 96) = 0;
  *(v167 + 104) = 0xE000000000000000;
  *(v167 + 120) = v168;
  *(v167 + 128) = 0x614E747369747261;
  *(v167 + 136) = 0xEA0000000000656DLL;
  sub_21700DF14();
  v169 = sub_21700C364();
  *(v167 + 168) = v168;
  *(v167 + 144) = v169;
  *(v167 + 152) = v170;
  v171 = sub_21700E384();
  __swift_storeEnumTagSinglePayload(v614, 1, 1, v166);
  v172 = v612;
  sub_21700D6F4();
  v638 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20);
  *&v637 = v171;
  sub_2166EF9C4(&v637, &v636);
  v173 = MEMORY[0x277D84F98];
  swift_isUniquelyReferenced_nonNull_native();
  v635 = v173;
  sub_2166EF9D4();
  v174 = v635;
  v638 = v168;
  *&v637 = 2036427888;
  *(&v637 + 1) = 0xE400000000000000;
  sub_2166EF9C4(&v637, &v636);
  swift_isUniquelyReferenced_nonNull_native();
  v635 = v174;
  sub_2166EF9D4();
  v175 = v635;
  sub_2166A6EA4();
  if (__swift_getEnumTagSinglePayload(v105, 1, v166) == 1)
  {
    sub_216697664(v105, &qword_27CABA820);
  }

  else
  {
    v208 = v613;
    v209 = v608;
    (*(v613 + 32))(v608, v105, v166);
    v210 = sub_217005DE4();
    v638 = v168;
    *&v637 = v210;
    *(&v637 + 1) = v211;
    sub_2166EF9C4(&v637, &v636);
    swift_isUniquelyReferenced_nonNull_native();
    v635 = v175;
    sub_2166EF9D4();
    v175 = v635;
    (*(v208 + 8))(v209, v166);
  }

  v212 = v633;
  if (qword_280E46040 != -1)
  {
    swift_once();
  }

  v213 = sub_21700CF84();
  v214 = __swift_project_value_buffer(v213, qword_280E73DB0);
  v215 = v622;
  MEMORY[0x21CE9DD70](v212, v164, 0x4C746E65746E6F43, 0xEF6D657449747369, v175, v214);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E20);
  v216 = v624;
  v217 = (*(v624 + 80) + 32) & ~*(v624 + 80);
  v218 = swift_allocObject();
  *(v218 + 16) = xmmword_217013DA0;
  v219 = v218 + v217;
  v220 = v623;
  (*(v216 + 16))(v219, v215, v623);
  v221 = v621;
  v222 = v620;
  (*(v621 + 16))(v619, v172, v620);
  sub_21700D244();
  (*(v216 + 8))(v215, v220);
  (*(v221 + 8))(v172, v222);
  sub_216697664(v614, &qword_27CABA820);
  (*(v617 + 8))(v616, v618);
  ArtistStationAction = type metadata accessor for CreateArtistStationAction();
  v224 = v634;
  v634[3] = ArtistStationAction;
  v224[4] = sub_216E09184(qword_280E35A98, type metadata accessor for CreateArtistStationAction);
  __swift_allocate_boxed_opaque_existential_1(v224);
  (*(v626 + 32))();
  return sub_216E0912C();
}

uint64_t sub_216E07128@<X0>(int a1@<W0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v71 = a1;
  v72 = a2;
  v4 = sub_2170073D4();
  v53 = *(v4 - 8);
  v54 = v4;
  MEMORY[0x28223BE20](v4);
  v52 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21700C084();
  v59 = *(v6 - 8);
  v60 = v6;
  MEMORY[0x28223BE20](v6);
  v58 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21700C644();
  v56 = *(v8 - 8);
  v57 = v8;
  MEMORY[0x28223BE20](v8);
  v55 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21700C924();
  v62 = *(v10 - 8);
  v63 = v10;
  MEMORY[0x28223BE20](v10);
  v61 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_21700BA44();
  v65 = *(v12 - 8);
  v66 = v12;
  MEMORY[0x28223BE20](v12);
  v64 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_217006B84();
  v68 = *(v14 - 8);
  v69 = v14;
  MEMORY[0x28223BE20](v14);
  v67 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_21700C384();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_21700C1E4();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v52 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_2170067A4();
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v27 = &v52 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *(v25 + 16);
  v70 = v3;
  v28(v27, v3, v24);
  v29 = (*(v25 + 88))(v27, v24);
  if (v29 == *MEMORY[0x277D2A400])
  {
    (*(v25 + 96))(v27, v24);
    (*(v21 + 32))(v23, v27, v20);
    if (v71)
    {
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6F20);
      v31 = v72;
      v72[3] = v30;
      v31[4] = sub_216E09028(&qword_27CAB6F28, &qword_27CAB6F20);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v31);
      (*(v21 + 16))(boxed_opaque_existential_1, v23, v20);
      sub_216E07F10(boxed_opaque_existential_1 + v30[10]);
      result = (*(v21 + 8))(v23, v20);
      v34 = boxed_opaque_existential_1 + v30[13];
      *(v34 + 4) = 0;
      *v34 = 0u;
      *(v34 + 1) = 0u;
      *(boxed_opaque_existential_1 + v30[9]) = 0;
      *(boxed_opaque_existential_1 + v30[11]) = 0;
      *(boxed_opaque_existential_1 + v30[12]) = 0;
      return result;
    }

    result = (*(v21 + 8))(v23, v20);
    goto LABEL_7;
  }

  v35 = v71;
  if (v29 == *MEMORY[0x277D2A418])
  {
    (*(v25 + 96))(v27, v24);
    (*(v17 + 32))(v19, v27, v16);
    v36 = type metadata accessor for PlayLibraryArtistAction();
    v37 = v72;
    v72[3] = v36;
    v37[4] = sub_216E09184(qword_280E37A80, type metadata accessor for PlayLibraryArtistAction);
    v38 = __swift_allocate_boxed_opaque_existential_1(v37);
    (*(v17 + 16))(v38, v19, v16);
    sub_216E07F10(v38 + *(v36 + 20));
    return (*(v17 + 8))(v19, v16);
  }

  if (v29 == *MEMORY[0x277D2A438] || v29 == *MEMORY[0x277D2A3C8] || v29 == *MEMORY[0x277D2A428] || v29 == *MEMORY[0x277D2A388] || v29 == *MEMORY[0x277D2A408])
  {
    goto LABEL_13;
  }

  if (v29 == *MEMORY[0x277D2A3B0])
  {
    (*(v25 + 96))(v27, v24);
    v42 = v67;
    v41 = v68;
    v43 = v69;
    (*(v68 + 32))(v67, v27, v69);
    v44 = &qword_27CAB6EF0;
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6EF0);
    v46 = v72;
    v72[3] = v45;
    v47 = &qword_27CAB6EF8;
LABEL_19:
    v46[4] = sub_216E09028(v47, v44);
    v48 = __swift_allocate_boxed_opaque_existential_1(v46);
    (*(v41 + 16))(v48, v42, v43);
    sub_216E07F10(v48 + v45[10]);
    result = (*(v41 + 8))(v42, v43);
    v49 = v48 + v45[13];
    *(v49 + 4) = 0;
    *v49 = 0u;
    *(v49 + 1) = 0u;
    *(v48 + v45[9]) = 0;
    *(v48 + v45[11]) = 0;
    *(v48 + v45[12]) = 0;
    return result;
  }

  if (v29 == *MEMORY[0x277D2A3B8])
  {
    (*(v25 + 96))(v27, v24);
    v42 = v64;
    v41 = v65;
    v43 = v66;
    (*(v65 + 32))(v64, v27, v66);
    v44 = &qword_27CAB6EB8;
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6EB8);
    v46 = v72;
    v72[3] = v45;
    v47 = &qword_27CAB6EC0;
    goto LABEL_19;
  }

  if (v29 == *MEMORY[0x277D2A440])
  {
    (*(v25 + 96))(v27, v24);
    v42 = v61;
    v41 = v62;
    v43 = v63;
    (*(v62 + 32))(v61, v27, v63);
    if (v35)
    {
      v44 = &qword_27CAB6E90;
      v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E90);
      v46 = v72;
      v72[3] = v45;
      v47 = &qword_27CAB6E98;
      goto LABEL_19;
    }

    result = (*(v41 + 8))(v42, v43);
LABEL_7:
    v39 = v72;
    v72[4] = 0;
    *v39 = 0u;
    *(v39 + 1) = 0u;
    return result;
  }

  if (v29 != *MEMORY[0x277D2A450] && v29 != *MEMORY[0x277D2A3C0] && v29 != *MEMORY[0x277D2A3D0])
  {
    if (v29 == *MEMORY[0x277D2A3F8])
    {
      (*(v25 + 96))(v27, v24);
      v42 = v58;
      v41 = v59;
      v43 = v60;
      (*(v59 + 32))(v58, v27, v60);
      v44 = &qword_27CAC9E58;
      v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9E58);
      v46 = v72;
      v72[3] = v45;
      v47 = qword_280E47CA0;
      goto LABEL_19;
    }

    if (v29 == *MEMORY[0x277D2A430])
    {
      (*(v25 + 96))(v27, v24);
      v42 = v55;
      v41 = v56;
      v43 = v57;
      (*(v56 + 32))(v55, v27, v57);
      v44 = &qword_27CAB6E50;
      v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E50);
      v46 = v72;
      v72[3] = v45;
      v47 = &qword_27CAB6E58;
      goto LABEL_19;
    }

    if (v29 == *MEMORY[0x277D2A458])
    {
      (*(v25 + 96))(v27, v24);
      v42 = v52;
      v41 = v53;
      v43 = v54;
      (*(v53 + 32))(v52, v27, v54);
      v44 = &qword_27CAC9E48;
      v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC9E48);
      v46 = v72;
      v72[3] = v45;
      v47 = &qword_27CAC9E50;
      goto LABEL_19;
    }

    if (v29 != *MEMORY[0x277D2A448] && v29 != *MEMORY[0x277D2A420] && v29 != *MEMORY[0x277D2A3D8] && v29 != *MEMORY[0x277D2A3E0])
    {
      v50 = (v25 + 8);
      if (v29 != *MEMORY[0x277D2A410])
      {
        v51 = v72;
        v72[4] = 0;
        *v51 = 0u;
        *(v51 + 1) = 0u;
        return (*v50)(v27, v24);
      }

      result = (*v50)(v27, v24);
      goto LABEL_7;
    }
  }

LABEL_13:
  v40 = v72;
  v72[4] = 0;
  *v40 = 0u;
  *(v40 + 1) = 0u;
  return (*(v25 + 8))(v27, v24);
}

uint64_t sub_216E07D74()
{
  v0 = sub_21700D284();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = type metadata accessor for DismissSearchFocusAction();
  MEMORY[0x28223BE20](v1);
  v3 = v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21700D234();
  sub_21700D3A4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3BE0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_217013DA0;
  *(v4 + 56) = v1;
  *(v4 + 64) = sub_216E09184(qword_280E36AD0, type metadata accessor for DismissSearchFocusAction);
  __swift_allocate_boxed_opaque_existential_1((v4 + 32));
  sub_216E0907C();
  v5 = sub_21700D384();
  v7[1] = v4;
  sub_216BDD3CC(v5);
  sub_21700D394();
  return sub_216E090D4(v3, type metadata accessor for DismissSearchFocusAction);
}

uint64_t sub_216E07F10@<X0>(uint64_t a1@<X8>)
{
  v41 = a1;
  v42 = sub_21700CFB4();
  v1 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v40 = &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_217005EF4();
  v36 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_21700D704();
  v37 = *(v39 - 8);
  v6 = MEMORY[0x28223BE20](v39);
  v38 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v35 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v35 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_217013D90;
  *(inited + 32) = 1684957547;
  *(inited + 40) = 0xE400000000000000;
  v17 = MEMORY[0x277D837D0];
  *(inited + 48) = 0x497972617262696CLL;
  *(inited + 56) = 0xEB000000006D6574;
  *(inited + 72) = v17;
  *(inited + 80) = 0x614E747369747261;
  *(inited + 120) = v17;
  *(inited + 88) = 0xEA0000000000656DLL;
  *(inited + 96) = 0x497972617262696CLL;
  *(inited + 104) = 0xEB000000006D6574;
  v18 = sub_21700E384();
  __swift_storeEnumTagSinglePayload(v15, 1, 1, v3);
  sub_21700D6F4();
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20);
  *&v45 = v18;
  sub_2166EF9C4(&v45, v44);
  v19 = MEMORY[0x277D84F98];
  swift_isUniquelyReferenced_nonNull_native();
  v43 = v19;
  sub_2166EF9D4();
  v20 = v43;
  v46 = v17;
  *&v45 = 2036427888;
  *(&v45 + 1) = 0xE400000000000000;
  sub_2166EF9C4(&v45, v44);
  swift_isUniquelyReferenced_nonNull_native();
  v43 = v20;
  sub_2166EF9D4();
  v21 = v43;
  sub_2166A6EA4();
  if (__swift_getEnumTagSinglePayload(v13, 1, v3) == 1)
  {
    sub_216697664(v13, &qword_27CABA820);
  }

  else
  {
    v22 = v36;
    (*(v36 + 32))(v5, v13, v3);
    v23 = sub_217005DE4();
    v46 = v17;
    *&v45 = v23;
    *(&v45 + 1) = v24;
    sub_2166EF9C4(&v45, v44);
    swift_isUniquelyReferenced_nonNull_native();
    v43 = v21;
    sub_2166EF9D4();
    v21 = v43;
    (*(v22 + 8))(v5, v3);
  }

  if (qword_280E46040 != -1)
  {
    swift_once();
  }

  v25 = sub_21700CF84();
  v26 = __swift_project_value_buffer(v25, qword_280E73DB0);
  v27 = v40;
  MEMORY[0x21CE9DD70](0x497972617262696CLL, 0xEB000000006D6574, 0x4C746E65746E6F43, 0xEF6D657449747369, v21, v26);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E20);
  v28 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_217013DA0;
  v30 = v29 + v28;
  v31 = v42;
  (*(v1 + 16))(v30, v27, v42);
  v32 = v37;
  v33 = v39;
  (*(v37 + 16))(v38, v9, v39);
  sub_21700D244();
  (*(v1 + 8))(v27, v31);
  (*(v32 + 8))(v9, v33);
  return sub_216697664(v15, &qword_27CABA820);
}

uint64_t sub_216E08598@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v49 = sub_21700CFB4();
  v3 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v47 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_217005EF4();
  v43 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v42 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_21700D704();
  v45 = *(v46 - 8);
  v7 = MEMORY[0x28223BE20](v46);
  v44 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v41 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v41 - v15;
  v17 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_217013D90;
  *(inited + 32) = 1684957547;
  *(inited + 40) = 0xE400000000000000;
  v19 = MEMORY[0x277D837D0];
  *(inited + 48) = 0x497972617262696CLL;
  *(inited + 56) = 0xEB000000006D6574;
  *(inited + 72) = v19;
  *(inited + 80) = 0x614E747369747261;
  *(inited + 120) = v19;
  *(inited + 88) = 0xEA0000000000656DLL;
  *(inited + 96) = 0x497972617262696CLL;
  *(inited + 104) = 0xEB000000006D6574;
  v20 = sub_21700E384();
  __swift_storeEnumTagSinglePayload(v16, 1, 1, v5);
  sub_21700D6F4();
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20);
  *&v53 = v20;
  sub_2166EF9C4(&v53, v52);
  v21 = MEMORY[0x277D84F98];
  swift_isUniquelyReferenced_nonNull_native();
  v51 = v21;
  sub_2166EF9D4();
  v22 = v51;
  v54 = v19;
  *&v53 = 0x657461676976616ELL;
  *(&v53 + 1) = 0xE800000000000000;
  sub_2166EF9C4(&v53, v52);
  swift_isUniquelyReferenced_nonNull_native();
  v51 = v22;
  sub_2166EF9D4();
  v23 = v51;
  v50 = v17;
  MusicMetrics.FeatureName.rawValue.getter();
  v54 = v19;
  *&v53 = v24;
  *(&v53 + 1) = v25;
  sub_2166EF9C4(&v53, v52);
  swift_isUniquelyReferenced_nonNull_native();
  v51 = v23;
  sub_2166EF9D4();
  v26 = v51;
  sub_2166A6EA4();
  if (__swift_getEnumTagSinglePayload(v14, 1, v5) == 1)
  {
    sub_216697664(v14, &qword_27CABA820);
  }

  else
  {
    v27 = v43;
    v28 = v42;
    (*(v43 + 32))(v42, v14, v5);
    v29 = sub_217005DE4();
    v54 = v19;
    *&v53 = v29;
    *(&v53 + 1) = v30;
    sub_2166EF9C4(&v53, v52);
    swift_isUniquelyReferenced_nonNull_native();
    v51 = v26;
    sub_2166EF9D4();
    v26 = v51;
    (*(v27 + 8))(v28, v5);
  }

  if (qword_280E46040 != -1)
  {
    swift_once();
  }

  v31 = sub_21700CF84();
  v32 = __swift_project_value_buffer(v31, qword_280E73DB0);
  v33 = v47;
  MEMORY[0x21CE9DD70](0x497972617262696CLL, 0xEB000000006D6574, 0x4C746E65746E6F43, 0xEF6D657449747369, v26, v32);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E20);
  v34 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_217013DA0;
  v36 = v35 + v34;
  v37 = v49;
  (*(v3 + 16))(v36, v33, v49);
  v38 = v45;
  v39 = v46;
  (*(v45 + 16))(v44, v10, v46);
  sub_21700D244();
  (*(v3 + 8))(v33, v37);
  (*(v38 + 8))(v10, v39);
  return sub_216697664(v16, &qword_27CABA820);
}

uint64_t sub_216E08CA8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74E8);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v14 - v1;
  v3 = sub_2170061E4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217005B34();
  if (__swift_getEnumTagSinglePayload(v2, 1, v3) == 1)
  {
    sub_216697664(v2, &qword_27CAB74E8);
    return 0;
  }

  else
  {
    (*(v4 + 32))(v6, v2, v3);
    if (qword_27CAB60C0 != -1)
    {
      swift_once();
    }

    v8 = qword_27CAC9E28;
    v9 = sub_217006244();
    [v8 setLocale_];

    v10 = sub_21700E4D4();
    [v8 setLocalizedDateFormatFromTemplate_];

    v11 = sub_217006134();
    v12 = [v8 stringFromDate_];

    v7 = sub_21700E514();
    (*(v4 + 8))(v6, v3);
  }

  return v7;
}