uint64_t sub_225AA8D68@<X0>(_BYTE *a1@<X8>)
{
  result = sub_225AAF3FC();
  *a1 = result;
  return result;
}

uint64_t sub_225AA8D90(uint64_t a1)
{
  v2 = sub_225AA9BB4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225AA8DCC(uint64_t a1)
{
  v2 = sub_225AA9BB4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_225AA8E1C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_225AAF448();
  *a1 = result;
  return result;
}

uint64_t sub_225AA8E4C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_225AAF448();
  *a1 = result;
  return result;
}

uint64_t sub_225AA8E74(uint64_t a1)
{
  v2 = sub_225AA9A7C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225AA8EB0(uint64_t a1)
{
  v2 = sub_225AA9A7C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ISO18013MobileSecurityObject.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73C278);
  v5 = *(v4 - 8);
  v56 = v4;
  v57 = v5;
  MEMORY[0x28223BE20](v4, v6);
  v58 = &v47 - v7;
  v50 = type metadata accessor for ISO18013MobileSecurityObject.ValidityInfo(0);
  v9 = MEMORY[0x28223BE20](v50, v8);
  v49 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v11);
  v48 = &v47 - v12;
  v52 = type metadata accessor for ISO18013MobileSecurityObject.DeviceKeyInfo(0);
  v14 = MEMORY[0x28223BE20](v52, v13);
  v51 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v47 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73C280);
  v55 = *(v19 - 8);
  MEMORY[0x28223BE20](v19, v20);
  v22 = &v47 - v21;
  v53 = type metadata accessor for ISO18013MobileSecurityObject(0);
  MEMORY[0x28223BE20](v53, v23);
  v54 = (&v47 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  Decoder.codingKeyFormat.getter(&v63);
  v25 = v63;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if ((v25 & 1) == 0)
  {
    sub_225AA9BB4();
    sub_225CCFCA4();
    if (!v2)
    {
      v62 = 0;
      sub_225A94CA8();
      v28 = v19;
      sub_225CCF6E4();
      v27 = v54;
      *v54 = v59;
      LOBYTE(v59) = 1;
      v27[2] = sub_225CCF684();
      v27[3] = v31;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73C290);
      v62 = 2;
      sub_225AAA348(&qword_27D73C298, sub_225AA9B30);
      sub_225CCF6E4();
      v27[4] = v59;
      LOBYTE(v59) = 3;
      sub_225AA9B6C(&qword_27D73C2B0, type metadata accessor for ISO18013MobileSecurityObject.DeviceKeyInfo);
      sub_225CCF6E4();
      v35 = v53;
      sub_225AA8630(v18, v27 + *(v53 + 28), type metadata accessor for ISO18013MobileSecurityObject.DeviceKeyInfo);
      LOBYTE(v59) = 4;
      v36 = sub_225CCF684();
      v40 = (v27 + v35[8]);
      *v40 = v36;
      v40[1] = v41;
      LOBYTE(v59) = 5;
      sub_225AA9B6C(&qword_27D73C2B8, type metadata accessor for ISO18013MobileSecurityObject.ValidityInfo);
      v42 = v48;
      sub_225CCF6E4();
      sub_225AA8630(v42, v27 + v35[9], type metadata accessor for ISO18013MobileSecurityObject.ValidityInfo);
      *(v27 + v35[10]) = 1;
      v62 = 6;
      sub_225AA9C08();
      sub_225CCF674();
      (*(v55 + 8))(v22, v28);
      v45 = (v27 + v35[11]);
      v46 = v60;
      *v45 = v59;
      v45[1] = v46;
      v45[2] = v61;
      goto LABEL_7;
    }

    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  sub_225AA9A7C();
  sub_225CCFCA4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v62 = 0;
  sub_225A94CA8();
  v26 = v56;
  sub_225CCF6E4();
  v27 = v54;
  *v54 = v59;
  LOBYTE(v59) = 1;
  v27[2] = sub_225CCF684();
  v27[3] = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73C290);
  v62 = 2;
  sub_225AAA348(&qword_27D73C298, sub_225AA9B30);
  sub_225CCF6E4();
  v27[4] = v59;
  LOBYTE(v59) = 3;
  sub_225AA9B6C(&qword_27D73C2B0, type metadata accessor for ISO18013MobileSecurityObject.DeviceKeyInfo);
  v32 = v51;
  sub_225CCF6E4();
  v33 = v53;
  sub_225AA8630(v32, v27 + *(v53 + 28), type metadata accessor for ISO18013MobileSecurityObject.DeviceKeyInfo);
  LOBYTE(v59) = 4;
  v34 = sub_225CCF684();
  v37 = (v27 + v33[8]);
  *v37 = v34;
  v37[1] = v38;
  LOBYTE(v59) = 5;
  sub_225AA9B6C(&qword_27D73C2B8, type metadata accessor for ISO18013MobileSecurityObject.ValidityInfo);
  v39 = v49;
  sub_225CCF6E4();
  sub_225AA8630(v39, v27 + v33[9], type metadata accessor for ISO18013MobileSecurityObject.ValidityInfo);
  LOBYTE(v59) = 6;
  v43 = sub_225CCF694();
  (*(v57 + 8))(v58, v26);
  *(v27 + v33[10]) = v43 & 1;
  v44 = v27 + v33[11];
  *v44 = 0u;
  *(v44 + 1) = 0u;
  *(v44 + 4) = 0;
  *(v44 + 5) = 1;
LABEL_7:
  sub_225AA8890(v27, v47, type metadata accessor for ISO18013MobileSecurityObject);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_225AA9AD0(v27, type metadata accessor for ISO18013MobileSecurityObject);
}

unint64_t sub_225AA9A7C()
{
  result = qword_27D73C288;
  if (!qword_27D73C288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C288);
  }

  return result;
}

uint64_t sub_225AA9AD0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_225AA9B6C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_225AA9BB4()
{
  result = qword_27D73C2C0;
  if (!qword_27D73C2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C2C0);
  }

  return result;
}

unint64_t sub_225AA9C08()
{
  result = qword_27D73C2C8;
  if (!qword_27D73C2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C2C8);
  }

  return result;
}

uint64_t ISO18013MobileSecurityObject.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73C2D0);
  v4 = *(v3 - 8);
  v24 = v3;
  v25 = v4;
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v24 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73C2D8);
  v26 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v24 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  Encoder.codingKeyFormat.getter(&v34);
  v12 = v34;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (v12)
  {
    sub_225AA9A7C();
    sub_225CCFCE4();
    v28 = *v1;
    v33 = 0;
    sub_225A945D8();
    v13 = v24;
    v14 = v27;
    sub_225CCF7E4();
    if (!v14)
    {
      LOBYTE(v28) = 1;
      sub_225CCF784();
      *&v28 = *(v1 + 4);
      v33 = 2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73C290);
      sub_225AAA348(&qword_27D73C2E0, sub_225AAA3CC);
      sub_225CCF7E4();
      type metadata accessor for ISO18013MobileSecurityObject(0);
      LOBYTE(v28) = 3;
      type metadata accessor for ISO18013MobileSecurityObject.DeviceKeyInfo(0);
      sub_225AA9B6C(&qword_27D73C2F0, type metadata accessor for ISO18013MobileSecurityObject.DeviceKeyInfo);
      sub_225CCF7E4();
      LOBYTE(v28) = 4;
      sub_225CCF784();
      LOBYTE(v28) = 5;
      type metadata accessor for ISO18013MobileSecurityObject.ValidityInfo(0);
      sub_225AA9B6C(&qword_27D73C2F8, type metadata accessor for ISO18013MobileSecurityObject.ValidityInfo);
      sub_225CCF7E4();
      LOBYTE(v28) = 6;
      sub_225CCF794();
    }

    return (*(v25 + 8))(v7, v13);
  }

  else
  {
    sub_225AA9BB4();
    sub_225CCFCE4();
    v28 = *v1;
    v33 = 0;
    sub_225A945D8();
    v16 = v27;
    sub_225CCF7E4();
    if (!v16)
    {
      LOBYTE(v28) = 1;
      sub_225CCF784();
      *&v28 = *(v1 + 4);
      v33 = 2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73C290);
      sub_225AAA348(&qword_27D73C2E0, sub_225AAA3CC);
      sub_225CCF7E4();
      v17 = type metadata accessor for ISO18013MobileSecurityObject(0);
      LOBYTE(v28) = 3;
      type metadata accessor for ISO18013MobileSecurityObject.DeviceKeyInfo(0);
      sub_225AA9B6C(&qword_27D73C2F0, type metadata accessor for ISO18013MobileSecurityObject.DeviceKeyInfo);
      sub_225CCF7E4();
      LOBYTE(v28) = 4;
      sub_225CCF784();
      LOBYTE(v28) = 5;
      type metadata accessor for ISO18013MobileSecurityObject.ValidityInfo(0);
      sub_225AA9B6C(&qword_27D73C2F8, type metadata accessor for ISO18013MobileSecurityObject.ValidityInfo);
      sub_225CCF7E4();
      v18 = (v1 + *(v17 + 44));
      v19 = v18[1];
      v20 = v18[2];
      v21 = v18[3];
      v22 = v18[4];
      v23 = v18[5];
      *&v28 = *v18;
      *(&v28 + 1) = v19;
      v29 = v20;
      v30 = v21;
      v31 = v22;
      v32 = v23;
      v33 = 6;
      sub_225AA8974(v28, v19, v20, v21, v22, v23);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73C300);
      sub_225AAA48C();
      sub_225CCF7E4();
      sub_225AAA564(v28, *(&v28 + 1), v29, v30, v31, v32);
    }

    return (*(v26 + 8))(v11, v8);
  }
}

uint64_t sub_225AAA348(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D73C290);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_225AAA408(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D73C2A8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_225AAA48C()
{
  result = qword_27D73C308;
  if (!qword_27D73C308)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D73C300);
    sub_225AAA510();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C308);
  }

  return result;
}

unint64_t sub_225AAA510()
{
  result = qword_27D73C310;
  if (!qword_27D73C310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C310);
  }

  return result;
}

uint64_t sub_225AAA564(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a6 != 1)
  {
    return sub_225AAA574(result, a2, a3, a4, a5, a6);
  }

  return result;
}

uint64_t sub_225AAA574(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a6)
  {
    sub_2259BEF00(result, a2);
    sub_2259B97A8(a3, a4);
  }

  return result;
}

uint64_t ISO18013MobileSecurityObject.DeviceKeyInfo.keyAuthorizations.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ISO18013MobileSecurityObject.DeviceKeyInfo(0) + 20));
  v4 = *v3;
  v5 = v3[1];
  *a1 = *v3;
  a1[1] = v5;

  return sub_225A90C50(v4);
}

uint64_t ISO18013MobileSecurityObject.DeviceKeyInfo.keyInfo.getter()
{
  type metadata accessor for ISO18013MobileSecurityObject.DeviceKeyInfo(0);
}

uint64_t sub_225AAA694(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xD000000000000011;
  v4 = 0x8000000225D0B610;
  v5 = 0xE700000000000000;
  if (v2 == 1)
  {
    v5 = 0x8000000225D0B610;
  }

  else
  {
    v3 = 0x6F666E4979656BLL;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x654B656369766564;
  }

  if (v2)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xE900000000000079;
  }

  v8 = 0xD000000000000011;
  if (*a2 != 1)
  {
    v8 = 0x6F666E4979656BLL;
    v4 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x654B656369766564;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xE900000000000079;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_225CCF934();
  }

  return v11 & 1;
}

uint64_t sub_225AAA790()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

uint64_t sub_225AAA83C()
{
  sub_225CCE5B4();
}

uint64_t sub_225AAA8D4()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

uint64_t sub_225AAA97C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_225AAF494();
  *a1 = result;
  return result;
}

void sub_225AAA9AC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000079;
  v4 = 0x8000000225D0B610;
  v5 = 0xD000000000000011;
  if (v2 != 1)
  {
    v5 = 0x6F666E4979656BLL;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x654B656369766564;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_225AAAA14()
{
  v1 = 0xD000000000000011;
  if (*v0 != 1)
  {
    v1 = 0x6F666E4979656BLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x654B656369766564;
  }
}

uint64_t sub_225AAAA78@<X0>(_BYTE *a1@<X8>)
{
  result = sub_225AAF494();
  *a1 = result;
  return result;
}

uint64_t sub_225AAAAA0(uint64_t a1)
{
  v2 = sub_225AAB260();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225AAAADC(uint64_t a1)
{
  v2 = sub_225AAB260();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_225AAAB64@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_225CCF5D4();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_225AAABBC(uint64_t a1)
{
  v2 = sub_225AAB20C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225AAABF8(uint64_t a1)
{
  v2 = sub_225AAB20C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ISO18013MobileSecurityObject.DeviceKeyInfo.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73C318);
  v34 = *(v3 - 8);
  v35 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v30 - v5;
  v38 = sub_225CCD494();
  v32 = *(v38 - 8);
  v8 = MEMORY[0x28223BE20](v38, v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v30 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73C320);
  v36 = *(v14 - 8);
  v37 = v14;
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v30 - v16;
  v33 = type metadata accessor for ISO18013MobileSecurityObject.DeviceKeyInfo(0);
  MEMORY[0x28223BE20](v33, v18);
  v31 = &v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  Decoder.codingKeyFormat.getter(&v42);
  v20 = v42;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (v20)
  {
    sub_225AAB20C();
    v21 = v39;
    sub_225CCFCA4();
    if (!v21)
    {
      sub_225AA9B6C(&qword_27D73BBD8, MEMORY[0x277CF39A8]);
      v22 = v38;
      v23 = v35;
      sub_225CCF6E4();
      (*(v34 + 8))(v6, v23);
      v24 = v31;
      (*(v32 + 32))(v31, v10, v22);
      v25 = v33;
      *(v24 + *(v33 + 20)) = xmmword_225CD7890;
      *(v24 + *(v25 + 24)) = 0;
LABEL_4:
      sub_225AA8890(v24, v30, type metadata accessor for ISO18013MobileSecurityObject.DeviceKeyInfo);
      __swift_destroy_boxed_opaque_existential_0(a1);
      return sub_225AA9AD0(v24, type metadata accessor for ISO18013MobileSecurityObject.DeviceKeyInfo);
    }
  }

  else
  {
    sub_225AAB260();
    v27 = v39;
    sub_225CCFCA4();
    if (!v27)
    {
      LOBYTE(v40) = 0;
      sub_225AA9B6C(&qword_27D73BBD8, MEMORY[0x277CF39A8]);
      v28 = v37;
      v29 = v38;
      sub_225CCF6E4();
      v24 = v31;
      (*(v32 + 32))(v31, v13, v29);
      v41 = 1;
      sub_225AAB2B4();
      sub_225CCF674();
      *(v24 + *(v33 + 20)) = v40;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73C340);
      v41 = 2;
      sub_225AAB34C();
      sub_225CCF674();
      (*(v36 + 8))(v17, v28);
      *(v24 + *(v33 + 24)) = v40;
      goto LABEL_4;
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_225AAB20C()
{
  result = qword_27D73C328;
  if (!qword_27D73C328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C328);
  }

  return result;
}

unint64_t sub_225AAB260()
{
  result = qword_27D73C330;
  if (!qword_27D73C330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C330);
  }

  return result;
}

unint64_t sub_225AAB2B4()
{
  result = qword_27D73C338;
  if (!qword_27D73C338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C338);
  }

  return result;
}

uint64_t sub_225AAB308(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

unint64_t sub_225AAB34C()
{
  result = qword_27D73C348;
  if (!qword_27D73C348)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D73C340);
    sub_225AA9B6C(&qword_27D73C0D0, type metadata accessor for AnyCodable);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C348);
  }

  return result;
}

uint64_t ISO18013MobileSecurityObject.DeviceKeyInfo.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73C350);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v19 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73C358);
  v19 = *(v7 - 8);
  v20 = v7;
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v19 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  Encoder.codingKeyFormat.getter(&v26);
  v11 = v26;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (v11)
  {
    sub_225AAB20C();
    sub_225CCFCE4();
    sub_225CCD494();
    sub_225AA9B6C(&qword_27D73BBB8, MEMORY[0x277CF39A8]);
    sub_225CCF7E4();
    return (*(v3 + 8))(v6, v2);
  }

  else
  {
    sub_225AAB260();
    sub_225CCFCE4();
    LOBYTE(v23) = 0;
    sub_225CCD494();
    sub_225AA9B6C(&qword_27D73BBB8, MEMORY[0x277CF39A8]);
    v13 = v21;
    v14 = v22;
    v15 = v20;
    sub_225CCF7E4();
    if (!v13)
    {
      v16 = type metadata accessor for ISO18013MobileSecurityObject.DeviceKeyInfo(0);
      v17 = (v14 + *(v16 + 20));
      v18 = v17[1];
      v23 = *v17;
      v24 = v18;
      v25 = 1;
      sub_225A90C50(v23);
      sub_225AAB798();
      sub_225CCF774();
      sub_225AAB308(v23);
      v23 = *(v14 + *(v16 + 24));
      v25 = 2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73C340);
      sub_225AAB7EC();
      sub_225CCF774();
    }

    return (*(v19 + 8))(v10, v15);
  }
}

unint64_t sub_225AAB798()
{
  result = qword_27D73C360;
  if (!qword_27D73C360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C360);
  }

  return result;
}

unint64_t sub_225AAB7EC()
{
  result = qword_27D73C368;
  if (!qword_27D73C368)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D73C340);
    sub_225AA9B6C(&qword_27D73C0E8, type metadata accessor for AnyCodable);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C368);
  }

  return result;
}

uint64_t sub_225AAB8E8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6D656C4561746164;
  }

  else
  {
    v3 = 0x63617053656D616ELL;
  }

  if (v2)
  {
    v4 = 0xEA00000000007365;
  }

  else
  {
    v4 = 0xEC00000073746E65;
  }

  if (*a2)
  {
    v5 = 0x6D656C4561746164;
  }

  else
  {
    v5 = 0x63617053656D616ELL;
  }

  if (*a2)
  {
    v6 = 0xEC00000073746E65;
  }

  else
  {
    v6 = 0xEA00000000007365;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_225CCF934();
  }

  return v8 & 1;
}

uint64_t sub_225AAB99C()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

uint64_t sub_225AABA2C()
{
  sub_225CCE5B4();
}

uint64_t sub_225AABAA8()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

uint64_t sub_225AABB34@<X0>(char *a1@<X8>)
{
  v2 = sub_225CCF5D4();

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

void sub_225AABB94(uint64_t *a1@<X8>)
{
  v2 = 0x63617053656D616ELL;
  if (*v1)
  {
    v2 = 0x6D656C4561746164;
  }

  v3 = 0xEA00000000007365;
  if (*v1)
  {
    v3 = 0xEC00000073746E65;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_225AABBE0()
{
  if (*v0)
  {
    return 0x6D656C4561746164;
  }

  else
  {
    return 0x63617053656D616ELL;
  }
}

uint64_t sub_225AABC28@<X0>(char *a1@<X8>)
{
  v2 = sub_225CCF5D4();

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

uint64_t sub_225AABC8C(uint64_t a1)
{
  v2 = sub_225AABF00();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225AABCC8(uint64_t a1)
{
  v2 = sub_225AABF00();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ISO18013MobileSecurityObject.KeyAuthorizations.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73C370);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v11 - v7;
  v9 = *v1;
  v11 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225AABF00();

  sub_225CCFCE4();
  v13 = v9;
  v12 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DCB0);
  sub_225A325B0(&qword_281059B28);
  sub_225CCF774();

  if (!v2)
  {
    v13 = v11;
    v12 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73C380);
    sub_225AABF54();
    sub_225CCF774();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_225AABF00()
{
  result = qword_27D73C378;
  if (!qword_27D73C378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C378);
  }

  return result;
}

unint64_t sub_225AABF54()
{
  result = qword_27D73C388;
  if (!qword_27D73C388)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D73C380);
    sub_225A325B0(&qword_281059B28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C388);
  }

  return result;
}

uint64_t ISO18013MobileSecurityObject.KeyAuthorizations.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73C390);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v13 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225AABF00();
  sub_225CCFCA4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DCB0);
  v14 = 0;
  sub_225A325B0(&qword_281059B18);
  sub_225CCF674();
  v10 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73C380);
  v14 = 1;
  sub_225AAC254();
  sub_225CCF674();
  (*(v6 + 8))(v9, v5);
  v11 = v15;
  *a2 = v10;
  a2[1] = v11;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_225AAC254()
{
  result = qword_27D73C398;
  if (!qword_27D73C398)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D73C380);
    sub_225A325B0(&qword_281059B18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C398);
  }

  return result;
}

uint64_t sub_225AAC348@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = a1(0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, v2, v4);
}

uint64_t ISO18013MobileSecurityObject.ValidityInfo.validFrom.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ISO18013MobileSecurityObject.ValidityInfo(0) + 20);
  v4 = sub_225CCD0B4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ISO18013MobileSecurityObject.ValidityInfo.validUntil.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ISO18013MobileSecurityObject.ValidityInfo(0) + 24);
  v4 = sub_225CCD0B4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ISO18013MobileSecurityObject.ValidityInfo.expectedUpdate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ISO18013MobileSecurityObject.ValidityInfo(0) + 28);

  return sub_225A94014(v3, a1);
}

uint64_t sub_225AAC500()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

