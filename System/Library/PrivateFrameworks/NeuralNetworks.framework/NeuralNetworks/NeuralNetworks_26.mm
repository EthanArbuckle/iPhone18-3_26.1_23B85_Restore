uint64_t Embedding.init(vocabularySize:dimension:weightInitializer:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB7708, &qword_25BCD35E8);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(a4 + 32) = v8;
  if (a2 < 1)
  {
    OUTLINED_FUNCTION_7_0();
    result = sub_25BCB74CC();
    __break(1u);
  }

  else
  {
    *(a4 + 16) = a2;
    *(a4 + 24) = a1;
    type metadata accessor for LayerVariableReference();
    swift_allocObject();
    result = sub_25BB1AB04(a3);
    *a4 = result;
    *(a4 + 8) = 256;
  }

  return result;
}

uint64_t Embedding.initializeParameters(for:)()
{
  v1 = *v0;
  v3 = v0[2];
  v2 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_25BCBAE70;
  *(v4 + 32) = v2;
  *(v4 + 40) = v3;
  v6 = v4;

  sub_25BB1ABC8(&v6);
}

uint64_t Embedding.forward(_:)(uint64_t a1)
{
  v2 = *v1;
  if (!sub_25BAA80BC(*(*(*a1 + 16) + 160), &unk_286D427E8))
  {
    sub_25BC8FACC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB6390, &qword_25BCC8FD0);
    sub_25BADDD28();
  }

  v3 = *(v2 + 32);
  if ((~v3 & 0xF000000000000007) == 0)
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7_0();
    OUTLINED_FUNCTION_18_23();
LABEL_10:
    result = OUTLINED_FUNCTION_67();
    __break(1u);
    return result;
  }

  if ((v3 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_7_0();
    goto LABEL_10;
  }

  sub_25BAB69FC();
  Tensor.batchGathering(atIndices:alongAxis:batchDimensionCount:)();
}

BOOL sub_25BC77E1C@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_25BAE29A8();
  *a2 = result;
  return result;
}

uint64_t sub_25BC77E50@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25BC58720();
  *a1 = result;
  a1[1] = v3;
  return result;
}

BOOL sub_25BC77E7C@<W0>(_BYTE *a1@<X8>)
{
  result = sub_25BAE29A8();
  *a1 = result;
  return result;
}

uint64_t sub_25BC77EA8(uint64_t a1)
{
  v2 = sub_25BC78284();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BC77EE4(uint64_t a1)
{
  v2 = sub_25BC78284();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Embedding.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB7710, &qword_25BCD35F0);
  v6 = OUTLINED_FUNCTION_2(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v18 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25BC78284();
  sub_25BCB7B2C();
  if (!v2)
  {
    sub_25BB3993C();
    sub_25BCB76AC();
    v19 = v22;
    v20 = v23;
    v21 = v24;
    sub_25BC77828(&v19, &v22);
    (*(v8 + 8))(v12, v5);
    v14 = v23;
    v15 = v24;
    v16 = v26;
    *a2 = v22;
    *(a2 + 8) = v14;
    *(a2 + 9) = v15;
    *(a2 + 16) = v25;
    *(a2 + 32) = v16;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t Embedding.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB7720, &qword_25BCD35F8);
  v4 = OUTLINED_FUNCTION_2(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  v10 = &v15 - v9;
  v11 = *v1;
  v12 = *(v1 + 8);
  v16 = *(v1 + 9);
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25BC78284();
  sub_25BCB7B6C();
  v17 = v11;
  v18 = v12;
  v19 = v16;
  sub_25BB39990();

  sub_25BCB779C();

  return (*(v6 + 8))(v10, v3);
}

unint64_t sub_25BC78284()
{
  result = qword_27FBB7718;
  if (!qword_27FBB7718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7718);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Embedding.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_25BC78398()
{
  result = qword_27FBB7728;
  if (!qword_27FBB7728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7728);
  }

  return result;
}

unint64_t sub_25BC783F0()
{
  result = qword_27FBB7730;
  if (!qword_27FBB7730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7730);
  }

  return result;
}

unint64_t sub_25BC78448()
{
  result = qword_27FBB7738[0];
  if (!qword_27FBB7738[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FBB7738);
  }

  return result;
}

uint64_t sub_25BC7849C(uint64_t a1)
{
  v1 = *(a1 + 80);
  v2 = *(a1 + 88);
  swift_getTupleTypeMetadata2();
  result = sub_25BCB6E8C();
  if (v4 <= 0x3F)
  {
    v5 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_25BC78548()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 88);
  swift_getTupleTypeMetadata2();
  v4 = sub_25BCB6E8C();
  (*(*(v4 - 8) + 8))(v0 + v1, v4);
  return v0;
}

uint64_t sub_25BC785F8()
{
  sub_25BC78548();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_25BC78668(char a1)
{
  if (a1)
  {
    return 0x646F72706D7563;
  }

  else
  {
    return 0x6D75736D7563;
  }
}

uint64_t sub_25BC786A4()
{
  if (*(v0 + 40))
  {
    result = 0x646F72706D7563;
  }

  else
  {
    result = 0x6D75736D7563;
  }

  *(v0 + 40);
  return result;
}

uint64_t sub_25BC786DC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_25BCBB6D0;
  *(v1 + 32) = *(v0 + 48);

  return v1;
}

uint64_t sub_25BC78738(int a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, char a7, char a8, _OWORD *a9, uint64_t a10, uint64_t a11)
{
  v16 = a4 & 1;
  if (!a3)
  {
    a1 = sub_25BC3DA00(a4 & 1);
  }

  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  *(v11 + 32) = a3;
  *(v11 + 40) = v16;
  *(v11 + 48) = a5;
  *(v11 + 56) = a6;
  *(v11 + 64) = a7 & 1;
  *(v11 + 65) = a8 & 1;
  v17 = *(a5 + 152);
  v18 = *(a5 + 160);
  v19 = a9[1];
  *(v11 + 104) = *a9;
  *(v11 + 72) = v17;
  *(v11 + 80) = v18;
  *(v11 + 88) = a10;
  *(v11 + 96) = a11;
  *(v11 + 120) = v19;
  *(v11 + 136) = a9[2];
  *(v11 + 146) = *(a9 + 42);
  sub_25BCB617C();
  return v11;
}

BOOL sub_25BC787F4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_25BAC4018();
  v6 = *(v2 + 48);
  v7 = sub_25BAC4018();
  if (v5 == v7)
  {
    v8 = *(v3 + 48);
    *(v3 + 48) = a2;
  }

  return v5 == v7;
}

void *sub_25BC78868()
{
  v1 = v0[4];

  v2 = v0[6];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[12];
  sub_25BA9D148(v0[11]);
  return v0;
}

uint64_t sub_25BC788A8()
{
  sub_25BC78868();

  return swift_deallocClassInstance();
}

_BYTE *storeEnumTagSinglePayload for CumulativeOperation.Operator(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_25BC789E0()
{
  result = qword_27FBB77C0;
  if (!qword_27FBB77C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB77C0);
  }

  return result;
}

uint64_t sub_25BC78A3C()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  sub_25BA9D8C4(v1);
  return v1;
}

uint64_t sub_25BC78A74()
{
  v0[40];
  v0[40];
  sub_25BCB625C();

  v1 = v0[64];
  sub_25BCB79EC();
  v2 = v0[65];
  return sub_25BCB79EC();
}

uint64_t sub_25BC78B18(uint64_t a1)
{
  result = sub_25BC78B5C(&qword_27FBB77C8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BC78B5C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CumulativeOperation();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25BC78BA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v21 = a2;
  if (*(a1 + 16))
  {
    while (1)
    {
      OUTLINED_FUNCTION_0();
      if (!v9)
      {
        break;
      }

      if (v7 == 1)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
    v8 = 1;
LABEL_7:
    if (v8 == *(a2 + 16))
    {
      v19 = a1;
      v10 = sub_25BAA51C8(a3, v18);
      MEMORY[0x28223BE20](v10);
      v17[2] = &v21;
      Tensor.init(unsafeUninitializedShape:scalarType:computeDevice:initializingWith:)(&v19, MEMORY[0x277D83A90], &protocol witness table for Float, v18, sub_25BC7C34C, v17, &v20);
      sub_25BA9C2C8(a3);

      *a4 = v20;
      return result;
    }
  }

  v18[0] = 0;
  v18[1] = 0xE000000000000000;
  v12 = a1;
  sub_25BCB70FC();
  MEMORY[0x25F876C90](0xD000000000000013, 0x800000025BCDA710);
  if (*(v12 + 16))
  {
    while (1)
    {
      OUTLINED_FUNCTION_0();
      if (!v9)
      {
        break;
      }

      if (v13 == 1)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  v14 = 1;
LABEL_15:
  v20 = v14;
  v15 = sub_25BCB77FC();
  MEMORY[0x25F876C90](v15);

  MEMORY[0x25F876C90](0x7372616C61637320, 0xED00002074756220);
  v20 = *(a2 + 16);
  v16 = sub_25BCB77FC();
  MEMORY[0x25F876C90](v16);

  MEMORY[0x25F876C90](0x7270206572657720, 0xEF2E64656469766FLL);
  result = sub_25BCB74CC();
  __break(1u);
  return result;
}

uint64_t sub_25BC78E08(uint64_t a1, float a2)
{
  v26 = a1;
  Tensor.scalarType.getter();
  (*(v3 + 32))(&v21);
  v4 = v21;
  if (sub_25BAA80BC(0xAu, &unk_286D42270) && sub_25BAA80BC(v4, &unk_286D427E8) || v4 == 12)
  {
    v24 = 0;
    v22 = 0u;
    v23 = 0u;
    v21 = 0u;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F28, &qword_25BCBBE60);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_25BCBAE50;
    *(inited + 32) = a2;
    sub_25BAA51C8(&v21, v12);
    sub_25BC78BA0(MEMORY[0x277D84F90], inited, v12, &v25);
    sub_25BA9C2C8(&v21);
  }

  else
  {
    v13 = MEMORY[0x277D83A90];
    *v12 = a2;
    v5 = Tensor.scalarType.getter();
    v24 = 0;
    v22 = 0u;
    v23 = 0u;
    Tensor.init(coercing:scalarType:on:)(v12, v5, v6, &v21, v6, v7, v8, v9, v12[0], v12[1], v12[2], v13, &protocol witness table for Float, v14, v15, v16, v17, v18, v19, v20, 0, 0);
  }

  static Tensor..<= infix(_:_:)(&v26, &v25);
}

void *sub_25BC78FBC(void *result, uint64_t a2, _DWORD *a3, uint64_t a4)
{
  if (a3)
  {
    v5 = 0;
    v6 = 0;
    v7 = a3;
    while (1)
    {
      if (v7 >= a4 - 3)
      {
        goto LABEL_9;
      }

      v8 = *(a2 + 16);
      if (v6 == v8)
      {
        goto LABEL_9;
      }

      if (v6 >= v8)
      {
        break;
      }

      *v7 = *(a2 + 32 + 4 * v6);
      if (v6 == 0x1FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_14;
      }

      ++v7;
      ++v6;
      v5 += 4;
      if (a4 - a3 < v5)
      {
        __break(1u);
LABEL_9:
        *result = a2;
        result[1] = v6;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (*(a2 + 16))
  {
LABEL_15:
    __break(1u);
    return result;
  }

  *result = a2;
  result[1] = 0;
LABEL_12:
  sub_25BCB617C();
  return a3;
}

uint64_t softplus(_:alpha:beta:)()
{
  OUTLINED_FUNCTION_21_36();
  v2 = *v1;
  v3 = *(*v1 + 16);
  v4 = *(v3 + 160);
  if (!sub_25BAA80BC(v4, &unk_286D42270))
  {
    LOBYTE(v211) = v4;
    sub_25BC8FACC();
    OUTLINED_FUNCTION_30();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4140, &qword_25BCC2F10);
    *&v220 = v0;
    *(&v220 + 1) = &v211;
    v221 = xmmword_25BCC6DC0;
    OUTLINED_FUNCTION_9_56();
    OUTLINED_FUNCTION_10_27();
    sub_25BADDD28();
  }

  v5 = *(v3 + 160);
  *&v6 = OUTLINED_FUNCTION_28_29();
  v221 = v6;
  v222 = v6;
  *(&v220 + 1) = *(&v6 + 1);
  v7 = MEMORY[0x277D84F90];
  HIBYTE(v217) = v8;
  v17 = OUTLINED_FUNCTION_20_36(v9, v10, v11, v12, v13, v14, v15, v16, v107, v115, v123, v131, v139, v147, v155, v163, v171, v179, v187, v195, v203, v211, v212, v213, v214, v215, v216, v217, MEMORY[0x277D84F90], v219, v6);
  v19 = sub_25BAA51C8(v17, v18);
  v26 = OUTLINED_FUNCTION_3_60(v19, &unk_286D44A68, v20, v21, v22, v23, v24, v25, v108, v116, v124, v132, v140, v148, v156, v164, v172, v180, v188, v196, v204, v211, v212, v213, v214, v215, v216, v217, v218);
  Tensor.init(shape:coercingScalars:scalarType:on:)(v26, v27, v28, v29, v30);
  sub_25BA9C2C8(&v220);
  v31 = v219;
  v32 = *(*(v2 + 16) + 160);
  *&v33 = OUTLINED_FUNCTION_28_29();
  v221 = v33;
  v222 = v33;
  v220 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F28, &qword_25BCBBE60);
  inited = swift_initStackObject();
  v35 = OUTLINED_FUNCTION_26_34(inited, xmmword_25BCBAE50);
  HIBYTE(v217) = v32;
  v43 = OUTLINED_FUNCTION_20_36(v35, v36, v37, v38, v39, v40, v41, v42, v109, v117, v125, v133, v141, v149, v157, v165, v173, v181, v189, v197, v205, v211, v212, v213, v214, v215, v216, v217, v7, v219, v220);
  v45 = sub_25BAA51C8(v43, v44);
  v53 = OUTLINED_FUNCTION_3_60(v45, v46, v47, v48, v49, v50, v51, v52, v110, v118, v126, v134, v142, v150, v158, v166, v174, v182, v190, v198, v206, v211, v212, v213, v214, v215, v216, v217, v218);
  Tensor.init(shape:coercingScalars:scalarType:on:)(v53, inited, v54, v55, v56);
  sub_25BA9C2C8(&v220);
  v57 = v219;
  v58 = *(*(v2 + 16) + 160);
  *&v59 = OUTLINED_FUNCTION_28_29();
  v221 = v59;
  v222 = v59;
  v220 = v59;
  v60 = swift_initStackObject();
  OUTLINED_FUNCTION_13_47(v60, v61, v62, v63, v64, v65, v66, v67, v68);
  HIBYTE(v217) = v58;
  v77 = OUTLINED_FUNCTION_20_36(v69, v70, v71, v72, v73, v74, v75, v76, v111, v119, v127, v135, v143, v151, v159, v167, v175, v183, v191, v199, v207, v211, v212, v213, v214, v215, v216, v217, v7, v219, v220);
  v79 = sub_25BAA51C8(v77, v78);
  v87 = OUTLINED_FUNCTION_3_60(v79, v80, v81, v82, v83, v84, v85, v86, v112, v120, v128, v136, v144, v152, v160, v168, v176, v184, v192, v200, v208, v211, v212, v213, v214, v215, v216, v217, v218);
  Tensor.init(shape:coercingScalars:scalarType:on:)(v87, v60, v88, v89, v90);
  sub_25BA9C2C8(&v220);
  *&v220 = v57;
  static Tensor.* infix(_:_:)();
  exp(_:)(&v218, v91, v92, v93, v94, v95, v96, v97, v113, v121, v129, v137, v145, v153, v161, v169, v177, v185, v193, v201, v209, v2, v212, v213, v214, v215, v216, v217, v218, v219, v220, *(&v220 + 1), v221, *(&v221 + 1), v222, *(&v222 + 1), v223, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233, v234, v235, v236, v237, v238, v239, v240, v241, v242);

  v219 = v31;
  static Tensor.+ infix(_:_:)();

  log(_:)(&v211, &v218);

  OUTLINED_FUNCTION_20_36(v98, v99, v100, v101, v102, v103, v104, v105, v114, v122, v130, v138, v146, v154, v162, v170, v178, v186, v194, v202, v210, v211, v212, v213, v214, v215, v216, v217, v218, v219, v220);
  static Tensor.* infix(_:_:)();
}

uint64_t scaledTanh(_:inputScale:outputScale:)()
{
  OUTLINED_FUNCTION_21_36();
  v2 = *v1;
  v3 = *(*v1 + 16);
  v4 = *(v3 + 160);
  if (!sub_25BAA80BC(v4, &unk_286D42270))
  {
    LOBYTE(v63) = v4;
    sub_25BC8FACC();
    OUTLINED_FUNCTION_30();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4140, &qword_25BCC2F10);
    *&v77 = v0;
    *(&v77 + 1) = &v63;
    v78 = xmmword_25BCC6DC0;
    OUTLINED_FUNCTION_9_56();
    OUTLINED_FUNCTION_10_27();
    sub_25BADDD28();
  }

  v5 = *(v3 + 160);
  *&v6 = OUTLINED_FUNCTION_28_29();
  v78 = v6;
  v79 = v6;
  v77 = v6;
  v7 = MEMORY[0x277D84F90];
  v75 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F28, &qword_25BCBBE60);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_26_34(inited, xmmword_25BCBAE50);
  HIBYTE(v69) = v5;
  v9 = sub_25BAA51C8(&v77, &v63);
  v17 = OUTLINED_FUNCTION_33(v9, v10, v11, v12, v13, v14, v15, v16, v47, v49, v51, v53, v55, v57, v59, v61, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75);
  Tensor.init(shape:coercingScalars:scalarType:on:)(v17, inited, v18, v19, v20);
  sub_25BA9C2C8(&v77);
  v21 = v76;
  v22 = *(*(v2 + 16) + 160);
  *&v23 = OUTLINED_FUNCTION_28_29();
  v78 = v23;
  v79 = v23;
  v77 = v23;
  v75 = v7;
  v24 = swift_initStackObject();
  OUTLINED_FUNCTION_13_47(v24, v25, v26, v27, v28, v29, v30, v31, v32);
  HIBYTE(v69) = v22;
  v33 = sub_25BAA51C8(&v77, &v63);
  v41 = OUTLINED_FUNCTION_33(v33, v34, v35, v36, v37, v38, v39, v40, v48, v50, v52, v54, v56, v58, v60, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75);
  Tensor.init(shape:coercingScalars:scalarType:on:)(v41, v24, v42, v43, v44);
  sub_25BA9C2C8(&v77);
  v45 = v76;
  v76 = v21;
  *&v77 = v45;
  v63 = v2;
  static Tensor.* infix(_:_:)();
  tanh(_:)(&v63, &v75);

  static Tensor.* infix(_:_:)();
}

uint64_t sigmoid(_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_4_36(a1);
  if (!sub_25BAA80BC(v3, &unk_286D42270))
  {
    v51 = v3;
    sub_25BC8FACC();
    OUTLINED_FUNCTION_30();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4140, &qword_25BCC2F10);
    v31 = v1;
    v32 = &v51;
    OUTLINED_FUNCTION_8_1();
    OUTLINED_FUNCTION_10_27();
    sub_25BADDD28();
  }

  sub_25BAAF074(sub_25BC7BAAC);
  OUTLINED_FUNCTION_27_32("/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/ActivationOps.swift");
  v52 = xmmword_25BCD3A20;
  OUTLINED_FUNCTION_41_25(v4);
  type metadata accessor for ActivationOperation();
  swift_allocObject();
  v5 = OUTLINED_FUNCTION_16_49();
  sub_25BBB2EA8(v5, v6, v7, 1, v2, v8, v9, v10, v27, v29);
  v11 = OUTLINED_FUNCTION_7_26();
  sub_25BAA51C8(v11, v50);
  sub_25BAA51C8(v50, v49);
  v12 = type metadata accessor for ContextManager();
  OUTLINED_FUNCTION_9_7();
  swift_retain_n();
  v13 = sub_25BAA49B8();
  OUTLINED_FUNCTION_60_5(v13, v14);

  sub_25BAA4AF4(&v31);
  v15 = sub_25BAA49B8();
  OUTLINED_FUNCTION_60_5(v15, v16);

  sub_25BAA4AF4(&v31);
  type metadata accessor for TensorRepresentation();
  v17 = OUTLINED_FUNCTION_16_3();
  OUTLINED_FUNCTION_32_27(v17, v18, v19, v20, v21, v22, v23, v24, v28, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49[0]);
  OUTLINED_FUNCTION_17_7();
  v25 = OUTLINED_FUNCTION_15_7();
  OUTLINED_FUNCTION_13_22(v25);
  sub_25BAA6EB0();
  OUTLINED_FUNCTION_9_7();

  result = sub_25BA9C2C8(v50);
  *v1 = v12;
  return result;
}

uint64_t logSigmoid(_:)(uint64_t *a1)
{
  v3[0] = *a1;
  static Tensor.- prefix(_:)(v3);
  v3[0] = v3[1];
  softplus(_:alpha:beta:)();

  static Tensor.- prefix(_:)(&v2);
}

uint64_t softsign(_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_11_50(a1);
  if (!sub_25BAA80BC(v2, &unk_286D42270))
  {
    OUTLINED_FUNCTION_61_12();
    OUTLINED_FUNCTION_30();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4140, &qword_25BCC2F10);
    v25[0] = v1;
    v25[1] = v2;
    OUTLINED_FUNCTION_9_27();
    OUTLINED_FUNCTION_10_27();
    sub_25BADDD28();
  }

  v5 = *(v4 + 160);
  OUTLINED_FUNCTION_8_28();
  v23 = MEMORY[0x277D84F90];
  v7 = OUTLINED_FUNCTION_37_25(v6, v16);
  OUTLINED_FUNCTION_18_43(v7, &unk_286D44DB0, v8, v9, v10, v11, v12, v13, v17, v18[0], v18[1], v18[2], v18[3], v18[4], v18[5], v19, v20, v21, v22, v23, v24);
  sub_25BA9C2C8(v25);
  v14 = v24;
  v25[0] = v3;
  v18[0] = v3;
  abs(_:)(&v24, v18);
  v18[0] = v14;
  static Tensor.+ infix(_:_:)();

  static Tensor./ infix(_:_:)();
}

uint64_t softmax(_:alongAxis:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  v6 = *(*a1 + 16);
  v7 = *(v6 + 160);
  if (!sub_25BAA80BC(v7, &unk_286D42270))
  {
    v54 = v7;
    sub_25BC8FACC();
    OUTLINED_FUNCTION_30();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4140, &qword_25BCC2F10);
    v42 = a3;
    v43 = &v54;
    OUTLINED_FUNCTION_0_51();
    OUTLINED_FUNCTION_10_27();
    goto LABEL_12;
  }

  v8 = *(*(v6 + 152) + 16);
  if (-v8 > a2 || v8 <= a2)
  {
    v43 = 0;
    v44 = 0;
    v42 = a2;
    v45 = -1;
    v47 = 0;
    v48 = 0;
    v46 = v8;
    v49 = -1;
    v51 = 4;
    OUTLINED_FUNCTION_17_4();
LABEL_12:
    sub_25BADDD28();
  }

  v10 = (v8 & (a2 >> 63)) + a2;
  v11 = v8 < 2;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  *(OUTLINED_FUNCTION_15_7() + 16) = v10;

  v13 = sub_25BAAF074(sub_25BC7C328);
  v15 = v14;

  OUTLINED_FUNCTION_27_32("/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/ActivationOps.swift");
  v55 = xmmword_25BCD3A30;
  OUTLINED_FUNCTION_41_25(v16);
  type metadata accessor for SoftmaxOperation();
  swift_allocObject();
  v17 = OUTLINED_FUNCTION_54_17();
  sub_25BBB3104(v17, v18, v19, v20, v12, v21, v13, v15);
  sub_25BAA51C8(*(v5 + 16) + 168, v53);
  sub_25BAA51C8(v53, v52);
  type metadata accessor for ContextManager();
  OUTLINED_FUNCTION_9_7();
  swift_retain_n();
  v22 = sub_25BAA49B8();
  OUTLINED_FUNCTION_18_0(v22, v23, v24, v25, v26, v27, v28, v29, v42);

  v30 = v50;

  sub_25BAA4AF4(&v42);
  v31 = sub_25BAA49B8();
  OUTLINED_FUNCTION_18_0(v31, v32, v33, v34, v35, v36, v37, v38, v42);

  sub_25BAA4AF4(&v42);
  type metadata accessor for TensorRepresentation();
  OUTLINED_FUNCTION_16_3();
  v39 = OUTLINED_FUNCTION_19_35();
  sub_25BC0E87C(v39);
  OUTLINED_FUNCTION_17_7();
  v40 = OUTLINED_FUNCTION_15_7();
  OUTLINED_FUNCTION_13_22(v40);
  sub_25BAA6EB0();
  OUTLINED_FUNCTION_9_7();

  result = sub_25BA9C2C8(v53);
  *a3 = v30;
  return result;
}

uint64_t logSoftmax(_:alongAxis:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  v6 = *(*a1 + 16);
  v7 = *(v6 + 160);
  if (!sub_25BAA80BC(v7, &unk_286D42270))
  {
    LOBYTE(v11) = v7;
    sub_25BC8FACC();
    OUTLINED_FUNCTION_30();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4140, &qword_25BCC2F10);
    v12 = a2;
    v13 = &v11;
    OUTLINED_FUNCTION_8_1();
    OUTLINED_FUNCTION_10_27();
    goto LABEL_11;
  }

  v8 = *(*(v6 + 152) + 16);
  if (-v8 > a2 || v8 <= a2)
  {
    v13 = 0;
    v14 = 0;
    v12 = a2;
    v15 = -1;
    v17 = 0;
    v18 = 0;
    v16 = v8;
    v19 = -1;
    v20 = 4;
    OUTLINED_FUNCTION_17_4();
LABEL_11:
    sub_25BADDD28();
  }

  v12 = v5;
  softmax(_:alongAxis:)(&v12, (v8 & (a2 >> 63)) + a2, &v11);
  log(_:)(a3, &v11);
}

