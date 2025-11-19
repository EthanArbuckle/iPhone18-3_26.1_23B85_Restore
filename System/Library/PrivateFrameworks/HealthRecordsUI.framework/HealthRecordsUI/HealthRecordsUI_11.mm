uint64_t sub_1D114FA68(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D114FAB0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1D114FB20(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D114FB68(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_1D114FBB8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D114FC00(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy65_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1D114FC88(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D114FCD0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D114FD34(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D114FD7C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D114FDD8(uint64_t a1, unsigned int a2)
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

uint64_t sub_1D114FE34(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1D114FEA4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D114FEEC(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1D114FF4C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D114FF94(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1D114FFF8()
{
  result = qword_1EC60B938;
  if (!qword_1EC60B938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60B938);
  }

  return result;
}

unint64_t sub_1D1150078()
{
  result = qword_1EC60B940;
  if (!qword_1EC60B940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60B940);
  }

  return result;
}

unint64_t sub_1D11500CC()
{
  result = qword_1EC60B948;
  if (!qword_1EC60B948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60B948);
  }

  return result;
}

unint64_t sub_1D115014C()
{
  result = qword_1EC60B950;
  if (!qword_1EC60B950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60B950);
  }

  return result;
}

unint64_t sub_1D11501A0()
{
  result = qword_1EC60B958;
  if (!qword_1EC60B958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60B958);
  }

  return result;
}

unint64_t sub_1D1150220()
{
  result = qword_1EC60B960;
  if (!qword_1EC60B960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60B960);
  }

  return result;
}

unint64_t sub_1D1150274()
{
  result = qword_1EC60B968;
  if (!qword_1EC60B968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60B968);
  }

  return result;
}

unint64_t sub_1D11502F4()
{
  result = qword_1EC60B970;
  if (!qword_1EC60B970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60B970);
  }

  return result;
}

unint64_t sub_1D1150348()
{
  result = qword_1EC60B978;
  if (!qword_1EC60B978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60B978);
  }

  return result;
}

uint64_t sub_1D11503C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D1150404()
{
  result = qword_1EC60B980;
  if (!qword_1EC60B980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60B980);
  }

  return result;
}

unint64_t sub_1D1150458()
{
  result = qword_1EC60B988;
  if (!qword_1EC60B988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60B988);
  }

  return result;
}

uint64_t sub_1D11504AC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1D139162C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6942664F65746164 && a2 == 0xEB00000000687472 || (sub_1D139162C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x676E615265746164 && a2 == 0xE900000000000065 || (sub_1D139162C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x736E6F6974636573 && a2 == 0xE800000000000000 || (sub_1D139162C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x72656469766F7270 && a2 == 0xE900000000000073)
  {

    return 4;
  }

  else
  {
    v6 = sub_1D139162C();

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

uint64_t sub_1D115066C@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1D1155034(0, &qword_1EC60BA68, sub_1D11533F8, &_s13FormattedDataV10CodingKeysON, MEMORY[0x1E69E6F48]);
  v31 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v24 - v7;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D11533F8();
  sub_1D13917FC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v9 = v6;
  LOBYTE(v36[0]) = 0;
  v10 = sub_1D13914CC();
  v12 = v11;
  LOBYTE(v36[0]) = 1;
  v13 = sub_1D13914CC();
  v30 = v14;
  v28 = v13;
  LOBYTE(v36[0]) = 2;
  v27 = sub_1D13914AC();
  v29 = v15;
  sub_1D1154880(0, &qword_1EC60BA78);
  LOBYTE(v32) = 3;
  sub_1D115344C();
  sub_1D13914FC();
  v26 = v36[0];
  sub_1D10FA6A8();
  v37 = 4;
  sub_1D115314C(&qword_1EC60B9C8);
  sub_1D13914FC();
  (*(v9 + 8))(v8, v31);
  v31 = v38;
  *&v32 = v10;
  v16 = v28;
  *(&v32 + 1) = v12;
  *&v33 = v28;
  v25 = v12;
  v18 = v29;
  v17 = v30;
  v19 = v27;
  *(&v33 + 1) = v30;
  *&v34 = v27;
  v20 = v26;
  *(&v34 + 1) = v29;
  *&v35 = v26;
  *(&v35 + 1) = v38;
  sub_1D1153528(&v32, v36);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v36[0] = v10;
  v36[1] = v25;
  v36[2] = v16;
  v36[3] = v17;
  v36[4] = v19;
  v36[5] = v18;
  v36[6] = v20;
  v36[7] = v31;
  result = sub_1D1153560(v36);
  v22 = v33;
  *a2 = v32;
  a2[1] = v22;
  v23 = v35;
  a2[2] = v34;
  a2[3] = v23;
  return result;
}

uint64_t sub_1D1150AA0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64496567616D69 && a2 == 0xE700000000000000;
  if (v4 || (sub_1D139162C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_1D139162C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7364726F636572 && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D139162C();

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

uint64_t sub_1D1150BB4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  sub_1D1155034(0, &qword_1EC60B990, sub_1D1150E54, &_s16FormattedSectionV10CodingKeysON, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D1150E54();
  sub_1D13917FC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v9 = v6;
  v10 = v22;
  v27 = 0;
  v11 = sub_1D13914CC();
  v13 = v12;
  v21 = v11;
  v26 = 1;
  v19 = sub_1D13914CC();
  v20 = v14;
  v25 = 2;
  sub_1D1150EA8();
  sub_1D13914FC();
  (*(v9 + 8))(v8, v5);
  v15 = v23;
  v16 = v24;
  result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
  *v10 = v21;
  *(v10 + 8) = v13;
  v18 = v20;
  *(v10 + 16) = v19;
  *(v10 + 24) = v18;
  *(v10 + 32) = v15;
  *(v10 + 40) = v16;
  return result;
}

unint64_t sub_1D1150E54()
{
  result = qword_1EC60B998;
  if (!qword_1EC60B998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60B998);
  }

  return result;
}

unint64_t sub_1D1150EA8()
{
  result = qword_1EC60B9A0;
  if (!qword_1EC60B9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60B9A0);
  }

  return result;
}

unint64_t sub_1D1150EFC()
{
  result = qword_1EC60B9B0;
  if (!qword_1EC60B9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60B9B0);
  }

  return result;
}

uint64_t sub_1D1150F50(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E69616C70 && a2 == 0xE500000000000000;
  if (v4 || (sub_1D139162C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000 || (sub_1D139162C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x526E4965756C6176 && a2 == 0xEC00000065676E61 || (sub_1D139162C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C61566565726874 && a2 == 0xEB00000000736575 || (sub_1D139162C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x617461646174656DLL && a2 == 0xE800000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_1D139162C();

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

uint64_t sub_1D1151100(uint64_t a1)
{
  v2 = MEMORY[0x1E69E6F48];
  sub_1D1155034(0, &qword_1EC60BB70, sub_1D1154084, &_s16FormattedRecordsO18MetadataCodingKeysON, MEMORY[0x1E69E6F48]);
  v47 = v3;
  v49 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v53 = &v40 - v4;
  sub_1D1155034(0, &qword_1EC60BB80, sub_1D11540D8, &_s16FormattedRecordsO21ThreeValuesCodingKeysON, v2);
  v46 = v5;
  v48 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v51 = &v40 - v6;
  sub_1D1155034(0, &qword_1EC60BB90, sub_1D115412C, &_s16FormattedRecordsO22ValueInRangeCodingKeysON, v2);
  v8 = *(v7 - 8);
  v44 = v7;
  v45 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v52 = &v40 - v9;
  sub_1D1155034(0, &qword_1EC60BBA0, sub_1D1154180, &_s16FormattedRecordsO15ValueCodingKeysON, v2);
  v41 = v10;
  v43 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v50 = &v40 - v11;
  sub_1D1155034(0, &qword_1EC60BBB0, sub_1D11541D4, &_s16FormattedRecordsO15PlainCodingKeysON, v2);
  v13 = v12;
  v42 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v40 - v14;
  sub_1D1155034(0, &qword_1EC60BBC0, sub_1D1154228, &_s16FormattedRecordsO10CodingKeysON, v2);
  v17 = v16;
  v18 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v20 = *(a1 + 24);
  v19 = *(a1 + 32);
  v54 = a1;
  v21 = a1;
  v23 = &v40 - v22;
  __swift_project_boxed_opaque_existential_1Tm(v21, v20);
  sub_1D1154228();
  v24 = v55;
  sub_1D13917FC();
  if (!v24)
  {
    v55 = v13;
    v26 = v52;
    v25 = v53;
    v27 = sub_1D139150C();
    v28 = (2 * *(v27 + 16)) | 1;
    v56 = v27;
    v57 = v27 + 32;
    v58 = 0;
    v59 = v28;
    v29 = sub_1D11ED440();
    if (v29 != 5 && v58 == v59 >> 1)
    {
      if (v29 <= 1u)
      {
        if (v29)
        {
          LOBYTE(v60) = 1;
          sub_1D1154180();
          sub_1D139148C();
          sub_1D11544AC(0, &qword_1EC60BC30, &qword_1EC609CF8);
          sub_1D1154760();
          v30 = v41;
          v31 = v50;
          sub_1D13914FC();
          v38 = v43;
          goto LABEL_17;
        }

        LOBYTE(v60) = 0;
        sub_1D11541D4();
        sub_1D139148C();
        sub_1D11544AC(0, &qword_1EC60BC48, &qword_1EC609CD8);
        sub_1D11548CC();
        v35 = v55;
        sub_1D13914FC();
        v39 = v42;
      }

      else
      {
        if (v29 != 2)
        {
          if (v29 == 3)
          {
            LOBYTE(v60) = 3;
            sub_1D11540D8();
            sub_1D139148C();
            sub_1D11544AC(0, &qword_1EC60BC00, &qword_1EC609CB0);
            sub_1D1154520();
            v30 = v46;
            v31 = v51;
            sub_1D13914FC();
            v38 = v48;
LABEL_17:
            (*(v38 + 8))(v31, v30);
            goto LABEL_18;
          }

          LOBYTE(v60) = 4;
          sub_1D1154084();
          sub_1D139148C();
          sub_1D11544AC(0, &qword_1EC60BBE0, &qword_1EC609D50);
          sub_1D1154338();
          v36 = v47;
          sub_1D13914FC();
          (*(v49 + 8))(v25, v36);
LABEL_18:
          (*(v18 + 8))(v23, v17);
          swift_unknownObjectRelease();
          v19 = v60;
          __swift_destroy_boxed_opaque_existential_1Tm(v54);
          return v19;
        }

        LOBYTE(v60) = 2;
        sub_1D115412C();
        v15 = v26;
        sub_1D139148C();
        sub_1D11544AC(0, &qword_1EC60BC18, &qword_1EC609D20);
        sub_1D1154640();
        v35 = v44;
        sub_1D13914FC();
        v39 = v45;
      }

      (*(v39 + 8))(v15, v35);
      goto LABEL_18;
    }

    v19 = sub_1D139126C();
    swift_allocError();
    v32 = v17;
    v34 = v33;
    sub_1D115427C();
    *v34 = &_s16FormattedRecordsON;
    sub_1D139149C();
    sub_1D139124C();
    (*(*(v19 - 8) + 104))(v34, *MEMORY[0x1E69E6AF8], v19);
    swift_willThrow();
    (*(v18 + 8))(v23, v32);
    swift_unknownObjectRelease();
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v54);
  return v19;
}

uint64_t sub_1D1151A80(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1918985593 && a2 == 0xE400000000000000;
  if (v3 || (sub_1D139162C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x68746E6F6DLL && a2 == 0xE500000000000000 || (sub_1D139162C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 7954788 && a2 == 0xE300000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D139162C();

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

uint64_t sub_1D1151B94(void *a1)
{
  sub_1D1155034(0, &qword_1EC60BCE8, sub_1D1154FE0, &_s22FormattedRecordKeyDateV10CodingKeysON, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10 - v6;
  v8 = a1[3];
  __swift_project_boxed_opaque_existential_1Tm(a1, v8);
  sub_1D1154FE0();
  sub_1D13917FC();
  if (!v1)
  {
    v13 = 0;
    v8 = sub_1D13914EC();
    v12 = 1;
    sub_1D13914EC();
    v11 = 2;
    sub_1D13914EC();
    (*(v5 + 8))(v7, v4);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v8;
}

uint64_t sub_1D1151D98@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  sub_1D1155034(0, &qword_1EC60BA28, sub_1D11532A8, &_s18FormattedRecordKeyV10CodingKeysON, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - v7;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D11532A8();
  sub_1D13917FC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v9 = v6;
  v10 = v20;
  v26 = 0;
  sub_1D11532FC();
  sub_1D13914BC();
  v11 = v22;
  v18 = v23;
  v19 = v21;
  v25 = v24;
  LOBYTE(v21) = 1;
  v12 = sub_1D13914AC();
  v14 = v13;
  (*(v9 + 8))(v8, v5);
  result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v16 = v18;
  *v10 = v19;
  *(v10 + 8) = v11;
  *(v10 + 16) = v16;
  *(v10 + 24) = v25;
  *(v10 + 32) = v12;
  *(v10 + 40) = v14;
  return result;
}

uint64_t sub_1D1151FBC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_1D139162C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000 || (sub_1D139162C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1953066613 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D139162C();

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

uint64_t sub_1D11520CC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v24 = a2;
  sub_1D1155034(0, &qword_1EC60BA10, sub_1D1153254, &_s20FormattedRecordValueV10CodingKeysON, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v21 - v7;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D1153254();
  sub_1D13917FC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v9 = v6;
  v10 = v24;
  v27 = 0;
  v11 = sub_1D13914CC();
  v13 = v12;
  v23 = v11;
  v26 = 1;
  v21 = sub_1D13914CC();
  v22 = v14;
  v25 = 2;
  v15 = sub_1D13914CC();
  v16 = v8;
  v18 = v17;
  (*(v9 + 8))(v16, v5);
  result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
  *v10 = v23;
  v10[1] = v13;
  v20 = v22;
  v10[2] = v21;
  v10[3] = v20;
  v10[4] = v15;
  v10[5] = v18;
  return result;
}

uint64_t sub_1D1152350(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_1D139162C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000 || (sub_1D139162C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1953066613 && a2 == 0xE400000000000000 || (sub_1D139162C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65676E6172 && a2 == 0xE500000000000000 || (sub_1D139162C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x65676E61526E69 && a2 == 0xE700000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_1D139162C();

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

uint64_t sub_1D11524F4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D1155034(0, &qword_1EC60B9F8, sub_1D1153200, &_s27FormattedRecordValueInRangeV10CodingKeysON, MEMORY[0x1E69E6F48]);
  v34 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v26 - v7;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D1153200();
  sub_1D13917FC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v9 = v6;
  LOBYTE(v40[0]) = 0;
  v10 = sub_1D13914CC();
  v12 = v11;
  LOBYTE(v40[0]) = 1;
  v13 = sub_1D13914CC();
  v33 = v14;
  v30 = v13;
  LOBYTE(v40[0]) = 2;
  v29 = sub_1D13914CC();
  v32 = v15;
  LOBYTE(v40[0]) = 3;
  v28 = sub_1D13914CC();
  v31 = v16;
  v42 = 4;
  v17 = sub_1D13914DC();
  (*(v9 + 8))(v8, v34);
  LODWORD(v34) = v17 & 1;
  *&v35 = v10;
  *(&v35 + 1) = v12;
  v18 = v30;
  v27 = v12;
  v20 = v32;
  v19 = v33;
  *&v36 = v30;
  *(&v36 + 1) = v33;
  v21 = v29;
  *&v37 = v29;
  *(&v37 + 1) = v32;
  v22 = v31;
  *&v38 = v28;
  *(&v38 + 1) = v31;
  v39 = v34;
  sub_1D1095034(&v35, v40);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v40[0] = v10;
  v40[1] = v27;
  v40[2] = v18;
  v40[3] = v19;
  v40[4] = v21;
  v40[5] = v20;
  v40[6] = v28;
  v40[7] = v22;
  v41 = v34;
  result = sub_1D1095108(v40);
  v24 = v38;
  *(a2 + 32) = v37;
  *(a2 + 48) = v24;
  *(a2 + 64) = v39;
  v25 = v36;
  *a2 = v35;
  *(a2 + 16) = v25;
  return result;
}

uint64_t sub_1D11528E8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_1D139162C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x3165756C6176 && a2 == 0xE600000000000000 || (sub_1D139162C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x3265756C6176 && a2 == 0xE600000000000000 || (sub_1D139162C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x3365756C6176 && a2 == 0xE600000000000000 || (sub_1D139162C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x72656469766F7270 && a2 == 0xE800000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_1D139162C();

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

uint64_t sub_1D1152A88@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1D1155034(0, &qword_1EC60B9E0, sub_1D11531AC, &_s22FormattedRecord3ValuesV10CodingKeysON, MEMORY[0x1E69E6F48]);
  v36 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v28 - v7;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D11531AC();
  sub_1D13917FC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v9 = v6;
  LOBYTE(v42[0]) = 0;
  v10 = sub_1D13914CC();
  v12 = v11;
  LOBYTE(v42[0]) = 1;
  v13 = sub_1D13914CC();
  v35 = v14;
  v32 = v13;
  LOBYTE(v42[0]) = 2;
  v31 = sub_1D13914CC();
  v34 = v15;
  LOBYTE(v42[0]) = 3;
  v30 = sub_1D13914CC();
  v33 = v16;
  v43 = 4;
  v17 = sub_1D13914AC();
  v18 = *(v9 + 8);
  v19 = v17;
  v29 = v20;
  v18(v8, v36);
  *&v37 = v10;
  *(&v37 + 1) = v12;
  v36 = v12;
  v21 = v35;
  *&v38 = v32;
  *(&v38 + 1) = v35;
  v22 = v34;
  *&v39 = v31;
  *(&v39 + 1) = v34;
  v23 = v33;
  *&v40 = v30;
  *(&v40 + 1) = v33;
  v24 = v29;
  *&v41 = v19;
  *(&v41 + 1) = v29;
  sub_1D10932A8(&v37, v42);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v42[0] = v10;
  v42[1] = v36;
  v42[2] = v32;
  v42[3] = v21;
  v42[4] = v31;
  v42[5] = v22;
  v42[6] = v30;
  v42[7] = v23;
  v42[8] = v19;
  v42[9] = v24;
  result = sub_1D1093370(v42);
  v26 = v40;
  a2[2] = v39;
  a2[3] = v26;
  a2[4] = v41;
  v27 = v38;
  *a2 = v37;
  a2[1] = v27;
  return result;
}

uint64_t sub_1D1152EA4(void *a1)
{
  sub_1D1155034(0, &qword_1EC60B9B8, sub_1D11530F8, &_s23FormattedRecordMetadataV10CodingKeysON, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10[-v6];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1D11530F8();
  sub_1D13917FC();
  if (!v1)
  {
    v10[31] = 0;
    v8 = sub_1D13914CC();
    sub_1D10FA6A8();
    v10[30] = 1;
    sub_1D115314C(&qword_1EC60B9C8);
    sub_1D13914FC();
    (*(v5 + 8))(v7, v4);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v8;
}

unint64_t sub_1D11530F8()
{
  result = qword_1EC60B9C0;
  if (!qword_1EC60B9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60B9C0);
  }

  return result;
}

uint64_t sub_1D115314C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1D10FA6A8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D11531AC()
{
  result = qword_1EC60B9E8;
  if (!qword_1EC60B9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60B9E8);
  }

  return result;
}

unint64_t sub_1D1153200()
{
  result = qword_1EC60BA00;
  if (!qword_1EC60BA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60BA00);
  }

  return result;
}

unint64_t sub_1D1153254()
{
  result = qword_1EC60BA18;
  if (!qword_1EC60BA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60BA18);
  }

  return result;
}

unint64_t sub_1D11532A8()
{
  result = qword_1EC60BA30;
  if (!qword_1EC60BA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60BA30);
  }

  return result;
}

unint64_t sub_1D11532FC()
{
  result = qword_1EC60BA38;
  if (!qword_1EC60BA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60BA38);
  }

  return result;
}

unint64_t sub_1D1153350()
{
  result = qword_1EC60BA48;
  if (!qword_1EC60BA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60BA48);
  }

  return result;
}

unint64_t sub_1D11533A4()
{
  result = qword_1EC60BA58;
  if (!qword_1EC60BA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60BA58);
  }

  return result;
}

unint64_t sub_1D11533F8()
{
  result = qword_1EC60BA70;
  if (!qword_1EC60BA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60BA70);
  }

  return result;
}

unint64_t sub_1D115344C()
{
  result = qword_1EC60BA80;
  if (!qword_1EC60BA80)
  {
    sub_1D1154880(255, &qword_1EC60BA78);
    sub_1D11534D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60BA80);
  }

  return result;
}

unint64_t sub_1D11534D4()
{
  result = qword_1EC60BA88;
  if (!qword_1EC60BA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60BA88);
  }

  return result;
}

unint64_t sub_1D1153590()
{
  result = qword_1EC60BA98;
  if (!qword_1EC60BA98)
  {
    sub_1D1154880(255, &qword_1EC60BA78);
    sub_1D1153618();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60BA98);
  }

  return result;
}

unint64_t sub_1D1153618()
{
  result = qword_1EC60BAA0;
  if (!qword_1EC60BAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60BAA0);
  }

  return result;
}

uint64_t _s22FormattedRecordKeyDateVwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s22FormattedRecordKeyDateVwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
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

  *(result + 24) = v3;
  return result;
}

uint64_t sub_1D1153748(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 9))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 8);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1D1153790(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 8) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

unint64_t sub_1D11537F0()
{
  result = qword_1EC60BAA8;
  if (!qword_1EC60BAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60BAA8);
  }

  return result;
}

unint64_t sub_1D1153848()
{
  result = qword_1EC60BAB0;
  if (!qword_1EC60BAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60BAB0);
  }

  return result;
}

unint64_t sub_1D11538A0()
{
  result = qword_1EC60BAB8;
  if (!qword_1EC60BAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60BAB8);
  }

  return result;
}

unint64_t sub_1D11538F8()
{
  result = qword_1EC60BAC0;
  if (!qword_1EC60BAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60BAC0);
  }

  return result;
}

unint64_t sub_1D1153950()
{
  result = qword_1EC60BAC8;
  if (!qword_1EC60BAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60BAC8);
  }

  return result;
}

unint64_t sub_1D11539A8()
{
  result = qword_1EC60BAD0;
  if (!qword_1EC60BAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60BAD0);
  }

  return result;
}

unint64_t sub_1D1153A00()
{
  result = qword_1EC60BAD8;
  if (!qword_1EC60BAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60BAD8);
  }

  return result;
}

unint64_t sub_1D1153A58()
{
  result = qword_1EC60BAE0;
  if (!qword_1EC60BAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60BAE0);
  }

  return result;
}

unint64_t sub_1D1153AB0()
{
  result = qword_1EC60BAE8;
  if (!qword_1EC60BAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60BAE8);
  }

  return result;
}

unint64_t sub_1D1153B08()
{
  result = qword_1EC60BAF0;
  if (!qword_1EC60BAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60BAF0);
  }

  return result;
}

unint64_t sub_1D1153B60()
{
  result = qword_1EC60BAF8;
  if (!qword_1EC60BAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60BAF8);
  }

  return result;
}

unint64_t sub_1D1153BB8()
{
  result = qword_1EC60BB00;
  if (!qword_1EC60BB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60BB00);
  }

  return result;
}

unint64_t sub_1D1153C10()
{
  result = qword_1EC60BB08;
  if (!qword_1EC60BB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60BB08);
  }

  return result;
}