uint64_t sub_225AAC5D4()
{
  sub_225CCE5B4();
}

uint64_t sub_225AAC694()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

uint64_t sub_225AAC764@<X0>(_BYTE *a1@<X8>)
{
  result = sub_225AAF4E0();
  *a1 = result;
  return result;
}

void sub_225AAC794(uint64_t *a1@<X8>)
{
  v2 = 0xE600000000000000;
  v3 = 0x64656E676973;
  v4 = 0xEA00000000006C69;
  v5 = 0x746E5564696C6176;
  if (*v1 != 2)
  {
    v5 = 0x6465746365707865;
    v4 = 0xEE00657461647055;
  }

  if (*v1)
  {
    v3 = 0x6F724664696C6176;
    v2 = 0xE90000000000006DLL;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_225AAC824()
{
  v1 = 0x64656E676973;
  v2 = 0x746E5564696C6176;
  if (*v0 != 2)
  {
    v2 = 0x6465746365707865;
  }

  if (*v0)
  {
    v1 = 0x6F724664696C6176;
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

uint64_t sub_225AAC8B0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_225AAF4E0();
  *a1 = result;
  return result;
}

uint64_t sub_225AAC8D8(uint64_t a1)
{
  v2 = sub_225AAD380();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225AAC914(uint64_t a1)
{
  v2 = sub_225AAD380();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_225AAC950(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 == *a2)
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_225CCF934();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_225AAC9B0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_225AAF52C();
  *a1 = result;
  return result;
}

uint64_t sub_225AAC9E0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_225AAF52C();
  *a1 = result;
  return result;
}

uint64_t sub_225AACA08(uint64_t a1)
{
  v2 = sub_225AAD32C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225AACA44(uint64_t a1)
{
  v2 = sub_225AAD32C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ISO18013MobileSecurityObject.ValidityInfo.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73C3A0);
  v54 = *(v57 - 8);
  MEMORY[0x28223BE20](v57, v3);
  v61 = &v47 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73FD00);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v48 = &v47 - v7;
  v60 = sub_225CCD0B4();
  v56 = *(v60 - 8);
  v9 = MEMORY[0x28223BE20](v60, v8);
  v51 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9, v11);
  v52 = &v47 - v13;
  v15 = MEMORY[0x28223BE20](v12, v14);
  v17 = &v47 - v16;
  v19 = MEMORY[0x28223BE20](v15, v18);
  v50 = &v47 - v20;
  v22 = MEMORY[0x28223BE20](v19, v21);
  v24 = &v47 - v23;
  MEMORY[0x28223BE20](v22, v25);
  v27 = &v47 - v26;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73C3A8);
  v53 = *(v58 - 8);
  MEMORY[0x28223BE20](v58, v28);
  v30 = &v47 - v29;
  v55 = type metadata accessor for ISO18013MobileSecurityObject.ValidityInfo(0);
  MEMORY[0x28223BE20](v55, v31);
  v59 = &v47 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  Decoder.codingKeyFormat.getter(&v70);
  v33 = v70;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if ((v33 & 1) == 0)
  {
    sub_225AAD380();
    v36 = v62;
    sub_225CCFCA4();
    if (!v36)
    {
      v66 = 0;
      sub_225AA9B6C(&qword_27D73BE48, MEMORY[0x277CC9578]);
      v37 = v60;
      sub_225CCF6E4();
      v62 = *(v56 + 32);
      v62(v59, v27, v37);
      v65 = 1;
      sub_225CCF6E4();
      v62(&v59[*(v55 + 20)], v24, v37);
      v64 = 2;
      v41 = v50;
      sub_225CCF6E4();
      v62(&v59[*(v55 + 24)], v41, v37);
      v63 = 3;
      v44 = v48;
      sub_225CCF674();
      v45 = v55;
      (*(v53 + 8))(v30, v58);
      v43 = v59;
      sub_225A94CFC(v44, &v59[*(v45 + 28)]);
      goto LABEL_7;
    }

    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  sub_225AAD32C();
  v34 = v62;
  sub_225CCFCA4();
  if (v34)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v69 = 0;
  sub_225AA9B6C(&qword_27D73BE48, MEMORY[0x277CC9578]);
  v35 = v60;
  sub_225CCF6E4();
  v39 = v56;
  v62 = *(v56 + 32);
  v62(v59, v17, v35);
  v68 = 1;
  v40 = v52;
  sub_225CCF6E4();
  v42 = v59;
  v62(&v59[*(v55 + 20)], v40, v35);
  v67 = 2;
  sub_225CCF6E4();
  v43 = v42;
  (*(v54 + 8))(v61, v57);
  v46 = v55;
  v62(&v42[*(v55 + 24)], v51, v35);
  (*(v39 + 56))(&v42[*(v46 + 28)], 1, 1, v35);
LABEL_7:
  sub_225AA8890(v43, v49, type metadata accessor for ISO18013MobileSecurityObject.ValidityInfo);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_225AA9AD0(v43, type metadata accessor for ISO18013MobileSecurityObject.ValidityInfo);
}

unint64_t sub_225AAD32C()
{
  result = qword_27D73C3B0;
  if (!qword_27D73C3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C3B0);
  }

  return result;
}

unint64_t sub_225AAD380()
{
  result = qword_27D73C3B8;
  if (!qword_27D73C3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C3B8);
  }

  return result;
}

uint64_t ISO18013MobileSecurityObject.ValidityInfo.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73C3C0);
  v14 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v3);
  v5 = &v14 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73C3C8);
  v15 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v14 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  Encoder.codingKeyFormat.getter(&v24);
  v10 = v24;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (v10)
  {
    sub_225AAD32C();
    sub_225CCFCE4();
    v23 = 0;
    sub_225CCD0B4();
    sub_225AA9B6C(&qword_27D73BE18, MEMORY[0x277CC9578]);
    v11 = v16;
    sub_225CCF7E4();
    if (!v11)
    {
      type metadata accessor for ISO18013MobileSecurityObject.ValidityInfo(0);
      v22 = 1;
      sub_225CCF7E4();
      v21 = 2;
      sub_225CCF7E4();
    }

    return (*(v14 + 8))(v5, v2);
  }

  else
  {
    sub_225AAD380();
    sub_225CCFCE4();
    v20 = 0;
    sub_225CCD0B4();
    sub_225AA9B6C(&qword_27D73BE18, MEMORY[0x277CC9578]);
    v13 = v16;
    sub_225CCF7E4();
    if (!v13)
    {
      type metadata accessor for ISO18013MobileSecurityObject.ValidityInfo(0);
      v19 = 1;
      sub_225CCF7E4();
      v18 = 2;
      sub_225CCF7E4();
      v17 = 3;
      sub_225CCF774();
    }

    return (*(v15 + 8))(v9, v6);
  }
}

uint64_t ISO18013MobileSecurityObject.IdentifierList.id.getter()
{
  v1 = *v0;
  sub_2259CB710(*v0, *(v0 + 8));
  return v1;
}

uint64_t ISO18013MobileSecurityObject.IdentifierList.certificate.getter()
{
  v1 = *(v0 + 16);
  sub_2259CB6FC(v1, *(v0 + 24));
  return v1;
}

uint64_t ISO18013MobileSecurityObject.IdentifierList.uri.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_225AAD89C()
{
  v1 = 0x6369666974726563;
  if (*v0 != 1)
  {
    v1 = 6910581;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_225AAD8EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_225AAF578(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_225AAD914(uint64_t a1)
{
  v2 = sub_225AADB88();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225AAD950(uint64_t a1)
{
  v2 = sub_225AADB88();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ISO18013MobileSecurityObject.IdentifierList.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73C3D0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = v14 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v15 = v1[3];
  v16 = v10;
  v11 = v1[4];
  v14[1] = v1[5];
  v14[2] = v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2259CB710(v8, v9);
  sub_225AADB88();
  sub_225CCFCE4();
  v18 = v8;
  v19 = v9;
  v20 = 0;
  sub_2259D9454();
  v12 = v17;
  sub_225CCF7E4();
  sub_2259BEF00(v18, v19);
  if (!v12)
  {
    v18 = v16;
    v19 = v15;
    v20 = 1;
    sub_2259CB6FC(v16, v15);
    sub_225CCF774();
    sub_2259B97A8(v18, v19);
    LOBYTE(v18) = 2;
    sub_225CCF784();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_225AADB88()
{
  result = qword_27D73C3D8;
  if (!qword_27D73C3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C3D8);
  }

  return result;
}

uint64_t ISO18013MobileSecurityObject.IdentifierList.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73C3E0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v20 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225AADB88();
  sub_225CCFCA4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v10 = a2;
  v26 = 0;
  sub_2259D94A8();
  sub_225CCF6E4();
  v11 = v24;
  v23 = v25;
  v26 = 1;
  sub_225CCF674();
  v21 = v24;
  v22 = v25;
  LOBYTE(v24) = 2;
  v12 = sub_225CCF684();
  v14 = v13;
  (*(v6 + 8))(v9, v5);
  v15 = v11;
  *v10 = v11;
  v16 = v22;
  v17 = v23;
  v18 = v21;
  v10[1] = v23;
  v10[2] = v18;
  v10[3] = v16;
  v10[4] = v12;
  v10[5] = v14;
  sub_2259CB710(v15, v17);
  sub_2259CB6FC(v18, v16);

  __swift_destroy_boxed_opaque_existential_0(a1);
  sub_2259BEF00(v15, v17);
  sub_2259B97A8(v18, v16);
}

uint64_t sub_225AADF00()
{
  sub_225CCFBD4();
  sub_225CCE5B4();
  return sub_225CCFC24();
}

uint64_t sub_225AADF98()
{
  sub_225CCFBD4();
  sub_225CCE5B4();
  return sub_225CCFC24();
}

uint64_t sub_225AADFF0@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_225CCF5D4();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_225AAE08C@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_225CCF5D4();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_225AAE0E4(uint64_t a1)
{
  v2 = sub_225AAE310();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225AAE120(uint64_t a1)
{
  v2 = sub_225AAE310();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ISO18013MobileSecurityObject.Status.identifierList.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  *a1 = *v1;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  return sub_225AA8984(v2, v3, v4, v5, v6, v7);
}

uint64_t ISO18013MobileSecurityObject.Status.encode(to:)(void *a1)
{
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73C3E8);
  v24 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v3);
  v16 = &v15 - v4;
  v5 = *v1;
  v6 = v1[1];
  v7 = v1[2];
  v8 = v1[3];
  v10 = v1[4];
  v9 = v1[5];
  v11 = a1[3];
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v11);
  sub_225AA8984(v5, v6, v7, v8, v10, v9);
  sub_225AAE310();
  v12 = v16;
  sub_225CCFCE4();
  v18 = v5;
  v19 = v6;
  v20 = v7;
  v21 = v8;
  v22 = v10;
  v23 = v9;
  sub_225AAE364();
  v13 = v17;
  sub_225CCF774();
  sub_225AAA574(v18, v19, v20, v21, v22, v23);
  return (*(v24 + 8))(v12, v13);
}

unint64_t sub_225AAE310()
{
  result = qword_27D73C3F0;
  if (!qword_27D73C3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C3F0);
  }

  return result;
}

unint64_t sub_225AAE364()
{
  result = qword_27D73C3F8;
  if (!qword_27D73C3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C3F8);
  }

  return result;
}

uint64_t ISO18013MobileSecurityObject.Status.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73C400);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = v13 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225AAE310();
  sub_225CCFCA4();
  if (!v2)
  {
    sub_225AAE530();
    sub_225CCF674();
    (*(v6 + 8))(v9, v5);
    v10 = v13[1];
    v11 = v13[2];
    *a2 = v13[0];
    a2[1] = v10;
    a2[2] = v11;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_225AAE530()
{
  result = qword_27D73C408;
  if (!qword_27D73C408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C408);
  }

  return result;
}

void sub_225AAE5DC()
{
  sub_225AAE6C0();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ISO18013MobileSecurityObject.DeviceKeyInfo(319);
    if (v1 <= 0x3F)
    {
      type metadata accessor for ISO18013MobileSecurityObject.ValidityInfo(319);
      if (v2 <= 0x3F)
      {
        sub_225A62224(319, &qword_27D73C428);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_225AAE6C0()
{
  if (!qword_27D73C420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D73C2A8);
    v0 = sub_225CCE324();
    if (!v1)
    {
      atomic_store(v0, &qword_27D73C420);
    }
  }
}

void sub_225AAE75C()
{
  sub_225CCD494();
  if (v0 <= 0x3F)
  {
    sub_225A62224(319, &qword_27D73C440);
    if (v1 <= 0x3F)
    {
      sub_225AAE808();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_225AAE808()
{
  if (!qword_27D73C448)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D73C340);
    v0 = sub_225CCEFC4();
    if (!v1)
    {
      atomic_store(v0, &qword_27D73C448);
    }
  }
}

void sub_225AAE8A4()
{
  sub_225CCD0B4();
  if (v0 <= 0x3F)
  {
    sub_225A91220();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t get_enum_tag_for_layout_string_13CoreIDVShared28ISO18013MobileSecurityObjectV14IdentifierListVSg(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_225AAE958(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 40);
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

uint64_t sub_225AAE9B4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2;
    }
  }

  return result;
}

unint64_t sub_225AAEAB8()
{
  result = qword_27D73C460;
  if (!qword_27D73C460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C460);
  }

  return result;
}

unint64_t sub_225AAEB10()
{
  result = qword_27D73C468;
  if (!qword_27D73C468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C468);
  }

  return result;
}

unint64_t sub_225AAEB68()
{
  result = qword_27D73C470;
  if (!qword_27D73C470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C470);
  }

  return result;
}

unint64_t sub_225AAEBC0()
{
  result = qword_27D73C478;
  if (!qword_27D73C478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C478);
  }

  return result;
}

unint64_t sub_225AAEC18()
{
  result = qword_27D73C480;
  if (!qword_27D73C480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C480);
  }

  return result;
}

unint64_t sub_225AAEC70()
{
  result = qword_27D73C488;
  if (!qword_27D73C488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C488);
  }

  return result;
}

unint64_t sub_225AAECC8()
{
  result = qword_27D73C490;
  if (!qword_27D73C490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C490);
  }

  return result;
}

unint64_t sub_225AAED20()
{
  result = qword_27D73C498;
  if (!qword_27D73C498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C498);
  }

  return result;
}

unint64_t sub_225AAED78()
{
  result = qword_27D73C4A0;
  if (!qword_27D73C4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C4A0);
  }

  return result;
}

unint64_t sub_225AAEDD0()
{
  result = qword_27D73C4A8;
  if (!qword_27D73C4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C4A8);
  }

  return result;
}

unint64_t sub_225AAEE28()
{
  result = qword_27D73C4B0;
  if (!qword_27D73C4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C4B0);
  }

  return result;
}

unint64_t sub_225AAEE80()
{
  result = qword_27D73C4B8;
  if (!qword_27D73C4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C4B8);
  }

  return result;
}

unint64_t sub_225AAEED8()
{
  result = qword_27D73C4C0;
  if (!qword_27D73C4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C4C0);
  }

  return result;
}

unint64_t sub_225AAEF30()
{
  result = qword_27D73C4C8;
  if (!qword_27D73C4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C4C8);
  }

  return result;
}

unint64_t sub_225AAEF88()
{
  result = qword_27D73C4D0;
  if (!qword_27D73C4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C4D0);
  }

  return result;
}

unint64_t sub_225AAEFE0()
{
  result = qword_27D73C4D8;
  if (!qword_27D73C4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C4D8);
  }

  return result;
}

unint64_t sub_225AAF038()
{
  result = qword_27D73C4E0;
  if (!qword_27D73C4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C4E0);
  }

  return result;
}

unint64_t sub_225AAF090()
{
  result = qword_27D73C4E8;
  if (!qword_27D73C4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C4E8);
  }

  return result;
}

unint64_t sub_225AAF0E8()
{
  result = qword_27D73C4F0;
  if (!qword_27D73C4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C4F0);
  }

  return result;
}

unint64_t sub_225AAF140()
{
  result = qword_27D73C4F8;
  if (!qword_27D73C4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C4F8);
  }

  return result;
}

unint64_t sub_225AAF198()
{
  result = qword_27D73C500;
  if (!qword_27D73C500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C500);
  }

  return result;
}

unint64_t sub_225AAF1F0()
{
  result = qword_27D73C508;
  if (!qword_27D73C508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C508);
  }

  return result;
}

unint64_t sub_225AAF248()
{
  result = qword_27D73C510;
  if (!qword_27D73C510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C510);
  }

  return result;
}

unint64_t sub_225AAF2A0()
{
  result = qword_27D73C518;
  if (!qword_27D73C518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C518);
  }

  return result;
}

unint64_t sub_225AAF2F8()
{
  result = qword_27D73C520;
  if (!qword_27D73C520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C520);
  }

  return result;
}

unint64_t sub_225AAF350()
{
  result = qword_27D73C528;
  if (!qword_27D73C528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C528);
  }

  return result;
}

unint64_t sub_225AAF3A8()
{
  result = qword_27D73C530;
  if (!qword_27D73C530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C530);
  }

  return result;
}

