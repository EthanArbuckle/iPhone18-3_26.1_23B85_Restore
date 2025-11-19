__n128 IARFInTextMeasurement.textRange.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t IARFInTextMeasurement.measurement.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  v7 = *(v1 + 56);
  *(a1 + 40) = v7;
  return sub_2442C60B8(v2, v3, v4, v5, v6, v7);
}

uint64_t sub_2442C60B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6 != -1)
  {
    return sub_2442C60D8(a4, a5, a6);
  }

  return result;
}

uint64_t sub_2442C60D8(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
  }

  return result;
}

uint64_t sub_2442C6104()
{
  v1 = *v0;
  sub_2443131A8();
  MEMORY[0x245D5EDF0](v1);
  return sub_2443131D8();
}

uint64_t sub_2442C6178()
{
  v1 = *v0;
  sub_2443131A8();
  MEMORY[0x245D5EDF0](v1);
  return sub_2443131D8();
}

uint64_t sub_2442C61BC()
{
  if (*v0)
  {
    result = 0x6D6572757361656DLL;
  }

  else
  {
    result = 0x676E615274786574;
  }

  *v0;
  return result;
}

uint64_t sub_2442C6204@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x676E615274786574 && a2 == 0xE900000000000065;
  if (v6 || (sub_244313108() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6D6572757361656DLL && a2 == 0xEB00000000746E65)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_244313108();

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

uint64_t sub_2442C6304(uint64_t a1)
{
  v2 = sub_2442C65F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2442C6340(uint64_t a1)
{
  v2 = sub_2442C65F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IARFInTextMeasurement.encode(to:)(void *a1)
{
  v3 = sub_2442C6564(&qword_27EDDE830, &qword_244313720);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v7 = &v15 - v6;
  v8 = *v1;
  v9 = *(v1 + 8);
  v10 = *(v1 + 16);
  v18 = *(v1 + 24);
  v19 = v10;
  v11 = *(v1 + 32);
  v16 = *(v1 + 40);
  v17 = v11;
  v15 = *(v1 + 48);
  v27 = *(v1 + 56);
  v12 = a1[4];
  sub_2442C65AC(a1, a1[3]);
  sub_2442C65F0();
  sub_244313238();
  v21 = v8;
  v22 = v9;
  v28 = 0;
  sub_2442C6644();
  v13 = v20;
  sub_2443130C8();
  if (!v13)
  {
    v21 = v19;
    v22 = v18;
    v23 = v17;
    v24 = v16;
    v25 = v15;
    v26 = v27;
    v28 = 1;
    sub_2442C60B8(v19, v18, v17, v16, v15, v27);
    sub_2442C6698();
    sub_244313088();
    sub_2442C66EC(v21, v22, v23, v24, v25, v26);
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_2442C6564(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void *sub_2442C65AC(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_2442C65F0()
{
  result = qword_27EDDE838;
  if (!qword_27EDDE838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDE838);
  }

  return result;
}

unint64_t sub_2442C6644()
{
  result = qword_27EDDE840;
  if (!qword_27EDDE840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDE840);
  }

  return result;
}

unint64_t sub_2442C6698()
{
  result = qword_27EDDE848;
  if (!qword_27EDDE848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDE848);
  }

  return result;
}

uint64_t sub_2442C66EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6 != -1)
  {
    return sub_2442C670C(a4, a5, a6);
  }

  return result;
}

uint64_t sub_2442C670C(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
  }

  return result;
}

uint64_t IARFInTextMeasurement.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_2442C6564(&qword_27EDDE850, &qword_244313728);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = v16 - v8;
  v10 = a1[4];
  sub_2442C65AC(a1, a1[3]);
  sub_2442C65F0();
  sub_244313228();
  if (!v2)
  {
    v19 = 0;
    sub_2442C6954();
    sub_244313038();
    v11 = v16[0];
    v19 = 1;
    sub_2442C69A8();
    sub_244312FF8();
    (*(v6 + 8))(v9, v5);
    v12 = v17;
    v13 = v18;
    *a2 = v11;
    v14 = v16[1];
    *(a2 + 16) = v16[0];
    *(a2 + 32) = v14;
    *(a2 + 48) = v12;
    *(a2 + 56) = v13;
  }

  return sub_2442C6908(a1);
}

uint64_t sub_2442C6908(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

unint64_t sub_2442C6954()
{
  result = qword_27EDDE858;
  if (!qword_27EDDE858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDE858);
  }

  return result;
}

unint64_t sub_2442C69A8()
{
  result = qword_27EDDE860;
  if (!qword_27EDDE860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDE860);
  }

  return result;
}

uint64_t sub_2442C6A38(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 > 3)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2442C6A4C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_2442C6A68(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 57))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 56);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = (v3 ^ 0xFF) - 1;
  }

  return (v4 + 1);
}

uint64_t sub_2442C6AB4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 56) = ~a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IARFInTextMeasurement.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for IARFInTextMeasurement.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2442C6C94()
{
  result = qword_27EDDE868;
  if (!qword_27EDDE868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDE868);
  }

  return result;
}

unint64_t sub_2442C6CEC()
{
  result = qword_27EDDE870;
  if (!qword_27EDDE870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDE870);
  }

  return result;
}

unint64_t sub_2442C6D44()
{
  result = qword_27EDDE878;
  if (!qword_27EDDE878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDE878);
  }

  return result;
}

uint64_t sub_2442C6D98@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  if (!*result)
  {
    *(a2 + 48) = 0;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
    *(a2 + 56) = -2;
    return result;
  }

  v4 = *(result + 8);
  v5 = *(result + 16);
  v6 = *(result + 24);
  result = Table.offset(_:)(6);
  if (result)
  {
    v7 = result + v6;
    if (__OFADD__(result, v6))
    {
LABEL_12:
      __break(1u);
      goto LABEL_13;
    }

    v8 = *(*(v3 + 24) + v7);
    v9 = v7 + v8;
    if (__OFADD__(v7, v8))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v10 = v3;
    v11 = v4;
    v12 = v5;
  }

  else
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v9 = 0;
  }

  v20[0] = v10;
  v20[1] = v11;
  v20[2] = v12;
  v21 = v9;
  sub_2442D31EC(v20, v22);
  v18 = v22[1];
  v19 = v22[0];
  v13 = v23;
  v14 = v24;
  result = Table.offset(_:)(4);
  if (__OFADD__(result, v6))
  {
    __break(1u);
    goto LABEL_12;
  }

  v15 = (*(v3 + 24) + result + v6);
  v16 = *v15;
  v17 = v15[1];

  *a2 = v16;
  *(a2 + 8) = v17;
  *(a2 + 16) = v19;
  *(a2 + 32) = v18;
  *(a2 + 48) = v13;
  *(a2 + 56) = v14;
  return result;
}

uint64_t IARFStep.totalTime.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  v6 = *(v1 + 32);
  *(a1 + 32) = v6;
  return sub_2442C6EFC(v2, v3, v4, v5, v6);
}

uint64_t sub_2442C6EFC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 != -1)
  {
    return sub_2442C6F14(result, a2, a3, a4, a5 & 1);
  }

  return result;
}

uint64_t sub_2442C6F14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {

    v5 = vars8;
  }
}

uint64_t sub_2442C6F78()
{
  v1 = 0x6569646572676E69;
  if (*v0 != 1)
  {
    v1 = 0x7370657453627573;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6D69546C61746F74;
  }
}

uint64_t sub_2442C6FE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2442C8F6C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2442C7014(uint64_t a1)
{
  v2 = sub_2442C734C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2442C7050(uint64_t a1)
{
  v2 = sub_2442C734C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IARFStep.encode(to:)(void *a1)
{
  v22 = sub_2442C6564(&qword_27EDDE880, &qword_2443139A0);
  v24 = *(v22 - 8);
  v3 = (*(v24 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v5 = &v18 - v4;
  v6 = *v1;
  v7 = *(v1 + 8);
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = *(v1 + 40);
  v19 = *(v1 + 48);
  v20 = v10;
  v11 = a1[3];
  v21 = a1[4];
  v12 = *(v1 + 32);
  sub_2442C65AC(a1, v11);
  sub_2442C6EFC(v6, v7, v8, v9, v12);
  sub_2442C734C();
  sub_244313238();
  v25 = v6;
  v26 = v7;
  v27 = v8;
  v28 = v9;
  v29 = v12;
  v13 = v22;
  v30 = 0;
  sub_2442C73A0();
  v14 = v23;
  sub_244313088();
  sub_2442C73F4(v25, v26, v27, v28, v29);
  if (v14)
  {
    return (*(v24 + 8))(v5, v13);
  }

  v16 = v19;
  v17 = v24;
  v25 = v20;
  v30 = 1;
  sub_2442C6564(&qword_27EDDE898, &qword_2443139A8);
  sub_2442C798C(&qword_27EDDE8A0, sub_2442C74A4);
  sub_2443130C8();
  v25 = v16;
  v30 = 2;
  sub_2442C6564(&qword_27EDDE8B0, &qword_2443139B0);
  sub_2442C74F8(&qword_27EDDE8B8, sub_2442C7570);
  sub_2443130C8();
  return (*(v17 + 8))(v5, v13);
}

unint64_t sub_2442C734C()
{
  result = qword_27EDDE888;
  if (!qword_27EDDE888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDE888);
  }

  return result;
}

unint64_t sub_2442C73A0()
{
  result = qword_27EDDE890;
  if (!qword_27EDDE890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDE890);
  }

  return result;
}

uint64_t sub_2442C73F4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 != -1)
  {
    return sub_2442C740C(result, a2, a3, a4, a5 & 1);
  }

  return result;
}

uint64_t sub_2442C740C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{

  if (a5)
  {
  }

  return result;
}

uint64_t sub_2442C745C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_2442C74A4()
{
  result = qword_27EDDE8A8;
  if (!qword_27EDDE8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDE8A8);
  }

  return result;
}

uint64_t sub_2442C74F8(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_2442C745C(&qword_27EDDE8B0, &qword_2443139B0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2442C7570()
{
  result = qword_27EDDE8C0;
  if (!qword_27EDDE8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDE8C0);
  }

  return result;
}

uint64_t IARFStep.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_2442C6564(&qword_27EDDE8C8, &qword_2443139B8);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v18 - v8;
  v10 = a1[4];
  sub_2442C65AC(a1, a1[3]);
  sub_2442C734C();
  sub_244313228();
  if (v2)
  {
    return sub_2442C6908(a1);
  }

  v29 = 0;
  sub_2442C7938();
  sub_244312FF8();
  v11 = v23;
  v20 = v24;
  v21 = v25;
  v22 = v26;
  v28 = v27;
  sub_2442C6564(&qword_27EDDE898, &qword_2443139A8);
  v29 = 1;
  sub_2442C798C(&qword_27EDDE8D8, sub_2442C7A04);
  sub_244313038();
  v19 = v23;
  sub_2442C6564(&qword_27EDDE8B0, &qword_2443139B0);
  v29 = 2;
  sub_2442C74F8(&qword_27EDDE8E8, sub_2442C7A58);
  sub_244313038();
  (*(v6 + 8))(v9, v5);
  v13 = v22;
  v12 = v23;
  v14 = v11;
  v16 = v20;
  v15 = v21;
  *a2 = v11;
  *(a2 + 8) = v16;
  *(a2 + 16) = v15;
  *(a2 + 24) = v13;
  LOBYTE(v11) = v28;
  *(a2 + 32) = v28;
  *(a2 + 40) = v19;
  *(a2 + 48) = v12;
  sub_2442C6EFC(v14, v16, v15, v13, v11);

  sub_2442C6908(a1);
  sub_2442C73F4(v14, v16, v15, v13, v11);
}

unint64_t sub_2442C7938()
{
  result = qword_27EDDE8D0;
  if (!qword_27EDDE8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDE8D0);
  }

  return result;
}

uint64_t sub_2442C798C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_2442C745C(&qword_27EDDE898, &qword_2443139A8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2442C7A04()
{
  result = qword_27EDDE8E0;
  if (!qword_27EDDE8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDE8E0);
  }

  return result;
}

unint64_t sub_2442C7A58()
{
  result = qword_27EDDE8F0;
  if (!qword_27EDDE8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDE8F0);
  }

  return result;
}

uint64_t sub_2442C7AE8(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

__n128 sub_2442C7AFC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_2442C7B18(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2442C7B60(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IARFStep.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for IARFStep.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2442C7D18()
{
  result = qword_27EDDE8F8;
  if (!qword_27EDDE8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDE8F8);
  }

  return result;
}

unint64_t sub_2442C7D70()
{
  result = qword_27EDDE900;
  if (!qword_27EDDE900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDE900);
  }

  return result;
}

unint64_t sub_2442C7DC8()
{
  result = qword_27EDDE908;
  if (!qword_27EDDE908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDE908);
  }

  return result;
}

double sub_2442C7E1C@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_2443130D8();
  MEMORY[0x245D5E950](v2);

  MEMORY[0x245D5E950](77, 0xE100000000000000);
  sub_2442C6564(&qword_27EDDE928, &qword_244313BF0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_244313970;
  sub_244300090(v3 + 32);
  sub_2442C6564(&qword_27EDDE930, &qword_244313BF8);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_244313970;
  sub_2442C6564(&qword_27EDDE938, &unk_244316490);
  v5 = swift_allocObject();
  v5[1] = xmmword_244313970;
  v5[2] = xmmword_244313980;
  *&result = 6;
  v5[3] = xmmword_244313990;
  *(v4 + 32) = 0xD000000000000039;
  *(v4 + 40) = 0x800000024431C170;
  v7 = MEMORY[0x277D84F90];
  *(v4 + 48) = MEMORY[0x277D84F90];
  *(v4 + 56) = v7;
  *(v4 + 64) = v5;
  *a1 = 21584;
  *(a1 + 8) = 0xE200000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = v3;
  *(a1 + 48) = v4;
  return result;
}

