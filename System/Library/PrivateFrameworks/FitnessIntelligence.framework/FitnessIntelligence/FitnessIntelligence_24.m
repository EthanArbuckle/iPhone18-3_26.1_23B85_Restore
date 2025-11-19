uint64_t sub_1B4BABCC4()
{
  v1 = *v0;
  v2 = 0x797469746E617571;
  v3 = 0x676E69727473;
  v4 = 0x7265626D756ELL;
  if (v1 != 3)
  {
    v4 = 1635017060;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 1702125924;
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

uint64_t sub_1B4BABD48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B4BAF184(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B4BABD70(uint64_t a1)
{
  v2 = sub_1B4BADB1C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4BABDAC(uint64_t a1)
{
  v2 = sub_1B4BADB1C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4BABDE8(uint64_t a1)
{
  v2 = sub_1B4BADBD4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4BABE24(uint64_t a1)
{
  v2 = sub_1B4BADBD4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4BABE60(uint64_t a1)
{
  v2 = sub_1B4BADCD0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4BABE9C(uint64_t a1)
{
  v2 = sub_1B4BADCD0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4BABED8(uint64_t a1)
{
  v2 = sub_1B4BADC28();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4BABF14(uint64_t a1)
{
  v2 = sub_1B4BADC28();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4BABF50(uint64_t a1)
{
  v2 = sub_1B4BADD24();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4BABF8C(uint64_t a1)
{
  v2 = sub_1B4BADD24();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4BABFC8(uint64_t a1)
{
  v2 = sub_1B4BADC7C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4BAC004(uint64_t a1)
{
  v2 = sub_1B4BADC7C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void WorkoutMetadata.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABA98, &qword_1B4D37AF0);
  v65 = *(v2 - 8);
  v66 = v2;
  v3 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v64 = &v57 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABAA0, &qword_1B4D37AF8);
  v62 = *(v5 - 8);
  v63 = v5;
  v6 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v61 = &v57 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABAA8, &qword_1B4D37B00);
  v59 = *(v8 - 8);
  v60 = v8;
  v9 = *(v59 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v58 = &v57 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABAB0, &qword_1B4D37B08);
  v70 = *(v11 - 8);
  v71 = v11;
  v12 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v69 = &v57 - v13;
  v14 = sub_1B4D1777C();
  v67 = *(v14 - 8);
  v68 = v14;
  v15 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABAB8, &qword_1B4D37B10);
  v57 = *(v18 - 8);
  v19 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v57 - v20;
  v22 = type metadata accessor for WorkoutMetadata();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22);
  v25 = (&v57 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABAC0, &qword_1B4D37B18);
  v74 = *(v26 - 8);
  v75 = v26;
  v27 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v57 - v28;
  v30 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4BADB1C();
  v73 = v29;
  sub_1B4D18EFC();
  sub_1B4BADB70(v72, v25);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v35 = v18;
    v37 = v69;
    v38 = v70;
    v39 = v71;
    if (!EnumCaseMultiPayload)
    {
      v32 = *v25;
      LOBYTE(v76) = 0;
      sub_1B4BADD24();
      v33 = v75;
      v34 = v73;
      sub_1B4D18C5C();
      v76 = v32;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABB08, &qword_1B4D37B28);
      sub_1B49B0578(&qword_1EB8ABB10, &qword_1EB8ABB08, &qword_1B4D37B28);
      sub_1B4D18D0C();
      v36 = v57;
      goto LABEL_7;
    }

    v52 = v17;
    v53 = v67;
    v54 = v68;
    (*(v67 + 32))(v52, v25, v68);
    LOBYTE(v76) = 1;
    sub_1B4BADCD0();
    v55 = v75;
    v56 = v73;
    sub_1B4D18C5C();
    sub_1B49B1198(&qword_1EDC37820);
    sub_1B4D18D0C();
    (*(v38 + 8))(v37, v39);
    (*(v53 + 8))(v52, v54);
    (*(v74 + 8))(v56, v55);
  }

  else if (EnumCaseMultiPayload == 2)
  {
    v41 = *v25;
    v40 = v25[1];
    LOBYTE(v76) = 2;
    sub_1B4BADC7C();
    v42 = v58;
    v43 = v75;
    v44 = v73;
    sub_1B4D18C5C();
    v45 = v60;
    sub_1B4D18CBC();

    (*(v59 + 8))(v42, v45);
    (*(v74 + 8))(v44, v43);
  }

  else
  {
    if (EnumCaseMultiPayload == 3)
    {
      v32 = *v25;
      LOBYTE(v76) = 3;
      sub_1B4BADC28();
      v21 = v61;
      v33 = v75;
      v34 = v73;
      sub_1B4D18C5C();
      v76 = v32;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABAE0, &qword_1B4D37B20);
      sub_1B49B0578(&qword_1EB8ABAE8, &qword_1EB8ABAE0, &qword_1B4D37B20);
      v35 = v63;
      sub_1B4D18D0C();
      v36 = v62;
LABEL_7:
      (*(v36 + 8))(v21, v35);
      (*(v74 + 8))(v34, v33);

      return;
    }

    v47 = *v25;
    v46 = v25[1];
    LOBYTE(v76) = 4;
    sub_1B4BADBD4();
    v48 = v64;
    v49 = v75;
    v50 = v73;
    sub_1B4D18C5C();
    v76 = v47;
    v77 = v46;
    sub_1B49DDCD8();
    v51 = v66;
    sub_1B4D18D0C();
    (*(v65 + 8))(v48, v51);
    (*(v74 + 8))(v50, v49);
    sub_1B49DDD2C(v47, v46);
  }
}

uint64_t WorkoutMetadata.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v98 = a2;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABB18, &qword_1B4D37B30);
  v95 = *(v92 - 8);
  v3 = *(v95 + 64);
  MEMORY[0x1EEE9AC00](v92);
  v97 = &v80 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABB20, &qword_1B4D37B38);
  v6 = *(v5 - 8);
  v93 = v5;
  v94 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v96 = &v80 - v8;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABB28, &qword_1B4D37B40);
  v90 = *(v91 - 8);
  v9 = *(v90 + 64);
  MEMORY[0x1EEE9AC00](v91);
  v104 = &v80 - v10;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABB30, &qword_1B4D37B48);
  v89 = *(v88 - 8);
  v11 = *(v89 + 64);
  MEMORY[0x1EEE9AC00](v88);
  v103 = &v80 - v12;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABB38, &qword_1B4D37B50);
  v86 = *(v87 - 8);
  v13 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](v87);
  v101 = &v80 - v14;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABB40, &unk_1B4D37B58);
  v100 = *(v102 - 8);
  v15 = *(v100 + 64);
  MEMORY[0x1EEE9AC00](v102);
  v17 = &v80 - v16;
  v99 = type metadata accessor for WorkoutMetadata();
  v18 = *(*(v99 - 8) + 64);
  MEMORY[0x1EEE9AC00](v99);
  v85 = (&v80 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v80 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v80 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v80 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v80 - v30;
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v80 - v33;
  v35 = a1[3];
  v36 = a1[4];
  v105 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v35);
  sub_1B4BADB1C();
  v37 = v111;
  sub_1B4D18EEC();
  if (v37)
  {
    goto LABEL_9;
  }

  v81 = v25;
  v84 = v28;
  v82 = v31;
  v83 = v22;
  v39 = v101;
  v38 = v102;
  v41 = v103;
  v40 = v104;
  v111 = v34;
  v42 = sub_1B4D18C2C();
  v43 = (2 * *(v42 + 16)) | 1;
  v107 = v42;
  v108 = v42 + 32;
  v109 = 0;
  v110 = v43;
  v44 = sub_1B49C8ABC();
  v45 = v38;
  if (v44 == 5 || v109 != v110 >> 1)
  {
    v50 = sub_1B4D189BC();
    swift_allocError();
    v52 = v51;
    v53 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A73B0, &qword_1B4D1D820) + 48);
    *v52 = v99;
    sub_1B4D18B5C();
    sub_1B4D189AC();
    (*(*(v50 - 8) + 104))(v52, *MEMORY[0x1E69E6AF8], v50);
    swift_willThrow();
    (*(v100 + 8))(v17, v45);
    swift_unknownObjectRelease();
LABEL_9:
    v54 = v105;
    return __swift_destroy_boxed_opaque_existential_1Tm(v54);
  }

  if (v44 <= 1u)
  {
    v56 = v98;
    if (v44)
    {
      LOBYTE(v106) = 1;
      sub_1B4BADCD0();
      v67 = v41;
      sub_1B4D18B4C();
      v57 = v56;
      sub_1B4D1777C();
      sub_1B49B1198(&qword_1EB8A6FB8);
      v68 = v84;
      v69 = v88;
      sub_1B4D18C0C();
      (*(v89 + 8))(v67, v69);
      (*(v100 + 8))(v17, v45);
      swift_unknownObjectRelease();
      swift_storeEnumTagMultiPayload();
      v60 = v68;
    }

    else
    {
      LOBYTE(v106) = 0;
      sub_1B4BADD24();
      sub_1B4D18B4C();
      v57 = v56;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABB08, &qword_1B4D37B28);
      sub_1B49B0578(&qword_1EB8ABB50, &qword_1EB8ABB08, &qword_1B4D37B28);
      v58 = v87;
      sub_1B4D18C0C();
      (*(v86 + 8))(v39, v58);
      (*(v100 + 8))(v17, v45);
      swift_unknownObjectRelease();
      v59 = v82;
      *v82 = v106;
      swift_storeEnumTagMultiPayload();
      v60 = v59;
    }

    v77 = v111;
    sub_1B4BADD78(v60, v111);
    v78 = v105;
    v79 = v57;
  }

  else
  {
    if (v44 == 2)
    {
      LOBYTE(v106) = 2;
      sub_1B4BADC7C();
      v61 = v38;
      sub_1B4D18B4C();
      v62 = v91;
      v63 = sub_1B4D18BBC();
      v64 = v100;
      v70 = v63;
      v72 = v71;
      (*(v90 + 8))(v40, v62);
      (*(v64 + 8))(v17, v61);
      swift_unknownObjectRelease();
      v73 = v81;
      *v81 = v70;
      v73[1] = v72;
      swift_storeEnumTagMultiPayload();
      v75 = v73;
    }

    else if (v44 == 3)
    {
      LOBYTE(v106) = 3;
      sub_1B4BADC28();
      v46 = v96;
      v47 = v38;
      sub_1B4D18B4C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABAE0, &qword_1B4D37B20);
      sub_1B49B0578(&qword_1EB8ABB48, &qword_1EB8ABAE0, &qword_1B4D37B20);
      v48 = v93;
      sub_1B4D18C0C();
      v49 = v100;
      (*(v94 + 8))(v46, v48);
      (*(v49 + 8))(v17, v47);
      swift_unknownObjectRelease();
      v74 = v83;
      *v83 = v106;
      swift_storeEnumTagMultiPayload();
      v75 = v74;
    }

    else
    {
      LOBYTE(v106) = 4;
      sub_1B4BADBD4();
      v65 = v97;
      sub_1B4D18B4C();
      sub_1B49DDFEC();
      v66 = v92;
      sub_1B4D18C0C();
      (*(v95 + 8))(v65, v66);
      (*(v100 + 8))(v17, v38);
      swift_unknownObjectRelease();
      v76 = v85;
      *v85 = v106;
      swift_storeEnumTagMultiPayload();
      v75 = v76;
    }

    v77 = v111;
    sub_1B4BADD78(v75, v111);
    v78 = v105;
    v79 = v98;
  }

  sub_1B4BADD78(v77, v79);
  v54 = v78;
  return __swift_destroy_boxed_opaque_existential_1Tm(v54);
}

_BYTE *sub_1B4BAD4F8@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_1B4BAEE8C(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_1B4BAEF44(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_1B4BAEFC0(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

uint64_t _s19FitnessIntelligence15WorkoutMetadataO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v62 = a1;
  v63 = a2;
  v2 = sub_1B4D1777C();
  v61 = *(v2 - 8);
  v3 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for WorkoutMetadata();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v60 - v11);
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v60 - v14);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v60 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = (&v60 - v20);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABBE8, &qword_1B4D382C8);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v25 = &v60 - v24;
  v27 = (&v60 + *(v26 + 56) - v24);
  sub_1B4BADB70(v62, &v60 - v24);
  sub_1B4BADB70(v63, v27);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v44 = v61;
    if (!EnumCaseMultiPayload)
    {
      sub_1B4BADB70(v25, v21);
      v29 = *v21;
      if (!swift_getEnumCaseMultiPayload())
      {
        goto LABEL_5;
      }

LABEL_12:

      goto LABEL_30;
    }

    sub_1B4BADB70(v25, v18);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      (*(v44 + 8))(v18, v2);
      goto LABEL_30;
    }

    v55 = v44;
    (*(v44 + 32))(v5, v27, v2);
    v54 = sub_1B4D1774C();
    v56 = *(v55 + 8);
    v56(v5, v2);
    v56(v18, v2);
  }

  else
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_1B4BADB70(v25, v15);
      v46 = *v15;
      v45 = v15[1];
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        if (v46 == *v27 && v45 == v27[1])
        {
          v59 = v27[1];
        }

        else
        {
          v48 = v27[1];
          v49 = sub_1B4D18DCC();

          if ((v49 & 1) == 0)
          {
            goto LABEL_36;
          }
        }

        goto LABEL_34;
      }

LABEL_30:
      sub_1B4975024(v25, &qword_1EB8ABBE8, &qword_1B4D382C8);
LABEL_31:
      v54 = 0;
      return v54 & 1;
    }

    if (EnumCaseMultiPayload == 3)
    {
      sub_1B4BADB70(v25, v12);
      v29 = *v12;
      if (swift_getEnumCaseMultiPayload() == 3)
      {
LABEL_5:
        v30 = *v27;
        objc_opt_self();
        v31 = swift_dynamicCastObjCClass();
        if (v31 && (v32 = v31, objc_opt_self(), (v33 = swift_dynamicCastObjCClass()) != 0))
        {
          v34 = v33;
          v35 = v29;
          v36 = v30;
          [v32 coordinate];
          v38 = v37;
          [v34 coordinate];
          if (v38 != v39)
          {

LABEL_36:
            sub_1B4BAF32C(v25);
            goto LABEL_31;
          }

          [v32 coordinate];
          v41 = v40;
          [v34 coordinate];
          v43 = v42;

          if (v41 != v43)
          {
            goto LABEL_36;
          }
        }

        else
        {
          sub_1B498AFB8(0, &qword_1EB8A7560, 0x1E69E58C0);
          v57 = sub_1B4D187AC();

          if ((v57 & 1) == 0)
          {
            goto LABEL_36;
          }
        }

LABEL_34:
        sub_1B4BAF32C(v25);
        v54 = 1;
        return v54 & 1;
      }

      goto LABEL_12;
    }

    sub_1B4BADB70(v25, v9);
    v50 = *v9;
    v51 = v9[1];
    if (swift_getEnumCaseMultiPayload() != 4)
    {
      sub_1B49DDD2C(v50, v51);
      goto LABEL_30;
    }

    v52 = *v27;
    v53 = v27[1];
    v54 = sub_1B4BDD628(v50, v51, v52, v53);
    sub_1B49DDD2C(v52, v53);
    sub_1B49DDD2C(v50, v51);
  }

  sub_1B4BAF32C(v25);
  return v54 & 1;
}

uint64_t type metadata accessor for WorkoutMetadata()
{
  result = qword_1EDC37348;
  if (!qword_1EDC37348)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1B4BADB1C()
{
  result = qword_1EB8ABAC8;
  if (!qword_1EB8ABAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ABAC8);
  }

  return result;
}

uint64_t sub_1B4BADB70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutMetadata();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B4BADBD4()
{
  result = qword_1EB8ABAD0;
  if (!qword_1EB8ABAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ABAD0);
  }

  return result;
}

unint64_t sub_1B4BADC28()
{
  result = qword_1EB8ABAD8;
  if (!qword_1EB8ABAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ABAD8);
  }

  return result;
}

unint64_t sub_1B4BADC7C()
{
  result = qword_1EB8ABAF0;
  if (!qword_1EB8ABAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ABAF0);
  }

  return result;
}

unint64_t sub_1B4BADCD0()
{
  result = qword_1EB8ABAF8;
  if (!qword_1EB8ABAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ABAF8);
  }

  return result;
}

unint64_t sub_1B4BADD24()
{
  result = qword_1EB8ABB00;
  if (!qword_1EB8ABB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ABB00);
  }

  return result;
}

uint64_t sub_1B4BADD78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutMetadata();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1B4BADDDC()
{
  sub_1B4BADEA4(319, &qword_1EDC37448, &qword_1EDC36E00, 0x1E696C348);
  if (v0 <= 0x3F)
  {
    sub_1B4D1777C();
    if (v1 <= 0x3F)
    {
      sub_1B4BADEA4(319, &qword_1EDC37430, &qword_1EDC36DB0, 0x1E696AD98);
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_1B4BADEA4(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_1B498AFB8(255, a3, a4);
    v5 = type metadata accessor for CodableBridging();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1B4BADF60()
{
  result = qword_1EB8ABB58;
  if (!qword_1EB8ABB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ABB58);
  }

  return result;
}

unint64_t sub_1B4BADFB8()
{
  result = qword_1EB8ABB60;
  if (!qword_1EB8ABB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ABB60);
  }

  return result;
}

unint64_t sub_1B4BAE010()
{
  result = qword_1EB8ABB68;
  if (!qword_1EB8ABB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ABB68);
  }

  return result;
}

unint64_t sub_1B4BAE068()
{
  result = qword_1EB8ABB70;
  if (!qword_1EB8ABB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ABB70);
  }

  return result;
}

unint64_t sub_1B4BAE0C0()
{
  result = qword_1EB8ABB78;
  if (!qword_1EB8ABB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ABB78);
  }

  return result;
}

unint64_t sub_1B4BAE118()
{
  result = qword_1EB8ABB80;
  if (!qword_1EB8ABB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ABB80);
  }

  return result;
}

unint64_t sub_1B4BAE170()
{
  result = qword_1EB8ABB88;
  if (!qword_1EB8ABB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ABB88);
  }

  return result;
}

unint64_t sub_1B4BAE1C8()
{
  result = qword_1EB8ABB90;
  if (!qword_1EB8ABB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ABB90);
  }

  return result;
}

unint64_t sub_1B4BAE220()
{
  result = qword_1EB8ABB98;
  if (!qword_1EB8ABB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ABB98);
  }

  return result;
}

unint64_t sub_1B4BAE278()
{
  result = qword_1EB8ABBA0;
  if (!qword_1EB8ABBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ABBA0);
  }

  return result;
}

unint64_t sub_1B4BAE2D0()
{
  result = qword_1EB8ABBA8;
  if (!qword_1EB8ABBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ABBA8);
  }

  return result;
}

unint64_t sub_1B4BAE328()
{
  result = qword_1EB8ABBB0;
  if (!qword_1EB8ABBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ABBB0);
  }

  return result;
}

unint64_t sub_1B4BAE380()
{
  result = qword_1EB8ABBB8;
  if (!qword_1EB8ABBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ABBB8);
  }

  return result;
}

unint64_t sub_1B4BAE3D8()
{
  result = qword_1EB8ABBC0;
  if (!qword_1EB8ABBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ABBC0);
  }

  return result;
}

unint64_t sub_1B4BAE430()
{
  result = qword_1EB8ABBC8;
  if (!qword_1EB8ABBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ABBC8);
  }

  return result;
}

unint64_t sub_1B4BAE488()
{
  result = qword_1EB8ABBD0;
  if (!qword_1EB8ABBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ABBD0);
  }

  return result;
}

unint64_t sub_1B4BAE4E0()
{
  result = qword_1EB8ABBD8;
  if (!qword_1EB8ABBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ABBD8);
  }

  return result;
}

unint64_t sub_1B4BAE538()
{
  result = qword_1EB8ABBE0;
  if (!qword_1EB8ABBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ABBE0);
  }

  return result;
}

uint64_t sub_1B4BAE58C(uint64_t a1)
{
  v95 = sub_1B4D1777C();
  v2 = *(v95 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v95);
  v94 = &v90 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for WorkoutMetadata();
  v98 = *(v5 - 8);
  v99 = v5;
  v6 = *(v98 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v100 = (&v90 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A81B0, &qword_1B4D382C0);
  v8 = *(*(v97 - 8) + 64);
  MEMORY[0x1EEE9AC00](v97);
  v10 = (&v90 - v9);
  v11 = a1 + 64;
  v12 = 1 << *(a1 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a1 + 64);
  v15 = (v12 + 63) >> 6;
  v92 = (v2 + 16);
  v93 = (v2 + 32);
  v91 = (v2 + 8);

  v16 = 0;
  v17 = MEMORY[0x1E69E7CC8];
  v96 = v10;
  while (v14)
  {
LABEL_11:
    v20 = __clz(__rbit64(v14)) | (v16 << 6);
    v21 = (*(a1 + 48) + 16 * v20);
    v22 = *v21;
    v23 = v21[1];
    v24 = *(v97 + 48);
    sub_1B4BADB70(*(a1 + 56) + *(v98 + 72) * v20, v10 + v24);
    *v10 = v22;
    v10[1] = v23;
    sub_1B4BADB70(v10 + v24, v100);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v44 = *v100;
        v45 = v100[1];
        v104 = MEMORY[0x1E69E6158];
        *&v103 = v44;
        *(&v103 + 1) = v45;
        sub_1B498B060(&v103, v102);
        swift_bridgeObjectRetain_n();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v101 = v17;
        v28 = sub_1B49E9EC4(v22, v23);
        v48 = v17[2];
        v49 = (v47 & 1) == 0;
        v32 = __OFADD__(v48, v49);
        v50 = v48 + v49;
        if (v32)
        {
          goto LABEL_68;
        }

        v51 = v47;
        if (v17[3] >= v50)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v85 = v28;
            sub_1B498A620();
            v28 = v85;
          }
        }

        else
        {
          sub_1B4987B48(v50, isUniquelyReferenced_nonNull_native);
          v28 = sub_1B49E9EC4(v22, v23);
          if ((v51 & 1) != (v52 & 1))
          {
            goto LABEL_77;
          }
        }

        v10 = v96;
        v17 = v101;
        if (v51)
        {
          goto LABEL_4;
        }

        v101[(v28 >> 6) + 8] |= 1 << v28;
        v72 = (v17[6] + 16 * v28);
        *v72 = v22;
        v72[1] = v23;
        sub_1B498B060(v102, (v17[7] + 32 * v28));
        v73 = v17[2];
        v32 = __OFADD__(v73, 1);
        v74 = v73 + 1;
        if (v32)
        {
          goto LABEL_76;
        }
      }

      else if (EnumCaseMultiPayload == 3)
      {
        v26 = *v100;
        v104 = sub_1B498AFB8(0, &qword_1EDC36DB0, 0x1E696AD98);
        *&v103 = v26;
        sub_1B498B060(&v103, v102);
        swift_bridgeObjectRetain_n();
        v27 = swift_isUniquelyReferenced_nonNull_native();
        v101 = v17;
        v28 = sub_1B49E9EC4(v22, v23);
        v30 = v17[2];
        v31 = (v29 & 1) == 0;
        v32 = __OFADD__(v30, v31);
        v33 = v30 + v31;
        if (v32)
        {
          goto LABEL_67;
        }

        v34 = v29;
        if (v17[3] >= v33)
        {
          if ((v27 & 1) == 0)
          {
            v86 = v28;
            sub_1B498A620();
            v28 = v86;
          }
        }

        else
        {
          sub_1B4987B48(v33, v27);
          v28 = sub_1B49E9EC4(v22, v23);
          if ((v34 & 1) != (v35 & 1))
          {
            goto LABEL_77;
          }
        }

        v10 = v96;
        v17 = v101;
        if (v34)
        {
LABEL_4:
          v18 = (v17[7] + 32 * v28);
          __swift_destroy_boxed_opaque_existential_1Tm(v18);
          sub_1B498B060(v102, v18);

          goto LABEL_5;
        }

        v101[(v28 >> 6) + 8] |= 1 << v28;
        v75 = (v17[6] + 16 * v28);
        *v75 = v22;
        v75[1] = v23;
        sub_1B498B060(v102, (v17[7] + 32 * v28));
        v76 = v17[2];
        v32 = __OFADD__(v76, 1);
        v74 = v76 + 1;
        if (v32)
        {
          goto LABEL_72;
        }
      }

      else
      {
        v104 = MEMORY[0x1E6969080];
        v103 = *v100;
        sub_1B498B060(&v103, v102);
        swift_bridgeObjectRetain_n();
        v53 = swift_isUniquelyReferenced_nonNull_native();
        v101 = v17;
        v28 = sub_1B49E9EC4(v22, v23);
        v55 = v17[2];
        v56 = (v54 & 1) == 0;
        v32 = __OFADD__(v55, v56);
        v57 = v55 + v56;
        if (v32)
        {
          goto LABEL_71;
        }

        v58 = v54;
        if (v17[3] >= v57)
        {
          if ((v53 & 1) == 0)
          {
            v87 = v28;
            sub_1B498A620();
            v28 = v87;
          }
        }

        else
        {
          sub_1B4987B48(v57, v53);
          v28 = sub_1B49E9EC4(v22, v23);
          if ((v58 & 1) != (v59 & 1))
          {
            goto LABEL_77;
          }
        }

        v10 = v96;
        v17 = v101;
        if (v58)
        {
          goto LABEL_4;
        }

        v101[(v28 >> 6) + 8] |= 1 << v28;
        v77 = (v17[6] + 16 * v28);
        *v77 = v22;
        v77[1] = v23;
        sub_1B498B060(v102, (v17[7] + 32 * v28));
        v78 = v17[2];
        v32 = __OFADD__(v78, 1);
        v74 = v78 + 1;
        if (v32)
        {
          goto LABEL_75;
        }
      }

      goto LABEL_57;
    }

    if (!EnumCaseMultiPayload)
    {
      v36 = *v100;
      v104 = sub_1B498AFB8(0, &qword_1EDC36E00, 0x1E696C348);
      *&v103 = v36;
      sub_1B498B060(&v103, v102);
      swift_bridgeObjectRetain_n();
      v37 = swift_isUniquelyReferenced_nonNull_native();
      v101 = v17;
      v28 = sub_1B49E9EC4(v22, v23);
      v39 = v17[2];
      v40 = (v38 & 1) == 0;
      v32 = __OFADD__(v39, v40);
      v41 = v39 + v40;
      if (v32)
      {
        goto LABEL_69;
      }

      v42 = v38;
      if (v17[3] >= v41)
      {
        if ((v37 & 1) == 0)
        {
          v88 = v28;
          sub_1B498A620();
          v28 = v88;
        }
      }

      else
      {
        sub_1B4987B48(v41, v37);
        v28 = sub_1B49E9EC4(v22, v23);
        if ((v42 & 1) != (v43 & 1))
        {
          goto LABEL_77;
        }
      }

      v10 = v96;
      v17 = v101;
      if (v42)
      {
        goto LABEL_4;
      }

      v101[(v28 >> 6) + 8] |= 1 << v28;
      v79 = (v17[6] + 16 * v28);
      *v79 = v22;
      v79[1] = v23;
      sub_1B498B060(v102, (v17[7] + 32 * v28));
      v80 = v17[2];
      v32 = __OFADD__(v80, 1);
      v74 = v80 + 1;
      if (v32)
      {
        goto LABEL_74;
      }

LABEL_57:
      v17[2] = v74;
      goto LABEL_5;
    }

    v90 = a1;
    v60 = v94;
    v61 = v95;
    (*v93)(v94, v100, v95);
    v104 = v61;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v103);
    (*v92)(boxed_opaque_existential_1, v60, v61);
    sub_1B498B060(&v103, v102);
    swift_bridgeObjectRetain_n();
    v63 = swift_isUniquelyReferenced_nonNull_native();
    v101 = v17;
    v65 = sub_1B49E9EC4(v22, v23);
    v66 = v17[2];
    v67 = (v64 & 1) == 0;
    v68 = v66 + v67;
    if (__OFADD__(v66, v67))
    {
      goto LABEL_70;
    }

    v69 = v64;
    if (v17[3] >= v68)
    {
      if ((v63 & 1) == 0)
      {
        sub_1B498A620();
      }
    }

    else
    {
      sub_1B4987B48(v68, v63);
      v70 = sub_1B49E9EC4(v22, v23);
      if ((v69 & 1) != (v71 & 1))
      {
        goto LABEL_77;
      }

      v65 = v70;
    }

    v10 = v96;
    v17 = v101;
    if (v69)
    {
      v81 = (v101[7] + 32 * v65);
      __swift_destroy_boxed_opaque_existential_1Tm(v81);
      sub_1B498B060(v102, v81);
    }

    else
    {
      v101[(v65 >> 6) + 8] |= 1 << v65;
      v82 = (v17[6] + 16 * v65);
      *v82 = v22;
      v82[1] = v23;
      sub_1B498B060(v102, (v17[7] + 32 * v65));
      v83 = v17[2];
      v32 = __OFADD__(v83, 1);
      v84 = v83 + 1;
      if (v32)
      {
        goto LABEL_73;
      }

      v17[2] = v84;
    }

    (*v91)(v94, v95);
    a1 = v90;