uint64_t sub_225AAF3FC()
{
  v0 = sub_225CCF5D4();

  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_225AAF448()
{
  v0 = sub_225CCF5D4();

  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_225AAF494()
{
  v0 = sub_225CCF5D4();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_225AAF4E0()
{
  v0 = sub_225CCF5D4();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_225AAF52C()
{
  v0 = sub_225CCF5D4();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_225AAF578(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_225CCF934() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6369666974726563 && a2 == 0xEB00000000657461 || (sub_225CCF934() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 6910581 && a2 == 0xE300000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_225CCF934();

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

uint64_t ISO18013Package.Document.init(namespaces:issuerAuth:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  *a3 = a1;
  v5 = *(type metadata accessor for ISO18013Package.Document() + 20);
  v6 = sub_225CCD354();
  v7 = *(*(v6 - 8) + 32);

  return v7(&a3[v5], a2, v6);
}

uint64_t type metadata accessor for ISO18013Package.Document()
{
  result = qword_27D73C5E0;
  if (!qword_27D73C5E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

CoreIDVShared::ISO18013Package __swiftcall ISO18013Package.init(version:documents:)(CoreIDVShared::ISO18013Version version, Swift::OpaquePointer documents)
{
  *v2 = *version.major;
  *(v2 + 16) = version.minor;
  result.version = version;
  result.documents = documents;
  return result;
}

unint64_t sub_225AAF780()
{
  v0._countAndFlagsBits = 3157553;
  v0._object = 0xE300000000000000;
  result = ISO18013Version.init(_:)(v0);
  if (v4)
  {
    v2 = 0uLL;
  }

  else
  {
    v2 = v3;
  }

  xmmword_27D73C538 = v2;
  return result;
}

double static ISO18013Package.supportedVersion.getter@<D0>(_OWORD *a1@<X8>)
{
  if (qword_27D739F40 != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  result = *&xmmword_27D73C538;
  *a1 = xmmword_27D73C538;
  return result;
}

__n128 ISO18013Package.version.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t sub_225AAF84C()
{
  if (*v0)
  {
    return 0x746E656D75636F64;
  }

  else
  {
    return 0x6E6F6973726576;
  }
}

uint64_t sub_225AAF88C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v6 || (sub_225CCF934() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x746E656D75636F64 && a2 == 0xE900000000000073)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_225CCF934();

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

uint64_t sub_225AAF970(uint64_t a1)
{
  v2 = sub_225AAFB9C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225AAF9AC(uint64_t a1)
{
  v2 = sub_225AAFB9C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ISO18013Package.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73C548);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = v12 - v6;
  v9 = *v1;
  v8 = v1[1];
  v12[0] = v1[2];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225AAFB9C();
  sub_225CCFCE4();
  v13 = v9;
  v14 = v8;
  v15 = 0;
  sub_225A945D8();
  v10 = v12[1];
  sub_225CCF7E4();
  if (!v10)
  {
    v13 = v12[0];
    v15 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73C558);
    sub_225AAFBF0();
    sub_225CCF7E4();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_225AAFB9C()
{
  result = qword_27D73C550;
  if (!qword_27D73C550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C550);
  }

  return result;
}

unint64_t sub_225AAFBF0()
{
  result = qword_27D73C560;
  if (!qword_27D73C560)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D73C558);
    sub_225AB0CC4(&qword_27D73C568, type metadata accessor for ISO18013Package.Document);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C560);
  }

  return result;
}

uint64_t ISO18013Package.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73C570);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = v14 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225AAFB9C();
  sub_225CCFCA4();
  if (!v2)
  {
    v15 = 0;
    sub_225A94CA8();
    sub_225CCF6E4();
    v10 = v14[0];
    v11 = v14[1];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73C558);
    v15 = 1;
    sub_225AAFE98();
    sub_225CCF6E4();
    (*(v6 + 8))(v9, v5);
    v12 = v14[0];
    *a2 = v10;
    a2[1] = v11;
    a2[2] = v12;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_225AAFE98()
{
  result = qword_27D73C578;
  if (!qword_27D73C578)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D73C558);
    sub_225AB0CC4(&qword_27D73C580, type metadata accessor for ISO18013Package.Document);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C578);
  }

  return result;
}

uint64_t ISO18013Package.Document.issuerAuth.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ISO18013Package.Document() + 20);
  v4 = sub_225CCD354();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_225AB0008(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x7541726575737369;
  }

  else
  {
    v3 = 0x63617053656D616ELL;
  }

  if (v2)
  {
    v4 = 0xEA00000000007365;
  }

  else
  {
    v4 = 0xEA00000000006874;
  }

  if (*a2)
  {
    v5 = 0x7541726575737369;
  }

  else
  {
    v5 = 0x63617053656D616ELL;
  }

  if (*a2)
  {
    v6 = 0xEA00000000006874;
  }

  else
  {
    v6 = 0xEA00000000007365;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_225CCF934();
  }

  return v8 & 1;
}

uint64_t sub_225AB00B4()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

uint64_t sub_225AB013C()
{
  sub_225CCE5B4();
}

uint64_t sub_225AB01B0()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

uint64_t sub_225AB0234@<X0>(char *a1@<X8>)
{
  v2 = sub_225CCF5D4();

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

void sub_225AB0294(uint64_t *a1@<X8>)
{
  v2 = 0x63617053656D616ELL;
  if (*v1)
  {
    v2 = 0x7541726575737369;
  }

  v3 = 0xEA00000000006874;
  if (!*v1)
  {
    v3 = 0xEA00000000007365;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_225AB02D8()
{
  if (*v0)
  {
    return 0x7541726575737369;
  }

  else
  {
    return 0x63617053656D616ELL;
  }
}

uint64_t sub_225AB0318@<X0>(char *a1@<X8>)
{
  v2 = sub_225CCF5D4();

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

uint64_t sub_225AB037C(uint64_t a1)
{
  v2 = sub_225AB0770();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225AB03B8(uint64_t a1)
{
  v2 = sub_225AB0770();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ISO18013Package.Document.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v28 = sub_225CCD354();
  v25 = *(v28 - 8);
  MEMORY[0x28223BE20](v28, v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73C588);
  v27 = *(v29 - 8);
  MEMORY[0x28223BE20](v29, v7);
  v9 = &v21 - v8;
  v10 = type metadata accessor for ISO18013Package.Document();
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225AB0770();
  sub_225CCFCA4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v24 = a1;
  v14 = v13;
  v16 = v27;
  v15 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73C598);
  v31 = 0;
  sub_225AB07C4(&qword_27D73C5A0, sub_225AB0848);
  v17 = v29;
  sub_225CCF6E4();
  v22 = v14;
  v23 = v32;
  *v14 = v32;
  v30 = 1;
  sub_225AB0CC4(&qword_27D73AC50, MEMORY[0x277CF3948]);
  sub_225CCF6E4();
  (*(v16 + 8))(v9, v17);
  v18 = *(v10 + 20);
  v19 = v22;
  (*(v25 + 32))(&v22[v18], v6, v15);
  sub_225AB08F0(v19, v26);
  __swift_destroy_boxed_opaque_existential_0(v24);
  return sub_225AB0954(v19);
}

unint64_t sub_225AB0770()
{
  result = qword_27D73C590;
  if (!qword_27D73C590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C590);
  }

  return result;
}

uint64_t sub_225AB07C4(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D73C598);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_225AB0848()
{
  result = qword_27D73C5A8;
  if (!qword_27D73C5A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D73C5B0);
    sub_225AB0C74(&qword_27D73C5B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C5A8);
  }

  return result;
}

uint64_t sub_225AB08F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ISO18013Package.Document();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_225AB0954(uint64_t a1)
{
  v2 = type metadata accessor for ISO18013Package.Document();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ISO18013Package.Document.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73C5C0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225AB0770();
  sub_225CCFCE4();
  v12 = *v3;
  v11[7] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73C598);
  sub_225AB07C4(&qword_27D73C5C8, sub_225AB0BCC);
  sub_225CCF7E4();
  if (!v2)
  {
    type metadata accessor for ISO18013Package.Document();
    v11[6] = 1;
    sub_225CCD354();
    sub_225AB0CC4(&qword_27D73AC68, MEMORY[0x277CF3948]);
    sub_225CCF7E4();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_225AB0BCC()
{
  result = qword_27D73C5D0;
  if (!qword_27D73C5D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D73C5B0);
    sub_225AB0C74(&qword_27D73C5D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C5D0);
  }

  return result;
}

uint64_t sub_225AB0C74(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D73B3D0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_225AB0CC4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_225AB0D3C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_225AB0D84(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_225AB0DFC()
{
  sub_225AB0E80();
  if (v0 <= 0x3F)
  {
    sub_225CCD354();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_225AB0E80()
{
  if (!qword_27D73C5F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D73C5B0);
    v0 = sub_225CCE324();
    if (!v1)
    {
      atomic_store(v0, &qword_27D73C5F0);
    }
  }
}

unint64_t sub_225AB0F18()
{
  result = qword_27D73C5F8;
  if (!qword_27D73C5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C5F8);
  }

  return result;
}

unint64_t sub_225AB0F70()
{
  result = qword_27D73C600;
  if (!qword_27D73C600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C600);
  }

  return result;
}

unint64_t sub_225AB0FC8()
{
  result = qword_27D73C608;
  if (!qword_27D73C608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C608);
  }

  return result;
}

unint64_t sub_225AB1020()
{
  result = qword_27D73C610;
  if (!qword_27D73C610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C610);
  }

  return result;
}

unint64_t sub_225AB1078()
{
  result = qword_27D73C618;
  if (!qword_27D73C618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C618);
  }

  return result;
}

unint64_t sub_225AB10D0()
{
  result = qword_27D73C620;
  if (!qword_27D73C620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C620);
  }

  return result;
}

__n128 ISO18013ReaderAuthentication.init(sessionTranscript:itemsRequestBytes:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_225A9C018(a1, a3);
  v5 = a3 + *(type metadata accessor for ISO18013ReaderAuthentication() + 20);
  v6 = *(a2 + 80);
  *(v5 + 64) = *(a2 + 64);
  *(v5 + 80) = v6;
  *(v5 + 96) = *(a2 + 96);
  *(v5 + 112) = *(a2 + 112);
  v7 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v7;
  result = *(a2 + 32);
  v9 = *(a2 + 48);
  *(v5 + 32) = result;
  *(v5 + 48) = v9;
  return result;
}

uint64_t type metadata accessor for ISO18013ReaderAuthentication()
{
  result = qword_27D73C638;
  if (!qword_27D73C638)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ISO18013ReaderAuthentication.itemsRequestBytes.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ISO18013ReaderAuthentication() + 20));
  v4 = v3[6];
  v5 = v3[4];
  v20 = v3[5];
  v21 = v4;
  v6 = v3[2];
  v8 = *v3;
  v16 = v3[1];
  v7 = v16;
  v17 = v6;
  v9 = v3[4];
  v11 = v3[2];
  v18 = v3[3];
  v10 = v18;
  v19 = v9;
  v15 = *v3;
  v12 = v3[6];
  *(a1 + 80) = v20;
  *(a1 + 96) = v12;
  *(a1 + 48) = v10;
  *(a1 + 64) = v5;
  *(a1 + 16) = v7;
  *(a1 + 32) = v11;
  v22 = *(v3 + 14);
  *(a1 + 112) = *(v3 + 14);
  *a1 = v8;
  return sub_225AB12AC(&v15, v14);
}

uint64_t sub_225AB12AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AD30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t ISO18013ReaderAuthentication.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v4 = type metadata accessor for ISO18013SessionTranscript(0);
  MEMORY[0x28223BE20](v4, v5);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ISO18013ReaderAuthentication();
  MEMORY[0x28223BE20](v8, v9);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225CCFC74();
  if (!v2)
  {
    v23[1] = v4;
    v24 = v7;
    v23[0] = v11;
    __swift_mutable_project_boxed_opaque_existential_0(v33, v34);
    v13 = sub_225CCF874();
    v14 = v12;
    if (v13 == 0xD000000000000014 && 0x8000000225D1B670 == v12 || (sub_225CCF934() & 1) != 0)
    {

      __swift_mutable_project_boxed_opaque_existential_0(v33, v34);
      sub_225AB1A28(&qword_27D73C078);
      v15 = v24;
      sub_225CCF884();
      v16 = v15;
      v17 = v23[0];
      sub_225A9C018(v16, v23[0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AD30);
      __swift_mutable_project_boxed_opaque_existential_0(v33, v34);
      sub_225AB1A6C(&qword_27D73C628);
      sub_225CCF884();
      v18 = v17 + *(v8 + 20);
      v19 = v30;
      *(v18 + 64) = v29;
      *(v18 + 80) = v19;
      *(v18 + 96) = v31;
      *(v18 + 112) = v32;
      v20 = v26;
      *v18 = v25;
      *(v18 + 16) = v20;
      v21 = v28;
      *(v18 + 32) = v27;
      *(v18 + 48) = v21;
      __swift_destroy_boxed_opaque_existential_0(v33);
      sub_225AB1740(v17, v35, type metadata accessor for ISO18013ReaderAuthentication);
      __swift_destroy_boxed_opaque_existential_0(a1);
      return sub_225AB17A8(v17, type metadata accessor for ISO18013ReaderAuthentication);
    }

    *&v25 = 0;
    *(&v25 + 1) = 0xE000000000000000;
    sub_225CCF204();

    *&v25 = 0x2720726564616548;
    *(&v25 + 1) = 0xE800000000000000;
    MEMORY[0x22AA6CE70](v13, v14);

    MEMORY[0x22AA6CE70](0xD000000000000012, 0x8000000225D1B690);
    MEMORY[0x22AA6CE70](0xD000000000000014, 0x8000000225D1B670);
    MEMORY[0x22AA6CE70](39, 0xE100000000000000);
    sub_225CCF2D4();
    swift_allocError();
    sub_225CCF274();

    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_0(v33);
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_225AB1740(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_225AB17A8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t ISO18013ReaderAuthentication.encode(to:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225CCFCC4();
  __swift_mutable_project_boxed_opaque_existential_0(v28, v29);
  sub_225CCF8B4();
  if (!v2)
  {
    __swift_mutable_project_boxed_opaque_existential_0(v28, v29);
    type metadata accessor for ISO18013SessionTranscript(0);
    sub_225AB1A28(&qword_27D73B048);
    sub_225CCF8C4();
    v3 = v1 + *(type metadata accessor for ISO18013ReaderAuthentication() + 20);
    v4 = *(v3 + 80);
    v5 = *(v3 + 48);
    v24 = *(v3 + 64);
    v25 = v4;
    v6 = *(v3 + 80);
    v26 = *(v3 + 96);
    v7 = *(v3 + 16);
    v8 = *(v3 + 48);
    v22 = *(v3 + 32);
    v23 = v8;
    v9 = *(v3 + 16);
    v21[0] = *v3;
    v21[1] = v9;
    v17 = v24;
    v18 = v6;
    v19 = *(v3 + 96);
    v13 = v21[0];
    v14 = v7;
    v27 = *(v3 + 112);
    v20 = *(v3 + 112);
    v15 = v22;
    v16 = v5;
    __swift_mutable_project_boxed_opaque_existential_0(v28, v29);
    sub_225AB12AC(v21, v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AD30);
    sub_225AB1A6C(&qword_27D73C630);
    sub_225CCF8C4();
    v11[4] = v17;
    v11[5] = v18;
    v11[6] = v19;
    v12 = v20;
    v11[0] = v13;
    v11[1] = v14;
    v11[2] = v15;
    v11[3] = v16;
    sub_225AB1ABC(v11);
  }

  return __swift_destroy_boxed_opaque_existential_0(v28);
}

uint64_t sub_225AB1A28(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ISO18013SessionTranscript(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_225AB1A6C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D73AD30);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_225AB1ABC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AD30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_225AB1B7C()
{
  type metadata accessor for ISO18013SessionTranscript(319);
  if (v0 <= 0x3F)
  {
    sub_225AB1C00();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_225AB1C00()
{
  if (!qword_27D73C648)
  {
    sub_225AB1C68();
    sub_225AB1CBC();
    v0 = type metadata accessor for CBOREncodedCBOR();
    if (!v1)
    {
      atomic_store(v0, &qword_27D73C648);
    }
  }
}

unint64_t sub_225AB1C68()
{
  result = qword_27D73C650;
  if (!qword_27D73C650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C650);
  }

  return result;
}

unint64_t sub_225AB1CBC()
{
  result = qword_27D73C658;
  if (!qword_27D73C658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C658);
  }

  return result;
}

__n128 ISO18013ReaderAuthenticationAll.init(sessionTranscript:itemsRequestBytesAll:deviceRequestsInfoBytes:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for ISO18013ReaderAuthenticationAll();
  v9 = a4 + *(v8 + 24);
  *v9 = 0;
  *(v9 + 8) = 0;
  *(v9 + 16) = 0;
  *(v9 + 24) = 1;
  *(v9 + 32) = 0u;
  *(v9 + 48) = 0u;
  *(v9 + 64) = 0;
  sub_225A9C018(a1, a4);
  *(a4 + *(v8 + 20)) = a2;
  v10 = *(v9 + 48);
  v14[2] = *(v9 + 32);
  v14[3] = v10;
  v15 = *(v9 + 64);
  v11 = *(v9 + 16);
  v14[0] = *v9;
  v14[1] = v11;
  sub_225AB1E18(v14);
  v12 = *(a3 + 48);
  *(v9 + 32) = *(a3 + 32);
  *(v9 + 48) = v12;
  *(v9 + 64) = *(a3 + 64);
  result = *(a3 + 16);
  *v9 = *a3;
  *(v9 + 16) = result;
  return result;
}

uint64_t type metadata accessor for ISO18013ReaderAuthenticationAll()
{
  result = qword_27D73C6A0;
  if (!qword_27D73C6A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_225AB1E18(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73C250);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_225AB1EBC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ISO18013SessionTranscript(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t ISO18013ReaderAuthenticationAll.itemsRequestBytesAll.getter()
{
  type metadata accessor for ISO18013ReaderAuthenticationAll();
}

uint64_t ISO18013ReaderAuthenticationAll.itemsRequestBytesAll.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ISO18013ReaderAuthenticationAll() + 20);

  *(v1 + v3) = a1;
  return result;
}

uint64_t ISO18013ReaderAuthenticationAll.deviceRequestsInfoBytes.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ISO18013ReaderAuthenticationAll() + 24);
  v4 = *(v3 + 48);
  v11 = *(v3 + 32);
  v12 = v4;
  v13 = *(v3 + 64);
  v5 = v13;
  v6 = *(v3 + 16);
  v10[0] = *v3;
  v7 = v10[0];
  v10[1] = v6;
  *(a1 + 32) = v11;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *a1 = v7;
  *(a1 + 16) = v6;
  return sub_225AB2064(v10, v9);
}

uint64_t sub_225AB2064(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73C250);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 ISO18013ReaderAuthenticationAll.deviceRequestsInfoBytes.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for ISO18013ReaderAuthenticationAll() + 24);
  v4 = *(v3 + 48);
  v8[2] = *(v3 + 32);
  v8[3] = v4;
  v9 = *(v3 + 64);
  v5 = *(v3 + 16);
  v8[0] = *v3;
  v8[1] = v5;
  sub_225AB1E18(v8);
  v6 = *(a1 + 48);
  *(v3 + 32) = *(a1 + 32);
  *(v3 + 48) = v6;
  *(v3 + 64) = *(a1 + 64);
  result = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = result;
  return result;
}

uint64_t ISO18013ReaderAuthenticationAll.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v3 = type metadata accessor for ISO18013SessionTranscript(0);
  MEMORY[0x28223BE20](v3, v4);
  v6 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ISO18013ReaderAuthenticationAll();
  v9 = MEMORY[0x28223BE20](v7, v8);
  v11 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = &v11[*(v9 + 24)];
  *v12 = 0;
  *(v12 + 1) = 0;
  *(v12 + 2) = 0;
  *(v12 + 3) = 1;
  *(v12 + 2) = 0u;
  *(v12 + 3) = 0u;
  *(v12 + 8) = 0;
  v13 = a1[3];
  v45 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  v14 = v30;
  sub_225CCFC74();
  if (!v14)
  {
    v28[0] = v11;
    v28[1] = v3;
    v30 = v6;
    __swift_mutable_project_boxed_opaque_existential_0(v43, v44);
    v16 = sub_225CCF874();
    v17 = v15;
    if (v16 == 0xD000000000000017 && 0x8000000225D1B6B0 == v15 || (sub_225CCF934() & 1) != 0)
    {

      __swift_mutable_project_boxed_opaque_existential_0(v43, v44);
      sub_225AB1A28(&qword_27D73C078);
      v18 = v30;
      sub_225CCF884();
      v19 = v18;
      v20 = v28[0];
      sub_225A9C018(v19, v28[0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73C660);
      __swift_mutable_project_boxed_opaque_existential_0(v43, v44);
      sub_225AB2A50(&qword_27D73C668, &qword_27D73C628);
      sub_225CCF884();
      *(v20 + *(v7 + 20)) = v38;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73C250);
      __swift_mutable_project_boxed_opaque_existential_0(v43, v44);
      sub_225AB2AE8(&qword_27D73C670, &qword_27D73C678);
      sub_225CCF884();
      v33 = v40;
      v34 = v41;
      v35 = v42;
      v31 = v38;
      v32 = v39;
      v23 = *(v12 + 3);
      v36[2] = *(v12 + 2);
      v36[3] = v23;
      v37 = *(v12 + 8);
      v24 = *(v12 + 1);
      v36[0] = *v12;
      v36[1] = v24;
      sub_225AB1E18(v36);
      v25 = v34;
      *(v12 + 2) = v33;
      *(v12 + 3) = v25;
      *(v12 + 8) = v35;
      v26 = v32;
      *v12 = v31;
      *(v12 + 1) = v26;
      __swift_destroy_boxed_opaque_existential_0(v43);
      sub_225AB26DC(v20, v29, type metadata accessor for ISO18013ReaderAuthenticationAll);
      __swift_destroy_boxed_opaque_existential_0(v45);
      return sub_225AB2744(v20, type metadata accessor for ISO18013ReaderAuthenticationAll);
    }

    *&v38 = 0;
    *(&v38 + 1) = 0xE000000000000000;
    sub_225CCF204();

    *&v38 = 0x2720726564616548;
    *(&v38 + 1) = 0xE800000000000000;
    MEMORY[0x22AA6CE70](v16, v17);

    MEMORY[0x22AA6CE70](0xD000000000000012, 0x8000000225D1B690);
    MEMORY[0x22AA6CE70](0xD000000000000017, 0x8000000225D1B6B0);
    MEMORY[0x22AA6CE70](39, 0xE100000000000000);
    sub_225CCF2D4();
    swift_allocError();
    sub_225CCF274();

    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_0(v43);
  }

  __swift_destroy_boxed_opaque_existential_0(v45);
  v21 = *(v12 + 3);
  v40 = *(v12 + 2);
  v41 = v21;
  v42 = *(v12 + 8);
  v22 = *(v12 + 1);
  v38 = *v12;
  v39 = v22;
  return sub_225AB1E18(&v38);
}

uint64_t sub_225AB26DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_225AB2744(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t ISO18013ReaderAuthenticationAll.encode(to:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225CCFCC4();
  __swift_mutable_project_boxed_opaque_existential_0(v22, v23);
  sub_225CCF8B4();
  if (!v2)
  {
    __swift_mutable_project_boxed_opaque_existential_0(v22, v23);
    type metadata accessor for ISO18013SessionTranscript(0);
    sub_225AB1A28(&qword_27D73B048);
    sub_225CCF8C4();
    v3 = type metadata accessor for ISO18013ReaderAuthenticationAll();
    v21 = *(v1 + *(v3 + 20));
    __swift_mutable_project_boxed_opaque_existential_0(v22, v23);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73C660);
    sub_225AB2A50(&qword_27D73C688, &qword_27D73C630);
    sub_225CCF8C4();
    v4 = v1 + *(v3 + 24);
    v5 = *(v4 + 16);
    v6 = *(v4 + 48);
    v18 = *(v4 + 32);
    v19 = v6;
    v7 = *(v4 + 16);
    v17[0] = *v4;
    v17[1] = v7;
    v8 = *(v4 + 48);
    v14 = v18;
    v15 = v8;
    v20 = *(v4 + 64);
    v16 = *(v4 + 64);
    v12 = v17[0];
    v13 = v5;
    __swift_mutable_project_boxed_opaque_existential_0(v22, v23);
    sub_225AB2064(v17, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73C250);
    sub_225AB2AE8(&qword_27D73C690, &qword_27D73C698);
    sub_225CCF8C4();
    v10[2] = v14;
    v10[3] = v15;
    v11 = v16;
    v10[0] = v12;
    v10[1] = v13;
    sub_225AB1E18(v10);
  }

  return __swift_destroy_boxed_opaque_existential_0(v22);
}