unint64_t sub_1D1153C68()
{
  result = qword_1EC60BB10;
  if (!qword_1EC60BB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60BB10);
  }

  return result;
}

unint64_t sub_1D1153CC0()
{
  result = qword_1EC60BB18;
  if (!qword_1EC60BB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60BB18);
  }

  return result;
}

unint64_t sub_1D1153D18()
{
  result = qword_1EC60BB20;
  if (!qword_1EC60BB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60BB20);
  }

  return result;
}

unint64_t sub_1D1153D70()
{
  result = qword_1EC60BB28;
  if (!qword_1EC60BB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60BB28);
  }

  return result;
}

unint64_t sub_1D1153DC8()
{
  result = qword_1EC60BB30;
  if (!qword_1EC60BB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60BB30);
  }

  return result;
}

unint64_t sub_1D1153E20()
{
  result = qword_1EC60BB38;
  if (!qword_1EC60BB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60BB38);
  }

  return result;
}

unint64_t sub_1D1153E78()
{
  result = qword_1EC60BB40;
  if (!qword_1EC60BB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60BB40);
  }

  return result;
}

unint64_t sub_1D1153ED0()
{
  result = qword_1EC60BB48;
  if (!qword_1EC60BB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60BB48);
  }

  return result;
}

unint64_t sub_1D1153F28()
{
  result = qword_1EC60BB50;
  if (!qword_1EC60BB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60BB50);
  }

  return result;
}

unint64_t sub_1D1153F80()
{
  result = qword_1EC60BB58;
  if (!qword_1EC60BB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60BB58);
  }

  return result;
}

unint64_t sub_1D1153FD8()
{
  result = qword_1EC60BB60;
  if (!qword_1EC60BB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60BB60);
  }

  return result;
}

unint64_t sub_1D1154030()
{
  result = qword_1EC60BB68;
  if (!qword_1EC60BB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60BB68);
  }

  return result;
}

unint64_t sub_1D1154084()
{
  result = qword_1EC60BB78;
  if (!qword_1EC60BB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60BB78);
  }

  return result;
}

unint64_t sub_1D11540D8()
{
  result = qword_1EC60BB88;
  if (!qword_1EC60BB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60BB88);
  }

  return result;
}

unint64_t sub_1D115412C()
{
  result = qword_1EC60BB98;
  if (!qword_1EC60BB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60BB98);
  }

  return result;
}

unint64_t sub_1D1154180()
{
  result = qword_1EC60BBA8;
  if (!qword_1EC60BBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60BBA8);
  }

  return result;
}

unint64_t sub_1D11541D4()
{
  result = qword_1EC60BBB8;
  if (!qword_1EC60BBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60BBB8);
  }

  return result;
}

unint64_t sub_1D1154228()
{
  result = qword_1EC60BBC8;
  if (!qword_1EC60BBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60BBC8);
  }

  return result;
}

void sub_1D115427C()
{
  if (!qword_1EC60BBD0)
  {
    sub_1D11542EC();
    sub_1D139125C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC60BBD0);
    }
  }
}

unint64_t sub_1D11542EC()
{
  result = qword_1EC60BBD8;
  if (!qword_1EC60BBD8)
  {
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_1EC60BBD8);
  }

  return result;
}

unint64_t sub_1D1154338()
{
  result = qword_1EC60BBE8;
  if (!qword_1EC60BBE8)
  {
    sub_1D11544AC(255, &qword_1EC60BBE0, &qword_1EC609D50);
    sub_1D11543D0();
    sub_1D1154424();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60BBE8);
  }

  return result;
}

unint64_t sub_1D11543D0()
{
  result = qword_1EC60BBF0;
  if (!qword_1EC60BBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60BBF0);
  }

  return result;
}

unint64_t sub_1D1154424()
{
  result = qword_1EC60BBF8;
  if (!qword_1EC60BBF8)
  {
    sub_1D1154880(255, &qword_1EC609D50);
    sub_1D1150078();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60BBF8);
  }

  return result;
}

void sub_1D11544AC(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_1D1154880(255, a3);
    sub_1D1094000();
    v4 = sub_1D139003C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1D1154520()
{
  result = qword_1EC60BC08;
  if (!qword_1EC60BC08)
  {
    sub_1D11544AC(255, &qword_1EC60BC00, &qword_1EC609CB0);
    sub_1D11543D0();
    sub_1D11545B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60BC08);
  }

  return result;
}

unint64_t sub_1D11545B8()
{
  result = qword_1EC60BC10;
  if (!qword_1EC60BC10)
  {
    sub_1D1154880(255, &qword_1EC609CB0);
    sub_1D115014C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60BC10);
  }

  return result;
}

unint64_t sub_1D1154640()
{
  result = qword_1EC60BC20;
  if (!qword_1EC60BC20)
  {
    sub_1D11544AC(255, &qword_1EC60BC18, &qword_1EC609D20);
    sub_1D11543D0();
    sub_1D11546D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60BC20);
  }

  return result;
}

unint64_t sub_1D11546D8()
{
  result = qword_1EC60BC28;
  if (!qword_1EC60BC28)
  {
    sub_1D1154880(255, &qword_1EC609D20);
    sub_1D1150220();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60BC28);
  }

  return result;
}

unint64_t sub_1D1154760()
{
  result = qword_1EC60BC38;
  if (!qword_1EC60BC38)
  {
    sub_1D11544AC(255, &qword_1EC60BC30, &qword_1EC609CF8);
    sub_1D11543D0();
    sub_1D11547F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60BC38);
  }

  return result;
}

unint64_t sub_1D11547F8()
{
  result = qword_1EC60BC40;
  if (!qword_1EC60BC40)
  {
    sub_1D1154880(255, &qword_1EC609CF8);
    sub_1D11502F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60BC40);
  }

  return result;
}

void sub_1D1154880(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1D139052C();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

unint64_t sub_1D11548CC()
{
  result = qword_1EC60BC50;
  if (!qword_1EC60BC50)
  {
    sub_1D11544AC(255, &qword_1EC60BC48, &qword_1EC609CD8);
    sub_1D11543D0();
    sub_1D1154964();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60BC50);
  }

  return result;
}

unint64_t sub_1D1154964()
{
  result = qword_1EC60BC58;
  if (!qword_1EC60BC58)
  {
    sub_1D1154880(255, &qword_1EC609CD8);
    sub_1D1150404();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60BC58);
  }

  return result;
}

unint64_t sub_1D11549EC()
{
  result = qword_1EC60BC90;
  if (!qword_1EC60BC90)
  {
    sub_1D11544AC(255, &qword_1EC60BBE0, &qword_1EC609D50);
    sub_1D1154A84();
    sub_1D1154AD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60BC90);
  }

  return result;
}

unint64_t sub_1D1154A84()
{
  result = qword_1EC60BC98;
  if (!qword_1EC60BC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60BC98);
  }

  return result;
}

unint64_t sub_1D1154AD8()
{
  result = qword_1EC60BCA0;
  if (!qword_1EC60BCA0)
  {
    sub_1D1154880(255, &qword_1EC609D50);
    sub_1D11500CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60BCA0);
  }

  return result;
}

unint64_t sub_1D1154B60()
{
  result = qword_1EC60BCA8;
  if (!qword_1EC60BCA8)
  {
    sub_1D11544AC(255, &qword_1EC60BC00, &qword_1EC609CB0);
    sub_1D1154A84();
    sub_1D1154BF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60BCA8);
  }

  return result;
}

unint64_t sub_1D1154BF8()
{
  result = qword_1EC60BCB0;
  if (!qword_1EC60BCB0)
  {
    sub_1D1154880(255, &qword_1EC609CB0);
    sub_1D11501A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60BCB0);
  }

  return result;
}

unint64_t sub_1D1154C80()
{
  result = qword_1EC60BCB8;
  if (!qword_1EC60BCB8)
  {
    sub_1D11544AC(255, &qword_1EC60BC18, &qword_1EC609D20);
    sub_1D1154A84();
    sub_1D1154D18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60BCB8);
  }

  return result;
}

unint64_t sub_1D1154D18()
{
  result = qword_1EC60BCC0;
  if (!qword_1EC60BCC0)
  {
    sub_1D1154880(255, &qword_1EC609D20);
    sub_1D1150274();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60BCC0);
  }

  return result;
}

unint64_t sub_1D1154DA0()
{
  result = qword_1EC60BCC8;
  if (!qword_1EC60BCC8)
  {
    sub_1D11544AC(255, &qword_1EC60BC30, &qword_1EC609CF8);
    sub_1D1154A84();
    sub_1D1154E38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60BCC8);
  }

  return result;
}

unint64_t sub_1D1154E38()
{
  result = qword_1EC60BCD0;
  if (!qword_1EC60BCD0)
  {
    sub_1D1154880(255, &qword_1EC609CF8);
    sub_1D1150348();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60BCD0);
  }

  return result;
}

unint64_t sub_1D1154EC0()
{
  result = qword_1EC60BCD8;
  if (!qword_1EC60BCD8)
  {
    sub_1D11544AC(255, &qword_1EC60BC48, &qword_1EC609CD8);
    sub_1D1154A84();
    sub_1D1154F58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60BCD8);
  }

  return result;
}

unint64_t sub_1D1154F58()
{
  result = qword_1EC60BCE0;
  if (!qword_1EC60BCE0)
  {
    sub_1D1154880(255, &qword_1EC609CD8);
    sub_1D1150458();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60BCE0);
  }

  return result;
}

unint64_t sub_1D1154FE0()
{
  result = qword_1EC60BCF0;
  if (!qword_1EC60BCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60BCF0);
  }

  return result;
}

void sub_1D1155034(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t _s11ModeSegmentOwet(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s11ModeSegmentOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1D1155250()
{
  result = qword_1EC60BD00;
  if (!qword_1EC60BD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60BD00);
  }

  return result;
}

unint64_t sub_1D11552A8()
{
  result = qword_1EC60BD08;
  if (!qword_1EC60BD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60BD08);
  }

  return result;
}

unint64_t sub_1D1155300()
{
  result = qword_1EC60BD10;
  if (!qword_1EC60BD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60BD10);
  }

  return result;
}

unint64_t sub_1D1155358()
{
  result = qword_1EC60BD18;
  if (!qword_1EC60BD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60BD18);
  }

  return result;
}

unint64_t sub_1D11553B0()
{
  result = qword_1EC60BD20;
  if (!qword_1EC60BD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60BD20);
  }

  return result;
}

unint64_t sub_1D1155408()
{
  result = qword_1EC60BD28;
  if (!qword_1EC60BD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60BD28);
  }

  return result;
}

unint64_t sub_1D1155460()
{
  result = qword_1EC60BD30;
  if (!qword_1EC60BD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60BD30);
  }

  return result;
}

unint64_t sub_1D11554B8()
{
  result = qword_1EC60BD38;
  if (!qword_1EC60BD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60BD38);
  }

  return result;
}

unint64_t sub_1D1155510()
{
  result = qword_1EC60BD40;
  if (!qword_1EC60BD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60BD40);
  }

  return result;
}

unint64_t sub_1D1155568()
{
  result = qword_1EC60BD48;
  if (!qword_1EC60BD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60BD48);
  }

  return result;
}

unint64_t sub_1D11555C0()
{
  result = qword_1EC60BD50;
  if (!qword_1EC60BD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60BD50);
  }

  return result;
}

unint64_t sub_1D1155618()
{
  result = qword_1EC60BD58;
  if (!qword_1EC60BD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60BD58);
  }

  return result;
}

unint64_t sub_1D1155670()
{
  result = qword_1EC60BD60;
  if (!qword_1EC60BD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60BD60);
  }

  return result;
}

unint64_t sub_1D11556C8()
{
  result = qword_1EC60BD68;
  if (!qword_1EC60BD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60BD68);
  }

  return result;
}

unint64_t sub_1D1155720()
{
  result = qword_1EC60BD70;
  if (!qword_1EC60BD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60BD70);
  }

  return result;
}

unint64_t sub_1D1155778()
{
  result = qword_1EC60BD78;
  if (!qword_1EC60BD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60BD78);
  }

  return result;
}

unint64_t sub_1D11557D0()
{
  result = qword_1EC60BD80;
  if (!qword_1EC60BD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60BD80);
  }

  return result;
}

unint64_t sub_1D1155828()
{
  result = qword_1EC60BD88;
  if (!qword_1EC60BD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60BD88);
  }

  return result;
}

unint64_t sub_1D1155880()
{
  result = qword_1EC60BD90;
  if (!qword_1EC60BD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60BD90);
  }

  return result;
}

unint64_t sub_1D11558D8()
{
  result = qword_1EC60BD98;
  if (!qword_1EC60BD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60BD98);
  }

  return result;
}

unint64_t sub_1D1155930()
{
  result = qword_1EC60BDA0;
  if (!qword_1EC60BDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60BDA0);
  }

  return result;
}

uint64_t type metadata accessor for RecentLabsDataSource()
{
  result = qword_1EC60BDB0;
  if (!qword_1EC60BDB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

BOOL sub_1D1155A5C(unint64_t a1)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_15:
    v3 = sub_1D13910DC();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  do
  {
    v5 = v4;
    if (v3 == v4)
    {
      break;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x1D3886B70](v4, a1);
      if (__OFADD__(v5, 1))
      {
LABEL_12:
        __break(1u);
        return v3 != v5;
      }
    }

    else
    {
      if (v4 >= *(v2 + 16))
      {
        __break(1u);
        goto LABEL_15;
      }

      if (__OFADD__(v5, 1))
      {
        goto LABEL_12;
      }
    }

    v7 = *(v6 + OBJC_IVAR____TtC15HealthRecordsUI13UDCRecentItem_viewData + 16);

    v4 = v5 + 1;
  }

  while (v7 != 1);
  return v3 != v5;
}

uint64_t sub_1D1155B3C()
{
  sub_1D115A1F0();
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9[1] = *(v0 + qword_1EC60BDA8);
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1D115A338;
  *(v6 + 24) = v0;
  sub_1D1125B80();
  sub_1D115A2C0(0, &qword_1EC60A7C0, &qword_1EC60A7C8, type metadata accessor for UDCRecentItem);
  sub_1D115A378(&qword_1EC60CCD0, sub_1D1125B80);

  sub_1D138F84C();

  sub_1D115A378(&qword_1EC60BE18, sub_1D115A1F0);
  v7 = sub_1D138F80C();
  (*(v3 + 8))(v5, v2);
  return v7;
}

uint64_t sub_1D1155D5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UserDomainConceptViewData();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v39 - v11;
  v13 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  v15 = &OBJC_IVAR____TtC15HealthRecordsUI13UDCRecentItem_reuseIdentifier;
  v16 = &OBJC_IVAR____TtC15HealthRecordsUI13UDCRecentItem_viewData;
  v45 = a3;
  v40 = v7;
  if (v13)
  {
    v39 = a2;
    v46 = MEMORY[0x1E69E7CC0];
    v44 = v13;
    sub_1D13912DC();
    v17 = type metadata accessor for RecentUDCCell();
    v18 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v42 = qword_1EE06A160;
    v43 = v17;
    swift_beginAccess();
    v41 = *(v7 + 72);
    do
    {
      sub_1D115A128(v18, v12, type metadata accessor for UserDomainConceptViewData);
      sub_1D115A128(v12, v10, type metadata accessor for UserDomainConceptViewData);
      v19 = *(a3 + v42);
      type metadata accessor for UDCRecentItem();
      v20 = swift_allocObject();
      v21 = (v20 + *v15);
      sub_1D115A378(&qword_1EC60BDC0, type metadata accessor for RecentUDCCell);
      v22 = v19;
      v23 = sub_1D138DECC();
      v24 = v16;
      v25 = v10;
      v26 = v15;
      v28 = v27;
      sub_1D115A190(v12, type metadata accessor for UserDomainConceptViewData);
      *v21 = v23;
      v21[1] = v28;
      v15 = v26;
      v10 = v25;
      v16 = v24;
      a3 = v45;
      sub_1D115A3C0(v10, v20 + *v24, type metadata accessor for UserDomainConceptViewData);
      *(v20 + OBJC_IVAR____TtC15HealthRecordsUI13UDCRecentItem_healthStore) = v22;
      *(v20 + OBJC_IVAR____TtC15HealthRecordsUI13UDCRecentItem_listConfiguration) = 0;
      sub_1D13912AC();
      sub_1D13912EC();
      sub_1D13912FC();
      sub_1D13912BC();
      v18 += v41;
      --v44;
    }

    while (v44);
    result = v46;
    a2 = v39;
  }

  v29 = *(a2 + 16);
  if (v29)
  {
    v42 = result;
    v47 = MEMORY[0x1E69E7CC0];
    sub_1D13912DC();
    type metadata accessor for RecentUDCCell();
    v30 = v40;
    v31 = a2 + ((*(v40 + 80) + 32) & ~*(v40 + 80));
    v44 = qword_1EE06A160;
    swift_beginAccess();
    v43 = *(v30 + 72);
    do
    {
      sub_1D115A128(v31, v12, type metadata accessor for UserDomainConceptViewData);
      sub_1D115A128(v12, v10, type metadata accessor for UserDomainConceptViewData);
      v32 = *(a3 + v44);
      type metadata accessor for UDCRecentItem();
      v33 = swift_allocObject();
      v34 = (v33 + OBJC_IVAR____TtC15HealthRecordsUI13UDCRecentItem_reuseIdentifier);
      sub_1D115A378(&qword_1EC60BDC0, type metadata accessor for RecentUDCCell);
      v35 = v32;
      v36 = sub_1D138DECC();
      v38 = v37;
      sub_1D115A190(v12, type metadata accessor for UserDomainConceptViewData);
      *v34 = v36;
      v34[1] = v38;
      a3 = v45;
      sub_1D115A3C0(v10, v33 + OBJC_IVAR____TtC15HealthRecordsUI13UDCRecentItem_viewData, type metadata accessor for UserDomainConceptViewData);
      *(v33 + OBJC_IVAR____TtC15HealthRecordsUI13UDCRecentItem_healthStore) = v35;
      *(v33 + OBJC_IVAR____TtC15HealthRecordsUI13UDCRecentItem_listConfiguration) = 0;
      sub_1D13912AC();
      sub_1D13912EC();
      sub_1D13912FC();
      sub_1D13912BC();
      v31 += v43;
      --v29;
    }

    while (v29);
    return v42;
  }

  return result;
}

char *sub_1D115621C(unint64_t a1, unint64_t a2)
{
  v109 = a1;
  v4 = sub_1D138D5EC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v96 = &v96 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D138EA2C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v96 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D138E52C();
  v12 = *(v11 - 8);
  v116 = v11;
  v117 = v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v99 = &v96 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v107 = &v96 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v118 = (&v96 - v17);

  v19 = sub_1D1159B70(v18);
  v110 = a2;

  v20 = *(v19 + 16);
  v102 = v7;
  v101 = v8;
  v100 = v10;
  v98 = v4;
  v97 = v5;
  v108 = v2;
  if (!v20)
  {
    goto LABEL_4;
  }

  v21 = sub_1D129FA60(v20, 0);
  v22 = sub_1D12A1E54(&v123, (v21 + 4), v20, v19);
  sub_1D102CC30();
  if (v22 != v20)
  {
    __break(1u);
LABEL_4:

    v21 = MEMORY[0x1E69E7CC0];
  }

  v23 = v21[2];
  v24 = v23 + 1;
  v25 = 4;
  while (--v24)
  {
    v26 = LOBYTE(v21[v25]);
    v25 += 2;
    if (v26 == 5)
    {
      v104 = v24;
      v27 = 1;
      goto LABEL_10;
    }
  }

  v104 = 0;
  v27 = 4;
LABEL_10:
  v105 = v27;
  v28 = 2;
  if ((sub_1D11615D8(v110) & 1) == 0)
  {
    if (sub_1D10CDA28(0xD000000000000026, 0x80000001D13BB080, 0))
    {
      v28 = 2;
    }

    else
    {
      v28 = 4;
    }
  }

  v29 = sub_1D11610A0(v109);
  v123 = v29;
  swift_getKeyPath();
  sub_1D1159E60(0, &qword_1EC60A7C8, type metadata accessor for UDCRecentItem, MEMORY[0x1E69E62F8]);
  v31 = v30;
  v32 = sub_1D1159EC4();
  v115 = v31;
  *&v114 = v32;
  v106 = sub_1D139039C();

  v33 = 0;
  v34 = v21 + 4;
  v35 = MEMORY[0x1E69E7CC0];
LABEL_15:
  v36 = &v34[2 * v33];
  while (v23 != v33)
  {
    if (v33 >= v21[2])
    {
      __break(1u);
      goto LABEL_60;
    }

    v37 = v36 + 16;
    ++v33;
    v31 = *v36;
    v36 += 16;
    if (v31 != 5)
    {
      v29 = *(v37 - 1);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v123 = v35;
      v113 = v34;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1D10FDE8C(0, v35[2] + 1, 1);
        v35 = v123;
      }

      v40 = v35[2];
      v39 = v35[3];
      if (v40 >= v39 >> 1)
      {
        sub_1D10FDE8C((v39 > 1), v40 + 1, 1);
        v35 = v123;
      }

      v35[2] = v40 + 1;
      v41 = &v35[2 * v40];
      *(v41 + 32) = v31;
      v41[5] = v29;
      v34 = v113;
      goto LABEL_15;
    }
  }

  v103 = v28;

  v123 = v35;

  sub_1D1157F60(&v123);

  v29 = v123;
  v23 = v123[2];
  v28 = v118;
  if (v23)
  {
    v123 = MEMORY[0x1E69E7CC0];
    sub_1D10FDE3C(0, v23, 0);
    v42 = 0;
    v35 = v123;
    v111 = v117 + 32;
    v43 = v29 + 5;
    v113 = v29;
    v112 = v23;
    while (v42 < v29[2])
    {
      v44 = *(v43 - 8);

      v46 = sub_1D11616FC(v45);
      v118 = v35;
      v121 = v46;
      swift_getKeyPath();
      v47 = sub_1D139039C();

      sub_1D1157348(v44);
      v31 = v48;
      sub_1D110AFC0(v47);

      sub_1D1157348(v44);
      v35 = v118;
      sub_1D138E50C();

      v123 = v35;
      v50 = v35[2];
      v49 = v35[3];
      if (v50 >= v49 >> 1)
      {
        sub_1D10FDE3C(v49 > 1, v50 + 1, 1);
        v35 = v123;
      }

      ++v42;
      v35[2] = v50 + 1;
      (*(v117 + 32))(v35 + ((*(v117 + 80) + 32) & ~*(v117 + 80)) + *(v117 + 72) * v50, v28, v116);
      v43 += 2;
      v23 = v112;
      v29 = v113;
      if (v112 == v42)
      {

        goto LABEL_32;
      }
    }

LABEL_60:
    __break(1u);
LABEL_61:
    swift_once();
    goto LABEL_49;
  }

  v35 = MEMORY[0x1E69E7CC0];