uint64_t gelu(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(*a1 + 16);
  v5 = *(v4 + 160);
  if (!sub_25BAA80BC(v5, &unk_286D42270))
  {
    LOBYTE(v118) = v5;
    sub_25BC8FACC();
    OUTLINED_FUNCTION_30();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4140, &qword_25BCC2F10);
    *&v127 = a2;
    *(&v127 + 1) = &v118;
    OUTLINED_FUNCTION_35_23();
    OUTLINED_FUNCTION_10_27();
    sub_25BADDD28();
  }

  v6 = *(v4 + 160);
  OUTLINED_FUNCTION_92_1();
  LOBYTE(v111) = v7;
  v16 = OUTLINED_FUNCTION_31_30(v8, v9, v10, v11, v12, v13, v14, v15, v95, v103, v111, v118, v119, v120, v121, v122, v123, v124, MEMORY[0x277D84F90], v126, v127);
  v18 = sub_25BAA51C8(v16, v17);
  OUTLINED_FUNCTION_15_46(v18, &unk_286D44C70, v19, v20);
  v21 = sub_25BA9C2C8(&v127);
  v22 = v126;
  v30 = OUTLINED_FUNCTION_4_66(v21, v23, v24, v25, v26, v27, v28, v29, v96, v104, v112, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130);
  OUTLINED_FUNCTION_15_46(v30, &unk_286D44C98, v31, v32);
  v33 = sub_25BA9C2C8(&v127);
  v41 = OUTLINED_FUNCTION_4_66(v33, v34, v35, v36, v37, v38, v39, v40, v97, v105, v113, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130);
  OUTLINED_FUNCTION_15_46(v41, &unk_286D44CC0, v42, v43);
  v44 = sub_25BA9C2C8(&v127);
  v45 = v126;
  v53 = OUTLINED_FUNCTION_4_66(v44, v46, v47, v48, v49, v50, v51, v52, v98, v106, v114, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130);
  OUTLINED_FUNCTION_15_46(v53, &unk_286D44CE8, v54, v55);
  v56 = sub_25BA9C2C8(&v127);
  v57 = v126;
  v65 = OUTLINED_FUNCTION_4_66(v56, v58, v59, v60, v61, v62, v63, v64, v99, v107, v115, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130);
  OUTLINED_FUNCTION_15_46(v65, &unk_286D44D10, v66, v67);
  sub_25BA9C2C8(&v127);
  *&v127 = v22;
  pow(_:_:)();
  static Tensor.* infix(_:_:)();

  static Tensor.+ infix(_:_:)();

  static Tensor.* infix(_:_:)();

  v76 = OUTLINED_FUNCTION_53_14(v68, v69, v70, v71, v72, v73, v74, v75, v100, v108, v126, v3);
  tanh(_:)(v77, v76);

  v126 = v127;
  *&v127 = v57;
  static Tensor.+ infix(_:_:)();
  OUTLINED_FUNCTION_53_14(v78, v79, v80, v81, v82, v83, v84, v85, v101, v109, v116, v45);
  static Tensor.* infix(_:_:)();

  OUTLINED_FUNCTION_31_30(v86, v87, v88, v89, v90, v91, v92, v93, v102, v110, v117, v127, v119, v120, v121, v122, v123, v124, v3, v126, v3);
  static Tensor.* infix(_:_:)();
}

uint64_t relu6(_:)(void *a1)
{
  v9[0] = *a1;
  v1 = v9[0];
  relu(_:)(v9);
  v2 = *(*(v1 + 16) + 160);
  OUTLINED_FUNCTION_8_28();
  v8 = MEMORY[0x277D84F90];
  v7 = v3;
  sub_25BAA51C8(v9, v6);
  Tensor.init(shape:coercingScalars:scalarType:on:)(&v8, &unk_286D44D88, &v7, v6, &v5);
  sub_25BA9C2C8(v9);
  min(_:_:)();
}

uint64_t leakyReLU(_:alpha:)(uint64_t a1)
{
  OUTLINED_FUNCTION_11_50(a1);
  if (!sub_25BAA80BC(v2, &unk_286D42270))
  {
    LOBYTE(v16[0]) = v2;
    sub_25BC8FACC();
    OUTLINED_FUNCTION_30();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4140, &qword_25BCC2F10);
    v28[0] = v1;
    v28[1] = v16;
    OUTLINED_FUNCTION_9_16();
    OUTLINED_FUNCTION_10_27();
    sub_25BADDD28();
  }

  v5 = *(v4 + 160);
  sub_25BAA51C8(v4 + 168, v28);
  v26 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F28, &qword_25BCBBE60);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_17_45(inited, xmmword_25BCBAE50);
  v20 = v5;
  v7 = sub_25BAA51C8(v28, v16);
  OUTLINED_FUNCTION_45_19(v7, v8, v9, v10, v11, v12, v13, v14, v16[0], v16[1], v16[2], v16[3], v16[4], v16[5], v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27);
  sub_25BA9C2C8(v28);
  v28[0] = v3;
  v16[0] = v3;
  static Tensor.* infix(_:_:)();
  max(_:_:)();
}

uint64_t selu(_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_11_50(a1);
  if (!sub_25BAA80BC(v2, &unk_286D42270))
  {
    OUTLINED_FUNCTION_61_12();
    OUTLINED_FUNCTION_30();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4140, &qword_25BCC2F10);
    v24[0] = v1;
    v24[1] = v2;
    OUTLINED_FUNCTION_9_27();
    OUTLINED_FUNCTION_10_27();
    sub_25BADDD28();
  }

  v5 = *(v4 + 160);
  OUTLINED_FUNCTION_8_28();
  v22 = MEMORY[0x277D84F90];
  v7 = OUTLINED_FUNCTION_37_25(v6, v15);
  OUTLINED_FUNCTION_18_43(v7, &unk_286D44D38, v8, v9, v10, v11, v12, v13, v16, v17[0], v17[1], v17[2], v17[3], v17[4], v17[5], v18, v19, v20, v21, v22, v23);
  sub_25BA9C2C8(v24);
  v24[0] = v23;
  v17[0] = v3;
  elu(_:alpha:)(&v23, v17, 1.6733);
  static Tensor.* infix(_:_:)();
}

uint64_t hardshrink(_:lambda:)@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_44_19(a1);
  v4 = OUTLINED_FUNCTION_2(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_40_24();
  v9 = *(*(v1 + 16) + 160);
  if (!sub_25BAA80BC(v9, &unk_286D42270))
  {
    LOBYTE(v32[0]) = v9;
    sub_25BC8FACC();
    OUTLINED_FUNCTION_30();
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4140, &qword_25BCC2F10);
    v34[0] = v1;
    v34[1] = v32;
    OUTLINED_FUNCTION_34_22(v29, xmmword_25BCC6DC0);
    OUTLINED_FUNCTION_10_27();
    sub_25BADDD28();
  }

  OUTLINED_FUNCTION_19_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F28, &qword_25BCBBE60);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_17_45(inited, xmmword_25BCBAE50);
  sub_25BAA51C8(v34, v32);
  sub_25BACC1B0(MEMORY[0x277D84F90], inited, v32, &v33);
  sub_25BA9C2C8(v34);
  v32[0] = v33;
  LOBYTE(v33) = *(*(v1 + 16) + 160);
  v11 = *MEMORY[0x277D84660];
  v12 = v1;
  v13 = *(v6 + 104);
  v31 = *MEMORY[0x277D84660];
  v13(v2, v11, v3);
  Tensor.cast(to:roundingRule:)();
  v14 = *(v6 + 8);
  v15 = OUTLINED_FUNCTION_9_23();
  v16(v15);

  v17 = v34[0];
  v30 = v12;
  v34[0] = v12;
  v32[0] = v17;
  static Tensor.- prefix(_:)(v32);
  v18 = OUTLINED_FUNCTION_39_25();
  static Tensor..< infix(_:_:)(v20, v18, v19);

  v33 = v32[0];
  v21 = OUTLINED_FUNCTION_49_21(*(v12 + 16));
  v13(v21, v11, v3);
  OUTLINED_FUNCTION_52_17();
  Tensor.cast(to:roundingRule:)();
  v22 = OUTLINED_FUNCTION_9_23();
  v14(v22);

  v23 = v34[0];
  v33 = v17;
  v34[0] = v30;
  v24 = OUTLINED_FUNCTION_39_25();
  static Tensor..> infix(_:_:)(v24, v25);
  v33 = v32[0];
  v26 = OUTLINED_FUNCTION_49_21(*(v30 + 16));
  v13(v26, v31, v3);
  OUTLINED_FUNCTION_52_17();
  Tensor.cast(to:roundingRule:)();
  v27 = OUTLINED_FUNCTION_9_23();
  v14(v27);

  v33 = v34[0];
  v34[0] = v30;
  v32[0] = v23;
  max(_:_:)();
  OUTLINED_FUNCTION_58_14();
  static Tensor.* infix(_:_:)();
}

uint64_t tanhshrink(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(*a1 + 16);
  v5 = *(v4 + 160);
  if (!sub_25BAA80BC(*(v4 + 160), &unk_286D42270))
  {
    OUTLINED_FUNCTION_61_12();
    OUTLINED_FUNCTION_30();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4140, &qword_25BCC2F10);
    v9 = a2;
    v10 = v5;
    OUTLINED_FUNCTION_8_1();
    OUTLINED_FUNCTION_10_27();
    sub_25BADDD28();
  }

  v8 = v3;
  v9 = v3;
  tanh(_:)(&v7, &v8);
  static Tensor.- infix(_:_:)();
}

uint64_t softshrink(_:alpha:)@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_44_19(a1);
  v4 = OUTLINED_FUNCTION_2(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_40_24();
  v9 = *(v1 + 16);
  v10 = *(v9 + 160);
  if (!sub_25BAA80BC(v10, &unk_286D42270))
  {
    LOBYTE(v25[0]) = v10;
    sub_25BC8FACC();
    OUTLINED_FUNCTION_30();
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4140, &qword_25BCC2F10);
    v29[0] = v1;
    v29[1] = v25;
    OUTLINED_FUNCTION_34_22(v22, xmmword_25BCC6DC0);
    OUTLINED_FUNCTION_10_27();
    sub_25BADDD28();
  }

  v11 = *(v9 + 160);
  OUTLINED_FUNCTION_19_1();
  v27 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F28, &qword_25BCBBE60);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_17_45(inited, xmmword_25BCBAE50);
  v26 = v11;
  sub_25BAA51C8(v29, v25);
  Tensor.init(shape:coercingScalars:scalarType:on:)(&v27, inited, &v26, v25, &v28);
  sub_25BA9C2C8(v29);
  v13 = v28;
  v29[0] = v1;
  v14 = OUTLINED_FUNCTION_39_25();
  static Tensor..> infix(_:_:)(v14, v15);
  v28 = v25[0];
  LOBYTE(v27) = *(*(v1 + 16) + 160);
  v24 = *MEMORY[0x277D84660];
  v23 = *(v6 + 104);
  v23(v2);
  Tensor.cast(to:roundingRule:)();
  v16 = *(v6 + 8);
  v16(v2, v3);

  v25[0] = v29[0];
  v28 = v13;
  v29[0] = v1;
  OUTLINED_FUNCTION_39_25();
  static Tensor.- infix(_:_:)();
  OUTLINED_FUNCTION_52_17();
  static Tensor.* infix(_:_:)();

  v17 = v29[0];
  v29[0] = v1;
  v25[0] = v13;
  static Tensor.- prefix(_:)(v25);
  v18 = OUTLINED_FUNCTION_39_25();
  static Tensor..< infix(_:_:)(v20, v18, v19);

  v28 = v25[0];
  LOBYTE(v27) = *(*(v1 + 16) + 160);
  (v23)(v2, v24, v3);
  Tensor.cast(to:roundingRule:)();
  v16(v2, v3);

  v25[0] = v29[0];
  v28 = v13;
  v29[0] = v1;
  OUTLINED_FUNCTION_39_25();
  static Tensor.+ infix(_:_:)();
  OUTLINED_FUNCTION_52_17();
  static Tensor.* infix(_:_:)();

  v25[0] = v17;
  OUTLINED_FUNCTION_58_14();
  static Tensor.+ infix(_:_:)();
}

uint64_t prelu(_:weight:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  v6 = *(*a1 + 16);
  v7 = *(v6 + 160);
  if (!sub_25BAA80BC(v7, &unk_286D42270))
  {
    LOBYTE(v62) = v7;
    sub_25BC8FACC();
    OUTLINED_FUNCTION_30();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4140, &qword_25BCC2F10);
    v71 = v6;
    v72 = &v62;
    OUTLINED_FUNCTION_35_23();
    OUTLINED_FUNCTION_10_27();
LABEL_14:
    sub_25BADDD28();
  }

  v8 = *(v6 + 160);
  OUTLINED_FUNCTION_92_1();
  v9 = MEMORY[0x277D84F90];
  HIBYTE(v68) = v10;
  v19 = OUTLINED_FUNCTION_31_30(v11, v12, v13, v14, v15, v16, v17, v18, v53, v57, v61, v62, v63, v64, v65, v66, v67, v68, MEMORY[0x277D84F90], v70, v71);
  sub_25BAA51C8(v19, v20);
  Tensor.init(shape:coercingScalars:scalarType:on:)(&v69, &unk_286D44D60, &v68 + 7, &v62, &v70);
  v21 = sub_25BA9C2C8(&v71);
  v22 = v70;
  LOBYTE(v62) = v70;
  v70 = v4;
  OUTLINED_FUNCTION_53_14(v21, v23, v24, v25, v26, v27, v28, v29, v54, v58, v61, v62);
  max(_:_:)();
  v30 = v71;
  v31 = *(*(*(v4 + 16) + 152) + 16);
  if (v31)
  {
    v55 = v71;
    v59 = a3;
    v62 = v9;
    sub_25BAA21EC();
    v32 = 1;
    v9 = v62;
    while (1)
    {
      if (v32)
      {
        v33 = 1;
      }

      else
      {
        v34 = *(*(v5 + 16) + 152);
        if (!*(v34 + 16))
        {
          v71 = 0;
          v72 = 0;
          v73 = 0;
          v74 = -1;
          v76 = 0;
          v77 = 0;
          v75 = 0;
          v78 = -1;
          v79 = 4;
          sub_25BCB617C();
          OUTLINED_FUNCTION_17_4();
          goto LABEL_14;
        }

        v33 = *(v34 + 32);
      }

      v62 = v9;
      v35 = *(v9 + 16);
      if (v35 >= *(v9 + 24) >> 1)
      {
        sub_25BAA21EC();
        v9 = v62;
      }

      *(v9 + 16) = v35 + 1;
      *(v9 + 8 * v35 + 32) = v33;
      --v32;
      if (!--v31)
      {
        v30 = v55;
        break;
      }
    }
  }

  v71 = v5;
  v62 = v9;
  Tensor.reshaped(to:)(&v62, &v61);

  static Tensor.- prefix(_:)(&v61);

  v70 = v4;
  v71 = v22;
  static Tensor.- prefix(_:)(&v70);
  max(_:_:)();

  OUTLINED_FUNCTION_53_14(v36, v37, v38, v39, v40, v41, v42, v43, v55, v59, v61, v62);
  static Tensor.* infix(_:_:)();

  OUTLINED_FUNCTION_31_30(v44, v45, v46, v47, v48, v49, v50, v51, v56, v60, v61, v71, v63, v64, v65, v66, v67, v68, v69, v70, v30);
  static Tensor.+ infix(_:_:)();
}

uint64_t hardtanh(_:bounds:)()
{
  OUTLINED_FUNCTION_38_0();
  v2 = *v1;
  v3 = *(*(*v1 + 16) + 160);
  if (!sub_25BAA80BC(v3, &unk_286D42270))
  {
    LOBYTE(v22[0]) = v3;
    sub_25BC8FACC();
    OUTLINED_FUNCTION_30();
    v24[0] = v0;
    v24[1] = v22;
    v25 = xmmword_25BCC6DC0;
    v26 = 0;
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4140, &qword_25BCC2F10);
    v28 = 2;
    v29 = 3;
    OUTLINED_FUNCTION_10_27();
    sub_25BADDD28();
  }

  OUTLINED_FUNCTION_12_37();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F28, &qword_25BCBBE60);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_26_34(inited, xmmword_25BCBAE50);
  sub_25BAA51C8(v24, v22);
  v5 = MEMORY[0x277D84F90];
  v6 = OUTLINED_FUNCTION_9_23();
  sub_25BACC1B0(v6, v7, v8, v9);
  sub_25BA9C2C8(v24);
  v10 = v23;
  OUTLINED_FUNCTION_12_37();
  v11 = swift_initStackObject();
  OUTLINED_FUNCTION_13_47(v11, v12, v13, v14, v15, v16, v17, v18, v19);
  sub_25BAA51C8(v24, v22);
  sub_25BACC1B0(v5, v11, v22, &v23);
  sub_25BA9C2C8(v24);
  v20 = v23;
  v24[0] = v2;
  v22[0] = v10;
  min(_:_:)();
  v24[0] = v20;
  max(_:_:)();
}

uint64_t hardSigmoid(_:scale:bias:)()
{
  OUTLINED_FUNCTION_21_36();
  OUTLINED_FUNCTION_43_20(v4);
  if (!sub_25BAA80BC(v1, &unk_286D42270))
  {
    LOBYTE(v260) = v1;
    sub_25BC8FACC();
    OUTLINED_FUNCTION_30();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4140, &qword_25BCC2F10);
    v269[0] = v0;
    v269[1] = &v260;
    v270 = xmmword_25BCC6DC0;
    OUTLINED_FUNCTION_9_56();
    OUTLINED_FUNCTION_10_27();
    sub_25BADDD28();
  }

  v5 = *(v2 + 160);
  OUTLINED_FUNCTION_10_50();
  v6 = MEMORY[0x277D84F90];
  HIBYTE(v266) = v7;
  v16 = OUTLINED_FUNCTION_20_36(v8, v9, v10, v11, v12, v13, v14, v15, v130, v140, v150, v160, v170, v180, v190, v200, v210, v220, v230, v240, v250, v260, v261, v262, v263, v264, v265, v266, MEMORY[0x277D84F90], v268, v269[0]);
  v18 = sub_25BAA51C8(v16, v17);
  v25 = OUTLINED_FUNCTION_3_60(v18, &unk_286D44A90, v19, v20, v21, v22, v23, v24, v131, v141, v151, v161, v171, v181, v191, v201, v211, v221, v231, v241, v251, v260, v261, v262, v263, v264, v265, v266, v267);
  Tensor.init(shape:coercingScalars:scalarType:on:)(v25, v26, v27, v28, v29);
  sub_25BA9C2C8(v269);
  v30 = v268;
  v31 = *(*(v3 + 16) + 160);
  OUTLINED_FUNCTION_10_50();
  HIBYTE(v266) = v32;
  v41 = OUTLINED_FUNCTION_20_36(v33, v34, v35, v36, v37, v38, v39, v40, v132, v142, v152, v162, v172, v182, v192, v202, v212, v222, v232, v242, v252, v260, v261, v262, v263, v264, v265, v266, v6, v268, v269[0]);
  v43 = sub_25BAA51C8(v41, v42);
  v50 = OUTLINED_FUNCTION_3_60(v43, &unk_286D44AB8, v44, v45, v46, v47, v48, v49, v133, v143, v153, v163, v173, v183, v193, v203, v213, v223, v233, v243, v253, v260, v261, v262, v263, v264, v265, v266, v267);
  Tensor.init(shape:coercingScalars:scalarType:on:)(v50, v51, v52, v53, v54);
  sub_25BA9C2C8(v269);
  v55 = v268;
  v56 = *(*(v3 + 16) + 160);
  OUTLINED_FUNCTION_10_50();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F28, &qword_25BCBBE60);
  inited = swift_initStackObject();
  v58 = OUTLINED_FUNCTION_26_34(inited, xmmword_25BCBAE50);
  HIBYTE(v266) = v56;
  v66 = OUTLINED_FUNCTION_20_36(v58, v59, v60, v61, v62, v63, v64, v65, v134, v144, v154, v164, v174, v184, v194, v204, v214, v224, v234, v244, v254, v260, v261, v262, v263, v264, v265, v266, v6, v268, v269[0]);
  v68 = sub_25BAA51C8(v66, v67);
  v76 = OUTLINED_FUNCTION_3_60(v68, v69, v70, v71, v72, v73, v74, v75, v135, v145, v155, v165, v175, v185, v195, v205, v215, v225, v235, v245, v255, v260, v261, v262, v263, v264, v265, v266, v267);
  Tensor.init(shape:coercingScalars:scalarType:on:)(v76, inited, v77, v78, v79);
  sub_25BA9C2C8(v269);
  v80 = v268;
  v81 = *(*(v3 + 16) + 160);
  OUTLINED_FUNCTION_10_50();
  v82 = swift_initStackObject();
  OUTLINED_FUNCTION_13_47(v82, v83, v84, v85, v86, v87, v88, v89, v90);
  HIBYTE(v266) = v81;
  v99 = OUTLINED_FUNCTION_20_36(v91, v92, v93, v94, v95, v96, v97, v98, v136, v146, v156, v166, v176, v186, v196, v206, v216, v226, v236, v246, v256, v260, v261, v262, v263, v264, v265, v266, v6, v268, v269[0]);
  v101 = sub_25BAA51C8(v99, v100);
  v109 = OUTLINED_FUNCTION_3_60(v101, v102, v103, v104, v105, v106, v107, v108, v137, v147, v157, v167, v177, v187, v197, v207, v217, v227, v237, v247, v257, v260, v261, v262, v263, v264, v265, v266, v267);
  Tensor.init(shape:coercingScalars:scalarType:on:)(v109, v82, v110, v111, v112);
  v113 = sub_25BA9C2C8(v269);
  OUTLINED_FUNCTION_20_36(v113, v114, v115, v116, v117, v118, v119, v120, v138, v148, v158, v168, v178, v188, v198, v208, v218, v228, v238, v248, v258, v80, v261, v262, v263, v264, v265, v266, v267, v268, v3);
  static Tensor.* infix(_:_:)();
  static Tensor.+ infix(_:_:)();

  OUTLINED_FUNCTION_20_36(v121, v122, v123, v124, v125, v126, v127, v128, v139, v149, v159, v169, v179, v189, v199, v209, v219, v229, v239, v249, v259, v55, v261, v262, v263, v264, v265, v266, v267, v268, v269[0]);
  min(_:_:)();
  v269[0] = v30;
  max(_:_:)();
}

uint64_t threshold(_:threshold:replacement:)(double a1, float a2)
{
  OUTLINED_FUNCTION_38_0();
  v6 = *v5;
  v7 = *(*(*v5 + 16) + 160);
  if (!sub_25BAA80BC(v7, &unk_286D42270))
  {
    v11[0] = v7;
    sub_25BC8FACC();
    OUTLINED_FUNCTION_30();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4140, &qword_25BCC2F10);
    v13[0] = v2;
    v13[1] = v11;
    OUTLINED_FUNCTION_9_16();
    OUTLINED_FUNCTION_10_27();
    sub_25BADDD28();
  }

  v12 = v6;
  OUTLINED_FUNCTION_6_60();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F28, &qword_25BCBBE60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25BCBAE50;
  *(inited + 32) = a2;
  sub_25BAA51C8(v13, v11);
  sub_25BACC1B0(MEMORY[0x277D84F90], inited, v11, &v10);
  sub_25BA9C2C8(v13);
  sub_25BC78E08(v6, v3);
  Tensor.replacing(with:where:)(&v10, v13, v2);
}

uint64_t hardswish(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(*a1 + 16);
  v5 = *(v4 + 160);
  if (!sub_25BAA80BC(*(v4 + 160), &unk_286D42270))
  {
    OUTLINED_FUNCTION_61_12();
    OUTLINED_FUNCTION_30();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4140, &qword_25BCC2F10);
    v51[0] = a2;
    v51[1] = v5;
    OUTLINED_FUNCTION_9_27();
    OUTLINED_FUNCTION_10_27();
    sub_25BADDD28();
  }

  v6 = *(v4 + 160);
  OUTLINED_FUNCTION_8_28();
  v7 = MEMORY[0x277D84F90];
  v49 = MEMORY[0x277D84F90];
  v9 = OUTLINED_FUNCTION_37_25(v8, v27);
  OUTLINED_FUNCTION_18_43(v9, &unk_286D44DD8, v10, v11, v12, v13, v14, v15, v28, v31, v34, v36, v38, v40, v42, v44, SWORD2(v44), SBYTE6(v44), HIBYTE(v44), v49, v50);
  sub_25BA9C2C8(v51);
  v16 = *(*(v3 + 16) + 160);
  OUTLINED_FUNCTION_8_28();
  v18 = OUTLINED_FUNCTION_37_25(v17, v29);
  OUTLINED_FUNCTION_18_43(v18, &unk_286D44E00, v19, v20, v21, v22, v23, v24, v30, v32, v35, v37, v39, v41, v43, v45, v46, v47, v48, v7, v50);
  sub_25BA9C2C8(v51);
  v25 = v50;
  v51[0] = v3;
  static Tensor.+ infix(_:_:)();
  v50 = v33;
  relu6(_:)(&v50);

  static Tensor.* infix(_:_:)();

  v51[0] = v25;
  static Tensor./ infix(_:_:)();
}

uint64_t clampedReLU(_:alpha:beta:)()
{
  OUTLINED_FUNCTION_21_36();
  v3 = *v2;
  v4 = *(*(*v2 + 16) + 160);
  OUTLINED_FUNCTION_31_19();
  v5 = MEMORY[0x277D84F90];
  v21 = MEMORY[0x277D84F90];
  LOBYTE(v19) = v6;
  sub_25BAA51C8(v23, v20);
  Tensor.init(shape:coercingScalars:scalarType:on:)(&v21, &unk_286D45E58, &v19, v20, &v22);
  sub_25BA9C2C8(v23);
  v7 = v22;
  OUTLINED_FUNCTION_31_19();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F28, &qword_25BCBBE60);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_17_45(inited, xmmword_25BCBAE50);
  sub_25BAA51C8(v23, v20);
  sub_25BACC1B0(v5, inited, v20, &v22);
  sub_25BA9C2C8(v23);
  sub_25BB25FB8(v3, v1);
  min(_:_:)();

  OUTLINED_FUNCTION_31_19();
  v9 = swift_initStackObject();
  OUTLINED_FUNCTION_13_47(v9, v10, v11, v12, v13, v14, v15, v16, v17);
  sub_25BAA51C8(v23, v20);
  sub_25BACC1B0(v5, v9, v20, &v22);
  sub_25BA9C2C8(v23);
  v23[0] = v3;
  min(_:_:)();

  v22 = v7;
  v23[0] = v3;
  static Tensor..> infix(_:_:)(v23, &v22);
  Tensor.replacing(with:where:)(v20, &v19, v0);
}

uint64_t sub_25BC7BAAC(uint64_t result, uint64_t a2)
{
  if (*(result + 16))
  {
    if (*(a2 + 16))
    {
      v2 = *(result + 32);
      v3 = *(a2 + 32);
      v4 = *(*(v3 + 16) + 160);
      v15 = 0;
      memset(v14, 0, sizeof(v14));
      v12 = MEMORY[0x277D84F90];
      LOBYTE(v10) = v4;
      sub_25BAA51C8(v14, v11);

      Tensor.init(shape:coercingScalars:scalarType:on:)(&v12, &unk_286D45E80, &v10, v11, &v13);
      sub_25BA9C2C8(v14);
      v5 = v13;
      v11[0] = v3;
      sigmoid(_:)(v14, v11);
      v6 = *&v14[0];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F30, &qword_25BCC3220);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_25BCBAE50;
      v11[0] = v2;
      v13 = v5;
      *&v14[0] = v6;
      v12 = v6;
      static Tensor.- infix(_:_:)();
      static Tensor.* infix(_:_:)();

      static Tensor.* infix(_:_:)();

      *(v7 + 32) = *&v14[0];
      v8 = *(v3 + 16);

      *(v7 + 40) = sub_25BAC42B0();
      *(v7 + 48) = v9;

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

uint64_t sub_25BC7BC38(uint64_t result, uint64_t a2, _BOOL8 a3)
{
  if (!*(result + 16))
  {
    __break(1u);
    goto LABEL_7;
  }

  if (!*(a2 + 16))
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v4 = *(result + 32);
  v5 = *(a2 + 32);
  v13 = v5;
  v6 = a3;
  if (!a3)
  {
    v6 = *(*(*(v5 + 16) + 152) + 16) < 2uLL;
  }

  softmax(_:alongAxis:)(&v14, &v13, v6);
  v7 = v14;
  v13 = v4;
  v14 = v4;
  static Tensor.* infix(_:_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_25BCBAE50;
  *(v8 + 32) = a3;
  Tensor.sum(alongAxes:)(&v13, v8);

  static Tensor.- infix(_:_:)();

  v13 = v7;
  static Tensor.* infix(_:_:)();

  v9 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F30, &qword_25BCC3220);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_25BCBAE50;
  *(v10 + 32) = v9;
  v11 = *(v5 + 16);

  *(v10 + 40) = sub_25BAC42B0();
  *(v10 + 48) = v12;

  return v10;
}

uint64_t silu(_:beta:)(uint64_t a1)
{
  OUTLINED_FUNCTION_11_50(a1);
  if (!sub_25BAA80BC(v2, &unk_286D42270))
  {
    LOBYTE(v16[0]) = v2;
    sub_25BC8FACC();
    OUTLINED_FUNCTION_30();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4140, &qword_25BCC2F10);
    v28[0] = v1;
    v28[1] = v16;
    OUTLINED_FUNCTION_9_16();
    OUTLINED_FUNCTION_10_27();
    sub_25BADDD28();
  }

  v5 = *(v4 + 160);
  OUTLINED_FUNCTION_6_60();
  v26 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F28, &qword_25BCBBE60);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_17_45(inited, xmmword_25BCBAE50);
  v20 = v5;
  v7 = sub_25BAA51C8(v28, v16);
  OUTLINED_FUNCTION_45_19(v7, v8, v9, v10, v11, v12, v13, v14, v16[0], v16[1], v16[2], v16[3], v16[4], v16[5], v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27);
  sub_25BA9C2C8(v28);
  v28[0] = v3;
  v26 = v3;
  static Tensor.* infix(_:_:)();
  v27 = v16[0];
  sigmoid(_:)(&v27);

  static Tensor.* infix(_:_:)();
}