LABEL_5:
    v14 &= v14 - 1;
    sub_1B4975024(v10, &qword_1EB8A81B0, &qword_1B4D382C0);
  }

  while (1)
  {
    v19 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v19 >= v15)
    {

      return v17;
    }

    v14 = *(v11 + 8 * v19);
    ++v16;
    if (v14)
    {
      v16 = v19;
      goto LABEL_11;
    }
  }

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
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  result = sub_1B4D18E1C();
  __break(1u);
  return result;
}

uint64_t sub_1B4BAEE8C(_BYTE *__src, _BYTE *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v10 = v3;
  v9 = 0;
  v8 = 0;
  if (__src && a2 != __src)
  {
    memcpy(&__dst, __src, v2);
    result = __dst;
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B4BAEF44(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_1B4D1753C();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_1B4D174FC();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1B4D1769C();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_1B4BAEFC0(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_1B4D1753C();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_1B4D174FC();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_1B4BAF044(uint64_t a1)
{
  v3 = a1 + 64;
  v2 = *(a1 + 64);
  v18 = MEMORY[0x1E69E7CC8];
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & v2;
  v7 = (v4 + 63) >> 6;

  for (i = 0; v6; result = sub_1B4975024(v16, &qword_1EB8ABBF0, &qword_1B4D382D0))
  {
    v10 = i;
LABEL_9:
    v11 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v12 = v11 | (v10 << 6);
    v13 = (*(a1 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    sub_1B4955D64(*(a1 + 56) + 32 * v12, v17);
    v16[0] = v14;
    v16[1] = v15;

    sub_1B4BAB458(v14, v15, v17);
  }

  while (1)
  {
    v10 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      return v18;
    }

    v6 = *(v3 + 8 * v10);
    ++i;
    if (v6)
    {
      i = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B4BAF184(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x797469746E617571 && a2 == 0xE800000000000000;
  if (v4 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1702125924 && a2 == 0xE400000000000000 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x676E69727473 && a2 == 0xE600000000000000 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7265626D756ELL && a2 == 0xE600000000000000 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1635017060 && a2 == 0xE400000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_1B4D18DCC();

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

uint64_t sub_1B4BAF32C(uint64_t a1)
{
  v2 = type metadata accessor for WorkoutMetadata();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t RingsBestMeasurementEntry.init(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v42 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C20, &unk_1B4D1FBF0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v40 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7158, &unk_1B4D20310);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v40 - v11;
  v13 = type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for LocalizedDate();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *a1;
  v41 = a3;
  *a3 = v22;
  v23 = type metadata accessor for Apple_Fitness_Intelligence_RingsBestMeasurementEntry(0);
  sub_1B4BAF764(a1 + *(v23 + 28), v12);
  v24 = *(v14 + 48);
  if (v24(v12, 1, v13) == 1)
  {
    *v17 = 0;
    *(v17 + 1) = 0;
    *(v17 + 4) = 0;
    v25 = &v17[*(v13 + 36)];
    sub_1B4D17BBC();
    v26 = &v17[*(v13 + 40)];
    *v26 = 0;
    *(v26 + 1) = 0;
    if (v24(v12, 1, v13) != 1)
    {
      sub_1B4BAF7D4(v12);
    }
  }

  else
  {
    sub_1B4BAF89C(v12, v17, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
  }

  v27 = *(v17 + 1);
  *&v28 = *v17;
  *(&v28 + 1) = HIDWORD(*v17);
  v29 = v28;
  *&v28 = v27;
  *(&v28 + 1) = SHIDWORD(v27);
  *v21 = v29;
  *(v21 + 1) = v28;
  *(v21 + 4) = *(v17 + 4);
  v30 = &v17[*(v13 + 40)];
  if (*(v30 + 1))
  {
    v31 = *v30;
    v32 = *(v30 + 1);

    sub_1B4D1797C();

    sub_1B4BAF83C(v17, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
  }

  else
  {
    sub_1B4BAF83C(v17, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
    v33 = sub_1B4D179BC();
    (*(*(v33 - 8) + 56))(v8, 1, 1, v33);
  }

  sub_1B4995980(v8, &v21[*(v18 + 36)]);
  v34 = type metadata accessor for RingsBestMeasurementEntry();
  v35 = v41;
  sub_1B4BAF89C(v21, v41 + *(v34 + 28), type metadata accessor for LocalizedDate);
  v36 = a1[1];
  v37 = [swift_getObjCClassFromMetadata() baseUnit];
  v38 = v35 + *(v34 + 32);
  sub_1B4D1741C();
  return sub_1B4BAF83C(a1, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMeasurementEntry);
}

uint64_t sub_1B4BAF764(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7158, &unk_1B4D20310);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4BAF7D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7158, &unk_1B4D20310);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B4BAF83C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B4BAF89C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t RingsBestMeasurementEntry.protobuf()(uint64_t a1)
{
  type metadata accessor for Apple_Fitness_Intelligence_RingsBestMeasurementEntry(0);
  v3 = *(a1 + 16);
  sub_1B4BAFD38(qword_1EDC3B4E8, type metadata accessor for Apple_Fitness_Intelligence_RingsBestMeasurementEntry);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4BAF9BC(char *a1, void *a2)
{
  v4 = sub_1B4D1746C();
  v23 = *(v4 - 8);
  v5 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v21 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21[1] = a2;
  *a1 = *a2;
  v13 = type metadata accessor for RingsBestMeasurementEntry();
  v24 = a2 + *(v13 + 28);
  sub_1B4BAFD38(qword_1EDC3C9B0, type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
  v14 = v22;
  sub_1B4D17DAC();
  v22 = v14;
  v15 = *(type metadata accessor for Apple_Fitness_Intelligence_RingsBestMeasurementEntry(0) + 28);
  sub_1B4BAF7D4(&a1[v15]);
  sub_1B4BAF89C(v12, &a1[v15], type metadata accessor for Apple_Fitness_Intelligence_LocalizedDate);
  (*(v9 + 56))(&a1[v15], 0, 1, v8);
  v16 = *(v13 + 32);
  v17 = [swift_getObjCClassFromMetadata() baseUnit];
  sub_1B4D1745C();

  sub_1B4D1742C();
  v19 = v18;
  result = (*(v23 + 8))(v7, v4);
  *(a1 + 1) = v19;
  return result;
}

uint64_t sub_1B4BAFD38(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t CountPropertyValue.init(_:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_1B4BAFDBC(a1);
  *a2 = v3;
  return result;
}

uint64_t sub_1B4BAFDBC(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t CountPropertyValue.protobuf()()
{
  v1 = *v0;
  type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue(0);
  sub_1B4BAFF1C(qword_1EDC3C3C0);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4BAFF1C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B4BAFF60()
{
  v1 = *v0;
  type metadata accessor for Apple_Fitness_Intelligence_CountPropertyValue(0);
  sub_1B4BAFF1C(qword_1EDC3C3C0);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4BAFFF4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_1B4BAFDBC(a1);
  *a2 = v3;
  return result;
}

uint64_t AverageWorkoutDurationFact.TemplateString.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_1B4D18B1C();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

unint64_t AverageWorkoutDurationFact.TemplateString.rawValue.getter()
{
  if (*v0)
  {
    result = 0xD00000000000005ALL;
  }

  else
  {
    result = 0xD0000000000000ACLL;
  }

  *v0;
  return result;
}

uint64_t sub_1B4BB00DC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD00000000000005ALL;
  }

  else
  {
    v4 = 0xD0000000000000ACLL;
  }

  if (v3)
  {
    v5 = ", not including today.";
  }

  else
  {
    v5 = "age_duration> for the month.";
  }

  v6 = v5 | 0x8000000000000000;
  if (*a2)
  {
    v7 = 0xD00000000000005ALL;
  }

  else
  {
    v7 = 0xD0000000000000ACLL;
  }

  if (*a2)
  {
    v8 = "age_duration> for the month.";
  }

  else
  {
    v8 = ", not including today.";
  }

  if (v4 == v7 && v6 == (v8 | 0x8000000000000000))
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1B4D18DCC();
  }

  return v10 & 1;
}

uint64_t sub_1B4BB0188()
{
  v1 = *v0;
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

uint64_t sub_1B4BB0208()
{
  *v0;
  sub_1B4D1820C();
}

uint64_t sub_1B4BB0274()
{
  v1 = *v0;
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

uint64_t sub_1B4BB02F0@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1B4D18B1C();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_1B4BB0350(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD00000000000005ALL;
  }

  else
  {
    v2 = 0xD0000000000000ACLL;
  }

  if (*v1)
  {
    v3 = "age_duration> for the month.";
  }

  else
  {
    v3 = ", not including today.";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

id AverageWorkoutDurationFact.placeholders()()
{
  v1 = type metadata accessor for AverageWorkoutDurationFact();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6B60, &qword_1B4D35490);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B4D1BE00;
  [*v0 effectiveTypeIdentifier];
  result = FILocalizedNameForIndoorAgnosticActivityType();
  if (result)
  {
    v6 = result;
    v7 = sub_1B4D1818C();
    v9 = v8;

    strcpy((v4 + 32), "activity_type");
    *(v4 + 46) = -4864;
    v10 = swift_allocObject();
    *(v10 + 16) = v7;
    *(v10 + 24) = v9;
    *(v4 + 48) = sub_1B4993DFC;
    *(v4 + 56) = v10;
    *(v4 + 64) = 0;
    *(v4 + 72) = 0;
    sub_1B4B0111C(v0, &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
    v11 = (*(v2 + 80) + 16) & ~*(v2 + 80);
    v12 = swift_allocObject();
    sub_1B4BB0B8C(&v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11);
    *(v4 + 80) = 0xD00000000000001ALL;
    *(v4 + 88) = 0x80000001B4D628B0;
    *(v4 + 96) = sub_1B4BB0BF0;
    *(v4 + 104) = v12;
    *(v4 + 112) = 0;
    *(v4 + 120) = 0;
    sub_1B4B0111C(v0, &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
    v13 = swift_allocObject();
    sub_1B4BB0B8C(&v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v11);
    *(v4 + 128) = 0xD00000000000001ALL;
    *(v4 + 136) = 0x80000001B4D628D0;
    *(v4 + 144) = sub_1B4BB0D28;
    *(v4 + 152) = v13;
    *(v4 + 160) = 0;
    *(v4 + 168) = 0;
    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B4BB05DC(uint64_t a1, uint64_t a2)
{
  v3 = *(type metadata accessor for AverageWorkoutDurationFact() + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB100, &unk_1B4D44B50);
  v4 = *(sub_1B4D18F8C() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1B4D1B2D0;
  sub_1B4D18F4C();
  sub_1B4D18F5C();
  sub_1B4D18F6C();
  sub_1B4D18F7C();
  v8 = sub_1B4BCA7BC(v7);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v9 = sub_1B4D15F5C(a2 + v3, v8);

  return v9;
}

uint64_t sub_1B4BB0738(uint64_t a1, uint64_t a2)
{
  v3 = *(type metadata accessor for AverageWorkoutDurationFact() + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AB100, &unk_1B4D44B50);
  v4 = *(sub_1B4D18F8C() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1B4D1B2D0;
  sub_1B4D18F4C();
  sub_1B4D18F5C();
  sub_1B4D18F6C();
  sub_1B4D18F7C();
  v8 = sub_1B4BCA7BC(v7);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v9 = sub_1B4D15F5C(a2 + v3, v8);

  return v9;
}

int *AverageWorkoutDurationFact.selectTemplate(formatter:)@<X0>(BOOL *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v13 - v6;
  result = type metadata accessor for AverageWorkoutDurationFact();
  v12 = 1;
  if (*(v1 + result[8]) == 1)
  {
    v10 = result[6];
    v9 = result[7];
    sub_1B4BB0DC4();
    sub_1B4D173EC();
    sub_1B49B0578(&qword_1EDC37870, &qword_1EB8A6850, &unk_1B4D1BC10);
    v11 = sub_1B4D1810C();
    result = (*(v4 + 8))(v7, v3);
    if (v11)
    {
      v12 = 0;
    }
  }

  *a1 = v12;
  return result;
}

void sub_1B4BB0A14(uint64_t a1@<X1>, char *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - v8;
  if (*(v2 + *(a1 + 32)) != 1)
  {
    goto LABEL_4;
  }

  v12 = a1 + 24;
  v10 = *(a1 + 24);
  v11 = *(v12 + 4);
  sub_1B4BB0DC4();
  sub_1B4D173EC();
  sub_1B49B0578(&qword_1EDC37870, &qword_1EB8A6850, &unk_1B4D1BC10);
  v13 = sub_1B4D1810C();
  (*(v6 + 8))(v9, v5);
  if (v13)
  {
    v14 = 0;
  }

  else
  {
LABEL_4:
    v14 = 1;
  }

  *a2 = v14;
}

uint64_t sub_1B4BB0B8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AverageWorkoutDurationFact();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_3Tm_0()
{
  v1 = (type metadata accessor for AverageWorkoutDurationFact() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[8];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v3 + v5, v6);
  v7(v0 + v3 + v1[9], v6);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1B4BB0D40(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for AverageWorkoutDurationFact() - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

unint64_t sub_1B4BB0DC4()
{
  result = qword_1EDC378C0;
  if (!qword_1EDC378C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDC378C0);
  }

  return result;
}

unint64_t sub_1B4BB0E14()
{
  result = qword_1EB8ABBF8;
  if (!qword_1EB8ABBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ABBF8);
  }

  return result;
}

unint64_t sub_1B4BB0EB0()
{
  result = qword_1EB8ABC10;
  if (!qword_1EB8ABC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ABC10);
  }

  return result;
}

unint64_t sub_1B4BB0F08()
{
  result = qword_1EB8ABC18;
  if (!qword_1EB8ABC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ABC18);
  }

  return result;
}

unint64_t sub_1B4BB0F5C(uint64_t a1)
{
  result = sub_1B4BB0F84();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4BB0F84()
{
  result = qword_1EB8ABC20;
  if (!qword_1EB8ABC20)
  {
    type metadata accessor for AverageWorkoutDurationFact();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ABC20);
  }

  return result;
}

uint64_t FitnessContextQueryDescriptor.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v150 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABC28, &qword_1B4D38428);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v143 = &v124 - v5;
  v142 = type metadata accessor for Apple_Fitness_Intelligence_LocationCoordinate(0);
  v140 = *(v142 - 8);
  v6 = *(v140 + 64);
  MEMORY[0x1EEE9AC00](v142);
  v146 = (&v124 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v144 = type metadata accessor for LocationCoordinate();
  v8 = *(*(v144 - 8) + 64);
  MEMORY[0x1EEE9AC00](v144);
  v145 = &v124 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = sub_1B4D174EC();
  v139 = *(v141 - 8);
  v10 = *(v139 + 64);
  MEMORY[0x1EEE9AC00](v141);
  v138 = &v124 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1B4D1777C();
  v13 = *(v12 - 8);
  v147 = v12;
  v148 = v13;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v136 = &v124 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v132 = &v124 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v130 = &v124 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v137 = &v124 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v135 = &v124 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v134 = &v124 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v133 = &v124 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v126 = &v124 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v124 - v31;
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v124 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6680, &unk_1B4D2FD90);
  v37 = *(*(v36 - 8) + 64);
  MEMORY[0x1EEE9AC00](v36 - 8);
  v131 = &v124 - v38;
  v128 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery(0);
  v127 = *(v128 - 8);
  v39 = *(v127 + 64);
  MEMORY[0x1EEE9AC00](v128);
  v129 = &v124 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6668, &qword_1B4D1A658);
  v42 = *(*(v41 - 8) + 64);
  MEMORY[0x1EEE9AC00](v41 - 8);
  v44 = &v124 - v43;
  v45 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery(0);
  v125 = *(v45 - 1);
  v46 = *(v125 + 64);
  MEMORY[0x1EEE9AC00](v45);
  v48 = &v124 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  Descriptor = type metadata accessor for FitnessContextQueryDescriptor();
  v49 = *(*(Descriptor - 8) + 64);
  MEMORY[0x1EEE9AC00](Descriptor);
  v51 = &v124 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v52);
  v54 = &v124 - v53;
  v55 = a1;
  v56 = *(a1 + *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor(0) + 20));
  swift_beginAccess();
  if (*(v56 + 24) != 1)
  {
    sub_1B4BB3804();
    swift_allocError();
    swift_willThrow();
    return sub_1B4BB3A38(v55, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor);
  }

  v124 = v55;
  v57 = *(v56 + 16);
  if (v57 > 4)
  {
    if (v57 <= 6)
    {
      if (v57 == 5)
      {
        v72 = (v56 + OBJC_IVAR____TtCV19FitnessIntelligence56Apple_Fitness_Intelligence_FitnessContextQueryDescriptorP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__dateIntervalStart);
        swift_beginAccess();
        v73 = *v72;
        *(v72 + 8);
        v74 = v133;
        sub_1B4D176CC();
        v75 = (v56 + OBJC_IVAR____TtCV19FitnessIntelligence56Apple_Fitness_Intelligence_FitnessContextQueryDescriptorP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__dateIntervalEnd);
        swift_beginAccess();
        v76 = *v75;
        *(v75 + 8);
        v77 = v134;
        sub_1B4D176CC();
        v79 = v147;
        v78 = v148;
        v80 = *(v148 + 16);
        v80(v135, v74, v147);
        v80(v137, v77, v79);
        v81 = v138;
        sub_1B4D174CC();
        v82 = *(v78 + 8);
        v82(v77, v79);
        v82(v74, v79);
        sub_1B4BB3A38(v124, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor);
        (*(v139 + 32))(v150, v81, v141);
      }

      else
      {
        v111 = (v56 + OBJC_IVAR____TtCV19FitnessIntelligence56Apple_Fitness_Intelligence_FitnessContextQueryDescriptorP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__currentDate);
        swift_beginAccess();
        v112 = *v111;
        *(v111 + 8);
        v113 = v130;
        sub_1B4D176CC();
        sub_1B4BB3A38(v124, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor);
        (*(v148 + 32))(v150, v113, v147);
      }
    }

    else if (v57 == 7)
    {
      v85 = (v56 + OBJC_IVAR____TtCV19FitnessIntelligence56Apple_Fitness_Intelligence_FitnessContextQueryDescriptorP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__currentDate);
      swift_beginAccess();
      v86 = *v85;
      *(v85 + 8);
      v87 = v132;
      sub_1B4D176CC();
      sub_1B4BB3A38(v124, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor);
      (*(v148 + 32))(v150, v87, v147);
    }

    else if (v57 == 8)
    {
      v61 = (v56 + OBJC_IVAR____TtCV19FitnessIntelligence56Apple_Fitness_Intelligence_FitnessContextQueryDescriptorP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__currentDate);
      swift_beginAccess();
      v62 = *v61;
      *(v61 + 8);
      v63 = v136;
      sub_1B4D176CC();
      sub_1B4BB3A38(v124, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor);
      (*(v148 + 32))(v150, v63, v147);
    }

    else
    {
      v90 = OBJC_IVAR____TtCV19FitnessIntelligence56Apple_Fitness_Intelligence_FitnessContextQueryDescriptorP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__location;
      swift_beginAccess();
      v91 = v143;
      sub_1B4974FBC(v56 + v90, v143, &qword_1EB8ABC28, &qword_1B4D38428);
      v92 = *(v140 + 48);
      v93 = v142;
      if (v92(v91, 1, v142) == 1)
      {
        v94 = v146;
        *v146 = 0u;
        v94[1] = 0u;
        v95 = v94 + *(v93 + 32);
        sub_1B4D17BBC();
        v96 = v92(v91, 1, v93);
        v97 = v124;
        if (v96 != 1)
        {
          sub_1B4975024(v91, &qword_1EB8ABC28, &qword_1B4D38428);
        }
      }

      else
      {
        v94 = v146;
        sub_1B4BB3988(v91, v146, type metadata accessor for Apple_Fitness_Intelligence_LocationCoordinate);
        v97 = v124;
      }

      v114 = *v94;
      v115 = v145;
      sub_1B4D176CC();
      v116 = v144;
      v117 = *(v94 + 2);
      *(v115 + *(v144 + 20)) = *(v94 + 1);
      *(v115 + *(v116 + 24)) = v117;
      v118 = *(v94 + 3);
      sub_1B499221C();
      v119 = [swift_getObjCClassFromMetadata() baseUnit];
      v120 = v115 + *(v116 + 28);
      sub_1B4D1741C();
      sub_1B4BB3A38(v94, type metadata accessor for Apple_Fitness_Intelligence_LocationCoordinate);
      sub_1B4BB3A38(v97, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor);
      sub_1B4BB3988(v115, v150, type metadata accessor for LocationCoordinate);
    }

    return swift_storeEnumTagMultiPayload();
  }

  if (v57 > 1)
  {
    if (v57 == 2)
    {
      v83 = (v56 + OBJC_IVAR____TtCV19FitnessIntelligence56Apple_Fitness_Intelligence_FitnessContextQueryDescriptorP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__currentDate);
      swift_beginAccess();
      v84 = *v83;
      *(v83 + 8);
      sub_1B4D176CC();
      sub_1B4BB3A38(v124, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor);
      (*(v148 + 32))(v150, v35, v147);
    }

    else
    {
      v58 = (v56 + OBJC_IVAR____TtCV19FitnessIntelligence56Apple_Fitness_Intelligence_FitnessContextQueryDescriptorP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__currentDate);
      if (v57 == 3)
      {
        swift_beginAccess();
        v59 = *v58;
        *(v58 + 8);
        sub_1B4D176CC();
        sub_1B4BB3A38(v124, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor);
        (*(v148 + 32))(v150, v32, v147);
      }

      else
      {
        swift_beginAccess();
        v88 = *v58;
        *(v58 + 8);
        v89 = v126;
        sub_1B4D176CC();
        sub_1B4BB3A38(v124, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor);
        (*(v148 + 32))(v150, v89, v147);
      }
    }

    return swift_storeEnumTagMultiPayload();
  }

  if (v57)
  {
    v98 = OBJC_IVAR____TtCV19FitnessIntelligence56Apple_Fitness_Intelligence_FitnessContextQueryDescriptorP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__ringsPropertiesQuery;
    swift_beginAccess();
    v99 = v131;
    sub_1B4974FBC(v56 + v98, v131, &qword_1EB8A6680, &unk_1B4D2FD90);
    v100 = *(v127 + 48);
    v101 = v128;
    if (v100(v99, 1, v128) == 1)
    {
      v102 = MEMORY[0x1E69E7CC0];
      v103 = v129;
      *v129 = MEMORY[0x1E69E7CC0];
      *(v103 + 1) = v102;
      v104 = &v103[v101[6]];
      sub_1B4D17BBC();
      v105 = v101[7];
      v106 = type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor(0);
      (*(*(v106 - 8) + 56))(&v103[v105], 1, 1, v106);
      v107 = v101[8];
      v108 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertyDimensionsFilters(0);
      (*(*(v108 - 8) + 56))(&v103[v107], 1, 1, v108);
      v109 = v100(v99, 1, v101);
      v110 = v124;
      if (v109 != 1)
      {
        sub_1B4975024(v99, &qword_1EB8A6680, &unk_1B4D2FD90);
      }
    }

    else
    {
      v103 = v129;
      sub_1B4BB3988(v99, v129, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery);
      v110 = v124;
    }

    v123 = v151;
    RingsPropertiesQuery.init(_:)(v103, v51);
    result = sub_1B4BB3A38(v110, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor);
    if (!v123)
    {
      swift_storeEnumTagMultiPayload();
      v122 = v51;
      return sub_1B4BB3988(v122, v150, type metadata accessor for FitnessContextQueryDescriptor);
    }
  }

  else
  {
    v64 = OBJC_IVAR____TtCV19FitnessIntelligence56Apple_Fitness_Intelligence_FitnessContextQueryDescriptorP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__workoutPropertiesQuery;
    swift_beginAccess();
    sub_1B4974FBC(v56 + v64, v44, &qword_1EB8A6668, &qword_1B4D1A658);
    v65 = *(v125 + 48);
    if (v65(v44, 1, v45) == 1)
    {
      v66 = MEMORY[0x1E69E7CC0];
      *v48 = MEMORY[0x1E69E7CC0];
      *(v48 + 1) = v66;
      v67 = &v48[v45[6]];
      sub_1B4D17BBC();
      v68 = v45[7];
      v69 = type metadata accessor for Apple_Fitness_Intelligence_DateRangeDescriptor(0);
      (*(*(v69 - 8) + 56))(&v48[v68], 1, 1, v69);
      v70 = v45[8];
      v71 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertyDimensionsFilters(0);
      (*(*(v71 - 8) + 56))(&v48[v70], 1, 1, v71);
      if (v65(v44, 1, v45) != 1)
      {
        sub_1B4975024(v44, &qword_1EB8A6668, &qword_1B4D1A658);
      }
    }

    else
    {
      sub_1B4BB3988(v44, v48, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery);
    }

    v121 = v151;
    WorkoutPropertiesQuery.init(_:)(v48, v54);
    result = sub_1B4BB3A38(v124, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor);
    if (!v121)
    {
      swift_storeEnumTagMultiPayload();
      v122 = v54;
      return sub_1B4BB3988(v122, v150, type metadata accessor for FitnessContextQueryDescriptor);
    }
  }

  return result;
}

uint64_t FitnessContextQueryDescriptor.protobuf()()
{
  type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor(0);
  sub_1B4BB39F0(&qword_1EB8AA710, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4BB2190(uint64_t a1, uint64_t a2)
{
  v252 = a2;
  v253 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABC28, &qword_1B4D38428);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v244 = &v230 - v4;
  v236 = type metadata accessor for Apple_Fitness_Intelligence_LocationCoordinate(0);
  v242 = *(v236 - 8);
  v5 = *(v242 + 64);
  MEMORY[0x1EEE9AC00](v236);
  v235 = &v230 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for LocationCoordinate();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v243 = &v230 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1B4D174EC();
  v246 = *(v10 - 8);
  v247 = v10;
  v11 = *(v246 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v248 = &v230 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1B4D1777C();
  v249 = *(v13 - 8);
  v250 = v13;
  v14 = *(v249 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v240 = &v230 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v239 = &v230 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v238 = &v230 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v241 = &v230 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v230 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v237 = &v230 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v230 - v28;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v230 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6680, &unk_1B4D2FD90);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v233 = &v230 - v35;
  v234 = type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery(0);
  v232 = *(v234 - 8);
  v36 = *(v232 + 64);
  MEMORY[0x1EEE9AC00](v234);
  v245 = &v230 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for RingsPropertiesQuery();
  v39 = *(*(v38 - 8) + 64);
  MEMORY[0x1EEE9AC00](v38 - 8);
  v41 = &v230 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6668, &qword_1B4D1A658);
  v43 = *(*(v42 - 8) + 64);
  MEMORY[0x1EEE9AC00](v42 - 8);
  v231 = &v230 - v44;
  v45 = type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery(0);
  v230 = *(v45 - 8);
  v46 = *(v230 + 64);
  MEMORY[0x1EEE9AC00](v45);
  v48 = &v230 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for WorkoutPropertiesQuery();
  v50 = *(*(v49 - 8) + 64);
  MEMORY[0x1EEE9AC00](v49 - 8);
  v52 = &v230 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  Descriptor = type metadata accessor for FitnessContextQueryDescriptor();
  v54 = *(*(Descriptor - 8) + 64);
  MEMORY[0x1EEE9AC00](Descriptor);
  v56 = &v230 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B49EEFF0(v252, v56);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 6)
    {
      v71 = v253;
      v72 = v249;
      v73 = v250;
      if (EnumCaseMultiPayload == 5)
      {
        (*(v246 + 32))(v248, v56, v247);
        v104 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor(0) + 20);
        v105 = *(v71 + v104);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v107 = *(v71 + v104);
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v108 = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor._StorageClass(0);
          v109 = *(v108 + 48);
          v110 = *(v108 + 52);
          swift_allocObject();
          v107 = sub_1B4C24944(v107);
          *(v71 + v104) = v107;
        }

        swift_beginAccess();
        *(v107 + 16) = 5;
        *(v107 + 24) = 1;
        sub_1B4D174DC();
        sub_1B4D176DC();
        v112 = v111;
        v113 = *(v72 + 8);
        v113(v24, v73);
        v114 = *(v71 + v104);
        v115 = swift_isUniquelyReferenced_nonNull_native();
        v116 = *(v71 + v104);
        if ((v115 & 1) == 0)
        {
          v117 = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor._StorageClass(0);
          v118 = *(v117 + 48);
          v119 = *(v117 + 52);
          swift_allocObject();
          v116 = sub_1B4C24944(v116);
          *(v71 + v104) = v116;
        }

        v120 = v116 + OBJC_IVAR____TtCV19FitnessIntelligence56Apple_Fitness_Intelligence_FitnessContextQueryDescriptorP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__dateIntervalStart;
        swift_beginAccess();
        *v120 = v112;
        *(v120 + 8) = 0;
        v121 = v241;
        v122 = v248;
        sub_1B4D174BC();
        sub_1B4D176DC();
        v69 = v123;
        v113(v121, v73);
        v124 = *(v71 + v104);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          (*(v246 + 8))(v122, v247);
          v125 = *(v71 + v104);
        }

        else
        {
          v223 = *(v71 + v104);
          v224 = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor._StorageClass(0);
          v225 = *(v224 + 48);
          v226 = *(v224 + 52);
          swift_allocObject();

          v228 = sub_1B4C24944(v227);
          v229 = v122;
          v125 = v228;
          (*(v246 + 8))(v229, v247);

          *(v71 + v104) = v125;
        }

        v216 = v125 + OBJC_IVAR____TtCV19FitnessIntelligence56Apple_Fitness_Intelligence_FitnessContextQueryDescriptorP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__dateIntervalEnd;
        goto LABEL_66;
      }

      v74 = v238;
      (*(v249 + 32))(v238, v56, v250);
      v75 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor(0) + 20);
      v194 = *(v71 + v75);
      v195 = swift_isUniquelyReferenced_nonNull_native();
      v78 = *(v71 + v75);
      if ((v195 & 1) == 0)
      {
        v196 = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor._StorageClass(0);
        v197 = *(v196 + 48);
        v198 = *(v196 + 52);
        swift_allocObject();
        v78 = sub_1B4C24944(v78);
        *(v71 + v75) = v78;
      }

      swift_beginAccess();
      v82 = 6;
    }

    else
    {
      v71 = v253;
      v72 = v249;
      v73 = v250;
      if (EnumCaseMultiPayload == 7)
      {
        v74 = v239;
        (*(v249 + 32))(v239, v56, v250);
        v75 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor(0) + 20);
        v137 = *(v71 + v75);
        v138 = swift_isUniquelyReferenced_nonNull_native();
        v78 = *(v71 + v75);
        if ((v138 & 1) == 0)
        {
          v139 = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor._StorageClass(0);
          v140 = *(v139 + 48);
          v141 = *(v139 + 52);
          swift_allocObject();
          v78 = sub_1B4C24944(v78);
          *(v71 + v75) = v78;
        }

        swift_beginAccess();
        v82 = 7;
      }

      else
      {
        if (EnumCaseMultiPayload != 8)
        {
          v154 = v243;
          sub_1B4BB3988(v56, v243, type metadata accessor for LocationCoordinate);
          v155 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor(0) + 20);
          v156 = *(v71 + v155);
          v157 = swift_isUniquelyReferenced_nonNull_native();
          v158 = *(v71 + v155);
          if ((v157 & 1) == 0)
          {
            v159 = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor._StorageClass(0);
            v160 = *(v159 + 48);
            v161 = *(v159 + 52);
            swift_allocObject();
            v158 = sub_1B4C24944(v158);
            *(v71 + v155) = v158;
          }

          v162 = v236;
          v163 = v235;
          v164 = swift_beginAccess();
          *(v158 + 16) = 9;
          *(v158 + 24) = 1;
          MEMORY[0x1EEE9AC00](v164);
          *(&v230 - 2) = v154;
          sub_1B4BB39F0(&qword_1EB8AA6E0, type metadata accessor for Apple_Fitness_Intelligence_LocationCoordinate);
          sub_1B4D17DAC();
          v165 = *(v71 + v155);
          v166 = swift_isUniquelyReferenced_nonNull_native();
          v167 = *(v71 + v155);
          if ((v166 & 1) == 0)
          {
            v168 = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor._StorageClass(0);
            v169 = *(v168 + 48);
            v170 = *(v168 + 52);
            swift_allocObject();
            v167 = sub_1B4C24944(v167);
            *(v71 + v155) = v167;
          }

          v171 = v244;
          sub_1B4BB3988(v163, v244, type metadata accessor for Apple_Fitness_Intelligence_LocationCoordinate);
          (*(v242 + 56))(v171, 0, 1, v162);
          v172 = OBJC_IVAR____TtCV19FitnessIntelligence56Apple_Fitness_Intelligence_FitnessContextQueryDescriptorP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__location;
          swift_beginAccess();
          sub_1B49A205C(v171, v167 + v172, &qword_1EB8ABC28, &qword_1B4D38428);
          swift_endAccess();
          v173 = type metadata accessor for LocationCoordinate;
          goto LABEL_54;
        }

        v74 = v240;
        (*(v249 + 32))(v240, v56, v250);
        v75 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor(0) + 20);
        v76 = *(v71 + v75);
        v77 = swift_isUniquelyReferenced_nonNull_native();
        v78 = *(v71 + v75);
        if ((v77 & 1) == 0)
        {
          v79 = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor._StorageClass(0);
          v80 = *(v79 + 48);
          v81 = *(v79 + 52);
          swift_allocObject();
          v78 = sub_1B4C24944(v78);
          *(v71 + v75) = v78;
        }

        swift_beginAccess();
        v82 = 8;
      }
    }

    *(v78 + 16) = v82;
    *(v78 + 24) = 1;
    sub_1B4D176DC();
    v69 = v199;
    v200 = *(v71 + v75);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      (*(v72 + 8))(v74, v73);
      v136 = *(v71 + v75);
    }

    else
    {
      v201 = *(v71 + v75);
      v202 = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor._StorageClass(0);
      v203 = *(v202 + 48);
      v204 = *(v202 + 52);
      swift_allocObject();

      v136 = sub_1B4C24944(v205);
      (*(v72 + 8))(v74, v73);

      *(v71 + v75) = v136;
    }

    goto LABEL_65;
  }

  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      sub_1B4BB3988(v56, v52, type metadata accessor for WorkoutPropertiesQuery);
      v83 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor(0) + 20);
      v84 = v253;
      v85 = *(v253 + v83);
      v86 = swift_isUniquelyReferenced_nonNull_native();
      v87 = *(v84 + v83);
      v88 = v251;
      if ((v86 & 1) == 0)
      {
        v89 = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor._StorageClass(0);
        v90 = *(v89 + 48);
        v91 = *(v89 + 52);
        swift_allocObject();
        v87 = sub_1B4C24944(v87);
        *(v84 + v83) = v87;
      }

      v92 = swift_beginAccess();
      *(v87 + 16) = 0;
      *(v87 + 24) = 1;
      MEMORY[0x1EEE9AC00](v92);
      *(&v230 - 2) = v52;
      sub_1B4BB39F0(qword_1EDC3B900, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery);
      sub_1B4D17DAC();
      if (!v88)
      {
        v93 = v253;
        v94 = *(v253 + v83);
        v95 = swift_isUniquelyReferenced_nonNull_native();
        v96 = *(v93 + v83);
        if ((v95 & 1) == 0)
        {
          v97 = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor._StorageClass(0);
          v98 = *(v97 + 48);
          v99 = *(v97 + 52);
          swift_allocObject();
          v96 = sub_1B4C24944(v96);
          *(v93 + v83) = v96;
        }

        v100 = v231;
        sub_1B4BB3988(v48, v231, type metadata accessor for Apple_Fitness_Intelligence_WorkoutPropertiesQuery);
        (*(v230 + 56))(v100, 0, 1, v45);
        v101 = OBJC_IVAR____TtCV19FitnessIntelligence56Apple_Fitness_Intelligence_FitnessContextQueryDescriptorP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__workoutPropertiesQuery;
        swift_beginAccess();
        sub_1B49A205C(v100, v96 + v101, &qword_1EB8A6668, &qword_1B4D1A658);
        swift_endAccess();
      }

      v102 = type metadata accessor for WorkoutPropertiesQuery;
      v103 = v52;
      return sub_1B4BB3A38(v103, v102);
    }

    v154 = v41;
    sub_1B4BB3988(v56, v41, type metadata accessor for RingsPropertiesQuery);
    v174 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor(0) + 20);
    v175 = v253;
    v176 = *(v253 + v174);
    v177 = swift_isUniquelyReferenced_nonNull_native();
    v178 = *(v175 + v174);
    v179 = v251;
    if ((v177 & 1) == 0)
    {
      v180 = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor._StorageClass(0);
      v181 = *(v180 + 48);
      v182 = *(v180 + 52);
      swift_allocObject();
      v178 = sub_1B4C24944(v178);
      *(v175 + v174) = v178;
    }

    v183 = v234;
    v184 = swift_beginAccess();
    *(v178 + 16) = 1;
    *(v178 + 24) = 1;
    MEMORY[0x1EEE9AC00](v184);
    *(&v230 - 2) = v154;
    sub_1B4BB39F0(qword_1EDC3BE68, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery);
    sub_1B4D17DAC();
    if (!v179)
    {
      v185 = *(v175 + v174);
      v186 = swift_isUniquelyReferenced_nonNull_native();
      v187 = *(v175 + v174);
      if ((v186 & 1) == 0)
      {
        v188 = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor._StorageClass(0);
        v189 = *(v188 + 48);
        v190 = *(v188 + 52);
        swift_allocObject();
        v187 = sub_1B4C24944(v187);
        *(v175 + v174) = v187;
      }

      v191 = v233;
      sub_1B4BB3988(v245, v233, type metadata accessor for Apple_Fitness_Intelligence_RingsPropertiesQuery);
      (*(v232 + 56))(v191, 0, 1, v183);
      v192 = OBJC_IVAR____TtCV19FitnessIntelligence56Apple_Fitness_Intelligence_FitnessContextQueryDescriptorP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__ringsPropertiesQuery;
      swift_beginAccess();
      sub_1B49A205C(v191, v187 + v192, &qword_1EB8A6680, &unk_1B4D2FD90);
      swift_endAccess();
    }

    v173 = type metadata accessor for RingsPropertiesQuery;
LABEL_54:
    v102 = v173;
    v103 = v154;
    return sub_1B4BB3A38(v103, v102);
  }

  if (EnumCaseMultiPayload == 2)
  {
    v126 = v249;
    v127 = v250;
    (*(v249 + 32))(v32, v56, v250);
    v61 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor(0) + 20);
    v58 = v253;
    v128 = *(v253 + v61);
    v129 = swift_isUniquelyReferenced_nonNull_native();
    v130 = *(v58 + v61);
    if ((v129 & 1) == 0)
    {
      v131 = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor._StorageClass(0);
      v132 = *(v131 + 48);
      v133 = *(v131 + 52);
      swift_allocObject();
      v130 = sub_1B4C24944(v130);
      *(v58 + v61) = v130;
    }

    swift_beginAccess();
    *(v130 + 16) = 2;
    *(v130 + 24) = 1;
    sub_1B4D176DC();
    v69 = v134;
    v135 = *(v58 + v61);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      (*(v126 + 8))(v32, v127);
      goto LABEL_34;
    }

    v206 = *(v58 + v61);
    v207 = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor._StorageClass(0);
    v208 = *(v207 + 48);
    v209 = *(v207 + 52);
    swift_allocObject();

    v136 = sub_1B4C24944(v210);
    (*(v126 + 8))(v32, v127);
LABEL_64:

    *(v58 + v61) = v136;
    goto LABEL_65;
  }

  v58 = v253;
  v59 = v249;
  if (EnumCaseMultiPayload == 3)
  {
    v60 = v250;
    (*(v249 + 32))(v29, v56, v250);
    v61 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor(0) + 20);
    v62 = *(v58 + v61);
    v63 = swift_isUniquelyReferenced_nonNull_native();
    v64 = *(v58 + v61);
    if ((v63 & 1) == 0)
    {
      v65 = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor._StorageClass(0);
      v66 = *(v65 + 48);
      v67 = *(v65 + 52);
      swift_allocObject();
      v64 = sub_1B4C24944(v64);
      *(v58 + v61) = v64;
    }

    swift_beginAccess();
    *(v64 + 16) = 3;
    *(v64 + 24) = 1;
    sub_1B4D176DC();
    v69 = v68;
    v70 = *(v58 + v61);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      (*(v59 + 8))(v29, v60);
LABEL_34:
      v136 = *(v58 + v61);
LABEL_65:
      v216 = v136 + OBJC_IVAR____TtCV19FitnessIntelligence56Apple_Fitness_Intelligence_FitnessContextQueryDescriptorP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__currentDate;
LABEL_66:
      result = swift_beginAccess();
      *v216 = v69;
      *(v216 + 8) = 0;
      return result;
    }

    v211 = *(v58 + v61);
    v212 = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor._StorageClass(0);
    v213 = *(v212 + 48);
    v214 = *(v212 + 52);
    swift_allocObject();

    v136 = sub_1B4C24944(v215);
    (*(v59 + 8))(v29, v60);
    goto LABEL_64;
  }

  v142 = v237;
  (*(v249 + 32))(v237, v56, v250);
  v143 = *(type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor(0) + 20);
  v144 = *(v58 + v143);
  v145 = swift_isUniquelyReferenced_nonNull_native();
  v146 = *(v58 + v143);
  if ((v145 & 1) == 0)
  {
    v147 = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor._StorageClass(0);
    v148 = *(v147 + 48);
    v149 = *(v147 + 52);
    swift_allocObject();
    v146 = sub_1B4C24944(v146);
    *(v58 + v143) = v146;
  }

  swift_beginAccess();
  *(v146 + 16) = 4;
  *(v146 + 24) = 1;
  sub_1B4D176DC();
  v151 = v150;
  v152 = *(v58 + v143);
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    (*(v59 + 8))(v142, v250);
    v153 = *(v58 + v143);
  }

  else
  {
    v217 = *(v58 + v143);
    v218 = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor._StorageClass(0);
    v219 = *(v218 + 48);
    v220 = *(v218 + 52);
    swift_allocObject();

    v153 = sub_1B4C24944(v221);
    (*(v59 + 8))(v142, v250);

    *(v58 + v143) = v153;
  }

  v222 = v153 + OBJC_IVAR____TtCV19FitnessIntelligence56Apple_Fitness_Intelligence_FitnessContextQueryDescriptorP33_7C28F209FCF5FD29451436424F3C6A0813_StorageClass__currentDate;
  result = swift_beginAccess();
  *v222 = v151;
  *(v222 + 8) = 0;
  return result;
}

