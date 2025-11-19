unint64_t sub_1E584BDEC()
{
  result = qword_1ECFF5FE8;
  if (!qword_1ECFF5FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF5FE8);
  }

  return result;
}

unint64_t sub_1E584BE40()
{
  result = qword_1ECFF5FF0;
  if (!qword_1ECFF5FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF5FF0);
  }

  return result;
}

unint64_t sub_1E584BE94()
{
  result = qword_1ECFF5FF8;
  if (!qword_1ECFF5FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF5FF8);
  }

  return result;
}

unint64_t sub_1E584BEE8()
{
  result = qword_1ECFF6000;
  if (!qword_1ECFF6000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF6000);
  }

  return result;
}

uint64_t sub_1E584BF54@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1E584C130(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t NetworkConditions.hashValue.getter(unsigned __int8 a1)
{
  sub_1E5854890();
  MEMORY[0x1E692EEF0](a1);
  return sub_1E58548C0();
}

uint64_t sub_1E584C00C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C62616C69617661 && a2 == 0xE900000000000065;
  if (v4 || (sub_1E5854840() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x616C696176616E75 && a2 == 0xEB00000000656C62 || (sub_1E5854840() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1E5854840();

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

uint64_t sub_1E584C130(uint64_t *a1)
{
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF6058, &qword_1E5856DF0);
  v33 = *(v36 - 8);
  v2 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v31 - v3;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF6060, &qword_1E5856DF8);
  v35 = *(v37 - 8);
  v4 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v6 = &v31 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF6068, &qword_1E5856E00);
  v34 = *(v7 - 8);
  v8 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v31 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF6070, &qword_1E5856E08);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v31 - v14;
  v16 = a1[3];
  v17 = a1[4];
  v40 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1E584BDEC();
  v18 = v39;
  sub_1E58548D0();
  if (!v18)
  {
    v32 = v7;
    v19 = v38;
    v39 = v12;
    v20 = v15;
    v21 = sub_1E58547D0();
    v22 = (2 * *(v21 + 16)) | 1;
    v41 = v21;
    v42 = v21 + 32;
    v43 = 0;
    v44 = v22;
    v23 = sub_1E5835F04();
    if (v23 != 3 && v43 == v44 >> 1)
    {
      v12 = v23;
      if (v23)
      {
        if (v23 == 1)
        {
          v45 = 1;
          sub_1E584BE94();
          sub_1E5854770();
          v24 = v39;
          (*(v35 + 8))(v6, v37);
          (*(v24 + 8))(v15, v11);
LABEL_13:
          swift_unknownObjectRelease();
          __swift_destroy_boxed_opaque_existential_1(v40);
          return v12;
        }

        v45 = 2;
        sub_1E584BE40();
        v29 = v15;
        sub_1E5854770();
        v30 = v39;
        (*(v33 + 8))(v19, v36);
      }

      else
      {
        v45 = 0;
        sub_1E584BEE8();
        v29 = v15;
        sub_1E5854770();
        (*(v34 + 8))(v10, v32);
        v30 = v39;
      }

      (*(v30 + 8))(v29, v11);
      goto LABEL_13;
    }

    v25 = sub_1E5854750();
    swift_allocError();
    v27 = v26;
    v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5948, &qword_1E5855F20) + 48);
    *v27 = &type metadata for NetworkConditions;
    sub_1E5854780();
    sub_1E5854740();
    (*(*(v25 - 8) + 104))(v27, *MEMORY[0x1E69E6AF8], v25);
    swift_willThrow();
    (*(v39 + 8))(v20, v11);
    swift_unknownObjectRelease();
  }

  __swift_destroy_boxed_opaque_existential_1(v40);
  return v12;
}

unint64_t sub_1E584C6A4()
{
  result = qword_1ECFF6008;
  if (!qword_1ECFF6008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF6008);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SampleContentArtwork.AssetCodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SampleContentArtwork.AssetCodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1E584C88C()
{
  result = qword_1ECFF6010;
  if (!qword_1ECFF6010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF6010);
  }

  return result;
}

unint64_t sub_1E584C8E4()
{
  result = qword_1ECFF6018;
  if (!qword_1ECFF6018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF6018);
  }

  return result;
}

unint64_t sub_1E584C93C()
{
  result = qword_1ECFF6020;
  if (!qword_1ECFF6020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF6020);
  }

  return result;
}

unint64_t sub_1E584C994()
{
  result = qword_1ECFF6028;
  if (!qword_1ECFF6028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF6028);
  }

  return result;
}

unint64_t sub_1E584C9EC()
{
  result = qword_1ECFF6030;
  if (!qword_1ECFF6030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF6030);
  }

  return result;
}

unint64_t sub_1E584CA44()
{
  result = qword_1ECFF6038;
  if (!qword_1ECFF6038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF6038);
  }

  return result;
}

unint64_t sub_1E584CA9C()
{
  result = qword_1ECFF6040;
  if (!qword_1ECFF6040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF6040);
  }

  return result;
}

unint64_t sub_1E584CAF4()
{
  result = qword_1ECFF6048;
  if (!qword_1ECFF6048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF6048);
  }

  return result;
}

unint64_t sub_1E584CB4C()
{
  result = qword_1ECFF6050;
  if (!qword_1ECFF6050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF6050);
  }

  return result;
}