uint64_t erf(_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_4_36(a1);
  if (!sub_25BAA80BC(v3, &unk_286D42270))
  {
    v51 = v3;
    sub_25BC8FACC();
    OUTLINED_FUNCTION_30();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4140, &qword_25BCC2F10);
    v31 = v1;
    v32 = &v51;
    OUTLINED_FUNCTION_8_1();
    OUTLINED_FUNCTION_10_27();
    sub_25BADDD28();
  }

  sub_25BAAF074(sub_25BC7C130);
  OUTLINED_FUNCTION_27_32("/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/ActivationOps.swift");
  v52 = xmmword_25BCD3A20;
  OUTLINED_FUNCTION_41_25(v4);
  type metadata accessor for ActivationOperation();
  swift_allocObject();
  v5 = OUTLINED_FUNCTION_16_49();
  sub_25BBB2EA8(v5, v6, v7, 0, v2, v8, v9, v10, v27, v29);
  v11 = OUTLINED_FUNCTION_7_26();
  sub_25BAA51C8(v11, v50);
  sub_25BAA51C8(v50, v49);
  v12 = type metadata accessor for ContextManager();
  OUTLINED_FUNCTION_9_7();
  swift_retain_n();
  v13 = sub_25BAA49B8();
  OUTLINED_FUNCTION_60_5(v13, v14);

  sub_25BAA4AF4(&v31);
  v15 = sub_25BAA49B8();
  OUTLINED_FUNCTION_60_5(v15, v16);

  sub_25BAA4AF4(&v31);
  type metadata accessor for TensorRepresentation();
  v17 = OUTLINED_FUNCTION_16_3();
  OUTLINED_FUNCTION_32_27(v17, v18, v19, v20, v21, v22, v23, v24, v28, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49[0]);
  OUTLINED_FUNCTION_17_7();
  v25 = OUTLINED_FUNCTION_15_7();
  OUTLINED_FUNCTION_13_22(v25);
  sub_25BAA6EB0();
  OUTLINED_FUNCTION_9_7();

  result = sub_25BA9C2C8(v50);
  *v1 = v12;
  return result;
}

uint64_t sub_25BC7C36C(uint64_t a1)
{
  v2 = sub_25BC7C550();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BC7C3A8(uint64_t a1)
{
  v2 = sub_25BC7C550();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Flatten.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB77D0, &qword_25BCD3A58);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25BC7C550();
  sub_25BCB7B6C();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_25BC7C550()
{
  result = qword_28154C0B0[0];
  if (!qword_28154C0B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28154C0B0);
  }

  return result;
}

unint64_t sub_25BC7C5C8()
{
  result = qword_28154C0A0;
  if (!qword_28154C0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28154C0A0);
  }

  return result;
}

unint64_t sub_25BC7C620()
{
  result = qword_28154C0A8;
  if (!qword_28154C0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28154C0A8);
  }

  return result;
}

uint64_t sub_25BC7C674()
{
  v1 = 29295;
  if (*(v0 + 130) != 1)
  {
    v1 = 7499640;
  }

  if (*(v0 + 130))
  {
    return v1;
  }

  else
  {
    return 6581857;
  }
}

uint64_t sub_25BC7C6B4(char a1)
{
  type metadata accessor for ContextManager();
  v2 = sub_25BAA49B8();
  OUTLINED_FUNCTION_60_5(v2, v3);

  v5 = v11;
  v4 = v12;
  sub_25BCB617C();
  sub_25BAA4AF4(&v9);
  if (a1)
  {
    if (a1 == 1)
    {
      v6 = 0xE700000000000000;
      v7 = 0x64696F6D676973;
    }

    else
    {
      v6 = 0xE900000000000055;
      v7 = 0x4C6552796B61656CLL;
    }
  }

  else
  {
    v6 = 0xE300000000000000;
    v7 = 6713957;
  }

  type metadata accessor for TensorOperationIdentityGenerator();
  sub_25BAA6090();
  if (v4)
  {
    v9 = v5;
    v10 = v4;
    sub_25BCB617C();
    OUTLINED_FUNCTION_11_4();
    MEMORY[0x25F876C90](v7, v6);

    OUTLINED_FUNCTION_11_4();
    sub_25BCB77FC();
    OUTLINED_FUNCTION_17_46();
  }

  else
  {
    v9 = v7;
    v10 = v6;
    OUTLINED_FUNCTION_11_4();
    sub_25BCB77FC();
    OUTLINED_FUNCTION_15_47();
  }

  return OUTLINED_FUNCTION_14_45();
}

uint64_t sub_25BC7C814(char a1)
{
  type metadata accessor for ContextManager();
  v2 = sub_25BAA49B8();
  OUTLINED_FUNCTION_60_5(v2, v3);

  v5 = v10;
  v4 = v11;
  sub_25BCB617C();
  sub_25BAA4AF4(&v8);
  if (a1)
  {
    v6 = 0x6E696D677261;
  }

  else
  {
    v6 = 0x78616D677261;
  }

  type metadata accessor for TensorOperationIdentityGenerator();
  sub_25BAA6090();
  if (v4)
  {
    v8 = v5;
    v9 = v4;
    sub_25BCB617C();
    OUTLINED_FUNCTION_11_4();
    MEMORY[0x25F876C90](v6, 0xE600000000000000);

    OUTLINED_FUNCTION_11_4();
    sub_25BCB77FC();
    OUTLINED_FUNCTION_17_46();
  }

  else
  {
    v8 = v6;
    v9 = 0xE600000000000000;
    OUTLINED_FUNCTION_11_4();
    sub_25BCB77FC();
    OUTLINED_FUNCTION_15_47();
  }

  return OUTLINED_FUNCTION_14_45();
}

uint64_t sub_25BC7C948(char a1)
{
  type metadata accessor for ContextManager();
  sub_25BAA49B8();
  sub_25BAA4A5C(&v10);

  v3 = v12;
  v2 = v13;
  sub_25BCB617C();
  sub_25BAA4AF4(&v10);
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0xE200000000000000;
      v5 = 29295;
    }

    else
    {
      v4 = 0xE300000000000000;
      v5 = 7499640;
    }
  }

  else
  {
    v4 = 0xE300000000000000;
    v5 = 6581857;
  }

  type metadata accessor for TensorOperationIdentityGenerator();
  v6 = sub_25BAA6090();
  if (v2)
  {
    v10 = v3;
    v11 = v2;
    sub_25BCB617C();
    MEMORY[0x25F876C90](95, 0xE100000000000000);
    MEMORY[0x25F876C90](v5, v4);

    MEMORY[0x25F876C90](95, 0xE100000000000000);
    v7 = sub_25BCB77FC();
    MEMORY[0x25F876C90](v7);
  }

  else
  {
    v10 = v5;
    v11 = v4;
    MEMORY[0x25F876C90](95, 0xE100000000000000);
    v8 = sub_25BCB77FC();
    MEMORY[0x25F876C90](v8);
  }

  return v6;
}

uint64_t sub_25BC7CAD0()
{
  type metadata accessor for ContextManager();
  v0 = sub_25BAA49B8();
  OUTLINED_FUNCTION_60_5(v0, v1);

  v3 = v7;
  v2 = v8;
  sub_25BCB617C();
  sub_25BAA4AF4(&v5);
  type metadata accessor for TensorOperationIdentityGenerator();
  sub_25BAA6090();
  if (v2)
  {
    v5 = v3;
    v6 = v2;
    sub_25BCB617C();
    OUTLINED_FUNCTION_11_4();
    MEMORY[0x25F876C90](0x4E6C616369676F6CLL, 0xEA0000000000746FLL);
    OUTLINED_FUNCTION_11_4();
    sub_25BCB77FC();
    OUTLINED_FUNCTION_17_46();
  }

  else
  {
    v5 = 0x4E6C616369676F6CLL;
    v6 = 0xEB000000005F746FLL;
    sub_25BCB77FC();
    OUTLINED_FUNCTION_15_47();
  }

  return OUTLINED_FUNCTION_14_45();
}

uint64_t sub_25BC7CC50(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_25BAC4018();
  v7 = *(v2 + 40);
  v8 = v6 == sub_25BAC4018();
  v9 = v8;
  if (v8)
  {
    v10 = *(v3 + 40);
    *(v3 + 40) = a2;
  }

  v11 = *(a1 + 16);
  v12 = *(v3 + 48);
  if (sub_25BAC4018() == v11)
  {
    v13 = *(v3 + 48);
    *(v3 + 48) = a2;

    return 1;
  }

  return v9;
}

uint64_t sub_25BC7CCF4()
{
  sub_25BA9D6BC();

  return swift_deallocClassInstance();
}

uint64_t sub_25BC7CD50(uint64_t a1)
{
  v3 = *v1;
  WitnessTable = swift_getWitnessTable();
  return sub_25BC60CAC(a1, WitnessTable);
}

uint64_t sub_25BC7CDC8()
{
  v0 = sub_25BCB761C();

  if (v0 >= 8)
  {
    return 8;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_25BC7CE38@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_25BC7CDC8();
  *a2 = result;
  return result;
}

uint64_t sub_25BC7CE68@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25BABEE4C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_25BC7CEA4()
{
  v0 = sub_25BCB761C();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_25BC7CF14@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_25BC7CEA4();
  *a2 = result;
  return result;
}

uint64_t sub_25BC7CF44@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25BAC86EC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_25BC7CF80()
{
  v0 = sub_25BCB761C();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_25BC7CFCC(char a1)
{
  if (!a1)
  {
    return 6581857;
  }

  if (a1 == 1)
  {
    return 29295;
  }

  return 7499640;
}

uint64_t sub_25BC7D02C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_25BC7CF80();
  *a2 = result;
  return result;
}

uint64_t sub_25BC7D05C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25BC7CFCC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_25BC7D098(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  OUTLINED_FUNCTION_11_51(a1, a2, a3, a4, a5, a6, a7);
  if (!v11)
  {
    v9 = sub_25BC7C948(v12);
  }

  v13 = *v7;
  v14 = v7[1];
  *(v8 + 72) = *v7;
  return OUTLINED_FUNCTION_0_90(v9, v10, v11, v13.n128_f64[0], v14);
}

_BYTE *sub_25BC7D104(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_25BC7D1DC(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_25BC7D2B4(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_25BC7D3C0()
{
  result = qword_27FBB77E8;
  if (!qword_27FBB77E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB77E8);
  }

  return result;
}

unint64_t sub_25BC7D448()
{
  result = qword_27FBB7800;
  if (!qword_27FBB7800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7800);
  }

  return result;
}

unint64_t sub_25BC7D4D0()
{
  result = qword_27FBB7818;
  if (!qword_27FBB7818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7818);
  }

  return result;
}

uint64_t sub_25BC7D55C(uint64_t a1)
{
  result = sub_25BC7D714(&qword_27FBB4908, type metadata accessor for BinaryLogicalOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BC7D5B4(uint64_t a1)
{
  result = sub_25BC7D714(qword_28154D158, type metadata accessor for BinaryComparisonOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BC7D60C(uint64_t a1)
{
  result = sub_25BC7D714(qword_28154D288, type metadata accessor for BinaryArithmeticOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BC7D664(uint64_t a1)
{
  result = sub_25BC7D714(qword_28154CB68, type metadata accessor for BinaryElementwiseOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BC7D6BC(uint64_t a1)
{
  result = sub_25BC7D714(qword_28154C8D8, type metadata accessor for BaseBinaryElementwiseOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BC7D714(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25BC7D758(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v5 >= v4)
  {
    v6 = *(a1 + 16);
  }

  else
  {
    v6 = *(a2 + 16);
  }

  v26 = MEMORY[0x277D84F90];
  sub_25BAA21EC();
  if (v6)
  {
    v7 = a1 + 32;
    sub_25BCB617C();
    sub_25BCB617C();
    v8 = 0;
    v9 = a1;
    v10 = a2;
    while (1)
    {
      if (v4 == v8 || v5 == v8)
      {
        goto LABEL_35;
      }

      v11 = *(v7 + 8 * v8);
      v12 = *(a2 + 32 + 8 * v8);
      v13 = v11 / v12;
      if (v12 == -1)
      {
        if (v11 == 0x8000000000000000)
        {
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_34:
          sub_25BCB74CC();
          __break(1u);
LABEL_35:
          sub_25BADDD28();
        }
      }

      else if (v11 % v12)
      {
        goto LABEL_34;
      }

      v14 = *(v26 + 16);
      if (v14 >= *(v26 + 24) >> 1)
      {
        v22 = v10;
        v24 = v9;
        sub_25BAA21EC();
        v10 = v22;
        v9 = v24;
      }

      ++v8;
      *(v26 + 16) = v14 + 1;
      *(v26 + 8 * v14 + 32) = v13;
      if (v6 == v8)
      {
        goto LABEL_17;
      }
    }
  }

  sub_25BCB617C();
  sub_25BCB617C();
  v9 = a1;
  v10 = a2;
LABEL_17:
  v15 = v9 + 32;
  v16 = v10 + 32;
  while (v4 != v6)
  {
    if (v6 >= v4)
    {
      goto LABEL_35;
    }

    if (v5 == v6)
    {
      break;
    }

    if (v6 >= v5)
    {
      goto LABEL_35;
    }

    v17 = *(v15 + 8 * v6);
    v18 = *(v16 + 8 * v6);
    v19 = v17 / v18;
    if (v18 == -1)
    {
      if (v17 == 0x8000000000000000)
      {
        goto LABEL_31;
      }
    }

    else if (v17 % v18)
    {
      goto LABEL_34;
    }

    v20 = *(v26 + 16);
    if (v20 >= *(v26 + 24) >> 1)
    {
      v23 = v10;
      v25 = v9;
      sub_25BAA21EC();
      v10 = v23;
      v9 = v25;
    }

    *(v26 + 16) = v20 + 1;
    *(v26 + 8 * v20 + 32) = v19;
    ++v6;
  }

  return v26;
}

uint64_t sub_25BC7DA80()
{
  type metadata accessor for ContextManager();
  sub_25BAA49B8();
  sub_25BAA4A5C(v2);

  v2[10] = 0;
  v0 = objc_autoreleasePoolPush();
  sub_25BAB6FD4();
  objc_autoreleasePoolPop(v0);
  return sub_25BAA4AF4(v2);
}

uint64_t sub_25BC7DB2C(uint64_t a1, uint64_t *a2, char a3)
{
  v6 = *v3;
  v7 = *(a1 + 16);
  v8 = 1.0;
  v9 = 32;
  if (v7)
  {
    while (1)
    {
      v10 = *(a1 + v9);
      v11 = *(*(v6 + 16) + 152);
      v12 = *(v11 + 16);
      if (v10 < -v12 || v10 >= v12)
      {
        goto LABEL_16;
      }

      v12 = (v12 & (v10 >> 63)) + v10;
      if (v12 < 0)
      {
        break;
      }

      v8 = v8 * *(v11 + 8 * v12 + 32);
      v9 += 8;
      if (!--v7)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_16:
    *&v23 = 0;
    v22 = v10;
    BYTE8(v23) = -1;
    v25 = 0;
    v24 = v12;
    v26 = -1;
    v27 = 4;
    sub_25BCB617C();
    OUTLINED_FUNCTION_17_4();
    sub_25BADDD28();
  }

LABEL_9:
  if (*a2)
  {
    v14 = *a2;
  }

  else
  {
    v19[0] = *v3;
    Tensor.mean(alongAxes:)(a1, &v22);
    v14 = v22;
  }

  if (a3)
  {
    v8 = v8 + -1.0;
  }

  *&v22 = v6;
  v19[0] = v14;

  static Tensor.- infix(_:_:)();
  Tensor.squared()();

  Tensor.sum(alongAxes:)(&v22, a1);

  v21[1] = v22;
  v15 = *(*(v14 + 16) + 160);
  LODWORD(v25) = 0;
  v23 = 0u;
  v24 = 0u;
  v22 = 0u;
  v21[0] = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F28, &qword_25BCBBE60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25BCBAE50;
  *(inited + 32) = v8;
  v20 = v15;
  sub_25BAA486C(&v22, v19, &qword_27FBB6730, &qword_25BCBC4B0);
  Tensor.init(shape:coercingScalars:scalarType:on:)(v21, inited, &v20, v19, &v18);
  sub_25BAA6F5C(&v22, &qword_27FBB6730, &qword_25BCBC4B0);
  static Tensor./ infix(_:_:)();
}

uint64_t BatchNorm.scale.getter()
{
  v1 = *(v0 + 8);
  v2 = OUTLINED_FUNCTION_38();
  if (v4)
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_1_3();
LABEL_8:
    OUTLINED_FUNCTION_23_36();
    result = sub_25BCB74CC();
    __break(1u);
    return result;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_5_3();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_75_1(v2, v3);

  return sub_25BAB69FC();
}

uint64_t sub_25BC7DE2C@<X0>(void *a1@<X8>)
{
  result = BatchNorm.scale.getter();
  *a1 = v3;
  return result;
}

uint64_t BatchNorm.scale.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_40_0(a1);
  v2 = OUTLINED_FUNCTION_29(*(v1 + 8));
  if (v3)
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_1_3();
  }

  else
  {
    if (v2 < 0)
    {
      OUTLINED_FUNCTION_86_0(v2);
      return OUTLINED_FUNCTION_113();
    }

    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_5_3();
  }

  OUTLINED_FUNCTION_23_36();
  result = sub_25BCB74CC();
  __break(1u);
  return result;
}

uint64_t BatchNorm.$scale.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 17);
  return OUTLINED_FUNCTION_10_45(*(v1 + 8), a1);
}

uint64_t BatchNorm.offset.getter()
{
  v1 = *(v0 + 24);
  v2 = OUTLINED_FUNCTION_38();
  if (v4)
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_1_3();
LABEL_8:
    OUTLINED_FUNCTION_23_36();
    result = sub_25BCB74CC();
    __break(1u);
    return result;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_5_3();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_75_1(v2, v3);

  return sub_25BAB69FC();
}

uint64_t sub_25BC7DFE0@<X0>(void *a1@<X8>)
{
  result = BatchNorm.offset.getter();
  *a1 = v3;
  return result;
}

uint64_t BatchNorm.offset.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_40_0(a1);
  v2 = OUTLINED_FUNCTION_29(*(v1 + 24));
  if (v3)
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_1_3();
  }

  else
  {
    if (v2 < 0)
    {
      OUTLINED_FUNCTION_86_0(v2);
      return OUTLINED_FUNCTION_113();
    }

    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_5_3();
  }

  OUTLINED_FUNCTION_23_36();
  result = sub_25BCB74CC();
  __break(1u);
  return result;
}

uint64_t BatchNorm.$offset.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 33);
  return OUTLINED_FUNCTION_10_45(*(v1 + 24), a1);
}

uint64_t BatchNorm.featureCount.getter()
{
  v1 = *(v0 + 56);
  OUTLINED_FUNCTION_59_14();
  if ((*(v1 + 24) & 1) == 0)
  {
    return *(v1 + 16);
  }

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_7_0();
  result = OUTLINED_FUNCTION_58_15();
  __break(1u);
  return result;
}

uint64_t BatchNorm.runningMean.getter()
{
  v1 = *(v0 + 40);
  v2 = OUTLINED_FUNCTION_38();
  if (v4)
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_1_3();
LABEL_8:
    OUTLINED_FUNCTION_23_36();
    result = sub_25BCB74CC();
    __break(1u);
    return result;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_5_3();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_75_1(v2, v3);

  return sub_25BAB69FC();
}

uint64_t sub_25BC7E238@<X0>(void *a1@<X8>)
{
  result = BatchNorm.runningMean.getter();
  *a1 = v3;
  return result;
}

uint64_t BatchNorm.runningMean.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + 40);
  v5[0] = v2;
  v5[1] = v3;

  LayerState.wrappedValue.setter(v5);
}

uint64_t BatchNorm.runningMean.modify(uint64_t *a1)
{
  OUTLINED_FUNCTION_86_6(*(v1 + 40));
  if (v3)
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_1_3();
  }

  else
  {
    if (v1 < 0)
    {
      *a1 = v1 & 0x7FFFFFFFFFFFFFFFLL;

      sub_25BAB3020(v1);
      return OUTLINED_FUNCTION_113();
    }

    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_5_3();
  }

  OUTLINED_FUNCTION_23_36();
  result = sub_25BCB74CC();
  __break(1u);
  return result;
}

uint64_t BatchNorm.runningVariance.getter()
{
  v1 = *(v0 + 48);
  v2 = OUTLINED_FUNCTION_38();
  if (v4)
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_1_3();
LABEL_8:
    OUTLINED_FUNCTION_23_36();
    result = sub_25BCB74CC();
    __break(1u);
    return result;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_5_3();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_75_1(v2, v3);

  return sub_25BAB69FC();
}

uint64_t sub_25BC7E418@<X0>(void *a1@<X8>)
{
  result = BatchNorm.runningVariance.getter();
  *a1 = v3;
  return result;
}

uint64_t sub_25BC7E454(uint64_t *a1)
{
  OUTLINED_FUNCTION_78_11(a1);
  memcpy(v4, v5, 0x50uLL);
  v7 = v3;

  sub_25BB922E4(v8, __dst);
  v1(&v7);
  memcpy(__dst, v2, sizeof(__dst));
  return sub_25BB92340(__dst);
}

uint64_t BatchNorm.runningVariance.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + 48);
  v5[0] = v2;
  v5[1] = v3;

  LayerState.wrappedValue.setter(v5);
}

uint64_t BatchNorm.runningVariance.modify(uint64_t *a1)
{
  OUTLINED_FUNCTION_86_6(*(v1 + 48));
  if (v3)
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_1_3();
  }

  else
  {
    if (v1 < 0)
    {
      *a1 = v1 & 0x7FFFFFFFFFFFFFFFLL;

      sub_25BAB3020(v1);
      return OUTLINED_FUNCTION_113();
    }

    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_5_3();
  }

  OUTLINED_FUNCTION_23_36();
  result = sub_25BCB74CC();
  __break(1u);
  return result;
}

uint64_t sub_25BC7E5D0(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v4 = *a1;
  if (a2)
  {

    LayerState.wrappedValue.setter(&v4);
  }

  else
  {
    LayerState.wrappedValue.setter(&v4);
  }
}

uint64_t BatchNorm.isEveryParameterInitialized.getter()
{
  if (*(*(v0 + 72) + 16))
  {
    v1 = 1;
  }

  else
  {
    v2 = *(v0 + 56);
    OUTLINED_FUNCTION_39_26();
    OUTLINED_FUNCTION_45_20();
  }

  return v1 & 1;
}

uint64_t BatchNorm.init(momentum:offset:scale:epsilon:runningMean:runningVariance:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>, float a6@<S0>, float a7@<S1>)
{
  v10 = *a1;
  v11 = *a2;
  v12 = *a3;
  v13 = *a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB7820, &qword_25BCD40A0);
  OUTLINED_FUNCTION_44_20();
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(a5 + 56) = OUTLINED_FUNCTION_57_12(v14);
  *(a5 + 64) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB7828, &qword_25BCD40A8);
  OUTLINED_FUNCTION_32_28();
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(a5 + 72) = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39C0, &unk_25BCC8940);
  inited = swift_initStackObject();
  v17 = 0;
  *(inited + 16) = xmmword_25BCBAE90;
  *(inited + 32) = v10;
  *(inited + 40) = v11;
  *(inited + 48) = v12;
  v18 = *(*(v13 + 16) + 152);
  v19 = *(v18 + 16);
LABEL_2:
  while (v17 != 3)
  {
    v20 = *(*(*(inited + 32 + 8 * v17) + 16) + 152);
    if (*(v20 + 16) != v19)
    {
      goto LABEL_14;
    }

    ++v17;
    if (v19 && v20 != v18)
    {
      v21 = (v20 + 32);
      v22 = (v18 + 32);
      v23 = *(v18 + 16);
      while (v23)
      {
        if (*v21 != *v22)
        {
          goto LABEL_14;
        }

        ++v21;
        ++v22;
        if (!--v23)
        {
          goto LABEL_2;
        }
      }

      __break(1u);
LABEL_14:
      swift_setDeallocating();

      sub_25BAB3FD0();
      OUTLINED_FUNCTION_16_50();
      OUTLINED_FUNCTION_69_1();
      __break(1u);
LABEL_15:
      OUTLINED_FUNCTION_17_4();
      sub_25BADDD28();
    }
  }

  swift_setDeallocating();

  sub_25BAB3FD0();
  *a5 = a6;
  *(a5 + 32) = 256;
  type metadata accessor for LayerVariableReference();
  v24 = OUTLINED_FUNCTION_5();
  *(a5 + 24) = OUTLINED_FUNCTION_38_25(v24, v25, v26, v27, v28, v29, v30, v31, v60, v64, v68, v10, v72, v76, v80, v84, v88, v92, v96, v100, v104, v108, v112, v116, v120, *v124, v124[4]);
  *(a5 + 16) = 256;
  v32 = OUTLINED_FUNCTION_18_37();
  *(a5 + 8) = OUTLINED_FUNCTION_38_25(v32, v33, v34, v35, v36, v37, v38, v39, v61, v65, v69, v11, v73, v77, v81, v85, v89, v93, v97, v101, v105, v109, v113, v117, v121, v125, v128);
  *(a5 + 36) = a7;
  OUTLINED_FUNCTION_18_37();

  *(a5 + 40) = OUTLINED_FUNCTION_38_25(v40, v41, v42, v43, v44, v45, v46, v47, v62, v66, v70, v12, v74, v78, v82, v86, v90, v94, v98, v102, v106, v110, v114, v118, v122, v126, v129);
  v48 = OUTLINED_FUNCTION_18_37();
  *(a5 + 48) = OUTLINED_FUNCTION_38_25(v48, v49, v50, v51, v52, v53, v54, v55, v63, v67, v71, v13, v75, v79, v83, v87, v91, v95, v99, v103, v107, v111, v115, v119, v123, v127, v130);
  v56 = *(v12 + 16);

  v57 = *(v56 + 152);
  sub_25BCB617C();

  if (!*(v57 + 16))
  {
    goto LABEL_15;
  }

  v58 = *(v57 + 32);

  OUTLINED_FUNCTION_5_53();
  result = swift_beginAccess();
  *(v14 + 16) = v58;
  *(v14 + 24) = 0;
  return result;
}