void sub_2442C7F88(uint64_t a1@<X8>)
{
  v2 = sub_2443130D8();
  MEMORY[0x245D5E950](v2);

  MEMORY[0x245D5E950](77, 0xE100000000000000);
  sub_2442C6564(&qword_27EDDE928, &qword_244313BF0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_244313970;
  sub_244300188((v3 + 32));
  sub_2442C6564(&qword_27EDDE930, &qword_244313BF8);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_244313970;
  sub_2442FBE14((v4 + 32));
  *a1 = 21584;
  *(a1 + 8) = 0xE200000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = v3;
  *(a1 + 48) = v4;
}

uint64_t sub_2442C8094@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v203 = sub_244312CC8();
  v4 = *(v203 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v203);
  v202 = &v193 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v6);
  v206 = &v193 - v9;
  v10 = *a1;
  if (!*a1)
  {
    *(a2 + 48) = 0;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
    return result;
  }

  v11 = a1[1];
  v12 = a1[2];
  v13 = *(a1 + 6);
  v14 = *a1;
  result = Table.offset(_:)(4);
  v212 = v11;
  if (!result)
  {
    goto LABEL_23;
  }

  if (__OFADD__(result, v13))
  {
LABEL_251:
    __break(1u);
    goto LABEL_252;
  }

  v15 = *(v10 + 24);
  v16 = *(v15 + result + v13);
  if (v16 != 2)
  {
    if (v16 == 1)
    {
      result = Table.offset(_:)(6);
      if (result)
      {
        v17 = result + v13;
        if (__OFADD__(result, v13))
        {
LABEL_252:
          __break(1u);
          goto LABEL_253;
        }

        v18 = *(v15 + v17);
        v19 = v17 + v18;
        if (__OFADD__(v17, v18))
        {
LABEL_254:
          __break(1u);
          goto LABEL_255;
        }

        result = Table.offset(_:)(4);
        if (result)
        {
          v20 = result + v19;
          if (__OFADD__(result, v19))
          {
LABEL_257:
            __break(1u);
            goto LABEL_258;
          }

          v21 = Table.directString(at:)(v20);
          countAndFlagsBits = v21.value._countAndFlagsBits;

          if (v21.value._object)
          {
            object = v21.value._object;
            v196 = 0;
            v197 = 0;
            v195 = 0;
LABEL_27:
            v11 = v212;
LABEL_28:
            *&v219 = v10;
            *(&v219 + 1) = v11;
            *&v220 = v12;
            DWORD2(v220) = v13;
            result = IARFFB_Step.ingredientsCount.getter();
            if ((result & 0x80000000) == 0)
            {
              v194 = a2;
              v218 = v10;
              v214 = v12;
              v215 = v13;
              if (result)
              {
                v30 = 0;
                v201 = (v4 + 16);
                v200 = (v4 + 8);
                v211 = MEMORY[0x277D84F90];
                v31 = v212;
                v204 = result;
                while (1)
                {
                  v37 = *(v10 + 24);
                  v38 = *(v37 + v13);
                  v64 = __OFSUB__(v13, v38);
                  v39 = v13 - v38;
                  if (v64)
                  {
                    break;
                  }

                  if (*(v37 + v39) >= 9u)
                  {
                    v64 = __OFADD__(v39, 8);
                    v40 = v39 + 8;
                    if (v64)
                    {
                      goto LABEL_212;
                    }

                    v41 = *(v37 + v40);
                    if (v41)
                    {
                      v64 = __OFADD__(v41, v13);
                      v42 = v41 + v13;
                      if (v64)
                      {
                        goto LABEL_219;
                      }

                      v43 = *(v37 + v42);
                      v64 = __OFADD__(v42, v43);
                      v44 = v42 + v43;
                      if (v64)
                      {
                        goto LABEL_220;
                      }

                      v64 = __OFADD__(v44, 4);
                      v45 = v44 + 4;
                      if (v64)
                      {
                        goto LABEL_221;
                      }

                      if ((v30 - 0x20000000) >> 30 != 3)
                      {
                        goto LABEL_222;
                      }

                      v64 = __OFADD__(v45, 4 * v30);
                      v46 = v45 + 4 * v30;
                      if (v64)
                      {
                        goto LABEL_223;
                      }

                      v47 = *(v37 + v46);
                      v48 = v46 + v47;
                      if (__OFADD__(v46, v47))
                      {
                        goto LABEL_224;
                      }

                      v49 = *(v37 + v48);
                      v64 = __OFSUB__(v48, v49);
                      v50 = v48 - v49;
                      if (v64)
                      {
                        goto LABEL_225;
                      }

                      if (*(v37 + v50) < 5u)
                      {
                        v52 = 0;
                      }

                      else
                      {
                        v64 = __OFADD__(v50, 4);
                        v51 = v50 + 4;
                        if (v64)
                        {
                          goto LABEL_241;
                        }

                        v52 = *(v37 + v51);
                      }

                      v53 = v52 + v48;
                      if (__OFADD__(v52, v48))
                      {
                        goto LABEL_226;
                      }

                      v210 = v30;

                      v54 = Table.directString(at:)(v53);
                      result = v54.value._countAndFlagsBits;
                      if (!v54.value._object)
                      {
                        goto LABEL_259;
                      }

                      v55 = *(v10 + 24);
                      v56 = *(v55 + v48);
                      v64 = __OFSUB__(v48, v56);
                      v57 = v48 - v56;
                      if (v64)
                      {
                        goto LABEL_227;
                      }

                      v58 = *(v55 + v57) >= 7u;
                      v209 = v54.value._object;
                      if (v58)
                      {
                        v64 = __OFADD__(v57, 6);
                        v59 = v57 + 6;
                        if (v64)
                        {
                          goto LABEL_242;
                        }

                        v60 = *(v55 + v59);
                      }

                      else
                      {
                        v60 = 0;
                      }

                      result = (v60 + v48);
                      if (__OFADD__(v60, v48))
                      {
                        goto LABEL_228;
                      }

                      v208 = v54.value._countAndFlagsBits;
                      v61 = Table.directString(at:)(result);
                      result = v61.value._countAndFlagsBits;
                      if (!v61.value._object)
                      {
                        goto LABEL_260;
                      }

                      v62 = *(v10 + 24);
                      v63 = *(v62 + v48);
                      v64 = __OFSUB__(v48, v63);
                      v65 = v48 - v63;
                      v66 = v64;
                      if (v64)
                      {
                        goto LABEL_229;
                      }

                      v67 = v61.value._countAndFlagsBits;
                      v207 = v61.value._object;
                      if (*(v62 + v65) < 9u)
                      {
                        goto LABEL_99;
                      }

                      if (__OFADD__(v65, 8))
                      {
                        goto LABEL_243;
                      }

                      v68 = *(v62 + v65 + 8);
                      if (*(v62 + v65 + 8))
                      {
                        v64 = __OFADD__(v68, v48);
                        v69 = v68 + v48;
                        if (v64)
                        {
                          goto LABEL_245;
                        }

                        v70 = *(v62 + v69);
                        v64 = __OFADD__(v69, v70);
                        v71 = v69 + v70;
                        if (v64)
                        {
                          goto LABEL_246;
                        }

                        v205 = v61.value._countAndFlagsBits;
                        v72 = *(v62 + v71);
                        if (v72 < 0)
                        {
                          goto LABEL_230;
                        }

                        if (v72)
                        {
                          v73 = 0;
                          v74 = -536870912;
                          v217 = MEMORY[0x277D84F90];
                          do
                          {
                            v78 = *(v10 + 24);
                            v79 = *(v78 + v48);
                            v64 = __OFSUB__(v48, v79);
                            v80 = v48 - v79;
                            if (v64)
                            {
                              __break(1u);
                              goto LABEL_188;
                            }

                            if (*(v78 + v80) >= 9u)
                            {
                              v64 = __OFADD__(v80, 8);
                              v81 = v80 + 8;
                              if (v64)
                              {
                                goto LABEL_191;
                              }

                              v82 = *(v78 + v81);
                              if (v82)
                              {
                                v64 = __OFADD__(v82, v48);
                                v83 = v82 + v48;
                                if (v64)
                                {
                                  goto LABEL_193;
                                }

                                v84 = *(v78 + v83);
                                v64 = __OFADD__(v83, v84);
                                v85 = v83 + v84;
                                if (v64)
                                {
                                  goto LABEL_194;
                                }

                                v64 = __OFADD__(v85, 4);
                                v86 = v85 + 4;
                                if (v64)
                                {
                                  goto LABEL_195;
                                }

                                if (v74 >> 30 != 3)
                                {
                                  goto LABEL_196;
                                }

                                v64 = __OFADD__(v86, v73);
                                v87 = v86 + v73;
                                if (v64)
                                {
                                  goto LABEL_197;
                                }

                                v88 = *(v78 + v87);
                                v89 = v87 + v88;
                                if (__OFADD__(v87, v88))
                                {
                                  goto LABEL_198;
                                }

                                v90 = *(v78 + v89);
                                v64 = __OFSUB__(v89, v90);
                                v91 = v89 - v90;
                                if (v64)
                                {
                                  goto LABEL_199;
                                }

                                if (*(v78 + v91) < 7u)
                                {
                                  goto LABEL_88;
                                }

                                v64 = __OFADD__(v91, 6);
                                v92 = v91 + 6;
                                if (v64)
                                {
                                  goto LABEL_233;
                                }

                                v93 = *(v78 + v92);
                                if (v93)
                                {
                                  v64 = __OFADD__(v93, v89);
                                  v94 = v93 + v89;
                                  if (v64)
                                  {
                                    goto LABEL_237;
                                  }

                                  v95 = *(v78 + v94);
                                  v96 = v94 + v95;
                                  if (__OFADD__(v94, v95))
                                  {
                                    goto LABEL_238;
                                  }

                                  v97 = v10;
                                  v98 = v212;
                                }

                                else
                                {
LABEL_88:
                                  v97 = 0;
                                  v98 = 0;
                                  v12 = 0;
                                  v96 = 0;
                                }

                                v223 = v97;
                                v224 = v98;
                                v225 = v12;
                                v226 = v96;

                                result = sub_2442D31EC(&v223, &v219);
                                v99 = *(v10 + 24);
                                v100 = *(v99 + v89);
                                v64 = __OFSUB__(v89, v100);
                                v101 = v89 - v100;
                                if (v64)
                                {
                                  goto LABEL_200;
                                }

                                v216 = v219;
                                v102 = v221;
                                v103 = v222;
                                if (*(v99 + v101) < 5u)
                                {
                                  v105 = 0;
                                }

                                else
                                {
                                  v64 = __OFADD__(v101, 4);
                                  v104 = v101 + 4;
                                  if (v64)
                                  {
                                    goto LABEL_234;
                                  }

                                  v105 = *(v99 + v104);
                                }

                                v64 = __OFADD__(v105, v89);
                                v106 = v105 + v89;
                                if (v64)
                                {
                                  goto LABEL_201;
                                }

                                v213 = v220;
                                v107 = (v99 + v106);
                                v108 = *v107;
                                v109 = v107[1];

                                result = swift_isUniquelyReferenced_nonNull_native();
                                if ((result & 1) == 0)
                                {
                                  result = sub_2442DBBD4(0, *(v217 + 2) + 1, 1, v217);
                                  v217 = result;
                                }

                                v111 = *(v217 + 2);
                                v110 = *(v217 + 3);
                                if (v111 >= v110 >> 1)
                                {
                                  result = sub_2442DBBD4((v110 > 1), v111 + 1, 1, v217);
                                  v217 = result;
                                }

                                v75 = v217;
                                *(v217 + 2) = v111 + 1;
                                v76 = &v75[64 * v111];
                                *(v76 + 4) = v108;
                                *(v76 + 5) = v109;
                                v77 = v213;
                                *(v76 + 3) = v216;
                                *(v76 + 4) = v77;
                                *(v76 + 10) = v102;
                                v76[88] = v103;
                                v10 = v218;
                                v12 = v214;
                              }
                            }

                            ++v74;
                            v73 += 4;
                            --v72;
                          }

                          while (v72);
                          v62 = *(v10 + 24);
                          v112 = *(v62 + v48);
                          v64 = __OFSUB__(v48, v112);
                          v65 = v48 - v112;
                          v66 = v64;
                        }

                        else
                        {
                          v217 = MEMORY[0x277D84F90];
                        }

                        v67 = v205;
                        if (v66)
                        {
                          goto LABEL_231;
                        }
                      }

                      else
                      {
LABEL_99:
                        v217 = MEMORY[0x277D84F90];
                        if (v66)
                        {
                          goto LABEL_231;
                        }
                      }

                      if (*(v62 + v65) >= 0xBu)
                      {
                        v64 = __OFADD__(v65, 10);
                        v113 = v65 + 10;
                        if (v64)
                        {
                          goto LABEL_244;
                        }

                        v114 = *(v62 + v113);
                        if (v114)
                        {
                          v64 = __OFADD__(v114, v48);
                          v115 = v114 + v48;
                          if (v64)
                          {
                            goto LABEL_247;
                          }

                          v116 = *(v62 + v115);
                          v64 = __OFADD__(v115, v116);
                          v117 = v115 + v116;
                          if (v64)
                          {
                            goto LABEL_248;
                          }

                          v118 = *(v62 + v117);
                          if (v118 < 0)
                          {
                            goto LABEL_232;
                          }

                          if (v118)
                          {
                            v119 = 0;
                            v120 = -536870912;
                            *&v216 = MEMORY[0x277D84F90];
                            v205 = v67;
                            while (1)
                            {
                              v123 = *(v10 + 24);
                              v124 = *(v123 + v48);
                              v64 = __OFSUB__(v48, v124);
                              v125 = v48 - v124;
                              if (v64)
                              {
                                break;
                              }

                              if (*(v123 + v125) >= 0xBu)
                              {
                                v64 = __OFADD__(v125, 10);
                                v126 = v125 + 10;
                                if (v64)
                                {
                                  goto LABEL_192;
                                }

                                v127 = *(v123 + v126);
                                if (v127)
                                {
                                  v64 = __OFADD__(v127, v48);
                                  v128 = v127 + v48;
                                  if (v64)
                                  {
                                    goto LABEL_202;
                                  }

                                  v129 = *(v123 + v128);
                                  v64 = __OFADD__(v128, v129);
                                  v130 = v128 + v129;
                                  if (v64)
                                  {
                                    goto LABEL_203;
                                  }

                                  v64 = __OFADD__(v130, 4);
                                  v131 = v130 + 4;
                                  if (v64)
                                  {
                                    goto LABEL_204;
                                  }

                                  if (v120 >> 30 != 3)
                                  {
                                    goto LABEL_205;
                                  }

                                  v64 = __OFADD__(v131, v119);
                                  v132 = v131 + v119;
                                  if (v64)
                                  {
                                    goto LABEL_206;
                                  }

                                  v133 = *(v123 + v132);
                                  v134 = v132 + v133;
                                  if (__OFADD__(v132, v133))
                                  {
                                    goto LABEL_207;
                                  }

                                  v135 = *(v123 + v134);
                                  v136 = v134 - v135;
                                  v137 = __OFSUB__(v134, v135);
                                  if (__OFSUB__(v134, v135))
                                  {
                                    goto LABEL_208;
                                  }

                                  if (*(v123 + v136) < 5u)
                                  {
                                    goto LABEL_138;
                                  }

                                  if (__OFADD__(v136, 4))
                                  {
                                    goto LABEL_235;
                                  }

                                  v138 = *(v123 + v136 + 4);
                                  if (*(v123 + v136 + 4))
                                  {
                                    v64 = __OFADD__(v138, v134);
                                    v139 = v138 + v134;
                                    if (v64)
                                    {
                                      goto LABEL_239;
                                    }

                                    v140 = *(v123 + v139);
                                    v64 = __OFADD__(v139, v140);
                                    v141 = v139 + v140;
                                    if (v64)
                                    {
                                      goto LABEL_240;
                                    }

                                    v142 = v141;
                                    v143 = *(v123 + v141);
                                    v144 = v218;

                                    sub_244312CB8();
                                    if (v143)
                                    {
                                      v145 = *(v144 + 24);
                                      if (v143 < 1)
                                      {
                                        v146 = MEMORY[0x277D84F90];
                                      }

                                      else
                                      {
                                        sub_2442C6564(&qword_27EDDE920, &qword_244316370);
                                        v146 = swift_allocObject();
                                        v147 = j__malloc_size(v146);
                                        v146[2] = v143;
                                        v146[3] = 2 * v147 - 64;
                                      }

                                      memcpy(v146 + 4, (v145 + v142 + 4), v143);
                                    }

                                    else
                                    {
                                      v146 = MEMORY[0x277D84F90];
                                    }

                                    *&v219 = v146;
                                    v149 = v206;
                                    v150 = v203;
                                    (*v201)(v202, v206, v203);
                                    sub_2442C6564(&qword_27EDDE910, &qword_244313BE8);
                                    sub_2442C90F4();
                                    *&v213 = sub_244312CA8();
                                    v148 = v151;
                                    (*v200)(v149, v150);

                                    v123 = *(v218 + 24);
                                    v152 = *(v123 + v134);
                                    v136 = v134 - v152;
                                    v153 = __OFSUB__(v134, v152);
                                    v67 = v205;
                                    if (v153)
                                    {
                                      goto LABEL_209;
                                    }
                                  }

                                  else
                                  {
LABEL_138:

                                    *&v213 = 0;
                                    v148 = 0;
                                    if (v137)
                                    {
                                      goto LABEL_209;
                                    }
                                  }

                                  if (*(v123 + v136) < 7u)
                                  {
                                    v154 = 0;
                                  }

                                  else
                                  {
                                    if (__OFADD__(v136, 6))
                                    {
                                      goto LABEL_236;
                                    }

                                    v154 = *(v123 + v136 + 6);
                                  }

                                  v64 = __OFADD__(v154, v134);
                                  v155 = v154 + v134;
                                  if (v64)
                                  {
                                    goto LABEL_210;
                                  }

                                  v156 = (v123 + v155);
                                  v157 = *v156;
                                  v158 = v156[1];

                                  result = swift_isUniquelyReferenced_nonNull_native();
                                  if ((result & 1) == 0)
                                  {
                                    result = sub_2442DBAC8(0, *(v216 + 16) + 1, 1, v216);
                                    *&v216 = result;
                                  }

                                  v160 = *(v216 + 16);
                                  v159 = *(v216 + 24);
                                  if (v160 >= v159 >> 1)
                                  {
                                    result = sub_2442DBAC8((v159 > 1), v160 + 1, 1, v216);
                                    *&v216 = result;
                                  }

                                  v121 = v216;
                                  *(v216 + 16) = v160 + 1;
                                  v122 = (v121 + 32 * v160);
                                  v122[4] = v213;
                                  v122[5] = v148;
                                  v122[6] = v157;
                                  v122[7] = v158;
                                  v10 = v218;
                                }
                              }

                              ++v120;
                              v119 += 4;
                              if (!--v118)
                              {
                                goto LABEL_157;
                              }
                            }

LABEL_188:
                            __break(1u);
                            goto LABEL_189;
                          }
                        }
                      }

                      *&v216 = MEMORY[0x277D84F90];
LABEL_157:

                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                      {
                        v211 = sub_2442DB9A8(0, *(v211 + 2) + 1, 1, v211);
                      }

                      v12 = v214;
                      LODWORD(v13) = v215;
                      v162 = *(v211 + 2);
                      v161 = *(v211 + 3);
                      result = v204;
                      v30 = v210;
                      if (v162 >= v161 >> 1)
                      {
                        v163 = sub_2442DB9A8((v161 > 1), v162 + 1, 1, v211);
                        v30 = v210;
                        v211 = v163;
                        result = v204;
                      }

                      v32 = v211;
                      *(v211 + 2) = v162 + 1;
                      v33 = &v32[48 * v162];
                      v34 = v209;
                      *(v33 + 4) = v208;
                      *(v33 + 5) = v34;
                      v35 = v207;
                      *(v33 + 6) = v67;
                      *(v33 + 7) = v35;
                      v36 = v216;
                      *(v33 + 8) = v217;
                      *(v33 + 9) = v36;
                      v31 = v212;
                    }
                  }

                  if (++v30 == result)
                  {
                    goto LABEL_162;
                  }
                }
              }

              else
              {
                v211 = MEMORY[0x277D84F90];
                v31 = v212;
LABEL_162:
                *&v219 = v10;
                *(&v219 + 1) = v31;
                *&v220 = v12;
                DWORD2(v220) = v13;
                result = IARFFB_Step.substepsCount.getter();
                if ((result & 0x80000000) != 0)
                {
                  goto LABEL_250;
                }

                v164 = result;
                if (!result)
                {
                  v166 = MEMORY[0x277D84F90];
LABEL_186:

                  v189 = v194;
                  v190 = object;
                  *v194 = countAndFlagsBits;
                  v189[1] = v190;
                  v191 = v197;
                  v189[2] = v196;
                  v189[3] = v191;
                  v192 = v211;
                  v189[4] = v195;
                  v189[5] = v192;
                  v189[6] = v166;
                  return result;
                }

                v165 = 0;
                v166 = MEMORY[0x277D84F90];
                v167 = -536870912;
                while (1)
                {
                  v168 = *(v10 + 24);
                  v169 = *(v168 + v13);
                  v64 = __OFSUB__(v13, v169);
                  v170 = v13 - v169;
                  if (v64)
                  {
                    break;
                  }

                  if (*(v168 + v170) < 0xBu)
                  {
                    goto LABEL_178;
                  }

                  v64 = __OFADD__(v170, 10);
                  v171 = v170 + 10;
                  if (v64)
                  {
                    goto LABEL_211;
                  }

                  v172 = *(v168 + v171);
                  if (v172)
                  {
                    v64 = __OFADD__(v172, v13);
                    v173 = v172 + v13;
                    if (v64)
                    {
                      goto LABEL_213;
                    }

                    v174 = *(v168 + v173);
                    v64 = __OFADD__(v173, v174);
                    v175 = v173 + v174;
                    if (v64)
                    {
                      goto LABEL_214;
                    }

                    v64 = __OFADD__(v175, 4);
                    v176 = v175 + 4;
                    if (v64)
                    {
                      goto LABEL_215;
                    }

                    if (v167 >> 30 != 3)
                    {
                      goto LABEL_216;
                    }

                    v64 = __OFADD__(v176, v165);
                    v177 = v176 + v165;
                    if (v64)
                    {
                      goto LABEL_217;
                    }

                    v178 = *(v168 + v177);
                    v179 = v177 + v178;
                    if (__OFADD__(v177, v178))
                    {
                      goto LABEL_218;
                    }

                    v180 = v212;
                    v181 = v214;
                  }

                  else
                  {
LABEL_178:
                    v10 = 0;
                    v180 = 0;
                    v181 = 0;
                    v179 = 0;
                  }

                  v223 = v10;
                  v224 = v180;
                  v225 = v181;
                  v226 = v179;
                  sub_2442FC130(&v223, &v219);
                  v182 = v219;
                  v183 = v220;
                  v184 = v221;
                  if (*(&v219 + 1))
                  {
                    result = swift_isUniquelyReferenced_nonNull_native();
                    if ((result & 1) == 0)
                    {
                      result = sub_2442DB888(0, *(v166 + 16) + 1, 1, v166);
                      v166 = result;
                    }

                    v186 = *(v166 + 16);
                    v185 = *(v166 + 24);
                    v187 = v166;
                    if (v186 >= v185 >> 1)
                    {
                      result = sub_2442DB888((v185 > 1), v186 + 1, 1, v166);
                      v187 = result;
                    }

                    *(v187 + 16) = v186 + 1;
                    v166 = v187;
                    v188 = v187 + 40 * v186;
                    *(v188 + 32) = v182;
                    *(v188 + 48) = v183;
                    *(v188 + 64) = v184;
                  }

                  else
                  {
                    result = sub_2442C9090(v219, 0);
                  }

                  ++v167;
                  v165 += 4;
                  --v164;
                  v10 = v218;
                  LODWORD(v13) = v215;
                  if (!v164)
                  {
                    goto LABEL_186;
                  }
                }

LABEL_189:
                __break(1u);
              }

              __break(1u);
LABEL_191:
              __break(1u);
LABEL_192:
              __break(1u);
LABEL_193:
              __break(1u);
LABEL_194:
              __break(1u);
LABEL_195:
              __break(1u);
LABEL_196:
              __break(1u);
LABEL_197:
              __break(1u);
LABEL_198:
              __break(1u);
LABEL_199:
              __break(1u);
LABEL_200:
              __break(1u);
LABEL_201:
              __break(1u);
LABEL_202:
              __break(1u);
LABEL_203:
              __break(1u);
LABEL_204:
              __break(1u);
LABEL_205:
              __break(1u);
LABEL_206:
              __break(1u);
LABEL_207:
              __break(1u);
LABEL_208:
              __break(1u);
LABEL_209:
              __break(1u);
LABEL_210:
              __break(1u);
LABEL_211:
              __break(1u);
LABEL_212:
              __break(1u);
LABEL_213:
              __break(1u);
LABEL_214:
              __break(1u);
LABEL_215:
              __break(1u);
LABEL_216:
              __break(1u);
LABEL_217:
              __break(1u);
LABEL_218:
              __break(1u);
LABEL_219:
              __break(1u);
LABEL_220:
              __break(1u);
LABEL_221:
              __break(1u);
LABEL_222:
              __break(1u);
LABEL_223:
              __break(1u);
LABEL_224:
              __break(1u);
LABEL_225:
              __break(1u);
LABEL_226:
              __break(1u);
LABEL_227:
              __break(1u);
LABEL_228:
              __break(1u);
LABEL_229:
              __break(1u);
LABEL_230:
              __break(1u);
LABEL_231:
              __break(1u);
LABEL_232:
              __break(1u);
LABEL_233:
              __break(1u);
LABEL_234:
              __break(1u);
LABEL_235:
              __break(1u);
LABEL_236:
              __break(1u);
LABEL_237:
              __break(1u);
LABEL_238:
              __break(1u);
LABEL_239:
              __break(1u);
LABEL_240:
              __break(1u);
LABEL_241:
              __break(1u);
LABEL_242:
              __break(1u);
LABEL_243:
              __break(1u);
LABEL_244:
              __break(1u);
LABEL_245:
              __break(1u);
LABEL_246:
              __break(1u);
LABEL_247:
              __break(1u);
LABEL_248:
              __break(1u);
            }

            __break(1u);
LABEL_250:
            __break(1u);
            goto LABEL_251;
          }
        }
      }
    }

    goto LABEL_25;
  }

  result = Table.offset(_:)(6);
  if (!result)
  {
LABEL_25:
    countAndFlagsBits = 0;
    object = 0;
    v196 = 0;
    v197 = 0;
    v29 = 255;
    goto LABEL_26;
  }

  v22 = result + v13;
  if (__OFADD__(result, v13))
  {
LABEL_253:
    __break(1u);
    goto LABEL_254;
  }

  v23 = *(v15 + v22);
  v24 = v22 + v23;
  if (__OFADD__(v22, v23))
  {
LABEL_255:
    __break(1u);
    goto LABEL_256;
  }

  v11 = v212;
  result = Table.offset(_:)(4);
  v25 = result + v24;
  if (__OFADD__(result, v24))
  {
LABEL_256:
    __break(1u);
    goto LABEL_257;
  }

  v26 = Table.directString(at:)(v25);
  object = v26.value._object;
  if (!v26.value._object)
  {

LABEL_23:
    countAndFlagsBits = 0;
    object = 0;
    v196 = 0;
    v197 = 0;
    v195 = 255;
    goto LABEL_28;
  }

  countAndFlagsBits = v26.value._countAndFlagsBits;
  v27 = Table.offset(_:)(6);
  v64 = __OFADD__(v27, v24);
  result = (v27 + v24);
  if (!v64)
  {
    v28 = Table.directString(at:)(result);

    v197 = v28.value._object;
    if (v28.value._object)
    {
      v196 = v28.value._countAndFlagsBits;
      v29 = 1;
LABEL_26:
      v195 = v29;
      goto LABEL_27;
    }

    goto LABEL_25;
  }