uint64_t sub_225AB2A50(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D73C660);
    sub_2259D8B24(a2, &qword_27D73AD30);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_225AB2AE8(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D73C250);
    sub_2259D8B24(a2, &qword_27D73C680);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_225AB2BD8()
{
  type metadata accessor for ISO18013SessionTranscript(319);
  if (v0 <= 0x3F)
  {
    sub_225AB2CCC(319, &qword_27D73C6B0, &qword_27D73AD30, &unk_225CE0360, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      sub_225AB2CCC(319, &qword_27D73C6B8, &qword_27D73C680, &unk_225CE04B0, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_225AB2CCC(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_225AB2D30(int a1)
{
  v2._object = &qword_27D73C6C0;
  v2._countAndFlagsBits = 3157553;
  return sub_225AB2DB4(a1, v2);
}

unint64_t sub_225AB2D68(int a1)
{
  v2._object = &qword_27D73C6D0;
  v2._countAndFlagsBits = 3223089;
  return sub_225AB2DB4(a1, v2);
}

unint64_t sub_225AB2DA0(int a1)
{
  v2._object = &qword_27D73C6E0;
  v2._countAndFlagsBits = 3157554;
  return sub_225AB2DB4(a1, v2);
}

unint64_t sub_225AB2DB4(int a1, Swift::String a2)
{
  object = a2._object;
  v3._countAndFlagsBits = a2._countAndFlagsBits;
  v3._object = 0xE300000000000000;
  result = ISO18013Version.init(_:)(v3);
  if (v7)
  {
    v5 = 0uLL;
  }

  else
  {
    v5 = v6;
  }

  *object = v5;
  return result;
}

__n128 sub_225AB2E28@<Q0>(void *a1@<X0>, __n128 *a2@<X1>, __n128 *a3@<X8>)
{
  if (*a1 != -1)
  {
    v4 = a2;
    v5 = a3;
    swift_once();
    a3 = v5;
    a2 = v4;
  }

  result = *a2;
  *a3 = *a2;
  return result;
}

__n128 ISO18013ReaderRequest.version.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

__n128 ISO18013ReaderRequest.version.setter(__n128 *a1)
{
  result = *a1;
  *v1 = *a1;
  return result;
}

uint64_t ISO18013ReaderRequest.docRequests.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t ISO18013ReaderRequest.deviceRequestInfo.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 72);
  v9 = *(v1 + 56);
  v10 = v3;
  v11 = *(v1 + 88);
  v4 = v11;
  v8[0] = *(v1 + 24);
  v5 = v8[0];
  v8[1] = v2;
  *(a1 + 32) = v9;
  *(a1 + 48) = v3;
  *(a1 + 64) = v4;
  *a1 = v5;
  *(a1 + 16) = v2;
  return sub_225A0DE54(v8, v7, &qword_27D73C250);
}

__n128 ISO18013ReaderRequest.deviceRequestInfo.setter(__int128 *a1)
{
  v3 = *(v1 + 40);
  v4 = *(v1 + 72);
  v8[2] = *(v1 + 56);
  v8[3] = v4;
  v9 = *(v1 + 88);
  v8[0] = *(v1 + 24);
  v8[1] = v3;
  sub_2259CB640(v8, &qword_27D73C250);
  v5 = *a1;
  *(v1 + 40) = a1[1];
  result = a1[2];
  v7 = a1[3];
  *(v1 + 56) = result;
  *(v1 + 72) = v7;
  *(v1 + 88) = *(a1 + 8);
  *(v1 + 24) = v5;
  return result;
}

uint64_t ISO18013ReaderRequest.readerAuthAll.setter(uint64_t a1)
{

  *(v1 + 96) = a1;
  return result;
}

uint64_t sub_225AB3068()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

uint64_t sub_225AB3144()
{
  sub_225CCE5B4();
}

uint64_t sub_225AB320C()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

uint64_t sub_225AB32E4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_225ABF970();
  *a1 = result;
  return result;
}

void sub_225AB3314(unint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x6E6F6973726576;
  v4 = 0x8000000225D0B6A0;
  v5 = 0xD000000000000011;
  if (*v1 != 2)
  {
    v5 = 0x7541726564616572;
    v4 = 0xED00006C6C416874;
  }

  if (*v1)
  {
    v3 = 0x6575716552636F64;
    v2 = 0xEB00000000737473;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_225AB33AC()
{
  v1 = 0x6E6F6973726576;
  v2 = 0xD000000000000011;
  if (*v0 != 2)
  {
    v2 = 0x7541726564616572;
  }

  if (*v0)
  {
    v1 = 0x6575716552636F64;
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

uint64_t sub_225AB3440@<X0>(_BYTE *a1@<X8>)
{
  result = sub_225ABF970();
  *a1 = result;
  return result;
}

uint64_t sub_225AB3468(uint64_t a1)
{
  v2 = sub_225AB4124();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225AB34A4(uint64_t a1)
{
  v2 = sub_225AB4124();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_225AB34E0(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 50;
  }

  else
  {
    v2 = 49;
  }

  if (*a2)
  {
    v3 = 50;
  }

  else
  {
    v3 = 49;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_225CCF934();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_225AB354C()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

uint64_t sub_225AB35A8()
{
  sub_225CCE5B4();
}

uint64_t sub_225AB35E8()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

void sub_225AB364C(uint64_t *a1@<X8>)
{
  v2 = 49;
  if (*v1)
  {
    v2 = 50;
  }

  *a1 = v2;
  a1[1] = 0xE100000000000000;
}

uint64_t sub_225AB3668()
{
  if (*v0)
  {
    return 50;
  }

  else
  {
    return 49;
  }
}

uint64_t sub_225AB368C(uint64_t a1)
{
  v2 = sub_225AB3FD0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225AB36C8(uint64_t a1)
{
  v2 = sub_225AB3FD0();

  return MEMORY[0x2821FE720](a1, v2);
}

__n128 ISO18013ReaderRequest.init(version:docRequests:deviceRequestInfo:readerAuthAll:)@<Q0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *(a5 + 32) = 0;
  *(a5 + 40) = 0;
  *(a5 + 48) = 1;
  *(a5 + 56) = 0u;
  *(a5 + 72) = 0u;
  *(a5 + 88) = 0;
  *a5 = *a1;
  *(a5 + 16) = a2;
  *(a5 + 24) = 0;
  v15 = 0;
  v8 = *(a5 + 72);
  v14[2] = *(a5 + 56);
  v14[3] = v8;
  v9 = *(a5 + 40);
  v14[0] = *(a5 + 24);
  v14[1] = v9;
  sub_2259CB640(v14, &qword_27D73C250);
  v10 = *a3;
  *(a5 + 40) = a3[1];
  result = a3[2];
  v12 = a3[3];
  *(a5 + 56) = result;
  *(a5 + 72) = v12;
  v13 = *(a3 + 8);
  *(a5 + 24) = v10;
  *(a5 + 88) = v13;
  *(a5 + 96) = a4;
  return result;
}

uint64_t ISO18013ReaderRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73C6F0);
  v42 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v33 - v6;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73C6F8);
  v43 = *(v66 - 8);
  MEMORY[0x28223BE20](v66, v8);
  v10 = &v33 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  Decoder.codingKeyFormat.getter(&v65);
  v11 = v65;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if ((v11 & 1) == 0)
  {
    sub_225AB4124();
    sub_225CCFCA4();
    if (!v2)
    {
      LOBYTE(v47) = 0;
      sub_225A94CA8();
      sub_225CCF6E4();
      v14 = v54;
      v15 = v55;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73C708);
      LOBYTE(v47) = 1;
      sub_225AB4024();
      sub_225CCF6E4();
      v35 = v54;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73C680);
      v46 = 2;
      sub_2259D8B24(&qword_27D73C678, &qword_27D73C680);
      sub_225CCF674();
      v37 = v15;
      v38 = v14;
      v34 = v54;
      v36 = v55;
      v42 = v56;
      v40 = v57;
      v23 = *(&v58 + 1);
      v39 = v58;
      v25 = *(&v59 + 1);
      v24 = v59;
      v26 = v60;
      v47 = 0uLL;
      *&v48 = 0;
      *(&v48 + 1) = 1;
      v49 = 0u;
      v50 = 0u;
      *&v51 = 0;
      sub_2259CB640(&v47, &qword_27D73C250);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73C728);
      v44 = 3;
      sub_225AB4178();
      sub_225CCF674();
      (*(v43 + 8))(v10, v66);
      v27 = v45;
      v17 = v35;
      v19 = v34;
      v20 = v36;
      v21 = v42;
      v18 = v40;
      v22 = v39;
      goto LABEL_7;
    }

LABEL_5:
    __swift_destroy_boxed_opaque_existential_0(a1);
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v57 = 1;
    v58 = 0uLL;
    v59 = 0uLL;
    v60 = 0;
    return sub_2259CB640(&v54, &qword_27D73C250);
  }

  sub_225AB3FD0();
  sub_225CCFCA4();
  if (v2)
  {
    goto LABEL_5;
  }

  LOBYTE(v47) = 0;
  sub_225A94CA8();
  sub_225CCF6E4();
  v12 = v54;
  v13 = v55;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73C708);
  LOBYTE(v45) = 1;
  sub_225AB4024();
  sub_225CCF6E4();
  v37 = v13;
  v38 = v12;
  (*(v42 + 8))(v7, v4);
  v17 = v47;
  v54 = 0;
  v55 = 0;
  v56 = 0;
  v18 = 1;
  v57 = 1;
  v58 = 0u;
  v59 = 0u;
  v60 = 0;
  sub_2259CB640(&v54, &qword_27D73C250);
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0;
LABEL_7:
  v36 = v20;
  v40 = v18;
  v39 = v22;
  v66 = v27;
  v42 = v21;
  *&v47 = v38;
  *(&v47 + 1) = v37;
  *&v48 = v17;
  *(&v48 + 1) = v19;
  *&v49 = v20;
  *(&v49 + 1) = v21;
  *&v50 = v18;
  *(&v50 + 1) = v22;
  *&v51 = v23;
  *(&v51 + 1) = v24;
  *&v52 = v25;
  *(&v52 + 1) = v26;
  v53 = v27;
  v28 = v41;
  *(v41 + 96) = v27;
  v29 = v52;
  v28[4] = v51;
  v28[5] = v29;
  v30 = v48;
  *v28 = v47;
  v28[1] = v30;
  v31 = v50;
  v28[2] = v49;
  v28[3] = v31;
  v32 = v19;
  sub_225AA802C(&v47, &v54);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v54 = v38;
  v55 = v37;
  v56 = v17;
  v57 = v32;
  *&v58 = v36;
  *(&v58 + 1) = v42;
  *&v59 = v40;
  *(&v59 + 1) = v39;
  v60 = v23;
  v61 = v24;
  v62 = v25;
  v63 = v26;
  v64 = v66;
  return sub_225AA8088(&v54);
}

unint64_t sub_225AB3FD0()
{
  result = qword_27D73C700;
  if (!qword_27D73C700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C700);
  }

  return result;
}

unint64_t sub_225AB4024()
{
  result = qword_27D73C710;
  if (!qword_27D73C710)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D73C708);
    sub_225ABFB68(&qword_27D73C718, type metadata accessor for ISO18013ReaderRequest.DocRequest);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C710);
  }

  return result;
}

uint64_t type metadata accessor for ISO18013ReaderRequest.DocRequest()
{
  result = qword_27D73C958;
  if (!qword_27D73C958)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_225AB4124()
{
  result = qword_27D73C720;
  if (!qword_27D73C720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C720);
  }

  return result;
}

unint64_t sub_225AB4178()
{
  result = qword_27D73C730;
  if (!qword_27D73C730)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D73C728);
    sub_225ABFB68(&qword_27D73AC50, MEMORY[0x277CF3948]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C730);
  }

  return result;
}

uint64_t ISO18013ReaderRequest.encode(to:)(void *a1)
{
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73C738);
  v22 = *(v23 - 8);
  MEMORY[0x28223BE20](v23, v3);
  v5 = &v20 - v4;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73C740);
  v24 = *(v25 - 8);
  MEMORY[0x28223BE20](v25, v6);
  v8 = &v20 - v7;
  v9 = *v1;
  v10 = v1[1];
  v21 = v1[2];
  v11 = *(v1 + 5);
  v12 = *(v1 + 9);
  v39 = *(v1 + 7);
  v40 = v12;
  v13 = v1[11];
  v20 = v1[12];
  v41 = v13;
  v37 = *(v1 + 3);
  v38 = v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  Encoder.codingKeyFormat.getter(&v36);
  v14 = v36;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (v14)
  {
    sub_225AB3FD0();
    sub_225CCFCE4();
    *&v31 = v9;
    *(&v31 + 1) = v10;
    LOBYTE(v28[0]) = 0;
    sub_225A945D8();
    v15 = v23;
    v16 = v42;
    sub_225CCF7E4();
    if (!v16)
    {
      *&v31 = v21;
      LOBYTE(v28[0]) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73C708);
      sub_225AB4758();
      sub_225CCF7E4();
    }

    return (*(v22 + 8))(v5, v15);
  }

  else
  {
    sub_225AB4124();
    sub_225CCFCE4();
    *&v31 = v9;
    *(&v31 + 1) = v10;
    LOBYTE(v28[0]) = 0;
    sub_225A945D8();
    v18 = v25;
    v19 = v42;
    sub_225CCF7E4();
    if (!v19)
    {
      *&v31 = v21;
      LOBYTE(v28[0]) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73C708);
      sub_225AB4758();
      sub_225CCF7E4();
      v34 = v40;
      v35 = v41;
      v32 = v38;
      v33 = v39;
      v31 = v37;
      v30 = 2;
      sub_225A0DE54(&v37, v28, &qword_27D73C250);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73C250);
      sub_225AB480C();
      sub_225CCF7E4();
      v28[2] = v33;
      v28[3] = v34;
      v29 = v35;
      v28[1] = v32;
      v28[0] = v31;
      sub_2259CB640(v28, &qword_27D73C250);
      v27 = v20;
      v26 = 3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73C758);
      sub_225AB48BC();
      sub_225CCF7E4();
    }

    return (*(v24 + 8))(v8, v18);
  }
}

unint64_t sub_225AB4758()
{
  result = qword_27D73C748;
  if (!qword_27D73C748)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D73C708);
    sub_225ABFB68(&qword_27D73C750, type metadata accessor for ISO18013ReaderRequest.DocRequest);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C748);
  }

  return result;
}

unint64_t sub_225AB480C()
{
  result = qword_27D73C690;
  if (!qword_27D73C690)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D73C250);
    sub_2259D8B24(&qword_27D73C698, &qword_27D73C680);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C690);
  }

  return result;
}

unint64_t sub_225AB48BC()
{
  result = qword_27D73C760;
  if (!qword_27D73C760)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D73C758);
    sub_225AB4940();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C760);
  }

  return result;
}

unint64_t sub_225AB4940()
{
  result = qword_27D73C768;
  if (!qword_27D73C768)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D73C728);
    sub_225ABFB68(&qword_27D73AC68, MEMORY[0x277CF3948]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C768);
  }

  return result;
}

uint64_t sub_225AB4A30()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

uint64_t sub_225AB4B00()
{
  sub_225CCE5B4();
}

uint64_t sub_225AB4BBC()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

uint64_t sub_225AB4C88@<X0>(_BYTE *a1@<X8>)
{
  result = sub_225ABF9BC();
  *a1 = result;
  return result;
}

void sub_225AB4CB8(unint64_t *a1@<X8>)
{
  v2 = 0xE800000000000000;
  v3 = 0x7365736143657375;
  v4 = 0x8000000225D0B6F0;
  v5 = 0xD00000000000003ALL;
  if (*v1 == 2)
  {
    v5 = 0xD00000000000001CLL;
  }

  else
  {
    v4 = 0x8000000225D0B710;
  }

  if (*v1)
  {
    v3 = 0xD000000000000017;
    v2 = 0x8000000225D0B6D0;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_225AB4D44()
{
  v1 = 0x7365736143657375;
  v2 = 0xD00000000000003ALL;
  if (*v0 == 2)
  {
    v2 = 0xD00000000000001CLL;
  }

  if (*v0)
  {
    v1 = 0xD000000000000017;
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

uint64_t sub_225AB4DCC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_225ABF9BC();
  *a1 = result;
  return result;
}

uint64_t sub_225AB4DF4(uint64_t a1)
{
  v2 = sub_225ABD7A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225AB4E30(uint64_t a1)
{
  v2 = sub_225ABD7A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ISO18013ReaderRequest.DeviceRequestInfo.useCases.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t ISO18013ReaderRequest.DeviceRequestInfo.externalData.getter()
{
  v1 = *(v0 + 8);
  sub_2259CB6FC(v1, *(v0 + 16));
  return v1;
}

uint64_t ISO18013ReaderRequest.DeviceRequestInfo.externalData.setter(uint64_t a1, uint64_t a2)
{
  result = sub_2259B97A8(*(v2 + 8), *(v2 + 16));
  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t ISO18013ReaderRequest.DeviceRequestInfo.logotypeIconData.getter()
{
  v1 = *(v0 + 32);
  sub_2259CB6FC(v1, *(v0 + 40));
  return v1;
}

uint64_t ISO18013ReaderRequest.DeviceRequestInfo.logotypeIconData.setter(uint64_t a1, uint64_t a2)
{
  result = sub_2259B97A8(*(v2 + 32), *(v2 + 40));
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t ISO18013ReaderRequest.DeviceRequestInfo.init(useCases:externalData:interpretWillNotRetainIntentAsDisplayOnly:logotypeIconData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = a1;
  sub_2259B97A8(0, 0xF000000000000000);
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  result = sub_2259B97A8(0, 0xF000000000000000);
  *(a7 + 32) = a5;
  *(a7 + 40) = a6;
  return result;
}

uint64_t ISO18013ReaderRequest.DeviceRequestInfo.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73C770);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v16 - v6;
  v9 = *v1;
  v8 = *(v1 + 8);
  v10 = *(v1 + 16);
  v22 = *(v1 + 24);
  v11 = *(v1 + 40);
  v17 = *(v1 + 32);
  v18 = v8;
  v16 = v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225ABD7A4();

  sub_225CCFCE4();
  v20 = v9;
  v23 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73C780);
  sub_225ABD7F8();
  v12 = v19;
  sub_225CCF774();
  if (v12)
  {
  }

  else
  {
    v13 = v16;
    v14 = v17;

    v20 = v18;
    v21 = v10;
    v23 = 1;
    sub_2259CB6FC(v18, v10);
    sub_2259D9454();
    sub_225CCF774();
    sub_2259B97A8(v20, v21);
    v20 = v14;
    v21 = v13;
    v23 = 2;
    sub_2259CB6FC(v14, v13);
    sub_225CCF774();
    sub_2259B97A8(v20, v21);
    LOBYTE(v20) = 3;
    sub_225CCF744();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t ISO18013ReaderRequest.DeviceRequestInfo.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(v2 + 40);
  if (*v2)
  {
    sub_225CCFBF4();
    sub_225ABCAA8(a1, v4);
  }

  else
  {
    sub_225CCFBF4();
  }

  if (v5 >> 60 == 15)
  {
    sub_225CCFBF4();
    if (v6 == 2)
    {
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  sub_225CCFBF4();
  sub_225CCCFB4();
  if (v6 != 2)
  {
LABEL_6:
    sub_225CCFBF4();
  }

LABEL_8:
  sub_225CCFBF4();
  if (v7 >> 60 == 15)
  {
    return sub_225CCFBF4();
  }

  sub_225CCFBF4();

  return sub_225CCCFB4();
}

uint64_t ISO18013ReaderRequest.DeviceRequestInfo.hashValue.getter()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 24);
  v5 = *v0;
  v6 = v1;
  v7 = v2;
  v8 = v0[2];
  sub_225CCFBD4();
  ISO18013ReaderRequest.DeviceRequestInfo.hash(into:)(v4);
  return sub_225CCFC24();
}

uint64_t ISO18013ReaderRequest.DeviceRequestInfo.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73C798);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v17 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225ABD7A4();
  sub_225CCFCA4();
  if (v2)
  {
    v14 = 0;
    v11 = 0;
    v13 = 0xF000000000000000;
    v12 = 0xF000000000000000;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73C780);
    v23 = 0;
    sub_225ABD8D0();
    sub_225CCF674();
    v20 = v21;
    v23 = 1;
    sub_2259D94A8();
    sub_225CCF674();
    v18 = a2;
    v19 = v6;
    v11 = v21;
    v12 = v22;
    sub_2259B97A8(0, 0xF000000000000000);
    v23 = 2;
    sub_225CCF674();
    v14 = v21;
    v13 = v22;
    sub_2259B97A8(0, 0xF000000000000000);
    LOBYTE(v21) = 3;
    v15 = sub_225CCF634();
    (*(v19 + 8))(v9, v5);
    v16 = v18;
    *v18 = v20;
    v16[1] = v11;
    v16[2] = v12;
    *(v16 + 24) = v15;
    v16[4] = v14;
    v16[5] = v13;

    sub_2259CB6FC(v11, v12);
    sub_2259CB6FC(v14, v13);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);

  sub_2259B97A8(v11, v12);
  return sub_2259B97A8(v14, v13);
}

uint64_t sub_225AB57D4()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 24);
  v5 = *v0;
  v6 = v1;
  v7 = v2;
  v8 = v0[2];
  sub_225CCFBD4();
  ISO18013ReaderRequest.DeviceRequestInfo.hash(into:)(v4);
  return sub_225CCFC24();
}

uint64_t sub_225AB583C()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 24);
  v5 = *v0;
  v6 = v1;
  v7 = v2;
  v8 = v0[2];
  sub_225CCFBD4();
  ISO18013ReaderRequest.DeviceRequestInfo.hash(into:)(v4);
  return sub_225CCFC24();
}

uint64_t sub_225AB58B8()
{
  sub_225CCE5B4();
}

uint64_t sub_225AB59B4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_225ABFA08();
  *a1 = result;
  return result;
}

