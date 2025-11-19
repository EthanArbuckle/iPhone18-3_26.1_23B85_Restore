void sub_1D1448540()
{
  sub_1D15A2838();
  if (v0 <= 0x3F)
  {
    sub_1D14485DC(319, &qword_1EE059780);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D14485DC(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1D15A4118();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t DiagramConfiguration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D1448B94(0, &qword_1EE05B550, sub_1D1448BFC, &type metadata for DiagramConfiguration.CodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00]();
  v9 = &v30 - v8;
  v10 = a1[3];
  v31 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_1D1448BFC();
  sub_1D15A4CD8();
  if (v2)
  {
    v11 = v31;
    return __swift_destroy_boxed_opaque_existential_1(v11);
  }

  v13 = sub_1D15A4A88();
  v14 = *(v13 + 16);
  if (v14)
  {
    v15 = *(v13 + v14 + 31);

    if (v15 > 2)
    {
      if (v15 == 3)
      {
        v42 = 3;
        sub_1D1599720();
        sub_1D15A4A78();
        (*(v7 + 8))(v9, v6);
        v21 = 0;
        LOBYTE(v22) = 0;
        v23 = 0;
        v16 = *(&v33 + 7);
        v17 = HIWORD(v33);
        v32 = v33;
        v18 = v34;
        v29 = 0x10000;
        if (!BYTE2(v34))
        {
          v29 = 0;
        }

        v27 = v29 | (BYTE1(v34) << 8) | v34;
        v26 = 96;
        v25 = *(&v32 + 1);
        v24 = v32;
      }

      else if (v15 == 4)
      {
        LOBYTE(v32) = 4;
        sub_1D15996CC();
        sub_1D15A4A78();
        (*(v7 + 8))(v9, v6);
        v25 = *(&v33 + 1);
        v24 = v33;
        v27 = v34;
        v16 = v35;
        v18 = v36;
        v19 = v37;
        v20 = v38;
        v17 = v40;
        v21 = v39 & 0x3FFFFFFFFFFFFFFLL;
        v26 = v41 & 1 | 0x80;
        v22 = v36 >> 8;
        v23 = v36 & 0xFFFFFFFFFFFF0000;
      }

      else
      {
        LOBYTE(v32) = 5;
        sub_1D1599678();
        sub_1D15A4A78();
        (*(v7 + 8))(v9, v6);
        v21 = 0;
        LOBYTE(v22) = 0;
        v23 = 0;
        v24 = v33;
        v26 = -96;
      }
    }

    else if (v15)
    {
      if (v15 == 1)
      {
        LOBYTE(v32) = 1;
        sub_1D1599774();
        sub_1D15A4A78();
        (*(v7 + 8))(v9, v6);
        v21 = 0;
        LOBYTE(v22) = 0;
        v23 = 0;
        v25 = *(&v33 + 1);
        v24 = v33;
        v26 = 32;
        v27 = v34;
      }

      else
      {
        LOBYTE(v32) = 2;
        sub_1D14494E0();
        sub_1D15A4A78();
        (*(v7 + 8))(v9, v6);
        v21 = 0;
        v23 = 0;
        v25 = *(&v33 + 1);
        v24 = v33;
        v27 = v34 | (WORD2(v34) << 32);
        v16 = v35;
        v18 = v36;
        LOBYTE(v22) = BYTE1(v36);
        v42 = v36;
        v26 = 64;
      }
    }

    else
    {
      LOBYTE(v32) = 0;
      sub_1D15997C8();
      sub_1D15A4A78();
      (*(v7 + 8))(v9, v6);
      v21 = 0;
      v26 = 0;
      v25 = *(&v33 + 1);
      v24 = v33;
      v27 = v34;
      v16 = v35;
      v18 = v36;
      v28 = v36 | ((WORD2(v36) | (BYTE6(v36) << 16)) << 32);
      v22 = v28 >> 8;
      v23 = v28 & 0xFFFFFFFFFF0000;
    }

    v11 = v31;
    *a2 = v24;
    *(a2 + 8) = v25;
    *(a2 + 16) = v27;
    *(a2 + 24) = v16;
    *(a2 + 32) = v23 | (v22 << 8) | v18;
    *(a2 + 40) = v19;
    *(a2 + 56) = v20;
    *(a2 + 72) = v21;
    *(a2 + 80) = v17;
    *(a2 + 88) = v26;
    return __swift_destroy_boxed_opaque_existential_1(v11);
  }

  __break(1u);
  return result;
}

void sub_1D1448B94(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_1D1448BFC()
{
  result = qword_1EE05B770;
  if (!qword_1EE05B770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE05B770);
  }

  return result;
}

unint64_t sub_1D1448C58()
{
  result = qword_1EE05B768;
  if (!qword_1EE05B768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE05B768);
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1D1448CF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D1448D18(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D1448D18(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7496034 && a2 == 0xE300000000000000;
  if (v3 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x72656E6E6162 && a2 == 0xE600000000000000 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701734764 && a2 == 0xE400000000000000 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x796C6E4F73697861 && a2 == 0xE800000000000000 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7562697274736964 && a2 == 0xEC0000006E6F6974 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D15C2B00 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_1D15A4BA8();

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

unint64_t sub_1D1448F28()
{
  result = qword_1EE05B760;
  if (!qword_1EE05B760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE05B760);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DateRange(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_1D1449014()
{
  v1 = *v0;
  v2 = 7496034;
  v3 = 0x796C6E4F73697861;
  v4 = 0x7562697274736964;
  if (v1 != 4)
  {
    v4 = 0xD000000000000011;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x72656E6E6162;
  if (v1 != 1)
  {
    v5 = 1701734764;
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

uint64_t DiagramConfiguration.Line.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D1448B94(0, &qword_1EE05B440, sub_1D1449604, &type metadata for DiagramConfiguration.Line.CodingKeys, MEMORY[0x1E69E6F48]);
  v22 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00]();
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1449604();
  sub_1D15A4CD8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v9 = v6;
  sub_1D1449658();
  v27 = 0;
  sub_1D14496A8(&qword_1EE05B468, sub_1D1449714);
  v10 = v22;
  sub_1D15A4A78();
  v11 = v23;
  v27 = 1;
  sub_1D144AB70();
  sub_1D15A4A28();
  v20 = v25;
  v21 = v23;
  v12 = v24;
  v27 = 2;
  sub_1D144C2F4();
  sub_1D15A4A78();
  v19 = v12;
  v13 = v23;
  v26 = v24;
  v27 = 3;
  sub_1D144D050();
  sub_1D15A4A78();
  v15 = v19 | (v20 << 32);
  (*(v9 + 8))(v8, v10);
  v16 = v23;
  v17 = v26;
  v18 = v21;
  *a2 = v11;
  *(a2 + 8) = v18;
  *(a2 + 20) = WORD2(v15);
  *(a2 + 16) = v15;
  *(a2 + 24) = v13;
  *(a2 + 32) = v17;
  *(a2 + 33) = v16;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1D1449424()
{
  result = qword_1EE05B4A0;
  if (!qword_1EE05B4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE05B4A0);
  }

  return result;
}

unint64_t sub_1D144947C()
{
  result = qword_1EE05B4A8;
  if (!qword_1EE05B4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE05B4A8);
  }

  return result;
}

unint64_t sub_1D14494E0()
{
  result = qword_1EE05B498;
  if (!qword_1EE05B498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE05B498);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for DateRange(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1D1449604()
{
  result = qword_1EE05B4B0;
  if (!qword_1EE05B4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE05B4B0);
  }

  return result;
}

void sub_1D1449658()
{
  if (!qword_1EE05B470)
  {
    v0 = sub_1D15A4118();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE05B470);
    }
  }
}

uint64_t sub_1D14496A8(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1D1449658();
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D1449714()
{
  result = qword_1EE05B4D0;
  if (!qword_1EE05B4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE05B4D0);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for TimeBasedDistributionChartPoint.PointKind(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t DiagramConfiguration.LineProperties.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_1D1448B94(0, &qword_1EE05B448, sub_1D1449D38, &type metadata for DiagramConfiguration.LineProperties.CodingKeys, MEMORY[0x1E69E6F48]);
  v30 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00]();
  v8 = &v21 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1449D38();
  sub_1D15A4CD8();
  if (!v2)
  {
    v28 = a2;
    v29 = v6;
    v35 = 0;
    sub_1D1449E34();
    sub_1D15A4A78();
    v9 = v31;
    v35 = 1;
    v10 = sub_1D144A26C();
    sub_1D15A4A78();
    v34 = v9;
    v11 = v31;
    v35 = 2;
    sub_1D15A4A78();
    v27 = v10;
    LOBYTE(v10) = v31;
    v35 = 3;
    sub_1D144A410();
    sub_1D15A4A78();
    v13 = v31;
    v35 = 4;
    sub_1D15A4A78();
    v26 = v13;
    v14 = v31;
    v35 = 5;
    sub_1D144B518();
    sub_1D15A4A78();
    v25 = v31;
    v35 = 6;
    sub_1D15A4A78();
    LODWORD(v27) = v14;
    LOBYTE(v14) = v10;
    LODWORD(v10) = v31;
    v35 = 7;
    sub_1D15A4A78();
    v15 = v31;
    v35 = 8;
    sub_1D144A930();
    sub_1D15A4A78();
    v23 = v10;
    v24 = v11;
    v22 = v31;
    v35 = 9;
    sub_1D144B808();
    sub_1D15A4A78();
    v16 = v31;
    v35 = 10;
    sub_1D144AAA0();
    sub_1D15A4A28();
    (*(v29 + 8))(v8, v30);
    v17 = v31;
    v18 = v32;
    v19 = v33;
    v20 = v28;
    *v28 = v34;
    v20[1] = v24;
    v20[2] = v14;
    v20[3] = v26;
    v20[4] = v27;
    v20[5] = v25;
    v20[6] = v23;
    v20[7] = v15;
    v20[8] = v22;
    v20[9] = v16;
    *(v20 + 2) = v17;
    v20[26] = v19;
    *(v20 + 12) = v18;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1D1449D38()
{
  result = qword_1EE05B4E8;
  if (!qword_1EE05B4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE05B4E8);
  }

  return result;
}

unint64_t sub_1D1449D8C()
{
  result = qword_1EE05B4D8;
  if (!qword_1EE05B4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE05B4D8);
  }

  return result;
}

unint64_t sub_1D1449DE0()
{
  result = qword_1EE05B4E0;
  if (!qword_1EE05B4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE05B4E0);
  }

  return result;
}

unint64_t sub_1D1449E34()
{
  result = qword_1EE05B478;
  if (!qword_1EE05B478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE05B478);
  }

  return result;
}

unint64_t sub_1D1449E90(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v3 = 0x74646957656E696CLL;
    v4 = 0xD000000000000012;
    v5 = 0x6E696F50656E696CLL;
    if (a1 != 3)
    {
      v5 = 0xD000000000000010;
    }

    if (a1 != 2)
    {
      v4 = v5;
    }

    if (a1)
    {
      v3 = 0x6F6C6F43656E696CLL;
    }

    if (a1 <= 1u)
    {
      return v3;
    }

    else
    {
      return v4;
    }
  }

  else
  {
    if (a1 > 7u)
    {
      v1 = 0xD000000000000017;
      if (a1 != 9)
      {
        v1 = 0x62614C746E696F70;
      }

      v2 = a1 == 8;
    }

    else
    {
      v1 = 0xD000000000000012;
      if (a1 != 6)
      {
        v1 = 0xD000000000000012;
      }

      v2 = a1 == 5;
    }

    if (v2)
    {
      return 0xD00000000000001BLL;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t storeEnumTagSinglePayload for DiagramConfiguration.LineProperties.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DiagramConfiguration.LineProperties.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

unint64_t sub_1D144A1BC()
{
  result = qword_1EE05B480;
  if (!qword_1EE05B480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE05B480);
  }

  return result;
}

HealthVisualization::DiagramConfiguration::LineWidth_optional __swiftcall DiagramConfiguration.LineWidth.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D15A49B8();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_1D144A26C()
{
  result = qword_1EE05B6A8;
  if (!qword_1EE05B6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE05B6A8);
  }

  return result;
}

unint64_t sub_1D144A320()
{
  result = qword_1EE05B6B0;
  if (!qword_1EE05B6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE05B6B0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DiagramConfiguration.Color(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xDE)
  {
    goto LABEL_17;
  }

  if (a2 + 34 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 34) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 34;
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

      return (*a1 | (v4 << 8)) - 34;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 34;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x23;
  v8 = v6 - 35;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

unint64_t sub_1D144A410()
{
  result = qword_1EE05B4F0;
  if (!qword_1EE05B4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE05B4F0);
  }

  return result;
}

HealthVisualization::DiagramConfiguration::LineRadius_optional __swiftcall DiagramConfiguration.LineRadius.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D15A49B8();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_1D144A4CC()
{
  result = qword_1EE05B6F0;
  if (!qword_1EE05B6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE05B6F0);
  }

  return result;
}

uint64_t sub_1D144A52C()
{
  v1 = 0x706F7250656E696CLL;
  v2 = 0x726F4665756C6176;
  if (*v0 != 2)
  {
    v2 = 0x736E49726574756FLL;
  }

  if (*v0)
  {
    v1 = 1936291937;
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

uint64_t getEnumTagSinglePayload for TimeBasedDistributionChartPoint.PointKind(unsigned __int8 *a1, unsigned int a2)
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

HealthVisualization::DiagramConfiguration::Color_optional __swiftcall DiagramConfiguration.Color.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D15A4BD8();

  v5 = 0;
  v6 = 17;
  switch(v3)
  {
    case 0:
      goto LABEL_27;
    case 1:
      v5 = 1;
      goto LABEL_27;
    case 2:
      v5 = 2;
      goto LABEL_27;
    case 3:
      v5 = 3;
      goto LABEL_27;
    case 4:
      v5 = 4;
      goto LABEL_27;
    case 5:
      v5 = 5;
      goto LABEL_27;
    case 6:
      v5 = 6;
      goto LABEL_27;
    case 7:
      v5 = 7;
      goto LABEL_27;
    case 8:
      v5 = 8;
      goto LABEL_27;
    case 9:
      v5 = 9;
      goto LABEL_27;
    case 10:
      v5 = 10;
      goto LABEL_27;
    case 11:
      v5 = 11;
      goto LABEL_27;
    case 12:
      v5 = 12;
      goto LABEL_27;
    case 13:
      v5 = 13;
      goto LABEL_27;
    case 14:
      v5 = 14;
      goto LABEL_27;
    case 15:
      v5 = 15;
      goto LABEL_27;
    case 16:
      v5 = 16;
LABEL_27:
      v6 = v5;
      break;
    case 17:
      break;
    case 18:
      v6 = 18;
      break;
    case 19:
      v6 = 19;
      break;
    case 20:
      v6 = 20;
      break;
    case 21:
      v6 = 21;
      break;
    case 22:
      v6 = 22;
      break;
    case 23:
      v6 = 23;
      break;
    case 24:
      v6 = 24;
      break;
    case 25:
      v6 = 25;
      break;
    case 26:
      v6 = 26;
      break;
    case 27:
      v6 = 27;
      break;
    case 28:
      v6 = 28;
      break;
    case 29:
      v6 = 29;
      break;
    case 30:
      v6 = 30;
      break;
    case 31:
      v6 = 31;
      break;
    case 32:
      v6 = 32;
      break;
    case 33:
      v6 = 33;
      break;
    case 34:
      v6 = 34;
      break;
    default:
      v6 = 35;
      break;
  }

  *v2 = v6;
  return result;
}

unint64_t sub_1D144A8DC()
{
  result = qword_1EE05B4F8;
  if (!qword_1EE05B4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE05B4F8);
  }

  return result;
}

unint64_t sub_1D144A930()
{
  result = qword_1EE05B700;
  if (!qword_1EE05B700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE05B700);
  }

  return result;
}

unint64_t sub_1D144A9E4()
{
  result = qword_1EE05B708;
  if (!qword_1EE05B708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE05B708);
  }

  return result;
}

unint64_t sub_1D144AA4C()
{
  result = qword_1EE05B720;
  if (!qword_1EE05B720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE05B720);
  }

  return result;
}

unint64_t sub_1D144AAA0()
{
  result = qword_1EE05B778;
  if (!qword_1EE05B778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE05B778);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for DiagramConfiguration.PointLabelConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x1FFE)
  {
    *(result + 10) = 0;
    *(result + 8) = 0;
    *result = a2 - 0x1FFF;
    if (a3 >= 0x1FFF)
    {
      *(result + 11) = 1;
    }
  }

  else
  {
    if (a3 >= 0x1FFF)
    {
      *(result + 11) = 0;
    }

    if (a2)
    {
      v3 = ((-a2 >> 1) & 0xFFF) - (a2 << 12);
      *result = 0;
      *(result + 10) = (v3 >> 5) & 0xFE;
      *(result + 8) = (v3 << 10) & 0xE000 | (32 * (v3 & 7));
    }
  }

  return result;
}

unint64_t sub_1D144AB70()
{
  result = qword_1EE05B6C8;
  if (!qword_1EE05B6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE05B6C8);
  }

  return result;
}

uint64_t DiagramConfiguration.Axis.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  sub_1D1448B94(0, &qword_1EE05B540, sub_1D144BA7C, &type metadata for DiagramConfiguration.Axis.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00]();
  v8 = &v17 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D144BA7C();
  sub_1D15A4CD8();
  if (!v2)
  {
    v9 = v6;
    v10 = v20;
    v24 = 0;
    sub_1D144AEC0();
    sub_1D15A4A28();
    v18 = v23;
    v11 = v22;
    v19 = v21;
    v24 = 1;
    sub_1D15A4A28();
    v13 = v19 | ((v11 | (v18 << 16)) << 32);
    (*(v9 + 8))(v8, v5);
    v14 = v21;
    v15 = v22;
    v16 = v23;
    *(v10 + 6) = BYTE6(v13);
    *(v10 + 4) = WORD2(v13);
    *v10 = v13;
    *(v10 + 13) = v16;
    *(v10 + 11) = v15;
    *(v10 + 7) = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1D144AE18()
{
  result = qword_1EE05B6D0;
  if (!qword_1EE05B6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE05B6D0);
  }

  return result;
}

unint64_t sub_1D144AE6C()
{
  result = qword_1EE05B6D8;
  if (!qword_1EE05B6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE05B6D8);
  }

  return result;
}

unint64_t sub_1D144AEC0()
{
  result = qword_1EE05B730;
  if (!qword_1EE05B730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE05B730);
  }

  return result;
}

uint64_t sub_1D144AF14()
{
  if (*v0)
  {
    return 0x6C61636974726576;
  }

  else
  {
    return 0x746E6F7A69726F68;
  }
}

uint64_t storeEnumTagSinglePayload for SleepQueryConfiguration.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1D144B02C()
{
  result = qword_1EE05B748;
  if (!qword_1EE05B748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE05B748);
  }

  return result;
}

uint64_t sub_1D144B088()
{
  v1 = *v0;
  v2 = 0x6570795473697861;
  v3 = 0x636954726F6A616DLL;
  if (v1 != 5)
  {
    v3 = 0x636954726F6E696DLL;
  }

  if (*v0 <= 4u)
  {
    v3 = 0x656E694C64697267;
  }

  v4 = 0xD000000000000013;
  if (v1 != 1)
  {
    v4 = 0x6C6F436C6562616CLL;
  }

  if (*v0)
  {
    v2 = v4;
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

uint64_t storeEnumTagSinglePayload for TrendConfiguration.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for TrendConfiguration.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

unint64_t sub_1D144B2DC()
{
  result = qword_1EE05B690;
  if (!qword_1EE05B690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE05B690);
  }

  return result;
}

HealthVisualization::DiagramConfiguration::AxisType_optional __swiftcall DiagramConfiguration.AxisType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D15A49B8();

  v5 = 16;
  if (v3 < 0x10)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t getEnumTagSinglePayload for DiagramConfiguration.AxisType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF1)
  {
    goto LABEL_17;
  }

  if (a2 + 15 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 15) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 15;
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

      return (*a1 | (v4 << 8)) - 15;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 15;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x10;
  v8 = v6 - 16;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

unint64_t sub_1D144B428()
{
  result = qword_1EE05B728;
  if (!qword_1EE05B728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE05B728);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for DiagramConfiguration.AxisProperties(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 6) = 0;
    *(result + 4) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 7) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 7) = 0;
    }

    if (a2)
    {
      *(result + 4) = a2 + 1;
    }
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for DiagramConfiguration.Axis(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 12) = 0;
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 14) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 14) = 0;
    }

    if (a2)
    {
      *(result + 4) = a2 + 2;
    }
  }

  return result;
}

unint64_t sub_1D144B518()
{
  result = qword_1EE05B6E8;
  if (!qword_1EE05B6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE05B6E8);
  }

  return result;
}

HealthVisualization::DiagramConfiguration::ReferenceAnnotationPosition_optional __swiftcall DiagramConfiguration.ReferenceAnnotationPosition.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D15A49B8();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