uint64_t sub_1B4BB35C4(uint64_t a1)
{
  Descriptor = type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor(0);
  v5 = *(*(Descriptor - 8) + 64);
  MEMORY[0x1EEE9AC00](Descriptor);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B4BB39F0(&qword_1EB8ABC48, type metadata accessor for FitnessContextQueryDescriptor);
  (*(v8 + 32))(a1, v8);
  if (!v2)
  {
    sub_1B4BB39F0(&qword_1EB8AA710, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor);
    v1 = sub_1B4D17D6C();
    sub_1B4BB3A38(v7, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor);
  }

  return v1;
}

uint64_t sub_1B4BB3744()
{
  type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor(0);
  sub_1B4BB39F0(&qword_1EB8AA710, type metadata accessor for Apple_Fitness_Intelligence_FitnessContextQueryDescriptor);
  return sub_1B4D17DAC();
}

unint64_t sub_1B4BB3804()
{
  result = qword_1EB8ABC30;
  if (!qword_1EB8ABC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ABC30);
  }

  return result;
}

unint64_t sub_1B4BB3918()
{
  result = qword_1EB8ABC40;
  if (!qword_1EB8ABC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ABC40);
  }

  return result;
}

uint64_t sub_1B4BB3988(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B4BB39F0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B4BB3A38(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t static WorkoutMediaCurrentPlayingItemFact.analyze(_:unitManager:currentWorkoutState:previousWorkoutState:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1B49C016C;

  return sub_1B4BB50B4(a1, a3);
}

uint64_t WorkoutMediaCurrentPlayingItemFact.QueryIdentifier.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1B4D18B1C();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1B4BB3BF0@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1B4D18B1C();

  *a2 = v5 != 0;
  return result;
}

void sub_1B4BB3C44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, BOOL *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12)
{
  if (a2)
  {
    v13 = sub_1B4D1817C();
    v15[4] = a9;
    v15[5] = a10;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 1107296256;
    v15[2] = sub_1B4BB3D4C;
    v15[3] = &block_descriptor_0;
    v14 = _Block_copy(v15);

    LXLexiconEnumerateEntriesForString();
    _Block_release(v14);

    swift_beginAccess();
    *a7 = (*(a11 + 16) & a12) != 0;
  }
}

void sub_1B4BB3D4C(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a2;
  v6(a2, a3);
}

uint64_t sub_1B4BB3DC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1B49C0344;

  return sub_1B4BB50B4(a1, a3);
}

unint64_t sub_1B4BB3E8C(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v5 = sub_1B4BB3FDC(0xFuLL, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
      v8 = sub_1B4D1895C();
    }

    else
    {
      v6 = v5 >> 16;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v16[0] = a1;
        v16[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v7 = v16 + v6;
      }

      else if ((a1 & 0x1000000000000000) != 0)
      {
        v7 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32 + v6);
      }

      else
      {
        v7 = (sub_1B4D189CC() + v6);
      }

      v8 = *v7;
      if (*v7 < 0)
      {
        v9 = (__clz(v8 ^ 0xFF) - 24);
        if (v9 > 2)
        {
          if (v9 == 3)
          {
            v10 = v7[1];
            v11 = v7[2];
            v12 = ((v8 & 0xF) << 12) | ((v10 & 0x3F) << 6);
          }

          else
          {
            v13 = v7[1];
            v14 = v7[2];
            v11 = v7[3];
            v12 = ((v8 & 0xF) << 18) | ((v13 & 0x3F) << 12) | ((v14 & 0x3F) << 6);
          }

          v8 = v12 & 0xFFFFFFC0 | v11 & 0x3F;
        }

        else if (v9 != 1)
        {
          v8 = v7[1] & 0x3F | ((v8 & 0x1F) << 6);
        }
      }
    }
  }

  else
  {
    v8 = 0;
  }

  LOBYTE(v16[0]) = v2 == 0;
  return v8 | ((v2 == 0) << 32);
}

unint64_t sub_1B4BB3FDC(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_1B4BB4074(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_1B4BB40E8(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_1B4BB4074(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = sub_1B4BB420C(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1B4BB40E8(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) == 0)
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v7 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
          return v7 << 16;
        }

        goto LABEL_14;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if (v5 == (a2 & 0xFFFFFFFFFFFFLL))
        {
          goto LABEL_14;
        }
      }

      else
      {
        v12 = result >> 16;
        v6 = sub_1B4D189CC();
        v5 = v12;
        if (v12 == v10)
        {
          goto LABEL_14;
        }
      }

      if ((*(v6 + v5) & 0xC0) == 0x80)
      {
        do
        {
          v7 = v5 - 1;
          v8 = *(v6 - 1 + v5--) & 0xC0;
        }

        while (v8 == 128);
        return v7 << 16;
      }

LABEL_14:
      v7 = v5;
      return v7 << 16;
    }

    v9 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v9 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 != v9)
    {

      return MEMORY[0x1EEE6A340]();
    }
  }

  return result;
}

uint64_t sub_1B4BB420C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1B4D1826C();
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
    v5 = MEMORY[0x1B8C7C650](15, a1 >> 16);
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

uint64_t sub_1B4BB4288(uint64_t a1)
{
  if ((*(a1 + 80) & 1) != 0 || (v1 = *(a1 + 72), v1 <= 0.0))
  {
    if (qword_1EDC3CEC8 != -1)
    {
      swift_once();
    }

    v7 = sub_1B4D17F6C();
    __swift_project_value_buffer(v7, qword_1EDC3CED0);
    v3 = sub_1B4D17F5C();
    v8 = sub_1B4D1873C();
    if (!os_log_type_enabled(v3, v8))
    {
      v6 = 1;
      goto LABEL_14;
    }

    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1B4953000, v3, v8, "[Media] Duration not supplied, not evaluating", v5, 2u);
    v6 = 1;
  }

  else
  {
    if (v1 >= 60.0)
    {
      return 1;
    }

    if (qword_1EDC3CEC8 != -1)
    {
      swift_once();
    }

    v2 = sub_1B4D17F6C();
    __swift_project_value_buffer(v2, qword_1EDC3CED0);
    v3 = sub_1B4D17F5C();
    v4 = sub_1B4D1873C();
    if (!os_log_type_enabled(v3, v4))
    {
      v6 = 0;
      goto LABEL_14;
    }

    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = v1;
    _os_log_impl(&dword_1B4953000, v3, v4, "[Media] Insufficient duration: %f", v5, 0xCu);
    v6 = 0;
  }

  MEMORY[0x1B8C7DDA0](v5, -1, -1);
LABEL_14:

  return v6;
}