uint64_t BatchNorm.init(offsetInitializer:scaleInitializer:momentum:epsilon:)@<X0>(uint64_t a1@<X8>, float a2@<S0>, float a3@<S1>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB7820, &qword_25BCD40A0);
  OUTLINED_FUNCTION_44_20();
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v6 + 24) = 1;
  *(a1 + 56) = v6;
  *(a1 + 64) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB7828, &qword_25BCD40A8);
  OUTLINED_FUNCTION_32_28();
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(a1 + 72) = v7;
  *a1 = a2;
  *(a1 + 36) = a3;
  type metadata accessor for LayerVariableReference();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_17_26();

  *(a1 + 24) = sub_25BB1AB04(v8);
  *(a1 + 32) = 256;
  OUTLINED_FUNCTION_18_37();
  OUTLINED_FUNCTION_54_18();

  *(a1 + 8) = sub_25BB1AB04(v9);
  *(a1 + 16) = 256;
  type metadata accessor for ParameterInitializer();
  sub_25BB17820(v10);
  OUTLINED_FUNCTION_18_37();
  *(a1 + 40) = OUTLINED_FUNCTION_76_8();
  v12 = sub_25BB17964(v11);
  OUTLINED_FUNCTION_18_37();
  OUTLINED_FUNCTION_76_8();
  OUTLINED_FUNCTION_17_26();

  *(a1 + 48) = v12;
  OUTLINED_FUNCTION_5_53();
  result = swift_beginAccess();
  *(v6 + 16) = 0;
  *(v6 + 24) = 1;
  return result;
}

uint64_t BatchNorm.initializeParameters(for:)(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_22_35(*a1);
  if (v3 <= 1)
  {
    OUTLINED_FUNCTION_59_1();
    OUTLINED_FUNCTION_17_4();
    sub_25BADDD28();
  }

  v4 = v1[6];
  v5 = v1[7];
  v6 = v1[5];
  v7 = v1[3];
  v8 = v1[1];
  v9 = *(v2 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
  v10 = OUTLINED_FUNCTION_5();
  *(v10 + 16) = xmmword_25BCBAE50;
  *(v10 + 32) = v9;
  v39[0] = v10;

  sub_25BB1ABC8(v39);

  v11 = OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_40_25(v11, v12, v13, v14, v15, v16, v17, v18, v19);

  sub_25BB1ABC8(v39);

  v20 = OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_40_25(v20, v21, v22, v23, v24, v25, v26, v27, v28);

  sub_25BB1ABC8(v39);

  v29 = OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_40_25(v29, v30, v31, v32, v33, v34, v35, v36, v37);

  sub_25BB1ABC8(v39);

  OUTLINED_FUNCTION_5_53();
  result = swift_beginAccess();
  *(v5 + 16) = v9;
  *(v5 + 24) = 0;
  return result;
}

uint64_t BatchNorm.forward(_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  memcpy(__dst, v2, sizeof(__dst));
  v5 = *(v4 + 16);
  v6 = *(v5 + 160);
  if (!sub_25BAA80BC(v6, &unk_286D42270))
  {
    v17 = v6;
    sub_25BC8FACC();
    OUTLINED_FUNCTION_30();
    v11 = v4;
    *v12 = &v17;
    *&v12[8] = xmmword_25BCBCE20;
    LOBYTE(v13) = 0;
    *(&v13 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4140, &qword_25BCC2F10);
    v14 = 2;
    v16 = 3;
    OUTLINED_FUNCTION_15_48();
    goto LABEL_6;
  }

  v7 = *(*(v5 + 152) + 16);
  if ((sub_25BAB74D0(v7, 2, 5, 1) & 1) == 0)
  {
    v11 = v7;
    *v12 = xmmword_25BCBCE20;
    v12[16] = 0;
    v13 = xmmword_25BCBAE40;
    v14 = 1;
    v16 = 7;
    OUTLINED_FUNCTION_15_48();
LABEL_6:
    sub_25BADDD28();
  }

  type metadata accessor for ContextManager();
  sub_25BAA49B8();
  sub_25BAA4A5C(&v11);

  type metadata accessor for ResolutionDependencies();
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D84F90];
  *(v8 + 16) = 0;
  *(v8 + 24) = v9;

  v15 = v8;
  sub_25BAA49B8();
  sub_25BAB7060(&v11);

  sub_25BC7EF68(__dst, v4, a2);

  sub_25BAA49B8();
  sub_25BAB814C();

  return sub_25BAA4AF4(&v11);
}

uint64_t sub_25BC7EF68@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  type metadata accessor for ResolutionDependencies();
  v6 = swift_allocObject();
  v7 = MEMORY[0x277D84F90];
  *(v6 + 16) = 0;
  *(v6 + 24) = v7;
  v56 = v6;
  v8 = *(a2 + 16);
  v9 = sub_25BC54B00(0, *(*(v8 + 152) + 16));
  sub_25BCB617C();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_25BAA2110(v9);
    v9 = v49;
  }

  v10 = *(v9 + 16);
  if (v10 < 2)
  {
    __break(1u);
    goto LABEL_48;
  }

  v11 = v10 - 1;
  sub_25BAB254C(v9 + 48, v10 - 2, v9 + 40);
  *(v9 + 16) = v11;

  v51 = *(a1 + 40);
  v12 = *(v51 + 32);
  if ((~v12 & 0xF000000000000007) == 0)
  {
    goto LABEL_48;
  }

  if ((v12 & 0x8000000000000000) == 0)
  {
    goto LABEL_48;
  }

  v50 = *(a1 + 48);
  v13 = *(v50 + 32);
  if ((~v13 & 0xF000000000000007) == 0)
  {
    goto LABEL_48;
  }

  if ((v13 & 0x8000000000000000) == 0)
  {
    goto LABEL_48;
  }

  v14 = *(a1 + 8);
  v15 = *(v14 + 32);
  if ((~v15 & 0xF000000000000007) == 0)
  {
    goto LABEL_48;
  }

  if ((v15 & 0x8000000000000000) == 0)
  {
    goto LABEL_48;
  }

  v16 = *(a1 + 24);
  v17 = *(v16 + 32);
  if ((~v17 & 0xF000000000000007) == 0)
  {
    goto LABEL_48;
  }

  v55 = a2;
  if ((v17 & 0x8000000000000000) == 0)
  {
    goto LABEL_48;
  }

  v18 = *((v12 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
  v19 = *((v13 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
  v20 = *((v15 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
  v21 = *((v17 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
  v22 = *(a1 + 64);
  v62 = v22;
  v53 = v14;
  v54 = v16;
  v52 = v19;
  if (v22)
  {
    if (v22 == 1)
    {

LABEL_17:
      v24 = 1;
      goto LABEL_21;
    }
  }

  else
  {
    type metadata accessor for ContextManager();

    sub_25BAA49B8();
    sub_25BAA4A5C(__src);

    if (__src[10])
    {
      v23 = *(__src[10] + 24);
      sub_25BAA4AF4(__src);
      if (v23)
      {
        goto LABEL_17;
      }
    }

    else
    {
      sub_25BAA4AF4(__src);
    }
  }

  v24 = 2;
LABEL_21:
  v64 = v24;
  type metadata accessor for ContextManager();
  sub_25BAA49B8();
  sub_25BAA4A5C(__src);

  memcpy(v60, __src, 0x88uLL);
  if (*&v60[5])
  {
    v25 = *(*&v60[5] + 24) & 1;
  }

  else
  {
    v25 = 0;
  }

  v26 = *a1;
  v27 = *(a1 + 36);
  sub_25BAA4AF4(v60);
  if (v25)
  {
    v28 = swift_allocObject();
    *(v28 + 16) = v62;
    *(v28 + 24) = v56;
    *(v28 + 32) = v26;
    *(v28 + 40) = v9;
    *(v28 + 48) = v27;

    sub_25BCB617C();
    v29 = sub_25BC8774C;
  }

  else
  {
    v29 = 0;
    v28 = 0;
  }

  v63 = 0;
  *&v60[0] = "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/NormalizationOps.swift";
  *(&v60[0] + 1) = 118;
  LOBYTE(v60[1]) = 2;
  *(&v60[1] + 8) = xmmword_25BCD4070;
  *(&v60[2] + 1) = "init(id:input:runningMean:runningVariance:scale:offset:learningPhase:momentum:normalizedAxes:epsilon:creationSite:backward:)";
  *&v60[3] = 124;
  WORD4(v60[3]) = 2;
  type metadata accessor for BatchNormOperation();
  swift_allocObject();
  v30 = sub_25BC5E814(0, 0, 0, v8, v18, v52, v20, v21, v26, v27, &v64, v9, v60, v29, v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39C0, &unk_25BCC8940);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_25BCBAE90;
  v32 = *(v53 + 32);
  if ((~v32 & 0xF000000000000007) == 0)
  {
    goto LABEL_48;
  }

  if ((v32 & 0x8000000000000000) == 0)
  {
    goto LABEL_48;
  }

  *(v31 + 32) = v32 & 0x7FFFFFFFFFFFFFFFLL;
  v33 = *(v54 + 32);
  if ((~v33 & 0xF000000000000007) == 0 || (v33 & 0x8000000000000000) == 0)
  {
    goto LABEL_48;
  }

  *(v31 + 40) = v33 & 0x7FFFFFFFFFFFFFFFLL;
  *(v31 + 48) = v55;
  sub_25BAB3020(v32);
  sub_25BAB3020(v33);

  sub_25BAB7DE8(v31, v59);
  swift_setDeallocating();
  sub_25BAB3FD0();
  sub_25BAA486C(v59, v58, &qword_27FBB6730, &qword_25BCBC4B0);
  sub_25BAA486C(v58, v57, &qword_27FBB6730, &qword_25BCBC4B0);
  swift_retain_n();
  sub_25BAA49B8();
  sub_25BAA4A5C(__src);

  v34 = __src[10];

  sub_25BAA4AF4(__src);
  sub_25BAA49B8();
  sub_25BAA4A5C(__src);

  v35 = __src[9];

  sub_25BAA4AF4(__src);
  type metadata accessor for TensorRepresentation();
  v36 = swift_allocObject();
  LOBYTE(__src[0]) = 1;
  v37 = sub_25BC0F884(v30, 0, v57, 0x100000000, v34, v35, v36);
  type metadata accessor for TensorHandle();
  v38 = swift_allocObject();
  *(v38 + 16) = v37;

  sub_25BAA6EB0();

  v39 = sub_25BAA6F5C(v58, &qword_27FBB6730, &qword_25BCBC4B0);
  if (v62)
  {
    if (v62 == 1)
    {
      goto LABEL_33;
    }

LABEL_44:

    goto LABEL_46;
  }

  sub_25BAA49B8();
  sub_25BAA4A5C(__src);

  if (!__src[10])
  {

    sub_25BAA4AF4(__src);
    goto LABEL_46;
  }

  v47 = *(__src[10] + 24);
  v39 = sub_25BAA4AF4(__src);
  if ((v47 & 1) == 0)
  {
    goto LABEL_44;
  }

LABEL_33:
  MEMORY[0x28223BE20](v39);
  sub_25BC7DA80();
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_25BCBAE90;
  v41 = *(v51 + 32);
  if ((~v41 & 0xF000000000000007) != 0 && v41 < 0)
  {
    v42 = v40;
    *(v40 + 32) = v41 & 0x7FFFFFFFFFFFFFFFLL;
    v43 = *(v50 + 32);
    if ((~v43 & 0xF000000000000007) != 0 && v43 < 0)
    {
      *(v40 + 40) = v43 & 0x7FFFFFFFFFFFFFFFLL;
      *(v40 + 48) = v38;

      sub_25BAB3020(v41);
      sub_25BAB3020(v43);
      sub_25BACEA3C(v42);
      swift_setDeallocating();
      sub_25BAB3FD0();
      v44 = swift_allocObject();
      *(v44 + 16) = xmmword_25BCBAE70;
      v45 = *(v51 + 32);
      if ((~v45 & 0xF000000000000007) != 0 && v45 < 0)
      {
        *(v44 + 32) = v45 & 0x7FFFFFFFFFFFFFFFLL;
        v46 = *(v50 + 32);
        if ((~v46 & 0xF000000000000007) != 0 && v46 < 0)
        {
          *(v44 + 40) = v46 & 0x7FFFFFFFFFFFFFFFLL;
          sub_25BAB3020(v45);
          sub_25BAB3020(v46);
          sub_25BACEA3C(v44);

          swift_setDeallocating();
          sub_25BAB3FD0();
LABEL_46:
          *a3 = v38;
          return sub_25BAA6F5C(v59, &qword_27FBB6730, &qword_25BCBC4B0);
        }
      }
    }
  }

LABEL_48:
  result = sub_25BCB74CC();
  __break(1u);
  return result;
}

uint64_t sub_25BC7F7DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_25BAA486C(a3, v22, &qword_27FBB6730, &qword_25BCBC4B0);
  sub_25BAA486C(v22, v21, &qword_27FBB6730, &qword_25BCBC4B0);
  type metadata accessor for ContextManager();

  sub_25BAA49B8();
  sub_25BAA4A5C(v18);

  v5 = v20;

  sub_25BAA4AF4(v18);
  sub_25BAA49B8();
  sub_25BAA4A5C(v18);

  v6 = v19;

  sub_25BAA4AF4(v18);
  type metadata accessor for TensorRepresentation();
  v7 = swift_allocObject();
  LOBYTE(v18[0]) = 1;
  v8 = sub_25BC0F884(a2, 1, v21, 0x100000000, v5, v6, v7);
  type metadata accessor for TensorHandle();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;

  sub_25BAA6EB0();

  sub_25BAA6F5C(v22, &qword_27FBB6730, &qword_25BCBC4B0);
  v23 = *(a1 + 40);
  v18[0] = v23;
  v22[0] = v9;
  sub_25BC87764(&v23, v21);
  LayerState.wrappedValue.setter(v22);

  sub_25BAA486C(a3, v22, &qword_27FBB6730, &qword_25BCBC4B0);
  sub_25BAA486C(v22, v21, &qword_27FBB6730, &qword_25BCBC4B0);

  sub_25BAA49B8();
  sub_25BAA4A5C(v18);

  v10 = v20;

  sub_25BAA4AF4(v18);
  sub_25BAA49B8();
  sub_25BAA4A5C(v18);

  v11 = v19;

  sub_25BAA4AF4(v18);
  v12 = swift_allocObject();
  LOBYTE(v18[0]) = 1;
  v13 = sub_25BC0F884(a2, 2, v21, 0x100000000, v10, v11, v12);
  v14 = swift_allocObject();
  *(v14 + 16) = v13;

  sub_25BAA6EB0();

  sub_25BAA6F5C(v22, &qword_27FBB6730, &qword_25BCBC4B0);
  v18[0] = *(a1 + 48);
  v22[0] = v18[0];
  v21[0] = v14;
  sub_25BC87764(v18, v17);
  LayerState.wrappedValue.setter(v21);
}

uint64_t sub_25BC7FADC(uint64_t result, void *a2, char a3, uint64_t a4, uint64_t a5, float a6, float a7)
{
  v11 = result;
  if (a3)
  {
    if (a3 != 1)
    {
      goto LABEL_27;
    }
  }

  else
  {
    type metadata accessor for ContextManager();
    sub_25BAA49B8();
    sub_25BAA4A5C(v79);

    if (!v82)
    {
      result = sub_25BAA4AF4(v79);
      goto LABEL_27;
    }

    v12 = *(v82 + 24);
    result = sub_25BAA4AF4(v79);
    if ((v12 & 1) == 0)
    {
LABEL_27:
      if (!*(v11 + 16))
      {
        goto LABEL_33;
      }

      v36 = a2[2];
      if (!v36)
      {
        goto LABEL_34;
      }

      if (v36 < 4)
      {
        goto LABEL_35;
      }

      if (v36 == 4)
      {
        goto LABEL_36;
      }

      v37 = *(v11 + 32);
      v39 = a2[7];
      v38 = a2[8];
      v40 = *(v37 + 16);
      v41 = *(a2[4] + 16);
      v68 = a2[4];
      v42 = *(v39 + 16);
      v71 = v38;
      v43 = *(v38 + 16);
      v86[55] = 0;
      *&v73 = "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/NormalizationOps.swift";
      *(&v73 + 1) = 118;
      v74 = 2;
      v75 = xmmword_25BCCB490;
      v76 = "init(id:gradient:input:scale:offset:momentum:normalizedAxes:epsilon:creationSite:)";
      v77 = 82;
      v78 = 2;
      type metadata accessor for BatchNormGradientOperation();
      swift_allocObject();

      sub_25BCB617C();
      v44 = sub_25BC5EC94(0, 0, 0, v40, v41, v42, v43, a5, a6, a7, &v73);
      sub_25BAA486C(*(v37 + 16) + 168, v86, &qword_27FBB6730, &qword_25BCBC4B0);
      sub_25BAA486C(v86, v85, &qword_27FBB6730, &qword_25BCBC4B0);
      sub_25BAA486C(v85, v84, &qword_27FBB6730, &qword_25BCBC4B0);
      type metadata accessor for ContextManager();
      swift_retain_n();
      sub_25BAA49B8();
      sub_25BAA4A5C(v79);

      v45 = v82;

      sub_25BAA4AF4(v79);
      sub_25BAA49B8();
      sub_25BAA4A5C(v79);

      v46 = v81;

      sub_25BAA4AF4(v79);
      type metadata accessor for TensorRepresentation();
      v47 = swift_allocObject();
      v79[0] = 1;
      v48 = sub_25BC115BC(v44, 0, v84, 0x100000000, v45, v46, v47);
      type metadata accessor for TensorHandle();
      v49 = swift_allocObject();
      *(v49 + 16) = v48;

      sub_25BAA6EB0();

      sub_25BAA6F5C(v85, &qword_27FBB6730, &qword_25BCBC4B0);
      sub_25BAA486C(v86, v85, &qword_27FBB6730, &qword_25BCBC4B0);
      sub_25BAA486C(v85, v84, &qword_27FBB6730, &qword_25BCBC4B0);
      swift_retain_n();
      sub_25BAA49B8();
      sub_25BAA4A5C(v79);

      v50 = v82;

      sub_25BAA4AF4(v79);
      sub_25BAA49B8();
      sub_25BAA4A5C(v79);

      v51 = v81;

      sub_25BAA4AF4(v79);
      v52 = swift_allocObject();
      v79[0] = 1;
      v53 = sub_25BC115BC(v44, 1, v84, 0x100000000, v50, v51, v52);
      v54 = swift_allocObject();
      *(v54 + 16) = v53;

      sub_25BAA6EB0();

      sub_25BAA6F5C(v85, &qword_27FBB6730, &qword_25BCBC4B0);
      sub_25BAA486C(v86, v85, &qword_27FBB6730, &qword_25BCBC4B0);
      sub_25BAA486C(v85, v84, &qword_27FBB6730, &qword_25BCBC4B0);
      swift_retain_n();
      sub_25BAA49B8();
      sub_25BAA4A5C(v79);

      v55 = v82;

      sub_25BAA4AF4(v79);
      sub_25BAA49B8();
      sub_25BAA4A5C(v79);

      v56 = v81;

      sub_25BAA4AF4(v79);
      v57 = swift_allocObject();
      v79[0] = 1;
      v58 = sub_25BC115BC(v44, 2, v84, 0x100000000, v55, v56, v57);
      v59 = swift_allocObject();
      *(v59 + 16) = v58;

      sub_25BAA6EB0();

      sub_25BAA6F5C(v85, &qword_27FBB6730, &qword_25BCBC4B0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F30, &qword_25BCC3220);
      v60 = swift_allocObject();
      *(v60 + 16) = xmmword_25BCBAE90;
      *(v60 + 32) = v49;
      v61 = *(v68 + 16);

      *(v60 + 40) = sub_25BAC42B0();
      *(v60 + 48) = v62;
      *(v60 + 56) = v54;
      v63 = *(v39 + 16);

      *(v60 + 64) = sub_25BAC42B0();
      *(v60 + 72) = v64;
      *(v60 + 80) = v59;
      v65 = *(v71 + 16);

      *(v60 + 88) = sub_25BAC42B0();
      *(v60 + 96) = v66;

      sub_25BAA6F5C(v86, &qword_27FBB6730, &qword_25BCBC4B0);
      return v60;
    }
  }

  type metadata accessor for ContextManager();
  sub_25BAA49B8();
  sub_25BAA4A5C(v79);

  v13 = v81;

  result = sub_25BAA4AF4(v79);
  if (!v13)
  {
    goto LABEL_27;
  }

  swift_beginAccess();
  v14 = *(a4 + 24);
  v15 = *(v14 + 16);
  if (!v15)
  {

    goto LABEL_27;
  }

  v67 = a2;
  v69 = v11;
  v16 = v14 + 32;
  result = sub_25BCB617C();
  v17 = &qword_27FBB3DB0;
  v18 = 1;
  v19 = &off_279972000;
  v20 = &off_279972000;
  v21 = v15;
  v22 = &qword_25BCCCD60;
  v70 = v15;
  while (v18 - 1 < v21)
  {
    sub_25BAA486C(v16, v86, v17, v22);
    Strong = swift_weakLoadStrong();
    if (!Strong)
    {
      result = sub_25BAA6F5C(v86, v17, v22);
      goto LABEL_22;
    }

    v24 = Strong;
    if (*(Strong + 32) > 0)
    {

      v25 = sub_25BA928B4();
      [v25 v19[150]];

      swift_beginAccess();
      sub_25BA9323C(v24 + 40, v79);
      if (!v83)
      {
        sub_25BA9BE3C(v79, &v73);
        v26 = v22;
        v27 = v14;
        v28 = v17;
        v29 = v20;
        v30 = v19;
        v31 = *(&v73 + 1);
        ObjectType = swift_getObjectType();
        v33 = *(v31 + 56);
        v34 = v31;
        v19 = v30;
        v20 = v29;
        v17 = v28;
        v14 = v27;
        v22 = v26;
        v15 = v70;
        v35 = v33(ObjectType, v34);
        sub_25BA977E0(&v73);
        [*(v24 + 224) v20 + 376];

        sub_25BAA6F5C(v86, v17, v22);
        if ((v35 & 1) == 0)
        {
          sub_25BC2BEDC();
        }

        goto LABEL_21;
      }

      if (v83 == 1)
      {

        swift_unknownObjectRelease();
        sub_25BA977E0(&v80);
      }

      else
      {
        sub_25BA9778C(v79);
      }

      [*(v24 + 224) v20[151]];
    }

    sub_25BAA6F5C(v86, v17, v22);
LABEL_21:

LABEL_22:
    if (v18 >= v15)
    {

      a2 = v67;
      v11 = v69;
      goto LABEL_27;
    }

    v21 = *(v14 + 16);
    ++v18;
    v16 += 8;
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

uint64_t sub_25BC80374()
{
  v0 = sub_25BCB761C();

  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_25BC803CC(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_25BAFB2EC();
}

uint64_t sub_25BC803F0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_25BC80374();
  *a2 = result;
  return result;
}

uint64_t sub_25BC80420()
{
  v1 = OUTLINED_FUNCTION_84_7();
  result = sub_25BAE2B14(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_25BC80450@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25BC803C0();
  *a1 = result;
  return result;
}

uint64_t sub_25BC80478@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25BC803C4();
  *a1 = result;
  return result;
}

uint64_t sub_25BC804A0(uint64_t a1)
{
  v2 = sub_25BC86988();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BC804DC(uint64_t a1)
{
  v2 = sub_25BC86988();

  return MEMORY[0x2821FE720](a1, v2);
}

void BatchNorm.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_40();
  a21 = v23;
  a22 = v24;
  v26 = v25;
  v28 = v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB7830, &qword_25BCD40B0);
  OUTLINED_FUNCTION_2(v29);
  v31 = v30;
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v34);
  v36 = &v57 - v35;
  OUTLINED_FUNCTION_4_6();
  sub_25BC86988();
  OUTLINED_FUNCTION_60_13();
  if (!v22)
  {
    LOBYTE(v67) = 0;
    OUTLINED_FUNCTION_91_6();
    v38 = v37;
    OUTLINED_FUNCTION_71_9(1);
    sub_25BB3993C();
    OUTLINED_FUNCTION_19_36();
    v39 = v81;
    v84 = v82;
    v85 = v83;
    OUTLINED_FUNCTION_71_9(2);
    OUTLINED_FUNCTION_19_36();
    v64 = v39;
    v40 = v78;
    v62 = v79;
    v63 = v80;
    OUTLINED_FUNCTION_71_9(4);
    sub_25BC869DC();
    OUTLINED_FUNCTION_19_36();
    v61 = v40;
    v41 = v77;
    OUTLINED_FUNCTION_71_9(5);
    OUTLINED_FUNCTION_19_36();
    v42 = v41;
    v43 = v76;
    OUTLINED_FUNCTION_71_9(3);
    OUTLINED_FUNCTION_91_6();
    v45 = v44;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB7820, &qword_25BCD40A0);
    OUTLINED_FUNCTION_44_20();
    v46 = swift_allocObject();
    *(v46 + 16) = 0;
    v59 = v46;
    *(v46 + 24) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB7828, &qword_25BCD40A8);
    OUTLINED_FUNCTION_32_28();
    *(swift_allocObject() + 16) = 0;
    v47 = *(v42 + 32);
    OUTLINED_FUNCTION_37_26();
    if (v50)
    {
      OUTLINED_FUNCTION_1_3();
    }

    else
    {
      if (v49 < 0)
      {
        v58 = v48;
        v60 = v43;
        v51 = OUTLINED_FUNCTION_21_37(v49);
        if (*(v51 + 16))
        {
          v52 = *(v51 + 32);
          OUTLINED_FUNCTION_5_53();
          swift_beginAccess();
          v53 = v59;
          *(v59 + 16) = v52;
          v54 = v53;
          *(v53 + 24) = 0;
          v65 = 6;
          sub_25BBC68D8();
          sub_25BCB76AC();
          (*(v31 + 8))(v36, v29);
          v55 = v66;
          *v28 = v38;
          *(v28 + 8) = v61;
          *(v28 + 16) = v62;
          *(v28 + 17) = v63;
          *(v28 + 24) = v64;
          *(v28 + 32) = v84;
          *(v28 + 33) = v85;
          *(v28 + 36) = v45;
          v56 = v60;
          *(v28 + 40) = v42;
          *(v28 + 48) = v56;
          *(v28 + 56) = v54;
          *(v28 + 64) = v55;
          *(v28 + 72) = v58;
          goto LABEL_3;
        }

LABEL_11:
        v68 = 0;
        v69 = 0;
        v67 = 0;
        v70 = -1;
        v72 = 0;
        v73 = 0;
        v71 = 0;
        v74 = -1;
        v75 = 4;
        sub_25BCB617C();
        OUTLINED_FUNCTION_17_4();
        sub_25BADDD28();
      }

      OUTLINED_FUNCTION_5_3();
    }

    OUTLINED_FUNCTION_23_36();
    sub_25BCB74CC();
    __break(1u);
    goto LABEL_11;
  }

LABEL_3:
  __swift_destroy_boxed_opaque_existential_1(v26);
  OUTLINED_FUNCTION_39();
}

void BatchNorm.encode(to:)()
{
  OUTLINED_FUNCTION_40();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB7848, &qword_25BCD40B8);
  OUTLINED_FUNCTION_2(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_9_5();
  v11 = *v0;
  v21 = *(v0 + 1);
  v18 = *(v0 + 17);
  v19 = *(v0 + 16);
  v12 = *(v0 + 3);
  v22 = *(v0 + 32);
  v20 = *(v0 + 33);
  v13 = v0[9];
  v16 = *(v0 + 6);
  v17 = *(v0 + 5);
  v14 = *(v0 + 64);
  v15 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_25BC86988();
  OUTLINED_FUNCTION_23_3();
  sub_25BCB7B6C();
  OUTLINED_FUNCTION_77_8();
  if (!v1)
  {
    sub_25BB39990();

    OUTLINED_FUNCTION_26_35();
    OUTLINED_FUNCTION_63_11();
    sub_25BCB779C();

    OUTLINED_FUNCTION_26_35();
    OUTLINED_FUNCTION_63_11();
    sub_25BCB779C();

    sub_25BC86A30();

    OUTLINED_FUNCTION_26_35();
    OUTLINED_FUNCTION_63_11();
    sub_25BCB779C();

    OUTLINED_FUNCTION_26_35();
    OUTLINED_FUNCTION_63_11();
    sub_25BCB779C();

    OUTLINED_FUNCTION_63_11();
    sub_25BCB777C();
    sub_25BBC6830();
    OUTLINED_FUNCTION_26_35();
    OUTLINED_FUNCTION_63_11();
    sub_25BCB779C();
  }

  (*(v7 + 8))(v2, v5);
  OUTLINED_FUNCTION_39();
}

uint64_t sub_25BC80D78@<X0>(uint64_t *a1@<X8>)
{
  result = LayerNorm.NormalizedAxes.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t LayerNorm.scale.getter()
{
  v1 = *v0;
  v2 = OUTLINED_FUNCTION_38();
  if (v4)
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_1_3();
LABEL_8:
    OUTLINED_FUNCTION_23_36();
    result = sub_25BCB74CC();
    __break(1u);
    return result;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_5_3();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_75_1(v2, v3);

  return sub_25BAB69FC();
}

uint64_t sub_25BC80EE0@<X0>(void *a1@<X8>)
{
  result = LayerNorm.scale.getter();
  *a1 = v3;
  return result;
}

uint64_t LayerNorm.scale.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_40_0(a1);
  v2 = OUTLINED_FUNCTION_29(*v1);
  if (v3)
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_1_3();
  }

  else
  {
    if (v2 < 0)
    {
      OUTLINED_FUNCTION_86_0(v2);
      return OUTLINED_FUNCTION_113();
    }

    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_5_3();
  }

  OUTLINED_FUNCTION_23_36();
  result = sub_25BCB74CC();
  __break(1u);
  return result;
}

uint64_t LayerNorm.$scale.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 9);
  return OUTLINED_FUNCTION_10_45(*v1, a1);
}

uint64_t LayerNorm.offset.getter()
{
  v1 = *(v0 + 16);
  v2 = OUTLINED_FUNCTION_38();
  if (v4)
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_1_3();
LABEL_8:
    OUTLINED_FUNCTION_23_36();
    result = sub_25BCB74CC();
    __break(1u);
    return result;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_5_3();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_75_1(v2, v3);

  return sub_25BAB69FC();
}

uint64_t sub_25BC81084@<X0>(void *a1@<X8>)
{
  result = LayerNorm.offset.getter();
  *a1 = v3;
  return result;
}

uint64_t LayerNorm.offset.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_40_0(a1);
  v2 = OUTLINED_FUNCTION_29(*(v1 + 16));
  if (v3)
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_1_3();
  }

  else
  {
    if (v2 < 0)
    {
      OUTLINED_FUNCTION_86_0(v2);
      return OUTLINED_FUNCTION_113();
    }

    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_5_3();
  }

  OUTLINED_FUNCTION_23_36();
  result = sub_25BCB74CC();
  __break(1u);
  return result;
}