HealthVisualization::DiagramConfiguration::TextAttributes_optional __swiftcall DiagramConfiguration.TextAttributes.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D15A4BD8();

  v5 = 0;
  v6 = 7;
  switch(v3)
  {
    case 0:
      goto LABEL_19;
    case 1:
      v5 = 1;
      goto LABEL_19;
    case 2:
      v5 = 2;
      goto LABEL_19;
    case 3:
      v5 = 3;
      goto LABEL_19;
    case 4:
      v5 = 4;
      goto LABEL_19;
    case 5:
      v5 = 5;
      goto LABEL_19;
    case 6:
      v5 = 6;
LABEL_19:
      v6 = v5;
      break;
    case 7:
      break;
    case 8:
      v6 = 8;
      break;
    case 9:
      v6 = 9;
      break;
    case 10:
      v6 = 10;
      break;
    case 11:
      v6 = 11;
      break;
    case 12:
      v6 = 12;
      break;
    case 13:
      v6 = 13;
      break;
    case 14:
      v6 = 14;
      break;
    case 15:
      v6 = 15;
      break;
    case 16:
      v6 = 16;
      break;
    case 17:
      v6 = 17;
      break;
    case 18:
      v6 = 18;
      break;
    case 19:
      v6 = 19;
      break;
    case 20:
      v6 = 20;
      break;
    case 21:
      v6 = 21;
      break;
    case 22:
      v6 = 22;
      break;
    case 23:
      v6 = 23;
      break;
    case 24:
      v6 = 24;
      break;
    default:
      v6 = 25;
      break;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1D144B778(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE8)
  {
    goto LABEL_17;
  }

  if (a2 + 24 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 24) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 24;
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

      return (*a1 | (v4 << 8)) - 24;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 24;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x19;
  v8 = v6 - 25;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

unint64_t sub_1D144B808()
{
  result = qword_1EE05B7B0;
  if (!qword_1EE05B7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE05B7B0);
  }

  return result;
}

unint64_t sub_1D144B8BC()
{
  result = qword_1EE05B7B8;
  if (!qword_1EE05B7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE05B7B8);
  }

  return result;
}

HealthVisualization::DiagramDataKey_optional __swiftcall DiagramDataKey.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D15A49B8();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t getEnumTagSinglePayload for ParameterOverrides.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t a1)
{
  v1 = *(*(a1 + 24) - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

__n128 __swift_memcpy27_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 11) = *(a2 + 11);
  *a1 = result;
  return result;
}

unint64_t sub_1D144BA7C()
{
  result = qword_1EE05B6E0;
  if (!qword_1EE05B6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE05B6E0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SleepQueryConfiguration.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t DiagramConfiguration.AxisProperties.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  sub_1D1448B94(0, &qword_1EE05B548, sub_1D144B02C, &type metadata for DiagramConfiguration.AxisProperties.CodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00]();
  v9 = &v20 - v8;
  v10 = a1[3];
  v23 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_1D144B02C();
  sub_1D15A4CD8();
  if (!v2)
  {
    v11 = v7;
    v36 = 0;
    sub_1D144BFB0();
    v12 = v6;
    sub_1D15A4A78();
    v13 = v37;
    v34 = 1;
    sub_1D144A930();
    sub_1D15A4A78();
    v15 = v35;
    v32 = 2;
    sub_1D144A26C();
    sub_1D15A4A78();
    v22 = v15;
    v16 = v33;
    v30 = 3;
    sub_1D15A4A78();
    v21 = v16;
    LOBYTE(v16) = v31;
    v28 = 4;
    sub_1D144C064();
    sub_1D15A4A78();
    v38 = v29;
    v26 = 5;
    sub_1D144AA4C();
    sub_1D15A4A78();
    HIDWORD(v20) = v27;
    v24 = 6;
    sub_1D15A4A78();
    (*(v11 + 8))(v9, v12);
    v17 = v25;
    v18 = v38;
    *a2 = v13;
    v19 = v21;
    a2[1] = v22;
    a2[2] = v19;
    a2[3] = v16;
    a2[4] = v18;
    a2[5] = BYTE4(v20);
    a2[6] = v17;
  }

  return __swift_destroy_boxed_opaque_existential_1(v23);
}

unint64_t sub_1D144BF08()
{
  result = qword_1EE05B738;
  if (!qword_1EE05B738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE05B738);
  }

  return result;
}

unint64_t sub_1D144BF5C()
{
  result = qword_1EE05B740;
  if (!qword_1EE05B740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE05B740);
  }

  return result;
}

unint64_t sub_1D144BFB0()
{
  result = qword_1EE05B688;
  if (!qword_1EE05B688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE05B688);
  }

  return result;
}

unint64_t sub_1D144C064()
{
  result = qword_1EE05B750;
  if (!qword_1EE05B750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE05B750);
  }

  return result;
}

unint64_t sub_1D144C184()
{
  result = qword_1EE05B758;
  if (!qword_1EE05B758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE05B758);
  }

  return result;
}

uint64_t sub_1D144C1D8@<X0>(char *a1@<X8>)
{
  v2 = sub_1D15A49B8();

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

HealthVisualization::DiagramConfiguration::AxisTickLength_optional __swiftcall DiagramConfiguration.AxisTickLength.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D15A49B8();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_1D144C2F4()
{
  result = qword_1EE05B6F8;
  if (!qword_1EE05B6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE05B6F8);
  }

  return result;
}

uint64_t DiagramConfiguration.ValueFormatter.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v3 = MEMORY[0x1E69E6F48];
  sub_1D1448B94(0, &qword_1EE0596D0, sub_1D144C9EC, &type metadata for DiagramConfiguration.ValueFormatter.PercentCodingKeys, MEMORY[0x1E69E6F48]);
  v43 = v4;
  v40 = *(v4 - 8);
  MEMORY[0x1EEE9AC00]();
  v47 = &v37 - v5;
  sub_1D1448B94(0, &qword_1EE0596D8, sub_1D144CAF0, &type metadata for DiagramConfiguration.ValueFormatter.DecimalCodingKeys, v3);
  v7 = *(v6 - 8);
  v41 = v6;
  v42 = v7;
  MEMORY[0x1EEE9AC00]();
  v45 = &v37 - v8;
  sub_1D1448B94(0, &qword_1EE0596C8, sub_1D144CBF4, &type metadata for DiagramConfiguration.ValueFormatter.StandardCodingKeys, v3);
  v10 = v9;
  v39 = *(v9 - 8);
  MEMORY[0x1EEE9AC00]();
  v12 = &v37 - v11;
  sub_1D1448B94(0, &qword_1EE0596E0, sub_1D144CCF8, &type metadata for DiagramConfiguration.ValueFormatter.CodingKeys, v3);
  v14 = v13;
  v46 = *(v13 - 8);
  MEMORY[0x1EEE9AC00]();
  v16 = &v37 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D144CCF8();
  v17 = v48;
  sub_1D15A4CD8();
  if (v17)
  {
    goto LABEL_9;
  }

  v38 = v10;
  v18 = v45;
  v19 = v47;
  v48 = a1;
  v20 = sub_1D15A4A88();
  v21 = *(v20 + 16);
  if (!v21 || ((v22 = *(v20 + 32), v21 == 1) ? (v23 = v22 == 3) : (v23 = 1), v23))
  {
    v24 = sub_1D15A4828();
    swift_allocError();
    v26 = v25;
    sub_1D15993C4();
    *v26 = &type metadata for DiagramConfiguration.ValueFormatter;
    sub_1D15A49D8();
    sub_1D15A4808();
    (*(*(v24 - 8) + 104))(v26, *MEMORY[0x1E69E6AF8], v24);
    swift_willThrow();
    (*(v46 + 8))(v16, v14);
    swift_unknownObjectRelease();
    a1 = v48;
LABEL_9:
    v27 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v27);
  }

  if (*(v20 + 32))
  {
    v39 = v20;
    v29 = v14;
    v30 = v46;
    if (v22 == 1)
    {
      v50 = 1;
      sub_1D144CAF0();
      v31 = v18;
      sub_1D15A49C8();
      v32 = v44;
      v34 = v41;
      v35 = sub_1D15A4A68();
      (*(v42 + 8))(v31, v34);
      (*(v30 + 8))(v16, v29);
      swift_unknownObjectRelease();
      v36 = 0;
    }

    else
    {
      v51 = 2;
      sub_1D144C9EC();
      sub_1D15A49C8();
      v32 = v44;
      (*(v40 + 8))(v19, v43);
      (*(v30 + 8))(v16, v29);
      swift_unknownObjectRelease();
      v35 = 1;
      v36 = 1;
    }
  }

  else
  {
    v49 = 0;
    sub_1D144CBF4();
    sub_1D15A49C8();
    v33 = v46;
    (*(v39 + 8))(v12, v38);
    (*(v33 + 8))(v16, v14);
    swift_unknownObjectRelease();
    v35 = 0;
    v36 = 1;
    v32 = v44;
  }

  *v32 = v35;
  *(v32 + 8) = v36;
  v27 = v48;
  return __swift_destroy_boxed_opaque_existential_1(v27);
}

unint64_t sub_1D144C9EC()
{
  result = qword_1EE05A438;
  if (!qword_1EE05A438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE05A438);
  }

  return result;
}

unint64_t sub_1D144CA44()
{
  result = qword_1EE05A428;
  if (!qword_1EE05A428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE05A428);
  }

  return result;
}

unint64_t sub_1D144CA9C()
{
  result = qword_1EE05A430;
  if (!qword_1EE05A430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE05A430);
  }

  return result;
}

unint64_t sub_1D144CAF0()
{
  result = qword_1EE05A450;
  if (!qword_1EE05A450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE05A450);
  }

  return result;
}

unint64_t sub_1D144CB48()
{
  result = qword_1EE05A440;
  if (!qword_1EE05A440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE05A440);
  }

  return result;
}

unint64_t sub_1D144CBA0()
{
  result = qword_1EE05A448;
  if (!qword_1EE05A448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE05A448);
  }

  return result;
}

unint64_t sub_1D144CBF4()
{
  result = qword_1EE05A420;
  if (!qword_1EE05A420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE05A420);
  }

  return result;
}

unint64_t sub_1D144CC4C()
{
  result = qword_1EE05A410;
  if (!qword_1EE05A410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE05A410);
  }

  return result;
}

unint64_t sub_1D144CCA4()
{
  result = qword_1EE05A418;
  if (!qword_1EE05A418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE05A418);
  }

  return result;
}

unint64_t sub_1D144CCF8()
{
  result = qword_1EE05A468;
  if (!qword_1EE05A468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE05A468);
  }

  return result;
}

unint64_t sub_1D144CD50()
{
  result = qword_1EE05A458;
  if (!qword_1EE05A458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE05A458);
  }

  return result;
}

unint64_t sub_1D144CDA8()
{
  result = qword_1EE05A460;
  if (!qword_1EE05A460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE05A460);
  }

  return result;
}

uint64_t sub_1D144CDFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D144CE24(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D144CE24(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x647261646E617473 && a2 == 0xE800000000000000;
  if (v4 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C616D69636564 && a2 == 0xE700000000000000 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746E6563726570 && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D15A4BA8();

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

uint64_t sub_1D144CF3C()
{
  v1 = 0x6C616D69636564;
  if (*v0 != 1)
  {
    v1 = 0x746E6563726570;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x647261646E617473;
  }
}

uint64_t storeEnumTagSinglePayload for ParameterOverrides.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1D144D050()
{
  result = qword_1EE05B698;
  if (!qword_1EE05B698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE05B698);
  }

  return result;
}

unint64_t sub_1D144D104()
{
  result = qword_1EE05B6A0;
  if (!qword_1EE05B6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE05B6A0);
  }

  return result;
}

HealthVisualization::DiagramConfiguration::Insets_optional __swiftcall DiagramConfiguration.Insets.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D15A49B8();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

__n128 __swift_memcpy89_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 73) = *(a2 + 73);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t DiagramData.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  sub_1D144D494(0, &qword_1EE05B560, sub_1D144D4FC, &type metadata for DiagramData.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00]();
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D144D4FC();
  sub_1D15A4CD8();
  if (!v2)
  {
    v9 = v6;
    v10 = v17;
    type metadata accessor for CGRect(0);
    v22 = 0;
    sub_1D144D660(&qword_1EE05B588, type metadata accessor for CGRect);
    sub_1D15A4A28();
    v15 = v19;
    v16 = v18;
    v21 = v20;
    sub_1D144D6F4(0, &qword_1EE05B5B8, sub_1D144D748);
    v22 = 1;
    sub_1D144D8DC();
    sub_1D15A4A78();
    (*(v9 + 8))(v8, v5);
    v12 = v18;
    v13 = v21;
    v14 = v15;
    *v10 = v16;
    *(v10 + 16) = v14;
    *(v10 + 32) = v13;
    *(v10 + 40) = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1D144D494(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_1D144D4FC()
{
  result = qword_1EE05B7E0;
  if (!qword_1EE05B7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE05B7E0);
  }

  return result;
}

unint64_t sub_1D144D554()
{
  result = qword_1EE05B7D0;
  if (!qword_1EE05B7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE05B7D0);
  }

  return result;
}

unint64_t sub_1D144D5AC()
{
  result = qword_1EE05B7D8;
  if (!qword_1EE05B7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE05B7D8);
  }

  return result;
}

void sub_1D144D614(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_1D144D660(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D144D6A8()
{
  if (*v0)
  {
    return 0x756F724761746164;
  }

  else
  {
    return 0x65646F4D61746164;
  }
}

void sub_1D144D6F4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D15A4118();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D144D748()
{
  if (!qword_1EE05B5D8)
  {
    sub_1D144D7AC();
    v0 = sub_1D15A3E78();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE05B5D8);
    }
  }
}

unint64_t sub_1D144D7AC()
{
  result = qword_1EE05B7C8;
  if (!qword_1EE05B7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE05B7C8);
  }

  return result;
}

unint64_t sub_1D144D804()
{
  result = qword_1EE05B7C0;
  if (!qword_1EE05B7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE05B7C0);
  }

  return result;
}

uint64_t sub_1D144D858(unint64_t *a1, void (*a2)(void), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1D144D748();
    a2();
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D144D8DC()
{
  result = qword_1EE05B5B0;
  if (!qword_1EE05B5B0)
  {
    sub_1D144D6F4(255, &qword_1EE05B5B8, sub_1D144D748);
    sub_1D144D858(&qword_1EE05B5D0, sub_1D144B808, sub_1D144D9B4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE05B5B0);
  }

  return result;
}

unint64_t sub_1D144D9B4()
{
  result = qword_1EE05B790;
  if (!qword_1EE05B790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE05B790);
  }

  return result;
}

uint64_t DiagramDataGroup.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v22 = a2;
  sub_1D144D494(0, &qword_1EE05B558, sub_1D144DD3C, &type metadata for DiagramDataGroup.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00]();
  v8 = &v20 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D144DD3C();
  sub_1D15A4CD8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v9 = v6;
  v10 = v22;
  sub_1D144D6F4(0, &qword_1EE05B5A8, type metadata accessor for CGPoint);
  v25 = 0;
  sub_1D144DE54(&qword_1EE05B5A0, &qword_1EE05B578);
  sub_1D15A4A78();
  v11 = v26;
  v24 = 1;
  v20 = sub_1D15A49E8();
  v21 = v12;
  v23 = 2;
  v13 = sub_1D15A49E8();
  v15 = v14;
  v16 = v13;
  (*(v9 + 8))(v8, v5);
  v17 = v20;
  v18 = v21;
  *v10 = v11;
  v10[1] = v17;
  v10[2] = v18;
  v10[3] = v16;
  v10[4] = v15;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1D144DD3C()
{
  result = qword_1EE05B7A8;
  if (!qword_1EE05B7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE05B7A8);
  }

  return result;
}

unint64_t sub_1D144DD94()
{
  result = qword_1EE05B798;
  if (!qword_1EE05B798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE05B798);
  }

  return result;
}

unint64_t sub_1D144DDEC()
{
  result = qword_1EE05B7A0;
  if (!qword_1EE05B7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE05B7A0);
  }

  return result;
}

uint64_t sub_1D144DE54(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1D144D6F4(255, &qword_1EE05B5A8, type metadata accessor for CGPoint);
    sub_1D144D660(a2, type metadata accessor for CGPoint);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D144DF00()
{
  v1 = 0x697461746F6E6E61;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000017;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x73746E696F70;
  }
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1D144DF74()
{
  sub_1D15A4C88();
  sub_1D15A3F88();

  return sub_1D15A4CB8();
}

uint64_t sub_1D144E024(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xD000000000000012;
  v4 = 0x80000001D15BCD70;
  if (v2 == 1)
  {
    v5 = 0x80000001D15BCD70;
  }

  else
  {
    v3 = 0x636E657265666552;
    v5 = 0xED0000656E694C65;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x746E65746E6F43;
  }

  if (v2)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  v8 = 0xD000000000000012;
  if (*a2 != 1)
  {
    v8 = 0x636E657265666552;
    v4 = 0xED0000656E694C65;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x746E65746E6F43;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D15A4BA8();
  }

  return v11 & 1;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

id DiagramImageView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = sub_1D15A3268();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00]();
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v4[OBJC_IVAR____TtC19HealthVisualization16DiagramImageView_imageRenderer] = 0;
  *&v4[OBJC_IVAR____TtC19HealthVisualization16DiagramImageView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v13 = &v4[OBJC_IVAR____TtC19HealthVisualization16DiagramImageView_lastUsedTransformer];
  *v13 = 1;
  *(v13 + 40) = 0u;
  *(v13 + 24) = 0u;
  *(v13 + 8) = 0u;
  v14 = &v4[OBJC_IVAR____TtC19HealthVisualization16DiagramImageView_lastUsedModelSpace];
  *v14 = 0u;
  *(v14 + 1) = 0u;
  v14[32] = 1;
  v15 = type metadata accessor for DiagramImageView();
  v31.receiver = v4;
  v31.super_class = v15;
  v16 = objc_msgSendSuper2(&v31, sel_initWithFrame_, a1, a2, a3, a4);
  [v16 frame];
  sub_1D144E7C4(v17, v18);
  [v16 setIsAccessibilityElement_];
  type metadata accessor for Localization();
  memset(v30, 0, sizeof(v30));
  swift_initStaticObject();
  v19 = sub_1D144E91C(0xD000000000000025, 0x80000001D15BEC20, v30, 0, 0);
  v21 = HIBYTE(v20) & 0xF;
  if ((v20 & 0x2000000000000000) == 0)
  {
    v21 = v19 & 0xFFFFFFFFFFFFLL;
  }

  if (!v21)
  {

    sub_1D15A3238();
    v22 = sub_1D15A3248();
    v23 = sub_1D15A42F8();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v29 = v25;
      *v24 = 136446210;
      *(v24 + 4) = sub_1D1479780(0xD000000000000025, 0x80000001D15BEC20, &v29);
      _os_log_impl(&dword_1D1446000, v22, v23, "Localization: no localization found for '%{public}s'", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v25);
      MEMORY[0x1D388BF00](v25, -1, -1);
      MEMORY[0x1D388BF00](v24, -1, -1);
    }

    (*(v10 + 8))(v12, v9);
  }

  sub_1D144ED4C(v30);
  v26 = sub_1D15A3EF8();

  [v16 setAccessibilityLabel_];

  return v16;
}

void sub_1D144E5A0(void *a1, double a2, double a3, double a4, double a5, uint64_t a6, uint64_t a7, const char **a8, SEL *a9)
{
  sub_1D15A4148();
  sub_1D15A4138();
  sub_1D15A4128();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v20.receiver = a1;
  v20.super_class = type metadata accessor for DiagramImageView();
  v16 = *a8;
  v17 = a1;
  objc_msgSendSuper2(&v20, v16, a2, a3, a4, a5);
  [v17 *a9];
  sub_1D144E7C4(v18, v19);
}

double sub_1D144E6D0(void *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  sub_1D15A4148();
  sub_1D15A4138();
  sub_1D15A4128();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9.receiver = a1;
  v9.super_class = type metadata accessor for DiagramImageView();
  objc_msgSendSuper2(&v9, *a4);
  v7 = v6;

  return v7;
}