LABEL_258:
  __break(1u);
LABEL_259:
  __break(1u);
LABEL_260:
  __break(1u);
  return result;
}

uint64_t sub_2442C8F6C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D69546C61746F74 && a2 == 0xE900000000000065;
  if (v4 || (sub_244313108() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6569646572676E69 && a2 == 0xEB0000000073746ELL || (sub_244313108() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7370657453627573 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_244313108();

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

uint64_t sub_2442C9090(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_2442C90F4()
{
  result = qword_27EDDE918;
  if (!qword_27EDDE918)
  {
    sub_2442C745C(&qword_27EDDE910, &qword_244313BE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDE918);
  }

  return result;
}

uint64_t sub_2442C9170(char a1)
{
  result = 0x6574696C6167656DLL;
  switch(a1)
  {
    case 1:
      v3 = 1869375851;
      return v3 | 0x6574696C00000000;
    case 2:
      return 0x73726574696CLL;
    case 3:
      v3 = 1768121700;
      return v3 | 0x6574696C00000000;
    case 4:
      v4 = 1953391971;
      goto LABEL_18;
    case 5:
      v4 = 1819044205;
LABEL_18:
      result = v4 | 0x74696C6900000000;
      break;
    case 6:
      result = 0x6C694B6369627563;
      break;
    case 7:
      result = 0x74654D6369627563;
      break;
    case 8:
      result = 0x6365446369627563;
      break;
    case 9:
      result = 0xD000000000000010;
      break;
    case 10:
      result = 0xD000000000000010;
      break;
    case 11:
      result = 0x636E496369627563;
      break;
    case 12:
      result = 0x6565466369627563;
      break;
    case 13:
      result = 0x7261596369627563;
      break;
    case 14:
      result = 0x6C694D6369627563;
      break;
    case 15:
      result = 0x7465654665726361;
      break;
    case 16:
      result = 0x736C6568737562;
      break;
    case 17:
      result = 0x6E6F6F7073616574;
      break;
    case 18:
      result = 0x6F7073656C626174;
      break;
    case 19:
      result = 0x6E754F6469756C66;
      break;
    case 20:
      result = 1936749923;
      break;
    case 21:
      result = 0x73746E6970;
      break;
    case 22:
      result = 0x737472617571;
      break;
    case 23:
      result = 0x736E6F6C6C6167;
      break;
    case 24:
      result = 0xD000000000000011;
      break;
    case 25:
    case 26:
      result = 0xD000000000000013;
      break;
    case 27:
    case 28:
    case 29:
      result = 0x6C61697265706D69;
      break;
    case 30:
      result = 0x754363697274656DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2442C9530(uint64_t a1)
{
  v2 = sub_2442CC650();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2442C956C(uint64_t a1)
{
  v2 = sub_2442CC650();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2442C95A8@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_2442C95E4(uint64_t a1)
{
  v2 = sub_2442CC5FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2442C9620(uint64_t a1)
{
  v2 = sub_2442CC5FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2442C965C(uint64_t a1)
{
  v2 = sub_2442CC9EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2442C9698(uint64_t a1)
{
  v2 = sub_2442CC9EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2442C96E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2442D083C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2442C9718(uint64_t a1)
{
  v2 = sub_2442CC110();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2442C9754(uint64_t a1)
{
  v2 = sub_2442CC110();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2442C9790(uint64_t a1)
{
  v2 = sub_2442CC848();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2442C97CC(uint64_t a1)
{
  v2 = sub_2442CC848();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2442C9808(uint64_t a1)
{
  v2 = sub_2442CC89C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2442C9844(uint64_t a1)
{
  v2 = sub_2442CC89C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2442C9880(uint64_t a1)
{
  v2 = sub_2442CC74C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2442C98BC(uint64_t a1)
{
  v2 = sub_2442CC74C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2442C98F8(uint64_t a1)
{
  v2 = sub_2442CC7A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2442C9934(uint64_t a1)
{
  v2 = sub_2442CC7A0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2442C9970(uint64_t a1)
{
  v2 = sub_2442CC944();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2442C99AC(uint64_t a1)
{
  v2 = sub_2442CC944();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2442C99E8(uint64_t a1)
{
  v2 = sub_2442CC8F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2442C9A24(uint64_t a1)
{
  v2 = sub_2442CC8F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2442C9A60(uint64_t a1)
{
  v2 = sub_2442CC6A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2442C9A9C(uint64_t a1)
{
  v2 = sub_2442CC6A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2442C9AD8(uint64_t a1)
{
  v2 = sub_2442CC7F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2442C9B14(uint64_t a1)
{
  v2 = sub_2442CC7F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2442C9B50(uint64_t a1)
{
  v2 = sub_2442CC6F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2442C9B8C(uint64_t a1)
{
  v2 = sub_2442CC6F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2442C9BC8(uint64_t a1)
{
  v2 = sub_2442CC4AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2442C9C04(uint64_t a1)
{
  v2 = sub_2442CC4AC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2442C9C40(uint64_t a1)
{
  v2 = sub_2442CCA40();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2442C9C7C(uint64_t a1)
{
  v2 = sub_2442CCA40();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2442C9CB8(uint64_t a1)
{
  v2 = sub_2442CC500();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2442C9CF4(uint64_t a1)
{
  v2 = sub_2442CC500();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2442C9D30(uint64_t a1)
{
  v2 = sub_2442CC3B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2442C9D6C(uint64_t a1)
{
  v2 = sub_2442CC3B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2442C9DA8(uint64_t a1)
{
  v2 = sub_2442CC2B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2442C9DE4(uint64_t a1)
{
  v2 = sub_2442CC2B4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2442C9E20(uint64_t a1)
{
  v2 = sub_2442CC1B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2442C9E5C(uint64_t a1)
{
  v2 = sub_2442CC1B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2442C9E98(uint64_t a1)
{
  v2 = sub_2442CC260();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2442C9ED4(uint64_t a1)
{
  v2 = sub_2442CC260();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2442C9F10(uint64_t a1)
{
  v2 = sub_2442CC20C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2442C9F4C(uint64_t a1)
{
  v2 = sub_2442CC20C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2442C9F88(uint64_t a1)
{
  v2 = sub_2442CC308();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2442C9FC4(uint64_t a1)
{
  v2 = sub_2442CC308();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2442CA000(uint64_t a1)
{
  v2 = sub_2442CC35C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2442CA03C(uint64_t a1)
{
  v2 = sub_2442CC35C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2442CA078(uint64_t a1)
{
  v2 = sub_2442CCAE8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2442CA0B4(uint64_t a1)
{
  v2 = sub_2442CCAE8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2442CA0F0(uint64_t a1)
{
  v2 = sub_2442CCA94();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2442CA12C(uint64_t a1)
{
  v2 = sub_2442CCA94();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2442CA168(uint64_t a1)
{
  v2 = sub_2442CCB3C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2442CA1A4(uint64_t a1)
{
  v2 = sub_2442CCB3C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2442CA1E0(uint64_t a1)
{
  v2 = sub_2442CC164();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2442CA21C(uint64_t a1)
{
  v2 = sub_2442CC164();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2442CA258(uint64_t a1)
{
  v2 = sub_2442CC998();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2442CA294(uint64_t a1)
{
  v2 = sub_2442CC998();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2442CA2D0(uint64_t a1)
{
  v2 = sub_2442CC458();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2442CA30C(uint64_t a1)
{
  v2 = sub_2442CC458();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2442CA348(uint64_t a1)
{
  v2 = sub_2442CC404();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2442CA384(uint64_t a1)
{
  v2 = sub_2442CC404();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2442CA3C0(uint64_t a1)
{
  v2 = sub_2442CC554();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2442CA3FC(uint64_t a1)
{
  v2 = sub_2442CC554();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2442CA438(uint64_t a1)
{
  v2 = sub_2442CC5A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2442CA474(uint64_t a1)
{
  v2 = sub_2442CC5A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IARFVolumeUnit.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_2442C6564(&qword_27EDDE940, &qword_244313C00);
  v199 = *(v4 - 8);
  v200 = v4;
  v5 = (*(v199 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v198 = &v111 - v6;
  v7 = sub_2442C6564(&qword_27EDDE948, &qword_244313C08);
  v196 = *(v7 - 8);
  v197 = v7;
  v8 = (*(v196 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v195 = &v111 - v9;
  v10 = sub_2442C6564(&qword_27EDDE950, &qword_244313C10);
  v193 = *(v10 - 8);
  v194 = v10;
  v11 = (*(v193 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v192 = &v111 - v12;
  v13 = sub_2442C6564(&qword_27EDDE958, &qword_244313C18);
  v190 = *(v13 - 8);
  v191 = v13;
  v14 = (*(v190 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v189 = &v111 - v15;
  v16 = sub_2442C6564(&qword_27EDDE960, &qword_244313C20);
  v187 = *(v16 - 8);
  v188 = v16;
  v17 = (*(v187 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v186 = &v111 - v18;
  v19 = sub_2442C6564(&qword_27EDDE968, &qword_244313C28);
  v184 = *(v19 - 8);
  v185 = v19;
  v20 = (*(v184 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v183 = &v111 - v21;
  v182 = sub_2442C6564(&qword_27EDDE970, &qword_244313C30);
  v181 = *(v182 - 8);
  v22 = (*(v181 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v180 = &v111 - v23;
  v179 = sub_2442C6564(&qword_27EDDE978, &qword_244313C38);
  v178 = *(v179 - 8);
  v24 = (*(v178 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v177 = &v111 - v25;
  v176 = sub_2442C6564(&qword_27EDDE980, &qword_244313C40);
  v175 = *(v176 - 8);
  v26 = (*(v175 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v174 = &v111 - v27;
  v173 = sub_2442C6564(&qword_27EDDE988, &qword_244313C48);
  v172 = *(v173 - 8);
  v28 = (*(v172 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v171 = &v111 - v29;
  v170 = sub_2442C6564(&qword_27EDDE990, &qword_244313C50);
  v169 = *(v170 - 8);
  v30 = (*(v169 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v168 = &v111 - v31;
  v167 = sub_2442C6564(&qword_27EDDE998, &qword_244313C58);
  v166 = *(v167 - 8);
  v32 = (*(v166 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v165 = &v111 - v33;
  v164 = sub_2442C6564(&qword_27EDDE9A0, &qword_244313C60);
  v163 = *(v164 - 8);
  v34 = (*(v163 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v162 = &v111 - v35;
  v161 = sub_2442C6564(&qword_27EDDE9A8, &qword_244313C68);
  v160 = *(v161 - 8);
  v36 = (*(v160 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v159 = &v111 - v37;
  v158 = sub_2442C6564(&qword_27EDDE9B0, &qword_244313C70);
  v157 = *(v158 - 8);
  v38 = (*(v157 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v156 = &v111 - v39;
  v155 = sub_2442C6564(&qword_27EDDE9B8, &qword_244313C78);
  v154 = *(v155 - 8);
  v40 = (*(v154 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v153 = &v111 - v41;
  v152 = sub_2442C6564(&qword_27EDDE9C0, &qword_244313C80);
  v151 = *(v152 - 8);
  v42 = (*(v151 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v150 = &v111 - v43;
  v149 = sub_2442C6564(&qword_27EDDE9C8, &qword_244313C88);
  v148 = *(v149 - 8);
  v44 = (*(v148 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v147 = &v111 - v45;
  v146 = sub_2442C6564(&qword_27EDDE9D0, &qword_244313C90);
  v145 = *(v146 - 8);
  v46 = (*(v145 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v144 = &v111 - v47;
  v143 = sub_2442C6564(&qword_27EDDE9D8, &qword_244313C98);
  v142 = *(v143 - 8);
  v48 = (*(v142 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v141 = &v111 - v49;
  v140 = sub_2442C6564(&qword_27EDDE9E0, &qword_244313CA0);
  v139 = *(v140 - 8);
  v50 = (*(v139 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v138 = &v111 - v51;
  v137 = sub_2442C6564(&qword_27EDDE9E8, &qword_244313CA8);
  v136 = *(v137 - 8);
  v52 = (*(v136 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v135 = &v111 - v53;
  v134 = sub_2442C6564(&qword_27EDDE9F0, &qword_244313CB0);
  v133 = *(v134 - 8);
  v54 = (*(v133 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v132 = &v111 - v55;
  v131 = sub_2442C6564(&qword_27EDDE9F8, &qword_244313CB8);
  v130 = *(v131 - 8);
  v56 = (*(v130 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v129 = &v111 - v57;
  v128 = sub_2442C6564(&qword_27EDDEA00, &qword_244313CC0);
  v127 = *(v128 - 8);
  v58 = (*(v127 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v126 = &v111 - v59;
  v125 = sub_2442C6564(&qword_27EDDEA08, &qword_244313CC8);
  v124 = *(v125 - 8);
  v60 = (*(v124 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v123 = &v111 - v61;
  v122 = sub_2442C6564(&qword_27EDDEA10, &qword_244313CD0);
  v121 = *(v122 - 8);
  v62 = (*(v121 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v120 = &v111 - v63;
  v119 = sub_2442C6564(&qword_27EDDEA18, &qword_244313CD8);
  v118 = *(v119 - 8);
  v64 = (*(v118 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v117 = &v111 - v65;
  v116 = sub_2442C6564(&qword_27EDDEA20, &qword_244313CE0);
  v115 = *(v116 - 8);
  v66 = (*(v115 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v114 = &v111 - v67;
  v113 = sub_2442C6564(&qword_27EDDEA28, &qword_244313CE8);
  v112 = *(v113 - 8);
  v68 = (*(v112 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v70 = &v111 - v69;
  v71 = sub_2442C6564(&qword_27EDDEA30, &qword_244313CF0);
  v111 = *(v71 - 8);
  v72 = (*(v111 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v74 = &v111 - v73;
  v202 = sub_2442C6564(&qword_27EDDEA38, &qword_244313CF8);
  v75 = *(v202 - 8);
  v76 = (*(v75 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v78 = &v111 - v77;
  v79 = *v2;
  v80 = a1[4];
  sub_2442C65AC(a1, a1[3]);
  sub_2442CC110();
  v201 = v78;
  sub_244313238();
  v81 = (v75 + 8);
  switch(v79)
  {
    case 1:
      v203 = 1;
      sub_2442CCAE8();
      v83 = v201;
      v82 = v202;
      sub_244313058();
      (*(v112 + 8))(v70, v113);
      return (*v81)(v83, v82);
    case 2:
      v203 = 2;
      sub_2442CCA94();
      v94 = v114;
      v83 = v201;
      v82 = v202;
      sub_244313058();
      (*(v115 + 8))(v94, v116);
      return (*v81)(v83, v82);
    case 3:
      v203 = 3;
      sub_2442CCA40();
      v96 = v117;
      v83 = v201;
      v82 = v202;
      sub_244313058();
      (*(v118 + 8))(v96, v119);
      return (*v81)(v83, v82);
    case 4:
      v203 = 4;
      sub_2442CC9EC();
      v90 = v120;
      v83 = v201;
      v82 = v202;
      sub_244313058();
      (*(v121 + 8))(v90, v122);
      return (*v81)(v83, v82);
    case 5:
      v203 = 5;
      sub_2442CC998();
      v100 = v123;
      v83 = v201;
      v82 = v202;
      sub_244313058();
      (*(v124 + 8))(v100, v125);
      return (*v81)(v83, v82);
    case 6:
      v203 = 6;
      sub_2442CC944();
      v103 = v126;
      v83 = v201;
      v82 = v202;
      sub_244313058();
      (*(v127 + 8))(v103, v128);
      return (*v81)(v83, v82);
    case 7:
      v203 = 7;
      sub_2442CC8F0();
      v97 = v129;
      v83 = v201;
      v82 = v202;
      sub_244313058();
      (*(v130 + 8))(v97, v131);
      return (*v81)(v83, v82);
    case 8:
      v203 = 8;
      sub_2442CC89C();
      v106 = v132;
      v83 = v201;
      v82 = v202;
      sub_244313058();
      (*(v133 + 8))(v106, v134);
      return (*v81)(v83, v82);
    case 9:
      v203 = 9;
      sub_2442CC848();
      v92 = v135;
      v83 = v201;
      v82 = v202;
      sub_244313058();
      (*(v136 + 8))(v92, v137);
      return (*v81)(v83, v82);
    case 10:
      v203 = 10;
      sub_2442CC7F4();
      v105 = v138;
      v83 = v201;
      v82 = v202;
      sub_244313058();
      (*(v139 + 8))(v105, v140);
      return (*v81)(v83, v82);
    case 11:
      v203 = 11;
      sub_2442CC7A0();
      v89 = v141;
      v83 = v201;
      v82 = v202;
      sub_244313058();
      (*(v142 + 8))(v89, v143);
      return (*v81)(v83, v82);
    case 12:
      v203 = 12;
      sub_2442CC74C();
      v91 = v144;
      v83 = v201;
      v82 = v202;
      sub_244313058();
      (*(v145 + 8))(v91, v146);
      return (*v81)(v83, v82);
    case 13:
      v203 = 13;
      sub_2442CC6F8();
      v102 = v147;
      v83 = v201;
      v82 = v202;
      sub_244313058();
      (*(v148 + 8))(v102, v149);
      return (*v81)(v83, v82);
    case 14:
      v203 = 14;
      sub_2442CC6A4();
      v88 = v150;
      v83 = v201;
      v82 = v202;
      sub_244313058();
      (*(v151 + 8))(v88, v152);
      return (*v81)(v83, v82);
    case 15:
      v203 = 15;
      sub_2442CC650();
      v95 = v153;
      v83 = v201;
      v82 = v202;
      sub_244313058();
      (*(v154 + 8))(v95, v155);
      return (*v81)(v83, v82);
    case 16:
      v203 = 16;
      sub_2442CC5FC();
      v87 = v156;
      v83 = v201;
      v82 = v202;
      sub_244313058();
      (*(v157 + 8))(v87, v158);
      return (*v81)(v83, v82);
    case 17:
      v203 = 17;
      sub_2442CC5A8();
      v98 = v159;
      v83 = v201;
      v82 = v202;
      sub_244313058();
      (*(v160 + 8))(v98, v161);
      return (*v81)(v83, v82);
    case 18:
      v203 = 18;
      sub_2442CC554();
      v104 = v162;
      v83 = v201;
      v82 = v202;
      sub_244313058();
      (*(v163 + 8))(v104, v164);
      return (*v81)(v83, v82);
    case 19:
      v203 = 19;
      sub_2442CC500();
      v108 = v165;
      v83 = v201;
      v82 = v202;
      sub_244313058();
      (*(v166 + 8))(v108, v167);
      return (*v81)(v83, v82);
    case 20:
      v203 = 20;
      sub_2442CC4AC();
      v99 = v168;
      v83 = v201;
      v82 = v202;
      sub_244313058();
      (*(v169 + 8))(v99, v170);
      return (*v81)(v83, v82);
    case 21:
      v203 = 21;
      sub_2442CC458();
      v101 = v171;
      v83 = v201;
      v82 = v202;
      sub_244313058();
      (*(v172 + 8))(v101, v173);
      return (*v81)(v83, v82);
    case 22:
      v203 = 22;
      sub_2442CC404();
      v107 = v174;
      v83 = v201;
      v82 = v202;
      sub_244313058();
      (*(v175 + 8))(v107, v176);
      return (*v81)(v83, v82);
    case 23:
      v203 = 23;
      sub_2442CC3B0();
      v109 = v177;
      v83 = v201;
      v82 = v202;
      sub_244313058();
      (*(v178 + 8))(v109, v179);
      return (*v81)(v83, v82);
    case 24:
      v203 = 24;
      sub_2442CC35C();
      v93 = v180;
      v83 = v201;
      v82 = v202;
      sub_244313058();
      (*(v181 + 8))(v93, v182);
      return (*v81)(v83, v82);
    case 25:
      v203 = 25;
      sub_2442CC308();
      v84 = v183;
      v83 = v201;
      v82 = v202;
      sub_244313058();
      v86 = v184;
      v85 = v185;
      goto LABEL_33;
    case 26:
      v203 = 26;
      sub_2442CC2B4();
      v84 = v186;
      v83 = v201;
      v82 = v202;
      sub_244313058();
      v86 = v187;
      v85 = v188;
      goto LABEL_33;
    case 27:
      v203 = 27;
      sub_2442CC260();
      v84 = v189;
      v83 = v201;
      v82 = v202;
      sub_244313058();
      v86 = v190;
      v85 = v191;
      goto LABEL_33;
    case 28:
      v203 = 28;
      sub_2442CC20C();
      v84 = v192;
      v83 = v201;
      v82 = v202;
      sub_244313058();
      v86 = v193;
      v85 = v194;
      goto LABEL_33;
    case 29:
      v203 = 29;
      sub_2442CC1B8();
      v84 = v195;
      v83 = v201;
      v82 = v202;
      sub_244313058();
      v86 = v196;
      v85 = v197;
      goto LABEL_33;
    case 30:
      v203 = 30;
      sub_2442CC164();
      v84 = v198;
      v83 = v201;
      v82 = v202;
      sub_244313058();
      v86 = v199;
      v85 = v200;
LABEL_33:
      (*(v86 + 8))(v84, v85);
      break;
    default:
      v203 = 0;
      sub_2442CCB3C();
      v83 = v201;
      v82 = v202;
      sub_244313058();
      (*(v111 + 8))(v74, v71);
      break;
  }

  return (*v81)(v83, v82);
}

unint64_t sub_2442CC110()
{
  result = qword_27EDDEA40;
  if (!qword_27EDDEA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEA40);
  }

  return result;
}

unint64_t sub_2442CC164()
{
  result = qword_27EDDEA48;
  if (!qword_27EDDEA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEA48);
  }

  return result;
}

unint64_t sub_2442CC1B8()
{
  result = qword_27EDDEA50;
  if (!qword_27EDDEA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEA50);
  }

  return result;
}

unint64_t sub_2442CC20C()
{
  result = qword_27EDDEA58;
  if (!qword_27EDDEA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEA58);
  }

  return result;
}

unint64_t sub_2442CC260()
{
  result = qword_27EDDEA60;
  if (!qword_27EDDEA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEA60);
  }

  return result;
}

unint64_t sub_2442CC2B4()
{
  result = qword_27EDDEA68;
  if (!qword_27EDDEA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEA68);
  }

  return result;
}

unint64_t sub_2442CC308()
{
  result = qword_27EDDEA70;
  if (!qword_27EDDEA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEA70);
  }

  return result;
}

unint64_t sub_2442CC35C()
{
  result = qword_27EDDEA78;
  if (!qword_27EDDEA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEA78);
  }

  return result;
}

unint64_t sub_2442CC3B0()
{
  result = qword_27EDDEA80;
  if (!qword_27EDDEA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEA80);
  }

  return result;
}

unint64_t sub_2442CC404()
{
  result = qword_27EDDEA88;
  if (!qword_27EDDEA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEA88);
  }

  return result;
}

unint64_t sub_2442CC458()
{
  result = qword_27EDDEA90;
  if (!qword_27EDDEA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEA90);
  }

  return result;
}

unint64_t sub_2442CC4AC()
{
  result = qword_27EDDEA98;
  if (!qword_27EDDEA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEA98);
  }

  return result;
}

unint64_t sub_2442CC500()
{
  result = qword_27EDDEAA0;
  if (!qword_27EDDEAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEAA0);
  }

  return result;
}

unint64_t sub_2442CC554()
{
  result = qword_27EDDEAA8;
  if (!qword_27EDDEAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEAA8);
  }

  return result;
}

unint64_t sub_2442CC5A8()
{
  result = qword_27EDDEAB0;
  if (!qword_27EDDEAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEAB0);
  }

  return result;
}

unint64_t sub_2442CC5FC()
{
  result = qword_27EDDEAB8;
  if (!qword_27EDDEAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEAB8);
  }

  return result;
}

unint64_t sub_2442CC650()
{
  result = qword_27EDDEAC0;
  if (!qword_27EDDEAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEAC0);
  }

  return result;
}

unint64_t sub_2442CC6A4()
{
  result = qword_27EDDEAC8;
  if (!qword_27EDDEAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEAC8);
  }

  return result;
}

unint64_t sub_2442CC6F8()
{
  result = qword_27EDDEAD0;
  if (!qword_27EDDEAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEAD0);
  }

  return result;
}

unint64_t sub_2442CC74C()
{
  result = qword_27EDDEAD8;
  if (!qword_27EDDEAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEAD8);
  }

  return result;
}

unint64_t sub_2442CC7A0()
{
  result = qword_27EDDEAE0;
  if (!qword_27EDDEAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEAE0);
  }

  return result;
}

unint64_t sub_2442CC7F4()
{
  result = qword_27EDDEAE8;
  if (!qword_27EDDEAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEAE8);
  }

  return result;
}

unint64_t sub_2442CC848()
{
  result = qword_27EDDEAF0;
  if (!qword_27EDDEAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEAF0);
  }

  return result;
}

unint64_t sub_2442CC89C()
{
  result = qword_27EDDEAF8;
  if (!qword_27EDDEAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEAF8);
  }

  return result;
}

unint64_t sub_2442CC8F0()
{
  result = qword_27EDDEB00;
  if (!qword_27EDDEB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEB00);
  }

  return result;
}

unint64_t sub_2442CC944()
{
  result = qword_27EDDEB08;
  if (!qword_27EDDEB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEB08);
  }

  return result;
}

unint64_t sub_2442CC998()
{
  result = qword_27EDDEB10;
  if (!qword_27EDDEB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEB10);
  }

  return result;
}

unint64_t sub_2442CC9EC()
{
  result = qword_27EDDEB18;
  if (!qword_27EDDEB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEB18);
  }

  return result;
}

unint64_t sub_2442CCA40()
{
  result = qword_27EDDEB20;
  if (!qword_27EDDEB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEB20);
  }

  return result;
}

unint64_t sub_2442CCA94()
{
  result = qword_27EDDEB28;
  if (!qword_27EDDEB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEB28);
  }

  return result;
}

unint64_t sub_2442CCAE8()
{
  result = qword_27EDDEB30;
  if (!qword_27EDDEB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEB30);
  }

  return result;
}

unint64_t sub_2442CCB3C()
{
  result = qword_27EDDEB38;
  if (!qword_27EDDEB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEB38);
  }

  return result;
}

uint64_t IARFVolumeUnit.hashValue.getter()
{
  v1 = *v0;
  sub_2443131A8();
  MEMORY[0x245D5EDF0](v1);
  return sub_2443131D8();
}

uint64_t IARFVolumeUnit.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v247 = a2;
  v246 = sub_2442C6564(&qword_27EDDEB40, &qword_244313D00);
  v216 = *(v246 - 8);
  v3 = (*(v216 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v242 = &v151 - v4;
  v215 = sub_2442C6564(&qword_27EDDEB48, &qword_244313D08);
  v214 = *(v215 - 8);
  v5 = (*(v214 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v241 = &v151 - v6;
  v213 = sub_2442C6564(&qword_27EDDEB50, &qword_244313D10);
  v212 = *(v213 - 8);
  v7 = (*(v212 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v240 = &v151 - v8;
  v211 = sub_2442C6564(&qword_27EDDEB58, &qword_244313D18);
  v210 = *(v211 - 8);
  v9 = (*(v210 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v239 = &v151 - v10;
  v209 = sub_2442C6564(&qword_27EDDEB60, &qword_244313D20);
  v208 = *(v209 - 8);
  v11 = (*(v208 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v238 = &v151 - v12;
  v207 = sub_2442C6564(&qword_27EDDEB68, &qword_244313D28);
  v206 = *(v207 - 8);
  v13 = (*(v206 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v237 = &v151 - v14;
  v205 = sub_2442C6564(&qword_27EDDEB70, &qword_244313D30);
  v204 = *(v205 - 8);
  v15 = (*(v204 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v236 = &v151 - v16;
  v203 = sub_2442C6564(&qword_27EDDEB78, &qword_244313D38);
  v202 = *(v203 - 8);
  v17 = (*(v202 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v235 = &v151 - v18;
  v201 = sub_2442C6564(&qword_27EDDEB80, &qword_244313D40);
  v200 = *(v201 - 8);
  v19 = (*(v200 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v234 = &v151 - v20;
  v199 = sub_2442C6564(&qword_27EDDEB88, &qword_244313D48);
  v198 = *(v199 - 8);
  v21 = (*(v198 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v233 = &v151 - v22;
  v197 = sub_2442C6564(&qword_27EDDEB90, &qword_244313D50);
  v196 = *(v197 - 8);
  v23 = (*(v196 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v232 = &v151 - v24;
  v195 = sub_2442C6564(&qword_27EDDEB98, &qword_244313D58);
  v194 = *(v195 - 8);
  v25 = (*(v194 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v231 = &v151 - v26;
  v193 = sub_2442C6564(&qword_27EDDEBA0, &qword_244313D60);
  v192 = *(v193 - 8);
  v27 = (*(v192 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v230 = &v151 - v28;
  v191 = sub_2442C6564(&qword_27EDDEBA8, &qword_244313D68);
  v190 = *(v191 - 8);
  v29 = (*(v190 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v229 = &v151 - v30;
  v189 = sub_2442C6564(&qword_27EDDEBB0, &qword_244313D70);
  v188 = *(v189 - 8);
  v31 = (*(v188 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v228 = &v151 - v32;
  v187 = sub_2442C6564(&qword_27EDDEBB8, &qword_244313D78);
  v186 = *(v187 - 8);
  v33 = (*(v186 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v227 = &v151 - v34;
  v185 = sub_2442C6564(&qword_27EDDEBC0, &qword_244313D80);
  v184 = *(v185 - 8);
  v35 = (*(v184 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v226 = &v151 - v36;
  v183 = sub_2442C6564(&qword_27EDDEBC8, &qword_244313D88);
  v182 = *(v183 - 8);
  v37 = (*(v182 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v225 = &v151 - v38;
  v181 = sub_2442C6564(&qword_27EDDEBD0, &qword_244313D90);
  v180 = *(v181 - 8);
  v39 = (*(v180 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v224 = &v151 - v40;
  v179 = sub_2442C6564(&qword_27EDDEBD8, &qword_244313D98);
  v178 = *(v179 - 8);
  v41 = (*(v178 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v223 = &v151 - v42;
  v177 = sub_2442C6564(&qword_27EDDEBE0, &qword_244313DA0);
  v176 = *(v177 - 8);
  v43 = (*(v176 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v222 = &v151 - v44;
  v175 = sub_2442C6564(&qword_27EDDEBE8, &qword_244313DA8);
  v174 = *(v175 - 8);
  v45 = (*(v174 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v221 = &v151 - v46;
  v172 = sub_2442C6564(&qword_27EDDEBF0, &qword_244313DB0);
  v173 = *(v172 - 8);
  v47 = (*(v173 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v218 = &v151 - v48;
  v170 = sub_2442C6564(&qword_27EDDEBF8, &qword_244313DB8);
  v171 = *(v170 - 8);
  v49 = (*(v171 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v245 = &v151 - v50;
  v169 = sub_2442C6564(&qword_27EDDEC00, &qword_244313DC0);
  v168 = *(v169 - 8);
  v51 = (*(v168 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v244 = &v151 - v52;
  v167 = sub_2442C6564(&qword_27EDDEC08, &qword_244313DC8);
  v166 = *(v167 - 8);
  v53 = (*(v166 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v220 = &v151 - v54;
  v165 = sub_2442C6564(&qword_27EDDEC10, &qword_244313DD0);
  v164 = *(v165 - 8);
  v55 = (*(v164 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v219 = &v151 - v56;
  v163 = sub_2442C6564(&qword_27EDDEC18, &qword_244313DD8);
  v162 = *(v163 - 8);
  v57 = (*(v162 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v243 = &v151 - v58;
  v161 = sub_2442C6564(&qword_27EDDEC20, &qword_244313DE0);
  v160 = *(v161 - 8);
  v59 = (*(v160 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v217 = &v151 - v60;
  v159 = sub_2442C6564(&qword_27EDDEC28, &qword_244313DE8);
  v158 = *(v159 - 8);
  v61 = (*(v158 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v63 = &v151 - v62;
  v64 = sub_2442C6564(&qword_27EDDEC30, &qword_244313DF0);
  v157 = *(v64 - 8);
  v65 = (*(v157 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v67 = &v151 - v66;
  v68 = sub_2442C6564(&qword_27EDDEC38, &qword_244313DF8);
  v69 = *(v68 - 8);
  v70 = (*(v69 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v72 = &v151 - v71;
  v73 = a1[3];
  v74 = a1[4];
  v249 = a1;
  sub_2442C65AC(a1, v73);
  sub_2442CC110();
  v75 = v248;
  sub_244313228();
  if (v75)
  {
LABEL_69:
    v149 = v249;
    return sub_2442C6908(v149);
  }

  v153 = v67;
  v152 = v64;
  v154 = v63;
  v77 = v243;
  v76 = v244;
  v78 = v245;
  v155 = 0;
  v80 = v246;
  v79 = v247;
  v248 = v69;
  v156 = v72;
  v81 = sub_244313048();
  if (*(v81 + 16) != 1 || (v82 = *(v81 + 32), v82 == 31))
  {
    v86 = v68;
    v87 = sub_244312EE8();
    swift_allocError();
    v89 = v88;
    v90 = *(sub_2442C6564(&qword_27EDDEC40, &qword_244313E00) + 48);
    *v89 = &type metadata for IARFVolumeUnit;
    v91 = v156;
    sub_244312FC8();
    sub_244312EC8();
    (*(*(v87 - 8) + 104))(v89, *MEMORY[0x277D84160], v87);
    swift_willThrow();
    (*(v248 + 8))(v91, v86);
LABEL_68:
    swift_unknownObjectRelease();
    goto LABEL_69;
  }

  v151 = v81;
  switch(v82)
  {
    case 1:
      v250 = 1;
      sub_2442CCAE8();
      v116 = v154;
      v84 = v156;
      v117 = v155;
      sub_244312FB8();
      if (v117)
      {
        goto LABEL_67;
      }

      (*(v158 + 8))(v116, v159);
      goto LABEL_72;
    case 2:
      v250 = 2;
      sub_2442CCA94();
      v110 = v217;
      v84 = v156;
      v111 = v155;
      sub_244312FB8();
      if (v111)
      {
        goto LABEL_67;
      }

      (*(v160 + 8))(v110, v161);
      goto LABEL_72;
    case 3:
      v250 = 3;
      sub_2442CCA40();
      v84 = v156;
      v114 = v155;
      sub_244312FB8();
      if (v114)
      {
        goto LABEL_67;
      }

      (*(v162 + 8))(v77, v163);
      goto LABEL_72;
    case 4:
      v250 = 4;
      sub_2442CC9EC();
      v100 = v219;
      v84 = v156;
      v101 = v155;
      sub_244312FB8();
      if (v101)
      {
        goto LABEL_67;
      }

      (*(v164 + 8))(v100, v165);
      goto LABEL_72;
    case 5:
      v250 = 5;
      sub_2442CC998();
      v122 = v220;
      v84 = v156;
      v123 = v155;
      sub_244312FB8();
      if (v123)
      {
        goto LABEL_67;
      }

      (*(v166 + 8))(v122, v167);
      goto LABEL_72;
    case 6:
      v250 = 6;
      sub_2442CC944();
      v84 = v156;
      v128 = v155;
      sub_244312FB8();
      if (v128)
      {
        goto LABEL_67;
      }

      (*(v168 + 8))(v76, v169);
      goto LABEL_72;
    case 7:
      v250 = 7;
      sub_2442CC8F0();
      v84 = v156;
      v115 = v155;
      sub_244312FB8();
      if (v115)
      {
        goto LABEL_67;
      }

      (*(v171 + 8))(v78, v170);
      goto LABEL_72;
    case 8:
      v250 = 8;
      sub_2442CC89C();
      v133 = v218;
      v84 = v156;
      v134 = v155;
      sub_244312FB8();
      if (v134)
      {
        goto LABEL_67;
      }

      (*(v173 + 8))(v133, v172);
      goto LABEL_72;
    case 9:
      v250 = 9;
      sub_2442CC848();
      v104 = v221;
      v84 = v156;
      v105 = v155;
      sub_244312FB8();
      if (v105)
      {
        goto LABEL_67;
      }

      (*(v174 + 8))(v104, v175);
      goto LABEL_72;
    case 10:
      v250 = 10;
      sub_2442CC7F4();
      v131 = v222;
      v84 = v156;
      v132 = v155;
      sub_244312FB8();
      if (v132)
      {
        goto LABEL_67;
      }

      (*(v176 + 8))(v131, v177);
      goto LABEL_72;
    case 11:
      v250 = 11;
      sub_2442CC7A0();
      v98 = v223;
      v84 = v156;
      v99 = v155;
      sub_244312FB8();
      if (v99)
      {
        goto LABEL_67;
      }

      (*(v178 + 8))(v98, v179);
      goto LABEL_72;
    case 12:
      v250 = 12;
      sub_2442CC74C();
      v102 = v224;
      v84 = v156;
      v103 = v155;
      sub_244312FB8();
      if (v103)
      {
        goto LABEL_67;
      }

      (*(v180 + 8))(v102, v181);
      goto LABEL_72;
    case 13:
      v250 = 13;
      sub_2442CC6F8();
      v126 = v225;
      v84 = v156;
      v127 = v155;
      sub_244312FB8();
      if (v127)
      {
        goto LABEL_67;
      }

      (*(v182 + 8))(v126, v183);
      goto LABEL_72;
    case 14:
      v250 = 14;
      sub_2442CC6A4();
      v96 = v226;
      v84 = v156;
      v97 = v155;
      sub_244312FB8();
      if (v97)
      {
        goto LABEL_67;
      }

      (*(v184 + 8))(v96, v185);
      goto LABEL_72;
    case 15:
      v250 = 15;
      sub_2442CC650();
      v112 = v227;
      v84 = v156;
      v113 = v155;
      sub_244312FB8();
      if (v113)
      {
        goto LABEL_67;
      }

      (*(v186 + 8))(v112, v187);
      goto LABEL_72;
    case 16:
      v250 = 16;
      sub_2442CC5FC();
      v94 = v228;
      v84 = v156;
      v95 = v155;
      sub_244312FB8();
      if (v95)
      {
        goto LABEL_67;
      }

      (*(v188 + 8))(v94, v189);
      goto LABEL_72;
    case 17:
      v250 = 17;
      sub_2442CC5A8();
      v118 = v229;
      v84 = v156;
      v119 = v155;
      sub_244312FB8();
      if (v119)
      {
        goto LABEL_67;
      }

      (*(v190 + 8))(v118, v191);
      goto LABEL_72;
    case 18:
      v250 = 18;
      sub_2442CC554();
      v129 = v230;
      v84 = v156;
      v130 = v155;
      sub_244312FB8();
      if (v130)
      {
        goto LABEL_67;
      }

      (*(v192 + 8))(v129, v193);
      goto LABEL_72;
    case 19:
      v250 = 19;
      sub_2442CC500();
      v139 = v231;
      v84 = v156;
      v140 = v155;
      sub_244312FB8();
      if (v140)
      {
        goto LABEL_67;
      }

      (*(v194 + 8))(v139, v195);
      goto LABEL_72;
    case 20:
      v250 = 20;
      sub_2442CC4AC();
      v120 = v232;
      v84 = v156;
      v121 = v155;
      sub_244312FB8();
      if (v121)
      {
        goto LABEL_67;
      }

      (*(v196 + 8))(v120, v197);
      goto LABEL_72;
    case 21:
      v250 = 21;
      sub_2442CC458();
      v124 = v233;
      v84 = v156;
      v125 = v155;
      sub_244312FB8();
      if (v125)
      {
        goto LABEL_67;
      }

      (*(v198 + 8))(v124, v199);
      goto LABEL_72;
    case 22:
      v250 = 22;
      sub_2442CC404();
      v137 = v234;
      v84 = v156;
      v138 = v155;
      sub_244312FB8();
      if (v138)
      {
        goto LABEL_67;
      }

      (*(v200 + 8))(v137, v201);
      goto LABEL_72;
    case 23:
      v250 = 23;
      sub_2442CC3B0();
      v141 = v235;
      v84 = v156;
      v142 = v155;
      sub_244312FB8();
      if (v142)
      {
        goto LABEL_67;
      }

      (*(v202 + 8))(v141, v203);
      goto LABEL_72;
    case 24:
      v250 = 24;
      sub_2442CC35C();
      v108 = v236;
      v84 = v156;
      v109 = v155;
      sub_244312FB8();
      if (v109)
      {
        goto LABEL_67;
      }

      (*(v204 + 8))(v108, v205);
      goto LABEL_72;
    case 25:
      v250 = 25;
      sub_2442CC308();
      v106 = v237;
      v84 = v156;
      v107 = v155;
      sub_244312FB8();
      if (v107)
      {
        goto LABEL_67;
      }

      (*(v206 + 8))(v106, v207);
      goto LABEL_72;
    case 26:
      v250 = 26;
      sub_2442CC2B4();
      v147 = v238;
      v84 = v156;
      v148 = v155;
      sub_244312FB8();
      if (v148)
      {
        goto LABEL_67;
      }

      (*(v208 + 8))(v147, v209);
      goto LABEL_72;
    case 27:
      v250 = 27;
      sub_2442CC260();
      v92 = v239;
      v84 = v156;
      v93 = v155;
      sub_244312FB8();
      if (v93)
      {
        goto LABEL_67;
      }

      (*(v210 + 8))(v92, v211);
      goto LABEL_72;
    case 28:
      v250 = 28;
      sub_2442CC20C();
      v143 = v240;
      v84 = v156;
      v144 = v155;
      sub_244312FB8();
      if (v144)
      {
        goto LABEL_67;
      }

      (*(v212 + 8))(v143, v213);
      goto LABEL_72;
    case 29:
      v250 = 29;
      sub_2442CC1B8();
      v145 = v241;
      v84 = v156;
      v146 = v155;
      sub_244312FB8();
      if (v146)
      {
        goto LABEL_67;
      }

      (*(v214 + 8))(v145, v215);
      goto LABEL_72;
    case 30:
      v250 = 30;
      sub_2442CC164();
      v135 = v242;
      v84 = v156;
      v136 = v155;
      sub_244312FB8();
      if (v136)
      {
        goto LABEL_67;
      }

      (*(v216 + 8))(v135, v80);
      goto LABEL_72;
    default:
      v250 = 0;
      sub_2442CCB3C();
      v83 = v153;
      v84 = v156;
      v85 = v155;
      sub_244312FB8();
      if (v85)
      {
LABEL_67:
        (*(v248 + 8))(v84, v68);
        goto LABEL_68;
      }

      (*(v157 + 8))(v83, v152);
LABEL_72:
      (*(v248 + 8))(v84, v68);
      swift_unknownObjectRelease();
      v149 = v249;
      *v79 = v82;
      break;
  }

  return sub_2442C6908(v149);
}

uint64_t sub_2442CEC68()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 4;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2442CEC9C()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 3;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2442CECD0()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 5;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2442CED04()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2442CED38()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 16;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_2442CED70()
{
  result = qword_27EDDEC48;
  if (!qword_27EDDEC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEC48);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IARFFB_MeasurementVolumeUnitType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE2)
  {
    goto LABEL_17;
  }

  if (a2 + 30 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 30) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 30;
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

      return (*a1 | (v4 << 8)) - 30;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 30;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1F;
  v8 = v6 - 31;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for IARFFB_MeasurementVolumeUnitType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 30 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 30) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE2)
  {
    v4 = 0;
  }

  if (a2 > 0xE1)
  {
    v5 = ((a2 - 226) >> 8) + 1;
    *result = a2 + 30;
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
    *result = a2 + 30;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2442CF150()
{
  result = qword_27EDDEC50;
  if (!qword_27EDDEC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEC50);
  }

  return result;
}

unint64_t sub_2442CF1A8()
{
  result = qword_27EDDEC58;
  if (!qword_27EDDEC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEC58);
  }

  return result;
}

unint64_t sub_2442CF200()
{
  result = qword_27EDDEC60;
  if (!qword_27EDDEC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEC60);
  }

  return result;
}

unint64_t sub_2442CF258()
{
  result = qword_27EDDEC68;
  if (!qword_27EDDEC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEC68);
  }

  return result;
}

unint64_t sub_2442CF2B0()
{
  result = qword_27EDDEC70;
  if (!qword_27EDDEC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEC70);
  }

  return result;
}

unint64_t sub_2442CF308()
{
  result = qword_27EDDEC78;
  if (!qword_27EDDEC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEC78);
  }

  return result;
}

unint64_t sub_2442CF360()
{
  result = qword_27EDDEC80;
  if (!qword_27EDDEC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEC80);
  }

  return result;
}

unint64_t sub_2442CF3B8()
{
  result = qword_27EDDEC88;
  if (!qword_27EDDEC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEC88);
  }

  return result;
}

unint64_t sub_2442CF410()
{
  result = qword_27EDDEC90;
  if (!qword_27EDDEC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEC90);
  }

  return result;
}

unint64_t sub_2442CF468()
{
  result = qword_27EDDEC98;
  if (!qword_27EDDEC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEC98);
  }

  return result;
}

unint64_t sub_2442CF4C0()
{
  result = qword_27EDDECA0;
  if (!qword_27EDDECA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDECA0);
  }

  return result;
}

unint64_t sub_2442CF518()
{
  result = qword_27EDDECA8;
  if (!qword_27EDDECA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDECA8);
  }

  return result;
}

unint64_t sub_2442CF570()
{
  result = qword_27EDDECB0;
  if (!qword_27EDDECB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDECB0);
  }

  return result;
}

unint64_t sub_2442CF5C8()
{
  result = qword_27EDDECB8;
  if (!qword_27EDDECB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDECB8);
  }

  return result;
}

unint64_t sub_2442CF620()
{
  result = qword_27EDDECC0;
  if (!qword_27EDDECC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDECC0);
  }

  return result;
}

unint64_t sub_2442CF678()
{
  result = qword_27EDDECC8;
  if (!qword_27EDDECC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDECC8);
  }

  return result;
}

unint64_t sub_2442CF6D0()
{
  result = qword_27EDDECD0;
  if (!qword_27EDDECD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDECD0);
  }

  return result;
}

unint64_t sub_2442CF728()
{
  result = qword_27EDDECD8;
  if (!qword_27EDDECD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDECD8);
  }

  return result;
}

unint64_t sub_2442CF780()
{
  result = qword_27EDDECE0;
  if (!qword_27EDDECE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDECE0);
  }

  return result;
}

unint64_t sub_2442CF7D8()
{
  result = qword_27EDDECE8;
  if (!qword_27EDDECE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDECE8);
  }

  return result;
}

unint64_t sub_2442CF830()
{
  result = qword_27EDDECF0;
  if (!qword_27EDDECF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDECF0);
  }

  return result;
}

unint64_t sub_2442CF888()
{
  result = qword_27EDDECF8;
  if (!qword_27EDDECF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDECF8);
  }

  return result;
}

unint64_t sub_2442CF8E0()
{
  result = qword_27EDDED00;
  if (!qword_27EDDED00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDED00);
  }

  return result;
}

unint64_t sub_2442CF938()
{
  result = qword_27EDDED08;
  if (!qword_27EDDED08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDED08);
  }

  return result;
}

unint64_t sub_2442CF990()
{
  result = qword_27EDDED10;
  if (!qword_27EDDED10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDED10);
  }

  return result;
}

unint64_t sub_2442CF9E8()
{
  result = qword_27EDDED18;
  if (!qword_27EDDED18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDED18);
  }

  return result;
}

unint64_t sub_2442CFA40()
{
  result = qword_27EDDED20;
  if (!qword_27EDDED20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDED20);
  }

  return result;
}

unint64_t sub_2442CFA98()
{
  result = qword_27EDDED28;
  if (!qword_27EDDED28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDED28);
  }

  return result;
}

unint64_t sub_2442CFAF0()
{
  result = qword_27EDDED30;
  if (!qword_27EDDED30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDED30);
  }

  return result;
}

unint64_t sub_2442CFB48()
{
  result = qword_27EDDED38;
  if (!qword_27EDDED38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDED38);
  }

  return result;
}

unint64_t sub_2442CFBA0()
{
  result = qword_27EDDED40;
  if (!qword_27EDDED40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDED40);
  }

  return result;
}

unint64_t sub_2442CFBF8()
{
  result = qword_27EDDED48;
  if (!qword_27EDDED48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDED48);
  }

  return result;
}

unint64_t sub_2442CFC50()
{
  result = qword_27EDDED50;
  if (!qword_27EDDED50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDED50);
  }

  return result;
}

unint64_t sub_2442CFCA8()
{
  result = qword_27EDDED58;
  if (!qword_27EDDED58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDED58);
  }

  return result;
}

unint64_t sub_2442CFD00()
{
  result = qword_27EDDED60;
  if (!qword_27EDDED60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDED60);
  }

  return result;
}

unint64_t sub_2442CFD58()
{
  result = qword_27EDDED68;
  if (!qword_27EDDED68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDED68);
  }

  return result;
}

unint64_t sub_2442CFDB0()
{
  result = qword_27EDDED70;
  if (!qword_27EDDED70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDED70);
  }

  return result;
}

unint64_t sub_2442CFE08()
{
  result = qword_27EDDED78;
  if (!qword_27EDDED78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDED78);
  }

  return result;
}

unint64_t sub_2442CFE60()
{
  result = qword_27EDDED80;
  if (!qword_27EDDED80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDED80);
  }

  return result;
}

unint64_t sub_2442CFEB8()
{
  result = qword_27EDDED88;
  if (!qword_27EDDED88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDED88);
  }

  return result;
}

unint64_t sub_2442CFF10()
{
  result = qword_27EDDED90;
  if (!qword_27EDDED90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDED90);
  }

  return result;
}

unint64_t sub_2442CFF68()
{
  result = qword_27EDDED98;
  if (!qword_27EDDED98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDED98);
  }

  return result;
}

unint64_t sub_2442CFFC0()
{
  result = qword_27EDDEDA0;
  if (!qword_27EDDEDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEDA0);
  }

  return result;
}

unint64_t sub_2442D0018()
{
  result = qword_27EDDEDA8;
  if (!qword_27EDDEDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEDA8);
  }

  return result;
}

unint64_t sub_2442D0070()
{
  result = qword_27EDDEDB0;
  if (!qword_27EDDEDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEDB0);
  }

  return result;
}

unint64_t sub_2442D00C8()
{
  result = qword_27EDDEDB8;
  if (!qword_27EDDEDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEDB8);
  }

  return result;
}

unint64_t sub_2442D0120()
{
  result = qword_27EDDEDC0;
  if (!qword_27EDDEDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEDC0);
  }

  return result;
}

unint64_t sub_2442D0178()
{
  result = qword_27EDDEDC8;
  if (!qword_27EDDEDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEDC8);
  }

  return result;
}

unint64_t sub_2442D01D0()
{
  result = qword_27EDDEDD0;
  if (!qword_27EDDEDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEDD0);
  }

  return result;
}

unint64_t sub_2442D0228()
{
  result = qword_27EDDEDD8;
  if (!qword_27EDDEDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEDD8);
  }

  return result;
}

unint64_t sub_2442D0280()
{
  result = qword_27EDDEDE0;
  if (!qword_27EDDEDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEDE0);
  }

  return result;
}

unint64_t sub_2442D02D8()
{
  result = qword_27EDDEDE8;
  if (!qword_27EDDEDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEDE8);
  }

  return result;
}

unint64_t sub_2442D0330()
{
  result = qword_27EDDEDF0;
  if (!qword_27EDDEDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEDF0);
  }

  return result;
}

unint64_t sub_2442D0388()
{
  result = qword_27EDDEDF8;
  if (!qword_27EDDEDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEDF8);
  }

  return result;
}

unint64_t sub_2442D03E0()
{
  result = qword_27EDDEE00;
  if (!qword_27EDDEE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEE00);
  }

  return result;
}

unint64_t sub_2442D0438()
{
  result = qword_27EDDEE08;
  if (!qword_27EDDEE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEE08);
  }

  return result;
}

unint64_t sub_2442D0490()
{
  result = qword_27EDDEE10;
  if (!qword_27EDDEE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEE10);
  }

  return result;
}

unint64_t sub_2442D04E8()
{
  result = qword_27EDDEE18;
  if (!qword_27EDDEE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEE18);
  }

  return result;
}

unint64_t sub_2442D0540()
{
  result = qword_27EDDEE20;
  if (!qword_27EDDEE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEE20);
  }

  return result;
}

unint64_t sub_2442D0598()
{
  result = qword_27EDDEE28;
  if (!qword_27EDDEE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEE28);
  }

  return result;
}

unint64_t sub_2442D05F0()
{
  result = qword_27EDDEE30;
  if (!qword_27EDDEE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEE30);
  }

  return result;
}

unint64_t sub_2442D0648()
{
  result = qword_27EDDEE38;
  if (!qword_27EDDEE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEE38);
  }

  return result;
}

unint64_t sub_2442D06A0()
{
  result = qword_27EDDEE40;
  if (!qword_27EDDEE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEE40);
  }

  return result;
}

unint64_t sub_2442D06F8()
{
  result = qword_27EDDEE48;
  if (!qword_27EDDEE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEE48);
  }

  return result;
}

unint64_t sub_2442D0750()
{
  result = qword_27EDDEE50;
  if (!qword_27EDDEE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEE50);
  }

  return result;
}

uint64_t sub_2442D07A4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = *(a1 + 6);
  result = Table.offset(_:)(4);
  if (!result)
  {

    v8 = 0;
    goto LABEL_5;
  }

  if (!__OFADD__(result, v6))
  {
    IARFFB_MeasurementVolumeUnitType.init(rawValue:)(*(*(v4 + 24) + result + v6));

    v8 = byte_244315792[v9];
LABEL_5:
    *a2 = v8;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_2442D083C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6574696C6167656DLL && a2 == 0xEA00000000007372;
  if (v4 || (sub_244313108() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6574696C6F6C696BLL && a2 == 0xEA00000000007372 || (sub_244313108() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x73726574696CLL && a2 == 0xE600000000000000 || (sub_244313108() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6574696C69636564 && a2 == 0xEA00000000007372 || (sub_244313108() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x74696C69746E6563 && a2 == 0xEB00000000737265 || (sub_244313108() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x74696C696C6C696DLL && a2 == 0xEB00000000737265 || (sub_244313108() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6C694B6369627563 && a2 == 0xEF73726574656D6FLL || (sub_244313108() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x74654D6369627563 && a2 == 0xEB00000000737265 || (sub_244313108() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6365446369627563 && a2 == 0xEF73726574656D69 || (sub_244313108() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024431C1E0 == a2 || (sub_244313108() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024431C200 == a2 || (sub_244313108() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x636E496369627563 && a2 == 0xEB00000000736568 || (sub_244313108() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x6565466369627563 && a2 == 0xE900000000000074 || (sub_244313108() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x7261596369627563 && a2 == 0xEA00000000007364 || (sub_244313108() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x6C694D6369627563 && a2 == 0xEA00000000007365 || (sub_244313108() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x7465654665726361 && a2 == 0xE800000000000000 || (sub_244313108() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x736C6568737562 && a2 == 0xE700000000000000 || (sub_244313108() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0x6E6F6F7073616574 && a2 == 0xE900000000000073 || (sub_244313108() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0x6F7073656C626174 && a2 == 0xEB00000000736E6FLL || (sub_244313108() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0x6E754F6469756C66 && a2 == 0xEB00000000736563 || (sub_244313108() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 1936749923 && a2 == 0xE400000000000000 || (sub_244313108() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0x73746E6970 && a2 == 0xE500000000000000 || (sub_244313108() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0x737472617571 && a2 == 0xE600000000000000 || (sub_244313108() & 1) != 0)
  {

    return 22;
  }

  else if (a1 == 0x736E6F6C6C6167 && a2 == 0xE700000000000000 || (sub_244313108() & 1) != 0)
  {

    return 23;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024431C220 == a2 || (sub_244313108() & 1) != 0)
  {

    return 24;
  }

  else if (a1 == 0xD000000000000013 && 0x800000024431C240 == a2 || (sub_244313108() & 1) != 0)
  {

    return 25;
  }

  else if (a1 == 0xD000000000000013 && 0x800000024431C260 == a2 || (sub_244313108() & 1) != 0)
  {

    return 26;
  }

  else if (a1 == 0x6C61697265706D69 && a2 == 0xED000073746E6950 || (sub_244313108() & 1) != 0)
  {

    return 27;
  }

  else if (a1 == 0x6C61697265706D69 && a2 == 0xEE00737472617551 || (sub_244313108() & 1) != 0)
  {

    return 28;
  }

  else if (a1 == 0x6C61697265706D69 && a2 == 0xEF736E6F6C6C6147 || (sub_244313108() & 1) != 0)
  {

    return 29;
  }

  else if (a1 == 0x754363697274656DLL && a2 == 0xEA00000000007370)
  {

    return 30;
  }

  else
  {
    v6 = sub_244313108();

    if (v6)
    {
      return 30;
    }

    else
    {
      return 31;
    }
  }
}

uint64_t sub_2442D11F0()
{
  v1 = 0x6465746E756F63;
  v2 = 0x746867696577;
  if (*v0 != 2)
  {
    v2 = 0x74617265706D6574;
  }

  if (*v0)
  {
    v1 = 0x656D756C6F76;
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

uint64_t sub_2442D126C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2442D3074(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2442D12A0(uint64_t a1)
{
  v2 = sub_2442D1BF4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2442D12DC(uint64_t a1)
{
  v2 = sub_2442D1BF4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2442D1364@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6C6562616CLL && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_244313108();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2442D13E8(uint64_t a1)
{
  v2 = sub_2442D1E40();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2442D1424(uint64_t a1)
{
  v2 = sub_2442D1E40();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2442D146C(uint64_t a1)
{
  v2 = sub_2442D1C48();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2442D14A8(uint64_t a1)
{
  v2 = sub_2442D1C48();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2442D14E8(uint64_t a1)
{
  v2 = sub_2442D1D98();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2442D1524(uint64_t a1)
{
  v2 = sub_2442D1D98();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2442D1560()
{
  sub_2443131A8();
  MEMORY[0x245D5EDF0](0);
  return sub_2443131D8();
}

uint64_t sub_2442D15A4()
{
  sub_2443131A8();
  MEMORY[0x245D5EDF0](0);
  return sub_2443131D8();
}

uint64_t sub_2442D15E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_244313108();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2442D1664(uint64_t a1)
{
  v2 = sub_2442D1CF0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2442D16A0(uint64_t a1)
{
  v2 = sub_2442D1CF0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IARFMeasurementUnit.encode(to:)(void *a1)
{
  v3 = sub_2442C6564(&qword_27EDDEE58, &qword_2443157C0);
  v38 = *(v3 - 8);
  v39 = v3;
  v4 = (*(v38 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v37 = &v30 - v5;
  v6 = sub_2442C6564(&qword_27EDDEE60, &qword_2443157C8);
  v35 = *(v6 - 8);
  v36 = v6;
  v7 = (*(v35 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v34 = &v30 - v8;
  v9 = sub_2442C6564(&qword_27EDDEE68, &qword_2443157D0);
  v32 = *(v9 - 8);
  v33 = v9;
  v10 = (*(v32 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v12 = &v30 - v11;
  v13 = sub_2442C6564(&qword_27EDDEE70, &qword_2443157D8);
  v31 = *(v13 - 8);
  v14 = (*(v31 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v16 = &v30 - v15;
  v17 = sub_2442C6564(&qword_27EDDEE78, &qword_2443157E0);
  v41 = *(v17 - 8);
  v42 = v17;
  v18 = (*(v41 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v20 = &v30 - v19;
  v21 = v1[1];
  v40 = *v1;
  v30 = v21;
  v22 = *(v1 + 16);
  v23 = a1[4];
  sub_2442C65AC(a1, a1[3]);
  sub_2442D1BF4();
  sub_244313238();
  if (v22 > 1)
  {
    if (v22 == 2)
    {
      v47 = 2;
      sub_2442D1CF0();
      v25 = v34;
      v24 = v42;
      sub_244313058();
      v46 = v40;
      sub_2442D1D44();
      v26 = v36;
      sub_2443130C8();
      v27 = v35;
    }

    else
    {
      v49 = 3;
      sub_2442D1C48();
      v25 = v37;
      v24 = v42;
      sub_244313058();
      v48 = v40;
      sub_2442D1C9C();
      v26 = v39;
      sub_2443130C8();
      v27 = v38;
    }

    (*(v27 + 8))(v25, v26);
  }

  else if (v22)
  {
    v45 = 1;
    sub_2442D1D98();
    v24 = v42;
    sub_244313058();
    v44 = v40;
    sub_2442D1DEC();
    v28 = v33;
    sub_2443130C8();
    (*(v32 + 8))(v12, v28);
  }

  else
  {
    v43 = 0;
    sub_2442D1E40();
    v24 = v42;
    sub_244313058();
    sub_244313068();
    (*(v31 + 8))(v16, v13);
  }

  return (*(v41 + 8))(v20, v24);
}

unint64_t sub_2442D1BF4()
{
  result = qword_27EDDEE80;
  if (!qword_27EDDEE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEE80);
  }

  return result;
}

unint64_t sub_2442D1C48()
{
  result = qword_27EDDEE88;
  if (!qword_27EDDEE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEE88);
  }

  return result;
}

unint64_t sub_2442D1C9C()
{
  result = qword_27EDDEE90;
  if (!qword_27EDDEE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEE90);
  }

  return result;
}

unint64_t sub_2442D1CF0()
{
  result = qword_27EDDEE98;
  if (!qword_27EDDEE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEE98);
  }

  return result;
}

unint64_t sub_2442D1D44()
{
  result = qword_27EDDEEA0;
  if (!qword_27EDDEEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEEA0);
  }

  return result;
}

unint64_t sub_2442D1D98()
{
  result = qword_27EDDEEA8;
  if (!qword_27EDDEEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEEA8);
  }

  return result;
}

unint64_t sub_2442D1DEC()
{
  result = qword_27EDDEEB0;
  if (!qword_27EDDEEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEEB0);
  }

  return result;
}

unint64_t sub_2442D1E40()
{
  result = qword_27EDDEEB8;
  if (!qword_27EDDEEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEEB8);
  }

  return result;
}

uint64_t IARFMeasurementUnit.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a2;
  v64 = sub_2442C6564(&qword_27EDDEEC0, &qword_2443157E8);
  v58 = *(v64 - 8);
  v3 = (*(v58 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v63 = &v54 - v4;
  v57 = sub_2442C6564(&qword_27EDDEEC8, &qword_2443157F0);
  v61 = *(v57 - 8);
  v5 = (*(v61 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v62 = &v54 - v6;
  v7 = sub_2442C6564(&qword_27EDDEED0, &qword_2443157F8);
  v59 = *(v7 - 8);
  v60 = v7;
  v8 = (*(v59 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v10 = &v54 - v9;
  v11 = sub_2442C6564(&qword_27EDDEED8, &qword_244315800);
  v56 = *(v11 - 8);
  v12 = (*(v56 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v14 = &v54 - v13;
  v15 = sub_2442C6564(&qword_27EDDEEE0, &unk_244315808);
  v16 = *(v15 - 8);
  v17 = (*(v16 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v19 = &v54 - v18;
  v21 = a1[3];
  v20 = a1[4];
  v67 = a1;
  sub_2442C65AC(a1, v21);
  sub_2442D1BF4();
  v22 = v66;
  sub_244313228();
  if (!v22)
  {
    v23 = v14;
    v54 = v11;
    v55 = 0;
    v24 = v10;
    v25 = v62;
    v26 = v63;
    v66 = v16;
    v28 = v64;
    v27 = v65;
    v29 = sub_244313048();
    v30 = (2 * *(v29 + 16)) | 1;
    v68 = v29;
    v69 = v29 + 32;
    v70 = 0;
    v71 = v30;
    v31 = sub_2442CEC68();
    if (v31 == 4 || v70 != v71 >> 1)
    {
      v35 = sub_244312EE8();
      swift_allocError();
      v37 = v36;
      v38 = v19;
      v39 = v15;
      v40 = *(sub_2442C6564(&qword_27EDDEC40, &qword_244313E00) + 48);
      *v37 = &type metadata for IARFMeasurementUnit;
      sub_244312FC8();
      sub_244312EC8();
      (*(*(v35 - 8) + 104))(v37, *MEMORY[0x277D84160], v35);
      swift_willThrow();
      (*(v66 + 8))(v38, v39);
LABEL_9:
      swift_unknownObjectRelease();
      return sub_2442C6908(v67);
    }

    v72 = v31;
    if (v31 <= 1u)
    {
      if (v31)
      {
        v73 = 1;
        sub_2442D1D98();
        v46 = v55;
        sub_244312FB8();
        if (!v46)
        {
          sub_2442D27A0();
          v47 = v60;
          sub_244313038();
          (*(v59 + 8))(v24, v47);
          (*(v66 + 8))(v19, v15);
          swift_unknownObjectRelease();
          v52 = 0;
          v50 = v73;
          v53 = v27;
          goto LABEL_21;
        }
      }

      else
      {
        v73 = 0;
        sub_2442D1E40();
        v32 = v23;
        v33 = v55;
        sub_244312FB8();
        if (!v33)
        {
          v34 = v54;
          v50 = sub_244312FD8();
          v52 = v51;
          (*(v56 + 8))(v32, v34);
          (*(v66 + 8))(v19, v15);
          swift_unknownObjectRelease();
          v53 = v27;
LABEL_21:
          *v53 = v50;
          *(v53 + 8) = v52;
          *(v53 + 16) = v72;
          return sub_2442C6908(v67);
        }
      }

LABEL_14:
      (*(v66 + 8))(v19, v15);
      goto LABEL_9;
    }

    v53 = v27;
    if (v31 == 2)
    {
      v73 = 2;
      sub_2442D1CF0();
      v42 = v25;
      v43 = v55;
      sub_244312FB8();
      v44 = v66;
      if (!v43)
      {
        sub_2442D274C();
        v45 = v57;
        sub_244313038();
        (*(v61 + 8))(v42, v45);
        (*(v44 + 8))(v19, v15);
        swift_unknownObjectRelease();
        v52 = 0;
        v50 = v73;
        goto LABEL_21;
      }

      goto LABEL_14;
    }

    v73 = 3;
    sub_2442D1C48();
    v48 = v55;
    sub_244312FB8();
    v49 = v66;
    if (!v48)
    {
      sub_2442D26F8();
      sub_244313038();
      (*(v58 + 8))(v26, v28);
      (*(v49 + 8))(v19, v15);
      swift_unknownObjectRelease();
      v52 = 0;
      v50 = v73;
      goto LABEL_21;
    }

    (*(v66 + 8))(v19, v15);
    swift_unknownObjectRelease();
  }

  return sub_2442C6908(v67);
}

unint64_t sub_2442D26F8()
{
  result = qword_27EDDEEE8;
  if (!qword_27EDDEEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEEE8);
  }

  return result;
}

unint64_t sub_2442D274C()
{
  result = qword_27EDDEEF0;
  if (!qword_27EDDEEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEEF0);
  }

  return result;
}

unint64_t sub_2442D27A0()
{
  result = qword_27EDDEEF8;
  if (!qword_27EDDEEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEEF8);
  }

  return result;
}

__n128 sub_2442D2824(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_2442D2838(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_2442D2880(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IARFMeasurementUnit.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
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

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for IARFMeasurementUnit.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FlatBuffersUtils(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for FlatBuffersUtils(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_2442D2B50()
{
  result = qword_27EDDEF00;
  if (!qword_27EDDEF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEF00);
  }

  return result;
}

unint64_t sub_2442D2BA8()
{
  result = qword_27EDDEF08;
  if (!qword_27EDDEF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEF08);
  }

  return result;
}

unint64_t sub_2442D2C00()
{
  result = qword_27EDDEF10;
  if (!qword_27EDDEF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEF10);
  }

  return result;
}

unint64_t sub_2442D2C58()
{
  result = qword_27EDDEF18;
  if (!qword_27EDDEF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEF18);
  }

  return result;
}

unint64_t sub_2442D2CB0()
{
  result = qword_27EDDEF20;
  if (!qword_27EDDEF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEF20);
  }

  return result;
}

unint64_t sub_2442D2D08()
{
  result = qword_27EDDEF28;
  if (!qword_27EDDEF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEF28);
  }

  return result;
}

unint64_t sub_2442D2D60()
{
  result = qword_27EDDEF30;
  if (!qword_27EDDEF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEF30);
  }

  return result;
}

unint64_t sub_2442D2DB8()
{
  result = qword_27EDDEF38;
  if (!qword_27EDDEF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEF38);
  }

  return result;
}

unint64_t sub_2442D2E10()
{
  result = qword_27EDDEF40;
  if (!qword_27EDDEF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEF40);
  }

  return result;
}

unint64_t sub_2442D2E68()
{
  result = qword_27EDDEF48;
  if (!qword_27EDDEF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEF48);
  }

  return result;
}

unint64_t sub_2442D2EC0()
{
  result = qword_27EDDEF50;
  if (!qword_27EDDEF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEF50);
  }

  return result;
}

unint64_t sub_2442D2F18()
{
  result = qword_27EDDEF58;
  if (!qword_27EDDEF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEF58);
  }

  return result;
}

unint64_t sub_2442D2F70()
{
  result = qword_27EDDEF60;
  if (!qword_27EDDEF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEF60);
  }

  return result;
}

unint64_t sub_2442D2FC8()
{
  result = qword_27EDDEF68;
  if (!qword_27EDDEF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEF68);
  }

  return result;
}

unint64_t sub_2442D3020()
{
  result = qword_27EDDEF70;
  if (!qword_27EDDEF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEF70);
  }

  return result;
}

uint64_t sub_2442D3074(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6465746E756F63 && a2 == 0xE700000000000000;
  if (v4 || (sub_244313108() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656D756C6F76 && a2 == 0xE600000000000000 || (sub_244313108() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746867696577 && a2 == 0xE600000000000000 || (sub_244313108() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x74617265706D6574 && a2 == 0xEB00000000657275)
  {

    return 3;
  }

  else
  {
    v6 = sub_244313108();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_2442D31EC@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  if (!*result)
  {
    goto LABEL_10;
  }

  v4 = *(result + 8);
  v5 = *(result + 16);
  v6 = *(result + 24);
  v38 = *result;
  v39 = v4;
  v40 = v5;
  v41 = v6;
  IARFFB_Measurement.unitType.getter(&v37);
  if (v37 <= 1u)
  {
    if (v37)
    {
      result = Table.offset(_:)(8);
      v22 = result + v6;
      if (__OFADD__(result, v6))
      {
LABEL_48:
        __break(1u);
        goto LABEL_49;
      }

      v23 = *(*(v3 + 24) + v22);
      v24 = v22 + v23;
      if (__OFADD__(v22, v23))
      {
LABEL_52:
        __break(1u);
        goto LABEL_53;
      }

      result = Table.offset(_:)(4);
      if (result)
      {
        v25 = result + v24;
        if (__OFADD__(result, v24))
        {
LABEL_54:
          __break(1u);
          goto LABEL_55;
        }

        v26 = Table.directString(at:)(v25);
        countAndFlagsBits = v26.value._countAndFlagsBits;
        object = v26.value._object;
      }

      else
      {
        countAndFlagsBits = 0;
        object = 0;
      }

      v13 = 0;
      goto LABEL_29;
    }

LABEL_10:
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 40) = -1;
    return result;
  }

  if (v37 == 2)
  {
    result = Table.offset(_:)(8);
    v14 = result + v6;
    if (__OFADD__(result, v6))
    {
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    v15 = *(*(v3 + 24) + v14);
    v9 = __OFADD__(v14, v15);
    v16 = v14 + v15;
    if (v9)
    {
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    v32 = v3;
    v33 = v4;
    v34 = v5;
    v35 = v16;

    sub_2442D07A4(&v32, &v36);
    object = 0;
    countAndFlagsBits = v36;
    v13 = 1;
    goto LABEL_29;
  }

  if (v37 == 3)
  {
    result = Table.offset(_:)(8);
    v7 = result + v6;
    if (__OFADD__(result, v6))
    {
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    v8 = *(*(v3 + 24) + v7);
    v9 = __OFADD__(v7, v8);
    v10 = v7 + v8;
    if (v9)
    {
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    v32 = v3;
    v33 = v4;
    v34 = v5;
    v35 = v10;

    sub_244302344(&v32, &v36);
    object = 0;
    countAndFlagsBits = v36;
    v13 = 2;
    goto LABEL_29;
  }

  result = Table.offset(_:)(8);
  v17 = result + v6;
  if (__OFADD__(result, v6))
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v18 = *(v3 + 24);
  v19 = *(v18 + v17);
  v20 = v17 + v19;
  if (__OFADD__(v17, v19))
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  result = Table.offset(_:)(4);
  if (!result)
  {
    goto LABEL_26;
  }

  if (__OFADD__(result, v20))
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v21 = *(v18 + result + v20);
  if (v21 == 2)
  {
    countAndFlagsBits = 0;
    object = 0;
    v13 = 3;
    goto LABEL_29;
  }

  if (v21 == 1)
  {
    object = 0;
    v13 = 3;
    countAndFlagsBits = 2;
  }

  else
  {
LABEL_26:
    object = 0;
    v13 = 3;
    countAndFlagsBits = 1;
  }

LABEL_29:
  result = Table.offset(_:)(4);
  v27 = 0.0;
  if (!result)
  {
    goto LABEL_32;
  }

  if (__OFADD__(result, v6))
  {
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v28 = *(v3 + 24);
  if (*(v28 + result + v6) == 0.0)
  {
LABEL_32:
    v29 = 1;
LABEL_33:
    result = Table.offset(_:)(4);
    if (!result)
    {

      v31 = 0.0;
      goto LABEL_37;
    }

    if (!__OFADD__(result, v6))
    {
      v30 = *(*(v3 + 24) + result + v6);

      v31 = v30;
LABEL_37:
      *a2 = v31;
      *(a2 + 8) = v27;
      *(a2 + 16) = v29;
      *(a2 + 24) = countAndFlagsBits;
      *(a2 + 32) = object;
      *(a2 + 40) = v13;
      return result;
    }

    goto LABEL_44;
  }

  result = Table.offset(_:)(10);
  if (!result)
  {
    v29 = 0;
    goto LABEL_33;
  }

  if (!__OFADD__(result, v6))
  {
    v29 = 0;
    v27 = *(v28 + result + v6);
    goto LABEL_33;
  }

LABEL_55:
  __break(1u);
  return result;
}

uint64_t IARFMeasurement.maxQuantity.getter()
{
  result = *(v0 + 8);
  v2 = *(v0 + 16);
  return result;
}

uint64_t IARFMeasurement.unit.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 40);
  *(a1 + 16) = v4;
  return sub_2442C60D8(v2, v3, v4);
}

uint64_t sub_2442D3594()
{
  v1 = 0x746E61755178616DLL;
  if (*v0 != 1)
  {
    v1 = 1953066613;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x797469746E617571;
  }
}

uint64_t sub_2442D35F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2442D3DCC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2442D3618(uint64_t a1)
{
  v2 = sub_2442D38C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2442D3654(uint64_t a1)
{
  v2 = sub_2442D38C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IARFMeasurement.encode(to:)(void *a1)
{
  v4 = sub_2442C6564(&qword_27EDDEF78, &qword_244315EC0);
  v5 = *(v4 - 8);
  v6 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v8 = &v17 - v7;
  v9 = *v1;
  v20 = v1[1];
  v19 = *(v1 + 16);
  v10 = v1[3];
  v17 = v1[4];
  v18 = v10;
  v11 = *(v1 + 40);
  v12 = a1[4];
  sub_2442C65AC(a1, a1[3]);
  sub_2442D38C4();
  sub_244313238();
  LOBYTE(v22) = 0;
  sub_2443130A8();
  if (!v2)
  {
    v14 = v11;
    v15 = v17;
    v16 = v18;
    LOBYTE(v22) = 1;
    sub_244313078();
    v22 = v16;
    v23 = v15;
    v24 = v14;
    v21 = 2;
    sub_2442C60D8(v16, v15, v14);
    sub_2442D3918();
    sub_2443130C8();
    sub_2442C670C(v22, v23, v24);
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_2442D38C4()
{
  result = qword_27EDDEF80;
  if (!qword_27EDDEF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEF80);
  }

  return result;
}

unint64_t sub_2442D3918()
{
  result = qword_27EDDEF88;
  if (!qword_27EDDEF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEF88);
  }

  return result;
}

uint64_t IARFMeasurement.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_2442C6564(&qword_27EDDEF90, &qword_244315EC8);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v20[-v8];
  v10 = a1[4];
  sub_2442C65AC(a1, a1[3]);
  sub_2442D38C4();
  sub_244313228();
  if (!v2)
  {
    LOBYTE(v21) = 0;
    sub_244313018();
    v12 = v11;
    LOBYTE(v21) = 1;
    v13 = sub_244312FE8();
    v15 = v14;
    v16 = v13;
    v20[15] = 2;
    sub_2442D3B74();
    sub_244313038();
    (*(v6 + 8))(v9, v5);
    v18 = v22;
    v19 = v21;
    *a2 = v12;
    *(a2 + 8) = v16;
    *(a2 + 16) = v15 & 1;
    *(a2 + 24) = v19;
    *(a2 + 40) = v18;
  }

  return sub_2442C6908(a1);
}

unint64_t sub_2442D3B74()
{
  result = qword_27EDDEF98;
  if (!qword_27EDDEF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEF98);
  }

  return result;
}

__n128 sub_2442D3BF8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2442D3C0C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 41))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 40);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_2442D3C54(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

unint64_t sub_2442D3CC8()
{
  result = qword_27EDDEFA0;
  if (!qword_27EDDEFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEFA0);
  }

  return result;
}

unint64_t sub_2442D3D20()
{
  result = qword_27EDDEFA8;
  if (!qword_27EDDEFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEFA8);
  }

  return result;
}

unint64_t sub_2442D3D78()
{
  result = qword_27EDDEFB0;
  if (!qword_27EDDEFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EDDEFB0);
  }

  return result;
}

uint64_t sub_2442D3DCC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x797469746E617571 && a2 == 0xE800000000000000;
  if (v4 || (sub_244313108() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E61755178616DLL && a2 == 0xEB00000000797469 || (sub_244313108() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1953066613 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_244313108();

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

uint64_t sub_2442D3EE8()
{
  v0 = (*(*(sub_2442C6564(&qword_27EDDEFD0, &unk_2443160E0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v2 = &v7 - v1;
  v3 = sub_244312F28();
  sub_2442D4100(v3, qword_27EDDEFB8);
  v4 = sub_2442D40C8(v3, qword_27EDDEFB8);
  sub_244312F18();
  v5 = *(v3 - 8);
  result = (*(v5 + 48))(v2, 1, v3);
  if (result != 1)
  {
    return (*(v5 + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

uint64_t static CodingUserInfoKey.rawJSONProvider.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27EDDE810 != -1)
  {
    swift_once();
  }

  v2 = sub_244312F28();
  v3 = sub_2442D40C8(v2, qword_27EDDEFB8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_2442D40C8(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_2442D4100(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t ByteBuffer.Storage.__allocating_init(count:alignment:)(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 24) = swift_slowAlloc();
  *(v2 + 32) = a1;
  *(v2 + 16) = 0;
  return v2;
}

uint64_t ByteBuffer.Storage.init(count:alignment:)(uint64_t a1)
{
  *(v1 + 24) = swift_slowAlloc();
  *(v1 + 32) = a1;
  *(v1 + 16) = 0;
  return v1;
}

uint64_t ByteBuffer.Storage.__allocating_init(memory:capacity:unowned:)(uint64_t a1, uint64_t a2, char a3)
{
  result = swift_allocObject();
  *(result + 24) = a1;
  *(result + 32) = a2;
  *(result + 16) = a3;
  return result;
}

uint64_t ByteBuffer.Storage.init(memory:capacity:unowned:)(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 24) = a1;
  *(v3 + 32) = a2;
  *(v3 + 16) = a3;
  return v3;
}

uint64_t ByteBuffer.Storage.deinit()
{
  if ((*(v0 + 16) & 1) == 0)
  {
    MEMORY[0x245D5F2C0](*(v0 + 24), -1, -1);
  }

  return v0;
}

uint64_t ByteBuffer.Storage.__deallocating_deinit()
{
  if ((*(v0 + 16) & 1) == 0)
  {
    MEMORY[0x245D5F2C0](*(v0 + 24), -1, -1);
  }

  return swift_deallocClassInstance();
}

void *ByteBuffer.Storage.copy(from:count:)(void *__src, size_t __len)
{
  if ((__len & 0x8000000000000000) == 0)
  {
    return memmove(*(v2 + 24), __src, __len);
  }

  __break(1u);
  return __src;
}

Swift::Void __swiftcall ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(Swift::Int _, Swift::Int writerSize, Swift::Int alignment)
{
  v5 = *(v3 + 32);
  v6 = writerSize + _;
    ;
  }

  v8 = v5 - writerSize;
  *(v3 + 32) = sub_2442DDD90(i);
  v9 = swift_slowAlloc();
  v10 = *(v3 + 32) - writerSize;
  bzero(v9, v10);
  v11 = *(v3 + 24);
  memcpy(&v9[v10], (v11 + v8), writerSize);
  MEMORY[0x245D5F2C0](v11, -1, -1);
  *(v3 + 24) = v9;
}

uint64_t ByteBuffer._storage.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

unint64_t ByteBuffer.size.getter(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(a2))
  {
    return a2;
  }

  __break(1u);
  return result;
}

uint64_t ByteBuffer.init(bytes:)(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for ByteBuffer.Storage();
  v3 = swift_allocObject();

  v4 = swift_slowAlloc();
  *(v3 + 24) = v4;
  *(v3 + 32) = v2;
  *(v3 + 16) = 0;
  v5 = a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_2442D55D8(a1);
  }

  memmove(v4, v5 + 32, *(a1 + 16));

  return v3;
}

uint64_t ByteBuffer.init<A>(contiguousBytes:count:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for ByteBuffer.Storage();
  v6 = swift_allocObject();
  *(v6 + 24) = swift_slowAlloc();
  *(v6 + 32) = a2;
  *(v6 + 16) = 0;
  sub_244312BA8();
  (*(*(a3 - 8) + 8))(a1, a3);
  return v6;
}

uint64_t ByteBuffer.init(assumingMemoryBound:capacity:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ByteBuffer.Storage();
  result = swift_allocObject();
  *(result + 24) = a1;
  *(result + 32) = a2;
  *(result + 16) = 1;
  return result;
}

Swift::Void __swiftcall ByteBuffer.fill(padding:)(Swift::Int padding)
{
  v2 = v1[1];
  v3 = v2 + padding;
  if (*(*v1 + 32) < v2 + padding)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(padding, v2, v1[2]);
  }

  v1[1] = v3;
}

Swift::Int __swiftcall ByteBuffer.ensureSpace(size:)(Swift::Int size)
{
  v2 = v1[1];
  if (*(*v1 + 32) < v2 + size)
  {
    v3 = size;
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(size, v2, v1[2]);
    return v3;
  }

  return size;
}

uint64_t ByteBuffer.push<A>(elements:)(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 - 8) + 64) * sub_244312DD8();
  v4 = v2[1];
  if (*(*v2 + 32) < v3 + v4)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v3, v4, v2[2]);
  }

  v5 = sub_244312DF8();

  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x245D5E890](&v9, v5, WitnessTable);
  MEMORY[0x28223BE20](v7);
  sub_244312F58();
  swift_getWitnessTable();
  sub_244312D98();
}

uint64_t sub_2442D483C(uint64_t a1, Swift::Int *a2, uint64_t a3)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v6 = *(a3 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20]();
  v9 = *(v8 + 8);
  v10 = v9 + v7;
  if (*(*a2 + 32) < (v9 + v7))
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v7, v9, a2[2]);
  }

  (*(v6 + 16))(v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a3);
  memcpy((*(*a2 + 24) + *(*a2 + 32) - (a2[1] + v7)), v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  a2[1] = v10;
  result = (*(v6 + 8))(v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a3);
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t ByteBuffer.push<A>(value:len:)(uint64_t a1, size_t a2, uint64_t a3)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D85DE8];

  return sub_2442D4A04(a1, a2, a3);
}

uint64_t sub_2442D4A04(uint64_t a1, size_t a2, uint64_t a3)
{
  v4 = v3;
  v18[1] = *MEMORY[0x277D85DE8];
  v8 = *(a3 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](a1);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v3;
  v13 = *v3;
  v12 = v14[1];
  v15 = v12 + a2;
  if (*(v13 + 32) < (v12 + a2))
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(a2, v12, v4[2]);
  }

  (*(v8 + 16))(v11, a1, a3);
  memcpy((*(v13 + 24) + *(v13 + 32) - v15), v11, a2);
  v4[1] = v15;
  result = (*(v8 + 8))(v11, a3);
  v17 = *MEMORY[0x277D85DE8];
  return result;
}

Swift::Void __swiftcall ByteBuffer.push(string:len:)(Swift::String string, Swift::Int len)
{
  v3 = v2;
  object = string._object;
  countAndFlagsBits = string._countAndFlagsBits;
  v40[3] = *MEMORY[0x277D85DE8];
  v9 = v2;
  v8 = *v2;
  v7 = v9[1];
  if (*(v8 + 32) < v7 + len)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(len, v7, v3[2]);
  }

  if (sub_2442D4EBC(countAndFlagsBits, object, v3, len) != 2)
  {
    goto LABEL_45;
  }

  v10 = (object & 0x2000000000000000) != 0 ? HIBYTE(object) & 0xF : countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  if (!v10)
  {
    goto LABEL_45;
  }

  v11 = (countAndFlagsBits >> 59) & 1;
  if ((object & 0x1000000000000000) == 0)
  {
    LODWORD(v11) = 1;
  }

  v12 = 11;
  if (v11)
  {
    v12 = 7;
  }

  v13 = v12 | (v10 << 16);
  v14 = 4 << v11;

  v37 = countAndFlagsBits;
  v38 = v3;
  v36 = v10;
  v39 = v14;
  while (1)
  {
    if ((v13 & 0xC) != v14)
    {
      if ((object & 0x1000000000000000) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_20;
    }

    v16 = sub_2442D5AFC(v13, countAndFlagsBits, object);
    if (v16 < 0x4000)
    {
      break;
    }

    v13 = v16;
    if ((object & 0x1000000000000000) == 0)
    {
LABEL_17:
      v13 = (v13 & 0xFFFFFFFFFFFF0000) - 65532;
      goto LABEL_22;
    }

LABEL_20:
    if (v10 < v13 >> 16)
    {
      __break(1u);
LABEL_49:
      __break(1u);
    }

    v13 = sub_244312D38();
LABEL_22:
    v17 = v13;
    if ((v13 & 0xC) == v14)
    {
      v17 = sub_2442D5AFC(v13, countAndFlagsBits, object);
    }

    v18 = v17 >> 16;
    if (v17 >> 16 >= v10)
    {
      goto LABEL_43;
    }

    if ((object & 0x1000000000000000) != 0)
    {
      v20 = sub_244312D58();
    }

    else if ((object & 0x2000000000000000) != 0)
    {
      v40[0] = countAndFlagsBits;
      v40[1] = object & 0xFFFFFFFFFFFFFFLL;
      v20 = *(v40 + v18);
    }

    else
    {
      v19 = (object & 0xFFFFFFFFFFFFFFFLL) + 32;
      if ((countAndFlagsBits & 0x1000000000000000) == 0)
      {
        v19 = sub_244312EF8();
      }

      v20 = *(v19 + v18);
    }

    v21 = v3[1];
    v22 = v21 + 1;
    v23 = *(v8 + 32);
    if (v23 >= (v21 + 1))
    {
      v15 = *(v8 + 24);
    }

    else
    {
      v24 = v3[2];
      v25 = *(v8 + 32);
      do
      {
        v25 *= 2;
      }

      while (v22 >= v25);
      if (v25 < 1)
      {
        v31 = 1;
      }

      else
      {
        if (HIDWORD(v25))
        {
          goto LABEL_49;
        }

        v26 = (v25 - 1) | ((v25 - 1) >> 1) | (((v25 - 1) | ((v25 - 1) >> 1)) >> 2);
        v27 = v26 | (v26 >> 4) | ((v26 | (v26 >> 4)) >> 8);
        v28 = v27 | HIWORD(v27);
        v29 = __CFADD__(v28, 1);
        v30 = v28 + 1;
        if (v29)
        {
          v31 = 0xFFFFFFFFLL;
        }

        else
        {
          v31 = v30;
        }
      }

      v32 = v23 - v21;
      *(v8 + 32) = v31;
      v15 = swift_slowAlloc();
      v33 = *(v8 + 32) - v21;
      bzero(v15, v33);
      v34 = *(v8 + 24);
      memcpy(&v15[v33], (v34 + v32), v21);
      MEMORY[0x245D5F2C0](v34, -1, -1);
      *(v8 + 24) = v15;
      v23 = *(v8 + 32);
      countAndFlagsBits = v37;
      v3 = v38;
      v10 = v36;
    }

    v15[v23 + ~v21] = v20;
    v3[1] = v22;
    v14 = v39;
    if (!(v13 >> 14))
    {
      goto LABEL_44;
    }
  }

  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:

LABEL_45:
  v35 = *MEMORY[0x277D85DE8];
}

uint64_t ByteBuffer.push(bytes:len:)(uint64_t __src, uint64_t a2, size_t a3)
{
  if (__src)
  {
    v4 = v3[1] + a3;
    memcpy((*(*v3 + 24) + *(*v3 + 32) - v4), __src, a3);
    v3[1] = v4;
    return 1;
  }

  else
  {
    __break(1u);
  }

  return __src;
}

uint64_t sub_2442D4EBC(uint64_t a1, uint64_t a2, void *a3, size_t __n)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    return 2;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v9[0] = a1;
    v9[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    v7 = (*(*a3 + 24) + *(*a3 + 32) - (a3[1] + __n));
    v6 = v9;
  }

  else
  {
    if ((a1 & 0x1000000000000000) != 0)
    {
      v6 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      result = sub_244312EF8();
      v6 = result;
      if (!result)
      {
        __break(1u);
        return result;
      }
    }

    v7 = (*(*a3 + 24) + *(*a3 + 32) - (a3[1] + __n));
  }

  memcpy(v7, v6, __n);
  a3[1] += __n;
  return 1;
}

uint64_t ByteBuffer.readSlice<A>(index:count:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 24);
  sub_244312C78();
  sub_244312C88();
  swift_getWitnessTable();
  return sub_244312E08();
}

uint64_t ByteBuffer.readString(at:count:type:)(uint64_t a1, size_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_244312CC8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v13 = *(a4 + 24);
    v14 = sub_2442D54E0(a2, 0);
    memcpy(v14 + 4, (v13 + a1), a2);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  v17[1] = v14;
  (*(v9 + 16))(v12, a3, v8);
  sub_2442C6564(&qword_27EDDE910, &qword_244313BE8);
  sub_2442C90F4();
  v15 = sub_244312CA8();

  return v15;
}

void *ByteBuffer.duplicate(removing:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  v3 = *(a2 + 32);
  type metadata accessor for ByteBuffer.Storage();
  v4 = swift_allocObject();
  result = swift_slowAlloc();
  *(v4 + 24) = result;
  *(v4 + 32) = v3;
  *(v4 + 16) = 0;
  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    memmove(result, v2, v3);
    return v4;
  }

  return result;
}

void *ByteBuffer.underlyingBytes.getter(uint64_t a1, size_t a2)
{
  if (!a2)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = *(a1 + 24);
  v3 = *(a1 + 32) - a2;
  v5 = sub_2442D54E0(a2, 0);
  memcpy(v5 + 4, (v2 + v3), a2);
  return v5;
}

Swift::Int32 __swiftcall ByteBuffer.skipPrefix()()
{
  v1 = *v0;
  v0[1] -= 4;
  return **(v1 + 24);
}

uint64_t ByteBuffer.debugDescription.getter(uint64_t a1, uint64_t a2)
{
  sub_244312E98();
  MEMORY[0x245D5E950](0xD000000000000013, 0x800000024431C280);
  v9 = *(a1 + 24);
  sub_244312F08();
  MEMORY[0x245D5E950](0xD000000000000013, 0x800000024431C2A0);
  v10 = *(a1 + 32);
  v4 = sub_2443130D8();
  MEMORY[0x245D5E950](v4);

  MEMORY[0x245D5E950](0x6574697277207B0ALL, 0xEF203A657A695372);
  v5 = sub_2443130D8();
  MEMORY[0x245D5E950](v5);

  MEMORY[0x245D5E950](0x726564616572202CLL, 0xEE00203A657A6953);
  v11 = *(a1 + 32) - a2;
  v6 = sub_2443130D8();
  MEMORY[0x245D5E950](v6);

  MEMORY[0x245D5E950](0x726574697277202CLL, 0xEF203A7865646E49);
  v12 = *(a1 + 32) - a2;
  v7 = sub_2443130D8();
  MEMORY[0x245D5E950](v7);

  MEMORY[0x245D5E950](32032, 0xE200000000000000);
  return 0;
}

void *sub_2442D54E0(uint64_t a1, uint64_t a2)
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

  sub_2442C6564(&qword_27EDDE920, &qword_244316370);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

void *sub_2442D5554(uint64_t a1, uint64_t a2)
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

  sub_2442C6564(&qword_27EDDEFD8, &qword_2443161A0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 29;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 2);
  return result;
}

uint64_t sub_2442D55EC(unint64_t *a1, uint64_t *a2, uint64_t a3, unint64_t a4)
{
  v34 = *MEMORY[0x277D85DE8];
  v11 = *a1;
  v10 = a1[1];
  v12 = v10 >> 62;
  if ((v10 >> 62) <= 1)
  {
    if (v12)
    {
      sub_2442D5D94(a3, a4);
      sub_2442D5D94(v11, v10);
      sub_2442D5DE8(v11, v10);
      *&__src = v11;
      *(&__src + 1) = v10 & 0x3FFFFFFFFFFFFFFFLL;
      *a1 = xmmword_244316100;
      sub_2442D5DE8(0, 0xC000000000000000);
      sub_2442D59F4(&__src, a2, a3, a4);
      result = sub_2442D5DE8(a3, a4);
      v23 = *(&__src + 1) | 0x4000000000000000;
      *a1 = __src;
      a1[1] = v23;
LABEL_44:
      v32 = *MEMORY[0x277D85DE8];
      return result;
    }

    v4 = v11 >> 8;
    v5 = v11 >> 16;
    sub_2442D5D94(a3, a4);
    sub_2442D5DE8(v11, v10);
    *&__src = v11;
    WORD4(__src) = v10;
    BYTE10(__src) = BYTE2(v10);
    BYTE11(__src) = BYTE3(v10);
    BYTE12(__src) = BYTE4(v10);
    BYTE13(__src) = BYTE5(v10);
    BYTE14(__src) = BYTE6(v10);
    v13 = a4 >> 62;
    v14 = *a2;
    if ((a4 >> 62) <= 1)
    {
      if (!v13)
      {
        v15 = BYTE6(a4);
LABEL_37:
        memcpy(*(v14 + 24), &__src, v15);
        v30 = __src;
        v31 = DWORD2(__src) | ((WORD6(__src) | (BYTE14(__src) << 16)) << 32);
        sub_2442D5DE8(a3, a4);
        result = sub_2442D5DE8(a3, a4);
        *a1 = v30;
        a1[1] = v31;
        goto LABEL_44;
      }

      goto LABEL_28;
    }

    if (v13 != 2)
    {
      v15 = 0;
      goto LABEL_37;
    }

    v26 = *(a3 + 16);
    v24 = *(a3 + 24);
    v15 = v24 - v26;
    if (!__OFSUB__(v24, v26))
    {
LABEL_30:
      if ((v15 & 0x8000000000000000) == 0)
      {
        goto LABEL_37;
      }

      __break(1u);
      goto LABEL_32;
    }

    __break(1u);
    goto LABEL_20;
  }

  if (v12 != 2)
  {
    *(&__src + 7) = 0;
    *&__src = 0;
    v14 = *a2;
    v24 = a4 >> 62;
    if ((a4 >> 62) <= 1)
    {
      if (v24)
      {
LABEL_32:
        if (__OFSUB__(HIDWORD(a3), a3))
        {
LABEL_48:
          __break(1u);
LABEL_49:
          __break(1u);
        }

        v25 = HIDWORD(a3) - a3;
        goto LABEL_34;
      }

      v25 = BYTE6(a4);
      goto LABEL_35;
    }

LABEL_20:
    v25 = 0;
    if (v24 == 2)
    {
      v27 = *(a3 + 16);
      v20 = *(a3 + 24);
      v25 = v20 - v27;
      if (!__OFSUB__(v20, v27))
      {
LABEL_34:
        if ((v25 & 0x8000000000000000) == 0)
        {
          goto LABEL_35;
        }

        goto LABEL_46;
      }

      __break(1u);
      goto LABEL_24;
    }

LABEL_35:
    memcpy(*(v14 + 24), &__src, v25);
    result = sub_2442D5DE8(a3, a4);
    goto LABEL_44;
  }

  sub_2442D5D94(a3, a4);

  sub_2442D5DE8(v11, v10);
  *&__src = v11;
  *(&__src + 1) = v10 & 0x3FFFFFFFFFFFFFFFLL;
  *a1 = xmmword_244316100;
  sub_2442D5DE8(0, 0xC000000000000000);
  sub_244312BC8();
  v10 = *(&__src + 1);
  v4 = __src;
  v16 = *(__src + 16);
  v17 = sub_244312B68();
  if (v17)
  {
    v11 = v17;
    v18 = sub_244312B88();
    v19 = __OFSUB__(v16, v18);
    v5 = v16 - v18;
    if (v19)
    {
      __break(1u);
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    sub_244312B78();
    v14 = *a2;
    v20 = a4 >> 62;
    if ((a4 >> 62) <= 1)
    {
      if (!v20)
      {
        v21 = BYTE6(a4);
        goto LABEL_43;
      }

      if (__OFSUB__(HIDWORD(a3), a3))
      {
        goto LABEL_49;
      }

      v21 = HIDWORD(a3) - a3;
LABEL_40:
      if ((v21 & 0x8000000000000000) != 0)
      {
        __break(1u);
        goto LABEL_42;
      }

LABEL_43:
      memmove(*(v14 + 24), (v11 + v5), v21);
      sub_2442D5DE8(a3, a4);
      result = sub_2442D5DE8(a3, a4);
      *a1 = v4;
      a1[1] = v10 | 0x8000000000000000;
      goto LABEL_44;
    }

LABEL_24:
    if (v20 != 2)
    {
LABEL_42:
      v21 = 0;
      goto LABEL_43;
    }

    v29 = *(a3 + 16);
    v28 = *(a3 + 24);
    v21 = v28 - v29;
    if (__OFSUB__(v28, v29))
    {
      __break(1u);
LABEL_28:
      if (__OFSUB__(HIDWORD(a3), a3))
      {
LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

      v15 = HIDWORD(a3) - a3;
      goto LABEL_30;
    }

    goto LABEL_40;
  }

  result = sub_2442D5DE8(a3, a4);
  __break(1u);
  return result;
}

uint64_t sub_2442D59F4(int *a1, uint64_t *a2, uint64_t a3, unint64_t a4)
{
  result = sub_244312BD8();
  v9 = *a1;
  if (a1[1] < v9)
  {
    __break(1u);
    goto LABEL_18;
  }

  v10 = *(a1 + 1);

  result = sub_244312B68();
  if (result)
  {
    v11 = result;
    result = sub_244312B88();
    v12 = __OFSUB__(v9, result);
    v13 = v9 - result;
    if (!v12)
    {
      result = sub_244312B78();
      v14 = *a2;
      v15 = a4 >> 62;
      if ((a4 >> 62) > 1)
      {
        if (v15 != 2)
        {
          goto LABEL_15;
        }

        v18 = *(a3 + 16);
        v17 = *(a3 + 24);
        v16 = v17 - v18;
        if (!__OFSUB__(v17, v18))
        {
LABEL_13:
          if ((v16 & 0x8000000000000000) == 0)
          {
            goto LABEL_16;
          }

          __break(1u);
LABEL_15:
          v16 = 0;
          goto LABEL_16;
        }

        __break(1u);
      }

      else if (!v15)
      {
        v16 = BYTE6(a4);
LABEL_16:
        memmove(*(v14 + 24), (v11 + v13), v16);

        return sub_2442D5DE8(a3, a4);
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        v16 = HIDWORD(a3) - a3;
        goto LABEL_13;
      }

      goto LABEL_19;
    }

LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2442D5AFC(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_244312D68();
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
    v5 = MEMORY[0x245D5E980](15, a1 >> 16);
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

uint64_t _s11CookingData10ByteBufferV4dataAC10Foundation0B0V_tcfC_0(uint64_t result, unint64_t a2)
{
  v3 = result;
  v9 = result;
  v10 = a2;
  v4 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    v5 = 0;
    if (v4 != 2)
    {
      goto LABEL_11;
    }

    v7 = *(result + 16);
    v6 = *(result + 24);
    v5 = v6 - v7;
    if (!__OFSUB__(v6, v7))
    {
LABEL_10:
      sub_2442D5D94(result, a2);
      goto LABEL_11;
    }

    __break(1u);
  }

  else if (!v4)
  {
    v5 = BYTE6(a2);
LABEL_11:
    type metadata accessor for ByteBuffer.Storage();
    v8 = swift_allocObject();
    *(v8 + 24) = swift_slowAlloc();
    *(v8 + 32) = v5;
    *(v8 + 16) = 0;
    v11[0] = v8;
    sub_2442D55EC(&v9, v11, v3, a2);
    sub_2442D5DE8(v9, v10);
    return v8;
  }

  if (!__OFSUB__(HIDWORD(result), result))
  {
    v5 = HIDWORD(result) - result;
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

void *sub_2442D5C64(void *__src, uint64_t a2)
{
  if (__src)
  {
    return memmove(*(**(v2 + 16) + 24), __src, a2 - __src);
  }

  __break(1u);
  return __src;
}

__n128 sub_2442D5CA8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_2442D5CBC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_2442D5D04(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_2442D5D94(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_2442D5DE8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t ByteBuffer.push<A>(struct:size:)(uint64_t a1, size_t a2, uint64_t a3)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D85DE8];

  return ByteBuffer.push<A>(value:len:)(a1, a2, a3);
}

uint64_t Scalar<>.convertedEndian.getter(uint64_t a1)
{
  v3 = *(*(a1 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v1, a1);
  swift_getAssociatedTypeWitness();
  return swift_dynamicCast();
}

uint64_t FlatBufferBuilder.VTableStorage.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = 8;
  *(v0 + 56) = 0;
  *(v0 + 64) = 0;
  *(v0 + 72) = 0;
  *(v0 + 80) = 0;
  v1 = swift_slowAlloc();
  *(v0 + 32) = v1;
  *(v0 + 40) = v1;
  *(v0 + 48) = 0;
  return v0;
}

uint64_t FlatBufferBuilder._vtableStorage.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t FlatBufferBuilder._bb.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3[1];

  v3[1] = a1;
  v3[2] = a2;
  v3[3] = a3;
  return result;
}

uint64_t FlatBufferBuilder._minAlignment.setter(uint64_t result)
{
  *(v1 + 64) = result;
  *(v1 + 24) = result;
  return result;
}

uint64_t sub_2442D6208(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
    *(*result + 24) = *(*result + 64);
  }

  return result;
}

unint64_t FlatBufferBuilder.size.getter()
{
  result = *(v0 + 16);
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (HIDWORD(result))
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t FlatBufferBuilder.data.getter()
{
  v1 = *(v0 + 16);
  if (!v1)
  {
    return 0;
  }

  if (v1 <= 14)
  {
    return sub_2442DD4CC((*(*(v0 + 8) + 24) + *(*(v0 + 8) + 32) - v1), (*(*(v0 + 8) + 24) + *(*(v0 + 8) + 32)));
  }

  v2 = sub_244312B98();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  sub_244312B58();
  if (v1 < 0x7FFFFFFF)
  {
    return v1 << 32;
  }

  sub_244312BE8();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = v1;
  return result;
}

void *FlatBufferBuilder.fullSizedByteArray.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v1 + 32);
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = *(v1 + 24);
  sub_2442C6564(&qword_27EDDE920, &qword_244316370);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = v2;
  v4[3] = 2 * v5 - 64;
  memcpy(v4 + 4, v3, v2);
  return v4;
}

void *FlatBufferBuilder.sizedByteArray.getter()
{
  v1 = *(v0 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = *(v0 + 8);
  v3 = *(v2 + 24);
  v4 = *(v2 + 32) - v1;
  v5 = sub_2442D54E0(*(v0 + 16), 0);
  memcpy(v5 + 4, (v3 + v4), v1);
  return v5;
}

uint64_t _s11CookingData17FlatBufferBuilderV3_bbAA04ByteD0Vvg_0()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
}

void FlatBufferBuilder.sizedBuffer.getter()
{
  v1 = *(v0 + 16);
  if ((v1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(v1))
  {
    v2 = *(v0 + 8);
    v3 = *(v2 + 24);
    v4 = *(v2 + 32);
    type metadata accessor for ByteBuffer.Storage();
    v5 = swift_allocObject();
    v6 = swift_slowAlloc();
    *(v5 + 24) = v6;
    *(v5 + 32) = v1;
    *(v5 + 16) = 0;
    memmove(v6, (v3 + v4 - v1), v1);
    return;
  }

  __break(1u);
}

__n128 FlatBufferBuilder.init(initialSize:serializeDefaults:)@<Q0>(int a1@<W0>, char a2@<W1>, uint64_t a3@<X8>)
{
  sub_2442DD584(a1, a2, v6);
  v4 = v6[3];
  *(a3 + 32) = v6[2];
  *(a3 + 48) = v4;
  *(a3 + 64) = v7;
  result = v6[1];
  *a3 = v6[0];
  *(a3 + 16) = result;
  return result;
}

Swift::Void __swiftcall FlatBufferBuilder.clear()()
{
  v0[8] = 0;
  v0[3] = 0;
  *(v0 + 40) = 0;
  if (*(v0[6] + 16))
  {
    swift_isUniquelyReferenced_nonNull_native();
    v9 = v0[6];
    sub_2442C6564(&qword_27EDDEFE0, &qword_244316378);
    sub_244312F38();
    v0[6] = v9;
  }

  v1 = v0[4];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = v0[4];
  if (isUniquelyReferenced_nonNull_native)
  {
    sub_2442DD728(0, *(v3 + 16));
  }

  else
  {
    v4 = sub_2442D5554(0, *(v3 + 24) >> 1);

    v0[4] = v4;
  }

  v5 = *v0;
  *(v5 + 64) = 0;
  *(v5 + 72) = 0;
  *(v5 + 80) = 0;
  *(v0 + 1) = xmmword_2443160F0;
  v6 = v0[1];
  v7 = *(v6 + 24);
  v8 = *(v6 + 32);

  bzero(v7, v8);
}

void FlatBufferBuilder.finish(offset:fileId:addPrefix:)(int *a1, unint64_t a2, unint64_t a3, char a4)
{
  v47[3] = *MEMORY[0x277D85DE8];
  v6 = v4[2];
  if (v6 > 0xFFFFFFFFLL)
  {
    goto LABEL_58;
  }

  v7 = v4;
  v8 = v4[8];
  if (a4)
  {
    v9 = -12;
  }

  else
  {
    v9 = -8;
  }

  if ((v6 | v8) < 0)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  if (v8 > 0xFFFFFFFFLL)
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v10 = v8 != 0;
  v11 = v8 - 1;
  if (!v10)
  {
LABEL_61:
    __break(1u);
  }

  v41 = *a1;
  v13 = (v9 - v6) & v11;
  v14 = v6 + v13;
  v15 = v4[1];
  if (*(v15 + 32) < v6 + v13)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v13, v6, v7[3]);
  }

  v7[2] = v14;
  if (*(v15 + 32) < v14 + 4)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(4, v14, v7[3]);
  }

  if (sub_2442D4EBC(a2, a3, v7 + 1, 4uLL) != 2)
  {
    goto LABEL_55;
  }

  v16 = (a3 & 0x2000000000000000) != 0 ? HIBYTE(a3) & 0xF : a2 & 0xFFFFFFFFFFFFLL;
  if (!v16)
  {
    goto LABEL_55;
  }

  v17 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LODWORD(v17) = 1;
  }

  v18 = 11;
  if (v17)
  {
    v18 = 7;
  }

  v19 = v18 | (v16 << 16);
  v20 = 4 << v17;

  v44 = a2;
  v45 = v7;
  v43 = v16;
  v46 = v20;
  while (1)
  {
    if ((v19 & 0xC) != v20)
    {
      if ((a3 & 0x1000000000000000) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_30;
    }

    v22 = sub_2442D5AFC(v19, a2, a3);
    if (v22 < 0x4000)
    {
      break;
    }

    v19 = v22;
    if ((a3 & 0x1000000000000000) == 0)
    {
LABEL_27:
      v19 = (v19 & 0xFFFFFFFFFFFF0000) - 65532;
      goto LABEL_32;
    }

LABEL_30:
    if (v16 < v19 >> 16)
    {
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
      goto LABEL_59;
    }

    v19 = sub_244312D38();
LABEL_32:
    v23 = v19;
    if ((v19 & 0xC) == v20)
    {
      v23 = sub_2442D5AFC(v19, a2, a3);
    }

    v24 = v23 >> 16;
    if (v23 >> 16 >= v16)
    {
      goto LABEL_53;
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      v26 = sub_244312D58();
    }

    else if ((a3 & 0x2000000000000000) != 0)
    {
      v47[0] = a2;
      v47[1] = a3 & 0xFFFFFFFFFFFFFFLL;
      v26 = *(v47 + v24);
    }

    else
    {
      v25 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
      if ((a2 & 0x1000000000000000) == 0)
      {
        v25 = sub_244312EF8();
      }

      v26 = *(v25 + v24);
    }

    v27 = v7[2];
    v28 = v27 + 1;
    v29 = *(v15 + 32);
    if (v29 >= (v27 + 1))
    {
      v21 = *(v15 + 24);
    }

    else
    {
      v30 = v7[3];
      v31 = *(v15 + 32);
      do
      {
        v31 *= 2;
      }

      while (v28 >= v31);
      if (v31 < 1)
      {
        v36 = 1;
      }

      else
      {
        if (HIDWORD(v31))
        {
          goto LABEL_57;
        }

        v32 = (v31 - 1) | ((v31 - 1) >> 1) | (((v31 - 1) | ((v31 - 1) >> 1)) >> 2);
        v33 = v32 | (v32 >> 4) | ((v32 | (v32 >> 4)) >> 8);
        v34 = v33 | HIWORD(v33);
        v10 = __CFADD__(v34, 1);
        v35 = v34 + 1;
        if (v10)
        {
          v36 = 0xFFFFFFFFLL;
        }

        else
        {
          v36 = v35;
        }
      }

      v37 = v29 - v27;
      *(v15 + 32) = v36;
      v21 = swift_slowAlloc();
      v38 = *(v15 + 32) - v27;
      bzero(v21, v38);
      v39 = *(v15 + 24);
      memcpy(&v21[v38], (v39 + v37), v27);
      MEMORY[0x245D5F2C0](v39, -1, -1);
      *(v15 + 24) = v21;
      v29 = *(v15 + 32);
      a2 = v44;
      v7 = v45;
      v16 = v43;
    }

    v21[v29 + ~v27] = v26;
    v7[2] = v28;
    v20 = v46;
    if (!(v19 >> 14))
    {
      goto LABEL_54;
    }
  }

  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:

LABEL_55:

  LODWORD(v47[0]) = v41;
  FlatBufferBuilder.finish(offset:addPrefix:)(v47, a4 & 1);
  v40 = *MEMORY[0x277D85DE8];
}

Swift::Void __swiftcall FlatBufferBuilder.preAlign(len:alignment:)(Swift::Int len, Swift::Int alignment)
{
  if (v2[8] < alignment)
  {
    v2[8] = alignment;
    v2[3] = alignment;
  }

  v4 = v2[2];
  if (v4 > 0xFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (len > 0xFFFFFFFFLL)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if ((alignment | len | v4) < 0)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (alignment > 0xFFFFFFFFLL)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    return;
  }

  v5 = alignment != 0;
  v6 = alignment - 1;
  if (!v5)
  {
    goto LABEL_16;
  }

  v7 = v6 & -(len + v4);
  v8 = v4 + v7;
  if (*(v2[1] + 32) < v4 + v7)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v7, v4, v2[3]);
  }

  v2[2] = v8;
}

void FlatBufferBuilder.finish(offset:addPrefix:)(int *a1, char a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = v2[2];
  if (v4 > 0xFFFFFFFFLL)
  {
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v5 = v2;
  v6 = v2[8];
  if (a2)
  {
    v7 = -8;
  }

  else
  {
    v7 = -4;
  }

  if ((v4 | v6) < 0)
  {
    goto LABEL_30;
  }

  if (v6 > 0xFFFFFFFFLL)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (!v6)
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v8 = *a1;
  v9 = (v7 - v4) & (v6 - 1);
  v10 = v4 + v9;
  v11 = v2[1];
  if (*(v11 + 32) < v4 + v9)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v9, v4, v5[3]);
  }

  v5[2] = v10;
  if (v6 <= 3)
  {
    v5[8] = 4;
    v5[3] = 4;
  }

  if ((v10 & 0x8000000000000000) != 0)
  {
    goto LABEL_33;
  }

  if (HIDWORD(v10))
  {
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v12 = -v10 & 3;
  v13 = v12 + v10;
  if (*(v11 + 32) < (v12 + v10))
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v12, v10, v5[3]);
  }

  v5[2] = v13;
  if (HIDWORD(v13))
  {
    goto LABEL_35;
  }

  v14 = v13 - v8 + 4;
  v15 = -v13 & 3;
  v16 = v15 + v13;
  if (*(v11 + 32) < (v15 + v13))
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v15, v13, v5[3]);
  }

  v5[2] = v16;
  v17 = v16 + 4;
  v18 = *(v11 + 32);
  if (v18 < (v16 + 4))
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(4, v16, v5[3]);
    v18 = *(v11 + 32);
  }

  *(*(v11 + 24) + v18 - v16 - 4) = v14;
  v5[2] = v17;
  if (v16 > 0xFFFFFFFB)
  {
    goto LABEL_36;
  }

  if (a2)
  {
    v19 = -v16 & 3;
    v20 = v19 + v17;
    if (*(v11 + 32) < (v19 + v17))
    {
      ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v19, v16 + 4, v5[3]);
    }

    v5[2] = v20;
    v21 = *(v11 + 32);
    if (v21 < (v20 + 4))
    {
      ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(4, v20, v5[3]);
      v21 = *(v11 + 32);
    }

    *(*(v11 + 24) + v21 - v20 - 4) = v17;
    v5[2] = v20 + 4;
    if (v20 > 0xFFFFFFFB)
    {
LABEL_37:
      __break(1u);
    }
  }

  v22 = *v5;
  *(v22 + 64) = 0;
  *(v22 + 72) = 0;
  *(v22 + 80) = 0;
  *(v5 + 56) = 1;
  v23 = *MEMORY[0x277D85DE8];
}

Swift::Int FlatBufferBuilder.push<A>(element:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v15[1] = *MEMORY[0x277D85DE8];
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1);
  if (v2[8] < v7)
  {
    v2[8] = v7;
    v2[3] = v7;
  }

  v8 = v2[2];
  if (v8 > 0xFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_15;
  }

  if ((v8 | v7) < 0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v7 > 0xFFFFFFFFLL)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (!v7)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
  }

  v9 = (v7 - 1) & (-v8 - v7);
  v10 = v8 + v9;
  v11 = v2[1];
  if (*(v11 + 32) < v8 + v9)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v9, v8, v3[3]);
  }

  v3[2] = v10;
  v12 = v10 + v7;
  if (*(v11 + 32) < v10 + v7)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v7, v10, v3[3]);
  }

  (*(v6 + 16))(v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2);
  memcpy((*(v11 + 24) + *(v11 + 32) - v12), v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  v3[2] = v12;
  (*(v6 + 8))(v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  if ((v12 & 0x8000000000000000) != 0)
  {
    goto LABEL_18;
  }

  if (HIDWORD(v12))
  {
    goto LABEL_19;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v10 + v7;
}

Swift::UInt32 __swiftcall FlatBufferBuilder.startTable(with:)(Swift::Int with)
{
  *(v1 + 40) = 1;
  v2 = *v1;
  v3 = 8 * with;
  if (*(*v1 + 56) < *(*v1 + 80) + 8 * with)
  {
    if (*(v2 + 48))
    {
      goto LABEL_11;
    }

    v4 = *(v2 + 32);
    if (v4)
    {
      MEMORY[0x245D5F2C0](v4, -1, -1);
    }

    v5 = swift_slowAlloc();
    *(v2 + 32) = v5;
    *(v2 + 40) = v5 + v3;
    *(v2 + 48) = 0;
    *(v2 + 56) = v3;
  }

  with = v1[2];
  if (with < 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(with))
  {
    return with;
  }

  __break(1u);
LABEL_11:
  __break(1u);
  return with;
}

Swift::Void __swiftcall FlatBufferBuilder.minAlignment(size:)(Swift::Int size)
{
  if (*(v1 + 64) < size)
  {
    *(v1 + 64) = size;
    *(v1 + 24) = size;
  }
}

Swift::UInt32 __swiftcall FlatBufferBuilder.padding(bufSize:elementSize:)(Swift::UInt32 bufSize, Swift::UInt32 elementSize)
{
  if (elementSize)
  {
    return (elementSize - 1) & -bufSize;
  }

  __break(1u);
  return bufSize;
}

void FlatBufferBuilder.preAlign<A>(len:type:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*(a3 - 8) + 64);
  if (v3[8] < v4)
  {
    v3[8] = v4;
    v3[3] = v4;
  }

  v5 = v3[2];
  if (v5 > 0xFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (a1 > 0xFFFFFFFFLL)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if ((v4 | a1 | v5) < 0)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v4 > 0xFFFFFFFFLL)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    return;
  }

  v6 = v4 != 0;
  v7 = v4 - 1;
  if (!v6)
  {
    goto LABEL_16;
  }

  v8 = v7 & -(a1 + v5);
  v9 = v5 + v8;
  if (*(v3[1] + 32) < v5 + v8)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v8, v5, v3[3]);
  }

  v3[2] = v9;
}

Swift::Void __swiftcall FlatBufferBuilder.track(offset:at:)(Swift::UInt32 offset, Swift::UInt16 at)
{
  v3 = *v2;
  if (*(*v2 + 48))
  {
    __break(1u);
  }

  else
  {
    v4 = *(v3 + 32);
    if (v4)
    {
      v5 = v4 + *(v3 + 80);
      *v5 = offset;
      *(v5 + 4) = at;
    }

    *(v3 + 72) = vaddq_s64(*(v3 + 72), xmmword_244316360);
    v6 = *(v3 + 64);
    if (v6 <= at)
    {
      LOWORD(v6) = at;
    }

    *(v3 + 64) = v6;
  }
}

Swift::Void __swiftcall FlatBufferBuilder.startVector(_:elementSize:)(Swift::Int _, Swift::Int elementSize)
{
  v3 = v2;
  *(v2 + 40) = 1;
  v5 = *(v2 + 64);
  if (v5 <= 3)
  {
    v5 = 4;
    *(v2 + 64) = 4;
    *(v2 + 24) = 4;
  }

  v6 = *(v2 + 16);
  if (v6 > 0xFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_18;
  }

  v7 = elementSize * _;
  if ((v6 | (elementSize * _)) < 0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v7 > 0xFFFFFFFFLL)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v8 = (-v6 - v7) & 3;
  v9 = v8 + v6;
  v10 = *(v2 + 8);
  if (*(v10 + 32) < v8 + v6)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v8, v6, v3[3]);
  }

  v3[2] = v9;
  if (v5 < elementSize)
  {
    v3[8] = elementSize;
    v3[3] = elementSize;
  }

  if (v9 > 0xFFFFFFFFLL)
  {
    goto LABEL_20;
  }

  if ((v9 | elementSize) < 0)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (elementSize > 0xFFFFFFFFLL)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (!elementSize)
  {
LABEL_23:
    __break(1u);
    return;
  }

  v11 = (elementSize - 1) & -(v7 + v9);
  v12 = v9 + v11;
  if (*(v10 + 32) < v9 + v11)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v11, v9, v3[3]);
  }

  v3[2] = v12;
}

void FlatBufferBuilder.endVector(len:)(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v13 = *MEMORY[0x277D85DE8];
  *(v2 + 40) = 0;
  if (a1 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = a1;
  if (a1 > 0x7FFFFFFF)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v5 = v2;
  if (*(v2 + 64) <= 3)
  {
    *(v2 + 64) = 4;
    *(v2 + 24) = 4;
  }

  v6 = *(v2 + 16);
  if ((v6 & 0x8000000000000000) != 0)
  {
    goto LABEL_15;
  }

  if (HIDWORD(v6))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v7 = -*(v2 + 16) & 3;
  v8 = v7 + v6;
  v9 = *(v2 + 8);
  if (*(v9 + 32) < (v7 + v6))
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v7, v6, *(v5 + 24));
  }

  *(v5 + 16) = v8;
  v10 = v8 + 4;
  v11 = *(v9 + 32);
  if (v11 < (v8 + 4))
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(4, v8, *(v5 + 24));
    v11 = *(v9 + 32);
  }

  *(*(v9 + 24) + v11 - v8 - 4) = v4;
  *(v5 + 16) = v10;
  if (v8 > 0xFFFFFFFB)
  {
LABEL_17:
    __break(1u);
  }

  *a2 = v10;
  v12 = *MEMORY[0x277D85DE8];
}