uint64_t sub_1E584CBC0()
{
  v1 = 0x656C646E7562;
  if (*v0 != 1)
  {
    v1 = 0x756F72676B636162;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_1E584CC1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E585006C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E584CC44(uint64_t a1)
{
  v2 = sub_1E584D8E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E584CC80(uint64_t a1)
{
  v2 = sub_1E584D8E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E584CCBC()
{
  if (*v0)
  {
    result = 0x647261646E617473;
  }

  else
  {
    result = 0x7465737361;
  }

  *v0;
  return result;
}

uint64_t sub_1E584CCF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7465737361 && a2 == 0xE500000000000000;
  if (v6 || (sub_1E5854840() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x647261646E617473 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E5854840();

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

uint64_t sub_1E584CDCC(uint64_t a1)
{
  v2 = sub_1E584D7DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E584CE08(uint64_t a1)
{
  v2 = sub_1E584D7DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E584CE44()
{
  if (*v0)
  {
    result = 0x6574616C706D6574;
  }

  else
  {
    result = 0x756F72676B636162;
  }

  *v0;
  return result;
}

uint64_t sub_1E584CE94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x756F72676B636162 && a2 == 0xEF726F6C6F43646ELL;
  if (v6 || (sub_1E5854840() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6574616C706D6574 && a2 == 0xEB000000004C5255)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E5854840();

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

uint64_t sub_1E584CF7C(uint64_t a1)
{
  v2 = sub_1E584D894();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E584CFB8(uint64_t a1)
{
  v2 = sub_1E584D894();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SampleContentArtwork.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF6078, &qword_1E5856E10);
  v50 = *(v2 - 8);
  v51 = v2;
  v3 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v47 = &v44 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF6080, &qword_1E5856E18);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v46 = &v44 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF6088, &qword_1E5856E20);
  v48 = *(v8 - 8);
  v49 = v8;
  v9 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v57 = &v44 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF6090, &unk_1E5856E28);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v53 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v54 = &v44 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5D10, &unk_1E5855800);
  v45 = *(v16 - 8);
  v17 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v44 - v18;
  v20 = type metadata accessor for SampleContentArtwork();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v44 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF6098, &qword_1E5856E38);
  v56 = *(v24 - 8);
  v25 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v44 - v26;
  v28 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E584D7DC();
  sub_1E58548E0();
  sub_1E584D830(v52, v23);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5D18, &unk_1E5856E40) + 48);
    sub_1E5840C94(v23, v53, &qword_1ECFF6090, &unk_1E5856E28);
    v30 = v46;
    sub_1E5840C94(&v23[v29], v46, &qword_1ECFF6080, &qword_1E5856E18);
    v64 = 1;
    sub_1E584D894();
    v31 = v47;
    sub_1E58547E0();
    v63 = 0;
    sub_1E5853FC0();
    sub_1E58501E4(&qword_1EE2F8AA0, MEMORY[0x1E699DB98]);
    v32 = v51;
    v33 = v55;
    sub_1E58547F0();
    if (!v33)
    {
      v62 = 1;
      sub_1E5853EF0();
      sub_1E58501E4(&qword_1EE2F8AA8, MEMORY[0x1E6968FB0]);
      sub_1E58547F0();
    }

    (*(v50 + 8))(v31, v32);
    sub_1E5840E78(v30, &qword_1ECFF6080, &qword_1E5856E18);
    sub_1E5840E78(v53, &qword_1ECFF6090, &unk_1E5856E28);
  }

  else
  {
    v35 = *v23;
    v34 = *(v23 + 1);
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5D00, &unk_1E58566D0);
    v37 = *(v36 + 64);
    v38 = v45;
    (*(v45 + 32))(v19, &v23[*(v36 + 48)], v16);
    sub_1E5840C94(&v23[v37], v54, &qword_1ECFF6090, &unk_1E5856E28);
    v61 = 0;
    sub_1E584D8E8();
    sub_1E58547E0();
    v60 = 0;
    v39 = v49;
    v40 = v55;
    sub_1E5854800();
    if (v40)
    {

      (*(v48 + 8))(v57, v39);
      v41 = v54;
    }

    else
    {

      v59 = 1;
      sub_1E584FAA8(&qword_1ECFF60A8);
      sub_1E5854820();
      v58 = 2;
      sub_1E5853FC0();
      sub_1E58501E4(&qword_1EE2F8AA0, MEMORY[0x1E699DB98]);
      v43 = v54;
      sub_1E58547F0();
      (*(v48 + 8))(v57, v39);
      v41 = v43;
    }

    sub_1E5840E78(v41, &qword_1ECFF6090, &unk_1E5856E28);
    (*(v38 + 8))(v19, v16);
  }

  return (*(v56 + 8))(v27, v24);
}

uint64_t type metadata accessor for SampleContentArtwork()
{
  result = qword_1EE2F8678;
  if (!qword_1EE2F8678)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1E584D7DC()
{
  result = qword_1EE2F86C8;
  if (!qword_1EE2F86C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2F86C8);
  }

  return result;
}

uint64_t sub_1E584D830(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SampleContentArtwork();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E584D894()
{
  result = qword_1EE2F86A0;
  if (!qword_1EE2F86A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2F86A0);
  }

  return result;
}

unint64_t sub_1E584D8E8()
{
  result = qword_1ECFF60A0;
  if (!qword_1ECFF60A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF60A0);
  }

  return result;
}

uint64_t SampleContentArtwork.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF60B0, &qword_1E5856E50);
  v4 = *(v3 - 8);
  v55 = v3;
  v56 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v59 = &v50 - v6;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF60B8, &qword_1E5856E58);
  v57 = *(v61 - 8);
  v7 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v61);
  v58 = &v50 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF60C0, &unk_1E5856E60);
  v60 = *(v9 - 8);
  v10 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v50 - v11;
  v13 = type metadata accessor for SampleContentArtwork();
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = (&v50 - v19);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v50 - v21;
  v24 = a1[3];
  v23 = a1[4];
  v63 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v24);
  sub_1E584D7DC();
  v25 = v62;
  sub_1E58548D0();
  if (!v25)
  {
    v52 = v20;
    v53 = v17;
    v27 = v58;
    v26 = v59;
    v51 = v22;
    v62 = v13;
    v28 = sub_1E58547D0();
    v29 = (2 * *(v28 + 16)) | 1;
    v64 = v28;
    v65 = v28 + 32;
    v66 = 0;
    v67 = v29;
    v30 = sub_1E5835F38();
    if (v30 == 2 || v66 != v67 >> 1)
    {
      v34 = sub_1E5854750();
      swift_allocError();
      v36 = v35;
      v37 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5948, &qword_1E5855F20) + 48);
      *v36 = v62;
      sub_1E5854780();
      sub_1E5854740();
      (*(*(v34 - 8) + 104))(v36, *MEMORY[0x1E69E6AF8], v34);
      swift_willThrow();
      (*(v60 + 8))(v12, v9);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v30)
      {
        v68 = 1;
        sub_1E584D894();
        sub_1E5854770();
        sub_1E5853FC0();
        v68 = 0;
        sub_1E58501E4(&qword_1ECFF60C8, MEMORY[0x1E699DB98]);
        v31 = v53;
        v32 = v55;
        sub_1E5854790();
        v33 = v60;
        v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5D18, &unk_1E5856E40) + 48);
        sub_1E5853EF0();
        v68 = 1;
        sub_1E58501E4(&qword_1ECFF60D0, MEMORY[0x1E6968FB0]);
        sub_1E5854790();
        (*(v56 + 8))(v26, v32);
        (*(v33 + 8))(v12, v9);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v45 = v31;
        v46 = v51;
      }

      else
      {
        v68 = 0;
        sub_1E584D8E8();
        sub_1E5854770();
        v68 = 0;
        v40 = sub_1E58547A0();
        v42 = v41;
        v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5D00, &unk_1E58566D0);
        v43 = *(v56 + 48);
        v44 = v52;
        *v52 = v40;
        v44[1] = v42;
        v59 = v42;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5D10, &unk_1E5855800);
        v68 = 1;
        sub_1E584FAA8(&qword_1ECFF60D8);
        sub_1E58547C0();
        v55 = v43;
        v47 = *(v56 + 64);
        sub_1E5853FC0();
        v68 = 2;
        sub_1E58501E4(&qword_1ECFF60C8, MEMORY[0x1E699DB98]);
        v48 = v61;
        sub_1E5854790();
        v49 = v44;
        (*(v57 + 8))(v27, v48);
        (*(v60 + 8))(v12, v9);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v46 = v51;
        v45 = v49;
      }

      sub_1E584E210(v45, v46);
      sub_1E584E210(v46, v54);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v63);
}