void sub_1D144E7C4(double a1, double a2)
{
  v5 = OBJC_IVAR____TtC19HealthVisualization16DiagramImageView_imageRenderer;
  v6 = *(v2 + OBJC_IVAR____TtC19HealthVisualization16DiagramImageView_imageRenderer);
  if (!v6 || ((v7 = v6, v8 = [v7 format], objc_msgSend(v8, sel_bounds), v10 = v9, v12 = v11, v8, v7, v10 == a1) ? (v13 = v12 == a2) : (v13 = 0), !v13))
  {
    v14 = [objc_allocWithZone(MEMORY[0x1E69DCA78]) initWithSize_];
    v15 = *(v2 + v5);
    *(v2 + v5) = v14;

    v16 = v2 + OBJC_IVAR____TtC19HealthVisualization16DiagramImageView_delegate;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v17 = *(v16 + 8);
      ObjectType = swift_getObjectType();
      (*(v17 + 16))(v2, ObjectType, v17, a1, a2);
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_1D144E91C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1D15A3268();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00]();
  v11 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D144EC94(a3, &v29);
  if (!v30)
  {
    sub_1D144ED4C(&v29);
    if (a5)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  sub_1D1458AC4(&v29, &v31);
  __swift_project_boxed_opaque_existential_1(&v31, v32);
  DynamicType = swift_getDynamicType();
  if (swift_isClassType())
  {
    v13 = DynamicType == 0;
  }

  else
  {
    v13 = 1;
  }

  if (!v13)
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v15 = [objc_opt_self() bundleForClass_];
    if (v15)
    {
      v16 = v15;
      if (a5)
      {
        v17 = sub_1D15A2438();
      }

      else
      {
        v28[1] = v5;
        sub_1D15A3238();
        v20 = v16;
        v21 = sub_1D15A3248();
        v22 = sub_1D15A42F8();

        if (os_log_type_enabled(v21, v22))
        {
          v23 = swift_slowAlloc();
          v28[0] = v21;
          v24 = v23;
          v25 = swift_slowAlloc();
          *v24 = 138543362;
          *(v24 + 4) = v20;
          *v25 = v16;
          v26 = v20;
          _os_log_impl(&dword_1D1446000, v28[0], v22, "Localization: using default localization file for %{public}@", v24, 0xCu);
          sub_1D1482B80(v25);
          MEMORY[0x1D388BF00](v25, -1, -1);
          v27 = v24;
          v21 = v28[0];
          MEMORY[0x1D388BF00](v27, -1, -1);
        }

        (*(v9 + 8))(v11, v8);
        v17 = sub_1D15A2438();
      }

      __swift_destroy_boxed_opaque_existential_1(&v31);
      return v17;
    }
  }

  __swift_destroy_boxed_opaque_existential_1(&v31);
  if (!a5)
  {
LABEL_12:
  }

LABEL_13:
  v18 = qword_1EE05B370;

  if (v18 != -1)
  {
    swift_once();
  }

  v17 = sub_1D15A2438();

  return v17;
}

uint64_t sub_1D144EC94(uint64_t a1, uint64_t a2)
{
  sub_1D144ECF8();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D144ECF8()
{
  if (!qword_1EE05B528)
  {
    v0 = sub_1D15A4608();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE05B528);
    }
  }
}

uint64_t sub_1D144ED4C(uint64_t a1)
{
  sub_1D144ECF8();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1D144EDA8()
{
  type metadata accessor for Localization();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_1EE05B378 = result;
  return result;
}

uint64_t sub_1D144EE30(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC19HealthVisualization16DiagramImageView_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t static Localization.localize(_:substitutions:mySelf:tableName:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_1D15A3268();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00]();
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_initStaticObject();
  v16 = sub_1D144E91C(a1, a2, a4, a5, a6);
  v18 = HIBYTE(v17) & 0xF;
  if ((v17 & 0x2000000000000000) == 0)
  {
    v18 = v16 & 0xFFFFFFFFFFFFLL;
  }

  if (v18)
  {
    a1 = sub_1D144F0D0(v16, v17, a3);
  }

  else
  {

    sub_1D15A3238();

    v19 = sub_1D15A3248();
    v20 = sub_1D15A42F8();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v25 = v22;
      *v21 = 136446210;
      *(v21 + 4) = sub_1D1479780(a1, a2, &v25);
      _os_log_impl(&dword_1D1446000, v19, v20, "Localization: no localization found for '%{public}s'", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      MEMORY[0x1D388BF00](v22, -1, -1);
      MEMORY[0x1D388BF00](v21, -1, -1);
    }

    (*(v13 + 8))(v15, v12);
  }

  return a1;
}

uint64_t sub_1D144F0D0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2;
  v4 = a1;
  if (a3)
  {
    v22 = 0;
    v23 = 0xE000000000000000;
    if ((a2 & 0x2000000000000000) != 0)
    {
      v6 = HIBYTE(a2) & 0xF;
    }

    else
    {
      v6 = a1 & 0xFFFFFFFFFFFFLL;
    }

    if (v6)
    {
      do
      {
        sub_1D144F57C(v4, v3, &v16);
        v8 = v16;
        v7 = v17;
        v9 = v18;
        v10 = v19;
        v4 = v20;
        v3 = v21;

        v11 = sub_1D144FA68(v9, v10, a3);
        v13 = v12;

        v16 = v8;
        v17 = v7;

        MEMORY[0x1D388A330](v11, v13);

        MEMORY[0x1D388A330](v16, v17);

        v14 = HIBYTE(v3) & 0xF;
        if ((v3 & 0x2000000000000000) == 0)
        {
          v14 = v4 & 0xFFFFFFFFFFFFLL;
        }
      }

      while (v14);
      v4 = v22;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
  }

  return v4;
}

uint64_t DisplayTypeProviding.displayType.getter(uint64_t a1, uint64_t a2)
{
  result = DisplayTypeProviding.maybeDisplayType.getter(a1, a2);
  if (!result)
  {
    sub_1D15A47D8();

    ObjectTypeIdentifiable.objectType.getter(a1, *(a2 + 8));
    sub_1D14C867C();
    v5 = sub_1D15A3F68();
    MEMORY[0x1D388A330](v5);

    result = sub_1D15A4908();
    __break(1u);
  }

  return result;
}

id DisplayCategoryProviding.displayCategory.getter(uint64_t a1, uint64_t a2)
{
  v2 = (*(*(a2 + 8) + 16))();
  v3 = [v2 categoryIdentifier];

  result = [objc_opt_self() categoryWithID_];
  if (!result)
  {
    result = sub_1D15A4908();
    __break(1u);
  }

  return result;
}

id DisplayTypeProviding.maybeDisplayType.getter(uint64_t a1, uint64_t a2)
{
  v4 = (*(a2 + 24))();
  v5 = [v4 displayTypeController];

  if (v5)
  {
    goto LABEL_4;
  }

  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v5 = result;
LABEL_4:
    v7 = ObjectTypeIdentifiable.objectType.getter(a1, *(a2 + 8));
    v8 = [v5 displayTypeForObjectType_];

    return v8;
  }

  __break(1u);
  return result;
}

id ObjectTypeIdentifiable.objectType.getter(uint64_t a1, uint64_t a2)
{
  v4 = objc_opt_self();
  (*(a2 + 8))(a1, a2);
  v5 = sub_1D15A3EF8();

  v6 = [v4 _typeWithIdentifier_];

  return v6;
}

uint64_t QuantityTypeIdentifiable.quantityTypeIdentifier.getter(uint64_t a1, uint64_t a2)
{
  (*(*(a2 + 8) + 8))();
  v2 = sub_1D15A3EF8();

  return v2;
}

uint64_t sub_1D144F57C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_1D15A3268();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00]();
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D144F978(64, 0xE100000000000000, a1, a2);
  if (v11)
  {
    goto LABEL_10;
  }

  v50 = v9;
  v51 = v7;
  v52 = v6;
  v49 = v10;
  v12 = sub_1D15A3FB8();
  v53 = a1;
  v54 = a2;
  v13 = sub_1D147F608(v12, a1, a2);
  v15 = v14 >> 14;
  v16 = v13 >> 14;
  if (v13 >> 14 == v14 >> 14)
  {
LABEL_7:

    v19 = v50;
    sub_1D15A3238();
    a2 = v54;

    v20 = sub_1D15A3248();
    v21 = sub_1D15A42F8();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v55 = v23;
      *v22 = 136446210;
      a1 = v53;
      *(v22 + 4) = sub_1D1479780(v53, a2, &v55);
      _os_log_impl(&dword_1D1446000, v20, v21, "Localization: potentially mismatched @ phrase: '%{public}s'", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v23);
      MEMORY[0x1D388BF00](v23, -1, -1);
      MEMORY[0x1D388BF00](v22, -1, -1);

      (*(v51 + 8))(v19, v52);
    }

    else
    {

      (*(v51 + 8))(v19, v52);
      a1 = v53;
    }

LABEL_10:

    v25 = 0;
    v26 = 0;
    v27 = 0xE000000000000000;
    v28 = 0xE000000000000000;
LABEL_11:
    *a3 = a1;
    a3[1] = a2;
    a3[2] = v25;
    a3[3] = v27;
    a3[4] = v26;
    a3[5] = v28;
    return result;
  }

  while (sub_1D15A4628() != 64 || v17 != 0xE100000000000000)
  {
    v18 = sub_1D15A4BA8();

    if (v18)
    {
      goto LABEL_13;
    }

    v16 = sub_1D15A4618() >> 14;
    if (v16 == v15)
    {
      goto LABEL_7;
    }
  }

LABEL_13:

  v30 = v53;
  v29 = v54;
  result = sub_1D15A3FB8();
  if (v16 >= v49 >> 14)
  {
    v31 = result;
    sub_1D15A3FA8();
    v32 = sub_1D15A4028();
    v34 = v33;
    v36 = v35;
    v38 = v37;
    v39 = sub_1D147F608(v31, v30, v29);
    v51 = v40;
    v52 = v39;
    v50 = v41;
    v43 = v42;
    v44 = sub_1D15A4028();
    a1 = MEMORY[0x1D388A2E0](v44);
    a2 = v45;

    v25 = MEMORY[0x1D388A2E0](v32, v34, v36, v38);
    v27 = v46;

    v26 = MEMORY[0x1D388A2E0](v52, v51, v50, v43);
    v28 = v47;

    goto LABEL_11;
  }

  __break(1u);
  return result;
}

unint64_t sub_1D144F978(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v4 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {
    return 0;
  }

  v7 = 4 * v4;
  v8 = 15;
  while (sub_1D15A4018() != a1 || v9 != a2)
  {
    v10 = sub_1D15A4BA8();

    if (v10)
    {
      return v8;
    }

    v8 = sub_1D15A3FA8();
    if (v7 == v8 >> 14)
    {
      return 0;
    }
  }

  return v8;
}

unint64_t sub_1D144FA68(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = sub_1D15A3268();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00]();
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_1D15A3FE8() & 1) == 0 || (sub_1D15A3FF8() & 1) == 0)
  {
    goto LABEL_13;
  }

  v10 = sub_1D15A3FB8();
  result = sub_1D15A3FB8();
  if (result >> 14 >= v10 >> 14)
  {
    v12 = sub_1D15A4028();
    if (!((v12 ^ v13) >> 14))
    {

      return 64;
    }

    v14 = MEMORY[0x1D388A2E0]();
    v16 = v15;

    if (*(a3 + 16))
    {
      v17 = sub_1D14800A4(v14, v16);
      v19 = v18;

      if (v19)
      {
        a1 = *(*(a3 + 56) + 16 * v17);
LABEL_13:

        return a1;
      }
    }

    else
    {
    }

    sub_1D15A3238();

    v20 = sub_1D15A3248();
    v21 = sub_1D15A42F8();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v25 = v23;
      *v22 = 136446210;
      *(v22 + 4) = sub_1D1479780(a1, a2, &v25);
      _os_log_impl(&dword_1D1446000, v20, v21, "Localization: no substitution was found for '%{public}s'", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v23);
      MEMORY[0x1D388BF00](v23, -1, -1);
      MEMORY[0x1D388BF00](v22, -1, -1);
    }

    (*(v7 + 8))(v9, v6);
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

void sub_1D144FE20(void *a1)
{
  v3 = [v1 traitCollection];
  v4 = [v3 userInterfaceStyle];

  if (a1)
  {
    v5 = v4 != [a1 userInterfaceStyle];
  }

  else
  {
    v5 = 1;
  }

  v6 = [v1 traitCollection];
  v7 = [v6 preferredContentSizeCategory];

  if (!a1)
  {

LABEL_13:
    v16 = &v1[OBJC_IVAR____TtC19HealthVisualization16DiagramImageView_delegate];
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v17 = *&v1[OBJC_IVAR____TtC19HealthVisualization16DiagramImageView_imageRenderer];
      if (v17)
      {
        v18 = *(v16 + 1);
        ObjectType = swift_getObjectType();
        v20 = [v17 format];
        [v20 bounds];
        v22 = v21;
        v24 = v23;

        (*(v18 + 16))(v1, ObjectType, v18, v22, v24);
        swift_unknownObjectRelease();
      }

      else
      {
        __break(1u);
      }
    }

    return;
  }

  v8 = [a1 preferredContentSizeCategory];
  v9 = sub_1D15A3F38();
  v11 = v10;
  if (v9 == sub_1D15A3F38() && v11 == v12)
  {

    v15 = 0;
  }

  else
  {
    v14 = sub_1D15A4BA8();

    v15 = v14 ^ 1;
  }

  if ((v5 | v15))
  {
    goto LABEL_13;
  }
}

uint64_t sub_1D1450114(uint64_t a1, __int128 *a2, __int128 *a3)
{
  v3 = *(a2 + 32);
  v4 = *(a2 + 5);
  v5 = a2[1];
  v25 = *a2;
  v26 = v5;
  v27 = v3;
  v28 = v4;
  sub_1D1450264(&v25, a3, v29);
  v6 = v30;
  v7 = v31;
  __swift_project_boxed_opaque_existential_1(v29, v30);
  *&v25 = (*(v7 + 8))(v6, v7);
  *(&v25 + 1) = v8;
  *&v26 = v9;
  *(&v26 + 1) = v10;
  v27 = 0;
  v11 = v30;
  v12 = v31;
  __swift_project_boxed_opaque_existential_1(v29, v30);
  v13 = (*(v12 + 16))(v11, v12);
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = v30;
  v21 = v31;
  __swift_project_boxed_opaque_existential_1(v29, v30);
  v22 = (*(v21 + 24))(v20, v21);
  sub_1D1458B60(&v25, v22, v23, v13, v15, v17, v19);

  return __swift_destroy_boxed_opaque_existential_1(v29);
}

void sub_1D1450264(uint64_t *a1@<X0>, __int128 *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *a1;
  v5 = a1[1];
  v8 = a1[2];
  v7 = a1[3];
  v9 = *(a1 + 32);
  v10 = a1[5];
  v11 = a2[1];
  v59 = *a2;
  v60 = v11;
  *&v61[41] = *(a2 + 73);
  v12 = a2[3];
  *v61 = a2[2];
  *&v61[16] = v12;
  *&v61[32] = a2[4];
  v13 = v59;
  v14 = v60;
  v15 = *(&v60 + 3) | (BYTE7(v60) << 32);
  v16 = *&v61[2] | (*&v61[6] << 32);
  v17 = v61[56] >> 5;
  if (v17 <= 2)
  {
    if (v17)
    {
      if (v17 == 1)
      {
        v32 = v9;
        v18 = type metadata accessor for DiagramBanner();
        v19 = swift_allocObject();
        *(v19 + 16) = v59;
        *(v19 + 32) = v14;
        *(v19 + 40) = v6;
        *(v19 + 48) = v5;
        *(v19 + 56) = v8;
        *(v19 + 64) = v7;
        *(v19 + 72) = v32;
        *(v19 + 80) = v10;
        a3[3] = v18;
        a3[4] = &protocol witness table for DiagramBanner;
        *a3 = v19;

        sub_1D1450714(&v59, &v49);
        return;
      }

      v37 = v59;
      v38 = v60;
      v39 = BYTE2(v60);
      v40 = *(&v60 + 3);
      v41 = BYTE5(v60);
      v42 = *(&v60 + 1);
      v43 = v61[0] & 1;
      v44 = v61[1];
      *&v45 = v6;
      *(&v45 + 1) = v5;
      *&v46 = v8;
      *(&v46 + 1) = v7;
      LOBYTE(v47) = v9;
      v48 = v10;
      v26 = *(v3 + 16);
      v21 = type metadata accessor for DiagramLine();
      v34 = 0u;
      v35 = 0u;
      v36 = 0;
      swift_allocObject();

      sub_1D1450714(&v59, &v49);
      DiagramLine.init(lineDiagramConfig:diagramData:hbxViewControllerFactory:axisMetricsFactory:)(&v37, &v45, v26, &v34);
      v23 = &protocol witness table for DiagramLine;
    }

    else
    {
      v34 = v59;
      LOWORD(v35) = v60;
      BYTE2(v35) = BYTE2(v60);
      *(&v35 + 3) = *(&v60 + 3);
      BYTE7(v35) = BYTE4(v15);
      *(&v35 + 1) = *(&v60 + 1);
      LOWORD(v36) = *v61;
      *(&v36 + 2) = *&v61[2];
      BYTE6(v36) = BYTE4(v16);
      *&v49 = v6;
      *(&v49 + 1) = v5;
      v50 = v8;
      v51 = v7;
      LOBYTE(v52) = v9;
      *&v55 = v10;
      v24 = *(v3 + 16);
      v21 = type metadata accessor for DiagramBar();
      v45 = 0u;
      v46 = 0u;
      v47 = 0;
      swift_allocObject();

      DiagramBar.init(barDiagramConfig:barData:hbxViewControllerFactory:customMetricsFactory:)(&v34, &v49, v24, &v45);
      v23 = &protocol witness table for DiagramBar;
    }

    goto LABEL_11;
  }

  if (v17 == 3)
  {
    v34 = v59;
    LOWORD(v35) = v60;
    BYTE2(v35) = BYTE2(v60) & 1;
    *&v49 = v6;
    *(&v49 + 1) = v5;
    v50 = v8;
    v51 = v7;
    LOBYTE(v52) = v9;
    *&v55 = v10;
    v25 = *(v3 + 16);
    v21 = type metadata accessor for DiagramAxisOnly();
    v45 = 0u;
    v46 = 0u;
    v47 = 0;
    swift_allocObject();

    DiagramAxisOnly.init(config:data:hbxViewControllerFactory:customMetricsFactory:)(&v34, &v49, v25, &v45);
    v23 = &protocol witness table for DiagramAxisOnly;
    goto LABEL_11;
  }

  if (v17 == 4)
  {
    v49 = v59;
    LOWORD(v50) = v60;
    BYTE2(v50) = BYTE2(v60);
    *(&v50 + 3) = *(&v60 + 3);
    HIBYTE(v50) = BYTE4(v15);
    v51 = *(&v60 + 1);
    v52 = *v61;
    v53 = *&v61[2];
    v54 = WORD2(v16);
    v55 = *&v61[8];
    v56 = *&v61[24];
    v57 = *&v61[40];
    v58 = v61[56] & 0x1F;
    *&v45 = v6;
    *(&v45 + 1) = v5;
    *&v46 = v8;
    *(&v46 + 1) = v7;
    LOBYTE(v47) = v9;
    v48 = v10;
    v20 = *(v3 + 16);
    v21 = type metadata accessor for DiagramDistribution();
    swift_allocObject();

    DiagramDistribution.init(distributionConfiguration:distributionData:hbxViewControllerFactory:)(&v49, &v45, v20);
    v23 = &protocol witness table for DiagramDistribution;
LABEL_11:
    a3[3] = v21;
    a3[4] = v23;
    *a3 = v22;
    return;
  }

  v27 = v59 >> 8;
  v28 = v59 >> 16;
  v31 = v59 >> 24;
  v33 = v9;
  v29 = type metadata accessor for DiagramHeartRateRecovery();
  v30 = swift_allocObject();
  *(v30 + 72) = 0;
  *(v30 + 80) = 0;
  *(v30 + 16) = v13;
  *(v30 + 17) = v27;
  *(v30 + 18) = v28;
  *(v30 + 19) = v31;
  *(v30 + 24) = v6;
  *(v30 + 32) = v5;
  *(v30 + 40) = v8;
  *(v30 + 48) = v7;
  *(v30 + 56) = v33;
  *(v30 + 64) = v10;
  a3[3] = v29;
  a3[4] = &protocol witness table for DiagramHeartRateRecovery;
  *a3 = v30;
}