uint64_t sub_1B4BB4460(uint64_t a1)
{
  if ((*(a1 + 80) & 1) != 0 || (*(a1 + 64) & 1) != 0 || (v6 = *(a1 + 72), v6 <= 0.0))
  {
    if (qword_1EDC3CEC8 != -1)
    {
      swift_once();
    }

    v1 = sub_1B4D17F6C();
    __swift_project_value_buffer(v1, qword_1EDC3CED0);
    v2 = sub_1B4D17F5C();
    v3 = sub_1B4D1873C();
    if (!os_log_type_enabled(v2, v3))
    {
      v5 = 1;
      goto LABEL_12;
    }

    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1B4953000, v2, v3, "[Media] Duration and/or elapsed time not supplied, not evaluating time remaining", v4, 2u);
    v5 = 1;
LABEL_6:
    MEMORY[0x1B8C7DDA0](v4, -1, -1);
LABEL_12:

    return v5;
  }

  v7 = v6 - *(a1 + 56);
  if (v7 <= 15.0)
  {
    if (qword_1EDC3CEC8 != -1)
    {
      swift_once();
    }

    v9 = sub_1B4D17F6C();
    __swift_project_value_buffer(v9, qword_1EDC3CED0);
    v2 = sub_1B4D17F5C();
    v10 = sub_1B4D1873C();
    if (!os_log_type_enabled(v2, v10))
    {
      v5 = 0;
      goto LABEL_12;
    }

    v4 = swift_slowAlloc();
    *v4 = 134217984;
    *(v4 + 4) = v7;
    _os_log_impl(&dword_1B4953000, v2, v10, "[Media] Insufficient time remaining: %f", v4, 0xCu);
    v5 = 0;
    goto LABEL_6;
  }

  return 1;
}

BOOL sub_1B4BB4644(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = a3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABCA0, &qword_1B4D474A0);
  sub_1B4955758();
  sub_1B4BB6374();
  sub_1B4D1887C();

  swift_beginAccess();
  v6 = *(v4 + 16);

  return v6 > a3;
}

uint64_t sub_1B4BB4798(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABC90, &qword_1B4D38658);
  result = swift_initStackObject();
  *(result + 16) = xmmword_1B4D1AA70;
  v5 = *MEMORY[0x1E69ABFD8];
  if (!*MEMORY[0x1E69ABFD8])
  {
    __break(1u);
    goto LABEL_12;
  }

  v6 = result;
  *(result + 32) = v5;
  *(result + 64) = MEMORY[0x1E69E6370];
  *(result + 40) = 1;
  v7 = *MEMORY[0x1E69ABFE8];
  if (!*MEMORY[0x1E69ABFE8])
  {
LABEL_12:
    __break(1u);
    return result;
  }

  *(result + 72) = v7;
  *(result + 104) = sub_1B4D1781C();
  __swift_allocate_boxed_opaque_existential_1((v6 + 80));
  v8 = v5;
  v9 = v7;
  sub_1B4D1780C();
  sub_1B4C95DAC(v6);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABC98, &qword_1B4D38660);
  swift_arrayDestroy();
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  type metadata accessor for CFString(0);
  sub_1B4BB6294();
  v11 = sub_1B4D17FAC();

  v12 = LXLexiconCreate();

  if (v12)
  {
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    *(v13 + 24) = sub_1B4BB62EC;
    *(v13 + 32) = v10;
    *(v13 + 40) = v10;
    *(v13 + 48) = a3;
    swift_retain_n();
    v14 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABCA0, &qword_1B4D474A0);
    sub_1B4955758();
    sub_1B4BB6374();
    sub_1B4D1887C();

    swift_beginAccess();
    v15 = *(v10 + 16);

    return v15 & a3;
  }

  else
  {
    if (qword_1EDC3CEC8 != -1)
    {
      swift_once();
    }

    v16 = sub_1B4D17F6C();
    __swift_project_value_buffer(v16, qword_1EDC3CED0);
    v17 = sub_1B4D17F5C();
    v18 = sub_1B4D1871C();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_1B4953000, v17, v18, "Failed to create LXLexicon.", v19, 2u);
      MEMORY[0x1B8C7DDA0](v19, -1, -1);
    }
  }

  return a3;
}

unint64_t sub_1B4BB4AFC(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v24[1] = a1;
  v24[2] = a2;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v24[3] = 0;
  v24[4] = v2;

  v3 = sub_1B4D1823C();
  if (!v4)
  {
LABEL_34:

    return 1;
  }

  v5 = v3;
  v6 = v4;
  while (1)
  {
    if (v5 == 2573 && v6 == 0xE200000000000000 || (sub_1B4D18DCC() & 1) != 0)
    {
      goto LABEL_27;
    }

    if ((v6 & 0x2000000000000000) != 0)
    {
      v8 = HIBYTE(v6) & 0xF;
    }

    else
    {
      v8 = v5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v8)
    {
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      swift_once();
LABEL_36:
      v15 = sub_1B4D17F6C();
      __swift_project_value_buffer(v15, qword_1EDC3CED0);

      v16 = sub_1B4D17F5C();
      v17 = sub_1B4D1873C();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v24[0] = v19;
        *v18 = 136315138;
        v20 = sub_1B49558AC(v5, v6, v24);

        *(v18 + 4) = v20;
        v21 = "[Media] Not ASCII: %s";
LABEL_38:
        _os_log_impl(&dword_1B4953000, v16, v17, v21, v18, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v19);
        MEMORY[0x1B8C7DDA0](v19, -1, -1);
        MEMORY[0x1B8C7DDA0](v18, -1, -1);

LABEL_44:

        return 0;
      }

LABEL_43:

      goto LABEL_44;
    }

    if ((v6 & 0x1000000000000000) != 0)
    {
      v13 = sub_1B4D181FC();
    }

    else
    {
      if ((v6 & 0x2000000000000000) != 0)
      {
        v10 = v5;
      }

      else
      {
        if ((v5 & 0x1000000000000000) != 0)
        {
          v9 = ((v6 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v9 = sub_1B4D189CC();
        }

        v10 = *v9;
      }

      v11 = v10;
      v12 = (__clz(~v10) - 24) << 16;
      if (v11 < 0)
      {
        v13 = v12;
      }

      else
      {
        v13 = 65541;
      }
    }

    if (v13 >> 14 != 4 * v8)
    {
LABEL_35:
      if (qword_1EDC3CEC8 == -1)
      {
        goto LABEL_36;
      }

      goto LABEL_47;
    }

    result = sub_1B4BB3E8C(v5, v6);
    if ((result & 0x100000000) != 0)
    {
      break;
    }

    if ((result & 0xFFFFFF80) != 0)
    {
      goto LABEL_35;
    }

    result = sub_1B4BB3E8C(v5, v6);
    if ((result & 0x100000000) != 0)
    {
      goto LABEL_49;
    }

    if ((result & 0xFFFFFF00) != 0)
    {
      goto LABEL_46;
    }

LABEL_27:
    if ((sub_1B4D180BC() & 1) == 0 && (sub_1B4D180CC() & 1) == 0 && (sub_1B4D1809C() & 1) == 0 && (sub_1B4D180AC() & 1) == 0)
    {
      if (qword_1EDC3CEC8 != -1)
      {
        swift_once();
      }

      v22 = sub_1B4D17F6C();
      __swift_project_value_buffer(v22, qword_1EDC3CED0);

      v16 = sub_1B4D17F5C();
      v17 = sub_1B4D1873C();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v24[0] = v19;
        *v18 = 136315138;
        v23 = sub_1B49558AC(v5, v6, v24);

        *(v18 + 4) = v23;
        v21 = "[Media] Invalid character: %s";
        goto LABEL_38;
      }

      goto LABEL_43;
    }

    v5 = sub_1B4D1823C();
    v6 = v7;
    if (!v7)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_49:
  __break(1u);
  return result;
}

uint64_t sub_1B4BB4EE8(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 16);
  if (sub_1B4D181BC() == 0x7369747265766461 && v3 == 0xED0000746E656D65)
  {
  }

  else
  {
    v5 = sub_1B4D18DCC();

    if ((v5 & 1) == 0)
    {
      return 0;
    }
  }

  if (qword_1EDC3CEC8 != -1)
  {
    swift_once();
  }

  v7 = sub_1B4D17F6C();
  __swift_project_value_buffer(v7, qword_1EDC3CED0);

  v8 = sub_1B4D17F5C();
  v9 = sub_1B4D1873C();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v13 = v11;
    *v10 = 136315138;
    v12 = sub_1B49558AC(v2, v1, &v13);

    *(v10 + 4) = v12;
    _os_log_impl(&dword_1B4953000, v8, v9, "[Media] Artist name indicates this is an advertisement: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x1B8C7DDA0](v11, -1, -1);
    MEMORY[0x1B8C7DDA0](v10, -1, -1);
  }

  else
  {
  }

  return 1;
}

uint64_t sub_1B4BB50B4(uint64_t a1, uint64_t a2)
{
  v2[40] = a2;
  v3 = sub_1B4D1748C();
  v2[41] = v3;
  v4 = *(v3 - 8);
  v2[42] = v4;
  v5 = *(v4 + 64) + 15;
  v2[43] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6A98, &unk_1B4D1CBE0) - 8) + 64) + 15;
  v2[44] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4BB51AC, 0, 0);
}

uint64_t sub_1B4BB51AC()
{
  v90 = v0;
  v1 = *(v0 + 352);
  sub_1B4974FBC(*(v0 + 320), v1, &qword_1EB8A6A98, &unk_1B4D1CBE0);
  v2 = type metadata accessor for WorkoutState();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    sub_1B4975024(*(v0 + 352), &qword_1EB8A6A98, &unk_1B4D1CBE0);
LABEL_4:
    if (qword_1EDC3CEC8 != -1)
    {
      swift_once();
    }

    v19 = sub_1B4D17F6C();
    __swift_project_value_buffer(v19, qword_1EDC3CED0);
    v20 = sub_1B4D17F5C();
    v21 = sub_1B4D1873C();
    if (!os_log_type_enabled(v20, v21))
    {
      goto LABEL_9;
    }

    v22 = swift_slowAlloc();
    *v22 = 0;
    v23 = "No media details supplied";
LABEL_8:
    _os_log_impl(&dword_1B4953000, v20, v21, v23, v22, 2u);
    MEMORY[0x1B8C7DDA0](v22, -1, -1);
LABEL_9:

LABEL_10:
    v24 = MEMORY[0x1E69E7CC0];
    goto LABEL_11;
  }

  v3 = *(v0 + 352);
  v4 = v3 + *(v2 + 124);
  v5 = *(v4 + 16);
  *(v0 + 16) = *v4;
  *(v0 + 32) = v5;
  v6 = *(v4 + 32);
  v7 = *(v4 + 48);
  v8 = *(v4 + 64);
  *(v0 + 96) = *(v4 + 80);
  *(v0 + 64) = v7;
  *(v0 + 80) = v8;
  *(v0 + 48) = v6;
  sub_1B4974FBC(v0 + 16, v0 + 104, &qword_1EB8ABC80, &qword_1B4D38648);
  sub_1B49AA7C0(v3);
  v9 = *(v0 + 16);
  v10 = *(v0 + 24);
  v11 = *(v0 + 32);
  v12 = *(v0 + 40);
  v13 = *(v0 + 48);
  v14 = *(v0 + 56);
  v15 = *(v0 + 64);
  v16 = *(v0 + 65);
  v71 = *(v0 + 66);
  v72 = *(v0 + 70);
  v17 = *(v0 + 72);
  v18 = *(v0 + 80);
  *v73 = *(v0 + 81);
  *&v73[3] = *(v0 + 84);
  if (v10 == 1)
  {
    goto LABEL_4;
  }

  if ((*(v0 + 65) & 1) == 0)
  {
    sub_1B4975024(v0 + 16, &qword_1EB8ABC80, &qword_1B4D38648);
    if (qword_1EDC3CEC8 != -1)
    {
      swift_once();
    }

    v40 = sub_1B4D17F6C();
    __swift_project_value_buffer(v40, qword_1EDC3CED0);
    v20 = sub_1B4D17F5C();
    v21 = sub_1B4D1873C();
    if (!os_log_type_enabled(v20, v21))
    {
      goto LABEL_9;
    }

    v22 = swift_slowAlloc();
    *v22 = 0;
    v23 = "Media not currently playing";
    goto LABEL_8;
  }

  if (!v10)
  {
    sub_1B4975024(v0 + 16, &qword_1EB8ABC80, &qword_1B4D38648);
    if (qword_1EDC3CEC8 != -1)
    {
      swift_once();
    }

    v41 = sub_1B4D17F6C();
    __swift_project_value_buffer(v41, qword_1EDC3CED0);
    v20 = sub_1B4D17F5C();
    v21 = sub_1B4D1873C();
    if (!os_log_type_enabled(v20, v21))
    {
      goto LABEL_9;
    }

    v22 = swift_slowAlloc();
    *v22 = 0;
    v23 = "No media title supplied";
    goto LABEL_8;
  }

  v29 = *(v0 + 88);
  v30 = *(v0 + 96);
  v74 = *(v0 + 16);
  v75 = v10;
  v76 = v11;
  v77 = v12;
  v78 = v13;
  v79 = v14;
  v80 = v15;
  v81 = v16;
  v82 = *(v0 + 66);
  v83 = *(v0 + 70);
  v84 = v17;
  v85 = v18;
  *v86 = *(v0 + 81);
  *&v86[3] = *(v0 + 84);
  v87 = v29;
  v88 = v30;
  v68 = v18;
  v69 = v15;
  v70 = v9;

  if ((sub_1B4BB4288(&v74) & 1) == 0)
  {
    goto LABEL_51;
  }

  v74 = v70;
  v75 = v10;
  v76 = v11;
  v77 = v12;
  v78 = v13;
  v79 = v14;
  v80 = v69;
  v81 = v16;
  v82 = v71;
  v83 = v72;
  v84 = v17;
  v85 = v68;
  *v86 = *v73;
  *&v86[3] = *&v73[3];
  v87 = v29;
  v88 = v30;
  if ((sub_1B4BB4460(&v74) & 1) == 0)
  {
    goto LABEL_51;
  }

  v62 = v16;
  v63 = v30;
  v66 = v13;
  v67 = v14;
  v64 = v29;
  v65 = v17;
  if (qword_1EDC3CEC8 != -1)
  {
    swift_once();
  }

  v31 = sub_1B4D17F6C();
  __swift_project_value_buffer(v31, qword_1EDC3CED0);

  v32 = sub_1B4D17F5C();
  v33 = sub_1B4D1873C();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v74 = v35;
    *v34 = 136315138;
    *(v34 + 4) = sub_1B49558AC(v70, v10, &v74);
    _os_log_impl(&dword_1B4953000, v32, v33, "[Media] Checking if string is acceptable: %s", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v35);
    MEMORY[0x1B8C7DDA0](v35, -1, -1);
    MEMORY[0x1B8C7DDA0](v34, -1, -1);
  }

  if (sub_1B4BB4644(v70, v10, 5))
  {
    goto LABEL_51;
  }

  *(v0 + 192) = v70;
  *(v0 + 200) = v10;
  *(v0 + 208) = 2763306;
  *(v0 + 216) = 0xE300000000000000;
  sub_1B4955758();
  if ((sub_1B4D1889C() & 1) != 0 || sub_1B4BB4798(v70, v10, 58720256) || (sub_1B4BB4AFC(v70, v10) & 1) == 0)
  {
    goto LABEL_51;
  }

  if (v12)
  {

    v36 = sub_1B4D17F5C();
    v37 = sub_1B4D1873C();

    if (os_log_type_enabled(v36, v37))
    {
      v61 = v37;
      v38 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v74 = v60;
      *v38 = 136315138;
      v39 = v11;
      *(v38 + 4) = sub_1B49558AC(v11, v12, &v74);
      _os_log_impl(&dword_1B4953000, v36, v61, "[Media] Checking if string is acceptable: %s", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v60);
      MEMORY[0x1B8C7DDA0](v60, -1, -1);
      MEMORY[0x1B8C7DDA0](v38, -1, -1);
    }

    else
    {

      v39 = v11;
    }

    if (sub_1B4BB4644(v39, v12, 5))
    {
      goto LABEL_51;
    }

    *(v0 + 288) = v11;
    *(v0 + 296) = v12;
    *(v0 + 304) = 2763306;
    *(v0 + 312) = 0xE300000000000000;
    if ((sub_1B4D1889C() & 1) != 0 || sub_1B4BB4798(v11, v12, 58720256) || (sub_1B4BB4AFC(v11, v12) & 1) == 0)
    {
      goto LABEL_51;
    }
  }

  if (v14)
  {

    v42 = sub_1B4D17F5C();
    v43 = sub_1B4D1873C();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v74 = v45;
      *v44 = 136315138;
      *(v44 + 4) = sub_1B49558AC(v66, v67, &v74);
      _os_log_impl(&dword_1B4953000, v42, v43, "[Media] Checking if string is acceptable: %s", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v45);
      MEMORY[0x1B8C7DDA0](v45, -1, -1);
      MEMORY[0x1B8C7DDA0](v44, -1, -1);
    }

    if (sub_1B4BB4644(v66, v67, 5))
    {
      goto LABEL_51;
    }

    *(v0 + 256) = v66;
    *(v0 + 264) = v67;
    *(v0 + 272) = 2763306;
    *(v0 + 280) = 0xE300000000000000;
    if ((sub_1B4D1889C() & 1) != 0 || sub_1B4BB4798(v66, v67, 58720256) || (sub_1B4BB4AFC(v66, v67) & 1) == 0)
    {
      goto LABEL_51;
    }
  }

  v74 = v70;
  v75 = v10;
  v76 = v11;
  v77 = v12;
  v78 = v66;
  v79 = v67;
  v80 = v69;
  v81 = v62;
  v82 = v71;
  v83 = v72;
  v84 = v65;
  v85 = v68;
  *v86 = *v73;
  *&v86[3] = *&v73[3];
  v87 = v64;
  v88 = v63;
  if (sub_1B4BB4EE8(&v74))
  {
LABEL_51:

    sub_1B4975024(v0 + 16, &qword_1EB8ABC80, &qword_1B4D38648);
    goto LABEL_10;
  }

  if (!v12)
  {
    goto LABEL_57;
  }

  v47 = *(v0 + 336);
  v46 = *(v0 + 344);
  v48 = *(v0 + 328);
  *(v0 + 240) = v11;
  *(v0 + 248) = v12;

  sub_1B4D1747C();
  v49 = sub_1B4D1886C();
  v51 = v50;
  (*(v47 + 8))(v46, v48);

  v52 = HIBYTE(v51) & 0xF;
  if ((v51 & 0x2000000000000000) == 0)
  {
    v52 = v49 & 0xFFFFFFFFFFFFLL;
  }

  if (!v52)
  {

LABEL_57:
    v49 = 0;
    v51 = 0;
  }

  if (v67)
  {
    v54 = *(v0 + 336);
    v53 = *(v0 + 344);
    v55 = *(v0 + 328);
    *(v0 + 224) = v66;
    *(v0 + 232) = v67;

    sub_1B4D1747C();
    v56 = sub_1B4D1886C();
    v58 = v57;
    (*(v54 + 8))(v53, v55);

    v59 = HIBYTE(v58) & 0xF;
    if ((v58 & 0x2000000000000000) == 0)
    {
      v59 = v56 & 0xFFFFFFFFFFFFLL;
    }

    if (v59)
    {
      goto LABEL_64;
    }
  }

  v56 = 0;
  v58 = 0;
LABEL_64:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABC88, &qword_1B4D38650);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1B4D1A800;
  sub_1B4975024(v0 + 16, &qword_1EB8ABC80, &qword_1B4D38648);
  v89 = v68 & 1;
  LOBYTE(v74) = v63 & 1;
  *(v24 + 32) = v70;
  *(v24 + 40) = v10;
  *(v24 + 48) = v49;
  *(v24 + 56) = v51;
  *(v24 + 64) = v56;
  *(v24 + 72) = v58;
  *(v24 + 80) = v69 & 1;
  *(v24 + 81) = 1;
  *(v24 + 88) = v65;
  *(v24 + 96) = v68 & 1;
  *(v24 + 104) = v64;
  *(v24 + 112) = v63 & 1;
LABEL_11:
  v26 = *(v0 + 344);
  v25 = *(v0 + 352);

  v27 = *(v0 + 8);

  return v27(v24);
}

unint64_t _s19FitnessIntelligence34WorkoutMediaCurrentPlayingItemFactV10makePrompt15promptFormatterSSAA0jL0C_tF_0()
{
  v1 = sub_1B4D1748C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  v7 = *(v0 + 8);
  v9 = *(v0 + 16);
  v8 = *(v0 + 24);
  v10 = *(v0 + 40);
  v19 = *(v0 + 32);
  v20 = *(v0 + 48);
  v23 = 0;
  v24 = 0xE000000000000000;

  sub_1B4D1896C();

  v23 = 0xD00000000000001CLL;
  v24 = 0x80000001B4D628F0;
  v21 = v6;
  v22 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABC78, &qword_1B4D38640);
  v11 = sub_1B4D187FC();
  MEMORY[0x1B8C7C620](v11);

  MEMORY[0x1B8C7C620](32, 0xE100000000000000);
  if (v8)
  {
    v21 = v9;
    v22 = v8;
    sub_1B4D1747C();
    sub_1B4955758();
    v12 = sub_1B4D1886C();
    v14 = v13;
    (*(v2 + 8))(v5, v1);

    if ((v12 || v14 != 0xE000000000000000) && (sub_1B4D18DCC() & 1) == 0)
    {
      v21 = 544825888;
      v22 = 0xE400000000000000;
      MEMORY[0x1B8C7C620](v12, v14);

      MEMORY[0x1B8C7C620](v21, v22);
    }
  }

  if (v10)
  {
    v21 = v19;
    v22 = v10;

    sub_1B4D1747C();
    sub_1B4955758();
    v15 = sub_1B4D1886C();
    v17 = v16;
    (*(v2 + 8))(v5, v1);

    if ((v15 || v17 != 0xE000000000000000) && (sub_1B4D18DCC() & 1) == 0)
    {
      v21 = 0;
      v22 = 0xE000000000000000;
      sub_1B4D1896C();

      v21 = 0xD000000000000013;
      v22 = 0x80000001B4D62930;
      MEMORY[0x1B8C7C620](v15, v17);

      MEMORY[0x1B8C7C620](46, 0xE100000000000000);
      MEMORY[0x1B8C7C620](v21, v22);
    }
  }

  if (v20)
  {
    MEMORY[0x1B8C7C620](0xD00000000000001CLL, 0x80000001B4D62910);
  }

  return v23;
}

unint64_t sub_1B4BB604C()
{
  result = qword_1EB8ABC50;
  if (!qword_1EB8ABC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ABC50);
  }

  return result;
}

unint64_t sub_1B4BB60CC()
{
  result = qword_1EB8ABC58;
  if (!qword_1EB8ABC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ABC58);
  }

  return result;
}

unint64_t sub_1B4BB6120()
{
  result = qword_1EB8ABC60;
  if (!qword_1EB8ABC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ABC60);
  }

  return result;
}

uint64_t sub_1B4BB61A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1B4BB61DC()
{
  result = qword_1EB8ABC68;
  if (!qword_1EB8ABC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ABC68);
  }

  return result;
}

unint64_t sub_1B4BB6230()
{
  result = qword_1EB8ABC70;
  if (!qword_1EB8ABC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ABC70);
  }

  return result;
}

unint64_t sub_1B4BB6294()
{
  result = qword_1EB8A6640;
  if (!qword_1EB8A6640)
  {
    type metadata accessor for CFString(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A6640);
  }

  return result;
}

uint64_t sub_1B4BB62EC()
{
  MetaFlags = LXEntryGetMetaFlags();
  result = swift_beginAccess();
  *(v0 + 16) |= MetaFlags;
  return result;
}

unint64_t sub_1B4BB6374()
{
  result = qword_1EB8ABCA8;
  if (!qword_1EB8ABCA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8ABCA0, &qword_1B4D474A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ABCA8);
  }

  return result;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1B4BB63F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  v10 = *(v7 + 16);
  v9 = *(v7 + 24);
  result = swift_beginAccess();
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
    if (v14 > v9)
    {
      *a7 = 1;
    }
  }

  return result;
}

uint64_t StatisticsPropertyValue.init(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = sub_1B4D1746C();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v31 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v31 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v31 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v31 - v17;
  v32 = a1[1];
  v19 = *a1;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v21 = [ObjCClassFromMetadata baseUnit];
  sub_1B4D1741C();
  v22 = a1[3];
  v23 = [ObjCClassFromMetadata baseUnit];
  sub_1B4D1741C();
  v24 = a1[4];
  v25 = [ObjCClassFromMetadata baseUnit];
  sub_1B4D1741C();
  v26 = a1[2];
  v27 = [ObjCClassFromMetadata baseUnit];
  sub_1B4D1741C();
  v28 = a1[5];
  v29 = [ObjCClassFromMetadata baseUnit];
  sub_1B4D1741C();
  sub_1B4BB6680(a1);
  return StatisticsPropertyValue.init(count:total:min:max:sumY2:sumXY:)(v32, v18, v15, v12, v9, v6, v33);
}

uint64_t sub_1B4BB6680(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t StatisticsPropertyValue.protobuf()(uint64_t a1)
{
  type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(0);
  v3 = *(a1 + 16);
  sub_1B4BB68CC(qword_1EDC3B7A0);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4BB6780(void *a1, uint64_t a2)
{
  sub_1B4D1746C();
  sub_1B4D1742C();
  *a1 = v4;
  v5 = type metadata accessor for StatisticsPropertyValue();
  a1[1] = *(a2 + v5[7]);
  v6 = a2 + v5[8];
  sub_1B4D1742C();
  a1[3] = v7;
  v8 = a2 + v5[9];
  sub_1B4D1742C();
  a1[4] = v9;
  v10 = a2 + v5[10];
  sub_1B4D1742C();
  a1[2] = v11;
  v12 = a2 + v5[11];
  result = sub_1B4D1742C();
  a1[5] = v14;
  return result;
}

uint64_t sub_1B4BB68CC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Apple_Fitness_Intelligence_StatisticsPropertyValue(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B4BB6980()
{
  result = qword_1EB8ABCB0;
  if (!qword_1EB8ABCB0)
  {
    type metadata accessor for WorkoutVoiceLongestDistanceFact();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ABCB0);
  }

  return result;
}

unint64_t sub_1B4BB69DC()
{
  result = qword_1EB8ABCB8;
  if (!qword_1EB8ABCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ABCB8);
  }

  return result;
}

uint64_t sub_1B4BB6A34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a1;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6A98, &unk_1B4D1CBE0) - 8) + 64) + 15;
  v4[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4BB6AD4, 0, 0);
}

uint64_t sub_1B4BB6AD4()
{
  v1 = v0[5];
  sub_1B4B58794(v0[3], v1, type metadata accessor for WorkoutState);
  v2 = type metadata accessor for WorkoutState();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  v3 = swift_task_alloc();
  v0[6] = v3;
  *v3 = v0;
  v3[1] = sub_1B4BA4908;
  v5 = v0[4];
  v4 = v0[5];
  v6 = v0[2];

  return sub_1B4BD6434(v6, v4, v5);
}