void sub_225AB59E4(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000017;
  v3 = *v1;
  v4 = "ain-intent-as-display-only";
  v5 = "com.apple.external-data";
  v6 = 0xD00000000000001CLL;
  if (v3 != 5)
  {
    v6 = 0xD00000000000003ALL;
    v5 = "com.apple.logotype-icon-data";
  }

  v7 = "maximumResponseSize";
  v8 = 0xD000000000000014;
  if (v3 != 3)
  {
    v8 = 0xD000000000000017;
    v7 = "o";
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = "alternativeDataElements";
  v10 = 0xD000000000000011;
  if (v3 != 1)
  {
    v10 = 0xD000000000000013;
    v9 = "issuerIdentifiers";
  }

  if (*v1)
  {
    v2 = v10;
    v4 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v2 = v6;
    v11 = v5;
  }

  *a1 = v2;
  a1[1] = v11 | 0x8000000000000000;
}

unint64_t sub_225AB5AAC()
{
  v1 = 0xD000000000000017;
  v2 = *v0;
  v3 = 0xD00000000000001CLL;
  if (v2 != 5)
  {
    v3 = 0xD00000000000003ALL;
  }

  v4 = 0xD000000000000014;
  if (v2 != 3)
  {
    v4 = 0xD000000000000017;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000011;
  if (v2 != 1)
  {
    v5 = 0xD000000000000013;
  }

  if (*v0)
  {
    v1 = v5;
  }

  if (*v0 <= 2u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_225AB5B70@<X0>(_BYTE *a1@<X8>)
{
  result = sub_225ABFA08();
  *a1 = result;
  return result;
}

uint64_t sub_225AB5B98(uint64_t a1)
{
  v2 = sub_225ABD9A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225AB5BD4(uint64_t a1)
{
  v2 = sub_225ABD9A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ISO18013ReaderRequest.DocRequestInfo.alternativeDataElements.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t ISO18013ReaderRequest.DocRequestInfo.issuerIdentifiers.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t ISO18013ReaderRequest.DocRequestInfo.maximumResponseSize.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t ISO18013ReaderRequest.DocRequestInfo.externalData.getter()
{
  v1 = *(v0 + 32);
  sub_2259CB6FC(v1, *(v0 + 40));
  return v1;
}

uint64_t ISO18013ReaderRequest.DocRequestInfo.externalData.setter(uint64_t a1, uint64_t a2)
{
  result = sub_2259B97A8(*(v2 + 32), *(v2 + 40));
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t ISO18013ReaderRequest.DocRequestInfo.logotypeIconData.getter()
{
  v1 = *(v0 + 56);
  sub_2259CB6FC(v1, *(v0 + 64));
  return v1;
}

uint64_t ISO18013ReaderRequest.DocRequestInfo.logotypeIconData.setter(uint64_t a1, uint64_t a2)
{
  result = sub_2259B97A8(*(v2 + 56), *(v2 + 64));
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return result;
}

uint64_t ISO18013ReaderRequest.DocRequestInfo.init(alternativeDataElements:issuerIdentifiers:maximumResponseSize:uniqueDocSetRequired:externalData:interpretWillNotRetainIntentAsDisplayOnly:logotypeIconData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4 & 1;
  *(a9 + 25) = a5;
  sub_2259B97A8(0, 0xF000000000000000);
  *(a9 + 32) = a6;
  *(a9 + 40) = a7;
  *(a9 + 48) = a8;
  result = sub_2259B97A8(0, 0xF000000000000000);
  *(a9 + 56) = a10;
  *(a9 + 64) = a11;
  return result;
}

uint64_t ISO18013ReaderRequest.DocRequestInfo.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73C7B0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v19 - v7;
  v10 = *v1;
  v9 = *(v1 + 8);
  v25 = *(v1 + 16);
  v26 = v9;
  v29 = *(v1 + 24);
  v23 = *(v1 + 25);
  v11 = *(v1 + 40);
  v21 = *(v1 + 32);
  v22 = v11;
  v20 = *(v1 + 48);
  v12 = *(v1 + 64);
  v24 = *(v1 + 56);
  v13 = a1[3];
  v14 = a1;
  v16 = v15;
  __swift_project_boxed_opaque_existential_1(v14, v13);
  sub_225ABD9A8();

  sub_225CCFCE4();
  v27 = v10;
  v30 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73C7C0);
  sub_225ABD9FC();
  sub_225CCF774();
  if (v2)
  {
  }

  else
  {
    v19 = v12;
    v17 = v24;

    v27 = v26;
    v30 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73C218);
    sub_225ABDAD4();
    sub_225CCF774();
    LOBYTE(v27) = 2;
    sub_225CCF764();
    LOBYTE(v27) = 3;
    sub_225CCF744();
    v27 = v21;
    v28 = v22;
    v30 = 4;
    sub_2259CB6FC(v21, v22);
    sub_2259D9454();
    sub_225CCF774();
    sub_2259B97A8(v27, v28);
    v27 = v17;
    v28 = v19;
    v30 = 5;
    sub_2259CB6FC(v17, v19);
    sub_225CCF774();
    sub_2259B97A8(v27, v28);
    LOBYTE(v27) = 6;
    sub_225CCF744();
  }

  return (*(v5 + 8))(v8, v16);
}

uint64_t ISO18013ReaderRequest.DocRequestInfo.hash(into:)(uint64_t a1)
{
  v4 = *v1;
  v3 = *(v1 + 8);
  v5 = *(v1 + 24);
  v6 = *(v1 + 25);
  v7 = *(v1 + 40);
  v15 = *(v1 + 16);
  v8 = *(v1 + 48);
  v9 = *(v1 + 64);
  if (*v1)
  {
    sub_225CCFBF4();
    sub_225ABCB7C(a1, v4);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_10:
    sub_225CCFBF4();
    if (v5)
    {
      goto LABEL_7;
    }

    goto LABEL_11;
  }

  sub_225CCFBF4();
  if (!v3)
  {
    goto LABEL_10;
  }

LABEL_3:
  sub_225CCFBF4();
  MEMORY[0x22AA6E420](*(v3 + 16));
  v10 = *(v3 + 16);
  if (v10)
  {
    v11 = (v3 + 40);
    do
    {
      v12 = *(v11 - 1);
      v13 = *v11;
      sub_2259CB710(v12, *v11);
      sub_225CCCFB4();
      sub_2259BEF00(v12, v13);
      v11 += 2;
      --v10;
    }

    while (v10);
  }

  if (v5)
  {
LABEL_7:
    sub_225CCFBF4();
    if (v6 == 2)
    {
      goto LABEL_12;
    }

    goto LABEL_8;
  }

LABEL_11:
  sub_225CCFBF4();
  MEMORY[0x22AA6E420](v15);
  if (v6 != 2)
  {
LABEL_8:
    sub_225CCFBF4();
  }

LABEL_12:
  sub_225CCFBF4();
  if (v7 >> 60 == 15)
  {
    sub_225CCFBF4();
    if (v8 == 2)
    {
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  sub_225CCFBF4();
  sub_225CCCFB4();
  if (v8 != 2)
  {
LABEL_14:
    sub_225CCFBF4();
  }

LABEL_16:
  sub_225CCFBF4();
  if (v9 >> 60 == 15)
  {
    return sub_225CCFBF4();
  }

  sub_225CCFBF4();

  return sub_225CCCFB4();
}

uint64_t ISO18013ReaderRequest.DocRequestInfo.hashValue.getter()
{
  sub_225CCFBD4();
  ISO18013ReaderRequest.DocRequestInfo.hash(into:)(v1);
  return sub_225CCFC24();
}

uint64_t ISO18013ReaderRequest.DocRequestInfo.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73C7E0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v23 - v8;
  v51 = 1;
  v10 = a1[3];
  v29 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_225ABD9A8();
  sub_225CCFCA4();
  if (v2)
  {
    v52 = 0;
    v15 = 0xF000000000000000;
    __swift_destroy_boxed_opaque_existential_0(v29);
    v36 = 0;
    v37 = 0;
    v38 = 0;
    v39 = v51;
    v40 = 2;
    v41 = *&v49[7];
    v42 = v50;
    v43 = 0;
    v44 = 0xF000000000000000;
    v45 = 2;
    *v46 = *v49;
    *&v46[3] = *&v49[3];
    v47 = v52;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73C7C0);
    LOBYTE(v30) = 0;
    sub_225ABDB88();
    sub_225CCF674();
    v28 = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73C218);
    LOBYTE(v30) = 1;
    sub_225AA2924();
    sub_225CCF674();
    v27 = v36;
    LOBYTE(v36) = 2;
    v26 = sub_225CCF664();
    v51 = v12 & 1;
    LOBYTE(v36) = 3;
    v25 = sub_225CCF634();
    LOBYTE(v30) = 4;
    sub_2259D94A8();
    sub_225CCF674();
    v13 = v36;
    v24 = v37;
    sub_2259B97A8(0, 0xF000000000000000);
    LOBYTE(v30) = 5;
    sub_225CCF674();
    v14 = a2;
    v15 = v37;
    v52 = v36;
    sub_2259B97A8(0, 0xF000000000000000);
    v35 = 6;
    v16 = sub_225CCF634();
    (*(v6 + 8))(v9, v5);
    v17 = v28;
    *&v30 = v28;
    *(&v30 + 1) = v27;
    *&v31 = v26;
    HIDWORD(v23) = v51;
    BYTE8(v31) = v51;
    v18 = v25;
    BYTE9(v31) = v25;
    v19 = v24;
    *&v32 = v13;
    *(&v32 + 1) = v24;
    LOBYTE(v33) = v16;
    v20 = v52;
    *(&v33 + 1) = v52;
    v34 = v15;
    *(v14 + 64) = v15;
    v21 = v33;
    *(v14 + 32) = v32;
    *(v14 + 48) = v21;
    v22 = v31;
    *v14 = v30;
    *(v14 + 16) = v22;
    sub_225ABDC60(&v30, &v36);
    __swift_destroy_boxed_opaque_existential_0(v29);
    v36 = v17;
    v37 = v27;
    v38 = v26;
    v39 = BYTE4(v23);
    v40 = v18;
    v43 = v13;
    v44 = v19;
    v45 = v16;
    v47 = v20;
  }

  v48 = v15;
  return sub_225ABDB58(&v36);
}

uint64_t sub_225AB6AE4()
{
  sub_225CCFBD4();
  ISO18013ReaderRequest.DocRequestInfo.hash(into:)(v1);
  return sub_225CCFC24();
}

uint64_t sub_225AB6B28()
{
  sub_225CCFBD4();
  ISO18013ReaderRequest.DocRequestInfo.hash(into:)(v1);
  return sub_225CCFC24();
}

uint64_t ISO18013ReaderRequest.UseCase.documentSets.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

CoreIDVShared::ISO18013ReaderRequest::UseCase __swiftcall ISO18013ReaderRequest.UseCase.init(documentSets:mandatory:)(CoreIDVShared::ISO18013ReaderRequest::UseCase documentSets, Swift::Bool mandatory)
{
  *v2 = documentSets.documentSets._rawValue;
  *(v2 + 8) = mandatory;
  documentSets.mandatory = mandatory;
  return documentSets;
}

uint64_t static ISO18013ReaderRequest.UseCase.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  return sub_225AB7990(*a1, *a2) & ~(v2 ^ v3) & 1;
}

uint64_t sub_225AB6C3C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a2 + 40);
    for (i = (a1 + 40); ; i += 7)
    {
      v5 = i[3];
      v6 = i[4];
      v7 = v3[3];
      v8 = v3[4];
      v9 = *(i - 1) == *(v3 - 1) && *i == *v3;
      if (!v9 && (sub_225CCF934() & 1) == 0)
      {
        break;
      }

      v10 = v5 == v7 && v6 == v8;
      if (!v10 && (sub_225CCF934() & 1) == 0)
      {
        break;
      }

      v3 += 7;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_225AB6D0C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 56);
    for (i = (a2 + 56); ; i += 4)
    {
      v5 = *(v3 - 1);
      v6 = *v3;
      v7 = *(i - 1);
      v8 = *i;
      v9 = *(v3 - 3) == *(i - 3) && *(v3 - 2) == *(i - 2);
      if (!v9 && (sub_225CCF934() & 1) == 0)
      {
        break;
      }

      v10 = v5 == v7 && v6 == v8;
      if (!v10 && (sub_225CCF934() & 1) == 0)
      {
        break;
      }

      v3 += 4;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_225AB6DDC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v10 = 1;
    }

    else
    {
      v3 = (a1 + 40);
      v4 = (a2 + 40);
      do
      {
        v5 = *v3;
        v6 = *(v3 - 1);
        v7 = *(v4 - 1);
        v8 = *v4;

        v9 = sub_225AB7380(v6, v7);

        if ((v9 ^ 1 | (v5 ^ v8)))
        {
          break;
        }

        v3 += 16;
        v4 += 16;
        --v2;
      }

      while (v2);
      v10 = (v9 ^ 1 | v5 ^ v8) ^ 1;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t sub_225AB6EBC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v8 = 1;
    }

    else
    {
      v3 = (a1 + 32);
      v4 = (a2 + 32);
      do
      {
        v6 = *v3++;
        v5 = v6;
        v7 = *v4++;

        v8 = sub_225AB6F74(v5, v7);

        if ((v8 & 1) == 0)
        {
          break;
        }

        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_225AB6F74(uint64_t a1, uint64_t a2)
{
  v33[3] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = 0;
    v4 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v7 = *(v4 - 1);
      v6 = *v4;
      v9 = *(i - 1);
      v8 = *i;
      v10 = *v4 >> 62;
      v11 = *i >> 62;
      if (v10 == 3)
      {
        break;
      }

      if (v10 > 1)
      {
        if (v10 == 2)
        {
          v20 = *(v7 + 16);
          v19 = *(v7 + 24);
          v17 = __OFSUB__(v19, v20);
          v13 = v19 - v20;
          if (v17)
          {
            goto LABEL_62;
          }

          goto LABEL_28;
        }

        v13 = 0;
        if (v11 <= 1)
        {
          goto LABEL_29;
        }
      }

      else if (v10)
      {
        LODWORD(v13) = HIDWORD(v7) - v7;
        if (__OFSUB__(HIDWORD(v7), v7))
        {
          goto LABEL_63;
        }

        v13 = v13;
        if (v11 <= 1)
        {
LABEL_29:
          if (v11)
          {
            LODWORD(v18) = HIDWORD(v9) - v9;
            if (__OFSUB__(HIDWORD(v9), v9))
            {
              __break(1u);
LABEL_61:
              __break(1u);
LABEL_62:
              __break(1u);
LABEL_63:
              __break(1u);
LABEL_64:
              __break(1u);
LABEL_65:
              __break(1u);
LABEL_66:
              __break(1u);
LABEL_67:
              __break(1u);
            }

            v18 = v18;
          }

          else
          {
            v18 = BYTE6(v8);
          }

          goto LABEL_33;
        }
      }

      else
      {
        v13 = BYTE6(v6);
        if (v11 <= 1)
        {
          goto LABEL_29;
        }
      }

LABEL_22:
      if (v11 != 2)
      {
        if (v13)
        {
          return 0;
        }

        goto LABEL_6;
      }

      v16 = *(v9 + 16);
      v15 = *(v9 + 24);
      v17 = __OFSUB__(v15, v16);
      v18 = v15 - v16;
      if (v17)
      {
        goto LABEL_61;
      }

LABEL_33:
      if (v13 != v18)
      {
        return 0;
      }

      if (v13 < 1)
      {
        goto LABEL_6;
      }

      if (v10 > 1)
      {
        if (v10 == 2)
        {
          v31 = v3;
          v21 = *(v7 + 16);
          v30 = *(v7 + 24);
          sub_2259CB710(v7, v6);
          sub_2259CB710(v9, v8);
          v22 = sub_225CCCA44();
          if (v22)
          {
            v23 = sub_225CCCA74();
            if (__OFSUB__(v21, v23))
            {
              goto LABEL_66;
            }

            v22 += v21 - v23;
          }

          if (__OFSUB__(v30, v21))
          {
            goto LABEL_65;
          }

          sub_225CCCA64();
          v24 = v22;
          v25 = v9;
          v26 = v8;
          v3 = v31;
          goto LABEL_54;
        }

        memset(v33, 0, 14);
        sub_2259CB710(v7, v6);
        sub_2259CB710(v9, v8);
      }

      else
      {
        if (v10)
        {
          if (v7 >> 32 < v7)
          {
            goto LABEL_64;
          }

          sub_2259CB710(v7, v6);
          sub_2259CB710(v9, v8);
          v27 = sub_225CCCA44();
          if (v27)
          {
            v28 = sub_225CCCA74();
            if (__OFSUB__(v7, v28))
            {
              goto LABEL_67;
            }

            v27 += v7 - v28;
          }

          sub_225CCCA64();
          v24 = v27;
          v25 = v9;
          v26 = v8;
LABEL_54:
          sub_225ABC240(v24, v25, v26, v33);
          sub_2259BEF00(v9, v8);
          sub_2259BEF00(v7, v6);
          if ((v33[0] & 1) == 0)
          {
            return 0;
          }

          goto LABEL_6;
        }

        v33[0] = *(v4 - 1);
        LOWORD(v33[1]) = v6;
        BYTE2(v33[1]) = BYTE2(v6);
        BYTE3(v33[1]) = BYTE3(v6);
        BYTE4(v33[1]) = BYTE4(v6);
        BYTE5(v33[1]) = BYTE5(v6);
        sub_2259CB710(v7, v6);
        sub_2259CB710(v9, v8);
      }

      sub_225ABC240(v33, v9, v8, &v32);
      sub_2259BEF00(v9, v8);
      sub_2259BEF00(v7, v6);
      if (!v32)
      {
        return 0;
      }

LABEL_6:
      v4 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    if (v7)
    {
      v12 = 0;
    }

    else
    {
      v12 = v6 == 0xC000000000000000;
    }

    v13 = 0;
    v14 = v12 && *i >> 62 == 3;
    if (v14 && !v9 && v8 == 0xC000000000000000)
    {
      goto LABEL_6;
    }

LABEL_28:
    if (v11 <= 1)
    {
      goto LABEL_29;
    }

    goto LABEL_22;
  }

  return 1;
}

uint64_t sub_225AB7380(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = a1 + 32;
  v4 = a2 + 32;
  v5 = *(a1 + 32);
  v6 = *(a2 + 32);
  v7 = *(v5 + 16);
  if (v7 != *(v6 + 16))
  {
    return 0;
  }

  v8 = 1;
  while (!v7 || v5 == v6)
  {
LABEL_51:
    result = v8 == v2;
    if (v8 != v2)
    {
      v5 = *(v3 + 8 * v8);
      v6 = *(v4 + 8 * v8++);
      v7 = *(v5 + 16);
      if (v7 == *(v6 + 16))
      {
        continue;
      }
    }

    return result;
  }

  v53 = v8;
  v54 = v4;
  v55 = v3;
  v56 = v2;
  v62 = v6 + 32;
  v63 = v5 + 32;

  v10 = 0;
  v57 = v6;
  v58 = v5;
  v59 = v7;
  while (1)
  {
    if (v10 >= *(v5 + 16))
    {
      goto LABEL_65;
    }

    if (v10 >= *(v6 + 16))
    {
      goto LABEL_66;
    }

    v11 = (v63 + 24 * v10);
    result = *v11;
    v12 = v11[1];
    v13 = v11[2];
    v64 = v10;
    v14 = (v62 + 24 * v10);
    v15 = v14[2];
    v16 = result == *v14 && v12 == v14[1];
    v67 = v13;
    if (!v16)
    {
      result = sub_225CCF934();
      if ((result & 1) == 0)
      {
        goto LABEL_60;
      }
    }

    if (v13 != v15)
    {
      break;
    }

LABEL_10:
    v10 = v64 + 1;
    if (v64 + 1 == v7)
    {

      v3 = v55;
      v2 = v56;
      v8 = v53;
      v4 = v54;
      goto LABEL_51;
    }
  }

  if (*(v13 + 16) != *(v15 + 16))
  {
LABEL_60:

    return 0;
  }

  v61 = v13 + 64;
  v17 = 1 << *(v13 + 32);
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  else
  {
    v18 = -1;
  }

  v19 = v18 & *(v13 + 64);
  v60 = (v17 + 63) >> 6;

  v20 = 0;
  v66 = v15;
  if (v19)
  {
    while (1)
    {
      v21 = __clz(__rbit64(v19));
      v65 = (v19 - 1) & v19;
LABEL_30:
      v24 = v21 | (v20 << 6);
      v25 = *(v13 + 56);
      v26 = (*(v13 + 48) + 16 * v24);
      v27 = *v26;
      v28 = v26[1];
      v29 = *(v25 + 8 * v24);

      v30 = sub_2259F18D4(v27, v28);
      v32 = v31;

      if ((v32 & 1) == 0)
      {
        break;
      }

      v33 = *(*(v15 + 56) + 8 * v30);
      v13 = v67;
      if (v33 != v29)
      {
        if (*(v33 + 16) == *(v29 + 16))
        {
          v68 = v29;
          v34 = v33 + 64;
          v35 = 1 << *(v33 + 32);
          if (v35 < 64)
          {
            v36 = ~(-1 << v35);
          }

          else
          {
            v36 = -1;
          }

          v37 = v36 & *(v33 + 64);
          v38 = (v35 + 63) >> 6;

          v39 = 0;
          while (v37)
          {
            v40 = __clz(__rbit64(v37));
            v69 = (v37 - 1) & v37;
LABEL_44:
            v43 = v40 | (v39 << 6);
            v44 = result;
            v45 = (*(result + 48) + 16 * v43);
            v46 = *v45;
            v47 = v45[1];
            v48 = *(*(result + 56) + v43);

            v49 = sub_2259F18D4(v46, v47);
            v51 = v50;

            if (v51)
            {
              v52 = *(*(v68 + 56) + v49);
              v15 = v66;
              result = v44;
              v37 = v69;
              if (v48 == v52)
              {
                continue;
              }
            }

            goto LABEL_59;
          }

          v41 = v39;
          while (1)
          {
            v39 = v41 + 1;
            if (__OFADD__(v41, 1))
            {
              break;
            }

            if (v39 >= v38)
            {

              v7 = v59;
              v13 = v67;
              goto LABEL_48;
            }

            v42 = *(v34 + 8 * v39);
            ++v41;
            if (v42)
            {
              v40 = __clz(__rbit64(v42));
              v69 = (v42 - 1) & v42;
              goto LABEL_44;
            }
          }

          __break(1u);
          goto LABEL_64;
        }

        break;
      }

LABEL_48:

      v19 = v65;
      if (!v65)
      {
        goto LABEL_25;
      }
    }

LABEL_59:

    goto LABEL_60;
  }

LABEL_25:
  v22 = v20;
  while (1)
  {
    v20 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v20 >= v60)
    {

      v6 = v57;
      v5 = v58;
      goto LABEL_10;
    }

    v23 = *(v61 + 8 * v20);
    ++v22;
    if (v23)
    {
      v21 = __clz(__rbit64(v23));
      v65 = (v23 - 1) & v23;
      goto LABEL_30;
    }
  }

LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
  return result;
}

uint64_t sub_225AB7840(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    do
    {
      v6 = *v3;
      v7 = *v4;
      if (v6 == 1)
      {
        v8 = 0xD000000000000020;
      }

      else
      {
        v8 = 0x6E776F6E6B6E75;
      }

      if (v6 == 1)
      {
        v9 = 0x8000000225D0CB80;
      }

      else
      {
        v9 = 0xE700000000000000;
      }

      if (*v3)
      {
        v10 = v8;
      }

      else
      {
        v10 = 0xD000000000000024;
      }

      if (*v3)
      {
        v11 = v9;
      }

      else
      {
        v11 = 0x8000000225D0CB50;
      }

      if (v7 == 1)
      {
        v12 = 0xD000000000000020;
      }

      else
      {
        v12 = 0x6E776F6E6B6E75;
      }

      if (v7 == 1)
      {
        v13 = 0x8000000225D0CB80;
      }

      else
      {
        v13 = 0xE700000000000000;
      }

      if (*v4)
      {
        v14 = v12;
      }

      else
      {
        v14 = 0xD000000000000024;
      }

      if (*v4)
      {
        v15 = v13;
      }

      else
      {
        v15 = 0x8000000225D0CB50;
      }

      if (v10 == v14 && v11 == v15)
      {
      }

      else
      {
        v5 = sub_225CCF934();

        if ((v5 & 1) == 0)
        {
          return 0;
        }
      }

      ++v3;
      ++v4;
      --v2;
    }

    while (v2);
  }

  return 1;
}