LABEL_32:
  sub_1D1159F4C();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D139E710;
  v52 = v105;
  *(inited + 32) = v105;
  v53 = v103;
  *(inited + 33) = v103;
  v54 = MEMORY[0x1E69E7CC0];
  v114 = xmmword_1D139E710;
  v118 = v35;
  if (v104)
  {
    v55 = inited;
    v56 = sub_1D10F8A54(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v58 = *(v56 + 2);
    v57 = *(v56 + 3);
    if (v58 >= v57 >> 1)
    {
      v56 = sub_1D10F8A54((v57 > 1), v58 + 1, 1, v56);
    }

    v31 = v108;
    *(v56 + 2) = v58 + 1;
    v56[v58 + 32] = v52;
    v53 = *(v55 + 33);
  }

  else
  {
    v56 = MEMORY[0x1E69E7CC0];
    v31 = v108;
  }

  if (v53 != 4)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v56 = sub_1D10F8A54(0, *(v56 + 2) + 1, 1, v56);
    }

    v60 = *(v56 + 2);
    v59 = *(v56 + 3);
    if (v60 >= v59 >> 1)
    {
      v56 = sub_1D10F8A54((v59 > 1), v60 + 1, 1, v56);
    }

    *(v56 + 2) = v60 + 1;
    v56[v60 + 32] = v53;
  }

  v61 = *(v56 + 2);
  if (v61)
  {
    v121 = v54;
    sub_1D13912DC();
    type metadata accessor for NavigationCell();
    v115 = qword_1EE06A160;
    swift_beginAccess();
    type metadata accessor for NavigationItem();
    v62 = v31;
    v63 = 32;
    do
    {
      v64 = v56[v63];
      v65 = *(v62 + v115);
      v66 = v56;
      v67 = swift_allocObject();
      sub_1D115A378(&qword_1EC60BDC8, type metadata accessor for NavigationCell);
      v68 = v65;
      *(v67 + 16) = sub_1D138DECC();
      *(v67 + 24) = v69;
      *(v67 + 32) = v64;
      *(v67 + 33) = 2;
      *(v67 + 40) = v68;
      sub_1D13912AC();
      sub_1D13912EC();
      v56 = v66;
      sub_1D13912FC();
      sub_1D13912BC();
      ++v63;
      --v61;
    }

    while (v61);

    v29 = v121;
    v31 = v62;
  }

  else
  {

    v29 = MEMORY[0x1E69E7CC0];
  }

  sub_1D1159E60(0, &qword_1EC60AA30, MEMORY[0x1E69A3690], MEMORY[0x1E69E6F90]);
  v28 = *(v117 + 72);
  v23 = (*(v117 + 80) + 32) & ~*(v117 + 80);
  v35 = swift_allocObject();
  *(v35 + 1) = xmmword_1D139E700;
  if (qword_1EE06AD00 != -1)
  {
    goto LABEL_61;
  }

LABEL_49:
  v112 = *algn_1EE06BB18;
  v111 = qword_1EE06BB20;
  v113 = qword_1EE06BB10;
  sub_1D138D1CC();
  sub_1D110AFC0(v106);

  v115 = v23;
  sub_1D138E50C();
  v122 = v35;
  sub_1D1122530(v118);
  sub_1D110B008(v29);

  v70 = v107;
  sub_1D138E50C();
  v71 = v122;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v71 = sub_1D10F8858(0, *(v71 + 2) + 1, 1, v71);
  }

  v73 = *(v71 + 2);
  v72 = *(v71 + 3);
  v74 = v115;
  if (v73 >= v72 >> 1)
  {
    v71 = sub_1D10F8858(v72 > 1, v73 + 1, 1, v71);
  }

  *(v71 + 2) = v73 + 1;
  v75 = *(v117 + 32);
  v117 += 32;
  v75(&v71[v74 + v73 * v28], v70, v116);
  if (sub_1D1155A5C(v110) || sub_1D1155A5C(v109))
  {
    v118 = v75;
    v110 = v28;
    v76 = qword_1EE06A160;
    swift_beginAccess();
    v77 = *(v31 + v76);
    v109 = type metadata accessor for NavigationItem();
    v78 = swift_allocObject();
    type metadata accessor for NavigationCell();
    sub_1D115A378(&qword_1EC60BDC8, type metadata accessor for NavigationCell);
    v79 = v77;
    *(v78 + 16) = sub_1D138DECC();
    *(v78 + 24) = v80;
    *(v78 + 32) = 515;
    *(v78 + 40) = v79;
    sub_1D138D1CC();
    v119 = 0x74497265746F6F46;
    v120 = 0xEB000000005F6D65;
    v81 = v96;
    sub_1D138D5DC();
    v82 = sub_1D138D59C();
    v84 = v83;
    (*(v97 + 8))(v81, v98);
    MEMORY[0x1D3885C10](v82, v84);

    v85 = v100;
    sub_1D138EA1C();
    sub_1D138D1CC();
    sub_1D1159E60(0, &qword_1EC60B640, sub_1D1159FC8, MEMORY[0x1E69E6F90]);
    v86 = swift_allocObject();
    *(v86 + 16) = v114;
    *(v86 + 56) = v109;
    *(v86 + 64) = sub_1D115A378(&qword_1EC60B0D8, type metadata accessor for NavigationItem);
    *(v86 + 32) = v78;
    v87 = v102;
    *(v86 + 96) = v102;
    *(v86 + 104) = sub_1D115A378(&qword_1EC60A048, MEMORY[0x1E69A3798]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v86 + 72));
    v89 = v101;
    (*(v101 + 16))(boxed_opaque_existential_1, v85, v87);

    v90 = v99;
    sub_1D138E50C();
    v92 = *(v71 + 2);
    v91 = *(v71 + 3);
    if (v92 >= v91 >> 1)
    {
      v71 = sub_1D10F8858(v91 > 1, v92 + 1, 1, v71);
    }

    v93 = v115;
    v94 = v118;

    (*(v89 + 8))(v85, v87);
    *(v71 + 2) = v92 + 1;
    v94(&v71[v93 + v92 * v110], v90, v116);
  }

  return v71;
}

uint64_t sub_1D11571B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D1159E60(0, &qword_1EE06B500, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for UserDomainConceptViewData();
  sub_1D106A1D8(a1 + *(v7 + 36), v6);
  v8 = sub_1D138D57C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (v10(v6, 1, v8) != 1)
  {
    return (*(v9 + 32))(a2, v6, v8);
  }

  v11 = [*(a1 + 8) modificationDate];
  sub_1D138D52C();

  result = (v10)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1D109AC18(v6);
  }

  return result;
}

uint64_t sub_1D1157348(unsigned __int8 a1)
{
  if (a1 <= 2u)
  {
    if (a1)
    {
      if (a1 == 1)
      {
        goto LABEL_7;
      }

      if (qword_1EE06AD00 == -1)
      {
        return sub_1D138D1CC();
      }
    }

    else if (qword_1EE06AD00 == -1)
    {
      return sub_1D138D1CC();
    }

    goto LABEL_20;
  }

  if (a1 <= 4u)
  {
    if (a1 == 3)
    {
LABEL_7:
      if (qword_1EE06AD00 == -1)
      {
        return sub_1D138D1CC();
      }

      goto LABEL_20;
    }

    if (qword_1EE06AD00 == -1)
    {
      return sub_1D138D1CC();
    }

    goto LABEL_20;
  }

  if (a1 == 5)
  {
    if (qword_1EE06AD00 == -1)
    {
      return sub_1D138D1CC();
    }

    goto LABEL_20;
  }

  if (qword_1EE06AD00 != -1)
  {
LABEL_20:
    swift_once();
  }

  return sub_1D138D1CC();
}

uint64_t sub_1D1157600@<X0>(unint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v69 = a2;
  v73 = a3;
  v5 = sub_1D138E81C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v66 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D138DFEC();
  v67 = *(v8 - 8);
  v68 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v65 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D138E6BC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v75 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D138E52C();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v70 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v62 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v62 - v20;
  v76 = v3;
  v22 = sub_1D138E57C();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_22;
  }

  if (*(v22 + 16) <= a1)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v63 = v6;
  v64 = v5;
  v71 = v11;
  v72 = v10;
  v23 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v24 = *(v14 + 72);
  v74 = a1;
  v25 = v24 * a1;
  v26 = *(v14 + 16);
  v26(v21, v22 + v23 + v25, v13);

  sub_1D138E51C();
  v28 = v27;
  v30 = *(v14 + 8);
  v14 += 8;
  v29 = v30;
  v30(v21, v13);
  v62 = v28;
  if (v28)
  {

    v21 = v75;
    sub_1D138E60C();
  }

  else
  {
    v21 = v75;
    sub_1D138E65C();
  }

  sub_1D138E66C();
  v31 = sub_1D138E57C();
  if (*(v31 + 16) <= v74)
  {
    goto LABEL_23;
  }

  v26(v19, v31 + v23 + v25, v13);

  v32 = sub_1D138E4CC();
  v34 = v33;
  v29(v19, v13);
  if (v32 == 0xD00000000000001BLL && 0x80000001D13BE710 == v34)
  {
    goto LABEL_9;
  }

  v21 = sub_1D139162C();

  if (v21)
  {
    goto LABEL_11;
  }

  v46 = sub_1D138E57C();
  if (*(v46 + 16) > v74)
  {
    v47 = v46 + v23 + v25;
    v48 = v70;
    v26(v70, v47, v13);

    v49 = sub_1D138E4CC();
    v51 = v50;
    v29(v48, v13);
    if (v49 != 0xD000000000000018 || 0x80000001D13BE730 != v51)
    {
      v52 = sub_1D139162C();

      if ((v52 & 1) == 0)
      {
        v53 = [v69 traitCollection];
        v54 = [v53 horizontalSizeClass];

        if (v54 == 2)
        {
          v55 = v65;
          sub_1D138DFCC();
          type metadata accessor for RecentLabsDataSource();
          swift_unknownObjectRetain();
          sub_1D138E1FC();
          v56 = v66;
          sub_1D138E7FC();
          v57 = sub_1D138DFBC();
          v39 = v73;
          v58 = v71;
          v59 = v57;
          (*(v63 + 8))(v56, v64);
          (*(v67 + 8))(v55, v68);
          if (v62)
          {
            v60 = [objc_opt_self() estimatedDimension_];
            v61 = sub_1D1390BAC();

            v59 = v61;
          }

          (*(v58 + 8))(v75, v72);
          *v39 = v59;
          v42 = MEMORY[0x1E69A36B8];
          goto LABEL_12;
        }
      }

LABEL_11:
      sub_1D11580B0();
      v36 = *(v35 + 48);
      v38 = v71;
      v37 = v72;
      v39 = v73;
      v40 = v75;
      (*(v71 + 16))(v73, v75, v72);
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      (*(v38 + 8))(v40, v37);
      *(v39 + v36) = Strong;
      v42 = MEMORY[0x1E69A36B0];
LABEL_12:
      v43 = *v42;
      v44 = sub_1D138E5EC();
      (*(*(v44 - 8) + 104))(v39, v43, v44);
      sub_1D138E5EC();
      return (*(*(v44 - 8) + 56))(v39, 0, 1, v44);
    }

LABEL_9:

    goto LABEL_11;
  }

LABEL_24:
  __break(1u);
  (*(v63 + 8))(v21, v64);
  (*(v67 + 8))(v14, v68);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1D1157D6C()
{
  sub_1D138E71C();
  sub_1D13908AC();
  sub_1D138EA0C();
  sub_1D13908BC();
  type metadata accessor for RecentUDCCell();
  sub_1D115A378(&qword_1EC60BDC0, type metadata accessor for RecentUDCCell);
  sub_1D13908AC();
  sub_1D13908AC();
  type metadata accessor for NavigationCell();
  sub_1D115A378(&qword_1EC60BDC8, type metadata accessor for NavigationCell);
  sub_1D13908AC();
  return sub_1D13908AC();
}

uint64_t sub_1D1157EDC()
{
  sub_1D1161B24();

  return swift_deallocClassInstance();
}