unint64_t sub_1B4BB6BE4(uint64_t a1)
{
  v2 = type metadata accessor for DateRangeDescriptor();
  v155 = *(v2 - 8);
  v3 = *(v155 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v139 = &v128 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v128 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v137 = &v128 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v128 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A67A8, &qword_1B4D1E060);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v128 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v149 = &v128 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v138 = &v128 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v148 = &v128 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v136 = &v128 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v128 - v26;
  MEMORY[0x1EEE9AC00](v28);
  v135 = &v128 - v29;
  MEMORY[0x1EEE9AC00](v30);
  Descriptor = &v128 - v31;
  v152 = type metadata accessor for WorkoutPropertiesQuery();
  v32 = *(*(v152 - 8) + 64);
  MEMORY[0x1EEE9AC00](v152);
  v34 = &v128 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = sub_1B4D1777C();
  v35 = *(v154 - 8);
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v154);
  v153 = &v128 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for WorkoutState();
  v39 = *(*(v38 - 8) + 64);
  MEMORY[0x1EEE9AC00](v38);
  v41 = &v128 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4B58794(a1, v41, type metadata accessor for WorkoutState);
  v42 = sub_1B4CAC70C(v41);
  v43 = *(v42 + 2);
  v44 = 32;
  while (v43)
  {
    v45 = *&v42[v44];
    v44 += 8;
    --v43;
    if (v45 == 1)
    {
      v128 = v12;
      v134 = v27;
      v131 = v7;
      v132 = v16;

      v46 = *(v38 + 36);
      v133 = v35;
      v47 = v2;
      v49 = v35 + 16;
      v48 = *(v35 + 16);
      v51 = v153;
      v50 = v154;
      v48(v153, &v41[v46], v154);
      v48(v34, v51, v50);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6B50, &qword_1B4D1D580);
      v52 = swift_allocObject();
      *(v52 + 16) = xmmword_1B4D1A800;
      v53 = *&v41[*(v38 + 24)];
      sub_1B49BFEC0(v41, type metadata accessor for WorkoutState);
      v54 = [v53 effectiveTypeIdentifier];

      *(v52 + 32) = v54;
      v55 = v152;
      v56 = &v34[*(v152 + 20)];
      v57 = MEMORY[0x1E69E7CC0];
      *v56 = MEMORY[0x1E69E7CC0];
      *(v56 + 1) = v57;
      *(v56 + 2) = v57;
      *(v56 + 3) = v52;
      *(v56 + 4) = v57;
      *(v56 + 5) = v57;
      *&v34[*(v55 + 24)] = v57;
      *&v34[*(v55 + 28)] = &unk_1F2CB9858;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABCC0, &qword_1B4D38750);
      v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABCC8, &unk_1B4D38758);
      v58 = v34;
      v59 = (*(*(v151 - 8) + 80) + 32) & ~*(*(v151 - 8) + 80);
      v143 = *(*(v151 - 8) + 72);
      v60 = swift_allocObject();
      *(v60 + 16) = xmmword_1B4D1B2D0;
      v130 = v60;
      v150 = v60 + v59;
      *(v60 + v59) = 0;
      v61 = Descriptor;
      v145 = v48;
      v146 = v49;
      v48(Descriptor, v51, v50);
      v62 = v47;
      swift_storeEnumTagMultiPayload();
      v63 = v155;
      v141 = *(v155 + 56);
      v142 = v155 + 56;
      v141(v61, 0, 1, v47);
      v64 = v135;
      sub_1B49BFDE8(v61, v135);
      v65 = *(v63 + 48);
      v66 = v65(v64, 1, v47);
      v155 = v63 + 48;
      v144 = v65;
      v140 = v58;
      v129 = v47;
      if (v66 == 1)
      {
        v67 = v128;
        sub_1B4B58794(v58, v128, type metadata accessor for DateRangeDescriptor);
        if (v65(v64, 1, v62) != 1)
        {
          sub_1B4975024(v64, &qword_1EB8A67A8, &qword_1B4D1E060);
        }
      }

      else
      {
        v67 = v128;
        sub_1B4993450(v64, v128);
      }

      v74 = v150;
      v75 = v150 + *(v151 + 48);
      v76 = *v56;
      v77 = *(v56 + 1);
      v79 = *(v56 + 2);
      v78 = *(v56 + 3);
      v81 = *(v56 + 4);
      v80 = *(v56 + 5);
      sub_1B4B58794(v67, v75, type metadata accessor for DateRangeDescriptor);

      sub_1B49BFEC0(v67, type metadata accessor for DateRangeDescriptor);
      v82 = v152;
      v83 = (v75 + *(v152 + 20));
      *v83 = v76;
      v83[1] = v77;
      v83[2] = v79;
      v83[3] = v78;
      v83[4] = v81;
      v83[5] = v80;
      *(v75 + *(v82 + 24)) = MEMORY[0x1E69E7CC0];
      *(v75 + *(v82 + 28)) = &unk_1F2CB9858;
      sub_1B4975024(Descriptor, &qword_1EB8A67A8, &qword_1B4D1E060);
      Descriptor = type metadata accessor for FitnessContextQueryDescriptor();
      swift_storeEnumTagMultiPayload();
      v84 = v74 + v143;
      *(v74 + v143) = 1;
      v85 = v134;
      v145(v134, v153, v154);
      v86 = v129;
      swift_storeEnumTagMultiPayload();
      v141(v85, 0, 1, v86);
      v87 = v136;
      sub_1B49BFDE8(v85, v136);
      v88 = v144;
      if (v144(v87, 1, v86) == 1)
      {
        v89 = v137;
        sub_1B4B58794(v140, v137, type metadata accessor for DateRangeDescriptor);
        if (v88(v87, 1, v86) != 1)
        {
          sub_1B4975024(v87, &qword_1EB8A67A8, &qword_1B4D1E060);
        }
      }

      else
      {
        v89 = v137;
        sub_1B4993450(v87, v137);
      }

      v90 = v84 + *(v151 + 48);
      v91 = *v56;
      v92 = *(v56 + 1);
      v93 = *(v56 + 2);
      v94 = *(v56 + 3);
      v95 = *(v56 + 4);
      v96 = *(v56 + 5);
      sub_1B4B58794(v89, v90, type metadata accessor for DateRangeDescriptor);

      sub_1B49BFEC0(v89, type metadata accessor for DateRangeDescriptor);
      v97 = v152;
      v98 = (v90 + *(v152 + 20));
      *v98 = v91;
      v98[1] = v92;
      v98[2] = v93;
      v98[3] = v94;
      v98[4] = v95;
      v98[5] = v96;
      *(v90 + *(v97 + 24)) = MEMORY[0x1E69E7CC0];
      *(v90 + *(v97 + 28)) = &unk_1F2CB9858;
      sub_1B4975024(v134, &qword_1EB8A67A8, &qword_1B4D1E060);
      swift_storeEnumTagMultiPayload();
      v99 = (v150 + 2 * v143);
      *v99 = 2;
      v100 = v148;
      v145(v148, v153, v154);
      swift_storeEnumTagMultiPayload();
      v141(v100, 0, 1, v86);
      v101 = v138;
      sub_1B49BFDE8(v100, v138);
      v102 = v144;
      if (v144(v101, 1, v86) == 1)
      {
        v103 = v131;
        sub_1B4B58794(v140, v131, type metadata accessor for DateRangeDescriptor);
        if (v102(v101, 1, v86) != 1)
        {
          sub_1B4975024(v101, &qword_1EB8A67A8, &qword_1B4D1E060);
        }
      }

      else
      {
        v103 = v131;
        sub_1B4993450(v101, v131);
      }

      v104 = &v99[*(v151 + 48)];
      v105 = *v56;
      v106 = *(v56 + 1);
      v107 = *(v56 + 2);
      v108 = *(v56 + 3);
      v109 = *(v56 + 4);
      v110 = *(v56 + 5);
      sub_1B4B58794(v103, v104, type metadata accessor for DateRangeDescriptor);

      sub_1B49BFEC0(v103, type metadata accessor for DateRangeDescriptor);
      v111 = v152;
      v112 = (v104 + *(v152 + 20));
      *v112 = v105;
      v112[1] = v106;
      v112[2] = v107;
      v112[3] = v108;
      v112[4] = v109;
      v112[5] = v110;
      *(v104 + *(v111 + 24)) = MEMORY[0x1E69E7CC0];
      *(v104 + *(v111 + 28)) = &unk_1F2CB9858;
      sub_1B4975024(v148, &qword_1EB8A67A8, &qword_1B4D1E060);
      swift_storeEnumTagMultiPayload();
      v113 = v149;
      v114 = (v150 + 3 * v143);
      *v114 = 3;
      v145(v113, v153, v154);
      swift_storeEnumTagMultiPayload();
      v141(v113, 0, 1, v86);
      v115 = v132;
      sub_1B49BFDE8(v113, v132);
      v116 = v144;
      if (v144(v115, 1, v86) == 1)
      {
        v117 = v139;
        sub_1B4B58794(v140, v139, type metadata accessor for DateRangeDescriptor);
        if (v116(v115, 1, v86) != 1)
        {
          sub_1B4975024(v115, &qword_1EB8A67A8, &qword_1B4D1E060);
        }
      }

      else
      {
        v117 = v139;
        sub_1B4993450(v115, v139);
      }

      v118 = &v114[*(v151 + 48)];
      v119 = *v56;
      v120 = *(v56 + 1);
      v121 = *(v56 + 2);
      v122 = *(v56 + 3);
      v123 = *(v56 + 4);
      v124 = *(v56 + 5);
      sub_1B4B58794(v117, v118, type metadata accessor for DateRangeDescriptor);

      sub_1B49BFEC0(v117, type metadata accessor for DateRangeDescriptor);
      v125 = v152;
      v126 = (v118 + *(v152 + 20));
      *v126 = v119;
      v126[1] = v120;
      v126[2] = v121;
      v126[3] = v122;
      v126[4] = v123;
      v126[5] = v124;
      *(v118 + *(v125 + 24)) = MEMORY[0x1E69E7CC0];
      *(v118 + *(v125 + 28)) = &unk_1F2CB9858;
      sub_1B4975024(v149, &qword_1EB8A67A8, &qword_1B4D1E060);
      swift_storeEnumTagMultiPayload();
      v127 = sub_1B4C97B64(v130);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      sub_1B49BFEC0(v140, type metadata accessor for WorkoutPropertiesQuery);
      (*(v133 + 8))(v153, v154);
      return v127;
    }
  }

  sub_1B49BFEC0(v41, type metadata accessor for WorkoutState);
  if (qword_1EDC36EF8 != -1)
  {
    swift_once();
  }

  v68 = sub_1B4D17F6C();
  __swift_project_value_buffer(v68, qword_1EDC36F00);
  v69 = sub_1B4D17F5C();
  v70 = sub_1B4D1873C();
  if (os_log_type_enabled(v69, v70))
  {
    v71 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    v156 = v72;
    *v71 = 136315138;
    *(v71 + 4) = sub_1B49558AC(0xD00000000000001FLL, 0x80000001B4D62970, &v156);
    _os_log_impl(&dword_1B4953000, v69, v70, "%s does not support this workout state", v71, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v72);
    MEMORY[0x1B8C7DDA0](v72, -1, -1);
    MEMORY[0x1B8C7DDA0](v71, -1, -1);
  }

  return sub_1B4C97B64(MEMORY[0x1E69E7CC0]);
}

uint64_t sub_1B4BB7B50(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C98, &unk_1B4D2F3F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for ActivitySummaryContext()
{
  result = qword_1EB8ABCD0;
  if (!qword_1EB8ABCD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1B4BB7C34()
{
  sub_1B4BB7CA0();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1B4BB7CA0()
{
  if (!qword_1EDC36FE8)
  {
    type metadata accessor for HKActivitySummaryRepresentable();
    v0 = sub_1B4D1880C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDC36FE8);
    }
  }
}

uint64_t ClosedAllRingsFact.QueryIdentifier.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1B4D18B1C();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1B4BB7D78()
{
  sub_1B4D18E8C();
  sub_1B4D1820C();
  return sub_1B4D18EDC();
}

uint64_t sub_1B4BB7DEC()
{
  sub_1B4D18E8C();
  sub_1B4D1820C();
  return sub_1B4D18EDC();
}

uint64_t sub_1B4BB7E40@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1B4D18B1C();

  *a2 = v5 != 0;
  return result;
}

unint64_t static ClosedAllRingsFact.queries(workoutVoiceWorkoutState:)(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_1B4BB80EC(v3, v1, v2);
}

uint64_t static ClosedAllRingsFact.analyze(_:unitManager:currentWorkoutState:previousWorkoutState:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_1B49AA274;

  return sub_1B4BB82E0(a1, a3, a4);
}

unint64_t sub_1B4BB7FD0(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  v3 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_1B4BB80EC(v3, v1, v2);
}

uint64_t sub_1B4BB8010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_1B49DD034;

  return sub_1B4BB82E0(a1, a3, a4);
}

unint64_t sub_1B4BB80EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v9, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABD18, &qword_1B4D394C0);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABD20, &unk_1B4D388B0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1B4D1A800;
  (*(a3 + 80))(a2, a3);
  type metadata accessor for FitnessContextQueryDescriptor();
  swift_storeEnumTagMultiPayload();
  v14 = sub_1B4C96AD0(v13);
  swift_setDeallocating();
  sub_1B4975024(v13 + v12, &qword_1EB8ABD20, &unk_1B4D388B0);
  swift_deallocClassInstance();
  (*(v5 + 8))(v9, a2);
  return v14;
}

uint64_t sub_1B4BB82E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6A98, &unk_1B4D1CBE0) - 8) + 64) + 15;
  v3[6] = swift_task_alloc();
  v3[7] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C98, &unk_1B4D2F3F0) - 8) + 64) + 15;
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v6 = type metadata accessor for HKActivitySummaryRepresentable();
  v3[11] = v6;
  v7 = *(v6 - 8);
  v3[12] = v7;
  v8 = *(v7 + 64) + 15;
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA5C8, &qword_1B4D39050) - 8) + 64) + 15;
  v3[15] = swift_task_alloc();
  v10 = type metadata accessor for ActivitySummaryContext();
  v3[16] = v10;
  v11 = *(v10 - 8);
  v3[17] = v11;
  v12 = *(v11 + 64) + 15;
  v3[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4BB84D8, 0, 0);
}

uint64_t sub_1B4BB84D8()
{
  v94 = v0;
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[15];
  v4 = v0[3];
  v5 = v4[3];
  v6 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v5);
  v0[2] = &type metadata for ClosedAllRingsFact.QueryIdentifier;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABD10, &qword_1B4D388A8);
  v92 = sub_1B4D181CC();
  v93 = v7;
  MEMORY[0x1B8C7C620](14906, 0xE200000000000000);
  MEMORY[0x1B8C7C620](0xD000000000000016, 0x80000001B4D4C4C0);
  (*(v6 + 8))(v92, v93, v1, v1, v5, v6);

  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v8 = v0[15];
    v9 = &qword_1EB8AA5C8;
    v10 = &qword_1B4D39050;
LABEL_8:
    sub_1B4975024(v8, v9, v10);
    if (qword_1EDC36EF8 != -1)
    {
      swift_once();
    }

    v24 = sub_1B4D17F6C();
    __swift_project_value_buffer(v24, qword_1EDC36F00);
    v25 = sub_1B4D17F5C();
    v26 = sub_1B4D1873C();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v92 = v28;
      *v27 = 136315138;
      *(v27 + 4) = sub_1B49558AC(0xD000000000000012, 0x80000001B4D62990, &v92);
      _os_log_impl(&dword_1B4953000, v25, v26, "%s no ringRepresentable. Returning.", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v28);
      MEMORY[0x1B8C7DDA0](v28, -1, -1);
      MEMORY[0x1B8C7DDA0](v27, -1, -1);
    }

    goto LABEL_13;
  }

  v11 = v0[7];
  v12 = v0[4];
  sub_1B4BB9318(v0[15], v0[18], type metadata accessor for ActivitySummaryContext);
  sub_1B4974FBC(v12, v11, &qword_1EB8A6A98, &unk_1B4D1CBE0);
  v13 = type metadata accessor for WorkoutState();
  v14 = *(*(v13 - 8) + 48);
  if (v14(v11, 1, v13) == 1)
  {
    v15 = v0[11];
    v16 = v0[12];
    v17 = v0[10];
    v18 = v0[7];
    sub_1B4BB9380(v0[18], type metadata accessor for ActivitySummaryContext);
    sub_1B4975024(v18, &qword_1EB8A6A98, &unk_1B4D1CBE0);
    (*(v16 + 56))(v17, 1, 1, v15);
LABEL_7:
    v8 = v0[10];
    v9 = &qword_1EB8A6C98;
    v10 = &unk_1B4D2F3F0;
    goto LABEL_8;
  }

  v19 = v0[11];
  v20 = v0[12];
  v21 = v0[10];
  v22 = v0[7];
  sub_1B4974FBC(v22 + *(v13 + 128), v21, &qword_1EB8A6C98, &unk_1B4D2F3F0);
  sub_1B4BB9380(v22, type metadata accessor for WorkoutState);
  v23 = *(v20 + 48);
  if (v23(v21, 1, v19) == 1)
  {
    sub_1B4BB9380(v0[18], type metadata accessor for ActivitySummaryContext);
    goto LABEL_7;
  }

  v42 = v0[5];
  v41 = v0[6];
  sub_1B4BB9318(v0[10], v0[14], type metadata accessor for HKActivitySummaryRepresentable);
  sub_1B4974FBC(v42, v41, &qword_1EB8A6A98, &unk_1B4D1CBE0);
  if (v14(v41, 1, v13) == 1)
  {
    v43 = v0[11];
    v44 = v0[12];
    v45 = v0[8];
    sub_1B4975024(v0[6], &qword_1EB8A6A98, &unk_1B4D1CBE0);
    (*(v44 + 56))(v45, 1, 1, v43);
  }

  else
  {
    v46 = v0[11];
    v47 = v0[8];
    v48 = v0[6];
    sub_1B4974FBC(v48 + *(v13 + 128), v47, &qword_1EB8A6C98, &unk_1B4D2F3F0);
    sub_1B4BB9380(v48, type metadata accessor for WorkoutState);
    if (v23(v47, 1, v46) != 1)
    {
      v51 = v0[11];
      v52 = v0[12];
      v53 = v0[9];
      sub_1B4BB9318(v0[8], v53, type metadata accessor for HKActivitySummaryRepresentable);
      (*(v52 + 56))(v53, 0, 1, v51);
      goto LABEL_23;
    }
  }

  v49 = v0[11];
  v50 = v0[8];
  sub_1B4974FBC(v0[18], v0[9], &qword_1EB8A6C98, &unk_1B4D2F3F0);
  if (v23(v50, 1, v49) != 1)
  {
    sub_1B4975024(v0[8], &qword_1EB8A6C98, &unk_1B4D2F3F0);
  }

LABEL_23:
  v54 = v0[9];
  if (v23(v54, 1, v0[11]) == 1)
  {
    v55 = v0[18];
    sub_1B4BB9380(v0[14], type metadata accessor for HKActivitySummaryRepresentable);
    sub_1B4BB9380(v55, type metadata accessor for ActivitySummaryContext);
    v9 = &qword_1EB8A6C98;
    v10 = &unk_1B4D2F3F0;
    v8 = v54;
    goto LABEL_8;
  }

  v56 = v0[14];
  sub_1B4BB9318(v54, v0[13], type metadata accessor for HKActivitySummaryRepresentable);
  if (*(v56 + 25))
  {
    if (qword_1EDC36EF8 != -1)
    {
      swift_once();
    }

    v57 = sub_1B4D17F6C();
    __swift_project_value_buffer(v57, qword_1EDC36F00);
    v58 = sub_1B4D17F5C();
    v59 = sub_1B4D1873C();
    if (!os_log_type_enabled(v58, v59))
    {
      goto LABEL_38;
    }

    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v92 = v61;
    *v60 = 136315138;
    *(v60 + 4) = sub_1B49558AC(0xD000000000000012, 0x80000001B4D62990, &v92);
    v62 = "%s Rings are paused. Returning.";
LABEL_37:
    _os_log_impl(&dword_1B4953000, v58, v59, v62, v60, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v61);
    MEMORY[0x1B8C7DDA0](v61, -1, -1);
    MEMORY[0x1B8C7DDA0](v60, -1, -1);
LABEL_38:

    v75 = v0[18];
    v76 = v0[14];
    sub_1B4BB9380(v0[13], type metadata accessor for HKActivitySummaryRepresentable);
    sub_1B4BB9380(v76, type metadata accessor for HKActivitySummaryRepresentable);
    sub_1B4BB9380(v75, type metadata accessor for ActivitySummaryContext);
LABEL_13:
    v29 = MEMORY[0x1E69E7CC0];
    goto LABEL_14;
  }

  v63 = v0[13];
  v64 = sub_1B4A612D4();
  if (v65 & 1) != 0 || (v66 = *&v64, v67 = v0[13], v68 = sub_1B4A61B14(), (v69) || (v70 = *&v68, v71 = v0[13], v72 = COERCE_DOUBLE(sub_1B4A61EE8()), (v73))
  {
    if (qword_1EDC36EF8 != -1)
    {
      swift_once();
    }

    v74 = sub_1B4D17F6C();
    __swift_project_value_buffer(v74, qword_1EDC36F00);
    v58 = sub_1B4D17F5C();
    v59 = sub_1B4D1873C();
    if (!os_log_type_enabled(v58, v59))
    {
      goto LABEL_38;
    }

    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v92 = v61;
    *v60 = 136315138;
    *(v60 + 4) = sub_1B49558AC(0xD000000000000012, 0x80000001B4D62990, &v92);
    v62 = "%s hasClosedRing returned nil for previousRingRepresentable. Returning";
    goto LABEL_37;
  }

  if (v66 >= 1.0 && v70 >= 1.0 && v72 >= 1.0)
  {
    if (qword_1EDC36EF8 != -1)
    {
      swift_once();
    }

    v77 = sub_1B4D17F6C();
    __swift_project_value_buffer(v77, qword_1EDC36F00);
    v58 = sub_1B4D17F5C();
    v59 = sub_1B4D1873C();
    if (!os_log_type_enabled(v58, v59))
    {
      goto LABEL_38;
    }

    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v92 = v61;
    *v60 = 136315138;
    *(v60 + 4) = sub_1B49558AC(0xD000000000000012, 0x80000001B4D62990, &v92);
    v62 = "%s Rings have closed in prior snapshot this workout. Returning.";
    goto LABEL_37;
  }

  v78 = v0[14];
  v79 = sub_1B4A612D4();
  if (v80 & 1) != 0 || (v81 = *&v79, v82 = v0[14], v83 = sub_1B4A61B14(), (v84) || (v85 = *&v83, v86 = v0[14], v87 = COERCE_DOUBLE(sub_1B4A61EE8()), (v88) || v81 < 1.0 || v85 < 1.0 || v87 < 1.0)
  {
    if (qword_1EDC36EF8 != -1)
    {
      swift_once();
    }

    v89 = sub_1B4D17F6C();
    __swift_project_value_buffer(v89, qword_1EDC36F00);
    v58 = sub_1B4D17F5C();
    v59 = sub_1B4D1873C();
    if (!os_log_type_enabled(v58, v59))
    {
      goto LABEL_38;
    }

    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v92 = v61;
    *v60 = 136315138;
    *(v60 + 4) = sub_1B49558AC(0xD000000000000012, 0x80000001B4D62990, &v92);
    v62 = "%s Rings have closed in prior snapshot. Returning.";
    goto LABEL_37;
  }

  v90 = v0[18];
  v91 = v0[14];
  sub_1B4BB9380(v0[13], type metadata accessor for HKActivitySummaryRepresentable);
  sub_1B4BB9380(v91, type metadata accessor for HKActivitySummaryRepresentable);
  sub_1B4BB9380(v90, type metadata accessor for ActivitySummaryContext);
  v29 = &unk_1F2CB8A80;
LABEL_14:
  v30 = v0[18];
  v32 = v0[14];
  v31 = v0[15];
  v33 = v0[13];
  v35 = v0[9];
  v34 = v0[10];
  v37 = v0[7];
  v36 = v0[8];
  v38 = v0[6];

  v39 = v0[1];

  return v39(v29);
}

unint64_t sub_1B4BB9078()
{
  result = qword_1EB8ABCE0;
  if (!qword_1EB8ABCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ABCE0);
  }

  return result;
}

unint64_t sub_1B4BB90F8()
{
  result = qword_1EB8ABCE8;
  if (!qword_1EB8ABCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ABCE8);
  }

  return result;
}

unint64_t sub_1B4BB914C()
{
  result = qword_1EB8ABCF0;
  if (!qword_1EB8ABCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ABCF0);
  }

  return result;
}

unint64_t sub_1B4BB91A4()
{
  result = qword_1EB8ABCF8;
  if (!qword_1EB8ABCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ABCF8);
  }

  return result;
}

uint64_t sub_1B4BB9224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1B4BB9260()
{
  result = qword_1EB8ABD00;
  if (!qword_1EB8ABD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ABD00);
  }

  return result;
}

unint64_t sub_1B4BB92B4()
{
  result = qword_1EB8ABD08;
  if (!qword_1EB8ABD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ABD08);
  }

  return result;
}

uint64_t sub_1B4BB9318(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B4BB9380(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t InferenceRecord.createdAt.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for InferenceRecord() + 20);
  v4 = sub_1B4D1777C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for InferenceRecord()
{
  result = qword_1EDC39840;
  if (!qword_1EDC39840)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t InferenceRecord.request.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for InferenceRecord() + 24));
  v4 = v3[5];
  v5 = v3[7];
  v22 = v3[6];
  v23[0] = v5;
  *(v23 + 9) = *(v3 + 121);
  v6 = v3[1];
  v7 = v3[3];
  v18 = v3[2];
  v8 = v18;
  v19 = v7;
  v9 = v3[3];
  v10 = v3[5];
  v20 = v3[4];
  v11 = v20;
  v21 = v10;
  v12 = v3[1];
  v17[0] = *v3;
  v13 = v17[0];
  v17[1] = v12;
  v14 = v3[7];
  a1[6] = v22;
  a1[7] = v14;
  *(a1 + 121) = *(v3 + 121);
  a1[2] = v8;
  a1[3] = v9;
  a1[4] = v11;
  a1[5] = v4;
  *a1 = v13;
  a1[1] = v6;
  return sub_1B4BB9544(v17, &v16);
}