uint64_t sub_1E584E210(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SampleContentArtwork();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t SampleContentArtwork.hash(into:)(uint64_t a1)
{
  v60 = a1;
  v1 = sub_1E5853EF0();
  v57 = *(v1 - 8);
  v58 = v1;
  v2 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v54 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF6080, &qword_1E5856E18);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v55 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v53 - v8;
  v10 = sub_1E5853FC0();
  v11 = *(v10 - 8);
  v61 = v10;
  v62 = v11;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v56 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF6090, &unk_1E5856E28);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8);
  v18 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v53 - v20;
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = &v53 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v53 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5D10, &unk_1E5855800);
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v31 = &v53 - v30;
  v32 = type metadata accessor for SampleContentArtwork();
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x1EEE9AC00](v32);
  v35 = &v53 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E584D830(v59, v35);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5D18, &unk_1E5856E40) + 48);
    sub_1E5840C94(v35, v21, &qword_1ECFF6090, &unk_1E5856E28);
    sub_1E5840C94(&v35[v36], v9, &qword_1ECFF6080, &qword_1E5856E18);
    MEMORY[0x1E692EEF0](1);
    sub_1E5840F94(v21, v18, &qword_1ECFF6090, &unk_1E5856E28);
    if ((*(v62 + 48))(v18, 1, v61) == 1)
    {
      sub_1E58548B0();
    }

    else
    {
      v41 = v61;
      v42 = v62;
      v43 = v56;
      (*(v62 + 32))(v56, v18, v61);
      sub_1E58548B0();
      sub_1E58501E4(&qword_1ECFF60E0, MEMORY[0x1E699DB98]);
      sub_1E5854600();
      (*(v42 + 8))(v43, v41);
    }

    v44 = v57;
    v45 = v55;
    sub_1E5840F94(v9, v55, &qword_1ECFF6080, &qword_1E5856E18);
    v46 = v58;
    if ((*(v44 + 48))(v45, 1, v58) == 1)
    {
      sub_1E58548B0();
    }

    else
    {
      v52 = v54;
      (*(v44 + 32))(v54, v45, v46);
      sub_1E58548B0();
      sub_1E58501E4(&qword_1ECFF60E8, MEMORY[0x1E6968FB0]);
      sub_1E5854600();
      (*(v44 + 8))(v52, v46);
    }

    sub_1E5840E78(v9, &qword_1ECFF6080, &qword_1E5856E18);
    return sub_1E5840E78(v21, &qword_1ECFF6090, &unk_1E5856E28);
  }

  else
  {
    v37 = *v35;
    v38 = *(v35 + 1);
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5D00, &unk_1E58566D0);
    v40 = *(v39 + 64);
    (*(v28 + 32))(v31, &v35[*(v39 + 48)], v27);
    sub_1E5840C94(&v35[v40], v26, &qword_1ECFF6090, &unk_1E5856E28);
    MEMORY[0x1E692EEF0](0);
    sub_1E5854680();

    sub_1E584FAA8(&qword_1ECFF60F0);
    sub_1E5854600();
    sub_1E5840F94(v26, v24, &qword_1ECFF6090, &unk_1E5856E28);
    if ((*(v62 + 48))(v24, 1, v61) == 1)
    {
      sub_1E58548B0();
    }

    else
    {
      v47 = v62;
      v48 = v56;
      v49 = v24;
      v50 = v61;
      (*(v62 + 32))(v56, v49, v61);
      sub_1E58548B0();
      sub_1E58501E4(&qword_1ECFF60E0, MEMORY[0x1E699DB98]);
      sub_1E5854600();
      (*(v47 + 8))(v48, v50);
    }

    sub_1E5840E78(v26, &qword_1ECFF6090, &unk_1E5856E28);
    return (*(v28 + 8))(v31, v27);
  }
}

uint64_t SampleContentArtwork.hashValue.getter()
{
  sub_1E5854890();
  SampleContentArtwork.hash(into:)(v1);
  return sub_1E58548C0();
}

uint64_t sub_1E584EA68()
{
  sub_1E5854890();
  SampleContentArtwork.hash(into:)(v1);
  return sub_1E58548C0();
}

uint64_t sub_1E584EAAC()
{
  sub_1E5854890();
  SampleContentArtwork.hash(into:)(v1);
  return sub_1E58548C0();
}

uint64_t _s20FitnessSampleContent0bC7ArtworkO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v139 = a2;
  v3 = sub_1E5853EF0();
  v125 = *(v3 - 8);
  v4 = *(v125 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v120 = &v119 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF6118, &qword_1E58572A0);
  v6 = *(*(v124 - 8) + 64);
  MEMORY[0x1EEE9AC00](v124);
  v8 = &v119 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF6080, &qword_1E5856E18);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v121 = &v119 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v135 = &v119 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v136 = &v119 - v15;
  v16 = sub_1E5853FC0();
  v17 = *(v16 - 8);
  v131 = v16;
  v132 = v17;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v123 = &v119 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF6120, &qword_1E58572A8);
  v20 = *(*(v129 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v129);
  v23 = &v119 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v128 = &v119 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF6090, &unk_1E5856E28);
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x1EEE9AC00](v25 - 8);
  v29 = &v119 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v27);
  v122 = &v119 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v127 = &v119 - v33;
  MEMORY[0x1EEE9AC00](v32);
  v133 = &v119 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5D10, &unk_1E5855800);
  v137 = *(v35 - 8);
  v138 = v35;
  v36 = *(v137 + 64);
  v37 = MEMORY[0x1EEE9AC00](v35);
  v130 = &v119 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v134 = &v119 - v39;
  v40 = type metadata accessor for SampleContentArtwork();
  v41 = *(*(v40 - 8) + 64);
  v42 = MEMORY[0x1EEE9AC00](v40);
  v44 = &v119 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  v46 = &v119 - v45;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF6128, &unk_1E58572B0);
  v48 = *(*(v47 - 8) + 64);
  v49 = MEMORY[0x1EEE9AC00](v47 - 8);
  v51 = &v119 - v50;
  v52 = (&v119 + *(v49 + 56) - v50);
  sub_1E584D830(a1, &v119 - v50);
  sub_1E584D830(v139, v52);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v126 = v51;
    sub_1E584D830(v51, v46);
    v64 = *v46;
    v63 = *(v46 + 1);
    v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5D00, &unk_1E58566D0);
    v66 = *(v65 + 48);
    v67 = *(v65 + 64);
    if (swift_getEnumCaseMultiPayload() == 1)
    {

      sub_1E5840E78(&v46[v67], &qword_1ECFF6090, &unk_1E5856E28);
      (*(v137 + 8))(&v46[v66], v138);
      v51 = v126;
      goto LABEL_9;
    }

    v68 = v52[1];
    v139 = *v52;
    v69 = v138;
    v70 = *(v137 + 32);
    v70(v134, &v46[v66], v138);
    sub_1E5840C94(&v46[v67], v133, &qword_1ECFF6090, &unk_1E5856E28);
    v71 = v52 + v66;
    v72 = v130;
    v70(v130, v71, v69);
    v73 = v127;
    sub_1E5840C94(v52 + v67, v127, &qword_1ECFF6090, &unk_1E5856E28);
    if (v64 == v139 && v63 == v68)
    {

      v74 = v126;
      v75 = v128;
    }

    else
    {
      v76 = sub_1E5854840();

      v74 = v126;
      v75 = v128;
      if ((v76 & 1) == 0)
      {
        sub_1E5840E78(v73, &qword_1ECFF6090, &unk_1E5856E28);
        v92 = v138;
        v90 = *(v137 + 8);
        v90(v72, v138);
        sub_1E5840E78(v133, &qword_1ECFF6090, &unk_1E5856E28);
        v93 = v134;
        goto LABEL_24;
      }
    }

    sub_1E584057C();
    v77 = v134;
    v78 = sub_1E5853FD0();
    v79 = v72;
    v80 = v133;
    if (v78)
    {
      v81 = *(v129 + 48);
      sub_1E5840F94(v133, v75, &qword_1ECFF6090, &unk_1E5856E28);
      sub_1E5840F94(v73, v75 + v81, &qword_1ECFF6090, &unk_1E5856E28);
      v82 = v131;
      v83 = *(v132 + 48);
      if (v83(v75, 1, v131) == 1)
      {
        sub_1E5840E78(v73, &qword_1ECFF6090, &unk_1E5856E28);
        v84 = v138;
        v85 = *(v137 + 8);
        v85(v130, v138);
        sub_1E5840E78(v80, &qword_1ECFF6090, &unk_1E5856E28);
        v85(v77, v84);
        if (v83(v75 + v81, 1, v82) == 1)
        {
          sub_1E5840E78(v75, &qword_1ECFF6090, &unk_1E5856E28);
          v86 = v126;
LABEL_43:
          sub_1E5850188(v86);
          return 1;
        }
      }

      else
      {
        v104 = v122;
        sub_1E5840F94(v75, v122, &qword_1ECFF6090, &unk_1E5856E28);
        if (v83(v75 + v81, 1, v82) != 1)
        {
          v113 = v132;
          v114 = v75 + v81;
          v115 = v123;
          (*(v132 + 32))(v123, v114, v82);
          sub_1E58501E4(&qword_1ECFF6138, MEMORY[0x1E699DB98]);
          LODWORD(v139) = sub_1E5854610();
          v116 = *(v113 + 8);
          v116(v115, v82);
          sub_1E5840E78(v73, &qword_1ECFF6090, &unk_1E5856E28);
          v117 = v138;
          v118 = *(v137 + 8);
          v118(v130, v138);
          sub_1E5840E78(v80, &qword_1ECFF6090, &unk_1E5856E28);
          v118(v134, v117);
          v116(v122, v82);
          sub_1E5840E78(v75, &qword_1ECFF6090, &unk_1E5856E28);
          v86 = v126;
          if (v139)
          {
            goto LABEL_43;
          }

          goto LABEL_34;
        }

        v105 = v73;
        v106 = v104;
        sub_1E5840E78(v105, &qword_1ECFF6090, &unk_1E5856E28);
        v107 = v138;
        v108 = *(v137 + 8);
        v108(v130, v138);
        sub_1E5840E78(v80, &qword_1ECFF6090, &unk_1E5856E28);
        v108(v77, v107);
        (*(v132 + 8))(v106, v82);
      }

      sub_1E5840E78(v75, &qword_1ECFF6120, &qword_1E58572A8);
      v86 = v126;
LABEL_34:
      sub_1E5850188(v86);
      return 0;
    }

    sub_1E5840E78(v73, &qword_1ECFF6090, &unk_1E5856E28);
    v90 = *(v137 + 8);
    v91 = v79;
    v92 = v138;
    v90(v91, v138);
    sub_1E5840E78(v80, &qword_1ECFF6090, &unk_1E5856E28);
    v93 = v77;