uint64_t LayerNorm.$offset.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 25);
  return OUTLINED_FUNCTION_10_45(*(v1 + 16), a1);
}

BOOL LayerNorm.isEveryParameterInitialized.getter()
{
  v1 = *(v0 + 48);
  if (*(v1 + 16))
  {
    return 1;
  }

  v3 = *(v0 + 32);
  OUTLINED_FUNCTION_39_26();
  result = *(v3 + 16) != 0;
  *(v1 + 16) = result;
  return result;
}

uint64_t sub_25BC81238()
{
  OUTLINED_FUNCTION_38_0();
  v3 = *v2;
  v4 = *(v2 + 8);
  v5 = *(v2 + 9);
  v7 = *v6;
  v8 = *(v6 + 8);
  v9 = *(v6 + 9);
  v11 = *v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB7858, &qword_25BCD40C0);
  v12 = swift_allocObject();
  *(v0 + 32) = v12;
  *(v12 + 16) = 0;
  v13 = (v12 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB7860, &qword_25BCD40C8);
  OUTLINED_FUNCTION_32_28();
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v0 + 48) = v14;
  v15 = *(v3 + 32);
  OUTLINED_FUNCTION_37_26();
  if (v17)
  {
    goto LABEL_9;
  }

  if ((v16 & 0x8000000000000000) == 0)
  {
LABEL_10:
    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_5_3();
    while (1)
    {
LABEL_11:
      sub_25BCB74CC();
      __break(1u);
LABEL_12:
      OUTLINED_FUNCTION_2_17();
      OUTLINED_FUNCTION_7_0();
    }
  }

  v18 = *(v7 + 32);
  if ((~v18 & 0xF000000000000007) == 0)
  {
LABEL_9:
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_1_3();
    goto LABEL_11;
  }

  if ((v18 & 0x8000000000000000) == 0)
  {
    goto LABEL_10;
  }

  v19 = OUTLINED_FUNCTION_21_37(v16);
  if ((sub_25BAB5C48(v19, *(*((v20 & 0x7FFFFFFFFFFFFFFFLL) + 0x10) + 152)) & 1) == 0)
  {
    goto LABEL_12;
  }

  *(v0 + 16) = v3;
  *(v0 + 24) = v4;
  *(v0 + 25) = v5;
  *v0 = v7;
  *(v0 + 8) = v8;
  *(v0 + 9) = v9;
  *(v0 + 40) = v11;
  *(v0 + 44) = v1;
  v21 = *(v3 + 32);
  OUTLINED_FUNCTION_37_26();
  if (v17)
  {
    goto LABEL_9;
  }

  if ((v22 & 0x8000000000000000) == 0)
  {
    goto LABEL_10;
  }

  v23 = *(*((v22 & 0x7FFFFFFFFFFFFFFFLL) + 0x10) + 152);
  OUTLINED_FUNCTION_5_53();
  swift_beginAccess();
  v24 = *v13;
  *v13 = v23;
  sub_25BCB617C();
}

uint64_t LayerNorm.init(offset:scale:epsilon:)()
{
  OUTLINED_FUNCTION_38_0();
  v3 = *v2;
  v5 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB7858, &qword_25BCD40C0);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB7860, &qword_25BCD40C8);
  OUTLINED_FUNCTION_32_28();
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  v8 = *(v3 + 16);
  if (sub_25BAB5C48(*(v8 + 152), *(*(v5 + 16) + 152)))
  {
    v9 = *(*(v8 + 152) + 16);
    v10 = v9 - 1;
    if ((v9 - 1) < 3)
    {
      v17[0] = v3;
      type metadata accessor for LayerVariableReference();
      OUTLINED_FUNCTION_5();
      OUTLINED_FUNCTION_17_26();

      v18 = 1;
      v11 = sub_25BAB6D38(v17, 0x100000000);
      v17[0] = v5;
      OUTLINED_FUNCTION_18_37();
      v18 = 1;
      v12 = sub_25BAB6D38(v17, 0x100000000);
      v13 = *(v3 + 16);

      v14 = *(v13 + 152);
      sub_25BCB617C();

      OUTLINED_FUNCTION_5_53();
      swift_beginAccess();
      v15 = *(v6 + 16);
      *(v6 + 16) = v14;

      *v0 = v12;
      *(v0 + 8) = 256;
      *(v0 + 16) = v11;
      *(v0 + 24) = 256;
      *(v0 + 32) = v6;
      *(v0 + 40) = v10;
      *(v0 + 44) = v1;
      *(v0 + 48) = v7;
      return result;
    }

    OUTLINED_FUNCTION_7_0();
  }

  else
  {
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_7_0();
  }

  result = OUTLINED_FUNCTION_69_1();
  __break(1u);
  return result;
}

uint64_t LayerNorm.init(normalizedAxes:offsetInitializer:scaleInitializer:epsilon:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>, float a3@<S0>)
{
  v6 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB7858, &qword_25BCD40C0);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(a2 + 32) = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB7860, &qword_25BCD40C8);
  OUTLINED_FUNCTION_32_28();
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(a2 + 48) = v8;
  type metadata accessor for LayerVariableReference();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_54_18();

  *(a2 + 16) = sub_25BB1AB04(v9);
  *(a2 + 24) = 256;
  OUTLINED_FUNCTION_5();
  v10 = OUTLINED_FUNCTION_17_26();
  sub_25BB1AB04(v10);
  OUTLINED_FUNCTION_54_18();

  *a2 = v3;
  *(a2 + 8) = 256;
  *(a2 + 44) = a3;
  *(a2 + 40) = v6;
  return result;
}

uint64_t LayerNorm.initializeParameters(for:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;
  v4 = v1[2];
  v5 = v1[4];
  v11 = *(v1 + 40);
  v10 = *(*(v2 + 16) + 152);
  sub_25BCB617C();
  sub_25BC81820(&v10, v9);

  v6 = v9[0];

  sub_25BB1ABC8(v9);

  v9[0] = v6;

  sub_25BB1ABC8(v9);

  OUTLINED_FUNCTION_5_53();
  swift_beginAccess();
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;
}

uint64_t sub_25BC81820@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
  if (v5)
  {
    v6 = swift_allocObject();
    if (v5 == 1)
    {
      *(v6 + 16) = xmmword_25BCBAE70;
      *(v6 + 32) = TensorShape.subscript.getter(*(v4 + 16) - 2);
      result = TensorShape.subscript.getter(*(v4 + 16) - 1);
      *(v6 + 40) = result;
    }

    else
    {
      *(v6 + 16) = xmmword_25BCBAE90;
      *(v6 + 32) = TensorShape.subscript.getter(*(v4 + 16) - 3);
      *(v6 + 40) = TensorShape.subscript.getter(*(v4 + 16) - 2);
      result = TensorShape.subscript.getter(*(v4 + 16) - 1);
      *(v6 + 48) = result;
    }
  }

  else
  {
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_25BCBAE50;
    result = TensorShape.subscript.getter(*(v4 + 16) - 1);
    *(v6 + 32) = result;
  }

  *a2 = v6;
  return result;
}

uint64_t LayerNorm.forward(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = *v2;
  v6 = *(v2 + 16);
  v7 = *(v2 + 40);
  v8 = *(v2 + 44);
  v9 = *(*a1 + 16);
  LOBYTE(v2) = *(v9 + 160);
  if (!sub_25BAA80BC(v2, &unk_286D42270))
  {
LABEL_10:
    LOBYTE(v56) = v2;
    sub_25BC8FACC();
    OUTLINED_FUNCTION_30();
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4140, &qword_25BCC2F10);
    *&v70 = v6;
    *(&v70 + 1) = &v56;
    v71 = xmmword_25BCBCE20;
    LOBYTE(v72) = 0;
    *(&v72 + 1) = v43;
    LOBYTE(v73) = 2;
    v74 = 3;
    OUTLINED_FUNCTION_15_48();
    sub_25BADDD28();
  }

  LOBYTE(v56) = v7;
  *&v70 = *(v9 + 152);
  sub_25BC81CF0(&v70);
  v11 = v10;
  sub_25BCB617C();

  Tensor.mean(alongAxes:)(v11, &v70);
  v12 = v70;
  OUTLINED_FUNCTION_67_10(v13, v14, v15, v16, v17, v18, v19, v20, v44, v47, v50, v53, v70, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v4);
  static Tensor.- infix(_:_:)();
  Tensor.squared()();

  v2 = &v56;
  Tensor.mean(alongAxes:)(v11, &v70);

  v21 = *(v5 + 32);
  if ((~v21 & 0xF000000000000007) == 0)
  {
    goto LABEL_7;
  }

  if ((v21 & 0x8000000000000000) == 0)
  {
LABEL_8:
    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_5_3();
    goto LABEL_9;
  }

  v2 = *(v6 + 32);
  if ((~v2 & 0xF000000000000007) == 0)
  {
LABEL_7:
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_1_3();
LABEL_9:
    OUTLINED_FUNCTION_23_36();
    sub_25BCB74CC();
    __break(1u);
    goto LABEL_10;
  }

  v54 = a2;
  if ((v2 & 0x8000000000000000) == 0)
  {
    goto LABEL_8;
  }

  v22 = v70;
  v23 = *(*(v4 + 16) + 160);
  v73 = 0;
  v71 = 0u;
  v72 = 0u;
  v70 = 0u;
  v68 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F28, &qword_25BCBBE60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25BCBAE50;
  *(inited + 32) = v8;
  HIBYTE(v62) = v23;
  sub_25BAA486C(&v70, &v56, &qword_27FBB6730, &qword_25BCBC4B0);
  sub_25BAB3020(v21);
  sub_25BAB3020(v2);
  Tensor.init(shape:coercingScalars:scalarType:on:)(&v68, inited, &v62 + 7, &v56, &v69);
  v25 = sub_25BAA6F5C(&v70, &qword_27FBB6730, &qword_25BCBC4B0);
  OUTLINED_FUNCTION_67_10(v25, v26, v27, v28, v29, v30, v31, v32, v45, v48, v51, v54, v69, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v22);
  static Tensor.+ infix(_:_:)();
  rsqrt(_:)(&v70, &v69);

  v34 = v70;
  OUTLINED_FUNCTION_67_10(v33, v35, v36, v37, v38, v39, v40, v41, v46, v49, v52, v55, v12, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v4);
  static Tensor.- infix(_:_:)();
  *&v70 = v34;
  v56 = v21 & 0x7FFFFFFFFFFFFFFFLL;
  static Tensor.* infix(_:_:)();
  static Tensor.* infix(_:_:)();

  v56 = v70;
  v69 = v2 & 0x7FFFFFFFFFFFFFFFLL;
  static Tensor.+ infix(_:_:)();

  sub_25BAB310C(v21);

  return sub_25BAB310C(v2);
}

double sub_25BC81CF0(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
  if (v3)
  {
    v4 = swift_allocObject();
    if (v3 == 1)
    {
      v5 = (v2 + 16);
      v6 = vld1q_dup_f64(v5);
      v7 = vaddq_s64(v6, xmmword_25BCD4090);
      *(v4 + 16) = xmmword_25BCBAE70;
      *(v4 + 32) = v7;
    }

    else
    {
      v7.i64[0] = 3;
      v9 = *(v2 + 16);
      *(v4 + 16) = xmmword_25BCBAE90;
      *(v4 + 32) = vaddq_s64(vdupq_n_s64(v9), xmmword_25BCD4080);
      *(v4 + 48) = v9 - 1;
    }
  }

  else
  {
    v8 = swift_allocObject();
    v7.i64[0] = 1;
    *(v8 + 16) = xmmword_25BCBAE50;
    *(v8 + 32) = *(v2 + 16) - 1;
  }

  return *v7.i64;
}

uint64_t sub_25BC81DC0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_25BAFB0DC();
}

uint64_t sub_25BC81DE4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_25BAE2B98();
  *a2 = result;
  return result;
}

uint64_t sub_25BC81E14()
{
  v1 = OUTLINED_FUNCTION_84_7();
  result = sub_25BAE2BE4(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_25BC81E44@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25BAE2B98();
  *a1 = result;
  return result;
}

uint64_t sub_25BC81E6C(uint64_t a1)
{
  v2 = sub_25BC86A84();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BC81EA8(uint64_t a1)
{
  v2 = sub_25BC86A84();

  return MEMORY[0x2821FE720](a1, v2);
}

void LayerNorm.init(from:)()
{
  OUTLINED_FUNCTION_38_22();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB7868, &qword_25BCD40D0);
  OUTLINED_FUNCTION_2(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_4_6();
  sub_25BC86A84();
  OUTLINED_FUNCTION_60_13();
  if (!v0)
  {
    sub_25BB3993C();
    OUTLINED_FUNCTION_24_27();
    OUTLINED_FUNCTION_48_22();
    sub_25BCB76AC();
    OUTLINED_FUNCTION_24_27();
    OUTLINED_FUNCTION_48_22();
    sub_25BCB76AC();
    LOBYTE(v11) = 2;
    OUTLINED_FUNCTION_48_22();
    sub_25BCB768C();
    sub_25BC86AD8();
    OUTLINED_FUNCTION_48_22();
    sub_25BCB76AC();
    sub_25BC81238();
    v9 = OUTLINED_FUNCTION_7_1();
    v10(v9);
    *v4 = v11;
    *(v4 + 16) = v12;
    *(v4 + 32) = v13;
    *(v4 + 48) = v14;
  }

  __swift_destroy_boxed_opaque_existential_1(v2);
  OUTLINED_FUNCTION_41_22();
}

void LayerNorm.encode(to:)()
{
  OUTLINED_FUNCTION_38_22();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB7880, &qword_25BCD40D8);
  OUTLINED_FUNCTION_2(v4);
  v18 = v5;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_9_5();
  v17 = *v0;
  v15 = *(v0 + 9);
  v16 = *(v0 + 8);
  v9 = v0[2];
  v10 = *(v0 + 24);
  v11 = *(v0 + 25);
  v14 = *(v0 + 40);
  v12 = *(v0 + 11);
  v13 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_25BC86A84();
  OUTLINED_FUNCTION_23_3();
  sub_25BCB7B6C();
  sub_25BB39990();

  OUTLINED_FUNCTION_68_12();
  sub_25BCB779C();
  OUTLINED_FUNCTION_93_7();
  if (!v10)
  {

    sub_25BCB779C();
    OUTLINED_FUNCTION_93_7();
    sub_25BCB777C();
    sub_25BC86B2C();
    sub_25BCB779C();
  }

  (*(v18 + 8))(v1, v4);
  OUTLINED_FUNCTION_41_22();
}

uint64_t InstanceNorm.scale.getter()
{
  v1 = *v0;
  v2 = OUTLINED_FUNCTION_38();
  if (v4)
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_1_3();
LABEL_8:
    OUTLINED_FUNCTION_23_36();
    result = sub_25BCB74CC();
    __break(1u);
    return result;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_5_3();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_75_1(v2, v3);

  return sub_25BAB69FC();
}

uint64_t sub_25BC82474@<X0>(void *a1@<X8>)
{
  result = InstanceNorm.scale.getter();
  *a1 = v3;
  return result;
}

uint64_t InstanceNorm.scale.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_40_0(a1);
  v2 = OUTLINED_FUNCTION_29(*v1);
  if (v3)
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_1_3();
  }

  else
  {
    if (v2 < 0)
    {
      OUTLINED_FUNCTION_86_0(v2);
      return OUTLINED_FUNCTION_113();
    }

    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_5_3();
  }

  OUTLINED_FUNCTION_23_36();
  result = sub_25BCB74CC();
  __break(1u);
  return result;
}

uint64_t InstanceNorm.$scale.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 9);
  return OUTLINED_FUNCTION_10_45(*v1, a1);
}

uint64_t InstanceNorm.offset.getter()
{
  v1 = *(v0 + 16);
  v2 = OUTLINED_FUNCTION_38();
  if (v4)
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_1_3();
LABEL_8:
    OUTLINED_FUNCTION_23_36();
    result = sub_25BCB74CC();
    __break(1u);
    return result;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_5_3();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_75_1(v2, v3);

  return sub_25BAB69FC();
}

uint64_t sub_25BC8261C@<X0>(void *a1@<X8>)
{
  result = InstanceNorm.offset.getter();
  *a1 = v3;
  return result;
}

uint64_t InstanceNorm.offset.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_40_0(a1);
  v2 = OUTLINED_FUNCTION_29(*(v1 + 16));
  if (v3)
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_1_3();
  }

  else
  {
    if (v2 < 0)
    {
      OUTLINED_FUNCTION_86_0(v2);
      return OUTLINED_FUNCTION_113();
    }

    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_5_3();
  }

  OUTLINED_FUNCTION_23_36();
  result = sub_25BCB74CC();
  __break(1u);
  return result;
}

uint64_t sub_25BC82764(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (a2)
  {
    OUTLINED_FUNCTION_88();
    Parameter.wrappedValue.setter(v6);
  }

  else
  {
    OUTLINED_FUNCTION_75_8();
    return Parameter.wrappedValue.setter(v5);
  }
}

uint64_t InstanceNorm.$offset.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 25);
  return OUTLINED_FUNCTION_10_45(*(v1 + 16), a1);
}

uint64_t InstanceNorm.featureCount.getter()
{
  v1 = *(v0 + 32);
  OUTLINED_FUNCTION_59_14();
  if ((*(v1 + 24) & 1) == 0)
  {
    return *(v1 + 16);
  }

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_7_0();
  result = OUTLINED_FUNCTION_58_15();
  __break(1u);
  return result;
}

uint64_t InstanceNorm.isEveryParameterInitialized.getter()
{
  if (*(*(v0 + 88) + 16))
  {
    v1 = 1;
  }

  else
  {
    v2 = *(v0 + 32);
    OUTLINED_FUNCTION_39_26();
    OUTLINED_FUNCTION_45_20();
  }

  return v1 & 1;
}

void InstanceNorm.runningMean.getter(void *a1@<X8>)
{
  if (*(v1 + 64) != 1)
  {
    *a1 = 0;
    return;
  }

  v2 = *(v1 + 56);
  v3 = OUTLINED_FUNCTION_38();
  if (v5)
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_1_3();
LABEL_10:
    OUTLINED_FUNCTION_23_36();
    sub_25BCB74CC();
    __break(1u);
    return;
  }

  if ((v3 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_5_3();
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_75_1(v3, v4);

  sub_25BAB69FC();
}

void *InstanceNorm.runningMean.setter(void *result)
{
  if (*result)
  {
    v2 = *(v1 + 56);
    v3[0] = *result;
    v3[1] = v2;
    swift_retain_n();
    LayerState.wrappedValue.setter(v3);
  }

  else if (*(v1 + 64))
  {
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_7_0();
    result = OUTLINED_FUNCTION_61_13();
    __break(1u);
  }

  return result;
}

uint64_t (*InstanceNorm.runningMean.modify(uint64_t a1))()
{
  v2 = *(v1 + 56);
  *(a1 + 8) = v2;
  v3 = *(v1 + 64);
  *(a1 + 16) = v3;
  if (v3 != 1)
  {
    *a1 = 0;
    goto LABEL_6;
  }

  v4 = *(v2 + 32);
  if ((~v4 & 0xF000000000000007) != 0)
  {
    if (v4 < 0)
    {
      OUTLINED_FUNCTION_86_0(v4);
LABEL_6:

      return sub_25BC82B40;
    }

    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_5_3();
  }

  else
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_1_3();
  }

  OUTLINED_FUNCTION_23_36();
  result = sub_25BCB74CC();
  __break(1u);
  return result;
}

uint64_t InstanceNorm.$runningMean.getter@<X0>(uint64_t *a1@<X8>)
{
  if (*(v1 + 64) == 1)
  {
    v3 = *(v1 + 56);
  }

  else
  {
    result = 0;
  }

  *a1 = result;
  return result;
}

void InstanceNorm.runningVariance.getter(void *a1@<X8>)
{
  if (*(v1 + 80) != 1)
  {
    *a1 = 0;
    return;
  }

  v2 = *(v1 + 72);
  v3 = OUTLINED_FUNCTION_38();
  if (v5)
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_1_3();
LABEL_10:
    OUTLINED_FUNCTION_23_36();
    sub_25BCB74CC();
    __break(1u);
    return;
  }

  if ((v3 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_5_3();
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_75_1(v3, v4);

  sub_25BAB69FC();
}

uint64_t sub_25BC82C6C(uint64_t *a1)
{
  OUTLINED_FUNCTION_78_11(a1);
  memcpy(v4, v5, 0x60uLL);
  v7 = v3;

  sub_25BB92184(v8, __dst);
  v1(&v7);
  memcpy(__dst, v2, sizeof(__dst));
  return sub_25BB921E0(__dst);
}

void *InstanceNorm.runningVariance.setter(void *result)
{
  if (*result)
  {
    v2 = *(v1 + 72);
    v3[0] = *result;
    v3[1] = v2;
    swift_retain_n();
    LayerState.wrappedValue.setter(v3);
  }

  else if (*(v1 + 80))
  {
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_7_0();
    result = OUTLINED_FUNCTION_61_13();
    __break(1u);
  }

  return result;
}

uint64_t (*InstanceNorm.runningVariance.modify(uint64_t a1))()
{
  v2 = *(v1 + 72);
  *(a1 + 8) = v2;
  v3 = *(v1 + 80);
  *(a1 + 16) = v3;
  if (v3 != 1)
  {
    *a1 = 0;
    goto LABEL_6;
  }

  v4 = *(v2 + 32);
  if ((~v4 & 0xF000000000000007) != 0)
  {
    if (v4 < 0)
    {
      OUTLINED_FUNCTION_86_0(v4);
LABEL_6:

      return sub_25BC877EC;
    }

    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_5_3();
  }

  else
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_1_3();
  }

  OUTLINED_FUNCTION_23_36();
  result = sub_25BCB74CC();
  __break(1u);
  return result;
}

uint64_t sub_25BC82E5C(uint64_t *a1, char a2)
{
  v2 = *a1;
  if ((a2 & 1) == 0)
  {
    if (v2)
    {
      v3 = a1[1];
      v8 = *a1;

      LayerState.wrappedValue.setter(&v8);

      goto LABEL_11;
    }

    if (*(a1 + 16) != 1)
    {
      v5 = a1[1];
      goto LABEL_11;
    }

LABEL_14:
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_7_0();
    result = OUTLINED_FUNCTION_61_13();
    __break(1u);
    return result;
  }

  if (!v2)
  {
    if ((a1[2] & 1) == 0)
    {
      v4 = a1[1];

      goto LABEL_11;
    }

    goto LABEL_14;
  }

  v7 = a1[1];
  v8 = *a1;

  LayerState.wrappedValue.setter(&v8);

LABEL_11:
}

uint64_t InstanceNorm.$runningVariance.getter@<X0>(uint64_t *a1@<X8>)
{
  if (*(v1 + 80) == 1)
  {
    v3 = *(v1 + 72);
  }

  else
  {
    result = 0;
  }

  *a1 = result;
  return result;
}