uint64_t InferenceRecord.result.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for InferenceRecord() + 28);

  return sub_1B49F01B4(v3, a1);
}

uint64_t InferenceRecord.osBuildVersion.getter()
{
  v1 = (v0 + *(type metadata accessor for InferenceRecord() + 32));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t InferenceRecord.feedbackId.getter()
{
  v1 = (v0 + *(type metadata accessor for InferenceRecord() + 36));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t InferenceRecord.init(uuid:createdAt:request:result:osBuildVersion:feedbackId:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v18 = sub_1B4D177CC();
  (*(*(v18 - 8) + 32))(a9, a1, v18);
  v19 = type metadata accessor for InferenceRecord();
  v20 = v19[5];
  v21 = sub_1B4D1777C();
  (*(*(v21 - 8) + 32))(a9 + v20, a2, v21);
  v22 = (a9 + v19[6]);
  v23 = a3[7];
  v22[6] = a3[6];
  v22[7] = v23;
  *(v22 + 121) = *(a3 + 121);
  v24 = a3[3];
  v22[2] = a3[2];
  v22[3] = v24;
  v25 = a3[5];
  v22[4] = a3[4];
  v22[5] = v25;
  v26 = a3[1];
  *v22 = *a3;
  v22[1] = v26;
  result = sub_1B4BB97A4(a4, a9 + v19[7]);
  v28 = (a9 + v19[8]);
  *v28 = a5;
  v28[1] = a6;
  v29 = (a9 + v19[9]);
  *v29 = a7;
  v29[1] = a8;
  return result;
}

uint64_t sub_1B4BB97A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InferenceResult();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t _s19FitnessIntelligence22BestWorkoutRecordEntryV17workoutIdentifier10Foundation4UUIDVvg_0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B4D177CC();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t InferenceRecord.copy(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = sub_1B4D177CC();
  (*(*(v8 - 8) + 16))(a3, v4, v8);
  v9 = type metadata accessor for InferenceRecord();
  v10 = v9[5];
  v11 = sub_1B4D1777C();
  (*(*(v11 - 8) + 16))(a3 + v10, v4 + v10, v11);
  v12 = (v4 + v9[6]);
  v13 = v12[7];
  v35 = v12[6];
  v36[0] = v13;
  *(v36 + 9) = *(v12 + 121);
  v14 = v12[3];
  v31 = v12[2];
  v32 = v14;
  v15 = v12[5];
  v33 = v12[4];
  v34 = v15;
  v16 = v12[1];
  v29 = *v12;
  v30 = v16;
  sub_1B49F01B4(v4 + v9[7], a3 + v9[7]);
  v17 = (v4 + v9[8]);
  v18 = *v17;
  v19 = v17[1];
  v20 = (a3 + v9[6]);
  v21 = v32;
  v20[2] = v31;
  v20[3] = v21;
  v22 = v30;
  *v20 = v29;
  v20[1] = v22;
  *(v20 + 121) = *(v36 + 9);
  v23 = v36[0];
  v20[6] = v35;
  v20[7] = v23;
  v24 = v34;
  v20[4] = v33;
  v20[5] = v24;
  v25 = (a3 + v9[8]);
  *v25 = v18;
  v25[1] = v19;
  v26 = (a3 + v9[9]);
  *v26 = a1;
  v26[1] = a2;
  sub_1B4BB9544(&v29, &v28);
}

unint64_t sub_1B4BB9A00()
{
  result = qword_1EB8A72D8;
  if (!qword_1EB8A72D8)
  {
    sub_1B4D177CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A72D8);
  }

  return result;
}

void sub_1B4BB9A80()
{
  sub_1B4D177CC();
  if (v0 <= 0x3F)
  {
    sub_1B4D1777C();
    if (v1 <= 0x3F)
    {
      type metadata accessor for InferenceResult();
      if (v2 <= 0x3F)
      {
        sub_1B4ABA5F0();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

id WorkoutVoiceMilestoneWorkoutDistanceFact.activityType.getter()
{
  v1 = *(v0 + *(type metadata accessor for WorkoutVoiceMilestoneWorkoutDistanceFact() + 28));

  return v1;
}

uint64_t type metadata accessor for WorkoutVoiceMilestoneWorkoutDistanceFact()
{
  result = qword_1EB8ABD50;
  if (!qword_1EB8ABD50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t WorkoutVoiceMilestoneWorkoutDistanceFact.init(value:timescale:activityType:workoutCount:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  v9 = *a2;
  *a5 = 1;
  v10 = type metadata accessor for WorkoutVoiceMilestoneWorkoutDistanceFact();
  v11 = v10[5];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  result = (*(*(v12 - 8) + 32))(&a5[v11], a1, v12);
  a5[v10[6]] = v9;
  *&a5[v10[7]] = a3;
  *&a5[v10[8]] = a4;
  return result;
}

uint64_t WorkoutVoiceMilestoneWorkoutDistanceFact.value.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WorkoutVoiceMilestoneWorkoutDistanceFact() + 20);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WorkoutVoiceMilestoneWorkoutDistanceFact.timescale.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for WorkoutVoiceMilestoneWorkoutDistanceFact();
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t sub_1B4BB9D70()
{
  v1 = *v0;
  v2 = 1701869940;
  v3 = 0x6C616373656D6974;
  v4 = 0xD000000000000013;
  if (v1 != 3)
  {
    v4 = 0x4374756F6B726F77;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x65756C6176;
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

uint64_t sub_1B4BB9E10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B4BBAC70(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B4BB9E38(uint64_t a1)
{
  v2 = sub_1B4BBA874();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4BB9E74(uint64_t a1)
{
  v2 = sub_1B4BBA874();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t WorkoutVoiceMilestoneWorkoutDistanceFact.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABD28, &unk_1B4D38948);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4BBA874();
  sub_1B4D18EFC();
  v24 = *v3;
  v23 = 0;
  sub_1B4BBA8C8();
  sub_1B4D18D0C();
  if (!v2)
  {
    v16 = type metadata accessor for WorkoutVoiceMilestoneWorkoutDistanceFact();
    v11 = *(v16 + 20);
    v22 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
    sub_1B49B0578(&qword_1EB8A6EE8, &qword_1EB8A6830, &unk_1B4D1AB40);
    sub_1B4D18D0C();
    v12 = v16;
    v21 = v3[*(v16 + 24)];
    v20 = 2;
    sub_1B4B59B24();
    sub_1B4D18D0C();
    v17 = *&v3[*(v12 + 28)];
    v19 = 3;
    v13 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6F98, &qword_1B4D2CA80);
    sub_1B49B0578(&qword_1EB8A6FA0, &qword_1EB8A6F98, &qword_1B4D2CA80);
    sub_1B4D18D0C();

    v14 = *&v3[*(v12 + 32)];
    v18 = 4;
    sub_1B4D18D1C();
  }

  return (*(v6 + 8))(v9, v5);
}

void WorkoutVoiceMilestoneWorkoutDistanceFact.init(from:)(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v26 = *(v4 - 8);
  v5 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v23 - v6;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABD40, &qword_1B4D38958);
  v25 = *(v28 - 8);
  v8 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v10 = &v23 - v9;
  v11 = type metadata accessor for WorkoutVoiceMilestoneWorkoutDistanceFact();
  v12 = *(*(v11 - 1) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[3];
  v16 = a1[4];
  v29 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_1B4BBA874();
  v27 = v10;
  sub_1B4D18EEC();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v29);
  }

  else
  {
    v17 = v14;
    v19 = v25;
    v18 = v26;
    v36 = 0;
    sub_1B4BBA91C();
    sub_1B4D18C0C();
    *v17 = v37;
    v35 = 1;
    sub_1B49B0578(&qword_1EB8A6F28, &qword_1EB8A6830, &unk_1B4D1AB40);
    sub_1B4D18C0C();
    (*(v18 + 32))(&v17[v11[5]], v7, v4);
    v33 = 2;
    sub_1B4B59BCC();
    v20 = v27;
    sub_1B4D18C0C();
    v17[v11[6]] = v34;
    v23 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6F98, &qword_1B4D2CA80);
    v32 = 3;
    sub_1B49B0578(&qword_1EB8A6FB0, &qword_1EB8A6F98, &qword_1B4D2CA80);
    sub_1B4D18C0C();
    v21 = v23;
    *&v23[v11[7]] = v30;
    v31 = 4;
    v22 = sub_1B4D18C1C();
    (*(v19 + 8))(v20, v28);
    *(v21 + v11[8]) = v22;
    sub_1B4993B98(v21, v24);
    __swift_destroy_boxed_opaque_existential_1Tm(v29);
    sub_1B4BBA970(v21);
  }
}

BOOL _s19FitnessIntelligence021WorkoutVoiceMilestoneC12DistanceFactV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
  v4 = type metadata accessor for WorkoutVoiceMilestoneWorkoutDistanceFact();
  v5 = v4[5];
  sub_1B49B0578(&qword_1EDC3CB38, &qword_1EB8A6830, &unk_1B4D1AB40);
  if ((sub_1B4D1816C() & 1) == 0 || (sub_1B4975E34(a1[v4[6]], a2[v4[6]]) & 1) == 0)
  {
    return 0;
  }

  v6 = v4[7];
  v7 = *&a1[v6];
  v8 = *&a2[v6];
  objc_opt_self();
  v9 = swift_dynamicCastObjCClass();
  if (v9 && (v10 = v9, objc_opt_self(), (v11 = swift_dynamicCastObjCClass()) != 0))
  {
    v12 = v11;
    v13 = v7;
    v14 = v8;
    [v10 coordinate];
    v16 = v15;
    [v12 coordinate];
    if (v16 == v17)
    {
      [v10 coordinate];
      v19 = v18;
      [v12 coordinate];
      v21 = v20;

      if (v19 != v21)
      {
        return 0;
      }

      return *&a1[v4[8]] == *&a2[v4[8]];
    }
  }

  else
  {
    sub_1B498AFB8(0, &qword_1EB8A7560, 0x1E69E58C0);
    if (sub_1B4D187AC())
    {
      return *&a1[v4[8]] == *&a2[v4[8]];
    }
  }

  return 0;
}

unint64_t sub_1B4BBA874()
{
  result = qword_1EB8ABD30;
  if (!qword_1EB8ABD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ABD30);
  }

  return result;
}

unint64_t sub_1B4BBA8C8()
{
  result = qword_1EB8ABD38;
  if (!qword_1EB8ABD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ABD38);
  }

  return result;
}

unint64_t sub_1B4BBA91C()
{
  result = qword_1EB8ABD48;
  if (!qword_1EB8ABD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ABD48);
  }

  return result;
}

uint64_t sub_1B4BBA970(uint64_t a1)
{
  v2 = type metadata accessor for WorkoutVoiceMilestoneWorkoutDistanceFact();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1B4BBA9F4()
{
  sub_1B4BBAAF0(319, &qword_1EDC3CE78, &qword_1EDC3CB80, 0x1E696B058, MEMORY[0x1E6968070]);
  if (v0 <= 0x3F)
  {
    sub_1B4BBAAF0(319, &qword_1EDC37438, &qword_1EDC36DC8, 0x1E699C9F0, type metadata accessor for CodableBridging);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B4BBAAF0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1B498AFB8(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_1B4BBAB6C()
{
  result = qword_1EB8ABD60;
  if (!qword_1EB8ABD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ABD60);
  }

  return result;
}

unint64_t sub_1B4BBABC4()
{
  result = qword_1EB8ABD68;
  if (!qword_1EB8ABD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ABD68);
  }

  return result;
}

unint64_t sub_1B4BBAC1C()
{
  result = qword_1EB8ABD70;
  if (!qword_1EB8ABD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ABD70);
  }

  return result;
}

uint64_t sub_1B4BBAC70(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C616373656D6974 && a2 == 0xE900000000000065 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001B4D4F200 == a2 || (sub_1B4D18DCC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x4374756F6B726F77 && a2 == 0xEC000000746E756FLL)
  {

    return 4;
  }

  else
  {
    v6 = sub_1B4D18DCC();

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

uint64_t FitnessPlusPropertyRecord.init(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7DB8, &unk_1B4D27B10);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v43 - v5;
  v48 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty(0);
  v55 = *(v48 - 8);
  v7 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v48);
  v49 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A7DC8, &qword_1B4D202B8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v43 - v11;
  v13 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions(0);
  v14 = *(v13 - 1);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a1;
  v45 = a1[1];
  v46 = v18;
  v19 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyRecord(0);
  sub_1B4974FBC(a1 + *(v19 + 28), v12, &qword_1EB8A7DC8, &qword_1B4D202B8);
  v20 = *(v14 + 48);
  if (v20(v12, 1, v13) == 1)
  {
    sub_1B4D17BBC();
    v21 = &v17[v13[5]];
    *v21 = 0;
    *(v21 + 1) = 0;
    v22 = &v17[v13[6]];
    *v22 = 0;
    *(v22 + 1) = 0;
    v23 = &v17[v13[7]];
    *v23 = 0;
    v23[8] = 1;
    v24 = &v17[v13[8]];
    *v24 = 0;
    *(v24 + 1) = 0;
    v25 = v13[9];
    v26 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusTrainerIdentifiers(0);
    (*(*(v26 - 8) + 56))(&v17[v25], 1, 1, v26);
    if (v20(v12, 1, v13) != 1)
    {
      sub_1B4975024(v12, &qword_1EB8A7DC8, &qword_1B4D202B8);
    }
  }

  else
  {
    sub_1B4BBB3E8(v12, v17, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions);
  }

  v27 = v50;
  FitnessPlusPropertyDimensions.init(_:)(v17, &v51);
  v28 = v55;
  if (v27)
  {
    return sub_1B4BBB388(a1, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyRecord);
  }

  v30 = v51;
  v31 = BYTE1(v51);
  v50 = *(&v51 + 1);
  v43 = v53;
  v44 = v52;
  v32 = v54;
  sub_1B4974FBC(a1 + *(v19 + 32), v6, &qword_1EB8A7DB8, &unk_1B4D27B10);
  v33 = *(v28 + 48);
  v34 = v48;
  if (v33(v6, 1, v48) == 1)
  {
    v35 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty.OneOf_PropertyType(0);
    v36 = *(*(v35 - 8) + 56);
    v55 = v32;
    v37 = v34;
    v38 = v49;
    v36(v49, 1, 1, v35);
    v39 = v38 + *(v37 + 20);
    sub_1B4D17BBC();
    v40 = v33(v6, 1, v37);
    v32 = v55;
    if (v40 != 1)
    {
      sub_1B4975024(v6, &qword_1EB8A7DB8, &unk_1B4D27B10);
    }
  }

  else
  {
    v38 = v49;
    sub_1B4BBB3E8(v6, v49, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty);
  }

  static FitnessPlusPropertySerialization.from(_:)(v38, &v51);
  sub_1B4BBB388(a1, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyRecord);
  sub_1B4BBB388(v38, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty);
  v41 = v47;
  result = sub_1B496F398(&v51, v47 + 48);
  v42 = v45;
  *v41 = v46;
  *(v41 + 8) = v42;
  *(v41 + 16) = v30;
  *(v41 + 17) = v31;
  *(v41 + 24) = v50;
  LOBYTE(v42) = v43;
  *(v41 + 32) = v44;
  *(v41 + 33) = v42;
  *(v41 + 40) = v32;
  return result;
}

uint64_t sub_1B4BBB388(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B4BBB3E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t FitnessPlusPropertyRecord.protobuf()()
{
  type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyRecord(0);
  sub_1B4BBB97C(&qword_1EB8A9548, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyRecord);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4BBB4F8(char *a1, uint64_t a2)
{
  v5 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a1 = *a2;
  v15 = *(a2 + 24);
  v16 = *(a2 + 32);
  v17 = *(a2 + 33);
  v18 = *(a2 + 40);
  v26 = *(a2 + 16);
  v27 = v15;
  v28 = v16;
  v29 = v17;
  v30 = v18;
  sub_1B4BBB97C(&qword_1EB8A95C8, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions);
  result = sub_1B4D17DAC();
  if (!v2)
  {
    v25 = v6;
    v31 = v5;
    v20 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyRecord(0);
    v21 = *(v20 + 28);
    sub_1B4975024(&a1[v21], &qword_1EB8A7DC8, &qword_1B4D202B8);
    sub_1B4BBB3E8(v14, &a1[v21], type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyDimensions);
    (*(v11 + 56))(&a1[v21], 0, 1, v10);
    v22 = *(a2 + 80);
    __swift_project_boxed_opaque_existential_1((a2 + 48), *(a2 + 72));
    FitnessPlusProperty.protobuf()();
    v23 = *(v20 + 32);
    sub_1B4975024(&a1[v23], &qword_1EB8A7DB8, &unk_1B4D27B10);
    sub_1B4BBB3E8(v9, &a1[v23], type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusProperty);
    return (*(v25 + 56))(&a1[v23], 0, 1, v31);
  }

  return result;
}

uint64_t sub_1B4BBB884()
{
  type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyRecord(0);
  sub_1B4BBB97C(&qword_1EB8A9548, type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusPropertyRecord);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4BBB97C(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1B4BBB9DC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1B4D1781C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_allocWithZone(MEMORY[0x1E696AD30]) init];
  *(v2 + 16) = v9;
  v10 = v9;
  sub_1B4D177DC();
  v11 = sub_1B4D177EC();
  (*(v5 + 8))(v8, v4);
  [v10 setLocale_];

  [*(v2 + 16) setUnitStyle_];
  [*(v2 + 16) setUnitOptions_];
  result = [*(v2 + 16) numberFormatter];
  if (result)
  {
    v13 = result;
    [result setRoundingMode_];

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B4BBBB70()
{

  return swift_deallocClassInstance();
}

uint64_t static FitnessPlusBestWorkoutPropertyGenerator.from(_:for:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CA8, &unk_1B4D1C2B0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v31[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v31[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v31[-v14];
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  (*(v17 + 32))(&v32, v16, v17);
  if (v32 > 8u || ((1 << v32) & 0x131) == 0)
  {
    v20 = a1[3];
    v21 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v20);
    (*(v21 + 72))(v20, v21);
    if ((*(v9 + 48))(v7, 1, v8) != 1)
    {
      (*(v9 + 32))(v15, v7, v8);
      (*(v9 + 16))(v12, v15, v8);
      v22 = a1[3];
      v23 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v22);
      v24 = (*(v23 + 40))(v22, v23);
      v26 = v25;
      sub_1B4BBBFA0();
      v27 = [swift_getObjCClassFromMetadata() baseUnit];
      sub_1B4D1745C();

      v28 = *(v9 + 8);
      v28(v12, v8);
      v28(v15, v8);
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D88, &unk_1B4D208C0);
      v30 = (a2 + *(v29 + 28));
      *v30 = v24;
      v30[1] = v26;
      return (*(*(v29 - 8) + 56))(a2, 0, 1, v29);
    }

    sub_1B4BBBF38(v7);
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D88, &unk_1B4D208C0);
  return (*(*(v18 - 8) + 56))(a2, 1, 1, v18);
}

uint64_t sub_1B4BBBF38(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CA8, &unk_1B4D1C2B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1B4BBBFA0()
{
  result = qword_1EDC378C8;
  if (!qword_1EDC378C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDC378C8);
  }

  return result;
}

unint64_t sub_1B4BBBFEC(uint64_t a1)
{
  result = sub_1B4A28310();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4BBC018()
{
  result = qword_1EB8ABD78;
  if (!qword_1EB8ABD78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8A6D88, &unk_1B4D208C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ABD78);
  }

  return result;
}

uint64_t WorkoutVoiceMilestoneWorkoutDurationFact.init(value:timescale:activityType:workoutCount:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  v9 = *a2;
  *a5 = 1;
  v10 = type metadata accessor for WorkoutVoiceMilestoneWorkoutDurationFact();
  v11 = v10[5];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  result = (*(*(v12 - 8) + 32))(&a5[v11], a1, v12);
  a5[v10[6]] = v9;
  *&a5[v10[7]] = a3;
  *&a5[v10[8]] = a4;
  return result;
}

uint64_t type metadata accessor for WorkoutVoiceMilestoneWorkoutDurationFact()
{
  result = qword_1EB8ABD98;
  if (!qword_1EB8ABD98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id WorkoutVoiceMilestoneWorkoutDurationFact.activityType.getter()
{
  v1 = *(v0 + *(type metadata accessor for WorkoutVoiceMilestoneWorkoutDurationFact() + 28));

  return v1;
}

uint64_t WorkoutVoiceMilestoneWorkoutDurationFact.value.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WorkoutVoiceMilestoneWorkoutDurationFact() + 20);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t WorkoutVoiceMilestoneWorkoutDurationFact.timescale.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for WorkoutVoiceMilestoneWorkoutDurationFact();
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t sub_1B4BBC2D4(uint64_t a1)
{
  v2 = sub_1B4BBCD10();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4BBC310(uint64_t a1)
{
  v2 = sub_1B4BBCD10();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t WorkoutVoiceMilestoneWorkoutDurationFact.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABD80, &unk_1B4D38C28);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4BBCD10();
  sub_1B4D18EFC();
  v24 = *v3;
  v23 = 0;
  sub_1B4BBA8C8();
  sub_1B4D18D0C();
  if (!v2)
  {
    v16 = type metadata accessor for WorkoutVoiceMilestoneWorkoutDurationFact();
    v11 = *(v16 + 20);
    v22 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
    sub_1B49B0578(&qword_1EB8A6ED8, &qword_1EB8A6850, &unk_1B4D1BC10);
    sub_1B4D18D0C();
    v12 = v16;
    v21 = v3[*(v16 + 24)];
    v20 = 2;
    sub_1B4B59B24();
    sub_1B4D18D0C();
    v17 = *&v3[*(v12 + 28)];
    v19 = 3;
    v13 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6F98, &qword_1B4D2CA80);
    sub_1B49B0578(&qword_1EB8A6FA0, &qword_1EB8A6F98, &qword_1B4D2CA80);
    sub_1B4D18D0C();

    v14 = *&v3[*(v12 + 32)];
    v18 = 4;
    sub_1B4D18D1C();
  }

  return (*(v6 + 8))(v9, v5);
}

void WorkoutVoiceMilestoneWorkoutDurationFact.init(from:)(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v26 = *(v4 - 8);
  v5 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v23 - v6;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABD90, &qword_1B4D38C38);
  v25 = *(v28 - 8);
  v8 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v10 = &v23 - v9;
  v11 = type metadata accessor for WorkoutVoiceMilestoneWorkoutDurationFact();
  v12 = *(*(v11 - 1) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[3];
  v16 = a1[4];
  v29 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_1B4BBCD10();
  v27 = v10;
  sub_1B4D18EEC();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v29);
  }

  else
  {
    v17 = v14;
    v19 = v25;
    v18 = v26;
    v36 = 0;
    sub_1B4BBA91C();
    sub_1B4D18C0C();
    *v17 = v37;
    v35 = 1;
    sub_1B49B0578(&qword_1EB8A6F18, &qword_1EB8A6850, &unk_1B4D1BC10);
    sub_1B4D18C0C();
    (*(v18 + 32))(&v17[v11[5]], v7, v4);
    v33 = 2;
    sub_1B4B59BCC();
    v20 = v27;
    sub_1B4D18C0C();
    v17[v11[6]] = v34;
    v23 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6F98, &qword_1B4D2CA80);
    v32 = 3;
    sub_1B49B0578(&qword_1EB8A6FB0, &qword_1EB8A6F98, &qword_1B4D2CA80);
    sub_1B4D18C0C();
    v21 = v23;
    *&v23[v11[7]] = v30;
    v31 = 4;
    v22 = sub_1B4D18C1C();
    (*(v19 + 8))(v20, v28);
    *(v21 + v11[8]) = v22;
    sub_1B4BBCD64(v21, v24);
    __swift_destroy_boxed_opaque_existential_1Tm(v29);
    sub_1B4BBCDC8(v21);
  }
}

BOOL _s19FitnessIntelligence021WorkoutVoiceMilestoneC12DurationFactV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v4 = type metadata accessor for WorkoutVoiceMilestoneWorkoutDurationFact();
  v5 = v4[5];
  sub_1B49B0578(&qword_1EB8A6F78, &qword_1EB8A6850, &unk_1B4D1BC10);
  if ((sub_1B4D1816C() & 1) == 0 || (sub_1B4975E34(a1[v4[6]], a2[v4[6]]) & 1) == 0)
  {
    return 0;
  }

  v6 = v4[7];
  v7 = *&a1[v6];
  v8 = *&a2[v6];
  objc_opt_self();
  v9 = swift_dynamicCastObjCClass();
  if (v9 && (v10 = v9, objc_opt_self(), (v11 = swift_dynamicCastObjCClass()) != 0))
  {
    v12 = v11;
    v13 = v7;
    v14 = v8;
    [v10 coordinate];
    v16 = v15;
    [v12 coordinate];
    if (v16 == v17)
    {
      [v10 coordinate];
      v19 = v18;
      [v12 coordinate];
      v21 = v20;

      if (v19 != v21)
      {
        return 0;
      }

      return *&a1[v4[8]] == *&a2[v4[8]];
    }
  }

  else
  {
    sub_1B498AFB8(0, &qword_1EB8A7560, 0x1E69E58C0);
    if (sub_1B4D187AC())
    {
      return *&a1[v4[8]] == *&a2[v4[8]];
    }
  }

  return 0;
}

unint64_t sub_1B4BBCD10()
{
  result = qword_1EB8ABD88;
  if (!qword_1EB8ABD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ABD88);
  }

  return result;
}

uint64_t sub_1B4BBCD64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutVoiceMilestoneWorkoutDurationFact();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B4BBCDC8(uint64_t a1)
{
  v2 = type metadata accessor for WorkoutVoiceMilestoneWorkoutDurationFact();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1B4BBCE4C()
{
  sub_1B4BBAAF0(319, &qword_1EDC3CB28, &qword_1EDC378C0, 0x1E696B008, MEMORY[0x1E6968070]);
  if (v0 <= 0x3F)
  {
    sub_1B4BBAAF0(319, &qword_1EDC37438, &qword_1EDC36DC8, 0x1E699C9F0, type metadata accessor for CodableBridging);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1B4BBCF5C()
{
  result = qword_1EB8ABDA8;
  if (!qword_1EB8ABDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ABDA8);
  }

  return result;
}

unint64_t sub_1B4BBCFB4()
{
  result = qword_1EB8ABDB0;
  if (!qword_1EB8ABDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ABDB0);
  }

  return result;
}

unint64_t sub_1B4BBD00C()
{
  result = qword_1EB8ABDB8;
  if (!qword_1EB8ABDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ABDB8);
  }

  return result;
}