BOOL sub_225AB7990(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = a1 + 32;
    v4 = *(a1 + 32);
    v5 = *(a2 + 32);
    v6 = *(v4 + 16);
    if (v6 == *(v5 + 16))
    {
      v7 = 1;
      while (!v6 || v4 == v5)
      {
LABEL_11:
        result = v7 == v2;
        if (v7 != v2)
        {
          v4 = *(v3 + 8 * v7);
          v5 = *(a2 + 32 + 8 * v7++);
          v6 = *(v4 + 16);
          if (v6 == *(v5 + 16))
          {
            continue;
          }
        }

        return result;
      }

      v8 = (v4 + 32);
      v9 = (v5 + 32);
      while (*v8 == *v9)
      {
        ++v8;
        ++v9;
        if (!--v6)
        {
          goto LABEL_11;
        }
      }
    }

    return 0;
  }

  return 1;
}

BOOL sub_225AB7A48(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = a2 + 32;
    v17 = a1 + 32;
    v4 = *(a1 + 32);
    v5 = *(a2 + 32);
    v6 = *(v4 + 16);
    if (v6 == *(v5 + 16))
    {
      v7 = 1;
      while (!v6 || v4 == v5)
      {
LABEL_21:
        result = v7 == v2;
        if (v7 != v2)
        {
          v4 = *(v17 + 8 * v7);
          v5 = *(v3 + 8 * v7++);
          v6 = *(v4 + 16);
          if (v6 == *(v5 + 16))
          {
            continue;
          }
        }

        return result;
      }

      v8 = (v4 + 56);
      v9 = (v5 + 56);
      while (1)
      {
        v10 = *(v8 - 1);
        v11 = *v8;
        v12 = *(v9 - 1);
        v13 = *v9;
        v14 = *(v8 - 3) == *(v9 - 3) && *(v8 - 2) == *(v9 - 2);
        if (!v14 && (sub_225CCF934() & 1) == 0)
        {
          break;
        }

        v15 = v10 == v12 && v11 == v13;
        if (!v15 && (sub_225CCF934() & 1) == 0)
        {
          break;
        }

        v8 += 4;
        v9 += 4;
        if (!--v6)
        {
          goto LABEL_21;
        }
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_225AB7B90(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v8 = 1;
    }

    else
    {
      v3 = (a1 + 40);
      v4 = (a2 + 40);
      do
      {
        v5 = *v3;
        v6 = *v4;
        v7 = !sub_225AB7990(*(v3 - 1), *(v4 - 1)) | v5 ^ v6;
        if (v7)
        {
          break;
        }

        v3 += 16;
        v4 += 16;
        --v2;
      }

      while (v2);
      v8 = v7 ^ 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_225AB7C3C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 64);
    for (i = (a2 + 64); ; i += 5)
    {
      v5 = *(v3 - 2);
      v6 = *(v3 - 1);
      v7 = *v3;
      v8 = *(i - 2);
      v9 = *(i - 1);
      v10 = *i;
      v11 = *(v3 - 4) == *(i - 4) && *(v3 - 3) == *(i - 3);
      if (!v11 && (sub_225CCF934() & 1) == 0)
      {
        break;
      }

      v12 = v5 == v8 && v6 == v9;
      if (!v12 && (sub_225CCF934() & 1) == 0 || !sub_225AB7A48(v7, v10))
      {
        break;
      }

      v3 += 5;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_225AB7D28(uint64_t a1, uint64_t a2)
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
      if (!v5 && (sub_225CCF934() & 1) == 0)
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

uint64_t sub_225AB7DB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AnyCodable() - 8;
  v6 = MEMORY[0x28223BE20](v4, v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v12 = &v20 - v11;
  v13 = *(a1 + 16);
  if (v13 == *(a2 + 16))
  {
    if (!v13 || a1 == a2)
    {
      v18 = 1;
    }

    else
    {
      v14 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v15 = a1 + v14;
      v16 = a2 + v14;
      v17 = *(v10 + 72);
      do
      {
        sub_225ABFAA0(v15, v12, type metadata accessor for AnyCodable);
        sub_225ABFAA0(v16, v8, type metadata accessor for AnyCodable);
        v18 = static AnyCodable.== infix(_:_:)(v12, v8);
        sub_225ABFB08(v8, type metadata accessor for AnyCodable);
        sub_225ABFB08(v12, type metadata accessor for AnyCodable);
        if ((v18 & 1) == 0)
        {
          break;
        }

        v16 += v17;
        v15 += v17;
        --v13;
      }

      while (v13);
    }
  }

  else
  {
    v18 = 0;
  }

  return v18 & 1;
}

uint64_t sub_225AB7F60(unint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v5)
    {
      goto LABEL_29;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a2 < 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_29:
      v19 = 1;
      return v19 & 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    type metadata accessor for SecCertificate(0);
    v4 = v11;
    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v12 = a2 & 0xC000000000000001;
      v13 = 4;
      while (1)
      {
        v14 = v13 - 4;
        v15 = v13 - 3;
        if (__OFADD__(v13 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v16 = MEMORY[0x22AA6DA80](v13 - 4, v3);
          if (!v12)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v14 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v16 = *(v3 + 8 * v13);
          if (!v12)
          {
LABEL_24:
            if (v14 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v17 = *(a2 + 8 * v13);
            goto LABEL_26;
          }
        }

        v17 = MEMORY[0x22AA6DA80](v13 - 4, a2);
LABEL_26:
        v18 = v17;
        sub_225ABFB68(&qword_27D73CA68, type metadata accessor for SecCertificate);
        v19 = sub_225CCD4F4();

        if (v19)
        {
          ++v13;
          if (v15 != v5)
          {
            continue;
          }
        }

        return v19 & 1;
      }
    }

    v20 = (v3 + 32);
    v21 = (a2 + 32);
    v22 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    a2 = v5 - 1;
    while (1)
    {
      if (!v22)
      {
        goto LABEL_40;
      }

      if (!v23)
      {
        break;
      }

      v25 = *v20++;
      v24 = v25;
      v26 = *v21++;
      v3 = sub_225ABFB68(&qword_27D73CA68, type metadata accessor for SecCertificate);
      v27 = v24;
      v28 = v26;
      v19 = sub_225CCD4F4();

      v30 = a2-- != 0;
      if (v19)
      {
        --v23;
        --v22;
        if (v30)
        {
          continue;
        }
      }

      return v19 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v5 = sub_225CCF144();
  }

  result = sub_225CCF144();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v19 = 0;
  return v19 & 1;
}

uint64_t sub_225AB821C()
{
  if (*v0)
  {
    return 0x726F7461646E616DLL;
  }

  else
  {
    return 0x746E656D75636F64;
  }
}

uint64_t sub_225AB8264@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746E656D75636F64 && a2 == 0xEC00000073746553;
  if (v6 || (sub_225CCF934() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x726F7461646E616DLL && a2 == 0xE900000000000079)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_225CCF934();

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

uint64_t sub_225AB834C(uint64_t a1)
{
  v2 = sub_225ABDC98();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225AB8388(uint64_t a1)
{
  v2 = sub_225ABDC98();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ISO18013ReaderRequest.UseCase.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73C7F8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = v11 - v7;
  v9 = *v1;
  v11[2] = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225ABDC98();

  sub_225CCFCE4();
  v14 = v9;
  v13 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73C808);
  sub_225ABDCEC();
  sub_225CCF7E4();

  if (!v2)
  {
    v12 = 1;
    sub_225CCF794();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t ISO18013ReaderRequest.UseCase.hashValue.getter()
{
  v1 = *v0;
  sub_225CCFBD4();
  sub_225ABC924(v3, v1);
  sub_225CCFBF4();
  return sub_225CCFC24();
}

uint64_t ISO18013ReaderRequest.UseCase.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73C820);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v13[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225ABDC98();
  sub_225CCFCA4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73C808);
  v13[15] = 0;
  sub_225ABDD88();
  sub_225CCF6E4();
  v10 = v14;
  v13[14] = 1;
  v11 = sub_225CCF694();
  (*(v6 + 8))(v9, v5);
  *a2 = v10;
  *(a2 + 8) = v11 & 1;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_225AB882C()
{
  v1 = *v0;
  sub_225CCFBD4();
  sub_225ABC924(v3, v1);
  sub_225CCFBF4();
  return sub_225CCFC24();
}

uint64_t sub_225AB88C4()
{
  v1 = *v0;
  sub_225CCFBD4();
  sub_225ABC924(v3, v1);
  sub_225CCFBF4();
  return sub_225CCFC24();
}

uint64_t sub_225AB8920(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  return sub_225AB7990(*a1, *a2) & ~(v2 ^ v3) & 1;
}

uint64_t ISO18013ReaderRequest.DocRequest.itemsRequest.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  v4 = *(v1 + 96);
  v12 = *(v1 + 80);
  v3 = v12;
  v13 = v4;
  v14 = *(v1 + 112);
  v5 = v14;
  v6 = *(v1 + 16);
  v11[0] = *v1;
  v7 = *(v1 + 32);
  v8 = *(v1 + 48);
  v11[1] = v6;
  v11[2] = v7;
  v11[3] = v8;
  v11[4] = v2;
  *a1 = v11[0];
  *(a1 + 16) = v6;
  *(a1 + 32) = v7;
  *(a1 + 48) = v8;
  *(a1 + 64) = v2;
  *(a1 + 80) = v3;
  *(a1 + 96) = v4;
  *(a1 + 112) = v5;
  return sub_225A0DE54(v11, v10, &qword_27D73AD30);
}

__n128 ISO18013ReaderRequest.DocRequest.itemsRequest.setter(uint64_t a1)
{
  v3 = *(v1 + 80);
  v10[4] = *(v1 + 64);
  v10[5] = v3;
  v10[6] = *(v1 + 96);
  v11 = *(v1 + 112);
  v4 = *(v1 + 16);
  v10[0] = *v1;
  v10[1] = v4;
  v5 = *(v1 + 48);
  v10[2] = *(v1 + 32);
  v10[3] = v5;
  sub_2259CB640(v10, &qword_27D73AD30);
  v6 = *(a1 + 80);
  *(v1 + 64) = *(a1 + 64);
  *(v1 + 80) = v6;
  *(v1 + 96) = *(a1 + 96);
  *(v1 + 112) = *(a1 + 112);
  v7 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v7;
  result = *(a1 + 32);
  v9 = *(a1 + 48);
  *(v1 + 32) = result;
  *(v1 + 48) = v9;
  return result;
}

uint64_t ISO18013ReaderRequest.DocRequest.readerAuth.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for ISO18013ReaderRequest.DocRequest() + 20);

  return sub_225ABDE90(a1, v3);
}

uint64_t sub_225AB8B68(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x7541726564616572;
  }

  else
  {
    v3 = 0x716552736D657469;
  }

  if (v2)
  {
    v4 = 0xEC00000074736575;
  }

  else
  {
    v4 = 0xEA00000000006874;
  }

  if (*a2)
  {
    v5 = 0x7541726564616572;
  }

  else
  {
    v5 = 0x716552736D657469;
  }

  if (*a2)
  {
    v6 = 0xEA00000000006874;
  }

  else
  {
    v6 = 0xEC00000074736575;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_225CCF934();
  }

  return v8 & 1;
}

uint64_t sub_225AB8C1C()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

uint64_t sub_225AB8CAC()
{
  sub_225CCE5B4();
}

uint64_t sub_225AB8D28()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

void sub_225AB8DC0(uint64_t *a1@<X8>)
{
  v2 = 0x716552736D657469;
  if (*v1)
  {
    v2 = 0x7541726564616572;
  }

  v3 = 0xEC00000074736575;
  if (*v1)
  {
    v3 = 0xEA00000000006874;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_225AB8E0C()
{
  if (*v0)
  {
    return 0x7541726564616572;
  }

  else
  {
    return 0x716552736D657469;
  }
}

uint64_t sub_225AB8E60(uint64_t a1)
{
  v2 = sub_225ABDF54();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225AB8E9C(uint64_t a1)
{
  v2 = sub_225ABDF54();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_225AB8ED8()
{
  sub_225CCFBD4();
  sub_225CCE5B4();
  return sub_225CCFC24();
}

uint64_t sub_225AB8F20()
{
  sub_225CCFBD4();
  sub_225CCE5B4();
  return sub_225CCFC24();
}

uint64_t sub_225AB8F64@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_225CCF5D4();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_225AB8FB8@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_225CCF5D4();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_225AB9010(uint64_t a1)
{
  v2 = sub_225ABDF00();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225AB904C(uint64_t a1)
{
  v2 = sub_225ABDF00();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ISO18013ReaderRequest.DocRequest.init(itemsRequest:readerAuth:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(type metadata accessor for ISO18013ReaderRequest.DocRequest() + 20);
  v7 = sub_225CCD354();
  (*(*(v7 - 8) + 56))(a3 + v6, 1, 1, v7);
  v8 = *(a1 + 80);
  *(a3 + 64) = *(a1 + 64);
  *(a3 + 80) = v8;
  *(a3 + 96) = *(a1 + 96);
  *(a3 + 112) = *(a1 + 112);
  v9 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v9;
  v10 = *(a1 + 48);
  *(a3 + 32) = *(a1 + 32);
  *(a3 + 48) = v10;

  return sub_225ABDE90(a2, a3 + v6);
}

uint64_t ISO18013ReaderRequest.DocRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73C838);
  v42 = *(v3 - 8);
  v43 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v6 = v37 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC30);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v39 = v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73C840);
  v44 = *(v10 - 8);
  v45 = v10;
  MEMORY[0x28223BE20](v10, v11);
  v13 = v37 - v12;
  v14 = type metadata accessor for ISO18013ReaderRequest.DocRequest();
  v16 = MEMORY[0x28223BE20](v14 - 8, v15);
  v18 = v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v16 + 28);
  v20 = sub_225CCD354();
  v21 = *(v20 - 8);
  v22 = *(v21 + 56);
  v47 = v19;
  v41 = v20;
  v37[1] = v21 + 56;
  v38 = v22;
  (v22)(&v18[v19], 1, 1);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  Decoder.codingKeyFormat.getter(&v58);
  v23 = v58;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if ((v23 & 1) == 0)
  {
    sub_225ABDF54();
    v30 = v46;
    sub_225CCFCA4();
    if (!v30)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AD30);
      v57 = 0;
      sub_2259D8B24(&qword_27D73C628, &qword_27D73AD30);
      v31 = v45;
      sub_225CCF6E4();
      v33 = v53;
      *(v18 + 4) = v52;
      *(v18 + 5) = v33;
      *(v18 + 6) = v54;
      *(v18 + 14) = v55;
      v34 = v49;
      *v18 = v48;
      *(v18 + 1) = v34;
      v35 = v51;
      *(v18 + 2) = v50;
      *(v18 + 3) = v35;
      v56 = 1;
      sub_225ABFB68(&qword_27D73AC50, MEMORY[0x277CF3948]);
      v36 = v39;
      sub_225CCF674();
      (*(v44 + 8))(v13, v31);
      sub_225ABDE90(v36, &v18[v47]);
      goto LABEL_7;
    }

LABEL_6:
    __swift_destroy_boxed_opaque_existential_0(a1);
    return sub_2259CB640(&v18[v47], &qword_27D73AC30);
  }

  sub_225ABDF00();
  v24 = v46;
  sub_225CCFCA4();
  if (v24)
  {
    goto LABEL_6;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AD30);
  sub_2259D8B24(&qword_27D73C628, &qword_27D73AD30);
  v25 = v43;
  sub_225CCF6E4();
  (*(v42 + 8))(v6, v25);
  v26 = v53;
  *(v18 + 4) = v52;
  *(v18 + 5) = v26;
  *(v18 + 6) = v54;
  *(v18 + 14) = v55;
  v27 = v49;
  *v18 = v48;
  *(v18 + 1) = v27;
  v28 = v51;
  *(v18 + 2) = v50;
  *(v18 + 3) = v28;
  v29 = v47;
  sub_2259CB640(&v18[v47], &qword_27D73AC30);
  v38(&v18[v29], 1, 1, v41);
LABEL_7:
  sub_225ABFAA0(v18, v40, type metadata accessor for ISO18013ReaderRequest.DocRequest);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_225ABFB08(v18, type metadata accessor for ISO18013ReaderRequest.DocRequest);
}

uint64_t ISO18013ReaderRequest.DocRequest.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73C858);
  v29 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v29 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73C860);
  v30 = *(v7 - 8);
  v31 = v7;
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v29 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  Encoder.codingKeyFormat.getter(v58);
  if (v58[0])
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_225ABDF00();
    sub_225CCFCE4();
    v11 = v1[5];
    v12 = v1[3];
    v54 = v1[4];
    v55 = v11;
    v13 = v1[5];
    v56 = v1[6];
    v14 = v1[1];
    v50 = *v1;
    v51 = v14;
    v15 = v1[3];
    v17 = *v1;
    v16 = v1[1];
    v52 = v1[2];
    v53 = v15;
    v46 = v54;
    v47 = v13;
    v48 = v1[6];
    v42 = v17;
    v43 = v16;
    v57 = *(v1 + 14);
    v49 = *(v1 + 14);
    v44 = v52;
    v45 = v12;
    sub_225A0DE54(&v50, &v34, &qword_27D73AD30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AD30);
    sub_2259D8B24(&qword_27D73C630, &qword_27D73AD30);
    sub_225CCF7E4();
    v18 = (v29 + 8);
    v38 = v46;
    v39 = v47;
    v40 = v48;
    v41 = v49;
    v34 = v42;
    v35 = v43;
    v36 = v44;
    v37 = v45;
    sub_2259CB640(&v34, &qword_27D73AD30);
    return (*v18)(v6, v3);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_225ABDF54();
    sub_225CCFCE4();
    v20 = v1[5];
    v21 = v1[3];
    v54 = v1[4];
    v55 = v20;
    v22 = v1[5];
    v56 = v1[6];
    v23 = v1[1];
    v50 = *v1;
    v51 = v23;
    v24 = v1[3];
    v26 = *v1;
    v25 = v1[1];
    v52 = v1[2];
    v53 = v24;
    v46 = v54;
    v47 = v22;
    v48 = v1[6];
    v42 = v26;
    v43 = v25;
    v57 = *(v1 + 14);
    v49 = *(v1 + 14);
    v44 = v52;
    v45 = v21;
    v33 = 0;
    sub_225A0DE54(&v50, &v34, &qword_27D73AD30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AD30);
    sub_2259D8B24(&qword_27D73C630, &qword_27D73AD30);
    v27 = v31;
    v28 = v59;
    sub_225CCF7E4();
    v38 = v46;
    v39 = v47;
    v40 = v48;
    v41 = v49;
    v34 = v42;
    v35 = v43;
    v36 = v44;
    v37 = v45;
    sub_2259CB640(&v34, &qword_27D73AD30);
    if (!v28)
    {
      type metadata accessor for ISO18013ReaderRequest.DocRequest();
      v32 = 1;
      sub_225CCD354();
      sub_225ABFB68(&qword_27D73AC68, MEMORY[0x277CF3948]);
      sub_225CCF774();
    }

    return (*(v30 + 8))(v10, v27);
  }
}