uint64_t sub_25BC82FA8(double a1, float a2)
{
  OUTLINED_FUNCTION_38_0();
  v6 = *v5;
  v7 = *(v5 + 8);
  v8 = *(v5 + 9);
  v10 = *v9;
  v11 = *(v9 + 8);
  v12 = *(v9 + 9);
  v47 = *v13;
  v15 = *v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB7890, &qword_25BCD40E0);
  OUTLINED_FUNCTION_44_20();
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  v45 = v16;
  OUTLINED_FUNCTION_57_12(v16);
  type metadata accessor for LayerVariableReference();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_66();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB7898, &qword_25BCD40E8);
  OUTLINED_FUNCTION_32_28();
  *(swift_allocObject() + 16) = 0;
  v17 = *(v6 + 32);
  OUTLINED_FUNCTION_37_26();
  if (v20)
  {
    goto LABEL_26;
  }

  if ((v19 & 0x8000000000000000) == 0)
  {
    goto LABEL_27;
  }

  v21 = *(v10 + 32);
  if ((~v21 & 0xF000000000000007) == 0)
  {
LABEL_26:
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_1_3();
LABEL_32:
    result = sub_25BCB74CC();
    __break(1u);
    return result;
  }

  if ((v21 & 0x8000000000000000) == 0)
  {
    goto LABEL_27;
  }

  v22 = v18;
  v23 = OUTLINED_FUNCTION_21_37(v19);
  if ((sub_25BAB5C48(v23, *(*((v24 & 0x7FFFFFFFFFFFFFFFLL) + 0x10) + 152)) & 1) == 0)
  {
    goto LABEL_31;
  }

  v46 = v12;
  v44 = v22;
  if (v15)
  {
    if (v47)
    {
      v25 = *(v47 + 32);
      OUTLINED_FUNCTION_37_26();
      if (!v20)
      {
        if ((v26 & 0x8000000000000000) == 0)
        {
          goto LABEL_27;
        }

        v27 = *(v15 + 32);
        if ((~v27 & 0xF000000000000007) != 0)
        {
          if ((v27 & 0x8000000000000000) == 0)
          {
            goto LABEL_27;
          }

          v28 = *((v26 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
          if ((sub_25BAB5C48(*(v28 + 152), *(*((v27 & 0x7FFFFFFFFFFFFFFFLL) + 0x10) + 152)) & 1) == 0)
          {
            goto LABEL_31;
          }

          v29 = *(v6 + 32);
          OUTLINED_FUNCTION_37_26();
          if (!v20)
          {
            if (v30 < 0)
            {
              v31 = OUTLINED_FUNCTION_21_37(v30);
              if (sub_25BAB5C48(v31, *(v28 + 152)))
              {

                goto LABEL_19;
              }

LABEL_31:
              OUTLINED_FUNCTION_16_50();
              goto LABEL_32;
            }

LABEL_27:
            OUTLINED_FUNCTION_0_19();
            OUTLINED_FUNCTION_5_3();
            goto LABEL_32;
          }
        }
      }

      goto LABEL_26;
    }

LABEL_29:
    OUTLINED_FUNCTION_2_17();
    OUTLINED_FUNCTION_7_0();
    goto LABEL_32;
  }

  if (v47)
  {
    goto LABEL_29;
  }

  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_54_18();

  v47 = sub_25BB1AB60(0);
LABEL_19:
  v32 = v10;

  v33 = v11;
  if (v15)
  {
    v34 = v15;
  }

  else
  {
    OUTLINED_FUNCTION_5();
    v34 = OUTLINED_FUNCTION_66();
  }

  v35 = v8;

  v36 = *(v32 + 32);
  OUTLINED_FUNCTION_37_26();
  if (v20)
  {
    goto LABEL_26;
  }

  if ((v37 & 0x8000000000000000) == 0)
  {
    goto LABEL_27;
  }

  v38 = v7;
  v39 = v6;
  v40 = *(*((v37 & 0x7FFFFFFFFFFFFFFFLL) + 0x10) + 152);
  sub_25BCB617C();

  if (!*(v40 + 16))
  {
    OUTLINED_FUNCTION_17_4();
    sub_25BADDD28();
  }

  v41 = v15 != 0;
  v42 = *(v40 + 32);

  OUTLINED_FUNCTION_5_53();
  result = swift_beginAccess();
  *(v45 + 16) = v42;
  *(v45 + 24) = 0;
  *v2 = v32;
  *(v2 + 8) = v33;
  *(v2 + 9) = v46;
  *(v2 + 16) = v39;
  *(v2 + 24) = v38;
  *(v2 + 25) = v35;
  *(v2 + 26) = v41;
  *(v2 + 32) = v45;
  *(v2 + 40) = 0;
  *(v2 + 44) = a2;
  *(v2 + 48) = v3;
  *(v2 + 56) = v47;
  *(v2 + 64) = v41;
  *(v2 + 72) = v34;
  *(v2 + 80) = v41;
  *(v2 + 88) = v44;
  return result;
}

uint64_t InstanceNorm.init(offset:scale:runningMean:runningVariance:momentum:epsilon:)(double a1, float a2)
{
  OUTLINED_FUNCTION_38_0();
  v6 = *v5;
  v8 = *v7;
  v10 = *v9;
  v12 = *v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB7890, &qword_25BCD40E0);
  OUTLINED_FUNCTION_44_20();
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  OUTLINED_FUNCTION_57_12(v13);
  type metadata accessor for LayerVariableReference();
  OUTLINED_FUNCTION_5();
  v38 = OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_33_28();
  v14 = OUTLINED_FUNCTION_66();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB7898, &qword_25BCD40E8);
  OUTLINED_FUNCTION_32_28();
  v37 = swift_allocObject();
  *(v37 + 16) = 0;
  v15 = *(v6 + 16);
  if ((sub_25BAB5C48(*(v15 + 152), *(*(v8 + 16) + 152)) & 1) == 0)
  {
    goto LABEL_17;
  }

  if (!v12)
  {
    if (!v10)
    {
      goto LABEL_8;
    }

LABEL_15:
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_7_0();
LABEL_18:
    result = OUTLINED_FUNCTION_69_1();
    __break(1u);
    return result;
  }

  if (!v10)
  {
    goto LABEL_15;
  }

  v16 = *(v10 + 16);
  if ((sub_25BAB5C48(*(v16 + 152), *(*(v12 + 16) + 152)) & 1) == 0 || (sub_25BAB5C48(*(v15 + 152), *(v16 + 152)) & 1) == 0)
  {
LABEL_17:
    OUTLINED_FUNCTION_16_50();
    goto LABEL_18;
  }

LABEL_8:
  v17 = OUTLINED_FUNCTION_33_28();
  v36 = OUTLINED_FUNCTION_90_6(v17, v18, v19, v20, v21, v22, v23);
  v40 = v8;
  OUTLINED_FUNCTION_33_28();

  v31 = OUTLINED_FUNCTION_90_6(v24, v25, v26, v27, v28, v29, v30);
  if (v10)
  {
    v39 = v10;
    v40 = v38;
    swift_retain_n();
    LayerState.wrappedValue.setter(&v39);
  }

  if (v12)
  {
    v39 = v12;
    v40 = v14;
    swift_retain_n();
    LayerState.wrappedValue.setter(&v39);
  }

  v32 = *(v8 + 16);

  v33 = *(v32 + 152);
  sub_25BCB617C();

  if (!*(v33 + 16))
  {
    v40 = 0;
    v41 = 0;
    v42 = 0;
    v43 = -1;
    v45 = 0;
    v46 = 0;
    v44 = 0;
    v47 = -1;
    v48 = 4;
    OUTLINED_FUNCTION_17_4();
    sub_25BADDD28();
  }

  v34 = *(v33 + 32);

  OUTLINED_FUNCTION_5_53();
  result = swift_beginAccess();
  *(v13 + 16) = v34;
  *(v13 + 24) = 0;
  *v2 = v31;
  *(v2 + 8) = 256;
  *(v2 + 16) = v36;
  *(v2 + 24) = 256;
  *(v2 + 26) = v10 != 0;
  *(v2 + 32) = v13;
  *(v2 + 40) = 0;
  *(v2 + 44) = a2;
  *(v2 + 48) = v3;
  *(v2 + 56) = v38;
  *(v2 + 64) = 0;
  *(v2 + 72) = v14;
  *(v2 + 80) = 0;
  *(v2 + 88) = v37;
  return result;
}

uint64_t InstanceNorm.init(offsetInitializer:scaleInitializer:momentum:epsilon:tracksRunningStatistics:)@<X0>(char a1@<W2>, uint64_t a2@<X8>, float a3@<S0>, float a4@<S1>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB7890, &qword_25BCD40E0);
  OUTLINED_FUNCTION_44_20();
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  OUTLINED_FUNCTION_57_12(v8);
  type metadata accessor for LayerVariableReference();
  OUTLINED_FUNCTION_5();
  v9 = OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_33_28();
  v22 = OUTLINED_FUNCTION_66();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB7898, &qword_25BCD40E8);
  OUTLINED_FUNCTION_32_28();
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  OUTLINED_FUNCTION_33_28();

  v21 = sub_25BB1AB04(v11);
  OUTLINED_FUNCTION_33_28();
  OUTLINED_FUNCTION_17_26();

  v20 = sub_25BB1AB04(v12);
  v23 = a1;
  if (a1)
  {
    type metadata accessor for ParameterInitializer();
    sub_25BB17820(v13);
    OUTLINED_FUNCTION_33_28();
    v14 = OUTLINED_FUNCTION_76_8();

    sub_25BB17964(v15);
    OUTLINED_FUNCTION_33_28();
    OUTLINED_FUNCTION_54_18();

    v17 = sub_25BB1AB04(v16);

    v18 = 1;
    v9 = v14;
  }

  else
  {
    v18 = 0;
    v17 = v22;
  }

  *a2 = v20;
  *(a2 + 8) = 256;
  *(a2 + 16) = v21;
  *(a2 + 24) = 256;
  *(a2 + 26) = v23 & 1;
  *(a2 + 32) = v8;
  *(a2 + 40) = 0;
  *(a2 + 44) = a4;
  *(a2 + 48) = a3;
  *(a2 + 56) = v9;
  *(a2 + 64) = v18;
  *(a2 + 72) = v17;
  *(a2 + 80) = v18;
  *(a2 + 88) = v10;
  return result;
}

uint64_t InstanceNorm.initializeParameters(for:)(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_22_35(*a1);
  if (v3 <= 1)
  {
    v18[1] = 0;
    v18[2] = 0;
    v18[0] = 1;
    v19 = -1;
    v21 = 0;
    v22 = 0;
    v20 = v3;
    v23 = -1;
    v24 = 4;
    sub_25BCB617C();
    OUTLINED_FUNCTION_17_4();
    sub_25BADDD28();
  }

  v4 = v1[4];
  v5 = v1[7];
  v6 = *(v1 + 64);
  v16 = v1[9];
  v17 = *(v1 + 80);
  v7 = *(v1 + 26);
  v8 = v1[2];
  v9 = *v1;
  v10 = *(v2 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
  v11 = OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_43_21(v11, xmmword_25BCBAE50);

  sub_25BB1ABC8(v18);

  v12 = OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_43_21(v12, xmmword_25BCBAE50);

  sub_25BB1ABC8(v18);

  if (v7 == 1)
  {
    if (v6)
    {
      v13 = OUTLINED_FUNCTION_5();
      OUTLINED_FUNCTION_43_21(v13, xmmword_25BCBAE50);

      sub_25BB1ABC8(v18);
    }

    if (v17)
    {
      v14 = OUTLINED_FUNCTION_5();
      OUTLINED_FUNCTION_43_21(v14, xmmword_25BCBAE50);

      sub_25BB1ABC8(v18);
    }
  }

  OUTLINED_FUNCTION_5_53();
  result = swift_beginAccess();
  *(v4 + 16) = v10;
  *(v4 + 24) = 0;
  return result;
}

uint64_t InstanceNorm.forward(_:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v5 = *a1;
  v6 = *(*(*a1 + 16) + 160);
  if (!sub_25BAA80BC(v6, &unk_286D42270))
  {
    __dst[0] = v6;
    sub_25BC8FACC();
    OUTLINED_FUNCTION_30();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4140, &qword_25BCC2F10);
    v12[0] = a2;
    v12[1] = __dst;
    OUTLINED_FUNCTION_9_16();
    OUTLINED_FUNCTION_15_48();
    sub_25BADDD28();
  }

  type metadata accessor for ContextManager();
  sub_25BAA49B8();
  sub_25BAA4A5C(v12);

  type metadata accessor for ResolutionDependencies();
  v7 = swift_allocObject();
  v8 = MEMORY[0x277D84F90];
  *(v7 + 16) = 0;
  *(v7 + 24) = v8;

  v12[9] = v7;
  sub_25BAA49B8();
  sub_25BAB7060(v12);

  memcpy(__dst, v3, sizeof(__dst));
  v10 = v5;
  sub_25BC83C1C(&v10, a2);

  sub_25BAA49B8();
  sub_25BAB814C();

  return sub_25BAA4AF4(v12);
}

uint64_t sub_25BC83C1C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  memcpy(__dst, v2, 0x60uLL);
  v5 = *(*(*(v4 + 16) + 152) + 16);
  if (v5 <= 1)
  {
    goto LABEL_44;
  }

  v6 = sub_25BAC0E14(1, v5);
  v7 = *(*(v4 + 16) + 152);
  v8 = *(v7 + 16);
  if (v8 <= 1)
  {
    *&v54[1] = 0;
    v54[0] = 1uLL;
    BYTE8(v54[1]) = -1;
    *&v54[3] = 0;
    v54[2] = v8;
    BYTE8(v54[3]) = -1;
    v55 = 4;
    sub_25BCB617C();
    goto LABEL_48;
  }

  v9 = *(v6 + 16);
  if (v9 <= 1)
  {
    *&v54[1] = 0;
    v54[0] = 1uLL;
    BYTE8(v54[1]) = -1;
    *&v54[3] = 0;
    v54[2] = v9;
    BYTE8(v54[3]) = -1;
    goto LABEL_47;
  }

  v10 = *(v7 + 40);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_25BAA2110(v6);
    v6 = v51;
  }

  if (*(v6 + 16) < 2uLL)
  {
    __break(1u);
    goto LABEL_42;
  }

  *(v6 + 40) = v10;
  v11 = *(*(*(v4 + 16) + 152) + 16);
  if (v11 < 2)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v53 = a2;
  v12 = sub_25BC54B00(2, v11);
  v57[0] = v4;
  Tensor.mean(alongAxes:)(v12, v54);
  v13 = *&v54[0];
  *&v54[0] = v4;
  v57[0] = v13;
  static Tensor.- infix(_:_:)();
  Tensor.squared()();

  Tensor.mean(alongAxes:)(v12, v54);

  v14 = *&v54[0];
  v15 = &off_25BCBA000;
  v16 = MEMORY[0x277D84F90];
  if (LOBYTE(__dst[5]))
  {
    if (LOBYTE(__dst[5]) == 1)
    {
LABEL_10:
      v57[0] = v4;
      v56[0] = v13;
      swift_retain_n();

      sub_25BC7DB2C(v12, v56, 1);

      v17 = *&v54[0];
      if (BYTE2(__dst[3]) == 1)
      {
        memcpy(v54, __dst, sizeof(v54));
        InstanceNorm.runningMean.getter(v57);
        v18 = v57[0];
        if (v57[0])
        {
          memcpy(v54, __dst, sizeof(v54));
          InstanceNorm.runningVariance.getter(v57);
          v52 = v57[0];
          if (v57[0])
          {
            v19 = *&__dst[6];
            v20 = *(*(v13 + 16) + 160);
            memset(v54, 0, 52);
            v62 = v16;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F28, &qword_25BCBBE60);
            v21 = swift_allocObject();
            *(v21 + 16) = xmmword_25BCBAE50;
            *(v21 + 32) = 1.0 - v19;
            LOBYTE(v61) = v20;
            sub_25BAA486C(v54, v57, &qword_27FBB6730, &qword_25BCBC4B0);
            Tensor.init(shape:coercingScalars:scalarType:on:)(&v62, v21, &v61, v57, v56);
            sub_25BAA6F5C(v54, &qword_27FBB6730, &qword_25BCBC4B0);
            v22 = v56[0];
            *&v54[0] = v18;
            v57[0] = v6;
            sub_25BCB617C();
            Tensor.reshaped(to:)(v57, v56);

            v23 = *(*(v13 + 16) + 152);
            v24 = *(v23 + 16);
            v25 = *(v6 + 16);
            if (v24 != v25)
            {
              goto LABEL_49;
            }

            v26 = *(*(v13 + 16) + 152);
            swift_bridgeObjectRetain_n();
            sub_25BCB617C();
            v27 = sub_25BC7D758(v23, v6);

            swift_bridgeObjectRelease_n();
            Tensor.tiled(multiples:)(v27, v54);

            sub_25BC55E80(*&v54[0], v19);
            *&v54[0] = v13;
            v28 = v22;
            v56[0] = v22;

            static Tensor.* infix(_:_:)();

            static Tensor.+ infix(_:_:)();

            v57[0] = *&v54[0];
            sub_25BB92184(__dst, v54);
            Tensor.mean(squeezingAxes:)(&unk_286D44AE0);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
            v29 = swift_allocObject();
            *(v29 + 16) = xmmword_25BCBAE50;
            v30 = __dst[4];
            swift_beginAccess();
            if (*(v30 + 24))
            {
              goto LABEL_43;
            }

            *(v29 + 32) = *(v30 + 16);
            v57[0] = v29;
            Tensor.reshaped(to:)(v57, &v62);

            *&v54[0] = __dst[7];
            swift_retain_n();
            LayerState.wrappedValue.setter(&v62);

            sub_25BB921E0(__dst);
            *&v54[0] = v52;
            v57[0] = v6;
            sub_25BCB617C();
            Tensor.reshaped(to:)(v57, &v62);

            v31 = *(*(v17 + 16) + 152);
            v24 = *(v31 + 16);
            v25 = *(v6 + 16);
            if (v24 != v25)
            {
LABEL_49:
              *&v54[1] = 0;
              v54[0] = v24;
              BYTE8(v54[1]) = 6;
              *&v54[2] = v25;
              *(&v54[2] + 8) = xmmword_25BCC8F30;
              BYTE8(v54[3]) = 0;
              v55 = 6;
              sub_25BCB617C();
LABEL_48:
              sub_25BADDD28();
            }

            v32 = *(*(v17 + 16) + 152);
            swift_bridgeObjectRetain_n();
            sub_25BCB617C();
            v33 = sub_25BC7D758(v31, v6);

            swift_bridgeObjectRelease_n();
            Tensor.tiled(multiples:)(v33, v54);

            sub_25BC55E80(*&v54[0], v19);
            *&v54[0] = v17;
            v62 = v28;
            static Tensor.* infix(_:_:)();
            static Tensor.+ infix(_:_:)();

            v57[0] = *&v54[0];
            sub_25BB92184(__dst, v54);
            Tensor.mean(squeezingAxes:)(&unk_286D44B08);
            v34 = swift_allocObject();
            *(v34 + 16) = xmmword_25BCBAE50;
            if ((*(v30 + 24) & 1) == 0)
            {
              *(v34 + 32) = *(v30 + 16);
              v57[0] = v34;
              Tensor.reshaped(to:)(v57, &v62);

              *&v54[0] = __dst[9];
              swift_retain_n();
              LayerState.wrappedValue.setter(&v62);

              sub_25BB921E0(__dst);
              v35 = v14;
              v36 = v13;
              v15 = &off_25BCBA000;
              v16 = MEMORY[0x277D84F90];
              goto LABEL_29;
            }

LABEL_43:
            sub_25BCB74CC();
            __break(1u);
LABEL_44:
            *&v54[1] = 0;
            v54[0] = 1uLL;
            BYTE8(v54[1]) = -1;
            *&v54[3] = 0;
            v54[2] = v5;
            BYTE8(v54[3]) = -1;
LABEL_47:
            v55 = 4;
            goto LABEL_48;
          }
        }
      }

      v35 = v14;
      v36 = v13;
      goto LABEL_29;
    }
  }

  else
  {
    type metadata accessor for ContextManager();
    sub_25BAA49B8();
    sub_25BAA4A5C(v54);

    if (!*&v54[5])
    {

      sub_25BAA4AF4(v54);
      goto LABEL_23;
    }

    v37 = *(*&v54[5] + 24);
    sub_25BAA4AF4(v54);
    if (v37)
    {
      goto LABEL_10;
    }
  }

LABEL_23:
  memcpy(v54, __dst, sizeof(v54));
  InstanceNorm.runningMean.getter(v56);
  if (v56[0])
  {
    v61 = v6;
    v62 = v56[0];
    sub_25BCB617C();
    Tensor.reshaped(to:)(&v61, v57);

    v36 = v57[0];
  }

  else
  {

    v36 = v13;
  }

  memcpy(v54, __dst, sizeof(v54));
  InstanceNorm.runningVariance.getter(v56);
  if (v56[0])
  {
    v61 = v6;
    v62 = v56[0];
    sub_25BCB617C();
    Tensor.reshaped(to:)(&v61, v57);

    v35 = v57[0];
  }

  else
  {

    v35 = v14;
  }

LABEL_29:
  v38 = *(__dst[0] + 32);
  if ((~v38 & 0xF000000000000007) == 0)
  {
    goto LABEL_43;
  }

  if ((v38 & 0x8000000000000000) == 0)
  {
    goto LABEL_43;
  }

  *&v54[0] = v38 & 0x7FFFFFFFFFFFFFFFLL;
  v57[0] = v6;
  sub_25BCB617C();

  sub_25BAB3020(v38);
  Tensor.reshaped(to:)(v57, &v62);

  v39 = *(__dst[2] + 32);
  if ((~v39 & 0xF000000000000007) == 0 || (v39 & 0x8000000000000000) == 0)
  {
    goto LABEL_43;
  }

  v40 = v62;
  *&v54[0] = v39 & 0x7FFFFFFFFFFFFFFFLL;
  v57[0] = v6;

  Tensor.reshaped(to:)(v57, &v61);

  v41 = v61;
  v42 = HIDWORD(__dst[5]);
  v43 = *(*(v4 + 16) + 160);
  memset(v54, 0, 52);
  v59 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F28, &qword_25BCBBE60);
  v44 = swift_allocObject();
  *(v44 + 16) = *(v15 + 229);
  *(v44 + 32) = v42;
  v58 = v43;
  sub_25BAA486C(v54, v57, &qword_27FBB6730, &qword_25BCBC4B0);
  Tensor.init(shape:coercingScalars:scalarType:on:)(&v59, v44, &v58, v57, &v60);
  sub_25BAA6F5C(v54, &qword_27FBB6730, &qword_25BCBC4B0);
  *&v54[0] = v35;
  v57[0] = v60;
  static Tensor.+ infix(_:_:)();
  rsqrt(_:)(v54, &v60);

  v45 = *&v54[0];
  *&v54[0] = v4;
  v57[0] = v36;
  static Tensor.- infix(_:_:)();
  *&v54[0] = v45;
  v57[0] = v40;
  static Tensor.* infix(_:_:)();
  static Tensor.* infix(_:_:)();

  v59 = v41;
  v60 = v57[0];
  static Tensor.+ infix(_:_:)();

  v46 = *&v54[0];
  memcpy(v54, __dst, sizeof(v54));
  InstanceNorm.runningMean.getter(v57);
  v47 = v57[0];
  if (!v57[0])
  {

LABEL_38:

    goto LABEL_39;
  }

  memcpy(v54, __dst, sizeof(v54));
  InstanceNorm.runningVariance.getter(v57);
  v48 = v57[0];
  if (!v57[0])
  {

    goto LABEL_38;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39C0, &unk_25BCC8940);
  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_25BCBAE90;
  *(v49 + 32) = v47;
  *(v49 + 40) = v48;
  *(v49 + 48) = v46;

  sub_25BACEA3C(v49);

  swift_setDeallocating();
  result = sub_25BAB3FD0();
LABEL_39:
  *v53 = v46;
  return result;
}

uint64_t sub_25BC84930()
{
  v0 = sub_25BCB761C();

  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_25BC84980(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_25BAFC468();
}

uint64_t sub_25BC849A4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_25BC84930();
  *a2 = result;
  return result;
}

uint64_t sub_25BC849D4()
{
  v1 = OUTLINED_FUNCTION_84_7();
  result = sub_25BAE2C58(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_25BC84A04@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25BC8497C();
  *a1 = result;
  return result;
}

uint64_t sub_25BC84A2C(uint64_t a1)
{
  v2 = sub_25BC86B80();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BC84A68(uint64_t a1)
{
  v2 = sub_25BC86B80();

  return MEMORY[0x2821FE720](a1, v2);
}

void InstanceNorm.init(from:)()
{
  OUTLINED_FUNCTION_40();
  v2 = v1;
  v4 = v3;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB78A0, &qword_25BCD40F0);
  OUTLINED_FUNCTION_2(v30);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v7);
  v8 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_25BC86B80();
  sub_25BCB7B2C();
  if (!v0)
  {
    sub_25BB3993C();
    OUTLINED_FUNCTION_82_10();
    OUTLINED_FUNCTION_18_44();
    sub_25BCB76AC();
    OUTLINED_FUNCTION_82_10();
    OUTLINED_FUNCTION_18_44();
    sub_25BCB76AC();
    v18 = v19;
    sub_25BC869DC();
    OUTLINED_FUNCTION_82_10();
    OUTLINED_FUNCTION_18_44();
    sub_25BCB765C();
    OUTLINED_FUNCTION_82_10();
    OUTLINED_FUNCTION_18_44();
    sub_25BCB765C();
    LOBYTE(v19) = 4;
    sub_25BCB768C();
    v10 = v9;
    v25 = 5;
    sub_25BCB768C();
    v12 = v11;

    LODWORD(v13) = v10;
    sub_25BC82FA8(v13, v12);
    v29 = v21;
    v26 = v22;
    v27 = v23;
    *v28 = *v24;
    *&v28[15] = *&v24[15];
    sub_25BBC68D8();
    sub_25BCB76AC();
    v14 = OUTLINED_FUNCTION_11_52();
    v15(v14);

    v16 = v20;
    *v4 = v19;
    *(v4 + 16) = v16;
    v17 = v27;
    *(v4 + 41) = v26;
    *(v4 + 32) = v29;
    *(v4 + 40) = v18;
    *(v4 + 57) = v17;
    *(v4 + 73) = *v28;
    *(v4 + 88) = *&v28[15];
  }

  __swift_destroy_boxed_opaque_existential_1(v2);
  OUTLINED_FUNCTION_39();
}

void InstanceNorm.encode(to:)()
{
  OUTLINED_FUNCTION_40();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB78B0, &qword_25BCD40F8);
  OUTLINED_FUNCTION_2(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_9_5();
  v18 = *(v0 + 9);
  v19 = *(v0 + 8);
  v22 = *v0;
  v23 = v0[2];
  v24 = *(v0 + 24);
  v20 = *(v0 + 40);
  v21 = *(v0 + 25);
  v11 = *(v0 + 11);
  v12 = *(v0 + 12);
  v16 = v0[7];
  v17 = *(v0 + 64);
  v13 = v0[9];
  v14 = *(v0 + 80);
  v15 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_25BC86B80();
  OUTLINED_FUNCTION_23_3();
  sub_25BCB7B6C();
  OUTLINED_FUNCTION_77_8();
  if (!v1)
  {
    sub_25BB39990();

    OUTLINED_FUNCTION_27_33();
    OUTLINED_FUNCTION_64_0();
    sub_25BCB779C();

    OUTLINED_FUNCTION_27_33();
    OUTLINED_FUNCTION_64_0();
    sub_25BCB779C();

    if (v17)
    {
    }

    sub_25BC86A30();
    OUTLINED_FUNCTION_27_33();
    OUTLINED_FUNCTION_64_0();
    sub_25BCB773C();

    if (v14)
    {
    }

    OUTLINED_FUNCTION_27_33();
    OUTLINED_FUNCTION_64_0();
    sub_25BCB773C();

    OUTLINED_FUNCTION_64_0();
    sub_25BCB777C();
    sub_25BBC6830();
    OUTLINED_FUNCTION_27_33();
    OUTLINED_FUNCTION_64_0();
    sub_25BCB779C();
  }

  (*(v7 + 8))(v2, v5);
  OUTLINED_FUNCTION_39();
}

uint64_t GroupNorm.featureCount.getter()
{
  v1 = *(v0 + 40);
  OUTLINED_FUNCTION_59_14();
  if ((*(v1 + 24) & 1) == 0)
  {
    return *(v1 + 16);
  }

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_7_0();
  result = OUTLINED_FUNCTION_58_15();
  __break(1u);
  return result;
}

uint64_t GroupNorm.scale.getter()
{
  v1 = *(v0 + 8);
  v2 = OUTLINED_FUNCTION_38();
  if (v4)
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_1_3();
LABEL_8:
    OUTLINED_FUNCTION_23_36();
    result = sub_25BCB74CC();
    __break(1u);
    return result;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_5_3();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_75_1(v2, v3);

  return sub_25BAB69FC();
}

uint64_t sub_25BC85374@<X0>(void *a1@<X8>)
{
  result = GroupNorm.scale.getter();
  *a1 = v3;
  return result;
}

uint64_t GroupNorm.scale.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_40_0(a1);
  v2 = OUTLINED_FUNCTION_29(*(v1 + 8));
  if (v3)
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_1_3();
  }

  else
  {
    if (v2 < 0)
    {
      OUTLINED_FUNCTION_86_0(v2);
      return OUTLINED_FUNCTION_113();
    }

    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_5_3();
  }

  OUTLINED_FUNCTION_23_36();
  result = sub_25BCB74CC();
  __break(1u);
  return result;
}