LABEL_24:
    v90(v93, v92);
    v86 = v74;
    goto LABEL_34;
  }

  v139 = v3;
  sub_1E584D830(v51, v44);
  v53 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5D18, &unk_1E5856E40) + 48);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v54 = v51;
    sub_1E5840C94(&v44[v53], v136, &qword_1ECFF6080, &qword_1E5856E18);
    sub_1E5840C94(v52 + v53, v135, &qword_1ECFF6080, &qword_1E5856E18);
    v55 = *(v129 + 48);
    sub_1E5840C94(v44, v23, &qword_1ECFF6090, &unk_1E5856E28);
    sub_1E5840C94(v52, &v23[v55], &qword_1ECFF6090, &unk_1E5856E28);
    v56 = v131;
    v57 = v132;
    v58 = *(v132 + 48);
    if (v58(v23, 1, v131) == 1)
    {
      v59 = v58(&v23[v55], 1, v56);
      v61 = v135;
      v60 = v136;
      if (v59 == 1)
      {
        sub_1E5840E78(v23, &qword_1ECFF6090, &unk_1E5856E28);
        v62 = v54;
LABEL_26:
        v97 = *(v124 + 48);
        sub_1E5840F94(v60, v8, &qword_1ECFF6080, &qword_1E5856E18);
        sub_1E5840F94(v61, &v8[v97], &qword_1ECFF6080, &qword_1E5856E18);
        v98 = v125;
        v99 = v61;
        v100 = *(v125 + 48);
        v101 = v139;
        if (v100(v8, 1, v139) == 1)
        {
          sub_1E5840E78(v99, &qword_1ECFF6080, &qword_1E5856E18);
          sub_1E5840E78(v60, &qword_1ECFF6080, &qword_1E5856E18);
          if (v100(&v8[v97], 1, v101) == 1)
          {
            sub_1E5840E78(v8, &qword_1ECFF6080, &qword_1E5856E18);
LABEL_41:
            v86 = v62;
            goto LABEL_43;
          }
        }

        else
        {
          v102 = v121;
          sub_1E5840F94(v8, v121, &qword_1ECFF6080, &qword_1E5856E18);
          if (v100(&v8[v97], 1, v101) != 1)
          {
            v109 = v120;
            (*(v98 + 32))(v120, &v8[v97], v101);
            sub_1E58501E4(&qword_1ECFF6130, MEMORY[0x1E6968FB0]);
            v110 = v102;
            v111 = sub_1E5854610();
            v112 = *(v98 + 8);
            v112(v109, v101);
            sub_1E5840E78(v135, &qword_1ECFF6080, &qword_1E5856E18);
            sub_1E5840E78(v136, &qword_1ECFF6080, &qword_1E5856E18);
            v112(v110, v101);
            sub_1E5840E78(v8, &qword_1ECFF6080, &qword_1E5856E18);
            if (v111)
            {
              goto LABEL_41;
            }

            goto LABEL_33;
          }

          sub_1E5840E78(v135, &qword_1ECFF6080, &qword_1E5856E18);
          sub_1E5840E78(v136, &qword_1ECFF6080, &qword_1E5856E18);
          (*(v98 + 8))(v102, v101);
        }

        v88 = &qword_1ECFF6118;
        v89 = &qword_1E58572A0;
        v87 = v8;
LABEL_32:
        sub_1E5840E78(v87, v88, v89);
LABEL_33:
        v86 = v62;
        goto LABEL_34;
      }
    }

    else
    {
      sub_1E5840F94(v23, v29, &qword_1ECFF6090, &unk_1E5856E28);
      if (v58(&v23[v55], 1, v56) != 1)
      {
        v94 = v123;
        (*(v57 + 32))(v123, &v23[v55], v56);
        sub_1E58501E4(&qword_1ECFF6138, MEMORY[0x1E699DB98]);
        v95 = sub_1E5854610();
        v96 = *(v57 + 8);
        v96(v94, v56);
        v96(v29, v56);
        sub_1E5840E78(v23, &qword_1ECFF6090, &unk_1E5856E28);
        v62 = v54;
        v61 = v135;
        v60 = v136;
        if (v95)
        {
          goto LABEL_26;
        }

LABEL_21:
        sub_1E5840E78(v61, &qword_1ECFF6080, &qword_1E5856E18);
        v87 = v60;
        v88 = &qword_1ECFF6080;
        v89 = &qword_1E5856E18;
        goto LABEL_32;
      }

      (*(v57 + 8))(v29, v56);
      v61 = v135;
      v60 = v136;
    }

    sub_1E5840E78(v23, &qword_1ECFF6120, &qword_1E58572A8);
    v62 = v54;
    goto LABEL_21;
  }

  sub_1E5840E78(&v44[v53], &qword_1ECFF6080, &qword_1E5856E18);
  sub_1E5840E78(v44, &qword_1ECFF6090, &unk_1E5856E28);