unint64_t static FitnessPlusWorkoutCountByTrainerPropertyGenerator.from(_:for:)@<X0>(void *a1@<X0>, _BYTE *a2@<X1>, unint64_t *a3@<X8>)
{
  if (*a2 == 4)
  {
  }

  else
  {
    v5 = sub_1B4D18DCC();

    if ((v5 & 1) == 0)
    {
      *a3 = 0;
      a3[1] = 0;
      return result;
    }
  }

  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  (*(v8 + 24))(&v14, v7, v8);
  v13 = v14;

  sub_1B4BBD2A0(&v13);

  v9 = v13;
  if (*(v13 + 2))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABDC0, &unk_1B4D38E20);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B4D1A800;
    *(inited + 32) = v9;
    v11 = inited + 32;
    *(inited + 40) = 1;
    v12 = sub_1B4C98560(inited);
    swift_setDeallocating();
    result = sub_1B4BBDCD8(v11);
    *a3 = v12;
    a3[1] = 0;
  }

  else
  {

    result = sub_1B4C98560(MEMORY[0x1E69E7CC0]);
    *a3 = result;
    a3[1] = 1;
  }

  return result;
}

uint64_t sub_1B4BBD2A0(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1B4CDE52C(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1B4BBD30C(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1B4BBD30C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1B4D18D4C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v5 = sub_1B4D1844C();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1B4BBD4D4(v7, v8, a1, v4);
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
    return sub_1B4BBD404(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1B4BBD404(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_1B4D18DCC(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1B4BBD4D4(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_1B4CDDE84(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_1B4BBDAB0((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_1B4D18DCC();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_1B4D18DCC();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1B4A1D58C(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_1B4A1D58C((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
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
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_1B4BBDAB0((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1B4CDDE84(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_1B4CDDDF8(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = (v9 + a4);
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = sub_1B4D18DCC(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}

uint64_t sub_1B4BBDAB0(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_1B4D18DCC() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_1B4D18DCC() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_1B4BBDCD8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABDC8, &qword_1B4D47240);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1B4BBDD40(uint64_t a1)
{
  result = sub_1B4A28A04();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4BBDD6C()
{
  result = qword_1EB8ABDD0;
  if (!qword_1EB8ABDD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8ABDD8, &qword_1B4D38E50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ABDD0);
  }

  return result;
}

unint64_t sub_1B4BBDDF4(uint64_t a1)
{
  result = sub_1B4A28C04();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4BBDE44()
{
  result = qword_1EB8ABDE0;
  if (!qword_1EB8ABDE0)
  {
    type metadata accessor for PerfectWeekRingStatusFact();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ABDE0);
  }

  return result;
}

unint64_t sub_1B4BBDEA0()
{
  result = qword_1EB8ABDE8;
  if (!qword_1EB8ABDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ABDE8);
  }

  return result;
}

uint64_t sub_1B4BBDEF4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD000000000000016;
  }

  else
  {
    v4 = 0xD000000000000017;
  }

  if (v3)
  {
    v5 = "on";
  }

  else
  {
    v5 = "s <ring_percentage>.";
  }

  if (*a2)
  {
    v6 = 0xD000000000000016;
  }

  else
  {
    v6 = 0xD000000000000017;
  }

  if (*a2)
  {
    v7 = "s <ring_percentage>.";
  }

  else
  {
    v7 = "on";
  }

  if (v4 == v6 && (v5 | 0x8000000000000000) == (v7 | 0x8000000000000000))
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1B4D18DCC();
  }

  return v9 & 1;
}

uint64_t sub_1B4BBDF9C()
{
  v1 = *v0;
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

uint64_t sub_1B4BBE018()
{
  *v0;
  sub_1B4D1820C();
}

uint64_t sub_1B4BBE080()
{
  v1 = *v0;
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

uint64_t sub_1B4BBE0F8@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1B4D18B1C();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_1B4BBE158(unint64_t *a1@<X8>)
{
  v2 = "s <ring_percentage>.";
  v3 = 0xD000000000000016;
  if (!*v1)
  {
    v3 = 0xD000000000000017;
    v2 = "on";
  }

  *a1 = v3;
  a1[1] = v2 | 0x8000000000000000;
}

uint64_t sub_1B4BBE198(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1B49AA274;

  return sub_1B4BBE388(a1, a3);
}

unint64_t sub_1B4BBE258(uint64_t a1)
{
  *(a1 + 8) = sub_1B4BBE288();
  result = sub_1B4BBE2DC();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1B4BBE288()
{
  result = qword_1EB8ABDF0;
  if (!qword_1EB8ABDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ABDF0);
  }

  return result;
}

unint64_t sub_1B4BBE2DC()
{
  result = qword_1EB8ABDF8;
  if (!qword_1EB8ABDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ABDF8);
  }

  return result;
}

unint64_t sub_1B4BBE334()
{
  result = qword_1EB8ABE00;
  if (!qword_1EB8ABE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ABE00);
  }

  return result;
}

uint64_t sub_1B4BBE388(uint64_t a1, uint64_t a2)
{
  v2[110] = a2;
  v2[109] = a1;
  v3 = type metadata accessor for PerfectWeekRingStatusFact();
  v2[111] = v3;
  v4 = *(v3 - 8);
  v2[112] = v4;
  v5 = *(v4 + 64) + 15;
  v2[113] = swift_task_alloc();
  v2[114] = swift_task_alloc();
  v2[115] = swift_task_alloc();
  v6 = sub_1B4D1777C();
  v2[116] = v6;
  v7 = *(v6 - 8);
  v2[117] = v7;
  v8 = *(v7 + 64) + 15;
  v2[118] = swift_task_alloc();
  v2[119] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA5C0, &unk_1B4D39040) - 8) + 64) + 15;
  v2[120] = swift_task_alloc();
  v2[121] = swift_task_alloc();
  v2[122] = swift_task_alloc();
  v10 = type metadata accessor for RingProgressType();
  v2[123] = v10;
  v11 = *(v10 - 8);
  v2[124] = v11;
  v12 = *(v11 + 64) + 15;
  v2[125] = swift_task_alloc();
  v2[126] = swift_task_alloc();
  v2[127] = swift_task_alloc();
  v2[128] = swift_task_alloc();
  v2[129] = swift_task_alloc();
  v2[130] = swift_task_alloc();
  v13 = type metadata accessor for HKActivitySummaryRepresentable();
  v2[131] = v13;
  v14 = *(v13 - 8);
  v2[132] = v14;
  v15 = *(v14 + 64) + 15;
  v2[133] = swift_task_alloc();
  v2[134] = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C98, &unk_1B4D2F3F0) - 8) + 64) + 15;
  v2[135] = swift_task_alloc();
  v2[136] = swift_task_alloc();
  v2[137] = swift_task_alloc();
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8AA5C8, &qword_1B4D39050) - 8) + 64) + 15;
  v2[138] = swift_task_alloc();
  v2[139] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4BBE6B0, 0, 0);
}

uint64_t sub_1B4BBE6B0()
{
  v258 = v0;
  v1 = v0[139];
  v2 = v0[138];
  v3 = v0[109];
  v4 = type metadata accessor for ActivitySummaryContext();
  v5 = v3[3];
  v6 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v5);
  v0[107] = &type metadata for PerfectWeekRingStatusFactGenerator.QueryIdentifier;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABE08, &unk_1B4D39058);
  *&v248 = sub_1B4D181CC();
  *(&v248 + 1) = v7;
  MEMORY[0x1B8C7C620](14906, 0xE200000000000000);
  MEMORY[0x1B8C7C620](0xD000000000000016, 0x80000001B4D4C4C0);

  v8 = v0;
  (*(v6 + 8))(v248, *(&v248 + 1), v4, v4, v5, v6);

  sub_1B4974FBC(v1, v2, &qword_1EB8AA5C8, &qword_1B4D39050);
  v9 = (*(*(v4 - 8) + 48))(v2, 1, v4);
  v10 = v0[138];
  v11 = v0[136];
  v12 = v0[132];
  v13 = v0[131];
  if (v9 == 1)
  {
    sub_1B4975024(v0[138], &qword_1EB8AA5C8, &qword_1B4D39050);
    (*(v12 + 56))(v11, 1, 1, v13);
  }

  else
  {
    sub_1B4974FBC(v0[138], v0[136], &qword_1EB8A6C98, &unk_1B4D2F3F0);
    sub_1B4BC02C4(v10, type metadata accessor for ActivitySummaryContext);
    v14 = *(v12 + 48);
    if (v14(v11, 1, v13) != 1)
    {
      v21 = v0[137];
      v22 = v0[132];
      v23 = v0[131];
      sub_1B4BBFECC(v0[136], v21, type metadata accessor for HKActivitySummaryRepresentable);
      (*(v22 + 56))(v21, 0, 1, v23);
      goto LABEL_7;
    }
  }

  v15 = v0[137];
  v16 = v0[136];
  v17 = v0[132];
  v18 = v0[131];
  v19 = v0[110];
  v20 = type metadata accessor for WorkoutState();
  sub_1B4974FBC(v19 + *(v20 + 128), v15, &qword_1EB8A6C98, &unk_1B4D2F3F0);
  v14 = *(v17 + 48);
  if (v14(v16, 1, v18) != 1)
  {
    sub_1B4975024(v0[136], &qword_1EB8A6C98, &unk_1B4D2F3F0);
  }

LABEL_7:
  v25 = v3[3];
  v24 = v3[4];
  __swift_project_boxed_opaque_existential_1(v0[109], v25);
  v0[108] = &type metadata for PerfectWeekRingStatusFactGenerator.QueryIdentifier;
  *&v248 = sub_1B4D181CC();
  *(&v248 + 1) = v26;
  MEMORY[0x1B8C7C620](14906, 0xE200000000000000);
  MEMORY[0x1B8C7C620](0xD000000000000017, 0x80000001B4D4E5E0);

  (*(v24 + 8))(v248, *(&v248 + 1), &type metadata for RingsProperties, &type metadata for RingsProperties, v25, v24);

  v27 = v0[106];
  if (!v27)
  {
LABEL_13:
    if (qword_1EDC36EF8 != -1)
    {
      swift_once();
    }

    v38 = sub_1B4D17F6C();
    __swift_project_value_buffer(v38, qword_1EDC36F00);
    v39 = sub_1B4D17F5C();
    v40 = sub_1B4D1873C();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      *&v248 = v42;
      *v41 = 136315138;
      *(v41 + 4) = sub_1B49558AC(0xD000000000000022, 0x80000001B4D38F10, &v248);
      _os_log_impl(&dword_1B4953000, v39, v40, "%s No ring closure streak found.", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v42);
      MEMORY[0x1B8C7DDA0](v42, -1, -1);
      MEMORY[0x1B8C7DDA0](v41, -1, -1);
    }

    v43 = v8[139];
    sub_1B4975024(v8[137], &qword_1EB8A6C98, &unk_1B4D2F3F0);
    sub_1B4975024(v43, &qword_1EB8AA5C8, &qword_1B4D39050);
    v228 = MEMORY[0x1E69E7CC0];
    goto LABEL_18;
  }

  v28 = v0[104];
  v29 = v0[105];
  v30 = v0[135];
  v31 = v0[132];
  v32 = v8[131];
  sub_1B4974FBC(v8[137], v8[135], &qword_1EB8A6C98, &unk_1B4D2F3F0);
  v33 = v14(v30, 1, v32);
  v34 = v8[135];
  if (v33 == 1)
  {

    v35 = &qword_1EB8A6C98;
    v36 = &unk_1B4D2F3F0;
LABEL_10:
    sub_1B4975024(v34, v35, v36);
    goto LABEL_13;
  }

  v37 = v8[134];
  sub_1B4BBFECC(v8[135], v37, type metadata accessor for HKActivitySummaryRepresentable);
  if (*(v37 + 25))
  {
    goto LABEL_12;
  }

  sub_1B4C025D0(0, 0, 0, v27, &v230);
  v34 = (v8 + 19);
  v57 = v237;
  v58 = v236;
  v59 = v237;
  *(v8 + 31) = v236;
  *(v8 + 33) = v57;
  v60 = v233;
  v61 = v232;
  v62 = v233;
  *(v8 + 23) = v232;
  *(v8 + 25) = v60;
  v63 = v235;
  v65 = v234;
  v64 = v235;
  *(v8 + 27) = v234;
  *(v8 + 29) = v63;
  v66 = v231;
  v68 = v230;
  v67 = v231;
  *(v8 + 19) = v230;
  *(v8 + 21) = v66;
  *(v8 + 7) = v58;
  *(v8 + 8) = v59;
  *(v8 + 3) = v61;
  *(v8 + 4) = v62;
  *(v8 + 5) = v65;
  *(v8 + 6) = v64;
  v69 = v238;
  v8[35] = v238;
  v8[18] = v69;
  *(v8 + 1) = v68;
  *(v8 + 2) = v67;
  if (sub_1B496F52C((v8 + 2)) == 1)
  {
LABEL_12:
    sub_1B4BC02C4(v8[134], type metadata accessor for HKActivitySummaryRepresentable);

    goto LABEL_13;
  }

  sub_1B4C02EE0(0, 0, 0, v27, &v239);
  v70 = v244;
  v72 = v245;
  v71 = v246;
  *(v8 + 65) = v245;
  *(v8 + 67) = v71;
  v73 = v240;
  v75 = v241;
  v74 = v242;
  *(v8 + 57) = v241;
  *(v8 + 59) = v74;
  v76 = v242;
  v78 = v243;
  v77 = v244;
  *(v8 + 61) = v243;
  *(v8 + 63) = v77;
  v79 = v240;
  v80 = v239;
  *(v8 + 53) = v239;
  *(v8 + 55) = v79;
  v81 = v246;
  *(v8 + 24) = v72;
  *(v8 + 25) = v81;
  *(v8 + 20) = v75;
  *(v8 + 21) = v76;
  *(v8 + 22) = v78;
  *(v8 + 23) = v70;
  v82 = v247;
  v8[69] = v247;
  v8[52] = v82;
  *(v8 + 18) = v80;
  *(v8 + 19) = v73;
  if (sub_1B496F52C((v8 + 36)) == 1)
  {
    sub_1B4BC02C4(v8[134], type metadata accessor for HKActivitySummaryRepresentable);

    v35 = &qword_1EB8A79B8;
    v36 = &qword_1B4D1F320;
    goto LABEL_10;
  }

  sub_1B4C01CC8(0, 0, 0, v27, &v248);

  v83 = v255;
  v84 = v254;
  v85 = v255;
  *(v8 + 99) = v254;
  *(v8 + 101) = v83;
  v86 = v251;
  v87 = v250;
  v88 = v251;
  *(v8 + 91) = v250;
  *(v8 + 93) = v86;
  v89 = v253;
  v91 = v252;
  v90 = v253;
  *(v8 + 95) = v252;
  *(v8 + 97) = v89;
  v92 = v249;
  v94 = v248;
  v93 = v249;
  *(v8 + 87) = v248;
  *(v8 + 89) = v92;
  *(v8 + 41) = v84;
  *(v8 + 42) = v85;
  *(v8 + 37) = v87;
  *(v8 + 38) = v88;
  *(v8 + 39) = v91;
  *(v8 + 40) = v90;
  v95 = v256;
  v8[103] = v256;
  v8[86] = v95;
  *(v8 + 35) = v94;
  *(v8 + 36) = v93;
  v96 = sub_1B496F52C((v8 + 70));
  v97 = v8[134];
  if (v96 == 1)
  {
    sub_1B4BC02C4(v97, type metadata accessor for HKActivitySummaryRepresentable);
    sub_1B4975024((v8 + 53), &qword_1EB8A79B8, &qword_1B4D1F320);
    sub_1B4975024((v8 + 19), &qword_1EB8A79B8, &qword_1B4D1F320);
    goto LABEL_13;
  }

  v98 = v8[133];
  v99 = v8[124];
  v100 = v8[123];
  v101 = v8[122];
  sub_1B4BC025C(v97, v98, type metadata accessor for HKActivitySummaryRepresentable);
  LOBYTE(v257[0]) = 3;
  sub_1B4B05EF8(v98, v257, v101);
  v102 = *(v99 + 48);
  v103 = v102(v101, 1, v100);
  v104 = v8[134];
  if (v103 == 1)
  {
    v105 = v8[122];
    sub_1B4BC02C4(v8[134], type metadata accessor for HKActivitySummaryRepresentable);
    sub_1B4975024((v8 + 53), &qword_1EB8A79B8, &qword_1B4D1F320);
    sub_1B4975024((v8 + 19), &qword_1EB8A79B8, &qword_1B4D1F320);
    sub_1B4975024((v8 + 87), &qword_1EB8A79B8, &qword_1B4D1F320);
    v106 = v105;
LABEL_32:
    sub_1B4975024(v106, &qword_1EB8AA5C0, &unk_1B4D39040);
    goto LABEL_13;
  }

  v107 = v8[133];
  v108 = v8[123];
  v109 = v8[121];
  sub_1B4BBFECC(v8[122], v8[130], type metadata accessor for RingProgressType);
  sub_1B4BC025C(v104, v107, type metadata accessor for HKActivitySummaryRepresentable);
  LOBYTE(v257[0]) = 0;
  sub_1B4B05EF8(v107, v257, v109);
  v110 = v102(v109, 1, v108);
  v111 = v8[134];
  if (v110 == 1)
  {
    v112 = v8[130];
    v113 = v8[121];
    sub_1B4975024((v8 + 53), &qword_1EB8A79B8, &qword_1B4D1F320);
    sub_1B4975024((v8 + 19), &qword_1EB8A79B8, &qword_1B4D1F320);
    sub_1B4975024((v8 + 87), &qword_1EB8A79B8, &qword_1B4D1F320);
    sub_1B4BC02C4(v112, type metadata accessor for RingProgressType);
    sub_1B4BC02C4(v111, type metadata accessor for HKActivitySummaryRepresentable);
    v106 = v113;
    goto LABEL_32;
  }

  v114 = v8[133];
  v115 = v8[123];
  v116 = v8[120];
  sub_1B4BBFECC(v8[121], v8[129], type metadata accessor for RingProgressType);
  sub_1B4BC025C(v111, v114, type metadata accessor for HKActivitySummaryRepresentable);
  LOBYTE(v257[0]) = 1;
  sub_1B4B05EF8(v114, v257, v116);
  v117 = v102(v116, 1, v115);
  v118 = v8[134];
  if (v117 == 1)
  {
    v119 = v8[130];
    v120 = v8[129];
    v121 = v8[120];
    sub_1B4975024((v8 + 53), &qword_1EB8A79B8, &qword_1B4D1F320);
    sub_1B4975024(v34, &qword_1EB8A79B8, &qword_1B4D1F320);
    sub_1B4975024((v8 + 87), &qword_1EB8A79B8, &qword_1B4D1F320);
    sub_1B4BC02C4(v120, type metadata accessor for RingProgressType);
    sub_1B4BC02C4(v119, type metadata accessor for RingProgressType);
    sub_1B4BC02C4(v118, type metadata accessor for HKActivitySummaryRepresentable);
    v106 = v121;
    goto LABEL_32;
  }

  v122 = (v8 + 87);
  v220 = (v8 + 19);
  v225 = (v8 + 53);
  v123 = v8[131];
  sub_1B4BBFECC(v8[120], v8[128], type metadata accessor for RingProgressType);
  v214 = *(v118 + *(v123 + 76));
  v257[0] = *v118;
  if (qword_1EDC3CE40 != -1)
  {
    swift_once();
  }

  v124 = v8[118];
  v125 = sub_1B4D1796C();
  __swift_project_value_buffer(v125, qword_1EDC3CE48);
  CacheIndex.date(for:)(v124);
  v208 = v8[130];
  v211 = v8[134];
  v126 = v8[127];
  v127 = v8;
  v128 = v8[119];
  v129 = v127[118];
  v130 = v127[117];
  v218 = v127;
  v131 = v127[116];
  v132 = sub_1B4D178CC();
  v133 = sub_1B4D1771C();
  v134 = [v132 hk:v133 startOfFitnessWeekBeforeDate:?];

  sub_1B4D1775C();
  v135 = *(v130 + 8);
  v135(v129, v131);
  v136 = sub_1B4D1771C();
  v137 = sub_1B4D178CC();
  v229 = _HKCacheIndexFromDate();

  v135(v128, v131);
  sub_1B4BC025C(v208, v126, type metadata accessor for RingProgressType);
  v138 = sub_1B4A612D4();
  if (v139 & 1) != 0 || (v140 = *&v138, v141 = v218[134], v142 = sub_1B4A61B14(), (v143))
  {
    sub_1B4975024(v122, &qword_1EB8A79B8, &qword_1B4D1F320);
    v144 = 0;
  }

  else
  {
    v193 = *&v142;
    v194 = v218[134];
    v195 = COERCE_DOUBLE(sub_1B4A61EE8());
    v197 = v196;
    sub_1B4975024(v122, &qword_1EB8A79B8, &qword_1B4D1F320);
    v144 = 0;
    if ((v197 & 1) == 0 && v140 >= 1.0 && v193 >= 1.0)
    {
      v144 = v195 >= 1.0;
    }
  }

  v145 = v218[129];
  v146 = v218[127];
  v147 = v218[126];
  v206 = v218[125];
  v209 = v218[128];
  v148 = v218[115];
  v149 = v218[114];
  v150 = v218[113];
  v151 = v218[111];
  v201 = v218[77];
  v203 = v218[134];
  v212 = v218[78];
  v199 = v218[76];
  *v148 = v199;
  sub_1B4BBFECC(v146, v148 + v151[5], type metadata accessor for RingProgressType);
  v152 = v214 & 1;
  *(v148 + v151[6]) = v214 & 1;
  *(v148 + v151[7]) = v144;
  v153 = v145;
  v154 = v147;
  sub_1B4BC025C(v153, v147, type metadata accessor for RingProgressType);
  v155 = COERCE_DOUBLE(sub_1B4A612D4());
  LOBYTE(v148) = v156;
  sub_1B4975024(v220, &qword_1EB8A79B8, &qword_1B4D1F320);
  LOBYTE(v155) = (v155 >= 1.0) & ~v148;
  v157 = v218[8];
  v215 = v218[9];
  v221 = v218[10];
  *v149 = v157;
  sub_1B4BBFECC(v154, v149 + v151[5], type metadata accessor for RingProgressType);
  *(v149 + v151[6]) = v152;
  *(v149 + v151[7]) = LOBYTE(v155);
  sub_1B4BC025C(v209, v206, type metadata accessor for RingProgressType);
  v158 = COERCE_DOUBLE(sub_1B4A61B14());
  LOBYTE(v155) = v159;
  sub_1B4975024(v225, &qword_1EB8A79B8, &qword_1B4D1F320);
  LOBYTE(v155) = (v158 >= 1.0) & ~LOBYTE(v155);
  v160 = v218[42];
  v226 = v218[43];
  v161 = v218[44];
  *v150 = v160;
  sub_1B4BBFECC(v206, v150 + v151[5], type metadata accessor for RingProgressType);
  *(v150 + v151[6]) = v152;
  *(v150 + v151[7]) = LOBYTE(v155);
  if (v212 != v229 || v201 || v199 < 2)
  {
    if (v221 != v229 || v215 || v157 < 2)
    {
      v223 = v218[139];
      v216 = v218[137];
      v181 = v218[134];
      v182 = v218[130];
      v183 = v218[129];
      v184 = v218[128];
      v185 = v218[115];
      v186 = v218[114];
      v187 = v218[113];
      if (v161 != v229 || v226 || v160 < 2)
      {
        sub_1B4BC02C4(v218[113], type metadata accessor for PerfectWeekRingStatusFact);
        sub_1B4BC02C4(v186, type metadata accessor for PerfectWeekRingStatusFact);
        sub_1B4BC02C4(v185, type metadata accessor for PerfectWeekRingStatusFact);
        sub_1B4BC02C4(v184, type metadata accessor for RingProgressType);
        sub_1B4BC02C4(v183, type metadata accessor for RingProgressType);
        sub_1B4BC02C4(v182, type metadata accessor for RingProgressType);
        sub_1B4BC02C4(v181, type metadata accessor for HKActivitySummaryRepresentable);
        sub_1B4975024(v216, &qword_1EB8A6C98, &unk_1B4D2F3F0);
        sub_1B4975024(v223, &qword_1EB8AA5C8, &qword_1B4D39050);
        v228 = MEMORY[0x1E69E7CC0];
        v8 = v218;
      }

      else
      {
        v188 = v218[112];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABE10, &qword_1B4D39068);
        v189 = *(v188 + 72);
        v190 = (*(v188 + 80) + 32) & ~*(v188 + 80);
        v191 = swift_allocObject();
        *(v191 + 16) = xmmword_1B4D1A800;
        v228 = v191;
        sub_1B4BBFECC(v187, v191 + v190, type metadata accessor for PerfectWeekRingStatusFact);
        sub_1B4BC02C4(v186, type metadata accessor for PerfectWeekRingStatusFact);
        v192 = v185;
        v8 = v218;
        sub_1B4BC02C4(v192, type metadata accessor for PerfectWeekRingStatusFact);
        sub_1B4BC02C4(v184, type metadata accessor for RingProgressType);
        sub_1B4BC02C4(v183, type metadata accessor for RingProgressType);
        sub_1B4BC02C4(v182, type metadata accessor for RingProgressType);
        sub_1B4BC02C4(v181, type metadata accessor for HKActivitySummaryRepresentable);
        sub_1B4975024(v216, &qword_1EB8A6C98, &unk_1B4D2F3F0);
        sub_1B4975024(v223, &qword_1EB8AA5C8, &qword_1B4D39050);
      }

      goto LABEL_18;
    }

    v162 = v218;
    v222 = v218[137];
    v227 = v218[139];
    v163 = v218[134];
    v164 = v218[130];
    v165 = v218[129];
    v166 = v218[128];
    v167 = v218[115];
    v168 = v218[114];
    v169 = v218[113];
    v176 = v218[112];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABE10, &qword_1B4D39068);
    v177 = *(v176 + 72);
    v178 = (*(v176 + 80) + 32) & ~*(v176 + 80);
    v179 = swift_allocObject();
    *(v179 + 16) = xmmword_1B4D1A800;
    v228 = v179;
    v174 = v179 + v178;
    v175 = v168;
  }

  else
  {
    v162 = v218;
    v222 = v218[137];
    v227 = v218[139];
    v163 = v218[134];
    v164 = v218[130];
    v165 = v218[129];
    v166 = v218[128];
    v167 = v218[115];
    v168 = v218[114];
    v169 = v218[113];
    v170 = v218[112];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABE10, &qword_1B4D39068);
    v171 = *(v170 + 72);
    v172 = (*(v170 + 80) + 32) & ~*(v170 + 80);
    v173 = swift_allocObject();
    *(v173 + 16) = xmmword_1B4D1A800;
    v228 = v173;
    v174 = v173 + v172;
    v175 = v167;
  }

  sub_1B4BC025C(v175, v174, type metadata accessor for PerfectWeekRingStatusFact);
  sub_1B4BC02C4(v169, type metadata accessor for PerfectWeekRingStatusFact);
  v180 = v168;
  v8 = v162;
  sub_1B4BC02C4(v180, type metadata accessor for PerfectWeekRingStatusFact);
  sub_1B4BC02C4(v167, type metadata accessor for PerfectWeekRingStatusFact);
  sub_1B4BC02C4(v166, type metadata accessor for RingProgressType);
  sub_1B4BC02C4(v165, type metadata accessor for RingProgressType);
  sub_1B4BC02C4(v164, type metadata accessor for RingProgressType);
  sub_1B4BC02C4(v163, type metadata accessor for HKActivitySummaryRepresentable);
  sub_1B4975024(v222, &qword_1EB8A6C98, &unk_1B4D2F3F0);
  sub_1B4975024(v227, &qword_1EB8AA5C8, &qword_1B4D39050);