uint64_t ISO18013ReaderRequest.ElementReference.namespace.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ISO18013ReaderRequest.ElementReference.namespace.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ISO18013ReaderRequest.ElementReference.elementIdentifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ISO18013ReaderRequest.ElementReference.elementIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

CoreIDVShared::ISO18013ReaderRequest::ElementReference __swiftcall ISO18013ReaderRequest.ElementReference.init(namespace:elementIdentifier:)(Swift::String a1, Swift::String elementIdentifier)
{
  *v2 = a1;
  v2[1] = elementIdentifier;
  result.elementIdentifier = elementIdentifier;
  result.namespace = a1;
  return result;
}

uint64_t ISO18013ReaderRequest.ElementReference.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225CCFC74();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  __swift_mutable_project_boxed_opaque_existential_0(v13, v14);
  v5 = sub_225CCF874();
  v8 = v7;
  v9 = v5;
  __swift_mutable_project_boxed_opaque_existential_0(v13, v14);
  v10 = sub_225CCF874();
  v12 = v11;
  v15 = v10;
  __swift_project_boxed_opaque_existential_1(v13, v14);
  if (sub_225CCF894())
  {
    __swift_destroy_boxed_opaque_existential_0(v13);
    *a2 = v9;
    a2[1] = v8;
    a2[2] = v15;
    a2[3] = v12;
  }

  else
  {
    sub_225CCF2D4();
    swift_allocError();
    sub_225CCF274();
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_0(v13);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t ISO18013ReaderRequest.ElementReference.encode(to:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225CCFCC4();
  __swift_mutable_project_boxed_opaque_existential_0(v3, v4);
  sub_225CCF8B4();
  if (!v1)
  {
    __swift_mutable_project_boxed_opaque_existential_0(v3, v4);
    sub_225CCF8B4();
  }

  return __swift_destroy_boxed_opaque_existential_0(v3);
}

uint64_t static ISO18013ReaderRequest.ElementReference.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_225CCF934(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_225CCF934();
    }
  }

  return result;
}

uint64_t ISO18013ReaderRequest.ElementReference.hash(into:)()
{
  sub_225CCE5B4();

  return sub_225CCE5B4();
}

uint64_t ISO18013ReaderRequest.ElementReference.hashValue.getter()
{
  sub_225CCFBD4();
  sub_225CCE5B4();
  sub_225CCE5B4();
  return sub_225CCFC24();
}

uint64_t sub_225ABA1C0(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225CCFCC4();
  __swift_mutable_project_boxed_opaque_existential_0(v3, v4);
  sub_225CCF8B4();
  if (!v1)
  {
    __swift_mutable_project_boxed_opaque_existential_0(v3, v4);
    sub_225CCF8B4();
  }

  return __swift_destroy_boxed_opaque_existential_0(v3);
}

uint64_t sub_225ABA298()
{
  sub_225CCFBD4();
  sub_225CCE5B4();
  sub_225CCE5B4();
  return sub_225CCFC24();
}

uint64_t sub_225ABA300()
{
  sub_225CCE5B4();

  return sub_225CCE5B4();
}

uint64_t sub_225ABA350()
{
  sub_225CCFBD4();
  sub_225CCE5B4();
  sub_225CCE5B4();
  return sub_225CCFC24();
}

uint64_t ISO18013ReaderRequest.ItemsRequest.docType.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ISO18013ReaderRequest.ItemsRequest.docType.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ISO18013ReaderRequest.ItemsRequest.namespaces.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t ISO18013ReaderRequest.ItemsRequest.requestInfo.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 72);
  v9 = *(v1 + 56);
  v10 = v3;
  v11 = *(v1 + 88);
  v4 = v11;
  v8[0] = *(v1 + 24);
  v5 = v8[0];
  v8[1] = v2;
  *(a1 + 32) = v9;
  *(a1 + 48) = v3;
  *(a1 + 64) = v4;
  *a1 = v5;
  *(a1 + 16) = v2;
  return sub_225A0DE54(v8, v7, &qword_27D73C868);
}

__n128 ISO18013ReaderRequest.ItemsRequest.requestInfo.setter(__int128 *a1)
{
  v3 = *(v1 + 40);
  v4 = *(v1 + 72);
  v8[2] = *(v1 + 56);
  v8[3] = v4;
  v9 = *(v1 + 88);
  v8[0] = *(v1 + 24);
  v8[1] = v3;
  sub_2259CB640(v8, &qword_27D73C868);
  v5 = *a1;
  *(v1 + 40) = a1[1];
  result = a1[2];
  v7 = a1[3];
  *(v1 + 56) = result;
  *(v1 + 72) = v7;
  *(v1 + 88) = *(a1 + 8);
  *(v1 + 24) = v5;
  return result;
}

uint64_t sub_225ABA594(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x63617053656D616ELL;
  v4 = 0xEA00000000007365;
  if (v2 != 1)
  {
    v3 = 0x4974736575716572;
    v4 = 0xEB000000006F666ELL;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x65707954636F64;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0x63617053656D616ELL;
  v8 = 0xEA00000000007365;
  if (*a2 != 1)
  {
    v7 = 0x4974736575716572;
    v8 = 0xEB000000006F666ELL;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x65707954636F64;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_225CCF934();
  }

  return v11 & 1;
}

uint64_t sub_225ABA6B0()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

uint64_t sub_225ABA760()
{
  sub_225CCE5B4();
}

uint64_t sub_225ABA7FC()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

uint64_t sub_225ABA8A8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_225ABFA54();
  *a1 = result;
  return result;
}

void sub_225ABA8D8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xEA00000000007365;
  v5 = 0x63617053656D616ELL;
  if (v2 != 1)
  {
    v5 = 0x4974736575716572;
    v4 = 0xEB000000006F666ELL;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x65707954636F64;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_225ABA944()
{
  v1 = 0x63617053656D616ELL;
  if (*v0 != 1)
  {
    v1 = 0x4974736575716572;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x65707954636F64;
  }
}

uint64_t sub_225ABA9AC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_225ABFA54();
  *a1 = result;
  return result;
}

uint64_t sub_225ABA9D4(uint64_t a1)
{
  v2 = sub_225ABE114();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225ABAA10(uint64_t a1)
{
  v2 = sub_225ABE114();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_225ABAA4C(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 49;
  }

  else
  {
    v2 = 53;
  }

  if (*a2)
  {
    v3 = 49;
  }

  else
  {
    v3 = 53;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_225CCF934();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_225ABAABC()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

uint64_t sub_225ABAB1C()
{
  sub_225CCE5B4();
}

uint64_t sub_225ABAB60()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

uint64_t sub_225ABABC8@<X0>(char *a1@<X8>)
{
  v2 = sub_225CCF5D4();

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

void sub_225ABAC24(uint64_t *a1@<X8>)
{
  v2 = 53;
  if (*v1)
  {
    v2 = 49;
  }

  *a1 = v2;
  a1[1] = 0xE100000000000000;
}

uint64_t sub_225ABAC44()
{
  if (*v0)
  {
    return 49;
  }

  else
  {
    return 53;
  }
}

uint64_t sub_225ABAC6C@<X0>(char *a1@<X8>)
{
  v2 = sub_225CCF5D4();

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

uint64_t sub_225ABACCC(uint64_t a1)
{
  v2 = sub_225ABDFA8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225ABAD08(uint64_t a1)
{
  v2 = sub_225ABDFA8();

  return MEMORY[0x2821FE720](a1, v2);
}

__n128 ISO18013ReaderRequest.ItemsRequest.init(docType:namespaces:requestInfo:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X8>)
{
  *(a5 + 32) = 0u;
  *(a5 + 48) = 0u;
  *(a5 + 64) = 0u;
  *(a5 + 80) = 0u;
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = 1;
  v7 = *(a5 + 40);
  v8 = *(a5 + 72);
  v12[2] = *(a5 + 56);
  v12[3] = v8;
  v13 = *(a5 + 88);
  v12[0] = *(a5 + 24);
  v12[1] = v7;
  sub_2259CB640(v12, &qword_27D73C868);
  v9 = *a4;
  *(a5 + 40) = a4[1];
  result = a4[2];
  v11 = a4[3];
  *(a5 + 56) = result;
  *(a5 + 72) = v11;
  *(a5 + 88) = *(a4 + 8);
  *(a5 + 24) = v9;
  return result;
}

uint64_t ISO18013ReaderRequest.ItemsRequest.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v46 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73C870);
  v47 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v42 - v6;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73C878);
  v48 = *(v61 - 8);
  MEMORY[0x28223BE20](v61, v8);
  v10 = &v42 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  Decoder.codingKeyFormat.getter(&v60);
  v11 = v60;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if ((v11 & 1) == 0)
  {
    sub_225ABE114();
    sub_225CCFCA4();
    if (!v2)
    {
      LOBYTE(v51) = 0;
      v13 = v61;
      v14 = sub_225CCF684();
      v17 = v18;
      v45 = v14;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73C888);
      v49[0] = 1;
      sub_225ABDFFC();
      sub_225CCF6E4();
      v28 = v51;
      v59 = 2;
      sub_225ABE168();
      sub_225CCF674();
      (*(v48 + 8))(v10, v13);
      v29 = v28;
      v19 = v51;
      v21 = *(&v52 + 1);
      v61 = v52;
      v22 = v53;
      v48 = v29;
      v23 = *(&v53 + 1);
      v47 = v54;
      v30 = v55;
      *(&v44 + 1) = *(&v54 + 1);
      v31 = *(&v55 + 1);
      *v49 = 1;
      memset(&v49[8], 0, 64);
      sub_2259CB640(v49, &qword_27D73C868);
      v27 = v31;
      v26 = v30;
      v25 = *(&v44 + 1);
      v24 = v47;
      v20 = v61;
      goto LABEL_7;
    }

LABEL_6:
    __swift_destroy_boxed_opaque_existential_0(a1);
    v51 = 1;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    return sub_2259CB640(&v51, &qword_27D73C868);
  }

  sub_225ABDFA8();
  sub_225CCFCA4();
  if (v2)
  {
    goto LABEL_6;
  }

  LOBYTE(v51) = 0;
  v12 = sub_225CCF684();
  v17 = v16;
  v45 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73C888);
  v59 = 1;
  sub_225ABDFFC();
  sub_225CCF6E4();
  (*(v47 + 8))(v7, v4);
  v48 = *v49;
  v19 = 1;
  v51 = 1;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  sub_2259CB640(&v51, &qword_27D73C868);
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0;
LABEL_7:
  v61 = v20;
  v43 = v19;
  *&v44 = v21;
  *(&v44 + 1) = v22;
  v47 = v23;
  v32 = v45;
  *v49 = v45;
  *&v49[8] = v17;
  v33 = v48;
  *&v49[16] = v48;
  *&v49[24] = v19;
  *&v49[32] = v20;
  *&v49[40] = v21;
  *&v49[48] = v22;
  *&v49[56] = v23;
  *&v49[64] = v24;
  *&v49[72] = v25;
  *&v50 = v26;
  *(&v50 + 1) = v27;
  v34 = *&v49[48];
  v35 = v46;
  v46[2] = *&v49[32];
  v35[3] = v34;
  v36 = v50;
  v35[4] = *&v49[64];
  v35[5] = v36;
  v37 = *&v49[16];
  *v35 = *v49;
  v35[1] = v37;
  v38 = v24;
  v39 = v25;
  v40 = v26;
  v41 = v27;
  sub_225ABE0AC(v49, &v51);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v51 = v32;
  *&v52 = v17;
  *(&v52 + 1) = v33;
  *&v53 = v43;
  *(&v53 + 1) = v61;
  v54 = v44;
  *&v55 = v47;
  *(&v55 + 1) = v38;
  v56 = v39;
  v57 = v40;
  v58 = v41;
  return sub_225ABE0E4(&v51);
}

uint64_t ISO18013ReaderRequest.ItemsRequest.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73C8B8);
  v19 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v18 - v5;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73C8C0);
  v20 = *(v21 - 8);
  MEMORY[0x28223BE20](v21, v7);
  v9 = &v18 - v8;
  v22 = *v1;
  v18 = v1[2];
  v10 = *(v1 + 5);
  v11 = *(v1 + 9);
  v33 = *(v1 + 7);
  v34 = v11;
  v35 = v1[11];
  v31 = *(v1 + 3);
  v32 = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  Encoder.codingKeyFormat.getter(&v37);
  v12 = v37;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (v12)
  {
    sub_225ABDFA8();
    sub_225CCFCE4();
    LOBYTE(v26) = 0;
    v13 = v23;
    sub_225CCF784();
    if (!v13)
    {
      *&v26 = v18;
      LOBYTE(v24[0]) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73C888);
      sub_225ABE1BC();
      sub_225CCF7E4();
    }

    return (*(v19 + 8))(v6, v3);
  }

  else
  {
    sub_225ABE114();
    sub_225CCFCE4();
    LOBYTE(v26) = 0;
    v15 = v21;
    v16 = v23;
    sub_225CCF784();
    if (v16)
    {
      return (*(v20 + 8))(v9, v15);
    }

    else
    {
      *&v26 = v18;
      LOBYTE(v24[0]) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73C888);
      sub_225ABE1BC();
      sub_225CCF7E4();
      v28 = v33;
      v29 = v34;
      v30 = v35;
      v26 = v31;
      v27 = v32;
      v36 = 2;
      sub_225A0DE54(&v31, v24, &qword_27D73C868);
      sub_225ABE2DC();
      sub_225CCF774();
      v17 = (v20 + 8);
      v24[2] = v28;
      v24[3] = v29;
      v25 = v30;
      v24[1] = v27;
      v24[0] = v26;
      sub_2259CB640(v24, &qword_27D73C868);
      return (*v17)(v9, v15);
    }
  }
}

uint64_t ISO18013ReaderRequest.AlternativeDataElementsSet.requestedElement.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
}

__n128 ISO18013ReaderRequest.AlternativeDataElementsSet.requestedElement.setter(__n128 *a1)
{
  v5 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u64[1];

  result = v5;
  *v1 = v5;
  v1[1].n128_u64[0] = v2;
  v1[1].n128_u64[1] = v3;
  return result;
}

uint64_t ISO18013ReaderRequest.AlternativeDataElementsSet.alternativeElementSets.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

void __swiftcall ISO18013ReaderRequest.AlternativeDataElementsSet.init(requestedElement:alternativeElementSets:)(CoreIDVShared::ISO18013ReaderRequest::AlternativeDataElementsSet *__return_ptr retstr, CoreIDVShared::ISO18013ReaderRequest::ElementReference requestedElement, Swift::OpaquePointer alternativeElementSets)
{
  v3 = *(requestedElement.namespace._countAndFlagsBits + 16);
  v4 = *(requestedElement.namespace._countAndFlagsBits + 24);
  retstr->requestedElement.namespace = *requestedElement.namespace._countAndFlagsBits;
  retstr->requestedElement.elementIdentifier._countAndFlagsBits = v3;
  retstr->requestedElement.elementIdentifier._object = v4;
  retstr->alternativeElementSets._rawValue = requestedElement.namespace._object;
}

unint64_t sub_225ABBA0C()
{
  if (*v0)
  {
    return 0xD000000000000016;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_225ABBA48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x8000000225D1B700 == a2 || (sub_225CCF934() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000225D1B720 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_225CCF934();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_225ABBB2C(uint64_t a1)
{
  v2 = sub_225ABE3EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225ABBB68(uint64_t a1)
{
  v2 = sub_225ABE3EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ISO18013ReaderRequest.AlternativeDataElementsSet.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73C8E0);
  v16 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v13 - v5;
  v7 = *v1;
  v8 = v1[1];
  v9 = v1[2];
  v10 = v1[3];
  v13 = v1[4];
  v14 = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225ABE3EC();

  sub_225CCFCE4();
  v17 = v7;
  v18 = v8;
  v19 = v14;
  v20 = v10;
  v21 = 0;
  sub_225ABE440();
  v11 = v15;
  sub_225CCF7E4();

  if (!v11)
  {
    v17 = v13;
    v21 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73C8F8);
    sub_225ABE494();
    sub_225CCF7E4();
  }

  return (*(v16 + 8))(v6, v3);
}

uint64_t ISO18013ReaderRequest.AlternativeDataElementsSet.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 32);
  sub_225CCE5B4();
  sub_225CCE5B4();

  return sub_225ABC9AC(a1, v3);
}

uint64_t ISO18013ReaderRequest.AlternativeDataElementsSet.hashValue.getter()
{
  v1 = *(v0 + 32);
  sub_225CCFBD4();
  sub_225CCE5B4();
  sub_225CCE5B4();
  sub_225ABC9AC(v3, v1);
  return sub_225CCFC24();
}

uint64_t ISO18013ReaderRequest.AlternativeDataElementsSet.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73C910);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v14 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225ABE3EC();
  sub_225CCFCA4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v20 = 0;
  sub_225ABE59C();
  sub_225CCF6E4();
  v10 = v17;
  v11 = v19;
  v14 = v18;
  v15 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73C8F8);
  v20 = 1;
  sub_225ABE5F0();
  sub_225CCF6E4();
  (*(v6 + 8))(v9, v5);
  v12 = v16;
  *a2 = v15;
  a2[1] = v10;
  a2[2] = v14;
  a2[3] = v11;
  a2[4] = v12;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_225ABC0E0()
{
  v1 = *(v0 + 32);
  sub_225CCFBD4();
  sub_225CCE5B4();
  sub_225CCE5B4();
  sub_225ABC9AC(v3, v1);
  return sub_225CCFC24();
}

uint64_t sub_225ABC160(uint64_t a1)
{
  v3 = *(v1 + 32);
  sub_225CCE5B4();
  sub_225CCE5B4();

  return sub_225ABC9AC(a1, v3);
}

uint64_t sub_225ABC1C0()
{
  v1 = *(v0 + 32);
  sub_225CCFBD4();
  sub_225CCE5B4();
  sub_225CCE5B4();
  sub_225ABC9AC(v3, v1);
  return sub_225CCFC24();
}