uint64_t sub_25BC85484(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (a2)
  {
    OUTLINED_FUNCTION_88();
    Parameter.wrappedValue.setter(v6);
  }

  else
  {
    OUTLINED_FUNCTION_75_8();
    return Parameter.wrappedValue.setter(v5);
  }
}

uint64_t GroupNorm.$scale.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 17);
  return OUTLINED_FUNCTION_10_45(*(v1 + 8), a1);
}

uint64_t GroupNorm.offset.getter()
{
  v1 = *(v0 + 24);
  v2 = OUTLINED_FUNCTION_38();
  if (v4)
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_1_3();
LABEL_8:
    OUTLINED_FUNCTION_23_36();
    result = sub_25BCB74CC();
    __break(1u);
    return result;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_5_3();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_75_1(v2, v3);

  return sub_25BAB69FC();
}

uint64_t sub_25BC85590@<X0>(void *a1@<X8>)
{
  result = GroupNorm.offset.getter();
  *a1 = v3;
  return result;
}

uint64_t GroupNorm.offset.modify(uint64_t a1)
{
  OUTLINED_FUNCTION_40_0(a1);
  v2 = OUTLINED_FUNCTION_29(*(v1 + 24));
  if (v3)
  {
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_1_3();
  }

  else
  {
    if (v2 < 0)
    {
      OUTLINED_FUNCTION_86_0(v2);
      return OUTLINED_FUNCTION_113();
    }

    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_5_3();
  }

  OUTLINED_FUNCTION_23_36();
  result = sub_25BCB74CC();
  __break(1u);
  return result;
}

uint64_t sub_25BC856D4(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (a2)
  {
    OUTLINED_FUNCTION_88();
    Parameter.wrappedValue.setter(v6);
  }

  else
  {
    OUTLINED_FUNCTION_75_8();
    return Parameter.wrappedValue.setter(v5);
  }
}

uint64_t GroupNorm.$offset.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 33);
  return OUTLINED_FUNCTION_10_45(*(v1 + 24), a1);
}

uint64_t GroupNorm.isEveryParameterInitialized.getter()
{
  if (*(*(v0 + 56) + 16))
  {
    v1 = 1;
  }

  else
  {
    v2 = *(v0 + 40);
    OUTLINED_FUNCTION_39_26();
    OUTLINED_FUNCTION_45_20();
  }

  return v1 & 1;
}

uint64_t sub_25BC857A0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>, float a5@<S0>)
{
  v8 = *a2;
  v9 = *(a2 + 8);
  v10 = *(a2 + 9);
  v11 = *a3;
  v12 = *(a3 + 8);
  v13 = *(a3 + 9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB78B8, &qword_25BCD4100);
  OUTLINED_FUNCTION_44_20();
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(a4 + 40) = OUTLINED_FUNCTION_57_12(v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB78C0, &qword_25BCD4108);
  OUTLINED_FUNCTION_32_28();
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(a4 + 56) = v15;
  v16 = *(v8 + 32);
  OUTLINED_FUNCTION_37_26();
  if (v18)
  {
    goto LABEL_12;
  }

  if ((v17 & 0x8000000000000000) == 0)
  {
    goto LABEL_13;
  }

  v19 = OUTLINED_FUNCTION_21_37(v17);
  if (!*(v19 + 16))
  {
    goto LABEL_14;
  }

  if (*(v19 + 32) < a1)
  {
    goto LABEL_15;
  }

  v21 = *(v11 + 32);
  if ((v20 & ~v21) == 0)
  {
    goto LABEL_12;
  }

  if ((v21 & 0x8000000000000000) == 0)
  {
LABEL_13:
    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_5_3();
    goto LABEL_16;
  }

  if ((sub_25BAB5C48(v19, *(*((v21 & 0x7FFFFFFFFFFFFFFFLL) + 0x10) + 152)) & 1) == 0)
  {
LABEL_15:
    OUTLINED_FUNCTION_16_50();
    goto LABEL_16;
  }

  *(a4 + 24) = v8;
  *(a4 + 32) = v9;
  *(a4 + 33) = v10;
  *a4 = a1;
  *(a4 + 8) = v11;
  *(a4 + 16) = v12;
  *(a4 + 17) = v13;
  *(a4 + 48) = a5;
  v22 = *(v11 + 32);
  OUTLINED_FUNCTION_37_26();
  if (!v18)
  {
    if (v23 < 0)
    {
      v24 = OUTLINED_FUNCTION_21_37(v23);
      if (*(v24 + 16))
      {
        v25 = *(v24 + 32);
        OUTLINED_FUNCTION_5_53();
        result = swift_beginAccess();
        *(v14 + 16) = v25;
        *(v14 + 24) = 0;
        return result;
      }

LABEL_14:
      OUTLINED_FUNCTION_12_47();
      sub_25BCB617C();
      OUTLINED_FUNCTION_17_4();
      sub_25BADDD28();
    }

    goto LABEL_13;
  }

LABEL_12:
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_3();
LABEL_16:
  result = sub_25BCB74CC();
  __break(1u);
  return result;
}

uint64_t GroupNorm.init(groupCount:offset:scale:epsilon:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>, float a5@<S0>)
{
  v8 = *a2;
  v9 = *a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB78B8, &qword_25BCD4100);
  OUTLINED_FUNCTION_44_20();
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(a4 + 40) = OUTLINED_FUNCTION_57_12(v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB78C0, &qword_25BCD4108);
  OUTLINED_FUNCTION_32_28();
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(a4 + 56) = v11;
  v12 = *(*(v8 + 16) + 152);
  if (!*(v12 + 16))
  {
    OUTLINED_FUNCTION_12_47();
    sub_25BCB617C();
    goto LABEL_9;
  }

  if (*(v12 + 32) < a1 || (sub_25BAB5C48(v12, *(*(v9 + 16) + 152)) & 1) == 0)
  {
    OUTLINED_FUNCTION_16_50();
    OUTLINED_FUNCTION_69_1();
    __break(1u);
    goto LABEL_8;
  }

  *a4 = a1;
  *(a4 + 32) = 256;
  type metadata accessor for LayerVariableReference();
  v13 = OUTLINED_FUNCTION_5();
  *(a4 + 24) = OUTLINED_FUNCTION_89_9(v13, v14);
  *(a4 + 16) = 256;
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_17_26();

  *(a4 + 8) = OUTLINED_FUNCTION_89_9(v15, v16);
  *(a4 + 48) = a5;
  v17 = *(v9 + 16);

  v18 = *(v17 + 152);
  sub_25BCB617C();

  if (!*(v18 + 16))
  {
LABEL_8:
    OUTLINED_FUNCTION_12_47();
LABEL_9:
    OUTLINED_FUNCTION_17_4();
    sub_25BADDD28();
  }

  v19 = *(v18 + 32);

  OUTLINED_FUNCTION_5_53();
  result = swift_beginAccess();
  *(v10 + 16) = v19;
  *(v10 + 24) = 0;
  return result;
}

uint64_t GroupNorm.init(groupCount:offsetInitializer:scaleInitializer:epsilon:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, float a3@<S0>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB78B8, &qword_25BCD4100);
  OUTLINED_FUNCTION_44_20();
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(a2 + 40) = OUTLINED_FUNCTION_57_12(v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB78C0, &qword_25BCD4108);
  OUTLINED_FUNCTION_32_28();
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(a2 + 56) = v7;
  *a2 = a1;
  type metadata accessor for LayerVariableReference();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_54_18();

  *(a2 + 24) = sub_25BB1AB04(v8);
  *(a2 + 32) = 256;
  OUTLINED_FUNCTION_5();
  v9 = OUTLINED_FUNCTION_17_26();
  sub_25BB1AB04(v9);
  OUTLINED_FUNCTION_54_18();

  *(a2 + 8) = a1;
  *(a2 + 16) = 256;
  *(a2 + 48) = a3;
  return result;
}

uint64_t GroupNorm.initializeParameters(for:)(uint64_t *a1)
{
  v2 = OUTLINED_FUNCTION_22_35(*a1);
  if (v3 <= 1)
  {
    OUTLINED_FUNCTION_59_1();
    OUTLINED_FUNCTION_17_4();
    sub_25BADDD28();
  }

  v4 = v1[5];
  v5 = v1[3];
  v6 = v1[1];
  v7 = *(v2 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
  v8 = OUTLINED_FUNCTION_5();
  *(v8 + 16) = xmmword_25BCBAE50;
  *(v8 + 32) = v7;
  v11[0] = v8;

  sub_25BB1ABC8(v11);

  v9 = OUTLINED_FUNCTION_5();
  *(v9 + 16) = xmmword_25BCBAE50;
  *(v9 + 32) = v7;
  v11[0] = v9;

  sub_25BB1ABC8(v11);

  OUTLINED_FUNCTION_5_53();
  result = swift_beginAccess();
  *(v4 + 16) = v7;
  *(v4 + 24) = 0;
  return result;
}

uint64_t GroupNorm.forward(_:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  v6 = *v2;
  v7 = v2[1];
  v8 = v2[3];
  v9 = *(v2 + 12);
  v10 = *(*a1 + 16);
  LOBYTE(v2) = *(v10 + 160);
  if (!sub_25BAA80BC(v2, &unk_286D42270))
  {
    goto LABEL_45;
  }

  v11 = *(v10 + 152);
  v12 = *(v11 + 16);
  if (v12 <= 1)
  {
    goto LABEL_41;
  }

  v13 = *(v10 + 152);
  swift_bridgeObjectRetain_n();
  v14 = v11;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_25BAA2110(v11);
    v14 = v75;
  }

  v12 = v14[2];
  if (v12 < 2)
  {
    __break(1u);
    goto LABEL_31;
  }

  if (!v6)
  {
LABEL_31:
    __break(1u);
LABEL_32:
    sub_25BA96630();
    v14 = v76;
    *&v103 = v76;
    goto LABEL_12;
  }

  v15 = v14[5];
  v16 = v15 == 0x8000000000000000 && v6 == -1;
  if (v16)
  {
    goto LABEL_39;
  }

  v14[5] = v15 / v6;
  *&v103 = v14;
  if (v12 >= v14[3] >> 1)
  {
    goto LABEL_32;
  }

LABEL_12:
  sub_25BCA5CE0(1, 1, 1, v6);

  v92 = v5;
  v102 = v14;
  v2 = &v92;
  Tensor.reshaped(to:)(&v102, &v103);

  v17 = v103;
  v18 = *(*(*(v103 + 16) + 152) + 16);
  if (v18)
  {
    v3 = sub_25BC54B00(1, v18);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_14;
    }
  }

  else
  {
    __break(1u);
  }

  sub_25BAA2110(v3);
  v3 = v77;
LABEL_14:
  v19 = *(v3 + 16);
  if (!v19)
  {
    __break(1u);
LABEL_36:
    sub_25BAA2110(a2);
    a2 = v78;
    goto LABEL_17;
  }

  v20 = v19 - 1;
  sub_25BAB254C(v3 + 40, v19 - 1, v3 + 32);
  *(v3 + 16) = v20;
  v92 = v17;
  Tensor.mean(alongAxes:)(v3, &v103);
  v14 = v103;
  OUTLINED_FUNCTION_73_10(v21, v22, v23, v24, v25, v26, v27, v28, v79, v83, a2, v103, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v17);
  static Tensor.- infix(_:_:)();
  Tensor.squared()();

  Tensor.mean(alongAxes:)(v3, &v103);

  LOBYTE(v3) = v103;
  v2 = *(*(v5 + 16) + 152);
  v29 = v2[2];
  sub_25BCB617C();
  v30 = sub_25BAC0E14(1, v29 + 1);
  v12 = *(v30 + 16);
  if (v12 <= 1)
  {
LABEL_41:
    *&v104 = 0;
    *&v103 = 1;
LABEL_48:
    *(&v103 + 1) = 0;
    BYTE8(v104) = -1;
    v106 = 0;
    v105 = v12;
    v107 = -1;
    goto LABEL_49;
  }

  a2 = v30;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_36;
  }

LABEL_17:
  v12 = a2[2];
  if (v12 < 2)
  {
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  a2[5] = v6;
  v31 = v2[2];
  if (v31 <= 1)
  {
    *&v104 = 0;
    v103 = 1uLL;
    BYTE8(v104) = -1;
    v106 = 0;
    v105 = v31;
    v107 = -1;
LABEL_49:
    v108 = 4;
    OUTLINED_FUNCTION_17_4();
LABEL_50:
    sub_25BADDD28();
  }

  v10 = v2[5];
  if (v10 == 0x8000000000000000 && v6 == -1)
  {
    goto LABEL_40;
  }

  if (v12 == 2)
  {
    *&v104 = 0;
    *&v103 = 2;
    goto LABEL_48;
  }

  v12 = a2[2];
  if (v12 < 3)
  {
    goto LABEL_38;
  }

  a2[6] = v10 / v6;
  v33 = *(v7 + 32);
  OUTLINED_FUNCTION_37_26();
  if (v16)
  {
    goto LABEL_42;
  }

  if ((v34 & 0x8000000000000000) == 0)
  {
LABEL_43:
    OUTLINED_FUNCTION_0_19();
    OUTLINED_FUNCTION_5_3();
    goto LABEL_44;
  }

  *&v103 = v34 & 0x7FFFFFFFFFFFFFFFLL;
  v92 = a2;

  v2 = &v103;
  Tensor.reshaped(to:)(&v92, &v102);

  v35 = *(v8 + 32);
  if ((~v35 & 0xF000000000000007) == 0)
  {
LABEL_42:
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_1_3();
LABEL_44:
    OUTLINED_FUNCTION_23_36();
    sub_25BCB74CC();
    __break(1u);
LABEL_45:
    LOBYTE(v92) = v2;
    sub_25BC8FACC();
    OUTLINED_FUNCTION_30();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4140, &qword_25BCC2F10);
    *&v103 = v10;
    *(&v103 + 1) = &v92;
    OUTLINED_FUNCTION_9_16();
    OUTLINED_FUNCTION_15_48();
    goto LABEL_50;
  }

  if ((v35 & 0x8000000000000000) == 0)
  {
    goto LABEL_43;
  }

  v36 = v102;
  *&v103 = v35 & 0x7FFFFFFFFFFFFFFFLL;
  v92 = a2;
  sub_25BAB69FC();
  Tensor.reshaped(to:)(&v92, &v101);

  v37 = v101;
  v38 = *(*(v5 + 16) + 160);
  LODWORD(v106) = 0;
  v104 = 0u;
  v105 = 0u;
  v103 = 0u;
  v99 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F28, &qword_25BCBBE60);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_25BCBAE50;
  *(v39 + 32) = v9;
  HIBYTE(v98) = v38;
  v47 = OUTLINED_FUNCTION_73_10(v39, v40, v41, v42, v43, v44, v45, v46, v79, v83, v87, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103);
  sub_25BAA486C(v47, v48, &qword_27FBB6730, &qword_25BCBC4B0);
  Tensor.init(shape:coercingScalars:scalarType:on:)(&v99, v39, &v98 + 7, &v92, &v100);
  v49 = sub_25BAA6F5C(&v103, &qword_27FBB6730, &qword_25BCBC4B0);
  OUTLINED_FUNCTION_73_10(v49, v50, v51, v52, v53, v54, v55, v56, v80, v84, v88, v100, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v3);
  static Tensor.+ infix(_:_:)();
  rsqrt(_:)(&v103, &v100);

  v58 = v103;
  OUTLINED_FUNCTION_73_10(v57, v59, v60, v61, v62, v63, v64, v65, v81, v85, v89, v14, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v17);
  static Tensor.- infix(_:_:)();
  OUTLINED_FUNCTION_73_10(v66, v67, v68, v69, v70, v71, v72, v73, v82, v86, v90, v36, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v58);
  static Tensor.* infix(_:_:)();
  static Tensor.* infix(_:_:)();

  v99 = v37;
  v100 = v92;
  static Tensor.+ infix(_:_:)();

  v92 = *(*(v5 + 16) + 152);
  sub_25BCB617C();
  Tensor.reshaped(to:)(&v92, v91);
}

uint64_t sub_25BC863E4(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_25BAFB1F0();
}

uint64_t sub_25BC86408@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_25BAE2CEC();
  *a2 = result;
  return result;
}

uint64_t sub_25BC86438()
{
  v1 = OUTLINED_FUNCTION_84_7();
  result = sub_25BAE2D38(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_25BC86468@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25BAE2CEC();
  *a1 = result;
  return result;
}

uint64_t sub_25BC86490(uint64_t a1)
{
  v2 = sub_25BC86BD4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BC864CC(uint64_t a1)
{
  v2 = sub_25BC86BD4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t GroupNorm.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB78C8, &qword_25BCD4110);
  OUTLINED_FUNCTION_2(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_4_6();
  sub_25BC86BD4();
  OUTLINED_FUNCTION_60_13();
  if (!v2)
  {
    LOBYTE(v20[0]) = 0;
    OUTLINED_FUNCTION_48_22();
    v9 = sub_25BCB769C();
    sub_25BB3993C();
    OUTLINED_FUNCTION_24_27();
    OUTLINED_FUNCTION_48_22();
    sub_25BCB76AC();
    v21 = BYTE8(v20[0]);
    OUTLINED_FUNCTION_24_27();
    OUTLINED_FUNCTION_48_22();
    sub_25BCB76AC();
    v22 = 3;
    OUTLINED_FUNCTION_48_22();
    sub_25BCB768C();
    v18 = *&v20[0];
    v19 = WORD4(v20[0]);
    v16 = *&v20[0];
    v17 = WORD4(v20[0]);
    sub_25BC857A0(v9, &v18, &v16, v20, v11);
    v12 = OUTLINED_FUNCTION_41_26();
    v13(v12);
    v14 = v20[1];
    *a2 = v20[0];
    a2[1] = v14;
    v15 = v20[3];
    a2[2] = v20[2];
    a2[3] = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void GroupNorm.encode(to:)()
{
  OUTLINED_FUNCTION_38_22();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB78D8, &qword_25BCD4118);
  OUTLINED_FUNCTION_2(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_9_5();
  v11 = *v0;
  v18 = v0[1];
  v19 = v0[3];
  v16 = *(v0 + 32);
  v17 = *(v0 + 16);
  v14 = *(v0 + 17);
  v15 = *(v0 + 33);
  v12 = *(v0 + 12);
  v13 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_25BC86BD4();
  OUTLINED_FUNCTION_23_3();
  sub_25BCB7B6C();
  OUTLINED_FUNCTION_15_25();
  sub_25BCB778C();
  if (!v1)
  {
    sub_25BB39990();

    OUTLINED_FUNCTION_68_12();
    OUTLINED_FUNCTION_15_25();
    sub_25BCB779C();
    OUTLINED_FUNCTION_93_7();

    OUTLINED_FUNCTION_68_12();
    OUTLINED_FUNCTION_15_25();
    sub_25BCB779C();
    OUTLINED_FUNCTION_93_7();
    OUTLINED_FUNCTION_15_25();
    sub_25BCB777C();
  }

  (*(v7 + 8))(v2, v5);
  OUTLINED_FUNCTION_41_22();
}

unint64_t sub_25BC86988()
{
  result = qword_27FBB7838;
  if (!qword_27FBB7838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7838);
  }

  return result;
}

unint64_t sub_25BC869DC()
{
  result = qword_27FBB7840;
  if (!qword_27FBB7840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7840);
  }

  return result;
}

unint64_t sub_25BC86A30()
{
  result = qword_27FBB7850;
  if (!qword_27FBB7850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7850);
  }

  return result;
}

unint64_t sub_25BC86A84()
{
  result = qword_27FBB7870;
  if (!qword_27FBB7870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7870);
  }

  return result;
}

unint64_t sub_25BC86AD8()
{
  result = qword_27FBB7878;
  if (!qword_27FBB7878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7878);
  }

  return result;
}

unint64_t sub_25BC86B2C()
{
  result = qword_27FBB7888;
  if (!qword_27FBB7888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7888);
  }

  return result;
}

unint64_t sub_25BC86B80()
{
  result = qword_27FBB78A8;
  if (!qword_27FBB78A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB78A8);
  }

  return result;
}

unint64_t sub_25BC86BD4()
{
  result = qword_27FBB78D0;
  if (!qword_27FBB78D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB78D0);
  }

  return result;
}

unint64_t sub_25BC86C2C()
{
  result = qword_27FBB78E0;
  if (!qword_27FBB78E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB78E0);
  }

  return result;
}

uint64_t sub_25BC86C80(uint64_t a1, int a2)
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

uint64_t sub_25BC86CC0(uint64_t result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for LayerNorm.NormalizedAxes(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_25BC86E0C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_25BC86E4C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25BC86EFC(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_42_6(-1);
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return OUTLINED_FUNCTION_42_6((*a1 | (v4 << 8)) - 4);
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

      return OUTLINED_FUNCTION_42_6((*a1 | (v4 << 8)) - 4);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_42_6((*a1 | (v4 << 8)) - 4);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_42_6(v8);
}

_BYTE *sub_25BC86F80(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_25BC8705C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25BC870AC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_25BC87100(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_25BC87118(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t sub_25BC87148(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_42_6(-1);
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return OUTLINED_FUNCTION_42_6((*a1 | (v4 << 8)) - 7);
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

      return OUTLINED_FUNCTION_42_6((*a1 | (v4 << 8)) - 7);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_42_6((*a1 | (v4 << 8)) - 7);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_42_6(v8);
}

_BYTE *sub_25BC871CC(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_25BC872BC()
{
  result = qword_27FBB78E8;
  if (!qword_27FBB78E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB78E8);
  }

  return result;
}

unint64_t sub_25BC87314()
{
  result = qword_27FBB78F0;
  if (!qword_27FBB78F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB78F0);
  }

  return result;
}

unint64_t sub_25BC8736C()
{
  result = qword_27FBB78F8;
  if (!qword_27FBB78F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB78F8);
  }

  return result;
}

unint64_t sub_25BC873C4()
{
  result = qword_27FBB7900;
  if (!qword_27FBB7900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7900);
  }

  return result;
}

unint64_t sub_25BC8741C()
{
  result = qword_27FBB7908;
  if (!qword_27FBB7908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7908);
  }

  return result;
}

unint64_t sub_25BC87474()
{
  result = qword_27FBB7910;
  if (!qword_27FBB7910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7910);
  }

  return result;
}

unint64_t sub_25BC874CC()
{
  result = qword_27FBB7918;
  if (!qword_27FBB7918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7918);
  }

  return result;
}

unint64_t sub_25BC87524()
{
  result = qword_27FBB7920;
  if (!qword_27FBB7920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7920);
  }

  return result;
}

unint64_t sub_25BC8757C()
{
  result = qword_27FBB7928;
  if (!qword_27FBB7928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7928);
  }

  return result;
}

unint64_t sub_25BC875D4()
{
  result = qword_27FBB7930;
  if (!qword_27FBB7930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7930);
  }

  return result;
}

unint64_t sub_25BC8762C()
{
  result = qword_27FBB7938;
  if (!qword_27FBB7938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7938);
  }

  return result;
}

unint64_t sub_25BC87684()
{
  result = qword_27FBB7940;
  if (!qword_27FBB7940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB7940);
  }

  return result;
}

unint64_t sub_25BC876D8()
{
  result = qword_27FBB7948[0];
  if (!qword_27FBB7948[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FBB7948);
  }

  return result;
}

uint64_t sub_25BC87800(uint64_t result, char a2)
{
  if (*(result + 40) == 2 && (a2 & 1) != 0)
  {
    OUTLINED_FUNCTION_11_53();
    sub_25BCB70FC();
    OUTLINED_FUNCTION_3_3();
    MEMORY[0x25F876C90]();
    v2 = ComputeDevice.description.getter();
    MEMORY[0x25F876C90](v2);

    OUTLINED_FUNCTION_3_3();
    MEMORY[0x25F876C90](0xD000000000000013);
    MEMORY[0x25F876C90](0x656C676E6973, 0xE600000000000000);
    OUTLINED_FUNCTION_3_3();
    MEMORY[0x25F876C90]();
    v3 = sub_25BCB7C1C();
    MEMORY[0x25F876C90](v3);

    OUTLINED_FUNCTION_3_3();
    MEMORY[0x25F876C90]();
    result = sub_25BCB74CC();
    __break(1u);
  }

  return result;
}

void requireRank(_:from:expectation:function:file:line:)()
{
  OUTLINED_FUNCTION_29_32();
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v5 = *v4;
  v6 = *(v4 + 8);
  v7 = *(v4 + 16);
  if ((sub_25BAB74D0(v8, *v4, v6, v7) & 1) == 0)
  {
    v9 = OUTLINED_FUNCTION_17_48();
    sub_25BBFA14C(v9, v10, v3);
    sub_25BAB7654(v5, v6, v7);
    sub_25BADDD28();
  }

  OUTLINED_FUNCTION_27_34();
}

void requireScalarType(_:from:_:function:file:line:)()
{
  OUTLINED_FUNCTION_29_32();
  v2 = *v1;
  v3 = *v0;
  v4 = v0[1];
  v5 = *(v0 + 16);
  v7 = *v6;
  v8 = *(v6 + 8);
  if (*(v6 + 8))
  {
    if (v8 == 1)
    {
      v9 = *(v7 + 16);
      v10 = (v7 + 32);
      while (v9)
      {
        v11 = *v10++;
        --v9;
        if (v11 == v2)
        {
          goto LABEL_8;
        }
      }

LABEL_10:
      v14 = v5;
      sub_25BC8FACC();
      v15 = OUTLINED_FUNCTION_17_48();
      sub_25BBFA14C(v15, v16, v14);
      sub_25BC88530(v7, v8);
      sub_25BADDD28();
    }

    v17 = *v0;
    v18 = v0[1];
    v12 = *(v0 + 16);
    v13 = sub_25BC8FACC();
    v5 = v12;
    if (v13 != v7)
    {
      goto LABEL_10;
    }
  }

  else if (v2 != v7)
  {
    goto LABEL_10;
  }

LABEL_8:
  OUTLINED_FUNCTION_27_34();
}