void DiagramLine.init(lineDiagramConfig:diagramData:hbxViewControllerFactory:axisMetricsFactory:)(uint64_t *a1, uint64_t *a2, void *a3, uint64_t a4)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = a1[3];
  v8 = *(a1 + 32);
  v9 = *(a1 + 33);
  v10 = *a2;
  v11 = a2[1];
  v12 = a2[2];
  v13 = a2[3];
  v14 = *(a2 + 32);
  v66 = *(a1 + 4);
  v67 = *(a1 + 10);
  *(v4 + 32) = v66;
  v15 = (v4 + 32);
  v16 = a2[5];
  *(v4 + 16) = v6;
  *(v4 + 24) = v5;
  v68 = v5;
  *(v4 + 36) = v67;
  v65 = v7;
  *(v4 + 40) = v7;
  v63 = v9;
  v64 = v8;
  *(v4 + 48) = v8;
  *(v4 + 49) = v9;
  *(v4 + 56) = v10;
  *(v4 + 64) = v11;
  *(v4 + 72) = v12;
  *(v4 + 80) = v13;
  *(v4 + 88) = v14;
  *(v4 + 96) = v16;
  *&v89 = v6;
  *(&v89 + 1) = v5;
  WORD2(v90) = v67;
  LODWORD(v90) = v66;
  *(&v90 + 1) = v7;
  v91 = v8;
  v92 = v9;
  v83 = 0x404030100080700;
  LOWORD(v84) = 258;
  v85 = 0;
  BYTE2(v86) = -2;
  LOWORD(v86) = -7968;
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  v17 = sub_1D1450EAC(v16, &v89, &v83);

  *(v15 + 16) = v17;
  *&v89 = v10;
  *(&v89 + 1) = v11;
  *&v90 = v12;
  *(&v90 + 1) = v13;
  v91 = v14;
  v93 = v16;
  v94 = DiagramData.diagramBounds(forceNonZeroSize:)(1);
  x = v94.origin.x;
  y = v94.origin.y;
  width = v94.size.width;
  height = v94.size.height;
  *&v89 = v10;
  *(&v89 + 1) = v11;
  *&v90 = v12;
  *(&v90 + 1) = v13;
  v91 = v14;
  v93 = v16;
  v20 = *(v15 - 1);
  v21 = *v15;
  v22 = *(v15 + 2);
  v23 = *(v15 + 1);
  v24 = *(v15 + 16);
  v25 = *(v15 + 17);
  v83 = *(v15 - 2);
  v84 = v20;
  WORD2(v85) = v22;
  LODWORD(v85) = v21;
  v86 = v23;
  LOBYTE(v87) = v24;
  BYTE1(v87) = v25;

  v26 = sub_1D1451ADC(&v89, &v83);

  *&v78 = v6;
  *(&v78 + 1) = v68;
  v80 = v67;
  v79 = v66;
  v81 = v65;
  LOBYTE(v82) = v64;
  BYTE1(v82) = v63;
  v27 = *(v15 + 56);
  v28 = *(v15 + 8);
  v29 = *(v15 + 10);
  v89 = *(v15 + 6);
  v90 = v29;
  v91 = v27;
  v93 = v28;
  v30 = *(v15 + 16);

  sub_1D145218C(&v78, &v89, v30, &v83);
  v31 = v83;
  v32 = v84;
  v33 = v85;
  v34 = v86;
  v35 = v87;
  v36 = v88;

  *(v15 + 10) = v31;
  *(v15 + 11) = v32;
  *(v15 + 12) = v33;
  *(v15 + 13) = v34;
  *(v15 + 14) = v35;
  *(v15 + 15) = v36;
  v37 = *(v15 - 1);
  v38 = *(v15 + 2);
  v39 = *v15;
  sub_1D14532F4(a4, &v89, &qword_1EE0597F0, qword_1EE0597F8, &protocol descriptor for DiagramAxisMetricsCalculatorProducing, sub_1D145329C);
  type metadata accessor for DiagramAxis();
  v40 = swift_allocObject();
  *(v40 + 16) = 0u;
  *(v40 + 32) = 0u;
  *(v40 + 48) = 0u;
  *(v40 + 64) = v37;
  *(v40 + 76) = v38;
  *(v40 + 72) = v39;
  *(v40 + 80) = x;
  *(v40 + 88) = y;
  *(v40 + 96) = width;
  *(v40 + 104) = height;
  *(v40 + 112) = v31;
  *(v40 + 120) = v32;
  *(v40 + 128) = v33;
  *(v40 + 136) = v34;
  *(v40 + 144) = 0;
  *(v40 + 152) = v35;
  *(v40 + 160) = v36;
  *(v40 + 168) = 0;
  sub_1D14532F4(&v89, &v78, &qword_1EE0597F0, qword_1EE0597F8, &protocol descriptor for DiagramAxisMetricsCalculatorProducing, sub_1D145329C);
  if (v81)
  {
    sub_1D1450E94(&v78, &v83);
    v41 = a3;
  }

  else
  {
    v42 = type metadata accessor for DiagramAxisMetricsCalculatorFactory();
    v43 = swift_allocObject();
    v41 = a3;
    *(v43 + 16) = a3;
    v86 = v42;
    v87 = &protocol witness table for DiagramAxisMetricsCalculatorFactory;
    v83 = v43;
    v44 = a3;
  }

  if ((v37 & 0xFF00000000) == 0x300000000)
  {

LABEL_14:
    sub_1D1456590(a4, &qword_1EE0597F0, qword_1EE0597F8);
    v52 = &v89;
    v53 = &qword_1EE0597F0;
    v54 = qword_1EE0597F8;
LABEL_15:
    sub_1D1456590(v52, v53, v54);
LABEL_16:
    __swift_destroy_boxed_opaque_existential_1(&v83);
    *(v62 + 104) = v40;
    return;
  }

  if ((v37 & 0xFF00000000) == 0x200000000)
  {
  }

  else
  {
    v45 = v86;
    v46 = v87;
    __swift_project_boxed_opaque_existential_1(&v83, v86);
    v74 = v37;
    v73 = 0;
    (v46[1])(&v75, &v74, &v73, v45, v46);
    if (v77)
    {
      sub_1D1450E94(&v75, &v78);
      v47 = v81;
      v48 = v82;
      __swift_project_boxed_opaque_existential_1(&v78, v81);
      v95.origin.x = x;
      v95.origin.y = y;
      v95.size.width = width;
      v95.size.height = height;
      MinX = CGRectGetMinX(v95);
      v96.origin.x = x;
      v96.origin.y = y;
      v96.size.width = width;
      v96.size.height = height;
      MaxX = CGRectGetMaxX(v96);
      if (MinX > MaxX)
      {
        __break(1u);
        goto LABEL_22;
      }

      (*(v48 + 8))(&v75, v26, v47, v48, MinX, MaxX);

      v51 = v76;
      *(v40 + 16) = v75;
      *(v40 + 32) = v51;

      __swift_destroy_boxed_opaque_existential_1(&v78);
    }

    else
    {

      sub_1D1456590(&v75, &qword_1EC6301C8, qword_1EE059CC8);
    }
  }

  if ((v39 & 0xFF000000) == 0x2000000)
  {

    goto LABEL_14;
  }

  v55 = v86;
  v56 = v87;
  __swift_project_boxed_opaque_existential_1(&v83, v86);
  v74 = HIBYTE(v37);
  v73 = 1;
  (v56[1])(&v75, &v74, &v73, v55, v56);
  if (!v77)
  {

    sub_1D1456590(a4, &qword_1EE0597F0, qword_1EE0597F8);
    sub_1D1456590(&v89, &qword_1EE0597F0, qword_1EE0597F8);
    v53 = &qword_1EC6301C8;
    v54 = qword_1EE059CC8;
    v52 = &v75;
    goto LABEL_15;
  }

  sub_1D1450E94(&v75, &v78);
  v57 = v81;
  v58 = v82;
  __swift_project_boxed_opaque_existential_1(&v78, v81);
  v97.origin.x = x;
  v97.origin.y = y;
  v97.size.width = width;
  v97.size.height = height;
  MinY = CGRectGetMinY(v97);
  v98.origin.x = x;
  v98.origin.y = y;
  v98.size.width = width;
  v98.size.height = height;
  MaxY = CGRectGetMaxY(v98);
  if (MinY <= MaxY)
  {
    (*(v58 + 8))(&v75, 0, v57, v58, MinY, MaxY);

    sub_1D1456590(a4, &qword_1EE0597F0, qword_1EE0597F8);
    sub_1D1456590(&v89, &qword_1EE0597F0, qword_1EE0597F8);
    v61 = v76;
    *(v40 + 40) = v75;
    *(v40 + 56) = v61;

    __swift_destroy_boxed_opaque_existential_1(&v78);
    goto LABEL_16;
  }

LABEL_22:
  __break(1u);
}

uint64_t sub_1D1450E94(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

char *sub_1D1450EAC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v4 = 0;
  v5 = a2[3];
  v6 = *(a3 + 24) | (*(a3 + 26) << 16);
  v7 = *(a3 + 16);
  v8 = *(a3 + 9);
  v9 = *(a2 + 32);
  v10 = *a2;
  v26 = a1 + 32;
  v27 = MEMORY[0x1E69E7CC0];
  v11 = (*a2 + 56);
  v23 = v5;
  v24 = *(a1 + 16);
  v22 = v9;
  v21 = *a2;
  do
  {
    if (v4 < *(v10 + 16))
    {
      v8 = *(v11 - 15);
      v7 = *(v11 - 1);
      v6 = *v11 | (*(v11 + 2) << 16);
    }

    v12 = *(v26 + 8 * v4);

    sub_1D1451170(v8, v7, v6, v5, v9, v12, v28);

    v13 = v28[0];
    if (v28[0] != 1)
    {
      v25 = v8;
      v14 = v28[1];
      v15 = v28[2];
      v16 = v28[3];
      sub_1D15A4148();
      sub_1D15A4138();
      sub_1D15A4128();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      if (v13)
      {

        sub_1D15A4138();
        sub_1D15A4128();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v27 = sub_1D148C180(0, *(v27 + 2) + 1, 1, v27);
        }

        v18 = *(v27 + 2);
        v17 = *(v27 + 3);
        if (v18 >= v17 >> 1)
        {
          v27 = sub_1D148C180((v17 > 1), v18 + 1, 1, v27);
        }

        sub_1D15238A4(v13, v14, v15, v16);
        *(v27 + 2) = v18 + 1;
        v19 = &v27[24 * v18];
        *(v19 + 4) = v13;
        *(v19 + 5) = v14;
        *(v19 + 6) = v15;
      }

      else
      {
        sub_1D15238A4(0, v14, v15, v16);
      }

      v5 = v23;
      v3 = v24;
      v8 = v25;
      v9 = v22;
      v10 = v21;
    }

    ++v4;
    v11 += 16;
  }

  while (v3 != v4);
  return v27;
}

unint64_t sub_1D1451170@<X0>(unint64_t result@<X0>, __int16 a2@<W1>, int a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  if ((a3 & 0x800000) == 0)
  {
    goto LABEL_39;
  }

  if ((a3 & 0xFEE0E0) == 0xFEE0E0)
  {
    goto LABEL_39;
  }

  if (!*(a6 + 16))
  {
    goto LABEL_39;
  }

  result = sub_1D1451D94(result);
  if ((v12 & 1) == 0)
  {
    goto LABEL_39;
  }

  v13 = *(*(a6 + 56) + 40 * result);
  sub_1D15A4148();

  sub_1D15A4138();
  sub_1D15A4128();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a2 == 25)
  {
    v14 = 0;
  }

  else
  {
    v14 = DiagramConfiguration.TextAttributes.toTextAttributes()();
  }

  if (HIBYTE(a2) != 25)
  {
    v15 = DiagramConfiguration.TextAttributes.toTextAttributes()();
    if (v14 | v15)
    {
      goto LABEL_12;
    }

    goto LABEL_38;
  }

  v15 = 0;
  if (!v14)
  {
LABEL_38:

LABEL_39:
    *a7 = 1;
    *(a7 + 8) = 0u;
    *(a7 + 24) = 0u;
    *(a7 + 40) = 0;
    return result;
  }

LABEL_12:
  v16 = *(v13 + 16);
  if (!v16)
  {

    v21 = MEMORY[0x1E69E7CC0];
    v23 = MEMORY[0x1E69E7CC0];
    if (v14)
    {
      goto LABEL_35;
    }

    goto LABEL_41;
  }

  v63 = v15;
  v64 = v14;
  v65 = a5;
  v18 = *(v13 + 32);
  v17 = *(v13 + 40);
  v19 = v13;
  v20 = v16 - 1;
  if (v16 == 1)
  {
    v21 = MEMORY[0x1E69E7CC0];
    v22 = v17;
    v23 = MEMORY[0x1E69E7CC0];
LABEL_15:

    v24 = sub_1D15A29A8();
    v25 = DiagramConfiguration.ValueFormatter.format(value:)(v24);

    if (v25.value._object)
    {
      countAndFlagsBits = v25.value._countAndFlagsBits;
    }

    else
    {
      countAndFlagsBits = 1701736270;
    }

    if (v25.value._object)
    {
      object = v25.value._object;
    }

    else
    {
      object = 0xE400000000000000;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v21 = sub_1D148BC24(0, v21[2] + 1, 1, v21);
    }

    v29 = v21[2];
    v28 = v21[3];
    if (v29 >= v28 >> 1)
    {
      v21 = sub_1D148BC24((v28 > 1), v29 + 1, 1, v21);
    }

    v21[2] = v29 + 1;
    v30 = &v21[4 * v29];
    *(v30 + 4) = countAndFlagsBits;
    *(v30 + 5) = object;
    v30[6] = v18;
    v30[7] = v22;
    v31 = sub_1D15A29A8();
    v32 = DiagramConfiguration.ValueFormatter.format(value:)(v31);
    v33 = v32.value._object;

    if (v32.value._object)
    {
      v34 = v32.value._countAndFlagsBits;
    }

    else
    {
      v34 = 1701736270;
    }

    if (!v32.value._object)
    {
      v33 = 0xE400000000000000;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1D148BC24(0, v23[2] + 1, 1, v23);
      v23 = result;
    }

    v15 = v63;
    v36 = v23[2];
    v35 = v23[3];
    if (v36 >= v35 >> 1)
    {
      result = sub_1D148BC24((v35 > 1), v36 + 1, 1, v23);
      v23 = result;
    }

    v23[2] = v36 + 1;
    v37 = &v23[4 * v36];
    *(v37 + 4) = v34;
    *(v37 + 5) = v33;
    v37[6] = v18;
    v37[7] = v17;
    v14 = v64;
    if (v64)
    {
LABEL_35:
      v38 = 0x4018000000000000;
      if (v15)
      {
LABEL_36:
        v39 = 0x4018000000000000;
LABEL_43:
        *a7 = v21;
        *(a7 + 8) = v38;
        *(a7 + 16) = v14;
        *(a7 + 24) = v23;
        *(a7 + 32) = v39;
        *(a7 + 40) = v15;
        return result;
      }

LABEL_42:

      v23 = 0;
      v39 = 0;
      goto LABEL_43;
    }

LABEL_41:

    v21 = 0;
    v38 = 0;
    if (v15)
    {
      goto LABEL_36;
    }

    goto LABEL_42;
  }

  v40 = (v19 + 56);
  v21 = MEMORY[0x1E69E7CC0];
  v41 = v17;
  v42 = v18;
  v22 = v17;
  v23 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v18 = *(v40 - 1);
    v17 = *v40;
    if (vabdd_f64(v18, v42) < 0.000001)
    {
      if (v17 > v22)
      {
        v22 = *v40;
      }

      if (v41 < v17)
      {
        v17 = v41;
      }

      v18 = v42;
      goto LABEL_50;
    }

    v43 = sub_1D15A29A8();
    if (v65)
    {
      if (a4)
      {
        v44 = [objc_opt_self() hk_percentNumberFormatter];
        v45 = [v44 stringFromNumber_];
        goto LABEL_59;
      }

      result = HKIntegerFormatter();
      if (!result)
      {
        goto LABEL_82;
      }
    }

    else
    {
      result = HKNumberFormatterWithDecimalPrecision();
      if (!result)
      {
        goto LABEL_61;
      }
    }

    v44 = result;
    v45 = [result stringFromNumber_];
LABEL_59:
    v46 = v45;

    if (v46)
    {
      v47 = sub_1D15A3F38();
      v49 = v48;

      goto LABEL_62;
    }

LABEL_61:

    v49 = 0xE400000000000000;
    v47 = 1701736270;
LABEL_62:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v21 = sub_1D148BC24(0, v21[2] + 1, 1, v21);
    }

    v51 = v21[2];
    v50 = v21[3];
    if (v51 >= v50 >> 1)
    {
      v21 = sub_1D148BC24((v50 > 1), v51 + 1, 1, v21);
    }

    v21[2] = v51 + 1;
    v52 = &v21[4 * v51];
    *(v52 + 4) = v47;
    *(v52 + 5) = v49;
    v52[6] = v42;
    v52[7] = v22;
    v53 = sub_1D15A29A8();
    if ((v65 & 1) == 0)
    {
      result = HKNumberFormatterWithDecimalPrecision();
      if (!result)
      {
        goto LABEL_75;
      }

      goto LABEL_72;
    }

    if (a4)
    {
      v54 = [objc_opt_self() hk_percentNumberFormatter];
      v55 = [v54 stringFromNumber_];
      goto LABEL_73;
    }

    result = HKIntegerFormatter();
    if (!result)
    {
      break;
    }

LABEL_72:
    v54 = result;
    v55 = [result stringFromNumber_];
LABEL_73:
    v56 = v55;

    if (!v56)
    {
LABEL_75:

      v59 = 0xE400000000000000;
      v57 = 1701736270;
      goto LABEL_76;
    }

    v57 = sub_1D15A3F38();
    v59 = v58;

LABEL_76:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v23 = sub_1D148BC24(0, v23[2] + 1, 1, v23);
    }

    v61 = v23[2];
    v60 = v23[3];
    if (v61 >= v60 >> 1)
    {
      v23 = sub_1D148BC24((v60 > 1), v61 + 1, 1, v23);
    }

    v23[2] = v61 + 1;
    v62 = &v23[4 * v61];
    *(v62 + 4) = v57;
    *(v62 + 5) = v59;
    v62[6] = v42;
    v62[7] = v41;
    v22 = v17;
    v42 = v18;
LABEL_50:
    v40 += 2;
    v41 = v17;
    if (!--v20)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_82:
  __break(1u);
  return result;
}