LABEL_9:
  sub_1E5840E78(v51, &qword_1ECFF6128, &unk_1E58572B0);
  return 0;
}

uint64_t sub_1E584FAA8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFF5D10, &unk_1E5855800);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1E584FB90()
{
  sub_1E584FC04();
  if (v0 <= 0x3F)
  {
    sub_1E584FC98();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1E584FC04()
{
  if (!qword_1EE2F8478)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFF5D10, &unk_1E5855800);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFF6090, &unk_1E5856E28);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EE2F8478);
    }
  }
}

void sub_1E584FC98()
{
  if (!qword_1EE2F8A98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFF6090, &unk_1E5856E28);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECFF6080, &qword_1E5856E18);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE2F8A98);
    }
  }
}

unint64_t sub_1E584FD58()
{
  result = qword_1ECFF6100;
  if (!qword_1ECFF6100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF6100);
  }

  return result;
}

unint64_t sub_1E584FDB0()
{
  result = qword_1ECFF6108;
  if (!qword_1ECFF6108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF6108);
  }

  return result;
}

unint64_t sub_1E584FE08()
{
  result = qword_1ECFF6110;
  if (!qword_1ECFF6110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF6110);
  }

  return result;
}

unint64_t sub_1E584FE60()
{
  result = qword_1EE2F86A8;
  if (!qword_1EE2F86A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2F86A8);
  }

  return result;
}

unint64_t sub_1E584FEB8()
{
  result = qword_1EE2F86B0;
  if (!qword_1EE2F86B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2F86B0);
  }

  return result;
}

unint64_t sub_1E584FF10()
{
  result = qword_1EE2F8690;
  if (!qword_1EE2F8690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2F8690);
  }

  return result;
}

unint64_t sub_1E584FF68()
{
  result = qword_1EE2F8698;
  if (!qword_1EE2F8698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2F8698);
  }

  return result;
}

unint64_t sub_1E584FFC0()
{
  result = qword_1EE2F86B8;
  if (!qword_1EE2F86B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2F86B8);
  }

  return result;
}

unint64_t sub_1E5850018()
{
  result = qword_1EE2F86C0;
  if (!qword_1EE2F86C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2F86C0);
  }

  return result;
}