unint64_t sub_1D1157F34@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D115A5D0(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1D1157F60(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D1245E9C(v2);
  }

  v3 = v2[2];
  v18[0] = (v2 + 4);
  v18[1] = v3;
  result = sub_1D13915BC();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = (v2 + 4);
      do
      {
        v11 = LOBYTE(v2[2 * v9 + 4]);
        v12 = v8;
        v13 = v10;
        do
        {
          if (v11 >= *v13)
          {
            break;
          }

          v14 = *(v13 + 3);
          *(v13 + 1) = *v13;
          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 16;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 16;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      sub_1D1104AC8();
      v7 = sub_1D13904DC();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_1D115819C(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

void sub_1D11580B0()
{
  if (!qword_1EC60BDD0)
  {
    sub_1D138E6BC();
    sub_1D1159E60(255, &qword_1EC60BDD8, sub_1D1158150, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC60BDD0);
    }
  }
}

unint64_t sub_1D1158150()
{
  result = qword_1EC60BDE0;
  if (!qword_1EC60BDE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC60BDE0);
  }

  return result;
}

uint64_t sub_1D115819C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v92 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v9 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v92 = *v92;
    if (!v92)
    {
      goto LABEL_126;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_120:
      result = sub_1D1245848(v9);
      v9 = result;
    }

    v84 = v9 + 16;
    v85 = *(v9 + 2);
    if (v85 >= 2)
    {
      while (*a3)
      {
        v86 = &v9[16 * v85];
        v87 = *v86;
        v88 = &v84[2 * v85];
        v89 = v88[1];
        sub_1D1158724((*a3 + 16 * *v86), (*a3 + 16 * *v88), (*a3 + 16 * v89), v92);
        if (v4)
        {
        }

        if (v89 < v87)
        {
          goto LABEL_112;
        }

        if (v85 - 2 >= *v84)
        {
          goto LABEL_113;
        }

        *v86 = v87;
        *(v86 + 1) = v89;
        v90 = *v84 - v85;
        if (*v84 < v85)
        {
          goto LABEL_114;
        }

        v85 = *v84 - 1;
        result = memmove(v88, v88 + 2, 16 * v90);
        *v84 = v85;
        if (v85 <= 1)
        {
        }
      }

      goto LABEL_124;
    }
  }

  v7 = a4;
  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v10 = v8++;
    if (v8 < v6)
    {
      v11 = *(*a3 + 16 * v8);
      v12 = 16 * v10;
      v13 = (*a3 + 16 * v10);
      v16 = *v13;
      v15 = v13 + 32;
      v14 = v16;
      v17 = v10 + 2;
      v18 = v11;
      while (v6 != v17)
      {
        v19 = *v15;
        v15 += 16;
        v20 = (v11 < v14) ^ (v19 >= v18);
        ++v17;
        v18 = v19;
        if ((v20 & 1) == 0)
        {
          v8 = v17 - 1;
          if (v11 >= v14)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v8 = v6;
      if (v11 >= v14)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v8 < v10)
      {
        goto LABEL_117;
      }

      if (v10 < v8)
      {
        v21 = 0;
        v22 = 16 * v8;
        v23 = v10;
        do
        {
          if (v23 != v8 + v21 - 1)
          {
            v28 = *a3;
            if (!*a3)
            {
              goto LABEL_123;
            }

            v24 = (v28 + v12);
            v25 = v28 + v22;
            v26 = *v24;
            v27 = *(v24 + 1);
            *v24 = *(v25 - 16);
            *(v25 - 16) = v26;
            *(v25 - 8) = v27;
          }

          ++v23;
          --v21;
          v22 -= 16;
          v12 += 16;
        }

        while (v23 < v8 + v21);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v8 < v6)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_116;
      }

      if (v8 - v10 < v7)
      {
        if (__OFADD__(v10, v7))
        {
          goto LABEL_118;
        }

        if (v10 + v7 < v6)
        {
          v6 = v10 + v7;
        }

        if (v6 < v10)
        {
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (v8 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v8 < v10)
    {
      goto LABEL_115;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1D10F7610(0, *(v9 + 2) + 1, 1, v9);
      v9 = result;
    }

    v38 = *(v9 + 2);
    v37 = *(v9 + 3);
    v39 = v38 + 1;
    if (v38 >= v37 >> 1)
    {
      result = sub_1D10F7610((v37 > 1), v38 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 2) = v39;
    v40 = &v9[16 * v38];
    *(v40 + 4) = v10;
    *(v40 + 5) = v8;
    v41 = *v92;
    if (!*v92)
    {
      goto LABEL_125;
    }

    if (v38)
    {
      while (1)
      {
        v42 = v39 - 1;
        if (v39 >= 4)
        {
          break;
        }

        if (v39 == 3)
        {
          v43 = *(v9 + 4);
          v44 = *(v9 + 5);
          v53 = __OFSUB__(v44, v43);
          v45 = v44 - v43;
          v46 = v53;
LABEL_57:
          if (v46)
          {
            goto LABEL_103;
          }

          v59 = &v9[16 * v39];
          v61 = *v59;
          v60 = *(v59 + 1);
          v62 = __OFSUB__(v60, v61);
          v63 = v60 - v61;
          v64 = v62;
          if (v62)
          {
            goto LABEL_106;
          }

          v65 = &v9[16 * v42 + 32];
          v67 = *v65;
          v66 = *(v65 + 1);
          v53 = __OFSUB__(v66, v67);
          v68 = v66 - v67;
          if (v53)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v63, v68))
          {
            goto LABEL_110;
          }

          if (v63 + v68 >= v45)
          {
            if (v45 < v68)
            {
              v42 = v39 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v69 = &v9[16 * v39];
        v71 = *v69;
        v70 = *(v69 + 1);
        v53 = __OFSUB__(v70, v71);
        v63 = v70 - v71;
        v64 = v53;
LABEL_71:
        if (v64)
        {
          goto LABEL_105;
        }

        v72 = &v9[16 * v42];
        v74 = *(v72 + 4);
        v73 = *(v72 + 5);
        v53 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v53)
        {
          goto LABEL_108;
        }

        if (v75 < v63)
        {
          goto LABEL_3;
        }

LABEL_78:
        v80 = v42 - 1;
        if (v42 - 1 >= v39)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
          goto LABEL_119;
        }

        if (!*a3)
        {
          goto LABEL_122;
        }

        v81 = *&v9[16 * v80 + 32];
        v82 = *&v9[16 * v42 + 40];
        sub_1D1158724((*a3 + 16 * v81), (*a3 + 16 * *&v9[16 * v42 + 32]), (*a3 + 16 * v82), v41);
        if (v4)
        {
        }

        if (v82 < v81)
        {
          goto LABEL_99;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_1D1245848(v9);
        }

        if (v80 >= *(v9 + 2))
        {
          goto LABEL_100;
        }

        v83 = &v9[16 * v80];
        *(v83 + 4) = v81;
        *(v83 + 5) = v82;
        result = sub_1D12457BC(v42);
        v39 = *(v9 + 2);
        if (v39 <= 1)
        {
          goto LABEL_3;
        }
      }

      v47 = &v9[16 * v39 + 32];
      v48 = *(v47 - 64);
      v49 = *(v47 - 56);
      v53 = __OFSUB__(v49, v48);
      v50 = v49 - v48;
      if (v53)
      {
        goto LABEL_101;
      }

      v52 = *(v47 - 48);
      v51 = *(v47 - 40);
      v53 = __OFSUB__(v51, v52);
      v45 = v51 - v52;
      v46 = v53;
      if (v53)
      {
        goto LABEL_102;
      }

      v54 = &v9[16 * v39];
      v56 = *v54;
      v55 = *(v54 + 1);
      v53 = __OFSUB__(v55, v56);
      v57 = v55 - v56;
      if (v53)
      {
        goto LABEL_104;
      }

      v53 = __OFADD__(v45, v57);
      v58 = v45 + v57;
      if (v53)
      {
        goto LABEL_107;
      }

      if (v58 >= v50)
      {
        v76 = &v9[16 * v42 + 32];
        v78 = *v76;
        v77 = *(v76 + 1);
        v53 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v53)
        {
          goto LABEL_111;
        }

        if (v45 < v79)
        {
          v42 = v39 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    v7 = a4;
    if (v8 >= v6)
    {
      goto LABEL_88;
    }
  }

  v29 = *a3;
  v30 = *a3 + 16 * v8 - 16;
  v31 = v10 - v8;
LABEL_30:
  v32 = *(v29 + 16 * v8);
  v33 = v31;
  v34 = v30;
  while (1)
  {
    if (v32 >= *v34)
    {
LABEL_29:
      ++v8;
      v30 += 16;
      --v31;
      if (v8 != v6)
      {
        goto LABEL_30;
      }

      v8 = v6;
      goto LABEL_37;
    }

    if (!v29)
    {
      break;
    }

    v35 = *(v34 + 3);
    *(v34 + 1) = *v34;
    *v34 = v32;
    *(v34 + 1) = v35;
    v34 -= 16;
    if (__CFADD__(v33++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_1D1158724(unsigned __int8 *__dst, unsigned __int8 *__src, unsigned __int8 *a3, char *a4)
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
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (*v6 < *v4)
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
LABEL_24:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = v5 + 16;
      v20 = *(v18 - 16);
      v18 -= 16;
      if (v20 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v21 = v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0);
  if (v6 != v4 || v6 >= &v4[v21 & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * (v21 >> 4));
  }

  return 1;
}

uint64_t sub_1D1158928(uint64_t a1)
{
  sub_1D115A02C();
  v136 = v2;
  v3 = MEMORY[0x1EEE9AC00](v2);
  v127 = &v117 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v135 = &v117 - v5;
  sub_1D115A094();
  v134 = v6;
  v7 = MEMORY[0x1EEE9AC00](v6);
  v122 = &v117 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v123 = &v117 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v124 = &v117 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v125 = &v117 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v126 = &v117 - v15;
  v16 = sub_1D138D76C();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v117 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1159E60(0, &qword_1EE06B500, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v117 - v21;
  v23 = sub_1D138D57C();
  v24 = *(v23 - 8);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v27 = &v117 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v25);
  v130 = &v117 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v32 = &v117 - v31;
  v33 = MEMORY[0x1EEE9AC00](v30);
  v131 = &v117 - v34;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v132 = &v117 - v36;
  v37 = MEMORY[0x1EEE9AC00](v35);
  v133 = &v117 - v38;
  v39 = MEMORY[0x1EEE9AC00](v37);
  v137 = &v117 - v40;
  v41 = MEMORY[0x1EEE9AC00](v39);
  v138 = &v117 - v42;
  v43 = MEMORY[0x1EEE9AC00](v41);
  v139 = &v117 - v44;
  MEMORY[0x1EEE9AC00](v43);
  v46 = &v117 - v45;
  v47 = type metadata accessor for UserDomainConceptViewData();
  sub_1D106A1D8(a1 + *(v47 + 36), v22);
  if ((*(v24 + 48))(v22, 1, v23) == 1)
  {
    sub_1D115A190(a1, type metadata accessor for UserDomainConceptViewData);
    sub_1D109AC18(v22);
    return 5;
  }

  v128 = *(v24 + 32);
  v129 = v24 + 32;
  v128(v46, v22, v23);
  if (*(a1 + 16) == 1)
  {
    sub_1D115A190(a1, type metadata accessor for UserDomainConceptViewData);
    (*(v24 + 8))(v46, v23);
    return 6;
  }

  v118 = a1;
  sub_1D138D72C();
  sub_1D138D6AC();
  (*(v17 + 8))(v19, v16);
  v49 = v138;
  sub_1D138D56C();
  v50 = v137;
  sub_1D138D4BC();
  v51 = *(v24 + 8);
  v51(v49, v23);
  v52 = v133;
  sub_1D138D4AC();
  v51(v50, v23);
  v53 = v132;
  sub_1D138D48C();
  v51(v52, v23);
  v54 = v131;
  sub_1D138D56C();
  sub_1D138D49C();
  v51(v54, v23);
  v55 = v130;
  sub_1D138D4AC();
  v51(v32, v23);
  sub_1D138D48C();
  v51(v55, v23);
  v56 = sub_1D115A378(&qword_1EC60D430, MEMORY[0x1E6969530]);
  result = sub_1D13900CC();
  if ((result & 1) == 0)
  {
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

  v119 = v32;
  v117 = v46;
  v57 = v135;
  v58 = v53;
  v59 = v128;
  v121 = v56;
  v128(v135, v58, v23);
  v60 = v136;
  v59(v57 + *(v136 + 48), v27, v23);
  v61 = v127;
  sub_1D115A128(v57, v127, sub_1D115A02C);
  v62 = *(v60 + 48);
  v63 = v126;
  v59(v126, v61, v23);
  v51((v61 + v62), v23);
  sub_1D115A3C0(v57, v61, sub_1D115A02C);
  v59(v63 + *(v134 + 36), (v61 + *(v60 + 48)), v23);
  v120 = v51;
  v51(v61, v23);
  v64 = v139;
  if (sub_1D13900BC())
  {
    v65 = sub_1D13900CC();
    sub_1D115A190(v63, sub_1D115A094);
    v66 = v138;
    v67 = v133;
    v68 = v119;
    if (v65)
    {
      sub_1D115A190(v118, type metadata accessor for UserDomainConceptViewData);
      v69 = v120;
      v120(v64, v23);
      v69(v117, v23);
      return 4;
    }
  }

  else
  {
    sub_1D115A190(v63, sub_1D115A094);
    v66 = v138;
    v67 = v133;
    v68 = v119;
  }

  sub_1D138D56C();
  v70 = v137;
  sub_1D138D49C();
  v71 = v120;
  v120(v66, v23);
  sub_1D138D4AC();
  v71(v70, v23);
  v72 = v132;
  sub_1D138D48C();
  v71(v67, v23);
  v73 = v131;
  sub_1D138D56C();
  sub_1D138D4AC();
  v71(v73, v23);
  v74 = v130;
  sub_1D138D48C();
  v75 = v68;
  v76 = v74;
  v71(v75, v23);
  result = sub_1D13900CC();
  if ((result & 1) == 0)
  {
    goto LABEL_33;
  }

  v77 = v135;
  v78 = v128;
  v128(v135, v72, v23);
  v79 = v136;
  v78(v77 + *(v136 + 48), v76, v23);
  sub_1D115A128(v77, v61, sub_1D115A02C);
  v80 = *(v79 + 48);
  v81 = v125;
  v78(v125, v61, v23);
  v71((v61 + v80), v23);
  sub_1D115A3C0(v77, v61, sub_1D115A02C);
  v78(v81 + *(v134 + 36), (v61 + *(v79 + 48)), v23);
  v71(v61, v23);
  if (sub_1D13900BC())
  {
    v82 = sub_1D13900CC();
    sub_1D115A190(v81, sub_1D115A094);
    if (v82)
    {
      sub_1D115A190(v118, type metadata accessor for UserDomainConceptViewData);
      v71(v139, v23);
      v71(v117, v23);
      return 3;
    }
  }

  else
  {
    sub_1D115A190(v81, sub_1D115A094);
  }

  v83 = v138;
  sub_1D138D56C();
  v84 = v137;
  sub_1D138D4AC();
  v71(v83, v23);
  v85 = v133;
  sub_1D138D48C();
  v71(v84, v23);
  v86 = v132;
  sub_1D138D56C();
  v87 = v131;
  sub_1D138D48C();
  v71(v86, v23);
  result = sub_1D13900CC();
  if ((result & 1) == 0)
  {
    goto LABEL_34;
  }

  v88 = v135;
  v89 = v128;
  v128(v135, v85, v23);
  v90 = v136;
  v89(v88 + *(v136 + 48), v87, v23);
  sub_1D115A128(v88, v61, sub_1D115A02C);
  v91 = *(v90 + 48);
  v92 = v124;
  v89(v124, v61, v23);
  v71((v61 + v91), v23);
  sub_1D115A3C0(v88, v61, sub_1D115A02C);
  v89(v92 + *(v134 + 36), (v61 + *(v90 + 48)), v23);
  v71(v61, v23);
  if (sub_1D13900BC())
  {
    v93 = sub_1D13900CC();
    sub_1D115A190(v92, sub_1D115A094);
    if (v93)
    {
      sub_1D115A190(v118, type metadata accessor for UserDomainConceptViewData);
      v94 = v120;
      v120(v139, v23);
      v94(v117, v23);
      return 2;
    }
  }

  else
  {
    sub_1D115A190(v92, sub_1D115A094);
  }

  v95 = v138;
  sub_1D138D56C();
  v96 = v137;
  sub_1D138D48C();
  v97 = v120;
  v120(v95, v23);
  v98 = v132;
  sub_1D138D56C();
  v99 = v133;
  sub_1D138D47C();
  v97(v98, v23);
  result = sub_1D13900CC();
  if ((result & 1) == 0)
  {
    goto LABEL_35;
  }

  v100 = v135;
  v101 = v128;
  v128(v135, v96, v23);
  v102 = v136;
  v101(v100 + *(v136 + 48), v99, v23);
  sub_1D115A128(v100, v61, sub_1D115A02C);
  v103 = *(v102 + 48);
  v104 = v123;
  v101(v123, v61, v23);
  v97((v61 + v103), v23);
  sub_1D115A3C0(v100, v61, sub_1D115A02C);
  v101(v104 + *(v134 + 36), (v61 + *(v102 + 48)), v23);
  v97(v61, v23);
  if (sub_1D13900BC())
  {
    v105 = sub_1D13900CC();
    sub_1D115A190(v104, sub_1D115A094);
    v106 = v138;
    v107 = v122;
    if (v105)
    {
      sub_1D115A190(v118, type metadata accessor for UserDomainConceptViewData);
      v108 = v120;
      v120(v139, v23);
      v108(v117, v23);
      return 1;
    }
  }

  else
  {
    sub_1D115A190(v104, sub_1D115A094);
    v106 = v138;
    v107 = v122;
  }

  v109 = v137;
  sub_1D138D56C();
  sub_1D138D47C();
  v110 = v120;
  v120(v109, v23);
  sub_1D138D56C();
  result = sub_1D13900CC();
  if ((result & 1) == 0)
  {
    goto LABEL_36;
  }

  v111 = v135;
  v112 = v128;
  v128(v135, v106, v23);
  v113 = v136;
  v112(v111 + *(v136 + 48), v109, v23);
  sub_1D115A128(v111, v61, sub_1D115A02C);
  v114 = *(v113 + 48);
  v112(v107, v61, v23);
  v110(v61 + v114, v23);
  sub_1D115A3C0(v111, v61, sub_1D115A02C);
  v112(v107 + *(v134 + 36), (v61 + *(v113 + 48)), v23);
  v110(v61, v23);
  v115 = v139;
  if (sub_1D13900BC())
  {
    v116 = sub_1D13900CC();
    sub_1D115A190(v118, type metadata accessor for UserDomainConceptViewData);
    sub_1D115A190(v107, sub_1D115A094);
    v110(v115, v23);
    v110(v117, v23);
    if (v116)
    {
      return 0;
    }
  }

  else
  {
    sub_1D115A190(v118, type metadata accessor for UserDomainConceptViewData);
    sub_1D115A190(v107, sub_1D115A094);
    v110(v115, v23);
    v110(v117, v23);
  }

  return 5;
}

uint64_t sub_1D1159B70(unint64_t a1)
{
  v2 = type metadata accessor for UserDomainConceptViewData();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v29 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1E69E7CC8];
  if (!(a1 >> 62))
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

    return MEMORY[0x1E69E7CC8];
  }

LABEL_23:
  v4 = sub_1D13910DC();
  if (!v4)
  {
    return MEMORY[0x1E69E7CC8];
  }

LABEL_3:
  v5 = 0;
  v27 = a1 & 0xFFFFFFFFFFFFFF8;
  v28 = a1 & 0xC000000000000001;
  v6 = MEMORY[0x1E69E7CC8];
  v26 = xmmword_1D139E810;
  while (1)
  {
    if (v28)
    {
      v8 = MEMORY[0x1D3886B70](v5, a1);
      v9 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        goto LABEL_19;
      }
    }

    else
    {
      if (v5 >= *(v27 + 16))
      {
        goto LABEL_20;
      }

      v8 = *(a1 + 8 * v5 + 32);

      v9 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
LABEL_19:
        __break(1u);
LABEL_20:
        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }
    }

    v10 = v29;
    sub_1D115A128(v8 + OBJC_IVAR____TtC15HealthRecordsUI13UDCRecentItem_viewData, v29, type metadata accessor for UserDomainConceptViewData);
    v11 = sub_1D1158928(v10);
    v12 = sub_1D12A2F78(v11);
    v14 = v6[2];
    v15 = (v13 & 1) == 0;
    v16 = __OFADD__(v14, v15);
    v17 = v14 + v15;
    if (v16)
    {
      goto LABEL_21;
    }

    v18 = v13;
    if (v6[3] < v17)
    {
      sub_1D117D504(v17, 1);
      v6 = v30;
      v12 = sub_1D12A2F78(v11);
      if ((v18 & 1) != (v19 & 1))
      {
        break;
      }
    }

    if (v18)
    {
      v7 = (v6[7] + 8 * v12);
      MEMORY[0x1D3885D90]();
      if (*((*v7 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D13904BC();
      }

      sub_1D13904FC();
    }

    else
    {
      v20 = v12;
      sub_1D1082CC4(0, &qword_1EE06A4C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
      v21 = swift_allocObject();
      *(v21 + 16) = v26;
      *(v21 + 32) = v8;
      v6[(v20 >> 6) + 8] |= 1 << v20;
      *(v6[6] + v20) = v11;
      *(v6[7] + 8 * v20) = v21;
      v22 = v6[2];
      v16 = __OFADD__(v22, 1);
      v23 = v22 + 1;
      if (v16)
      {
        goto LABEL_22;
      }

      v6[2] = v23;
    }

    ++v5;
    if (v9 == v4)
    {
      return v6;
    }
  }

  result = sub_1D13916CC();
  __break(1u);
  return result;
}

void sub_1D1159E60(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1D1159EC4()
{
  result = qword_1EC60BDE8;
  if (!qword_1EC60BDE8)
  {
    sub_1D1159E60(255, &qword_1EC60A7C8, type metadata accessor for UDCRecentItem, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60BDE8);
  }

  return result;
}

void sub_1D1159F4C()
{
  if (!qword_1EC60BDF0)
  {
    sub_1D1082CC4(255, &qword_1EC60BDF8, &type metadata for NavigationType, MEMORY[0x1E69E6720]);
    v0 = sub_1D13915DC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60BDF0);
    }
  }
}

unint64_t sub_1D1159FC8()
{
  result = qword_1EC60F6A0;
  if (!qword_1EC60F6A0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EC60F6A0);
  }

  return result;
}

void sub_1D115A02C()
{
  if (!qword_1EC60BE00)
  {
    sub_1D138D57C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC60BE00);
    }
  }
}

void sub_1D115A094()
{
  if (!qword_1EC60BE08)
  {
    sub_1D138D57C();
    sub_1D115A378(&qword_1EC60D430, MEMORY[0x1E6969530]);
    v0 = sub_1D139010C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60BE08);
    }
  }
}

uint64_t sub_1D115A128(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D115A190(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D115A1F0()
{
  if (!qword_1EC60BE10)
  {
    sub_1D1125B80();
    sub_1D115A2C0(255, &qword_1EC60A7C0, &qword_1EC60A7C8, type metadata accessor for UDCRecentItem);
    sub_1D115A378(&qword_1EC60CCD0, sub_1D1125B80);
    v0 = sub_1D138F54C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60BE10);
    }
  }
}

void sub_1D115A2C0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_1D1159E60(255, a3, a4, MEMORY[0x1E69E62F8]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_1D115A340@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1, a1[1]);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1D115A378(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D115A3C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t getEnumTagSinglePayload for RecentSection(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
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

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RecentSection(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D115A57C()
{
  result = qword_1EC60BE20;
  if (!qword_1EC60BE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60BE20);
  }

  return result;
}

unint64_t sub_1D115A5D0(unint64_t result)
{
  if (result >= 7)
  {
    return 7;
  }

  return result;
}

uint64_t sub_1D115A5FC()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 40);
  v1 = OBJC_IVAR____TtCC15HealthRecordsUI20UDCDataSourceFactory20SectionConfiguration_layoutType;
  v2 = sub_1D138E5EC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for UDCDataSourceFactory.SectionConfiguration()
{
  result = qword_1EC60BE28;
  if (!qword_1EC60BE28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D115A73C()
{
  result = sub_1D138E5EC();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D115A808(uint64_t a1)
{
  v2 = MEMORY[0x1E69E6720];
  sub_1D115B174(0, &qword_1EC60BE38, MEMORY[0x1E69A36C0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v59 = &v56 - v4;
  sub_1D115B174(0, &qword_1EC60B290, MEMORY[0x1E6968130], v2);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v56 - v6;
  sub_1D138DB9C();
  v58 = MEMORY[0x1D38834C0]();
  sub_1D106F934(0, &qword_1EE06B790);
  v8 = MEMORY[0x1E69E6F90];
  sub_1D115B174(0, &qword_1EE06B080, sub_1D10898CC, MEMORY[0x1E69E6F90]);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1D139E710;
  v10 = MEMORY[0x1E69E6158];
  *(v9 + 56) = MEMORY[0x1E69E6158];
  v11 = sub_1D1089930();
  strcpy((v9 + 32), "pluginPackage");
  *(v9 + 46) = -4864;
  *(v9 + 96) = v10;
  *(v9 + 104) = v11;
  *(v9 + 64) = v11;
  *(v9 + 72) = 0xD000000000000025;
  *(v9 + 80) = 0x80000001D13BCBC0;
  v62[4] = sub_1D139076C();
  sub_1D115B174(0, &qword_1EC60B298, MEMORY[0x1E69A3C08], v8);
  v12 = sub_1D138D97C();
  v13 = *(v12 - 8);
  v14 = ((*(v13 + 80) + 32) & ~*(v13 + 80));
  v15 = swift_allocObject();
  v60 = xmmword_1D139E700;
  *(v15 + 16) = xmmword_1D139E700;
  (*(v13 + 104))(&v14[v15], *MEMORY[0x1E69A3BB0], v12);
  sub_1D138DAAC();
  v16 = sub_1D138CFBC();
  (*(*(v16 - 8) + 56))(v7, 1, 1, v16);
  sub_1D10A5C9C(0, &qword_1EC60A0A8);
  v17 = swift_allocObject();
  *(v17 + 16) = v60;
  v18 = *(a1 + 32);
  *(v17 + 32) = v18;
  v19 = v18;
  v20 = sub_1D138DB4C();

  sub_1D111C068(v7);
  v21 = *(a1 + 24);
  v62[5] = v20;
  v62[6] = v21;
  LOBYTE(v61) = *(a1 + 16);
  v22 = v21;
  v23 = 0;
  v62[7] = _s14HealthPlatform8FeedItemC0A9RecordsUIE035predicateForPinnedUserDomainConceptC5Items12categoryKind13sourceProfileSo11NSPredicateCAD15DisplayCategoryV0O0OSg_AA06SourceQ0OtFZ_0();
  v24 = MEMORY[0x1E69E7CC0];
  v61 = MEMORY[0x1E69E7CC0];
LABEL_2:
  if (v23 <= 4)
  {
    v25 = 4;
  }

  else
  {
    v25 = v23;
  }

  while (v23 != 4)
  {
    if (v25 == v23)
    {
      __break(1u);
LABEL_17:
      swift_once();
      goto LABEL_15;
    }

    v26 = v62[v23++ + 4];
    if (v26)
    {
      v7 = v26;
      MEMORY[0x1D3885D90]();
      if (*((v61 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v61 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D13904BC();
      }

      sub_1D13904FC();
      v24 = v61;
      goto LABEL_2;
    }
  }

  sub_1D111C0F4();
  swift_arrayDestroy();
  v27 = sub_1D139044C();

  v28 = [objc_opt_self() andPredicateWithSubpredicates_];

  v29 = v58;
  [v58 setPredicate_];

  v30 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v31 = sub_1D139012C();
  v32 = [v30 initWithKey:v31 ascending:0];

  v33 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v34 = sub_1D139012C();
  v7 = [v33 initWithKey:v34 ascending:1 selector:sel_localizedStandardCompare_];

  v35 = *(a1 + OBJC_IVAR____TtCC15HealthRecordsUI20UDCDataSourceFactory20SectionConfiguration_sortByDate);
  sub_1D10A5C9C(0, &qword_1EE06A4C0);
  v57 = v32;
  v36 = swift_allocObject();
  if (v35)
  {
    *(v36 + 16) = xmmword_1D139E6E0;
    *(v36 + 32) = v32;
    *(v36 + 40) = v7;
    sub_1D106F934(0, &qword_1EE06B578);
    v37 = v32;
  }

  else
  {
    *(v36 + 16) = xmmword_1D139E810;
    *(v36 + 32) = v7;
    sub_1D106F934(0, &qword_1EE06B578);
  }

  v38 = v7;
  v39 = sub_1D139044C();

  [v29 setSortDescriptors_];

  __swift_project_boxed_opaque_existential_1Tm((a1 + 40), *(a1 + 64));
  v14 = v29;
  v40 = sub_1D138D8BC();
  v24 = [objc_allocWithZone(MEMORY[0x1E695D600]) initWithFetchRequest:v14 managedObjectContext:v40 sectionNameKeyPath:0 cacheName:0];

  if (qword_1EE06AD00 != -1)
  {
    goto LABEL_17;
  }

LABEL_15:
  sub_1D138D1CC();
  v41 = OBJC_IVAR____TtCC15HealthRecordsUI20UDCDataSourceFactory20SectionConfiguration_layoutType;
  v42 = sub_1D138E5EC();
  v43 = *(v42 - 8);
  v44 = a1 + v41;
  v45 = v59;
  (*(v43 + 16))(v59, v44, v42);
  (*(v43 + 56))(v45, 0, 1, v42);
  sub_1D10A5CE8();
  v47 = objc_allocWithZone(v46);
  v48 = v24;
  v49 = sub_1D138E0CC();
  sub_1D115B174(0, &qword_1EC60A768, sub_1D10D59CC, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = v60;
  *(inited + 32) = 1;
  v51 = sub_1D115D994(&qword_1EC60BE40, sub_1D10A5CE8);
  v52 = sub_1D115D994(&qword_1EC60A0C0, sub_1D10A5CE8);
  *(inited + 40) = v49;
  *(inited + 48) = v51;
  *(inited + 56) = v52;
  sub_1D109DA60(inited);
  swift_setDeallocating();
  v53 = v49;
  sub_1D10D5A3C(inited + 32);
  sub_1D138E9AC();
  swift_allocObject();
  v54 = sub_1D138E99C();

  return v54;
}

void sub_1D115B174(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D115B1D8(uint64_t a1)
{
  v2 = MEMORY[0x1E69E6720];
  sub_1D115B174(0, &qword_1EC60BE38, MEMORY[0x1E69A36C0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v54 - v4;
  sub_1D115B174(0, &qword_1EC60B290, MEMORY[0x1E6968130], v2);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v54 - v7;
  sub_1D138DB9C();
  v9 = MEMORY[0x1D38834C0]();
  v10 = OBJC_IVAR____TtCC15HealthRecordsUI20UDCDataSourceFactory20SectionConfiguration_navigationType;
  v11 = *(a1 + 16);
  if (*(a1 + OBJC_IVAR____TtCC15HealthRecordsUI20UDCDataSourceFactory20SectionConfiguration_navigationType))
  {
    v12 = 1;
  }

  else
  {
    v12 = v11 == 11;
  }

  v56 = v9;
  v57 = v5;
  if (!v12)
  {
    if (v11 == 3)
    {
      if (qword_1EE06AD00 == -1)
      {
LABEL_29:
        v52 = sub_1D138D1CC();
        v54 = v53;
        v55 = v52;
        goto LABEL_10;
      }

LABEL_31:
      swift_once();
      goto LABEL_29;
    }

    if (v11 == 2)
    {
      if (qword_1EE06AD00 == -1)
      {
        goto LABEL_29;
      }

      goto LABEL_31;
    }
  }

  v54 = 0xE000000000000000;
  v55 = 0;
LABEL_10:
  sub_1D106F934(0, &qword_1EE06B790);
  v13 = MEMORY[0x1E69E6F90];
  sub_1D115B174(0, &qword_1EE06B080, sub_1D10898CC, MEMORY[0x1E69E6F90]);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1D139E710;
  v15 = MEMORY[0x1E69E6158];
  *(v14 + 56) = MEMORY[0x1E69E6158];
  v16 = sub_1D1089930();
  strcpy((v14 + 32), "pluginPackage");
  *(v14 + 46) = -4864;
  *(v14 + 96) = v15;
  *(v14 + 104) = v16;
  *(v14 + 64) = v16;
  *(v14 + 72) = 0xD000000000000025;
  *(v14 + 80) = 0x80000001D13BCBC0;
  v60[4] = sub_1D139076C();
  sub_1D115B174(0, &qword_1EC60B298, MEMORY[0x1E69A3C08], v13);
  v17 = sub_1D138D97C();
  v18 = *(v17 - 8);
  v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v20 = swift_allocObject();
  v58 = xmmword_1D139E700;
  *(v20 + 16) = xmmword_1D139E700;
  (*(v18 + 104))(v20 + v19, *MEMORY[0x1E69A3BB0], v17);
  if (*(a1 + v10) > 1u)
  {
    if (*(a1 + v10) == 2)
    {
      sub_1D138DA9C();
    }

    else
    {
      sub_1D138DABC();
    }
  }

  else if (*(a1 + v10))
  {
    sub_1D138DA8C();
  }

  else
  {
    sub_1D138DAAC();
  }

  v21 = sub_1D138CFBC();
  (*(*(v21 - 8) + 56))(v8, 1, 1, v21);
  sub_1D10A5C9C(0, &qword_1EC60A0A8);
  v22 = swift_allocObject();
  *(v22 + 16) = v58;
  v23 = *(a1 + 32);
  *(v22 + 32) = v23;
  v24 = v23;
  v25 = sub_1D138DB4C();

  sub_1D111C068(v8);
  v60[5] = v25;
  LOBYTE(v59) = *(a1 + 16);
  v26 = _s14HealthPlatform8FeedItemC0A9RecordsUIE035predicateForPinnedUserDomainConceptC5Items12categoryKind13sourceProfileSo11NSPredicateCAD15DisplayCategoryV0O0OSg_AA06SourceQ0OtFZ_0();
  v8 = objc_opt_self();
  v27 = [v8 notPredicateWithSubpredicate_];

  v28 = *(a1 + 24);
  v60[6] = v27;
  v60[7] = v28;
  v59 = MEMORY[0x1E69E7CC0];
  v29 = v28;
  v10 = 0;
LABEL_18:
  if (v10 <= 4)
  {
    v30 = 4;
  }

  else
  {
    v30 = v10;
  }

  while (v10 != 4)
  {
    if (v30 == v10)
    {
      __break(1u);
      goto LABEL_31;
    }

    v31 = v60[v10++ + 4];
    if (v31)
    {
      v32 = v31;
      MEMORY[0x1D3885D90]();
      if (*((v59 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v59 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        *&v58 = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1D13904BC();
      }

      sub_1D13904FC();
      goto LABEL_18;
    }
  }

  sub_1D111C0F4();
  swift_arrayDestroy();
  v33 = sub_1D139044C();

  v34 = [v8 andPredicateWithSubpredicates_];

  v35 = v56;
  [v56 setPredicate_];

  sub_1D10A5C9C(0, &qword_1EE06A4C0);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_1D139E810;
  v37 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v38 = sub_1D139012C();
  v39 = [v37 initWithKey:v38 ascending:1 selector:sel_localizedStandardCompare_];

  *(v36 + 32) = v39;
  sub_1D106F934(0, &qword_1EE06B578);
  v40 = sub_1D139044C();

  [v35 setSortDescriptors_];

  __swift_project_boxed_opaque_existential_1Tm((a1 + 40), *(a1 + 64));
  v41 = v35;
  v42 = sub_1D138D8BC();
  [objc_allocWithZone(MEMORY[0x1E695D600]) initWithFetchRequest:v41 managedObjectContext:v42 sectionNameKeyPath:0 cacheName:0];

  v43 = OBJC_IVAR____TtCC15HealthRecordsUI20UDCDataSourceFactory20SectionConfiguration_layoutType;
  v44 = sub_1D138E5EC();
  v45 = *(v44 - 8);
  v46 = a1 + v43;
  v47 = v57;
  (*(v45 + 16))(v57, v46, v44);
  (*(v45 + 56))(v47, 0, 1, v44);
  sub_1D10A5CE8();
  v49 = objc_allocWithZone(v48);
  v50 = sub_1D138E0CC();

  sub_1D115D994(&qword_1EC60A0C0, sub_1D10A5CE8);
  return v50;
}

id sub_1D115BA98(uint64_t a1, uint64_t a2)
{
  v67 = a2;
  v69 = a1;
  v2 = MEMORY[0x1E69E6720];
  sub_1D115B174(0, &qword_1EC60BE38, MEMORY[0x1E69A36C0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v65 = &v60 - v4;
  v5 = sub_1D138ED7C();
  v62 = *(v5 - 8);
  v63 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v64 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D138CFBC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v68 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D115B174(0, &qword_1EC60B290, MEMORY[0x1E6968130], v2);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v60 - v14;
  sub_1D138DB9C();
  v61 = MEMORY[0x1D38834C0]();
  v16 = sub_1D106F934(0, &qword_1EE06B790);
  v17 = MEMORY[0x1E69E6F90];
  sub_1D115B174(0, &qword_1EE06B080, sub_1D10898CC, MEMORY[0x1E69E6F90]);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1D139E710;
  v19 = MEMORY[0x1E69E6158];
  *(v18 + 56) = MEMORY[0x1E69E6158];
  v20 = sub_1D1089930();
  strcpy((v18 + 32), "pluginPackage");
  *(v18 + 46) = -4864;
  *(v18 + 96) = v19;
  *(v18 + 104) = v20;
  *(v18 + 64) = v20;
  *(v18 + 72) = 0xD000000000000025;
  *(v18 + 80) = 0x80000001D13BCBC0;
  v60 = v16;
  v21 = v67;
  v71[4] = sub_1D139076C();
  sub_1D115B174(0, &qword_1EC60B298, MEMORY[0x1E69A3C08], v17);
  v22 = sub_1D138D97C();
  v23 = *(v22 - 8);
  v24 = (*(v23 + 80) + 32) & ~*(v23 + 80);
  v25 = swift_allocObject();
  v66 = xmmword_1D139E700;
  *(v25 + 16) = xmmword_1D139E700;
  (*(v23 + 104))(v25 + v24, *MEMORY[0x1E69A3BB0], v22);
  if (*(v21 + OBJC_IVAR____TtCC15HealthRecordsUI20UDCDataSourceFactory20SectionConfiguration_navigationType) > 1u)
  {
    if (*(v21 + OBJC_IVAR____TtCC15HealthRecordsUI20UDCDataSourceFactory20SectionConfiguration_navigationType) == 2)
    {
      sub_1D138DA9C();
    }

    else
    {
      sub_1D138DABC();
    }
  }

  else if (*(v21 + OBJC_IVAR____TtCC15HealthRecordsUI20UDCDataSourceFactory20SectionConfiguration_navigationType))
  {
    sub_1D138DA8C();
  }

  else
  {
    sub_1D138DAAC();
  }

  (*(v8 + 56))(v15, 1, 1, v7);
  sub_1D10A5C9C(0, &qword_1EC60A0A8);
  v26 = swift_allocObject();
  *(v26 + 16) = v66;
  v27 = *(v21 + 32);
  *(v26 + 32) = v27;
  v28 = v27;
  v29 = sub_1D138DB4C();

  sub_1D111C068(v15);
  v71[5] = v29;
  v30 = v68;
  sub_1D138CF4C();
  sub_1D138ED8C();
  v31 = *(v8 + 8);
  v31(v30, v7);
  result = (*(v8 + 48))(v13, 1, v7);
  if (result != 1)
  {
    v33 = MEMORY[0x1D38834B0](v13);
    v31(v13, v7);
    v71[6] = v33;
    LOBYTE(v70) = *(v21 + 16);
    v34 = _s14HealthPlatform8FeedItemC0A9RecordsUIE035predicateForPinnedUserDomainConceptC5Items12categoryKind13sourceProfileSo11NSPredicateCAD15DisplayCategoryV0O0OSg_AA06SourceQ0OtFZ_0();
    v35 = objc_opt_self();
    v36 = [v35 notPredicateWithSubpredicate_];

    v37 = *(v21 + 24);
    v71[7] = v36;
    v71[8] = v37;
    v70 = MEMORY[0x1E69E7CC0];
    result = v37;
    v38 = 0;
LABEL_10:
    if (v38 <= 5)
    {
      v39 = 5;
    }

    else
    {
      v39 = v38;
    }

    while (1)
    {
      if (v38 == 5)
      {
        sub_1D111C0F4();
        swift_arrayDestroy();
        v42 = sub_1D139044C();

        v43 = [v35 andPredicateWithSubpredicates_];

        v44 = v61;
        [v61 setPredicate_];

        sub_1D10A5C9C(0, &qword_1EE06A4C0);
        v45 = swift_allocObject();
        *(v45 + 16) = xmmword_1D139E810;
        v46 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
        v47 = sub_1D139012C();
        v48 = [v46 initWithKey:v47 ascending:0 selector:sel_compare_];

        *(v45 + 32) = v48;
        sub_1D106F934(0, &qword_1EE06B578);
        v49 = sub_1D139044C();

        [v44 setSortDescriptors_];

        __swift_project_boxed_opaque_existential_1Tm((v21 + 40), *(v21 + 64));
        v50 = v44;
        v51 = sub_1D138D8BC();
        [objc_allocWithZone(MEMORY[0x1E695D600]) initWithFetchRequest:v50 managedObjectContext:v51 sectionNameKeyPath:0 cacheName:0];

        sub_1D138CF4C();
        (*(v62 + 16))(v64, v69, v63);
        v52 = OBJC_IVAR____TtCC15HealthRecordsUI20UDCDataSourceFactory20SectionConfiguration_layoutType;
        v53 = sub_1D138E5EC();
        v54 = *(v53 - 8);
        v55 = v21 + v52;
        v56 = v65;
        (*(v54 + 16))(v65, v55, v53);
        (*(v54 + 56))(v56, 0, 1, v53);
        sub_1D115D8D8(0);
        v58 = objc_allocWithZone(v57);
        v59 = sub_1D138DD2C();

        sub_1D115D994(&qword_1EC60BE50, sub_1D115D8D8);
        return v59;
      }

      if (v39 == v38)
      {
        break;
      }

      v40 = v71[v38++ + 4];
      if (v40)
      {
        v41 = v40;
        MEMORY[0x1D3885D90]();
        if (*((v70 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v70 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D13904BC();
        }

        result = sub_1D13904FC();
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D115C3E4(uint64_t a1)
{
  sub_1D115B174(0, &qword_1EC60BE38, MEMORY[0x1E69A36C0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v37 = &v35 - v3;
  sub_1D138DB9C();
  v36 = MEMORY[0x1D38834C0]();
  sub_1D10A5C9C(0, &qword_1EE06A4C0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D139E6F0;
  sub_1D106F934(0, &qword_1EE06B790);
  v5 = MEMORY[0x1E69E6F90];
  sub_1D115B174(0, &qword_1EE06B080, sub_1D10898CC, MEMORY[0x1E69E6F90]);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1D139E710;
  v7 = MEMORY[0x1E69E6158];
  *(v6 + 56) = MEMORY[0x1E69E6158];
  v8 = sub_1D1089930();
  strcpy((v6 + 32), "pluginPackage");
  *(v6 + 46) = -4864;
  *(v6 + 96) = v7;
  *(v6 + 104) = v8;
  *(v6 + 64) = v8;
  *(v6 + 72) = 0xD000000000000025;
  *(v6 + 80) = 0x80000001D13BCBC0;
  *(v4 + 32) = sub_1D139076C();
  sub_1D115B174(0, &qword_1EC60B298, MEMORY[0x1E69A3C08], v5);
  v9 = sub_1D138D97C();
  v10 = *(v9 - 8);
  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = swift_allocObject();
  v35 = xmmword_1D139E700;
  *(v12 + 16) = xmmword_1D139E700;
  (*(v10 + 104))(v12 + v11, *MEMORY[0x1E69A3C00], v9);
  sub_1D138DA6C();
  sub_1D10A5C9C(0, &qword_1EC60A0A8);
  v13 = swift_allocObject();
  *(v13 + 16) = v35;
  v14 = *(a1 + 32);
  *(v13 + 32) = v14;
  v15 = v14;
  v16 = sub_1D138DB3C();

  *(v4 + 40) = v16;
  v38 = *(a1 + 16);
  *(v4 + 48) = sub_1D11689FC(&v38);
  v17 = sub_1D139044C();

  v18 = [objc_opt_self() andPredicateWithSubpredicates_];

  v19 = v36;
  [v36 setPredicate_];

  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1D139E810;
  v21 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v22 = sub_1D139012C();
  v23 = [v21 initWithKey:v22 ascending:1 selector:sel_localizedStandardCompare_];

  *(v20 + 32) = v23;
  sub_1D106F934(0, &qword_1EE06B578);
  v24 = sub_1D139044C();

  [v19 setSortDescriptors_];

  __swift_project_boxed_opaque_existential_1Tm((a1 + 40), *(a1 + 64));
  v25 = v19;
  v26 = sub_1D138D8BC();
  [objc_allocWithZone(MEMORY[0x1E695D600]) initWithFetchRequest:v25 managedObjectContext:v26 sectionNameKeyPath:0 cacheName:0];

  v27 = OBJC_IVAR____TtCC15HealthRecordsUI20UDCDataSourceFactory20SectionConfiguration_layoutType;
  v28 = sub_1D138E5EC();
  v29 = *(v28 - 8);
  v30 = a1 + v27;
  v31 = v37;
  (*(v29 + 16))(v37, v30, v28);
  (*(v29 + 56))(v31, 0, 1, v28);
  sub_1D10A5CE8();
  objc_allocWithZone(v32);

  v33 = sub_1D138E0CC();

  sub_1D115D994(&qword_1EC60A0C0, sub_1D10A5CE8);
  return v33;
}

uint64_t sub_1D115C9F0(uint64_t a1)
{
  v2 = MEMORY[0x1E69E6720];
  sub_1D115B174(0, &qword_1EC60BE38, MEMORY[0x1E69A36C0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v49 = &v48 - v4;
  sub_1D115B174(0, &qword_1EC60B290, MEMORY[0x1E6968130], v2);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v48 - v6;
  sub_1D138DB9C();
  v48 = MEMORY[0x1D38834C0]();
  sub_1D106F934(0, &qword_1EE06B790);
  v8 = MEMORY[0x1E69E6F90];
  sub_1D115B174(0, &qword_1EE06B080, sub_1D10898CC, MEMORY[0x1E69E6F90]);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1D139E710;
  v10 = MEMORY[0x1E69E6158];
  *(v9 + 56) = MEMORY[0x1E69E6158];
  v11 = sub_1D1089930();
  strcpy((v9 + 32), "pluginPackage");
  *(v9 + 46) = -4864;
  *(v9 + 96) = v10;
  *(v9 + 104) = v11;
  *(v9 + 64) = v11;
  *(v9 + 72) = 0xD000000000000025;
  *(v9 + 80) = 0x80000001D13BCBC0;
  v51[5] = sub_1D139076C();
  sub_1D115B174(0, &qword_1EC60B298, MEMORY[0x1E69A3C08], v8);
  v12 = sub_1D138D97C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v15 = swift_allocObject();
  v50 = xmmword_1D139E700;
  *(v15 + 16) = xmmword_1D139E700;
  (*(v13 + 104))(v15 + v14, *MEMORY[0x1E69A3B58], v12);
  sub_1D138DA7C();
  v16 = sub_1D138CFBC();
  (*(*(v16 - 8) + 56))(v7, 1, 1, v16);
  sub_1D10A5C9C(0, &qword_1EC60A0A8);
  v17 = swift_allocObject();
  *(v17 + 16) = v50;
  v18 = *(a1 + 32);
  *(v17 + 32) = v18;
  v19 = v18;
  v20 = sub_1D138DB4C();

  sub_1D111C068(v7);
  v21 = *(a1 + 24);
  v51[6] = v20;
  v51[7] = v21;
  LOBYTE(v51[0]) = *(a1 + 16);
  v22 = v21;
  result = _s14HealthPlatform8FeedItemC0A9RecordsUIE022predicateForNavigationC5Items12categoryKind13sourceProfileSo11NSPredicateCAD15DisplayCategoryV0L0OSg_AA06SourceN0OtFZ_0(v51);
  v24 = 0;
  v51[8] = result;
  v51[0] = MEMORY[0x1E69E7CC0];
LABEL_2:
  if (v24 <= 4)
  {
    v25 = 4;
  }

  else
  {
    v25 = v24;
  }

  while (1)
  {
    if (v24 == 4)
    {
      sub_1D111C0F4();
      swift_arrayDestroy();
      v28 = sub_1D139044C();

      v29 = [objc_opt_self() andPredicateWithSubpredicates_];

      v30 = v48;
      [v48 setPredicate_];

      sub_1D10A5C9C(0, &qword_1EE06A4C0);
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_1D139E6E0;
      v32 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
      v33 = sub_1D139012C();
      v34 = [v32 initWithKey:v33 ascending:1 selector:sel_compare_];

      *(v31 + 32) = v34;
      v35 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
      v36 = sub_1D139012C();
      v37 = [v35 initWithKey:v36 ascending:1 selector:sel_localizedStandardCompare_];

      *(v31 + 40) = v37;
      sub_1D106F934(0, &qword_1EE06B578);
      v38 = sub_1D139044C();

      [v30 setSortDescriptors_];

      __swift_project_boxed_opaque_existential_1Tm((a1 + 40), *(a1 + 64));
      v39 = v30;
      v40 = sub_1D138D8BC();
      [objc_allocWithZone(MEMORY[0x1E695D600]) initWithFetchRequest:v39 managedObjectContext:v40 sectionNameKeyPath:0 cacheName:0];

      v41 = OBJC_IVAR____TtCC15HealthRecordsUI20UDCDataSourceFactory20SectionConfiguration_layoutType;
      v42 = sub_1D138E5EC();
      v43 = *(v42 - 8);
      v44 = a1 + v41;
      v45 = v49;
      (*(v43 + 16))(v49, v44, v42);
      (*(v43 + 56))(v45, 0, 1, v42);
      sub_1D10A5CE8();
      objc_allocWithZone(v46);

      v47 = sub_1D138E0CC();

      sub_1D115D994(&qword_1EC60A0C0, sub_1D10A5CE8);
      return v47;
    }

    if (v25 == v24)
    {
      break;
    }

    v26 = v51[v24++ + 5];
    if (v26)
    {
      v27 = v26;
      MEMORY[0x1D3885D90]();
      if (*((v51[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v51[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D13904BC();
      }

      result = sub_1D13904FC();
      goto LABEL_2;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D115D194(uint64_t a1)
{
  v2 = MEMORY[0x1E69E6720];
  sub_1D115B174(0, &qword_1EC60BE38, MEMORY[0x1E69A36C0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v46 = &v45 - v4;
  sub_1D115B174(0, &qword_1EC60B290, MEMORY[0x1E6968130], v2);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v45 - v6;
  sub_1D138DB9C();
  v45 = MEMORY[0x1D38834C0]();
  sub_1D106F934(0, &qword_1EE06B790);
  v8 = MEMORY[0x1E69E6F90];
  sub_1D115B174(0, &qword_1EE06B080, sub_1D10898CC, MEMORY[0x1E69E6F90]);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1D139E710;
  v10 = MEMORY[0x1E69E6158];
  *(v9 + 56) = MEMORY[0x1E69E6158];
  v11 = sub_1D1089930();
  strcpy((v9 + 32), "pluginPackage");
  *(v9 + 46) = -4864;
  *(v9 + 96) = v10;
  *(v9 + 104) = v11;
  *(v9 + 64) = v11;
  *(v9 + 72) = 0xD000000000000025;
  *(v9 + 80) = 0x80000001D13BCBC0;
  v48[5] = sub_1D139076C();
  sub_1D115B174(0, &qword_1EC60B298, MEMORY[0x1E69A3C08], v8);
  v12 = sub_1D138D97C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v15 = swift_allocObject();
  v47 = xmmword_1D139E700;
  *(v15 + 16) = xmmword_1D139E700;
  (*(v13 + 104))(v15 + v14, *MEMORY[0x1E69A3B58], v12);
  sub_1D138DA7C();
  v16 = sub_1D138CFBC();
  (*(*(v16 - 8) + 56))(v7, 1, 1, v16);
  sub_1D10A5C9C(0, &qword_1EC60A0A8);
  v17 = swift_allocObject();
  *(v17 + 16) = v47;
  v18 = *(a1 + 32);
  *(v17 + 32) = v18;
  v19 = v18;
  v20 = sub_1D138DB4C();

  sub_1D111C068(v7);
  v21 = *(a1 + 24);
  v48[6] = v20;
  v48[7] = v21;
  LOBYTE(v48[0]) = *(a1 + 16);
  v22 = v21;
  result = _s14HealthPlatform8FeedItemC0A9RecordsUIE037predicateForRemovedCategoryNavigationC5Items12categoryKind13sourceProfileSo11NSPredicateCAD07DisplayJ0V0N0OSg_AA06SourceP0OtFZ_0(v48);
  v24 = 0;
  v48[8] = result;
  v48[0] = MEMORY[0x1E69E7CC0];
LABEL_2:
  if (v24 <= 4)
  {
    v25 = 4;
  }

  else
  {
    v25 = v24;
  }

  while (1)
  {
    if (v24 == 4)
    {
      sub_1D111C0F4();
      swift_arrayDestroy();
      v28 = sub_1D139044C();

      v29 = [objc_opt_self() andPredicateWithSubpredicates_];

      v30 = v45;
      [v45 setPredicate_];

      sub_1D10A5C9C(0, &qword_1EE06A4C0);
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_1D139E810;
      v32 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
      v33 = sub_1D139012C();
      v34 = [v32 initWithKey:v33 ascending:1 selector:sel_compare_];

      *(v31 + 32) = v34;
      sub_1D106F934(0, &qword_1EE06B578);
      v35 = sub_1D139044C();

      [v30 setSortDescriptors_];

      __swift_project_boxed_opaque_existential_1Tm((a1 + 40), *(a1 + 64));
      v36 = v30;
      v37 = sub_1D138D8BC();
      [objc_allocWithZone(MEMORY[0x1E695D600]) initWithFetchRequest:v36 managedObjectContext:v37 sectionNameKeyPath:0 cacheName:0];

      v38 = OBJC_IVAR____TtCC15HealthRecordsUI20UDCDataSourceFactory20SectionConfiguration_layoutType;
      v39 = sub_1D138E5EC();
      v40 = *(v39 - 8);
      v41 = a1 + v38;
      v42 = v46;
      (*(v40 + 16))(v46, v41, v39);
      (*(v40 + 56))(v42, 0, 1, v39);
      sub_1D10A5CE8();
      objc_allocWithZone(v43);

      v44 = sub_1D138E0CC();

      sub_1D115D994(&qword_1EC60A0C0, sub_1D10A5CE8);
      return v44;
    }

    if (v25 == v24)
    {
      break;
    }

    v26 = v48[v24++ + 5];
    if (v26)
    {
      v27 = v26;
      MEMORY[0x1D3885D90]();
      if (*((v48[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v48[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D13904BC();
      }

      result = sub_1D13904FC();
      goto LABEL_2;
    }
  }

  __break(1u);
  return result;
}

void sub_1D115D8F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D138DB9C();
    v7 = sub_1D115D994(&qword_1EC60A0B8, MEMORY[0x1E69A3DD0]);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1D115D994(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t NavigationType.associatedKeyword.getter()
{
  if (*v0 > 1u)
  {
    if (*v0 == 2)
    {
      return sub_1D138DA9C();
    }

    else
    {
      return sub_1D138DABC();
    }
  }

  else if (*v0)
  {
    return sub_1D138DA8C();
  }

  else
  {
    return sub_1D138DAAC();
  }
}

HealthRecordsUI::NavigationType_optional __swiftcall NavigationType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_1D115DA24()
{
  result = qword_1EC60BE58;
  if (!qword_1EC60BE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60BE58);
  }

  return result;
}

unint64_t sub_1D115DB40()
{
  result = qword_1EC60BE60;
  if (!qword_1EC60BE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60BE60);
  }

  return result;
}

void sub_1D115DB98(void *a1, void (*a2)(uint64_t), uint64_t a3)
{
  v4 = v3;
  v41 = a2;
  v42 = a3;
  v38 = *v3;
  v6 = sub_1D138EFFC();
  v37[2] = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v7 = sub_1D138F0BC();
  v8 = *(v7 - 8);
  v39 = v7;
  v40 = v8;
  MEMORY[0x1EEE9AC00](v7);
  MEMORY[0x1EEE9AC00](v9);
  MEMORY[0x1EEE9AC00](v10);
  v37[1] = v37 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = v37 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = v37 - v16;
  sub_1D138EFEC();
  swift_allocObject();
  v18 = sub_1D138EFDC();
  v19 = [a1 mainRecord];
  v43 = v18;
  if (v19)
  {
    v20 = v19;
    sub_1D138EFBC();
    if (v21)
    {

      sub_1D138F06C();

      v22 = sub_1D138F0AC();
      v23 = sub_1D139081C();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v46[0] = v25;
        *v24 = 136315138;
        v44 = v38;
        swift_getMetatypeMetadata();
        v44 = sub_1D13901EC();
        v45 = v26;

        MEMORY[0x1D3885C10](46, 0xE100000000000000);

        MEMORY[0x1D3885C10](0xD000000000000025, 0x80000001D13BEA60);

        v27 = sub_1D11DF718(v44, v45, v46);

        *(v24 + 4) = v27;
        _os_log_impl(&dword_1D101F000, v22, v23, "%s not adding to Wallet, it's already there", v24, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v25);
        MEMORY[0x1D38882F0](v25, -1, -1);
        MEMORY[0x1D38882F0](v24, -1, -1);
      }

      (*(v40 + 8))(v17, v39);
      v41(2);

      return;
    }
  }

  sub_1D138EFAC();
  sub_1D138F06C();

  v28 = sub_1D138F0AC();
  v29 = sub_1D139081C();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v46[0] = v31;
    *v30 = 136315138;
    v44 = v38;
    swift_getMetatypeMetadata();
    v44 = sub_1D13901EC();
    v45 = v32;

    MEMORY[0x1D3885C10](46, 0xE100000000000000);

    MEMORY[0x1D3885C10](0xD000000000000025, 0x80000001D13BEA60);

    v33 = sub_1D11DF718(v44, v45, v46);

    *(v30 + 4) = v33;
    _os_log_impl(&dword_1D101F000, v28, v29, "%s starting to add to Wallet", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v31);
    MEMORY[0x1D38882F0](v31, -1, -1);
    MEMORY[0x1D38882F0](v30, -1, -1);
  }

  (*(v40 + 8))(v14, v39);
  v34 = swift_allocObject();
  v35 = v41;
  v36 = v42;
  v34[2] = v4;
  v34[3] = v35;
  v34[4] = v36;

  sub_1D138EFCC();
}

void sub_1D115E6D4(void *a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v7 = sub_1D138F0BC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v37 - v12;
  if (a1)
  {
    v14 = a1;
    sub_1D138F06C();
    v15 = a1;

    v16 = sub_1D138F0AC();
    v17 = sub_1D13907FC();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v38 = a3;
      v19 = v18;
      v20 = swift_slowAlloc();
      v39 = a4;
      v21 = v20;
      v40 = v20;
      *v19 = 136315394;
      v22 = sub_1D115EA9C(0xD000000000000025, 0x80000001D13BEA60);
      v24 = sub_1D11DF718(v22, v23, &v40);

      *(v19 + 4) = v24;
      *(v19 + 12) = 2080;
      swift_getErrorValue();
      v25 = sub_1D13916FC();
      v27 = sub_1D11DF718(v25, v26, &v40);

      *(v19 + 14) = v27;
      _os_log_impl(&dword_1D101F000, v16, v17, "%s failed to add to Wallet: %s", v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D38882F0](v21, -1, -1);
      v28 = v19;
      a3 = v38;
      MEMORY[0x1D38882F0](v28, -1, -1);
    }

    (*(v8 + 8))(v13, v7);
    v29 = a1;
    a3(a1);
  }

  else
  {
    v39 = a4;
    sub_1D138F06C();

    v30 = sub_1D138F0AC();
    v31 = sub_1D139081C();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v40 = v33;
      *v32 = 136315138;
      v34 = sub_1D115EA9C(0xD000000000000025, 0x80000001D13BEA60);
      v36 = sub_1D11DF718(v34, v35, &v40);

      *(v32 + 4) = v36;
      _os_log_impl(&dword_1D101F000, v30, v31, "%s added to Wallet", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v33);
      MEMORY[0x1D38882F0](v33, -1, -1);
      MEMORY[0x1D38882F0](v32, -1, -1);
    }

    (*(v8 + 8))(v10, v7);
    a3(1);
  }
}

uint64_t sub_1D115EA9C(uint64_t a1, uint64_t a2)
{
  swift_getMetatypeMetadata();
  v5 = sub_1D13901EC();

  MEMORY[0x1D3885C10](46, 0xE100000000000000);

  MEMORY[0x1D3885C10](a1, a2);

  return v5;
}

uint64_t sub_1D115EB84(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

    return 0;
  }

LABEL_19:
  v2 = sub_1D13910DC();
  if (!v2)
  {
    return 0;
  }

LABEL_3:
  sub_1D138EFEC();
  swift_allocObject();
  sub_1D138EFDC();
  v3 = 0;
  v10 = MEMORY[0x1E69E7CC0];
  do
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1D3886B70](v3, a1);
    }

    else
    {
      if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_18;
      }

      v4 = *(a1 + 8 * v3 + 32);
    }

    v5 = v4;
    v6 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    sub_1D138EFBC();
    if (v7)
    {

      sub_1D13912AC();
      sub_1D13912EC();
      sub_1D13912FC();
      sub_1D13912BC();
    }

    else
    {
    }

    ++v3;
  }

  while (v6 != v2);
  if (v10 < 0 || (v10 & 0x4000000000000000) != 0)
  {
    v8 = sub_1D13910DC();
  }

  else
  {
    v8 = *(v10 + 16);
  }

  return v8;
}

void sub_1D115ED1C()
{
  v1 = *(v0 + 104);
}

uint64_t sub_1D115ED4C()
{
  v0 = sub_1D1109C38();
  v1 = v0[12];

  v2 = v0[13];

  return swift_deallocClassInstance();
}

void sub_1D115EDCC(uint64_t a1, void *a2)
{
  v4 = *v2;
  v5 = *(*v2 + 96);
  v6 = *(*v2 + 104);
  v7 = objc_allocWithZone(type metadata accessor for UDCRecordsTableViewController());
  v8 = v5;
  v9 = v6;
  v10 = sub_1D1126A0C(v8, v9, 0);

  [a2 showViewController:v10 sender:v4];
}

uint64_t sub_1D115EE74(uint64_t a1, void *a2, void *a3)
{
  if (*(*a1 + 16))
  {
    v5 = type metadata accessor for ShowAllRecordsItem();
    swift_allocObject();
    v6 = a2;
    v7 = a3;
    v8 = sub_1D115F3AC(v6, v7);

    sub_1D115F804(0, &qword_1EC60ABA8, sub_1D10A7254, MEMORY[0x1E69E6F90]);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1D139E700;
    *(v9 + 56) = v5;
    *(v9 + 64) = sub_1D115F7BC(&qword_1EC60BE70, v10, type metadata accessor for ShowAllRecordsItem);
    *(v9 + 32) = v8;
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  sub_1D115F804(0, &qword_1EC60AA30, MEMORY[0x1E69A3690], MEMORY[0x1E69E6F90]);
  sub_1D138E52C();
  *(swift_allocObject() + 16) = xmmword_1D139E700;
  sub_1D110A5C8(v9);

  sub_1D138E50C();
  sub_1D138E10C();
  sub_1D138E58C();
}

uint64_t sub_1D115F0FC()
{
}

uint64_t sub_1D115F12C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D115F1C0()
{
  v0 = sub_1D138E6BC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D138E65C();
  v4 = sub_1D138E6AC();
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t sub_1D115F2F0()
{
  type metadata accessor for TextItemCell();
  sub_1D115F7BC(&unk_1EC60F720, 255, type metadata accessor for TextItemCell);
  return sub_1D13908AC();
}

void *sub_1D115F3AC(void *a1, void *a2)
{
  v3 = v2;
  sub_1D115F804(0, &qword_1EC60A060, MEMORY[0x1E69DBF38], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v25 - v7;
  v26 = sub_1D138F15C();
  v9 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D138F0FC();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3[12] = a1;
  v3[13] = a2;
  v16 = qword_1EE06AD00;
  v17 = a1;
  v18 = a2;
  if (v16 != -1)
  {
    swift_once();
  }

  v25 = sub_1D138D1CC();
  v20 = v19;
  sub_1D115F804(0, &qword_1EC60A058, MEMORY[0x1E69DBF68], MEMORY[0x1E69E6F90]);
  sub_1D138F17C();
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1D139E700;
  (*(v13 + 104))(v15, *MEMORY[0x1E69DBF28], v12);
  v22 = sub_1D138F10C();
  (*(*(v22 - 8) + 56))(v8, 1, 1, v22);
  sub_1D138F14C();
  sub_1D138F11C();
  (*(v9 + 8))(v11, v26);
  (*(v13 + 8))(v15, v12);
  type metadata accessor for TextItemCell();
  sub_1D115F7BC(&unk_1EC60F720, 255, type metadata accessor for TextItemCell);
  v3[10] = sub_1D138DECC();
  v3[11] = v23;
  v3[2] = v25;
  v3[3] = v20;
  v3[4] = 0;
  v3[5] = 0;
  v3[6] = 0;
  v3[7] = v21;
  v3[8] = 0;
  v3[9] = 0;
  return v3;
}

uint64_t sub_1D115F7BC(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D115F804(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D115F868(unsigned __int8 a1)
{
  result = 0;
  if (a1 <= 2u)
  {
    if (a1)
    {
      if (a1 != 2)
      {
        return result;
      }

      if (qword_1EC608CE8 == -1)
      {
        return sub_1D138D1CC();
      }
    }

    else if (qword_1EE06AD00 == -1)
    {
      return sub_1D138D1CC();
    }

    goto LABEL_16;
  }

  if (a1 == 3)
  {
    if (qword_1EC608CA8 == -1)
    {
      return sub_1D138D1CC();
    }

LABEL_16:
    swift_once();
    return sub_1D138D1CC();
  }

  if (a1 == 6)
  {
    if ([objc_opt_self() isAppleInternalInstall])
    {
      return 0x6C616E7265746E49;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D115FA4C(char a1)
{
  switch(a1)
  {
    case 3:
      if (qword_1EC608CA8 == -1)
      {
        return sub_1D138D1CC();
      }

LABEL_11:
      swift_once();
      return sub_1D138D1CC();
    case 2:
      if (qword_1EC608CE8 == -1)
      {
        return sub_1D138D1CC();
      }

      goto LABEL_11;
    case 0:
      if (qword_1EE06AD00 == -1)
      {
        return sub_1D138D1CC();
      }

      goto LABEL_11;
  }

  return 0;
}

uint64_t sub_1D115FBD4(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2)
  {
    v4 = 0;
    v5 = result + 32;
    v6 = MEMORY[0x1E69E7CC0];
    while (v4 < v2)
    {
      v9 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_18;
      }

      v10 = *(v5 + v4++);
      v11 = *(*a2 + 16);
      v12 = (*a2 + 32);
      while (v11)
      {
        v13 = *v12++;
        --v11;
        if (v13 == v10)
        {
          goto LABEL_6;
        }
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1D10FDE0C(0, *(v6 + 16) + 1, 1);
      }

      v8 = *(v6 + 16);
      v7 = *(v6 + 24);
      if (v8 >= v7 >> 1)
      {
        result = sub_1D10FDE0C((v7 > 1), v8 + 1, 1);
      }

      *(v6 + 16) = v8 + 1;
      *(v6 + v8 + 32) = v10;
LABEL_6:
      if (v9 == v2)
      {
        return v6;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t sub_1D115FCFC(unint64_t a1)
{
  v7 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
    v1 = sub_1D13910DC();
    if (v1)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v1)
    {
      goto LABEL_8;
    }
  }

  v2 = sub_1D10F8A0C(v1, 1, 1, MEMORY[0x1E69E7CC0]);
  v4 = *(v2 + 2);
  v3 = *(v2 + 3);
  if (v4 >= v3 >> 1)
  {
    v2 = sub_1D10F8A0C((v3 > 1), v4 + 1, 1, v2);
  }

  *(v2 + 2) = v4 + 1;
  v2[v4 + 32] = 1;
  v7 = v2;
LABEL_8:
  v5 = sub_1D115FBD4(&unk_1F4D04888, &v7);

  return v5;
}

unint64_t sub_1D115FDE8(unint64_t result)
{
  if (result >= 4)
  {
    return 4;
  }

  return result;
}

unint64_t sub_1D115FE0C()
{
  result = qword_1EC60BE78;
  if (!qword_1EC60BE78)
  {
    sub_1D115FE64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60BE78);
  }

  return result;
}

void sub_1D115FE64()
{
  if (!qword_1EC60BE80)
  {
    v0 = sub_1D139052C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60BE80);
    }
  }
}

unint64_t sub_1D115FEB8()
{
  result = qword_1EC60BE88;
  if (!qword_1EC60BE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60BE88);
  }

  return result;
}

id sub_1D115FF4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v5 = sub_1D139012C();
  }

  else
  {
    v5 = 0;
  }

  v24.receiver = v3;
  v24.super_class = type metadata accessor for NoGatewaysFoundTableViewCell();
  v6 = objc_msgSendSuper2(&v24, sel_initWithStyle_reuseIdentifier_, a1, v5);

  v7 = objc_allocWithZone(MEMORY[0x1E69DCC10]);
  v8 = v6;
  v9 = [v7 init];
  if (qword_1EE06AD00 != -1)
  {
    swift_once();
  }

  sub_1D138D1CC();
  v10 = sub_1D139012C();

  [v9 setText_];

  sub_1D106F934(0, &qword_1EC60E670);
  v11 = sub_1D1390C6C();
  [v9 setFont_];

  v12 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  [v12 setNumberOfLines_];
  if ([objc_opt_self() isAppleInternalInstall])
  {
    sub_1D138D1CC();
    MEMORY[0x1D3885C10](0xD000000000000023, 0x80000001D13BED90);
  }

  else
  {
    sub_1D138D1CC();
  }

  v13 = sub_1D139012C();

  [v12 setText_];

  v14 = [objc_opt_self() preferredFontForTextStyle_];
  [v12 setFont_];

  sub_1D106F424();
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1D139E6E0;
  *(v15 + 32) = v9;
  *(v15 + 40) = v12;
  v16 = objc_allocWithZone(MEMORY[0x1E69DCF90]);
  sub_1D106F934(0, &qword_1EC609680);
  v17 = v9;
  v18 = v12;
  v19 = sub_1D139044C();

  v20 = [v16 initWithArrangedSubviews_];

  [v20 setAxis_];
  [v20 setAlignment_];
  [v20 setDistribution_];
  [v20 setSpacing_];
  [v20 setBaselineRelativeArrangement_];
  v21 = [v8 contentView];
  [v21 addSubview_];

  v22 = [v8 contentView];
  [v20 hk:v22 alignConstraintsWithView:?];

  return v8;
}

id NoGatewaysFoundTableViewCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NoGatewaysFoundTableViewCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t Sequence.autoreleasingMap<A>(_:)(uint64_t a1, uint64_t a2, unsigned int (*a3)(char *, uint64_t, uint64_t), char *a4, uint64_t a5)
{
  v10[2] = a3;
  v10[3] = a4;
  v10[4] = a5;
  v10[5] = a1;
  v10[6] = a2;
  v8 = sub_1D10922EC();
  return sub_1D116065C(sub_1D1160630, v10, a3, a4, v8, a5, MEMORY[0x1E69E7288], &v11);
}

void sub_1D11605A4(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v11 = objc_autoreleasePoolPush();
  a2(a1);
  objc_autoreleasePoolPop(v11);
  if (v7)
  {
    *a7 = v7;
  }
}

uint64_t sub_1D116065C(void (*a1)(char *, char *), uint64_t a2, unsigned int (*a3)(char *, uint64_t, uint64_t), char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v45 = a8;
  v9 = v8;
  v60 = a2;
  v61 = a4;
  v59 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v54 = *(AssociatedTypeWitness - 8);
  v14 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v43 = &v42 - v15;
  v46 = a5;
  v44 = *(a5 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v56 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v57 = &v42 - v18;
  v19 = sub_1D1390F3C();
  v47 = *(v19 - 8);
  v48 = v19;
  v20 = MEMORY[0x1EEE9AC00](v19);
  v50 = &v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = &v42 - v23;
  v25 = MEMORY[0x1EEE9AC00](v22);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v55 = *(a3 - 1);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v42 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = a6;
  v62 = swift_getAssociatedTypeWitness();
  v51 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v31 = &v42 - v30;
  v32 = sub_1D13903AC();
  v63 = sub_1D139131C();
  v58 = sub_1D139132C();
  sub_1D13912CC();
  (*(v55 + 2))(v29, v52, a3);
  v61 = v31;
  v55 = a3;
  result = sub_1D139038C();
  if (v32 < 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v32)
  {
    v34 = (v54 + 48);
    v35 = (v54 + 8);
    swift_getAssociatedConformanceWitness();
    while (1)
    {
      sub_1D1390F5C();
      result = (*v34)(v24, 1, AssociatedTypeWitness);
      if (result == 1)
      {
        goto LABEL_17;
      }

      v59(v24, v57);
      if (v9)
      {
        (*(v51 + 8))(v61, v62);

        (*(v44 + 32))(v45, v57, v46);
        return (*v35)(v24, AssociatedTypeWitness);
      }

      v9 = 0;
      (*v35)(v24, AssociatedTypeWitness);
      sub_1D139130C();
      if (!--v32)
      {
        goto LABEL_9;
      }
    }
  }

  swift_getAssociatedConformanceWitness();
LABEL_9:
  v36 = v50;
  sub_1D1390F5C();
  v37 = v36;
  v38 = v54;
  v39 = *(v54 + 48);
  v57 = (v54 + 48);
  v55 = v39;
  if (v39(v36, 1, AssociatedTypeWitness) == 1)
  {
LABEL_13:
    (*(v51 + 8))(v61, v62);
    (*(v47 + 8))(v37, v48);
    return v63;
  }

  else
  {
    v54 = *(v38 + 32);
    v40 = (v38 + 8);
    v41 = v43;
    while (1)
    {
      (v54)(v41, v37, AssociatedTypeWitness);
      v59(v41, v56);
      if (v9)
      {
        break;
      }

      v9 = 0;
      (*v40)(v41, AssociatedTypeWitness);
      sub_1D139130C();
      sub_1D1390F5C();
      if (v55(v37, 1, AssociatedTypeWitness) == 1)
      {
        goto LABEL_13;
      }
    }

    (*v40)(v41, AssociatedTypeWitness);
    (*(v51 + 8))(v61, v62);

    return (*(v44 + 32))(v45, v56, v46);
  }
}

uint64_t Sequence.autoreleasingMap<A>(_:)(uint64_t a1, uint64_t a2, unsigned int (*a3)(char *, uint64_t, uint64_t), char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = a5;
  v9[5] = a1;
  v9[6] = a2;
  return sub_1D116065C(sub_1D1160E24, v9, a3, a4, MEMORY[0x1E69E73E0], a5, MEMORY[0x1E69E7410], a8);
}

void sub_1D1160DB4(uint64_t a1, void (*a2)(uint64_t))
{
  v5 = objc_autoreleasePoolPush();
  a2(a1);
  objc_autoreleasePoolPop(v5);
  if (v2)
  {
    __break(1u);
  }
}

uint64_t Sequence.autoreleasingCompactMap<A>(_:)()
{
  return sub_1D13903CC();
}

{
  return sub_1D13903CC();
}

void sub_1D1160EC4(uint64_t a1, void (*a2)(uint64_t))
{
  v4 = objc_autoreleasePoolPush();
  a2(a1);
  objc_autoreleasePoolPop(v4);
}

uint64_t type metadata accessor for AlphabeticalLabsDataSource()
{
  result = qword_1EC60BE98;
  if (!qword_1EC60BE98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D11610AC(unint64_t a1, void *a2)
{
  v9 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
LABEL_16:
    v4 = sub_1D13910DC();
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
LABEL_3:
      for (i = 0; ; ++i)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x1D3886B70](i, a1);
          v7 = i + 1;
          if (__OFADD__(i, 1))
          {
LABEL_13:
            __break(1u);
            return v9;
          }
        }

        else
        {
          if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_16;
          }

          v6 = *(a1 + 8 * i + 32);

          v7 = i + 1;
          if (__OFADD__(i, 1))
          {
            goto LABEL_13;
          }
        }

        if (*(v6 + *a2 + 16) == 1)
        {
        }

        else
        {
          sub_1D13912AC();
          sub_1D13912EC();
          sub_1D13912FC();
          sub_1D13912BC();
        }

        if (v7 == v4)
        {
          return v9;
        }
      }
    }
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1D11611F8(unint64_t a1)
{
  sub_1D1163100(0, &qword_1EE06B500, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v26 - v3;
  v5 = sub_1D138D57C();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v35 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v34 = &v26 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v33 = &v26 - v11;
  v12 = type metadata accessor for UserDomainConceptViewData();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
LABEL_19:
    v15 = sub_1D13910DC();
    if (v15)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v15 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v15)
    {
LABEL_3:
      v16 = 0;
      v38 = a1 & 0xFFFFFFFFFFFFFF8;
      v39 = a1 & 0xC000000000000001;
      v36 = v15;
      v37 = (v6 + 48);
      v28 = (v6 + 8);
      v29 = (v6 + 32);
      v31 = v12;
      v32 = a1;
      v30 = v4;
      v27 = v14;
      do
      {
        if (v39)
        {
          v6 = MEMORY[0x1D3886B70](v16, a1);
          v17 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
LABEL_16:
            __break(1u);
            return 1;
          }
        }

        else
        {
          if (v16 >= *(v38 + 16))
          {
            __break(1u);
            goto LABEL_19;
          }

          v6 = *(a1 + 8 * v16 + 32);

          v17 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
            goto LABEL_16;
          }
        }

        v18 = v6 + OBJC_IVAR____TtC15HealthRecordsUI19UDCAlphabeticalItem_viewData;
        sub_1D10DC904(v6 + OBJC_IVAR____TtC15HealthRecordsUI19UDCAlphabeticalItem_viewData, v14);
        sub_1D106A1D8(&v14[*(v12 + 36)], v4);
        if ((*v37)(v4, 1, v5) == 1)
        {

          sub_1D1162FD4(v14);
          sub_1D109AC18(v4);
        }

        else
        {
          v19 = v33;
          (*v29)(v33, v4, v5);
          v20 = v34;
          sub_1D138D56C();
          v21 = v35;
          sub_1D138D4BC();
          v22 = *v28;
          (*v28)(v20, v5);
          LOBYTE(v20) = sub_1D138D50C();
          v22(v21, v5);
          v23 = v19;
          v14 = v27;
          v22(v23, v5);
          sub_1D1162FD4(v14);
          if (v20)
          {
            v24 = *(v18 + 16);

            v4 = v30;
            v12 = v31;
            a1 = v32;
            if (!v24)
            {
              return 1;
            }
          }

          else
          {

            v4 = v30;
            v12 = v31;
            a1 = v32;
          }
        }

        ++v16;
      }

      while (v17 != v36);
    }
  }

  return 0;
}

uint64_t sub_1D11615E4(unint64_t a1, void *a2)
{
  if (a1 >> 62)
  {
LABEL_17:
    v4 = sub_1D13910DC();
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
LABEL_3:
      v5 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x1D3886B70](v5, a1);
          v7 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
LABEL_14:
            __break(1u);
            return 1;
          }
        }

        else
        {
          if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_17;
          }

          v6 = *(a1 + 8 * v5 + 32);

          v7 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
            goto LABEL_14;
          }
        }

        v8 = v6 + *a2;
        if ([*(v8 + 8) isLowUtility])
        {
          v9 = *(v8 + 16);

          if (!v9)
          {
            return 1;
          }
        }

        else
        {
        }

        ++v5;
      }

      while (v7 != v4);
    }
  }

  return 0;
}

uint64_t sub_1D1161708(unint64_t a1, void *a2)
{
  v38 = a2;
  sub_1D1163100(0, &qword_1EE06B500, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v26 - v4;
  v6 = sub_1D138D57C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v34 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v33 = &v26 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v32 = &v26 - v12;
  v13 = type metadata accessor for UserDomainConceptViewData();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = a1;
  v41 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
LABEL_20:
    v39 = sub_1D13910DC();
    if (v39)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v39 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v39)
    {
LABEL_3:
      v16 = 0;
      v36 = v40 & 0xFFFFFFFFFFFFFF8;
      v37 = v40 & 0xC000000000000001;
      v35 = (v7 + 48);
      v28 = (v7 + 8);
      v29 = (v7 + 32);
      v30 = v13;
      v31 = v5;
      v27 = v15;
      while (1)
      {
        if (v37)
        {
          v17 = MEMORY[0x1D3886B70](v16, v40);
          v18 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
LABEL_17:
            __break(1u);
            return v41;
          }
        }

        else
        {
          if (v16 >= *(v36 + 16))
          {
            __break(1u);
            goto LABEL_20;
          }

          v17 = *(v40 + 8 * v16 + 32);

          v18 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
            goto LABEL_17;
          }
        }

        v7 = v17 + *v38;
        sub_1D10DC904(v7, v15);
        sub_1D106A1D8(&v15[*(v13 + 36)], v5);
        if ((*v35)(v5, 1, v6) == 1)
        {
          sub_1D1162FD4(v15);
          sub_1D109AC18(v5);
        }

        else
        {
          v19 = v32;
          (*v29)(v32, v5, v6);
          v20 = v33;
          sub_1D138D56C();
          v21 = v34;
          sub_1D138D4BC();
          v22 = *v28;
          (*v28)(v20, v6);
          LOBYTE(v20) = sub_1D138D50C();
          v23 = v21;
          v15 = v27;
          v22(v23, v6);
          v24 = v19;
          v13 = v30;
          v22(v24, v6);
          v5 = v31;
          sub_1D1162FD4(v15);
          if (v20)
          {
            goto LABEL_4;
          }
        }

        if (![*(v7 + 8) isLowUtility] && !*(v7 + 16))
        {
          sub_1D13912AC();
          v7 = *(v41 + 16);
          sub_1D13912EC();
          sub_1D13912FC();
          sub_1D13912BC();
          goto LABEL_5;
        }

LABEL_4:

LABEL_5:
        ++v16;
        if (v18 == v39)
        {
          return v41;
        }
      }
    }
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1D1161B28()
{
  v1 = qword_1EE06A158;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if ((v2 & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    sub_1D139108C();
    sub_1D138F65C();
    sub_1D1162EB4(&qword_1EC60BEA8, MEMORY[0x1E695BF10]);
    result = sub_1D139070C();
    v5 = v19;
    v4 = v20;
    v6 = v21;
    v7 = v22;
    v8 = v23;
  }

  else
  {
    v9 = -1 << *(v2 + 32);
    v4 = v2 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(v2 + 56);
    result = swift_bridgeObjectRetain_n();
    v7 = 0;
    v5 = v2;
  }

  if (v5 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v12 = v7;
    v13 = v8;
    v14 = v7;
    if (!v8)
    {
      break;
    }

LABEL_12:
    v15 = (v13 - 1) & v13;
    v16 = *(*(v5 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));

    if (!v16)
    {
LABEL_18:
      sub_1D102CC30();

      v17 = sub_1D138E5CC();

      MEMORY[0x1D3888420](v17 + qword_1EE06A150);

      return v17;
    }

    while (1)
    {
      sub_1D138F64C();

      v7 = v14;
      v8 = v15;
      if ((v5 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_1D139110C())
      {
        sub_1D138F65C();
        swift_dynamicCast();
        v14 = v7;
        v15 = v8;
        if (v18)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= ((v6 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v13 = *(v4 + 8 * v14);
    ++v12;
    if (v13)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1161DC0()
{
  sub_1D1163030();
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v5 = v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9[1] = *(v0 + qword_1EC60BE90);
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1D11631DC;
  *(v6 + 24) = v0;
  sub_1D1125B80();
  sub_1D1163164(0, &qword_1EC60A790, &qword_1EC60A798, type metadata accessor for UDCAlphabeticalItem);
  sub_1D1162EB4(&qword_1EC60CCD0, sub_1D1125B80);

  sub_1D138F84C();

  sub_1D1162EB4(&qword_1EC60BEC8, sub_1D1163030);
  v7 = sub_1D138F80C();
  (*(v3 + 8))(v5, v2);
  return v7;
}

uint64_t sub_1D1161FE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UserDomainConceptViewData();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v38 - v11;
  v13 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  v15 = &OBJC_IVAR____TtC15HealthRecordsUI19UDCAlphabeticalItem_reuseIdentifier;
  v16 = &OBJC_IVAR____TtC15HealthRecordsUI19UDCAlphabeticalItem_viewData;
  v44 = a3;
  if (v13)
  {
    v39 = a2;
    v45 = MEMORY[0x1E69E7CC0];
    v43 = v13;
    sub_1D13912DC();
    v17 = type metadata accessor for AlphabeticalUDCCell();
    v18 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v41 = qword_1EE06A160;
    v42 = v17;
    swift_beginAccess();
    v38 = v7;
    v40 = *(v7 + 72);
    do
    {
      sub_1D10DC904(v18, v12);
      sub_1D10DC904(v12, v10);
      v19 = *(a3 + v41);
      type metadata accessor for UDCAlphabeticalItem();
      v20 = swift_allocObject();
      v21 = (v20 + *v15);
      sub_1D1162EB4(&qword_1EC60BEB0, type metadata accessor for AlphabeticalUDCCell);
      v22 = v19;
      v23 = sub_1D138DECC();
      v24 = v16;
      v25 = v10;
      v26 = v15;
      v28 = v27;
      sub_1D1162FD4(v12);
      *v21 = v23;
      v21[1] = v28;
      v15 = v26;
      v10 = v25;
      v16 = v24;
      a3 = v44;
      sub_1D11631E4(v10, v20 + *v24);
      *(v20 + OBJC_IVAR____TtC15HealthRecordsUI19UDCAlphabeticalItem_healthStore) = v22;
      *(v20 + OBJC_IVAR____TtC15HealthRecordsUI19UDCAlphabeticalItem_listConfiguration) = 1;
      sub_1D13912AC();
      sub_1D13912EC();
      sub_1D13912FC();
      sub_1D13912BC();
      v18 += v40;
      --v43;
    }

    while (v43);
    result = v45;
    v7 = v38;
    a2 = v39;
  }

  v29 = *(a2 + 16);
  if (v29)
  {
    v41 = result;
    v46 = MEMORY[0x1E69E7CC0];
    sub_1D13912DC();
    type metadata accessor for AlphabeticalUDCCell();
    v30 = a2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v43 = qword_1EE06A160;
    swift_beginAccess();
    v42 = *(v7 + 72);
    do
    {
      sub_1D10DC904(v30, v12);
      sub_1D10DC904(v12, v10);
      v31 = *(a3 + v43);
      type metadata accessor for UDCAlphabeticalItem();
      v32 = swift_allocObject();
      v33 = (v32 + OBJC_IVAR____TtC15HealthRecordsUI19UDCAlphabeticalItem_reuseIdentifier);
      sub_1D1162EB4(&qword_1EC60BEB0, type metadata accessor for AlphabeticalUDCCell);
      v34 = v31;
      v35 = sub_1D138DECC();
      v37 = v36;
      sub_1D1162FD4(v12);
      *v33 = v35;
      v33[1] = v37;
      a3 = v44;
      sub_1D11631E4(v10, v32 + OBJC_IVAR____TtC15HealthRecordsUI19UDCAlphabeticalItem_viewData);
      *(v32 + OBJC_IVAR____TtC15HealthRecordsUI19UDCAlphabeticalItem_healthStore) = v34;
      *(v32 + OBJC_IVAR____TtC15HealthRecordsUI19UDCAlphabeticalItem_listConfiguration) = 1;
      sub_1D13912AC();
      sub_1D13912EC();
      sub_1D13912FC();
      sub_1D13912BC();
      v30 += v42;
      --v29;
    }

    while (v29);
    return v41;
  }

  return result;
}

uint64_t sub_1D1162418(unint64_t a1, unint64_t a2)
{
  v3 = v2;
  v32 = sub_1D1161708(a2, &OBJC_IVAR____TtC15HealthRecordsUI19UDCAlphabeticalItem_viewData);
  sub_1D11610AC(a1, &OBJC_IVAR____TtC15HealthRecordsUI19UDCAlphabeticalItem_viewData);
  swift_getKeyPath();
  sub_1D1163100(0, &qword_1EC60A798, type metadata accessor for UDCAlphabeticalItem, MEMORY[0x1E69E62F8]);
  sub_1D1162EFC();
  v31 = sub_1D139039C();

  v6 = sub_1D11611F8(a2);
  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v7 = 4;
  }

  v8 = 2;
  if ((sub_1D11615E4(a2, &OBJC_IVAR____TtC15HealthRecordsUI19UDCAlphabeticalItem_viewData) & 1) == 0)
  {
    if (sub_1D10CDA28(0xD000000000000026, 0x80000001D13BB080, 0))
    {
      v8 = 2;
    }

    else
    {
      v8 = 4;
    }
  }

  sub_1D1163100(0, &qword_1EC60BDF0, sub_1D1162F84, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D139E710;
  *(inited + 32) = v7;
  *(inited + 33) = v8;
  v10 = MEMORY[0x1E69E7CC0];
  v11 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v12 = inited;
    v11 = sub_1D10F8A54(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v14 = *(v11 + 2);
    v13 = *(v11 + 3);
    if (v14 >= v13 >> 1)
    {
      v11 = sub_1D10F8A54((v13 > 1), v14 + 1, 1, v11);
    }

    *(v11 + 2) = v14 + 1;
    v11[v14 + 32] = 1;
    v8 = *(v12 + 33);
  }

  if (v8 != 4)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_1D10F8A54(0, *(v11 + 2) + 1, 1, v11);
    }

    v16 = *(v11 + 2);
    v15 = *(v11 + 3);
    if (v16 >= v15 >> 1)
    {
      v11 = sub_1D10F8A54((v15 > 1), v16 + 1, 1, v11);
    }

    *(v11 + 2) = v16 + 1;
    v11[v16 + 32] = v8;
  }

  v17 = *(v11 + 2);
  if (v17)
  {
    v35 = v10;
    sub_1D13912DC();
    type metadata accessor for NavigationCell();
    v33 = qword_1EE06A160;
    swift_beginAccess();
    type metadata accessor for NavigationItem();
    v18 = 32;
    do
    {
      v19 = v11[v18];
      v20 = *(v3 + v33);
      v21 = v11;
      v22 = v3;
      v23 = swift_allocObject();
      sub_1D1162EB4(&qword_1EC60BDC8, type metadata accessor for NavigationCell);
      v24 = v20;
      *(v23 + 16) = sub_1D138DECC();
      *(v23 + 24) = v25;
      *(v23 + 32) = v19;
      *(v23 + 33) = 2;
      *(v23 + 40) = v24;
      sub_1D13912AC();
      sub_1D13912EC();
      v3 = v22;
      v11 = v21;
      sub_1D13912FC();
      sub_1D13912BC();
      ++v18;
      --v17;
    }

    while (v17);

    v26 = v35;
  }

  else
  {

    v26 = MEMORY[0x1E69E7CC0];
  }

  v34 = v26;
  sub_1D1163100(0, &qword_1EC60AA30, MEMORY[0x1E69A3690], MEMORY[0x1E69E6F90]);
  sub_1D138E52C();
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1D139EAB0;
  if (qword_1EE06AD00 != -1)
  {
    v29 = v27;
    swift_once();
    v27 = v29;
  }

  v30 = v27;
  sub_1D138D1CC();
  sub_1D110B050(v31);

  sub_1D138E50C();
  sub_1D138D1CC();
  sub_1D110B050(v32);

  sub_1D138E50C();
  sub_1D110B008(v34);

  sub_1D138E50C();
  return v30;
}

uint64_t sub_1D1162A64@<X0>(Swift::String *a1@<X8>)
{
  v2 = [objc_opt_self() mainBundle];
  v3 = [v2 preferredLocalizations];

  v4 = sub_1D139045C();
  v5 = HKMedicalUserDomainConcept.localizedOntologyPreferredName(given:)(v4);

  *a1 = v5;
  return result;
}

uint64_t sub_1D1162B6C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1D138E6BC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D138E60C();
  sub_1D138E66C();
  sub_1D11580B0();
  v7 = *(v6 + 48);
  (*(v3 + 16))(a1, v5, v2);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  (*(v3 + 8))(v5, v2);
  *(a1 + v7) = Strong;
  v9 = *MEMORY[0x1E69A36B0];
  v10 = sub_1D138E5EC();
  v11 = *(v10 - 8);
  (*(v11 + 104))(a1, v9, v10);
  return (*(v11 + 56))(a1, 0, 1, v10);
}

uint64_t sub_1D1162D2C()
{
  sub_1D138E71C();
  sub_1D13908AC();
  sub_1D138EA0C();
  sub_1D13908BC();
  type metadata accessor for AlphabeticalUDCCell();
  sub_1D1162EB4(&qword_1EC60BEB0, type metadata accessor for AlphabeticalUDCCell);
  sub_1D13908AC();
  type metadata accessor for NavigationCell();
  sub_1D1162EB4(&qword_1EC60BDC8, type metadata accessor for NavigationCell);
  return sub_1D13908AC();
}

uint64_t sub_1D1162E5C()
{
  sub_1D1161B28();

  return swift_deallocClassInstance();
}

uint64_t sub_1D1162EB4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D1162EFC()
{
  result = qword_1EC60BEB8;
  if (!qword_1EC60BEB8)
  {
    sub_1D1163100(255, &qword_1EC60A798, type metadata accessor for UDCAlphabeticalItem, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60BEB8);
  }

  return result;
}

void sub_1D1162F84()
{
  if (!qword_1EC60BDF8)
  {
    v0 = sub_1D1390F3C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60BDF8);
    }
  }
}

uint64_t sub_1D1162FD4(uint64_t a1)
{
  v2 = type metadata accessor for UserDomainConceptViewData();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D1163030()
{
  if (!qword_1EC60BEC0)
  {
    sub_1D1125B80();
    sub_1D1163164(255, &qword_1EC60A790, &qword_1EC60A798, type metadata accessor for UDCAlphabeticalItem);
    sub_1D1162EB4(&qword_1EC60CCD0, sub_1D1125B80);
    v0 = sub_1D138F54C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60BEC0);
    }
  }
}

void sub_1D1163100(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D1163164(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_1D1163100(255, a3, a4, MEMORY[0x1E69E62F8]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_1D11631E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UserDomainConceptViewData();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1D1163248()
{
  v1 = [*v0 collectionView];
  if (v1)
  {
    v2 = v1;
    v3 = [objc_opt_self() clearColor];
    [v2 setBackgroundColor_];
  }

  else
  {
    __break(1u);
  }
}

void sub_1D11632E0()
{
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = v1;
  v3 = objc_opt_self();
  v4 = [v3 clearColor];
  [v2 setBackgroundColor_];

  v5 = [v0 collectionView];
  if (!v5)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v6 = v5;
  v7 = [v3 clearColor];
  [v6 setBackgroundColor_];
}

void sub_1D11633E0()
{
  v1 = [v0 collectionView];
  if (v1)
  {
    v2 = v1;
    v3 = [objc_opt_self() clearColor];
    [v2 setBackgroundColor_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1D11634A0()
{
  sub_1D1162FD4(v0 + OBJC_IVAR____TtC15HealthRecordsUI13UDCRecentItem_viewData);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for UDCRecentItem()
{
  result = qword_1EC60BED0;
  if (!qword_1EC60BED0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D116357C()
{
  result = type metadata accessor for UserDomainConceptViewData();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D1163630()
{
  v1 = *(*v0 + OBJC_IVAR____TtC15HealthRecordsUI13UDCRecentItem_reuseIdentifier);

  return v1;
}

uint64_t sub_1D116369C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for UDCRecentItem();
  v6 = swift_allocObject();
  v7 = (v6 + OBJC_IVAR____TtC15HealthRecordsUI13UDCRecentItem_reuseIdentifier);
  type metadata accessor for RecentUDCCell();
  sub_1D1163E48(&qword_1EC60BDC0, type metadata accessor for RecentUDCCell);
  *v7 = sub_1D138DECC();
  v7[1] = v8;
  result = sub_1D11631E4(a1, v6 + OBJC_IVAR____TtC15HealthRecordsUI13UDCRecentItem_viewData);
  *(v6 + OBJC_IVAR____TtC15HealthRecordsUI13UDCRecentItem_healthStore) = a2;
  *(v6 + OBJC_IVAR____TtC15HealthRecordsUI13UDCRecentItem_listConfiguration) = 0;
  *a3 = v6;
  return result;
}

uint64_t sub_1D1163778()
{
  v1 = sub_1D138D5EC();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (*v0 + OBJC_IVAR____TtC15HealthRecordsUI13UDCRecentItem_reuseIdentifier);
  v7 = *v5;
  v6 = v5[1];
  v8 = [*(*v0 + OBJC_IVAR____TtC15HealthRecordsUI13UDCRecentItem_viewData + 8) UUID];
  sub_1D138D5CC();

  v9 = sub_1D138D59C();
  v11 = v10;
  (*(v2 + 8))(v4, v1);
  v13[0] = v7;
  v13[1] = v6;

  MEMORY[0x1D3885C10](v9, v11);

  return v13[0];
}

uint64_t sub_1D11638C4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE0DA58](a1, WitnessTable);
}

uint64_t sub_1D1163928()
{
  v1 = sub_1D138D5EC();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_1D139177C();
  v6 = [*(v5 + OBJC_IVAR____TtC15HealthRecordsUI13UDCRecentItem_viewData + 8) UUID];
  sub_1D138D5CC();

  sub_1D1163E48(&qword_1EE06B4F8, MEMORY[0x1E69695A8]);
  sub_1D139007C();
  (*(v2 + 8))(v4, v1);
  return sub_1D13917CC();
}

uint64_t sub_1D1163A78()
{
  v1 = sub_1D138D5EC();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [*(*v0 + OBJC_IVAR____TtC15HealthRecordsUI13UDCRecentItem_viewData + 8) UUID];
  sub_1D138D5CC();

  sub_1D1163E48(&qword_1EE06B4F8, MEMORY[0x1E69695A8]);
  sub_1D139007C();
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_1D1163BBC()
{
  v1 = sub_1D138D5EC();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D139177C();
  v5 = [*(*v0 + OBJC_IVAR____TtC15HealthRecordsUI13UDCRecentItem_viewData + 8) UUID];
  sub_1D138D5CC();

  sub_1D1163E48(&qword_1EE06B4F8, MEMORY[0x1E69695A8]);
  sub_1D139007C();
  (*(v2 + 8))(v4, v1);
  return sub_1D13917CC();
}

uint64_t sub_1D1163D7C(uint64_t a1)
{
  *(a1 + 8) = sub_1D1163E48(&qword_1EC60BEE8, type metadata accessor for UDCRecentItem);
  result = sub_1D1163E48(&qword_1EC60BEF0, type metadata accessor for UDCRecentItem);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1D1163E48(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for LabsOnboardingDataSource()
{
  result = qword_1EC60BF20;
  if (!qword_1EC60BF20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D1163F54(char *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (v1)
    {
      sub_1D138E58C();
    }

    else
    {
      sub_1D1164074();
      swift_getObjectType();
      sub_1D138E20C();
      swift_unknownObjectRelease();
      sub_1D138E58C();
    }
  }

  return result;
}

uint64_t sub_1D1164010()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1D138E58C();
  }

  return result;
}

uint64_t sub_1D1164074()
{
  v1 = v0;
  sub_1D1164994(0, &qword_1EC60BE38, MEMORY[0x1E69A36C0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v40 - v3;
  sub_1D138DB9C();
  v43 = MEMORY[0x1D38834C0]();
  sub_1D10A5C9C(0, &qword_1EE06A4C0);
  v42 = v5;
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1D139E6F0;
  sub_1D106F934(0, &qword_1EE06B790);
  sub_1D10F48A8();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1D139E710;
  v8 = MEMORY[0x1E69E6158];
  *(v7 + 56) = MEMORY[0x1E69E6158];
  v9 = sub_1D1089930();
  strcpy((v7 + 32), "pluginPackage");
  *(v7 + 46) = -4864;
  *(v7 + 96) = v8;
  *(v7 + 104) = v9;
  *(v7 + 64) = v9;
  *(v7 + 72) = 0xD000000000000025;
  *(v7 + 80) = 0x80000001D13BCBC0;
  *(v6 + 32) = sub_1D139076C();
  sub_1D1164994(0, &qword_1EC60B298, MEMORY[0x1E69A3C08], MEMORY[0x1E69E6F90]);
  v10 = sub_1D138D97C();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = swift_allocObject();
  v40 = xmmword_1D139E700;
  *(v13 + 16) = xmmword_1D139E700;
  (*(v11 + 104))(v13 + v12, *MEMORY[0x1E69A3C00], v10);
  sub_1D138DA6C();
  sub_1D10A5C9C(0, &qword_1EC60A0A8);
  v14 = swift_allocObject();
  *(v14 + 16) = v40;
  v15 = *(v1 + qword_1EC60BF08);
  *(v14 + 32) = [v15 profileIdentifier];
  v16 = sub_1D138DB3C();

  *(v6 + 40) = v16;
  v17 = [v15 profileIdentifier];
  v44 = 2;
  v18 = sub_1D11689FC(&v44);

  *(v6 + 48) = v18;
  v19 = sub_1D139044C();

  v20 = [objc_opt_self() andPredicateWithSubpredicates_];

  v21 = v43;
  [v43 setPredicate_];

  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1D139E810;
  v23 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v24 = sub_1D139012C();
  v25 = [v23 initWithKey:v24 ascending:1 selector:sel_localizedStandardCompare_];

  *(v22 + 32) = v25;
  sub_1D106F934(0, &qword_1EE06B578);
  v26 = sub_1D139044C();

  [v21 setSortDescriptors_];

  v27 = v41;
  __swift_project_boxed_opaque_existential_1Tm((v41 + qword_1EC60BF10), *(v41 + qword_1EC60BF10 + 24));
  v28 = v21;
  v29 = sub_1D138D8BC();
  [objc_allocWithZone(MEMORY[0x1E695D600]) initWithFetchRequest:v28 managedObjectContext:v29 sectionNameKeyPath:0 cacheName:0];

  sub_1D11580B0();
  v31 = *(v30 + 48);
  sub_1D138E65C();
  v32 = *(v27 + qword_1EC60BF00);
  *&v4[v31] = v32;
  v33 = *MEMORY[0x1E69A36B0];
  v34 = sub_1D138E5EC();
  v35 = *(v34 - 8);
  (*(v35 + 104))(v4, v33, v34);
  (*(v35 + 56))(v4, 0, 1, v34);
  sub_1D10A5CE8();
  objc_allocWithZone(v36);
  v37 = v32;
  v38 = sub_1D138E0CC();

  sub_1D1165584(&qword_1EC60A0C0, sub_1D10A5CE8);
  return v38;
}

uint64_t sub_1D11646E4()
{

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + qword_1EC60BF10);
}

uint64_t sub_1D1164754()
{
  v0 = sub_1D138E5CC();

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + qword_1EC60BF10);

  return swift_deallocClassInstance();
}

id sub_1D1164800@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  sub_1D11580B0();
  v5 = *(v4 + 48);
  sub_1D138E65C();
  v10 = *(v3 + qword_1EC60BF00);
  *(a1 + v5) = v10;
  v6 = *MEMORY[0x1E69A36B0];
  v7 = sub_1D138E5EC();
  v8 = *(v7 - 8);
  (*(v8 + 104))(a1, v6, v7);
  (*(v8 + 56))(a1, 0, 1, v7);

  return v10;
}

void sub_1D1164994(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D11649F8(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v64 = a3;
  v8 = sub_1D1390B0C();
  v9 = *(v8 - 8);
  v67 = v8;
  v68 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v65 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1165380();
  v12 = *(v11 - 8);
  v69 = v11;
  v70 = v12;
  MEMORY[0x1EEE9AC00](v11);
  v66 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1164994(0, &qword_1EE06A620, MEMORY[0x1E69E8050], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v59 = &v53 - v15;
  v71 = type metadata accessor for OnboardingViewIdentifier();
  MEMORY[0x1EEE9AC00](v71);
  v17 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D11259F0();
  v19 = *(v18 - 8);
  v60 = v18;
  v61 = v19;
  MEMORY[0x1EEE9AC00](v18);
  v57 = &v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D116544C();
  v22 = *(v21 - 8);
  v62 = v21;
  v63 = v22;
  MEMORY[0x1EEE9AC00](v21);
  v58 = &v53 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1D138D5EC();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v53 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v4 + qword_1EC60BF18) = MEMORY[0x1E69E7CD0];
  *(v4 + qword_1EC60BF08) = a1;
  *(v4 + qword_1EC60BF00) = a2;
  sub_1D1072E70(a3, v4 + qword_1EC60BF10);
  type metadata accessor for OnboardingTileAppearanceManager();
  v28 = swift_allocObject();
  *(v28 + 16) = a1;
  v29 = objc_allocWithZone(MEMORY[0x1E696C210]);
  v30 = a1;
  v31 = a2;
  v32 = sub_1D139012C();
  v33 = [v29 initWithCategory:0 domainName:v32 healthStore:v30];

  *(v28 + 24) = v33;
  *(v4 + qword_1EC60BEF8) = v28;
  v72[0] = 0;
  v72[1] = 0xE000000000000000;
  sub_1D13911EC();

  strcpy(v72, "MutableArray<");
  HIWORD(v72[1]) = -4864;
  sub_1D138D5DC();
  v34 = sub_1D138D59C();
  v36 = v35;
  (*(v25 + 8))(v27, v24);
  MEMORY[0x1D3885C10](v34, v36);

  MEMORY[0x1D3885C10](62, 0xE100000000000000);
  v37 = sub_1D138E56C();
  v56 = qword_1EC60BEF8;
  swift_storeEnumTagMultiPayload();
  swift_retain_n();

  v38 = sub_1D1099830();

  sub_1D1165518(v17);
  v72[0] = v38;
  v73 = 0;
  sub_1D1125A84();
  sub_1D1165584(&qword_1EC60B398, sub_1D1125A84);
  v39 = v57;
  sub_1D138F82C();

  sub_1D106F934(0, &qword_1EE06B760);
  v40 = sub_1D1390A7C();
  v72[0] = v40;
  v41 = sub_1D1390A2C();
  v42 = *(v41 - 8);
  v54 = *(v42 + 56);
  v55 = v42 + 56;
  v43 = v59;
  v54(v59, 1, 1, v41);
  sub_1D1165584(&qword_1EC60B3C8, sub_1D11259F0);
  v53 = sub_1D10EDC58();
  v44 = v58;
  v45 = v60;
  sub_1D138F8BC();
  sub_1D10D5C04(v43);

  (*(v61 + 8))(v39, v45);
  swift_allocObject();
  swift_weakInit();
  v61 = MEMORY[0x1E695BE98];
  sub_1D1165584(&qword_1EC60BF40, sub_1D116544C);
  v46 = v62;
  sub_1D138F90C();

  (*(v63 + 8))(v44, v46);
  swift_beginAccess();
  sub_1D138F63C();
  swift_endAccess();

  swift_storeEnumTagMultiPayload();

  v47 = v65;
  sub_1D109964C(v17);

  sub_1D1165518(v17);
  v48 = sub_1D1390A7C();
  v72[0] = v48;
  v54(v43, 1, 1, v41);
  sub_1D1165584(&qword_1EC60CF70, MEMORY[0x1E6969F20]);
  v49 = v66;
  v50 = v67;
  sub_1D138F8BC();
  sub_1D10D5C04(v43);

  (*(v68 + 8))(v47, v50);
  swift_allocObject();
  swift_weakInit();

  sub_1D1165584(&qword_1EC60CF80, sub_1D1165380);
  v51 = v69;
  sub_1D138F90C();

  (*(v70 + 8))(v49, v51);
  swift_beginAccess();
  sub_1D138F63C();
  swift_endAccess();

  __swift_destroy_boxed_opaque_existential_1Tm(v64);
  return v37;
}

void sub_1D1165380()
{
  if (!qword_1EC60BF30)
  {
    sub_1D1390B0C();
    sub_1D106F934(255, &qword_1EE06B760);
    sub_1D1165584(&qword_1EC60CF70, MEMORY[0x1E6969F20]);
    sub_1D10EDC58();
    v0 = sub_1D138F5FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60BF30);
    }
  }
}

void sub_1D116544C()
{
  if (!qword_1EC60BF38)
  {
    sub_1D11259F0();
    sub_1D106F934(255, &qword_1EE06B760);
    sub_1D1165584(&qword_1EC60B3C8, sub_1D11259F0);
    sub_1D10EDC58();
    v0 = sub_1D138F5FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC60BF38);
    }
  }
}

uint64_t sub_1D1165518(uint64_t a1)
{
  v2 = type metadata accessor for OnboardingViewIdentifier();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D1165584(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1D11655CC()
{
  v1 = OBJC_IVAR____TtC15HealthRecordsUI23CoverageRecordFormatter____lazy_storage___classificationFormatter;
  v2 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI23CoverageRecordFormatter____lazy_storage___classificationFormatter);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI23CoverageRecordFormatter____lazy_storage___classificationFormatter);
  }

  else
  {
    v4 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI23CoverageRecordFormatter_store);
    v5 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI23CoverageRecordFormatter_context);
    v6 = type metadata accessor for CoverageClassificationFormatter();
    v7 = objc_allocWithZone(v6);
    *&v7[OBJC_IVAR____TtC15HealthRecordsUI31CoverageClassificationFormatter_store] = v4;
    *&v7[OBJC_IVAR____TtC15HealthRecordsUI31CoverageClassificationFormatter_context] = v5;
    v13.receiver = v7;
    v13.super_class = v6;
    v8 = v4;
    v9 = objc_msgSendSuper2(&v13, sel_init);
    v10 = *(v0 + v1);
    *(v0 + v1) = v9;
    v3 = v9;

    v2 = 0;
  }

  v11 = v2;
  return v3;
}

id sub_1D116569C()
{
  v1 = OBJC_IVAR____TtC15HealthRecordsUI23CoverageRecordFormatter____lazy_storage___identifierFormatter;
  v2 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI23CoverageRecordFormatter____lazy_storage___identifierFormatter);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI23CoverageRecordFormatter____lazy_storage___identifierFormatter);
  }

  else
  {
    v4 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI23CoverageRecordFormatter_store);
    v5 = *(v0 + OBJC_IVAR____TtC15HealthRecordsUI23CoverageRecordFormatter_context);
    v6 = type metadata accessor for CoverageIdentifierFormatter();
    v7 = objc_allocWithZone(v6);
    v8 = &v7[OBJC_IVAR____TtC15HealthRecordsUI27CoverageIdentifierFormatter_displayValue];
    *v8 = 0;
    *(v8 + 1) = 0;
    v9 = &v7[OBJC_IVAR____TtC15HealthRecordsUI27CoverageIdentifierFormatter_identifierTitle];
    *v9 = 0;
    *(v9 + 1) = 0xE000000000000000;
    *&v7[OBJC_IVAR____TtC15HealthRecordsUI27CoverageIdentifierFormatter_store] = v4;
    *&v7[OBJC_IVAR____TtC15HealthRecordsUI27CoverageIdentifierFormatter_context] = v5;
    v15.receiver = v7;
    v15.super_class = v6;
    v10 = v4;
    v11 = objc_msgSendSuper2(&v15, sel_init);
    v12 = *(v0 + v1);
    *(v0 + v1) = v11;
    v3 = v11;

    v2 = 0;
  }

  v13 = v2;
  return v3;
}

uint64_t sub_1D1165790(void *a1)
{
  v3 = MEMORY[0x1E69E7CC0];
  v36 = MEMORY[0x1E69E7CC0];
  v4 = [a1 beneficiaryIdentifier];
  if (v4)
  {
    v5 = v4;
    sub_1D106F424();
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_1D139E810;
    *(v3 + 32) = v5;
  }

  v6 = sub_1D116569C();
  v7 = [a1 beneficiary];
  if (v7)
  {
    v8 = v7;
    v9 = sub_1D139016C();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  v35 = v1;
  if (qword_1EE06AD00 != -1)
  {
    swift_once();
  }

  v12 = sub_1D138D1CC();
  v14 = v13;

  v15 = sub_1D1251C6C(v3, v9, v11, v12, v14);

  sub_1D112255C(v15);
  v16 = [a1 subscriberIdentifier];
  if (v16)
  {
    v17 = v16;
    sub_1D106F424();
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1D139E810;
    *(v18 + 32) = v17;
  }

  else
  {
    v18 = MEMORY[0x1E69E7CC0];
  }

  v19 = *(v35 + OBJC_IVAR____TtC15HealthRecordsUI23CoverageRecordFormatter____lazy_storage___identifierFormatter);
  v20 = [a1 subscriber];
  if (v20)
  {
    v21 = v20;
    v22 = sub_1D139016C();
    v24 = v23;
  }

  else
  {
    v22 = 0;
    v24 = 0;
  }

  v25 = sub_1D138D1CC();
  v27 = v26;

  v28 = sub_1D1251C6C(v18, v22, v24, v25, v27);

  sub_1D112255C(v28);
  v29 = [a1 classification];
  if (v29)
  {
    v30 = v29;
    sub_1D106F934(0, &qword_1EC60BF70);
    v31 = sub_1D139045C();

    v32 = sub_1D11655CC();
    v33 = sub_1D12F8D8C(v31);

    sub_1D112255C(v33);
  }

  return v36;
}

id sub_1D1165B6C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CoverageRecordFormatter();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1D1165C20(uint64_t a1)
{
  result = sub_1D1165C48();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D1165C48()
{
  result = qword_1EC60BF68;
  if (!qword_1EC60BF68)
  {
    type metadata accessor for CoverageRecordFormatter();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC60BF68);
  }

  return result;
}

id sub_1D1165C9C(void *a1)
{
  v1 = [a1 subscriberId];
  if (!v1)
  {
    sub_1D139016C();
    v1 = sub_1D139012C();
  }

  v2 = sub_1D139016C();
  v4 = v3;

  v5 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v5 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (v5)
  {
    v6 = [objc_allocWithZone(WDMedicalRecordDisplayItem) init];
    [v6 setDisplayItemType_];
    if (qword_1EE06AD00 != -1)
    {
      swift_once();
    }

    sub_1D138D1CC();
    v7 = sub_1D139012C();

    [v6 setTitle_];

    [v6 setSubtitle_];
    [v6 setSeparatorStyle_];
    [v6 setSeparatorHidden_];
    [v6 setExtraTopPadding_];
  }

  else
  {

    return 0;
  }

  return v6;
}

id sub_1D1165E64(void *a1)
{
  v1 = [a1 relationship];
  if (!v1)
  {
    goto LABEL_7;
  }

  v2 = v1;
  v3 = [v1 localizedPreferredName];

  if (!v3)
  {
    goto LABEL_7;
  }

  v4 = sub_1D139016C();
  v6 = v5;

  v7 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v7 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v7)
  {

LABEL_7:
    v4 = 0;
    v6 = 0xE000000000000000;
  }

  v8 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v8 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (v8)
  {
    v9 = [objc_allocWithZone(WDMedicalRecordDisplayItem) init];
    [v9 setDisplayItemType_];
    if (qword_1EE06AD00 != -1)
    {
      swift_once();
    }

    sub_1D138D1CC();
    v10 = sub_1D139012C();

    [v9 setTitle_];

    v11 = sub_1D139012C();

    [v9 setSubtitle_];

    [v9 setSeparatorStyle_];
    [v9 setSeparatorHidden_];
    [v9 setExtraTopPadding_];
  }

  else
  {

    return 0;
  }

  return v9;
}

id sub_1D1166074(void *a1)
{
  v1 = [a1 payor];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1D139045C();

  v4 = Array<A>.newlineJoined.getter(v3);
  v6 = v5;

  v7 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v7 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v7)
  {

    return 0;
  }

  v8 = [objc_allocWithZone(WDMedicalRecordDisplayItem) init];
  [v8 setDisplayItemType_];
  if (qword_1EE06AD00 != -1)
  {
    swift_once();
  }

  sub_1D138D1CC();
  v9 = sub_1D139012C();

  [v8 setTitle_];

  v10 = sub_1D139012C();

  [v8 setSubtitle_];

  [v8 setSeparatorStyle_];
  [v8 setSeparatorHidden_];
  [v8 setExtraTopPadding_];

  return v8;
}

uint64_t sub_1D1166258(void *a1)
{
  v10[4] = sub_1D1201200(a1);
  v10[5] = sub_1D1165C9C(a1);
  v10[6] = sub_1D1165E64(a1);
  v10[7] = sub_1D1166074(a1);
  v2 = sub_1D106F934(0, &qword_1EC609BE8);
  result = sub_1D11ED750([a1 periodStartDate], objc_msgSend(a1, sel_periodEndDate), v2);
  v4 = 0;
  v10[8] = result;
  v5 = MEMORY[0x1E69E7CC0];
  v9 = MEMORY[0x1E69E7CC0];
LABEL_2:
  if (v4 <= 5)
  {
    v6 = 5;
  }

  else
  {
    v6 = v4;
  }

  while (1)
  {
    if (v4 == 5)
    {
      sub_1D10CD53C();
      swift_arrayDestroy();
      return v5;
    }

    if (v6 == v4)
    {
      break;
    }

    v7 = v10[v4++ + 4];
    if (v7)
    {
      v8 = v7;
      MEMORY[0x1D3885D90]();
      if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D13904BC();
      }

      result = sub_1D13904FC();
      v5 = v9;
      goto LABEL_2;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D11663E0(uint64_t a1)
{
  v1 = sub_1D128719C(a1);
  v6 = v1;
  v2 = MEMORY[0x1E69E7CC0];
  v5 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v3 = v1;
    MEMORY[0x1D3885D90]();
    if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1D13904BC();
    }

    sub_1D13904FC();
    v2 = v5;
  }

  sub_1D1166490(&v6);
  return v2;
}

uint64_t sub_1D1166490(uint64_t a1)
{
  sub_1D10CD53C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id static FeedItem.predicateForHealthRecordsData(categoryKind:sourceProfile:)(unsigned __int8 *a1, void *a2)
{
  v4 = MEMORY[0x1E6968130];
  sub_1D1169424(0, &qword_1EC60B290, MEMORY[0x1E6968130], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v33 - v6;
  v8 = *a1;
  sub_1D1169424(0, &qword_1EC60B298, MEMORY[0x1E69A3C08], MEMORY[0x1E69E6F90]);
  v9 = sub_1D138D97C();
  v10 = *(v9 - 8);
  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = swift_allocObject();
  v33 = xmmword_1D139E700;
  *(v12 + 16) = xmmword_1D139E700;
  (*(v10 + 104))(v12 + v11, *MEMORY[0x1E69A3BB0], v9);
  sub_1D138DA6C();
  v13 = sub_1D138CFBC();
  (*(*(v13 - 8) + 56))(v7, 1, 1, v13);
  sub_1D1169488(0, &qword_1EC60A0A8, MEMORY[0x1E69A3C58], MEMORY[0x1E69E6F90]);
  v14 = swift_allocObject();
  *(v14 + 16) = v33;
  *(v14 + 32) = a2;
  v15 = a2;
  v16 = sub_1D138DB4C();

  sub_1D11693B4(v7, &qword_1EC60B290, v4);
  if (v8 == 11)
  {
    return v16;
  }

  v35 = 0;
  v36 = 0xE000000000000000;
  sub_1D13911EC();

  v35 = 0xD000000000000014;
  v36 = 0x80000001D13BF130;
  v34 = v8;
  v18 = sub_1D13915CC();
  MEMORY[0x1D3885C10](v18);

  MEMORY[0x1D3885C10](93, 0xE100000000000000);
  v19 = v35;
  v20 = v36;
  sub_1D1166D9C();
  sub_1D1169424(0, &qword_1EE06B080, sub_1D10898CC, MEMORY[0x1E69E6F90]);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1D139E710;
  sub_1D138DB9C();
  v22 = sub_1D138DB7C();
  v24 = v23;
  v25 = MEMORY[0x1E69E6158];
  *(v21 + 56) = MEMORY[0x1E69E6158];
  v26 = sub_1D1089930();
  *(v21 + 32) = v22;
  *(v21 + 40) = v24;
  *(v21 + 96) = v25;
  *(v21 + 104) = v26;
  *(v21 + 64) = v26;
  *(v21 + 72) = v19;
  *(v21 + 80) = v20;
  v27 = sub_1D139076C();
  sub_1D1169488(0, &qword_1EE06A4C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1D139E6E0;
  *(v28 + 32) = v16;
  *(v28 + 40) = v27;
  v29 = v16;
  v30 = v27;
  v31 = sub_1D139044C();

  v32 = [objc_opt_self() andPredicateWithSubpredicates_];

  return v32;
}

uint64_t static FeedItem.predicateForHealthRecordsPlugin()()
{
  sub_1D1166D9C();
  sub_1D1169424(0, &qword_1EE06B080, sub_1D10898CC, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D139E710;
  v1 = MEMORY[0x1E69E6158];
  *(v0 + 56) = MEMORY[0x1E69E6158];
  v2 = sub_1D1089930();
  strcpy((v0 + 32), "pluginPackage");
  *(v0 + 46) = -4864;
  *(v0 + 96) = v1;
  *(v0 + 104) = v2;
  *(v0 + 64) = v2;
  *(v0 + 72) = 0xD000000000000025;
  *(v0 + 80) = 0x80000001D13BCBC0;
  return sub_1D139076C();
}

uint64_t static FeedItem.predicateForPluginPackage(_:)(uint64_t a1, uint64_t a2)
{
  sub_1D1166D9C();
  sub_1D1169424(0, &qword_1EE06B080, sub_1D10898CC, MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D139E710;
  v5 = MEMORY[0x1E69E6158];
  *(v4 + 56) = MEMORY[0x1E69E6158];
  v6 = sub_1D1089930();
  strcpy((v4 + 32), "pluginPackage");
  *(v4 + 46) = -4864;
  *(v4 + 96) = v5;
  *(v4 + 104) = v6;
  *(v4 + 64) = v6;
  *(v4 + 72) = a1;
  *(v4 + 80) = a2;

  return sub_1D139076C();
}

uint64_t static FeedItem.predicateForPluginUniqueIdentifier(_:)(uint64_t a1, uint64_t a2)
{
  sub_1D1166D9C();
  sub_1D1169424(0, &qword_1EE06B080, sub_1D10898CC, MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D139E710;
  sub_1D138DB9C();
  v5 = sub_1D138DB7C();
  v7 = v6;
  v8 = MEMORY[0x1E69E6158];
  *(v4 + 56) = MEMORY[0x1E69E6158];
  v9 = sub_1D1089930();
  *(v4 + 32) = v5;
  *(v4 + 40) = v7;
  *(v4 + 96) = v8;
  *(v4 + 104) = v9;
  *(v4 + 64) = v9;
  *(v4 + 72) = a1;
  *(v4 + 80) = a2;

  return sub_1D139076C();
}

uint64_t static FeedItem.predicateForPluginUniqueIdentifierComponent(_:)(uint64_t a1, uint64_t a2)
{
  sub_1D1166D9C();
  sub_1D1169424(0, &qword_1EE06B080, sub_1D10898CC, MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D139E710;
  sub_1D138DB9C();
  v5 = sub_1D138DB7C();
  v7 = v6;
  v8 = MEMORY[0x1E69E6158];
  *(v4 + 56) = MEMORY[0x1E69E6158];
  v9 = sub_1D1089930();
  *(v4 + 32) = v5;
  *(v4 + 40) = v7;
  *(v4 + 96) = v8;
  *(v4 + 104) = v9;
  *(v4 + 64) = v9;
  *(v4 + 72) = a1;
  *(v4 + 80) = a2;

  return sub_1D139076C();
}

unint64_t sub_1D1166D9C()
{
  result = qword_1EE06B790;
  if (!qword_1EE06B790)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE06B790);
  }

  return result;
}

id static FeedItem.predicateForSharedSnippets()()
{
  sub_1D1166D9C();
  sub_1D1169424(0, &qword_1EE06B080, sub_1D10898CC, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D139E710;
  sub_1D138DB9C();
  v1 = sub_1D138DB7C();
  v3 = v2;
  v4 = MEMORY[0x1E69E6158];
  *(v0 + 56) = MEMORY[0x1E69E6158];
  v5 = sub_1D1089930();
  *(v0 + 32) = v1;
  *(v0 + 40) = v3;
  *(v0 + 96) = v4;
  *(v0 + 104) = v5;
  *(v0 + 64) = v5;
  *(v0 + 72) = 0xD000000000000024;
  *(v0 + 80) = 0x80000001D13BF170;
  v6 = sub_1D139076C();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1D139E710;
  v8 = sub_1D138DB7C();
  *(v7 + 56) = v4;
  *(v7 + 64) = v5;
  *(v7 + 32) = v8;
  *(v7 + 40) = v9;
  *(v7 + 96) = v4;
  *(v7 + 104) = v5;
  *(v7 + 72) = 0xD000000000000014;
  *(v7 + 80) = 0x80000001D13BBE60;
  v10 = sub_1D139076C();
  sub_1D1169488(0, &qword_1EE06A4C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1D139E6E0;
  *(v11 + 32) = v6;
  *(v11 + 40) = v10;
  v12 = v6;
  v13 = v10;
  v14 = sub_1D139044C();

  v15 = [objc_opt_self() andPredicateWithSubpredicates_];

  return v15;
}

uint64_t _s14HealthPlatform8FeedItemC0A9RecordsUIE029predicateForUserDomainConceptC5Items12categoryKind13sourceProfileSo11NSPredicateCAD15DisplayCategoryV0N0OSg_AA06SourceP0OtFZ_0(unsigned __int8 *a1)
{
  v1 = *a1;
  sub_1D1166D9C();
  sub_1D1169424(0, &qword_1EE06B080, sub_1D10898CC, MEMORY[0x1E69E6F90]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1D139E710;
  sub_1D138DB9C();
  v3 = sub_1D138DB7C();
  v5 = v4;
  v6 = MEMORY[0x1E69E6158];
  *(v2 + 56) = MEMORY[0x1E69E6158];
  v7 = sub_1D1089930();
  *(v2 + 32) = v3;
  *(v2 + 40) = v5;
  *(v2 + 96) = v6;
  *(v2 + 104) = v7;
  *(v2 + 64) = v7;
  *(v2 + 72) = 0xD00000000000001ALL;
  *(v2 + 80) = 0x80000001D13BF200;
  result = sub_1D139076C();
  if (v1 != 11)
  {
    v9 = result;
    sub_1D13911EC();

    strcpy(v23, "[UDCCategory:");
    HIWORD(v23[1]) = -4864;
    v10 = sub_1D13915CC();
    MEMORY[0x1D3885C10](v10);

    MEMORY[0x1D3885C10](93, 0xE100000000000000);
    v11 = v23[0];
    v12 = v23[1];
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1D139E710;
    v14 = sub_1D138DB7C();
    v15 = MEMORY[0x1E69E6158];
    *(v13 + 56) = MEMORY[0x1E69E6158];
    *(v13 + 64) = v7;
    *(v13 + 32) = v14;
    *(v13 + 40) = v16;
    *(v13 + 96) = v15;
    *(v13 + 104) = v7;
    *(v13 + 72) = v11;
    *(v13 + 80) = v12;
    v17 = sub_1D139076C();
    sub_1D1169488(0, &qword_1EE06A4C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1D139E6E0;
    *(v18 + 32) = v9;
    *(v18 + 40) = v17;
    v19 = v9;
    v20 = v17;
    v21 = sub_1D139044C();

    v22 = [objc_opt_self() andPredicateWithSubpredicates_];

    return v22;
  }

  return result;
}