__C::CGRect __swiftcall DiagramData.diagramBounds(forceNonZeroSize:)(Swift::Bool forceNonZeroSize)
{
  if ((*(v1 + 32) & 1) == 0)
  {
    width = *(v1 + 16);
    height = *(v1 + 24);
    x = *v1;
    y = *(v1 + 8);
    if (width != 0.0 || height != 0.0 || !forceNonZeroSize)
    {
      goto LABEL_32;
    }

    goto LABEL_30;
  }

  v6 = *(v1 + 40);
  v7 = *(v6 + 16);
  if (!v7)
  {
    if (forceNonZeroSize)
    {
      x = -0.005;
    }

    else
    {
      x = 0.0;
    }

    if (forceNonZeroSize)
    {
      width = 0.01;
    }

    else
    {
      width = 0.0;
    }

    y = x;
    goto LABEL_31;
  }

  v8 = 0;
  v29 = MEMORY[0x1E69E7CC0];
  do
  {
    if (v8 >= *(v6 + 16))
    {
      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    v9 = v8 + 1;

    sub_1D14C41C4(v10);
    v8 = v9;
  }

  while (v7 != v9);
  v11 = *MEMORY[0x1E695F050];
  v12 = *(MEMORY[0x1E695F050] + 8);
  v13 = *(MEMORY[0x1E695F050] + 16);
  v14 = *(MEMORY[0x1E695F050] + 24);
  v15 = *(v29 + 16);
  if (v15)
  {
    v16 = 0;
    height = *(MEMORY[0x1E695F050] + 24);
    width = *(MEMORY[0x1E695F050] + 16);
    y = *(MEMORY[0x1E695F050] + 8);
    x = *MEMORY[0x1E695F050];
    while (v16 < *(v29 + 16))
    {
      v25 = *(v29 + 32 + 48 * v16 + 8);
      v26 = *(v25 + 16);
      if (v26)
      {

        v27 = (v25 + 40);
        v21 = v11;
        v22 = v12;
        v23 = v13;
        v24 = v14;
        do
        {
          v34.origin.x = *(v27 - 1);
          v34.origin.y = *v27;
          v34.size.width = 0.0;
          v34.size.height = 0.0;
          *&v21 = CGRectUnion(*&v21, v34);
          v27 += 2;
          --v26;
        }

        while (v26);
      }

      else
      {

        v21 = 0.0;
        v22 = 0.0;
        v23 = 0.0;
        v24 = 0.0;
      }

      ++v16;
      v33.origin.x = v21;
      v30.origin.x = x;
      v33.origin.y = v22;
      v30.origin.y = y;
      v33.size.width = v23;
      v30.size.width = width;
      v33.size.height = v24;
      v30.size.height = height;
      v31 = CGRectUnion(v30, v33);
      x = v31.origin.x;
      y = v31.origin.y;
      width = v31.size.width;
      height = v31.size.height;

      if (v16 == v15)
      {
        goto LABEL_27;
      }
    }

    goto LABEL_34;
  }

  x = *MEMORY[0x1E695F050];
  y = *(MEMORY[0x1E695F050] + 8);
  width = *(MEMORY[0x1E695F050] + 16);
  height = *(MEMORY[0x1E695F050] + 24);
LABEL_27:

  if (width == 0.0 && height == 0.0 && forceNonZeroSize)
  {
LABEL_30:
    x = x + -0.005;
    y = y + -0.005;
    width = 0.01;
LABEL_31:
    height = width;
  }

LABEL_32:
  v2 = x;
  v3 = y;
  v4 = width;
  v5 = height;
LABEL_35:
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

uint64_t sub_1D1451ADC(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(*a2 + 16);
  if (v3)
  {
    v4 = *(result + 40);
    v5 = *(v4 + 16);
    if (v5)
    {
      v6 = 0;
      v7 = v2 + 32;
      v24 = v5 - 1;
      v8 = MEMORY[0x1E69E7CC0];
      v25 = *(v4 + 16);
      while (1)
      {
        for (i = v7 + 32 * v6; ; i += 32)
        {
          if (v6 >= *(v4 + 16))
          {
            __break(1u);
LABEL_32:
            __break(1u);
LABEL_33:
            __break(1u);
            return result;
          }

          v10 = *(v4 + 32 + 8 * v6);
          v11 = *(v2 + 16);
          if (v6 >= v3)
          {
            v12 = v2 + 32 * v3;
            if (v3 > v11)
            {
              goto LABEL_33;
            }
          }

          else
          {
            v12 = i;
            if (v6 >= v11)
            {
              goto LABEL_32;
            }
          }

          if (*(v10 + 16))
          {
            break;
          }

LABEL_6:
          if (v5 == ++v6)
          {
            return v8;
          }
        }

        v13 = *(v12 + 5);

        v14 = sub_1D1451D94(2u);
        if ((v15 & 1) == 0)
        {
          goto LABEL_5;
        }

        v16 = *(*(v10 + 56) + 40 * v14);

        if (v13 > 2)
        {
          break;
        }

        v17 = sub_1D15A4BA8();

        if ((v17 & 1) == 0)
        {
          goto LABEL_5;
        }

        v18 = *(v16 + 16);
        if (!v18)
        {
          goto LABEL_5;
        }

LABEL_20:
        v19 = 32;
        do
        {
          v20 = *(v16 + v19);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v8 = sub_1D145201C(0, *(v8 + 2) + 1, 1, v8);
          }

          v22 = *(v8 + 2);
          v21 = *(v8 + 3);
          if (v22 >= v21 >> 1)
          {
            v8 = sub_1D145201C((v21 > 1), v22 + 1, 1, v8);
          }

          *(v8 + 2) = v22 + 1;
          *&v8[8 * v22 + 32] = v20;
          v19 += 16;
          --v18;
          v5 = v25;
        }

        while (v18);

        v7 = v2 + 32;
        if (v24 == v6++)
        {
          return v8;
        }
      }

      v18 = *(v16 + 16);
      if (v18)
      {
        goto LABEL_20;
      }

LABEL_5:

      goto LABEL_6;
    }
  }

  return MEMORY[0x1E69E7CC0];
}

unint64_t sub_1D1451D94(unsigned __int8 a1)
{
  sub_1D15A4C88();
  sub_1D15A3F88();

  v2 = sub_1D15A4CB8();

  return sub_1D1451E6C(a1, v2);
}

unint64_t sub_1D1451E6C(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      if (*(*(v2 + 48) + v4))
      {
        if (*(*(v2 + 48) + v4) == 1)
        {
          v7 = 0xD000000000000012;
          v8 = 0x80000001D15BCD70;
          v9 = a1;
          if (!a1)
          {
            goto LABEL_17;
          }
        }

        else
        {
          v7 = 0x636E657265666552;
          v8 = 0xED0000656E694C65;
          v9 = a1;
          if (!a1)
          {
LABEL_17:
            v11 = 0xE700000000000000;
            if (v7 != 0x746E65746E6F43)
            {
              goto LABEL_19;
            }

            goto LABEL_18;
          }
        }
      }

      else
      {
        v8 = 0xE700000000000000;
        v7 = 0x746E65746E6F43;
        v9 = a1;
        if (!a1)
        {
          goto LABEL_17;
        }
      }

      if (v9 == 1)
      {
        v10 = 0xD000000000000012;
      }

      else
      {
        v10 = 0x636E657265666552;
      }

      if (v9 == 1)
      {
        v11 = 0x80000001D15BCD70;
      }

      else
      {
        v11 = 0xED0000656E694C65;
      }

      if (v7 != v10)
      {
        goto LABEL_19;
      }

LABEL_18:
      if (v8 == v11)
      {

        return v4;
      }

LABEL_19:
      v12 = sub_1D15A4BA8();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

char *sub_1D145201C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1D1452138(0, &qword_1EE059690, MEMORY[0x1E69E63B0], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void sub_1D1452138(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1D145218C@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, double *a4@<X8>)
{
  v5 = *(a1 + 8);
  v7 = *(a1 + 20);
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  v10 = *(a1 + 32);
  v11 = *(a1 + 33);
  v81 = *a2;
  v82 = a2[1];
  v12 = *(a2 + 32);
  v13 = *(a2 + 5);
  v84 = *a1;
  v6 = v84;
  v85 = v5;
  v86 = v8;
  v75 = v7;
  v14 = v7;
  v87 = v7;
  v88 = v9;
  v89 = v10;
  v90 = v11;
  v15 = sub_1D1452BB0(&v84);
  v84 = v6;
  v85 = v5;
  v76 = v8;
  v77 = v5;
  v87 = v14;
  v86 = v8;
  v88 = v9;
  v89 = v10;
  v90 = v11;
  v16 = sub_1D1452E00(&v84);
  v17 = dbl_1D15B3E28[v11];
  if (v15 > v16)
  {
    v18 = v15;
  }

  else
  {
    v18 = v16;
  }

  v19 = dbl_1D15B3E48[v11];
  v20 = *(v6 + 16);
  if (!v20)
  {
    v73 = 0;
    v39 = dbl_1D15B3E48[v11];
    goto LABEL_42;
  }

  v74 = a3;
  v84 = MEMORY[0x1E69E7CC0];
  sub_1D14531B4(0, v20, 0);
  sub_1D15A4148();
  v21 = v84;
  v79 = v6;
  v22 = (v6 + 40);
  do
  {
    v24 = *v22;
    v22 += 32;
    v23 = v24;
    sub_1D15A4138();
    sub_1D15A4128();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v84 = v21;
    v26 = *(v21 + 16);
    v25 = *(v21 + 24);
    if (v26 >= v25 >> 1)
    {
      sub_1D14531B4((v25 > 1), v26 + 1, 1);
      v21 = v84;
    }

    *(v21 + 16) = v26 + 1;
    v27 = v21 + 56 * v26;
    *(v27 + 32) = v81;
    *(v27 + 48) = v82;
    *(v27 + 64) = v12;
    *(v27 + 72) = v13;
    *(v27 + 80) = v23;
    --v20;
  }

  while (v20);
  v28 = v79;
  v29 = *(v79 + 16);
  if (!v29)
  {
LABEL_33:
    v73 = 0;
    v39 = v19;
    goto LABEL_41;
  }

  v30 = 0;
  v31 = (v79 + 37);
  v32 = (v79 + 37);
  do
  {
    if (v30 >= *(v28 + 16))
    {
LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
      goto LABEL_91;
    }

    v33 = *v32;
    sub_1D15A4138();
    sub_1D15A4128();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v34 = v33 == 1;
    if (v33 > 1)
    {
      v28 = v79;
      goto LABEL_20;
    }

    v28 = v79;
    if (!v34)
    {

LABEL_32:
      v40 = COERCE_DOUBLE(sub_1D1459D94(v21));
      if ((v41 & 1) == 0)
      {
        v39 = v19;
        v19 = v19 + v40;
        v42 = 1;
        goto LABEL_40;
      }

      goto LABEL_33;
    }

LABEL_20:
    v35 = sub_1D15A4BA8();

    if (v35)
    {
      goto LABEL_32;
    }

    ++v30;
    v32 += 32;
  }

  while (v29 != v30);
  v36 = 0;
  while (1)
  {
    if (v36 >= *(v79 + 16))
    {
      goto LABEL_90;
    }

    v37 = *v31;
    sub_1D15A4138();
    sub_1D15A4128();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    if (v37 <= 1 && v37)
    {
      break;
    }

    v38 = sub_1D15A4BA8();

    if (v38)
    {
      goto LABEL_36;
    }

    ++v36;
    v31 += 32;
    if (v29 == v36)
    {
      goto LABEL_33;
    }
  }

LABEL_36:
  v43 = COERCE_DOUBLE(sub_1D1459D94(v21));
  if (v44)
  {
    v39 = v19;
  }

  else
  {
    v39 = v19 + v43;
  }

  v42 = (v44 & 1) == 0;
LABEL_40:
  v73 = v42;
LABEL_41:
  a3 = v74;
LABEL_42:
  v80 = v19;
  v45 = v17;
  v46 = *(a3 + 16);
  if (!v46)
  {
    v61 = 0.0;
    v49 = 0.0;
    goto LABEL_73;
  }

  v47 = 1 - v46;
  v48 = a3 + 48;
  v49 = 0.0;
  while (2)
  {
    v50 = *(v48 - 16);
    v51 = *(v50 + 16);
    if (v51)
    {
      v83 = v47;

      v52 = sub_1D15A3EF8();

      type metadata accessor for Key(0);
      sub_1D14587E0();
      v53 = sub_1D15A3E48();
      [v52 sizeWithAttributes_];
      v55 = v54;

      if (v51 > *(v50 + 16))
      {
        goto LABEL_88;
      }

      v56 = v55 * 0.5;

      v57 = sub_1D15A3EF8();

      v58 = sub_1D15A3E48();
      [v57 sizeWithAttributes_];
      v60 = v59;

      v61 = v60 * 0.5;
      if (*(v50 + 16))
      {

        v62 = sub_1D15A3EF8();

        v63 = sub_1D15A3E48();
        [v62 sizeWithAttributes_];
        v65 = v64;

        if (v49 <= v65)
        {
          v49 = v65;
        }

        v47 = v83;
        goto LABEL_55;
      }

      v47 = v83;
    }

    else
    {

      v56 = 0.0;
      v61 = 0.0;
    }

    if (v49 > 0.0)
    {
LABEL_55:
      if (v56 >= 0.0)
      {
        if (v56 > v61)
        {
          v61 = v56;
        }

        if (!v47)
        {
          goto LABEL_73;
        }
      }

      else if (v61 >= 0.0)
      {
        if (!v47)
        {
          goto LABEL_73;
        }
      }

      else if (!v47)
      {
        v61 = 0.0;
        goto LABEL_73;
      }

      goto LABEL_45;
    }

    v49 = 0.0;
    if (v56 < 0.0)
    {
      if (!v47)
      {
        if (v61 < 0.0)
        {
          v61 = 0.0;
        }

        goto LABEL_73;
      }

      goto LABEL_45;
    }

    if (v47)
    {
LABEL_45:
      ++v47;
      v48 += 24;
      if (v47 == 1)
      {
        __break(1u);
LABEL_88:
        __break(1u);
        goto LABEL_89;
      }

      continue;
    }

    break;
  }

  if (v56 > v61)
  {
    v61 = v56;
  }

LABEL_73:
  if ((v77 & 0xFF00000000) == 0x300000000)
  {

    v67 = v80 + 0.0;
    v39 = v39 + v61;
    goto LABEL_82;
  }

  v67 = v80;
  if ((v76 & 0xFF000000) == 0x2000000)
  {

    v68 = 0.0;
    v67 = v80 + 0.0;
    v39 = v39 + v61;
    goto LABEL_81;
  }

  if (v73)
  {
LABEL_91:
    result = sub_1D15A4908();
    __break(1u);
    return result;
  }

  v69 = 0.0;
  if (((v75 << 32) & 0xFF00000000) == 0)
  {
    v69 = 3.5;
  }

  v68 = v69 + v18;
LABEL_81:
  if ((v77 & 0xFF00000000) == 0x200000000)
  {
LABEL_82:
    v70 = v18 + v45;
    v68 = 0.0;
    v71 = 0.0;
  }

  else
  {
    v72 = 0.0;
    if ((v77 & 0xFF0000000000) == 0)
    {
      v72 = 3.5;
    }

    v71 = v72 + v18 + 2.0;
    v70 = v45;
  }

  *a4 = v18 + v45 + v49;
  a4[1] = v18 + v67;
  a4[2] = v70;
  a4[3] = v18 + v39;
  a4[4] = v68;
  a4[5] = v71;
  return result;
}

void sub_1D1452A24(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

char *sub_1D1452A74(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1D1452A24(0, &qword_1EE0596B0, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_1D1452B90(char *a1, int64_t a2, char a3)
{
  result = sub_1D1452A74(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

double sub_1D1452BB0(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 16);
  if (v2)
  {
    v13 = MEMORY[0x1E69E7CC0];
    sub_1D1452B90(0, v2, 0);
    sub_1D15A4148();
    v3 = v13;
    v4 = v1 + 32;
    do
    {
      v4 += 32;
      sub_1D15A4138();
      sub_1D15A4128();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v5 = DiagramConfiguration.LineWidth.toPoints()();

      v7 = *(v13 + 16);
      v6 = *(v13 + 24);
      v8 = v7 + 1;
      if (v7 >= v6 >> 1)
      {
        sub_1D1452B90((v6 > 1), v7 + 1, 1);
      }

      *(v13 + 16) = v8;
      *(v13 + 8 * v7 + 32) = v5 * 0.5;
      --v2;
    }

    while (v2);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
    v8 = *(MEMORY[0x1E69E7CC0] + 16);
    if (!v8)
    {
      v9 = 0.0;
      goto LABEL_17;
    }
  }

  v9 = *(v3 + 32);
  v10 = v8 - 1;
  if (v8 != 1)
  {
    v11 = 40;
    do
    {
      if (v9 < *(v3 + v11))
      {
        v9 = *(v3 + v11);
      }

      v11 += 8;
      --v10;
    }

    while (v10);
  }

LABEL_17:

  return v9;
}

double DiagramConfiguration.LineWidth.toPoints()()
{
  v1 = *v0;
  if (v1 > 2)
  {
    if (v1 == 3)
    {
      return (DiagramConfiguration.LineWidth.toPoints())() * 0.5;
    }

    if (v1 == 4)
    {
      DiagramConfiguration.LineWidth.toPoints()();
    }

    else
    {
      v5 = (DiagramConfiguration.LineWidth.toPoints())();
      v3 = v5 + v5;
    }

    v4 = 1.5;
  }

  else
  {
    if (!*v0)
    {
      return 3.0;
    }

    if (v1 == 1)
    {
      return 0.5;
    }

    DiagramConfiguration.LineWidth.toPoints()();
    v4 = 3.0;
  }

  return v3 / v4;
}

double sub_1D1452E00(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 16);
  if (v2)
  {
    v13 = MEMORY[0x1E69E7CC0];
    sub_1D1452B90(0, v2, 0);
    sub_1D15A4148();
    v3 = v13;
    v4 = v1 + 35;
    do
    {
      v4 += 32;
      sub_1D15A4138();
      sub_1D15A4128();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v5 = DiagramConfiguration.LineRadius.toFloat()();

      v7 = *(v13 + 16);
      v6 = *(v13 + 24);
      v8 = v7 + 1;
      if (v7 >= v6 >> 1)
      {
        sub_1D1452B90((v6 > 1), v7 + 1, 1);
      }

      *(v13 + 16) = v8;
      *(v13 + 8 * v7 + 32) = v5;
      --v2;
    }

    while (v2);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
    v8 = *(MEMORY[0x1E69E7CC0] + 16);
    if (!v8)
    {
      v9 = 0.0;
      goto LABEL_17;
    }
  }

  v9 = *(v3 + 32);
  v10 = v8 - 1;
  if (v8 != 1)
  {
    v11 = 40;
    do
    {
      if (v9 < *(v3 + v11))
      {
        v9 = *(v3 + v11);
      }

      v11 += 8;
      --v10;
    }

    while (v10);
  }

LABEL_17:

  return v9;
}

double DiagramConfiguration.LineRadius.toFloat()()
{
  v1 = *v0;
  if (v1 > 2)
  {
    if (v1 == 3)
    {
      return 3.5;
    }

    else if (v1 == 4)
    {
      return DiagramConfiguration.LineRadius.toFloat()() * 3.0 * 0.25;
    }

    else
    {
      return DiagramConfiguration.LineRadius.toFloat()() * 4.0 / 3.0;
    }
  }

  else if (*v0)
  {
    if (v1 == 1)
    {
      return DiagramConfiguration.LineRadius.toFloat()() * 0.5;
    }

    else
    {
      return 0.0;
    }
  }

  else
  {
    return 4.0;
  }
}

void *sub_1D1453050(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1D14531D4(0, &qword_1EE0596A8, sub_1D1453238, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[7 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 56 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1D1453238();
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1D14531B4(void *a1, int64_t a2, char a3)
{
  result = sub_1D1453050(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_1D14531D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D1453238()
{
  if (!qword_1EE05A6B8[0])
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, qword_1EE05A6B8);
    }
  }
}

void sub_1D145329C(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_1D1453368(255, a3);
    v4 = sub_1D15A4608();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D14532F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t sub_1D1453368(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

double sub_1D1453430@<D0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1D15A3268();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = 63;
  switch(*a1)
  {
    case 1:
      v12 = type metadata accessor for DiagramDateRangeAxisMetricsCalculator();
      v13 = swift_allocObject();
      v17 = &protocol witness table for DiagramDateRangeAxisMetricsCalculator;
      goto LABEL_22;
    case 2:
      v18 = [objc_allocWithZone(MEMORY[0x1E69A4100]) init];
      goto LABEL_14;
    case 3:
      v18 = [objc_allocWithZone(MEMORY[0x1E69A4108]) init];
LABEL_14:
      v23 = v18;
      goto LABEL_29;
    case 4:
      goto LABEL_27;
    case 5:
      v10 = 70;
      goto LABEL_27;
    case 6:
      v10 = 99;
      goto LABEL_27;
    case 7:
      v10 = 79;
      goto LABEL_27;
    case 8:
      v10 = 2;
LABEL_27:
      v32 = sub_1D14FC648(v10);
      if (!v32)
      {
        goto LABEL_30;
      }

      v23 = v32;
      swift_unknownObjectRetain();
LABEL_29:
      v33 = type metadata accessor for DiagramAxisMetricsCalculator();
      swift_getObjectType();
      v34 = sub_1D14BC050(v23, 3, sub_1D14BBCDC, 0);
      *(a2 + 24) = v33;
      *(a2 + 32) = &protocol witness table for DiagramAxisMetricsCalculator;
      swift_unknownObjectRelease();
      *a2 = v34;
      return result;
    case 9:
      v27 = *(v2 + 16);
      v28 = objc_allocWithZone(type metadata accessor for DiagramAxisMetricsCalculatorFactory.HiLoScalarAxisDimension());
      v29 = v27;
      v30 = sub_1D14FCB94(173, v29);

      v31 = type metadata accessor for DiagramAxisMetricsCalculator();
      v13 = swift_allocObject();
      *(v13 + 16) = v30;
      *(v13 + 24) = 2;
      *(v13 + 32) = sub_1D14BBCDC;
      *(v13 + 40) = 0;
      v17 = &protocol witness table for DiagramAxisMetricsCalculator;
      *(a2 + 24) = v31;
      goto LABEL_23;
    case 0xB:
      v15 = HKDateFormatterFromTemplate();
      v16 = type metadata accessor for DiagramDateAxisMetricsCalculator();
      v13 = swift_allocObject();
      *(v13 + 16) = 0;
      *(v13 + 24) = v15;
      v17 = &protocol witness table for DiagramDateAxisMetricsCalculator;
      *(a2 + 24) = v16;
      goto LABEL_23;
    case 0xC:
      v11 = type metadata accessor for DiagramWeekdayAxisMetricsCalculator();
      goto LABEL_7;
    case 0xD:
      v12 = type metadata accessor for DiagramMultiDayDateAxisMetricsCalculator();
      v13 = swift_allocObject();
      v24 = *MEMORY[0x1E696B510];
      if ((*MEMORY[0x1E696B510] - 0x2000000000000000) >> 62 != 3)
      {
        __break(1u);
        goto LABEL_33;
      }

      *(v13 + 32) = (4 * v24);
      if ((v24 * 10) >> 64 != (10 * v24) >> 63)
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      *(v13 + 40) = (10 * v24);
      v25 = (v24 * 20) >> 64;
      v26 = 20 * v24;
      if (v25 != v26 >> 63)
      {
LABEL_34:
        __break(1u);
        JUMPOUT(0x1D145385CLL);
      }

      result = v26;
      *(v13 + 48) = v26;
LABEL_20:
      *(v13 + 16) = 0;
LABEL_21:
      *(v13 + 24) = 0;
      v17 = &protocol witness table for DiagramDateAxisMetricsCalculator;
LABEL_22:
      *(a2 + 24) = v12;
LABEL_23:
      *(a2 + 32) = v17;
      *a2 = v13;
      return result;
    case 0xE:
      v12 = type metadata accessor for DiagramDateAxisMetricsCalculator();
      v13 = swift_allocObject();
      *(v13 + 16) = 1;
      goto LABEL_21;
    case 0xF:
      v19 = v7;
      sub_1D15A3218();
      v20 = sub_1D15A3248();
      v21 = sub_1D15A4318();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_1D1446000, v20, v21, "Diagram custom axis type specified but did not provide custom Axis Metrics Provider implementation; no axis will be rendered.", v22, 2u);
        MEMORY[0x1D388BF00](v22, -1, -1);
      }

      (*(v6 + 8))(v9, v19);
LABEL_30:
      *(a2 + 32) = 0;
      result = 0.0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
      return result;
    default:
      v11 = type metadata accessor for DiagramDateAxisMetricsCalculator();
LABEL_7:
      v12 = v11;
      v13 = swift_allocObject();
      goto LABEL_20;
  }
}

uint64_t sub_1D1453904@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v9 = sub_1D15A2848();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DiagramDateAxisMetricsCalculator.DateTickIntervalStrategy();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v17 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D15A2818();
  (*(*v4 + 104))(v12, 8, 18, v4[16], a3, a4);
  (*(v10 + 8))(v12, v9);
  sub_1D14548E4(a1, v15, a2, a3, a4);
  return sub_1D1455FB8(v15);
}

uint64_t type metadata accessor for DiagramDateAxisMetricsCalculator.DateTickIntervalStrategy()
{
  result = qword_1EE059B70;
  if (!qword_1EE059B70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D1453ADC()
{
  result = sub_1D15A23A8();
  if (v1 <= 0x3F)
  {
    result = sub_1D1453BA0(319, &qword_1EE056738);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D1453BA0(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_1D1453BE8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>)
{
  v97 = a5;
  v95 = a2;
  v12 = type metadata accessor for DiagramDateAxisMetricsCalculator.DateTickIntervalStrategy();
  MEMORY[0x1EEE9AC00](v12);
  v90 = &v88 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v92 = &v88 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v93 = &v88 - v17;
  sub_1D145482C(0, &qword_1EE05B7E8, MEMORY[0x1E6969BC0]);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v99 = &v88 - v19;
  sub_1D145482C(0, &qword_1EE05B7F0, MEMORY[0x1E6969AE8]);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v101 = &v88 - v21;
  v96 = sub_1D15A23A8();
  v22 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96);
  v88 = &v88 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v89 = &v88 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v91 = &v88 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v94 = &v88 - v29;
  v30 = sub_1D15A26A8();
  v31 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v33 = &v88 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v88 - v35;
  v37 = a3 * 60.0;
  v100 = a1;
  if (a4)
  {
    sub_1D15A2538();
    sub_1D15A2538();
    v38 = sub_1D15A2808();
    v39 = *(v31 + 8);
    v39(v33, v30);
    v39(v36, v30);
    v40 = v38 ^ 1;
  }

  else
  {
    v40 = 0;
  }

  v41 = a7 - a6;
  if (v41 <= v37)
  {
    sub_1D15A19A4(v95, a3, v41);
    v56 = sub_1D15A2848();
    v57 = *(v56 - 8);
    v58 = v101;
    (*(v57 + 16))(v101, v100, v56);
    (*(v57 + 56))(v58, 0, 1, v56);
    v59 = sub_1D15A2898();
    (*(*(v59 - 8) + 56))(v99, 1, 1, v59);
    v60 = v94;
    sub_1D15A2378();
    v61 = *(v98 + 24);
    if (v61)
    {
      v62 = *(v98 + 24);
    }

    else
    {
      v62 = HKDateFormatterFromTemplate();
      if (!v62)
      {
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
        goto LABEL_61;
      }
    }

    v70 = v61;
    if (v40)
    {
      v71 = HKDateFormatterFromTemplate();
    }

    else
    {
      v71 = 0;
    }

    v72 = v93;
    (*(v22 + 32))(&v93[v12[5]], v60, v96);
    *&v72[v12[6]] = 1;
    v72[v12[7]] = 0;
    *&v72[v12[8]] = v62;
    if (!v71)
    {
      v71 = v62;
    }

    *&v72[v12[9]] = v71;
    goto LABEL_41;
  }

  v42 = *MEMORY[0x1E696B518];
  if ((*MEMORY[0x1E696B518] - 0x1000000000000000) >> 61 != 7)
  {
    __break(1u);
    goto LABEL_56;
  }

  v43 = (8 * v42);
  if (v37 > v43)
  {
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  if (v37 <= v41 && v41 <= v43)
  {
    sub_1D15A19A4(v95, a3, v41 / 60.0);
    v63 = sub_1D15A2848();
    v64 = *(v63 - 8);
    v65 = v101;
    (*(v64 + 16))(v101, v100, v63);
    (*(v64 + 56))(v65, 0, 1, v63);
    v66 = sub_1D15A2898();
    (*(*(v66 - 8) + 56))(v99, 1, 1, v66);
    v67 = v91;
    sub_1D15A2378();
    v68 = *(v98 + 24);
    if (v68)
    {
      v69 = *(v98 + 24);
LABEL_35:
      v76 = v68;
      if (v40)
      {
        v77 = HKDateFormatterFromTemplate();
      }

      else
      {
        v77 = 0;
      }

      v72 = v92;
      (*(v22 + 32))(&v92[v12[5]], v67, v96);
      *&v72[v12[6]] = 1;
      v72[v12[7]] = 0;
      *&v72[v12[8]] = v69;
      if (!v77)
      {
        v77 = v69;
      }

      *&v72[v12[9]] = v77;
LABEL_41:
      *v72 = 0;
      v72[v12[10]] = 0;
      v78 = v72;
LABEL_42:
      sub_1D1454880(v78, v97);
      return;
    }

    v69 = HKDateFormatterFromTemplate();
    if (v69)
    {
      goto LABEL_35;
    }

    goto LABEL_60;
  }

  v45 = __OFADD__(*MEMORY[0x1E696B510], v42);
  v46 = *MEMORY[0x1E696B510] + v42;
  v47 = v100;
  v48 = v101;
  if (v45)
  {
    goto LABEL_57;
  }

  v49 = v46;
  if (v43 > v46)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v50 = sub_1D15A2848();
  v51 = *(v50 - 8);
  (*(v51 + 16))(v48, v47, v50);
  (*(v51 + 56))(v48, 0, 1, v50);
  v52 = sub_1D15A2898();
  (*(*(v52 - 8) + 56))(v99, 1, 1, v52);
  if (v41 >= v43 && v41 <= v49)
  {
    v73 = v89;
    sub_1D15A2378();
    v74 = *(v98 + 24);
    if (v74)
    {
      v75 = *(v98 + 24);
    }

    else
    {
      v75 = HKDateFormatterFromTemplate();
      if (!v75)
      {
LABEL_62:
        __break(1u);
        return;
      }
    }

    v85 = v74;
    if (v40)
    {
      v86 = HKDateFormatterFromTemplate();
    }

    else
    {
      v86 = 0;
    }

    v87 = v90;
    (*(v22 + 32))(&v90[v12[5]], v73, v96);
    *&v87[v12[6]] = 1;
    v87[v12[7]] = 0;
    *&v87[v12[8]] = v75;
    if (!v86)
    {
      v86 = v75;
    }

    v78 = v90;
    *&v90[v12[9]] = v86;
    *v78 = 1;
    v78[v12[10]] = 0;
    goto LABEL_42;
  }

  v54 = v88;
  sub_1D15A2378();
  v55 = *(v98 + 24);
  if (v55)
  {
    v101 = *(v98 + 24);
  }

  else
  {
    v79 = HKDateFormatterFromTemplate();
    if (!v79)
    {
LABEL_61:
      __break(1u);
      goto LABEL_62;
    }

    v55 = 0;
    v101 = v79;
  }

  v80 = v97;
  (*(v22 + 32))(&v97[v12[5]], v54, v96);
  *&v80[v12[6]] = 12;
  v80[v12[7]] = 0;
  v81 = v101;
  *&v80[v12[8]] = v101;
  *&v80[v12[9]] = v81;
  *v80 = 1;
  v80[v12[10]] = 1;
  v82 = v55;
  v83 = v101;

  v84 = v83;
}

void sub_1D14547D8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D15A4608();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D145482C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D15A4608();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D1454880(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DiagramDateAxisMetricsCalculator.DateTickIntervalStrategy();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1D14548E4(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v58 = sub_1D15A26A8();
  v10 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D15A2848();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D15A2818();
  sub_1D1454DCC(a2, v16, a4, a5);
  v61 = v17;
  if (a1)
  {
    v53 = v13;
    v18 = *(a1 + 16);
    if (v18)
    {
      v19 = v17;
      v54 = v16;
      v55 = v14;
      v52 = a3;
      v56 = type metadata accessor for DiagramDateAxisMetricsCalculator.DateTickIntervalStrategy();
      v57 = a2;
      v20 = a2[*(v56 + 40)];
      v21 = a1 + 32;
      v22 = (v10 + 8);
      do
      {
        sub_1D15A2538();
        if (v20)
        {
          v23 = sub_1D15A2618();
          sub_1D1453BA0(0, &qword_1EE056790);
          v24 = sub_1D15A4268();
          v25 = HKRelativeMonthDateYearText();

          if (!v25)
          {
            __break(1u);
            return;
          }
        }

        else
        {
          v26 = *&v57[*(v56 + 32)];
          v27 = sub_1D15A2618();
          v25 = [v26 stringFromDate_];
        }

        v28 = sub_1D15A3F38();
        v30 = v29;

        sub_1D15A2548();
        v32 = v31;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = sub_1D1455E84(0, *(v19 + 2) + 1, 1, v19);
        }

        v34 = *(v19 + 2);
        v33 = *(v19 + 3);
        if (v34 >= v33 >> 1)
        {
          v19 = sub_1D1455E84((v33 > 1), v34 + 1, 1, v19);
        }

        (*v22)(v12, v58);
        *(v19 + 2) = v34 + 1;
        v35 = &v19[40 * v34];
        *(v35 + 4) = v28;
        *(v35 + 5) = v30;
        *(v35 + 6) = v32;
        *(v35 + 7) = 1;
        *(v35 + 16) = 1148846080;
        v21 += 8;
        --v18;
      }

      while (v18);
      v61 = v19;
      a3 = v52;
      v14 = v55;
      v16 = v54;
      a2 = v57;
    }

    sub_1D1456014(&v61);
    v13 = v53;
  }

  if (a2[*(type metadata accessor for DiagramDateAxisMetricsCalculator.DateTickIntervalStrategy() + 28)] == 1)
  {
    (*(v14 + 8))(v16, v13);
    v36 = v61;
  }

  else
  {
    v54 = v16;
    v55 = v14;
    sub_1D145617C(a2, &v62);
    Kind = v62.Kind;
    Description = v62.Description;
    v39 = v63;
    v40 = v64;
    v41 = v65;
    sub_1D145617C(a2, v59);
    v42 = v59[0];
    v43 = v59[1];
    v44 = v59[2];
    v45 = v59[3];
    v46 = v60;
    v36 = v61;
    v47 = *(v61 + 2);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v47 >= *(v36 + 3) >> 1)
    {
      v36 = sub_1D1455E84(isUniquelyReferenced_nonNull_native, v47 + 1, 1, v36);
      v61 = v36;
    }

    v62.Kind = Kind;
    v62.Description = Description;
    v63 = v39;
    v64 = v40;
    v65 = v41;
    sub_1D145634C(0, 0, 1, &v62);
    swift_bridgeObjectRelease_n();
    v50 = *(v36 + 2);
    v49 = *(v36 + 3);
    if (v50 >= v49 >> 1)
    {
      v36 = sub_1D1455E84((v49 > 1), v50 + 1, 1, v36);
    }

    (*(v55 + 8))(v54, v13);
    *(v36 + 2) = v50 + 1;
    v51 = &v36[40 * v50];
    *(v51 + 4) = v42;
    *(v51 + 5) = v43;
    *(v51 + 6) = v44;
    *(v51 + 7) = v45;
    *(v51 + 16) = v46;
  }

  *a3 = v36;
  *(a3 + 8) = a4;
  *(a3 + 16) = a5;
}

void sub_1D1454DCC(char *a1, size_t a2, double a3, double a4)
{
  v69 = a2;
  v70 = sub_1D15A2798();
  v68 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v67 = (v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v72 = sub_1D15A27A8();
  v65 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v64 = v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_1D15A2758();
  v62 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v63 = v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D15A26A8();
  v74 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v59 - v14;
  v16 = type metadata accessor for DiagramDateAxisMetricsCalculator.DateTickIntervalStrategy();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  MEMORY[0x1EEE9AC00](v19);
  v21 = v59 - v20;
  sub_1D14556B4(a1, v59 - v20);
  sub_1D14556B4(v21, v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = (*(v17 + 80) + 16) & ~*(v17 + 80);
  v23 = swift_allocObject();
  sub_1D1454880(v21, v23 + v22);
  v24 = MEMORY[0x1E69E7CC0];
  v76 = MEMORY[0x1E69E7CC0];
  v25 = *a1;
  v66 = v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v25)
  {
    v75 = 0;
    v60 = v12;
    sub_1D15A2538();
    v73 = v23;
    v59[2] = *(v16 + 20);
    v27 = v62;
    v26 = v63;
    v28 = (*(v62 + 104))(v63, *MEMORY[0x1E69698D0], v71);
    v61 = v59;
    v29 = MEMORY[0x1EEE9AC00](v28);
    v59[1] = &v59[-10];
    *&v59[-8] = a3;
    *&v59[-7] = a4;
    v59[-6] = &v75;
    v59[-5] = a1;
    v59[-4] = sub_1D1455CC8;
    v59[-3] = v23;
    v59[-2] = &v76;
    v30 = v64;
    v31 = v65;
    (*(v65 + 104))(v64, *MEMORY[0x1E69699C8], v72, v29);
    v32 = v67;
    v33 = v68;
    v34 = v70;
    (*(v68 + 104))(v67, *MEMORY[0x1E6969998], v70);
    v35 = v60;
    sub_1D15A2778();

    (*(v33 + 8))(v32, v34);
    (*(v31 + 8))(v30, v72);
    (*(v27 + 8))(v26, v71);
    (*(v74 + 8))(v35, v10);
    sub_1D1455FB8(v66);
    return;
  }

  v65 = v16;
  v36 = sub_1D15A22F8();
  [v36 hk_approximateDuration];
  v38 = v37;

  if (v38 != 0.0)
  {
    v39 = sub_1D15A0A78(a3, a4, v38);
    v40 = *(v39 + 16);
    if (!v40)
    {

      sub_1D1455FB8(v66);
      return;
    }

    v75 = v24;
    sub_1D14A7894(0, v40, 0);
    v41 = 0;
    LODWORD(v72) = *(v66 + *(v65 + 28));
    v42 = v74;
    v71 = v39 + ((*(v74 + 80) + 32) & ~*(v74 + 80));
    v69 = v39;
    v70 = v74 + 16;
    v43 = v75;
    v67 = (v74 + 8);
    v68 = v40;
    v73 = v23;
    while (v41 < *(v39 + 16))
    {
      (*(v42 + 16))(v15, v71 + *(v42 + 72) * v41, v10);
      if (v72)
      {
        if (*(v66 + *(v65 + 40)) == 1)
        {
          v44 = sub_1D15A2618();
          sub_1D1453BA0(0, &qword_1EE056790);
          v45 = sub_1D15A4268();
          v46 = HKRelativeMonthDateYearText();

          if (!v46)
          {
            goto LABEL_21;
          }
        }

        else
        {
          v50 = *(v66 + *(v65 + 32));
          v51 = sub_1D15A2618();
          v46 = [v50 stringFromDate_];
        }

        v47 = sub_1D15A3F38();
        v48 = v52;

        v49 = 1;
      }

      else
      {
        v47 = 0;
        v48 = 0;
        v49 = 2;
      }

      sub_1D15A2548();
      v54 = v53;
      v55 = v10;
      (*v67)(v15, v10);
      v75 = v43;
      v57 = *(v43 + 16);
      v56 = *(v43 + 24);
      if (v57 >= v56 >> 1)
      {
        sub_1D14A7894((v56 > 1), v57 + 1, 1);
        v43 = v75;
      }

      ++v41;
      *(v43 + 16) = v57 + 1;
      v58 = v43 + 40 * v57;
      *(v58 + 32) = v47;
      *(v58 + 40) = v48;
      *(v58 + 48) = v54;
      *(v58 + 56) = v49;
      *(v58 + 64) = 1144750080;
      v10 = v55;
      v42 = v74;
      v39 = v69;
      if (v68 == v41)
      {
        sub_1D1455FB8(v66);

        return;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_21:
  __break(1u);
}

uint64_t sub_1D14555B4()
{
  v1 = type metadata accessor for DiagramDateAxisMetricsCalculator.DateTickIntervalStrategy();
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(*(v1 - 8) + 64);
  v6 = *(v1 + 20);
  v7 = sub_1D15A23A8();
  (*(*(v7 - 8) + 8))(v0 + v4 + v6, v7);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D14556B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DiagramDateAxisMetricsCalculator.DateTickIntervalStrategy();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D1455718(uint64_t a1, double a2, double a3, uint64_t a4, _BYTE *a5, uint64_t *a6, uint64_t a7, void (*a8)(void *__return_ptr, char *), uint64_t a9, uint64_t *a10)
{
  v36 = a10;
  sub_1D145482C(0, &qword_1EE05B7F8, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v37[-1] - v19;
  v21 = sub_1D15A26A8();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v37[-1] - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1455A40(a1, v20);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    return sub_1D14BDBAC(v20);
  }

  (*(v22 + 32))(v24, v20, v21);
  sub_1D15A2548();
  if (v26 >= a3)
  {
    result = (*(v22 + 8))(v24, v21);
    *a5 = 1;
    return result;
  }

  v27 = *a6 + 1;
  if (__OFADD__(*a6, 1))
  {
    __break(1u);
    goto LABEL_16;
  }

  *a6 = v27;
  v28 = *(a7 + *(type metadata accessor for DiagramDateAxisMetricsCalculator.DateTickIntervalStrategy() + 24));
  if (!v28)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v27 != 0x8000000000000000 || v28 != -1)
  {
    if (v27 % v28)
    {
      return (*(v22 + 8))(v24, v21);
    }

    a8(v37, v24);
    a9 = v37[0];
    a7 = v37[1];
    a3 = *&v37[2];
    a5 = v37[3];
    v10 = v38;
    v29 = v36;
    v27 = *v36;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v29 = v27;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_12;
    }

    goto LABEL_18;
  }

LABEL_17:
  __break(1u);
LABEL_18:
  v27 = sub_1D1455E84(0, *(v27 + 16) + 1, 1, v27);
  *v36 = v27;
LABEL_12:
  v32 = *(v27 + 16);
  v31 = *(v27 + 24);
  if (v32 >= v31 >> 1)
  {
    v35 = sub_1D1455E84((v31 > 1), v32 + 1, 1, v27);
    *v36 = v35;
  }

  result = (*(v22 + 8))(v24, v21);
  v33 = *v36;
  *(v33 + 16) = v32 + 1;
  v34 = v33 + 40 * v32;
  *(v34 + 32) = a9;
  *(v34 + 40) = a7;
  *(v34 + 48) = a3;
  *(v34 + 56) = a5;
  *(v34 + 64) = v10;
  return result;
}

uint64_t sub_1D1455A40(uint64_t a1, uint64_t a2)
{
  sub_1D1455B24(0, &qword_1EE05B7F8, MEMORY[0x1E6969530]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D1455AC0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D1455B24(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D15A4608();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D1455B78(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D15A4608();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D1455BCC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D15A4608();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D1455C20(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D15A4608();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1D1455C74(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D15A4608();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D1455CC8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DiagramDateAxisMetricsCalculator.DateTickIntervalStrategy() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1D1455D48(v4, a1);
}

uint64_t sub_1D1455D48@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for DiagramDateAxisMetricsCalculator.DateTickIntervalStrategy();
  if (*(a1 + v4[7]) != 1)
  {
    goto LABEL_5;
  }

  if (*(a1 + v4[10]) != 1)
  {
    v11 = *(a1 + v4[8]);
    v12 = sub_1D15A2618();
    v7 = [v11 stringFromDate_];

    goto LABEL_7;
  }

  v5 = sub_1D15A2618();
  sub_1D1453BA0(0, &qword_1EE056790);
  v6 = sub_1D15A4268();
  v7 = HKRelativeMonthDateYearText();

  if (v7)
  {
LABEL_7:
    v8 = sub_1D15A3F38();
    v9 = v13;

    v10 = 1;
    goto LABEL_8;
  }

  __break(1u);
LABEL_5:
  v8 = 0;
  v9 = 0;
  v10 = 2;
LABEL_8:
  result = sub_1D15A2548();
  *a2 = v8;
  *(a2 + 8) = v9;
  *(a2 + 16) = v15;
  *(a2 + 24) = v10;
  *(a2 + 32) = 1144750080;
  return result;
}

char *sub_1D1455E84(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1D1452138(0, &qword_1EE0596A0, &type metadata for DiagramAxisLabel, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1D1455FB8(uint64_t a1)
{
  v2 = type metadata accessor for DiagramDateAxisMetricsCalculator.DateTickIntervalStrategy();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D1456014(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D15A1100(v2);
  }

  v3 = *(v2 + 2);
  v21[0] = (v2 + 32);
  v21[1] = v3;
  result = sub_1D15A4B58();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 56;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v8;
        do
        {
          v13 = *(v12 + 4);
          if (v13 >= *(v12 - 1))
          {
            break;
          }

          v14 = *(v12 + 5);
          v15 = *(v12 + 12);
          v16 = *(v12 + 1);
          v17 = *(v12 - 8);
          *(v12 + 1) = *(v12 - 24);
          *(v12 + 2) = v17;
          *(v12 + 6) = *(v12 + 1);
          *(v12 - 24) = v16;
          *(v12 - 1) = v13;
          *v12 = v14;
          *(v12 + 2) = v15;
          v12 -= 40;
        }

        while (!__CFADD__(v11++, 1));
        v8 += 40;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_1D15A40F8();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v19[0] = v7 + 32;
    v19[1] = v6;
    sub_1D15A1128(v19, v20, v21, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_1D145617C@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1D15A26A8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D15A2538();
  v8 = type metadata accessor for DiagramDateAxisMetricsCalculator.DateTickIntervalStrategy();
  if (a1[*(v8 + 40)] != 1)
  {
    goto LABEL_4;
  }

  v9 = sub_1D15A2618();
  sub_1D1453BA0(0, &qword_1EE056790);
  v10 = sub_1D15A4268();
  a1 = HKRelativeMonthDateYearText();

  if (!a1)
  {
    __break(1u);
LABEL_4:
    v11 = *&a1[*(v8 + 36)];
    v12 = sub_1D15A2618();
    a1 = [v11 stringFromDate_];
  }

  v13 = sub_1D15A3F38();
  v15 = v14;

  sub_1D15A2548();
  v17 = v16;
  result = (*(v5 + 8))(v7, v4);
  *a2 = v13;
  *(a2 + 8) = v15;
  *(a2 + 16) = v17;
  *(a2 + 24) = 1;
  *(a2 + 32) = 1144750080;
  return result;
}

char *sub_1D145634C(uint64_t a1, uint64_t a2, uint64_t a3, ValueMetadata *a4)
{
  v6 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_18;
  }

  v4 = a4;
  v7 = a3;
  v9 = *v5;
  v10 = v9 + 32 + 40 * a1;
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v7, v6);
  v13 = v7 - v6;
  if (v12)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v13)
  {
    goto LABEL_13;
  }

  v14 = *(v9 + 16);
  v12 = __OFSUB__(v14, a2);
  v15 = v14 - a2;
  if (v12)
  {
    goto LABEL_19;
  }

  result = (v10 + 40 * v7);
  v16 = (v9 + 32 + 40 * a2);
  a3 = 40 * v15;
  v17 = &v16[40 * v15];
  if (result != v16 || result >= v17)
  {
    result = memmove(result, v16, a3);
  }

  v19 = *(v9 + 16);
  v12 = __OFADD__(v19, v13);
  v20 = v19 + v13;
  if (v12)
  {
    goto LABEL_20;
  }

  *(v9 + 16) = v20;
LABEL_13:
  if (v7 <= 0)
  {
    return result;
  }

  v21 = *v4;
  v22 = *(v4 + 16);
  *(v10 + 32) = *(v4 + 32);
  *v10 = v21;
  *(v10 + 16) = v22;
  a3 = &unk_1EE0564A8;
  a4 = &type metadata for DiagramAxisLabel;
  if (v7 != 1)
  {
LABEL_21:
    result = sub_1D14532F4(v4, v23, a3, a4, MEMORY[0x1E69E6BC0], sub_1D1456508);
    __break(1u);
    return result;
  }

  return sub_1D14532F4(v4, v23, &unk_1EE0564A8, &type metadata for DiagramAxisLabel, MEMORY[0x1E69E6BC0], sub_1D1456508);
}

void sub_1D14564BC(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1D15A4B78();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_1D1456508(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t DiagramDateAxisMetricsCalculator.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D1456590(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  sub_1D145329C(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t DiagramAxisMetricsCalculatorFactory.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

double sub_1D145664C()
{
  v1 = *(v0 + 40);
  v3 = *(v0 + 80);
  v2 = *(v0 + 88);
  v5 = *(v0 + 96);
  v4 = *(v0 + 104);
  if (*(v0 + 16))
  {
    if (*(v0 + 24) >= v3)
    {
      v6 = *(v0 + 80);
    }

    else
    {
      v6 = *(v0 + 24);
    }

    CGRectGetMaxX(*(v0 + 80));
    if (v1)
    {
      goto LABEL_6;
    }

LABEL_8:
    v9.origin.x = v3;
    v9.origin.y = v2;
    v9.size.width = v5;
    v9.size.height = v4;
    CGRectGetHeight(v9);
    return v6;
  }

  CGRectGetWidth(*(v0 + 80));
  v6 = v3;
  if (!v1)
  {
    goto LABEL_8;
  }

LABEL_6:
  v8.origin.x = v3;
  v8.origin.y = v2;
  v8.size.width = v5;
  v8.size.height = v4;
  CGRectGetMaxY(v8);
  return v6;
}

double sub_1D1456744()
{
  v1 = *(*v0 + 104);
  v2 = 0.0;
  if ((*(v1 + 144) & 1) == 0)
  {
    v2 = *(v1 + 112);
  }

  sub_1D14567B4();
  sub_1D1457AFC();
  return v2;
}

void sub_1D14567B4()
{
  v1 = *(v0 + 40);
  if (v1 && *(v0 + 68) << 32 != 0x300000000 && (*(v0 + 72) & 0xFF000000) != 0x2000000)
  {

    DiagramConfiguration.TextAttributes.toTextAttributes()();
    v2 = *(v1 + 16);
    if (v2)
    {
      v12 = MEMORY[0x1E69E7CC0];
      sub_1D1452B90(0, v2, 0);
      sub_1D15A4148();
      v3 = v12;
      v4 = (v1 + 40);
      do
      {
        v5 = *v4;

        sub_1D15A4138();
        sub_1D15A4128();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        if (v5)
        {
          v6 = sub_1D15A3EF8();
          type metadata accessor for Key(0);
          sub_1D1458AD4(&qword_1EE05AD28, type metadata accessor for Key);
          v7 = sub_1D15A3E48();
          [v6 sizeWithAttributes_];
          v9 = v8;
        }

        else
        {

          v9 = 0;
        }

        v11 = *(v12 + 16);
        v10 = *(v12 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_1D1452B90((v10 > 1), v11 + 1, 1);
        }

        v4 += 5;
        *(v12 + 16) = v11 + 1;
        *(v12 + 8 * v11 + 32) = v9;
        --v2;
      }

      while (v2);
    }

    else
    {

      v3 = MEMORY[0x1E69E7CC0];
    }

    sub_1D152CBA0(v3);
  }
}

uint64_t DiagramConfiguration.TextAttributes.toTextAttributes()()
{
  switch(*v0)
  {
    case 1:
      v25 = sub_1D1453BA0(0, &qword_1EE05ACF0);
      v26 = sub_1D15A4538();
      sub_1D1457C9C();
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_1D15AEBB0;
      v28 = *MEMORY[0x1E69DB648];
      *(v27 + 32) = *MEMORY[0x1E69DB648];
      *(v27 + 40) = v26;
      v29 = *MEMORY[0x1E69DB650];
      *(v27 + 64) = v25;
      *(v27 + 72) = v29;
      v30 = objc_opt_self();
      v31 = v28;
      v32 = v26;
      v33 = v29;
      v34 = [v30 whiteColor];
      *(v27 + 104) = sub_1D1453BA0(0, &qword_1EE059710);
      *(v27 + 80) = v34;
      v35 = sub_1D1458674(v27);
      swift_setDeallocating();
      sub_1D1457C30();
      swift_arrayDestroy();
      swift_deallocClassInstance();

      return v35;
    case 2:
    case 3:
      v16 = sub_1D1453BA0(0, &qword_1EE05ACF0);
      v17 = sub_1D15A4538();
      sub_1D1457C9C();
      v18 = swift_allocObject();
      v19 = MEMORY[0x1E69DB648];
      *(v18 + 16) = xmmword_1D15AEBB0;
      v20 = *v19;
      *(v18 + 32) = v20;
      *(v18 + 40) = v17;
      v21 = *MEMORY[0x1E69DB650];
      *(v18 + 64) = v16;
      *(v18 + 72) = v21;
      v22 = v20;
      v23 = v17;
      v24 = v21;
      goto LABEL_16;
    case 4:
      v2 = [objc_opt_self() hk_currentDeviceHas4InchScreen];
      v3 = MEMORY[0x1E69DDC60];
      if (!v2)
      {
        v3 = MEMORY[0x1E69DDC58];
      }

      v4 = *v3;
      v5 = sub_1D1453BA0(0, &qword_1EE05ACF0);
      v6 = v4;
      v7 = sub_1D15A4538();

      sub_1D1457C9C();
      v8 = swift_allocObject();
      v9 = MEMORY[0x1E69DB648];
      *(v8 + 16) = xmmword_1D15AEBB0;
      v10 = *v9;
      *(v8 + 32) = v10;
      *(v8 + 40) = v7;
      v11 = *MEMORY[0x1E69DB650];
      *(v8 + 64) = v5;
      *(v8 + 72) = v11;
      v12 = v10;
      v13 = v7;
      v14 = v11;
      goto LABEL_14;
    case 6:
      v46 = [objc_opt_self() hk_currentDeviceHas4InchScreen];
      v47 = MEMORY[0x1E69DDC60];
      if (!v46)
      {
        v47 = MEMORY[0x1E69DDC58];
      }

      v48 = *v47;
      v49 = sub_1D1453BA0(0, &qword_1EE05ACF0);
      v6 = v48;
      v50 = sub_1D15A4538();

      sub_1D1457C9C();
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_1D15AEBB0;
      v51 = *MEMORY[0x1E69DB648];
      *(v8 + 32) = *MEMORY[0x1E69DB648];
      v52 = MEMORY[0x1E69DB650];
      *(v8 + 40) = v50;
      v53 = *v52;
      *(v8 + 64) = v49;
      *(v8 + 72) = v53;
      v54 = v51;
      v13 = v50;
      v55 = v53;
LABEL_14:
      isa = DiagramConfiguration.Color.toColor()().super.isa;
      *(v8 + 104) = sub_1D1453BA0(0, &qword_1EE059710);
      *(v8 + 80) = isa;
      v45 = sub_1D1458674(v8);
      swift_setDeallocating();
      sub_1D1457C30();
      swift_arrayDestroy();
      swift_deallocClassInstance();

      goto LABEL_19;
    case 0xE:
    case 0xF:
    case 0x10:
    case 0x11:
      v36 = sub_1D1453BA0(0, &qword_1EE05ACF0);
      v37 = sub_1D15A4538();
      sub_1D1457C9C();
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1D15AEBB0;
      v39 = *MEMORY[0x1E69DB648];
      *(inited + 32) = *MEMORY[0x1E69DB648];
      v40 = MEMORY[0x1E69DB650];
      *(inited + 40) = v37;
      v41 = *v40;
      *(inited + 64) = v36;
      *(inited + 72) = v41;
      v42 = v39;
      v23 = v37;
      v43 = v41;
      v44 = DiagramConfiguration.Color.toColor()().super.isa;
      *(inited + 104) = sub_1D1453BA0(0, &qword_1EE059710);
      *(inited + 80) = v44;
      v45 = sub_1D1458674(inited);
      swift_setDeallocating();
      sub_1D1457C30();
      swift_arrayDestroy();
      goto LABEL_17;
    case 0x12:
    case 0x13:
    case 0x14:
    case 0x15:
      sub_1D1457C9C();
      v65 = swift_initStackObject();
      *(v65 + 16) = xmmword_1D15AEBB0;
      v66 = *MEMORY[0x1E69DB648];
      *(v65 + 32) = *MEMORY[0x1E69DB648];
      v67 = sub_1D1453BA0(0, &qword_1EE05ACF0);
      v68 = v66;
      v69 = sub_1D15A4538();
      v70 = MEMORY[0x1E69DB650];
      *(v65 + 40) = v69;
      v71 = *v70;
      *(v65 + 64) = v67;
      *(v65 + 72) = v71;
      v72 = v71;
      v73 = DiagramConfiguration.Color.toColor()().super.isa;
      *(v65 + 104) = sub_1D1453BA0(0, &qword_1EE059710);
      *(v65 + 80) = v73;
      v45 = sub_1D1458674(v65);
      swift_setDeallocating();
      sub_1D1457C30();
      swift_arrayDestroy();
      goto LABEL_19;
    case 0x16:
    case 0x17:
      v1 = 11.0;
      goto LABEL_7;
    case 0x18:
      v1 = 20.0;
LABEL_7:
      result = sub_1D1594978(v1);
      break;
    default:
      v57 = sub_1D1453BA0(0, &qword_1EE05ACF0);
      v58 = sub_1D15A4538();
      sub_1D1457C9C();
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_1D15AEBB0;
      v59 = *MEMORY[0x1E69DB648];
      *(v18 + 32) = *MEMORY[0x1E69DB648];
      v60 = MEMORY[0x1E69DB650];
      *(v18 + 40) = v58;
      v61 = *v60;
      *(v18 + 64) = v57;
      *(v18 + 72) = v61;
      v62 = v59;
      v23 = v58;
      v63 = v61;
LABEL_16:
      v64 = DiagramConfiguration.Color.toColor()().super.isa;
      *(v18 + 104) = sub_1D1453BA0(0, &qword_1EE059710);
      *(v18 + 80) = v64;
      v45 = sub_1D1458674(v18);
      swift_setDeallocating();
      sub_1D1457C30();
      swift_arrayDestroy();
      swift_deallocClassInstance();
LABEL_17:

LABEL_19:
      result = v45;
      break;
  }

  return result;
}

void sub_1D1457AFC()
{
  if ((*(v0 + 64) & 0xFE00000000) != 0x200000000)
  {
    DiagramConfiguration.TextAttributes.toTextAttributes()();
    v1 = sub_1D15A3EF8();
    type metadata accessor for Key(0);
    sub_1D1458AD4(&qword_1EE05AD28, type metadata accessor for Key);
    v2 = sub_1D15A3E48();

    [v1 sizeWithAttributes_];
  }
}

void sub_1D1457C30()
{
  if (!qword_1EE059720)
  {
    type metadata accessor for Key(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE059720);
    }
  }
}

void sub_1D1457C9C()
{
  if (!qword_1EE059688)
  {
    sub_1D1457C30();
    v0 = sub_1D15A4B78();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE059688);
    }
  }
}

UIColor __swiftcall DiagramConfiguration.Color.toColor()()
{
  switch(*v0)
  {
    case 1:
      v7 = [objc_opt_self() secondaryLabelColor];
      goto LABEL_36;
    case 2:
      v7 = [objc_opt_self() tertiaryLabelColor];
      goto LABEL_36;
    case 3:
    case 6:
    case 8:
      v7 = [objc_opt_self() hk_chartGrayGraphColor];
      goto LABEL_36;
    case 4:
      v7 = [objc_opt_self() quaternaryLabelColor];
      goto LABEL_36;
    case 5:
      v7 = [objc_opt_self() hk_chartInactiveSeriesColor];
      goto LABEL_36;
    case 7:
      v18 = objc_opt_self();
      v19 = [v18 systemGray3Color];
      v20 = [v18 hk_chartInactiveSeriesColor];
      v21 = swift_allocObject();
      *(v21 + 16) = v19;
      *(v21 + 24) = v20;
      v5 = objc_allocWithZone(MEMORY[0x1E69DC888]);
      v34 = sub_1D145BE8C;
      v35 = v21;
      v30 = MEMORY[0x1E69E9820];
      v31 = 1107296256;
      v6 = &block_descriptor_21;
      goto LABEL_23;
    case 9:
      v7 = [objc_opt_self() hk_randomColor];
      goto LABEL_36;
    case 0xA:
      isa = [objc_opt_self() whiteColor];
      v13 = [(objc_class *)isa colorWithAlphaComponent:0.0];
      goto LABEL_26;
    case 0xB:
      isa = [objc_opt_self() blackColor];
      v13 = [(objc_class *)isa colorWithAlphaComponent:0.0];
      goto LABEL_26;
    case 0xC:
      v14 = objc_opt_self();
      v15 = [v14 systemGray4Color];
      v16 = [v14 systemGray6Color];
      v17 = swift_allocObject();
      *(v17 + 16) = v15;
      *(v17 + 24) = v16;
      v5 = objc_allocWithZone(MEMORY[0x1E69DC888]);
      v34 = sub_1D145BE8C;
      v35 = v17;
      v30 = MEMORY[0x1E69E9820];
      v31 = 1107296256;
      v6 = &block_descriptor_14_0;
      goto LABEL_23;
    case 0xD:
      v22 = objc_opt_self();
      v23 = [v22 systemGrayColor];
      v24 = [v22 systemLightMidGrayColor];
      v25 = swift_allocObject();
      *(v25 + 16) = v23;
      *(v25 + 24) = v24;
      v5 = objc_allocWithZone(MEMORY[0x1E69DC888]);
      v34 = sub_1D145BE8C;
      v35 = v25;
      v30 = MEMORY[0x1E69E9820];
      v31 = 1107296256;
      v6 = &block_descriptor_7;
      goto LABEL_23;
    case 0xE:
      v8 = objc_opt_self();
      v9 = [v8 systemBlackColor];
      v10 = [v8 systemWhiteColor];
      v11 = swift_allocObject();
      *(v11 + 16) = v9;
      *(v11 + 24) = v10;
      v5 = objc_allocWithZone(MEMORY[0x1E69DC888]);
      v34 = sub_1D145BE90;
      v35 = v11;
      v30 = MEMORY[0x1E69E9820];
      v31 = 1107296256;
      v6 = &block_descriptor_19;
      goto LABEL_23;
    case 0xF:
    case 0x18:
      v7 = [objc_opt_self() hk_vitalsKeyColor];
      goto LABEL_36;
    case 0x10:
      v7 = [objc_opt_self() hk_activityKeyColor];
      goto LABEL_36;
    case 0x11:
      v7 = [objc_opt_self() hk_bodyMeasurementsKeyColor];
      goto LABEL_36;
    case 0x12:
      v7 = [objc_opt_self() hk_mindfulnessKeyColor];
      goto LABEL_36;
    case 0x13:
      v7 = [objc_opt_self() hk_nutritionKeyColor];
      goto LABEL_36;
    case 0x14:
      v7 = [objc_opt_self() hk_reproductiveHealthKeyColor];
      goto LABEL_36;
    case 0x15:
      v7 = [objc_opt_self() hk_sleepKeyColor];
      goto LABEL_36;
    case 0x16:
      v7 = [objc_opt_self() hk_respiratoryKeyColor];
      goto LABEL_36;
    case 0x17:
      v7 = [objc_opt_self() hk_workoutKeyColor];
      goto LABEL_36;
    case 0x19:
      v7 = [objc_opt_self() hk_hearingHealthKeyColor];
      goto LABEL_36;
    case 0x1A:
      v7 = [objc_opt_self() hk_otherKeyColor];
      goto LABEL_36;
    case 0x1B:
      v7 = [objc_opt_self() hk_defaultSecondaryTextColor];
      goto LABEL_36;
    case 0x1C:
      v7 = [objc_opt_self() hk_defaultTertiaryTextColor];
      goto LABEL_36;
    case 0x1D:
      v7 = [objc_opt_self() hk_defaultQuaternaryTextColor];
      goto LABEL_36;
    case 0x1E:
      v7 = [objc_opt_self() systemGray4Color];
      goto LABEL_36;
    case 0x1F:
      LOBYTE(v30) = 30;
      isa = DiagramConfiguration.Color.toColor()().super.isa;
      v13 = [(objc_class *)isa colorWithAlphaComponent:0.0, v30];
LABEL_26:
      v29 = v13;

      return v29;
    case 0x20:
      v7 = [objc_opt_self() systemLightGrayColor];
      goto LABEL_36;
    case 0x21:
      v7 = [objc_opt_self() systemDarkGrayColor];
      goto LABEL_36;
    case 0x22:
      v7 = [objc_opt_self() systemDarkYellowColor];
LABEL_36:

      result.super.isa = v7;
      break;
    default:
      v1 = objc_opt_self();
      v2 = [v1 systemGray3Color];
      v3 = [v1 systemGray4Color];
      v4 = swift_allocObject();
      *(v4 + 16) = v2;
      *(v4 + 24) = v3;
      v5 = objc_allocWithZone(MEMORY[0x1E69DC888]);
      v34 = sub_1D145BE8C;
      v35 = v4;
      v30 = MEMORY[0x1E69E9820];
      v31 = 1107296256;
      v6 = &block_descriptor_28;
LABEL_23:
      v32 = sub_1D145BE24;
      v33 = v6;
      v26 = _Block_copy(&v30);
      v27 = [v5 initWithDynamicProvider_];
      _Block_release(v26);

      result.super.isa = v27;
      break;
  }

  return result;
}

uint64_t sub_1D1458624()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

unint64_t sub_1D1458674(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1D1458770();
    v3 = sub_1D15A4968();
    v4 = a1 + 32;

    while (1)
    {
      sub_1D14588C8(v4, &v11);
      v5 = v11;
      result = sub_1D145892C(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1D1458AC4(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void sub_1D1458770()
{
  if (!qword_1EE05ACA8)
  {
    type metadata accessor for Key(255);
    sub_1D14587E0();
    v0 = sub_1D15A4978();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE05ACA8);
    }
  }
}

unint64_t sub_1D14587E0()
{
  result = qword_1EE05AD28;
  if (!qword_1EE05AD28)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE05AD28);
  }

  return result;
}

uint64_t sub_1D1458880(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D14588C8(uint64_t a1, uint64_t a2)
{
  sub_1D1457C30();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D145892C(uint64_t a1)
{
  sub_1D15A3F38();
  sub_1D15A4C88();
  sub_1D15A3F88();
  v2 = sub_1D15A4CB8();

  return sub_1D14589C0(a1, v2);
}

unint64_t sub_1D14589C0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_1D15A3F38();
      v8 = v7;
      if (v6 == sub_1D15A3F38() && v8 == v9)
      {
        break;
      }

      v11 = sub_1D15A4BA8();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

_OWORD *sub_1D1458AC4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1D1458AD4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1D1458B60(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7)
{
  v11 = *a1;
  v12 = *(a1 + 8);
  v13 = *(a1 + 16);
  v14 = *(a1 + 24);
  [v7 bounds];
  v19 = v15;
  v20 = v16;
  v21 = v17;
  v22 = v18;
  if (*(a1 + 32))
  {
    v11 = v15;
    v12 = v16;
    v13 = v17;
    v14 = v18;
  }

  v61.origin.x = 0.0;
  v61.origin.y = 0.0;
  v61.size.width = 0.0;
  v61.size.height = 0.0;
  if (!CGRectEqualToRect(*&v15, v61))
  {
    v23 = objc_opt_self();
    v24 = [v23 _currentTraitCollection];
    v25 = [v7 traitCollection];
    [v23 _setCurrentTraitCollection_];

    v26 = *&v7[OBJC_IVAR____TtC19HealthVisualization16DiagramImageView_imageRenderer];
    if (v26)
    {
      v27 = &v7[OBJC_IVAR____TtC19HealthVisualization16DiagramImageView_lastUsedModelSpace];
      swift_beginAccess();
      *v27 = v11;
      v27[1] = v12;
      v27[2] = v13;
      v27[3] = v14;
      *(v27 + 32) = 0;
      v28 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v29 = swift_allocObject();
      *(v29 + 16) = v11;
      *(v29 + 24) = v12;
      *(v29 + 32) = v13;
      *(v29 + 40) = v14;
      *(v29 + 48) = v19;
      *(v29 + 56) = v20;
      *(v29 + 64) = v21;
      *(v29 + 72) = v22;
      *(v29 + 80) = a4;
      *(v29 + 88) = a5;
      *(v29 + 96) = a6;
      *(v29 + 104) = a7;
      *(v29 + 112) = v28;
      *(v29 + 120) = a2;
      *(v29 + 128) = a3;
      v30 = swift_allocObject();
      *(v30 + 16) = sub_1D14591D4;
      *(v30 + 24) = v29;
      v55 = sub_1D145921C;
      v56 = v30;
      aBlock = MEMORY[0x1E69E9820];
      v52 = 1107296256;
      v53 = sub_1D1459188;
      v54 = &block_descriptor_2;
      v31 = _Block_copy(&aBlock);

      v32 = v26;

      v33 = [v32 imageWithActions_];

      _Block_release(v31);
      LOBYTE(v31) = swift_isEscapingClosureAtFileLocation();

      if ((v31 & 1) == 0)
      {
        [v7 setImage_];
        [v23 _setCurrentTraitCollection_];
        v34 = &v7[OBJC_IVAR____TtC19HealthVisualization16DiagramImageView_delegate];
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v35 = *(v34 + 1);
          ObjectType = swift_getObjectType();
          v37 = &v7[OBJC_IVAR____TtC19HealthVisualization16DiagramImageView_lastUsedTransformer];
          swift_beginAccess();
          v38 = *(v37 + 1);
          v39 = *(v37 + 2);
          v40 = *(v37 + 3);
          v41 = *(v37 + 4);
          v42 = *(v37 + 5);
          v43 = *(v37 + 6);
          aBlock = *v37;
          v52 = v38;
          v53 = v39;
          v54 = v40;
          v55 = v41;
          v56 = v42;
          v57 = v43;
          v44 = *v27;
          v45 = *(v27 + 1);
          v59 = *(v27 + 32);
          v58[0] = v44;
          v58[1] = v45;
          v46 = *(v35 + 8);
          sub_1D145D5B8(aBlock);
          v46(v7, &aBlock, v58, ObjectType, v35);

          swift_unknownObjectRelease();
          sub_1D1459664(aBlock);
        }

        else
        {
        }

        return;
      }

      __break(1u);
    }

    __break(1u);
    return;
  }

  [v7 setImage_];
}

uint64_t sub_1D1458FA4()
{
  MEMORY[0x1D388BFE0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D1458FDC()
{

  return MEMORY[0x1EEE6BDD0](v0, 136, 7);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_17(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_19(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1D1459188(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

void sub_1D145924C(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, double a6, double a7, double a8, double a9, uint64_t a10, void (*a11)(id, CGAffineTransform *, double, double), double a12, double a13)
{
  sub_1D15A4148();
  sub_1D15A4138();
  sub_1D15A4128();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v28 = [a1 CGContext];
  v29 = v28;
  v68.origin.x = a2;
  v68.origin.y = a3;
  v68.size.width = a4;
  v68.size.height = a5;
  v62 = a8;
  v63 = a9;
  if (CGRectIsEmpty(v68))
  {
    b = 0.0;
    a = 1.0;
    c = 0.0;
    d = 1.0;
    v34 = 0.0;
    v35 = 0.0;
  }

  else
  {
    v36 = UIEdgeInsetsInsetRect_0(a6, a7, a8, a9, a12, a13);
    v38 = v37;
    v40 = v39;
    v42 = v41;
    CGAffineTransformMakeTranslation(&t1, -a2, -a3);
    tx = t1.tx;
    ty = t1.ty;
    v59 = *&t1.a;
    v57 = *&t1.c;
    v69.origin.x = v36;
    v69.origin.y = v38;
    v69.size.width = v40;
    rect = v40;
    v69.size.height = v42;
    Height = CGRectGetHeight(v69);
    CGAffineTransformMakeTranslation(&t1, 0.0, Height);
    CGAffineTransformTranslate(&t2, &t1, v36, v38);
    v55 = t2.ty;
    v56 = t2.tx;
    v53 = *&t2.c;
    v54 = *&t2.a;
    v70.origin.x = v36;
    v70.origin.y = v38;
    v70.size.width = v40;
    v70.size.height = v42;
    Width = CGRectGetWidth(v70);
    v71.origin.x = a2;
    v71.origin.y = a3;
    v71.size.width = a4;
    v71.size.height = a5;
    sx = Width / CGRectGetWidth(v71);
    v72.origin.x = v36;
    v72.origin.y = v38;
    v72.size.width = rect;
    v72.size.height = v42;
    v45 = -CGRectGetHeight(v72);
    v73.origin.x = a2;
    v73.origin.y = a3;
    v73.size.width = a4;
    v73.size.height = a5;
    v46 = CGRectGetHeight(v73);
    *&t1.c = v53;
    *&t1.a = v54;
    t1.tx = v56;
    t1.ty = v55;
    CGAffineTransformScale(&t2, &t1, sx, v45 / v46);
    *&t1.c = v57;
    *&t1.a = v59;
    t1.tx = tx;
    t1.ty = ty;
    CGAffineTransformConcat(&v66, &t1, &t2);
    a = v66.a;
    b = v66.b;
    c = v66.c;
    d = v66.d;
    v34 = v66.tx;
    v35 = v66.ty;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v48 = Strong + OBJC_IVAR____TtC19HealthVisualization16DiagramImageView_lastUsedTransformer;
    v58 = Strong;
    swift_beginAccess();
    v49 = *v48;
    *v48 = v28;
    *(v48 + 8) = a;
    *(v48 + 16) = b;
    *(v48 + 24) = c;
    *(v48 + 32) = d;
    *(v48 + 40) = v34;
    *(v48 + 48) = v35;
    v50 = v29;
    sub_1D1459664(v49);
  }

  *&t1.a = v28;
  t1.b = a;
  t1.c = b;
  t1.d = c;
  t1.tx = d;
  t1.ty = v34;
  v65 = v35;
  a11(v29, &t1, v62, v63);
}

void sub_1D1459664(id a1)
{
  if (a1 != 1)
  {
  }
}

CGAffineTransform *sub_1D1459680(void *a1, uint64_t a2, uint64_t a3, CGFloat a4, CGFloat a5)
{
  v5 = a3;
  v6 = *a2;
  v73 = *(a2 + 8);
  v74 = *(a2 + 24);
  v7 = *(a2 + 40);
  v8 = *(a2 + 48);
  v9 = *(a3 + 16);
  v72 = *(v9 + 16);
  if (v72)
  {
    x = *MEMORY[0x1E695F050];
    y = *(MEMORY[0x1E695F050] + 8);
    v13 = *(MEMORY[0x1E695F050] + 16);
    v12 = *(MEMORY[0x1E695F050] + 24);
    v82 = *(a3 + 64);
    v83 = *(a3 + 56);
    v80 = *(a3 + 80);
    v81 = *(a3 + 72);
    v79 = *(a3 + 88);
    v61 = *a2;
    v14 = *(a3 + 96);
    v84 = *(*&v14 + 16);
    v70 = v9 + 32;
    v88 = v14;
    v66 = *&v14 + 32;
    result = v6;
    v16 = result;
    v17 = 0;
    v86 = y;
    v87 = x;
    v69 = v13;
    v85 = v12;
    v71 = v8;
    v67 = v9;
    v68 = result;
    while (1)
    {
      if (v17 >= *(v9 + 16))
      {
        __break(1u);
        return result;
      }

      v22 = v12;
      v23 = v7;
      v24 = v70 + 32 * v17;
      v77 = *(v24 + 5);
      v75 = *(v24 + 8);
      t1.a = v83;
      t1.b = v82;
      t1.c = v81;
      t1.d = v80;
      LOBYTE(t1.tx) = v79;
      t1.ty = v88;

      v97 = DiagramData.diagramBounds(forceNonZeroSize:)(1);
      v25 = v13;
      v26 = x;
      v27 = y;
      v28 = v13;
      height = v22;
      if (!v84)
      {
        goto LABEL_19;
      }

      width = v97.size.width;
      v31 = v66;
      v32 = v84;
      v28 = v25;
      height = v22;
      do
      {
        v33 = *v31;
        if (*(*v31 + 16))
        {

          v34 = sub_1D1451D94(2u);
          if ((v35 & 1) == 0)
          {
            goto LABEL_9;
          }

          v36 = *(*(v33 + 56) + 40 * v34);

          v37 = *(v36 + 2);
          if (!v37)
          {

LABEL_9:

            goto LABEL_10;
          }

          v39 = v36[4];
          v38 = v36[5];
          if (v37 == 1)
          {

            v36 = 0;
          }

          v102.size.height = 0.0;
          v98.origin.x = x;
          v98.origin.y = y;
          v98.size.width = v28;
          v98.size.height = height;
          v102.origin.x = v39;
          v102.origin.y = v38;
          v102.size.width = width;
          v99 = CGRectUnion(v98, v102);
          x = v99.origin.x;
          y = v99.origin.y;
          v28 = v99.size.width;
          height = v99.size.height;
          sub_1D1459CF0(v36);
        }

LABEL_10:
        ++v31;
        --v32;
      }

      while (v32);
      v9 = v67;
      v16 = v68;
      v27 = v86;
      v26 = v87;
      v25 = v69;
      v22 = v85;
LABEL_19:
      v100.origin.x = x;
      v100.origin.y = y;
      v100.size.width = v28;
      v100.size.height = height;
      v40 = v25;
      v41 = v22;
      v13 = v25;
      if (CGRectEqualToRect(v100, *&v26))
      {

        goto LABEL_4;
      }

      sub_1D1459D3C();
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1D15ACDD0;
      *(inited + 32) = v83;
      v43 = inited + 32;
      *(inited + 40) = v82;
      *(inited + 48) = v81;
      *(inited + 56) = v80;
      *(inited + 64) = v79;
      *(inited + 72) = v88;
      *(inited + 80) = v75;
      sub_1D1459D94(inited);
      v45 = v44;
      v47 = v46;
      swift_setDeallocating();
      sub_1D145A100(v43);
      if ((v47 & 1) == 0)
      {
        v48 = v45;
        v101.origin.x = x;
        v101.origin.y = y;
        v101.size.width = v28;
        v101.size.height = height;
        v96.y = CGRectGetMaxY(v101);
        *&t1.a = v73;
        *&t1.c = v74;
        v7 = v23;
        v8 = v71;
        t1.tx = v23;
        t1.ty = v71;
        v96.x = 0.0;
        v49 = CGPointApplyAffineTransform(v96, &t1);
        if (v77 > 1)
        {
          y = v86;
          x = v87;
          v12 = v85;
          if (v77 == 2)
          {
            goto LABEL_27;
          }

          if (v49.y >= 0.0)
          {
LABEL_33:

            result = v16;
            v18 = v7;
            v19 = v71;
            v20 = v73;
            v21 = v74;
            goto LABEL_5;
          }

          v48 = 0.0;
        }

        else
        {
          if (v77)
          {
            v48 = v45 * 0.5;
          }

          y = v86;
          x = v87;
          v12 = v85;
LABEL_27:
          if (v49.y >= v48)
          {
            goto LABEL_33;
          }
        }

        if (a5 >= 0.0)
        {
          v50 = a5 / (v48 - v49.y + a5);
          v51 = (v48 - v49.y) * v50;
          CGAffineTransformMakeScale(&t1, 1.0, v50);
          tx = t1.tx;
          ty = t1.ty;
          v76 = *&t1.c;
          v78 = *&t1.a;
          CGAffineTransformMakeTranslation(&t1, 0.0, v51);
          v54 = *&t1.a;
          v55 = *&t1.c;
          v56 = *&t1.tx;
          *&t1.a = v78;
          *&t1.c = v76;
          t1.tx = tx;
          t1.ty = ty;
          v13 = v69;
          *&t2.a = v54;
          *&t2.c = v55;
          *&t2.tx = v56;
          CGAffineTransformConcat(&v89, &t1, &t2);
          *&t1.a = v73;
          *&t1.c = v74;
          t1.tx = v7;
          t1.ty = v71;
          t2 = v89;
          result = CGAffineTransformConcat(&v89, &t1, &t2);
          v20 = *&v89.a;
          v21 = *&v89.c;
          v18 = v89.tx;
          v19 = v89.ty;
          goto LABEL_5;
        }

        goto LABEL_33;
      }

LABEL_4:
      result = v16;
      v7 = v23;
      v18 = v23;
      v8 = v71;
      v19 = v71;
      v20 = v73;
      v21 = v74;
      y = v86;
      x = v87;
      v12 = v85;
LABEL_5:
      if (++v17 == v72)
      {
        v6 = v61;
        v5 = a3;
        v57 = v16;
        goto LABEL_36;
      }
    }
  }

  v57 = v6;
  v18 = v7;
  v19 = v8;
  v20 = v73;
  v21 = v74;
LABEL_36:
  t1.a = a4;
  t1.b = a5;
  *&t1.c = a1;
  *&t1.d = v6;
  *&t1.tx = v20;
  v94 = v21;
  *&v95 = v18;
  *(&v95 + 1) = v19;
  v58 = *(v5 + 96);
  *&t2.tx = v20;
  v91 = v21;
  v92 = v95;
  *&t2.a = *&t1.a;
  *&t2.c = *&t1.c;
  v89.a = 2.56684058e-289;
  LOWORD(v89.b) = 258;
  v89.c = 0.0;
  BYTE2(v89.d) = -2;
  LOWORD(v89.d) = -7968;
  v59 = v57;
  v60 = a1;
  sub_1D145A15C(&t2.a, v58, &v89);
  t2 = t1;
  v91 = v94;
  v92 = v95;
  v89.a = 2.56684058e-289;
  LOWORD(v89.b) = 258;
  v89.c = 0.0;
  BYTE2(v89.d) = -2;
  LOWORD(v89.d) = -7968;
  sub_1D145AAC0(&t2.a, 0, &v89);
  t2 = t1;
  v91 = v94;
  v92 = v95;
  v89.a = 2.56684058e-289;
  LOWORD(v89.b) = 258;
  v89.c = 0.0;
  BYTE2(v89.d) = -2;
  LOWORD(v89.d) = -7968;
  sub_1D145AAC0(&t2.a, 1, &v89);
  t2 = t1;
  v91 = v94;
  v92 = v95;
  sub_1D145CCBC(&t2);
  *&t2.a = v6;
  *&t2.b = v73;
  *&t2.d = v74;
  t2.ty = v7;
  *&v91 = v8;
  sub_1D145CB10(v60, &t2, a4, a5);

  return sub_1D145D564(&t1);
}

uint64_t sub_1D1459CF0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void sub_1D1459D3C()
{
  if (!qword_1EE0596A8)
  {
    sub_1D1453238();
    v0 = sub_1D15A4B78();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0596A8);
    }
  }
}

uint64_t sub_1D1459D94(uint64_t a1)
{
  x = *MEMORY[0x1E695F050];
  y = *(MEMORY[0x1E695F050] + 8);
  width = *(MEMORY[0x1E695F050] + 16);
  height = *(MEMORY[0x1E695F050] + 24);
  v29 = y;
  v30 = *MEMORY[0x1E695F050];
  v27 = height;
  v28 = width;
  v32 = *(a1 + 16);
  if (v32)
  {
    v5 = 0;
    v31 = a1 + 32;
    y = *(MEMORY[0x1E695F050] + 8);
    x = *MEMORY[0x1E695F050];
    height = *(MEMORY[0x1E695F050] + 24);
    width = *(MEMORY[0x1E695F050] + 16);
    while (1)
    {
      v6 = v31 + 56 * v5;
      v7 = *(v6 + 40);
      v8 = *(v7 + 16);
      if (v8)
      {
        break;
      }

LABEL_4:
      if (++v5 == v32)
      {
        goto LABEL_19;
      }
    }

    v33 = v5;
    v34 = *(v6 + 48);

    v9 = 32;
    while (1)
    {
      v10 = *(v7 + v9);
      if (!*(v10 + 16))
      {
        goto LABEL_8;
      }

      v11 = sub_1D1451D94(2u);
      if (v12)
      {
        break;
      }

LABEL_7:

LABEL_8:
      v9 += 8;
      if (!--v8)
      {

        v5 = v33;
        goto LABEL_4;
      }
    }

    v13 = (*(v10 + 56) + 40 * v11);
    v14 = *v13;
    v15 = v13[2];

    v16 = *(v14 + 16);
    if (v16 == 1)
    {
      v17 = 0;
      if (!v15)
      {
        goto LABEL_17;
      }
    }

    else
    {
      if (!v16)
      {
LABEL_18:

        goto LABEL_7;
      }

      v17 = v14;
      if (!v15)
      {
LABEL_17:
        sub_1D1459CF0(v17);
        goto LABEL_18;
      }
    }

    v35 = v17;
    v18 = sub_1D15A3EF8();
    LOBYTE(v36.a) = v34;
    DiagramConfiguration.TextAttributes.toTextAttributes()();
    type metadata accessor for Key(0);
    sub_1D14587E0();
    v19 = sub_1D15A3E48();

    [v18 sizeWithAttributes_];
    v21 = v20;
    v23 = v22;

    CGAffineTransformMakeTranslation(&v36, 0.0, -(v23 + 5.0));
    v37.x = 0.0;
    v37.y = 0.0;
    v24 = CGPointApplyAffineTransform(v37, &v36);

    v38.origin.x = x;
    v38.origin.y = y;
    v38.size.width = width;
    v38.size.height = height;
    v43.origin.x = v24.x;
    v43.origin.y = v24.y;
    v43.size.width = v21;
    v43.size.height = v23;
    v39 = CGRectUnion(v38, v43);
    x = v39.origin.x;
    y = v39.origin.y;
    width = v39.size.width;
    height = v39.size.height;
    v17 = v35;
    goto LABEL_17;
  }

LABEL_19:
  v40.origin.x = x;
  v40.origin.y = y;
  v40.size.width = width;
  v40.size.height = height;
  v25 = CGRectGetWidth(v40);
  v41.origin.x = x;
  v41.origin.y = y;
  v41.size.width = width;
  v41.size.height = height;
  CGRectGetHeight(v41);
  v42.origin.x = x;
  v42.origin.y = y;
  v42.size.width = width;
  v42.size.height = height;
  v44.origin.y = v29;
  v44.origin.x = v30;
  v44.size.height = v27;
  v44.size.width = v28;
  if (CGRectEqualToRect(v42, v44))
  {
    return 0;
  }

  else
  {
    return *&v25;
  }
}