void requireSameScalarTypes(_:from:_:from:expectation:function:file:line:)()
{
  OUTLINED_FUNCTION_28_31();
  v2 = *v1;
  v5 = *v3;
  v4 = v3[1];
  v6 = *(v3 + 16);
  v9 = *v8;
  v10 = *(v8 + 8);
  v11 = *(v8 + 16);
  if (v2 != *v7)
  {
    sub_25BC8FACC();
    sub_25BC8FACC();
    v23 = OUTLINED_FUNCTION_16_51();
    sub_25BBFA14C(v23, v24, v25);
    goto LABEL_8;
  }

  v12 = *v0;
  v13 = *(v0 + 8);
  if (!*(v0 + 8))
  {
    if (v2 == v12)
    {
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  if (v13 == 1)
  {
    Kind = v12[1].Kind;
    v15 = v12 + 2;
    v16 = Kind;
    v17 = v12 + 2;
    do
    {
      if (!v16)
      {
        goto LABEL_17;
      }

      Kind_low = LOBYTE(v17->Kind);
      v17 = (v17 + 1);
      --v16;
    }

    while (Kind_low != v2);
    while (Kind)
    {
      v19 = LOBYTE(v15->Kind);
      v15 = (v15 + 1);
      --Kind;
      if (v19 == v2)
      {
        goto LABEL_16;
      }
    }

    goto LABEL_7;
  }

  if (v13 == 2)
  {
    if (sub_25BC8FACC() == v12)
    {
      if (sub_25BC8FACC() != v12)
      {
LABEL_7:
        sub_25BC8FACC();
        OUTLINED_FUNCTION_22_36();
        sub_25BC88544(v12, v13);
LABEL_8:
        sub_25BBFA14C(v9, v10, v11);
        goto LABEL_18;
      }

      goto LABEL_16;
    }

LABEL_17:
    sub_25BC8FACC();
    OUTLINED_FUNCTION_22_36();
    v20 = OUTLINED_FUNCTION_16_51();
    sub_25BBFA14C(v20, v21, v22);
    sub_25BC88544(v12, v13);
LABEL_18:
    sub_25BADDD28();
  }

LABEL_16:
  OUTLINED_FUNCTION_30_29();
}

BOOL sub_25BC87DBC(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t *a11, uint64_t *a12)
{
  v12 = *a2;
  v13 = *(a2 + 8);
  v14 = *(a2 + 16);
  result = sub_25BAA80BC(*a1, a10);
  if (!result)
  {
    sub_25BC8FACC();
    __swift_instantiateConcreteTypeFromMangledNameV2(a11, a12);
    sub_25BBFA14C(v12, v13, v14);
    OUTLINED_FUNCTION_16_51();
    sub_25BADDD28();
  }

  return result;
}

uint64_t requireSameRank(_:from:_:from:function:file:line:)(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (result != a3)
  {
    v5 = *a4;
    v4 = *(a4 + 8);
    v6 = *(a4 + 16);
    v10 = *a2;
    v11 = a2[1];
    v12 = *(a2 + 16);
    OUTLINED_FUNCTION_20_37();
    sub_25BBFA14C(v7, v8, v9);
    sub_25BBFA14C(v5, v4, v6);
    OUTLINED_FUNCTION_8_58();
  }

  return result;
}

uint64_t requireCompatibleNumericScalarTypes(_:from:_:from:function:file:line:)(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  v4 = 0;
  v5 = *a4;
  v6 = a4[1];
  v7 = *(a4 + 16);
  do
  {
    if (v4 == 4)
    {
      v11 = *a2;
      v12 = a2[1];
      v7 = *(a2 + 16);
LABEL_9:
      sub_25BC8FACC();
      v13 = OUTLINED_FUNCTION_92();
      sub_25BBFA14C(v13, v14, v7);
      sub_25BADDD28();
    }

    v8 = &unk_286D45528 + v4++;
  }

  while (v8[32] != *(*(*result + 16) + 160));
  v9 = 0;
  do
  {
    if (v9 == 4)
    {
      goto LABEL_9;
    }

    v10 = &unk_286D45528 + v9++;
  }

  while (v10[32] != *(*(*a3 + 16) + 160));
  return result;
}

uint64_t requireSameShape(_:from:_:from:function:file:line:)(void *a1, uint64_t *a2, void *a3, uint64_t a4)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = *(a2 + 16);
  v7 = *a4;
  v8 = *(a4 + 8);
  v9 = *(a4 + 16);
  result = sub_25BAB5C48(*a1, *a3);
  if ((result & 1) == 0)
  {
    sub_25BCB617C();
    v11 = OUTLINED_FUNCTION_17_48();
    sub_25BBFA14C(v11, v12, v6);
    sub_25BCB617C();
    sub_25BBFA14C(v7, v8, v9);
    sub_25BADDD28();
  }

  return result;
}

uint64_t static ScalarTypeExpectation.oneOf(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = a1;
  *(a2 + 8) = 1;
  return sub_25BCB617C();
}

uint64_t ScalarTypeExpectation.description.getter()
{
  v1 = *v0;
  if (!*(v0 + 8))
  {
    OUTLINED_FUNCTION_0_91();
    v10 = OUTLINED_FUNCTION_4_68();
    MEMORY[0x25F876C90](v10);
    sub_25BCB73CC();
    v11 = OUTLINED_FUNCTION_3_61();
LABEL_11:
    MEMORY[0x25F876C90](v11, v12);
    return v15;
  }

  if (*(v0 + 8) != 1)
  {
    OUTLINED_FUNCTION_0_91();
    sub_25BCB70FC();

    v15 = 6299745;
    v13 = sub_25BCB7C1C();
    MEMORY[0x25F876C90](v13);

    v12 = 0x800000025BCE6870;
    v11 = 0xD000000000000011;
    goto LABEL_11;
  }

  v2 = *(v1 + 16);
  if (v2)
  {
    v17 = MEMORY[0x277D84F90];
    sub_25BB004E4();
    v3 = (v1 + 32);
    do
    {
      v4 = *v3++;
      OUTLINED_FUNCTION_0_91();
      v5 = OUTLINED_FUNCTION_4_68();
      MEMORY[0x25F876C90](v5);
      sub_25BCB73CC();
      v6 = OUTLINED_FUNCTION_3_61();
      MEMORY[0x25F876C90](v6);
      v7 = *(v17 + 16);
      if (v7 >= *(v17 + 24) >> 1)
      {
        sub_25BB004E4();
      }

      *(v17 + 16) = v7 + 1;
      v8 = v17 + 16 * v7;
      *(v8 + 32) = v15;
      *(v8 + 40) = v16;
      --v2;
    }

    while (v2);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F98, &unk_25BCC3720);
  sub_25BBFA1A0();
  sub_25BCB627C();

  v15 = 0x20666F20656E6FLL;
  v9 = OUTLINED_FUNCTION_110();
  MEMORY[0x25F876C90](v9);

  return v15;
}

uint64_t sub_25BC88530(uint64_t a1, char a2)
{
  if (a2 == 1)
  {
    return sub_25BCB617C();
  }

  return result;
}

uint64_t sub_25BC88544(uint64_t a1, char a2)
{
  if (a2 != -1)
  {
    return sub_25BC88530(a1, a2);
  }

  return a1;
}

uint64_t sub_25BC88558(uint64_t result, uint64_t a2, char a3)
{
  v3 = result;
  switch(a3)
  {
    case 1:
      v49 = 1612738153;
      v45 = OUTLINED_FUNCTION_92();
      sub_25BAB7654(v45, v46, 1);
      OUTLINED_FUNCTION_92();
      v47 = sub_25BB18984();
      MEMORY[0x25F876C90](v47);

      goto LABEL_13;
    case 2:
      OUTLINED_FUNCTION_11_53();
      v41 = OUTLINED_FUNCTION_92();
      sub_25BAB7654(v41, v42, 2);
      v6 = OUTLINED_FUNCTION_25_33();
      v7 = 0xEA00000000006020;
      goto LABEL_11;
    case 3:
      OUTLINED_FUNCTION_11_53();
      v43 = OUTLINED_FUNCTION_92();
      sub_25BAB7654(v43, v44, 3);
      v6 = OUTLINED_FUNCTION_24_28();
      v7 = 0xE900000000000060;
      goto LABEL_11;
    case 4:
      if (!*(result + 16))
      {
        __break(1u);
        goto LABEL_16;
      }

      v8 = *(result + 32);
      v9 = *(result + 40);
      v10 = *(result + 48);
      v11 = OUTLINED_FUNCTION_92();
      sub_25BAB7654(v11, v12, 4);
      v13 = OUTLINED_FUNCTION_14_46();
      sub_25BAB7654(v13, v14, v15);
      v16 = OUTLINED_FUNCTION_14_46();
      v17 = sub_25BC88558(v16);
      v19 = v18;
      v20 = OUTLINED_FUNCTION_14_46();
      result = sub_25BABAF8C(v20, v21, v22);
      v23 = *(v3 + 16);
      v24 = v23 - 1;
      if (v23 == 1)
      {
        goto LABEL_8;
      }

      if (!v23)
      {
LABEL_16:
        __break(1u);
        return result;
      }

      v25 = (v3 + 72);
      do
      {
        v50 = v17;
        v51 = v19;
        MEMORY[0x25F876C90](544370464, 0xE400000000000000);
        v26 = *(v25 - 2);
        v27 = *(v25 - 1);
        v28 = *v25;
        v25 += 24;
        v29 = OUTLINED_FUNCTION_12_48();
        sub_25BAB7654(v29, v30, v31);
        v32 = OUTLINED_FUNCTION_12_48();
        v33 = sub_25BC88558(v32);
        v35 = v34;
        v36 = OUTLINED_FUNCTION_12_48();
        sub_25BABAF8C(v36, v37, v38);
        MEMORY[0x25F876C90](v33, v35);

        v17 = v50;
        v19 = v51;
        --v24;
      }

      while (v24);
LABEL_8:
      v39 = OUTLINED_FUNCTION_92();
      sub_25BABAF8C(v39, v40, 4);
      return v17;
    default:
      OUTLINED_FUNCTION_11_53();
      v4 = OUTLINED_FUNCTION_92();
      sub_25BAB7654(v4, v5, 0);
      v6 = OUTLINED_FUNCTION_4_68();
LABEL_11:
      MEMORY[0x25F876C90](v6, v7);
      sub_25BCB73CC();
LABEL_13:
      v48 = OUTLINED_FUNCTION_4_68();
      MEMORY[0x25F876C90](v48);
      return v49;
  }
}

uint64_t ComparableExpectation.description.getter(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  OUTLINED_FUNCTION_15_49();
  sub_25BCB75CC();
  OUTLINED_FUNCTION_9();
  v75 = v5;
  v76 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v74 = &v70 - v8;
  OUTLINED_FUNCTION_15_49();
  sub_25BCB73DC();
  OUTLINED_FUNCTION_9();
  v72 = v10;
  v73 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  v14 = &v70 - v13;
  OUTLINED_FUNCTION_15_49();
  v15 = sub_25BCB62FC();
  OUTLINED_FUNCTION_9();
  v71 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v19);
  v21 = &v70 - v20;
  OUTLINED_FUNCTION_9();
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v26);
  v28 = &v70 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_9();
  v30 = v29;
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v33);
  v35 = &v70 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x28223BE20](v36);
  v39 = (&v70 - v38);
  (*(v30 + 16))(&v70 - v38, v77, a1, v37);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v68 = v71;
      (*(v71 + 32))(v21, v39, v15);
      OUTLINED_FUNCTION_11_6();
      MEMORY[0x25F876C90](1612738153, 0xE400000000000000);
      swift_getWitnessTable();
      sub_25BCB785C();
      v69 = OUTLINED_FUNCTION_4_68();
      MEMORY[0x25F876C90](v69);
      v43 = v78;
      v47 = *(v68 + 8);
      v45 = v21;
      v46 = v15;
      goto LABEL_11;
    case 2u:
      v60 = v72;
      v59 = v73;
      (*(v72 + 32))(v14, v39, v73);
      OUTLINED_FUNCTION_11_6();
      v61 = OUTLINED_FUNCTION_25_33();
      MEMORY[0x25F876C90](v61, 0xEA00000000006020);
      sub_25BCB784C();
      v62 = OUTLINED_FUNCTION_4_68();
      MEMORY[0x25F876C90](v62);
      v43 = v78;
      (*(v60 + 8))(v14, v59);
      return v43;
    case 3u:
      v64 = v74;
      v63 = v75;
      v65 = v76;
      (*(v75 + 32))(v74, v39, v76);
      OUTLINED_FUNCTION_11_6();
      v66 = OUTLINED_FUNCTION_24_28();
      MEMORY[0x25F876C90](v66, 0xE900000000000060);
      OUTLINED_FUNCTION_194();
      sub_25BCB784C();
      v67 = OUTLINED_FUNCTION_4_68();
      MEMORY[0x25F876C90](v67);
      v43 = v78;
      (*(v63 + 8))(v64, v65);
      return v43;
    case 4u:
      v48 = *v39;
      sub_25BCB690C();
      v43 = ComparableExpectation.description.getter(a1);
      v50 = v49;
      v51 = *(v30 + 8);
      v51(v35, a1);
      result = sub_25BCB681C();
      if (result < 1)
      {
        __break(1u);
      }

      else
      {
        if (result != 1)
        {
          v53 = result;
          v54 = 1;
          do
          {
            v55 = v54 + 1;
            v78 = v43;
            v79 = v50;
            MEMORY[0x25F876C90](544370464, 0xE400000000000000);
            OUTLINED_FUNCTION_194();
            sub_25BCB690C();
            v56 = ComparableExpectation.description.getter(a1);
            v58 = v57;
            v51(v35, a1);
            MEMORY[0x25F876C90](v56, v58);

            v43 = v78;
            v50 = v79;
            v54 = v55;
          }

          while (v53 != v55);
        }

        return v43;
      }

      return result;
    default:
      v40 = v23;
      (*(v23 + 32))(v28, v39, v2);
      OUTLINED_FUNCTION_11_6();
      v41 = OUTLINED_FUNCTION_4_68();
      MEMORY[0x25F876C90](v41);
      OUTLINED_FUNCTION_194();
      sub_25BCB784C();
      v42 = OUTLINED_FUNCTION_4_68();
      MEMORY[0x25F876C90](v42);
      v43 = v78;
      v44 = *(v40 + 8);
      v45 = OUTLINED_FUNCTION_194();
LABEL_11:
      v47(v45, v46);
      return v43;
  }
}

uint64_t DebugValueLocator.description.getter()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  switch(*(v0 + 16))
  {
    case 1:
      OUTLINED_FUNCTION_0_91();
      sub_25BCB70FC();

      OUTLINED_FUNCTION_6_62();
      v10 = v17 + 1;
      goto LABEL_16;
    case 2:
      OUTLINED_FUNCTION_0_91();
      sub_25BCB70FC();

      OUTLINED_FUNCTION_6_62();
LABEL_16:
      v35 = v10;
      v18 = sub_25BCB77FC();
      MEMORY[0x25F876C90](v18);

      return v35;
    case 3:
      v11 = *(v2 + 16);
      v12 = *(v2 + 24);
      if (*(v2 + 48) != 6 || *(v2 + 32) != 0)
      {
        OUTLINED_FUNCTION_0_91();
        v14 = sub_25BCB70FC();
        v15 = DebugValueLocator.description.getter(v14);

        v36 = v15;
        MEMORY[0x25F876C90](0x65626D656D207327, 0xEB00000000222072);
        v16 = OUTLINED_FUNCTION_110();
        MEMORY[0x25F876C90](v16);
        MEMORY[0x25F876C90](34, 0xE100000000000000);
        return v36;
      }

      OUTLINED_FUNCTION_2_76();
      v3 = OUTLINED_FUNCTION_110();
LABEL_27:
      MEMORY[0x25F876C90](v3, v1);
      v26 = OUTLINED_FUNCTION_3_61();
      goto LABEL_28;
    case 4:
      v5 = *(v2 + 16);
      v4 = *(v2 + 24);
      v6 = *(v2 + 40);
      if (v6 == 3)
      {
        v27 = *(v4 + 16);
        v28 = *(v4 + 24);
        v29 = *(v4 + 32);
        v30 = *(v4 + 48);
        if (v30 == 3)
        {
          if (*(v29 + 48) == 6 && *(v29 + 32) == 0)
          {
            v31 = *(v29 + 16);
            v32 = *(v29 + 24);
            OUTLINED_FUNCTION_0_91();
            sub_25BCB70FC();

            OUTLINED_FUNCTION_2_76();
            MEMORY[0x25F876C90](v31, v32);
            MEMORY[0x25F876C90](46, 0xE100000000000000);
            goto LABEL_38;
          }
        }

        else if (v30 == 6 && *(v4 + 32) == 0)
        {
          OUTLINED_FUNCTION_2_76();
LABEL_38:
          v33 = OUTLINED_FUNCTION_92();
          MEMORY[0x25F876C90](v33);
          MEMORY[0x25F876C90](91, 0xE100000000000000);
          goto LABEL_39;
        }

LABEL_8:
        OUTLINED_FUNCTION_0_91();
        sub_25BCB70FC();

        v36 = 0x7069726373627573;
        v8 = sub_25BCB77FC();
        MEMORY[0x25F876C90](v8);

        v9 = MEMORY[0x25F876C90](0x20666F205DLL, 0xE500000000000000);
LABEL_18:
        v23 = DebugValueLocator.description.getter(v9);
        MEMORY[0x25F876C90](v23);

        return v36;
      }

      if (v6 != 6 || *(v2 + 24) != 0)
      {
        goto LABEL_8;
      }

      v35 = 0x5B666C657360;
LABEL_39:
      v34 = sub_25BCB77FC();
      MEMORY[0x25F876C90](v34);

      v26 = 24669;
LABEL_28:
      MEMORY[0x25F876C90](v26);
      return v35;
    case 5:
      v19 = *(v2 + 16);
      v20 = *(v2 + 24);
      v21 = *(v2 + 32);
      OUTLINED_FUNCTION_0_91();
      sub_25BCB70FC();

      OUTLINED_FUNCTION_6_62();
      v36 = v22 + 18;
      goto LABEL_18;
    case 6:
      if (v2 ^ 1 | v1)
      {
        v25 = 0x706F207468676972;
      }

      else
      {
        v25 = 0x65706F207466656CLL;
      }

      if (v2 | v1)
      {
        return v25;
      }

      else
      {
        return 0x60666C657360;
      }

    default:
      v35 = 0x746E656D75677261;
      v3 = *v0;
      goto LABEL_27;
  }
}

uint64_t sub_25BC8912C()
{
  v1 = *v0;
  v2 = *(v0 + 24);
  switch(v2)
  {
    case 255:
      v7 = *v0;
      sub_25BB6D800();
      return sub_25BCB6FBC();
    case 254:
      return 95;
    case 253:
      return 3026478;
    default:
      v5 = v0[1];
      v4 = v0[2];
      v8 = *v0;
      v9 = sub_25BCB77FC();
      MEMORY[0x25F876C90](0x20616B612820, 0xE600000000000000);
      v6 = DebugValueLocator.description.getter();
      MEMORY[0x25F876C90](v6);

      MEMORY[0x25F876C90](41, 0xE100000000000000);
      return v9;
  }
}

uint64_t sub_25BC8922C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[3];
  v4 = *(v0 + 16);
  OUTLINED_FUNCTION_11_53();
  sub_25BCB70FC();
  MEMORY[0x25F876C90](0x206B6E61722061, 0xE700000000000000);
  v5 = OUTLINED_FUNCTION_92();
  v7 = sub_25BC88558(v5, v6, v4);
  MEMORY[0x25F876C90](v7);

  OUTLINED_FUNCTION_3_3();
  MEMORY[0x25F876C90]();
  v31 = v28;
  v8 = *(v3 + 16) + 1;
  v9 = 56;
  do
  {
    if (!--v8)
    {
      v25 = MEMORY[0x25F876F80](v3, &unk_286D56150);
      MEMORY[0x25F876C90](v25);

      return v31;
    }

    v10 = *(v3 + v9);
    v9 += 32;
  }

  while (v10 > 0xFC);
  MEMORY[0x25F876C90](0x200A5B202020200ALL, 0xEF20202020202020);
  v11 = *(v3 + 16);
  if (v11)
  {
    v30 = MEMORY[0x277D84F90];
    sub_25BB004E4();
    v12 = (v3 + 56);
    do
    {
      v13 = *(v12 - 3);
      v14 = *v12;
      switch(v14)
      {
        case 255:
          v29 = *(v12 - 3);
          sub_25BB6D800();
          v15 = sub_25BCB6FBC();
          v16 = v17;
          break;
        case 254:
          v15 = 0xD00000000000001DLL;
          v16 = 0x800000025BCE6960;
          break;
        case 253:
          v15 = 0xD000000000000029;
          v16 = 0x800000025BCE6930;
          break;
        default:
          v19 = *(v12 - 2);
          v18 = *(v12 - 1);
          OUTLINED_FUNCTION_11_53();
          sub_25BCB70FC();
          v20 = sub_25BCB77FC();
          v16 = v21;

          MEMORY[0x25F876C90](0x6D61732820202020, 0xED00002073612065);
          v22 = DebugValueLocator.description.getter();
          MEMORY[0x25F876C90](v22);

          MEMORY[0x25F876C90](41, 0xE100000000000000);
          v15 = v20;
          break;
      }

      v23 = *(v30 + 16);
      if (v23 >= *(v30 + 24) >> 1)
      {
        sub_25BB004E4();
      }

      v12 += 32;
      *(v30 + 16) = v23 + 1;
      v24 = v30 + 16 * v23;
      *(v24 + 32) = v15;
      *(v24 + 40) = v16;
      --v11;
    }

    while (v11);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F98, &unk_25BCC3720);
  sub_25BBFA1A0();
  sub_25BCB627C();

  v26 = OUTLINED_FUNCTION_110();
  MEMORY[0x25F876C90](v26);

  MEMORY[0x25F876C90](0x2E0A5D202020200ALL, 0xEA00000000002E2ELL);
  return v31;
}

void requireCompatibleNumericScalarTypes(_:from:_:from:function:file:line:)()
{
  OUTLINED_FUNCTION_29_32();
  v2 = 0;
  v4 = *v3;
  v5 = v3[1];
  v6 = *(v3 + 16);
  v8 = *v7;
  v9 = v7[1];
  v10 = *(v7 + 16);
  do
  {
    if (v2 == 4)
    {
      OUTLINED_FUNCTION_18_45();
      v10 = v14;
      goto LABEL_10;
    }

    v11 = &unk_286D463F8 + v2++;
  }

  while (v11[32] != *v0);
  v12 = 0;
  do
  {
    if (v12 == 4)
    {
      OUTLINED_FUNCTION_18_45();
LABEL_10:
      sub_25BC8FACC();
      v15 = OUTLINED_FUNCTION_17_48();
      sub_25BBFA14C(v15, v16, v10);
      sub_25BADDD28();
    }

    v13 = &unk_286D463F8 + v12++;
  }

  while (v13[32] != *v1);
  OUTLINED_FUNCTION_27_34();
}

uint64_t requireAxis(_:from:forRank:from:function:file:line:)(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = -a3;
  if (__OFSUB__(0, a3))
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v4 > a3)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (result >= a3 || v4 > result)
  {
LABEL_11:
    v6 = *a4;
    v7 = *(a4 + 8);
    v8 = *(a4 + 16);
    v12 = *a2;
    v13 = a2[1];
    v14 = *(a2 + 16);
    OUTLINED_FUNCTION_20_37();
    sub_25BC02C38(v9, v10, v11);
    sub_25BC02C38(v6, v7, v8);
    OUTLINED_FUNCTION_8_58();
  }

  return result;
}

void sub_25BC897C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, __int16 a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t (*a50)(void, uint64_t, uint64_t), uint64_t (*a51)(uint64_t))
{
  OUTLINED_FUNCTION_28_31();
  a43 = v51;
  a44 = v52;
  v54 = v53;
  v56 = v55;
  v57 = a48;
  v58 = a51;
  v60 = *v59;
  v61 = *(v59 + 8);
  v62 = *(v59 + 16);
  v64 = *v63;
  v65 = *(v63 + 8);
  v70 = *(v63 + 16);
  v66 = a50(0, a48, a49);
  v67 = OUTLINED_FUNCTION_17_48();
  if ((v58(v67) & 1) == 0)
  {
    a19 = v57;
    v68 = __swift_allocate_boxed_opaque_existential_0(&a16);
    (*(*(v57 - 8) + 16))(v68, v56, v57);
    a20 = v60;
    a21 = v61;
    a22 = v62;
    a26 = v66;
    v69 = __swift_allocate_boxed_opaque_existential_0(&a23);
    (*(*(v66 - 8) + 16))(v69, v54, v66);
    a27 = v64;
    a28 = v65;
    a29 = v70;
    a31 = 12;
    sub_25BC02C38(v60, v61, v62);
    sub_25BC02C38(v64, v65, v70);
    sub_25BADDD28();
  }

  OUTLINED_FUNCTION_30_29();
}

uint64_t sub_25BC89940(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = *(a1 + 24);
    v6 = sub_25BCB62FC();
    if (v7 > 0x3F)
    {
      return v6;
    }

    v6 = sub_25BCB73DC();
    if (v8 > 0x3F)
    {
      return v6;
    }

    else
    {
      v3 = sub_25BCB75CC();
      if (v9 <= 0x3F)
      {
        v3 = sub_25BCB68CC();
        if (v10 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v3;
}

uint64_t sub_25BC89A38(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = *(v3 + 64);
  v5 = ((v4 + *(v3 + 80)) & ~*(v3 + 80)) + v4;
  if (v5 > v4)
  {
    v4 = v5;
  }

  v6 = 8;
  if (v4 > 8)
  {
    v6 = v4;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_24;
  }

  v7 = v6 + 1;
  v8 = 8 * (v6 + 1);
  if ((v6 + 1) <= 3)
  {
    v11 = ((a2 + ~(-1 << v8) - 251) >> v8) + 1;
    if (HIWORD(v11))
    {
      v9 = *(a1 + v7);
      if (!v9)
      {
        goto LABEL_24;
      }

      goto LABEL_16;
    }

    if (v11 > 0xFF)
    {
      v9 = *(a1 + v7);
      if (!*(a1 + v7))
      {
        goto LABEL_24;
      }

      goto LABEL_16;
    }

    if (v11 < 2)
    {
LABEL_24:
      v13 = *(a1 + v6);
      if (v13 >= 5)
      {
        return (v13 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v9 = *(a1 + v7);
  if (!*(a1 + v7))
  {
    goto LABEL_24;
  }

LABEL_16:
  v12 = (v9 - 1) << v8;
  if (v7 > 3)
  {
    v12 = 0;
  }

  if (v7)
  {
    if (v7 > 3)
    {
      LODWORD(v7) = 4;
    }

    switch(v7)
    {
      case 2:
        LODWORD(v7) = *a1;
        break;
      case 3:
        LODWORD(v7) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v7) = *a1;
        break;
      default:
        LODWORD(v7) = *a1;
        break;
    }
  }

  return (v7 | v12) + 252;
}

void sub_25BC89BA0(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 64);
  v7 = ((v6 + *(v5 + 80)) & ~*(v5 + 80)) + v6;
  if (v7 > v6)
  {
    v6 = v7;
  }

  if (v6 <= 8)
  {
    v6 = 8;
  }

  v8 = v6 + 1;
  v9 = 8 * (v6 + 1);
  if (a3 < 0xFC)
  {
    v10 = 0;
  }

  else if (v8 <= 3)
  {
    v13 = ((a3 + ~(-1 << v9) - 251) >> v9) + 1;
    if (HIWORD(v13))
    {
      v10 = 4;
    }

    else
    {
      if (v13 < 0x100)
      {
        v14 = 1;
      }

      else
      {
        v14 = 2;
      }

      if (v13 >= 2)
      {
        v10 = v14;
      }

      else
      {
        v10 = 0;
      }
    }
  }

  else
  {
    v10 = 1;
  }

  if (a2 > 0xFB)
  {
    v11 = a2 - 252;
    if (v8 < 4)
    {
      v12 = (v11 >> v9) + 1;
      if (v6 != -1)
      {
        v15 = v11 & ~(-1 << v9);
        bzero(a1, v8);
        if (v8 == 3)
        {
          *a1 = v15;
          a1[2] = BYTE2(v15);
        }

        else if (v8 == 2)
        {
          *a1 = v15;
        }

        else
        {
          *a1 = v11;
        }
      }
    }

    else
    {
      bzero(a1, v6 + 1);
      *a1 = v11;
      v12 = 1;
    }

    switch(v10)
    {
      case 1:
        a1[v8] = v12;
        break;
      case 2:
        *&a1[v8] = v12;
        break;
      case 3:
LABEL_39:
        __break(1u);
        break;
      case 4:
        *&a1[v8] = v12;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v10)
    {
      case 1:
        a1[v8] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_28;
      case 2:
        *&a1[v8] = 0;
        goto LABEL_27;
      case 3:
        goto LABEL_39;
      case 4:
        *&a1[v8] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_28;
      default:
LABEL_27:
        if (a2)
        {
LABEL_28:
          a1[v6] = -a2;
        }

        break;
    }
  }
}