LABEL_18:
  v44 = v8[139];
  v45 = v8[138];
  v46 = v8[137];
  v47 = v8[136];
  v48 = v8[135];
  v49 = v8[134];
  v50 = v8[133];
  v51 = v8[130];
  v52 = v8[129];
  v53 = v8;
  v54 = v8[128];
  v198 = v53[127];
  v200 = v53[126];
  v202 = v53[125];
  v204 = v53[122];
  v205 = v53[121];
  v207 = v53[120];
  v210 = v53[119];
  v213 = v53[118];
  v217 = v53[115];
  v219 = v53[114];
  v224 = v53[113];

  v55 = v53[1];

  return v55(v228);
}

uint64_t sub_1B4BBFECC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1B4BBFF34(uint64_t a1, unsigned __int8 *a2)
{
  Descriptor = type metadata accessor for FitnessContextQueryDescriptor();
  v5 = *(*(Descriptor - 8) + 64);
  MEMORY[0x1EEE9AC00](Descriptor);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a2;
  v9 = *(type metadata accessor for WorkoutState() + 36);
  v10 = sub_1B4D1777C();
  v11 = *(*(v10 - 8) + 16);
  v25 = v9;
  v26 = a1;
  v11(v7, a1 + v9, v10);
  type metadata accessor for DateRangeDescriptor();
  swift_storeEnumTagMultiPayload();
  v12 = type metadata accessor for RingsPropertiesQuery();
  v13 = &v7[v12[5]];
  v14 = MEMORY[0x1E69E7CC0];
  *v13 = MEMORY[0x1E69E7CC0];
  *(v13 + 1) = v14;
  *(v13 + 2) = v14;
  *&v7[v12[6]] = v14;
  *&v7[v12[7]] = &unk_1F2CB97B8;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABE18, &qword_1B4D39070);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABE20, &qword_1B4D39078);
  v16 = *(*(v15 - 8) + 72);
  v17 = (*(*(v15 - 8) + 80) + 32) & ~*(*(v15 - 8) + 80);
  v18 = swift_allocObject();
  if (v8)
  {
    *(v18 + 16) = xmmword_1B4D1A800;
    v19 = *(v15 + 48);
    *(v18 + v17) = 0;
    sub_1B4BC025C(v7, v18 + v17 + v19, type metadata accessor for FitnessContextQueryDescriptor);
    v20 = sub_1B4C9720C(v18);
    swift_setDeallocating();
    sub_1B4975024(v18 + v17, &qword_1EB8ABE20, &qword_1B4D39078);
  }

  else
  {
    *(v18 + 16) = xmmword_1B4D1AA70;
    v21 = *(v15 + 48);
    *(v18 + v17) = 0;
    sub_1B4BC025C(v7, v18 + v17 + v21, type metadata accessor for FitnessContextQueryDescriptor);
    v22 = (v18 + v17 + v16);
    v23 = *(v15 + 48);
    *v22 = 1;
    v11(&v22[v23], v26 + v25, v10);
    swift_storeEnumTagMultiPayload();
    v20 = sub_1B4C9720C(v18);
    swift_setDeallocating();
    swift_arrayDestroy();
  }

  swift_deallocClassInstance();
  sub_1B4BC02C4(v7, type metadata accessor for FitnessContextQueryDescriptor);
  return v20;
}

uint64_t sub_1B4BC025C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B4BC02C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1B4BC0348()
{
  result = qword_1EB8ABE28;
  if (!qword_1EB8ABE28)
  {
    type metadata accessor for WorkoutVoiceGreatestElevationGainFact();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ABE28);
  }

  return result;
}

unint64_t sub_1B4BC03A4()
{
  result = qword_1EB8ABE30;
  if (!qword_1EB8ABE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ABE30);
  }

  return result;
}

uint64_t sub_1B4BC03FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a1;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6A98, &unk_1B4D1CBE0) - 8) + 64) + 15;
  v4[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4BC049C, 0, 0);
}

uint64_t sub_1B4BC049C()
{
  v1 = v0[5];
  sub_1B49BFE58(v0[3], v1, type metadata accessor for WorkoutState);
  v2 = type metadata accessor for WorkoutState();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  v3 = swift_task_alloc();
  v0[6] = v3;
  *v3 = v0;
  v3[1] = sub_1B4BA4908;
  v5 = v0[4];
  v4 = v0[5];
  v6 = v0[2];

  return sub_1B4BC54B0(v6, v4, v5);
}

unint64_t sub_1B4BC05AC(uint64_t a1)
{
  v2 = type metadata accessor for DateRangeDescriptor();
  v80 = *(v2 - 8);
  v3 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A67A8, &qword_1B4D1E060);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v79 = v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v81 = v70 - v10;
  v11 = type metadata accessor for WorkoutPropertiesQuery();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1B4D1777C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = v70 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for WorkoutState();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20);
  v23 = v70 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B49BFE58(a1, v23, type metadata accessor for WorkoutState);
  v24 = sub_1B4CAC70C(v23);
  v25 = *(v24 + 2);
  v26 = 32;
  while (v25)
  {
    v27 = *&v24[v26];
    v26 += 8;
    --v25;
    if (v27 == 10)
    {
      v75 = v5;

      v28 = *(v20 + 36);
      v77 = v16;
      v29 = *(v16 + 16);
      v70[0] = v29;
      v29(v19, &v23[v28], v15);
      v29(v14, v19, v15);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6B50, &qword_1B4D1D580);
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_1B4D1A800;
      v31 = *&v23[*(v20 + 24)];
      sub_1B49BFEC0(v23, type metadata accessor for WorkoutState);
      v32 = [v31 effectiveTypeIdentifier];

      *(v30 + 32) = v32;
      v33 = *(v11 + 20);
      v34 = v11;
      v35 = v15;
      v36 = v19;
      v37 = v14;
      v38 = &v14[v33];
      v39 = MEMORY[0x1E69E7CC0];
      *v38 = MEMORY[0x1E69E7CC0];
      *(v38 + 1) = v39;
      *(v38 + 2) = v39;
      *(v38 + 3) = v30;
      *(v38 + 4) = v39;
      *(v38 + 5) = v39;
      *(v37 + *(v34 + 24)) = v39;
      v73 = v34;
      *(v37 + *(v34 + 28)) = &unk_1F2CB9880;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8ABE38, &qword_1B4D390F0);
      v40 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EB8ABE40, &qword_1B4D390F8);
      v41 = *(*(v40 - 8) + 72);
      v42 = (*(*(v40 - 8) + 80) + 32) & ~*(*(v40 - 8) + 80);
      v43 = swift_allocObject();
      *(v43 + 16) = xmmword_1B4D1AA70;
      v71 = v43;
      v72 = v40;
      v44 = (v43 + v42);
      v45 = *(v40 + 48);
      *v44 = 0;
      sub_1B49BFE58(v37, &v44[v45], type metadata accessor for WorkoutPropertiesQuery);
      v70[1] = type metadata accessor for FitnessContextQueryDescriptor();
      swift_storeEnumTagMultiPayload();
      v46 = &v44[v41];
      *v46 = 1;
      v47 = v81;
      v74 = v36;
      v78 = v35;
      (v70[0])(v81, v36, v35);
      swift_storeEnumTagMultiPayload();
      v48 = v80;
      (*(v80 + 56))(v47, 0, 1, v2);
      v49 = v47;
      v50 = v79;
      sub_1B49BFDE8(v49, v79);
      v51 = *(v48 + 48);
      v52 = v51(v50, 1, v2);
      v76 = v37;
      if (v52 == 1)
      {
        v53 = v75;
        sub_1B49BFE58(v37, v75, type metadata accessor for DateRangeDescriptor);
        if (v51(v50, 1, v2) != 1)
        {
          sub_1B4975024(v50, &qword_1EB8A67A8, &qword_1B4D1E060);
        }
      }

      else
      {
        v53 = v75;
        sub_1B4993450(v50, v75);
      }

      v60 = &v46[*(v72 + 48)];
      v62 = *v38;
      v61 = *(v38 + 1);
      v63 = *(v38 + 2);
      v64 = *(v38 + 3);
      v65 = *(v38 + 4);
      v66 = *(v38 + 5);
      sub_1B49BFE58(v53, v60, type metadata accessor for DateRangeDescriptor);

      sub_1B49BFEC0(v53, type metadata accessor for DateRangeDescriptor);
      v67 = v73;
      v68 = (v60 + *(v73 + 20));
      *v68 = v62;
      v68[1] = v61;
      v68[2] = v63;
      v68[3] = v64;
      v68[4] = v65;
      v68[5] = v66;
      *(v60 + *(v67 + 24)) = MEMORY[0x1E69E7CC0];
      *(v60 + *(v67 + 28)) = &unk_1F2CB9880;
      sub_1B4975024(v81, &qword_1EB8A67A8, &qword_1B4D1E060);
      swift_storeEnumTagMultiPayload();
      v69 = sub_1B4C982A0(v71);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      sub_1B49BFEC0(v76, type metadata accessor for WorkoutPropertiesQuery);
      (*(v77 + 8))(v74, v78);
      return v69;
    }
  }

  sub_1B49BFEC0(v23, type metadata accessor for WorkoutState);
  if (qword_1EDC36EF8 != -1)
  {
    swift_once();
  }

  v54 = sub_1B4D17F6C();
  __swift_project_value_buffer(v54, qword_1EDC36F00);
  v55 = sub_1B4D17F5C();
  v56 = sub_1B4D1873C();
  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v82 = v58;
    *v57 = 136315138;
    *(v57 + 4) = sub_1B49558AC(0xD000000000000025, 0x80000001B4D62B40, &v82);
    _os_log_impl(&dword_1B4953000, v55, v56, "%s does not support this workout state", v57, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v58);
    MEMORY[0x1B8C7DDA0](v58, -1, -1);
    MEMORY[0x1B8C7DDA0](v57, -1, -1);
  }

  return sub_1B4C982A0(MEMORY[0x1E69E7CC0]);
}

uint64_t static FitnessPlusStatisticsPropertyGenerator.from(_:for:)@<X0>(void *a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v23 = a3;
  v5 = sub_1B4D1746C();
  v6 = sub_1B4D1880C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v23 - v10;
  v12 = *(v5 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v9);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v23 - v17;
  v24 = *a2;
  sub_1B4BC1064(a1, &v24, v11);
  if ((*(v12 + 48))(v11, 1, v5) == 1)
  {
    (*(v7 + 8))(v11, v6);
    v19 = 1;
    v20 = v23;
  }

  else
  {
    (*(v12 + 32))(v18, v11, v5);
    (*(v12 + 16))(v16, v18, v5);
    v20 = v23;
    StatisticsPropertyValue.init(measurement:)(v16, v23);
    (*(v12 + 8))(v18, v5);
    v19 = 0;
  }

  v21 = type metadata accessor for StatisticsPropertyValue();
  return (*(*(v21 - 8) + 56))(v20, v19, 1, v21);
}

uint64_t sub_1B4BC1064@<X0>(void *a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CA8, &unk_1B4D1C2B0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v35 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CC8, &unk_1B4D464B0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v35 - v14;
  v16 = *a2;
  if (v16 == 2)
  {
    v28 = a1[3];
    v29 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v28);
    (*(v29 + 64))(v28, v29);
    v30 = sub_1B4D1746C();
LABEL_14:
    if (swift_dynamicCast())
    {
      v33 = a3;
      v34 = 0;
    }

    else
    {
      v33 = a3;
      v34 = 1;
    }

    return (*(*(v30 - 8) + 56))(v33, v34, 1, v30);
  }

  if (v16 == 1)
  {
    v23 = a1[3];
    v24 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v23);
    (*(v24 + 72))(v23, v24);
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
    if ((*(*(v25 - 8) + 48))(v11, 1, v25) == 1)
    {
      v20 = &qword_1EB8A6CA8;
      v21 = &unk_1B4D1C2B0;
      v22 = v11;
      goto LABEL_8;
    }

    goto LABEL_13;
  }

  if (!*a2)
  {
    v17 = a1[3];
    v18 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v17);
    (*(v18 + 80))(v17, v18);
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CD0, &unk_1B4D1F270);
    if ((*(*(v19 - 8) + 48))(v15, 1, v19) == 1)
    {
      v20 = &qword_1EB8A6CC8;
      v21 = &unk_1B4D464B0;
      v22 = v15;
LABEL_8:
      sub_1B4975024(v22, v20, v21);
      v26 = sub_1B4D1746C();
      return (*(*(v26 - 8) + 56))(a3, 1, 1, v26);
    }

LABEL_13:
    v30 = sub_1B4D1746C();
    goto LABEL_14;
  }

  v31 = sub_1B4D1746C();
  v32 = *(*(v31 - 8) + 56);

  return v32(a3, 1, 1, v31);
}

uint64_t sub_1B4BC147C(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t MaxPropertyValue.init(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B4D1746C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v13 - v6;
  v8 = *a1;
  v9 = [swift_getObjCClassFromMetadata() baseUnit];
  sub_1B4D1741C();
  v10 = a1[1];
  v11 = a1[2];

  MaxPropertyValue.init(value:identifier:)(v7, v10, v11, a2);
  return sub_1B4BC15BC(a1);
}

uint64_t sub_1B4BC15BC(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Fitness_Intelligence_MaxPropertyValue(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t MaxPropertyValue.protobuf()(uint64_t a1)
{
  type metadata accessor for Apple_Fitness_Intelligence_MaxPropertyValue(0);
  v3 = *(a1 + 16);
  sub_1B4BC17C8(&qword_1EB8A6DE0);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4BC16BC(void *a1, uint64_t a2)
{
  v3 = (a2 + *(type metadata accessor for MaxPropertyValue() + 28));
  v5 = *v3;
  v4 = v3[1];
  v6 = a1[2];

  a1[1] = v5;
  a1[2] = v4;
  sub_1B4D1746C();
  result = sub_1B4D1742C();
  *a1 = v8;
  return result;
}

uint64_t sub_1B4BC17C8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Apple_Fitness_Intelligence_MaxPropertyValue(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t FitnessPlusTrainerIdentifiers.init(_:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;

  result = sub_1B4BC188C(a1);
  *a2 = v4;
  return result;
}

uint64_t sub_1B4BC188C(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusTrainerIdentifiers(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t FitnessPlusTrainerIdentifiers.protobuf()()
{
  v1 = *v0;
  type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusTrainerIdentifiers(0);
  sub_1B4BC1A48(&qword_1EB8A9560);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4BC197C(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;

  *a1 = a2;
  return result;
}

uint64_t sub_1B4BC1A48(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusTrainerIdentifiers(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B4BC1A8C()
{
  v1 = *v0;
  type metadata accessor for Apple_Fitness_Intelligence_FitnessPlusTrainerIdentifiers(0);
  sub_1B4BC1A48(&qword_1EB8A9560);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4BC1B20@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;

  result = sub_1B4BC188C(a1);
  *a2 = v4;
  return result;
}

uint64_t sub_1B4BC1B6C(uint64_t *a1)
{
  v3 = *(v1 + 16);
  v4 = *a1;

  *a1 = v3;
  return result;
}

double QueryMetrics.init(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  sub_1B4BC1C24(a1);
  result = v3 + v4;
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v3 + v4;
  return result;
}

uint64_t sub_1B4BC1C24(uint64_t a1)
{
  Metrics = type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics(0);
  (*(*(Metrics - 8) + 8))(a1, Metrics);
  return a1;
}

uint64_t QueryMetrics.protobuf()()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = v0[3];
  type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics(0);
  sub_1B4BC1F38(&qword_1EB8A6750);
  return sub_1B4D17DAC();
}

uint64_t sub_1B4BC1D34(uint64_t result, char a2, double a3, double a4)
{
  *result = a3;
  *(result + 8) = a4;
  *(result + 16) = a2;
  return result;
}

__n128 sub_1B4BC1D40(__n128 *a1)
{
  v2 = v1[2].n128_u8[0];
  result = v1[1];
  *a1 = result;
  a1[1].n128_u8[0] = v2;
  return result;
}

uint64_t sub_1B4BC1D54(uint64_t a1)
{
  Metrics = type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics(0);
  v5 = *(*(Metrics - 8) + 64);
  MEMORY[0x1EEE9AC00](Metrics);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v6) = *(v1 + 16);
  v8 = *(v1 + 3);
  v11 = *v1;
  v12 = v6;
  v13 = v8;
  v9 = sub_1B4BC2084();
  (*(v9 + 32))(a1, v9);
  if (!v2)
  {
    sub_1B4BC1F38(&qword_1EB8A6750);
    Metrics = sub_1B4D17D6C();
    sub_1B4BC1C24(v7);
  }

  return Metrics;
}

double sub_1B4BC1E84@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1B4B25488(a1, a2, &v7);
  if (!v3)
  {
    v6 = v8;
    result = v9;
    *a3 = v7;
    *(a3 + 16) = v6;
    *(a3 + 24) = result;
  }

  return result;
}

uint64_t sub_1B4BC1F38(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B4BC1F7C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = v0[3];
  type metadata accessor for Apple_Fitness_Intelligence_QueryMetrics(0);
  sub_1B4BC1F38(&qword_1EB8A6750);
  return sub_1B4D17DAC();
}

double sub_1B4BC2030@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  sub_1B4BC1C24(a1);
  result = v3 + v4;
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v3 + v4;
  return result;
}

unint64_t sub_1B4BC2084()
{
  result = qword_1EB8ABEC8;
  if (!qword_1EB8ABEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ABEC8);
  }

  return result;
}

FitnessIntelligence::FitnessPlusPropertyKind_optional __swiftcall FitnessPlusPropertyKind.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B4D18B1C();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t FitnessPlusPropertyKind.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6B726F5774736562;
  v3 = 0x547942746E756F63;
  if (v1 != 4)
  {
    v3 = 0x756F436C61746F74;
  }

  if (v1 != 3)
  {
    v2 = v3;
  }

  v4 = 0xD00000000000001ALL;
  if (*v0)
  {
    v4 = 0xD000000000000012;
  }

  if (*v0 <= 2u)
  {
    return v4;
  }

  else
  {
    return v2;
  }
}

FitnessIntelligence::FitnessPlusMetricProperty_optional __swiftcall FitnessPlusMetricProperty.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B4D18B1C();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t FitnessPlusMetricProperty.rawValue.getter()
{
  v1 = 0x736569726F6C6163;
  if (*v0 != 1)
  {
    v1 = 0x6E6F697461727564;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000010;
  }
}

void sub_1B4BC2304(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x736569726F6C6163;
  if (v2 != 1)
  {
    v4 = 0x6E6F697461727564;
    v3 = 0xE800000000000000;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xD000000000000010;
  }

  if (v5)
  {
    v3 = 0x80000001B4D4C140;
  }

  *a1 = v6;
  a1[1] = v3;
}

uint64_t sub_1B4BC2368(_BYTE *a1, _BYTE *a2)
{
  v2 = 0x736569726F6C6163;
  v3 = *a1;
  v4 = 0x6E6F697461727564;
  if (v3 == 1)
  {
    v4 = 0x736569726F6C6163;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0xD000000000000010;
  }

  if (v3)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0x80000001B4D4C140;
  }

  if (*a2 != 1)
  {
    v2 = 0x6E6F697461727564;
  }

  if (*a2)
  {
    v7 = v2;
  }

  else
  {
    v7 = 0xD000000000000010;
  }

  if (*a2)
  {
    v8 = 0xE800000000000000;
  }

  else
  {
    v8 = 0x80000001B4D4C140;
  }

  if (v5 == v7 && v6 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1B4D18DCC();
  }

  return v9 & 1;
}

uint64_t sub_1B4BC2464()
{
  v1 = *v0;
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

uint64_t sub_1B4BC250C()
{
  *v0;
  *v0;
  sub_1B4D1820C();
}

uint64_t sub_1B4BC25A0()
{
  v1 = *v0;
  sub_1B4D18E8C();
  sub_1B4D1820C();

  return sub_1B4D18EDC();
}

unint64_t sub_1B4BC2664()
{
  result = qword_1EB8ABED0;
  if (!qword_1EB8ABED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ABED0);
  }

  return result;
}

unint64_t sub_1B4BC26F8()
{
  result = qword_1EB8ABEE8;
  if (!qword_1EB8ABEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ABEE8);
  }

  return result;
}

uint64_t sub_1B4BC2754()
{
  *v0;
  *v0;
  *v0;
  sub_1B4D1820C();
}

void sub_1B4BC2880(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB0000000074756FLL;
  v4 = 0x6B726F5774736562;
  v5 = 0xEE0072656E696172;
  v6 = 0x547942746E756F63;
  if (v2 != 4)
  {
    v6 = 0x756F436C61746F74;
    v5 = 0xEA0000000000746ELL;
  }

  if (v2 != 3)
  {
    v4 = v6;
    v3 = v5;
  }

  v7 = 0x80000001B4D48B40;
  v8 = 0xD00000000000001ALL;
  v9 = 0x80000001B4D48B80;
  if (v2 != 1)
  {
    v9 = 0x80000001B4D48BA0;
  }

  if (*v1)
  {
    v8 = 0xD000000000000012;
    v7 = v9;
  }

  if (*v1 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v4;
  }

  if (*v1 <= 2u)
  {
    v3 = v7;
  }

  *a1 = v10;
  a1[1] = v3;
}

unint64_t sub_1B4BC2968(void *a1)
{
  a1[1] = sub_1B4BC29A0();
  a1[2] = sub_1B4BC29F4();
  result = sub_1B4BC2A48();
  a1[3] = result;
  return result;
}

unint64_t sub_1B4BC29A0()
{
  result = qword_1EB8ABEF0;
  if (!qword_1EB8ABEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ABEF0);
  }

  return result;
}

unint64_t sub_1B4BC29F4()
{
  result = qword_1EB8ABEF8;
  if (!qword_1EB8ABEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ABEF8);
  }

  return result;
}

unint64_t sub_1B4BC2A48()
{
  result = qword_1EB8ABF00;
  if (!qword_1EB8ABF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8ABF00);
  }

  return result;
}

uint64_t sub_1B4BC2B00()
{
  *(&v22 + 1) = &type metadata for FitnessIntelligenceFeatures;
  v23 = sub_1B4BC2EE4();
  v0 = 1;
  LOBYTE(v21) = 1;
  v1 = sub_1B4D179FC();
  __swift_destroy_boxed_opaque_existential_1Tm(&v21);
  if (v1)
  {
    return v0;
  }

  if (qword_1EB8A6488 != -1)
  {
    swift_once();
  }

  if (byte_1EB8AC690 != 1)
  {
    return 0;
  }

  v2 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v3 = sub_1B4D1817C();
  v4 = [v2 initWithSuiteName_];

  if (!v4)
  {
    if (qword_1EDC3CEC8 != -1)
    {
      swift_once();
    }

    v8 = sub_1B4D17F6C();
    __swift_project_value_buffer(v8, qword_1EDC3CED0);
    v9 = sub_1B4D17F5C();
    v10 = sub_1B4D1871C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1B4953000, v9, v10, "Failed to create notification settings user defaults", v11, 2u);
      MEMORY[0x1B8C7DDA0](v11, -1, -1);
    }

    return 0;
  }

  v5 = sub_1B4D1817C();
  v6 = [v4 objectForKey_];

  if (v6)
  {
    sub_1B4D188AC();
    swift_unknownObjectRelease();
    sub_1B4BC2F38(&v21);
    v7 = sub_1B4D1817C();
    v0 = [v4 BOOLForKey_];
  }

  else
  {
    v21 = 0u;
    v22 = 0u;
    sub_1B4BC2F38(&v21);
    *&v21 = 0;
    MEMORY[0x1B8C7DDC0](&v21, 8);
    v13 = v21;
    v0 = (v21 & 0x20000) == 0;
    v14 = sub_1B4D1817C();
    [v4 setBool:v0 forKey:v14];

    if (qword_1EDC3CEC8 != -1)
    {
      swift_once();
    }

    v15 = sub_1B4D17F6C();
    __swift_project_value_buffer(v15, qword_1EDC3CED0);
    v16 = sub_1B4D17F5C();
    v17 = sub_1B4D1873C();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = (*&v13 & 0x20000) == 0;
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *&v21 = v20;
      *v19 = 136315394;
      *(v19 + 4) = sub_1B49558AC(0xD000000000000013, 0x80000001B4D62B70, &v21);
      *(v19 + 12) = 1024;
      *(v19 + 14) = v18;
      _os_log_impl(&dword_1B4953000, v16, v17, "No existing value for %s. Randomly set to %{BOOL}d and saved.", v19, 0x12u);
      __swift_destroy_boxed_opaque_existential_1Tm(v20);
      MEMORY[0x1B8C7DDA0](v20, -1, -1);
      MEMORY[0x1B8C7DDA0](v19, -1, -1);
    }
  }

  return v0;
}