uint64_t sub_225ABC240@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_225CCCA44();
    if (v10)
    {
      v11 = sub_225CCCA74();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_225CCCA64();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_225CCCA44();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_225CCCA74();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_225CCCA64();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_225ABC470(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x22AA6E420](v3);
  if (v3)
  {
    v5 = a2 + 80;
    do
    {

      sub_225CCE5B4();
      sub_225CCE5B4();

      v5 += 56;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_225ABC540(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x22AA6E420](v3);
  if (v3)
  {
    v5 = 0;
    v6 = a2 + 32;
    do
    {
      v7 = *(v6 + 8 * v5);
      result = MEMORY[0x22AA6E420](*(v7 + 16));
      v8 = *(v7 + 16);
      if (v8)
      {

        v9 = (v7 + 40);
        do
        {
          v10 = *(v9 - 1);
          v11 = *v9;
          sub_2259CB710(v10, *v9);
          sub_225CCCFB4();
          sub_2259BEF00(v10, v11);
          v9 += 2;
          --v8;
        }

        while (v8);
      }

      ++v5;
    }

    while (v5 != v3);
  }

  return result;
}

uint64_t sub_225ABC610(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  result = MEMORY[0x22AA6E420](v4);
  v17 = v4;
  if (v4)
  {
    v6 = 0;
    v16 = a2 + 32;
    do
    {
      v18 = v6;
      v7 = (v16 + 16 * v6);
      v8 = *v7;
      MEMORY[0x22AA6E420](*(*v7 + 16));
      v9 = *(v8 + 16);
      if (v9)
      {
        v10 = v8 + 32;

        for (i = 0; i != v9; ++i)
        {
          v12 = *(v10 + 8 * i);
          MEMORY[0x22AA6E420](*(v12 + 16));
          v13 = *(v12 + 16);
          if (v13)
          {

            v14 = (v12 + 48);
            do
            {
              v15 = *v14;
              v14 += 3;

              sub_225CCE5B4();
              sub_225ADE270(a1, v15);

              --v13;
            }

            while (v13);
          }
        }
      }

      else
      {
      }

      v6 = v18 + 1;
      sub_225CCFBF4();
    }

    while (v18 + 1 != v17);
  }

  return result;
}

uint64_t sub_225ABC770(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  result = MEMORY[0x22AA6E420](v4);
  if (v4)
  {
    v6 = 0;
    v7 = a2 + 32;
    do
    {
      v8 = *(v7 + 8 * v6);
      result = MEMORY[0x22AA6E420](*(v8 + 16));
      v9 = *(v8 + 16);
      if (v9)
      {

        v10 = (v8 + 48);
        do
        {
          v11 = *v10;
          v10 += 3;

          sub_225CCE5B4();
          sub_225ADE270(a1, v11);

          --v9;
        }

        while (v9);
      }

      ++v6;
    }

    while (v6 != v4);
  }

  return result;
}

uint64_t sub_225ABC854(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x22AA6E420](v3);
  if (v3)
  {
    v5 = a2 + 32;
    do
    {
      ++v5;
      sub_225CCE5B4();

      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_225ABC924(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x22AA6E420](v3);
  if (v3)
  {
    v5 = 0;
    v6 = a2 + 32;
    do
    {
      v7 = *(v6 + 8 * v5);
      result = MEMORY[0x22AA6E420](*(v7 + 16));
      v8 = *(v7 + 16);
      if (v8)
      {
        v9 = (v7 + 32);
        do
        {
          v10 = *v9++;
          result = MEMORY[0x22AA6E420](v10);
          --v8;
        }

        while (v8);
      }

      ++v5;
    }

    while (v5 != v3);
  }

  return result;
}

uint64_t sub_225ABC9AC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x22AA6E420](v3);
  if (v3)
  {
    v5 = 0;
    v9 = a2 + 32;
    do
    {
      v6 = *(v9 + 8 * v5);
      result = MEMORY[0x22AA6E420](*(v6 + 16));
      v7 = *(v6 + 16);
      if (v7)
      {

        v8 = v6 + 56;
        do
        {

          sub_225CCE5B4();
          sub_225CCE5B4();

          v8 += 32;
          --v7;
        }

        while (v7);
      }

      ++v5;
    }

    while (v5 != v3);
  }

  return result;
}

uint64_t sub_225ABCAA8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x22AA6E420](v3);
  if (v3)
  {
    for (i = 0; i != v3; ++i)
    {
      v6 = a2 + 32 + 16 * i;
      v7 = *v6;
      MEMORY[0x22AA6E420](*(*v6 + 16));
      v8 = *(v7 + 16);
      if (v8)
      {
        v9 = 0;
        v10 = v7 + 32;
        do
        {
          v11 = *(v10 + 8 * v9);
          MEMORY[0x22AA6E420](*(v11 + 16));
          v12 = *(v11 + 16);
          if (v12)
          {
            v13 = (v11 + 32);
            do
            {
              v14 = *v13++;
              MEMORY[0x22AA6E420](v14);
              --v12;
            }

            while (v12);
          }

          ++v9;
        }

        while (v9 != v8);
      }

      result = sub_225CCFBF4();
    }
  }

  return result;
}

uint64_t sub_225ABCB7C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x22AA6E420](v3);
  v13 = v3;
  if (v3)
  {
    v5 = 0;
    v12 = a2 + 32;
    do
    {
      v6 = *(v12 + 40 * v5 + 32);

      sub_225CCE5B4();
      sub_225CCE5B4();
      MEMORY[0x22AA6E420](*(v6 + 16));
      v7 = *(v6 + 16);
      if (v7)
      {
        v14 = v5;
        v8 = 0;
        v15 = v6 + 32;
        do
        {
          v9 = *(v15 + 8 * v8);
          MEMORY[0x22AA6E420](*(v9 + 16));
          v10 = *(v9 + 16);
          if (v10)
          {

            v11 = v9 + 56;
            do
            {

              sub_225CCE5B4();
              sub_225CCE5B4();

              v11 += 32;
              --v10;
            }

            while (v10);
          }

          ++v8;
        }

        while (v8 != v7);

        v5 = v14;
      }

      else
      {
      }

      ++v5;
    }

    while (v5 != v13);
  }

  return result;
}

void sub_225ABCD30(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v8 = sub_225CCF144();
    MEMORY[0x22AA6E420](v8);
    v3 = sub_225CCF144();
    if (!v3)
    {
      return;
    }
  }

  else
  {
    MEMORY[0x22AA6E420](*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10));
    v3 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      return;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
  }

  else if ((a2 & 0xC000000000000001) != 0)
  {
    v4 = 0;
    do
    {
      MEMORY[0x22AA6DA80](v4++, a2);
      type metadata accessor for SecCertificate(0);
      sub_225ABFB68(&qword_27D73CA68, type metadata accessor for SecCertificate);
      sub_225CCD504();
      swift_unknownObjectRelease();
    }

    while (v3 != v4);
  }

  else
  {
    v5 = (a2 + 32);
    type metadata accessor for SecCertificate(0);
    sub_225ABFB68(&qword_27D73CA68, type metadata accessor for SecCertificate);
    do
    {
      v6 = *v5++;
      v7 = v6;
      sub_225CCD504();

      --v3;
    }

    while (v3);
  }
}

BOOL _s13CoreIDVShared21ISO18013ReaderRequestV03DocE4InfoV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 25);
  v9 = *(a1 + 40);
  v29 = *(a1 + 48);
  v26 = *(a1 + 56);
  v27 = *(a1 + 64);
  v10 = *a2;
  v12 = *(a2 + 8);
  v11 = *(a2 + 16);
  v13 = *(a2 + 24);
  v14 = *(a2 + 25);
  v15 = *(a2 + 40);
  v30 = *(a2 + 32);
  v31 = *(a1 + 32);
  v28 = *(a2 + 48);
  v24 = *(a2 + 56);
  v25 = *(a2 + 64);
  if (v4)
  {
    if (!v10 || (sub_225AB7C3C(v4, v10) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  if (!v6)
  {
    if (!v12)
    {
      goto LABEL_11;
    }

    return 0;
  }

  if (!v12)
  {
    return 0;
  }

  v16 = sub_225AB6F74(v6, v12);

  if ((v16 & 1) == 0)
  {
    return 0;
  }

LABEL_11:
  if (v7)
  {
    if (!v13)
    {
      return 0;
    }
  }

  else
  {
    if (v5 == v11)
    {
      v17 = v13;
    }

    else
    {
      v17 = 1;
    }

    if (v17)
    {
      return 0;
    }
  }

  if (v8 == 2)
  {
    if (v14 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v14 == 2 || ((v14 ^ v8) & 1) != 0)
    {
      return result;
    }
  }

  if (v9 >> 60 != 15)
  {
    if (v15 >> 60 != 15)
    {
      sub_2259CB6FC(v31, v9);
      sub_2259CB6FC(v30, v15);
      v21 = sub_2259D8228(v31, v9, v30, v15);
      sub_2259B97A8(v30, v15);
      sub_2259B97A8(v31, v9);
      if ((v21 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_32;
    }

LABEL_27:
    sub_2259CB6FC(v31, v9);
    sub_2259CB6FC(v30, v15);
    sub_2259B97A8(v31, v9);
    v19 = v30;
    v20 = v15;
LABEL_28:
    sub_2259B97A8(v19, v20);
    return 0;
  }

  if (v15 >> 60 != 15)
  {
    goto LABEL_27;
  }

  sub_2259CB6FC(v31, v9);
  sub_2259CB6FC(v30, v15);
  sub_2259B97A8(v31, v9);
LABEL_32:
  if (v29 == 2)
  {
    if (v28 != 2)
    {
      return 0;
    }

    goto LABEL_37;
  }

  result = 0;
  if (v28 != 2 && ((v28 ^ v29) & 1) == 0)
  {
LABEL_37:
    if (v27 >> 60 == 15)
    {
      v22 = v25;
      if (v25 >> 60 == 15)
      {
        sub_2259CB6FC(v26, v27);
        sub_2259CB6FC(v24, v25);
        sub_2259B97A8(v26, v27);
        return 1;
      }
    }

    else
    {
      v22 = v25;
      if (v25 >> 60 != 15)
      {
        sub_2259CB6FC(v26, v27);
        sub_2259CB6FC(v24, v25);
        v23 = sub_2259D8228(v26, v27, v24, v25);
        sub_2259B97A8(v24, v25);
        sub_2259B97A8(v26, v27);
        return (v23 & 1) != 0;
      }
    }

    sub_2259CB6FC(v26, v27);
    sub_2259CB6FC(v24, v22);
    sub_2259B97A8(v26, v27);
    v19 = v24;
    v20 = v22;
    goto LABEL_28;
  }

  return result;
}

BOOL _s13CoreIDVShared21ISO18013ReaderRequestV05ItemsE0V2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = *(a1 + 5);
  v8 = *(a1 + 9);
  v49[2] = *(a1 + 7);
  v49[3] = v8;
  v50 = a1[11];
  v49[0] = *(a1 + 3);
  v49[1] = v7;
  v9 = *a2;
  v10 = a2[1];
  v11 = a2[2];
  v12 = *(a2 + 3);
  v13 = *(a2 + 5);
  v14 = *(a2 + 7);
  v15 = *(a2 + 9);
  v52 = a2[11];
  v51[2] = v14;
  v51[3] = v15;
  v51[0] = v12;
  v51[1] = v13;
  if (v4 == v9 && v5 == v10 || (sub_225CCF934()) && (sub_225AD7E54(v6, v11))
  {
    v16 = *&v49[0];
    v17 = *&v51[0];
    if (*&v49[0] == 1)
    {
      if (*&v51[0] == 1)
      {
        v18 = 1;
        *v43 = 1;
        v19 = *(a1 + 3);
        *&v43[8] = *(a1 + 2);
        *&v43[24] = v19;
        v20 = *(a1 + 5);
        *&v43[40] = *(a1 + 4);
        *&v43[56] = v20;
        sub_225A0DE54(v49, &v38, &qword_27D73C868);
        sub_225A0DE54(v51, &v38, &qword_27D73C868);
        v21 = v43;
LABEL_14:
        sub_2259CB640(v21, &qword_27D73C868);
        return v18;
      }

      sub_225A0DE54(v49, v43, &qword_27D73C868);
      sub_225A0DE54(v51, v43, &qword_27D73C868);
    }

    else
    {
      *v43 = *&v49[0];
      v22 = *(a1 + 2);
      *&v43[24] = *(a1 + 3);
      *&v43[8] = v22;
      v23 = *(a1 + 5);
      *&v43[40] = *(a1 + 4);
      *&v43[56] = v23;
      v40 = *&v43[32];
      v41 = *&v43[48];
      v42 = *(&v23 + 1);
      v38 = *v43;
      v39 = *&v43[16];
      if (*&v51[0] != 1)
      {
        v28 = *(a2 + 3);
        *&v37[8] = *(a2 + 2);
        *&v37[24] = v28;
        v29 = *(a2 + 5);
        *&v37[40] = *(a2 + 4);
        *&v37[56] = v29;
        *v37 = *&v51[0];
        sub_225A0DE54(v49, v35, &qword_27D73C868);
        sub_225A0DE54(v51, v35, &qword_27D73C868);
        sub_225A0DE54(v43, v35, &qword_27D73C868);
        v18 = _s13CoreIDVShared21ISO18013ReaderRequestV03DocE4InfoV2eeoiySbAE_AEtFZ_0(&v38, v37);
        v33[2] = *&v37[32];
        v33[3] = *&v37[48];
        v34 = *&v37[64];
        v33[0] = *v37;
        v33[1] = *&v37[16];
        sub_225ABDB58(v33);
        v35[2] = v40;
        v35[3] = v41;
        v36 = v42;
        v35[0] = v38;
        v35[1] = v39;
        sub_225ABDB58(v35);
        *v37 = v16;
        v30 = *(a1 + 3);
        *&v37[8] = *(a1 + 2);
        *&v37[24] = v30;
        v31 = *(a1 + 5);
        *&v37[40] = *(a1 + 4);
        *&v37[56] = v31;
        v21 = v37;
        goto LABEL_14;
      }

      *&v37[32] = *&v43[32];
      *&v37[48] = *&v43[48];
      *&v37[64] = *&v43[64];
      *v37 = *v43;
      *&v37[16] = *&v43[16];
      sub_225A0DE54(v49, v35, &qword_27D73C868);
      sub_225A0DE54(v51, v35, &qword_27D73C868);
      sub_225A0DE54(v43, v35, &qword_27D73C868);
      sub_225ABDB58(v37);
    }

    v24 = *(a1 + 3);
    *&v43[8] = *(a1 + 2);
    *&v43[24] = v24;
    v25 = *(a1 + 5);
    *&v43[40] = *(a1 + 4);
    *&v43[56] = v25;
    *v43 = v16;
    v44 = v17;
    v26 = *(a2 + 3);
    v45 = *(a2 + 2);
    v46 = v26;
    v27 = *(a2 + 5);
    v47 = *(a2 + 4);
    v48 = v27;
    sub_2259CB640(v43, &qword_27D73CA60);
    return 0;
  }

  else
  {
    return 0;
  }
}

BOOL _s13CoreIDVShared21ISO18013ReaderRequestV06DeviceE4InfoV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = *(a1 + 24);
  v9 = *(a1 + 32);
  v8 = *(a1 + 40);
  v10 = *a2;
  v12 = *(a2 + 8);
  v11 = *(a2 + 16);
  v13 = *(a2 + 24);
  v15 = *(a2 + 32);
  v14 = *(a2 + 40);
  if (v4)
  {
    if (!v10 || (sub_225AB7B90(v4, v10) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  if (v5 >> 60 == 15)
  {
    if (v11 >> 60 == 15)
    {
      sub_2259CB6FC(v6, v5);
      sub_2259CB6FC(v12, v11);
      sub_2259B97A8(v6, v5);
      goto LABEL_15;
    }

LABEL_10:
    sub_2259CB6FC(v6, v5);
    sub_2259CB6FC(v12, v11);
    sub_2259B97A8(v6, v5);
    v16 = v12;
    v17 = v11;
LABEL_11:
    sub_2259B97A8(v16, v17);
    return 0;
  }

  if (v11 >> 60 == 15)
  {
    goto LABEL_10;
  }

  sub_2259CB6FC(v6, v5);
  sub_2259CB6FC(v12, v11);
  v20 = sub_2259D8228(v6, v5, v12, v11);
  sub_2259B97A8(v12, v11);
  sub_2259B97A8(v6, v5);
  if ((v20 & 1) == 0)
  {
    return 0;
  }

LABEL_15:
  if (v7 == 2)
  {
    if (v13 != 2)
    {
      return 0;
    }

    goto LABEL_20;
  }

  result = 0;
  if (v13 != 2 && ((v13 ^ v7) & 1) == 0)
  {
LABEL_20:
    if (v8 >> 60 == 15)
    {
      if (v14 >> 60 == 15)
      {
        sub_2259CB6FC(v9, v8);
        sub_2259CB6FC(v15, v14);
        sub_2259B97A8(v9, v8);
        return 1;
      }
    }

    else if (v14 >> 60 != 15)
    {
      sub_2259CB6FC(v9, v8);
      sub_2259CB6FC(v15, v14);
      v19 = sub_2259D8228(v9, v8, v15, v14);
      sub_2259B97A8(v15, v14);
      sub_2259B97A8(v9, v8);
      return (v19 & 1) != 0;
    }

    sub_2259CB6FC(v9, v8);
    sub_2259CB6FC(v15, v14);
    sub_2259B97A8(v9, v8);
    v16 = v15;
    v17 = v14;
    goto LABEL_11;
  }

  return result;
}

unint64_t sub_225ABD7A4()
{
  result = qword_27D73C778;
  if (!qword_27D73C778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C778);
  }

  return result;
}

unint64_t sub_225ABD7F8()
{
  result = qword_27D73C788;
  if (!qword_27D73C788)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D73C780);
    sub_225ABD87C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C788);
  }

  return result;
}

unint64_t sub_225ABD87C()
{
  result = qword_27D73C790;
  if (!qword_27D73C790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C790);
  }

  return result;
}

unint64_t sub_225ABD8D0()
{
  result = qword_27D73C7A0;
  if (!qword_27D73C7A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D73C780);
    sub_225ABD954();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C7A0);
  }

  return result;
}

unint64_t sub_225ABD954()
{
  result = qword_27D73C7A8;
  if (!qword_27D73C7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C7A8);
  }

  return result;
}

unint64_t sub_225ABD9A8()
{
  result = qword_27D73C7B8;
  if (!qword_27D73C7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C7B8);
  }

  return result;
}

unint64_t sub_225ABD9FC()
{
  result = qword_27D73C7C8;
  if (!qword_27D73C7C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D73C7C0);
    sub_225ABDA80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C7C8);
  }

  return result;
}

unint64_t sub_225ABDA80()
{
  result = qword_27D73C7D0;
  if (!qword_27D73C7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C7D0);
  }

  return result;
}

unint64_t sub_225ABDAD4()
{
  result = qword_27D73C7D8;
  if (!qword_27D73C7D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D73C218);
    sub_2259D9454();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C7D8);
  }

  return result;
}

unint64_t sub_225ABDB88()
{
  result = qword_27D73C7E8;
  if (!qword_27D73C7E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D73C7C0);
    sub_225ABDC0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C7E8);
  }

  return result;
}

unint64_t sub_225ABDC0C()
{
  result = qword_27D73C7F0;
  if (!qword_27D73C7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C7F0);
  }

  return result;
}

unint64_t sub_225ABDC98()
{
  result = qword_27D73C800;
  if (!qword_27D73C800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C800);
  }

  return result;
}

unint64_t sub_225ABDCEC()
{
  result = qword_27D73C810;
  if (!qword_27D73C810)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D73C808);
    sub_225ABDE24(&qword_27D73C818);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C810);
  }

  return result;
}

unint64_t sub_225ABDD88()
{
  result = qword_27D73C828;
  if (!qword_27D73C828)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D73C808);
    sub_225ABDE24(&qword_27D73C830);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C828);
  }

  return result;
}

uint64_t sub_225ABDE24(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D73FAA0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_225ABDE90(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC30);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_225ABDF00()
{
  result = qword_27D73C848;
  if (!qword_27D73C848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C848);
  }

  return result;
}

unint64_t sub_225ABDF54()
{
  result = qword_27D73C850;
  if (!qword_27D73C850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C850);
  }

  return result;
}

unint64_t sub_225ABDFA8()
{
  result = qword_27D73C880;
  if (!qword_27D73C880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C880);
  }

  return result;
}

unint64_t sub_225ABDFFC()
{
  result = qword_27D73C890;
  if (!qword_27D73C890)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D73C888);
    sub_225ABE26C(&qword_27D73C898);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C890);
  }

  return result;
}

unint64_t sub_225ABE114()
{
  result = qword_27D73C8A8;
  if (!qword_27D73C8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C8A8);
  }

  return result;
}

unint64_t sub_225ABE168()
{
  result = qword_27D73C8B0;
  if (!qword_27D73C8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C8B0);
  }

  return result;
}

unint64_t sub_225ABE1BC()
{
  result = qword_27D73C8C8;
  if (!qword_27D73C8C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D73C888);
    sub_225ABE26C(&qword_27D73C8D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C8C8);
  }

  return result;
}

uint64_t sub_225ABE26C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D73C8A0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_225ABE2DC()
{
  result = qword_27D73C8D8;
  if (!qword_27D73C8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C8D8);
  }

  return result;
}

BOOL _s13CoreIDVShared21ISO18013ReaderRequestV26AlternativeDataElementsSetV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  v8 = *a1 == *a2 && a1[1] == a2[1];
  if (!v8 && (sub_225CCF934() & 1) == 0)
  {
    return 0;
  }

  v9 = v2 == v5 && v4 == v6;
  if (!v9 && (sub_225CCF934() & 1) == 0)
  {
    return 0;
  }

  return sub_225AB7A48(v3, v7);
}

unint64_t sub_225ABE3EC()
{
  result = qword_27D73C8E8;
  if (!qword_27D73C8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C8E8);
  }

  return result;
}

unint64_t sub_225ABE440()
{
  result = qword_27D73C8F0;
  if (!qword_27D73C8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C8F0);
  }

  return result;
}

unint64_t sub_225ABE494()
{
  result = qword_27D73C900;
  if (!qword_27D73C900)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D73C8F8);
    sub_225ABE518();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C900);
  }

  return result;
}

unint64_t sub_225ABE518()
{
  result = qword_27D73C908;
  if (!qword_27D73C908)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D73AD48);
    sub_225ABE440();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C908);
  }

  return result;
}

unint64_t sub_225ABE59C()
{
  result = qword_27D73C918;
  if (!qword_27D73C918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C918);
  }

  return result;
}

unint64_t sub_225ABE5F0()
{
  result = qword_27D73C920;
  if (!qword_27D73C920)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D73C8F8);
    sub_225ABE674();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C920);
  }

  return result;
}

unint64_t sub_225ABE674()
{
  result = qword_27D73C928;
  if (!qword_27D73C928)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D73AD48);
    sub_225ABE59C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C928);
  }

  return result;
}

unint64_t sub_225ABE6FC()
{
  result = qword_27D73C930;
  if (!qword_27D73C930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C930);
  }

  return result;
}

unint64_t sub_225ABE754()
{
  result = qword_27D73C938;
  if (!qword_27D73C938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C938);
  }

  return result;
}

unint64_t sub_225ABE7AC()
{
  result = qword_27D73C940;
  if (!qword_27D73C940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73C940);
  }

  return result;
}