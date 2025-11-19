void HE.SerializedEvaluationKey.encryptionParams.getter(_BYTE *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

_BYTE *HE.SerializedEvaluationKey.init(encryptionParams:galoisKey:relinKey:)@<X0>(_BYTE *result@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = result[1];
  v5 = *a2;
  v6 = *a3;
  *a4 = *result;
  *(a4 + 1) = v4;
  *(a4 + 8) = v5;
  *(a4 + 16) = v6;
  return result;
}

uint64_t HE.SerializedEvaluationKey.init(config:secretKey:scheme:)@<X0>(char *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = *(a1 + 1);
  v8 = a1[16];
  v10 = *a2;
  v9 = a2[1];
  LOBYTE(v17[0]) = *a1;
  BYTE1(v17[0]) = v6;
  _s12ParamContextCMa();
  swift_allocObject();
  v11 = sub_1C0D14150(v17);
  if (v3)
  {
    sub_1C0CF448C(v10, v9);
  }

  v13 = v11;
  v17[0] = v10;
  v17[1] = v9;

  v14 = sub_1C0D51B84(v17, v13);

  if (*(v7 + 16))
  {

    sub_1C0D78BFC();

    sub_1C0D615B8(v13, v7, v14, v17);

    v15 = v17[0];
    if (!v8)
    {
      goto LABEL_8;
    }
  }

  else
  {

    v15 = 0;
    if (!v8)
    {
LABEL_8:

      v16 = 0;
      goto LABEL_9;
    }
  }

  result = sub_1C0D61224(v13, v14, v17);
  v16 = v17[0];
LABEL_9:
  *a3 = v5;
  *(a3 + 1) = v6;
  *(a3 + 8) = v15;
  *(a3 + 16) = v16;
  return result;
}

uint64_t sub_1C0D3CC30(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
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

uint64_t sub_1C0D3CC8C(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t PEC.PlaintextPacking.init(rawValue:)@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 3;
  if (result < 3)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

unint64_t sub_1C0D3CD10()
{
  result = qword_1EBE6DC60;
  if (!qword_1EBE6DC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE6DC60);
  }

  return result;
}

char *sub_1C0D3CD98(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v13 = MEMORY[0x1E69E7CC0];
    result = sub_1C0CF7C90(0, v3, 0);
    v4 = v13;
    v7 = (a1 + 32);
    while (1)
    {
      v9 = *v7++;
      v8 = v9;
      if ((v9 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (HIDWORD(v8))
      {
        goto LABEL_11;
      }

      v11 = *(v13 + 16);
      v10 = *(v13 + 24);
      if (v11 >= v10 >> 1)
      {
        result = sub_1C0CF7C90((v10 > 1), v11 + 1, 1);
      }

      *(v13 + 16) = v11 + 1;
      *(v13 + 4 * v11 + 32) = v8;
      if (!--v3)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_11:
    __break(1u);
  }

  else
  {
LABEL_8:
    result = *(a2 + 24);
    if (result)
    {
      *(v4 + 16);
      v12 = cche_ciphertext_coeff_decompose_nptexts();

      return v12;
    }
  }

  __break(1u);
  return result;
}

void *sub_1C0D3CEA0(void *result, uint64_t a2, uint64_t a3)
{
  if (a2 > 0xFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if ((a3 | a2) < 0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (a3 <= 0xFFFFFFFFLL)
  {
    v3 = result;
    v4 = result[4];
    v5 = cche_ciphertext_sizeof();
    type metadata accessor for HE.ObjectStorage();
    v6 = swift_allocObject();
    v6[2] = v3;
    v7 = swift_slowAlloc();
    v6[3] = v7;
    v6[4] = v7 + v5;
    return v6;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1C0D3CF34(char *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (!*(a1 + 2))
  {
    goto LABEL_33;
  }

  v9 = a2;
  v5 = a1;
  v8 = a1 + 32;
  v7 = *(*(a1 + 4) + 16);
  if (a3)
  {
    v12 = *(v7 + 32);
    v9 = cche_param_ctx_ciphertext_ctx_nmoduli();
  }

  v13 = *(a5 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  v29 = v9;
  v30 = v7;
  v27 = v5;
  if (v13)
  {
    v31 = MEMORY[0x1E69E7CC0];

    v6 = &v31;
    sub_1C0CF7C90(0, v13, 0);
    v9 = 32;
    v10 = v31;
    do
    {
      v14 = *(a5 + v9);
      if ((v14 & 0x8000000000000000) != 0)
      {
        goto LABEL_31;
      }

      if (HIDWORD(v14))
      {
        goto LABEL_32;
      }

      v31 = v10;
      v7 = *(v10 + 2);
      v15 = *(v10 + 3);
      v5 = (v7 + 1);
      if (v7 >= v15 >> 1)
      {
        v6 = &v31;
        sub_1C0CF7C90((v15 > 1), v7 + 1, 1);
        v10 = v31;
      }

      *(v10 + 2) = v5;
      *&v10[4 * v7 + 32] = v14;
      v9 += 8;
      --v13;
    }

    while (v13);

    v5 = v27;
    v9 = v29;
    v7 = v30;
    v6 = MEMORY[0x1E69E7CC0];
  }

  else
  {

    v10 = MEMORY[0x1E69E7CC0];
  }

  v16 = qword_1EBE6CB78;

  if (v16 != -1)
  {
    goto LABEL_34;
  }

  while (1)
  {
    v17 = sub_1C0D3CEA0(v7, v9, qword_1EBE72CC0);
    v18 = *(v5 + 2);
    if (v18)
    {
      v31 = v6;

      sub_1C0D78BFC();
      result = sub_1C0CF7CF0(0, v18, 0);
      v6 = v31;
      while (1)
      {
        v20 = *(*v8 + 24);
        if (!v20)
        {
          goto LABEL_38;
        }

        v31 = v6;
        v22 = *(v6 + 2);
        v21 = *(v6 + 3);
        v5 = (v22 + 1);
        if (v22 >= v21 >> 1)
        {
          result = sub_1C0CF7CF0((v21 > 1), v22 + 1, 1);
          v6 = v31;
        }

        *(v6 + 2) = v5;
        *&v6[8 * v22 + 32] = v20;
        v8 += 8;
        if (!--v18)
        {
          v9 = v29;
          v7 = v30;
          if (!v17[3])
          {
            goto LABEL_30;
          }

          goto LABEL_21;
        }
      }
    }

    result = sub_1C0D78BFC();
    if (v17[3])
    {
      break;
    }

LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    swift_once();
  }

LABEL_21:
  if (v9 < 0)
  {
    __break(1u);
    goto LABEL_36;
  }

  v23 = *(v6 + 2);
  if ((v23 | v9) >> 32)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (a4 < 0)
  {
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    return result;
  }

  v24 = *(v7 + 32);
  *(v10 + 2);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C0CF52F4(0, v23, 0, v6);
  }

  v25 = cche_ciphertext_coeff_compose();

  swift_bridgeObjectRelease_n();

  if (v25)
  {
    sub_1C0CF8DE0();
    swift_allocError();
    *v26 = v25;
    *(v26 + 4) = 0;
    swift_willThrow();
  }

  return v17;
}

id sub_1C0D3D2A4(void *a1, void *a2, unint64_t a3, unint64_t a4, void *a5, int a6, unint64_t a7, void *a8, char a9)
{
  v124 = a8;
  v123 = a5;
  v15 = sub_1C0D786CC();
  v122 = *(v15 - 8);
  v16 = v122[8];
  MEMORY[0x1EEE9AC00](v15);
  v121 = &v111 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1C0D19C94(a6, a7, a9);
  v20 = result;
  if (a9)
  {
    v21 = v19;
    a4 = sub_1C0D3E478(a1, a2, a3, a4, v123, a6, a7, v124, 1u);
    sub_1C0CF448C(v20, v21);
    return a4;
  }

  v22 = a1;
  v117 = v15;
  v118 = a2;
  v119 = result;
  v120 = v19;
  if (a6 < 2u)
  {
    v23 = v118;
    a4 = sub_1C0D13834(v124, v118);
    if (a6)
    {
      v116 = v22;
      sub_1C0D7896C();
      sub_1C0D42E90(&qword_1ED9076B0, MEMORY[0x1E69665E8]);
      v24 = v121;
      sub_1C0D786EC();
      v25 = sub_1C0D786BC();
      v26 = v122[1];
      v27 = v117;
      v26(v24, v117);
      v122 = [objc_allocWithZone(MEMORY[0x1E6999648]) initWithGeneratorForCP_];
      sub_1C0D786EC();
      v28 = sub_1C0D786BC();
      v26(v24, v27);
      v29 = [objc_allocWithZone(MEMORY[0x1E6999648]) initWithGeneratorForCP_];
      v30 = v124;
      v31 = sub_1C0D13834(v124, v29);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D6D8, &qword_1C0D7C4B0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1C0D7B690;
      *(inited + 32) = v23;
      *(inited + 40) = a4;
      v33 = v23;
      a4 = a4;
      v34 = v30;
      v35 = v30;
      v36 = v119;
      v37 = v120;
      v38 = v134;
      sub_1C0D1EAA0(&v125, v35, v31, v119, v120, inited, 0);
      if (v38)
      {
        sub_1C0CF448C(v36, v37);

        return a4;
      }

      v84 = v39;

      v134 = 0;
      v85 = v125;
      v86 = v123;
      v87 = v36;
      v88 = sub_1C0D13834(v123, v122);
      v89 = sub_1C0D13834(v86, v84);
      v121 = v85;
      v118 = v88;
      v124 = v89;
      v90 = v134;
      sub_1C0D1FCCC(v87, v37, v31, v84, v85, v88, v89, 0);
      if (!v90)
      {
        v134 = 0;
        v101 = v91;
        v102 = sub_1C0D30290(v91, v34);
        v103 = sub_1C0D2C114(v86, v102);
        sub_1C0CF448C(v87, v37);

        v104 = v116;
        *v116 = v101;
        v104[1] = v103;
        return a4;
      }

      sub_1C0CF448C(v87, v37);

      v100 = &v135;
LABEL_29:

      return a4;
    }

LABEL_17:
    sub_1C0CF448C(v119, v120);
    *v22 = 0;
    v22[1] = 0;
    return a4;
  }

  if (a6 != 2)
  {
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  result = sub_1C0D07698(1868983881, 0xE400000000000000);
  if (a4 >> 60 == 15)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v41 = result;
  v42 = v40;
  v43 = a4;
  v44 = a4 >> 62;
  v45 = a3;
  v116 = a1;
  if ((a4 >> 62) > 1)
  {
    if (v44 == 2)
    {
      v48 = *(a3 + 16);
      v47 = *(a3 + 24);
      v46 = v47 - v48;
      if (__OFSUB__(v47, v48))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    else
    {
      v46 = 0;
    }
  }

  else if (v44)
  {
    if (__OFSUB__(HIDWORD(a3), a3))
    {
      goto LABEL_32;
    }

    v46 = HIDWORD(a3) - a3;
  }

  else
  {
    v46 = BYTE6(a4);
  }

  v49 = sub_1C0D053E8(v46, 2);
  v51 = v50;
  v129 = v41;
  v130 = v42;
  a4 = MEMORY[0x1E6969080];
  v127 = MEMORY[0x1E6969080];
  v128 = MEMORY[0x1E6969078];
  v125 = v49;
  v126 = v50;
  v52 = __swift_project_boxed_opaque_existential_1(&v125, MEMORY[0x1E6969080]);
  v54 = *v52;
  v53 = v52[1];
  sub_1C0CF6468(v41, v42);
  sub_1C0CF6468(v49, v51);
  v55 = v134;
  sub_1C0D4268C(v54, v53);
  sub_1C0CF448C(v49, v51);
  sub_1C0CF448C(v41, v42);
  __swift_destroy_boxed_opaque_existential_1(&v125);
  v56 = v129;
  v57 = v130;
  v131 = v129;
  v132 = v130;
  v127 = a4;
  v128 = MEMORY[0x1E6969078];
  v125 = v45;
  v126 = v43;
  v58 = __swift_project_boxed_opaque_existential_1(&v125, a4);
  v59 = *v58;
  v60 = v58[1];
  sub_1C0CF6468(v56, v57);
  sub_1C0D134D0(v45, v43);
  sub_1C0D4268C(v59, v60);
  sub_1C0CF448C(v56, v57);
  __swift_destroy_boxed_opaque_existential_1(&v125);
  v62 = v131;
  v61 = v132;
  v63 = v119;
  v64 = v120;
  v65 = sub_1C0D0E898(v131, v132, v119, v120);
  if (v55)
  {
    sub_1C0CF448C(v63, v64);
    sub_1C0CF448C(v62, v61);
    return a4;
  }

  v113 = v62;
  v114 = v61;
  v134 = 0;
  v115 = v65;
  v112 = sub_1C0D302E8(v124, v65);
  result = [v112 inverseModOrder];
  if (result)
  {
    v66 = result;
    v67 = v118;
    v111 = sub_1C0D13834(result, v118);

    sub_1C0D7896C();
    sub_1C0D42E90(&qword_1ED9076B0, MEMORY[0x1E69665E8]);
    v68 = v121;
    sub_1C0D786EC();
    v69 = sub_1C0D786BC();
    v70 = v122[1];
    v71 = v117;
    v70(v68, v117);
    v124 = [objc_allocWithZone(MEMORY[0x1E6999648]) initWithGeneratorForCP_];
    sub_1C0D786EC();
    v72 = sub_1C0D786BC();
    v70(v68, v71);
    v73 = [objc_allocWithZone(MEMORY[0x1E6999648]) initWithGeneratorForCP_];
    v74 = v112;
    v75 = sub_1C0D13834(v112, v73);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D6D8, &qword_1C0D7C4B0);
    v76 = swift_initStackObject();
    *(v76 + 16) = xmmword_1C0D7B690;
    v77 = v111;
    *(v76 + 32) = v111;
    *(v76 + 40) = v67;
    v78 = v67;
    a4 = v77;
    v79 = v74;
    v122 = v75;
    v80 = v119;
    v81 = v120;
    v82 = v134;
    sub_1C0D1EAA0(&v125, v74, v75, v119, v120, v76, 0);
    if (!v82)
    {
      v92 = v83;

      v93 = v125;
      v94 = v123;
      v95 = v80;
      v96 = sub_1C0D13834(v123, v124);
      v97 = sub_1C0D13834(v94, v92);
      v118 = v93;
      v98 = v93;
      v99 = v96;
      v121 = v97;
      sub_1C0D1FCCC(v95, v81, v122, v92, v98, v96, v97, 0);
      v106 = v105;
      v107 = sub_1C0D30290(v105, v79);
      v134 = 0;
      v108 = v107;
      v109 = sub_1C0D2C114(v94, v107);
      sub_1C0CF448C(v95, v120);
      sub_1C0CF448C(v113, v114);

      v110 = v116;
      *v116 = v106;
      v110[1] = v109;
      return a4;
    }

    sub_1C0CF448C(v80, v81);
    sub_1C0CF448C(v113, v114);

    v100 = &v133;
    goto LABEL_29;
  }

LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_1C0D3DDA4(unint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, int a7, unint64_t a8, void *a9, unsigned __int8 a10)
{
  v80 = a5;
  v81 = a6;
  v71 = a3;
  v72 = a4;
  v79 = a2;
  v88 = a1;
  v67 = sub_1C0D789FC();
  v66 = *(v67 - 8);
  v12 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v67);
  v65 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1C0D7866C();
  v69 = *(v14 - 8);
  v70 = v14;
  v15 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v68 = &v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_1C0D786CC();
  v17 = *(v78 - 1);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v78);
  v20 = &v64 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1C0D78AEC();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v64 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C0D78ABC();
  v26 = sub_1C0D78AAC();
  v28 = v27;
  (*(v22 + 8))(v25, v21);
  if (v28 >> 60 == 15)
  {
    __break(1u);
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v73 = a10;
  v75 = a7;
  v76 = a8;
  v29 = sub_1C0D19C94(a7, a8, a10 & 1);
  v31 = v30;
  v86 = v26;
  v87 = v28;
  v84 = MEMORY[0x1E6969080];
  v85 = MEMORY[0x1E6969078];
  v82 = v29;
  v83 = v30;
  v32 = __swift_project_boxed_opaque_existential_1(&v82, MEMORY[0x1E6969080]);
  v33 = *v32;
  v34 = v32[1];
  sub_1C0D134D0(v26, v28);
  sub_1C0CF6468(v29, v31);
  v35 = v77;
  sub_1C0D4268C(v33, v34);
  sub_1C0CF448C(v29, v31);
  sub_1C0D13830(v26, v28);
  __swift_destroy_boxed_opaque_existential_1(&v82);
  v37 = v86;
  v36 = v87;
  v38 = v79;
  sub_1C0D3F7B4(v88, v79, v86, v87);
  if (!v35)
  {
    v40 = v39;
    v74 = v37;
    v77 = v36;
    sub_1C0D7896C();
    sub_1C0D42E90(&qword_1ED9076B0, MEMORY[0x1E69665E8]);
    sub_1C0D786EC();
    v41 = sub_1C0D786BC();
    (*(v17 + 8))(v20, v78);
    v42 = [objc_allocWithZone(MEMORY[0x1E6999650]) initWithRandomScalarInGroup_];
    v44 = v80;
    v43 = v81;
    if (v42)
    {
      v45 = v42;
      v46 = v73 & 1;
      v47 = v40;
      v48 = v75;
      v78 = v40;
      v49 = v76;
      v50 = sub_1C0D3D2A4(&v82, v47, v80, v81, v42, v75, v76, a9, v73 & 1);

      sub_1C0D42DFC(v82, v83);
      v51 = sub_1C0D19EF0(v88, v38, v44, v43, v50, v49, v48, v46);
      v53 = v52;
      sub_1C0D42E90(&qword_1ED9076A8, MEMORY[0x1E6966630]);
      v54 = v65;
      v55 = v67;
      sub_1C0D7863C();
      sub_1C0CF6468(v51, v53);
      sub_1C0D208E4(v51, v53);
      sub_1C0CF448C(v51, v53);
      v56 = v50;
      v57 = v68;
      sub_1C0D7862C();
      sub_1C0CF448C(v51, v53);
      (*(v66 + 8))(v54, v55);
      v58 = v70;
      v84 = v70;
      v85 = sub_1C0D42E90(&qword_1ED9076C0, MEMORY[0x1E6966408]);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v82);
      v60 = v69;
      (*(v69 + 16))(boxed_opaque_existential_1, v57, v58);
      __swift_project_boxed_opaque_existential_1(&v82, v84);
      sub_1C0D7819C();
      (*(v60 + 8))(v57, v58);
      v61 = v86;
      v62 = v87;
      __swift_destroy_boxed_opaque_existential_1(&v82);
      LOBYTE(v45) = sub_1C0D04660(v71, v72, v61, v62);
      sub_1C0CF448C(v61, v62);
      sub_1C0CF448C(v74, v77);

      return v45 & 1;
    }

    goto LABEL_6;
  }

LABEL_7:
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1C0D3E478(void *a1, void *a2, unint64_t a3, unint64_t a4, void *a5, int a6, unint64_t a7, void *a8, unsigned __int8 a9)
{
  v107 = a8;
  v100 = a5;
  v110 = a4;
  v121 = a3;
  v108 = a2;
  v12 = a6;
  v13 = sub_1C0D786CC();
  v14 = *(v13 - 8);
  v15 = v14[8];
  MEMORY[0x1EEE9AC00](v13);
  v105 = &v97 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1C0D78AEC();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  result = MEMORY[0x1EEE9AC00](v17);
  v22 = &v97 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v12 > 1)
  {
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v102 = v14;
  v103 = v13;
  v101 = a1;
  LODWORD(v104) = a9;
  LODWORD(v106) = a6;
  v23 = sub_1C0D19C94(a6, a7, a9 & 1);
  v25 = v24;
  sub_1C0D78ABC();
  v26 = sub_1C0D78AAC();
  v28 = v27;
  result = (*(v18 + 8))(v22, v17);
  if (v28 >> 60 == 15)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v119 = v26;
  v120 = v28;
  v117 = MEMORY[0x1E6969080];
  v118 = MEMORY[0x1E6969078];
  v115 = v23;
  v116 = v25;
  v29 = MEMORY[0x1E6969080];
  v30 = __swift_project_boxed_opaque_existential_1(&v115, MEMORY[0x1E6969080]);
  v31 = *v30;
  v32 = v30[1];
  sub_1C0D134D0(v26, v28);
  v111 = v25;
  v112 = v23;
  sub_1C0CF6468(v23, v25);
  v33 = v109;
  sub_1C0D4268C(v31, v32);
  v109 = v33;
  sub_1C0D13830(v26, v28);
  result = __swift_destroy_boxed_opaque_existential_1(&v115);
  v35 = v119;
  v34 = v120;
  v36 = v110;
  if (v110 >> 60 != 15)
  {
    v37 = v110 >> 62;
    if ((v110 >> 62) > 1)
    {
      if (v37 != 2)
      {
        result = 0;
        goto LABEL_16;
      }

      v39 = *(v121 + 16);
      v38 = *(v121 + 24);
      result = v38 - v39;
      if (!__OFSUB__(v38, v39))
      {
        goto LABEL_14;
      }

      __break(1u);
    }

    else if (!v37)
    {
      result = BYTE6(v110);
      goto LABEL_16;
    }

    if (!__OFSUB__(HIDWORD(v121), v121))
    {
      result = HIDWORD(v121) - v121;
LABEL_14:
      v36 = v110;
      goto LABEL_16;
    }

    goto LABEL_26;
  }

  v121 = 0;
  result = 0;
  v36 = 0xC000000000000000;
LABEL_16:
  v40 = sub_1C0D053E8(result, 2);
  v42 = v41;
  v113 = v35;
  v114 = v34;
  v117 = v29;
  v43 = MEMORY[0x1E6969078];
  v118 = MEMORY[0x1E6969078];
  v115 = v40;
  v116 = v41;
  v44 = __swift_project_boxed_opaque_existential_1(&v115, v29);
  v45 = *v44;
  v46 = v44[1];
  sub_1C0CF6468(v35, v34);
  sub_1C0CF6468(v40, v42);
  v47 = v109;
  sub_1C0D4268C(v45, v46);
  sub_1C0CF448C(v40, v42);
  __swift_destroy_boxed_opaque_existential_1(&v115);
  v48 = v113;
  v49 = v114;
  v119 = v113;
  v120 = v114;
  v117 = v29;
  v118 = v43;
  v50 = v121;
  v115 = v121;
  v116 = v36;
  v51 = __swift_project_boxed_opaque_existential_1(&v115, v29);
  v52 = *v51;
  v53 = v51[1];
  sub_1C0CF6468(v48, v49);
  sub_1C0CF6468(v50, v36);
  sub_1C0D4268C(v52, v53);
  sub_1C0CF448C(v48, v49);
  __swift_destroy_boxed_opaque_existential_1(&v115);
  v54 = v119;
  v55 = v120;
  v56 = v111;
  v57 = v112;
  v58 = sub_1C0D0E898(v119, v120, v112, v111);
  if (v47)
  {
    sub_1C0CF448C(v54, v55);
    sub_1C0CF448C(v35, v34);
    sub_1C0CF448C(v57, v56);
    return v35;
  }

  v59 = v58;
  v109 = v55;
  v110 = v35;
  v121 = v34;
  v107 = sub_1C0D302E8(v107, v58);
  result = [v107 inverseModOrder];
  if (result)
  {
    v60 = result;
    v61 = v106;
    v35 = sub_1C0D13834(result, v108);

    if (v61)
    {
      v98 = v59;
      sub_1C0D7896C();
      sub_1C0D42E90(&qword_1ED9076B0, MEMORY[0x1E69665E8]);
      v62 = v105;
      sub_1C0D786EC();
      v63 = sub_1C0D786BC();
      v99 = 0;
      v64 = v102[1];
      v102 = v35;
      v65 = v103;
      v64(v62, v103);
      v106 = [objc_allocWithZone(MEMORY[0x1E6999648]) initWithGeneratorForCP_];
      sub_1C0D786EC();
      v66 = sub_1C0D786BC();
      v64(v62, v65);
      v67 = objc_allocWithZone(MEMORY[0x1E6999648]);
      v68 = v111;
      v69 = [v67 initWithGeneratorForCP_];
      v70 = v107;
      v71 = sub_1C0D13834(v107, v69);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D6D8, &qword_1C0D7C4B0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1C0D7B690;
      v73 = v102;
      v74 = v108;
      *(inited + 32) = v102;
      *(inited + 40) = v74;
      v105 = v73;
      v75 = v74;
      v76 = v70;
      v77 = v104;
      v78 = v99;
      sub_1C0D1EAA0(&v115, v70, v71, v112, v68, inited, v104 & 1);
      if (v78)
      {
        sub_1C0CF448C(v54, v109);

        v35 = v68;

        sub_1C0CF448C(v112, v68);
        sub_1C0CF448C(v110, v121);
      }

      else
      {
        v81 = v79;

        v82 = v115;
        v83 = v100;
        v84 = sub_1C0D13834(v100, v106);
        v85 = sub_1C0D13834(v83, v81);
        v86 = v77 & 1;
        v87 = v111;
        v88 = v71;
        v107 = v84;
        v108 = v82;
        v89 = v82;
        v90 = v85;
        sub_1C0D1FCCC(v112, v111, v71, v81, v89, v84, v85, v86);
        v91 = v98;
        v104 = v92;
        v93 = sub_1C0D30290(v92, v76);
        v105 = v90;
        v94 = v93;
        v95 = sub_1C0D2C114(v100, v93);
        sub_1C0CF448C(v54, v109);

        sub_1C0CF448C(v112, v87);
        sub_1C0CF448C(v110, v121);

        v96 = v101;
        *v101 = v104;
        v96[1] = v95;
        return v102;
      }
    }

    else
    {
      sub_1C0CF448C(v54, v109);
      sub_1C0CF448C(v110, v121);
      sub_1C0CF448C(v57, v56);

      v80 = v101;
      *v101 = 0;
      v80[1] = 0;
    }

    return v35;
  }

LABEL_28:
  __break(1u);
  return result;
}

unint64_t sub_1C0D3ECE4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, int a7)
{
  v8 = v7;
  v46 = a7;
  v49 = *MEMORY[0x1E69E9840];
  v45 = sub_1C0D786CC();
  v15 = *(v45 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v45);
  v44 = v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3 < 1)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if ((a3 * a6) >> 64 != (a3 * a6) >> 63)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v18 = sub_1C0D416D0(a1, a2, a4, a5, a3 * a6, MEMORY[0x1E6966620], MEMORY[0x1E69663E0], &qword_1EBE6DCB0, MEMORY[0x1E69663E0], MEMORY[0x1E69663D8], qword_1EBE6C9D8, MEMORY[0x1E6966620], MEMORY[0x1E6966618], sub_1C0D3C2C8, qword_1EBE6D7B8, MEMORY[0x1E69663D0]);
  if (v7)
  {
    goto LABEL_14;
  }

  v41[1] = 0;
  v20 = v19;
  v42 = a3;
  v21 = v18;
  v22 = sub_1C0D78DEC();
  v23 = v21;
  v24 = v20;
  v8 = v22;
  v25 = 0;
  v48 = v22;
  v43 = (v15 + 8);
  do
  {
    v26 = v25 * a6;
    if ((v25 * a6) >> 64 != (v25 * a6) >> 63)
    {
      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    if (__OFADD__(v26, a6))
    {
      goto LABEL_18;
    }

    if (v26 + a6 < v26)
    {
      goto LABEL_19;
    }

    v41[2] = v8;
    v27 = v23;
    v28 = v24;
    v29 = sub_1C0D7835C();
    v8 = v30;
    v47 = 0;
    sub_1C0D7884C();
    sub_1C0CF6468(v29, v8);
    sub_1C0CF6468(v29, v8);
    sub_1C0D42E90(&qword_1EBE6D428, MEMORY[0x1E6966580]);
    v31 = v44;
    sub_1C0D786EC();
    v32 = sub_1C0D786BC();
    (*v43)(v31, v45);
    v33 = objc_allocWithZone(MEMORY[0x1E6999650]);
    v34 = sub_1C0D7830C();
    v35 = [v33 initWithData:v34 inGroup:v32 reduction:v46 & 1 corecryptoError:&v47];

    sub_1C0CF448C(v29, v8);
    v36 = sub_1C0CF448C(v29, v8);
    if (!v35)
    {
      v37 = v47;
      sub_1C0CF8DE0();
      swift_allocError();
      *v38 = v37;
      *(v38 + 4) = 0;
      swift_willThrow();
      sub_1C0CF448C(v27, v28);
      sub_1C0CF448C(v29, v8);

      goto LABEL_14;
    }

    MEMORY[0x1C68E3BD0](v36);
    if (*(v48 + 16) >= *(v48 + 24) >> 1)
    {
      sub_1C0D78C0C();
    }

    ++v25;
    sub_1C0D78C3C();
    sub_1C0CF448C(v29, v8);
    v8 = v48;
    v24 = v28;
    v23 = v27;
  }

  while (v42 != v25);
  sub_1C0CF448C(v27, v28);
  if (*(v8 + 16) != v42)
  {
LABEL_22:
    __break(1u);
  }

LABEL_14:
  v39 = *MEMORY[0x1E69E9840];
  return v8;
}

unint64_t sub_1C0D3F16C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, int a7)
{
  v8 = v7;
  v46 = a7;
  v49 = *MEMORY[0x1E69E9840];
  v45 = sub_1C0D786CC();
  v15 = *(v45 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v45);
  v44 = v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3 < 1)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if ((a3 * a6) >> 64 != (a3 * a6) >> 63)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v18 = sub_1C0D416D0(a1, a2, a4, a5, a3 * a6, MEMORY[0x1E6966630], MEMORY[0x1E6966408], &qword_1ED9076B8, MEMORY[0x1E6966408], MEMORY[0x1E6966400], &qword_1ED9076A8, MEMORY[0x1E6966630], MEMORY[0x1E6966628], sub_1C0D208E4, &qword_1ED9076C0, MEMORY[0x1E69663F8]);
  if (v7)
  {
    goto LABEL_14;
  }

  v41[1] = 0;
  v20 = v19;
  v42 = a3;
  v21 = v18;
  v22 = sub_1C0D78DEC();
  v23 = v21;
  v24 = v20;
  v8 = v22;
  v25 = 0;
  v48 = v22;
  v43 = (v15 + 8);
  do
  {
    v26 = v25 * a6;
    if ((v25 * a6) >> 64 != (v25 * a6) >> 63)
    {
      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    if (__OFADD__(v26, a6))
    {
      goto LABEL_18;
    }

    if (v26 + a6 < v26)
    {
      goto LABEL_19;
    }

    v41[2] = v8;
    v27 = v23;
    v28 = v24;
    v29 = sub_1C0D7835C();
    v8 = v30;
    v47 = 0;
    sub_1C0D7896C();
    sub_1C0CF6468(v29, v8);
    sub_1C0CF6468(v29, v8);
    sub_1C0D42E90(&qword_1ED9076B0, MEMORY[0x1E69665E8]);
    v31 = v44;
    sub_1C0D786EC();
    v32 = sub_1C0D786BC();
    (*v43)(v31, v45);
    v33 = objc_allocWithZone(MEMORY[0x1E6999650]);
    v34 = sub_1C0D7830C();
    v35 = [v33 initWithData:v34 inGroup:v32 reduction:v46 & 1 corecryptoError:&v47];

    sub_1C0CF448C(v29, v8);
    v36 = sub_1C0CF448C(v29, v8);
    if (!v35)
    {
      v37 = v47;
      sub_1C0CF8DE0();
      swift_allocError();
      *v38 = v37;
      *(v38 + 4) = 0;
      swift_willThrow();
      sub_1C0CF448C(v27, v28);
      sub_1C0CF448C(v29, v8);

      goto LABEL_14;
    }

    MEMORY[0x1C68E3BD0](v36);
    if (*(v48 + 16) >= *(v48 + 24) >> 1)
    {
      sub_1C0D78C0C();
    }

    ++v25;
    sub_1C0D78C3C();
    sub_1C0CF448C(v29, v8);
    v8 = v48;
    v24 = v28;
    v23 = v27;
  }

  while (v42 != v25);
  sub_1C0CF448C(v27, v28);
  if (*(v8 + 16) != v42)
  {
LABEL_22:
    __break(1u);
  }

LABEL_14:
  v39 = *MEMORY[0x1E69E9840];
  return v8;
}

void sub_1C0D3F5F4(unint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v9 = a4 >> 62;
  if ((a4 >> 62) <= 1)
  {
    if (!v9)
    {
      v10 = BYTE6(a4);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v9 != 2)
  {
LABEL_23:
    __break(1u);
    return;
  }

  v12 = *(a3 + 16);
  v11 = *(a3 + 24);
  v13 = __OFSUB__(v11, v12);
  v10 = v11 - v12;
  if (v13)
  {
    __break(1u);
LABEL_8:
    LODWORD(v10) = HIDWORD(a3) - a3;
    if (__OFSUB__(HIDWORD(a3), a3))
    {
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    v10 = v10;
  }

LABEL_10:
  if (v10 < 1)
  {
    goto LABEL_23;
  }

  sub_1C0D7884C();
  sub_1C0D42E90(&qword_1EBE6D428, MEMORY[0x1E6966580]);
  v14 = sub_1C0D786DC();
  v15 = sub_1C0D3ECE4(a1, a2, 2, a3, a4, v14, 1);
  if (v4)
  {
    return;
  }

  v16 = v15;
  v17 = *(v15 + 16);
  if (!v17)
  {
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v18 = *(v15 + 32);
  v19 = [v18 mapToCurve_SSWU_RandomOracle];
  if (!v19)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v20 = v19;

  if (v17 > *(v16 + 16))
  {
    goto LABEL_19;
  }

  v21 = *(v16 + 32 + 8 * v17 - 8);

  v22 = [v21 mapToCurve_SSWU_RandomOracle];
  if (!v22)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v23 = v22;

  sub_1C0D1388C(v20, v23);
}

void sub_1C0D3F7B4(unint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v9 = a4 >> 62;
  if ((a4 >> 62) <= 1)
  {
    if (!v9)
    {
      v10 = BYTE6(a4);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v9 != 2)
  {
LABEL_23:
    __break(1u);
    return;
  }

  v12 = *(a3 + 16);
  v11 = *(a3 + 24);
  v13 = __OFSUB__(v11, v12);
  v10 = v11 - v12;
  if (v13)
  {
    __break(1u);
LABEL_8:
    LODWORD(v10) = HIDWORD(a3) - a3;
    if (__OFSUB__(HIDWORD(a3), a3))
    {
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    v10 = v10;
  }

LABEL_10:
  if (v10 < 1)
  {
    goto LABEL_23;
  }

  sub_1C0D7896C();
  sub_1C0D42E90(&qword_1ED9076B0, MEMORY[0x1E69665E8]);
  v14 = sub_1C0D786DC();
  v15 = sub_1C0D3F16C(a1, a2, 2, a3, a4, v14, 1);
  if (v4)
  {
    return;
  }

  v16 = v15;
  v17 = *(v15 + 16);
  if (!v17)
  {
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v18 = *(v15 + 32);
  v19 = [v18 mapToCurve_SSWU_RandomOracle];
  if (!v19)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v20 = v19;

  if (v17 > *(v16 + 16))
  {
    goto LABEL_19;
  }

  v21 = *(v16 + 32 + 8 * v17 - 8);

  v22 = [v21 mapToCurve_SSWU_RandomOracle];
  if (!v22)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v23 = v22;

  sub_1C0D1388C(v20, v23);
}

id TDMClient.__allocating_init(TID:)(unint64_t a1, unint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = sub_1C0D42990(a1, a2);
  sub_1C0CF448C(a1, a2);
  return v6;
}

id TDMClient.init(TID:)(unint64_t a1, unint64_t a2)
{
  v4 = sub_1C0D42990(a1, a2);
  sub_1C0CF448C(a1, a2);
  return v4;
}

id sub_1C0D3FA78()
{
  result = [*(v0 + OBJC_IVAR____TtC16CryptoKitPrivate9TDMClient_be) serializedPublicKey_];
  if (result)
  {
    v2 = result;
    v3 = sub_1C0D7832C();

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_1C0D3FB88(unint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, void *a5, unint64_t a6, uint64_t a7, unint64_t a8)
{
  v90 = a7;
  v91 = a8;
  v88 = a3;
  v89 = a4;
  v99 = *MEMORY[0x1E69E9840];
  v14 = sub_1C0D786CC();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = v83 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a6 >> 62;
  v87 = a1;
  if ((a6 >> 62) > 1)
  {
    v21 = v17;
    v22 = 0;
    if (v20 != 2)
    {
      goto LABEL_10;
    }

    v24 = a5[2];
    v23 = a5[3];
    v22 = v23 - v24;
    if (!__OFSUB__(v23, v24))
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v20)
  {
    v21 = v17;
    v22 = BYTE6(a6);
    goto LABEL_10;
  }

  if (__OFSUB__(HIDWORD(a5), a5))
  {
    goto LABEL_33;
  }

  v21 = v17;
  v22 = HIDWORD(a5) - a5;
LABEL_10:
  v85 = a2;
  v86 = v9;
  v93 = a5;
  v95 = a6;
  v84 = v8;
  v25 = objc_opt_self();
  sub_1C0D7896C();
  v26 = sub_1C0D42E90(&qword_1ED9076B0, MEMORY[0x1E69665E8]);
  sub_1C0D786EC();
  v27 = sub_1C0D786BC();
  v28 = *(v15 + 8);
  v29 = (v15 + 8);
  v30 = v28;
  v28(v19, v21);
  v94 = v25;
  v31 = [v25 groupOrderByteCountForCP_];
  if (v31 < 0)
  {
    __break(1u);
    goto LABEL_30;
  }

  if (v31 + 0x4000000000000000 < 0)
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
  }

  if (v22 != 2 * v31)
  {
    sub_1C0D20BA4();
    swift_allocError();
    *v70 = 1;
    swift_willThrow();
    goto LABEL_28;
  }

  v32 = v93;
  sub_1C0CF6468(v93, v95);
  sub_1C0D786EC();
  v33 = sub_1C0D786BC();
  v34 = v21;
  v30(v19, v21);
  v35 = [v94 groupOrderByteCountForCP_];
  if (v35 < 0)
  {
    goto LABEL_31;
  }

  sub_1C0D01560(v35, v32, v95, &v97);
  v37 = v97;
  v36 = v98;
  v96 = 0;
  sub_1C0CF6468(v97, v98);
  v83[1] = v26;
  sub_1C0D786EC();
  v38 = sub_1C0D786BC();
  v30(v19, v34);
  v39 = objc_allocWithZone(MEMORY[0x1E6999650]);
  v92 = v34;
  v40 = v39;
  v41 = sub_1C0D7830C();
  v42 = [v40 initWithData:v41 inGroup:v38 reduction:0 corecryptoError:&v96];

  sub_1C0CF448C(v37, v36);
  if (!v42)
  {
    v71 = v96;
    sub_1C0CF8DE0();
    swift_allocError();
    *v72 = v71;
    *(v72 + 4) = 0;
    swift_willThrow();
    sub_1C0CF448C(v37, v36);
    goto LABEL_28;
  }

  v83[0] = v42;
  sub_1C0CF448C(v37, v36);
  v43 = v93;
  v44 = v95;
  sub_1C0CF6468(v93, v95);
  sub_1C0D786EC();
  v45 = sub_1C0D786BC();
  v30(v19, v92);
  v46 = [v94 groupOrderByteCountForCP_];
  v94 = v29;
  if (v46 < 0)
  {
    goto LABEL_32;
  }

  sub_1C0D403E4(v46, v43, v44, &v97);
  v47 = v97;
  v48 = v98;
  v96 = 0;
  sub_1C0CF6468(v97, v98);
  sub_1C0D786EC();
  v49 = sub_1C0D786BC();
  v30(v19, v92);
  v50 = objc_allocWithZone(MEMORY[0x1E6999650]);
  v51 = sub_1C0D7830C();
  v95 = v30;
  v52 = v51;
  v53 = [v50 initWithData:v51 inGroup:v49 reduction:0 corecryptoError:&v96];

  sub_1C0CF448C(v47, v48);
  if (!v53)
  {
    v73 = v96;
    sub_1C0CF8DE0();
    swift_allocError();
    *v74 = v73;
    *(v74 + 4) = 0;
    swift_willThrow();
    sub_1C0CF448C(v47, v48);

    goto LABEL_28;
  }

  sub_1C0CF448C(v47, v48);
  LODWORD(v97) = 0;
  v54 = v90;
  v55 = v91;
  sub_1C0CF6468(v90, v91);
  sub_1C0CF6468(v54, v55);
  v93 = v83[0];
  v56 = v53;
  sub_1C0D786EC();
  v57 = sub_1C0D786BC();
  v95(v19, v92);
  v58 = objc_allocWithZone(MEMORY[0x1E6999648]);
  v59 = sub_1C0D7830C();
  v60 = [v58 initFromPublicKeyBytes:v59 inGroup:v57 compressed:1 corecryptoError:&v97];

  sub_1C0CF448C(v54, v55);
  v83[0] = v60;
  if (!v60)
  {
    v75 = v97;
    sub_1C0CF8DE0();
    swift_allocError();
    *v76 = v75;
    *(v76 + 4) = 0;
    swift_willThrow();
    sub_1C0CF448C(v54, v55);

    v77 = v93;
LABEL_27:

    goto LABEL_28;
  }

  sub_1C0CF448C(v54, v55);
  LODWORD(v97) = 0;
  v62 = v88;
  v61 = v89;
  sub_1C0CF6468(v88, v89);
  sub_1C0CF6468(v62, v61);
  sub_1C0D786EC();
  v63 = sub_1C0D786BC();
  v95(v19, v92);
  v64 = objc_allocWithZone(MEMORY[0x1E6999648]);
  v19 = sub_1C0D7830C();
  v65 = [v64 initFromPublicKeyBytes:v19 inGroup:v63 compressed:1 corecryptoError:&v97];

  sub_1C0CF448C(v62, v61);
  if (!v65)
  {
    v78 = v97;
    sub_1C0CF8DE0();
    swift_allocError();
    *v79 = v78;
    *(v79 + 4) = 0;
    swift_willThrow();
    sub_1C0CF448C(v62, v61);
    v80 = v93;

    goto LABEL_27;
  }

  sub_1C0CF448C(v62, v61);
  v66 = v93;

  v67 = v83[0];
  v68 = v86;
  sub_1C0D1BA14(*(v84 + OBJC_IVAR____TtC16CryptoKitPrivate9TDMClient_input), *(v84 + OBJC_IVAR____TtC16CryptoKitPrivate9TDMClient_input + 8), v87, v85, *(v84 + OBJC_IVAR____TtC16CryptoKitPrivate9TDMClient_blind), v65, v66, v56, v83[0], *(v84 + OBJC_IVAR____TtC16CryptoKitPrivate9TDMClient_oprfClient), *(v84 + OBJC_IVAR____TtC16CryptoKitPrivate9TDMClient_oprfClient + 8), *(v84 + OBJC_IVAR____TtC16CryptoKitPrivate9TDMClient_oprfClient + 16));
  if (!v68)
  {
    v19 = v69;
  }

LABEL_28:
  v81 = *MEMORY[0x1E69E9840];
  return v19;
}

uint64_t sub_1C0D403E4@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  v5 = a2;
  v7 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v7 == 2)
    {
      a2 = *(a2 + 16);
      v8 = *(v5 + 24);
    }

    else
    {
      a2 = 0;
      v8 = 0;
    }
  }

  else
  {
    if (v7)
    {
      a2 = a2;
    }

    else
    {
      a2 = 0;
    }

    if (v7)
    {
      v8 = v5 >> 32;
    }

    else
    {
      v8 = BYTE6(a3);
    }
  }

  v9 = -result;
  v10 = sub_1C0D428BC(v8, a2, v5, a3);
  if (v10 > 0 || v10 <= v9)
  {
    result = sub_1C0D42858(v8, v9, v5, a3);
    if (v7 <= 1)
    {
      if (!v7)
      {
        v11 = BYTE6(a3);
        goto LABEL_27;
      }

      goto LABEL_26;
    }

    if (v7 == 3)
    {
      v11 = 0;
      goto LABEL_27;
    }

LABEL_24:
    v11 = *(v5 + 24);
    goto LABEL_27;
  }

  if (v7 > 1)
  {
    if (v7 != 2)
    {
      goto LABEL_28;
    }

    result = *(v5 + 16);
    goto LABEL_24;
  }

  if (!v7)
  {
    result = 0;
    v11 = BYTE6(a3);
    goto LABEL_27;
  }

  result = v5;
LABEL_26:
  v11 = v5 >> 32;
LABEL_27:
  if (v11 >= result)
  {
LABEL_28:
    v12 = sub_1C0D782DC();
    v14 = v13;
    result = sub_1C0CF448C(v5, a3);
    *a4 = v12;
    a4[1] = v14;
    return result;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t TDMServerEvaluation.proof.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC16CryptoKitPrivate19TDMServerEvaluation_proof);
  sub_1C0CF6468(v1, *(v0 + OBJC_IVAR____TtC16CryptoKitPrivate19TDMServerEvaluation_proof + 8));
  return v1;
}

id sub_1C0D40838(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = (a1 + *a3);
  v4 = *v3;
  v5 = v3[1];
  sub_1C0CF6468(*v3, v5);
  v6 = sub_1C0D7830C();
  sub_1C0CF448C(v4, v5);

  return v6;
}

uint64_t TDMServerEvaluation.evaluatedElement.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC16CryptoKitPrivate19TDMServerEvaluation_evaluatedElement);
  sub_1C0CF6468(v1, *(v0 + OBJC_IVAR____TtC16CryptoKitPrivate19TDMServerEvaluation_evaluatedElement + 8));
  return v1;
}

id TDMServerEvaluation.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TDMServer.init()()
{
  v1 = v0;
  v2 = sub_1C0D786CC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C0D7896C();
  sub_1C0D42E90(&qword_1ED9076B0, MEMORY[0x1E69665E8]);
  sub_1C0D786EC();
  v7 = sub_1C0D786BC();
  (*(v3 + 8))(v6, v2);
  result = [objc_allocWithZone(MEMORY[0x1E6999650]) initWithRandomScalarInGroup_];
  if (result)
  {
    v9 = result;
    *&v1[OBJC_IVAR____TtC16CryptoKitPrivate9TDMServer_secret] = result;
    v10 = &v1[OBJC_IVAR____TtC16CryptoKitPrivate9TDMServer_oprfServer];
    *v10 = 1;
    *(v10 + 1) = 4;
    *(v10 + 2) = result;
    v10[24] = 1;
    v11 = type metadata accessor for TDMServer();
    v13.receiver = v1;
    v13.super_class = v11;
    v12 = v9;
    return objc_msgSendSuper2(&v13, sel_init);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1C0D40BA0()
{
  v1 = sub_1C0D786CC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + OBJC_IVAR____TtC16CryptoKitPrivate9TDMServer_oprfServer + 16);
  sub_1C0D7896C();
  sub_1C0D42E90(&qword_1ED9076B0, MEMORY[0x1E69665E8]);
  sub_1C0D786EC();
  v7 = sub_1C0D786BC();
  (*(v2 + 8))(v5, v1);
  v8 = [objc_allocWithZone(MEMORY[0x1E6999648]) initWithGeneratorForCP_];
  v9 = sub_1C0D13834(v6, v8);

  result = [v9 serializedPublicKey_];
  if (result)
  {
    v11 = result;
    v12 = sub_1C0D7832C();

    return v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C0D40E0C(uint64_t a1, unint64_t a2)
{
  v69 = *MEMORY[0x1E69E9840];
  v4 = sub_1C0D786CC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = 0;
  sub_1C0D7896C();
  sub_1C0CF6468(a1, a2);
  sub_1C0CF6468(a1, a2);
  v58 = sub_1C0D42E90(&qword_1ED9076B0, MEMORY[0x1E69665E8]);
  sub_1C0D786EC();
  v9 = sub_1C0D786BC();
  v10 = *(v5 + 8);
  v60 = v4;
  v10(v8, v4);
  v11 = objc_allocWithZone(MEMORY[0x1E6999648]);
  v12 = sub_1C0D7830C();
  v13 = [v11 initFromPublicKeyBytes:v12 inGroup:v9 compressed:1 corecryptoError:&v62];

  sub_1C0CF448C(a1, a2);
  if (!v13)
  {
    v17 = v62;
    sub_1C0CF8DE0();
    swift_allocError();
    *v23 = v17;
    *(v23 + 4) = 0;
    swift_willThrow();
    sub_1C0CF448C(a1, a2);
    goto LABEL_8;
  }

  v57 = v13;
  sub_1C0CF448C(a1, a2);
  v14 = &v59[OBJC_IVAR____TtC16CryptoKitPrivate9TDMServer_oprfServer];
  v15 = v59[OBJC_IVAR____TtC16CryptoKitPrivate9TDMServer_oprfServer];
  v16 = *&v59[OBJC_IVAR____TtC16CryptoKitPrivate9TDMServer_oprfServer + 8];
  v59 = *&v59[OBJC_IVAR____TtC16CryptoKitPrivate9TDMServer_oprfServer + 16];
  v17 = v14[24];
  sub_1C0D786EC();
  v18 = sub_1C0D786BC();
  v10(v8, v60);
  v19 = [objc_allocWithZone(MEMORY[0x1E6999650]) initWithRandomScalarInGroup_];
  if (!v19)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v20 = v19;
  if (!((v15 != 1) | v17 & 1))
  {
    sub_1C0D20BA4();
    swift_allocError();
    *v24 = 2;
    swift_willThrow();

    goto LABEL_8;
  }

  v53 = v17;
  v21 = v56;
  v17 = v57;
  v22 = sub_1C0D3D2A4(&v63, v57, 0, 0x8000000000000uLL, v19, v15, v16, v59, v53);

  if (v21)
  {

LABEL_8:
    v25 = *MEMORY[0x1E69E9840];
    return v17;
  }

  v27 = v63;
  if (!v63)
  {
    goto LABEL_15;
  }

  v28 = v64;
  v29 = [v63 serializedBigEndianScalar];
  if (!v29)
  {
    goto LABEL_17;
  }

  v30 = v29;
  v31 = sub_1C0D7832C();
  v60 = v32;

  v33 = [v28 serializedBigEndianScalar];
  if (!v33)
  {
    goto LABEL_17;
  }

  v34 = v33;
  v58 = v28;
  v59 = v27;
  v35 = sub_1C0D7832C();
  v37 = v36;

  v38 = v60;
  v67 = v31;
  v68 = v60;
  v65 = MEMORY[0x1E6969080];
  v66 = MEMORY[0x1E6969078];
  v63 = v35;
  v64 = v37;
  v39 = __swift_project_boxed_opaque_existential_1(&v63, MEMORY[0x1E6969080]);
  v40 = *v39;
  v41 = v39[1];
  v56 = v31;
  sub_1C0CF6468(v31, v38);
  sub_1C0CF6468(v35, v37);
  sub_1C0D4268C(v40, v41);
  __swift_destroy_boxed_opaque_existential_1(&v63);
  v43 = v67;
  v42 = v68;
  v44 = [v22 serializedPublicKey_];
  v55 = v22;
  if (v44)
  {
    v45 = v44;
    v46 = sub_1C0D7832C();
    v48 = v47;

    v49 = type metadata accessor for TDMServerEvaluation();
    v50 = objc_allocWithZone(v49);
    v51 = &v50[OBJC_IVAR____TtC16CryptoKitPrivate19TDMServerEvaluation_proof];
    *v51 = v43;
    v51[1] = v42;
    v52 = &v50[OBJC_IVAR____TtC16CryptoKitPrivate19TDMServerEvaluation_evaluatedElement];
    *v52 = v46;
    v52[1] = v48;
    sub_1C0CF6468(v43, v42);
    sub_1C0CF6468(v46, v48);
    v61.receiver = v50;
    v61.super_class = v49;
    v17 = objc_msgSendSuper2(&v61, sel_init);

    sub_1C0CF448C(v35, v37);
    sub_1C0CF448C(v56, v60);
    sub_1C0CF448C(v46, v48);
    sub_1C0CF448C(v43, v42);
    goto LABEL_8;
  }

LABEL_16:
  __break(1u);
LABEL_17:
  result = sub_1C0D78EBC();
  __break(1u);
  return result;
}

id sub_1C0D41648(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1C0D416D0(unint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, int64_t a5, uint64_t (*a6)(void), uint64_t (*a7)(void), unint64_t *a8, void (*a9)(uint64_t), uint64_t a10, unint64_t *a11, void (*a12)(uint64_t), uint64_t a13, void (*a14)(void, void, char *), unint64_t *a15, uint64_t a16)
{
  v168 = a1;
  v176 = *MEMORY[0x1E69E9840];
  v22 = a6(0);
  v165 = *(v22 - 8);
  v166 = v22;
  v23 = *(v165 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v163 = &v144 - v24;
  v25 = a7(0);
  v164 = *(v25 - 8);
  v26 = *(v164 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v161 = &v144 - v27;
  sub_1C0D42E90(a8, a9);
  v162 = v25;
  v150 = sub_1C0D7899C();
  v28 = ceil(a5 / v150);
  if ((*&v28 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_56;
  }

  if (v28 <= -9.22337204e18)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  if (v28 >= 9.22337204e18)
  {
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v160 = v28;
  if (v28 <= 255)
  {
    v29 = a4 >> 62;
    *(&v156 + 1) = a9;
    *&v156 = a2;
    if ((a4 >> 62) <= 1)
    {
      if (!v29)
      {
        v30 = BYTE6(a4);
        goto LABEL_16;
      }

LABEL_13:
      if (__OFSUB__(HIDWORD(a3), a3))
      {
LABEL_59:
        __break(1u);
        goto LABEL_60;
      }

      v30 = HIDWORD(a3) - a3;
      goto LABEL_16;
    }

    if (v29 == 2)
    {
      v32 = *(a3 + 16);
      v31 = *(a3 + 24);
      v30 = v31 - v32;
      if (__OFSUB__(v31, v32))
      {
        __break(1u);
        goto LABEL_13;
      }
    }

    else
    {
      v30 = 0;
    }

LABEL_16:
    v154 = a16;
    v153 = a15;
    v158 = a14;
    v157 = a11;
    v33 = sub_1C0D053E8(v30, 1);
    v35 = v34;
    *&v175 = a3;
    *(&v175 + 1) = a4;
    v173 = MEMORY[0x1E6969080];
    v174 = MEMORY[0x1E6969078];
    *&v172 = v33;
    *(&v172 + 1) = v34;
    v36 = __swift_project_boxed_opaque_existential_1(&v172, MEMORY[0x1E6969080]);
    v38 = *v36;
    v37 = v36[1];
    sub_1C0CF6468(a3, a4);
    sub_1C0CF6468(v33, v35);
    v39 = v167;
    sub_1C0D4268C(v38, v37);
    sub_1C0CF448C(v33, v35);
    __swift_destroy_boxed_opaque_existential_1(&v172);
    v159 = v175;
    v157 = sub_1C0D42E90(v157, a12);
    v40 = sub_1C0D7860C();
    *&v172 = sub_1C0D0F990(v40);
    *(&v172 + 1) = v41;
    sub_1C0D42424(&v172, 0);
    v42 = v172;
    v149 = a5;
    v43 = sub_1C0D053E8(a5, 2);
    v45 = v44;
    v171 = v42;
    v173 = MEMORY[0x1E6969080];
    v174 = MEMORY[0x1E6969078];
    v46 = v168;
    v47 = v156;
    *&v172 = v168;
    *(&v172 + 1) = v156;
    v48 = __swift_project_boxed_opaque_existential_1(&v172, MEMORY[0x1E6969080]);
    v49 = *v48;
    v50 = v48[1];
    v148 = v42;
    sub_1C0CF6468(v42, *(&v42 + 1));
    sub_1C0CF6468(v46, v47);
    sub_1C0D4268C(v49, v50);
    __swift_destroy_boxed_opaque_existential_1(&v172);
    v51 = v171;
    v175 = v171;
    v173 = MEMORY[0x1E6969080];
    v52 = MEMORY[0x1E6969078];
    v174 = MEMORY[0x1E6969078];
    *&v172 = v43;
    *(&v172 + 1) = v45;
    v53 = MEMORY[0x1E6969080];
    v54 = __swift_project_boxed_opaque_existential_1(&v172, MEMORY[0x1E6969080]);
    v55 = *v54;
    v56 = v54[1];
    sub_1C0CF6468(v51, *(&v51 + 1));
    v146 = v43;
    v147 = v45;
    sub_1C0CF6468(v43, v45);
    sub_1C0D4268C(v55, v56);
    sub_1C0CF448C(v51, *(&v51 + 1));
    __swift_destroy_boxed_opaque_existential_1(&v172);
    v57 = v175;
    v58 = sub_1C0D053E8(0, 1);
    v60 = v59;
    v171 = v57;
    v61 = v53;
    v173 = v53;
    v174 = v52;
    v62 = v52;
    *&v172 = v58;
    *(&v172 + 1) = v60;
    v63 = v61;
    v64 = __swift_project_boxed_opaque_existential_1(&v172, v61);
    v66 = *v64;
    v65 = v64[1];
    sub_1C0CF6468(v57, *(&v57 + 1));
    sub_1C0CF6468(v58, v60);
    sub_1C0D4268C(v66, v65);
    sub_1C0CF448C(v58, v60);
    sub_1C0CF448C(v57, *(&v57 + 1));
    __swift_destroy_boxed_opaque_existential_1(&v172);
    v67 = v171;
    v175 = v171;
    v173 = v63;
    v174 = v62;
    v68 = v159;
    v172 = v159;
    v69 = __swift_project_boxed_opaque_existential_1(&v172, v63);
    v70 = *v69;
    v71 = v69[1];
    sub_1C0CF6468(v67, *(&v67 + 1));
    sub_1C0CF6468(v68, *(&v68 + 1));
    sub_1C0D4268C(v70, v71);
    sub_1C0CF448C(v67, *(&v67 + 1));
    __swift_destroy_boxed_opaque_existential_1(&v172);
    v72 = v175;
    v73 = v163;
    v74 = v166;
    sub_1C0D7863C();
    sub_1C0CF6468(v72, *(&v72 + 1));
    v158(v72, *(&v72 + 1), v73);
    v145 = v72;
    sub_1C0CF448C(v72, *(&v72 + 1));
    v75 = v161;
    sub_1C0D7862C();
    v76 = *(v165 + 8);
    v165 += 8;
    v155 = v76;
    v76(v73, v74);
    v77 = v162;
    v173 = v162;
    v78 = sub_1C0D42E90(v153, *(&v156 + 1));
    v174 = v78;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v172);
    v80 = v164;
    v81 = *(v164 + 16);
    v153 = (v164 + 16);
    v152 = v81;
    v81(boxed_opaque_existential_1, v75, v77);
    __swift_project_boxed_opaque_existential_1(&v172, v173);
    v154 = v78;
    sub_1C0D7819C();
    v82 = v39;
    v83 = *(v80 + 8);
    v164 = v80 + 8;
    v151 = v83;
    v83(v75, v77);
    v156 = v175;
    __swift_destroy_boxed_opaque_existential_1(&v172);
    v175 = xmmword_1C0D7BAB0;
    if (v160 >= 1)
    {
      v144 = *(&v72 + 1);
      v84 = 1;
      while (1)
      {
        if (v84 == 1)
        {
          v85 = *(&v156 + 1);
          v86 = v156;
          sub_1C0CF6468(v156, *(&v156 + 1));
        }

        else
        {
          v87 = v175;
          sub_1C0CF6468(v175, *(&v175 + 1));
          sub_1C0D403E4(v150, v87, *(&v87 + 1), &v172);
          v88 = v172;
          v86 = sub_1C0D732F0(v156, *(&v156 + 1), v172, *(&v172 + 1));
          v85 = v89;
          sub_1C0CF448C(v88, *(&v88 + 1));
        }

        v90 = sub_1C0D053E8(v84, 1);
        v92 = v91;
        *&v170 = v86;
        *(&v170 + 1) = v85;
        v93 = MEMORY[0x1E6969080];
        v173 = MEMORY[0x1E6969080];
        v94 = MEMORY[0x1E6969078];
        v174 = MEMORY[0x1E6969078];
        *&v172 = v90;
        *(&v172 + 1) = v91;
        v95 = __swift_project_boxed_opaque_existential_1(&v172, MEMORY[0x1E6969080]);
        v96 = v85;
        v167 = v86;
        v168 = v85;
        v97 = v86;
        v98 = *v95;
        v99 = v95[1];
        sub_1C0CF6468(v97, v96);
        sub_1C0CF6468(v90, v92);
        sub_1C0D4268C(v98, v99);
        v100 = v82;
        sub_1C0CF448C(v90, v92);
        __swift_destroy_boxed_opaque_existential_1(&v172);
        v101 = v170;
        v171 = v170;
        v173 = v93;
        v174 = v94;
        v102 = *(&v159 + 1);
        v103 = v159;
        v172 = v159;
        v104 = __swift_project_boxed_opaque_existential_1(&v172, v93);
        v105 = *v104;
        v106 = v104[1];
        sub_1C0CF6468(v103, v102);
        sub_1C0CF6468(v101, *(&v101 + 1));
        sub_1C0D4268C(v105, v106);
        sub_1C0CF448C(v101, *(&v101 + 1));
        __swift_destroy_boxed_opaque_existential_1(&v172);
        v107 = v171;
        v108 = v163;
        v109 = v166;
        sub_1C0D7863C();
        sub_1C0CF6468(v107, *(&v107 + 1));
        v158(v107, *(&v107 + 1), v108);
        sub_1C0CF448C(v107, *(&v107 + 1));
        v110 = v161;
        sub_1C0D7862C();
        sub_1C0CF448C(v107, *(&v107 + 1));
        v155(v108, v109);
        v111 = v162;
        v173 = v162;
        v174 = v154;
        v112 = __swift_allocate_boxed_opaque_existential_1(&v172);
        v152(v112, v110, v111);
        __swift_project_boxed_opaque_existential_1(&v172, v173);
        sub_1C0D7819C();
        v82 = v100;
        v151(v110, v111);
        v113 = v171;
        __swift_destroy_boxed_opaque_existential_1(&v172);
        sub_1C0D7834C();
        sub_1C0CF448C(v113, *(&v113 + 1));
        sub_1C0CF448C(v167, v168);
        if (v160 == v84)
        {
          break;
        }

        v114 = __OFADD__(v84++, 1);
        if (v114)
        {
          __break(1u);
          break;
        }
      }

      v115 = v175;
      sub_1C0CF6468(v175, *(&v175 + 1));
      sub_1C0D01560(v149, v115, *(&v115 + 1), &v171);
      v173 = MEMORY[0x1E6969080];
      v174 = MEMORY[0x1E6969078];
      v172 = v171;
      v116 = __swift_project_boxed_opaque_existential_1(&v172, MEMORY[0x1E6969080]);
      v117 = *v116;
      v118 = v116[1];
      v119 = v118 >> 62;
      if ((v118 >> 62) > 1)
      {
        if (v119 != 2)
        {
          memset(v169, 0, 14);
          v121 = v169;
          v120 = v169;
          goto LABEL_52;
        }

        v122 = *(v117 + 16);
        v123 = *(v117 + 24);
        v124 = sub_1C0D7812C();
        if (v124)
        {
          v125 = sub_1C0D7815C();
          if (__OFSUB__(v122, v125))
          {
LABEL_62:
            __break(1u);
            goto LABEL_63;
          }

          v124 += v122 - v125;
        }

        v114 = __OFSUB__(v123, v122);
        v126 = v123 - v122;
        if (!v114)
        {
          v127 = sub_1C0D7814C();
          if (v127 >= v126)
          {
            v128 = v126;
          }

          else
          {
            v128 = v127;
          }

          v129 = (v128 + v124);
          if (v124)
          {
            v120 = v129;
          }

          else
          {
            v120 = 0;
          }

          v121 = v124;
          goto LABEL_52;
        }

LABEL_61:
        __break(1u);
        goto LABEL_62;
      }

      if (!v119)
      {
        v169[0] = *v116;
        LOWORD(v169[1]) = v118;
        BYTE2(v169[1]) = BYTE2(v118);
        BYTE3(v169[1]) = BYTE3(v118);
        BYTE4(v169[1]) = BYTE4(v118);
        BYTE5(v169[1]) = BYTE5(v118);
        v120 = v169 + BYTE6(v118);
        v121 = v169;
LABEL_52:
        sub_1C0D20850(v121, v120, &v170);
        v140 = v145;
        v141 = v144;
LABEL_53:
        sub_1C0CF448C(v140, v141);
        sub_1C0CF448C(v156, *(&v156 + 1));
        sub_1C0CF448C(v159, *(&v159 + 1));
        sub_1C0CF448C(v146, v147);
        sub_1C0CF448C(v148, *(&v148 + 1));
        sub_1C0CF448C(v115, *(&v115 + 1));
        v25 = v170;
        __swift_destroy_boxed_opaque_existential_1(&v172);
        goto LABEL_54;
      }

      v130 = v117;
      v131 = v117 >> 32;
      v132 = v131 - v130;
      if (v131 >= v130)
      {
        v133 = sub_1C0D7812C();
        if (!v133)
        {
LABEL_44:
          v135 = v144;
          v136 = sub_1C0D7814C();
          if (v136 >= v132)
          {
            v137 = v132;
          }

          else
          {
            v137 = v136;
          }

          v138 = &v133[v137];
          if (v133)
          {
            v139 = v138;
          }

          else
          {
            v139 = 0;
          }

          sub_1C0D20850(v133, v139, &v170);
          v140 = v145;
          v141 = v135;
          goto LABEL_53;
        }

        v134 = sub_1C0D7815C();
        if (!__OFSUB__(v130, v134))
        {
          v133 += v130 - v134;
          goto LABEL_44;
        }

LABEL_63:
        __break(1u);
      }

LABEL_60:
      __break(1u);
      goto LABEL_61;
    }

    goto LABEL_58;
  }

  sub_1C0D42E3C();
  swift_allocError();
  swift_willThrow();
LABEL_54:
  v142 = *MEMORY[0x1E69E9840];
  return v25;
}

uint64_t *sub_1C0D42424(uint64_t *result, int a2)
{
  v3 = result;
  v24 = *MEMORY[0x1E69E9840];
  v5 = *result;
  v4 = result[1];
  v6 = v4 >> 62;
  if ((v4 >> 62) <= 1)
  {
    if (v6)
    {

      sub_1C0CF448C(v5, v4);
      __b = v5;
      v23 = v4 & 0x3FFFFFFFFFFFFFFFLL;
      *v3 = xmmword_1C0D7BAB0;
      sub_1C0CF448C(0, 0xC000000000000000);
      result = sub_1C0D6F9B8(&__b, a2);
      v7 = __b;
      v8 = v23 | 0x4000000000000000;
    }

    else
    {
      sub_1C0CF448C(v5, v4);
      __b = v5;
      LOWORD(v23) = v4;
      BYTE2(v23) = BYTE2(v4);
      BYTE3(v23) = BYTE3(v4);
      BYTE4(v23) = BYTE4(v4);
      BYTE5(v23) = BYTE5(v4);
      BYTE6(v23) = BYTE6(v4);
      result = memset(&__b, a2, BYTE6(v4));
      v7 = __b;
      v8 = v23 | ((WORD2(v23) | (BYTE6(v23) << 16)) << 32);
    }

    *v3 = v7;
    v3[1] = v8;
    goto LABEL_14;
  }

  if (v6 != 2)
  {
LABEL_14:
    v20 = *MEMORY[0x1E69E9840];
    return result;
  }

  v9 = *result;

  sub_1C0CF448C(v5, v4);
  __b = v5;
  v23 = v4 & 0x3FFFFFFFFFFFFFFFLL;
  *v3 = xmmword_1C0D7BAB0;
  sub_1C0CF448C(0, 0xC000000000000000);
  sub_1C0D7823C();
  v10 = v23;
  v11 = *(__b + 16);
  v12 = *(__b + 24);
  result = sub_1C0D7812C();
  if (result)
  {
    v13 = result;
    v14 = sub_1C0D7815C();
    v15 = v11 - v14;
    if (__OFSUB__(v11, v14))
    {
      __break(1u);
    }

    else
    {
      v16 = __OFSUB__(v12, v11);
      v17 = v12 - v11;
      if (!v16)
      {
        v18 = sub_1C0D7814C();
        if (v18 >= v17)
        {
          v19 = v17;
        }

        else
        {
          v19 = v18;
        }

        result = memset(v13 + v15, a2, v19);
        *v3 = __b;
        v3[1] = v10 | 0x8000000000000000;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C0D4268C(uint64_t a1, unint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
LABEL_8:
      result = sub_1C0D782CC();
      goto LABEL_9;
    }

    v3 = *(a1 + 16);
    v4 = *(a1 + 24);
  }

  else
  {
    if (!v2)
    {
      goto LABEL_8;
    }

    v3 = a1;
    v4 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  result = sub_1C0D427C4(v3, v4);
LABEL_9:
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1C0D427C4(uint64_t a1, uint64_t a2)
{
  result = sub_1C0D7812C();
  if (!result || (result = sub_1C0D7815C(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_1C0D7814C();
      return sub_1C0D782CC();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C0D42858(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = __OFADD__(a1, a2);
  result = a1 + a2;
  if (v4)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    return result;
  }

  v6 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v6 == 2)
    {
      v8 = *(a3 + 16);
      v7 = *(a3 + 24);
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }
  }

  else
  {
    v7 = BYTE6(a4);
    if (v6)
    {
      v7 = a3 >> 32;
      v8 = a3;
    }

    else
    {
      v8 = 0;
    }
  }

  if (v7 < result || result < v8)
  {
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_1C0D428BC(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v4 == 2)
    {
      v6 = *(a3 + 16);
      v5 = *(a3 + 24);
    }

    else
    {
      v5 = 0;
      v6 = 0;
    }
  }

  else
  {
    v5 = a3 >> 32;
    if (v4)
    {
      v6 = a3;
    }

    else
    {
      v5 = BYTE6(a4);
      v6 = 0;
    }
  }

  if (v5 < result || v6 > result)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v8 = *(a3 + 16);
      v7 = *(a3 + 24);
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }
  }

  else
  {
    v7 = BYTE6(a4);
    if (v4)
    {
      v7 = a3 >> 32;
      v8 = a3;
    }

    else
    {
      v8 = 0;
    }
  }

  if (v7 < a2 || v8 > a2)
  {
    goto LABEL_22;
  }

  v9 = __OFSUB__(a2, result);
  result = a2 - result;
  if (v9)
  {
LABEL_23:
    __break(1u);
  }

  return result;
}

unint64_t sub_1C0D42970(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result <= 0xFF)
  {
    return 0;
  }

  __break(1u);
  return result;
}

id sub_1C0D42990(unint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_1C0D786CC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = &v2[OBJC_IVAR____TtC16CryptoKitPrivate9TDMClient_input];
  *v11 = a1;
  v11[1] = a2;
  v12 = &v2[OBJC_IVAR____TtC16CryptoKitPrivate9TDMClient_oprfClient];
  *v12 = 1;
  *(v12 + 1) = 4;
  v12[16] = 1;
  sub_1C0D7896C();
  sub_1C0CF6468(a1, a2);
  sub_1C0D42E90(&qword_1ED9076B0, MEMORY[0x1E69665E8]);
  sub_1C0D786EC();
  v13 = sub_1C0D786BC();
  (*(v7 + 8))(v10, v6);
  result = [objc_allocWithZone(MEMORY[0x1E6999650]) initWithRandomScalarInGroup_];
  if (result)
  {
    v15 = result;
    v16 = sub_1C0D1AAB4(&v21, a1, a2, result, 1u, 4uLL, 1);

    v17 = v21;
    *&v3[OBJC_IVAR____TtC16CryptoKitPrivate9TDMClient_blind] = v16;
    *&v3[OBJC_IVAR____TtC16CryptoKitPrivate9TDMClient_be] = v17;
    v18 = type metadata accessor for TDMClient();
    v20.receiver = v3;
    v20.super_class = v18;
    return objc_msgSendSuper2(&v20, sel_init);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C0D42BF0()
{
  v0 = *MEMORY[0x1E69E9840];
  *MEMORY[0x1E69E9840];
  return 0;
}

void sub_1C0D42DFC(void *a1, void *a2)
{
  if (a1)
  {
  }
}

unint64_t sub_1C0D42E3C()
{
  result = qword_1EBE6DCA8;
  if (!qword_1EBE6DCA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE6DCA8);
  }

  return result;
}

uint64_t sub_1C0D42E90(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t SPAKE2.Spake2Error.hashValue.getter()
{
  v1 = *v0;
  sub_1C0D78FFC();
  MEMORY[0x1C68E3FF0](v1);
  return sub_1C0D7902C();
}

uint64_t SPAKE2.CipherSuite.hashValue.getter()
{
  sub_1C0D78FFC();
  MEMORY[0x1C68E3FF0](0);
  return sub_1C0D7902C();
}

uint64_t SPAKE2.WL.w0.getter()
{
  v1 = *v0;
  sub_1C0CF6468(*v0, *(v0 + 8));
  return v1;
}

uint64_t SPAKE2.WL.L.getter()
{
  v1 = *(v0 + 16);
  sub_1C0CF6468(v1, *(v0 + 24));
  return v1;
}

uint64_t sub_1C0D4304C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(uint64_t, uint64_t, uint64_t)@<X4>, void *a6@<X8>)
{
  v9 = *(a3 + 24);
  result = v9 + a4;
  if (!__OFADD__(v9, a4))
  {
    v11 = a5(result, a1, a2);
    v13 = v12;
    v15 = v14;
    v17 = v16;
    result = sub_1C0D73074(v11, v12, v14, v16);
    if (result)
    {
      v18 = result;
      v19 = sub_1C0CF3BC0(result, 0);
      result = sub_1C0D50B94(v20, v19 + 4, v18, v11, v13, v15, v17);
      if (result == v18)
      {
LABEL_6:
        *a6 = v19;
        return result;
      }

      __break(1u);
    }

    v19 = MEMORY[0x1E69E7CC0];
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C0D43118(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, _DWORD *a7, uint64_t *a8)
{
  v11 = result;
  v27 = *MEMORY[0x1E69E9840];
  v12 = a6 >> 62;
  if ((a6 >> 62) > 1)
  {
    if (v12 != 2)
    {
      if (result)
      {
        result = ccrng();
        if (result)
        {
          v24 = a8[4];
          v25 = *a8;
          goto LABEL_27;
        }

        goto LABEL_36;
      }

      goto LABEL_34;
    }

    v15 = *(a5 + 16);
    v16 = sub_1C0D7812C();
    if (v16)
    {
      v17 = sub_1C0D7815C();
      if (__OFSUB__(v15, v17))
      {
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
      }

      v16 += v15 - v17;
    }

    result = sub_1C0D7814C();
    if (!__OFSUB__(*(a5 + 24), *(a5 + 16)))
    {
      if (v16)
      {
        if (v11)
        {
          result = ccrng();
          if (result)
          {
            v18 = a8[4];
            v19 = *a8;
            goto LABEL_27;
          }

          goto LABEL_39;
        }

LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    goto LABEL_29;
  }

  if (!v12)
  {
    if (result)
    {
      result = ccrng();
      if (result)
      {
        v13 = a8[4];
        v14 = *a8;
LABEL_27:
        result = ccspake_generate_L();
        *a7 = result;
        v26 = *MEMORY[0x1E69E9840];
        return result;
      }

      goto LABEL_35;
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (a5 > a5 >> 32)
  {
    __break(1u);
    __break(1u);
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    __break(1u);
    __break(1u);
    goto LABEL_31;
  }

  v20 = sub_1C0D7812C();
  if (v20)
  {
    v21 = sub_1C0D7815C();
    if (__OFSUB__(a5, v21))
    {
      goto LABEL_32;
    }

    v20 += a5 - v21;
  }

  result = sub_1C0D7814C();
  if (__OFSUB__(HIDWORD(a5), a5))
  {
    goto LABEL_30;
  }

  if (!v20)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  if (!v11)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  result = ccrng();
  if (result)
  {
    v22 = a8[4];
    v23 = *a8;
    goto LABEL_27;
  }

LABEL_42:
  __break(1u);
  return result;
}

uint64_t sub_1C0D433D4()
{
  v15[5] = *MEMORY[0x1E69E9840];
  v1 = sub_1C0D78C2C();
  *(v1 + 16) = 4;
  *(v1 + 32) = 0;
  v14[0] = v1;
  v2 = type metadata accessor for SPAKE2.SPAKE2Framer(0);
  v13 = bswap64(*(v0 + *(v2 + 28)));
  sub_1C0CF9D70(&v13, v14);
  v3 = (v0 + *(v2 + 24));
  v4 = v3[1];
  if (v4 >> 60 == 15)
  {
LABEL_17:
    __break(1u);
  }

  v5 = *v3;
  v6 = v4 >> 62;
  if ((v4 >> 62) <= 1)
  {
    if (!v6)
    {
      v7 = BYTE6(v4);
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  if (v6 == 2)
  {
    v9 = *(v5 + 16);
    v8 = *(v5 + 24);
    v7 = v8 - v9;
    if (!__OFSUB__(v8, v9))
    {
LABEL_11:
      sub_1C0CF6468(v5, v4);
      goto LABEL_13;
    }

    __break(1u);
LABEL_9:
    if (__OFSUB__(HIDWORD(v5), v5))
    {
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    v7 = HIDWORD(v5) - v5;
    goto LABEL_11;
  }

  v7 = 0;
LABEL_13:
  if (v7 != *(v14[0] + 16))
  {
    __break(1u);
    goto LABEL_16;
  }

  v15[0] = v14[0];
  v15[1] = v5;
  v15[2] = v4;
  v15[3] = sub_1C0D43594;
  v15[4] = 0;
  sub_1C0D134D0(v5, v4);
  sub_1C0D78BFC();
  v14[1] = sub_1C0D07D8C(v15);
  v14[2] = v10;
  sub_1C0D17E68();
  sub_1C0D7876C();
  sub_1C0D13830(v5, v4);

  v12 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1C0D435A8@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  v23[2] = a3;
  v23[3] = a4;
  v23[0] = a1;
  v23[1] = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBE6DCE8, &unk_1C0D7EF60);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v23 - v10;
  v12 = sub_1C0D786AC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v16, v5, v12);
  sub_1C0D433D4();
  if (v6)
  {
    return (*(v13 + 8))(v16, v12);
  }

  v17 = sub_1C0D7877C();
  (*(*(v17 - 8) + 56))(v11, 0, 1, v17);
  sub_1C0D7874C();
  sub_1C0D13578(v11, qword_1EBE6DCE8, &unk_1C0D7EF60);
  (*(v13 + 8))(v16, v12);
  result = type metadata accessor for SPAKE2.SPAKE2Framer(0);
  v19 = *(result + 28);
  v20 = *(v5 + v19);
  if (v20 == -1)
  {
    sub_1C0D50D78();
    swift_allocError();
    *v21 = 5;
    swift_willThrow();
    v22 = sub_1C0D787CC();
    return (*(*(v22 - 8) + 8))(a5, v22);
  }

  else
  {
    *(v5 + v19) = v20 + 1;
  }

  return result;
}

uint64_t SPAKE2.Prover.init(w0:w1:context:verifierID:proverID:cipherSuite:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, unint64_t a11, uint64_t a12)
{
  v14 = *MEMORY[0x1E69E9840];
  result = sub_1C0D459EC(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, type metadata accessor for SPAKE2.Prover, sub_1C0D49F80);
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t SPAKE2.Prover.init(seed:salt:info:context:verifierID:proverID:cipherSuite:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, size_t a7@<X6>, unint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, unint64_t a11, uint64_t a12, unint64_t a13)
{
  v212 = a5;
  v213 = a6;
  *&v214 = a3;
  *(&v214 + 1) = a4;
  v215 = a2;
  v216 = a1;
  v205 = a9;
  v224 = *MEMORY[0x1E69E9840];
  v207 = sub_1C0D786AC();
  v16 = *(v207 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v207);
  v20 = &v192 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v192 - v21;
  v23 = ccspake_cp_256_rfc();
  if (!v23)
  {
    goto LABEL_81;
  }

  v24 = v23;
  v206 = v13;
  v25 = ccspake_mac_hkdf_hmac_sha256();
  if (!v25)
  {
    goto LABEL_82;
  }

  v26 = v25;
  v208 = a13;
  v210 = a12;
  v211 = a11;
  v209 = a10;
  v27 = ccspake_sizeof_ctx();
  v28 = ccspake_sizeof_w();
  v29 = ccspake_sizeof_point();
  *&v218 = v24;
  *(&v218 + 1) = v26;
  v204 = v27;
  *&v219 = v27;
  *(&v219 + 1) = v28;
  *v220 = v29;
  *&v220[8] = vdupq_n_s64(0x20uLL);
  v30 = v215;
  v31 = v215 >> 62;
  if ((v215 >> 62) > 1)
  {
    if (v31 == 2)
    {
      v33 = *(v216 + 16);
      v32 = *(v216 + 24);
      v34 = __OFSUB__(v32, v33);
      v35 = v32 - v33;
      if (v34)
      {
LABEL_73:
        __break(1u);
        goto LABEL_74;
      }

      if (v35 >= 16)
      {
LABEL_13:
        v200 = v29;
        *&v223 = v216;
        *(&v223 + 1) = v215;
        sub_1C0CF6468(v216, v215);
        sub_1C0D7868C();
        v223 = v214;
        v221 = v212;
        v222 = v213;
        if (v28 + 0x4000000000000000 < 0)
        {
          __break(1u);
        }

        else if (!__OFADD__(2 * v28, 16))
        {
          v203 = a7;
          v202 = a8;
          sub_1C0D789EC();
          sub_1C0D50E20(qword_1EBE6C9D8, MEMORY[0x1E6966620]);
          sub_1C0D17E68();
          sub_1C0D7881C();
          v39 = *(v16 + 8);
          v201 = (v16 + 8);
          v40 = v39(v20, v207);
          v41 = v39;
          MEMORY[0x1EEE9AC00](v40);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D1F0, &qword_1C0D7BFF0);
          v42 = v206;
          v43 = sub_1C0D7867C();
          MEMORY[0x1EEE9AC00](v43);
          sub_1C0D7867C();
          v217 = 0;
          *&v223 = sub_1C0D0F990(v28);
          *(&v223 + 1) = v44;
          sub_1C0D48EC4(&v223, &v217, &v218, 8);
          v45 = v217;
          if (v217)
          {

            a7 = v203;
            v46 = v211;
            if (v45 == -2)
            {
              sub_1C0D50D78();
              swift_allocError();
              *v47 = 0;
            }

            else
            {
              sub_1C0CF8DE0();
              swift_allocError();
              *v61 = v45;
              *(v61 + 4) = 0;
            }

            a8 = v202;
            v30 = v215;
            swift_willThrow();
            sub_1C0CF448C(v223, *(&v223 + 1));
            v41(v22, v207);
            sub_1C0CF448C(v210, v208);
            v37 = v209;
            v38 = v46;
            goto LABEL_25;
          }

          v221 = sub_1C0D0F990(v28);
          v222 = v48;
          sub_1C0D48EC4(&v221, &v217, &v218, 8);
          v49 = v217;
          v50 = v203;
          if (v217 == -2)
          {
            sub_1C0D50D78();
            swift_allocError();
            *v68 = 0;
            v30 = v215;
            v51 = v210;
            v52 = v211;
          }

          else
          {
            v51 = v210;
            v52 = v211;
            if (!v217)
            {
              v198 = v42;
              v41(v22, v207);
              v206 = *(&v223 + 1);
              v27 = v223;
              v28 = v221;
              v53 = v222;
              v54 = type metadata accessor for SPAKE2.Prover(0);
              v55 = *(v54 + 36);
              v22 = type metadata accessor for SPAKE2.SPAKE2Framer(0);
              v30 = *(*(v22 - 1) + 56);
              v56 = v205;
              v196 = v55;
              v30(v205 + v55, 1, 1, v22);
              v195 = *(v54 + 40);
              v30(v56 + v195, 1, 1, v22);
              a7 = v204;
              if ((v204 & 0x8000000000000000) == 0)
              {
                sub_1C0CF6468(v27, v206);
                v207 = v53;
                sub_1C0CF6468(v28, v53);
                v57 = v202;
                v58 = v208;
                v59 = v27;
                if (a7)
                {
                  v60 = sub_1C0D78C2C();
                  *(v60 + 16) = a7;
                  bzero((v60 + 32), a7);
                }

                else
                {
                  v60 = MEMORY[0x1E69E7CC0];
                }

                *v56 = v60;
                LODWORD(v221) = 0;
                v70 = v57 >> 62;
                v201 = v28;
                v199 = v27;
                v204 = v60;
                v197 = v60 + 32;
                if ((v57 >> 62) > 1)
                {
                  if (v70 != 2)
                  {
                    *(&v223 + 6) = 0;
                    *&v223 = 0;
                    v117 = v211;
                    sub_1C0CF6468(v209, v211);
                    v118 = v27;
                    v119 = v206;
                    sub_1C0CF6468(v118, v206);
                    v120 = v207;
                    sub_1C0CF6468(v28, v207);
                    v121 = v210;
                    sub_1C0CF6468(v210, v58);
                    v122 = v203;
                    sub_1C0CF6468(v203, v57);
                    sub_1C0CF6468(v59, v119);
                    sub_1C0CF6468(v28, v120);
                    sub_1C0CF6468(v121, v58);
                    v123 = v209;
                    sub_1C0CF6468(v209, v117);
                    sub_1C0CF6468(v122, v57);
                    sub_1C0CF6468(v59, v206);
                    sub_1C0CF6468(v28, v120);
                    sub_1C0CF6468(v123, v117);
                    sub_1C0CF6468(v121, v58);
                    v124 = v198;
                    sub_1C0D4BBF8(v121, v58, v123, v117, v59, v206, v28, v120, &v221, v197, &v218, v122, v57, &v223, &v223, v121, v58, sub_1C0D49F80);
                    v198 = v124;
                    v125 = v58;
                    v126 = v121;
                    sub_1C0CF448C(v121, v125);
                    v84 = v123;
                    goto LABEL_64;
                  }

                  v86 = v203;
                  v87 = *(v203 + 24);
                  v194 = *(v203 + 16);
                  v193 = v87;
                  v88 = v58;
                  sub_1C0CF6468(v210, v58);
                  v89 = v209;
                  sub_1C0CF6468(v209, v211);
                  v90 = v206;
                  sub_1C0CF6468(v59, v206);
                  v91 = v207;
                  sub_1C0CF6468(v28, v207);
                  sub_1C0CF6468(v86, v57);
                  v92 = v210;
                  sub_1C0CF6468(v210, v88);
                  v93 = v89;
                  v94 = v211;
                  sub_1C0CF6468(v93, v211);
                  sub_1C0CF6468(v59, v90);
                  sub_1C0CF6468(v28, v91);
                  sub_1C0CF6468(v86, v57);
                  sub_1C0CF6468(v59, v90);
                  sub_1C0CF6468(v28, v91);
                  sub_1C0CF6468(v92, v88);
                  v95 = v209;
                  sub_1C0CF6468(v209, v94);
                  sub_1C0CF6468(v86, v57);
                  sub_1C0CF6468(v59, v90);
                  sub_1C0CF6468(v28, v91);
                  sub_1C0CF6468(v95, v94);
                  sub_1C0CF6468(v210, v88);
                  sub_1C0CF6468(v86, v57);
                  v96 = sub_1C0D7812C();
                  if (v96)
                  {
                    v97 = v96;
                    v98 = sub_1C0D7815C();
                    v99 = v194;
                    if (__OFSUB__(v194, v98))
                    {
LABEL_79:
                      __break(1u);
LABEL_80:
                      __break(1u);
LABEL_81:
                      __break(1u);
LABEL_82:
                      __break(1u);
                    }

                    v100 = v194 - v98 + v97;
                    v101 = v207;
                  }

                  else
                  {
                    v100 = 0;
                    v101 = v207;
                    v99 = v194;
                  }

                  v127 = v193 - v99;
                  if (!__OFSUB__(v193, v99))
                  {
                    v128 = v202;
                    v129 = sub_1C0D7814C();
                    if (v129 >= v127)
                    {
                      v130 = v127;
                    }

                    else
                    {
                      v130 = v129;
                    }

                    v131 = v130 + v100;
                    if (v100)
                    {
                      v132 = v131;
                    }

                    else
                    {
                      v132 = 0;
                    }

                    v133 = v206;
                    sub_1C0CF6468(v199, v206);
                    sub_1C0CF6468(v201, v101);
                    v134 = v101;
                    v135 = v209;
                    v136 = v211;
                    sub_1C0CF6468(v209, v211);
                    v72 = v208;
                    sub_1C0CF6468(v210, v208);
                    v137 = v203;
                    sub_1C0CF6468(v203, v128);
                    v190 = v132;
                    v84 = v135;
                    v138 = v133;
                    v78 = v210;
                    v186 = v128;
                    v188 = v100;
                    v139 = v199;
                    v140 = v201;
                    v141 = v198;
                    sub_1C0D4BBF8(v210, v72, v84, v136, v199, v138, v201, v134, &v221, v197, &v218, v137, v186, v188, v190, v210, v72, sub_1C0D49F80);
                    v198 = v141;
                    sub_1C0CF448C(v78, v72);
                    sub_1C0CF448C(v84, v136);
                    sub_1C0CF448C(v139, v138);
                    sub_1C0CF448C(v140, v134);
                    v142 = v202;
                    sub_1C0CF448C(v137, v202);
                    sub_1C0CF448C(v78, v72);
                    sub_1C0CF448C(v84, v136);
                    sub_1C0CF448C(v139, v138);
                    v143 = v201;
                    goto LABEL_62;
                  }
                }

                else
                {
                  if (!v70)
                  {
                    v71 = v203;
                    *&v223 = v203;
                    WORD4(v223) = v57;
                    BYTE10(v223) = BYTE2(v57);
                    BYTE11(v223) = BYTE3(v57);
                    BYTE12(v223) = BYTE4(v57);
                    v72 = v58;
                    v73 = v57;
                    BYTE13(v223) = BYTE5(v57);
                    v194 = &v223 + BYTE6(v57);
                    v74 = v209;
                    sub_1C0CF6468(v209, v211);
                    v75 = v206;
                    sub_1C0CF6468(v27, v206);
                    v76 = v28;
                    v77 = v207;
                    sub_1C0CF6468(v76, v207);
                    v78 = v210;
                    sub_1C0CF6468(v210, v58);
                    sub_1C0CF6468(v71, v73);
                    v79 = v75;
                    sub_1C0CF6468(v59, v75);
                    v80 = v201;
                    v81 = v77;
                    sub_1C0CF6468(v201, v77);
                    sub_1C0CF6468(v78, v72);
                    v82 = v211;
                    sub_1C0CF6468(v74, v211);
                    sub_1C0CF6468(v71, v73);
                    v83 = v199;
                    sub_1C0CF6468(v199, v79);
                    sub_1C0CF6468(v80, v81);
                    v84 = v74;
                    sub_1C0CF6468(v74, v82);
                    sub_1C0CF6468(v78, v72);
                    v85 = v198;
                    sub_1C0D4BBF8(v78, v72, v74, v82, v83, v79, v201, v81, &v221, v197, &v218, v71, v202, &v223, v194, v78, v72, sub_1C0D49F80);
                    v198 = v85;
LABEL_63:
                    v126 = v78;
                    v125 = v72;
                    sub_1C0CF448C(v78, v72);
LABEL_64:
                    sub_1C0CF448C(v84, v211);
                    v158 = v84;
                    v159 = v199;
                    v160 = v206;
                    sub_1C0CF448C(v199, v206);
                    v161 = v201;
                    v162 = v207;
                    sub_1C0CF448C(v201, v207);
                    v163 = v203;
                    v164 = v202;
                    sub_1C0CF448C(v203, v202);
                    sub_1C0CF448C(v126, v125);
                    sub_1C0CF448C(v158, v211);
                    sub_1C0CF448C(v159, v160);
                    sub_1C0CF448C(v161, v162);
                    sub_1C0CF448C(v163, v164);
                    v28 = v204;
                    *v205 = v204;
                    a7 = v160;
                    v165 = v221;
                    v166 = v215;
                    if (v221)
                    {
                      v167 = v199;
                      sub_1C0CF448C(v199, a7);
                      v168 = v201;
                      v169 = v207;
                      sub_1C0CF448C(v201, v207);
                      sub_1C0CF8DE0();
                      swift_allocError();
                      *v170 = v165;
                      *(v170 + 4) = 0;
                      swift_willThrow();
                      sub_1C0CF448C(v212, v213);
                      sub_1C0CF448C(v214, *(&v214 + 1));
                      sub_1C0CF448C(v216, v166);
                      sub_1C0CF448C(v167, a7);
                      sub_1C0CF448C(v168, v169);
                      sub_1C0CF448C(v126, v208);
                      sub_1C0CF448C(v209, v211);
                      v171 = v203;
                      v172 = v202;
                      goto LABEL_69;
                    }

                    v22 = v215;
                    v27 = v199;
                    v30 = v201;
                    *&v223 = sub_1C0D0F990(v200);
                    *(&v223 + 1) = v173;
                    if (swift_isUniquelyReferenced_nonNull_native())
                    {
LABEL_67:
                      sub_1C0D492F4(&v223, &v221, v28 + 32, &v218);
                      v174 = v205;
                      *v205 = v28;
                      v175 = v221;
                      if (!v221)
                      {
                        sub_1C0CF448C(v212, v213);
                        sub_1C0CF448C(v214, *(&v214 + 1));
                        sub_1C0CF448C(v216, v22);
                        sub_1C0CF448C(v27, a7);
                        v181 = v207;
                        sub_1C0CF448C(v30, v207);
                        sub_1C0CF448C(v210, v208);
                        sub_1C0CF448C(v209, v211);
                        sub_1C0CF448C(v203, v202);
                        v182 = v219;
                        *(v174 + 1) = v218;
                        *(v174 + 3) = v182;
                        *(v174 + 5) = *v220;
                        *&v183 = v27;
                        *(&v183 + 1) = a7;
                        v184 = *&v220[16];
                        *&v182 = v30;
                        *(&v182 + 1) = v181;
                        *(v174 + 5) = v183;
                        *(v174 + 6) = v182;
                        v185 = v223;
                        v174[7] = v184;
                        *(v174 + 4) = v185;
                        *(v174 + 112) = 0;
                        sub_1C0CF6468(v185, *(&v185 + 1));
                        v65 = v185 >> 64;
                        v64 = v185;
                        goto LABEL_27;
                      }

                      sub_1C0CF448C(v27, a7);
                      v176 = v30;
                      v177 = v30;
                      v178 = v207;
                      sub_1C0CF448C(v176, v207);
                      sub_1C0CF8DE0();
                      swift_allocError();
                      *v179 = v175;
                      *(v179 + 4) = 0;
                      swift_willThrow();
                      sub_1C0CF448C(v212, v213);
                      sub_1C0CF448C(v214, *(&v214 + 1));
                      sub_1C0CF448C(v216, v22);
                      sub_1C0CF448C(v27, a7);
                      sub_1C0CF448C(v177, v178);
                      sub_1C0CF448C(v210, v208);
                      sub_1C0CF448C(v209, v211);
                      sub_1C0CF448C(v203, v202);
                      v172 = *(&v223 + 1);
                      v171 = v223;
LABEL_69:
                      sub_1C0CF448C(v171, v172);

                      v180 = v205;
                      sub_1C0D13578(v205 + v196, &qword_1EBE6DCB8, &unk_1C0D7D9E0);
                      result = sub_1C0D13578(v180 + v195, &qword_1EBE6DCB8, &unk_1C0D7D9E0);
                      goto LABEL_28;
                    }

LABEL_76:
                    v28 = sub_1C0CFD670(v28);
                    goto LABEL_67;
                  }

                  v102 = v203;
                  v193 = v203;
                  v194 = (v102 >> 32) - v102;
                  if (v102 >> 32 >= v102)
                  {
                    v103 = v58;
                    sub_1C0CF6468(v210, v58);
                    v104 = v209;
                    sub_1C0CF6468(v209, v211);
                    v105 = v206;
                    sub_1C0CF6468(v59, v206);
                    v106 = v59;
                    v107 = v207;
                    sub_1C0CF6468(v28, v207);
                    sub_1C0CF6468(v102, v57);
                    v108 = v210;
                    sub_1C0CF6468(v210, v103);
                    v109 = v104;
                    v110 = v211;
                    sub_1C0CF6468(v109, v211);
                    sub_1C0CF6468(v106, v105);
                    sub_1C0CF6468(v28, v107);
                    sub_1C0CF6468(v102, v57);
                    sub_1C0CF6468(v106, v105);
                    sub_1C0CF6468(v28, v107);
                    sub_1C0CF6468(v108, v103);
                    v111 = v209;
                    sub_1C0CF6468(v209, v110);
                    sub_1C0CF6468(v102, v57);
                    sub_1C0CF6468(v106, v105);
                    v112 = v28;
                    sub_1C0CF6468(v28, v107);
                    sub_1C0CF6468(v111, v110);
                    sub_1C0CF6468(v210, v103);
                    sub_1C0CF6468(v102, v57);
                    v113 = sub_1C0D7812C();
                    if (!v113)
                    {
                      v116 = 0;
                      goto LABEL_55;
                    }

                    v114 = v113;
                    v115 = sub_1C0D7815C();
                    if (!__OFSUB__(v193, v115))
                    {
                      v116 = v193 - v115 + v114;
LABEL_55:
                      v144 = v207;
                      v145 = v194;
                      v146 = sub_1C0D7814C();
                      if (v146 >= v145)
                      {
                        v147 = v145;
                      }

                      else
                      {
                        v147 = v146;
                      }

                      v148 = v147 + v116;
                      if (v116)
                      {
                        v149 = v148;
                      }

                      else
                      {
                        v149 = 0;
                      }

                      v150 = v206;
                      sub_1C0CF6468(v199, v206);
                      sub_1C0CF6468(v28, v144);
                      v151 = v209;
                      v152 = v211;
                      sub_1C0CF6468(v209, v211);
                      v72 = v208;
                      sub_1C0CF6468(v210, v208);
                      v137 = v203;
                      v153 = v202;
                      sub_1C0CF6468(v203, v202);
                      v191 = v149;
                      v84 = v151;
                      v154 = v150;
                      v78 = v210;
                      v187 = v153;
                      v189 = v116;
                      v155 = v199;
                      v156 = v207;
                      v157 = v198;
                      sub_1C0D4BBF8(v210, v72, v84, v152, v199, v154, v112, v207, &v221, v197, &v218, v137, v187, v189, v191, v210, v72, sub_1C0D49F80);
                      v198 = v157;
                      sub_1C0CF448C(v78, v72);
                      sub_1C0CF448C(v84, v152);
                      sub_1C0CF448C(v155, v154);
                      sub_1C0CF448C(v112, v156);
                      v142 = v202;
                      sub_1C0CF448C(v137, v202);
                      sub_1C0CF448C(v78, v72);
                      sub_1C0CF448C(v84, v152);
                      sub_1C0CF448C(v155, v154);
                      v143 = v112;
LABEL_62:
                      sub_1C0CF448C(v143, v207);
                      sub_1C0CF448C(v137, v142);
                      goto LABEL_63;
                    }

                    goto LABEL_80;
                  }

                  __break(1u);
                }

                __break(1u);
                goto LABEL_79;
              }

LABEL_75:
              __break(1u);
              goto LABEL_76;
            }

            sub_1C0CF8DE0();
            swift_allocError();
            *v69 = v49;
            *(v69 + 4) = 0;
            v30 = v215;
          }

          swift_willThrow();
          sub_1C0CF448C(v221, v222);
          sub_1C0CF448C(v223, *(&v223 + 1));
          v41(v22, v207);
          sub_1C0CF448C(v51, v208);
          sub_1C0CF448C(v209, v52);
          v62 = v50;
          v63 = v202;
          goto LABEL_26;
        }

        __break(1u);
        goto LABEL_73;
      }
    }
  }

  else if (v31)
  {
    if (__OFSUB__(HIDWORD(v216), v216))
    {
LABEL_74:
      __break(1u);
      goto LABEL_75;
    }

    if (HIDWORD(v216) - v216 >= 16)
    {
      goto LABEL_13;
    }
  }

  else if (BYTE6(v215) >= 0x10uLL)
  {
    goto LABEL_13;
  }

  sub_1C0D50D78();
  swift_allocError();
  *v36 = 3;
  swift_willThrow();
  sub_1C0CF448C(v210, v208);
  v37 = v209;
  v38 = v211;
LABEL_25:
  sub_1C0CF448C(v37, v38);
  v62 = a7;
  v63 = a8;
LABEL_26:
  sub_1C0CF448C(v62, v63);
  sub_1C0CF448C(v212, v213);
  sub_1C0CF448C(v214, *(&v214 + 1));
  v64 = v216;
  v65 = v30;
LABEL_27:
  result = sub_1C0CF448C(v64, v65);
LABEL_28:
  v67 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t SPAKE2.Prover.getShare()()
{
  v1 = *(v0 + 64);
  sub_1C0CF6468(v1, *(v0 + 72));
  return v1;
}

uint64_t SPAKE2.Prover.processPeerShareAndGenerateVerificationTag(peerShare:)(uint64_t a1, unint64_t a2)
{
  v4 = *MEMORY[0x1E69E9840];
  result = sub_1C0D47EA0(a1, a2);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void SPAKE2.Prover.processPeerVerificationTag(peerVerificationTag:)(uint64_t a1, unint64_t a2)
{
  v6 = sub_1C0D786AC();
  v74 = *(v6 - 8);
  v7 = v74[8];
  v8 = MEMORY[0x1EEE9AC00](v6);
  *&v66 = v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = v52 - v11;
  v13 = MEMORY[0x1EEE9AC00](v10);
  v71 = v52 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v16 = v52 - v15;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D8B0, &qword_1C0D7D9F0);
  v67 = *(v70 - 8);
  v17 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v70);
  v19 = v52 - v18;
  v69 = v2;
  SPAKE2.Prover.processPeerVerificationTagAndGenerateKey(peerVerificationTag:)(a1, a2, &v72);
  if (!v3)
  {
    v64 = v72;
    v68 = 0;
    sub_1C0D50DCC();

    v20 = v16;
    sub_1C0D7868C();
    v21 = sub_1C0D789CC();
    v72 = sub_1C0D0F990(v21);
    v73 = v22;
    v23 = sub_1C0D789EC();
    v24 = sub_1C0D50E20(qword_1EBE6C9D8, MEMORY[0x1E6966620]);
    v25 = sub_1C0D17E68();
    sub_1C0D787FC();
    sub_1C0D13830(v72, v73);
    v26 = v74[1];
    v59 = v12;
    v60 = v74 + 1;
    v63 = v26;
    v65 = v20;
    v26(v20, v6);
    v72 = sub_1C0D07698(0x6B207265766F7270, 0xEA00000000007965);
    v73 = v27;
    v28 = sub_1C0D3339C();
    sub_1C0D787EC();
    sub_1C0D13830(v72, v73);
    v72 = sub_1C0D07698(0x7265696669726576, 0xEC00000079656B20);
    v73 = v29;
    v57 = v24;
    v58 = v25;
    v54 = v19;
    v55 = v23;
    v56 = v28;
    sub_1C0D787EC();
    sub_1C0D13830(v72, v73);
    v72 = sub_1C0D07698(0x6E207265766F7270, 0xEC00000065636E6FLL);
    v73 = v30;
    v31 = v59;
    sub_1C0D787EC();
    sub_1C0D13830(v72, v73);
    v53 = v74[2];
    v32 = v66;
    v53(v66, v31, v6);
    v52[2] = sub_1C0D50E20(&qword_1EBE6DCD0, MEMORY[0x1E6966458]);
    v52[1] = sub_1C0D332D0;
    v33 = v68;
    sub_1C0D7819C();
    v68 = v33;
    v34 = v63;
    v63(v32, v6);
    v34(v31, v6);
    v61 = v73;
    v62 = v72;
    v72 = sub_1C0D07698(0x7265696669726576, 0xEE0065636E6F6E20);
    v73 = v35;
    v36 = v54;
    v37 = v70;
    sub_1C0D787EC();
    sub_1C0D13830(v72, v73);
    v38 = v53;
    v53(v32, v31, v6);
    v39 = v68;
    sub_1C0D7819C();
    v68 = v39;

    v34(v32, v6);
    v34(v31, v6);
    (*(v67 + 8))(v36, v37);
    v70 = v72;
    v67 = v73;
    v40 = type metadata accessor for SPAKE2.Prover(0);
    v41 = v69;
    v42 = v69 + *(v40 + 36);
    sub_1C0D13578(v42, &qword_1EBE6DCB8, &unk_1C0D7D9E0);
    v38(v42, v65, v6);
    v43 = type metadata accessor for SPAKE2.SPAKE2Framer(0);
    v44 = v71;
    v38(v42 + v43[5], v71, v6);
    v45 = v42 + v43[6];
    v66 = xmmword_1C0D7D9D0;
    *v45 = xmmword_1C0D7D9D0;
    *(v42 + v43[7]) = 0;
    sub_1C0D13830(*v45, *(v45 + 8));
    v46 = v61;
    *v45 = v62;
    *(v45 + 8) = v46;
    v47 = *(*(v43 - 1) + 56);
    v47(v42, 0, 1, v43);
    v48 = v41 + *(v40 + 40);
    sub_1C0D13578(v48, &qword_1EBE6DCB8, &unk_1C0D7D9E0);
    v49 = v48 + v43[6];
    *v49 = v66;
    *(v48 + v43[7]) = 0;
    v50 = v74[4];
    v50(v48, v44, v6);
    sub_1C0D13830(*v49, *(v49 + 8));
    v51 = v67;
    *v49 = v70;
    *(v49 + 8) = v51;
    v50(v48 + v43[5], v65, v6);
    v47(v48, 0, 1, v43);
    *(v69 + 112) = 1;
  }
}

uint64_t SPAKE2.Prover.seal<A, B>(_:authenticating:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  if (*(v5 + 112) == 1)
  {
    v11 = *(type metadata accessor for SPAKE2.Prover(0) + 36);
    v12 = type metadata accessor for SPAKE2.SPAKE2Framer(0);
    result = (*(*(v12 - 8) + 48))(v5 + v11, 1, v12);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      return sub_1C0D435A8(a1, a2, a3, a4, a5);
    }
  }

  else
  {
    sub_1C0D50D78();
    swift_allocError();
    *v14 = 4;
    return swift_willThrow();
  }

  return result;
}

uint64_t SPAKE2.Prover.open<A>(_:authenticating:)()
{
  if (*(v0 + 112) == 1)
  {
    v1 = v0 + *(type metadata accessor for SPAKE2.Prover(0) + 40);
    v2 = type metadata accessor for SPAKE2.SPAKE2Framer(0);
    result = (*(*(v2 - 8) + 48))(v1, 1, v2);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      v4 = *(v2 + 20);
      return sub_1C0D7873C();
    }
  }

  else
  {
    sub_1C0D50D78();
    swift_allocError();
    *v5 = 4;
    return swift_willThrow();
  }

  return result;
}

uint64_t _s16CryptoKitPrivate6SPAKE2O6ProverV2wsAC2WSVvg_0@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[10];
  v3 = v1[11];
  v4 = v1[12];
  v5 = v1[13];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  sub_1C0CF6468(v2, v3);

  return sub_1C0CF6468(v4, v5);
}

uint64_t SPAKE2.Verifier.init(w0:L:context:verifierID:proverID:cipherSuite:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, unint64_t a11, uint64_t a12)
{
  v14 = *MEMORY[0x1E69E9840];
  result = sub_1C0D459EC(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, type metadata accessor for SPAKE2.Verifier, sub_1C0D4EB2C);
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1C0D459EC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, unint64_t a11, uint64_t a12, uint64_t (*a13)(void), void (*a14)(uint64_t, unint64_t, uint64_t, unint64_t, uint64_t, unint64_t, uint64_t, uint64_t, uint64_t, uint64_t, unint64_t, uint64_t, uint64_t, uint64_t, unint64_t, uint64_t, uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v103 = *MEMORY[0x1E69E9840];
  v18 = ccspake_cp_256_rfc();
  if (!v18)
  {
    goto LABEL_49;
  }

  v19 = v18;
  v91 = a3;
  v97 = a5;
  v20 = ccspake_mac_hkdf_hmac_sha256();
  if (!v20)
  {
    goto LABEL_50;
  }

  v21 = v20;
  v22 = ccspake_sizeof_ctx();
  *&v99 = v19;
  *(&v99 + 1) = v21;
  *&v100 = v22;
  *(&v100 + 1) = ccspake_sizeof_w();
  v84 = ccspake_sizeof_point();
  *v101 = v84;
  *&v101[8] = vdupq_n_s64(0x20uLL);
  v23 = a13(0);
  v24 = *(v23 + 36);
  v25 = type metadata accessor for SPAKE2.SPAKE2Framer(0);
  v26 = *(v25 - 8);
  v27 = *(v26 + 56);
  v28 = v26 + 56;
  v29 = a9;
  v86 = v24;
  (v27)(a9 + v24, 1, 1, v25);
  v30 = *(v23 + 40);
  (v27)(a9 + v30, 1, 1, v25);
  if ((v22 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_44:
    v88 = sub_1C0CFD670(v28);
    goto LABEL_38;
  }

  v85 = v30;
  v31 = a1;
  sub_1C0CF6468(a1, a2);
  v32 = v91;
  sub_1C0CF6468(v91, a4);
  sub_1C0CF6468(a1, a2);
  sub_1C0CF6468(v91, a4);
  v27 = a6;
  if (v22)
  {
    v33 = sub_1C0D78C2C();
    *(v33 + 16) = v22;
    bzero((v33 + 32), v22);
  }

  else
  {
    v33 = MEMORY[0x1E69E7CC0];
  }

  v29 = v97;
  v90 = a11;
  *a9 = v33;
  v88 = v33;
  v34 = a6 >> 62;
  v98 = 0;
  v35 = a7;
  v36 = a2;
  v97 = a10;
  v87 = v33 + 32;
  v89 = a4;
  if ((v27 >> 62) > 1)
  {
    if (v34 != 2)
    {
      *(&v102 + 6) = 0;
      *&v102 = 0;
      sub_1C0CF6468(a7, a8);
      sub_1C0CF6468(a1, a2);
      sub_1C0CF6468(v91, a4);
      v50 = a4;
      v39 = a10;
      v37 = a11;
      sub_1C0CF6468(a10, a11);
      sub_1C0CF6468(v29, v27);
      sub_1C0CF6468(a1, a2);
      sub_1C0CF6468(v91, v50);
      sub_1C0CF6468(a10, a11);
      v38 = a8;
      sub_1C0CF6468(a7, a8);
      sub_1C0CF6468(v29, v27);
      sub_1C0CF6468(a1, a2);
      sub_1C0CF6468(v91, v89);
      sub_1C0CF6468(a7, a8);
      sub_1C0CF6468(a10, a11);
      v78 = a11;
      v79 = a14;
      v76 = &v102;
      v77 = a10;
      v73 = v27;
      v72 = v29;
      v71 = v87;
      goto LABEL_25;
    }

    v80 = *(v29 + 24);
    v81 = *(v29 + 16);
    sub_1C0CF6468(a10, a11);
    sub_1C0CF6468(a7, a8);
    sub_1C0CF6468(a1, a2);
    sub_1C0CF6468(v91, a4);
    sub_1C0CF6468(v29, v27);
    sub_1C0CF6468(a10, a11);
    sub_1C0CF6468(a7, a8);
    sub_1C0CF6468(a1, a2);
    sub_1C0CF6468(v91, a4);
    sub_1C0CF6468(v29, v27);
    sub_1C0CF6468(a1, a2);
    sub_1C0CF6468(v91, a4);
    sub_1C0CF6468(a10, a11);
    sub_1C0CF6468(a7, a8);
    sub_1C0CF6468(v29, v27);
    sub_1C0CF6468(a1, a2);
    sub_1C0CF6468(v91, a4);
    sub_1C0CF6468(a7, a8);
    sub_1C0CF6468(a10, a11);
    sub_1C0CF6468(v29, v27);
    v40 = sub_1C0D7812C();
    if (v40)
    {
      v41 = sub_1C0D7815C();
      v42 = v81;
      if (__OFSUB__(v81, v41))
      {
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
      }

      v40 += v81 - v41;
      v43 = a10;
    }

    else
    {
      v43 = a10;
      v42 = v81;
    }

    v52 = v80 - v42;
    if (!__OFSUB__(v80, v42))
    {
      v53 = sub_1C0D7814C();
      if (v53 >= v52)
      {
        v54 = v52;
      }

      else
      {
        v54 = v53;
      }

      v55 = v54 + v40;
      if (!v40)
      {
        v55 = 0;
      }

      v83 = v55;
      sub_1C0CF6468(a1, a2);
      sub_1C0CF6468(v91, a4);
      v35 = a7;
      sub_1C0CF6468(a7, a8);
      v56 = v43;
      v57 = v43;
      v37 = a11;
      sub_1C0CF6468(v56, a11);
      sub_1C0CF6468(v29, v27);
      v75 = v40;
      v32 = v91;
      v31 = a1;
      v36 = a2;
      sub_1C0D4BBF8(v57, v37, a7, a8, a1, a2, v91, a4, &v98, v87, &v99, v29, v27, v75, v83, v57, v37, a14);
      sub_1C0CF448C(v57, a11);
      v49 = a7;
      v38 = a8;
      goto LABEL_34;
    }

LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  if (!v34)
  {
    *&v102 = v29;
    WORD4(v102) = v27;
    BYTE10(v102) = BYTE2(v27);
    BYTE11(v102) = BYTE3(v27);
    BYTE12(v102) = BYTE4(v27);
    BYTE13(v102) = BYTE5(v27);
    sub_1C0CF6468(a7, a8);
    v31 = a1;
    v36 = a2;
    sub_1C0CF6468(a1, a2);
    v32 = v91;
    sub_1C0CF6468(v91, a4);
    v37 = a11;
    sub_1C0CF6468(a10, a11);
    sub_1C0CF6468(v29, v27);
    sub_1C0CF6468(a1, a2);
    sub_1C0CF6468(v91, a4);
    sub_1C0CF6468(a10, a11);
    v35 = a7;
    v38 = a8;
    sub_1C0CF6468(a7, a8);
    sub_1C0CF6468(v29, v27);
    sub_1C0CF6468(a1, a2);
    sub_1C0CF6468(v91, a4);
    sub_1C0CF6468(a7, a8);
    v39 = a10;
    sub_1C0CF6468(a10, a11);
    v78 = a11;
    v79 = a14;
    v76 = &v102 + BYTE6(v27);
    v77 = a10;
    v73 = v27;
    v72 = v29;
    v71 = v87;
LABEL_25:
    v51 = v39;
    a4 = v89;
    sub_1C0D4BBF8(v51, v37, v35, v38, v31, v36, v32, v89, &v98, v71, &v99, v72, v73, &v102, v76, v77, v78, v79);
    goto LABEL_35;
  }

  if (v29 >> 32 < v29)
  {
    __break(1u);
    goto LABEL_46;
  }

  sub_1C0CF6468(a10, a11);
  sub_1C0CF6468(a7, a8);
  sub_1C0CF6468(a1, a2);
  sub_1C0CF6468(v91, a4);
  sub_1C0CF6468(v29, v27);
  sub_1C0CF6468(a10, a11);
  sub_1C0CF6468(a7, a8);
  sub_1C0CF6468(a1, a2);
  sub_1C0CF6468(v91, a4);
  sub_1C0CF6468(v29, v27);
  sub_1C0CF6468(a1, a2);
  sub_1C0CF6468(v91, a4);
  sub_1C0CF6468(a10, a11);
  sub_1C0CF6468(a7, a8);
  sub_1C0CF6468(v29, v27);
  sub_1C0CF6468(a1, a2);
  sub_1C0CF6468(v91, a4);
  sub_1C0CF6468(a7, a8);
  sub_1C0CF6468(a10, a11);
  sub_1C0CF6468(v29, v27);
  v44 = sub_1C0D7812C();
  if (v44)
  {
    v45 = sub_1C0D7815C();
    if (!__OFSUB__(v29, v45))
    {
      v44 += v29 - v45;
      goto LABEL_18;
    }

    goto LABEL_48;
  }

LABEL_18:
  v46 = sub_1C0D7814C();
  if (v46 >= (v29 >> 32) - v29)
  {
    v47 = (v29 >> 32) - v29;
  }

  else
  {
    v47 = v46;
  }

  v48 = v47 + v44;
  if (!v44)
  {
    v48 = 0;
  }

  v82 = v48;
  sub_1C0CF6468(a1, a2);
  sub_1C0CF6468(v91, a4);
  v35 = a7;
  sub_1C0CF6468(a7, a8);
  v37 = a11;
  sub_1C0CF6468(a10, a11);
  sub_1C0CF6468(v29, v27);
  v74 = v44;
  v32 = v91;
  v31 = a1;
  sub_1C0D4BBF8(a10, v37, a7, a8, a1, a2, v91, a4, &v98, v87, &v99, v29, v27, v74, v82, a10, v37, a14);
  sub_1C0CF448C(a10, a11);
  v49 = a7;
  v38 = a8;
  v36 = a2;
LABEL_34:
  sub_1C0CF448C(v49, v38);
  sub_1C0CF448C(v31, v36);
  sub_1C0CF448C(v32, a4);
  sub_1C0CF448C(v29, v27);
  sub_1C0CF448C(a10, v37);
  sub_1C0CF448C(v35, v38);
  sub_1C0CF448C(v31, v36);
  sub_1C0CF448C(v32, a4);
  sub_1C0CF448C(v29, v27);
LABEL_35:
  sub_1C0CF448C(a10, v37);
  sub_1C0CF448C(v35, v38);
  sub_1C0CF448C(v31, v36);
  sub_1C0CF448C(v32, a4);
  sub_1C0CF448C(v29, v27);
  sub_1C0CF448C(a10, v37);
  sub_1C0CF448C(v35, v38);
  sub_1C0CF448C(v31, v36);
  sub_1C0CF448C(v32, a4);
  sub_1C0CF448C(v29, v27);
  v28 = v88;
  *a9 = v88;
  v58 = v37;
  v59 = v32;
  v60 = v98;
  if (v98)
  {
    sub_1C0CF448C(v31, v36);
    sub_1C0CF448C(v59, a4);
    sub_1C0CF8DE0();
    swift_allocError();
    *v61 = v60;
    *(v61 + 4) = 0;
    swift_willThrow();
    sub_1C0CF448C(v59, a4);
    sub_1C0CF448C(v31, v36);
    sub_1C0CF448C(v31, v36);
    sub_1C0CF448C(v59, a4);
    sub_1C0CF448C(a10, v58);
    sub_1C0CF448C(a7, a8);
    v62 = v29;
    v63 = v27;
    goto LABEL_40;
  }

  *&v102 = sub_1C0D0F990(v84);
  *(&v102 + 1) = v64;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_44;
  }

LABEL_38:
  sub_1C0D492F4(&v102, &v98, (v88 + 32), &v99);
  *a9 = v88;
  v65 = v98;
  if (!v98)
  {
    sub_1C0CF448C(v91, a4);
    sub_1C0CF448C(a1, a2);
    sub_1C0CF448C(a1, a2);
    sub_1C0CF448C(v91, a4);
    sub_1C0CF448C(v97, v90);
    sub_1C0CF448C(a7, a8);
    sub_1C0CF448C(v29, v27);
    v69 = v100;
    *(a9 + 8) = v99;
    *(a9 + 24) = v69;
    *(a9 + 40) = *v101;
    *(a9 + 88) = a2;
    *(a9 + 96) = v91;
    *(a9 + 104) = a4;
    v70 = v102;
    *(a9 + 56) = *&v101[16];
    *(a9 + 64) = v70;
    *(a9 + 80) = a1;
    *(a9 + 112) = 0;
    sub_1C0CF6468(v70, *(&v70 + 1));
    result = sub_1C0CF448C(v70, *(&v70 + 1));
    goto LABEL_41;
  }

  sub_1C0CF448C(a1, a2);
  sub_1C0CF448C(v91, a4);
  sub_1C0CF8DE0();
  swift_allocError();
  *v66 = v65;
  *(v66 + 4) = 0;
  swift_willThrow();
  sub_1C0CF448C(v91, a4);
  sub_1C0CF448C(a1, a2);
  sub_1C0CF448C(a1, a2);
  sub_1C0CF448C(v91, a4);
  sub_1C0CF448C(v97, v90);
  sub_1C0CF448C(a7, a8);
  sub_1C0CF448C(v29, v27);
  v63 = *(&v102 + 1);
  v62 = v102;
LABEL_40:
  sub_1C0CF448C(v62, v63);

  sub_1C0D13578(a9 + v86, &qword_1EBE6DCB8, &unk_1C0D7D9E0);
  result = sub_1C0D13578(a9 + v85, &qword_1EBE6DCB8, &unk_1C0D7D9E0);
LABEL_41:
  v68 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t SPAKE2.Verifier.init(seed:salt:info:context:verifierID:proverID:cipherSuite:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, unint64_t a11, uint64_t a12, unint64_t a13)
{
  v219 = a5;
  v220 = a6;
  *&v221 = a3;
  *(&v221 + 1) = a4;
  v222 = a2;
  v223 = a1;
  v212 = a9;
  v231 = *MEMORY[0x1E69E9840];
  v214 = sub_1C0D786AC();
  v16 = *(v214 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v214);
  v20 = &v199 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v199 - v21;
  v23 = ccspake_cp_256_rfc();
  if (!v23)
  {
    goto LABEL_83;
  }

  v24 = v23;
  v213 = v13;
  v25 = ccspake_mac_hkdf_hmac_sha256();
  if (!v25)
  {
    goto LABEL_84;
  }

  v26 = v25;
  v215 = a13;
  v217 = a12;
  v218 = a11;
  v216 = a10;
  v27 = ccspake_sizeof_ctx();
  v28 = ccspake_sizeof_w();
  v29 = ccspake_sizeof_point();
  *&v225 = v24;
  *(&v225 + 1) = v26;
  v211 = v27;
  *&v226 = v27;
  *(&v226 + 1) = v28;
  *v227 = v29;
  *&v227[8] = vdupq_n_s64(0x20uLL);
  v30 = v222;
  v31 = v222 >> 62;
  if ((v222 >> 62) > 1)
  {
    if (v31 != 2)
    {
      goto LABEL_10;
    }

    v33 = *(v223 + 16);
    v32 = *(v223 + 24);
    v34 = __OFSUB__(v32, v33);
    v35 = v32 - v33;
    if (v34)
    {
LABEL_75:
      __break(1u);
      goto LABEL_76;
    }

    if (v35 < 16)
    {
      goto LABEL_10;
    }
  }

  else
  {
    if (!v31)
    {
      if (BYTE6(v222) >= 0x10uLL)
      {
        goto LABEL_14;
      }

LABEL_10:
      sub_1C0D50D78();
      swift_allocError();
      *v36 = 3;
      swift_willThrow();
      sub_1C0CF448C(v217, v215);
      sub_1C0CF448C(v216, v218);
      v37 = a7;
      v38 = a8;
      goto LABEL_11;
    }

    if (__OFSUB__(HIDWORD(v223), v223))
    {
LABEL_76:
      __break(1u);
      goto LABEL_77;
    }

    if (HIDWORD(v223) - v223 < 16)
    {
      goto LABEL_10;
    }
  }

LABEL_14:
  v207 = v29;
  *&v230 = v223;
  *(&v230 + 1) = v222;
  sub_1C0CF6468(v223, v222);
  sub_1C0D7868C();
  v230 = v221;
  v228 = v219;
  v229 = v220;
  if ((v28 + 0x4000000000000000) < 0)
  {
    __break(1u);
    goto LABEL_74;
  }

  if (__OFADD__(2 * v28, 16))
  {
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  v209 = a7;
  v210 = a8;
  sub_1C0D789EC();
  sub_1C0D50E20(qword_1EBE6C9D8, MEMORY[0x1E6966620]);
  sub_1C0D17E68();
  sub_1C0D7881C();
  v39 = *(v16 + 8);
  v208 = v16 + 8;
  v40 = v39(v20, v214);
  MEMORY[0x1EEE9AC00](v40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D1F0, &qword_1C0D7BFF0);
  v41 = v213;
  v42 = sub_1C0D7867C();
  MEMORY[0x1EEE9AC00](v42);
  sub_1C0D7867C();
  v224 = 0;
  *&v230 = sub_1C0D0F990(v28);
  *(&v230 + 1) = v43;
  sub_1C0D48EC4(&v230, &v224, &v225, 8);
  v44 = v224;
  if (v224)
  {
    v45 = v39;

    v46 = v218;
    v47 = v216;
    if (v44 == -2)
    {
      sub_1C0D50D78();
      swift_allocError();
      *v48 = 0;
    }

    else
    {
      sub_1C0CF8DE0();
      swift_allocError();
      *v70 = v44;
      *(v70 + 4) = 0;
    }

    v71 = v210;
    v72 = v209;
    swift_willThrow();
    sub_1C0CF448C(v230, *(&v230 + 1));
    v45(v22, v214);
    sub_1C0CF448C(v217, v215);
    sub_1C0CF448C(v47, v46);
    sub_1C0CF448C(v72, v71);
    v30 = v222;
    goto LABEL_28;
  }

  v228 = sub_1C0D0F990(v28);
  v229 = v49;
  sub_1C0D48EC4(&v228, &v224, &v225, 8);
  v50 = v224;
  v51 = v218;
  if (v224 == -2)
  {
    sub_1C0D50D78();
    swift_allocError();
    *v77 = 0;
    v52 = v210;
    v30 = v222;
    v53 = v216;
  }

  else
  {
    v52 = v210;
    v30 = v222;
    v53 = v216;
    if (!v224)
    {
      v39(v22, v214);
      v54 = *(&v230 + 1);
      v55 = v230;
      v56 = v228;
      v57 = v229;
      LODWORD(v228) = 0;
      *&v230 = sub_1C0D0F990(v207);
      *(&v230 + 1) = v58;
      sub_1C0CF6468(v55, v54);
      sub_1C0CF6468(v56, v57);
      v214 = v54;
      sub_1C0D49680(&v230, v55, v54, v56, v57, &v228, &v225);
      v59 = v228;
      if (v228 == -2)
      {
        sub_1C0D50D78();
        swift_allocError();
        *v79 = 0;
      }

      else
      {
        if (!v228)
        {
          v205 = v41;
          v30 = v214;
          sub_1C0CF6468(v55, v214);
          sub_1C0CF448C(v55, v30);
          sub_1C0CF448C(v56, v57);
          v20 = *(&v230 + 1);
          v206 = v230;
          v60 = type metadata accessor for SPAKE2.Verifier(0);
          v61 = *(v60 + 36);
          v22 = type metadata accessor for SPAKE2.SPAKE2Framer(0);
          v62 = *(*(v22 - 1) + 56);
          v63 = v55;
          v64 = v212;
          v203 = v61;
          v62(v212 + v61, 1, 1, v22);
          v65 = *(v60 + 40);
          v62(v64 + v65, 1, 1, v22);
          v28 = v211;
          if ((v211 & 0x8000000000000000) == 0)
          {
            sub_1C0CF6468(v55, v30);
            v66 = v206;
            v213 = v20;
            sub_1C0CF6468(v206, v20);
            v67 = v63;
            v68 = v30;
            if (v28)
            {
              v69 = sub_1C0D78C2C();
              *(v69 + 16) = v28;
              bzero((v69 + 32), v28);
            }

            else
            {
              v69 = MEMORY[0x1E69E7CC0];
            }

            v81 = v218;
            v82 = v216;
            *v212 = v69;
            LODWORD(v228) = 0;
            v83 = v210 >> 62;
            v208 = v67;
            v84 = v213;
            v202 = v65;
            v211 = v69;
            v204 = v69 + 32;
            if ((v210 >> 62) > 1)
            {
              if (v83 != 2)
              {
                *(&v230 + 6) = 0;
                *&v230 = 0;
                sub_1C0CF6468(v82, v81);
                sub_1C0CF6468(v67, v68);
                sub_1C0CF6468(v66, v84);
                v142 = v217;
                v143 = v68;
                v144 = v215;
                sub_1C0CF6468(v217, v215);
                v145 = v82;
                v146 = v67;
                v147 = v209;
                v148 = v210;
                sub_1C0CF6468(v209, v210);
                sub_1C0CF6468(v146, v143);
                v149 = v213;
                sub_1C0CF6468(v66, v213);
                sub_1C0CF6468(v142, v144);
                sub_1C0CF6468(v145, v218);
                sub_1C0CF6468(v147, v148);
                sub_1C0CF6468(v146, v143);
                sub_1C0CF6468(v66, v149);
                sub_1C0CF6468(v145, v218);
                sub_1C0CF6468(v142, v144);
                v193 = v148;
                v95 = v144;
                v150 = v145;
                v151 = v146;
                v94 = v145;
                v81 = v218;
                v85 = v66;
                v152 = v205;
                sub_1C0D4BBF8(v142, v144, v150, v218, v151, v214, v66, v149, &v228, v204, &v225, v147, v193, &v230, &v230, v142, v144, sub_1C0D4EB2C);
                v205 = v152;
                sub_1C0CF448C(v142, v144);
                v96 = v149;
                goto LABEL_66;
              }

              v98 = v209;
              v99 = *(v209 + 24);
              v201 = *(v209 + 16);
              v100 = v81;
              v200 = v99;
              v101 = v217;
              v102 = v215;
              sub_1C0CF6468(v217, v215);
              sub_1C0CF6468(v82, v100);
              sub_1C0CF6468(v67, v68);
              sub_1C0CF6468(v66, v84);
              sub_1C0CF6468(v98, v210);
              sub_1C0CF6468(v101, v102);
              sub_1C0CF6468(v82, v100);
              v103 = v67;
              v104 = v67;
              v105 = v214;
              sub_1C0CF6468(v104, v214);
              v106 = v213;
              sub_1C0CF6468(v66, v213);
              v107 = v210;
              sub_1C0CF6468(v98, v210);
              sub_1C0CF6468(v103, v105);
              sub_1C0CF6468(v66, v106);
              v108 = v217;
              sub_1C0CF6468(v217, v215);
              sub_1C0CF6468(v82, v100);
              sub_1C0CF6468(v98, v107);
              sub_1C0CF6468(v103, v105);
              sub_1C0CF6468(v66, v106);
              sub_1C0CF6468(v82, v100);
              sub_1C0CF6468(v108, v215);
              sub_1C0CF6468(v98, v107);
              v109 = sub_1C0D7812C();
              if (v109)
              {
                v110 = v109;
                v111 = sub_1C0D7815C();
                v112 = v201;
                if (__OFSUB__(v201, v111))
                {
LABEL_81:
                  __break(1u);
LABEL_82:
                  __break(1u);
LABEL_83:
                  __break(1u);
LABEL_84:
                  __break(1u);
                }

                v113 = v201 - v111 + v110;
                v114 = v216;
                v115 = v213;
              }

              else
              {
                v113 = 0;
                v114 = v216;
                v115 = v213;
                v112 = v201;
              }

              v153 = v200 - v112;
              if (!__OFSUB__(v200, v112))
              {
                v154 = sub_1C0D7814C();
                if (v154 >= v153)
                {
                  v155 = v153;
                }

                else
                {
                  v155 = v154;
                }

                v156 = v155 + v113;
                if (!v113)
                {
                  v156 = 0;
                }

                v201 = v156;
                v157 = v208;
                v158 = v214;
                sub_1C0CF6468(v208, v214);
                v85 = v206;
                sub_1C0CF6468(v206, v115);
                v81 = v218;
                sub_1C0CF6468(v114, v218);
                v90 = v217;
                v159 = v215;
                sub_1C0CF6468(v217, v215);
                v160 = v209;
                v161 = v210;
                sub_1C0CF6468(v209, v210);
                v198 = v159;
                v162 = v159;
                v94 = v216;
                v194 = v161;
                v196 = v113;
                v95 = v162;
                v163 = v213;
                v164 = v205;
                sub_1C0D4BBF8(v90, v162, v216, v81, v157, v158, v85, v213, &v228, v204, &v225, v160, v194, v196, v201, v90, v198, sub_1C0D4EB2C);
                v205 = v164;
                sub_1C0CF448C(v90, v95);
                sub_1C0CF448C(v94, v81);
                sub_1C0CF448C(v157, v158);
                sub_1C0CF448C(v85, v163);
                v165 = v210;
                sub_1C0CF448C(v160, v210);
                sub_1C0CF448C(v90, v95);
                sub_1C0CF448C(v94, v81);
                sub_1C0CF448C(v157, v214);
                sub_1C0CF448C(v85, v163);
                v140 = v160;
                v96 = v163;
                v141 = v165;
                goto LABEL_64;
              }
            }

            else
            {
              if (!v83)
              {
                v85 = v66;
                v86 = v209;
                *&v230 = v209;
                v87 = v210;
                DWORD2(v230) = v210;
                WORD6(v230) = WORD2(v210);
                v88 = v68;
                v201 = &v230 + BYTE6(v210);
                sub_1C0CF6468(v82, v81);
                v89 = v208;
                sub_1C0CF6468(v208, v88);
                sub_1C0CF6468(v85, v84);
                v90 = v217;
                v91 = v82;
                v92 = v215;
                sub_1C0CF6468(v217, v215);
                sub_1C0CF6468(v86, v87);
                sub_1C0CF6468(v89, v88);
                sub_1C0CF6468(v85, v213);
                sub_1C0CF6468(v90, v92);
                sub_1C0CF6468(v91, v81);
                sub_1C0CF6468(v86, v87);
                sub_1C0CF6468(v89, v88);
                sub_1C0CF6468(v85, v213);
                sub_1C0CF6468(v91, v81);
                sub_1C0CF6468(v90, v92);
                v197 = v92;
                v93 = v92;
                v94 = v91;
                v191 = v86;
                v95 = v93;
                v96 = v213;
                v97 = v205;
                sub_1C0D4BBF8(v90, v93, v94, v81, v89, v88, v85, v213, &v228, v204, &v225, v191, v87, &v230, v201, v90, v197, sub_1C0D4EB2C);
                v205 = v97;
LABEL_65:
                sub_1C0CF448C(v90, v95);
LABEL_66:
                sub_1C0CF448C(v94, v81);
                v166 = v81;
                v167 = v208;
                v168 = v214;
                sub_1C0CF448C(v208, v214);
                sub_1C0CF448C(v85, v96);
                v169 = v96;
                v170 = v209;
                v171 = v85;
                v172 = v94;
                v173 = v210;
                sub_1C0CF448C(v209, v210);
                sub_1C0CF448C(v217, v95);
                sub_1C0CF448C(v172, v166);
                sub_1C0CF448C(v167, v168);
                sub_1C0CF448C(v171, v169);
                sub_1C0CF448C(v170, v173);
                v30 = v169;
                v174 = v211;
                *v212 = v211;
                v175 = v228;
                if (v228)
                {
                  v176 = v208;
                  v177 = v214;
                  sub_1C0CF448C(v208, v214);
                  sub_1C0CF448C(v171, v30);
                  sub_1C0CF8DE0();
                  swift_allocError();
                  *v178 = v175;
                  *(v178 + 4) = 0;
                  swift_willThrow();
                  sub_1C0CF448C(v219, v220);
                  sub_1C0CF448C(v221, *(&v221 + 1));
                  sub_1C0CF448C(v223, v222);
                  sub_1C0CF448C(v176, v177);
                  sub_1C0CF448C(v171, v30);
                  sub_1C0CF448C(v217, v215);
                  sub_1C0CF448C(v172, v218);
                  sub_1C0CF448C(v209, v210);
                  goto LABEL_71;
                }

                v22 = v172;
                v20 = v171;
                *&v230 = sub_1C0D0F990(v207);
                *(&v230 + 1) = v179;
                v28 = v174;
                if (swift_isUniquelyReferenced_nonNull_native())
                {
LABEL_69:
                  v180 = v208;
                  v181 = v212;
                  sub_1C0D492F4(&v230, &v228, v28 + 32, &v225);
                  *v181 = v28;
                  v182 = v228;
                  if (!v228)
                  {
                    sub_1C0CF448C(v219, v220);
                    sub_1C0CF448C(v221, *(&v221 + 1));
                    sub_1C0CF448C(v223, v222);
                    v187 = v214;
                    sub_1C0CF448C(v180, v214);
                    sub_1C0CF448C(v20, v30);
                    sub_1C0CF448C(v217, v215);
                    sub_1C0CF448C(v22, v218);
                    sub_1C0CF448C(v209, v210);
                    v188 = v226;
                    *(v181 + 1) = v225;
                    *(v181 + 3) = v188;
                    *(v181 + 5) = *v227;
                    v189 = *&v227[16];
                    v181[11] = v187;
                    v181[12] = v20;
                    v181[13] = v30;
                    v190 = v230;
                    v181[7] = v189;
                    *(v181 + 4) = v190;
                    v181[10] = v180;
                    *(v181 + 112) = 0;
                    sub_1C0CF6468(v190, *(&v190 + 1));
                    v74 = v190 >> 64;
                    v73 = v190;
                    goto LABEL_29;
                  }

                  v183 = v30;
                  v184 = v214;
                  sub_1C0CF448C(v180, v214);
                  v211 = v28;
                  sub_1C0CF448C(v20, v183);
                  sub_1C0CF8DE0();
                  swift_allocError();
                  *v185 = v182;
                  *(v185 + 4) = 0;
                  swift_willThrow();
                  sub_1C0CF448C(v219, v220);
                  sub_1C0CF448C(v221, *(&v221 + 1));
                  sub_1C0CF448C(v223, v222);
                  sub_1C0CF448C(v180, v184);
                  sub_1C0CF448C(v20, v183);
                  sub_1C0CF448C(v217, v215);
                  sub_1C0CF448C(v22, v218);
                  sub_1C0CF448C(v209, v210);
                  sub_1C0CF448C(v230, *(&v230 + 1));
LABEL_71:

                  v186 = v212;
                  sub_1C0D13578(v212 + v203, &qword_1EBE6DCB8, &unk_1C0D7D9E0);
                  result = sub_1C0D13578(v186 + v202, &qword_1EBE6DCB8, &unk_1C0D7D9E0);
                  goto LABEL_30;
                }

LABEL_78:
                v28 = sub_1C0CFD670(v28);
                goto LABEL_69;
              }

              v116 = v209;
              v200 = v209;
              v201 = (v116 >> 32) - v116;
              if (v116 >> 32 >= v116)
              {
                v117 = v217;
                v118 = v215;
                sub_1C0CF6468(v217, v215);
                sub_1C0CF6468(v82, v218);
                v119 = v208;
                sub_1C0CF6468(v208, v68);
                v120 = v82;
                v121 = v213;
                sub_1C0CF6468(v66, v213);
                v122 = v210;
                sub_1C0CF6468(v116, v210);
                sub_1C0CF6468(v117, v118);
                v123 = v120;
                v124 = v218;
                sub_1C0CF6468(v123, v218);
                sub_1C0CF6468(v119, v68);
                sub_1C0CF6468(v66, v121);
                sub_1C0CF6468(v116, v122);
                sub_1C0CF6468(v119, v68);
                sub_1C0CF6468(v66, v121);
                sub_1C0CF6468(v117, v118);
                v125 = v216;
                sub_1C0CF6468(v216, v124);
                sub_1C0CF6468(v116, v122);
                sub_1C0CF6468(v119, v68);
                sub_1C0CF6468(v66, v121);
                sub_1C0CF6468(v125, v124);
                sub_1C0CF6468(v217, v215);
                sub_1C0CF6468(v116, v122);
                v126 = sub_1C0D7812C();
                if (!v126)
                {
LABEL_49:
                  v128 = v216;
                  v129 = v213;
                  v85 = v206;
                  v130 = v201;
                  v131 = v210;
                  v132 = sub_1C0D7814C();
                  if (v132 >= v130)
                  {
                    v133 = v130;
                  }

                  else
                  {
                    v133 = v132;
                  }

                  v134 = v133 + v126;
                  if (!v126)
                  {
                    v134 = 0;
                  }

                  v206 = v134;
                  v135 = v214;
                  sub_1C0CF6468(v208, v214);
                  sub_1C0CF6468(v85, v129);
                  v81 = v218;
                  sub_1C0CF6468(v128, v218);
                  v90 = v217;
                  v95 = v215;
                  sub_1C0CF6468(v217, v215);
                  v136 = v209;
                  sub_1C0CF6468(v209, v131);
                  v94 = v216;
                  v192 = v131;
                  v195 = v126;
                  v96 = v213;
                  v137 = v208;
                  v138 = v205;
                  sub_1C0D4BBF8(v90, v95, v216, v81, v208, v135, v85, v213, &v228, v204, &v225, v136, v192, v195, v206, v90, v95, sub_1C0D4EB2C);
                  v205 = v138;
                  sub_1C0CF448C(v90, v95);
                  sub_1C0CF448C(v94, v81);
                  sub_1C0CF448C(v137, v135);
                  sub_1C0CF448C(v85, v96);
                  v139 = v210;
                  sub_1C0CF448C(v136, v210);
                  sub_1C0CF448C(v90, v95);
                  sub_1C0CF448C(v94, v81);
                  sub_1C0CF448C(v208, v135);
                  sub_1C0CF448C(v85, v96);
                  v140 = v136;
                  v141 = v139;
LABEL_64:
                  sub_1C0CF448C(v140, v141);
                  goto LABEL_65;
                }

                v127 = sub_1C0D7815C();
                if (!__OFSUB__(v200, v127))
                {
                  v126 += v200 - v127;
                  goto LABEL_49;
                }

                goto LABEL_82;
              }

              __break(1u);
            }

            __break(1u);
            goto LABEL_81;
          }

LABEL_77:
          __break(1u);
          goto LABEL_78;
        }

        sub_1C0CF8DE0();
        swift_allocError();
        *v80 = v59;
        *(v80 + 4) = 0;
      }

      swift_willThrow();
      sub_1C0CF448C(v217, v215);
      sub_1C0CF448C(v53, v51);
      sub_1C0CF448C(v209, v52);
      sub_1C0CF448C(v219, v220);
      sub_1C0CF448C(v221, *(&v221 + 1));
      sub_1C0CF448C(v223, v30);
      sub_1C0CF448C(v55, v214);
      sub_1C0CF448C(v56, v57);
      v74 = *(&v230 + 1);
      v73 = v230;
      goto LABEL_29;
    }

    sub_1C0CF8DE0();
    swift_allocError();
    *v78 = v50;
    *(v78 + 4) = 0;
  }

  swift_willThrow();
  sub_1C0CF448C(v228, v229);
  sub_1C0CF448C(v230, *(&v230 + 1));
  v39(v22, v214);
  sub_1C0CF448C(v217, v215);
  sub_1C0CF448C(v53, v51);
  v37 = v209;
  v38 = v52;
LABEL_11:
  sub_1C0CF448C(v37, v38);
LABEL_28:
  sub_1C0CF448C(v219, v220);
  sub_1C0CF448C(v221, *(&v221 + 1));
  v73 = v223;
  v74 = v30;
LABEL_29:
  result = sub_1C0CF448C(v73, v74);
LABEL_30:
  v76 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1C0D47EA0(uint64_t a1, unint64_t a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v5)
    {
      v6 = BYTE6(a2);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v5 == 2)
  {
    v8 = *(a1 + 16);
    v7 = *(a1 + 24);
    v9 = __OFSUB__(v7, v8);
    v6 = v7 - v8;
    if (!v9)
    {
      goto LABEL_10;
    }

    __break(1u);
LABEL_8:
    LODWORD(v6) = HIDWORD(a1) - a1;
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      __break(1u);
      goto LABEL_40;
    }

    v6 = v6;
LABEL_10:
    if (v6 == *(v2 + 40))
    {
      goto LABEL_11;
    }

LABEL_16:
    sub_1C0D50D78();
    swift_allocError();
    *v11 = 1;
    swift_willThrow();
LABEL_38:
    v22 = *MEMORY[0x1E69E9840];
    return v2;
  }

  if (*(v2 + 40))
  {
    goto LABEL_16;
  }

LABEL_11:
  v24 = sub_1C0D0F990(*(v2 + 56));
  v25 = v10;
  v23 = 0;
  v3 = *v2;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    if (v5 <= 1)
    {
      goto LABEL_13;
    }

LABEL_25:
    if (v5 != 2)
    {
      goto LABEL_31;
    }

    v15 = *(a1 + 16);
    v16 = sub_1C0D7812C();
    if (v16)
    {
      v17 = sub_1C0D7815C();
      if (__OFSUB__(v15, v17))
      {
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
      }

      v16 += v15 - v17;
    }

    result = sub_1C0D7814C();
    if (!__OFSUB__(*(a1 + 24), *(a1 + 16)))
    {
      if (v16)
      {
        goto LABEL_31;
      }

      __break(1u);
      goto LABEL_47;
    }

    goto LABEL_42;
  }

  v3 = sub_1C0CFD670(v3);
  if (v5 > 1)
  {
    goto LABEL_25;
  }

LABEL_13:
  if (!v5)
  {
    goto LABEL_31;
  }

  if (a1 > a1 >> 32)
  {
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v12 = sub_1C0D7812C();
  if (v12)
  {
    v13 = sub_1C0D7815C();
    if (__OFSUB__(a1, v13))
    {
      goto LABEL_45;
    }

    v12 += a1 - v13;
  }

  result = sub_1C0D7814C();
  if (__OFSUB__(HIDWORD(a1), a1))
  {
    goto LABEL_43;
  }

  if (v12)
  {
LABEL_31:
    v18 = ccspake_kex_process();
    v23 = v18;
    *v2 = v3;
    if (v18 == -2)
    {
      sub_1C0D50D78();
      swift_allocError();
      *v20 = 0;
    }

    else
    {
      if (!v18)
      {
        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_34:
          sub_1C0D49BFC(&v24, &v23);
          *v2 = v3;
          v2 = v24;
          v19 = v25;
          sub_1C0CF6468(v24, v25);
          sub_1C0CF448C(v2, v19);
          goto LABEL_38;
        }

LABEL_40:
        v3 = sub_1C0CFD670(v3);
        goto LABEL_34;
      }

      v2 = v18;
      sub_1C0CF8DE0();
      swift_allocError();
      *v21 = v2;
      *(v21 + 4) = 0;
    }

    swift_willThrow();
    sub_1C0CF448C(v24, v25);
    goto LABEL_38;
  }

LABEL_47:
  __break(1u);
  return result;
}

void sub_1C0D4822C(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v10 = *(v4 + 48);
  if ((v10 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    v9 = sub_1C0CFD670(v9);
    goto LABEL_6;
  }

  v6 = v5;
  v7 = a2;
  v8 = a1;
  v3 = a3;
  if (v10)
  {
    v11 = *(v4 + 48);
    v12 = sub_1C0D78C2C();
    *(v12 + 16) = v10;
    bzero((v12 + 32), v10);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v19 = v12;
  v18 = 0;
  v9 = *v4;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_6:
  sub_1C0CF6468(v8, v7);
  v13 = v6;
  sub_1C0D507B4(v8, v7, &v18, (v9 + 32), v8, v7, v10, &v19);
  *v4 = v9;
  v14 = v18;
  if (v18 == -2)
  {
    sub_1C0D50D78();
    swift_allocError();
    *v15 = 0;
LABEL_12:
    swift_willThrow();

    return;
  }

  if (v18)
  {
    sub_1C0CF8DE0();
    swift_allocError();
    *v16 = v14;
    *(v16 + 4) = 0;
    goto LABEL_12;
  }

  sub_1C0CF2CF4((v19 + 32), &v19[*(v19 + 2) + 32], &v17);
  if (v13)
  {

    __break(1u);
  }

  else
  {

    *v3 = v17;
  }
}

void sub_1C0D483CC(void *a1@<X8>)
{
  v7 = *(v2 + 48);
  if ((v7 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    v6 = sub_1C0CFD670(v6);
    goto LABEL_6;
  }

  v4 = v3;
  v5 = a1;
  if (v7)
  {
    v8 = *(v2 + 48);
    v1 = sub_1C0D78C2C();
    *(v1 + 16) = v7;
    bzero((v1 + 32), v7);
  }

  else
  {
    v1 = MEMORY[0x1E69E7CC0];
  }

  v6 = *v2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_6:
  v9 = MEMORY[0x1C68E4070](v6 + 32, v7, v1 + 32);
  *v2 = v6;
  if (v9 == -2)
  {
    sub_1C0D50D78();
    swift_allocError();
    *v10 = 0;
LABEL_12:
    swift_willThrow();

    return;
  }

  if (v9)
  {
    v11 = v9;
    sub_1C0CF8DE0();
    swift_allocError();
    *v12 = v11;
    *(v12 + 4) = 0;
    goto LABEL_12;
  }

  sub_1C0CF2CF4(v1 + 32, v1 + 32 + *(v1 + 16), &v13);
  if (v4)
  {

    __break(1u);
  }

  else
  {

    *v5 = v13;
  }
}

void SPAKE2.Verifier.processPeerVerificationTag(peerVerificationTag:)(uint64_t a1, unint64_t a2)
{
  v6 = sub_1C0D786AC();
  v74 = *(v6 - 8);
  v7 = v74[8];
  v8 = MEMORY[0x1EEE9AC00](v6);
  *&v66 = v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = v52 - v11;
  v13 = MEMORY[0x1EEE9AC00](v10);
  v71 = v52 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v16 = v52 - v15;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE6D8B0, &qword_1C0D7D9F0);
  v67 = *(v70 - 8);
  v17 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v70);
  v19 = v52 - v18;
  v69 = v2;
  SPAKE2.Prover.processPeerVerificationTagAndGenerateKey(peerVerificationTag:)(a1, a2, &v72);
  if (!v3)
  {
    v64 = v72;
    v68 = 0;
    sub_1C0D50DCC();

    v20 = v16;
    sub_1C0D7868C();
    v21 = sub_1C0D789CC();
    v72 = sub_1C0D0F990(v21);
    v73 = v22;
    v23 = sub_1C0D789EC();
    v24 = sub_1C0D50E20(qword_1EBE6C9D8, MEMORY[0x1E6966620]);
    v25 = sub_1C0D17E68();
    sub_1C0D787FC();
    sub_1C0D13830(v72, v73);
    v26 = v74[1];
    v59 = v12;
    v60 = v74 + 1;
    v63 = v26;
    v65 = v20;
    v26(v20, v6);
    v72 = sub_1C0D07698(0x6B207265766F7270, 0xEA00000000007965);
    v73 = v27;
    v28 = sub_1C0D3339C();
    sub_1C0D787EC();
    sub_1C0D13830(v72, v73);
    v72 = sub_1C0D07698(0x7265696669726576, 0xEC00000079656B20);
    v73 = v29;
    v57 = v24;
    v58 = v25;
    v54 = v19;
    v55 = v23;
    v56 = v28;
    sub_1C0D787EC();
    sub_1C0D13830(v72, v73);
    v72 = sub_1C0D07698(0x6E207265766F7270, 0xEC00000065636E6FLL);
    v73 = v30;
    v31 = v59;
    sub_1C0D787EC();
    sub_1C0D13830(v72, v73);
    v53 = v74[2];
    v32 = v66;
    v53(v66, v31, v6);
    v52[2] = sub_1C0D50E20(&qword_1EBE6DCD0, MEMORY[0x1E6966458]);
    v52[1] = sub_1C0D332D0;
    v33 = v68;
    sub_1C0D7819C();
    v68 = v33;
    v34 = v63;
    v63(v32, v6);
    v34(v31, v6);
    v61 = v73;
    v62 = v72;
    v72 = sub_1C0D07698(0x7265696669726576, 0xEE0065636E6F6E20);
    v73 = v35;
    v36 = v54;
    v37 = v70;
    sub_1C0D787EC();
    sub_1C0D13830(v72, v73);
    v38 = v53;
    v53(v32, v31, v6);
    v39 = v68;
    sub_1C0D7819C();
    v68 = v39;

    v34(v32, v6);
    v34(v31, v6);
    (*(v67 + 8))(v36, v37);
    v70 = v72;
    v67 = v73;
    v40 = type metadata accessor for SPAKE2.Verifier(0);
    v41 = v69;
    v42 = v69 + *(v40 + 40);
    sub_1C0D13578(v42, &qword_1EBE6DCB8, &unk_1C0D7D9E0);
    v38(v42, v65, v6);
    v43 = type metadata accessor for SPAKE2.SPAKE2Framer(0);
    v44 = v71;
    v38(v42 + v43[5], v71, v6);
    v45 = v42 + v43[6];
    v66 = xmmword_1C0D7D9D0;
    *v45 = xmmword_1C0D7D9D0;
    *(v42 + v43[7]) = 0;
    sub_1C0D13830(*v45, *(v45 + 8));
    v46 = v61;
    *v45 = v62;
    *(v45 + 8) = v46;
    v47 = *(*(v43 - 1) + 56);
    v47(v42, 0, 1, v43);
    v48 = v41 + *(v40 + 36);
    sub_1C0D13578(v48, &qword_1EBE6DCB8, &unk_1C0D7D9E0);
    v49 = v48 + v43[6];
    *v49 = v66;
    *(v48 + v43[7]) = 0;
    v50 = v74[4];
    v50(v48, v44, v6);
    sub_1C0D13830(*v49, *(v49 + 8));
    v51 = v67;
    *v49 = v70;
    *(v49 + 8) = v51;
    v50(v48 + v43[5], v65, v6);
    v47(v48, 0, 1, v43);
    *(v69 + 112) = 1;
  }
}

uint64_t SPAKE2.Verifier.seal<A, B>(_:authenticating:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  if (*(v5 + 112) == 1)
  {
    v11 = *(type metadata accessor for SPAKE2.Verifier(0) + 40);
    v12 = type metadata accessor for SPAKE2.SPAKE2Framer(0);
    result = (*(*(v12 - 8) + 48))(v5 + v11, 1, v12);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      return sub_1C0D435A8(a1, a2, a3, a4, a5);
    }
  }

  else
  {
    sub_1C0D50D78();
    swift_allocError();
    *v14 = 4;
    return swift_willThrow();
  }

  return result;
}

uint64_t SPAKE2.Verifier.open<A>(_:authenticating:)()
{
  if (*(v0 + 112) == 1)
  {
    v1 = v0 + *(type metadata accessor for SPAKE2.Verifier(0) + 36);
    v2 = type metadata accessor for SPAKE2.SPAKE2Framer(0);
    result = (*(*(v2 - 8) + 48))(v1, 1, v2);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      v4 = *(v2 + 20);
      return sub_1C0D7873C();
    }
  }

  else
  {
    sub_1C0D50D78();
    swift_allocError();
    *v5 = 4;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1C0D48EC4(uint64_t *a1, _DWORD *a2, uint64_t *a3, uint64_t a4)
{
  v32 = *MEMORY[0x1E69E9840];
  v7 = *a1;
  v6 = a1[1];
  v8 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    if (v8 != 2)
    {
      if (!__OFADD__(a3[3], a4))
      {
        v19 = *a3;
        *a2 = ccspake_reduce_w();

        goto LABEL_24;
      }

      goto LABEL_26;
    }

    sub_1C0D78BFC();

    sub_1C0CF448C(v7, v6);
    *a1 = xmmword_1C0D7BAB0;
    sub_1C0CF448C(0, 0xC000000000000000);
    sub_1C0D7823C();
    v12 = v7;
    v13 = *(v7 + 16);
    if (sub_1C0D7812C())
    {
      if (__OFSUB__(v13, sub_1C0D7815C()))
      {
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      sub_1C0D7814C();
      if (__OFADD__(a3[3], a4))
      {
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

      v14 = *a3;
      *a2 = ccspake_reduce_w();
      result = swift_bridgeObjectRelease_n();
      v15 = v6 & 0x3FFFFFFFFFFFFFFFLL | 0x8000000000000000;
      *a1 = v12;
LABEL_23:
      a1[1] = v15;
      goto LABEL_24;
    }

    __break(1u);
  }

  else
  {
    if (!v8)
    {
      sub_1C0D78BFC();
      sub_1C0CF448C(v7, v6);
      LOWORD(v30) = v6;
      BYTE2(v30) = BYTE2(v6);
      HIBYTE(v30) = BYTE3(v6);
      LOBYTE(v31) = BYTE4(v6);
      HIBYTE(v31) = BYTE5(v6);
      if (!__OFADD__(a3[3], a4))
      {
        v9 = *a3;
        *a2 = ccspake_reduce_w();
        result = swift_bridgeObjectRelease_n();
        *a1 = v7;
        a1[1] = v30 | ((v31 | (BYTE6(v6) << 16)) << 32);
LABEL_24:
        v25 = *MEMORY[0x1E69E9840];
        return result;
      }

      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    v16 = v6 & 0x3FFFFFFFFFFFFFFFLL;
    sub_1C0D78BFC();
    sub_1C0CF6468(v7, v6);
    sub_1C0CF448C(v7, v6);
    *a1 = xmmword_1C0D7BAB0;
    sub_1C0CF448C(0, 0xC000000000000000);
    sub_1C0D78BFC();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = v7 >> 32;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      if (v18 < v7)
      {
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

      if (sub_1C0D7812C() && __OFSUB__(v7, sub_1C0D7815C()))
      {
LABEL_33:
        __break(1u);
      }

      v20 = sub_1C0D7818C();
      v21 = *(v20 + 48);
      v22 = *(v20 + 52);
      swift_allocObject();
      v23 = sub_1C0D7810C();

      v16 = v23;
      v18 = v7 >> 32;
    }

    if (v18 < v7)
    {
      goto LABEL_28;
    }

    result = sub_1C0D7812C();
    if (result)
    {
      if (__OFSUB__(v7, sub_1C0D7815C()))
      {
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      sub_1C0D7814C();
      if (__OFADD__(a3[3], a4))
      {
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      v24 = *a3;
      *a2 = ccspake_reduce_w();
      swift_bridgeObjectRelease_n();

      v15 = v16 | 0x4000000000000000;
      *a1 = v7;
      goto LABEL_23;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C0D492F4(uint64_t *a1, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  v31 = *MEMORY[0x1E69E9840];
  v7 = *a1;
  v6 = a1[1];
  v8 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    if (v8 != 2)
    {
      v20 = *(a4 + 32);
      result = ccspake_kex_generate();
      *a2 = result;
      goto LABEL_20;
    }

    v12 = *a1;

    sub_1C0CF448C(v7, v6);
    *a1 = xmmword_1C0D7BAB0;
    sub_1C0CF448C(0, 0xC000000000000000);
    sub_1C0D7823C();
    v13 = v6 & 0x3FFFFFFFFFFFFFFFLL;
    v14 = *(v7 + 16);
    result = sub_1C0D7812C();
    if (!result)
    {
      __break(1u);
      goto LABEL_27;
    }

    if (!__OFSUB__(v14, sub_1C0D7815C()))
    {
      sub_1C0D7814C();
      v15 = *(a4 + 32);
      result = ccspake_kex_generate();
      *a2 = result;
      v16 = v13 | 0x8000000000000000;
      *a1 = v7;
LABEL_19:
      a1[1] = v16;
      goto LABEL_20;
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (!v8)
  {
    sub_1C0CF448C(v7, v6);
    LOWORD(v29) = v6;
    BYTE2(v29) = BYTE2(v6);
    HIBYTE(v29) = BYTE3(v6);
    LOBYTE(v30) = BYTE4(v6);
    HIBYTE(v30) = BYTE5(v6);
    v9 = *(a4 + 32);
    result = ccspake_kex_generate();
    *a2 = result;
    *a1 = v7;
    a1[1] = v29 | ((v30 | (BYTE6(v6) << 16)) << 32);
LABEL_20:
    v26 = *MEMORY[0x1E69E9840];
    return result;
  }

  v17 = v6 & 0x3FFFFFFFFFFFFFFFLL;

  sub_1C0CF448C(v7, v6);
  *a1 = xmmword_1C0D7BAB0;
  sub_1C0CF448C(0, 0xC000000000000000);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = v7 >> 32;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    if (v19 < v7)
    {
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    if (sub_1C0D7812C() && __OFSUB__(v7, sub_1C0D7815C()))
    {
LABEL_25:
      __break(1u);
    }

    v21 = sub_1C0D7818C();
    v22 = *(v21 + 48);
    v23 = *(v21 + 52);
    swift_allocObject();
    v24 = sub_1C0D7810C();

    v17 = v24;
    v19 = v7 >> 32;
  }

  if (v19 < v7)
  {
    goto LABEL_22;
  }

  result = sub_1C0D7812C();
  if (result)
  {
    if (!__OFSUB__(v7, sub_1C0D7815C()))
    {
      sub_1C0D7814C();
      v25 = *(a4 + 32);
      *a2 = ccspake_kex_generate();

      v16 = v17 | 0x4000000000000000;
      *a1 = v7;
      goto LABEL_19;
    }

    goto LABEL_23;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1C0D49680(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, _DWORD *a6, uint64_t *a7)
{
  v55 = *MEMORY[0x1E69E9840];
  v13 = *a1;
  v12 = a1[1];
  v14 = v12 >> 62;
  if ((v12 >> 62) > 1)
  {
    if (v14 != 2)
    {
      *(&v54 + 7) = 0;
      *&v54 = 0;
      sub_1C0D43118(&v54, &v54, a2, a3, a4, a5, a6, a7);
      sub_1C0CF448C(a2, a3);
      result = sub_1C0CF448C(a4, a5);
      goto LABEL_26;
    }

    sub_1C0CF6468(a2, a3);
    v48 = a4;
    sub_1C0CF6468(a4, a5);

    sub_1C0CF448C(v13, v12);
    *&v54 = v13;
    *(&v54 + 1) = v12 & 0x3FFFFFFFFFFFFFFFLL;
    *a1 = xmmword_1C0D7BAB0;
    sub_1C0CF448C(0, 0xC000000000000000);
    sub_1C0D7823C();
    v19 = *(&v54 + 1);
    v20 = *(v54 + 16);
    v21 = *(v54 + 24);
    v22 = sub_1C0D7812C();
    if (!v22)
    {
      sub_1C0CF448C(a2, a3);
      result = sub_1C0CF448C(v48, a5);
      __break(1u);
      goto LABEL_34;
    }

    v23 = v22;
    v24 = sub_1C0D7815C();
    v25 = v20 - v24;
    if (!__OFSUB__(v20, v24))
    {
      v26 = __OFSUB__(v21, v20);
      v27 = v21 - v20;
      if (!v26)
      {
        v28 = sub_1C0D7814C();
        if (v28 >= v27)
        {
          v29 = v27;
        }

        else
        {
          v29 = v28;
        }

        sub_1C0D43118(v23 + v25, v23 + v25 + v29, a2, a3, v48, a5, a6, a7);
        sub_1C0CF448C(a2, a3);
        sub_1C0CF448C(v48, a5);
        sub_1C0CF448C(a2, a3);
        result = sub_1C0CF448C(v48, a5);
        *a1 = v54;
        a1[1] = v19 | 0x8000000000000000;
        goto LABEL_26;
      }

      goto LABEL_29;
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (!v14)
  {
    sub_1C0CF6468(a2, a3);
    sub_1C0CF6468(a4, a5);
    sub_1C0CF448C(v13, v12);
    *&v54 = v13;
    WORD4(v54) = v12;
    BYTE10(v54) = BYTE2(v12);
    BYTE11(v54) = BYTE3(v12);
    BYTE12(v54) = BYTE4(v12);
    BYTE13(v54) = BYTE5(v12);
    BYTE14(v54) = BYTE6(v12);
    sub_1C0D43118(&v54, &v54 + BYTE6(v12), a2, a3, a4, a5, a6, a7);
    v16 = v54;
    v17 = DWORD2(v54) | ((WORD6(v54) | (BYTE14(v54) << 16)) << 32);
    sub_1C0CF448C(a2, a3);
    sub_1C0CF448C(a4, a5);
    sub_1C0CF448C(a2, a3);
    result = sub_1C0CF448C(a4, a5);
    *a1 = v16;
    a1[1] = v17;
LABEL_26:
    v45 = *MEMORY[0x1E69E9840];
    return result;
  }

  v30 = v12 & 0x3FFFFFFFFFFFFFFFLL;
  sub_1C0CF6468(a2, a3);
  sub_1C0CF6468(a4, a5);
  sub_1C0CF6468(v13, v12);
  sub_1C0CF448C(v13, v12);
  *a1 = xmmword_1C0D7BAB0;
  sub_1C0CF448C(0, 0xC000000000000000);
  sub_1C0CF6468(a2, a3);
  sub_1C0CF6468(a4, a5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v32 = v13;
  v33 = v13 >> 32;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    if (v33 < v13)
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    if (sub_1C0D7812C() && __OFSUB__(v13, sub_1C0D7815C()))
    {
LABEL_32:
      __break(1u);
    }

    v34 = sub_1C0D7818C();
    v35 = *(v34 + 48);
    v36 = *(v34 + 52);
    swift_allocObject();
    v32 = v13;
    v37 = sub_1C0D7810C();

    v30 = v37;
    v33 = v13 >> 32;
  }

  v49 = a4;
  v38 = v33 - v32;
  if (v33 < v32)
  {
    goto LABEL_28;
  }

  v46 = a1;
  v47 = a5;
  v39 = v32;

  result = sub_1C0D7812C();
  if (result)
  {
    v40 = result;
    v41 = sub_1C0D7815C();
    v42 = v39 - v41;
    if (!__OFSUB__(v39, v41))
    {
      v43 = sub_1C0D7814C();
      if (v43 >= v38)
      {
        v44 = v38;
      }

      else
      {
        v44 = v43;
      }

      sub_1C0D43118(v40 + v42, v40 + v42 + v44, a2, a3, v49, v47, a6, a7);

      sub_1C0CF448C(a2, a3);
      sub_1C0CF448C(v49, v47);
      sub_1C0CF448C(a2, a3);
      sub_1C0CF448C(v49, v47);
      sub_1C0CF448C(a2, a3);
      result = sub_1C0CF448C(v49, v47);
      *v46 = v13;
      v46[1] = v30 | 0x4000000000000000;
      goto LABEL_26;
    }

    goto LABEL_30;
  }

LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_1C0D49BFC(uint64_t *a1, _DWORD *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = *a1;
  v4 = a1[1];
  v6 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    if (v6 != 2)
    {
      result = ccspake_mac_compute();
      *a2 = result;
      goto LABEL_20;
    }

    v8 = *a1;

    sub_1C0CF448C(v5, v4);
    *a1 = xmmword_1C0D7BAB0;
    sub_1C0CF448C(0, 0xC000000000000000);
    sub_1C0D7823C();
    v9 = v4 & 0x3FFFFFFFFFFFFFFFLL;
    v10 = *(v5 + 16);
    result = sub_1C0D7812C();
    if (!result)
    {
      __break(1u);
      goto LABEL_27;
    }

    if (!__OFSUB__(v10, sub_1C0D7815C()))
    {
      sub_1C0D7814C();
      result = ccspake_mac_compute();
      *a2 = result;
      v11 = v9 | 0x8000000000000000;
      *a1 = v5;
LABEL_19:
      a1[1] = v11;
      goto LABEL_20;
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (!v6)
  {
    sub_1C0CF448C(v5, v4);
    LOWORD(v21) = v4;
    BYTE2(v21) = BYTE2(v4);
    HIBYTE(v21) = BYTE3(v4);
    LOBYTE(v22) = BYTE4(v4);
    HIBYTE(v22) = BYTE5(v4);
    result = ccspake_mac_compute();
    *a2 = result;
    *a1 = v5;
    a1[1] = v21 | ((v22 | (BYTE6(v4) << 16)) << 32);
LABEL_20:
    v19 = *MEMORY[0x1E69E9840];
    return result;
  }

  v12 = v4 & 0x3FFFFFFFFFFFFFFFLL;

  sub_1C0CF448C(v5, v4);
  *a1 = xmmword_1C0D7BAB0;
  sub_1C0CF448C(0, 0xC000000000000000);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = v5 >> 32;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    if (v14 < v5)
    {
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    if (sub_1C0D7812C() && __OFSUB__(v5, sub_1C0D7815C()))
    {
LABEL_25:
      __break(1u);
    }

    v15 = sub_1C0D7818C();
    v16 = *(v15 + 48);
    v17 = *(v15 + 52);
    swift_allocObject();
    v18 = sub_1C0D7810C();

    v12 = v18;
    v14 = v5 >> 32;
  }

  if (v14 < v5)
  {
    goto LABEL_22;
  }

  result = sub_1C0D7812C();
  if (result)
  {
    if (!__OFSUB__(v5, sub_1C0D7815C()))
    {
      sub_1C0D7814C();
      *a2 = ccspake_mac_compute();

      v11 = v12 | 0x4000000000000000;
      *a1 = v5;
      goto LABEL_19;
    }

    goto LABEL_23;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1C0D49F80(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, _DWORD *a7, uint64_t a8, uint64_t *a9, uint64_t a10, unint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, unint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, unint64_t a19, uint64_t a20)
{
  v21 = v20;
  v22 = a19;
  v24 = a15;
  v23 = a16;
  v25 = a14;
  v26 = a11;
  v139 = *MEMORY[0x1E69E9840];
  v27 = a2 >> 62;
  v28 = a10;
  if ((a2 >> 62) <= 1)
  {
    if (!v27)
    {
      v29 = a6 >> 62;
      if ((a6 >> 62) > 1)
      {
        if (v29 != 2)
        {
          result = ccrng();
          if (result)
          {
            v32 = a11;
            v71 = a11 >> 62;
            v34 = a16;
            if ((a11 >> 62) <= 1)
            {
              v36 = a20;
              v35 = a12;
              v23 = a10;
              if (!v71 || !__OFSUB__(HIDWORD(a10), a10))
              {
                goto LABEL_207;
              }

              goto LABEL_583;
            }

            goto LABEL_117;
          }

          goto LABEL_631;
        }

        v132 = a14;
        v133 = a10;
        v25 = a15;
        v47 = *(a5 + 16);
        v28 = sub_1C0D7812C();
        if (v28)
        {
          v48 = sub_1C0D7815C();
          if (__OFSUB__(v47, v48))
          {
LABEL_573:
            __break(1u);
LABEL_574:
            __break(1u);
            goto LABEL_575;
          }

          v28 += v47 - v48;
        }

        v21 = v20;
        sub_1C0D7814C();
        result = ccrng();
        if (result)
        {
          v32 = a11;
          v22 = a19;
          v34 = a16;
          v49 = a11 >> 62;
          v36 = a20;
          v35 = a12;
          if ((a11 >> 62) <= 1)
          {
            v24 = a15;
            if (v49)
            {
              goto LABEL_259;
            }

            goto LABEL_265;
          }

LABEL_125:
          v24 = v25;
          if (v49 == 2)
          {
            v25 = v132;
            v55 = *(v133 + 24);
            if (!__OFSUB__(v55, *(v133 + 16)))
            {
              goto LABEL_266;
            }

            __break(1u);
            goto LABEL_129;
          }

LABEL_265:
          v25 = v132;
          goto LABEL_266;
        }

        goto LABEL_633;
      }

      if (!v29)
      {
        result = ccrng();
        if (result)
        {
          v32 = a11;
          v33 = a11 >> 62;
          v34 = a16;
          if ((a11 >> 62) <= 1)
          {
            v36 = a20;
            v35 = a12;
            v23 = a10;
            if (!v33)
            {
              goto LABEL_191;
            }

LABEL_183:
            if (!__OFSUB__(HIDWORD(v23), v23))
            {
              goto LABEL_191;
            }

            goto LABEL_581;
          }

          v36 = a20;
          v35 = a12;
          v23 = a10;
          if (v33 != 2 || (v46 = *(a10 + 24), !__OFSUB__(v46, *(a10 + 16))))
          {
LABEL_191:
            if (v35)
            {
              v81 = v24 >> 62;
              if ((v24 >> 62) <= 1)
              {
                if (!v81)
                {
                  goto LABEL_224;
                }

                goto LABEL_223;
              }

              if (v81 != 2 || !__OFSUB__(*(v25 + 24), *(v25 + 16)))
              {
LABEL_224:
                if (v34)
                {
                  v85 = v22 >> 62;
                  if ((v22 >> 62) <= 1)
                  {
                    if (!v85)
                    {
                      goto LABEL_304;
                    }

                    goto LABEL_303;
                  }

                  if (v85 != 2 || !__OFSUB__(*(a18 + 24), *(a18 + 16)))
                  {
LABEL_304:
                    if (!v36)
                    {
                      __break(1u);
LABEL_306:
                      if (!__OFSUB__(HIDWORD(a18), a18))
                      {
                        goto LABEL_307;
                      }

                      goto LABEL_594;
                    }

                    goto LABEL_314;
                  }

                  __break(1u);
LABEL_232:
                  if (!__OFSUB__(HIDWORD(v25), v25))
                  {
                    goto LABEL_233;
                  }

LABEL_586:
                  __break(1u);
                  goto LABEL_587;
                }

LABEL_646:
                __break(1u);
                goto LABEL_647;
              }

              __break(1u);
LABEL_199:
              if (v35)
              {
                v82 = v24 >> 62;
                if ((v24 >> 62) <= 1)
                {
                  if (v82)
                  {
                    goto LABEL_232;
                  }

LABEL_233:
                  if (v34)
                  {
                    v86 = v22 >> 62;
                    if ((v22 >> 62) <= 1)
                    {
                      if (v86)
                      {
                        goto LABEL_306;
                      }

LABEL_307:
                      if (v36)
                      {
                        v93 = *a9;
                        v94 = a9[1];
                        v128 = a9[3];
                        *a7 = ccspake_prover_initialize();
                        sub_1C0CF448C(a3, a4);
                        sub_1C0CF448C(a5, v26);
LABEL_565:
                        sub_1C0CF448C(v23, v32);
                        sub_1C0CF448C(v25, v24);
                        result = sub_1C0CF448C(a18, v22);
                        v127 = *MEMORY[0x1E69E9840];
                        return result;
                      }

                      goto LABEL_656;
                    }

                    if (v86 != 2 || !__OFSUB__(*(a18 + 24), *(a18 + 16)))
                    {
                      goto LABEL_307;
                    }

                    __break(1u);
LABEL_241:
                    if (!__OFSUB__(HIDWORD(v25), v25))
                    {
                      goto LABEL_242;
                    }

LABEL_587:
                    __break(1u);
                    goto LABEL_588;
                  }

LABEL_647:
                  __break(1u);
                  goto LABEL_648;
                }

                if (v82 != 2 || !__OFSUB__(*(v25 + 24), *(v25 + 16)))
                {
                  goto LABEL_233;
                }

                __break(1u);
LABEL_207:
                if (v35)
                {
                  v83 = v24 >> 62;
                  if ((v24 >> 62) <= 1)
                  {
                    if (v83)
                    {
                      goto LABEL_241;
                    }

LABEL_242:
                    if (v34)
                    {
                      v87 = v22 >> 62;
                      if ((v22 >> 62) <= 1)
                      {
                        if (v87 && __OFSUB__(HIDWORD(a18), a18))
                        {
                          goto LABEL_595;
                        }

                        goto LABEL_310;
                      }

                      if (v87 != 2 || !__OFSUB__(*(a18 + 24), *(a18 + 16)))
                      {
LABEL_310:
                        if (v36)
                        {
LABEL_314:
                          v95 = *a9;
                          v96 = a9[1];
                          v97 = a9[3];
LABEL_510:
                          *a7 = ccspake_prover_initialize();
                          sub_1C0CF448C(a3, a4);
                          sub_1C0CF448C(a5, a6);
                          goto LABEL_565;
                        }

                        __break(1u);
                        goto LABEL_312;
                      }

                      __break(1u);
LABEL_250:
                      if (!__OFSUB__(HIDWORD(v25), v25))
                      {
                        goto LABEL_251;
                      }

LABEL_588:
                      __break(1u);
LABEL_589:
                      __break(1u);
                      goto LABEL_590;
                    }

LABEL_648:
                    __break(1u);
                    goto LABEL_649;
                  }

                  if (v83 != 2 || !__OFSUB__(*(v25 + 24), *(v25 + 16)))
                  {
                    goto LABEL_242;
                  }

                  __break(1u);
                  goto LABEL_215;
                }

LABEL_640:
                __break(1u);
LABEL_641:
                __break(1u);
                goto LABEL_642;
              }

LABEL_639:
              __break(1u);
              goto LABEL_640;
            }

LABEL_638:
            __break(1u);
            goto LABEL_639;
          }

          __break(1u);
          goto LABEL_113;
        }

        __break(1u);
LABEL_630:
        __break(1u);
LABEL_631:
        __break(1u);
LABEL_632:
        __break(1u);
LABEL_633:
        __break(1u);
LABEL_634:
        __break(1u);
        goto LABEL_635;
      }

      v132 = a14;
      v133 = a10;
      v64 = a5;
      if (a5 <= a5 >> 32)
      {
        v25 = a15;
        v28 = sub_1C0D7812C();
        if (!v28)
        {
LABEL_69:
          v21 = v20;
          sub_1C0D7814C();
          result = ccrng();
          if (!result)
          {
LABEL_643:
            __break(1u);
            goto LABEL_644;
          }

          v32 = a11;
          v22 = a19;
          v34 = a16;
          v66 = a11 >> 62;
          v36 = a20;
          v35 = a12;
          if ((a11 >> 62) <= 1)
          {
            v24 = a15;
            if (v66)
            {
              v25 = a14;
              if (__OFSUB__(HIDWORD(a10), a10))
              {
LABEL_603:
                __break(1u);
                goto LABEL_604;
              }

              goto LABEL_378;
            }

            goto LABEL_377;
          }

LABEL_145:
          v24 = v25;
          if (v66 != 2)
          {
LABEL_377:
            v25 = v132;
LABEL_378:
            v23 = v133;
            if (!v35)
            {
LABEL_664:
              __break(1u);
              goto LABEL_665;
            }

            v104 = v24 >> 62;
            if ((v24 >> 62) <= 1)
            {
              if (v104)
              {
LABEL_440:
                if (__OFSUB__(HIDWORD(v25), v25))
                {
LABEL_612:
                  __break(1u);
                  goto LABEL_613;
                }
              }

LABEL_441:
              if (!v34)
              {
LABEL_674:
                __break(1u);
                goto LABEL_675;
              }

              v109 = v22 >> 62;
              if ((v22 >> 62) <= 1)
              {
                if (!v109)
                {
                  goto LABEL_499;
                }

                goto LABEL_498;
              }

              if (v109 != 2 || !__OFSUB__(*(a18 + 24), *(a18 + 16)))
              {
                goto LABEL_499;
              }

              __break(1u);
              goto LABEL_449;
            }

            if (v104 != 2 || !__OFSUB__(*(v25 + 24), *(v25 + 16)))
            {
              goto LABEL_441;
            }

            __break(1u);
            goto LABEL_386;
          }

          v25 = v132;
          v78 = *(v133 + 24);
          if (!__OFSUB__(v78, *(v133 + 16)))
          {
            goto LABEL_378;
          }

          __break(1u);
LABEL_149:
          v25 = v132;
          if (v78 != 2)
          {
LABEL_386:
            v23 = v133;
LABEL_387:
            if (!v35)
            {
LABEL_665:
              __break(1u);
              goto LABEL_666;
            }

            v105 = v24 >> 62;
            if ((v24 >> 62) <= 1)
            {
              if (v105)
              {
LABEL_449:
                if (__OFSUB__(HIDWORD(v25), v25))
                {
LABEL_613:
                  __break(1u);
                  goto LABEL_614;
                }
              }

LABEL_450:
              if (!v34)
              {
LABEL_675:
                __break(1u);
                goto LABEL_676;
              }

              v110 = v22 >> 62;
              if ((v22 >> 62) <= 1)
              {
                if (v110)
                {
                  goto LABEL_502;
                }

LABEL_503:
                if (!v36)
                {
LABEL_683:
                  __break(1u);
                  goto LABEL_684;
                }

                if (!v21)
                {
LABEL_685:
                  __break(1u);
                  goto LABEL_686;
                }

LABEL_505:
                v114 = *a9;
                v115 = a9[1];
                v129 = a9[3];
                *a7 = ccspake_prover_initialize();
                sub_1C0CF448C(a3, a4);
                v116 = a5;
                v117 = v28;
LABEL_564:
                sub_1C0CF448C(v116, v117);
                goto LABEL_565;
              }

              if (v110 != 2 || !__OFSUB__(*(a18 + 24), *(a18 + 16)))
              {
                goto LABEL_503;
              }

              __break(1u);
              goto LABEL_458;
            }

            if (v105 != 2 || !__OFSUB__(*(v25 + 24), *(v25 + 16)))
            {
              goto LABEL_450;
            }

            __break(1u);
            goto LABEL_395;
          }

          v23 = v133;
          v63 = *(v133 + 24);
          if (!__OFSUB__(v63, *(v133 + 16)))
          {
            goto LABEL_387;
          }

          __break(1u);
          goto LABEL_153;
        }

        v65 = sub_1C0D7815C();
        if (!__OFSUB__(v64, v65))
        {
          v28 += v64 - v65;
          goto LABEL_69;
        }

        goto LABEL_576;
      }

      goto LABEL_569;
    }

    v131 = v20;
    v41 = a1;
    if (a1 <= a1 >> 32)
    {
      v132 = a14;
      v133 = a10;
      v25 = a15;
      v42 = sub_1C0D7812C();
      if (!v42)
      {
        v21 = 0;
        goto LABEL_51;
      }

      v43 = v42;
      v44 = sub_1C0D7815C();
      if (!__OFSUB__(v41, v44))
      {
        v21 = v41 - v44 + v43;
LABEL_51:
        sub_1C0D7814C();
        v28 = a6;
        v59 = a6 >> 62;
        if ((a6 >> 62) > 1)
        {
          if (v59 != 2)
          {
            result = ccrng();
            if (!result)
            {
LABEL_644:
              __break(1u);
              goto LABEL_645;
            }

            v22 = a19;
            v32 = a11;
            v34 = a16;
            v78 = a11 >> 62;
            v24 = a15;
            v36 = a20;
            v35 = a12;
            if ((a11 >> 62) <= 1)
            {
              v25 = a14;
              if (v78)
              {
                v23 = a10;
                if (__OFSUB__(HIDWORD(a10), a10))
                {
LABEL_604:
                  __break(1u);
                  goto LABEL_605;
                }

                goto LABEL_387;
              }

              goto LABEL_386;
            }

            goto LABEL_149;
          }

          v61 = *(a5 + 16);
          v28 = sub_1C0D7812C();
          if (v28)
          {
            v62 = sub_1C0D7815C();
            if (__OFSUB__(v61, v62))
            {
LABEL_578:
              __break(1u);
              goto LABEL_579;
            }

            v28 += v61 - v62;
          }

          v32 = a11;
          sub_1C0D7814C();
          result = ccrng();
          if (!result)
          {
LABEL_654:
            __break(1u);
            goto LABEL_655;
          }

          v22 = a19;
          v34 = a16;
          v63 = a11 >> 62;
          v31 = a20;
          v35 = a12;
          if ((a11 >> 62) <= 1)
          {
            v24 = a15;
            if (v63)
            {
LABEL_467:
              v25 = v132;
              if (__OFSUB__(HIDWORD(v133), v133))
              {
LABEL_615:
                __break(1u);
                goto LABEL_616;
              }

              goto LABEL_472;
            }

            goto LABEL_471;
          }

LABEL_153:
          v24 = v25;
          if (v63 == 2)
          {
            v25 = v132;
            v74 = *(v133 + 24);
            if (!__OFSUB__(v74, *(v133 + 16)))
            {
              goto LABEL_472;
            }

            __break(1u);
LABEL_157:
            v24 = v25;
            if (v74 == 2)
            {
              v25 = v132;
              v77 = *(v133 + 24);
              if (!__OFSUB__(v77, *(v133 + 16)))
              {
                goto LABEL_481;
              }

              __break(1u);
              goto LABEL_161;
            }

LABEL_480:
            v25 = v132;
            goto LABEL_481;
          }

LABEL_471:
          v25 = v132;
LABEL_472:
          v23 = v133;
          if (!v35)
          {
LABEL_677:
            __break(1u);
            goto LABEL_678;
          }

          v112 = v24 >> 62;
          if ((v24 >> 62) <= 1)
          {
            if (v112 && __OFSUB__(HIDWORD(v25), v25))
            {
              goto LABEL_622;
            }

            goto LABEL_512;
          }

          if (v112 != 2 || !__OFSUB__(*(v25 + 24), *(v25 + 16)))
          {
LABEL_512:
            if (!v34)
            {
LABEL_687:
              __break(1u);
              goto LABEL_688;
            }

            v121 = v22 >> 62;
            if ((v22 >> 62) <= 1)
            {
              if (!v121)
              {
LABEL_541:
                if (!v31)
                {
LABEL_690:
                  __break(1u);
                  goto LABEL_691;
                }

                if (!v21)
                {
LABEL_692:
                  __break(1u);
                  goto LABEL_693;
                }

                if (v28)
                {
                  goto LABEL_563;
                }

                __break(1u);
                goto LABEL_545;
              }

LABEL_540:
              if (__OFSUB__(HIDWORD(a18), a18))
              {
LABEL_625:
                __break(1u);
                goto LABEL_626;
              }

              goto LABEL_541;
            }

            if (v121 != 2 || !__OFSUB__(*(a18 + 24), *(a18 + 16)))
            {
              goto LABEL_541;
            }

            __break(1u);
LABEL_520:
            if (__OFSUB__(HIDWORD(v25), v25))
            {
LABEL_623:
              __break(1u);
              goto LABEL_624;
            }

            goto LABEL_521;
          }

          __break(1u);
          goto LABEL_480;
        }

        if (!v59)
        {
          v22 = a19;
          result = ccrng();
          if (!result)
          {
LABEL_642:
            __break(1u);
            goto LABEL_643;
          }

          v32 = a11;
          v34 = a16;
          v60 = a11 >> 62;
          v24 = a15;
          v36 = a20;
          v35 = a12;
          if ((a11 >> 62) <= 1)
          {
            v25 = a14;
            if (v60)
            {
LABEL_362:
              v23 = v133;
              if (__OFSUB__(HIDWORD(v133), v133))
              {
LABEL_602:
                __break(1u);
                goto LABEL_603;
              }

              goto LABEL_369;
            }

            goto LABEL_368;
          }

LABEL_141:
          v25 = v132;
          if (v60 == 2)
          {
            v23 = v133;
            v66 = *(v133 + 24);
            if (!__OFSUB__(v66, *(v133 + 16)))
            {
              goto LABEL_369;
            }

            __break(1u);
            goto LABEL_145;
          }

LABEL_368:
          v23 = v133;
LABEL_369:
          if (!v35)
          {
LABEL_663:
            __break(1u);
            goto LABEL_664;
          }

          v103 = v24 >> 62;
          if ((v24 >> 62) <= 1)
          {
            if (v103)
            {
LABEL_431:
              if (__OFSUB__(HIDWORD(v25), v25))
              {
LABEL_611:
                __break(1u);
                goto LABEL_612;
              }
            }

LABEL_432:
            if (!v34)
            {
LABEL_673:
              __break(1u);
              goto LABEL_674;
            }

            v108 = v22 >> 62;
            if ((v22 >> 62) <= 1)
            {
              if (v108)
              {
                goto LABEL_494;
              }

LABEL_495:
              if (!v36)
              {
LABEL_681:
                __break(1u);
                goto LABEL_682;
              }

              if (v21)
              {
                goto LABEL_505;
              }

              __break(1u);
LABEL_498:
              if (__OFSUB__(HIDWORD(a18), a18))
              {
LABEL_619:
                __break(1u);
                goto LABEL_620;
              }

LABEL_499:
              if (!v36)
              {
LABEL_682:
                __break(1u);
                goto LABEL_683;
              }

              if (!v28)
              {
                __break(1u);
LABEL_502:
                if (__OFSUB__(HIDWORD(a18), a18))
                {
LABEL_620:
                  __break(1u);
LABEL_621:
                  __break(1u);
LABEL_622:
                  __break(1u);
                  goto LABEL_623;
                }

                goto LABEL_503;
              }

LABEL_509:
              v118 = *a9;
              v119 = a9[1];
              v120 = a9[3];
              goto LABEL_510;
            }

            if (v108 != 2 || !__OFSUB__(*(a18 + 24), *(a18 + 16)))
            {
              goto LABEL_495;
            }

            __break(1u);
            goto LABEL_440;
          }

          if (v103 != 2 || !__OFSUB__(*(v25 + 24), *(v25 + 16)))
          {
            goto LABEL_432;
          }

          __break(1u);
          goto LABEL_377;
        }

        if (a5 <= a5 >> 32)
        {
          v28 = sub_1C0D7812C();
          if (v28)
          {
            v76 = sub_1C0D7815C();
            if (__OFSUB__(a5, v76))
            {
LABEL_580:
              __break(1u);
LABEL_581:
              __break(1u);
LABEL_582:
              __break(1u);
LABEL_583:
              __break(1u);
LABEL_584:
              __break(1u);
              goto LABEL_585;
            }

            v28 += a5 - v76;
          }

          v32 = a11;
          sub_1C0D7814C();
          result = ccrng();
          if (!result)
          {
LABEL_671:
            __break(1u);
            goto LABEL_672;
          }

          v22 = a19;
          v34 = a16;
          v77 = a11 >> 62;
          v31 = a20;
          v35 = a12;
          if ((a11 >> 62) <= 1)
          {
            v24 = a15;
            if (v77)
            {
LABEL_529:
              v25 = v132;
              if (__OFSUB__(HIDWORD(v133), v133))
              {
LABEL_624:
                __break(1u);
                goto LABEL_625;
              }

              goto LABEL_532;
            }

            goto LABEL_531;
          }

LABEL_161:
          v24 = v25;
          if (v77 == 2)
          {
            v25 = v132;
            if (!__OFSUB__(*(v133 + 24), *(v133 + 16)))
            {
              goto LABEL_532;
            }

            __break(1u);
            goto LABEL_165;
          }

LABEL_531:
          v25 = v132;
LABEL_532:
          v23 = v133;
          if (!v35)
          {
LABEL_689:
            __break(1u);
            goto LABEL_690;
          }

          v123 = v24 >> 62;
          if ((v24 >> 62) <= 1)
          {
            if (!v123)
            {
              goto LABEL_551;
            }

            goto LABEL_550;
          }

          if (v123 != 2 || !__OFSUB__(*(v25 + 24), *(v25 + 16)))
          {
            goto LABEL_551;
          }

          __break(1u);
          goto LABEL_540;
        }

        goto LABEL_572;
      }

LABEL_568:
      __break(1u);
LABEL_569:
      __break(1u);
LABEL_570:
      __break(1u);
      __break(1u);
      __break(1u);
      __break(1u);
      __break(1u);
LABEL_571:
      __break(1u);
      __break(1u);
      __break(1u);
      __break(1u);
      __break(1u);
      __break(1u);
LABEL_572:
      __break(1u);
      __break(1u);
      __break(1u);
      __break(1u);
      __break(1u);
      __break(1u);
      __break(1u);
      __break(1u);
      goto LABEL_573;
    }

    __break(1u);
LABEL_567:
    __break(1u);
    goto LABEL_568;
  }

  if (v27 != 2)
  {
    v45 = a6 >> 62;
    if ((a6 >> 62) > 1)
    {
      if (v45 != 2)
      {
        result = ccrng();
        if (result)
        {
          v32 = a11;
          v72 = a11 >> 62;
          v34 = a16;
          if ((a11 >> 62) <= 1)
          {
            v36 = a20;
            v35 = a12;
            v23 = a10;
            if (v72 && __OFSUB__(HIDWORD(a10), a10))
            {
              goto LABEL_584;
            }

LABEL_215:
            if (v35)
            {
              v84 = v24 >> 62;
              if ((v24 >> 62) > 1)
              {
                if (v84 == 2 && __OFSUB__(*(v25 + 24), *(v25 + 16)))
                {
                  __break(1u);
LABEL_223:
                  if (!__OFSUB__(HIDWORD(v25), v25))
                  {
                    goto LABEL_224;
                  }

LABEL_585:
                  __break(1u);
                  goto LABEL_586;
                }
              }

              else if (v84)
              {
                goto LABEL_250;
              }

LABEL_251:
              if (v34)
              {
                v88 = v22 >> 62;
                if ((v22 >> 62) <= 1)
                {
                  if (v88)
                  {
LABEL_312:
                    if (__OFSUB__(HIDWORD(a18), a18))
                    {
LABEL_596:
                      __break(1u);
LABEL_597:
                      __break(1u);
                      goto LABEL_598;
                    }
                  }

LABEL_313:
                  if (!v36)
                  {
LABEL_657:
                    __break(1u);
                    goto LABEL_658;
                  }

                  goto LABEL_314;
                }

                if (v88 != 2 || !__OFSUB__(*(a18 + 24), *(a18 + 16)))
                {
                  goto LABEL_313;
                }

                __break(1u);
LABEL_259:
                v25 = v132;
                if (!__OFSUB__(HIDWORD(v133), v133))
                {
LABEL_266:
                  v23 = v133;
                  if (v35)
                  {
                    v89 = v24 >> 62;
                    if ((v24 >> 62) <= 1)
                    {
                      if (v89 && __OFSUB__(HIDWORD(v25), v25))
                      {
                        goto LABEL_597;
                      }

                      goto LABEL_316;
                    }

                    if (v89 != 2 || !__OFSUB__(*(v25 + 24), *(v25 + 16)))
                    {
LABEL_316:
                      if (!v34)
                      {
LABEL_658:
                        __break(1u);
                        goto LABEL_659;
                      }

                      v98 = v22 >> 62;
                      if ((v22 >> 62) <= 1)
                      {
                        if (!v98)
                        {
LABEL_407:
                          if (!v36)
                          {
LABEL_667:
                            __break(1u);
                            goto LABEL_668;
                          }

                          if (v28)
                          {
                            goto LABEL_509;
                          }

                          __break(1u);
                          goto LABEL_410;
                        }

LABEL_406:
                        if (__OFSUB__(HIDWORD(a18), a18))
                        {
LABEL_606:
                          __break(1u);
                          goto LABEL_607;
                        }

                        goto LABEL_407;
                      }

                      if (v98 != 2 || !__OFSUB__(*(a18 + 24), *(a18 + 16)))
                      {
                        goto LABEL_407;
                      }

                      __break(1u);
                      goto LABEL_324;
                    }

                    __break(1u);
                    goto LABEL_274;
                  }

LABEL_650:
                  __break(1u);
                  goto LABEL_651;
                }

                goto LABEL_589;
              }

LABEL_649:
              __break(1u);
              goto LABEL_650;
            }

            goto LABEL_641;
          }

          goto LABEL_121;
        }

        goto LABEL_632;
      }

      v132 = a14;
      v133 = a10;
      v131 = a15;
      v24 = a19;
      v50 = *(a5 + 16);
      v51 = sub_1C0D7812C();
      if (!v51)
      {
LABEL_165:
        v28 = 0;
LABEL_166:
        v32 = v26;
        sub_1C0D7814C();
        result = ccrng();
        if (result)
        {
          v22 = v24;
          v34 = v23;
          v79 = v26 >> 62;
          v36 = a20;
          v35 = a12;
          if ((v26 >> 62) <= 1)
          {
            v24 = v131;
            if (v79)
            {
              goto LABEL_292;
            }

LABEL_294:
            v25 = v132;
            goto LABEL_295;
          }

          v24 = v131;
          if (v79 != 2)
          {
            goto LABEL_294;
          }

          v25 = v132;
          if (!__OFSUB__(*(v133 + 24), *(v133 + 16)))
          {
            goto LABEL_295;
          }

          __break(1u);
          goto LABEL_174;
        }

        goto LABEL_636;
      }

      v52 = v51;
      v53 = sub_1C0D7815C();
      if (!__OFSUB__(v50, v53))
      {
        v28 = v50 - v53 + v52;
        goto LABEL_166;
      }

      goto LABEL_574;
    }

    if (!v45)
    {
      v32 = a11;
      v26 = a6;
      result = ccrng();
      if (result)
      {
        v46 = a11 >> 62;
        v34 = a16;
        if ((a11 >> 62) <= 1)
        {
          v36 = a20;
          v35 = a12;
          v23 = a10;
          if (!v46 || !__OFSUB__(HIDWORD(a10), a10))
          {
            goto LABEL_199;
          }

          goto LABEL_582;
        }

LABEL_113:
        v36 = a20;
        v35 = a12;
        v23 = a10;
        if (v46 != 2)
        {
          goto LABEL_199;
        }

        v71 = *(a10 + 24);
        if (!__OFSUB__(v71, *(a10 + 16)))
        {
          goto LABEL_199;
        }

        __break(1u);
LABEL_117:
        v36 = a20;
        v35 = a12;
        v23 = a10;
        if (v71 != 2)
        {
          goto LABEL_207;
        }

        v72 = *(a10 + 24);
        if (!__OFSUB__(v72, *(a10 + 16)))
        {
          goto LABEL_207;
        }

        __break(1u);
LABEL_121:
        v36 = a20;
        v35 = a12;
        v23 = a10;
        if (v72 != 2)
        {
          goto LABEL_215;
        }

        v49 = *(a10 + 24);
        if (!__OFSUB__(v49, *(a10 + 16)))
        {
          goto LABEL_215;
        }

        __break(1u);
        goto LABEL_125;
      }

      goto LABEL_630;
    }

    v132 = a14;
    v133 = a10;
    v131 = a15;
    v67 = a5;
    if (a5 <= a5 >> 32)
    {
      v24 = a19;
      v68 = sub_1C0D7812C();
      if (!v68)
      {
LABEL_174:
        v28 = 0;
LABEL_175:
        sub_1C0D7814C();
        result = ccrng();
        if (!result)
        {
LABEL_645:
          __break(1u);
          goto LABEL_646;
        }

        v32 = v26;
        v22 = v24;
        v34 = v23;
        v80 = v26 >> 62;
        v36 = a20;
        v35 = a12;
        if ((v26 >> 62) > 1)
        {
          v24 = v131;
          if (v80 == 2)
          {
            v25 = v132;
            if (!__OFSUB__(*(v133 + 24), *(v133 + 16)))
            {
              goto LABEL_398;
            }

            __break(1u);
            goto LABEL_183;
          }
        }

        else
        {
          v24 = v131;
          if (v80)
          {
LABEL_395:
            v25 = v132;
            if (__OFSUB__(HIDWORD(v133), v133))
            {
LABEL_605:
              __break(1u);
              goto LABEL_606;
            }

LABEL_398:
            v23 = v133;
            if (!v35)
            {
LABEL_666:
              __break(1u);
              goto LABEL_667;
            }

            v106 = v24 >> 62;
            if ((v24 >> 62) > 1)
            {
              if (v106 == 2 && __OFSUB__(*(v25 + 24), *(v25 + 16)))
              {
                __break(1u);
                goto LABEL_406;
              }
            }

            else if (v106)
            {
LABEL_458:
              if (__OFSUB__(HIDWORD(v25), v25))
              {
LABEL_614:
                __break(1u);
                goto LABEL_615;
              }
            }

            if (!v34)
            {
LABEL_676:
              __break(1u);
              goto LABEL_677;
            }

            v111 = v22 >> 62;
            if ((v22 >> 62) <= 1)
            {
              if (v111 && __OFSUB__(HIDWORD(a18), a18))
              {
                goto LABEL_621;
              }

              goto LABEL_507;
            }

            if (v111 != 2 || !__OFSUB__(*(a18 + 24), *(a18 + 16)))
            {
LABEL_507:
              if (!v36)
              {
LABEL_684:
                __break(1u);
                goto LABEL_685;
              }

              if (!v28)
              {
LABEL_686:
                __break(1u);
                goto LABEL_687;
              }

              goto LABEL_509;
            }

            __break(1u);
            goto LABEL_467;
          }
        }

        v25 = v132;
        goto LABEL_398;
      }

      v69 = v68;
      v70 = sub_1C0D7815C();
      if (!__OFSUB__(v67, v70))
      {
        v28 = v67 - v70 + v69;
        goto LABEL_175;
      }

      goto LABEL_577;
    }

    goto LABEL_570;
  }

  v132 = a14;
  v133 = a10;
  v25 = a15;
  v131 = v20;
  v37 = *(a1 + 16);
  v38 = sub_1C0D7812C();
  if (v38)
  {
    v39 = v38;
    v40 = sub_1C0D7815C();
    if (__OFSUB__(v37, v40))
    {
      goto LABEL_567;
    }

    v21 = v37 - v40 + v39;
  }

  else
  {
    v21 = 0;
  }

  sub_1C0D7814C();
  v28 = a6;
  v54 = a6 >> 62;
  if ((a6 >> 62) > 1)
  {
    if (v54 != 2)
    {
      result = ccrng();
      if (result)
      {
        v22 = a19;
        v32 = a11;
        v34 = a16;
        v75 = a11 >> 62;
        v24 = a15;
        v36 = a20;
        v35 = a12;
        if ((a11 >> 62) <= 1)
        {
          v25 = a14;
          if (v75)
          {
            v23 = a10;
            if (__OFSUB__(HIDWORD(a10), a10))
            {
LABEL_591:
              __break(1u);
              goto LABEL_592;
            }

LABEL_284:
            if (v35)
            {
              v91 = v24 >> 62;
              if ((v24 >> 62) <= 1)
              {
                if (v91)
                {
LABEL_333:
                  if (__OFSUB__(HIDWORD(v25), v25))
                  {
LABEL_599:
                    __break(1u);
                    goto LABEL_600;
                  }
                }

LABEL_334:
                if (!v34)
                {
LABEL_660:
                  __break(1u);
                  goto LABEL_661;
                }

                v100 = v22 >> 62;
                if ((v22 >> 62) <= 1)
                {
                  if (v100)
                  {
LABEL_414:
                    if (__OFSUB__(HIDWORD(a18), a18))
                    {
LABEL_608:
                      __break(1u);
                      goto LABEL_609;
                    }
                  }

LABEL_415:
                  if (!v36)
                  {
LABEL_669:
                    __break(1u);
                    goto LABEL_670;
                  }

                  if (v21)
                  {
                    goto LABEL_505;
                  }

                  __break(1u);
                  goto LABEL_418;
                }

                if (v100 != 2 || !__OFSUB__(*(a18 + 24), *(a18 + 16)))
                {
                  goto LABEL_415;
                }

                __break(1u);
                goto LABEL_342;
              }

              if (v91 != 2 || !__OFSUB__(*(v25 + 24), *(v25 + 16)))
              {
                goto LABEL_334;
              }

              __break(1u);
LABEL_292:
              v25 = v132;
              if (!__OFSUB__(HIDWORD(v133), v133))
              {
LABEL_295:
                v23 = v133;
                if (v35)
                {
                  v92 = v24 >> 62;
                  if ((v24 >> 62) > 1)
                  {
                    if (v92 == 2 && __OFSUB__(*(v25 + 24), *(v25 + 16)))
                    {
                      __break(1u);
LABEL_303:
                      if (!__OFSUB__(HIDWORD(a18), a18))
                      {
                        goto LABEL_304;
                      }

LABEL_593:
                      __break(1u);
LABEL_594:
                      __break(1u);
LABEL_595:
                      __break(1u);
                      goto LABEL_596;
                    }

                    goto LABEL_343;
                  }

                  if (!v92)
                  {
LABEL_343:
                    if (!v34)
                    {
LABEL_661:
                      __break(1u);
                      goto LABEL_662;
                    }

                    v101 = v22 >> 62;
                    if ((v22 >> 62) <= 1)
                    {
                      if (v101)
                      {
LABEL_418:
                        if (__OFSUB__(HIDWORD(a18), a18))
                        {
LABEL_609:
                          __break(1u);
                          goto LABEL_610;
                        }
                      }

LABEL_419:
                      if (!v36)
                      {
LABEL_670:
                        __break(1u);
                        goto LABEL_671;
                      }

                      if (v28)
                      {
                        goto LABEL_509;
                      }

                      __break(1u);
                      goto LABEL_422;
                    }

                    if (v101 != 2 || !__OFSUB__(*(a18 + 24), *(a18 + 16)))
                    {
                      goto LABEL_419;
                    }

                    __break(1u);
                    goto LABEL_351;
                  }

LABEL_342:
                  if (__OFSUB__(HIDWORD(v25), v25))
                  {
LABEL_600:
                    __break(1u);
                    goto LABEL_601;
                  }

                  goto LABEL_343;
                }

                goto LABEL_653;
              }

LABEL_592:
              __break(1u);
              goto LABEL_593;
            }

LABEL_652:
            __break(1u);
LABEL_653:
            __break(1u);
            goto LABEL_654;
          }

          goto LABEL_283;
        }

LABEL_133:
        v25 = v132;
        if (v75 == 2)
        {
          v23 = v133;
          v58 = *(v133 + 24);
          if (!__OFSUB__(v58, *(v133 + 16)))
          {
            goto LABEL_284;
          }

          __break(1u);
          goto LABEL_137;
        }

LABEL_283:
        v23 = v133;
        goto LABEL_284;
      }

LABEL_635:
      __break(1u);
LABEL_636:
      __break(1u);
      goto LABEL_637;
    }

    v56 = *(a5 + 16);
    v28 = sub_1C0D7812C();
    if (v28)
    {
      v57 = sub_1C0D7815C();
      if (__OFSUB__(v56, v57))
      {
LABEL_575:
        __break(1u);
LABEL_576:
        __break(1u);
LABEL_577:
        __break(1u);
        goto LABEL_578;
      }

      v28 += v56 - v57;
    }

    v32 = a11;
    sub_1C0D7814C();
    result = ccrng();
    if (!result)
    {
LABEL_637:
      __break(1u);
      goto LABEL_638;
    }

    v22 = a19;
    v34 = a16;
    v58 = a11 >> 62;
    v31 = a20;
    v35 = a12;
    if ((a11 >> 62) <= 1)
    {
      v24 = a15;
      if (v58)
      {
LABEL_351:
        v25 = v132;
        if (__OFSUB__(HIDWORD(v133), v133))
        {
LABEL_601:
          __break(1u);
          goto LABEL_602;
        }

        goto LABEL_354;
      }

      goto LABEL_353;
    }

LABEL_137:
    v24 = v25;
    if (v58 == 2)
    {
      v25 = v132;
      v60 = *(v133 + 24);
      if (!__OFSUB__(v60, *(v133 + 16)))
      {
        goto LABEL_354;
      }

      __break(1u);
      goto LABEL_141;
    }

LABEL_353:
    v25 = v132;
LABEL_354:
    v23 = v133;
    if (!v35)
    {
LABEL_662:
      __break(1u);
      goto LABEL_663;
    }

    v102 = v24 >> 62;
    if ((v24 >> 62) <= 1)
    {
      if (v102)
      {
LABEL_422:
        if (__OFSUB__(HIDWORD(v25), v25))
        {
LABEL_610:
          __break(1u);
          goto LABEL_611;
        }
      }

LABEL_423:
      if (!v34)
      {
LABEL_672:
        __break(1u);
        goto LABEL_673;
      }

      v107 = v22 >> 62;
      if ((v22 >> 62) <= 1)
      {
        if (!v107)
        {
          goto LABEL_490;
        }

        goto LABEL_489;
      }

      if (v107 != 2 || !__OFSUB__(*(a18 + 24), *(a18 + 16)))
      {
        goto LABEL_490;
      }

      __break(1u);
      goto LABEL_431;
    }

    if (v102 != 2 || !__OFSUB__(*(v25 + 24), *(v25 + 16)))
    {
      goto LABEL_423;
    }

    __break(1u);
    goto LABEL_362;
  }

  if (!v54)
  {
    v22 = a19;
    result = ccrng();
    if (result)
    {
      v32 = a11;
      v34 = a16;
      v55 = a11 >> 62;
      v24 = a15;
      v36 = a20;
      v35 = a12;
      if ((a11 >> 62) <= 1)
      {
        v25 = a14;
        if (v55)
        {
          v23 = a10;
          if (__OFSUB__(HIDWORD(a10), a10))
          {
LABEL_590:
            __break(1u);
            goto LABEL_591;
          }

LABEL_275:
          if (v35)
          {
            v90 = v24 >> 62;
            if ((v24 >> 62) <= 1)
            {
              if (v90)
              {
LABEL_324:
                if (__OFSUB__(HIDWORD(v25), v25))
                {
LABEL_598:
                  __break(1u);
                  goto LABEL_599;
                }
              }

LABEL_325:
              if (!v34)
              {
LABEL_659:
                __break(1u);
                goto LABEL_660;
              }

              v99 = v22 >> 62;
              if ((v22 >> 62) <= 1)
              {
                if (v99)
                {
LABEL_410:
                  if (__OFSUB__(HIDWORD(a18), a18))
                  {
LABEL_607:
                    __break(1u);
                    goto LABEL_608;
                  }
                }

LABEL_411:
                if (!v36)
                {
LABEL_668:
                  __break(1u);
                  goto LABEL_669;
                }

                if (v21)
                {
                  goto LABEL_505;
                }

                __break(1u);
                goto LABEL_414;
              }

              if (v99 != 2 || !__OFSUB__(*(a18 + 24), *(a18 + 16)))
              {
                goto LABEL_411;
              }

              __break(1u);
              goto LABEL_333;
            }

            if (v90 != 2 || !__OFSUB__(*(v25 + 24), *(v25 + 16)))
            {
              goto LABEL_325;
            }

            __break(1u);
            goto LABEL_283;
          }

LABEL_651:
          __break(1u);
          goto LABEL_652;
        }

        goto LABEL_274;
      }

LABEL_129:
      v25 = v132;
      if (v55 == 2)
      {
        v23 = v133;
        v75 = *(v133 + 24);
        if (!__OFSUB__(v75, *(v133 + 16)))
        {
          goto LABEL_275;
        }

        __break(1u);
        goto LABEL_133;
      }

LABEL_274:
      v23 = v133;
      goto LABEL_275;
    }

    goto LABEL_634;
  }

  if (a5 > a5 >> 32)
  {
    goto LABEL_571;
  }

  v28 = sub_1C0D7812C();
  if (v28)
  {
    v73 = sub_1C0D7815C();
    if (__OFSUB__(a5, v73))
    {
LABEL_579:
      __break(1u);
      goto LABEL_580;
    }

    v28 += a5 - v73;
  }

  v32 = a11;
  sub_1C0D7814C();
  result = ccrng();
  if (!result)
  {
LABEL_655:
    __break(1u);
LABEL_656:
    __break(1u);
    goto LABEL_657;
  }

  v22 = a19;
  v34 = a16;
  v74 = a11 >> 62;
  v31 = a20;
  v35 = a12;
  if ((a11 >> 62) > 1)
  {
    goto LABEL_157;
  }

  v24 = a15;
  if (!v74)
  {
    goto LABEL_480;
  }

  v25 = a14;
  if (__OFSUB__(HIDWORD(a10), a10))
  {
LABEL_616:
    __break(1u);
    goto LABEL_617;
  }

LABEL_481:
  v23 = v133;
  if (!v35)
  {
LABEL_678:
    __break(1u);
    goto LABEL_679;
  }

  v113 = v24 >> 62;
  if ((v24 >> 62) <= 1)
  {
    if (!v113)
    {
      goto LABEL_521;
    }

    goto LABEL_520;
  }

  if (v113 == 2 && __OFSUB__(*(v25 + 24), *(v25 + 16)))
  {
    __break(1u);
LABEL_489:
    if (__OFSUB__(HIDWORD(a18), a18))
    {
LABEL_617:
      __break(1u);
      goto LABEL_618;
    }

LABEL_490:
    if (!v31)
    {
LABEL_679:
      __break(1u);
      goto LABEL_680;
    }

    if (!v21)
    {
LABEL_680:
      __break(1u);
      goto LABEL_681;
    }

    if (!v28)
    {
      __break(1u);
LABEL_494:
      if (__OFSUB__(HIDWORD(a18), a18))
      {
LABEL_618:
        __break(1u);
        goto LABEL_619;
      }

      goto LABEL_495;
    }

LABEL_563:
    v125 = *a9;
    v126 = a9[1];
    v130 = a9[3];
    *a7 = ccspake_prover_initialize();
    sub_1C0CF448C(a3, a4);
    v116 = a5;
    v117 = a6;
    goto LABEL_564;
  }

LABEL_521:
  if (!v34)
  {
LABEL_688:
    __break(1u);
    goto LABEL_689;
  }

  v122 = v22 >> 62;
  if ((v22 >> 62) > 1)
  {
    if (v122 != 2 || !__OFSUB__(*(a18 + 24), *(a18 + 16)))
    {
      goto LABEL_546;
    }

    __break(1u);
    goto LABEL_529;
  }

  if (v122)
  {
LABEL_545:
    if (__OFSUB__(HIDWORD(a18), a18))
    {
LABEL_626:
      __break(1u);
      goto LABEL_627;
    }
  }

LABEL_546:
  if (!v31)
  {
LABEL_691:
    __break(1u);
    goto LABEL_692;
  }

  if (!v21)
  {
LABEL_693:
    __break(1u);
    goto LABEL_694;
  }

  if (v28)
  {
    goto LABEL_563;
  }

  __break(1u);
LABEL_550:
  if (__OFSUB__(HIDWORD(v25), v25))
  {
LABEL_627:
    __break(1u);
LABEL_628:
    __break(1u);
  }

LABEL_551:
  if (!v34)
  {
LABEL_694:
    __break(1u);
    goto LABEL_695;
  }

  v124 = v22 >> 62;
  if ((v22 >> 62) > 1)
  {
    if (v124 != 2 || !__OFSUB__(*(a18 + 24), *(a18 + 16)))
    {
      goto LABEL_560;
    }

    __break(1u);
  }

  else if (!v124)
  {
    goto LABEL_560;
  }

  if (__OFSUB__(HIDWORD(a18), a18))
  {
    goto LABEL_628;
  }

LABEL_560:
  if (!v31)
  {
LABEL_695:
    __break(1u);
    goto LABEL_696;
  }

  if (!v21)
  {
LABEL_696:
    __break(1u);
    goto LABEL_697;
  }

  if (v28)
  {
    goto LABEL_563;
  }

LABEL_697:
  __break(1u);
  return result;
}

uint64_t sub_1C0D4BBF8(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, unint64_t a17, void (*a18)(uint64_t, unint64_t, uint64_t, unint64_t, uint64_t, unint64_t, uint64_t, uint64_t, uint64_t, uint64_t, unint64_t, uint64_t, uint64_t, uint64_t, unint64_t, uint64_t, uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v235[2] = *MEMORY[0x1E69E9840];
  v22 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v22 == 2)
    {
      v206 = *(a1 + 24);
      v216 = *(a1 + 16);
      sub_1C0CF6468(a3, a4);
      sub_1C0CF6468(a5, a6);
      sub_1C0CF6468(a7, a8);
      sub_1C0CF6468(a12, a13);
      sub_1C0CF6468(a16, a17);
      sub_1C0CF6468(a3, a4);
      sub_1C0CF6468(a5, a6);
      sub_1C0CF6468(a7, a8);
      sub_1C0CF6468(a12, a13);
      sub_1C0CF6468(a16, a17);
      v225 = a4;
      sub_1C0CF6468(a3, a4);
      sub_1C0CF6468(a5, a6);
      sub_1C0CF6468(a7, a8);
      sub_1C0CF6468(a12, a13);
      sub_1C0CF6468(a16, a17);
      v40 = sub_1C0D7812C();
      if (v40)
      {
        v41 = v40;
        v42 = sub_1C0D7815C();
        v43 = v216;
        if (__OFSUB__(v216, v42))
        {
LABEL_144:
          __break(1u);
          goto LABEL_145;
        }

        v44 = v216 - v42 + v41;
      }

      else
      {
        v44 = 0;
        v43 = v216;
      }

      v73 = v206 - v43;
      if (!__OFSUB__(v206, v43))
      {
        v74 = sub_1C0D7814C();
        if (v74 >= v73)
        {
          v75 = v73;
        }

        else
        {
          v75 = v74;
        }

        v76 = v75 + v44;
        if (v44)
        {
          v77 = v76;
        }

        else
        {
          v77 = 0;
        }

        v78 = a4 >> 62;
        v220 = v77;
        if ((a4 >> 62) > 1)
        {
          v30 = a8;
          if (v78 == 2)
          {
            v195 = *(a3 + 24);
            v198 = *(a3 + 16);
            sub_1C0CF6468(a12, a13);
            sub_1C0CF6468(a16, a17);
            sub_1C0CF6468(a5, a6);
            sub_1C0CF6468(a7, a8);
            sub_1C0CF6468(a3, a4);
            sub_1C0CF6468(a5, a6);
            sub_1C0CF6468(a7, a8);
            sub_1C0CF6468(a12, a13);
            sub_1C0CF6468(a16, a17);
            sub_1C0CF6468(a3, a4);
            sub_1C0CF6468(a3, a4);
            sub_1C0CF6468(a5, a6);
            sub_1C0CF6468(a7, a8);
            sub_1C0CF6468(a12, a13);
            sub_1C0CF6468(a16, a17);
            sub_1C0CF6468(a3, a4);
            sub_1C0CF6468(a5, a6);
            sub_1C0CF6468(a7, a8);
            sub_1C0CF6468(a12, a13);
            sub_1C0CF6468(a16, a17);
            v81 = sub_1C0D7812C();
            if (v81)
            {
              v82 = v81;
              v83 = a12;
              v84 = sub_1C0D7815C();
              v85 = v198;
              if (__OFSUB__(v198, v84))
              {
LABEL_158:
                __break(1u);
                goto LABEL_159;
              }

              v86 = v198 - v84 + v82;
            }

            else
            {
              v83 = a12;
              v86 = 0;
              v85 = v198;
            }

            v147 = v195 - v85;
            if (__OFSUB__(v195, v85))
            {
              goto LABEL_152;
            }

            v148 = sub_1C0D7814C();
            if (v148 >= v147)
            {
              v149 = v147;
            }

            else
            {
              v149 = v148;
            }

            v150 = v149 + v86;
            if (!v86)
            {
              v150 = 0;
            }

            v202 = v150;
            sub_1C0CF6468(a3, v225);
            sub_1C0CF6468(a5, a6);
            v30 = a8;
            sub_1C0CF6468(a7, a8);
            sub_1C0CF6468(v83, a13);
            sub_1C0CF6468(a16, a17);
            a18(a5, a6, a5, a6, a7, a8, a9, a10, a11, v83, a13, a14, a15, a16, a17, v44, v220, a3, v225, v86, v202);
            sub_1C0CF448C(a5, a6);
            sub_1C0CF448C(a7, a8);
            sub_1C0CF448C(v83, a13);
            sub_1C0CF448C(a16, a17);
            sub_1C0CF448C(a3, v225);
            sub_1C0CF448C(a5, a6);
            sub_1C0CF448C(a7, a8);
            sub_1C0CF448C(v83, a13);
            sub_1C0CF448C(a16, a17);
            sub_1C0CF448C(a3, v225);
            sub_1C0CF448C(a5, a6);
            sub_1C0CF448C(a7, a8);
            sub_1C0CF448C(a12, a13);
            sub_1C0CF448C(a16, a17);
            sub_1C0CF448C(a3, v225);
            sub_1C0CF448C(a5, a6);
            v79 = a7;
            v80 = a7;
          }

          else
          {
            memset(v235, 0, 14);
            sub_1C0CF6468(a3, a4);
            sub_1C0CF6468(a5, a6);
            sub_1C0CF6468(a7, a8);
            sub_1C0CF6468(a12, a13);
            sub_1C0CF6468(a16, a17);
            sub_1C0CF6468(a5, a6);
            sub_1C0CF6468(a7, a8);
            sub_1C0CF6468(a12, a13);
            sub_1C0CF6468(a16, a17);
            a18(a5, a6, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, v44, v220, a3, a4, v235, v235);
            sub_1C0CF448C(a5, a6);
            v79 = a7;
            v80 = a7;
          }
        }

        else if (v78)
        {
          v117 = a3;
          v201 = (v117 >> 32) - v117;
          if (v117 >> 32 < v117)
          {
LABEL_150:
            __break(1u);
            goto LABEL_151;
          }

          sub_1C0CF6468(a12, a13);
          sub_1C0CF6468(a16, a17);
          sub_1C0CF6468(a5, a6);
          sub_1C0CF6468(a7, a8);
          sub_1C0CF6468(a3, a4);
          sub_1C0CF6468(a5, a6);
          sub_1C0CF6468(a7, a8);
          sub_1C0CF6468(a12, a13);
          sub_1C0CF6468(a16, a17);
          sub_1C0CF6468(a3, a4);
          sub_1C0CF6468(a3, a4);
          sub_1C0CF6468(a5, a6);
          sub_1C0CF6468(a7, a8);
          sub_1C0CF6468(a12, a13);
          sub_1C0CF6468(a16, a17);
          sub_1C0CF6468(a3, a4);
          sub_1C0CF6468(a5, a6);
          sub_1C0CF6468(a7, a8);
          sub_1C0CF6468(a12, a13);
          sub_1C0CF6468(a16, a17);
          v118 = sub_1C0D7812C();
          if (v118)
          {
            v119 = v118;
            v120 = sub_1C0D7815C();
            if (__OFSUB__(a3, v120))
            {
LABEL_160:
              __break(1u);
LABEL_161:
              __break(1u);
            }

            v121 = a3 - v120 + v119;
          }

          else
          {
            v121 = 0;
          }

          v158 = sub_1C0D7814C();
          v159 = v201;
          if (v158 < v201)
          {
            v159 = v158;
          }

          v160 = v159 + v121;
          if (!v121)
          {
            v160 = 0;
          }

          v203 = v160;
          sub_1C0CF6468(a3, a4);
          sub_1C0CF6468(a5, a6);
          v30 = a8;
          sub_1C0CF6468(a7, a8);
          sub_1C0CF6468(a12, a13);
          sub_1C0CF6468(a16, a17);
          a18(a5, a6, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, v44, v220, a3, a4, v121, v203);
          sub_1C0CF448C(a5, a6);
          sub_1C0CF448C(a7, a8);
          sub_1C0CF448C(a12, a13);
          sub_1C0CF448C(a16, a17);
          sub_1C0CF448C(a3, a4);
          sub_1C0CF448C(a5, a6);
          sub_1C0CF448C(a7, a8);
          sub_1C0CF448C(a12, a13);
          sub_1C0CF448C(a16, a17);
          sub_1C0CF448C(a3, a4);
          sub_1C0CF448C(a5, a6);
          sub_1C0CF448C(a7, a8);
          sub_1C0CF448C(a12, a13);
          sub_1C0CF448C(a16, a17);
          sub_1C0CF448C(a3, a4);
          sub_1C0CF448C(a5, a6);
          v79 = a7;
          v80 = a7;
        }

        else
        {
          v235[0] = a3;
          LODWORD(v235[1]) = a4;
          WORD2(v235[1]) = WORD2(a4);
          sub_1C0CF6468(a3, a4);
          sub_1C0CF6468(a5, a6);
          sub_1C0CF6468(a7, a8);
          sub_1C0CF6468(a12, a13);
          sub_1C0CF6468(a16, a17);
          sub_1C0CF6468(a5, a6);
          sub_1C0CF6468(a7, a8);
          sub_1C0CF6468(a12, a13);
          sub_1C0CF6468(a16, a17);
          v30 = a8;
          a18(a5, a6, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, v44, v220, a3, a4, v235, v235 + BYTE6(a4));
          sub_1C0CF448C(a5, a6);
          v79 = a7;
          v80 = a7;
        }

        sub_1C0CF448C(v80, v30);
        sub_1C0CF448C(a12, a13);
        sub_1C0CF448C(a16, a17);
        sub_1C0CF448C(a3, v225);
        sub_1C0CF448C(a3, v225);
        sub_1C0CF448C(a5, a6);
        sub_1C0CF448C(v79, v30);
        v161 = a13;
        sub_1C0CF448C(a12, a13);
        v28 = a17;
        v29 = v79;
        v27 = v225;
        sub_1C0CF448C(a16, a17);
        sub_1C0CF448C(a3, v225);
        sub_1C0CF448C(a5, a6);
        sub_1C0CF448C(v29, v30);
        v145 = a12;
LABEL_140:
        v146 = v161;
        goto LABEL_141;
      }

LABEL_143:
      __break(1u);
      goto LABEL_144;
    }

    v49 = a4 >> 62;
    memset(v235, 0, 14);
    if ((a4 >> 62) > 1)
    {
      if (v49 == 2)
      {
        v209 = *(a3 + 24);
        v219 = *(a3 + 16);
        sub_1C0CF6468(a5, a6);
        sub_1C0CF6468(a7, a8);
        sub_1C0CF6468(a12, a13);
        sub_1C0CF6468(a16, a17);
        sub_1C0CF6468(a3, a4);
        sub_1C0CF6468(a5, a6);
        sub_1C0CF6468(a7, a8);
        sub_1C0CF6468(a12, a13);
        sub_1C0CF6468(a16, a17);
        sub_1C0CF6468(a3, a4);
        sub_1C0CF6468(a5, a6);
        sub_1C0CF6468(a7, a8);
        sub_1C0CF6468(a12, a13);
        sub_1C0CF6468(a16, a17);
        sub_1C0CF6468(a3, a4);
        sub_1C0CF6468(a12, a13);
        sub_1C0CF6468(a16, a17);
        sub_1C0CF6468(a5, a6);
        sub_1C0CF6468(a7, a8);
        sub_1C0CF6468(a3, a4);
        sub_1C0CF6468(a3, a4);
        sub_1C0CF6468(a5, a6);
        sub_1C0CF6468(a7, a8);
        sub_1C0CF6468(a12, a13);
        sub_1C0CF6468(a16, a17);
        sub_1C0CF6468(a3, a4);
        sub_1C0CF6468(a5, a6);
        v66 = a8;
        sub_1C0CF6468(a7, a8);
        sub_1C0CF6468(a12, a13);
        sub_1C0CF6468(a16, a17);
        v67 = sub_1C0D7812C();
        if (v67)
        {
          v68 = v67;
          v69 = a13;
          v70 = sub_1C0D7815C();
          v71 = v219;
          if (__OFSUB__(v219, v70))
          {
LABEL_155:
            __break(1u);
LABEL_156:
            __break(1u);
            goto LABEL_157;
          }

          v66 = a8;
          v72 = v219 - v70 + v68;
        }

        else
        {
          v69 = a13;
          v72 = 0;
          v71 = v219;
        }

        v139 = v209 - v71;
        if (__OFSUB__(v209, v71))
        {
          goto LABEL_149;
        }

        v140 = sub_1C0D7814C();
        if (v140 >= v139)
        {
          v141 = v139;
        }

        else
        {
          v141 = v140;
        }

        v142 = v141 + v72;
        if (!v72)
        {
          v142 = 0;
        }

        v224 = v142;
        v143 = a4;
        v228 = a4;
        sub_1C0CF6468(a3, a4);
        sub_1C0CF6468(a5, a6);
        sub_1C0CF6468(a7, v66);
        v144 = v69;
        sub_1C0CF6468(a12, v69);
        v51 = a16;
        v28 = a17;
        sub_1C0CF6468(a16, a17);
        v29 = a7;
        a18(a5, a6, a5, a6, a7, v66, a9, a10, a11, a12, v144, a14, a15, a16, a17, v235, v235, a3, v143, v72, v224);
        sub_1C0CF448C(a5, a6);
        sub_1C0CF448C(a7, v66);
        sub_1C0CF448C(a12, v144);
        sub_1C0CF448C(a16, a17);
        sub_1C0CF448C(a3, v228);
        sub_1C0CF448C(a5, a6);
        sub_1C0CF448C(a7, v66);
        sub_1C0CF448C(a12, a13);
        sub_1C0CF448C(a16, a17);
        v30 = v66;
        sub_1C0CF448C(a3, v228);
        v27 = v228;
        sub_1C0CF448C(a5, a6);
        sub_1C0CF448C(a7, v66);
        sub_1C0CF448C(a12, a13);
        goto LABEL_103;
      }

      memset(v234, 0, 14);
      sub_1C0CF6468(a12, a13);
      v116 = a3;
      v27 = a4;
      v28 = a17;
      sub_1C0CF6468(a16, a17);
      sub_1C0CF6468(a5, a6);
      sub_1C0CF6468(a7, a8);
      sub_1C0CF6468(v116, v27);
      sub_1C0CF6468(a5, a6);
      sub_1C0CF6468(a7, a8);
      sub_1C0CF6468(a12, a13);
      v51 = a16;
      sub_1C0CF6468(a16, a17);
      sub_1C0CF6468(v116, v27);
      sub_1C0CF6468(a12, a13);
      sub_1C0CF6468(a16, a17);
      sub_1C0CF6468(v116, v27);
      sub_1C0CF6468(a5, a6);
      sub_1C0CF6468(a7, a8);
      sub_1C0CF6468(a12, a13);
      sub_1C0CF6468(a16, a17);
      sub_1C0CF6468(v116, v27);
      sub_1C0CF6468(a5, a6);
      v30 = a8;
      sub_1C0CF6468(a7, a8);
      sub_1C0CF6468(a16, a17);
      v194 = v234;
      v187 = v116;
      v189 = v27;
      v182 = a16;
      v184 = a17;
      v178 = a14;
      v180 = a15;
      v176 = a13;
      v172 = a11;
      v174 = a12;
      v53 = a5;
      v54 = a6;
      v29 = a7;
      v55 = a5;
      v56 = a6;
      v57 = a7;
      v58 = a8;
    }

    else
    {
      if (v49)
      {
        v213 = a3;
        v222 = (a3 >> 32) - a3;
        if (a3 >> 32 < a3)
        {
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
          goto LABEL_150;
        }

        sub_1C0CF6468(a5, a6);
        sub_1C0CF6468(a7, a8);
        sub_1C0CF6468(a12, a13);
        sub_1C0CF6468(a16, a17);
        sub_1C0CF6468(a3, a4);
        sub_1C0CF6468(a5, a6);
        sub_1C0CF6468(a7, a8);
        sub_1C0CF6468(a12, a13);
        sub_1C0CF6468(a16, a17);
        sub_1C0CF6468(a3, a4);
        sub_1C0CF6468(a5, a6);
        sub_1C0CF6468(a7, a8);
        sub_1C0CF6468(a12, a13);
        sub_1C0CF6468(a16, a17);
        sub_1C0CF6468(a3, a4);
        sub_1C0CF6468(a12, a13);
        sub_1C0CF6468(a16, a17);
        sub_1C0CF6468(a5, a6);
        sub_1C0CF6468(a7, a8);
        sub_1C0CF6468(a3, a4);
        sub_1C0CF6468(a3, a4);
        sub_1C0CF6468(a5, a6);
        sub_1C0CF6468(a7, a8);
        sub_1C0CF6468(a12, a13);
        sub_1C0CF6468(a16, a17);
        sub_1C0CF6468(a3, a4);
        sub_1C0CF6468(a5, a6);
        sub_1C0CF6468(a7, a8);
        sub_1C0CF6468(a12, a13);
        sub_1C0CF6468(a16, a17);
        v106 = sub_1C0D7812C();
        if (v106)
        {
          v107 = sub_1C0D7815C();
          if (__OFSUB__(v213, v107))
          {
LABEL_157:
            __break(1u);
            goto LABEL_158;
          }

          v106 += v213 - v107;
        }

        v108 = sub_1C0D7814C();
        v109 = v222;
        if (v108 < v222)
        {
          v109 = v108;
        }

        v110 = v109 + v106;
        if (!v106)
        {
          v110 = 0;
        }

        v223 = v110;
        sub_1C0CF6468(a3, a4);
        sub_1C0CF6468(a5, a6);
        v30 = a8;
        sub_1C0CF6468(a7, a8);
        sub_1C0CF6468(a12, a13);
        v111 = a3;
        v27 = a4;
        v28 = a17;
        sub_1C0CF6468(a16, a17);
        v191 = v106;
        v29 = a7;
        a18(a5, a6, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, v235, v235, v111, v27, v191, v223);
        sub_1C0CF448C(a5, a6);
        sub_1C0CF448C(a7, a8);
        sub_1C0CF448C(a12, a13);
        sub_1C0CF448C(a16, a17);
        sub_1C0CF448C(a3, v27);
        sub_1C0CF448C(a5, a6);
        sub_1C0CF448C(a7, a8);
        sub_1C0CF448C(a12, a13);
        sub_1C0CF448C(a16, a17);
        sub_1C0CF448C(a3, v27);
        sub_1C0CF448C(a5, a6);
        sub_1C0CF448C(a7, a8);
        sub_1C0CF448C(a12, a13);
        v112 = a16;
LABEL_104:
        sub_1C0CF448C(v112, v28);
        sub_1C0CF448C(a3, v27);
        sub_1C0CF448C(a5, a6);
        sub_1C0CF448C(v29, v30);
        v135 = a12;
        v136 = a13;
        sub_1C0CF448C(a12, a13);
        sub_1C0CF448C(a16, v28);
        sub_1C0CF448C(a3, v27);
        sub_1C0CF448C(a3, v27);
        v137 = a5;
        v138 = a6;
        goto LABEL_105;
      }

      v234[0] = a3;
      LOWORD(v234[1]) = a4;
      BYTE2(v234[1]) = BYTE2(a4);
      BYTE3(v234[1]) = BYTE3(a4);
      BYTE4(v234[1]) = BYTE4(a4);
      BYTE5(v234[1]) = BYTE5(a4);
      v218 = v234 + BYTE6(a4);
      sub_1C0CF6468(a12, a13);
      v51 = a16;
      v52 = a3;
      v27 = a4;
      v28 = a17;
      sub_1C0CF6468(a16, a17);
      sub_1C0CF6468(a5, a6);
      sub_1C0CF6468(a7, a8);
      sub_1C0CF6468(v52, v27);
      sub_1C0CF6468(a5, a6);
      sub_1C0CF6468(a7, a8);
      sub_1C0CF6468(a12, a13);
      sub_1C0CF6468(a16, a17);
      sub_1C0CF6468(v52, v27);
      sub_1C0CF6468(a12, a13);
      sub_1C0CF6468(a16, a17);
      sub_1C0CF6468(v52, v27);
      sub_1C0CF6468(a5, a6);
      sub_1C0CF6468(a7, a8);
      sub_1C0CF6468(a12, a13);
      sub_1C0CF6468(a16, a17);
      sub_1C0CF6468(v52, v27);
      sub_1C0CF6468(a5, a6);
      sub_1C0CF6468(a7, a8);
      sub_1C0CF6468(a16, a17);
      v194 = v218;
      v29 = a7;
      v189 = v27;
      v187 = v52;
      v30 = a8;
      v184 = a17;
      v180 = a15;
      v182 = a16;
      v176 = a13;
      v178 = a14;
      v172 = a11;
      v174 = a12;
      v53 = a5;
      v54 = a6;
      v55 = a5;
      v56 = a6;
      v57 = a7;
      v58 = a8;
    }

    a18(v53, v54, v55, v56, v57, v58, a9, a10, v172, v174, v176, v178, v180, v182, v184, v235, v235, v187, v189, v234, v194);
LABEL_103:
    v112 = v51;
    goto LABEL_104;
  }

  if (v22)
  {
    if (a1 >> 32 >= a1)
    {
      v207 = a1;
      v217 = (a1 >> 32) - a1;
      sub_1C0CF6468(a3, a4);
      sub_1C0CF6468(a5, a6);
      sub_1C0CF6468(a7, a8);
      sub_1C0CF6468(a12, a13);
      sub_1C0CF6468(a16, a17);
      sub_1C0CF6468(a3, a4);
      sub_1C0CF6468(a5, a6);
      sub_1C0CF6468(a7, a8);
      sub_1C0CF6468(a12, a13);
      sub_1C0CF6468(a16, a17);
      sub_1C0CF6468(a3, a4);
      sub_1C0CF6468(a5, a6);
      sub_1C0CF6468(a7, a8);
      sub_1C0CF6468(a12, a13);
      sub_1C0CF6468(a16, a17);
      v45 = sub_1C0D7812C();
      if (!v45)
      {
        v48 = 0;
LABEL_41:
        v87 = sub_1C0D7814C();
        v88 = v217;
        if (v87 < v217)
        {
          v88 = v87;
        }

        v89 = v88 + v48;
        if (v48)
        {
          v90 = v89;
        }

        else
        {
          v90 = 0;
        }

        v91 = a4 >> 62;
        v210 = v48;
        v221 = v90;
        if ((a4 >> 62) > 1)
        {
          if (v91 != 2)
          {
            memset(v235, 0, 14);
            sub_1C0CF6468(a3, a4);
            sub_1C0CF6468(a5, a6);
            sub_1C0CF6468(a7, a8);
            sub_1C0CF6468(a12, a13);
            sub_1C0CF6468(a16, a17);
            sub_1C0CF6468(a5, a6);
            sub_1C0CF6468(a7, a8);
            sub_1C0CF6468(a12, a13);
            sub_1C0CF6468(a16, a17);
            v28 = a17;
            a18(a5, a6, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, v48, v221, a3, a4, v235, v235);
            sub_1C0CF448C(a5, a6);
            v29 = a7;
            v30 = a8;
            sub_1C0CF448C(a7, a8);
            v27 = a4;
LABEL_139:
            v161 = a13;
            sub_1C0CF448C(a12, a13);
            sub_1C0CF448C(a16, v28);
            sub_1C0CF448C(a3, v27);
            sub_1C0CF448C(a3, v27);
            sub_1C0CF448C(a5, a6);
            sub_1C0CF448C(v29, v30);
            sub_1C0CF448C(a12, a13);
            sub_1C0CF448C(a16, v28);
            sub_1C0CF448C(a3, v27);
            sub_1C0CF448C(a5, a6);
            sub_1C0CF448C(v29, v30);
            v145 = a12;
            goto LABEL_140;
          }

          v196 = *(a3 + 24);
          v199 = *(a3 + 16);
          sub_1C0CF6468(a12, a13);
          sub_1C0CF6468(a16, a17);
          sub_1C0CF6468(a5, a6);
          sub_1C0CF6468(a7, a8);
          sub_1C0CF6468(a3, a4);
          sub_1C0CF6468(a5, a6);
          sub_1C0CF6468(a7, a8);
          sub_1C0CF6468(a12, a13);
          sub_1C0CF6468(a16, a17);
          sub_1C0CF6468(a3, a4);
          sub_1C0CF6468(a3, a4);
          sub_1C0CF6468(a5, a6);
          sub_1C0CF6468(a7, a8);
          sub_1C0CF6468(a12, a13);
          sub_1C0CF6468(a16, a17);
          sub_1C0CF6468(a3, a4);
          sub_1C0CF6468(a5, a6);
          sub_1C0CF6468(a7, a8);
          sub_1C0CF6468(a12, a13);
          sub_1C0CF6468(a16, a17);
          v94 = sub_1C0D7812C();
          if (v94)
          {
            v95 = a6;
            v96 = sub_1C0D7815C();
            v97 = v199;
            if (__OFSUB__(v199, v96))
            {
LABEL_159:
              __break(1u);
              goto LABEL_160;
            }

            v94 += v199 - v96;
          }

          else
          {
            v95 = a6;
            v97 = v199;
          }

          v151 = v196 - v97;
          if (__OFSUB__(v196, v97))
          {
            goto LABEL_153;
          }

          v152 = sub_1C0D7814C();
          if (v152 >= v151)
          {
            v153 = v151;
          }

          else
          {
            v153 = v152;
          }

          v154 = v153 + v94;
          if (v94)
          {
            v155 = v154;
          }

          else
          {
            v155 = 0;
          }

          sub_1C0CF6468(a3, a4);
          sub_1C0CF6468(a5, v95);
          sub_1C0CF6468(a7, a8);
          sub_1C0CF6468(a12, a13);
          sub_1C0CF6468(a16, a17);
          v156 = v95;
          v92 = a8;
          a18(a5, v156, a5, v156, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, v210, v221, a3, a4, v94, v155);
          sub_1C0CF448C(a5, v95);
          sub_1C0CF448C(a7, a8);
          sub_1C0CF448C(a12, a13);
          sub_1C0CF448C(a16, a17);
          sub_1C0CF448C(a3, a4);
          sub_1C0CF448C(a5, v95);
          sub_1C0CF448C(a7, a8);
          sub_1C0CF448C(a12, a13);
          sub_1C0CF448C(a16, a17);
          sub_1C0CF448C(a3, a4);
          sub_1C0CF448C(a5, v95);
          sub_1C0CF448C(a7, a8);
          sub_1C0CF448C(a12, a13);
          v28 = a17;
          sub_1C0CF448C(a16, a17);
          v27 = a4;
          sub_1C0CF448C(a3, a4);
          sub_1C0CF448C(a5, v156);
          v29 = a7;
          v93 = a7;
        }

        else
        {
          if (v91)
          {
            if (a3 >> 32 < a3)
            {
LABEL_151:
              __break(1u);
LABEL_152:
              __break(1u);
LABEL_153:
              __break(1u);
              goto LABEL_154;
            }

            sub_1C0CF6468(a12, a13);
            sub_1C0CF6468(a16, a17);
            sub_1C0CF6468(a5, a6);
            sub_1C0CF6468(a7, a8);
            sub_1C0CF6468(a3, a4);
            sub_1C0CF6468(a5, a6);
            sub_1C0CF6468(a7, a8);
            sub_1C0CF6468(a12, a13);
            sub_1C0CF6468(a16, a17);
            sub_1C0CF6468(a3, a4);
            sub_1C0CF6468(a3, a4);
            sub_1C0CF6468(a5, a6);
            sub_1C0CF6468(a7, a8);
            sub_1C0CF6468(a12, a13);
            sub_1C0CF6468(a16, a17);
            sub_1C0CF6468(a3, a4);
            sub_1C0CF6468(a5, a6);
            sub_1C0CF6468(a7, a8);
            sub_1C0CF6468(a12, a13);
            sub_1C0CF6468(a16, a17);
            v122 = sub_1C0D7812C();
            if (v122)
            {
              v123 = v122;
              v124 = a6;
              v125 = sub_1C0D7815C();
              if (__OFSUB__(a3, v125))
              {
                goto LABEL_161;
              }

              v126 = a3 - v125 + v123;
            }

            else
            {
              v124 = a6;
              v126 = 0;
            }

            v162 = sub_1C0D7814C();
            if (v162 >= (a3 >> 32) - a3)
            {
              v163 = (a3 >> 32) - a3;
            }

            else
            {
              v163 = v162;
            }

            v164 = v163 + v126;
            if (!v126)
            {
              v164 = 0;
            }

            v204 = v164;
            sub_1C0CF6468(a3, a4);
            sub_1C0CF6468(a5, v124);
            sub_1C0CF6468(a7, a8);
            sub_1C0CF6468(a12, a13);
            sub_1C0CF6468(a16, a17);
            v165 = v124;
            a18(a5, v165, a5, v165, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, v210, v221, a3, a4, v126, v204);
            sub_1C0CF448C(a5, v124);
            sub_1C0CF448C(a7, a8);
            sub_1C0CF448C(a12, a13);
            sub_1C0CF448C(a16, a17);
            sub_1C0CF448C(a3, a4);
            sub_1C0CF448C(a5, v124);
            sub_1C0CF448C(a7, a8);
            sub_1C0CF448C(a12, a13);
            sub_1C0CF448C(a16, a17);
            sub_1C0CF448C(a3, a4);
            sub_1C0CF448C(a5, v124);
            sub_1C0CF448C(a7, a8);
            sub_1C0CF448C(a12, a13);
            v28 = a17;
            sub_1C0CF448C(a16, a17);
            v27 = a4;
            sub_1C0CF448C(a3, a4);
            sub_1C0CF448C(a5, v165);
            v29 = a7;
            v93 = a7;
            v30 = a8;
            v157 = a8;
            goto LABEL_138;
          }

          v235[0] = a3;
          LODWORD(v235[1]) = a4;
          WORD2(v235[1]) = WORD2(a4);
          sub_1C0CF6468(a3, a4);
          sub_1C0CF6468(a5, a6);
          sub_1C0CF6468(a7, a8);
          sub_1C0CF6468(a12, a13);
          sub_1C0CF6468(a16, a17);
          sub_1C0CF6468(a5, a6);
          sub_1C0CF6468(a7, a8);
          sub_1C0CF6468(a12, a13);
          sub_1C0CF6468(a16, a17);
          v27 = a4;
          v92 = a8;
          v28 = a17;
          a18(a5, a6, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, v210, v221, a3, a4, v235, v235 + BYTE6(a4));
          sub_1C0CF448C(a5, a6);
          v29 = a7;
          v93 = a7;
        }

        v30 = v92;
        v157 = v92;
LABEL_138:
        sub_1C0CF448C(v93, v157);
        goto LABEL_139;
      }

      v46 = v45;
      v47 = sub_1C0D7815C();
      if (!__OFSUB__(v207, v47))
      {
        v48 = v207 - v47 + v46;
        goto LABEL_41;
      }

LABEL_145:
      __break(1u);
LABEL_146:
      __break(1u);
      goto LABEL_147;
    }

    __break(1u);
    goto LABEL_143;
  }

  v235[0] = a1;
  LOWORD(v235[1]) = a2;
  BYTE2(v235[1]) = BYTE2(a2);
  BYTE3(v235[1]) = BYTE3(a2);
  BYTE4(v235[1]) = BYTE4(a2);
  BYTE5(v235[1]) = BYTE5(a2);
  v23 = a4 >> 62;
  v215 = v235 + BYTE6(a2);
  if ((a4 >> 62) > 1)
  {
    if (v23 != 2)
    {
      memset(v234, 0, 14);
      sub_1C0CF6468(a12, a13);
      v114 = a3;
      v27 = a4;
      v28 = a17;
      sub_1C0CF6468(a16, a17);
      sub_1C0CF6468(a5, a6);
      sub_1C0CF6468(a7, a8);
      sub_1C0CF6468(v114, v27);
      sub_1C0CF6468(a5, a6);
      sub_1C0CF6468(a7, a8);
      sub_1C0CF6468(a12, a13);
      v25 = a16;
      sub_1C0CF6468(a16, a17);
      sub_1C0CF6468(v114, v27);
      sub_1C0CF6468(a12, a13);
      sub_1C0CF6468(a16, a17);
      sub_1C0CF6468(v114, v27);
      sub_1C0CF6468(a5, a6);
      sub_1C0CF6468(a7, a8);
      sub_1C0CF6468(a12, a13);
      sub_1C0CF6468(a16, a17);
      sub_1C0CF6468(v114, v27);
      sub_1C0CF6468(a5, a6);
      v30 = a8;
      sub_1C0CF6468(a7, a8);
      sub_1C0CF6468(a16, a17);
      v193 = v234;
      v186 = v114;
      v188 = v27;
      v185 = v215;
      v181 = a16;
      v183 = a17;
      v177 = a14;
      v179 = a15;
      v175 = a13;
      v171 = a11;
      v173 = a12;
      v31 = a5;
      v32 = a6;
      v29 = a7;
      v33 = a5;
      v34 = a6;
      v35 = a7;
      v36 = a8;
      goto LABEL_72;
    }

    v197 = *(a3 + 24);
    v208 = *(a3 + 16);
    sub_1C0CF6468(a5, a6);
    sub_1C0CF6468(a7, a8);
    sub_1C0CF6468(a12, a13);
    sub_1C0CF6468(a16, a17);
    sub_1C0CF6468(a3, a4);
    sub_1C0CF6468(a5, a6);
    sub_1C0CF6468(a7, a8);
    sub_1C0CF6468(a12, a13);
    sub_1C0CF6468(a16, a17);
    sub_1C0CF6468(a3, a4);
    sub_1C0CF6468(a5, a6);
    sub_1C0CF6468(a7, a8);
    sub_1C0CF6468(a12, a13);
    sub_1C0CF6468(a16, a17);
    sub_1C0CF6468(a3, a4);
    sub_1C0CF6468(a12, a13);
    sub_1C0CF6468(a16, a17);
    sub_1C0CF6468(a5, a6);
    sub_1C0CF6468(a7, a8);
    sub_1C0CF6468(a3, a4);
    sub_1C0CF6468(a3, a4);
    sub_1C0CF6468(a5, a6);
    sub_1C0CF6468(a7, a8);
    sub_1C0CF6468(a12, a13);
    sub_1C0CF6468(a16, a17);
    sub_1C0CF6468(a3, a4);
    sub_1C0CF6468(a5, a6);
    v59 = a8;
    sub_1C0CF6468(a7, a8);
    sub_1C0CF6468(a12, a13);
    sub_1C0CF6468(a16, a17);
    v60 = sub_1C0D7812C();
    if (v60)
    {
      v61 = v60;
      v62 = a13;
      v63 = sub_1C0D7815C();
      v64 = v208;
      if (__OFSUB__(v208, v63))
      {
LABEL_154:
        __break(1u);
        goto LABEL_155;
      }

      v59 = a8;
      v65 = v208 - v63 + v61;
    }

    else
    {
      v62 = a13;
      v65 = 0;
      v64 = v208;
    }

    v127 = v197 - v64;
    if (!__OFSUB__(v197, v64))
    {
      v128 = sub_1C0D7814C();
      if (v128 >= v127)
      {
        v129 = v127;
      }

      else
      {
        v129 = v128;
      }

      v130 = v129 + v65;
      if (!v65)
      {
        v130 = 0;
      }

      v214 = v130;
      v131 = a4;
      v227 = a4;
      sub_1C0CF6468(a3, a4);
      v132 = v65;
      v133 = a5;
      sub_1C0CF6468(a5, a6);
      sub_1C0CF6468(a7, v59);
      v134 = v62;
      sub_1C0CF6468(a12, v62);
      v25 = a16;
      v28 = a17;
      sub_1C0CF6468(a16, a17);
      v192 = v132;
      v29 = a7;
      a18(v133, a6, v133, a6, a7, v59, a9, a10, a11, a12, v134, a14, a15, a16, a17, v235, v215, a3, v131, v192, v214);
      sub_1C0CF448C(v133, a6);
      sub_1C0CF448C(a7, v59);
      sub_1C0CF448C(a12, v134);
      sub_1C0CF448C(a16, a17);
      sub_1C0CF448C(a3, v227);
      sub_1C0CF448C(v133, a6);
      v30 = a8;
      sub_1C0CF448C(a7, a8);
      sub_1C0CF448C(a12, a13);
      sub_1C0CF448C(a16, a17);
      sub_1C0CF448C(a3, v227);
      v27 = v227;
      sub_1C0CF448C(v133, a6);
      sub_1C0CF448C(a7, a8);
      v104 = a12;
      v105 = a13;
      goto LABEL_93;
    }

    goto LABEL_148;
  }

  if (v23)
  {
    v200 = a3;
    v211 = (a3 >> 32) - a3;
    if (a3 >> 32 >= a3)
    {
      sub_1C0CF6468(a5, a6);
      sub_1C0CF6468(a7, a8);
      sub_1C0CF6468(a12, a13);
      sub_1C0CF6468(a16, a17);
      sub_1C0CF6468(a3, a4);
      sub_1C0CF6468(a5, a6);
      sub_1C0CF6468(a7, a8);
      sub_1C0CF6468(a12, a13);
      sub_1C0CF6468(a16, a17);
      sub_1C0CF6468(a3, a4);
      sub_1C0CF6468(a5, a6);
      sub_1C0CF6468(a7, a8);
      sub_1C0CF6468(a12, a13);
      sub_1C0CF6468(a16, a17);
      sub_1C0CF6468(a3, a4);
      sub_1C0CF6468(a12, a13);
      sub_1C0CF6468(a16, a17);
      sub_1C0CF6468(a5, a6);
      sub_1C0CF6468(a7, a8);
      sub_1C0CF6468(a3, a4);
      sub_1C0CF6468(a3, a4);
      sub_1C0CF6468(a5, a6);
      sub_1C0CF6468(a7, a8);
      sub_1C0CF6468(a12, a13);
      sub_1C0CF6468(a16, a17);
      sub_1C0CF6468(a3, a4);
      sub_1C0CF6468(a5, a6);
      sub_1C0CF6468(a7, a8);
      sub_1C0CF6468(a12, a13);
      sub_1C0CF6468(a16, a17);
      v98 = sub_1C0D7812C();
      if (!v98)
      {
LABEL_57:
        v100 = sub_1C0D7814C();
        v101 = v211;
        if (v100 < v211)
        {
          v101 = v100;
        }

        v102 = v101 + v98;
        if (!v98)
        {
          v102 = 0;
        }

        v212 = v102;
        sub_1C0CF6468(a3, a4);
        sub_1C0CF6468(a5, a6);
        sub_1C0CF6468(a7, a8);
        sub_1C0CF6468(a12, a13);
        v25 = a16;
        v103 = a4;
        v28 = a17;
        sub_1C0CF6468(a16, a17);
        v190 = v98;
        v29 = a7;
        v30 = a8;
        a18(a5, a6, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, v235, v215, a3, v103, v190, v212);
        sub_1C0CF448C(a5, a6);
        sub_1C0CF448C(a7, a8);
        sub_1C0CF448C(a12, a13);
        sub_1C0CF448C(a16, a17);
        sub_1C0CF448C(a3, v103);
        sub_1C0CF448C(a5, a6);
        sub_1C0CF448C(a7, a8);
        sub_1C0CF448C(a12, a13);
        sub_1C0CF448C(a16, a17);
        sub_1C0CF448C(a3, v103);
        v27 = v103;
        sub_1C0CF448C(a5, a6);
        sub_1C0CF448C(a7, a8);
        v104 = a12;
        v105 = a13;
LABEL_93:
        sub_1C0CF448C(v104, v105);
        goto LABEL_94;
      }

      v99 = sub_1C0D7815C();
      if (!__OFSUB__(v200, v99))
      {
        v98 += v200 - v99;
        goto LABEL_57;
      }

      goto LABEL_156;
    }

    goto LABEL_146;
  }

  v234[0] = a3;
  LOWORD(v234[1]) = a4;
  BYTE2(v234[1]) = BYTE2(a4);
  BYTE3(v234[1]) = BYTE3(a4);
  BYTE4(v234[1]) = BYTE4(a4);
  BYTE5(v234[1]) = BYTE5(a4);
  v205 = v234 + BYTE6(a4);
  sub_1C0CF6468(a12, a13);
  v25 = a16;
  v26 = a3;
  v27 = a4;
  v28 = a17;
  sub_1C0CF6468(a16, a17);
  sub_1C0CF6468(a5, a6);
  sub_1C0CF6468(a7, a8);
  sub_1C0CF6468(v26, v27);
  sub_1C0CF6468(a5, a6);
  sub_1C0CF6468(a7, a8);
  sub_1C0CF6468(a12, a13);
  sub_1C0CF6468(a16, a17);
  sub_1C0CF6468(v26, v27);
  sub_1C0CF6468(a12, a13);
  sub_1C0CF6468(a16, a17);
  sub_1C0CF6468(v26, v27);
  sub_1C0CF6468(a5, a6);
  sub_1C0CF6468(a7, a8);
  sub_1C0CF6468(a12, a13);
  sub_1C0CF6468(a16, a17);
  sub_1C0CF6468(v26, v27);
  sub_1C0CF6468(a5, a6);
  sub_1C0CF6468(a7, a8);
  sub_1C0CF6468(a16, a17);
  v193 = v205;
  v29 = a7;
  v188 = v27;
  v186 = v26;
  v30 = a8;
  v185 = v215;
  v181 = a16;
  v183 = a17;
  v177 = a14;
  v179 = a15;
  v175 = a13;
  v171 = a11;
  v173 = a12;
  v31 = a5;
  v32 = a6;
  v33 = a5;
  v34 = a6;
  v35 = a7;
  v36 = a8;
LABEL_72:
  a18(v31, v32, v33, v34, v35, v36, a9, a10, v171, v173, v175, v177, v179, v181, v183, v235, v185, v186, v188, v234, v193);
LABEL_94:
  sub_1C0CF448C(v25, v28);
  sub_1C0CF448C(a3, v27);
  sub_1C0CF448C(a5, a6);
  sub_1C0CF448C(v29, v30);
  v135 = a12;
  v136 = a13;
  sub_1C0CF448C(a12, a13);
  sub_1C0CF448C(a16, v28);
  sub_1C0CF448C(a3, v27);
  sub_1C0CF448C(a3, v27);
  v137 = a5;
  v138 = a6;
LABEL_105:
  sub_1C0CF448C(v137, v138);
  sub_1C0CF448C(v29, v30);
  v145 = v135;
  v146 = v136;
LABEL_141:
  sub_1C0CF448C(v145, v146);
  sub_1C0CF448C(a16, v28);
  sub_1C0CF448C(a3, v27);
  sub_1C0CF448C(a5, a6);
  sub_1C0CF448C(v29, v30);
  v166 = v28;
  v167 = v29;
  v168 = v166;
  sub_1C0CF448C(a12, a13);
  sub_1C0CF448C(a16, v168);
  sub_1C0CF448C(a3, v27);
  sub_1C0CF448C(a5, a6);
  sub_1C0CF448C(v167, a8);
  sub_1C0CF448C(a12, a13);
  result = sub_1C0CF448C(a16, v168);
  v170 = *MEMORY[0x1E69E9840];
  return result;
}