uint64_t sub_1E585006C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1E5854840() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C646E7562 && a2 == 0xE600000000000000 || (sub_1E5854840() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x756F72676B636162 && a2 == 0xEF726F6C6F43646ELL)
  {

    return 2;
  }

  else
  {
    v6 = sub_1E5854840();

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

uint64_t sub_1E5850188(uint64_t a1)
{
  v2 = type metadata accessor for SampleContentArtwork();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E58501E4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t SampleContentItem.init(artwork:caption:identifier:isAvailable:subtitle:title:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  sub_1E584E210(a1, a8);
  v15 = type metadata accessor for SampleContentItem();
  v16 = v15[5];
  v17 = sub_1E5853EB0();
  v21 = *(*(v17 - 8) + 32);
  (v21)((v17 - 8), a8 + v16, a2, v17);
  v18 = (a8 + v15[6]);
  *v18 = a3;
  v18[1] = a4;
  *(a8 + v15[7]) = a5;
  v21(a8 + v15[8], a6, v17);
  v19 = a8 + v15[9];

  return (v21)(v19, a7, v17);
}

uint64_t type metadata accessor for SampleContentItem()
{
  result = qword_1EE2F8870;
  if (!qword_1EE2F8870)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SampleContentItem.caption.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SampleContentItem() + 20);
  v4 = sub_1E5853EB0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SampleContentItem.identifier.getter()
{
  v1 = (v0 + *(type metadata accessor for SampleContentItem() + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t SampleContentItem.subtitle.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SampleContentItem() + 32);
  v4 = sub_1E5853EB0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SampleContentItem.title.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SampleContentItem() + 36);
  v4 = sub_1E5853EB0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1E58505B8()
{
  v1 = *v0;
  v2 = 0x6B726F77747261;
  v3 = 0x616C696176417369;
  v4 = 0x656C746974627573;
  if (v1 != 4)
  {
    v4 = 0x656C746974;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6E6F6974706163;
  if (v1 != 1)
  {
    v5 = 0x696669746E656469;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1E585067C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E5851B28(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E58506B0(uint64_t a1)
{
  v2 = sub_1E58509F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E58506EC(uint64_t a1)
{
  v2 = sub_1E58509F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SampleContentItem.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF6140, &qword_1E58572C0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v20 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E58509F8();
  sub_1E58548E0();
  v26 = 0;
  type metadata accessor for SampleContentArtwork();
  sub_1E58517C0(&qword_1EE2F8688, type metadata accessor for SampleContentArtwork);
  sub_1E5854820();
  if (!v2)
  {
    v11 = type metadata accessor for SampleContentItem();
    v12 = v11[5];
    v25 = 1;
    sub_1E5853EB0();
    sub_1E58517C0(&qword_1EE2F8AB8, MEMORY[0x1E6968848]);
    sub_1E5854820();
    v13 = (v3 + v11[6]);
    v14 = *v13;
    v15 = v13[1];
    v24 = 2;
    sub_1E5854800();
    v16 = *(v3 + v11[7]);
    v23 = 3;
    sub_1E5854810();
    v17 = v11[8];
    v22 = 4;
    sub_1E5854820();
    v18 = v11[9];
    v21 = 5;
    sub_1E5854820();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1E58509F8()
{
  result = qword_1EE2F8898;
  if (!qword_1EE2F8898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2F8898);
  }

  return result;
}

uint64_t SampleContentItem.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v47 = sub_1E5853EB0();
  v44 = *(v47 - 8);
  v3 = *(v44 + 64);
  v4 = MEMORY[0x1EEE9AC00](v47);
  v42 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v43 = &v39 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v39 - v8;
  v10 = type metadata accessor for SampleContentArtwork();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v46 = (&v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF6148, &qword_1E58572C8);
  v45 = *(v49 - 8);
  v13 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v49);
  v15 = &v39 - v14;
  v16 = type metadata accessor for SampleContentItem();
  v17 = *(*(v16 - 1) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E58509F8();
  v48 = v15;
  v21 = v50;
  sub_1E58548D0();
  if (v21)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v22 = v45;
  v40 = v19;
  v23 = v47;
  v56 = 0;
  sub_1E58517C0(&qword_1ECFF6150, type metadata accessor for SampleContentArtwork);
  v24 = v46;
  sub_1E58547C0();
  v25 = v40;
  sub_1E584E210(v24, v40);
  v55 = 1;
  v26 = v9;
  v27 = v23;
  v28 = sub_1E58517C0(&qword_1ECFF5E20, MEMORY[0x1E6968848]);
  sub_1E58547C0();
  v50 = v28;
  v29 = *(v44 + 32);
  v29(v25 + v16[5], v26, v27);
  v54 = 2;
  v30 = sub_1E58547A0();
  v31 = a1;
  v46 = v29;
  v32 = &v40[v16[6]];
  *v32 = v30;
  v32[1] = v33;
  v53 = 3;
  v34 = v16;
  v40[v16[7]] = sub_1E58547B0() & 1;
  v52 = 4;
  v35 = v43;
  sub_1E58547C0();
  v46(&v40[v34[8]], v35, v27);
  v51 = 5;
  v36 = v42;
  sub_1E58547C0();
  (*(v22 + 8))(v48, v49);
  v37 = v40;
  v46(&v40[v34[9]], v36, v27);
  sub_1E58510A4(v37, v41, type metadata accessor for SampleContentItem);
  __swift_destroy_boxed_opaque_existential_1(v31);
  return sub_1E585110C(v37, type metadata accessor for SampleContentItem);
}

uint64_t sub_1E58510A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E585110C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t SampleContentItem.hash(into:)(uint64_t a1)
{
  v2 = v1;
  SampleContentArtwork.hash(into:)(a1);
  v3 = type metadata accessor for SampleContentItem();
  v4 = v3[5];
  sub_1E5853EB0();
  sub_1E58517C0(&qword_1ECFF6158, MEMORY[0x1E6968848]);
  sub_1E5854600();
  v5 = (v2 + v3[6]);
  v6 = *v5;
  v7 = v5[1];
  sub_1E5854680();
  v8 = *(v2 + v3[7]);
  sub_1E58548B0();
  v9 = v2 + v3[8];
  sub_1E5854600();
  v10 = v2 + v3[9];
  return sub_1E5854600();
}

uint64_t SampleContentItem.hashValue.getter()
{
  v1 = v0;
  sub_1E5854890();
  SampleContentArtwork.hash(into:)(v11);
  v2 = type metadata accessor for SampleContentItem();
  v3 = v2[5];
  sub_1E5853EB0();
  sub_1E58517C0(&qword_1ECFF6158, MEMORY[0x1E6968848]);
  sub_1E5854600();
  v4 = (v1 + v2[6]);
  v5 = *v4;
  v6 = v4[1];
  sub_1E5854680();
  v7 = *(v1 + v2[7]);
  sub_1E58548B0();
  v8 = v1 + v2[8];
  sub_1E5854600();
  v9 = v1 + v2[9];
  sub_1E5854600();
  return sub_1E58548C0();
}

uint64_t sub_1E58513A4(int *a1)
{
  v3 = v1;
  sub_1E5854890();
  SampleContentArtwork.hash(into:)(v12);
  v4 = a1[5];
  sub_1E5853EB0();
  sub_1E58517C0(&qword_1ECFF6158, MEMORY[0x1E6968848]);
  sub_1E5854600();
  v5 = (v3 + a1[6]);
  v6 = *v5;
  v7 = v5[1];
  sub_1E5854680();
  v8 = *(v3 + a1[7]);
  sub_1E58548B0();
  v9 = v3 + a1[8];
  sub_1E5854600();
  v10 = v3 + a1[9];
  sub_1E5854600();
  return sub_1E58548C0();
}

uint64_t sub_1E58514AC(uint64_t a1, int *a2)
{
  v4 = v2;
  SampleContentArtwork.hash(into:)(a1);
  v5 = a2[5];
  sub_1E5853EB0();
  sub_1E58517C0(&qword_1ECFF6158, MEMORY[0x1E6968848]);
  sub_1E5854600();
  v6 = (v4 + a2[6]);
  v7 = *v6;
  v8 = v6[1];
  sub_1E5854680();
  v9 = *(v4 + a2[7]);
  sub_1E58548B0();
  v10 = v4 + a2[8];
  sub_1E5854600();
  v11 = v4 + a2[9];
  return sub_1E5854600();
}

uint64_t sub_1E5851598(uint64_t a1, int *a2)
{
  v4 = v2;
  sub_1E5854890();
  SampleContentArtwork.hash(into:)(v13);
  v5 = a2[5];
  sub_1E5853EB0();
  sub_1E58517C0(&qword_1ECFF6158, MEMORY[0x1E6968848]);
  sub_1E5854600();
  v6 = (v4 + a2[6]);
  v7 = *v6;
  v8 = v6[1];
  sub_1E5854680();
  v9 = *(v4 + a2[7]);
  sub_1E58548B0();
  v10 = v4 + a2[8];
  sub_1E5854600();
  v11 = v4 + a2[9];
  sub_1E5854600();
  return sub_1E58548C0();
}

uint64_t _s20FitnessSampleContent0bC4ItemV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((static SampleContentArtwork.== infix(_:_:)(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for SampleContentItem();
  v5 = v4[5];
  if ((sub_1E5853EA0() & 1) == 0)
  {
    return 0;
  }

  v6 = v4[6];
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v10 = v7 == *v9 && v8 == v9[1];
  if (!v10 && (sub_1E5854840() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + v4[7]) != *(a2 + v4[7]))
  {
    return 0;
  }

  v11 = v4[8];
  if ((sub_1E5853EA0() & 1) == 0)
  {
    return 0;
  }

  v12 = v4[9];

  return sub_1E5853EA0();
}

uint64_t sub_1E58517C0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E5851830()
{
  result = type metadata accessor for SampleContentArtwork();
  if (v1 <= 0x3F)
  {
    result = sub_1E5853EB0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SampleContentItem.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SampleContentItem.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1E5851A24()
{
  result = qword_1ECFF6168;
  if (!qword_1ECFF6168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF6168);
  }

  return result;
}

unint64_t sub_1E5851A7C()
{
  result = qword_1EE2F8888;
  if (!qword_1EE2F8888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2F8888);
  }

  return result;
}

unint64_t sub_1E5851AD4()
{
  result = qword_1EE2F8890;
  if (!qword_1EE2F8890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2F8890);
  }

  return result;
}

uint64_t sub_1E5851B28(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6B726F77747261 && a2 == 0xE700000000000000;
  if (v4 || (sub_1E5854840() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F6974706163 && a2 == 0xE700000000000000 || (sub_1E5854840() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_1E5854840() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x616C696176417369 && a2 == 0xEB00000000656C62 || (sub_1E5854840() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (sub_1E5854840() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_1E5854840();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t SampleContentEnvironment.init(hide:onItemTapped:onFitnessPlusButtonTapped:onSettingsButtonTapped:resolveSampleContentItems:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11)
{
  *a9 = result;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  a9[8] = a10;
  a9[9] = a11;
  return result;
}

uint64_t SampleContentEnvironment.hide.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t SampleContentEnvironment.onItemTapped.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t SampleContentEnvironment.onFitnessPlusButtonTapped.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t SampleContentEnvironment.onSettingsButtonTapped.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t SampleContentEnvironment.resolveSampleContentItems.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

uint64_t SampleContentWorkoutViewErrorItemContext.hashValue.getter()
{
  v1 = *v0;
  sub_1E5854890();
  MEMORY[0x1E692EEF0](v1);
  return sub_1E58548C0();
}

unint64_t sub_1E5851ED8()
{
  result = qword_1ECFF6170;
  if (!qword_1ECFF6170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF6170);
  }

  return result;
}

uint64_t SampleContentSummaryWorkoutsCardViewBuilderRequest.init(item:isInteractive:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5F48, &unk_1E58566A0);
  v6 = *(type metadata accessor for SampleContentSummaryCardItem() - 8);
  v7 = *(v6 + 72);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1E58553F0;
  result = sub_1E58526F4(a1, v9 + v8, type metadata accessor for SampleContentSummaryCardItem);
  *a3 = v9;
  *(a3 + 8) = a2;
  return result;
}

FitnessSampleContent::SampleContentSummaryWorkoutsCardViewBuilderRequest __swiftcall SampleContentSummaryWorkoutsCardViewBuilderRequest.init(items:isInteractive:)(FitnessSampleContent::SampleContentSummaryWorkoutsCardViewBuilderRequest items, Swift::Bool isInteractive)
{
  *v2 = items.items._rawValue;
  *(v2 + 8) = isInteractive;
  items.isInteractive = isInteractive;
  return items;
}

uint64_t static SampleContentSummaryWorkoutsCardViewBuilderRequest.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  return sub_1E5844A54(*a1, *a2) & ~(v2 ^ v3) & 1;
}

uint64_t SampleContentSummaryWorkoutsCardViewBuilderRequest.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  sub_1E5852258(a1, v2);
  return sub_1E58548B0();
}

uint64_t SampleContentSummaryWorkoutsCardViewBuilderRequest.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1E5854890();
  sub_1E5852258(v4, v1);
  sub_1E58548B0();
  return sub_1E58548C0();
}

uint64_t sub_1E5852120()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1E5854890();
  sub_1E5852258(v4, v1);
  sub_1E58548B0();
  return sub_1E58548C0();
}

uint64_t sub_1E5852180(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  sub_1E5852258(a1, v2);
  return sub_1E58548B0();
}

uint64_t sub_1E58521B8()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1E5854890();
  sub_1E5852258(v4, v1);
  sub_1E58548B0();
  return sub_1E58548C0();
}

uint64_t sub_1E5852214(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  return sub_1E5844A54(*a1, *a2) & ~(v2 ^ v3) & 1;
}

uint64_t sub_1E5852258(uint64_t a1, uint64_t a2)
{
  v38 = type metadata accessor for SampleContentItem();
  v4 = *(*(v38 - 8) + 64);
  MEMORY[0x1EEE9AC00](v38);
  v37 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for SampleContentSummaryCardItem();
  v6 = *(v43 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v43);
  v10 = (&v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v36 - v11;
  v13 = *(a2 + 16);
  result = MEMORY[0x1E692EEF0](v13);
  if (v13)
  {
    v15 = a2 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v16 = *(v6 + 72);
    v41 = v12;
    v42 = v16;
    do
    {
      sub_1E5852690(v15, v12);
      sub_1E5852690(v12, v10);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          v29 = *v10;
          v30 = v10[1];
          v31 = v10[2];
          v32 = v10[4];
          v33 = v10[5];
          v34 = v10[6];
          v39 = v10[3];
          v40 = v33;
          MEMORY[0x1E692EEF0](2);
          v35 = v29;
          v12 = v41;
          MEMORY[0x1E692EEF0](v35);
          sub_1E5854680();
          sub_1E5854680();
          sub_1E5854680();
        }

        else
        {
          MEMORY[0x1E692EEF0](0);
        }

        v27 = type metadata accessor for SampleContentSummaryCardItem;
        v26 = v12;
      }

      else
      {
        v17 = v37;
        sub_1E58526F4(v10, v37, type metadata accessor for SampleContentItem);
        MEMORY[0x1E692EEF0](1);
        SampleContentArtwork.hash(into:)(a1);
        v18 = v38;
        v19 = *(v38 + 20);
        sub_1E5853EB0();
        sub_1E585275C();
        sub_1E5854600();
        v20 = (v17 + v18[6]);
        v21 = *v20;
        v22 = v20[1];
        sub_1E5854680();
        v23 = *(v17 + v18[7]);
        sub_1E58548B0();
        v24 = v17 + v18[8];
        sub_1E5854600();
        v25 = v17 + v18[9];
        v12 = v41;
        sub_1E5854600();
        sub_1E58527B4(v12, type metadata accessor for SampleContentSummaryCardItem);
        v26 = v17;
        v27 = type metadata accessor for SampleContentItem;
      }

      result = sub_1E58527B4(v26, v27);
      v15 += v42;
      --v13;
    }

    while (v13);
  }

  return result;
}

unint64_t sub_1E5852590()
{
  result = qword_1ECFF6178;
  if (!qword_1ECFF6178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF6178);
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_1E58525F8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
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

uint64_t sub_1E5852640(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1E5852690(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SampleContentSummaryCardItem();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E58526F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1E585275C()
{
  result = qword_1ECFF6158;
  if (!qword_1ECFF6158)
  {
    sub_1E5853EB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF6158);
  }

  return result;
}

uint64_t sub_1E58527B4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E5852814(uint64_t a1)
{
  v3 = sub_1E5853F70();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E5854630();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  *v1;
  sub_1E5854620();
  if (qword_1EE2F8460 != -1)
  {
    swift_once();
  }

  v10 = qword_1EE2F8AC0;
  (*(v4 + 16))(v7, a1, v3);
  v11 = v10;
  v14[3] = sub_1E5854650();
  v14[4] = v12;
  sub_1E5840074();
  return sub_1E5854360();
}

uint64_t sub_1E58529F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1E5853F70();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1E5854630();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  if (*v3)
  {
    sub_1E5854620();
  }

  else
  {
    v19 = 0;
    v20 = 0xE000000000000000;
    sub_1E5854730();

    v19 = 0xD000000000000017;
    v20 = 0x80000001E5857BC0;
    MEMORY[0x1E692ECE0](a2, a3);
    MEMORY[0x1E692ECE0](0xD000000000000017, 0x80000001E5857BE0);
    sub_1E5854640();
  }

  if (qword_1EE2F8460 != -1)
  {
    swift_once();
  }

  v14 = qword_1EE2F8AC0;
  (*(v8 + 16))(v11, a1, v7);
  v15 = v14;
  v19 = sub_1E5854650();
  v20 = v16;
  sub_1E5840074();
  return sub_1E5854360();
}

uint64_t sub_1E5852C34(uint64_t a1)
{
  v3 = sub_1E5853F70();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E5854630();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  *v1;
  sub_1E5854620();
  if (qword_1EE2F8460 != -1)
  {
    swift_once();
  }

  v10 = qword_1EE2F8AC0;
  (*(v4 + 16))(v7, a1, v3);
  v11 = v10;
  v14[3] = sub_1E5854650();
  v14[4] = v12;
  sub_1E5840074();
  return sub_1E5854360();
}

uint64_t sub_1E5852E70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7669746341736168 && a2 == 0xEC00000064657461)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1E5854840();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1E5852EFC(uint64_t a1)
{
  v2 = sub_1E58530AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5852F38(uint64_t a1)
{
  v2 = sub_1E58530AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SampleContentLocalState.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF6180, &qword_1E58576E0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E58530AC();
  sub_1E58548E0();
  sub_1E5854810();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1E58530AC()
{
  result = qword_1ECFF6188;
  if (!qword_1ECFF6188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF6188);
  }

  return result;
}

uint64_t SampleContentLocalState.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF6190, &qword_1E58576E8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E58530AC();
  sub_1E58548D0();
  if (!v2)
  {
    v11 = sub_1E58547B0();
    (*(v6 + 8))(v9, v5);
    *a2 = v11 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1E5853270(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF6180, &qword_1E58576E0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E58530AC();
  sub_1E58548E0();
  sub_1E5854810();
  return (*(v4 + 8))(v7, v3);
}

uint64_t getEnumTagSinglePayload for SampleContentLocalState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

unint64_t sub_1E5853484()
{
  result = qword_1ECFF6198;
  if (!qword_1ECFF6198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF6198);
  }

  return result;
}

unint64_t sub_1E58534DC()
{
  result = qword_1ECFF61A0;
  if (!qword_1ECFF61A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF61A0);
  }

  return result;
}

unint64_t sub_1E5853534()
{
  result = qword_1ECFF61A8;
  if (!qword_1ECFF61A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECFF61A8);
  }

  return result;
}

uint64_t SampleContentSummaryCardItem.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for SampleContentItem();
  v5 = *(*(v4 - 1) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SampleContentSummaryCardItem();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1E5852690(v2, v11);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v13 = *v11;
      v14 = v11[1];
      v15 = v11[2];
      v16 = v11[3];
      v17 = v11[4];
      v18 = v11[5];
      v19 = v11[6];
      MEMORY[0x1E692EEF0](2);
      MEMORY[0x1E692EEF0](v13);
      sub_1E5854680();
      sub_1E5854680();
      sub_1E5854680();
    }

    else
    {
      return MEMORY[0x1E692EEF0](0);
    }
  }

  else
  {
    sub_1E584543C(v11, v7);
    MEMORY[0x1E692EEF0](1);
    SampleContentArtwork.hash(into:)(a1);
    v21 = v4[5];
    sub_1E5853EB0();
    sub_1E5853D5C(&qword_1ECFF6158, MEMORY[0x1E6968848]);
    sub_1E5854600();
    v22 = &v7[v4[6]];
    v23 = *v22;
    v24 = *(v22 + 1);
    sub_1E5854680();
    v25 = v7[v4[7]];
    sub_1E58548B0();
    v26 = &v7[v4[8]];
    sub_1E5854600();
    v27 = &v7[v4[9]];
    sub_1E5854600();
    return sub_1E5853E0C(v7, type metadata accessor for SampleContentItem);
  }
}

uint64_t SampleContentSummaryCardItem.hashValue.getter()
{
  sub_1E5854890();
  SampleContentSummaryCardItem.hash(into:)(v1);
  return sub_1E58548C0();
}

uint64_t sub_1E5853840()
{
  sub_1E5854890();
  SampleContentSummaryCardItem.hash(into:)(v1);
  return sub_1E58548C0();
}

uint64_t sub_1E5853884()
{
  sub_1E5854890();
  SampleContentSummaryCardItem.hash(into:)(v1);
  return sub_1E58548C0();
}

uint64_t _s20FitnessSampleContent0bC15SummaryCardItemO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SampleContentItem();
  v5 = *(*(v4 - 1) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SampleContentSummaryCardItem();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v46 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECFF5E40, &unk_1E5855EB0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15 - 8);
  v19 = v46 - v18;
  v20 = v46 + *(v17 + 56) - v18;
  sub_1E5852690(a1, v46 - v18);
  sub_1E5852690(a2, v20);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_1E5852690(v19, v14);
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1E584543C(v20, v7);
      if ((static SampleContentArtwork.== infix(_:_:)(v14, v7) & 1) == 0)
      {
        goto LABEL_24;
      }

      v38 = v4[5];
      if ((sub_1E5853EA0() & 1) == 0)
      {
        goto LABEL_24;
      }

      v39 = v4[6];
      v40 = *&v14[v39];
      v41 = *&v14[v39 + 8];
      v42 = &v7[v39];
      v43 = v40 == *v42 && v41 == *(v42 + 1);
      if (!v43 && (sub_1E5854840() & 1) == 0 || v14[v4[7]] != v7[v4[7]] || (v44 = v4[8], (sub_1E5853EA0() & 1) == 0) || (v45 = v4[9], (sub_1E5853EA0() & 1) == 0))
      {
LABEL_24:
        sub_1E5853E0C(v7, type metadata accessor for SampleContentItem);
        sub_1E5853E0C(v14, type metadata accessor for SampleContentItem);
        sub_1E5853E0C(v19, type metadata accessor for SampleContentSummaryCardItem);
        goto LABEL_11;
      }

      sub_1E5853E0C(v7, type metadata accessor for SampleContentItem);
      sub_1E5853E0C(v14, type metadata accessor for SampleContentItem);
LABEL_8:
      sub_1E5853E0C(v19, type metadata accessor for SampleContentSummaryCardItem);
      v36 = 1;
      return v36 & 1;
    }

    sub_1E5853E0C(v14, type metadata accessor for SampleContentItem);
LABEL_10:
    sub_1E5845374(v19);
LABEL_11:
    v36 = 0;
    return v36 & 1;
  }

  if (EnumCaseMultiPayload != 1)
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  sub_1E5852690(v19, v12);
  v22 = *(v12 + 2);
  v23 = *(v12 + 4);
  v24 = *(v12 + 6);
  if (swift_getEnumCaseMultiPayload() != 1)
  {

    goto LABEL_10;
  }

  v25 = *(v12 + 5);
  v26 = *(v12 + 3);
  v27 = *(v12 + 1);
  v28 = *v12;
  v29 = *v20;
  v30 = *(v20 + 1);
  v31 = *(v20 + 2);
  v32 = *(v20 + 3);
  v33 = *(v20 + 4);
  v34 = *(v20 + 5);
  v35 = *(v20 + 6);
  LOBYTE(v47[0]) = v28;
  v47[1] = v27;
  v47[2] = v22;
  v47[3] = v26;
  v47[4] = v23;
  v47[5] = v25;
  v47[6] = v24;
  LOBYTE(v46[0]) = v29;
  v46[1] = v30;
  v46[2] = v31;
  v46[3] = v32;
  v46[4] = v33;
  v46[5] = v34;
  v46[6] = v35;
  v36 = _s20FitnessSampleContent0bC20SummaryCardErrorItemV2eeoiySbAC_ACtFZ_0(v47, v46);

  sub_1E5853E0C(v19, type metadata accessor for SampleContentSummaryCardItem);
  return v36 & 1;
}

uint64_t type metadata accessor for SampleContentSummaryCardItem()
{
  result = qword_1EE2F89C0;
  if (!qword_1EE2F89C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E5853D5C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E5853DA4()
{
  result = type metadata accessor for SampleContentItem();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1E5853E0C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}